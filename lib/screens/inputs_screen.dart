import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "first_name": "Lalolanda",
      "last_name": "Lalolanda2",
      "email": "sadad@fnaslil.com",
      "password": "13456",
      "role": "Admin",
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y formularios"),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    helperText: 'Asd',
                    hintText: 'Nombre',
                    icon: Icons.abc_outlined,
                    labelText: 'Nombrecito',
                    suffixIcon: Icons.ac_unit,
                    keyboardType: TextInputType.name,
                    isPassword: false,
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  CustomInputField(
                    helperText: 'Asd2',
                    hintText: 'Nombre2',
                    icon: Icons.access_time_outlined,
                    labelText: 'Nombrecito2',
                    suffixIcon: Icons.accessibility_rounded,
                    keyboardType: TextInputType.emailAddress,
                    isPassword: false,
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  CustomInputField(
                    helperText: 'Asd2',
                    hintText: 'Correo',
                    icon: Icons.access_time_outlined,
                    labelText: 'Correito',
                    suffixIcon: Icons.accessibility_rounded,
                    keyboardType: TextInputType.emailAddress,
                    isPassword: false,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  CustomInputField(
                    helperText: 'Asd2',
                    hintText: 'Password',
                    icon: Icons.access_time_outlined,
                    labelText: 'Password',
                    suffixIcon: Icons.accessibility_rounded,
                    keyboardType: TextInputType.emailAddress,
                    isPassword: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                      value: "Admin",
                      items: const [
                        DropdownMenuItem(value: "Admin", child: Text("Admin")),
                        DropdownMenuItem(
                            value: "SuperUser", child: Text("SuperUser")),
                        DropdownMenuItem(
                            value: "Developer", child: Text("Developer")),
                        DropdownMenuItem(
                            value: "Jr Dev", child: Text("Jr Dev")),
                      ],
                      onChanged: (value) {
                        // ignore: avoid_print
                        print(value);
                        formValues["role"] = (value ?? "Admin");
                      }),
                  ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        return;
                      }
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text("Guardar"),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
