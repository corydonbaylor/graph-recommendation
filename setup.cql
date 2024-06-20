CREATE
  (a:User {name: 'Alice'}),
  (b:User {name: 'Bob'}),
  (c:User {name: 'Charlie'}),
  (d:User {name: 'David'}),
  (e:User {name: 'Eve'}),
  (f:User {name: 'Frank'}),
  (g:User {name: 'George'}),
  (h:User {name: 'Hannah'}),
  (i:User {name: 'Ivan'}),
  (j:User {name: 'Jessica'}),
  (k:User {name: 'Kevin'}),
  (l:User {name: 'Lily'}),
  (m:User {name: 'Michael'}),
  (n:User {name: 'Natalie'}),
  (o:User {name: 'Oliver'});
CREATE
  (a:Product {name: 'Book A'}),
  (b:Product {name: 'Book B'}),
  (c:Product {name: 'Book C'}),
  (d:Product {name: 'Book D'}),
  (e:Product {name: 'Book E'}),
  (f:Product {name: 'Book F'}),
  (g:Product {name: 'Book G'}),
  (h:Product {name: 'Book H'}),
  (i:Product {name: 'Book I'}),
  (j:Product {name: 'Book J'}),
  (k:Product {name: 'Book K'}),
  (l:Product {name: 'Book L'}),
  (m:Product {name: 'Book M'}),
  (n:Product {name: 'Book N'}),
  (o:Product {name: 'Book O'}),
  (p:Product {name: 'Book P'}),
  (q:Product {name: 'Book Q'}),
  (r:Product {name: 'Book R'}),
  (s:Product {name: 'Book S'}),
  (t:Product {name: 'Book T'}),
  (u:Product {name: 'Book U'});

MATCH (u:User {name: 'Alice'})
MATCH (p:Product)
WHERE p.name IN ['Book A', 'Book B', 'Book C', 'Book D']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Bob'})  
MATCH (p:Product)
WHERE p.name IN ['Book B', 'Book C', 'Book D', 'Book E']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Charlie'})
MATCH (p:Product)
WHERE p.name IN ['Book C', 'Book D', 'Book E', 'Book F']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'David'})
MATCH (p:Product)
WHERE p.name IN ['Book D', 'Book E', 'Book F', 'Book G']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Eve'})
MATCH (p:Product)
WHERE p.name IN ['Book E', 'Book F', 'Book G', 'Book H']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Frank'})
MATCH (p:Product)
WHERE p.name IN ['Book A', 'Book B', 'Book C', 'Book I']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'George'})
MATCH (p:Product)
WHERE p.name IN ['Book B', 'Book C', 'Book D', 'Book J']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Hannah'})
MATCH (p:Product)
WHERE p.name IN ['Book C', 'Book D', 'Book E', 'Book K']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Ivan'})
MATCH (p:Product)
WHERE p.name IN ['Book D', 'Book E', 'Book F', 'Book L']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Jessica'})
MATCH (p:Product)
WHERE p.name IN ['Book E', 'Book F', 'Book G', 'Book M']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Kevin'})
MATCH (p:Product)
WHERE p.name IN ['Book F', 'Book G', 'Book H', 'Book N']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Lily'})
MATCH (p:Product)
WHERE p.name IN ['Book G', 'Book H', 'Book I', 'Book O']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Michael'})
MATCH (p:Product)
WHERE p.name IN ['Book H', 'Book I', 'Book J', 'Book P']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Natalie'})
MATCH (p:Product)
WHERE p.name IN ['Book I', 'Book J', 'Book K', 'Book Q']
CREATE (u)-[:PURCHASED]->(p);

MATCH (u:User {name: 'Oliver'})
MATCH (p:Product)
WHERE p.name IN ['Book J', 'Book K', 'Book L', 'Book R']
CREATE (u)-[:PURCHASED]->(p);