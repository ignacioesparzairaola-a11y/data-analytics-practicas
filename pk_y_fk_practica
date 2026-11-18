CREATE TABLE Estudiantes (
    ID_Estudiante INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

CREATE TABLE Inscripciones (
    ID_Inscripcion INT PRIMARY KEY,
    ID_Estudiante INT,
    --Definimos la conexión
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante)
);
