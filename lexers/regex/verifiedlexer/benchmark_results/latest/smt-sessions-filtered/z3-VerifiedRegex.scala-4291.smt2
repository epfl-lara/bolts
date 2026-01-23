; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230300 () Bool)

(assert start!230300)

(declare-fun b!2330488 () Bool)

(declare-fun res!994922 () Bool)

(declare-fun e!1493180 () Bool)

(assert (=> b!2330488 (=> (not res!994922) (not e!1493180))))

(declare-datatypes ((C!13800 0))(
  ( (C!13801 (val!8060 Int)) )
))
(declare-datatypes ((Regex!6821 0))(
  ( (ElementMatch!6821 (c!370223 C!13800)) (Concat!11443 (regOne!14154 Regex!6821) (regTwo!14154 Regex!6821)) (EmptyExpr!6821) (Star!6821 (reg!7150 Regex!6821)) (EmptyLang!6821) (Union!6821 (regOne!14155 Regex!6821) (regTwo!14155 Regex!6821)) )
))
(declare-fun r!26197 () Regex!6821)

(declare-fun c!13498 () C!13800)

(declare-fun nullable!1900 (Regex!6821) Bool)

(declare-fun derivativeStep!1560 (Regex!6821 C!13800) Regex!6821)

(assert (=> b!2330488 (= res!994922 (nullable!1900 (derivativeStep!1560 r!26197 c!13498)))))

(declare-fun b!2330489 () Bool)

(declare-datatypes ((Unit!40618 0))(
  ( (Unit!40619) )
))
(declare-fun e!1493184 () Unit!40618)

(declare-fun Unit!40620 () Unit!40618)

(assert (=> b!2330489 (= e!1493184 Unit!40620)))

(assert (=> b!2330489 false))

(declare-fun b!2330491 () Bool)

(declare-fun e!1493181 () Bool)

(declare-fun tp!738478 () Bool)

(assert (=> b!2330491 (= e!1493181 tp!738478)))

(declare-fun b!2330492 () Bool)

(declare-fun e!1493182 () Bool)

(assert (=> b!2330492 (= e!1493180 e!1493182)))

(declare-fun res!994923 () Bool)

(assert (=> b!2330492 (=> (not res!994923) (not e!1493182))))

(assert (=> b!2330492 (= res!994923 (nullable!1900 (derivativeStep!1560 (regOne!14155 r!26197) c!13498)))))

(declare-fun lt!862242 () Unit!40618)

(assert (=> b!2330492 (= lt!862242 e!1493184)))

(declare-fun c!370222 () Bool)

(assert (=> b!2330492 (= c!370222 (nullable!1900 (regTwo!14155 r!26197)))))

(declare-fun lt!862243 () Unit!40618)

(declare-fun e!1493183 () Unit!40618)

(assert (=> b!2330492 (= lt!862243 e!1493183)))

(declare-fun c!370221 () Bool)

(assert (=> b!2330492 (= c!370221 (nullable!1900 (regOne!14155 r!26197)))))

(declare-fun b!2330493 () Bool)

(declare-fun tp!738480 () Bool)

(declare-fun tp!738479 () Bool)

(assert (=> b!2330493 (= e!1493181 (and tp!738480 tp!738479))))

(declare-fun b!2330494 () Bool)

(declare-fun res!994924 () Bool)

(assert (=> b!2330494 (=> (not res!994924) (not e!1493180))))

(get-info :version)

(assert (=> b!2330494 (= res!994924 (and (not ((_ is EmptyExpr!6821) r!26197)) (not ((_ is EmptyLang!6821) r!26197)) (not ((_ is ElementMatch!6821) r!26197)) ((_ is Union!6821) r!26197)))))

(declare-fun b!2330495 () Bool)

(declare-fun Unit!40621 () Unit!40618)

(assert (=> b!2330495 (= e!1493183 Unit!40621)))

(assert (=> b!2330495 false))

(declare-fun b!2330496 () Bool)

(declare-fun tp_is_empty!10953 () Bool)

(assert (=> b!2330496 (= e!1493181 tp_is_empty!10953)))

(declare-fun b!2330490 () Bool)

(declare-fun tp!738481 () Bool)

(declare-fun tp!738477 () Bool)

(assert (=> b!2330490 (= e!1493181 (and tp!738481 tp!738477))))

(declare-fun res!994925 () Bool)

(assert (=> start!230300 (=> (not res!994925) (not e!1493180))))

(declare-fun validRegex!2566 (Regex!6821) Bool)

(assert (=> start!230300 (= res!994925 (validRegex!2566 r!26197))))

(assert (=> start!230300 e!1493180))

(assert (=> start!230300 e!1493181))

(assert (=> start!230300 tp_is_empty!10953))

(declare-fun b!2330497 () Bool)

(assert (=> b!2330497 (= e!1493182 false)))

(declare-fun b!2330498 () Bool)

(declare-fun Unit!40622 () Unit!40618)

(assert (=> b!2330498 (= e!1493184 Unit!40622)))

(declare-fun b!2330499 () Bool)

(declare-fun Unit!40623 () Unit!40618)

(assert (=> b!2330499 (= e!1493183 Unit!40623)))

(declare-fun b!2330500 () Bool)

(declare-fun res!994921 () Bool)

(assert (=> b!2330500 (=> (not res!994921) (not e!1493180))))

(assert (=> b!2330500 (= res!994921 (not (nullable!1900 r!26197)))))

(assert (= (and start!230300 res!994925) b!2330500))

(assert (= (and b!2330500 res!994921) b!2330488))

(assert (= (and b!2330488 res!994922) b!2330494))

(assert (= (and b!2330494 res!994924) b!2330492))

(assert (= (and b!2330492 c!370221) b!2330495))

(assert (= (and b!2330492 (not c!370221)) b!2330499))

(assert (= (and b!2330492 c!370222) b!2330489))

(assert (= (and b!2330492 (not c!370222)) b!2330498))

(assert (= (and b!2330492 res!994923) b!2330497))

(assert (= (and start!230300 ((_ is ElementMatch!6821) r!26197)) b!2330496))

(assert (= (and start!230300 ((_ is Concat!11443) r!26197)) b!2330490))

(assert (= (and start!230300 ((_ is Star!6821) r!26197)) b!2330491))

(assert (= (and start!230300 ((_ is Union!6821) r!26197)) b!2330493))

(declare-fun m!2760607 () Bool)

(assert (=> b!2330488 m!2760607))

(assert (=> b!2330488 m!2760607))

(declare-fun m!2760609 () Bool)

(assert (=> b!2330488 m!2760609))

(declare-fun m!2760611 () Bool)

(assert (=> b!2330492 m!2760611))

(assert (=> b!2330492 m!2760611))

(declare-fun m!2760613 () Bool)

(assert (=> b!2330492 m!2760613))

(declare-fun m!2760615 () Bool)

(assert (=> b!2330492 m!2760615))

(declare-fun m!2760617 () Bool)

(assert (=> b!2330492 m!2760617))

(declare-fun m!2760619 () Bool)

(assert (=> start!230300 m!2760619))

(declare-fun m!2760621 () Bool)

(assert (=> b!2330500 m!2760621))

(check-sat (not b!2330493) (not b!2330492) (not b!2330500) tp_is_empty!10953 (not b!2330491) (not b!2330488) (not b!2330490) (not start!230300))
(check-sat)
