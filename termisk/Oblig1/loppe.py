import numpy as np
import matplotlib.pyplot as plt


def hopp(A, B):
    num = np.random.randint(0, A+B)
    if num < A:
        return 1
    return 0


def hopp_func(t, N):
    return N/2 * (1 + np.e**(-2/N*t))


N = 2000
A = N
B = 0
t = 8000
dt = 1

t_l = np.linspace(0, t, int(t/dt))
A_l = np.zeros(int(t/dt))

for i,j in enumerate(t_l):
    if hopp(A, B):
        A -= 1
        B += 1
    else:
        B -= 1
        A += 1
    A_l[i] = A

plt.plot(t_l, A_l/N, label="ved tilfeldig hopping")
plt.plot(t_l, hopp_func(t_l, N)/N, label="antatt kontinuerlig hopping")
plt.xlabel("t")
plt.ylabel("NA(t)/N")
plt.title("Andel lopper på hund A")
plt.legend()
plt.ylim((0, 1))
plt.xlim((0, t))
plt.grid()
plt.show()
