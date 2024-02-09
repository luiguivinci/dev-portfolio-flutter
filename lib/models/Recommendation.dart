class Recommendation {
  final String? name, source, text, url;

  Recommendation({this.name, this.source, this.url, this.text});
}

final List<Recommendation> recommendations = [
  Recommendation(
    name: "Jhon Doe",
    source: "Linkedin",
    url: "https://google.com",
    text:
        "I have had the pleasure of working with Anwar on two flutter projects and what strikes me the most about his work is his ability to write clean and reusable codes with best practices. He is hardworking and makes it so easy to transcribe ideas into beautiful and testable flutter apps. He is a Flutter/Dart gem and has my highest recommendation",
  ),
  Recommendation(
    name: "Jhon Doe 2",
    source: "Linkedin",
    url: "https://google.com",
    text:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  ),
  Recommendation(
    name: "Jhon Doe 3",
    source: "YouTube",
    url: "https://google.com",
    text:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  ),
];
