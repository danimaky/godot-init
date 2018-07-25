## Quickly guide for Godot Engine

---

### Nodes ~~Nodos~~

Nodes are fundamental building blocks for creating a game.

Nodes have theses features:

- It has a name
- It has a editable properties
- It can receive a callback to process every frame
- It can be extended (to have more functions)
- It can be added to other nodes as children

Multiples nodes related create a tree.
In Godot this way creates a powerful tool for organizing projects.

```Spanish
*Los nodos son bloques de construcción fundamentales para la creación de un juego.*

Los nodos tienen las siguientes caracteristicas:*

- *Tienen un nombre*
- *Tienen propiedades editables*
- *Pueden recibir un llamado a procesar en cualquier momento*
- *Puede ser extendido para obtener más funciones*
- *Puede ser añadido a otros nodos como hijo

*Multiples nodos relacionados crean un arbol.*
*Esto hace que godot tenga una herramienta poderosa para la organización de proyectos.*
```



---

### Scenes ~~Escenas~~

A scene is composed of a group of nodes organized hierarchically (in tree fashion). Furthermore, a scene:

- Always has only one root node
- Can be saved to disk and loaded back
- Can be instanced (more on that later)

In Godot running a game means running a scene, a project can contain several scenes.
Basically, Godot is a **scene editor**. 

```Spanish
Una escena esta compuesta por un grupo de nodos organizados de forma jerarquica (en forma de arbol). Por otro lado una escena:
- Siempre tiene un nodo raíz
- Puede ser almacenada en los ficheros y puede ser cargada
- Puede ser instanciada (varias veces más luego)
En Godot la ejecución del juego hace referencia a la ejecución de una escena, un proyecto puede contener multiples escenas.
En otras palabras Godot es un editor de escenas.
```

---

### Configuration of ProjectSettings ~~Configuración del ProjectSettings~~

ProjectSettings uses singleton software design pattern, in other words ProjectSettings is an unique object instance.

It contains global variables accessible from everywhere.

```
El ProjectSettings utiliza el patrón de diseño singleton, en otras palabras ProjectSettings es una instancia única.
Esto contiene variables globales accesibles por cualquiera.
```

