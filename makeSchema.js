const gql = require("graphql");
const fs = require("fs").promises;

async function getSchemaJson() {
    // TODO actually do an introspection query here
    const rawSchema = await fs.readFile("schema.json");
    return JSON.parse(rawSchema);
}

async function main() {
    const schemaJson = await getSchemaJson();
    const schema = gql.printSchema(gql.buildClientSchema(schemaJson.data))
    console.log(schema)
}

main();
