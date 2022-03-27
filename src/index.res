%%raw(`
var rootEl = document.createElement('div');
rootEl.id = "root";
document.body.appendChild(rootEl);
`)
// Dom access can actually fail. ReScript
// is really explicit about handling edge cases!

switch ReactDOM.querySelector("#root") {
| Some(root) => ReactDOM.render(<div> {React.string("Hello world")} </div>, root)
| None => () // do nothing
}

Js.log(Matter.engine)
