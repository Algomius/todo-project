-- Création de la base de données
create database apitache;
\c apitache;

-- Création de l'utilisateur
CREATE USER apitache with password 'mdp';

-- Droit de connexion à la base de données
GRANT CONNECT ON DATABASE "apitache" to apitache;

-- Privilèges pour l'utilisateur
grant usage on schema public TO apitache;
grant create on schema public TO apitache;
grant all privileges on all tables in schema public to apitache;
grant all privileges on all sequences in schema public to apitache;
grant all privileges on all functions in schema public to apitache;

-- Privilège par défaut pour les prochains éléments créés
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO apitache;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO apitache;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON FUNCTIONS TO apitache;


