<!DOCTYPE html>

<html lang="en">
    <head>
        <meta  content="text/html; charset=UTF-8">
        <!--Using the viewport meta tag to control layout on mobile browsers-->

        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrapValidator.min.css" rel="stylesheet">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/css/bootstrap-select.min.css">


        <title>National Flags</title>
    </head>
    <body>       
        <div class="container">
            <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-10">
                    <div class="page-header">
                        <h1>The flag of <%= request.getAttribute("fullName")%></h1>

                    </div>
                    <div class="row">
                        <div class="panel panel-success">
                            <div class="panel-heading">Flag Display:</div>
                            <div class="panel-body" > 
                                <img class="img-responsive" src=" <%= request.getAttribute("flagURL")%> " class="img-fluid" alt="404 Flag not Found" width="50%" alt="Country Flag">
                            </div>
                        </div>

                    </div>

                    <br>
                    <div class="row">
                        <!--<label for="hex" label-success>Hex:</label>-->

                        <div class="panel panel-info">
                            <div class="panel-heading">Flag Description:</div>
                            <div class="panel-body"> <%=request.getAttribute("description")%></div>
                        </div>

                    </div>

                    <div class="row">

                        <div class="panel panel-success">
                            <div class="panel-heading">Choose another country to display:</div>
                            <div class="panel-body"> 
                                <form id="country" method="get" action="getCountry" data-toggle="validator" >
                                    <select  class="selectpicker" name="country" title="Choose one of the following..." required>
                                        <option value="af"> Afghanistan </option>
                                        <option value="ax"> Akrotiri </option>
                                        <option value="al"> Albania </option>
                                        <option value="ag"> Algeria </option>
                                        <option value="aq"> American Samoa </option>
                                        <option value="an"> Andorra </option>
                                        <option value="ao"> Angola </option>
                                        <option value="av"> Anguilla </option>
                                        <option value="ay"> Antarctica </option>
                                        <option value="ac"> Antigua and Barbuda </option>
                                        <option value="xq"> Arctic Ocean </option>
                                        <option value="ar"> Argentina </option>
                                        <option value="am"> Armenia </option>
                                        <option value="aa"> Aruba </option>
                                        <option value="at"> Ashmore and Cartier Islands </option>
                                        <option value="zh"> Atlantic Ocean </option>
                                        <option value="as"> Australia </option>
                                        <option value="au"> Austria </option>
                                        <option value="aj"> Azerbaijan </option>
                                        <option value="bf"> Bahamas, The </option>
                                        <option value="ba"> Bahrain </option>
                                        <option value="bg"> Bangladesh </option>
                                        <option value="bb"> Barbados </option>
                                        <option value="bo"> Belarus </option>
                                        <option value="be"> Belgium </option>
                                        <option value="bh"> Belize </option>
                                        <option value="bn"> Benin </option>
                                        <option value="bd"> Bermuda </option>
                                        <option value="bt"> Bhutan </option>
                                        <option value="bl"> Bolivia </option>
                                        <option value="bk"> Bosnia and Herzegovina </option>
                                        <option value="bc"> Botswana </option>
                                        <option value="bv"> Bouvet Island </option>
                                        <option value="br"> Brazil </option>
                                        <option value="io"> British Indian Ocean Territory </option>
                                        <option value="vi"> British Virgin Islands </option>
                                        <option value="bx"> Brunei </option>
                                        <option value="bu"> Bulgaria </option>
                                        <option value="uv"> Burkina Faso </option>
                                        <option value="bm"> Burma </option>
                                        <option value="by"> Burundi </option>
                                        <option value="cv"> Cabo Verde </option>
                                        <option value="cb"> Cambodia </option>
                                        <option value="cm"> Cameroon </option>
                                        <option value="ca"> Canada </option>
                                        <option value="cj"> Cayman Islands </option>
                                        <option value="ct"> Central African Republic </option>
                                        <option value="cd"> Chad </option>
                                        <option value="ci"> Chile </option>
                                        <option value="ch"> China </option>
                                        <option value="kt"> Christmas Island </option>
                                        <option value="ip"> Clipperton Island </option>
                                        <option value="ck"> Cocos (Keeling) Islands </option>
                                        <option value="co"> Colombia </option>
                                        <option value="cn"> Comoros </option>
                                        <option value="cg"> Congo, Democratic Republic of the </option>
                                        <option value="cf"> Congo, Republic of the </option>
                                        <option value="cw"> Cook Islands </option>
                                        <option value="cr"> Coral Sea Islands </option>
                                        <option value="cs"> Costa Rica </option>
                                        <option value="iv"> Cote d'Ivoire </option>
                                        <option value="hr"> Croatia </option>
                                        <option value="cu"> Cuba </option>
                                        <option value="cc"> Curacao </option>
                                        <option value="cy"> Cyprus </option>
                                        <option value="ez"> Czechia </option>
                                        <option value="da"> Denmark </option>
                                        <option value="dx"> Dhekelia </option>
                                        <option value="dj"> Djibouti </option>
                                        <option value="do"> Dominica </option>
                                        <option value="dr"> Dominican Republic </option>
                                        <option value="ec"> Ecuador </option>
                                        <option value="eg"> Egypt </option>
                                        <option value="es"> El Salvador </option>
                                        <option value="ek"> Equatorial Guinea </option>
                                        <option value="er"> Eritrea </option>
                                        <option value="en"> Estonia </option>
                                        <option value="et"> Ethiopia </option>
                                        <option value="fk"> Falkland Islands (Islas Malvinas) </option>
                                        <option value="fo"> Faroe Islands </option>
                                        <option value="fj"> Fiji </option>
                                        <option value="fi"> Finland </option>
                                        <option value="fr"> France </option>
                                        <option value="fp"> French Polynesia </option>
                                        <option value="fs"> French Southern and Antarctic Lands </option>
                                        <option value="gb"> Gabon </option>
                                        <option value="ga"> Gambia, The </option>
                                        <option value="gz"> Gaza Strip </option>
                                        <option value="gg"> Georgia </option>
                                        <option value="gm"> Germany </option>
                                        <option value="gh"> Ghana </option>
                                        <option value="gi"> Gibraltar </option>
                                        <option value="gr"> Greece </option>
                                        <option value="gl"> Greenland </option>
                                        <option value="gj"> Grenada </option>
                                        <option value="gq"> Guam </option>
                                        <option value="gt"> Guatemala </option>
                                        <option value="gk"> Guernsey </option>
                                        <option value="gv"> Guinea </option>
                                        <option value="pu"> Guinea-Bissau </option>
                                        <option value="gy"> Guyana </option>
                                        <option value="ha"> Haiti </option>
                                        <option value="hm"> Heard Island and McDonald Islands </option>
                                        <option value="vt"> Holy See (Vatican City) </option>
                                        <option value="ho"> Honduras </option>
                                        <option value="hk"> Hong Kong </option>
                                        <option value="hu"> Hungary </option>
                                        <option value="ic"> Iceland </option>
                                        <option value="in"> India </option>
                                        <option value="xo"> Indian Ocean </option>
                                        <option value="id"> Indonesia </option>
                                        <option value="ir"> Iran </option>
                                        <option value="iz"> Iraq </option>
                                        <option value="ei"> Ireland </option>
                                        <option value="im"> Isle of Man </option>
                                        <option value="is"> Israel </option>
                                        <option value="it"> Italy </option>
                                        <option value="jm"> Jamaica </option>
                                        <option value="jn"> Jan Mayen </option>
                                        <option value="ja"> Japan </option>
                                        <option value="je"> Jersey </option>
                                        <option value="jo"> Jordan </option>
                                        <option value="kz"> Kazakhstan </option>
                                        <option value="ke"> Kenya </option>
                                        <option value="kr"> Kiribati </option>
                                        <option value="kn"> Korea, North </option>
                                        <option value="ks"> Korea, South </option>
                                        <option value="kv"> Kosovo </option>
                                        <option value="ku"> Kuwait </option>
                                        <option value="kg"> Kyrgyzstan </option>
                                        <option value="la"> Laos </option>
                                        <option value="lg"> Latvia </option>
                                        <option value="le"> Lebanon </option>
                                        <option value="lt"> Lesotho </option>
                                        <option value="li"> Liberia </option>
                                        <option value="ly"> Libya </option>
                                        <option value="ls"> Liechtenstein </option>
                                        <option value="lh"> Lithuania </option>
                                        <option value="lu"> Luxembourg </option>
                                        <option value="mc"> Macau </option>
                                        <option value="mk"> Macedonia </option>
                                        <option value="ma"> Madagascar </option>
                                        <option value="mi"> Malawi </option>
                                        <option value="my"> Malaysia </option>
                                        <option value="mv"> Maldives </option>
                                        <option value="ml"> Mali </option>
                                        <option value="mt"> Malta </option>
                                        <option value="rm"> Marshall Islands </option>
                                        <option value="mr"> Mauritania </option>
                                        <option value="mp"> Mauritius </option>
                                        <option value="mx"> Mexico </option>
                                        <option value="fm"> Micronesia, Federated States of </option>
                                        <option value="md"> Moldova </option>
                                        <option value="mn"> Monaco </option>
                                        <option value="mg"> Mongolia </option>
                                        <option value="mj"> Montenegro </option>
                                        <option value="mh"> Montserrat </option>
                                        <option value="mo"> Morocco </option>
                                        <option value="mz"> Mozambique </option>
                                        <option value="wa"> Namibia </option>
                                        <option value="nr"> Nauru </option>
                                        <option value="bq"> Navassa Island </option>
                                        <option value="np"> Nepal </option>
                                        <option value="nl"> Netherlands </option>
                                        <option value="nc"> New Caledonia </option>
                                        <option value="nz"> New Zealand </option>
                                        <option value="nu"> Nicaragua </option>
                                        <option value="ng"> Niger </option>
                                        <option value="ni"> Nigeria </option>
                                        <option value="ne"> Niue </option>
                                        <option value="nf"> Norfolk Island </option>
                                        <option value="cq"> Northern Mariana Islands </option>
                                        <option value="no"> Norway </option>
                                        <option value="mu"> Oman </option>
                                        <option value="zn"> Pacific Ocean </option>
                                        <option value="pk"> Pakistan </option>
                                        <option value="ps"> Palau </option>
                                        <option value="pm"> Panama </option>
                                        <option value="pp"> Papua New Guinea </option>
                                        <option value="pf"> Paracel Islands </option>
                                        <option value="pa"> Paraguay </option>
                                        <option value="pe"> Peru </option>
                                        <option value="rp"> Philippines </option>
                                        <option value="pc"> Pitcairn Islands </option>
                                        <option value="pl"> Poland </option>
                                        <option value="po"> Portugal </option>
                                        <option value="rq"> Puerto Rico </option>
                                        <option value="qa"> Qatar </option>
                                        <option value="ro"> Romania </option>
                                        <option value="rs"> Russia </option>
                                        <option value="rw"> Rwanda </option>
                                        <option value="tb"> Saint Barthelemy </option>
                                        <option value="sh"> Saint Helena, Ascension, and Tristan da Cunha </option>
                                        <option value="sc"> Saint Kitts and Nevis </option>
                                        <option value="st"> Saint Lucia </option>
                                        <option value="rn"> Saint Martin </option>
                                        <option value="sb"> Saint Pierre and Miquelon </option>
                                        <option value="vc"> Saint Vincent and the Grenadines </option>
                                        <option value="ws"> Samoa </option>
                                        <option value="sm"> San Marino </option>
                                        <option value="tp"> Sao Tome and Principe </option>
                                        <option value="sa"> Saudi Arabia </option>
                                        <option value="sg"> Senegal </option>
                                        <option value="ri"> Serbia </option>
                                        <option value="se"> Seychelles </option>
                                        <option value="sl"> Sierra Leone </option>
                                        <option value="sn"> Singapore </option>
                                        <option value="sk"> Sint Maarten </option>
                                        <option value="lo"> Slovakia </option>
                                        <option value="si"> Slovenia </option>
                                        <option value="bp"> Solomon Islands </option>
                                        <option value="so"> Somalia </option>
                                        <option value="sf"> South Africa </option>
                                        <option value="oo"> Southern Ocean </option>
                                        <option value="sx"> South Georgia and South Sandwich Islands </option>
                                        <option value="od"> South Sudan </option>
                                        <option value="sp"> Spain </option>
                                        <option value="pg"> Spratly Islands </option>
                                        <option value="ce"> Sri Lanka </option>
                                        <option value="su"> Sudan </option>
                                        <option value="ns"> Suriname </option>
                                        <option value="sv"> Svalbard </option>
                                        <option value="wz"> Swaziland </option>
                                        <option value="sw"> Sweden </option>
                                        <option value="sz"> Switzerland </option>
                                        <option value="sy"> Syria </option>
                                        <option value="tw"> Taiwan </option>
                                        <option value="ti"> Tajikistan </option>
                                        <option value="tz"> Tanzania </option>
                                        <option value="th"> Thailand </option>
                                        <option value="tt"> Timor-Leste </option>
                                        <option value="to"> Togo </option>
                                        <option value="tl"> Tokelau </option>
                                        <option value="tn"> Tonga </option>
                                        <option value="td"> Trinidad and Tobago </option>
                                        <option value="ts"> Tunisia </option>
                                        <option value="tu"> Turkey </option>
                                        <option value="tx"> Turkmenistan </option>
                                        <option value="tk"> Turks and Caicos Islands </option>
                                        <option value="tv"> Tuvalu </option>
                                        <option value="ug"> Uganda </option>
                                        <option value="up"> Ukraine </option>
                                        <option value="ae"> United Arab Emirates </option>
                                        <option value="uk"> United Kingdom </option>
                                        <option value="us"> United States </option>
                                        <option value="uy"> Uruguay </option>
                                        <option value="uz"> Uzbekistan </option>
                                        <option value="nh"> Vanuatu </option>
                                        <option value="ve"> Venezuela </option>
                                        <option value="vm"> Vietnam </option>
                                        <option value="vq"> Virgin Islands </option>
                                        <option value="wq"> Wake Island </option>
                                        <option value="wf"> Wallis and Futuna </option>
                                        <option value="we"> West Bank </option>
                                        <option value="wi"> Western Sahara </option>
                                        <option value="ym"> Yemen </option>
                                        <option value="za"> Zambia </option>
                                        <option value="zi"> Zimbabwe </option>
                                        <option value="ee"> European Union </option>
                                    </select>
                                    <button type="submit" class="btn btn-info">Submit</button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-xs-1"></div>
            </div>
        </div>

        <!--        <footer class="footer navbar-fixed-bottom">
                    <div class="container">
                        <p class="text-capitalize">Produced by Jiaming NI</p>
                    </div>
                </footer>-->

        <!-- jQuery -->
        <script   src="https://code.jquery.com/jquery-2.2.4.min.js"   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <script src="js/bootstrapValidator.min.js"></script>

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/js/bootstrap-select.min.js"></script>
    </body>
</html>
