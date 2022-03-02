// src/Greeting.res
@react.component
let make = () => {
  <div>
    {React.string("Hello ReScripters hey!")}
    <Mui.Typography> {"Some example text"->React.string} </Mui.Typography>
    <Mui.Button> {"Some example text"->React.string} </Mui.Button>
  </div>
}
