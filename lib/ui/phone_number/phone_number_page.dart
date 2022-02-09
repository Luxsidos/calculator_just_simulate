import 'package:calculator_just_simulate/core/theme/app_text_style.dart';
import 'package:calculator_just_simulate/data/bloc/result_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneNumberPage extends StatelessWidget {
  final TextEditingController editingController = TextEditingController();
  PhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: editingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                hintText: "enter the number",
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              child: const Text("SUBMIT"),
              onPressed: () async {
                BlocProvider.of<ResultBloc>(context).add(
                  PhoneNumberEvent(int.parse(editingController.text)),
                );
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
