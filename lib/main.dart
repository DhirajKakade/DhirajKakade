import 'dart:ui' as ui;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dhiraj Kakade',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late ScrollController controller = ScrollController();
  late final GifController controller1;
  final int _fps = 30;

  @override
  void initState() {
    // foo();
    controller1 = GifController(vsync: this);
    controller1.stop();
    controller.addListener(_scrollListener);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        toolbarHeight = ((MediaQuery.sizeOf(context).height / 3) - controller.position.pixels);
      });
    });

    super.initState();
  }

  Future<void> foo() async {
    throw Exception('FooException');
  }

  bool sliverActionsHidden = true;
  double minimumToolbarHeight = 120;
  double toolbarHeight = 0;

  double currentToolbarHeight = 0;
  double currentIconWidth = 0;

  double listScrollValue = 0;

  void _scrollListener() {
    setState(() {
      listScrollValue = controller.offset;
      controller1.value = controller.position.pixels / MediaQuery.sizeOf(context).height;
      toolbarHeight = ((MediaQuery.sizeOf(context).height / 3) - controller.position.pixels);


      int i = ((listScrollValue / (MediaQuery.sizeOf(context).height / 4)).round());

      if (-1 < i && i < (dhiraj.length-1)) {
        selectedDhiraj = i;
      }
    });
  }

  double screenWidth = 0;

  int selectedDhiraj = 0;

  List<String> kds = ["assets/kds.jpg", "assets/kds1.jpg", "assets/kds2.jpg", "assets/kds3.jpg", "assets/kds4.jpg", "assets/kds5.jpg", "assets/kds6.jpg"];
  List<String> searchmyjob = ["assets/searchmyjob1.jpg", "assets/searchmyjob2.jpg", "assets/searchmyjob3.jpg", "assets/searchmyjob4.jpg", "assets/searchmyjob5.jpg", "assets/searchmyjob6.jpg", "assets/searchmyjob7.jpg"];
  List<String> curome = ["assets/curome1.jpg", "assets/curome2.jpg", "assets/curome3.jpg", "assets/curome4.jpg", "assets/curome5.jpg", "assets/curome6.jpg", "assets/curome7.jpg", "assets/curome8.jpg"];
  List<String> wecare = ["assets/wecare1.jpg", "assets/wecare2.jpg", "assets/wecare3.jpg", "assets/wecare4.jpg"];
  List<String> gharbechoo = ["assets/gharbechoo1.jpg", "assets/gharbechoo2.jpg"];
  List<String> eth = ["assets/eth1.jpg", "assets/eth2.jpg", "assets/eth3.jpg", "assets/eth4.jpg", "assets/eth5.jpg", "assets/eth6.jpg", "assets/eth7.jpg", "assets/eth8.jpg"];
  List<String> smartparking = [
    "assets/smartparking1.jpg",
    "assets/smartparking2.jpg",
  ];
  List<String> koeligreen = [
    "assets/koeligreen1.jpg",
    "assets/koeligreen2.jpg",
    "assets/koeligreen3.jpg",
  ];
  List<String> indioconnect = [
    "assets/indioconnect1.jpg",
    "assets/indioconnect2.jpg",
    "assets/indioconnect3.jpg",
  ];
  List<String> farmtable = ["assets/farmtable1.jpg", "assets/farmtable2.jpg", "assets/farmtable3.jpg", "assets/farmtable4.jpg", "assets/farmtable5.jpg", "assets/farmtable6.jpg", "assets/farmtable7.jpg"];
  List<String> ethdc = ["assets/ethdc1.jpg", "assets/ethdc2.jpg", "assets/ethdc3.jpg", "assets/ethdc4.jpg", "assets/ethdc5.jpg", "assets/ethdc6.jpg"];
  List<String> wave = ["assets/wave1.jpg", "assets/wave2.jpg", "assets/wave3.jpg", "assets/wave4.jpg", "assets/wave5.jpg", "assets/wave6.jpg", "assets/wave7.jpg"];
  List<String> smartpos = ["assets/smartpos1.jpg", "assets/smartpos2.jpg", "assets/smartpos3.jpg", "assets/smartpos4.jpg", "assets/smartpos5.jpg", "assets/smartpos6.jpg", "assets/smartpos7.jpg", "assets/smartpos8.jpg"];
  List<String> hidoc = ["assets/hidoc1.jpg", "assets/hidoc2.jpg", "assets/hidoc3.jpg", "assets/hidoc4.jpg"];
  List<String> dhiraj = ["dhiraj1.png", "dhiraj2.png", "dhiraj3.png", "dhiraj4.png", "dhiraj5.png", "dhiraj6.png", "dhiraj7.png", "dhiraj8.png", "dhiraj9.png", "dhiraj10.png", "dhiraj11.png", "dhiraj12.png"];
  String imageAssets = 'assets/';
  // List<String> dhiraj = [
  //   "d1.png",
  //   "d2.png",
  //   "d3.png",
  //   "d4.png",
  //   "d5.png",
  //   "d6.png",
  //   "d7.png",
  //   "d8.png",
  //   "d9.png",
  //   "d10.png",
  //   "d11.png",
  //   "d12.png",
  //   "d13.png",
  //   "d14.png",
  //   "d15.png",
  //   "d16.png",
  //   "d17.png",
  //   "d18.png",
  //   "d19.png",
  //   "d20.png",
  //   "d21.png",
  //   "d22.png",
  //   "d23.png",
  //   "d24.png",
  //   "d25.png",
  //   "d26.png",
  //   "d27.png",
  //   "d28.png",
  //   "d29.png",
  //   "d30.png",
  //   "d31.png",
  //   "d32.png",
  //   "d33.png",
  //   "d34.png",
  //   "d35.png",
  //   "d36.png",
  //   "d37.png",
  //   "d38.png",
  //   "d39.png",
  //   "d40.png",
  //
  //
  // ];

  // final imageAssets = ImageAssetCache(basePath: 'assets/anim/');

  @override
  Widget build(BuildContext context) {
    currentToolbarHeight = minimumToolbarHeight < toolbarHeight ? toolbarHeight : minimumToolbarHeight;
    screenWidth = MediaQuery.sizeOf(context).width;

    currentIconWidth = screenWidth - currentToolbarHeight;

    // print(selectedDhiraj);

    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: currentToolbarHeight,
            leadingWidth: currentToolbarHeight,
            toolbarHeight: currentToolbarHeight,
            pinned: true,
            floating: true,
            leading: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                children: [
                  Expanded(
                    child: FadeInImage(
                      image: AssetImage('$imageAssets${dhiraj[selectedDhiraj]}'),
                      placeholder: MemoryImage(kTransparentImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // if (false)
                  //   Expanded(
                  //     child: Gif(
                  //       autostart: Autostart.no,
                  //       fit: BoxFit.cover,
                  //       controller: controller1,
                  //       fps: _fps,
                  //       image: const AssetImage('assets/dhiraj.gif'),
                  //     ),
                  //   ),
                ],
              ),
            ),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(right: 16),
              centerTitle: true,
              background: Shimmer(
                duration: const Duration(seconds: 6),
                interval: const Duration(seconds: 1),
                color: Colors.white,
                child: Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: screenWidth / 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DHIRAJ KAKADE",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: (screenWidth / 45) + (currentToolbarHeight / 24)),
                      ),

                      Text(
                        "Flutter Developer",
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.normal, fontSize: screenWidth / 75 + (currentToolbarHeight / 34)),
                      ),

                      // FloatingText(
                      //   duration: const Duration(milliseconds: 400),
                      //   text: "Flutter Developer",
                      //   textStyle: TextStyle(color: Colors.blue, fontSize: screenWidth/60+(currentToolbarHeight/30)),
                      //   floatingTextStyle: TextStyle(color: Colors.lightBlue, shadows: const [
                      //     BoxShadow(color: Colors.white, blurRadius: 1, spreadRadius: 1),
                      //   ],fontSize: screenWidth/60+(currentToolbarHeight/30)),
                      //   repeat: true,
                      //   onAnimationComplete: () {},
                      // ),
                    ],
                  ),
                ),
              ),
              // title: Align(
              //   alignment: Alignment.centerRight,
              //   child: (minimumToolbarHeight < toolbarHeight)
              //       ? null
              //       : Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             const Text(
              //               "DHIRAJ KAKADE",
              //               style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              //             ),
              //             FloatingText(
              //               duration: const Duration(milliseconds: 400),
              //               text: "Flutter Developer",
              //               textStyle: const TextStyle(color: Colors.blue),
              //               floatingTextStyle: const TextStyle(color: Colors.lightBlue, shadows: [
              //                 BoxShadow(color: Colors.white, blurRadius: 1, spreadRadius: 1),
              //               ]),
              //               repeat: true,
              //               onAnimationComplete: () {},
              //             ),
              //           ],
              //         ),
              //
              //   // Text.rich(
              //   //             TextSpan(
              //   //               children: [
              //   //                 const TextSpan(
              //   //                   text: 'Dhiraj Kakade\n',
              //   //                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 23),
              //   //                 ),
              //   //                 TextSpan(
              //   //                   text: listScrollValue < 500
              //   //                       ? 'Flutter Developer'
              //   //                       : listScrollValue < 7400
              //   //                           ? 'Projects'
              //   //                           : "Download Resume",
              //   //                   style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18),
              //   //                 ),
              //   //               ],
              //   //             ),
              //   //           )
              // ),
              // background: (minimumToolbarHeight < toolbarHeight) ? Image.asset('assets/background.jpg', fit: BoxFit.cover) : Image.asset('assets/background.jpg', fit: BoxFit.cover),
              //
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: Padding(
                    //     padding: EdgeInsets.all(20.0),
                    //     child: Text.rich(
                    //       TextSpan(
                    //         children: [
                    //           TextSpan(
                    //             text: 'Dhiraj Kakade\n',
                    //             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 23),
                    //           ),
                    //           TextSpan(
                    //             text: 'Flutter Developer',
                    //             style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'ABOUT\n',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Total 7 Years of Experience\n',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: '4 years of experience developing Android applications using Java, and Android Studio. Successfully launched 20+ mobile apps with over 100,000 downloads. Strong understanding of Android architecture, UI/UX design, and performance optimization.',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: '\n\n3 years of experience building cross-platform mobile apps with Flutter. Proficient in Dart, Flutter libraries, and UI/UX design principles. Passionate about building high-quality, user-friendly mobile experiences.',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'KEY SKILLS\n',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Core Language: ',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: ' ANDROID, JAVA, DART, SQLite',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: '\n\nSkills',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: '\n- Knowledge of Framework Android Studio.',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: '\n- Knowledge of JSON, REST API’s, Firebase, Getx, Cloud Services- working with mobile services, Material Design.',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: '\n- Known Lang. (C, C++, JAVA) , Objective-c (Basic) , Swift (Basic), Dart.',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: '\n- Familiar Tech. & Tools: GitHub, Eclipse, Android Studio, Xcode, VS code.',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'CAREER CONTOUR\n',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Aug 2016 to to till now  Unitglo Solutions Pvt. Ltd. Pune as an Android Developer.',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'PROJECT DETAILS',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
                          ),
                          const Text(
                            '- SearchMyJob(Android Java)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "The main purpose of this application is direct interaction between Recruiter and Seeker to find a job. Seekers can apply directly to the company post and  recruiters can also request the seeker. Recruiters can see a seeker's resume. It helps to find a job for a required position in any location.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: searchmyjob.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(searchmyjob[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.gajananmotars.jobsearch",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl("https://play.google.com/store/apps/details?id=com.gajananmotars.jobsearch"),
                            ),
                          ),
                          const Text(
                            '\n\n- King Of Status (Android java)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "The main purpose of this application is for users to upload status/pic/dp/meme/thoughts in our app. Then after approval, the valid Status will be published. This app works online as well as offline. But for new status, You have to connect the internet connection.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: kds.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(kds[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                              text: TextSpan(
                            text: "https://play.google.com/store/apps/details?id=com.unitglo.status",
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.unitglo.status'),
                          )),
                          const Text(
                            '\n\n- CuroMe (Android Java)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "Socialising healthcare: Ask queries, Share experiences, Free Opinions, Feedbacks on health services, Free chatting. CuroMe is a social, interactive health platform that empowers people to share and grow the world’s knowledge about health issues.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: curome.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(curome[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                              text: TextSpan(
                            text: "https://play.google.com/store/apps/details?id=com.unitglo.curome&hl=en",
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.unitglo.curome&hl=en'),
                          )),
                          const Text(
                            '\n\n- TechNova (Android Java)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "This application is managing the resident dues and visitors. Residents can send an invitation to visitors and also approve or reject the visitors. Residents can generate the complaints from the app as well as see the notice and events that can be done in society, residents can see pending dues, residents can notify guards from the app.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            '\n\n- WeCare (Android Java)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "WeCareApp Business in sales & repair of wall Radio, record player, Spool tape, Tape recorder, cassette player, Television, VCR, VCP’s, VCD Player, DVD Player, Blue ray player, Home Theatre, SoundBar and Bluetooth Player.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: wecare.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(wecare[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.unitglo.wecareapp&hl=en",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.unitglo.wecareapp&hl=en'),
                            ),
                          ),
                          const Text(
                            '\n- GharBecho (Android Java)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "This app is A productivity tool to efficiently manage field staff, monitor their locations, assign new jobs on the fly and track successfully completed tasks.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: gharbechoo.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(gharbechoo[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.unitglo.gharbechoo&hl=en",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.unitglo.gharbechoo&hl=en'),
                            ),
                          ),
                          const Text(
                            '\n\n- Eth Parent App (Android Java) (48 Replicas)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "This app is a Mobile interface of ETH Digital Campus designed for parents. With this app, parents get access to all the information about their children. Following functionality is available.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: eth.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(eth[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/dev?id=6840968501317174301&hl=en_IN&gl=US",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/dev?id=6840968501317174301&hl=en_IN&gl=US'),
                            ),
                          ),
                          const Text(
                            '\n\n- Smart Parking (Android Java)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "This app is for maintaining the pay park system and its total beneficial for the parking owner.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: smartparking.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(smartparking[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.unitglo.smartparking",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.unitglo.smartparking'),
                            ),
                          ),
                          const Text(
                            '\n\n- KOEL iGreen RMS (Android Java, Ios Swift)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "To monitor Machine Health Performance Parameters,Machine Alarms & Trips,Preventive Maintenance Schedule,KOEL iGreen RMS app works in tandem with our 'Plug and Play' device which is simply plugged into your Machine harness.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: koeligreen.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(koeligreen[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.koel.koelgreen&hl=en_IN&gl=US",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.koel.koelgreen&hl=en_IN&gl=US'),
                            ),
                          ),
                          const Text(
                            "App Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://apps.apple.com/in/app/koel-igreen-rms/id1481347446",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://apps.apple.com/in/app/koel-igreen-rms/id1481347446'),
                            ),
                          ),
                          const Text(
                            '\n\n- IndioConnect (Android Java) (2 Replicas)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "Indio Networks delivers next-generation networking solutions that help our customers unlock the power of Wireless, IoT and Cloud technologies for their business.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: indioconnect.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(indioconnect[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.indio.customer",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.indio.customer'),
                            ),
                          ),
                          const Text(
                            '\n\n- Farmtable (Android java, IOS swift, Flutter)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "The Farmtable Customer app to get fresh fruits and vegetables from farmers. It gives you 99.9% fresh hygiene and 99% delivered at the delivery date.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: farmtable.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(farmtable[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.unitglo.farmtable",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.unitglo.farmtable'),
                            ),
                          ),
                          const Text(
                            '\n\n- School Management System (Android Java, IOS Objective C)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "School management system seamlessly connects all stakeholders – parents, teachers, students, departments and principals on a common connected school management software platform and takes away the administrative burden to allow schools to focus on teaching to get the best learning outcomes.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: ethdc.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(ethdc[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.ethdc.adminportal_app",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.ethdc.adminportal_app'),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.ethdc.teachernetra",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.ethdc.teachernetra'),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.ethdc.nextview",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.ethdc.nextview'),
                            ),
                          ),
                          const Text(
                            '\n\n- Safety Alert App (Android Java, IOS Swift)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "We built a communication system between the service engineer and safety team in the company. In the old system there was no option to provide a consulate report , communication points were missed out , and there were some other issues for data sharing. To overcome that type of problem we will build an alert system.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            '\n\n- Wave (Android Java) (5 Replicas)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "Wave is a PM WANI (Wi-Fi Access Network Interface) is a scheme meant to increase Wi-fi access throughout the country. The WANI framework contains the following components: Public Data Office (PDO): It will establish, maintain, and operate only WANI compliant Wi-Fi Access Points and deliver broadband services to subscribers.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: wave.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(wave[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "https://play.google.com/store/apps/details?id=com.indio.wave",
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.indio.wave'),
                            ),
                          ),
                          const Text(
                            '\n\n- Smart POS (Android Java)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "Smart POS billing software is an online or offline billing app which provides even more benefits compared to traditional retail billing machines.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: smartpos.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(smartpos[index])),
                            ),
                          ),
                          const Text(
                            "Play Store Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                              text: TextSpan(
                            text: "https://play.google.com/store/apps/details?id=com.unitglo.kartit",
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://play.google.com/store/apps/details?id=com.unitglo.kartit'),
                          )),
                          const Text(
                            '\n\n- Airi (Android java)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "Airi is a premium ui template for food delivery orders. with high quality modern style.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "App Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                              text: TextSpan(
                            text: "https://github.com/DhirajKakade/Airi/blob/master/app-debug.apk?raw=true",
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://github.com/DhirajKakade/Airi/blob/master/app-debug.apk?raw=true'),
                          )),
                          const Text(
                            '\n\n- Hidoc (Flutter Web, Flutter Android, Flutter IOS)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "Hidoc Dr. is a healthcare-focused online learning platform which provides a common platform to various specialities with a focus to break the boundary barriers. I developed from scratch.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              itemCount: hidoc.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Card(clipBehavior: Clip.antiAlias, margin: const EdgeInsets.all(8), child: Image.asset(hidoc[index])),
                            ),
                          ),
                          const Text(
                            "Website Link: - ",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          RichText(
                              text: TextSpan(
                            text: "https://www.hidocdr.com",
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () => launchWebUrl('https://www.hidocdr.com'),
                          )),
                          const Text(
                            '\n\n- Procurment (Flutter Android, Flutter IOS)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "It was an app made for organization to procure the Fruits, Vegetable, Grains and Cereals from the farmers and manage the all procurement process. and helping the farmers to grow his farm income and increase his yield of the crops.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            '\n\n- Standard Farming (Flutter Android, Flutter IOS)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "Streamline agricultural tasks. Monitor crops, manage livestock, track equipment, and receive real-time weather updates. Enhance efficiency, optimize yields, and make informed decisions for modern, sustainable farming. Simplify farming with ease.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            '\n\n- Marketplace (Flutter Android, Flutter IOS)',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                          ),
                          const Text(
                            "I have a deep understanding of market trends and technologies, including ecommerce platforms, and user engagement strategies. I have developed and deployed several Flutter apps that leverage market insights to enhance user experience and drive sales. My proficiency in integrating APIs. Overall, my expertise in market-related concepts and technologies allows me to develop robust and user-friendly Flutter apps that meet the needs of businesses and consumers alike.",
                            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                          ),
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'ACADEMIC\n',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Bachelor of Vocational Degree (FOOD SCIENCE & TECH) with distinction in April 2017 from Prof. Ram Krishna More College, Savitribai Phule Pune University.',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'PERSONAL DETAILS\n',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
                            ),
                            TextSpan(
                              text: 'Date of Birth: ',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: '29 Dec 1995\n',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: 'Email: ',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45, fontSize: 16),
                            ),
                            TextSpan(
                              text: 'kakadehere@gmail.com\n',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black45, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: MaterialButton(
                        color: Colors.blue,
                        onPressed: () {

                          launchWebUrl('https://docs.google.com/document/d/1mMlaQiJ6XA7fic2Lj8KkFIYFlOV7GZH_jLa3-PTFrAc/edit?usp=sharing');
                        },
                        child: const Text(
                          "Download Resume",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(16)),

                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> launchWebUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
}

class MyImagePainter extends CustomPainter {
  final ui.Image image;

  MyImagePainter(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint();

    canvas.save();
    canvas.translate(100, 100);
    canvas.rotate(1.5);
    canvas.scale(3.0);
    canvas.drawImage(image, Offset.zero, myPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
