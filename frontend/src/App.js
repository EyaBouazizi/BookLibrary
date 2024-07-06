import './App.css';
import React from 'react';
import BookList from './components/BookList';

function App() {
  return (
    <div className="App">
      <header className="App-header">
       <h1>Book Library</h1>
      </header>
      <main>
        <BookList/>
      </main>
    </div>
  );
}

export default App;
