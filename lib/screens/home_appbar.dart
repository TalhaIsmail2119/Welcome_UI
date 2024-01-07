import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppbar extends StatefulWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

class _HomeAppbarState extends State<HomeAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
        left: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Home",
                style: TextStyle(fontSize: 25.0),
              ),
              Text(
                "Annie Bryant",
                style: TextStyle(fontSize: 25.0),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                transform: Matrix4.rotationZ(100),
                child: Stack(children: [
                  Row(
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
          ClipOval(
            
            child: Image.asset(
              
              "images/avatar.png",height: 50,width: 50,),
          ),
        ],
      ),
    );
  }
}
