<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Task-e8f8d71a-6c14-4105-b6fe-30f3cf6b7dc9.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Task-e8f8d71a-6c14-4105-b6fe-30f3cf6b7dc9.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Task-e8f8d71a-6c14-4105-b6fe-30f3cf6b7dc9.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Task-e8f8d71a-6c14-4105-b6fe-30f3cf6b7dc9.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Task-e8f8d71a-6c14-4105-b6fe-30f3cf6b7dc9.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.openmrs.org/core/1.0.0/Task-e8f8d71a-6c14-4105-b6fe-30f3cf6b7dc9.html');
else 
  Redirect('http://fhir.openmrs.org/core/1.0.0/Task-e8f8d71a-6c14-4105-b6fe-30f3cf6b7dc9.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
