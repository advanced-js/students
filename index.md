---
layout: default
---

# [Advanced JavaScript](http://documentup.com/advanced-js/syllabus) Student Directory

## Adding yourself

Students, introduce yourself via a `GITHUB_USERNAME.json` file under the [`_data/{{ site.current_term }}/`](https://github.com/advanced-js/students/tree/gh-pages/_data/{{ site.current_term }}) directory, and submit via pull request. Here's an example:

```javascript
// _data/{{ site.current_term }}/afeld.json
{
 "emoji": "dancer",
 "introduction": "Developer at 18F by day, dancer by night."
}
```

Using the format above, replace with your own `emoji` (choose from [this list](http://www.emoji-cheat-sheet.com/)) and `introduction`. Note that we'll do this in the first class, using the same [workflow](http://advanced-js.github.io/syllabus/#workflow) that will be used for all assignments.

## Students

{% include students.html %}
