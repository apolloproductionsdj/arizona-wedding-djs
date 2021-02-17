import React from 'react';

function Grid(props) {
    return (
        <div className="card">
            <div className="dj__logo">
                <img src={props.attributes.image_url} alt={props.attributes.name} />
            </div>
            <div className="dj__name">
                {props.attributes.name}
            </div>
            <div className="dj__score">
                {props.attributes.avg_score}
            </div>
            <div className="dj__link">
                <a href={`/airlines/${props.attributes.slug}`}>View DJ Website</a>
            </div>
        </div>
    )
}

export default Grid;
