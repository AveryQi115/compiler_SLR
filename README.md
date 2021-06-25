# C-minus-compiler
同济大学编译原理课程设计类C编译器任务，实现了过程调用，生成mips汇编代码

## 支持的数据结构  
  
  - int  
  
  - void  
  
  - int/void func(parameter)  
  
  - int[]
  
## 支持的语句  
  
  - if语句  
  ```c
  if()
  {
      ...
  }
  else{
      ...
  }
  ```  

  - while语句  
  ```c
  while(){
      ...
  }
  ```  

  - 函数定义  
  ```c
  int demo(int a)
  {
      a=a+2;
      return a*2;
  }
  ```  
    
  - 不支持函数声明  
  ```c
  int demo(int a);
  ```
  
  - 支持数组声明  
  ```c
  int[] arr;
  ```
  
  - 支持数组元素赋值. 
  ```c
  arr[0] = 4;
  ```
  
  - 支持多维数组  
