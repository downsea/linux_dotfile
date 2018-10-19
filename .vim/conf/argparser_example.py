import os, sys, argparse, glob, subprocess, logging, re
from datetime import datetime
from argparse import RawTextHelpFormatter
from multiprocessing  import Pool
import numpy as np
import pandas as pd

## set globle variables ##
APP_DIR= os.path.split(os.path.abspath(__file__))[0]
APP_NAME= os.path.split(os.path.splitext(__file__)[0])[1] 

## set logger ##
def init_log(logger_name= __name__):
    logging.basicConfig(level=logging.INFO,
                        format='%(asctime)s %(name)-12s %(levelname)-8s %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S',
                        filename='%s.log' % (datetime.now().strftime("%Y-%m-%d")),
                        filemode='a')
    logger = logging.getLogger(logger_name)
    handler = logging.StreamHandler(sys.stdout)
    formatter = logging.Formatter('%(asctime)s %(levelname)s %(message)s')
    handler.setFormatter(formatter)
    logger.addHandler(handler)
    #logger.setLevel(logging.DEBUG)
    logger.setLevel(logging.NOTSET)
    return logger

## app initiation here
logger= init_log( APP_NAME )
description=""
epilog=""

def xx( op ):
    pass

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=description, epilog=epilog, formatter_class=RawTextHelpFormatter)
    parser.add_argument('-f', '--file', dest='fn', help='input file name.', required =True)
    parser.add_argument('-o', '--output', dest='fn_out', help='output file name.', default="output.txt")
    parser.add_argument('-k', '--k', dest='k', help='', action="store_true")
    parser.add_argument('-i', '--i', dest='i', help='', type=int)
    op= parser.parse_args()
    logger.info('main >> runing {} with parameters: {}'.format(APP_NAME, op))
    xx( op )

