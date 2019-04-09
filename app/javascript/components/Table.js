import React from "react"
import PropTypes from "prop-types"


class Table extends React.Component {
  render() {
    return (
      <table class="table table-bordered">
        <thead>
          <tr>
            <th> Title </th>
            <th> URL </th>
          </tr>
        </thead>
        <tbody>
          {this.props.top_tracks.map(function(track) {
          return (
            <tr>
              <td> {track.name} </td>
              <td> <a href={track.url} > {track.url} </a></td>
            </tr>
          );
        })}
        </tbody>
      </table>
    );
  }
}

export default Table
