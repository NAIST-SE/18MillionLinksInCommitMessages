import os, json
import pandas as pd


def retrieve_info_from_jsons():
    jsons_data = pd.DataFrame(columns=['Link', 'status', 'available', 'timestamp', 'Wayback_link'])


    for index, js in enumerate(json_files):
        with open(os.path.join(path_to_json, js)) as json_file:
            json_text = json.load(json_file)
            link = json_text['url'] 
            if "closest" in json_text["archived_snapshots"]:
                status = json_text['archived_snapshots']['closest']['status']
                available = json_text['archived_snapshots']['closest']['available']
                timestamp = json_text['archived_snapshots']['closest']['timestamp']
                url = json_text['archived_snapshots']['closest']['url']
            else:
                status = "Not Found"
                available = False
                timestamp = json_text['timestamp']
                url = ''
            
            jsons_data.loc[index] = [link, status, available,timestamp,url]
    return jsons_data

if __name__ == '__main__':
    # https://archive.org/help/waybacak_api.php
    path_to_json = './wayback-machine-retriever/json_20200316/'
    json_files = [pos_json for pos_json in os.listdir(path_to_json) if pos_json.endswith('.json')]
    jsons_data = retrieve_info_from_jsons()
    jsons_data.to_csv("./wayback-machine-retriever/json_20200316.csv",index=False)
    print("done")
