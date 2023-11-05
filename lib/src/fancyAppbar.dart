import 'package:customeflutterappbar/src/appbarDrawer.dart';
import 'package:customeflutterappbar/src/colors.dart';

import 'package:flutter/material.dart';

class custom23appbar extends StatelessWidget {
  const custom23appbar({
    super.key,
    this.title1,
    required this.nextScreen,
    this.title2,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required this.screenwidget,
    required this.addbutton,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final Widget screenwidget;
  final bool addbutton;
  final Widget nextScreen;
  final title1;
  final title2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(185.0),
        child: Container(
          height: 185,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color(0xff08da75),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(71))
              // borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
              ),
          child: Stack(
            children: [
              Positioned(
                right: 15,
                top: 10,
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                ),
              ),
              Positioned(
                left: 15,
                bottom: 40,
                child: Text(
                  title1 ?? "",
                  style: const TextStyle(
                    fontFamily: 'kanit',
                    fontWeight: FontWeight.w600,
                    fontSize: 38,
                  ),
                ),
              ),
              Positioned(
                left: 15,
                bottom: 10,
                child: Text(
                  title2 ?? "",
                  style: TextStyle(
                    fontFamily: 'kanit',
                    fontWeight: FontWeight.w400,
                    fontSize: 38,
                  ),
                ),
              ),
              addbutton
                  ? Positioned(
                      bottom: 10,
                      right: 45,
                      child: Container(
                        width: 65,
                        height: 25,
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => nextScreen,
                              ),
                            );
                          },
                          child: const Text(
                            "Add+",
                            style: TextStyle(
                              color: Color(0xff08da75),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
      drawer: DrawerWidget(),

      // Add your body content here
      body: Column(
        children: [
          // SizedBox(height: 180),
          // VerticalCategory(),
          Expanded(child: screenwidget)
          // Expanded(child: DoctorMenu()),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';

class CustomAppBar12 extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  CustomAppBar12({required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 16, right: 16),
      height: 80,
      color: Colors.blue, // Customize the background color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Menu Icon
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              scaffoldKey.currentState!.openDrawer(); // Open the drawer
            },
          ),
          // Title or other AppBar content
          Text(
            'My App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Add more widgets for other AppBar actions
        ],
      ),
    );
  }
}
