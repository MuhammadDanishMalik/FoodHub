import 'package:flutter/material.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.1200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(115, 202, 202, 202),
                offset: Offset(0, 14),
                blurRadius: 20,
                spreadRadius: 1)
          ]),
      child: Icon(Icons.tune, color: Colors.orange.shade800),
    );
  }
}
