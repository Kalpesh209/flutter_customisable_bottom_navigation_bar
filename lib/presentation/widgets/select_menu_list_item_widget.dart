import 'package:flutter/material.dart';

class SelectMenuListItemWidget extends StatefulWidget {
  // final IconData leadingIcon;
  // final String title;
  const SelectMenuListItemWidget({
    super.key,
    // required this.leadingIcon,
    // required this.title,
  });

  @override
  State<SelectMenuListItemWidget> createState() =>
      _SelectMenuListItemWidgetState();
}

class _SelectMenuListItemWidgetState extends State<SelectMenuListItemWidget> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = 'Option 1';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Icon(widget.leadingIcon),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           widget.title,
        //           style: TextStyle(
        //             fontSize: 20,
        //             color: Colors.black,
        //             fontWeight: FontWeight.w500,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),

        Expanded(
          child: RadioListTile<String>(
            title: const Text('Option 1'),
            value: 'Option 1',
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
            controlAffinity: ListTileControlAffinity.trailing,
          ),
        ),
        // Radio(
        //   activeColor: Colors.orange,
        //   fillColor: WidgetStateProperty.all<Color>(Colors.grey),
        //   value: 'Option1',
        //   groupValue: selectValue,
        //   onChanged: (value) {
        //     setState(() {
        //       selectValue = value!;
        //     });
        //   },
        // )
      ],
    );
  }
}
