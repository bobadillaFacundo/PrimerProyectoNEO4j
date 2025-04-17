// Basado en el Plan de Estudios 17.13 de la UNLu :contentReference[oaicite:0]{index=0}
// — Crear nodos Materia —
CREATE (m1:Materia {nombre: 'Introducción a la Programación'});
CREATE (m2:Materia {nombre: 'Álgebra y Lógica Computacional'});
CREATE (m3:Materia {nombre: 'Introducción a los Sistemas de Información'});
CREATE (m4:Materia {nombre: 'Organización de Computadoras'});

CREATE (m5:Materia {nombre: 'Matemática Discreta'});
CREATE (m6:Materia {nombre: 'Programación I'});
CREATE (m7:Materia {nombre: 'Arquitectura de Computadoras'});
CREATE (m8:Materia {nombre: 'Inglés I'});

CREATE (m9:Materia {nombre: 'Análisis Matemático I'});
CREATE (m10:Materia {nombre: 'Programación II'});
CREATE (m11:Materia {nombre: 'Sistemas de Información I'});
CREATE (m12:Materia {nombre: 'Inglés II'});

CREATE (m13:Materia {nombre: 'Análisis Matemático II'});
CREATE (m14:Materia {nombre: 'Sistemas Operativos'});
CREATE (m15:Materia {nombre: 'Programación Orientada a Objetos'});
CREATE (m16:Materia {nombre: 'Base de Datos I'});

CREATE (m17:Materia {nombre: 'Sistemas de Información II'});
CREATE (m18:Materia {nombre: 'Teleinformática y Redes'});
CREATE (m19:Materia {nombre: 'Estadística y Probabilidad'});

CREATE (m20:Materia {nombre: 'Programación Funcional y Lógica'});
CREATE (m21:Materia {nombre: 'Sistemas de Información III'});
CREATE (m22:Materia {nombre: 'Base de Datos II'});
CREATE (m23:Materia {nombre: 'Aspectos Profesionales y Sociales'});
CREATE (m24:Materia {nombre: 'Administración y Gestión de Redes'});

CREATE (m25:Materia {nombre: 'Modelos, Simulación y Teoría de la Decisión'});
CREATE (m26:Materia {nombre: 'Sistemas Distribuidos y Programación Paralela'});
CREATE (m27:Materia {nombre: 'Programación en Ambiente Web'});
CREATE (m28:Materia {nombre: 'Seminario de Integración Profesional'});

CREATE (m29:Materia {nombre: 'Teoría de la Computación I'});
CREATE (m30:Materia {nombre: 'Base de Datos Masivas (Gestión y Análisis)'});
CREATE (m31:Materia {nombre: 'Optativa I'});
CREATE (m32:Materia {nombre: 'Sistemas de Información IV'});

CREATE (m33:Materia {nombre: 'Sistemas Inteligentes'});
CREATE (m34:Materia {nombre: 'Optativa II'});
CREATE (m35:Materia {nombre: 'Seguridad de la Información'});
CREATE (m36:Materia {nombre: 'Recuperación de Información'});
CREATE (m37:Materia {nombre: 'Taller de Tesina'});

CREATE (m38:Materia {nombre: 'Teoría de la Computación II'});
CREATE (m39:Materia {nombre: 'Gestión de Proyectos'});
CREATE (m40:Materia {nombre: 'Optativa III'});
CREATE (m41:Materia {nombre: 'Calidad de los Sistemas de Información'});
CREATE (m42:Materia {nombre: 'Tesina de Grado'});

// — Crear relaciones DEPENDE_DE con peso = 1 —

MATCH (a:Materia {nombre: 'Matemática Discreta'}),
      (c:Materia {nombre: 'Álgebra y Lógica Computacional'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Programación I'}),
      (c:Materia {nombre: 'Introducción a la Programación'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Arquitectura de Computadoras'}),
      (c:Materia {nombre: 'Organización de Computadoras'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Análisis Matemático I'}),
      (c:Materia {nombre: 'Álgebra y Lógica Computacional'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Programación II'}),
      (c:Materia {nombre: 'Programación I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas de Información I'}),
      (c:Materia {nombre: 'Introducción a los Sistemas de Información'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas de Información I'}),
      (c:Materia {nombre: 'Programación I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Inglés II'}), (c:Materia {nombre: 'Inglés I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Análisis Matemático II'}),
      (c:Materia {nombre: 'Análisis Matemático I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas Operativos'}),
      (c:Materia {nombre: 'Arquitectura de Computadoras'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas Operativos'}),
      (c:Materia {nombre: 'Programación II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Programación Orientada a Objetos'}),
      (c:Materia {nombre: 'Programación II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Base de Datos I'}),
      (c:Materia {nombre: 'Matemática Discreta'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Base de Datos I'}),
      (c:Materia {nombre: 'Programación II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Base de Datos I'}),
      (c:Materia {nombre: 'Sistemas de Información I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas de Información II'}),
      (c:Materia {nombre: 'Sistemas de Información I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas de Información II'}),
      (c:Materia {nombre: 'Programación Orientada a Objetos'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Teleinformática y Redes'}),
      (c:Materia {nombre: 'Sistemas Operativos'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Estadística y Probabilidad'}),
      (c:Materia {nombre: 'Análisis Matemático I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Programación Funcional y Lógica'}),
      (c:Materia {nombre: 'Matemática Discreta'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Programación Funcional y Lógica'}),
      (c:Materia {nombre: 'Programación I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas de Información III'}),
      (c:Materia {nombre: 'Base de Datos I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas de Información III'}),
      (c:Materia {nombre: 'Sistemas de Información II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Base de Datos II'}),
      (c:Materia {nombre: 'Base de Datos I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Aspectos Profesionales y Sociales'}),
      (c:Materia {nombre: 'Sistemas de Información I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Administración y Gestión de Redes'}),
      (c:Materia {nombre: 'Teleinformática y Redes'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Administración y Gestión de Redes'}),
      (c:Materia {nombre: 'Estadística y Probabilidad'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Modelos, Simulación y Teoría de la Decisión'}),
      (c:Materia {nombre: 'Estadística y Probabilidad'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas Distribuidos y Programación Paralela'}),
      (c:Materia {nombre: 'Administración y Gestión de Redes'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Programación en Ambiente Web'}),
      (c:Materia {nombre: 'Sistemas de Información II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Programación en Ambiente Web'}),
      (c:Materia {nombre: 'Administración y Gestión de Redes'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Seminario de Integración Profesional'}),
      (c:Materia {nombre: 'Inglés II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Seminario de Integración Profesional'}),
      (c:Materia {nombre: 'Teleinformática y Redes'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Seminario de Integración Profesional'}),
      (c:Materia {nombre: 'Sistemas de Información III'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Seminario de Integración Profesional'}),
      (c:Materia {nombre: 'Base de Datos II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Teoría de la Computación I'}),
      (c:Materia {nombre: 'Programación II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Base de Datos Masivas (Gestión y Análisis)'}),
      (c:Materia {nombre: 'Sistemas de Información III'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Base de Datos Masivas (Gestión y Análisis)'}),
      (c:Materia {nombre: 'Base de Datos II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Base de Datos Masivas (Gestión y Análisis)'}),
      (c:Materia {nombre: 'Modelos, Simulación y Teoría de la Decisión'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas de Información IV'}),
      (c:Materia {nombre: 'Sistemas de Información III'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas de Información IV'}),
      (c:Materia {nombre: 'Base de Datos II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas Inteligentes'}),
      (c:Materia {nombre: 'Teoría de la Computación I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Sistemas Inteligentes'}),
      (c:Materia {nombre: 'Programación Funcional y Lógica'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Seguridad de la Información'}),
      (c:Materia {nombre: 'Administración y Gestión de Redes'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Seguridad de la Información'}),
      (c:Materia {nombre: 'Aspectos Profesionales y Sociales'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Recuperación de Información'}),
      (c:Materia {nombre: 'Base de Datos II'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Recuperación de Información'}),
      (c:Materia {nombre: 'Programación en Ambiente Web'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Taller de Tesina'}),
      (c:Materia {nombre: 'Teoría de la Computación I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Taller de Tesina'}),
      (c:Materia {nombre: 'Base de Datos Masivas (Gestión y Análisis)'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Taller de Tesina'}),
      (c:Materia {nombre: 'Sistemas de Información IV'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Teoría de la Computación II'}),
      (c:Materia {nombre: 'Teoría de la Computación I'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Gestión de Proyectos'}),
      (c:Materia {nombre: 'Sistemas de Información IV'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);
MATCH (a:Materia {nombre: 'Calidad de los Sistemas de Información'}),
      (c:Materia {nombre: 'Sistemas de Información IV'})
CREATE (a)-[:DEPENDE_DE {peso: 1}]->(c);

//---------------------------------------------------------------------------------------------------------

// Basado en las Hs. Sem. y Hs. Totales del Plan de Estudios 17.13 de la UNLu :contentReference[oaicite:0]{index=0}

MATCH (m:Materia {nombre: 'Introducción a la Programación'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Álgebra y Lógica Computacional'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Introducción a los Sistemas de Información'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Organización de Computadoras'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Matemática Discreta'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Programación I'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Arquitectura de Computadoras'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Inglés I'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Análisis Matemático I'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Programación II'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Sistemas de Información I'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Inglés II'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Análisis Matemático II'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Sistemas Operativos'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Programación Orientada a Objetos'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Base de Datos I'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Sistemas de Información II'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Teleinformática y Redes'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Estadística y Probabilidad'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Programación Funcional y Lógica'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Sistemas de Información III'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Base de Datos II'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Aspectos Profesionales y Sociales'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Administración y Gestión de Redes'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Modelos, Simulación y Teoría de la Decisión'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Sistemas Distribuidos y Programación Paralela'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Programación en Ambiente Web'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Seminario de Integración Profesional'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Teoría de la Computación I'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Base de Datos Masivas (Gestión y Análisis)'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Optativa I'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Sistemas de Información IV'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Sistemas Inteligentes'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Optativa II'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Seguridad de la Información'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Recuperación de Información'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Taller de Tesina'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Teoría de la Computación II'})
SET m.horasSem = 6, m.horasTotales = 96;
MATCH (m:Materia {nombre: 'Gestión de Proyectos'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Optativa III'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Calidad de los Sistemas de Información'})
SET m.horasSem = 4, m.horasTotales = 64;
MATCH (m:Materia {nombre: 'Tesina de Grado'})
SET m.horasSem = 0, m.horasTotales = 200;

//------------------------------------------------------------------------------------------------
// Asigna a cada materia su cuatrimestre según el Plan de Estudios 17.13 de la UNLu :contentReference[oaicite:0]{index=0}
UNWIND [{nombre: 'Introducción a la Programación', cuatri: 'I'},
        {nombre: 'Álgebra y Lógica Computacional', cuatri: 'I'},
        {nombre: 'Introducción a los Sistemas de Información', cuatri: 'I'},
        {nombre: 'Organización de Computadoras', cuatri: 'I'},
        {nombre: 'Matemática Discreta', cuatri: 'II'},
        {nombre: 'Programación I', cuatri: 'II'},
        {nombre: 'Arquitectura de Computadoras', cuatri: 'II'},
        {nombre: 'Inglés I', cuatri: 'II'},
        {nombre: 'Análisis Matemático I', cuatri: 'III'},
        {nombre: 'Programación II', cuatri: 'III'},
        {nombre: 'Sistemas de Información I', cuatri: 'III'},
        {nombre: 'Inglés II', cuatri: 'III'},
        {nombre: 'Análisis Matemático II', cuatri: 'IV'},
        {nombre: 'Sistemas Operativos', cuatri: 'IV'},
        {nombre: 'Programación Orientada a Objetos', cuatri: 'IV'},
        {nombre: 'Base de Datos I', cuatri: 'IV'},
        {nombre: 'Sistemas de Información II', cuatri: 'V'},
        {nombre: 'Teleinformática y Redes', cuatri: 'V'},
        {nombre: 'Estadística y Probabilidad', cuatri: 'V'},
        {nombre: 'Programación Funcional y Lógica', cuatri: 'V'},
        {nombre: 'Sistemas de Información III', cuatri: 'VI'},
        {nombre: 'Base de Datos II', cuatri: 'VI'},
        {nombre: 'Aspectos Profesionales y Sociales', cuatri: 'VI'},
        {nombre: 'Administración y Gestión de Redes', cuatri: 'VI'},
        {nombre: 'Modelos, Simulación y Teoría de la Decisión', cuatri: 'VII'},
        {nombre: 'Sistemas Distribuidos y Programación Paralela',
         cuatri: 'VII'},
        {nombre: 'Programación en Ambiente Web', cuatri: 'VII'},
        {nombre: 'Seminario de Integración Profesional', cuatri: 'VII'},
        {nombre: 'Teoría de la Computación I', cuatri: 'VIII'},
        {nombre: 'Base de Datos Masivas (Gestión y Análisis)', cuatri: 'VIII'},
        {nombre: 'Optativa I', cuatri: 'VIII'},
        {nombre: 'Sistemas de Información IV', cuatri: 'VIII'},
        {nombre: 'Sistemas Inteligentes', cuatri: 'IX'},
        {nombre: 'Optativa II', cuatri: 'IX'},
        {nombre: 'Seguridad de la Información', cuatri: 'IX'},
        {nombre: 'Recuperación de Información', cuatri: 'IX'},
        {nombre: 'Taller de Tesina', cuatri: 'IX'},
        {nombre: 'Teoría de la Computación II', cuatri: 'X'},
        {nombre: 'Gestión de Proyectos', cuatri: 'X'},
        {nombre: 'Optativa III', cuatri: 'X'},
        {nombre: 'Calidad de los Sistemas de Información', cuatri: 'X'},
        {nombre: 'Tesina de Grado', cuatri: 'X'}] AS row
MATCH (m:Materia {nombre: row.nombre})
SET m.cuatrimestre = row.cuatri;

//-------------------------------------------------------------------------------------------
// Calcula en cada materia la suma de los pesos de las relaciones entrantes
// (es decir, cuántas materias dependen de ella) y lo guarda en una nueva propiedad
MATCH (m:Materia)
OPTIONAL MATCH (:Materia)-[r:DEPENDE_DE]->(m)
WITH m, COALESCE(SUM(r.peso), 0) AS cantidadMateriasAfectaEntrantes
SET m.cantidadMateriasAfectaEntrantes = cantidadMateriasAfectaEntrantes;
//---------------------------------------------------------------------------------------------
//Usa este script para calcular y guardar en cada nodo Materia la suma de
//los pesos de sus relaciones salientes
//(es decir, la cantidad de materias que afecta) en una nueva propiedad cantidadMateriasAfectadas:
MATCH (m:Materia)
OPTIONAL MATCH (m)-[r:DEPENDE_DE]->()
WITH m, COALESCE(SUM(r.peso), 0) AS cantidadMateriasAfectadas
SET m.cantidadMateriasAfectadas = cantidadMateriasAfectadas;

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
SET m.dificultad = toInteger(rand() * 10) + 1,

    // 2) Calcula su versión normalizada [0.1 … 1.0]
    m.dificultadNorm = toFloat(m.dificultad) / 10.0;

// 3) Propaga esa ponderación a las relaciones
MATCH (a:Materia)-[r:DEPENDE_DE]->(b:Materia)
SET
// peso “crudo” igual al valor 1 original o a la dificultad entera:
r.dificultad = b.dificultad,

// y una nueva propiedad ponderación normalizada [0.1…1.0]:
r.ponderacion = b.dificultadNorm;

//------------------------------------------------------------------------------------------------------------------------
//PROMEDIO DE DIFICULTAD DE MATERIAS POR CUATRIMESTRE
MATCH (N:Materia)
WHERE N.cuatrimestre = 'I'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad
  UNION
MATCH (N:Materia)
WHERE N.cuatrimestre = 'II'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad
  UNION
MATCH (N:Materia)
WHERE N.cuatrimestre = 'III'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad
  UNION
MATCH (N:Materia)
WHERE N.cuatrimestre = 'IV'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad
  UNION
MATCH (N:Materia)
WHERE N.cuatrimestre = 'V'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad
  UNION
MATCH (N:Materia)
WHERE N.cuatrimestre = 'VI'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad
  UNION
MATCH (N:Materia)
WHERE N.cuatrimestre = 'VII'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad
  UNION
MATCH (N:Materia)
WHERE N.cuatrimestre = 'VIII'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad
  UNION
MATCH (N:Materia)
WHERE N.cuatrimestre = 'IX'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad
  UNION
MATCH (N:Materia)
WHERE N.cuatrimestre = 'X'
RETURN N.cuatrimestre AS cuatrimestre,
       (SUM(N.dificultad) / COUNT(N.nombre)) AS PromedioDeDificultad