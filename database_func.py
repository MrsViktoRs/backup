import psycopg2
from psycopg2 import Error
import subprocess
from datetime import datetime
from settings import CONNECTION_PARAMETERS


def create_file(name):
    '''Создаем файл для записи'''

    try:
        if not name.endswith('.sql'):
            name = name[:name.rfind('.')]
            time_now = datetime.now().strftime('%d.%m.%y-%H:%M:%S')
            file = open(f'{time_now}-{name}.sql', 'w+')
            return file
        else:
            time_now = datetime.now().strftime('%d.%m.%y-%H:%M:%S')
            file = open(f'{time_now}-{name}', 'w+')
            return file

    except ValueError:
        print('Ошибка: не удалось создать файл')


def write_backup(name, params):
    '''Зписываем копию БД в файл'''
    try:
        with create_file(name=name) as file:
            subprocess.call(['pg_dump', '-h', params['host'], '-p', params['port'],
                             '-U', params['user'], '-Fc', params['database']], stdout=file)

    except ValueError:
        print('Ошибка: не удалось записать файл')


def connect_and_write(name):
    '''Подключаемся и делайем копию БД'''
    connect_param = CONNECTION_PARAMETERS
    try:
        connection = psycopg2.connect(user=connect_param['user'],
                                      password=connect_param['password'],
                                      host=connect_param['host'],
                                      database=connect_param['database'],
                                      )
        cursor = connection.cursor()
        write_backup(params=connect_param, name=name)
        cursor.close()
        connection.close()

    except (Exception, Error) as error:
        print('Ошибка подключения', error)