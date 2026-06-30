---
title:  "How wild can projections of Assouad-type dimensions be?"
layout: post
description: The Marstrand-Mattila projection theorem for Assouad-type dimensions
---

## A line of questions Marstrand did not answer

The Marstrand–Mattila projection theorem is one of the cleanest statements in [geometric measure theory](https://en.wikipedia.org/wiki/Geometric_measure_theory): the [Hausdorff dimension](https://en.wikipedia.org/wiki/Hausdorff_dimension) of an [orthogonal projection](https://en.wikipedia.org/wiki/Projection_(linear_algebra)) of a [Borel set](https://en.wikipedia.org/wiki/Borel_set) is the maximum it can be, [almost everywhere](https://en.wikipedia.org/wiki/Almost_everywhere).

{% include theorem.html no="1" theorem="Theorem" info="Marstrand (1954) and Mattila (1975)" %}
*Let $$X \subseteq \mathbb{R}^d$$ be a Borel set, and let $$1 \leq k < d$$ be an integer. Then*

$$ \dim_{\mathrm{H}} \mathrm{proj}_V X \ = \ \min\{k, \dim_{\mathrm{H}} X\} $$

*for $$\gamma_{d,k}$$-almost every $$k$$-dimensional subspace $$V$$ of $$\mathbb{R}^d$$, where $$\gamma_{d,k}$$ is the [rotation-invariant probability measure](https://en.wikipedia.org/wiki/Haar_measure) on the [Grassmannian](https://en.wikipedia.org/wiki/Grassmannian) $$G(d,k)$$.*

The same picture survives, in a more nuanced form, for [box](https://en.wikipedia.org/wiki/Minkowski%E2%80%93Bouligand_dimension) and [packing](https://en.wikipedia.org/wiki/Packing_dimension) dimensions: the projected dimension is again almost surely constant, with the constant computed from a *dimension profile* of $$X$$ rather than from the dimension itself. So for every classical notion of [fractal dimension](https://en.wikipedia.org/wiki/Fractal_dimension) we know, there is *some* Marstrand-type theorem: the projection function $$V \mapsto \dim \, \mathrm{proj}_V X$$ has an almost-everywhere value, and that value is determined by an intrinsic invariant of $$X$$.

For the [Assouad dimension](https://en.wikipedia.org/wiki/Assouad_dimension), no such theorem exists. [Fraser–Orponen (2017)](https://doi.org/10.48550/arXiv.1509.01128) showed that the Assouad dimension of a planar projection can take two distinct values on direction sets of positive measure. The question this leaves open is the obvious one: *how wild can the Assouad-projection function be?* And once that question is settled, the same question returns for the Assouad spectrum — the one-parameter family of dimensions $$\dim_{\mathrm{A}}^\theta X$$ that interpolates between the upper box dimension at $$\theta = 0$$ and the quasi-Assouad dimension as $$\theta \uparrow 1$$. As a concrete example to keep in mind throughout this post, fix the sparse sequence

$$ Z \ = \ \{0\} \cup \{2^{-i} : i \in \mathbb{N}\} \ \subset \ \mathbb{R}. $$

This set has Assouad dimension zero, and a scaled copy of $$Z$$ will be the universal "thin" building block in everything that follows.



## Wild or tame, depending on what you ask

The answer turns out to have three regimes, and they form the perspective behind this post.

For the *Assouad dimension on compact planar sets* the answer is *maximally wild*: every reasonable function on the Grassmannian is realisable as the projection function of some compact set. This is the headline result of [our earlier paper](https://doi.org/10.48550/arXiv.1811.00951), joint with [Jonathan Fraser](https://jonathan-fraser.github.io/homepage/).

For the *Assouad spectrum on bounded planar sets* the answer is *constrained*: a tube-counting estimate forces the spectrum of projections to be bounded above by an intrinsic quantity, ruling out wildness above the ambient dimension. This is the surprise of [our recent paper](https://doi.org/10.48550/arXiv.2606.28830) with [Kenneth Falconer](https://kennethfalconer.github.io/) and Jonathan Fraser.

For the *Assouad spectrum on unbounded sets* the wildness returns in full: one can prescribe the projected spectrum on open sets of directions, even simultaneously for every interpolation parameter $$\theta$$.

The dichotomy that organizes these three regimes is not between dimensions, but between *which sets* we allow. The Assouad spectrum is genuinely better-behaved than the Assouad dimension only when we restrict attention to bounded sets. As soon as boundedness is dropped, the spectrum is just as wild as the dimension. Our two papers together draw exactly this line.



## Two notions of wildness

The Assouad dimension measures the *worst* local-to-global scaling ratio of covering numbers: for $$X \subseteq \mathbb{R}^d$$,

$$ \dim_{\mathrm{A}} X = \inf \biggl\{ \alpha : \sup_{\genfrac{}{}{0pt}{}{x \in X}{0 < r < R}} \frac{N_r(X \cap B(x,R))}{(R/r)^\alpha} < \infty \biggr\}, $$

where $$N_r$$ denotes the smallest number of closed balls of radius $$r$$ needed to cover. Unlike the Hausdorff and box dimensions, this need not match the *global* covering rate, and unlike them, it is not [Lipschitz](https://en.wikipedia.org/wiki/Lipschitz_continuity)-stable: a Lipschitz image of $$X$$ can have strictly larger Assouad dimension than $$X$$. That instability is why the simple Lipschitz argument behind the upper bound in [Theorem 1](#theorem-1) breaks down for the Assouad dimension.

The set $$Z = \{0\} \cup \{2^{-i}\}$$ is a clean illustration. As a [metric space](https://en.wikipedia.org/wiki/Metric_space) it is [countable](https://en.wikipedia.org/wiki/Countable_set), so its Hausdorff dimension is zero. Its Assouad dimension is also zero: zooming into the gap between consecutive points of $$Z$$ near the origin gives the same picture at every scale, so the covering ratio stays bounded by a constant. The set $$Z$$ is the canonical low-dimensional sequence, and exactly because of that, it will keep appearing inside thin tubes and along long sides of bricks throughout this post.

The Assouad spectrum locks the two scales together. For $$\theta \in (0,1)$$, the *Assouad spectrum* of $$X$$ at $$\theta$$ is

$$ \dim_{\mathrm{A}}^\theta X = \inf \biggl\{ \alpha : \sup_{\genfrac{}{}{0pt}{}{x \in X}{0 < R < 1}} \frac{N_{R^{1/\theta}}(X \cap B(x,R))}{(R/R^{1/\theta})^\alpha} < \infty \biggr\}, $$

and the *quasi-Assouad dimension* is the limit $$\dim_{\mathrm{qA}} X = \lim_{\theta \uparrow 1} \dim_{\mathrm{A}}^\theta X$$. By [Fraser–Hare–Hare–Troscheit–Yu (2019)](https://doi.org/10.48550/arXiv.1804.09607), this limit definition agrees with the original definition of [Lü–Xi (2016)](https://doi.org/10.48550/arXiv.1409.2070). At $$\theta = 0$$ the spectrum recovers the upper box dimension; at $$\theta = 1$$ it limits to the quasi-Assouad dimension; and one always has

$$ \overline{\dim}_{\mathrm{M}} X \leq \dim_{\mathrm{A}}^\theta X \leq \min\biggl\{ \frac{\overline{\dim}_{\mathrm{M}} X}{1-\theta},\, \dim_{\mathrm{qA}} X\biggr\}. $$

The leftmost bound and the $$\overline{\dim}_{\mathrm{M}} X / (1-\theta)$$ bound follow directly from the definition; the quasi-Assouad bound follows from monotonicity of the spectrum in $$\theta$$. The spectrum is bi-Lipschitz invariant. It is the natural object to consider once one accepts that the Assouad dimension can blow up under Lipschitz maps but wants a one-parameter family that still degrades gracefully.



## Assouad dimension: every wishful projection function is realisable

The first movement is the Assouad-dimension extreme. In [our earlier paper](https://doi.org/10.48550/arXiv.1811.00951), joint with Jonathan Fraser, we showed that the Assouad-projection function of a compact planar set can match any *[upper semi-continuous](https://en.wikipedia.org/wiki/Semicontinuity)* prescription.

{% include theorem.html no="2" theorem="Theorem" info="[Fraser-K (2023)](https://doi.org/10.48550/arXiv.1811.00951)" %}
*Let $$\phi \colon G(2,1) \to [0,1]$$ be upper semi-continuous. Then there exists a compact set $$X \subset \mathbb{R}^2$$ with $$\dim_{\mathrm{A}} X = 0$$ such that*

$$ \dim_{\mathrm{A}} \mathrm{proj}_V X = \phi(V) $$

*for all $$V \in G(2,1)$$.*

Reading [Theorem 2](#theorem-2) takes a moment. The compact set $$X$$ itself has Assouad dimension zero, yet its projection onto a generic line can have any value in $$[0,1]$$ — and that value can change with the direction in any way an upper semi-continuous function is allowed to change. Two immediate consequences settle a question of [Fraser–Orponen (2017)](https://doi.org/10.48550/arXiv.1509.01128) on how many distinct projected values are simultaneously possible.

{% include theorem.html no="3" theorem="Corollary" info="[Fraser-K (2023)](https://doi.org/10.48550/arXiv.1811.00951)" %}
*Let $$E \subseteq [0,1]$$ be finite or countable. Then there exists a compact set $$X \subset \mathbb{R}^2$$ such that*

$$ \gamma_{2,1}\bigl( \{ V \in G(2,1) : \dim_{\mathrm{A}} \mathrm{proj}_V X = s \} \bigr) > 0 $$

*for every $$s \in E$$. Moreover, there exists a compact set $$X \subset \mathbb{R}^2$$ such that*

$$ \#\{ V \in G(2,1) : \dim_{\mathrm{A}} \mathrm{proj}_V X = s \} \leq 1 $$

*for every $$s \in [0,1]$$.*

The first half of [Corollary 3](#corollary-3) takes a step function for $$\phi$$ and applies [Theorem 2](#theorem-2); the second half takes a strictly monotone $$\phi$$ that injects $$G(2,1)$$ into $$[0,1]$$. Either way, the conclusion is that no Marstrand-type theorem is even *formulable* for the Assouad dimension of compact planar sets: there is no intrinsic invariant to feed into the right-hand side, because every reasonable right-hand side already appears.

*Proof sketch.* The construction packs scaled, stretched and rotated copies of a single template — a finite approximation of a [self-similar](https://en.wikipedia.org/wiki/Self-similarity) [Cantor set](https://en.wikipedia.org/wiki/Cantor_set) of dimension $$s = \phi(V)$$, paired with a scaled copy of our example $$Z$$ as its "thin" axis — along the graph of $$x \mapsto x^2$$. The parabola gives enough room between the copies that distinct copies do not interfere with each other under projection. For each direction $$V$$, a countable dense subset $$\Pi \subset G(2,1)$$ supplies a sequence of copies whose long axis is asymptotically aligned with $$V$$. Projecting onto $$V$$, the long axes nearly collapse and what remains looks, after rescaling, like an approximation to a self-similar set of dimension $$\phi(V)$$. A weak tangent argument, using [Mackay–Tyson (2010)](https://doi.org/10.1090/ulect/054) for the lower bound, converts this into the assertion $$\dim_{\mathrm{A}} \mathrm{proj}_V X \geq \phi(V)$$. The upper bound is the harder direction, and it is where upper semi-continuity enters: a transverse direction sees only $$Z$$ and contributes zero, while a near-aligned direction sees an approximation to a set of dimension at most $$\limsup_k \phi(V_k) \leq \phi(V)$$. &#x25A0;

The takeaway is brutal but clean. For the Assouad dimension on compact planar sets, the projection function can be essentially anything an upper semi-continuous function allows. The very question Marstrand answered for Hausdorff dimension — *what value does the projected dimension take almost everywhere?* — is degenerate here.



## The Assouad spectrum on bounded sets: tubes constrain the wildness

The second regime is the surprise of [our recent paper](https://doi.org/10.48550/arXiv.2606.28830) with Kenneth Falconer and Jonathan Fraser. For the Assouad *spectrum* of bounded planar sets, the wildness from [Theorem 2](#theorem-2) is no longer possible. There is a quantitative tube-counting bound.

{% include theorem.html no="4" theorem="Theorem" info="[Falconer-Fraser-K (2026+)](https://doi.org/10.48550/arXiv.2606.28830)" %}
*Let $$X \subset \mathbb{R}^2$$ be bounded and $$\theta \in (0,1)$$. Then*

$$ \dim_{\mathrm{A}}^\theta \mathrm{proj}_V X \leq \frac{1}{2} \biggl( \frac{\overline{\dim}_{\mathrm{M}} X}{1-\theta} + \dim_{\mathrm{A}}^\theta X \biggr) $$

*for $$\gamma_{2,1}$$-almost every $$V \in G(2,1)$$.*

The trivial bound from the definition of the spectrum is the right-hand side without the averaging — namely $$\overline{\dim}_{\mathrm{M}} X / (1-\theta)$$. So [Theorem 4](#theorem-4) only adds new information when $$\dim_{\mathrm{A}}^\theta X < \overline{\dim}_{\mathrm{M}} X / (1-\theta)$$, in which case it strictly improves the trivial bound by averaging with the ambient spectrum. A concrete consequence: if $$X$$ is bounded, $$\theta \in (0,\tfrac23)$$, and $$\dim_{\mathrm{A}}^\theta X < \varepsilon$$, then $$\dim_{\mathrm{A}}^\theta \mathrm{proj}_V X \leq 2\varepsilon$$ almost surely. The almost-sure spectrum of a projection cannot be large unless the ambient set has comparable spectrum to begin with — a behaviour ruled out by [Theorem 2](#theorem-2) for the Assouad dimension, even on compact sets.

*Proof sketch.* The argument is incidence-geometric. Assume for contradiction that the spectrum of $$\mathrm{proj}_V X$$ exceeds the bound above on a positive-measure set of directions $$V$$. For each such $$V$$ there are scales $$R$$ and balls $$B(x_V, R) \subset V$$ where the projected set is unusually concentrated — that is, contains many points at scale $$R^{1/\theta}$$. Pull these balls back to thin *tubes* in the plane: tubes of width $$R^{1/\theta}$$ and length $$R$$, each meeting $$X$$ in a separated cluster of points. A maximal $$R^\beta$$-separated subset of the bad directions yields a family of such tubes, and the angular separation forces the pairwise tube intersections to be small. An incidence counting argument extracts a large $$R^{1/\theta}$$-separated subset of $$X$$ from the union of clusters, after discarding overlap. The crux is that the resulting global $$R^{1/\theta}$$-separated set in $$X$$ is large enough to force $$\overline{\dim}_{\mathrm{M}} X$$ above what the hypothesis allowed. Boundedness enters at exactly the last step: it lets us convert separation inside tubes into separation in the ambient $$X$$, and hence into a lower bound for the global covering number. &#x25A0;

The tube-counting argument also yields a more refined exceptional-set estimate: for each $$\alpha \in [0,1)$$, the Hausdorff dimension of directions with spectrum above $$(1+\alpha)^{-1} ( \overline{\dim}_{\mathrm{M}} X / (1-\theta) + \alpha \dim_{\mathrm{A}}^\theta X)$$ is at most $$\alpha$$.

A consequence of [Theorem 4](#theorem-4) is a non-trivial generic upper bound for the Assouad spectrum of certain parametrised self-similar sets in the line, obtained by realising them as projections of a planar self-similar set. For three translations $$\mathbf{b} = (b_1, b_2, b_3) \in \mathbb{R}^3$$ and a contraction ratio $$r \in (0, \tfrac12)$$, the self-similar set $$F_{\mathbf{b}} \subset \mathbb{R}$$ generated by $$f_i(x) = rx + b_i$$ has similarity dimension $$s = \log 3 / \log(1/r)$$ and satisfies

$$ \dim_{\mathrm{A}}^\theta F_{\mathbf{b}} \leq \frac{1}{2}\biggl( \frac{s}{1-\theta} + s\biggr) $$

for [Lebesgue](https://en.wikipedia.org/wiki/Lebesgue_measure)-almost every $$\mathbf{b}$$. This beats the trivial bound $$s/(1-\theta)$$ whenever $$\theta \in (0,1)$$, and provides non-trivial quantitative generic evidence for the conjecture that $$\dim_{\mathrm{qA}} K = \dim_{\mathrm{H}} K$$ for self-similar sets on the line; see Question 17.5.3 in [Fraser's (2021)](https://doi.org/10.1017/9781108778459).

The matching almost-sure *lower* bound runs through capacities. For $$0 < s \leq d$$, the *$$s$$-energy kernel* $$\phi_r^s(x) = \min\{1, (r/\lvert x\rvert)^s\}$$ on $$\mathbb{R}^d$$ generates a capacity $$C_r^s$$, and Falconer (2021) showed that the upper box dimension can be re-cast in terms of $$C_r^s$$ rather than $$N_r$$. The same substitution works for the spectrum, giving a *spectrum dimension profile* $$\dim_{\mathrm{A}}^{\theta,k} X$$, the supremum of exponents $$\alpha$$ such that $$C_{R^{1/\theta}}^k(X \cap B(x,R)) \geq c (R/R^{1/\theta})^\alpha$$ uniformly. A standard [Markov](https://en.wikipedia.org/wiki/Markov%27s_inequality)-and-[Borel–Cantelli](https://en.wikipedia.org/wiki/Borel%E2%80%93Cantelli_lemma) argument then yields the projection counterpart.

{% include theorem.html no="5" theorem="Theorem" info="[Falconer-Fraser-K (2026+)](https://doi.org/10.48550/arXiv.2606.28830)" %}
*Let $$X \subset \mathbb{R}^d$$, $$\theta \in (0,1)$$, and $$1 \leq k < d$$ be an integer. Then*

$$ \dim_{\mathrm{A}}^\theta \mathrm{proj}_V X \geq \dim_{\mathrm{A}}^{\theta,k} X $$

*for $$\gamma_{d,k}$$-almost every $$V \in G(d,k)$$.*

Letting $$\theta \uparrow 1$$ in [Theorem 5](#theorem-5) pushes the lower bound to the endpoint, producing an explicit bound for the quasi-Assouad dimension of a projection in terms of the quasi-Assouad dimension of $$X$$ alone.

{% include theorem.html no="6" theorem="Corollary" info="[Falconer-Fraser-K (2026+)](https://doi.org/10.48550/arXiv.2606.28830)" %}
*Let $$X \subset \mathbb{R}^d$$ and $$1 \leq k < d$$ be an integer. Then*

$$ \dim_{\mathrm{qA}} \mathrm{proj}_V X \ \geq \ \frac{\dim_{\mathrm{qA}} X}{1 + \bigl( \frac{1}{k} - \frac{1}{d} \bigr) \dim_{\mathrm{qA}} X} $$

*for $$\gamma_{d,k}$$-almost every $$V \in G(d,k)$$.*

[Theorem 4](#theorem-4) and [Theorem 5](#theorem-5) form an upper-lower sandwich, but it is loose: the two bounds do not match. Whether the almost-sure value of $$\dim_{\mathrm{A}}^\theta \mathrm{proj}_V X$$ is exactly $$\dim_{\mathrm{A}}^{\theta,k} X$$ for bounded $$X$$ — the genuine Marstrand-type statement — remains open.



## Unbounded sets: the spectrum is wild again

The third regime undoes the second. Drop boundedness, and the constraint from [Theorem 4](#theorem-4) evaporates. The construction underlying the next theorem is essentially a higher-resolution version of the one used in [Theorem 2](#theorem-2), made to fit the more delicate scale-relation of the spectrum.

{% include theorem.html no="7" theorem="Theorem" info="[Falconer-Fraser-K (2026+)](https://doi.org/10.48550/arXiv.2606.28830)" %}
*Let $$0 < s < t \leq 1$$. There exists a uniformly discrete unbounded set $$X \subseteq \mathbb{R}^2$$ and non-empty disjoint open sets $$I_s, I_t \subseteq G(2,1)$$ such that, simultaneously for every $$\theta \in (0,1)$$,*

$$ \dim_{\mathrm{A}}^\theta \mathrm{proj}_V X = \begin{cases} s, & V \in I_s, \\ t, & V \in I_t. \end{cases} $$

[Theorem 7](#theorem-7) refines and unifies a hierarchy of partial results: prescribing two values at a single $$\theta$$, then countably many values at a single $$\theta$$, then two values *for every* $$\theta$$ at once. The last form has an immediate consequence for the quasi-Assouad dimension by taking $$\theta \uparrow 1$$.

{% include theorem.html no="8" theorem="Corollary" info="[Falconer-Fraser-K (2026+)](https://doi.org/10.48550/arXiv.2606.28830)" %}
*Let $$0 < s < t \leq 1$$. There exists a uniformly discrete unbounded set $$X \subseteq \mathbb{R}^2$$ and non-empty disjoint open sets $$I_s, I_t \subseteq G(2,1)$$ such that*

$$ \dim_{\mathrm{qA}} \mathrm{proj}_V X = \begin{cases} s, & V \in I_s, \\ t, & V \in I_t. \end{cases} $$

So no Marstrand-type theorem holds for the quasi-Assouad dimension either, once unbounded sets are admitted.

*Proof sketch.* The set $$X$$ is built from *bricks* $$Q(n,u) \subset [0,\alpha_n] \times [0,\beta_n]$$: $$\alpha_n \to 0$$ and $$\beta_n \to \infty$$, so each brick is thin in one direction and long in the other. Each brick lies on the graph of an increasing function; its short coordinates form a finite scaled copy of an approximation to a self-similar set of dimension $$u$$, while its long coordinates form a finite scaled approximation to a self-similar set whose dimension tends to zero with $$n$$ — exactly the low-dimensional ingredient our example $$Z$$ supplies in its simplest form. The bricks are translated to $$x_n = \sum_{k < n} (4\beta_k + 4, 4\beta_k + 4)$$, so consecutive bricks separate by distance much larger than their diameters; uniform discreteness follows. Each brick is then rotated so that its short axis points at one of two countable dense subsets of $$I_s$$ and $$I_t$$, alternating. For $$V \in I_s$$ aligned with the short axis of a brick, projection onto $$V$$ nearly collapses the long low-dimensional coordinate and reveals the $$s$$-dimensional short coordinate; for $$V \in I_t$$ the same picture appears with $$t$$; for transverse $$V$$, the brick collapses to its long axis and contributes only the vanishing $$Z$$-like dimension. &#x25A0;

The construction crucially uses the spread-out translations $$x_n \to \infty$$, which keep distinct projected bricks from overlapping. Boundedness defeats it: if all bricks had to fit inside a bounded region, the projections would collide and the careful direction-by-direction tuning would fail. This is exactly the point at which the tube-counting argument behind [Theorem 4](#theorem-4) regains traction — the separated subset of $$X$$ it extracts is *globally* large, and bounded sets cannot supply that.



## Where the boundary lies, and what is open

The picture that emerges is this. For the Assouad dimension on compact planar sets, every upper semi-continuous prescription is realisable as a projection function; see [Theorem 2](#theorem-2). For the Assouad spectrum on unbounded planar sets, every pair of values $$0 < s < t \leq 1$$ is realisable on open sets of directions, simultaneously for every $$\theta$$; see [Theorem 7](#theorem-7). Between these two extremes sits a regime where the wildness is genuinely constrained: the Assouad spectrum on *bounded* planar sets, where the tube-counting bound of [Theorem 4](#theorem-4) puts a ceiling tied to the upper box dimension and the ambient spectrum. Four open questions follow.

Is there a Marstrand theorem for the Assouad spectrum of bounded planar sets? The tube-counting bound of [Theorem 4](#theorem-4) is far from sharp. The matching lower bound from [Theorem 5](#theorem-5) goes through a different invariant (the dimension profile $$\dim_{\mathrm{A}}^{\theta,k} X$$), and the two bounds need not meet. A genuine Marstrand-type identity — almost-sure equality between $$\dim_{\mathrm{A}}^\theta \mathrm{proj}_V X$$ and some intrinsic spectrum-profile of $$X$$ — is consistent with everything currently proved.

Is the spectrum dimension profile $$\theta \mapsto \dim_{\mathrm{A}}^{\theta,k} X$$ continuous, and does the limit at $$\theta \uparrow 1$$ exist? The limit would be the natural quasi-Assouad analogue of the dimension profile of [Falconer–Howroyd (1997)](https://doi.org/10.1017/S0305004196001375), and a clean candidate for the right-hand side of the conjectural Marstrand theorem above.

Does $$\dim_{\mathrm{qA}} K = \dim_{\mathrm{H}} K$$ for every self-similar set $$K$$ on the line? This conjecture is recorded as Question 17.5.3 in [Fraser (2021)](https://doi.org/10.1017/9781108778459). [Theorem 4](#theorem-4) plus the projection-realisation of parametrised self-similar sets gives a non-trivial generic upper bound on $$\dim_{\mathrm{A}}^\theta K_{\mathbf{b}}$$ for Lebesgue-typical translation parameters $$\mathbf{b}$$, but the upper bound depends on $$\theta$$ and degrades as $$\theta \uparrow 1$$, so the limit at $$\theta = 1$$ remains untouched.

What is the analogue of [Theorem 2](#theorem-2) for the Assouad spectrum? For the Assouad *dimension* on compact sets, the set of realisable projection functions is essentially the upper semi-continuous functions. For the Assouad spectrum on unbounded sets, [Theorem 7](#theorem-7) only constructs two prescribed values; one expects a full classification analogous to [Theorem 2](#theorem-2), but the brick construction needs to be pushed considerably further to deliver it.

The cleanest moral is geometric, not arithmetic. For dimensions sensitive to local geometry at every scale, *how the set sits inside $$\mathbb{R}^d$$* matters far more than *what metric space the set is*. The Assouad dimension is so sensitive to local geometry that compactness is not enough to tame its projections. The Assouad spectrum is tame on bounded sets — boundedness, not compactness, is the right ambient hypothesis — and wild on unbounded ones. 
