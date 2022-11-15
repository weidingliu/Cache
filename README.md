# cache
基于Xilinx FPGA的block ram的写直达与写回cache设计与配套的外部sram控制器 这是一个阻塞式的cache，采用有限状态机进行设计，一个cache行有8个32bit数据，同时还有一个能连续读取256bit数据的外部sram控制器，sram的型号为AS7C34098A (256K x 16) 

##cache设计思路
###读命中与读未命中 
写回法与写直达法的cache读命中时都需要两个时钟周期才能将数据返回，在读未命中时需要19个时钟周期。（其中读取外部sram需要16个时钟，两个周期用于查询cache，一个周期用于将sram中的数据写回bram） 

###写命中与写未命中
在写回法cache写命中时，需要三个周期，读写未命中时需要19个时钟周期。（其中读取外部sram需要16个时钟，两个周期用于查询cache，一个周期用于将sram中的数据写回bram，写数据在写回bram的时候被写入）

在写直达的cache中，写命中时，需要

##sram控制器设计思路

##参考项目
UltraMIPS_NSCSCC [https://github.com/SocialistDalao/UltraMIPS_NSCSCC](https://github.com/SocialistDalao/UltraMIPS_NSCSCC)

