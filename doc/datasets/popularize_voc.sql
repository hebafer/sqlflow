CREATE database IF NOT EXISTS voc;
DROP TABLE IF EXISTS voc.annotations;
CREATE TABLE voc.annotations
(
   image_id   INTEGER     NOT NULL PRIMARY KEY
  ,filename   VARCHAR(15) NOT NULL
  ,path       VARCHAR(7)  NOT NULL
  ,annotation VARCHAR(14) NOT NULL
  ,db         VARCHAR(20) NOT NULL
  ,image      VARCHAR(6)  NOT NULL
  ,width      INTEGER     NOT NULL
  ,height     INTEGER     NOT NULL
  ,depth      INTEGER     NOT NULL
  ,segmented  BIT         NOT NULL
);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (1, '2012_002611.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (2, '2012_004248.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 500, 333, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (3, '2011_001896.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 333, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (4, '2010_002713.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (5, '2008_000965.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (6, '2011_004736.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (7, '2010_004362.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (8, '2012_002639.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (9, '2011_001114.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 335, 3,
                                                                                                                             1);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (10, '2011_006121.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 375, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (11, '2008_007039.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented)VALUES (12, '2010_005732.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 375, 3,
                                                                                                                    0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (13, '2011_005428.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 417, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (14, '2008_002155.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (15, '2009_002298.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 500, 313, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (16, '2010_006207.jpg', 'VOC2010', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (17, '2011_000587.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 333, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (18, '2009_003804.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 375, 500, 3,
                                                                                                                             1);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (19, '2008_000795.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 332, 3,
                                                                                                                     1);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented)VALUES (20, '2009_003151.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 500, 375, 3,
                                                                                                                    0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (21, '2011_000550.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             1);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (22, '2010_003380.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 375, 500, 3,
                                                                                                                             1);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (23, '2012_000984.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (24, '2011_005414.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (25, '2008_000959.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (26, '2011_001699.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 333, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (27, '2009_001949.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (28, '2008_004242.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (29, '2010_003419.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 335, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (30, '2008_007788.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (31, '2011_002409.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 333, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (32, '2011_003924.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (33, '2008_003288.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (34, '2008_006482.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 411, 3,
                                                                                                                     1);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (35, '2011_003065.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (36, '2008_000756.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 322, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (37, '2012_002188.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 500, 337, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (38, '2011_001841.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented)VALUES (39, '2011_000578.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 375, 500, 3,
                                                                                                                    0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (40, '2008_007987.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 480, 360, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (41, '2008_006496.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (42, '2009_001961.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 500, 375, 3,
                                                                                                                     1);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented)VALUES (43, '2010_005083.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 445, 500, 3,
                                                                                                                    0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (44, '2011_002421.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 333, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (45, '2009_002273.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (46, '2011_006135.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (47, '2012_000947.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 375, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (48, '2011_002435.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (49, '2011_004093.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (50, '2011_003059.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (51, '2008_006441.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (52, '2011_004044.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (53, '2008_002182.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             1);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (54, '2012_003255.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 320, 480, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (55, '2008_005174.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (56, '2009_001746.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (57, '2008_000742.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 333, 500, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented)VALUES (58, '2009_003810.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 500, 375, 3,
                                                                                                                    1);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (59, '2011_005372.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 335, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (60, '2008_007993.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 418, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (61, '2011_001855.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                     1);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (62, '2010_001540.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 375, 500, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (63, '2012_001330.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 500, 328, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (64, '2011_000593.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (65, '2010_005054.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 111, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (66, '2008_001448.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 274, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (67, '2008_007950.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 309, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (68, '2010_000689.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 333, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (69, '2009_003637.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 375, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (70, '2011_000222.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                     1);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (71, '2011_002347.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 420, 500, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (72, '2011_004050.jpg', 'VOC2011', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 400, 221, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (73, '2008_008487.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (74, '2008_006327.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 400, 300, 3,
                                                                                                                     1);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (75, '2008_002814.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (76, '2011_001666.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (77, '2012_003241.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 500, 332, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (78, '2008_000971.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 376, 500, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (79, '2010_000138.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (80, '2009_001975.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 374, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (81, '2010_005068.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (82, '2010_003343.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (83, '2010_001583.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 333, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (84, '2011_001128.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (85, '2012_003533.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 375, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (86, '2009_004831.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 375, 500, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (87, '2007_002120.jpg', 'VOC2012', 'PASCAL VOC2007', 'The VOC2007 db', 'flickr', 500, 335, 3,
                                                                                                                             1);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (88, '2009_001752.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (89, '2010_006575.jpg', 'VOC2010', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (90, '2010_005929.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 352, 288, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (91, '2010_006213.jpg', 'VOC2010', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 426, 404, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (92, '2011_001100.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (93, '2011_002384.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented)VALUES (94, '2012_000748.jpg', 'VOC2012', 'PASCAL VOC2012', 'The VOC2012 db', 'flickr', 472, 500, 3,
                                                                                                                    0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (95, '2010_000110.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 333, 500, 3,
                                                                                                                             1);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (96, '2011_001672.jpg', 'VOC2012', 'PASCAL VOC2011', 'The VOC2011 db', 'flickr', 500, 375, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id,filename,path,annotation,db,image,width,height,depth,segmented) VALUES (97, '2008_005821.jpg', 'VOC2012', 'PASCAL VOC2008', 'The VOC2008 db', 'flickr', 500, 375, 3,
                                                                                                                     0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (98, '2010_004404.jpg', 'VOC2012', 'PASCAL VOC2010', 'The VOC2010 db', 'flickr', 333, 500, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (99, '2009_005246.jpg', 'VOC2012', 'PASCAL VOC2009', 'The VOC2009 db', 'flickr', 500, 306, 3,
                                                                                                                             0);
INSERT INTO voc.annotations(image_id, filename, path, annotation, db, image, width, height, depth, segmented)VALUES (100, '2009_003838.jpg', 'VOC2012', 'PASCAL VOC2009',
                                                                                                                   'The VOC2009 db', 'flickr', 500, 334, 3, 0);
DROP TABLE IF EXISTS voc.objects;
CREATE TABLE voc.objects
(
  object_id  INTEGER     NOT NULL
  ,image_id  INTEGER     NOT NULL
  ,name      VARCHAR(11) NOT NULL
  ,pose      VARCHAR(11) NOT NULL
  ,truncated VARCHAR(11) NOT NULL
  ,difficult BIT         NOT NULL
  ,xmin      INTEGER     NOT NULL
  ,ymin      INTEGER     NOT NULL
  ,xmax      INTEGER     NOT NULL
  ,ymax      INTEGER     NOT NULL
  ,PRIMARY KEY (object_id, image_id)
);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (1,1,'person','Unspecified','Unspecified',0,117,63,409,316);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (2,1,'person','Unspecified','Unspecified',0,142,43,270,248);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (2,2,'person','Unspecified','Unspecified',0,264,28,366,229);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (3,1,'bicycle','Unspecified','0',0,232,174,388,326);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (4,1,'cat','Frontal','0',0,174,150,284,222);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (5,1,'person','Frontal','1',0,246,7,500,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (5,2,'person','Frontal','1',0,1,51,332,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (6,1,'person','Unspecified','Unspecified', 0,153,170,307,364);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (7,1,'dog','Left','0',0,148,69,403,338);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (7,2,'dog','Left','0',0,137,49,296,205);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (7,3,'person','Frontal','1',1,336,1,421, 81);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (8,1,'person','Unspecified','Unspecified',0, 28,179, 101,303);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (9,1,'aeroplane','Left','0', 0,79,123,440,208);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (10,1,'person','Unspecified','Unspecified',0,1,1,321,500);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (11,1,'cat','Unspecified','0',0,33,39,462,327);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (12,1,'cat','Frontal','1',0,181,1,500,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (13,1,'person','Unspecified','Unspecified',0,59,40,159,261);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (14,1,'person','Unspecified','1',0,193,154,273,281);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (14,2,'person','Right','1',0,354,166,500,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (14,3,'person','Unspecified','1',1,294,150,310,171);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (15,1,'bird','Right','0',0,14,40,471,266);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (16,1,'person','Unspecified', 'Unspecified',0,233,84,329,295);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (16,2,'person','Unspecified','Unspecified',0,340,83,392,298);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (17,1,'person','Frontal','1',0,60,138,165,486);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (17, 2,'person','Frontal','0',0,132,193,215,340);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (18,1,'horse','Frontal','0',0,125,96,335,442);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (19,1,'person','Frontal','1',0,1, 82,232, 332);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (19,2,'person','Frontal','1',0,187, 94,323,332);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (19,3,'person','Frontal','1',0,291,126,500, 331);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (19,4,'bottle','Unspecified','1',0,216,291, 252,332);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (20,1,'bird','Unspecified','1',0,225,81,372,130);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (21,1,'sofa','Unspecified','0',0,126,105,500,343);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (22,1,'horse','Unspecified','1',0, 1,39,355,500);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (23,1,'person','Unspecified','Unspecified',0,127,68,436,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (24,1,'person','Unspecified','Unspecified',0,299,235,397,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (25,1, 'car','Unspecified','0',0,26,78,496,338);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (25,2,'person', 'Rear','0',0,124,19,160,111);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (26,1,'aeroplane','Unspecified','0',0,40,84,449,253);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (27,1,'boat','Unspecified','0',0,7,210,488,273);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (28,1,'boat', 'Right','0',0,35,22,427,179);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (28,2,'person','Frontal','1', 0,252,92,500,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (29,1,'bird','Frontal','1',0,1,9,500,334);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (30,1,'bird','Right','1',0,1,34,372,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (31,1,'cat','Frontal','1',0,116, 1,252,118);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (32,1,'person','Unspecified','Unspecified',0,1,12,398,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (32,2,'person','Unspecified','Unspecified',0,257,51,495,369);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (33,1,'person','Frontal','1',0,130,127,451,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (34,1,'chair','Left','0',1,155,321,233,411);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (34,2,'diningtable','Unspecified','0',0,1,341,201,411);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (35,1,'bus','Unspecified','0',0,207,188,241,216);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (35,2,'car','Unspecified','0',0,88,206,117,224);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (35,3,'car','Unspecified','0',1,249,204,263,217);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (35,4,'car','Unspecified','0',1,279,196,287,211);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (35,5,'car','Left','0',0,271,209,376,244);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (35,6,'car','Rear','1',1,299,205,315,220);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (36,1,'aeroplane','Right','0',0,368,215,476,253);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (36,2,'aeroplane','Right','1',0,1,99,425,265);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (37,1,'person','Unspecified','Unspecified',0,217,160,415,337);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (37,2,'person','Unspecified','Unspecified',0,106,107,200,248);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (37,3,'person','Unspecified','Unspecified',0,1,20,132,307);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (37,4,'person','Unspecified','Unspecified',0,349,87,500,223);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (38,1,'cat','Right','1',0,1,49,313,348);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (39,1,'dog','Frontal','0',0,59,86,347,414);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (40,1,'tvmonitor','Frontal','1',0,130,1,296,113);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (41,1,'cow','Frontal','0',0,214,144,345,323);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (41,2,'cow','Frontal','0',0,139,115,233,238);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (41,3,'person','Frontal','1',0,278,49,313,104);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (42,1,'tvmonitor','Frontal','0',0,96,20,357,211);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (42,2,'sofa','Frontal','1',0,377,87,500,331);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (43,1,'dog','Frontal','0',0,17,23,430,500);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (44,1,'boat','Unspecified','0',0,48,22,399,262);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (45,1,'person','Unspecified','1',0,1,74,97,297);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (45,2,'dog','Unspecified','0',0,187,113,374,291);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (46,1,'person','Unspecified','Unspecified',0,391,144,470,315);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (47,1,'person','Unspecified','Unspecified',0,118,2,341,457);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (48,1,'sofa','Unspecified','1',1,23,56,500,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (48,2,'person','Unspecified','1',1,153,184,500,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (48,3,'person','Unspecified','1',0,2,88,332,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (49,1,'person','Unspecified','Unspecified',0,273,84,332,261);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (49,2,'person','Unspecified','Unspecified',0,140,58,228,225);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (50,1,'train','Frontal','0',0,89,18,346,341);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (51,1,'motorbike','Right','0',0,8,21,407,319);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (51,2,'pottedplant','Unspecified','1',0,147,45,255,136);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (51,3,'person','Left','1',0,371,120,500,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (52,1,'person','Unspecified','Unspecified',0,220,143,337,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (52,2,'person','Unspecified','Unspecified',0,102,187,214,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (53,1,'cat','Frontal','0',0,223,40,337,371);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (54,1,'person','Unspecified','Unspecified',0,67,104,235,420);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (55,1,'dog','Frontal','1',0,250,39,356,211);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (55,2,'person','Frontal','1',1,371,1,500,226);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (56,1,'sofa','Unspecified','0',0,17,200,500,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (57,1,'person','Frontal','0',0,137,30,313,500);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (57,2,'person','Frontal','1',0,23,21,312,500);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (58,1,'dog','Unspecified','0',0,77,84,488,346);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (59,1,'person','Unspecified','Unspecified',0,200,283,233,356);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (60,1,'bicycle','Unspecified','0',0,77,121,452,392);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (60,2,'person','Unspecified','0',0,47,63,238,311);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (61,1,'dog','Frontal','0',0,63,7,433,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (62,1,'bicycle','Unspecified','1',0,1,1,375,500);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (63,1,'person','Unspecified','Unspecified',0,451,153,495,222);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (63,2,'person','Unspecified','Unspecified',0,349,154,393,213);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (63,3,'person','Unspecified','Unspecified',0,22,122,57,199);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (64,1,'person','Unspecified','1',0,161,118,410,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (65,1,'tvmonitor','Unspecified','0',0,86,34,121,70);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (65,2,'sofa','Left','1',0,318,42,427,111);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (65,3,'sofa','Unspecified','1',0,1,70,98,111);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (66,1,'aeroplane','Rear','0',0,332,126,469,169);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (66,2,'aeroplane','Rear','0',0,1,89,298,169);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (67,1,'sofa','Unspecified','1',1,108,128,297,354);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (67,2,'person','Unspecified','0',0,103,20,291,483);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (67,3,'person','Frontal','1',0,64,122,147,263);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (67,4,'person','Unspecified','1',0,1,75,81,239);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (68,1,'car','Unspecified','1',0,38,1,168,76);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (68,2,'car','Unspecified','1',0,1,89,63,181);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (68,3,'bus','Unspecified','1',0,109,1,395,223);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (68,4,'bus','Unspecified','1',0,245,1,500,333);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (69,1,'horse','Frontal','0',0,92,11,248,381);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (69,2,'person','Frontal','0',0,104,33,283,273);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (70,1,'bird','Unspecified','0',0,145,61,343,366);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (71,1,'cat','Left','1',0,2,9,419,440);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (71,2,'bird','Unspecified','0',0,15,343,356,485);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (72,1,'person','Unspecified','Unspecified',0,190,102,264,221);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (73,1,'horse','Unspecified','0',0,71,167,235,328);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (73,2,'person','Left','0',0,307,109,371,340);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (73,3,'person','Frontal','0',0,309,125,347,217);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (74,1,'sheep','Left','0',0,232,117,393,286);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (74,2,'sheep','Right','0',0,6,71,188,199);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (74,3,'sheep','Unspecified','0',0,198,75,340,170);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (74,4,'sheep','Rear','0',0,167,46,251,223);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (75,1,'dog','Unspecified','1',0,1,30,500,316);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (76,1,'chair','Rear','0',0,23,180,150,349);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (77,1,'person','Unspecified','Unspecified',0,81,157,135,233);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (78,1,'person','Frontal','0',0,129,255,159,352);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (78,2,'person','Frontal','0',0,153,248,187,347);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (78,3,'person','Rear','0',0,190,261,221,348);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (79,1,'horse','Right','0',0,432,183,475,229);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (79,2,'horse','Left','0',0,205,178,264,237);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (79,3,'horse','Left','0',0,9,175,93,233);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (80,1,'pottedplant','Unspecified','0',0,1,21,374,481);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (81,1,'bird','Unspecified','1',0,13,89,425,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (82,1,'sheep','Right','0',0,68,122,264,232);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (82,2,'sheep','Rear','0',0,325,129,500,298);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (83,1,'aeroplane','Right','0',0,21,85,482,212);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (84,1,'cat','Left','0',0,85,76,500,339);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (85,1,'person','Unspecified','Unspecified',0,103,3,312,485);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (86,1,'bicycle','Unspecified','1',0,137,267,337,500);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (86,2,'person','Frontal','1',0,103,59,340,500);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (86,3,'bicycle','Unspecified','0',0,289,162,320,206);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (86,4,'person','Frontal','0',0,121,142,143,196);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (87,1,'bird','Unspecified','0',0,228,35,347,90);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (87,2,'person','Unspecified','0',0,64,24,496,334);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (88,1,'bus','Right','0',0,77,70,382,223);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (89,1,'person','Unspecified','Unspecified',0,31,93,198,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (89,2,'person','Unspecified','Unspecified',0,159,148,376,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (89,3,'person','Unspecified','Unspecified',0,335,65,454,375);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (90,1,'dog','Left','0',0,62,31,307,273);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (91,1,'person','Unspecified','Unspecified',0,229,111,276,232);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (92,1,'person','Frontal','1',0,150,124,351,322);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (92,2,'car','Frontal','1',1,178,258,199,271);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (93,1,'bus','Left','0',0,28,157,397,246);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (93,2,'car','Unspecified','0',0,305,217,494,316);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (93,3,'car','Left','1',0,433,208,500,249);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (94,1,'person','Unspecified','Unspecified',0,157,42,280,277);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (95,1,'dog','Unspecified','1',0,95,59,333,420);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (95,2,'person','Unspecified','1',1,63,1,333,388);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (96,1,'person','Unspecified','0',0,27,29,179,348);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (97,1,'bird','Unspecified','1',0,1,1,438,333);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (98,1,'aeroplane','Unspecified','0',0,67,125,277,383);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (99,1,'train','Unspecified','0',0,131,122,364,239);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (100,1,'car','Rear','0',0,342,243,377,276);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (100,2,'car','Rear','0',0,322,266,364,299);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (100,3,'car','Unspecified','1',0,1,261,25,296);
INSERT INTO voc.objects(image_id, object_id, name, pose, truncated, difficult, xmin, ymin, xmax, ymax)VALUES (100,4,'car','Left','1',0,403,314,500,334);