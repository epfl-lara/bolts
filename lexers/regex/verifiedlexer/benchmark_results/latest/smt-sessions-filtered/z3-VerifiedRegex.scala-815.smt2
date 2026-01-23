; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45456 () Bool)

(assert start!45456)

(declare-fun b!473233 () Bool)

(declare-fun e!289346 () Bool)

(assert (=> b!473233 (= e!289346 true)))

(declare-datatypes ((C!3176 0))(
  ( (C!3177 (val!1574 Int)) )
))
(declare-datatypes ((Regex!1127 0))(
  ( (ElementMatch!1127 (c!94928 C!3176)) (Concat!2027 (regOne!2766 Regex!1127) (regTwo!2766 Regex!1127)) (EmptyExpr!1127) (Star!1127 (reg!1456 Regex!1127)) (EmptyLang!1127) (Union!1127 (regOne!2767 Regex!1127) (regTwo!2767 Regex!1127)) )
))
(declare-fun r!20230 () Regex!1127)

(declare-fun c!12526 () C!3176)

(declare-fun lostCause!121 (Regex!1127) Bool)

(declare-fun derivativeStep!229 (Regex!1127 C!3176) Regex!1127)

(assert (=> b!473233 (lostCause!121 (derivativeStep!229 (regTwo!2766 r!20230) c!12526))))

(declare-datatypes ((Unit!8336 0))(
  ( (Unit!8337) )
))
(declare-fun lt!210621 () Unit!8336)

(declare-fun lemmaDerivativeStepFixPointLostCause!6 (Regex!1127 C!3176) Unit!8336)

(assert (=> b!473233 (= lt!210621 (lemmaDerivativeStepFixPointLostCause!6 (regTwo!2766 r!20230) c!12526))))

(declare-fun b!473234 () Bool)

(declare-fun e!289348 () Bool)

(declare-fun tp_is_empty!2251 () Bool)

(assert (=> b!473234 (= e!289348 tp_is_empty!2251)))

(declare-fun b!473235 () Bool)

(declare-fun res!210117 () Bool)

(declare-fun e!289347 () Bool)

(assert (=> b!473235 (=> (not res!210117) (not e!289347))))

(declare-fun nullable!264 (Regex!1127) Bool)

(assert (=> b!473235 (= res!210117 (nullable!264 (regOne!2766 r!20230)))))

(declare-fun b!473236 () Bool)

(declare-fun res!210111 () Bool)

(declare-fun e!289349 () Bool)

(assert (=> b!473236 (=> (not res!210111) (not e!289349))))

(assert (=> b!473236 (= res!210111 (lostCause!121 r!20230))))

(declare-fun b!473237 () Bool)

(declare-fun res!210110 () Bool)

(assert (=> b!473237 (=> (not res!210110) (not e!289349))))

(get-info :version)

(assert (=> b!473237 (= res!210110 (and (not ((_ is EmptyLang!1127) r!20230)) (not ((_ is EmptyExpr!1127) r!20230)) (not ((_ is ElementMatch!1127) r!20230)) (not ((_ is Union!1127) r!20230)) (not ((_ is Star!1127) r!20230))))))

(declare-fun b!473238 () Bool)

(declare-fun tp!131239 () Bool)

(assert (=> b!473238 (= e!289348 tp!131239)))

(declare-fun b!473239 () Bool)

(assert (=> b!473239 (= e!289349 e!289347)))

(declare-fun res!210116 () Bool)

(assert (=> b!473239 (=> (not res!210116) (not e!289347))))

(declare-fun e!289345 () Bool)

(assert (=> b!473239 (= res!210116 e!289345)))

(declare-fun res!210113 () Bool)

(assert (=> b!473239 (=> res!210113 e!289345)))

(declare-fun lt!210622 () Bool)

(assert (=> b!473239 (= res!210113 lt!210622)))

(assert (=> b!473239 (= lt!210622 (lostCause!121 (regOne!2766 r!20230)))))

(declare-fun b!473240 () Bool)

(assert (=> b!473240 (= e!289345 (lostCause!121 (regTwo!2766 r!20230)))))

(declare-fun res!210112 () Bool)

(assert (=> start!45456 (=> (not res!210112) (not e!289349))))

(declare-fun validRegex!355 (Regex!1127) Bool)

(assert (=> start!45456 (= res!210112 (validRegex!355 r!20230))))

(assert (=> start!45456 e!289349))

(assert (=> start!45456 e!289348))

(assert (=> start!45456 tp_is_empty!2251))

(declare-fun b!473241 () Bool)

(declare-fun tp!131240 () Bool)

(declare-fun tp!131238 () Bool)

(assert (=> b!473241 (= e!289348 (and tp!131240 tp!131238))))

(declare-fun b!473242 () Bool)

(assert (=> b!473242 (= e!289347 (not e!289346))))

(declare-fun res!210114 () Bool)

(assert (=> b!473242 (=> res!210114 e!289346)))

(assert (=> b!473242 (= res!210114 (not (validRegex!355 (regTwo!2766 r!20230))))))

(assert (=> b!473242 (not lt!210622)))

(declare-fun lt!210620 () Unit!8336)

(declare-fun lemmaNullableThenNotLostCause!4 (Regex!1127) Unit!8336)

(assert (=> b!473242 (= lt!210620 (lemmaNullableThenNotLostCause!4 (regOne!2766 r!20230)))))

(declare-fun b!473243 () Bool)

(declare-fun tp!131237 () Bool)

(declare-fun tp!131241 () Bool)

(assert (=> b!473243 (= e!289348 (and tp!131237 tp!131241))))

(declare-fun b!473244 () Bool)

(declare-fun res!210115 () Bool)

(assert (=> b!473244 (=> res!210115 e!289346)))

(assert (=> b!473244 (= res!210115 (not (lostCause!121 (regTwo!2766 r!20230))))))

(assert (= (and start!45456 res!210112) b!473236))

(assert (= (and b!473236 res!210111) b!473237))

(assert (= (and b!473237 res!210110) b!473239))

(assert (= (and b!473239 (not res!210113)) b!473240))

(assert (= (and b!473239 res!210116) b!473235))

(assert (= (and b!473235 res!210117) b!473242))

(assert (= (and b!473242 (not res!210114)) b!473244))

(assert (= (and b!473244 (not res!210115)) b!473233))

(assert (= (and start!45456 ((_ is ElementMatch!1127) r!20230)) b!473234))

(assert (= (and start!45456 ((_ is Concat!2027) r!20230)) b!473241))

(assert (= (and start!45456 ((_ is Star!1127) r!20230)) b!473238))

(assert (= (and start!45456 ((_ is Union!1127) r!20230)) b!473243))

(declare-fun m!746551 () Bool)

(assert (=> b!473233 m!746551))

(assert (=> b!473233 m!746551))

(declare-fun m!746553 () Bool)

(assert (=> b!473233 m!746553))

(declare-fun m!746555 () Bool)

(assert (=> b!473233 m!746555))

(declare-fun m!746557 () Bool)

(assert (=> b!473239 m!746557))

(declare-fun m!746559 () Bool)

(assert (=> b!473240 m!746559))

(declare-fun m!746561 () Bool)

(assert (=> b!473235 m!746561))

(assert (=> b!473244 m!746559))

(declare-fun m!746563 () Bool)

(assert (=> b!473242 m!746563))

(declare-fun m!746565 () Bool)

(assert (=> b!473242 m!746565))

(declare-fun m!746567 () Bool)

(assert (=> b!473236 m!746567))

(declare-fun m!746569 () Bool)

(assert (=> start!45456 m!746569))

(check-sat (not b!473239) (not b!473244) tp_is_empty!2251 (not b!473236) (not b!473243) (not b!473238) (not b!473242) (not b!473241) (not b!473240) (not b!473235) (not start!45456) (not b!473233))
(check-sat)
