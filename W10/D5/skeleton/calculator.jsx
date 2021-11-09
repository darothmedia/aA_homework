import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.result = 0
    this.num1 = ''
    this.num2 = ''
  }

  setNum1(e) {
    return (
      <input type="text" />
    )
  }

  render() {
    return (
      <div>
        <input type="text" />
        <h1>{this.state.result}</h1>
      </div>
    );
  }
}

export default Calculator;