# coding: utf-8

from setuptools import setup, find_packages

setup(
    name="quisine",
    version="0.0",
    description="Quantum cuisine proposer",
    author="xika",
    url="https://github.com/xikasan/quisine",
    packages=find_packages(),
    entry_points="""
        [console_scripts]
        quisine = quisine.cli:execute
    """,
    install_requires=open('requirements.txt').read().splitlines()
)
