import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

Widget _TutorialScreen(BuildContext context) {
  //一般模式 二頭肌教學
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ImageSlideshow(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 2.5,
        children: [
          Image.network(
            'https://media.gq.com.tw/photos/5fcdfa0ab27ba9fa77ec3274/2:3/w_941,h_1412,c_limit/GettyImages-699086757.jpg',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://media.gq.com.tw/photos/5fcdfa0ab27ba9fa77ec3274/2:3/w_941,h_1412,c_limit/GettyImages-699086757.jpg',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://media.gq.com.tw/photos/5fcdfa0ab27ba9fa77ec3274/2:3/w_941,h_1412,c_limit/GettyImages-699086757.jpg',
            fit: BoxFit.cover,
          ),
        ],
        onPageChanged: (value) {
          print('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
      ),
    ],
  );
}

Widget _TutorialScreen01(BuildContext context) {
  ////一般模式 三角肌教學
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ImageSlideshow(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 2.5,
        children: [
          Image.network(
            'http://p26.toutiaoimg.com/large/pgc-image/4ab5ff2aaaf04449bfde69db8853a3ad?from=detail&index=1',
            fit: BoxFit.cover,
          ),
          Image.network(
            'http://p26.toutiaoimg.com/large/pgc-image/4ab5ff2aaaf04449bfde69db8853a3ad?from=detail&index=1',
            fit: BoxFit.cover,
          ),
          Image.network(
            'http://p26.toutiaoimg.com/large/pgc-image/4ab5ff2aaaf04449bfde69db8853a3ad?from=detail&index=1',
            fit: BoxFit.cover,
          ),
        ],
        onPageChanged: (value) {
          print('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
      ),
    ],
  );
}

Widget _TutorialScreen02(BuildContext context) {
  ////一般模式 滑牆教學
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ImageSlideshow(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 2.5,
        children: [
          Image.network(
            'https://3c.yipee.cc/wp-content/uploads/2019/12/851efa3650781511ee0ac837a5f58918-620x413.jpg',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://3c.yipee.cc/wp-content/uploads/2019/12/851efa3650781511ee0ac837a5f58918-620x413.jpg',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://3c.yipee.cc/wp-content/uploads/2019/12/851efa3650781511ee0ac837a5f58918-620x413.jpg',
            fit: BoxFit.cover,
          ),
        ],
        onPageChanged: (value) {
          print('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
      ),
    ],
  );
}

Widget _TutorialScreen03(BuildContext context) {
  ////視覺模式 統一教學
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ImageSlideshow(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 2.5,
        children: [
          Image.network(
            'https://media.discordapp.net/attachments/969605378407038976/976280448504307753/IMG_1072.jpg?width=811&height=676',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://media.discordapp.net/attachments/969605378407038976/976280448504307753/IMG_1072.jpg?width=811&height=676',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://media.discordapp.net/attachments/969605378407038976/976280448504307753/IMG_1072.jpg?width=811&height=676',
            fit: BoxFit.cover,
          ),
        ],
        onPageChanged: (value) {
          print('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
      ),
    ],
  );
}

Widget _CurrentAngle() {
  Color primaryColor = HexColor("7C9C99");
  return Text(
    '當前角度: 3',
    style: TextStyle(
        color: primaryColor, fontSize: 24, fontWeight: FontWeight.bold),
  );
}

Widget _ResetZero(BuildContext context) {
  Color primaryColor = HexColor("7C9C99");
  return Container(
    width: MediaQuery.of(context).size.width / 3,
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        '起始角度歸零',
        style: TextStyle(fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
      ),
    ),
  );
}

Widget _StartBtn(BuildContext context) {
  Color primaryColor = HexColor("7C9C99");
  return Container(
    width: MediaQuery.of(context).size.width / 1.5,
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        '開始',
        style: TextStyle(fontSize: 24),
      ),
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
      ),
    ),
  );
}

class _IntroPageState extends State<IntroPage> {
  Color primaryColor = HexColor("7C9C99");
  Color secondColor = HexColor("4E605E");
  Color thirdColor = HexColor("AAD4D0");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70 + 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 36,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('教學引導'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              NormalMode
                  ? UpMode
                      ? TwoHead
                          ? _TutorialScreen(context)
                          : _TutorialScreen01(context)
                      : _TutorialScreen02(context)
                  : _TutorialScreen03(context),
              SizedBox(
                height: 30,
              ),
              _CurrentAngle(),
              SizedBox(
                height: 10,
              ),
              _ResetZero(context),
              SizedBox(
                height: 30,
              ),
              _StartBtn(context),
            ],
          ),
        ],
      ),
    );
  }
}
