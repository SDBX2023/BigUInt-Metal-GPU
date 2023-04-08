# BigUInt-Metal-GPU
A Big or Large Integer Framework Library Designed for GPUs using Metal, interfaced via Apple Swift.

 - [x] Simple Programming Interface(s). *(Have been done already, but not for the more advanced stuff!)*

 - [x] SIMD (MMX/SSE/AVX/AVX2/AutoVec/etc.).

 - [x] vDSP (It would be really awesome to do this on a GPU or AI/ML chip).

 - [x] Image Processing by the GPU (for some people).

 - [x] Apple Metal (version 3).

 - [ ] A **combination of all of the above**, within **Metal** itself!

# Did You Know?
**Your GPU is more than likely better at Mathematics 🧮 *Throughput* than your CPU**.

The Video RAM (GDDR5/6/6X/etc.) and or *very high speed* Unified RAM available today, such as in a gaming console (Xbox Series S/X, PlayStation 5, etc.), or the RAM found in M1 Pro and M2 Pro (or better) Apple devices, also offers and backs 'local' storage when performing very large number calculations. GPUs have typically  had over 1024 'cores' or 'shaders' these days (prior to 2023) compared to just 8 'Performance' cores available within a typical 'good' computer CPU (processor).

**For example**:
 - An Intel Core i9-9880H processor (8C/16T) can perform 432.2 GFLOPS (Giga, or Billion, Floating Point Operations per Second) when utilising ALL cores and ALL availabe SMT plus using extensive SIMD instructions. Typical computer code does not come close to this figure.

 - An AMD Radeon Pro 5500M (GPU: 1536 shaders) can perform ~4454 GFLOPS which is over 10x times the throughput.
 - Both of these devices are inside the Apple MacBook Pro 16"-inch (model: Late 2019).

![Comparison of CPU vs GPU Performance.](/images/Comparison001.png)

# Resources

https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax

1. https://github.com/apple/swift/blob/main/test/Prototypes/BigInt.swift
2. https://github.com/mkrd/Swift-BigInt/blob/master/Sources/Swift-Big-Number-Core.swift
3. https://developer.apple.com/metal/
4. https://developer.apple.com/swift/
5. https://www.apple.com/swift/
6. https://github.com/attaswift/BigInt
7. https://github.com/mkrd/Swift-BigInt
8. https://forums.swift.org/t/support-for-large-binary-numbers/37062
9. https://developer.apple.com/forums/thread/75769
10. https://ios.libhunt.com/compare-bigint-vs-swift-pons
11. https://iosexample.com/a-big-integer-library-for-swift/
12. https://github.com/hyugit/UInt256
13. https://github.com/leif-ibsen/BigInt
14. https://github.com/Boilertalk/BigInt.swift
15. https://github.com/topics/swift-bigint
16. https://stackoverflow.com/questions/25531914/biginteger-equivalent-in-swift
17. https://forums.swift.org/t/support-for-large-binary-numbers/37062
18. https://forums.swift.org/t/thoughts-on-swift-numerics/31627
19. https://docs.xdc.community/tools/sdks-and-programming/switft
20. https://gitee.com/yeahmao/awesome__matteocrippa_awesome-swift
21. https://twitter.com/swiftwasm?lang=en
22. https://www.sololearn.com/Discuss/1212585/see-the-difference-bigint-in-c-and-python
23. https://lightrun.com/answers/magiclabs-magic-js-could-not-find-module-bigint-for-target-x86_64-apple-ios-simulator-found-arm64-arm64-apple-io
24. https://stackoverflow.com/questions/38164634/compute-sum-of-array-values-in-parallel-with-metal-swift
25. https://stackoverflow.com/questions/35985353/metal-shading-language-console-output
26. https://developer.apple.com/forums/thread/5602
27. https://www.appsloveworld.com/swift/100/165/use-huge-numbers-in-apple-swift
28. https://www.joyk.com/dig/detail/47611



