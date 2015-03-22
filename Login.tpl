{*<!--
/*********************************************************************************
** The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
*
 ********************************************************************************/
-->*}
{strip}
    <!doctype html>
    <html>
    <head>
        <title>Vtiger login page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        {* Bootstrap *}
        <link rel="stylesheet" href="layouts/vlayout/modules/Users/resources/flatty-1/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="layouts/vlayout/modules/Users/resources/flatty-1/bootstrap/css/bootstrap-theme.min.css" />
        <link rel="stylesheet" href="layouts/vlayout/modules/Users/resources/flatty-1/css/override.css" />
    </head>
    <body class="theme-6">
    <div class="container-fluid login-container">
        <div class="row">
            <div class="col-md-3">
                <div class="logo">
                    <img src="layouts/vlayout/modules/Users/resources/flatty-1/logo.png">
                    <br />
                    <a target="_blank" href="http://{$COMPANY_DETAILSCOMPANY_DETAILS.website}">{$COMPANY_DETAILS.name}</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-push-4">
                <form class="form-horizontal login-form" action="index.php?module=Users&action=Login" method="POST" id="loginDiv">
                    {if isset($smarty.request.error)}
                        <div class="alert alert-error">
                            <p>Invalid username or password.</p>
                        </div>
                    {/if}
                    {if isset($smarty.request.fpError)}
                        <div class="alert alert-error">
                            <p>Invalid Username or Email address.</p>
                        </div>
                    {/if}
                    {if isset($smarty.request.status)}
                        <div class="alert alert-success">
                            <p>Mail was send to your inbox, please check your e-mail.</p>
                        </div>
                    {/if}
                    {if isset($smarty.request.statusError)}
                        <div class="alert alert-error">
                            <p>Outgoing mail server was not configured.</p>
                        </div>
                    {/if}
                    <div>
                        <input type="text" id="username" name="username" placeholder="Username">
                    </div>
                    <div>
                        <input type="password" id="password" name="password" placeholder="Password">
                    </div>

                    <div class="row" id="forgotPassword">
                        <div class="col-md-6">
                            <button type="submit" class="btn btn-primary main-button signin-btn">Sign in</button>
                        </div>
                        <div class="col-md-6"><a class="btn-forgot pull-right">Forgot Password ?</a></div>
                    </div>

                    <div class="login-subscript">
                        <small> Powered by vtiger CRM {$CURRENT_VERSION}</small>
                    </div>
                </form>


                <div class="hide" id="forgotPasswordDiv">
                    <form class="form-horizontal login-form" action="forgotPassword.php" method="POST">
                        <div>
                            <input type="text" id="user_name" name="user_name" placeholder="Enter your username" />
                        </div>
                        <div>
                            <input type="text" id="emailId" name="emailId"  placeholder="Enter your email address" />
                        </div>
                        <div class="row signin-button">
                            <div class="col-md-6">
                                <input type="submit" class="btn btn-primary main-button retrieveButton" value="Retrieve" name="retrievePassword">
                            </div>
                            <div class="col-md-6">
                                <a class="btn back-button">Back</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    {*<script type="text/javascript" src="layouts/vlayout/modules/Users/resources/flatty-1/js/placeholders.min.js"></script>*}
    <script type="text/javascript" src="layouts/vlayout/modules/Users/resources/flatty-1/js/login.js"></script>
    </body>
    </html>
{/strip}