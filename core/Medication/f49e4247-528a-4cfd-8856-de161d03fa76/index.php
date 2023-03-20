<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Medication-f49e4247-528a-4cfd-8856-de161d03fa76.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Medication-f49e4247-528a-4cfd-8856-de161d03fa76.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Medication-f49e4247-528a-4cfd-8856-de161d03fa76.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Medication-f49e4247-528a-4cfd-8856-de161d03fa76.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Medication-f49e4247-528a-4cfd-8856-de161d03fa76.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Medication-f49e4247-528a-4cfd-8856-de161d03fa76.html');
else 
  Redirect('http://fhir.openmrs.org/core/1.0.0/Medication-f49e4247-528a-4cfd-8856-de161d03fa76.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
