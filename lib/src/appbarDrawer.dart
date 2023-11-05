import 'package:find_mydoctor/utils/colors.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 230,

            // width: 200,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome !",
                    style: TextStyle(
                      fontFamily: 'kanit',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    width: 106,
                    height: 68,
                    color: Colors.grey,
                  ),
                  Text(
                    "asshisadaddad@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Aashi Srivastava",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "Home",
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "Support",
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "Manage OR",
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "Logout",
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {},
          ),
        ],
        // Add more drawer items as needed
      ),
    );
  }
}
