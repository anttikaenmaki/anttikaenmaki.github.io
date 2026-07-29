---
title:  "Dissonance of self-conformal measures on the real line"
layout: post
mathjax: true
description: Motivation via Furstenberg conjectures and Marstrand's theorems
---

## Expansions of real numbers

Let $$p \ge 2$$ be an [integer](https://en.wikipedia.org/wiki/Integer) and $$[x]_p = 0.x_1x_2\cdots$$ the [base-$$p$$ representation](https://en.wikipedia.org/wiki/Decimal_representation) of $$x \in [0,1]$$, that is,

$$ x = \sum_{i=1}^\infty x_ip^{-i}. $$

For fractions $$\frac{k}{p^n}$$ there are two possible expansions---we choose the one which ends with $$0$$'s. If $$x \in \mathbb{Q}$$, then the sequence of digits is [eventually periodic](https://en.wikipedia.org/wiki/Periodic_sequence#Generalizations) in [every base](https://en.wikipedia.org/wiki/Repeating_decimal#Extension_to_other_bases): for each $$p$$ there are natural numbers $$m,k$$ and blocks of digits $$y_1\cdots y_m$$, $$x_1\cdots x_k$$ such that 

$$ [x]_p = 0.y_1\cdots y_mx_1\cdots x_kx_1\cdots x_k\cdots. $$

If $$[x]_p = 0.x_1x_2\cdots$$ and $$q=p^2$$, then

$$ x = \sum_{i=1}^\infty x_ip^{-i} = \sum_{i=1}^\infty (px_{2i-1}+x_{2i})p^{-2i} $$

and hence, $$[x]_p = 0.y_1y_2\cdots$$, where $$y_i = px_{2i-1}+x_{2i}$$. In a similar way, if $$q=p^n$$, we obtain $$[x]_q$$ from $$[x]_p$$ by grouping digits into blocks of length $$n$$. If there exist $$b,m,n \in \mathbb{N}$$ such that $$p=b^m$$ and $$q=b^n$$ or, equivalently, $$\log p/\log q \in \mathbb{Q}$$, then we say that integers $$p$$ and $$q$$ are *multiplicatively dependent* and write $$p \sim q$$. In this case, the expansions $$[x]_p$$ and $$[x]_q$$ are closely related via the expansion in base $$k$$. If $$\log p/\log q \notin \mathbb{Q}$$, then we say that $$p$$ and $$q$$ are *multiplicatively independent* and write $$p \not\sim q$$. 



## Minkowski dimensions

For a [bounded set](https://en.wikipedia.org/wiki/Bounded_set) $$A \subset \R^d$$, the [$$r$$-*covering number*](https://en.wikipedia.org/wiki/Covering_number)

$$ N_r(A) = \min\biggl\{ k \in \mathbb{N} : A \subset \bigcup_{i=1}^k B(x_i,r) \text{ for some } x_1,\ldots,x_k \in \R^d \biggr\} $$

is the least number of closed balls of radius $$r>0$$ needed to cover $$A$$. The *upper and lower [Minkowski dimensions](https://en.wikipedia.org/wiki/Minkowski%E2%80%93Bouligand_dimension)* of $$A$$ are

$$
  \begin{align*}
    \overline{\dim}_{\mathrm{M}}(A) &= \limsup_{r \downarrow 0} \frac{\log N_r(A)}{\log r^{-1}}, \\ 
    \underline{\dim}_{\mathrm{M}}(A) &= \liminf_{r \downarrow 0} \frac{\log N_r(A)}{\log r^{-1}},
  \end{align*}
$$

respectively. If the limit above exists, then the common value is the *Minkowski dimension* of $$A$$ and we denote it by $$\dim_{\mathrm{M}}(A)$$. Recall that $$\dim_{\mathrm{H}}(A) \le \underline{\dim}_{\mathrm{M}}(A) = \underline{\dim}_{\mathrm{M}}(\overline{A}) \le \overline{\dim}_{\mathrm{M}}(A) = \overline{\dim}_{\mathrm{M}}(\overline{A})$$, where $$\overline{A}$$ is the [closure](https://en.wikipedia.org/wiki/Closure_(topology)) and $$\dim_{\mathrm{H}}(A)$$ is the [Hausdorff dimension](https://en.wikipedia.org/wiki/Hausdorff_dimension) of a $$A$$. The [partition](https://en.wikipedia.org/wiki/Partition_of_a_set) of the real line into $$p$$-adic intervals is

$$ \mathcal{I}_p = \biggl\{ \biggl[ \frac{k}{p}, \frac{k+1}{p} \biggr) : k \in \Z \biggr\} $$

and the corresponding partition of $$\mathbb{R}^d$$ into $$p$$-adic cubes is

$$ \mathcal{D}_p = \mathcal{D}_p^d = \{ I_1 \times \cdots \times I_d : I_i \in \mathcal{I}_p \}. $$

The covering number of $$A \subset \mathbb{R}^d$$ by $$p$$-adic cubes is

$$ D_p(A) = \#\{ Q \in \mathcal{D}_p : X \cap Q \ne \emptyset \}. $$

Since every $$p^n$$-adic cube is contained in a closed ball of radius $$\sqrt{d}p^{-n}$$, we have $$N_{\sqrt{d}p^{-n}}(A) \le D_{p^n}(A)$$. On the other hand, every closed ball of radius at most $$p^{-n}$$ can be covered by at most $$3^d$$ many $$p^n$$-adic cubes and we see that $$D_{p^n}(A) \le 3^dN_{p^{-n}}(A)$$. Therefore, it is straightforward to conclude that for any integer $$p \ge 2$$ we have

$$
  \begin{align*}
    \overline{\dim}_{\mathrm{M}}(A) &= \limsup_{n \to \infty} \frac{\log D_{p^n}(A)}{\log p^n}, \\ 
    \underline{\dim}_{\mathrm{M}}(A) &= \liminf_{n \to \infty} \frac{\log D_{p^n}(A)}{\log p^n}.
  \end{align*}
$$

{% include theorem.html no="1" theorem="Lemma" %}
*If $$A \subset \mathbb{R}^d$$ and $$B \subset \mathbb{R}^e$$, then*

$$
\begin{align*}
  \overline{\dim}_{\mathrm{M}}(A \times B) &\le \overline{\dim}_{\mathrm{M}}(A) + \overline{\dim}_{\mathrm{M}}(B), \\ 
  \underline{\dim}_{\mathrm{M}}(A \times B) &\ge \underline{\dim}_{\mathrm{M}}(A) + \underline{\dim}_{\mathrm{M}}(B).
\end{align*}
$$

In particular, if $$\dim_{\mathrm{M}}(A)$$ and $$\dim_{\mathrm{M}}(B)$$ exist, then $$\dim_{\mathrm{M}}(A \times B)$$ exists and

$$ \dim_{\mathrm{M}}(A \times B) = \dim_{\mathrm{M}}(A) + \dim_{\mathrm{M}}(B). $$

*Proof.* Notice that if $$Q \in \mathcal{D}_{p^n}^d$$ is the unique $$p^n$$-adic cube containing $$x \in \mathbb{R}^d$$ and $$R \in \mathcal{D}_{p^n}^e$$ is the unique cube containing $$y \in \mathbb{R}^e$$, then $$Q \times R \in \mathcal{D}_{p^n}^{d+e}$$ is the unique cube containing $$(x,y) \in \mathbb{R}^{d+e}$$. Therefore,

$$ D_{p^n}(A \times B) = D_{p^n}(A) \cdot D_{p^n}(B) $$

and the claim follows. &#x25A0;



## Dynamical interpretation

Let $$p \ge 2$$ be an integer and $$f_p \colon [0,1] \to [0,1]$$, $$f_p(x)=px \bmod 1$$, the [fractional part](https://en.wikipedia.org/wiki/Fractional_part) of [multiplication](https://en.wikipedia.org/wiki/Multiplication) by $$p$$. If a [closed](https://en.wikipedia.org/wiki/Closed_set) [non-empty](https://en.wikipedia.org/wiki/Empty_set) [set](https://en.wikipedia.org/wiki/Set_(mathematics)) $$X \subset [0,1]$$ satisfies $$f_p(X) \subset X$$, then we say that $$X$$ is *$$\times p$$-[invariant](https://en.wikipedia.org/wiki/Invariant_(mathematics))*. For example, the closure of the [forward orbit](https://en.wikipedia.org/wiki/Orbit_(dynamics))

$$ O_p(x) = \{f_p^n(x) : n \in \mathbb{N}\} $$

of $$x \in [0,1]$$ under $$f_p$$ is $$\times p$$-invariant. Here $$f_p^n$$ means the $$n$$ times repeated composition $$f_p \circ \cdots \circ f_p$$. Furthermore, if $$X \subset [0,1]$$ is $$\times p$$-invariant, then there exists a collection $$F \subset \bigcup_{n=1}^\infty \{0,\ldots,p-1\}^n$$ of forbidden sub-blocks such that

$$ X = \{ x \in [0,1] : w \in F \text{ is not a sub-block of } [x]_p \}. $$

Conversely, such a collection $$F$$ of forbidden sub-blocks defines a $$\times p$$-invariant set $$X$$ by the above formula. For example, the choices $$p=2$$ and $$F=\{1\}$$ define the [standard $$\frac{1}{3}$$-Cantor set](https://en.wikipedia.org/wiki/Cantor_set#Construction_and_formula_of_the_ternary_set) as the $$\times 3$$-invariant set. We will next go through three technical lemmas. The first one guarantees that the Minkowski dimension exists.

{% include theorem.html no="2" theorem="Lemma" %}
*If $$X \subset [0,1]$$ is $$\times p$$-invariant, then $$\dim_{\mathrm{M}}(X)$$ exists.*

*Proof.* Notice that $$w=w_1\cdots w_n \in \{0,\ldots,p-1\}^n$$ is the initial $$n$$ digits of $$[f_p^k(x)]_p$$ for some $$k$$ if and only if

$$ f_p^k(x) \in \biggl[ \frac{z}{p^n}, \frac{z+1}{p^n} \biggr) \in \mathcal{I}_{p^n}, $$

where $$z = \sum_{i=1}^n w_ip^{i-1}$$. Since such a point $$z$$ is in one-to-one correspondence with $$w$$ and $$f_p(X) \subset X$$, this imples that
$$ D_{p^n}(X) = \#\{w$$ is the initial $$n$$ digits of $$[f_p^k(x)]_p$$ for some $$x$$ and $$k\}. $$
Notice that if the concatenation $$vw$$ of $$v \in \{0,\ldots,p-1\}^m$$ and $$w \in \{0,\ldots,p-1\}^n$$ is the initial $$m+n$$ digits of $$[f_p^k(x)]_p$$ for some $$x$$ and $$k$$, then trivially $$v$$ is the initial $$m$$ digits of $$[f_p^k(x)]_p$$ and $$w$$ is the initial $$n$$ digits of $$[f_p^{k+m}(x)]_p$$. Therefore,

$$ D_{p^{m+n}}(X) \le D_{p^m}(X) \cdot D_{p^n}(X) $$

for all $$m,n$$ and, by [Fekete's lemma](https://en.wikipedia.org/wiki/Subadditivity), $$\dim_{\mathrm{M}}(X)$$ exists. &#x25A0;

The second lemma further strenghtens the intuition that expansions of rational numbers are not that interesting and that multiplicatively dependent expansions are closely related.

{% include theorem.html no="3" theorem="Lemma" %}
*(1) If $$p \ge 2$$ is an integer and $$x \in \mathbb{Q} \cap [0,1]$$, then $$\dim_{\mathrm{M}}(\overline{O_p(x)}) = 0$$.<br />
(2) If $$p \sim q$$ and $$x \in [0,1]$$, then $$\dim_{\mathrm{M}}(\overline{O_p(x)}) = \dim_{\mathrm{M}}(\overline{O_q(x)})$$.*

*Proof.* (1) If $$x \in \mathbb{Q} \cap [0,1]$$, then [there are](#expansions-of-real-numbers) natural numbers $$m,k$$ and blocks of digits $$y_1\cdots y_m$$, $$x_1\cdots x_k$$ such that $$ [x]_p = 0.y_1\cdots y_mx_1\cdots x_kx_1\cdots x_k\cdots. $$ Notice that $$w \in \{0,\ldots,p-1\}^n$$ is a sub-block of $$[x]_p$$ if and only if $$w$$ is the initial $$n$$ digits of $$[f_p^k(x)]_p$$ for some $$k$$. The proof of [Lemma 2](#lemma-2) thus shows that $$D_{p^n}(\overline{O_p(x)}) = \#\{$$distinct sub-blocks of length $$n$$ in $$[x]_p\}$$. Therefore, $$D_{p^n}(\overline{O_p(x)}) \le m+k$$ for all $$n$$ and hence, $$\dim_{\mathrm{M}}(\overline{O_p(x)}) = 0$$ as claimed. 

(2) If $$p \sim q$$, then [there are](#expansions-of-real-numbers) $$b,m,n \in \mathbb{N}$$ such that $$p=b^m$$ and $$q=b^n$$. Since $$f_q = f_{b^n} = f_b^n$$, we have

$$ 
\begin{align*}
  \overline{O_b(x)} &= \overline{\bigcup_{i=0}^{n-1} f_b^i(O_{b^n}(x))} = \bigcup_{i=0}^{n-1} f_b^i(\overline{O_{b^n}(x)}) \\ 
  &= \bigcup_{i=0}^{n-1} \bigcup_{I \in \mathcal{I}_{b^i}} (b^i(\overline{O_{b^n}(x)} \cap I) \bmod 1),
\end{align*}
$$

where $$sA = \{sx : x \in A\}$$. The finite stability of the upper Minkowski dimension and [Lemma 2](#lemma-2) give $$\dim_{\mathrm{M}}(\overline{O_b(x)}) = \max\{ \dim_{\mathrm{M}}(b^i(\overline{O_{b^n}(x)} \cap I)) \} = \dim_{\mathrm{M}}(\overline{O_{b^n}(x)}) = \dim_{\mathrm{M}}(\overline{O_q(x)})$$. The proof is now finished since we similarly obtain $$\dim_{\mathrm{M}}(\overline{O_b(x)}) = \dim_{\mathrm{M}}(\overline{O_p(x)})$$. &#x25A0;

Finally, the third lemma allows us to switch to the Hausdorff dimension. 

{% include theorem.html no="4" theorem="Lemma" %}
*If $$X \subset [0,1]$$ is $$\times p$$-invariant, then $$\dim_{\mathrm{M}}(X) = \dim_{\mathrm{H}}(X)$$.*

*Proof.* 
By [Lemma 2](#lemma-2), it suffices to show that $$\dim_{\mathrm{H}}(X) \ge \dim_{\mathrm{M}}(X)$$. Recall that the [Hausdorff measure](https://en.wikipedia.org/wiki/Hausdorff_measure) is positive, $$\mathcal{H}^s(X)>0$$, if and only if the Hausdorff content is positive, $$\mathcal{H}^s_\infty(X)>0$$. Therefore, it suffices to show that if $$s < \dim_{\mathrm{M}}(X)$$, then $$\sum_j\textrm{diam}(U_j)^s > c > 0$$ for all open covers $$\{U_j\}_j$$ of $$X$$. Since $$X$$ is compact, we may assume that all open covers we consider are finite. Notice that if $$U \subset [0,1]$$ and $$n$$ is such that $$p^{-n-1} \le \textrm{diam}(U) < p^{-n}$$, then there are $$I^1,I^2 \in \mathcal{I}_{p^n}$$ such that $$U \subset I^1 \cup I^2$$. It follows that every open cover $$\{U_j\}_j$$ of $$X$$ can be replaced by a cover $$\{I_i\}_i$$ having twice the cardinality and consisting only of elements in $$\bigcup_n\mathcal{I}_{p^n}$$. Therefore, as

$$ \sum_i \textrm{diam}(I_i)^s = \sum_i p^{-ns} = 2\sum_j p^{-ns} \le 2p^s \sum_j \textrm{diam}(U_j)^s, $$

it is enough to show that $$\sum_i\textrm{diam}(I_i)^s \ge 1$$ for all finite covers $$\{I_i\}_i$$ of $$X$$ consisting only of elements in $$\bigcup_n\mathcal{I}_{p^n}$$.

Write $$R = \{w$$ is a finite sub-block of $$[x]_p$$ for some $$x\}$$. Recall from the proof of [Lemma 2](#lemma-2) that
$$ D_{p^n}(X) = \#\{w$$ is the initial $$n$$ digits of $$[f_p^k(x)]_p$$ for some $$x$$ and $$k\}. $$
We thus see that

$$ D_{p^n}(X) = \#\{w \in R\text{ has length }n\}.$$

Furthermore, if $$\{w_i\}_i$$ is a finite collection of elements in $$R$$ such that for every $$v \in R$$ having length large enough there are $$i$$ and $$u$$ such that $$v=w_iu$$, then every $$[x]_p$$ begins with some $$w_i$$. In other words, $$X \subset \bigcup_i I_{w_i}$$, where $$I_{w_i}$$ is the unique $$p^{n_i}$$-adic interval corresponding to $$w_i$$ as in the proof of [Lemma 2](#lemma-2) and $$n_i$$ is the length of $$w_i$$. Hence it suffices to prove that $$\sum_i p^{-sn_i} \ge 1$$ for all such finite collections $$\{w_i\}_i$$.

Suppose to the contrary that there exists a collection $$\{w_i\}_i$$ as above but with $$\sum_i p^{-sn_i}<1$$. It follows that 

$$ \sum_{(i_1,\ldots,i_n)} p^{-s(n_{i_1}+\cdots+n_{i_n})} = \prod_{k=1}^n \biggl( \sum_{i_k} p^{-sn_{i_k}} \biggr) < 1. $$

By the defining property of the collection, there exists a finite family $$\{u_j\}_j$$ such that every $$v \in R$$ having length large enough can be expressed as a concatenation $$v=w_{i_1} \cdots w_{i_n}u_j$$ for some sequence $$(i_1,\ldots,i_n)$$ and $$j$$. Thus

$$ \sum_n D_{p^n}(X) p^{-sn} = \sum_n \sum_{v \in R \text{ has length }n} p^{-sn} < \infty. $$

But since $$s < \dim_{\mathrm{M}}(X)$$, we have $$D_{p^n}(X) > p^{sn}$$ for all large $$n$$ and the series above must diverge. This contradiction finishes the proof. &#x25A0;



## Furstenberg's conjectures

Furstenberg conjectured that low complexity of the expansion of a given irrational number in one base $$q$$ implies correspondingly high complexity in every other base $$p \not\sim q$$. 

{% include theorem.html theorem="Conjecture" info="[Furstenberg (1970)](https://doi.org/10.1515/9781400869312-004)" %}
*If $$p \not\sim q$$ and $$x \in [0,1] \setminus \mathbb{Q}$$, then*

$$ \dim_{\mathrm{H}}(\overline{O_p(x)}) + \dim_{\mathrm{H}}(\overline{O_q(x)}) \ge 1. $$

Notice that [Lemma 3](#lemma-3) justifies the assumptions of the conjecture. Suppose that $$X \subset [0,1]$$ is $$\times p$$-invariant and $$Y \subset [0,1]$$ is $$\times q$$-invariant such that $$p \not\sim q$$ and $$\dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y) < 1$$. If $$x \in X$$, then $$\overline{O_p(x)} \subset X$$ and $$\dim_{\mathrm{H}}(\overline{O_p(x)}) \le \dim_{\mathrm{H}}(X)$$, and similarly for $$x \in Y$$ and $$\overline{O_q(x)}$$. If the conjecture holds and $$x \in (X \cap Y) \setminus \mathbb{Q}$$, then 

$$ 1 \le \dim_{\mathrm{H}}(\overline{O_p(x)}) + \dim_{\mathrm{H}}(\overline{O_q(x)}) \le \dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y) < 1, $$

which is a contradiction. Therefore, the conjecture implies that $$X \cap Y \subset \mathbb{Q}$$ and hence also $$\dim_{\mathrm{H}}(X \cap Y) = 0$$. As very little is know about the validity of the conjecture, we will look at more geometric versions of the claim. We define $$sA = \{sx : x \in A\}$$ and $$A+t = A+\{t\}$$, where $$A+B = \{x+y : x \in A \text{ and }y \in B\}$$.

{% include theorem.html no="5" info="[Shmerkin (2019)](https://doi.org/10.48550/arXiv.1609.07802) and [Wu (2019)](https://doi.org/10.48550/arXiv.1609.08053)" %}
*If $$X \subset [0,1]$$ is $$\times p$$-invariant and $$Y \subset [0,1]$$ is $$\times q$$-invariant such that $$p \not\sim q$$, then for any $$s,t \in \mathbb{R}$$ we have*

$$ \dim_{\mathrm{H}}((sX+t) \cap Y) \leq \max\{ 0, \dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y) - 1 \}. $$

In particular, if $$\dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y) \le 1$$, then the above result implies $$\dim_{\mathrm{H}}((sX+t) \cap Y) = 0$$. Intuitively, this means that multiplication by $$p$$ and multiplication by $$q$$ have very little to do with each other. A "dual" version of Theorem 1 is the following:

{% include theorem.html no="6" info="[Hochman-Shmerkin (2012)](https://doi.org/10.48550/arXiv.0910.1956)" %}
*If $$X \subset [0,1]$$ is $$\times p$$-invariant and $$Y \subset [0,1]$$ is $$\times q$$-invariant such that $$p \not\sim q$$, then for any $$s \ne 0$$ we have*

$$ \dim_{\mathrm{H}}(X+sY) = \min\{ 1, \dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y) \}. $$

Both theorems give positive answers to conjectures of [Furstenberg](https://en.wikipedia.org/wiki/Hillel_Furstenberg) from 1970 and late 60's. [Hochman's lecture notes](https://doi.org/10.3934/jmd.2014.8.437) from 2014 give a detailed account for the proof of [Theorem 6](#theorem-6) and Furstenberg's proof for [Theorem 5](#theorem-5) under the extra assumption $$\dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y) < \frac{1}{2}$$. Let us examine in detail in which sense the results are "dual" to each other. Fix $$e \in \mathbb{R} \setminus \{0\}$$ and write

$$ \mathrm{proj}_e \colon \R^2 \to \R, \quad \mathrm{proj}_e(x) = e \cdot x. $$

It is easy to see that $$\mathrm{proj}_e$$ corresponds to the [orthogonal projection](https://en.wikipedia.org/wiki/Projection_(linear_algebra)#Orthogonal_projections) onto the line $$\ell=\textrm{span}(e)$$ spanned by $$e$$. If $$X, Y \subset \mathbb{R}^2$$ and $$s \ne 0$$, then

$$ \mathrm{proj}_{(0,1)}((X \times Y) \cap \ell_{s,t}) = (sX+t) \cap Y, $$

where $$\ell_{s,t} = \{(x,y) : y=sx+t\}$$. Since $$\mathrm{proj}_{(0,1)}$$ is a bi-Lipschitz map between $$\ell_{s,t}$$ and the $$y$$-axis, the bi-Lipschitz invariance of the Hausdorff dimension gives us

$$ \dim_{\mathrm{H}}((X \times Y) \cap \ell_{s,t}) = \dim_{\mathrm{H}}((sX+t) \cap Y). $$

Furthermore, since $$\mathrm{proj}_{(1,s)}(X \times Y) = X+sY$$, we also see that

$$ \dim_{\mathrm{H}}(\mathrm{proj}_{(1,s)}(X \times Y)) = \dim_{\mathrm{H}}(X+sY). $$

Therefore, the theorems are "dual" since the other is about slices and the other about projections of the planar set $$X \times Y$$. We will next see that this connection is stronger than one would expect at first glance.



## Marstrand's slicing and projection theorems

Write $$\sigma^1 = \frac{1}{2\pi}\mathcal{H}^1\vert_{S^1}$$ for the [spherical measure](https://en.wikipedia.org/wiki/Spherical_measure) on $$S^1$$, where $$\mathcal{H}^1$$ is the $$1$$-dimensional [Hausdorff measure](https://en.wikipedia.org/wiki/Hausdorff_measure). The following result is Marstrand's slicing theorem.

{% include theorem.html no="7" info="[Marstrand (1954)](https://doi.org/10.1112/plms/s3-4.1.257)" %}
*If $$A \subset \mathbb{R}^2$$ is a Borel set and $$e \in S^1$$, then*

$$ \dim_{\mathrm{H}}(A \cap (\mathrm{span}(e) + x)) \le \max\{ 0, \dim_{\mathrm{H}}(A)-1 \} $$

*for $$\mathcal{H}^1$$-almost all $$x$$ in the orthogonal complement of $$\mathrm{span}(e)$$.*

The next result is Marstrand's projection theorem.

{% include theorem.html no="8" info="[Marstrand (1954)](https://doi.org/10.1112/plms/s3-4.1.257)" %}
*If $$A \subset \mathbb{R}^2$$ is a Borel set, then*

$$ \dim_{\mathrm{H}}(\mathrm{proj}_e(A)) = \min\{1, \dim_{\mathrm{H}}(A)\} $$

*for $$\sigma^1$$-almost all $$e \in S^1$$.*

Marstrand's theorems give us a strong dimension conservation principle: either $$\dim_{\mathrm{H}}(A)$$ is conserved by almost every projection or the surplus $$\dim_{\mathrm{H}}(A) - 1$$ is stored in the fibers of the orthogonal projection. 

{% include theorem.html no="9" theorem="Lemma" %}
*If $$X \subset [0,1]$$ is $$\times p$$-invariant and $$Y \subset [0,1]$$ is $$\times q$$-invariant, then*

$$ \dim_{\mathrm{H}}(X \times Y) = \dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y). $$

*Proof.* Let $$s < \dim_{\mathrm{H}}(X)$$ and $$t < \dim_{\mathrm{H}}(Y)$$. By [Frostman's lemma](https://en.wikipedia.org/wiki/Frostman_lemma), there are Borel measures $$\mu$$ such that $$\mu(X)>0$$ and $$\mu(B(x,r)) \le r^s$$ for all $$x \in \mathbb{R}$$ and $$r>0$$ and $$\nu$$ such that $$\nu(Y)>0$$ and $$\nu(B(x,r)) \le r^t$$ for all $$x \in \mathbb{R}$$ and $$r>0$$. Since now $$\mu \times \nu(X \times Y)>0$$ and $$\mu \times \nu(B((x,y),r)) \le r^{s+t}$$ for all $$(x,y) \in \mathbb{R}^2$$ and $$r>0$$, another application of Frostman's lemma shows that $$\mathcal{H}^{s+t}(X \times Y)>0$$ and $$\dim_{\mathrm{H}}(X \times Y) \ge s+t$$. Since the choices of $$s$$ and $$t$$ were arbitrary, we get

$$ \dim_{\mathrm{H}}(X \times Y) \ge \dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y). $$

It follows from [Lemma 1](#lemma-1), [Lemma 4](#lemma-4), and the inequality above that

$$
\begin{align*}
  \dim_{\mathrm{M}}(X \times Y) &= \dim_{\mathrm{M}}(X) + \dim_{\mathrm{M}}(Y) = \dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y) \\ 
  &\le \dim_{\mathrm{H}}(X \times Y) \le \dim_{\mathrm{M}}(X \times Y).
\end{align*}
$$

The claim follows since there is equality throughout. &#x25A0;

By [Lemma 9](#lemma-9) and the [earlier observations](#furstenbergs-conjectures) on how intersections of sets are connected to slices of their product, [Theorem 5](#theorem-5) thus claims that on the product $$X \times Y$$ Marstrand's slicing theorem extends to all lines $$\ell$$ going through the origin besides the coordinate axes. 

{% include theorem.html no="5" info="[Shmerkin (2019)](https://doi.org/10.48550/arXiv.1609.07802) and [Wu (2019)](https://doi.org/10.48550/arXiv.1609.08053)" %}
*If $$X \subset [0,1]$$ is $$\times p$$-invariant and $$Y \subset [0,1]$$ is $$\times q$$-invariant such that $$p \not\sim q$$, then we have*

$$ \dim_{\mathrm{H}}((X \times Y) \cap \mathrm{span}(e)) \leq \max\{ 0, \dim_{\mathrm{H}}(X \times Y) - 1 \}. $$

*for all $$e \in S^1 \setminus \{(\pm 1,0),(0,\pm 1)\}$$.*

Similarly, since sums of sets are connected to orthogonal projections, [Theorem 6](#theorem-6) claims that on the product $$X \times Y$$ Marstrand's projection theorem extends to all orthogonal projections besides the ones onto the coordinate axes.

{% include theorem.html no="6" info="[Hochman-Shmerkin (2012)](https://doi.org/10.48550/arXiv.0910.1956)" %}
*If $$X \subset [0,1]$$ is $$\times p$$-invariant and $$Y \subset [0,1]$$ is $$\times q$$-invariant such that $$p \not\sim q$$, then we have*

$$ \dim_{\mathrm{H}}(\mathrm{proj}_e(X \times Y)) = \min\{ 1, \dim_{\mathrm{H}}(X \times Y) \}. $$

*for all $$e \in S^1 \setminus \{(\pm 1,0),(0,\pm 1)\}$$.*

Recall that the *convolution* of measures $$\mu$$ and $$\nu$$ is $$\mu \ast \nu = S_*(\mu \times \nu)$$, where $$S(x,y) = x+y$$. To prove [Theorem 6](#theorem-6) the task is to show that for every [$$\times p$$-ergodic](https://en.wikipedia.org/wiki/Ergodicity) measures $$\mu$$ and $$\times q$$-ergodic measures $$\nu$$ we have

$$ \dim_{\mathrm{H}}(\mu \ast (T_s)_*\nu) = \min\{1, \dim_{\mathrm{H}}(\mu) + \dim_{\mathrm{H}}(\nu)\}, $$

where $$T_s(x) = sx$$ and $$\dim_{\mathrm{H}}(\mu) = \inf\{\dim_{\mathrm{H}}(A) : \mu(A)>0\}$$, and then rely on the variational principle, that is, on the existence of dimension maximizing ergodic measure. Recently, [Yu (2021)](https://arxiv.org/abs/1811.11073) and [Austin (2021)](https://arxiv.org/abs/2009.01292) gave new dynamical proofs of [Theorem 5](#theorem-5) and [Glasscock-Moreira-Richter (2023)](https://arxiv.org/abs/2107.10605) found a combinatorial proof of [Theorem 6](#theorem-6).



## Self-similar and self-conformal sets

It is possible to approximate the closed $$\times p$$-invariant set $$X$$ by a [self-similar](https://en.wikipedia.org/wiki/Self-similarity) set $$X'$$: For every $$\varepsilon > 0$$ there is $$k \in \mathbb{N}$$ and a $$p^{-k}$$-self-similar set $$X' \supset X$$ such that $$\dim_{\mathrm{H}}(X) \ge \dim_{\mathrm{H}}(X') - \varepsilon$$. In fact, this is how Wu begins his proof for [Theorem 5](#theorem-5). Here the $$n^{-1}$$-self-similar set means the homogeneous self-similar set in $$[0,1]$$ associated to a collection of similarities obtained by partitioning $$[0,1)$$ into $$n$$ many subintervals. Already this gives motivation to study corresponding Furstenberg's conjectures on self-similar sets. The question is interesting since we face an additional complication coming from possible overlapping. [Peres-Shmerkin (2009)](https://doi.org/10.48550/arXiv.0705.2628) studied self-similar sets satisfying the strong separation condition, [Nazarov-Peres-Shmerkin (2012)](https://doi.org/10.48550/arXiv.0905.3850) considered homogeneous self-similar measures with the strong separation condition, [Hochman-Shmerkin (2012)](https://doi.org/10.48550/arXiv.0910.1956) had results also for self-similar measures under the strong separation condition, and [Bruce-Jin (2022+)](https://doi.org/10.48550/arXiv.2211.16410) studied ergodic measures on homogeneous self-similar sets satisfying the strong separation condition.

In self-conformal sets, the defining contractions are $$C^{1+\alpha}$$ maps instead of similarities. Let $$X$$ and $$Y$$ be self-conformal sets associated to $$\{f_i\}_i$$ and $$\{g_i\}_i$$, respectively. If there are $$i,j$$ such that $$\log {Df_i\vert}_{p}/\log {Dg_j\vert}_{q} \notin \mathbb{Q}$$, where $$p$$ and $$q$$ are the fixed points of $$f_i$$ and $$g_j$$, respectively, then we say that $$X$$ and $$Y$$ are *multiplicatively independent*. Quasi-Bernoulli measures are generalizations of [Bernoulli measures](https://en.wikipedia.org/wiki/Bernoulli_scheme) and they include, for example, all [Gibbs measures](https://en.wikipedia.org/wiki/Gibbs_measure) for [Hölder continuous](https://en.wikipedia.org/wiki/H%C3%B6lder_condition) potentials. It is worth emphasizing that the following result does not assume any separation.

{% include theorem.html no="9" info="[Bárány-K-Pyörälä-Wu (2023+)](https://doi.org/10.48550/arXiv.2308.11399)" %}
*If $$X$$ and $$Y$$ are multiplicatively independent self-conformal sets, then*

$$ \dim_{\mathrm{H}}(\mu \ast \nu) = \min\{1, \dim_{\mathrm{H}}(\mu) + \dim_{\mathrm{H}}(\nu)\} $$

for all quasi-Bernoulli measures $$\mu$$ on $$X$$ and $$\nu$$ on $$Y$$.