import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList = <String>['All', '⚡  Popular', '⭐  Featured'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              setState(() {
                selected =index;
              });
            },
            child: Container(
               padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              
              
                  decoration: BoxDecoration(
                    color: selected == index ?Colors.yellow:Colors.white  ,
                    border: Border.all(
                      color: selected == index ?Colors.red:Colors.yellowAccent
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(child: Text(_tagList[index])),
                ),
          ),
          separatorBuilder: (_, index) => SizedBox(width: 5),
          itemCount: _tagList.length),
    );
  }
}
