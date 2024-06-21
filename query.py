from neo4j import GraphDatabase

URI = "bolt://localhost:7687"  # Replace with your database URI
AUTH = ("neo4j", "password")  # Replace with your username and password

with GraphDatabase.driver(URI, auth=AUTH) as driver:
    driver.verify_connectivity()
    print("Connection estabilished.")

query = "MATCH (p:Person {age: $age}) RETURN p.name AS name"

query = """match (u:User {name: $name})-[:PURCHASED]->(p:Product)<-[:PURCHASED]-(peer:User)-[:PURCHASED]->(rec:Product)
where not (u)-[:PURCHASED]->(rec)
return rec.name as title, count(*) as count
order by count desc"""

with driver.session() as session:
    results = session.run(query, name='Alice')
    records = [record.data() for record in results]
    
    print(type(records))
    print(records)

driver.close()