import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { leisure, food, work, travel, other }

const categoryIcons = {
  Category.leisure: Icons.movie,
  Category.food: Icons.lunch_dining,
  Category.work: Icons.work,
  Category.travel: Icons.flight_takeoff,
  Category.other: Icons.other_houses,
};

class Expense {
  Expense({
    //required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); //initization

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; //lesisure Expense(), food Expense()

  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpensesBucket {
  const ExpensesBucket({required this.category, required this.expenses});

  ExpensesBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses.where((expense) => expense.category == category).toList();
  final Category category;
  final List<Expense> expenses;
  double get totalExpenses {
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount;
    }
    return sum;
  }
}
