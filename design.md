# Cache 设计
## Cache简介
阻塞式二路组相联Cache，大小为8KB，在写回法中，采用LRU替换策略，每个cache行有8个32bit数据，同时该项目中的cache适用于顺序双发射CPU，能够同时取出两条指令，本文只是介绍cache的实现思路，更加详细的细节在代码中。

注：还有一点需要说明的是，本人的cache设计思路借鉴了UItraMIPS_NSCSCC项目中的cache设计思路（https://github.com/SocialistDalao/UltraMIPS_NSCSCC）与（胡伟武. CPU设计实战. 机械工业出版社）

## 地址编码
组地址：物理地址[11:5]

## 写回法


## 写直达法



# Sram控制器设计