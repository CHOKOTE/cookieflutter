 import 'package:cookie/bottom_bar.dart';
 import 'package:flutter/material.dart';
 class CookieDetail extends StatelessWidget {
   final assetPath, cookieprice, cookiename;
   CookieDetail({this.assetPath, this.cookieprice, this.cookiename});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:AppBar(
         backgroundColor:Colors.white,
         elevation:0.0,
         centerTitle: true,
         leading: IconButton(
           icon:Icon(Icons.arrow_back,color:Color(0xFF545D68)),
           onPressed:(){
             Navigator.of(context).pop();
           }),
         title: Text(
           'pickup',
            style: TextStyle(fontFamily: "Varela",fontSize: 20.0,color: Color(0xFF545D68)),
         ),
         actions:<Widget> [
           IconButton(icon: Icon(Icons.notifications_none), color: Color(0xFF545D68),
           onPressed: (){},
           ),
           
         ],
       ), 
       body: ListView(
         children: [
           SizedBox(height:15.0),
           Padding(padding:EdgeInsets.only(left: 20.0),
           child:Text('cookie',style: TextStyle(color: Color(0xFFF17532),fontSize: 42.0,
           fontFamily: 'Varela',fontWeight:FontWeight.bold))),
           SizedBox(height:15.0),
           Hero(tag: assetPath, child: Image.asset(
             assetPath,height: 150,width: 100,fit:BoxFit.contain
           )),
           SizedBox(height:15.0),
           Center(
             child: Text(cookieprice,style:TextStyle(
             fontFamily: 'Varela',
             fontWeight: FontWeight.bold,
             fontSize: 22.0,
             color: Color(0xFFF17532),
             )
             ),
           ),
           SizedBox(height:15.0),
           Center(child: Text(cookiename,style:TextStyle(
              color: Color(0xFF575E67),
              fontFamily: 'Varela',
              fontSize: 24.0
           )
           ),
           ),
           SizedBox(height:20.0),
           Center(
             child: Container(
               width:MediaQuery.of(context).size.width -50.0,
               child:Text('Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
               style:TextStyle(
                 fontSize:16.0,
                 fontFamily:'Varela',
                 color:Color(0xFFB4B8B9)
               )
               )
             ),
           ),
          SizedBox(height:20.0),
          Center(
            child:Container(
              width: MediaQuery.of(context).size.width-50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(25.0),
                color:Color(0xFFF17532)
              ),
              child: Center(
                child:Text("Add to cart",style:TextStyle(fontSize: 14.0,
                fontFamily: 'varela',
                fontWeight: FontWeight.bold,
                color: Colors.white
                )
                )
              ),
            )
          )

         ],
       ),
       floatingActionButton: FloatingActionButton(child:Icon(Icons.fastfood),
       onPressed: (){},
       backgroundColor: Color(0xFFF17532),
       ) ,
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: BottomBar(),
     );
   }
 }