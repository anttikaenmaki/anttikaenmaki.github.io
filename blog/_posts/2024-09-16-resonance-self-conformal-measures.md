---
title:  "Do self-conformal measures on the real line resonate?"
layout: post
description: Some motivation for the question via Furstenberg conjectures and Marstrand's theorems
---

## Furstenberg's conjectures

Let $$p$$ be an integer and $$f_p \colon [0,1] \to [0,1]$$, $$f_p(x)=px \bmod 1$$. If a closed non-empty set $$X \subset [0,1]$$ satisfies $$f_p(X) \subset X$$, then we say that $$X$$ is *$$\times p$$-invariant*. For example, the closure of the orbit of $$x \in [0,1]$$ is $$\times p$$-invariant and the standard $$\frac{1}{3}$$-Cantor set is $$\times 3$$-invariant. If $$\log p/\log q \notin \mathbb{Q}$$, then we say that $$p$$ and $$q$$ are *multiplicatively independent* and write $$p \not\sim q$$.

{% include theorem.html no="1" info="[Shmerkin (2019)](https://doi.org/10.48550/arXiv.1609.07802) and [Wu (2019)](https://doi.org/10.48550/arXiv.1609.08053)" %}
*If $$X \subset [0,1]$$ is $$\times p$$-invariant and $$Y \subset [0,1]$$ is $$\times q$$-invariant such that $$p \not\sim q$$, then for any $$s \ne 0$$ and $$t \in \mathbb{R}$$ we have*

$$ \dim_{\mathrm{H}}((sX+t) \cap Y) \leq \max\{ 0, \dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y) - 1 \}. $$

A "dual" version of Theorem 1 is the following:

{% include theorem.html no="2" info="[Hochman-Shmerkin (2012)](https://doi.org/10.48550/arXiv.0910.1956)" %}
*If $$X \subset [0,1]$$ is $$\times p$$-invariant and $$Y \subset [0,1]$$ is $$\times q$$-invariant such that $$p \not\sim q$$, then for any $$s \ne 0$$ we have*

$$ \dim_{\mathrm{H}}(X+sY) = \min\{ 1, \dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y) \}. $$

Bot theorems give positive answers for conjectures of Furstenberg from 60's. Let us examine in detail in which sense the results are "dual" to each other. Fix $$e \in \mathbb{R} \setminus \{0\}$$ and write

$$ \mathrm{proj}_e \colon \R^2 \to \R, \quad \mathrm{proj}_e(x) = e \cdot x. $$

It is easy to see that $$\mathrm{proj}_e$$ corresponds to the orthogonal projection onto the line $$\ell$$ spanned by $$e$$. If $$X, Y \subset \mathbb{R}^2$$, then

$$ \mathrm{proj}_{(0,1)}((X \times Y) \cap \ell_{s,t}) = (sX+t) \cap Y, $$

where $$\ell_{s,t} = \{(x,y) : y=sx+t\}$$. Since $$\mathrm{proj}_{(0,1)}$$ is a bi-Lipschitz map between $$\ell_{s,t}$$ and the $$y$$-axis, we get

$$ \dim_{\mathrm{H}}((X \times Y) \cap \ell_{s,t}) = \dim_{\mathrm{H}}((sX+t) \cap Y). $$

Furthermore, since $$\mathrm{proj}_{(1,s)}(X \times Y) = X+sY$$, we also see that

$$ \dim_{\mathrm{H}}(\mathrm{proj}_{(1,s)}(X \times Y)) = \dim_{\mathrm{H}}(X+sY). $$

Therefore, the theorems are about slices and projections of the planar set $$X \times Y$$.

## Marstrand's slicing and projection theorems

Write $$\mathcal{H}^1$$ for the $$1$$-dimensional Hausdorff measure and assume that the lines $$\ell$$ going through the origin are parametrized by $$S^1$$. Marstrand's slicing theorem is:

{% include theorem.html no="3" info="[Marstrand (1954)](https://doi.org/10.1112/plms/s3-4.1.257)" %}
*If $$A \subset \mathbb{R}^2$$ is a Borel set, then*

$$ \dim_{\mathrm{H}}(A \cap \ell) \le \max\{ 0, \dim_{\mathrm{H}}(A)-1 \} $$

*for $$\mathcal{H}^1$$-almost all lines $$\ell$$.*

Marstrand's projection theorem is:

{% include theorem.html no="4" info="[Marstrand (1954)](https://doi.org/10.1112/plms/s3-4.1.257)" %}
*If $$A \subset \mathbb{R}^2$$ is a Borel set, then*

$$ \dim_{\mathrm{H}}(\mathrm{proj}_e(A)) = \min\{1, \dim_{\mathrm{H}}(A)\} $$

*for $$\mathcal{H}^1$$-almost all $$e \in S^1$$.*

Marstrand's theorems give us a strong dimension conservation principle: either $$\dim_{\mathrm{H}}(A)$$ is conserved by almost every projection or the surplus $$\dim_{\mathrm{H}}(A) - 1$$ is stored in the corresponding orthogonal slice. Relying on invariance, it is straightforward to show that

$$ \dim_{\mathrm{H}}(X \times Y) = \dim_{\mathrm{H}}(X) + \dim_{\mathrm{H}}(Y). $$

Theorem 1 thus claims that if $$A$$ is chosen to be $$X \times Y$$, then Marstrand's slicing theorem holds for all lines $$\ell$$. Similarly, Theorem 2 claims that if $$A$$ is chosen to be $$X \times Y$$, then Marstrand's projection theorem holds for all $$e \in S^1$$.

Recall that the *convolution* of measures $$\mu$$ and $$\nu$$ is $$\mu \ast \nu = S_*(\mu \times \nu)$$, where $$S(x,y) = x+y$$. To prove Theorem 2 the task is to show

$$ \underline{\dim}_{\mathrm{H}}(\mu \ast (T_s)_*\nu) = \min\{1, \underline{\dim}_{\mathrm{H}}(\mu) + \underline{\dim}_{\mathrm{H}}(\nu)\}, $$

where $$T_s(x) = sx$$, for all $$\times p$$-invariant measures $$\mu$$ and $$\times q$$-invariant measures $$\nu$$ and then rely on the variational principle (i.e. the existence of dimension maximizing invariant measure).

## Self-similar and self-conformal sets

It is possible to approximate the closed $$\times p$$-invariant set $$X$$ by a self-similar set $$X'$$: For every $$\varepsilon > 0$$ there is $$k \in \mathbb{N}$$ and a $$p^{-k}$$-self-similar set $$X' \supset X$$ such that $$\dim_{\mathrm{H}}(X) \ge \dim_{\mathrm{H}}(X') - \varepsilon$$. Recent advances regarding the corresponding question on self-similar sets:

- [Peres-Shmerkin (2009)](https://doi.org/10.48550/arXiv.0705.2628): Self-similar sets with SSC.
- [Nazarov-Peres-Shmerkin (2012)](https://doi.org/10.48550/arXiv.0905.3850): Homogeneous self-similar measures with SSC.
- [Hochman-Shmerkin (2012)](https://doi.org/10.48550/arXiv.0910.1956): Self-similar measures with SSC.
- [Bruce-Jin (2022+)](https://doi.org/10.48550/arXiv.2211.16410): Ergodic measures on homogeneous self-similar sets with SSC.

If the defining contractions are $$C^{1+\alpha}$$, then we are considering self-conformal sets. Let $$X$$ and $$Y$$ be self-conformal sets associated to $$\{f_i\}_i$$ and $$\{g_i\}_i$$, respectively. If there are $$i,j$$ such that $$\log {Df_i\vert}_{p}/\log {Dg_j\vert}_{q} \notin \mathbb{Q}$$, where $$p$$ and $$q$$ are the fixed points of $$f_i$$ and $$g_j$$, respectively, then we say that $$X$$ and $$Y$$ are *multiplicatively independent*. It is worth emphasizing that the following result does not assume any separation.

{% include theorem.html no="5" info="[Bárány-K-Pyörälä-Wu (2023+)](https://doi.org/10.48550/arXiv.2308.11399)" %}
*If $$X$$ and $$Y$$ are multiplicatively independent self-conformal sets, then*

$$ \dim_{\mathrm{H}}(\mu \ast \nu) = \min\{1, \dim_{\mathrm{H}}(\mu) + \dim_{\mathrm{H}}(\nu)\} $$

for all quasi-Bernoulli measures $$\mu$$ on $$X$$ and $$\nu$$ on $$Y$$.