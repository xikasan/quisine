# coding: utf-8

import numpy as np
import pandas as pd
import yaml


CUISINE_FILE = "asset/cuisines.yaml"
EXPORT_TO = "asset/cuisines.csv"


def run():
    with open(CUISINE_FILE, "r") as fp:
        cuisines: dict = yaml.safe_load(fp)

    cuisines: pd.DataFrame = pd.DataFrame(dict(
        name=[cuisine["name"] for cuisine in cuisines],
        time=[cuisine["time"] for cuisine in cuisines],
        price=[cuisine["price"] for cuisine in cuisines],
        e=[cuisine["nutrients"]["e"] for cuisine in cuisines],
        p=[cuisine["nutrients"]["p"] for cuisine in cuisines],
        f=[cuisine["nutrients"]["f"] for cuisine in cuisines],
        c=[cuisine["nutrients"]["c"] for cuisine in cuisines],
    ))

    cuisines.to_csv(EXPORT_TO, sep=",", index=False)


if __name__ == '__main__':
    run()
