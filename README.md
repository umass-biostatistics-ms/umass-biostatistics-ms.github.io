# UMass Amherst MS in Biostatistics: program website

A Quarto website for prospective MS students. It complements the
[official program page](https://www.umass.edu/public-health-sciences/academics/ms-biostatistics).

## Pages and where to edit them

| Page | File(s) | Notes |
|---|---|---|
| Home | `index.qmd` | Banner with MS video, "At a glance" tiles, why UMass, explore links |
| The program | `program.qmd` | Credit structure, culminating experience, 4+1 link, resources |
| Accelerated MS (4+1) | `4plus1.qmd` | Undergraduate video, eligibility, timeline |
| Courses | `courses.qmd`, `data/courses.yml`, `courses.ejs` | Edit course text and instructors in the YAML; `featured: true` highlights a course. Keep entries in course-number order. |
| Careers & alumni | `outcomes.qmd` | Employer tiles: one bullet per employer |
| People | `people.qmd`, `data/faculty.yml`, `faculty.ejs` | Faculty cards; use the same links for instructors in `data/courses.yml` |
| Apply | `apply.qmd` | **Update the dates every year** |

Other files:

- `styles/umass.scss`: UMass colors, fonts and all custom styles
- `_extensions/yt/`: the `{{< yt VIDEO_ID "Title" >}}` shortcode (YouTube thumbnail that opens the video)
- `resources/`: downloadable files (e.g. the MS tracking form), copied into the site on render

## Build & preview

```bash
quarto preview      # live preview in your browser
quarto render       # builds the site into docs/
```

## Publish (GitHub Pages)

Live site: <https://umass-biostatistics-ms.github.io/>

The site is served by GitHub Pages from the `docs/` folder on the `main` branch.
To update the live site: edit the `.qmd`/`.yml` files, run `quarto render`, then commit and push
(including `docs/`). Changes appear within a few minutes.

## Yearly update checklist

- [ ] Apply page: key dates
- [ ] Courses: `data/courses.yml`
- [ ] People: faculty/student counts and `data/faculty.yml`
- [ ] Tracking form / handbook in `resources/`
