; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664662 () Bool)

(assert start!664662)

(declare-fun b!6899702 () Bool)

(assert (=> b!6899702 true))

(assert (=> b!6899702 true))

(assert (=> b!6899702 true))

(declare-fun lambda!391494 () Int)

(declare-fun lambda!391493 () Int)

(assert (=> b!6899702 (not (= lambda!391494 lambda!391493))))

(assert (=> b!6899702 true))

(assert (=> b!6899702 true))

(assert (=> b!6899702 true))

(declare-fun bs!1841735 () Bool)

(declare-fun b!6899706 () Bool)

(assert (= bs!1841735 (and b!6899706 b!6899702)))

(declare-datatypes ((C!33980 0))(
  ( (C!33981 (val!26692 Int)) )
))
(declare-datatypes ((Regex!16855 0))(
  ( (ElementMatch!16855 (c!1282113 C!33980)) (Concat!25700 (regOne!34222 Regex!16855) (regTwo!34222 Regex!16855)) (EmptyExpr!16855) (Star!16855 (reg!17184 Regex!16855)) (EmptyLang!16855) (Union!16855 (regOne!34223 Regex!16855) (regTwo!34223 Regex!16855)) )
))
(declare-fun lt!2465467 () Regex!16855)

(declare-fun r3!135 () Regex!16855)

(declare-datatypes ((List!66612 0))(
  ( (Nil!66488) (Cons!66488 (h!72936 C!33980) (t!380355 List!66612)) )
))
(declare-fun s!14361 () List!66612)

(declare-fun r2!6280 () Regex!16855)

(declare-datatypes ((tuple2!67444 0))(
  ( (tuple2!67445 (_1!37025 List!66612) (_2!37025 List!66612)) )
))
(declare-fun lt!2465460 () tuple2!67444)

(declare-fun lambda!391495 () Int)

(declare-fun r1!6342 () Regex!16855)

(assert (=> bs!1841735 (= (and (= (_2!37025 lt!2465460) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465467)) (= lambda!391495 lambda!391493))))

(assert (=> bs!1841735 (not (= lambda!391495 lambda!391494))))

(assert (=> b!6899706 true))

(assert (=> b!6899706 true))

(assert (=> b!6899706 true))

(declare-fun lambda!391496 () Int)

(assert (=> bs!1841735 (not (= lambda!391496 lambda!391493))))

(assert (=> bs!1841735 (= (and (= (_2!37025 lt!2465460) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465467)) (= lambda!391496 lambda!391494))))

(assert (=> b!6899706 (not (= lambda!391496 lambda!391495))))

(assert (=> b!6899706 true))

(assert (=> b!6899706 true))

(assert (=> b!6899706 true))

(declare-fun bs!1841736 () Bool)

(declare-fun b!6899708 () Bool)

(assert (= bs!1841736 (and b!6899708 b!6899702)))

(declare-fun lambda!391497 () Int)

(declare-fun lt!2465468 () List!66612)

(assert (=> bs!1841736 (= (and (= lt!2465468 s!14361) (= r2!6280 lt!2465467)) (= lambda!391497 lambda!391493))))

(assert (=> bs!1841736 (not (= lambda!391497 lambda!391494))))

(declare-fun bs!1841737 () Bool)

(assert (= bs!1841737 (and b!6899708 b!6899706)))

(assert (=> bs!1841737 (= (and (= lt!2465468 (_2!37025 lt!2465460)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391497 lambda!391495))))

(assert (=> bs!1841737 (not (= lambda!391497 lambda!391496))))

(assert (=> b!6899708 true))

(assert (=> b!6899708 true))

(assert (=> b!6899708 true))

(declare-fun lambda!391498 () Int)

(assert (=> b!6899708 (not (= lambda!391498 lambda!391497))))

(assert (=> bs!1841736 (= (and (= lt!2465468 s!14361) (= r2!6280 lt!2465467)) (= lambda!391498 lambda!391494))))

(assert (=> bs!1841736 (not (= lambda!391498 lambda!391493))))

(assert (=> bs!1841737 (not (= lambda!391498 lambda!391495))))

(assert (=> bs!1841737 (= (and (= lt!2465468 (_2!37025 lt!2465460)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391498 lambda!391496))))

(assert (=> b!6899708 true))

(assert (=> b!6899708 true))

(assert (=> b!6899708 true))

(declare-fun b!6899684 () Bool)

(declare-fun res!2813368 () Bool)

(declare-fun e!4155367 () Bool)

(assert (=> b!6899684 (=> res!2813368 e!4155367)))

(declare-fun isPrefix!5802 (List!66612 List!66612) Bool)

(assert (=> b!6899684 (= res!2813368 (not (isPrefix!5802 Nil!66488 lt!2465468)))))

(declare-fun b!6899685 () Bool)

(declare-fun e!4155361 () Bool)

(declare-fun e!4155358 () Bool)

(assert (=> b!6899685 (= e!4155361 e!4155358)))

(declare-fun res!2813376 () Bool)

(assert (=> b!6899685 (=> res!2813376 e!4155358)))

(declare-fun lt!2465479 () List!66612)

(assert (=> b!6899685 (= res!2813376 (not (= lt!2465479 s!14361)))))

(declare-fun lt!2465487 () tuple2!67444)

(declare-fun ++!14908 (List!66612 List!66612) List!66612)

(assert (=> b!6899685 (= lt!2465479 (++!14908 (_1!37025 lt!2465460) (++!14908 (_1!37025 lt!2465487) (_2!37025 lt!2465487))))))

(declare-fun matchRSpec!3918 (Regex!16855 List!66612) Bool)

(assert (=> b!6899685 (matchRSpec!3918 r3!135 (_2!37025 lt!2465487))))

(declare-datatypes ((Unit!160430 0))(
  ( (Unit!160431) )
))
(declare-fun lt!2465475 () Unit!160430)

(declare-fun mainMatchTheorem!3918 (Regex!16855 List!66612) Unit!160430)

(assert (=> b!6899685 (= lt!2465475 (mainMatchTheorem!3918 r3!135 (_2!37025 lt!2465487)))))

(assert (=> b!6899685 (matchRSpec!3918 r2!6280 (_1!37025 lt!2465487))))

(declare-fun lt!2465466 () Unit!160430)

(assert (=> b!6899685 (= lt!2465466 (mainMatchTheorem!3918 r2!6280 (_1!37025 lt!2465487)))))

(declare-fun b!6899686 () Bool)

(declare-fun res!2813367 () Bool)

(assert (=> b!6899686 (=> res!2813367 e!4155361)))

(declare-fun matchR!9000 (Regex!16855 List!66612) Bool)

(assert (=> b!6899686 (= res!2813367 (not (matchR!9000 r3!135 (_2!37025 lt!2465487))))))

(declare-fun b!6899687 () Bool)

(declare-fun e!4155368 () Bool)

(declare-fun tp_is_empty!42935 () Bool)

(assert (=> b!6899687 (= e!4155368 tp_is_empty!42935)))

(declare-fun b!6899688 () Bool)

(declare-fun e!4155363 () Bool)

(assert (=> b!6899688 (= e!4155363 tp_is_empty!42935)))

(declare-fun b!6899689 () Bool)

(declare-fun e!4155364 () Bool)

(declare-fun e!4155362 () Bool)

(assert (=> b!6899689 (= e!4155364 e!4155362)))

(declare-fun res!2813371 () Bool)

(assert (=> b!6899689 (=> res!2813371 e!4155362)))

(declare-datatypes ((Option!16634 0))(
  ( (None!16633) (Some!16633 (v!52905 tuple2!67444)) )
))
(declare-fun lt!2465476 () Option!16634)

(declare-fun isDefined!13337 (Option!16634) Bool)

(assert (=> b!6899689 (= res!2813371 (not (isDefined!13337 lt!2465476)))))

(declare-fun findConcatSeparation!3048 (Regex!16855 Regex!16855 List!66612 List!66612 List!66612) Option!16634)

(assert (=> b!6899689 (= lt!2465476 (findConcatSeparation!3048 r1!6342 lt!2465467 Nil!66488 s!14361 s!14361))))

(declare-fun b!6899690 () Bool)

(declare-fun e!4155359 () Bool)

(declare-fun tp!1899556 () Bool)

(declare-fun tp!1899549 () Bool)

(assert (=> b!6899690 (= e!4155359 (and tp!1899556 tp!1899549))))

(declare-fun b!6899691 () Bool)

(declare-fun tp!1899555 () Bool)

(assert (=> b!6899691 (= e!4155359 tp!1899555)))

(declare-fun b!6899692 () Bool)

(declare-fun res!2813373 () Bool)

(declare-fun e!4155360 () Bool)

(assert (=> b!6899692 (=> (not res!2813373) (not e!4155360))))

(declare-fun validRegex!8563 (Regex!16855) Bool)

(assert (=> b!6899692 (= res!2813373 (validRegex!8563 r2!6280))))

(declare-fun b!6899693 () Bool)

(declare-fun tp!1899548 () Bool)

(declare-fun tp!1899557 () Bool)

(assert (=> b!6899693 (= e!4155368 (and tp!1899548 tp!1899557))))

(declare-fun res!2813365 () Bool)

(assert (=> start!664662 (=> (not res!2813365) (not e!4155360))))

(assert (=> start!664662 (= res!2813365 (validRegex!8563 r1!6342))))

(assert (=> start!664662 e!4155360))

(assert (=> start!664662 e!4155359))

(assert (=> start!664662 e!4155368))

(assert (=> start!664662 e!4155363))

(declare-fun e!4155365 () Bool)

(assert (=> start!664662 e!4155365))

(declare-fun b!6899694 () Bool)

(declare-fun res!2813369 () Bool)

(assert (=> b!6899694 (=> res!2813369 e!4155367)))

(declare-fun lt!2465488 () Regex!16855)

(assert (=> b!6899694 (= res!2813369 (not (validRegex!8563 lt!2465488)))))

(declare-fun b!6899695 () Bool)

(assert (=> b!6899695 (= e!4155360 (not e!4155364))))

(declare-fun res!2813370 () Bool)

(assert (=> b!6899695 (=> res!2813370 e!4155364)))

(declare-fun lt!2465463 () Bool)

(assert (=> b!6899695 (= res!2813370 lt!2465463)))

(declare-fun lt!2465481 () Regex!16855)

(assert (=> b!6899695 (= (matchR!9000 lt!2465481 s!14361) (matchRSpec!3918 lt!2465481 s!14361))))

(declare-fun lt!2465489 () Unit!160430)

(assert (=> b!6899695 (= lt!2465489 (mainMatchTheorem!3918 lt!2465481 s!14361))))

(declare-fun lt!2465483 () Regex!16855)

(assert (=> b!6899695 (= lt!2465463 (matchRSpec!3918 lt!2465483 s!14361))))

(assert (=> b!6899695 (= lt!2465463 (matchR!9000 lt!2465483 s!14361))))

(declare-fun lt!2465482 () Unit!160430)

(assert (=> b!6899695 (= lt!2465482 (mainMatchTheorem!3918 lt!2465483 s!14361))))

(assert (=> b!6899695 (= lt!2465481 (Concat!25700 r1!6342 lt!2465467))))

(assert (=> b!6899695 (= lt!2465467 (Concat!25700 r2!6280 r3!135))))

(assert (=> b!6899695 (= lt!2465483 (Concat!25700 lt!2465488 r3!135))))

(assert (=> b!6899695 (= lt!2465488 (Concat!25700 r1!6342 r2!6280))))

(declare-fun b!6899696 () Bool)

(declare-fun tp!1899544 () Bool)

(declare-fun tp!1899552 () Bool)

(assert (=> b!6899696 (= e!4155359 (and tp!1899544 tp!1899552))))

(declare-fun b!6899697 () Bool)

(declare-fun tp!1899545 () Bool)

(assert (=> b!6899697 (= e!4155363 tp!1899545)))

(declare-fun b!6899698 () Bool)

(assert (=> b!6899698 (= e!4155359 tp_is_empty!42935)))

(declare-fun b!6899699 () Bool)

(declare-fun tp!1899558 () Bool)

(declare-fun tp!1899547 () Bool)

(assert (=> b!6899699 (= e!4155368 (and tp!1899558 tp!1899547))))

(declare-fun b!6899700 () Bool)

(assert (=> b!6899700 (= e!4155367 true)))

(declare-fun lt!2465464 () List!66612)

(assert (=> b!6899700 (= lt!2465464 (++!14908 Nil!66488 s!14361))))

(declare-fun b!6899701 () Bool)

(declare-fun res!2813366 () Bool)

(assert (=> b!6899701 (=> (not res!2813366) (not e!4155360))))

(assert (=> b!6899701 (= res!2813366 (validRegex!8563 r3!135))))

(declare-fun e!4155366 () Bool)

(assert (=> b!6899702 (= e!4155362 e!4155366)))

(declare-fun res!2813375 () Bool)

(assert (=> b!6899702 (=> res!2813375 e!4155366)))

(declare-fun lt!2465477 () Bool)

(assert (=> b!6899702 (= res!2813375 (not lt!2465477))))

(assert (=> b!6899702 (= lt!2465477 (matchRSpec!3918 r1!6342 (_1!37025 lt!2465460)))))

(assert (=> b!6899702 (= lt!2465477 (matchR!9000 r1!6342 (_1!37025 lt!2465460)))))

(declare-fun lt!2465462 () Unit!160430)

(assert (=> b!6899702 (= lt!2465462 (mainMatchTheorem!3918 r1!6342 (_1!37025 lt!2465460)))))

(declare-fun get!23233 (Option!16634) tuple2!67444)

(assert (=> b!6899702 (= lt!2465460 (get!23233 lt!2465476))))

(declare-fun Exists!3863 (Int) Bool)

(assert (=> b!6899702 (= (Exists!3863 lambda!391493) (Exists!3863 lambda!391494))))

(declare-fun lt!2465474 () Unit!160430)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2336 (Regex!16855 Regex!16855 List!66612) Unit!160430)

(assert (=> b!6899702 (= lt!2465474 (lemmaExistCutMatchRandMatchRSpecEquivalent!2336 r1!6342 lt!2465467 s!14361))))

(assert (=> b!6899702 (Exists!3863 lambda!391493)))

(declare-fun lt!2465485 () Unit!160430)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2810 (Regex!16855 Regex!16855 List!66612) Unit!160430)

(assert (=> b!6899702 (= lt!2465485 (lemmaFindConcatSeparationEquivalentToExists!2810 r1!6342 lt!2465467 s!14361))))

(declare-fun b!6899703 () Bool)

(declare-fun tp!1899554 () Bool)

(declare-fun tp!1899559 () Bool)

(assert (=> b!6899703 (= e!4155363 (and tp!1899554 tp!1899559))))

(declare-fun b!6899704 () Bool)

(declare-fun tp!1899550 () Bool)

(declare-fun tp!1899546 () Bool)

(assert (=> b!6899704 (= e!4155363 (and tp!1899550 tp!1899546))))

(declare-fun b!6899705 () Bool)

(declare-fun tp!1899551 () Bool)

(assert (=> b!6899705 (= e!4155368 tp!1899551)))

(assert (=> b!6899706 (= e!4155366 e!4155361)))

(declare-fun res!2813372 () Bool)

(assert (=> b!6899706 (=> res!2813372 e!4155361)))

(assert (=> b!6899706 (= res!2813372 (not (matchR!9000 r2!6280 (_1!37025 lt!2465487))))))

(declare-fun lt!2465459 () Option!16634)

(assert (=> b!6899706 (= lt!2465487 (get!23233 lt!2465459))))

(assert (=> b!6899706 (= (Exists!3863 lambda!391495) (Exists!3863 lambda!391496))))

(declare-fun lt!2465470 () Unit!160430)

(assert (=> b!6899706 (= lt!2465470 (lemmaExistCutMatchRandMatchRSpecEquivalent!2336 r2!6280 r3!135 (_2!37025 lt!2465460)))))

(assert (=> b!6899706 (= (isDefined!13337 lt!2465459) (Exists!3863 lambda!391495))))

(assert (=> b!6899706 (= lt!2465459 (findConcatSeparation!3048 r2!6280 r3!135 Nil!66488 (_2!37025 lt!2465460) (_2!37025 lt!2465460)))))

(declare-fun lt!2465478 () Unit!160430)

(assert (=> b!6899706 (= lt!2465478 (lemmaFindConcatSeparationEquivalentToExists!2810 r2!6280 r3!135 (_2!37025 lt!2465460)))))

(assert (=> b!6899706 (matchRSpec!3918 lt!2465467 (_2!37025 lt!2465460))))

(declare-fun lt!2465465 () Unit!160430)

(assert (=> b!6899706 (= lt!2465465 (mainMatchTheorem!3918 lt!2465467 (_2!37025 lt!2465460)))))

(declare-fun b!6899707 () Bool)

(declare-fun tp!1899553 () Bool)

(assert (=> b!6899707 (= e!4155365 (and tp_is_empty!42935 tp!1899553))))

(assert (=> b!6899708 (= e!4155358 e!4155367)))

(declare-fun res!2813364 () Bool)

(assert (=> b!6899708 (=> res!2813364 e!4155367)))

(declare-fun lt!2465469 () Bool)

(declare-fun lt!2465486 () List!66612)

(assert (=> b!6899708 (= res!2813364 (or (not lt!2465469) (not (= lt!2465486 s!14361))))))

(declare-fun lt!2465480 () Bool)

(assert (=> b!6899708 lt!2465480))

(declare-fun lt!2465471 () Unit!160430)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!56 (Regex!16855 Regex!16855 List!66612 List!66612 List!66612 List!66612 List!66612) Unit!160430)

(assert (=> b!6899708 (= lt!2465471 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!56 r1!6342 r2!6280 (_1!37025 lt!2465460) (_1!37025 lt!2465487) lt!2465468 Nil!66488 lt!2465468))))

(assert (=> b!6899708 (= (Exists!3863 lambda!391497) (Exists!3863 lambda!391498))))

(declare-fun lt!2465484 () Unit!160430)

(assert (=> b!6899708 (= lt!2465484 (lemmaExistCutMatchRandMatchRSpecEquivalent!2336 r1!6342 r2!6280 lt!2465468))))

(assert (=> b!6899708 (= lt!2465480 (Exists!3863 lambda!391497))))

(assert (=> b!6899708 (= lt!2465480 (isDefined!13337 (findConcatSeparation!3048 r1!6342 r2!6280 Nil!66488 lt!2465468 lt!2465468)))))

(declare-fun lt!2465472 () Unit!160430)

(assert (=> b!6899708 (= lt!2465472 (lemmaFindConcatSeparationEquivalentToExists!2810 r1!6342 r2!6280 lt!2465468))))

(assert (=> b!6899708 (= lt!2465469 (matchRSpec!3918 lt!2465488 lt!2465468))))

(assert (=> b!6899708 (= lt!2465469 (matchR!9000 lt!2465488 lt!2465468))))

(declare-fun lt!2465473 () Unit!160430)

(assert (=> b!6899708 (= lt!2465473 (mainMatchTheorem!3918 lt!2465488 lt!2465468))))

(assert (=> b!6899708 (= lt!2465486 lt!2465479)))

(assert (=> b!6899708 (= lt!2465486 (++!14908 lt!2465468 (_2!37025 lt!2465487)))))

(assert (=> b!6899708 (= lt!2465468 (++!14908 (_1!37025 lt!2465460) (_1!37025 lt!2465487)))))

(declare-fun lt!2465461 () Unit!160430)

(declare-fun lemmaConcatAssociativity!2988 (List!66612 List!66612 List!66612) Unit!160430)

(assert (=> b!6899708 (= lt!2465461 (lemmaConcatAssociativity!2988 (_1!37025 lt!2465460) (_1!37025 lt!2465487) (_2!37025 lt!2465487)))))

(declare-fun b!6899709 () Bool)

(declare-fun res!2813374 () Bool)

(assert (=> b!6899709 (=> res!2813374 e!4155366)))

(assert (=> b!6899709 (= res!2813374 (not (matchR!9000 lt!2465467 (_2!37025 lt!2465460))))))

(assert (= (and start!664662 res!2813365) b!6899692))

(assert (= (and b!6899692 res!2813373) b!6899701))

(assert (= (and b!6899701 res!2813366) b!6899695))

(assert (= (and b!6899695 (not res!2813370)) b!6899689))

(assert (= (and b!6899689 (not res!2813371)) b!6899702))

(assert (= (and b!6899702 (not res!2813375)) b!6899709))

(assert (= (and b!6899709 (not res!2813374)) b!6899706))

(assert (= (and b!6899706 (not res!2813372)) b!6899686))

(assert (= (and b!6899686 (not res!2813367)) b!6899685))

(assert (= (and b!6899685 (not res!2813376)) b!6899708))

(assert (= (and b!6899708 (not res!2813364)) b!6899694))

(assert (= (and b!6899694 (not res!2813369)) b!6899684))

(assert (= (and b!6899684 (not res!2813368)) b!6899700))

(get-info :version)

(assert (= (and start!664662 ((_ is ElementMatch!16855) r1!6342)) b!6899698))

(assert (= (and start!664662 ((_ is Concat!25700) r1!6342)) b!6899690))

(assert (= (and start!664662 ((_ is Star!16855) r1!6342)) b!6899691))

(assert (= (and start!664662 ((_ is Union!16855) r1!6342)) b!6899696))

(assert (= (and start!664662 ((_ is ElementMatch!16855) r2!6280)) b!6899687))

(assert (= (and start!664662 ((_ is Concat!25700) r2!6280)) b!6899693))

(assert (= (and start!664662 ((_ is Star!16855) r2!6280)) b!6899705))

(assert (= (and start!664662 ((_ is Union!16855) r2!6280)) b!6899699))

(assert (= (and start!664662 ((_ is ElementMatch!16855) r3!135)) b!6899688))

(assert (= (and start!664662 ((_ is Concat!25700) r3!135)) b!6899703))

(assert (= (and start!664662 ((_ is Star!16855) r3!135)) b!6899697))

(assert (= (and start!664662 ((_ is Union!16855) r3!135)) b!6899704))

(assert (= (and start!664662 ((_ is Cons!66488) s!14361)) b!6899707))

(declare-fun m!7617846 () Bool)

(assert (=> b!6899689 m!7617846))

(declare-fun m!7617848 () Bool)

(assert (=> b!6899689 m!7617848))

(declare-fun m!7617850 () Bool)

(assert (=> b!6899709 m!7617850))

(declare-fun m!7617852 () Bool)

(assert (=> b!6899685 m!7617852))

(declare-fun m!7617854 () Bool)

(assert (=> b!6899685 m!7617854))

(declare-fun m!7617856 () Bool)

(assert (=> b!6899685 m!7617856))

(assert (=> b!6899685 m!7617854))

(declare-fun m!7617858 () Bool)

(assert (=> b!6899685 m!7617858))

(declare-fun m!7617860 () Bool)

(assert (=> b!6899685 m!7617860))

(declare-fun m!7617862 () Bool)

(assert (=> b!6899685 m!7617862))

(declare-fun m!7617864 () Bool)

(assert (=> b!6899702 m!7617864))

(declare-fun m!7617866 () Bool)

(assert (=> b!6899702 m!7617866))

(declare-fun m!7617868 () Bool)

(assert (=> b!6899702 m!7617868))

(declare-fun m!7617870 () Bool)

(assert (=> b!6899702 m!7617870))

(declare-fun m!7617872 () Bool)

(assert (=> b!6899702 m!7617872))

(declare-fun m!7617874 () Bool)

(assert (=> b!6899702 m!7617874))

(declare-fun m!7617876 () Bool)

(assert (=> b!6899702 m!7617876))

(assert (=> b!6899702 m!7617874))

(declare-fun m!7617878 () Bool)

(assert (=> b!6899702 m!7617878))

(declare-fun m!7617880 () Bool)

(assert (=> b!6899695 m!7617880))

(declare-fun m!7617882 () Bool)

(assert (=> b!6899695 m!7617882))

(declare-fun m!7617884 () Bool)

(assert (=> b!6899695 m!7617884))

(declare-fun m!7617886 () Bool)

(assert (=> b!6899695 m!7617886))

(declare-fun m!7617888 () Bool)

(assert (=> b!6899695 m!7617888))

(declare-fun m!7617890 () Bool)

(assert (=> b!6899695 m!7617890))

(declare-fun m!7617892 () Bool)

(assert (=> b!6899706 m!7617892))

(declare-fun m!7617894 () Bool)

(assert (=> b!6899706 m!7617894))

(declare-fun m!7617896 () Bool)

(assert (=> b!6899706 m!7617896))

(declare-fun m!7617898 () Bool)

(assert (=> b!6899706 m!7617898))

(declare-fun m!7617900 () Bool)

(assert (=> b!6899706 m!7617900))

(declare-fun m!7617902 () Bool)

(assert (=> b!6899706 m!7617902))

(assert (=> b!6899706 m!7617894))

(declare-fun m!7617904 () Bool)

(assert (=> b!6899706 m!7617904))

(declare-fun m!7617906 () Bool)

(assert (=> b!6899706 m!7617906))

(declare-fun m!7617908 () Bool)

(assert (=> b!6899706 m!7617908))

(declare-fun m!7617910 () Bool)

(assert (=> b!6899706 m!7617910))

(declare-fun m!7617912 () Bool)

(assert (=> b!6899700 m!7617912))

(declare-fun m!7617914 () Bool)

(assert (=> b!6899708 m!7617914))

(declare-fun m!7617916 () Bool)

(assert (=> b!6899708 m!7617916))

(declare-fun m!7617918 () Bool)

(assert (=> b!6899708 m!7617918))

(declare-fun m!7617920 () Bool)

(assert (=> b!6899708 m!7617920))

(declare-fun m!7617922 () Bool)

(assert (=> b!6899708 m!7617922))

(declare-fun m!7617924 () Bool)

(assert (=> b!6899708 m!7617924))

(declare-fun m!7617926 () Bool)

(assert (=> b!6899708 m!7617926))

(declare-fun m!7617928 () Bool)

(assert (=> b!6899708 m!7617928))

(declare-fun m!7617930 () Bool)

(assert (=> b!6899708 m!7617930))

(declare-fun m!7617932 () Bool)

(assert (=> b!6899708 m!7617932))

(assert (=> b!6899708 m!7617922))

(declare-fun m!7617934 () Bool)

(assert (=> b!6899708 m!7617934))

(assert (=> b!6899708 m!7617924))

(declare-fun m!7617936 () Bool)

(assert (=> b!6899708 m!7617936))

(declare-fun m!7617938 () Bool)

(assert (=> b!6899708 m!7617938))

(declare-fun m!7617940 () Bool)

(assert (=> b!6899684 m!7617940))

(declare-fun m!7617942 () Bool)

(assert (=> b!6899686 m!7617942))

(declare-fun m!7617944 () Bool)

(assert (=> b!6899692 m!7617944))

(declare-fun m!7617946 () Bool)

(assert (=> b!6899701 m!7617946))

(declare-fun m!7617948 () Bool)

(assert (=> start!664662 m!7617948))

(declare-fun m!7617950 () Bool)

(assert (=> b!6899694 m!7617950))

(check-sat (not b!6899691) (not b!6899697) (not b!6899684) (not b!6899699) (not b!6899704) tp_is_empty!42935 (not b!6899701) (not b!6899689) (not b!6899702) (not b!6899700) (not b!6899707) (not b!6899686) (not b!6899703) (not b!6899693) (not b!6899706) (not b!6899708) (not b!6899705) (not b!6899692) (not b!6899709) (not b!6899690) (not b!6899695) (not b!6899685) (not b!6899696) (not start!664662) (not b!6899694))
(check-sat)
