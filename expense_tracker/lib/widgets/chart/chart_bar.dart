// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:expense_tracker/model/expense.dart'; // Import Expense model

// class ChartBar extends StatelessWidget {
//   final List<Expense> expenses;

//   const ChartBar({required this.expenses});

//   @override
//   Widget build(BuildContext context) {
//     // Grouping expenses by category using ExpensesBucket
//     final groupedExpenses = Category.values.map((category) {
//       return ExpensesBucket.forCategory(expenses, category);
//     }).toList();

//     // Prepare data for the bar chart
//     final barChartData = groupedExpenses.map((bucket) {
//       return BarChartGroupData(
//         x: Category.values.indexOf(bucket.category),
//         barRods: [
//           BarChartRodData(
//             toY: bucket.totalExpenses,
//             color: Colors.blue, // Color of the bars
//             width: 20,
//           ),
//         ],
//       );
//     }).toList();

//     return BarChart(
//       BarChartData(
//         alignment: BarChartAlignment.spaceAround,
//         maxY: groupedExpenses.fold(0, (previousValue, element) {
//           return element.totalExpenses > previousValue ? element.totalExpenses : previousValue;
//         }),
//         barGroups: barChartData,
//         titlesData: FlTitlesData(show: true),
//         gridData: FlGridData(show: true),
//         borderData: FlBorderData(show: true),
//         axisTitleData: FlAxisTitleData(show: true),
//       ),
//     );
//   }
// }
