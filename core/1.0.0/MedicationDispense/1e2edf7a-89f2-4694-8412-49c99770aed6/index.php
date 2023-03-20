<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/MedicationDispense-1e2edf7a-89f2-4694-8412-49c99770aed6.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/MedicationDispense-1e2edf7a-89f2-4694-8412-49c99770aed6.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/MedicationDispense-1e2edf7a-89f2-4694-8412-49c99770aed6.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/MedicationDispense-1e2edf7a-89f2-4694-8412-49c99770aed6.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/MedicationDispense-1e2edf7a-89f2-4694-8412-49c99770aed6.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/MedicationDispense-1e2edf7a-89f2-4694-8412-49c99770aed6.html');
else 
  Redirect('http://fhir.openmrs.org/core/1.0.0/MedicationDispense-1e2edf7a-89f2-4694-8412-49c99770aed6.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
