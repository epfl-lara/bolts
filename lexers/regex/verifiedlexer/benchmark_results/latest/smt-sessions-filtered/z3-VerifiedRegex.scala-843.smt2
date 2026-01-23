; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45980 () Bool)

(assert start!45980)

(declare-fun b!500287 () Bool)

(declare-fun res!215040 () Bool)

(declare-fun e!300790 () Bool)

(assert (=> b!500287 (=> (not res!215040) (not e!300790))))

(declare-datatypes ((C!3288 0))(
  ( (C!3289 (val!1630 Int)) )
))
(declare-datatypes ((Regex!1183 0))(
  ( (ElementMatch!1183 (c!98202 C!3288)) (Concat!2083 (regOne!2878 Regex!1183) (regTwo!2878 Regex!1183)) (EmptyExpr!1183) (Star!1183 (reg!1512 Regex!1183)) (EmptyLang!1183) (Union!1183 (regOne!2879 Regex!1183) (regTwo!2879 Regex!1183)) )
))
(declare-fun r!20230 () Regex!1183)

(declare-fun lostCause!177 (Regex!1183) Bool)

(assert (=> b!500287 (= res!215040 (lostCause!177 r!20230))))

(declare-fun b!500288 () Bool)

(declare-fun res!215043 () Bool)

(declare-fun e!300793 () Bool)

(assert (=> b!500288 (=> (not res!215043) (not e!300793))))

(declare-fun lt!211458 () Bool)

(assert (=> b!500288 (= res!215043 (not lt!211458))))

(declare-fun res!215039 () Bool)

(assert (=> start!45980 (=> (not res!215039) (not e!300790))))

(declare-fun validRegex!411 (Regex!1183) Bool)

(assert (=> start!45980 (= res!215039 (validRegex!411 r!20230))))

(assert (=> start!45980 e!300790))

(declare-fun e!300791 () Bool)

(assert (=> start!45980 e!300791))

(declare-fun b!500289 () Bool)

(declare-fun e!300792 () Bool)

(assert (=> b!500289 (= e!300792 (lostCause!177 (regTwo!2878 r!20230)))))

(declare-fun b!500290 () Bool)

(declare-fun res!215036 () Bool)

(assert (=> b!500290 (=> (not res!215036) (not e!300793))))

(assert (=> b!500290 (= res!215036 (validRegex!411 (regTwo!2878 r!20230)))))

(declare-fun b!500291 () Bool)

(assert (=> b!500291 (= e!300793 (not (lostCause!177 (regTwo!2878 r!20230))))))

(declare-fun b!500292 () Bool)

(declare-fun res!215042 () Bool)

(assert (=> b!500292 (=> (not res!215042) (not e!300790))))

(get-info :version)

(assert (=> b!500292 (= res!215042 (and (not ((_ is EmptyLang!1183) r!20230)) (not ((_ is EmptyExpr!1183) r!20230)) (not ((_ is ElementMatch!1183) r!20230)) (not ((_ is Union!1183) r!20230)) (not ((_ is Star!1183) r!20230))))))

(declare-fun b!500293 () Bool)

(assert (=> b!500293 (= e!300790 e!300793)))

(declare-fun res!215041 () Bool)

(assert (=> b!500293 (=> (not res!215041) (not e!300793))))

(assert (=> b!500293 (= res!215041 e!300792)))

(declare-fun res!215038 () Bool)

(assert (=> b!500293 (=> res!215038 e!300792)))

(assert (=> b!500293 (= res!215038 lt!211458)))

(assert (=> b!500293 (= lt!211458 (lostCause!177 (regOne!2878 r!20230)))))

(declare-fun b!500294 () Bool)

(declare-fun res!215037 () Bool)

(assert (=> b!500294 (=> (not res!215037) (not e!300793))))

(declare-fun nullable!318 (Regex!1183) Bool)

(assert (=> b!500294 (= res!215037 (not (nullable!318 (regOne!2878 r!20230))))))

(declare-fun b!500295 () Bool)

(declare-fun tp!150800 () Bool)

(assert (=> b!500295 (= e!300791 tp!150800)))

(declare-fun b!500296 () Bool)

(declare-fun tp!150797 () Bool)

(declare-fun tp!150799 () Bool)

(assert (=> b!500296 (= e!300791 (and tp!150797 tp!150799))))

(declare-fun b!500297 () Bool)

(declare-fun tp_is_empty!2363 () Bool)

(assert (=> b!500297 (= e!300791 tp_is_empty!2363)))

(declare-fun b!500298 () Bool)

(declare-fun tp!150798 () Bool)

(declare-fun tp!150801 () Bool)

(assert (=> b!500298 (= e!300791 (and tp!150798 tp!150801))))

(assert (= (and start!45980 res!215039) b!500287))

(assert (= (and b!500287 res!215040) b!500292))

(assert (= (and b!500292 res!215042) b!500293))

(assert (= (and b!500293 (not res!215038)) b!500289))

(assert (= (and b!500293 res!215041) b!500294))

(assert (= (and b!500294 res!215037) b!500288))

(assert (= (and b!500288 res!215043) b!500290))

(assert (= (and b!500290 res!215036) b!500291))

(assert (= (and start!45980 ((_ is ElementMatch!1183) r!20230)) b!500297))

(assert (= (and start!45980 ((_ is Concat!2083) r!20230)) b!500298))

(assert (= (and start!45980 ((_ is Star!1183) r!20230)) b!500295))

(assert (= (and start!45980 ((_ is Union!1183) r!20230)) b!500296))

(declare-fun m!754487 () Bool)

(assert (=> b!500290 m!754487))

(declare-fun m!754489 () Bool)

(assert (=> start!45980 m!754489))

(declare-fun m!754491 () Bool)

(assert (=> b!500294 m!754491))

(declare-fun m!754493 () Bool)

(assert (=> b!500289 m!754493))

(declare-fun m!754495 () Bool)

(assert (=> b!500287 m!754495))

(assert (=> b!500291 m!754493))

(declare-fun m!754497 () Bool)

(assert (=> b!500293 m!754497))

(check-sat (not b!500294) (not b!500295) (not start!45980) (not b!500290) (not b!500291) (not b!500289) (not b!500298) (not b!500287) (not b!500293) (not b!500296) tp_is_empty!2363)
(check-sat)
