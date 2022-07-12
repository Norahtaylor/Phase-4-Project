import logo from '../logo.svg';
import '../App.css';
import {useEffect, useState} from 'react';
import Header from './Header';
import Login from './Login';
import Home from './Home'


function App() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/me").then((response) => {
      if (response.ok) {
        response.json().then((user) => setUser(user));
      }
    });
  }, []);
  if(user) {
    return <h2>Welcome, {user.username}</h2>
  } 

  function handleLogin(user) {
    setUser(user);
  }

  function handleLogout() {
    setUser(null);
  }

  return (
    <div >
      <Header user={user} onLogout={handleLogout}/>
      <Home />
      <Login onLogin={handleLogin} />
    </div>
  );
}

export default App;
