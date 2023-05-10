import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String titleText;
  final String subtitleText;
  final String weightText;
  final String dropdownValue;
  final List<String> dropdownItems;
  final void Function(String?) onDropdownChanged;

  const CustomCard({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    required this.weightText,
    required this.dropdownValue,
    required this.dropdownItems,
    required this.onDropdownChanged,
  }) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.titleText,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.subtitleText,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              widget.weightText,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: widget.dropdownValue,
              items: widget.dropdownItems.map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: widget.onDropdownChanged,
            ),
          ],
        ),
      ),
    );
  }
}
