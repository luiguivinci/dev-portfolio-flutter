// in this file we create a model for the project
// and we create a list of projects

class Project {
  String? title, technologies, description, tinyDescription, projectUrl;

  Project({
    this.title,
    this.technologies,
    this.description,
    this.tinyDescription,
    this.projectUrl,
  });
}

// Acá no es necesario invocar el método tr() porque ya se hizo en el widget
// ProjectCard en el archivo lib/screens/home/components/project_card.dart
// Solo es necesario asignar la clave de traducción en el archivo de traducción
// assets/translations/en.json y assets/translations/es.json

List<Project> projects = [
  Project(
    title: "project_title_1",
    technologies: "Flutter, Firebase",
    tinyDescription: "project_tiny_description_1",
    description: "project_description_1",
    projectUrl: "",
  ),
  Project(
    title: "project_title_2",
    technologies: "Flutter, Firebase",
    tinyDescription: "project_tiny_description_2",
    description: "project_description_2",
    projectUrl: "",
  ),
];
