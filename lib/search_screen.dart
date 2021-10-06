import 'package:flutter/material.dart';

import 'Utils/app_images.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 20, bottom: 5, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26,
              width: 15,
            ),
            Text(
              "New Arrival",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Container(
              height: 320,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    shadowColor: Colors.black,
                    elevation: 6.0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20)),
                        // color: Color(0xFFdb9ee8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15)),
                              color: Colors.red.shade100,
                            ),
                            child: Image(
                              image: AppImages.tshirt,
                              height: 200,
                              width: 180,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "T-Shirt",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "\$60.99",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    shadowColor: Colors.black,
                    elevation: 6.0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20)),
                        // color: Color(0xFFdb9ee8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15)),
                              color: Colors.red.shade100,
                            ),
                            child: Image(
                              image: AppImages.shirt2,
                              height: 200,
                              width: 180,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "Shirt",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "\$60.99",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    shadowColor: Colors.black,
                    elevation: 6.0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20)),
                        // color: Color(0xFFdb9ee8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15)),
                              color: Colors.red.shade100,
                            ),
                            child: Image(
                              image: AppImages.shirt,
                              height: 200,
                              width: 180,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "Shirt",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "\$60.99",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              "Featured Categories",
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            FeaturedCategoriesGrid(),
            SizedBox(
              height: 10,
            ),
            // Spacer(),
          ],
        ),
      ),
    );
  }
}
class FeaturedCategoriesGrid extends StatelessWidget {

  List<String> categories = ['1','1','1','1'];
  FeaturedCategoriesGrid({categories});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        primary: false,
        childAspectRatio: 0.65,
        shrinkWrap: true,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 4,
        children: [
          ...categories.map((e) => categoryCell(context, e)),
        ]);
  }

  Widget categoryCell(BuildContext ctx, String category) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.all(Radius.circular(10)),
        color: Colors.red.shade200,
      ),
      child: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(width: 80, height: 80, image:AppImages.shirt , fit: BoxFit.cover)),
            ),
            Text('Shirt',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}


