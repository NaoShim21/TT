import 'package:flutter/material.dart';
import '/widgets/widgets.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Fernando',
      'email': 'fernando@google.com',
      'password': '123456',
      'date': '01/01/1999',
    };

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/logoTT.jpg'),
                      radius: 30,
                    ),
                    const Text(
                      'Crea una',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const Text(
                      'cuenta nueva',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '¿Ya te has registrado?', //falta el link de "Ingresa aquí"
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'N O M B R E',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomInputField(
                        hintText: 'Nombre del usuario',
                        formProperty: 'first_name',
                        formValues: formValues),
                    const SizedBox(height: 10),
                    const Text(
                      'C O R R E O',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomInputField(
                        hintText: 'Correo del usuario',
                        keyboardType: TextInputType.emailAddress,
                        formProperty: 'email',
                        formValues: formValues),
                    const SizedBox(height: 10),
                    const Text(
                      'C O N T R A S E Ñ A',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomInputField(
                        hintText: 'Contraseña del usuario',
                        obscureText: true,
                        formProperty: 'password',
                        formValues: formValues),
                    const SizedBox(height: 10),
                    const Text(
                      'F E C H A   D E   N A C I M I E N T O',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 10),
                    //cambiar a calendario de selección
                    CustomInputField(
                        hintText: 'Día/Mes/Año',
                        formProperty: 'date',
                        formValues: formValues),
                    const SizedBox(height: 20),
                    //falta "Aceptar terminos y condiciones"
                    //cambiar forma del boton
                    ElevatedButton(
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Registrar'))),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no válido');
                          return;
                        }

                        //* imprimir valores del formulario
                        print(formValues);
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
