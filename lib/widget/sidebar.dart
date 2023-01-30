import 'package:flutter/material.dart';

import '../const.dart';

class SidebarWidget extends StatefulWidget {
  final Size size;
  const SidebarWidget({Key? key, required this.size}) : super(key: key);

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  bool switchOne = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width * 0.25,
      child: ListView(
        primary: false,
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        // physics: NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              //images/car2.png
              SizedBox(
                width: 70,
                child: Image.asset('images/logo.png'),
              ),
              Expanded(
                child: ListTile(
                  title: Text(Constance.appName),
                  subtitle: Text(Constance.appSubtitle),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ListTile(
              title: const Text("Dashboard"),
              leading: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                    color: Color(0xff0068FF),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        color: Color(0xffCFDBE9),
                        offset: Offset(
                          6,
                          6,
                        ),
                      ),
                      BoxShadow(
                        blurRadius: 12,
                        color: Color(0xffCFDBE9),
                        offset: Offset(
                          -6,
                          -6,
                        ),
                      ),
                    ],
                    gradient: LinearGradient(
                      stops: [0, 1],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff0068FF), Color(0xff0068FF)],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(
                      5,
                    ))),
                child: const Icon(
                  Icons.auto_awesome_mosaic_outlined,
                  color: Colors.white,
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          const ListTile(
            leading: Icon(
              Icons.flight_land,
            ),
            title: Text("Deals"),
          ),
          const ListTile(
            leading: Icon(
              Icons.group,
            ),
            title: Text("Client"),
          ),
          const ListTile(
            leading: Icon(
              Icons.wechat,
            ),
            title: Text("Message"),
          ),
          const ListTile(
            leading: Icon(
              Icons.receipt_long_rounded,
            ),
            title: Text("My site"),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text("Settings"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 2,
          ),
          ListTile(
            leading: const Icon(
              Icons.bedtime_outlined,
            ),
            title: const Text("Dark Mode"),
            trailing: Switch(
              onChanged: (bool value) {
                setState(() {
                  switchOne = !switchOne;
                });
              },
              value: switchOne,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 250,
                width: widget.size.width * 0.20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff10062B)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 120,
                      ),
                      // const Center(
                      //   child:  SizedBox(
                      //     width: 120,
                      //     child: Text("Updating your plan for premium!", style: TextStyle(
                      //         color: Colors.white
                      //     ),),
                      //   ),
                      // ),
                      const Text(
                        "Updating your plan",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        " for premium!",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape:  RoundedRectangleBorder(
                              borderRadius:  BorderRadius.circular(30.0),
                              // side: BorderSide(color: Colors.red),
                            ),
                          padding:const EdgeInsets.all(21),
                            backgroundColor: Colors.white),

                        child: const Text("Upgrade Now", style: TextStyle(
                          color: Color(0xff232733),
                          // fontSize: 19,
                          fontWeight: FontWeight.w800
                        ),),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: -1,
                  left: 2,
                  child: SizedBox(
                    width: 250,
                      child: Image.asset('images/air.png')
                  ),

              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
