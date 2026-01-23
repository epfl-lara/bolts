; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!560606 () Bool)

(assert start!560606)

(declare-fun b!5317474 () Bool)

(assert (=> b!5317474 true))

(assert (=> b!5317474 true))

(declare-fun lambda!271112 () Int)

(declare-fun lambda!271111 () Int)

(assert (=> b!5317474 (not (= lambda!271112 lambda!271111))))

(assert (=> b!5317474 true))

(assert (=> b!5317474 true))

(declare-fun b!5317472 () Bool)

(assert (=> b!5317472 true))

(declare-fun b!5317464 () Bool)

(declare-datatypes ((Unit!153410 0))(
  ( (Unit!153411) )
))
(declare-fun e!3303823 () Unit!153410)

(declare-fun Unit!153412 () Unit!153410)

(assert (=> b!5317464 (= e!3303823 Unit!153412)))

(declare-datatypes ((C!30216 0))(
  ( (C!30217 (val!24810 Int)) )
))
(declare-datatypes ((List!61218 0))(
  ( (Nil!61094) (Cons!61094 (h!67542 C!30216) (t!374427 List!61218)) )
))
(declare-fun s!2326 () List!61218)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14973 0))(
  ( (ElementMatch!14973 (c!923965 C!30216)) (Concat!23818 (regOne!30458 Regex!14973) (regTwo!30458 Regex!14973)) (EmptyExpr!14973) (Star!14973 (reg!15302 Regex!14973)) (EmptyLang!14973) (Union!14973 (regOne!30459 Regex!14973) (regTwo!30459 Regex!14973)) )
))
(declare-datatypes ((List!61219 0))(
  ( (Nil!61095) (Cons!61095 (h!67543 Regex!14973) (t!374428 List!61219)) )
))
(declare-datatypes ((Context!8714 0))(
  ( (Context!8715 (exprs!4857 List!61219)) )
))
(declare-fun lt!2171359 () (InoxSet Context!8714))

(declare-fun lt!2171368 () (InoxSet Context!8714))

(declare-fun lt!2171366 () Unit!153410)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!210 ((InoxSet Context!8714) (InoxSet Context!8714) List!61218) Unit!153410)

(assert (=> b!5317464 (= lt!2171366 (lemmaZipperConcatMatchesSameAsBothZippers!210 lt!2171368 lt!2171359 (t!374427 s!2326)))))

(declare-fun res!2255688 () Bool)

(declare-fun matchZipper!1217 ((InoxSet Context!8714) List!61218) Bool)

(assert (=> b!5317464 (= res!2255688 (matchZipper!1217 lt!2171368 (t!374427 s!2326)))))

(declare-fun e!3303817 () Bool)

(assert (=> b!5317464 (=> res!2255688 e!3303817)))

(assert (=> b!5317464 (= (matchZipper!1217 ((_ map or) lt!2171368 lt!2171359) (t!374427 s!2326)) e!3303817)))

(declare-fun b!5317465 () Bool)

(declare-fun e!3303821 () Bool)

(declare-fun tp!1480914 () Bool)

(declare-fun tp!1480916 () Bool)

(assert (=> b!5317465 (= e!3303821 (and tp!1480914 tp!1480916))))

(declare-fun b!5317466 () Bool)

(declare-fun tp_is_empty!39199 () Bool)

(assert (=> b!5317466 (= e!3303821 tp_is_empty!39199)))

(declare-fun b!5317467 () Bool)

(declare-fun Unit!153413 () Unit!153410)

(assert (=> b!5317467 (= e!3303823 Unit!153413)))

(declare-fun b!5317468 () Bool)

(declare-fun res!2255683 () Bool)

(declare-fun e!3303814 () Bool)

(assert (=> b!5317468 (=> res!2255683 e!3303814)))

(declare-fun r!7292 () Regex!14973)

(declare-datatypes ((List!61220 0))(
  ( (Nil!61096) (Cons!61096 (h!67544 Context!8714) (t!374429 List!61220)) )
))
(declare-fun zl!343 () List!61220)

(declare-fun generalisedConcat!642 (List!61219) Regex!14973)

(assert (=> b!5317468 (= res!2255683 (not (= r!7292 (generalisedConcat!642 (exprs!4857 (h!67544 zl!343))))))))

(declare-fun b!5317469 () Bool)

(declare-fun res!2255680 () Bool)

(assert (=> b!5317469 (=> res!2255680 e!3303814)))

(declare-fun isEmpty!33063 (List!61220) Bool)

(assert (=> b!5317469 (= res!2255680 (not (isEmpty!33063 (t!374429 zl!343))))))

(declare-fun b!5317470 () Bool)

(declare-fun e!3303825 () Bool)

(assert (=> b!5317470 (= e!3303825 (not e!3303814))))

(declare-fun res!2255686 () Bool)

(assert (=> b!5317470 (=> res!2255686 e!3303814)))

(get-info :version)

(assert (=> b!5317470 (= res!2255686 (not ((_ is Cons!61096) zl!343)))))

(declare-fun lt!2171358 () Bool)

(declare-fun matchRSpec!2076 (Regex!14973 List!61218) Bool)

(assert (=> b!5317470 (= lt!2171358 (matchRSpec!2076 r!7292 s!2326))))

(declare-fun matchR!7158 (Regex!14973 List!61218) Bool)

(assert (=> b!5317470 (= lt!2171358 (matchR!7158 r!7292 s!2326))))

(declare-fun lt!2171367 () Unit!153410)

(declare-fun mainMatchTheorem!2076 (Regex!14973 List!61218) Unit!153410)

(assert (=> b!5317470 (= lt!2171367 (mainMatchTheorem!2076 r!7292 s!2326))))

(declare-fun b!5317471 () Bool)

(declare-fun res!2255697 () Bool)

(declare-fun e!3303820 () Bool)

(assert (=> b!5317471 (=> res!2255697 e!3303820)))

(declare-fun lt!2171371 () (InoxSet Context!8714))

(assert (=> b!5317471 (= res!2255697 (not (= (matchZipper!1217 lt!2171368 (t!374427 s!2326)) (matchZipper!1217 lt!2171371 (t!374427 s!2326)))))))

(declare-fun e!3303818 () Bool)

(declare-fun e!3303819 () Bool)

(assert (=> b!5317472 (= e!3303818 e!3303819)))

(declare-fun res!2255690 () Bool)

(assert (=> b!5317472 (=> res!2255690 e!3303819)))

(assert (=> b!5317472 (= res!2255690 (or (and ((_ is ElementMatch!14973) (regOne!30458 r!7292)) (= (c!923965 (regOne!30458 r!7292)) (h!67542 s!2326))) ((_ is Union!14973) (regOne!30458 r!7292))))))

(declare-fun lt!2171363 () Unit!153410)

(assert (=> b!5317472 (= lt!2171363 e!3303823)))

(declare-fun c!923964 () Bool)

(declare-fun nullable!5142 (Regex!14973) Bool)

(assert (=> b!5317472 (= c!923964 (nullable!5142 (h!67543 (exprs!4857 (h!67544 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8714))

(declare-fun lambda!271113 () Int)

(declare-fun flatMap!700 ((InoxSet Context!8714) Int) (InoxSet Context!8714))

(declare-fun derivationStepZipperUp!345 (Context!8714 C!30216) (InoxSet Context!8714))

(assert (=> b!5317472 (= (flatMap!700 z!1189 lambda!271113) (derivationStepZipperUp!345 (h!67544 zl!343) (h!67542 s!2326)))))

(declare-fun lt!2171360 () Unit!153410)

(declare-fun lemmaFlatMapOnSingletonSet!232 ((InoxSet Context!8714) Context!8714 Int) Unit!153410)

(assert (=> b!5317472 (= lt!2171360 (lemmaFlatMapOnSingletonSet!232 z!1189 (h!67544 zl!343) lambda!271113))))

(declare-fun lt!2171369 () Context!8714)

(assert (=> b!5317472 (= lt!2171359 (derivationStepZipperUp!345 lt!2171369 (h!67542 s!2326)))))

(declare-fun derivationStepZipperDown!421 (Regex!14973 Context!8714 C!30216) (InoxSet Context!8714))

(assert (=> b!5317472 (= lt!2171368 (derivationStepZipperDown!421 (h!67543 (exprs!4857 (h!67544 zl!343))) lt!2171369 (h!67542 s!2326)))))

(assert (=> b!5317472 (= lt!2171369 (Context!8715 (t!374428 (exprs!4857 (h!67544 zl!343)))))))

(declare-fun lt!2171362 () (InoxSet Context!8714))

(assert (=> b!5317472 (= lt!2171362 (derivationStepZipperUp!345 (Context!8715 (Cons!61095 (h!67543 (exprs!4857 (h!67544 zl!343))) (t!374428 (exprs!4857 (h!67544 zl!343))))) (h!67542 s!2326)))))

(declare-fun b!5317473 () Bool)

(declare-fun res!2255691 () Bool)

(assert (=> b!5317473 (=> res!2255691 e!3303814)))

(assert (=> b!5317473 (= res!2255691 (or ((_ is EmptyExpr!14973) r!7292) ((_ is EmptyLang!14973) r!7292) ((_ is ElementMatch!14973) r!7292) ((_ is Union!14973) r!7292) (not ((_ is Concat!23818) r!7292))))))

(assert (=> b!5317474 (= e!3303814 e!3303818)))

(declare-fun res!2255687 () Bool)

(assert (=> b!5317474 (=> res!2255687 e!3303818)))

(declare-fun lt!2171370 () Bool)

(assert (=> b!5317474 (= res!2255687 (or (not (= lt!2171358 lt!2171370)) ((_ is Nil!61094) s!2326)))))

(declare-fun Exists!2154 (Int) Bool)

(assert (=> b!5317474 (= (Exists!2154 lambda!271111) (Exists!2154 lambda!271112))))

(declare-fun lt!2171361 () Unit!153410)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!808 (Regex!14973 Regex!14973 List!61218) Unit!153410)

(assert (=> b!5317474 (= lt!2171361 (lemmaExistCutMatchRandMatchRSpecEquivalent!808 (regOne!30458 r!7292) (regTwo!30458 r!7292) s!2326))))

(assert (=> b!5317474 (= lt!2171370 (Exists!2154 lambda!271111))))

(declare-datatypes ((tuple2!64344 0))(
  ( (tuple2!64345 (_1!35475 List!61218) (_2!35475 List!61218)) )
))
(declare-datatypes ((Option!15084 0))(
  ( (None!15083) (Some!15083 (v!51112 tuple2!64344)) )
))
(declare-fun isDefined!11787 (Option!15084) Bool)

(declare-fun findConcatSeparation!1498 (Regex!14973 Regex!14973 List!61218 List!61218 List!61218) Option!15084)

(assert (=> b!5317474 (= lt!2171370 (isDefined!11787 (findConcatSeparation!1498 (regOne!30458 r!7292) (regTwo!30458 r!7292) Nil!61094 s!2326 s!2326)))))

(declare-fun lt!2171364 () Unit!153410)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1262 (Regex!14973 Regex!14973 List!61218) Unit!153410)

(assert (=> b!5317474 (= lt!2171364 (lemmaFindConcatSeparationEquivalentToExists!1262 (regOne!30458 r!7292) (regTwo!30458 r!7292) s!2326))))

(declare-fun b!5317475 () Bool)

(declare-fun res!2255694 () Bool)

(assert (=> b!5317475 (=> res!2255694 e!3303818)))

(declare-fun isEmpty!33064 (List!61219) Bool)

(assert (=> b!5317475 (= res!2255694 (isEmpty!33064 (t!374428 (exprs!4857 (h!67544 zl!343)))))))

(declare-fun b!5317476 () Bool)

(assert (=> b!5317476 (= e!3303817 (matchZipper!1217 lt!2171359 (t!374427 s!2326)))))

(declare-fun b!5317477 () Bool)

(declare-fun res!2255693 () Bool)

(assert (=> b!5317477 (=> (not res!2255693) (not e!3303825))))

(declare-fun toList!8757 ((InoxSet Context!8714)) List!61220)

(assert (=> b!5317477 (= res!2255693 (= (toList!8757 z!1189) zl!343))))

(declare-fun setElem!34215 () Context!8714)

(declare-fun tp!1480920 () Bool)

(declare-fun e!3303822 () Bool)

(declare-fun setRes!34215 () Bool)

(declare-fun setNonEmpty!34215 () Bool)

(declare-fun inv!80679 (Context!8714) Bool)

(assert (=> setNonEmpty!34215 (= setRes!34215 (and tp!1480920 (inv!80679 setElem!34215) e!3303822))))

(declare-fun setRest!34215 () (InoxSet Context!8714))

(assert (=> setNonEmpty!34215 (= z!1189 ((_ map or) (store ((as const (Array Context!8714 Bool)) false) setElem!34215 true) setRest!34215))))

(declare-fun res!2255692 () Bool)

(assert (=> start!560606 (=> (not res!2255692) (not e!3303825))))

(declare-fun validRegex!6709 (Regex!14973) Bool)

(assert (=> start!560606 (= res!2255692 (validRegex!6709 r!7292))))

(assert (=> start!560606 e!3303825))

(assert (=> start!560606 e!3303821))

(declare-fun condSetEmpty!34215 () Bool)

(assert (=> start!560606 (= condSetEmpty!34215 (= z!1189 ((as const (Array Context!8714 Bool)) false)))))

(assert (=> start!560606 setRes!34215))

(declare-fun e!3303826 () Bool)

(assert (=> start!560606 e!3303826))

(declare-fun e!3303824 () Bool)

(assert (=> start!560606 e!3303824))

(declare-fun b!5317478 () Bool)

(assert (=> b!5317478 (= e!3303819 e!3303820)))

(declare-fun res!2255696 () Bool)

(assert (=> b!5317478 (=> res!2255696 e!3303820)))

(assert (=> b!5317478 (= res!2255696 (not (= lt!2171368 lt!2171371)))))

(declare-fun lt!2171372 () List!61219)

(assert (=> b!5317478 (= lt!2171371 (derivationStepZipperDown!421 (regOne!30458 (regOne!30458 r!7292)) (Context!8715 lt!2171372) (h!67542 s!2326)))))

(assert (=> b!5317478 (= lt!2171372 (Cons!61095 (regTwo!30458 (regOne!30458 r!7292)) (t!374428 (exprs!4857 (h!67544 zl!343)))))))

(declare-fun b!5317479 () Bool)

(declare-fun tp!1480915 () Bool)

(assert (=> b!5317479 (= e!3303824 (and tp_is_empty!39199 tp!1480915))))

(declare-fun b!5317480 () Bool)

(declare-fun e!3303815 () Bool)

(declare-fun tp!1480917 () Bool)

(assert (=> b!5317480 (= e!3303826 (and (inv!80679 (h!67544 zl!343)) e!3303815 tp!1480917))))

(declare-fun b!5317481 () Bool)

(assert (=> b!5317481 (= e!3303820 true)))

(declare-fun lt!2171365 () (InoxSet Context!8714))

(assert (=> b!5317481 (= lt!2171365 (derivationStepZipperUp!345 (Context!8715 (Cons!61095 (regOne!30458 (regOne!30458 r!7292)) lt!2171372)) (h!67542 s!2326)))))

(declare-fun b!5317482 () Bool)

(declare-fun res!2255685 () Bool)

(assert (=> b!5317482 (=> (not res!2255685) (not e!3303825))))

(declare-fun unfocusZipper!715 (List!61220) Regex!14973)

(assert (=> b!5317482 (= res!2255685 (= r!7292 (unfocusZipper!715 zl!343)))))

(declare-fun b!5317483 () Bool)

(declare-fun res!2255684 () Bool)

(assert (=> b!5317483 (=> res!2255684 e!3303814)))

(declare-fun generalisedUnion!902 (List!61219) Regex!14973)

(declare-fun unfocusZipperList!415 (List!61220) List!61219)

(assert (=> b!5317483 (= res!2255684 (not (= r!7292 (generalisedUnion!902 (unfocusZipperList!415 zl!343)))))))

(declare-fun b!5317484 () Bool)

(declare-fun tp!1480918 () Bool)

(assert (=> b!5317484 (= e!3303821 tp!1480918)))

(declare-fun b!5317485 () Bool)

(declare-fun res!2255695 () Bool)

(assert (=> b!5317485 (=> res!2255695 e!3303819)))

(assert (=> b!5317485 (= res!2255695 (not ((_ is Concat!23818) (regOne!30458 r!7292))))))

(declare-fun b!5317486 () Bool)

(declare-fun tp!1480921 () Bool)

(assert (=> b!5317486 (= e!3303822 tp!1480921)))

(declare-fun b!5317487 () Bool)

(declare-fun tp!1480912 () Bool)

(assert (=> b!5317487 (= e!3303815 tp!1480912)))

(declare-fun b!5317488 () Bool)

(declare-fun res!2255681 () Bool)

(assert (=> b!5317488 (=> res!2255681 e!3303814)))

(assert (=> b!5317488 (= res!2255681 (not ((_ is Cons!61095) (exprs!4857 (h!67544 zl!343)))))))

(declare-fun b!5317489 () Bool)

(declare-fun res!2255689 () Bool)

(assert (=> b!5317489 (=> res!2255689 e!3303819)))

(declare-fun e!3303816 () Bool)

(assert (=> b!5317489 (= res!2255689 e!3303816)))

(declare-fun res!2255682 () Bool)

(assert (=> b!5317489 (=> (not res!2255682) (not e!3303816))))

(assert (=> b!5317489 (= res!2255682 ((_ is Concat!23818) (regOne!30458 r!7292)))))

(declare-fun b!5317490 () Bool)

(declare-fun tp!1480913 () Bool)

(declare-fun tp!1480919 () Bool)

(assert (=> b!5317490 (= e!3303821 (and tp!1480913 tp!1480919))))

(declare-fun setIsEmpty!34215 () Bool)

(assert (=> setIsEmpty!34215 setRes!34215))

(declare-fun b!5317491 () Bool)

(assert (=> b!5317491 (= e!3303816 (nullable!5142 (regOne!30458 (regOne!30458 r!7292))))))

(assert (= (and start!560606 res!2255692) b!5317477))

(assert (= (and b!5317477 res!2255693) b!5317482))

(assert (= (and b!5317482 res!2255685) b!5317470))

(assert (= (and b!5317470 (not res!2255686)) b!5317469))

(assert (= (and b!5317469 (not res!2255680)) b!5317468))

(assert (= (and b!5317468 (not res!2255683)) b!5317488))

(assert (= (and b!5317488 (not res!2255681)) b!5317483))

(assert (= (and b!5317483 (not res!2255684)) b!5317473))

(assert (= (and b!5317473 (not res!2255691)) b!5317474))

(assert (= (and b!5317474 (not res!2255687)) b!5317475))

(assert (= (and b!5317475 (not res!2255694)) b!5317472))

(assert (= (and b!5317472 c!923964) b!5317464))

(assert (= (and b!5317472 (not c!923964)) b!5317467))

(assert (= (and b!5317464 (not res!2255688)) b!5317476))

(assert (= (and b!5317472 (not res!2255690)) b!5317489))

(assert (= (and b!5317489 res!2255682) b!5317491))

(assert (= (and b!5317489 (not res!2255689)) b!5317485))

(assert (= (and b!5317485 (not res!2255695)) b!5317478))

(assert (= (and b!5317478 (not res!2255696)) b!5317471))

(assert (= (and b!5317471 (not res!2255697)) b!5317481))

(assert (= (and start!560606 ((_ is ElementMatch!14973) r!7292)) b!5317466))

(assert (= (and start!560606 ((_ is Concat!23818) r!7292)) b!5317490))

(assert (= (and start!560606 ((_ is Star!14973) r!7292)) b!5317484))

(assert (= (and start!560606 ((_ is Union!14973) r!7292)) b!5317465))

(assert (= (and start!560606 condSetEmpty!34215) setIsEmpty!34215))

(assert (= (and start!560606 (not condSetEmpty!34215)) setNonEmpty!34215))

(assert (= setNonEmpty!34215 b!5317486))

(assert (= b!5317480 b!5317487))

(assert (= (and start!560606 ((_ is Cons!61096) zl!343)) b!5317480))

(assert (= (and start!560606 ((_ is Cons!61094) s!2326)) b!5317479))

(declare-fun m!6353272 () Bool)

(assert (=> b!5317475 m!6353272))

(declare-fun m!6353274 () Bool)

(assert (=> b!5317474 m!6353274))

(assert (=> b!5317474 m!6353274))

(declare-fun m!6353276 () Bool)

(assert (=> b!5317474 m!6353276))

(declare-fun m!6353278 () Bool)

(assert (=> b!5317474 m!6353278))

(declare-fun m!6353280 () Bool)

(assert (=> b!5317474 m!6353280))

(declare-fun m!6353282 () Bool)

(assert (=> b!5317474 m!6353282))

(assert (=> b!5317474 m!6353278))

(declare-fun m!6353284 () Bool)

(assert (=> b!5317474 m!6353284))

(declare-fun m!6353286 () Bool)

(assert (=> b!5317469 m!6353286))

(declare-fun m!6353288 () Bool)

(assert (=> b!5317477 m!6353288))

(declare-fun m!6353290 () Bool)

(assert (=> b!5317471 m!6353290))

(declare-fun m!6353292 () Bool)

(assert (=> b!5317471 m!6353292))

(declare-fun m!6353294 () Bool)

(assert (=> b!5317491 m!6353294))

(declare-fun m!6353296 () Bool)

(assert (=> b!5317481 m!6353296))

(declare-fun m!6353298 () Bool)

(assert (=> setNonEmpty!34215 m!6353298))

(declare-fun m!6353300 () Bool)

(assert (=> b!5317468 m!6353300))

(declare-fun m!6353302 () Bool)

(assert (=> b!5317470 m!6353302))

(declare-fun m!6353304 () Bool)

(assert (=> b!5317470 m!6353304))

(declare-fun m!6353306 () Bool)

(assert (=> b!5317470 m!6353306))

(declare-fun m!6353308 () Bool)

(assert (=> b!5317483 m!6353308))

(assert (=> b!5317483 m!6353308))

(declare-fun m!6353310 () Bool)

(assert (=> b!5317483 m!6353310))

(declare-fun m!6353312 () Bool)

(assert (=> b!5317478 m!6353312))

(declare-fun m!6353314 () Bool)

(assert (=> start!560606 m!6353314))

(declare-fun m!6353316 () Bool)

(assert (=> b!5317476 m!6353316))

(declare-fun m!6353318 () Bool)

(assert (=> b!5317464 m!6353318))

(assert (=> b!5317464 m!6353290))

(declare-fun m!6353320 () Bool)

(assert (=> b!5317464 m!6353320))

(declare-fun m!6353322 () Bool)

(assert (=> b!5317482 m!6353322))

(declare-fun m!6353324 () Bool)

(assert (=> b!5317480 m!6353324))

(declare-fun m!6353326 () Bool)

(assert (=> b!5317472 m!6353326))

(declare-fun m!6353328 () Bool)

(assert (=> b!5317472 m!6353328))

(declare-fun m!6353330 () Bool)

(assert (=> b!5317472 m!6353330))

(declare-fun m!6353332 () Bool)

(assert (=> b!5317472 m!6353332))

(declare-fun m!6353334 () Bool)

(assert (=> b!5317472 m!6353334))

(declare-fun m!6353336 () Bool)

(assert (=> b!5317472 m!6353336))

(declare-fun m!6353338 () Bool)

(assert (=> b!5317472 m!6353338))

(check-sat tp_is_empty!39199 (not b!5317474) (not start!560606) (not b!5317472) (not b!5317468) (not b!5317477) (not b!5317487) (not b!5317480) (not b!5317481) (not b!5317469) (not b!5317475) (not b!5317471) (not setNonEmpty!34215) (not b!5317482) (not b!5317470) (not b!5317464) (not b!5317478) (not b!5317483) (not b!5317486) (not b!5317476) (not b!5317465) (not b!5317479) (not b!5317484) (not b!5317490) (not b!5317491))
(check-sat)
