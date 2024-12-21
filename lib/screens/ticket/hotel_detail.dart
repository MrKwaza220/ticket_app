import 'package:flutter/material.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {



  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      print(args["index"]);
      super.didChangeDependencies();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                title: const Text("Hotel Name"),
                background: Image.network(
                  "https://via.placeholder.com/600x400",
                )),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              const Padding(padding: EdgeInsets.all(16.0),
              child: Text("Hotel Description",)
              ),
              const Padding(padding: EdgeInsets.all(16.0),
              child: Text("More Images", style: TextStyle(fontSize: 20.0, fontWeight: 
              FontWeight.bold),)),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      // margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network("https://via.placeholder.com/200x200"),
                    );
                  },
                ),
              )
            ]
          ))
        ],
      ),
    );
  }
}