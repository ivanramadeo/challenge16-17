const request = require('supertest');
const app = require('./server'); 

describe('Pruebas básicas de endpoint', () => {
    let server;

  // Antes de todas las pruebas, inicia el servidor
    beforeAll((done) => {
    server = app.listen(3000, done);
    });

    test('GET / debe responder con 200', async () => {
    const response = await request(server).get('/');
    expect(response.statusCode).toBe(200);
    });

  // Después de todas las pruebas, cierra el servidor
    afterAll((done) => {
    server.close(done);
    });
});
