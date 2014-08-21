__author__ = 'pbates'

import simplejson as json
from pprint import pprint
from elasticsearch import Elasticsearch

es = Elasticsearch()

json_data = open('../data/ChargeDeviceDestinations.json')

data = json.load(json_data)

for destination in data['ChargeDevice']:
    es.index(index="opendata", doc_type="chargedevices", id=destination['ChargeDeviceRef'], body=destination)
    print destination

json_data.close()

