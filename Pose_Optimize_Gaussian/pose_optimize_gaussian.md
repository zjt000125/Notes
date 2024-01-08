[TOC]

### Dev Plan

- [x] test if the code can run successfully
- [x] understand the argument input mechanism
- [x] find all the content about poses
- [ ] implement the Cameramodel class
- [ ] test if it's ok to move viewpoint_stack out of loops
- [ ] make the pose variables differentiable by changing the Camera class in original code
- [ ]  understand the sparf pose representation, and use it in 3d gaussian
- [ ] Use blender dataset as gt, choose three ordered frames for testing 
- [ ] add small random perturbations to the second frame pose, try to use the gaussian to optimize the pose
- [ ] train the gaussian-splatting, optimize the pose and gaussian jointly, save the poses after each iteration. 
- [ ] visualize the pose optimization process during the training