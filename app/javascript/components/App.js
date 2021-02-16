import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Dj from './Dj/Dj';
import Djs from './Djs/Djs';

function App() {
    return (
        <Switch>
            <Route exact path="/" component={Djs} />
            <Route exact path="/djs/:slug" component={Dj} />
        </Switch>
    )
}

export default App;
