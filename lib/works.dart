import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class Works extends StatefulWidget {
  @override
  State<Works> createState() => _WorksState();
}

class _WorksState extends State<Works> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    List<String> images = [
      'images/3ml1.png',
      'images/3ml3.png',
      'images/3ml4.png',
      'images/3ml5.png',
      'images/3ml6.png',
      'images/3ml7.png',
      'images/3ml8.png',
      'images/3ml10.png',
      'images/3ml11.png',
      'images/3ml12.png',
      'images/3ml14.png',
      'images/3ml15.png',
      'images/3ml16.png',
      'images/3ml17.png',
      'images/3ml18.png',
      'images/3ml19.png',
      'images/3ml21.png',
      'images/3ml24.png',
      'images/3ml25.png',
      'images/3ml26.png',
      'images/3ml28.png',
      'images/3ml29.png',
      'images/3ml30.png',
      'images/3ml31.png',
      'images/3ml32.png',
      'images/3ml33.png',
      'images/3ml34.png',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text("أعمالنا",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Tajawal')),
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
            const SizedBox(height: 30),
            const Text("تصميمات احترافية",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Elmessiri')),
            const SizedBox(height: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              child: PageView.builder(
                reverse: true,
                physics: const BouncingScrollPhysics(),
                controller: pageController,
                itemBuilder: (BuildContext context, int index) =>
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadiusDirectional.all(Radius.circular(15)),
                        color: Colors.green[600],
                      ),
                      child: Image(image: AssetImage(images[index]), fit: BoxFit.fill),
                    ),
                itemCount: images.length,
              ),
            ),
            const SizedBox(height: 15),
            SmoothPageIndicator(
              textDirection: TextDirection.rtl,
              controller: pageController,
              count: images.length,
              effect: const ScrollingDotsEffect(
                spacing: 5.0,
                dotColor: Colors.grey,
                activeDotColor: Colors.green,
                dotHeight: 12,
                dotWidth: 12,
              ),
            ),
            const SizedBox(height: 15),
            const Text("باقي أعمالنا موجودة على قناتنا على يوتيوب",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Elmessiri')),
            const SizedBox(height: 15),
            IconButton(
                onPressed: () {
                  youtube();
                },
                icon: Icon(
                  FontAwesomeIcons.youtube,
                  color: Colors.red,
                  size: 150,
                )),
          ],
        ),
      ),
    );
  }
}

youtube() async {
  final Uri url = Uri.parse('https://www.youtube.com/channel/UCM0U2tIHXOfguoC8pyoibKA');
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}
