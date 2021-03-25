import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:li_food/add_cart/list_cart.dart';
import 'package:li_food/models/buy_send_data.dart';
import '../app_color/app_colors.dart';
class ItemScreen extends StatelessWidget {
  final String name;

  final double price;

  final String image;

  final String desc;

  ItemScreen(this.name, this.price, this.image, this.desc);

  @override
  Widget build(BuildContext context) {
    var my_query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: app_color[3],//Color.fromRGBO(37, 45, 64, 1),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            width: double.infinity,
            child: Container(
              //semanticContainer: true,
              //clipBehavior:
              // Clip.antiAliasWithSaveLayer,
              /*
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(
                      15.0)),*/
              color: Colors.blue,
              child: Image.asset("images/$image", fit: BoxFit.cover),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  child: Text(
                    "$name",
                    style: TextStyle(fontSize: 40,
                        color: app_color[1],
                    fontFamily: 'Pacifico'),
                  ),
                  padding: EdgeInsets.only(top: (my_query.height*(1.67/100))),
                ),
                Padding(
                    padding: EdgeInsets.only(top: (my_query.height*(4.46/100)), left: (my_query.width*(3.86/100))),
                    child: Text(
                      "$desc",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
                Padding(padding: EdgeInsets.only(top: (my_query.height*(5.58/100))),
                child: Text("the price is : $price",
                style: TextStyle(
                  fontSize: 25,
                  color: app_color[5]

                ),),),
                Padding(
                    padding:EdgeInsets.only(top: (my_query.height*(7.81/100))),
                child: RaisedButton(
                  color :  Color.fromRGBO(23, 31, 60, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                          30.0),


                  ),
                  onPressed: (){
                    var x = BuySendData(name, price, image,  desc);
                    dummy_cart.add(x);
                  },
                  child: Text(
                    "Buy",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                        fontFamily: 'Pacifico'
                    ),
                  ),
                ),),

              ],
            ),
          )
        ],
      ),
    );
  }
}
