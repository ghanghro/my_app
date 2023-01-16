import 'package:flutter/material.dart';
class third_screen extends StatefulWidget {
  const third_screen({Key? key}) : super(key: key);

  @override
  State<third_screen> createState() => _third_screen();
}

class _third_screen extends State<third_screen>{
  int Counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top:50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Pepperoni',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w600),),
                SizedBox(height: 7),
                Text("\$9.76",style: TextStyle(color: Colors.deepOrange,fontSize: 25,fontWeight: FontWeight.bold),),
                Image.asset('assets/images/burger_2.png',height: 290,fit: BoxFit.cover),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ink(
                      height: 40,
                      width: 40,
                      decoration: ShapeDecoration(
                          color: Colors.deepOrangeAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      child: IconButton(
                        icon: Icon(Icons.remove,),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            if(Counter > 0) {
                              Counter--;
                            }
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('$Counter'),
                    SizedBox(width: 10),
                    Ink(
                      height: 40,
                      width: 40,
                      decoration: ShapeDecoration(
                          color: Colors.deepOrangeAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add,),
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            Counter++;
                          });
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Slices Pepperoni, mozzarella cheese fresh oregano,ground black pepper,'
                        'pizza sauce',
                    style: TextStyle(wordSpacing: 3,fontWeight: FontWeight.w600,fontSize:18,color: Colors.grey[600]),),
                ),
                SizedBox(height: 30),
                Center(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton(
                        child: Text('Add to cart'),
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xfffe5e00),
                            // padding: EdgeInsets.all(13),
                            fixedSize: Size(295, 42),
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              // letterSpacing: 1
                            ),
                            alignment: Alignment.center,
                            shape: StadiumBorder())),
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),

          ),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.small(onPressed: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => third_screen(),));
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
