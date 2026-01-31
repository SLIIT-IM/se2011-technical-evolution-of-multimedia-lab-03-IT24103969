# SE2011 – Technical Evolution of Multimedia  
## LAB SHEET 03 (2 Hours)  
### Animation & Interactivity Basics in Processing

---

## 1. Lab Objective
To introduce **animation** and basic **interactivity** in Processing by using continuous drawing, variable updates, and mouse input to create dynamic visual behavior.

---

## 2. Lab Learning Outcomes (LOs)
By the end of this lab, students will be able to:

1. Explain how animation works in Processing using the `draw()` loop  
2. Create simple animations by updating variables over time  
3. Control object movement within the canvas boundaries  
4. Apply mouse-based interactivity to visual elements  
5. Combine animation and interaction to create a simple interactive scene  

---

## 4. Tools Required
- **Processing IDE (Java Mode)**
- Knowledge from **Lab 01** and **Lab 02**

---

## 5. Step-by-Step Lab Instructions

---

**Part A: Quick Revision – How `draw()` Works**

Before starting animation, remember:

- `setup()` runs **once**
- `draw()` runs **again and again** (around **60 times per second**)

**Important Concept**  
Animation in Processing is created by changing values **little by little** inside `draw()`.

---

 **Part B: Creating Your First Animation**

### Step B1: Moving a Shape Horizontally
Type the following code:

```java
int x = 0;

void setup() {
  size(400, 300);
}

void draw() {
  background(255);
  ellipse(x, 150, 50, 50);
  x = x + 2;
}
```
▶ **Run the program**

### Explanation
- `x` starts at **0**
- In every frame, `x` increases by **2**
- The circle appears to **move smoothly** across the screen

### Key Learning
**Animation = position + time**

### Self-Practice
1. Change `2` to `5`  
2. Change `2` to `1`  
3. Observe how the **speed changes**

**Part C: Understanding Frame-by-Frame Motion**

### Step C1: Remove the Background
Remove the `background(255);` line and run the program again:

```java
void draw() {
  ellipse(x, 150, 50, 50);
  x = x + 2;
}
```

### Observation
- The screen is **not cleared**
- **Trails** appear as the shape moves

 **Conclusion**
- `background()` clears **previous frames**
- Removing it creates **motion trails**

 **Part D: Keeping Objects Inside the Screen**

### Step D1: Add Boundary Control
Use this code to keep the moving circle inside the canvas:

```java
int x = 0;

void draw() {
  background(255);
  ellipse(x, 150, 50, 50);
  x = x + 2;

  if (x > width) {
    x = 0;
  }
}
```

### Explanation
- `width` represents the **canvas width**
- When the object exits the screen, it **restarts from the beginning**

 **This prevents objects from disappearing forever.**
 **Part E: Vertical Movement & Direction**

### Step E1: Modify the Code
Use this code to move a circle **vertically** on the screen:

```java
int y = 0;

void draw() {
  background(255);
  ellipse(200, y, 50, 50);
  y = y + 3;

  if (y > height) {
    y = 0;
  }
}
```
### Practice
1. Change direction (top → bottom)  
2. Change speed  
3. Move diagonally (change `x` and `y` together)

---

 **Part F: Mouse-Based Interactivity**

### Step F1: Object Following the Mouse
Use this code to make a shape follow your mouse:

```java
void draw() {
  background(200);
  ellipse(mouseX, mouseY, 40, 40);
}
```
### Explanation
- `mouseX` and `mouseY` store the **mouse position**
- The shape reacts in **real-time** as you move the mouse

### Practice Task
1. Change the **size**  
2. Change the **color**  
3. Add a **second shape** that follows the mouse differently  

---

 **Part G: Combining Animation + Mouse Interaction**

### Step G1: Mouse-Control + Automatic Movement
Use this code to combine mouse movement with animation:

```java
int y = 150;

void draw() {
  background(255);
  ellipse(mouseX, y, 50, 50);
  y = y + 1;

  if (y > height) {
    y = 0;
  }
}
```

### Explanation
- **X position** = mouse (`mouseX`)  
- **Y position** = automatic motion (variable increases over time)  
- This creates **mixed interaction** (user control + animation)

---

## 6. Guided Creative Task

### Task Title: Create an Interactive Animated Toy

You must follow **ALL** steps:

1. One object must move **automatically**  
2. One object must react to the **mouse**  
3. Use at least **2 colors**  
4. Objects must stay **inside the screen**  
5. Animation must be **smooth** (no jumping)

**Example ideas**
- Bouncing ball with a mouse-controlled paddle  
- Moving character that follows the cursor  
- Falling object controlled by the mouse  

---

##  7. Reflection & Self-Check

Answer briefly:

1. Why does animation happen in `draw()`?  
2. What happens if `background()` is removed?  
3. How does mouse interaction work?
