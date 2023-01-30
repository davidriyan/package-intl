import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('faker'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage:
                NetworkImage('https://picsum.photos/id/${480 + index}/536/354'),
          ),
          title: Text('${faker.person.firstName()}'),
          subtitle: Text(
              '${DateFormat.yMd().format(DateTime.now())}'), //memberikan format pada date time, untuk lebih jelasnya dapat dibaca di documentasi packagenya di pub.dev => intl
        ),
      ),
    );
  }
}
