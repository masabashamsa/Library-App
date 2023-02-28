import 'package:flutter/material.dart';
import 'package:library_app/widget/custom_tab_indicator.dart';

import 'package:library_app/widget/custom_tab_indicator.dart';
import 'package:library_app/constants/color_constant.dart';




class  SelectedBookScreen extends StatelessWidget {

  final  popularBookModel;

  const SelectedBookScreen({required Key key, required this.popularBookModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        height: 49,
          color: Colors.transparent,
        child: TextButton(
         style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
        ),
          onPressed: (){},
          child: const Text('Add to Library', style: TextStyle(fontFamily: 'RobotMono',
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w600)
          ),
        ),

      ),
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.orangeAccent,
                expandedHeight: MediaQuery.of(context).size.height*0.5,
                flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  color: Color(popularBookModel.color),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left:25,
                          top: 35,
                          child: GestureDetector(
                            onTap: (){
                             Navigator.pushReplacementNamed(context, "/homeScreen");
                            },
                          child: Container(
                        width: 32,
                        height:32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white
                        ),
                            //child: SvgPicture.asset('assets/icons/icon_back_arrow')
                      )))
                    ]
                  )

                ),
              ),
              SliverList(delegate: SliverChildListDelegate(
                [
                  const Padding(
                    padding: EdgeInsets.only(top: 24, left: 25),
                    child: Text('You\'re A Miracle', style: TextStyle(fontFamily: 'RobotMono',
                        fontSize: 27,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)
                    )
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 7, left: 25),
                      child: Text(
                          'Mike Haugh ', style: TextStyle(fontFamily: 'RobotMono',
                          fontSize: 27,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)
                      )
                  ),
                  Padding(padding: const EdgeInsets.only(top: 7, left: 25),
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: const <Widget>[
                      Text(
                        '\$',
                        style: TextStyle(fontFamily: 'RobotMono',
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400
                        ),
                  ),
                            Text(
                '20',
                style: TextStyle(fontFamily: 'RobotMono',
                fontSize: 32,
                color: Colors.orangeAccent,
                fontWeight: FontWeight.w400
    ),

                  ),
                ],
              )
    ),
            Container(
    height: 28,
    margin: const EdgeInsets.only(top:23, bottom: 36),
    padding: const EdgeInsets.only(left: 25),
    child: DefaultTabController(
                length: 3,
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
                    indicator: RoundedRectangleTabIndicator(
                        weight: 2,
                        width:30,
                         color: Colors.black
                      ),
                    tabs: [
                      Tab(
                        child: Container(
                          margin: const EdgeInsets.only(right: 39),
                          child: const Text('Description'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: const EdgeInsets.only(right: 39),
                          child: const Text('Reviews'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          margin: const EdgeInsets.only(right: 39),
                          child: const Text('Similar'),
                        ),
                      )
                    ]))
    ),
              const Padding(padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),child: Text('Hiiiiiii',
    style: TextStyle(fontFamily: 'RobotMono',
    fontSize: 12,
    color: Colors.grey,
    letterSpacing: 1.5,
    height: 2,
    fontWeight: FontWeight.w400)
    )),
              Align(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.only(bottom: 62),
                  width: 172,
                  height: 225,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('popularBookModel.image'),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  )
                )
              )
            ]
          )
        )
    ]
      )
    ),));
}
}