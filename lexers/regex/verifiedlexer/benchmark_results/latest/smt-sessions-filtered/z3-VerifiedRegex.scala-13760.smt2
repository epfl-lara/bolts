; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734172 () Bool)

(assert start!734172)

(declare-fun b!7622362 () Bool)

(assert (=> b!7622362 true))

(assert (=> b!7622362 true))

(declare-fun bs!1943546 () Bool)

(declare-fun b!7622376 () Bool)

(assert (= bs!1943546 (and b!7622376 b!7622362)))

(declare-fun lambda!468519 () Int)

(declare-fun lambda!468518 () Int)

(assert (=> bs!1943546 (not (= lambda!468519 lambda!468518))))

(assert (=> b!7622376 true))

(assert (=> b!7622376 true))

(declare-fun b!7622360 () Bool)

(declare-fun e!4532341 () Bool)

(declare-fun tp_is_empty!50985 () Bool)

(declare-fun tp!2225409 () Bool)

(assert (=> b!7622360 (= e!4532341 (and tp_is_empty!50985 tp!2225409))))

(declare-fun b!7622361 () Bool)

(declare-fun res!3051886 () Bool)

(declare-fun e!4532339 () Bool)

(assert (=> b!7622361 (=> (not res!3051886) (not e!4532339))))

(declare-datatypes ((C!40956 0))(
  ( (C!40957 (val!30918 Int)) )
))
(declare-datatypes ((Regex!20315 0))(
  ( (ElementMatch!20315 (c!1404784 C!40956)) (Concat!29160 (regOne!41142 Regex!20315) (regTwo!41142 Regex!20315)) (EmptyExpr!20315) (Star!20315 (reg!20644 Regex!20315)) (EmptyLang!20315) (Union!20315 (regOne!41143 Regex!20315) (regTwo!41143 Regex!20315)) )
))
(declare-fun r!14126 () Regex!20315)

(get-info :version)

(assert (=> b!7622361 (= res!3051886 (and (not ((_ is EmptyExpr!20315) r!14126)) (not ((_ is EmptyLang!20315) r!14126)) (not ((_ is ElementMatch!20315) r!14126)) (not ((_ is Union!20315) r!14126)) ((_ is Star!20315) r!14126)))))

(declare-fun res!3051881 () Bool)

(assert (=> start!734172 (=> (not res!3051881) (not e!4532339))))

(declare-fun validRegex!10735 (Regex!20315) Bool)

(assert (=> start!734172 (= res!3051881 (validRegex!10735 r!14126))))

(assert (=> start!734172 e!4532339))

(declare-fun e!4532340 () Bool)

(assert (=> start!734172 e!4532340))

(assert (=> start!734172 e!4532341))

(declare-fun e!4532346 () Bool)

(declare-fun e!4532338 () Bool)

(assert (=> start!734172 (and e!4532346 e!4532338)))

(declare-fun e!4532347 () Bool)

(assert (=> b!7622362 (= e!4532339 (not e!4532347))))

(declare-fun res!3051888 () Bool)

(assert (=> b!7622362 (=> res!3051888 e!4532347)))

(declare-fun lt!2657082 () Bool)

(assert (=> b!7622362 (= res!3051888 (not lt!2657082))))

(declare-fun Exists!4471 (Int) Bool)

(assert (=> b!7622362 (= lt!2657082 (Exists!4471 lambda!468518))))

(declare-datatypes ((List!73168 0))(
  ( (Nil!73044) (Cons!73044 (h!79492 C!40956) (t!387903 List!73168)) )
))
(declare-datatypes ((tuple2!69192 0))(
  ( (tuple2!69193 (_1!37899 List!73168) (_2!37899 List!73168)) )
))
(declare-datatypes ((Option!17390 0))(
  ( (None!17389) (Some!17389 (v!54524 tuple2!69192)) )
))
(declare-fun lt!2657091 () Option!17390)

(declare-fun isDefined!14006 (Option!17390) Bool)

(assert (=> b!7622362 (= lt!2657082 (isDefined!14006 lt!2657091))))

(declare-fun s!9605 () List!73168)

(declare-fun findConcatSeparation!3420 (Regex!20315 Regex!20315 List!73168 List!73168 List!73168) Option!17390)

(assert (=> b!7622362 (= lt!2657091 (findConcatSeparation!3420 (reg!20644 r!14126) r!14126 Nil!73044 s!9605 s!9605))))

(declare-datatypes ((Unit!167508 0))(
  ( (Unit!167509) )
))
(declare-fun lt!2657088 () Unit!167508)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3178 (Regex!20315 Regex!20315 List!73168) Unit!167508)

(assert (=> b!7622362 (= lt!2657088 (lemmaFindConcatSeparationEquivalentToExists!3178 (reg!20644 r!14126) r!14126 s!9605))))

(declare-fun b!7622363 () Bool)

(declare-fun tp!2225408 () Bool)

(assert (=> b!7622363 (= e!4532338 (and tp_is_empty!50985 tp!2225408))))

(declare-fun b!7622364 () Bool)

(declare-fun res!3051884 () Bool)

(declare-fun e!4532344 () Bool)

(assert (=> b!7622364 (=> res!3051884 e!4532344)))

(declare-fun cut!7 () tuple2!69192)

(declare-fun matchRSpec!4514 (Regex!20315 List!73168) Bool)

(assert (=> b!7622364 (= res!3051884 (not (matchRSpec!4514 (reg!20644 r!14126) (_1!37899 cut!7))))))

(declare-fun b!7622365 () Bool)

(declare-fun e!4532342 () Unit!167508)

(declare-fun Unit!167510 () Unit!167508)

(assert (=> b!7622365 (= e!4532342 Unit!167510)))

(declare-fun lt!2657087 () Unit!167508)

(declare-fun lt!2657089 () tuple2!69192)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!142 (Regex!20315 Regex!20315 List!73168 List!73168 List!73168) Unit!167508)

(assert (=> b!7622365 (= lt!2657087 (lemmaFindSeparationIsDefinedThenConcatMatches!142 (reg!20644 r!14126) r!14126 (_1!37899 lt!2657089) (_2!37899 lt!2657089) s!9605))))

(declare-fun lt!2657085 () List!73168)

(declare-fun ++!17625 (List!73168 List!73168) List!73168)

(assert (=> b!7622365 (= lt!2657085 (++!17625 (_1!37899 lt!2657089) (_2!37899 lt!2657089)))))

(declare-fun matchR!9822 (Regex!20315 List!73168) Bool)

(assert (=> b!7622365 (matchR!9822 (Concat!29160 (reg!20644 r!14126) r!14126) lt!2657085)))

(declare-fun lt!2657092 () Unit!167508)

(declare-fun lemmaStarApp!196 (Regex!20315 List!73168 List!73168) Unit!167508)

(assert (=> b!7622365 (= lt!2657092 (lemmaStarApp!196 (reg!20644 r!14126) (_1!37899 lt!2657089) (_2!37899 lt!2657089)))))

(declare-fun res!3051883 () Bool)

(assert (=> b!7622365 (= res!3051883 (matchR!9822 r!14126 lt!2657085))))

(declare-fun e!4532337 () Bool)

(assert (=> b!7622365 (=> (not res!3051883) (not e!4532337))))

(assert (=> b!7622365 e!4532337))

(declare-fun b!7622366 () Bool)

(declare-fun tp!2225415 () Bool)

(declare-fun tp!2225411 () Bool)

(assert (=> b!7622366 (= e!4532340 (and tp!2225415 tp!2225411))))

(declare-fun b!7622367 () Bool)

(declare-fun e!4532343 () Bool)

(declare-fun e!4532345 () Bool)

(assert (=> b!7622367 (= e!4532343 e!4532345)))

(declare-fun res!3051879 () Bool)

(assert (=> b!7622367 (=> res!3051879 e!4532345)))

(declare-fun nullable!8882 (Regex!20315) Bool)

(assert (=> b!7622367 (= res!3051879 (nullable!8882 (reg!20644 r!14126)))))

(declare-fun lt!2657083 () tuple2!69192)

(assert (=> b!7622367 (= (matchR!9822 r!14126 (_2!37899 lt!2657083)) (matchRSpec!4514 r!14126 (_2!37899 lt!2657083)))))

(declare-fun lt!2657086 () Unit!167508)

(declare-fun mainMatchTheorem!4508 (Regex!20315 List!73168) Unit!167508)

(assert (=> b!7622367 (= lt!2657086 (mainMatchTheorem!4508 r!14126 (_2!37899 lt!2657083)))))

(assert (=> b!7622367 (= (matchR!9822 (reg!20644 r!14126) (_1!37899 lt!2657083)) (matchRSpec!4514 (reg!20644 r!14126) (_1!37899 lt!2657083)))))

(declare-fun lt!2657080 () Unit!167508)

(assert (=> b!7622367 (= lt!2657080 (mainMatchTheorem!4508 (reg!20644 r!14126) (_1!37899 lt!2657083)))))

(declare-fun pickWitness!446 (Int) tuple2!69192)

(assert (=> b!7622367 (= lt!2657083 (pickWitness!446 lambda!468518))))

(declare-fun b!7622368 () Bool)

(assert (=> b!7622368 (= e!4532347 e!4532343)))

(declare-fun res!3051880 () Bool)

(assert (=> b!7622368 (=> res!3051880 e!4532343)))

(assert (=> b!7622368 (= res!3051880 (not (Exists!4471 lambda!468518)))))

(declare-fun lt!2657079 () Unit!167508)

(assert (=> b!7622368 (= lt!2657079 e!4532342)))

(declare-fun c!1404783 () Bool)

(assert (=> b!7622368 (= c!1404783 (not (matchR!9822 r!14126 s!9605)))))

(assert (=> b!7622368 (= (matchR!9822 r!14126 (_2!37899 lt!2657089)) (matchRSpec!4514 r!14126 (_2!37899 lt!2657089)))))

(declare-fun lt!2657090 () Unit!167508)

(assert (=> b!7622368 (= lt!2657090 (mainMatchTheorem!4508 r!14126 (_2!37899 lt!2657089)))))

(assert (=> b!7622368 (= (matchR!9822 (reg!20644 r!14126) (_1!37899 lt!2657089)) (matchRSpec!4514 (reg!20644 r!14126) (_1!37899 lt!2657089)))))

(declare-fun lt!2657084 () Unit!167508)

(assert (=> b!7622368 (= lt!2657084 (mainMatchTheorem!4508 (reg!20644 r!14126) (_1!37899 lt!2657089)))))

(declare-fun get!25784 (Option!17390) tuple2!69192)

(assert (=> b!7622368 (= lt!2657089 (get!25784 lt!2657091))))

(declare-fun b!7622369 () Bool)

(declare-fun res!3051878 () Bool)

(assert (=> b!7622369 (=> res!3051878 e!4532344)))

(declare-fun isEmpty!41666 (List!73168) Bool)

(assert (=> b!7622369 (= res!3051878 (isEmpty!41666 (_1!37899 cut!7)))))

(declare-fun b!7622370 () Bool)

(assert (=> b!7622370 (= e!4532337 false)))

(declare-fun b!7622371 () Bool)

(declare-fun tp!2225413 () Bool)

(assert (=> b!7622371 (= e!4532340 tp!2225413)))

(declare-fun b!7622372 () Bool)

(declare-fun Unit!167511 () Unit!167508)

(assert (=> b!7622372 (= e!4532342 Unit!167511)))

(declare-fun b!7622373 () Bool)

(assert (=> b!7622373 (= e!4532344 (validRegex!10735 r!14126))))

(declare-fun b!7622374 () Bool)

(declare-fun res!3051885 () Bool)

(assert (=> b!7622374 (=> (not res!3051885) (not e!4532339))))

(assert (=> b!7622374 (= res!3051885 (not (isEmpty!41666 s!9605)))))

(declare-fun b!7622375 () Bool)

(declare-fun res!3051882 () Bool)

(assert (=> b!7622375 (=> res!3051882 e!4532345)))

(assert (=> b!7622375 (= res!3051882 (isEmpty!41666 (_1!37899 lt!2657083)))))

(assert (=> b!7622376 (= e!4532345 e!4532344)))

(declare-fun res!3051887 () Bool)

(assert (=> b!7622376 (=> res!3051887 e!4532344)))

(assert (=> b!7622376 (= res!3051887 (not (= (++!17625 (_1!37899 cut!7) (_2!37899 cut!7)) s!9605)))))

(declare-fun lt!2657081 () Unit!167508)

(declare-fun ExistsThe!44 (tuple2!69192 Int) Unit!167508)

(assert (=> b!7622376 (= lt!2657081 (ExistsThe!44 lt!2657083 lambda!468519))))

(declare-fun b!7622377 () Bool)

(assert (=> b!7622377 (= e!4532340 tp_is_empty!50985)))

(declare-fun b!7622378 () Bool)

(declare-fun tp!2225410 () Bool)

(declare-fun tp!2225412 () Bool)

(assert (=> b!7622378 (= e!4532340 (and tp!2225410 tp!2225412))))

(declare-fun b!7622379 () Bool)

(declare-fun tp!2225414 () Bool)

(assert (=> b!7622379 (= e!4532346 (and tp_is_empty!50985 tp!2225414))))

(assert (= (and start!734172 res!3051881) b!7622361))

(assert (= (and b!7622361 res!3051886) b!7622374))

(assert (= (and b!7622374 res!3051885) b!7622362))

(assert (= (and b!7622362 (not res!3051888)) b!7622368))

(assert (= (and b!7622368 c!1404783) b!7622365))

(assert (= (and b!7622368 (not c!1404783)) b!7622372))

(assert (= (and b!7622365 res!3051883) b!7622370))

(assert (= (and b!7622368 (not res!3051880)) b!7622367))

(assert (= (and b!7622367 (not res!3051879)) b!7622375))

(assert (= (and b!7622375 (not res!3051882)) b!7622376))

(assert (= (and b!7622376 (not res!3051887)) b!7622369))

(assert (= (and b!7622369 (not res!3051878)) b!7622364))

(assert (= (and b!7622364 (not res!3051884)) b!7622373))

(assert (= (and start!734172 ((_ is ElementMatch!20315) r!14126)) b!7622377))

(assert (= (and start!734172 ((_ is Concat!29160) r!14126)) b!7622378))

(assert (= (and start!734172 ((_ is Star!20315) r!14126)) b!7622371))

(assert (= (and start!734172 ((_ is Union!20315) r!14126)) b!7622366))

(assert (= (and start!734172 ((_ is Cons!73044) s!9605)) b!7622360))

(assert (= (and start!734172 ((_ is Cons!73044) (_1!37899 cut!7))) b!7622379))

(assert (= (and start!734172 ((_ is Cons!73044) (_2!37899 cut!7))) b!7622363))

(declare-fun m!8153662 () Bool)

(assert (=> b!7622369 m!8153662))

(declare-fun m!8153664 () Bool)

(assert (=> b!7622375 m!8153664))

(declare-fun m!8153666 () Bool)

(assert (=> b!7622376 m!8153666))

(declare-fun m!8153668 () Bool)

(assert (=> b!7622376 m!8153668))

(declare-fun m!8153670 () Bool)

(assert (=> start!734172 m!8153670))

(declare-fun m!8153672 () Bool)

(assert (=> b!7622374 m!8153672))

(assert (=> b!7622373 m!8153670))

(declare-fun m!8153674 () Bool)

(assert (=> b!7622364 m!8153674))

(declare-fun m!8153676 () Bool)

(assert (=> b!7622368 m!8153676))

(declare-fun m!8153678 () Bool)

(assert (=> b!7622368 m!8153678))

(declare-fun m!8153680 () Bool)

(assert (=> b!7622368 m!8153680))

(declare-fun m!8153682 () Bool)

(assert (=> b!7622368 m!8153682))

(declare-fun m!8153684 () Bool)

(assert (=> b!7622368 m!8153684))

(declare-fun m!8153686 () Bool)

(assert (=> b!7622368 m!8153686))

(declare-fun m!8153688 () Bool)

(assert (=> b!7622368 m!8153688))

(declare-fun m!8153690 () Bool)

(assert (=> b!7622368 m!8153690))

(declare-fun m!8153692 () Bool)

(assert (=> b!7622368 m!8153692))

(declare-fun m!8153694 () Bool)

(assert (=> b!7622365 m!8153694))

(declare-fun m!8153696 () Bool)

(assert (=> b!7622365 m!8153696))

(declare-fun m!8153698 () Bool)

(assert (=> b!7622365 m!8153698))

(declare-fun m!8153700 () Bool)

(assert (=> b!7622365 m!8153700))

(declare-fun m!8153702 () Bool)

(assert (=> b!7622365 m!8153702))

(declare-fun m!8153704 () Bool)

(assert (=> b!7622367 m!8153704))

(declare-fun m!8153706 () Bool)

(assert (=> b!7622367 m!8153706))

(declare-fun m!8153708 () Bool)

(assert (=> b!7622367 m!8153708))

(declare-fun m!8153710 () Bool)

(assert (=> b!7622367 m!8153710))

(declare-fun m!8153712 () Bool)

(assert (=> b!7622367 m!8153712))

(declare-fun m!8153714 () Bool)

(assert (=> b!7622367 m!8153714))

(declare-fun m!8153716 () Bool)

(assert (=> b!7622367 m!8153716))

(declare-fun m!8153718 () Bool)

(assert (=> b!7622367 m!8153718))

(assert (=> b!7622362 m!8153684))

(declare-fun m!8153720 () Bool)

(assert (=> b!7622362 m!8153720))

(declare-fun m!8153722 () Bool)

(assert (=> b!7622362 m!8153722))

(declare-fun m!8153724 () Bool)

(assert (=> b!7622362 m!8153724))

(check-sat (not b!7622371) (not b!7622368) (not b!7622378) (not b!7622373) (not b!7622366) (not b!7622362) (not b!7622379) (not b!7622363) (not b!7622375) (not b!7622360) (not b!7622365) (not start!734172) tp_is_empty!50985 (not b!7622364) (not b!7622369) (not b!7622374) (not b!7622376) (not b!7622367))
(check-sat)
