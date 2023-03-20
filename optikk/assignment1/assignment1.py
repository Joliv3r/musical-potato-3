import numpy as np
import matplotlib.pyplot as plt


def refraction(n_i, n_t, theta):
    temp = n_i / n_t * np.sin(theta)
    for i, j in enumerate(temp):
        if j > 1:
            temp[i] = 1
    return np.arcsin(temp)


def reflection(n_i, theta_i, n_t, theta_t, pol):
    if pol == "p":
        return (
            (n_t * np.cos(theta_i) - n_i * np.cos(theta_t))
            / (n_i * np.cos(theta_t) + n_t * np.cos(theta_i))
        ) ** 2
    if pol == "s":
        return (
            (n_i * np.cos(theta_i) - n_t * np.cos(theta_t))
            / (n_i * np.cos(theta_i) + n_t * np.cos(theta_t))
        ) ** 2
    return 0


def brewster(ref, tol):
#   theta_t = refraction(n_i, n_t, theta)
#   if np.where(theta_t > 1 - tol):
#       return theta[np.where(theta_t > 1 - tol)][0]
#   return 0

    return np.where(ref > 1-tol)[0]



n_w, n_a = 1.334, 1
theta = np.linspace(0, np.pi / 2, 100, endpoint=False)

plt.plot(
    theta,
    reflection(n_a, theta, n_w, refraction(n_a, n_w, theta), "s"),
    "b",
    label="s-polarized from air to water",
)
plt.plot(
    theta,
    reflection(n_a, theta, n_w, refraction(n_a, n_w, theta), "p"),
    "r",
    label="p-polarized from air to water",
)
plt.plot(
    theta,
    reflection(n_w, theta, n_a, refraction(n_w, n_a, theta), "s"),
    "y",
    label="s-polarized from water to air",
)
plt.plot(
    theta,
    reflection(n_w, theta, n_a, refraction(n_w, n_a, theta), "p"),
    "k",
    label="p-polarized from water to air",
)

plt.plot(
    theta, 1 - reflection(n_a, theta, n_w, refraction(n_a, n_w, theta), "s"), "b--"
)
plt.plot(
    theta, 1 - reflection(n_a, theta, n_w, refraction(n_a, n_w, theta), "p"), "r--"
)
plt.plot(
    theta, 1 - reflection(n_w, theta, n_a, refraction(n_w, n_a, theta), "s"), "y--"
)
plt.plot(
    theta, 1 - reflection(n_w, theta, n_a, refraction(n_w, n_a, theta), "p"), "k--"
)

b_ang = brewster(reflection(n_w, theta, n_a, refraction(n_w, n_a, theta), "s"), 0.000001)

plt.plot([theta[b_ang]]*2, [0, 1])

plt.legend()
plt.show()
