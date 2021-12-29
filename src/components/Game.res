// src/Greeting.res
module Cell = {
  @react.component
  let make = () => {
    <div style={ReactDOM.Style.make(~background="blue", ~width="16px", ~height="16px", ())} />
  }
}

@react.component
let make = () => {
  React.useEffect(() => {
    Js.log("hello")
    None
  })

  <div style={ReactDOM.Style.make(~background="red", ~fontSize="68px", ())}>
    {React.string("Hello ReScripters hedy!")} <Cell /> <Cell />
  </div>
}
