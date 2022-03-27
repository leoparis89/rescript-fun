// src/Greeting.res
let useStyles = Mui.Styles.makeStyles({
  "fontSize": ReactDOM.Style.make(~fontSize="30px", ()),
  "bgColor": ReactDOM.Style.make(~backgroundColor=Mui.Colors.red["300"], ()),
})

@react.component
let make = () => {
  let classes = useStyles(.)

  <div>
    {React.string("Hello ReScripters hey!")}
    <Mui.Typography> {"Sie example text"->React.string} </Mui.Typography>
    <Mui.Button
      color=#secondary
      variant=#outlined
      classes={Mui.Button.Classes.make(
        ~root=classes["fontSize"],
        ~containedPrimary=classes["bgColor"],
        (),
      )}>
      {"Some exddample text"->React.string}
    </Mui.Button>
  </div>
}
