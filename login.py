import bcrypt
import mysql.connector
from argon2 import PasswordHasher
import pypbkdf2
import pyscrypt
import base64


def checkBCrypt(hash_password, password):
    return bcrypt.checkpw(password.encode('utf-8'), hash_password.encode('utf-8'))

def checkArgon2(hash_password, password):
    ph = PasswordHasher()
    try:
        ph.verify(hash_password, password)
        return True
    except:
        return False

def checkPBKDF2(hash_password, password, salt):
    p = pypbkdf2.PyPBKDF2(salt_size=20)
    return p.verify_password(password, hash_password, salt)

def checkScrypt(hash_password, password, salt):
    hash = pyscrypt.hash(password.encode('utf-8') , base64.b64decode(salt), 1024, 1, 1, 256)
    if (base64.b64decode(hash_password) == hash):
        return True
    else:
        return False


def check(username, password):
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="tps3221"
        )


        cursor = connection.cursor()

        
        sql = "select hash_password, salt, hashType from user where username=%s"
        val = (username, )
        cursor.execute(sql, val)

        result = cursor.fetchall()

        if result:
            if result[0][2] == "BCrypt":
                status = checkBCrypt(result[0][0], password)
            elif result[0][2] == "Argon2":
                status = checkArgon2(result[0][0], password)
            elif result[0][2] == "PBKDF2":
                status = checkPBKDF2(result[0][0], password, result[0][1])
            elif result[0][2] == "Scrypt":
                status = checkScrypt(result[0][0], password, result[0][1])


            if status:
                return "The password is correct"
            else:
                return "The password is incorrect"
        else:
            return "The username not found"


    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return f"Error: {err}"





