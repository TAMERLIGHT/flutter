import 'package:flutter/material.dart';
import 'second.dart';
import 'modules/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const RegistrationFormPage(),
        '/user_info': (context) => const UserInfoPage(),
      },
    );
  }
}

class RegistrationFormPage extends StatelessWidget {
  const RegistrationFormPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Регистрация')),
      body: const RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key});

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final userVariables = UserVariables();

  bool _passwordObscured = true;
  bool _confirmPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: <Widget>[
          const SizedBox(height: 20.0),
          _buildTextField(
            label: 'Имя',
            icon: Icons.person,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите имя';
              }
              return null;
            },
            onSaved: (value) {
              userVariables.name = value!;
            },
          ),
          const SizedBox(height: 16.0),
          _buildTextField(
            label: 'Номер телефона',
            icon: Icons.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите номер телефона';
              }
              return null;
            },
            onSaved: (value) {
              userVariables.phoneNumber = value!;
            },
          ),
          const SizedBox(height: 16.0),
          InputDecorator(
            decoration: InputDecoration(
              labelText: 'Страна',
              icon: const Icon(Icons.location_on),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: DropdownButtonFormField<String>(
              items: ['Украина', 'Казахстан', 'США'].map((String country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Выберите страну';
                }
                return null;
              },
              onChanged: (String? value) {
                setState(() {
                  userVariables.country = value!;
                });
              },
              value: userVariables.country,
            ),
          ),
          const SizedBox(height: 16.0),
          _buildTextField(
            label: 'Email',
            icon: Icons.email,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите email';
              }
              return null;
            },
            onSaved: (value) {
              userVariables.email = value!;
            },
          ),
          const SizedBox(height: 16.0),
          _buildTextField(
            label: 'Сообщение',
            icon: Icons.message,
            onSaved: (value) {
              userVariables.message = value!;
            },
            maxLines: 3,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 16.0),
          _buildPasswordField(
            label: 'Пароль',
            controller: _passwordController,
          ),
          const SizedBox(height: 16.0),
          _buildPasswordField(
            label: 'Подтверждение пароля',
            controller: _confirmPasswordController,
          ),
          const SizedBox(height: 12.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserInfoPage(),
                  ),
                );
              }
            },
            child: const Text('Отправить'),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    IconData? icon,
    TextEditingController? controller,
    String? Function(String?)? validator,
    void Function(String?)? onSaved,
    int maxLines = 1,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        icon: icon != null ? Icon(icon) : null,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      controller: controller,
      validator: validator,
      onSaved: onSaved,
      autovalidateMode: autovalidateMode,
      maxLines: maxLines,
    );
  }

  Widget _buildPasswordField({
    required String label,
    TextEditingController? controller,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        icon: Icons.lock != null ? const Icon(Icons.lock) : null,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              if (controller == _passwordController) {
                _passwordObscured = !_passwordObscured;
              } else if (controller == _confirmPasswordController) {
                _confirmPasswordObscured = !_confirmPasswordObscured;
              }
            });
          },
          icon: Icon(
            controller == _passwordController
                ? _passwordObscured
                    ? Icons.visibility
                    : Icons.visibility_off
                : _confirmPasswordObscured
                    ? Icons.visibility
                    : Icons.visibility_off,
          ),
        ),
      ),
      obscureText: _passwordObscured,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$label не введен';
        } else if (value.length < 6) {
          return '$label должен содержать минимум 6 символов';
        } else if (controller == _confirmPasswordController &&
            value != _passwordController.text) {
          return 'Пароли не совпадают';
        }
        return null;
      },
    );
  }
}
