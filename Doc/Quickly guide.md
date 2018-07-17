## Quickly guide for Godot Engine

---

### Nodes

Nodes are fundamental building blocks for creating a game.
Nodes have theses features:

- It has a name
- It has a editable properties
- It can receive a callback to process every frame
- It can be extended (to have more functions)
- It can be added to other nodes as children

Multiples nodes related create a tree.
In Godot this way creates a powerful tool for organizing projects.

---

### Scenes

A scene is composed of a group of nodes organized hierarchically (in tree fashion). Furthermore, a scene:

- Always has only one root node
- Can be saved to disk and loaded back
- Can be instanced (more on that later)

In Godot running a game means running a scene, a project can contain several scenes.
Basically, Godot is a **scene editor**. 