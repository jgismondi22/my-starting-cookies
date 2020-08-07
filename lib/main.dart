import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// notice this is now a stateless widget
//the MyCard is the name of the app, and now the void, main, runApp function is running MyCard,
//MyCard in turn is put into a stateless widget
//to begin a stateless widget, type stlss, and it will fill out the code appropriately
// after return, begin the code MaterialApp, in place of the text "Container"
//container widgets:
//container widgets are like bins, it can have one child, or multiple children.
//if a container has children, the container will be the size of the children
//you can also hold a widget within a SafeArea widget, which will make sure that all your widgets fit within the actual phone screen and do not get cut off
//utilize margin function and edgeInsets.symmetric to choose where things sit within the screen and set a bit of a margin between the edge of the screen, and where the widget sits
//utilize the padding function to choose where a child within the widget sits. Ex the text within the container widget now sits with an edge of 20
//in summary; margin is for the outside of the widget, padding is for the inside of the widget
//ex code of margin and padding:  margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
//                                padding: EdgeInsets.all(20),
//
//SizedBox widget creates space between containers on the screen
//cossAxisAlignment: CrossAxisAlignment.stretch, stretches the columns across the horizontal of the screen
//note how to change text color by going into the //commented out text of the original code
//Ctrl Q: if you hover over a widget and click control Q, you can see everything that the widget is capable of performing
//materialpallete.com provides a neat way if you pick two colors, they will format a color pallete for your mainscreen and also points out the different color shades
//add icon widgets by typing Icons.add_'xxicon namexx'),
//UTILIZE CARD WIDGET
//utilize Padding and Padding Class!!! UTILIZE PADDING AND PADDING CLASS


void main() {
  runApp(
    MyCard()
  );
}
/*
 class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.amberAccent,
                    child: Text('Container 1'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width:100,
                height: 100,
                color: Colors.blue,
                child: Text(
                    'Container 2',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width:100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
/*class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/IMG-4556.jpg'),
              ),
              Text(
                'Jeremy Gismondi',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Product Manager',
                 style: TextStyle(
                   fontFamily: 'SourceSansPro',
                   color: Colors.teal.shade100,
                   fontSize: 20.0,
                   letterSpacing: 2.5,
                   fontWeight: FontWeight.bold,
                 )
              ),
              SizedBox(
                height: 20.0,
                width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
              ),
              Card(
                color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading:Icon(Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '717-695-1127',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      ),
                    ),
                  )
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'jgismondi22@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
*/
class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Diceed'),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    print('Left Button on Pressed');
                  },
                  child: Image.asset('images/dice$leftDiceNumber.jpg'),),
                ),
              Expanded(
               child: FlatButton(
                 onPressed: (){
                   print('Right Button Pressed!');
                 },
                 child: Image.asset('images/dice2.jpg'),),
               ),
              ],
          ),
        ),
        ),
      );
}
}