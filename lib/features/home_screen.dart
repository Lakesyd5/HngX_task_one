import 'package:flutter/material.dart';
import 'package:hng_stage_one/commons/widgets/text_widget.dart';
import 'package:hng_stage_one/features/webview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Slack Name section
              Row(
                children: [
                  const AppText(
                    text: 'Slack Name :',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  AppText(
                    text: 'Adeleke Ojedokun',
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: Colors.green.shade800,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Display Image
              Container(
                height: 280,
                width: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/IMG_2281.JPG'),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 30),
              // Open GitHub Button
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade800,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  minimumSize: const Size(200, 45)
                ),
                onPressed: () {
                  // Navigate to webview screen...
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WebViewScreen(),));
                },
                icon: const Icon(Icons.arrow_forward_rounded, color: Colors.white,),
                label: const AppText(
                  text: 'Open GitHub',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
