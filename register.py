import bcrypt
import mysql.connector
from argon2 import PasswordHasher
import pypbkdf2
import pyscrypt
import secrets
import base64

def hashBCrypt(password):
    password_bytes = password.encode('utf-8') 
    salt = bcrypt.gensalt() 
    hash = bcrypt.hashpw(password_bytes, salt) 
    return salt, hash

def hashArgon2(password):
    ph = PasswordHasher()
    hash = ph.hash(password)
    return " ", hash

def hashPBKDF2(password):
    p = pypbkdf2.PyPBKDF2(salt_size=20)
    res = p.hash_password(password)
    hash = res[0]
    salt = res[1]
    return salt, hash

def hashScrypt(password):
    salt = secrets.token_bytes(16)
    hash = pyscrypt.hash(password.encode('utf-8') , salt, 1024, 1, 1, 256)
    return base64.b64encode(salt).decode('utf-8'), base64.b64encode(hash).decode('utf-8')

    

def save(name, username, password, hashType):
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="tps3221"
        )
        cursor = connection.cursor()

        if hashType == "BCrypt":
            salt, hash = hashBCrypt(password)
        elif hashType == "Argon2":
            salt, hash = hashArgon2(password)
        elif hashType == "PBKDF2":
            salt, hash = hashPBKDF2(password)
        elif hashType == "Scrypt":
            salt, hash = hashScrypt(password)

        
        sql = "insert into user (name, username, password, salt, hash_password, hashType) values (%s, %s, %s, %s, %s, %s)"
        val = (name, username, password, salt, hash, hashType)
        cursor.execute(sql, val)
        connection.commit()
        connection.close()
        return True

    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return False





