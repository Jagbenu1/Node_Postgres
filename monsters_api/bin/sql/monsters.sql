CREATE TABLE monsters (
    id serial,
    name varchar(50),
    personality varchar(50)
);

CREATE TABLE habitats(
    id serial,
    name varchar(50),
    climate varchar(50),
    temperature int
);

CREATE TABLE lives(
    monster varchar(50),
    habitat varchar(50)
);

CREATE TABLE aliens(
    id serial,
    name varchar(50),
    personality varchar(50)
);

CREATE TABLE enemies(
    monster varchar(50),
    alien varchar(50)
);

INSERT INTO monsters(name, personality)
VALUES 
('Fluffy', 'aggressive'),
('Noodles', 'impatient'),
('Rusty', 'passionate'),
('Loba', 'adventurous');

INSERT INTO habitats(name, climate, temperature)
VALUES
('desert', 'dry', 100),
('forest', 'haunted', 70),
('mountain', 'icy', 30),
('tide pools', 'humid', 60);

INSERT INTO lives(monster, habitat)
VALUES
('fluffy', 'desert'),
('noodles', 'forest'),
('rusty', 'mountain'),
('loba', 'tide pools');

INSERT INTO aliens(name, personality)
VALUES
('Zix-Zax', 'peaceful'),
('Blexix', 'patient'),
('Zyx', 'placid'),
('Grazz', 'cautious');

INSERT INTO enemies(monster, alien)
VALUES
('fluffy','zix-zax'),
('noodles','blexix'),
('rusty','zyx'),
('loba','grazz');