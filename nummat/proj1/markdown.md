## Task 1

### a)

Consider $e^{2\pi ikx}, k \in \mathbb{Z}, x \in \mathbb{T}$, then we want to prove that $\forall k, h \in \mathbb{Z}$ we have that

$$
\left< e^{2\pi ik\cdot}, e^{2\pi ih\cdot} \right> = \delta_{hk} =  \left\lbrace
\begin{array}{ll}
1 & , \text{if } k=h \\
0 & , \text{else}.
\end{array}
\right.
$$

We have the inner product

$$
\left< f, g \right> = \int_0^1 f(x) \overline{g(x)} dx.
$$

By using this definition we find

$$
\left< e^{2\pi ik\cdot}, e^{2\pi ih\cdot} \right> = \int_0^1 e^{2\pi ikx} e^{-2\pi ihx} dx = \int_0^1 e^{2\pi ix(k-h)}dx
$$

and we can from this easily see that if $k=h$ we have $\left< e^{2\pi ik\cdot}, e^{2\pi ih\cdot} \right> = 1$. Further we will assume $h\neq k$ and we find that

$$
\left< e^{2\pi ik\cdot}, e^{2\pi ih\cdot} \right> = \frac{1}{2\pi i (k-h)} \left[ e^{2\pi i (k-h) x} \right]_0^1 = \frac{e^{2\pi i (k-h)} - 1}{2\pi i (k-h)}.
$$

We have that $h, k \in \mathbb{Z}$, thus $e^{2 \pi i (h-k)} = 1$ and we have our result

$$
\left< e^{2\pi ik\cdot}, e^{2\pi ih\cdot} \right> = \delta_{hk} =  \left\lbrace
\begin{array}{ll}
1 & , \text{if } k=h \\
0 & , \text{else}.
\end{array}
\right.
\;\;\;\;\;\;\; \square
$$

### b)

Consider the following functions $\sqrt{2}\sin (2\pi mx)$, $\cos (2\pi 0x)$ and $\sqrt{2} \cos (2\pi nx)$ for $m, n \in \mathbb{Z}\backslash \left\lbrace 0 \right\rbrace, \; x \in \mathbb{T}$. We want to prove that they form an orthonormal system. First we can write up the sine and cosine identities as we will use them further

$$
\begin{split}
\sin x &= \frac{1}{2i} \left( e^{ix} - e^{-ix} \right) \\
\cos x &= \frac{1}{2} \left( e^{ix} + e^{-ix} \right).
\end{split}
$$

Now consider the inner product

$$
\begin{split}
\left< \sqrt{2}\sin (2\pi m\cdot), \sqrt{2}\cos (2\pi n \cdot)\right>
&= \int_0^1 \frac{\sqrt{2}}{2i} \left( e^{2\pi mix} - e^{-2\pi mix} \right) \overline{ \frac{\sqrt{2}}{2} \left(e^{2\pi nix} + e^{-2\pi nix} \right) }dx \\
&= -\frac{i}{2} \int_0^1 \left( e^{2\pi mix} - e^{-2\pi mix} \right) \left( e^{-2\pi nix} + e^{2\pi nix} \right) dx \\
&= -\frac{i}{2} \int_0^1 \left( e^{2\pi (m-n)ix} + e^{2\pi (m+n)ix} - e^{-2\pi (m+n)ix} - e^{2\pi (n-m)ix} \right) dx \\
&= 0
\end{split}
$$

as $m,n \in \mathbb{Z}$ an for $m=n$ the terms cancel out. We further check

$$
\begin{split}
\left< \sqrt{2}\sin (2\pi m\cdot), \sqrt{2}\sin (2\pi n \cdot)\right>
&= \left< \frac{\sqrt{2}}{2i} \left( e^{2\pi mi\cdot } - e^{-2\pi mi\cdot } \right), \frac{\sqrt{2}}{2i} \left( e^{2\pi ni\cdot } - e^{-2\pi ni\cdot } \right)\right> \\
&= \overline{\left( \frac{\sqrt{2}}{2i} \right)} \frac{\sqrt{2}}{2i} \left( \left< e^{2\pi mi\cdot }, e^{2\pi ni\cdot } - e^{-2\pi ni\cdot } \right> - \left< e^{-2\pi mi\cdot }, e^{2\pi ni\cdot } - e^{-2\pi ni\cdot } \right> \right) \\
&= \frac{1}{2}\left( \overline{ \left<  e^{2\pi ni\cdot } - e^{-2\pi ni\cdot }, e^{2\pi mi\cdot } \right> } - \overline{ \left< e^{2\pi ni\cdot } - e^{-2\pi ni\cdot }, e^{-2\pi mi\cdot }  \right> } \right) \\
&= \frac{1}{2}\left[ \left( \overline{ \left<  e^{2\pi ni\cdot }, e^{2\pi mi\cdot } \right> - \left< e^{-2\pi ni\cdot }, e^{2\pi mi\cdot } \right> } \right) - \left( \overline{ \left< e^{2\pi ni\cdot } , e^{-2\pi mi\cdot }  \right> - \left< e^{-2\pi ni\cdot }, e^{-2\pi mi\cdot }\right>} \right) \right] \\
&= \delta_{mn}.
\end{split}
$$

Further we check, for $n,m \neq 0$

$$
\begin{split}
\left< \sqrt{2}\cos (2\pi m\cdot), \sqrt{2}\cos (2\pi n \cdot)\right>
&= \left< \frac{\sqrt{2}}{2} \left( e^{2\pi mi\cdot } + e^{-2\pi mi\cdot } \right), \frac{\sqrt{2}}{2i} \left( e^{2\pi ni\cdot } + e^{-2\pi ni\cdot } \right)\right> \\
&= \frac{1}{2}\left[ \left( \overline{ \left<  e^{2\pi ni\cdot }, e^{2\pi mi\cdot } \right> + \left< e^{-2\pi ni\cdot }, e^{2\pi mi\cdot } \right> } \right) + \left( \overline{ \left< e^{2\pi ni\cdot } , e^{-2\pi mi\cdot }  \right> + \left< e^{-2\pi ni\cdot }, e^{-2\pi mi\cdot }\right>} \right) \right] \\
&= \left\lbrace
\begin{matrix}
    \delta_{mn} & , m,n\neq 0, \\
    2 & , m=n=0.
\end{matrix}
\right.
\end{split}
$$

Thus we have proven that this is an orthonormal system.


### c)

Consider these two spaces

$$
\mathcal{T}_n = \text{span} \left\lbrace e^{-2\pi in \cdot}, \dots , e^{2\pi in \cdot} \right\rbrace = \left\lbrace f \;\Bigg|\; f(x) = \sum_{k=-n}^n c_k e^{2\pi ikx}, \text{where } c_{-n}, c_{-n+1}, \dots , c_n \in \mathbb{C} \right\rbrace .
$$

with $c_{-k} = \overline{c_k}$, and

$$
\begin{split}
\mathcal{S}_n
&= \text{span} \left\lbrace \cos (0\cdot), \cos (2\pi\cdot), \dots ,\cos (n\pi\cdot), \sin (2\pi\cdot), \dots , \sin (2\pi n\cdot) \right\rbrace \\
&= \left\lbrace f \;\Bigg|\; f(x) = \frac{a_0}{2} + \sum_{k=1}^n a_k \cos (2\pi kx) + b_k \sin (2\pi kx), \; a_0, \dots , a_n, b_1, \dots b_n \in \mathbb{R} \right\rbrace . \\
\end{split}
$$

We want to find an orthonormal basis for $\mathcal{S}_n, \mathcal{T}_n$. We have just shown that the functions $\sqrt{2}\sin (2\pi mx)$, $\cos (2\pi 0x)$ and $\sqrt{2} \cos (2\pi nx)$ for $m, n \in \mathbb{Z}\backslash \left\lbrace 0 \right\rbrace, \; x \in \mathbb{T}$, creates an orthonormal system. We can see that this system is a basis for $\mathcal{S}_n$ by the span of the space. Thus we have 

$$
\mathcal{B} = \left\lbrace \sqrt{2} \cos (0\cdot), \sqrt{2}\cos (2\pi\cdot), \dots , \sqrt{2}\cos (2\pi n\cdot), \sqrt{2}\sin (2\pi\cdot), \dots , \sqrt{2}\sin (2\pi n\cdot)  \right\rbrace
$$

is an orthonormal basis for $\mathcal{S}_n$. Now consider

$$
e^{2\pi ik\cdot} = \cos (2\pi k\cdot ) + i\sin (2\pi k\cdot)
$$


### d)

Let $f \in \mathcal{S}_n$, using $\mathcal{B}$ as a basis, we have that

$$
f(x) = \frac{a_0}{2} + a_1\cos(2\pi x) + \dots + a_n\cos(2\pi nx) + b_1\sqrt{2} \sin(2\pi) + \dots + b_n\sqrt{2} \sin(2\pi nx).
$$

We know that the inner product is additive and we only need to prove that

$$
a_k = 2\left< a_k \cos(2\pi k\cdot), \cos(2\pi k\cdot) \right>, \; b_k = 2\left< b_k \sin(2\pi k\cdot), \sin(2\pi k\cdot) \right>.
$$

Further we can see that for $k \neq 0$

$$
2\left< a_k \cos(2\pi k \cdot), \cos(2\pi k \cdot) \right> = a_k \left< \sqrt{2} \cos(2\pi k \cdot), \sqrt{2} \cos(2\pi k \cdot) \right>
$$

and trivially the same for $b_k$. Now consider $k = 0$, where we have assumed that the constant takes the form $a_0/2$

$$
2\left< \frac{a_0}{2}, 1 \right> = \frac{a_0}{2} \left< \sqrt{2}, \sqrt{2} \right> = \frac{a_0}{2}.
$$

Thus we have proven that these are the Fourier coefficients.


b
