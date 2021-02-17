import React, { Fragment, useEffect, useState } from 'react';
import axios from 'axios';
import Grid from './Grid.js';

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

    const grid = djs.map(item => {
        return (
            <Grid
                key={item.id}
                attributes={item.attributes}
            />
        )
    })

    return (
        <div className="djs">
            <div className="header">
                <h1>Arizona Wedding DJ's</h1>
                <div className="subheader">Find Your DJ Today!</div>
            </div>
            <div className="grid">
                {grid}
            </div>
        </div>
    )
}

export default Djs;
