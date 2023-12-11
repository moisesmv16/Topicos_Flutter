import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';

class IntencionesScreen extends StatefulWidget {
   IntencionesScreen({super.key});

  @override
  State<IntencionesScreen> createState() => _IntencionesScreenState();
}

class _IntencionesScreenState extends State<IntencionesScreen> {
   final image = ImagePicker();
   
   String? pathImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intenciones"),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 5, top: 5, right: 5),
        children: [
          cardIntencion(
            color: Colors.amberAccent,
            subtitle: "Abrir pagina web",
            title: "https://itcelaya.edu.mx", 
            img: Image.asset('87865_chrome_icon.png'), 
            evento: () {  
              _openWEB(context);
            }),
          const SizedBox(height: 5,),
          cardIntencion(
            title: "Llamada telefonica",
            subtitle: "4613154323",
            color: Colors.orange, 
            img: Image.asset('134149_phone_call_telephone_icon.png'), 
            evento: () {  
              _callPhone(context);
            }),
          const SizedBox(height: 5,),
          cardIntencion(
            color: Colors.red,
            title: "Enviar SMS",
            subtitle: "4613154323", 
            img: Image.asset('8010452_whatsapp_phone_communication_interaction_call_icon.png'), 
            evento: () {  
              _sendSMS(context);
            }
          ),
          const SizedBox(height: 5,),
          cardIntencion(
           color:Colors.blue,
           title: "Tomar fotografia", 
           subtitle:"accede a la camara", 
           img: Image.asset('8010452_whatsapp_phone_communication_interaction_call_icon.png'), 
           evento: () { 
            _takePhoto();
            setState(() {});
            },
           ),
           const SizedBox(height: 5,),
          cardIntencion(
            color: Colors.red,
            title: "Enviar Email",
            subtitle: "Manda un correo", 
            img: Image.asset('8010452_whatsapp_phone_communication_interaction_call_icon.png'), 
            evento: () {  
              _sendEmail(context);
            }
          ),
          pathImage != null
          ? Image.file(File(pathImage!), width: 300, height: 300,)
          :Container()
        ],
      ),
    );
  }

  Future<void> _openWEB(BuildContext context) async {
    Uri url = Uri.parse("https://itcelaya.edu.mx");
    if(!await launchUrl(url)){

      final snackBar = SnackBar(content: Text('La URL no es valida'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _callPhone(BuildContext context) async {
    Uri url = Uri.parse("tel:4611899848");
    if(!await launchUrl(url)){

      final snackBar = SnackBar(content: Text('El numero no es valido'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _sendSMS(BuildContext context) async {
    Uri url = Uri.parse("sms:4611899848?body=HolaMundo");
    if(!await launchUrl(url)){

      final snackBar = SnackBar(content: Text('El numero no es valido'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _sendEmail(BuildContext context) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: "21030629@itcelaya.edu.mx",
      query: 'subject=Saludos&body=buenos dias moy :)'
    );

    if(!await launchUrl(params)){

      final snackBar = SnackBar(content: Text('No se pudo enciar el email'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _takePhoto() async {
    final archivo = await image.pickImage(source: ImageSource.camera);
    pathImage = archivo!.path;
  }

  Widget cardIntencion({
    required Color color,
    required String title,
    required String subtitle,
    required Widget img,
    required Function() evento}){
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color
      ),
      child:ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.chevron_right),
        leading: img,
        onTap: evento,
      ),
    );
  }
}