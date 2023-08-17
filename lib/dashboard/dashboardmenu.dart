import 'package:flutter/material.dart';
import 'package:miningpush/dashboard/desktop%20dashboard/desktopwithdraw.dart';

import 'constantsdashboard.dart';
import 'desktop dashboard/DashboardDesktop.dart';
import 'desktop dashboard/investment.dart';

class dashboardmenu extends StatelessWidget {
  const dashboardmenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/miningpush.png',
                width: 150,
              ),
            ),
            // drawerlistcreate()
            drawerlistcreate(
                title: "Dashboard", iconss: Icons.dashboard, press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((BuildContext) => const Dashboardmenu())),
                  );
                }),
            drawerlistcreate(
                title: "Deposits", iconss: Icons.description, press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((BuildContext) => const Investment())),
                  );
                }),
            drawerlistcreate(
                title: "withdraws",
                iconss: Icons.no_transfer,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((BuildContext) => const withdrawdesktop())),
                  );
                }),
                
            drawerlistcreate(
                title: "Investment", iconss: Icons.money_sharp, press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((BuildContext) => const Investment())),
                  );
                }),
            drawerlistcreate(
                title: "Referrals", iconss: Icons.people, press: () {}),
            drawerlistcreate(
                title: "LogOut", iconss: Icons.logout, press: () {}),
          ],
        ),
      ),
    );
  }
}

class drawerlistcreate extends StatelessWidget {
  const drawerlistcreate({
    required this.title,
    required this.iconss,
    required this.press,
    Key? key,
  }) : super(key: key);
  final String title;
  final IconData iconss;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        iconss,
        size: 16,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54, fontSize: 18),
      ),
    );
  }
}
