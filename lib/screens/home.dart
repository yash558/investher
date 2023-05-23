import 'package:flutter/material.dart';
import 'package:wehack/components/income_expense_card.dart';
import 'package:wehack/utilis/constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          children: [
            const SizedBox(
              height: defaultSpacing * 1,
            ),
            ListTile(
              title: const Text("Yash Sharma"),
              // leading: ClipRRect(
              //     borderRadius:
              //         const BorderRadius.all(Radius.circular(defaultRadius)),
              //     child: Image.asset(
              //       "assets/images/avatar.jpeg",
              //     )),
              trailing: Image.asset("assets/icons/bell.png"),
            ),
            const SizedBox(
              height: defaultSpacing * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: IncomeExpenseTracker(
                    expenseData: ExpenseData(
                        "Income", "Rs 80,000", Icons.arrow_upward_rounded),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: IncomeExpenseTracker(
                    expenseData: ExpenseData(
                        "Expense", "- Rs 20,000", Icons.arrow_downward_rounded),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
