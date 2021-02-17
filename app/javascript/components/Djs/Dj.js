import React from 'react';
import { BrowserRouter as Router, Link } from 'react-router-dom';
import styled from 'styled-components';

const Card = styled.div`
    border: 1px solid #efefef;
    background: #fff;
    text-align: center;
`;
const DjLogo = styled.div`
    width: 50px;
    text-align: center;
    margin-left: auto;
    margin-right: auto;
    padding-top: 10px;

    img {
        height: 50px;
        width: 70px;
        border-radius: 100%;
        border: 1px solid #efefef;
    }
`;
const DjName = styled.div`
    padding: 20px 0 10px 0;
`;
const LinkWrapper = styled.div`
    margin: 30px 0 20px 0;
    height: 50px;

    a {
        color: #fff;
        background: #000;
        border-radius: 4px;
        padding: 10px 50px;
        borde: 1px solid #000;
        width: 100%;
        text-decoration: none;
    }
`;


function Dj(props) {
    return (
        <Card>
            <DjLogo>
                <img src={props.attributes.image_url} alt={props.attributes.name} />
            </DjLogo>
            <DjName>
                {props.attributes.name}
            </DjName>
            <div className="dj__score">
                {props.attributes.avg_score}
            </div>
            <LinkWrapper>
                <Link to={`/djs/${props.attributes.slug}`}>View Website</Link>
            </LinkWrapper>
        </Card>
    )
}

export default Dj;
