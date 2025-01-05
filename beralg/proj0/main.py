from numpy.polynomial import Polynomial
import numpy as np
from math import factorial
import matplotlib.pyplot as plt
from scipy.special import factorial



def compute_factorial(n: int) -> int:
    fact = 1
    for i in range(n):
        fact *= n+1
    return fact


def f(x):
    return x*np.log(x) - x


def g(x):
    return factorial(x)


def plot(f, x):
    y = f(x)
    plt.plot(x, y)


if __name__ == "__main__":
    a: int = 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
    b: int = 12345678900987654321123456789009876543211234567890098765432112345678900987654321123456789009876543211234567890098765432112345678900987654321123456789009876543211234567890098765432112345678900987654321
    c: int = 6574839201657483902165748392016574839201657483920165748392016574389201567483920156748392015647389201
    d: int = a*b

    print(d)
    print(d%c)

    p: Polynomial = Polynomial.basis(3) + Polynomial.basis(1) + 1
    q: Polynomial = Polynomial.basis(7) - 1

    pq = p*q

    print(p*q)

    n = 95
    mod = 101
    print(compute_factorial(n)%mod)

    x0 = np.linspace(0, 10, 500, endpoint=False)
    plot(f, x0)
    plt.show()

    plot(g, x0)
    plt.show()

