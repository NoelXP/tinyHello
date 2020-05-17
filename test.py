from hello import app
with app.test_client() as c:
	response = c.get('/hello')
	assert response.data == b'Hello, World!'
	assert response.status_code == 200