
# Define the base URLs for the frontend and backend services
FRONTEND_URL = "http://localhost:5001"
BACKEND_URL = "http://localhost:5002/api"

def test_frontend():
    """Test the frontend service."""
    response = requests.get(FRONTEND_URL)
    assert response.status_code == 200
    assert "Hello from the Frontend!" in response.text

def test_backend():
    """Test the backend service."""
    response = requests.get(BACKEND_URL)
    assert response.status_code == 200
    assert "Hello from the Backend!" in response.text