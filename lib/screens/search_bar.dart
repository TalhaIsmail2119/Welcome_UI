import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.all(5),
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
          
          "images/search_bg.png", ),)
      
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Fast Search ",style: TextStyle(fontSize: 25.0,color: Colors.white
          ),),

          Text("You can search quickly for\n the you want",style: TextStyle(color: Colors.white),),

          SizedBox(height: 15,),

          Container(
            height: 50,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(children: [
                Image.asset("images/search.png",height: 15,width: 15,),
                SizedBox(width: 10,),
                Text("Search")
              ]),
            ),
          )
        ],
      ),
    );
  }
}
