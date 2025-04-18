**Modelado de Planes de Estudio UNLu en Neo4j**

Este repositorio contiene un único script Cypher (`unlu.cypher`) que modela la totalidad de los planes de estudio de la Universidad Nacional de Luján (UNLu), incluyendo **Departamentos**, **Carreras** y **Materias**, junto con sus relaciones.

---

## 🔍 Fuentes de datos

Los planes de estudio originales se extraen de la web de la UNLu y se han convertido a Cypher en este archivo:

- Ingeniería Agronómica: `https://www.unlu.edu.ar/carg-agronomia.html`
- Ingeniería en Alimentos: `https://www.unlu.edu.ar/carg-alimentos.html`
- Ingeniería Industrial: `https://www.unlu.edu.ar/carg-industrial.html`
- Licenciatura en Sistemas de Información: `https://www.unlu.edu.ar/carg-sistemas.html`
- Licenciatura en Administración: `https://www.unlu.edu.ar/carg-administracion.html`
- Contador Público: `https://www.unlu.edu.ar/carg-contador.html`
- Licenciatura en Ciencias Biológicas: `<URL correspondiente>`
- Licenciatura en Ciencias de la Educación: `<URL correspondiente>`
- Licenciatura en Comercio Internacional: `<URL correspondiente>`
- Licenciatura en Educación Física: `<URL correspondiente>`

_Los últimos cuatro programas se añadieron manualmente según los planes disponibles en la web._

---

## 📂 Estructura del archivo `unlu.cypher`

- **Departamentos** (`:Departamento`):
  - Departamento de Ciencias Básicas
  - Departamento de Ciencias Sociales
  - Departamento de Educación
  - Departamento de Tecnología

- **Carreras** (`:Carrera`):
  - Ingeniería Agronómica
  - Ingeniería en Alimentos
  - Ingeniería Industrial
  - Licenciatura en Sistemas de Información
  - Licenciatura en Administración
  - Contador Público
  - Licenciatura en Ciencias Biológicas
  - Licenciatura en Ciencias de la Educación
  - Licenciatura en Comercio Internacional
  - Licenciatura en Educación Física

- **Materias** (`:Materia`): Cada carrera está definida con una lista de materias que incluyen los atributos:
  - `codigo`: código único de la materia
  - `nombre`: nombre completo de la materia
  - `cuatrimestre`: número de cuatrimestre (0 = anual o sin cuatrimestre)
  - `horasSem`: horas semanales dedicadas
  - `prereqs`: lista de códigos de materias previas (prerrequisitos)

- **Relaciones**:
  - `(:Carrera)-[:OFRECE]->(:Materia)` &mdash; vínculo de oferta de materia por carrera
  - `(:Materia)-[:DEPENDE_DE]->(:Materia)` &mdash; prerrequisitos entre materias
  - `(:Materia)-[:PERTENECE_A]->(:Departamento)` &mdash; asignación de materia a un departamento

---

## ⚙️ Fragmentos clave de `unlu.cypher`

```cypher
// 1) Crear los Departamentos
UNWIND ['Departamento de Ciencias Básicas', 'Departamento de Ciencias Sociales',
        'Departamento de Educación', 'Departamento de Tecnología'] AS dName
MERGE (d:Departamento {nombre: dName});

// 2) Crear las Carreras
UNWIND ['Ingeniería Agronómica','Ingeniería en Alimentos','Ingeniería Industrial',
        'Licenciatura en Sistemas de Información','Licenciatura en Administración',
        'Contador Público','Licenciatura en Ciencias Biológicas',
        'Licenciatura en Ciencias de la Educación','Licenciatura en Comercio Internacional',
        'Licenciatura en Educación Física'] AS cName
MERGE (c:Carrera {nombre: cName});

// 3) Definición completa de Materias y relaciones OFRECE/DEPENDE_DE
//    (revisar todo el bloque en `unlu.cypher` para cada carrera)

// 4) Asignación de Materias a Departamentos
//    - Se crea una lista de posibles departamentos y se asigna mediante keywords

// 5) Consultas de verificación y ejemplo de promedio de dificultad
//    (al final del archivo encontrarás las consultas para validar el modelo)
```

Para ver la definición completa de todas las materias y sus atributos, abre el archivo `unlu.cypher`.

---

## 🚀 Cómo ejecutar

1. Instala Neo4j (Desktop o Docker).
2. Abre Neo4j Browser y carga el contenido de `unlu.cypher`.
3. Ejecuta todo el script.
4. Explora el grafo con las consultas de ejemplo incluidas.

---

## 📝 Licencia

Este proyecto está publicado bajo la [MIT License](LICENSE).

