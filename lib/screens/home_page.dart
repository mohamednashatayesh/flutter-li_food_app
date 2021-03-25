import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:li_food/add_cart/add_to_cart.dart';
import 'package:li_food/screens/item_screen.dart';
import '../dummy_data/dummy_foods.dart';
import '../dummy_data/dummt_drinks.dart';
import '../app_color/app_colors.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var my_query = MediaQuery.of(context).size;
    return Scaffold(
        drawer: Drawer(
          child:  Container(
            color: app_color[0],//Color.fromRGBO(23, 31, 60, 1),
            child: Padding(
              padding: EdgeInsets.only(top:(my_query.height*(14.5/100))),
              child: Column(
                children: [
                  Text("LiFood",
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'Amateur',
                    color: Colors.white,//Colors.white
                  ),),
                  Padding(
                    padding: EdgeInsets.only(top: (my_query.height*(4.46/100))),
                    child: InkWell(
                      onTap: (){
                        print(my_query.width);
                        print(my_query.height);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return Cart();
                        }));
                      },
                      child: Container(
                        height: (my_query.height*(6.69/100)),
                        child: Card(
                          color: app_color[2],//Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.only(left: (my_query.width*(2.41/100))),
                            child: Row(children:[
                              Icon(Icons.shopping_cart_outlined , color: Colors.white,),
                            Text("Your Cart",
                            style: TextStyle(
                              color: app_color[1],//Colors.white
                              fontSize: 18
                            ),)
                            ],),
                          ),
                        shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                15.0)
                    )
                    ,),
                      )
                    ),
                  ),




















                  Padding(
                    padding: EdgeInsets.only(top: (my_query.height*(3.34/100))),
                    child: InkWell(
                        onTap: (){
                          print("hello");
                        },
                        child: Container(
                          height: (my_query.height*(6.69/100)),
                          child: Card(
                            color: app_color[2],//Colors.blue,
                            child: Padding(
                              padding: EdgeInsets.only(left: (my_query.width*(2.41/100))),
                              child: Row(children:[
                                Icon(Icons.check_circle , color: Colors.white,),
                                Text("Best options",
                                  style: TextStyle(
                                      color:app_color[1],//Colors.white
                                      fontSize: 18
                                  ),)
                              ],),
                            ),
                            shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0)
                            )
                            ,),
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: (my_query.height*(3.34/100))),
                    child: InkWell(
                        onTap: (){
                          print("hello");
                        },
                        child: Container(
                          height: (my_query.height*(6.69/100)),
                          child: Card(
                            color: app_color[2],//Colors.blue,
                            child: Padding(
                              padding: EdgeInsets.only(left: (my_query.width*(2.41/100))),
                              child: Row(children:[
                                Icon(Icons.lunch_dining , color: Colors.white,),
                                Text("Foods",
                                  style: TextStyle(
                                      color: app_color[1],//Colors.white
                                      fontSize: 18
                                  ),)
                              ],),
                            ),
                            shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0)
                            )
                            ,),
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: (my_query.height*(3.34/100))),
                    child: InkWell(
                        onTap: (){
                          print("hello");
                        },
                        child: Container(
                          height: (my_query.height*(6.69/100)),
                          child: Card(
                            color: app_color[2],//Colors.blue,
                            child: Padding(
                              padding: EdgeInsets.only(left: (my_query.width*(2.41/100))),
                              child: Row(children:[
                                Icon(Icons.wine_bar, color: Colors.white,),
                                Text("Drinks",
                                  style: TextStyle(
                                      color: app_color[1],//Colors.white
                                      fontSize: 18
                                  ),)
                              ],),
                            ),
                            shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0)
                            )
                            ,),
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: (my_query.height*(3.34/100))),
                    child: InkWell(
                        onTap: (){
                          print("hello");
                          setState(() {
                            if(app_color[1] == Colors.white){
                            app_color[0] = Colors.red ;
                            app_color[1] = Colors.black;
                            app_color[3] = Colors.red;
                            app_color[4] = Colors.white;
                            app_color[5] = Colors.cyan;
                            }
                            else{
                              app_color[0] = Color.fromRGBO(23, 31, 60, 1);
                              app_color[1] = Colors.white;
                              app_color[3] = Color.fromRGBO(37, 45, 64, 1);
                              app_color[4] =  Color.fromRGBO(49, 58, 90, 1);
                              app_color[5]= Colors.green;

                            }
                          }
                          );


                        },
                        child: Container(
                          height: (my_query.height*(6.69/100)),
                          child: Card(
                            color: app_color[2],//Colors.blue,
                            child: Padding(
                              padding: EdgeInsets.only(left: (my_query.width*(2.41/100))),
                              child: Row(children:[
                                Icon(Icons.settings, color: Colors.white,),
                                Text("Change Colors",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18
                                  ),)
                              ],),
                            ),
                            shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0)
                            )
                            ,),
                        )
                    ),
                  )
                ],
              ),
            ),
            /*








             */

          )),



      /*


















       */
        backgroundColor: app_color[3],//Color.fromRGBO(37, 45, 64, 1),
        appBar: AppBar(
          backgroundColor: app_color[0],//Color.fromRGBO(23, 31, 60, 1),
          title: Text(
            "LiFood",
            style: TextStyle(fontSize: 30, color: Colors.white,
                fontFamily: 'Amateur'),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: my_query.width,
          height: my_query.height,
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  height: (my_query.height*(33.48/100)),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dummy_food.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: (my_query.width*(4.83/100)), top: (my_query.height*(2.23/100))),
                          child: InkWell(
                            child: Container(
                              width: (my_query.width*(60.33/100)),
                              child: Card(
                                  color:app_color[3],
                                  elevation: 0.0,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: (my_query.height*(6.69/100))),
                                        child: Container(
                                          height: (my_query.height*(24.55/100)),
                                          width: (my_query.width*(60.38/100)),
                                          child: Card(
                                              child: InkWell(
                                                onTap: () {
                                                  print(dummy_food[index].name);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => ItemScreen(dummy_food[index].name,
                                                          dummy_food[index].price,
                                                          dummy_food[index].image,
                                                          dummy_food[index].desc),
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
                                                      child: Text("${dummy_food[index].name}",
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
                                                          padding: EdgeInsets.only(left: (my_query.width*(3.62/100))),
                                                          child: Text(
                                                            "${dummy_food[index].desc}",
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
                                                "images/${dummy_food[index].image}",
                                                fit: BoxFit.cover),
                                          ),
                                          width: (my_query.width*(48.30/100)),
                                          height: (my_query.height*(13.39/100)),
                                        ),
                                        padding:
                                            EdgeInsets.only(top: (my_query.height*(0/100)), left: (my_query.width*(2.34/100))),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              /*























               */
              Padding(
                padding: EdgeInsets.only(top: (my_query.height*(3.34/100))),
                child: Container(
                  height: (my_query.height*(33.48/100)),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dummy_drinks.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: (my_query.width*(4.83/100)), top: (my_query.height*(2.23/100))),
                          child: InkWell(
                            child: Container(
                              width: (my_query.width*(60.38/100)),
                              child: Card(
                                  color: app_color[3],//Color.fromRGBO(37, 45, 64, 1),
                                  elevation: 0.0,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: (my_query.height*(6.69/100))),
                                        child: Container(
                                          height: (my_query.height*(24.55/100)),
                                          width: (my_query.width*(60.38/100)),
                                          child: Card(
                                              child: InkWell(
                                                onTap: () {
                                                    Navigator.push(
                                                     context,
                                                    MaterialPageRoute(
                                                     builder: (context) => ItemScreen(dummy_drinks[index].name,
                                                         dummy_drinks[index].price,
                                                         dummy_drinks[index].image,
                                                         dummy_drinks[index].desc),
                        // Pass the arguments as part of the RouteSettings. The
                        // DetailScreen reads the arguments from these settings.
                        //                             settings: RouteSettings(
                        //                               arguments: todos[index],
                        //                               ),
                                                        ),
                                                            );


                                                  print(dummy_drinks[index].name);
                                                },
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      child: Text("${dummy_drinks[index].name}",
                                                        //"${dummy_food[index].title}",
                                                        style: TextStyle(
                                                            fontFamily: 'Amateur',
                                                            color: app_color[1],//Colors.white,
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
                                                          padding: EdgeInsets.only(left: (my_query.width*(3.62/100))),
                                                          child: Text(
                                                            "${dummy_drinks[index].desc}",
                                                            style: TextStyle(
                                                                color:
                                                                app_color[1],//Colors.white,
                                                                fontSize: 17),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              color:
                                              app_color[4],//Color.fromRGBO(49, 58, 90, 1),
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
                                            color: app_color[2],//Colors.blue,
                                            child: Image.asset(
                                                "images/${dummy_drinks[index].image}",
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
            ],
          ),
        ));
  }
}
//#313A5A
//#171F3C
//color: Color.fromRGBO(49, 58, 90, 1),
//color: Color.fromRGBO(23, 31, 60, 1),
