; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543100 () Bool)

(assert start!543100)

(declare-fun b!5133334 () Bool)

(assert (=> b!5133334 true))

(declare-fun bs!1199327 () Bool)

(declare-fun b!5133336 () Bool)

(declare-fun b!5133325 () Bool)

(assert (= bs!1199327 (and b!5133336 b!5133325)))

(declare-fun lambda!255409 () Int)

(declare-fun lambda!255408 () Int)

(assert (=> bs!1199327 (not (= lambda!255409 lambda!255408))))

(declare-fun bs!1199328 () Bool)

(declare-fun b!5133338 () Bool)

(assert (= bs!1199328 (and b!5133338 b!5133325)))

(declare-fun lambda!255410 () Int)

(assert (=> bs!1199328 (not (= lambda!255410 lambda!255408))))

(declare-fun bs!1199329 () Bool)

(assert (= bs!1199329 (and b!5133338 b!5133336)))

(assert (=> bs!1199329 (not (= lambda!255410 lambda!255409))))

(assert (=> b!5133338 true))

(assert (=> b!5133338 true))

(declare-fun e!3201762 () Bool)

(declare-fun e!3201771 () Bool)

(assert (=> b!5133325 (= e!3201762 e!3201771)))

(declare-fun res!2186474 () Bool)

(assert (=> b!5133325 (=> (not res!2186474) (not e!3201771))))

(declare-fun lt!2118521 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29008 0))(
  ( (C!29009 (val!24156 Int)) )
))
(declare-datatypes ((Regex!14371 0))(
  ( (ElementMatch!14371 (c!883482 C!29008)) (Concat!23216 (regOne!29254 Regex!14371) (regTwo!29254 Regex!14371)) (EmptyExpr!14371) (Star!14371 (reg!14700 Regex!14371)) (EmptyLang!14371) (Union!14371 (regOne!29255 Regex!14371) (regTwo!29255 Regex!14371)) )
))
(declare-datatypes ((List!59689 0))(
  ( (Nil!59565) (Cons!59565 (h!66013 Regex!14371) (t!372716 List!59689)) )
))
(declare-datatypes ((Context!7510 0))(
  ( (Context!7511 (exprs!4255 List!59689)) )
))
(declare-fun lt!2118514 () (InoxSet Context!7510))

(declare-fun forall!13827 ((InoxSet Context!7510) Int) Bool)

(assert (=> b!5133325 (= res!2186474 (= lt!2118521 (forall!13827 lt!2118514 lambda!255408)))))

(declare-fun lostCauseZipper!1215 ((InoxSet Context!7510)) Bool)

(assert (=> b!5133325 (= lt!2118521 (lostCauseZipper!1215 lt!2118514))))

(declare-fun b!5133326 () Bool)

(declare-fun e!3201763 () Bool)

(assert (=> b!5133326 (= e!3201763 true)))

(declare-fun lt!2118520 () Context!7510)

(declare-datatypes ((Unit!150897 0))(
  ( (Unit!150898) )
))
(declare-fun lt!2118522 () Unit!150897)

(declare-fun lt!2118515 () (InoxSet Context!7510))

(declare-datatypes ((List!59690 0))(
  ( (Nil!59566) (Cons!59566 (h!66014 Context!7510) (t!372717 List!59690)) )
))
(declare-fun forallContained!4629 (List!59690 Int Context!7510) Unit!150897)

(declare-fun toList!8356 ((InoxSet Context!7510)) List!59690)

(assert (=> b!5133326 (= lt!2118522 (forallContained!4629 (toList!8356 lt!2118515) lambda!255408 lt!2118520))))

(declare-fun b!5133327 () Bool)

(declare-fun res!2186470 () Bool)

(declare-fun e!3201772 () Bool)

(assert (=> b!5133327 (=> res!2186470 e!3201772)))

(declare-fun lostCause!1313 (Context!7510) Bool)

(assert (=> b!5133327 (= res!2186470 (lostCause!1313 lt!2118520))))

(declare-fun b!5133328 () Bool)

(declare-fun res!2186469 () Bool)

(assert (=> b!5133328 (=> (not res!2186469) (not e!3201771))))

(declare-fun z!1054 () (InoxSet Context!7510))

(assert (=> b!5133328 (= res!2186469 (forall!13827 z!1054 lambda!255408))))

(declare-fun setIsEmpty!31242 () Bool)

(declare-fun setRes!31242 () Bool)

(assert (=> setIsEmpty!31242 setRes!31242))

(declare-fun setElem!31242 () Context!7510)

(declare-fun e!3201764 () Bool)

(declare-fun setNonEmpty!31242 () Bool)

(declare-fun tp!1431945 () Bool)

(declare-fun inv!79108 (Context!7510) Bool)

(assert (=> setNonEmpty!31242 (= setRes!31242 (and tp!1431945 (inv!79108 setElem!31242) e!3201764))))

(declare-fun setRest!31242 () (InoxSet Context!7510))

(assert (=> setNonEmpty!31242 (= z!1054 ((_ map or) (store ((as const (Array Context!7510 Bool)) false) setElem!31242 true) setRest!31242))))

(declare-fun b!5133330 () Bool)

(declare-fun e!3201766 () Bool)

(declare-fun e!3201770 () Bool)

(assert (=> b!5133330 (= e!3201766 e!3201770)))

(declare-fun res!2186477 () Bool)

(assert (=> b!5133330 (=> res!2186477 e!3201770)))

(declare-fun lt!2118519 () Context!7510)

(assert (=> b!5133330 (= res!2186477 (not (select z!1054 lt!2118519)))))

(declare-fun getWitness!828 ((InoxSet Context!7510) Int) Context!7510)

(assert (=> b!5133330 (= lt!2118519 (getWitness!828 z!1054 lambda!255410))))

(declare-fun b!5133331 () Bool)

(declare-fun res!2186471 () Bool)

(assert (=> b!5133331 (=> (not res!2186471) (not e!3201771))))

(assert (=> b!5133331 (= res!2186471 (not (forall!13827 lt!2118514 lambda!255408)))))

(declare-fun b!5133332 () Bool)

(declare-fun e!3201768 () Bool)

(declare-fun e!3201765 () Bool)

(assert (=> b!5133332 (= e!3201768 e!3201765)))

(declare-fun res!2186466 () Bool)

(assert (=> b!5133332 (=> res!2186466 e!3201765)))

(assert (=> b!5133332 (= res!2186466 (not (lostCause!1313 lt!2118519)))))

(declare-fun lt!2118523 () Unit!150897)

(assert (=> b!5133332 (= lt!2118523 (forallContained!4629 (toList!8356 z!1054) lambda!255408 lt!2118519))))

(declare-fun b!5133333 () Bool)

(declare-fun res!2186473 () Bool)

(assert (=> b!5133333 (=> (not res!2186473) (not e!3201771))))

(assert (=> b!5133333 (= res!2186473 (not lt!2118521))))

(declare-fun e!3201767 () Bool)

(assert (=> b!5133334 (= e!3201767 e!3201762)))

(declare-fun res!2186467 () Bool)

(assert (=> b!5133334 (=> (not res!2186467) (not e!3201762))))

(declare-fun lambda!255407 () Int)

(declare-fun flatMap!422 ((InoxSet Context!7510) Int) (InoxSet Context!7510))

(assert (=> b!5133334 (= res!2186467 (= lt!2118514 (flatMap!422 z!1054 lambda!255407)))))

(declare-fun a!1233 () C!29008)

(declare-fun derivationStepZipper!926 ((InoxSet Context!7510) C!29008) (InoxSet Context!7510))

(assert (=> b!5133334 (= lt!2118514 (derivationStepZipper!926 z!1054 a!1233))))

(declare-fun b!5133335 () Bool)

(assert (=> b!5133335 (= e!3201770 e!3201768)))

(declare-fun res!2186475 () Bool)

(assert (=> b!5133335 (=> res!2186475 e!3201768)))

(assert (=> b!5133335 (= res!2186475 (not (select lt!2118515 lt!2118520)))))

(declare-fun derivationStepZipperUp!75 (Context!7510 C!29008) (InoxSet Context!7510))

(assert (=> b!5133335 (= lt!2118515 (derivationStepZipperUp!75 lt!2118519 a!1233))))

(declare-fun b!5133329 () Bool)

(declare-fun e!3201769 () Bool)

(assert (=> b!5133329 (= e!3201769 e!3201772)))

(declare-fun res!2186468 () Bool)

(assert (=> b!5133329 (=> res!2186468 e!3201772)))

(assert (=> b!5133329 (= res!2186468 (not (select lt!2118514 lt!2118520)))))

(declare-fun lt!2118517 () List!59690)

(declare-fun getWitness!829 (List!59690 Int) Context!7510)

(assert (=> b!5133329 (= lt!2118520 (getWitness!829 lt!2118517 lambda!255409))))

(declare-fun res!2186476 () Bool)

(assert (=> start!543100 (=> (not res!2186476) (not e!3201767))))

(assert (=> start!543100 (= res!2186476 (lostCauseZipper!1215 z!1054))))

(assert (=> start!543100 e!3201767))

(declare-fun condSetEmpty!31242 () Bool)

(assert (=> start!543100 (= condSetEmpty!31242 (= z!1054 ((as const (Array Context!7510 Bool)) false)))))

(assert (=> start!543100 setRes!31242))

(declare-fun tp_is_empty!37915 () Bool)

(assert (=> start!543100 tp_is_empty!37915))

(assert (=> b!5133336 (= e!3201771 (not e!3201769))))

(declare-fun res!2186478 () Bool)

(assert (=> b!5133336 (=> res!2186478 e!3201769)))

(declare-fun exists!1706 ((InoxSet Context!7510) Int) Bool)

(assert (=> b!5133336 (= res!2186478 (not (exists!1706 lt!2118514 lambda!255409)))))

(declare-fun exists!1707 (List!59690 Int) Bool)

(assert (=> b!5133336 (exists!1707 lt!2118517 lambda!255409)))

(declare-fun lt!2118516 () Unit!150897)

(declare-fun lemmaNotForallThenExists!404 (List!59690 Int) Unit!150897)

(assert (=> b!5133336 (= lt!2118516 (lemmaNotForallThenExists!404 lt!2118517 lambda!255408))))

(assert (=> b!5133336 (= lt!2118517 (toList!8356 lt!2118514))))

(declare-fun b!5133337 () Bool)

(assert (=> b!5133337 (= e!3201765 e!3201763)))

(declare-fun res!2186465 () Bool)

(assert (=> b!5133337 (=> res!2186465 e!3201763)))

(assert (=> b!5133337 (= res!2186465 (not (lostCauseZipper!1215 lt!2118515)))))

(assert (=> b!5133337 (lostCauseZipper!1215 (derivationStepZipperUp!75 lt!2118519 a!1233))))

(declare-fun lt!2118513 () Unit!150897)

(declare-fun lemmaLostCauseFixPointDerivUp!8 (Context!7510 C!29008) Unit!150897)

(assert (=> b!5133337 (= lt!2118513 (lemmaLostCauseFixPointDerivUp!8 lt!2118519 a!1233))))

(assert (=> b!5133338 (= e!3201772 e!3201766)))

(declare-fun res!2186472 () Bool)

(assert (=> b!5133338 (=> res!2186472 e!3201766)))

(assert (=> b!5133338 (= res!2186472 (not (exists!1706 z!1054 lambda!255410)))))

(assert (=> b!5133338 (exists!1706 z!1054 lambda!255410)))

(declare-fun lt!2118518 () Unit!150897)

(declare-fun lemmaFlatMapPost!22 ((InoxSet Context!7510) Int Context!7510) Unit!150897)

(assert (=> b!5133338 (= lt!2118518 (lemmaFlatMapPost!22 z!1054 lambda!255407 lt!2118520))))

(declare-fun b!5133339 () Bool)

(declare-fun tp!1431944 () Bool)

(assert (=> b!5133339 (= e!3201764 tp!1431944)))

(assert (= (and start!543100 res!2186476) b!5133334))

(assert (= (and b!5133334 res!2186467) b!5133325))

(assert (= (and b!5133325 res!2186474) b!5133328))

(assert (= (and b!5133328 res!2186469) b!5133333))

(assert (= (and b!5133333 res!2186473) b!5133331))

(assert (= (and b!5133331 res!2186471) b!5133336))

(assert (= (and b!5133336 (not res!2186478)) b!5133329))

(assert (= (and b!5133329 (not res!2186468)) b!5133327))

(assert (= (and b!5133327 (not res!2186470)) b!5133338))

(assert (= (and b!5133338 (not res!2186472)) b!5133330))

(assert (= (and b!5133330 (not res!2186477)) b!5133335))

(assert (= (and b!5133335 (not res!2186475)) b!5133332))

(assert (= (and b!5133332 (not res!2186466)) b!5133337))

(assert (= (and b!5133337 (not res!2186465)) b!5133326))

(assert (= (and start!543100 condSetEmpty!31242) setIsEmpty!31242))

(assert (= (and start!543100 (not condSetEmpty!31242)) setNonEmpty!31242))

(assert (= setNonEmpty!31242 b!5133339))

(declare-fun m!6199462 () Bool)

(assert (=> b!5133330 m!6199462))

(declare-fun m!6199464 () Bool)

(assert (=> b!5133330 m!6199464))

(declare-fun m!6199466 () Bool)

(assert (=> b!5133328 m!6199466))

(declare-fun m!6199468 () Bool)

(assert (=> setNonEmpty!31242 m!6199468))

(declare-fun m!6199470 () Bool)

(assert (=> b!5133332 m!6199470))

(declare-fun m!6199472 () Bool)

(assert (=> b!5133332 m!6199472))

(assert (=> b!5133332 m!6199472))

(declare-fun m!6199474 () Bool)

(assert (=> b!5133332 m!6199474))

(declare-fun m!6199476 () Bool)

(assert (=> b!5133338 m!6199476))

(assert (=> b!5133338 m!6199476))

(declare-fun m!6199478 () Bool)

(assert (=> b!5133338 m!6199478))

(declare-fun m!6199480 () Bool)

(assert (=> b!5133337 m!6199480))

(declare-fun m!6199482 () Bool)

(assert (=> b!5133337 m!6199482))

(assert (=> b!5133337 m!6199482))

(declare-fun m!6199484 () Bool)

(assert (=> b!5133337 m!6199484))

(declare-fun m!6199486 () Bool)

(assert (=> b!5133337 m!6199486))

(declare-fun m!6199488 () Bool)

(assert (=> b!5133331 m!6199488))

(declare-fun m!6199490 () Bool)

(assert (=> b!5133336 m!6199490))

(declare-fun m!6199492 () Bool)

(assert (=> b!5133336 m!6199492))

(declare-fun m!6199494 () Bool)

(assert (=> b!5133336 m!6199494))

(declare-fun m!6199496 () Bool)

(assert (=> b!5133336 m!6199496))

(declare-fun m!6199498 () Bool)

(assert (=> b!5133334 m!6199498))

(declare-fun m!6199500 () Bool)

(assert (=> b!5133334 m!6199500))

(declare-fun m!6199502 () Bool)

(assert (=> b!5133327 m!6199502))

(declare-fun m!6199504 () Bool)

(assert (=> b!5133335 m!6199504))

(assert (=> b!5133335 m!6199482))

(declare-fun m!6199506 () Bool)

(assert (=> start!543100 m!6199506))

(assert (=> b!5133325 m!6199488))

(declare-fun m!6199508 () Bool)

(assert (=> b!5133325 m!6199508))

(declare-fun m!6199510 () Bool)

(assert (=> b!5133326 m!6199510))

(assert (=> b!5133326 m!6199510))

(declare-fun m!6199512 () Bool)

(assert (=> b!5133326 m!6199512))

(declare-fun m!6199514 () Bool)

(assert (=> b!5133329 m!6199514))

(declare-fun m!6199516 () Bool)

(assert (=> b!5133329 m!6199516))

(check-sat (not b!5133330) tp_is_empty!37915 (not b!5133338) (not start!543100) (not b!5133335) (not b!5133326) (not b!5133332) (not b!5133336) (not b!5133325) (not b!5133331) (not b!5133329) (not setNonEmpty!31242) (not b!5133337) (not b!5133327) (not b!5133334) (not b!5133328) (not b!5133339))
(check-sat)
