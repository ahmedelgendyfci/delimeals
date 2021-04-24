import 'package:delimeals/screen/category_meals_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF111111),
        accentColor: Color(0xffe0a70b),
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Colors.white,
            ),
            title: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
            headline: TextStyle(
              color: Colors.black,
            )),
      ),
      home: CategoryMeals(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titles = [
    'vegetables',
    'fruit',
    'milk',
    'yoghurt',
    'meat',
    'fish',
    'poultry',
    'eggs',
    'nuts',
    'legumes'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF111111),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi,',
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          'Ready to cook?',
                          style: Theme.of(context).textTheme.title,
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2F1530030147%2Fchicken-and-bulgur-salad-with-peaches-1808-p17.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.9 -
                  MediaQuery.of(context).padding.top,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('done');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1601925531397-T77OSFKVLKYV7TTMRQBA/ke17ZwdGBToddI8pDm48kDfFybC1kUyKQYrPjbO0R11Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIigDyakcpwGiy2oOq9bdkuRZu3WeLMrJL9xKtHMq5NEAKMshLAGzx4R3EDFOm1kBS/Meal-Delivery-Services-Purple-Carrot',
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 10,
                            child: Container(
                              // color: Color(0XFF111111),
                              child: Text('Meal Categories!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .title
                                      .copyWith(
                                        color: Color(0xffe0a70b),
                                        fontSize: 22,
                                      )),
                            ),
                          ),
                          Positioned(
                            top: 55,
                            left: 10,
                            child: Container(
                              // color: Color(0XFF111111),
                              child: Text('Ex: salad!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .title
                                      .copyWith(
                                        color: Colors.grey,
                                        fontSize: 18,
                                      )),
                            ),
                          ),
                          Positioned(
                              bottom: 15,
                              left: 10,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timelapse,
                                        size: 20,
                                        color: Color(0xffe0a70b),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '10 min.',
                                        style: TextStyle(
                                            color: Color(0xffe0a70b),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.blur_on_sharp,
                                        size: 20,
                                        color: Color(0xffe0a70b),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'easy lvl.',
                                        style: TextStyle(
                                            color: Color(0xffe0a70b),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.75,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: GridView.count(
                              primary: true,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              crossAxisCount: 2,
                              childAspectRatio: 4 / 5,
                              children: titles.map((Title) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff2E2E2E),
                                        Color(0XFF111111),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 15,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      print(Title);
                                    },
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundImage: NetworkImage(
                                              'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2F1530030147%2Fchicken-and-bulgur-salad-with-peaches-1808-p17.jpg'),
                                          backgroundColor: Colors.transparent,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          Title,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.5,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          width: 50,
                                          height: 0.5,
                                          color: Color(0xffe0a70b),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  '60',
                                                  style: TextStyle(
                                                    color: Color(0xffe0a70b),
                                                  ),
                                                ),
                                                Text(
                                                  'min.',
                                                  style: TextStyle(
                                                    color: Color(0xffe0a70b),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              height: 10,
                                              width: 0.5,
                                              color: Color(0xffe0a70b),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  'easy',
                                                  style: TextStyle(
                                                    color: Color(0xffe0a70b),
                                                  ),
                                                ),
                                                Text(
                                                  'lvl.',
                                                  style: TextStyle(
                                                    color: Color(0xffe0a70b),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }).toList()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
