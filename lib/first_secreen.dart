
import 'package:bb/secound_secreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
 bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:  [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 150,top: 50),
                  child: Image.asset("assets/BBVA_2019.png"),
                ),
              ),
              
               const Padding(
            padding:  EdgeInsets.only(right: 80,),
            child:  Text("Hola, Mauricio ",style:TextStyle(color: Color(0xff004481),fontSize: 40,fontWeight:FontWeight.bold ),),
          ),
           const  Padding(
               padding:  EdgeInsets.only(right: 230,bottom: 20),
               child: Text("¿Qué tal tu día hoy?",style: TextStyle(color: Color(0xff004481)),),
             ),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 35,right: 41),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  iconColor:const Color(0xff004481),
                    labelText: 'Contraseña',
                    suffixIcon: IconButton(
                        icon: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        })),
              ),
            ),
            const SizedBox(height: 16,),
           InkWell(
             onTap: () {
               Navigator.of(context).push(MaterialPageRoute(builder:(context) =>const SecoundSecreen(),));
             },
             child: const 
             Text("Olvidé mi contraseña",style: TextStyle(color: Color(0xff004481)))
             ),
           const SizedBox(height:100),
          option(context,"assets/surface1.png","Token móvil"),
          const SizedBox(height:46),
          option(context,"assets/qr.png","Operación \n QR + CoDi"),
          const SizedBox(height:46),
          option(context,"assets/phone.png","Línea BBVA"),
           const SizedBox(height:46),
            ],
          ),
        ),
      )
    ,);
  }
}
Widget option(BuildContext context,String optionImagen,String optionName){
  return Row(
             children: [
             Padding(
               padding: const EdgeInsets.only(left:36),
               child: Image.asset(optionImagen),
             ),
           const  SizedBox(width: 8),
            Text(optionName,style:const TextStyle(color: Color(0xff004481)),),
           ],);
}