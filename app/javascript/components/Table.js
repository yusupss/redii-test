import React from "react"
import PropTypes from "prop-types"


class Table extends React.Component {
  render() {
    return (
      <ul>
        {this.props.top_tracks.map(function(track) {
          return (
            <li>
              Name: {track.name}. URL: {track.url}
            </li>
          );
        })}
      </ul>
    );
  }
}

Table.propTypes = {
  name: PropTypes.string
};
export default Table
