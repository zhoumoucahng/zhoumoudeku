/*
 Navicat Premium Data Transfer

 Source Server         : localmysql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : shinebookshop

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 21/01/2024 18:45:11
*/
DROP DATABASE IF EXISTS shinebookshop ;
CREATE DATABASE shinebookshop CHARACTER SET utf8;
use shinebookshop ;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `passWord` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lastLoginTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` VALUES (2, 'admin', 'admin', '测试', '2024-01-21 18:42:10');

-- ----------------------------
-- Table structure for s_book
-- ----------------------------
DROP TABLE IF EXISTS `s_book`;
CREATE TABLE `s_book`  (
  `bookId` int NOT NULL AUTO_INCREMENT,
  `catalogId` int NOT NULL,
  `bookName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `author` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `press` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `price` double(10, 2) NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `imgId` int NOT NULL,
  `addTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`bookId`) USING BTREE,
  INDEX `s_book_ibfk_1`(`catalogId`) USING BTREE,
  INDEX `s_book_ibfk_2`(`imgId`) USING BTREE,
  CONSTRAINT `s_book_ibfk_1` FOREIGN KEY (`catalogId`) REFERENCES `s_catalog` (`catalogId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `s_book_ibfk_2` FOREIGN KEY (`imgId`) REFERENCES `s_uploadimg` (`imgId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_book
-- ----------------------------
INSERT INTO `s_book` VALUES (7, 10, 'Python基础教程（第2版 修订版）', '[挪] Magnus Lie Hetland', '人民邮电出版社', 57.50, '《图灵程序设计丛书：Python基础教程（第2版 修订版）》包括Python程序设计的方方面面，首先从Python的安装开始，随后介绍了Python的基础知识和基本概念，包括列表、元组、字符串、字典以及各种语句。然后循序渐进地介绍了一些相对高级的主题，包括抽象、异常、魔法方法、属性、迭代器。此后探讨了如何将Python与数据库、网络、C语言等工具结合使用，从而发挥出Python的强大功能，同时介绍了Python程序测试、打包、发布等知识。结尾，作者结合前面讲述的内容，按照实际项目开发的步骤向读者介绍了几个具有实际意义的Python项目的开发过程。\r\n　　《图灵程序设计丛书：Python基础教程（第2版 修订版）》内容涉及的范围较广，既能为初学者夯实基础，又能帮助程序员提升技能，适合各个层次的Python开发人员阅读参考。', 21, '2022-10-20 04:04:05');
INSERT INTO `s_book` VALUES (8, 10, 'Python核心编程（第3版）', '[美] Wesley Chun', '人民邮电出版社', 74.80, '《Python核心编程（第3版）》是经典畅销图书《Python核心编程（第二版）》的全新升级版本，总共分为3部分。第1部分为讲解了Python的一些通用应用，包括正则表达式、网络编程、Internet客户端编程、多线程编程、GUI编程、数据库编程、Microsoft Office编程、扩展Python等内容。第2部分讲解了与Web开发相关的主题，包括Web客户端和服务器、CGI和WSGI相关的Web编程、Django Web框架、云计算、高级Web服务。第3部分则为一个补充/实验章节，包括文本处理以及一些其他内容。　　《Python核心编程（第3版）》适合具有一定经验的Python开发人员阅读。', 22, '2022-10-21 04:00:48');
INSERT INTO `s_book` VALUES (9, 10, '现代操作系统（原书第3版）', '[荷] Andrew S.Tanenbaum', '机械工业出版社', 59.20, '《计算机科学丛书：现代操作系统（原书第3版）》是操作系统领域的经典之作，与第2版相比，增加了关于Linux、Windows Vista和Symbian操作系统的详细介绍。书中集中讨论了操作系统的基本原理，包括进程、线程、存储管理、文件系统、输入/输出、死锁等，同时还包含了有关计算机安全、多媒体操作系统、掌上计算机操作系统、微内核、多核处理机上的虚拟机以及操作系统设计等方面的内容。此外，还在第2版的基础上对部分习题进行了增删，更有助于读者学习和对知识的理解及掌握。\r\n　　《计算机科学丛书：现代操作系统（原书第3版）》适合作为高等院校计算机专业操作系统课程教材，也是设计、开发操作系统的重要参考书。', 23, '2022-10-21 04:07:11');
INSERT INTO `s_book` VALUES (10, 10, 'C Primer Plus 第6版', '[美] 史蒂芬·普拉达（Stephen Prata）', '人民邮电出版社', 62.70, '《C Primer Plus（第6版）中文版》详细讲解了C语言的基本概念和编程技巧。 \r\n《C Primer Plus（第6版）中文版》共17章。第1、2章介绍了C语言编程的预备知识。第3~15章详细讲解了C语言的相关知识，包括数据类型、格式化输入/输出、运算符、表达式、语句、循环、字符输入和输出、函数、数组和指针、字符和字符串函数、内存管理、文件输入输出、结构、位操作等。第16章、17章介绍C预处理器、C库和高级数据表示。本书以完整的程序为例，讲解C语言的知识要点和注意事项。每章末设计了大量复习题和编程练习，帮助读者巩固所学知识和提高实际编程能力。附录给出了各章复习题的参考答案和丰富的参考资料。 \r\n《C Primer Plus（第6版）中文版》可作为C语言的教材，适用于需要系统学习C语言的初学者，也适用于巩固C语言知识或希望进一步提高编程技术的程序员。', 24, '2022-10-21 04:10:10');
INSERT INTO `s_book` VALUES (11, 10, 'Java编程思想（第4版）', '[美] Bruce Eckel ', '机械工业出版社', 86.40, '《计算机科学丛书：Java编程思想（第4版）》赢得了全球程序员的广泛赞誉，即使是晦涩的概念，在BruceEckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌握。\r\n　　从《计算机科学丛书：Java编程思想（第4版）》获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。本书共22章，包括操作符、控制执行流程、访问权限控制、复用类、多态、接口、通过异常处理错误、字符串、泛型、数组、容器深入研究、JavaI/O系统、枚举类型、并发以及图形化用户界面等内容。这些丰富的内容，包含了Java语言基础语法以及高级特性，适合各个层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设计语言以及Java语言的好教材和参考书。\r\n　　《计算机科学丛书：Java编程思想（第4版）》特点：\r\n　　适合初学者与专业人员的经典的面向对象叙述方式，为更新的JavaSE5/6增加了新的示例和章节。\r\n　　测验框架显示程序输出。\r\n　　设计模式贯穿于众多示例中：适配器、桥接器、职责链、命令、装饰器、外观、工厂方法、享元、点名、数据传输对象、空对象、代理、单例、状态、策略、模板方法以及访问者。\r\n　　为数据传输引入了XML，为用户界面引入了SWT和Flash。\r\n　　重新撰写了有关并发的章节，有助于读者掌握线程的相关知识。\r\n　　专门为第4版以及JavaSE5/6重写了700多个编译文件中的500多个程序。\r\n　　支持网站包含了所有源代码、带注解的解决方案指南、网络日志以及多媒体学习资料。\r\n　　覆盖了所有基础知识，同时论述了高级特性。\r\n　　详细地阐述了面向对象原理。\r\n　　在线可获得Java讲座CD，其中包含BruceEckel的全部多媒体讲座。\r\n　　在网站上可以观看现场讲座、咨询和评论。\r\n　　专门为第4版以及JavaSE5/6重写了700多个编译文件中的500多个程序。\r\n　　支持网站包含了所有源代码、带注解的解决方案指南、网络日志以及多媒体学习资料。\r\n　　覆盖了所有基础知识，同时论述了高级特性。\r\n　　详细地阐述了面向对象原理。', 25, '2022-10-21 04:13:35');
INSERT INTO `s_book` VALUES (12, 10, '数据库系统概念（原书第6版）', '[美] Abraham Silberschatz', '机械工业出版社', 69.80, '《数据库系统概念（原书第6版）》是经典的数据库系统教科书《Database System Concepts》的新修订版，全面介绍数据库系统的各种知识，透彻阐释数据库管理的基本概念。本书内容丰富，不仅讨论了关系数据模型和关系语言、数据库设计过程、关系数据库理论、数据库应用设计和开发、数据存储结构、数据存取技术、查询优化方法、事务处理系统和并发控制、故障恢复技术、数据仓库和数据挖掘，而且对性能调整、性能评测标准、数据库应用测试和标准化、空间和地理数据、时间数据、多媒体数据、移动和个人数据库管理以及事务处理监控器、事务工作流、电子商务、高性能事务系统、实时事务系统和持续长时间的事务等高级应用主题进行了广泛讨论。\r\n　　《数据库系统概念（原书第6版）》既可作为高年级本科生或低年级研究生的数据库课程教材，也可供数据库领域的技术人员参考。', 26, '2022-10-21 04:16:36');
INSERT INTO `s_book` VALUES (13, 10, '计算机网络（原书第6版）', '[美] 库罗斯（James F.Kurose）', '机械工业出版社', 61.10, '《计算机网络：自顶向下方法（原书第6版）》第1版于12年前出版，首创采用自顶向下的方法讲解计算机网络的原理和协议，出版以来已被几百所大学和学院选用。是业界经典的计算机网络教材之一。\r\n　　《计算机网络：自顶向下方法（原书第6版）》继续保持了以前版本的特色，为计算机网络教学提供了一种新颖和与时俱进的方法。\r\n　　同时也进行了相当多的修订和更新：第1章更多地关注时下，更新了接入网的论述；第2章用Python替代了Java来介绍套接字编程；第3章补充了用于优化云服务性能的TCP分岔知识；第4章有关路由器体系结构的内容做了大量更新；第5章重新组织并新增了数据中心网络的内容；第6章更新了无线网络的内容以反映其全新进展；第7章进行了较大修订，深入讨论了流式视频，包括了适应性流和CDN的讨论；第8章进一步讨论了端点鉴别；等等。另外，书后习题也做了大量更新。\r\n　　《计算机网络：自顶向下方法（原书第6版）》适合作为本科生或研究生“计算机网络”课程的教材，同时也适合网络技术人员、专业研究人员阅读。', 27, '2022-10-21 04:19:41');
INSERT INTO `s_book` VALUES (14, 10, 'JavaScript高级程序设计 ', '[美] Nicholas C.Zakas', '人民邮电出版社', 72.90, '作为JavaScript技术经典名著，《JavaScript高级程序设计（第3版）》承继了之前版本全面深入、贴近实战的特点，在详细讲解了JavaScript语言的核心之后，条分缕析地为读者展示了现有规范及实现为开发Web应用提供的各种支持和特性。\r\n　　《JavaScript高级程序设计（第3版）》主要内容包括：\r\n　　对JavaScript实现各个组成部分的详尽解读；\r\n　　对JavaScript面向对象编程的全方位阐述；\r\n　　对DOM、BOM及浏览器事件模型的透彻剖析；\r\n　　Web应用基本数据格式JSON、XML及其存取；\r\n　　Ajax、Comet服务器端通信和基于File API的拖放式文件上传；\r\n　　ECMAScript 5定义的新核心语言特性；\r\n　　HTML5涵盖的表单、媒体、Canvas（包括WebGL）；\r\n　　Selectors、Web? Workers、地理定位及跨文档传递消息等新API；\r\n　　离线应用及客户端存储（包括IndexedDB）；\r\n　　维护、性能、部署相关的开发实践；\r\n　　新兴API及ECMAScript Harmony展望。\r\n　　《JavaScript高级程序设计（第3版）》适合有一定编程经验的Web应用开发人员阅读，也可作为高校及社会实用技术培训相关专业课程的教材。', 28, '2022-10-21 04:24:36');
INSERT INTO `s_book` VALUES (15, 10, '鸟哥的Linux私房菜', '鸟哥', '人民邮电出版社', 68.30, '《鸟哥的Linux私房菜 （基础学习篇 第三版）》是颇具知名度的Linux入门书《鸟哥的Linux私房菜：基础学习篇》的全新版，全面而详细地介绍了Linux操作系统。全书分为5个部分：第一部分着重说明Linux的起源及功能，如何规划和安装Linux主机；第二部分介绍Linux的文件系统、文件、目录与磁盘的管理；第三部分介绍文字模式接口shell和管理系统的好帮手shell脚本，另外还介绍了文字编辑器vi和vim的使用方法；第四部分介绍了对于系统安全非常重要的Linux账号的管理，以及主机系统与程序的管理，如查看进程、任务分配和作业管理；第五部分介绍了系统管理员(root)的管理事项，如了解系统运行状况、系统服务，针对登录文件进行解析，对系统进行备份以及核心的管理等。\r\n　 　《鸟哥的Linux私房菜 （基础学习篇 第三版）》内容丰富全面，基本概念的讲解非常细致，深入浅出。各种功能和命令的介绍，都配以大量的实例操作和详尽的解析。本书是初学者学习Linux不可多得的一本入门好书。', 29, '2022-10-21 04:27:41');
INSERT INTO `s_book` VALUES (16, 10, 'Linux集群和自动化运维', '余洪春', '机械工业出版社', 62.40, '本书是Linux运维领域公认的经典畅销书《构建高可用Linux服务器》的姊妹篇，是积笔者多年的经验结晶和*佳实践，也是笔者多年以来的一线运维工作的总结和心血。 \r\n　　本书*大的特点就是与实践紧密结合，所有理论知识、方法、技巧和案例都来自实际环境，涵盖了生产环境下的Shell和Python脚本、Pupet自动化配置管理及Python自动化运维（Fabric及Ansible）、高可用Linux集群构建及亿级PV网站架构设计等主题。笔者在传统运维的基础上，结合了现阶段*流行的AWS云计算运维技术，跟大家分享了流行的Linux集群和自动化运维知识体系，方便大家结合自己的实际工作场景来设计自己网站的系统架构。 ', 30, '2022-10-21 04:30:06');
INSERT INTO `s_book` VALUES (17, 11, '自在独行', '贾平凹', '时代华语国际', 28.10, '平凹先生素来喜静，最怕有人来敲他的房门。让他觉得自在的，要么就是行走于西北的大地，要么就是隐居在自己的书房。\r\n　　先生其实也喜欢热闹，只是先生的热闹并不是灯火灿烂，而是内心的安宁与独行的自在。\r\n　　这本书写情感、聊爱好、谈社会、说人生。有俗世的智慧，也有生活的趣味。\r\n　　对于匆匆的路人，平凹先生这部文集只是用来附庸风雅的玩物。但这本书却要写给生命的行者。愿他们能懂得孤独的真义，在生活里多一些从容潇洒。', 31, '2022-10-21 04:33:58');
INSERT INTO `s_book` VALUES (18, 11, '皮囊', '蔡崇达', '天津人民出版社', 31.40, '《皮囊》是一部有着小说阅读质感的散文集，也是一本“认心又认人”的书。。\r\n　　作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个福建渔业小镇上的风土人情和时代变迁，在这些温情而又残酷的故事中一一体现。用《皮囊》这个具有指向本质意味的书名，来表达作者对父母、家乡的缅怀，对朋友命运的关切，同时也回答那些我们始终要回答的问题。\r\n　　书中收录有《皮囊》《母亲的房子》《残疾》《重症病房里的圣诞节》《我的神明朋友》《张美丽》《阿小和阿小》《天才文展》《厚朴》《海是藏不住的》《愿每个城市都不被阉割》《我们始终要回答的问题》《回家》《火车伊要开往叨位》等14篇作品。\r\n　　其中《皮囊》一文中的阿太，一位99岁的老太太，没文化，是个神婆。她却教给作者具有启示力量的生活态度：“肉体是拿来用的，不是拿来伺候的。”\r\n　　《母亲的房子》里，母亲想要建一座房子，一座四楼的房子，因为“这附近没有人建到四楼，我们建到了，就真的站起来了”。为了房子，她做苦工，捡菜叶，拒绝所有人的同情，哪怕明知这座房子不久后会被拆毁，只是为了“这一辈子，都有家可归”。\r\n　　而《残疾》里的父亲，他离家、归来，他病了，他挣扎着，全力争取尊严，然后失败，退生为孩童，最后离去。父亲被照亮了。被怀着厌弃、爱、不忍和怜惜和挂念，艰难地照亮。就在这个过程中，作者长大成人。自70后起，在文学书写中，父亲形象就失踪了。而蔡崇达的书里，这个形象重新出现了。\r\n　　这部特别的“新人新作”，由韩寒监制，上市之初即广受好评。莫言、白岩松、阿来、阎连科等评价为当下写作中的一个惊喜。或许《皮囊》真是新生的＂非虚构＂写作林地里，兀自展现的一片完全与众不同、可读可思、独具样貌的林木。', 32, '2022-10-21 04:36:58');
INSERT INTO `s_book` VALUES (19, 11, '看见', '柴静', '广西师范大学出版社', 25.10, '《看见》是知名记者和主持人柴静讲述央视十年历程的自传性作品，既是柴静个人的成长告白书，某种程度上亦可视作中国社会十年变迁的备忘录。\r\n　　十年前她被选择成为国家电视台新闻主播，却因毫无经验而遭遇挫败，非典时期成为现场记者后，现实生活犬牙交错的切肤之感，让她一点一滴脱离外在与自我的束缚，对生活与人性有了更为宽广与深厚的理解。十年之间，非典、汶川地震、两会报道、北京奥运……在每个重大事件现场，几乎都能发现柴静的身影，而如华南虎照、征地等刚性的调查报道她也多有制作。在书中，她记录下淹没在宏大叙事中的动人细节，为时代留下私人的注脚。一如既往，柴静看见并记录下新闻中给她留下强烈生命印象的个人，每个人都深嵌在世界之中，没有人可以只是一个旁观者，他人经受的，我必经受。书中记录下的人与事，是他们的生活，也是你和我的生活。', 33, '2022-10-21 04:38:54');
INSERT INTO `s_book` VALUES (20, 11, '白说', '白岩松', '长江文艺出版社', 23.00, '《白说》是央视新闻人白岩松继《幸福了吗》《痛并快乐着》之后的全新作品，一部“自传”式的心灵履历。通过近年来于各个场合与公众的深入交流，以平等自由的态度，分享其世界观和价值观。时间跨度长达十五年，涵盖时政、教育、改革、音乐、阅读、人生等多个领域，温暖发声，理性执言。\r\n　　在有权保持沉默的年纪拒绝沉默，为依然热血有梦的人们敲鼓拨弦。尽管“说话不是件好玩的事儿”，依然向往“说出一个更好点儿的未来”，就算“说了白说”，可是“不说，白不说”。', 34, '2022-10-21 04:40:46');
INSERT INTO `s_book` VALUES (21, 11, ' 活着', '余华', '北京十月文艺出版社', 26.30, '《活着》是当代作家余华的代表作，讲述了一个人历尽世间沧桑和磨难的一生，亦将中国大半个世纪的社会变迁凝缩其间。《活着》还讲述了眼泪的宽广和丰富；讲述了绝望的不存在；讲述了人是为了活着本身而活着的，而不是为了活着之外的任何事物而活着。\r\n《活着》出版25年来打动了无数读者，经过时间的沉淀，已成为20世纪中国文学当之无愧的经典之作。到今天，已被译介至英、法、德、意、日、韩、俄等30多个国家和地区，获得国内外多个文学大奖，余华也凭借这部作品于2004年获得法兰西艺术和骑士文化勋章。', 35, '2022-10-21 04:43:33');
INSERT INTO `s_book` VALUES (22, 11, '草房子（2016版）', '曹文轩', '江苏凤凰少年儿童出版社', 12.80, '《草房子》是曹文轩的一部讲究品位的少年长篇小说。作品写了男孩桑桑刻骨铭心，终身难忘的六年小学生活。六年中，他亲眼目睹或直接参与了一连串看似寻常但又催人泪下、感动人心的故事：少男少女之间毫无瑕疵的纯情，不幸少年与厄运相拼时的悲怆与优雅，残疾男孩对尊严的执著坚守，垂暮老人在最后一瞬间所闪耀的人格光彩，在死亡体验中对生命的深切而优美的领悟，大人们之间扑朔迷离且又充满诗情画意的情感纠葛……', 36, '2022-10-21 04:46:42');
INSERT INTO `s_book` VALUES (23, 11, '行走的人生', '俞敏洪', '人民邮电出版社', 38.30, '生活中的俞敏洪爱读书、旅行、运动，也爱思考和写作。本书集结了俞敏洪新近创作的散文随笔，质朴的语言中展现着生活与生命的智慧。商场上，他攻坚克难，激情澎湃；生活中，他沉静细腻，满怀诗意。了解俞敏洪之所以成为俞敏洪的原因，或许比阅读单纯的励志经历更有价值。\r\n　　全书分为旅行游记、读书笔记、生活感悟、人生经历、谈教育、谈文化发展等六章，虽是“闲话”，却可读出“小呆萌”和“大智慧”。旅途他乡遇故知，初识大冰相见恨晚，病卧床头思考不辍，回首往事感悟人生，遇社会问题仍赤心不改。俞敏洪的人生印证了那句话，为君子行万里路，而不忘初衷。', 37, '2022-10-21 04:48:43');
INSERT INTO `s_book` VALUES (24, 11, '读者2022年夏季卷', '读者编辑部', '读者杂志社', 20.50, '《读者合订本（2017年夏季卷总636-641期）》坚持“博采中外、荟萃精华、启迪思想、开阔眼界”的办刊宗旨，遵循“选择《读者》，就是选择了优秀的文化”这一办刊理念，发掘人性中的真、善、美，体现人文关怀。在刊物内容及形式方面与时俱进，追求高品位、高质量，力求精品，并以其形式和内容的丰富性及多样性，赢得了各个年龄段和不同阶层读者的喜爱与拥护。', 38, '2022-10-21 04:50:49');
INSERT INTO `s_book` VALUES (25, 11, '好吗好的', '大冰', '湖南文艺出版社', 26.90, '善良是一种天性，善意是一种选择。\r\n善意能消戾，善意能得缘，善意能带业往生，善意能回头是岸。\r\n善意能够帮人捕捉并建立起独特的幸福感。\r\n好吗好的，是一句自度度人的自问自答，也是一份坦然随缘的善意。\r\n\r\n《好吗好的》——百万级销量作家大冰2016年新书。在冷的地方，写就暖心的、真实的、善意的、舍不得读完的江湖故事。\r\n\r\n《好吗好的》中的江湖故事，铺满牵引你踏上归程的乡愁、给你盔甲也给你软肋的爱意，又有回头是岸的浪子，有深沉执着的兄弟，有既做事又做梦还做自己的男人和兰之猗猗、幽幽其香、五“毒”俱全的美少女壮士。\r\n他们的故事是真实生活，他们存在于这个世界上。用能量强大的小宇宙为你冲破刻板冰冷的生活壁垒，让你看到那些你永远无法去体会的生活，见识那些可能你永远都无法结交的人。他们用行动教会你善意对待世界、对待生活、对待他人，同时也善意地对待自己。\r\n他们走在你的前面，为你指路，为你鼓气，也为你照亮前进的方向。\r\n\r\n《好吗好的》这是一本超超超超值的书。\r\n除了读到暖心、深情，让你咂咂称奇的故事之外，它还可以听。\r\n《好吗好的》一书中的每篇文章后，都缀有音乐二维码，送给你共计数十首有钱也买不到的原创民谣。\r\n《好吗好的》还送给你一道北极光！只要你是大冰的读者，就有机会得到一张远洋船票，目的地是——北极！食宿全包！带上《好吗好的》，去地球上冷的地方，读暖的故事，好吗好的！', 39, '2022-10-21 04:53:03');
INSERT INTO `s_book` VALUES (26, 11, '人生最美是清欢', '林清玄', '北京十月文艺出版社', 31.30, '林清玄2016年全新散文集，也是其创作45年来首部人生主题的手绘古风图文集。\r\n\r\n全书48篇经典篇目，由千万网友精心甄选而成，横跨林清玄四十五载创作生涯，能代表林清玄作品风格和思想智慧。全书共分为六辑，包括人间有味、活在当下、随遇而安、天寒露重、不忘初心、从容一生等六大人生主题。\r\n\r\n选篇既包括《温一壶月光下酒》《清欢》《白雪少年》《吾心似秋月》等经久流传的典藏篇目，亦包含高考阅读试题《红心番薯》《光之四书》等早期经典作品，其中《光之香》《无风絮自飞》等篇目已入选全国高考语文试卷。\r\n\r\n林清玄用数十载的人生经历和生活智慧不断思考和探讨人生的价值和意义。清欢是一种生活姿态，是一种寻找自我的方式，是一种至高的人生境界，它并非来自别处，而是来自我们对平静、疏淡、简朴生活的追求和热爱。\r\n\r\n在复杂的世界里，愿我们做一个简单的人，放下执念，不浮不躁，不慌不忙，以清净心看世界，以欢喜心过生活，淡定从容地过好每一天。', 40, '2022-10-21 04:54:51');
INSERT INTO `s_book` VALUES (27, 14, '现代汉语词典', '中国社会科学院语言研究所词典编辑室 ', '商务印书馆', 76.30, '《现代汉语词典》自1978年正式出版以来做过多次修订，以适应社会的发展，更好地反映现代汉语词汇新面貌，体现有关学科研究的新成果，落实国家有关语言文字方面的新规范。\r\n本次修订，主要内容为：全面落实2013年6月由国务院公布的《通用规范汉字表》；增收近几年涌现的新词语400多条，增补新义近100项，删除少量陈旧和见词明义的词语；根据读者和专家意见对700多条词语的释义、举例等做了修订', 41, '2022-10-29 20:43:53');
INSERT INTO `s_book` VALUES (28, 14, '新华字典', '商务印书馆', '商务印书馆', 16.40, '《新华字典（双色本）（第11版）》根据国家语文规范和标准修订，收单字13000多个。以字统词，收带注解的词语3300多个。释义准确，例证精当，内容丰富，简明实用。正文按音序排列，备有部首检字表；内有综合插图和附录。', 42, '2022-10-29 20:45:38');
INSERT INTO `s_book` VALUES (29, 14, '古汉语常用字字典（第5版）', '商务印书馆', '商务印书馆', 27.90, '《古汉语常用字字典》由著名语言学家王力、岑麒祥、林焘、戴澧、唐作藩、蒋绍愚等十余位专家学者编写，是学习古汉语的必备工具书。本字典自1979年出版以来，深受广大读者欢迎。第5版延续了第4版的特色：专家学者主持、参与修订；释义quan威，审音准确，例句精当，难懂例句附有注解和串讲；专设“注意”“辨析”内容，对疑难字词加以提示和辨析；附录实用，《中国历代纪元表》《古代汉语语法简介》《怎样学习古代汉语》等附录，可供读者学习参考。本次修订在常用义项的增补、释义的完善、字音的审订、例句的更新和体例的完备方面做了很多工作，可谓在第4版的基础上精益求精，质量更上一层楼。\r\n主要修订：\r\n（一）增加字的义项。如“小”字在义项①“小。与‘大’相对”下增加了“又小人，卑鄙的人”义项（《诗经·邶风·柏舟》：“忧心悄悄，愠于群～。”）。又如“幸”字在义项④“君主到某处去”下增加了“又君主宠幸妇女”义项（《史记·项羽本纪》：“今入关财物无所取，妇女无所～。”）。再如“暧”字叠用时，在原有义项“昏暗不明的样子”的基础上，增加了“隐隐约约的样子”（陶潜《归田园居》诗：“～～远人村，依依墟里烟。”）和“温暖的样子”（王维《赠裴十迪》诗：“～～日暖闺，田家来致词。”）两个义项。\r\n（二）完善释义。如“哇”字义项②“靡曼之音”，第5版改为“淫邪的音乐”，更通俗易懂。又如“晞”字义项②“天明”，第5版改为“天色微明”，释义更精准。再如“携”字义项②“分离”，第5版改为“分离，离间”，释义更准确。\r\n（三）调整字音。如“岭２”字义项①［岭巆（ｈōｎｇ）］“山深的样子”，第5版把“巆”的注音改为“yínɡ”，这是因为：“巆”《集韵》有两读：“巆，岭巆，山深貌。呼宏切。”“嵤，岭嵤，山深貌。或从营。玄扃切。”《王力古汉语字典》取前一音，亦可；但这里“岭巆”是叠韵联绵字，则当取后一音。\r\n（四）更新例句。如“璆”字义项①“同‘球’。美玉”的例句原为“《国语·晋语四》：‘籧篨蒙～。’”改为“刘琨《重赠卢谌》诗：‘握中有悬璧，本自荆山～。’”，改后的例句能更好地帮助读者理解释义。又如“讼”字义项⑤“通‘颂’。歌颂，颂扬”的例句原为“《韩非子·人主》：‘背左右之～。’”，改为“《汉书·王莽传上》：‘深～莽功德。’”，这个例句里的“颂”做谓语，是它作为动词的主要语法功能，比原来的例句更典型。再如“毋”字的义项②“无，没有”的例句原为“《韩非子·显学》：‘儒侠～军劳。’”改为“《管子·度地》：‘山之沟，一有水，一～水者，命曰谷水。’原例句在不清楚上下文的情况下不好理解，改后的例句则“毋水”和“有水”对举，意思非常清楚。\r\n（五）修改引书体例。如《史记》按原书篇名标写，合传、类传用全称，不分标举（例如《史记·西门豹传》改为《史记·滑稽列传》）。又如《盐铁论》《潜夫论》《世说新语》《颜氏家训》等统删作者。再举一个例子，“噏”字义项②和“歙”字义项②的书证都是《老子》：“将欲～之，必固张之”，第4版在“噏”字下注明“河上公本”，第5版在“歙”字下增加了“王弼本”，这样读者就很清楚这两处用字的不同是版本的区别。\r\n（六）根据《通用规范汉字表》对字头及正文用字做了全面的调整，表外字不做类推简化', 43, '2022-10-29 20:47:06');
INSERT INTO `s_book` VALUES (30, 16, '爆裂', '[美] 伊藤穰一，杰夫·豪', '中信出版集团', 61.80, '正如威廉·吉布森指出：“未来已来，只是尚未流行。”《爆裂》便是来自未来的明信片。 \r\n越是在发生重大改变的时刻，越是会出现两极分化，赢家、输家有时只在一念间。未来已经装上了全新的操作系统。这是一个重大升级，对我们而言，随之而来的则是陡峭的学习曲线。在指数时代，替换旧逻辑，我们的思维亟需与世界对接，推翻过去已经成为大众所接受的常识，学会差异化思考才能屹立不倒，不被卷入历史的洪流。 \r\n涌现优于*、拉力优于推力、指南针优于地图、风险优于安全、违抗优于服从、实践优于理论、多样性优于能力、韧性优于力量以及系统优于个体。在《爆裂》一书中，伊藤穰一和杰夫·豪将这一逻辑提炼为９大原则，帮助人们驾驭这一动荡时刻，应对当下的挑战。 \r\n麻省理工学院媒体实验室聚集了全世界的创造性人才，被誉为实现寓言的地方。《爆裂》一书则包含了非凡的案例研究和来自麻省理工学院媒体实验室等机构的前沿研究和哲学理念，它将帮助你适应这个难以预测的世界，并获得成功。', 44, '2022-10-29 20:50:39');
INSERT INTO `s_book` VALUES (31, 16, '影响力（经典版）', '[美] 罗伯特·B.西奥迪尼', '北京联合出版公司', 52.20, '自出版以来，《影响力》就一直是畅销佳作。由于它的影响，劝说得以成为一门科学。无论你是普通人还是为某一产品或事业观点游说的人，这都是一本最基本的书，是你理解人们心理的基石。\r\n在这本书中，心理学家罗伯特 西奥迪尼博士为我们解释了为什么有些人极具说服力，而我们总是容易上当受骗。隐藏在冲动地顺从他人行为背后的6大心理秘笈，正是这一切的根源。那些劝说高手们，总是熟练地运用它们，让我们就范。', 45, '2022-10-29 20:52:06');
INSERT INTO `s_book` VALUES (32, 17, '夏洛的网（新）', '[美] E·B·怀特 ', '上海译文出版社', 16.40, '在朱克曼家的谷仓里，快乐地生活着一群动物，其中小猪威尔伯和蜘蛛夏洛建立了真挚的友谊。然而，一个丑陋的消息打破了谷仓的平静：威尔伯未来的命运竟然是成为熏肉火腿。作为一只猪，悲痛绝望的威尔伯似乎只能接受任人宰割的命运，然而，看似渺小的夏洛却说：“我救你。”于是，夏洛用自己的丝在猪栏上织出了被人类视为奇迹的网络文字，并彻底逆转了威尔伯的命运，终于让它在集市的大赛中赢得了特别奖项和一个安享天年的未来。可这时，蜘蛛夏洛的命运却走到了尽头……E·B·怀特用他幽默的文笔，深入浅出地讲了这个很有哲理意义的故事，关于爱，关于友情，关于生死……', 46, '2022-10-29 20:54:49');
INSERT INTO `s_book` VALUES (33, 17, '窗边的小豆豆（新版）', '[日] 黑柳彻子', '南海出版公司', 24.80, '《窗边的小豆豆》讲述了作者黑柳彻子上小学时的一段真实的故事。\r\n小豆豆因淘气被原学校退学后，来到巴学园。在小林校长的爱护和引导下，一般人眼里“怪怪”的小豆豆逐渐成了一个大家都能接受的孩子，并奠定了她一生的基础。\r\n《窗边的小豆豆》不仅带给全世界千万读者无数的笑声和感动，而且为现代教育的发展注入了新的活力，成为20世纪全球有影响力的作品之一。', 47, '2022-10-29 20:56:12');
INSERT INTO `s_book` VALUES (34, 17, '稻草人', '叶圣陶 ', '中国少年儿童出版社', 13.50, '《能打动孩子心灵的中国经典童话：稻草人》是新中国首部为儿童而写的童话集，作者叶圣陶也是中国现代童话创作的拓荒者。他的童话构思新颖独特，描写细腻逼真，富于现实内容。本书收录了叶圣陶中短篇童话作品十余篇。《能打动孩子心灵的中国经典童话：稻草人》通过一个富有同情心的稻草人的所见所思，真实地描写了二十世纪二十年代中国农村风雨飘摇的人间百态。在《古代英雄的石像》里，被雕刻成英雄像的大石块受到人们的敬仰，骄傲起来，看不起垫在它底下的小石块；石像终归倒下来摔成碎石，被人们铺成一条有用的小路。', 48, '2022-10-29 20:57:34');
INSERT INTO `s_book` VALUES (35, 17, '三毛流浪记全集', '张乐平', ' 少年儿童出版社', 28.50, '《三毛流浪记全集（彩图注音读物）》所描述的三毛所生活的那个时代，已经成为了过去，但是了解过去，了解历史，却是每个人都必须完成的一份答卷。因为了解过去，了解历史可以让成长的脚步更沉着、更坚实，可以让视野更宽广，心胸更博大。\r\n　　在一个人成长的过程中，除了新鲜的空气，灿烂的阳光以外，更需要的冷静的思考，以及心灵的感动和震撼，而这些，在阅读三毛的时候，我们都能够得到。\r\n　　三毛已经永远地沉淀在无数人成长的记忆中，相信在未来的岁月里，三毛依然会带给我们许多宝贵的东西，让我们体验苦难和不幸，也学会同情，学会关怀和珍爱。\r\n　　《三毛流浪记全集（彩图注音读物）》为什么经久不衰？因为它有益于人们的心灵。柯灵先生在香港版序言中写道：“《三毛流浪记全集（彩图注音读物）》是一部很有趣味的小人书，也是一部给成人看的警世书。三毛身上，背负着沉重的历史阴影，也带了深刻的历史启示，向世界呼唤和平，呼唤公正，呼唤仁慈，呼唤同情，呼唤人道，呼唤文明！”\r\n　　所幸的是，三毛不单只是流浪，他始终与时代的脉搏同步。在上个世纪的作十年代，三毛已经是个爱科学、学法律的孩子了。\r\n　　张乐平先生生前曾说，三毛是他献给全国少年儿童的礼物。我们希望三毛不断有新的故事告诉热爱他的读者，成为孩子们永远长不大的好伙伴。《三毛流浪记全集（彩图注音读物）》利用电脑技术对原画精心着色，并配以详尽的文字解说和注音，以达到图文并茂的效果。', 49, '2022-10-29 20:59:36');
INSERT INTO `s_book` VALUES (36, 18, '新编百姓最爱家常菜2888例', '双福，朱太治 等', '化学工业出版社', 37.80, '本书精选百姓很爱吃的美味家常菜、滋补汤煲、花样家常主食，每道菜均配精美成品大图，配以步骤图详解，详细介绍每道家常菜的具体做法，并对每个菜的口味、烹饪难度、操作时间进行贴心提示。本书按照蔬菜类、菌菇类、豆类及豆制品、肉类、海鲜类、蛋奶类分类排序，方便读者使用检索。随书赠送超长120分钟VCD光盘，看大厨演绎美味佳肴！', 50, '2022-10-29 21:02:36');
INSERT INTO `s_book` VALUES (37, 18, '中国地图', '中国地图出版社 ', '中国地图出版社 ', 2.90, NULL, 51, '2022-10-29 21:03:39');
INSERT INTO `s_book` VALUES (38, 21, '万历十五年（增订本）', '[美] 黄仁宇 ', '中华书局', 17.10, '《万历十五年》是一部改变中国人阅读方式的经典，是美籍华裔历史学家黄仁宇先生的成名之作，也是他的代表作之一，融会黄先生数十年人生经验与治学体会于一体，首次以“大历史观”分析明代社会之症结，观察现代中国之来路，发人深思。\r\n　　《万历十五年》英文本被美国多所大学采用为教科书，并两次获得美国书卷奖历史类好书的提名；中文本问世后，好评如潮，成为众多作家、学者、企业家、高校师生的案头书，并入选《新周刊》和《书城》“改革开放20年来对中国影响较大的20本书”。另有日文、法文、德文、韩文等版本。\r\n　　万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，表面看来虽似末端小节，但实质上却是以前发生大事的症结，也是将在以后掀起波澜的机缘。在历史学家黄仁宇的眼中，其间的关系因果，恰为历史的重点，而我们的大历史之旅，也自此开始……\r\n　　这次中华书局特别推出增订新版，重新核校全部文字，进行修订。为了使更多读者阅读这本书，特别推出了定价18元的版本，以惠及天下读书人。', 52, '2022-10-29 21:14:15');
INSERT INTO `s_book` VALUES (39, 21, '人类简史：从动物到上帝', '【以色列】尤瓦尔·赫拉利', ' 中信出版社', 45.30, '《人类简史 从动物到上帝》是以色列新锐历史学家的一部重磅作品。从十万年前有生命迹象开始到21世纪资本、科技交织的人类发展史。十万年前，地球上至少有六个人种，为何今天却只剩下了我们自己？我们曾经只是非洲角落一个毫不起眼的族群，对地球上生态的影响力和萤火虫、猩猩或者水母相差无几。为何我们能登上生物链的顶端，最终成为地球的主宰？\r\n　　从认知革命、农业革命到科学革命，我们真的了解自己吗？我们过得更加快乐吗？我们知道金钱和宗教从何而来，为何产生吗？人类创建的帝国为何一个个衰亡又兴起？为什么地球上几乎每一个社会都有男尊女卑的观念？为何一神教成为为广泛接受的宗教？科学和资本主义如何成为现代社会重要的信条？理清影响人类发展的重大脉络，挖掘人类文化、宗教、法律、国家、信贷等产生的根源。这是一部宏大的人类简史，更见微知著、以小写大，让人类重新审视自己。', 53, '2022-10-29 21:15:59');
INSERT INTO `s_book` VALUES (40, 21, '毛泽东选集', '毛泽东', ' 人民出版社', 58.50, '《毛泽东选集(套装全4册)(普及本)》包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著人，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。\r\n　　下面有几点属于出版事务的声明：\r\n　　首先，现在出版的这个选集，还是不很完备的。由于国民党反动派对于革命文献的毁灭，由于在长期战争中革命文献的散失，我们现在还不能够找到毛泽东同志的全部著作，特别是毛泽东同志所写的许多书信和电报（这些在毛泽东同志著作中占很大的部分）。\r\n　　第二，有些曾经流行的著作，例如《农村调查》，遵照著者的意见，没有编入；又如《经济问题与财政问题》，也遵照著者的意见，只编进了其中的《关于过去工作的基本总结》一章。\r\n　　第三，选集中作了一些注释。其中一部分是属于题解的，附在各篇首页的下面；其他部分，有属于政治性质的，有属于技术性质的，都附在文章的末尾。\r\n　　第四，本选集有两种装订的本子。一种是各时期的著作合订的一卷本，另一种是四卷本。四卷本的第一卷包括首次国内革命战争时期和第二次国内革命战争时期的著作；第二卷和第三卷包括抗日战争时期的著作；第四卷包括第三次国内革命战争时期的著作。', 54, '2022-10-29 21:17:31');
INSERT INTO `s_book` VALUES (41, 21, '中国大历史（套装共10册）', '吕思勉，蒋廷黻', '北京理工大学出版社', 192.50, '　本套《中国大历史》，是精选现代史学四大家之一吕思勉的断代四史（《先秦史》《秦汉史》《两晋南北朝史》《隋唐五代史》），北大历史学教授邓之诚的《宋辽金夏元史》，明清史学*一人孟森的《明史讲义》《清史讲义》，和近代史研究开创者蒋廷黻的《中国近代史》八部著作编纂而成，每部著作都堪称该历史时期卓著之作，八部断代史组成了代表现代史学高水平的“中国通史”和“中国大历史”。\r\n　　《中国大历史》旗帜鲜明地主张“国人缺乏的不是历史知识，而是历史观点”“明确以大历史观为重的史学著作”，不仅将学术成果呈现出来，更重要的是将四位史学大家的研究方法和历史观点展示出来。吕思勉的贯通古今、征引繁富，邓之诚的闻博洽见、提纲挈领，孟森的比勘辨析、老吏断狱，蒋廷黻的论述扼要、眼光远大，每一种不同的治史方法和史学观点，都让人感觉豁然意解、沈疴顿愈。通过这套著作，以收读者能够从历史知识的传统教育当中解脱，学习和煅铸自己的史学观点的裨益。', 55, '2022-10-29 21:18:41');
INSERT INTO `s_book` VALUES (42, 21, '丝绸之路：一部全新的世界史', '[英] 彼得.弗兰科潘', '浙江大学出版社', 89.60, '两千年来，丝绸之路始终主宰着人类文明的进程。不同种族、不同信仰、不同文化背景的帝王、军队、商人、学者、僧侣、奴隶，往来在这条道路上，创造并传递着财富、智慧、宗教、艺术、战争、疾病和灾难。\r\n丝绸之路让中国的丝绸和文明风靡世界；罗马和波斯在路边缔造了各自的帝国；佛教、基督教和伊斯兰教沿着丝绸之路迅速崛起并传遍世界，融汇出耶路撒冷三千年的历史；成吉思汗的蒙古铁蹄一路向西，在带来杀戮的同时促进了东西方文明的交融；大英帝国通过搜刮丝绸之路上的财富，铸就了日不落的辉煌；希特勒为了丝绸之路上的资源，将世界推入了战争和屠杀的深渊。时至今日，丝绸之路上的难民与恐怖主义ISIS，依然是欧洲与美国挥之不去的梦魇。\r\n丝绸之路的历史就是一部浓缩的世界史，丝绸之路就是人类文明耀眼的舞台。它不仅主宰了人类的过去，更将决定世界的未来。翻开这部包罗万象的史诗巨著，“一带一路”倡议将变得一目了然。', 56, '2022-10-29 21:20:15');
INSERT INTO `s_book` VALUES (43, 21, '山海经', '徐客 ', '现代出版社', 59.50, '《山海经》是一部内容丰富、风貌奇特的古代佳作，堪称中国奇幻、魔幻文学的开山鼻祖。全书涉及历史、地理、民族、宗教、神话、生物、水利、矿产等方面内容，是中国文化的珍品，是中国古人想象力的集中体现。\r\n　　本书搜集了今人所能搜集到的几乎所有《山海经》图文版本，全面呈现了这部中国上古时代集奇幻与瑰丽之大成的想象之作，深刻反映了上古时代种种神话传说，是值得珍藏的一本书。对那些爱好历史、地理，喜欢研究神秘古怪事物的读者来说，实为不二选择。', 57, '2022-10-29 21:21:43');
INSERT INTO `s_book` VALUES (44, 21, '习近平的七年知青岁月', '中央党校采访实录编辑室 ', ' 中共中央党校出版社', 57.00, '此书中选用了76幅珍贵图片，其中大部分为首次公开发表。\r\n　　总书记是出生和成长在新中国的中国共产党总书记。他有过曲折的少年时代，有过奋斗的青年时代。从农村大队党支部书记到党的总书记，从普通公民到国家主席，从普通军官到军委主席，党和国家各个领导层级他都干过。党的十八大以来，总书记之所以能够带领党和人民披荆斩棘、攻坚克难，全面开创中国特色社会主义事业新局面，很大程度上来自总书记扎实的实践基础、深厚的经验积累和由此而来的深邃理论思考。', 58, '2022-10-29 21:23:27');
INSERT INTO `s_book` VALUES (45, 19, '时间简史（插图版）', '[英] 史蒂芬·霍金', ' 湖南科学技术出版社', 42.80, '尽管霍金教授的著述极为清晰而机智，有些读者仍然觉得难以掌握复杂的概念。为了使读者加深理解，《时间简史》（插图版）还增加了240多幅彩色插图，包括卫星图像和照片。这些都应归功于诸如哈勃空间望远镜和电脑三维和四维实体成像等技术进步之赐。详细的插图说明使读者能体验到星系际太空的广漠、黑洞的奇妙性质以及物质和反物质碰撞的粒子物理的微观世界。作为一本飨以读者宇宙学的全新理解的经典著作，《时间简史》（插图版）是探索时间和空间核心秘密的引人入胜的故事。', 59, '2022-10-29 21:24:55');
INSERT INTO `s_book` VALUES (46, 19, '无言的宇宙', '[美] 达纳·麦肯齐', '北京联合出版公司', 43.60, '《无言的宇宙：隐藏在24个数学公式背后的故事》向你讲述的是人类历史上24个美丽而伟大的公式背后的故事，从基本的1+1=2到揭示电磁现象的“麦克斯韦方程”，从著名的E=mc??到神秘的“汉密尔顿的四元数方程”，清晰地解释了每一个方程的含义、谁（如何）发现了它，他们在人类发展史上和现实生活中发挥的巨大作用。\r\n　　这些故事既长知识又有趣，比如：\r\n　　发现世界上简单的方程，这意味着什么；\r\n　　如果世间未曾有过“0”这个概念，将会怎样；\r\n　　牛顿运动定律如是何使人类做到这一切的——从建设桥梁到预测天气；\r\n　　一根劣质雪茄如何改变了量子力学的进程；\r\n　　为什么鲸鱼（如果它们能和我们交流的话）会教给我们完全不同的几何概念？\r\n　　同时，《无言的宇宙：隐藏在24个数学公式背后的故事》也解释了为什么这些方程在诉说着关于宇宙的永恒的秘密，没有任何一种人类的表达方式可以与之匹敌。重要的是它们如何令人惊讶地影响了人类历史和我们的日常生活。', 60, '2022-10-29 21:26:04');
INSERT INTO `s_book` VALUES (47, 19, '万物起源', '英国《新科学家》杂志', '湖南科学技术出版社', 102.60, '我们来自哪里？所有事物是如何发端的？\r\n\r\n这是宇宙间ZUI大的问题，New Scientist告诉你答案……\r\n\r\n本书精心选择了具有代表性的六大类53个题目，从大爆炸、暗物质、生命起源、人类进化、金钱的历史、酒的历史、财产的前世今生、人类情感背后的基因驱动到卫生纸的发明和鼻屎的秘密。简洁诗意的叙述，随时随地颠覆你的常识，时常脑洞大开，偶尔恶趣味。', 61, '2022-10-29 21:27:36');
INSERT INTO `s_book` VALUES (48, 19, '所罗门王的指环', '[奥] 康拉德·洛伦茨 ', '中信出版社 ', 33.30, '《所罗门王的指环》是著名科普作家、诺贝尔卡生理学获得者洛伦茨的经典科普著作。本书将科学知识与文学趣味巧妙结合，将读者大众引入有趣的动物行为学世界，作者通过介绍斗鱼、水鼩、寒鸦等动物的生动故事，使人们认识到大自然的美好，认识到动物行为学的意义所在。\r\n为什么书名叫《所罗门王的指环》呢？洛伦茨说：“根据史料记载，所罗门王能够和鸟兽虫鱼交谈，而他却需要借助一枚指环。这事我也会，虽然我只能和几种我特别熟悉的动物交谈，但我可不需要魔戒的帮助，这点他就不如我啦！活泼的生命完全无须借助魔法，便能对我们诉说至美至真的故事。大自然的真实面貌，比起诗人所能描摹的境界，更要美上千百倍。”', 62, '2022-10-29 21:29:03');
INSERT INTO `s_book` VALUES (49, 20, '汽车杂志（2022年10月号）', '陈政义 ', ' 四川汽车杂志出版有限公司', 17.30, '汽车杂志（2022年10月号）', 63, '2022-10-29 21:32:33');
INSERT INTO `s_book` VALUES (50, 20, '意林合订本2022年01期-06期', '大意林图书 ', '意林杂志社', 28.30, '意林合订本，小故事大智慧，小幽默大道理，小视角大意境', 64, '2022-10-29 21:33:55');
INSERT INTO `s_book` VALUES (51, 21, '三联生活周刊（2022年第38期）', '三联生活周刊编辑部', '生活·读书·新知三联书店', 12.40, '明治维新到明年正好150周年，正是美学引入日本的时间。经过东西方文化冲突的十字路口，日本先全面向西，然而zui终没有入欧，也无法脱亚，并存优越感与劣等感，近年又走向了回归。福泽谕吉的现代化与夏目漱石的现代化不同。强调内心本位的夏目漱石越来越被知识界提到了前面。这两种现代化形成作用力的成果是：工业化，全面教育', 65, '2022-10-29 21:35:02');
INSERT INTO `s_book` VALUES (52, 20, '瑞丽家居设计（2022年第10期）', '周小捷 ', '北京《瑞丽》杂志社', 17.30, '瑞丽家居设计（2017年第10期）\r\n　　细节蜕变\r\n　　细微之处的完美情结\r\n　　在细节中闪光\r\n　　细节控的完美生活\r\n　　点缀不羁色\r\n　　方寸间的乾坤\r\n　　……', 66, '2022-10-29 21:36:19');

-- ----------------------------
-- Table structure for s_catalog
-- ----------------------------
DROP TABLE IF EXISTS `s_catalog`;
CREATE TABLE `s_catalog`  (
  `catalogId` int NOT NULL AUTO_INCREMENT,
  `catalogName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`catalogId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_catalog
-- ----------------------------
INSERT INTO `s_catalog` VALUES (10, '计算互联');
INSERT INTO `s_catalog` VALUES (11, '文学创作');
INSERT INTO `s_catalog` VALUES (14, '工具指南');
INSERT INTO `s_catalog` VALUES (16, '经营管理');
INSERT INTO `s_catalog` VALUES (17, '少儿启蒙');
INSERT INTO `s_catalog` VALUES (18, '生活小事');
INSERT INTO `s_catalog` VALUES (19, '科技前沿');
INSERT INTO `s_catalog` VALUES (20, '杂志期刊');
INSERT INTO `s_catalog` VALUES (21, '人文社科');

-- ----------------------------
-- Table structure for s_order
-- ----------------------------
DROP TABLE IF EXISTS `s_order`;
CREATE TABLE `s_order`  (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `userId` int NOT NULL,
  `orderDate` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `money` double(10, 2) NOT NULL DEFAULT 0.00,
  `orderStatus` int NOT NULL,
  PRIMARY KEY (`orderId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  CONSTRAINT `s_order_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `s_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_order
-- ----------------------------
INSERT INTO `s_order` VALUES (4, '20221028014308536246594163', 1, '2022-10-28 01:43:08', 179.40, 3);
INSERT INTO `s_order` VALUES (5, '202210280147134731083718986', 1, '2022-10-28 01:47:13', 47.40, 3);
INSERT INTO `s_order` VALUES (6, '20221028014729305823772816', 1, '2022-10-28 01:47:29', 31.30, 3);
INSERT INTO `s_order` VALUES (7, '202210280211491251429800191', 1, '2022-10-28 02:11:49', 57.50, 2);
INSERT INTO `s_order` VALUES (8, '202210280302294231181945122', 1, '2022-10-28 03:02:29', 26.90, 3);
INSERT INTO `s_order` VALUES (9, '20221028030642623288276560', 1, '2022-10-28 03:06:42', 20.50, 3);
INSERT INTO `s_order` VALUES (10, '202210281115067252124382547', 1, '2022-10-28 11:15:06', 218.70, 2);
INSERT INTO `s_order` VALUES (11, '202210282323375401848146265', 4, '2022-10-28 23:23:37', 130.70, 1);
INSERT INTO `s_order` VALUES (12, '20221029000256785121692725', 4, '2022-10-29 00:02:56', 132.30, 1);
INSERT INTO `s_order` VALUES (13, '20221029020741681839205568', 5, '2022-10-29 02:07:41', 59.20, 1);
INSERT INTO `s_order` VALUES (14, '202210290425217551086970157', 5, '2022-10-29 04:25:21', 74.80, 1);
INSERT INTO `s_order` VALUES (15, '20221029215417298500592807', 5, '2022-10-29 21:54:17', 147.80, 2);
INSERT INTO `s_order` VALUES (16, '202210301027388351080237993', 1, '2022-10-30 10:27:38', 118.40, 2);
INSERT INTO `s_order` VALUES (17, '20221030113424459696193114', 6, '2022-10-30 11:34:24', 113.00, 3);
INSERT INTO `s_order` VALUES (18, '202211011150042211967104268', 5, '2022-11-01 11:50:04', 105.70, 1);
INSERT INTO `s_order` VALUES (19, '20220414174103389722765893', 7, '2022-04-14 17:41:03', 23.00, 2);
INSERT INTO `s_order` VALUES (20, '202204141743252121876201871', 7, '2022-04-14 17:43:25', 59.50, 1);
INSERT INTO `s_order` VALUES (21, '202401211835574781241358951', 1, '2024-01-21 18:35:57', 57.50, 2);

-- ----------------------------
-- Table structure for s_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `s_orderitem`;
CREATE TABLE `s_orderitem`  (
  `itemId` int NOT NULL AUTO_INCREMENT,
  `bookId` int NOT NULL,
  `orderId` int NOT NULL DEFAULT 0,
  `quantity` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemId`) USING BTREE,
  INDEX `orderId`(`orderId`) USING BTREE,
  INDEX `bookId`(`bookId`) USING BTREE,
  CONSTRAINT `s_orderitem_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `s_order` (`orderId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `s_orderitem_ibfk_3` FOREIGN KEY (`bookId`) REFERENCES `s_book` (`bookId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_orderitem
-- ----------------------------
INSERT INTO `s_orderitem` VALUES (3, 7, 4, 1);
INSERT INTO `s_orderitem` VALUES (4, 9, 4, 1);
INSERT INTO `s_orderitem` VALUES (5, 10, 4, 1);
INSERT INTO `s_orderitem` VALUES (6, 24, 5, 1);
INSERT INTO `s_orderitem` VALUES (7, 25, 5, 1);
INSERT INTO `s_orderitem` VALUES (8, 26, 6, 1);
INSERT INTO `s_orderitem` VALUES (9, 7, 7, 1);
INSERT INTO `s_orderitem` VALUES (10, 25, 8, 1);
INSERT INTO `s_orderitem` VALUES (11, 24, 9, 1);
INSERT INTO `s_orderitem` VALUES (12, 14, 10, 3);
INSERT INTO `s_orderitem` VALUES (13, 16, 11, 1);
INSERT INTO `s_orderitem` VALUES (14, 15, 11, 1);
INSERT INTO `s_orderitem` VALUES (15, 7, 12, 1);
INSERT INTO `s_orderitem` VALUES (16, 8, 12, 1);
INSERT INTO `s_orderitem` VALUES (17, 9, 13, 1);
INSERT INTO `s_orderitem` VALUES (18, 8, 14, 1);
INSERT INTO `s_orderitem` VALUES (19, 50, 15, 2);
INSERT INTO `s_orderitem` VALUES (20, 52, 15, 1);
INSERT INTO `s_orderitem` VALUES (21, 20, 15, 2);
INSERT INTO `s_orderitem` VALUES (22, 29, 15, 1);
INSERT INTO `s_orderitem` VALUES (23, 9, 16, 2);
INSERT INTO `s_orderitem` VALUES (24, 34, 17, 2);
INSERT INTO `s_orderitem` VALUES (25, 35, 17, 1);
INSERT INTO `s_orderitem` VALUES (26, 7, 17, 1);
INSERT INTO `s_orderitem` VALUES (27, 32, 18, 2);
INSERT INTO `s_orderitem` VALUES (28, 14, 18, 1);
INSERT INTO `s_orderitem` VALUES (29, 20, 19, 1);
INSERT INTO `s_orderitem` VALUES (30, 43, 20, 1);
INSERT INTO `s_orderitem` VALUES (31, 7, 21, 1);

-- ----------------------------
-- Table structure for s_uploadimg
-- ----------------------------
DROP TABLE IF EXISTS `s_uploadimg`;
CREATE TABLE `s_uploadimg`  (
  `imgId` int NOT NULL AUTO_INCREMENT,
  `imgName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `imgSrc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `imgType` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`imgId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_uploadimg
-- ----------------------------
INSERT INTO `s_uploadimg` VALUES (21, '58c815fce64144a3b828fc9e439969ee.jpg', 'images/book/bookimg/58c815fce64144a3b828fc9e439969ee.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (22, '6702f974b4a24ebc81dd0892700cdfde.jpg', 'images/book/bookimg/6702f974b4a24ebc81dd0892700cdfde.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (23, 'c8a48e1b56884acf9540941eb3b47ba8.jpg', 'images/book/bookimg/c8a48e1b56884acf9540941eb3b47ba8.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (24, '9868d1355b7740248380941c69787b5a.jpg', 'images/book/bookimg/9868d1355b7740248380941c69787b5a.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (25, '55a071a52305465892f3afa367af6002.jpg', 'images/book/bookimg/55a071a52305465892f3afa367af6002.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (26, '521fef0b0a5540bd8daae42fb05041c6.jpg', 'images/book/bookimg/521fef0b0a5540bd8daae42fb05041c6.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (27, '02fa17cffed1483c8da972c9062fb046.jpg', 'images/book/bookimg/02fa17cffed1483c8da972c9062fb046.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (28, '26a0af4ed71c4c578740187a25d04c34.jpg', 'images/book/bookimg/26a0af4ed71c4c578740187a25d04c34.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (29, '3f8d24b98f704b5186607ba982cb614c.jpg', 'images/book/bookimg/3f8d24b98f704b5186607ba982cb614c.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (30, 'ef85723c4f0e4c42a7214df18c0fbed3.jpg', 'images/book/bookimg/ef85723c4f0e4c42a7214df18c0fbed3.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (31, '08f709df44434d2aa2ecb0514b195030.jpg', 'images/book/bookimg/08f709df44434d2aa2ecb0514b195030.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (32, '04e694550c444aa0b1538d8f3794dcc6.jpg', 'images/book/bookimg/04e694550c444aa0b1538d8f3794dcc6.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (33, 'e837b0423c56454489ec7b9e47ec6174.jpg', 'images/book/bookimg/e837b0423c56454489ec7b9e47ec6174.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (34, '66ae587289b84744bc9cf86d3da8a446.jpg', 'images/book/bookimg/66ae587289b84744bc9cf86d3da8a446.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (35, 'ff138dd49cab4583b5a4c9dbbae31ed4.jpg', 'images/book/bookimg/ff138dd49cab4583b5a4c9dbbae31ed4.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (36, 'e19f9ccd01c243e9a46caba38ca20586.jpg', 'images/book/bookimg/e19f9ccd01c243e9a46caba38ca20586.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (37, 'b0ead1325a5b4c0fa6610899baa51f28.jpg', 'images/book/bookimg/b0ead1325a5b4c0fa6610899baa51f28.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (38, '9983b67809f44eb782f0b3a6441d8469.jpg', 'images/book/bookimg/9983b67809f44eb782f0b3a6441d8469.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (39, 'c000ee5c42624494ac79b8631d0bde62.jpg', 'images/book/bookimg/c000ee5c42624494ac79b8631d0bde62.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (40, '78f38e26a00544bdbe37db6bc68583e9.jpg', 'images/book/bookimg/78f38e26a00544bdbe37db6bc68583e9.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (41, 'ae8971c37a1541f59695d3912cbd40c9.jpg', 'images/book/bookimg/ae8971c37a1541f59695d3912cbd40c9.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (42, '82a18001737c413fab6633d16d884ef3.jpg', 'images/book/bookimg/82a18001737c413fab6633d16d884ef3.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (43, 'c9e929f131d548acadde5a16f55ac422.jpg', 'images/book/bookimg/c9e929f131d548acadde5a16f55ac422.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (44, '1898df315af04742a648732802ce951e.jpg', 'images/book/bookimg/1898df315af04742a648732802ce951e.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (45, 'bc330378dc59400d9a773ee02eb7518b.jpg', 'images/book/bookimg/bc330378dc59400d9a773ee02eb7518b.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (46, '7a9f5162ee5945a9aa79d0680483e7e8.jpg', 'images/book/bookimg/7a9f5162ee5945a9aa79d0680483e7e8.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (47, '939726ff5b0c42db8c9a7aba68483323.jpg', 'images/book/bookimg/939726ff5b0c42db8c9a7aba68483323.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (48, 'a87ada9fee724f5bb37501800849bd90.jpg', 'images/book/bookimg/a87ada9fee724f5bb37501800849bd90.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (49, '2abd3ee3e07c4d55915778023c2b908d.jpg', 'images/book/bookimg/2abd3ee3e07c4d55915778023c2b908d.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (50, 'b05bf3d3c37446f6b10e9dccd8d5ea79.jpg', 'images/book/bookimg/b05bf3d3c37446f6b10e9dccd8d5ea79.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (51, 'a4bbae03860543d9979af5b4bce0bb4b.jpg', 'images/book/bookimg/a4bbae03860543d9979af5b4bce0bb4b.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (52, '993d74e879d74c5797100d700d2f531e.jpg', 'images/book/bookimg/993d74e879d74c5797100d700d2f531e.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (53, '5da32e1cb73e4ddd8edf99c44a7af307.jpg', 'images/book/bookimg/5da32e1cb73e4ddd8edf99c44a7af307.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (54, 'bb4c75d67ed84c94883e71a7c078d4a7.jpg', 'images/book/bookimg/bb4c75d67ed84c94883e71a7c078d4a7.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (55, 'c51e7c5e05d64304b5fda3d271ccd2d0.jpg', 'images/book/bookimg/c51e7c5e05d64304b5fda3d271ccd2d0.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (56, '1a2805c4f4e14e4eb37fe66e1693bff2.jpg', 'images/book/bookimg/1a2805c4f4e14e4eb37fe66e1693bff2.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (57, 'a29e2fb19bab4f14a6e91cb559cccc9d.jpg', 'images/book/bookimg/a29e2fb19bab4f14a6e91cb559cccc9d.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (58, '4fa5381ff565468c94ae51fdd8747387.jpg', 'images/book/bookimg/4fa5381ff565468c94ae51fdd8747387.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (59, '1260e502775b4326b6748ff9d9259987.jpg', 'images/book/bookimg/1260e502775b4326b6748ff9d9259987.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (60, '50d073b5ab154913b9c6c53def42ccc6.jpg', 'images/book/bookimg/50d073b5ab154913b9c6c53def42ccc6.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (61, 'da18420707624f8ab30cd2d4e7c6de2b.jpg', 'images/book/bookimg/da18420707624f8ab30cd2d4e7c6de2b.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (62, '818f012c5b7a4109b76aed5eab3c86d7.jpg', 'images/book/bookimg/818f012c5b7a4109b76aed5eab3c86d7.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (63, '18613c972e0f4b88a369b062f13cff3d.jpg', 'images/book/bookimg/18613c972e0f4b88a369b062f13cff3d.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (64, '6767e8a6bcb344269be32ed3f98f432c.jpg', 'images/book/bookimg/6767e8a6bcb344269be32ed3f98f432c.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (65, 'e6c925a657e049729f9b57ad688f2708.jpg', 'images/book/bookimg/e6c925a657e049729f9b57ad688f2708.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (66, '1f3d4937bac1467c9ef69d0141d8800f.jpg', 'images/book/bookimg/1f3d4937bac1467c9ef69d0141d8800f.jpg', 'image/jpeg');
INSERT INTO `s_uploadimg` VALUES (67, 'a348d4a5f9d94923bf20ea8604837178.png', 'images/book/bookimg/a348d4a5f9d94923bf20ea8604837178.png', 'image/png');
INSERT INTO `s_uploadimg` VALUES (68, 'b5b88bce978b4ed997bdc8f93040bb4f.jpg', 'images/book/bookimg/b5b88bce978b4ed997bdc8f93040bb4f.jpg', 'image/jpeg');

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user`  (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `userPassWord` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sex` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `age` int NOT NULL,
  `tell` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `enabled` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` VALUES (1, 'user', '1234', '测试', '男', 22, '11800000000', '番茄炒鸡蛋学院', 'y');
INSERT INTO `s_user` VALUES (2, 'dsfsd', '1234', 'fsdaf', '男', 32, '15699857745', '番茄炒鸡蛋学院', 'y');
INSERT INTO `s_user` VALUES (3, 'gggg', 'gggggg', 'gggggg', '男', 1, '15666784476', '番茄炒鸡蛋学院', 'y');
INSERT INTO `s_user` VALUES (4, 'user2', '1234', '测试用户', '女', 32, '12100000000', '洛圣都佩里托湾', 'y');
INSERT INTO `s_user` VALUES (5, 'panfei', '1234', '潘飞', '男', 22, '12200000000', '番茄炒鸡蛋学院', 'y');
INSERT INTO `s_user` VALUES (6, 'cqxh', '1234', '唐辉煌', '男', 25, '12300000000', '番茄学院', 'y');
INSERT INTO `s_user` VALUES (7, 'zzz123', '123456', '王德发', '男', 20, '12345678901', '炒蛋学院', 'y');
INSERT INTO `s_user` VALUES (8, '111', '111', '111', '男', 11, '111', '111', 'y');

-- ----------------------------
-- View structure for view_book
-- ----------------------------
DROP VIEW IF EXISTS `view_book`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_book` AS select `s_catalog`.`catalogName` AS `catalogName`,`s_book`.`bookId` AS `bookId`,`s_book`.`catalogId` AS `catalogId`,`s_book`.`bookName` AS `bookName`,`s_book`.`price` AS `price`,`s_book`.`description` AS `description`,`s_book`.`imgId` AS `imgId`,`s_uploadimg`.`imgName` AS `imgName`,`s_uploadimg`.`imgSrc` AS `imgSrc`,`s_uploadimg`.`imgType` AS `imgType`,`s_book`.`author` AS `author`,`s_book`.`press` AS `press`,`s_book`.`addTime` AS `addTime` from ((`s_book` join `s_catalog` on((`s_book`.`catalogId` = `s_catalog`.`catalogId`))) join `s_uploadimg` on((`s_book`.`imgId` = `s_uploadimg`.`imgId`)));

-- ----------------------------
-- View structure for view_order
-- ----------------------------
DROP VIEW IF EXISTS `view_order`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_order` AS select `s_orderitem`.`itemId` AS `itemId`,`s_orderitem`.`bookId` AS `bookId`,`s_orderitem`.`quantity` AS `quantity`,`s_order`.`orderId` AS `orderId`,`s_order`.`orderNum` AS `orderNum`,`s_order`.`userId` AS `userId`,`s_order`.`orderDate` AS `orderDate`,`s_order`.`money` AS `money`,`s_order`.`orderStatus` AS `orderStatus` from (`s_order` join `s_orderitem` on((`s_orderitem`.`orderId` = `s_order`.`orderId`)));

SET FOREIGN_KEY_CHECKS = 1;
