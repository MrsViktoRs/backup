from database_func import *


if __name__ == '__main__':
    connect_and_write(name='db_copy.sql')# создает копию БД, имеет один обязательный параметр 'name': имя файла
