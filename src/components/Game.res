// src/Greeting.res
@react.component
let make = () => {
  <div style={ReactDOM.Style.make(~background="red", ~fontSize="68px", ())}>
    {React.string("Hello ReScripters hedy!")}
  </div>
}
