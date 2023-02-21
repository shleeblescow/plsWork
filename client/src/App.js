import { useState, useEffect } from "react";
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import './App.css';

import Login from "./components/login";
import Navbar from "./components/navBar";
import SignUp from "./components/signUp";

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

          <Route exact path="/signup" element={
            <SignUp
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

