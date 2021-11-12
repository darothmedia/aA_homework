import { connect } from 'react-redux';
import SearchBar from './search_bar.jsx';
import { fetchSearchGiphys } from '../actions/giphy_actions';

const mapStateToProps = state => ({
  giphys: state.giphys
})

const mDTP = dispatch => {
  return {fetchSearchGiphys: (searchTerm) => dispatch(fetchSearchGiphys(searchTerm))}
}

export default connect(mapStateToProps, mDTP)(SearchBar)