## Structure

### python calling:

/home/jiantong/project/python/gaussian-splatting_pose_diff_debug/gaussian_renderer/__init__.py: 57, 91

**python package init function:**

/home/jiantong/project/python/gaussian-splatting_pose_diff_debug/submodules/diff-gaussian-rasterization/build/lib.linux-x86_64-cpython-37/diff_gaussian_rasterization/__init__.py: 171

**calling part:**

```python
from . import _C

num_rendered, color, radii, geomBuffer, binningBuffer, imgBuffer = _C.rasterize_gaussians(*args)

grad_means2D, grad_colors_precomp, grad_opacities, grad_means3D, grad_cov3Ds_precomp, grad_sh, grad_scales, grad_rotations = _C.rasterize_gaussians_backward(*args)
```

### Package building:

**setup.py**

```python
setup(

​    name="diff_gaussian_rasterization",

​    packages=['diff_gaussian_rasterization'],

​    ext_modules=[

​        CUDAExtension(

​            name="diff_gaussian_rasterization._C",

​            sources=[

​            "cuda_rasterizer/rasterizer_impl.cu",

​            "cuda_rasterizer/forward.cu",

​            "cuda_rasterizer/backward.cu",

​            "rasterize_points.cu",

​            "ext.cpp"],

​            extra_compile_args={"nvcc": ["-I" + os.path.join(os.path.dirname(os.path.abspath(__file__)), "third_party/glm/"), '-g', '-G'], 

​                                'cxx': ['-g']})

​        ],

​    cmdclass={

​        'build_ext': BuildExtension

​    }

)
```

**ext.cpp(define the interface for calling cuda part)**

```python
PYBIND11_MODULE(TORCH_EXTENSION_NAME, m) {

  m.def("rasterize_gaussians", &RasterizeGaussiansCUDA);

  m.def("rasterize_gaussians_backward", &RasterizeGaussiansBackwardCUDA);

  m.def("mark_visible", &markVisible);

}
```

### Cuda Code:

/home/jiantong/project/python/gaussian-splatting_pose_diff_debug/submodules/diff-gaussian-rasterization

#### rasterize_points.h

**Declared three functions:**

RasterizeGaussiansCUDA, RasterizeGaussiansBackwardCUDA, markVisible

**(Corresponding to the three interface in ext.cpp)**

#### rasterize_points.cu

**define the three functions in .h file:**

RasterizeGaussiansCUDA, RasterizeGaussiansBackwardCUDA, markVisible

##### RasterizeGaussiansCUDA:

call the function: **CudaRasterizer::Rasterizer::forward**

##### RasterizeGaussiansBackwardCUDA:

call the function: **CudaRasterizer::Rasterizer::backward**

##### markVisible:

call the function: **CudaRasterizer::Rasterizer::markVisible**



/home/jiantong/project/python/gaussian-splatting_pose_diff_debug/submodules/diff-gaussian-rasterization/cuda_rasterizer

#### rasterizer.h

**declare the three functions called in rasterize_points.cu:**

CudaRasterizer::Rasterizer::forward, 

CudaRasterizer::Rasterizer::backward, 

CudaRasterizer::Rasterizer::markVisible

#### rasterizer_impl.h

**declare the functions:**

obtain, required, 

**declare the structures:**

GeometryState, ImageState, BinningState

#### rasterizer_impl.cu

finish the definition of the functions and structures declared **in rasterizer_impl.h and rasterizer.h**

##### CudaRasterizer::Rasterizer::forward:

call the functions in order:

FORWARD::preprocess, FORWARD::render

##### CudaRasterizer::Rasterizer::backward

call the functions in order:
BACKWARD::render, BACKWARD::preprocess

#### forward.h

declare the FORWARD::preprocess, FORWARD::render

#### backward.h

declare the BACKWARD::render, BACKWARD::preprocess

#### forward.cu



#### backward.cu



## random

* when printing *matrix, I got only one value, not a 3X3 results, that's because the pointer point to the first element of the contiguous 3X3 elements, we can show the whole by index marix[1], matrix[2]...

* \#define NUM_CHANNELS 3 // Default 3, RGB

  \#define BLOCK_X 16

  \#define BLOCK_Y 16