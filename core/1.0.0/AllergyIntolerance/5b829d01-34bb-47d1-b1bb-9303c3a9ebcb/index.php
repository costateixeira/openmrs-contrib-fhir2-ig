<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/AllergyIntolerance-5b829d01-34bb-47d1-b1bb-9303c3a9ebcb.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/AllergyIntolerance-5b829d01-34bb-47d1-b1bb-9303c3a9ebcb.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/AllergyIntolerance-5b829d01-34bb-47d1-b1bb-9303c3a9ebcb.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/AllergyIntolerance-5b829d01-34bb-47d1-b1bb-9303c3a9ebcb.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/AllergyIntolerance-5b829d01-34bb-47d1-b1bb-9303c3a9ebcb.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/AllergyIntolerance-5b829d01-34bb-47d1-b1bb-9303c3a9ebcb.html');
else 
  Redirect('http://fhir.openmrs.org/core/1.0.0/AllergyIntolerance-5b829d01-34bb-47d1-b1bb-9303c3a9ebcb.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
