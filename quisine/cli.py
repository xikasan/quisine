# coding: utf-8

# from cuisine import Cuisine
from qsolver import Quisine
import os


def execute():
    # print(os.getcwd())
    # cuisine = Cuisine()
    # cuisine(day=7)
    solver = Quisine()
    solver(day=3, K=5)


if __name__ == '__main__':
    execute()
