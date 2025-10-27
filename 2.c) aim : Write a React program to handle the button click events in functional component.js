2.c) aim : Write a React program to handle the button click events in functional component
import React, { useState } from 'react';
function ButtonEvents() {
 const [message, setMessage] = useState("Click a button to see the action");
 const sayHello = () => {
 setMessage("Hello, User!");
 };
 const resetMessage = () => 
{
 setMessage("Click a button to see the action");
 };
 return (
 <div className="App">
 <h1>Handling Button Click Events</h1>
 <p>{message}</p>
 <button onClick={sayHello}>Say Hello</button>
 <button onClick={resetMessage}>Reset</button>
 </div>
 );
}
export default ButtonEvents;
