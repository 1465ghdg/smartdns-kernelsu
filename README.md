## 如何使用
> [!WARNING]
> magisk 环境未经测试

安装模块后正常重启, 此时smartdns启动, 证书生成

再次重启设备, 此时证书被挂载进系统信任的根证书目录, 可以正常使用DoH请求SmartDNS  
//其实实测挺玄学的, 一会儿信任一会儿不信任, ~~灵车说是~~ 也许是我设备的问题...?

配置文件位于 `/data/adb/smartdns/config/smartdns.conf`  
// 显然, 你可以无视项目的配置文件自己写, 但路径相关 ~~最好~~ 别改（
## 关于项目
因为写这个项目的原因是[原项目](https://github.com/x4455/smartdns-Android)太久没更新以及我不需要dns劫持, 广告过滤[^1]和arm架构的二进制文件[^2]，所以需要的话自己参照原项目改改罢（
## 项目使用的其他项目内容
原项目(启发, bin/ca-certificates.zip): [smartdns-Android](https://github.com/x4455/smartdns-Android)

bin/smartdns-aarch64 : [SmartDNS](https://github.com/pymumu/smartdns)

uninstall.sh : [box_for_magisk](https://github.com/taamarin/box_for_magisk)

post-fs-data.sh : [Magisk-ProxyPinCA](https://gitee.com/wanghongenpin/Magisk-ProxyPinCA)

customize.sh : [zerotier-magisk](https://github.com/eventlOwOp/zerotier-magisk)

[^1]: 那是mihomo该干的（
[^2]: 好吧有空还是整一下arm的支持吧(别急, 或者反正改起来很简单你自己改算了(确信))
