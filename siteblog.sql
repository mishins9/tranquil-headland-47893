--
-- File generated with SQLiteStudio v3.3.3 on пн май 2 18:48:01 2022
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_category', 'Can add category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_category', 'Can change category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_category', 'Can delete category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_category', 'Can view category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_tag', 'Can add tag');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_tag', 'Can change tag');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_tag', 'Can delete tag');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_tag', 'Can view tag');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_post', 'Can add post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_post', 'Can change post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_post', 'Can delete post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_post', 'Can view post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_rubric', 'Can add rubric');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_rubric', 'Can change rubric');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_rubric', 'Can delete rubric');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_rubric', 'Can view rubric');

-- Table: auth_user
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$320000$Kw0JjNBDpcSJIgG2EqiF8u$QrTtvMnuJloKWLiVoFjlW/F4H9GMZYV//Wh3RrYxhtY=', '2022-04-29 17:40:21.136935', 1, 'admin', '', '', 1, 1, '2022-04-29 17:35:36.591236', '');

-- Table: auth_user_groups
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: blog_category
CREATE TABLE "blog_category" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(255) NOT NULL, "slug" varchar(255) NOT NULL UNIQUE);
INSERT INTO blog_category (id, title, slug) VALUES (1, 'Lifestyle', 'lifestyle');
INSERT INTO blog_category (id, title, slug) VALUES (2, 'Food', 'food');
INSERT INTO blog_category (id, title, slug) VALUES (3, 'Nature', 'nature');
INSERT INTO blog_category (id, title, slug) VALUES (4, 'Photography', 'photography');

-- Table: blog_post
CREATE TABLE "blog_post" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(255) NOT NULL, "slug" varchar(255) NOT NULL UNIQUE, "author" varchar(100) NOT NULL, "content" text NOT NULL, "created_at" datetime NOT NULL, "photo" varchar(100) NOT NULL, "views" integer NOT NULL, "category_id" bigint NOT NULL REFERENCES "blog_category" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO blog_post (id, title, slug, author, content, created_at, photo, views, category_id) VALUES (1, 'Post Title Goes Here 1', 'post-title-goes-here-1', 'Kabbo Liate', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

<p><img alt="" src="/media/uploads/2022/04/29/post-image1.jpg" style="height:350px; width:660px" /></p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>', '2022-04-29 19:33:26.866527', 'pthotos/2022/04/29/post-image2.jpg', 7, 4);
INSERT INTO blog_post (id, title, slug, author, content, created_at, photo, views, category_id) VALUES (2, 'Post Title Goes Here2', 'post-title-goes-here2', 'Kabbo Liate', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>', '2022-04-30 08:51:26.134693', 'pthotos/2022/04/30/post-image1.jpg', 1, 1);
INSERT INTO blog_post (id, title, slug, author, content, created_at, photo, views, category_id) VALUES (3, 'Post Title Goes Here3', 'post-title-goes-here3', 'Kabbo Liate 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p><img alt="" src="/media/uploads/2022/04/30/blog-image1.jpg" style="height:250px; width:400px" /></p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>', '2022-04-30 08:54:11.573532', 'pthotos/2022/04/30/post-image3.jpg', 2, 1);
INSERT INTO blog_post (id, title, slug, author, content, created_at, photo, views, category_id) VALUES (4, 'Post Title Goes Here4', 'post-title-goes-here4', 'Kabbo Liate', '<div class="big-text">
<h3><a href="file:///C:/Users/%D0%90%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D0%BE%D1%80/Downloads/Dart%20Blog%20Free%20Website%20Template%20-%20Free-CSS.com/5919-dart-blog-html/dart-blog-html/dart-blog-html/index.html#">Post Title Goes Here.</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

<div class="big-image">&nbsp;</div>

<div class="big-text">
<h3><a href="file:///C:/Users/%D0%90%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D0%BE%D1%80/Downloads/Dart%20Blog%20Free%20Website%20Template%20-%20Free-CSS.com/5919-dart-blog-html/dart-blog-html/dart-blog-html/index.html#">Post Title Goes Here.</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>
</div>

<h3>&nbsp;</h3>', '2022-04-30 08:55:10.906088', 'pthotos/2022/04/30/post-image4.jpg', 6, 3);
INSERT INTO blog_post (id, title, slug, author, content, created_at, photo, views, category_id) VALUES (5, 'Post Title Goes Here5', 'post-title-goes-here5', 'Kabbo Liate 2', '<div class="big-image">
<div class="big-image">&nbsp;</div>

<div class="big-text">
<h3><a href="file:///C:/Users/%D0%90%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D0%BE%D1%80/Downloads/Dart%20Blog%20Free%20Website%20Template%20-%20Free-CSS.com/5919-dart-blog-html/dart-blog-html/dart-blog-html/index.html#">Post Title Goes Here.</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>
</div>

<div class="big-text">
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>', '2022-04-30 08:56:11.340269', 'pthotos/2022/04/30/post-image5.jpg', 0, 4);
INSERT INTO blog_post (id, title, slug, author, content, created_at, photo, views, category_id) VALUES (6, 'Post Title Goes Here6', 'post-title-goes-here6', 'Kabbo Liate', '<div class="big-image">&nbsp;</div>

<div class="big-text">
<div class="big-text">
<h3><a href="file:///C:/Users/%D0%90%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D0%BE%D1%80/Downloads/Dart%20Blog%20Free%20Website%20Template%20-%20Free-CSS.com/5919-dart-blog-html/dart-blog-html/dart-blog-html/index.html#">Post Title Goes Here.</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>', '2022-04-30 08:56:59.978407', 'pthotos/2022/04/30/post-image6.jpg', 0, 2);
INSERT INTO blog_post (id, title, slug, author, content, created_at, photo, views, category_id) VALUES (7, 'Post Title Goes Here7', 'post-title-goes-here7', 'Kabbo Liate 2', '<div class="big-image">
<div class="big-image">&nbsp;</div>

<div class="big-text">
<h3><a href="file:///C:/Users/%D0%90%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D0%BE%D1%80/Downloads/Dart%20Blog%20Free%20Website%20Template%20-%20Free-CSS.com/5919-dart-blog-html/dart-blog-html/dart-blog-html/index.html#">Post Title Goes Here.</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

<div class="big-image">&nbsp;</div>

<div class="big-text">
<h3><a href="file:///C:/Users/%D0%90%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D0%BE%D1%80/Downloads/Dart%20Blog%20Free%20Website%20Template%20-%20Free-CSS.com/5919-dart-blog-html/dart-blog-html/dart-blog-html/index.html#">Post Title Goes Here.</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>
</div>
</div>

<div class="big-text">
<h3><a href="file:///C:/Users/%D0%90%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B0%D1%82%D0%BE%D1%80/Downloads/Dart%20Blog%20Free%20Website%20Template%20-%20Free-CSS.com/5919-dart-blog-html/dart-blog-html/dart-blog-html/index.html#">Post Title Goes Here.</a></h3>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>', '2022-04-30 08:57:36.273466', 'pthotos/2022/04/30/post-image7.jpg', 10, 2);
INSERT INTO blog_post (id, title, slug, author, content, created_at, photo, views, category_id) VALUES (8, 'Post Title Goes Here8', 'post-title-goes-here8', 'Kabbo Liate', '<div class="big-text">
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

<div class="big-image">orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>

<div class="big-text">
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

<div class="big-image">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>

<div class="big-text">
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>
</div>
</div>', '2022-04-30 08:58:08.554637', 'pthotos/2022/04/30/post-image8.jpg', 2, 3);
INSERT INTO blog_post (id, title, slug, author, content, created_at, photo, views, category_id) VALUES (9, 'Post Title Goes Here9', 'post-title-goes-here9', 'Kabbo Liate', '<div class="big-text">
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

<div class="big-image">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>

<div class="big-text">
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>

<div class="big-image">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>

<div class="big-text">
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
</div>
</div>
</div>', '2022-04-30 08:58:38.928759', 'pthotos/2022/04/30/post-image9.jpg', 0, 4);

-- Table: blog_post_tags
CREATE TABLE "blog_post_tags" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "post_id" bigint NOT NULL REFERENCES "blog_post" ("id") DEFERRABLE INITIALLY DEFERRED, "tag_id" bigint NOT NULL REFERENCES "blog_tag" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (1, 1, 4);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (2, 1, 7);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (3, 2, 1);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (4, 2, 7);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (5, 3, 4);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (6, 3, 7);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (7, 4, 2);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (8, 4, 4);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (9, 5, 9);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (10, 5, 4);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (11, 6, 5);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (12, 6, 7);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (13, 7, 8);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (14, 7, 5);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (15, 8, 2);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (16, 8, 4);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (17, 9, 1);
INSERT INTO blog_post_tags (id, post_id, tag_id) VALUES (18, 9, 10);

-- Table: blog_tag
CREATE TABLE "blog_tag" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(50) NOT NULL, "slug" varchar(50) NOT NULL UNIQUE);
INSERT INTO blog_tag (id, title, slug) VALUES (1, 'Adventure', 'adventure');
INSERT INTO blog_tag (id, title, slug) VALUES (2, 'Animals', 'animals');
INSERT INTO blog_tag (id, title, slug) VALUES (4, 'Beauty', 'beauty');
INSERT INTO blog_tag (id, title, slug) VALUES (5, 'Canada', 'canada');
INSERT INTO blog_tag (id, title, slug) VALUES (6, 'Celebration', 'celebration');
INSERT INTO blog_tag (id, title, slug) VALUES (7, 'City', 'city');
INSERT INTO blog_tag (id, title, slug) VALUES (8, 'Coffee', 'coffee');
INSERT INTO blog_tag (id, title, slug) VALUES (9, 'Europe', 'europe');
INSERT INTO blog_tag (id, title, slug) VALUES (10, 'Asia', 'asia');

-- Table: django_admin_log
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (1, '2022-04-29 18:09:01.864558', '1', 'Lifestyle', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (2, '2022-04-29 18:09:09.935258', '2', 'Food', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (3, '2022-04-29 18:09:18.228454', '3', 'Nature', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (4, '2022-04-29 18:09:34.593609', '4', 'Photography', '[{"added": {}}]', 7, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (5, '2022-04-29 18:11:40.791771', '1', 'Adventure', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (6, '2022-04-29 18:11:56.470012', '2', 'Animals', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (7, '2022-04-29 18:12:07.503302', '3', 'Asis', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (8, '2022-04-29 18:12:22.850002', '4', 'Beauty', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (9, '2022-04-29 18:12:32.731518', '5', 'Canada', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (10, '2022-04-29 18:12:44.883060', '6', 'Celebration', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (11, '2022-04-29 18:12:53.677758', '7', 'City', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (12, '2022-04-29 18:13:10.205139', '8', 'Coffee', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (13, '2022-04-29 18:13:16.941064', '9', 'Europe', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (14, '2022-04-29 18:13:42.085950', '3', 'Asis', '', 8, 1, 3);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (15, '2022-04-29 18:13:59.105117', '10', 'Asia', '[{"added": {}}]', 8, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (16, '2022-04-29 19:33:27.700131', '1', 'Post Title Goes Here 1', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (17, '2022-04-29 19:42:21.502657', '1', 'Post Title Goes Here 1', '[{"changed": {"fields": ["content"]}}]', 9, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (18, '2022-04-30 08:51:26.212820', '2', 'Post Title Goes Here2', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (19, '2022-04-30 08:54:11.642357', '3', 'Post Title Goes Here3', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (20, '2022-04-30 08:55:11.746163', '4', 'Post Title Goes Here4', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (21, '2022-04-30 08:56:12.158323', '5', 'Post Title Goes Here5', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (22, '2022-04-30 08:57:00.834206', '6', 'Post Title Goes Here6', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (23, '2022-04-30 08:57:37.113524', '7', 'Post Title Goes Here7', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (24, '2022-04-30 08:58:09.394806', '8', 'Post Title Goes Here8', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (25, '2022-04-30 08:58:38.982148', '9', 'Post Title Goes Here9', '[{"added": {}}]', 9, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (26, '2022-04-30 16:23:02.276419', '9', 'Post Title Goes Here9', '[{"changed": {"fields": ["content"]}}]', 9, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (27, '2022-04-30 16:23:37.686361', '8', 'Post Title Goes Here8', '[{"changed": {"fields": ["content"]}}]', 9, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (28, '2022-05-01 15:31:01.678903', '1', 'Путешествия', '[{"added": {}}]', 10, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (29, '2022-05-01 15:31:47.233384', '2', 'Европа', '[{"added": {}}]', 10, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (30, '2022-05-01 15:32:04.803278', '3', 'Франция', '[{"added": {}}]', 10, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (31, '2022-05-01 15:32:15.513805', '4', 'Чехия', '[{"added": {}}]', 10, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (32, '2022-05-01 15:32:27.524127', '5', 'Азия', '[{"added": {}}]', 10, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (33, '2022-05-01 16:09:29.619373', '6', 'Япония', '[{"added": {}}]', 10, 1, 1);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (34, '2022-05-01 16:09:47.635119', '6', 'Япония', '[{"changed": {"fields": ["tree_id"]}}]', 10, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (35, '2022-05-01 16:10:01.194611', '6', 'Япония', '[{"changed": {"fields": ["parent", "lft", "rght", "tree_id", "level"]}}]', 10, 1, 2);
INSERT INTO django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) VALUES (36, '2022-05-01 16:10:07.679743', '6', 'Япония', '[{"changed": {"fields": ["parent", "lft", "rght", "level"]}}]', 10, 1, 2);

-- Table: django_content_type
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'blog', 'category');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'blog', 'tag');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'blog', 'post');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'testapp', 'rubric');

-- Table: django_migrations
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2022-04-29 16:43:47.346794');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2022-04-29 16:43:47.493936');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2022-04-29 16:43:47.647696');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-04-29 16:43:47.732368');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-29 16:43:47.817014');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-04-29 16:43:47.917334');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-04-29 16:43:48.001963');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-04-29 16:43:48.064468');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-04-29 16:43:48.149170');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-04-29 16:43:48.202572');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-04-29 16:43:48.280701');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-29 16:43:48.334148');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-04-29 16:43:48.418817');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-29 16:43:48.503445');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2022-04-29 16:43:48.581573');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2022-04-29 16:43:48.650643');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-29 16:43:48.719713');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'blog', '0001_initial', '2022-04-29 16:43:48.882538');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'sessions', '0001_initial', '2022-04-29 16:43:49.067517');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'blog', '0002_alter_category_options', '2022-05-01 15:15:53.865597');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'testapp', '0001_initial', '2022-05-01 15:15:54.846544');

-- Table: django_session
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('fwqxlfn4d26jz4g4ro9od07s7ikauhut', '.eJxVjEEOwiAURO_C2pAW8CMu3XuG5s8HpGpoUtqV8e7apAvdzntvXmrgdSnD2tI8jFGdVa8OvxtYHqluIN653iYtU13mEXpT9E6bvk4xPS-7-3dQuJVvDZLeEyh3cME7oDOckQkCMeQzRSuZLdg4IfhAJzl2sDFYa1wKVr0_CPY4iw:1nkUbN:jJYJfqeF-eaGjYk63nKuBu9-Eax7NzZ0chk46RmeD3s', '2022-05-13 17:40:21.215057');

-- Table: testapp_rubric
CREATE TABLE "testapp_rubric" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL UNIQUE, "lft" integer unsigned NOT NULL CHECK ("lft" >= 0), "rght" integer unsigned NOT NULL CHECK ("rght" >= 0), "tree_id" integer unsigned NOT NULL CHECK ("tree_id" >= 0), "level" integer unsigned NOT NULL CHECK ("level" >= 0), "parent_id" bigint NULL REFERENCES "testapp_rubric" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO testapp_rubric (id, name, lft, rght, tree_id, level, parent_id) VALUES (1, 'Путешествия', 1, 12, 2, 0, NULL);
INSERT INTO testapp_rubric (id, name, lft, rght, tree_id, level, parent_id) VALUES (2, 'Европа', 6, 11, 2, 1, 1);
INSERT INTO testapp_rubric (id, name, lft, rght, tree_id, level, parent_id) VALUES (3, 'Франция', 7, 8, 2, 2, 2);
INSERT INTO testapp_rubric (id, name, lft, rght, tree_id, level, parent_id) VALUES (4, 'Чехия', 9, 10, 2, 2, 2);
INSERT INTO testapp_rubric (id, name, lft, rght, tree_id, level, parent_id) VALUES (5, 'Азия', 2, 5, 2, 1, 1);
INSERT INTO testapp_rubric (id, name, lft, rght, tree_id, level, parent_id) VALUES (6, 'Япония', 3, 4, 2, 2, 5);

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: blog_post_category_id_c326dbf8
CREATE INDEX "blog_post_category_id_c326dbf8" ON "blog_post" ("category_id");

-- Index: blog_post_tags_post_id_a1c71c8a
CREATE INDEX "blog_post_tags_post_id_a1c71c8a" ON "blog_post_tags" ("post_id");

-- Index: blog_post_tags_post_id_tag_id_4925ec37_uniq
CREATE UNIQUE INDEX "blog_post_tags_post_id_tag_id_4925ec37_uniq" ON "blog_post_tags" ("post_id", "tag_id");

-- Index: blog_post_tags_tag_id_0875c551
CREATE INDEX "blog_post_tags_tag_id_0875c551" ON "blog_post_tags" ("tag_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

-- Index: testapp_rubric_parent_id_10ed3500
CREATE INDEX "testapp_rubric_parent_id_10ed3500" ON "testapp_rubric" ("parent_id");

-- Index: testapp_rubric_tree_id_ea04be81
CREATE INDEX "testapp_rubric_tree_id_ea04be81" ON "testapp_rubric" ("tree_id");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
