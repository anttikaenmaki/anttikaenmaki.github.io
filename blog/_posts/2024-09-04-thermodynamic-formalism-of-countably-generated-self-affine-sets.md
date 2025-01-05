---
title:  "Thermodynamic formalism of countably generated self-affine sets"
layout: post
description: Equilibrium states and Hausdorff dimension of self-affine sets
---

## Iterated function system

A non-empty finite or countably infinite set $$\mathcal{I}$$ is called the *index set*. An *iterated function system* is a collection $$(T_i)_{i \in \mathcal{I}}$$ of transformations $$T_i \colon \mathbb{R}^d \to \mathbb{R}^d$$ which are contracting uniformly with respect to $$i \in \mathcal{I}$$ such that the fixed points of $$T_i$$ form a bounded set. Since the mapping $$A \mapsto \overline{\bigcup_{i \in \mathcal{I}} T_i(A)}$$ defined on nonempty compact subsets of $$\mathbb{R}^d$$ is strictly contractive in Hausdorff distance, there exists a unique nonempty compact set $$K \subset \mathbb{R}^d$$ which satisfies

$$  K=\overline{\bigcup_{i \in \mathcal{I}} T_i(K)}.  $$

The set $$K$$ is called the *attractor* of the iterated function system. We say that $$x \in \mathbb{R}^d$$ is a *limit point* of $$(T_i)_{i \in \mathcal{I}}$$ if there exists $$\mathtt{i} = (i_n)_{n=1}^\infty \in \mathcal{I}^\mathbb{N}$$ such that for every $$v \in \mathbb{R}^d$$ we have

$$ \pi(\mathtt{i}) = \lim_{n \to \infty} T_{i_1} \circ \cdots \circ T_{i_n} (v) = x. $$

The union $$X = \bigcup_{\mathtt{i} \in \mathcal{I}^\mathbb{N}} \pi(\mathtt{i})$$ of all limit points is called the *limit set* of the iterated function system $$(T_i)_{i \in \mathcal{I}}$$. If the index set $$\mathcal{I}$$ is finite, then $$x \in \mathbb{R}^d$$ belongs to the attractor $$K$$ if and only if it is a limit point of $$(T_i)_{i \in \mathcal{I}}$$. Hence $$X = K$$ in this case. In general, it is easy to see that the closure of the limit set $$\overline{X}$$ is the attractor $$K$$. As an example, let us consider an iterated function system $$(x \mapsto (i+x)^{-1})_{i \in \mathbb{N}}$$ acting on $$[0,1]$$. This is a countably infinite system and it arises from continued fraction expansions. Its attractor $$K$$ is the unit interval $$[0,1]$$. The limit set $$X$$ is the set $$[0,1] \setminus \mathbb{Q}$$ of all irrational numbers in the unit interval. The limit set thus better reflects the dynamical properties of the system. It is worthwhile to emphasize that in this example the limit set $$X$$ is not topologically closed.

We assume that each transformation $$T_i$$ is invertible and affine, having the form

$$ T_i(x)=A_ix+v_i $$

for some invertible linear map $$A_i \in \mathrm{GL}_d(\mathbb{R})$$ and vector $$v_i \in \mathbb{R}^d$$, and we will describe such systems simply as *affine iterated function systems*. The limit set $$X$$ of an affine iterated function system is conventionally called a *self-affine set* as it consists of affine images of itself. If the index set $$\mathcal{I}$$ is finite, then we say that $$X$$ is *finitely generated*, and if $$\mathcal{I}$$ is countably infinite, then we say that $$X$$ is *infinitely generated*.

We are interested in determining $$\mathrm{dim}_{\mathrm{H}} X$$, the Hausdorff dimension of $$X$$. Write $$T_\mathtt{i} = T_{i_1} \circ \cdots \circ T_{i_n}$$ and $$A_\mathtt{i} = A_{i_1} \cdots A_{i_n}$$ for all $$\mathtt{i} = i_1 \cdots i_n$$. The self-affine set $$X$$ can naturally be covered by the ellipses $$T_\mathtt{i}(B)$$, where $$B$$ is a ball containing $$X$$, and this introduces a way to calculate the dimension.



## Singular value pressure

The *singular value function* is

$$
      \varphi^s(A_\mathtt{i}) =
      \begin{cases}
        \sigma_1(A_\mathtt{i})\cdots \sigma_{\lfloor s\rfloor}(A_\mathtt{i}) \sigma_{\lceil s\rceil}(A_\mathtt{i})^{s-\lfloor s\rfloor}, &\text{if } 0 \leq s \leq d,\\
        |\det A_\mathtt{i}|^{\frac{s}{d}}, &\text{if } s > d,
      \end{cases}
$$

where $$\sigma_k(A_\mathtt{i})$$ is the $$k^{\mathrm{th}}$$ singular value of $$A_\mathtt{i}$$, and it represents a measurement of the $$s$$-dimensional volume of the image of the Euclidean unit ball under $$T_\mathtt{i}$$. For example, in the planar case, the set $$T_\mathtt{i}(B)$$ can be covered by one ball of radius $$\sigma_1(A_\mathtt{i})\mathrm{diam}(B)$$ or by $$O(\sigma_1(A_\mathtt{i})/\sigma_2(A_\mathtt{i}))$$ balls of radius $$\sigma_2(A_\mathtt{i})\mathrm{diam}(B)$$. This gives the motivation to study the limiting behavior of sums $$\sum_{\mathtt{i} \in \mathcal{I}^n} \varphi^s(A_\mathtt{i})$$.

We define for each $$s \geq 0$$ the *pressure* of $$\mathsf{A} = (A_i)_{i \in \mathcal{I}} \in \mathrm{GL}_d(\mathbb{R})^{\mathcal{I}}$$ at $$s$$ by setting

$$ P(\mathsf{A},s) = \lim_{n \to \infty} \frac{1}{n}\log \sum_{\mathtt{i} \in \mathcal{I}^n} \varphi^s(A_{i_1}\cdots A_{i_n}) \in (-\infty,\infty]. $$

Note that the existence of the above limit needs additional arguments: if $$a_n=1$$ for even $$n$$ and $$a_n=\infty$$ for odd $$n$$ then the sequence $$(a_n)_{n=1}^\infty$$ is subadditive but the sequence $$(a_n/n)_{n=1}^\infty$$ is not convergent. We define the *finiteness threshold* of the pressure to be the quantity

$$ \theta_\mathsf{A}=\inf\{ s \geq 0 \colon P(\mathsf{A},s) <\infty\}. $$

We also write

$$ \mathscr{I}_\mathsf{A}=\{s \geq 0 \colon P(\mathsf{A},s) \in \mathbb{R} \} \subseteq [\theta_\mathsf{A},\infty). $$

A tuple $$\mathsf{A}=(A_i)_{i \in \mathcal{I}} \in \mathrm{GL}_d(\mathbb{R})^\mathcal{I}$$ will be called *irreducible* if there is no nonzero proper subspace $$V \subset \mathbb{R}^d$$ such that $$A_iV=V$$ for every $$i \in \mathcal{I}$$; otherwise $$\mathsf{A}$$ is *reducible*. We also say that $$\mathsf{A}$$ is *completely reducible* if in some basis the matrices in $$\mathsf{A}$$ are block-diagonal with irreducible blocks of the same size.

{% include theorem.html no="1" theorem="Lemma" %}
*Let $$\mathsf{A}=(A_i)_{i \in \mathcal{I}} \in \mathrm{GL}_d(\mathbb{R})^\mathcal{I}$$. Then the following two assertions hold:<br />
&nbsp;&nbsp;&nbsp;&nbsp;(1) The set $$\mathscr{I}_\mathsf{A}$$ is equal to either $$[\theta_\mathsf{A},\infty)$$ or $$(\theta_\mathsf{A},\infty)$$, and satisfies the alternative characterisation*

$$ \mathscr{I}_\mathsf{A}=\Bigl\{s \geq 0 \colon \sum_{i \in \mathcal{I}} \varphi^s(A_i)<\infty\Bigr\}. $$

*In particular, if $$\mathcal{I}$$ is finite then we have $$\mathscr{I}_\mathsf{A}=[0,\infty)$$.<br />
&nbsp;&nbsp;&nbsp;&nbsp;(2) If $$\sup_{i \in \mathcal{I}} \|A_i\|<1$$, then $$s \mapsto P(\mathsf{A},s)$$ defined on $$\mathscr{I}_\mathsf{A}$$ is strictly decreasing with $$\lim_{s\to \infty} P(\mathsf{A},s)=-\infty$$.*

The above clauses are direct and straightforward to prove. The following theorem introduces more properties for the pressure. Its proof is surprisingly involved.

{% include theorem.html no="2" theorem="Theorem" info="[K-Morris (2024+)](https://doi.org/10.48550/arXiv.2405.00520)" %}
*Let $$\mathsf{A}=(A_i)_{i \in \mathcal{I}} \in \mathrm{GL}_d(\mathbb{R})^\mathcal{I}$$, where $$\mathcal{I}$$ is either finite or countably infinite. Then the following two assertions hold:<br />
&nbsp;&nbsp;&nbsp;&nbsp;(1) The pressure function $$s \mapsto P(\mathsf{A},s)$$ defined on $$\mathscr{I}_\mathsf{A}$$ is continuous, and is convex when restricted to the intervals $$[k,k+1] \cap \mathscr{I}_\mathsf{A}$$ for all $$k \in \{0,\ldots,d-1\}$$ and when restricted to the interval $$[d,\infty) \cap \mathscr{I}_\mathsf{A}$$. In particular, if $$P(\mathsf{A},\theta_\mathsf{A})<\infty$$, then*

$$ \lim_{s \downarrow \theta_\mathsf{A}} P(\mathsf{A},s)=P(\mathsf{A},\theta_\mathsf{A}). $$

*&nbsp;&nbsp;&nbsp;&nbsp;(2) For all $$s \in \mathscr{I}_\mathsf{A}$$ we have*

$$ P(\mathsf{A},s) = \sup\{ P((A_i)_{i \in \mathcal{J}} ,s) \colon \mathcal{J} \text{ is a finite subset of }\mathcal{I}\} $$

*and if $$\mathsf{A}$$ is completely reducible then the above relation holds for every $$s \ge 0$$.*

The assumption $$P(\mathsf{A},\theta_\mathsf{A})<\infty$$ is required for the right-continuity of the pressure at $$\theta_\mathsf{A}$$: there exists a tuple $$\mathsf{A}$$ of upper-triangular matrices such that

$$ \exists \lim_{s \downarrow \theta_\mathsf{A}} P(\mathsf{A},s)<\infty=P(\mathsf{A},\theta_\mathsf{A}). $$

To prove the theorem, the first step is to show that it suffices to work with completely reducible matrices. We then consider the tuple of irreducible blocks having maximal pressure. Since the singular value function of these blocks is quasi-multiplicative, we can apply the result of [K-Reeve (2014)](https://doi.org/10.48550/arXiv.1212.5820).



## Reduction to completely reducible matrices

{% include theorem.html no="3" theorem="Theorem" info="[K-Morris (2024+)](https://doi.org/10.48550/arXiv.2405.00520)" %}
*If $$(A_i)_{i \in \mathcal{I}} \in \mathrm{GL}_d(\mathbb{R})^\mathcal{I}$$, then there exist $$X \in \mathrm{GL}_d(\mathbb{R})$$, $$k \in \mathbb{N}$$, and positive integers $$d_1,\ldots,d_k$$ such that*

$$ A_i = X^{-1}
    \begin{pmatrix}
      B_i^{11} & \cdots &B_i^{1k} \\
      \vdots & \ddots &\vdots\\
      0 & \cdots & B_i^{kk}
    \end{pmatrix}X $$

*for all $$i \in \mathcal{I}$$, where each matrix $$B_i^{t_1t_2}$$ is a real matrix with dimensions $$d_{t_1} \times d_{t_2}$$ and the family $$(B_i^{tt})_{i \in \mathcal{I}}$$ is irreducible for all $$t \in \{1,\ldots,k\}$$. If $$\mathsf{A}'=(A_i')_{i \in \mathcal{I}}$$ is defined by*

$$ A_i' =
    \begin{pmatrix}
      B_i^{11} & \cdots &0 \\
      \vdots & \ddots &\vdots\\
      0 & \cdots & B_i^{kk}
    \end{pmatrix} $$

*for all $$i \in \mathcal{I}$$, then $$P(\mathsf{A},s)=P(\mathsf{A}',s)$$ for all $$s \in \mathscr{I}_\mathsf{A}$$ and $$\theta_{\mathsf{A}'} \leq \theta_{\mathsf{A}}$$.*

The theorem extends earlier work of [K-Morris (2018)](https://doi.org/10.48550/arXiv.1609.07360) in the finite case. It reduces the study of the pressure to the case of tuples which are block-diagonal with irreducible blocks. The following technical result allows us to study tuples of irreducible blocks separately. Its proof is algebraic in flavor.

{% include theorem.html no="4" theorem="Theorem" info="[K-Morris (2024+)](https://doi.org/10.48550/arXiv.2405.00520)" %}
*Let $$(A_i)_{i \in \mathcal{I}} \in \mathrm{GL}_d(\mathbb{R})^\mathcal{I}$$ be completely reducible. Then for each integer $$k \in \{0,\ldots,d-1\}$$ there exist functions $$\Phi^{(1)}_{(\cdot)},\ldots,\Phi^{(p)}_{(\cdot)} \colon [k,k+1]\times \mathcal{I}^* \to (0,\infty)$$, a constant $$K>0$$, a finite set $$F \subset \mathcal{I}^*$$, and an integer $$p$$ with $$1 \le p \le \binom{d}{k}$$ if $$s=k$$ and $$1 \le p \le \binom{d}{k}\binom{d}{k+1}$$ if $$s \in (k,k+1]$$ such that the following three properties hold:<br />
&nbsp;&nbsp;&nbsp;&nbsp;(1) For every $$s \in [k,k+1]$$ we have*

$$ K^{-1}\varphi^s(A_\mathtt{i}) \leq \max_{j \in \{1,\ldots,p\}} \Phi_s^{(j)}(\mathtt{i}) \leq K\varphi^s(A_\mathtt{i}) $$

*for all $$\mathtt{i} \in \mathcal{I}^*$$.<br />
&nbsp;&nbsp;&nbsp;&nbsp;(2) For every $$s \in [k,k+1]$$ and $$j \in \{1,\ldots,p\}$$ we have*

$$ \Phi_s^{(j)}(\mathtt{i}\mathtt{j}) \leq \Phi_s^{(j)}(\mathtt{i})\Phi_s^{(j)}(\mathtt{j}) \leq K\max_{\mathtt{k} \in F}  \Phi_s^{(j)}(\mathtt{i}\mathtt{k}\mathtt{j}) $$

*for all $$\mathtt{i},\mathtt{j} \in \mathcal{I}^*$$. This is* quasi-multiplicativity.<br />
*&nbsp;&nbsp;&nbsp;&nbsp;(3) For every $$j \in \{1,\ldots,p\}$$ and $$\mathtt{i} \in \mathcal{I}^*$$ the function $$s \mapsto \Phi_s^{(j)}(\mathtt{i})$$ defined on $$[k,k+1]$$ is continuous.*

If $$s=k$$ and $$\mathsf{A}^{\wedge k}$$ is irreducible then we may take $$p=1$$. We may do so also if $$s \in (k,k+1]$$ and both $$\mathsf{A}^{\wedge k}$$ and $$\mathsf{A}^{\wedge(k+1)}$$ are irreducible and at least one of them is strongly irreducible. For each $$j \in \{1,\ldots,p\}$$ and $$s \in [k,k+1]$$, we define

$$ P^{(j)}(\mathsf{A},s)=\lim_{n \to \infty} \frac{1}{n}\log \sum_{\mathtt{i} \in \mathcal{I}^n} \Phi_s^{(j)}(\mathtt{i}). $$

It follows that $$P(\mathsf{A},s) = \max_{j \in \{1,\ldots,p\}} P^{(j)}(\mathsf{A},s)$$ for all $$[k,k+1] \cap \mathscr{I}_\mathsf{A}$$. By quasi-multiplicativity, each $$s \mapsto P^{(j)}(\mathsf{A},s)$$ is continuous. Therefore, by the above equality, $$s \mapsto P(\mathsf{A},s)$$ inherits the continuity from $$s \mapsto P^{(j)}(\mathsf{A},s)$$. The claim $$P(\mathsf{A},s) = \sup\{ P((A_i)_{i \in \mathcal{J}} ,s) \colon \mathcal{J}\text{ is a finite subset of }\mathcal{I}\}$$ also follows by quasi-multiplicativity of $$\Phi_s^{(j)}$$ and choosing $$j \in \{1,\ldots,p\}$$ to be maximal.



## Affinity dimension

Let us now assume $$\sup_{i \in \mathcal{I}} \|A_i\|<1$$, so that $$s \mapsto P(\mathsf{A},s)$$ defined on $$\mathscr{I}_\mathsf{A}$$ is strictly decreasing with $$\lim_{s \to \infty} P(\mathsf{A},s) = -\infty$$. The *upper affinity dimension* of $$\mathsf{A}$$ is

$$ \overline{\mathrm{dim}}_{\mathrm{aff}} \mathsf{A} = \inf\{s \geq 0 \colon P(\mathsf{A},s)<0\}. $$

The *lower affinity dimension* of $$\mathsf{A}$$ is

$$ \underline{\mathrm{dim}}_{\mathrm{aff}} \mathsf{A} = \sup\{ \overline{\mathrm{dim}}_{\mathrm{aff}} (A_i)_{i \in \mathcal{J}} \colon \mathcal{J}\text{ is a finite subset of }\mathcal{I}\}. $$

It is readily checked that

$$ \max\{\theta_\mathsf{A},\underline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}\} \leq \overline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A} $$

and if $$\underline{\mathrm{dim}}_{\mathrm{aff}} \mathsf{A} = \overline{\mathrm{dim}}_{\mathrm{aff}} \mathsf{A}$$, then we denote the common value by $$\mathrm{dim}_{\mathrm{aff}} \mathsf{A}$$ and call it the *affinity dimension* of $$\mathsf{A}$$. The following proposition introduces sufficient assumptions for the affinity dimension to exist.

{% include theorem.html no="5" theorem="Proposition" %}
*If $$\mathsf{A}=(A_i)_{i \in \mathcal{I}} \in \mathrm{GL}_d(\mathbb{R})^\mathcal{I}$$ and at least one of the following four assumptions,<br />
&nbsp;&nbsp;&nbsp;&nbsp;(1) $$0 \leq P(\mathsf{A},\overline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A})<\infty$$,<br />
&nbsp;&nbsp;&nbsp;&nbsp;(2) $$\theta_\mathsf{A}<\overline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}$$,<br />
&nbsp;&nbsp;&nbsp;&nbsp;(3) $$\mathsf{A}$$ is completely reducible,<br />
&nbsp;&nbsp;&nbsp;&nbsp;(4) $$\mathcal{I}$$ is finite,<br />
holds, then $$\underline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}=\overline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}$$.*

We also demonstrate that the affinity dimension does not necessarily exist.

{% include theorem.html no="6" theorem="Proposition" %}
*If $$\alpha, \beta \in (0,1)$$ and $$\gamma \in (\beta,1]$$, then there exists $$\mathsf{A} = (A_i)_{i \in \mathbb{N}} \in \mathrm{GL}_2(\mathbb{R})^\mathbb{N}$$ such that*

$$ \underline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A} = \beta < \gamma = \theta_{\mathsf{A}} = \overline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}. $$

*Furthermore, $$\mathsf{A}$$ may be chosen such that $$P(\mathsf{A},\theta_{\mathsf{A}})$$ is either negative or infinite, as desired.*



## Hausdorff dimension of self-affine sets

As in the finite case, the upper bound $$\mathrm{dim}_{\mathrm{H}} X \le \min\{d,\overline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}\}$$ for the Hausdorff dimension of the self-affine set is straightforward. The goal is to find conditions under which $$\mathrm{dim}_{\mathrm{H}} X \ge \min\{d,\underline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}\}$$ since then, if $$\underline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A} = \overline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}$$, we obtain $$\mathrm{dim}_{\mathrm{H}} X = \min\{d,\mathrm{dim}_{\mathrm{aff}}\mathsf{A}\}$$. If $$\mathcal{J}$$ is a finite subset of $$\mathcal{I}$$, then we denote the self-affine set associated to the finite affine iterated function system $$(T_i)_{i \in \mathcal{J}}$$ by $$X_\mathcal{J}$$. Observe that if a sequence $$(\mathcal{J}_n)_{n \ge 1}$$ of finite subsets of $$\mathcal{I}$$ satisfies $$\bigcup_{n=1}^\infty \mathcal{J}_n = \mathcal{I}$$, we have

$$ \bigcup_{n=1}^\infty X_{\mathcal{J}_n} \subseteq X. $$

If we had conditions under which

$$ \mathrm{dim}_{\mathrm{H}} X_{\mathcal{J}_n} = \min\{d,\mathrm{dim}_{\mathrm{aff}}(A_i)_{i \in \mathcal{J}_n}\}, $$

then, by the monotonicity and the countable stability of the Hausdorff dimension, we would get

$$ \mathrm{dim}_{\mathrm{H}} X \ge \sup_{n \ge 1} \mathrm{dim}_{\mathrm{H}} X_{\mathcal{J}_n} = \min\{d,\sup_{n \ge 1}\mathrm{dim}_{\mathrm{aff}}(A_i)_{i \in \mathcal{J}_n}\} = \min\{d,\underline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}\}. $$
  
[Hochman (2014)](https://doi.org/10.48550/arXiv.1212.1873) has found such assumptions on $$\mathbb{R}$$. Therefore, as in this case the affinity dimension exists, the above explained procedure allows us to extend his result into the infinitely generated setting. Note that self-affine sets on $$\mathbb{R}$$ are self-similar.

{% include theorem.html no="7" theorem="Theorem" %}
*Let $$X \subset \mathbb{R}$$ be a self-similar set satisfying the exponential separation condition. Then $$\mathrm{dim}_{\mathrm{H}} X = \min\{1,\mathrm{dim}_{\mathrm{aff}}\mathsf{A}\}$$.*

The following theorem relies on the dimension result for finitely generated self-affine sets by [Hochman-Rapaport (2022)](https://doi.org/10.48550/arXiv.1904.09812).

{% include theorem.html no="8" theorem="Theorem" %}
*Let $$X \subset \mathbb{R}^2$$ be a self-affine set satisfying the exponential separation condition such that the associated matrix tuple $$\mathsf{A}$$ is strongly irreducible and proximal. Then $$\mathrm{dim}_{\mathrm{H}} X = \min\{2,\mathrm{dim}_{\mathrm{aff}}\mathsf{A}\}$$.*

The following theorem relies on the dimension result for finitely generated self-affine sets by [Rapaport (2024)](https://doi.org/10.48550/arXiv.2212.07215) and [Morris-Sert (2023+)](https://doi.org/10.48550/arXiv.2303.03437).

{% include theorem.html no="9" theorem="Theorem" %}
*Let $$X \subset \mathbb{R}^3$$ be a self-affine set satisfying the strong open set condition such that the associated matrix tuple $$\mathsf{A}$$ is strongly irreducible and proximal. Then $$\mathrm{dim}_{\mathrm{H}} X = \min\{3,\mathrm{dim}_{\mathrm{aff}}\mathsf{A}\}$$.*



## Equilibrium states


The collection of all $$\sigma$$-invariant Borel probability measures on $$\mathcal{I}^\mathbb{N}$$ is denoted by $$\mathcal{M}_\sigma(\mathcal{I}^\mathbb{N})$$. The *energy* of $$\mathsf{A}$$ at $$s \ge 0$$ with respect to $$\mu \in \mathcal{M}_\sigma(\mathcal{I}^\mathbb{N})$$ is

$$ \Lambda(\mu,\mathsf{A},s) = \lim_{n \to \infty} \frac{1}{n} \int_{\mathcal{I}^\mathbb{N}} \log\varphi^s(A_{\mathtt{i}|_n}) \,\mathrm{d}\mu(\mathtt{i}). $$

The *Shannon entropy* over a finite Borel partition $$\mathcal{P}$$ of $$\mathcal{I}^\mathbb{N}$$ is

$$ H(\mu,\mathcal{P}) = -\sum_{C \in \mathcal{P}} \mu(C)\log\mu(C). $$

The *Kolmogorov-Sinai entropy* of $$\mu \in \mathcal{M}_\sigma(\mathcal{I}^\mathbb{N})$$ is

$$ h(\mu) = \sup\{h(\mu,\mathcal{P}) \colon \mathcal{P} \text{ is a finite Borel partition of } \mathcal{I}^\mathbb{N} \}, $$

where

$$ h(\mu,\mathcal{P}) = \lim_{n \to \infty} \frac{1}{n} H\biggl( \mu,\bigvee_{i=0}^{n-1} \sigma^{-i}(\mathcal{P}) \biggr). $$

{% include theorem.html no="10" theorem="Proposition" %}
*Let $$\mathsf{A}=(A_i)_{i \in \mathcal{I}} \in \mathrm{GL}_d(\mathbb{R})^\mathcal{I}$$ and $$s \ge 0$$ be such that $$\sup_{i \in \mathcal{I}} \|A_i\| < \infty$$. If $$\mu \in \mathcal{M}_\sigma(\mathcal{I}^\mathbb{N})$$ is such that $$h(\mu)<\infty$$ or $$\Lambda(\mu,\mathsf{A},s)>-\infty$$, then*

$$ h(\mu) + \Lambda(\mu,\mathsf{A},s) \le P(\mathsf{A},s). $$

If $$\mu \in \mathcal{M}_\sigma(\mathcal{I}^\mathbb{N})$$ is such that $$h(\mu)<\infty$$ or $$\Lambda(\mu,\mathsf{A},s)>-\infty$$, then we say that $$\mu$$ is an *$$\varphi^s$$-equilibrium state* for $$\mathsf{A}$$ if it satisfies

$$ h(\mu) + \Lambda(\mu,\mathsf{A},s) = P(\mathsf{A},s). $$

If $$\mathcal{I}$$ is finite, then the existence of an $$\varphi^s$$-equilibrium state is proved by [K (2004)](https://doi.org/10.48550/arXiv.1701.08575) and their complete description is given by [Bochi-Morris (2018)](https://doi.org/10.48550/arXiv.1710.04499). Whereas in the finite-alphabet case the existence of at least one equilibrium state follows from a weak$$^*$$ compactness argument, in the countable-alphabet case no general existence results were previously known. To show the existence of an $$\varphi^s$$-equilibrium state in the infinite case requires a delicate approach as we cannot rely on the upper semicontinuity of the entropy.

{% include theorem.html no="11" theorem="Example" info="[Iommi-Todd-Velozo (2020)](https://doi.org/10.48550/arXiv.1809.10022)" %}
*Let $$\mu_k$$ be the Bernoulli measure obtained from the probability vector*

$$ \Bigl( 1-\frac{1}{\log k},\frac{1}{k\log k},\frac{1}{k\log k},\ldots,\frac{1}{k\log k},0,0,\ldots \Bigr), $$

*where the term $$\frac{1}{k\log k}$$ appears $$k$$ times. Note that $$\mu_k \to \delta_1$$ in the weak$$^*$$ topology, where $$\delta_1$$ is the Dirac mass at $$111\cdots \in \mathcal{I}^\mathbb{N}$$. As $$\mu_k$$ is Bernoulli, it is easy to see that*

$$ h(\mu_k,\mathcal{P}_\mathcal{I}) = H(\mu_k,\mathcal{P}_\mathcal{I}) \to 1 $$

*as $$k \to \infty$$. Since $$h(\delta_1,\mathcal{P}_\mathcal{I}) = H(\delta_1,\mathcal{P}_\mathcal{I}) = 0$$, we conclude that $$\lim_{k \to \infty}h(\mu_k,\mathcal{P}_\mathcal{I})=1>0=h(\delta_1,\mathcal{P}_\mathcal{I})$$.*

Nevertheless, we prove the existence of an $$\varphi^s$$-equilibrium state and manage to describe them completely.

{% include theorem.html no="12" theorem="Theorem" info="[K-Morris (2024+)](https://doi.org/10.48550/arXiv.2405.00520)" %}
*Let $$\mathsf{A}=(A_i)_{i \in \mathcal{I}} \in \mathrm{GL}_d(\mathbb{R})^\mathcal{I}$$ be such that $$\sup_{i \in \mathcal{I}} \|A_i\| < \infty$$, where $$\mathcal{I}$$ is either finite or countably infinite. If $$s > \theta_\mathsf{A}$$, then the following three assertions hold:<br />
&nbsp;&nbsp;&nbsp;&nbsp;(1) If $$s \geq d$$ then there is a unique $$\varphi^s$$-equilibrium state for $$\mathsf{A}$$ and it is a Bernoulli measure.<br />
&nbsp;&nbsp;&nbsp;&nbsp;(2) If $$s \in (0,d) \cap \Z$$ then the number of distinct ergodic $$\varphi^s$$-equilibrium states for $$\mathsf{A}$$ is at least one and is not more than $$\binom{d}{s}$$. If $$\mathsf{A}^{\wedge s}$$ is irreducible then there is a unique $$\varphi^s$$-equilibrium state for $$\mathsf{A}$$.<br />
&nbsp;&nbsp;&nbsp;&nbsp;(3) If $$s \in (0,d) \setminus \Z$$ then the number of distinct ergodic $$\varphi^s$$-equilibrium states for $$\mathsf{A}$$ is at least one and is not more than $$\binom{d}{\lfloor s \rfloor}\binom{d}{\lceil s \rceil}$$. If one of $$\mathsf{A}^{\wedge \lfloor s\rfloor}$$ and $$\mathsf{A}^{\wedge \lceil s\rceil}$$ is irreducible and the other is strongly irreducible then there is a unique $$\varphi^s$$-equilibrium state for $$\mathsf{A}$$.<br />
In all cases every equilibrium state is fully supported on $$\mathcal{I}^\mathbb{N}$$.*

The proof of the theorem also relies on the reduction to completely reducible matrices and quasi-multiplicativity of $$\Phi_s^{(j)}$$. We define for each $$s \in [k,k+1] \cap \mathscr{I}_\mathsf{A}$$ and $$j \in \{1,\ldots,p\}$$ the *measure-theoretical pressure* of $$\mathsf{A}$$ at $$s$$ with respect to $$\mu \in \mathcal{M}_\sigma(\mathcal{I}^\mathbb{N})$$ by setting

$$ P^{(j)}(\mu,\mathsf{A},s) = \lim_{n \to \infty} \frac{1}{n} \sum_{\mathtt{i} \in \mathcal{I}^n} \mu([\mathtt{i}]) \log\frac{\Phi^{(j)}_s(\mathtt{i})}{\mu([\mathtt{i}])}, $$

where 

$$ [\mathtt{i}] = \{\mathtt{j} \in \mathcal{I}^\mathbb{N} \colon \mathtt{j}|_n=\mathtt{i}\} \subset \mathcal{I}^\mathbb{N} $$ 

is a *cylinder set* at level $$n$$. We show that if $$\mu \in \mathcal{M}_\sigma(\mathcal{I}^\mathbb{N})$$ is such that $$h(\mu) < \infty$$, then

$$ P^{(j)}(\mu,\mathsf{A},s) = h(\mu) + \Lambda^{(j)}(\mu,\mathsf{A},s). $$
 
The idea in the proof is to first use [K-Reeve (2014)](https://doi.org/10.48550/arXiv.1212.5820): For each $$j \in \{1,\ldots,p\}$$ the quasi-multiplicativity of $$\Phi^{(j)}_s$$ implies the existence of a unique ergodic $$\mu^{(j)} \in \mathcal{M}_\sigma(\mathcal{I}^\mathbb{N})$$ for which $$P^{(j)}(\mu,\mathsf{A},s) = P^{(j)}(\mathsf{A},s)$$. Then, by proving $$h(\mu^{(j)})<\infty$$ and considering only pressure maximising indices $$j \in \{1,\ldots,p\}$$, we see that $$\mu^{(j)}$$ is an $$\varphi^s$$-equilibrium state. Thus, the number of distinct ergodic $$\varphi^s$$-equilibrium states for $$\mathsf{A}$$ is at least one and is not more than $$p$$. The fact that equilibrium states are fully supported allows us to prove the following result.

{% include theorem.html no="13" theorem="Proposition" %}
*Let $$\mathsf{A}=(A_i)_{i \in I} \in \mathrm{GL}_d(\mathbb{R})^\mathcal{I}$$. If $$\theta_\mathsf{A} < \overline{\mathrm{dim}}_{\mathrm{aff}}\mathsf{A}$$, then $$\mathrm{dim}_{\mathrm{aff}} (A_i)_{i \in \mathcal{J}} < \mathrm{dim}_{\mathrm{aff}} \mathsf{A}$$ for every proper subset $$\mathcal{J}$$ of $$\mathcal{I}$$.*

In the cases where the Hausdorff dimension of the self-affine set equal the affinity dimension, the above translates into a result that removing one of the defining affine maps results in a strict reduction of the Hausdorff dimension, a property which was previously demonstrated for finite affine iterated function systems by [K-Morris (2018)](https://doi.org/10.48550/arXiv.1609.07360).





