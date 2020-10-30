module.exports = {
    client: "sqlite3",
    connection: {
        // filename: "./database.sqlite3",
        filename: "./sqldatabase.sqlite",
    },
    migrations: {
        directory: "migrations",
    },
    useNullAsDefault: true,
};
