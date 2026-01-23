; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231870 () Bool)

(assert start!231870)

(declare-fun b!2362317 () Bool)

(assert (=> b!2362317 true))

(assert (=> b!2362317 true))

(declare-fun lambda!86931 () Int)

(declare-fun lambda!86930 () Int)

(assert (=> b!2362317 (not (= lambda!86931 lambda!86930))))

(assert (=> b!2362317 true))

(assert (=> b!2362317 true))

(declare-fun b!2362312 () Bool)

(declare-fun e!1508738 () Bool)

(declare-fun tp_is_empty!11247 () Bool)

(assert (=> b!2362312 (= e!1508738 tp_is_empty!11247)))

(declare-fun b!2362313 () Bool)

(declare-fun e!1508740 () Bool)

(declare-fun tp!755548 () Bool)

(declare-fun tp!755553 () Bool)

(assert (=> b!2362313 (= e!1508740 (and tp!755548 tp!755553))))

(declare-fun b!2362314 () Bool)

(declare-fun tp!755552 () Bool)

(declare-fun tp!755551 () Bool)

(assert (=> b!2362314 (= e!1508738 (and tp!755552 tp!755551))))

(declare-fun b!2362315 () Bool)

(declare-fun res!1002569 () Bool)

(declare-fun e!1508742 () Bool)

(assert (=> b!2362315 (=> (not res!1002569) (not e!1508742))))

(declare-datatypes ((C!13992 0))(
  ( (C!13993 (val!8238 Int)) )
))
(declare-datatypes ((Regex!6917 0))(
  ( (ElementMatch!6917 (c!375439 C!13992)) (Concat!11553 (regOne!14346 Regex!6917) (regTwo!14346 Regex!6917)) (EmptyExpr!6917) (Star!6917 (reg!7246 Regex!6917)) (EmptyLang!6917) (Union!6917 (regOne!14347 Regex!6917) (regTwo!14347 Regex!6917)) )
))
(declare-fun r!13927 () Regex!6917)

(declare-datatypes ((List!28072 0))(
  ( (Nil!27974) (Cons!27974 (h!33375 Regex!6917) (t!208049 List!28072)) )
))
(declare-fun l!9164 () List!28072)

(declare-fun generalisedConcat!18 (List!28072) Regex!6917)

(assert (=> b!2362315 (= res!1002569 (= r!13927 (generalisedConcat!18 l!9164)))))

(declare-fun b!2362316 () Bool)

(declare-fun e!1508739 () Bool)

(assert (=> b!2362316 (= e!1508742 (not e!1508739))))

(declare-fun res!1002570 () Bool)

(assert (=> b!2362316 (=> res!1002570 e!1508739)))

(get-info :version)

(assert (=> b!2362316 (= res!1002570 (not ((_ is Concat!11553) r!13927)))))

(declare-datatypes ((List!28073 0))(
  ( (Nil!27975) (Cons!27975 (h!33376 C!13992) (t!208050 List!28073)) )
))
(declare-fun s!9460 () List!28073)

(declare-fun matchR!3034 (Regex!6917 List!28073) Bool)

(declare-fun matchRSpec!766 (Regex!6917 List!28073) Bool)

(assert (=> b!2362316 (= (matchR!3034 r!13927 s!9460) (matchRSpec!766 r!13927 s!9460))))

(declare-datatypes ((Unit!40869 0))(
  ( (Unit!40870) )
))
(declare-fun lt!864703 () Unit!40869)

(declare-fun mainMatchTheorem!766 (Regex!6917 List!28073) Unit!40869)

(assert (=> b!2362316 (= lt!864703 (mainMatchTheorem!766 r!13927 s!9460))))

(declare-fun res!1002568 () Bool)

(assert (=> start!231870 (=> (not res!1002568) (not e!1508742))))

(declare-fun lambda!86929 () Int)

(declare-fun forall!5551 (List!28072 Int) Bool)

(assert (=> start!231870 (= res!1002568 (forall!5551 l!9164 lambda!86929))))

(assert (=> start!231870 e!1508742))

(assert (=> start!231870 e!1508740))

(assert (=> start!231870 e!1508738))

(declare-fun e!1508741 () Bool)

(assert (=> start!231870 e!1508741))

(declare-fun validRegex!2647 (Regex!6917) Bool)

(assert (=> b!2362317 (= e!1508739 (validRegex!2647 r!13927))))

(declare-fun Exists!979 (Int) Bool)

(assert (=> b!2362317 (= (Exists!979 lambda!86930) (Exists!979 lambda!86931))))

(declare-fun lt!864702 () Unit!40869)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!318 (Regex!6917 Regex!6917 List!28073) Unit!40869)

(assert (=> b!2362317 (= lt!864702 (lemmaExistCutMatchRandMatchRSpecEquivalent!318 (regOne!14346 r!13927) (regTwo!14346 r!13927) s!9460))))

(declare-datatypes ((tuple2!27698 0))(
  ( (tuple2!27699 (_1!16390 List!28073) (_2!16390 List!28073)) )
))
(declare-datatypes ((Option!5460 0))(
  ( (None!5459) (Some!5459 (v!30867 tuple2!27698)) )
))
(declare-fun isDefined!4288 (Option!5460) Bool)

(declare-fun findConcatSeparation!568 (Regex!6917 Regex!6917 List!28073 List!28073 List!28073) Option!5460)

(assert (=> b!2362317 (= (isDefined!4288 (findConcatSeparation!568 (regOne!14346 r!13927) (regTwo!14346 r!13927) Nil!27975 s!9460 s!9460)) (Exists!979 lambda!86930))))

(declare-fun lt!864704 () Unit!40869)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!568 (Regex!6917 Regex!6917 List!28073) Unit!40869)

(assert (=> b!2362317 (= lt!864704 (lemmaFindConcatSeparationEquivalentToExists!568 (regOne!14346 r!13927) (regTwo!14346 r!13927) s!9460))))

(declare-fun b!2362318 () Bool)

(declare-fun tp!755550 () Bool)

(declare-fun tp!755546 () Bool)

(assert (=> b!2362318 (= e!1508738 (and tp!755550 tp!755546))))

(declare-fun b!2362319 () Bool)

(declare-fun tp!755549 () Bool)

(assert (=> b!2362319 (= e!1508741 (and tp_is_empty!11247 tp!755549))))

(declare-fun b!2362320 () Bool)

(declare-fun tp!755547 () Bool)

(assert (=> b!2362320 (= e!1508738 tp!755547)))

(assert (= (and start!231870 res!1002568) b!2362315))

(assert (= (and b!2362315 res!1002569) b!2362316))

(assert (= (and b!2362316 (not res!1002570)) b!2362317))

(assert (= (and start!231870 ((_ is Cons!27974) l!9164)) b!2362313))

(assert (= (and start!231870 ((_ is ElementMatch!6917) r!13927)) b!2362312))

(assert (= (and start!231870 ((_ is Concat!11553) r!13927)) b!2362318))

(assert (= (and start!231870 ((_ is Star!6917) r!13927)) b!2362320))

(assert (= (and start!231870 ((_ is Union!6917) r!13927)) b!2362314))

(assert (= (and start!231870 ((_ is Cons!27975) s!9460)) b!2362319))

(declare-fun m!2774335 () Bool)

(assert (=> b!2362315 m!2774335))

(declare-fun m!2774337 () Bool)

(assert (=> b!2362316 m!2774337))

(declare-fun m!2774339 () Bool)

(assert (=> b!2362316 m!2774339))

(declare-fun m!2774341 () Bool)

(assert (=> b!2362316 m!2774341))

(declare-fun m!2774343 () Bool)

(assert (=> start!231870 m!2774343))

(declare-fun m!2774345 () Bool)

(assert (=> b!2362317 m!2774345))

(declare-fun m!2774347 () Bool)

(assert (=> b!2362317 m!2774347))

(declare-fun m!2774349 () Bool)

(assert (=> b!2362317 m!2774349))

(assert (=> b!2362317 m!2774345))

(declare-fun m!2774351 () Bool)

(assert (=> b!2362317 m!2774351))

(declare-fun m!2774353 () Bool)

(assert (=> b!2362317 m!2774353))

(declare-fun m!2774355 () Bool)

(assert (=> b!2362317 m!2774355))

(declare-fun m!2774357 () Bool)

(assert (=> b!2362317 m!2774357))

(assert (=> b!2362317 m!2774351))

(check-sat (not b!2362314) (not b!2362318) tp_is_empty!11247 (not b!2362317) (not b!2362315) (not b!2362320) (not b!2362313) (not b!2362319) (not b!2362316) (not start!231870))
(check-sat)
(get-model)

(declare-fun d!694221 () Bool)

(declare-fun res!1002575 () Bool)

(declare-fun e!1508747 () Bool)

(assert (=> d!694221 (=> res!1002575 e!1508747)))

(assert (=> d!694221 (= res!1002575 ((_ is Nil!27974) l!9164))))

(assert (=> d!694221 (= (forall!5551 l!9164 lambda!86929) e!1508747)))

(declare-fun b!2362329 () Bool)

(declare-fun e!1508748 () Bool)

(assert (=> b!2362329 (= e!1508747 e!1508748)))

(declare-fun res!1002576 () Bool)

(assert (=> b!2362329 (=> (not res!1002576) (not e!1508748))))

(declare-fun dynLambda!12052 (Int Regex!6917) Bool)

(assert (=> b!2362329 (= res!1002576 (dynLambda!12052 lambda!86929 (h!33375 l!9164)))))

(declare-fun b!2362330 () Bool)

(assert (=> b!2362330 (= e!1508748 (forall!5551 (t!208049 l!9164) lambda!86929))))

(assert (= (and d!694221 (not res!1002575)) b!2362329))

(assert (= (and b!2362329 res!1002576) b!2362330))

(declare-fun b_lambda!73803 () Bool)

(assert (=> (not b_lambda!73803) (not b!2362329)))

(declare-fun m!2774359 () Bool)

(assert (=> b!2362329 m!2774359))

(declare-fun m!2774361 () Bool)

(assert (=> b!2362330 m!2774361))

(assert (=> start!231870 d!694221))

(declare-fun bs!460578 () Bool)

(declare-fun d!694223 () Bool)

(assert (= bs!460578 (and d!694223 start!231870)))

(declare-fun lambda!86934 () Int)

(assert (=> bs!460578 (= lambda!86934 lambda!86929)))

(declare-fun b!2362357 () Bool)

(declare-fun e!1508772 () Bool)

(declare-fun lt!864707 () Regex!6917)

(declare-fun head!5081 (List!28072) Regex!6917)

(assert (=> b!2362357 (= e!1508772 (= lt!864707 (head!5081 l!9164)))))

(declare-fun b!2362358 () Bool)

(declare-fun e!1508769 () Regex!6917)

(assert (=> b!2362358 (= e!1508769 (Concat!11553 (h!33375 l!9164) (generalisedConcat!18 (t!208049 l!9164))))))

(declare-fun b!2362359 () Bool)

(assert (=> b!2362359 (= e!1508769 EmptyExpr!6917)))

(declare-fun b!2362360 () Bool)

(declare-fun e!1508767 () Bool)

(declare-fun e!1508771 () Bool)

(assert (=> b!2362360 (= e!1508767 e!1508771)))

(declare-fun c!375451 () Bool)

(declare-fun isEmpty!15887 (List!28072) Bool)

(assert (=> b!2362360 (= c!375451 (isEmpty!15887 l!9164))))

(declare-fun b!2362361 () Bool)

(declare-fun e!1508770 () Regex!6917)

(assert (=> b!2362361 (= e!1508770 e!1508769)))

(declare-fun c!375448 () Bool)

(assert (=> b!2362361 (= c!375448 ((_ is Cons!27974) l!9164))))

(declare-fun b!2362362 () Bool)

(assert (=> b!2362362 (= e!1508771 e!1508772)))

(declare-fun c!375450 () Bool)

(declare-fun tail!3351 (List!28072) List!28072)

(assert (=> b!2362362 (= c!375450 (isEmpty!15887 (tail!3351 l!9164)))))

(declare-fun b!2362363 () Bool)

(declare-fun e!1508768 () Bool)

(assert (=> b!2362363 (= e!1508768 (isEmpty!15887 (t!208049 l!9164)))))

(declare-fun b!2362364 () Bool)

(assert (=> b!2362364 (= e!1508770 (h!33375 l!9164))))

(declare-fun b!2362365 () Bool)

(declare-fun isEmptyExpr!4 (Regex!6917) Bool)

(assert (=> b!2362365 (= e!1508771 (isEmptyExpr!4 lt!864707))))

(declare-fun b!2362366 () Bool)

(declare-fun isConcat!4 (Regex!6917) Bool)

(assert (=> b!2362366 (= e!1508772 (isConcat!4 lt!864707))))

(assert (=> d!694223 e!1508767))

(declare-fun res!1002588 () Bool)

(assert (=> d!694223 (=> (not res!1002588) (not e!1508767))))

(assert (=> d!694223 (= res!1002588 (validRegex!2647 lt!864707))))

(assert (=> d!694223 (= lt!864707 e!1508770)))

(declare-fun c!375449 () Bool)

(assert (=> d!694223 (= c!375449 e!1508768)))

(declare-fun res!1002587 () Bool)

(assert (=> d!694223 (=> (not res!1002587) (not e!1508768))))

(assert (=> d!694223 (= res!1002587 ((_ is Cons!27974) l!9164))))

(assert (=> d!694223 (forall!5551 l!9164 lambda!86934)))

(assert (=> d!694223 (= (generalisedConcat!18 l!9164) lt!864707)))

(assert (= (and d!694223 res!1002587) b!2362363))

(assert (= (and d!694223 c!375449) b!2362364))

(assert (= (and d!694223 (not c!375449)) b!2362361))

(assert (= (and b!2362361 c!375448) b!2362358))

(assert (= (and b!2362361 (not c!375448)) b!2362359))

(assert (= (and d!694223 res!1002588) b!2362360))

(assert (= (and b!2362360 c!375451) b!2362365))

(assert (= (and b!2362360 (not c!375451)) b!2362362))

(assert (= (and b!2362362 c!375450) b!2362357))

(assert (= (and b!2362362 (not c!375450)) b!2362366))

(declare-fun m!2774367 () Bool)

(assert (=> b!2362366 m!2774367))

(declare-fun m!2774369 () Bool)

(assert (=> b!2362357 m!2774369))

(declare-fun m!2774371 () Bool)

(assert (=> b!2362362 m!2774371))

(assert (=> b!2362362 m!2774371))

(declare-fun m!2774373 () Bool)

(assert (=> b!2362362 m!2774373))

(declare-fun m!2774375 () Bool)

(assert (=> b!2362358 m!2774375))

(declare-fun m!2774377 () Bool)

(assert (=> b!2362363 m!2774377))

(declare-fun m!2774379 () Bool)

(assert (=> b!2362365 m!2774379))

(declare-fun m!2774381 () Bool)

(assert (=> d!694223 m!2774381))

(declare-fun m!2774383 () Bool)

(assert (=> d!694223 m!2774383))

(declare-fun m!2774385 () Bool)

(assert (=> b!2362360 m!2774385))

(assert (=> b!2362315 d!694223))

(declare-fun b!2362439 () Bool)

(declare-fun e!1508814 () Bool)

(declare-fun nullable!1981 (Regex!6917) Bool)

(assert (=> b!2362439 (= e!1508814 (nullable!1981 r!13927))))

(declare-fun b!2362440 () Bool)

(declare-fun e!1508813 () Bool)

(declare-fun lt!864713 () Bool)

(assert (=> b!2362440 (= e!1508813 (not lt!864713))))

(declare-fun b!2362441 () Bool)

(declare-fun res!1002634 () Bool)

(declare-fun e!1508809 () Bool)

(assert (=> b!2362441 (=> res!1002634 e!1508809)))

(declare-fun isEmpty!15888 (List!28073) Bool)

(declare-fun tail!3352 (List!28073) List!28073)

(assert (=> b!2362441 (= res!1002634 (not (isEmpty!15888 (tail!3352 s!9460))))))

(declare-fun b!2362442 () Bool)

(declare-fun head!5083 (List!28073) C!13992)

(assert (=> b!2362442 (= e!1508809 (not (= (head!5083 s!9460) (c!375439 r!13927))))))

(declare-fun b!2362443 () Bool)

(declare-fun e!1508812 () Bool)

(assert (=> b!2362443 (= e!1508812 e!1508813)))

(declare-fun c!375467 () Bool)

(assert (=> b!2362443 (= c!375467 ((_ is EmptyLang!6917) r!13927))))

(declare-fun b!2362444 () Bool)

(declare-fun e!1508810 () Bool)

(assert (=> b!2362444 (= e!1508810 (= (head!5083 s!9460) (c!375439 r!13927)))))

(declare-fun b!2362445 () Bool)

(declare-fun res!1002635 () Bool)

(assert (=> b!2362445 (=> (not res!1002635) (not e!1508810))))

(assert (=> b!2362445 (= res!1002635 (isEmpty!15888 (tail!3352 s!9460)))))

(declare-fun b!2362446 () Bool)

(declare-fun res!1002633 () Bool)

(declare-fun e!1508808 () Bool)

(assert (=> b!2362446 (=> res!1002633 e!1508808)))

(assert (=> b!2362446 (= res!1002633 e!1508810)))

(declare-fun res!1002629 () Bool)

(assert (=> b!2362446 (=> (not res!1002629) (not e!1508810))))

(assert (=> b!2362446 (= res!1002629 lt!864713)))

(declare-fun b!2362447 () Bool)

(declare-fun call!143688 () Bool)

(assert (=> b!2362447 (= e!1508812 (= lt!864713 call!143688))))

(declare-fun d!694229 () Bool)

(assert (=> d!694229 e!1508812))

(declare-fun c!375469 () Bool)

(assert (=> d!694229 (= c!375469 ((_ is EmptyExpr!6917) r!13927))))

(assert (=> d!694229 (= lt!864713 e!1508814)))

(declare-fun c!375468 () Bool)

(assert (=> d!694229 (= c!375468 (isEmpty!15888 s!9460))))

(assert (=> d!694229 (validRegex!2647 r!13927)))

(assert (=> d!694229 (= (matchR!3034 r!13927 s!9460) lt!864713)))

(declare-fun b!2362448 () Bool)

(declare-fun res!1002630 () Bool)

(assert (=> b!2362448 (=> res!1002630 e!1508808)))

(assert (=> b!2362448 (= res!1002630 (not ((_ is ElementMatch!6917) r!13927)))))

(assert (=> b!2362448 (= e!1508813 e!1508808)))

(declare-fun b!2362449 () Bool)

(declare-fun e!1508811 () Bool)

(assert (=> b!2362449 (= e!1508808 e!1508811)))

(declare-fun res!1002632 () Bool)

(assert (=> b!2362449 (=> (not res!1002632) (not e!1508811))))

(assert (=> b!2362449 (= res!1002632 (not lt!864713))))

(declare-fun b!2362450 () Bool)

(declare-fun res!1002636 () Bool)

(assert (=> b!2362450 (=> (not res!1002636) (not e!1508810))))

(assert (=> b!2362450 (= res!1002636 (not call!143688))))

(declare-fun b!2362451 () Bool)

(declare-fun derivativeStep!1640 (Regex!6917 C!13992) Regex!6917)

(assert (=> b!2362451 (= e!1508814 (matchR!3034 (derivativeStep!1640 r!13927 (head!5083 s!9460)) (tail!3352 s!9460)))))

(declare-fun bm!143683 () Bool)

(assert (=> bm!143683 (= call!143688 (isEmpty!15888 s!9460))))

(declare-fun b!2362452 () Bool)

(assert (=> b!2362452 (= e!1508811 e!1508809)))

(declare-fun res!1002631 () Bool)

(assert (=> b!2362452 (=> res!1002631 e!1508809)))

(assert (=> b!2362452 (= res!1002631 call!143688)))

(assert (= (and d!694229 c!375468) b!2362439))

(assert (= (and d!694229 (not c!375468)) b!2362451))

(assert (= (and d!694229 c!375469) b!2362447))

(assert (= (and d!694229 (not c!375469)) b!2362443))

(assert (= (and b!2362443 c!375467) b!2362440))

(assert (= (and b!2362443 (not c!375467)) b!2362448))

(assert (= (and b!2362448 (not res!1002630)) b!2362446))

(assert (= (and b!2362446 res!1002629) b!2362450))

(assert (= (and b!2362450 res!1002636) b!2362445))

(assert (= (and b!2362445 res!1002635) b!2362444))

(assert (= (and b!2362446 (not res!1002633)) b!2362449))

(assert (= (and b!2362449 res!1002632) b!2362452))

(assert (= (and b!2362452 (not res!1002631)) b!2362441))

(assert (= (and b!2362441 (not res!1002634)) b!2362442))

(assert (= (or b!2362447 b!2362450 b!2362452) bm!143683))

(declare-fun m!2774401 () Bool)

(assert (=> b!2362439 m!2774401))

(declare-fun m!2774403 () Bool)

(assert (=> b!2362445 m!2774403))

(assert (=> b!2362445 m!2774403))

(declare-fun m!2774405 () Bool)

(assert (=> b!2362445 m!2774405))

(declare-fun m!2774407 () Bool)

(assert (=> bm!143683 m!2774407))

(assert (=> d!694229 m!2774407))

(assert (=> d!694229 m!2774353))

(declare-fun m!2774409 () Bool)

(assert (=> b!2362444 m!2774409))

(assert (=> b!2362451 m!2774409))

(assert (=> b!2362451 m!2774409))

(declare-fun m!2774411 () Bool)

(assert (=> b!2362451 m!2774411))

(assert (=> b!2362451 m!2774403))

(assert (=> b!2362451 m!2774411))

(assert (=> b!2362451 m!2774403))

(declare-fun m!2774413 () Bool)

(assert (=> b!2362451 m!2774413))

(assert (=> b!2362441 m!2774403))

(assert (=> b!2362441 m!2774403))

(assert (=> b!2362441 m!2774405))

(assert (=> b!2362442 m!2774409))

(assert (=> b!2362316 d!694229))

(declare-fun bs!460583 () Bool)

(declare-fun b!2362536 () Bool)

(assert (= bs!460583 (and b!2362536 b!2362317)))

(declare-fun lambda!86945 () Int)

(assert (=> bs!460583 (not (= lambda!86945 lambda!86930))))

(assert (=> bs!460583 (not (= lambda!86945 lambda!86931))))

(assert (=> b!2362536 true))

(assert (=> b!2362536 true))

(declare-fun bs!460584 () Bool)

(declare-fun b!2362532 () Bool)

(assert (= bs!460584 (and b!2362532 b!2362317)))

(declare-fun lambda!86946 () Int)

(assert (=> bs!460584 (not (= lambda!86946 lambda!86930))))

(assert (=> bs!460584 (= lambda!86946 lambda!86931)))

(declare-fun bs!460585 () Bool)

(assert (= bs!460585 (and b!2362532 b!2362536)))

(assert (=> bs!460585 (not (= lambda!86946 lambda!86945))))

(assert (=> b!2362532 true))

(assert (=> b!2362532 true))

(declare-fun b!2362526 () Bool)

(declare-fun c!375493 () Bool)

(assert (=> b!2362526 (= c!375493 ((_ is Union!6917) r!13927))))

(declare-fun e!1508862 () Bool)

(declare-fun e!1508859 () Bool)

(assert (=> b!2362526 (= e!1508862 e!1508859)))

(declare-fun d!694233 () Bool)

(declare-fun c!375492 () Bool)

(assert (=> d!694233 (= c!375492 ((_ is EmptyExpr!6917) r!13927))))

(declare-fun e!1508863 () Bool)

(assert (=> d!694233 (= (matchRSpec!766 r!13927 s!9460) e!1508863)))

(declare-fun b!2362527 () Bool)

(assert (=> b!2362527 (= e!1508862 (= s!9460 (Cons!27975 (c!375439 r!13927) Nil!27975)))))

(declare-fun c!375491 () Bool)

(declare-fun bm!143694 () Bool)

(declare-fun call!143700 () Bool)

(assert (=> bm!143694 (= call!143700 (Exists!979 (ite c!375491 lambda!86945 lambda!86946)))))

(declare-fun b!2362528 () Bool)

(declare-fun call!143699 () Bool)

(assert (=> b!2362528 (= e!1508863 call!143699)))

(declare-fun b!2362529 () Bool)

(declare-fun e!1508858 () Bool)

(assert (=> b!2362529 (= e!1508859 e!1508858)))

(declare-fun res!1002674 () Bool)

(assert (=> b!2362529 (= res!1002674 (matchRSpec!766 (regOne!14347 r!13927) s!9460))))

(assert (=> b!2362529 (=> res!1002674 e!1508858)))

(declare-fun b!2362530 () Bool)

(declare-fun c!375490 () Bool)

(assert (=> b!2362530 (= c!375490 ((_ is ElementMatch!6917) r!13927))))

(declare-fun e!1508864 () Bool)

(assert (=> b!2362530 (= e!1508864 e!1508862)))

(declare-fun bm!143695 () Bool)

(assert (=> bm!143695 (= call!143699 (isEmpty!15888 s!9460))))

(declare-fun b!2362531 () Bool)

(declare-fun e!1508860 () Bool)

(assert (=> b!2362531 (= e!1508859 e!1508860)))

(assert (=> b!2362531 (= c!375491 ((_ is Star!6917) r!13927))))

(assert (=> b!2362532 (= e!1508860 call!143700)))

(declare-fun b!2362533 () Bool)

(assert (=> b!2362533 (= e!1508863 e!1508864)))

(declare-fun res!1002672 () Bool)

(assert (=> b!2362533 (= res!1002672 (not ((_ is EmptyLang!6917) r!13927)))))

(assert (=> b!2362533 (=> (not res!1002672) (not e!1508864))))

(declare-fun b!2362534 () Bool)

(declare-fun res!1002673 () Bool)

(declare-fun e!1508861 () Bool)

(assert (=> b!2362534 (=> res!1002673 e!1508861)))

(assert (=> b!2362534 (= res!1002673 call!143699)))

(assert (=> b!2362534 (= e!1508860 e!1508861)))

(declare-fun b!2362535 () Bool)

(assert (=> b!2362535 (= e!1508858 (matchRSpec!766 (regTwo!14347 r!13927) s!9460))))

(assert (=> b!2362536 (= e!1508861 call!143700)))

(assert (= (and d!694233 c!375492) b!2362528))

(assert (= (and d!694233 (not c!375492)) b!2362533))

(assert (= (and b!2362533 res!1002672) b!2362530))

(assert (= (and b!2362530 c!375490) b!2362527))

(assert (= (and b!2362530 (not c!375490)) b!2362526))

(assert (= (and b!2362526 c!375493) b!2362529))

(assert (= (and b!2362526 (not c!375493)) b!2362531))

(assert (= (and b!2362529 (not res!1002674)) b!2362535))

(assert (= (and b!2362531 c!375491) b!2362534))

(assert (= (and b!2362531 (not c!375491)) b!2362532))

(assert (= (and b!2362534 (not res!1002673)) b!2362536))

(assert (= (or b!2362536 b!2362532) bm!143694))

(assert (= (or b!2362528 b!2362534) bm!143695))

(declare-fun m!2774423 () Bool)

(assert (=> bm!143694 m!2774423))

(declare-fun m!2774425 () Bool)

(assert (=> b!2362529 m!2774425))

(assert (=> bm!143695 m!2774407))

(declare-fun m!2774427 () Bool)

(assert (=> b!2362535 m!2774427))

(assert (=> b!2362316 d!694233))

(declare-fun d!694239 () Bool)

(assert (=> d!694239 (= (matchR!3034 r!13927 s!9460) (matchRSpec!766 r!13927 s!9460))))

(declare-fun lt!864721 () Unit!40869)

(declare-fun choose!13697 (Regex!6917 List!28073) Unit!40869)

(assert (=> d!694239 (= lt!864721 (choose!13697 r!13927 s!9460))))

(assert (=> d!694239 (validRegex!2647 r!13927)))

(assert (=> d!694239 (= (mainMatchTheorem!766 r!13927 s!9460) lt!864721)))

(declare-fun bs!460586 () Bool)

(assert (= bs!460586 d!694239))

(assert (=> bs!460586 m!2774337))

(assert (=> bs!460586 m!2774339))

(declare-fun m!2774429 () Bool)

(assert (=> bs!460586 m!2774429))

(assert (=> bs!460586 m!2774353))

(assert (=> b!2362316 d!694239))

(declare-fun d!694241 () Bool)

(declare-fun isEmpty!15891 (Option!5460) Bool)

(assert (=> d!694241 (= (isDefined!4288 (findConcatSeparation!568 (regOne!14346 r!13927) (regTwo!14346 r!13927) Nil!27975 s!9460 s!9460)) (not (isEmpty!15891 (findConcatSeparation!568 (regOne!14346 r!13927) (regTwo!14346 r!13927) Nil!27975 s!9460 s!9460))))))

(declare-fun bs!460587 () Bool)

(assert (= bs!460587 d!694241))

(assert (=> bs!460587 m!2774345))

(declare-fun m!2774431 () Bool)

(assert (=> bs!460587 m!2774431))

(assert (=> b!2362317 d!694241))

(declare-fun d!694243 () Bool)

(declare-fun choose!13698 (Int) Bool)

(assert (=> d!694243 (= (Exists!979 lambda!86931) (choose!13698 lambda!86931))))

(declare-fun bs!460588 () Bool)

(assert (= bs!460588 d!694243))

(declare-fun m!2774433 () Bool)

(assert (=> bs!460588 m!2774433))

(assert (=> b!2362317 d!694243))

(declare-fun bs!460591 () Bool)

(declare-fun d!694245 () Bool)

(assert (= bs!460591 (and d!694245 b!2362317)))

(declare-fun lambda!86953 () Int)

(assert (=> bs!460591 (= lambda!86953 lambda!86930)))

(assert (=> bs!460591 (not (= lambda!86953 lambda!86931))))

(declare-fun bs!460592 () Bool)

(assert (= bs!460592 (and d!694245 b!2362536)))

(assert (=> bs!460592 (not (= lambda!86953 lambda!86945))))

(declare-fun bs!460593 () Bool)

(assert (= bs!460593 (and d!694245 b!2362532)))

(assert (=> bs!460593 (not (= lambda!86953 lambda!86946))))

(assert (=> d!694245 true))

(assert (=> d!694245 true))

(assert (=> d!694245 true))

(assert (=> d!694245 (= (isDefined!4288 (findConcatSeparation!568 (regOne!14346 r!13927) (regTwo!14346 r!13927) Nil!27975 s!9460 s!9460)) (Exists!979 lambda!86953))))

(declare-fun lt!864727 () Unit!40869)

(declare-fun choose!13699 (Regex!6917 Regex!6917 List!28073) Unit!40869)

(assert (=> d!694245 (= lt!864727 (choose!13699 (regOne!14346 r!13927) (regTwo!14346 r!13927) s!9460))))

(assert (=> d!694245 (validRegex!2647 (regOne!14346 r!13927))))

(assert (=> d!694245 (= (lemmaFindConcatSeparationEquivalentToExists!568 (regOne!14346 r!13927) (regTwo!14346 r!13927) s!9460) lt!864727)))

(declare-fun bs!460594 () Bool)

(assert (= bs!460594 d!694245))

(declare-fun m!2774457 () Bool)

(assert (=> bs!460594 m!2774457))

(declare-fun m!2774459 () Bool)

(assert (=> bs!460594 m!2774459))

(assert (=> bs!460594 m!2774345))

(assert (=> bs!460594 m!2774345))

(assert (=> bs!460594 m!2774347))

(declare-fun m!2774461 () Bool)

(assert (=> bs!460594 m!2774461))

(assert (=> b!2362317 d!694245))

(declare-fun d!694251 () Bool)

(assert (=> d!694251 (= (Exists!979 lambda!86930) (choose!13698 lambda!86930))))

(declare-fun bs!460595 () Bool)

(assert (= bs!460595 d!694251))

(declare-fun m!2774463 () Bool)

(assert (=> bs!460595 m!2774463))

(assert (=> b!2362317 d!694251))

(declare-fun b!2362611 () Bool)

(declare-fun e!1508909 () Bool)

(assert (=> b!2362611 (= e!1508909 (matchR!3034 (regTwo!14346 r!13927) s!9460))))

(declare-fun b!2362612 () Bool)

(declare-fun e!1508907 () Bool)

(declare-fun lt!864742 () Option!5460)

(declare-fun ++!6884 (List!28073 List!28073) List!28073)

(declare-fun get!8488 (Option!5460) tuple2!27698)

(assert (=> b!2362612 (= e!1508907 (= (++!6884 (_1!16390 (get!8488 lt!864742)) (_2!16390 (get!8488 lt!864742))) s!9460))))

(declare-fun b!2362613 () Bool)

(declare-fun e!1508910 () Option!5460)

(assert (=> b!2362613 (= e!1508910 None!5459)))

(declare-fun b!2362614 () Bool)

(declare-fun lt!864743 () Unit!40869)

(declare-fun lt!864741 () Unit!40869)

(assert (=> b!2362614 (= lt!864743 lt!864741)))

(assert (=> b!2362614 (= (++!6884 (++!6884 Nil!27975 (Cons!27975 (h!33376 s!9460) Nil!27975)) (t!208050 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!531 (List!28073 C!13992 List!28073 List!28073) Unit!40869)

(assert (=> b!2362614 (= lt!864741 (lemmaMoveElementToOtherListKeepsConcatEq!531 Nil!27975 (h!33376 s!9460) (t!208050 s!9460) s!9460))))

(assert (=> b!2362614 (= e!1508910 (findConcatSeparation!568 (regOne!14346 r!13927) (regTwo!14346 r!13927) (++!6884 Nil!27975 (Cons!27975 (h!33376 s!9460) Nil!27975)) (t!208050 s!9460) s!9460))))

(declare-fun d!694253 () Bool)

(declare-fun e!1508911 () Bool)

(assert (=> d!694253 e!1508911))

(declare-fun res!1002713 () Bool)

(assert (=> d!694253 (=> res!1002713 e!1508911)))

(assert (=> d!694253 (= res!1002713 e!1508907)))

(declare-fun res!1002712 () Bool)

(assert (=> d!694253 (=> (not res!1002712) (not e!1508907))))

(assert (=> d!694253 (= res!1002712 (isDefined!4288 lt!864742))))

(declare-fun e!1508908 () Option!5460)

(assert (=> d!694253 (= lt!864742 e!1508908)))

(declare-fun c!375514 () Bool)

(assert (=> d!694253 (= c!375514 e!1508909)))

(declare-fun res!1002710 () Bool)

(assert (=> d!694253 (=> (not res!1002710) (not e!1508909))))

(assert (=> d!694253 (= res!1002710 (matchR!3034 (regOne!14346 r!13927) Nil!27975))))

(assert (=> d!694253 (validRegex!2647 (regOne!14346 r!13927))))

(assert (=> d!694253 (= (findConcatSeparation!568 (regOne!14346 r!13927) (regTwo!14346 r!13927) Nil!27975 s!9460 s!9460) lt!864742)))

(declare-fun b!2362615 () Bool)

(declare-fun res!1002711 () Bool)

(assert (=> b!2362615 (=> (not res!1002711) (not e!1508907))))

(assert (=> b!2362615 (= res!1002711 (matchR!3034 (regTwo!14346 r!13927) (_2!16390 (get!8488 lt!864742))))))

(declare-fun b!2362616 () Bool)

(declare-fun res!1002709 () Bool)

(assert (=> b!2362616 (=> (not res!1002709) (not e!1508907))))

(assert (=> b!2362616 (= res!1002709 (matchR!3034 (regOne!14346 r!13927) (_1!16390 (get!8488 lt!864742))))))

(declare-fun b!2362617 () Bool)

(assert (=> b!2362617 (= e!1508908 e!1508910)))

(declare-fun c!375515 () Bool)

(assert (=> b!2362617 (= c!375515 ((_ is Nil!27975) s!9460))))

(declare-fun b!2362618 () Bool)

(assert (=> b!2362618 (= e!1508911 (not (isDefined!4288 lt!864742)))))

(declare-fun b!2362619 () Bool)

(assert (=> b!2362619 (= e!1508908 (Some!5459 (tuple2!27699 Nil!27975 s!9460)))))

(assert (= (and d!694253 res!1002710) b!2362611))

(assert (= (and d!694253 c!375514) b!2362619))

(assert (= (and d!694253 (not c!375514)) b!2362617))

(assert (= (and b!2362617 c!375515) b!2362613))

(assert (= (and b!2362617 (not c!375515)) b!2362614))

(assert (= (and d!694253 res!1002712) b!2362616))

(assert (= (and b!2362616 res!1002709) b!2362615))

(assert (= (and b!2362615 res!1002711) b!2362612))

(assert (= (and d!694253 (not res!1002713)) b!2362618))

(declare-fun m!2774471 () Bool)

(assert (=> b!2362616 m!2774471))

(declare-fun m!2774473 () Bool)

(assert (=> b!2362616 m!2774473))

(declare-fun m!2774475 () Bool)

(assert (=> d!694253 m!2774475))

(declare-fun m!2774477 () Bool)

(assert (=> d!694253 m!2774477))

(assert (=> d!694253 m!2774461))

(declare-fun m!2774479 () Bool)

(assert (=> b!2362614 m!2774479))

(assert (=> b!2362614 m!2774479))

(declare-fun m!2774481 () Bool)

(assert (=> b!2362614 m!2774481))

(declare-fun m!2774483 () Bool)

(assert (=> b!2362614 m!2774483))

(assert (=> b!2362614 m!2774479))

(declare-fun m!2774485 () Bool)

(assert (=> b!2362614 m!2774485))

(declare-fun m!2774487 () Bool)

(assert (=> b!2362611 m!2774487))

(assert (=> b!2362618 m!2774475))

(assert (=> b!2362612 m!2774471))

(declare-fun m!2774489 () Bool)

(assert (=> b!2362612 m!2774489))

(assert (=> b!2362615 m!2774471))

(declare-fun m!2774491 () Bool)

(assert (=> b!2362615 m!2774491))

(assert (=> b!2362317 d!694253))

(declare-fun bm!143708 () Bool)

(declare-fun call!143714 () Bool)

(declare-fun call!143713 () Bool)

(assert (=> bm!143708 (= call!143714 call!143713)))

(declare-fun b!2362665 () Bool)

(declare-fun e!1508948 () Bool)

(declare-fun e!1508949 () Bool)

(assert (=> b!2362665 (= e!1508948 e!1508949)))

(declare-fun c!375526 () Bool)

(assert (=> b!2362665 (= c!375526 ((_ is Star!6917) r!13927))))

(declare-fun c!375527 () Bool)

(declare-fun bm!143709 () Bool)

(assert (=> bm!143709 (= call!143713 (validRegex!2647 (ite c!375526 (reg!7246 r!13927) (ite c!375527 (regTwo!14347 r!13927) (regOne!14346 r!13927)))))))

(declare-fun bm!143710 () Bool)

(declare-fun call!143715 () Bool)

(assert (=> bm!143710 (= call!143715 (validRegex!2647 (ite c!375527 (regOne!14347 r!13927) (regTwo!14346 r!13927))))))

(declare-fun b!2362667 () Bool)

(declare-fun e!1508945 () Bool)

(assert (=> b!2362667 (= e!1508949 e!1508945)))

(assert (=> b!2362667 (= c!375527 ((_ is Union!6917) r!13927))))

(declare-fun b!2362668 () Bool)

(declare-fun e!1508946 () Bool)

(assert (=> b!2362668 (= e!1508946 call!143714)))

(declare-fun b!2362669 () Bool)

(declare-fun e!1508950 () Bool)

(assert (=> b!2362669 (= e!1508949 e!1508950)))

(declare-fun res!1002742 () Bool)

(assert (=> b!2362669 (= res!1002742 (not (nullable!1981 (reg!7246 r!13927))))))

(assert (=> b!2362669 (=> (not res!1002742) (not e!1508950))))

(declare-fun b!2362670 () Bool)

(assert (=> b!2362670 (= e!1508950 call!143713)))

(declare-fun b!2362671 () Bool)

(declare-fun e!1508947 () Bool)

(assert (=> b!2362671 (= e!1508947 call!143715)))

(declare-fun d!694257 () Bool)

(declare-fun res!1002740 () Bool)

(assert (=> d!694257 (=> res!1002740 e!1508948)))

(assert (=> d!694257 (= res!1002740 ((_ is ElementMatch!6917) r!13927))))

(assert (=> d!694257 (= (validRegex!2647 r!13927) e!1508948)))

(declare-fun b!2362666 () Bool)

(declare-fun res!1002743 () Bool)

(declare-fun e!1508951 () Bool)

(assert (=> b!2362666 (=> res!1002743 e!1508951)))

(assert (=> b!2362666 (= res!1002743 (not ((_ is Concat!11553) r!13927)))))

(assert (=> b!2362666 (= e!1508945 e!1508951)))

(declare-fun b!2362672 () Bool)

(assert (=> b!2362672 (= e!1508951 e!1508947)))

(declare-fun res!1002741 () Bool)

(assert (=> b!2362672 (=> (not res!1002741) (not e!1508947))))

(assert (=> b!2362672 (= res!1002741 call!143714)))

(declare-fun b!2362673 () Bool)

(declare-fun res!1002739 () Bool)

(assert (=> b!2362673 (=> (not res!1002739) (not e!1508946))))

(assert (=> b!2362673 (= res!1002739 call!143715)))

(assert (=> b!2362673 (= e!1508945 e!1508946)))

(assert (= (and d!694257 (not res!1002740)) b!2362665))

(assert (= (and b!2362665 c!375526) b!2362669))

(assert (= (and b!2362665 (not c!375526)) b!2362667))

(assert (= (and b!2362669 res!1002742) b!2362670))

(assert (= (and b!2362667 c!375527) b!2362673))

(assert (= (and b!2362667 (not c!375527)) b!2362666))

(assert (= (and b!2362673 res!1002739) b!2362668))

(assert (= (and b!2362666 (not res!1002743)) b!2362672))

(assert (= (and b!2362672 res!1002741) b!2362671))

(assert (= (or b!2362673 b!2362671) bm!143710))

(assert (= (or b!2362668 b!2362672) bm!143708))

(assert (= (or b!2362670 bm!143708) bm!143709))

(declare-fun m!2774519 () Bool)

(assert (=> bm!143709 m!2774519))

(declare-fun m!2774521 () Bool)

(assert (=> bm!143710 m!2774521))

(declare-fun m!2774523 () Bool)

(assert (=> b!2362669 m!2774523))

(assert (=> b!2362317 d!694257))

(declare-fun bs!460602 () Bool)

(declare-fun d!694265 () Bool)

(assert (= bs!460602 (and d!694265 b!2362317)))

(declare-fun lambda!86963 () Int)

(assert (=> bs!460602 (= lambda!86963 lambda!86930)))

(declare-fun bs!460603 () Bool)

(assert (= bs!460603 (and d!694265 b!2362532)))

(assert (=> bs!460603 (not (= lambda!86963 lambda!86946))))

(declare-fun bs!460604 () Bool)

(assert (= bs!460604 (and d!694265 b!2362536)))

(assert (=> bs!460604 (not (= lambda!86963 lambda!86945))))

(assert (=> bs!460602 (not (= lambda!86963 lambda!86931))))

(declare-fun bs!460605 () Bool)

(assert (= bs!460605 (and d!694265 d!694245)))

(assert (=> bs!460605 (= lambda!86963 lambda!86953)))

(assert (=> d!694265 true))

(assert (=> d!694265 true))

(assert (=> d!694265 true))

(declare-fun lambda!86965 () Int)

(assert (=> bs!460602 (not (= lambda!86965 lambda!86930))))

(assert (=> bs!460603 (= lambda!86965 lambda!86946)))

(assert (=> bs!460604 (not (= lambda!86965 lambda!86945))))

(assert (=> bs!460602 (= lambda!86965 lambda!86931)))

(declare-fun bs!460606 () Bool)

(assert (= bs!460606 d!694265))

(assert (=> bs!460606 (not (= lambda!86965 lambda!86963))))

(assert (=> bs!460605 (not (= lambda!86965 lambda!86953))))

(assert (=> d!694265 true))

(assert (=> d!694265 true))

(assert (=> d!694265 true))

(assert (=> d!694265 (= (Exists!979 lambda!86963) (Exists!979 lambda!86965))))

(declare-fun lt!864751 () Unit!40869)

(declare-fun choose!13702 (Regex!6917 Regex!6917 List!28073) Unit!40869)

(assert (=> d!694265 (= lt!864751 (choose!13702 (regOne!14346 r!13927) (regTwo!14346 r!13927) s!9460))))

(assert (=> d!694265 (validRegex!2647 (regOne!14346 r!13927))))

(assert (=> d!694265 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!318 (regOne!14346 r!13927) (regTwo!14346 r!13927) s!9460) lt!864751)))

(declare-fun m!2774531 () Bool)

(assert (=> bs!460606 m!2774531))

(declare-fun m!2774533 () Bool)

(assert (=> bs!460606 m!2774533))

(declare-fun m!2774535 () Bool)

(assert (=> bs!460606 m!2774535))

(assert (=> bs!460606 m!2774461))

(assert (=> b!2362317 d!694265))

(declare-fun b!2362703 () Bool)

(declare-fun e!1508969 () Bool)

(declare-fun tp!755556 () Bool)

(assert (=> b!2362703 (= e!1508969 (and tp_is_empty!11247 tp!755556))))

(assert (=> b!2362319 (= tp!755549 e!1508969)))

(assert (= (and b!2362319 ((_ is Cons!27975) (t!208050 s!9460))) b!2362703))

(declare-fun b!2362714 () Bool)

(declare-fun e!1508972 () Bool)

(assert (=> b!2362714 (= e!1508972 tp_is_empty!11247)))

(declare-fun b!2362717 () Bool)

(declare-fun tp!755567 () Bool)

(declare-fun tp!755571 () Bool)

(assert (=> b!2362717 (= e!1508972 (and tp!755567 tp!755571))))

(declare-fun b!2362716 () Bool)

(declare-fun tp!755569 () Bool)

(assert (=> b!2362716 (= e!1508972 tp!755569)))

(assert (=> b!2362314 (= tp!755552 e!1508972)))

(declare-fun b!2362715 () Bool)

(declare-fun tp!755570 () Bool)

(declare-fun tp!755568 () Bool)

(assert (=> b!2362715 (= e!1508972 (and tp!755570 tp!755568))))

(assert (= (and b!2362314 ((_ is ElementMatch!6917) (regOne!14347 r!13927))) b!2362714))

(assert (= (and b!2362314 ((_ is Concat!11553) (regOne!14347 r!13927))) b!2362715))

(assert (= (and b!2362314 ((_ is Star!6917) (regOne!14347 r!13927))) b!2362716))

(assert (= (and b!2362314 ((_ is Union!6917) (regOne!14347 r!13927))) b!2362717))

(declare-fun b!2362718 () Bool)

(declare-fun e!1508973 () Bool)

(assert (=> b!2362718 (= e!1508973 tp_is_empty!11247)))

(declare-fun b!2362721 () Bool)

(declare-fun tp!755572 () Bool)

(declare-fun tp!755576 () Bool)

(assert (=> b!2362721 (= e!1508973 (and tp!755572 tp!755576))))

(declare-fun b!2362720 () Bool)

(declare-fun tp!755574 () Bool)

(assert (=> b!2362720 (= e!1508973 tp!755574)))

(assert (=> b!2362314 (= tp!755551 e!1508973)))

(declare-fun b!2362719 () Bool)

(declare-fun tp!755575 () Bool)

(declare-fun tp!755573 () Bool)

(assert (=> b!2362719 (= e!1508973 (and tp!755575 tp!755573))))

(assert (= (and b!2362314 ((_ is ElementMatch!6917) (regTwo!14347 r!13927))) b!2362718))

(assert (= (and b!2362314 ((_ is Concat!11553) (regTwo!14347 r!13927))) b!2362719))

(assert (= (and b!2362314 ((_ is Star!6917) (regTwo!14347 r!13927))) b!2362720))

(assert (= (and b!2362314 ((_ is Union!6917) (regTwo!14347 r!13927))) b!2362721))

(declare-fun b!2362722 () Bool)

(declare-fun e!1508974 () Bool)

(assert (=> b!2362722 (= e!1508974 tp_is_empty!11247)))

(declare-fun b!2362725 () Bool)

(declare-fun tp!755577 () Bool)

(declare-fun tp!755581 () Bool)

(assert (=> b!2362725 (= e!1508974 (and tp!755577 tp!755581))))

(declare-fun b!2362724 () Bool)

(declare-fun tp!755579 () Bool)

(assert (=> b!2362724 (= e!1508974 tp!755579)))

(assert (=> b!2362320 (= tp!755547 e!1508974)))

(declare-fun b!2362723 () Bool)

(declare-fun tp!755580 () Bool)

(declare-fun tp!755578 () Bool)

(assert (=> b!2362723 (= e!1508974 (and tp!755580 tp!755578))))

(assert (= (and b!2362320 ((_ is ElementMatch!6917) (reg!7246 r!13927))) b!2362722))

(assert (= (and b!2362320 ((_ is Concat!11553) (reg!7246 r!13927))) b!2362723))

(assert (= (and b!2362320 ((_ is Star!6917) (reg!7246 r!13927))) b!2362724))

(assert (= (and b!2362320 ((_ is Union!6917) (reg!7246 r!13927))) b!2362725))

(declare-fun b!2362732 () Bool)

(declare-fun e!1508977 () Bool)

(assert (=> b!2362732 (= e!1508977 tp_is_empty!11247)))

(declare-fun b!2362735 () Bool)

(declare-fun tp!755582 () Bool)

(declare-fun tp!755586 () Bool)

(assert (=> b!2362735 (= e!1508977 (and tp!755582 tp!755586))))

(declare-fun b!2362734 () Bool)

(declare-fun tp!755584 () Bool)

(assert (=> b!2362734 (= e!1508977 tp!755584)))

(assert (=> b!2362318 (= tp!755550 e!1508977)))

(declare-fun b!2362733 () Bool)

(declare-fun tp!755585 () Bool)

(declare-fun tp!755583 () Bool)

(assert (=> b!2362733 (= e!1508977 (and tp!755585 tp!755583))))

(assert (= (and b!2362318 ((_ is ElementMatch!6917) (regOne!14346 r!13927))) b!2362732))

(assert (= (and b!2362318 ((_ is Concat!11553) (regOne!14346 r!13927))) b!2362733))

(assert (= (and b!2362318 ((_ is Star!6917) (regOne!14346 r!13927))) b!2362734))

(assert (= (and b!2362318 ((_ is Union!6917) (regOne!14346 r!13927))) b!2362735))

(declare-fun b!2362738 () Bool)

(declare-fun e!1508978 () Bool)

(assert (=> b!2362738 (= e!1508978 tp_is_empty!11247)))

(declare-fun b!2362741 () Bool)

(declare-fun tp!755591 () Bool)

(declare-fun tp!755596 () Bool)

(assert (=> b!2362741 (= e!1508978 (and tp!755591 tp!755596))))

(declare-fun b!2362740 () Bool)

(declare-fun tp!755593 () Bool)

(assert (=> b!2362740 (= e!1508978 tp!755593)))

(assert (=> b!2362318 (= tp!755546 e!1508978)))

(declare-fun b!2362739 () Bool)

(declare-fun tp!755594 () Bool)

(declare-fun tp!755592 () Bool)

(assert (=> b!2362739 (= e!1508978 (and tp!755594 tp!755592))))

(assert (= (and b!2362318 ((_ is ElementMatch!6917) (regTwo!14346 r!13927))) b!2362738))

(assert (= (and b!2362318 ((_ is Concat!11553) (regTwo!14346 r!13927))) b!2362739))

(assert (= (and b!2362318 ((_ is Star!6917) (regTwo!14346 r!13927))) b!2362740))

(assert (= (and b!2362318 ((_ is Union!6917) (regTwo!14346 r!13927))) b!2362741))

(declare-fun b!2362744 () Bool)

(declare-fun e!1508979 () Bool)

(assert (=> b!2362744 (= e!1508979 tp_is_empty!11247)))

(declare-fun b!2362747 () Bool)

(declare-fun tp!755602 () Bool)

(declare-fun tp!755606 () Bool)

(assert (=> b!2362747 (= e!1508979 (and tp!755602 tp!755606))))

(declare-fun b!2362746 () Bool)

(declare-fun tp!755604 () Bool)

(assert (=> b!2362746 (= e!1508979 tp!755604)))

(assert (=> b!2362313 (= tp!755548 e!1508979)))

(declare-fun b!2362745 () Bool)

(declare-fun tp!755605 () Bool)

(declare-fun tp!755603 () Bool)

(assert (=> b!2362745 (= e!1508979 (and tp!755605 tp!755603))))

(assert (= (and b!2362313 ((_ is ElementMatch!6917) (h!33375 l!9164))) b!2362744))

(assert (= (and b!2362313 ((_ is Concat!11553) (h!33375 l!9164))) b!2362745))

(assert (= (and b!2362313 ((_ is Star!6917) (h!33375 l!9164))) b!2362746))

(assert (= (and b!2362313 ((_ is Union!6917) (h!33375 l!9164))) b!2362747))

(declare-fun b!2362752 () Bool)

(declare-fun e!1508982 () Bool)

(declare-fun tp!755611 () Bool)

(declare-fun tp!755612 () Bool)

(assert (=> b!2362752 (= e!1508982 (and tp!755611 tp!755612))))

(assert (=> b!2362313 (= tp!755553 e!1508982)))

(assert (= (and b!2362313 ((_ is Cons!27974) (t!208049 l!9164))) b!2362752))

(declare-fun b_lambda!73807 () Bool)

(assert (= b_lambda!73803 (or start!231870 b_lambda!73807)))

(declare-fun bs!460612 () Bool)

(declare-fun d!694269 () Bool)

(assert (= bs!460612 (and d!694269 start!231870)))

(assert (=> bs!460612 (= (dynLambda!12052 lambda!86929 (h!33375 l!9164)) (validRegex!2647 (h!33375 l!9164)))))

(declare-fun m!2774543 () Bool)

(assert (=> bs!460612 m!2774543))

(assert (=> b!2362329 d!694269))

(check-sat (not b!2362618) (not b!2362734) tp_is_empty!11247 (not bs!460612) (not bm!143695) (not b!2362330) (not b!2362357) (not b!2362719) (not b!2362365) (not b!2362741) (not b!2362747) (not bm!143709) (not b!2362614) (not b!2362366) (not b!2362716) (not b!2362735) (not b!2362612) (not b!2362752) (not bm!143694) (not b!2362358) (not b!2362733) (not b!2362723) (not b!2362611) (not d!694229) (not d!694253) (not b!2362739) (not b!2362746) (not b!2362451) (not d!694239) (not b!2362740) (not b!2362703) (not b!2362615) (not b!2362442) (not b!2362360) (not d!694223) (not b!2362535) (not bm!143683) (not b!2362745) (not b!2362715) (not d!694251) (not bm!143710) (not b!2362444) (not b!2362724) (not b!2362362) (not b!2362445) (not b!2362725) (not b!2362363) (not d!694245) (not b!2362439) (not b!2362669) (not d!694243) (not b!2362441) (not d!694265) (not b!2362717) (not b!2362720) (not b_lambda!73807) (not b!2362616) (not b!2362529) (not d!694241) (not b!2362721))
(check-sat)
