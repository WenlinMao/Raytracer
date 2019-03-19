#!/bin/bash

make clean
make

rm -f result/*.png

bin/raytracer test/scene4-ambient.test
bin/raytracer test/scene4-diffuse.test
bin/raytracer test/scene4-specular.test
bin/raytracer test/scene4-emission.test
bin/raytracer test/scene5.test
bin/raytracer test/scene6.test
bin/raytracer test/scene7.test

rm -f result/*.zip

zip -r result/hw3.zip result/scene4-ambient.png result/scene4-diffuse.png result/scene4-specular.png result/scene4-emission.png result/scene5.png result/scene6.png result/scene7.png