<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Person-68f44d7f-eb5a-40e9-aa4d-0cc0cc522866.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Person-68f44d7f-eb5a-40e9-aa4d-0cc0cc522866.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Person-68f44d7f-eb5a-40e9-aa4d-0cc0cc522866.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Person-68f44d7f-eb5a-40e9-aa4d-0cc0cc522866.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Person-68f44d7f-eb5a-40e9-aa4d-0cc0cc522866.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Person-68f44d7f-eb5a-40e9-aa4d-0cc0cc522866.html');
else 
  Redirect('http://fhir.openmrs.org/core/1.0.0/Person-68f44d7f-eb5a-40e9-aa4d-0cc0cc522866.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
