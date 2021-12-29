// src/Greeting.res

type score = int

let myArr: array<score> = [1, 2, 3, 4]

module Cell = {
  @react.component
  let make = () => {
    <div style={ReactDOM.Style.make(~background="blue", ~width="16px", ~height="16px", ())} />
  }
}

@react.component
let make = () => {
  React.useEffect(() => {
    let foo = Belt.Array.map(myArr, v => {
      Js.log(v)
      None
    })
    None
  })

  <div style={ReactDOM.Style.make(~background="red", ~fontSize="68px", ())}>
    {React.string("Hello ReScripters hedy!")} <Cell /> <Cell />
  </div>
}
