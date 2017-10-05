#!/bin/python3
import glob, tarfile, os, sys, zipfile, subprocess
from os import path

def get_archive_name(prefix):
    valid_archives = glob.glob(prefix + ".*")

    if len(valid_archives) == 0:
        print("No archive found")
        return None
    elif len(valid_archives) == 1:
        return valid_archives[0]
    else:
        print("Multiple archives found")
        return valid_archives[0]

def unzip_archive(archive_name):
    archive = None

    if tarfile.is_tarfile(archive_name):
        archive = tarfile.open(archive_name, 'r')
    elif zipfile.is_zipfile(archive_name):
        archive = zipfile.ZipFile(archive_name)
    else:
        return 1

    archive.extractall('.')

    return 0

def build_paths(databases):
    all_db_paths = ['README']
    for db in databases:
        all_db_paths.append(path.join(db, db + "-setup.sql"))
        all_db_paths.append(path.join(db, db + "-cleanup.sql"))
        all_db_paths.append(path.join(db, db + "-test.sql"))

        build_scripts = glob.glob(path.join(db, db + "-build-*.sql"))
        print("Found {} table scripts in {}".format(len(build_scripts), db))
        all_db_paths += build_scripts

    return all_db_paths

def test_required_files(required_files):

    cts = path.join(path.dirname(path.realpath(__file__)), 'create_table_style')

    for req in required_files:
        if path.isfile(req):
            if "setup" in req:
                #TODO fix this because it's not great
                proc = subprocess.Popen(['python3', cts, req],
                        stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                out, err = proc.communicate()
                if len(out) > 0:
                    print(out.decode('utf-8'))
                if len(err) > 0:
                    print(err.decode('utf-8'))
        else:
            print("Missing {}".format(req))

def main():
    databases = ['CSU', 'CARS', 'BAKERY', 'MARATHON', 'STUDENTS', 'AIRLINES',
            'WINE', 'INN', 'KATZENJAMMER']

    name = get_archive_name("lab*2")

    if name is None:
        return 1

    ret = unzip_archive(name)

    if ret != 0:
        print("Invalid archive format")
        return 1

    required_files = build_paths(databases)

    test_required_files(required_files)

    return 0

if __name__ == '__main__':
    sys.exit(main())
