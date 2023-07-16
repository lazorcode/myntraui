import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width:MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height*0.6,
                child: Image.asset('assets/myntra.jpg',fit: BoxFit.cover,)),
            Container(padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Become An INSIDER!',style: TextStyle(color: Colors.orange,
                    fontWeight: FontWeight.bold,fontSize: 23),),
                    SizedBox(height: 10,),
                    Text('Join the Insider program and earn Supercoins with every purchase and much more. Log in now!',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey.shade700),),
                    SizedBox(height: 30,),
                    Text('New Goal Criteria',style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,color: Colors.grey.shade400)),
                    SizedBox(height: 20,),
                    Container(width: MediaQuery.of(context).size.width,height: 180,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey.shade900
                    ),),
                    SizedBox(height: 10,),
                    Text('Note: Recent purchases will only reflect in the goal once the return window is over',
                        style: TextStyle(fontSize: 15,color: Colors.grey.shade700)),
                    SizedBox(height: 25,),
                    Text('Benefits Of Joining The Program',style: TextStyle(color: Colors.orange,
                        fontWeight: FontWeight.bold,fontSize: 21),),
                    SizedBox(height: 28,),
                    Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.timer_outlined,color: Colors.white,size: 40,),
                            Text('Early Accessto the Sales',style: TextStyle(color: Colors.white,fontSize: 23,),)
                          ],
                        ),
                        SizedBox(height: 25,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.emoji_events_rounded,color: Colors.white,size: 40,),
                            Text('Insider Exclusive Rewards',style: TextStyle(color: Colors.white,fontSize: 23,),)
                          ],
                        ),
                        SizedBox(height: 25,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.phone_in_talk,color: Colors.white,size: 40,),
                            Text('Priority Customer Support',style: TextStyle(color: Colors.white,fontSize: 23,),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text('How does it Work',style: TextStyle(color: Colors.orange,
                        fontWeight: FontWeight.bold,fontSize: 21)),
                    SizedBox(height: 15,),
                    Text('Earn Supercoins with every purchase.',style: TextStyle(fontSize: 15,color: Colors.grey.shade700)),
                    Text('You can get upto 3 supercoins for every 100r spent',
                        style: TextStyle(fontSize: 15,color: Colors.grey.shade700)),
                    SizedBox(height: 20,),
                    Container(width: MediaQuery.of(context).size.width,height: 180,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey.shade900
                      ),),
                    SizedBox(height: 20,),
                    Text('Rewards',style: TextStyle(color: Colors.orange,
                        fontWeight: FontWeight.bold,fontSize: 21)),
                    SizedBox(height: 10,),
                    Text('Use your supercoins to get exiting rewards',
                        style: TextStyle(fontSize: 15,color: Colors.grey.shade700)),
                    SizedBox(height: 15,),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10,),
                      child: SizedBox(height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(physics:BouncingScrollPhysics(),scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: ((context,index){return Container(decoration: BoxDecoration(color:Colors.black12,
                                borderRadius: BorderRadius.circular(3)),
                              height:35,width: 230,margin:EdgeInsets.symmetric(horizontal: 8),
                              child: Image.asset('assets/kia.jpg',fit: BoxFit.cover,),); })),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Image.asset('assets/mini.png',width: MediaQuery.of(context).size.width,height: 40,),

                    Text('Fashion Advice | VIP Access | Extra Savings',
                        style: TextStyle(fontSize: 15,color: Colors.grey.shade700)),
                    SizedBox(height: 20,),
                    SizedBox(height: 40,width: double.infinity,
                        child: ElevatedButton(onPressed: (){

                              Navigator.pushNamed(context, 'home');
                            },
                          // Navigator.pushNamed(context, 'otp');
                         child: Text('Login'),style: ElevatedButton.styleFrom(primary: Colors.pinkAccent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),)
                    ),
                    SizedBox(height: 40,),
                    Text(textAlign: TextAlign.center,'By Enrolling, you agree to ',style: TextStyle(fontSize: 13,color: Colors.grey.shade700)),
                    Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                      TextButton(onPressed: (){}, child: Text('Terms of Service',style: TextStyle(fontSize: 15,color: Colors.pinkAccent,decoration: TextDecoration.underline),)),
                      TextButton(onPressed: (){}, child: Text('Privacy Policy',style: TextStyle(fontSize: 15,color: Colors.pinkAccent,decoration: TextDecoration.underline)))
                    ],)






                  ],
                  
                ))
          ],
        ),
      ),
    );
  }
}
