

import pyodbc

from util.PropertyUtil import PropertyUtil

class DBConnection:

    @staticmethod
    def getConnection():
        try:
            properties=PropertyUtil.getPropertyString()
            connection=pyodbc.connect(**properties)
            cursor=connection.cursor()
            return connection
        except Exception as e:
            print(str(e) + '--Database is not connected--')
            return None


