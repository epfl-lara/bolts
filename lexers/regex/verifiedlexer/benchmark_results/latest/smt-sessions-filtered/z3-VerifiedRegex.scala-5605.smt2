; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281414 () Bool)

(assert start!281414)

(declare-fun res!1194184 () Bool)

(declare-fun e!1823304 () Bool)

(assert (=> start!281414 (=> (not res!1194184) (not e!1823304))))

(declare-datatypes ((C!17712 0))(
  ( (C!17713 (val!10890 Int)) )
))
(declare-datatypes ((Regex!8765 0))(
  ( (ElementMatch!8765 (c!468246 C!17712)) (Concat!14086 (regOne!18042 Regex!8765) (regTwo!18042 Regex!8765)) (EmptyExpr!8765) (Star!8765 (reg!9094 Regex!8765)) (EmptyLang!8765) (Union!8765 (regOne!18043 Regex!8765) (regTwo!18043 Regex!8765)) )
))
(declare-fun r!23079 () Regex!8765)

(declare-fun validRegex!3538 (Regex!8765) Bool)

(assert (=> start!281414 (= res!1194184 (validRegex!3538 r!23079))))

(assert (=> start!281414 e!1823304))

(declare-fun e!1823305 () Bool)

(assert (=> start!281414 e!1823305))

(declare-fun b!2882235 () Bool)

(declare-fun tp_is_empty!15117 () Bool)

(assert (=> b!2882235 (= e!1823305 tp_is_empty!15117)))

(declare-fun b!2882236 () Bool)

(declare-fun tp!924358 () Bool)

(declare-fun tp!924357 () Bool)

(assert (=> b!2882236 (= e!1823305 (and tp!924358 tp!924357))))

(declare-fun b!2882237 () Bool)

(declare-fun e!1823302 () Bool)

(assert (=> b!2882237 (= e!1823302 true)))

(declare-fun lt!1019960 () Bool)

(declare-datatypes ((List!34566 0))(
  ( (Nil!34442) (Cons!34442 (h!39862 C!17712) (t!233609 List!34566)) )
))
(declare-datatypes ((Option!6438 0))(
  ( (None!6437) (Some!6437 (v!34563 List!34566)) )
))
(declare-fun lt!1019961 () Option!6438)

(declare-fun matchR!3753 (Regex!8765 List!34566) Bool)

(assert (=> b!2882237 (= lt!1019960 (matchR!3753 (regOne!18043 r!23079) (v!34563 lt!1019961)))))

(declare-fun b!2882238 () Bool)

(declare-fun res!1194180 () Bool)

(assert (=> b!2882238 (=> (not res!1194180) (not e!1823304))))

(get-info :version)

(assert (=> b!2882238 (= res!1194180 (and (not ((_ is EmptyExpr!8765) r!23079)) (not ((_ is EmptyLang!8765) r!23079)) (not ((_ is ElementMatch!8765) r!23079)) (not ((_ is Star!8765) r!23079)) ((_ is Union!8765) r!23079)))))

(declare-fun b!2882239 () Bool)

(declare-fun res!1194181 () Bool)

(assert (=> b!2882239 (=> res!1194181 e!1823302)))

(assert (=> b!2882239 (= res!1194181 (not (validRegex!3538 (regTwo!18043 r!23079))))))

(declare-fun b!2882240 () Bool)

(declare-fun tp!924355 () Bool)

(declare-fun tp!924356 () Bool)

(assert (=> b!2882240 (= e!1823305 (and tp!924355 tp!924356))))

(declare-fun b!2882241 () Bool)

(declare-fun res!1194183 () Bool)

(assert (=> b!2882241 (=> (not res!1194183) (not e!1823304))))

(declare-fun isDefined!5002 (Option!6438) Bool)

(declare-fun getLanguageWitness!472 (Regex!8765) Option!6438)

(assert (=> b!2882241 (= res!1194183 (isDefined!5002 (getLanguageWitness!472 r!23079)))))

(declare-fun b!2882242 () Bool)

(declare-fun e!1823303 () Bool)

(assert (=> b!2882242 (= e!1823303 (not e!1823302))))

(declare-fun res!1194182 () Bool)

(assert (=> b!2882242 (=> res!1194182 e!1823302)))

(assert (=> b!2882242 (= res!1194182 (not (validRegex!3538 (regOne!18043 r!23079))))))

(declare-fun get!10368 (Option!6438) List!34566)

(assert (=> b!2882242 (matchR!3753 (regOne!18043 r!23079) (get!10368 lt!1019961))))

(declare-datatypes ((Unit!48011 0))(
  ( (Unit!48012) )
))
(declare-fun lt!1019962 () Unit!48011)

(declare-fun lemmaGetWitnessMatches!60 (Regex!8765) Unit!48011)

(assert (=> b!2882242 (= lt!1019962 (lemmaGetWitnessMatches!60 (regOne!18043 r!23079)))))

(declare-fun b!2882243 () Bool)

(assert (=> b!2882243 (= e!1823304 e!1823303)))

(declare-fun res!1194185 () Bool)

(assert (=> b!2882243 (=> (not res!1194185) (not e!1823303))))

(assert (=> b!2882243 (= res!1194185 ((_ is Some!6437) lt!1019961))))

(assert (=> b!2882243 (= lt!1019961 (getLanguageWitness!472 (regOne!18043 r!23079)))))

(declare-fun b!2882244 () Bool)

(declare-fun tp!924359 () Bool)

(assert (=> b!2882244 (= e!1823305 tp!924359)))

(assert (= (and start!281414 res!1194184) b!2882241))

(assert (= (and b!2882241 res!1194183) b!2882238))

(assert (= (and b!2882238 res!1194180) b!2882243))

(assert (= (and b!2882243 res!1194185) b!2882242))

(assert (= (and b!2882242 (not res!1194182)) b!2882239))

(assert (= (and b!2882239 (not res!1194181)) b!2882237))

(assert (= (and start!281414 ((_ is ElementMatch!8765) r!23079)) b!2882235))

(assert (= (and start!281414 ((_ is Concat!14086) r!23079)) b!2882236))

(assert (= (and start!281414 ((_ is Star!8765) r!23079)) b!2882244))

(assert (= (and start!281414 ((_ is Union!8765) r!23079)) b!2882240))

(declare-fun m!3299331 () Bool)

(assert (=> b!2882237 m!3299331))

(declare-fun m!3299333 () Bool)

(assert (=> b!2882239 m!3299333))

(declare-fun m!3299335 () Bool)

(assert (=> start!281414 m!3299335))

(declare-fun m!3299337 () Bool)

(assert (=> b!2882241 m!3299337))

(assert (=> b!2882241 m!3299337))

(declare-fun m!3299339 () Bool)

(assert (=> b!2882241 m!3299339))

(declare-fun m!3299341 () Bool)

(assert (=> b!2882243 m!3299341))

(declare-fun m!3299343 () Bool)

(assert (=> b!2882242 m!3299343))

(declare-fun m!3299345 () Bool)

(assert (=> b!2882242 m!3299345))

(assert (=> b!2882242 m!3299345))

(declare-fun m!3299347 () Bool)

(assert (=> b!2882242 m!3299347))

(declare-fun m!3299349 () Bool)

(assert (=> b!2882242 m!3299349))

(check-sat (not b!2882243) (not b!2882236) (not b!2882239) (not b!2882241) (not b!2882242) (not b!2882237) (not b!2882240) (not start!281414) (not b!2882244) tp_is_empty!15117)
(check-sat)
