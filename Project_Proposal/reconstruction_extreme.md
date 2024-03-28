## Method pools

### Slam

* ORB-Slam-3 Improvement**(hard)**: https://github.com/zeal-up/ORB_SLAM_Tracking

* [Continuous Pose for Monocular Cameras in Neural Implicit Representation](https://github.com/qimaqi/Continuous-Pose-in-NeRF)
* [Gaussian Splatting SLAM](https://github.com/muskie82/MonoGS)

### Structure from Motion

* colmap failure analysis and improvement(Using deep matching and optical flow estimation) **(hard)**

* [Level-S2fM: Structure from Motion on Neural Level Set of Implicit Surfaces](https://github.com/henry123-boy/Level-S2FM_official)

* Metashape(software without code)

### Better Image Matching

* [DKM: Dense Kernelized Feature Matching for Geometry Estimation](https://github.com/Parskatt/DKM)

* [GIM: LEARNING GENERALIZABLE IMAGE MATCHER FROM INTERNET VIDEOS](https://github.com/xuelunshen/gim)

### Differentiable image matching and structure from motion

* [End2End Multi-View Feature Matching with Differentiable Pose Optimization](https://github.com/barbararoessle/e2e_multi_view_matching)

### Feedforward Method

* [PF-LRM](https://totoro97.github.io/pf-lrm/)

* [Dust3r](https://github.com/naver/dust3r) + [IronDepth](https://github.com/baegwangbin/IronDepth)

### Hand-Object Pose Estimation

* [gSDF](https://github.com/zerchen/gSDF)
* [Reconstructing Hand-Held Objects from Monocular Video](https://github.com/dihuangdh/HHOR)

* [HOLD: Category-agnostic 3D Reconstruction of Interacting Hands and Objects from Video](https://github.com/zc-alexfan/hold)

### Nerf+Optimization

* [FlowCam](https://github.com/cameronosmith/FlowCam)
* [BARF: Bundle-Adjusting Neural Radiance Fields](https://github.com/chenhsuanlin/bundle-adjusting-NeRF)
* [Local-to-Global Registration for Bundle-Adjusting Neural Radiance Fields(BARF Updated)](https://github.com/rover-xingyu/L2G-NeRF)
* [camp_zipnerf](https://github.com/jonbarron/camp_zipnerf)
* Improving Robustness for Joint Optimization of Camera Poses and Decomposed Low-Rank Tensorial Radiance Fields

### Inverse Rendering

* [Extracting Triangular 3D Models, Materials, and Lighting From Images](https://github.com/NVlabs/nvdiffrec)
* [Stanford-ORB: A Real-World 3D Object Inverse Rendering Benchmark](https://github.com/StanfordORB/Stanford-ORB?tab=readme-ov-file)

### Surface Normal Estimation

* [NDDepth: Normal-Distance Assisted Monocular Depth Estimation and Completion](https://github.com/ShuweiShao/NDDepth)

* [IronDepth: Iterative Refinement of Single-View Depth using Surface Normal and its Uncertainty](https://github.com/baegwangbin/IronDepth)
* [PolyMaX: General Dense Prediction with Mask Transformer](https://github.com/google-research/deeplab2)

### Depth Estimation Considering Scale

* [Range-Agnostic Multi-View Depth Estimation With Keyframe Selection](https://github.com/andreaconti/ramdepth?tab=readme-ov-file)

### Point Cloud Generation

* [Shape Generation and Completion Through Point-Voxel Diffusion](https://github.com/alexzhou907/PVD)
* 

### Gaussian Itselt Improvement

* [GaussianPro: 3D Gaussian Splatting with Progressive Propagation](https://github.com/kcheng1021/GaussianPro)
* [TRIPS: Trilinear Point Splatting for Real-Time Radiance Field Rendering](https://github.com/lfranke/trips)
* [Relaxing Accurate Initialization Constraint for 3D Gaussian Splatting](https://github.com/KU-CVLAB/RAIN-GS)
* [gaussian-mesh-splatting](https://github.com/waczjoan/gaussian-mesh-splatting)

### Random Idea

* 多传感器融合滤波---->多单目估计知识(e.g. depth, surface normal...)融合滤波

### Deep-learning Based Pose estimation

* [CAMERAS AS RAYS: POSE ESTIMATION VIA RAY DIFFUSION](https://github.com/jasonyzhang/RayDiffusion)

### better visualization

* 3d gaussian viewer with camera pose: https://github.com/lfranke/trips
* 

## Possible Improvements on Droid-Slam

- [ ] depth取消降采样
- [ ] mean和std固定参数修改
- [ ] 

## Experiment and Development Plan

- [x] 测试gaussian-splatting slam 在cup上的效果
- [x] 修改超参数，看看gaussian-splatting slam能否更好
- [x] 彻底看明白droid-slam各处细节
- [ ] 用debug模式跑一遍代码流程（graph初始化+key frame adding+key frame removal）
- [ ] 给droid-slam的优化过程加上mask，查看是否有提升
- [ ] 给droid-slam加上后端全局BA，查看效果是否有提升
- [ ] 根据论文描述，修改超参数测试droid-slam是否有提升
- [ ] 用optical-flow方法得到两视角匹配结果





