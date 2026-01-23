; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!692632 () Bool)

(assert start!692632)

(declare-fun b!7116264 () Bool)

(declare-fun res!2903477 () Bool)

(declare-fun e!4276231 () Bool)

(assert (=> b!7116264 (=> (not res!2903477) (not e!4276231))))

(declare-fun e!4276233 () Bool)

(assert (=> b!7116264 (= res!2903477 e!4276233)))

(declare-fun res!2903476 () Bool)

(assert (=> b!7116264 (=> res!2903476 e!4276233)))

(declare-datatypes ((C!36200 0))(
  ( (C!36201 (val!27806 Int)) )
))
(declare-datatypes ((Regex!17965 0))(
  ( (ElementMatch!17965 (c!1328082 C!36200)) (Concat!26810 (regOne!36442 Regex!17965) (regTwo!36442 Regex!17965)) (EmptyExpr!17965) (Star!17965 (reg!18294 Regex!17965)) (EmptyLang!17965) (Union!17965 (regOne!36443 Regex!17965) (regTwo!36443 Regex!17965)) )
))
(declare-fun r!11554 () Regex!17965)

(get-info :version)

(assert (=> b!7116264 (= res!2903476 (not ((_ is Concat!26810) r!11554)))))

(declare-fun b!7116265 () Bool)

(declare-fun res!2903475 () Bool)

(assert (=> b!7116265 (=> (not res!2903475) (not e!4276231))))

(declare-fun a!1901 () C!36200)

(assert (=> b!7116265 (= res!2903475 (and (or (not ((_ is ElementMatch!17965) r!11554)) (not (= (c!1328082 r!11554) a!1901))) (not ((_ is Union!17965) r!11554))))))

(declare-fun b!7116266 () Bool)

(declare-fun e!4276230 () Bool)

(declare-fun tp!1958417 () Bool)

(declare-fun tp!1958414 () Bool)

(assert (=> b!7116266 (= e!4276230 (and tp!1958417 tp!1958414))))

(declare-fun b!7116267 () Bool)

(declare-fun res!2903478 () Bool)

(assert (=> b!7116267 (=> (not res!2903478) (not e!4276231))))

(assert (=> b!7116267 (= res!2903478 (and (not ((_ is Concat!26810) r!11554)) ((_ is Star!17965) r!11554)))))

(declare-fun b!7116268 () Bool)

(declare-fun tp_is_empty!45163 () Bool)

(assert (=> b!7116268 (= e!4276230 tp_is_empty!45163)))

(declare-fun b!7116270 () Bool)

(declare-fun tp!1958416 () Bool)

(assert (=> b!7116270 (= e!4276230 tp!1958416)))

(declare-fun b!7116271 () Bool)

(declare-fun e!4276232 () Bool)

(declare-fun tp!1958418 () Bool)

(assert (=> b!7116271 (= e!4276232 tp!1958418)))

(declare-fun b!7116272 () Bool)

(declare-fun e!4276234 () Bool)

(declare-fun tp!1958415 () Bool)

(assert (=> b!7116272 (= e!4276234 tp!1958415)))

(declare-fun b!7116273 () Bool)

(declare-fun nullable!7602 (Regex!17965) Bool)

(assert (=> b!7116273 (= e!4276233 (not (nullable!7602 (regOne!36442 r!11554))))))

(declare-fun b!7116274 () Bool)

(declare-fun tp!1958412 () Bool)

(declare-fun tp!1958413 () Bool)

(assert (=> b!7116274 (= e!4276230 (and tp!1958412 tp!1958413))))

(declare-fun res!2903474 () Bool)

(assert (=> start!692632 (=> (not res!2903474) (not e!4276231))))

(declare-fun validRegex!9238 (Regex!17965) Bool)

(assert (=> start!692632 (= res!2903474 (validRegex!9238 r!11554))))

(assert (=> start!692632 e!4276231))

(assert (=> start!692632 e!4276230))

(assert (=> start!692632 tp_is_empty!45163))

(declare-datatypes ((List!68926 0))(
  ( (Nil!68802) (Cons!68802 (h!75250 Regex!17965) (t!382775 List!68926)) )
))
(declare-datatypes ((Context!13918 0))(
  ( (Context!13919 (exprs!7459 List!68926)) )
))
(declare-fun c!9994 () Context!13918)

(declare-fun inv!87775 (Context!13918) Bool)

(assert (=> start!692632 (and (inv!87775 c!9994) e!4276234)))

(declare-fun auxCtx!45 () Context!13918)

(assert (=> start!692632 (and (inv!87775 auxCtx!45) e!4276232)))

(declare-fun b!7116269 () Bool)

(assert (=> b!7116269 (= e!4276231 (not (validRegex!9238 r!11554)))))

(declare-fun lt!2560720 () List!68926)

(declare-fun ++!16117 (List!68926 List!68926) List!68926)

(assert (=> b!7116269 (= lt!2560720 (++!16117 (exprs!7459 c!9994) (exprs!7459 auxCtx!45)))))

(declare-fun lambda!432403 () Int)

(declare-datatypes ((Unit!162601 0))(
  ( (Unit!162602) )
))
(declare-fun lt!2560721 () Unit!162601)

(declare-fun lemmaConcatPreservesForall!1250 (List!68926 List!68926 Int) Unit!162601)

(assert (=> b!7116269 (= lt!2560721 (lemmaConcatPreservesForall!1250 (exprs!7459 c!9994) (exprs!7459 auxCtx!45) lambda!432403))))

(declare-fun lt!2560722 () Unit!162601)

(assert (=> b!7116269 (= lt!2560722 (lemmaConcatPreservesForall!1250 (exprs!7459 c!9994) (exprs!7459 auxCtx!45) lambda!432403))))

(assert (= (and start!692632 res!2903474) b!7116265))

(assert (= (and b!7116265 res!2903475) b!7116264))

(assert (= (and b!7116264 (not res!2903476)) b!7116273))

(assert (= (and b!7116264 res!2903477) b!7116267))

(assert (= (and b!7116267 res!2903478) b!7116269))

(assert (= (and start!692632 ((_ is ElementMatch!17965) r!11554)) b!7116268))

(assert (= (and start!692632 ((_ is Concat!26810) r!11554)) b!7116274))

(assert (= (and start!692632 ((_ is Star!17965) r!11554)) b!7116270))

(assert (= (and start!692632 ((_ is Union!17965) r!11554)) b!7116266))

(assert (= start!692632 b!7116272))

(assert (= start!692632 b!7116271))

(declare-fun m!7835232 () Bool)

(assert (=> b!7116273 m!7835232))

(declare-fun m!7835234 () Bool)

(assert (=> start!692632 m!7835234))

(declare-fun m!7835236 () Bool)

(assert (=> start!692632 m!7835236))

(declare-fun m!7835238 () Bool)

(assert (=> start!692632 m!7835238))

(assert (=> b!7116269 m!7835234))

(declare-fun m!7835240 () Bool)

(assert (=> b!7116269 m!7835240))

(declare-fun m!7835242 () Bool)

(assert (=> b!7116269 m!7835242))

(assert (=> b!7116269 m!7835242))

(check-sat (not start!692632) (not b!7116274) tp_is_empty!45163 (not b!7116266) (not b!7116270) (not b!7116273) (not b!7116271) (not b!7116269) (not b!7116272))
(check-sat)
