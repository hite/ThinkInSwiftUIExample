# ThinkInSwiftUI
ThinkInSwiftUI 目录如下，配套代码目录和书籍目录保持一致

# 目录

* [作者序](PREFACE.md) *预估 2 页*
* [导言](README.md) *预估 1 页*
* 第一章： SwiftUI 的前世今生 *预估 20 页*
    * App 开发环境概述
        * 理解和接受 Apple 产品和 Apple 开发理念
            * Swift Evolution
    * SwiftUI 出世之前的 Apple 的 App 开发方式
        * 理清 CocoaTouch，Objective - C 和 Swift 关系
        * Native、Hybird 、ReactNative的历史演进
        * xib，storyboard 的历史地位
    * iOS 领域之外，Android、Web 领域大事记
        * Flutter
        * Kotlin
        * Vue 和 React.js 
    * SwiftUI 目标和愿景
        * 吸引更多 iOS 开发新手入门
        * 跟随潮流的跨平台方案 
    * 开发 App ，还需要 SwiftUI 之外的技术
        * 那些你必须掌握的知识 
* 第二章： 赏析 Avocado Toast 例子 *预估 15 页*
    * 在运行 Avocado Toast 之前的准备工作
    * Avocado Toast 剖析
    * SwiftUI 是怎么运行起来的
        * Preview 的实现原理猜想 
    * 理解 SwiftUI DSL 设计和其原理
* 第三章：了解 SwiftUI 的组件库的架构  *预估 20 页*
    * SwiftUI 组件库设计
        * 精简的内置组件库
        * 如何编写自定义的组件
        * 组件行为的绑定和关联
    * SwiftUI 里的布局系统设计
        * 传统的布局系统，AutoLayout \ ReactNative \ CSS3
        * SwiftUI 自带设计系统（design system）
    * 使用 Path 实现自定义绘图功能
    * SwiftUI 为 App 开发带来了新的开发范式
        * 以界面的基本开发单元
        * 双向绑定和数据驱动
    * 引入第三方组件
* 第四章：让数据在界面里流动起来  *预估 30 页*
    * 认识 Combine 框架
        * 响应式编程的起源和优缺点
            * 缺点：占用更多的内存，不好调试 
        * 响应式数据处理 框架 Combine
        * 为什么要用响应式开发模式
    * @State@ObservedObject@Binding@EnvironmentObject 联系和区别
        * @PropertyWrapper 是怎么工作的？
        * @State@ObservedObject@Binding@EnvironmentObject的区别
    * 这里不得不提来自 React.js 领域的 Redux
        * React.js 里 Redux 解决的哪些问题？
        * SwiftUI 是否有相同的问题
    * 更多的第三方状态管理
* 第五章：用 SwiftUI 构建大型项目 *预估 10 页*
    * 更好的 SwiftUI App 架构
        * 源码组织方式
        * Redux + SwiftUI 
    * 处理网络请求和本地文件
    * 合理组件化 / 模块化开发
    * SwiftUI 里单元测试带来了那些变化 
        * It’s a self-contained view;  更容易测试
        * PreviewProvider 善用
* 第六章： the SwiftUI Zen Garden 计划   *预估 5 页*
    * 回顾 YanxuanHD 源码
    * SwiftUI Zen Garden 计划实施方案
* 跋 *预估 5 页*
    * 专用名词解释
    * 关于示例代码
    * 致谢 
    * 参考

共计 110 页
