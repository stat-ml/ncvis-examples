# ncvis-examples
Examples for [NCVis](https://github.com/alartum/ncvis) Python wrapper. 

|Notebook| Contents | 
|-------|:-----------|
|[sample.ipynb](https://nbviewer.jupyter.org/github/alartum/ncvis-examples/blob/master/sample.ipynb)  | Introduction to NCVis |
|[big-data.ipynb](https://nbviewer.jupyter.org/github/alartum/ncvis-examples/blob/master/big-data.ipynb)| Large-scale application case |

# Setup

## Conda [recommended]

You do not need to setup the environment if using *conda*, all dependencies are installed automatically. 
```bash
 $ conda install --file requirements-conda.txt
 ```

## Pip [not recommended]

**Important**: be sure to have a compiler with *OpenMP* support. *GCC* has it by default, which is not the case with *clang*. You may need to install *llvm-openmp* library beforehand.  

1. Install **numpy** and **cython** packages (compile-time dependencies):
    ```bash
    $ pip install numpy cython
    ```
2. Install other packages:
    ```bash
    $ pip install -r requirements-pip.txt
    ```


# Popular Datasets

Datasets can be dowloaded by using the *download.sh* script:
```bash
$ bash data/download.sh <dataset>
```
Replace *\<dataset\>* with corresponding entry from the table. You can also download all of them at once:
```bash
$ bash data/download.sh
```

 The datasets can be then accessed by using interfaces from the *data* Python module.

|Dataset| \<dataset\> | Dataset Class|
|-------|:-----------:|:------:|
|[MNIST](http://yann.lecun.com/exdb/mnist/)|mnist| MNIST|
|[Fashion MNIST](https://github.com/zalandoresearch/fashion-mnist)|fmnist| FMNIST|
|[Iris](https://archive.ics.uci.edu/ml/datasets/Iris)|iris|Iris|
|[Handwritten Digits](https://archive.ics.uci.edu/ml/datasets/optical+recognition+of+handwritten+digits)|pendigits|PenDigits|
|[COIL-20](http://www.cs.columbia.edu/CAVE/software/softlib/coil-20.php)|coil20|COIL20|
|[COIL-100](http://www1.cs.columbia.edu/CAVE/software/softlib/coil-100.php)|coil100|COIL100|
|[Mouse scRNA-seq](https://hemberg-lab.github.io/scRNA.seq.datasets/mouse/brain/)|scrna|ScRNA|
|[Statlog (Shuttle)](https://archive.ics.uci.edu/ml/datasets/Statlog+(Shuttle))|shuttle|Shuttle|

Each dataset can be used in the following way:

|Sample Code | Action |
|-----|--------|
|```d = data.MNIST()```| Load the dataset.|
|```ds.X```| Get the samples as numpy array of shape *(n_samples, n_dimensions)*. If samples have more than one dimension they are all flattened.|
|```ds.y```| Get the labels of the samples.|
|```len(ds)```| Get total number of samples.|
|```ds[0]```| Get 0-th pair *(sample, label)* from the dataset.|
|```ds.shape```| Get the original shape of the samples. For example, it equals to *(28, 28)* for MNIST. |