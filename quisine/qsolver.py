# coding: utf-8

import pandas as pd
import numpy as np
from openjij import SQASampler
from scipy.linalg import block_diag
from matplotlib import pyplot as plt


CUISINE_FILE = "asset/cuisines.csv"


class Quisine:

    def __init__(self, name: str = "Cuisine"):
        # super().__init__(name=name)
        self.cuisines = pd.read_csv(CUISINE_FILE)

        self.num_meal = None
        self.Js = None
        self.Cs = None
        self.xs = None

        self.Nc = len(self.cuisines)
        self.Q = None
        self.Q_dict = None
        self.sampler = SQASampler()

    def __call__(self, day: int = 1, K: float = 1):
        self.num_meal = day * 3
        self.Js = np.arange(self.num_meal)
        self.Cs = self.cuisines["name"].values

        self.Hs = [
            c.price + 1000 / 60 * c.time
            for cid, c in self.cuisines.iterrows()
        ]
        max_H = np.max(self.Hs)
        normalized_Hs = self.Hs / max_H

        H_select = np.diag(normalized_Hs)

        H_duplicate = np.diag([K, ] * self.Nc)

        H_bite = np.diag([-2. * K,] * self.Nc) + K

        H_diag_block = H_select + H_bite

        # H = sp.linalg.block[
        #     [
        #         H_diag_block if i == j else H_select
        #         for i in range(self.num_meal)
        #     ] for j in range(self.num_meal)
        # ]
        h_diag = [H_diag_block - H_duplicate,] * self.num_meal
        h_diag = block_diag(*h_diag)
        h_base = np.hstack([H_duplicate, ] * self.num_meal)
        h_base = np.vstack([h_base, ] * self.num_meal)

        H = h_diag + h_base
        plt.imshow(H)
        plt.colorbar()
        plt.show()

        self.Q = H
        self.Q_dict = self.convert_to_dict(H)

        sampleset = self.solve()
        states = np.asarray(list(sampleset.first.sample.values()))
        states = states.reshape((self.num_meal, self.Nc))
        plt.imshow(states)
        plt.show()
        sol_idx = np.argmax(states, axis=1).reshape((day, 3))
        print(self.Cs[sol_idx])

    def solve(self, num_reads: int = 30):
        sampleset = self.sampler.sample_qubo(self.Q_dict, num_reads=num_reads)
        return sampleset

    @staticmethod
    def convert_to_dict(h):
        nonzero_slots = np.argwhere(h != 0).tolist()
        return {
            tuple(slot_idx): h[slot_idx[0], slot_idx[1]]
            for slot_idx in nonzero_slots
        }


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--day", default=1, type=int)
    args = parser.parse_args()

    solver = Quisine()
    solver(day=args.day, K=5)
