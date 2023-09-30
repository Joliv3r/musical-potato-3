## Task 1: The (Discrete) Fourier Transform

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

Consider the two spaces

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
\begin{split}
e^{2\pi ik\cdot} &= \cos (2\pi k\cdot ) + i\sin (2\pi k\cdot) \\
e^{-2\pi ik\cdot} &= \cos (2\pi k\cdot ) - i\sin (2\pi k\cdot).
\end{split}
$$

From this we can see that $c_{-k} = \overline{c_k}$, and we can trivially see that every $f\in \mathcal{S}_n$ is also in $\mathcal{T}_n$ and opposite. Thus $\mathcal{T}_n = \mathcal{S}_n$.



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


### e)

We have equidistant points $x_0,\dots, x_{N-1}, \; x_j = j/N, \; j=0,\dots, N,\;\; N\in\mathbb{N}$, that we want to use to approximate $c_k (f)$. The composite trapezoidal rule states that

$$
\int_a^b f(x) \approx
\frac{\Delta x_k}{2} \left( f_0 + 2 \sum_{j=1}^{N-1} f_j e^{2\pi ikx_j} + f_N \right)
$$

Using the definition of $c_k$ and we know that $f_0 = f_N$ by our initial assumption, we fund that

$$
c_k(f) = \left< f, e^{2\pi ik\cdot} \right>
= \int_{0}^{1} f(x) e^{-2\pi ikx} dx
\approx \Delta x_k \sum_{j=1}^{N-1} f_j e^{-2\pi ikx_j} = \frac{1}{N} \sum_{j=1}^{N-1} f_j e^{-2\pi ijk/N}
$$

and we hve our desired result. We know that $e^x$ is $2\pi$-periodic, thus $e^{2\pi ijk/N}$ must be $N$-periodic, and one of our initial assumptions was that $f$ is periodic over its interval, thus $f$ is also $N$-periodic and $\hat{f}$ must be $N$-periodic.



### f)
     
Now let $N\in \mathbb{N}, k \in \mathbb{Z}$. We consider

$$
\frac{1}{N} \sum_{j=0}^{N-1} e^{-2\pi ijk/N}.
$$

as we know $e^{2\pi ih} = 1$ for $h \in\mathbb{Z}$. If $k \equiv 0 \mod N$ we have that $k/N \in \mathbb{Z}$ and the sum equals $N$ and $\hat{f}_k = 1$. In the opposite case when $k \not\equiv 0 \mod N$ we first assume $N = 2h+1$ for any $h\in \mathbb{N}$, then we can write the sum

$$
\sum_{j=0}^{N-1} e^{-2\pi ijk/N} = \sum_{j=0}^{h} \left( e^{-2\pi ijk/N} + e^{-2\pi ij(h+k)/N} \right) = 0
$$

since each term has a $\pi$ difference in the exponent they sum to 0. Now consider $N = 2h$ for any $h\in\mathbb{Z}$

$$
\sum_{j=0}^{N-1} e^{-2\pi ijk/N} = 1 + \sum_{j=1}^{h-1} \left( e^{-\pi ijk/h} + e^{\pi ijk/h} \right) = 1 + \sum_{j=0}^{N-1}
$$

since $jk\in \mathbb{Z}$ we have that 



### g)

We now construct a matrix where $\hat{\bm{f}} = \frac{1}{N} \mathcal{F}_N \bm{f}$ with $\mathcal{F} \in\mathbb{C}^{N\times N}$ given by

$$
\mathcal{F}_N = \left( e^{2\pi ikl/N} \right)_{k,l=0}^{N-1}.
$$

Now we introdce the cirulant matrix. Let $\bm{a} = (a_0, \dots , a_{N-1})^T $ we then have

$$
\text{circ } \bm{a} = \left( a_{k-l \mod N} \right)_{k,l=0}^{N-1} = 
\begin{pmatrix}
    a_0 & a_{N-1} & \dots & a_2 & a_1 \\
    a_1 & a_0 & \dots & a_3 & a_2 \\
    \vdots & & \ddots & & \vdots \\
    a_{N-1} & a_{N-2} & \dots & a_1 & a_0 \\
\end{pmatrix}.
$$

We will show that

$$
\text{circ } \bm{a} = \frac{1}{N} \overline{\mathcal{F}_N} \text{diag}(\hat{\bm{a}}) \mathcal{F}_N.
$$

We consider the $k$-th entry and using $w = e^{-2\pi i/N}$, we find that

$$
\begin{split}
\hat{a}_k &= \left[ \mathcal{F}_N \bm{a} \right]_k = \sum_{r=0}^{N-1} a_r w^{kr} \\
\left[ \text{diag }\hat{\bm{a}} F_N \right]_{kl} &= \hat{a}_k w^{kl} = w^{kl} \sum_{r=0}^{N-1} a_r w^{kr} \\
\left[ \overline{\mathcal{F}}_N \text{diag }\hat{\bm{a}} \mathcal{F}_N \right]_{kl}
&= \sum_{r=0}^{N-1} w^{-kr} w^{rl} \sum_{j=0}^{N-1} a_j w^{rj}
= \sum_{j=0}^{N-1} a_j \sum_{r=0}^{N-1} w^{r(j+l-k)}.
\end{split}
$$

For the last sum to be nonzero we must have $j+l-k \equiv 0 \mod N$ by our previous result. Thus $j \equiv k-l \mod N$ and for this $a_j$ sums $N$ times, we can therefore conclude that

$$
\frac{1}{N} \overline{\mathcal{F}}_N \text{diag }\hat{\bm{a}} \mathcal{F}_N
= \left( a_{j \equiv k-l \mod N} \right)_{k,l=0}^{N-1} = \text{circ } \bm{a}.
$$

Now consider the $kl$-th element, we can see that

$$
\left[ \overline{\mathcal{F}}_N \mathcal{F}_N \right] _{kl} = \sum_{j=0}^{N-1} w^{(k-l)j}
$$

which is 1 only for $k-l = 0$. Similar logic holds the other way also, thus $\overline{\mathcal{F}} = \mathcal{F}^{-1}$. We can also from this conclude that the Fourier function does ineed diagonalise $\text{circ } \bm{a}$.


### i)


As we are looking at the function

$$
f_2(x) = \sin (32\pi x) + \cos (128\pi x)
$$

we can easily see that $a_{128} = 1, b_{32} = 1$ and all oher coefficients are 0, as this represents the function exactly. We can use that $c_k = (a_k - ib_k)/2, \; k > 0$ and $c_k = (a_{-k} + ib_{-k})/2, \; k < 0$. We then find

$$
c_{-128} = \frac{1}{2}, \; c_{128} = \frac{1}{2}, \; c_{-32} = \frac{i}{2}, \; c_{32} = -\frac{i}{2}.
$$

Further we know that the ´fftshift´ function only shifts the array. Since ´fft´ gives an array with coefficients $(c_0, c_1, \dots c_{\lfloor N/2 \rfloor}, c_{-\lfloor N/2 \rfloor}, \dots , c_{-1})$ and by using ´fftshift´ you will shift the array to take the form $(c_{-\lfloor N/2 \rfloor}, \dots , c_{-1}, c_0, c_1, \dots c_{\lfloor N/2 \rfloor})$.



## Task 2: Signal Processing
### a)

We define a cyclic convolution of $\bm{a}, \bm{b} \in \mathbb{R}^N$ entrywise for all $j = 0, \dots , N-1$ by

$$
c_j = (\bm{a} * \bm{b})_j = \sum_{k=0}^{N-1} a_k b_{j-k \mod N}.
$$

Consider a shift such that $\bm{b}' = (b_{N-1}, b_0, \dots , b_{N-2})$. We can then find

$$
c'_j = (\bm{a} * \bm{b}')_j = \sum_{k=0}^{N-1} a_k b_{j-k-1 \mod N} = c_{j-1 \mod N}.
$$


### b)

Consider $f,g \in L_1(\mathbb{T})$ and for any $k\in \mathbb{Z}$ we will show that

$$
c_k (f*g) = c_k (f) c_k (g).
$$

From the definition of the Fouier coefficients we can write that

$$
\begin{split}
c_k (f*g) &= \int_0^1 (f*g)(x) e^{-2\pi ikx}dx \\
&= \int_0^1 \left( \int_0^1 f(y) g(x-y)dy \right) e^{-2\pi ikx}dx \\
&= \int_0^1 \left( \int_0^1 g(x-y)e^{-2\pi ik(x-y)} dx \right) f(y) e^{-2\pi iky} dy \\
&= \int_0^1 \left( \int_0^1 g(t)e^{-2\pi ik(t)} dt \right) f(y) e^{-2\pi iky} dy \\
&= c_k(f) c_k(g).
\end{split}
$$

Since $g$ is cyclic with a period of 1 we can do this substitution without thinking. Further for any signal we want to show that

$$
\widehat{( \bm{a} * \bm{b} )} = \hat{\bm{a}} \circ \hat{\bm{b}}.
$$

We consider the $j$-th element
    
$$
\begin{split}
\widehat{(\bm{a} * \bm{b})}_j &= \sum_{r=0}^{N-1} \sum_{k=0}^{N-1} w^{rj} a_k b_{j-k \mod N} \\
&= \sum_{k=0}^{N-1} a_k w^{jk} \sum_{r=0}^{N-1} b_{j-k \mod N} w^{(j-r \mod N) k} \\
&= \hat{a}_k \hat{b}_k 
\end{split}
$$

Thus we have our desired result. Using this and the diagonlisation of the circulant matrix we have

$$
\begin{split}
(\text{circ } \bm{a}) (\text{circ } \bm{b}) &= \frac{1}{N^2} \overline{\mathcal{F}}_N \text{diag }\hat{\bm{a}} \mathcal{F}_N \overline{\mathcal{F}}_N \text{diag }\hat{\bm{b}} \mathcal{F}_N \\
&= \frac{1}{N^2} \overline{\mathcal{F}}_N \text{diag }\hat{\bm{a}} \text{diag }\hat{\bm{b}} \mathcal{F}_N \\
&= \frac{1}{N^2} \overline{\mathcal{F}}_N \text{diag }\left\lbrace \hat{\bm{a}} \circ \hat{\bm{b}} \right\rbrace \mathcal{F}_N. \\
&= \frac{1}{N^2} \overline{\mathcal{F}}_N \text{diag }\left\lbrace \widehat{\bm{a} * \bm{b}} \right\rbrace \mathcal{F}_N. \\
&= \text{circ } (\bm{a}*\bm{b})
\end{split}
$$


### c)

Consider the Dirichlet kernel

$$
D_n (x) = 1 + 2 \sum_{k=1}^n \cos (2\pi kx) = 1 + \sum_{k=1}^n \left( e^{2\pi ikx} + e^{-2\pi ikx} \right) , n\in\mathbb{N}.
$$

We know want to find the Fourier coefficients

$$
\begin{split}
c_k (D_n) &= \int_0^1 D_n (x) e^{-2\pi ikx} dx \\
&= \int_0^1 \left[ e^{2\pi ikx} + \sum_{j=1}^{n} \left( e^{2\pi i(j-k)x} + e^{-2\pi i(k+j)x} \right)  \right]dx \\
&= \int_0^1 e^{-2\pi ikx} dx + \sum_{j=1}^n \int_0^1 e^{2\pi i(j-k)x}dx + \sum_{j=1}^n \int_0^1 e^{-2\pi i(j+k)x} dx. \\
\end{split}
$$

We have earlier shown that the integral is 0 for all non-zero exponents and 1 otherwise. We therefore have $c_k (D_n) = 1, \forall |k| \leq n$, else $c_k (D_n) = 0$. Let us discretise the Dirichlet-kernel and we find that by equidistant samples $d_j = D_n(j/N)$ we have that

$$
\hat{d}_j = \sum_{k=0}^{N-1} d_k w^{jk}.
$$

We can find every $d_k$ by

$$
d_k = \sum_{j=-n}^n e^{-2\pi ijk/N} = \sum_{j=0}^n e^{-2\pi ikj/N} + \sum_{j=0}^n e^{2\pi ikj/N} - 1 = \left\lbrace
\begin{array}{cl}
    2N-1 & , k \equiv 0 \mod N, \\
    0 & , \text{else}.
\end{array}
\right.
$$

We can clearly see that this is a simpler and easily implementable form.
    
## Task 3: Image Processing
### a)
We now define the multivariate Fourier transform as

$$
\hat{F}_{k_1, k_2} = \sum_{j_1 = 0}^{N_1-1} \sum_{j_2 = 0}^{N_2-1} F_{j_1, j_2} \exp\left\lbrace -2\pi i \left( \frac{j_1 k_1}{N_1} + \frac{j_2 k_2}{N_2} \right) \right\rbrace, \;\; k_1 = 0, \dots N_1-1, k_2 = 0, \dots N_2-1
$$



