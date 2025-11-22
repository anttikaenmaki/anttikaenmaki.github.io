# Jekyll Academic Website Documentation

This is a comprehensive guide to all components, includes, data structures, and usage patterns for this Jekyll-based academic website for mathematician Antti Käenmäki.

## Table of Contents

1. [Project Overview](#project-overview)
2. [Site Configuration](#site-configuration)
3. [Data Structures](#data-structures)
4. [Jekyll Includes (Components)](#jekyll-includes-components)
5. [Layouts](#layouts)
6. [Usage Examples](#usage-examples)
7. [Styling](#styling)

---

## Project Overview

This is a static website built with Jekyll, designed for an academic mathematician. It features:

- Publication management system with filtering
- Blog posts
- Teaching materials
- Responsive design
- MathJax/KaTeX support for mathematical notation
- Analytics via Umami
- FontAwesome icons

**Technology Stack:**
- Jekyll static site generator
- Sass for styling
- KaTeX for math rendering
- Liquid templating language

---

## Site Configuration

Configuration is managed through `_config.yml`.

### Key Configuration Options

```yaml
title: "Antti Käenmäki"
author: "Antti Käenmäki"
description: "kaenmaki.net"
url: https://kaenmaki.net
baseurl: "/"
permalink: /:title/
lang: "en"
date_format: "%B %e, %Y"
```

### Layout Options

```yaml
show_excerpts: false        # Show article excerpts on home page
show_frame: true            # Adds gray frame to site
show_sidebar: false         # Show sidebar instead of header
show_description: false     # Show site description in sidebar
minimal: false              # Use dark header
mathjax: true              # Enable math rendering
```

### Navigation Configuration

```yaml
navigation:                 # Main menu items
  - {file: "publications.md", icon: file}
  - {file: "blog.md", icon: comment}
  - {file: "opetus.md", icon: chalkboard-teacher}

external:                   # Footer/external links
  - {file: "contact.md", icon: envelope}
```

**Navigation Item Options:**
- `file`: Markdown file to link to
- `title`: Display text (optional, defaults to page title)
- `url`: Custom URL (optional, defaults to file URL)
- `icon`: FontAwesome icon name
- `sidebaricon`: Alternative icon for sidebar

---

## Data Structures

All data is stored in JSON files in the `_data/` directory.

### 1. People Data (`_data/people.json`)

Stores information about collaborators and co-authors.

**Structure:**

```json
{
  "uniqueid": {
    "name": "Last name",
    "firstname": "First name",
    "shortname": "F. Lastname",
    "www": "https://website.url"
  }
}
```

**Example:**

```json
{
  "baranybalazs": {
    "name": "Bárány",
    "firstname": "Balázs",
    "shortname": "B. Bárány",
    "www": "https://math.bme.hu/~balubs/"
  }
}
```

**Fields:**
- `name` (string, required): Last/family name
- `firstname` (string, required): First/given name
- `shortname` (string, required): Abbreviated name for citations
- `www` (string, optional): Personal website URL (empty string if none)

**Usage Note:** The unique ID should be lowercase, no spaces, typically `lastnamefirstname`.

---

### 2. Journals Data (`_data/journals.json`)

Stores journal information for publications.

**Structure:**

```json
{
  "uniqueid": {
    "name": "Full Journal Name",
    "shortname": "Abbreviated Name",
    "jufo": "3",
    "www": "https://journal.url"
  }
}
```

**Example:**

```json
{
  "advmath": {
    "name": "Advances in Mathematics",
    "shortname": "Adv. Math.",
    "jufo": "3",
    "www": "https://www.sciencedirect.com/journal/advances-in-mathematics"
  }
}
```

**Fields:**
- `name` (string, required): Full journal name
- `shortname` (string, required): Standard abbreviated name
- `jufo` (string, optional): JUFO rating (Finnish publication forum rating: "0", "1", "2", "3")
- `www` (string, optional): Journal website URL

**Special Entries:**
- `preprint`: For papers not yet published

---

### 3. Papers Data (`_data/papers.json`)

Main publication database.

**Structure:**

```json
{
  "id": {
    "status": "publication|preprint|survey",
    "papername": "Paper Title",
    "arxiv": "https://doi.org/10.48550/arXiv.XXXX.XXXXX",
    "attachment": "Display text",
    "attachmentfile": "filename.pdf",
    "collaborators": "id1 id2 id3",
    "topic": "fg et gmt",
    "journal": "journalid",
    "journaldata": "Volume (Year), pages",
    "doi": "https://doi.org/XX.XXXX/..."
  }
}
```

**Example:**

```json
{
  "50": {
    "status": "publication",
    "papername": "Super-exponential condensation without exact overlaps",
    "arxiv": "https://doi.org/10.48550/arXiv.1910.04623",
    "attachment": "Numerical calculations",
    "attachmentfile": "mathematica/50-numerical-calculations.nb",
    "collaborators": "baranybalazs",
    "topic": "fg",
    "journal": "advmath",
    "journaldata": "379 (2021), Paper No. 107549",
    "doi": "https://doi.org/10.1016/j.aim.2020.107549"
  }
}
```

**Fields:**
- `status` (string, required): Publication status
  - `"publication"`: Published paper
  - `"preprint"`: Unpublished/submitted
  - `"survey"`: Survey/review article
- `papername` (string, required): Full paper title
- `arxiv` (string, optional): arXiv URL
- `attachment` (string, optional): Display text for attachment link
- `attachmentfile` (string, optional): Path to attachment file in `/assets/`
- `collaborators` (string, optional): Space-separated list of collaborator IDs from `people.json`
- `topic` (string, optional): Space-separated topic codes
  - `"fg"`: Fractal geometry
  - `"et"`: Ergodic theory
  - `"gmt"`: Geometric measure theory
- `journal` (string, required): Journal ID from `journals.json`
- `journaldata` (string, required): Volume, year, page info
- `doi` (string, optional): DOI URL

---

## Jekyll Includes (Components)

Includes are reusable components stored in `_includes/`. They use Liquid templating.

### 1. `publication-item.html`

Renders a single publication entry with formatting, links, and metadata.

**Purpose:** Display a publication with title, authors, journal, and links.

**Parameters:**
- `include.status` (string, required): Publication status
- `include.papername` (string, required): Paper title
- `include.journal` (string, required): Journal ID
- `include.collaborators` (string, optional): Space-separated collaborator IDs
- `include.topic` (string, optional): Space-separated topics
- `include.arxiv` (string, optional): arXiv URL
- `include.attachment` (string, optional): Attachment text
- `include.attachmentfile` (string, optional): Attachment filename
- `include.doi` (string, optional): DOI URL
- `include.journaldata` (string, required): Publication details

**Usage:**

```liquid
{% assign paper = site.data.papers["50"] %}
{% include publication-item.html
   status=paper.status
   papername=paper.papername
   journal=paper.journal
   collaborators=paper.collaborators
   topic=paper.topic
   arxiv=paper.arxiv
   attachment=paper.attachment
   attachmentfile=paper.attachmentfile
   doi=paper.doi
   journaldata=paper.journaldata
%}
```

**Output:** Generates HTML list item with CSS classes for filtering:
- `.status-publication` / `.status-preprint` / `.status-survey`
- `.journal-{journalname}`
- `.topic-fg` / `.topic-et` / `.topic-gmt`
- `.coauthor-{personid}`

**Features:**
- Automatic link generation for arXiv, DOI
- Formatted author list with "and" separators
- Analytics tracking via Umami
- Truncates long titles in event names

---

### 2. `teaching-item.html`

Displays a teaching material/PDF link with metadata.

**Purpose:** Create a link to a teaching document with description and date.

**Parameters:**
- `include.filename` (string, required): PDF filename in `/assets/pdfs/`
- `include.name` (string, required): Display name
- `include.description` (string, optional): Description text
- `include.date` (string, optional): Date string

**Usage:**

```liquid
{% include teaching-item.html
   filename="lecture-notes.pdf"
   name="Introduction to Measure Theory"
   description="Lecture notes from Fall 2024"
   date="September 2024"
%}
```

**Output:** Link with bold title, description, and date.

---

### 3. `checkbox.html`

Creates filterable checkboxes or plain links for filtering publications.

**Purpose:** Generate interactive filters for publication lists.

**Parameters:**
- `include.type` (string, required): Filter type
  - `"status"`: Filter by status
  - `"coauthor"`: Filter by collaborator
  - `"topic"`: Filter by topic
  - `"journal"`: Filter by journal
- `include.filters` (string, required): Comma-separated list of filter values
- `include.text` (string, optional): Custom display text
- `include.checkbox` (string, optional): `"no"` for plain link, `"checked"` for pre-checked

**Usage:**

```liquid
<!-- Single coauthor checkbox -->
{% include checkbox.html type="coauthor" filters="baranybalazs" %}

<!-- Multiple journals -->
{% include checkbox.html type="journal" filters="advmath, transamermathsoc" %}

<!-- Plain link (no checkbox) -->
{% include checkbox.html type="status" filters="preprint" checkbox="no" %}

<!-- Pre-checked box -->
{% include checkbox.html type="topic" filters="fg" checkbox="checked" %}
```

**Output:**
- With checkbox: `<label><input type="checkbox" id="type-filter" value="type-filter">Name</label>`
- Without checkbox: `[Name](url)`

---

### 4. `checkbox-status.html`

Creates a checkbox with automatic count display for status/topic filters.

**Purpose:** Display filtered publication count with checkbox.

**Parameters:**
- `include.type` (string, optional): `"status"` or `"topic"` (default: `"status"`)
- `include.items` (string, required): Single item: `"preprint"`, `"publication"`, `"survey"`, `"et"`, `"fg"`, `"gmt"`
- `include.count` (string, optional): Set to `"no"` to hide count
- `include.begin` (string, optional): Text before checkbox
- `include.middle` (string, optional): Custom display text (replaces item name)
- `include.end` (string, optional): Text after checkbox
- `include.checked` (string, optional): `"checked"` for pre-checked

**Usage:**

```liquid
<!-- Show "5 preprints" with checkbox -->
{% include checkbox-status.html type="status" items="preprint" %}

<!-- Show "ergodic theory" instead of "et" -->
{% include checkbox-status.html type="topic" items="et" middle="ergodic theory" %}

<!-- Hide count, just show "publications" -->
{% include checkbox-status.html type="status" items="publication" count="no" %}
```

**Output:** Checkbox with text like "5 preprints" or "3 ergodic theory"

---

### 5. `count-papers.html`

Counts papers matching specified criteria.

**Purpose:** Return count of papers by status, topic, or journal.

**Parameters:**
- `include.type` (string, optional): `"status"` or `"topic"` (default: `"status"`)
- `include.items` (string, optional): Comma-separated list (default: `"publication"`)
  - For status: `"preprint"`, `"publication"`, `"survey"`
  - For topic: `"et"`, `"fg"`, `"gmt"`
  - For journal: any journal ID

**Usage:**

```liquid
<!-- Count all publications -->
{% include count-papers.html type="status" items="publication" %}

<!-- Count preprints -->
{% include count-papers.html type="status" items="preprint" %}

<!-- Count fractal geometry papers -->
{% include count-papers.html type="topic" items="fg" %}

<!-- Count papers in specific journal -->
{% include count-papers.html items="advmath" %}
```

**Output:** Returns integer count (e.g., `42`)

---

### 6. `count-jufo.html`

Counts papers published in journals with JUFO rating ≥ n.

**Purpose:** Count high-quality publications by Finnish JUFO rating.

**Parameters:**
- `include.n` (integer, optional): Minimum JUFO rating (0-3, default: 3)

**Usage:**

```liquid
<!-- Count JUFO level 3 papers -->
{% include count-jufo.html n=3 %}

<!-- Count JUFO level 2+ papers -->
{% include count-jufo.html n=2 %}
```

**Output:** Returns integer count

---

### 7. `atleast.html`

Finds collaborators or journals with at least N publications.

**Purpose:** Identify frequent collaborators or commonly published journals.

**Parameters:**
- `include.n` (integer, optional): Minimum count (default: 5)
- `include.filter` (string, optional): `"coauthor"` or `"journal"` (default: `"coauthor"`)
- `include.items` (string, optional): Status filter: `"publication"`, `"preprint"`, `"survey"`
- `include.output` (string, optional): `"number"` or `"names"` (default: `"number"`)

**Usage:**

```liquid
<!-- Count collaborators with 5+ papers -->
{% include atleast.html n=5 filter="coauthor" output="number" %}

<!-- List collaborators with 3+ publications -->
{% include atleast.html n=3 filter="coauthor" items="publication" output="names" %}

<!-- Count journals with 10+ papers -->
{% include atleast.html n=10 filter="journal" output="number" %}
```

**Output:**
- `"number"`: Returns count (e.g., `7`)
- `"names"`: Returns comma-separated list (e.g., `"baranybalazs, shmerkinpablo"`)

---

### 8. `search-bar.html`

Creates a search input field for filtering content.

**Purpose:** Add client-side search functionality.

**Parameters:**
- `include.text` (string, optional): Placeholder text (default: `"Search..."`)

**Usage:**

```liquid
{% include search-bar.html %}
{% include search-bar.html text="Filter publications..." %}
```

**Output:** Input field styled with JavaScript class
- Requires `/assets/javascript/search.js` for functionality

---

### 9. `theorem.html`

Creates an anchor and formatted theorem heading.

**Purpose:** Format mathematical theorems, lemmas, propositions, etc.

**Parameters:**
- `include.theorem` (string, optional): Type (default: `"Theorem"`)
- `include.no` (string, optional): Number/identifier
- `include.info` (string, optional): Additional info (e.g., author name)

**Usage:**

```liquid
{% include theorem.html %}
<!-- Output: Theorem. -->

{% include theorem.html theorem="Lemma" no="3.1" %}
<!-- Output: Lemma 3.1. -->

{% include theorem.html theorem="Theorem" no="4.2" info="Pythagoras" %}
<!-- Output: Theorem 4.2 (Pythagoras). -->
```

**Output:**
- Anchor: `<a name="theorem-3-1"></a>`
- Heading: `<strong>Theorem 3.1</strong> (Info).`

---

### 10. `menu.html`

Renders navigation menu from list of items.

**Purpose:** Generate navigation links with icons.

**Parameters:**
- `include.menu` (array, required): Array of menu items

**Usage:**

```liquid
{% include menu.html menu=site.navigation %}
{% include menu.html menu=site.external %}
```

**Menu Item Structure:**
```yaml
- file: "page.md"
  title: "Page Title"    # Optional
  url: "/custom/url"     # Optional
  icon: "icon-name"      # Optional FontAwesome icon
```

**Output:** `<nav>` with links, icons, and `.selected` class for current page

---

### 11. `sidebar.html`

Generates a sidebar navigation (alternative to header).

**Purpose:** Display navigation in sidebar layout.

**Usage:**

```liquid
{% include sidebar.html %}
```

**Configuration:** Activated by `show_sidebar: true` in `_config.yml`

**Output:** Aside element with navigation and site description

---

### 12. `home.html`

Displays blog posts with pagination.

**Purpose:** Render blog post list for homepage.

**Usage:**

```liquid
{% include home.html %}
```

**Output:**
- Article excerpts with "read more" links
- Pagination controls if multiple pages

---

### 13. `archive.html`

Lists all posts in a category as ordered list.

**Purpose:** Create archive/index of blog posts.

**Parameters:**
- `include.category` (string, optional): Category to filter
- `include.language` (string, optional): Language for date formatting

**Usage:**

```liquid
<!-- All posts -->
{% include archive.html %}

<!-- Specific category -->
{% include archive.html category="mathematics" %}

<!-- Finnish dates -->
{% include archive.html language="finnish" %}
```

**Output:** Reversed ordered list with titles, descriptions, and dates

---

### 14. `meta.html`

Displays post metadata (title and date).

**Purpose:** Show post header information.

**Parameters:**
- `include.post` (object, required): Post object
- `include.language` (string, optional): Language for date
- `include.preview` (boolean, optional): Preview mode

**Usage:**

```liquid
{% include meta.html post=post %}
{% include meta.html post=post language="finnish" %}
```

**Output:** `<header>` with `<h1>` title and `<time>` element

---

### 15. `date.html`

Formats a date with optional Finnish translation.

**Purpose:** Display formatted dates.

**Parameters:**
- `include.date` (date, required): Date to format
- `include.language` (string, optional): `"finnish"` for Finnish month names

**Usage:**

```liquid
{% include date.html date=post.date %}
{% include date.html date=post.date language="finnish" %}
```

**Output:** `<time>` element with formatted date

---

### 16. `embed.html`

Creates responsive iframe embed (for videos, etc.).

**Purpose:** Embed external content responsively.

**Parameters:**
- `include.url` (string, required): URL to embed

**Usage:**

```liquid
{% include embed.html url="https://www.youtube.com/embed/VIDEO_ID" %}
```

**Output:** Responsive 16:9 iframe wrapper

---

## Layouts

Layouts define page templates in `_layouts/`.

### 1. `default.html`

Base layout for all pages.

**Features:**
- HTML head with meta tags
- KaTeX math rendering
- Umami analytics
- Header with navigation
- Footer with external links
- Sidebar support

**Usage:**

```yaml
---
layout: default
---
```

---

### 2. `page.html`

Simple page layout with title.

**Extends:** `default.html`

**Usage:**

```yaml
---
layout: page
title: "Page Title"
---
```

**Output:** Article with h1 title and content

---

### 3. `post.html`

Blog post layout with metadata.

**Extends:** `default.html`

**Features:**
- Post title
- Publication date
- Optional comments (Disqus/Isso)

**Usage:**

```yaml
---
layout: post
title: "Post Title"
date: 2024-01-01
---
```

---

## Usage Examples

### Creating a Publication List Page

```markdown
---
layout: page
title: Publications
---

## Publications

Total publications: {% include count-papers.html type="status" items="publication" %}

### Filter by Status

{% include checkbox-status.html type="status" items="publication" %}
{% include checkbox-status.html type="status" items="preprint" %}
{% include checkbox-status.html type="status" items="survey" %}

### Filter by Topic

{% include checkbox-status.html type="topic" items="fg" middle="fractal geometry" %}
{% include checkbox-status.html type="topic" items="et" middle="ergodic theory" %}
{% include checkbox-status.html type="topic" items="gmt" middle="geometric measure theory" %}

### Papers

<ol reversed id="items">
{% for paper in site.data.papers %}
  {% assign p = paper[1] %}
  <li>
    {% include publication-item.html
       status=p.status
       papername=p.papername
       journal=p.journal
       collaborators=p.collaborators
       topic=p.topic
       arxiv=p.arxiv
       attachment=p.attachment
       attachmentfile=p.attachmentfile
       doi=p.doi
       journaldata=p.journaldata
    %}
  </li>
{% endfor %}
</ol>
```

---

### Adding a New Publication

1. Add person to `_data/people.json` (if new collaborator):

```json
{
  "smithjohn": {
    "name": "Smith",
    "firstname": "John",
    "shortname": "J. Smith",
    "www": "https://johnsmith.edu"
  }
}
```

2. Add journal to `_data/journals.json` (if new journal):

```json
{
  "newjournal": {
    "name": "Journal of New Mathematics",
    "shortname": "J. New Math.",
    "jufo": "2",
    "www": "https://journal-url.com"
  }
}
```

3. Add paper to `_data/papers.json`:

```json
{
  "66": {
    "status": "publication",
    "papername": "New Results in Fractal Geometry",
    "arxiv": "https://doi.org/10.48550/arXiv.2501.00001",
    "attachment": "",
    "attachmentfile": "",
    "collaborators": "smithjohn",
    "topic": "fg gmt",
    "journal": "newjournal",
    "journaldata": "100 (2025), 1-20",
    "doi": "https://doi.org/10.1234/example"
  }
}
```

---

### Creating a Blog Post

Create file in `_posts/` or `blog/_posts/`:

```markdown
---
layout: post
title: "My Research Update"
date: 2025-01-15
description: "Brief description for preview"
---

Content goes here. You can use math:

Let $f \colon X \to Y$ be a function. Then we have
\begin{equation}
\label{eq:example}
\int_X f \, d\mu = 0.
\end{equation}

By \cref{eq:example}, we see that...
```

---

### Adding Teaching Materials

```markdown
---
layout: page
title: Teaching
---

## Lecture Notes

<ol>
{% include teaching-item.html
   filename="measure-theory-notes.pdf"
   name="Measure Theory"
   description="Complete lecture notes"
   date="Fall 2024"
%}

{% include teaching-item.html
   filename="exercises.pdf"
   name="Exercise Set 1"
   description="Problems on measurable sets"
   date="Week 1"
%}
</ol>
```

---

### Statistics Page Example

```markdown
---
layout: page
title: Statistics
---

## Publication Statistics

- Total publications: {% include count-papers.html type="status" items="publication" %}
- Preprints: {% include count-papers.html type="status" items="preprint" %}
- Survey articles: {% include count-papers.html type="status" items="survey" %}

## By Topic

- Fractal geometry: {% include count-papers.html type="topic" items="fg" %}
- Ergodic theory: {% include count-papers.html type="topic" items="et" %}
- Geometric measure theory: {% include count-papers.html type="topic" items="gmt" %}

## High-Impact Publications

- JUFO level 3: {% include count-jufo.html n=3 %}
- JUFO level 2+: {% include count-jufo.html n=2 %}

## Collaborations

- Collaborators with 5+ papers: {% include atleast.html n=5 filter="coauthor" %}
- Most frequent journals: {% include atleast.html n=3 filter="journal" %}
```

---

## Styling

Styles are in `_sass/` directory using Sass.

### Main Style Files

- `index.sass` - Main style imports
- `basic.sass` - Base styles
- `layout.sass` - Layout and grid
- `classes.sass` - Utility classes
- `font.sass` - Typography

### CSS Classes for Filtering

Publication items have classes that can be filtered with JavaScript:

- `.status-publication`, `.status-preprint`, `.status-survey`
- `.journal-{journalname}` (e.g., `.journal-adv-math`)
- `.topic-fg`, `.topic-et`, `.topic-gmt`
- `.coauthor-{personid}` (e.g., `.coauthor-baranybalazs`)

### JavaScript Classes

- `.javascript` - Elements shown only when JavaScript enabled
- `.filter-checkbox` - Checkboxes for filtering

---

## Technical Notes

### Math Rendering

The site uses KaTeX (not MathJax) for math rendering. Enable per page:

```yaml
---
mathjax: true
---
```

Or globally in `_config.yml`.

### Analytics

Umami analytics is configured in `default.html`. Events are tracked via `data-umami-event` attributes.

### FontAwesome Icons

Icons are loaded from local `/assets/fontawesome/icons.svg`. Use with:

```html
<svg class="icon">
  <use xlink:href="/assets/fontawesome/icons.svg#icon-name"></use>
</svg>
```

### Build and Deployment

```bash
# Install dependencies
bundle install

# Build site
bundle exec jekyll build

# Serve locally
bundle exec jekyll serve

# Output directory: _site/
```

---

## Best Practices

1. **IDs in Data Files:** Use lowercase, no spaces, descriptive IDs
2. **Paper Ordering:** Papers are numbered in reverse chronological order
3. **Empty Fields:** Use empty string `""` rather than omitting fields
4. **Collaborators:** Always use space-separated IDs, no commas
5. **Topics:** Use standard codes: `fg`, `et`, `gmt`
6. **URLs:** Always include full `https://` URLs
7. **Dates:** Use ISO format `YYYY-MM-DD` in front matter
8. **Math:** Use `\colon` for function notation, not `:`

---

## Troubleshooting

### Publication Not Showing

1. Check JSON syntax (commas, quotes)
2. Verify journal/person IDs exist in respective files
3. Check status field is valid
4. Ensure proper spacing in collaborators list

### Math Not Rendering

1. Verify `mathjax: true` in page or config
2. Check KaTeX syntax compatibility
3. Use `\begin{equation}` not `$$`

### Filter Not Working

1. Check JavaScript is enabled
2. Verify checkbox IDs match list item classes
3. Ensure `search.js` is loaded

---

## API Reference Summary

### Include Components

| Component | Purpose | Key Parameters |
|-----------|---------|----------------|
| `publication-item.html` | Render publication | status, papername, journal, collaborators |
| `teaching-item.html` | Link to teaching material | filename, name, description |
| `checkbox.html` | Create filter checkbox | type, filters, checkbox |
| `checkbox-status.html` | Checkbox with count | type, items, middle |
| `count-papers.html` | Count papers | type, items |
| `count-jufo.html` | Count by JUFO rating | n |
| `atleast.html` | Find frequent items | n, filter, output |
| `search-bar.html` | Search input | text |
| `theorem.html` | Format theorem | theorem, no, info |
| `menu.html` | Navigation menu | menu |
| `archive.html` | Post archive | category, language |
| `date.html` | Format date | date, language |
| `embed.html` | Responsive iframe | url |

### Data Structures

| File | Purpose | Key Fields |
|------|---------|------------|
| `people.json` | Collaborator database | name, firstname, shortname, www |
| `journals.json` | Journal database | name, shortname, jufo, www |
| `papers.json` | Publication database | status, papername, journal, collaborators, topic |

---

## License

This documentation covers the structure and components. See `UNLICENSE.txt` for project license.

## Support

For issues or questions:
1. Check this documentation
2. Review example usage in existing pages
3. Verify JSON syntax with online validator
4. Check Jekyll documentation: https://jekyllrb.com/

---

**Document Version:** 1.0  
**Last Updated:** 2025-11-22  
**Jekyll Version:** 4.x compatible
