SET NAMES UTF8;
DROP DATABASE IF EXISTS ibook;
CREATE DATABASE ibook CHARSET=UTF8;
USE ibook;

/**用户表**/
CREATE TABLE users(
    uid INT PRIMARY KEY AUTO_INCREMENT, /*用户编号*/
    uname VARCHAR(32),                  /*用户名-邮箱格式*/
    phone VARCHAR(11),                 	/*电话*/
    upwd VARCHAR(32)	               	/*密码*/
);
INSERT INTO users VALUES
(1, 'admin@126.com', '13501234567', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'test@qq.com', '13812345678', 'e10adc3949ba59abbe56e057f20f883e');

/*商品类别表*/
CREATE TABLE type(
    tid INT PRIMARY KEY AUTO_INCREMENT, /*类别编号*/
    tname VARCHAR(32)                    /*类别名称*/
);
INSERT INTO type VALUES
(1,'IT/互联网'),
(2,'小说'),
(3,'经典名著');

/*商品表*/
CREATE TABLE product(
    pid INT PRIMARY KEY AUTO_INCREMENT, /*商品编号*/
    typeId INT,                               /*商品类别*/
    title VARCHAR(32),                   /*商品名称*/
    title2 VARCHAR(64),                   /*副标题*/
    author VARCHAR(32),                 /*作者*/
    pubhouse VARCHAR(32),               /*出版社*/
    pubtime VARCHAR(32),                 /*出版时间*/
    pic VARCHAR(32),                     /*主图片*/
    price FLOAT(8,2),                    /*价格*/
    details VARCHAR(2048)                  /*详情*/
);
INSERT INTO product VALUES
(NULL,'1','JavaScript高级程序设计1','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/01.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'2','JavaScript高级程序设计2','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/02.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'3','JavaScript高级程序设计3','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/03.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'1','JavaScript高级程序设计4','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/04.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'2','JavaScript高级程序设计5','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/05.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'3','JavaScript高级程序设计6','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/06.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'1','JavaScript高级程序设计7','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/07.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'2','JavaScript高级程序设计8','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/08.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'3','JavaScript高级程序设计9','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/01.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'1','JavaScript高级程序设计10','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/02.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'2','JavaScript高级程序设计11','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/03.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>'),
(NULL,'3','JavaScript高级程序设计12','前端开发经典图书 JavaScript技术名著 web前端开发国内js第一书 掌握JavaScript编程艺术','[美] Nicholas C.Zakas 著；李松峰，曹力 译','人民邮电出版社','2012年3月','img-product/04.jpg','799.00','<img src="img-product/01-01.jpg" alt=""><p>作为JavaScript技术经典名著，《JavaScript高级程序设计》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。</p><p>《JavaScript高级程序设计》主要内容包括：</p><p>对JavaScript实现各个组成部分的详尽解读；</p><p>对JavaScript面向对象编程的全方位阐述；</p><p>对DOM、BOM及浏览器事件模型的透彻剖析；</p><p>Web应用基本数据格式JSON、XML及其存取；</p><p>Ajax、Comet服务器端通信和基于File API的拖放式文件上传；</p><p>HTML5涵盖的表单、媒体、Canvas（包括WebGL）；</p><p>离线应用及客户端存储（包括IndexedDB）；</p><p>新兴API及ECMAScript Harmony展望。</p>');

/**购物车表**/
CREATE TABLE cart(
    cid INT PRIMARY KEY AUTO_INCREMENT,/*购物车编号*/
    userId INT,         /*用户编号*/
    productId INT,       /*产品编号*/
    count INT     /*数量*/
);
