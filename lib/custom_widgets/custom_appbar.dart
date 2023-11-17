import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.appBartext, this.leading});
  final String appBartext;

  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: AppBar(
        leading: leading,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff303030),
        elevation: 0,
        title: Text(
          appBartext,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
