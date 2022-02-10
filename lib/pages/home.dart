import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildHorizontalRow(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    color: Colors.amber,
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    color: Colors.brown,
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                _rowColumn()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _rowColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.yellow,
                height: 60.0,
                width: 60.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.amber,
                height: 40,
                width: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.brown,
                height: 20.0,
                width: 20.0,
              ),
            ),
            const Divider(),
            _rowStack(),
            const Divider(),
            const Text('End of the line')
          ],
        ),
      ],
    );
  }

  Row _rowStack() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 100,
          child: Stack(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                color: Colors.amber,
                height: 60.0,
                width: 60.0,
              ),
              Container(
                color: Colors.brown,
                height: 40.0,
                width: 40.0,
              ),
            ],
          ),
        )
      ],
    );
  }

  Row _buildHorizontalRow() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.yellow,
            height: 40.0,
            width: 40.0,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.brown,
              height: 40.0,
              width: 40.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.yellow,
            height: 40.0,
            width: 40.0,
          ),
        ),
      ],
    );
  }
}
