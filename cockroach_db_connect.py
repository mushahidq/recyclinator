import psycopg2
from psycopg2.errors import SerializationFailure
import json

f = open("token.json")
data = json.load(f)

def get_object_data(object):
    connect = "postgres://" + data["username"] + ":" + data["password"] + "@" + data["host"] +":26257/" + data["cluster"] + ".recyclinator?sslmode=verify-full&sslrootcert=cert/cc-ca.crt"
    conn = psycopg2.connect(connect)
    with conn.cursor() as cur:
        query = "SELECT * FROM objects where object_name='" + object + "';"
        cur.execute(query)
        rows = cur.fetchall()
        conn.commit()
        for row in rows:
            return row