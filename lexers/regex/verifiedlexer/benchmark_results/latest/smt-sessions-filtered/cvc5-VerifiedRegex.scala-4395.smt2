; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233690 () Bool)

(assert start!233690)

(declare-fun b!2381562 () Bool)

(assert (=> b!2381562 true))

(assert (=> b!2381562 true))

(declare-fun lambda!88736 () Int)

(declare-fun lambda!88735 () Int)

(assert (=> b!2381562 (not (= lambda!88736 lambda!88735))))

(assert (=> b!2381562 true))

(assert (=> b!2381562 true))

(declare-fun c!378625 () Bool)

(declare-datatypes ((C!14122 0))(
  ( (C!14123 (val!8303 Int)) )
))
(declare-datatypes ((Regex!6982 0))(
  ( (ElementMatch!6982 (c!378626 C!14122)) (Concat!11618 (regOne!14476 Regex!6982) (regTwo!14476 Regex!6982)) (EmptyExpr!6982) (Star!6982 (reg!7311 Regex!6982)) (EmptyLang!6982) (Union!6982 (regOne!14477 Regex!6982) (regTwo!14477 Regex!6982)) )
))
(declare-fun lt!868354 () Regex!6982)

(declare-fun call!144707 () Bool)

(declare-datatypes ((List!28202 0))(
  ( (Nil!28104) (Cons!28104 (h!33505 C!14122) (t!208179 List!28202)) )
))
(declare-fun call!144710 () List!28202)

(declare-fun bm!144700 () Bool)

(declare-fun lt!868342 () Regex!6982)

(declare-fun s!9460 () List!28202)

(declare-fun matchR!3099 (Regex!6982 List!28202) Bool)

(assert (=> bm!144700 (= call!144707 (matchR!3099 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982)) (ite c!378625 s!9460 call!144710)))))

(declare-fun b!2381543 () Bool)

(declare-fun e!1518960 () Bool)

(declare-fun e!1518957 () Bool)

(assert (=> b!2381543 (= e!1518960 e!1518957)))

(declare-fun res!1011427 () Bool)

(assert (=> b!2381543 (=> res!1011427 e!1518957)))

(declare-fun lt!868340 () Regex!6982)

(assert (=> b!2381543 (= res!1011427 (not (= lt!868340 EmptyExpr!6982)))))

(declare-datatypes ((List!28203 0))(
  ( (Nil!28105) (Cons!28105 (h!33506 Regex!6982) (t!208180 List!28203)) )
))
(declare-fun lt!868351 () List!28203)

(declare-fun generalisedConcat!83 (List!28203) Regex!6982)

(assert (=> b!2381543 (= lt!868340 (generalisedConcat!83 lt!868351))))

(declare-fun bm!144701 () Bool)

(declare-datatypes ((tuple2!27828 0))(
  ( (tuple2!27829 (_1!16455 List!28202) (_2!16455 List!28202)) )
))
(declare-datatypes ((Option!5525 0))(
  ( (None!5524) (Some!5524 (v!30932 tuple2!27828)) )
))
(declare-fun call!144709 () Option!5525)

(declare-fun findConcatSeparation!633 (Regex!6982 Regex!6982 List!28202 List!28202 List!28202) Option!5525)

(assert (=> bm!144701 (= call!144709 (findConcatSeparation!633 lt!868342 EmptyExpr!6982 Nil!28104 s!9460 s!9460))))

(declare-fun b!2381544 () Bool)

(declare-datatypes ((Unit!41027 0))(
  ( (Unit!41028) )
))
(declare-fun e!1518955 () Unit!41027)

(declare-fun Unit!41029 () Unit!41027)

(assert (=> b!2381544 (= e!1518955 Unit!41029)))

(declare-fun lt!868343 () Option!5525)

(assert (=> b!2381544 (= lt!868343 call!144709)))

(declare-fun lt!868346 () Bool)

(declare-fun call!144708 () Bool)

(assert (=> b!2381544 (= lt!868346 call!144708)))

(declare-fun c!378624 () Bool)

(assert (=> b!2381544 (= c!378624 lt!868346)))

(declare-fun lt!868353 () Unit!41027)

(declare-fun e!1518962 () Unit!41027)

(assert (=> b!2381544 (= lt!868353 e!1518962)))

(declare-fun res!1011428 () Bool)

(assert (=> b!2381544 (= res!1011428 (not lt!868346))))

(declare-fun e!1518965 () Bool)

(assert (=> b!2381544 (=> (not res!1011428) (not e!1518965))))

(assert (=> b!2381544 e!1518965))

(declare-fun bm!144702 () Bool)

(declare-fun call!144705 () Bool)

(declare-fun call!144706 () Option!5525)

(declare-fun isDefined!4353 (Option!5525) Bool)

(assert (=> bm!144702 (= call!144705 (isDefined!4353 call!144706))))

(declare-fun b!2381545 () Bool)

(declare-fun e!1518968 () Bool)

(declare-fun tp_is_empty!11377 () Bool)

(declare-fun tp!760173 () Bool)

(assert (=> b!2381545 (= e!1518968 (and tp_is_empty!11377 tp!760173))))

(declare-fun b!2381546 () Bool)

(declare-fun e!1518958 () Bool)

(assert (=> b!2381546 (= e!1518958 false)))

(declare-fun b!2381547 () Bool)

(declare-fun e!1518961 () Bool)

(declare-fun tp!760172 () Bool)

(declare-fun tp!760167 () Bool)

(assert (=> b!2381547 (= e!1518961 (and tp!760172 tp!760167))))

(declare-fun b!2381548 () Bool)

(declare-fun e!1518967 () Bool)

(assert (=> b!2381548 (= e!1518967 e!1518960)))

(declare-fun res!1011423 () Bool)

(assert (=> b!2381548 (=> res!1011423 e!1518960)))

(declare-fun isEmpty!16056 (List!28203) Bool)

(assert (=> b!2381548 (= res!1011423 (not (isEmpty!16056 lt!868351)))))

(declare-fun l!9164 () List!28203)

(declare-fun tail!3467 (List!28203) List!28203)

(assert (=> b!2381548 (= lt!868351 (tail!3467 l!9164))))

(declare-fun res!1011429 () Bool)

(declare-fun e!1518963 () Bool)

(assert (=> start!233690 (=> (not res!1011429) (not e!1518963))))

(declare-fun lambda!88734 () Int)

(declare-fun forall!5616 (List!28203 Int) Bool)

(assert (=> start!233690 (= res!1011429 (forall!5616 l!9164 lambda!88734))))

(assert (=> start!233690 e!1518963))

(declare-fun e!1518966 () Bool)

(assert (=> start!233690 e!1518966))

(assert (=> start!233690 e!1518961))

(assert (=> start!233690 e!1518968))

(declare-fun bm!144703 () Bool)

(declare-fun lt!868341 () tuple2!27828)

(declare-fun ++!6937 (List!28202 List!28202) List!28202)

(assert (=> bm!144703 (= call!144710 (++!6937 (ite c!378625 s!9460 (_1!16455 lt!868341)) (ite c!378625 Nil!28104 (_2!16455 lt!868341))))))

(declare-fun bm!144704 () Bool)

(assert (=> bm!144704 (= call!144708 (isDefined!4353 (ite c!378625 call!144709 lt!868343)))))

(declare-fun b!2381549 () Bool)

(declare-fun Unit!41030 () Unit!41027)

(assert (=> b!2381549 (= e!1518962 Unit!41030)))

(declare-fun b!2381550 () Bool)

(assert (=> b!2381550 e!1518958))

(declare-fun res!1011426 () Bool)

(assert (=> b!2381550 (=> (not res!1011426) (not e!1518958))))

(assert (=> b!2381550 (= res!1011426 call!144707)))

(declare-fun lt!868355 () Unit!41027)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!13 (Regex!6982 Regex!6982 List!28202 List!28202 List!28202) Unit!41027)

(assert (=> b!2381550 (= lt!868355 (lemmaFindSeparationIsDefinedThenConcatMatches!13 lt!868342 EmptyExpr!6982 (_1!16455 lt!868341) (_2!16455 lt!868341) s!9460))))

(declare-fun get!8572 (Option!5525) tuple2!27828)

(assert (=> b!2381550 (= lt!868341 (get!8572 lt!868343))))

(declare-fun Unit!41031 () Unit!41027)

(assert (=> b!2381550 (= e!1518962 Unit!41031)))

(declare-fun b!2381551 () Bool)

(declare-fun Unit!41032 () Unit!41027)

(assert (=> b!2381551 (= e!1518955 Unit!41032)))

(declare-fun lt!868344 () Unit!41027)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!31 (Regex!6982 Regex!6982 List!28202 List!28202) Unit!41027)

(assert (=> b!2381551 (= lt!868344 (lemmaTwoRegexMatchThenConcatMatchesConcatString!31 lt!868342 EmptyExpr!6982 s!9460 Nil!28104))))

(assert (=> b!2381551 (= lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982))))

(declare-fun res!1011422 () Bool)

(assert (=> b!2381551 (= res!1011422 (matchR!3099 lt!868354 call!144710))))

(declare-fun e!1518959 () Bool)

(assert (=> b!2381551 (=> (not res!1011422) (not e!1518959))))

(assert (=> b!2381551 e!1518959))

(declare-fun lt!868339 () Unit!41027)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!13 (Regex!6982 Regex!6982 List!28202) Unit!41027)

(assert (=> b!2381551 (= lt!868339 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!13 lt!868342 EmptyExpr!6982 s!9460))))

(declare-fun res!1011421 () Bool)

(assert (=> b!2381551 (= res!1011421 call!144708)))

(declare-fun e!1518956 () Bool)

(assert (=> b!2381551 (=> (not res!1011421) (not e!1518956))))

(assert (=> b!2381551 e!1518956))

(declare-fun b!2381552 () Bool)

(declare-fun res!1011425 () Bool)

(assert (=> b!2381552 (=> res!1011425 e!1518967)))

(assert (=> b!2381552 (= res!1011425 (isEmpty!16056 l!9164))))

(declare-fun b!2381553 () Bool)

(declare-fun tp!760170 () Bool)

(declare-fun tp!760169 () Bool)

(assert (=> b!2381553 (= e!1518966 (and tp!760170 tp!760169))))

(declare-fun bm!144705 () Bool)

(assert (=> bm!144705 (= call!144706 (findConcatSeparation!633 lt!868342 lt!868340 Nil!28104 s!9460 s!9460))))

(declare-fun b!2381554 () Bool)

(assert (=> b!2381554 (= e!1518961 tp_is_empty!11377)))

(declare-fun b!2381555 () Bool)

(assert (=> b!2381555 (= e!1518965 (not call!144705))))

(declare-fun b!2381556 () Bool)

(assert (=> b!2381556 (= e!1518956 call!144705)))

(declare-fun b!2381557 () Bool)

(assert (=> b!2381557 (= e!1518959 call!144707)))

(declare-fun b!2381558 () Bool)

(declare-fun tp!760171 () Bool)

(declare-fun tp!760166 () Bool)

(assert (=> b!2381558 (= e!1518961 (and tp!760171 tp!760166))))

(declare-fun b!2381559 () Bool)

(declare-fun tp!760168 () Bool)

(assert (=> b!2381559 (= e!1518961 tp!760168)))

(declare-fun b!2381560 () Bool)

(declare-fun res!1011430 () Bool)

(assert (=> b!2381560 (=> (not res!1011430) (not e!1518963))))

(declare-fun r!13927 () Regex!6982)

(assert (=> b!2381560 (= res!1011430 (= r!13927 (generalisedConcat!83 l!9164)))))

(declare-fun b!2381561 () Bool)

(assert (=> b!2381561 (= e!1518957 (not (= l!9164 Nil!28105)))))

(declare-fun lt!868356 () Unit!41027)

(assert (=> b!2381561 (= lt!868356 e!1518955)))

(assert (=> b!2381561 (= c!378625 (matchR!3099 lt!868342 s!9460))))

(declare-fun head!5197 (List!28203) Regex!6982)

(assert (=> b!2381561 (= lt!868342 (head!5197 l!9164))))

(declare-fun e!1518964 () Bool)

(assert (=> b!2381562 (= e!1518964 e!1518967)))

(declare-fun res!1011424 () Bool)

(assert (=> b!2381562 (=> res!1011424 e!1518967)))

(declare-fun lt!868349 () Bool)

(declare-fun lt!868345 () Bool)

(assert (=> b!2381562 (= res!1011424 (not (= lt!868349 lt!868345)))))

(declare-fun Exists!1044 (Int) Bool)

(assert (=> b!2381562 (= (Exists!1044 lambda!88735) (Exists!1044 lambda!88736))))

(declare-fun lt!868350 () Unit!41027)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!383 (Regex!6982 Regex!6982 List!28202) Unit!41027)

(assert (=> b!2381562 (= lt!868350 (lemmaExistCutMatchRandMatchRSpecEquivalent!383 (regOne!14476 r!13927) (regTwo!14476 r!13927) s!9460))))

(assert (=> b!2381562 (= lt!868345 (Exists!1044 lambda!88735))))

(assert (=> b!2381562 (= lt!868345 (isDefined!4353 (findConcatSeparation!633 (regOne!14476 r!13927) (regTwo!14476 r!13927) Nil!28104 s!9460 s!9460)))))

(declare-fun lt!868347 () Unit!41027)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!633 (Regex!6982 Regex!6982 List!28202) Unit!41027)

(assert (=> b!2381562 (= lt!868347 (lemmaFindConcatSeparationEquivalentToExists!633 (regOne!14476 r!13927) (regTwo!14476 r!13927) s!9460))))

(declare-fun b!2381563 () Bool)

(assert (=> b!2381563 (= e!1518963 (not e!1518964))))

(declare-fun res!1011431 () Bool)

(assert (=> b!2381563 (=> res!1011431 e!1518964)))

(assert (=> b!2381563 (= res!1011431 (not (is-Concat!11618 r!13927)))))

(declare-fun lt!868352 () Bool)

(assert (=> b!2381563 (= lt!868352 lt!868349)))

(declare-fun matchRSpec!831 (Regex!6982 List!28202) Bool)

(assert (=> b!2381563 (= lt!868349 (matchRSpec!831 r!13927 s!9460))))

(assert (=> b!2381563 (= lt!868352 (matchR!3099 r!13927 s!9460))))

(declare-fun lt!868348 () Unit!41027)

(declare-fun mainMatchTheorem!831 (Regex!6982 List!28202) Unit!41027)

(assert (=> b!2381563 (= lt!868348 (mainMatchTheorem!831 r!13927 s!9460))))

(assert (= (and start!233690 res!1011429) b!2381560))

(assert (= (and b!2381560 res!1011430) b!2381563))

(assert (= (and b!2381563 (not res!1011431)) b!2381562))

(assert (= (and b!2381562 (not res!1011424)) b!2381552))

(assert (= (and b!2381552 (not res!1011425)) b!2381548))

(assert (= (and b!2381548 (not res!1011423)) b!2381543))

(assert (= (and b!2381543 (not res!1011427)) b!2381561))

(assert (= (and b!2381561 c!378625) b!2381551))

(assert (= (and b!2381561 (not c!378625)) b!2381544))

(assert (= (and b!2381551 res!1011422) b!2381557))

(assert (= (and b!2381551 res!1011421) b!2381556))

(assert (= (and b!2381544 c!378624) b!2381550))

(assert (= (and b!2381544 (not c!378624)) b!2381549))

(assert (= (and b!2381550 res!1011426) b!2381546))

(assert (= (and b!2381544 res!1011428) b!2381555))

(assert (= (or b!2381556 b!2381555) bm!144705))

(assert (= (or b!2381551 b!2381550) bm!144703))

(assert (= (or b!2381551 b!2381544) bm!144701))

(assert (= (or b!2381551 b!2381544) bm!144704))

(assert (= (or b!2381557 b!2381550) bm!144700))

(assert (= (or b!2381556 b!2381555) bm!144702))

(assert (= (and start!233690 (is-Cons!28105 l!9164)) b!2381553))

(assert (= (and start!233690 (is-ElementMatch!6982 r!13927)) b!2381554))

(assert (= (and start!233690 (is-Concat!11618 r!13927)) b!2381558))

(assert (= (and start!233690 (is-Star!6982 r!13927)) b!2381559))

(assert (= (and start!233690 (is-Union!6982 r!13927)) b!2381547))

(assert (= (and start!233690 (is-Cons!28104 s!9460)) b!2381545))

(declare-fun m!2785091 () Bool)

(assert (=> b!2381552 m!2785091))

(declare-fun m!2785093 () Bool)

(assert (=> bm!144703 m!2785093))

(declare-fun m!2785095 () Bool)

(assert (=> b!2381548 m!2785095))

(declare-fun m!2785097 () Bool)

(assert (=> b!2381548 m!2785097))

(declare-fun m!2785099 () Bool)

(assert (=> b!2381550 m!2785099))

(declare-fun m!2785101 () Bool)

(assert (=> b!2381550 m!2785101))

(declare-fun m!2785103 () Bool)

(assert (=> b!2381561 m!2785103))

(declare-fun m!2785105 () Bool)

(assert (=> b!2381561 m!2785105))

(declare-fun m!2785107 () Bool)

(assert (=> bm!144705 m!2785107))

(declare-fun m!2785109 () Bool)

(assert (=> bm!144701 m!2785109))

(declare-fun m!2785111 () Bool)

(assert (=> b!2381543 m!2785111))

(declare-fun m!2785113 () Bool)

(assert (=> b!2381563 m!2785113))

(declare-fun m!2785115 () Bool)

(assert (=> b!2381563 m!2785115))

(declare-fun m!2785117 () Bool)

(assert (=> b!2381563 m!2785117))

(declare-fun m!2785119 () Bool)

(assert (=> b!2381560 m!2785119))

(declare-fun m!2785121 () Bool)

(assert (=> start!233690 m!2785121))

(declare-fun m!2785123 () Bool)

(assert (=> b!2381562 m!2785123))

(declare-fun m!2785125 () Bool)

(assert (=> b!2381562 m!2785125))

(declare-fun m!2785127 () Bool)

(assert (=> b!2381562 m!2785127))

(declare-fun m!2785129 () Bool)

(assert (=> b!2381562 m!2785129))

(declare-fun m!2785131 () Bool)

(assert (=> b!2381562 m!2785131))

(assert (=> b!2381562 m!2785131))

(assert (=> b!2381562 m!2785125))

(declare-fun m!2785133 () Bool)

(assert (=> b!2381562 m!2785133))

(declare-fun m!2785135 () Bool)

(assert (=> bm!144704 m!2785135))

(declare-fun m!2785137 () Bool)

(assert (=> bm!144702 m!2785137))

(declare-fun m!2785139 () Bool)

(assert (=> bm!144700 m!2785139))

(declare-fun m!2785141 () Bool)

(assert (=> b!2381551 m!2785141))

(declare-fun m!2785143 () Bool)

(assert (=> b!2381551 m!2785143))

(declare-fun m!2785145 () Bool)

(assert (=> b!2381551 m!2785145))

(push 1)

(assert (not b!2381552))

(assert (not b!2381547))

(assert (not b!2381548))

(assert (not b!2381551))

(assert (not bm!144705))

(assert (not b!2381559))

(assert (not b!2381553))

(assert (not bm!144703))

(assert (not b!2381560))

(assert (not bm!144702))

(assert (not b!2381543))

(assert (not b!2381561))

(assert (not b!2381563))

(assert (not bm!144704))

(assert (not bm!144700))

(assert (not b!2381562))

(assert tp_is_empty!11377)

(assert (not b!2381550))

(assert (not b!2381558))

(assert (not b!2381545))

(assert (not bm!144701))

(assert (not start!233690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!696792 () Bool)

(declare-fun isEmpty!16058 (Option!5525) Bool)

(assert (=> d!696792 (= (isDefined!4353 (ite c!378625 call!144709 lt!868343)) (not (isEmpty!16058 (ite c!378625 call!144709 lt!868343))))))

(declare-fun bs!461913 () Bool)

(assert (= bs!461913 d!696792))

(declare-fun m!2785203 () Bool)

(assert (=> bs!461913 m!2785203))

(assert (=> bm!144704 d!696792))

(declare-fun b!2381675 () Bool)

(declare-fun e!1519037 () Bool)

(declare-fun lt!868413 () Bool)

(declare-fun call!144731 () Bool)

(assert (=> b!2381675 (= e!1519037 (= lt!868413 call!144731))))

(declare-fun b!2381676 () Bool)

(declare-fun e!1519033 () Bool)

(assert (=> b!2381676 (= e!1519033 (not lt!868413))))

(declare-fun b!2381677 () Bool)

(declare-fun res!1011499 () Bool)

(declare-fun e!1519035 () Bool)

(assert (=> b!2381677 (=> res!1011499 e!1519035)))

(assert (=> b!2381677 (= res!1011499 (not (is-ElementMatch!6982 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982)))))))

(assert (=> b!2381677 (= e!1519033 e!1519035)))

(declare-fun b!2381678 () Bool)

(declare-fun res!1011493 () Bool)

(declare-fun e!1519031 () Bool)

(assert (=> b!2381678 (=> (not res!1011493) (not e!1519031))))

(assert (=> b!2381678 (= res!1011493 (not call!144731))))

(declare-fun bm!144726 () Bool)

(declare-fun isEmpty!16059 (List!28202) Bool)

(assert (=> bm!144726 (= call!144731 (isEmpty!16059 (ite c!378625 s!9460 call!144710)))))

(declare-fun b!2381679 () Bool)

(declare-fun res!1011495 () Bool)

(assert (=> b!2381679 (=> res!1011495 e!1519035)))

(assert (=> b!2381679 (= res!1011495 e!1519031)))

(declare-fun res!1011498 () Bool)

(assert (=> b!2381679 (=> (not res!1011498) (not e!1519031))))

(assert (=> b!2381679 (= res!1011498 lt!868413)))

(declare-fun b!2381680 () Bool)

(declare-fun e!1519036 () Bool)

(declare-fun e!1519034 () Bool)

(assert (=> b!2381680 (= e!1519036 e!1519034)))

(declare-fun res!1011494 () Bool)

(assert (=> b!2381680 (=> res!1011494 e!1519034)))

(assert (=> b!2381680 (= res!1011494 call!144731)))

(declare-fun b!2381681 () Bool)

(declare-fun e!1519032 () Bool)

(declare-fun nullable!2032 (Regex!6982) Bool)

(assert (=> b!2381681 (= e!1519032 (nullable!2032 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982))))))

(declare-fun b!2381682 () Bool)

(declare-fun derivativeStep!1690 (Regex!6982 C!14122) Regex!6982)

(declare-fun head!5199 (List!28202) C!14122)

(declare-fun tail!3469 (List!28202) List!28202)

(assert (=> b!2381682 (= e!1519032 (matchR!3099 (derivativeStep!1690 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982)) (head!5199 (ite c!378625 s!9460 call!144710))) (tail!3469 (ite c!378625 s!9460 call!144710))))))

(declare-fun b!2381683 () Bool)

(declare-fun res!1011497 () Bool)

(assert (=> b!2381683 (=> (not res!1011497) (not e!1519031))))

(assert (=> b!2381683 (= res!1011497 (isEmpty!16059 (tail!3469 (ite c!378625 s!9460 call!144710))))))

(declare-fun d!696794 () Bool)

(assert (=> d!696794 e!1519037))

(declare-fun c!378641 () Bool)

(assert (=> d!696794 (= c!378641 (is-EmptyExpr!6982 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982))))))

(assert (=> d!696794 (= lt!868413 e!1519032)))

(declare-fun c!378640 () Bool)

(assert (=> d!696794 (= c!378640 (isEmpty!16059 (ite c!378625 s!9460 call!144710)))))

(declare-fun validRegex!2707 (Regex!6982) Bool)

(assert (=> d!696794 (validRegex!2707 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982)))))

(assert (=> d!696794 (= (matchR!3099 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982)) (ite c!378625 s!9460 call!144710)) lt!868413)))

(declare-fun b!2381684 () Bool)

(declare-fun res!1011500 () Bool)

(assert (=> b!2381684 (=> res!1011500 e!1519034)))

(assert (=> b!2381684 (= res!1011500 (not (isEmpty!16059 (tail!3469 (ite c!378625 s!9460 call!144710)))))))

(declare-fun b!2381685 () Bool)

(assert (=> b!2381685 (= e!1519035 e!1519036)))

(declare-fun res!1011496 () Bool)

(assert (=> b!2381685 (=> (not res!1011496) (not e!1519036))))

(assert (=> b!2381685 (= res!1011496 (not lt!868413))))

(declare-fun b!2381686 () Bool)

(assert (=> b!2381686 (= e!1519037 e!1519033)))

(declare-fun c!378642 () Bool)

(assert (=> b!2381686 (= c!378642 (is-EmptyLang!6982 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982))))))

(declare-fun b!2381687 () Bool)

(assert (=> b!2381687 (= e!1519034 (not (= (head!5199 (ite c!378625 s!9460 call!144710)) (c!378626 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982))))))))

(declare-fun b!2381688 () Bool)

(assert (=> b!2381688 (= e!1519031 (= (head!5199 (ite c!378625 s!9460 call!144710)) (c!378626 (ite c!378625 lt!868354 (Concat!11618 lt!868342 EmptyExpr!6982)))))))

(assert (= (and d!696794 c!378640) b!2381681))

(assert (= (and d!696794 (not c!378640)) b!2381682))

(assert (= (and d!696794 c!378641) b!2381675))

(assert (= (and d!696794 (not c!378641)) b!2381686))

(assert (= (and b!2381686 c!378642) b!2381676))

(assert (= (and b!2381686 (not c!378642)) b!2381677))

(assert (= (and b!2381677 (not res!1011499)) b!2381679))

(assert (= (and b!2381679 res!1011498) b!2381678))

(assert (= (and b!2381678 res!1011493) b!2381683))

(assert (= (and b!2381683 res!1011497) b!2381688))

(assert (= (and b!2381679 (not res!1011495)) b!2381685))

(assert (= (and b!2381685 res!1011496) b!2381680))

(assert (= (and b!2381680 (not res!1011494)) b!2381684))

(assert (= (and b!2381684 (not res!1011500)) b!2381687))

(assert (= (or b!2381675 b!2381680 b!2381678) bm!144726))

(declare-fun m!2785205 () Bool)

(assert (=> b!2381683 m!2785205))

(assert (=> b!2381683 m!2785205))

(declare-fun m!2785207 () Bool)

(assert (=> b!2381683 m!2785207))

(declare-fun m!2785209 () Bool)

(assert (=> b!2381682 m!2785209))

(assert (=> b!2381682 m!2785209))

(declare-fun m!2785211 () Bool)

(assert (=> b!2381682 m!2785211))

(assert (=> b!2381682 m!2785205))

(assert (=> b!2381682 m!2785211))

(assert (=> b!2381682 m!2785205))

(declare-fun m!2785213 () Bool)

(assert (=> b!2381682 m!2785213))

(assert (=> b!2381688 m!2785209))

(declare-fun m!2785215 () Bool)

(assert (=> d!696794 m!2785215))

(declare-fun m!2785217 () Bool)

(assert (=> d!696794 m!2785217))

(assert (=> bm!144726 m!2785215))

(assert (=> b!2381684 m!2785205))

(assert (=> b!2381684 m!2785205))

(assert (=> b!2381684 m!2785207))

(declare-fun m!2785219 () Bool)

(assert (=> b!2381681 m!2785219))

(assert (=> b!2381687 m!2785209))

(assert (=> bm!144700 d!696794))

(declare-fun bs!461914 () Bool)

(declare-fun d!696796 () Bool)

(assert (= bs!461914 (and d!696796 start!233690)))

(declare-fun lambda!88750 () Int)

(assert (=> bs!461914 (= lambda!88750 lambda!88734)))

(declare-fun b!2381709 () Bool)

(declare-fun e!1519052 () Regex!6982)

(assert (=> b!2381709 (= e!1519052 (h!33506 lt!868351))))

(declare-fun e!1519054 () Bool)

(assert (=> d!696796 e!1519054))

(declare-fun res!1011505 () Bool)

(assert (=> d!696796 (=> (not res!1011505) (not e!1519054))))

(declare-fun lt!868416 () Regex!6982)

(assert (=> d!696796 (= res!1011505 (validRegex!2707 lt!868416))))

(assert (=> d!696796 (= lt!868416 e!1519052)))

(declare-fun c!378654 () Bool)

(declare-fun e!1519050 () Bool)

(assert (=> d!696796 (= c!378654 e!1519050)))

(declare-fun res!1011506 () Bool)

(assert (=> d!696796 (=> (not res!1011506) (not e!1519050))))

(assert (=> d!696796 (= res!1011506 (is-Cons!28105 lt!868351))))

(assert (=> d!696796 (forall!5616 lt!868351 lambda!88750)))

(assert (=> d!696796 (= (generalisedConcat!83 lt!868351) lt!868416)))

(declare-fun b!2381710 () Bool)

(declare-fun e!1519055 () Bool)

(declare-fun isConcat!52 (Regex!6982) Bool)

(assert (=> b!2381710 (= e!1519055 (isConcat!52 lt!868416))))

(declare-fun b!2381711 () Bool)

(declare-fun e!1519051 () Regex!6982)

(assert (=> b!2381711 (= e!1519051 (Concat!11618 (h!33506 lt!868351) (generalisedConcat!83 (t!208180 lt!868351))))))

(declare-fun b!2381712 () Bool)

(assert (=> b!2381712 (= e!1519055 (= lt!868416 (head!5197 lt!868351)))))

(declare-fun b!2381713 () Bool)

(declare-fun e!1519053 () Bool)

(declare-fun isEmptyExpr!52 (Regex!6982) Bool)

(assert (=> b!2381713 (= e!1519053 (isEmptyExpr!52 lt!868416))))

(declare-fun b!2381714 () Bool)

(assert (=> b!2381714 (= e!1519051 EmptyExpr!6982)))

(declare-fun b!2381715 () Bool)

(assert (=> b!2381715 (= e!1519050 (isEmpty!16056 (t!208180 lt!868351)))))

(declare-fun b!2381716 () Bool)

(assert (=> b!2381716 (= e!1519053 e!1519055)))

(declare-fun c!378653 () Bool)

(assert (=> b!2381716 (= c!378653 (isEmpty!16056 (tail!3467 lt!868351)))))

(declare-fun b!2381717 () Bool)

(assert (=> b!2381717 (= e!1519052 e!1519051)))

(declare-fun c!378651 () Bool)

(assert (=> b!2381717 (= c!378651 (is-Cons!28105 lt!868351))))

(declare-fun b!2381718 () Bool)

(assert (=> b!2381718 (= e!1519054 e!1519053)))

(declare-fun c!378652 () Bool)

(assert (=> b!2381718 (= c!378652 (isEmpty!16056 lt!868351))))

(assert (= (and d!696796 res!1011506) b!2381715))

(assert (= (and d!696796 c!378654) b!2381709))

(assert (= (and d!696796 (not c!378654)) b!2381717))

(assert (= (and b!2381717 c!378651) b!2381711))

(assert (= (and b!2381717 (not c!378651)) b!2381714))

(assert (= (and d!696796 res!1011505) b!2381718))

(assert (= (and b!2381718 c!378652) b!2381713))

(assert (= (and b!2381718 (not c!378652)) b!2381716))

(assert (= (and b!2381716 c!378653) b!2381712))

(assert (= (and b!2381716 (not c!378653)) b!2381710))

(assert (=> b!2381718 m!2785095))

(declare-fun m!2785221 () Bool)

(assert (=> d!696796 m!2785221))

(declare-fun m!2785223 () Bool)

(assert (=> d!696796 m!2785223))

(declare-fun m!2785225 () Bool)

(assert (=> b!2381713 m!2785225))

(declare-fun m!2785227 () Bool)

(assert (=> b!2381716 m!2785227))

(assert (=> b!2381716 m!2785227))

(declare-fun m!2785229 () Bool)

(assert (=> b!2381716 m!2785229))

(declare-fun m!2785231 () Bool)

(assert (=> b!2381712 m!2785231))

(declare-fun m!2785233 () Bool)

(assert (=> b!2381715 m!2785233))

(declare-fun m!2785235 () Bool)

(assert (=> b!2381710 m!2785235))

(declare-fun m!2785237 () Bool)

(assert (=> b!2381711 m!2785237))

(assert (=> b!2381543 d!696796))

(declare-fun bs!461915 () Bool)

(declare-fun d!696802 () Bool)

(assert (= bs!461915 (and d!696802 start!233690)))

(declare-fun lambda!88751 () Int)

(assert (=> bs!461915 (= lambda!88751 lambda!88734)))

(declare-fun bs!461916 () Bool)

(assert (= bs!461916 (and d!696802 d!696796)))

(assert (=> bs!461916 (= lambda!88751 lambda!88750)))

(declare-fun b!2381719 () Bool)

(declare-fun e!1519058 () Regex!6982)

(assert (=> b!2381719 (= e!1519058 (h!33506 l!9164))))

(declare-fun e!1519060 () Bool)

(assert (=> d!696802 e!1519060))

(declare-fun res!1011507 () Bool)

(assert (=> d!696802 (=> (not res!1011507) (not e!1519060))))

(declare-fun lt!868417 () Regex!6982)

(assert (=> d!696802 (= res!1011507 (validRegex!2707 lt!868417))))

(assert (=> d!696802 (= lt!868417 e!1519058)))

(declare-fun c!378658 () Bool)

(declare-fun e!1519056 () Bool)

(assert (=> d!696802 (= c!378658 e!1519056)))

(declare-fun res!1011508 () Bool)

(assert (=> d!696802 (=> (not res!1011508) (not e!1519056))))

(assert (=> d!696802 (= res!1011508 (is-Cons!28105 l!9164))))

(assert (=> d!696802 (forall!5616 l!9164 lambda!88751)))

(assert (=> d!696802 (= (generalisedConcat!83 l!9164) lt!868417)))

(declare-fun b!2381720 () Bool)

(declare-fun e!1519061 () Bool)

(assert (=> b!2381720 (= e!1519061 (isConcat!52 lt!868417))))

(declare-fun b!2381721 () Bool)

(declare-fun e!1519057 () Regex!6982)

(assert (=> b!2381721 (= e!1519057 (Concat!11618 (h!33506 l!9164) (generalisedConcat!83 (t!208180 l!9164))))))

(declare-fun b!2381722 () Bool)

(assert (=> b!2381722 (= e!1519061 (= lt!868417 (head!5197 l!9164)))))

(declare-fun b!2381723 () Bool)

(declare-fun e!1519059 () Bool)

(assert (=> b!2381723 (= e!1519059 (isEmptyExpr!52 lt!868417))))

(declare-fun b!2381724 () Bool)

(assert (=> b!2381724 (= e!1519057 EmptyExpr!6982)))

(declare-fun b!2381725 () Bool)

(assert (=> b!2381725 (= e!1519056 (isEmpty!16056 (t!208180 l!9164)))))

(declare-fun b!2381726 () Bool)

(assert (=> b!2381726 (= e!1519059 e!1519061)))

(declare-fun c!378657 () Bool)

(assert (=> b!2381726 (= c!378657 (isEmpty!16056 (tail!3467 l!9164)))))

(declare-fun b!2381727 () Bool)

(assert (=> b!2381727 (= e!1519058 e!1519057)))

(declare-fun c!378655 () Bool)

(assert (=> b!2381727 (= c!378655 (is-Cons!28105 l!9164))))

(declare-fun b!2381728 () Bool)

(assert (=> b!2381728 (= e!1519060 e!1519059)))

(declare-fun c!378656 () Bool)

(assert (=> b!2381728 (= c!378656 (isEmpty!16056 l!9164))))

(assert (= (and d!696802 res!1011508) b!2381725))

(assert (= (and d!696802 c!378658) b!2381719))

(assert (= (and d!696802 (not c!378658)) b!2381727))

(assert (= (and b!2381727 c!378655) b!2381721))

(assert (= (and b!2381727 (not c!378655)) b!2381724))

(assert (= (and d!696802 res!1011507) b!2381728))

(assert (= (and b!2381728 c!378656) b!2381723))

(assert (= (and b!2381728 (not c!378656)) b!2381726))

(assert (= (and b!2381726 c!378657) b!2381722))

(assert (= (and b!2381726 (not c!378657)) b!2381720))

(assert (=> b!2381728 m!2785091))

(declare-fun m!2785239 () Bool)

(assert (=> d!696802 m!2785239))

(declare-fun m!2785241 () Bool)

(assert (=> d!696802 m!2785241))

(declare-fun m!2785243 () Bool)

(assert (=> b!2381723 m!2785243))

(assert (=> b!2381726 m!2785097))

(assert (=> b!2381726 m!2785097))

(declare-fun m!2785245 () Bool)

(assert (=> b!2381726 m!2785245))

(assert (=> b!2381722 m!2785105))

(declare-fun m!2785247 () Bool)

(assert (=> b!2381725 m!2785247))

(declare-fun m!2785249 () Bool)

(assert (=> b!2381720 m!2785249))

(declare-fun m!2785251 () Bool)

(assert (=> b!2381721 m!2785251))

(assert (=> b!2381560 d!696802))

(declare-fun d!696804 () Bool)

(assert (=> d!696804 (matchR!3099 (Concat!11618 lt!868342 EmptyExpr!6982) (++!6937 (_1!16455 lt!868341) (_2!16455 lt!868341)))))

(declare-fun lt!868424 () Unit!41027)

(declare-fun choose!13933 (Regex!6982 Regex!6982 List!28202 List!28202 List!28202) Unit!41027)

(assert (=> d!696804 (= lt!868424 (choose!13933 lt!868342 EmptyExpr!6982 (_1!16455 lt!868341) (_2!16455 lt!868341) s!9460))))

(assert (=> d!696804 (validRegex!2707 lt!868342)))

(assert (=> d!696804 (= (lemmaFindSeparationIsDefinedThenConcatMatches!13 lt!868342 EmptyExpr!6982 (_1!16455 lt!868341) (_2!16455 lt!868341) s!9460) lt!868424)))

(declare-fun bs!461917 () Bool)

(assert (= bs!461917 d!696804))

(declare-fun m!2785281 () Bool)

(assert (=> bs!461917 m!2785281))

(assert (=> bs!461917 m!2785281))

(declare-fun m!2785285 () Bool)

(assert (=> bs!461917 m!2785285))

(declare-fun m!2785287 () Bool)

(assert (=> bs!461917 m!2785287))

(declare-fun m!2785289 () Bool)

(assert (=> bs!461917 m!2785289))

(assert (=> b!2381550 d!696804))

(declare-fun d!696808 () Bool)

(assert (=> d!696808 (= (get!8572 lt!868343) (v!30932 lt!868343))))

(assert (=> b!2381550 d!696808))

(declare-fun d!696812 () Bool)

(assert (=> d!696812 (matchR!3099 (Concat!11618 lt!868342 EmptyExpr!6982) (++!6937 s!9460 Nil!28104))))

(declare-fun lt!868427 () Unit!41027)

(declare-fun choose!13934 (Regex!6982 Regex!6982 List!28202 List!28202) Unit!41027)

(assert (=> d!696812 (= lt!868427 (choose!13934 lt!868342 EmptyExpr!6982 s!9460 Nil!28104))))

(declare-fun e!1519096 () Bool)

(assert (=> d!696812 e!1519096))

(declare-fun res!1011547 () Bool)

(assert (=> d!696812 (=> (not res!1011547) (not e!1519096))))

(assert (=> d!696812 (= res!1011547 (validRegex!2707 lt!868342))))

(assert (=> d!696812 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!31 lt!868342 EmptyExpr!6982 s!9460 Nil!28104) lt!868427)))

(declare-fun b!2381791 () Bool)

(assert (=> b!2381791 (= e!1519096 (validRegex!2707 EmptyExpr!6982))))

(assert (= (and d!696812 res!1011547) b!2381791))

(declare-fun m!2785293 () Bool)

(assert (=> d!696812 m!2785293))

(assert (=> d!696812 m!2785293))

(declare-fun m!2785295 () Bool)

(assert (=> d!696812 m!2785295))

(declare-fun m!2785297 () Bool)

(assert (=> d!696812 m!2785297))

(assert (=> d!696812 m!2785289))

(declare-fun m!2785299 () Bool)

(assert (=> b!2381791 m!2785299))

(assert (=> b!2381551 d!696812))

(declare-fun b!2381792 () Bool)

(declare-fun e!1519103 () Bool)

(declare-fun lt!868428 () Bool)

(declare-fun call!144736 () Bool)

(assert (=> b!2381792 (= e!1519103 (= lt!868428 call!144736))))

(declare-fun b!2381793 () Bool)

(declare-fun e!1519099 () Bool)

(assert (=> b!2381793 (= e!1519099 (not lt!868428))))

(declare-fun b!2381794 () Bool)

(declare-fun res!1011554 () Bool)

(declare-fun e!1519101 () Bool)

(assert (=> b!2381794 (=> res!1011554 e!1519101)))

(assert (=> b!2381794 (= res!1011554 (not (is-ElementMatch!6982 lt!868354)))))

(assert (=> b!2381794 (= e!1519099 e!1519101)))

(declare-fun b!2381795 () Bool)

(declare-fun res!1011548 () Bool)

(declare-fun e!1519097 () Bool)

(assert (=> b!2381795 (=> (not res!1011548) (not e!1519097))))

(assert (=> b!2381795 (= res!1011548 (not call!144736))))

(declare-fun bm!144731 () Bool)

(assert (=> bm!144731 (= call!144736 (isEmpty!16059 call!144710))))

(declare-fun b!2381796 () Bool)

(declare-fun res!1011550 () Bool)

(assert (=> b!2381796 (=> res!1011550 e!1519101)))

(assert (=> b!2381796 (= res!1011550 e!1519097)))

(declare-fun res!1011553 () Bool)

(assert (=> b!2381796 (=> (not res!1011553) (not e!1519097))))

(assert (=> b!2381796 (= res!1011553 lt!868428)))

(declare-fun b!2381797 () Bool)

(declare-fun e!1519102 () Bool)

(declare-fun e!1519100 () Bool)

(assert (=> b!2381797 (= e!1519102 e!1519100)))

(declare-fun res!1011549 () Bool)

(assert (=> b!2381797 (=> res!1011549 e!1519100)))

(assert (=> b!2381797 (= res!1011549 call!144736)))

(declare-fun b!2381798 () Bool)

(declare-fun e!1519098 () Bool)

(assert (=> b!2381798 (= e!1519098 (nullable!2032 lt!868354))))

(declare-fun b!2381799 () Bool)

(assert (=> b!2381799 (= e!1519098 (matchR!3099 (derivativeStep!1690 lt!868354 (head!5199 call!144710)) (tail!3469 call!144710)))))

(declare-fun b!2381800 () Bool)

(declare-fun res!1011552 () Bool)

(assert (=> b!2381800 (=> (not res!1011552) (not e!1519097))))

(assert (=> b!2381800 (= res!1011552 (isEmpty!16059 (tail!3469 call!144710)))))

(declare-fun d!696816 () Bool)

(assert (=> d!696816 e!1519103))

(declare-fun c!378672 () Bool)

(assert (=> d!696816 (= c!378672 (is-EmptyExpr!6982 lt!868354))))

(assert (=> d!696816 (= lt!868428 e!1519098)))

(declare-fun c!378671 () Bool)

(assert (=> d!696816 (= c!378671 (isEmpty!16059 call!144710))))

(assert (=> d!696816 (validRegex!2707 lt!868354)))

(assert (=> d!696816 (= (matchR!3099 lt!868354 call!144710) lt!868428)))

(declare-fun b!2381801 () Bool)

(declare-fun res!1011555 () Bool)

(assert (=> b!2381801 (=> res!1011555 e!1519100)))

(assert (=> b!2381801 (= res!1011555 (not (isEmpty!16059 (tail!3469 call!144710))))))

(declare-fun b!2381802 () Bool)

(assert (=> b!2381802 (= e!1519101 e!1519102)))

(declare-fun res!1011551 () Bool)

(assert (=> b!2381802 (=> (not res!1011551) (not e!1519102))))

(assert (=> b!2381802 (= res!1011551 (not lt!868428))))

(declare-fun b!2381803 () Bool)

(assert (=> b!2381803 (= e!1519103 e!1519099)))

(declare-fun c!378673 () Bool)

(assert (=> b!2381803 (= c!378673 (is-EmptyLang!6982 lt!868354))))

(declare-fun b!2381804 () Bool)

(assert (=> b!2381804 (= e!1519100 (not (= (head!5199 call!144710) (c!378626 lt!868354))))))

(declare-fun b!2381805 () Bool)

(assert (=> b!2381805 (= e!1519097 (= (head!5199 call!144710) (c!378626 lt!868354)))))

(assert (= (and d!696816 c!378671) b!2381798))

(assert (= (and d!696816 (not c!378671)) b!2381799))

(assert (= (and d!696816 c!378672) b!2381792))

(assert (= (and d!696816 (not c!378672)) b!2381803))

(assert (= (and b!2381803 c!378673) b!2381793))

(assert (= (and b!2381803 (not c!378673)) b!2381794))

(assert (= (and b!2381794 (not res!1011554)) b!2381796))

(assert (= (and b!2381796 res!1011553) b!2381795))

(assert (= (and b!2381795 res!1011548) b!2381800))

(assert (= (and b!2381800 res!1011552) b!2381805))

(assert (= (and b!2381796 (not res!1011550)) b!2381802))

(assert (= (and b!2381802 res!1011551) b!2381797))

(assert (= (and b!2381797 (not res!1011549)) b!2381801))

(assert (= (and b!2381801 (not res!1011555)) b!2381804))

(assert (= (or b!2381792 b!2381797 b!2381795) bm!144731))

(declare-fun m!2785301 () Bool)

(assert (=> b!2381800 m!2785301))

(assert (=> b!2381800 m!2785301))

(declare-fun m!2785303 () Bool)

(assert (=> b!2381800 m!2785303))

(declare-fun m!2785305 () Bool)

(assert (=> b!2381799 m!2785305))

(assert (=> b!2381799 m!2785305))

(declare-fun m!2785307 () Bool)

(assert (=> b!2381799 m!2785307))

(assert (=> b!2381799 m!2785301))

(assert (=> b!2381799 m!2785307))

(assert (=> b!2381799 m!2785301))

(declare-fun m!2785309 () Bool)

(assert (=> b!2381799 m!2785309))

(assert (=> b!2381805 m!2785305))

(declare-fun m!2785311 () Bool)

(assert (=> d!696816 m!2785311))

(declare-fun m!2785313 () Bool)

(assert (=> d!696816 m!2785313))

(assert (=> bm!144731 m!2785311))

(assert (=> b!2381801 m!2785301))

(assert (=> b!2381801 m!2785301))

(assert (=> b!2381801 m!2785303))

(declare-fun m!2785315 () Bool)

(assert (=> b!2381798 m!2785315))

(assert (=> b!2381804 m!2785305))

(assert (=> b!2381551 d!696816))

(declare-fun d!696818 () Bool)

(assert (=> d!696818 (isDefined!4353 (findConcatSeparation!633 lt!868342 EmptyExpr!6982 Nil!28104 s!9460 s!9460))))

(declare-fun lt!868431 () Unit!41027)

(declare-fun choose!13935 (Regex!6982 Regex!6982 List!28202) Unit!41027)

(assert (=> d!696818 (= lt!868431 (choose!13935 lt!868342 EmptyExpr!6982 s!9460))))

(assert (=> d!696818 (validRegex!2707 lt!868342)))

(assert (=> d!696818 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!13 lt!868342 EmptyExpr!6982 s!9460) lt!868431)))

(declare-fun bs!461918 () Bool)

(assert (= bs!461918 d!696818))

(assert (=> bs!461918 m!2785109))

(assert (=> bs!461918 m!2785109))

(declare-fun m!2785321 () Bool)

(assert (=> bs!461918 m!2785321))

(declare-fun m!2785323 () Bool)

(assert (=> bs!461918 m!2785323))

(assert (=> bs!461918 m!2785289))

(assert (=> b!2381551 d!696818))

(declare-fun d!696822 () Bool)

(declare-fun res!1011562 () Bool)

(declare-fun e!1519110 () Bool)

(assert (=> d!696822 (=> res!1011562 e!1519110)))

(assert (=> d!696822 (= res!1011562 (is-Nil!28105 l!9164))))

(assert (=> d!696822 (= (forall!5616 l!9164 lambda!88734) e!1519110)))

(declare-fun b!2381812 () Bool)

(declare-fun e!1519111 () Bool)

(assert (=> b!2381812 (= e!1519110 e!1519111)))

(declare-fun res!1011563 () Bool)

(assert (=> b!2381812 (=> (not res!1011563) (not e!1519111))))

(declare-fun dynLambda!12099 (Int Regex!6982) Bool)

(assert (=> b!2381812 (= res!1011563 (dynLambda!12099 lambda!88734 (h!33506 l!9164)))))

(declare-fun b!2381813 () Bool)

(assert (=> b!2381813 (= e!1519111 (forall!5616 (t!208180 l!9164) lambda!88734))))

(assert (= (and d!696822 (not res!1011562)) b!2381812))

(assert (= (and b!2381812 res!1011563) b!2381813))

(declare-fun b_lambda!74069 () Bool)

(assert (=> (not b_lambda!74069) (not b!2381812)))

(declare-fun m!2785325 () Bool)

(assert (=> b!2381812 m!2785325))

(declare-fun m!2785327 () Bool)

(assert (=> b!2381813 m!2785327))

(assert (=> start!233690 d!696822))

(declare-fun b!2381849 () Bool)

(declare-fun e!1519135 () Bool)

(declare-fun lt!868446 () Option!5525)

(assert (=> b!2381849 (= e!1519135 (not (isDefined!4353 lt!868446)))))

(declare-fun b!2381850 () Bool)

(declare-fun e!1519134 () Option!5525)

(assert (=> b!2381850 (= e!1519134 None!5524)))

(declare-fun b!2381851 () Bool)

(declare-fun e!1519133 () Bool)

(assert (=> b!2381851 (= e!1519133 (matchR!3099 EmptyExpr!6982 s!9460))))

(declare-fun b!2381853 () Bool)

(declare-fun lt!868444 () Unit!41027)

(declare-fun lt!868445 () Unit!41027)

(assert (=> b!2381853 (= lt!868444 lt!868445)))

(assert (=> b!2381853 (= (++!6937 (++!6937 Nil!28104 (Cons!28104 (h!33505 s!9460) Nil!28104)) (t!208179 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!579 (List!28202 C!14122 List!28202 List!28202) Unit!41027)

(assert (=> b!2381853 (= lt!868445 (lemmaMoveElementToOtherListKeepsConcatEq!579 Nil!28104 (h!33505 s!9460) (t!208179 s!9460) s!9460))))

(assert (=> b!2381853 (= e!1519134 (findConcatSeparation!633 lt!868342 EmptyExpr!6982 (++!6937 Nil!28104 (Cons!28104 (h!33505 s!9460) Nil!28104)) (t!208179 s!9460) s!9460))))

(declare-fun b!2381854 () Bool)

(declare-fun e!1519136 () Option!5525)

(assert (=> b!2381854 (= e!1519136 e!1519134)))

(declare-fun c!378682 () Bool)

(assert (=> b!2381854 (= c!378682 (is-Nil!28104 s!9460))))

(declare-fun b!2381855 () Bool)

(declare-fun res!1011587 () Bool)

(declare-fun e!1519132 () Bool)

(assert (=> b!2381855 (=> (not res!1011587) (not e!1519132))))

(assert (=> b!2381855 (= res!1011587 (matchR!3099 lt!868342 (_1!16455 (get!8572 lt!868446))))))

(declare-fun b!2381856 () Bool)

(assert (=> b!2381856 (= e!1519132 (= (++!6937 (_1!16455 (get!8572 lt!868446)) (_2!16455 (get!8572 lt!868446))) s!9460))))

(declare-fun b!2381857 () Bool)

(declare-fun res!1011586 () Bool)

(assert (=> b!2381857 (=> (not res!1011586) (not e!1519132))))

(assert (=> b!2381857 (= res!1011586 (matchR!3099 EmptyExpr!6982 (_2!16455 (get!8572 lt!868446))))))

(declare-fun b!2381852 () Bool)

(assert (=> b!2381852 (= e!1519136 (Some!5524 (tuple2!27829 Nil!28104 s!9460)))))

(declare-fun d!696824 () Bool)

(assert (=> d!696824 e!1519135))

(declare-fun res!1011589 () Bool)

(assert (=> d!696824 (=> res!1011589 e!1519135)))

(assert (=> d!696824 (= res!1011589 e!1519132)))

(declare-fun res!1011585 () Bool)

(assert (=> d!696824 (=> (not res!1011585) (not e!1519132))))

(assert (=> d!696824 (= res!1011585 (isDefined!4353 lt!868446))))

(assert (=> d!696824 (= lt!868446 e!1519136)))

(declare-fun c!378681 () Bool)

(assert (=> d!696824 (= c!378681 e!1519133)))

(declare-fun res!1011588 () Bool)

(assert (=> d!696824 (=> (not res!1011588) (not e!1519133))))

(assert (=> d!696824 (= res!1011588 (matchR!3099 lt!868342 Nil!28104))))

(assert (=> d!696824 (validRegex!2707 lt!868342)))

(assert (=> d!696824 (= (findConcatSeparation!633 lt!868342 EmptyExpr!6982 Nil!28104 s!9460 s!9460) lt!868446)))

(assert (= (and d!696824 res!1011588) b!2381851))

(assert (= (and d!696824 c!378681) b!2381852))

(assert (= (and d!696824 (not c!378681)) b!2381854))

(assert (= (and b!2381854 c!378682) b!2381850))

(assert (= (and b!2381854 (not c!378682)) b!2381853))

(assert (= (and d!696824 res!1011585) b!2381855))

(assert (= (and b!2381855 res!1011587) b!2381857))

(assert (= (and b!2381857 res!1011586) b!2381856))

(assert (= (and d!696824 (not res!1011589)) b!2381849))

(declare-fun m!2785353 () Bool)

(assert (=> b!2381851 m!2785353))

(declare-fun m!2785355 () Bool)

(assert (=> b!2381855 m!2785355))

(declare-fun m!2785357 () Bool)

(assert (=> b!2381855 m!2785357))

(declare-fun m!2785359 () Bool)

(assert (=> d!696824 m!2785359))

(declare-fun m!2785361 () Bool)

(assert (=> d!696824 m!2785361))

(assert (=> d!696824 m!2785289))

(assert (=> b!2381856 m!2785355))

(declare-fun m!2785363 () Bool)

(assert (=> b!2381856 m!2785363))

(assert (=> b!2381849 m!2785359))

(declare-fun m!2785365 () Bool)

(assert (=> b!2381853 m!2785365))

(assert (=> b!2381853 m!2785365))

(declare-fun m!2785367 () Bool)

(assert (=> b!2381853 m!2785367))

(declare-fun m!2785369 () Bool)

(assert (=> b!2381853 m!2785369))

(assert (=> b!2381853 m!2785365))

(declare-fun m!2785371 () Bool)

(assert (=> b!2381853 m!2785371))

(assert (=> b!2381857 m!2785355))

(declare-fun m!2785373 () Bool)

(assert (=> b!2381857 m!2785373))

(assert (=> bm!144701 d!696824))

(declare-fun b!2381858 () Bool)

(declare-fun e!1519143 () Bool)

(declare-fun lt!868448 () Bool)

(declare-fun call!144738 () Bool)

(assert (=> b!2381858 (= e!1519143 (= lt!868448 call!144738))))

(declare-fun b!2381859 () Bool)

(declare-fun e!1519139 () Bool)

(assert (=> b!2381859 (= e!1519139 (not lt!868448))))

(declare-fun b!2381860 () Bool)

(declare-fun res!1011596 () Bool)

(declare-fun e!1519141 () Bool)

(assert (=> b!2381860 (=> res!1011596 e!1519141)))

(assert (=> b!2381860 (= res!1011596 (not (is-ElementMatch!6982 lt!868342)))))

(assert (=> b!2381860 (= e!1519139 e!1519141)))

(declare-fun b!2381861 () Bool)

(declare-fun res!1011590 () Bool)

(declare-fun e!1519137 () Bool)

(assert (=> b!2381861 (=> (not res!1011590) (not e!1519137))))

(assert (=> b!2381861 (= res!1011590 (not call!144738))))

(declare-fun bm!144733 () Bool)

(assert (=> bm!144733 (= call!144738 (isEmpty!16059 s!9460))))

(declare-fun b!2381862 () Bool)

(declare-fun res!1011592 () Bool)

(assert (=> b!2381862 (=> res!1011592 e!1519141)))

(assert (=> b!2381862 (= res!1011592 e!1519137)))

(declare-fun res!1011595 () Bool)

(assert (=> b!2381862 (=> (not res!1011595) (not e!1519137))))

(assert (=> b!2381862 (= res!1011595 lt!868448)))

(declare-fun b!2381863 () Bool)

(declare-fun e!1519142 () Bool)

(declare-fun e!1519140 () Bool)

(assert (=> b!2381863 (= e!1519142 e!1519140)))

(declare-fun res!1011591 () Bool)

(assert (=> b!2381863 (=> res!1011591 e!1519140)))

(assert (=> b!2381863 (= res!1011591 call!144738)))

(declare-fun b!2381864 () Bool)

(declare-fun e!1519138 () Bool)

(assert (=> b!2381864 (= e!1519138 (nullable!2032 lt!868342))))

(declare-fun b!2381865 () Bool)

(assert (=> b!2381865 (= e!1519138 (matchR!3099 (derivativeStep!1690 lt!868342 (head!5199 s!9460)) (tail!3469 s!9460)))))

(declare-fun b!2381866 () Bool)

(declare-fun res!1011594 () Bool)

(assert (=> b!2381866 (=> (not res!1011594) (not e!1519137))))

(assert (=> b!2381866 (= res!1011594 (isEmpty!16059 (tail!3469 s!9460)))))

(declare-fun d!696830 () Bool)

(assert (=> d!696830 e!1519143))

(declare-fun c!378684 () Bool)

(assert (=> d!696830 (= c!378684 (is-EmptyExpr!6982 lt!868342))))

(assert (=> d!696830 (= lt!868448 e!1519138)))

(declare-fun c!378683 () Bool)

(assert (=> d!696830 (= c!378683 (isEmpty!16059 s!9460))))

(assert (=> d!696830 (validRegex!2707 lt!868342)))

(assert (=> d!696830 (= (matchR!3099 lt!868342 s!9460) lt!868448)))

(declare-fun b!2381867 () Bool)

(declare-fun res!1011597 () Bool)

(assert (=> b!2381867 (=> res!1011597 e!1519140)))

(assert (=> b!2381867 (= res!1011597 (not (isEmpty!16059 (tail!3469 s!9460))))))

(declare-fun b!2381868 () Bool)

(assert (=> b!2381868 (= e!1519141 e!1519142)))

(declare-fun res!1011593 () Bool)

(assert (=> b!2381868 (=> (not res!1011593) (not e!1519142))))

(assert (=> b!2381868 (= res!1011593 (not lt!868448))))

(declare-fun b!2381869 () Bool)

(assert (=> b!2381869 (= e!1519143 e!1519139)))

(declare-fun c!378685 () Bool)

(assert (=> b!2381869 (= c!378685 (is-EmptyLang!6982 lt!868342))))

(declare-fun b!2381870 () Bool)

(assert (=> b!2381870 (= e!1519140 (not (= (head!5199 s!9460) (c!378626 lt!868342))))))

(declare-fun b!2381871 () Bool)

(assert (=> b!2381871 (= e!1519137 (= (head!5199 s!9460) (c!378626 lt!868342)))))

(assert (= (and d!696830 c!378683) b!2381864))

(assert (= (and d!696830 (not c!378683)) b!2381865))

(assert (= (and d!696830 c!378684) b!2381858))

(assert (= (and d!696830 (not c!378684)) b!2381869))

(assert (= (and b!2381869 c!378685) b!2381859))

(assert (= (and b!2381869 (not c!378685)) b!2381860))

(assert (= (and b!2381860 (not res!1011596)) b!2381862))

(assert (= (and b!2381862 res!1011595) b!2381861))

(assert (= (and b!2381861 res!1011590) b!2381866))

(assert (= (and b!2381866 res!1011594) b!2381871))

(assert (= (and b!2381862 (not res!1011592)) b!2381868))

(assert (= (and b!2381868 res!1011593) b!2381863))

(assert (= (and b!2381863 (not res!1011591)) b!2381867))

(assert (= (and b!2381867 (not res!1011597)) b!2381870))

(assert (= (or b!2381858 b!2381863 b!2381861) bm!144733))

(declare-fun m!2785379 () Bool)

(assert (=> b!2381866 m!2785379))

(assert (=> b!2381866 m!2785379))

(declare-fun m!2785381 () Bool)

(assert (=> b!2381866 m!2785381))

(declare-fun m!2785383 () Bool)

(assert (=> b!2381865 m!2785383))

(assert (=> b!2381865 m!2785383))

(declare-fun m!2785385 () Bool)

(assert (=> b!2381865 m!2785385))

(assert (=> b!2381865 m!2785379))

(assert (=> b!2381865 m!2785385))

(assert (=> b!2381865 m!2785379))

(declare-fun m!2785387 () Bool)

(assert (=> b!2381865 m!2785387))

(assert (=> b!2381871 m!2785383))

(declare-fun m!2785389 () Bool)

(assert (=> d!696830 m!2785389))

(assert (=> d!696830 m!2785289))

(assert (=> bm!144733 m!2785389))

(assert (=> b!2381867 m!2785379))

(assert (=> b!2381867 m!2785379))

(assert (=> b!2381867 m!2785381))

(declare-fun m!2785391 () Bool)

(assert (=> b!2381864 m!2785391))

(assert (=> b!2381870 m!2785383))

(assert (=> b!2381561 d!696830))

(declare-fun d!696836 () Bool)

(assert (=> d!696836 (= (head!5197 l!9164) (h!33506 l!9164))))

(assert (=> b!2381561 d!696836))

(declare-fun d!696840 () Bool)

(assert (=> d!696840 (= (isDefined!4353 (findConcatSeparation!633 (regOne!14476 r!13927) (regTwo!14476 r!13927) Nil!28104 s!9460 s!9460)) (not (isEmpty!16058 (findConcatSeparation!633 (regOne!14476 r!13927) (regTwo!14476 r!13927) Nil!28104 s!9460 s!9460))))))

(declare-fun bs!461920 () Bool)

(assert (= bs!461920 d!696840))

(assert (=> bs!461920 m!2785125))

(declare-fun m!2785393 () Bool)

(assert (=> bs!461920 m!2785393))

(assert (=> b!2381562 d!696840))

(declare-fun d!696842 () Bool)

(declare-fun choose!13936 (Int) Bool)

(assert (=> d!696842 (= (Exists!1044 lambda!88735) (choose!13936 lambda!88735))))

(declare-fun bs!461921 () Bool)

(assert (= bs!461921 d!696842))

(declare-fun m!2785395 () Bool)

(assert (=> bs!461921 m!2785395))

(assert (=> b!2381562 d!696842))

(declare-fun bs!461922 () Bool)

(declare-fun d!696844 () Bool)

(assert (= bs!461922 (and d!696844 b!2381562)))

(declare-fun lambda!88754 () Int)

(assert (=> bs!461922 (= lambda!88754 lambda!88735)))

(assert (=> bs!461922 (not (= lambda!88754 lambda!88736))))

(assert (=> d!696844 true))

(assert (=> d!696844 true))

(assert (=> d!696844 true))

(assert (=> d!696844 (= (isDefined!4353 (findConcatSeparation!633 (regOne!14476 r!13927) (regTwo!14476 r!13927) Nil!28104 s!9460 s!9460)) (Exists!1044 lambda!88754))))

(declare-fun lt!868451 () Unit!41027)

(declare-fun choose!13937 (Regex!6982 Regex!6982 List!28202) Unit!41027)

(assert (=> d!696844 (= lt!868451 (choose!13937 (regOne!14476 r!13927) (regTwo!14476 r!13927) s!9460))))

(assert (=> d!696844 (validRegex!2707 (regOne!14476 r!13927))))

(assert (=> d!696844 (= (lemmaFindConcatSeparationEquivalentToExists!633 (regOne!14476 r!13927) (regTwo!14476 r!13927) s!9460) lt!868451)))

(declare-fun bs!461923 () Bool)

(assert (= bs!461923 d!696844))

(declare-fun m!2785397 () Bool)

(assert (=> bs!461923 m!2785397))

(declare-fun m!2785399 () Bool)

(assert (=> bs!461923 m!2785399))

(declare-fun m!2785401 () Bool)

(assert (=> bs!461923 m!2785401))

(assert (=> bs!461923 m!2785125))

(assert (=> bs!461923 m!2785133))

(assert (=> bs!461923 m!2785125))

(assert (=> b!2381562 d!696844))

(declare-fun bs!461924 () Bool)

(declare-fun d!696846 () Bool)

(assert (= bs!461924 (and d!696846 b!2381562)))

(declare-fun lambda!88759 () Int)

(assert (=> bs!461924 (= lambda!88759 lambda!88735)))

(assert (=> bs!461924 (not (= lambda!88759 lambda!88736))))

(declare-fun bs!461925 () Bool)

(assert (= bs!461925 (and d!696846 d!696844)))

(assert (=> bs!461925 (= lambda!88759 lambda!88754)))

(assert (=> d!696846 true))

(assert (=> d!696846 true))

(assert (=> d!696846 true))

(declare-fun lambda!88760 () Int)

(assert (=> bs!461924 (not (= lambda!88760 lambda!88735))))

(assert (=> bs!461924 (= lambda!88760 lambda!88736)))

(assert (=> bs!461925 (not (= lambda!88760 lambda!88754))))

(declare-fun bs!461926 () Bool)

(assert (= bs!461926 d!696846))

(assert (=> bs!461926 (not (= lambda!88760 lambda!88759))))

(assert (=> d!696846 true))

(assert (=> d!696846 true))

(assert (=> d!696846 true))

(assert (=> d!696846 (= (Exists!1044 lambda!88759) (Exists!1044 lambda!88760))))

(declare-fun lt!868454 () Unit!41027)

(declare-fun choose!13938 (Regex!6982 Regex!6982 List!28202) Unit!41027)

(assert (=> d!696846 (= lt!868454 (choose!13938 (regOne!14476 r!13927) (regTwo!14476 r!13927) s!9460))))

(assert (=> d!696846 (validRegex!2707 (regOne!14476 r!13927))))

(assert (=> d!696846 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!383 (regOne!14476 r!13927) (regTwo!14476 r!13927) s!9460) lt!868454)))

(declare-fun m!2785403 () Bool)

(assert (=> bs!461926 m!2785403))

(declare-fun m!2785405 () Bool)

(assert (=> bs!461926 m!2785405))

(declare-fun m!2785407 () Bool)

(assert (=> bs!461926 m!2785407))

(assert (=> bs!461926 m!2785401))

(assert (=> b!2381562 d!696846))

(declare-fun b!2381894 () Bool)

(declare-fun e!1519159 () Bool)

(declare-fun lt!868463 () Option!5525)

(assert (=> b!2381894 (= e!1519159 (not (isDefined!4353 lt!868463)))))

(declare-fun b!2381895 () Bool)

(declare-fun e!1519158 () Option!5525)

(assert (=> b!2381895 (= e!1519158 None!5524)))

(declare-fun b!2381896 () Bool)

(declare-fun e!1519157 () Bool)

(assert (=> b!2381896 (= e!1519157 (matchR!3099 (regTwo!14476 r!13927) s!9460))))

(declare-fun b!2381898 () Bool)

(declare-fun lt!868461 () Unit!41027)

(declare-fun lt!868462 () Unit!41027)

(assert (=> b!2381898 (= lt!868461 lt!868462)))

(assert (=> b!2381898 (= (++!6937 (++!6937 Nil!28104 (Cons!28104 (h!33505 s!9460) Nil!28104)) (t!208179 s!9460)) s!9460)))

(assert (=> b!2381898 (= lt!868462 (lemmaMoveElementToOtherListKeepsConcatEq!579 Nil!28104 (h!33505 s!9460) (t!208179 s!9460) s!9460))))

(assert (=> b!2381898 (= e!1519158 (findConcatSeparation!633 (regOne!14476 r!13927) (regTwo!14476 r!13927) (++!6937 Nil!28104 (Cons!28104 (h!33505 s!9460) Nil!28104)) (t!208179 s!9460) s!9460))))

(declare-fun b!2381899 () Bool)

(declare-fun e!1519160 () Option!5525)

(assert (=> b!2381899 (= e!1519160 e!1519158)))

(declare-fun c!378691 () Bool)

(assert (=> b!2381899 (= c!378691 (is-Nil!28104 s!9460))))

(declare-fun b!2381900 () Bool)

(declare-fun res!1011614 () Bool)

(declare-fun e!1519156 () Bool)

(assert (=> b!2381900 (=> (not res!1011614) (not e!1519156))))

(assert (=> b!2381900 (= res!1011614 (matchR!3099 (regOne!14476 r!13927) (_1!16455 (get!8572 lt!868463))))))

(declare-fun b!2381901 () Bool)

(assert (=> b!2381901 (= e!1519156 (= (++!6937 (_1!16455 (get!8572 lt!868463)) (_2!16455 (get!8572 lt!868463))) s!9460))))

(declare-fun b!2381902 () Bool)

(declare-fun res!1011613 () Bool)

(assert (=> b!2381902 (=> (not res!1011613) (not e!1519156))))

(assert (=> b!2381902 (= res!1011613 (matchR!3099 (regTwo!14476 r!13927) (_2!16455 (get!8572 lt!868463))))))

(declare-fun b!2381897 () Bool)

(assert (=> b!2381897 (= e!1519160 (Some!5524 (tuple2!27829 Nil!28104 s!9460)))))

(declare-fun d!696848 () Bool)

(assert (=> d!696848 e!1519159))

(declare-fun res!1011616 () Bool)

(assert (=> d!696848 (=> res!1011616 e!1519159)))

(assert (=> d!696848 (= res!1011616 e!1519156)))

(declare-fun res!1011612 () Bool)

(assert (=> d!696848 (=> (not res!1011612) (not e!1519156))))

(assert (=> d!696848 (= res!1011612 (isDefined!4353 lt!868463))))

(assert (=> d!696848 (= lt!868463 e!1519160)))

(declare-fun c!378690 () Bool)

(assert (=> d!696848 (= c!378690 e!1519157)))

(declare-fun res!1011615 () Bool)

(assert (=> d!696848 (=> (not res!1011615) (not e!1519157))))

(assert (=> d!696848 (= res!1011615 (matchR!3099 (regOne!14476 r!13927) Nil!28104))))

(assert (=> d!696848 (validRegex!2707 (regOne!14476 r!13927))))

(assert (=> d!696848 (= (findConcatSeparation!633 (regOne!14476 r!13927) (regTwo!14476 r!13927) Nil!28104 s!9460 s!9460) lt!868463)))

(assert (= (and d!696848 res!1011615) b!2381896))

(assert (= (and d!696848 c!378690) b!2381897))

(assert (= (and d!696848 (not c!378690)) b!2381899))

(assert (= (and b!2381899 c!378691) b!2381895))

(assert (= (and b!2381899 (not c!378691)) b!2381898))

(assert (= (and d!696848 res!1011612) b!2381900))

(assert (= (and b!2381900 res!1011614) b!2381902))

(assert (= (and b!2381902 res!1011613) b!2381901))

(assert (= (and d!696848 (not res!1011616)) b!2381894))

(declare-fun m!2785409 () Bool)

(assert (=> b!2381896 m!2785409))

(declare-fun m!2785411 () Bool)

(assert (=> b!2381900 m!2785411))

(declare-fun m!2785413 () Bool)

(assert (=> b!2381900 m!2785413))

(declare-fun m!2785415 () Bool)

(assert (=> d!696848 m!2785415))

(declare-fun m!2785417 () Bool)

(assert (=> d!696848 m!2785417))

(assert (=> d!696848 m!2785401))

(assert (=> b!2381901 m!2785411))

(declare-fun m!2785419 () Bool)

(assert (=> b!2381901 m!2785419))

(assert (=> b!2381894 m!2785415))

(assert (=> b!2381898 m!2785365))

(assert (=> b!2381898 m!2785365))

(assert (=> b!2381898 m!2785367))

(assert (=> b!2381898 m!2785369))

(assert (=> b!2381898 m!2785365))

(declare-fun m!2785421 () Bool)

(assert (=> b!2381898 m!2785421))

(assert (=> b!2381902 m!2785411))

(declare-fun m!2785423 () Bool)

(assert (=> b!2381902 m!2785423))

(assert (=> b!2381562 d!696848))

(declare-fun d!696850 () Bool)

(assert (=> d!696850 (= (Exists!1044 lambda!88736) (choose!13936 lambda!88736))))

(declare-fun bs!461927 () Bool)

(assert (= bs!461927 d!696850))

(declare-fun m!2785425 () Bool)

(assert (=> bs!461927 m!2785425))

(assert (=> b!2381562 d!696850))

(declare-fun d!696852 () Bool)

(assert (=> d!696852 (= (isEmpty!16056 l!9164) (is-Nil!28105 l!9164))))

(assert (=> b!2381552 d!696852))

(declare-fun d!696854 () Bool)

(assert (=> d!696854 (= (isDefined!4353 call!144706) (not (isEmpty!16058 call!144706)))))

(declare-fun bs!461928 () Bool)

(assert (= bs!461928 d!696854))

(declare-fun m!2785427 () Bool)

(assert (=> bs!461928 m!2785427))

(assert (=> bm!144702 d!696854))

(declare-fun bs!461929 () Bool)

(declare-fun b!2381952 () Bool)

(assert (= bs!461929 (and b!2381952 b!2381562)))

(declare-fun lambda!88765 () Int)

(assert (=> bs!461929 (not (= lambda!88765 lambda!88735))))

(declare-fun bs!461930 () Bool)

(assert (= bs!461930 (and b!2381952 d!696846)))

(assert (=> bs!461930 (not (= lambda!88765 lambda!88759))))

(declare-fun bs!461931 () Bool)

(assert (= bs!461931 (and b!2381952 d!696844)))

(assert (=> bs!461931 (not (= lambda!88765 lambda!88754))))

(assert (=> bs!461930 (not (= lambda!88765 lambda!88760))))

(assert (=> bs!461929 (not (= lambda!88765 lambda!88736))))

(assert (=> b!2381952 true))

(assert (=> b!2381952 true))

(declare-fun bs!461932 () Bool)

(declare-fun b!2381958 () Bool)

(assert (= bs!461932 (and b!2381958 b!2381562)))

(declare-fun lambda!88766 () Int)

(assert (=> bs!461932 (not (= lambda!88766 lambda!88735))))

(declare-fun bs!461933 () Bool)

(assert (= bs!461933 (and b!2381958 d!696846)))

(assert (=> bs!461933 (not (= lambda!88766 lambda!88759))))

(declare-fun bs!461934 () Bool)

(assert (= bs!461934 (and b!2381958 b!2381952)))

(assert (=> bs!461934 (not (= lambda!88766 lambda!88765))))

(declare-fun bs!461935 () Bool)

(assert (= bs!461935 (and b!2381958 d!696844)))

(assert (=> bs!461935 (not (= lambda!88766 lambda!88754))))

(assert (=> bs!461933 (= lambda!88766 lambda!88760)))

(assert (=> bs!461932 (= lambda!88766 lambda!88736)))

(assert (=> b!2381958 true))

(assert (=> b!2381958 true))

(declare-fun e!1519188 () Bool)

(declare-fun call!144744 () Bool)

(assert (=> b!2381952 (= e!1519188 call!144744)))

(declare-fun b!2381953 () Bool)

(declare-fun e!1519193 () Bool)

(declare-fun e!1519190 () Bool)

(assert (=> b!2381953 (= e!1519193 e!1519190)))

(declare-fun c!378704 () Bool)

(assert (=> b!2381953 (= c!378704 (is-Star!6982 r!13927))))

(declare-fun b!2381954 () Bool)

(declare-fun e!1519194 () Bool)

(assert (=> b!2381954 (= e!1519194 (matchRSpec!831 (regTwo!14477 r!13927) s!9460))))

(declare-fun b!2381955 () Bool)

(declare-fun res!1011647 () Bool)

(assert (=> b!2381955 (=> res!1011647 e!1519188)))

(declare-fun call!144743 () Bool)

(assert (=> b!2381955 (= res!1011647 call!144743)))

(assert (=> b!2381955 (= e!1519190 e!1519188)))

(declare-fun b!2381956 () Bool)

(declare-fun e!1519191 () Bool)

(declare-fun e!1519189 () Bool)

(assert (=> b!2381956 (= e!1519191 e!1519189)))

(declare-fun res!1011646 () Bool)

(assert (=> b!2381956 (= res!1011646 (not (is-EmptyLang!6982 r!13927)))))

(assert (=> b!2381956 (=> (not res!1011646) (not e!1519189))))

(declare-fun d!696856 () Bool)

(declare-fun c!378703 () Bool)

(assert (=> d!696856 (= c!378703 (is-EmptyExpr!6982 r!13927))))

(assert (=> d!696856 (= (matchRSpec!831 r!13927 s!9460) e!1519191)))

(declare-fun b!2381957 () Bool)

(declare-fun c!378702 () Bool)

(assert (=> b!2381957 (= c!378702 (is-ElementMatch!6982 r!13927))))

(declare-fun e!1519192 () Bool)

(assert (=> b!2381957 (= e!1519189 e!1519192)))

(declare-fun bm!144738 () Bool)

(assert (=> bm!144738 (= call!144743 (isEmpty!16059 s!9460))))

(assert (=> b!2381958 (= e!1519190 call!144744)))

(declare-fun b!2381959 () Bool)

(assert (=> b!2381959 (= e!1519193 e!1519194)))

(declare-fun res!1011648 () Bool)

(assert (=> b!2381959 (= res!1011648 (matchRSpec!831 (regOne!14477 r!13927) s!9460))))

(assert (=> b!2381959 (=> res!1011648 e!1519194)))

(declare-fun b!2381960 () Bool)

(assert (=> b!2381960 (= e!1519191 call!144743)))

(declare-fun b!2381961 () Bool)

(assert (=> b!2381961 (= e!1519192 (= s!9460 (Cons!28104 (c!378626 r!13927) Nil!28104)))))

(declare-fun b!2381962 () Bool)

(declare-fun c!378705 () Bool)

(assert (=> b!2381962 (= c!378705 (is-Union!6982 r!13927))))

(assert (=> b!2381962 (= e!1519192 e!1519193)))

(declare-fun bm!144739 () Bool)

(assert (=> bm!144739 (= call!144744 (Exists!1044 (ite c!378704 lambda!88765 lambda!88766)))))

(assert (= (and d!696856 c!378703) b!2381960))

(assert (= (and d!696856 (not c!378703)) b!2381956))

(assert (= (and b!2381956 res!1011646) b!2381957))

(assert (= (and b!2381957 c!378702) b!2381961))

(assert (= (and b!2381957 (not c!378702)) b!2381962))

(assert (= (and b!2381962 c!378705) b!2381959))

(assert (= (and b!2381962 (not c!378705)) b!2381953))

(assert (= (and b!2381959 (not res!1011648)) b!2381954))

(assert (= (and b!2381953 c!378704) b!2381955))

(assert (= (and b!2381953 (not c!378704)) b!2381958))

(assert (= (and b!2381955 (not res!1011647)) b!2381952))

(assert (= (or b!2381952 b!2381958) bm!144739))

(assert (= (or b!2381960 b!2381955) bm!144738))

(declare-fun m!2785451 () Bool)

(assert (=> b!2381954 m!2785451))

(assert (=> bm!144738 m!2785389))

(declare-fun m!2785453 () Bool)

(assert (=> b!2381959 m!2785453))

(declare-fun m!2785455 () Bool)

(assert (=> bm!144739 m!2785455))

(assert (=> b!2381563 d!696856))

(declare-fun b!2381963 () Bool)

(declare-fun e!1519201 () Bool)

(declare-fun lt!868467 () Bool)

(declare-fun call!144745 () Bool)

(assert (=> b!2381963 (= e!1519201 (= lt!868467 call!144745))))

(declare-fun b!2381964 () Bool)

(declare-fun e!1519197 () Bool)

(assert (=> b!2381964 (= e!1519197 (not lt!868467))))

(declare-fun b!2381965 () Bool)

(declare-fun res!1011655 () Bool)

(declare-fun e!1519199 () Bool)

(assert (=> b!2381965 (=> res!1011655 e!1519199)))

(assert (=> b!2381965 (= res!1011655 (not (is-ElementMatch!6982 r!13927)))))

(assert (=> b!2381965 (= e!1519197 e!1519199)))

(declare-fun b!2381966 () Bool)

(declare-fun res!1011649 () Bool)

(declare-fun e!1519195 () Bool)

(assert (=> b!2381966 (=> (not res!1011649) (not e!1519195))))

(assert (=> b!2381966 (= res!1011649 (not call!144745))))

(declare-fun bm!144740 () Bool)

(assert (=> bm!144740 (= call!144745 (isEmpty!16059 s!9460))))

(declare-fun b!2381967 () Bool)

(declare-fun res!1011651 () Bool)

(assert (=> b!2381967 (=> res!1011651 e!1519199)))

(assert (=> b!2381967 (= res!1011651 e!1519195)))

(declare-fun res!1011654 () Bool)

(assert (=> b!2381967 (=> (not res!1011654) (not e!1519195))))

(assert (=> b!2381967 (= res!1011654 lt!868467)))

(declare-fun b!2381968 () Bool)

(declare-fun e!1519200 () Bool)

(declare-fun e!1519198 () Bool)

(assert (=> b!2381968 (= e!1519200 e!1519198)))

(declare-fun res!1011650 () Bool)

(assert (=> b!2381968 (=> res!1011650 e!1519198)))

(assert (=> b!2381968 (= res!1011650 call!144745)))

(declare-fun b!2381969 () Bool)

(declare-fun e!1519196 () Bool)

(assert (=> b!2381969 (= e!1519196 (nullable!2032 r!13927))))

(declare-fun b!2381970 () Bool)

(assert (=> b!2381970 (= e!1519196 (matchR!3099 (derivativeStep!1690 r!13927 (head!5199 s!9460)) (tail!3469 s!9460)))))

(declare-fun b!2381971 () Bool)

(declare-fun res!1011653 () Bool)

(assert (=> b!2381971 (=> (not res!1011653) (not e!1519195))))

(assert (=> b!2381971 (= res!1011653 (isEmpty!16059 (tail!3469 s!9460)))))

(declare-fun d!696860 () Bool)

(assert (=> d!696860 e!1519201))

(declare-fun c!378707 () Bool)

(assert (=> d!696860 (= c!378707 (is-EmptyExpr!6982 r!13927))))

(assert (=> d!696860 (= lt!868467 e!1519196)))

(declare-fun c!378706 () Bool)

(assert (=> d!696860 (= c!378706 (isEmpty!16059 s!9460))))

(assert (=> d!696860 (validRegex!2707 r!13927)))

(assert (=> d!696860 (= (matchR!3099 r!13927 s!9460) lt!868467)))

(declare-fun b!2381972 () Bool)

(declare-fun res!1011656 () Bool)

(assert (=> b!2381972 (=> res!1011656 e!1519198)))

(assert (=> b!2381972 (= res!1011656 (not (isEmpty!16059 (tail!3469 s!9460))))))

(declare-fun b!2381973 () Bool)

(assert (=> b!2381973 (= e!1519199 e!1519200)))

(declare-fun res!1011652 () Bool)

(assert (=> b!2381973 (=> (not res!1011652) (not e!1519200))))

(assert (=> b!2381973 (= res!1011652 (not lt!868467))))

(declare-fun b!2381974 () Bool)

(assert (=> b!2381974 (= e!1519201 e!1519197)))

(declare-fun c!378708 () Bool)

(assert (=> b!2381974 (= c!378708 (is-EmptyLang!6982 r!13927))))

(declare-fun b!2381975 () Bool)

(assert (=> b!2381975 (= e!1519198 (not (= (head!5199 s!9460) (c!378626 r!13927))))))

(declare-fun b!2381976 () Bool)

(assert (=> b!2381976 (= e!1519195 (= (head!5199 s!9460) (c!378626 r!13927)))))

(assert (= (and d!696860 c!378706) b!2381969))

(assert (= (and d!696860 (not c!378706)) b!2381970))

(assert (= (and d!696860 c!378707) b!2381963))

(assert (= (and d!696860 (not c!378707)) b!2381974))

(assert (= (and b!2381974 c!378708) b!2381964))

(assert (= (and b!2381974 (not c!378708)) b!2381965))

(assert (= (and b!2381965 (not res!1011655)) b!2381967))

(assert (= (and b!2381967 res!1011654) b!2381966))

(assert (= (and b!2381966 res!1011649) b!2381971))

(assert (= (and b!2381971 res!1011653) b!2381976))

(assert (= (and b!2381967 (not res!1011651)) b!2381973))

(assert (= (and b!2381973 res!1011652) b!2381968))

(assert (= (and b!2381968 (not res!1011650)) b!2381972))

(assert (= (and b!2381972 (not res!1011656)) b!2381975))

(assert (= (or b!2381963 b!2381968 b!2381966) bm!144740))

(assert (=> b!2381971 m!2785379))

(assert (=> b!2381971 m!2785379))

(assert (=> b!2381971 m!2785381))

(assert (=> b!2381970 m!2785383))

(assert (=> b!2381970 m!2785383))

(declare-fun m!2785457 () Bool)

(assert (=> b!2381970 m!2785457))

(assert (=> b!2381970 m!2785379))

(assert (=> b!2381970 m!2785457))

(assert (=> b!2381970 m!2785379))

(declare-fun m!2785459 () Bool)

(assert (=> b!2381970 m!2785459))

(assert (=> b!2381976 m!2785383))

(assert (=> d!696860 m!2785389))

(declare-fun m!2785461 () Bool)

(assert (=> d!696860 m!2785461))

(assert (=> bm!144740 m!2785389))

(assert (=> b!2381972 m!2785379))

(assert (=> b!2381972 m!2785379))

(assert (=> b!2381972 m!2785381))

(declare-fun m!2785463 () Bool)

(assert (=> b!2381969 m!2785463))

(assert (=> b!2381975 m!2785383))

(assert (=> b!2381563 d!696860))

(declare-fun d!696862 () Bool)

(assert (=> d!696862 (= (matchR!3099 r!13927 s!9460) (matchRSpec!831 r!13927 s!9460))))

(declare-fun lt!868472 () Unit!41027)

(declare-fun choose!13939 (Regex!6982 List!28202) Unit!41027)

(assert (=> d!696862 (= lt!868472 (choose!13939 r!13927 s!9460))))

(assert (=> d!696862 (validRegex!2707 r!13927)))

(assert (=> d!696862 (= (mainMatchTheorem!831 r!13927 s!9460) lt!868472)))

(declare-fun bs!461936 () Bool)

(assert (= bs!461936 d!696862))

(assert (=> bs!461936 m!2785115))

(assert (=> bs!461936 m!2785113))

(declare-fun m!2785465 () Bool)

(assert (=> bs!461936 m!2785465))

(assert (=> bs!461936 m!2785461))

(assert (=> b!2381563 d!696862))

(declare-fun b!2381985 () Bool)

(declare-fun e!1519209 () Bool)

(declare-fun lt!868475 () Option!5525)

(assert (=> b!2381985 (= e!1519209 (not (isDefined!4353 lt!868475)))))

(declare-fun b!2381986 () Bool)

(declare-fun e!1519208 () Option!5525)

(assert (=> b!2381986 (= e!1519208 None!5524)))

(declare-fun b!2381987 () Bool)

(declare-fun e!1519207 () Bool)

(assert (=> b!2381987 (= e!1519207 (matchR!3099 lt!868340 s!9460))))

(declare-fun b!2381989 () Bool)

(declare-fun lt!868473 () Unit!41027)

(declare-fun lt!868474 () Unit!41027)

(assert (=> b!2381989 (= lt!868473 lt!868474)))

(assert (=> b!2381989 (= (++!6937 (++!6937 Nil!28104 (Cons!28104 (h!33505 s!9460) Nil!28104)) (t!208179 s!9460)) s!9460)))

(assert (=> b!2381989 (= lt!868474 (lemmaMoveElementToOtherListKeepsConcatEq!579 Nil!28104 (h!33505 s!9460) (t!208179 s!9460) s!9460))))

(assert (=> b!2381989 (= e!1519208 (findConcatSeparation!633 lt!868342 lt!868340 (++!6937 Nil!28104 (Cons!28104 (h!33505 s!9460) Nil!28104)) (t!208179 s!9460) s!9460))))

(declare-fun b!2381990 () Bool)

(declare-fun e!1519210 () Option!5525)

(assert (=> b!2381990 (= e!1519210 e!1519208)))

(declare-fun c!378712 () Bool)

(assert (=> b!2381990 (= c!378712 (is-Nil!28104 s!9460))))

(declare-fun b!2381991 () Bool)

(declare-fun res!1011663 () Bool)

(declare-fun e!1519206 () Bool)

(assert (=> b!2381991 (=> (not res!1011663) (not e!1519206))))

(assert (=> b!2381991 (= res!1011663 (matchR!3099 lt!868342 (_1!16455 (get!8572 lt!868475))))))

(declare-fun b!2381992 () Bool)

(assert (=> b!2381992 (= e!1519206 (= (++!6937 (_1!16455 (get!8572 lt!868475)) (_2!16455 (get!8572 lt!868475))) s!9460))))

(declare-fun b!2381993 () Bool)

(declare-fun res!1011662 () Bool)

(assert (=> b!2381993 (=> (not res!1011662) (not e!1519206))))

(assert (=> b!2381993 (= res!1011662 (matchR!3099 lt!868340 (_2!16455 (get!8572 lt!868475))))))

(declare-fun b!2381988 () Bool)

(assert (=> b!2381988 (= e!1519210 (Some!5524 (tuple2!27829 Nil!28104 s!9460)))))

(declare-fun d!696864 () Bool)

(assert (=> d!696864 e!1519209))

(declare-fun res!1011665 () Bool)

(assert (=> d!696864 (=> res!1011665 e!1519209)))

(assert (=> d!696864 (= res!1011665 e!1519206)))

(declare-fun res!1011661 () Bool)

(assert (=> d!696864 (=> (not res!1011661) (not e!1519206))))

(assert (=> d!696864 (= res!1011661 (isDefined!4353 lt!868475))))

(assert (=> d!696864 (= lt!868475 e!1519210)))

(declare-fun c!378711 () Bool)

(assert (=> d!696864 (= c!378711 e!1519207)))

(declare-fun res!1011664 () Bool)

(assert (=> d!696864 (=> (not res!1011664) (not e!1519207))))

(assert (=> d!696864 (= res!1011664 (matchR!3099 lt!868342 Nil!28104))))

(assert (=> d!696864 (validRegex!2707 lt!868342)))

(assert (=> d!696864 (= (findConcatSeparation!633 lt!868342 lt!868340 Nil!28104 s!9460 s!9460) lt!868475)))

(assert (= (and d!696864 res!1011664) b!2381987))

(assert (= (and d!696864 c!378711) b!2381988))

(assert (= (and d!696864 (not c!378711)) b!2381990))

(assert (= (and b!2381990 c!378712) b!2381986))

(assert (= (and b!2381990 (not c!378712)) b!2381989))

(assert (= (and d!696864 res!1011661) b!2381991))

(assert (= (and b!2381991 res!1011663) b!2381993))

(assert (= (and b!2381993 res!1011662) b!2381992))

(assert (= (and d!696864 (not res!1011665)) b!2381985))

(declare-fun m!2785467 () Bool)

(assert (=> b!2381987 m!2785467))

(declare-fun m!2785469 () Bool)

(assert (=> b!2381991 m!2785469))

(declare-fun m!2785471 () Bool)

(assert (=> b!2381991 m!2785471))

(declare-fun m!2785473 () Bool)

(assert (=> d!696864 m!2785473))

(assert (=> d!696864 m!2785361))

(assert (=> d!696864 m!2785289))

(assert (=> b!2381992 m!2785469))

(declare-fun m!2785475 () Bool)

(assert (=> b!2381992 m!2785475))

(assert (=> b!2381985 m!2785473))

(assert (=> b!2381989 m!2785365))

(assert (=> b!2381989 m!2785365))

(assert (=> b!2381989 m!2785367))

(assert (=> b!2381989 m!2785369))

(assert (=> b!2381989 m!2785365))

(declare-fun m!2785485 () Bool)

(assert (=> b!2381989 m!2785485))

(assert (=> b!2381993 m!2785469))

(declare-fun m!2785491 () Bool)

(assert (=> b!2381993 m!2785491))

(assert (=> bm!144705 d!696864))

(declare-fun d!696866 () Bool)

(assert (=> d!696866 (= (isEmpty!16056 lt!868351) (is-Nil!28105 lt!868351))))

(assert (=> b!2381548 d!696866))

(declare-fun d!696868 () Bool)

(assert (=> d!696868 (= (tail!3467 l!9164) (t!208180 l!9164))))

(assert (=> b!2381548 d!696868))

(declare-fun b!2382007 () Bool)

(declare-fun e!1519218 () List!28202)

(assert (=> b!2382007 (= e!1519218 (Cons!28104 (h!33505 (ite c!378625 s!9460 (_1!16455 lt!868341))) (++!6937 (t!208179 (ite c!378625 s!9460 (_1!16455 lt!868341))) (ite c!378625 Nil!28104 (_2!16455 lt!868341)))))))

(declare-fun b!2382008 () Bool)

(declare-fun res!1011672 () Bool)

(declare-fun e!1519217 () Bool)

(assert (=> b!2382008 (=> (not res!1011672) (not e!1519217))))

(declare-fun lt!868479 () List!28202)

(declare-fun size!22169 (List!28202) Int)

(assert (=> b!2382008 (= res!1011672 (= (size!22169 lt!868479) (+ (size!22169 (ite c!378625 s!9460 (_1!16455 lt!868341))) (size!22169 (ite c!378625 Nil!28104 (_2!16455 lt!868341))))))))

(declare-fun d!696872 () Bool)

(assert (=> d!696872 e!1519217))

(declare-fun res!1011673 () Bool)

(assert (=> d!696872 (=> (not res!1011673) (not e!1519217))))

(declare-fun content!3831 (List!28202) (Set C!14122))

(assert (=> d!696872 (= res!1011673 (= (content!3831 lt!868479) (set.union (content!3831 (ite c!378625 s!9460 (_1!16455 lt!868341))) (content!3831 (ite c!378625 Nil!28104 (_2!16455 lt!868341))))))))

(assert (=> d!696872 (= lt!868479 e!1519218)))

(declare-fun c!378716 () Bool)

(assert (=> d!696872 (= c!378716 (is-Nil!28104 (ite c!378625 s!9460 (_1!16455 lt!868341))))))

(assert (=> d!696872 (= (++!6937 (ite c!378625 s!9460 (_1!16455 lt!868341)) (ite c!378625 Nil!28104 (_2!16455 lt!868341))) lt!868479)))

(declare-fun b!2382009 () Bool)

(assert (=> b!2382009 (= e!1519217 (or (not (= (ite c!378625 Nil!28104 (_2!16455 lt!868341)) Nil!28104)) (= lt!868479 (ite c!378625 s!9460 (_1!16455 lt!868341)))))))

(declare-fun b!2382006 () Bool)

(assert (=> b!2382006 (= e!1519218 (ite c!378625 Nil!28104 (_2!16455 lt!868341)))))

(assert (= (and d!696872 c!378716) b!2382006))

(assert (= (and d!696872 (not c!378716)) b!2382007))

(assert (= (and d!696872 res!1011673) b!2382008))

(assert (= (and b!2382008 res!1011672) b!2382009))

(declare-fun m!2785495 () Bool)

(assert (=> b!2382007 m!2785495))

(declare-fun m!2785497 () Bool)

(assert (=> b!2382008 m!2785497))

(declare-fun m!2785499 () Bool)

(assert (=> b!2382008 m!2785499))

(declare-fun m!2785501 () Bool)

(assert (=> b!2382008 m!2785501))

(declare-fun m!2785503 () Bool)

(assert (=> d!696872 m!2785503))

(declare-fun m!2785505 () Bool)

(assert (=> d!696872 m!2785505))

(declare-fun m!2785507 () Bool)

(assert (=> d!696872 m!2785507))

(assert (=> bm!144703 d!696872))

(declare-fun b!2382020 () Bool)

(declare-fun e!1519221 () Bool)

(assert (=> b!2382020 (= e!1519221 tp_is_empty!11377)))

(declare-fun b!2382022 () Bool)

(declare-fun tp!760208 () Bool)

(assert (=> b!2382022 (= e!1519221 tp!760208)))

(assert (=> b!2381553 (= tp!760170 e!1519221)))

(declare-fun b!2382021 () Bool)

(declare-fun tp!760211 () Bool)

(declare-fun tp!760210 () Bool)

(assert (=> b!2382021 (= e!1519221 (and tp!760211 tp!760210))))

(declare-fun b!2382023 () Bool)

(declare-fun tp!760209 () Bool)

(declare-fun tp!760212 () Bool)

(assert (=> b!2382023 (= e!1519221 (and tp!760209 tp!760212))))

(assert (= (and b!2381553 (is-ElementMatch!6982 (h!33506 l!9164))) b!2382020))

(assert (= (and b!2381553 (is-Concat!11618 (h!33506 l!9164))) b!2382021))

(assert (= (and b!2381553 (is-Star!6982 (h!33506 l!9164))) b!2382022))

(assert (= (and b!2381553 (is-Union!6982 (h!33506 l!9164))) b!2382023))

(declare-fun b!2382028 () Bool)

(declare-fun e!1519224 () Bool)

(declare-fun tp!760217 () Bool)

(declare-fun tp!760218 () Bool)

(assert (=> b!2382028 (= e!1519224 (and tp!760217 tp!760218))))

(assert (=> b!2381553 (= tp!760169 e!1519224)))

(assert (= (and b!2381553 (is-Cons!28105 (t!208180 l!9164))) b!2382028))

(declare-fun b!2382033 () Bool)

(declare-fun e!1519227 () Bool)

(declare-fun tp!760221 () Bool)

(assert (=> b!2382033 (= e!1519227 (and tp_is_empty!11377 tp!760221))))

(assert (=> b!2381545 (= tp!760173 e!1519227)))

(assert (= (and b!2381545 (is-Cons!28104 (t!208179 s!9460))) b!2382033))

(declare-fun b!2382034 () Bool)

(declare-fun e!1519228 () Bool)

(assert (=> b!2382034 (= e!1519228 tp_is_empty!11377)))

(declare-fun b!2382036 () Bool)

(declare-fun tp!760222 () Bool)

(assert (=> b!2382036 (= e!1519228 tp!760222)))

(assert (=> b!2381558 (= tp!760171 e!1519228)))

(declare-fun b!2382035 () Bool)

(declare-fun tp!760225 () Bool)

(declare-fun tp!760224 () Bool)

(assert (=> b!2382035 (= e!1519228 (and tp!760225 tp!760224))))

(declare-fun b!2382037 () Bool)

(declare-fun tp!760223 () Bool)

(declare-fun tp!760226 () Bool)

(assert (=> b!2382037 (= e!1519228 (and tp!760223 tp!760226))))

(assert (= (and b!2381558 (is-ElementMatch!6982 (regOne!14476 r!13927))) b!2382034))

(assert (= (and b!2381558 (is-Concat!11618 (regOne!14476 r!13927))) b!2382035))

(assert (= (and b!2381558 (is-Star!6982 (regOne!14476 r!13927))) b!2382036))

(assert (= (and b!2381558 (is-Union!6982 (regOne!14476 r!13927))) b!2382037))

(declare-fun b!2382038 () Bool)

(declare-fun e!1519229 () Bool)

(assert (=> b!2382038 (= e!1519229 tp_is_empty!11377)))

(declare-fun b!2382040 () Bool)

(declare-fun tp!760227 () Bool)

(assert (=> b!2382040 (= e!1519229 tp!760227)))

(assert (=> b!2381558 (= tp!760166 e!1519229)))

(declare-fun b!2382039 () Bool)

(declare-fun tp!760230 () Bool)

(declare-fun tp!760229 () Bool)

(assert (=> b!2382039 (= e!1519229 (and tp!760230 tp!760229))))

(declare-fun b!2382041 () Bool)

(declare-fun tp!760228 () Bool)

(declare-fun tp!760231 () Bool)

(assert (=> b!2382041 (= e!1519229 (and tp!760228 tp!760231))))

(assert (= (and b!2381558 (is-ElementMatch!6982 (regTwo!14476 r!13927))) b!2382038))

(assert (= (and b!2381558 (is-Concat!11618 (regTwo!14476 r!13927))) b!2382039))

(assert (= (and b!2381558 (is-Star!6982 (regTwo!14476 r!13927))) b!2382040))

(assert (= (and b!2381558 (is-Union!6982 (regTwo!14476 r!13927))) b!2382041))

(declare-fun b!2382042 () Bool)

(declare-fun e!1519230 () Bool)

(assert (=> b!2382042 (= e!1519230 tp_is_empty!11377)))

(declare-fun b!2382044 () Bool)

(declare-fun tp!760232 () Bool)

(assert (=> b!2382044 (= e!1519230 tp!760232)))

(assert (=> b!2381559 (= tp!760168 e!1519230)))

(declare-fun b!2382043 () Bool)

(declare-fun tp!760235 () Bool)

(declare-fun tp!760234 () Bool)

(assert (=> b!2382043 (= e!1519230 (and tp!760235 tp!760234))))

(declare-fun b!2382045 () Bool)

(declare-fun tp!760233 () Bool)

(declare-fun tp!760236 () Bool)

(assert (=> b!2382045 (= e!1519230 (and tp!760233 tp!760236))))

(assert (= (and b!2381559 (is-ElementMatch!6982 (reg!7311 r!13927))) b!2382042))

(assert (= (and b!2381559 (is-Concat!11618 (reg!7311 r!13927))) b!2382043))

(assert (= (and b!2381559 (is-Star!6982 (reg!7311 r!13927))) b!2382044))

(assert (= (and b!2381559 (is-Union!6982 (reg!7311 r!13927))) b!2382045))

(declare-fun b!2382046 () Bool)

(declare-fun e!1519231 () Bool)

(assert (=> b!2382046 (= e!1519231 tp_is_empty!11377)))

(declare-fun b!2382048 () Bool)

(declare-fun tp!760237 () Bool)

(assert (=> b!2382048 (= e!1519231 tp!760237)))

(assert (=> b!2381547 (= tp!760172 e!1519231)))

(declare-fun b!2382047 () Bool)

(declare-fun tp!760240 () Bool)

(declare-fun tp!760239 () Bool)

(assert (=> b!2382047 (= e!1519231 (and tp!760240 tp!760239))))

(declare-fun b!2382049 () Bool)

(declare-fun tp!760238 () Bool)

(declare-fun tp!760241 () Bool)

(assert (=> b!2382049 (= e!1519231 (and tp!760238 tp!760241))))

(assert (= (and b!2381547 (is-ElementMatch!6982 (regOne!14477 r!13927))) b!2382046))

(assert (= (and b!2381547 (is-Concat!11618 (regOne!14477 r!13927))) b!2382047))

(assert (= (and b!2381547 (is-Star!6982 (regOne!14477 r!13927))) b!2382048))

(assert (= (and b!2381547 (is-Union!6982 (regOne!14477 r!13927))) b!2382049))

(declare-fun b!2382050 () Bool)

(declare-fun e!1519232 () Bool)

(assert (=> b!2382050 (= e!1519232 tp_is_empty!11377)))

(declare-fun b!2382052 () Bool)

(declare-fun tp!760242 () Bool)

(assert (=> b!2382052 (= e!1519232 tp!760242)))

(assert (=> b!2381547 (= tp!760167 e!1519232)))

(declare-fun b!2382051 () Bool)

(declare-fun tp!760245 () Bool)

(declare-fun tp!760244 () Bool)

(assert (=> b!2382051 (= e!1519232 (and tp!760245 tp!760244))))

(declare-fun b!2382053 () Bool)

(declare-fun tp!760243 () Bool)

(declare-fun tp!760246 () Bool)

(assert (=> b!2382053 (= e!1519232 (and tp!760243 tp!760246))))

(assert (= (and b!2381547 (is-ElementMatch!6982 (regTwo!14477 r!13927))) b!2382050))

(assert (= (and b!2381547 (is-Concat!11618 (regTwo!14477 r!13927))) b!2382051))

(assert (= (and b!2381547 (is-Star!6982 (regTwo!14477 r!13927))) b!2382052))

(assert (= (and b!2381547 (is-Union!6982 (regTwo!14477 r!13927))) b!2382053))

(declare-fun b_lambda!74071 () Bool)

(assert (= b_lambda!74069 (or start!233690 b_lambda!74071)))

(declare-fun bs!461937 () Bool)

(declare-fun d!696874 () Bool)

(assert (= bs!461937 (and d!696874 start!233690)))

(assert (=> bs!461937 (= (dynLambda!12099 lambda!88734 (h!33506 l!9164)) (validRegex!2707 (h!33506 l!9164)))))

(declare-fun m!2785509 () Bool)

(assert (=> bs!461937 m!2785509))

(assert (=> b!2381812 d!696874))

(push 1)

(assert (not b!2382028))

(assert (not d!696860))

(assert (not b!2381684))

(assert (not b!2381969))

(assert (not d!696804))

(assert (not b!2382043))

(assert (not d!696796))

(assert (not b!2381726))

(assert (not b!2381716))

(assert (not b!2381896))

(assert (not bm!144738))

(assert (not b!2381791))

(assert (not b!2381992))

(assert (not d!696848))

(assert (not b!2382052))

(assert (not d!696862))

(assert (not b!2381871))

(assert (not d!696830))

(assert (not b!2381902))

(assert (not b!2381972))

(assert (not b!2381813))

(assert (not d!696842))

(assert (not b!2381688))

(assert (not b!2381721))

(assert (not b!2381687))

(assert (not b!2381870))

(assert (not bm!144740))

(assert (not d!696802))

(assert (not b!2381985))

(assert (not b!2382008))

(assert (not b!2381713))

(assert (not b!2381718))

(assert (not d!696844))

(assert (not b!2381866))

(assert (not b!2381799))

(assert (not b!2381987))

(assert (not b!2381715))

(assert (not b!2382051))

(assert (not b!2381711))

(assert (not b!2382007))

(assert (not d!696846))

(assert (not b!2381900))

(assert (not b!2382033))

(assert (not b!2382039))

(assert (not b!2382037))

(assert (not d!696850))

(assert (not b!2382053))

(assert (not b!2381898))

(assert (not b!2381971))

(assert (not bm!144731))

(assert (not bm!144726))

(assert (not b!2381849))

(assert (not b!2382049))

(assert (not b!2382035))

(assert (not b!2381864))

(assert (not b!2381991))

(assert (not b!2381853))

(assert (not b!2381954))

(assert (not bm!144733))

(assert (not b!2381855))

(assert (not b!2382021))

(assert (not b!2381800))

(assert (not b!2381712))

(assert (not d!696854))

(assert (not b!2381976))

(assert (not d!696816))

(assert (not b!2381710))

(assert (not b!2381801))

(assert (not b_lambda!74071))

(assert (not d!696792))

(assert (not d!696840))

(assert (not d!696794))

(assert (not bs!461937))

(assert (not b!2381993))

(assert (not b!2382045))

(assert (not b!2381805))

(assert (not d!696824))

(assert tp_is_empty!11377)

(assert (not b!2382040))

(assert (not b!2382041))

(assert (not b!2382022))

(assert (not b!2381722))

(assert (not b!2381681))

(assert (not b!2381901))

(assert (not b!2381857))

(assert (not b!2381723))

(assert (not b!2381851))

(assert (not b!2382048))

(assert (not d!696812))

(assert (not b!2382036))

(assert (not b!2381959))

(assert (not b!2381720))

(assert (not b!2381728))

(assert (not d!696864))

(assert (not bm!144739))

(assert (not b!2381975))

(assert (not b!2381725))

(assert (not b!2382023))

(assert (not b!2381894))

(assert (not b!2381989))

(assert (not b!2381683))

(assert (not b!2382047))

(assert (not b!2381856))

(assert (not d!696818))

(assert (not b!2381970))

(assert (not b!2381682))

(assert (not b!2381798))

(assert (not d!696872))

(assert (not b!2381804))

(assert (not b!2381865))

(assert (not b!2381867))

(assert (not b!2382044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

