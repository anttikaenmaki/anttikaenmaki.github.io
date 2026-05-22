---
title:  "Tangents and slices, from abstract to carpet"
layout: post
description: How the direction of self-similarity controls abundance of large tangents
---

## Tangents at a point, not just somewhere

A classical perspective on a [fractal](https://en.wikipedia.org/wiki/Fractal) $$K \subseteq \mathbb{R}^d$$ asks what $$K$$ looks like under arbitrary magnification. There is more than one way to make this precise. A *weak tangent* of $$K$$ is a [Hausdorff-metric](https://en.wikipedia.org/wiki/Hausdorff_distance) limit of magnified pieces $$T_k(K) \cap B(0,1)$$ for [similarities](https://en.wikipedia.org/wiki/Similarity_(geometry)) $$T_k$$ whose ratios diverge to infinity, with no constraint on where the windows $$T_k^{-1}(B(0,1))$$ sit; the centres are free to drift through $$K$$ as $$k$$ grows. A *tangent at* $$x \in K$$ is the same kind of limit, but with the similarities forced to be [homotheties](https://en.wikipedia.org/wiki/Homothety) centred at $$x$$. The first object captures the local picture *somewhere* in $$K$$; the second, the local picture *at the prescribed point* $$x$$.

The [Assouad dimension](https://en.wikipedia.org/wiki/Assouad_dimension) of $$K$$ couples cleanly to the first object. A theorem essentially due to [Furstenberg (2008)](https://doi.org/10.1017/S0143385708000084), made explicit in [Käenmäki-Ojala-Rossi (2018)](https://doi.org/10.1093/imrn/rnw336), states that $$\dim_{\mathrm{A}} K$$ equals the maximum [Hausdorff dimension](https://en.wikipedia.org/wiki/Hausdorff_dimension) taken over weak tangents of $$K$$. The dimension records a worst-case scaling ratio anywhere in $$K$$ at any pair of scales, and the weak tangent realises this worst case as a limit object — but the location of the worst case is free to drift, and the theorem says nothing about where in $$K$$ the maximiser is to be found.

So the hook is: can the drift be removed? Is there always a *point* of $$K$$ at which a tangent realises $$\dim_{\mathrm{A}} K$$? For a general compact set the answer is no, by an explicit obstruction of Le Donne-Rajala (2015): there is a set on the line with $$\dim_{\mathrm{A}} K = 1$$ at which every pointwise tangent has Hausdorff dimension zero. The question becomes interesting only when $$K$$ carries dynamical structure.


## A stratification of self-similarity

The trilogy of papers we discuss in this post walks a stratification of dynamical structure on $$K$$ — from the most abstract form of self-embeddability down to concrete planar self-affine carpets — and asks at each stage how the abundance of points with large tangents changes character.

The perspective the trilogy advances is this. The Furstenberg-style theorem locates $$\dim_{\mathrm{A}} K$$ as the dimension of *some* weak tangent. Promoting "some weak tangent" to "a tangent at a typical point" requires more than just [self-similarity](https://en.wikipedia.org/wiki/Self-similarity) in the abstract; it requires self-similarity in a *direction* that is rich enough to populate the fractal with maximal tangents. When the available direction is rich, large tangents are abundant; when the direction can switch from one orbit to another, the abundance can collapse, even on a set of full Hausdorff measure.


## Roadmap

The three papers are, in order: a self-embeddable framework for the pointwise theory in [Käenmäki-Rutar (2023+)](https://doi.org/10.48550/arXiv.2309.11971); a non-autonomous slice machinery in [Käenmäki-Rutar (2025)](https://doi.org/10.1017/S0305004125000416); and an application to planar self-affine carpets in [Käenmäki-Rutar (2024+)](https://doi.org/10.48550/arXiv.2410.19404). The first sets the stage; the second supplies a key technical tool; the third combines them to expose the sensitivity to direction described above.


## Definitions and a concrete example

The right object on the $$K$$-side of the picture is a localised Assouad dimension.

{% include theorem.html no="1" theorem="Definition" %}
*The pointwise Assouad dimension of a compact set $$K \subseteq \mathbb{R}^d$$ at a point $$x \in K$$ is*

$$ \dim_{\mathrm{A}}(K, x) \ = \ \inf\biggl\{s \, : \, \exists \, C, \rho > 0 \ \, \forall \, 0 < r \leq R < \rho, \ \ N_r\bigl(B(x, R) \cap K\bigr) \leq C \Bigl(\frac{R}{r}\Bigr)^s \biggr\}, $$

*where $$N_r(F)$$ is the smallest number of closed balls of radius $$r$$ required to cover the bounded set $$F$$.*

The threshold $$\rho$$ matters: shrinking it kills any irregularity at finitely many scales, so $$\dim_{\mathrm{A}}(K, x)$$ is invariant under [bi-Lipschitz](https://en.wikipedia.org/wiki/Lipschitz_continuity) changes of coordinate near $$x$$. From the definitions, $$\sup\{\overline{\dim}_{\mathrm{M}} F : F \in \mathrm{Tan}(K, x)\} \leq \dim_{\mathrm{A}}(K, x) \leq \dim_{\mathrm{A}} K$$, where $$\mathrm{Tan}(K, x)$$ is the set of pointwise tangents at $$x$$. Both inequalities can be strict, even for compact sets on the line.

To capture the right dynamical hypothesis on $$K$$, we abstract the idea that $$K$$ contains a bi-Lipschitz copy of itself near every point and at every scale.

{% include theorem.html no="2" theorem="Definition" %}
*A compact set $$K \subseteq \mathbb{R}^d$$ is* self-embeddable *if for every $$z \in K$$ and $$0 < r \leq \mathrm{diam}\,K$$, there is a constant $$a = a(z, r) > 0$$ and a function $$f \colon K \to B(z, r) \cap K$$ with*

$$ a r \lvert x - y \rvert \ \leq \ \lvert f(x) - f(y) \rvert \ \leq \ a^{-1} r \lvert x - y \rvert $$

*for all $$x, y \in K$$. It is* uniformly self-embeddable *if $$a$$ can be chosen independently of $$z$$ and $$r$$.*

[Attractors](https://en.wikipedia.org/wiki/Attractor) of finite bi-Lipschitz iterated function systems are self-embeddable, with no separation hypothesis on the maps. Attractors of finite self-conformal iterated function systems are uniformly self-embeddable, again without separation.

<!-- recurring example: 3-rectangle Gatzouras-Lalley carpet K_* on R^2 -->

For an illustrative example, fix the [iterated function system](https://en.wikipedia.org/wiki/Iterated_function_system) on $$[0,1]^2$$ generated by the three affine maps $$T_A(x, y) = (x/3, y/4)$$, $$T_B(x, y) = (x/3, y/4 + 3/4)$$, and $$T_C(x, y) = (x/3 + 2/3, y/2)$$. The attractor $$K_*$$ is a planar [self-affine](https://en.wikipedia.org/wiki/Self-similarity#Self-affinity) set with two non-empty columns: a "left" column at $$x$$-coordinate in $$[0, 1/3]$$ that contains two stacked rectangles, and a "right" column at $$x$$-coordinate in $$[2/3, 1]$$ that contains a single rectangle. Each generating map is a strict contraction with strictly larger horizontal than vertical contraction ratio. The set $$K_*$$ will reappear in three different roles below.


## Self-embeddable sets: the abstract abundance theorem

For a general compact set $$K$$ with $$\alpha = \dim_{\mathrm{A}} K$$, the Furstenberg-style characterisation produces a weak tangent of Hausdorff dimension $$\alpha$$. By a density argument for [Hausdorff content](https://en.wikipedia.org/wiki/Hausdorff_dimension#Hausdorff_content), one can sharpen this without any additional hypothesis on $$K$$.

{% include theorem.html no="3" theorem="Theorem" info="[Käenmäki-Rutar (2023+)](https://doi.org/10.48550/arXiv.2309.11971)" %}
*Let $$K$$ be a non-empty compact set with $$\alpha = \dim_{\mathrm{A}} K$$. Then there is a weak tangent $$F$$ of $$K$$ with $$\mathcal{H}_\infty^\alpha(F) \geq 1$$.*

The leverage that this gives is the following. Once one has *a* weak tangent of full Hausdorff $$\alpha$$-content, the density theorem for Hausdorff content lets one feed it back into the construction at every point in $$K$$ where the set looks like a bi-Lipschitz copy of itself.

{% include theorem.html no="4" theorem="Theorem" info="[Käenmäki-Rutar (2023+)](https://doi.org/10.48550/arXiv.2309.11971)" %}
*Let $$K \subseteq \mathbb{R}^d$$ be compact and self-embeddable, and write $$\alpha = \dim_{\mathrm{A}} K$$. Then there is a dense set of points $$x \in K$$ for which there exists $$F \in \mathrm{Tan}(K, x)$$ with $$\mathcal{H}_\infty^\alpha(F) \geq 2^{-\alpha}$$. In particular,*

$$ \dim_{\mathrm{P}}\{x \in K : \dim_{\mathrm{A}}(K, x) = \dim_{\mathrm{A}} K\} \ = \ \dim_{\mathrm{P}} K. $$

*If $$K$$ is moreover uniformly self-embeddable, then for some constant $$c > 0$$,*

$$ \dim_{\mathrm{H}}\{x \in K : \exists \, F \in \mathrm{Tan}(K, x) \text{ with } \mathcal{H}_\infty^\alpha(F) \geq c\} \ = \ \dim_{\mathrm{H}} K. $$

*Sketch.* For the packing-dimension half, iterate self-embeddability to nest a sequence of balls inside $$K$$, each containing a bi-Lipschitz copy of $$K$$ that is in turn approximated by a weak tangent supplied by [Theorem 3](#theorem-3). The accumulation point of the nested balls then has a pointwise tangent inheriting the large content, by [upper semicontinuity](https://en.wikipedia.org/wiki/Semicontinuity) of Hausdorff content under the Hausdorff metric. The dense set built this way is $$G_\delta$$ in $$K$$, hence has [packing dimension](https://en.wikipedia.org/wiki/Packing_dimension) equal to $$\dim_{\mathrm{P}} K$$. The uniformly self-embeddable strengthening uses the uniform constant to construct an entire well-distributed [Cantor](https://en.wikipedia.org/wiki/Cantor_set) subset of points each of whose tangents inherits the content, and a [Frostman](https://en.wikipedia.org/wiki/Frostman_lemma)-type measure on it has full Hausdorff dimension. &#x25A0;

The example $$K_*$$ is uniformly self-embeddable (one can check this directly from the affine structure), so [Theorem 4](#theorem-4) applies and provides a subset of full Hausdorff dimension in $$K_*$$ whose points carry a tangent with positive $$\mathcal{H}^{\dim_{\mathrm{A}} K_*}$$-content. The downstream question that we now turn to is whether one can describe the geometry of those tangents in any concrete terms — and at $$K_*$$ specifically, whether *every* point carries such a tangent, or only a Hausdorff-typical one.


## Non-autonomous slices: the symbolic machinery

For a planar self-affine carpet, the geometry near a typical point at small scales is anisotropic: cylinders are exponentially distorted rectangles, and the vertical slice through $$x$$ is *not* a self-similar set. Coding $$x = \pi(\gamma)$$ by an infinite word $$\gamma$$ in the symbolic space of the iterated function system, one finds that the slice through $$x$$ is the attractor of a *sequence* of iterated function systems — one for each column visited by $$\gamma$$ as $$n$$ ranges over the depth. This is a non-autonomous self-similar set.

{% include theorem.html no="5" theorem="Definition" %}
*A **non-autonomous iterated function system** is a sequence $$(\Phi_n)_{n=1}^\infty$$ where each $$\Phi_n = \{S_{n, j}\}_{j \in \mathcal{J}_n}$$ is a finite family of similarities $$S_{n, j} \colon \mathbb{R}^d \to \mathbb{R}^d$$ with contraction ratios $$r_{n, j} \in (0, 1)$$, sharing an invariant compact set $$X \subset \mathbb{R}^d$$ whose forward orbit shrinks to zero diameter. Its **limit set** is*

$$ K \ = \ \bigcap_{n=1}^\infty \bigcup_{(j_1, \ldots, j_n)} S_{1, j_1} \circ \cdots \circ S_{n, j_n}(X). $$

The natural symbolic invariant is $$\theta(n, m)$$, the similarity dimension of the autonomous IFS obtained by composing one map from each of $$\Phi_{n+1}, \ldots, \Phi_{n+m}$$. In the autonomous case the numbers $$\theta(n, m)$$ are all equal and recover the similarity dimension. In the non-autonomous case they record how the local geometry varies with the depth $$n$$ and the length $$m$$ of the block, and one would like the natural symbolic guess $$\lim_m \sup_n \theta(n, m)$$ for the Assouad dimension to hold. Without further structure it cannot: the sizes of the index sets $$\mathcal{J}_n$$ may explode, separation may fail, contraction ratios may drift towards one. The correct unifying hypothesis is *bounded overlap*, captured by the next definition.

{% include theorem.html no="6" theorem="Definition" %}
*A non-autonomous IFS satisfies the **bounded neighbourhood condition** if*

$$ \limsup_{r \to 0} \sup_{x \in K} \#\bigl\{Q \in \mathcal{T}(r) : \pi(Q) \cap B(x, r) \neq \varnothing\bigr\} \ < \ \infty, $$

*where $$\mathcal{T}(r)$$ denotes the cylinders in the symbolic space whose contraction ratio first drops below $$r$$ and $$\pi$$ is the coding map.*

The bounded neighbourhood condition is the geometric content of the assertion that the coding map $$\pi$$ is *bi-Lipschitz decomposable* — a relaxation of the bi-Lipschitz condition that tolerates the topological obstruction caused by the coding space being totally disconnected.

{% include theorem.html no="7" theorem="Theorem" info="[Käenmäki-Rutar (2025)](https://doi.org/10.1017/S0305004125000416)" %}
*Let $$(\Phi_n)_{n=1}^\infty$$ be a non-autonomous IFS satisfying the bounded neighbourhood condition, and let $$K$$ be its limit set. Then*

$$ \dim_{\mathrm{A}} K \ = \ \lim_{m \to \infty} \sup_{n \in \mathbb{N}} \theta(n, m) \ = \ \lim_{m \to \infty} \limsup_{n \to \infty} \theta(n, m) \ = \ \inf_{m \in \mathbb{N}} \limsup_{n \to \infty} \theta(n, m). $$

*Sketch.* Three ingredients combine. First, the bounded neighbourhood condition is equivalent to bi-Lipschitz decomposability of $$\pi$$, so $$\dim_{\mathrm{A}} K = \dim_{\mathrm{A}} \Delta$$, where $$\Delta$$ is the symbolic space with the metric induced by the contraction ratios. Second, the function $$\theta(n, m)$$ satisfies a weakening of subadditivity that we call *submaximality*, $$\theta(n, m + k) \leq \max\{\theta(n, m), \theta(n + m, k)\}$$, plus an explicit continuity bound; a two-parameter Fekete-style lemma converts submaximality into the limit identities above. Third, one needs a disc-packing reformulation of the Assouad dimension that allows the natural symbolic packings — whose cylinders may have very different diameters — to be compared to the standard equal-radius covers in the definition. &#x25A0;

[Theorem 7](#theorem-7) generalises previously known Assouad-dimension formulas for Moran-type sets due to Li-Li-Miao-Xi and to [Olson-Robinson-Sharples (2015)](https://doi.org/10.1017/S0305004115000584). The bounded neighbourhood condition is also essentially necessary: a companion construction in our recent paper exhibits a non-autonomous IFS satisfying the open set condition with $$\dim_{\mathrm{A}} K = 1$$ but $$\theta(n, m) \leq \varepsilon$$ for every $$n, m$$ and arbitrary $$\varepsilon > 0$$, showing that no symbolic formula can hold without controlling overlaps.


## Self-affine carpets: abundance, and its limit

We now combine the two preceding results on the planar self-affine carpets where they were originally needed. A *Gatzouras-Lalley carpet* is a self-affine set generated by a finite collection of contractions $$T_i(x, y) = (c_{i, 1} x + d_{i, 1}, c_{i, 2} y + d_{i, 2})$$ whose first-coordinate projections either coincide or are disjoint, with $$c_{i, 1} > c_{i, 2}$$ for every $$i$$ — the rectangles are wider than they are tall, so contraction is dominated in the vertical direction. The example $$K_*$$ is of this type. A *Barański carpet* is the natural generalisation that drops the domination requirement: rectangles may be wider or taller, and the dominant direction of contraction may switch from one orbit to another.

For a Gatzouras-Lalley carpet, when the projection $$\eta(K)$$ onto the horizontal axis satisfies the strong separation condition, every point $$x \in K$$ admits a clean two-scale picture: at small scales, the ball around $$x$$ looks like (a piece of) $$\eta(K)$$ times (a piece of) the vertical slice through $$x$$, up to a uniformly bounded distortion. The vertical slice in turn is a non-autonomous self-similar set of the form fed into [Theorem 7](#theorem-7), with index sequence determined by the column-coding $$\eta(\gamma)$$ of $$x = \pi(\gamma)$$.

{% include theorem.html no="8" theorem="Theorem" info="[Käenmäki-Rutar (2024+)](https://doi.org/10.48550/arXiv.2410.19404)" %}
*Let $$K$$ be a Gatzouras-Lalley carpet whose horizontal projection $$\eta(K)$$ satisfies the strong separation condition. Then for every $$x = \pi(\gamma) \in K$$,*

$$ \dim_{\mathrm{A}}(K, x) \ = \ \max\bigl\{\overline{\dim}_{\mathrm{M}} K, \ \dim_{\mathrm{H}} \eta(K) + \dim_{\mathrm{A}} K_{\eta(\gamma)}\bigr\}, $$

*where $$K_{\eta(\gamma)}$$ is the non-autonomous slice through $$x$$. Moreover,*

$$ \mathcal{H}^{\dim_{\mathrm{H}} K}\bigl(\bigl\{x \in K : \dim_{\mathrm{A}}(K, x) \neq \dim_{\mathrm{A}} K\bigr\}\bigr) \ = \ 0, $$

*and for every $$\alpha \in [\overline{\dim}_{\mathrm{M}} K, \dim_{\mathrm{A}} K]$$, the level set $$\{x \in K : \dim_{\mathrm{A}}(K, x) = \alpha\}$$ has Hausdorff dimension equal to $$\dim_{\mathrm{H}} K$$.*

The first statement is the pointwise formula promised by the structure theorem for self-affine carpets; the second is a strengthening of the uniformly-self-embeddable abundance result of [Theorem 4](#theorem-4) from the Hausdorff-*dimension* version (which holds for self-conformal sets and so, formally, only for self-similar carpets) to the Hausdorff-*measure* version (which holds for every non-trivial Gatzouras-Lalley carpet). The third statement is the surprise: not only is the maximal pointwise Assouad dimension realised on a Hausdorff-typical set, but *every* value in the geometrically possible interval is realised on a full-Hausdorff-dimension subset. In the example $$K_*$$, the all-left vertical slice is a self-similar Cantor set of dimension $$\log 2/\log 4 = 1/2$$, while the all-right slice is a singleton; orbits that mix the two column visits produce slices of intermediate Assouad dimension. By [Theorem 8](#theorem-8), every value of $$\dim_{\mathrm{A}}(K_*, x)$$ in the geometrically possible interval is then realised on a Hausdorff-dimension-full subset of $$K_*$$.

The contrast with Barański carpets is sharp.

{% include theorem.html no="9" theorem="Theorem" info="[Käenmäki-Rutar (2024+)](https://doi.org/10.48550/arXiv.2410.19404)" %}
*There exists a Barański carpet $$K$$ such that*

$$ \dim_{\mathrm{H}}\bigl\{x \in K : \dim_{\mathrm{A}}(K, x) = \dim_{\mathrm{A}} K\bigr\} \ < \ \dim_{\mathrm{H}} K. $$

The mechanism is the one foreshadowed in the perspective of [§2](#a-stratification-of-self-similarity). Without domination, the dominant contraction direction can switch from one orbit to another. The maximal Assouad dimension of the carpet is realised only along orbits that contract uniformly in one specific direction, but the Hausdorff dimension of the carpet is realised along orbits that mix the two directions. When the dimensionally typical mixing orbits are not the dimensionally-maximal uniform-direction orbits, the set of points with a maximal tangent is dimensionally small. The explicit example in our recent paper is a five-column Barański carpet with one wide left column and four narrower columns to its right, and the proof shows that the two relevant variational problems — the maximum Hausdorff dimension and the maximum Assouad dimension — are maximised by different probability vectors when the column widths are chosen sufficiently asymmetrically.


## Three directions, three open problems

The contrast between Gatzouras-Lalley and Barański is the most informative outcome of the trilogy, and it raises several questions that are clean to state but currently out of reach.

*Dominated self-affine sets.* The Gatzouras-Lalley class is a model case of *domination*: every cylinder has the same dominant contraction direction. There is a more general planar self-affine setting in which a sequence of contracting matrices is dominated — every long product has a uniform gap between top two singular values — but the cylinders are no longer axis-aligned rectangles. Does the abundance conclusion of [Theorem 8](#theorem-8) extend to every dominated self-affine set, with or without overlaps? An affirmative answer would identify *domination* itself as the structural property responsible for abundance, with [Theorem 9](#theorem-9) showing optimality among non-dominated systems.

*Lower-dimension analogues.* The lower dimension $$\dim_{\mathrm{L}} K$$ is the natural dual of the Assouad dimension: it measures the *best* density of covers at any pair of scales, and is characterised as the *minimum* Hausdorff dimension of a weak tangent. The self-embeddable argument behind [Theorem 4](#theorem-4) does not transfer, because overlaps can *increase* lower dimension; an analogue under uniform self-embeddability or under domination would close the symmetry between the two extremal dimensions of weak tangents.

*Pointwise Assouad dimension of measures.* A measure-theoretic analogue of the pointwise Assouad dimension was introduced by Anttila. For a self-affine measure on a Gatzouras-Lalley carpet, the natural conjecture is that the pointwise Assouad dimension of the measure equals the global Assouad dimension almost everywhere, with a slice formula analogous to [Theorem 8](#theorem-8) and a critical role for the column-coding $$\eta(\gamma)$$. We do not pursue this in our recent paper, but the same anisotropy mechanism is visible in the way conditional measures on slices behave.


## A direction-sensitive picture

The trilogy turns a single Furstenberg-style limit identity into a finely graded picture: large pointwise tangents are abundant under domination, and abundance can fail dimensionally as soon as the dominant direction is allowed to switch. The structural lesson cuts across the three papers — and across the gap between abstract self-embeddability and concrete self-affinity. Where can the same lesson be told for other fractals with a preferred direction of contraction?
