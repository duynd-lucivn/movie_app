import 'package:flutter/material.dart';
import 'package:movie_app/views/popular_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with TickerProviderStateMixin {
   TabController? _controller;
   TabController? _controller2;

  @override
  void initState(){
    super.initState();
    _controller=TabController(length: 4, vsync: this);
    _controller2=TabController(length: 4, vsync: this);
  }
  @override
  void dispose(){
    _controller!.dispose();
    _controller2!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(children: [
            _tabBar(),
            _tabBarView(),
          ])),
    ));
  }

  _tabBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 25),
      child: TabBar(
        controller: _controller,
        labelStyle: const TextStyle(
            fontFamily: "Comfortaa", fontSize: 24, fontWeight: FontWeight.w700),
        tabs: const [
          Text(
            "Popular",
          ),
          Text("NowPlaying"),
          Text("Up Coming"),
          Text("Top Rate"),
        ],
        indicatorColor: Colors.black,
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
        labelPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 2),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black.withOpacity(0.5),
        isScrollable: true,
      ),
    );
  }

  _tabBarView(){
    return Expanded(
        child: TabBarView(
          controller:  _controller2,
          children: [
            PopularView(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.pink,
            ),
          ],
        )
    );
  }
  }

