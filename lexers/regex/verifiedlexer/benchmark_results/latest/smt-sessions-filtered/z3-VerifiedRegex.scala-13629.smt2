; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731572 () Bool)

(assert start!731572)

(declare-fun b!7576225 () Bool)

(assert (=> b!7576225 true))

(assert (=> b!7576225 true))

(declare-fun lambda!466741 () Int)

(declare-fun lambda!466740 () Int)

(assert (=> b!7576225 (not (= lambda!466741 lambda!466740))))

(assert (=> b!7576225 true))

(assert (=> b!7576225 true))

(declare-fun b!7576219 () Bool)

(declare-fun e!4509856 () Bool)

(assert (=> b!7576219 (= e!4509856 true)))

(assert (=> b!7576219 false))

(declare-datatypes ((Unit!167062 0))(
  ( (Unit!167063) )
))
(declare-fun lt!2652113 () Unit!167062)

(declare-datatypes ((C!40432 0))(
  ( (C!40433 (val!30656 Int)) )
))
(declare-datatypes ((Regex!20053 0))(
  ( (ElementMatch!20053 (c!1397580 C!40432)) (Concat!28898 (regOne!40618 Regex!20053) (regTwo!40618 Regex!20053)) (EmptyExpr!20053) (Star!20053 (reg!20382 Regex!20053)) (EmptyLang!20053) (Union!20053 (regOne!40619 Regex!20053) (regTwo!40619 Regex!20053)) )
))
(declare-fun r!22341 () Regex!20053)

(declare-datatypes ((List!72936 0))(
  ( (Nil!72812) (Cons!72812 (h!79260 C!40432) (t!387671 List!72936)) )
))
(declare-datatypes ((tuple2!68900 0))(
  ( (tuple2!68901 (_1!37753 List!72936) (_2!37753 List!72936)) )
))
(declare-fun lt!2652112 () tuple2!68900)

(declare-fun lemmaLostCauseCannotMatch!75 (Regex!20053 List!72936) Unit!167062)

(assert (=> b!7576219 (= lt!2652113 (lemmaLostCauseCannotMatch!75 (regOne!40618 r!22341) (_1!37753 lt!2652112)))))

(declare-fun b!7576220 () Bool)

(declare-fun e!4509857 () Bool)

(declare-fun tp!2207599 () Bool)

(assert (=> b!7576220 (= e!4509857 tp!2207599)))

(declare-fun b!7576221 () Bool)

(declare-fun tp_is_empty!50461 () Bool)

(assert (=> b!7576221 (= e!4509857 tp_is_empty!50461)))

(declare-fun b!7576222 () Bool)

(declare-fun e!4509854 () Bool)

(declare-fun tp!2207600 () Bool)

(assert (=> b!7576222 (= e!4509854 (and tp_is_empty!50461 tp!2207600))))

(declare-fun b!7576223 () Bool)

(declare-fun res!3035203 () Bool)

(assert (=> b!7576223 (=> res!3035203 e!4509856)))

(declare-fun validRegex!10481 (Regex!20053) Bool)

(assert (=> b!7576223 (= res!3035203 (not (validRegex!10481 (regOne!40618 r!22341))))))

(declare-fun b!7576224 () Bool)

(declare-fun res!3035207 () Bool)

(declare-fun e!4509855 () Bool)

(assert (=> b!7576224 (=> (not res!3035207) (not e!4509855))))

(declare-fun s!13436 () List!72936)

(declare-fun isEmpty!41479 (List!72936) Bool)

(assert (=> b!7576224 (= res!3035207 (not (isEmpty!41479 s!13436)))))

(declare-fun e!4509853 () Bool)

(assert (=> b!7576225 (= e!4509853 e!4509856)))

(declare-fun res!3035202 () Bool)

(assert (=> b!7576225 (=> res!3035202 e!4509856)))

(declare-fun matchR!9649 (Regex!20053 List!72936) Bool)

(assert (=> b!7576225 (= res!3035202 (not (matchR!9649 (regOne!40618 r!22341) (_1!37753 lt!2652112))))))

(declare-datatypes ((Option!17286 0))(
  ( (None!17285) (Some!17285 (v!54420 tuple2!68900)) )
))
(declare-fun lt!2652116 () Option!17286)

(declare-fun get!25585 (Option!17286) tuple2!68900)

(assert (=> b!7576225 (= lt!2652112 (get!25585 lt!2652116))))

(declare-fun Exists!4296 (Int) Bool)

(assert (=> b!7576225 (= (Exists!4296 lambda!466740) (Exists!4296 lambda!466741))))

(declare-fun lt!2652111 () Unit!167062)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2614 (Regex!20053 Regex!20053 List!72936) Unit!167062)

(assert (=> b!7576225 (= lt!2652111 (lemmaExistCutMatchRandMatchRSpecEquivalent!2614 (regOne!40618 r!22341) (regTwo!40618 r!22341) s!13436))))

(declare-fun isDefined!13932 (Option!17286) Bool)

(assert (=> b!7576225 (= (isDefined!13932 lt!2652116) (Exists!4296 lambda!466740))))

(declare-fun findConcatSeparation!3346 (Regex!20053 Regex!20053 List!72936 List!72936 List!72936) Option!17286)

(assert (=> b!7576225 (= lt!2652116 (findConcatSeparation!3346 (regOne!40618 r!22341) (regTwo!40618 r!22341) Nil!72812 s!13436 s!13436))))

(declare-fun lt!2652114 () Unit!167062)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3104 (Regex!20053 Regex!20053 List!72936) Unit!167062)

(assert (=> b!7576225 (= lt!2652114 (lemmaFindConcatSeparationEquivalentToExists!3104 (regOne!40618 r!22341) (regTwo!40618 r!22341) s!13436))))

(declare-fun b!7576226 () Bool)

(declare-fun tp!2207598 () Bool)

(declare-fun tp!2207601 () Bool)

(assert (=> b!7576226 (= e!4509857 (and tp!2207598 tp!2207601))))

(declare-fun b!7576227 () Bool)

(declare-fun res!3035204 () Bool)

(assert (=> b!7576227 (=> res!3035204 e!4509856)))

(declare-fun lostCause!1829 (Regex!20053) Bool)

(assert (=> b!7576227 (= res!3035204 (not (lostCause!1829 (regOne!40618 r!22341))))))

(declare-fun res!3035205 () Bool)

(assert (=> start!731572 (=> (not res!3035205) (not e!4509855))))

(assert (=> start!731572 (= res!3035205 (validRegex!10481 r!22341))))

(assert (=> start!731572 e!4509855))

(assert (=> start!731572 e!4509857))

(assert (=> start!731572 e!4509854))

(declare-fun b!7576228 () Bool)

(assert (=> b!7576228 (= e!4509855 (not e!4509853))))

(declare-fun res!3035206 () Bool)

(assert (=> b!7576228 (=> res!3035206 e!4509853)))

(declare-fun lt!2652110 () Bool)

(get-info :version)

(assert (=> b!7576228 (= res!3035206 (or ((_ is EmptyLang!20053) r!22341) ((_ is EmptyExpr!20053) r!22341) ((_ is ElementMatch!20053) r!22341) ((_ is Union!20053) r!22341) ((_ is Star!20053) r!22341) (not lt!2652110)))))

(declare-fun matchRSpec!4372 (Regex!20053 List!72936) Bool)

(assert (=> b!7576228 (= lt!2652110 (matchRSpec!4372 r!22341 s!13436))))

(assert (=> b!7576228 (= lt!2652110 (matchR!9649 r!22341 s!13436))))

(declare-fun lt!2652115 () Unit!167062)

(declare-fun mainMatchTheorem!4366 (Regex!20053 List!72936) Unit!167062)

(assert (=> b!7576228 (= lt!2652115 (mainMatchTheorem!4366 r!22341 s!13436))))

(declare-fun b!7576229 () Bool)

(declare-fun tp!2207597 () Bool)

(declare-fun tp!2207596 () Bool)

(assert (=> b!7576229 (= e!4509857 (and tp!2207597 tp!2207596))))

(declare-fun b!7576230 () Bool)

(declare-fun res!3035201 () Bool)

(assert (=> b!7576230 (=> (not res!3035201) (not e!4509855))))

(assert (=> b!7576230 (= res!3035201 (lostCause!1829 r!22341))))

(declare-fun b!7576231 () Bool)

(declare-fun res!3035208 () Bool)

(assert (=> b!7576231 (=> res!3035208 e!4509856)))

(assert (=> b!7576231 (= res!3035208 (not (matchR!9649 (regTwo!40618 r!22341) (_2!37753 lt!2652112))))))

(assert (= (and start!731572 res!3035205) b!7576230))

(assert (= (and b!7576230 res!3035201) b!7576224))

(assert (= (and b!7576224 res!3035207) b!7576228))

(assert (= (and b!7576228 (not res!3035206)) b!7576225))

(assert (= (and b!7576225 (not res!3035202)) b!7576231))

(assert (= (and b!7576231 (not res!3035208)) b!7576227))

(assert (= (and b!7576227 (not res!3035204)) b!7576223))

(assert (= (and b!7576223 (not res!3035203)) b!7576219))

(assert (= (and start!731572 ((_ is ElementMatch!20053) r!22341)) b!7576221))

(assert (= (and start!731572 ((_ is Concat!28898) r!22341)) b!7576226))

(assert (= (and start!731572 ((_ is Star!20053) r!22341)) b!7576220))

(assert (= (and start!731572 ((_ is Union!20053) r!22341)) b!7576229))

(assert (= (and start!731572 ((_ is Cons!72812) s!13436)) b!7576222))

(declare-fun m!8134182 () Bool)

(assert (=> b!7576219 m!8134182))

(declare-fun m!8134184 () Bool)

(assert (=> start!731572 m!8134184))

(declare-fun m!8134186 () Bool)

(assert (=> b!7576224 m!8134186))

(declare-fun m!8134188 () Bool)

(assert (=> b!7576231 m!8134188))

(declare-fun m!8134190 () Bool)

(assert (=> b!7576228 m!8134190))

(declare-fun m!8134192 () Bool)

(assert (=> b!7576228 m!8134192))

(declare-fun m!8134194 () Bool)

(assert (=> b!7576228 m!8134194))

(declare-fun m!8134196 () Bool)

(assert (=> b!7576225 m!8134196))

(declare-fun m!8134198 () Bool)

(assert (=> b!7576225 m!8134198))

(declare-fun m!8134200 () Bool)

(assert (=> b!7576225 m!8134200))

(declare-fun m!8134202 () Bool)

(assert (=> b!7576225 m!8134202))

(declare-fun m!8134204 () Bool)

(assert (=> b!7576225 m!8134204))

(declare-fun m!8134206 () Bool)

(assert (=> b!7576225 m!8134206))

(declare-fun m!8134208 () Bool)

(assert (=> b!7576225 m!8134208))

(declare-fun m!8134210 () Bool)

(assert (=> b!7576225 m!8134210))

(assert (=> b!7576225 m!8134196))

(declare-fun m!8134212 () Bool)

(assert (=> b!7576223 m!8134212))

(declare-fun m!8134214 () Bool)

(assert (=> b!7576230 m!8134214))

(declare-fun m!8134216 () Bool)

(assert (=> b!7576227 m!8134216))

(check-sat (not b!7576227) (not b!7576222) (not b!7576219) (not b!7576225) (not b!7576228) (not b!7576230) (not start!731572) (not b!7576224) tp_is_empty!50461 (not b!7576223) (not b!7576229) (not b!7576220) (not b!7576231) (not b!7576226))
(check-sat)
