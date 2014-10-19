module Handler.Home where

import Import

getHomeR :: Handler Html

getHomeR = defaultLayout $ do
    setTitle "Remote And Functional Jobs"

    addScriptRemote "//ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"
    addStylesheetRemote "//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"

    [whamlet|
        <div .container-fluid>
          <div .row-fluid>
            <h1>Remote And Functional Jobs
                <hr>

          <div .row-fluid>
            <div .span6>
                <ul>
                    <li  .job-item>
                        DevOps Analyst
                    <li .job-item>
                        Lead Fronted Developer (HTML\CSS\PHP)

            <div .span6> 
                <p>Post a Job
                <form #job-form method=post action=@{JobR}>
                    <input type=text name=title>
                    <textarea name=content>
                    <br>
                    <input type=submit value=submit>
    |]

    toWidget [lucius|
        body {
            margin: 0 auto;
        }

        li.job-item {
            list-style-type: none;
            border: 1px dashed #090;
            padding: 0.5em;
            background: #cfc;
        }

        #job-form textarea[name="content"] {
            width: 80%;
            height: 300px;
        }

        #job-form input[name="title"] {
            width: 80%;
        }
    |]
    
    toWidget [julius|
        $(function(){
        });
    |]