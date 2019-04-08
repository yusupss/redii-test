import React from "react"
import PropTypes from "prop-types"
import { BootstrapTable, TableHeaderColumn } from 'react-bootstrap-table';


class Table extends React.Component {
  render() {
    return (
      <BootstrapTable data={ this.props.top_tracks.map(function(track) {
        return {
          name: track.name,
          url: track.url,
        };
      }) }>
          <TableHeaderColumn dataField='name' isKey={ true }>Title</TableHeaderColumn>
          <TableHeaderColumn dataField='url'>URL</TableHeaderColumn>
      </BootstrapTable>
    );
  }
}

Table.propTypes = {
  name: PropTypes.string
};
export default Table
