// See post: http://asmaloney.com/2014/01/code/creating-an-interactive-map-with-leaflet-and-openstreetmap/

var map = L.map( 'map', {
  center: [60.38495, 23.12898],
  minZoom: 2,
  zoom: 15
})

L.tileLayer( 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
  attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
  /*subdomains: ['a', 'b', 'c']*/
}).addTo( map )

var myURL = jQuery( 'script[src$="leaf.js"]' ).attr( 'src' ).replace( 'leaf.js', '' )

var myIcon;
if(L.Browser.mobile)
{
  myIcon = L.icon({iconUrl: myURL + 'pin24.png',
  iconRetinaUrl: myURL + 'pin48.png',
  iconSize: [70, 60]
  })
}
else
{
    myIcon = L.icon({
    iconUrl: myURL + 'pin24.png',
    iconRetinaUrl: myURL + 'pin48.png',
    iconSize: [29, 24]
    })
}

function sisaltaa(jono, arvo)
{
  var res = jono.split(',').map(Number);

  for(var i=0;i<res.length;i++)
    if(res[i]==arvo)
      return true;
  return false;
}

//alert("xmlhttp alku");  //testi

var xmlhttp = new XMLHttpRequest();

var talteenMarkers={};

var checkbox_indeksit = new Array(500);
for (i=0; i < 500; i++)
  checkbox_indeksit[i]=new Array(1000);

var checkbox_indeksien_maara;
var checkbox_indeksien_pituudet=new Array(600);

xmlhttp.onreadystatechange = function()
{
  if (this.readyState == 4 && this.status == 200)
  {
    var myObj=JSON.parse(this.responseText);

    var CHECKBOXIEN_MAARA=15;
    var j;

  for(j=0;j<CHECKBOXIEN_MAARA;j++)    //käydään läpi checkboxit
  {
    var k=0;

    for(var i=0;i<myObj.Tapahtumat.length;i++)    //etsitään markerien suodatus-rivillä olevat checkboxien numerot
    {
        if(sisaltaa(myObj.Tapahtumat[i].suodatus,(j+1)))
        {
          checkbox_indeksit[j][k]=i+1;
          k++;
        }
    }
    checkbox_indeksien_pituudet[j]=k;
}

checkbox_indeksien_maara=j;

    //console.log("myObj taulukon läpikäynti(" + myObj.Tapahtumat.length + "):");

     for(var i = 0; i < myObj.Tapahtumat.length; i++)
    {
      var obj = myObj.Tapahtumat[i];
      //console.log(obj.Järjestäjän_nimi + ", " + obj.Tapahtuman_nimi);

      var xxx='';
      
      if(L.Browser.mobile) xxx+="<font size='5.5'>";

      xxx+='<a href=http:/\//' + obj.Jarjestajannettisivut + ' '
      + 'target="popup"'
      + ' onclick="window.open(&#39' + 'http:/\//' + obj.Jarjestajannettisivut +'&#39, &#39name&#39, &#39width=600,height=400&#39);return false;"'
      +  '><div class="link">' + obj.Jarjestajan_nimi + '</div></a><br>';

      //Huom! samoissa koordinaateissa olevat markkerit menevät päällekäin!
      
    var lkm=0;
      for(var k = 0; k < myObj.Tapahtumat.length; k++)
      if(myObj.Tapahtumat[k].latitude==obj.latitude && myObj.Tapahtumat[k].longitude==obj.longitude)
          lkm++;

      for(var k = 0; k < myObj.Tapahtumat.length; k++)
      {
        if(myObj.Tapahtumat[k].latitude==obj.latitude && myObj.Tapahtumat[k].longitude==obj.longitude)
        {
          if(lkm>1)
            xxx+=('<b>' + myObj.Tapahtumat[k].Osoite + '</b><br>');
            
          //muotoilee aikaa
          b = myObj.Tapahtumat[k].Aloitusaika;
          b_vals = b.split(':');
          c = myObj.Tapahtumat[k].paattymisaika;
          c_vals = c.split(':');
          xxx+=b_vals[0] + ':' + b_vals[1] + '-' + c_vals[0] + ':' + c_vals[1] + '<br>';

          xxx+=(myObj.Tapahtumat[k].Tapahtumankuvaus + '<br>');
          
          if(lkm>1)
            xxx+='<br>';
        }
    }
    
    if(L.Browser.mobile) xxx+="</font>";
    
      talteenMarkers[i]=L.marker( [obj.latitude, obj.longitude], {icon: myIcon} )
      .bindPopup(xxx)
      .addTo( map );
    }
  }
};

xmlhttp.open("GET","lataatietokanta.php",true);
xmlhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
xmlhttp.send();
