from flask import Flask, render_template, request
from neo4j import GraphDatabase

app = Flask(__name__)

URI = "bolt://localhost:7687"
AUTH = ("neo4j", "password")

driver = GraphDatabase.driver(URI, auth=AUTH)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        name = request.form['name']
        results = get_person_by_name(name)
        return render_template('index.html', results=results, name = name)

    return render_template('index.html')

def get_person_by_name(name):
    query = """match (u:User {name: $name})-[:PURCHASED]->(p:Product)<-[:PURCHASED]-(peer:User)-[:PURCHASED]->(rec:Product)
    where not (u)-[:PURCHASED]->(rec)
    return rec.name as title, count(*) as count
    order by count desc
    limit 4;"""    
    with driver.session() as session:
        results = session.run(query, name=name)
        records = [record.data() for record in results]
    
    return records

if __name__ == '__main__':
    app.run(debug=True, port=8000)