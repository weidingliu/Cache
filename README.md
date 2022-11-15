基于Xilinx FPGA的block ram的写直达与写回cache设计与配套的外部sram控制器 这是一个阻塞式的cache，采用有限状态机进行设计，一个cache行有8个32bit数据，同时还有一个能连续读取256bit数据的外部sram控制器，sram的型号为AS7C34098A (256K x 16)(Alliance 4Mb Fast Asynchronous SRAM) ，工作在50MHz下。
## 目录介绍
|-----写回法cache+sram_carl     ##写回法的cache与sram控制器

|-----写直达cache+sram_carl     ##写直达法的cache与sram控制器

|-----design.md                          ##设计文档

## cache简要介绍
cache的基础行由block ram构成，目录中提供了xilinx的ip核。
### 读命中与读未命中 
写回法与写直达法的cache读命中时都需要2个时钟周期才能将数据返回，在读未命中时需要19个时钟周期。（其中读取外部sram需要16个时钟，两个周期用于查询cache，一个周期用于将sram中的数据写回bram） 

### 写命中与写未命中
在写回法cache写命中时，需要3个周期，读写未命中时需要19个时钟周期；（其中读取外部sram需要16个时钟，两个周期用于查询cache，一个周期用于将sram中的数据写回bram，写数据在写回bram的时候被写入）

在写直达的cache中，写命中时，需要19个时钟周期；（其中16个时钟周期用于写回sram，两个周期用于查询cache，一个周期用于写bram）写未命中时需要35个时钟周期。（其中16个时钟周期用于读取sram，16个用于写回sram，2个用于查询cache，一个用于写回bram）

## sram控制器简要介绍
为了满足外部sram芯片的时序要求，读写都需要经过两个时钟周期才操作完成。

## 设计细节见design.md

## 参考项目
UltraMIPS_NSCSCC [https://github.com/SocialistDalao/UltraMIPS_NSCSCC](https://github.com/SocialistDalao/UltraMIPS_NSCSCC)