#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>
#include <wiringPiSPI.h>
//spi使用前的准备 返回spi的文件描述符
int initSPI()
{
  int spiFd; //spi的文件描述符
  //初始化所用到的IO引脚
  
  //初始化SPI通道0，并设置为最大速度32000000
  spiFd=wiringPiSPISetup(0,500000); 
  if(spiFd==-1)
  {
    printf("init spi failed!\n");
  }
}


int main()
{
  char Data[10]={1,2,3,4,5,6,7,8,9,10};   //定义读写的数据,在该数据被写入的时候，同时也从总线中读出数据
  int i=0;
  //初始化wiringPI的库函数
  if(wiringPiSetup()<0)
  {
    printf("init wiringPi error\n");
  }
  initSPI();  //spi的初始化
  while(1)
  {  
char send_data[10]={5,6,7,4,1,2,7,8,9,10};
wiringPiSPIDataRW(0,send_data,7);  //向总线中写入&个数据

printf("read spi data is:\n");  //读出总线的数据

//打印读出的数据,如果将MISO和MOSI短接：打印出 0 1 2 3 4 5 6 7 8 9 10   其中后三个是数组的本身内容 接收到了数据
//如果将MISO和MOSI断开：打印出                0 0 0 0 0 0 0 0 8 9 10   没有接收到数据
for(i=0;i<10;i++)
{
printf("%d\n",Data[i]);
}
printf("\n");
delay(5);
  }
 return 0;
}