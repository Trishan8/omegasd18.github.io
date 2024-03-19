---
title: As Easy as Writing abc
date: 2022-06-21
categories: [Number Theory]
tags: [polynomials, algebra, conjectures] # TAG names should always be lowercase
img_path: ../ # Example: /resources/BirthdayParadox/
---

{{< mathjax >}}

I'm currently doing a summer project along with some of my classmates, on commutative algebra. Our instructor gave us some papers to read (mostly these were from topics which aren't necessarily covered in most of the usual algebra text books), but all of them are very understandable at the level of an undergraduate maths student. So over there I came across this pretty fascinating conjecture, popularly called the **abc conjecture**, I had seen this in some YouTube videos, but this was the first time I was about to go over the result and its motivations. I found it so very deep and interesting, that I decided its worth to share this. 

# Mason-Stothers Theorem

So the history of **abc conjecture** begins around the year $1980$s (so, its sort of a modern result). It was sometime in $1984$ when R.C. Mason rediscovered a theorem given by Stothers in $1981$, where he stated the following theorem: 

>**Theorem 1 (Mason-Stothers):** *Let $f,g,h \in \mathbb{C}[x]$ be relatively prime polynomials, such that $f + g = h$, then \begin{equation}\label{mason}\tag{1} \max \\{ \deg f, \deg g, \deg h \\} \leq n_0(fgh)-1 \end{equation} where for any polynomial $q \in \mathbb{C}[x]$ you denote $n_0(q)$ as the number of distinct roots of $q$.*


It seems quite surprising, right? That such a simple relation regarding polynomials was not known till $1980$s. In fact it actually turns out that when Mason published his proof for the **theorem 1**, mathematicians were not at all impressed by it, rather they found it very elementary. It was only when Mason gave a trivial proof of **Generalized Fermat's Last Theorem** for polynomials using his theorem,  he caught the attention of mathematicians.  

>**Generalized FLT (for polynomials).** The equation \begin{equation} x^p + y^q = z^r \label{eq2}\tag{2}\end{equation} has no solution in relatively prime polynomials $x(t),y(t),z(t) \in \mathbb{C}[t]$, provided $p,q,r$ are positive integers such that $\frac{1}{p} + \frac{1}{q} + \frac{1}{r} \leq 1$.
{: .prompt-tip}

I was surprised to see that even though equation (\ref{eq2}) looks very difficult at first sight, but it actually turns out to be a trivial problem if you know Mason-Stothers Theorem. 

Let's see how you can tackle this, if you want to apply Mason-Stothers Theorem, what's the first thing you need? You need relatively prime polynomials $f,g,h$ such that $f+g=h$. This gives you the idea to consider 

$$ f(t) = x(t)^p, \quad g(t) = y(t)^q, \quad \mbox{and} \quad h(t) = z(t)^r $$

this choice of polynomials $f,g,h$ indeed satisfies the hypothesis of Mason-Stothers Theorem, but then by Mason-Stothers Theorem you get

\begin{align}
&\Rightarrow \max \\{ \deg f, \deg g, \deg h \\} \leq n_0(fgh)-1 \\\\\
&\Rightarrow \max \\{ p \deg x, q \deg y, r \deg z \\} \leq n_0(x^py^qz^r)-1 \\\\\
&\Rightarrow \max \\{ p \deg x, q \deg y, r \deg z \\} \leq n_0(xyz)-1
\end{align}

but then you get the following inequalities 

$$ \deg x \leq \frac{n_0(xyz)-1}{p}, \quad \deg y \leq \frac{n_0(xyz)-1}{q}, \quad \mbox{and} \quad \deg z \leq \frac{n_0(xyz)-1}{r} $$

and finally using the fact that $x,y,z$ are relatively prime polynomials, you get 

\begin{align}
    \deg (xyz) &= \deg x + \deg y + \deg z \\\\\ &\leq (n_0(xyz)-1)\left( \frac{1}{p} + \frac{1}{q} + \frac{1}{r} \right) \\\\\ &\leq n_0(xyz) - 1 <  \deg (xyz)
\end{align}

Ah! you get a contradiction! 

After seeing this you must be keen to know the proof of Mason-Stothers Theorem, well in fact the proof of the theorem is not so difficult, and is actually something that you can take up as a challenging exercise. And if you get stuck then you can always come back here. 

## Proof of Mason-Stothers Theorem

The proof I'm going to present over here is due to Noah Snyder, as you will see the proof is quite elementary. I'll be using the following lemma:

>**Lemma:** Let $f \in \mathbb{C}[t]$ and let $f'$ denote the derivative of $f$ and let $(f,f')$ denote the $\gcd$ of the two polynomials $f$ and $f'$, then you have the following
\begin{equation}
    \deg f = \deg (f,f') + n_0(f)
\end{equation}

To proof the lemma, you use the fact that $\mathbb{C}[t]$ is algebraically closed, hence for any $f \in \mathbb{C}[t]$ you can write it as a product of linear factors, say 

$$ f(x) = c\prod_{i=1}^r (x - \alpha_i)^{m_i} $$

where $c$ is a non-zero complex number, and $\alpha_i \in \mathbb{C}$ for all $i \in \\{1,\dots,r\\}$ and $m_i$'s are positive integers. Then from elementary calculus you know that if $\alpha_i$ is a root of $f$ with multiplicity $m_i$, then $\alpha_i$ is a root of $f'$ with multiplicity $m_i - 1$. 

Thus you observe that $(x-\alpha_i)^{m_i-1} \mid (f,f')$, for all $i \in \\{1,\dots,r\\}$, which gives you 

$$ \prod_{i=1}^r (x-\alpha_i)^{m_i-1} \mid (f,f') \label{eq3}\tag{3} $$

Now can you show that $(f,f') = \prod_{i=1}^r (x-\alpha_i)^{m_i-1}$? This is actually obvious as if $\alpha$ is a root of $(f,f')$ with multiplicity $n$, then you must have $\alpha$ is a root of $f$, so you let $\alpha = \alpha_i$ for some $i$, but you already know that multiplicity of $\alpha_i$ in $f'$ is $m_i-1$, thus $n \leq m_i - 1$, and this along with equation (\ref{eq3}), gives you $(f,f') = \prod_{i=1}^r (x-\alpha_i)^{m_i-1}$. 

Now you can easily compare the degrees of these two polynomials, to get 

$$ \deg (f,f') = \sum_{i=1}^r (m_i-1) = \left( \sum_{i=1}^r m_i \right) - r = \deg f - n_0(f) $$

which completes the proof of the lemma. $\blacksquare$

Now if you haven't yet solved the Mason-Stothers theorem on your own this is once again a good time to pause and give it a try using the lemma you just proved. 

You have relatively prime polynomials $f,g,h \in \mathbb{C}[t]$ such that $f+g = h$, without loss of generality assume that $ \deg h \geq \deg f, \deg g $, you can obviously assume this because if say $\deg h < \deg f$, then you can swap the roles of $f$ and $h$, i.e., basically you consider the equation $-h + g = -f$ instead of $f+g = h$ (the negative signs won't matter as you can just take $p = -h$ and $q = -f$, to have $p+g=q$).  

The good thing about polynomials is that you can differentiate them freely, now I consider the polynomial $fg' - gf'$. (Can you recognise what this polynomial is?)

\begin{align}
    fg' - f'g = f(f' + g') - f'(f+g) = fh'-f'h \label{eq4}\tag{4}
\end{align}

Now observe that $(f,f')$ and $(g,g')$ divides the polynomial $fg'-f'g$, while on the other hand $(h,h')$ divides $fh'-hf'$ and thus from equation (\ref{eq4}) and noting that $f,g,h$ are relatively prime, you can conclude that 

$$ (f,f') (g,g') (h,h') \mid fg' - f'g $$

but then upon comparing the degrees on both sides you get 

\begin{align}
    &\Rightarrow \deg (f,f') + \deg (g,g') + \deg (h,h') \leq \deg (fg'-f'g) \leq \deg (fg) - 1 \\\\\
    &\overset{(Lemma)}{\Longrightarrow} \sum_{cyc}(\deg f - n_0(f)) \leq \deg f + \deg g - 1 \\\\\
    &\Rightarrow \deg h - (n_0(f) + n_0(g) + n_0(h)) \leq -1 \\\\\
    &\Rightarrow \deg h \leq n_0(fgh)-1
\end{align}

which indeed completes the proof of Mason-Stothers theorem. $\blacksquare$ 

You can see that all the arguments given in the proof are elementary, yet the theorem is very effective.

Now I had asked whether you recognised the polynomial $fg' - f'g$, I guess you know what this is - its the Wronskian of the two polynomials $f$ and $g$, as 

$$ \begin{vmatrix} f & g \\\ f' & g' \end{vmatrix} = fg' - f'g$$

basically if you don't know, if you are given functions $f_1, \dots, f_n : X \to \mathbb{R}$ where $X \subset \mathbb{R}$ (not necessarily they have to be polynomials) and you are given that $f^{(j)}_i$ exists for all $j \in \\{1,\dots,n-1\\}$ an $i \in \\{1,\dots,n\\}$, ($f^{(j)}_i$ is simply the $j^{th}$ derivative of $f_i$) then you define the Wronskian $W : X \to \mathbb{R}$, as follows

$$ W = \\begin{vmatrix} f_1 & f_2 & \cdots & f_n \\\ f_1^{(1)} & f_2^{(1)} & \cdots & f^{(1)}_n \\\ \vdots & \vdots & \ddots & \vdots \\\ f_1^{(n-1)} & f_2^{(n-1)} & \cdots & f^{(n-1)}_n \\end{vmatrix} $$

## Generalized Mason-Stothers Theorem 

Now this is something pretty amazing that using the Wronskian, you can actually sort of generalize the proof of Mason-Stothers theorem to derive a generalized version of it involving $n$ polynomials (with $n \geq 3$), you have the following result: 

>**Theorem (Generalized Mason-Stothers Theorem):** *Let $f_1, \dots, f_n$ be polynomials in $\mathbb{C}[x]$ such that $(f_1, \dots, f_n) = 1$ and*  
\begin{equation}
    f_1 + f_2 + \cdots + f_n = 0   
\end{equation} 
*and* 
\begin{equation}
    \dim(\mbox{span}(f_1, \dots, f_n) ) = n-1
\end{equation} 
*then we have* 
\begin{equation}
    \max_{1 \leq m \leq n} \deg (f_m) \leq \binom{n-1}{2} \left(n_0(f_1 \cdots f_n) - 1\right) \label{genMason}\tag{5}  
\end{equation}


I won't go over the details of these proof, but this is something you can take as a very challenging exercise.

# Glimpses of the abc Conjecture 

>A mathematician is a person who can find analogies between theorems; a better mathematician is one who can see analogies between proofs and the best mathematician can notice analogies between theories. One can imagine that the ultimate mathematician is one who can see analogies between analogies.
>
> -- <cite>Stefan Banach</cite>

One of the most beautiful analogies in mathematics is that between the ring of polynomials over a field, and the ring of integers, like for example both $\mathbb{C}[x]$ and $\mathbb{Z}$ are UFDs (Unique Factorization Domain). The question that arises now is: does there exists a counter part to Mason-Stothers Theorem for integers? 

Well the answer is not so simple, and you still need to define a few stuffs, I would like to take a detour over here from the ring of integers. Let's consider an arbitrary UFD $R$, what follows from here on I always assume $R$ is an UFD, unless otherwise stated.

## Radical of an Element

Let $a$ be an element in $R$, then you can factorize $a$ uniquely as a product of irreducible elements, say you have

$$ a = c \prod_{i=1}^r p_i^{m_i} $$

where $c$ is an unit in $R$ and $p_1, \dots, p_r$ are distinct irreducible elements in $R$, then you define the **radical** of the element $a$ as the product of the distinct irreducible factors of $a$, I'll denote the radical of an element $a$ as $\mathrm{rad}(a)$, i.e., if you have $a$ as above then

$$ \mathrm{rad}(a) = \prod_{i=1}^r p_i $$

## Degree Functions 

I need to define something more before going into the abc conjecture. Now I'll call a function $f : R \setminus \\{\boldsymbol{0}\\} \to \mathbb{R}_{\geq 0}$, to be a **degree function** if it satisfies two conditions: 

- $f(c) = 0$ whenever $c$ is an unit in $R$, and 
- $f(ab) = f(a) + f(b)$ for all $a,b \in R$

If $f$ is a degree function I'll generally denote it with $\deg$ instead of $f$. Now suppose $a \in R$, and you write unique factorization of $a$ as $a = c \prod_{i=1}^r p_i^{m_i}$ then you get 

$$ \deg(a) = \deg \left( c \prod_{i=1}^r p_i^{m_i} \right) = \sum_{i=1}^r m_i \deg(p_i) $$

The previous equation actually tells you that to describe a degree function on $R \setminus \\{ \boldsymbol{0}\\}$ its enough to know the nature of the degree function on the irreducible elements of $R$. Now given a degree function $\deg$, you define another function $n_0 : R \setminus \\{ \boldsymbol{0} \\} \to \mathbb{R}_{\geq 0}$ by 

$$ n_0(a) = \deg(\mathrm{rad}(a)) \quad \forall \, a \in R $$

So for $a$ as above you get 

$$ n_0(a) = \deg\left(\prod_{i=1}^r p_i\right) = \sum_{i=1}^r \deg(p_i) $$

Well this all might seem a little bit too abstract, but I think after this example things will be a lot more clear. 

## An Example, that You Already Know

Take $R = \mathbb{C}[x]$, you already know that if $f \in \mathbb{C}[x]$, you can write $f$ as product of linear polynomials (which are in fact the irreducible elements in the ring $\mathbb{C}[x]$),

$$ f(x) = c{(x-\alpha_1)}^{m_1} {(x - \alpha_2)}^{m_2} \cdots {(x - \alpha_r)}^{m_r} $$

where $\alpha_1, \dots, \alpha_r \in \mathbb{C}$ and $m_1, \dots, m_r \in \mathbb{N}$ then 

$$ \mathrm{rad}(f) = (x-\alpha_1)(x-\alpha_2)\cdots(x-\alpha_r) $$

Now as I discussed earlier you need to define the $\deg$ function only on the irreducible terms of $\mathbb{C}[x]$, for this example I take 

$$  \deg(x-\alpha) = 1 \quad \forall \, \alpha \in \mathbb{C} $$  

Thus you get $\deg(f) = \sum \limits_{i=1}^r m_i $ and $n_0(f) = \deg(\mathrm{rad}(f)) = r$, so you immediately see that this is simply how you define the degree and number of distinct roots of a polynomial. With this motivation in mind let's now try to define a good degree function for the ring of integers. 

## A Good Degree Function for the Ring of Integers 

You may ask what I mean by a "good degree function"? Vaguely speaking by "good degree function" I mean a function that describes some really valuable information regarding an element. 

For example in case of $\mathbb{C}[x]$ the usual degree function gives you the number of roots of a polynomial counted with multiplicity and the function $n_0$ gives you the number of distinct roots it has, which is sort of describing the polynomial completely except explicitly telling you what its roots are. 

Also you have observed carefully you have seen this by now, the degree function is just giving a nonnegative weight to the irreducible terms, for example in case of $\mathbb{C}[x]$, the usual degree function gives a weight $1$ to all the linear polynomials which are all the irreducible elements in $\mathbb{C}[x]$.

The previous example might give you the following hint, let's try to define the degree function on $\mathbb{Z} \setminus \\{0\\}$ as follows, you give all the prime numbers a weight of $1$, and you let $\deg(c) = 0$, whenever $c \in \\{-1,1\\}$ (which are all the units of $\mathbb{Z}$). Well this turns out to be not so good, as then for any arbitrary integer say $a$, if you write $a$ as $c \prod_{i=1}^r p_i^{m_i}$, then $\deg{a} = \sum_{i=1}^r m_i$, which actually doesn't give you any particularly important information about the number $a$, because then you have $\deg(2^5) = \deg(101^5) = 5$, but the two numbers are clearly nowhere near comparison. 

So I guess you can see what's the problem with defining $\deg(p) = 1$ for any prime $p$? The thing is primes are of different sizes, and you need to define the degree function so as to respect their size. And this were you start to think. I would say how about the degree function which gives a prime $p$ the weight $\log p$. Its actually pretty fascinating how often the number $\log p$ arises in any topic regarding analytical number theory. Anyways keeping that aside with definition of degree function as follows: $\deg(p) = \log p$, you immediately see that for any arbitrary integer $a$, you have $\deg(a) = \log \|a\|$, which is quite good!

# The so-called abc Conjecture 

So finally now I can talk about the abc conjecture. And these was another challenge on its own, now that we have a counter part for the degree of polynomial in the ring of integers, you might say how about the counter part of Mason-Stothers Theorem for integers as follows:

>**Attempt 1:** Let $a,b,c$ be relatively prime integers such that $a+b=c$, then 
\begin{equation}
     \max \\{ \log|a|, \log|b|, \log|c| \\} \leq \log |\mathrm{rad}(abc)| - 1 \label{eq6}\tag{6}
\end{equation}
or in other words if you don't care about that $-1$, you may take exponential on both sides and consider the inequality 
\begin{equation}
     \max \\{ |a|, |b|, |c| \\} \leq \mathrm{rad}(abc) \label{eq7}\tag{7}
\end{equation}
{: .prompt-warning}

Though equation (\ref{eq7}) looks extremely pleasing, but unfortunately weren't that lucky and it turns out equation (\ref{eq7}) is incorrect. You can simply take 

$$ a = 2^3, \quad b = 1, \quad \mbox{and} \quad c = 3^2 $$ 

to derive a contradiction. Okay now you might say how about this 

>**Attempt 2:** Let $a,b,c$ be relatively prime integers such that $a+b = c$ then there exists a large constant $K$ such that 
\begin{equation}
     \max \\{ |a|, |b|, |c| \\} \leq K \mathrm{rad}(abc) \label{eq8}\tag{8}
\end{equation}
{: .prompt-warning}

Sadly this isn't true either, i.e., for any $K$ you can always find a tuple $(a,b,c)$ that will contradict equation (\ref{eq8}). The way I would say you find such a tuple is: you consider the sequence of tuples $(a_n, b_n, c_n)$ defined as follows 

$$ a_n = 3^{2^n} - 1, \quad b = 1, \quad \mbox{and} \quad c = 3^{2^n} \quad \forall \, n \in \mathbb{N}$$

then its obvious that $2^n \mid 3^{2^n} -1$ and thus you will get

$$ \mathrm{rad}(a_nb_nc_n) \leq 2\cdot 3 \cdot \frac{3^{2^n}-1}{2^n } < 6 \cdot \frac{3^{2^n}}{2^n} $$     

but then for equation (\ref{eq8}) to hold you must have 
 
$$ 3^{2^n} \leq 6K \cdot \frac{3^{2^n}}{2^n} \Rightarrow 2^n \leq 6K, \quad \forall \, n \in \mathbb{N} $$

which gives you a contradiction! 

So you see the things aren't so simple in the case of integers. The final wording of the abc conjecture was made by Masser and Oesterle in $1986$, it goes like this:

>**The abc Conjecture (Masser-Oesterle, 1986):** _Let $a,b,c$ be relatively prime integers such that $a+b = c$, then for any $\varepsilon > 0$, there exists a constant $K$<sub>$\varepsilon$</sub> such that_
\begin{equation}
     \max \\{ |a|, |b|, |c| \\} \leq K_{\varepsilon} \mathrm{rad}(abc)^{1+\varepsilon} \label{eq9}\tag{9}
\end{equation}


The importance of $1+\varepsilon$ in $\mathrm{rad}(abc)^{1+\varepsilon}$, is clear from the previous discussions.

:exclamation:The abc conjecture is still an open problem although since $2012$ Japanese mathematician Shinichi Mochizuki claims to have proved the result. He has published all his works in a paper in RIMS in $2021$, though in probably $2018$ Peter Scholze and Jakob Stix wrote a report asserting and explaining an error in the logic of the proof and claiming that the resulting gap was 
>so severe that ... small modifications will not rescue the proof strategy.

