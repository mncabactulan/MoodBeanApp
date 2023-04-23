import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green,
      child: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          const SizedBox(

            height: 300,
            child:Image(
                image: AssetImage('assets/images/mb2.png')),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.white,),
            title: const Text('Account'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.white,),
            title: const Text('Notifications'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip, color: Colors.white,),
            title: const Text('Privacy and Policy'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white,),
            title: const Text('Settings'),
            onTap: () {},
          ),
// ListTile(
//
// Switch(value: false, onChanged: (newValue){_themeManager.toggleTheme(isDark)}),),
// ),
          ListTile(
            leading: const Icon(Icons.help, color: Colors.white,),
            title: const Text('Help'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.list, color: Colors.white,),
            title: const Text('Terms and Conditions'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.error, color: Colors.white,),
            title: const Text('About'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.white,),
            title: const Text('Logout'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}