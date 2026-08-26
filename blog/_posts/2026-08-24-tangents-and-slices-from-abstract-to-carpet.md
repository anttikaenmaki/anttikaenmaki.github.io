---
title:  "Tangents and slices, from abstract to carpet"
layout: post
mathjax: true
description: How directional coherence controls the abundance of large tangents
---

## Tangents at a point, not just somewhere

A classical question about a [fractal](https://en.wikipedia.org/wiki/Fractal) $$K \subseteq \mathbb{R}^d$$ is what $$K$$ looks like under arbitrary magnification. There is more than one way to make this precise. A *weak tangent* of $$K$$ is a [Hausdorff-metric](https://en.wikipedia.org/wiki/Hausdorff_distance) limit of magnified pieces $$T_k(K) \cap B(0,1)$$ for [similarities](https://en.wikipedia.org/wiki/Similarity_(geometry)) $$T_k$$ whose ratios diverge to infinity. No constraint is placed on where the windows $$T_k^{-1}(B(0,1))$$ sit, so their centres are free to drift through $$K$$ as $$k$$ grows. A *tangent at* $$x \in K$$ is the same kind of limit, but with the similarities forced to be [homotheties](https://en.wikipedia.org/wiki/Homothety) centred at $$x$$. Weak tangents capture the local picture *somewhere* in $$K$$; tangents at $$x$$ capture the local picture *at the prescribed point*.

The [Assouad dimension](https://en.wikipedia.org/wiki/Assouad_dimension) of $$K$$ is characterised by its weak tangents. A theorem essentially due to [Furstenberg (2008)](https://doi.org/10.1017/S0143385708000084) and made explicit in [K-Ojala-Rossi (2018)](https://doi.org/10.1093/imrn/rnw336) states that $$\dim_{\mathrm{A}} K$$ equals the maximum [Hausdorff dimension](https://en.wikipedia.org/wiki/Hausdorff_dimension) among the weak tangents of $$K$$. The Assouad dimension records a worst-case scaling ratio anywhere in $$K$$ at any pair of scales. A weak tangent realises this worst case as a limit object, but its location is free to drift, so the theorem says nothing about where in $$K$$ the maximal behaviour occurs.

Can the drift be removed? Is there always a *point* of $$K$$ at which a tangent realises $$\dim_{\mathrm{A}} K$$? For general compact sets, the answer is no. [Le Donne-Rajala (2015)](https://doi.org/10.48550/arXiv.1306.5859) gave an explicit counterexample: a set on the line with $$\dim_{\mathrm{A}} K = 1$$ for which every pointwise tangent has Hausdorff dimension zero. The question becomes interesting only when $$K$$ carries dynamical structure.


## A stratification of self-similarity

The discussion in this post follows a progression of dynamical structures on $$K$$, from abstract self-embeddability to concrete planar self-affine carpets, and asks at each stage how the abundance of points with large tangents changes.

The Furstenberg-style theorem identifies $$\dim_{\mathrm{A}} K$$ with the dimension of *some* weak tangent. Promoting "some weak tangent" to "a tangent at a typical point" requires more than abstract [self-similarity](https://en.wikipedia.org/wiki/Self-similarity): it requires coherent self-similar structure around typical points. For self-affine carpets, this coherence takes the form of a common dominant contraction direction. When that direction is fixed, large tangents are abundant; when it can switch between orbits, this abundance can collapse.

The three papers develop, in order, a self-embeddable framework for the pointwise theory in [K-Rutar (2023+)](https://doi.org/10.48550/arXiv.2309.11971), non-autonomous machinery for slices in [K-Rutar (2025)](https://doi.org/10.1017/S0305004125000416), and an application to planar self-affine carpets in [K-Rutar (2026)](https://doi.org/10.48550/arXiv.2410.19404). The first establishes the pointwise framework, the second supplies the non-autonomous dimension formula, and the third combines them to show how the abundance of large tangents depends on directional coherence.


## Definitions and a concrete example

The Furstenberg-style identity relates two objects: a dimension attached to $$K$$ as a whole and the family of weak tangents that realises it. Tangents at a prescribed point $$x$$ already localise the second of these, and the following definition, introduced in [K-Rutar (2023+)](https://doi.org/10.48550/arXiv.2309.11971), localises the first.

{% include theorem.html no="1" theorem="Definition" %}
*The pointwise Assouad dimension of a compact set $$K \subseteq \mathbb{R}^d$$ at a point $$x \in K$$ is*

$$ \dim_{\mathrm{A}}(K, x) = \inf\biggl\{s : \text{there are } C, \rho > 0 \text{ such that } N_r\bigl(B(x, R) \cap K\bigr) \leq C \Bigl(\frac{R}{r}\Bigr)^s \text{ for all } 0 < r \leq R < \rho \biggr\}, $$

*where $$N_r(F)$$ is the smallest number of closed balls of radius $$r$$ required to cover the bounded set $$F$$.*

The threshold $$\rho$$ makes the definition local: only the scales below it are constrained. Thus, $$\dim_{\mathrm{A}}(K, x)$$ sees nothing of $$K$$ beyond an arbitrarily small neighbourhood of $$x$$, and a [bi-Lipschitz](https://en.wikipedia.org/wiki/Lipschitz_continuity) change of coordinates near $$x$$ leaves it unchanged. From the definitions, $$\sup\{\overline{\dim}_{\mathrm{M}} F : F \in \mathrm{Tan}(K, x)\} \leq \dim_{\mathrm{A}}(K, x) \leq \dim_{\mathrm{A}} K$$, where $$\mathrm{Tan}(K, x)$$ is the set of pointwise tangents at $$x$$. Both inequalities can be strict, even for compact sets on the line.

The next definition formalises the idea that $$K$$ contains a bi-Lipschitz copy of itself near every point and at every scale.

{% include theorem.html no="2" theorem="Definition" %}
*A compact set $$K \subseteq \mathbb{R}^d$$ is* self-embeddable *if for every $$z \in K$$ and $$0 < r \leq \mathrm{diam}\,K$$, there is a constant $$a = a(z, r) > 0$$ and a function $$f \colon K \to B(z, r) \cap K$$ with*

$$ a r |x - y| \leq |f(x) - f(y)| \leq a^{-1} r |x - y| $$

*for all $$x, y \in K$$. It is* uniformly self-embeddable *if $$a$$ can be chosen independently of $$z$$ and $$r$$.*

[Attractors](https://en.wikipedia.org/wiki/Attractor) of finite bi-Lipschitz iterated function systems are self-embeddable, with no separation hypothesis on the maps. Attractors of finite self-conformal iterated function systems are uniformly self-embeddable, again without separation.

For a concrete example, fix the [iterated function system](https://en.wikipedia.org/wiki/Iterated_function_system) on $$[0,1]^2$$ generated by the three affine maps $$T_A(x, y) = (x/3, y/4)$$, $$T_B(x, y) = (x/3, y/4 + 3/4)$$, and $$T_C(x, y) = (x/3 + 2/3, y/2)$$. The attractor $$K_0$$ is a planar [self-affine](https://en.wikipedia.org/wiki/Self-similarity#Self-affinity) set with two non-empty columns: a "left" column over $$[0, 1/3]$$ containing two stacked rectangles and a "right" column over $$[2/3, 1]$$ containing a single rectangle. Each generating map is a strict contraction whose horizontal contraction ratio is strictly larger than its vertical contraction ratio.


## Self-embeddable sets: the abstract abundance theorem

For a general compact set $$K$$ with $$\alpha = \dim_{\mathrm{A}} K$$, the Furstenberg-style characterisation produces a weak tangent of Hausdorff dimension $$\alpha$$. A density argument for [Hausdorff content](https://en.wikipedia.org/wiki/Hausdorff_dimension#Hausdorff_content) strengthens this conclusion without any additional hypothesis on $$K$$.

{% include theorem.html no="3" theorem="Theorem" info="[K-Rutar (2023+)](https://doi.org/10.48550/arXiv.2309.11971)" %}
*Let $$K$$ be a non-empty compact set with $$\alpha = \dim_{\mathrm{A}} K$$. Then there is a weak tangent $$F$$ of $$K$$ with $$\mathcal{H}_\infty^\alpha(F) \geq 1$$.*

Once we have *a* weak tangent of full Hausdorff $$\alpha$$-content, the density theorem for Hausdorff content lets us insert it into the construction at every point in $$K$$ where the set looks like a bi-Lipschitz copy of itself.

{% include theorem.html no="4" theorem="Theorem" info="[K-Rutar (2023+)](https://doi.org/10.48550/arXiv.2309.11971)" %}
*Let $$K \subseteq \mathbb{R}^d$$ be compact and self-embeddable, and write $$\alpha = \dim_{\mathrm{A}} K$$. Then there is a dense set of points $$x \in K$$ for which there exists $$F \in \mathrm{Tan}(K, x)$$ with $$\mathcal{H}_\infty^\alpha(F) \geq 2^{-\alpha}$$. In particular,*

$$ \dim_{\mathrm{P}}\{x \in K : \dim_{\mathrm{A}}(K, x) = \dim_{\mathrm{A}} K\} = \dim_{\mathrm{P}} K. $$

*If $$K$$ is moreover uniformly self-embeddable, then for some constant $$c > 0$$,*

$$ \dim_{\mathrm{H}}\{x \in K : \text{there is } F \in \mathrm{Tan}(K, x) \text{ with } \mathcal{H}_\infty^\alpha(F) \geq c\} = \dim_{\mathrm{H}} K. $$

*Sketch.* For the packing-dimension conclusion, iterate self-embeddability to nest a sequence of balls inside $$K$$, each containing a bi-Lipschitz copy of $$K$$ that is in turn approximated by a weak tangent supplied by [Theorem 3](#theorem-3). The accumulation point of the nested balls then has a pointwise tangent inheriting the large content, by [upper semicontinuity](https://en.wikipedia.org/wiki/Semicontinuity) of Hausdorff content under the Hausdorff metric. The dense set built this way is $$G_\delta$$ in $$K$$, hence has [packing dimension](https://en.wikipedia.org/wiki/Packing_dimension) equal to $$\dim_{\mathrm{P}} K$$. The uniformly self-embeddable strengthening uses the uniform constant to construct a well-distributed [Cantor](https://en.wikipedia.org/wiki/Cantor_set) subset such that every point has a tangent inheriting the content. A [Frostman](https://en.wikipedia.org/wiki/Frostman_lemma)-type measure on this subset then shows that it has full Hausdorff dimension. &#x25A0;

The example $$K_0$$ is the attractor of a finite affine iterated function system, hence self-embeddable, so the packing-dimension conclusion of [Theorem 4](#theorem-4) applies and the set of points with maximal pointwise Assouad dimension has full packing dimension. The Hausdorff-dimension conclusion is not available here: uniform self-embeddability would force the Hausdorff and upper box dimensions of $$K_0$$ to agree, and they do not. The two columns of $$K_0$$ carry fibres of different dimensions, $$1/2$$ on the left and $$0$$ on the right, and that mismatch pushes the Hausdorff dimension strictly below the box dimension. It remains to ask whether the tangents can be described concretely and, for $$K_0$$, whether every point carries such a tangent or only Hausdorff-typical points do.


## Non-autonomous slices: the symbolic machinery

For a planar self-affine carpet, the geometry near a typical point at small scales is anisotropic: cylinders are exponentially distorted rectangles, and the vertical slice through $$x$$ is *not* a self-similar set. Coding $$x = \pi(\mathtt{i})$$ by an infinite word $$\mathtt{i}$$ in the symbolic space of the iterated function system, one finds that the slice through $$x$$ is the attractor of a *sequence* of iterated function systems, one corresponding to the column visited by $$\mathtt{i}$$ at each depth $$n$$. This is a non-autonomous self-similar set.

{% include theorem.html no="5" theorem="Definition" %}
*A* non-autonomous iterated function system *is a sequence $$(\Phi_n)_{n=1}^\infty$$ in which each $$\Phi_n = \{S_{n, j}\}_{j \in \mathcal{J}_n}$$ is a finite family of similarities $$S_{n, j} \colon \mathbb{R}^d \to \mathbb{R}^d$$ with contraction ratios $$r_{n, j} \in (0, 1)$$, and all these families share an invariant compact set $$X \subset \mathbb{R}^d$$ whose forward orbit shrinks to zero diameter. Its* limit set *is*

$$ K = \bigcap_{n=1}^\infty \bigcup_{(j_1, \ldots, j_n)} S_{1, j_1} \circ \cdots \circ S_{n, j_n}(X). $$

The natural symbolic invariant is $$\theta(n, m)$$, the similarity dimension of the autonomous IFS obtained by composing one map from each of $$\Phi_{n+1}, \ldots, \Phi_{n+m}$$. In the autonomous case the numbers $$\theta(n, m)$$ are all equal and recover the similarity dimension. In the non-autonomous case they record how the local geometry varies with the depth $$n$$ and the block length $$m$$, suggesting the formula $$\lim_{m \to \infty} \sup_n \theta(n, m)$$ for the Assouad dimension. Without further structure, however, this formula can fail: the sizes of the index sets $$\mathcal{J}_n$$ may grow without bound, separation may fail, and contraction ratios may drift towards one. The next definition captures the required bounded-overlap hypothesis.

{% include theorem.html no="6" theorem="Definition" %}
*A non-autonomous IFS satisfies the* bounded neighbourhood condition *if*

$$ \limsup_{r \to 0} \sup_{x \in K} \#\bigl\{Q \in \mathcal{T}(r) : \pi(Q) \cap B(x, r) \neq \emptyset\bigr\} < \infty, $$

*where $$\mathcal{T}(r)$$ denotes the cylinders in the symbolic space whose contraction ratio first drops below $$r$$ and $$\pi$$ is the coding map.*

The bounded neighbourhood condition is the geometric content of the assertion that the coding map $$\pi$$ is *bi-Lipschitz decomposable*, a relaxation of the bi-Lipschitz condition that tolerates the topological obstruction caused by the coding space being totally disconnected.

{% include theorem.html no="7" theorem="Theorem" info="[K-Rutar (2025)](https://doi.org/10.1017/S0305004125000416)" %}
*Let $$(\Phi_n)_{n=1}^\infty$$ be a non-autonomous IFS satisfying the bounded neighbourhood condition, and let $$K$$ be its limit set. Then*

$$ \dim_{\mathrm{A}} K = \lim_{m \to \infty} \sup_{n \in \mathbb{N}} \theta(n, m) = \lim_{m \to \infty} \limsup_{n \to \infty} \theta(n, m) = \inf_{m \in \mathbb{N}} \limsup_{n \to \infty} \theta(n, m). $$

*Sketch.* The proof has three ingredients. First, the bounded neighbourhood condition is equivalent to bi-Lipschitz decomposability of $$\pi$$, so $$\dim_{\mathrm{A}} K = \dim_{\mathrm{A}} \Delta$$, where $$\Delta$$ is the symbolic space with the metric induced by the contraction ratios. Second, the function $$\theta(n, m)$$ satisfies a weakening of subadditivity that we call *submaximality*, $$\theta(n, m + k) \leq \max\{\theta(n, m), \theta(n + m, k)\}$$, plus an explicit continuity bound; a two-parameter Fekete-style lemma converts submaximality into the limit identities above. The third ingredient is a disc-packing reformulation of the Assouad dimension that allows the natural symbolic packings, whose cylinders may have very different diameters, to be compared with the standard equal-radius covers in the definition. &#x25A0;

[Theorem 7](#theorem-7) generalises earlier Assouad-dimension formulas for Moran-type sets due to [Li-Li-Miao-Xi (2016)](https://doi.org/10.48550/arXiv.1404.4409) and [Olson-Robinson-Sharples (2015)](https://doi.org/10.1017/S0305004115000584). The bounded neighbourhood condition is also essentially necessary. For each $$\varepsilon > 0$$, Example 4.5 of [K-Rutar (2025)](https://doi.org/10.1017/S0305004125000416) constructs a non-autonomous IFS on $$[0,1]$$ that satisfies the open set condition, has two branches at every level, and satisfies $$\dim_{\mathrm{A}} K = 1$$ while $$\theta(n, m) \leq \varepsilon$$ for all $$n$$ and $$m$$. Separation is therefore not the missing ingredient. What fails is the uniform bound on the local covering numbers, and the construction lets these numbers diverge as slowly as one likes, so no growth rate can replace boundedness.


## Self-affine carpets: abundance, and its limit

Planar self-affine carpets originally motivated the two preceding results. A *Gatzouras-Lalley carpet* is a self-affine set generated by a finite collection of contractions $$T_i(x, y) = (c_{i, 1} x + d_{i, 1}, c_{i, 2} y + d_{i, 2})$$ whose first-coordinate projections either coincide or are disjoint, with $$c_{i, 1} > c_{i, 2}$$ for every $$i$$. Thus, the rectangles are wider than they are tall, every map contracts vertically more strongly than horizontally, and the horizontal direction is dominant. The example $$K_0$$ is of this type. A *Barański carpet* is the natural generalisation that drops the domination requirement: rectangles may be wider or taller, and the dominant direction of contraction may switch from one orbit to another.

For a Gatzouras-Lalley carpet, every point $$x \in K$$ admits a two-scale description: at small scales, the ball around $$x$$ looks like (a piece of) $$\eta(K)$$ times (a piece of) the vertical slice through $$x$$, up to a uniformly bounded distortion. This is Proposition 3.6 of [K-Rutar (2026)](https://doi.org/10.48550/arXiv.2410.19404), and it requires no separation hypothesis. Strong separation of the horizontal projection $$\eta(K)$$ enters only when this picture is turned into an exact formula, because it rules out points from different columns that come arbitrarily close at small scales. The vertical slice, in turn, is a non-autonomous self-similar set of the form used in [Theorem 7](#theorem-7), with index sequence determined by the column-coding $$\eta(\mathtt{i})$$ of $$x = \pi(\mathtt{i})$$.

{% include theorem.html no="8" theorem="Theorem" info="[K-Rutar (2026)](https://doi.org/10.48550/arXiv.2410.19404)" %}
*Let $$K$$ be a Gatzouras-Lalley carpet whose horizontal projection $$\eta(K)$$ satisfies the strong separation condition. Then for every $$x = \pi(\mathtt{i}) \in K$$,*

$$ \dim_{\mathrm{A}}(K, x) = \max\bigl\{\overline{\dim}_{\mathrm{M}} K, \dim_{\mathrm{H}} \eta(K) + \dim_{\mathrm{A}} K_{\eta(\mathtt{i})}\bigr\}, $$

*where $$K_{\eta(\mathtt{i})}$$ is the non-autonomous slice through $$x$$. Moreover,*

$$ \mathcal{H}^{\dim_{\mathrm{H}} K}\bigl(\bigl\{x \in K : \dim_{\mathrm{A}}(K, x) \neq \dim_{\mathrm{A}} K\bigr\}\bigr) = 0, $$

*and for every $$\alpha \in [\overline{\dim}_{\mathrm{M}} K, \dim_{\mathrm{A}} K]$$, the level set $$\{x \in K : \dim_{\mathrm{A}}(K, x) = \alpha\}$$ has Hausdorff dimension equal to $$\dim_{\mathrm{H}} K$$.*

The first statement is the pointwise formula yielded by the two-scale picture above; the second strengthens the Hausdorff-dimension conclusion of [Theorem 4](#theorem-4). That conclusion is available for self-conformal attractors. The generating maps of a Gatzouras-Lalley system, however, are never conformal because the definition requires $$c_{i, 1} > c_{i, 2}$$. Theorem 8 instead gives a Hausdorff-*measure* statement, and it holds for every non-trivial Gatzouras-Lalley carpet. The third statement goes further: *every* value in the geometrically possible interval, including the maximal pointwise Assouad dimension, is realised on a subset of full Hausdorff dimension. In the example $$K_0$$, the all-left vertical slice is a self-similar Cantor set of dimension $$\log 2/\log 4 = 1/2$$, while the all-right slice is a singleton; orbits that mix visits to the two columns produce slices of intermediate Assouad dimension. By [Theorem 8](#theorem-8), every value of $$\dim_{\mathrm{A}}(K_0, x)$$ in the geometrically possible interval is therefore realised on a subset of $$K_0$$ with full Hausdorff dimension.

The contrast with Barański carpets is sharp.

{% include theorem.html no="9" theorem="Theorem" info="[K-Rutar (2026)](https://doi.org/10.48550/arXiv.2410.19404)" %}
*There exists a Barański carpet $$K$$ such that*

$$ \dim_{\mathrm{H}}\bigl\{x \in K : \dim_{\mathrm{A}}(K, x) = \dim_{\mathrm{A}} K\bigr\} < \dim_{\mathrm{H}} K. $$

Without domination, the dominant contraction direction can switch from one orbit to another, as described in [§2](#a-stratification-of-self-similarity). The maximal Assouad dimension of the carpet is realised only along orbits that contract uniformly in one specific direction, whereas the Hausdorff dimension is realised along orbits that mix the two directions. When the mixing orbits that maximise Hausdorff dimension differ from the uniform-direction orbits that maximise Assouad dimension, the set of points with a maximal tangent has smaller Hausdorff dimension than the carpet. The explicit example behind [Theorem 9](#theorem-9) is a five-column Barański carpet with one wide left column and four narrower columns to its right. The proof shows that, for sufficiently asymmetric column widths, the probability vectors maximising the Hausdorff and Assouad dimensions are different.


## Three directions, three open problems

The contrast between Gatzouras-Lalley and Barański isolates coherence of the dominant contraction direction as the mechanism governing abundance and leads to three open problems.

1. *Dominated self-affine sets.* The Gatzouras-Lalley class is a model case of *domination*: every cylinder has the same dominant contraction direction. In the more general planar self-affine setting, a sequence of contracting matrices is dominated when every long product has a uniform gap between the top two singular values, but the cylinders are no longer axis-aligned rectangles. Does the abundance conclusion of [Theorem 8](#theorem-8) extend to every dominated self-affine set, with or without overlaps? An affirmative answer would identify *domination* itself as the structural property responsible for abundance, with [Theorem 9](#theorem-9) showing optimality among non-dominated systems.

2. *Lower-dimension analogues.* The lower dimension $$\dim_{\mathrm{L}} K$$ is the natural dual of the Assouad dimension: it measures the *best* density of covers at any pair of scales, and, by [Fraser-Howroyd-K-Yu (2019)](https://doi.org/10.1090/proc/14613), is characterised as the *minimum* Hausdorff dimension of a weak tangent. The self-embeddable argument behind [Theorem 4](#theorem-4) does not transfer, because overlaps can *increase* lower dimension; an analogue under uniform self-embeddability or under domination would complete the parallel between the two extremal dimensions of weak tangents.

3. *Pointwise Assouad dimension of measures.* A measure-theoretic analogue of the pointwise Assouad dimension was introduced by [Anttila (2022)](https://doi.org/10.1017/prm.2022.83). For a self-affine measure on a Gatzouras-Lalley carpet, the natural conjecture is that the pointwise Assouad dimension of the measure equals the global Assouad dimension almost everywhere, with a slice formula analogous to [Theorem 8](#theorem-8) in which the column-coding $$\eta(\mathtt{i})$$ plays a central role. Although the paper behind [Theorem 8](#theorem-8) does not pursue this question, conditional measures on slices exhibit the same anisotropy.

Across the three papers, a single Furstenberg-style limit identity leads to a finely graded picture: large pointwise tangents are abundant under domination, whereas abundance can fail at the level of Hausdorff dimension as soon as the dominant direction is allowed to switch. 
