import 'package:flutter/material.dart';

import './products_overview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: mediaquery.height * .2,
          ),
          Image.network(
              "https://lh3.googleusercontent.com/proxy/83HjYvebEQd7R0_0XnNftTkeQwfsNlETBOZvlDrREDcu8qwxouxFO16WxwnLaxqUqRc7hPqE8vJyZvbYOQuLGAu0l8HS-neejc-xWtkveHjdC06XQXZhfLrF"),
          SizedBox(
            height: mediaquery.height * .1,
          ),
          FlatButton.icon(
            onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ProductsOverviewScreen())),
            icon: Icon(Icons.arrow_forward_outlined),
            label: Text("Wejdz do sklepu".toUpperCase()),
          )
        ],
      ),
    );
  }
}
