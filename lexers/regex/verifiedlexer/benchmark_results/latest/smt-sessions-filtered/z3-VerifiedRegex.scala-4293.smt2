; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230320 () Bool)

(assert start!230320)

(declare-fun b!2330861 () Bool)

(declare-fun e!1493351 () Bool)

(assert (=> b!2330861 (= e!1493351 false)))

(declare-fun b!2330862 () Bool)

(declare-datatypes ((Unit!40642 0))(
  ( (Unit!40643) )
))
(declare-fun e!1493353 () Unit!40642)

(declare-fun Unit!40644 () Unit!40642)

(assert (=> b!2330862 (= e!1493353 Unit!40644)))

(assert (=> b!2330862 false))

(declare-fun b!2330863 () Bool)

(declare-fun res!995027 () Bool)

(declare-fun e!1493354 () Bool)

(assert (=> b!2330863 (=> (not res!995027) (not e!1493354))))

(declare-datatypes ((C!13808 0))(
  ( (C!13809 (val!8064 Int)) )
))
(declare-datatypes ((Regex!6825 0))(
  ( (ElementMatch!6825 (c!370307 C!13808)) (Concat!11447 (regOne!14162 Regex!6825) (regTwo!14162 Regex!6825)) (EmptyExpr!6825) (Star!6825 (reg!7154 Regex!6825)) (EmptyLang!6825) (Union!6825 (regOne!14163 Regex!6825) (regTwo!14163 Regex!6825)) )
))
(declare-fun r!26197 () Regex!6825)

(declare-fun nullable!1904 (Regex!6825) Bool)

(assert (=> b!2330863 (= res!995027 (not (nullable!1904 r!26197)))))

(declare-fun b!2330864 () Bool)

(declare-fun res!995031 () Bool)

(assert (=> b!2330864 (=> (not res!995031) (not e!1493354))))

(declare-fun c!13498 () C!13808)

(declare-fun derivativeStep!1564 (Regex!6825 C!13808) Regex!6825)

(assert (=> b!2330864 (= res!995031 (nullable!1904 (derivativeStep!1564 r!26197 c!13498)))))

(declare-fun b!2330865 () Bool)

(declare-fun e!1493350 () Bool)

(declare-fun tp!738609 () Bool)

(declare-fun tp!738607 () Bool)

(assert (=> b!2330865 (= e!1493350 (and tp!738609 tp!738607))))

(declare-fun b!2330866 () Bool)

(declare-fun e!1493352 () Unit!40642)

(declare-fun Unit!40645 () Unit!40642)

(assert (=> b!2330866 (= e!1493352 Unit!40645)))

(declare-fun b!2330867 () Bool)

(declare-fun Unit!40646 () Unit!40642)

(assert (=> b!2330867 (= e!1493352 Unit!40646)))

(assert (=> b!2330867 false))

(declare-fun b!2330868 () Bool)

(declare-fun res!995028 () Bool)

(assert (=> b!2330868 (=> (not res!995028) (not e!1493354))))

(get-info :version)

(assert (=> b!2330868 (= res!995028 (and (not ((_ is EmptyExpr!6825) r!26197)) (not ((_ is EmptyLang!6825) r!26197)) (not ((_ is ElementMatch!6825) r!26197)) ((_ is Union!6825) r!26197)))))

(declare-fun b!2330869 () Bool)

(declare-fun Unit!40647 () Unit!40642)

(assert (=> b!2330869 (= e!1493353 Unit!40647)))

(declare-fun b!2330870 () Bool)

(declare-fun tp!738608 () Bool)

(assert (=> b!2330870 (= e!1493350 tp!738608)))

(declare-fun b!2330871 () Bool)

(declare-fun res!995029 () Bool)

(assert (=> b!2330871 (=> (not res!995029) (not e!1493351))))

(assert (=> b!2330871 (= res!995029 (nullable!1904 (derivativeStep!1564 (regTwo!14163 r!26197) c!13498)))))

(declare-fun b!2330872 () Bool)

(declare-fun tp_is_empty!10961 () Bool)

(assert (=> b!2330872 (= e!1493350 tp_is_empty!10961)))

(declare-fun res!995026 () Bool)

(assert (=> start!230320 (=> (not res!995026) (not e!1493354))))

(declare-fun validRegex!2570 (Regex!6825) Bool)

(assert (=> start!230320 (= res!995026 (validRegex!2570 r!26197))))

(assert (=> start!230320 e!1493354))

(assert (=> start!230320 e!1493350))

(assert (=> start!230320 tp_is_empty!10961))

(declare-fun b!2330873 () Bool)

(assert (=> b!2330873 (= e!1493354 e!1493351)))

(declare-fun res!995030 () Bool)

(assert (=> b!2330873 (=> (not res!995030) (not e!1493351))))

(assert (=> b!2330873 (= res!995030 (not (nullable!1904 (derivativeStep!1564 (regOne!14163 r!26197) c!13498))))))

(declare-fun lt!862275 () Unit!40642)

(assert (=> b!2330873 (= lt!862275 e!1493353)))

(declare-fun c!370306 () Bool)

(assert (=> b!2330873 (= c!370306 (nullable!1904 (regTwo!14163 r!26197)))))

(declare-fun lt!862274 () Unit!40642)

(assert (=> b!2330873 (= lt!862274 e!1493352)))

(declare-fun c!370305 () Bool)

(assert (=> b!2330873 (= c!370305 (nullable!1904 (regOne!14163 r!26197)))))

(declare-fun b!2330874 () Bool)

(declare-fun tp!738611 () Bool)

(declare-fun tp!738610 () Bool)

(assert (=> b!2330874 (= e!1493350 (and tp!738611 tp!738610))))

(assert (= (and start!230320 res!995026) b!2330863))

(assert (= (and b!2330863 res!995027) b!2330864))

(assert (= (and b!2330864 res!995031) b!2330868))

(assert (= (and b!2330868 res!995028) b!2330873))

(assert (= (and b!2330873 c!370305) b!2330867))

(assert (= (and b!2330873 (not c!370305)) b!2330866))

(assert (= (and b!2330873 c!370306) b!2330862))

(assert (= (and b!2330873 (not c!370306)) b!2330869))

(assert (= (and b!2330873 res!995030) b!2330871))

(assert (= (and b!2330871 res!995029) b!2330861))

(assert (= (and start!230320 ((_ is ElementMatch!6825) r!26197)) b!2330872))

(assert (= (and start!230320 ((_ is Concat!11447) r!26197)) b!2330874))

(assert (= (and start!230320 ((_ is Star!6825) r!26197)) b!2330870))

(assert (= (and start!230320 ((_ is Union!6825) r!26197)) b!2330865))

(declare-fun m!2760759 () Bool)

(assert (=> b!2330864 m!2760759))

(assert (=> b!2330864 m!2760759))

(declare-fun m!2760761 () Bool)

(assert (=> b!2330864 m!2760761))

(declare-fun m!2760763 () Bool)

(assert (=> b!2330871 m!2760763))

(assert (=> b!2330871 m!2760763))

(declare-fun m!2760765 () Bool)

(assert (=> b!2330871 m!2760765))

(declare-fun m!2760767 () Bool)

(assert (=> b!2330863 m!2760767))

(declare-fun m!2760769 () Bool)

(assert (=> b!2330873 m!2760769))

(assert (=> b!2330873 m!2760769))

(declare-fun m!2760771 () Bool)

(assert (=> b!2330873 m!2760771))

(declare-fun m!2760773 () Bool)

(assert (=> b!2330873 m!2760773))

(declare-fun m!2760775 () Bool)

(assert (=> b!2330873 m!2760775))

(declare-fun m!2760777 () Bool)

(assert (=> start!230320 m!2760777))

(check-sat tp_is_empty!10961 (not b!2330863) (not b!2330865) (not b!2330870) (not b!2330874) (not b!2330864) (not b!2330871) (not b!2330873) (not start!230320))
(check-sat)
