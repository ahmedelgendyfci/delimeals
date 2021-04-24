import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
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
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3 -
                      MediaQuery.of(context).padding.top,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2F1530030147%2Fchicken-and-bulgur-salad-with-peaches-1808-p17.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Theme.of(context).accentColor,
                        height: 0.5,
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Fruit',
                          style: Theme.of(context).textTheme.title.copyWith(
                                fontSize: 40,
                              ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Theme.of(context).accentColor,
                            height: 0.5,
                            width: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Theme.of(context).accentColor,
                            height: 0.5,
                            width: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Theme.of(context).accentColor,
                            height: 0.5,
                            width: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Theme.of(context).accentColor,
                            height: 0.5,
                            width: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Theme.of(context).accentColor,
                            height: 0.5,
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ListView.builder(
                    itemCount: titles.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2F1530030147%2Fchicken-and-bulgur-salad-with-peaches-1808-p17.jpg'),
                                  backgroundColor: Colors.transparent,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    width: 0.5,
                                    height: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        titles[index],
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
                                            MainAxisAlignment.spaceEvenly,
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
                                )
                              ],
                            ),
                          ),
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            // color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Theme.of(context).primaryColor,
                                Color(0xff2E2E2E),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff2E2E2E),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.85,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
