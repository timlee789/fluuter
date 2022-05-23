import 'package:flutter/material.dart';
import 'package:flutter2/screens/tabs_screen.dart';
import './screens/category_meals.dart';
import './screens/tabs_screen.dart';
import './screens//details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        // fontFamily: 'Raleway',
        // textTheme: ThemeData.light().textTheme.copyWith(
        //     bodyText1: TextStyle(
        //       color: Color.fromRGBO(20, 51, 51, 1),
        //     ),
        //     bodyText2: TextStyle(
        //       color: Color.fromRGBO(20, 51, 51, 1),
        //     ),
        //     headline1: TextStyle(
        //       fontSize: 20,
        //       fontFamily: 'RobotoCondensed',
        //       fontWeight: FontWeight.bold,
        //     )),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        DetailsScreen.routeName: (ctx) => DetailsScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
