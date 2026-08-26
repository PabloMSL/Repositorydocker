from sample_app import sample

def test_home_status_200():
    cliente = 
    respuesta = cliente.get('/')
    assert respuesta.status_code == 200 