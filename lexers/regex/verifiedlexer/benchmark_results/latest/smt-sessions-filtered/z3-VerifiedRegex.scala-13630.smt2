; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731576 () Bool)

(assert start!731576)

(declare-fun b!7576331 () Bool)

(assert (=> b!7576331 true))

(assert (=> b!7576331 true))

(declare-fun lambda!466757 () Int)

(declare-fun lambda!466756 () Int)

(assert (=> b!7576331 (not (= lambda!466757 lambda!466756))))

(assert (=> b!7576331 true))

(assert (=> b!7576331 true))

(declare-fun b!7576329 () Bool)

(declare-fun res!3035276 () Bool)

(declare-fun e!4509896 () Bool)

(assert (=> b!7576329 (=> (not res!3035276) (not e!4509896))))

(declare-datatypes ((C!40436 0))(
  ( (C!40437 (val!30658 Int)) )
))
(declare-datatypes ((List!72938 0))(
  ( (Nil!72814) (Cons!72814 (h!79262 C!40436) (t!387673 List!72938)) )
))
(declare-fun s!13436 () List!72938)

(declare-fun isEmpty!41481 (List!72938) Bool)

(assert (=> b!7576329 (= res!3035276 (not (isEmpty!41481 s!13436)))))

(declare-fun b!7576330 () Bool)

(declare-fun e!4509897 () Bool)

(declare-fun tp!2207635 () Bool)

(declare-fun tp!2207634 () Bool)

(assert (=> b!7576330 (= e!4509897 (and tp!2207635 tp!2207634))))

(declare-fun e!4509899 () Bool)

(declare-fun e!4509895 () Bool)

(assert (=> b!7576331 (= e!4509899 e!4509895)))

(declare-fun res!3035280 () Bool)

(assert (=> b!7576331 (=> res!3035280 e!4509895)))

(declare-datatypes ((Regex!20055 0))(
  ( (ElementMatch!20055 (c!1397582 C!40436)) (Concat!28900 (regOne!40622 Regex!20055) (regTwo!40622 Regex!20055)) (EmptyExpr!20055) (Star!20055 (reg!20384 Regex!20055)) (EmptyLang!20055) (Union!20055 (regOne!40623 Regex!20055) (regTwo!40623 Regex!20055)) )
))
(declare-fun r!22341 () Regex!20055)

(declare-datatypes ((tuple2!68904 0))(
  ( (tuple2!68905 (_1!37755 List!72938) (_2!37755 List!72938)) )
))
(declare-fun lt!2652154 () tuple2!68904)

(declare-fun matchR!9651 (Regex!20055 List!72938) Bool)

(assert (=> b!7576331 (= res!3035280 (not (matchR!9651 (regOne!40622 r!22341) (_1!37755 lt!2652154))))))

(declare-datatypes ((Option!17288 0))(
  ( (None!17287) (Some!17287 (v!54422 tuple2!68904)) )
))
(declare-fun lt!2652158 () Option!17288)

(declare-fun get!25588 (Option!17288) tuple2!68904)

(assert (=> b!7576331 (= lt!2652154 (get!25588 lt!2652158))))

(declare-fun Exists!4298 (Int) Bool)

(assert (=> b!7576331 (= (Exists!4298 lambda!466756) (Exists!4298 lambda!466757))))

(declare-datatypes ((Unit!167066 0))(
  ( (Unit!167067) )
))
(declare-fun lt!2652156 () Unit!167066)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2616 (Regex!20055 Regex!20055 List!72938) Unit!167066)

(assert (=> b!7576331 (= lt!2652156 (lemmaExistCutMatchRandMatchRSpecEquivalent!2616 (regOne!40622 r!22341) (regTwo!40622 r!22341) s!13436))))

(declare-fun isDefined!13934 (Option!17288) Bool)

(assert (=> b!7576331 (= (isDefined!13934 lt!2652158) (Exists!4298 lambda!466756))))

(declare-fun findConcatSeparation!3348 (Regex!20055 Regex!20055 List!72938 List!72938 List!72938) Option!17288)

(assert (=> b!7576331 (= lt!2652158 (findConcatSeparation!3348 (regOne!40622 r!22341) (regTwo!40622 r!22341) Nil!72814 s!13436 s!13436))))

(declare-fun lt!2652152 () Unit!167066)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3106 (Regex!20055 Regex!20055 List!72938) Unit!167066)

(assert (=> b!7576331 (= lt!2652152 (lemmaFindConcatSeparationEquivalentToExists!3106 (regOne!40622 r!22341) (regTwo!40622 r!22341) s!13436))))

(declare-fun b!7576332 () Bool)

(declare-fun res!3035274 () Bool)

(assert (=> b!7576332 (=> res!3035274 e!4509895)))

(declare-fun lostCause!1831 (Regex!20055) Bool)

(assert (=> b!7576332 (= res!3035274 (lostCause!1831 (regOne!40622 r!22341)))))

(declare-fun b!7576333 () Bool)

(declare-fun res!3035277 () Bool)

(assert (=> b!7576333 (=> (not res!3035277) (not e!4509896))))

(assert (=> b!7576333 (= res!3035277 (lostCause!1831 r!22341))))

(declare-fun b!7576335 () Bool)

(declare-fun tp_is_empty!50465 () Bool)

(assert (=> b!7576335 (= e!4509897 tp_is_empty!50465)))

(declare-fun b!7576336 () Bool)

(assert (=> b!7576336 (= e!4509896 (not e!4509899))))

(declare-fun res!3035279 () Bool)

(assert (=> b!7576336 (=> res!3035279 e!4509899)))

(declare-fun lt!2652155 () Bool)

(get-info :version)

(assert (=> b!7576336 (= res!3035279 (or ((_ is EmptyLang!20055) r!22341) ((_ is EmptyExpr!20055) r!22341) ((_ is ElementMatch!20055) r!22341) ((_ is Union!20055) r!22341) ((_ is Star!20055) r!22341) (not lt!2652155)))))

(declare-fun matchRSpec!4374 (Regex!20055 List!72938) Bool)

(assert (=> b!7576336 (= lt!2652155 (matchRSpec!4374 r!22341 s!13436))))

(assert (=> b!7576336 (= lt!2652155 (matchR!9651 r!22341 s!13436))))

(declare-fun lt!2652157 () Unit!167066)

(declare-fun mainMatchTheorem!4368 (Regex!20055 List!72938) Unit!167066)

(assert (=> b!7576336 (= lt!2652157 (mainMatchTheorem!4368 r!22341 s!13436))))

(declare-fun b!7576337 () Bool)

(declare-fun res!3035278 () Bool)

(assert (=> b!7576337 (=> res!3035278 e!4509895)))

(declare-fun validRegex!10483 (Regex!20055) Bool)

(assert (=> b!7576337 (= res!3035278 (not (validRegex!10483 (regTwo!40622 r!22341))))))

(declare-fun b!7576338 () Bool)

(declare-fun e!4509898 () Bool)

(declare-fun tp!2207636 () Bool)

(assert (=> b!7576338 (= e!4509898 (and tp_is_empty!50465 tp!2207636))))

(declare-fun b!7576339 () Bool)

(declare-fun tp!2207637 () Bool)

(declare-fun tp!2207633 () Bool)

(assert (=> b!7576339 (= e!4509897 (and tp!2207637 tp!2207633))))

(declare-fun b!7576340 () Bool)

(assert (=> b!7576340 (= e!4509895 true)))

(declare-fun lt!2652153 () Bool)

(assert (=> b!7576340 (= lt!2652153 (lostCause!1831 (regTwo!40622 r!22341)))))

(declare-fun b!7576341 () Bool)

(declare-fun res!3035275 () Bool)

(assert (=> b!7576341 (=> res!3035275 e!4509895)))

(assert (=> b!7576341 (= res!3035275 (not (matchR!9651 (regTwo!40622 r!22341) (_2!37755 lt!2652154))))))

(declare-fun res!3035273 () Bool)

(assert (=> start!731576 (=> (not res!3035273) (not e!4509896))))

(assert (=> start!731576 (= res!3035273 (validRegex!10483 r!22341))))

(assert (=> start!731576 e!4509896))

(assert (=> start!731576 e!4509897))

(assert (=> start!731576 e!4509898))

(declare-fun b!7576334 () Bool)

(declare-fun tp!2207632 () Bool)

(assert (=> b!7576334 (= e!4509897 tp!2207632)))

(assert (= (and start!731576 res!3035273) b!7576333))

(assert (= (and b!7576333 res!3035277) b!7576329))

(assert (= (and b!7576329 res!3035276) b!7576336))

(assert (= (and b!7576336 (not res!3035279)) b!7576331))

(assert (= (and b!7576331 (not res!3035280)) b!7576341))

(assert (= (and b!7576341 (not res!3035275)) b!7576332))

(assert (= (and b!7576332 (not res!3035274)) b!7576337))

(assert (= (and b!7576337 (not res!3035278)) b!7576340))

(assert (= (and start!731576 ((_ is ElementMatch!20055) r!22341)) b!7576335))

(assert (= (and start!731576 ((_ is Concat!28900) r!22341)) b!7576330))

(assert (= (and start!731576 ((_ is Star!20055) r!22341)) b!7576334))

(assert (= (and start!731576 ((_ is Union!20055) r!22341)) b!7576339))

(assert (= (and start!731576 ((_ is Cons!72814) s!13436)) b!7576338))

(declare-fun m!8134254 () Bool)

(assert (=> b!7576329 m!8134254))

(declare-fun m!8134256 () Bool)

(assert (=> b!7576337 m!8134256))

(declare-fun m!8134258 () Bool)

(assert (=> b!7576340 m!8134258))

(declare-fun m!8134260 () Bool)

(assert (=> b!7576336 m!8134260))

(declare-fun m!8134262 () Bool)

(assert (=> b!7576336 m!8134262))

(declare-fun m!8134264 () Bool)

(assert (=> b!7576336 m!8134264))

(declare-fun m!8134266 () Bool)

(assert (=> b!7576331 m!8134266))

(declare-fun m!8134268 () Bool)

(assert (=> b!7576331 m!8134268))

(declare-fun m!8134270 () Bool)

(assert (=> b!7576331 m!8134270))

(assert (=> b!7576331 m!8134268))

(declare-fun m!8134272 () Bool)

(assert (=> b!7576331 m!8134272))

(declare-fun m!8134274 () Bool)

(assert (=> b!7576331 m!8134274))

(declare-fun m!8134276 () Bool)

(assert (=> b!7576331 m!8134276))

(declare-fun m!8134278 () Bool)

(assert (=> b!7576331 m!8134278))

(declare-fun m!8134280 () Bool)

(assert (=> b!7576331 m!8134280))

(declare-fun m!8134282 () Bool)

(assert (=> b!7576341 m!8134282))

(declare-fun m!8134284 () Bool)

(assert (=> b!7576332 m!8134284))

(declare-fun m!8134286 () Bool)

(assert (=> b!7576333 m!8134286))

(declare-fun m!8134288 () Bool)

(assert (=> start!731576 m!8134288))

(check-sat (not start!731576) (not b!7576337) (not b!7576336) (not b!7576341) (not b!7576331) (not b!7576330) (not b!7576332) (not b!7576338) (not b!7576329) tp_is_empty!50465 (not b!7576339) (not b!7576340) (not b!7576333) (not b!7576334))
(check-sat)
