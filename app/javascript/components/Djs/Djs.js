import React, { Fragment, useEffect, useState } from 'react';
import axios from 'axios';
import Dj from './Dj.js';
import styled from 'styled-components';

const Home = styled.div`
    text-align: center;
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
`;
const Header = styled.div`
    padding: 100px 100px 10px 100px;

    h1 {
        font-size: 42px;
    }
`;
const Subheader = styled.div`
    font-weight: 300;
    font-size: 26px;
`;
const Grid = styled.div`
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 20px;
    width: 100%;
    padding: 20px;
`;


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
            <Dj
                key={item.id}
                attributes={item.attributes}
            />
        )
    })

    return (
        <Home>
            <Header>
                <h1>Arizona Wedding DJ's</h1>
                <Subheader>
                    Find Your DJ Today!
                </Subheader>
            </Header>
            <Grid>
                {grid}
            </Grid>
        </Home>
    )
}

export default Djs;
