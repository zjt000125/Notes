[TOC]

### Dev Plan

- [x] test if the code can run successfully
- [x] understand the argument input mechanism
- [x] find all the content about poses
- [x] implement the Cameramodel class
- [x] test if it's ok to move viewpoint_stack out of loops
- [x] make the pose variables differentiable by changing the Camera class in original code
- [x]  understand the sparf pose representation, and use it in 3d gaussian
- [x] Use blender dataset as gt, choose 2 ordered frames for testing 
- [ ] finish the pose estimation using local gaussian
- [ ] save the camera pose into the nerfstudio format
- [ ] visualize the camera pose and see if it's reasonable



 The optimization loop for incremental pose estimation and 3d-gaussian altenatively:

1. optimize the 3d-gaussian using the first frame for n iterations
2. optimize the second pose using the 3d-gaussian learnt from the first frame and before

The optimization loop for pose estimation and 3d-gaussian jointly:



### random

- [ ] modify the code for depth-2-point to one camera per time
- [ ] use two pictures to train the gaussian, check the point cloud fused situation
- [ ] Write the transformers.json of N identity matrix
- [ ] Use depth_anything to finetune the suitable scale to generate good point cloud for the first frame



### Image Processing pipeline

* video shotting
* convert .mov to .mp4 and save
* extract key frames using local maximum
* use Xmem2 to get sementation
* 
