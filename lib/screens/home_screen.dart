import 'package:flutter/material.dart';
import 'package:flutter_hero_partner_app/models/models.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: HeroPartnerPages.home,
      key: ValueKey(HeroPartnerPages.home),
      child: const HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home screen'),
            TextButton(
              onPressed: () {
                // 2
                Provider.of<AppStateManager>(context, listen: false).logout();
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
