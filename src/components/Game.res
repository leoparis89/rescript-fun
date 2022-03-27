// src/Greeting.res

open Greeting
type score = int

let myArr: array<score> = [1, 2, 3, 4]

let add = (x, y) => x + y

let foo = None

module Cell = {
  @react.component
  let make = (~num: int) => {
    let handleClick = (num: int) => {
      Js.log("hello" ++ Belt.Int.toString(num))
    }

    <div
      onClick={_ => handleClick(num)}
      style={ReactDOM.Style.make(~background="lightblue", ~width="32px", ~height="32px", ())}>
      {React.int(num)}
    </div>
  }
}

@react.component
let make = () => {
  // React.useEffect(() => {
  //   let foo = Belt.Array.map(myArr, v => {
  //     Js.log(v)
  //   })
  //   None
  // })
  let els = myArr->Belt.Array.map(n => <Cell num={n} />)->React.array

  <div style={ReactDOM.Style.make(~background="red", ())}> els </div>
}
