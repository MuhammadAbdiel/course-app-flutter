import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final _number;
  final _title;
  final _time;

  const CustomTile(this._number, this._title, this._time, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Text(
        _number,
        style: const TextStyle(
          color: Color(0xffE4E7F4),
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      title: Text(
        _title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      subtitle: Text(_time),
      trailing: MaterialButton(
        onPressed: () {},
        color: const Color(0xff49CC96),
        padding: const EdgeInsets.all(7),
        minWidth: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.arrow_right,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
