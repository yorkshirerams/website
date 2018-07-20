import React from 'react';
import './game.scss';

const Game = () => {
  return (
    <div className="container">
      <div className="score">
        <h2>Leeds Bobcats</h2>
        <h2>0</h2>
      </div>
      <div className="score">
        <h2>Yorkshire Rams</h2>
        <h2>67</h2>
      </div>
      <p>NFC 1 North - 15th July 2018</p>
    </div>
  );
};

export default Game;
