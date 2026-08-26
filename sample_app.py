import pymysql
from flask import Flask
import os

sample = Flask(__name__)

@sample.route("/")
def home():
    try:
        conn = pymysql.connect(host='servidor-bd', user='root', password=os.getenv("MYSQL_ROOT_PASSWORD"), database='082_db') # nosec B106
        conn.close()
        db_status = "Conexión exitosa a la base de datos"
    except Exception as e:
        db_status = f"Error al conectar a la base de datos: {e}"

    return f"<h1>Bienvenido a mi aplicación Flask</h1><p>{db_status}</p>"

