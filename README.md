# UIAutoAdaptKit
a useful tool to automatically adapt all iphone and ipad about UI layout

- 支持cocoapods :  ` pod 'UIAutoAdaptKit' `


## 一个能适配所有iphone和ipad的UI布局工具

- 结合 SnapKit 或者 frame 布局使用, 就能一套UI代码适配所有iOS设备.

         - autoWidth() : 两个view之间的宽度距离
         - autoHeight() : 两个view件之间的高度距离
         - autoLength() : 单个view之间的边长 (单个view的宽和高都必须使用这个,会自动适配)

- frame 布局:
```
        testView.frame = CGRect.init(x: autoWidth(20), y: autoHeihgt(20), width: autoLength(100), height: autoLength(100))
```

- SnapKit 布局: 

```
        testButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(-autoheight(50))
            make.centerX.equalToSuperview()
            make.width.equalTo(autoLength(100))
            make.height.equalTo(autoLength(30))
        }
```

