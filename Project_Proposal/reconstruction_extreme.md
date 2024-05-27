## Method pools

### Estimate pose from reference image and object point cloud

https://arxiv.org/pdf/2305.15727.pdf

https://arxiv.org/pdf/2306.07598.pdf

https://arxiv.org/pdf/2304.01382.pdf

https://arxiv.org/pdf/2310.01897v1.pdf

https://arxiv.org/pdf/2304.07691.pdf

### Slam

* ORB-Slam-3 Improvement**(hard)**: https://github.com/zeal-up/ORB_SLAM_Tracking

* [Continuous Pose for Monocular Cameras in Neural Implicit Representation](https://github.com/qimaqi/Continuous-Pose-in-NeRF)

* [Gaussian Splatting SLAM](https://github.com/muskie82/MonoGS)

* 线特征匹配：https://www.guyuehome.com/41328
  https://github.com/cnqiangfu/PL-VINS
  https://github.com/HarborC/PL-SLAM
  https://www.researchgate.net/publication/366597909_EPLF-VINS_Real-Time_Monocular_Visual-Inertial_SLAM_With_Efficient_Point-Line_Flow_Features
  https://github.com/LeiXu1999/EPLF-VINS
  https://www.bilibili.com/video/BV1hi42197qR/?spm_id_from=333.337.search-card.all.click&vd_source=9eb54f838d1c72399ca56992c0d0a079
  https://github.com/LIJIANcoder97/PL-SLAM-MONO-OPENCV4

* 光流+orbslam2

  https://www.bilibili.com/video/BV1ZA411Z7TE/?spm_id_from=333.337.search-card.all.click&vd_source=9eb54f838d1c72399ca56992c0d0a079

  https://www.bilibili.com/video/BV1pR4y1y7T3/?spm_id_from=333.788.recommend_more_video.-1&vd_source=9eb54f838d1c72399ca56992c0d0a079
  https://blog.csdn.net/weixin_70026476/article/details/127155145

  https://gitcode.net/weixin_70026476/orb-slam2

* [Dense RGB SLAM With Neural Implicit Maps](https://github.com/HKUST-3DV/DIM-SLAM)

### Structure from Motion

* colmap failure analysis and improvement(Using [deep matching](https://github.com/3DOM-FBK/deep-image-matching) and optical flow estimation) **(hard)**

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

## Experiment and Development Plan

- [x] 完成连续帧跟踪代码
- [x] 采集杯子和易拉罐正面照片
- [x] 图片分割
- [x] 完成最高质量生成（cup）
- [x] 以原始代码为基础开发视频跟踪类
  - [x] 完成表面法线渲染
  - [x] 完成可微边缘提取
  - [x] 完成损失函数计算部分

- [x] 处理杯子数据（裁剪大小保证fov和instantmesh一致）
- [ ] 实现pose读取与显示
- [ ] 实现多张图像读取和图像id下拉窗口，测试根据id保存所读取的图像
- [ ] 实现GUI旁图像显示
- [ ] 实现渲染比较图像实时显示
- [ ] 实现一键微调按钮
- [ ] 添加读图片步长设置按钮，实现一键多帧跟踪/暂停按钮

cp -r /home/jiantong/project/python/diff-dope /home/jiantong/project/python/Interactive-Object-Tracking-And-Reconstruction



