---
title: "Level sets of prevalent Hölder and Weierstrass functions"
layout: post
description: "Exploring level set dimensions of Hölder and Weierstrass functions."
---

## Typical continuous real functions

What does a "typical" real [function](https://en.wikipedia.org/wiki/Function_(mathematics)) on the unit interval $$[0,1]$$ look like? Is it smooth and predictable, like a straight line, or wild and chaotic, with sharp twists and turns? We examine [Hölder functions](https://en.wikipedia.org/wiki/H%C3%B6lder_condition) and [Weierstrass functions](https://en.wikipedia.org/wiki/Weierstrass_function) in this sense, focusing on their *level sets*---the sets of points where the function takes a specific value. These sets offer insights into the function's behavior, revealing how "wild" or "tame" it is through the lens of [dimension theory](https://en.wikipedia.org/wiki/Dimension_theory). We will explore two notions of "typicality" for functions: [*Baire typicality*](https://en.wikipedia.org/wiki/Meagre_set), which looks at what is common in a topological sense, and [*prevalence*](https://en.wikipedia.org/wiki/Prevalent_and_shy_sets), which considers what takes up most of the "space" among all possible functions. 

## Behavior of Baire typical continuous functions

Intuitively, the graph of a smooth function looks like a gentle curve, while a chaotic one could resemble a jagged, space-filling scribble. To quantify this, we consider Hölder continuous functions, which are defined by how much they can "wiggle" over small distances. A function $$f \colon [0,1] \to \mathbb{R}$$ is called [*$$\alpha$$-Hölder*](https://en.wikipedia.org/wiki/H%C3%B6lder_condition) if there exists a constant $$C > 0$$ such that

$$
  |f(x) - f(y)| \le C |x - y|^\alpha
$$

for all $$x, y \in [0,1]$$. Here, $$0<\alpha<1$$ controls the function’s roughness: smaller $$\alpha$$ means wilder behavior. For example, when $$\alpha$$ is close to zero, the function can change rapidly, making its graph more complex. The [upper Minkowski dimension](https://en.wikipedia.org/wiki/Minkowski_dimension) of the graph of an $$\alpha$$-Hölder function is bounded by

$$
  \overline{\dim}_{\mathrm{M}}(\text{graph}(f)) \le 2 - \alpha.
$$

This suggests that as $$\alpha$$ gets smaller, the graph can become more intricate, approaching a "space-filling" curve in the plane in terms of its Haudorff dimension.

Recall that a set is [nowhere dense](https://en.wikipedia.org/wiki/Nowhere_dense_set) if its closure has empty interior. A property is [*Baire typical*](https://en.wikipedia.org/wiki/Meagre_set) if it is satisfied in a set whose complement is a countable union of nowhere dense sets. A set $$A$$ is [$$G_\delta$$](https://en.wikipedia.org/wiki/G%CE%B4_set) if there exists a countable collection of open sets $$\{U_n\}_{n=1}^\infty$$ such that

$$
  A = \bigcap_{n=1}^\infty U_n.
$$

Here "$$G$$" stands for "Gebiet" which is German for "region" or "area", and "$$\delta$$" indicates that there is a countable intersection. 

{% include theorem.html no="1" theorem="Lemma" %}
*Let $$X$$ be a complete metric space. If $$A \subseteq X$$ is a dense $$G_\delta$$ set, then its complement $$X \setminus A$$ is a countable union of nowhere dense sets.*

*Proof.* Let us assume that $$A \subseteq X$$ is a dense $$G_\delta$$ set. Then $$A$$ intersects every non-empty open set in $$X$$ and there exists a countable collection of open sets $$\{U_n\}_{n=1}^\infty$$ such that $$A = \bigcap_{n=1}^\infty U_n$$. The complement of $$A$$ is a countable union of closed sets,

$$
  X \setminus A = \bigcup_{n=1}^\infty X \setminus U_n.
$$

It remains to show each $$X \setminus U_n$$ is nowhere dense, i.e., has empty interior. Suppose, for contradiction, that some $$X \setminus U_k$$ has non-empty interior, so there exists a non-empty open set $$V \subseteq X \setminus U_k$$. Then $$V \cap U_k = \emptyset$$, and as $$A \subseteq U_k$$, also $$V \cap A = \emptyset$$. This contradicts the density of $$A$$, as $$A$$ fails to intersect the non-empty open set $$V$$. Thus, each $$X \setminus U_n$$ has empty interior and is nowhere dense. &#x25A0;

The following result shows that the graph of a Baire typical continuous function has [Hausdorff dimension](https://en.wikipedia.org/wiki/Hausdorff_dimension) one.

{% include theorem.html no="2" theorem="Theorem" info="[Mauldin-Williams (1986)](https://zbmath.org/0603.28003)" %}
*A Baire typical continuous function $$f \colon [0,1] \to \mathbb{R}$$ satisfies:*

$$
  \dim_{\mathrm{H}}(\mathrm{graph}(f)) = 1.
$$

*Proof.* Recall that the vector space $$\mathcal{C}([0,1])$$ of continuous real functions on $$[0,1]$$ equipped with the the supremum norm $$\Vert f \Vert_{\infty} = \sup_{x \in [0,1]} \vert f(x) \vert$$ is a complete metric space. Therefore, by [Lemma 1](#lemma-1), it suffices to show that the set

$$ 
  A = \{ f \in \mathcal{C}([0,1]) : \dim_{\mathrm{H}}(\mathrm{graph}(f)) = 1 \}
$$ 

is a dense $$G_\delta$$ set in $$\mathcal{C}([0,1])$$. Recall that, by the [Stone-Weierstrass theorem](https://en.wikipedia.org/wiki/Stone%E2%80%93Weierstrass_theorem), polynomials are dense in $$\mathcal{C}([0,1])$$. The graph of a polynomial is a smooth algebraic curve, which has Hausdorff dimension one, and polynomials are thus contained in $$A$$. Hence, the set $$A$$ is dense in $$\mathcal{C}([0,1])$$. To show that $$A$$ is $$G_\delta$$, define

$$
  A_{n,k} = \{ f \in \mathcal{C}([0,1]) : \mathcal{H}^{1+\frac{1}{n}}_\infty(\mathrm{graph}(f)) < \tfrac{1}{k} \}
$$

for all $$n,k \in \mathbb{N}$$. Note that if $$f \in \bigcap_{k=1}^\infty A_{n,k}$$, then $$\mathcal{H}^{1+\frac{1}{n}}_\infty(\mathrm{graph}(f)) = 0$$ and $$\dim_{\mathrm{H}}(\mathrm{graph}(f)) \leq 1+\frac{1}{n}$$. Hence, 

$$
  A = \bigcap_{n=1}^\infty \bigcap_{k=1}^\infty A_{n,k}.
$$ 

It remains to show that each $$A_{n,k}$$ is open. To that end, notice that if $$\varepsilon>0$$ and $$f,g \in \mathcal{C}([0,1])$$ are such that $$\|f-g\|_{\infty} < \varepsilon/\sqrt{2}$$, then $$d_{\mathrm{H}}(\mathrm{graph}(f),\mathrm{graph}(g))<\varepsilon$$, where $$d_{\mathrm{H}}$$ is the [Hausdorff distance](https://en.wikipedia.org/wiki/Hausdorff_distance). It is also easy to see that the Hausdorff content $$\mathcal{H}^{1+\frac{1}{n}}_\infty$$ as a function defined on the space of compact sets of $$\mathbb{R}^2$$ equipped with $$d_{\mathrm{H}}$$ is [upper semicontinuous](https://en.wikipedia.org/wiki/Semi-continuity). Therefore, the function $$f \mapsto \mathcal{H}^{1+\frac{1}{n}}_\infty(\mathrm{graph}(f))$$ defined on $$\mathcal{C}([0,1])$$ is upper semicontinuous and $$A_{n,k}$$ is open. &#x25A0;

Thus, a Baire typical continuous function behaves like a simple line in terms of its Hausdorff dimension, which measures the complexity of a set. This is surprising because, intuitively, we might expect a typical function to be wilder, especially for small $$\alpha$$, where the dimension of an $$\alpha$$-Hölder function’s graph can approach $$2 - \alpha.$$




## Level sets of prevalent Hölder continuous functions

A set of Hölder functions is prevalent if it dominates the function space in a measure-theoretic sense. Formally, a set in a [Banach space](https://en.wikipedia.org/wiki/Banach_space) is [*prevalent*](https://en.wikipedia.org/wiki/Prevalent_and_shy_sets) if there exists a $$d$$-dimensional *probe space* $$\mathcal{S}$$ such that for any Hölder function $$f$$, adding elements from $$\mathcal{S}$$ keeps the function in the desired set for $$\mathcal{L}^d$$-almost all choices in $$\mathcal{S}$$. Recall that $$\mathcal{S}$$ is isometrically isomorphic to $$\mathbb{R}^d$$ and hence, $$\mathcal{L}^d$$ here is indeed the $$d$$-dimensional [Lebesgue measure](https://en.wikipedia.org/wiki/Lebesgue_measure) via this identification. 

{% include theorem.html no="3" theorem="Theorem" info="[Clausel-Nicolay (2010)](https://zbmath.org/1206.26002)" %}
*A prevalent $$\alpha$$-Hölder function $$f \colon [0,1] \to \mathbb{R}$$ satisfies:*

$$
\dim_{\mathrm{H}}(\text{graph}(f)) = 2 - \alpha.
$$

This means that as $$\alpha$$ approaches zero, a prevalent Hölder function’s graph becomes, in terms of its Hausdorff dimension, nearly space-filling, almost filling up a two-dimensional plane while remaining continuous—a remarkable balance of complexity and continuity.

We seek a deeper understanding of how the function $$f$$ varies across the unit interval. The level set $$f^{-1}(\{y\})$$ consists of all points $$x$$ where the function value $$f(x) = y$$. Geometrically, this represents the intersection of the function’s graph with a horizontal line at height $$y$$. The Hausdorff dimension of these level sets quantifies the function’s irregularity. For functions modeling random processes on $$[0,1]$$, it can also describe the process’s scaling properties. For smooth functions, level sets are typically [discrete sets](https://en.wikipedia.org/wiki/Discrete_space) with a Hausdorff dimension of zero. In contrast, highly irregular or [fractal](https://en.wikipedia.org/wiki/Fractal)-like functions may have level sets with positive Hausdorff dimension, indicating a more intricate structure. To estimate the Hausdorff dimension, Marstrand’s classical slicing theorem provides a valuable starting point.

{% include theorem.html no="4" theorem="Theorem" info="[Marstrand (1954)](https://zbmath.org/0056.05504)" %}
*A function $$f \colon [0,1] \to \mathbb{R}$$ satisfies:*

$$
\dim_{\mathrm{H}}(f^{-1}(\{y\})) \le \dim_{\mathrm{H}}(\text{graph}(f)) - 1
$$

*for $$\mathcal{L}^1$$-almost all $$y \in \mathbb{R}$$.*

Recalling [Theorem 3](#theorem-3), the slicing theorem suggests that a prevalent $$\alpha$$-Hölder function's level sets have Hausdorff dimension at most $$1-\alpha$$. Can we make this bound hold for all $$y$$ and when does equality hold? The following result tells us that for a prevalent Hölder function, the level sets are well-behaved, with their upper Minkowski dimension capped at $$1 - \alpha$$ when $$\alpha$$ is small, and many level sets achieve the maximum Hausdorff dimension of $$1 - \alpha$$.

{% include theorem.html no="5" theorem="Theorem" info="[Anttila-Bárány-K (2025)](https://zbmath.org/8015184)" %}
*A prevalent $$\alpha$$-Hölder function $$f \colon [0,1] \to \mathbb{R}$$ satisfies:<br />
<span style="margin-left: 20px;">(1) $$\overline{\dim}_{\mathrm{M}}(f^{-1}(\{y\})) \le 1 - \alpha$$ for all $$y \in \mathbb{R}$$ if $$0 < \alpha < \frac{1}{2}$$,</span><br />
<span style="margin-left: 20px;">(2) $$\dim_{\mathrm{H}}(f^{-1}(\{y\})) = 1 - \alpha$$ for all $$y$$ in a set with positive Lebesgue measure if $$0 < \alpha < 1$$.</span>*

*Proof.* To prove this, we use an *Assouad embedding*, which maps the interval $$[0,1]$$ into a higher-dimensional space $$\mathbb{R}^d$$ using an $$\alpha$$-bi-Hölder map $$\Phi$$. We choose a probe space $$\mathcal{S}$$ to be the functions of the form $$x \mapsto \langle \Phi(x), \mathbf{t} \rangle$$, where $$\mathbf{t} \in \mathbb{R}^d$$. The goal is to show that the properties hold for $$f_{\mathbf{t}} = f + \langle \Phi, \mathbf{t} \rangle$$ for $$\mathcal{L}^d$$-almost all $$\mathbf{t}$$.

In the proof of (1), we analyze $$f_{\mathbf{t}}$$ using [Fourier analysis](https://en.wikipedia.org/wiki/Fourier_analysis). Define the *occupation measure* $$\mu_{\mathbf{t}} = (f_{\mathbf{t}})_*\mathcal{L}^1$$, which describes how the function distributes Lebesgue measure. The task is to show that

$$
  \int \mathcal{I}_s(\mu_{\mathbf{t}}) \, d\mathbf{t} < \infty
$$

over all bounded sets for $$s > 2$$, where 

$$
  \mathcal{I}_s(\mu_{\mathbf{t}}) = \int |\xi|^{s-1} |\hat{\mu}_{\mathbf{t}}(\xi)|^2 \, \mathrm{d}\xi
$$

is the *Sobolev energy* of $$\mu_{\mathbf{t}}$$. Having settled this, [Cauchy–Schwarz inequality](https://en.wikipedia.org/wiki/Cauchy%E2%80%93Schwarz_inequality) then gives us

$$
  \int_{|\xi|>1} |\hat{\mu}_{\mathbf{t}}| \, \mathrm{d}\xi \le \biggl( \int_{|\xi|>1} |\xi|^{s-1} |\hat{\mu}_{\mathbf{t}}(\xi)|^2 \, \mathrm{d}\xi \biggr)^{1/2} \biggl( \int_{|\xi|>1} |\xi|^{-(s-1)} \, \mathrm{d}\xi \biggr)^{1/2} < \infty
$$

for $$\mathcal{L}^d$$-almost all $$\mathbf{t} \in \mathbb{R}^d$$. The second integral converges precisely when $$s-1 > 1$$, and the first is finite by assumption. The integral over $$\vert\xi\vert \leq 1$$ is finite since $$\hat{\mu}_{\mathbf{t}}$$ is bounded. It follows that $$\hat{\mu}_{\mathbf{t}} \in L^1(\mathbb{R})$$ and hence, the [Fourier inversion theorem](https://en.wikipedia.org/wiki/Fourier_inversion_theorem) implies that $$\mu_{\mathbf{t}}$$ has a density $$g(x) = \frac{1}{2\pi} \int \hat{\mu}_{\mathbf{t}}(\xi) e^{i x \xi} \, \mathbb{d}\xi$$. The inverse Fourier transform of an $$L^1$$ function is continuous, so the density $$g$$ is continuous. It is also bounded, because $$\vert g(x) \vert \leq \frac{1}{2\pi} \Vert\hat{\mu}_{\mathbf{t}}\Vert_{L^1} < \infty$$. By the [Radon-Nikodym theorem](https://en.wikipedia.org/wiki/Radon%E2%80%93Nikodym_theorem), we have $$\mu_{\mathbf{t}}(A) = \int_A g \,\mathrm{d}\mathcal{L}^1$$ and hence, $$\mu_{\mathbf{t}}(B(x,r)) \le Cr$$, where $$C = \frac{1}{2\pi} \Vert\hat{\mu}_{\mathbf{t}}\Vert_{L^1}$$. Therefore, the *lower pointwise dimension* satisfies

$$
\underline{\dim}_{\text{loc}}(\mu_{\mathbf{t}}, y) = \liminf_{r \downarrow 0} \frac{\log \mu(B(x,r))}{\log r} \ge 1
$$

for all $$y \in f_{\mathbf{t}}([0,1])$$. Since $$f_{\mathbf{t}}$$ is $$\alpha$$-Hölder, a straightforward argument on maximal packings yields

$$
\overline{\dim}_{\mathrm{M}}(f^{-1}(\{y\})) \le 1 - \alpha \underline{\dim}_{\text{loc}}(\mu_{\mathbf{t}}, y) \le 1 - \alpha,
$$

proving part (1). 

To prove (2), the idea in [Anttila-Bárány-K (2025)](https://zbmath.org/8015184) was to look at *$$\theta$$-oblique occupation measures* defined as $$\mu_{\mathbf{t}}^\theta = (\mathrm{proj}_\theta)_*\lambda_{\mathbf{t}}$$, where $$\lambda_{\mathbf{t}}$$ is the lift of the Lebesgue measure from the unit interval onto the graph of $$f_{\mathbf{t}}$$ and $$\mathrm{proj}_\theta(x,y) = x\cos(\theta)+y\sin(\theta)$$ is the orthogonal projection onto direction $$\theta$$. The occupation measure $$\mu_{\mathbf{t}}$$ is thus the $$\frac{\pi}{2}$$-oblique occupation measure $$\mu_{\mathbf{t}}^{\frac{\pi}{2}}$$. The task is to show that $$\mu_{\mathbf{t}}^\theta \ll \mathcal{L}^1$$ and, relying on the Marstrand's slicing theorem,

$$
  \dim_{\mathrm{H}}(\mathrm{graph}(f_{\mathbf{t}}) \cap \mathrm{proj}_\theta^{-1}(\{y\})) \ge 1-\alpha 
$$

for $$\mathcal{L}^d$$-almost all $$\mathbf{t} \in \mathbb{R}^d$$, $$\mathcal{L}^1$$-almost all $$\theta \in [0,2\pi]$$, and $$\mu_{\mathbf{t}}^\theta$$-almost all $$y \in \mathrm{proj}_\theta(\mathrm{graph}(f_\mathbf{t}))$$. There is a priori no reason that this observation holds for the slice with $$\theta = \frac{\pi}{2}$$ corresponding to the level sets. However, by increasing the dimension
of the probe space $$\mathcal{S}$$, it is possible to adjust the slice direction by adding a linear function to the Hölder function. This finishes the proof. &#x25A0;





## Level sets of prevalent Weierstrass functions

Weierstrass functions are a special class of Hölder functions, defined as:

$$
W_g^{\alpha,b}(x) = \sum_{k=0}^\infty b^{-\alpha k} g(b^k x),
$$

where $$g$$ is a [Lipschitz function](https://en.wikipedia.org/wiki/Lipschitz_continuity), $$b \ge 2$$ is an [integer](https://en.wikipedia.org/wiki/Integer), and $$0<\alpha<1$$. These [$$1$$-periodic](https://en.wikipedia.org/wiki/Periodic_function) functions are famous for being continuous but nowhere differentiable, making them a classic example of "wild" functions.

{% include theorem.html no="6" theorem="Theorem" info="[Ren-Shen (2021)](https://zbmath.org/1484.28011)" %}
*For any non-constant $$g$$, all but finitely many $$0<\alpha<1$$, and any integer $$b \ge 2$$, an $$\alpha$$-Weierstrass function $$W_g^{\alpha,b} \colon [0,1] \to \mathbb{R}$$ satisfies*

$$
\dim_{\mathrm{H}}(\text{graph}(W_g^{\alpha,b})) = 2 - \alpha.
$$

This confirms that essentially all $$\alpha$$-Weierstrass functions, like prevalent $$\alpha$$-Hölder functions, have graphs that are, in terms of their Hausdorff dimension, nearly space-filling as $$\alpha$$ approaches zero. We note that $$\alpha$$-Weierstrass functions are a strict subset of $$\alpha$$-Hölder functions. Indeed, we identify $$W_g^{\alpha,b}$$ with the Lipschitz function $$g$$ and define prevalence via this identification. The following theorem extends [Theorem 5](#theorem-5) to Weierstrass functions:

{% include theorem.html no="7" theorem="Theorem" info="[Buczolich-K-Maga (2025)](https://zbmath.org/arXiv:2507.15591)" %}
*For any integer $$b \ge 2$$, a prevalent $$\alpha$$-Weierstrass function $$W_g^{\alpha,b} \colon [0,1] \to \mathbb{R}$$ satisfies:<br />
<span style="margin-left: 20px;">(1) $$\overline{\dim}_{\mathrm{M}}((W_g^{\alpha,b})^{-1}(\{y\})) \le 1 - \alpha$$ for all $$y \in \mathbb{R}$$ if $$0 < \alpha < \frac{1}{2}$$,</span><br />
<span style="margin-left: 20px;">(2) $$\dim_{\mathrm{H}}((W_g^{\alpha,b})^{-1}(\{y\})) = 1 - \alpha$$ for all $$y$$ in a set with positive Lebesgue measure if $$0 < \alpha < 1$$.</span>*

*Proof.* To prove (1), the task is to construct an $$\alpha$$-bi-Hölder *Weierstrass embedding* $$\Phi \colon [0,1] \to \mathbb{R}^d$$ whose coordinate functions that are $$\alpha$$-Weierstrass functions, and proceed as in the proof of [Theorem 5(1)](#theorem-5). However, in proving [Theorem 5(2)](#theorem-5) the idea was first to analyze slices in almost every direction and then adjust the slice direction by adding a linear function to the Hölder function. In the Banach space of $$\alpha$$-Weierstrass functions, which consists of $$1$$-periodic functions, this adjustment is not feasible. Consequently, in addition to constructing an $$\alpha$$-bi-Hölder Weierstrass embedding, the task is to directly analyze the occupation measure of $$W_g^{\alpha,b} + \langle \Phi, \mathbf{t} \rangle$$, showing it is absolutely continuous for $$\mathcal{L}^d$$-almost all $$\mathbf{t} \in \mathbb{R}^d$$. &#x25A0;

The method to prove [Theorem 7(2)](#theorem-7) streamlines the proof of [Theorem 5(2)](#theorem-5), showing that for prevalent $$\alpha$$-Hölder functions, the result can be established without relying on the "almost every rotation" argument. There also appears to be an interesting dichotomy: When $$\alpha$$ is small, a prevalent Weierstrass function exhibits "wilder" behavior, yet its occupation measure’s density function may possess more favorable properties as we know it is continuous and bounded when $$0<\alpha<1$$. 
