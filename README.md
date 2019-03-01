# Homework 1
数字图像处理课程作业实验一

## Exp. tasks
实验任务

1. Bmp图像格式简介,以7.bmp为例说明；
2. 把lena 512*512图像灰度级逐级递减8-1显示；
3. 计算lena图像的均值方差；
4. 把lena图像用近邻、双线性和双三次插值法zoom到2048*2048；
5. 把lena和elain图像分别进行水平shear（参数可设置为1.5，或者自行选择）和旋转30度，并采用用近邻、双线性和双三次插值法zoom到2048*2048；

## File structures
文件结构说明

```
dist/
    hw1-2.png
    hw1-4a.png
    hw1-4b.png
    hw1-5a.png
    hw1-5b.png
    hw1-5c.png
    hw1-5d.png
    hw1.pdf
src/
    pic/
        7.bmp
        elain.bmp
        lena.bmp
    hw1.m
.gitignore
README.md
hw1.pdf
hw1.txt
```

- The `dist/` directory contains all complied reports and pictures.
- The `src/` directory contains all source code and source pictures.
- The `hw1.pdf` file is the homework 1 report file, same as `dist/hw1.pdf`.
- The `hw1.txt` file is the homework 1 code file, same as `src/hw1.m`.
