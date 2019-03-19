Wenlin Mao

* edX edge username: w6mao
* edX edge e-mail: w6mao@ucsd.edu

* Partner: Zi Wang

* URL:
https://lifan.s3.amazonaws.com/hw3/753f8b7fe5e130109a25f047109ec5d6/20190319064117/index.html

* Acceleration strcuture: Bounding volume hierarchy
We use bounding volume hierarchy to accelerate the algorithm. First, we pack each primitive into a bounding box, and we treat these boxes as new primitives. To construct the BVH tree, we take the vectors of all objects and combine their bounding box as the root bounding box. Then we partition them into 2 based on the midpoint of the x, y, z axis of the current bounding box. After that, we recursively traverse down the tree and partition left and right node of the root node. When reach to the end, we put the actual primitive to the BVHNode. In order to find intersection, we call bvhIntersect and search from root node and check whether the ray is intersect with the BVHNode. If not intersect with itself, then directly return default Intersection object which means no intersection, otherwise check recursively to the left and right children. If both children intersect, choose the one with closer intersection distance and return back. If only one intersection happened, directly return it back. If no intersection on both left and right, return not intersect with default Intersection object. In this way, we optimized the algorithm of finding intersection between objects from O(n) to O(log(n)) where n is the number of objects.

* Performance after add acceleration: <br>
![alt text](https://github.com/WenlinMao/Raytracer/blob/master/doc/performance.png?raw=true)

* EC attempts:
I tried with refraction and I think I get some of it to work. However, I don't really find a good way to test it completely. Here are several examples I tried by modifiying the original Scene 6. 

Transparent Ball on Left <br>
![alt text](https://github.com/WenlinMao/Raytracer/blob/master/result/scene6_left_test.png?raw=true)

Transparent Ball on Right <br>
![alt text](https://github.com/WenlinMao/Raytracer/blob/master/result/scene6_right_test.png?raw=true)
