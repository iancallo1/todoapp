
![✅_Flutter_ToDo_App_📆📝](https://github.com/user-attachments/assets/667a8674-7646-4c96-bf97-254e8766a214)

# ✅ Flutter ToDo App 📝

A simple and ToDo app built with Flutter 🚀  
Helps you organize your tasks, boost productivity, and never miss a deadline! 📆🧠

## Features

- ✅ Add new tasks
- 🗑️ Delete tasks with confirmation
- ☑️ Mark tasks as complete/incomplete
- 📱 Responsive design
- 🎨 Beautiful green color scheme

## Getting Started

### Prerequisites

- Flutter SDK (latest version)
- Dart SDK (latest version)
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:
```bash
git clone [this-repository-url]
```

2. Navigate to the project directory:
```bash
cd todoapp
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── components/
│   └── todo_tiles.dart
├── pages/
│   ├── home_page.dart
│   └── utilities/
│       └── Forms/
│           ├── input_dialog.dart
│           └── confirm_delete_dialog.dart
└── main.dart
```
## What I Learned

### Flutter Basics
- Understanding the difference between `StatelessWidget` and `StatefulWidget`
- How to use `@override` annotation and its importance in Flutter
- The concept of zero-indexed lists in Dart (index 0 is the first item)


### State Management
- Using `setState` to update UI when data changes
- Managing lists and their states in Flutter
- How to handle checkbox states and toggle functionality

### UI/UX Improvements
- Adding ripple effects using `InkWell` and `Material` widgets
- Making entire tiles clickable for better user experience
- Implementing scrollbars with custom thickness and visibility
- Creating custom dialog boxes for different purposes (input, confirmation)

### Code Organization
- Creating modular components that can be reused
- Using relative imports for better code organization
- Separating button logic into reusable components
- Creating a flexible dialog system with different types (input, delete confirmation)

### Best Practices
- Using `const` for static widgets to improve performance
- Implementing proper null safety with `?` and `!` operators
- Creating flexible components that can be customized (like `ActionButtons`)
- Using proper padding and spacing for better UI appearance


### Performance Considerations
- Understanding when to use `const` constructors
- How to optimize widget rebuilds
- The importance of proper widget structure for performance

### Debugging and Problem Solving
- How to identify and fix common Flutter issues
- Understanding widget hierarchy and its impact
- Learning to read and interpret Flutter error messages

## Usage

- Tap the floating action button (+) to add a new task
- Check/uncheck the checkbox to mark a task as complete/incomplete
- Long press on a task to delete it
- Scroll through your tasks using the scrollbar

## Contributing

Feel free to submit issues and enhancement requests!


