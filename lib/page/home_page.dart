import 'package:flutter/material.dart';
import 'package:web_flutter/widget/line_chart_widget.dart';

import '../../Widget/sidebar.dart';
import '../../const.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SidebarWidget(size: size,),
            VerticalDivider(
              color: Colors.grey.shade500,
              thickness: 2,
              // indent: 20,
              // endIndent: 0,
              width: 10,
            ),
            SizedBox(
              width: size.width*0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(10.0),
                              child:  Text('Dashboard', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children:const [
                                  Icon(Icons.add_circle, color: Color(0xff78AFFE),),
                                  SizedBox(width: 10,),
                                  Text('Add New Widgets', style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    color: Color(0xff78AFFE)
                                  ),),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:const [
                                      Text('Sales Performance', style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20
                                      ),),
                                      Text('Visited 10 to 100 countries', style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                      ),),
                                    ],
                                  ),
                                  const SizedBox(width: 20,),
                                  OutlinedButton(
                                      onPressed: (){},

                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          children: const[
                                            Icon(Icons.upload_outlined, color: Colors.grey,),
                                            Text('Export', style: TextStyle(
                                              color: Colors.black
                                            ),)
                                          ],
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40,),

                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: SizedBox(
                                width: size.width*0.33,
                                  height: 300,
                                  child: LineChartWidget()),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
            ),
            SizedBox(
                width: size.width*0.35,
                child: Column()
            ),
          ],
        ),
      ),
    );
  }
}