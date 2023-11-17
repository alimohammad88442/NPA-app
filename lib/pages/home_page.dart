
import 'package:flutter/material.dart';
import 'package:nba_app/custom_widgets/custom_appbar.dart';
import 'package:nba_app/custom_widgets_body/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'homepage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        appBartext: 'Choose a category',
       
      ),
      body:  HomepageBody(),
    );
  }
}
