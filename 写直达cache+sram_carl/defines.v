`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/22 15:42:09
// Design Name: 
// Module Name: defines
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


///////////////全局宏定义
`define RstEnable 1'b1  //复位有效信号
`define RestDisable 1'b0// 复位信号无效
`define ZeroWord 32'h0000 //一个字的零信号
`define WriteEnable 1'b1 //写使能--有效
`define WriteDisable 1'b0//写使能--无效
`define ReadEnable 1'b1//读使能--有效
`define ReadDisable 1'b0//读使能--无效
`define AluOpBus 7:0//译码阶段 输出的alu操作码的宽度--8位，对应256条指令的位置
`define AluSelBus 2:0//译码阶段 输出的alu操作片选的宽度
`define InstValid 1'b0 //指令有效
`define InstInvalid 1'b1//指令无效
`define Stop 1'b1  //停机
`define NoStop 1'b0 //不停机
`define InDelaySlot 1'b1 //在延迟槽内
`define NotInDelaySlot 1'b0
`define Branch 1'b1  //分支真
`define NotBranch 1'b0 //分支假
`define InterruptAssert 1'b1//内陷指令
`define InterruptNotAssert 1'b0
`define TrapAssert 1'b1
`define TrapNotAssert 1'b0
`define True_v 1'b1       //逻辑真
`define False_v 1'b0      //逻辑假
`define ChipEnable 1'b1   //芯片使能
`define ChipDisable 1'b0 //芯片禁止
`define Single_issue 1'b1
`define Dual_issue 1'b0

///////通用寄存器的相关定义
`define RegAddrBus 4:0 //RegFile模块地址线宽度
`define RegBus 31:0 //Regfile模块数据线宽度
`define RegWidth 32//通用寄存器宽度
`define DoubleRegWidth 64
`define DoubleRegBus 63:0
`define RegNum 32   //寄存器的数量
`define RegNumLog2 5   //寄存器的地址位数
`define NOPRegAddr 5'b00000

`define InstAddrBus 31:0  /// ROM地址线宽度
`define InstBus 31:0  ///ROM数据线宽度


`define RstDisable 1'b0


`define START_IDIE 3'b 000
`define START_READ 3'b 001
`define START_WRITE 3'b 010
`define START_END 3'b 101

`define Log2 22

`define MEMready 1'b1
`define MEMNoready 1'b0

`define cache_lineBus 255:0

//数据存储器data_ram
`define DataAddrBus 31:0
`define DataBus 31:0
`define DataMemNum 131071
`define DataMemNumLog2 17
`define ByteWidth 7:0
`define DoubleDataBus 63:0


//cache
`define miss_hit 1'b0
`define hit 1'b1
`define RstEnable 1'b1  //复位有效信号
`define RestDisable 1'b0// 复位信号无效
`define Data_req 1'b0
`define Data_valid 1'b1
`define Data_invalid 1'b0


`define Look_UP 3'b000//地址转换，并且将地址给予相应的bram
`define Scanf_cache 3'b011 //查找cache数据
`define Miss_hit 3'b001//cache不命中，等待数据从rom中取出
`define Write_data 3'b010//将数据写回bram中
`define Write_ram 3'b110//将数据写回ram中




