import 'package:flutter/material.dart';
import '../dummy_data.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static const routeName = './details_screen';

  Widget buildSectionTitle(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 200,
        width: 300,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedItem = Content_data.firstWhere((item) => item.id == itemId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedItem.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(selectedItem.image, fit: BoxFit.cover),
          ),
          buildSectionTitle('PRoducts'),
          buildContainer(
            ListView.builder(
              itemBuilder: (ctx, index) => Card(
                color: Colors.blueGrey,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedItem.categories[index])),
              ),
              itemCount: selectedItem.categories.length,
            ),
          ),
          buildSectionTitle('Steps'),
          buildContainer(ListView.builder(
            itemBuilder: (ctx, index) => ListTile(
              leading: CircleAvatar(
                child: Text('# ${(index)}'),
              ),
              title: Text(selectedItem.categories[index]),
            ),
            itemCount: selectedItem.categories.length,
          ))
        ]),
      ),
    );
  }
}
