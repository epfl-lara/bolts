; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!238146 () Bool)

(assert start!238146)

(declare-fun b!2432422 () Bool)

(assert (=> b!2432422 true))

(assert (=> b!2432422 true))

(declare-fun b!2432413 () Bool)

(declare-fun e!1546414 () Bool)

(declare-fun tp!772566 () Bool)

(declare-fun tp!772564 () Bool)

(assert (=> b!2432413 (= e!1546414 (and tp!772566 tp!772564))))

(declare-fun b!2432414 () Bool)

(declare-fun e!1546417 () Bool)

(declare-fun tp_is_empty!11713 () Bool)

(assert (=> b!2432414 (= e!1546417 tp_is_empty!11713)))

(declare-fun b!2432415 () Bool)

(declare-fun res!1032635 () Bool)

(declare-fun e!1546415 () Bool)

(assert (=> b!2432415 (=> (not res!1032635) (not e!1546415))))

(declare-datatypes ((C!14458 0))(
  ( (C!14459 (val!8471 Int)) )
))
(declare-datatypes ((Regex!7150 0))(
  ( (ElementMatch!7150 (c!388076 C!14458)) (Concat!11786 (regOne!14812 Regex!7150) (regTwo!14812 Regex!7150)) (EmptyExpr!7150) (Star!7150 (reg!7479 Regex!7150)) (EmptyLang!7150) (Union!7150 (regOne!14813 Regex!7150) (regTwo!14813 Regex!7150)) )
))
(declare-fun r!13927 () Regex!7150)

(declare-datatypes ((List!28536 0))(
  ( (Nil!28438) (Cons!28438 (h!33839 Regex!7150) (t!208513 List!28536)) )
))
(declare-fun l!9164 () List!28536)

(declare-fun generalisedConcat!251 (List!28536) Regex!7150)

(assert (=> b!2432415 (= res!1032635 (= r!13927 (generalisedConcat!251 l!9164)))))

(declare-fun b!2432416 () Bool)

(declare-fun e!1546418 () Bool)

(declare-fun validRegex!2867 (Regex!7150) Bool)

(assert (=> b!2432416 (= e!1546418 (validRegex!2867 (regTwo!14812 r!13927)))))

(declare-fun b!2432417 () Bool)

(declare-fun e!1546413 () Bool)

(declare-fun tp!772562 () Bool)

(assert (=> b!2432417 (= e!1546413 (and tp_is_empty!11713 tp!772562))))

(declare-fun res!1032636 () Bool)

(assert (=> start!238146 (=> (not res!1032636) (not e!1546415))))

(declare-fun lambda!91732 () Int)

(declare-fun forall!5784 (List!28536 Int) Bool)

(assert (=> start!238146 (= res!1032636 (forall!5784 l!9164 lambda!91732))))

(assert (=> start!238146 e!1546415))

(assert (=> start!238146 e!1546414))

(assert (=> start!238146 e!1546417))

(assert (=> start!238146 e!1546413))

(declare-fun b!2432418 () Bool)

(declare-fun tp!772563 () Bool)

(declare-fun tp!772567 () Bool)

(assert (=> b!2432418 (= e!1546417 (and tp!772563 tp!772567))))

(declare-fun b!2432419 () Bool)

(declare-fun e!1546416 () Bool)

(assert (=> b!2432419 (= e!1546415 (not e!1546416))))

(declare-fun res!1032637 () Bool)

(assert (=> b!2432419 (=> res!1032637 e!1546416)))

(assert (=> b!2432419 (= res!1032637 (not (is-Concat!11786 r!13927)))))

(declare-datatypes ((List!28537 0))(
  ( (Nil!28439) (Cons!28439 (h!33840 C!14458) (t!208514 List!28537)) )
))
(declare-fun s!9460 () List!28537)

(declare-fun matchR!3265 (Regex!7150 List!28537) Bool)

(declare-fun matchRSpec!997 (Regex!7150 List!28537) Bool)

(assert (=> b!2432419 (= (matchR!3265 r!13927 s!9460) (matchRSpec!997 r!13927 s!9460))))

(declare-datatypes ((Unit!41683 0))(
  ( (Unit!41684) )
))
(declare-fun lt!876977 () Unit!41683)

(declare-fun mainMatchTheorem!997 (Regex!7150 List!28537) Unit!41683)

(assert (=> b!2432419 (= lt!876977 (mainMatchTheorem!997 r!13927 s!9460))))

(declare-fun b!2432420 () Bool)

(declare-fun tp!772565 () Bool)

(assert (=> b!2432420 (= e!1546417 tp!772565)))

(declare-fun b!2432421 () Bool)

(declare-fun tp!772561 () Bool)

(declare-fun tp!772560 () Bool)

(assert (=> b!2432421 (= e!1546417 (and tp!772561 tp!772560))))

(assert (=> b!2432422 (= e!1546416 e!1546418)))

(declare-fun res!1032638 () Bool)

(assert (=> b!2432422 (=> res!1032638 e!1546418)))

(assert (=> b!2432422 (= res!1032638 (not (validRegex!2867 (regOne!14812 r!13927))))))

(declare-fun lambda!91733 () Int)

(declare-datatypes ((tuple2!28056 0))(
  ( (tuple2!28057 (_1!16569 List!28537) (_2!16569 List!28537)) )
))
(declare-datatypes ((Option!5639 0))(
  ( (None!5638) (Some!5638 (v!31046 tuple2!28056)) )
))
(declare-fun isDefined!4465 (Option!5639) Bool)

(declare-fun findConcatSeparation!747 (Regex!7150 Regex!7150 List!28537 List!28537 List!28537) Option!5639)

(declare-fun Exists!1186 (Int) Bool)

(assert (=> b!2432422 (= (isDefined!4465 (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) Nil!28439 s!9460 s!9460)) (Exists!1186 lambda!91733))))

(declare-fun lt!876978 () Unit!41683)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!685 (Regex!7150 Regex!7150 List!28537) Unit!41683)

(assert (=> b!2432422 (= lt!876978 (lemmaFindConcatSeparationEquivalentToExists!685 (regOne!14812 r!13927) (regTwo!14812 r!13927) s!9460))))

(assert (= (and start!238146 res!1032636) b!2432415))

(assert (= (and b!2432415 res!1032635) b!2432419))

(assert (= (and b!2432419 (not res!1032637)) b!2432422))

(assert (= (and b!2432422 (not res!1032638)) b!2432416))

(assert (= (and start!238146 (is-Cons!28438 l!9164)) b!2432413))

(assert (= (and start!238146 (is-ElementMatch!7150 r!13927)) b!2432414))

(assert (= (and start!238146 (is-Concat!11786 r!13927)) b!2432421))

(assert (= (and start!238146 (is-Star!7150 r!13927)) b!2432420))

(assert (= (and start!238146 (is-Union!7150 r!13927)) b!2432418))

(assert (= (and start!238146 (is-Cons!28439 s!9460)) b!2432417))

(declare-fun m!2814005 () Bool)

(assert (=> b!2432416 m!2814005))

(declare-fun m!2814007 () Bool)

(assert (=> start!238146 m!2814007))

(declare-fun m!2814009 () Bool)

(assert (=> b!2432419 m!2814009))

(declare-fun m!2814011 () Bool)

(assert (=> b!2432419 m!2814011))

(declare-fun m!2814013 () Bool)

(assert (=> b!2432419 m!2814013))

(declare-fun m!2814015 () Bool)

(assert (=> b!2432422 m!2814015))

(declare-fun m!2814017 () Bool)

(assert (=> b!2432422 m!2814017))

(declare-fun m!2814019 () Bool)

(assert (=> b!2432422 m!2814019))

(assert (=> b!2432422 m!2814015))

(declare-fun m!2814021 () Bool)

(assert (=> b!2432422 m!2814021))

(declare-fun m!2814023 () Bool)

(assert (=> b!2432422 m!2814023))

(declare-fun m!2814025 () Bool)

(assert (=> b!2432415 m!2814025))

(push 1)

(assert (not b!2432416))

(assert (not b!2432413))

(assert (not b!2432415))

(assert (not b!2432419))

(assert (not b!2432422))

(assert (not start!238146))

(assert (not b!2432418))

(assert (not b!2432420))

(assert tp_is_empty!11713)

(assert (not b!2432417))

(assert (not b!2432421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!464227 () Bool)

(declare-fun d!703372 () Bool)

(assert (= bs!464227 (and d!703372 start!238146)))

(declare-fun lambda!91742 () Int)

(assert (=> bs!464227 (= lambda!91742 lambda!91732)))

(declare-fun b!2432485 () Bool)

(declare-fun e!1546453 () Bool)

(declare-fun lt!876987 () Regex!7150)

(declare-fun head!5502 (List!28536) Regex!7150)

(assert (=> b!2432485 (= e!1546453 (= lt!876987 (head!5502 l!9164)))))

(declare-fun e!1546452 () Bool)

(assert (=> d!703372 e!1546452))

(declare-fun res!1032660 () Bool)

(assert (=> d!703372 (=> (not res!1032660) (not e!1546452))))

(assert (=> d!703372 (= res!1032660 (validRegex!2867 lt!876987))))

(declare-fun e!1546455 () Regex!7150)

(assert (=> d!703372 (= lt!876987 e!1546455)))

(declare-fun c!388087 () Bool)

(declare-fun e!1546451 () Bool)

(assert (=> d!703372 (= c!388087 e!1546451)))

(declare-fun res!1032659 () Bool)

(assert (=> d!703372 (=> (not res!1032659) (not e!1546451))))

(assert (=> d!703372 (= res!1032659 (is-Cons!28438 l!9164))))

(assert (=> d!703372 (forall!5784 l!9164 lambda!91742)))

(assert (=> d!703372 (= (generalisedConcat!251 l!9164) lt!876987)))

(declare-fun b!2432486 () Bool)

(declare-fun e!1546454 () Bool)

(declare-fun isEmptyExpr!200 (Regex!7150) Bool)

(assert (=> b!2432486 (= e!1546454 (isEmptyExpr!200 lt!876987))))

(declare-fun b!2432487 () Bool)

(declare-fun e!1546456 () Regex!7150)

(assert (=> b!2432487 (= e!1546456 (Concat!11786 (h!33839 l!9164) (generalisedConcat!251 (t!208513 l!9164))))))

(declare-fun b!2432488 () Bool)

(assert (=> b!2432488 (= e!1546455 e!1546456)))

(declare-fun c!388088 () Bool)

(assert (=> b!2432488 (= c!388088 (is-Cons!28438 l!9164))))

(declare-fun b!2432489 () Bool)

(assert (=> b!2432489 (= e!1546456 EmptyExpr!7150)))

(declare-fun b!2432490 () Bool)

(declare-fun isEmpty!16475 (List!28536) Bool)

(assert (=> b!2432490 (= e!1546451 (isEmpty!16475 (t!208513 l!9164)))))

(declare-fun b!2432491 () Bool)

(declare-fun isConcat!200 (Regex!7150) Bool)

(assert (=> b!2432491 (= e!1546453 (isConcat!200 lt!876987))))

(declare-fun b!2432492 () Bool)

(assert (=> b!2432492 (= e!1546452 e!1546454)))

(declare-fun c!388089 () Bool)

(assert (=> b!2432492 (= c!388089 (isEmpty!16475 l!9164))))

(declare-fun b!2432493 () Bool)

(assert (=> b!2432493 (= e!1546454 e!1546453)))

(declare-fun c!388086 () Bool)

(declare-fun tail!3775 (List!28536) List!28536)

(assert (=> b!2432493 (= c!388086 (isEmpty!16475 (tail!3775 l!9164)))))

(declare-fun b!2432494 () Bool)

(assert (=> b!2432494 (= e!1546455 (h!33839 l!9164))))

(assert (= (and d!703372 res!1032659) b!2432490))

(assert (= (and d!703372 c!388087) b!2432494))

(assert (= (and d!703372 (not c!388087)) b!2432488))

(assert (= (and b!2432488 c!388088) b!2432487))

(assert (= (and b!2432488 (not c!388088)) b!2432489))

(assert (= (and d!703372 res!1032660) b!2432492))

(assert (= (and b!2432492 c!388089) b!2432486))

(assert (= (and b!2432492 (not c!388089)) b!2432493))

(assert (= (and b!2432493 c!388086) b!2432485))

(assert (= (and b!2432493 (not c!388086)) b!2432491))

(declare-fun m!2814049 () Bool)

(assert (=> b!2432486 m!2814049))

(declare-fun m!2814051 () Bool)

(assert (=> b!2432485 m!2814051))

(declare-fun m!2814053 () Bool)

(assert (=> b!2432492 m!2814053))

(declare-fun m!2814055 () Bool)

(assert (=> b!2432490 m!2814055))

(declare-fun m!2814057 () Bool)

(assert (=> b!2432491 m!2814057))

(declare-fun m!2814059 () Bool)

(assert (=> d!703372 m!2814059))

(declare-fun m!2814061 () Bool)

(assert (=> d!703372 m!2814061))

(declare-fun m!2814063 () Bool)

(assert (=> b!2432493 m!2814063))

(assert (=> b!2432493 m!2814063))

(declare-fun m!2814065 () Bool)

(assert (=> b!2432493 m!2814065))

(declare-fun m!2814067 () Bool)

(assert (=> b!2432487 m!2814067))

(assert (=> b!2432415 d!703372))

(declare-fun b!2432513 () Bool)

(declare-fun e!1546475 () Bool)

(declare-fun call!148941 () Bool)

(assert (=> b!2432513 (= e!1546475 call!148941)))

(declare-fun b!2432514 () Bool)

(declare-fun e!1546471 () Bool)

(declare-fun e!1546473 () Bool)

(assert (=> b!2432514 (= e!1546471 e!1546473)))

(declare-fun c!388095 () Bool)

(assert (=> b!2432514 (= c!388095 (is-Star!7150 (regTwo!14812 r!13927)))))

(declare-fun bm!148934 () Bool)

(declare-fun call!148939 () Bool)

(declare-fun call!148940 () Bool)

(assert (=> bm!148934 (= call!148939 call!148940)))

(declare-fun b!2432515 () Bool)

(declare-fun e!1546472 () Bool)

(assert (=> b!2432515 (= e!1546473 e!1546472)))

(declare-fun res!1032675 () Bool)

(declare-fun nullable!2182 (Regex!7150) Bool)

(assert (=> b!2432515 (= res!1032675 (not (nullable!2182 (reg!7479 (regTwo!14812 r!13927)))))))

(assert (=> b!2432515 (=> (not res!1032675) (not e!1546472))))

(declare-fun b!2432516 () Bool)

(declare-fun e!1546476 () Bool)

(assert (=> b!2432516 (= e!1546473 e!1546476)))

(declare-fun c!388094 () Bool)

(assert (=> b!2432516 (= c!388094 (is-Union!7150 (regTwo!14812 r!13927)))))

(declare-fun b!2432517 () Bool)

(declare-fun res!1032671 () Bool)

(declare-fun e!1546477 () Bool)

(assert (=> b!2432517 (=> res!1032671 e!1546477)))

(assert (=> b!2432517 (= res!1032671 (not (is-Concat!11786 (regTwo!14812 r!13927))))))

(assert (=> b!2432517 (= e!1546476 e!1546477)))

(declare-fun d!703374 () Bool)

(declare-fun res!1032674 () Bool)

(assert (=> d!703374 (=> res!1032674 e!1546471)))

(assert (=> d!703374 (= res!1032674 (is-ElementMatch!7150 (regTwo!14812 r!13927)))))

(assert (=> d!703374 (= (validRegex!2867 (regTwo!14812 r!13927)) e!1546471)))

(declare-fun bm!148935 () Bool)

(assert (=> bm!148935 (= call!148941 (validRegex!2867 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))))))

(declare-fun bm!148936 () Bool)

(assert (=> bm!148936 (= call!148940 (validRegex!2867 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))))))

(declare-fun b!2432518 () Bool)

(declare-fun res!1032673 () Bool)

(assert (=> b!2432518 (=> (not res!1032673) (not e!1546475))))

(assert (=> b!2432518 (= res!1032673 call!148939)))

(assert (=> b!2432518 (= e!1546476 e!1546475)))

(declare-fun b!2432519 () Bool)

(declare-fun e!1546474 () Bool)

(assert (=> b!2432519 (= e!1546477 e!1546474)))

(declare-fun res!1032672 () Bool)

(assert (=> b!2432519 (=> (not res!1032672) (not e!1546474))))

(assert (=> b!2432519 (= res!1032672 call!148941)))

(declare-fun b!2432520 () Bool)

(assert (=> b!2432520 (= e!1546474 call!148939)))

(declare-fun b!2432521 () Bool)

(assert (=> b!2432521 (= e!1546472 call!148940)))

(assert (= (and d!703374 (not res!1032674)) b!2432514))

(assert (= (and b!2432514 c!388095) b!2432515))

(assert (= (and b!2432514 (not c!388095)) b!2432516))

(assert (= (and b!2432515 res!1032675) b!2432521))

(assert (= (and b!2432516 c!388094) b!2432518))

(assert (= (and b!2432516 (not c!388094)) b!2432517))

(assert (= (and b!2432518 res!1032673) b!2432513))

(assert (= (and b!2432517 (not res!1032671)) b!2432519))

(assert (= (and b!2432519 res!1032672) b!2432520))

(assert (= (or b!2432518 b!2432520) bm!148934))

(assert (= (or b!2432513 b!2432519) bm!148935))

(assert (= (or b!2432521 bm!148934) bm!148936))

(declare-fun m!2814069 () Bool)

(assert (=> b!2432515 m!2814069))

(declare-fun m!2814073 () Bool)

(assert (=> bm!148935 m!2814073))

(declare-fun m!2814075 () Bool)

(assert (=> bm!148936 m!2814075))

(assert (=> b!2432416 d!703374))

(declare-fun d!703380 () Bool)

(declare-fun isEmpty!16476 (Option!5639) Bool)

(assert (=> d!703380 (= (isDefined!4465 (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) Nil!28439 s!9460 s!9460)) (not (isEmpty!16476 (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) Nil!28439 s!9460 s!9460))))))

(declare-fun bs!464229 () Bool)

(assert (= bs!464229 d!703380))

(assert (=> bs!464229 m!2814015))

(declare-fun m!2814077 () Bool)

(assert (=> bs!464229 m!2814077))

(assert (=> b!2432422 d!703380))

(declare-fun bs!464231 () Bool)

(declare-fun d!703382 () Bool)

(assert (= bs!464231 (and d!703382 b!2432422)))

(declare-fun lambda!91745 () Int)

(assert (=> bs!464231 (= lambda!91745 lambda!91733)))

(assert (=> d!703382 true))

(assert (=> d!703382 true))

(assert (=> d!703382 true))

(assert (=> d!703382 (= (isDefined!4465 (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) Nil!28439 s!9460 s!9460)) (Exists!1186 lambda!91745))))

(declare-fun lt!876990 () Unit!41683)

(declare-fun choose!14415 (Regex!7150 Regex!7150 List!28537) Unit!41683)

(assert (=> d!703382 (= lt!876990 (choose!14415 (regOne!14812 r!13927) (regTwo!14812 r!13927) s!9460))))

(assert (=> d!703382 (validRegex!2867 (regOne!14812 r!13927))))

(assert (=> d!703382 (= (lemmaFindConcatSeparationEquivalentToExists!685 (regOne!14812 r!13927) (regTwo!14812 r!13927) s!9460) lt!876990)))

(declare-fun bs!464232 () Bool)

(assert (= bs!464232 d!703382))

(assert (=> bs!464232 m!2814015))

(assert (=> bs!464232 m!2814017))

(assert (=> bs!464232 m!2814015))

(declare-fun m!2814081 () Bool)

(assert (=> bs!464232 m!2814081))

(declare-fun m!2814083 () Bool)

(assert (=> bs!464232 m!2814083))

(assert (=> bs!464232 m!2814021))

(assert (=> b!2432422 d!703382))

(declare-fun d!703386 () Bool)

(declare-fun choose!14416 (Int) Bool)

(assert (=> d!703386 (= (Exists!1186 lambda!91733) (choose!14416 lambda!91733))))

(declare-fun bs!464233 () Bool)

(assert (= bs!464233 d!703386))

(declare-fun m!2814085 () Bool)

(assert (=> bs!464233 m!2814085))

(assert (=> b!2432422 d!703386))

(declare-fun b!2432526 () Bool)

(declare-fun e!1546484 () Bool)

(declare-fun call!148944 () Bool)

(assert (=> b!2432526 (= e!1546484 call!148944)))

(declare-fun b!2432527 () Bool)

(declare-fun e!1546480 () Bool)

(declare-fun e!1546482 () Bool)

(assert (=> b!2432527 (= e!1546480 e!1546482)))

(declare-fun c!388097 () Bool)

(assert (=> b!2432527 (= c!388097 (is-Star!7150 (regOne!14812 r!13927)))))

(declare-fun bm!148937 () Bool)

(declare-fun call!148942 () Bool)

(declare-fun call!148943 () Bool)

(assert (=> bm!148937 (= call!148942 call!148943)))

(declare-fun b!2432528 () Bool)

(declare-fun e!1546481 () Bool)

(assert (=> b!2432528 (= e!1546482 e!1546481)))

(declare-fun res!1032684 () Bool)

(assert (=> b!2432528 (= res!1032684 (not (nullable!2182 (reg!7479 (regOne!14812 r!13927)))))))

(assert (=> b!2432528 (=> (not res!1032684) (not e!1546481))))

(declare-fun b!2432529 () Bool)

(declare-fun e!1546485 () Bool)

(assert (=> b!2432529 (= e!1546482 e!1546485)))

(declare-fun c!388096 () Bool)

(assert (=> b!2432529 (= c!388096 (is-Union!7150 (regOne!14812 r!13927)))))

(declare-fun b!2432530 () Bool)

(declare-fun res!1032680 () Bool)

(declare-fun e!1546486 () Bool)

(assert (=> b!2432530 (=> res!1032680 e!1546486)))

(assert (=> b!2432530 (= res!1032680 (not (is-Concat!11786 (regOne!14812 r!13927))))))

(assert (=> b!2432530 (= e!1546485 e!1546486)))

(declare-fun d!703388 () Bool)

(declare-fun res!1032683 () Bool)

(assert (=> d!703388 (=> res!1032683 e!1546480)))

(assert (=> d!703388 (= res!1032683 (is-ElementMatch!7150 (regOne!14812 r!13927)))))

(assert (=> d!703388 (= (validRegex!2867 (regOne!14812 r!13927)) e!1546480)))

(declare-fun bm!148938 () Bool)

(assert (=> bm!148938 (= call!148944 (validRegex!2867 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))))))

(declare-fun bm!148939 () Bool)

(assert (=> bm!148939 (= call!148943 (validRegex!2867 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))))))

(declare-fun b!2432531 () Bool)

(declare-fun res!1032682 () Bool)

(assert (=> b!2432531 (=> (not res!1032682) (not e!1546484))))

(assert (=> b!2432531 (= res!1032682 call!148942)))

(assert (=> b!2432531 (= e!1546485 e!1546484)))

(declare-fun b!2432532 () Bool)

(declare-fun e!1546483 () Bool)

(assert (=> b!2432532 (= e!1546486 e!1546483)))

(declare-fun res!1032681 () Bool)

(assert (=> b!2432532 (=> (not res!1032681) (not e!1546483))))

(assert (=> b!2432532 (= res!1032681 call!148944)))

(declare-fun b!2432533 () Bool)

(assert (=> b!2432533 (= e!1546483 call!148942)))

(declare-fun b!2432534 () Bool)

(assert (=> b!2432534 (= e!1546481 call!148943)))

(assert (= (and d!703388 (not res!1032683)) b!2432527))

(assert (= (and b!2432527 c!388097) b!2432528))

(assert (= (and b!2432527 (not c!388097)) b!2432529))

(assert (= (and b!2432528 res!1032684) b!2432534))

(assert (= (and b!2432529 c!388096) b!2432531))

(assert (= (and b!2432529 (not c!388096)) b!2432530))

(assert (= (and b!2432531 res!1032682) b!2432526))

(assert (= (and b!2432530 (not res!1032680)) b!2432532))

(assert (= (and b!2432532 res!1032681) b!2432533))

(assert (= (or b!2432531 b!2432533) bm!148937))

(assert (= (or b!2432526 b!2432532) bm!148938))

(assert (= (or b!2432534 bm!148937) bm!148939))

(declare-fun m!2814087 () Bool)

(assert (=> b!2432528 m!2814087))

(declare-fun m!2814089 () Bool)

(assert (=> bm!148938 m!2814089))

(declare-fun m!2814091 () Bool)

(assert (=> bm!148939 m!2814091))

(assert (=> b!2432422 d!703388))

(declare-fun d!703390 () Bool)

(declare-fun e!1546499 () Bool)

(assert (=> d!703390 e!1546499))

(declare-fun res!1032703 () Bool)

(assert (=> d!703390 (=> res!1032703 e!1546499)))

(declare-fun e!1546503 () Bool)

(assert (=> d!703390 (= res!1032703 e!1546503)))

(declare-fun res!1032702 () Bool)

(assert (=> d!703390 (=> (not res!1032702) (not e!1546503))))

(declare-fun lt!877002 () Option!5639)

(assert (=> d!703390 (= res!1032702 (isDefined!4465 lt!877002))))

(declare-fun e!1546501 () Option!5639)

(assert (=> d!703390 (= lt!877002 e!1546501)))

(declare-fun c!388103 () Bool)

(declare-fun e!1546500 () Bool)

(assert (=> d!703390 (= c!388103 e!1546500)))

(declare-fun res!1032701 () Bool)

(assert (=> d!703390 (=> (not res!1032701) (not e!1546500))))

(assert (=> d!703390 (= res!1032701 (matchR!3265 (regOne!14812 r!13927) Nil!28439))))

(assert (=> d!703390 (validRegex!2867 (regOne!14812 r!13927))))

(assert (=> d!703390 (= (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) Nil!28439 s!9460 s!9460) lt!877002)))

(declare-fun b!2432557 () Bool)

(declare-fun res!1032700 () Bool)

(assert (=> b!2432557 (=> (not res!1032700) (not e!1546503))))

(declare-fun get!8765 (Option!5639) tuple2!28056)

(assert (=> b!2432557 (= res!1032700 (matchR!3265 (regOne!14812 r!13927) (_1!16569 (get!8765 lt!877002))))))

(declare-fun b!2432558 () Bool)

(assert (=> b!2432558 (= e!1546501 (Some!5638 (tuple2!28057 Nil!28439 s!9460)))))

(declare-fun b!2432559 () Bool)

(declare-fun lt!877001 () Unit!41683)

(declare-fun lt!877000 () Unit!41683)

(assert (=> b!2432559 (= lt!877001 lt!877000)))

(declare-fun ++!7058 (List!28537 List!28537) List!28537)

(assert (=> b!2432559 (= (++!7058 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) (t!208514 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!684 (List!28537 C!14458 List!28537 List!28537) Unit!41683)

(assert (=> b!2432559 (= lt!877000 (lemmaMoveElementToOtherListKeepsConcatEq!684 Nil!28439 (h!33840 s!9460) (t!208514 s!9460) s!9460))))

(declare-fun e!1546502 () Option!5639)

(assert (=> b!2432559 (= e!1546502 (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) (t!208514 s!9460) s!9460))))

(declare-fun b!2432560 () Bool)

(assert (=> b!2432560 (= e!1546502 None!5638)))

(declare-fun b!2432561 () Bool)

(assert (=> b!2432561 (= e!1546500 (matchR!3265 (regTwo!14812 r!13927) s!9460))))

(declare-fun b!2432562 () Bool)

(assert (=> b!2432562 (= e!1546503 (= (++!7058 (_1!16569 (get!8765 lt!877002)) (_2!16569 (get!8765 lt!877002))) s!9460))))

(declare-fun b!2432563 () Bool)

(declare-fun res!1032699 () Bool)

(assert (=> b!2432563 (=> (not res!1032699) (not e!1546503))))

(assert (=> b!2432563 (= res!1032699 (matchR!3265 (regTwo!14812 r!13927) (_2!16569 (get!8765 lt!877002))))))

(declare-fun b!2432564 () Bool)

(assert (=> b!2432564 (= e!1546501 e!1546502)))

(declare-fun c!388102 () Bool)

(assert (=> b!2432564 (= c!388102 (is-Nil!28439 s!9460))))

(declare-fun b!2432565 () Bool)

(assert (=> b!2432565 (= e!1546499 (not (isDefined!4465 lt!877002)))))

(assert (= (and d!703390 res!1032701) b!2432561))

(assert (= (and d!703390 c!388103) b!2432558))

(assert (= (and d!703390 (not c!388103)) b!2432564))

(assert (= (and b!2432564 c!388102) b!2432560))

(assert (= (and b!2432564 (not c!388102)) b!2432559))

(assert (= (and d!703390 res!1032702) b!2432557))

(assert (= (and b!2432557 res!1032700) b!2432563))

(assert (= (and b!2432563 res!1032699) b!2432562))

(assert (= (and d!703390 (not res!1032703)) b!2432565))

(declare-fun m!2814097 () Bool)

(assert (=> b!2432557 m!2814097))

(declare-fun m!2814099 () Bool)

(assert (=> b!2432557 m!2814099))

(declare-fun m!2814101 () Bool)

(assert (=> b!2432565 m!2814101))

(declare-fun m!2814103 () Bool)

(assert (=> b!2432559 m!2814103))

(assert (=> b!2432559 m!2814103))

(declare-fun m!2814105 () Bool)

(assert (=> b!2432559 m!2814105))

(declare-fun m!2814107 () Bool)

(assert (=> b!2432559 m!2814107))

(assert (=> b!2432559 m!2814103))

(declare-fun m!2814109 () Bool)

(assert (=> b!2432559 m!2814109))

(assert (=> d!703390 m!2814101))

(declare-fun m!2814111 () Bool)

(assert (=> d!703390 m!2814111))

(assert (=> d!703390 m!2814021))

(assert (=> b!2432562 m!2814097))

(declare-fun m!2814113 () Bool)

(assert (=> b!2432562 m!2814113))

(assert (=> b!2432563 m!2814097))

(declare-fun m!2814115 () Bool)

(assert (=> b!2432563 m!2814115))

(declare-fun m!2814117 () Bool)

(assert (=> b!2432561 m!2814117))

(assert (=> b!2432422 d!703390))

(declare-fun d!703394 () Bool)

(declare-fun res!1032718 () Bool)

(declare-fun e!1546522 () Bool)

(assert (=> d!703394 (=> res!1032718 e!1546522)))

(assert (=> d!703394 (= res!1032718 (is-Nil!28438 l!9164))))

(assert (=> d!703394 (= (forall!5784 l!9164 lambda!91732) e!1546522)))

(declare-fun b!2432588 () Bool)

(declare-fun e!1546523 () Bool)

(assert (=> b!2432588 (= e!1546522 e!1546523)))

(declare-fun res!1032719 () Bool)

(assert (=> b!2432588 (=> (not res!1032719) (not e!1546523))))

(declare-fun dynLambda!12240 (Int Regex!7150) Bool)

(assert (=> b!2432588 (= res!1032719 (dynLambda!12240 lambda!91732 (h!33839 l!9164)))))

(declare-fun b!2432589 () Bool)

(assert (=> b!2432589 (= e!1546523 (forall!5784 (t!208513 l!9164) lambda!91732))))

(assert (= (and d!703394 (not res!1032718)) b!2432588))

(assert (= (and b!2432588 res!1032719) b!2432589))

(declare-fun b_lambda!74819 () Bool)

(assert (=> (not b_lambda!74819) (not b!2432588)))

(declare-fun m!2814119 () Bool)

(assert (=> b!2432588 m!2814119))

(declare-fun m!2814121 () Bool)

(assert (=> b!2432589 m!2814121))

(assert (=> start!238146 d!703394))

(declare-fun b!2432627 () Bool)

(declare-fun res!1032741 () Bool)

(declare-fun e!1546550 () Bool)

(assert (=> b!2432627 (=> res!1032741 e!1546550)))

(declare-fun isEmpty!16477 (List!28537) Bool)

(declare-fun tail!3776 (List!28537) List!28537)

(assert (=> b!2432627 (= res!1032741 (not (isEmpty!16477 (tail!3776 s!9460))))))

(declare-fun b!2432628 () Bool)

(declare-fun e!1546547 () Bool)

(declare-fun derivativeStep!1836 (Regex!7150 C!14458) Regex!7150)

(declare-fun head!5503 (List!28537) C!14458)

(assert (=> b!2432628 (= e!1546547 (matchR!3265 (derivativeStep!1836 r!13927 (head!5503 s!9460)) (tail!3776 s!9460)))))

(declare-fun bm!148951 () Bool)

(declare-fun call!148956 () Bool)

(assert (=> bm!148951 (= call!148956 (isEmpty!16477 s!9460))))

(declare-fun b!2432629 () Bool)

(declare-fun res!1032742 () Bool)

(declare-fun e!1546551 () Bool)

(assert (=> b!2432629 (=> res!1032742 e!1546551)))

(declare-fun e!1546549 () Bool)

(assert (=> b!2432629 (= res!1032742 e!1546549)))

(declare-fun res!1032747 () Bool)

(assert (=> b!2432629 (=> (not res!1032747) (not e!1546549))))

(declare-fun lt!877005 () Bool)

(assert (=> b!2432629 (= res!1032747 lt!877005)))

(declare-fun b!2432631 () Bool)

(assert (=> b!2432631 (= e!1546547 (nullable!2182 r!13927))))

(declare-fun b!2432632 () Bool)

(declare-fun e!1546546 () Bool)

(assert (=> b!2432632 (= e!1546546 (not lt!877005))))

(declare-fun b!2432633 () Bool)

(declare-fun res!1032746 () Bool)

(assert (=> b!2432633 (=> (not res!1032746) (not e!1546549))))

(assert (=> b!2432633 (= res!1032746 (not call!148956))))

(declare-fun b!2432634 () Bool)

(declare-fun e!1546545 () Bool)

(assert (=> b!2432634 (= e!1546545 (= lt!877005 call!148956))))

(declare-fun b!2432635 () Bool)

(declare-fun e!1546548 () Bool)

(assert (=> b!2432635 (= e!1546551 e!1546548)))

(declare-fun res!1032748 () Bool)

(assert (=> b!2432635 (=> (not res!1032748) (not e!1546548))))

(assert (=> b!2432635 (= res!1032748 (not lt!877005))))

(declare-fun b!2432636 () Bool)

(assert (=> b!2432636 (= e!1546549 (= (head!5503 s!9460) (c!388076 r!13927)))))

(declare-fun b!2432637 () Bool)

(declare-fun res!1032744 () Bool)

(assert (=> b!2432637 (=> res!1032744 e!1546551)))

(assert (=> b!2432637 (= res!1032744 (not (is-ElementMatch!7150 r!13927)))))

(assert (=> b!2432637 (= e!1546546 e!1546551)))

(declare-fun b!2432638 () Bool)

(declare-fun res!1032745 () Bool)

(assert (=> b!2432638 (=> (not res!1032745) (not e!1546549))))

(assert (=> b!2432638 (= res!1032745 (isEmpty!16477 (tail!3776 s!9460)))))

(declare-fun b!2432630 () Bool)

(assert (=> b!2432630 (= e!1546548 e!1546550)))

(declare-fun res!1032743 () Bool)

(assert (=> b!2432630 (=> res!1032743 e!1546550)))

(assert (=> b!2432630 (= res!1032743 call!148956)))

(declare-fun d!703396 () Bool)

(assert (=> d!703396 e!1546545))

(declare-fun c!388118 () Bool)

(assert (=> d!703396 (= c!388118 (is-EmptyExpr!7150 r!13927))))

(assert (=> d!703396 (= lt!877005 e!1546547)))

(declare-fun c!388117 () Bool)

(assert (=> d!703396 (= c!388117 (isEmpty!16477 s!9460))))

(assert (=> d!703396 (validRegex!2867 r!13927)))

(assert (=> d!703396 (= (matchR!3265 r!13927 s!9460) lt!877005)))

(declare-fun b!2432639 () Bool)

(assert (=> b!2432639 (= e!1546550 (not (= (head!5503 s!9460) (c!388076 r!13927))))))

(declare-fun b!2432640 () Bool)

(assert (=> b!2432640 (= e!1546545 e!1546546)))

(declare-fun c!388116 () Bool)

(assert (=> b!2432640 (= c!388116 (is-EmptyLang!7150 r!13927))))

(assert (= (and d!703396 c!388117) b!2432631))

(assert (= (and d!703396 (not c!388117)) b!2432628))

(assert (= (and d!703396 c!388118) b!2432634))

(assert (= (and d!703396 (not c!388118)) b!2432640))

(assert (= (and b!2432640 c!388116) b!2432632))

(assert (= (and b!2432640 (not c!388116)) b!2432637))

(assert (= (and b!2432637 (not res!1032744)) b!2432629))

(assert (= (and b!2432629 res!1032747) b!2432633))

(assert (= (and b!2432633 res!1032746) b!2432638))

(assert (= (and b!2432638 res!1032745) b!2432636))

(assert (= (and b!2432629 (not res!1032742)) b!2432635))

(assert (= (and b!2432635 res!1032748) b!2432630))

(assert (= (and b!2432630 (not res!1032743)) b!2432627))

(assert (= (and b!2432627 (not res!1032741)) b!2432639))

(assert (= (or b!2432634 b!2432630 b!2432633) bm!148951))

(declare-fun m!2814129 () Bool)

(assert (=> b!2432638 m!2814129))

(assert (=> b!2432638 m!2814129))

(declare-fun m!2814131 () Bool)

(assert (=> b!2432638 m!2814131))

(declare-fun m!2814133 () Bool)

(assert (=> b!2432639 m!2814133))

(declare-fun m!2814135 () Bool)

(assert (=> b!2432631 m!2814135))

(assert (=> b!2432636 m!2814133))

(declare-fun m!2814137 () Bool)

(assert (=> d!703396 m!2814137))

(declare-fun m!2814139 () Bool)

(assert (=> d!703396 m!2814139))

(assert (=> b!2432628 m!2814133))

(assert (=> b!2432628 m!2814133))

(declare-fun m!2814141 () Bool)

(assert (=> b!2432628 m!2814141))

(assert (=> b!2432628 m!2814129))

(assert (=> b!2432628 m!2814141))

(assert (=> b!2432628 m!2814129))

(declare-fun m!2814143 () Bool)

(assert (=> b!2432628 m!2814143))

(assert (=> b!2432627 m!2814129))

(assert (=> b!2432627 m!2814129))

(assert (=> b!2432627 m!2814131))

(assert (=> bm!148951 m!2814137))

(assert (=> b!2432419 d!703396))

(declare-fun bs!464236 () Bool)

(declare-fun b!2432683 () Bool)

(assert (= bs!464236 (and b!2432683 b!2432422)))

(declare-fun lambda!91753 () Int)

(assert (=> bs!464236 (not (= lambda!91753 lambda!91733))))

(declare-fun bs!464237 () Bool)

(assert (= bs!464237 (and b!2432683 d!703382)))

(assert (=> bs!464237 (not (= lambda!91753 lambda!91745))))

(assert (=> b!2432683 true))

(assert (=> b!2432683 true))

(declare-fun bs!464238 () Bool)

(declare-fun b!2432679 () Bool)

(assert (= bs!464238 (and b!2432679 b!2432422)))

(declare-fun lambda!91754 () Int)

(assert (=> bs!464238 (not (= lambda!91754 lambda!91733))))

(declare-fun bs!464239 () Bool)

(assert (= bs!464239 (and b!2432679 d!703382)))

(assert (=> bs!464239 (not (= lambda!91754 lambda!91745))))

(declare-fun bs!464240 () Bool)

(assert (= bs!464240 (and b!2432679 b!2432683)))

(assert (=> bs!464240 (not (= lambda!91754 lambda!91753))))

(assert (=> b!2432679 true))

(assert (=> b!2432679 true))

(declare-fun c!388130 () Bool)

(declare-fun bm!148956 () Bool)

(declare-fun call!148962 () Bool)

(assert (=> bm!148956 (= call!148962 (Exists!1186 (ite c!388130 lambda!91753 lambda!91754)))))

(declare-fun b!2432673 () Bool)

(declare-fun e!1546574 () Bool)

(declare-fun call!148961 () Bool)

(assert (=> b!2432673 (= e!1546574 call!148961)))

(declare-fun b!2432674 () Bool)

(declare-fun e!1546570 () Bool)

(assert (=> b!2432674 (= e!1546570 (= s!9460 (Cons!28439 (c!388076 r!13927) Nil!28439)))))

(declare-fun b!2432675 () Bool)

(declare-fun e!1546573 () Bool)

(assert (=> b!2432675 (= e!1546573 (matchRSpec!997 (regTwo!14813 r!13927) s!9460))))

(declare-fun bm!148957 () Bool)

(assert (=> bm!148957 (= call!148961 (isEmpty!16477 s!9460))))

(declare-fun d!703400 () Bool)

(declare-fun c!388129 () Bool)

(assert (=> d!703400 (= c!388129 (is-EmptyExpr!7150 r!13927))))

(assert (=> d!703400 (= (matchRSpec!997 r!13927 s!9460) e!1546574)))

(declare-fun b!2432676 () Bool)

(declare-fun e!1546576 () Bool)

(assert (=> b!2432676 (= e!1546574 e!1546576)))

(declare-fun res!1032767 () Bool)

(assert (=> b!2432676 (= res!1032767 (not (is-EmptyLang!7150 r!13927)))))

(assert (=> b!2432676 (=> (not res!1032767) (not e!1546576))))

(declare-fun b!2432677 () Bool)

(declare-fun e!1546572 () Bool)

(assert (=> b!2432677 (= e!1546572 e!1546573)))

(declare-fun res!1032765 () Bool)

(assert (=> b!2432677 (= res!1032765 (matchRSpec!997 (regOne!14813 r!13927) s!9460))))

(assert (=> b!2432677 (=> res!1032765 e!1546573)))

(declare-fun b!2432678 () Bool)

(declare-fun c!388127 () Bool)

(assert (=> b!2432678 (= c!388127 (is-ElementMatch!7150 r!13927))))

(assert (=> b!2432678 (= e!1546576 e!1546570)))

(declare-fun e!1546571 () Bool)

(assert (=> b!2432679 (= e!1546571 call!148962)))

(declare-fun b!2432680 () Bool)

(declare-fun c!388128 () Bool)

(assert (=> b!2432680 (= c!388128 (is-Union!7150 r!13927))))

(assert (=> b!2432680 (= e!1546570 e!1546572)))

(declare-fun b!2432681 () Bool)

(declare-fun res!1032766 () Bool)

(declare-fun e!1546575 () Bool)

(assert (=> b!2432681 (=> res!1032766 e!1546575)))

(assert (=> b!2432681 (= res!1032766 call!148961)))

(assert (=> b!2432681 (= e!1546571 e!1546575)))

(declare-fun b!2432682 () Bool)

(assert (=> b!2432682 (= e!1546572 e!1546571)))

(assert (=> b!2432682 (= c!388130 (is-Star!7150 r!13927))))

(assert (=> b!2432683 (= e!1546575 call!148962)))

(assert (= (and d!703400 c!388129) b!2432673))

(assert (= (and d!703400 (not c!388129)) b!2432676))

(assert (= (and b!2432676 res!1032767) b!2432678))

(assert (= (and b!2432678 c!388127) b!2432674))

(assert (= (and b!2432678 (not c!388127)) b!2432680))

(assert (= (and b!2432680 c!388128) b!2432677))

(assert (= (and b!2432680 (not c!388128)) b!2432682))

(assert (= (and b!2432677 (not res!1032765)) b!2432675))

(assert (= (and b!2432682 c!388130) b!2432681))

(assert (= (and b!2432682 (not c!388130)) b!2432679))

(assert (= (and b!2432681 (not res!1032766)) b!2432683))

(assert (= (or b!2432683 b!2432679) bm!148956))

(assert (= (or b!2432673 b!2432681) bm!148957))

(declare-fun m!2814145 () Bool)

(assert (=> bm!148956 m!2814145))

(declare-fun m!2814147 () Bool)

(assert (=> b!2432675 m!2814147))

(assert (=> bm!148957 m!2814137))

(declare-fun m!2814149 () Bool)

(assert (=> b!2432677 m!2814149))

(assert (=> b!2432419 d!703400))

(declare-fun d!703402 () Bool)

(assert (=> d!703402 (= (matchR!3265 r!13927 s!9460) (matchRSpec!997 r!13927 s!9460))))

(declare-fun lt!877008 () Unit!41683)

(declare-fun choose!14417 (Regex!7150 List!28537) Unit!41683)

(assert (=> d!703402 (= lt!877008 (choose!14417 r!13927 s!9460))))

(assert (=> d!703402 (validRegex!2867 r!13927)))

(assert (=> d!703402 (= (mainMatchTheorem!997 r!13927 s!9460) lt!877008)))

(declare-fun bs!464241 () Bool)

(assert (= bs!464241 d!703402))

(assert (=> bs!464241 m!2814009))

(assert (=> bs!464241 m!2814011))

(declare-fun m!2814151 () Bool)

(assert (=> bs!464241 m!2814151))

(assert (=> bs!464241 m!2814139))

(assert (=> b!2432419 d!703402))

(declare-fun b!2432706 () Bool)

(declare-fun e!1546585 () Bool)

(declare-fun tp!772604 () Bool)

(assert (=> b!2432706 (= e!1546585 tp!772604)))

(declare-fun b!2432705 () Bool)

(declare-fun tp!772602 () Bool)

(declare-fun tp!772603 () Bool)

(assert (=> b!2432705 (= e!1546585 (and tp!772602 tp!772603))))

(declare-fun b!2432704 () Bool)

(assert (=> b!2432704 (= e!1546585 tp_is_empty!11713)))

(declare-fun b!2432707 () Bool)

(declare-fun tp!772605 () Bool)

(declare-fun tp!772606 () Bool)

(assert (=> b!2432707 (= e!1546585 (and tp!772605 tp!772606))))

(assert (=> b!2432420 (= tp!772565 e!1546585)))

(assert (= (and b!2432420 (is-ElementMatch!7150 (reg!7479 r!13927))) b!2432704))

(assert (= (and b!2432420 (is-Concat!11786 (reg!7479 r!13927))) b!2432705))

(assert (= (and b!2432420 (is-Star!7150 (reg!7479 r!13927))) b!2432706))

(assert (= (and b!2432420 (is-Union!7150 (reg!7479 r!13927))) b!2432707))

(declare-fun b!2432710 () Bool)

(declare-fun e!1546586 () Bool)

(declare-fun tp!772609 () Bool)

(assert (=> b!2432710 (= e!1546586 tp!772609)))

(declare-fun b!2432709 () Bool)

(declare-fun tp!772607 () Bool)

(declare-fun tp!772608 () Bool)

(assert (=> b!2432709 (= e!1546586 (and tp!772607 tp!772608))))

(declare-fun b!2432708 () Bool)

(assert (=> b!2432708 (= e!1546586 tp_is_empty!11713)))

(declare-fun b!2432711 () Bool)

(declare-fun tp!772610 () Bool)

(declare-fun tp!772611 () Bool)

(assert (=> b!2432711 (= e!1546586 (and tp!772610 tp!772611))))

(assert (=> b!2432421 (= tp!772561 e!1546586)))

(assert (= (and b!2432421 (is-ElementMatch!7150 (regOne!14812 r!13927))) b!2432708))

(assert (= (and b!2432421 (is-Concat!11786 (regOne!14812 r!13927))) b!2432709))

(assert (= (and b!2432421 (is-Star!7150 (regOne!14812 r!13927))) b!2432710))

(assert (= (and b!2432421 (is-Union!7150 (regOne!14812 r!13927))) b!2432711))

(declare-fun b!2432714 () Bool)

(declare-fun e!1546587 () Bool)

(declare-fun tp!772614 () Bool)

(assert (=> b!2432714 (= e!1546587 tp!772614)))

(declare-fun b!2432713 () Bool)

(declare-fun tp!772612 () Bool)

(declare-fun tp!772613 () Bool)

(assert (=> b!2432713 (= e!1546587 (and tp!772612 tp!772613))))

(declare-fun b!2432712 () Bool)

(assert (=> b!2432712 (= e!1546587 tp_is_empty!11713)))

(declare-fun b!2432715 () Bool)

(declare-fun tp!772615 () Bool)

(declare-fun tp!772616 () Bool)

(assert (=> b!2432715 (= e!1546587 (and tp!772615 tp!772616))))

(assert (=> b!2432421 (= tp!772560 e!1546587)))

(assert (= (and b!2432421 (is-ElementMatch!7150 (regTwo!14812 r!13927))) b!2432712))

(assert (= (and b!2432421 (is-Concat!11786 (regTwo!14812 r!13927))) b!2432713))

(assert (= (and b!2432421 (is-Star!7150 (regTwo!14812 r!13927))) b!2432714))

(assert (= (and b!2432421 (is-Union!7150 (regTwo!14812 r!13927))) b!2432715))

(declare-fun b!2432720 () Bool)

(declare-fun e!1546590 () Bool)

(declare-fun tp!772619 () Bool)

(assert (=> b!2432720 (= e!1546590 (and tp_is_empty!11713 tp!772619))))

(assert (=> b!2432417 (= tp!772562 e!1546590)))

(assert (= (and b!2432417 (is-Cons!28439 (t!208514 s!9460))) b!2432720))

(declare-fun b!2432723 () Bool)

(declare-fun e!1546591 () Bool)

(declare-fun tp!772622 () Bool)

(assert (=> b!2432723 (= e!1546591 tp!772622)))

(declare-fun b!2432722 () Bool)

(declare-fun tp!772620 () Bool)

(declare-fun tp!772621 () Bool)

(assert (=> b!2432722 (= e!1546591 (and tp!772620 tp!772621))))

(declare-fun b!2432721 () Bool)

(assert (=> b!2432721 (= e!1546591 tp_is_empty!11713)))

(declare-fun b!2432724 () Bool)

(declare-fun tp!772623 () Bool)

(declare-fun tp!772624 () Bool)

(assert (=> b!2432724 (= e!1546591 (and tp!772623 tp!772624))))

(assert (=> b!2432418 (= tp!772563 e!1546591)))

(assert (= (and b!2432418 (is-ElementMatch!7150 (regOne!14813 r!13927))) b!2432721))

(assert (= (and b!2432418 (is-Concat!11786 (regOne!14813 r!13927))) b!2432722))

(assert (= (and b!2432418 (is-Star!7150 (regOne!14813 r!13927))) b!2432723))

(assert (= (and b!2432418 (is-Union!7150 (regOne!14813 r!13927))) b!2432724))

(declare-fun b!2432727 () Bool)

(declare-fun e!1546592 () Bool)

(declare-fun tp!772627 () Bool)

(assert (=> b!2432727 (= e!1546592 tp!772627)))

(declare-fun b!2432726 () Bool)

(declare-fun tp!772625 () Bool)

(declare-fun tp!772626 () Bool)

(assert (=> b!2432726 (= e!1546592 (and tp!772625 tp!772626))))

(declare-fun b!2432725 () Bool)

(assert (=> b!2432725 (= e!1546592 tp_is_empty!11713)))

(declare-fun b!2432728 () Bool)

(declare-fun tp!772628 () Bool)

(declare-fun tp!772629 () Bool)

(assert (=> b!2432728 (= e!1546592 (and tp!772628 tp!772629))))

(assert (=> b!2432418 (= tp!772567 e!1546592)))

(assert (= (and b!2432418 (is-ElementMatch!7150 (regTwo!14813 r!13927))) b!2432725))

(assert (= (and b!2432418 (is-Concat!11786 (regTwo!14813 r!13927))) b!2432726))

(assert (= (and b!2432418 (is-Star!7150 (regTwo!14813 r!13927))) b!2432727))

(assert (= (and b!2432418 (is-Union!7150 (regTwo!14813 r!13927))) b!2432728))

(declare-fun b!2432731 () Bool)

(declare-fun e!1546593 () Bool)

(declare-fun tp!772632 () Bool)

(assert (=> b!2432731 (= e!1546593 tp!772632)))

(declare-fun b!2432730 () Bool)

(declare-fun tp!772630 () Bool)

(declare-fun tp!772631 () Bool)

(assert (=> b!2432730 (= e!1546593 (and tp!772630 tp!772631))))

(declare-fun b!2432729 () Bool)

(assert (=> b!2432729 (= e!1546593 tp_is_empty!11713)))

(declare-fun b!2432732 () Bool)

(declare-fun tp!772633 () Bool)

(declare-fun tp!772634 () Bool)

(assert (=> b!2432732 (= e!1546593 (and tp!772633 tp!772634))))

(assert (=> b!2432413 (= tp!772566 e!1546593)))

(assert (= (and b!2432413 (is-ElementMatch!7150 (h!33839 l!9164))) b!2432729))

(assert (= (and b!2432413 (is-Concat!11786 (h!33839 l!9164))) b!2432730))

(assert (= (and b!2432413 (is-Star!7150 (h!33839 l!9164))) b!2432731))

(assert (= (and b!2432413 (is-Union!7150 (h!33839 l!9164))) b!2432732))

(declare-fun b!2432737 () Bool)

(declare-fun e!1546597 () Bool)

(declare-fun tp!772639 () Bool)

(declare-fun tp!772640 () Bool)

(assert (=> b!2432737 (= e!1546597 (and tp!772639 tp!772640))))

(assert (=> b!2432413 (= tp!772564 e!1546597)))

(assert (= (and b!2432413 (is-Cons!28438 (t!208513 l!9164))) b!2432737))

(declare-fun b_lambda!74821 () Bool)

(assert (= b_lambda!74819 (or start!238146 b_lambda!74821)))

(declare-fun bs!464242 () Bool)

(declare-fun d!703404 () Bool)

(assert (= bs!464242 (and d!703404 start!238146)))

(assert (=> bs!464242 (= (dynLambda!12240 lambda!91732 (h!33839 l!9164)) (validRegex!2867 (h!33839 l!9164)))))

(declare-fun m!2814153 () Bool)

(assert (=> bs!464242 m!2814153))

(assert (=> b!2432588 d!703404))

(push 1)

(assert (not b!2432528))

(assert (not b!2432726))

(assert (not b!2432720))

(assert (not b!2432728))

(assert (not b!2432737))

(assert tp_is_empty!11713)

(assert (not b!2432711))

(assert (not b!2432631))

(assert (not b!2432492))

(assert (not b!2432722))

(assert (not b!2432636))

(assert (not b!2432638))

(assert (not b!2432565))

(assert (not b!2432677))

(assert (not bm!148956))

(assert (not b!2432707))

(assert (not b!2432559))

(assert (not bm!148957))

(assert (not b!2432706))

(assert (not bm!148936))

(assert (not b!2432715))

(assert (not b!2432675))

(assert (not b!2432486))

(assert (not b!2432627))

(assert (not d!703390))

(assert (not b!2432727))

(assert (not b!2432731))

(assert (not b!2432487))

(assert (not bm!148951))

(assert (not d!703386))

(assert (not b!2432493))

(assert (not b!2432490))

(assert (not b!2432710))

(assert (not b!2432709))

(assert (not b!2432732))

(assert (not d!703396))

(assert (not b!2432628))

(assert (not b_lambda!74821))

(assert (not d!703382))

(assert (not bm!148939))

(assert (not b!2432491))

(assert (not b!2432723))

(assert (not b!2432714))

(assert (not d!703380))

(assert (not d!703372))

(assert (not b!2432557))

(assert (not bm!148938))

(assert (not b!2432730))

(assert (not b!2432515))

(assert (not b!2432562))

(assert (not b!2432639))

(assert (not b!2432705))

(assert (not d!703402))

(assert (not b!2432485))

(assert (not b!2432724))

(assert (not b!2432713))

(assert (not b!2432561))

(assert (not bs!464242))

(assert (not b!2432589))

(assert (not bm!148935))

(assert (not b!2432563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2432929 () Bool)

(declare-fun e!1546701 () Bool)

(declare-fun call!148977 () Bool)

(assert (=> b!2432929 (= e!1546701 call!148977)))

(declare-fun b!2432930 () Bool)

(declare-fun e!1546697 () Bool)

(declare-fun e!1546699 () Bool)

(assert (=> b!2432930 (= e!1546697 e!1546699)))

(declare-fun c!388173 () Bool)

(assert (=> b!2432930 (= c!388173 (is-Star!7150 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))))))

(declare-fun bm!148970 () Bool)

(declare-fun call!148975 () Bool)

(declare-fun call!148976 () Bool)

(assert (=> bm!148970 (= call!148975 call!148976)))

(declare-fun b!2432931 () Bool)

(declare-fun e!1546698 () Bool)

(assert (=> b!2432931 (= e!1546699 e!1546698)))

(declare-fun res!1032847 () Bool)

(assert (=> b!2432931 (= res!1032847 (not (nullable!2182 (reg!7479 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))))))))

(assert (=> b!2432931 (=> (not res!1032847) (not e!1546698))))

(declare-fun b!2432932 () Bool)

(declare-fun e!1546702 () Bool)

(assert (=> b!2432932 (= e!1546699 e!1546702)))

(declare-fun c!388172 () Bool)

(assert (=> b!2432932 (= c!388172 (is-Union!7150 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))))))

(declare-fun b!2432933 () Bool)

(declare-fun res!1032843 () Bool)

(declare-fun e!1546703 () Bool)

(assert (=> b!2432933 (=> res!1032843 e!1546703)))

(assert (=> b!2432933 (= res!1032843 (not (is-Concat!11786 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927))))))))

(assert (=> b!2432933 (= e!1546702 e!1546703)))

(declare-fun d!703420 () Bool)

(declare-fun res!1032846 () Bool)

(assert (=> d!703420 (=> res!1032846 e!1546697)))

(assert (=> d!703420 (= res!1032846 (is-ElementMatch!7150 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))))))

(assert (=> d!703420 (= (validRegex!2867 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))) e!1546697)))

(declare-fun bm!148971 () Bool)

(assert (=> bm!148971 (= call!148977 (validRegex!2867 (ite c!388172 (regTwo!14813 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))) (regOne!14812 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))))))))

(declare-fun bm!148972 () Bool)

(assert (=> bm!148972 (= call!148976 (validRegex!2867 (ite c!388173 (reg!7479 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))) (ite c!388172 (regOne!14813 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927)))) (regTwo!14812 (ite c!388096 (regTwo!14813 (regOne!14812 r!13927)) (regOne!14812 (regOne!14812 r!13927))))))))))

(declare-fun b!2432934 () Bool)

(declare-fun res!1032845 () Bool)

(assert (=> b!2432934 (=> (not res!1032845) (not e!1546701))))

(assert (=> b!2432934 (= res!1032845 call!148975)))

(assert (=> b!2432934 (= e!1546702 e!1546701)))

(declare-fun b!2432935 () Bool)

(declare-fun e!1546700 () Bool)

(assert (=> b!2432935 (= e!1546703 e!1546700)))

(declare-fun res!1032844 () Bool)

(assert (=> b!2432935 (=> (not res!1032844) (not e!1546700))))

(assert (=> b!2432935 (= res!1032844 call!148977)))

(declare-fun b!2432936 () Bool)

(assert (=> b!2432936 (= e!1546700 call!148975)))

(declare-fun b!2432937 () Bool)

(assert (=> b!2432937 (= e!1546698 call!148976)))

(assert (= (and d!703420 (not res!1032846)) b!2432930))

(assert (= (and b!2432930 c!388173) b!2432931))

(assert (= (and b!2432930 (not c!388173)) b!2432932))

(assert (= (and b!2432931 res!1032847) b!2432937))

(assert (= (and b!2432932 c!388172) b!2432934))

(assert (= (and b!2432932 (not c!388172)) b!2432933))

(assert (= (and b!2432934 res!1032845) b!2432929))

(assert (= (and b!2432933 (not res!1032843)) b!2432935))

(assert (= (and b!2432935 res!1032844) b!2432936))

(assert (= (or b!2432934 b!2432936) bm!148970))

(assert (= (or b!2432929 b!2432935) bm!148971))

(assert (= (or b!2432937 bm!148970) bm!148972))

(declare-fun m!2814233 () Bool)

(assert (=> b!2432931 m!2814233))

(declare-fun m!2814235 () Bool)

(assert (=> bm!148971 m!2814235))

(declare-fun m!2814237 () Bool)

(assert (=> bm!148972 m!2814237))

(assert (=> bm!148938 d!703420))

(declare-fun d!703422 () Bool)

(assert (=> d!703422 (= (head!5503 s!9460) (h!33840 s!9460))))

(assert (=> b!2432636 d!703422))

(declare-fun b!2432938 () Bool)

(declare-fun e!1546708 () Bool)

(declare-fun call!148980 () Bool)

(assert (=> b!2432938 (= e!1546708 call!148980)))

(declare-fun b!2432939 () Bool)

(declare-fun e!1546704 () Bool)

(declare-fun e!1546706 () Bool)

(assert (=> b!2432939 (= e!1546704 e!1546706)))

(declare-fun c!388175 () Bool)

(assert (=> b!2432939 (= c!388175 (is-Star!7150 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))))))

(declare-fun bm!148973 () Bool)

(declare-fun call!148978 () Bool)

(declare-fun call!148979 () Bool)

(assert (=> bm!148973 (= call!148978 call!148979)))

(declare-fun b!2432940 () Bool)

(declare-fun e!1546705 () Bool)

(assert (=> b!2432940 (= e!1546706 e!1546705)))

(declare-fun res!1032852 () Bool)

(assert (=> b!2432940 (= res!1032852 (not (nullable!2182 (reg!7479 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))))))))

(assert (=> b!2432940 (=> (not res!1032852) (not e!1546705))))

(declare-fun b!2432941 () Bool)

(declare-fun e!1546709 () Bool)

(assert (=> b!2432941 (= e!1546706 e!1546709)))

(declare-fun c!388174 () Bool)

(assert (=> b!2432941 (= c!388174 (is-Union!7150 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))))))

(declare-fun b!2432942 () Bool)

(declare-fun res!1032848 () Bool)

(declare-fun e!1546710 () Bool)

(assert (=> b!2432942 (=> res!1032848 e!1546710)))

(assert (=> b!2432942 (= res!1032848 (not (is-Concat!11786 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927)))))))))

(assert (=> b!2432942 (= e!1546709 e!1546710)))

(declare-fun d!703424 () Bool)

(declare-fun res!1032851 () Bool)

(assert (=> d!703424 (=> res!1032851 e!1546704)))

(assert (=> d!703424 (= res!1032851 (is-ElementMatch!7150 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))))))

(assert (=> d!703424 (= (validRegex!2867 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))) e!1546704)))

(declare-fun bm!148974 () Bool)

(assert (=> bm!148974 (= call!148980 (validRegex!2867 (ite c!388174 (regTwo!14813 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))) (regOne!14812 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))))))))

(declare-fun bm!148975 () Bool)

(assert (=> bm!148975 (= call!148979 (validRegex!2867 (ite c!388175 (reg!7479 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))) (ite c!388174 (regOne!14813 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927))))) (regTwo!14812 (ite c!388097 (reg!7479 (regOne!14812 r!13927)) (ite c!388096 (regOne!14813 (regOne!14812 r!13927)) (regTwo!14812 (regOne!14812 r!13927)))))))))))

(declare-fun b!2432943 () Bool)

(declare-fun res!1032850 () Bool)

(assert (=> b!2432943 (=> (not res!1032850) (not e!1546708))))

(assert (=> b!2432943 (= res!1032850 call!148978)))

(assert (=> b!2432943 (= e!1546709 e!1546708)))

(declare-fun b!2432944 () Bool)

(declare-fun e!1546707 () Bool)

(assert (=> b!2432944 (= e!1546710 e!1546707)))

(declare-fun res!1032849 () Bool)

(assert (=> b!2432944 (=> (not res!1032849) (not e!1546707))))

(assert (=> b!2432944 (= res!1032849 call!148980)))

(declare-fun b!2432945 () Bool)

(assert (=> b!2432945 (= e!1546707 call!148978)))

(declare-fun b!2432946 () Bool)

(assert (=> b!2432946 (= e!1546705 call!148979)))

(assert (= (and d!703424 (not res!1032851)) b!2432939))

(assert (= (and b!2432939 c!388175) b!2432940))

(assert (= (and b!2432939 (not c!388175)) b!2432941))

(assert (= (and b!2432940 res!1032852) b!2432946))

(assert (= (and b!2432941 c!388174) b!2432943))

(assert (= (and b!2432941 (not c!388174)) b!2432942))

(assert (= (and b!2432943 res!1032850) b!2432938))

(assert (= (and b!2432942 (not res!1032848)) b!2432944))

(assert (= (and b!2432944 res!1032849) b!2432945))

(assert (= (or b!2432943 b!2432945) bm!148973))

(assert (= (or b!2432938 b!2432944) bm!148974))

(assert (= (or b!2432946 bm!148973) bm!148975))

(declare-fun m!2814239 () Bool)

(assert (=> b!2432940 m!2814239))

(declare-fun m!2814241 () Bool)

(assert (=> bm!148974 m!2814241))

(declare-fun m!2814243 () Bool)

(assert (=> bm!148975 m!2814243))

(assert (=> bm!148939 d!703424))

(assert (=> b!2432639 d!703422))

(declare-fun d!703426 () Bool)

(assert (=> d!703426 (= (isDefined!4465 lt!877002) (not (isEmpty!16476 lt!877002)))))

(declare-fun bs!464251 () Bool)

(assert (= bs!464251 d!703426))

(declare-fun m!2814245 () Bool)

(assert (=> bs!464251 m!2814245))

(assert (=> b!2432565 d!703426))

(declare-fun d!703428 () Bool)

(assert (=> d!703428 (= (isEmpty!16477 (tail!3776 s!9460)) (is-Nil!28439 (tail!3776 s!9460)))))

(assert (=> b!2432638 d!703428))

(declare-fun d!703430 () Bool)

(assert (=> d!703430 (= (tail!3776 s!9460) (t!208514 s!9460))))

(assert (=> b!2432638 d!703430))

(declare-fun bs!464252 () Bool)

(declare-fun d!703432 () Bool)

(assert (= bs!464252 (and d!703432 start!238146)))

(declare-fun lambda!91764 () Int)

(assert (=> bs!464252 (= lambda!91764 lambda!91732)))

(declare-fun bs!464253 () Bool)

(assert (= bs!464253 (and d!703432 d!703372)))

(assert (=> bs!464253 (= lambda!91764 lambda!91742)))

(declare-fun b!2432947 () Bool)

(declare-fun e!1546713 () Bool)

(declare-fun lt!877027 () Regex!7150)

(assert (=> b!2432947 (= e!1546713 (= lt!877027 (head!5502 (t!208513 l!9164))))))

(declare-fun e!1546712 () Bool)

(assert (=> d!703432 e!1546712))

(declare-fun res!1032854 () Bool)

(assert (=> d!703432 (=> (not res!1032854) (not e!1546712))))

(assert (=> d!703432 (= res!1032854 (validRegex!2867 lt!877027))))

(declare-fun e!1546715 () Regex!7150)

(assert (=> d!703432 (= lt!877027 e!1546715)))

(declare-fun c!388177 () Bool)

(declare-fun e!1546711 () Bool)

(assert (=> d!703432 (= c!388177 e!1546711)))

(declare-fun res!1032853 () Bool)

(assert (=> d!703432 (=> (not res!1032853) (not e!1546711))))

(assert (=> d!703432 (= res!1032853 (is-Cons!28438 (t!208513 l!9164)))))

(assert (=> d!703432 (forall!5784 (t!208513 l!9164) lambda!91764)))

(assert (=> d!703432 (= (generalisedConcat!251 (t!208513 l!9164)) lt!877027)))

(declare-fun b!2432948 () Bool)

(declare-fun e!1546714 () Bool)

(assert (=> b!2432948 (= e!1546714 (isEmptyExpr!200 lt!877027))))

(declare-fun b!2432949 () Bool)

(declare-fun e!1546716 () Regex!7150)

(assert (=> b!2432949 (= e!1546716 (Concat!11786 (h!33839 (t!208513 l!9164)) (generalisedConcat!251 (t!208513 (t!208513 l!9164)))))))

(declare-fun b!2432950 () Bool)

(assert (=> b!2432950 (= e!1546715 e!1546716)))

(declare-fun c!388178 () Bool)

(assert (=> b!2432950 (= c!388178 (is-Cons!28438 (t!208513 l!9164)))))

(declare-fun b!2432951 () Bool)

(assert (=> b!2432951 (= e!1546716 EmptyExpr!7150)))

(declare-fun b!2432952 () Bool)

(assert (=> b!2432952 (= e!1546711 (isEmpty!16475 (t!208513 (t!208513 l!9164))))))

(declare-fun b!2432953 () Bool)

(assert (=> b!2432953 (= e!1546713 (isConcat!200 lt!877027))))

(declare-fun b!2432954 () Bool)

(assert (=> b!2432954 (= e!1546712 e!1546714)))

(declare-fun c!388179 () Bool)

(assert (=> b!2432954 (= c!388179 (isEmpty!16475 (t!208513 l!9164)))))

(declare-fun b!2432955 () Bool)

(assert (=> b!2432955 (= e!1546714 e!1546713)))

(declare-fun c!388176 () Bool)

(assert (=> b!2432955 (= c!388176 (isEmpty!16475 (tail!3775 (t!208513 l!9164))))))

(declare-fun b!2432956 () Bool)

(assert (=> b!2432956 (= e!1546715 (h!33839 (t!208513 l!9164)))))

(assert (= (and d!703432 res!1032853) b!2432952))

(assert (= (and d!703432 c!388177) b!2432956))

(assert (= (and d!703432 (not c!388177)) b!2432950))

(assert (= (and b!2432950 c!388178) b!2432949))

(assert (= (and b!2432950 (not c!388178)) b!2432951))

(assert (= (and d!703432 res!1032854) b!2432954))

(assert (= (and b!2432954 c!388179) b!2432948))

(assert (= (and b!2432954 (not c!388179)) b!2432955))

(assert (= (and b!2432955 c!388176) b!2432947))

(assert (= (and b!2432955 (not c!388176)) b!2432953))

(declare-fun m!2814247 () Bool)

(assert (=> b!2432948 m!2814247))

(declare-fun m!2814249 () Bool)

(assert (=> b!2432947 m!2814249))

(assert (=> b!2432954 m!2814055))

(declare-fun m!2814251 () Bool)

(assert (=> b!2432952 m!2814251))

(declare-fun m!2814253 () Bool)

(assert (=> b!2432953 m!2814253))

(declare-fun m!2814255 () Bool)

(assert (=> d!703432 m!2814255))

(declare-fun m!2814257 () Bool)

(assert (=> d!703432 m!2814257))

(declare-fun m!2814259 () Bool)

(assert (=> b!2432955 m!2814259))

(assert (=> b!2432955 m!2814259))

(declare-fun m!2814261 () Bool)

(assert (=> b!2432955 m!2814261))

(declare-fun m!2814263 () Bool)

(assert (=> b!2432949 m!2814263))

(assert (=> b!2432487 d!703432))

(declare-fun b!2432957 () Bool)

(declare-fun e!1546721 () Bool)

(declare-fun call!148983 () Bool)

(assert (=> b!2432957 (= e!1546721 call!148983)))

(declare-fun b!2432958 () Bool)

(declare-fun e!1546717 () Bool)

(declare-fun e!1546719 () Bool)

(assert (=> b!2432958 (= e!1546717 e!1546719)))

(declare-fun c!388181 () Bool)

(assert (=> b!2432958 (= c!388181 (is-Star!7150 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))))))

(declare-fun bm!148976 () Bool)

(declare-fun call!148981 () Bool)

(declare-fun call!148982 () Bool)

(assert (=> bm!148976 (= call!148981 call!148982)))

(declare-fun b!2432959 () Bool)

(declare-fun e!1546718 () Bool)

(assert (=> b!2432959 (= e!1546719 e!1546718)))

(declare-fun res!1032859 () Bool)

(assert (=> b!2432959 (= res!1032859 (not (nullable!2182 (reg!7479 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))))))))

(assert (=> b!2432959 (=> (not res!1032859) (not e!1546718))))

(declare-fun b!2432960 () Bool)

(declare-fun e!1546722 () Bool)

(assert (=> b!2432960 (= e!1546719 e!1546722)))

(declare-fun c!388180 () Bool)

(assert (=> b!2432960 (= c!388180 (is-Union!7150 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))))))

(declare-fun b!2432961 () Bool)

(declare-fun res!1032855 () Bool)

(declare-fun e!1546723 () Bool)

(assert (=> b!2432961 (=> res!1032855 e!1546723)))

(assert (=> b!2432961 (= res!1032855 (not (is-Concat!11786 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927))))))))

(assert (=> b!2432961 (= e!1546722 e!1546723)))

(declare-fun d!703434 () Bool)

(declare-fun res!1032858 () Bool)

(assert (=> d!703434 (=> res!1032858 e!1546717)))

(assert (=> d!703434 (= res!1032858 (is-ElementMatch!7150 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))))))

(assert (=> d!703434 (= (validRegex!2867 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))) e!1546717)))

(declare-fun bm!148977 () Bool)

(assert (=> bm!148977 (= call!148983 (validRegex!2867 (ite c!388180 (regTwo!14813 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))) (regOne!14812 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))))))))

(declare-fun bm!148978 () Bool)

(assert (=> bm!148978 (= call!148982 (validRegex!2867 (ite c!388181 (reg!7479 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))) (ite c!388180 (regOne!14813 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927)))) (regTwo!14812 (ite c!388094 (regTwo!14813 (regTwo!14812 r!13927)) (regOne!14812 (regTwo!14812 r!13927))))))))))

(declare-fun b!2432962 () Bool)

(declare-fun res!1032857 () Bool)

(assert (=> b!2432962 (=> (not res!1032857) (not e!1546721))))

(assert (=> b!2432962 (= res!1032857 call!148981)))

(assert (=> b!2432962 (= e!1546722 e!1546721)))

(declare-fun b!2432963 () Bool)

(declare-fun e!1546720 () Bool)

(assert (=> b!2432963 (= e!1546723 e!1546720)))

(declare-fun res!1032856 () Bool)

(assert (=> b!2432963 (=> (not res!1032856) (not e!1546720))))

(assert (=> b!2432963 (= res!1032856 call!148983)))

(declare-fun b!2432964 () Bool)

(assert (=> b!2432964 (= e!1546720 call!148981)))

(declare-fun b!2432965 () Bool)

(assert (=> b!2432965 (= e!1546718 call!148982)))

(assert (= (and d!703434 (not res!1032858)) b!2432958))

(assert (= (and b!2432958 c!388181) b!2432959))

(assert (= (and b!2432958 (not c!388181)) b!2432960))

(assert (= (and b!2432959 res!1032859) b!2432965))

(assert (= (and b!2432960 c!388180) b!2432962))

(assert (= (and b!2432960 (not c!388180)) b!2432961))

(assert (= (and b!2432962 res!1032857) b!2432957))

(assert (= (and b!2432961 (not res!1032855)) b!2432963))

(assert (= (and b!2432963 res!1032856) b!2432964))

(assert (= (or b!2432962 b!2432964) bm!148976))

(assert (= (or b!2432957 b!2432963) bm!148977))

(assert (= (or b!2432965 bm!148976) bm!148978))

(declare-fun m!2814265 () Bool)

(assert (=> b!2432959 m!2814265))

(declare-fun m!2814267 () Bool)

(assert (=> bm!148977 m!2814267))

(declare-fun m!2814269 () Bool)

(assert (=> bm!148978 m!2814269))

(assert (=> bm!148935 d!703434))

(declare-fun b!2432966 () Bool)

(declare-fun e!1546728 () Bool)

(declare-fun call!148986 () Bool)

(assert (=> b!2432966 (= e!1546728 call!148986)))

(declare-fun b!2432967 () Bool)

(declare-fun e!1546724 () Bool)

(declare-fun e!1546726 () Bool)

(assert (=> b!2432967 (= e!1546724 e!1546726)))

(declare-fun c!388183 () Bool)

(assert (=> b!2432967 (= c!388183 (is-Star!7150 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))))))

(declare-fun bm!148979 () Bool)

(declare-fun call!148984 () Bool)

(declare-fun call!148985 () Bool)

(assert (=> bm!148979 (= call!148984 call!148985)))

(declare-fun b!2432968 () Bool)

(declare-fun e!1546725 () Bool)

(assert (=> b!2432968 (= e!1546726 e!1546725)))

(declare-fun res!1032864 () Bool)

(assert (=> b!2432968 (= res!1032864 (not (nullable!2182 (reg!7479 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))))))))

(assert (=> b!2432968 (=> (not res!1032864) (not e!1546725))))

(declare-fun b!2432969 () Bool)

(declare-fun e!1546729 () Bool)

(assert (=> b!2432969 (= e!1546726 e!1546729)))

(declare-fun c!388182 () Bool)

(assert (=> b!2432969 (= c!388182 (is-Union!7150 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))))))

(declare-fun b!2432970 () Bool)

(declare-fun res!1032860 () Bool)

(declare-fun e!1546730 () Bool)

(assert (=> b!2432970 (=> res!1032860 e!1546730)))

(assert (=> b!2432970 (= res!1032860 (not (is-Concat!11786 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927)))))))))

(assert (=> b!2432970 (= e!1546729 e!1546730)))

(declare-fun d!703436 () Bool)

(declare-fun res!1032863 () Bool)

(assert (=> d!703436 (=> res!1032863 e!1546724)))

(assert (=> d!703436 (= res!1032863 (is-ElementMatch!7150 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))))))

(assert (=> d!703436 (= (validRegex!2867 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))) e!1546724)))

(declare-fun bm!148980 () Bool)

(assert (=> bm!148980 (= call!148986 (validRegex!2867 (ite c!388182 (regTwo!14813 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))) (regOne!14812 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))))))))

(declare-fun bm!148981 () Bool)

(assert (=> bm!148981 (= call!148985 (validRegex!2867 (ite c!388183 (reg!7479 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))) (ite c!388182 (regOne!14813 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927))))) (regTwo!14812 (ite c!388095 (reg!7479 (regTwo!14812 r!13927)) (ite c!388094 (regOne!14813 (regTwo!14812 r!13927)) (regTwo!14812 (regTwo!14812 r!13927)))))))))))

(declare-fun b!2432971 () Bool)

(declare-fun res!1032862 () Bool)

(assert (=> b!2432971 (=> (not res!1032862) (not e!1546728))))

(assert (=> b!2432971 (= res!1032862 call!148984)))

(assert (=> b!2432971 (= e!1546729 e!1546728)))

(declare-fun b!2432972 () Bool)

(declare-fun e!1546727 () Bool)

(assert (=> b!2432972 (= e!1546730 e!1546727)))

(declare-fun res!1032861 () Bool)

(assert (=> b!2432972 (=> (not res!1032861) (not e!1546727))))

(assert (=> b!2432972 (= res!1032861 call!148986)))

(declare-fun b!2432973 () Bool)

(assert (=> b!2432973 (= e!1546727 call!148984)))

(declare-fun b!2432974 () Bool)

(assert (=> b!2432974 (= e!1546725 call!148985)))

(assert (= (and d!703436 (not res!1032863)) b!2432967))

(assert (= (and b!2432967 c!388183) b!2432968))

(assert (= (and b!2432967 (not c!388183)) b!2432969))

(assert (= (and b!2432968 res!1032864) b!2432974))

(assert (= (and b!2432969 c!388182) b!2432971))

(assert (= (and b!2432969 (not c!388182)) b!2432970))

(assert (= (and b!2432971 res!1032862) b!2432966))

(assert (= (and b!2432970 (not res!1032860)) b!2432972))

(assert (= (and b!2432972 res!1032861) b!2432973))

(assert (= (or b!2432971 b!2432973) bm!148979))

(assert (= (or b!2432966 b!2432972) bm!148980))

(assert (= (or b!2432974 bm!148979) bm!148981))

(declare-fun m!2814271 () Bool)

(assert (=> b!2432968 m!2814271))

(declare-fun m!2814273 () Bool)

(assert (=> bm!148980 m!2814273))

(declare-fun m!2814275 () Bool)

(assert (=> bm!148981 m!2814275))

(assert (=> bm!148936 d!703436))

(declare-fun d!703438 () Bool)

(declare-fun res!1032865 () Bool)

(declare-fun e!1546731 () Bool)

(assert (=> d!703438 (=> res!1032865 e!1546731)))

(assert (=> d!703438 (= res!1032865 (is-Nil!28438 (t!208513 l!9164)))))

(assert (=> d!703438 (= (forall!5784 (t!208513 l!9164) lambda!91732) e!1546731)))

(declare-fun b!2432975 () Bool)

(declare-fun e!1546732 () Bool)

(assert (=> b!2432975 (= e!1546731 e!1546732)))

(declare-fun res!1032866 () Bool)

(assert (=> b!2432975 (=> (not res!1032866) (not e!1546732))))

(assert (=> b!2432975 (= res!1032866 (dynLambda!12240 lambda!91732 (h!33839 (t!208513 l!9164))))))

(declare-fun b!2432976 () Bool)

(assert (=> b!2432976 (= e!1546732 (forall!5784 (t!208513 (t!208513 l!9164)) lambda!91732))))

(assert (= (and d!703438 (not res!1032865)) b!2432975))

(assert (= (and b!2432975 res!1032866) b!2432976))

(declare-fun b_lambda!74827 () Bool)

(assert (=> (not b_lambda!74827) (not b!2432975)))

(declare-fun m!2814277 () Bool)

(assert (=> b!2432975 m!2814277))

(declare-fun m!2814279 () Bool)

(assert (=> b!2432976 m!2814279))

(assert (=> b!2432589 d!703438))

(declare-fun d!703440 () Bool)

(assert (=> d!703440 (= (isEmpty!16476 (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) Nil!28439 s!9460 s!9460)) (not (is-Some!5638 (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) Nil!28439 s!9460 s!9460))))))

(assert (=> d!703380 d!703440))

(declare-fun d!703442 () Bool)

(declare-fun nullableFct!530 (Regex!7150) Bool)

(assert (=> d!703442 (= (nullable!2182 (reg!7479 (regTwo!14812 r!13927))) (nullableFct!530 (reg!7479 (regTwo!14812 r!13927))))))

(declare-fun bs!464254 () Bool)

(assert (= bs!464254 d!703442))

(declare-fun m!2814281 () Bool)

(assert (=> bs!464254 m!2814281))

(assert (=> b!2432515 d!703442))

(declare-fun d!703444 () Bool)

(assert (=> d!703444 (= (head!5502 l!9164) (h!33839 l!9164))))

(assert (=> b!2432485 d!703444))

(declare-fun b!2432977 () Bool)

(declare-fun e!1546737 () Bool)

(declare-fun call!148989 () Bool)

(assert (=> b!2432977 (= e!1546737 call!148989)))

(declare-fun b!2432978 () Bool)

(declare-fun e!1546733 () Bool)

(declare-fun e!1546735 () Bool)

(assert (=> b!2432978 (= e!1546733 e!1546735)))

(declare-fun c!388185 () Bool)

(assert (=> b!2432978 (= c!388185 (is-Star!7150 (h!33839 l!9164)))))

(declare-fun bm!148982 () Bool)

(declare-fun call!148987 () Bool)

(declare-fun call!148988 () Bool)

(assert (=> bm!148982 (= call!148987 call!148988)))

(declare-fun b!2432979 () Bool)

(declare-fun e!1546734 () Bool)

(assert (=> b!2432979 (= e!1546735 e!1546734)))

(declare-fun res!1032871 () Bool)

(assert (=> b!2432979 (= res!1032871 (not (nullable!2182 (reg!7479 (h!33839 l!9164)))))))

(assert (=> b!2432979 (=> (not res!1032871) (not e!1546734))))

(declare-fun b!2432980 () Bool)

(declare-fun e!1546738 () Bool)

(assert (=> b!2432980 (= e!1546735 e!1546738)))

(declare-fun c!388184 () Bool)

(assert (=> b!2432980 (= c!388184 (is-Union!7150 (h!33839 l!9164)))))

(declare-fun b!2432981 () Bool)

(declare-fun res!1032867 () Bool)

(declare-fun e!1546739 () Bool)

(assert (=> b!2432981 (=> res!1032867 e!1546739)))

(assert (=> b!2432981 (= res!1032867 (not (is-Concat!11786 (h!33839 l!9164))))))

(assert (=> b!2432981 (= e!1546738 e!1546739)))

(declare-fun d!703446 () Bool)

(declare-fun res!1032870 () Bool)

(assert (=> d!703446 (=> res!1032870 e!1546733)))

(assert (=> d!703446 (= res!1032870 (is-ElementMatch!7150 (h!33839 l!9164)))))

(assert (=> d!703446 (= (validRegex!2867 (h!33839 l!9164)) e!1546733)))

(declare-fun bm!148983 () Bool)

(assert (=> bm!148983 (= call!148989 (validRegex!2867 (ite c!388184 (regTwo!14813 (h!33839 l!9164)) (regOne!14812 (h!33839 l!9164)))))))

(declare-fun bm!148984 () Bool)

(assert (=> bm!148984 (= call!148988 (validRegex!2867 (ite c!388185 (reg!7479 (h!33839 l!9164)) (ite c!388184 (regOne!14813 (h!33839 l!9164)) (regTwo!14812 (h!33839 l!9164))))))))

(declare-fun b!2432982 () Bool)

(declare-fun res!1032869 () Bool)

(assert (=> b!2432982 (=> (not res!1032869) (not e!1546737))))

(assert (=> b!2432982 (= res!1032869 call!148987)))

(assert (=> b!2432982 (= e!1546738 e!1546737)))

(declare-fun b!2432983 () Bool)

(declare-fun e!1546736 () Bool)

(assert (=> b!2432983 (= e!1546739 e!1546736)))

(declare-fun res!1032868 () Bool)

(assert (=> b!2432983 (=> (not res!1032868) (not e!1546736))))

(assert (=> b!2432983 (= res!1032868 call!148989)))

(declare-fun b!2432984 () Bool)

(assert (=> b!2432984 (= e!1546736 call!148987)))

(declare-fun b!2432985 () Bool)

(assert (=> b!2432985 (= e!1546734 call!148988)))

(assert (= (and d!703446 (not res!1032870)) b!2432978))

(assert (= (and b!2432978 c!388185) b!2432979))

(assert (= (and b!2432978 (not c!388185)) b!2432980))

(assert (= (and b!2432979 res!1032871) b!2432985))

(assert (= (and b!2432980 c!388184) b!2432982))

(assert (= (and b!2432980 (not c!388184)) b!2432981))

(assert (= (and b!2432982 res!1032869) b!2432977))

(assert (= (and b!2432981 (not res!1032867)) b!2432983))

(assert (= (and b!2432983 res!1032868) b!2432984))

(assert (= (or b!2432982 b!2432984) bm!148982))

(assert (= (or b!2432977 b!2432983) bm!148983))

(assert (= (or b!2432985 bm!148982) bm!148984))

(declare-fun m!2814283 () Bool)

(assert (=> b!2432979 m!2814283))

(declare-fun m!2814285 () Bool)

(assert (=> bm!148983 m!2814285))

(declare-fun m!2814287 () Bool)

(assert (=> bm!148984 m!2814287))

(assert (=> bs!464242 d!703446))

(declare-fun d!703448 () Bool)

(assert (=> d!703448 (= (isEmptyExpr!200 lt!876987) (is-EmptyExpr!7150 lt!876987))))

(assert (=> b!2432486 d!703448))

(declare-fun d!703450 () Bool)

(assert (=> d!703450 true))

(assert (=> d!703450 true))

(declare-fun res!1032874 () Bool)

(assert (=> d!703450 (= (choose!14416 lambda!91733) res!1032874)))

(assert (=> d!703386 d!703450))

(declare-fun d!703452 () Bool)

(assert (=> d!703452 (= (isEmpty!16475 l!9164) (is-Nil!28438 l!9164))))

(assert (=> b!2432492 d!703452))

(assert (=> b!2432627 d!703428))

(assert (=> b!2432627 d!703430))

(declare-fun d!703454 () Bool)

(assert (=> d!703454 (= (Exists!1186 (ite c!388130 lambda!91753 lambda!91754)) (choose!14416 (ite c!388130 lambda!91753 lambda!91754)))))

(declare-fun bs!464255 () Bool)

(assert (= bs!464255 d!703454))

(declare-fun m!2814289 () Bool)

(assert (=> bs!464255 m!2814289))

(assert (=> bm!148956 d!703454))

(declare-fun b!2432986 () Bool)

(declare-fun res!1032875 () Bool)

(declare-fun e!1546745 () Bool)

(assert (=> b!2432986 (=> res!1032875 e!1546745)))

(assert (=> b!2432986 (= res!1032875 (not (isEmpty!16477 (tail!3776 (_1!16569 (get!8765 lt!877002))))))))

(declare-fun b!2432987 () Bool)

(declare-fun e!1546742 () Bool)

(assert (=> b!2432987 (= e!1546742 (matchR!3265 (derivativeStep!1836 (regOne!14812 r!13927) (head!5503 (_1!16569 (get!8765 lt!877002)))) (tail!3776 (_1!16569 (get!8765 lt!877002)))))))

(declare-fun bm!148985 () Bool)

(declare-fun call!148990 () Bool)

(assert (=> bm!148985 (= call!148990 (isEmpty!16477 (_1!16569 (get!8765 lt!877002))))))

(declare-fun b!2432988 () Bool)

(declare-fun res!1032876 () Bool)

(declare-fun e!1546746 () Bool)

(assert (=> b!2432988 (=> res!1032876 e!1546746)))

(declare-fun e!1546744 () Bool)

(assert (=> b!2432988 (= res!1032876 e!1546744)))

(declare-fun res!1032881 () Bool)

(assert (=> b!2432988 (=> (not res!1032881) (not e!1546744))))

(declare-fun lt!877028 () Bool)

(assert (=> b!2432988 (= res!1032881 lt!877028)))

(declare-fun b!2432990 () Bool)

(assert (=> b!2432990 (= e!1546742 (nullable!2182 (regOne!14812 r!13927)))))

(declare-fun b!2432991 () Bool)

(declare-fun e!1546741 () Bool)

(assert (=> b!2432991 (= e!1546741 (not lt!877028))))

(declare-fun b!2432992 () Bool)

(declare-fun res!1032880 () Bool)

(assert (=> b!2432992 (=> (not res!1032880) (not e!1546744))))

(assert (=> b!2432992 (= res!1032880 (not call!148990))))

(declare-fun b!2432993 () Bool)

(declare-fun e!1546740 () Bool)

(assert (=> b!2432993 (= e!1546740 (= lt!877028 call!148990))))

(declare-fun b!2432994 () Bool)

(declare-fun e!1546743 () Bool)

(assert (=> b!2432994 (= e!1546746 e!1546743)))

(declare-fun res!1032882 () Bool)

(assert (=> b!2432994 (=> (not res!1032882) (not e!1546743))))

(assert (=> b!2432994 (= res!1032882 (not lt!877028))))

(declare-fun b!2432995 () Bool)

(assert (=> b!2432995 (= e!1546744 (= (head!5503 (_1!16569 (get!8765 lt!877002))) (c!388076 (regOne!14812 r!13927))))))

(declare-fun b!2432996 () Bool)

(declare-fun res!1032878 () Bool)

(assert (=> b!2432996 (=> res!1032878 e!1546746)))

(assert (=> b!2432996 (= res!1032878 (not (is-ElementMatch!7150 (regOne!14812 r!13927))))))

(assert (=> b!2432996 (= e!1546741 e!1546746)))

(declare-fun b!2432997 () Bool)

(declare-fun res!1032879 () Bool)

(assert (=> b!2432997 (=> (not res!1032879) (not e!1546744))))

(assert (=> b!2432997 (= res!1032879 (isEmpty!16477 (tail!3776 (_1!16569 (get!8765 lt!877002)))))))

(declare-fun b!2432989 () Bool)

(assert (=> b!2432989 (= e!1546743 e!1546745)))

(declare-fun res!1032877 () Bool)

(assert (=> b!2432989 (=> res!1032877 e!1546745)))

(assert (=> b!2432989 (= res!1032877 call!148990)))

(declare-fun d!703456 () Bool)

(assert (=> d!703456 e!1546740))

(declare-fun c!388188 () Bool)

(assert (=> d!703456 (= c!388188 (is-EmptyExpr!7150 (regOne!14812 r!13927)))))

(assert (=> d!703456 (= lt!877028 e!1546742)))

(declare-fun c!388187 () Bool)

(assert (=> d!703456 (= c!388187 (isEmpty!16477 (_1!16569 (get!8765 lt!877002))))))

(assert (=> d!703456 (validRegex!2867 (regOne!14812 r!13927))))

(assert (=> d!703456 (= (matchR!3265 (regOne!14812 r!13927) (_1!16569 (get!8765 lt!877002))) lt!877028)))

(declare-fun b!2432998 () Bool)

(assert (=> b!2432998 (= e!1546745 (not (= (head!5503 (_1!16569 (get!8765 lt!877002))) (c!388076 (regOne!14812 r!13927)))))))

(declare-fun b!2432999 () Bool)

(assert (=> b!2432999 (= e!1546740 e!1546741)))

(declare-fun c!388186 () Bool)

(assert (=> b!2432999 (= c!388186 (is-EmptyLang!7150 (regOne!14812 r!13927)))))

(assert (= (and d!703456 c!388187) b!2432990))

(assert (= (and d!703456 (not c!388187)) b!2432987))

(assert (= (and d!703456 c!388188) b!2432993))

(assert (= (and d!703456 (not c!388188)) b!2432999))

(assert (= (and b!2432999 c!388186) b!2432991))

(assert (= (and b!2432999 (not c!388186)) b!2432996))

(assert (= (and b!2432996 (not res!1032878)) b!2432988))

(assert (= (and b!2432988 res!1032881) b!2432992))

(assert (= (and b!2432992 res!1032880) b!2432997))

(assert (= (and b!2432997 res!1032879) b!2432995))

(assert (= (and b!2432988 (not res!1032876)) b!2432994))

(assert (= (and b!2432994 res!1032882) b!2432989))

(assert (= (and b!2432989 (not res!1032877)) b!2432986))

(assert (= (and b!2432986 (not res!1032875)) b!2432998))

(assert (= (or b!2432993 b!2432989 b!2432992) bm!148985))

(declare-fun m!2814291 () Bool)

(assert (=> b!2432997 m!2814291))

(assert (=> b!2432997 m!2814291))

(declare-fun m!2814293 () Bool)

(assert (=> b!2432997 m!2814293))

(declare-fun m!2814295 () Bool)

(assert (=> b!2432998 m!2814295))

(declare-fun m!2814297 () Bool)

(assert (=> b!2432990 m!2814297))

(assert (=> b!2432995 m!2814295))

(declare-fun m!2814299 () Bool)

(assert (=> d!703456 m!2814299))

(assert (=> d!703456 m!2814021))

(assert (=> b!2432987 m!2814295))

(assert (=> b!2432987 m!2814295))

(declare-fun m!2814301 () Bool)

(assert (=> b!2432987 m!2814301))

(assert (=> b!2432987 m!2814291))

(assert (=> b!2432987 m!2814301))

(assert (=> b!2432987 m!2814291))

(declare-fun m!2814303 () Bool)

(assert (=> b!2432987 m!2814303))

(assert (=> b!2432986 m!2814291))

(assert (=> b!2432986 m!2814291))

(assert (=> b!2432986 m!2814293))

(assert (=> bm!148985 m!2814299))

(assert (=> b!2432557 d!703456))

(declare-fun d!703458 () Bool)

(assert (=> d!703458 (= (get!8765 lt!877002) (v!31046 lt!877002))))

(assert (=> b!2432557 d!703458))

(declare-fun d!703460 () Bool)

(assert (=> d!703460 (= (isEmpty!16475 (tail!3775 l!9164)) (is-Nil!28438 (tail!3775 l!9164)))))

(assert (=> b!2432493 d!703460))

(declare-fun d!703462 () Bool)

(assert (=> d!703462 (= (tail!3775 l!9164) (t!208513 l!9164))))

(assert (=> b!2432493 d!703462))

(assert (=> d!703390 d!703426))

(declare-fun b!2433000 () Bool)

(declare-fun res!1032883 () Bool)

(declare-fun e!1546752 () Bool)

(assert (=> b!2433000 (=> res!1032883 e!1546752)))

(assert (=> b!2433000 (= res!1032883 (not (isEmpty!16477 (tail!3776 Nil!28439))))))

(declare-fun b!2433001 () Bool)

(declare-fun e!1546749 () Bool)

(assert (=> b!2433001 (= e!1546749 (matchR!3265 (derivativeStep!1836 (regOne!14812 r!13927) (head!5503 Nil!28439)) (tail!3776 Nil!28439)))))

(declare-fun bm!148986 () Bool)

(declare-fun call!148991 () Bool)

(assert (=> bm!148986 (= call!148991 (isEmpty!16477 Nil!28439))))

(declare-fun b!2433002 () Bool)

(declare-fun res!1032884 () Bool)

(declare-fun e!1546753 () Bool)

(assert (=> b!2433002 (=> res!1032884 e!1546753)))

(declare-fun e!1546751 () Bool)

(assert (=> b!2433002 (= res!1032884 e!1546751)))

(declare-fun res!1032889 () Bool)

(assert (=> b!2433002 (=> (not res!1032889) (not e!1546751))))

(declare-fun lt!877029 () Bool)

(assert (=> b!2433002 (= res!1032889 lt!877029)))

(declare-fun b!2433004 () Bool)

(assert (=> b!2433004 (= e!1546749 (nullable!2182 (regOne!14812 r!13927)))))

(declare-fun b!2433005 () Bool)

(declare-fun e!1546748 () Bool)

(assert (=> b!2433005 (= e!1546748 (not lt!877029))))

(declare-fun b!2433006 () Bool)

(declare-fun res!1032888 () Bool)

(assert (=> b!2433006 (=> (not res!1032888) (not e!1546751))))

(assert (=> b!2433006 (= res!1032888 (not call!148991))))

(declare-fun b!2433007 () Bool)

(declare-fun e!1546747 () Bool)

(assert (=> b!2433007 (= e!1546747 (= lt!877029 call!148991))))

(declare-fun b!2433008 () Bool)

(declare-fun e!1546750 () Bool)

(assert (=> b!2433008 (= e!1546753 e!1546750)))

(declare-fun res!1032890 () Bool)

(assert (=> b!2433008 (=> (not res!1032890) (not e!1546750))))

(assert (=> b!2433008 (= res!1032890 (not lt!877029))))

(declare-fun b!2433009 () Bool)

(assert (=> b!2433009 (= e!1546751 (= (head!5503 Nil!28439) (c!388076 (regOne!14812 r!13927))))))

(declare-fun b!2433010 () Bool)

(declare-fun res!1032886 () Bool)

(assert (=> b!2433010 (=> res!1032886 e!1546753)))

(assert (=> b!2433010 (= res!1032886 (not (is-ElementMatch!7150 (regOne!14812 r!13927))))))

(assert (=> b!2433010 (= e!1546748 e!1546753)))

(declare-fun b!2433011 () Bool)

(declare-fun res!1032887 () Bool)

(assert (=> b!2433011 (=> (not res!1032887) (not e!1546751))))

(assert (=> b!2433011 (= res!1032887 (isEmpty!16477 (tail!3776 Nil!28439)))))

(declare-fun b!2433003 () Bool)

(assert (=> b!2433003 (= e!1546750 e!1546752)))

(declare-fun res!1032885 () Bool)

(assert (=> b!2433003 (=> res!1032885 e!1546752)))

(assert (=> b!2433003 (= res!1032885 call!148991)))

(declare-fun d!703464 () Bool)

(assert (=> d!703464 e!1546747))

(declare-fun c!388191 () Bool)

(assert (=> d!703464 (= c!388191 (is-EmptyExpr!7150 (regOne!14812 r!13927)))))

(assert (=> d!703464 (= lt!877029 e!1546749)))

(declare-fun c!388190 () Bool)

(assert (=> d!703464 (= c!388190 (isEmpty!16477 Nil!28439))))

(assert (=> d!703464 (validRegex!2867 (regOne!14812 r!13927))))

(assert (=> d!703464 (= (matchR!3265 (regOne!14812 r!13927) Nil!28439) lt!877029)))

(declare-fun b!2433012 () Bool)

(assert (=> b!2433012 (= e!1546752 (not (= (head!5503 Nil!28439) (c!388076 (regOne!14812 r!13927)))))))

(declare-fun b!2433013 () Bool)

(assert (=> b!2433013 (= e!1546747 e!1546748)))

(declare-fun c!388189 () Bool)

(assert (=> b!2433013 (= c!388189 (is-EmptyLang!7150 (regOne!14812 r!13927)))))

(assert (= (and d!703464 c!388190) b!2433004))

(assert (= (and d!703464 (not c!388190)) b!2433001))

(assert (= (and d!703464 c!388191) b!2433007))

(assert (= (and d!703464 (not c!388191)) b!2433013))

(assert (= (and b!2433013 c!388189) b!2433005))

(assert (= (and b!2433013 (not c!388189)) b!2433010))

(assert (= (and b!2433010 (not res!1032886)) b!2433002))

(assert (= (and b!2433002 res!1032889) b!2433006))

(assert (= (and b!2433006 res!1032888) b!2433011))

(assert (= (and b!2433011 res!1032887) b!2433009))

(assert (= (and b!2433002 (not res!1032884)) b!2433008))

(assert (= (and b!2433008 res!1032890) b!2433003))

(assert (= (and b!2433003 (not res!1032885)) b!2433000))

(assert (= (and b!2433000 (not res!1032883)) b!2433012))

(assert (= (or b!2433007 b!2433003 b!2433006) bm!148986))

(declare-fun m!2814305 () Bool)

(assert (=> b!2433011 m!2814305))

(assert (=> b!2433011 m!2814305))

(declare-fun m!2814307 () Bool)

(assert (=> b!2433011 m!2814307))

(declare-fun m!2814309 () Bool)

(assert (=> b!2433012 m!2814309))

(assert (=> b!2433004 m!2814297))

(assert (=> b!2433009 m!2814309))

(declare-fun m!2814311 () Bool)

(assert (=> d!703464 m!2814311))

(assert (=> d!703464 m!2814021))

(assert (=> b!2433001 m!2814309))

(assert (=> b!2433001 m!2814309))

(declare-fun m!2814313 () Bool)

(assert (=> b!2433001 m!2814313))

(assert (=> b!2433001 m!2814305))

(assert (=> b!2433001 m!2814313))

(assert (=> b!2433001 m!2814305))

(declare-fun m!2814315 () Bool)

(assert (=> b!2433001 m!2814315))

(assert (=> b!2433000 m!2814305))

(assert (=> b!2433000 m!2814305))

(assert (=> b!2433000 m!2814307))

(assert (=> bm!148986 m!2814311))

(assert (=> d!703390 d!703464))

(assert (=> d!703390 d!703388))

(declare-fun bs!464256 () Bool)

(declare-fun b!2433024 () Bool)

(assert (= bs!464256 (and b!2433024 b!2432422)))

(declare-fun lambda!91765 () Int)

(assert (=> bs!464256 (not (= lambda!91765 lambda!91733))))

(declare-fun bs!464257 () Bool)

(assert (= bs!464257 (and b!2433024 d!703382)))

(assert (=> bs!464257 (not (= lambda!91765 lambda!91745))))

(declare-fun bs!464258 () Bool)

(assert (= bs!464258 (and b!2433024 b!2432683)))

(assert (=> bs!464258 (= (and (= (reg!7479 (regTwo!14813 r!13927)) (reg!7479 r!13927)) (= (regTwo!14813 r!13927) r!13927)) (= lambda!91765 lambda!91753))))

(declare-fun bs!464259 () Bool)

(assert (= bs!464259 (and b!2433024 b!2432679)))

(assert (=> bs!464259 (not (= lambda!91765 lambda!91754))))

(assert (=> b!2433024 true))

(assert (=> b!2433024 true))

(declare-fun bs!464260 () Bool)

(declare-fun b!2433020 () Bool)

(assert (= bs!464260 (and b!2433020 d!703382)))

(declare-fun lambda!91766 () Int)

(assert (=> bs!464260 (not (= lambda!91766 lambda!91745))))

(declare-fun bs!464261 () Bool)

(assert (= bs!464261 (and b!2433020 b!2432422)))

(assert (=> bs!464261 (not (= lambda!91766 lambda!91733))))

(declare-fun bs!464262 () Bool)

(assert (= bs!464262 (and b!2433020 b!2432679)))

(assert (=> bs!464262 (= (and (= (regOne!14812 (regTwo!14813 r!13927)) (regOne!14812 r!13927)) (= (regTwo!14812 (regTwo!14813 r!13927)) (regTwo!14812 r!13927))) (= lambda!91766 lambda!91754))))

(declare-fun bs!464263 () Bool)

(assert (= bs!464263 (and b!2433020 b!2433024)))

(assert (=> bs!464263 (not (= lambda!91766 lambda!91765))))

(declare-fun bs!464264 () Bool)

(assert (= bs!464264 (and b!2433020 b!2432683)))

(assert (=> bs!464264 (not (= lambda!91766 lambda!91753))))

(assert (=> b!2433020 true))

(assert (=> b!2433020 true))

(declare-fun c!388195 () Bool)

(declare-fun bm!148987 () Bool)

(declare-fun call!148993 () Bool)

(assert (=> bm!148987 (= call!148993 (Exists!1186 (ite c!388195 lambda!91765 lambda!91766)))))

(declare-fun b!2433014 () Bool)

(declare-fun e!1546758 () Bool)

(declare-fun call!148992 () Bool)

(assert (=> b!2433014 (= e!1546758 call!148992)))

(declare-fun b!2433015 () Bool)

(declare-fun e!1546754 () Bool)

(assert (=> b!2433015 (= e!1546754 (= s!9460 (Cons!28439 (c!388076 (regTwo!14813 r!13927)) Nil!28439)))))

(declare-fun b!2433016 () Bool)

(declare-fun e!1546757 () Bool)

(assert (=> b!2433016 (= e!1546757 (matchRSpec!997 (regTwo!14813 (regTwo!14813 r!13927)) s!9460))))

(declare-fun bm!148988 () Bool)

(assert (=> bm!148988 (= call!148992 (isEmpty!16477 s!9460))))

(declare-fun d!703466 () Bool)

(declare-fun c!388194 () Bool)

(assert (=> d!703466 (= c!388194 (is-EmptyExpr!7150 (regTwo!14813 r!13927)))))

(assert (=> d!703466 (= (matchRSpec!997 (regTwo!14813 r!13927) s!9460) e!1546758)))

(declare-fun b!2433017 () Bool)

(declare-fun e!1546760 () Bool)

(assert (=> b!2433017 (= e!1546758 e!1546760)))

(declare-fun res!1032893 () Bool)

(assert (=> b!2433017 (= res!1032893 (not (is-EmptyLang!7150 (regTwo!14813 r!13927))))))

(assert (=> b!2433017 (=> (not res!1032893) (not e!1546760))))

(declare-fun b!2433018 () Bool)

(declare-fun e!1546756 () Bool)

(assert (=> b!2433018 (= e!1546756 e!1546757)))

(declare-fun res!1032891 () Bool)

(assert (=> b!2433018 (= res!1032891 (matchRSpec!997 (regOne!14813 (regTwo!14813 r!13927)) s!9460))))

(assert (=> b!2433018 (=> res!1032891 e!1546757)))

(declare-fun b!2433019 () Bool)

(declare-fun c!388192 () Bool)

(assert (=> b!2433019 (= c!388192 (is-ElementMatch!7150 (regTwo!14813 r!13927)))))

(assert (=> b!2433019 (= e!1546760 e!1546754)))

(declare-fun e!1546755 () Bool)

(assert (=> b!2433020 (= e!1546755 call!148993)))

(declare-fun b!2433021 () Bool)

(declare-fun c!388193 () Bool)

(assert (=> b!2433021 (= c!388193 (is-Union!7150 (regTwo!14813 r!13927)))))

(assert (=> b!2433021 (= e!1546754 e!1546756)))

(declare-fun b!2433022 () Bool)

(declare-fun res!1032892 () Bool)

(declare-fun e!1546759 () Bool)

(assert (=> b!2433022 (=> res!1032892 e!1546759)))

(assert (=> b!2433022 (= res!1032892 call!148992)))

(assert (=> b!2433022 (= e!1546755 e!1546759)))

(declare-fun b!2433023 () Bool)

(assert (=> b!2433023 (= e!1546756 e!1546755)))

(assert (=> b!2433023 (= c!388195 (is-Star!7150 (regTwo!14813 r!13927)))))

(assert (=> b!2433024 (= e!1546759 call!148993)))

(assert (= (and d!703466 c!388194) b!2433014))

(assert (= (and d!703466 (not c!388194)) b!2433017))

(assert (= (and b!2433017 res!1032893) b!2433019))

(assert (= (and b!2433019 c!388192) b!2433015))

(assert (= (and b!2433019 (not c!388192)) b!2433021))

(assert (= (and b!2433021 c!388193) b!2433018))

(assert (= (and b!2433021 (not c!388193)) b!2433023))

(assert (= (and b!2433018 (not res!1032891)) b!2433016))

(assert (= (and b!2433023 c!388195) b!2433022))

(assert (= (and b!2433023 (not c!388195)) b!2433020))

(assert (= (and b!2433022 (not res!1032892)) b!2433024))

(assert (= (or b!2433024 b!2433020) bm!148987))

(assert (= (or b!2433014 b!2433022) bm!148988))

(declare-fun m!2814317 () Bool)

(assert (=> bm!148987 m!2814317))

(declare-fun m!2814319 () Bool)

(assert (=> b!2433016 m!2814319))

(assert (=> bm!148988 m!2814137))

(declare-fun m!2814321 () Bool)

(assert (=> b!2433018 m!2814321))

(assert (=> b!2432675 d!703466))

(declare-fun d!703468 () Bool)

(assert (=> d!703468 (= (isEmpty!16475 (t!208513 l!9164)) (is-Nil!28438 (t!208513 l!9164)))))

(assert (=> b!2432490 d!703468))

(declare-fun d!703470 () Bool)

(assert (=> d!703470 (= (isEmpty!16477 s!9460) (is-Nil!28439 s!9460))))

(assert (=> bm!148951 d!703470))

(declare-fun d!703472 () Bool)

(assert (=> d!703472 (= (isConcat!200 lt!876987) (is-Concat!11786 lt!876987))))

(assert (=> b!2432491 d!703472))

(declare-fun b!2433025 () Bool)

(declare-fun res!1032894 () Bool)

(declare-fun e!1546766 () Bool)

(assert (=> b!2433025 (=> res!1032894 e!1546766)))

(assert (=> b!2433025 (= res!1032894 (not (isEmpty!16477 (tail!3776 (tail!3776 s!9460)))))))

(declare-fun b!2433026 () Bool)

(declare-fun e!1546763 () Bool)

(assert (=> b!2433026 (= e!1546763 (matchR!3265 (derivativeStep!1836 (derivativeStep!1836 r!13927 (head!5503 s!9460)) (head!5503 (tail!3776 s!9460))) (tail!3776 (tail!3776 s!9460))))))

(declare-fun bm!148989 () Bool)

(declare-fun call!148994 () Bool)

(assert (=> bm!148989 (= call!148994 (isEmpty!16477 (tail!3776 s!9460)))))

(declare-fun b!2433027 () Bool)

(declare-fun res!1032895 () Bool)

(declare-fun e!1546767 () Bool)

(assert (=> b!2433027 (=> res!1032895 e!1546767)))

(declare-fun e!1546765 () Bool)

(assert (=> b!2433027 (= res!1032895 e!1546765)))

(declare-fun res!1032900 () Bool)

(assert (=> b!2433027 (=> (not res!1032900) (not e!1546765))))

(declare-fun lt!877030 () Bool)

(assert (=> b!2433027 (= res!1032900 lt!877030)))

(declare-fun b!2433029 () Bool)

(assert (=> b!2433029 (= e!1546763 (nullable!2182 (derivativeStep!1836 r!13927 (head!5503 s!9460))))))

(declare-fun b!2433030 () Bool)

(declare-fun e!1546762 () Bool)

(assert (=> b!2433030 (= e!1546762 (not lt!877030))))

(declare-fun b!2433031 () Bool)

(declare-fun res!1032899 () Bool)

(assert (=> b!2433031 (=> (not res!1032899) (not e!1546765))))

(assert (=> b!2433031 (= res!1032899 (not call!148994))))

(declare-fun b!2433032 () Bool)

(declare-fun e!1546761 () Bool)

(assert (=> b!2433032 (= e!1546761 (= lt!877030 call!148994))))

(declare-fun b!2433033 () Bool)

(declare-fun e!1546764 () Bool)

(assert (=> b!2433033 (= e!1546767 e!1546764)))

(declare-fun res!1032901 () Bool)

(assert (=> b!2433033 (=> (not res!1032901) (not e!1546764))))

(assert (=> b!2433033 (= res!1032901 (not lt!877030))))

(declare-fun b!2433034 () Bool)

(assert (=> b!2433034 (= e!1546765 (= (head!5503 (tail!3776 s!9460)) (c!388076 (derivativeStep!1836 r!13927 (head!5503 s!9460)))))))

(declare-fun b!2433035 () Bool)

(declare-fun res!1032897 () Bool)

(assert (=> b!2433035 (=> res!1032897 e!1546767)))

(assert (=> b!2433035 (= res!1032897 (not (is-ElementMatch!7150 (derivativeStep!1836 r!13927 (head!5503 s!9460)))))))

(assert (=> b!2433035 (= e!1546762 e!1546767)))

(declare-fun b!2433036 () Bool)

(declare-fun res!1032898 () Bool)

(assert (=> b!2433036 (=> (not res!1032898) (not e!1546765))))

(assert (=> b!2433036 (= res!1032898 (isEmpty!16477 (tail!3776 (tail!3776 s!9460))))))

(declare-fun b!2433028 () Bool)

(assert (=> b!2433028 (= e!1546764 e!1546766)))

(declare-fun res!1032896 () Bool)

(assert (=> b!2433028 (=> res!1032896 e!1546766)))

(assert (=> b!2433028 (= res!1032896 call!148994)))

(declare-fun d!703474 () Bool)

(assert (=> d!703474 e!1546761))

(declare-fun c!388198 () Bool)

(assert (=> d!703474 (= c!388198 (is-EmptyExpr!7150 (derivativeStep!1836 r!13927 (head!5503 s!9460))))))

(assert (=> d!703474 (= lt!877030 e!1546763)))

(declare-fun c!388197 () Bool)

(assert (=> d!703474 (= c!388197 (isEmpty!16477 (tail!3776 s!9460)))))

(assert (=> d!703474 (validRegex!2867 (derivativeStep!1836 r!13927 (head!5503 s!9460)))))

(assert (=> d!703474 (= (matchR!3265 (derivativeStep!1836 r!13927 (head!5503 s!9460)) (tail!3776 s!9460)) lt!877030)))

(declare-fun b!2433037 () Bool)

(assert (=> b!2433037 (= e!1546766 (not (= (head!5503 (tail!3776 s!9460)) (c!388076 (derivativeStep!1836 r!13927 (head!5503 s!9460))))))))

(declare-fun b!2433038 () Bool)

(assert (=> b!2433038 (= e!1546761 e!1546762)))

(declare-fun c!388196 () Bool)

(assert (=> b!2433038 (= c!388196 (is-EmptyLang!7150 (derivativeStep!1836 r!13927 (head!5503 s!9460))))))

(assert (= (and d!703474 c!388197) b!2433029))

(assert (= (and d!703474 (not c!388197)) b!2433026))

(assert (= (and d!703474 c!388198) b!2433032))

(assert (= (and d!703474 (not c!388198)) b!2433038))

(assert (= (and b!2433038 c!388196) b!2433030))

(assert (= (and b!2433038 (not c!388196)) b!2433035))

(assert (= (and b!2433035 (not res!1032897)) b!2433027))

(assert (= (and b!2433027 res!1032900) b!2433031))

(assert (= (and b!2433031 res!1032899) b!2433036))

(assert (= (and b!2433036 res!1032898) b!2433034))

(assert (= (and b!2433027 (not res!1032895)) b!2433033))

(assert (= (and b!2433033 res!1032901) b!2433028))

(assert (= (and b!2433028 (not res!1032896)) b!2433025))

(assert (= (and b!2433025 (not res!1032894)) b!2433037))

(assert (= (or b!2433032 b!2433028 b!2433031) bm!148989))

(assert (=> b!2433036 m!2814129))

(declare-fun m!2814323 () Bool)

(assert (=> b!2433036 m!2814323))

(assert (=> b!2433036 m!2814323))

(declare-fun m!2814325 () Bool)

(assert (=> b!2433036 m!2814325))

(assert (=> b!2433037 m!2814129))

(declare-fun m!2814327 () Bool)

(assert (=> b!2433037 m!2814327))

(assert (=> b!2433029 m!2814141))

(declare-fun m!2814329 () Bool)

(assert (=> b!2433029 m!2814329))

(assert (=> b!2433034 m!2814129))

(assert (=> b!2433034 m!2814327))

(assert (=> d!703474 m!2814129))

(assert (=> d!703474 m!2814131))

(assert (=> d!703474 m!2814141))

(declare-fun m!2814331 () Bool)

(assert (=> d!703474 m!2814331))

(assert (=> b!2433026 m!2814129))

(assert (=> b!2433026 m!2814327))

(assert (=> b!2433026 m!2814141))

(assert (=> b!2433026 m!2814327))

(declare-fun m!2814333 () Bool)

(assert (=> b!2433026 m!2814333))

(assert (=> b!2433026 m!2814129))

(assert (=> b!2433026 m!2814323))

(assert (=> b!2433026 m!2814333))

(assert (=> b!2433026 m!2814323))

(declare-fun m!2814335 () Bool)

(assert (=> b!2433026 m!2814335))

(assert (=> b!2433025 m!2814129))

(assert (=> b!2433025 m!2814323))

(assert (=> b!2433025 m!2814323))

(assert (=> b!2433025 m!2814325))

(assert (=> bm!148989 m!2814129))

(assert (=> bm!148989 m!2814131))

(assert (=> b!2432628 d!703474))

(declare-fun call!149006 () Regex!7150)

(declare-fun bm!148998 () Bool)

(declare-fun c!388212 () Bool)

(assert (=> bm!148998 (= call!149006 (derivativeStep!1836 (ite c!388212 (regTwo!14813 r!13927) (regOne!14812 r!13927)) (head!5503 s!9460)))))

(declare-fun b!2433059 () Bool)

(declare-fun e!1546779 () Regex!7150)

(assert (=> b!2433059 (= e!1546779 EmptyLang!7150)))

(declare-fun b!2433060 () Bool)

(declare-fun e!1546782 () Regex!7150)

(declare-fun call!149004 () Regex!7150)

(assert (=> b!2433060 (= e!1546782 (Union!7150 (Concat!11786 call!149006 (regTwo!14812 r!13927)) call!149004))))

(declare-fun bm!148999 () Bool)

(declare-fun call!149003 () Regex!7150)

(assert (=> bm!148999 (= call!149004 call!149003)))

(declare-fun b!2433061 () Bool)

(assert (=> b!2433061 (= e!1546782 (Union!7150 (Concat!11786 call!149004 (regTwo!14812 r!13927)) EmptyLang!7150))))

(declare-fun b!2433062 () Bool)

(declare-fun e!1546780 () Regex!7150)

(assert (=> b!2433062 (= e!1546780 (Concat!11786 call!149003 r!13927))))

(declare-fun b!2433063 () Bool)

(declare-fun e!1546778 () Regex!7150)

(declare-fun call!149005 () Regex!7150)

(assert (=> b!2433063 (= e!1546778 (Union!7150 call!149005 call!149006))))

(declare-fun b!2433064 () Bool)

(assert (=> b!2433064 (= e!1546778 e!1546780)))

(declare-fun c!388209 () Bool)

(assert (=> b!2433064 (= c!388209 (is-Star!7150 r!13927))))

(declare-fun b!2433065 () Bool)

(declare-fun c!388213 () Bool)

(assert (=> b!2433065 (= c!388213 (nullable!2182 (regOne!14812 r!13927)))))

(assert (=> b!2433065 (= e!1546780 e!1546782)))

(declare-fun bm!149000 () Bool)

(assert (=> bm!149000 (= call!149003 call!149005)))

(declare-fun b!2433067 () Bool)

(declare-fun e!1546781 () Regex!7150)

(assert (=> b!2433067 (= e!1546779 e!1546781)))

(declare-fun c!388210 () Bool)

(assert (=> b!2433067 (= c!388210 (is-ElementMatch!7150 r!13927))))

(declare-fun b!2433068 () Bool)

(assert (=> b!2433068 (= e!1546781 (ite (= (head!5503 s!9460) (c!388076 r!13927)) EmptyExpr!7150 EmptyLang!7150))))

(declare-fun bm!149001 () Bool)

(assert (=> bm!149001 (= call!149005 (derivativeStep!1836 (ite c!388212 (regOne!14813 r!13927) (ite c!388209 (reg!7479 r!13927) (ite c!388213 (regTwo!14812 r!13927) (regOne!14812 r!13927)))) (head!5503 s!9460)))))

(declare-fun b!2433066 () Bool)

(assert (=> b!2433066 (= c!388212 (is-Union!7150 r!13927))))

(assert (=> b!2433066 (= e!1546781 e!1546778)))

(declare-fun d!703476 () Bool)

(declare-fun lt!877033 () Regex!7150)

(assert (=> d!703476 (validRegex!2867 lt!877033)))

(assert (=> d!703476 (= lt!877033 e!1546779)))

(declare-fun c!388211 () Bool)

(assert (=> d!703476 (= c!388211 (or (is-EmptyExpr!7150 r!13927) (is-EmptyLang!7150 r!13927)))))

(assert (=> d!703476 (validRegex!2867 r!13927)))

(assert (=> d!703476 (= (derivativeStep!1836 r!13927 (head!5503 s!9460)) lt!877033)))

(assert (= (and d!703476 c!388211) b!2433059))

(assert (= (and d!703476 (not c!388211)) b!2433067))

(assert (= (and b!2433067 c!388210) b!2433068))

(assert (= (and b!2433067 (not c!388210)) b!2433066))

(assert (= (and b!2433066 c!388212) b!2433063))

(assert (= (and b!2433066 (not c!388212)) b!2433064))

(assert (= (and b!2433064 c!388209) b!2433062))

(assert (= (and b!2433064 (not c!388209)) b!2433065))

(assert (= (and b!2433065 c!388213) b!2433060))

(assert (= (and b!2433065 (not c!388213)) b!2433061))

(assert (= (or b!2433060 b!2433061) bm!148999))

(assert (= (or b!2433062 bm!148999) bm!149000))

(assert (= (or b!2433063 bm!149000) bm!149001))

(assert (= (or b!2433063 b!2433060) bm!148998))

(assert (=> bm!148998 m!2814133))

(declare-fun m!2814337 () Bool)

(assert (=> bm!148998 m!2814337))

(assert (=> b!2433065 m!2814297))

(assert (=> bm!149001 m!2814133))

(declare-fun m!2814339 () Bool)

(assert (=> bm!149001 m!2814339))

(declare-fun m!2814341 () Bool)

(assert (=> d!703476 m!2814341))

(assert (=> d!703476 m!2814139))

(assert (=> b!2432628 d!703476))

(assert (=> b!2432628 d!703422))

(assert (=> b!2432628 d!703430))

(assert (=> d!703402 d!703396))

(assert (=> d!703402 d!703400))

(declare-fun d!703478 () Bool)

(assert (=> d!703478 (= (matchR!3265 r!13927 s!9460) (matchRSpec!997 r!13927 s!9460))))

(assert (=> d!703478 true))

(declare-fun _$88!3271 () Unit!41683)

(assert (=> d!703478 (= (choose!14417 r!13927 s!9460) _$88!3271)))

(declare-fun bs!464265 () Bool)

(assert (= bs!464265 d!703478))

(assert (=> bs!464265 m!2814009))

(assert (=> bs!464265 m!2814011))

(assert (=> d!703402 d!703478))

(declare-fun b!2433069 () Bool)

(declare-fun e!1546787 () Bool)

(declare-fun call!149009 () Bool)

(assert (=> b!2433069 (= e!1546787 call!149009)))

(declare-fun b!2433070 () Bool)

(declare-fun e!1546783 () Bool)

(declare-fun e!1546785 () Bool)

(assert (=> b!2433070 (= e!1546783 e!1546785)))

(declare-fun c!388215 () Bool)

(assert (=> b!2433070 (= c!388215 (is-Star!7150 r!13927))))

(declare-fun bm!149002 () Bool)

(declare-fun call!149007 () Bool)

(declare-fun call!149008 () Bool)

(assert (=> bm!149002 (= call!149007 call!149008)))

(declare-fun b!2433071 () Bool)

(declare-fun e!1546784 () Bool)

(assert (=> b!2433071 (= e!1546785 e!1546784)))

(declare-fun res!1032906 () Bool)

(assert (=> b!2433071 (= res!1032906 (not (nullable!2182 (reg!7479 r!13927))))))

(assert (=> b!2433071 (=> (not res!1032906) (not e!1546784))))

(declare-fun b!2433072 () Bool)

(declare-fun e!1546788 () Bool)

(assert (=> b!2433072 (= e!1546785 e!1546788)))

(declare-fun c!388214 () Bool)

(assert (=> b!2433072 (= c!388214 (is-Union!7150 r!13927))))

(declare-fun b!2433073 () Bool)

(declare-fun res!1032902 () Bool)

(declare-fun e!1546789 () Bool)

(assert (=> b!2433073 (=> res!1032902 e!1546789)))

(assert (=> b!2433073 (= res!1032902 (not (is-Concat!11786 r!13927)))))

(assert (=> b!2433073 (= e!1546788 e!1546789)))

(declare-fun d!703480 () Bool)

(declare-fun res!1032905 () Bool)

(assert (=> d!703480 (=> res!1032905 e!1546783)))

(assert (=> d!703480 (= res!1032905 (is-ElementMatch!7150 r!13927))))

(assert (=> d!703480 (= (validRegex!2867 r!13927) e!1546783)))

(declare-fun bm!149003 () Bool)

(assert (=> bm!149003 (= call!149009 (validRegex!2867 (ite c!388214 (regTwo!14813 r!13927) (regOne!14812 r!13927))))))

(declare-fun bm!149004 () Bool)

(assert (=> bm!149004 (= call!149008 (validRegex!2867 (ite c!388215 (reg!7479 r!13927) (ite c!388214 (regOne!14813 r!13927) (regTwo!14812 r!13927)))))))

(declare-fun b!2433074 () Bool)

(declare-fun res!1032904 () Bool)

(assert (=> b!2433074 (=> (not res!1032904) (not e!1546787))))

(assert (=> b!2433074 (= res!1032904 call!149007)))

(assert (=> b!2433074 (= e!1546788 e!1546787)))

(declare-fun b!2433075 () Bool)

(declare-fun e!1546786 () Bool)

(assert (=> b!2433075 (= e!1546789 e!1546786)))

(declare-fun res!1032903 () Bool)

(assert (=> b!2433075 (=> (not res!1032903) (not e!1546786))))

(assert (=> b!2433075 (= res!1032903 call!149009)))

(declare-fun b!2433076 () Bool)

(assert (=> b!2433076 (= e!1546786 call!149007)))

(declare-fun b!2433077 () Bool)

(assert (=> b!2433077 (= e!1546784 call!149008)))

(assert (= (and d!703480 (not res!1032905)) b!2433070))

(assert (= (and b!2433070 c!388215) b!2433071))

(assert (= (and b!2433070 (not c!388215)) b!2433072))

(assert (= (and b!2433071 res!1032906) b!2433077))

(assert (= (and b!2433072 c!388214) b!2433074))

(assert (= (and b!2433072 (not c!388214)) b!2433073))

(assert (= (and b!2433074 res!1032904) b!2433069))

(assert (= (and b!2433073 (not res!1032902)) b!2433075))

(assert (= (and b!2433075 res!1032903) b!2433076))

(assert (= (or b!2433074 b!2433076) bm!149002))

(assert (= (or b!2433069 b!2433075) bm!149003))

(assert (= (or b!2433077 bm!149002) bm!149004))

(declare-fun m!2814343 () Bool)

(assert (=> b!2433071 m!2814343))

(declare-fun m!2814345 () Bool)

(assert (=> bm!149003 m!2814345))

(declare-fun m!2814347 () Bool)

(assert (=> bm!149004 m!2814347))

(assert (=> d!703402 d!703480))

(declare-fun b!2433089 () Bool)

(declare-fun e!1546795 () Bool)

(declare-fun lt!877036 () List!28537)

(assert (=> b!2433089 (= e!1546795 (or (not (= (_2!16569 (get!8765 lt!877002)) Nil!28439)) (= lt!877036 (_1!16569 (get!8765 lt!877002)))))))

(declare-fun b!2433086 () Bool)

(declare-fun e!1546794 () List!28537)

(assert (=> b!2433086 (= e!1546794 (_2!16569 (get!8765 lt!877002)))))

(declare-fun b!2433088 () Bool)

(declare-fun res!1032911 () Bool)

(assert (=> b!2433088 (=> (not res!1032911) (not e!1546795))))

(declare-fun size!22253 (List!28537) Int)

(assert (=> b!2433088 (= res!1032911 (= (size!22253 lt!877036) (+ (size!22253 (_1!16569 (get!8765 lt!877002))) (size!22253 (_2!16569 (get!8765 lt!877002))))))))

(declare-fun d!703482 () Bool)

(assert (=> d!703482 e!1546795))

(declare-fun res!1032912 () Bool)

(assert (=> d!703482 (=> (not res!1032912) (not e!1546795))))

(declare-fun content!3915 (List!28537) (Set C!14458))

(assert (=> d!703482 (= res!1032912 (= (content!3915 lt!877036) (set.union (content!3915 (_1!16569 (get!8765 lt!877002))) (content!3915 (_2!16569 (get!8765 lt!877002))))))))

(assert (=> d!703482 (= lt!877036 e!1546794)))

(declare-fun c!388218 () Bool)

(assert (=> d!703482 (= c!388218 (is-Nil!28439 (_1!16569 (get!8765 lt!877002))))))

(assert (=> d!703482 (= (++!7058 (_1!16569 (get!8765 lt!877002)) (_2!16569 (get!8765 lt!877002))) lt!877036)))

(declare-fun b!2433087 () Bool)

(assert (=> b!2433087 (= e!1546794 (Cons!28439 (h!33840 (_1!16569 (get!8765 lt!877002))) (++!7058 (t!208514 (_1!16569 (get!8765 lt!877002))) (_2!16569 (get!8765 lt!877002)))))))

(assert (= (and d!703482 c!388218) b!2433086))

(assert (= (and d!703482 (not c!388218)) b!2433087))

(assert (= (and d!703482 res!1032912) b!2433088))

(assert (= (and b!2433088 res!1032911) b!2433089))

(declare-fun m!2814349 () Bool)

(assert (=> b!2433088 m!2814349))

(declare-fun m!2814351 () Bool)

(assert (=> b!2433088 m!2814351))

(declare-fun m!2814353 () Bool)

(assert (=> b!2433088 m!2814353))

(declare-fun m!2814355 () Bool)

(assert (=> d!703482 m!2814355))

(declare-fun m!2814357 () Bool)

(assert (=> d!703482 m!2814357))

(declare-fun m!2814359 () Bool)

(assert (=> d!703482 m!2814359))

(declare-fun m!2814361 () Bool)

(assert (=> b!2433087 m!2814361))

(assert (=> b!2432562 d!703482))

(assert (=> b!2432562 d!703458))

(declare-fun d!703484 () Bool)

(assert (=> d!703484 (= (nullable!2182 r!13927) (nullableFct!530 r!13927))))

(declare-fun bs!464266 () Bool)

(assert (= bs!464266 d!703484))

(declare-fun m!2814363 () Bool)

(assert (=> bs!464266 m!2814363))

(assert (=> b!2432631 d!703484))

(declare-fun b!2433090 () Bool)

(declare-fun res!1032913 () Bool)

(declare-fun e!1546801 () Bool)

(assert (=> b!2433090 (=> res!1032913 e!1546801)))

(assert (=> b!2433090 (= res!1032913 (not (isEmpty!16477 (tail!3776 (_2!16569 (get!8765 lt!877002))))))))

(declare-fun b!2433091 () Bool)

(declare-fun e!1546798 () Bool)

(assert (=> b!2433091 (= e!1546798 (matchR!3265 (derivativeStep!1836 (regTwo!14812 r!13927) (head!5503 (_2!16569 (get!8765 lt!877002)))) (tail!3776 (_2!16569 (get!8765 lt!877002)))))))

(declare-fun bm!149005 () Bool)

(declare-fun call!149010 () Bool)

(assert (=> bm!149005 (= call!149010 (isEmpty!16477 (_2!16569 (get!8765 lt!877002))))))

(declare-fun b!2433092 () Bool)

(declare-fun res!1032914 () Bool)

(declare-fun e!1546802 () Bool)

(assert (=> b!2433092 (=> res!1032914 e!1546802)))

(declare-fun e!1546800 () Bool)

(assert (=> b!2433092 (= res!1032914 e!1546800)))

(declare-fun res!1032919 () Bool)

(assert (=> b!2433092 (=> (not res!1032919) (not e!1546800))))

(declare-fun lt!877037 () Bool)

(assert (=> b!2433092 (= res!1032919 lt!877037)))

(declare-fun b!2433094 () Bool)

(assert (=> b!2433094 (= e!1546798 (nullable!2182 (regTwo!14812 r!13927)))))

(declare-fun b!2433095 () Bool)

(declare-fun e!1546797 () Bool)

(assert (=> b!2433095 (= e!1546797 (not lt!877037))))

(declare-fun b!2433096 () Bool)

(declare-fun res!1032918 () Bool)

(assert (=> b!2433096 (=> (not res!1032918) (not e!1546800))))

(assert (=> b!2433096 (= res!1032918 (not call!149010))))

(declare-fun b!2433097 () Bool)

(declare-fun e!1546796 () Bool)

(assert (=> b!2433097 (= e!1546796 (= lt!877037 call!149010))))

(declare-fun b!2433098 () Bool)

(declare-fun e!1546799 () Bool)

(assert (=> b!2433098 (= e!1546802 e!1546799)))

(declare-fun res!1032920 () Bool)

(assert (=> b!2433098 (=> (not res!1032920) (not e!1546799))))

(assert (=> b!2433098 (= res!1032920 (not lt!877037))))

(declare-fun b!2433099 () Bool)

(assert (=> b!2433099 (= e!1546800 (= (head!5503 (_2!16569 (get!8765 lt!877002))) (c!388076 (regTwo!14812 r!13927))))))

(declare-fun b!2433100 () Bool)

(declare-fun res!1032916 () Bool)

(assert (=> b!2433100 (=> res!1032916 e!1546802)))

(assert (=> b!2433100 (= res!1032916 (not (is-ElementMatch!7150 (regTwo!14812 r!13927))))))

(assert (=> b!2433100 (= e!1546797 e!1546802)))

(declare-fun b!2433101 () Bool)

(declare-fun res!1032917 () Bool)

(assert (=> b!2433101 (=> (not res!1032917) (not e!1546800))))

(assert (=> b!2433101 (= res!1032917 (isEmpty!16477 (tail!3776 (_2!16569 (get!8765 lt!877002)))))))

(declare-fun b!2433093 () Bool)

(assert (=> b!2433093 (= e!1546799 e!1546801)))

(declare-fun res!1032915 () Bool)

(assert (=> b!2433093 (=> res!1032915 e!1546801)))

(assert (=> b!2433093 (= res!1032915 call!149010)))

(declare-fun d!703486 () Bool)

(assert (=> d!703486 e!1546796))

(declare-fun c!388221 () Bool)

(assert (=> d!703486 (= c!388221 (is-EmptyExpr!7150 (regTwo!14812 r!13927)))))

(assert (=> d!703486 (= lt!877037 e!1546798)))

(declare-fun c!388220 () Bool)

(assert (=> d!703486 (= c!388220 (isEmpty!16477 (_2!16569 (get!8765 lt!877002))))))

(assert (=> d!703486 (validRegex!2867 (regTwo!14812 r!13927))))

(assert (=> d!703486 (= (matchR!3265 (regTwo!14812 r!13927) (_2!16569 (get!8765 lt!877002))) lt!877037)))

(declare-fun b!2433102 () Bool)

(assert (=> b!2433102 (= e!1546801 (not (= (head!5503 (_2!16569 (get!8765 lt!877002))) (c!388076 (regTwo!14812 r!13927)))))))

(declare-fun b!2433103 () Bool)

(assert (=> b!2433103 (= e!1546796 e!1546797)))

(declare-fun c!388219 () Bool)

(assert (=> b!2433103 (= c!388219 (is-EmptyLang!7150 (regTwo!14812 r!13927)))))

(assert (= (and d!703486 c!388220) b!2433094))

(assert (= (and d!703486 (not c!388220)) b!2433091))

(assert (= (and d!703486 c!388221) b!2433097))

(assert (= (and d!703486 (not c!388221)) b!2433103))

(assert (= (and b!2433103 c!388219) b!2433095))

(assert (= (and b!2433103 (not c!388219)) b!2433100))

(assert (= (and b!2433100 (not res!1032916)) b!2433092))

(assert (= (and b!2433092 res!1032919) b!2433096))

(assert (= (and b!2433096 res!1032918) b!2433101))

(assert (= (and b!2433101 res!1032917) b!2433099))

(assert (= (and b!2433092 (not res!1032914)) b!2433098))

(assert (= (and b!2433098 res!1032920) b!2433093))

(assert (= (and b!2433093 (not res!1032915)) b!2433090))

(assert (= (and b!2433090 (not res!1032913)) b!2433102))

(assert (= (or b!2433097 b!2433093 b!2433096) bm!149005))

(declare-fun m!2814365 () Bool)

(assert (=> b!2433101 m!2814365))

(assert (=> b!2433101 m!2814365))

(declare-fun m!2814367 () Bool)

(assert (=> b!2433101 m!2814367))

(declare-fun m!2814369 () Bool)

(assert (=> b!2433102 m!2814369))

(declare-fun m!2814371 () Bool)

(assert (=> b!2433094 m!2814371))

(assert (=> b!2433099 m!2814369))

(declare-fun m!2814373 () Bool)

(assert (=> d!703486 m!2814373))

(assert (=> d!703486 m!2814005))

(assert (=> b!2433091 m!2814369))

(assert (=> b!2433091 m!2814369))

(declare-fun m!2814375 () Bool)

(assert (=> b!2433091 m!2814375))

(assert (=> b!2433091 m!2814365))

(assert (=> b!2433091 m!2814375))

(assert (=> b!2433091 m!2814365))

(declare-fun m!2814377 () Bool)

(assert (=> b!2433091 m!2814377))

(assert (=> b!2433090 m!2814365))

(assert (=> b!2433090 m!2814365))

(assert (=> b!2433090 m!2814367))

(assert (=> bm!149005 m!2814373))

(assert (=> b!2432563 d!703486))

(assert (=> b!2432563 d!703458))

(assert (=> d!703396 d!703470))

(assert (=> d!703396 d!703480))

(assert (=> bm!148957 d!703470))

(declare-fun d!703488 () Bool)

(assert (=> d!703488 (= (nullable!2182 (reg!7479 (regOne!14812 r!13927))) (nullableFct!530 (reg!7479 (regOne!14812 r!13927))))))

(declare-fun bs!464267 () Bool)

(assert (= bs!464267 d!703488))

(declare-fun m!2814379 () Bool)

(assert (=> bs!464267 m!2814379))

(assert (=> b!2432528 d!703488))

(declare-fun b!2433107 () Bool)

(declare-fun e!1546804 () Bool)

(declare-fun lt!877038 () List!28537)

(assert (=> b!2433107 (= e!1546804 (or (not (= (t!208514 s!9460) Nil!28439)) (= lt!877038 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)))))))

(declare-fun b!2433104 () Bool)

(declare-fun e!1546803 () List!28537)

(assert (=> b!2433104 (= e!1546803 (t!208514 s!9460))))

(declare-fun b!2433106 () Bool)

(declare-fun res!1032921 () Bool)

(assert (=> b!2433106 (=> (not res!1032921) (not e!1546804))))

(assert (=> b!2433106 (= res!1032921 (= (size!22253 lt!877038) (+ (size!22253 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439))) (size!22253 (t!208514 s!9460)))))))

(declare-fun d!703490 () Bool)

(assert (=> d!703490 e!1546804))

(declare-fun res!1032922 () Bool)

(assert (=> d!703490 (=> (not res!1032922) (not e!1546804))))

(assert (=> d!703490 (= res!1032922 (= (content!3915 lt!877038) (set.union (content!3915 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439))) (content!3915 (t!208514 s!9460)))))))

(assert (=> d!703490 (= lt!877038 e!1546803)))

(declare-fun c!388222 () Bool)

(assert (=> d!703490 (= c!388222 (is-Nil!28439 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439))))))

(assert (=> d!703490 (= (++!7058 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) (t!208514 s!9460)) lt!877038)))

(declare-fun b!2433105 () Bool)

(assert (=> b!2433105 (= e!1546803 (Cons!28439 (h!33840 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439))) (++!7058 (t!208514 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439))) (t!208514 s!9460))))))

(assert (= (and d!703490 c!388222) b!2433104))

(assert (= (and d!703490 (not c!388222)) b!2433105))

(assert (= (and d!703490 res!1032922) b!2433106))

(assert (= (and b!2433106 res!1032921) b!2433107))

(declare-fun m!2814381 () Bool)

(assert (=> b!2433106 m!2814381))

(assert (=> b!2433106 m!2814103))

(declare-fun m!2814383 () Bool)

(assert (=> b!2433106 m!2814383))

(declare-fun m!2814385 () Bool)

(assert (=> b!2433106 m!2814385))

(declare-fun m!2814387 () Bool)

(assert (=> d!703490 m!2814387))

(assert (=> d!703490 m!2814103))

(declare-fun m!2814389 () Bool)

(assert (=> d!703490 m!2814389))

(declare-fun m!2814391 () Bool)

(assert (=> d!703490 m!2814391))

(declare-fun m!2814393 () Bool)

(assert (=> b!2433105 m!2814393))

(assert (=> b!2432559 d!703490))

(declare-fun b!2433111 () Bool)

(declare-fun e!1546806 () Bool)

(declare-fun lt!877039 () List!28537)

(assert (=> b!2433111 (= e!1546806 (or (not (= (Cons!28439 (h!33840 s!9460) Nil!28439) Nil!28439)) (= lt!877039 Nil!28439)))))

(declare-fun b!2433108 () Bool)

(declare-fun e!1546805 () List!28537)

(assert (=> b!2433108 (= e!1546805 (Cons!28439 (h!33840 s!9460) Nil!28439))))

(declare-fun b!2433110 () Bool)

(declare-fun res!1032923 () Bool)

(assert (=> b!2433110 (=> (not res!1032923) (not e!1546806))))

(assert (=> b!2433110 (= res!1032923 (= (size!22253 lt!877039) (+ (size!22253 Nil!28439) (size!22253 (Cons!28439 (h!33840 s!9460) Nil!28439)))))))

(declare-fun d!703492 () Bool)

(assert (=> d!703492 e!1546806))

(declare-fun res!1032924 () Bool)

(assert (=> d!703492 (=> (not res!1032924) (not e!1546806))))

(assert (=> d!703492 (= res!1032924 (= (content!3915 lt!877039) (set.union (content!3915 Nil!28439) (content!3915 (Cons!28439 (h!33840 s!9460) Nil!28439)))))))

(assert (=> d!703492 (= lt!877039 e!1546805)))

(declare-fun c!388223 () Bool)

(assert (=> d!703492 (= c!388223 (is-Nil!28439 Nil!28439))))

(assert (=> d!703492 (= (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) lt!877039)))

(declare-fun b!2433109 () Bool)

(assert (=> b!2433109 (= e!1546805 (Cons!28439 (h!33840 Nil!28439) (++!7058 (t!208514 Nil!28439) (Cons!28439 (h!33840 s!9460) Nil!28439))))))

(assert (= (and d!703492 c!388223) b!2433108))

(assert (= (and d!703492 (not c!388223)) b!2433109))

(assert (= (and d!703492 res!1032924) b!2433110))

(assert (= (and b!2433110 res!1032923) b!2433111))

(declare-fun m!2814395 () Bool)

(assert (=> b!2433110 m!2814395))

(declare-fun m!2814397 () Bool)

(assert (=> b!2433110 m!2814397))

(declare-fun m!2814399 () Bool)

(assert (=> b!2433110 m!2814399))

(declare-fun m!2814401 () Bool)

(assert (=> d!703492 m!2814401))

(declare-fun m!2814403 () Bool)

(assert (=> d!703492 m!2814403))

(declare-fun m!2814405 () Bool)

(assert (=> d!703492 m!2814405))

(declare-fun m!2814407 () Bool)

(assert (=> b!2433109 m!2814407))

(assert (=> b!2432559 d!703492))

(declare-fun d!703494 () Bool)

(assert (=> d!703494 (= (++!7058 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) (t!208514 s!9460)) s!9460)))

(declare-fun lt!877042 () Unit!41683)

(declare-fun choose!14421 (List!28537 C!14458 List!28537 List!28537) Unit!41683)

(assert (=> d!703494 (= lt!877042 (choose!14421 Nil!28439 (h!33840 s!9460) (t!208514 s!9460) s!9460))))

(assert (=> d!703494 (= (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) (t!208514 s!9460))) s!9460)))

(assert (=> d!703494 (= (lemmaMoveElementToOtherListKeepsConcatEq!684 Nil!28439 (h!33840 s!9460) (t!208514 s!9460) s!9460) lt!877042)))

(declare-fun bs!464268 () Bool)

(assert (= bs!464268 d!703494))

(assert (=> bs!464268 m!2814103))

(assert (=> bs!464268 m!2814103))

(assert (=> bs!464268 m!2814105))

(declare-fun m!2814409 () Bool)

(assert (=> bs!464268 m!2814409))

(declare-fun m!2814411 () Bool)

(assert (=> bs!464268 m!2814411))

(assert (=> b!2432559 d!703494))

(declare-fun d!703496 () Bool)

(declare-fun e!1546807 () Bool)

(assert (=> d!703496 e!1546807))

(declare-fun res!1032929 () Bool)

(assert (=> d!703496 (=> res!1032929 e!1546807)))

(declare-fun e!1546811 () Bool)

(assert (=> d!703496 (= res!1032929 e!1546811)))

(declare-fun res!1032928 () Bool)

(assert (=> d!703496 (=> (not res!1032928) (not e!1546811))))

(declare-fun lt!877045 () Option!5639)

(assert (=> d!703496 (= res!1032928 (isDefined!4465 lt!877045))))

(declare-fun e!1546809 () Option!5639)

(assert (=> d!703496 (= lt!877045 e!1546809)))

(declare-fun c!388225 () Bool)

(declare-fun e!1546808 () Bool)

(assert (=> d!703496 (= c!388225 e!1546808)))

(declare-fun res!1032927 () Bool)

(assert (=> d!703496 (=> (not res!1032927) (not e!1546808))))

(assert (=> d!703496 (= res!1032927 (matchR!3265 (regOne!14812 r!13927) (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439))))))

(assert (=> d!703496 (validRegex!2867 (regOne!14812 r!13927))))

(assert (=> d!703496 (= (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) (t!208514 s!9460) s!9460) lt!877045)))

(declare-fun b!2433112 () Bool)

(declare-fun res!1032926 () Bool)

(assert (=> b!2433112 (=> (not res!1032926) (not e!1546811))))

(assert (=> b!2433112 (= res!1032926 (matchR!3265 (regOne!14812 r!13927) (_1!16569 (get!8765 lt!877045))))))

(declare-fun b!2433113 () Bool)

(assert (=> b!2433113 (= e!1546809 (Some!5638 (tuple2!28057 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) (t!208514 s!9460))))))

(declare-fun b!2433114 () Bool)

(declare-fun lt!877044 () Unit!41683)

(declare-fun lt!877043 () Unit!41683)

(assert (=> b!2433114 (= lt!877044 lt!877043)))

(assert (=> b!2433114 (= (++!7058 (++!7058 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) (Cons!28439 (h!33840 (t!208514 s!9460)) Nil!28439)) (t!208514 (t!208514 s!9460))) s!9460)))

(assert (=> b!2433114 (= lt!877043 (lemmaMoveElementToOtherListKeepsConcatEq!684 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) (h!33840 (t!208514 s!9460)) (t!208514 (t!208514 s!9460)) s!9460))))

(declare-fun e!1546810 () Option!5639)

(assert (=> b!2433114 (= e!1546810 (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) (++!7058 (++!7058 Nil!28439 (Cons!28439 (h!33840 s!9460) Nil!28439)) (Cons!28439 (h!33840 (t!208514 s!9460)) Nil!28439)) (t!208514 (t!208514 s!9460)) s!9460))))

(declare-fun b!2433115 () Bool)

(assert (=> b!2433115 (= e!1546810 None!5638)))

(declare-fun b!2433116 () Bool)

(assert (=> b!2433116 (= e!1546808 (matchR!3265 (regTwo!14812 r!13927) (t!208514 s!9460)))))

(declare-fun b!2433117 () Bool)

(assert (=> b!2433117 (= e!1546811 (= (++!7058 (_1!16569 (get!8765 lt!877045)) (_2!16569 (get!8765 lt!877045))) s!9460))))

(declare-fun b!2433118 () Bool)

(declare-fun res!1032925 () Bool)

(assert (=> b!2433118 (=> (not res!1032925) (not e!1546811))))

(assert (=> b!2433118 (= res!1032925 (matchR!3265 (regTwo!14812 r!13927) (_2!16569 (get!8765 lt!877045))))))

(declare-fun b!2433119 () Bool)

(assert (=> b!2433119 (= e!1546809 e!1546810)))

(declare-fun c!388224 () Bool)

(assert (=> b!2433119 (= c!388224 (is-Nil!28439 (t!208514 s!9460)))))

(declare-fun b!2433120 () Bool)

(assert (=> b!2433120 (= e!1546807 (not (isDefined!4465 lt!877045)))))

(assert (= (and d!703496 res!1032927) b!2433116))

(assert (= (and d!703496 c!388225) b!2433113))

(assert (= (and d!703496 (not c!388225)) b!2433119))

(assert (= (and b!2433119 c!388224) b!2433115))

(assert (= (and b!2433119 (not c!388224)) b!2433114))

(assert (= (and d!703496 res!1032928) b!2433112))

(assert (= (and b!2433112 res!1032926) b!2433118))

(assert (= (and b!2433118 res!1032925) b!2433117))

(assert (= (and d!703496 (not res!1032929)) b!2433120))

(declare-fun m!2814413 () Bool)

(assert (=> b!2433112 m!2814413))

(declare-fun m!2814415 () Bool)

(assert (=> b!2433112 m!2814415))

(declare-fun m!2814417 () Bool)

(assert (=> b!2433120 m!2814417))

(assert (=> b!2433114 m!2814103))

(declare-fun m!2814419 () Bool)

(assert (=> b!2433114 m!2814419))

(assert (=> b!2433114 m!2814419))

(declare-fun m!2814421 () Bool)

(assert (=> b!2433114 m!2814421))

(assert (=> b!2433114 m!2814103))

(declare-fun m!2814423 () Bool)

(assert (=> b!2433114 m!2814423))

(assert (=> b!2433114 m!2814419))

(declare-fun m!2814425 () Bool)

(assert (=> b!2433114 m!2814425))

(assert (=> d!703496 m!2814417))

(assert (=> d!703496 m!2814103))

(declare-fun m!2814427 () Bool)

(assert (=> d!703496 m!2814427))

(assert (=> d!703496 m!2814021))

(assert (=> b!2433117 m!2814413))

(declare-fun m!2814429 () Bool)

(assert (=> b!2433117 m!2814429))

(assert (=> b!2433118 m!2814413))

(declare-fun m!2814431 () Bool)

(assert (=> b!2433118 m!2814431))

(declare-fun m!2814433 () Bool)

(assert (=> b!2433116 m!2814433))

(assert (=> b!2432559 d!703496))

(declare-fun b!2433121 () Bool)

(declare-fun e!1546816 () Bool)

(declare-fun call!149013 () Bool)

(assert (=> b!2433121 (= e!1546816 call!149013)))

(declare-fun b!2433122 () Bool)

(declare-fun e!1546812 () Bool)

(declare-fun e!1546814 () Bool)

(assert (=> b!2433122 (= e!1546812 e!1546814)))

(declare-fun c!388227 () Bool)

(assert (=> b!2433122 (= c!388227 (is-Star!7150 lt!876987))))

(declare-fun bm!149006 () Bool)

(declare-fun call!149011 () Bool)

(declare-fun call!149012 () Bool)

(assert (=> bm!149006 (= call!149011 call!149012)))

(declare-fun b!2433123 () Bool)

(declare-fun e!1546813 () Bool)

(assert (=> b!2433123 (= e!1546814 e!1546813)))

(declare-fun res!1032934 () Bool)

(assert (=> b!2433123 (= res!1032934 (not (nullable!2182 (reg!7479 lt!876987))))))

(assert (=> b!2433123 (=> (not res!1032934) (not e!1546813))))

(declare-fun b!2433124 () Bool)

(declare-fun e!1546817 () Bool)

(assert (=> b!2433124 (= e!1546814 e!1546817)))

(declare-fun c!388226 () Bool)

(assert (=> b!2433124 (= c!388226 (is-Union!7150 lt!876987))))

(declare-fun b!2433125 () Bool)

(declare-fun res!1032930 () Bool)

(declare-fun e!1546818 () Bool)

(assert (=> b!2433125 (=> res!1032930 e!1546818)))

(assert (=> b!2433125 (= res!1032930 (not (is-Concat!11786 lt!876987)))))

(assert (=> b!2433125 (= e!1546817 e!1546818)))

(declare-fun d!703498 () Bool)

(declare-fun res!1032933 () Bool)

(assert (=> d!703498 (=> res!1032933 e!1546812)))

(assert (=> d!703498 (= res!1032933 (is-ElementMatch!7150 lt!876987))))

(assert (=> d!703498 (= (validRegex!2867 lt!876987) e!1546812)))

(declare-fun bm!149007 () Bool)

(assert (=> bm!149007 (= call!149013 (validRegex!2867 (ite c!388226 (regTwo!14813 lt!876987) (regOne!14812 lt!876987))))))

(declare-fun bm!149008 () Bool)

(assert (=> bm!149008 (= call!149012 (validRegex!2867 (ite c!388227 (reg!7479 lt!876987) (ite c!388226 (regOne!14813 lt!876987) (regTwo!14812 lt!876987)))))))

(declare-fun b!2433126 () Bool)

(declare-fun res!1032932 () Bool)

(assert (=> b!2433126 (=> (not res!1032932) (not e!1546816))))

(assert (=> b!2433126 (= res!1032932 call!149011)))

(assert (=> b!2433126 (= e!1546817 e!1546816)))

(declare-fun b!2433127 () Bool)

(declare-fun e!1546815 () Bool)

(assert (=> b!2433127 (= e!1546818 e!1546815)))

(declare-fun res!1032931 () Bool)

(assert (=> b!2433127 (=> (not res!1032931) (not e!1546815))))

(assert (=> b!2433127 (= res!1032931 call!149013)))

(declare-fun b!2433128 () Bool)

(assert (=> b!2433128 (= e!1546815 call!149011)))

(declare-fun b!2433129 () Bool)

(assert (=> b!2433129 (= e!1546813 call!149012)))

(assert (= (and d!703498 (not res!1032933)) b!2433122))

(assert (= (and b!2433122 c!388227) b!2433123))

(assert (= (and b!2433122 (not c!388227)) b!2433124))

(assert (= (and b!2433123 res!1032934) b!2433129))

(assert (= (and b!2433124 c!388226) b!2433126))

(assert (= (and b!2433124 (not c!388226)) b!2433125))

(assert (= (and b!2433126 res!1032932) b!2433121))

(assert (= (and b!2433125 (not res!1032930)) b!2433127))

(assert (= (and b!2433127 res!1032931) b!2433128))

(assert (= (or b!2433126 b!2433128) bm!149006))

(assert (= (or b!2433121 b!2433127) bm!149007))

(assert (= (or b!2433129 bm!149006) bm!149008))

(declare-fun m!2814435 () Bool)

(assert (=> b!2433123 m!2814435))

(declare-fun m!2814437 () Bool)

(assert (=> bm!149007 m!2814437))

(declare-fun m!2814439 () Bool)

(assert (=> bm!149008 m!2814439))

(assert (=> d!703372 d!703498))

(declare-fun d!703500 () Bool)

(declare-fun res!1032935 () Bool)

(declare-fun e!1546819 () Bool)

(assert (=> d!703500 (=> res!1032935 e!1546819)))

(assert (=> d!703500 (= res!1032935 (is-Nil!28438 l!9164))))

(assert (=> d!703500 (= (forall!5784 l!9164 lambda!91742) e!1546819)))

(declare-fun b!2433130 () Bool)

(declare-fun e!1546820 () Bool)

(assert (=> b!2433130 (= e!1546819 e!1546820)))

(declare-fun res!1032936 () Bool)

(assert (=> b!2433130 (=> (not res!1032936) (not e!1546820))))

(assert (=> b!2433130 (= res!1032936 (dynLambda!12240 lambda!91742 (h!33839 l!9164)))))

(declare-fun b!2433131 () Bool)

(assert (=> b!2433131 (= e!1546820 (forall!5784 (t!208513 l!9164) lambda!91742))))

(assert (= (and d!703500 (not res!1032935)) b!2433130))

(assert (= (and b!2433130 res!1032936) b!2433131))

(declare-fun b_lambda!74829 () Bool)

(assert (=> (not b_lambda!74829) (not b!2433130)))

(declare-fun m!2814441 () Bool)

(assert (=> b!2433130 m!2814441))

(declare-fun m!2814443 () Bool)

(assert (=> b!2433131 m!2814443))

(assert (=> d!703372 d!703500))

(assert (=> d!703382 d!703380))

(declare-fun bs!464269 () Bool)

(declare-fun d!703502 () Bool)

(assert (= bs!464269 (and d!703502 d!703382)))

(declare-fun lambda!91769 () Int)

(assert (=> bs!464269 (= lambda!91769 lambda!91745)))

(declare-fun bs!464270 () Bool)

(assert (= bs!464270 (and d!703502 b!2432422)))

(assert (=> bs!464270 (= lambda!91769 lambda!91733)))

(declare-fun bs!464271 () Bool)

(assert (= bs!464271 (and d!703502 b!2432679)))

(assert (=> bs!464271 (not (= lambda!91769 lambda!91754))))

(declare-fun bs!464272 () Bool)

(assert (= bs!464272 (and d!703502 b!2433024)))

(assert (=> bs!464272 (not (= lambda!91769 lambda!91765))))

(declare-fun bs!464273 () Bool)

(assert (= bs!464273 (and d!703502 b!2432683)))

(assert (=> bs!464273 (not (= lambda!91769 lambda!91753))))

(declare-fun bs!464274 () Bool)

(assert (= bs!464274 (and d!703502 b!2433020)))

(assert (=> bs!464274 (not (= lambda!91769 lambda!91766))))

(assert (=> d!703502 true))

(assert (=> d!703502 true))

(assert (=> d!703502 true))

(assert (=> d!703502 (= (isDefined!4465 (findConcatSeparation!747 (regOne!14812 r!13927) (regTwo!14812 r!13927) Nil!28439 s!9460 s!9460)) (Exists!1186 lambda!91769))))

(assert (=> d!703502 true))

(declare-fun _$89!1247 () Unit!41683)

(assert (=> d!703502 (= (choose!14415 (regOne!14812 r!13927) (regTwo!14812 r!13927) s!9460) _$89!1247)))

(declare-fun bs!464275 () Bool)

(assert (= bs!464275 d!703502))

(assert (=> bs!464275 m!2814015))

(assert (=> bs!464275 m!2814015))

(assert (=> bs!464275 m!2814017))

(declare-fun m!2814445 () Bool)

(assert (=> bs!464275 m!2814445))

(assert (=> d!703382 d!703502))

(assert (=> d!703382 d!703388))

(assert (=> d!703382 d!703390))

(declare-fun d!703504 () Bool)

(assert (=> d!703504 (= (Exists!1186 lambda!91745) (choose!14416 lambda!91745))))

(declare-fun bs!464276 () Bool)

(assert (= bs!464276 d!703504))

(declare-fun m!2814447 () Bool)

(assert (=> bs!464276 m!2814447))

(assert (=> d!703382 d!703504))

(declare-fun b!2433136 () Bool)

(declare-fun res!1032941 () Bool)

(declare-fun e!1546828 () Bool)

(assert (=> b!2433136 (=> res!1032941 e!1546828)))

(assert (=> b!2433136 (= res!1032941 (not (isEmpty!16477 (tail!3776 s!9460))))))

(declare-fun b!2433137 () Bool)

(declare-fun e!1546825 () Bool)

(assert (=> b!2433137 (= e!1546825 (matchR!3265 (derivativeStep!1836 (regTwo!14812 r!13927) (head!5503 s!9460)) (tail!3776 s!9460)))))

(declare-fun bm!149009 () Bool)

(declare-fun call!149014 () Bool)

(assert (=> bm!149009 (= call!149014 (isEmpty!16477 s!9460))))

(declare-fun b!2433138 () Bool)

(declare-fun res!1032942 () Bool)

(declare-fun e!1546829 () Bool)

(assert (=> b!2433138 (=> res!1032942 e!1546829)))

(declare-fun e!1546827 () Bool)

(assert (=> b!2433138 (= res!1032942 e!1546827)))

(declare-fun res!1032947 () Bool)

(assert (=> b!2433138 (=> (not res!1032947) (not e!1546827))))

(declare-fun lt!877046 () Bool)

(assert (=> b!2433138 (= res!1032947 lt!877046)))

(declare-fun b!2433140 () Bool)

(assert (=> b!2433140 (= e!1546825 (nullable!2182 (regTwo!14812 r!13927)))))

(declare-fun b!2433141 () Bool)

(declare-fun e!1546824 () Bool)

(assert (=> b!2433141 (= e!1546824 (not lt!877046))))

(declare-fun b!2433142 () Bool)

(declare-fun res!1032946 () Bool)

(assert (=> b!2433142 (=> (not res!1032946) (not e!1546827))))

(assert (=> b!2433142 (= res!1032946 (not call!149014))))

(declare-fun b!2433143 () Bool)

(declare-fun e!1546823 () Bool)

(assert (=> b!2433143 (= e!1546823 (= lt!877046 call!149014))))

(declare-fun b!2433144 () Bool)

(declare-fun e!1546826 () Bool)

(assert (=> b!2433144 (= e!1546829 e!1546826)))

(declare-fun res!1032948 () Bool)

(assert (=> b!2433144 (=> (not res!1032948) (not e!1546826))))

(assert (=> b!2433144 (= res!1032948 (not lt!877046))))

(declare-fun b!2433145 () Bool)

(assert (=> b!2433145 (= e!1546827 (= (head!5503 s!9460) (c!388076 (regTwo!14812 r!13927))))))

(declare-fun b!2433146 () Bool)

(declare-fun res!1032944 () Bool)

(assert (=> b!2433146 (=> res!1032944 e!1546829)))

(assert (=> b!2433146 (= res!1032944 (not (is-ElementMatch!7150 (regTwo!14812 r!13927))))))

(assert (=> b!2433146 (= e!1546824 e!1546829)))

(declare-fun b!2433147 () Bool)

(declare-fun res!1032945 () Bool)

(assert (=> b!2433147 (=> (not res!1032945) (not e!1546827))))

(assert (=> b!2433147 (= res!1032945 (isEmpty!16477 (tail!3776 s!9460)))))

(declare-fun b!2433139 () Bool)

(assert (=> b!2433139 (= e!1546826 e!1546828)))

(declare-fun res!1032943 () Bool)

(assert (=> b!2433139 (=> res!1032943 e!1546828)))

(assert (=> b!2433139 (= res!1032943 call!149014)))

(declare-fun d!703506 () Bool)

(assert (=> d!703506 e!1546823))

(declare-fun c!388230 () Bool)

(assert (=> d!703506 (= c!388230 (is-EmptyExpr!7150 (regTwo!14812 r!13927)))))

(assert (=> d!703506 (= lt!877046 e!1546825)))

(declare-fun c!388229 () Bool)

(assert (=> d!703506 (= c!388229 (isEmpty!16477 s!9460))))

(assert (=> d!703506 (validRegex!2867 (regTwo!14812 r!13927))))

(assert (=> d!703506 (= (matchR!3265 (regTwo!14812 r!13927) s!9460) lt!877046)))

(declare-fun b!2433148 () Bool)

(assert (=> b!2433148 (= e!1546828 (not (= (head!5503 s!9460) (c!388076 (regTwo!14812 r!13927)))))))

(declare-fun b!2433149 () Bool)

(assert (=> b!2433149 (= e!1546823 e!1546824)))

(declare-fun c!388228 () Bool)

(assert (=> b!2433149 (= c!388228 (is-EmptyLang!7150 (regTwo!14812 r!13927)))))

(assert (= (and d!703506 c!388229) b!2433140))

(assert (= (and d!703506 (not c!388229)) b!2433137))

(assert (= (and d!703506 c!388230) b!2433143))

(assert (= (and d!703506 (not c!388230)) b!2433149))

(assert (= (and b!2433149 c!388228) b!2433141))

(assert (= (and b!2433149 (not c!388228)) b!2433146))

(assert (= (and b!2433146 (not res!1032944)) b!2433138))

(assert (= (and b!2433138 res!1032947) b!2433142))

(assert (= (and b!2433142 res!1032946) b!2433147))

(assert (= (and b!2433147 res!1032945) b!2433145))

(assert (= (and b!2433138 (not res!1032942)) b!2433144))

(assert (= (and b!2433144 res!1032948) b!2433139))

(assert (= (and b!2433139 (not res!1032943)) b!2433136))

(assert (= (and b!2433136 (not res!1032941)) b!2433148))

(assert (= (or b!2433143 b!2433139 b!2433142) bm!149009))

(assert (=> b!2433147 m!2814129))

(assert (=> b!2433147 m!2814129))

(assert (=> b!2433147 m!2814131))

(assert (=> b!2433148 m!2814133))

(assert (=> b!2433140 m!2814371))

(assert (=> b!2433145 m!2814133))

(assert (=> d!703506 m!2814137))

(assert (=> d!703506 m!2814005))

(assert (=> b!2433137 m!2814133))

(assert (=> b!2433137 m!2814133))

(declare-fun m!2814449 () Bool)

(assert (=> b!2433137 m!2814449))

(assert (=> b!2433137 m!2814129))

(assert (=> b!2433137 m!2814449))

(assert (=> b!2433137 m!2814129))

(declare-fun m!2814451 () Bool)

(assert (=> b!2433137 m!2814451))

(assert (=> b!2433136 m!2814129))

(assert (=> b!2433136 m!2814129))

(assert (=> b!2433136 m!2814131))

(assert (=> bm!149009 m!2814137))

(assert (=> b!2432561 d!703506))

(declare-fun bs!464277 () Bool)

(declare-fun b!2433160 () Bool)

(assert (= bs!464277 (and b!2433160 b!2432422)))

(declare-fun lambda!91770 () Int)

(assert (=> bs!464277 (not (= lambda!91770 lambda!91733))))

(declare-fun bs!464278 () Bool)

(assert (= bs!464278 (and b!2433160 b!2432679)))

(assert (=> bs!464278 (not (= lambda!91770 lambda!91754))))

(declare-fun bs!464279 () Bool)

(assert (= bs!464279 (and b!2433160 b!2433024)))

(assert (=> bs!464279 (= (and (= (reg!7479 (regOne!14813 r!13927)) (reg!7479 (regTwo!14813 r!13927))) (= (regOne!14813 r!13927) (regTwo!14813 r!13927))) (= lambda!91770 lambda!91765))))

(declare-fun bs!464280 () Bool)

(assert (= bs!464280 (and b!2433160 d!703502)))

(assert (=> bs!464280 (not (= lambda!91770 lambda!91769))))

(declare-fun bs!464281 () Bool)

(assert (= bs!464281 (and b!2433160 d!703382)))

(assert (=> bs!464281 (not (= lambda!91770 lambda!91745))))

(declare-fun bs!464282 () Bool)

(assert (= bs!464282 (and b!2433160 b!2432683)))

(assert (=> bs!464282 (= (and (= (reg!7479 (regOne!14813 r!13927)) (reg!7479 r!13927)) (= (regOne!14813 r!13927) r!13927)) (= lambda!91770 lambda!91753))))

(declare-fun bs!464283 () Bool)

(assert (= bs!464283 (and b!2433160 b!2433020)))

(assert (=> bs!464283 (not (= lambda!91770 lambda!91766))))

(assert (=> b!2433160 true))

(assert (=> b!2433160 true))

(declare-fun bs!464284 () Bool)

(declare-fun b!2433156 () Bool)

(assert (= bs!464284 (and b!2433156 b!2432422)))

(declare-fun lambda!91771 () Int)

(assert (=> bs!464284 (not (= lambda!91771 lambda!91733))))

(declare-fun bs!464285 () Bool)

(assert (= bs!464285 (and b!2433156 b!2433160)))

(assert (=> bs!464285 (not (= lambda!91771 lambda!91770))))

(declare-fun bs!464286 () Bool)

(assert (= bs!464286 (and b!2433156 b!2432679)))

(assert (=> bs!464286 (= (and (= (regOne!14812 (regOne!14813 r!13927)) (regOne!14812 r!13927)) (= (regTwo!14812 (regOne!14813 r!13927)) (regTwo!14812 r!13927))) (= lambda!91771 lambda!91754))))

(declare-fun bs!464287 () Bool)

(assert (= bs!464287 (and b!2433156 b!2433024)))

(assert (=> bs!464287 (not (= lambda!91771 lambda!91765))))

(declare-fun bs!464288 () Bool)

(assert (= bs!464288 (and b!2433156 d!703502)))

(assert (=> bs!464288 (not (= lambda!91771 lambda!91769))))

(declare-fun bs!464289 () Bool)

(assert (= bs!464289 (and b!2433156 d!703382)))

(assert (=> bs!464289 (not (= lambda!91771 lambda!91745))))

(declare-fun bs!464290 () Bool)

(assert (= bs!464290 (and b!2433156 b!2432683)))

(assert (=> bs!464290 (not (= lambda!91771 lambda!91753))))

(declare-fun bs!464291 () Bool)

(assert (= bs!464291 (and b!2433156 b!2433020)))

(assert (=> bs!464291 (= (and (= (regOne!14812 (regOne!14813 r!13927)) (regOne!14812 (regTwo!14813 r!13927))) (= (regTwo!14812 (regOne!14813 r!13927)) (regTwo!14812 (regTwo!14813 r!13927)))) (= lambda!91771 lambda!91766))))

(assert (=> b!2433156 true))

(assert (=> b!2433156 true))

(declare-fun call!149016 () Bool)

(declare-fun c!388234 () Bool)

(declare-fun bm!149010 () Bool)

(assert (=> bm!149010 (= call!149016 (Exists!1186 (ite c!388234 lambda!91770 lambda!91771)))))

(declare-fun b!2433150 () Bool)

(declare-fun e!1546834 () Bool)

(declare-fun call!149015 () Bool)

(assert (=> b!2433150 (= e!1546834 call!149015)))

(declare-fun b!2433151 () Bool)

(declare-fun e!1546830 () Bool)

(assert (=> b!2433151 (= e!1546830 (= s!9460 (Cons!28439 (c!388076 (regOne!14813 r!13927)) Nil!28439)))))

(declare-fun b!2433152 () Bool)

(declare-fun e!1546833 () Bool)

(assert (=> b!2433152 (= e!1546833 (matchRSpec!997 (regTwo!14813 (regOne!14813 r!13927)) s!9460))))

(declare-fun bm!149011 () Bool)

(assert (=> bm!149011 (= call!149015 (isEmpty!16477 s!9460))))

(declare-fun d!703508 () Bool)

(declare-fun c!388233 () Bool)

(assert (=> d!703508 (= c!388233 (is-EmptyExpr!7150 (regOne!14813 r!13927)))))

(assert (=> d!703508 (= (matchRSpec!997 (regOne!14813 r!13927) s!9460) e!1546834)))

(declare-fun b!2433153 () Bool)

(declare-fun e!1546836 () Bool)

(assert (=> b!2433153 (= e!1546834 e!1546836)))

(declare-fun res!1032951 () Bool)

(assert (=> b!2433153 (= res!1032951 (not (is-EmptyLang!7150 (regOne!14813 r!13927))))))

(assert (=> b!2433153 (=> (not res!1032951) (not e!1546836))))

(declare-fun b!2433154 () Bool)

(declare-fun e!1546832 () Bool)

(assert (=> b!2433154 (= e!1546832 e!1546833)))

(declare-fun res!1032949 () Bool)

(assert (=> b!2433154 (= res!1032949 (matchRSpec!997 (regOne!14813 (regOne!14813 r!13927)) s!9460))))

(assert (=> b!2433154 (=> res!1032949 e!1546833)))

(declare-fun b!2433155 () Bool)

(declare-fun c!388231 () Bool)

(assert (=> b!2433155 (= c!388231 (is-ElementMatch!7150 (regOne!14813 r!13927)))))

(assert (=> b!2433155 (= e!1546836 e!1546830)))

(declare-fun e!1546831 () Bool)

(assert (=> b!2433156 (= e!1546831 call!149016)))

(declare-fun b!2433157 () Bool)

(declare-fun c!388232 () Bool)

(assert (=> b!2433157 (= c!388232 (is-Union!7150 (regOne!14813 r!13927)))))

(assert (=> b!2433157 (= e!1546830 e!1546832)))

(declare-fun b!2433158 () Bool)

(declare-fun res!1032950 () Bool)

(declare-fun e!1546835 () Bool)

(assert (=> b!2433158 (=> res!1032950 e!1546835)))

(assert (=> b!2433158 (= res!1032950 call!149015)))

(assert (=> b!2433158 (= e!1546831 e!1546835)))

(declare-fun b!2433159 () Bool)

(assert (=> b!2433159 (= e!1546832 e!1546831)))

(assert (=> b!2433159 (= c!388234 (is-Star!7150 (regOne!14813 r!13927)))))

(assert (=> b!2433160 (= e!1546835 call!149016)))

(assert (= (and d!703508 c!388233) b!2433150))

(assert (= (and d!703508 (not c!388233)) b!2433153))

(assert (= (and b!2433153 res!1032951) b!2433155))

(assert (= (and b!2433155 c!388231) b!2433151))

(assert (= (and b!2433155 (not c!388231)) b!2433157))

(assert (= (and b!2433157 c!388232) b!2433154))

(assert (= (and b!2433157 (not c!388232)) b!2433159))

(assert (= (and b!2433154 (not res!1032949)) b!2433152))

(assert (= (and b!2433159 c!388234) b!2433158))

(assert (= (and b!2433159 (not c!388234)) b!2433156))

(assert (= (and b!2433158 (not res!1032950)) b!2433160))

(assert (= (or b!2433160 b!2433156) bm!149010))

(assert (= (or b!2433150 b!2433158) bm!149011))

(declare-fun m!2814453 () Bool)

(assert (=> bm!149010 m!2814453))

(declare-fun m!2814455 () Bool)

(assert (=> b!2433152 m!2814455))

(assert (=> bm!149011 m!2814137))

(declare-fun m!2814457 () Bool)

(assert (=> b!2433154 m!2814457))

(assert (=> b!2432677 d!703508))

(declare-fun b!2433163 () Bool)

(declare-fun e!1546837 () Bool)

(declare-fun tp!772692 () Bool)

(assert (=> b!2433163 (= e!1546837 tp!772692)))

(declare-fun b!2433162 () Bool)

(declare-fun tp!772690 () Bool)

(declare-fun tp!772691 () Bool)

(assert (=> b!2433162 (= e!1546837 (and tp!772690 tp!772691))))

(declare-fun b!2433161 () Bool)

(assert (=> b!2433161 (= e!1546837 tp_is_empty!11713)))

(declare-fun b!2433164 () Bool)

(declare-fun tp!772693 () Bool)

(declare-fun tp!772694 () Bool)

(assert (=> b!2433164 (= e!1546837 (and tp!772693 tp!772694))))

(assert (=> b!2432730 (= tp!772630 e!1546837)))

(assert (= (and b!2432730 (is-ElementMatch!7150 (regOne!14812 (h!33839 l!9164)))) b!2433161))

(assert (= (and b!2432730 (is-Concat!11786 (regOne!14812 (h!33839 l!9164)))) b!2433162))

(assert (= (and b!2432730 (is-Star!7150 (regOne!14812 (h!33839 l!9164)))) b!2433163))

(assert (= (and b!2432730 (is-Union!7150 (regOne!14812 (h!33839 l!9164)))) b!2433164))

(declare-fun b!2433167 () Bool)

(declare-fun e!1546838 () Bool)

(declare-fun tp!772697 () Bool)

(assert (=> b!2433167 (= e!1546838 tp!772697)))

(declare-fun b!2433166 () Bool)

(declare-fun tp!772695 () Bool)

(declare-fun tp!772696 () Bool)

(assert (=> b!2433166 (= e!1546838 (and tp!772695 tp!772696))))

(declare-fun b!2433165 () Bool)

(assert (=> b!2433165 (= e!1546838 tp_is_empty!11713)))

(declare-fun b!2433168 () Bool)

(declare-fun tp!772698 () Bool)

(declare-fun tp!772699 () Bool)

(assert (=> b!2433168 (= e!1546838 (and tp!772698 tp!772699))))

(assert (=> b!2432730 (= tp!772631 e!1546838)))

(assert (= (and b!2432730 (is-ElementMatch!7150 (regTwo!14812 (h!33839 l!9164)))) b!2433165))

(assert (= (and b!2432730 (is-Concat!11786 (regTwo!14812 (h!33839 l!9164)))) b!2433166))

(assert (= (and b!2432730 (is-Star!7150 (regTwo!14812 (h!33839 l!9164)))) b!2433167))

(assert (= (and b!2432730 (is-Union!7150 (regTwo!14812 (h!33839 l!9164)))) b!2433168))

(declare-fun b!2433171 () Bool)

(declare-fun e!1546839 () Bool)

(declare-fun tp!772702 () Bool)

(assert (=> b!2433171 (= e!1546839 tp!772702)))

(declare-fun b!2433170 () Bool)

(declare-fun tp!772700 () Bool)

(declare-fun tp!772701 () Bool)

(assert (=> b!2433170 (= e!1546839 (and tp!772700 tp!772701))))

(declare-fun b!2433169 () Bool)

(assert (=> b!2433169 (= e!1546839 tp_is_empty!11713)))

(declare-fun b!2433172 () Bool)

(declare-fun tp!772703 () Bool)

(declare-fun tp!772704 () Bool)

(assert (=> b!2433172 (= e!1546839 (and tp!772703 tp!772704))))

(assert (=> b!2432715 (= tp!772615 e!1546839)))

(assert (= (and b!2432715 (is-ElementMatch!7150 (regOne!14813 (regTwo!14812 r!13927)))) b!2433169))

(assert (= (and b!2432715 (is-Concat!11786 (regOne!14813 (regTwo!14812 r!13927)))) b!2433170))

(assert (= (and b!2432715 (is-Star!7150 (regOne!14813 (regTwo!14812 r!13927)))) b!2433171))

(assert (= (and b!2432715 (is-Union!7150 (regOne!14813 (regTwo!14812 r!13927)))) b!2433172))

(declare-fun b!2433175 () Bool)

(declare-fun e!1546840 () Bool)

(declare-fun tp!772707 () Bool)

(assert (=> b!2433175 (= e!1546840 tp!772707)))

(declare-fun b!2433174 () Bool)

(declare-fun tp!772705 () Bool)

(declare-fun tp!772706 () Bool)

(assert (=> b!2433174 (= e!1546840 (and tp!772705 tp!772706))))

(declare-fun b!2433173 () Bool)

(assert (=> b!2433173 (= e!1546840 tp_is_empty!11713)))

(declare-fun b!2433176 () Bool)

(declare-fun tp!772708 () Bool)

(declare-fun tp!772709 () Bool)

(assert (=> b!2433176 (= e!1546840 (and tp!772708 tp!772709))))

(assert (=> b!2432715 (= tp!772616 e!1546840)))

(assert (= (and b!2432715 (is-ElementMatch!7150 (regTwo!14813 (regTwo!14812 r!13927)))) b!2433173))

(assert (= (and b!2432715 (is-Concat!11786 (regTwo!14813 (regTwo!14812 r!13927)))) b!2433174))

(assert (= (and b!2432715 (is-Star!7150 (regTwo!14813 (regTwo!14812 r!13927)))) b!2433175))

(assert (= (and b!2432715 (is-Union!7150 (regTwo!14813 (regTwo!14812 r!13927)))) b!2433176))

(declare-fun b!2433179 () Bool)

(declare-fun e!1546841 () Bool)

(declare-fun tp!772712 () Bool)

(assert (=> b!2433179 (= e!1546841 tp!772712)))

(declare-fun b!2433178 () Bool)

(declare-fun tp!772710 () Bool)

(declare-fun tp!772711 () Bool)

(assert (=> b!2433178 (= e!1546841 (and tp!772710 tp!772711))))

(declare-fun b!2433177 () Bool)

(assert (=> b!2433177 (= e!1546841 tp_is_empty!11713)))

(declare-fun b!2433180 () Bool)

(declare-fun tp!772713 () Bool)

(declare-fun tp!772714 () Bool)

(assert (=> b!2433180 (= e!1546841 (and tp!772713 tp!772714))))

(assert (=> b!2432710 (= tp!772609 e!1546841)))

(assert (= (and b!2432710 (is-ElementMatch!7150 (reg!7479 (regOne!14812 r!13927)))) b!2433177))

(assert (= (and b!2432710 (is-Concat!11786 (reg!7479 (regOne!14812 r!13927)))) b!2433178))

(assert (= (and b!2432710 (is-Star!7150 (reg!7479 (regOne!14812 r!13927)))) b!2433179))

(assert (= (and b!2432710 (is-Union!7150 (reg!7479 (regOne!14812 r!13927)))) b!2433180))

(declare-fun b!2433183 () Bool)

(declare-fun e!1546842 () Bool)

(declare-fun tp!772717 () Bool)

(assert (=> b!2433183 (= e!1546842 tp!772717)))

(declare-fun b!2433182 () Bool)

(declare-fun tp!772715 () Bool)

(declare-fun tp!772716 () Bool)

(assert (=> b!2433182 (= e!1546842 (and tp!772715 tp!772716))))

(declare-fun b!2433181 () Bool)

(assert (=> b!2433181 (= e!1546842 tp_is_empty!11713)))

(declare-fun b!2433184 () Bool)

(declare-fun tp!772718 () Bool)

(declare-fun tp!772719 () Bool)

(assert (=> b!2433184 (= e!1546842 (and tp!772718 tp!772719))))

(assert (=> b!2432707 (= tp!772605 e!1546842)))

(assert (= (and b!2432707 (is-ElementMatch!7150 (regOne!14813 (reg!7479 r!13927)))) b!2433181))

(assert (= (and b!2432707 (is-Concat!11786 (regOne!14813 (reg!7479 r!13927)))) b!2433182))

(assert (= (and b!2432707 (is-Star!7150 (regOne!14813 (reg!7479 r!13927)))) b!2433183))

(assert (= (and b!2432707 (is-Union!7150 (regOne!14813 (reg!7479 r!13927)))) b!2433184))

(declare-fun b!2433187 () Bool)

(declare-fun e!1546843 () Bool)

(declare-fun tp!772722 () Bool)

(assert (=> b!2433187 (= e!1546843 tp!772722)))

(declare-fun b!2433186 () Bool)

(declare-fun tp!772720 () Bool)

(declare-fun tp!772721 () Bool)

(assert (=> b!2433186 (= e!1546843 (and tp!772720 tp!772721))))

(declare-fun b!2433185 () Bool)

(assert (=> b!2433185 (= e!1546843 tp_is_empty!11713)))

(declare-fun b!2433188 () Bool)

(declare-fun tp!772723 () Bool)

(declare-fun tp!772724 () Bool)

(assert (=> b!2433188 (= e!1546843 (and tp!772723 tp!772724))))

(assert (=> b!2432707 (= tp!772606 e!1546843)))

(assert (= (and b!2432707 (is-ElementMatch!7150 (regTwo!14813 (reg!7479 r!13927)))) b!2433185))

(assert (= (and b!2432707 (is-Concat!11786 (regTwo!14813 (reg!7479 r!13927)))) b!2433186))

(assert (= (and b!2432707 (is-Star!7150 (regTwo!14813 (reg!7479 r!13927)))) b!2433187))

(assert (= (and b!2432707 (is-Union!7150 (regTwo!14813 (reg!7479 r!13927)))) b!2433188))

(declare-fun b!2433191 () Bool)

(declare-fun e!1546844 () Bool)

(declare-fun tp!772727 () Bool)

(assert (=> b!2433191 (= e!1546844 tp!772727)))

(declare-fun b!2433190 () Bool)

(declare-fun tp!772725 () Bool)

(declare-fun tp!772726 () Bool)

(assert (=> b!2433190 (= e!1546844 (and tp!772725 tp!772726))))

(declare-fun b!2433189 () Bool)

(assert (=> b!2433189 (= e!1546844 tp_is_empty!11713)))

(declare-fun b!2433192 () Bool)

(declare-fun tp!772728 () Bool)

(declare-fun tp!772729 () Bool)

(assert (=> b!2433192 (= e!1546844 (and tp!772728 tp!772729))))

(assert (=> b!2432714 (= tp!772614 e!1546844)))

(assert (= (and b!2432714 (is-ElementMatch!7150 (reg!7479 (regTwo!14812 r!13927)))) b!2433189))

(assert (= (and b!2432714 (is-Concat!11786 (reg!7479 (regTwo!14812 r!13927)))) b!2433190))

(assert (= (and b!2432714 (is-Star!7150 (reg!7479 (regTwo!14812 r!13927)))) b!2433191))

(assert (= (and b!2432714 (is-Union!7150 (reg!7479 (regTwo!14812 r!13927)))) b!2433192))

(declare-fun b!2433195 () Bool)

(declare-fun e!1546845 () Bool)

(declare-fun tp!772732 () Bool)

(assert (=> b!2433195 (= e!1546845 tp!772732)))

(declare-fun b!2433194 () Bool)

(declare-fun tp!772730 () Bool)

(declare-fun tp!772731 () Bool)

(assert (=> b!2433194 (= e!1546845 (and tp!772730 tp!772731))))

(declare-fun b!2433193 () Bool)

(assert (=> b!2433193 (= e!1546845 tp_is_empty!11713)))

(declare-fun b!2433196 () Bool)

(declare-fun tp!772733 () Bool)

(declare-fun tp!772734 () Bool)

(assert (=> b!2433196 (= e!1546845 (and tp!772733 tp!772734))))

(assert (=> b!2432709 (= tp!772607 e!1546845)))

(assert (= (and b!2432709 (is-ElementMatch!7150 (regOne!14812 (regOne!14812 r!13927)))) b!2433193))

(assert (= (and b!2432709 (is-Concat!11786 (regOne!14812 (regOne!14812 r!13927)))) b!2433194))

(assert (= (and b!2432709 (is-Star!7150 (regOne!14812 (regOne!14812 r!13927)))) b!2433195))

(assert (= (and b!2432709 (is-Union!7150 (regOne!14812 (regOne!14812 r!13927)))) b!2433196))

(declare-fun b!2433199 () Bool)

(declare-fun e!1546846 () Bool)

(declare-fun tp!772737 () Bool)

(assert (=> b!2433199 (= e!1546846 tp!772737)))

(declare-fun b!2433198 () Bool)

(declare-fun tp!772735 () Bool)

(declare-fun tp!772736 () Bool)

(assert (=> b!2433198 (= e!1546846 (and tp!772735 tp!772736))))

(declare-fun b!2433197 () Bool)

(assert (=> b!2433197 (= e!1546846 tp_is_empty!11713)))

(declare-fun b!2433200 () Bool)

(declare-fun tp!772738 () Bool)

(declare-fun tp!772739 () Bool)

(assert (=> b!2433200 (= e!1546846 (and tp!772738 tp!772739))))

(assert (=> b!2432709 (= tp!772608 e!1546846)))

(assert (= (and b!2432709 (is-ElementMatch!7150 (regTwo!14812 (regOne!14812 r!13927)))) b!2433197))

(assert (= (and b!2432709 (is-Concat!11786 (regTwo!14812 (regOne!14812 r!13927)))) b!2433198))

(assert (= (and b!2432709 (is-Star!7150 (regTwo!14812 (regOne!14812 r!13927)))) b!2433199))

(assert (= (and b!2432709 (is-Union!7150 (regTwo!14812 (regOne!14812 r!13927)))) b!2433200))

(declare-fun b!2433203 () Bool)

(declare-fun e!1546847 () Bool)

(declare-fun tp!772742 () Bool)

(assert (=> b!2433203 (= e!1546847 tp!772742)))

(declare-fun b!2433202 () Bool)

(declare-fun tp!772740 () Bool)

(declare-fun tp!772741 () Bool)

(assert (=> b!2433202 (= e!1546847 (and tp!772740 tp!772741))))

(declare-fun b!2433201 () Bool)

(assert (=> b!2433201 (= e!1546847 tp_is_empty!11713)))

(declare-fun b!2433204 () Bool)

(declare-fun tp!772743 () Bool)

(declare-fun tp!772744 () Bool)

(assert (=> b!2433204 (= e!1546847 (and tp!772743 tp!772744))))

(assert (=> b!2432713 (= tp!772612 e!1546847)))

(assert (= (and b!2432713 (is-ElementMatch!7150 (regOne!14812 (regTwo!14812 r!13927)))) b!2433201))

(assert (= (and b!2432713 (is-Concat!11786 (regOne!14812 (regTwo!14812 r!13927)))) b!2433202))

(assert (= (and b!2432713 (is-Star!7150 (regOne!14812 (regTwo!14812 r!13927)))) b!2433203))

(assert (= (and b!2432713 (is-Union!7150 (regOne!14812 (regTwo!14812 r!13927)))) b!2433204))

(declare-fun b!2433207 () Bool)

(declare-fun e!1546848 () Bool)

(declare-fun tp!772747 () Bool)

(assert (=> b!2433207 (= e!1546848 tp!772747)))

(declare-fun b!2433206 () Bool)

(declare-fun tp!772745 () Bool)

(declare-fun tp!772746 () Bool)

(assert (=> b!2433206 (= e!1546848 (and tp!772745 tp!772746))))

(declare-fun b!2433205 () Bool)

(assert (=> b!2433205 (= e!1546848 tp_is_empty!11713)))

(declare-fun b!2433208 () Bool)

(declare-fun tp!772748 () Bool)

(declare-fun tp!772749 () Bool)

(assert (=> b!2433208 (= e!1546848 (and tp!772748 tp!772749))))

(assert (=> b!2432713 (= tp!772613 e!1546848)))

(assert (= (and b!2432713 (is-ElementMatch!7150 (regTwo!14812 (regTwo!14812 r!13927)))) b!2433205))

(assert (= (and b!2432713 (is-Concat!11786 (regTwo!14812 (regTwo!14812 r!13927)))) b!2433206))

(assert (= (and b!2432713 (is-Star!7150 (regTwo!14812 (regTwo!14812 r!13927)))) b!2433207))

(assert (= (and b!2432713 (is-Union!7150 (regTwo!14812 (regTwo!14812 r!13927)))) b!2433208))

(declare-fun b!2433211 () Bool)

(declare-fun e!1546849 () Bool)

(declare-fun tp!772752 () Bool)

(assert (=> b!2433211 (= e!1546849 tp!772752)))

(declare-fun b!2433210 () Bool)

(declare-fun tp!772750 () Bool)

(declare-fun tp!772751 () Bool)

(assert (=> b!2433210 (= e!1546849 (and tp!772750 tp!772751))))

(declare-fun b!2433209 () Bool)

(assert (=> b!2433209 (= e!1546849 tp_is_empty!11713)))

(declare-fun b!2433212 () Bool)

(declare-fun tp!772753 () Bool)

(declare-fun tp!772754 () Bool)

(assert (=> b!2433212 (= e!1546849 (and tp!772753 tp!772754))))

(assert (=> b!2432728 (= tp!772628 e!1546849)))

(assert (= (and b!2432728 (is-ElementMatch!7150 (regOne!14813 (regTwo!14813 r!13927)))) b!2433209))

(assert (= (and b!2432728 (is-Concat!11786 (regOne!14813 (regTwo!14813 r!13927)))) b!2433210))

(assert (= (and b!2432728 (is-Star!7150 (regOne!14813 (regTwo!14813 r!13927)))) b!2433211))

(assert (= (and b!2432728 (is-Union!7150 (regOne!14813 (regTwo!14813 r!13927)))) b!2433212))

(declare-fun b!2433215 () Bool)

(declare-fun e!1546850 () Bool)

(declare-fun tp!772757 () Bool)

(assert (=> b!2433215 (= e!1546850 tp!772757)))

(declare-fun b!2433214 () Bool)

(declare-fun tp!772755 () Bool)

(declare-fun tp!772756 () Bool)

(assert (=> b!2433214 (= e!1546850 (and tp!772755 tp!772756))))

(declare-fun b!2433213 () Bool)

(assert (=> b!2433213 (= e!1546850 tp_is_empty!11713)))

(declare-fun b!2433216 () Bool)

(declare-fun tp!772758 () Bool)

(declare-fun tp!772759 () Bool)

(assert (=> b!2433216 (= e!1546850 (and tp!772758 tp!772759))))

(assert (=> b!2432728 (= tp!772629 e!1546850)))

(assert (= (and b!2432728 (is-ElementMatch!7150 (regTwo!14813 (regTwo!14813 r!13927)))) b!2433213))

(assert (= (and b!2432728 (is-Concat!11786 (regTwo!14813 (regTwo!14813 r!13927)))) b!2433214))

(assert (= (and b!2432728 (is-Star!7150 (regTwo!14813 (regTwo!14813 r!13927)))) b!2433215))

(assert (= (and b!2432728 (is-Union!7150 (regTwo!14813 (regTwo!14813 r!13927)))) b!2433216))

(declare-fun b!2433219 () Bool)

(declare-fun e!1546851 () Bool)

(declare-fun tp!772762 () Bool)

(assert (=> b!2433219 (= e!1546851 tp!772762)))

(declare-fun b!2433218 () Bool)

(declare-fun tp!772760 () Bool)

(declare-fun tp!772761 () Bool)

(assert (=> b!2433218 (= e!1546851 (and tp!772760 tp!772761))))

(declare-fun b!2433217 () Bool)

(assert (=> b!2433217 (= e!1546851 tp_is_empty!11713)))

(declare-fun b!2433220 () Bool)

(declare-fun tp!772763 () Bool)

(declare-fun tp!772764 () Bool)

(assert (=> b!2433220 (= e!1546851 (and tp!772763 tp!772764))))

(assert (=> b!2432723 (= tp!772622 e!1546851)))

(assert (= (and b!2432723 (is-ElementMatch!7150 (reg!7479 (regOne!14813 r!13927)))) b!2433217))

(assert (= (and b!2432723 (is-Concat!11786 (reg!7479 (regOne!14813 r!13927)))) b!2433218))

(assert (= (and b!2432723 (is-Star!7150 (reg!7479 (regOne!14813 r!13927)))) b!2433219))

(assert (= (and b!2432723 (is-Union!7150 (reg!7479 (regOne!14813 r!13927)))) b!2433220))

(declare-fun b!2433223 () Bool)

(declare-fun e!1546852 () Bool)

(declare-fun tp!772767 () Bool)

(assert (=> b!2433223 (= e!1546852 tp!772767)))

(declare-fun b!2433222 () Bool)

(declare-fun tp!772765 () Bool)

(declare-fun tp!772766 () Bool)

(assert (=> b!2433222 (= e!1546852 (and tp!772765 tp!772766))))

(declare-fun b!2433221 () Bool)

(assert (=> b!2433221 (= e!1546852 tp_is_empty!11713)))

(declare-fun b!2433224 () Bool)

(declare-fun tp!772768 () Bool)

(declare-fun tp!772769 () Bool)

(assert (=> b!2433224 (= e!1546852 (and tp!772768 tp!772769))))

(assert (=> b!2432732 (= tp!772633 e!1546852)))

(assert (= (and b!2432732 (is-ElementMatch!7150 (regOne!14813 (h!33839 l!9164)))) b!2433221))

(assert (= (and b!2432732 (is-Concat!11786 (regOne!14813 (h!33839 l!9164)))) b!2433222))

(assert (= (and b!2432732 (is-Star!7150 (regOne!14813 (h!33839 l!9164)))) b!2433223))

(assert (= (and b!2432732 (is-Union!7150 (regOne!14813 (h!33839 l!9164)))) b!2433224))

(declare-fun b!2433227 () Bool)

(declare-fun e!1546853 () Bool)

(declare-fun tp!772772 () Bool)

(assert (=> b!2433227 (= e!1546853 tp!772772)))

(declare-fun b!2433226 () Bool)

(declare-fun tp!772770 () Bool)

(declare-fun tp!772771 () Bool)

(assert (=> b!2433226 (= e!1546853 (and tp!772770 tp!772771))))

(declare-fun b!2433225 () Bool)

(assert (=> b!2433225 (= e!1546853 tp_is_empty!11713)))

(declare-fun b!2433228 () Bool)

(declare-fun tp!772773 () Bool)

(declare-fun tp!772774 () Bool)

(assert (=> b!2433228 (= e!1546853 (and tp!772773 tp!772774))))

(assert (=> b!2432732 (= tp!772634 e!1546853)))

(assert (= (and b!2432732 (is-ElementMatch!7150 (regTwo!14813 (h!33839 l!9164)))) b!2433225))

(assert (= (and b!2432732 (is-Concat!11786 (regTwo!14813 (h!33839 l!9164)))) b!2433226))

(assert (= (and b!2432732 (is-Star!7150 (regTwo!14813 (h!33839 l!9164)))) b!2433227))

(assert (= (and b!2432732 (is-Union!7150 (regTwo!14813 (h!33839 l!9164)))) b!2433228))

(declare-fun b!2433231 () Bool)

(declare-fun e!1546854 () Bool)

(declare-fun tp!772777 () Bool)

(assert (=> b!2433231 (= e!1546854 tp!772777)))

(declare-fun b!2433230 () Bool)

(declare-fun tp!772775 () Bool)

(declare-fun tp!772776 () Bool)

(assert (=> b!2433230 (= e!1546854 (and tp!772775 tp!772776))))

(declare-fun b!2433229 () Bool)

(assert (=> b!2433229 (= e!1546854 tp_is_empty!11713)))

(declare-fun b!2433232 () Bool)

(declare-fun tp!772778 () Bool)

(declare-fun tp!772779 () Bool)

(assert (=> b!2433232 (= e!1546854 (and tp!772778 tp!772779))))

(assert (=> b!2432727 (= tp!772627 e!1546854)))

(assert (= (and b!2432727 (is-ElementMatch!7150 (reg!7479 (regTwo!14813 r!13927)))) b!2433229))

(assert (= (and b!2432727 (is-Concat!11786 (reg!7479 (regTwo!14813 r!13927)))) b!2433230))

(assert (= (and b!2432727 (is-Star!7150 (reg!7479 (regTwo!14813 r!13927)))) b!2433231))

(assert (= (and b!2432727 (is-Union!7150 (reg!7479 (regTwo!14813 r!13927)))) b!2433232))

(declare-fun b!2433235 () Bool)

(declare-fun e!1546855 () Bool)

(declare-fun tp!772782 () Bool)

(assert (=> b!2433235 (= e!1546855 tp!772782)))

(declare-fun b!2433234 () Bool)

(declare-fun tp!772780 () Bool)

(declare-fun tp!772781 () Bool)

(assert (=> b!2433234 (= e!1546855 (and tp!772780 tp!772781))))

(declare-fun b!2433233 () Bool)

(assert (=> b!2433233 (= e!1546855 tp_is_empty!11713)))

(declare-fun b!2433236 () Bool)

(declare-fun tp!772783 () Bool)

(declare-fun tp!772784 () Bool)

(assert (=> b!2433236 (= e!1546855 (and tp!772783 tp!772784))))

(assert (=> b!2432737 (= tp!772639 e!1546855)))

(assert (= (and b!2432737 (is-ElementMatch!7150 (h!33839 (t!208513 l!9164)))) b!2433233))

(assert (= (and b!2432737 (is-Concat!11786 (h!33839 (t!208513 l!9164)))) b!2433234))

(assert (= (and b!2432737 (is-Star!7150 (h!33839 (t!208513 l!9164)))) b!2433235))

(assert (= (and b!2432737 (is-Union!7150 (h!33839 (t!208513 l!9164)))) b!2433236))

(declare-fun b!2433237 () Bool)

(declare-fun e!1546856 () Bool)

(declare-fun tp!772785 () Bool)

(declare-fun tp!772786 () Bool)

(assert (=> b!2433237 (= e!1546856 (and tp!772785 tp!772786))))

(assert (=> b!2432737 (= tp!772640 e!1546856)))

(assert (= (and b!2432737 (is-Cons!28438 (t!208513 (t!208513 l!9164)))) b!2433237))

(declare-fun b!2433240 () Bool)

(declare-fun e!1546857 () Bool)

(declare-fun tp!772789 () Bool)

(assert (=> b!2433240 (= e!1546857 tp!772789)))

(declare-fun b!2433239 () Bool)

(declare-fun tp!772787 () Bool)

(declare-fun tp!772788 () Bool)

(assert (=> b!2433239 (= e!1546857 (and tp!772787 tp!772788))))

(declare-fun b!2433238 () Bool)

(assert (=> b!2433238 (= e!1546857 tp_is_empty!11713)))

(declare-fun b!2433241 () Bool)

(declare-fun tp!772790 () Bool)

(declare-fun tp!772791 () Bool)

(assert (=> b!2433241 (= e!1546857 (and tp!772790 tp!772791))))

(assert (=> b!2432722 (= tp!772620 e!1546857)))

(assert (= (and b!2432722 (is-ElementMatch!7150 (regOne!14812 (regOne!14813 r!13927)))) b!2433238))

(assert (= (and b!2432722 (is-Concat!11786 (regOne!14812 (regOne!14813 r!13927)))) b!2433239))

(assert (= (and b!2432722 (is-Star!7150 (regOne!14812 (regOne!14813 r!13927)))) b!2433240))

(assert (= (and b!2432722 (is-Union!7150 (regOne!14812 (regOne!14813 r!13927)))) b!2433241))

(declare-fun b!2433244 () Bool)

(declare-fun e!1546858 () Bool)

(declare-fun tp!772794 () Bool)

(assert (=> b!2433244 (= e!1546858 tp!772794)))

(declare-fun b!2433243 () Bool)

(declare-fun tp!772792 () Bool)

(declare-fun tp!772793 () Bool)

(assert (=> b!2433243 (= e!1546858 (and tp!772792 tp!772793))))

(declare-fun b!2433242 () Bool)

(assert (=> b!2433242 (= e!1546858 tp_is_empty!11713)))

(declare-fun b!2433245 () Bool)

(declare-fun tp!772795 () Bool)

(declare-fun tp!772796 () Bool)

(assert (=> b!2433245 (= e!1546858 (and tp!772795 tp!772796))))

(assert (=> b!2432722 (= tp!772621 e!1546858)))

(assert (= (and b!2432722 (is-ElementMatch!7150 (regTwo!14812 (regOne!14813 r!13927)))) b!2433242))

(assert (= (and b!2432722 (is-Concat!11786 (regTwo!14812 (regOne!14813 r!13927)))) b!2433243))

(assert (= (and b!2432722 (is-Star!7150 (regTwo!14812 (regOne!14813 r!13927)))) b!2433244))

(assert (= (and b!2432722 (is-Union!7150 (regTwo!14812 (regOne!14813 r!13927)))) b!2433245))

(declare-fun b!2433248 () Bool)

(declare-fun e!1546859 () Bool)

(declare-fun tp!772799 () Bool)

(assert (=> b!2433248 (= e!1546859 tp!772799)))

(declare-fun b!2433247 () Bool)

(declare-fun tp!772797 () Bool)

(declare-fun tp!772798 () Bool)

(assert (=> b!2433247 (= e!1546859 (and tp!772797 tp!772798))))

(declare-fun b!2433246 () Bool)

(assert (=> b!2433246 (= e!1546859 tp_is_empty!11713)))

(declare-fun b!2433249 () Bool)

(declare-fun tp!772800 () Bool)

(declare-fun tp!772801 () Bool)

(assert (=> b!2433249 (= e!1546859 (and tp!772800 tp!772801))))

(assert (=> b!2432731 (= tp!772632 e!1546859)))

(assert (= (and b!2432731 (is-ElementMatch!7150 (reg!7479 (h!33839 l!9164)))) b!2433246))

(assert (= (and b!2432731 (is-Concat!11786 (reg!7479 (h!33839 l!9164)))) b!2433247))

(assert (= (and b!2432731 (is-Star!7150 (reg!7479 (h!33839 l!9164)))) b!2433248))

(assert (= (and b!2432731 (is-Union!7150 (reg!7479 (h!33839 l!9164)))) b!2433249))

(declare-fun b!2433252 () Bool)

(declare-fun e!1546860 () Bool)

(declare-fun tp!772804 () Bool)

(assert (=> b!2433252 (= e!1546860 tp!772804)))

(declare-fun b!2433251 () Bool)

(declare-fun tp!772802 () Bool)

(declare-fun tp!772803 () Bool)

(assert (=> b!2433251 (= e!1546860 (and tp!772802 tp!772803))))

(declare-fun b!2433250 () Bool)

(assert (=> b!2433250 (= e!1546860 tp_is_empty!11713)))

(declare-fun b!2433253 () Bool)

(declare-fun tp!772805 () Bool)

(declare-fun tp!772806 () Bool)

(assert (=> b!2433253 (= e!1546860 (and tp!772805 tp!772806))))

(assert (=> b!2432726 (= tp!772625 e!1546860)))

(assert (= (and b!2432726 (is-ElementMatch!7150 (regOne!14812 (regTwo!14813 r!13927)))) b!2433250))

(assert (= (and b!2432726 (is-Concat!11786 (regOne!14812 (regTwo!14813 r!13927)))) b!2433251))

(assert (= (and b!2432726 (is-Star!7150 (regOne!14812 (regTwo!14813 r!13927)))) b!2433252))

(assert (= (and b!2432726 (is-Union!7150 (regOne!14812 (regTwo!14813 r!13927)))) b!2433253))

(declare-fun b!2433256 () Bool)

(declare-fun e!1546861 () Bool)

(declare-fun tp!772809 () Bool)

(assert (=> b!2433256 (= e!1546861 tp!772809)))

(declare-fun b!2433255 () Bool)

(declare-fun tp!772807 () Bool)

(declare-fun tp!772808 () Bool)

(assert (=> b!2433255 (= e!1546861 (and tp!772807 tp!772808))))

(declare-fun b!2433254 () Bool)

(assert (=> b!2433254 (= e!1546861 tp_is_empty!11713)))

(declare-fun b!2433257 () Bool)

(declare-fun tp!772810 () Bool)

(declare-fun tp!772811 () Bool)

(assert (=> b!2433257 (= e!1546861 (and tp!772810 tp!772811))))

(assert (=> b!2432726 (= tp!772626 e!1546861)))

(assert (= (and b!2432726 (is-ElementMatch!7150 (regTwo!14812 (regTwo!14813 r!13927)))) b!2433254))

(assert (= (and b!2432726 (is-Concat!11786 (regTwo!14812 (regTwo!14813 r!13927)))) b!2433255))

(assert (= (and b!2432726 (is-Star!7150 (regTwo!14812 (regTwo!14813 r!13927)))) b!2433256))

(assert (= (and b!2432726 (is-Union!7150 (regTwo!14812 (regTwo!14813 r!13927)))) b!2433257))

(declare-fun b!2433260 () Bool)

(declare-fun e!1546862 () Bool)

(declare-fun tp!772814 () Bool)

(assert (=> b!2433260 (= e!1546862 tp!772814)))

(declare-fun b!2433259 () Bool)

(declare-fun tp!772812 () Bool)

(declare-fun tp!772813 () Bool)

(assert (=> b!2433259 (= e!1546862 (and tp!772812 tp!772813))))

(declare-fun b!2433258 () Bool)

(assert (=> b!2433258 (= e!1546862 tp_is_empty!11713)))

(declare-fun b!2433261 () Bool)

(declare-fun tp!772815 () Bool)

(declare-fun tp!772816 () Bool)

(assert (=> b!2433261 (= e!1546862 (and tp!772815 tp!772816))))

(assert (=> b!2432711 (= tp!772610 e!1546862)))

(assert (= (and b!2432711 (is-ElementMatch!7150 (regOne!14813 (regOne!14812 r!13927)))) b!2433258))

(assert (= (and b!2432711 (is-Concat!11786 (regOne!14813 (regOne!14812 r!13927)))) b!2433259))

(assert (= (and b!2432711 (is-Star!7150 (regOne!14813 (regOne!14812 r!13927)))) b!2433260))

(assert (= (and b!2432711 (is-Union!7150 (regOne!14813 (regOne!14812 r!13927)))) b!2433261))

(declare-fun b!2433264 () Bool)

(declare-fun e!1546863 () Bool)

(declare-fun tp!772819 () Bool)

(assert (=> b!2433264 (= e!1546863 tp!772819)))

(declare-fun b!2433263 () Bool)

(declare-fun tp!772817 () Bool)

(declare-fun tp!772818 () Bool)

(assert (=> b!2433263 (= e!1546863 (and tp!772817 tp!772818))))

(declare-fun b!2433262 () Bool)

(assert (=> b!2433262 (= e!1546863 tp_is_empty!11713)))

(declare-fun b!2433265 () Bool)

(declare-fun tp!772820 () Bool)

(declare-fun tp!772821 () Bool)

(assert (=> b!2433265 (= e!1546863 (and tp!772820 tp!772821))))

(assert (=> b!2432711 (= tp!772611 e!1546863)))

(assert (= (and b!2432711 (is-ElementMatch!7150 (regTwo!14813 (regOne!14812 r!13927)))) b!2433262))

(assert (= (and b!2432711 (is-Concat!11786 (regTwo!14813 (regOne!14812 r!13927)))) b!2433263))

(assert (= (and b!2432711 (is-Star!7150 (regTwo!14813 (regOne!14812 r!13927)))) b!2433264))

(assert (= (and b!2432711 (is-Union!7150 (regTwo!14813 (regOne!14812 r!13927)))) b!2433265))

(declare-fun b!2433266 () Bool)

(declare-fun e!1546864 () Bool)

(declare-fun tp!772822 () Bool)

(assert (=> b!2433266 (= e!1546864 (and tp_is_empty!11713 tp!772822))))

(assert (=> b!2432720 (= tp!772619 e!1546864)))

(assert (= (and b!2432720 (is-Cons!28439 (t!208514 (t!208514 s!9460)))) b!2433266))

(declare-fun b!2433269 () Bool)

(declare-fun e!1546865 () Bool)

(declare-fun tp!772825 () Bool)

(assert (=> b!2433269 (= e!1546865 tp!772825)))

(declare-fun b!2433268 () Bool)

(declare-fun tp!772823 () Bool)

(declare-fun tp!772824 () Bool)

(assert (=> b!2433268 (= e!1546865 (and tp!772823 tp!772824))))

(declare-fun b!2433267 () Bool)

(assert (=> b!2433267 (= e!1546865 tp_is_empty!11713)))

(declare-fun b!2433270 () Bool)

(declare-fun tp!772826 () Bool)

(declare-fun tp!772827 () Bool)

(assert (=> b!2433270 (= e!1546865 (and tp!772826 tp!772827))))

(assert (=> b!2432724 (= tp!772623 e!1546865)))

(assert (= (and b!2432724 (is-ElementMatch!7150 (regOne!14813 (regOne!14813 r!13927)))) b!2433267))

(assert (= (and b!2432724 (is-Concat!11786 (regOne!14813 (regOne!14813 r!13927)))) b!2433268))

(assert (= (and b!2432724 (is-Star!7150 (regOne!14813 (regOne!14813 r!13927)))) b!2433269))

(assert (= (and b!2432724 (is-Union!7150 (regOne!14813 (regOne!14813 r!13927)))) b!2433270))

(declare-fun b!2433273 () Bool)

(declare-fun e!1546866 () Bool)

(declare-fun tp!772830 () Bool)

(assert (=> b!2433273 (= e!1546866 tp!772830)))

(declare-fun b!2433272 () Bool)

(declare-fun tp!772828 () Bool)

(declare-fun tp!772829 () Bool)

(assert (=> b!2433272 (= e!1546866 (and tp!772828 tp!772829))))

(declare-fun b!2433271 () Bool)

(assert (=> b!2433271 (= e!1546866 tp_is_empty!11713)))

(declare-fun b!2433274 () Bool)

(declare-fun tp!772831 () Bool)

(declare-fun tp!772832 () Bool)

(assert (=> b!2433274 (= e!1546866 (and tp!772831 tp!772832))))

(assert (=> b!2432724 (= tp!772624 e!1546866)))

(assert (= (and b!2432724 (is-ElementMatch!7150 (regTwo!14813 (regOne!14813 r!13927)))) b!2433271))

(assert (= (and b!2432724 (is-Concat!11786 (regTwo!14813 (regOne!14813 r!13927)))) b!2433272))

(assert (= (and b!2432724 (is-Star!7150 (regTwo!14813 (regOne!14813 r!13927)))) b!2433273))

(assert (= (and b!2432724 (is-Union!7150 (regTwo!14813 (regOne!14813 r!13927)))) b!2433274))

(declare-fun b!2433277 () Bool)

(declare-fun e!1546867 () Bool)

(declare-fun tp!772835 () Bool)

(assert (=> b!2433277 (= e!1546867 tp!772835)))

(declare-fun b!2433276 () Bool)

(declare-fun tp!772833 () Bool)

(declare-fun tp!772834 () Bool)

(assert (=> b!2433276 (= e!1546867 (and tp!772833 tp!772834))))

(declare-fun b!2433275 () Bool)

(assert (=> b!2433275 (= e!1546867 tp_is_empty!11713)))

(declare-fun b!2433278 () Bool)

(declare-fun tp!772836 () Bool)

(declare-fun tp!772837 () Bool)

(assert (=> b!2433278 (= e!1546867 (and tp!772836 tp!772837))))

(assert (=> b!2432706 (= tp!772604 e!1546867)))

(assert (= (and b!2432706 (is-ElementMatch!7150 (reg!7479 (reg!7479 r!13927)))) b!2433275))

(assert (= (and b!2432706 (is-Concat!11786 (reg!7479 (reg!7479 r!13927)))) b!2433276))

(assert (= (and b!2432706 (is-Star!7150 (reg!7479 (reg!7479 r!13927)))) b!2433277))

(assert (= (and b!2432706 (is-Union!7150 (reg!7479 (reg!7479 r!13927)))) b!2433278))

(declare-fun b!2433281 () Bool)

(declare-fun e!1546868 () Bool)

(declare-fun tp!772840 () Bool)

(assert (=> b!2433281 (= e!1546868 tp!772840)))

(declare-fun b!2433280 () Bool)

(declare-fun tp!772838 () Bool)

(declare-fun tp!772839 () Bool)

(assert (=> b!2433280 (= e!1546868 (and tp!772838 tp!772839))))

(declare-fun b!2433279 () Bool)

(assert (=> b!2433279 (= e!1546868 tp_is_empty!11713)))

(declare-fun b!2433282 () Bool)

(declare-fun tp!772841 () Bool)

(declare-fun tp!772842 () Bool)

(assert (=> b!2433282 (= e!1546868 (and tp!772841 tp!772842))))

(assert (=> b!2432705 (= tp!772602 e!1546868)))

(assert (= (and b!2432705 (is-ElementMatch!7150 (regOne!14812 (reg!7479 r!13927)))) b!2433279))

(assert (= (and b!2432705 (is-Concat!11786 (regOne!14812 (reg!7479 r!13927)))) b!2433280))

(assert (= (and b!2432705 (is-Star!7150 (regOne!14812 (reg!7479 r!13927)))) b!2433281))

(assert (= (and b!2432705 (is-Union!7150 (regOne!14812 (reg!7479 r!13927)))) b!2433282))

(declare-fun b!2433285 () Bool)

(declare-fun e!1546869 () Bool)

(declare-fun tp!772845 () Bool)

(assert (=> b!2433285 (= e!1546869 tp!772845)))

(declare-fun b!2433284 () Bool)

(declare-fun tp!772843 () Bool)

(declare-fun tp!772844 () Bool)

(assert (=> b!2433284 (= e!1546869 (and tp!772843 tp!772844))))

(declare-fun b!2433283 () Bool)

(assert (=> b!2433283 (= e!1546869 tp_is_empty!11713)))

(declare-fun b!2433286 () Bool)

(declare-fun tp!772846 () Bool)

(declare-fun tp!772847 () Bool)

(assert (=> b!2433286 (= e!1546869 (and tp!772846 tp!772847))))

(assert (=> b!2432705 (= tp!772603 e!1546869)))

(assert (= (and b!2432705 (is-ElementMatch!7150 (regTwo!14812 (reg!7479 r!13927)))) b!2433283))

(assert (= (and b!2432705 (is-Concat!11786 (regTwo!14812 (reg!7479 r!13927)))) b!2433284))

(assert (= (and b!2432705 (is-Star!7150 (regTwo!14812 (reg!7479 r!13927)))) b!2433285))

(assert (= (and b!2432705 (is-Union!7150 (regTwo!14812 (reg!7479 r!13927)))) b!2433286))

(declare-fun b_lambda!74831 () Bool)

(assert (= b_lambda!74827 (or start!238146 b_lambda!74831)))

(declare-fun bs!464292 () Bool)

(declare-fun d!703510 () Bool)

(assert (= bs!464292 (and d!703510 start!238146)))

(assert (=> bs!464292 (= (dynLambda!12240 lambda!91732 (h!33839 (t!208513 l!9164))) (validRegex!2867 (h!33839 (t!208513 l!9164))))))

(declare-fun m!2814459 () Bool)

(assert (=> bs!464292 m!2814459))

(assert (=> b!2432975 d!703510))

(declare-fun b_lambda!74833 () Bool)

(assert (= b_lambda!74829 (or d!703372 b_lambda!74833)))

(declare-fun bs!464293 () Bool)

(declare-fun d!703512 () Bool)

(assert (= bs!464293 (and d!703512 d!703372)))

(assert (=> bs!464293 (= (dynLambda!12240 lambda!91742 (h!33839 l!9164)) (validRegex!2867 (h!33839 l!9164)))))

(assert (=> bs!464293 m!2814153))

(assert (=> b!2433130 d!703512))

(push 1)

(assert (not b!2433175))

(assert (not b!2433231))

(assert (not b!2433240))

(assert (not b!2433276))

(assert (not bm!148986))

(assert (not b!2433228))

(assert (not d!703484))

(assert (not b!2433065))

(assert (not b!2433277))

(assert (not b!2433112))

(assert (not b!2433211))

(assert (not bm!148975))

(assert (not b!2432954))

(assert (not b!2433190))

(assert (not d!703454))

(assert (not bm!148978))

(assert (not b_lambda!74833))

(assert (not b!2433136))

(assert (not bs!464293))

(assert (not b!2433272))

(assert (not b!2432990))

(assert (not b!2433192))

(assert (not b!2433167))

(assert (not b!2433102))

(assert (not b!2433203))

(assert (not b!2433170))

(assert (not b!2433011))

(assert (not b!2432952))

(assert (not b!2433037))

(assert (not d!703478))

(assert (not b!2433269))

(assert (not b!2433222))

(assert (not b!2433218))

(assert (not b!2433286))

(assert (not b!2433114))

(assert (not bm!149009))

(assert (not b!2433152))

(assert (not b!2433261))

(assert (not b!2433110))

(assert (not b!2433265))

(assert (not b!2433232))

(assert (not d!703492))

(assert (not b!2432987))

(assert (not bm!148972))

(assert (not d!703494))

(assert (not bm!148974))

(assert (not bm!149007))

(assert (not b!2432968))

(assert (not b!2433148))

(assert (not b!2433090))

(assert (not b!2433163))

(assert (not b!2433091))

(assert (not b!2433088))

(assert (not d!703442))

(assert (not b!2433172))

(assert (not b!2433264))

(assert (not b!2433004))

(assert (not b!2432986))

(assert (not b!2433243))

(assert (not bm!148987))

(assert (not b!2433186))

(assert (not b!2433147))

(assert (not d!703474))

(assert (not bm!149004))

(assert (not b!2433278))

(assert (not b!2433214))

(assert (not bm!148988))

(assert (not b!2433026))

(assert (not b!2433280))

(assert (not b!2433249))

(assert (not b!2433247))

(assert (not b!2433210))

(assert (not bm!148985))

(assert (not b!2432979))

(assert (not b!2433270))

(assert (not b!2432959))

(assert (not bs!464292))

(assert (not b!2433188))

(assert (not b!2433251))

(assert tp_is_empty!11713)

(assert (not bm!148977))

(assert (not b!2433131))

(assert (not b!2433227))

(assert (not b!2433025))

(assert (not b!2433029))

(assert (not bm!149001))

(assert (not b!2433198))

(assert (not b!2433223))

(assert (not b!2433179))

(assert (not bm!149005))

(assert (not d!703502))

(assert (not b!2433187))

(assert (not bm!148983))

(assert (not b!2433226))

(assert (not b!2433268))

(assert (not d!703476))

(assert (not b!2433094))

(assert (not b!2433166))

(assert (not b!2432947))

(assert (not b!2433216))

(assert (not b!2433257))

(assert (not b!2433164))

(assert (not b!2433284))

(assert (not b!2433273))

(assert (not b!2433120))

(assert (not b!2432949))

(assert (not b!2433202))

(assert (not bm!149011))

(assert (not b!2432995))

(assert (not b!2433234))

(assert (not b!2433199))

(assert (not b!2433195))

(assert (not b!2433118))

(assert (not b!2433016))

(assert (not b!2433244))

(assert (not b!2433212))

(assert (not d!703464))

(assert (not d!703456))

(assert (not b!2432955))

(assert (not b!2432953))

(assert (not b!2433252))

(assert (not b!2433208))

(assert (not b!2433255))

(assert (not b!2432948))

(assert (not b!2433036))

(assert (not b!2433101))

(assert (not d!703486))

(assert (not b!2433182))

(assert (not b!2432940))

(assert (not b!2433253))

(assert (not b!2433183))

(assert (not b!2433248))

(assert (not b!2433018))

(assert (not d!703506))

(assert (not b!2433137))

(assert (not b!2433168))

(assert (not b!2433241))

(assert (not b!2433220))

(assert (not b!2433174))

(assert (not b!2433281))

(assert (not d!703426))

(assert (not b!2433219))

(assert (not b_lambda!74821))

(assert (not bm!149010))

(assert (not b!2433200))

(assert (not b!2433274))

(assert (not bm!149003))

(assert (not d!703490))

(assert (not b!2433263))

(assert (not b!2433000))

(assert (not b!2433116))

(assert (not b!2432997))

(assert (not b!2433285))

(assert (not d!703504))

(assert (not d!703496))

(assert (not b!2433237))

(assert (not b!2433012))

(assert (not bm!148998))

(assert (not b!2433106))

(assert (not b!2433207))

(assert (not b!2433105))

(assert (not b!2433256))

(assert (not b!2433140))

(assert (not bm!148980))

(assert (not b!2433204))

(assert (not b!2433034))

(assert (not bm!148989))

(assert (not b!2433176))

(assert (not b!2433184))

(assert (not b!2433154))

(assert (not bm!148981))

(assert (not b!2433194))

(assert (not b!2433259))

(assert (not b!2433245))

(assert (not b!2433180))

(assert (not b!2433071))

(assert (not b!2433206))

(assert (not b!2433196))

(assert (not b!2433123))

(assert (not bm!148971))

(assert (not b!2433087))

(assert (not d!703488))

(assert (not b!2433178))

(assert (not d!703482))

(assert (not b!2432931))

(assert (not bm!148984))

(assert (not b!2433145))

(assert (not b!2433235))

(assert (not b_lambda!74831))

(assert (not bm!149008))

(assert (not b!2433001))

(assert (not b!2433260))

(assert (not b!2433109))

(assert (not b!2433224))

(assert (not b!2433266))

(assert (not b!2432998))

(assert (not b!2433171))

(assert (not b!2432976))

(assert (not b!2433191))

(assert (not b!2433099))

(assert (not d!703432))

(assert (not b!2433162))

(assert (not b!2433239))

(assert (not b!2433009))

(assert (not b!2433215))

(assert (not b!2433117))

(assert (not b!2433236))

(assert (not b!2433230))

(assert (not b!2433282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

