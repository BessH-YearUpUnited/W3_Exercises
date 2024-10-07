# Create rewards table:
-- CREATE TABLE rewards (
--     RewardsID INT PRIMARY KEY AUTO_INCREMENT,
--     RewardsCardNum INT UNIQUE,
--     MemberLevel ENUM('bronze', 'silver', 'gold') DEFAULT 'bronze'
-- );

# Removed some records as might do for membership cancellations:
-- DELETE FROM rewards
-- WHERE RewardsID = 6 OR RewardsID = 7 OR RewardsID = 8;

# Insert new member records:
-- INSERT INTO rewards (MemberLevel, RewardsCardNum) VALUES ('gold',542137077), ('bronze',542137099);



# Simple WHERE clauses:

SELECT * FROM rewards WHERE MemberLevel = 'gold';

SELECT * FROM rewards WHERE RewardsCardNum >= 654987321;

SELECT * FROM rewards WHERE RewardsCardNum BETWEEN 542136987 AND 654987321;

SELECT * FROM rewards WHERE MemberLevel LIKE '%o%';



# WHERE with multiple conditions:

SELECT * FROM rewards
WHERE MemberLevel IN ('gold')
    AND RewardsCardNum LIKE '1%';


# AND versus AND NOT

-- all records:
SELECT * from rewards;

-- version 1, one condition:
SELECT * FROM rewards WHERE RewardsCardNum >= 650000000;

-- version 2, with AND:
SELECT * FROM rewards
WHERE RewardsCardNum >= 650000000 AND MemberLevel = 'gold';

-- version 3, with AND NOT:
SELECT * FROM rewards
WHERE RewardsCardNum >= 650000000 AND NOT MemberLevel = 'gold';

-- compare with OR NOT:
SELECT * FROM rewards
WHERE RewardsCardNum >= 650000000 OR NOT MemberLevel = 'gold';

-- compare with XOR:
SELECT * FROM rewards
WHERE RewardsCardNum >= 650000000 XOR MemberLevel = 'gold';

