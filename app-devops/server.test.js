// Importar las dependencias necesarias para tus pruebas
const request = require('supertest');
const app = require('./app'); // Asegúrate de importar correctamente tu aplicación Express

describe('Pruebas básicas de endpoint', () => {
    test('GET / debe responder con 200', async () => {
    const response = await request(app).get('/');
    expect(response.statusCode).toBe(200);
});
});
