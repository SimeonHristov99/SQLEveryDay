import pandas as pd


def main():
    cond = sf_public_salaries['jobtitle'].str.lower(
    ).str.contains('captain', na=False)
    sf_public_salaries[cond][['employeename', 'basepay']]


if __name__ == '__main__':
    main()
