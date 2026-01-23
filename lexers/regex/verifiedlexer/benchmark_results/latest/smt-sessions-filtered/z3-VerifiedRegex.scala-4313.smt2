; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230656 () Bool)

(assert start!230656)

(declare-fun b!2339010 () Bool)

(declare-datatypes ((Unit!40734 0))(
  ( (Unit!40735) )
))
(declare-fun e!1497234 () Unit!40734)

(declare-fun Unit!40736 () Unit!40734)

(assert (=> b!2339010 (= e!1497234 Unit!40736)))

(declare-fun b!2339011 () Bool)

(declare-fun e!1497232 () Bool)

(declare-fun tp!742187 () Bool)

(assert (=> b!2339011 (= e!1497232 tp!742187)))

(declare-fun b!2339012 () Bool)

(declare-fun tp_is_empty!11041 () Bool)

(assert (=> b!2339012 (= e!1497232 tp_is_empty!11041)))

(declare-fun b!2339013 () Bool)

(declare-fun res!997066 () Bool)

(declare-fun e!1497233 () Bool)

(assert (=> b!2339013 (=> (not res!997066) (not e!1497233))))

(declare-datatypes ((C!13888 0))(
  ( (C!13889 (val!8104 Int)) )
))
(declare-datatypes ((Regex!6865 0))(
  ( (ElementMatch!6865 (c!371947 C!13888)) (Concat!11487 (regOne!14242 Regex!6865) (regTwo!14242 Regex!6865)) (EmptyExpr!6865) (Star!6865 (reg!7194 Regex!6865)) (EmptyLang!6865) (Union!6865 (regOne!14243 Regex!6865) (regTwo!14243 Regex!6865)) )
))
(declare-fun r!26197 () Regex!6865)

(declare-fun c!13498 () C!13888)

(declare-fun nullable!1944 (Regex!6865) Bool)

(declare-fun derivativeStep!1604 (Regex!6865 C!13888) Regex!6865)

(assert (=> b!2339013 (= res!997066 (nullable!1944 (derivativeStep!1604 r!26197 c!13498)))))

(declare-fun b!2339014 () Bool)

(declare-fun e!1497230 () Unit!40734)

(declare-fun Unit!40737 () Unit!40734)

(assert (=> b!2339014 (= e!1497230 Unit!40737)))

(declare-fun b!2339015 () Bool)

(declare-fun tp!742189 () Bool)

(declare-fun tp!742188 () Bool)

(assert (=> b!2339015 (= e!1497232 (and tp!742189 tp!742188))))

(declare-fun b!2339016 () Bool)

(declare-fun res!997063 () Bool)

(declare-fun e!1497231 () Bool)

(assert (=> b!2339016 (=> (not res!997063) (not e!1497231))))

(declare-fun validRegex!2610 (Regex!6865) Bool)

(assert (=> b!2339016 (= res!997063 (validRegex!2610 (regTwo!14243 r!26197)))))

(declare-fun b!2339017 () Bool)

(assert (=> b!2339017 (= e!1497233 e!1497231)))

(declare-fun res!997069 () Bool)

(assert (=> b!2339017 (=> (not res!997069) (not e!1497231))))

(assert (=> b!2339017 (= res!997069 (not (nullable!1944 (derivativeStep!1604 (regOne!14243 r!26197) c!13498))))))

(declare-fun lt!862633 () Unit!40734)

(assert (=> b!2339017 (= lt!862633 e!1497230)))

(declare-fun c!371945 () Bool)

(declare-fun lt!862634 () Bool)

(assert (=> b!2339017 (= c!371945 lt!862634)))

(assert (=> b!2339017 (= lt!862634 (nullable!1944 (regTwo!14243 r!26197)))))

(declare-fun lt!862635 () Unit!40734)

(assert (=> b!2339017 (= lt!862635 e!1497234)))

(declare-fun c!371946 () Bool)

(assert (=> b!2339017 (= c!371946 (nullable!1944 (regOne!14243 r!26197)))))

(declare-fun b!2339018 () Bool)

(assert (=> b!2339018 (= e!1497231 lt!862634)))

(declare-fun b!2339019 () Bool)

(declare-fun Unit!40738 () Unit!40734)

(assert (=> b!2339019 (= e!1497234 Unit!40738)))

(assert (=> b!2339019 false))

(declare-fun res!997068 () Bool)

(assert (=> start!230656 (=> (not res!997068) (not e!1497233))))

(assert (=> start!230656 (= res!997068 (validRegex!2610 r!26197))))

(assert (=> start!230656 e!1497233))

(assert (=> start!230656 e!1497232))

(assert (=> start!230656 tp_is_empty!11041))

(declare-fun b!2339020 () Bool)

(declare-fun tp!742191 () Bool)

(declare-fun tp!742190 () Bool)

(assert (=> b!2339020 (= e!1497232 (and tp!742191 tp!742190))))

(declare-fun b!2339021 () Bool)

(declare-fun res!997064 () Bool)

(assert (=> b!2339021 (=> (not res!997064) (not e!1497233))))

(get-info :version)

(assert (=> b!2339021 (= res!997064 (and (not ((_ is EmptyExpr!6865) r!26197)) (not ((_ is EmptyLang!6865) r!26197)) (not ((_ is ElementMatch!6865) r!26197)) ((_ is Union!6865) r!26197)))))

(declare-fun b!2339022 () Bool)

(declare-fun Unit!40739 () Unit!40734)

(assert (=> b!2339022 (= e!1497230 Unit!40739)))

(assert (=> b!2339022 false))

(declare-fun b!2339023 () Bool)

(declare-fun res!997065 () Bool)

(assert (=> b!2339023 (=> (not res!997065) (not e!1497233))))

(assert (=> b!2339023 (= res!997065 (not (nullable!1944 r!26197)))))

(declare-fun b!2339024 () Bool)

(declare-fun res!997067 () Bool)

(assert (=> b!2339024 (=> (not res!997067) (not e!1497231))))

(assert (=> b!2339024 (= res!997067 (nullable!1944 (derivativeStep!1604 (regTwo!14243 r!26197) c!13498)))))

(assert (= (and start!230656 res!997068) b!2339023))

(assert (= (and b!2339023 res!997065) b!2339013))

(assert (= (and b!2339013 res!997066) b!2339021))

(assert (= (and b!2339021 res!997064) b!2339017))

(assert (= (and b!2339017 c!371946) b!2339019))

(assert (= (and b!2339017 (not c!371946)) b!2339010))

(assert (= (and b!2339017 c!371945) b!2339022))

(assert (= (and b!2339017 (not c!371945)) b!2339014))

(assert (= (and b!2339017 res!997069) b!2339024))

(assert (= (and b!2339024 res!997067) b!2339016))

(assert (= (and b!2339016 res!997063) b!2339018))

(assert (= (and start!230656 ((_ is ElementMatch!6865) r!26197)) b!2339012))

(assert (= (and start!230656 ((_ is Concat!11487) r!26197)) b!2339020))

(assert (= (and start!230656 ((_ is Star!6865) r!26197)) b!2339011))

(assert (= (and start!230656 ((_ is Union!6865) r!26197)) b!2339015))

(declare-fun m!2763965 () Bool)

(assert (=> start!230656 m!2763965))

(declare-fun m!2763967 () Bool)

(assert (=> b!2339024 m!2763967))

(assert (=> b!2339024 m!2763967))

(declare-fun m!2763969 () Bool)

(assert (=> b!2339024 m!2763969))

(declare-fun m!2763971 () Bool)

(assert (=> b!2339013 m!2763971))

(assert (=> b!2339013 m!2763971))

(declare-fun m!2763973 () Bool)

(assert (=> b!2339013 m!2763973))

(declare-fun m!2763975 () Bool)

(assert (=> b!2339016 m!2763975))

(declare-fun m!2763977 () Bool)

(assert (=> b!2339023 m!2763977))

(declare-fun m!2763979 () Bool)

(assert (=> b!2339017 m!2763979))

(assert (=> b!2339017 m!2763979))

(declare-fun m!2763981 () Bool)

(assert (=> b!2339017 m!2763981))

(declare-fun m!2763983 () Bool)

(assert (=> b!2339017 m!2763983))

(declare-fun m!2763985 () Bool)

(assert (=> b!2339017 m!2763985))

(check-sat (not start!230656) (not b!2339020) (not b!2339017) tp_is_empty!11041 (not b!2339015) (not b!2339013) (not b!2339016) (not b!2339011) (not b!2339024) (not b!2339023))
(check-sat)
