---
title: "Plan de Gestión de Configuración"
author: [Control y Ejecución Operacional de Proyectos]
date: "2022"
keywords: [Markdown, Example]
...

# Plan de Gestión de Configuración

## Contenido

1. [Configuration Items (CIs)](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#1-configuration-items-cis)

    1. [Lista de CIs (baseline)](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#11-lista-de-cis)

    2. [Interdepencias en CIs](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#12-interdependencias-de-cis)

    3. [Registro de información de CIs](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#13-registro-de-informaci%C3%B3n-de-cis)

2. [Control de Configuración](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#2-control-de-la-configuraci%C3%B3n)

    1. [Solicitudes de cambio de CIs](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#21-solicitudes-de-cambio-de-cis)
   
    2. [Change Management System: procesos de integración de cambios si una solicitud tiene impacto](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#22-change-management-system-procesos-de-integraci%C3%B3n-de-cambios-si-una-solicitud-tiene-impacto)
   
       1. Requerimientos: impacto en costo, tiempo y recursos
   
       2. Change Control Board (CCB)
   
    3. [Actualización después de cambios](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#23-actualizaci%C3%B3n-despu%C3%A9s-de-cambios)
   
       1. Registro de Lecciones Aprendidas
   
       2. Implementación en Project Baseline
   
       3. Registro de cambios implementados

## 1. Configuration Items (CIs)

### 1.1. Lista de CIs

A continuación se muestran los CIs del proyecto. Estos elementos son aquellos que pueden sufrir cambios, y de ser así, deben registrarse y actualizarse para que el proyecto se mantenga consistente y funcional.

La lista de CIs está dividida por áreas: Diseño, Logística y Programación/Hosting, más otras dos secciones: Hardware y Recursos Humanos. En el rubro de **Versión** se incluye, de ser necesario, la versión o tipo de elemento que el correspondiente ítem requiere.

Cualquier elemento dentro de las siguientes tablas, de necesitar un cambio, deberá seguir el proceso formal del presente plan.

- Diseño

| CI | Versión |
| --- | --- |
| Adobe Illustrator | 2023 |
| Adobe Photoshop | 2023 |
| Adobe InDesign | 2023 |
| ProCreate | iOS |
| Adobe Acrobat Reader | Gratuita |
| Google Chrome y/o Firefox | Gratuita |

- Logística

| CI | Versión |
| --- | --- |
| Trello | Gratuita |
| MS Project | 2019 |
| Office Suite | 365 |
| Discord | NA |
| Impresora Scáner | NA |
| Post Its | Multicolor |
| Miro | Estudiante |

- Hardware

| CI | Versión |
| --- | --- |
| Servicio de Internet | Asíncrona: 50MB de bajada, 20MB de subida |
| PC's  de desarrolladores | RAM: 8GB+, Memoria: 128GB+, Processador: i5+ |
| PC's de diseñadores | MacOS, iOS, o Windows 10 |

- Recursos Humanos

| CI | Versión |
| --- | --- |
| Project Manager | NA |
| Diseñadores | NA |
| Programadores | NA |
| Director de Calidad | NA |
| Logística | NA |
| Socio fundador | NA |

- Programación/Hosting

| CI | Versión |
| --- | --- |
| OS: cualquier distribución de Linux basada en Debian (Ubuntu, Mint, Kali, Pop, etc) | Penúltima versión LTS |
| Shell | Bash |
| Google Chrome y Firefox | Gratuita |
| Golang | go1.18.X linux/amd64 |
| NodeJS | v16.13.0 |
| **Librerías de Software** | |
| ReactJS | ^17.0.2 |
| ExpressJS | ~4.16.1 |
| express-handlebars | ^5.1.0 |
| express-session | ^1.17.1 |
| express-validator | 5.3.1 |
| mongodb | ^2.2.33 |
| morgan | ~1.9.1
| react-modal | ^3.14.4 |
| react-redux | ^7.2.6 |
| react-router-dom | ^6.0.2 |
| react-scripts | ^5.0.1 |
| redux | ^4.1.2 |
| redux-thunk | ^2.4.1 |
| socket.io-client | ^4.4.1 |
| testing-library/jest-dom | ^5.15.1 |
| testing-library/react | ^11.2.7 |
| testing-library/user-event | ^12.8.3 |
| cookie-parser | ~1.4.4 |
| http-errors | ~1.6.3 |
| nodemailer | ^6.5.0 |
| Git | 2.25.1 |
| Github | Gratuita |
| Heroku CLI | heroku/7.60.1 linux-x64 node-v14.19.0 |
| MongoDB Atlas (Host) | Dedicated 4TB |
| Extensión de Chrome y Firefox | React Dev Tools |
| **Object Oriented Programming** | |
| Patient | NA |
| User | NA |
| Cliente de DB | NA |
| Document (fichas médicas) | NA |
| Views | NA |
| Routes | NA |

### 1.2. Interdependencias de CIs

Si tomamos en cuenta el siguiente concepto:

> Average Component Dependency (ACD): how many elements a randomly selected element would depend on, including itself (Ciceri, 2022),

descrito en el libro *Software Architecture Metrics* de Christian Ciceri (Ciceri, 2022), **el CD será pues el nombre de los CIs que se modifican si cada CI de la tabla anterior cambiara**. Los CI's que no se incluyen en la tabla siguiente no presentan ninguna interdependencia.

| CI | ACD |
| --- | --- |
| Google Chrome y Firefox | Extensión: React Dev Tools |
| OS: cualquier distribución de Linux basada en Debian (Ubuntu, Mint, Kali, Pop, etc) | Golang, Heroku CLI, Shell |
| NodeJS | ExpressJS, express-handlebars, express-session, express-validator, cookie-parser, http-errors, nodemailer, Heroku CLI |
| ExpressJS | express-handlebars, express-session, express-validator, cookie-parser, http-errors, nodemailer |
| mongodb | MongoDB Atlas, morgan |
| React | react-modal, react-redux, react-router-dom, react-scripts, testing-library/react |
| Redux | react-redux, redux-thunk |
| Golang | Heroku CLI |
| User | Patient, Document, Cliente de DB |
| Patient | Document, Cliente de DB |
| Document | Cliente de DB |
| Views | Routes |
| Project Manager | Diseñador, Logística, Desarrolladores, Director de Calidad |
| Director de Calidad | Project Manager, Desarrolladores, Logística |
| Diseñadores | Project Manager, Desarrolladores, Logística |
| Desarrolladores | Project Manager, Director de Calidad, Diseño, Logística |
| Socio Fundador | Project Manager |
| Logística | Project Manager |

*Nota: Las interdependencias de la tabla anterior son unilaterales: si un CI de la columna de la izquierda cambia, los CIs de la columna ACD también cambian; pero no necesariamente significa que si cambia uno de los CIs de esa columna ACD el CI de la columna de la izquierda cambia.*

### 1.3. Registro de Información de CIs

Cada ítem conocido como CI debe de ser registrado con los siguientes campos mínimos:

- Nombre completo del elemento

- Versión o año

- Interdependencias con los CIs existentes

Una vez que se cuenta con esta información como mínimo, se puede registrar como CI en la [Sección 1.1](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#11-lista-de-cis), con su correspondiente registro de interdependencias en la tabla de la [Sección 1.2](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#12-interdependencias-de-cis).

## 2. Control de la Configuración

### 2.1. Solicitudes de cambio de CIs

Una solicitud de cambio de CIs se tratará diferente que una solicitud de cambio de cualquier otra índole, ya que cambiar la versión de alguno de los elementos mencionados como CIs puede poner en riesgo la operación y funcionalidad del proyecto.

La Solicitud de Cambio de CIs (SCCI) es un documento con una propuesta formal para **modificar un CI en su versión o sustituirlo por otro nuevo CI**, y es el primer paso para que se lleve a su posible implementación. Es importante tomar en cuenta que:

> Una SCCI se envía por cualquier cambio que se quiera hacer en un CI, por más pequeño que parezca.

El formato de registro un SCCI es el siguiente:

| ID | Acción Correctiva | Defecto que se pretende reparar | Razón del cambio | Implicaciones: en costo, tiempo y recursos |
| --- | --- | --- | --- | --- |
| Cambio #1 | | | | |
| Cambio #2 | | | | |
| Cambio #3 | | | | |
| ... | | | | |
| Solicitante: | __________________ | Firma: _______________| Fecha: | __ / __ / __ |
   
A raíz del formato anterior se concluye que se puede solicitar el cambio de varios CIs en una sola solicitud, si así se desea.

### 2.2. Change Management System: procesos de integración de cambios si una solicitud tiene impacto.

**2.2.1. Requerimientos**

En caso de que, durante el desarrollo de los entregables del proyecto, se requiera enviar un SCCI, éste deberá tener las siguientes características:

- El formato será llenado por el miembro del equipo del proyecto o cualquier stakeholder que solicita el cambio.

- Deberá ser enviado únicamente al Project Manager a través de correo electrónico a la dirección: 0197495@up.edu.mx.

- Una vez en manos del Project Manager, se le reenviará al socio fundador de ser necesario.

- Una vez en manos del Project Manager, éste deberá guardar el documento en el repositorio oficial del proyecto, a fin de que el historial de cambios se mantenga.

- En el formato de la [sección anterior](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#21-solicitudes-de-cambio-de-cis) se establece que se deben incluir las implicaciones del cambio en un CI que se solicita. En este campo se incluyen el costo, tiempo y recursos que dicho cambio implicaría. De no incluir estos tres impactos, la solicitud será rechazada automáticamente.

- Adicionalmente, en la sección de *Acción Correctiva* del formato en la [sección anterior](https://github.com/the-other-mariana/pm/blob/master/PM1/control/week1/config-plan/config-plan.md#21-solicitudes-de-cambio-de-cis) se deberá incluir cuál es la versión/estado actual del CI que se pretende cambiar.

**2.2.2. Change Control Board (CCB)**

La aprobación o rechazo de una SCCI es responsabilidad del Change Control Board del equipo, el cual incluye: el Proyect Manager y los directores de cada una de las áreas del proyecto. En caso necesario (bajo criterio del Project Manager), el socio fundador podría estar incluido en el CCB. Las responsabilidades del CCB ante un SCCI son:

- Cada miembro del CCB deberá analizar con su departamento correspondiente la propuesta del SCCI. Para ello, es necesario que el Project Manager reenvíe por correo electrónico a los miembros del CCB el formato SCCI.

- Agendar una reunión donde todos los miembros del CCB estén presentes.

- Aprobar o rechazar el SCCI durante la reunión. Analizar las posibles implicaciones del cambio en todos los departamentos, y emitir una decisión.

- Informar al solicitante la decisión sobre su SCCI en un documento enviado por correo electrónico.

- Si la SCCI es rechazada, redactar una breve explicación del porqué.

- Enviar esta explicación al solicitante.

- Guardar todos los documentos generados en el repositorio del proyecto, en una sola carpeta, donde el nombre de ésta será el número del SCCI.

### 2.3. Actualización después de cambios

Esta sección entra en rigor cuando una SCCI es aceptada.

**2.3.1. Registro de Lecciones Aprendidas**

El equipo del proyecto, en el repositorio oficial del proyecto, deberá mantener un folder llamado `lessons/` donde se guardará regsitro de las lecciones aprendidas. Una lección aprendida deberá ser registrada al aceptar una SCCI, redactada por el solicitante.

El formato de una lección aprendida es:

- Título: **Lección Aprendida #X**

- Documento de tipo Markdown (extensión .md) con 3 secciones: 

    - SCCI Detonante: contiene el link al documento de la SCCI en el repositorio.

    - Descripción: se describe lo aprendido, es decir, por cuáles razones el estado anterior del CI cambiado desviaba al proyecto de sus objetivos. Cuál era el problema de mantener el CI como estaba previamente a la SCCI.

    - Palabras clave: lista de palabras clave separadas por coma (,), para facilitar la búsqueda del documento en caso de que más adelante un problema similar surja y la solución aprendida se requiera.

**2.3.2. Implementación en Project Baseline**

Al aceptar la SCCI, el CCB está consciente de que tal cambio se deberá implementar cuanto antes. Por lo tanto, el cambio(s) en la SCCI aceptada **se vuelve una nueva Tarea en el Product Backlog**.

- El Project Manager es el responsable de incluir esta nueva Tarea en el Product Backlog.

- El equipo de desarrollo (Scrum Team) deberá reunirse para priorizar la nueva tarea dentro del Product Backlog para actualizarlo.

- El responsable de implementar esta Tarea (según su departamento) tendrá la libertad de hacer el cambio aceptado en el CI durante el presente sprint (si es urgente) o en el siguiente. Podrá solicitar un meeting para tratar este tema con su equipo.

**2.3.3. Registro de cambios implementados**

En total, cuando un SCCI es aceptado e implementado, el número de registros de ese cambio serán:

1. El SCCI enviado que guarda el Project Manager en el repositorio del proyecto cuando se le hizo llegar.

2. Documento con el resultado del CCB respecto a la SCCI que se le hizo llegar al solicitante.

3. Si la SCCI es rechazada, se contará con el documento del porqué.

4. Si la SCCI es aprobada, se contará con el documento de Lección Aprendida correspondiente.

5. Documentación de la implementación de la Tarea nueva en el sprint que le corresponda, como cualquier otro cambio. Documentación de cambios se especifica con más en el Plan de Gestión de Cambios.

6. Actualización de la Tabla de CIs y Tabla de Interdependencias de CIs.

*Nota: Todos los documentos de esta sección deberán estar almacenados en el repositorio del proyecto*.

## Referencias

(Ciceri, 2022) Ciceri, C. *Software Architecture Metrics*. O'Reilly, 2022.