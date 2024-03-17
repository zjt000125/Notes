### Command Line Interface Definition

#### command

 https://github.com/colmap/colmap/blob/c0d8926841cf6325eb031c873eaedb95204a1845/src/colmap/exe/colmap.cc

line 89

![image-20240317001641939](.\images\image-20240317001641939.png)

bind a specific function to a specific cli

#### arguments

https://github.com/colmap/colmap/blob/c0d8926841cf6325eb031c873eaedb95204a1845/src/colmap/controllers/option_manager.h#L61

https://github.com/colmap/colmap/blob/c0d8926841cf6325eb031c873eaedb95204a1845/src/colmap/controllers/option_manager.cc#L477

line 70

![image-20240317004223564](./images/image-20240317004223564.png)

Default Value

![image-20240317004316550](./images/image-20240317004316550.png)

line 477

Define the command line arguments input

![image-20240317002640476](.\images\image-20240317002640476.png)

Using places

![image-20240317003539369](./images/image-20240317003539369.png)

### Mapper Command Analysis

#### Definition

https://github.com/colmap/colmap/blob/c0d8926841cf6325eb031c873eaedb95204a1845/src/colmap/exe/sfm.h

line 49

https://github.com/colmap/colmap/blob/c0d8926841cf6325eb031c873eaedb95204a1845/src/colmap/exe/sfm.cc#L185

line 185

reading sequence

line 262

https://github.com/colmap/colmap/blob/c0d8926841cf6325eb031c873eaedb95204a1845/src/colmap/controllers/incremental_mapper.cc#L459

line 192 run

![image-20240317005120410](images/image-20240317005120410.png)

line 459 Reconstruct

![image-20240317005219177](images/image-20240317005219177.png)

line 326 ReconstructSubModel

![image-20240317005349538](images/image-20240317005349538.png)

https://github.com/colmap/colmap/blob/c0d8926841cf6325eb031c873eaedb95204a1845/src/colmap/sfm/incremental_mapper.h#L62

line 62 IncrementalMapper

![image-20240317005844777](images/image-20240317005844777.png)

https://github.com/colmap/colmap/blob/c0d8926841cf6325eb031c873eaedb95204a1845/src/colmap/sfm/incremental_mapper.cc

The detail implement of incremental mapper



Back to the previous file https://github.com/colmap/colmap/blob/c0d8926841cf6325eb031c873eaedb95204a1845/src/colmap/controllers/incremental_mapper.cc#L459 line 338

line 255 InitializeReconstruction

![image-20240317011653089](images/image-20240317011653089.png)

