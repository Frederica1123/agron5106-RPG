SHOW databases;
USE group_rpg;
DESCRIBE Posts;

SELECT * FROM Posts;

### for later counting - ERROR!!! ###
ALTER TABLE Posts
  ADD HelpCount int Not Null;
 
### check the earliest and latest date ###
SELECT Tags, CreationDate FROM Posts
ORDER BY CreationDate DESC;

SELECT Tags, CreationDate FROM Posts
ORDER BY CreationDate ASC;

#######
##dnd##
#######

### COUNT(SELECT dnd_2023) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dnd|dungeons-and-dragons' AND
CreationDate BETWEEN '2023.01.01 00:00:00' AND '2023.12.31 23:59:59'
#ORDER BY CreationDate DESC;
ORDER BY CreationDate ASC) AS sub_dnd_2023;

### COUNT(SELECT dnd_2022) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dnd|dungeons-and-dragons' AND
CreationDate BETWEEN '2022.01.01 00:00:00' AND '2022.12.31 23:59:59'
#ORDER BY CreationDate DESC;
ORDER BY CreationDate ASC) AS sub_dnd_2022;

### COUNT(SELECT dnd_2021) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dnd|dungeons-and-dragons' AND
CreationDate BETWEEN '2021.01.01 00:00:00' AND '2021.12.31 23:59:59'
#ORDER BY CreationDate DESC;
ORDER BY CreationDate ASC) AS sub_dnd_2021;

### COUNT(SELECT dnd_2020) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dnd|dungeons-and-dragons' AND
CreationDate BETWEEN '2020.01.01 00:00:00' AND '2020.12.31 23:59:59'
#ORDER BY CreationDate DESC;
ORDER BY CreationDate ASC) AS sub_dnd_2020;

### COUNT(SELECT dnd_2019) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dnd|dungeons-and-dragons' AND
CreationDate BETWEEN '2019.01.01 00:00:00' AND '2019.12.31 23:59:59'
#ORDER BY CreationDate DESC;
ORDER BY CreationDate ASC) AS sub_dnd_2019;

##############
##PathFinder##
##############

### COUNT(SELECT PathFinder_2023) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'PathFinder' AND
CreationDate BETWEEN '2023.01.01 00:00:00' AND '2023.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS sub_PathFinder_2023;

### COUNT(SELECT PathFinder_2022) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'PathFinder' AND
CreationDate BETWEEN '2022.01.01 00:00:00' AND '2022.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS sub_PathFinder_2022;

### COUNT(SELECT PathFinder_2021) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'PathFinder' AND
CreationDate BETWEEN '2021.01.01 00:00:00' AND '2021.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS sub_PathFinder_2021;

### COUNT(SELECT PathFinder_2020) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'PathFinder' AND
CreationDate BETWEEN '2020.01.01 00:00:00' AND '2020.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS sub_PathFinder_2020;

### COUNT(SELECT PathFinder_2019) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'PathFinder' AND
CreationDate BETWEEN '2019.01.01 00:00:00' AND '2019.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS sub_PathFinder_2019;

#####################
##world-of-darkness##
#####################

### COUNT(SELECT world-of-darkness_2023) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'world-of-darkness' AND
CreationDate BETWEEN '2023.01.01 00:00:00' AND '2023.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS world_of_darkness_2023;

### COUNT(SELECT world-of-darkness_2022) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'world-of-darkness' AND
CreationDate BETWEEN '2022.01.01 00:00:00' AND '2022.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS world_of_darkness_2022;

### COUNT(SELECT world-of-darkness_2021) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'world-of-darkness' AND
CreationDate BETWEEN '2021.01.01 00:00:00' AND '2021.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS world_of_darkness_2021;

### COUNT(SELECT world-of-darkness_2020) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'world-of-darkness' AND
CreationDate BETWEEN '2020.01.01 00:00:00' AND '2020.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS world_of_darkness_2020;

### COUNT(SELECT world-of-darkness_2019) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'world-of-darkness' AND
CreationDate BETWEEN '2019.01.01 00:00:00' AND '2019.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS world_of_darkness_2019;

##########################
##chronicles-of-darkness##
##########################

### COUNT(SELECT chronicles-of-darkness_2023) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'chronicles-of-darkness' AND
CreationDate BETWEEN '2023.01.01 00:00:00' AND '2023.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS chronicles_of_darkness_2023;

### COUNT(SELECT chronicles-of-darkness_2022) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'chronicles-of-darkness' AND
CreationDate BETWEEN '2022.01.01 00:00:00' AND '2022.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS chronicles_of_darkness_2022;

### COUNT(SELECT chronicles-of-darkness_2021) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'chronicles-of-darkness' AND
CreationDate BETWEEN '2021.01.01 00:00:00' AND '2021.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS chronicles_of_darkness_2021;

### COUNT(SELECT chronicles-of-darkness_2020) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'chronicles-of-darkness' AND
CreationDate BETWEEN '2020.01.01 00:00:00' AND '2020.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS chronicles_of_darkness_2020;

### COUNT(SELECT chronicles-of-darkness_2019) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'chronicles-of-darkness' AND
CreationDate BETWEEN '2019.01.01 00:00:00' AND '2019.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS chronicles_of_darkness_2019;

##########################
##vampire-the-masquerade##
##########################

### COUNT(SELECT vampire-the-masquerade_2023) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'vampire-the-masquerade' AND
CreationDate BETWEEN '2023.01.01 00:00:00' AND '2023.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2023;

### COUNT(SELECT vampire-the-masquerade_2022) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'vampire-the-masquerade' AND
CreationDate BETWEEN '2022.01.01 00:00:00' AND '2022.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2022;

### COUNT(SELECT vampire-the-masquerade_2021) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'vampire-the-masquerade' AND
CreationDate BETWEEN '2021.01.01 00:00:00' AND '2021.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2021;

### COUNT(SELECT vampire-the-masquerade_2020) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'vampire-the-masquerade' AND
CreationDate BETWEEN '2020.01.01 00:00:00' AND '2020.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2020;

### COUNT(SELECT vampire-the-masquerade_2019) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'vampire-the-masquerade' AND
CreationDate BETWEEN '2019.01.01 00:00:00' AND '2019.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2019;

###########################
##mutants-and-masterminds##
###########################

### COUNT(SELECT mutants-and-masterminds_2023) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'mutants-and-masterminds' AND
CreationDate BETWEEN '2023.01.01 00:00:00' AND '2023.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2023;

### COUNT(SELECT mutants-and-masterminds_2022) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'mutants-and-masterminds' AND
CreationDate BETWEEN '2022.01.01 00:00:00' AND '2022.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2022;

### COUNT(SELECT mutants-and-masterminds_2021) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'mutants-and-masterminds' AND
CreationDate BETWEEN '2021.01.01 00:00:00' AND '2021.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2021;

### COUNT(SELECT mutants-and-masterminds_2020) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'mutants-and-masterminds' AND
CreationDate BETWEEN '2020.01.01 00:00:00' AND '2020.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2020;

### COUNT(SELECT mutants-and-masterminds_2019) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'mutants-and-masterminds' AND
CreationDate BETWEEN '2019.01.01 00:00:00' AND '2019.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS vampire_the_masquerade_2019;

#################
##dungeon-world##
#################

### COUNT(SELECT dungeon-world_2023) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dungeon-world' AND
CreationDate BETWEEN '2023.01.01 00:00:00' AND '2023.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS dungeon_world_2023;

### COUNT(SELECT dungeon-world_2022) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dungeon-world' AND
CreationDate BETWEEN '2022.01.01 00:00:00' AND '2022.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS dungeon_world_2022;

### COUNT(SELECT dungeon-world_2021) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dungeon-world' AND
CreationDate BETWEEN '2021.01.01 00:00:00' AND '2021.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS dungeon_world_2021;

### COUNT(SELECT dungeon-world_2020) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dungeon-world' AND
CreationDate BETWEEN '2020.01.01 00:00:00' AND '2020.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS dungeon_world_2020;

### COUNT(SELECT dungeon-world_2019) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'dungeon-world' AND
CreationDate BETWEEN '2019.01.01 00:00:00' AND '2019.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS dungeon_world_2019;

#############
##shadowrun##
#############

### COUNT(SELECT shadowrun_2023) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'shadowrun' AND
CreationDate BETWEEN '2023.01.01 00:00:00' AND '2023.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS shadowrun_2023;

### COUNT(SELECT shadowrun_2022) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'shadowrun' AND
CreationDate BETWEEN '2022.01.01 00:00:00' AND '2022.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS shadowrun_2022;

### COUNT(SELECT shadowrun_2021) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'shadowrun' AND
CreationDate BETWEEN '2021.01.01 00:00:00' AND '2021.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS shadowrun_2021;

### COUNT(SELECT shadowrun_2020) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'shadowrun' AND
CreationDate BETWEEN '2020.01.01 00:00:00' AND '2020.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS shadowrun_2020;

### COUNT(SELECT shadowrun_2019) ###
SELECT COUNT(CreationDate) FROM(
SELECT Tags, CreationDate FROM Posts
WHERE Tags REGEXP 'shadowrun' AND
CreationDate BETWEEN '2019.01.01 00:00:00' AND '2019.12.31 23:59:59'
#ORDER BY CreationDate DESC
ORDER BY CreationDate ASC) AS shadowrun_2019;
