import logo from './logo.svg';
import './App.css';

function App() {
  // Assuming the "project_name" is a JavaScript variable or comes from props/state.
  const projectName = "My React App"; // Replace with your actual value or state

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          {projectName}
        </p>
      </header>
    </div>
  );
}

export default App;
