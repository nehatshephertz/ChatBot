<%@ page contentType="text/html;charset=UTF-8" %>

<html >
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <title>App42 Dialog</title>
     <meta name="layout" content="chatbot1" />
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'rappid.css')}'>
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'header(1).css')}'>
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'toolbar.css')}'>
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'statusbar.css')}'>
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'paper.css')}'>
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'preview.css')}'>
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'tooltip.css')}'>
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'snippet.css')}'>
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'dialog.css')}'>
    <link rel='stylesheet' href='${resource(dir:'css/joint',file:'index.css')}'>
    <style>
      #toolbar{position: fixed; width: 100%; top: 0; background: #fff; z-index: 1000;}
      #toolbar .btn{padding: 10px 15px; color: #3f3833 ; border: 1px solid #ccc; min-width: 70px !important; text-align: center; border-radius: 20px; font-size: 14px; height: auto; font-family: "Roboto Condensed", "Helvetica Neue", Helvetica, Arial, sans-serif !important;}
      #paper{margin: 110px auto 30px auto  !important;}
      #toolbar .btn:hover{background-color: #2a86c4 !important; border: 1px solid #1d6aa8 !important; border-radius: 20px !important; color: #fff !important;}
      #paper{border: none !important;}     
      #app{height: 475px;overflow-y: scroll;} 
    </style>

    <script>
        var base_url ="${baseURL}";
        var appID = "${params.id}";
      
        SVGElement.prototype.getTransformToElement = SVGElement.prototype.getTransformToElement || function (toElement) {
            return toElement.getScreenCTM().inverse().multiply(this.getScreenCTM());
        };
    </script>

  </head>
  <body  style="overflow: hidden;">
   
    <section id="app" class="joint-theme-modern">
     
      <div id="toolbar" >
     
        <button class="btn add-question">Add Question</button>
        <button class="btn add-answer">Add Answer</button>
        <!--<button class="btn preview-dialog">Preview Dialog</button>-->
        <button  class="btn load-dialog">Load Dialog</button>
        <button class="btn clear">Clear </button>
        <button class="btn code-snippet" >Save Dialog</button>
        <button class="btn load-example">Load Example</button>
      </div>

      <div id="paper" class="joint-paper joint-theme-modern" style="width: 800px; height: 600px;"><div class="joint-paper-background"></div><div class="joint-paper-grid"></div><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="v-3" width="100%" height="100%"><g id="v-4" class="joint-viewport"><g id="j_1" model-id="d849d917-8a43-4d51-9e99-291799c144db" class="joint-cell joint-type-qad joint-type-qad-question joint-element joint-theme-modern" data-type="qad.Question" magnet="false" transform="translate(45,38)"><rect class="body" id="v-16" rx="1%" ry="2%" stroke="none" width="150.3046875" height="135" fill="url(#linearGradientv-3-394821923)" transform="matrix(1,0,0,1,0,0)"></rect><text class="question-text" id="v-21" font-size="15" y="0.8em" xml:space="preserve" font-family="Arial" fill="white" text-anchor="middle" transform="matrix(1,0,0,1,75.2,15)" style="text-shadow: gray 1px 1px 0px;"><tspan id="v-27" class="v-line" dy="0em" x="0">Does&nbsp;the&nbsp;thing&nbsp;work?</tspan></text><g class="options" id="v-20" transform="matrix(1,0,0,1,0,45)"><g class="option option-yes" id="v-14" option-id="yes" transform="translate(0, 0)" dynamic="true"><rect class="option-rect" id="v-24" rx="3" ry="3" stroke="white" stroke-width="1" stroke-opacity="0.5" fill-opacity="0.5" fill="white" height="30" dynamic="true" width="150.3046875" transform="matrix(1,0,0,1,0,0)"></rect><path class="btn-remove-option" d="M0,0 15,0 15,5 0,5z" id="v-18" cursor="pointer" fill="white" transform="matrix(1,0,0,1,10,13)"></path><text class="option-text" id="v-22" font-size="11" y="0.8em" xml:space="preserve" font-family="Arial" fill="#4b4a67" dynamic="true" transform="matrix(1,0,0,1,30,10.2)"><tspan id="v-28" class="v-line" dy="0em" x="0">Yes</tspan></text></g><g class="option option-no" id="v-15" option-id="no" transform="translate(0, 30)" dynamic="true"><rect class="option-rect" id="v-25" rx="3" ry="3" stroke="white" stroke-width="1" stroke-opacity="0.5" fill-opacity="0.5" fill="white" height="30" dynamic="true" width="150.3046875" transform="matrix(1,0,0,1,0,0)"></rect><path class="btn-remove-option" d="M0,0 15,0 15,5 0,5z" id="v-19" cursor="pointer" fill="white" transform="matrix(1,0,0,1,10,13)"></path><text class="option-text" id="v-23" font-size="11" y="0.8em" xml:space="preserve" font-family="Arial" fill="#4b4a67" dynamic="true" transform="matrix(1,0,0,1,30,10.2)"><tspan id="v-29" class="v-line" dy="0em" x="0">No</tspan></text></g></g><path class="btn-add-option" d="M5,0 10,0 10,5 15,5 15,10 10,10 10,15 5,15 5,10 0,10 0,5 5,5z" id="v-17" cursor="pointer" fill="white" transform="matrix(1,0,0,1,10,113)"></path><g class="joint-port" id="v-32" transform="matrix(1,0,0,1,75,0)"><circle class="joint-port-body" r="14" fill="#feb663" stroke="white" id="v-30" port="6e432f96-0cac-4e93-9706-0fbe34329d31" port-group="in" magnet="passive"></circle><text class="joint-port-label" fill="white" id="v-31" font-size="12" y=".3em" xml:space="preserve" pointer-events="none" transform="matrix(1,0,0,1,5,0)" text-anchor="end"><tspan id="v-39" class="v-line" dy="0em" x="0">in</tspan></text></g><g class="joint-port" id="v-35" transform="matrix(1,0,0,1,150,60)"><circle class="joint-port-body" r="14" fill="#31d0c6" stroke="none" id="v-33" port="yes" port-group="out" magnet="true"></circle><text class="joint-port-label" fill="#000000" id="v-34" transform="matrix(1,0,0,1,-15,0)" y=".3em" text-anchor="end"></text></g><g class="joint-port" id="v-38" transform="matrix(1,0,0,1,150,90)"><circle class="joint-port-body" r="14" fill="#31d0c6" stroke="none" id="v-36" port="no" port-group="out" magnet="true"></circle><text class="joint-port-label" fill="#000000" id="v-37" transform="matrix(1,0,0,1,-15,0)" y=".3em" text-anchor="end"></text></g></g><g id="j_6" model-id="4073e883-1cc6-46a5-b22d-688ca1934324" class="joint-cell joint-type-qad joint-type-qad-answer joint-element joint-theme-modern" data-type="qad.Answer" transform="translate(464,68)"><rect id="v-88" fill="#4b4a67" stroke="none" rx="3" ry="3" width="223.796875" height="66.8" transform="matrix(1,0,0,1,0,0)"></rect><text id="v-89" font-size="14" y="0.8em" xml:space="preserve" fill="#f6f6f6" font-family="Arial, helvetica, sans-serif" transform="matrix(1,0,0,1,35.9,27.2)"><tspan id="v-90" class="v-line" dy="0em" x="0">Don't&nbsp;mess&nbsp;about&nbsp;with&nbsp;it.</tspan></text></g><g id="j_10" model-id="9d87214a-7b08-47ce-9aec-8e49ed7ae929" class="joint-cell joint-type-link joint-link joint-theme-modern" data-type="link"><path class="connection" stroke="#6a6c8a" d="M 209 100 454 100" id="v-135" stroke-width="2"></path><path class="marker-source" fill="black" stroke="black" d="M 0 0 0 0" transform="translate(209,100) scale(1,1) rotate(0)"></path><path class="marker-target" fill="#6a6c8a" stroke="#6a6c8a" d="M 10 0 L 0 5 L 10 10 z" id="v-134" transform="translate(464,105) scale(1,1) rotate(-180)"></path><path class="connection-wrap" d="M 209 100 454 100"></path><g class="labels"></g><g class="marker-vertices"></g><g class="marker-arrowheads"><g class="marker-arrowhead-group marker-arrowhead-group-source" id="v-132" transform="translate(209,87) scale(1,1) rotate(0)"><path class="marker-arrowhead" end="source" d="M 26 0 L 0 13 L 26 26 z"></path></g><g class="marker-arrowhead-group marker-arrowhead-group-target" id="v-133" transform="translate(464,113) scale(1,1) rotate(-180)"><path class="marker-arrowhead" end="target" d="M 26 0 L 0 13 L 26 26 z"></path></g></g><g class="link-tools"><g class="link-tool" id="v-131" transform="translate(249, 100) "><g class="tool-remove" event="remove"><circle r="11"></circle><path transform="scale(.8) translate(-16, -16)" d="M24.778,21.419 19.276,15.917 24.777,10.415 21.949,7.585 16.447,13.087 10.945,7.585 8.117,10.415 13.618,15.917 8.116,21.419 10.946,24.248 16.447,18.746 21.948,24.248z"></path><title>Remove link.</title></g><g class="tool-options" event="link:options"><circle r="11" transform="translate(25)"></circle><path fill="white" transform="scale(.55) translate(29, -16)" d="M31.229,17.736c0.064-0.571,0.104-1.148,0.104-1.736s-0.04-1.166-0.104-1.737l-4.377-1.557c-0.218-0.716-0.504-1.401-0.851-2.05l1.993-4.192c-0.725-0.91-1.549-1.734-2.458-2.459l-4.193,1.994c-0.647-0.347-1.334-0.632-2.049-0.849l-1.558-4.378C17.165,0.708,16.588,0.667,16,0.667s-1.166,0.041-1.737,0.105L12.707,5.15c-0.716,0.217-1.401,0.502-2.05,0.849L6.464,4.005C5.554,4.73,4.73,5.554,4.005,6.464l1.994,4.192c-0.347,0.648-0.632,1.334-0.849,2.05l-4.378,1.557C0.708,14.834,0.667,15.412,0.667,16s0.041,1.165,0.105,1.736l4.378,1.558c0.217,0.715,0.502,1.401,0.849,2.049l-1.994,4.193c0.725,0.909,1.549,1.733,2.459,2.458l4.192-1.993c0.648,0.347,1.334,0.633,2.05,0.851l1.557,4.377c0.571,0.064,1.148,0.104,1.737,0.104c0.588,0,1.165-0.04,1.736-0.104l1.558-4.377c0.715-0.218,1.399-0.504,2.049-0.851l4.193,1.993c0.909-0.725,1.733-1.549,2.458-2.458l-1.993-4.193c0.347-0.647,0.633-1.334,0.851-2.049L31.229,17.736zM16,20.871c-2.69,0-4.872-2.182-4.872-4.871c0-2.69,2.182-4.872,4.872-4.872c2.689,0,4.871,2.182,4.871,4.872C20.871,18.689,18.689,20.871,16,20.871z"></path><title>Link options.</title></g></g></g></g><g id="j_3" model-id="8ce3f820-54f0-41f0-a46c-1e4f57b5f91e" class="joint-cell joint-type-qad joint-type-qad-question joint-element joint-theme-modern" data-type="qad.Question" magnet="false" transform="translate(55,245)"><rect class="body" id="v-50" rx="1%" ry="2%" stroke="none" width="195.6484375" height="135" fill="url(#linearGradientv-3-394821923)" transform="matrix(1,0,0,1,0,0)"></rect><text class="question-text" id="v-55" font-size="15" y="0.8em" xml:space="preserve" font-family="Arial" fill="white" text-anchor="middle" transform="matrix(1,0,0,1,97.8,15)" style="text-shadow: gray 1px 1px 0px;"><tspan id="v-60" class="v-line" dy="0em" x="0">Did&nbsp;you&nbsp;mess&nbsp;about&nbsp;with&nbsp;it?</tspan></text><g class="options" id="v-54" transform="matrix(1,0,0,1,0,45)"><g class="option option-yes" id="v-48" option-id="yes" transform="translate(0, 0)" dynamic="true"><rect class="option-rect" id="v-58" rx="3" ry="3" stroke="white" stroke-width="1" stroke-opacity="0.5" fill-opacity="0.5" fill="white" height="30" dynamic="true" width="195.6484375" transform="matrix(1,0,0,1,0,0)"></rect><path class="btn-remove-option" d="M0,0 15,0 15,5 0,5z" id="v-52" cursor="pointer" fill="white" transform="matrix(1,0,0,1,10,13)"></path><text class="option-text" id="v-56" font-size="11" y="0.8em" xml:space="preserve" font-family="Arial" fill="#4b4a67" dynamic="true" transform="matrix(1,0,0,1,30,10.2)"><tspan id="v-61" class="v-line" dy="0em" x="0">Yes</tspan></text></g><g class="option option-no" id="v-49" option-id="no" transform="translate(0, 30)" dynamic="true"><rect class="option-rect" id="v-59" rx="3" ry="3" stroke="white" stroke-width="1" stroke-opacity="0.5" fill-opacity="0.5" fill="white" height="30" dynamic="true" width="195.6484375" transform="matrix(1,0,0,1,0,0)"></rect><path class="btn-remove-option" d="M0,0 15,0 15,5 0,5z" id="v-53" cursor="pointer" fill="white" transform="matrix(1,0,0,1,10,13)"></path><text class="option-text" id="v-57" font-size="11" y="0.8em" xml:space="preserve" font-family="Arial" fill="#4b4a67" dynamic="true" transform="matrix(1,0,0,1,30,10.2)"><tspan id="v-62" class="v-line" dy="0em" x="0">No</tspan></text></g></g><path class="btn-add-option" d="M5,0 10,0 10,5 15,5 15,10 10,10 10,15 5,15 5,10 0,10 0,5 5,5z" id="v-51" cursor="pointer" fill="white" transform="matrix(1,0,0,1,10,113)"></path><g class="joint-port" id="v-65" transform="matrix(1,0,0,1,98,0)"><circle class="joint-port-body" r="14" fill="#feb663" stroke="white" id="v-63" port="3225aa8b-6e21-407b-9cfd-b349c2ff234b" port-group="in" magnet="passive"></circle><text class="joint-port-label" fill="white" id="v-64" font-size="12" y=".3em" xml:space="preserve" pointer-events="none" transform="matrix(1,0,0,1,5,0)" text-anchor="end"><tspan id="v-72" class="v-line" dy="0em" x="0">in</tspan></text></g><g class="joint-port" id="v-68" transform="matrix(1,0,0,1,196,60)"><circle class="joint-port-body" r="14" fill="#31d0c6" stroke="none" id="v-66" port="yes" port-group="out" magnet="true"></circle><text class="joint-port-label" fill="#000000" id="v-67" transform="matrix(1,0,0,1,-15,0)" y=".3em" text-anchor="end"></text></g><g class="joint-port" id="v-71" transform="matrix(1,0,0,1,196,90)"><circle class="joint-port-body" r="14" fill="#31d0c6" stroke="none" id="v-69" port="no" port-group="out" magnet="true"></circle><text class="joint-port-label" fill="#000000" id="v-70" transform="matrix(1,0,0,1,-15,0)" y=".3em" text-anchor="end"></text></g></g><g id="j_4" model-id="7da45291-2535-4aa1-bb50-5cadd2b2fb91" class="joint-cell joint-type-qad joint-type-qad-answer joint-element joint-theme-modern" data-type="qad.Answer" transform="translate(343,203)"><rect id="v-76" fill="#4b4a67" stroke="none" rx="3" ry="3" width="125.59375" height="66.8" transform="matrix(1,0,0,1,0,0)"></rect><text id="v-77" font-size="14" y="0.8em" xml:space="preserve" fill="#f6f6f6" font-family="Arial, helvetica, sans-serif" transform="matrix(1,0,0,1,29.7,27.2)"><tspan id="v-78" class="v-line" dy="0em" x="0">Run&nbsp;away!</tspan></text></g><g id="j_11" model-id="fd9f3367-79b9-4f69-b5b7-2bba012e53bb" class="joint-cell joint-type-link joint-link joint-theme-modern" data-type="link"><path class="connection" stroke="#6a6c8a" d="M 265 310 310 310 S 320 310 320 300 L 320 250 S 320 240 327 240 L 333 240" id="v-141" stroke-width="2"></path><path class="marker-source" fill="black" stroke="black" d="M 0 0 0 0" transform="translate(265,310) scale(1,1) rotate(0)"></path><path class="marker-target" fill="#6a6c8a" stroke="#6a6c8a" d="M 10 0 L 0 5 L 10 10 z" id="v-140" transform="translate(343,245) scale(1,1) rotate(-180)"></path><path class="connection-wrap" d="M 265 310 310 310 S 320 310 320 300 L 320 250 S 320 240 327 240 L 333 240"></path><g class="labels"></g><g class="marker-vertices"></g><g class="marker-arrowheads"><g class="marker-arrowhead-group marker-arrowhead-group-source" id="v-138" transform="translate(265,297) scale(1,1) rotate(0)"><path class="marker-arrowhead" end="source" d="M 26 0 L 0 13 L 26 26 z"></path></g><g class="marker-arrowhead-group marker-arrowhead-group-target" id="v-139" transform="translate(343,253) scale(1,1) rotate(-180)"><path class="marker-arrowhead" end="target" d="M 26 0 L 0 13 L 26 26 z"></path></g></g><g class="link-tools"><g class="link-tool" id="v-137" transform="translate(305, 310) "><g class="tool-remove" event="remove"><circle r="11"></circle><path transform="scale(.8) translate(-16, -16)" d="M24.778,21.419 19.276,15.917 24.777,10.415 21.949,7.585 16.447,13.087 10.945,7.585 8.117,10.415 13.618,15.917 8.116,21.419 10.946,24.248 16.447,18.746 21.948,24.248z"></path><title>Remove link.</title></g><g class="tool-options" event="link:options"><circle r="11" transform="translate(25)"></circle><path fill="white" transform="scale(.55) translate(29, -16)" d="M31.229,17.736c0.064-0.571,0.104-1.148,0.104-1.736s-0.04-1.166-0.104-1.737l-4.377-1.557c-0.218-0.716-0.504-1.401-0.851-2.05l1.993-4.192c-0.725-0.91-1.549-1.734-2.458-2.459l-4.193,1.994c-0.647-0.347-1.334-0.632-2.049-0.849l-1.558-4.378C17.165,0.708,16.588,0.667,16,0.667s-1.166,0.041-1.737,0.105L12.707,5.15c-0.716,0.217-1.401,0.502-2.05,0.849L6.464,4.005C5.554,4.73,4.73,5.554,4.005,6.464l1.994,4.192c-0.347,0.648-0.632,1.334-0.849,2.05l-4.378,1.557C0.708,14.834,0.667,15.412,0.667,16s0.041,1.165,0.105,1.736l4.378,1.558c0.217,0.715,0.502,1.401,0.849,2.049l-1.994,4.193c0.725,0.909,1.549,1.733,2.459,2.458l4.192-1.993c0.648,0.347,1.334,0.633,2.05,0.851l1.557,4.377c0.571,0.064,1.148,0.104,1.737,0.104c0.588,0,1.165-0.04,1.736-0.104l1.558-4.377c0.715-0.218,1.399-0.504,2.049-0.851l4.193,1.993c0.909-0.725,1.733-1.549,2.458-2.458l-1.993-4.193c0.347-0.647,0.633-1.334,0.851-2.049L31.229,17.736zM16,20.871c-2.69,0-4.872-2.182-4.872-4.871c0-2.69,2.182-4.872,4.872-4.872c2.689,0,4.871,2.182,4.871,4.872C20.871,18.689,18.689,20.871,16,20.871z"></path><title>Link options.</title></g></g></g></g><g id="j_7" model-id="fd3e0ab4-fd3a-4342-972b-3616e0c0a5cf" class="joint-cell joint-type-qad joint-type-qad-question joint-element joint-theme-modern" data-type="qad.Question" magnet="false" transform="translate(238,429)"><rect class="body" id="v-95" rx="1%" ry="2%" stroke="none" width="155.6171875" height="135" fill="url(#linearGradientv-3-394821923)" transform="matrix(1,0,0,1,0,0)"></rect><text class="question-text" id="v-100" font-size="15" y="0.8em" xml:space="preserve" font-family="Arial" fill="white" text-anchor="middle" transform="matrix(1,0,0,1,77.8,15)" style="text-shadow: gray 1px 1px 0px;"><tspan id="v-105" class="v-line" dy="0em" x="0">Will&nbsp;you&nbsp;get&nbsp;screwed?</tspan></text><g class="options" id="v-99" transform="matrix(1,0,0,1,0,45)"><g class="option option-yes" id="v-93" option-id="yes" transform="translate(0, 0)" dynamic="true"><rect class="option-rect" id="v-103" rx="3" ry="3" stroke="white" stroke-width="1" stroke-opacity="0.5" fill-opacity="0.5" fill="white" height="30" dynamic="true" width="155.6171875" transform="matrix(1,0,0,1,0,0)"></rect><path class="btn-remove-option" d="M0,0 15,0 15,5 0,5z" id="v-97" cursor="pointer" fill="white" transform="matrix(1,0,0,1,10,13)"></path><text class="option-text" id="v-101" font-size="11" y="0.8em" xml:space="preserve" font-family="Arial" fill="#4b4a67" dynamic="true" transform="matrix(1,0,0,1,30,10.2)"><tspan id="v-106" class="v-line" dy="0em" x="0">Yes</tspan></text></g><g class="option option-no" id="v-94" option-id="no" transform="translate(0, 30)" dynamic="true"><rect class="option-rect" id="v-104" rx="3" ry="3" stroke="white" stroke-width="1" stroke-opacity="0.5" fill-opacity="0.5" fill="white" height="30" dynamic="true" width="155.6171875" transform="matrix(1,0,0,1,0,0)"></rect><path class="btn-remove-option" d="M0,0 15,0 15,5 0,5z" id="v-98" cursor="pointer" fill="white" transform="matrix(1,0,0,1,10,13)"></path><text class="option-text" id="v-102" font-size="11" y="0.8em" xml:space="preserve" font-family="Arial" fill="#4b4a67" dynamic="true" transform="matrix(1,0,0,1,30,10.2)"><tspan id="v-107" class="v-line" dy="0em" x="0">No</tspan></text></g></g><path class="btn-add-option" d="M5,0 10,0 10,5 15,5 15,10 10,10 10,15 5,15 5,10 0,10 0,5 5,5z" id="v-96" cursor="pointer" fill="white" transform="matrix(1,0,0,1,10,113)"></path><g class="joint-port" id="v-110" transform="matrix(1,0,0,1,78,0)"><circle class="joint-port-body" r="14" fill="#feb663" stroke="white" id="v-108" port="0b11614e-24b8-446d-903d-b68e3f4a21f5" port-group="in" magnet="passive"></circle><text class="joint-port-label" fill="white" id="v-109" font-size="12" y=".3em" xml:space="preserve" pointer-events="none" transform="matrix(1,0,0,1,5,0)" text-anchor="end"><tspan id="v-117" class="v-line" dy="0em" x="0">in</tspan></text></g><g class="joint-port" id="v-113" transform="matrix(1,0,0,1,156,60)"><circle class="joint-port-body" r="14" fill="#31d0c6" stroke="none" id="v-111" port="yes" port-group="out" magnet="true"></circle><text class="joint-port-label" fill="#000000" id="v-112" transform="matrix(1,0,0,1,-15,0)" y=".3em" text-anchor="end"></text></g><g class="joint-port" id="v-116" transform="matrix(1,0,0,1,156,90)"><circle class="joint-port-body" r="14" fill="#31d0c6" stroke="none" id="v-114" port="no" port-group="out" magnet="true"></circle><text class="joint-port-label" fill="#000000" id="v-115" transform="matrix(1,0,0,1,-15,0)" y=".3em" text-anchor="end"></text></g></g><g id="j_13" model-id="641410b2-aeb5-42ad-b757-2d9c6e4d56bd" class="joint-cell joint-type-link joint-link joint-theme-modern" data-type="link"><path class="connection" stroke="#6a6c8a" d="M 209 130 220 130 S 230 130 230 140 L 230 200 S 230 210 220 210 L 170 210 S 160 210 160 216 L 160 221" id="v-153" stroke-width="2"></path><path class="marker-source" fill="black" stroke="black" d="M 0 0 0 0" transform="translate(209,130) scale(1,1) rotate(0)"></path><path class="marker-target" fill="#6a6c8a" stroke="#6a6c8a" d="M 10 0 L 0 5 L 10 10 z" id="v-152" transform="translate(155,231) scale(1,1) rotate(-90)"></path><path class="connection-wrap" d="M 209 130 220 130 S 230 130 230 140 L 230 200 S 230 210 220 210 L 170 210 S 160 210 160 216 L 160 221"></path><g class="labels"></g><g class="marker-vertices"></g><g class="marker-arrowheads"><g class="marker-arrowhead-group marker-arrowhead-group-source" id="v-150" transform="translate(209,117) scale(1,1) rotate(0)"><path class="marker-arrowhead" end="source" d="M 26 0 L 0 13 L 26 26 z"></path></g><g class="marker-arrowhead-group marker-arrowhead-group-target" id="v-151" transform="translate(147,231) scale(1,1) rotate(-90)"><path class="marker-arrowhead" end="target" d="M 26 0 L 0 13 L 26 26 z"></path></g></g><g class="link-tools"><g class="link-tool" id="v-149" transform="translate(230, 153.13609313964844) "><g class="tool-remove" event="remove"><circle r="11"></circle><path transform="scale(.8) translate(-16, -16)" d="M24.778,21.419 19.276,15.917 24.777,10.415 21.949,7.585 16.447,13.087 10.945,7.585 8.117,10.415 13.618,15.917 8.116,21.419 10.946,24.248 16.447,18.746 21.948,24.248z"></path><title>Remove link.</title></g><g class="tool-options" event="link:options"><circle r="11" transform="translate(25)"></circle><path fill="white" transform="scale(.55) translate(29, -16)" d="M31.229,17.736c0.064-0.571,0.104-1.148,0.104-1.736s-0.04-1.166-0.104-1.737l-4.377-1.557c-0.218-0.716-0.504-1.401-0.851-2.05l1.993-4.192c-0.725-0.91-1.549-1.734-2.458-2.459l-4.193,1.994c-0.647-0.347-1.334-0.632-2.049-0.849l-1.558-4.378C17.165,0.708,16.588,0.667,16,0.667s-1.166,0.041-1.737,0.105L12.707,5.15c-0.716,0.217-1.401,0.502-2.05,0.849L6.464,4.005C5.554,4.73,4.73,5.554,4.005,6.464l1.994,4.192c-0.347,0.648-0.632,1.334-0.849,2.05l-4.378,1.557C0.708,14.834,0.667,15.412,0.667,16s0.041,1.165,0.105,1.736l4.378,1.558c0.217,0.715,0.502,1.401,0.849,2.049l-1.994,4.193c0.725,0.909,1.549,1.733,2.459,2.458l4.192-1.993c0.648,0.347,1.334,0.633,2.05,0.851l1.557,4.377c0.571,0.064,1.148,0.104,1.737,0.104c0.588,0,1.165-0.04,1.736-0.104l1.558-4.377c0.715-0.218,1.399-0.504,2.049-0.851l4.193,1.993c0.909-0.725,1.733-1.549,2.458-2.458l-1.993-4.193c0.347-0.647,0.633-1.334,0.851-2.049L31.229,17.736zM16,20.871c-2.69,0-4.872-2.182-4.872-4.871c0-2.69,2.182-4.872,4.872-4.872c2.689,0,4.871,2.182,4.871,4.872C20.871,18.689,18.689,20.871,16,20.871z"></path><title>Link options.</title></g></g></g></g><g id="j_12" model-id="3b9de57d-be21-4e9e-a73b-693b32e5f14a" class="joint-cell joint-type-link joint-link joint-theme-modern" data-type="link"><path class="connection" stroke="#6a6c8a" d="M 265 340 310 340 S 320 340 320 350 L 320 405" id="v-147" stroke-width="2"></path><path class="marker-source" fill="black" stroke="black" d="M 0 0 0 0" transform="translate(265,340) scale(1,1) rotate(0)"></path><path class="marker-target" fill="#6a6c8a" stroke="#6a6c8a" d="M 10 0 L 0 5 L 10 10 z" id="v-146" transform="translate(315,415) scale(1,1) rotate(-90)"></path><path class="connection-wrap" d="M 265 340 310 340 S 320 340 320 350 L 320 405"></path><g class="labels"></g><g class="marker-vertices"></g><g class="marker-arrowheads"><g class="marker-arrowhead-group marker-arrowhead-group-source" id="v-144" transform="translate(265,327) scale(1,1) rotate(0)"><path class="marker-arrowhead" end="source" d="M 26 0 L 0 13 L 26 26 z"></path></g><g class="marker-arrowhead-group marker-arrowhead-group-target" id="v-145" transform="translate(307,415) scale(1,1) rotate(-90)"><path class="marker-arrowhead" end="target" d="M 26 0 L 0 13 L 26 26 z"></path></g></g><g class="link-tools"><g class="link-tool" id="v-143" transform="translate(305, 340) "><g class="tool-remove" event="remove"><circle r="11"></circle><path transform="scale(.8) translate(-16, -16)" d="M24.778,21.419 19.276,15.917 24.777,10.415 21.949,7.585 16.447,13.087 10.945,7.585 8.117,10.415 13.618,15.917 8.116,21.419 10.946,24.248 16.447,18.746 21.948,24.248z"></path><title>Remove link.</title></g><g class="tool-options" event="link:options"><circle r="11" transform="translate(25)"></circle><path fill="white" transform="scale(.55) translate(29, -16)" d="M31.229,17.736c0.064-0.571,0.104-1.148,0.104-1.736s-0.04-1.166-0.104-1.737l-4.377-1.557c-0.218-0.716-0.504-1.401-0.851-2.05l1.993-4.192c-0.725-0.91-1.549-1.734-2.458-2.459l-4.193,1.994c-0.647-0.347-1.334-0.632-2.049-0.849l-1.558-4.378C17.165,0.708,16.588,0.667,16,0.667s-1.166,0.041-1.737,0.105L12.707,5.15c-0.716,0.217-1.401,0.502-2.05,0.849L6.464,4.005C5.554,4.73,4.73,5.554,4.005,6.464l1.994,4.192c-0.347,0.648-0.632,1.334-0.849,2.05l-4.378,1.557C0.708,14.834,0.667,15.412,0.667,16s0.041,1.165,0.105,1.736l4.378,1.558c0.217,0.715,0.502,1.401,0.849,2.049l-1.994,4.193c0.725,0.909,1.549,1.733,2.459,2.458l4.192-1.993c0.648,0.347,1.334,0.633,2.05,0.851l1.557,4.377c0.571,0.064,1.148,0.104,1.737,0.104c0.588,0,1.165-0.04,1.736-0.104l1.558-4.377c0.715-0.218,1.399-0.504,2.049-0.851l4.193,1.993c0.909-0.725,1.733-1.549,2.458-2.458l-1.993-4.193c0.347-0.647,0.633-1.334,0.851-2.049L31.229,17.736zM16,20.871c-2.69,0-4.872-2.182-4.872-4.871c0-2.69,2.182-4.872,4.872-4.872c2.689,0,4.871,2.182,4.871,4.872C20.871,18.689,18.689,20.871,16,20.871z"></path><title>Link options.</title></g></g></g></g><g id="j_5" model-id="13402455-006d-41e3-aacc-514f551b78b8" class="joint-cell joint-type-qad joint-type-qad-answer joint-element joint-theme-modern" data-type="qad.Answer" transform="translate(545,400)"><rect id="v-82" fill="#4b4a67" stroke="none" rx="3" ry="3" width="117.296875" height="66.8" transform="matrix(1,0,0,1,0,0)"></rect><text id="v-83" font-size="14" y="0.8em" xml:space="preserve" fill="#f6f6f6" font-family="Arial, helvetica, sans-serif" transform="matrix(1,0,0,1,29.2,27.2)"><tspan id="v-84" class="v-line" dy="0em" x="0">Poor&nbsp;boy.</tspan></text></g><g id="j_2" model-id="857c9deb-86c3-47d8-bc6d-8f36c5294eab" class="joint-cell joint-type-qad joint-type-qad-answer joint-element joint-theme-modern" data-type="qad.Answer" transform="translate(553,524)"><rect id="v-43" fill="#4b4a67" stroke="none" rx="3" ry="3" width="146.9453125" height="66.8" transform="matrix(1,0,0,1,0,0)"></rect><text id="v-44" font-size="14" y="0.8em" xml:space="preserve" fill="#f6f6f6" font-family="Arial, helvetica, sans-serif" transform="matrix(1,0,0,1,31.1,27.2)"><tspan id="v-45" class="v-line" dy="0em" x="0">Put&nbsp;it&nbsp;in&nbsp;a&nbsp;bin.</tspan></text></g><g id="j_9" model-id="7e96039d-c3d4-4c86-b8e5-9a49835e114b" class="joint-cell joint-type-link joint-link joint-theme-modern" data-type="link"><path class="connection" stroke="#6a6c8a" d="M 408 490 520 490 S 530 490 530 480 L 530 440 S 530 430 533 430 L 535 430" id="v-129" stroke-width="2"></path><path class="marker-source" fill="black" stroke="black" d="M 0 0 0 0" transform="translate(408,490) scale(1,1) rotate(0)"></path><path class="marker-target" fill="#6a6c8a" stroke="#6a6c8a" d="M 10 0 L 0 5 L 10 10 z" id="v-128" transform="translate(545,435) scale(1,1) rotate(-180)"></path><path class="connection-wrap" d="M 408 490 520 490 S 530 490 530 480 L 530 440 S 530 430 533 430 L 535 430"></path><g class="labels"></g><g class="marker-vertices"></g><g class="marker-arrowheads"><g class="marker-arrowhead-group marker-arrowhead-group-source" id="v-126" transform="translate(408,477) scale(1,1) rotate(0)"><path class="marker-arrowhead" end="source" d="M 26 0 L 0 13 L 26 26 z"></path></g><g class="marker-arrowhead-group marker-arrowhead-group-target" id="v-127" transform="translate(545,443) scale(1,1) rotate(-180)"><path class="marker-arrowhead" end="target" d="M 26 0 L 0 13 L 26 26 z"></path></g></g><g class="link-tools"><g class="link-tool" id="v-125" transform="translate(448, 490) "><g class="tool-remove" event="remove"><circle r="11"></circle><path transform="scale(.8) translate(-16, -16)" d="M24.778,21.419 19.276,15.917 24.777,10.415 21.949,7.585 16.447,13.087 10.945,7.585 8.117,10.415 13.618,15.917 8.116,21.419 10.946,24.248 16.447,18.746 21.948,24.248z"></path><title>Remove link.</title></g><g class="tool-options" event="link:options"><circle r="11" transform="translate(25)"></circle><path fill="white" transform="scale(.55) translate(29, -16)" d="M31.229,17.736c0.064-0.571,0.104-1.148,0.104-1.736s-0.04-1.166-0.104-1.737l-4.377-1.557c-0.218-0.716-0.504-1.401-0.851-2.05l1.993-4.192c-0.725-0.91-1.549-1.734-2.458-2.459l-4.193,1.994c-0.647-0.347-1.334-0.632-2.049-0.849l-1.558-4.378C17.165,0.708,16.588,0.667,16,0.667s-1.166,0.041-1.737,0.105L12.707,5.15c-0.716,0.217-1.401,0.502-2.05,0.849L6.464,4.005C5.554,4.73,4.73,5.554,4.005,6.464l1.994,4.192c-0.347,0.648-0.632,1.334-0.849,2.05l-4.378,1.557C0.708,14.834,0.667,15.412,0.667,16s0.041,1.165,0.105,1.736l4.378,1.558c0.217,0.715,0.502,1.401,0.849,2.049l-1.994,4.193c0.725,0.909,1.549,1.733,2.459,2.458l4.192-1.993c0.648,0.347,1.334,0.633,2.05,0.851l1.557,4.377c0.571,0.064,1.148,0.104,1.737,0.104c0.588,0,1.165-0.04,1.736-0.104l1.558-4.377c0.715-0.218,1.399-0.504,2.049-0.851l4.193,1.993c0.909-0.725,1.733-1.549,2.458-2.458l-1.993-4.193c0.347-0.647,0.633-1.334,0.851-2.049L31.229,17.736zM16,20.871c-2.69,0-4.872-2.182-4.872-4.871c0-2.69,2.182-4.872,4.872-4.872c2.689,0,4.871,2.182,4.871,4.872C20.871,18.689,18.689,20.871,16,20.871z"></path><title>Link options.</title></g></g></g></g><g id="j_8" model-id="eecaae21-3e81-43f9-a5c1-6ea40c1adba8" class="joint-cell joint-type-link joint-link joint-theme-modern" data-type="link"><path class="connection" stroke="#6a6c8a" d="M 408 520 520 520 S 530 520 530 530 L 530 550 S 530 560 537 560 L 543 560" id="v-123" stroke-width="2"></path><path class="marker-source" fill="black" stroke="black" d="M 0 0 0 0" transform="translate(408,520) scale(1,1) rotate(0)"></path><path class="marker-target" fill="#6a6c8a" stroke="#6a6c8a" d="M 10 0 L 0 5 L 10 10 z" id="v-122" transform="translate(553,565) scale(1,1) rotate(-180)"></path><path class="connection-wrap" d="M 408 520 520 520 S 530 520 530 530 L 530 550 S 530 560 537 560 L 543 560"></path><g class="labels"></g><g class="marker-vertices"></g><g class="marker-arrowheads"><g class="marker-arrowhead-group marker-arrowhead-group-source" id="v-120" transform="translate(408,507) scale(1,1) rotate(0)"><path class="marker-arrowhead" end="source" d="M 26 0 L 0 13 L 26 26 z"></path></g><g class="marker-arrowhead-group marker-arrowhead-group-target" id="v-121" transform="translate(553,573) scale(1,1) rotate(-180)"><path class="marker-arrowhead" end="target" d="M 26 0 L 0 13 L 26 26 z"></path></g></g><g class="link-tools"><g class="link-tool" id="v-119" transform="translate(448, 520) "><g class="tool-remove" event="remove"><circle r="11"></circle><path transform="scale(.8) translate(-16, -16)" d="M24.778,21.419 19.276,15.917 24.777,10.415 21.949,7.585 16.447,13.087 10.945,7.585 8.117,10.415 13.618,15.917 8.116,21.419 10.946,24.248 16.447,18.746 21.948,24.248z"></path><title>Remove link.</title></g><g class="tool-options" event="link:options"><circle r="11" transform="translate(25)"></circle><path fill="white" transform="scale(.55) translate(29, -16)" d="M31.229,17.736c0.064-0.571,0.104-1.148,0.104-1.736s-0.04-1.166-0.104-1.737l-4.377-1.557c-0.218-0.716-0.504-1.401-0.851-2.05l1.993-4.192c-0.725-0.91-1.549-1.734-2.458-2.459l-4.193,1.994c-0.647-0.347-1.334-0.632-2.049-0.849l-1.558-4.378C17.165,0.708,16.588,0.667,16,0.667s-1.166,0.041-1.737,0.105L12.707,5.15c-0.716,0.217-1.401,0.502-2.05,0.849L6.464,4.005C5.554,4.73,4.73,5.554,4.005,6.464l1.994,4.192c-0.347,0.648-0.632,1.334-0.849,2.05l-4.378,1.557C0.708,14.834,0.667,15.412,0.667,16s0.041,1.165,0.105,1.736l4.378,1.558c0.217,0.715,0.502,1.401,0.849,2.049l-1.994,4.193c0.725,0.909,1.549,1.733,2.459,2.458l4.192-1.993c0.648,0.347,1.334,0.633,2.05,0.851l1.557,4.377c0.571,0.064,1.148,0.104,1.737,0.104c0.588,0,1.165-0.04,1.736-0.104l1.558-4.377c0.715-0.218,1.399-0.504,2.049-0.851l4.193,1.993c0.909-0.725,1.733-1.549,2.458-2.458l-1.993-4.193c0.347-0.647,0.633-1.334,0.851-2.049L31.229,17.736zM16,20.871c-2.69,0-4.872-2.182-4.872-4.871c0-2.69,2.182-4.872,4.872-4.872c2.689,0,4.871,2.182,4.871,4.872C20.871,18.689,18.689,20.871,16,20.871z"></path><title>Link options.</title></g></g></g></g></g><defs id="v-5"><lineargradient id="linearGradientv-3-394821923" x1="0%" y1="0%" x2="0%" y2="100%"><stop offset="0%" stop-color="#FEB663" stop-opacity="1"></stop><stop offset="100%" stop-color="#31D0C6" stop-opacity="1"></stop></lineargradient></defs></svg></div>

      <div id="statusbar">
        <span class="message">Selection emptied.</span>
      </div>

      <div id="preview" class="preview">
      </div>

    </section>

    <script src="${resource(dir:'js/joint',file:'jquery.js.download')}"></script>
    <script src="${resource(dir:'js/joint',file:'index.js.download')}"></script>
    <script src="${resource(dir:'js/joint',file:'backbone.js.download')}"></script>
    <script src="${resource(dir:'js/joint',file:'rappid.js.download')}"></script>
    <script src="${resource(dir:'js/joint',file:'joint.shapes.qad.js.download')}"></script>
    <script src="${resource(dir:'js/joint',file:'selection.js.download')}"></script>
    <script src="${resource(dir:'js/joint',file:'factory.js.download')}"></script>
    <script src="${resource(dir:'js/joint',file:'snippet.js.download')}"></script>
    <script src="${resource(dir:'js/joint',file:'app.js.download')}"></script>
    <script src="${resource(dir:'js/joint',file:'index.js(1).download')}"></script>
   
    <script>joint.setTheme('material');</script>


  </body>
</html>