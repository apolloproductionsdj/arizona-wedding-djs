import React, { Fragment, useEffect, useState } from 'react';
import axios from 'axios';

function Djs() {

    const [djs, setDjs] = useState([]);

    useEffect(() => {
        // Get all of our DJ's from our Api
        axios.get('/api/v1/djs.json')

            .then(resp => {
                setDjs(resp.data.data)
            })
            .catch(resp => console.log(resp))
        // Update all djs in our state
    }, [djs.length])

    const list = djs.map(item => {
        return (<li key={item.id}>{item.attributes.name}</li>)
    })

    return (
        <Fragment>
            <div>
                This is the Airlines#index view for our app.
        </div>
            <ul>{list}</ul>
        </Fragment>
    )
}

export default Djs;
