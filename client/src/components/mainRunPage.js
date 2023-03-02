import React, {useState, useEffect} from 'react'
import {v4 as uuid} from "uuid";

import RenderRunCard from "./renderRunCard"

export default function MainRunPage({fetchRuns, allRuns, currentRunner, fetchJoins, allJoins}) {

    useEffect(() => {
        fetchRuns()
        fetchJoins()
        console.log("all joins", allJoins)
    },[])

    return (
        <div>
            <h1> heheheh so you tryna run or what </h1>

            <div className='p-4'>

            <br/>

            <h2 className="text-4xl font-bold dark:text-white">some sick runs</h2>
            <h3 className="text-3xl font-semibold text-gray-500 dark:text-white"><i>for your consideration</i></h3>
            
            
            <br/>

            {allRuns.map((eachRun) => 
                <div key={uuid()} >
                    <RenderRunCard
                        thisRun={eachRun}
                        // onButtonDrama={() => navigate(`/browsetrips/${eachTrip.id}`)}
                    />
                    <br/>
                </div>
            )}


        </div>
    </div>
    )
}

