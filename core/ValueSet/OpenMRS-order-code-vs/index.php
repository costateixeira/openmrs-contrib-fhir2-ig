<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/ValueSet-OpenMRS-order-code-vs.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/ValueSet-OpenMRS-order-code-vs.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/ValueSet-OpenMRS-order-code-vs.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/ValueSet-OpenMRS-order-code-vs.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/ValueSet-OpenMRS-order-code-vs.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/ValueSet-OpenMRS-order-code-vs.html');
else 
  Redirect('http://fhir.openmrs.org/core/1.0.0/ValueSet-OpenMRS-order-code-vs.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
