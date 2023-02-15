import 'package:flutter/material.dart';
import 'package:library_app/selected_book_screen.dart';
import 'package:library_app/constants/color_constant.dart';
import 'package:library_app/models/newbook_model.dart';
import 'package:library_app/widget/custom_tab_indicator.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('E-Lib'),
      ),
      body: SafeArea(
        child: Container(
         child: ListView(

           physics: const BouncingScrollPhysics(),
           children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(left: 25, top: 25),
             child: Column(
               crossAxisAlignment:CrossAxisAlignment.start,
               children: <Widget>[
                 Text(
                   'Hi, Shamsa',
                   style: Theme.of(context).textTheme.titleLarge,
                 ),
                 Text(
                   'Discover Latest Book',
                   style: Theme.of(context).textTheme.titleLarge,
                 ),
               ],
             )
             ),
              Container(
                height: 39,
                margin: const EdgeInsets.only(left: 25, right: 25, top: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white38
                ),
                child: Stack(
                  children: const <Widget>[
                    TextField(
                      style: TextStyle(fontFamily: 'RobotMono',
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                      ),
                     decoration: InputDecoration(
                       contentPadding: EdgeInsets.only(left:19, right: 50, bottom: 8),
                       border: InputBorder.none,
                       hintText: 'Search book...',
                       hintStyle: TextStyle(fontFamily: 'RobotMono',
                         fontSize: 12,
                         color: Colors.grey,
                         fontWeight: FontWeight.w600
                       )
                     ),
              ),
          /* Positioned(

           ),*/
        /*Positioned(
          top: 8,
          right: 9,
           //child:
            SvgPicture.assets('assets/icons/icon_search_white.svg'),
     ) */
   ],
    ),
              ),
             Container(
               height: 25,
               margin: const EdgeInsets.only(top: 30),
               padding: const EdgeInsets.only(left: 25),
               child: DefaultTabController(
                   length: 3,
                   /*Tab Bar*/
                   child: TabBar(
                  labelPadding: const EdgeInsets.all(0),
                        indicatorPadding: const EdgeInsets.all(0),
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        labelStyle: const TextStyle(fontFamily: 'RobotMono',
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                        unselectedLabelStyle: const TextStyle(fontFamily: 'RobotMono',
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                        /*indicator: RoundedRectangleTabIndicator(
                          weight: 2,
                          width:10,
                            labelColor: Colors.black
                        ),*/
                        tabs: [
                     Tab(
                       child: Container(
                         margin: const EdgeInsets.only(right: 23),
                           child: const Text('New'),
                       ),
                     ),
                     Tab(
                       child: Container(
                         margin: const EdgeInsets.only(right: 23),
                         child: const Text('Trending'),
                       ),
                     ),
                     Tab(
                       child: Container(
                         margin: const EdgeInsets.only(right: 23),
                         child: const Text('Best Seller'),
                       ),
                     )
                   ]))
             ),
             Container(
               margin: const EdgeInsets.only(top: 23),
               height: 250,
               child: ListView.builder(
                 padding: const EdgeInsets.only(left: 25, right: 6),

                   //itemCount: newbooks.length,
                   physics: const BouncingScrollPhysics(),
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index){
                 return Container(
                   margin: const EdgeInsets.only(right: 19),
                   height: 210,
                   width: 153,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.black,
                     /*image: DecorationImage(
                     ),*/


                   )
                 );
               }),
             ),
             const Padding(
                 padding: EdgeInsets.only(left: 25, top: 25),
                 child:  Text(
                   'Popular',
                   style: TextStyle(fontFamily: 'RobotMono',
                       fontSize: 20,
                       fontWeight: FontWeight.w600,
                       color: Colors.black),
                 ),
             ),
             ListView.builder(
               padding: const EdgeInsets.only(top:25, right: 25, left: 25),
                 physics: const BouncingScrollPhysics(),
                 shrinkWrap: true,
                 //itemCount: populars.length,
                 itemBuilder: (context, index){
                 return GestureDetector(
                  onTap: (){
                    print('ListView Tapped');
                    /*Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>SelectedBookScreen(
                              popularBookModel: populars[index], key: null,)));*/
                  },
               child: Container(
                 margin: const EdgeInsets.only(bottom: 19),
                 height: 81,
                 width: MediaQuery.of(context).size.width-50,
                   color: Colors.black,
                 child: Row(
                   children: < Widget>[
                     Container(
                       height: 81,
                       width: 62,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                         /*image: DecorationImage(
                             image: AssetImage(populars[index].image)
                         ),*/
                           color: Theme.of(context).colorScheme.secondary
                       ),
                     ),
                     const SizedBox(width: 21,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       /*children: <Widget>[
                         Text(populars[index].title, style: const TextStyle(fontFamily: 'RobotMono',
                         fontSize: 16,
                         color: Colors.black,
                         fontWeight: FontWeight.w600
                     ),),
                         const SizedBox(height: 5,),
                         Test(populars[index].author,  style: const TextStyle(fontFamily: 'RobotMono',
                             fontSize: 10,
                             color: Colors.grey,
                             fontWeight: FontWeight.w400
                         ),),
                         const SizedBox(height: 5,),
                         Text('\$' + populars[index].price,  style: const TextStyle(fontFamily: 'RobotMono',
                             fontSize: 14,
                             color: Colors.black,
                             fontWeight: FontWeight.w600
                         ),)
                       ]*/
                     )
                   ],),
                 ),
               );
             }),
                   ],
                 ),
             ),
      ),

    );

  }
}