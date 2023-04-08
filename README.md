# BigUInt-Metal-GPU
A Big or Large Integer Framework Library Designed for GPUs using Metal, interfaced via Apple Swift.

I’d like to —try to— make GPU Programming fun 🤩 and cool 😎. Similar to what Chris Lattner did with Swift, but for GPUs. Apple gave us Swift, I'd like to give something back to the community.

 - [x] Simple Programming Interface(s) such as the Swift Programming Language itself. *(Has been done already, but not for the more advanced stuff!)*

 - [x] SIMD (MMX/SSE/AVX/AVX2/AutoVec/etc.). *(Most programmers **never** use any of these extensions to x86/x64/Apple Silicon)*

 - [x] vDSP and FFTs, etc. *(It would be really awesome to do this on a GPU or AI/ML chip)*

 - [x] Image Processing by the GPU ***(for some people)***.

 - [x] **Apple Metal** (is now up to version 3, time to dive in).

 - [ ] A **combination, or cross-section of all of the above**, within **Metal** itself!

 - [ ] Make it easier to produce Scientific research apps that analyze and process large datasets…
 - [ ] Leverage the GPU more easily to run streaming & computational tasks in parallel…
 - [ ] Apply high-performance filters to, and extract statistical and histogram data from 'not just' images.
 - [ ] Still be able to Implement and run neural networks for machine learning training and inference.
 - [ ] Solve systems of equations, factorize matrices and multiply matrices and vectors, etc. only more easily!

# Did You Know?
**Your GPU is more than likely better at Mathematics 🧮 *Throughput* than your CPU**.

The Video RAM (GDDR5/6/6X/etc.) and/or *very high speed* Unified RAM available today, such as in a gaming console (Xbox Series S/X, PlayStation 5, etc.), or the RAM found in M1 Pro and M2 Pro (or better) Apple devices, also offers and backs 'local' storage when performing very large number calculations. GPUs have typically  had over 1024 'cores' or 'shaders' these days (prior to 2023) compared to just 8 'Performance' cores available within a typical 'good' computer CPU (processor).

**For example**:
 - An Intel Core i9-9880H processor (8C/16T) can perform 432.2 GFLOPS (Giga, or Billion, Floating Point Operations per Second) when utilising ALL cores and ALL availabe SMT plus using extensive SIMD instructions. Typical computer code does not come close to this figure.

 - An AMD Radeon Pro 5500M (GPU: 1536 shaders) can perform ~4454 GFLOPS which is over 10x times the throughput.
 - Both of these devices are inside the Apple MacBook Pro 16"-inch (model: Late 2019).

![Comparison of CPU vs GPU Performance.](/images/Comparison001.png)

# Crash Course

1. https://en.wikipedia.org/wiki/Metal_(API)
2. https://developer.apple.com/documentation/metal/performing_calculations_on_a_gpu
2. https://developer.apple.com/documentation/metal/compute_passes
3. https://developer.apple.com/documentation/metal/buffers
4. https://developer.apple.com/documentation/metal/resource_fundamentals
5. https://developer.apple.com/documentation/metal/memory_heaps
6. https://developer.apple.com/documentation/metal/metal_sample_code_library
7. https://developer.apple.com/documentation/metal/gpu_devices_and_work_submission
8. https://developer.apple.com/metal/Metal-Shading-Language-Specification.pdf
9. https://developer.apple.com/metal/
10. https://developer.apple.com/documentation/metal/
11. https://developer.apple.com/metal/cpp/
12. https://developer.apple.com/metal/sample-code/
13. https://developer.apple.com/documentation/metalperformanceshaders/
14. https://developer.apple.com/documentation/metal/blit_passes
15. https://developer.apple.com/documentation/metal/indirect_command_encoding
16. r
17. s
18. t

# History
![Apple A7 processor.](/images/AED20F3B-7CC0-4476-8203-D6B91878B6B0.jpeg)
"**Metal has been available since June 2, 2014** on iOS devices powered by **Apple A7 or later**, and **since June 8, 2015 on Macs** (2012 models or later) running **OS X El Capitan**." — Wikipedia

# Adoption
"**According to Apple, more than 148,000 applications use Metal directly, and 1.7 million use it through high-level frameworks**, (as of June 2017)." — Wikipedia

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

# Additional Resources
1. https://developer.apple.com/documentation/metalperformanceshaders
2. https://developer.apple.com/library/archive/documentation/Miscellaneous/Conceptual/MetalProgrammingGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40014221
3. https://developer.apple.com/documentation/metalperformanceshaders/tuning_hints
4. https://developer.apple.com/documentation/metalperformanceshaders/convolutional_neural_network_kernels
5. https://developer.apple.com/documentation/metalperformanceshaders/recurrent_neural_networks
6. https://developer.apple.com/documentation/metalperformanceshaders/objects_that_simplify_the_creation_of_neural_networks
7. https://developer.apple.com/documentation/metalperformanceshaders/objects_that_simplify_the_creation_of_neural_networks
8. https://developer.apple.com/documentation/metal/blit_passes
9. https://developer.apple.com/documentation/metal/indirect_command_encoding
10. https://developer.apple.com/library/archive/documentation/Miscellaneous/Conceptual/MetalProgrammingGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40014221
11. https://developer.apple.com/documentation/coreimage
12. k
13. l
14. m
15. n
16. o


# Other Resources

1. https://developer.apple.com/documentation/realitykit
2. https://developer.apple.com/library/archive/documentation/Miscellaneous/Conceptual/MetalProgrammingGuide/Prog-Func/Prog-Func.html#//apple_ref/doc/uid/TP40014221-CH5-SW1
3. c
4. d
5. e
6. f
7. g
8. h
9. i
10. j
11. k
12. l
13. m
14. n
15. o
16. p
