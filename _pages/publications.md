---
layout: single
title: Publications
permalink: publications
---

## The gem5 Simulator: Version 20.0+

**Authors**: Jason Lowe Power, and others

**Published**: [arXiv:2007.03152](https://arxiv.org/abs/2007.03152)

### Abstract

The open-source and community-supported gem5 simulator is one of the most
popular tools for computer architecture research. This simulation
infrastructure allows researchers to model modern computer hardware at the
cycle level, and it has enough fidelity to boot unmodified Linux-based
operating systems and run full applications for multiple architectures
including x86, Arm, and RISC-V. The gem5 simulator has been under active
development over the last nine years since the original gem5 release. In this
time, there have been over 7500 commits to the codebase from over 250 unique
contributors which have improved the simulator by adding new features, fixing
bugs, and increasing the code quality. In this paper, we give and overview of
gem5's usage and features, describe the current state of the gem5 simulator,
and enumerate the major changes since the initial release of gem5. We also
discuss how the gem5 simulator has transitioned to a formal governance model to
enable continued improvement and community support for the next 20 years of
computer architecture research.

## JShrink: In-depth Investigation into Debloating Modern Java Applications

**Authors**: Bobby R. Bruce, Tianyi Zhang, Jaspreet Arora, Guoqing Harry Xu,
and Miryung Kim

**Published**: FSE 2020 [To Appear]

**Arifact DOI**: [10.6084/m9.figshare.12435542](
https://doi.org/10.6084/m9.figshare.12435542)

### Abstract

Modern software is bloated. Demand for new functionality has led developers to
include more and more features, many of which become unneeded or unused as
software evolves. This phenomenon, known as software bloat, results in software
consuming more resources than it otherwise needs to. How to effectively and
automatically debloat software is a long-standing problem in software
engineering. Various software debloating techniques have been proposed since
the late 1990s. However, many of these techniques are built upon pure static
analysis and have yet to be extended and evaluated in the context of modern
Java applications where dynamic language features are prevalent.

To this end, we develop an end-to-end bytecode debloating framework called
JShrink and conduct an in-depth analysis of bytecode transformations for
debloating modern Java applications. JShrink augments traditional static
reachability analysis with dynamic profiling and type dependency analysis and
renovates existing bytecode transformations to account for new language
features in modern Java. We highlight several nuanced technical challenges that
must be handled properly to debloat modern Java applications and further
examine behavior preservation of debloated software via regression testing. Our
study finds that (1) JShrink is able to debloat our real-world Java benchmark
suite by up to 47\% (14\% on average); (2) accounting for dynamic language
features is indeed crucial to ensure behavior preservation for debloated
software -- reducing 98\% of test failures incurred by a purely static
equivalent, Jax, and 84\% for ProGuard; and  (3) compared with purely dynamic
approaches, integrating static analysis with dynamic profiling makes the
debloated software more robust to unseen test executions -- in 22 out of 26
projects, the debloated software ran successfully under new tests.

## Approximate Oracles and Synergy in Software Energy Search Spaces

**Authors**: Bobby R. Bruce, Justyna Petke, Mark Harman, and Earl T. Barr

**Published**: IEEE Transactions on Software Engineering (2018)
[FSE '2018 Journal First paper]

**DOI**: [10.1109/TSE.2018.2827066](https://doi.org/10.1109/TSE.2018.2827066)

### Abstract

Reducing the energy consumption of software systems though optimisations
techniques such as genetic improvement is gaining interest. However, efficient
and effective improvement of software systems requires a better understanding
of the code-change search space. One important choice practitioners have is
whether to preserve the system's original output or permit approximation with
each scenario having its own search space characteristics. When output
preservation is a hard constraint, we report that the maximum energy reduction
achievable by the modification operators is 2.69% (0.76% on average). By
contrast, this figure increases dramatically to 95.60% (33.90% on average) when
approximation is permitted, indicating the critical importance of approximate
output quality assessment for code optimisation. We investigate synergy, a
phenomenon that occurs when simultaneously applied source code modifications
produce an effect greater than their individual sum. Our results reveal that
12.0% of all joint code modifications produced such a synergistic effect though
38.5% produce an antagonistic interaction in which simultaneously applied
modifications are less effective than when applied individually. This
highlights the need for more advanced search-based approaches.

## Towards automatic generation and insertion of OpenACC directives

**Authors**: Bobby R. Bruce, and Justyna Petke

**Published**: Research Note (UCL Computer Science; RN/18/04)

[PDF Available here](/assets/pdfs/publications/bruce-2018-towards.pdf)

### Abstract

While the utilisation of hardware accelerators, like GPUs, can significantly
improve software performance, developers often lack the expertise or time to
properly translate source code to do so. In this paper we highlight two
approaches to automatically offload computationally intensive tasks to a
system's GPU by generating and inserting OpenACC directives; one using
grammar-based genetic programming, and another using a bespoke four stage
process. We find that the grammar-based genetic programming approach reduces
execution time by 2.60% on average, across the applications studied, while the
bespoke four-stage approach reduces execution time by 2.44%. Despite this, our
investigation shows a handwritten OpenACC implementation is capable of reducing
execution time by 65.68%. Comparing the differences, we identified a promising
avenue for future research: combining genetic improvement with better handling
of data to and from the GPU.

## Deep Parameter Optimisation for Face Detection Using the Viola-Jones Algorithm in OpenCV : A Correction

**Authors:**: Bobby R. Bruce

**Published**: 2017 Research Note (UCL Computer Science; RN/17/07)

[PDF Available Here](/assets/pdfs/publications/bruce-2017-deep.pdf)

### Abstract

In our 2016 paper 'Deep Parameter Optimisation for Face Detection Using the
Viola-Jones Algorithm in OpenCV', we reported on an evolutionary,
multi-objective approach to deep parameter optimisation that we reported could
reduce execution time of a face detection algorithm by 48% if a 1.90%
classification inaccuracy were permitted (compared to the 1.04% classification
inaccuracy of the original, unmodified algorithm) and that further execution
time savings were possible depending on the degree of inaccuracy permitted by
the user. However, after publication we found an error in our experimental
setup; instead of running the deep parameter optimisation framework using an
evolutionary search-based approach we had been using a systematic one. We
therefore re-ran the experiments using the intended evolutionary implementation
alongside the systematic implementation for 1,000 evaluations and again for
10,000 evaluations. We found that the systematic setup is superior to the
intended evolutionary setup in that it produces solutions which, when run on
the test set, produce a richer Pareto frontier. The evolutionary approach, in
the 10,000 evaluation setup, produced a better Pareto frontier on the training
set. However, the majority of these solutions were infeasible or not Pareto
optimal when run on the test set. We suspect this may be due to the
evolutionary approach over-fitting to the training set.

## Deep Parameter Optimisation on Android Smartphones for Energy minimisation - A Tale of Woe and Proof-of-Concept

**Authors**: Mahmoud A. Bokhari, Bobby R. Bruce, Brad Alexander, and
Markus Wagner

**Published**: GECCO Companion 2017

**DOI**: [10.1145/3067695.3082519](https://doi.org/10.1145/3067695.3082519)

[PDF Available Here](/assets/pdfs/publications/bokhari-2017-deep.pdf)

### Abstract

With power demands of mobile devices rising, it is becoming increasingly
important to make mobile software applications more energy efficient.
Unfortunately, mobile platforms are diverse and very complex which makes energy
behaviours difficult to model. This complexity presents challenges to the
effectiveness of off-line optimisation of mobile applications. In this paper,
we demonstrate that it is possible to automatically optimise an application for
energy on a mobile device by evaluating energy consumption in-vivo. In contrast
to previous work, we use only the device's own internal meter. Our approach
involves many technical challenges but represents a realistic path toward
learning hardware specific energy models for program code features.

## A Report on the Genetic Improvement Workshop@GECCO 2016

**Authors**: Bobby R. Bruce

**Published**: SIGEVOLution Newsletter (Volume 9, Issue 2, 2016)

[PDF Available Here](/assets/pdfs/publications/sigevolution-09-02.pdf)


## Approximate Oracles and Synergy in Software Energy Search Spaces [Research Note]

**Authors**: Bobby R. Bruce, Justyna Petke, Mark Harman, and Earl T. Barr

**Published**: 2017 Research Note (UCL Computer Science; RN/17/01)

[PDF Available Here](/assets/pdfs/publications/bruce-2017-approximate.pdf)

### Abstract

There is a growing interest in reducing software systems' computation energy
consumption through evolutionary optimisation techniques such as genetic
improvement. Optimising energy consumption requires understanding the search
space of code changes in terms of energy. When output preservation is a hard
constraint, we show the maximum energy reduction achievable by a single
modification is 2.69% (0.76% on average); when output approximation is
permitted, such as lossy or less efficient compression, this figure increases
to 95.60% (33.90% on average). Synergy occurs when simultaneous modifications
produce a greater effect than their individual sum; we show its importance in
the search space: 12.0% of all joint code modifications produced such an
effect. That said, 38.5% of pairings did not produce a reduction greater than
the most effective constituent member. Thus, greedy approaches to combining
energy efficient modifications are insufficient; more advanced search-based
approaches, such as evolutionary algorithms, are required.

## Deep Parameter Optimisation for Face Detection Using the Viola-Jones Algorithm in OpenCV

**Authors**: Bobby R. Bruce, Jonathan M. Aitken, and Justyna Petke

**Published**: SSBSE 2016

**DOI**: [10.1007/978-3-319-47106-8_18](
https://doi.org/10.1007/978-3-319-47106-8_18)

[PDF Available Here](/assets/pdfs/publications/bruce-2016-deep.pdf)

### Abstract
OpenCV is a commonly used computer vision library containing a wide variety of
algorithms for the AI community. This paper uses deep parameter optimisation to
investigate improvements to face detection using the Viola-Jones algorithm in
OpenCV, allowing a trade-off between execution time and classification
accuracy. Our results show that execution time can be decreased by 48% if a
1.80% classification inaccuracy is permitted (compared to 1.04% classification
inaccuracy of the original, unmodified algorithm). Further execution time
savings are possible depending on the degree of inaccuracy deemed acceptable by
the user.

## Optimising Quantisation Noise in Energy Measurement

**Authors**: William B. Langdon, Justyna Petke, and Bobby R. Bruce

**Published**: PPSN 2019

**DOI**: [10.1007/978-3-319-45823-6_23](
https://doi.org/10.1007/978-3-319-45823-6_23)

[PDF Available Here](/assets/pdfs/publications/langdon-2016-optimising.pdf)

### Abstract

A simple model of distributed Genetic Improvement running in parallel across a
local area network in which start/stop commands are sent to measuring devices
calculates a minimum usable software mutation effect based on the analogue to
digital convert (ADC)'s resolution. With modern low cost power monitors, the
high speed Ethernet LAN's jitter and delays appear to have little effect. Where
the software to be improved permits it, optimal test duration is inversely
proportionate to minimum mutation effect size, typically well under a second.

## Optimising Quantisation Noise in Energy Measurement [Research Note]

**Authors**: William B. Langdon, Justyna Petke, and Bobby R. Bruce

**Published**: 2016 Research Note (UCL Computer Science; RN/16/01)

[PDF Available Here](/assets/pdfs/publications/langdon-2016-optimising-rn.pdf)

### Abstract

A simple model of distributed Genetic Improvement running in parallel across a
local area network in which start/stop commands are sent to measuring devices
calculates a minimum usable software mutation effect based on the analogue to
digital convert (ADC)'s resolution. With modern low cost power monitors, the
high speed Ethernet LAN's jitter and delays appear to have little effect. Where
the software to be improved permits it, optimal test duration is inversely
proportionate to minimum mutation effect size, typically well under a second.

## Specialising Guava's Cache to Reduce Energy Consumption

**Authors**: Nathan Burles, Edward Bowles, Bobby R. Bruce, and Komsan Srivisut

**Published**: SSBSE 2015

**DOI**: [10.1007/978-3-319-22183-0_23](
https://doi.org/10.1007/978-3-319-22183-0_23)

### Abstract

In this article we use a Genetic Algorithm to perform parameter tuning on
Google Guava’s Cache library, specialising it to OpenTrip- Planner. A new tool,
Opacitor, is used to deterministically measure the energy consumed, and we find
that the energy consumption of OpenTrip- Planner may be significantly reduced
by tuning the default parameters of Guava’s Cache library. Finally we use
Jalen, which uses time and CPU utilisation as a proxy to calculate energy
consumption, to corroborate these results.

## Energy Optimisation via Genetic Improvement : A SBSE technique for a new era in Software Development

**Authors**: Bobby R. Bruce

**Published**: GECCO Compansion 2015

**DOI**: [10.1145/2739482.2768420](https://doi.org/10.1145/2739482.2768420)

[PDF Available Here](/assets/pdfs/publications/bruce-2015-energy.pdf)

### Abstract

The discipline of Software Engineering has arisen during a time in which
developers rarely concerned themselves with the energy efficiency of their
software. Due to the growth in both mobile devices and large server clusters
this period is undoubtedly coming to an end and, as such, new tools for
creating energy-efficient software are required. This paper takes the position
that Genetic Improvement, a Search-Based Software Engineering technique, has
the potential to aid developers in refactoring their software to a more
energy-efficient state; allowing focus to remain on functional requirements
while leaving concerns over energy consumption to an automated process.

## Reducing Energy Consumption Using Genetic Improvement

**Authors**: Bobby R. Bruce, Justyna Petke, and Mark Harman

**Published**: GECCO 2015

**DOI**: [10.1145/2739480.2754752](https://doi.org/10.1145/2739480.2754752)

[PDF Available Here](/assets/pdfs/publications/bruce-2015-reducing.pdf)

### Abstract

Genetic Improvement (GI) is an area of Search Based Software Engineering which
seeks to improve software's non-functional properties by treating program code
as if it were genetic material which is then evolved to produce more optimal
solutions. Hitherto, the majority of focus has been on optimising program's
execution time which, though important, is only one of many non-functional
targets. The growth in mobile computing, cloud computing infrastructure, and
ecological concerns are forcing developers to focus on the energy their
software consumes. We report on investigations into using GI to automatically
find more energy efficient versions of the MiniSAT Boolean satisfiability
solver when specialising for three downstream applications. Our results find
that GI can successfully be used to reduce energy consumption by up to 25%.
