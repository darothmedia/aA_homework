import React from 'react';
import ReactDOM from 'react-dom'

import GiphysIndex from './giphys_index';
// import { fetchSearchGiphys } from '../util/api_util';
import { configureStore } from '../store/store.js'
// import { receiveSearchGiphys } from '../actions/giphy_actions.js'
// import { fetchSearchGiphys } from '../actions/giphy_actions.js';
import Root from './root.jsx'
import SearchBar from './search_bar.jsx'


document.addEventListener('DOMContentLoaded', () => {
  // window.fetchSearchGiphys = fetchSearchGiphys
  const store = configureStore()
  // window.store = store
  // window.receiveSearchGiphys = receiveSearchGiphys
  const root = document.getElementById('root')
  ReactDOM.render(<Root store={store} />, root)
})