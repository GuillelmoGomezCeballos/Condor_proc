void events_ntuple(TString name, int nsel = 0){
TFile *_file0 = TFile::Open(name);
_file0->cd();

if(nsel == 0){
  printf("SSS %d %d %d %d %d %d\n",hDEvents->GetEntries(),HwwTree0->GetEntries(),HwwTree1->GetEntries(),HwwTree2->GetEntries(),HwwTree3->GetEntries(),HwwTree5->GetEntries());
} else {
  printf("SSS %d %d %d %d %d   \n",hDEvents->GetEntries(),HwwTree0->GetEntries(),HwwTree1->GetEntries(),HwwTree2->GetEntries(),HwwTree3->GetEntries());
}

delete _file0;
}
