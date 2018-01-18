![Sandboxer](https://github.com/meilbn/Sandboxer-Objc/blob/master/Screenshots/Sandboxer_cover.jpg)

# Sandboxer

[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/meilbn/Sandboxer-Objc/blob/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/v/Sandboxer.svg)](https://github.com/meilbn/Sandboxer-Objc)
[![Language](https://img.shields.io/badge/language-Objective--C-brightgreen.svg)](https://developer.apple.com/documentation/objectivec)
[![Platform](https://img.shields.io/badge/platform-iOS-orange.svg)](https://www.apple.com/nl/ios/)
[![Support](https://img.shields.io/badge/support-iOS%207+%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)

<p align="center"><img src="https://github.com/meilbn/Sandboxer-Objc/blob/master/Screenshots/sandboxer_demo.gif" width="232" height="424"/></p>

# **[English](https://github.com/meilbn/Sandboxer-Objc#english)**

# 中文介绍

![](https://github.com/meilbn/Sandboxer-Objc/blob/master/Screenshots/Screenshot_CN_0.jpg)|![](https://github.com/meilbn/Sandboxer-Objc/blob/master/Screenshots/Screenshot_CN_1.jpg)|![](https://github.com/meilbn/Sandboxer-Objc/blob/master/Screenshots/Screenshot_CN_2.jpg)
:------:|:------:|:------:

Sandboxer 是用来在 iOS 设备上查看沙盒目录内容的，支持 3D Touch 预览，文件搜索等，方便调试，可以查看一些文件内容，也可以分享出来，方便在电脑上查看。

## 安装

### CocoaPods

0. 在 Podfile 中添加 ``pod 'Sandboxer'``。
1. 运行 ``pod install`` 或 ``pod update``。
2. 导入 \<Sandboxer/Sandboxer.h\>。

### 手动安装

1. 下载 Sandboxer 文件夹内所有源文件。
2. 将 Sandboxer 文件夹内所有源文件添加（拖入）到你的工程中。
3. 导入 ``Sandboxer.h``。

## 使用

- ``[[Sandboxer shared] trigger]``: 打开或关闭
- ``systemFilesHidden``: 隐藏系统文件（一般是以``.``开头的文件或目录），默认为 YES
- ``homeFileURL``: 主目录路径，默认为 ``Home Directory``
- ``homeTitle``: 主目录标题，默认为 ``Home``
- ``extensionHidden``: 是否隐藏文件后缀，默认不隐藏。隐藏的话，搜索是不会匹配文件后缀的
- ``shareable``: 是否可以分享，用来做权限控制，默认可以分享
- ``fileDeletable``: 是否可以删除文件，用来做权限控制，默认不可以删除
- ``directoryDeletable``: 是否可以删除文件夹，用来做权限控制，默认不可以删除

## 版本

- ``1.0.1``: 修复了使用 CocoaPods 导入库的时候，找不到资源 Bundle 的问题。
- ``1.0.0``: 第一版

## TODO

- 快捷关闭，而不用返回到主目录

## 系统要求

该项目最低支持 ``iOS 7.0+`` 和 ``Xcode 8.3.3``。

## 许可证

Sandboxer 使用 MIT 许可证，详情见 LICENSE 文件。

# English

![](https://github.com/meilbn/Sandboxer-Objc/blob/master/Screenshots/Screenshot_EN_0.jpg)|![](https://github.com/meilbn/Sandboxer-Objc/blob/master/Screenshots/Screenshot_EN_1.jpg)|![](https://github.com/meilbn/Sandboxer-Objc/blob/master/Screenshots/Screenshot_EN_2.jpg)
:------:|:------:|:------:

Sandboxer is use for browse files, file previews and 3D Touch, also search and share file.

## Installation

### CocoaPods

1. Add ``pod 'Sandboxer'`` to your Podfile.
2. Run ``pod install`` or ``pod update``.
3. Import \<Sandboxer/Sandboxer.h\>.

### Manually

1. Download all the files in the ``Sandboxer`` subdirectory.
2. Add the source files to your Xcode project.
3. Import ``Sandboxer.h``.

## Usage

- ``[[Sandboxer shared] trigger]``: Open or Close
- ``systemFilesHidden``: Hide system file or directory (Usually begin with ``.``), default is YES
- ``homeFileURL``: Home directory path URL, default is ``Home Directory``
- ``homeTitle``: Home directory view controller title, default is ``Home``
- ``extensionHidden``: Hide file extension, default is NO. If YES, will not match the file extension when searching
- ``shareable``: If can share file, use for permission control, default is YES
- ``fileDeletable``: If can delete file, use for permission control, default is NO
- ``directoryDeletable``: If can delete directory, use for permission control, default is NO

## Version

- ``1.0.1``: Fixed couldn't find resources bundle issue when using CocoaPods to import library.
- ``1.0.0``: First release.

## TODO

- Quick close without returning to the home directory

## Requirements

This library requires ``iOS 7.0+`` 和 ``Xcode 8.3.3``.

## License

Sandboxer is provided under the MIT license. See LICENSE file for details.

