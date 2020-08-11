import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/article_1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.green,
//      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
//        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/logo_umma 1.png',
              height: 31,
              width: 35,
            ),
            SizedBox(
              width: 8,
            ),
            Image.asset(
              'assets/logo/logo_umma 2.png',
              height: 11.41,
              width: 74.33,
            ),
          ],
        ),
//        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(17, 8.5, 17, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Время намаза', style: TextStyle(fontSize: 11,color: Color.fromRGBO(60, 60, 67, 0.6)),),
                  Text('5:24',style: TextStyle(fontSize: 11,color: Color.fromRGBO(60, 60, 67, 0.6)),),
                  Text('7:12',style: TextStyle(fontSize: 11,color: Color.fromRGBO(60, 60, 67, 0.6)),),
                  Text('12:43',style: TextStyle(fontSize: 11,color: Color.fromRGBO(60, 60, 67, 0.6)),),
                  Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(85, 139, 47, 1),
                          borderRadius: BorderRadius.all(Radius.circular(2))
                      ),
                    padding: EdgeInsets.all(2),
//                    color: Colors.green,
                      child: Text('15:29',style: TextStyle(fontSize: 11,color: Colors.white ),)),
                  Text('18:11',style: TextStyle(fontSize: 11,color: Color.fromRGBO(60, 60, 67, 0.6)),),
                  Text('19:53',style: TextStyle(fontSize: 11,color: Color.fromRGBO(60, 60, 67, 0.6)),),
                ],
              ),
            ),
          ),
          Expanded(child: _buildListView(context)),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 83,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
//          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Image.asset(
                'assets/icons_custom/home_24px.png',
                height: 24,
                width: 24,
                fit: BoxFit.cover,
              ),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Image.asset(
                'assets/icons_custom/Donate.png',
                height: 32,
                width: 32,
                fit: BoxFit.cover,
              ),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Image.asset(
                'assets/icons_custom/Remittance.png',
                height: 32,
                width: 32,
                fit: BoxFit.cover,
              ),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Image.asset(
                'assets/icons_custom/Education.png',
                height: 32,
                width: 32,
                fit: BoxFit.cover,
              ),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: new Image.asset(
                  'assets/icons_custom/User.png',
                  height: 32,
                  width: 32,
                  fit: BoxFit.cover,
                ),
                title: Text('Profile'))
          ],
        ),
      ),
    );
  }
}

ListView _buildListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 8,horizontal: 16),
        child: Container(
          width: 343,
          height: 136,
          child: GestureDetector(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()))
            },
            child: Card(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image 3.png',
                    width: 105,
                    height: 104,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(17, 20, 16, 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Обязательны ли 5\nнамазов?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            'В последнее время в Рунете появляются статьи '
                            'о необязательности пятикратного намаза. Хотелось '
                            'бы видеть статью со... ',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Шамиль Аляутдинов',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(60, 60, 67, 0.45),
                                ),
                              ),
                              Text(
                                '1 дек 2019',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(60, 60, 67, 0.45),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 8,horizontal: 16),
        child: Container(
          width: 343,
          height: 136,
          child: GestureDetector(
            onTap: () => {Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailPage())) },
            child: Card(
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/muslim-woman-using-phone-outside-street_1303-14182.png',
                    width: 105,
                    height: 104,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(17, 20, 16, 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Женские\nмусульманские имена',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            'Мусульманским считается любое имя на любом языке, '
                            'имеющее положительное значение.',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Шамиль Аляутдинов',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(60, 60, 67, 0.45),
                                ),
                              ),
                              Text(
                                '28 ноя 2019',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(60, 60, 67, 0.45),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
        child: Container(
          width: 343,
          height: 136,
          child: GestureDetector(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()))
            },
            child: Card(
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/Childbirth.png',
                    width: 105,
                    height: 104,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(17, 20, 16, 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Схватки, роды и намаз',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            'У некоторых женщин схватки идут по 14 часов, '
                            'это очень болезненный процесс. Интервал между ними...',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Шамиль Аляутдинов',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(60, 60, 67, 0.45),
                                ),
                              ),
                              Text(
                                '20 ноя 2019',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(60, 60, 67, 0.45),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
        child: Container(
          width: 343,
          height: 136,
          child: GestureDetector(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()))
            },
            child: Card(
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/islam.png',
                    width: 105,
                    height: 104,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(17, 20, 16, 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Защити себя\nот Божьей кары',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            'Мусульманским считается любое имя на любом языке,'
                                ' имеющее положительное значение.',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Шамиль Аляутдинов',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(60, 60, 67, 0.45),
                                ),
                              ),
                              Text(
                                '28 ноя 2019',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(60, 60, 67, 0.45),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
