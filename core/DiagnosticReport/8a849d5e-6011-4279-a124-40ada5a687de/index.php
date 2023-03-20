<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/DiagnosticReport-8a849d5e-6011-4279-a124-40ada5a687de.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/DiagnosticReport-8a849d5e-6011-4279-a124-40ada5a687de.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/DiagnosticReport-8a849d5e-6011-4279-a124-40ada5a687de.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/DiagnosticReport-8a849d5e-6011-4279-a124-40ada5a687de.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/DiagnosticReport-8a849d5e-6011-4279-a124-40ada5a687de.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/DiagnosticReport-8a849d5e-6011-4279-a124-40ada5a687de.html');
else 
  Redirect('http://fhir.openmrs.org/core/1.0.0/DiagnosticReport-8a849d5e-6011-4279-a124-40ada5a687de.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
