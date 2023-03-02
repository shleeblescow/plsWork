import { useState, useEffect } from "react";
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import './App.css';

import Login from "./components/login";
import Navbar from "./components/navBar";
import SignUp from "./components/signUp";
import MainRunPage from "./components/mainRunPage";

function App() {

  const [errors, setErrors] = useState(false)
  const [currentRunner, setCurrentRunner] = useState(false)
  const [allRuns, setAllRuns] = useState([])
  const [allJoins, setAllJoins] = useState([])

  useEffect(() => {
    fetch("/authorized_runner")
    .then((res) => {
      if (res.ok) {
        res.json()
        .then((runner) => {
          console.log('access granted')
          updateRunner(runner)
          fetchRuns()
          fetchJoins()

        });
      } else {
        console.log('not authorized')
      }
    })
  },[])

  const fetchRuns = () => {
    fetch('/runs')
    .then(res => {
      if(res.ok){
        res.json().then((runs) => { 
          setAllRuns(runs)
          // console.log(runs)
      })
      }else {
        res.json().then(data => setErrors(data.error))
      }
    })
  }

  const fetchJoins = () => {
    fetch('/run_runner_joins')
    .then(res => {
      if(res.ok){
        res.json().then((joins) => { 
          setAllJoins(joins)
      })
      }else {
        res.json().then(data => setErrors(data.error))
      }
    })
  }



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

          <Route exact path = 'runs' element={
            <MainRunPage
              fetchRuns={fetchRuns}
              allRuns={allRuns}
              currentRunner={currentRunner}
              fetchJoins={fetchJoins}
              allJoins={allJoins}
            />
          }/>

        </Routes>
      </div>
    </Router>
  );

}

export default App;

