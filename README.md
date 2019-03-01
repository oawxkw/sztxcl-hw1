# Homework 1
数字图像处理课程作业实验一

## Exp. tasks
试验任务

1. Bmp图像格式简介,以7.bmp为例说明；
2. 把lena 512*512图像灰度级逐级递减8-1显示；
3. 计算lena图像的均值方差；
4. 把lena图像用近邻、双线性和双三次插值法zoom到2048*2048；
5. 把lena和elain图像分别进行水平shear（参数可设置为1.5，或者自行选择）和旋转30度，并采用用近邻、双线性和双三次插值法zoom到2048*2048；

## File structures
文件说明

```
dist/
    hw1.html
    hw1.pdf
    hw1.tex
src/
    pic/
        7.bmp
        elain.bmp
        lena.bmp
    hw1.m
    hw1.mlx
hw1.pdf
hw1.txt
.gitignore
README.md
```

- The `dist/` directory contains complied reports, which have different types of file.
- The `src/` directory contains source code(`.mlx`: MATLAB live script) and source pictures. (since `.mlx` is a binary file, we save it as a `.m` file while pushing it)
- The `hw1.pdf` file is the homework 1 report file.
- The `hw1.txt` file is the homework 1 code file.
