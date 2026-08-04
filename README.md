
# 📝 Parcial 1: Agentes y Arsenal 🔫

# Contexto del proyecto

Una base militar necesita administrar el equipamiento de sus agentes para distintas misiones tácticas. Cada agente posee un nivel de experiencia, dinero disponible y un arsenal personal que irá creciendo durante las misiones.

Las armas poseen características diferentes y no todos los agentes son capaces de utilizarlas. Algunas requieren mayor experiencia, otras consumen recursos al utilizarse y algunas incluso mejoran sus estadísticas con el uso.

El Cuartel será el encargado de registrar tanto a los agentes como al arsenal disponible y de administrar todas las operaciones relacionadas con el equipamiento.

> **Nota:** En este modelo solamente se representarán **3 agentes** y **3 armas**, aunque la solución debe permitir trabajar con cualquier cantidad.

---

# 🔫 Las armas

Todas las armas conocen:

- nombre,
- tipo,
- daño base,
- precisión,
- costo,
- requisito mínimo de habilidad,
- cantidad de usos,
- y si actualmente pueden utilizarse.

## AK-47 (Rifle)

- Daño base: **70**
- Precisión: **75**
- Costo: **$2700**
- Requiere **10 puntos** de habilidad.
- Cada vez que elimina a un enemigo aumenta su daño en **1 punto**.
- Cada utilización consume **$300** del dinero del agente.

---

## AWP (Francotirador)

- Daño base: **150**
- Precisión: **95**
- Costo: **$4750**
- Requiere **20 puntos** de habilidad.
- Consume **$100** por utilización.
- Puede activar o desactivar un modo de alta precisión.
- Cuando el modo está activo aumenta su daño en **10 puntos**.

---

## Desert Eagle (Pistola)

- Daño base: **63**
- Precisión: **65**
- Costo: **$700**
- No posee requisitos de habilidad.
- No consume dinero al utilizarse.
- Cada vez que un agente la equipa obtiene **1 punto de habilidad**.

---

## Comportamientos

Cuando un agente equipa un arma:

- pasa a tenerla equipada,
- se descuentan los costos correspondientes,
- aumenta la cantidad de usos del arma.

Las armas pueden responder:

- si un agente puede utilizarlas,
- cuántas veces fueron utilizadas,
- cuál posee mayor daño,
- cuál fue la más utilizada,
- y cuál tiene mejor precisión.

---

# 👤 Los agentes

De cada agente se conoce:

- nombre,
- dinero disponible,
- puntos de habilidad,
- arma equipada,
- cantidad de equipamientos realizados,
- y las armas que utilizó durante la misión.

---

## Agente T

Comienza con:

- 5 puntos de habilidad.
- $8000.

Puede equipar cualquier arma para la que cumpla los requisitos todas las veces que quiera.

Se considera listo cuando:

- el último arma equipada posee un daño superior a **75**.

---

## Agente CT

Comienza con:

- 15 puntos de habilidad.
- $16000.

Luego de equipar un arma debe descansar antes de poder equipar otra nuevamente.

Se considera listo cuando:

- utilizó al menos un Rifle y una Pistola.

---

## Agente Elite

Comienza con:

- 0 puntos de habilidad.
- $500.

Restricciones:

- solamente puede utilizar armas cuyo costo sea menor o igual a **$3000**.
- puede equiparse como máximo **3 veces**.

Se considera listo cuando:

- logró equipar al menos un arma del arsenal.

---

# 🏭 El Cuartel

El Cuartel registra:

- los agentes,
- las armas disponibles,
- y todas las operaciones realizadas.

Puede:

- registrar agentes,
- registrar armas,
- ordenar a un agente equiparse con un arma,
- ordenar a un agente intentar equiparse con todas las armas disponibles.

---

# 📊 Se desea conocer

- cuál es el agente con mayor cantidad de dinero,
- cuál es el agente con mayor experiencia,
- cuál es el arma más costosa,
- cuál es el arma más utilizada,
- cuál es el arma con mayor daño,
- cuál es el promedio de daño de las armas cuyo costo supera los $1000,
- cuáles son las armas que puede utilizar un determinado agente,
- cuáles son los agentes que aún no se consideran listos,
- si todos los agentes pueden utilizar al menos un arma,
- si un agente determinado está listo,
- qué agente realizó más equipamientos,
- y cuánto dinero gastó cada agente durante la misión.

---

# 📝 Nota

Los valores que no estén definidos explícitamente pueden inventarse para las pruebas.

---

# ✅ Se pide

Modelar la solución utilizando:

- objetos y mensajes,
- polimorfismo,
- colecciones,
- closures,
- y referencias entre objetos.

Inventar:

- una nueva arma,
- y un nuevo tipo de agente.

---

# ✅ Tests a realizar

Realizar tests verificando las siguientes situaciones:

- que el Agente T pueda equipar una AK-47 y se descuente correctamente el dinero.
- que el Agente Elite no pueda equipar una AWP por superar el costo permitido.
- que el Agente CT no pueda equipar dos armas seguidas sin descansar.
- que la Desert Eagle aumente un punto de habilidad al agente al equiparla.
- que la AK-47 incremente su daño luego de eliminar un enemigo.
- que el modo de alta precisión de la AWP aumente correctamente su daño.
- que un agente no pueda utilizar un arma si no cumple el requisito de habilidad.
- que el Cuartel registre correctamente un nuevo agente.
- que el Cuartel registre correctamente una nueva arma.
- que el Cuartel pueda ordenar a un agente intentar equipar todas las armas disponibles.
- que el sistema determine correctamente cuál es el agente más rico.
- que el sistema determine cuál fue el arma más utilizada.
- que el sistema calcule correctamente el promedio de daño de las armas cuyo costo supera los $1000.
- que el sistema identifique correctamente a los agentes que no están listos.
- que el sistema determine si todos los agentes pueden utilizar al menos un arma.
- y que el sistema determine correctamente si un agente se considera listo.