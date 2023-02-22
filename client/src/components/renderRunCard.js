export default function RenderRunCard({thisRun}) {

    const cardDiv = "max-w-sm bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700"

    return (
        <div className={cardDiv}>
            <div className='p-5'>
                <h2 className={bigClassBlack}>{thisRun.location}: <span className={bigCLassGray}><i>{thisRun.when}</i></span></h2>
                <div className={smallClass}>
                <p><i>{thisRun.mileage} miles - {thisRun.pace} pace</i></p>
                    <p><b>Mileage:</b> {thisRun.mileage}</p>
                    <p><b>Extra Deets:</b> {thisRun.run_type}</p>
                    {/* will need to fetch creator's name from creator id */}
                    <p><b>Host:</b> {thisRun.creator_id}</p> 
                    {/* will need to fetch associated user data */}
                    <p><b>Who's Going:</b> some citius folk</p>
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