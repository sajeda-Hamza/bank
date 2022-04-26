import 'package:bb/thierd_secreen.dart';
import 'package:flutter/material.dart';


class SecoundSecreen extends StatelessWidget {
  const SecoundSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xffE5F0F6),
        body: SingleChildScrollView(
          child: Column(
            children: [ 
              Stack(
                children: [
                  Container(
                  decoration:const BoxDecoration(color: Color(0xff004481)),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                   
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 85),
                        child: IconButton(onPressed:() {
                        Navigator.pop(context);
                    }, icon:const Icon(Icons.arrow_back_rounded,color: Colors.white,size: 40,),),
                      ),
                  const  Padding(
                      padding: EdgeInsets.only(left:60,bottom: 85 ),
                      child: Text("Hola, Mauricio ",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold ),),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.only(right: 38,bottom: 85),
                      child: Image.asset("assets/received.png"),
                    ),
                  ],),
                  ),
                  
                   Center(
                     child: Column(
                      
                       children: [
                        const SizedBox(height: 150,),
                         Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(16)),
                height: 250,
                width: 385,
                child:Column(
                 children: [
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Column(
                       children: [
                             const Padding(
                                 padding:  EdgeInsets.only(right: 220,top: 34,bottom:28 ),
                                 child: Text("TUS CUENTAS",style: TextStyle(color: Color(0xff004481),fontSize: 15,fontWeight: FontWeight.bold),),
                               ),
                               tusContiner("001ah7297","\$20,000"),
                               textt("*37265"),
                            
                             const SizedBox(height: 17.5,),
                              Image.asset("assets/Line 2.png"),
                              tusContiner("001ah7246","\$158,000"),
                              textt("*36264"),
                               ],),),],
               )
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
                 height: 139,width: 400,
                 
                 child: Padding(
                   padding: const EdgeInsets.only(top: 24,bottom: 30,left: 34),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       ecllipse(context,"assets/Ellipse 9.png","assets/plus.png","Oportunidades"),
                       ecllipse(context,"assets/Ellipse 10.png","assets/swap.png","Transferir"),
                       ecllipse(context,"assets/Ellipse 11.png","assets/money.png","Retiro sin tarjeta"),
                       ecllipse(context,"assets/Ellipse 12.png","assets/ionic.png","Pagar servicio"),
                     ],
                   ),
                 )
                 ),
                 ),
                const SizedBox(height: 20,),
                Container(decoration:const BoxDecoration(color: Colors.white),
                 height: 271,width: MediaQuery.of(context).size.width,
                 child: Column(
                   children:  [
                const Padding(
                   padding:  EdgeInsets.only(top: 26,right:270),
                   child:  Text("Tus tarjetas",style: TextStyle(color: Color(0xff004481),fontSize:15,fontWeight: FontWeight.bold ),),
                 ),
               const SizedBox(height:22 ,),
                   Image.asset("assets/visa.png"),
                   Padding(
                     padding: const EdgeInsets.only(top: 21,bottom:35 ),
                     child: Row(
                       
                       children: [
                      const   SizedBox(width: 16,),
                       Image.asset("assets/card.png"),
                       const  SizedBox(width: 8,),
                     const  Text("Tarjeta digital"),
                  const SizedBox(width: 60,),
                     Row(
                       children: [
                       const   SizedBox(width: 16,),
                       const  Text("Desactivar"),
                       const  SizedBox(width: 8,),
                        Image.asset("assets/Group.png"),
                     ],)
                     ],),
                   )
                 ],),) ,
                 const SizedBox(height: 50,),
                 Padding(
                   padding: const EdgeInsets.only(right: 40,left: 40,bottom: 26 ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Image.asset("assets/add (2).png"),
                      const SizedBox(width: 57,),
                         Image.asset("assets/mail.png"),
                       
                     ],
                   ),
                 ),
                 
            ],
            
          ),
        ),
      ),
    );
  }
}
Widget tusContiner(String newText,String number){
  return Row(
                                 children:  [
                                                 Text(newText,style:const TextStyle(color: Color(0xff004481),fontSize: 20),),
                                               const  SizedBox(width: 90,),
                                                 Text(number,style:const TextStyle(color: Color(0xff004481),fontSize: 20),),
                                               const  SizedBox(width:20),
                                                 IconButton(onPressed:() {}, icon:const Icon(Icons.chevron_right))
                                            
                               ],);
}
Widget textt(String textOfNum){
  return Padding(
                                padding:const  EdgeInsets.only(right:270),
                                child:Text(textOfNum,style:const TextStyle(color: Colors.grey,fontSize: 14),),
                              );
}
Widget ecllipse(context,String ecllipseImage,String ecllipseicon,String ecllipseText ){
  return Column(
    
                         children: [
                          Stack(
                            alignment: Alignment.center,
                             children: [
                               Image.asset(ecllipseImage),
                                IconButton(onPressed:() { Navigator.of(context).push(MaterialPageRoute(builder:(context) =>const ThierdSecreen(),));},
                                 icon:Image.asset(ecllipseicon),color: Colors.white,)
                             ],
                           ),
                           const SizedBox(height: 5,),
                             Text(ecllipseText,style:const TextStyle(color: Color(0xff4B637A),fontSize: 11),),
                         ],
                       );}