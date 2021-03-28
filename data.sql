CREATE DATABASE recyclinator;

USE recyclinator;

CREATE TABLE IF NOT EXISTS objects (object_name STRING, waste_type STRING, common_components STRING[], recycle STRING, PRIMARY KEY (object_name));

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('bicycle', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('car', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('motorcycle', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('airplane', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('bus', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('train', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('truck', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('boat', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('traffic light', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('fire hydrant', 'metal waste', ARRAY['metal', 'rubber', 'plastic', 'glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('stop sign', 'metal waste', ARRAY['metal'], 'recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('parking meter', 'metal waste', ARRAY['metal','plastic', 'glass'], 'recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('bench', 'solid waste', ARRAY['metal', 'wood', 'plastic', 'marble'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('backpack', 'solid waste', ARRAY['Fibre', 'rubber', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('umbrella', 'solid waste', ARRAY['metal', 'fibre', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('handbag', 'solid waste', ARRAY['Fibre', 'rubber', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('tie', 'solid waste', ARRAY['fibre', 'rubber', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('suitcase', 'solid waste', ARRAY['Fibre', 'rubber', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('frisbee', 'solid waste', ARRAY['Fibre', 'rubber', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('skis', 'solid waste', ARRAY['wood', 'rubber', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('snowboard', 'solid waste', ARRAY['metal', 'rubber', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('sportsball', 'solid waste', ARRAY['rubber', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('kite', 'solid waste', ARRAY['Fibre','plastic','paper'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('baseball bat', 'solid waste', ARRAY['wood', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('baseball glove', 'solid waste', ARRAY['Fibre', 'rubber'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('skateboard', 'solid waste', ARRAY['wood', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('surfboard', 'solid waste', ARRAY['plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('tennis racket', 'solid waste', ARRAY['wood', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('bottle', 'solid waste', ARRAY['glass','metal', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('wine glass', 'solid waste', ARRAY['glass'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('cup', 'solid waste', ARRAY['glass','metal','plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('fork', 'solid waste', ARRAY['glass','metal','wood', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('knife', 'solid waste', ARRAY['metal', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('spoon', 'solid waste', ARRAY['glass','metal','wood', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('bowl', 'solid waste', ARRAY['glass','metal','wood', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('banana', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('apple', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('sandwich', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('orange', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('broccoli', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('carrot', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('hot dog', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('pizza', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('donut', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('cake', 'organic waste', ARRAY['organic'], 'decompose or dispose separately as organic waste');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('chair', 'reusable waste', ARRAY['wood', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('couch', 'resuable waste', ARRAY['rubber','sponge','wood', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('potted plant', 'organic waste', ARRAY['mud', 'organic'], 'donate');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('bed', 'reusable waste', ARRAY['rubber','sponge','wood', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('dining table', 'reusable waste', ARRAY['wood', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('toilet', 'solid waste', ARRAY['ceramic', 'plastic','metal'], 'recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('tv', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('laptop', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('mouse', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('remote', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('keyboard', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('cell phone', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('microwave', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('oven', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('toaster', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('sink', 'solid waste', ARRAY['ceramic', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('refrigerator', 'electronic waste', ARRAY['wood', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('book', 'solid waste', ARRAY['paper', 'plastic'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('clock', 'electronic waste', ARRAY['glass','wood', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('vase', 'solid waste', ARRAY['ceramic','wood', 'plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('scissors', 'solid waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('teddy bear', 'solid waste', ARRAY['fibre','plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('hair dryer', 'electronic waste', ARRAY['plastic','metal'], 'donate or recycle');

INSERT INTO objects (object_name, waste_type, common_components, recycle) VALUES ('toothbrush', 'solid waste', ARRAY['wood', 'plastic','metal'], 'donate or recycle');

SELECT * FROM objects;