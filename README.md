# 📚 Bookly App


---
A beautiful and modern Flutter application for browsing and reading books. Bookly App features an animated splash screen, smooth UI, integration with book APIs, and an intuitive layout for users to browse, preview, and read books easily.

---
## 🧱 Project Structure (Clean Architecture - Modular)

<details>
<summary><strong>📁 lib/ directory structure</strong></summary>

```plaintext
lib/
├── constant.dart
├── main.dart
│
├── core/
│   ├── errors/
│   │   └── failure.dart
│   ├── utils/
│   │   ├── api_service.dart
│   │   ├── app_router.dart
│   │   └── service_locator.dart
│   ├── widgets/
│   │   ├── books_action_button.dart
│   │   ├── custom_circuliorindecator.dart
│   │   └── error_message.dart
│
├── features/
│   ├── home_feature/
│   │   ├── data/
│   │   │   ├── models/
│   │   │   │   ├── accessinfo.dart
│   │   │   │   ├── book_model.dart
│   │   │   │   ├── epub.dart
│   │   │   │   ├── imagelink.dart
│   │   │   │   ├── industryidentifier.dart
│   │   │   │   ├── listprice.dart
│   │   │   │   ├── offer.dart
│   │   │   │   ├── penalizationsummary.dart
│   │   │   │   ├── readingmodes.dart
│   │   │   │   ├── saleinfo.dart
│   │   │   │   ├── searchinfo.dart
│   │   │   │   └── volume_info.dart
│   │   │   └── repos/
│   │   │       ├── home_reps.dart
│   │   │       └── home_reps_impl.dart
│   │   └── presentation/
│   │       ├── view/
│   │       │   ├── home_view.dart
│   │       │   ├── book_deatils_view.dart
│   │       │   └── widgets/
│   │       │       ├── best_saller_list_view_widget.dart
│   │       │       ├── best_saller_view.dart
│   │       │       ├── book_details_down_section.dart
│   │       │       ├── book_details_up_section.dart
│   │       │       ├── book_details_view_body.dart
│   │       │       ├── book_rating.dart
│   │       │       ├── custom_app_bar.dart
│   │       │       ├── custom_book_details_app_bar.dart
│   │       │       ├── custom_book_image.dart
│   │       │       ├── custom_button_action_book.dart
│   │       │       ├── featured_list_view_image.dart
│   │       │       ├── home_view_body.dart
│   │       │       └── similarbookslistview.dart
│   │       └── view_model/
│   │           ├── featured_books_cubit/
│   │           │   ├── featured_books_cubit.dart
│   │           │   └── featured_books_stat.dart
│   │           ├── newest_books_cubit/
│   │           │   ├── newest_books_cubit.dart
│   │           │   └── newest_books_state.dart
│   │           └── similar_books_cubit/
│   │               ├── similar_books_cubit.dart
│   │               └── similar_books_state.dart
│
│   ├── search_feature/
│   │   ├── data/
│   │   └── presentation/
│   │       ├── view/
│   │       │   ├── search_view.dart
│   │       │   └── widgets/
│   │       │       ├── custom_search_text_field.dart
│   │       │       ├── search_result_list_view.dart
│   │       │       └── search_view_body.dart
│   │       └── view_model/
│
│   └── splash_feature/
│       ├── data/
│       └── presentation/
│           ├── view/
│           │   ├── splash_view.dart
│           │   └── widgets/
│           │       ├── slide_image_widget.dart
│           │       ├── slide_text_widget.dart
│           │       └── splash_view_body.dart
│           └── view_model/
│
├── generated/
│   └── assets.dart

```
</details>


## 🎬 Splash Screen (Animated)



https://github.com/user-attachments/assets/e1774509-ef44-4594-933c-ee246e7aac09


---

## 📸 Screenshots

### 🏠 Home Screen

<p align="center">
  <img src="https://github.com/user-attachments/assets/5580235e-357e-4d9c-87c4-6d581c2cf62b" alt="home screen" width="300"/>
</p>

### 📖 Screen Book Details
<p align="center">
  <img src="https://github.com/user-attachments/assets/9c8b16ee-0fd3-4dfc-8c27-f5c94fa7fcff" alt="splash screen" width="300"/>
</p>



### 🌐 Web View (Book Details)

<p align="center">
  <img src="https://github.com/user-attachments/assets/59f4c516-af1c-42d7-90dc-8cbf6b29e570" alt="web view screen" width="300"/>
</p>
---

## 🛠️ Built With

- **Flutter** – UI Toolkit
- **Dart** – Programming Language
- **Google Books API** – Book data source
- **Cubit** – State Management (via flutter_bloc)
- **MVVM**

---

## 🚀 Features

- Animated splash screen
- Display newest books from Google Books
- Navigate to full book details With suggation  similar books 
- Responsive and modern UI
- Error handling and loading indicators

---

## 🧪 Getting Started

1. Clone the repo:
```bash
git clone https://github.com/ahmedbnsamy/bookly-app.git
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

> Make sure you have an emulator or real device connected.

---

## 📬 Contact

- Email: **samy4118@gmail.com**
- LinkedIn: [Ahmed Samy](https://www.linkedin.com/in/ahmedbnsamy)

---

⭐ **Don’t forget to star this repo if you like it!**
