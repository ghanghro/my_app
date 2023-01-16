import 'package:flutter/material.dart';
// import 'package:the_food_app/first_screen.dart';
import 'package:the_food_app/fourth_screen.dart';
import 'package:the_food_app/second_screen.dart';
import 'package:the_food_app/third_screen.dart';
// import 'package:flutter/services.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}
class _dashboardState extends State<dashboard>{

  @override
  Widget build(BuildContext context){
  return Scaffold(
  //   appBar: AppBar(
  //    backgroundColor: Colors.purpleAccent,
  // ),
  body: Container(
    // margin: EdgeInsets.all(5),
    child: ListView(
       children: [
       ListTile(
         title: Text('Hi Rechard',style: TextStyle(color: Color(0xfffe5e00),fontSize: 18,
         fontWeight: FontWeight.w700,wordSpacing: 1),),
         subtitle: Text('Order & Eat',style: TextStyle(fontSize: 15,wordSpacing: 1,fontWeight: FontWeight.w500),
         ),
       trailing:
       Container(
         padding: EdgeInsets.all(4), // Border width
         decoration: BoxDecoration(color: Colors.red[100], shape: BoxShape.circle),
          child: ClipOval(
           child: SizedBox.fromSize(
             size: Size.fromRadius(22), // Image radius
             child: Image.network('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', fit: BoxFit.cover),
            ),
           ),
         ),
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
           child: TextFormField(
             cursorColor: Colors.grey[200],
             decoration: InputDecoration(
               fillColor: Colors.grey[200],
               filled: true,
               hintText: 'Find your Food',
               hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
               prefixIcon: Icon(Icons.search,color: Colors.grey,),
               contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
               border: OutlineInputBorder(borderSide: BorderSide.none,
               borderRadius: BorderRadius.circular(10)
               ),
             ),
          ),
         ),
         SizedBox(height: 9),
         Padding(
           padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
           child: Container(
            // padding: EdgeInsets.fromLTRB(2, 5,35, 5),
            height: 140,
            decoration: BoxDecoration(
             color: Color(0xfffec5aa),
             borderRadius: BorderRadius.circular(20),
              ),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Align(
                   // alignment: Alignment.topRight,
                     child: Image.asset('assets/images/img_3.png',width: 130,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Free delivery',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text('May 2 - june 10 ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                        SizedBox(height: 8),
                        Center(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: ElevatedButton(
                                child: Text('Order Now'),
                                onPressed: () {
                                },
                                 style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xfffe5e00),
                                    padding: EdgeInsets.all(10),
                                    fixedSize: Size(110, 40),
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    alignment: Alignment.center,
                                    shape: StadiumBorder())),
                            ),
                          ),
                         ],
                        )
                       ],
                     ),
                    ),
                  ),
                SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text('Categories',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                ),
              SizedBox(height: 18),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                 child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisSize: MainAxisSize.max,
                 children: [
                 Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                    color: Color(0xfffdf4e5),
                  ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                     Image.asset('assets/images/img_1.png',height: 60,),
                     Text('Pizza',),
                     SizedBox(height: 8,),
                     ],
                   ),
                 ),
                 SizedBox(width: 8),
                  Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff8e6fc),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   // crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                   Image.asset('assets/images/burger_2.png',height: 60,),
                     Text('Burger',),
                     SizedBox(height: 8,),
                   ],
                  ),
                 ),
                   SizedBox(width: 8),
                   Container(
                     height: 100,
                     width: 100,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Color(0xffe3f3fa),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/img_3.png',height: 60,),
                         Text('Hotdog',),
                         SizedBox(height: 8,),
                       ],
                     ),
                   ),
                   SizedBox(width: 8),
                   Container(
                     height: 100,
                     width: 100,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Color(0xffe7fce3),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       // crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/img_4.png',height: 50,),
                         Text('Drink',),
                         SizedBox(height: 2,),
                       ],
                     ),
                   ),
               ],
             ),
            ),
           SizedBox(height: 18),
           Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 15,),
               child: Text('Popular',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
             ),

             Padding(
               padding: const EdgeInsets.only(right: 45),
               child: Text('See all',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.deepOrange),),
             ),
           ],
          ),
          SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
            children: [
             Padding(
               padding: const EdgeInsets.all(12),
               child: Card(
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15)
                 ),
                 elevation: 6.0,
                 child: Container(
                   margin: EdgeInsets.all(8),
                   height: 200,
                   width: 120,
                   decoration: BoxDecoration(
                     color: Color(0xffffffff),
                     // borderRadius: BorderRadius.circular(20)
                   ),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text('Pepperioni Pizza',style: TextStyle(fontSize:14,fontWeight: FontWeight.w600),),
                      SizedBox(height: 9),
                      Image.asset('assets/images/pizz_5.png',height: 80,fit: BoxFit.cover,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("\$",style: TextStyle(color: Colors.deepOrange,fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(width: 2),
                         Text('9.76'),
                       ],
                       ),
                       SizedBox(height: 4),
                       ElevatedButton.icon(
                        icon: Icon(Icons.add),
                        label: Text("Add"),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => second_screen(),));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(42.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                          backgroundColor: Colors.deepOrange
                        ),
                      )
                    ],
                   ),
                 ),
               ),
             ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                elevation: 6.0,
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    // borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Cheese Burger',style: TextStyle(fontSize:14,fontWeight: FontWeight.w600),),
                      SizedBox(height: 9),
                      Image.asset('assets/images/burger_2.png',height: 90,fit: BoxFit.contain,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$",style: TextStyle(color: Colors.deepOrange,fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(width: 2),
                          Text('9.76'),
                        ],
                      ),
                      SizedBox(height: 4),
                      ElevatedButton.icon(
                        icon: Icon(Icons.add),
                        label: Text("Add"),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => third_screen(),));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(42.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                            backgroundColor: Colors.deepOrange
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                elevation: 6.0,
                child: Container(
                  margin: EdgeInsets.all(8),
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    // borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Pizza',style: TextStyle(fontSize:14,fontWeight: FontWeight.w600),),
                      SizedBox(height: 9),
                      Image.asset('assets/images/img_1.png',height: 90,fit: BoxFit.cover,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$",style: TextStyle(color: Colors.deepOrange,fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(width: 2),
                          Text('9.76'),
                        ],
                      ),
                      SizedBox(height: 4),
                      ElevatedButton.icon(
                        icon: Icon(Icons.add),
                        label: Text("Add"),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => fourth_screen(),));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(42.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                            backgroundColor: Colors.deepOrange
                        ),
                      ),
                    ],
                  ),
                ),
               ),
               ],
             ),
            ),
          SizedBox(height: 30),
          ],
         ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.small(onPressed: (){
       Navigator.push(context, MaterialPageRoute(
       builder: (context) => second_screen(),));
       },
     child: Icon(Icons.add_shopping_cart),
      backgroundColor: Colors.deepOrange,
      ),
      bottomNavigationBar: BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home,color: Colors.deepOrange),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.black,
            onPressed: () {},
          ),
          SizedBox(
            width: 40,
          ),
           IconButton(
            icon: Icon(Icons.add_shopping_cart),
            color: Colors.black,
            onPressed: () {},
           ),
           IconButton(
            icon: Icon(Icons.settings),
            color: Colors.black,
            onPressed: () {},
           ),
         ],
       ),
      ),
     );
 }
}
