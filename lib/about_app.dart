import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.green[600],
        automaticallyImplyLeading: false,
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "معلومات عن التطبيق",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: 'Tajawal',
            ),
            textDirection: TextDirection.rtl,
          ),
        ),
        elevation: 40,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(right: 15.0, top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 60,
                      backgroundImage: const AssetImage('images/samamedia.png'),
                      backgroundColor: Colors.green[600],
                    ),
                  const SizedBox(width: 20),
                  CircleAvatar(
                      radius: 60,
                      backgroundImage: const AssetImage('images/samaculture.png'),
                      backgroundColor: Colors.green[600],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "هذا التطبيق وشعاراته ومحتواه علامة تجارية لصالح مركز سما",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Harmattan',
                color: Colors.red[800],
              ),
              textAlign: TextAlign.right,
            ),
            const SizedBox(height: 10),
            Text(
              "جميع الحقوق محفوظة",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Harmattan',
                color: Colors.red[800],
              ),
              textAlign: TextAlign.right,
            ),
            const SizedBox(height: 10),
            const Text(
              "تم تطوير هذا التطبيق من قبل: م. عبدالله يوسف سبيته",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "جوال رقم: 0598267845",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
