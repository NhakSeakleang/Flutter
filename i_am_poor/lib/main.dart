import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[800],
          appBar: AppBar(
            backgroundColor: Colors.grey[700],
            title: Text('I Am Poor'),
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/rock.png'),
            ),
          ),
        ),
      ),
    );
