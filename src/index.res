%%raw(`
document.querySelector("body").id = "root";
`)
// Dom access can actually fail. ReScript
// is really explicit about handling edge cases!
switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<div> {React.string("Hello world")} <Greeting /> </div>, root)
| None => () // do nothing
}