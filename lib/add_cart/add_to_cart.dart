import 'package:flutter/material.dart';
import 'package:li_food/add_cart/list_cart.dart';
import 'package:li_food/screens/item_screen.dart';
import '../app_color/app_colors.dart';

class Cart extends StatefulWidget {

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
    var my_query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: app_color[3],
      body: Padding(
        padding: EdgeInsets.only(top: (my_query.height*(3.34/100)),left: (my_query.width*(13.28/100))),
        child: Container(
          alignment: Alignment.center,
          height: 1000,
          child: ListView.builder(
             // scrollDirection: Axis.horizontal,
              itemCount: dummy_cart.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: (my_query.width*(4.83/100)), top: (my_query.height*(2.23/100))),
                  child: InkWell(
                    child: Container(
                      width: (my_query.width*(60.38/100)),
                      child: Card(
                          color:app_color[3],
                          elevation: 0.0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 60),
                                child: Container(
                                  height: (my_query.height*(24.55/100)),
                                  width: (my_query.width*(60.38/100)),
                                  child: Card(
                                      child: InkWell(
                                        onTap: () {
                                          print(dummy_cart[index].name);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => ItemScreen(dummy_cart[index].name,
                                                  dummy_cart[index].price,
                                                  dummy_cart[index].image,
                                                  dummy_cart[index].desc),
                                              // Pass the arguments as part of the RouteSettings. The
                                              // DetailScreen reads the arguments from these settings.
                                              //                             settings: RouteSettings(
                                              //                               arguments: todos[index],
                                              //                               ),
                                            ),
                                          );
                                        },
                                        child: Column(
                                          children: [
                                            Padding(
                                              child: Text("${dummy_cart[index].name}",
                                                //"${dummy_food[index].title}",
                                                style: TextStyle(
                                                    fontFamily: 'Amateur',
                                                    color: app_color[1],
                                                    fontSize: 20),
                                              ),
                                              padding: EdgeInsets.only(
                                                  top: (my_query.height*(6.69/100))),
                                            ),
                                            Padding(
                                                padding:
                                                EdgeInsets.only(
                                                    top: (my_query.height*(1.11/100))),
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: (my_query.width*(6.62/100))),
                                                  child: Text(
                                                    "${dummy_cart[index].desc}",
                                                    style: TextStyle(
                                                        color:
                                                        app_color[1],
                                                        fontSize: 17),
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      color:
                                      app_color[4],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              15.0))),
                                ),
                              ),
                              Padding(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0))),
                                  child: Card(
                                    semanticContainer: true,
                                    clipBehavior:
                                    Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            15.0)),
                                    color: app_color[2],
                                    child: Image.asset(
                                        "images/${dummy_cart[index].image}",
                                        fit: BoxFit.cover),
                                  ),
                                  width: (my_query.width*(48.30/100)),
                                  height: (my_query.height*(13.39/100)),
                                ),
                                padding:
                                EdgeInsets.only(top: 0, left: (my_query.width*(5.07/100))),
                              ),
                            ],
                          )),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
