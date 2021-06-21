# W6 - Bookmark Manager - Pair challenge

Created: Jun 20, 2021 2:00 PM
Materials: https://github.com/makersacademy/course/blob/master/bookmark_manager/00_challenge_map.md
Reviewed: No
Subject: DataBases
Week: Week 6

# **The project**

You're going to build a bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

## **Day 1 w/ Goncalo**

The website will have the following **specification**:

- [ ] Show a list of bookmarks
- [ ] Add new bookmarks
- [ ] Delete bookmarks
- [ ] Update bookmarks
- [ ] Comment on bookmarks
- [ ] Tag bookmarks into categories
- [ ] Filter bookmarks by tag
- [ ] Users are restricted to manage only their own bookmarks

### Task one

**User stories syntax:** "As a ...," "I want ...," and "so that ..."

**Specification:** Show a list of bookmarks

**User Case**:

As a user,

So that I can see what I saved

I want **to see** a list of **the bookmarks**.

**Domain Model:**

**Nouns**

Bookmarks (Class)

**Verbs**

to see (.all - the method)

### Task two

: set up the browser

### Task five

Set up steps for creating a table in the data base:

1. Create the database within the computer database

   ```html
   createdb bookmark_manager
   ```

2. Create table with two columns: ID and URL

   ```html
   CREATE TABLE bookmarks(id serial PRIMARY KEY, url VARCHAR ( 60 ));
   ```
