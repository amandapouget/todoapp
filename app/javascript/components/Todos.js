import React from "react"
import PropTypes from "prop-types"

class Todos extends React.Component {
  renderTodos() {
    return (
      <h4>Todos: {this.props.todos}</h4>
    )
  }

  render () {
    return (
      <div>
        {this.renderTodos()}
      </div>
    );
  }
}

export default Todos
