import 'package:flutter/material.dart';

class ThierdSecreen extends StatelessWidget {
  const ThierdSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffE5F0F6),
        body: SingleChildScrollView(
          child: Column(
            children: [ 
              Stack(
                children: [
                  Container(
                    decoration:const BoxDecoration(color: Colors.white),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                   
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom:30),
                        child: IconButton(onPressed:() {
                        Navigator.pop(context);
                    }, icon:const Icon(Icons.arrow_back_rounded,color: Color(0xff004481),size: 40,),),
                      ),
                  const  Padding(
                      padding: EdgeInsets.only(left:60,bottom:30),
                      child: Text("Cuenta *37265",style: TextStyle(color: Color(0xff004481),fontSize:20,fontWeight:FontWeight.bold  ),)
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.only(right: 38,bottom:30),
                      child: Image.asset("assets/receive.png"),
                    ),
                  ],),
                  ),
                  
                   SizedBox(
                     child: Column(
                      
                       children: [
                        const SizedBox(height: 150,),
                         Padding(
                           padding: const EdgeInsets.only(left: 11,right: 11),
                           child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff004481),borderRadius:BorderRadius.all(Radius.circular(16)) ),
                height: 214,
               width: 362,
               child: Column(
                 children: [
                     Column(
                       children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 23,left: 23),
                                child: Image.asset("assets/BBVA_2019.png",color: Colors.white,width:79 ,height:23 ,),
                              ),
                             Padding(
                                 padding: const EdgeInsets.only(top: 23,right: 23),
                                 child: Image.asset("assets/Group 2660.png",color: Colors.white,width:22 ,height:6 ,),
                               ), 
                          ],),
                          const SizedBox(height: 16),
                           const Text("\$20,000.00",style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold ,color: Colors.white),),
                         const  SizedBox(height: 8,),
                           const Text("Saldo disponible",style: TextStyle(fontSize: 12 ,color: Colors.white),),  
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children:  [
                              const Padding(
                                padding:  EdgeInsets.only(top: 23,left: 23),
                                child: Text("001ah7297",style: TextStyle(fontSize: 17 ,color: Colors.white)),
                              ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 23,right: 23),
                                 child: Image.asset("assets/g4158.png",color: Colors.white,width:52 ,height:17 ,),
                               ),
                           ],) ,  
                     ],),
                 ],
               )
              ),
                         ),
                       ],
                     ),
                   ),
                ],
              ),
            const  SizedBox(height: 30,),
             SingleChildScrollView(
               scrollDirection:Axis.horizontal ,
               child: Container(
                 decoration:const BoxDecoration(color: Colors.white),
                 height: 188,width: 400,
                 
                 child: Padding(
                   padding: const EdgeInsets.only(top:20),
                   child: 
                   Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                         Image.asset("assets/card.png"),
                         const  SizedBox(width: 8,),
                       const  Text("Tarjeta digital",style: TextStyle(color: Color(0xff004481),fontSize: 15)),
                  const SizedBox(width: 60,),
                       Row(
                         children: [
                         const   SizedBox(width: 16,),
                         const  Text("Desactivar",style: TextStyle(color: Color(0xff004481),fontSize: 15)),
                         const  SizedBox(width: 8,),
                          Image.asset("assets/Group.png"),
                       ],)
                       ],),
                     const SizedBox(height: 40,),
                       Row(
                         
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             ecllipss("assets/Path 39.png","assets/shopping.png","Oportunidades"),
                             ecllipss("assets/Ellipse 10.png","assets/swap.png","Transferir"),
                             ecllipss("assets/Ellipse 11.png","assets/money.png","Retiro sin tarjeta"),
                             ecllipss("assets/Ellipse 14.png","assets/point.png","Pagar servicio"),
                             ],
                       ),
                     ],
                   ),
                 )
                 ),
                 ),
               const  SizedBox(height: 30,),
               Container(
                 decoration:const BoxDecoration(color: Colors.white,borderRadius:BorderRadius.all(Radius.circular(30)) ),
                 height: 362,width: 414,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top:30),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                         const Text("Últimos movimientos",style: TextStyle(color: Color(0xff004481),fontSize: 15,fontWeight: FontWeight.bold)),
                        const SizedBox(width: 30,),
                           IconButton(onPressed:() {}, icon:const Icon(Icons.search,color: Colors.grey,))
                         ],
                       ),
                     ),
                     option("assets/Group 983.png"),
                    option("assets/Group 2667.png"), 
                   const Padding(
                      padding:  EdgeInsets.only(top: 15,left: 25,right: 24),
                      child:  Text("2 enero",style: TextStyle(color: Color(0xff004481),fontSize: 15,fontWeight: FontWeight.bold)),
                    ),
                    option("assets/Group 2669.png"),
                    ],),
                 ),], ),
        ),
    );
  }
}
Widget ecllipss(String imageEcllips,String iconEclipss,String textEcllips){
  return Column(
                               children: [
                                 Stack(
                                   alignment: Alignment.center,
                                   children: [
                                     Image.asset(imageEcllips),
                                      IconButton(onPressed:() {}, icon:Image.asset(iconEclipss),color:Colors.white ,) ,
                                   ],
                                 ),
                                 const SizedBox(height: 5,),
                                  Text(textEcllips,style:const TextStyle(color: Color(0xff4B637A),fontSize: 11),),
                               ],
                             );
}
Widget option(String imagess){
  return  Padding(
                       padding: const EdgeInsets.only(left: 25,bottom: 15,right: 24),
                       child: Image.asset(imagess),
                     );
                    
}