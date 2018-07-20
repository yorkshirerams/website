import React from 'react';
import './index.scss';
import Game from '../components/game/game';

const IndexPage = () => (
  <div className="back">
    <div className="overlay">
      <h1 className="title">WELCOME TO THE NEW HOME OF YOUR YORKSHIRE RAMS</h1>
      <Game />
    </div>
  </div>
);

export default IndexPage;
