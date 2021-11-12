import React from 'react';

import GiphysIndexItem from './giphys_index_item';
import SearchBar from './search_bar';

const GiphysIndex = ({giphys, fetchSearchGiphys}) => {
  <>
    {giphys.map((giphy)=> <GiphysIndexItem giphy={giphy} key={giphy.id} fetchSearchGiphys={fetchSearchGiphys}/>)}
    <SearchBar fetchSearchGiphys={fetchSearchGiphys} />
  </>
}

export default GiphysIndex