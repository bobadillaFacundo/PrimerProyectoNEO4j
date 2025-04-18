// ================================================
// Archivo: plan_estudios_unlu.cypher
// Descripción: Creación de nodos Carrera, Materia y relaciones OFRECE y DEPENDE_DE
// para los planes de estudio de la UNLu.
// Fecha: 2025-04-17
// ================================================
// ----------------------------------------
// Carrera: Ingeniería Agronómica
// Plan de Estudio 02.08 (Plan vigente)
// ----------------------------------------
MERGE (c:Carrera {nombre: 'Ingeniería Agronómica'})
WITH c
UNWIND [
       // Materias
       {codigo: '20038',
        nombre: 'Est. de la Const. Nacional y los Derechos Humanos', cuatri: 0,
        horasSem: 4, prereqs: []}, {codigo: '20249', nombre: 'Epistemología',
                                    cuatri: 0, horasSem: 3, prereqs: []},
       {codigo: '31971', nombre: 'Inglés I', cuatri: 0, horasSem: 4,
        prereqs: []}, {codigo: '40004', nombre: 'Taller de Agronomía',
                       cuatri: 1, horasSem: 3, prereqs: []},
       {codigo: '11016', nombre: 'Ecología', cuatri: 1, horasSem: 8,
        prereqs: []}, {codigo: '10069', nombre: 'Elementos de Matemática',
                       cuatri: 1, horasSem: 9, prereqs: []},
       {codigo: '10015', nombre: 'Elementos de Química', cuatri: 1, horasSem: 4,
        prereqs: []},
       {codigo: '40060', nombre: 'Introducción al Estudio del Agrosistema',
        cuatri: 2, horasSem: 6, prereqs: ['40004']},
       {codigo: '10018', nombre: 'Matemática General', cuatri: 2, horasSem: 8,
        prereqs: ['10069']}, {codigo: '10103', nombre: 'Química I', cuatri: 2,
                              horasSem: 6, prereqs: ['10069', '10015']},
       {codigo: '10104', nombre: 'Química II', cuatri: 3, horasSem: 8,
        prereqs: ['10103']}, {codigo: '12931', nombre: 'Física', cuatri: 3,
                              horasSem: 7, prereqs: ['10018']},
       {codigo: '10151', nombre: 'Computación', cuatri: 3, horasSem: 3,
        prereqs: ['10018']}, {codigo: '22091', nombre: 'Sociología Agraria',
                              cuatri: 3, horasSem: 3, prereqs: ['40060']},
       {codigo: '10106', nombre: 'Botánica (anual)', cuatri: 3, horasSem: 6,
        prereqs: ['11016']}, {codigo: '10074', nombre: 'Estadística', cuatri: 4,
                              horasSem: 6, prereqs: ['10018', '10151']},
       {codigo: '10105', nombre: 'Química III', cuatri: 4, horasSem: 8,
        prereqs: ['10104', '12931']},
       {codigo: '22977', nombre: 'Introducción a la Economía', cuatri: 4,
        horasSem: 4, prereqs: ['10018']},
       {codigo: '40061',
        nombre: 'Elementos de Diagnóstico de Recursos Naturales', cuatri: 4,
        horasSem: 3, prereqs: ['12931', '40060']},
       {codigo: '40063', nombre: 'Meteorología Agrícola', cuatri: 5,
        horasSem: 6, prereqs: ['10074', '40061']},
       {codigo: '10110', nombre: 'Microbiología Agrícola', cuatri: 5,
        horasSem: 5, prereqs: ['10105']},
       {codigo: '10080', nombre: 'Fisiología Vegetal', cuatri: 5, horasSem: 8,
        prereqs: ['10106', '10105']},
       {codigo: '42092', nombre: 'Zoología Agrícola', cuatri: 5, horasSem: 6,
        prereqs: ['10106', '10105']},
       {codigo: '10083', nombre: 'Anatomía y Fisiología Animal', cuatri: 6,
        horasSem: 5, prereqs: ['10110']},
       {codigo: '40009', nombre: 'Edafología', cuatri: 6, horasSem: 6,
        prereqs: ['10110', '40063']},
       {codigo: '22116', nombre: 'Economía Agraria', cuatri: 6, horasSem: 4,
        prereqs: ['22091', '22977']},
       {codigo: '40062', nombre: 'Genética y Mejoramiento', cuatri: 6,
        horasSem: 8, prereqs: ['10074', '10080']},
       {codigo: '42093', nombre: 'Nutrición Animal', cuatri: 7, horasSem: 4,
        prereqs: ['10083']},
       {codigo: '42068', nombre: 'Producción Vegetal I (anual)', cuatri: 7,
        horasSem: 5, prereqs: ['42092', '40009', '40062']},
       {codigo: '40003', nombre: 'Maquinaria Agrícola', cuatri: 7, horasSem: 6,
        prereqs: ['40009']},
       {codigo: '40006', nombre: 'Conservación del Sistema', cuatri: 7,
        horasSem: 6, prereqs: ['40009']},
       {codigo: '42094', nombre: 'Producción y Utilización de Pasturas',
        cuatri: 7, horasSem: 4, prereqs: ['40009', '10083', '40062']},
       {codigo: '42067',
        nombre: 'Producción Animal I (bovinos para carne y leche)', cuatri: 8,
        horasSem: 8, prereqs: ['42093', '42094']},
       {codigo: '42097', nombre: 'Fitopatología', cuatri: 8, horasSem: 5,
        prereqs: ['10110', '10080']},
       {codigo: '40089', nombre: 'Manejo del Sistema Agropecuario', cuatri: 8,
        horasSem: 6, prereqs: ['40003', '40006']},
       {codigo: '42095', nombre: 'Extensión Agraria', cuatri: 9, horasSem: 3,
        prereqs: ['22116', '40089']},
       {codigo: '40072', nombre: 'Producción Vegetal II (Fruticultura)',
        cuatri: 9, horasSem: 4, prereqs: ['40089', '40062', '42097', '22116']},
       {codigo: '40070', nombre: 'Producción Animal II (Porcinos)', cuatri: 9,
        horasSem: 4, prereqs: ['42093', '22116', '40062']},
       {codigo: '42090',
        nombre: 'Planificación del Sistema Agropecuario (anual)', cuatri: 9,
        horasSem: 4, prereqs: ['22116', '42067', '42068', '40089']},
       {codigo: '40076', nombre: 'Riego y Drenaje', cuatri: 9, horasSem: 4,
        prereqs: ['40006']},
       {codigo: '42096', nombre: 'Protección Vegetal', cuatri: 10, horasSem: 6,
        prereqs: ['42068', '40072']},
       {codigo: '40077', nombre: 'Producción Animal III (Aves)', cuatri: 10,
        horasSem: 4, prereqs: ['42093', '22116', '40062']},
       {codigo: '40079', nombre: 'Producción Vegetal III (Horticultura)',
        cuatri: 10, horasSem: 4, prereqs: ['40089', '40062', '42097']},
       {codigo: '40080v', nombre: 'Producción Vegetal IV (Dasonomía)',
        cuatri: 10, horasSem: 4, prereqs: ['40089', '40062', '42097']},
       {codigo: '40081', nombre: 'Trabajo Final de Aplicación', cuatri: 10,
        horasSem: 0, prereqs: []}] AS row
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);
// ================================================
// Carrera: Ingeniería en Alimentos
// Plan de Estudio 01.10 de la UNLu
// ================================================
MERGE (c:Carrera {nombre: 'Ingeniería en Alimentos'})
WITH c
UNWIND [{codigo: '13017', nombre: 'Introducción a la Química',
         cuatri: 1, horasSem: 4, prereqs: []},
        {codigo: '13014', nombre: 'Matemática Básica',
         cuatri: 1, horasSem: 6, prereqs: []},
        {codigo: '43002', nombre: 'Introducción a la Ingeniería en Alimentos',
         cuatri: 1, horasSem: 3, prereqs: []},
        {codigo: '43010', nombre: 'Taller Integrador I (Anual)', cuatri: 1,
         horasSem: 1, prereqs: []},
        {codigo: '13933', nombre: 'Química General e Inorgánica',
         cuatri: 2, horasSem: 8, prereqs: ['13017']},
        {codigo: '13022', nombre: 'Análisis Matemático I', cuatri: 2,
         horasSem: 8, prereqs: ['13014']},
        {codigo: '13021', nombre: 'Álgebra Lineal y Geometría', cuatri: 2,
         horasSem: 6, prereqs: ['13014']},
        {codigo: '13906', nombre: 'Química Orgánica', cuatri: 3, horasSem: 7,
         prereqs: ['13933']}, {codigo: '13908', nombre: 'Física I', cuatri: 3,
                               horasSem: 6, prereqs: ['13022']},
        {codigo: '13923', nombre: 'Análisis Matemático II', cuatri: 3,
         horasSem: 8, prereqs: ['13022']},
        {codigo: '25380', nombre: 'Principios de Economía',
         cuatri: 3, horasSem: 4, prereqs: ['43002']},
        {codigo: '13904', nombre: 'Química Analítica', cuatri: 4,
         horasSem: 6, prereqs: ['13933']},
        {codigo: '13010', nombre: 'Química Orgánica de Alimentos', cuatri: 4,
         horasSem: 6, prereqs: ['13906']},
        {codigo: '43035', nombre: 'Termodinámica', cuatri: 4, horasSem: 6,
         prereqs: ['13908']}, {codigo: '13909', nombre: 'Física II', cuatri: 4,
                               horasSem: 6, prereqs: ['13022']},
        {codigo: '43044', nombre: 'Organización Industrial',
         cuatri: 4, horasSem: 4, prereqs: ['25380']},
        {codigo: '13005', nombre: 'Técnicas de Análisis Instrumental',
         cuatri: 5, horasSem: 6, prereqs: ['13904']},
        {codigo: '13963', nombre: 'Química Biológica', cuatri: 5, horasSem: 6,
         prereqs: ['13012', '13010']},
        {codigo: '43938', nombre: 'Fenómenos de Transporte', cuatri: 5,
         horasSem: 4, prereqs: ['13923', '43035']},
        {codigo: '43936', nombre: 'Fisicoquímica', cuatri: 5, horasSem: 4,
         prereqs: ['13933', '43035']},
        {codigo: '13974', nombre: 'Estadística', cuatri: 5, horasSem: 6,
         prereqs: ['13021']},
        {codigo: '13011', nombre: 'Taller Integrador II (Anual)', cuatri: 5,
         horasSem: 1, prereqs: ['13904', '43010', '43044']},
        {codigo: '13907', nombre: 'Microbiología General', cuatri: 6,
         horasSem: 6, prereqs: ['13963']},
        {codigo: '43942', nombre: 'Nutrición', cuatri: 6, horasSem: 5,
         prereqs: ['13963', '13974']},
        {codigo: '43940', nombre: 'Operaciones Unitarias I', cuatri: 6,
         horasSem: 6, prereqs: ['43938']},
        {codigo: '13801', nombre: 'Programación y Métodos Numéricos', cuatri: 6,
         horasSem: 4, prereqs: ['13021', '19054']},
        {codigo: '23955', nombre: 'Legislación Alimentaria y Ética Profesional',
         cuatri: 6, horasSem: 4, prereqs: ['10 asignaturas aprobadas']},
        {codigo: '43943', nombre: 'Microbiología Industrial de Alimentos',
         cuatri: 7, horasSem: 8, prereqs: ['13907', '23955']},
        {codigo: '43954', nombre: 'Análisis Sensorial', cuatri: 7, horasSem: 4,
         prereqs: ['43942']},
        {codigo: '43945', nombre: 'Bromatología I', cuatri: 7, horasSem: 6,
         prereqs: ['43942', '23955']},
        {codigo: '43941', nombre: 'Operaciones Unitarias II', cuatri: 7,
         horasSem: 6, prereqs: ['43940']},
        {codigo: '43047', nombre: 'Instalaciones y Servicios Industriales',
         cuatri: 7, horasSem: 6, prereqs: ['43035']},
        {codigo: '43012', nombre: 'Taller Integrador III (Anual)', cuatri: 7,
         horasSem: 1, prereqs: ['13011', '13907', '43942']},
        {codigo: '43956', nombre: 'Toxicología de Alimentos', cuatri: 8,
         horasSem: 4, prereqs: ['43945']},
        {codigo: '43946', nombre: 'Bromatología II', cuatri: 8, horasSem: 6,
         prereqs: ['43945']},
        {codigo: '43042', nombre: 'Procesos Industriales', cuatri: 8,
         horasSem: 8, prereqs: ['43943', '43945', '43941']},
        {codigo: '43817', nombre: 'Planeamiento y control de recursos',
         cuatri: 8, horasSem: 4, prereqs: ['43044', '13974']},
        {codigo: '43818',
         nombre: 'Gestión de la Calidad en Procesos Productivos', cuatri: 8,
         horasSem: 4, prereqs: ['13011', '23955']},
        {codigo: '43952', nombre: 'Instrumental para el Control de Procesos',
         cuatri: 8, horasSem: 4, prereqs: ['43047', '13801']},
        {codigo: '43950', nombre: 'Saneamiento', cuatri: 9, horasSem: 4,
         prereqs: ['43943', '43042']},
        {codigo: '43102',
         nombre: 'Gestión de la Calidad en la Industria de Alimentos',
         cuatri: 9, horasSem: 4, prereqs: ['43818']},
        {codigo: '43244', nombre: 'Proyectos de Ingeniería (Anual)', cuatri: 9,
         horasSem: 3, prereqs: ['43012', '43934']},
        {codigo: '43103', nombre: 'Investigación y Desarrollo en Alimentos',
         cuatri: 10, horasSem: 4, prereqs: ['43042', '43956', '43818']},
        {codigo: '43820', nombre: 'Gestión Ambiental', cuatri: 10, horasSem: 2,
         prereqs: ['43950']},
        {codigo: '43955', nombre: 'Optimización de Procesos', cuatri: 10,
         horasSem: 4, prereqs: ['43042']}] AS row
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);
// ================================================
// Carrera: Ingeniería Industrial
// Plan de Estudio 25.09 de la UNLu
// ================================================
MERGE (c:Carrera {nombre: 'Ingeniería Industrial'})
WITH c
UNWIND [{codigo: '13014', nombre: 'Matemática Básica', cuatri: 1, horasSem: 6,
         prereqs: []}, {codigo: '13017', nombre: 'Introducción a la Química',
                        cuatri: 1, horasSem: 4, prereqs: []},
        {codigo: '43801', nombre: 'Introducción a la Ingeniería', cuatri: 1,
         horasSem: 4, prereqs: []},
        {codigo: '13021', nombre: 'Álgebra Lineal y Geometría', cuatri: 2,
         horasSem: 6, prereqs: ['13014']},
        {codigo: '13022', nombre: 'Análisis Matemático I', cuatri: 2,
         horasSem: 8, prereqs: ['13014']},
        {codigo: '13933', nombre: 'Química General e Inorgánica', cuatri: 2,
         horasSem: 8, prereqs: ['13017']},
        {codigo: '43816', nombre: 'Organización Industrial I',
         cuatri: 2, horasSem: 4, prereqs: ['43801']},
        {codigo: '19054', nombre: 'Competencias Básicas en Informática',
         cuatri: 2, horasSem: 0, prereqs: []},
        {codigo: '13908', nombre: 'Física I',
         cuatri: 3, horasSem: 6, prereqs: ['13022']},
        {codigo: '13923', nombre: 'Análisis Matemático II', cuatri: 3,
         horasSem: 8, prereqs: ['13022']},
        {codigo: '13857', nombre: 'Sistemas de Información', cuatri: 3,
         horasSem: 4, prereqs: ['43816']},
        {codigo: '13192', nombre: 'Química Industrial',
         cuatri: 3, horasSem: 4, prereqs: ['13933']},
        {codigo: '43034', nombre: 'Dibujo Técnico', cuatri: 3, horasSem: 4,
         prereqs: ['13021', '13014']},
        {codigo: '13909', nombre: 'Física II', cuatri: 4, horasSem: 6,
         prereqs: ['13022']},
        {codigo: '13024', nombre: 'Análisis Matemático III', cuatri: 4,
         horasSem: 6, prereqs: ['13923', '13022', '13021']},
        {codigo: '43106', nombre: 'Estabilidad', cuatri: 4,
         horasSem: 6, prereqs: ['13908', '13923']},
        {codigo: '43845', nombre: 'Organización Industrial II', cuatri: 4,
         horasSem: 4, prereqs: ['43816', '43801']},
        {codigo: '13974', nombre: 'Estadística', cuatri: 4, horasSem: 6,
         prereqs: ['13021', '13014']},
        {codigo: '43135', nombre: 'Termodinámica', cuatri: 5, horasSem: 6,
         prereqs: ['13908', '43801', '13933']},
        {codigo: '43108', nombre: 'Mecánica de los Fluidos', cuatri: 5,
         horasSem: 6, prereqs: ['13908', '13923', '13021']},
        {codigo: '43138', nombre: 'Estudio de Fuentes de Energía', cuatri: 5,
         horasSem: 4, prereqs: ['13908', '13192', '13909']},
        {codigo: '25380', nombre: 'Principios de Economía', cuatri: 5,
         horasSem: 4, prereqs: ['13974', '43845', '43816']},
        {codigo: '43140', nombre: 'Ciencia de los Materiales', cuatri: 5,
         horasSem: 4, prereqs: ['43106', '13192', '13933']},
        {codigo: '39553', nombre: 'Competencias Básicas en Inglés', cuatri: 5,
         horasSem: 0, prereqs: []},
        {codigo: '43116', nombre: 'Instalaciones Térmicas', cuatri: 6,
         horasSem: 4, prereqs: ['43108', '43135']},
        {codigo: '43813', nombre: 'Instalaciones Neumáticas e Hidráulicas',
         cuatri: 6, horasSem: 3, prereqs: ['43108', '43135']},
        {codigo: '25381', nombre: 'Introducción a la Economía Argentina',
         cuatri: 6, horasSem: 4, prereqs: ['25380']},
        {codigo: '43802', nombre: 'Diseño de Métodos y Control de Tiempos',
         cuatri: 6, horasSem: 3, prereqs: ['43845', '13974', '43816']},
        {codigo: '13801', nombre: 'Programación y Métodos Numéricos', cuatri: 6,
         horasSem: 4, prereqs: ['13923', '13021', '13022']},
        {codigo: '43959', nombre: 'Electrotecnia', cuatri: 6, horasSem: 6,
         prereqs: ['13909', '13908', '13021']},
        {codigo: '40084', nombre: 'Prácticas Profesionales Supervisadas',
         cuatri: 6, horasSem: 0, prereqs: []},
        {codigo: '43152', nombre: 'Instrumentación y Control', cuatri: 7,
         horasSem: 6, prereqs: ['43959', '13024']},
        {codigo: '43804', nombre: 'Máquinas e Instalaciones Eléctricas',
         cuatri: 7, horasSem: 6, prereqs: ['43959', '13909']},
        {codigo: '43110', nombre: 'Tecnología y Resistencia de los Materiales',
         cuatri: 7, horasSem: 6, prereqs: ['43140', '13192', '43106']},
        {codigo: '43142', nombre: 'Procesos Industriales', cuatri: 7,
         horasSem: 4, prereqs: ['43140', '43845']},
        {codigo: '43114', nombre: 'Investigación Operativa', cuatri: 7,
         horasSem: 4, prereqs: ['13801', '13974', '43802', '13857']},
        {codigo: '43960', nombre: 'Programación y Control de la Producción',
         cuatri: 8, horasSem: 3, prereqs: ['43142']},
        {codigo: '43817', nombre: 'Planeamiento y Control de Recursos',
         cuatri: 8, horasSem: 4, prereqs: ['43114', '43802']},
        {codigo: '43145', nombre: 'Seguridad Ambiental e Industrial', cuatri: 8,
         horasSem: 4, prereqs: ['43142', '13192']},
        {codigo: '43818', nombre: 'Gestión de la Calidad en Procesos',
         cuatri: 8, horasSem: 4, prereqs: ['43142', '13974']},
        {codigo: '43112', nombre: 'Máquinas y Generación Térmica', cuatri: 8,
         horasSem: 6, prereqs: ['43804', '43116', '43135']},
        {codigo: '43803', nombre: 'Mecánica y Mecanismos', cuatri: 8,
         horasSem: 4, prereqs: ['43110', '43140']},
        {codigo: '43819', nombre: 'Logística Industrial', cuatri: 9,
         horasSem: 4, prereqs: ['43114', '43960']},
        {codigo: '43244', nombre: 'Proyectos de Ingeniería', cuatri: 9,
         horasSem: 3, prereqs: ['43960', '43817']},
        {codigo: '23224', nombre: 'Costos', cuatri: 9, horasSem: 3,
         prereqs: ['25381', '43960', '25380']},
        {codigo: '23225', nombre: 'Finanzas', cuatri: 9, horasSem: 3,
         prereqs: ['25381', '43960', '25380']},
        {codigo: '23223', nombre: 'Legislación Industrial', cuatri: 9,
         horasSem: 4, prereqs: ['43145', '25381']},
        {codigo: '25382', nombre: 'Gestión de Recursos Humanos', cuatri: 9,
         horasSem: 4, prereqs: ['43960', '43817']},
        {codigo: '43244c', nombre: 'Proyectos de Ingeniería (cont.)',
         cuatri: 10, horasSem: 3, prereqs: ['43960', '43817']},
        {codigo: '43820', nombre: 'Gestión Ambiental', cuatri: 10, horasSem: 2,
         prereqs: ['43145', '43818']},
        {codigo: 'OPT1', nombre: 'Optativa Gestión I', cuatri: 10, horasSem: 4,
         prereqs: []}, {codigo: 'OPT2', nombre: 'Optativa Gestión II',
                        cuatri: 10, horasSem: 4, prereqs: []},
        {codigo: 'OPT3', nombre: 'Optativa Tecnología I',
         cuatri: 10, horasSem: 4, prereqs: []},
        {codigo: 'OPT4', nombre: 'Optativa Tecnología II', cuatri: 10,
         horasSem: 4, prereqs: []}] AS row
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);
// ================================================
// Carrera: Licenciatura en Sistemas de Información
// Plan de Estudios 17.14 de la UNLu
// ================================================
MERGE (c:Carrera {nombre: 'Licenciatura en Sistemas de Información'})
WITH c
UNWIND [{codigo: '19054', nombre: 'Competencias Básicas en Informática',
         cuatri: 0, horasSem: 0, prereqs: []},
        {codigo: '39553', nombre: 'Competencias Básicas en Idioma Inglés',
         cuatri: 0, horasSem: 0, prereqs: []},
        {codigo: '14026',
         nombre: 'Taller Introductorio de Interpretación de Problemas',
         cuatri: 0, horasSem: 8, prereqs: []},
        {codigo: '11271', nombre: 'Introducción a la Programación',
         cuatri: 1, horasSem: 6, prereqs: []},
        {codigo: '13014', nombre: 'Matemática Básica', cuatri: 1,
         horasSem: 6, prereqs: []},
        {codigo: '21256', nombre: 'Introducción a los Sistemas de Información',
         cuatri: 1, horasSem: 6, prereqs: []},
        {codigo: '11274', nombre: 'Programación Estructurada', cuatri: 2,
         horasSem: 6, prereqs: ['11271']},
        {codigo: '11256', nombre: 'Sistemas de Información I', cuatri: 2,
         horasSem: 6, prereqs: ['21256']},
        {codigo: '41407', nombre: 'Organización de Computadoras', cuatri: 2,
         horasSem: 4, prereqs: ['13014']},
        {codigo: '13021', nombre: 'Álgebra Lineal y Geometría', cuatri: 2,
         horasSem: 6, prereqs: ['13014']},
        {codigo: '11275', nombre: 'Estructuras de Datos y Algoritmos I',
         cuatri: 3, horasSem: 4, prereqs: ['11274', '13014']},
        {codigo: '11258', nombre: 'Sistemas de Información II',
         cuatri: 3, horasSem: 4, prereqs: ['11256']},
        {codigo: '13022', nombre: 'Análisis Matemático I', cuatri: 3,
         horasSem: 8, prereqs: ['13014']},
        {codigo: '41426', nombre: 'Arquitectura de Computadoras', cuatri: 3,
         horasSem: 6, prereqs: ['41407', '11271']},
        {codigo: '11276', nombre: 'Programación Orientada a Objetos', cuatri: 4,
         horasSem: 4, prereqs: ['11275']},
        {codigo: '13923', nombre: 'Análisis Matemático II', cuatri: 4,
         horasSem: 8, prereqs: ['13022']},
        {codigo: '11259', nombre: 'Sistemas de Información III', cuatri: 4,
         horasSem: 4, prereqs: ['11258']},
        {codigo: '11410', nombre: 'Sistemas Operativos', cuatri: 4, horasSem: 6,
         prereqs: ['41426', '11274']},
        {codigo: '11083', nombre: 'Estadística y Probabilidad', cuatri: 5,
         horasSem: 6, prereqs: ['13022']},
        {codigo: '14027', nombre: 'Fundamentos de Redes de Datos', cuatri: 5,
         horasSem: 4, prereqs: ['11410']},
        {codigo: '11286', nombre: 'Programación en Ambiente Web', cuatri: 5,
         horasSem: 6, prereqs: ['11276', '11410']},
        {codigo: '11277', nombre: 'Bases de Datos Relacionales', cuatri: 5,
         horasSem: 6, prereqs: ['11256', '11275', '11410']},
        {codigo: '21279', nombre: 'Gestión de Soluciones Innovadoras',
         cuatri: 6, horasSem: 3, prereqs: ['11258']},
        {codigo: '11287', nombre: 'Seminario de Integración Profesional',
         cuatri: 6, horasSem: 6, prereqs: ['11259', '11277', '11286']},
        {codigo: '11278', nombre: 'Bases de Datos Distribuidas', cuatri: 6,
         horasSem: 6, prereqs: ['14027', '11277']},
        {codigo: '14028', nombre: 'Matemática Computacional', cuatri: 6,
         horasSem: 4, prereqs: ['13923', '11083']},
        {codigo: '14029', nombre: 'Administración de Redes', cuatri: 7,
         horasSem: 4, prereqs: ['14027', '14028']},
        {codigo: '14030', nombre: 'Estructuras de Datos y Algoritmos II',
         cuatri: 7, horasSem: 4, prereqs: ['11275', '14028']},
        {codigo: '14031', nombre: 'Teoría de la Computación', cuatri: 7,
         horasSem: 6, prereqs: ['14028', '11275']},
        {codigo: '11260', nombre: 'Sistemas de Información IV', cuatri: 7,
         horasSem: 4, prereqs: ['11259']},
        {codigo: '11288', nombre: 'Gestión de Datos Masivos', cuatri: 8,
         horasSem: 4, prereqs: ['11278', '14027', '11083']},
        {codigo: '14032', nombre: 'Diseño Avanzado de Software', cuatri: 8,
         horasSem: 4, prereqs: ['14030', '11277']},
        {codigo: '41429',
         nombre: 'Sistemas Distribuidos y Programación Paralela', cuatri: 8,
         horasSem: 6, prereqs: ['14029', '11286']},
        {codigo: '14034', nombre: 'Modelos de Decisión y Optimización',
         cuatri: 8, horasSem: 4, prereqs: ['14028', '14030']},
        {codigo: '11292', nombre: 'Seguridad Informática', cuatri: 9,
         horasSem: 4, prereqs: ['14029', '11260']},
        {codigo: '11289', nombre: 'Inteligencia Artificial', cuatri: 9,
         horasSem: 6, prereqs: ['13021', '11083', '14030']},
        {codigo: '14033', nombre: 'Bases de Datos Textuales', cuatri: 9,
         horasSem: 4, prereqs: ['11288']},
        {codigo: '21258', nombre: 'Gestión de Proyectos', cuatri: 10,
         horasSem: 4, prereqs: ['21279']},
        {codigo: '21257', nombre: 'Aspectos Profesionales y Sociales',
         cuatri: 10, horasSem: 3, prereqs: ['21279']},
        {codigo: '11091', nombre: 'Taller de Tesina (IX cuatri regular)',
         cuatri: 9, horasSem: 4, prereqs: []}] AS row
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);
// ================================================
// Carrera: Licenciatura en Administración
// Plan de Estudios 03.09 de la UNLu
// ================================================
MERGE (c:Carrera {nombre: 'Licenciatura en Administración'})
WITH c
UNWIND [{codigo: '21010', nombre: 'Taller de Lectura y Comprensión de Textos',
         cuatri: 0, horasSem: 6, prereqs: []},
        {codigo: '11010',
         nombre: 'Taller de Análisis y Resolución de Problemas', cuatri: 0,
         horasSem: 6, prereqs: []},
        {codigo: '20011', nombre: 'Análisis Socioeconómico', cuatri: 1,
         horasSem: 4, prereqs: []},
        {codigo: '20102', nombre: 'Introducción a la Administración',
         cuatri: 1, horasSem: 4, prereqs: []},
        {codigo: '10300', nombre: 'Elementos de Matemática', cuatri: 1,
         horasSem: 6, prereqs: []},
        {codigo: '20379', nombre: 'Administración General', cuatri: 2,
         horasSem: 6, prereqs: ['11010', '21010', '20102']},
        {codigo: '10025', nombre: 'Matemática I', cuatri: 2, horasSem: 6,
         prereqs: ['11010', '21010', '10300']},
        {codigo: '20063', nombre: 'Derecho I', cuatri: 2, horasSem: 4,
         prereqs: ['11010', '21010', '20102']},
        {codigo: '20038',
         nombre: 'Estudio de la Const. Nac. y los Derechos Humanos', cuatri: 2,
         horasSem: 4, prereqs: []},
        {codigo: '20138', nombre: 'Contabilidad I', cuatri: 3,
         horasSem: 6, prereqs: ['20102', '10300']},
        {codigo: '20067', nombre: 'Economía I', cuatri: 3, horasSem: 6,
         prereqs: ['20011', '20379']},
        {codigo: '20057', nombre: 'Metodología de la Investigación', cuatri: 3,
         horasSem: 6, prereqs: ['20379']},
        {codigo: '20064', nombre: 'Derecho II', cuatri: 3, horasSem: 4,
         prereqs: ['20063']},
        {codigo: '21138', nombre: 'Contabilidad Gerencial', cuatri: 4,
         horasSem: 6, prereqs: ['20138', '20379']},
        {codigo: '10026', nombre: 'Matemática II', cuatri: 4, horasSem: 6,
         prereqs: ['10025']}, {codigo: '20049', nombre: 'Derecho III',
                               cuatri: 4, horasSem: 4, prereqs: ['20064']},
        {codigo: '21046', nombre: 'Costos para Toma de Decisiones', cuatri: 5,
         horasSem: 6, prereqs: ['21138']},
        {codigo: '20139', nombre: 'Sistemas Administrativos', cuatri: 5,
         horasSem: 6, prereqs: ['20379', '20138']},
        {codigo: '20047', nombre: 'Bancos y Seguros', cuatri: 5, horasSem: 6,
         prereqs: ['20379', '20138']},
        {codigo: '20068', nombre: 'Economía II', cuatri: 6, horasSem: 6,
         prereqs: ['20067', '10026']},
        {codigo: '10027', nombre: 'Matemática Financiera', cuatri: 6,
         horasSem: 4, prereqs: ['10026']},
        {codigo: '20051', nombre: 'Geografía Económica y Recursos Regionales',
         cuatri: 6, horasSem: 6, prereqs: ['20067']},
        {codigo: '10091', nombre: 'Estadística', cuatri: 7, horasSem: 6,
         prereqs: ['10026']}, {codigo: '21140', nombre: 'Marketing', cuatri: 7,
                               horasSem: 6, prereqs: ['21046', '20068']},
        {codigo: '20155', nombre: 'Administración de Personal', cuatri: 7,
         horasSem: 6, prereqs: ['20379', '20049']},
        {codigo: '20058', nombre: 'Administración Económico-Financiera',
         cuatri: 8, horasSem: 6, prereqs: ['10027', '21046']},
        {codigo: '20156', nombre: 'Administración de las Operaciones',
         cuatri: 8, horasSem: 6, prereqs: ['10091', '21046']},
        {codigo: '21141', nombre: 'Seminario Formación Emprendedora',
         cuatri: 8, horasSem: 6, prereqs: ['21140']},
        {codigo: '20262', nombre: 'Análisis Organizacional', cuatri: 9,
         horasSem: 6, prereqs: ['20155', '21141']},
        {codigo: '20039', nombre: 'Informática Empresarial', cuatri: 9,
         horasSem: 6, prereqs: ['20156']},
        {codigo: '20059', nombre: 'Evaluación y Administración de Proyectos',
         cuatri: 9, horasSem: 6, prereqs: ['20058', '21141']},
        {codigo: '20264', nombre: 'Administración Integrativa', cuatri: 10,
         horasSem: 6, prereqs: ['20262']},
        {codigo: '20263', nombre: 'Dirección General', cuatri: 10, horasSem: 4,
         prereqs: ['20059']},
        {codigo: '21142',
         nombre: 'Taller de Práctica Profesional Licenciado en Administración',
         cuatri: 10, horasSem: 6, prereqs: ['20059', '20039']}] AS row
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);
// ================================================
// Carrera: Contador Público
// Plan de Estudio 54.02 de la UNLu
// ================================================
MERGE (c:Carrera {nombre: 'Contador Público'})
WITH c
UNWIND [{codigo: '21010', nombre: 'Taller de Lectura y Comprensión de Textos',
         cuatri: 0, horasSem: 12, prereqs: []},
        {codigo: '39540', nombre: 'Competencias Básicas en Idioma', cuatri: 0,
         horasSem: 0, prereqs: ['24202']},
        {codigo: '19054', nombre: 'Competencias Básicas en Informática',
         cuatri: 0, horasSem: 0, prereqs: ['10025']},
        {codigo: '24201', nombre: 'Introducción a la Contabilidad', cuatri: 1,
         horasSem: 4, prereqs: []},
        {codigo: '14025', nombre: 'Introducción a la Matemática',
         cuatri: 1, horasSem: 4, prereqs: []},
        {codigo: '20102', nombre: 'Introducción a la Administración', cuatri: 1,
         horasSem: 4, prereqs: []},
        {codigo: '20011', nombre: 'Análisis Socioeconómico', cuatri: 1,
         horasSem: 4, prereqs: []},
        {codigo: '24202', nombre: 'Contabilidad Básica', cuatri: 2, horasSem: 6,
         prereqs: ['24201']}, {codigo: '24203', nombre: 'Administración',
                               cuatri: 2, horasSem: 4, prereqs: ['20102']},
        {codigo: '24204', nombre: 'Derecho Privado', cuatri: 2, horasSem: 4,
         prereqs: []},
        {codigo: '20038',
         nombre: 'Estudio de la Const. Nac. y los Derechos Humanos', cuatri: 2,
         horasSem: 4, prereqs: []},
        {codigo: '24205', nombre: 'Contabilidad Intermedia', cuatri: 3,
         horasSem: 6, prereqs: ['24202']},
        {codigo: '10025', nombre: 'Matemática I', cuatri: 3, horasSem: 6,
         prereqs: ['14025']},
        {codigo: '24206', nombre: 'Metodología de la Investigación', cuatri: 3,
         horasSem: 4, prereqs: ['21010', '24203']},
        {codigo: '24207', nombre: 'Derecho Comercial', cuatri: 3, horasSem: 4,
         prereqs: ['24204']},
        {codigo: '20054', nombre: 'Análisis de Estados Contables', cuatri: 4,
         horasSem: 6, prereqs: ['24205']},
        {codigo: '10026',
         nombre: 'Matemática II', cuatri: 4, horasSem: 6, prereqs: ['10025']},
        {codigo: '24208', nombre: 'Entidades Financieras y de Seguros',
         cuatri: 4, horasSem: 6, prereqs: ['24205', '24203']},
        {codigo: '24209', nombre: 'Derecho Administrativo', cuatri: 4,
         horasSem: 4, prereqs: ['20038', '24207']},
        {codigo: '24210', nombre: 'Contabilidad de Costos', cuatri: 5,
         horasSem: 4, prereqs: ['24205']},
        {codigo: '10091', nombre: 'Estadística', cuatri: 5, horasSem: 6,
         prereqs: ['10026']}, {codigo: '20067', nombre: 'Economía I', cuatri: 5,
                               horasSem: 6, prereqs: ['20011', '24203']},
        {codigo: '10027', nombre: 'Matemática Financiera', cuatri: 5,
         horasSem: 4, prereqs: ['10026']},
        {codigo: '24211', nombre: 'Derecho del Trabajo', cuatri: 5, horasSem: 4,
         prereqs: ['24209']}, {codigo: '24212', nombre: 'Costos de Gestión',
                               cuatri: 6, horasSem: 4, prereqs: ['24210']},
        {codigo: '20068', nombre: 'Economía II', cuatri: 6, horasSem: 6,
         prereqs: ['10091', '20067']},
        {codigo: '24213', nombre: 'Administración de Recursos Humanos',
         cuatri: 6, horasSem: 4, prereqs: ['24203', '24211']},
        {codigo: '24214', nombre: 'Fundamentos de Marketing', cuatri: 6,
         horasSem: 4, prereqs: ['20067', '24210']},
        {codigo: '24215', nombre: 'Gestión de las Operaciones', cuatri: 6,
         horasSem: 4, prereqs: ['10091']},
        {codigo: '24216', nombre: 'Taller de Práctica Laboral', cuatri: 6,
         horasSem: 4, prereqs: ['24203', '24211']},
        {codigo: '21239', nombre: 'Contabilidad Superior', cuatri: 7,
         horasSem: 6, prereqs: ['20054', '24208', '39540', '19054']},
        {codigo: '20058',
         nombre: 'Administración Económico Financiera', cuatri: 7, horasSem: 6,
         prereqs: ['10027', '24212', '24215', '39540', '19054']},
        {codigo: '24217', nombre: 'Derecho Societario y Concursal', cuatri: 7,
         horasSem: 6, prereqs: ['20054', '24211', '39540', '19054']},
        {codigo: '24218', nombre: 'Tributación I', cuatri: 7, horasSem: 6,
         prereqs: ['20054', '24209', '24212', '39540', '19054']},
        {codigo: '20120', nombre: 'Auditoría I', cuatri: 8, horasSem: 6,
         prereqs: ['21239']},
        {codigo: '24219', nombre: 'Cooperativas, Mutuales y ONG', cuatri: 8,
         horasSem: 4, prereqs: ['20054', '24217']},
        {codigo: '24220', nombre: 'Taller de Sistemas de Gestión Contable',
         cuatri: 8, horasSem: 4, prereqs: ['20054', '24217']},
        {codigo: '24221', nombre: 'Tributación II', cuatri: 8, horasSem: 6,
         prereqs: ['24218']}, {codigo: '20121', nombre: 'Auditoría II',
                               cuatri: 9, horasSem: 6, prereqs: ['20120']},
        {codigo: '24222', nombre: 'Tributación III', cuatri: 9, horasSem: 6,
         prereqs: ['24221']},
        {codigo: '21145',
         nombre: 'Taller de Práctica Profesional Contador Público (Anual)',
         cuatri: 9, horasSem: 4,
         prereqs: ['21239', '20120', '24219', '24221', '24217']},
        {codigo: '20035', nombre: 'Contabilidad Pública', cuatri: 10,
         horasSem: 6, prereqs: ['21239', '24209']},
        {codigo: '24223', nombre: 'Taller de Liquidación de Impuestos',
         cuatri: 10, horasSem: 6, prereqs: ['24222']},
        {codigo: '21145c',
         nombre:
         'Taller de Práctica Profesional Contador Público (Continuación)',
         cuatri: 10, horasSem: 4,
         prereqs: ['21239', '20120', '24219', '24221', '24217']}] AS row
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);
MATCH (ca:Carrera)-[:OFRECE]->(m:Materia)
OPTIONAL MATCH (:Materia)-[:DEPENDE_DE]->(pr:Materia)
RETURN ca.nombre AS Carrera, m.codigo AS CódigoMateria, m.nombre AS Materia,
       pr.codigo AS CorrelativaCodigo, pr.nombre AS CorrelativaNombre
       ORDER BY ca.nombre, m.codigo;
//-------------------------------------------------------------------------------------

// ================================================
// Carrera: Licenciatura en Ciencias Biológicas
// Plan de Estudio 18.05 (Plan vigente)
// ================================================

// 1) Crear o actualizar el nodo Carrera
MERGE (c:Carrera {nombre: 'Licenciatura en Ciencias Biológicas'})
WITH c
// 2) Crear materias y sus correlatividades
UNWIND [
       // I
       {codigo: '11014', nombre: 'Elementos de Matemática',
        cuatri: 1, horasSem: 6, prereqs: []},
       {codigo: '12201',
        nombre: 'Ciencias de la Tierra, del Agua y de la Atmósfera', cuatri: 1,
        horasSem: 6, prereqs: []},
       {codigo: '11084', nombre: 'Biología General I', cuatri: 1, horasSem: 8,
        prereqs: []}, {codigo: '10015', nombre: 'Elementos de Química',
                       cuatri: 1, horasSem: 4, prereqs: []},

       // II
       {codigo: '10021', nombre: 'Álgebra', cuatri: 2,
        horasSem: 6, prereqs: ['11014']},
       {codigo: '11035', nombre: 'Biología General II', cuatri: 2, horasSem: 8,
        prereqs: ['11084']}, {codigo: '11933', nombre: 'Química I', cuatri: 2,
                              horasSem: 8, prereqs: ['10015']},

       // III
       {codigo: '10922', nombre: 'Análisis Matemático I', cuatri: 3,
        horasSem: 8, prereqs: ['11014']},
       {codigo: '31002', nombre: 'Ética', cuatri: 3, horasSem: 4, prereqs: []},
       {codigo: '11037', nombre: 'Biología de Protistas, Hongos y Briófitas',
        cuatri: 3, horasSem: 6, prereqs: ['11035']},
       {codigo: '11916', nombre: 'Química II (Anual)', cuatri: 3, horasSem: 4,
        prereqs: ['11933']},

       // IV
       {codigo: '11107', nombre: 'Biología Animal I (Invertebrados parte I)',
        cuatri: 4, horasSem: 6, prereqs: ['11035']},
       {codigo: '11974', nombre: 'Estadística I', cuatri: 4, horasSem: 6,
        prereqs: ['11014']}, {codigo: '11202', nombre: 'Genética', cuatri: 4,
                              horasSem: 8, prereqs: ['11035']},
       {codigo: '11916c', nombre: 'Química II (Continuación)', cuatri: 4,
        horasSem: 4, prereqs: []},

       // V
       {codigo: '11038', nombre: 'Botánica I', cuatri: 5, horasSem: 6,
        prereqs: ['11037']}, {codigo: '11975', nombre: 'Estadística II',
                              cuatri: 5, horasSem: 6, prereqs: ['11974']},
       {codigo: '11108', nombre: 'Biología Animal II (Vertebrados parte I)',
        cuatri: 5, horasSem: 6, prereqs: ['11035']},
       {codigo: '11963', nombre: 'Química III', cuatri: 5,
        horasSem: 8, prereqs: ['11916']},

       // VI
       {codigo: '11918', nombre: 'Biofísica I', cuatri: 6, horasSem: 6,
        prereqs: ['10922', '10021']},
       {codigo: '18907', nombre: 'Microbiología General', cuatri: 6,
        horasSem: 8, prereqs: ['11963', '11037']},
       {codigo: '11208', nombre: 'Ecología I',
        cuatri: 6, horasSem: 6, prereqs: ['11035', '12201']},
       {codigo: '23001', nombre: 'Metodología de la Investigación',
        cuatri: 6, horasSem: 4, prereqs: ['11975']},

       // VII
       {codigo: '11241', nombre: 'Evolución', cuatri: 7, horasSem: 8,
        prereqs: ['11202', '11208', '11037', '11108', '11107']},
       {codigo: '11919', nombre: 'Biofísica II', cuatri: 7,
        horasSem: 6, prereqs: ['11918']},
       {codigo: '11043', nombre: 'Biología Celular y Molecular I',
        cuatri: 7, horasSem: 8, prereqs: ['11963', '11202']},
       {codigo: '12080', nombre: 'Fisiología Vegetal', cuatri: 7, horasSem: 7,
        prereqs: ['11963', '11202', '11038']},

       // VIII
       {codigo: '11039', nombre: 'Botánica II', cuatri: 8, horasSem: 6,
        prereqs: ['11038']},
       {codigo: '11945', nombre: 'Biología Computacional', cuatri: 8,
        horasSem: 4, prereqs: ['11974', '10922']},
       {codigo: '11040', nombre: 'Instrumentación Biológica', cuatri: 8,
        horasSem: 4, prereqs: ['11963', '11208', '11974']},
       {codigo: '10203', nombre: 'Fisiología Animal', cuatri: 8, horasSem: 8,
        prereqs: ['11107', '11108', '11919', '11963']},

       // Optativas y tesis
       {codigo: '10217', nombre: 'Ciclo de Actividades Optativas I al VI',
        cuatri: 11, horasSem: 0, prereqs: []},
       {codigo: '11213', nombre: 'Tesis de Grado', cuatri: 11, horasSem: 0,
        prereqs: []}] AS row

// 3) Crear/actualizar materias y relaciones
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);
// ================================================
// Carrera: Licenciatura en Ciencias de la Educación
// Plan de Estudio 04.04 (Plan vigente)
// ================================================

// 1) Crear o actualizar el nodo Carrera
MERGE (c:Carrera {nombre: 'Licenciatura en Ciencias de la Educación'})
WITH c

// 2) Crear materias principales y correlatividades
UNWIND [
       // I
       {codigo: '30056', nombre: 'Fundamentos Filosóficos de la Educación',
        cuatri: 1, horasSem: 6, prereqs: []},
       {codigo: '31009', nombre: 'Psicología General y Social', cuatri: 1,
        horasSem: 6, prereqs: []},
       {codigo: '30057', nombre: 'Introducción a la Problemática Educacional',
        cuatri: 1, horasSem: 6, prereqs: []},

       // II
       {codigo: '20076', nombre: 'Historia Argentina',
        cuatri: 2, horasSem: 6, prereqs: []},
       {codigo: '20069', nombre: 'Sociología General', cuatri: 2, horasSem: 6,
        prereqs: []}, {codigo: '30003', nombre: 'Psicología Evolutiva I',
                       cuatri: 2, horasSem: 6, prereqs: ['31009']},
       {codigo: '20038',
        nombre: 'Estudio de la Constitución Nacional y los Derechos Humanos',
        cuatri: 2, horasSem: 4, prereqs: []},

       // III
       {codigo: '30004', nombre: 'Psicología Evolutiva II', cuatri: 3,
        horasSem: 6, prereqs: ['30003']},
       {codigo: '30005', nombre: 'Historia Social de la Educación I', cuatri: 3,
        horasSem: 6, prereqs: ['30056', '30057']},
       {codigo: '30006',
        nombre: 'Metodología de la Investigación y Estadística Educativa',
        cuatri: 3, horasSem: 6, prereqs: ['30057']},
       // Idiomas (elige uno)
       {codigo: '30971', nombre: 'Inglés I', cuatri: 3, horasSem: 4,
        prereqs: []}, {codigo: '30074', nombre: 'Francés I', cuatri: 3,
                       horasSem: 4, prereqs: []},
       {codigo: '30171', nombre: 'Portugués I', cuatri: 3, horasSem: 4,
        prereqs: []},

       // IV
       {codigo: '30058', nombre: 'Teorías de la Educación I', cuatri: 4,
        horasSem: 6, prereqs: ['30006', '30057', '30056']},
       {codigo: '30007', nombre: 'Sociología de la Educación', cuatri: 4,
        horasSem: 6, prereqs: ['20069', '30057', '30056']},
       {codigo: '30008', nombre: 'Psicología Educacional', cuatri: 4,
        horasSem: 6, prereqs: ['30004', '30003', '31009', '30057']},
       {codigo: '30972', nombre: 'Inglés II', cuatri: 4, horasSem: 4,
        prereqs: ['30971']},

       // V (optativa y monografía)
       {codigo: 'OPT1', nombre: 'Optativa I', cuatri: 5, horasSem: 6,
        prereqs: ['30003', '20069', '30056', '31009', '30057']},
       {codigo: '30022', nombre: 'Didáctica I', cuatri: 5, horasSem: 6,
        prereqs: ['30008', '30058', '30003']},
       {codigo: '30018',
        nombre: 'Psicosociología de los Grupos e Instituciones Educativas',
        cuatri: 5, horasSem: 6,
        prereqs: ['30004', '20069', '30056', '31009', '30057']},
       {codigo: '30055', nombre: 'Monografía', cuatri: 5, horasSem: 0,
        prereqs: ['30006', '30058', '30022', '30971']},

       // VI
       {codigo: '30059', nombre: 'Teorías de la Educación II', cuatri: 6,
        horasSem: 6, prereqs: ['30007', '30058', '30006', '30005', '20069']},
       {codigo: '30016', nombre: 'Historia Social de la Educación II',
        cuatri: 6, horasSem: 6, prereqs: ['30007']},
       {codigo: '30023', nombre: 'Didáctica II', cuatri: 6, horasSem: 6,
        prereqs: ['30022', '30007', '30004', '20069']},

       // VII
       {codigo: '30024', nombre: 'Epistemología', cuatri: 7, horasSem: 6,
        prereqs: ['30058', '30005', '30006', '30007']},
       {codigo: '30025', nombre: 'Tecnología Educativa', cuatri: 7, horasSem: 6,
        prereqs: ['30022', '30058', '30004', '30007', '30008']},
       {codigo: '30026', nombre: 'Política Educacional Argentina y Comparada',
        cuatri: 7, horasSem: 6, prereqs: ['30016']},

       // VIII
       {codigo: '30027', nombre: 'Planeamiento y Organización de la Educación',
        cuatri: 8, horasSem: 6, prereqs: ['30026', '30008']},
       {codigo: '30028', nombre: 'Seminario: Educación de Adultos', cuatri: 8,
        horasSem: 6, prereqs: ['30018', '30022', '30059', '30008']},
       {codigo: 'OPT2', nombre: 'Optativa II', cuatri: 8, horasSem: 6,
        prereqs: ['30059']}] AS row

// 3) Crear/actualizar materias y relaciones
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);
// ================================================
// Carrera: Licenciatura en Comercio Internacional
// Plan de Estudio 27.05 (Plan vigente)
// ================================================

// 1) Crear o actualizar el nodo Carrera
MERGE (c:Carrera {nombre: 'Licenciatura en Comercio Internacional'})
WITH c
// 2) Materias y correlatividades
UNWIND [
       // Ciclo I (Técnico Intermedio)
       {codigo: '11010', nombre: 'Taller de Análisis y Resolución de Problemas',
        cuatri: 1, horasSem: 12, prereqs: []},
       {codigo: '21010', nombre: 'Taller de Lectura y Comprensión de Textos',
        cuatri: 1, horasSem: 12, prereqs: []},
       {codigo: '20011', nombre: 'Análisis Socioeconómico', cuatri: 1,
        horasSem: 4, prereqs: []},
       {codigo: '10301', nombre: 'Matemática General y Financiera',
        cuatri: 1, horasSem: 6, prereqs: []},
       {codigo: '20433',
        nombre: 'Contabilidad General', cuatri: 1, horasSem: 4, prereqs: []},
       {codigo: '20431', nombre: 'Introducción al Comercio Internacional',
        cuatri: 1, horasSem: 6, prereqs: []},

       // Ciclo II
       {codigo: '30971', nombre: 'Inglés I',
        cuatri: 2, horasSem: 4, prereqs: []},
       {codigo: '20432', nombre: 'Instituciones del Derecho Privado', cuatri: 2,
        horasSem: 6, prereqs: []},
       {codigo: '10302', nombre: 'Estadística', cuatri: 2, horasSem: 4,
        prereqs: ['10301']}, {codigo: '20430', nombre: 'Administración General',
                              cuatri: 2, horasSem: 4, prereqs: []},
       {codigo: '20715',
        nombre: 'Sistema Bancario y Financiero en el Comercio Internacional',
        cuatri: 2, horasSem: 6, prereqs: ['20431']},

       // Ciclo III
       {codigo: '30972', nombre: 'Inglés II', cuatri: 3, horasSem: 4,
        prereqs: ['30971']},
       {codigo: '20435', nombre: 'Instituciones del Derecho Público', cuatri: 3,
        horasSem: 4, prereqs: ['20432']},
       {codigo: '20067', nombre: 'Economía I', cuatri: 3, horasSem: 6,
        prereqs: ['20011', '10301']},
       {codigo: '20434', nombre: 'Geografía del Comercio Internacional',
        cuatri: 3, horasSem: 4, prereqs: ['20431']},
       {codigo: '20438', nombre: 'Legislación Aduanera',
        cuatri: 3, horasSem: 8, prereqs: ['20432']},

       // Ciclo IV
       {codigo: '30171', nombre: 'Portugués I', cuatri: 4, horasSem: 4,
        prereqs: []}, {codigo: '20716',
                       nombre: 'Logística Integral del Comercio Internacional',
                       cuatri: 4, horasSem: 4, prereqs: ['20434', '20715']},
       {codigo: '20717', nombre: 'Operatoria de Importación', cuatri: 4,
        horasSem: 6, prereqs: ['20715']},
       {codigo: '20068', nombre: 'Economía II', cuatri: 4, horasSem: 6,
        prereqs: ['20067']},

       // Ciclo V
       {codigo: '30172', nombre: 'Portugués II', cuatri: 5, horasSem: 4,
        prereqs: ['30171']},
       {codigo: '20718', nombre: 'Marketing', cuatri: 5, horasSem: 6,
        prereqs: ['11010', '21010', '20430', '20431']},
       {codigo: '20719',
        nombre: 'Clasificación Arancelaria y Valoración Aduanera', cuatri: 5,
        horasSem: 8, prereqs: ['11010', '21010', '20438']},
       {codigo: '20720',
        nombre: 'Costos y Precios en el Comercio Internacional',
        cuatri: 5, horasSem: 6, prereqs: ['11010', '21010', '20433', '20717']},
       {codigo: '10303', nombre: 'Tecnología Aplicada a los Negocios',
        cuatri: 5, horasSem: 4, prereqs: ['11010', '21010', '20716']},

       // Ciclo VI
       {codigo: '20721', nombre: 'Operatoria de Exportación', cuatri: 6,
        horasSem: 6, prereqs: ['11010', '21010', '20715']},
       {codigo: '20722',
        nombre: 'Gestión y Administración de Operaciones de Comercio Exterior',
        cuatri: 6, horasSem: 4, prereqs: ['11010', '21010', '20716', '20720']},
       {codigo: '20723', nombre: 'Análisis de la Economía Mundial',
        cuatri: 6, horasSem: 2, prereqs: ['20068']},
       {codigo: '20577',
        nombre: 'Régimen Penal y Contencioso Aduanero', cuatri: 6, horasSem: 8,
        prereqs: ['11010', '21010', '20435', '20438', '20717']},

       // Ciclo VII (Licenciatura)
       {codigo: '21440', nombre: 'Derecho Internacional Público', cuatri: 7,
        horasSem: 3, prereqs: ['20435', '20715']},
       {codigo: '20724', nombre: 'Economía Internacional', cuatri: 7,
        horasSem: 4, prereqs: ['20068', '20723']},
       {codigo: '20725', nombre: 'Marketing Internacional',
        cuatri: 7, horasSem: 4, prereqs: ['20718']},
       {codigo: '20726',
        nombre: 'Gerenciamiento Internacional de la Cadena de Abastecimiento',
        cuatri: 7, horasSem: 6, prereqs: ['20722']},

       // Ciclo VIII
       {codigo: '21441', nombre: 'Derecho Internacional Privado', cuatri: 8,
        horasSem: 3, prereqs: ['20435', '20715']},
       {codigo: '20574', nombre: 'Integración y Cooperación Económica',
        cuatri: 8, horasSem: 6, prereqs: ['20724']},
       {codigo: '20727',
        nombre: 'Taller Estructuras y Acciones de Promoción en los Negocios',
        cuatri: 8, horasSem: 6, prereqs: ['20718', '20722']},
       {codigo: '20728', nombre: 'Comercio Internacional de Servicios',
        cuatri: 8, horasSem: 4, prereqs: ['20725']},

       // Ciclo IX
       {codigo: '20729',
        nombre:
        'Taller Desarrollo de Negocios Internacionales: Agroalimentos y Nuevos Emprendimientos',
        cuatri: 9, horasSem: 4, prereqs: ['20725']},
       {codigo: '20730',
        nombre: 'Dirección Estratégica y Evaluación de Negocios', cuatri: 9,
        horasSem: 4, prereqs: ['20725', '20728']},
       {codigo: '20731',
        nombre: 'Seminario Comercio Internacional, Desarrollo y Medio Ambiente',
        cuatri: 9, horasSem: 4, prereqs: ['20727']},

       // Ciclo X
       {codigo: '20732', nombre: 'Negociaciones en Comercio Internacional',
        cuatri: 10, horasSem: 4, prereqs: ['20718', '20727', '20730']},
       {codigo: '20733', nombre: 'Taller de Práctica Profesional', cuatri: 10,
        horasSem: 4, prereqs: ['20729', '20730', '20726', '21440', '21441']}]
       AS row

// 3) Crear/actualizar materias y relaciones
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);

// ================================================
// Carrera: Licenciatura en Educación Física
// Plan de Estudio 15.07 (Plan vigente)
// ================================================

// 1) Crear o actualizar el nodo Carrera
MERGE (c:Carrera {nombre: 'Licenciatura en Educación Física'})
WITH c

// 2) Definir las materias con cuatrimestre, horas semanales y correlatividades
UNWIND [
       // I
       {codigo: '30323',
        nombre: 'Teorías Psicológicas de los Grupos y las Instituciones',
        cuatri: 1, horasSem: 4, prereqs: []},
       {codigo: '10180', nombre: 'Estadística aplicada a la investigación',
        cuatri: 1, horasSem: 4, prereqs: []},
       {codigo: '30326', nombre: 'Psicología del Cuerpo', cuatri: 1,
        horasSem: 4, prereqs: []},
       {codigo: '30325', nombre: 'Enfoques Inclusivos en la Educación Física',
        cuatri: 1, horasSem: 4, prereqs: []},

       // II
       {codigo: '20323',
        nombre:
        'Planeamiento y Gestión de Políticas en Educación Física y Deporte',
        cuatri: 2, horasSem: 4, prereqs: []},
       {codigo: '20322', nombre: 'Sociología del Cuerpo y el Deporte',
        cuatri: 2, horasSem: 4, prereqs: []},
       {codigo: '20331', nombre: 'Salud Pública y Actividad Física', cuatri: 2,
        horasSem: 4, prereqs: []},
       {codigo: '20332', nombre: 'Taller de Trabajo Final de Graduación',
        cuatri: 2, horasSem: 4, prereqs: ['10180', '30325']},
       {codigo: 'OPT1', nombre: 'Seminario Optativo', cuatri: 2, horasSem: 4,
        prereqs: []}, {codigo: '20333', nombre: 'Trabajo Final de Graduación',
                       cuatri: 2, horasSem: 0, prereqs: ['10180', '30325']}]
       AS row

// 3) Crear/actualizar materias y relaciones
MERGE (m:Materia {codigo: row.codigo})
SET m.nombre = row.nombre, m.cuatrimestre = row.cuatri,
    m.horasSem = row.horasSem
MERGE (c)-[:OFRECE]->(m)
FOREACH (pr IN row.prereqs |
  MERGE (p:Materia {codigo: pr})
  MERGE (m)-[:DEPENDE_DE {peso: 1}]->(p)
);

//-----------------------------------------------------------------------
// ================================================
// Calcular horas mensuales para cada Materia
// ‑ por defecto: horasSem * 16
// ‑ excepción (talleres): horasSem * 3
// ================================================
MATCH (m:Materia)
SET m.horasMensuales =
  CASE
    WHEN m.nombre IN ["Taller de Lectura y Comprensión de Textos",
                      "Taller de Lectura y Comprensión de Textos",
                      "Taller de Lectura y Comprensión de Textos",
                      "Taller de Análisis y Resolución de Problemas",
                      "Taller de Análisis y Resolución de Problemas"]
         THEN m.horasSem * 3
    ELSE m.horasSem * 16
  END;

//arreglando datos
MATCH (m:Materia)
WHERE m.horasMensuales = 0
SET m.horasMensuales = null;
MATCH (m:Materia)
WHERE m.horasSem = 1
SET m.horasMensuales = null AND m.horasSem = null;

//_---------------------------------------------------------------------------------------------------
//CQL querys

//cantidad de materias que dependen de otras

MATCH (c:Carrera)-[t:OFRECE]->(n:Materia)-[r:DEPENDE_DE]->(:Materia)
RETURN c.nombre AS Carrera, n.nombre, count(n.nombre) AS total
       ORDER BY total DESC
LIMIT 10;

//materias y relaciones con materias, correlatividades, de una carrera especifica

MATCH p = (c:Carrera)-[r:OFRECE]->(m:Materia)-[t:DEPENDE_DE]->(n:Materia)
WHERE c.nombre = 'Licenciatura en Sistemas de Información'
RETURN n, m;

// Calcula en cada materia la suma de los pesos de las relaciones entrantes
MATCH (m:Materia)
OPTIONAL MATCH (:Materia)-[r:DEPENDE_DE]->(m)
WITH m, COALESCE(SUM(r.peso), 0) AS Correlativas
SET m.Correlativas = Correlativas;
//---------------------------------------------------------------------------------------------
//Usa este script para calcular y guardar en cada nodo Materia la suma de
//los pesos de sus relaciones salientes
MATCH (m:Materia)
OPTIONAL MATCH (m)-[r:DEPENDE_DE]->()
WITH m, COALESCE(SUM(r.peso), 0) AS CantidadmateriasQueEsCorrelativa
SET m.CantidadmateriasQueEsCorrelativa = CantidadmateriasQueEsCorrelativa;

//-----------------------------------------------------------
// query donde te tira cuantas materias necesitas para cursar
MATCH (m:Materia)
RETURN m.nombre AS materia, m.horasTotales,
       m.cantidadMateriasNecesariasParaCursar
       ORDER BY m.cantidadMateriasNecesariasParaCursar DESC
LIMIT 10;
//----------------------------------------------------------------------------------------------
//query donde te tira la cantidad de materias que afectan a cursar si no aprobas
MATCH (m:Materia)
RETURN m.nombre AS materia, m.horasTotales,
       m.cantidadMateriasAfectadasParaCursar
       ORDER BY m.cantidadMateriasAfectadasParaCursar DESC
LIMIT 10;

//-------------------------------------------------------------------------------
//query cuatrimestre cantidad de horas por materias

MATCH (m:Materia)
RETURN m.cuatrimestre AS cuatrimestre,
       SUM(m.horasTotales) AS HorasTotalesDeTodasLasMaterias
       ORDER BY m.cuatrimestre ASC;

//-------------------------------------------------------------------------------------------------------
//Pensado durante 5 segundos
//Aquí tienes un script completo para convertir tu dificultad en una ponderación
//usable como peso en las relaciones DEPENDE_DE:
// 1) Asigna a cada Materia una dificultad aleatoria 1–10
MATCH (m:Materia)
SET m.dificultad = toInteger(rand() * 10) + 1;

//------------------------------------------------------------------------------------------------------------------------
//PROMEDIO DE DIFICULTAD DE MATERIAS POR CUATRIMESTRE
MATCH (m:Materia)<-[:OFRECE]-(c:Carrera)
WHERE m.cuatrimestre >= 1 AND m.cuatrimestre <= 11
RETURN c.nombre, m.cuatrimestre AS cuatrimestre,
       avg(m.dificultad) AS PromedioDeDificultad ORDER BY c.nombre;
//--------------------------------------------------------------------------------------------------------------------
MATCH (c:Carrera)-[r:OFRECE]->(m:Materia)-[t:PERTENECE_A]->(n:Departamento)
WHERE c.nombre = 'Licenciatura en Sistemas de Información'
RETURN *;

// ================================================
// 1) Asegurar que existan los Departamentos
// ================================================
UNWIND ['Departamento de Ciencias Básicas', 'Departamento de Ciencias Sociales',
        'Departamento de Educación', 'Departamento de Tecnología'] AS dName
MERGE (:Departamento {nombre: dName});

// ================================================
// 2) Asignación EXPLÍCITA por lista de códigos
//    (Ejemplo: si quisieras forzar algunas materias)
// ================================================
UNWIND []
       // {codigo: '10015', dept: 'Departamento de Ciencias Básicas'},
       // {codigo: '20102', dept: 'Departamento de Ciencias Sociales'},
       // … añade aquí pares código→departamento cuando ya sepas exactamente
       AS map
MATCH (m:Materia {codigo: map.codigo})
MERGE (d:Departamento {nombre: map.dept})
MERGE (m)-[:PERTENECE_A]->(d);

// ================================================
// 3) Asignación por INFERENCIA de nombre (cubre el resto)
// ================================================
// 3a) Ciencias Básicas (Matemática, Física, Química, Estadística, Biología, Computación)
MATCH (m:Materia)
WHERE NOT (m)-[:PERTENECE_A]->() AND
      any(kw IN ['Matemática', 'Física', 'Química', 'Estadística', 'Biología',
                 'Computación'] WHERE m.nombre CONTAINS kw)
MERGE (d:Departamento {nombre: 'Departamento de Ciencias Básicas'})
MERGE (m)-[:PERTENECE_A]->(d);

// 3b) Ciencias Sociales (Administración, Economía, Sociología, Historia, Derecho, Marketing…)
MATCH (m:Materia)
WHERE NOT (m)-[:PERTENECE_A]->() AND
      any(kw IN ['Administración', 'Economía', 'Sociología', 'Historia',
                 'Derecho', 'Marketing', 'Costos', 'Finanzas', 'Cultural',
                 'Socioeconómico', 'Trabajo Social'] WHERE m.nombre CONTAINS kw)
MERGE (d:Departamento {nombre: 'Departamento de Ciencias Sociales'})
MERGE (m)-[:PERTENECE_A]->(d);

// 3c) Educación (Educación, Pedagogía, Psicología, Didáctica, Monografía…)
MATCH (m:Materia)
WHERE NOT (m)-[:PERTENECE_A]->() AND
      any(
      kw IN ['Educación', 'Pedagog', 'Psicología', 'Didáctica', 'Monografía',
             'Problemática Educacional', 'Adultos', 'Corporal'] WHERE m.nombre
      CONTAINS kw)
MERGE (d:Departamento {nombre: 'Departamento de Educación'})
MERGE (m)-[:PERTENECE_A]->(d);

// 3d) Tecnología (Programación, Sistemas, Informática, Ingeniería, Tecnología, Instrumentación, Redes…)
MATCH (m:Materia)
WHERE NOT (m)-[:PERTENECE_A]->() AND
      any(
      kw IN
      ['Programación', 'Sistemas', 'Informática', 'Ingeniería', 'Tecnología',
       'Instrumentación', 'Redes', 'Computacional', 'Industrial'] WHERE m.nombre
      CONTAINS kw)
MERGE (d:Departamento {nombre: 'Departamento de Tecnología'})
MERGE (m)-[:PERTENECE_A]->(d);

// ================================================
// 4) Verificar qué materias quedaron SIN Departamento
// ================================================
MATCH (m:Materia)
WHERE NOT (m)-[:PERTENECE_A]->()
RETURN m.codigo AS codigo, m.nombre AS materia ORDER BY m.codigo;

//--------------------------------------------------------------------------------------------------------
MATCH p = (c:Carrera)-[r:OFRECE]->(n:Materia)-[t:DEPENDE_DE]->
          (m:Materia)-[a:PERTENECE_A]->(d:Departamento)
RETURN c, SUM(n.dificultad) / COUNT(n.dificultad) AS promedio