import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatefulWidget{
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}
class _OrderDetailsPageState extends State<OrderDetailsPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> openDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController = TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: _textEditingController,
                      validator: (value) {
                        return value!.isNotEmpty ? null : 'Invalid field';
                      },
                      decoration: InputDecoration(hintText: 'Enter text'),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Choice box'),
                        Checkbox(
                            value: isChecked,
                            onChanged: (checked) {
                              setState(() {
                                isChecked = checked!;
                              });
                            }
                        )
                      ],
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text('SUBMIT'),
                )
              ],
            );
          });
        });
  }

    @override
    Widget build(BuildContext context) {
      return Container();
    }
}