// import 'package:day22_job/screens/home_appbar.dart';
// import 'package:day22_job/screens/search_bar.dart';
// import 'package:day22_job/screens/tag_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hw22/screens/home_appbar.dart';
import 'package:hw22/screens/tag_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    
              )),
              Expanded(
                flex: 1,
                child: Container(
                color: Colors.grey.withOpacity(0.1),
              )),
            ],
          
          ),
          Column(
            children: [
              HomeAppbar(),
              SearchBar(),
              TagList()
            ],
          )
        ],
      ),
      
    );
  }
}
