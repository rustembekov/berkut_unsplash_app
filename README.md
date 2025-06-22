# Art Gallery App

A Flutter-based mobile application for browsing stunning high-resolution images from Unsplash. This app showcases a clean, modern UI and is built with a focus on scalable architecture and best practices.

![App Screenshot](https://i.imgur.com/example.png) <!-- Replace with a real screenshot URL -->

## ✨ Features

- **Beautiful Home Screen**: A visually appealing entry point with a search bar and a curated list of photos.
- **Image Search**: Search for any photo using the powerful Unsplash API.
- **Favorites**: Save your favorite photos for easy access later.
- **Photo Details**: View photos in high resolution along with their details.
- **Clean Architecture**: Organized into feature-based modules with a clear separation of concerns (Data, Domain, Presentation).
- **Dependency Injection**: Utilizes `GetIt` and `injectable` for managing dependencies.
- **State Management**: Built with `flutter_bloc` for predictable and scalable state management.
- **Routing**: Uses `go_router` for a declarative and robust navigation system.

---

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### 1. Prerequisites

Make sure you have the following installed on your local development machine:

- **Flutter SDK**: [Installation Guide](https://flutter.dev/docs/get-started/install) (Ensure you are on the `stable` channel)
- **A code editor**: We recommend [VS Code](https://code.visualstudio.com/) with the [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter).
- **Git**: [Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### 2. Clone the Repository

First, clone the project from GitHub to your local machine:

```bash
git clone https://github.com/berkut/unsplash_app.git
cd unsplash_app
```

### 3. Set Up Environment Variables

This project requires an API key from Unsplash to fetch images.

1.  **Create a `.env` file** in the root directory of the project.
2.  **Get an Unsplash API Key**:
    - Go to the [Unsplash Developers](https://unsplash.com/developers) page and create an account.
    - Create a new application to get your **Access Key**.
3.  **Add the key to your `.env` file**:

    ```env
    UNSPLASH_ACCESS_KEY=your_unsplash_access_key_here
    ```

### 4. Install Dependencies

Once you have the project cloned, you need to install all the necessary dependencies listed in the `pubspec.yaml` file.

```bash
flutter pub get
```

### 5. Run Code Generation

This project uses code generation for dependency injection (`injectable`) and data models (`freezed`). Run the following command to generate the necessary files:

```bash
dart run build_runner build --delete-conflicting-outputs
```

> **Note:** If you make changes to any of the data models or injectable services, you will need to run this command again.

### 6. Run the Application

You are now ready to run the app on an emulator or a physical device.

```bash
flutter run
```

---

## 🏗️ Project Structure

The project follows a clean architecture, separating the code into three main layers: **Presentation**, **Domain**, and **Data**.

```
lib/
├── core/               # Core utilities, configs, DI, routing
├── features/           # Feature-based modules
│   ├── photo_search/
│   │   ├── data/       # Data sources, repositories, models
│   │   ├── domain/     # Entities, use cases, repository contracts
│   │   └── presentation/ # BLoCs, pages, widgets
│   └── photo_favorites/
│       ├── ...
└── main.dart           # App entry point
```

-   **`core`**: Contains shared code used across multiple features, such as API clients, database services, dependency injection setup, and routing.
-   **`features`**: Each feature of the application (like Photo Search or Favorites) is a self-contained module with its own data, domain, and presentation layers.
-   **`main.dart`**: The main entry point where the application is initialized.

---

## 🛠️ Built With

- [Flutter](https://flutter.dev/) - The UI toolkit for building natively compiled applications.
- [Dio](https://pub.dev/packages/dio) - A powerful HTTP client for Dart.
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) - A predictable state management library.
- [go_router](https://pub.dev/packages/go_router) - A declarative routing package.
- [GetIt](https://pub.dev/packages/get_it) & [Injectable](https://pub.dev/packages/injectable) - For dependency injection.
- [Freezed](https://pub.dev/packages/freezed) - For robust data models and unions.
- [Isar](https://pub.dev/packages/isar) - A fast, cross-platform database for Flutter.

Feel free to contribute to this project by submitting a pull request.
