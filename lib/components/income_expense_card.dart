import 'package:flutter/material.dart';
import 'package:wehack/utilis/constant.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;

  const ExpenseData(
    this.label,
    this.amount,
    this.icon,
  );
}

class IncomeExpenseTracker extends StatelessWidget {
  final ExpenseData expenseData;
  const IncomeExpenseTracker({super.key, required this.expenseData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(right: defaultSpacing),
      padding: const EdgeInsets.all(defaultSpacing),
      decoration: BoxDecoration(
        color: expenseData.label == "Income" ? secondaryLight : accent,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultRadius),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expenseData.label,
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  expenseData.amount,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Icon(
              expenseData.icon,
              color: Colors.white,
              size: 25.0,
            ),
          )
        ],
      ),
    );
  }
}
