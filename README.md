# Current Goals
 - Find other people willing to help out, just a little bit.
 - *Ideally other people with an array of different hardware!*
 - Rank each of the following resources (below) from 0 to 100 (inclusive, so 101 all up possible scores)
 - Rank each Resource (below) as Beginner, Intermediate, Advanced, Technical, Informational, 'Gaming Oriented', etc.
 - How Important is each resource to the project? [Matrix]
 - How Critical is each resource to the project? [Matrix]

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

**For example**:
 - An Intel Core i9-9880H processor (8C/16T) can perform 432.2 GFLOPS (Giga, or Billion, Floating Point Operations per Second) when utilising ALL cores and ALL availabe SMT plus using extensive SIMD instructions. Typical computer code does not come close to this figure.

 - An AMD Radeon Pro 5500M (GPU: 1536 shaders) can perform ~4454 GFLOPS which is over 10x times the throughput.
 - Both of these devices are inside the Apple MacBook Pro 16"-inch (model: Late 2019).

![Comparison of CPU vs GPU Performance.](/images/Comparison001.png)

The Video RAM (GDDR5/6/6X/etc.) and/or *very high speed* Unified RAM available today, such as in a gaming console (Xbox Series S/X, PlayStation 5, etc.), or the RAM found in M1 Pro and M2 Pro (or better) Apple devices, also offers and backs 'local' storage when performing very large number calculations. GPUs have typically  had over 1024 'cores' or 'shaders' these days (prior to 2023) compared to just 8 'Performance' cores available within a typical 'good' computer CPU (processor).

# Crash Course

1. https://en.wikipedia.org/wiki/Metal_(API)
2. https://developer.apple.com/documentation/metal/developing_and_debugging_metal_shaders
3. https://developer.apple.com/documentation/metal/diagnosing_metal_programming_issues_early
4. https://developer.apple.com/documentation/metal/performing_calculations_on_a_gpu
5. https://developer.apple.com/documentation/metal/compute_passes
6. https://developer.apple.com/documentation/metal/buffers
7. https://developer.apple.com/documentation/metal/resource_fundamentals
8. https://developer.apple.com/documentation/metal/memory_heaps
9. https://developer.apple.com/documentation/metal/metal_sample_code_library
10. https://developer.apple.com/documentation/metal/gpu_devices_and_work_submission
11. https://developer.apple.com/metal/Metal-Shading-Language-Specification.pdf
12. https://developer.apple.com/metal/
13. https://developer.apple.com/documentation/metal/
14. https://developer.apple.com/metal/cpp/
15. https://developer.apple.com/metal/sample-code/
16. https://developer.apple.com/documentation/metalperformanceshaders/
17. https://developer.apple.com/documentation/metal/blit_passes
18. https://developer.apple.com/documentation/metal/indirect_command_encoding
19. https://developer.apple.com/library/archive/documentation/3DDrawing/Conceptual/MTLBestPracticesGuide/index.html#//apple_ref/doc/uid/TP40016642
20. s
21. t

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
3. https://developer.apple.com/documentation/metal/resource_loading
4. https://developer.apple.com/documentation/metal/using_function_specialization_to_build_pipeline_variants
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

# Miscellaneous Unsorted Resources from First Brainstorming Session
## (May contain duplicate links)

https://gist.github.com/mhamilt/a5c2bbb02684e5db362712c9be7a02ca

https://developer.apple.com/library/archive/documentation/Miscellaneous/Conceptual/MetalProgrammingGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40014221

https://developer.apple.com/metal/Metal-Feature-Set-Tables.pdf

https://twitter.com/k_kondrak/status/1094192063292297217

https://www.khronos.org/news/press/vulkan-applications-enabled-on-apple-platforms

https://developer.apple.com/videos/play/wwdc2020/10631

https://www.apple.com/au/newsroom/

https://arstechnica.com/gadgets/2014/06/apple-gets-heavy-with-gaming-announces-metal-development-platform/

https://web.archive.org/web/20171120014933/https://developer.apple.com/metal/

https://developer.apple.com/documentation/metal/resource_fundamentals/synchronizing_a_managed_resource

https://developer.apple.com/documentation/metal/resource_fundamentals/synchronizing_a_managed_resource

https://developer.apple.com/documentation/metal/gpu_devices_and_work_submission/setting_up_a_command_structure

https://web.archive.org/web/20171120014933/https://developer.apple.com/metal/

https://en.wikipedia.org/wiki/WebGPU

https://en.wikipedia.org/wiki/MoltenVK

https://en.wikipedia.org/wiki/Vulkan

https://en.wikipedia.org/wiki/DirectX#DirectX_12

https://en.wikipedia.org/wiki/OS_X_El_Capitan

https://developer.apple.com/videos/play/wwdc2022/10160

https://developer.apple.com/videos/play/wwdc2022/10066

‘Discover Metal 3’

https://developer.apple.com/documentation/metal/gpu_devices_and_work_submission

https://developer.apple.com/documentation/metalperformanceshaders

https://en.wikipedia.org/wiki/LLVM

https://en.wikipedia.org/wiki/Clang

https://en.wikipedia.org/wiki/C%2B%2B14

https://en.wikipedia.org/wiki/Shading_language

https://en.wikipedia.org/wiki/Compute_kernel

https://en.wikipedia.org/wiki/General-purpose_computing_on_graphics_processing_units

https://developer.apple.com/documentation/metal/metal_sample_code_library/customizing_a_tensorflow_operation

https://developer.apple.com/documentation/metal/hdr_content/processing_hdr_images_with_metal

https://developer.apple.com/documentation/metal/memory_heaps/implementing_a_multistage_image_filter_using_heaps_and_events

https://developer.apple.com/documentation/metal/memory_heaps/implementing_a_multistage_image_filter_using_heaps_and_fences

https://developer.apple.com/documentation/metal/buffers/rendering_terrain_dynamically_with_argument_buffers

https://developer.apple.com/documentation/metal/using_function_specialization_to_build_pipeline_variants

https://developer.apple.com/documentation/metal/gpu_devices_and_work_submission/multi-gpu_systems/transferring_data_with_infinity_fabric_link

https://developer.apple.com/documentation/metal/supporting_simulator_in_a_metal_app

https://developer.apple.com/documentation/metal/debugging_tools/capturing_metal_commands_programmatically

https://developer.apple.com/documentation/metal/metal_sample_code_library/mixing_metal_and_opengl_rendering_in_a_view

https://developer.apple.com/documentation/metal/metal_sample_code_library/migrating_opengl_code_to_metal

https://developer.apple.com/documentation/metal/metal_sample_code_library/selecting_device_objects_for_compute_processing (this)

https://developer.apple.com/documentation/metal/metal_sample_code_library/selecting_device_objects_for_graphics_rendering

https://developer.apple.com/documentation/metal/onscreen_presentation/creating_a_custom_metal_view



https://developer.apple.com/documentation/metal/shader_libraries/customizing_shaders_using_function_pointers_and_stitching

https://developer.apple.com/documentation/metal/shader_libraries/creating_a_metal_dynamic_library

https://developer.apple.com/documentation/metalfx/applying_temporal_antialiasing_and_upscaling_using_metalfx

https://developer.apple.com/documentation/metal/metal_sample_code_library/adjusting_the_level_of_detail_using_metal_mesh_shaders

https://developer.apple.com/documentation/metal/indirect_command_encoding/encoding_indirect_command_buffers_on_the_gpu

https://developer.apple.com/documentation/metal/buffers/encoding_argument_buffers_on_the_gpu

https://developer.apple.com/documentation/metal/buffers/using_argument_buffers_with_resource_heaps

https://developer.apple.com/documentation/metal/buffers/managing_groups_of_resources_with_argument_buffers

https://developer.apple.com/documentation/metal/compute_passes/processing_a_texture_in_a_compute_function  (Special Level 2 Texture Cache)

https://developer.apple.com/documentation/metal/compute_passes/processing_a_texture_in_a_compute_function

https://developer.apple.com/documentation/metal/resource_synchronization/synchronizing_cpu_and_gpu_work

https://developer.apple.com/documentation/metal/performing_calculations_on_a_gpu

https://developer.apple.com/videos/play/tech-talks/110339/

https://developer.apple.com/metal/tensorflow-plugin/

https://developer.apple.com/metal/cpp/

https://developer.apple.com/library/archive/documentation/3DDrawing/Conceptual/MTLBestPracticesGuide/index.html#//apple_ref/doc/uid/TP40016642

https://developer.apple.com/library/archive/documentation/3DDrawing/Conceptual/MTLBestPracticesGuide/PersistentObjects.html#//apple_ref/doc/uid/TP40016642-CH4-SW1

https://developer.apple.com/library/archive/documentation/Miscellaneous/Conceptual/MetalProgrammingGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40014221

https://developer.apple.com/documentation/metal/metal_enumerations (Only One!?)

https://developer.apple.com/documentation/metal/memory_heaps

https://developer.apple.com/documentation/metal/resource_synchronization


https://developer.apple.com/documentation/metal/developing_and_debugging_metal_shaders (Important and Critical)

https://developer.apple.com/documentation/metal/optimizing_performance_with_the_shader_profiler (Required Reading)


https://developer.apple.com/documentation/metal/using_function_specialization_to_build_pipeline_variants


https://developer.apple.com/documentation/metal/shader_libraries (Required Reading)

https://developer.apple.com/documentation/metal/diagnosing_metal_programming_issues_early (Important and Critical)


https://developer.apple.com/documentation/metal/tailor_your_apps_for_apple_gpus_and_tile-based_deferred_rendering (Think Long Term)

https://developer.apple.com/documentation/apple-silicon/porting-your-metal-code-to-apple-silicon

https://developer.apple.com/documentation/metal/gpu_counters_and_counter_sample_buffers


https://developer.apple.com/documentation/metal/performance_tuning

https://developer.apple.com/documentation/metal/debugging_tools (Required Reading)

https://developer.apple.com/documentation/metal/supporting_simulator_in_a_metal_app

https://developer.apple.com/documentation/metal/developing_metal_apps_that_run_in_simulator

https://developer.apple.com/documentation/metal/diagnosing_metal_programming_issues_early

https://developer.apple.com/documentation/metal/shader_libraries

https://developer.apple.com/documentation/metal/optimizing_performance_with_the_shader_profiler

https://developer.apple.com/forums/thread/698990 (Apple Forum Example)

https://en.wikipedia.org/wiki/ChatGPT (A.I. Assisted Development is a Thing Now!)

https://github.com/joshb/Metal-Swift

https://pocketnow.com/apple-m2-vs-pro-vs-max/

https://www.apple.com/au/macbook-pro-14-and-16/

https://en.wikipedia.org/wiki/Apple_M1
https://en.wikipedia.org/wiki/Apple_M2
https://en.wikipedia.org/wiki/Apple_silicon

 - https://en.wikipedia.org/wiki/RDNA_(microarchitecture)

2 CUs

One WGP encompasses 2 CUs. This allows significantly more compute power and memory bandwidth to be directed at a single workgroup. In RDNA, 1 CU is one half of a WGP.

 - https://rosenzweig.io/blog/asahi-gpu-part-4.html

 - https://www.techpowerup.com/gpu-specs/radeon-pro-5500m.c3463

 - https://gpuopen.com/wp-content/uploads/2019/08/RDNA_Architecture_public.pdf

 - https://en.wikipedia.org/wiki/RDNA_(microarchitecture)

Maths:
 - https://en.wikipedia.org/wiki/Horner%27s_method
 - https://en.wikipedia.org/wiki/Kolmogorov_complexity





Notebook Check:

 - https://www.notebookcheck.net/AMD-Radeon-Pro-5500M-GPU-Benchmarks-and-Specs.442754.0.html



Forbes:
 - https://www.forbes.com/sites/ewanspence/2023/03/21/apple-macbook-air-m3-15-inch-wwdc-macbook-pro-specs-leak/?sh=23da64755aec


 - https://stevenpcurtis.medium.com/coding-in-swift-playgrounds-1a5563efa089

