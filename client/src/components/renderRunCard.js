import React, {useState, useEffect} from 'react'
import {v4 as uuid} from "uuid";

export default function RenderRunCard({thisRun, allPeeps, currentRunner}) {

    const [host, setHost] = useState({})
    const [attendees, setAttendees] = useState([])

    // good stuff here but not sure if actually will need it - don't w current architecture
    // useEffect(() => {
    //     fetch(`/runs/${thisRun.id}`)
    //     .then(res => {
    //         if(res.ok){
    //             res.json().then(data => {
    //                 // setAttendees(data.runners)
    //                 //console.log(data.runners)
    //                 // console.log(data)
    //                 console.log(thisRun, attendees)
    //             })
    //         } else {
    //             console.log('you messed up buddy')
    //         }
    //     })

    // },[])

    useEffect(() => {
        console.log('ehy boi')
        // console.log(allPeeps.where.not(id=thisRun.creator_id))
        // setAttendees(allPeeps.where.not(id=thisRun.creator_id))
    },[])

    const cardDiv = "max-w-sm bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700"
    const imgClass = 'rounded-t-lg object-cover h-48 w-96'
    const bigClassBlack = 'mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white'
    const bigCLassGray = 'mb-2 text-2xl font-semibold tracking-tight text-gray-500 dark:text-white'
    const smallClass = 'mb-3 font-normal text-gray-700 dark:text-gray-400'
    const blueButtonClass = 'inline-flex items-center py-2 px-3 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800'

    return (
        <div className={cardDiv}>
            <div className='p-5'>
                <h2 className={bigClassBlack}>{thisRun.location}: <span className={bigCLassGray}><i>{thisRun.when}</i></span></h2>
                <div className={smallClass}>
                <p><i>{thisRun.mileage} miles - {thisRun.pace} pace</i></p>
                    <p><b>Mileage:</b> {thisRun.mileage}</p>
                    <p><b>Extra Deets:</b> {thisRun.run_type}</p>
                    {/* will need to fetch creator's name from creator id */}
                    <p><b>Host:</b> {thisRun.creator_id.name}</p> 
                    {/* will need to fetch associated user data */}
                    <div>
                        <b>Who's Going:</b> 
                        {allPeeps.map((eachAttendee) =>
                            <div key={uuid()}>
                                <h4>{eachAttendee.name}</h4>
                            </div>
                        )}
                    </div>
                    <br/>
                    <div>
                        <button 
                            // will need to fetch whether or not current user is a part of this run
                            // may also change render on whether or not this is part of their dashboard or explore page...
                            className={blueButtonClass}
                            // onClick={onButtonDrama}
                        >
                            join run//leave run 
                        </button>
                    </div>
                </div>
            </div>

        </div>
    )
}