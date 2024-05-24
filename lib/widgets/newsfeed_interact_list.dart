import 'package:flutter/material.dart';
import 'package:flutter_fb/models/interact/index.dart';
import 'package:flutter_fb/models/utils/index.dart';
import 'package:flutter_fb/widgets/action.dart';

class NewsfeedInteractListWidget extends StatelessWidget {
  final InteractModel data;

  const NewsfeedInteractListWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ...List.generate(
                  data.mostHighActionTypes.length,
                  (index) =>
                      ActionWidget(type: data.mostHighActionTypes[index])),
              SizedBox(width: 5),
              Text(Utils.thousandify(data.sumOfInteract), style: _style),
            ],
          ),
          Row(
            children: [
              Text("${Utils.thousandify(data.comments)} comments",
                  style: _style),
              SizedBox(width: 10),
              Text("${Utils.thousandify(data.shares)} shares", style: _style),
            ],
          ),
        ],
      ),
    );
  }

  TextStyle get _style => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black54,
      );
}
