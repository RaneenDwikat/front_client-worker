import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/worker/assignedorder.dart';
import 'package:flutter_app/screens/worker/loginw.dart';
import 'package:flutter_app/screens/worker/pendingorder.dart';
import 'package:flutter_app/screens/worker/profile.dart';
//import 'package:/cleaning.dart';

class HomeScreen extends StatefulWidget {
  var name;
  HomeScreen(this.name);
  @override
  _HomeScreenState createState() => _HomeScreenState(name);
}

class _HomeScreenState extends State<HomeScreen> {
  var name;
  _HomeScreenState(this.name);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE

              decoration: BoxDecoration(
                  color: Color(0xffE63220),
                  image: DecorationImage(
                    image: AssetImage("assets/logo3.png"),
                    scale: 2.3,
                    alignment: FractionalOffset.center,
                  )),
              accountName: Text(
                "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              accountEmail: Text(
                "services at your fingertips",
                style: TextStyle(
                  height: 4,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              //   currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              trailing: Icon(
                Icons.account_circle,
              ),
              title: const Text('اعداد حسابي',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreatProfile(name)));
              },
            ),
            ListTile(
              trailing: Icon(
                Icons.shopping_cart,
              ),
              title: const Text('طلباتي',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => BookingPage(name)));
              },
            ),
            ListTile(
              trailing: Icon(
                Icons.home_repair_service,
              ),
              title: const Text('التسجيل كمزود خدمة',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SignupWPage()));
              },
            ),
            ListTile(
              trailing: Icon(
                Icons.help,
              ),
              title: const Text(
                'المساعدة',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              trailing: Icon(
                Icons.logout,
              ),
              title: const Text(
                'تسجيل الخروج',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPagew()));
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.topCenter,
              image: Image.network(
                      "https://mars-metcdn-com.global.ssl.fastly.net/content/uploads/sites/101/2019/04/30162428/Top-Header-Background.png")
                  .image,
            )),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  color: const Color(0xffE63220),
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const Text(
                            textDirection: TextDirection.rtl,
                            'احمد علي احمد',
                            style: TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          const Text(
                            textDirection: TextDirection.rtl,
                            'مُزوّد خدمة',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontFamily: 'Cairo',
                            ),
                          )
                        ],
                      ),
                      const CircleAvatar(
                        radius: 62,
                        backgroundImage: NetworkImage(
                            "https://smoothmove.co.za/wp-content/uploads/2021/02/pp1.jpg"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      assignedorderPage(name)));
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://www.seekpng.com/png/full/622-6222510_home-maintenance-services-icons.png",
                                height: 120,
                              ),
                              const Text('الخدمات المُقدمة',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Cairo',
                                  )),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // To do
                          print(name);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookingPage(name)));
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/512/3057/3057349.png",
                                height: 120,
                              ),
                              const Text('الطلبات',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Cairo',
                                  )),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // To do
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/512/1827/1827301.png",
                                height: 120,
                              ),
                              const Text('الاشعارات',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Cairo',
                                  )),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // To do
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT96cBORRLH_jjwB0nL6H415qzni-oMfnxRSA&usqp=CAU",
                                height: 120,
                              ),
                              const Text('الرسائل',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Cairo',
                                  )),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // To do
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreatProfile(
                                        name,
                                      )));
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://cdn.icon-icons.com/icons2/2468/PNG/512/user_kids_avatar_user_profile_icon_149314.png",
                                height: 120,
                              ),
                              const Text('إعدادات الحساب',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Cairo',
                                  )),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // To do
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPagew()));
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTku2oJC2M9rZu0jq3hLd7n_lgwUEFudUCVLu_XOo7bY0V_7ih5LsWA9p2LBVPFNkbVZx8&usqp=CAU",
                                height: 120,
                              ),
                              const Text('تسجيل الخروج',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'Cairo',
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
