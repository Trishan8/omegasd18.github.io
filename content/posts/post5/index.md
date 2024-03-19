---
title: "The Music of Spheres"
description: "We are going to dive into the world of stable homotopy theory."
date:  2024-03-17
comment: true
categories: [algebraic topology]
background: ../assets/profile.jpg
---

{{< mathjax >}}

## Introduction

In an introductory course on algebraic topology, one encounters fundamental groups as robust topological invariants. Homotopy groups naturally extend this notion. The functor 

$$\pi_n( - ) := [(\mathbb{S}^n,e_1), - ] : \mathsf{Top}_* \to \mathsf{Grp}$$

particularly for $n > 1$, becomes a functor from pointed spaces to abelian groups, i.e., $\pi_n : \mathsf{Top}_* \to \mathsf{Ab}$. However, unlike homology groups, homotopy groups lack a suspension isomorphism theorem. Fruedenthal's work established that the suspension functor induces an isomorphism under certain conditions, paving the way for stable homotopy theory. Though computing stable homotopy groups for even spheres remains formidable, their significance in various geometric and topological theories continues to motivate exploration of this challenging area of study. We will talk about Pontryagin-Thom construction, and conclude that classification of framed manifolds upto framed cobordism reduces to the computation of stable homotopy groups of spheres. Eventually we will see why one should expect such a result, here we will talk about generalised homology and Brown's representability theorem We will see that the bordism homology theory corresponds to generalised homology arising from Thom spectrum.
