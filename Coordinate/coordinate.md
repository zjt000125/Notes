[TOC]

### Colmap

 **右手系** 

x 轴指向右侧，y 轴指向下方，z 轴指向相机前方

pose: **world to camera**

### Nerf Origin

**右手系**

相机系：x 轴指向右侧，y 轴指向上方，z 轴指向相机前方反方向

世界系：z轴指向上方

pose: **camera to world**

### Open3d

**right hand**

x 轴指向右侧，y 轴指向上方，z 轴指向相机前方反方向

pose: **camera to world**

### 3D Gaussian Splatting

整理后的数据：

```python
# world to camera, but R is transposed, T is the original
sceneLoadTypeCallbacks = {

    "Colmap": readColmapSceneInfo,

    "Blender" : readNerfSyntheticInfo, 

    "Customer" : readCustomerSceneInfo

}
```

