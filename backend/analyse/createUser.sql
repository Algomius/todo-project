-- Création de la base de données
create database apiTache;
\c apiTache;

-- Création de l'utilisateur
CREATE USER apitacheuser with password 'mdp';

-- Droit de connexion à la base de données
GRANT CONNECT ON DATABASE "apitache" to apitacheuser;

-- Privilèges pour l'utilisateur
grant usage on schema public TO apitacheuser;
grant create on schema public TO apitacheuser;
grant all privileges on all tables in schema public to apitacheuser;
grant all privileges on all sequences in schema public to apitacheuser;
grant all privileges on all functions in schema public to apitacheuser;

-- Privilège par défaut pour les prochains éléments créés
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO apitacheuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO apitacheuser;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON FUNCTIONS TO apitacheuser;


