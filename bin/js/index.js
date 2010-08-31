function embedMovie()
{
    var flashvars  = {
    };
    var params     = {};
    var attributes = {};
    var targetDiv  = "moviecontainer";

    params.scale = "noscale";
    params.wmode = "opaque";
    params.menu  = "false";

    swfobject.embedSWF("pointy.swf", targetDiv, "640", "480", "10.0.0", false, flashvars, params, attributes);
}

function main() {
  embedMovie();
}

$(main);
