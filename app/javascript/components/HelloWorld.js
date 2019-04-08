import React from "react"
import PropTypes from "prop-types"
import { BootstrapTable, TableHeaderColumn } from 'react-bootstrap-table';
class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
