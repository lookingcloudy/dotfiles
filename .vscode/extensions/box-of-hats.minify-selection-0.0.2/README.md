# Minify selection

Minify just some selected code instead of an entire file.


## Commands:

- `Minify Selection: Minify Selected CSS`

## Language support

### CSS

input

```css
a {
    border-color: red;
}

.testclass {
    font-size: 20px;
    color: green;
}
```

output

```css
a{border-color: red;}.testclass{font-size: 20px; color: green;}
```