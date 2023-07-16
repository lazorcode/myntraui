import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              child: Column(
                children: [
                  Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                    Container(width: 130,height: 50,child: Image.asset('assets/mini.png',)),
                    SizedBox(width: 50,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_rounded)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined)),
                  ],),
                  SizedBox(height: 10,),
                  Container(height: 43,margin: EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.03),
                        border: Border.all(color: Colors.black45.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search Fashion',
                              errorBorder : InputBorder.none,
                              focusedBorder : InputBorder.none,
                              focusedErrorBorder : InputBorder.none,
                              disabledBorder : InputBorder.none,
                              enabledBorder : InputBorder.none,
                              border : InputBorder.none,
                            ),
                          ),
                        ),InkWell(onTap: (){},
                            child: Icon(Icons.search)),

                      ],
                    ),
                  )],
              ),
            ),
            SizedBox(height: 10,),


            Container(
              margin: EdgeInsets.symmetric(vertical: 10,),
              child: SizedBox(height: 60,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(physics:BouncingScrollPhysics(),scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: ((context,index){return Container(decoration: BoxDecoration(color:Colors.black12,
                        borderRadius: BorderRadius.circular(3)),
                        height:35,width: 55,margin:EdgeInsets.symmetric(horizontal: 8),
                        child: Image.asset('assets/cat.jpeg',fit: BoxFit.cover,),); })),
              ),
            ),
            Container(margin: EdgeInsets.symmetric(vertical:10 ),
              child: CarouselSlider(items: items.map((item) {
                return Builder(builder: (BuildContext context){
                  return Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: Image.asset('assets/star.jpg',fit: BoxFit.cover,height: double.infinity,)
                          ),
                          Positioned(
                              left:0,
                              right:0,
                              bottom:0,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    gradient: LinearGradient(
                                        colors: [Colors.black.withOpacity(0),
                                          Colors.black87],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter

                                    )
                                ),
                                child: Container(
                                  height:30,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text('Exclusive Deal',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ))
                        ],
                      ),
                    ),
                  );
                });

              }).toList(),
                  options: CarouselOptions(
                    height: 350,
                      aspectRatio: 16/9,
                      viewportFraction: 1,
                      autoPlay: true,
                      enlargeCenterPage: false
                    // enableInfiniteScroll:false
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 75,
              child: Image.asset('assets/cont.jpg',fit: BoxFit.cover,),
            ),
            SizedBox(height: 20,),
            Text('LIMITED TIME DEALS',style: TextStyle(fontWeight: FontWeight.bold,)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10,),
              child: SizedBox(height: 270,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(physics:BouncingScrollPhysics(),scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: ((context,index){return Container(decoration: BoxDecoration(color:Colors.black12,
                        borderRadius: BorderRadius.circular(3)),
                      height:35,width: 160,margin:EdgeInsets.symmetric(horizontal: 4),
                      child: Image.asset('assets/limi.jpg',fit: BoxFit.fitHeight,),); })),
              ),
            ),
            SizedBox(height: 20,),
            Text('PRODUCT FINDER',style: TextStyle(fontWeight: FontWeight.bold,)),
            Container(margin: EdgeInsets.symmetric(vertical:10 ),
              child: CarouselSlider(items: items.map((item) {
                return Builder(builder: (BuildContext context){
                  return Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: Image.asset('assets/ad.jpg',fit: BoxFit.fitWidth,width: double.infinity,)
                          ),
                          Positioned(
                              left:0,
                              right:0,
                              bottom:0,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    gradient: LinearGradient(
                                        colors: [Colors.black.withOpacity(0),
                                          Colors.black87],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter

                                    )
                                ),
                                child: Container(
                                  height:30,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text('Exclusive Deal',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ))
                        ],
                      ),
                    ),
                  );
                });

              }).toList(),
                  options: CarouselOptions(
                    height: 180,
                      viewportFraction: 1,
                      autoPlay: true,
                      enlargeCenterPage: false
                    // enableInfiniteScroll:false
                  )),
            ),
            SizedBox(height: 20,),
            Text('FEATURED BRANDS',style: TextStyle(fontWeight: FontWeight.bold,)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10,),
              child: SizedBox(height: 250,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(physics:BouncingScrollPhysics(),scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: ((context,index){return Container(decoration: BoxDecoration(color:Colors.black12,
                        borderRadius: BorderRadius.circular(3)),
                      height:35,width: 180,margin:EdgeInsets.symmetric(horizontal: 4),
                      child: Image.asset('assets/kia.jpg',fit: BoxFit.cover,),); })),
              ),
            ),






          ],

        ),
      ),
    );
  }
  final List items= [Colors.black,Colors.deepOrange,Colors.black38,Colors.blueAccent];
}
