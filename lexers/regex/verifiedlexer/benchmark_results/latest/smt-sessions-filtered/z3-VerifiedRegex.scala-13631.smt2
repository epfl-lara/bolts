; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731580 () Bool)

(assert start!731580)

(declare-fun b!7576450 () Bool)

(assert (=> b!7576450 true))

(assert (=> b!7576450 true))

(declare-fun lambda!466773 () Int)

(declare-fun lambda!466772 () Int)

(assert (=> b!7576450 (not (= lambda!466773 lambda!466772))))

(assert (=> b!7576450 true))

(assert (=> b!7576450 true))

(declare-fun b!7576444 () Bool)

(declare-fun res!3035354 () Bool)

(declare-fun e!4509937 () Bool)

(assert (=> b!7576444 (=> res!3035354 e!4509937)))

(declare-datatypes ((C!40440 0))(
  ( (C!40441 (val!30660 Int)) )
))
(declare-datatypes ((Regex!20057 0))(
  ( (ElementMatch!20057 (c!1397584 C!40440)) (Concat!28902 (regOne!40626 Regex!20057) (regTwo!40626 Regex!20057)) (EmptyExpr!20057) (Star!20057 (reg!20386 Regex!20057)) (EmptyLang!20057) (Union!20057 (regOne!40627 Regex!20057) (regTwo!40627 Regex!20057)) )
))
(declare-fun r!22341 () Regex!20057)

(declare-fun lostCause!1833 (Regex!20057) Bool)

(assert (=> b!7576444 (= res!3035354 (lostCause!1833 (regOne!40626 r!22341)))))

(declare-fun b!7576445 () Bool)

(declare-fun e!4509940 () Bool)

(declare-fun tp!2207673 () Bool)

(declare-fun tp!2207672 () Bool)

(assert (=> b!7576445 (= e!4509940 (and tp!2207673 tp!2207672))))

(declare-fun b!7576446 () Bool)

(declare-fun tp!2207669 () Bool)

(declare-fun tp!2207668 () Bool)

(assert (=> b!7576446 (= e!4509940 (and tp!2207669 tp!2207668))))

(declare-fun b!7576447 () Bool)

(declare-fun res!3035356 () Bool)

(assert (=> b!7576447 (=> res!3035356 e!4509937)))

(declare-datatypes ((List!72940 0))(
  ( (Nil!72816) (Cons!72816 (h!79264 C!40440) (t!387675 List!72940)) )
))
(declare-datatypes ((tuple2!68908 0))(
  ( (tuple2!68909 (_1!37757 List!72940) (_2!37757 List!72940)) )
))
(declare-fun lt!2652199 () tuple2!68908)

(declare-fun matchR!9653 (Regex!20057 List!72940) Bool)

(assert (=> b!7576447 (= res!3035356 (not (matchR!9653 (regTwo!40626 r!22341) (_2!37757 lt!2652199))))))

(declare-fun b!7576448 () Bool)

(declare-fun tp!2207671 () Bool)

(assert (=> b!7576448 (= e!4509940 tp!2207671)))

(declare-fun b!7576449 () Bool)

(declare-fun res!3035353 () Bool)

(declare-fun e!4509941 () Bool)

(assert (=> b!7576449 (=> (not res!3035353) (not e!4509941))))

(declare-fun s!13436 () List!72940)

(declare-fun isEmpty!41483 (List!72940) Bool)

(assert (=> b!7576449 (= res!3035353 (not (isEmpty!41483 s!13436)))))

(declare-fun e!4509938 () Bool)

(assert (=> b!7576450 (= e!4509938 e!4509937)))

(declare-fun res!3035350 () Bool)

(assert (=> b!7576450 (=> res!3035350 e!4509937)))

(assert (=> b!7576450 (= res!3035350 (not (matchR!9653 (regOne!40626 r!22341) (_1!37757 lt!2652199))))))

(declare-datatypes ((Option!17290 0))(
  ( (None!17289) (Some!17289 (v!54424 tuple2!68908)) )
))
(declare-fun lt!2652197 () Option!17290)

(declare-fun get!25591 (Option!17290) tuple2!68908)

(assert (=> b!7576450 (= lt!2652199 (get!25591 lt!2652197))))

(declare-fun Exists!4300 (Int) Bool)

(assert (=> b!7576450 (= (Exists!4300 lambda!466772) (Exists!4300 lambda!466773))))

(declare-datatypes ((Unit!167070 0))(
  ( (Unit!167071) )
))
(declare-fun lt!2652196 () Unit!167070)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2618 (Regex!20057 Regex!20057 List!72940) Unit!167070)

(assert (=> b!7576450 (= lt!2652196 (lemmaExistCutMatchRandMatchRSpecEquivalent!2618 (regOne!40626 r!22341) (regTwo!40626 r!22341) s!13436))))

(declare-fun isDefined!13936 (Option!17290) Bool)

(assert (=> b!7576450 (= (isDefined!13936 lt!2652197) (Exists!4300 lambda!466772))))

(declare-fun findConcatSeparation!3350 (Regex!20057 Regex!20057 List!72940 List!72940 List!72940) Option!17290)

(assert (=> b!7576450 (= lt!2652197 (findConcatSeparation!3350 (regOne!40626 r!22341) (regTwo!40626 r!22341) Nil!72816 s!13436 s!13436))))

(declare-fun lt!2652194 () Unit!167070)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3108 (Regex!20057 Regex!20057 List!72940) Unit!167070)

(assert (=> b!7576450 (= lt!2652194 (lemmaFindConcatSeparationEquivalentToExists!3108 (regOne!40626 r!22341) (regTwo!40626 r!22341) s!13436))))

(declare-fun b!7576451 () Bool)

(declare-fun res!3035351 () Bool)

(assert (=> b!7576451 (=> (not res!3035351) (not e!4509941))))

(assert (=> b!7576451 (= res!3035351 (lostCause!1833 r!22341))))

(declare-fun b!7576452 () Bool)

(declare-fun tp_is_empty!50469 () Bool)

(assert (=> b!7576452 (= e!4509940 tp_is_empty!50469)))

(declare-fun b!7576453 () Bool)

(assert (=> b!7576453 (= e!4509941 (not e!4509938))))

(declare-fun res!3035358 () Bool)

(assert (=> b!7576453 (=> res!3035358 e!4509938)))

(declare-fun lt!2652198 () Bool)

(get-info :version)

(assert (=> b!7576453 (= res!3035358 (or ((_ is EmptyLang!20057) r!22341) ((_ is EmptyExpr!20057) r!22341) ((_ is ElementMatch!20057) r!22341) ((_ is Union!20057) r!22341) ((_ is Star!20057) r!22341) (not lt!2652198)))))

(declare-fun matchRSpec!4376 (Regex!20057 List!72940) Bool)

(assert (=> b!7576453 (= lt!2652198 (matchRSpec!4376 r!22341 s!13436))))

(assert (=> b!7576453 (= lt!2652198 (matchR!9653 r!22341 s!13436))))

(declare-fun lt!2652200 () Unit!167070)

(declare-fun mainMatchTheorem!4370 (Regex!20057 List!72940) Unit!167070)

(assert (=> b!7576453 (= lt!2652200 (mainMatchTheorem!4370 r!22341 s!13436))))

(declare-fun res!3035355 () Bool)

(assert (=> start!731580 (=> (not res!3035355) (not e!4509941))))

(declare-fun validRegex!10485 (Regex!20057) Bool)

(assert (=> start!731580 (= res!3035355 (validRegex!10485 r!22341))))

(assert (=> start!731580 e!4509941))

(assert (=> start!731580 e!4509940))

(declare-fun e!4509939 () Bool)

(assert (=> start!731580 e!4509939))

(declare-fun b!7576454 () Bool)

(declare-fun res!3035357 () Bool)

(assert (=> b!7576454 (=> res!3035357 e!4509937)))

(assert (=> b!7576454 (= res!3035357 (not (validRegex!10485 (regTwo!40626 r!22341))))))

(declare-fun b!7576455 () Bool)

(assert (=> b!7576455 (= e!4509937 true)))

(assert (=> b!7576455 false))

(declare-fun lt!2652195 () Unit!167070)

(declare-fun lemmaLostCauseCannotMatch!77 (Regex!20057 List!72940) Unit!167070)

(assert (=> b!7576455 (= lt!2652195 (lemmaLostCauseCannotMatch!77 (regTwo!40626 r!22341) (_2!37757 lt!2652199)))))

(declare-fun b!7576456 () Bool)

(declare-fun tp!2207670 () Bool)

(assert (=> b!7576456 (= e!4509939 (and tp_is_empty!50469 tp!2207670))))

(declare-fun b!7576457 () Bool)

(declare-fun res!3035352 () Bool)

(assert (=> b!7576457 (=> res!3035352 e!4509937)))

(assert (=> b!7576457 (= res!3035352 (not (lostCause!1833 (regTwo!40626 r!22341))))))

(assert (= (and start!731580 res!3035355) b!7576451))

(assert (= (and b!7576451 res!3035351) b!7576449))

(assert (= (and b!7576449 res!3035353) b!7576453))

(assert (= (and b!7576453 (not res!3035358)) b!7576450))

(assert (= (and b!7576450 (not res!3035350)) b!7576447))

(assert (= (and b!7576447 (not res!3035356)) b!7576444))

(assert (= (and b!7576444 (not res!3035354)) b!7576454))

(assert (= (and b!7576454 (not res!3035357)) b!7576457))

(assert (= (and b!7576457 (not res!3035352)) b!7576455))

(assert (= (and start!731580 ((_ is ElementMatch!20057) r!22341)) b!7576452))

(assert (= (and start!731580 ((_ is Concat!28902) r!22341)) b!7576446))

(assert (= (and start!731580 ((_ is Star!20057) r!22341)) b!7576448))

(assert (= (and start!731580 ((_ is Union!20057) r!22341)) b!7576445))

(assert (= (and start!731580 ((_ is Cons!72816) s!13436)) b!7576456))

(declare-fun m!8134328 () Bool)

(assert (=> start!731580 m!8134328))

(declare-fun m!8134330 () Bool)

(assert (=> b!7576455 m!8134330))

(declare-fun m!8134332 () Bool)

(assert (=> b!7576457 m!8134332))

(declare-fun m!8134334 () Bool)

(assert (=> b!7576454 m!8134334))

(declare-fun m!8134336 () Bool)

(assert (=> b!7576451 m!8134336))

(declare-fun m!8134338 () Bool)

(assert (=> b!7576447 m!8134338))

(declare-fun m!8134340 () Bool)

(assert (=> b!7576453 m!8134340))

(declare-fun m!8134342 () Bool)

(assert (=> b!7576453 m!8134342))

(declare-fun m!8134344 () Bool)

(assert (=> b!7576453 m!8134344))

(declare-fun m!8134346 () Bool)

(assert (=> b!7576449 m!8134346))

(declare-fun m!8134348 () Bool)

(assert (=> b!7576444 m!8134348))

(declare-fun m!8134350 () Bool)

(assert (=> b!7576450 m!8134350))

(declare-fun m!8134352 () Bool)

(assert (=> b!7576450 m!8134352))

(declare-fun m!8134354 () Bool)

(assert (=> b!7576450 m!8134354))

(declare-fun m!8134356 () Bool)

(assert (=> b!7576450 m!8134356))

(declare-fun m!8134358 () Bool)

(assert (=> b!7576450 m!8134358))

(declare-fun m!8134360 () Bool)

(assert (=> b!7576450 m!8134360))

(declare-fun m!8134362 () Bool)

(assert (=> b!7576450 m!8134362))

(assert (=> b!7576450 m!8134352))

(declare-fun m!8134364 () Bool)

(assert (=> b!7576450 m!8134364))

(check-sat (not b!7576455) (not b!7576451) (not b!7576445) tp_is_empty!50469 (not b!7576449) (not b!7576450) (not b!7576448) (not b!7576453) (not b!7576444) (not b!7576454) (not b!7576456) (not b!7576457) (not start!731580) (not b!7576446) (not b!7576447))
(check-sat)
