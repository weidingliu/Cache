# cache
基于Xilinx FPGA的block ram的写直达与写回cache设计与配套的外部sram控制器
-----------------------------------------------
首先，这是一个阻塞式的cache，采用有限状态机进行设计，一个cache行有8个32bit数据，在cache读命中时需要两个时钟周期才能将数据返回，在读未命中时需要19个时钟周期（其中读取外部sram需要16个时钟，两个周期用于查询cache，一个周期用于将sram中的数据写回bram）

cache设计思路
==========================================



参考项目：
===========================
UltraMIPS_NSCSCC https://github.com/SocialistDalao/UltraMIPS_NSCSCC

