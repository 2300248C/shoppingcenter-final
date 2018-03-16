import json
from django.http import HttpResponse

def get_vote_result(request):
    pie_list = [['Beijing',50],['Shanghai',20],['Guangzhou',30]]
    t_country = ['Beijing','Shanghai','Guangzhou']
    t_country_count = [50,20,30]
    data_dict = {'pie_g':pie_list,'t_country':t_country,'t_country_count':t_country_count}
    return HttpResponse(json.dump(data_dict))  