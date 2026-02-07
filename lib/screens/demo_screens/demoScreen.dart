import 'package:flutter/material.dart';
import 'package:flutter_getx_project_template/constant/app_colors.dart';
import 'package:flutter_getx_project_template/widgets/texts/app_text.dart';

class Demoscreen extends StatefulWidget {
  const Demoscreen({super.key});

  @override
  State<Demoscreen> createState() => _DemoscreenState();
}

class _DemoscreenState extends State<Demoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Screen"),
        backgroundColor: AppColors.instance.blue2_50,
      ),
      body: Center(
        child: textWidget(text: "Hello world!"),
      ),
    );
  }
}
