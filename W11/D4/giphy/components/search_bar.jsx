import React from 'react'

class SearchBar extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      searchTerm: ""
    }
  }

  updateTerm(e){
    this.setState({
      searchTerm: e.target.value
    })
  }

  handleSubmit(e){
    e.preventDefault()
    let term = this.state;
    this.props.fetchSearchGiphys(term)
    this.setState({
      searchTerm: ""
    })
  }

  render(){
    <form action="">
      <input type="text" id="searchTerm" onChange={this.updateTerm} value={this.state.searchTerm}/>
      <input type="submit" value="submit" />
    </form>
  }
}

export default SearchBar