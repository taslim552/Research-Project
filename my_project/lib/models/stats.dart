mixin Stats {

  int _citation=10;
  int _download=10;
  int _view=10;
  int _collaboration=10;

  void increaseStat(String stat){
    if(stat=='citation'){

    }
      _citation++;

    if(stat=='download'){
      _download++;
    }
    if(stat=='view'){
      _view++;
    }
    if(stat=='collaboration'){
      _collaboration++;
    }
  }
  void decreaseStat(String stat){
    if(stat=='citation'){
      _citation--;
    }
    if(stat=='download'){
      _download--;
    }
    if(stat=='view'){
      _view--;
    }
    if(stat=='collaboration'){
      _collaboration--;

    }
  }
  Map<String ,int> get statsAsMap=>{
    "citation":_citation,
    "download": _download,
    "view": _view,
    "collaborato":_collaboration
  };
  List<Map<String,String>> get statsAsFormattedList=>[
  {
    'title':'citation','value':_citation.toString()
  },
  {
    'title':'download','value':_download.toString()
  },
  {
    'title':'view','value':_view.toString()
  },
  {
    'title':'collaboration','value':_collaboration.toString()
  },
];
}
