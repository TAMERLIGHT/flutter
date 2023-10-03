import 'package:flutter/material.dart';
import 'modules/data.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final userVariables = UserVariables(); // Используем переменные пользователя

    return Scaffold(
      appBar: AppBar(
        title: const Text('Информация о пользователе'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildFieldWithIcon(Icons.person, 'Имя: ${userVariables.name}'),
            _buildFieldWithIcon(Icons.location_on, 'Страна: ${userVariables.country}'),
            _buildFieldWithIcon(Icons.phone, 'Номер телефона: ${userVariables.phoneNumber}'),
            _buildFieldWithIcon(Icons.email, 'Email: ${userVariables.email}'),
            _buildFieldWithIcon(Icons.message, 'Сообщение: ${userVariables.message}'),
          ],
        ),
      ),
    );
  }

  Widget _buildFieldWithIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
