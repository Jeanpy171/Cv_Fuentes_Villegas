import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'web.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            
            tabs: [
              
              Tab(icon: Icon(Icons.pages)),
              Tab(icon: Icon(Icons.pageview)),
            ],
          ),
          title: const Text('CURRICULUM VITAE'),
          ),
          body: const TabBarView(
            children: [
              MyHomePage(title: "JEAN - FUENTES"),
              MyHomePage2(title: "ANTONIO - VILLEGAS"),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState2();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('JEAN PIERRE FUENTES MEZA'),
      ),
      body: Column(
        children: [

          firstColumn,

          Center(
              child: ElevatedButton(
                  onPressed: _createPDF,
                  child: const Text('Descargar aquí'))),
        ],
      ),
    );
  }

  Widget firstColumn = Container(
    // padding: const EdgeInsets.all(32),
    margin: const EdgeInsets.only(left: 25),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  'PERFIL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Soy un desarrollador de software con conocimientos solidos en ciertos lenguajes comunes, además de contar con conocimientos en el mantenimiento de computadores. Me apasionan los artículos de tecnología y el alcance que tiene y aporte que tiene el software para convertir labores complicadas en tareas sencillas que están alcance de todo público.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  'ESTUDIOS REALIZADOS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              "2019",
                              style: TextStyle(color: Colors.black,),
                            ),
                            Text(
                              "2022",
                              style: TextStyle(color: Colors.black,),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            "ELECTRÓNICA DE CONSUMO",
                            style: TextStyle(color: Colors.black,),
                          ),
                          Text(
                            "DESARROLLO DE SOFTWARE",
                            style: TextStyle(color: Colors.black,),
                          ),
                        ],
                      )
                    ],
                  )),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  'EXPERIENCIA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  '16 JULIO - 16 Noviembre',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'CLEAR MINDS CONSULTORES - EC',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '     Desarrollador / Junior',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Text(
                '    Quito, Ecuador',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - Desarrollador de aplicaciones móviles ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  ' - Solvencia de vulnerabilidades de Cobiscorp',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  ' - Capacitación en Sql,ST y Java ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsetsDirectional.all(23),
          margin: const EdgeInsets.only(left: 25),
          color: Colors.grey[200],
          child: Column(
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/imagen_1.jpg'),
              ),
              Row(
                children: const [
                  Icon(Icons.phone, color: Colors.blue),
                  Text("  +593 99 889 3072")
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.email, color: Colors.blue),
                  Text("   jeanpyfuentes67@hotmail.com")
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.directions, color: Colors.blue),
                  Text("   Monserrat / Quito - Ecuador")
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Text(
                  "HABILIDADES",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - Javascript ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - React Native ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - SQL ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Text(
                  "IDIOMAS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Text("Español: Nativo"),
              const Text("Ingles: Intermedio"),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
              ),
            ],
          ),
        )
      ],
    ),
  );

  Widget rowPhone = Row(
    children: const [Icon(Icons.phone, color: Colors.red), Text("342743278")],
  );

  Future<void> _createPDF() async {
    //Create a new PDF document
    PdfDocument document = PdfDocument();
    final PdfPageTemplateElement headerTemplate =
        PdfPageTemplateElement(const Rect.fromLTWH(0, 0, 515, 50));
    final myPage = document.pages.add();
    final Size pageSize = myPage.getClientSize();

    myPage.graphics.drawImage(PdfBitmap(await _readImage('cv_1.png')),
        Rect.fromLTWH(0, 0, pageSize.width, pageSize.height));

    //Save the document
    List<int> bytes = await document.save();

    //Dispose the document
    document.dispose();

    saveAndLaunchFile(bytes, "Jean_Fuentes.pdf");

    
  }

  
}

class _MyHomePageState2 extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ANTONIO VILLEGAS'),
      ),
      body: Column(
        children: [

          firstColumn,

          Center(
              child: ElevatedButton(
                  onPressed: _createPDF,
                  child: const Text('Descargar aquí'))),
        ],
      ),
    );
  }

  Widget firstColumn = Container(
    // padding: const EdgeInsets.all(32),
    margin: const EdgeInsets.only(left: 25),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  'PERFIL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Soy un estudiante de desarrollo de Software, cconocimiento en varios lenguajes de programación arquitectura de computadores, seguridad informática, manejo de bases de datos y paquete office; Interesado en laborar en la industria de desarrollo desoftware para expandir mis conocimientos de varios campos como: seguridad, desarrollo de aplicaciones y web, etc',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  'ESTUDIOS REALIZADOS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              "2018 – 2019",
                              style: TextStyle(color: Colors.black,),
                            ),
                            Text(
                              "2018 – 2019",
                              style: TextStyle(color: Colors.black,),
                            ),
                            Text(
                              "2019– Presente",
                              style: TextStyle(color: Colors.black,),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            "Unidad educativa Jesús de Nazareth - BACHILLER",
                            style: TextStyle(color: Colors.black,),
                          ),
                          Text(
                            "Programador de Sistemas",
                            style: TextStyle(color: Colors.black,),
                          ),
                          Text(
                            "Desarrollador de Software - EPN",
                            style: TextStyle(color: Colors.black,),
                          ),
                        ],
                      )
                    ],
                  )),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  'EXPERIENCIA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  '16 JULIO - 16 Noviembre',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'CLEAR MINDS CONSULTORES - EC',
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '     Desarrollador / Junior',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              Text(
                '    Quito, Ecuador',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - Desarrollador de aplicaciones móviles ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  ' - Solvencia de vulnerabilidades de Cobiscorp',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  ' - Capacitación en Sql,ST y Java ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsetsDirectional.all(23),
          margin: const EdgeInsets.only(left: 25),
          color: Colors.grey[200],
          child: Column(
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/imagen_2.png'),
              ),
              Row(
                children: const [
                  Icon(Icons.phone, color: Colors.orange),
                  Text("  (593) 0967165147")
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.email, color: Colors.orange),
                  Text("   anville7.24@hotmail.com")
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.directions, color: Colors.orange),
                  Text("   Chillogallo / Quito - Ecuador")
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const Text(
                  "HABILIDADES",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - Java ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - Javascript ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - React Native ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3),
                margin: const EdgeInsets.only(top: 15),
                child: Text(
                  ' - SQL ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );

  Widget rowPhone = Row(
    children: const [Icon(Icons.phone, color: Colors.orange), Text("342743278")],
  );

  Future<void> _createPDF() async {
    //Create a new PDF document
    PdfDocument document = PdfDocument();
    final PdfPageTemplateElement headerTemplate =
        PdfPageTemplateElement(const Rect.fromLTWH(0, 0, 515, 50));
    final myPage = document.pages.add();
    final Size pageSize = myPage.getClientSize();

    myPage.graphics.drawImage(PdfBitmap(await _readImage('cv_2.png')),
        Rect.fromLTWH(0, 0, pageSize.width, pageSize.height));

    //Save the document
    List<int> bytes = await document.save();

    //Dispose the document
    document.dispose();

    saveAndLaunchFile(bytes, "Antonio_Villegas.pdf");

    
  }

  
}

Future<Uint8List> _readImage(String name) async {
  final data = await rootBundle.load('images/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}
