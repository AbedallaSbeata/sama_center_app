import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.green[600],
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text(
              "معلومات عن المركز",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Tajawal'),
            ),
          ),
          SizedBox(width: 10),
        ],
        automaticallyImplyLeading: false,
        elevation: 40,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.all(Radius.circular(20)),
                  color: Colors.green[600],
                ),
                width: 150,
                height: 40,
                child: const Center(
                  child: Text(
                    "هدفنا",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Reem Kufi'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "خلق جيل مبدع في المجالات الفنية والثقافية قادر على استخدام مهاراته بطريقة احترافية وتنميتها وتطويرها للوصول الى الاحتراف وذلك من خلال تقديم مجموعة من الدورات التدريبية في المجالات المختلفة الفنية والثقافية وغيرها",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Harmattan',
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.all(Radius.circular(20)),
                  color: Colors.green[600],
                ),
                width: 150,
                height: 40,
                child: const Center(
                  child: Text(
                    "نقدم",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Reem Kufi'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "الخدمات الفنية والانتاج الفني واخراج أعمال فنية كاملة داخل استوديوهات المركز بالاضافة الى الخدمات الصوتية بمختلف المجالات",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Harmattan',
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.all(Radius.circular(20)),
                  color: Colors.green[600],
                ),
                width: 150,
                height: 40,
                child: const Center(
                  child: Text(
                    "رؤيتنا",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Reem Kufi'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "نسعى لنصل الى جيل مبدع في المجالات الثقافية والفنية وأن نصل بمركزنا الى العالمية",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Harmattan',
                ),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.all(Radius.circular(20)),
                  color: Colors.green[600],
                ),
                width: 150,
                height: 40,
                child: const Center(
                  child: Text(
                    "رسالتنا",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Reem Kufi'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "أن نرى العالم بطريقة مختلفة وابداعية",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Harmattan',
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.all(Radius.circular(20)),
                  color: Colors.green[600],
                ),
                width: 150,
                height: 40,
                child: const Center(
                  child: Text(
                    "مقر المركز",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Reem Kufi'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 7),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "غزة - تل الهوا - مخبز اليازجي - عمارة الوحيدي - الطابق الثالث",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Harmattan',
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
