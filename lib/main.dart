import 'package:flutter/material.dart';
import 'package:sample/fade.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();
  // double opacity = 1.0;
  // // bool scroll_visibility = true;
  // final bool _isScrolled = false;
  // final double zeroOpacityOffset = 0.0;
  // double _offset = 0.0;
  // final double fullOpacityOffset = 200.0;

  // @override
  // initState() {
  //   super.initState();
  //   _scrollController.addListener(_listenToScrollChange);
  // }

  // @override
  // dispose() {
  //   _scrollController.removeListener(_listenToScrollChange);
  // }

  // @override
  // initState() {
  //   super.initState();
  //   _offset = scrollController.offset;
  //   scrollController.addListener(_setOffset);
  // }

  // @override
  // dispose() {
  //   scrollController.removeListener(_setOffset);
  //   super.dispose();
  // }

  // void _setOffset() {
  //   setState(() {
  //     _offset = scrollController.offset;
  //   });
  // }

  // double _calculateOpacity() {
  //   if (fullOpacityOffset == zeroOpacityOffset) {
  //     return 0;
  //   } else if (fullOpacityOffset > zeroOpacityOffset) {
  //     // fading in
  //     if (_offset <= zeroOpacityOffset) {
  //       return 1;
  //     } else if (_offset >= fullOpacityOffset) {
  //       return 0;
  //     } else {
  //       return (_offset - zeroOpacityOffset) /
  //           (fullOpacityOffset - zeroOpacityOffset);
  //     }
  //   } else {
  //     // fading out
  //     if (_offset <= fullOpacityOffset) {
  //       return 0;
  //     } else if (_offset >= zeroOpacityOffset) {
  //       return 1;
  //     } else {
  //       return (_offset - fullOpacityOffset) /
  //           (zeroOpacityOffset - fullOpacityOffset);
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: ListView(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    // Colors.red,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                  ]),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.white,
                  //     blurRadius: 5.0,
                  //     offset: Offset(3.0, 0),
                  //   ),
                  //   BoxShadow(
                  //     color: Colors.white,
                  //     spreadRadius: -12.0,
                  //     blurRadius: 12.0,
                  //   ),
                  // ],
                ),
                height: 300,
                width: double.infinity,
                child: Stack(
                  children: [
                    CustomScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: scrollController,
                      slivers: [
                        // SliverAppBar(
                        //   // floating: true,
                        //   // centerTitle: true,
                        //   // snap: true,
                        //   // foregroundColor: Colors.red,
                        //   backgroundColor: Colors.black,
                        //   // expandedHeight: 120,
                        //   title: AnimatedOpacity(
                        //     duration: const Duration(milliseconds: 300),
                        //     opacity: _isScrolled ? 1.0 : 0.0,
                        //     curve: Curves.ease,
                        //     child: Container(
                        //       child: Column(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: const [
                        //           Text("First Text"),
                        //           Text("Second Text"),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        //   // flexibleSpace: FlexibleSpaceBar(
                        //   //   background: Column(
                        //   //     children: const [Text("First Text"), Text("Second Text")],
                        //   //   ),
                        //   // ),
                        // ),
                        SliverList(
                          delegate: SliverChildListDelegate([
                            FadeOnScroll(
                              fullOpacityOffset: 200,
                              scrollController: scrollController,
                              child: SizedBox(
                                width: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "First Text",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      "Second Text",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // AnimatedOpacity(
                            //   duration: const Duration(milliseconds: 300),
                            //   opacity: opacity,
                            //   curve: Curves.ease,
                            //   child: ,
                            // ),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              color: Colors.orange,
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                          ]),
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.red,
                          Colors.transparent,
                        ]),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  // void _listenToScrollChange() {
  //   if (_scrollController.offset >= 48.0) {
  //     setState(() {
  //       if (opacity == 1.0) {
  //         opacity = 1.0;
  //       } else {
  //         opacity = opacity + 0.007;
  //          if (opacity == 1.0) {
  //         opacity = 1.0;
  //       }
  //       }
  //     });
  //   } else {
  //     setState(() {
  //       if (opacity == 0.0) {
  //         opacity = 0.0;
  //       } else {
  //         opacity = opacity - 0.007;
  //         if (opacity == 0.0) {
  //         opacity = 0.0;
  //       }
  //       }
  //     });
  //   }
  // }
  // void _scrollListener() {
  //   if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
  //     setState(() {
  //       scroll_visibility = true;
  //     });
  //   } else if (_controller.position.userScrollDirection ==
  //       ScrollDirection.forward) {
  //     setState(() {
  //       scroll_visibility = true;
  //     });
  //   }
  // }
}
