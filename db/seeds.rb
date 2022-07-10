puts "Creando ofertas"

Oferta.destroy_all
Empresa.destroy_all

Genero.create([
  { nombre: "Masculino" },
  { nombre: "Femenino" },
  { nombre: "Otro" },
])

Modalidad.create([
  { nombre: "Remoto" },
  { nombre: "Mixto" },
  { nombre: "Presencial" },
])

Region.create([
  { nombre: "Región de Arica y Parinacota" },
  { nombre: "Región de Tarapacá" },
  { nombre: "Región de Antofagasta" },
  { nombre: "Región de Atacama" },
  { nombre: "Región de Coquimbo" },
  { nombre: "Región de Valparaíso" },
  { nombre: "Región del Libertador General Bernardo OHiggins" },
  { nombre: "Región del Maule" },
  { nombre: "Región del Ñuble" },
  { nombre: "Región del Biobío" },
  { nombre: "Región de La Araucanía" },
  { nombre: "Región de Los Ríos" },
  { nombre: "Región de Los Lagos" },
  { nombre: "Región de Aysén del G. Carlos Ibañez del Campo" },
  { nombre: "Región de Magallanes y de la Antártica Chilena" },
  { nombre: "Región Metropolitana de Santiago" },
])


Persona.create(
  [
    {
      rut: "18319988-9",
      email: "j.villarroel01@ufromail.cl",
      password: 123456,
      nombre: "Usuario_1",
      fnac: "20-07-04",
      genero_id: 2,
      telefono: 999127880,
      curriculum: "cv.pdf",
    }
  ]
)

Empresa.create(
  [
    {
      rut: "96886110-7",
      email: "infoweb@nttdata.com",
      password: 123456,
      razon_social: "NTT DATA CHILE S.A",
      representante: "Inés Eusébio",
      direccion: "Antonio Varas 989, Piso 4 y 7",
      telefono: 938194823,
    }

  ]
)

  Oferta.create(
    [
      {
        cargo: "Ingeniero de desarrollo para plataformas informáticas IoT",
        descripcion: "Ingeniero Civil Informático (con o sin título), para integrar el equipo de I&D de la empresa. El equipo se orienta a desarrollar aplicaciones informáticas que procesan, despliegan y reportan información de los dispositivos electrónicos que AIKOLOGIC fabrica para la Gran Minería. Estos desarrollos aplican tanto a dispositivos electrónicos fabricados por la empresa, como a la integración de las tecnologías disponibles en el mercado, habilitando plataformas e interfaces de conectividad, a fin de proporcionar óptimas soluciones a problemas complejos planteados por nuestros clientes.",
        cant_vacantes: 2,
        salario_min: 1100000,
        salario_max: 1400000,
		modalidad_id: 2,
		region_id: 11,
        fecha_inicio: "2022-07-04 17:55:01",
      },
      {
        cargo: "Analista de desarrollo/ Informático",
        descripcion: "Buscamos un profesional que nos ayude a explorar nuevas alternativas en proyectos de Geolocalización Indoor mediante sistema NFC, bluetooth entre otros que tenga una visión divergente con creatividad e innovación, orientado al desarrollo.",
        cant_vacantes: 6,
        salario_min: 950000,
        salario_max: 1200000,
		modalidad_id: 3,
		region_id: 11,
        fecha_inicio: "2022-07-03 17:55:01",
      },
      {
        cargo: "Informático Administrativo de Nubeprint",
        descripcion: "Buscamos personas como tú, para apoyarnos en nuestras mesas de Atención técnica con entusiasmo, que sientan como su cliente, que inspire y movilice, liderando los cambios con excelencia en los resultados.",
        cant_vacantes: 1,
        salario_min: 750000,
        salario_max: 900000,
		modalidad_id: 1,
		region_id: 11,
        fecha_inicio: "2022-07-02 17:55:01",
      },
      {
        cargo: "Profesional de Sopote Informático",
        descripcion: "Para nuestra área de informática, nos encontramos buscando un Administrador de Servidores Linux para incorporarse a un equipo de 4 personas que desarrollan actividades de soporte y programación, entre otros.",
        cant_vacantes: 2,
        salario_min: 500000,
        salario_max: 700000,
		modalidad_id: 2,
		region_id: 11,
        fecha_inicio: "2022-07-01 17:55:01",
      }

    ]
  )

5.times do
  Oferta.create(
    [
      {
        cargo: "Desarrollador programador Ingeniero Informático",
        descripcion: "Empresa del rubro informática requiere contratar DesarrolladorProgramador para proyecto en el área de TELCO. Se requiere experiencia laboral de dos años en áreas de programación y QA y conocimientos en los siguientes lenguajes JAVA.",
        cant_vacantes: 2,
        salario_min: 1400000,
        salario_max: 1600000,
		modalidad_id: 2,
		region_id: 11,
        fecha_inicio: "2022-06-30 17:55:01",
      },

    ]
  )
end

puts "Finalizado!"
