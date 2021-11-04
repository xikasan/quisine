# coding: utf-8

import mip
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

CUISINE_FILE = "asset/cuisines.csv"


class Cuisine(mip.Model):

    def __init__(self, name: str = "Cuisine"):
        super().__init__(name=name)
        self.cuisines = pd.read_csv(CUISINE_FILE)

        self.num_meal = None
        self.Js = None
        self.Cs = None
        self.xs = None

    def __call__(self, day: int = 1):
        self.num_meal = day * 3
        self.Js = np.arange(self.num_meal)
        self.Cs = self.cuisines["name"].values
        self.xs = {
            j: {
                c: self.add_var("x_{}_{}".format(j, c), var_type=mip.BINARY)
                for c in self.Cs
            } for j in self.Js
        }

        # Objective
        self.objective = mip.minimize(mip.xsum(
            (c.price + 1000 / 60 * c.time) * self.xs[j][c["name"]]
            for cid, c in self.cuisines.iterrows()
            for j in self.Js
        ))

        # Subject to
        [
            self.add_constr(
                mip.xsum(self.xs[j][c] for c in self.Cs) == 1,
                name="c_must_eat_{}".format(j)
            ) for j in self.Js
        ]
        [
            self.add_constr(
                mip.xsum(self.xs[j][c] for j in self.Js) <= 1,
                name="c_ignore_same_{}".format(c)
            ) for c in self.Cs
        ]

        self.write("lp/cuisine.lp")

        self.optimize()

        print("Objective:", self.objective_value)

        sol = np.array([
            self.xs[j][c].x for j in self.Js for c in self.Cs
        ])
        sol = sol.reshape((self.num_meal, len(self.Cs)))
        sol_idx = np.argmax(sol, axis=1).reshape((day, 3))
        print("Variables:\n", sol)
        print(self.Cs[sol_idx])

        plt.imshow(sol)
        plt.show()


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--day", default=1, type=int)
    args = parser.parse_args()

    solver = Cuisine()
    solver(day=args.day)
