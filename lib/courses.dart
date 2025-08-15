import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  final List<String> titles = [
    'تعلم الجيتار',
    'تعلم البيانو',
    'تعلم الناي',
    'تعلم القاعدة النورانية',
    'تعلم العود',
    'تعلم الكمان',
    'تعلم القانون',
    'تعلم البركشن',
    'تعلم الدرامز',
    'تعلم الطبلة وجميع الايقاعات',
    'تعلم الخط العربي',
    'تعلم الغناء والمقامات الصوتية',
    'تعلم الرسم بالفحم',
    'تعلم الدبكة الشعبية',
  ];

  final List<String> durations = [
    'مدة الدورة: 3 شهور',
    'مدة الدورة: 3 شهور',
    'مدة الدورة: 3 شهور',
    'مدة الدورة: شهر',
    'مدة الدورة: 3 شهور',
    'مدة الدورة: 3 شهور',
    'مدة الدورة: 3 شهور',
    'مدة الدورة: 3 شهور',
    'مدة الدورة: 3 شهور',
    'مدة الدورة: 3 شهور',
    'مدة الدورة: شهر',
    'مدة الدورة: 3 شهور',
    'مدة الدورة: 24 ساعة',
    'مدة الدورة: 24 ساعة',
  ];

  final List<String> prices = [
    '200',
    '200',
    '200',
    '80',
    '250',
    '300',
    '200',
    '200',
    '200',
    '200',
    '50',
    '150',
    '75',
    '50',
  ];

  final List<String> images = [
    'images/qetar.png',
    'images/biano.png',
    'images/nai.png',
    'images/nawrani.png',
    'images/3od.png',
    'images/kman.png',
    'images/qanoon.png',
    'images/baraction.png',
    'images/drams.png',
    'images/tabla.png',
    'images/5t.png',
    'images/mqamat.png',
    'images/f7m.png',
    'images/dbka.png',
  ];

  final List<double> sizes = [
    25,25,25,20,25,22,22,19,23,17,20,17,20,20
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text("الدورات التدريبية",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'Tajawal')),
          ),
          SizedBox(width: 10),
        ],
        leading: Icon(Icons.add, color: Colors.green),
        elevation: 40,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 1,
          childAspectRatio: 1 / 1.58,
          children: List.generate(
            images.length,
                (index) => buildItems(
              context,
              titles[index],
              durations[index],
              prices[index],
              images[index],
              sizes[index],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItems(context, String title, String duration, String price, String image, double size) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0,left: 5,right: 5),
          child: Container(
            color: Colors.green[600],
            width: MediaQuery.of(context).size.width/1.8,
            height: MediaQuery.of(context).size.height/3.2,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:[
                      const SizedBox(height: 40),
                      Text(title,
                          style: TextStyle(fontSize: size,fontFamily: 'Tajawal',fontWeight: FontWeight.bold),
                          textAlign: TextAlign.end),
                      const SizedBox(height: 20),
                      Text(duration,
                          style: const TextStyle(fontSize: 20,fontFamily: 'Harmattan',fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text('شيكل شهريا',
                                style: TextStyle(fontSize: 15,fontFamily: 'Tajawal',fontWeight: FontWeight.bold,color: Colors.grey[800])),
                          ),
                          const SizedBox(width: 3),
                          Text(price,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey)),
                        ],
                      ),
                    ]
                ),
              ),
            ),
          ),
        ),
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(image),
          backgroundColor: Colors.green[600],
        )
      ],
    );
  }
}
