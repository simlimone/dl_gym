import 'package:flutter/material.dart';

class HomeElevatedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onPressed;

  const HomeElevatedButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Colors.black87,
            ),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onPressed: onPressed,
          child: ListTile(
            title: Text(
              text,
              style: Theme.of(context).textTheme.button,
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                color: Colors.black87,
              ),
            ),
            iconColor: Colors.white,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
