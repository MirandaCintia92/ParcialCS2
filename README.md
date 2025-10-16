


# 📝 Parcial 1: Agentes y Arsenal 🔫

## Contexto del Proyecto

En el campo de batalla, la gestión de recursos es vital. Los **Agentes de Counter-Strike** deben equiparse con **Armas** que les permitan cumplir sus roles. Cada Agente tiene una cantidad de dinero y puntos de habilidad. Las armas tienen características específicas y pueden tener requisitos para ser usadas. El **Arsenal del Cuartel** es el encargado de registrar y gestionar el equipo disponible y las transacciones.

> **Nota:** En este modelo solo representaremos **3 Agentes** y **3 Armas**, pero el sistema debe ser escalable.

---

## Armas Disponibles

### 🔫 AK-47 (Rifle Terrorista)
* **Daño base:** 70.
* **Costo:** $2700.
* **Requisito de Habilidad:** Mínimo **10 puntos de habilidad** para un uso efectivo.
* **Uso:** Consume **$300 de dinero** por cada agente que la use.
* **Modificación:** Su daño aumenta en **1** cada vez que se usa para matar.

### 💣 AWP (Francotirador Pesado)
* **Daño base:** 150.
* **Costo:** $4750.
* **Requisito de Habilidad:** Mínimo **20 puntos de habilidad**.
* **Uso:** Consume **$100 de dinero** al sincronizarse.
* **Modo Silenciador:** Puede activarse o desactivarse. Si está activo, el daño aumenta en **10**.

### 💥 Desert Eagle (Pistola)
* **Daño base:** 63.
* **Costo:** $700.
* **Requisito de Habilidad:** No exige requisitos especiales.
* **Uso:** **No consume dinero** al usarse.
* **Bonificación:** Otorga **1 punto de habilidad** al Agente por cada vez que se equipa.

---

## Agentes Disponibles

### 👤 Agente T
* Comienza con **5 puntos de habilidad** y **$8000**.
* Puede equipar cualquier arma para la que cumpla los requisitos todas las veces que quiera.
* **Se considera listo si:** el último arma que equipó posee un daño base superior a 75.

### 🛡️ Agente CT
* Comienza con **15 puntos de habilidad** y **$16000**.
* Tras cada equipamiento, debe **"descansar"** (atributo booleano `false`) antes de poder equipar otra.
* **Se considera listo si:** logró equipar al menos una vez un Rifle y una Pistola (de las armas registradas en el Cuartel).

### 👤 Agente Elite
* Comienza con **0 puntos de habilidad** y **$500**.
* **Restricción de costo:** Puede equiparse si el costo del arma es como máximo **$3000** (además de los requisitos del arma).
* **Límite de equipamiento:** Máximo **3 equipamientos** en total.
* **Se considera listo si:** pudo equipar al menos una vez cualquier arma del arsenal.

---

## 🏭 Arsenal del Cuartel

El cuartel registra las **Armas** y los **Agentes**.

## ⚙️ Operaciones Requeridas

1.  **Registrar** Agentes y Armas en el cuartel.
2.  **Intentar equipar** un Arma con un Agente (verificando condiciones y dinero).
3.  **Ordenar** a un Agente que intente equipar todas las Armas disponibles.

### 📊 Obtener:
* El **Agente más rico** (con mayor dinero acumulado).
* **Promedio de daño base** de las armas que cuestan más de $1000.
* La lista de las **Armas que están en condiciones de usarse** por un determinado Agente.
* La lista de los **Agentes que no se consideran listos**.
* **Verificar si todos los Agentes** del cuartel pueden usar al menos un Arma.
* Verificar si un determinado Agente **se considera listo**.