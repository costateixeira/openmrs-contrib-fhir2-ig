<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Immunization-d48df5c7-605f-4f7b-88b3-f7235b474663.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Immunization-d48df5c7-605f-4f7b-88b3-f7235b474663.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Immunization-d48df5c7-605f-4f7b-88b3-f7235b474663.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Immunization-d48df5c7-605f-4f7b-88b3-f7235b474663.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Immunization-d48df5c7-605f-4f7b-88b3-f7235b474663.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Immunization-d48df5c7-605f-4f7b-88b3-f7235b474663.html');
else 
  Redirect('http://fhir.openmrs.org/core/1.0.0/Immunization-d48df5c7-605f-4f7b-88b3-f7235b474663.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
