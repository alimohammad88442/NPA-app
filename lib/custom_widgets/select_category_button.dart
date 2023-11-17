import 'package:flutter/material.dart';

class SelectCategoryButton extends StatelessWidget {
  const SelectCategoryButton({
    super.key,
    required this.categoryName,
    required this.categoryColor,required this.ontap,
    
  });
  final String categoryName;
  final Color categoryColor;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 15),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 220,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: categoryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(categoryName , style : const TextStyle(fontSize: 30)),
          ),
        ),
      ),
    );
  }
}
