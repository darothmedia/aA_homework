export const fetchSearchGiphys = (searchTerm) => ($.ajax({
  method: 'GET',
  url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=zIF7tMEsYnTPVSoFcnvKZptB95Yvl7fA&limit=2`
}))

