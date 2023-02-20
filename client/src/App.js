import { useState, useEffect } from "react";
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import './App.css';

import Login from "./components/login";
import Navbar from "./components/navBar";

function App() {

  const [currentRunner, setCurrentRunner] = useState(false)

  useEffect(() => {
    fetch("/authorized_runner")
    .then((res) => {
      if (res.ok) {
        res.json()
        .then((runner) => {
          console.log('access granted')
          console.log(runner)
          updateRunner(runner);
        });
      } else {
        console.log('not authorized')
      }
    })
  },[])

  const updateRunner = (runner) => setCurrentRunner(runner)

  return (
    <Router>

      {currentRunner ?
          <Navbar
            currentRunner={currentRunner}
            setCurrentRunner={setCurrentRunner}
          />
          :
            //<h2>{"log in to get dirty (and flirty??)"}</h2>
          <></>
      }

      <br/>
      <div className="App">
        <Routes>
        <Route exact path="/" element={
            <Login
              onUpdateRunner={updateRunner}
            />
          }/>
          <Route exact path="/hipa" element={
            <h1>mornin pa</h1>
          }/>
        </Routes>
      </div>
    </Router>
  );

}

export default App;

