function toggle() {
    var x = document.getElementById("inputpass");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
