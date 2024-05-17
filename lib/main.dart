import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ButtonPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7996d4),
        title: const Text('Jmas', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page1()),
                );
              },
              child: const Text('Tabla consulta'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page2()),
                );
              },
              child: const Text('pago en linea'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page3()),
                );
              },
              child: const Text('Generar Referencia'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page4()),
                );
              },
              child: const Text('Tabla citas'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page5()),
                );
              },
              child: const Text('mi recibo'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla Consulta'),
      ),
      body: const Center(
        child: Form1(),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pago en linea'),
      ),
      body: const Center(
        child: Form2(),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generar referencia'),
      ),
      body: const Center(
        child: Form3(),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla citas'),
      ),
      body: const Center(
        child: Form4(),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi recibo'),
      ),
      body: const Center(
        child: Form5(),
      ),
    );
  }
}

class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController codigopostalController = TextEditingController();
  TextEditingController localizacionController = TextEditingController();
  TextEditingController correoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        shrinkWrap: true,
        children: [
          const Text('Nombre'),
          const SizedBox(height: 5),
          TextField(
            controller: nombreController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter nombre',
            ),
          ),
          const SizedBox(height: 10),
          const Text('Apellido'),
          const SizedBox(height: 5),
          TextField(
            controller: apellidoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Email',
            ),
          ),
          const Text('Fecha'),
          const SizedBox(height: 5),
          TextField(
            controller: fechaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese la fecha',
            ),
          ),
          const Text('codigo postal'),
          const SizedBox(height: 5),
          TextField(
            controller: codigopostalController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese el codigo postal',
            ),
          ),
          const Text('Localizacion'),
          const SizedBox(height: 5),
          TextField(
            controller: localizacionController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese la localizacion',
            ),
          ),
          const Text('Correo'),
          const SizedBox(height: 5),
          TextField(
            controller: correoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingrese el correo',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              print(nombreController.text);
              print(apellidoController.text);
              print(fechaController.text);
              print(codigopostalController.text);
              print(localizacionController.text);
              print(correoController.text);
            },
            child: const Text(
              'Registrar',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Form2 extends StatefulWidget {
  const Form2({super.key});

  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  TextEditingController idreciboController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController montonapagarController = TextEditingController();
  TextEditingController codigopostalController = TextEditingController();
  TextEditingController numerocuentaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        shrinkWrap: true,
        children: [
          const Text('idRecibo'),
          const SizedBox(height: 5),
          TextField(
            controller: idreciboController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa el id de tu recibo',
            ),
          ),
          const SizedBox(height: 10),
          const Text('Apellido'),
          const SizedBox(height: 5),
          TextField(
            controller: apellidoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu apellido',
            ),
          ),
          const Text('fecha'),
          const SizedBox(height: 5),
          TextField(
            controller: fechaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa la fecha de la transaccion',
            ),
          ),
          const Text('telefono'),
          const SizedBox(height: 5),
          TextField(
            controller: telefonoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu telefono',
            ),
          ),
          const Text('correo'),
          const SizedBox(height: 5),
          TextField(
            controller: correoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa el correo',
            ),
          ),
          const Text('monton a pagar'),
          const SizedBox(height: 5),
          TextField(
            controller: montonapagarController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa el monton a pagar',
            ),
          ),
          const Text('codigo postal'),
          const SizedBox(height: 5),
          TextField(
            controller: codigopostalController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu codigo postal',
            ),
          ),
          const Text('numero de cuenta'),
          const SizedBox(height: 5),
          TextField(
            controller: numerocuentaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa el numero de cuenta',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              print(idreciboController.text);
              print(apellidoController.text);
              print(fechaController.text);
              print(correoController.text);
              print(montonapagarController.text);
              print(codigopostalController.text);
              print(numerocuentaController.text);
            },
            child: const Text(
              'Registrar',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Form3 extends StatefulWidget {
  const Form3({super.key});

  @override
  State<Form3> createState() => _Form3State();
}

class _Form3State extends State<Form3> {
  TextEditingController idclienteController = TextEditingController();
  TextEditingController numerocuentaController = TextEditingController();
  TextEditingController codigopostalController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        shrinkWrap: true,
        children: [
          const Text('id cliente'),
          const SizedBox(height: 5),
          TextField(
            controller: idclienteController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu id',
            ),
            obscureText: true,
          ),
          const SizedBox(height: 10),
          const Text('numero de cuenta'),
          const SizedBox(height: 5),
          TextField(
            controller: numerocuentaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu numero de cuenta',
            ),
          ),
          const SizedBox(height: 10),
          const Text('codigo postal'),
          const SizedBox(height: 5),
          TextField(
            controller: codigopostalController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu codigo postal',
            ),
          ),
          const SizedBox(height: 10),
          const Text('nombre'),
          const SizedBox(height: 5),
          TextField(
            controller: nombreController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu nombre',
            ),
          ),
          const SizedBox(height: 10),
          const Text('apellido'),
          const SizedBox(height: 5),
          TextField(
            controller: apellidoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu apellido',
            ),
          ),
          const SizedBox(height: 10),
          const Text('telefono'),
          const SizedBox(height: 5),
          TextField(
            controller: telefonoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu telefono',
            ),
          ),
          const SizedBox(height: 10),
          const Text('correo'),
          const SizedBox(height: 5),
          TextField(
            controller: correoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu correo',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              print(idclienteController.text);
              print(numerocuentaController.text);
              print(codigopostalController.text);
              print(nombreController.text);
              print(apellidoController.text);
              print(telefonoController.text);
              print(correoController.text);
            },
            child: const Text(
              'Registrar',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Form4 extends StatefulWidget {
  const Form4({super.key});

  @override
  State<Form4> createState() => _Form4State();
}

class _Form4State extends State<Form4> {
  TextEditingController tramiteController = TextEditingController();
  TextEditingController oficinaController = TextEditingController();
  TextEditingController numerocuentaController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        shrinkWrap: true,
        children: [
          const Text('Tramite'),
          const SizedBox(height: 5),
          TextField(
            controller: tramiteController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingresar el tramite que necesitas ',
            ),
          ),
          const SizedBox(height: 10),
          const Text('oficina'),
          const SizedBox(height: 5),
          TextField(
            controller: oficinaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingresa la oficina mas cerca de tu casa',
            ),
          ),
          const SizedBox(height: 10),
          const Text('nombre'),
          const SizedBox(height: 5),
          TextField(
            controller: nombreController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu nombre',
            ),
          ),
          const SizedBox(height: 10),
          const Text('apellido'),
          const SizedBox(height: 5),
          TextField(
            controller: apellidoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu apellido',
            ),
          ),
          const SizedBox(height: 10),
          const Text('telefono'),
          const SizedBox(height: 5),
          TextField(
            controller: telefonoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu telefono',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              print(tramiteController.text);
              print(oficinaController.text);
              print(nombreController.text);
              print(apellidoController.text);
              print(telefonoController.text);
            },
            child: const Text(
              'Registrar',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Form5 extends StatefulWidget {
  const Form5({super.key});

  @override
  State<Form5> createState() => _Form5State();
}

class _Form5State extends State<Form5> {
  TextEditingController idreciboController = TextEditingController();
  TextEditingController correoController = TextEditingController();
  TextEditingController contrasenaController = TextEditingController();
  TextEditingController numerocuentaController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController rfcController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        shrinkWrap: true,
        children: [
          const Text('idrecibo'),
          const SizedBox(height: 5),
          TextField(
            controller: idreciboController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu id',
            ),
          ),
          const Text('correo'),
          const SizedBox(height: 5),
          TextField(
            controller: correoController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu correo',
            ),
          ),
          const Text('contraseña'),
          const SizedBox(height: 5),
          TextField(
            controller: contrasenaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu contraseña',
            ),
          ),
          const Text('numero de cuenta'),
          const SizedBox(height: 5),
          TextField(
            controller: numerocuentaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu numero de cuenta',
            ),
          ),
          const Text('nombre'),
          const SizedBox(height: 5),
          TextField(
            controller: nombreController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu nombre',
            ),
          ),
          const Text('RFC'),
          const SizedBox(height: 5),
          TextField(
            controller: rfcController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ingresa tu RFC',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              print(idreciboController.text);
              print(correoController.text);
              print(contrasenaController.text);
              print(numerocuentaController.text);
              print(nombreController.text);
              print(rfcController.text);
            },
            child: const Text(
              'Regristrar',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
