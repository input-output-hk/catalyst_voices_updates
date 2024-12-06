# Catalyst Voice Updates

- [Catalyst Voice Updates](#catalyst-voice-updates)
  - [How to Use Markdown](#how-to-use-markdown)
    - [Headings](#headings)
    - [Bold and Italic Text](#bold-and-italic-text)
    - [Lists](#lists)
    - [Links](#links)
    - [Images](#images)
    - [Code Blocks](#code-blocks)
    - [Blockquotes](#blockquotes)
    - [Horizontal Rules](#horizontal-rules)
    - [Tables](#tables)
  - [Add video to HTML](#add-video-to-html)
  - [Add image to HTML](#add-image-to-html)

## How to Use Markdown

Markdown is a lightweight markup language that allows you to format text in a simple, human-readable way.
You can use it to create headings, lists, links, images, and more. When rendered,
Markdown text is converted into HTML, making it easy to write content for web pages,
documentation, or notes without dealing directly with complex HTML tags.

### Headings

Use the `#` symbol followed by a space to create headings.
The number of `#` signs determines the heading level.

```markdown
# Heading Level 1
## Heading Level 2
### Heading Level 3
```

### Bold and Italic Text

•	Bold text: Wrap text in double asterisks (**bold**) or double underscores (__bold__).
•	Italic text: Wrap text in single asterisks (*italic*) or single underscores (_italic_).

This is **bold** and this is *italic*.

### Lists

•	Unordered lists: Use `-`, `*`, or `+` followed by a space.
•	Ordered lists: Use numbers followed by a dot.

- Item 1
- Item 2
- Item 3

1. Step one
2. Step two
3. Step three

### Links

Create hyperlinks by wrapping the link text in brackets [] and following it with the URL in parentheses ():

[Catalyst](https://voices.projectcatalyst.io)

### Images

Similar to links, but with an exclamation mark `!` in front:

![Alt text for the image](https://images.unsplash.com/photo-1733428450578-b497f84ee54b?q=80&w=2710&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)

### Code Blocks

To format code, indent four spaces or wrap code in triple backticks (```):

```python
def hello_world():
    print("Hello, world!")
```

### Blockquotes

Use > at the beginning of a line to create a blockquote:

> This is a quoted section of text.

### Horizontal Rules

Use three or more hyphens, asterisks, or underscores on a line by themselves to create a divider:

---

### Tables

Use | to separate columns and --- to create headers:

| Column 1 | Column 2 | Column 3 |
| -------- | -------- | -------- |
| Data 1   | Data 2   | Data 3   |
| Data 4   | Data 5   | Data 6   |


## Add video to HTML

**src**: Path to the video file (usually in <source> tags).

```html
<video controls width="640" height="360">
  <source src="video.mp4" type="video/mp4">
</video>
```

•	**controls**: Show player controls.
•	**autoplay** (with muted): Play video automatically.
•	**muted**: Video starts silent.
•	**loop**: Replay automatically after ending.
•	**poster**: Image displayed before playback.
•	**preload** (auto/metadata/none): Hint on how much video to load initially.

full example:

```html
<!-- A video with common attributes -->
<video width="640"
       height="360"
       controls
       autoplay
       muted
       loop
       poster="images/video-poster.jpg"
       preload="metadata">

  <source src="videos/sample-video.mp4" type="video/mp4">
  <source src="videos/sample-video.webm" type="video/webm">
  <!-- Fallback text for unsupported browsers -->
  Your browser does not support the video tag.
</video>
```

## Add image to HTML

**src:** Path to the image file.

``html
  <img src="image.jpg" alt="Description">
```

•	**alt**: Alternate text for accessibility.
•	**width** / height: Control display size in pixels.
•	**title**: Tooltip text on hover.
•	**loading** (lazy/eager): Control when the image loads.

full example:

```html
<!-- An image with common attributes -->
<img src="images/photo.jpg"
     alt="A serene landscape with mountains and a lake"
     width="300"
     height="200"
     title="A peaceful mountain view"
     loading="lazy">
```
