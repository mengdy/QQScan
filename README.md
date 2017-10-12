# ScanDemo

多种类型的扫码，生成二维码，简单调用

![image](https://github.com/honeycao/ScanDemo/blob/master/ScanDemo.gif) 

##介绍

* 仿照QQ、支付宝、微信扫码样式做的，所以一共有3种类型选择，不过最完整的是QQ类型

* QQ扫码页面 支持扫描本地图片、开灯扫描、以及生成自己的二维码

* 扫码完成后，暂时是跳转一个页面以文字形式来显示扫描的内容，并没有做到跳到相关内容的页面

##手动安装

直接把`ScanLib`拖入项目中即可

##调用
```obj-c
//在某个viewcontroller中添加头文件，并调用下述方法即可
#import "BeforeScanSingleton.h"

[[BeforeScanSingleton shareScan] ShowSelectedType:AliPayStyle WithViewController:self];
```
##注意事项

* 必须要添加一个预编译文件`pch`（如何添加百度解决一切）

```obj-c
#ifndef PrefixHeader_pch
#define PrefixHeader_pch

#ifdef __OBJC__
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#endif

#endif
```

* ####在ScanLib文件夹下：

    * `BeforeScanSingleton` 是直接用于调用的； 
    
    * `ScanResultViewController` 是写的一个扫码成功后的跳转页面，如果要自定义其他页面，直接修改这个；
    
    * `logo.JPG` 是生成自己的二维码时放在最中间的一个小型图片，如果需要自定义可以替换这个图片，最好不修改名字，这样就不用改动其他地方

##备注
> 是在大神们的基础上改善而来，自己写的只是其中个别比较常见的类型，现在贴上最初来源：https://github.com/MxABC/LBXScan （欢迎 stat ）

> I am a rookie ，I am not God （有建议或想法请q：331864805 ，你的点赞是我最大的动力）
