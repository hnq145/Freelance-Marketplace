-- Users table (Freelancers)
CREATE TABLE IF NOT EXISTS freelancers (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    skills TEXT, -- Comma separated or JSON
    bio TEXT,
    hourly_rate DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Companies table
CREATE TABLE IF NOT EXISTS companies (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    description TEXT,
    website VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Jobs/Projects table
CREATE TABLE IF NOT EXISTS projects (
    id SERIAL PRIMARY KEY,
    company_id INT REFERENCES companies(id),
    title VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,
    budget DECIMAL(10, 2),
    status VARCHAR(20) DEFAULT 'OPEN', -- OPEN, IN_PROGRESS, COMPLETED
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Proposals/Bids table
CREATE TABLE IF NOT EXISTS proposals (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id),
    freelancer_id INT REFERENCES freelancers(id),
    bid_amount DECIMAL(10, 2) NOT NULL,
    cover_letter TEXT,
    status VARCHAR(20) DEFAULT 'PENDING', -- PENDING, ACCEPTED, REJECTED
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
