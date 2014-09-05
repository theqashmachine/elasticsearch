__author__ = 'pbates'

import simplejson as json
from pprint import pprint
from elasticsearch import Elasticsearch

es = Elasticsearch()

json_data = open('../data/ChargeDeviceDestinations.json')

data = json.load(json_data)

for charge_device in data['ChargeDevice']:
    new_element = {'ChargeDeviceRef': charge_device['ChargeDeviceRef'],
                   'location': {'lon': float(charge_device['ChargeDeviceLocation']['Longitude']),
                                'lat': float(charge_device['ChargeDeviceLocation']['Latitude'])}}
    #print new_element
    es.index(index="open_data", doc_type="charge_device", id=new_element['ChargeDeviceRef'], body=new_element)
json_data.close()

