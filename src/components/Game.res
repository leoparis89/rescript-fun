// src/Greeting.res
@react.component
let make = () => {
  React.useEffect(() => {
    Js.log("hello")
    None
  })

  <div style={ReactDOM.Style.make(~background="red", ~fontSize="68px", ())}>
    {React.string("Hello ReScripters hedy!")}
  </div>
}
