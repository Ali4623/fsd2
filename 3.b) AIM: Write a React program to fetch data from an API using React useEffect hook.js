3.b) AIM: Write a React program to fetch data from an API using React useEffect hook.
Program:-
import React, { useEffect, useState } from 'react';
function FetchData() {
  const [users, setUsers] = useState([]);
  useEffect(() => {
    fetch('https://jsonplaceholder.typicode.com/users')
      .then(res => res.json())
      .then(data => setUsers(data));
  }, []);
  return (
    <div>
      <h1>User List</h1>
      <ul>
        {users.map(user => <li key={user.id}>{user.name}</li>)}
      </ul>
    </div>
  );
}
export default FetchData;
