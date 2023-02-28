import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
   Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Library App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:

        const MyHomePage(title: 'E-Lib'),

      // body: const MyCustomForm(),
       );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(


        child: Container(
          child: ListView(

            physics: const BouncingScrollPhysics(),
            children: <Widget>[
            Padding(
           padding: const EdgeInsets.only(left: 25, top: 25),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Hi, Shamsa',
              ),
              Text(
                'Discover Latest Book',
                style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
            ),
              Container(
                height: 39,
                margin: const EdgeInsets.only(left: 25, right: 25, top: 18),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white38,
                   // image: DecorationImage(image: AssetImage('asset/images/image1.jpg'))
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
                              image: DecorationImage(image: AssetImage('asset/images/image1.jpg'))

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

            ],
          ),),
      ),
    );
  }
}
/*Form widget
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
*/

