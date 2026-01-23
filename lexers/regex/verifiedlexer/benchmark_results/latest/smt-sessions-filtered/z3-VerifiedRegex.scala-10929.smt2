; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565858 () Bool)

(assert start!565858)

(declare-fun b!5380404 () Bool)

(assert (=> b!5380404 true))

(assert (=> b!5380404 true))

(declare-fun lambda!278367 () Int)

(declare-fun lambda!278366 () Int)

(assert (=> b!5380404 (not (= lambda!278367 lambda!278366))))

(assert (=> b!5380404 true))

(assert (=> b!5380404 true))

(declare-fun b!5380412 () Bool)

(assert (=> b!5380412 true))

(declare-fun bs!1245740 () Bool)

(declare-fun b!5380403 () Bool)

(assert (= bs!1245740 (and b!5380403 b!5380404)))

(declare-datatypes ((C!30480 0))(
  ( (C!30481 (val!24942 Int)) )
))
(declare-datatypes ((Regex!15105 0))(
  ( (ElementMatch!15105 (c!937749 C!30480)) (Concat!23950 (regOne!30722 Regex!15105) (regTwo!30722 Regex!15105)) (EmptyExpr!15105) (Star!15105 (reg!15434 Regex!15105)) (EmptyLang!15105) (Union!15105 (regOne!30723 Regex!15105) (regTwo!30723 Regex!15105)) )
))
(declare-fun r!7292 () Regex!15105)

(declare-fun lt!2190664 () Regex!15105)

(declare-fun lambda!278369 () Int)

(assert (=> bs!1245740 (= (= lt!2190664 (regOne!30722 r!7292)) (= lambda!278369 lambda!278366))))

(assert (=> bs!1245740 (not (= lambda!278369 lambda!278367))))

(assert (=> b!5380403 true))

(assert (=> b!5380403 true))

(assert (=> b!5380403 true))

(declare-fun lambda!278370 () Int)

(assert (=> bs!1245740 (not (= lambda!278370 lambda!278366))))

(assert (=> bs!1245740 (= (= lt!2190664 (regOne!30722 r!7292)) (= lambda!278370 lambda!278367))))

(assert (=> b!5380403 (not (= lambda!278370 lambda!278369))))

(assert (=> b!5380403 true))

(assert (=> b!5380403 true))

(assert (=> b!5380403 true))

(declare-fun bs!1245741 () Bool)

(declare-fun b!5380388 () Bool)

(assert (= bs!1245741 (and b!5380388 b!5380404)))

(declare-datatypes ((List!61614 0))(
  ( (Nil!61490) (Cons!61490 (h!67938 C!30480) (t!374837 List!61614)) )
))
(declare-fun s!2326 () List!61614)

(declare-fun lambda!278371 () Int)

(declare-datatypes ((tuple2!64608 0))(
  ( (tuple2!64609 (_1!35607 List!61614) (_2!35607 List!61614)) )
))
(declare-fun lt!2190644 () tuple2!64608)

(assert (=> bs!1245741 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) (regOne!30722 r!7292)) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278371 lambda!278366))))

(assert (=> bs!1245741 (not (= lambda!278371 lambda!278367))))

(declare-fun bs!1245742 () Bool)

(assert (= bs!1245742 (and b!5380388 b!5380403)))

(assert (=> bs!1245742 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) lt!2190664) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278371 lambda!278369))))

(assert (=> bs!1245742 (not (= lambda!278371 lambda!278370))))

(assert (=> b!5380388 true))

(assert (=> b!5380388 true))

(assert (=> b!5380388 true))

(declare-fun lambda!278372 () Int)

(assert (=> b!5380388 (not (= lambda!278372 lambda!278371))))

(assert (=> bs!1245741 (not (= lambda!278372 lambda!278366))))

(assert (=> bs!1245742 (not (= lambda!278372 lambda!278370))))

(assert (=> bs!1245742 (not (= lambda!278372 lambda!278369))))

(assert (=> bs!1245741 (not (= lambda!278372 lambda!278367))))

(assert (=> b!5380388 true))

(assert (=> b!5380388 true))

(assert (=> b!5380388 true))

(declare-fun lambda!278373 () Int)

(assert (=> b!5380388 (not (= lambda!278373 lambda!278371))))

(assert (=> bs!1245741 (not (= lambda!278373 lambda!278366))))

(assert (=> bs!1245742 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) lt!2190664) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278373 lambda!278370))))

(assert (=> bs!1245742 (not (= lambda!278373 lambda!278369))))

(assert (=> bs!1245741 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) (regOne!30722 r!7292)) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278373 lambda!278367))))

(assert (=> b!5380388 (not (= lambda!278373 lambda!278372))))

(assert (=> b!5380388 true))

(assert (=> b!5380388 true))

(assert (=> b!5380388 true))

(declare-fun tp!1491331 () Bool)

(declare-datatypes ((List!61615 0))(
  ( (Nil!61491) (Cons!61491 (h!67939 Regex!15105) (t!374838 List!61615)) )
))
(declare-datatypes ((Context!8978 0))(
  ( (Context!8979 (exprs!4989 List!61615)) )
))
(declare-fun setElem!34901 () Context!8978)

(declare-fun setRes!34901 () Bool)

(declare-fun setNonEmpty!34901 () Bool)

(declare-fun e!3337737 () Bool)

(declare-fun inv!81009 (Context!8978) Bool)

(assert (=> setNonEmpty!34901 (= setRes!34901 (and tp!1491331 (inv!81009 setElem!34901) e!3337737))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8978))

(declare-fun setRest!34901 () (InoxSet Context!8978))

(assert (=> setNonEmpty!34901 (= z!1189 ((_ map or) (store ((as const (Array Context!8978 Bool)) false) setElem!34901 true) setRest!34901))))

(declare-fun b!5380377 () Bool)

(declare-fun e!3337739 () Bool)

(declare-fun e!3337732 () Bool)

(assert (=> b!5380377 (= e!3337739 e!3337732)))

(declare-fun res!2284325 () Bool)

(assert (=> b!5380377 (=> (not res!2284325) (not e!3337732))))

(declare-fun lt!2190671 () Regex!15105)

(assert (=> b!5380377 (= res!2284325 (= r!7292 lt!2190671))))

(declare-datatypes ((List!61616 0))(
  ( (Nil!61492) (Cons!61492 (h!67940 Context!8978) (t!374839 List!61616)) )
))
(declare-fun zl!343 () List!61616)

(declare-fun unfocusZipper!847 (List!61616) Regex!15105)

(assert (=> b!5380377 (= lt!2190671 (unfocusZipper!847 zl!343))))

(declare-fun b!5380378 () Bool)

(declare-fun res!2284334 () Bool)

(assert (=> b!5380378 (=> (not res!2284334) (not e!3337739))))

(declare-fun toList!8889 ((InoxSet Context!8978)) List!61616)

(assert (=> b!5380378 (= res!2284334 (= (toList!8889 z!1189) zl!343))))

(declare-fun b!5380379 () Bool)

(declare-fun e!3337740 () Bool)

(declare-fun validRegex!6841 (Regex!15105) Bool)

(assert (=> b!5380379 (= e!3337740 (validRegex!6841 lt!2190664))))

(declare-fun b!5380380 () Bool)

(declare-fun e!3337745 () Bool)

(declare-fun e!3337731 () Bool)

(assert (=> b!5380380 (= e!3337745 e!3337731)))

(declare-fun res!2284330 () Bool)

(assert (=> b!5380380 (=> res!2284330 e!3337731)))

(declare-fun lt!2190673 () (InoxSet Context!8978))

(declare-fun lt!2190637 () (InoxSet Context!8978))

(assert (=> b!5380380 (= res!2284330 (not (= lt!2190673 lt!2190637)))))

(declare-fun lt!2190650 () Context!8978)

(declare-fun derivationStepZipperDown!553 (Regex!15105 Context!8978 C!30480) (InoxSet Context!8978))

(assert (=> b!5380380 (= lt!2190637 (derivationStepZipperDown!553 (reg!15434 (regOne!30722 r!7292)) lt!2190650 (h!67938 s!2326)))))

(declare-fun lt!2190668 () List!61615)

(assert (=> b!5380380 (= lt!2190650 (Context!8979 lt!2190668))))

(assert (=> b!5380380 (= lt!2190668 (Cons!61491 lt!2190664 (t!374838 (exprs!4989 (h!67940 zl!343)))))))

(assert (=> b!5380380 (= lt!2190664 (Star!15105 (reg!15434 (regOne!30722 r!7292))))))

(declare-fun b!5380381 () Bool)

(declare-fun e!3337734 () Bool)

(declare-fun lt!2190666 () (InoxSet Context!8978))

(declare-fun matchZipper!1349 ((InoxSet Context!8978) List!61614) Bool)

(assert (=> b!5380381 (= e!3337734 (matchZipper!1349 lt!2190666 (t!374837 s!2326)))))

(declare-fun b!5380382 () Bool)

(declare-fun res!2284333 () Bool)

(declare-fun e!3337741 () Bool)

(assert (=> b!5380382 (=> res!2284333 e!3337741)))

(declare-fun generalisedConcat!774 (List!61615) Regex!15105)

(assert (=> b!5380382 (= res!2284333 (not (= r!7292 (generalisedConcat!774 (exprs!4989 (h!67940 zl!343))))))))

(declare-fun b!5380383 () Bool)

(declare-fun e!3337742 () Bool)

(declare-fun e!3337752 () Bool)

(assert (=> b!5380383 (= e!3337742 e!3337752)))

(declare-fun res!2284340 () Bool)

(assert (=> b!5380383 (=> res!2284340 e!3337752)))

(declare-fun lt!2190662 () Bool)

(assert (=> b!5380383 (= res!2284340 (not lt!2190662))))

(declare-fun e!3337747 () Bool)

(assert (=> b!5380383 e!3337747))

(declare-fun res!2284343 () Bool)

(assert (=> b!5380383 (=> (not res!2284343) (not e!3337747))))

(declare-fun lt!2190640 () Regex!15105)

(declare-fun matchR!7290 (Regex!15105 List!61614) Bool)

(declare-fun matchRSpec!2208 (Regex!15105 List!61614) Bool)

(assert (=> b!5380383 (= res!2284343 (= (matchR!7290 lt!2190640 s!2326) (matchRSpec!2208 lt!2190640 s!2326)))))

(declare-datatypes ((Unit!153938 0))(
  ( (Unit!153939) )
))
(declare-fun lt!2190648 () Unit!153938)

(declare-fun mainMatchTheorem!2208 (Regex!15105 List!61614) Unit!153938)

(assert (=> b!5380383 (= lt!2190648 (mainMatchTheorem!2208 lt!2190640 s!2326))))

(declare-fun b!5380384 () Bool)

(declare-fun e!3337746 () Bool)

(declare-fun tp!1491329 () Bool)

(declare-fun tp!1491332 () Bool)

(assert (=> b!5380384 (= e!3337746 (and tp!1491329 tp!1491332))))

(declare-fun b!5380386 () Bool)

(declare-fun lt!2190663 () Bool)

(assert (=> b!5380386 (= e!3337747 (or (not lt!2190662) lt!2190663))))

(declare-fun b!5380387 () Bool)

(declare-fun e!3337743 () Bool)

(declare-fun tp!1491330 () Bool)

(declare-fun e!3337730 () Bool)

(assert (=> b!5380387 (= e!3337743 (and (inv!81009 (h!67940 zl!343)) e!3337730 tp!1491330))))

(declare-fun e!3337750 () Bool)

(declare-fun e!3337749 () Bool)

(assert (=> b!5380388 (= e!3337750 e!3337749)))

(declare-fun res!2284335 () Bool)

(assert (=> b!5380388 (=> res!2284335 e!3337749)))

(declare-fun lt!2190665 () List!61614)

(assert (=> b!5380388 (= res!2284335 (not (= (_1!35607 lt!2190644) lt!2190665)))))

(declare-fun lt!2190675 () tuple2!64608)

(declare-fun ++!13408 (List!61614 List!61614) List!61614)

(assert (=> b!5380388 (= lt!2190665 (++!13408 (_1!35607 lt!2190675) (_2!35607 lt!2190675)))))

(declare-datatypes ((Option!15216 0))(
  ( (None!15215) (Some!15215 (v!51244 tuple2!64608)) )
))
(declare-fun lt!2190661 () Option!15216)

(declare-fun get!21166 (Option!15216) tuple2!64608)

(assert (=> b!5380388 (= lt!2190675 (get!21166 lt!2190661))))

(declare-fun Exists!2286 (Int) Bool)

(assert (=> b!5380388 (= (Exists!2286 lambda!278371) (Exists!2286 lambda!278373))))

(declare-fun lt!2190660 () Unit!153938)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!940 (Regex!15105 Regex!15105 List!61614) Unit!153938)

(assert (=> b!5380388 (= lt!2190660 (lemmaExistCutMatchRandMatchRSpecEquivalent!940 (reg!15434 (regOne!30722 r!7292)) lt!2190664 (_1!35607 lt!2190644)))))

(assert (=> b!5380388 (= (Exists!2286 lambda!278371) (Exists!2286 lambda!278372))))

(declare-fun lt!2190672 () Unit!153938)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!370 (Regex!15105 List!61614) Unit!153938)

(assert (=> b!5380388 (= lt!2190672 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!370 (reg!15434 (regOne!30722 r!7292)) (_1!35607 lt!2190644)))))

(declare-fun isDefined!11919 (Option!15216) Bool)

(assert (=> b!5380388 (= (isDefined!11919 lt!2190661) (Exists!2286 lambda!278371))))

(declare-fun findConcatSeparation!1630 (Regex!15105 Regex!15105 List!61614 List!61614 List!61614) Option!15216)

(assert (=> b!5380388 (= lt!2190661 (findConcatSeparation!1630 (reg!15434 (regOne!30722 r!7292)) lt!2190664 Nil!61490 (_1!35607 lt!2190644) (_1!35607 lt!2190644)))))

(declare-fun lt!2190676 () Unit!153938)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1394 (Regex!15105 Regex!15105 List!61614) Unit!153938)

(assert (=> b!5380388 (= lt!2190676 (lemmaFindConcatSeparationEquivalentToExists!1394 (reg!15434 (regOne!30722 r!7292)) lt!2190664 (_1!35607 lt!2190644)))))

(assert (=> b!5380388 (matchRSpec!2208 lt!2190664 (_1!35607 lt!2190644))))

(declare-fun lt!2190679 () Unit!153938)

(assert (=> b!5380388 (= lt!2190679 (mainMatchTheorem!2208 lt!2190664 (_1!35607 lt!2190644)))))

(declare-fun b!5380389 () Bool)

(declare-fun tp_is_empty!39463 () Bool)

(assert (=> b!5380389 (= e!3337746 tp_is_empty!39463)))

(declare-fun b!5380390 () Bool)

(declare-fun res!2284321 () Bool)

(assert (=> b!5380390 (=> res!2284321 e!3337750)))

(assert (=> b!5380390 (= res!2284321 (not (matchR!7290 (regTwo!30722 r!7292) (_2!35607 lt!2190644))))))

(declare-fun b!5380391 () Bool)

(declare-fun res!2284327 () Bool)

(assert (=> b!5380391 (=> res!2284327 e!3337740)))

(assert (=> b!5380391 (= res!2284327 (not (matchR!7290 (reg!15434 (regOne!30722 r!7292)) (_1!35607 lt!2190675))))))

(declare-fun b!5380392 () Bool)

(declare-fun res!2284320 () Bool)

(declare-fun e!3337748 () Bool)

(assert (=> b!5380392 (=> res!2284320 e!3337748)))

(declare-fun isEmpty!33482 (List!61615) Bool)

(assert (=> b!5380392 (= res!2284320 (isEmpty!33482 (t!374838 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun b!5380393 () Bool)

(assert (=> b!5380393 (= e!3337732 (not e!3337741))))

(declare-fun res!2284322 () Bool)

(assert (=> b!5380393 (=> res!2284322 e!3337741)))

(get-info :version)

(assert (=> b!5380393 (= res!2284322 (not ((_ is Cons!61492) zl!343)))))

(assert (=> b!5380393 (= lt!2190662 lt!2190663)))

(assert (=> b!5380393 (= lt!2190663 (matchRSpec!2208 r!7292 s!2326))))

(assert (=> b!5380393 (= lt!2190662 (matchR!7290 r!7292 s!2326))))

(declare-fun lt!2190647 () Unit!153938)

(assert (=> b!5380393 (= lt!2190647 (mainMatchTheorem!2208 r!7292 s!2326))))

(declare-fun b!5380394 () Bool)

(declare-fun res!2284332 () Bool)

(assert (=> b!5380394 (=> res!2284332 e!3337741)))

(declare-fun generalisedUnion!1034 (List!61615) Regex!15105)

(declare-fun unfocusZipperList!547 (List!61616) List!61615)

(assert (=> b!5380394 (= res!2284332 (not (= r!7292 (generalisedUnion!1034 (unfocusZipperList!547 zl!343)))))))

(declare-fun b!5380395 () Bool)

(declare-fun res!2284329 () Bool)

(declare-fun e!3337744 () Bool)

(assert (=> b!5380395 (=> res!2284329 e!3337744)))

(assert (=> b!5380395 (= res!2284329 (not (= lt!2190671 r!7292)))))

(declare-fun b!5380396 () Bool)

(declare-fun e!3337733 () Bool)

(declare-fun tp!1491325 () Bool)

(assert (=> b!5380396 (= e!3337733 (and tp_is_empty!39463 tp!1491325))))

(declare-fun b!5380397 () Bool)

(declare-fun e!3337735 () Bool)

(declare-fun nullable!5274 (Regex!15105) Bool)

(assert (=> b!5380397 (= e!3337735 (nullable!5274 (regOne!30722 (regOne!30722 r!7292))))))

(declare-fun b!5380398 () Bool)

(declare-fun e!3337736 () Bool)

(assert (=> b!5380398 (= e!3337744 e!3337736)))

(declare-fun res!2284319 () Bool)

(assert (=> b!5380398 (=> res!2284319 e!3337736)))

(declare-fun lt!2190656 () Regex!15105)

(assert (=> b!5380398 (= res!2284319 (not (= r!7292 lt!2190656)))))

(assert (=> b!5380398 (= lt!2190656 (Concat!23950 lt!2190664 (regTwo!30722 r!7292)))))

(declare-fun b!5380399 () Bool)

(assert (=> b!5380399 (= e!3337731 e!3337744)))

(declare-fun res!2284349 () Bool)

(assert (=> b!5380399 (=> res!2284349 e!3337744)))

(declare-fun lt!2190655 () (InoxSet Context!8978))

(assert (=> b!5380399 (= res!2284349 (not (= lt!2190655 lt!2190637)))))

(declare-fun lt!2190651 () Context!8978)

(declare-fun lt!2190654 () (InoxSet Context!8978))

(declare-fun lambda!278368 () Int)

(declare-fun flatMap!832 ((InoxSet Context!8978) Int) (InoxSet Context!8978))

(declare-fun derivationStepZipperUp!477 (Context!8978 C!30480) (InoxSet Context!8978))

(assert (=> b!5380399 (= (flatMap!832 lt!2190654 lambda!278368) (derivationStepZipperUp!477 lt!2190651 (h!67938 s!2326)))))

(declare-fun lt!2190657 () Unit!153938)

(declare-fun lemmaFlatMapOnSingletonSet!364 ((InoxSet Context!8978) Context!8978 Int) Unit!153938)

(assert (=> b!5380399 (= lt!2190657 (lemmaFlatMapOnSingletonSet!364 lt!2190654 lt!2190651 lambda!278368))))

(declare-fun lt!2190670 () (InoxSet Context!8978))

(assert (=> b!5380399 (= lt!2190670 (derivationStepZipperUp!477 lt!2190651 (h!67938 s!2326)))))

(declare-fun derivationStepZipper!1344 ((InoxSet Context!8978) C!30480) (InoxSet Context!8978))

(assert (=> b!5380399 (= lt!2190655 (derivationStepZipper!1344 lt!2190654 (h!67938 s!2326)))))

(assert (=> b!5380399 (= lt!2190654 (store ((as const (Array Context!8978 Bool)) false) lt!2190651 true))))

(assert (=> b!5380399 (= lt!2190651 (Context!8979 (Cons!61491 (reg!15434 (regOne!30722 r!7292)) lt!2190668)))))

(declare-fun b!5380400 () Bool)

(declare-fun res!2284345 () Bool)

(assert (=> b!5380400 (=> res!2284345 e!3337750)))

(declare-fun isEmpty!33483 (List!61614) Bool)

(assert (=> b!5380400 (= res!2284345 (isEmpty!33483 (_1!35607 lt!2190644)))))

(declare-fun b!5380401 () Bool)

(declare-fun res!2284337 () Bool)

(assert (=> b!5380401 (=> res!2284337 e!3337745)))

(assert (=> b!5380401 (= res!2284337 e!3337735)))

(declare-fun res!2284317 () Bool)

(assert (=> b!5380401 (=> (not res!2284317) (not e!3337735))))

(assert (=> b!5380401 (= res!2284317 ((_ is Concat!23950) (regOne!30722 r!7292)))))

(declare-fun setIsEmpty!34901 () Bool)

(assert (=> setIsEmpty!34901 setRes!34901))

(declare-fun b!5380402 () Bool)

(declare-fun tp!1491327 () Bool)

(assert (=> b!5380402 (= e!3337730 tp!1491327)))

(assert (=> b!5380403 (= e!3337752 e!3337750)))

(declare-fun res!2284342 () Bool)

(assert (=> b!5380403 (=> res!2284342 e!3337750)))

(assert (=> b!5380403 (= res!2284342 (not (= (++!13408 (_1!35607 lt!2190644) (_2!35607 lt!2190644)) s!2326)))))

(declare-fun lt!2190639 () Option!15216)

(assert (=> b!5380403 (= lt!2190644 (get!21166 lt!2190639))))

(assert (=> b!5380403 (= (Exists!2286 lambda!278369) (Exists!2286 lambda!278370))))

(declare-fun lt!2190680 () Unit!153938)

(assert (=> b!5380403 (= lt!2190680 (lemmaExistCutMatchRandMatchRSpecEquivalent!940 lt!2190664 (regTwo!30722 r!7292) s!2326))))

(assert (=> b!5380403 (= (isDefined!11919 lt!2190639) (Exists!2286 lambda!278369))))

(assert (=> b!5380403 (= lt!2190639 (findConcatSeparation!1630 lt!2190664 (regTwo!30722 r!7292) Nil!61490 s!2326 s!2326))))

(declare-fun lt!2190641 () Unit!153938)

(assert (=> b!5380403 (= lt!2190641 (lemmaFindConcatSeparationEquivalentToExists!1394 lt!2190664 (regTwo!30722 r!7292) s!2326))))

(assert (=> b!5380404 (= e!3337741 e!3337748)))

(declare-fun res!2284348 () Bool)

(assert (=> b!5380404 (=> res!2284348 e!3337748)))

(declare-fun lt!2190659 () Bool)

(assert (=> b!5380404 (= res!2284348 (or (not (= lt!2190662 lt!2190659)) ((_ is Nil!61490) s!2326)))))

(assert (=> b!5380404 (= (Exists!2286 lambda!278366) (Exists!2286 lambda!278367))))

(declare-fun lt!2190642 () Unit!153938)

(assert (=> b!5380404 (= lt!2190642 (lemmaExistCutMatchRandMatchRSpecEquivalent!940 (regOne!30722 r!7292) (regTwo!30722 r!7292) s!2326))))

(assert (=> b!5380404 (= lt!2190659 (Exists!2286 lambda!278366))))

(assert (=> b!5380404 (= lt!2190659 (isDefined!11919 (findConcatSeparation!1630 (regOne!30722 r!7292) (regTwo!30722 r!7292) Nil!61490 s!2326 s!2326)))))

(declare-fun lt!2190678 () Unit!153938)

(assert (=> b!5380404 (= lt!2190678 (lemmaFindConcatSeparationEquivalentToExists!1394 (regOne!30722 r!7292) (regTwo!30722 r!7292) s!2326))))

(declare-fun b!5380405 () Bool)

(declare-fun res!2284341 () Bool)

(assert (=> b!5380405 (=> res!2284341 e!3337741)))

(assert (=> b!5380405 (= res!2284341 (or ((_ is EmptyExpr!15105) r!7292) ((_ is EmptyLang!15105) r!7292) ((_ is ElementMatch!15105) r!7292) ((_ is Union!15105) r!7292) (not ((_ is Concat!23950) r!7292))))))

(declare-fun b!5380406 () Bool)

(declare-fun res!2284326 () Bool)

(assert (=> b!5380406 (=> res!2284326 e!3337741)))

(assert (=> b!5380406 (= res!2284326 (not ((_ is Cons!61491) (exprs!4989 (h!67940 zl!343)))))))

(declare-fun b!5380407 () Bool)

(declare-fun e!3337751 () Unit!153938)

(declare-fun Unit!153940 () Unit!153938)

(assert (=> b!5380407 (= e!3337751 Unit!153940)))

(declare-fun b!5380408 () Bool)

(declare-fun e!3337738 () Bool)

(assert (=> b!5380408 (= e!3337738 e!3337742)))

(declare-fun res!2284323 () Bool)

(assert (=> b!5380408 (=> res!2284323 e!3337742)))

(declare-fun lt!2190634 () Context!8978)

(assert (=> b!5380408 (= res!2284323 (not (= (unfocusZipper!847 (Cons!61492 lt!2190634 Nil!61492)) (reg!15434 (regOne!30722 r!7292)))))))

(declare-fun lt!2190636 () (InoxSet Context!8978))

(assert (=> b!5380408 (= (flatMap!832 lt!2190636 lambda!278368) (derivationStepZipperUp!477 lt!2190650 (h!67938 s!2326)))))

(declare-fun lt!2190638 () Unit!153938)

(assert (=> b!5380408 (= lt!2190638 (lemmaFlatMapOnSingletonSet!364 lt!2190636 lt!2190650 lambda!278368))))

(declare-fun lt!2190649 () (InoxSet Context!8978))

(assert (=> b!5380408 (= (flatMap!832 lt!2190649 lambda!278368) (derivationStepZipperUp!477 lt!2190634 (h!67938 s!2326)))))

(declare-fun lt!2190643 () Unit!153938)

(assert (=> b!5380408 (= lt!2190643 (lemmaFlatMapOnSingletonSet!364 lt!2190649 lt!2190634 lambda!278368))))

(declare-fun lt!2190653 () (InoxSet Context!8978))

(assert (=> b!5380408 (= lt!2190653 (derivationStepZipperUp!477 lt!2190650 (h!67938 s!2326)))))

(declare-fun lt!2190635 () (InoxSet Context!8978))

(assert (=> b!5380408 (= lt!2190635 (derivationStepZipperUp!477 lt!2190634 (h!67938 s!2326)))))

(assert (=> b!5380408 (= lt!2190636 (store ((as const (Array Context!8978 Bool)) false) lt!2190650 true))))

(assert (=> b!5380408 (= lt!2190649 (store ((as const (Array Context!8978 Bool)) false) lt!2190634 true))))

(assert (=> b!5380408 (= lt!2190634 (Context!8979 (Cons!61491 (reg!15434 (regOne!30722 r!7292)) Nil!61491)))))

(declare-fun b!5380409 () Bool)

(declare-fun tp!1491333 () Bool)

(assert (=> b!5380409 (= e!3337737 tp!1491333)))

(declare-fun b!5380410 () Bool)

(declare-fun tp!1491324 () Bool)

(assert (=> b!5380410 (= e!3337746 tp!1491324)))

(declare-fun b!5380411 () Bool)

(assert (=> b!5380411 (= e!3337736 e!3337738)))

(declare-fun res!2284324 () Bool)

(assert (=> b!5380411 (=> res!2284324 e!3337738)))

(assert (=> b!5380411 (= res!2284324 (not (= (unfocusZipper!847 (Cons!61492 lt!2190651 Nil!61492)) lt!2190640)))))

(assert (=> b!5380411 (= lt!2190640 (Concat!23950 (reg!15434 (regOne!30722 r!7292)) lt!2190656))))

(assert (=> b!5380412 (= e!3337748 e!3337745)))

(declare-fun res!2284338 () Bool)

(assert (=> b!5380412 (=> res!2284338 e!3337745)))

(assert (=> b!5380412 (= res!2284338 (or (and ((_ is ElementMatch!15105) (regOne!30722 r!7292)) (= (c!937749 (regOne!30722 r!7292)) (h!67938 s!2326))) ((_ is Union!15105) (regOne!30722 r!7292))))))

(declare-fun lt!2190674 () Unit!153938)

(assert (=> b!5380412 (= lt!2190674 e!3337751)))

(declare-fun c!937748 () Bool)

(assert (=> b!5380412 (= c!937748 (nullable!5274 (h!67939 (exprs!4989 (h!67940 zl!343)))))))

(assert (=> b!5380412 (= (flatMap!832 z!1189 lambda!278368) (derivationStepZipperUp!477 (h!67940 zl!343) (h!67938 s!2326)))))

(declare-fun lt!2190667 () Unit!153938)

(assert (=> b!5380412 (= lt!2190667 (lemmaFlatMapOnSingletonSet!364 z!1189 (h!67940 zl!343) lambda!278368))))

(declare-fun lt!2190677 () Context!8978)

(assert (=> b!5380412 (= lt!2190666 (derivationStepZipperUp!477 lt!2190677 (h!67938 s!2326)))))

(assert (=> b!5380412 (= lt!2190673 (derivationStepZipperDown!553 (h!67939 (exprs!4989 (h!67940 zl!343))) lt!2190677 (h!67938 s!2326)))))

(assert (=> b!5380412 (= lt!2190677 (Context!8979 (t!374838 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun lt!2190669 () (InoxSet Context!8978))

(assert (=> b!5380412 (= lt!2190669 (derivationStepZipperUp!477 (Context!8979 (Cons!61491 (h!67939 (exprs!4989 (h!67940 zl!343))) (t!374838 (exprs!4989 (h!67940 zl!343))))) (h!67938 s!2326)))))

(declare-fun b!5380413 () Bool)

(declare-fun Unit!153941 () Unit!153938)

(assert (=> b!5380413 (= e!3337751 Unit!153941)))

(declare-fun lt!2190646 () Unit!153938)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!342 ((InoxSet Context!8978) (InoxSet Context!8978) List!61614) Unit!153938)

(assert (=> b!5380413 (= lt!2190646 (lemmaZipperConcatMatchesSameAsBothZippers!342 lt!2190673 lt!2190666 (t!374837 s!2326)))))

(declare-fun res!2284331 () Bool)

(assert (=> b!5380413 (= res!2284331 (matchZipper!1349 lt!2190673 (t!374837 s!2326)))))

(assert (=> b!5380413 (=> res!2284331 e!3337734)))

(assert (=> b!5380413 (= (matchZipper!1349 ((_ map or) lt!2190673 lt!2190666) (t!374837 s!2326)) e!3337734)))

(declare-fun res!2284336 () Bool)

(assert (=> start!565858 (=> (not res!2284336) (not e!3337739))))

(assert (=> start!565858 (= res!2284336 (validRegex!6841 r!7292))))

(assert (=> start!565858 e!3337739))

(assert (=> start!565858 e!3337746))

(declare-fun condSetEmpty!34901 () Bool)

(assert (=> start!565858 (= condSetEmpty!34901 (= z!1189 ((as const (Array Context!8978 Bool)) false)))))

(assert (=> start!565858 setRes!34901))

(assert (=> start!565858 e!3337743))

(assert (=> start!565858 e!3337733))

(declare-fun b!5380385 () Bool)

(declare-fun tp!1491326 () Bool)

(declare-fun tp!1491328 () Bool)

(assert (=> b!5380385 (= e!3337746 (and tp!1491326 tp!1491328))))

(declare-fun b!5380414 () Bool)

(declare-fun res!2284346 () Bool)

(assert (=> b!5380414 (=> res!2284346 e!3337741)))

(declare-fun isEmpty!33484 (List!61616) Bool)

(assert (=> b!5380414 (= res!2284346 (not (isEmpty!33484 (t!374839 zl!343))))))

(declare-fun b!5380415 () Bool)

(declare-fun res!2284328 () Bool)

(assert (=> b!5380415 (=> res!2284328 e!3337745)))

(assert (=> b!5380415 (= res!2284328 (or ((_ is Concat!23950) (regOne!30722 r!7292)) (not ((_ is Star!15105) (regOne!30722 r!7292)))))))

(declare-fun b!5380416 () Bool)

(declare-fun res!2284347 () Bool)

(assert (=> b!5380416 (=> res!2284347 e!3337744)))

(assert (=> b!5380416 (= res!2284347 (not (= (matchZipper!1349 lt!2190654 s!2326) (matchZipper!1349 lt!2190655 (t!374837 s!2326)))))))

(declare-fun b!5380417 () Bool)

(declare-fun res!2284344 () Bool)

(assert (=> b!5380417 (=> res!2284344 e!3337750)))

(assert (=> b!5380417 (= res!2284344 (not (matchR!7290 lt!2190664 (_1!35607 lt!2190644))))))

(declare-fun b!5380418 () Bool)

(assert (=> b!5380418 (= e!3337749 e!3337740)))

(declare-fun res!2284318 () Bool)

(assert (=> b!5380418 (=> res!2284318 e!3337740)))

(declare-fun lt!2190652 () List!61614)

(assert (=> b!5380418 (= res!2284318 (not (= lt!2190652 s!2326)))))

(declare-fun lt!2190645 () List!61614)

(assert (=> b!5380418 (= lt!2190652 (++!13408 (_1!35607 lt!2190675) lt!2190645))))

(assert (=> b!5380418 (= lt!2190652 (++!13408 lt!2190665 (_2!35607 lt!2190644)))))

(assert (=> b!5380418 (= lt!2190645 (++!13408 (_2!35607 lt!2190675) (_2!35607 lt!2190644)))))

(declare-fun lt!2190658 () Unit!153938)

(declare-fun lemmaConcatAssociativity!2802 (List!61614 List!61614 List!61614) Unit!153938)

(assert (=> b!5380418 (= lt!2190658 (lemmaConcatAssociativity!2802 (_1!35607 lt!2190675) (_2!35607 lt!2190675) (_2!35607 lt!2190644)))))

(declare-fun b!5380419 () Bool)

(declare-fun res!2284339 () Bool)

(assert (=> b!5380419 (=> res!2284339 e!3337742)))

(assert (=> b!5380419 (= res!2284339 (not (= (unfocusZipper!847 (Cons!61492 lt!2190650 Nil!61492)) lt!2190656)))))

(assert (= (and start!565858 res!2284336) b!5380378))

(assert (= (and b!5380378 res!2284334) b!5380377))

(assert (= (and b!5380377 res!2284325) b!5380393))

(assert (= (and b!5380393 (not res!2284322)) b!5380414))

(assert (= (and b!5380414 (not res!2284346)) b!5380382))

(assert (= (and b!5380382 (not res!2284333)) b!5380406))

(assert (= (and b!5380406 (not res!2284326)) b!5380394))

(assert (= (and b!5380394 (not res!2284332)) b!5380405))

(assert (= (and b!5380405 (not res!2284341)) b!5380404))

(assert (= (and b!5380404 (not res!2284348)) b!5380392))

(assert (= (and b!5380392 (not res!2284320)) b!5380412))

(assert (= (and b!5380412 c!937748) b!5380413))

(assert (= (and b!5380412 (not c!937748)) b!5380407))

(assert (= (and b!5380413 (not res!2284331)) b!5380381))

(assert (= (and b!5380412 (not res!2284338)) b!5380401))

(assert (= (and b!5380401 res!2284317) b!5380397))

(assert (= (and b!5380401 (not res!2284337)) b!5380415))

(assert (= (and b!5380415 (not res!2284328)) b!5380380))

(assert (= (and b!5380380 (not res!2284330)) b!5380399))

(assert (= (and b!5380399 (not res!2284349)) b!5380416))

(assert (= (and b!5380416 (not res!2284347)) b!5380395))

(assert (= (and b!5380395 (not res!2284329)) b!5380398))

(assert (= (and b!5380398 (not res!2284319)) b!5380411))

(assert (= (and b!5380411 (not res!2284324)) b!5380408))

(assert (= (and b!5380408 (not res!2284323)) b!5380419))

(assert (= (and b!5380419 (not res!2284339)) b!5380383))

(assert (= (and b!5380383 res!2284343) b!5380386))

(assert (= (and b!5380383 (not res!2284340)) b!5380403))

(assert (= (and b!5380403 (not res!2284342)) b!5380417))

(assert (= (and b!5380417 (not res!2284344)) b!5380390))

(assert (= (and b!5380390 (not res!2284321)) b!5380400))

(assert (= (and b!5380400 (not res!2284345)) b!5380388))

(assert (= (and b!5380388 (not res!2284335)) b!5380418))

(assert (= (and b!5380418 (not res!2284318)) b!5380391))

(assert (= (and b!5380391 (not res!2284327)) b!5380379))

(assert (= (and start!565858 ((_ is ElementMatch!15105) r!7292)) b!5380389))

(assert (= (and start!565858 ((_ is Concat!23950) r!7292)) b!5380384))

(assert (= (and start!565858 ((_ is Star!15105) r!7292)) b!5380410))

(assert (= (and start!565858 ((_ is Union!15105) r!7292)) b!5380385))

(assert (= (and start!565858 condSetEmpty!34901) setIsEmpty!34901))

(assert (= (and start!565858 (not condSetEmpty!34901)) setNonEmpty!34901))

(assert (= setNonEmpty!34901 b!5380409))

(assert (= b!5380387 b!5380402))

(assert (= (and start!565858 ((_ is Cons!61492) zl!343)) b!5380387))

(assert (= (and start!565858 ((_ is Cons!61490) s!2326)) b!5380396))

(declare-fun m!6406356 () Bool)

(assert (=> b!5380377 m!6406356))

(declare-fun m!6406358 () Bool)

(assert (=> b!5380408 m!6406358))

(declare-fun m!6406360 () Bool)

(assert (=> b!5380408 m!6406360))

(declare-fun m!6406362 () Bool)

(assert (=> b!5380408 m!6406362))

(declare-fun m!6406364 () Bool)

(assert (=> b!5380408 m!6406364))

(declare-fun m!6406366 () Bool)

(assert (=> b!5380408 m!6406366))

(declare-fun m!6406368 () Bool)

(assert (=> b!5380408 m!6406368))

(declare-fun m!6406370 () Bool)

(assert (=> b!5380408 m!6406370))

(declare-fun m!6406372 () Bool)

(assert (=> b!5380408 m!6406372))

(declare-fun m!6406374 () Bool)

(assert (=> b!5380408 m!6406374))

(declare-fun m!6406376 () Bool)

(assert (=> b!5380380 m!6406376))

(declare-fun m!6406378 () Bool)

(assert (=> b!5380416 m!6406378))

(declare-fun m!6406380 () Bool)

(assert (=> b!5380416 m!6406380))

(declare-fun m!6406382 () Bool)

(assert (=> b!5380417 m!6406382))

(declare-fun m!6406384 () Bool)

(assert (=> b!5380404 m!6406384))

(declare-fun m!6406386 () Bool)

(assert (=> b!5380404 m!6406386))

(declare-fun m!6406388 () Bool)

(assert (=> b!5380404 m!6406388))

(declare-fun m!6406390 () Bool)

(assert (=> b!5380404 m!6406390))

(assert (=> b!5380404 m!6406384))

(declare-fun m!6406392 () Bool)

(assert (=> b!5380404 m!6406392))

(assert (=> b!5380404 m!6406386))

(declare-fun m!6406394 () Bool)

(assert (=> b!5380404 m!6406394))

(declare-fun m!6406396 () Bool)

(assert (=> b!5380394 m!6406396))

(assert (=> b!5380394 m!6406396))

(declare-fun m!6406398 () Bool)

(assert (=> b!5380394 m!6406398))

(declare-fun m!6406400 () Bool)

(assert (=> b!5380388 m!6406400))

(declare-fun m!6406402 () Bool)

(assert (=> b!5380388 m!6406402))

(declare-fun m!6406404 () Bool)

(assert (=> b!5380388 m!6406404))

(assert (=> b!5380388 m!6406404))

(declare-fun m!6406406 () Bool)

(assert (=> b!5380388 m!6406406))

(declare-fun m!6406408 () Bool)

(assert (=> b!5380388 m!6406408))

(declare-fun m!6406410 () Bool)

(assert (=> b!5380388 m!6406410))

(declare-fun m!6406412 () Bool)

(assert (=> b!5380388 m!6406412))

(assert (=> b!5380388 m!6406404))

(declare-fun m!6406414 () Bool)

(assert (=> b!5380388 m!6406414))

(declare-fun m!6406416 () Bool)

(assert (=> b!5380388 m!6406416))

(declare-fun m!6406418 () Bool)

(assert (=> b!5380388 m!6406418))

(declare-fun m!6406420 () Bool)

(assert (=> b!5380388 m!6406420))

(declare-fun m!6406422 () Bool)

(assert (=> b!5380388 m!6406422))

(declare-fun m!6406424 () Bool)

(assert (=> b!5380381 m!6406424))

(declare-fun m!6406426 () Bool)

(assert (=> b!5380391 m!6406426))

(declare-fun m!6406428 () Bool)

(assert (=> start!565858 m!6406428))

(declare-fun m!6406430 () Bool)

(assert (=> b!5380393 m!6406430))

(declare-fun m!6406432 () Bool)

(assert (=> b!5380393 m!6406432))

(declare-fun m!6406434 () Bool)

(assert (=> b!5380393 m!6406434))

(declare-fun m!6406436 () Bool)

(assert (=> b!5380411 m!6406436))

(declare-fun m!6406438 () Bool)

(assert (=> b!5380382 m!6406438))

(declare-fun m!6406440 () Bool)

(assert (=> b!5380379 m!6406440))

(declare-fun m!6406442 () Bool)

(assert (=> b!5380383 m!6406442))

(declare-fun m!6406444 () Bool)

(assert (=> b!5380383 m!6406444))

(declare-fun m!6406446 () Bool)

(assert (=> b!5380383 m!6406446))

(declare-fun m!6406448 () Bool)

(assert (=> b!5380414 m!6406448))

(declare-fun m!6406450 () Bool)

(assert (=> b!5380413 m!6406450))

(declare-fun m!6406452 () Bool)

(assert (=> b!5380413 m!6406452))

(declare-fun m!6406454 () Bool)

(assert (=> b!5380413 m!6406454))

(declare-fun m!6406456 () Bool)

(assert (=> b!5380418 m!6406456))

(declare-fun m!6406458 () Bool)

(assert (=> b!5380418 m!6406458))

(declare-fun m!6406460 () Bool)

(assert (=> b!5380418 m!6406460))

(declare-fun m!6406462 () Bool)

(assert (=> b!5380418 m!6406462))

(declare-fun m!6406464 () Bool)

(assert (=> b!5380400 m!6406464))

(declare-fun m!6406466 () Bool)

(assert (=> b!5380392 m!6406466))

(declare-fun m!6406468 () Bool)

(assert (=> b!5380390 m!6406468))

(declare-fun m!6406470 () Bool)

(assert (=> b!5380378 m!6406470))

(declare-fun m!6406472 () Bool)

(assert (=> b!5380397 m!6406472))

(declare-fun m!6406474 () Bool)

(assert (=> b!5380419 m!6406474))

(declare-fun m!6406476 () Bool)

(assert (=> b!5380387 m!6406476))

(declare-fun m!6406478 () Bool)

(assert (=> b!5380412 m!6406478))

(declare-fun m!6406480 () Bool)

(assert (=> b!5380412 m!6406480))

(declare-fun m!6406482 () Bool)

(assert (=> b!5380412 m!6406482))

(declare-fun m!6406484 () Bool)

(assert (=> b!5380412 m!6406484))

(declare-fun m!6406486 () Bool)

(assert (=> b!5380412 m!6406486))

(declare-fun m!6406488 () Bool)

(assert (=> b!5380412 m!6406488))

(declare-fun m!6406490 () Bool)

(assert (=> b!5380412 m!6406490))

(declare-fun m!6406492 () Bool)

(assert (=> b!5380399 m!6406492))

(declare-fun m!6406494 () Bool)

(assert (=> b!5380399 m!6406494))

(declare-fun m!6406496 () Bool)

(assert (=> b!5380399 m!6406496))

(declare-fun m!6406498 () Bool)

(assert (=> b!5380399 m!6406498))

(declare-fun m!6406500 () Bool)

(assert (=> b!5380399 m!6406500))

(declare-fun m!6406502 () Bool)

(assert (=> b!5380403 m!6406502))

(declare-fun m!6406504 () Bool)

(assert (=> b!5380403 m!6406504))

(declare-fun m!6406506 () Bool)

(assert (=> b!5380403 m!6406506))

(declare-fun m!6406508 () Bool)

(assert (=> b!5380403 m!6406508))

(declare-fun m!6406510 () Bool)

(assert (=> b!5380403 m!6406510))

(declare-fun m!6406512 () Bool)

(assert (=> b!5380403 m!6406512))

(declare-fun m!6406514 () Bool)

(assert (=> b!5380403 m!6406514))

(declare-fun m!6406516 () Bool)

(assert (=> b!5380403 m!6406516))

(assert (=> b!5380403 m!6406512))

(declare-fun m!6406518 () Bool)

(assert (=> setNonEmpty!34901 m!6406518))

(check-sat (not b!5380382) (not b!5380391) (not b!5380381) (not b!5380377) (not b!5380409) (not b!5380399) (not start!565858) (not b!5380384) (not b!5380412) (not b!5380378) (not b!5380387) (not b!5380403) (not b!5380396) (not b!5380390) (not b!5380419) (not b!5380418) (not b!5380380) (not b!5380417) (not b!5380379) (not b!5380408) tp_is_empty!39463 (not b!5380404) (not b!5380400) (not b!5380413) (not b!5380392) (not b!5380385) (not b!5380383) (not b!5380393) (not b!5380402) (not b!5380388) (not b!5380411) (not b!5380414) (not b!5380394) (not b!5380416) (not b!5380410) (not b!5380397) (not setNonEmpty!34901))
(check-sat)
(get-model)

(declare-fun b!5380662 () Bool)

(declare-fun res!2284442 () Bool)

(declare-fun e!3337883 () Bool)

(assert (=> b!5380662 (=> (not res!2284442) (not e!3337883))))

(declare-fun lt!2190731 () Option!15216)

(assert (=> b!5380662 (= res!2284442 (matchR!7290 (reg!15434 (regOne!30722 r!7292)) (_1!35607 (get!21166 lt!2190731))))))

(declare-fun b!5380663 () Bool)

(declare-fun e!3337882 () Option!15216)

(declare-fun e!3337884 () Option!15216)

(assert (=> b!5380663 (= e!3337882 e!3337884)))

(declare-fun c!937823 () Bool)

(assert (=> b!5380663 (= c!937823 ((_ is Nil!61490) (_1!35607 lt!2190644)))))

(declare-fun b!5380664 () Bool)

(declare-fun e!3337885 () Bool)

(assert (=> b!5380664 (= e!3337885 (matchR!7290 lt!2190664 (_1!35607 lt!2190644)))))

(declare-fun b!5380665 () Bool)

(declare-fun res!2284444 () Bool)

(assert (=> b!5380665 (=> (not res!2284444) (not e!3337883))))

(assert (=> b!5380665 (= res!2284444 (matchR!7290 lt!2190664 (_2!35607 (get!21166 lt!2190731))))))

(declare-fun b!5380666 () Bool)

(declare-fun e!3337886 () Bool)

(assert (=> b!5380666 (= e!3337886 (not (isDefined!11919 lt!2190731)))))

(declare-fun b!5380667 () Bool)

(assert (=> b!5380667 (= e!3337883 (= (++!13408 (_1!35607 (get!21166 lt!2190731)) (_2!35607 (get!21166 lt!2190731))) (_1!35607 lt!2190644)))))

(declare-fun d!1721942 () Bool)

(assert (=> d!1721942 e!3337886))

(declare-fun res!2284440 () Bool)

(assert (=> d!1721942 (=> res!2284440 e!3337886)))

(assert (=> d!1721942 (= res!2284440 e!3337883)))

(declare-fun res!2284443 () Bool)

(assert (=> d!1721942 (=> (not res!2284443) (not e!3337883))))

(assert (=> d!1721942 (= res!2284443 (isDefined!11919 lt!2190731))))

(assert (=> d!1721942 (= lt!2190731 e!3337882)))

(declare-fun c!937822 () Bool)

(assert (=> d!1721942 (= c!937822 e!3337885)))

(declare-fun res!2284441 () Bool)

(assert (=> d!1721942 (=> (not res!2284441) (not e!3337885))))

(assert (=> d!1721942 (= res!2284441 (matchR!7290 (reg!15434 (regOne!30722 r!7292)) Nil!61490))))

(assert (=> d!1721942 (validRegex!6841 (reg!15434 (regOne!30722 r!7292)))))

(assert (=> d!1721942 (= (findConcatSeparation!1630 (reg!15434 (regOne!30722 r!7292)) lt!2190664 Nil!61490 (_1!35607 lt!2190644) (_1!35607 lt!2190644)) lt!2190731)))

(declare-fun b!5380668 () Bool)

(assert (=> b!5380668 (= e!3337884 None!15215)))

(declare-fun b!5380669 () Bool)

(declare-fun lt!2190730 () Unit!153938)

(declare-fun lt!2190729 () Unit!153938)

(assert (=> b!5380669 (= lt!2190730 lt!2190729)))

(assert (=> b!5380669 (= (++!13408 (++!13408 Nil!61490 (Cons!61490 (h!67938 (_1!35607 lt!2190644)) Nil!61490)) (t!374837 (_1!35607 lt!2190644))) (_1!35607 lt!2190644))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1809 (List!61614 C!30480 List!61614 List!61614) Unit!153938)

(assert (=> b!5380669 (= lt!2190729 (lemmaMoveElementToOtherListKeepsConcatEq!1809 Nil!61490 (h!67938 (_1!35607 lt!2190644)) (t!374837 (_1!35607 lt!2190644)) (_1!35607 lt!2190644)))))

(assert (=> b!5380669 (= e!3337884 (findConcatSeparation!1630 (reg!15434 (regOne!30722 r!7292)) lt!2190664 (++!13408 Nil!61490 (Cons!61490 (h!67938 (_1!35607 lt!2190644)) Nil!61490)) (t!374837 (_1!35607 lt!2190644)) (_1!35607 lt!2190644)))))

(declare-fun b!5380670 () Bool)

(assert (=> b!5380670 (= e!3337882 (Some!15215 (tuple2!64609 Nil!61490 (_1!35607 lt!2190644))))))

(assert (= (and d!1721942 res!2284441) b!5380664))

(assert (= (and d!1721942 c!937822) b!5380670))

(assert (= (and d!1721942 (not c!937822)) b!5380663))

(assert (= (and b!5380663 c!937823) b!5380668))

(assert (= (and b!5380663 (not c!937823)) b!5380669))

(assert (= (and d!1721942 res!2284443) b!5380662))

(assert (= (and b!5380662 res!2284442) b!5380665))

(assert (= (and b!5380665 res!2284444) b!5380667))

(assert (= (and d!1721942 (not res!2284440)) b!5380666))

(declare-fun m!6406752 () Bool)

(assert (=> b!5380665 m!6406752))

(declare-fun m!6406754 () Bool)

(assert (=> b!5380665 m!6406754))

(assert (=> b!5380664 m!6406382))

(declare-fun m!6406756 () Bool)

(assert (=> d!1721942 m!6406756))

(declare-fun m!6406758 () Bool)

(assert (=> d!1721942 m!6406758))

(declare-fun m!6406760 () Bool)

(assert (=> d!1721942 m!6406760))

(assert (=> b!5380667 m!6406752))

(declare-fun m!6406762 () Bool)

(assert (=> b!5380667 m!6406762))

(assert (=> b!5380666 m!6406756))

(assert (=> b!5380662 m!6406752))

(declare-fun m!6406764 () Bool)

(assert (=> b!5380662 m!6406764))

(declare-fun m!6406766 () Bool)

(assert (=> b!5380669 m!6406766))

(assert (=> b!5380669 m!6406766))

(declare-fun m!6406768 () Bool)

(assert (=> b!5380669 m!6406768))

(declare-fun m!6406770 () Bool)

(assert (=> b!5380669 m!6406770))

(assert (=> b!5380669 m!6406766))

(declare-fun m!6406772 () Bool)

(assert (=> b!5380669 m!6406772))

(assert (=> b!5380388 d!1721942))

(declare-fun d!1721992 () Bool)

(assert (=> d!1721992 (= (get!21166 lt!2190661) (v!51244 lt!2190661))))

(assert (=> b!5380388 d!1721992))

(declare-fun d!1721994 () Bool)

(declare-fun choose!40450 (Int) Bool)

(assert (=> d!1721994 (= (Exists!2286 lambda!278371) (choose!40450 lambda!278371))))

(declare-fun bs!1245773 () Bool)

(assert (= bs!1245773 d!1721994))

(declare-fun m!6406774 () Bool)

(assert (=> bs!1245773 m!6406774))

(assert (=> b!5380388 d!1721994))

(declare-fun d!1721996 () Bool)

(assert (=> d!1721996 (= (Exists!2286 lambda!278373) (choose!40450 lambda!278373))))

(declare-fun bs!1245774 () Bool)

(assert (= bs!1245774 d!1721996))

(declare-fun m!6406776 () Bool)

(assert (=> bs!1245774 m!6406776))

(assert (=> b!5380388 d!1721996))

(declare-fun b!5380749 () Bool)

(declare-fun e!3337939 () List!61614)

(assert (=> b!5380749 (= e!3337939 (Cons!61490 (h!67938 (_1!35607 lt!2190675)) (++!13408 (t!374837 (_1!35607 lt!2190675)) (_2!35607 lt!2190675))))))

(declare-fun b!5380748 () Bool)

(assert (=> b!5380748 (= e!3337939 (_2!35607 lt!2190675))))

(declare-fun b!5380751 () Bool)

(declare-fun e!3337938 () Bool)

(declare-fun lt!2190740 () List!61614)

(assert (=> b!5380751 (= e!3337938 (or (not (= (_2!35607 lt!2190675) Nil!61490)) (= lt!2190740 (_1!35607 lt!2190675))))))

(declare-fun d!1721998 () Bool)

(assert (=> d!1721998 e!3337938))

(declare-fun res!2284482 () Bool)

(assert (=> d!1721998 (=> (not res!2284482) (not e!3337938))))

(declare-fun content!11002 (List!61614) (InoxSet C!30480))

(assert (=> d!1721998 (= res!2284482 (= (content!11002 lt!2190740) ((_ map or) (content!11002 (_1!35607 lt!2190675)) (content!11002 (_2!35607 lt!2190675)))))))

(assert (=> d!1721998 (= lt!2190740 e!3337939)))

(declare-fun c!937846 () Bool)

(assert (=> d!1721998 (= c!937846 ((_ is Nil!61490) (_1!35607 lt!2190675)))))

(assert (=> d!1721998 (= (++!13408 (_1!35607 lt!2190675) (_2!35607 lt!2190675)) lt!2190740)))

(declare-fun b!5380750 () Bool)

(declare-fun res!2284483 () Bool)

(assert (=> b!5380750 (=> (not res!2284483) (not e!3337938))))

(declare-fun size!39805 (List!61614) Int)

(assert (=> b!5380750 (= res!2284483 (= (size!39805 lt!2190740) (+ (size!39805 (_1!35607 lt!2190675)) (size!39805 (_2!35607 lt!2190675)))))))

(assert (= (and d!1721998 c!937846) b!5380748))

(assert (= (and d!1721998 (not c!937846)) b!5380749))

(assert (= (and d!1721998 res!2284482) b!5380750))

(assert (= (and b!5380750 res!2284483) b!5380751))

(declare-fun m!6406846 () Bool)

(assert (=> b!5380749 m!6406846))

(declare-fun m!6406848 () Bool)

(assert (=> d!1721998 m!6406848))

(declare-fun m!6406850 () Bool)

(assert (=> d!1721998 m!6406850))

(declare-fun m!6406852 () Bool)

(assert (=> d!1721998 m!6406852))

(declare-fun m!6406854 () Bool)

(assert (=> b!5380750 m!6406854))

(declare-fun m!6406856 () Bool)

(assert (=> b!5380750 m!6406856))

(declare-fun m!6406858 () Bool)

(assert (=> b!5380750 m!6406858))

(assert (=> b!5380388 d!1721998))

(declare-fun d!1722026 () Bool)

(assert (=> d!1722026 (= (matchR!7290 lt!2190664 (_1!35607 lt!2190644)) (matchRSpec!2208 lt!2190664 (_1!35607 lt!2190644)))))

(declare-fun lt!2190743 () Unit!153938)

(declare-fun choose!40451 (Regex!15105 List!61614) Unit!153938)

(assert (=> d!1722026 (= lt!2190743 (choose!40451 lt!2190664 (_1!35607 lt!2190644)))))

(assert (=> d!1722026 (validRegex!6841 lt!2190664)))

(assert (=> d!1722026 (= (mainMatchTheorem!2208 lt!2190664 (_1!35607 lt!2190644)) lt!2190743)))

(declare-fun bs!1245779 () Bool)

(assert (= bs!1245779 d!1722026))

(assert (=> bs!1245779 m!6406382))

(assert (=> bs!1245779 m!6406410))

(declare-fun m!6406860 () Bool)

(assert (=> bs!1245779 m!6406860))

(assert (=> bs!1245779 m!6406440))

(assert (=> b!5380388 d!1722026))

(declare-fun d!1722030 () Bool)

(assert (=> d!1722030 (= (Exists!2286 lambda!278372) (choose!40450 lambda!278372))))

(declare-fun bs!1245780 () Bool)

(assert (= bs!1245780 d!1722030))

(declare-fun m!6406862 () Bool)

(assert (=> bs!1245780 m!6406862))

(assert (=> b!5380388 d!1722030))

(declare-fun bs!1245796 () Bool)

(declare-fun d!1722032 () Bool)

(assert (= bs!1245796 (and d!1722032 b!5380388)))

(declare-fun lambda!278401 () Int)

(assert (=> bs!1245796 (= lambda!278401 lambda!278371)))

(declare-fun bs!1245797 () Bool)

(assert (= bs!1245797 (and d!1722032 b!5380404)))

(assert (=> bs!1245797 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) (regOne!30722 r!7292)) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278401 lambda!278366))))

(declare-fun bs!1245798 () Bool)

(assert (= bs!1245798 (and d!1722032 b!5380403)))

(assert (=> bs!1245798 (not (= lambda!278401 lambda!278370))))

(assert (=> bs!1245798 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) lt!2190664) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278401 lambda!278369))))

(assert (=> bs!1245797 (not (= lambda!278401 lambda!278367))))

(assert (=> bs!1245796 (not (= lambda!278401 lambda!278373))))

(assert (=> bs!1245796 (not (= lambda!278401 lambda!278372))))

(assert (=> d!1722032 true))

(assert (=> d!1722032 true))

(assert (=> d!1722032 true))

(assert (=> d!1722032 (= (isDefined!11919 (findConcatSeparation!1630 (reg!15434 (regOne!30722 r!7292)) lt!2190664 Nil!61490 (_1!35607 lt!2190644) (_1!35607 lt!2190644))) (Exists!2286 lambda!278401))))

(declare-fun lt!2190753 () Unit!153938)

(declare-fun choose!40452 (Regex!15105 Regex!15105 List!61614) Unit!153938)

(assert (=> d!1722032 (= lt!2190753 (choose!40452 (reg!15434 (regOne!30722 r!7292)) lt!2190664 (_1!35607 lt!2190644)))))

(assert (=> d!1722032 (validRegex!6841 (reg!15434 (regOne!30722 r!7292)))))

(assert (=> d!1722032 (= (lemmaFindConcatSeparationEquivalentToExists!1394 (reg!15434 (regOne!30722 r!7292)) lt!2190664 (_1!35607 lt!2190644)) lt!2190753)))

(declare-fun bs!1245806 () Bool)

(assert (= bs!1245806 d!1722032))

(declare-fun m!6406906 () Bool)

(assert (=> bs!1245806 m!6406906))

(assert (=> bs!1245806 m!6406414))

(declare-fun m!6406908 () Bool)

(assert (=> bs!1245806 m!6406908))

(declare-fun m!6406910 () Bool)

(assert (=> bs!1245806 m!6406910))

(assert (=> bs!1245806 m!6406414))

(assert (=> bs!1245806 m!6406760))

(assert (=> b!5380388 d!1722032))

(declare-fun bs!1245850 () Bool)

(declare-fun b!5380886 () Bool)

(assert (= bs!1245850 (and b!5380886 b!5380388)))

(declare-fun lambda!278417 () Int)

(assert (=> bs!1245850 (not (= lambda!278417 lambda!278371))))

(declare-fun bs!1245853 () Bool)

(assert (= bs!1245853 (and b!5380886 b!5380404)))

(assert (=> bs!1245853 (not (= lambda!278417 lambda!278366))))

(declare-fun bs!1245855 () Bool)

(assert (= bs!1245855 (and b!5380886 d!1722032)))

(assert (=> bs!1245855 (not (= lambda!278417 lambda!278401))))

(declare-fun bs!1245856 () Bool)

(assert (= bs!1245856 (and b!5380886 b!5380403)))

(assert (=> bs!1245856 (not (= lambda!278417 lambda!278370))))

(assert (=> bs!1245856 (not (= lambda!278417 lambda!278369))))

(assert (=> bs!1245853 (not (= lambda!278417 lambda!278367))))

(assert (=> bs!1245850 (not (= lambda!278417 lambda!278373))))

(assert (=> bs!1245850 (= (= (reg!15434 lt!2190664) (reg!15434 (regOne!30722 r!7292))) (= lambda!278417 lambda!278372))))

(assert (=> b!5380886 true))

(assert (=> b!5380886 true))

(declare-fun bs!1245868 () Bool)

(declare-fun b!5380881 () Bool)

(assert (= bs!1245868 (and b!5380881 b!5380388)))

(declare-fun lambda!278419 () Int)

(assert (=> bs!1245868 (not (= lambda!278419 lambda!278371))))

(declare-fun bs!1245870 () Bool)

(assert (= bs!1245870 (and b!5380881 b!5380404)))

(assert (=> bs!1245870 (not (= lambda!278419 lambda!278366))))

(declare-fun bs!1245871 () Bool)

(assert (= bs!1245871 (and b!5380881 d!1722032)))

(assert (=> bs!1245871 (not (= lambda!278419 lambda!278401))))

(declare-fun bs!1245872 () Bool)

(assert (= bs!1245872 (and b!5380881 b!5380886)))

(assert (=> bs!1245872 (not (= lambda!278419 lambda!278417))))

(declare-fun bs!1245873 () Bool)

(assert (= bs!1245873 (and b!5380881 b!5380403)))

(assert (=> bs!1245873 (= (and (= (_1!35607 lt!2190644) s!2326) (= (regOne!30722 lt!2190664) lt!2190664) (= (regTwo!30722 lt!2190664) (regTwo!30722 r!7292))) (= lambda!278419 lambda!278370))))

(assert (=> bs!1245873 (not (= lambda!278419 lambda!278369))))

(assert (=> bs!1245870 (= (and (= (_1!35607 lt!2190644) s!2326) (= (regOne!30722 lt!2190664) (regOne!30722 r!7292)) (= (regTwo!30722 lt!2190664) (regTwo!30722 r!7292))) (= lambda!278419 lambda!278367))))

(assert (=> bs!1245868 (= (and (= (regOne!30722 lt!2190664) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 lt!2190664) lt!2190664)) (= lambda!278419 lambda!278373))))

(assert (=> bs!1245868 (not (= lambda!278419 lambda!278372))))

(assert (=> b!5380881 true))

(assert (=> b!5380881 true))

(declare-fun b!5380877 () Bool)

(declare-fun e!3338012 () Bool)

(declare-fun e!3338010 () Bool)

(assert (=> b!5380877 (= e!3338012 e!3338010)))

(declare-fun c!937878 () Bool)

(assert (=> b!5380877 (= c!937878 ((_ is Star!15105) lt!2190664))))

(declare-fun b!5380878 () Bool)

(declare-fun c!937879 () Bool)

(assert (=> b!5380878 (= c!937879 ((_ is ElementMatch!15105) lt!2190664))))

(declare-fun e!3338008 () Bool)

(declare-fun e!3338014 () Bool)

(assert (=> b!5380878 (= e!3338008 e!3338014)))

(declare-fun b!5380879 () Bool)

(declare-fun e!3338011 () Bool)

(assert (=> b!5380879 (= e!3338011 (matchRSpec!2208 (regTwo!30723 lt!2190664) (_1!35607 lt!2190644)))))

(declare-fun b!5380880 () Bool)

(declare-fun e!3338013 () Bool)

(declare-fun call!385373 () Bool)

(assert (=> b!5380880 (= e!3338013 call!385373)))

(declare-fun call!385372 () Bool)

(assert (=> b!5380881 (= e!3338010 call!385372)))

(declare-fun b!5380882 () Bool)

(declare-fun c!937876 () Bool)

(assert (=> b!5380882 (= c!937876 ((_ is Union!15105) lt!2190664))))

(assert (=> b!5380882 (= e!3338014 e!3338012)))

(declare-fun bm!385367 () Bool)

(assert (=> bm!385367 (= call!385373 (isEmpty!33483 (_1!35607 lt!2190644)))))

(declare-fun b!5380883 () Bool)

(assert (=> b!5380883 (= e!3338012 e!3338011)))

(declare-fun res!2284549 () Bool)

(assert (=> b!5380883 (= res!2284549 (matchRSpec!2208 (regOne!30723 lt!2190664) (_1!35607 lt!2190644)))))

(assert (=> b!5380883 (=> res!2284549 e!3338011)))

(declare-fun bm!385368 () Bool)

(assert (=> bm!385368 (= call!385372 (Exists!2286 (ite c!937878 lambda!278417 lambda!278419)))))

(declare-fun b!5380884 () Bool)

(declare-fun res!2284550 () Bool)

(declare-fun e!3338009 () Bool)

(assert (=> b!5380884 (=> res!2284550 e!3338009)))

(assert (=> b!5380884 (= res!2284550 call!385373)))

(assert (=> b!5380884 (= e!3338010 e!3338009)))

(declare-fun b!5380885 () Bool)

(assert (=> b!5380885 (= e!3338013 e!3338008)))

(declare-fun res!2284551 () Bool)

(assert (=> b!5380885 (= res!2284551 (not ((_ is EmptyLang!15105) lt!2190664)))))

(assert (=> b!5380885 (=> (not res!2284551) (not e!3338008))))

(assert (=> b!5380886 (= e!3338009 call!385372)))

(declare-fun d!1722050 () Bool)

(declare-fun c!937877 () Bool)

(assert (=> d!1722050 (= c!937877 ((_ is EmptyExpr!15105) lt!2190664))))

(assert (=> d!1722050 (= (matchRSpec!2208 lt!2190664 (_1!35607 lt!2190644)) e!3338013)))

(declare-fun b!5380887 () Bool)

(assert (=> b!5380887 (= e!3338014 (= (_1!35607 lt!2190644) (Cons!61490 (c!937749 lt!2190664) Nil!61490)))))

(assert (= (and d!1722050 c!937877) b!5380880))

(assert (= (and d!1722050 (not c!937877)) b!5380885))

(assert (= (and b!5380885 res!2284551) b!5380878))

(assert (= (and b!5380878 c!937879) b!5380887))

(assert (= (and b!5380878 (not c!937879)) b!5380882))

(assert (= (and b!5380882 c!937876) b!5380883))

(assert (= (and b!5380882 (not c!937876)) b!5380877))

(assert (= (and b!5380883 (not res!2284549)) b!5380879))

(assert (= (and b!5380877 c!937878) b!5380884))

(assert (= (and b!5380877 (not c!937878)) b!5380881))

(assert (= (and b!5380884 (not res!2284550)) b!5380886))

(assert (= (or b!5380886 b!5380881) bm!385368))

(assert (= (or b!5380880 b!5380884) bm!385367))

(declare-fun m!6406956 () Bool)

(assert (=> b!5380879 m!6406956))

(assert (=> bm!385367 m!6406464))

(declare-fun m!6406960 () Bool)

(assert (=> b!5380883 m!6406960))

(declare-fun m!6406962 () Bool)

(assert (=> bm!385368 m!6406962))

(assert (=> b!5380388 d!1722050))

(declare-fun d!1722076 () Bool)

(declare-fun isEmpty!33486 (Option!15216) Bool)

(assert (=> d!1722076 (= (isDefined!11919 lt!2190661) (not (isEmpty!33486 lt!2190661)))))

(declare-fun bs!1245882 () Bool)

(assert (= bs!1245882 d!1722076))

(declare-fun m!6406964 () Bool)

(assert (=> bs!1245882 m!6406964))

(assert (=> b!5380388 d!1722076))

(declare-fun bs!1245899 () Bool)

(declare-fun d!1722078 () Bool)

(assert (= bs!1245899 (and d!1722078 b!5380388)))

(declare-fun lambda!278433 () Int)

(assert (=> bs!1245899 (= (= (Star!15105 (reg!15434 (regOne!30722 r!7292))) lt!2190664) (= lambda!278433 lambda!278371))))

(declare-fun bs!1245901 () Bool)

(assert (= bs!1245901 (and d!1722078 b!5380404)))

(assert (=> bs!1245901 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) (regOne!30722 r!7292)) (= (Star!15105 (reg!15434 (regOne!30722 r!7292))) (regTwo!30722 r!7292))) (= lambda!278433 lambda!278366))))

(declare-fun bs!1245903 () Bool)

(assert (= bs!1245903 (and d!1722078 b!5380886)))

(assert (=> bs!1245903 (not (= lambda!278433 lambda!278417))))

(declare-fun bs!1245904 () Bool)

(assert (= bs!1245904 (and d!1722078 b!5380403)))

(assert (=> bs!1245904 (not (= lambda!278433 lambda!278370))))

(assert (=> bs!1245904 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) lt!2190664) (= (Star!15105 (reg!15434 (regOne!30722 r!7292))) (regTwo!30722 r!7292))) (= lambda!278433 lambda!278369))))

(assert (=> bs!1245901 (not (= lambda!278433 lambda!278367))))

(assert (=> bs!1245899 (not (= lambda!278433 lambda!278373))))

(assert (=> bs!1245899 (not (= lambda!278433 lambda!278372))))

(declare-fun bs!1245909 () Bool)

(assert (= bs!1245909 (and d!1722078 d!1722032)))

(assert (=> bs!1245909 (= (= (Star!15105 (reg!15434 (regOne!30722 r!7292))) lt!2190664) (= lambda!278433 lambda!278401))))

(declare-fun bs!1245910 () Bool)

(assert (= bs!1245910 (and d!1722078 b!5380881)))

(assert (=> bs!1245910 (not (= lambda!278433 lambda!278419))))

(assert (=> d!1722078 true))

(assert (=> d!1722078 true))

(declare-fun lambda!278434 () Int)

(assert (=> bs!1245899 (not (= lambda!278434 lambda!278371))))

(assert (=> bs!1245901 (not (= lambda!278434 lambda!278366))))

(assert (=> bs!1245903 (= (and (= (reg!15434 (regOne!30722 r!7292)) (reg!15434 lt!2190664)) (= (Star!15105 (reg!15434 (regOne!30722 r!7292))) lt!2190664)) (= lambda!278434 lambda!278417))))

(assert (=> bs!1245904 (not (= lambda!278434 lambda!278370))))

(assert (=> bs!1245904 (not (= lambda!278434 lambda!278369))))

(assert (=> bs!1245901 (not (= lambda!278434 lambda!278367))))

(assert (=> bs!1245899 (not (= lambda!278434 lambda!278373))))

(assert (=> bs!1245899 (= (= (Star!15105 (reg!15434 (regOne!30722 r!7292))) lt!2190664) (= lambda!278434 lambda!278372))))

(declare-fun bs!1245917 () Bool)

(assert (= bs!1245917 d!1722078))

(assert (=> bs!1245917 (not (= lambda!278434 lambda!278433))))

(assert (=> bs!1245909 (not (= lambda!278434 lambda!278401))))

(assert (=> bs!1245910 (not (= lambda!278434 lambda!278419))))

(assert (=> d!1722078 true))

(assert (=> d!1722078 true))

(assert (=> d!1722078 (= (Exists!2286 lambda!278433) (Exists!2286 lambda!278434))))

(declare-fun lt!2190776 () Unit!153938)

(declare-fun choose!40453 (Regex!15105 List!61614) Unit!153938)

(assert (=> d!1722078 (= lt!2190776 (choose!40453 (reg!15434 (regOne!30722 r!7292)) (_1!35607 lt!2190644)))))

(assert (=> d!1722078 (validRegex!6841 (reg!15434 (regOne!30722 r!7292)))))

(assert (=> d!1722078 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!370 (reg!15434 (regOne!30722 r!7292)) (_1!35607 lt!2190644)) lt!2190776)))

(declare-fun m!6407028 () Bool)

(assert (=> bs!1245917 m!6407028))

(declare-fun m!6407030 () Bool)

(assert (=> bs!1245917 m!6407030))

(declare-fun m!6407032 () Bool)

(assert (=> bs!1245917 m!6407032))

(assert (=> bs!1245917 m!6406760))

(assert (=> b!5380388 d!1722078))

(declare-fun bs!1245934 () Bool)

(declare-fun d!1722092 () Bool)

(assert (= bs!1245934 (and d!1722092 b!5380388)))

(declare-fun lambda!278440 () Int)

(assert (=> bs!1245934 (= lambda!278440 lambda!278371)))

(declare-fun bs!1245936 () Bool)

(assert (= bs!1245936 (and d!1722092 b!5380404)))

(assert (=> bs!1245936 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) (regOne!30722 r!7292)) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278440 lambda!278366))))

(declare-fun bs!1245937 () Bool)

(assert (= bs!1245937 (and d!1722092 b!5380886)))

(assert (=> bs!1245937 (not (= lambda!278440 lambda!278417))))

(declare-fun bs!1245939 () Bool)

(assert (= bs!1245939 (and d!1722092 b!5380403)))

(assert (=> bs!1245939 (not (= lambda!278440 lambda!278370))))

(assert (=> bs!1245939 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) lt!2190664) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278440 lambda!278369))))

(assert (=> bs!1245936 (not (= lambda!278440 lambda!278367))))

(assert (=> bs!1245934 (not (= lambda!278440 lambda!278373))))

(assert (=> bs!1245934 (not (= lambda!278440 lambda!278372))))

(declare-fun bs!1245942 () Bool)

(assert (= bs!1245942 (and d!1722092 d!1722078)))

(assert (=> bs!1245942 (= (= lt!2190664 (Star!15105 (reg!15434 (regOne!30722 r!7292)))) (= lambda!278440 lambda!278433))))

(assert (=> bs!1245942 (not (= lambda!278440 lambda!278434))))

(declare-fun bs!1245943 () Bool)

(assert (= bs!1245943 (and d!1722092 d!1722032)))

(assert (=> bs!1245943 (= lambda!278440 lambda!278401)))

(declare-fun bs!1245944 () Bool)

(assert (= bs!1245944 (and d!1722092 b!5380881)))

(assert (=> bs!1245944 (not (= lambda!278440 lambda!278419))))

(assert (=> d!1722092 true))

(assert (=> d!1722092 true))

(assert (=> d!1722092 true))

(declare-fun lambda!278441 () Int)

(assert (=> bs!1245934 (not (= lambda!278441 lambda!278371))))

(assert (=> bs!1245936 (not (= lambda!278441 lambda!278366))))

(assert (=> bs!1245937 (not (= lambda!278441 lambda!278417))))

(assert (=> bs!1245939 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) lt!2190664) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278441 lambda!278370))))

(assert (=> bs!1245939 (not (= lambda!278441 lambda!278369))))

(assert (=> bs!1245936 (= (and (= (_1!35607 lt!2190644) s!2326) (= (reg!15434 (regOne!30722 r!7292)) (regOne!30722 r!7292)) (= lt!2190664 (regTwo!30722 r!7292))) (= lambda!278441 lambda!278367))))

(assert (=> bs!1245934 (not (= lambda!278441 lambda!278372))))

(assert (=> bs!1245942 (not (= lambda!278441 lambda!278433))))

(assert (=> bs!1245942 (not (= lambda!278441 lambda!278434))))

(assert (=> bs!1245943 (not (= lambda!278441 lambda!278401))))

(assert (=> bs!1245944 (= (and (= (reg!15434 (regOne!30722 r!7292)) (regOne!30722 lt!2190664)) (= lt!2190664 (regTwo!30722 lt!2190664))) (= lambda!278441 lambda!278419))))

(declare-fun bs!1245945 () Bool)

(assert (= bs!1245945 d!1722092))

(assert (=> bs!1245945 (not (= lambda!278441 lambda!278440))))

(assert (=> bs!1245934 (= lambda!278441 lambda!278373)))

(assert (=> d!1722092 true))

(assert (=> d!1722092 true))

(assert (=> d!1722092 true))

(assert (=> d!1722092 (= (Exists!2286 lambda!278440) (Exists!2286 lambda!278441))))

(declare-fun lt!2190781 () Unit!153938)

(declare-fun choose!40454 (Regex!15105 Regex!15105 List!61614) Unit!153938)

(assert (=> d!1722092 (= lt!2190781 (choose!40454 (reg!15434 (regOne!30722 r!7292)) lt!2190664 (_1!35607 lt!2190644)))))

(assert (=> d!1722092 (validRegex!6841 (reg!15434 (regOne!30722 r!7292)))))

(assert (=> d!1722092 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!940 (reg!15434 (regOne!30722 r!7292)) lt!2190664 (_1!35607 lt!2190644)) lt!2190781)))

(declare-fun m!6407062 () Bool)

(assert (=> bs!1245945 m!6407062))

(declare-fun m!6407064 () Bool)

(assert (=> bs!1245945 m!6407064))

(declare-fun m!6407066 () Bool)

(assert (=> bs!1245945 m!6407066))

(assert (=> bs!1245945 m!6406760))

(assert (=> b!5380388 d!1722092))

(declare-fun d!1722106 () Bool)

(declare-fun dynLambda!24275 (Int Context!8978) (InoxSet Context!8978))

(assert (=> d!1722106 (= (flatMap!832 lt!2190636 lambda!278368) (dynLambda!24275 lambda!278368 lt!2190650))))

(declare-fun lt!2190784 () Unit!153938)

(declare-fun choose!40455 ((InoxSet Context!8978) Context!8978 Int) Unit!153938)

(assert (=> d!1722106 (= lt!2190784 (choose!40455 lt!2190636 lt!2190650 lambda!278368))))

(assert (=> d!1722106 (= lt!2190636 (store ((as const (Array Context!8978 Bool)) false) lt!2190650 true))))

(assert (=> d!1722106 (= (lemmaFlatMapOnSingletonSet!364 lt!2190636 lt!2190650 lambda!278368) lt!2190784)))

(declare-fun b_lambda!206109 () Bool)

(assert (=> (not b_lambda!206109) (not d!1722106)))

(declare-fun bs!1245946 () Bool)

(assert (= bs!1245946 d!1722106))

(assert (=> bs!1245946 m!6406364))

(declare-fun m!6407068 () Bool)

(assert (=> bs!1245946 m!6407068))

(declare-fun m!6407070 () Bool)

(assert (=> bs!1245946 m!6407070))

(assert (=> bs!1245946 m!6406362))

(assert (=> b!5380408 d!1722106))

(declare-fun d!1722108 () Bool)

(assert (=> d!1722108 (= (flatMap!832 lt!2190649 lambda!278368) (dynLambda!24275 lambda!278368 lt!2190634))))

(declare-fun lt!2190785 () Unit!153938)

(assert (=> d!1722108 (= lt!2190785 (choose!40455 lt!2190649 lt!2190634 lambda!278368))))

(assert (=> d!1722108 (= lt!2190649 (store ((as const (Array Context!8978 Bool)) false) lt!2190634 true))))

(assert (=> d!1722108 (= (lemmaFlatMapOnSingletonSet!364 lt!2190649 lt!2190634 lambda!278368) lt!2190785)))

(declare-fun b_lambda!206111 () Bool)

(assert (=> (not b_lambda!206111) (not d!1722108)))

(declare-fun bs!1245947 () Bool)

(assert (= bs!1245947 d!1722108))

(assert (=> bs!1245947 m!6406372))

(declare-fun m!6407072 () Bool)

(assert (=> bs!1245947 m!6407072))

(declare-fun m!6407074 () Bool)

(assert (=> bs!1245947 m!6407074))

(assert (=> bs!1245947 m!6406360))

(assert (=> b!5380408 d!1722108))

(declare-fun d!1722110 () Bool)

(declare-fun choose!40456 ((InoxSet Context!8978) Int) (InoxSet Context!8978))

(assert (=> d!1722110 (= (flatMap!832 lt!2190649 lambda!278368) (choose!40456 lt!2190649 lambda!278368))))

(declare-fun bs!1245948 () Bool)

(assert (= bs!1245948 d!1722110))

(declare-fun m!6407076 () Bool)

(assert (=> bs!1245948 m!6407076))

(assert (=> b!5380408 d!1722110))

(declare-fun d!1722112 () Bool)

(declare-fun lt!2190788 () Regex!15105)

(assert (=> d!1722112 (validRegex!6841 lt!2190788)))

(assert (=> d!1722112 (= lt!2190788 (generalisedUnion!1034 (unfocusZipperList!547 (Cons!61492 lt!2190634 Nil!61492))))))

(assert (=> d!1722112 (= (unfocusZipper!847 (Cons!61492 lt!2190634 Nil!61492)) lt!2190788)))

(declare-fun bs!1245949 () Bool)

(assert (= bs!1245949 d!1722112))

(declare-fun m!6407078 () Bool)

(assert (=> bs!1245949 m!6407078))

(declare-fun m!6407080 () Bool)

(assert (=> bs!1245949 m!6407080))

(assert (=> bs!1245949 m!6407080))

(declare-fun m!6407082 () Bool)

(assert (=> bs!1245949 m!6407082))

(assert (=> b!5380408 d!1722112))

(declare-fun b!5381062 () Bool)

(declare-fun e!3338103 () (InoxSet Context!8978))

(declare-fun call!385380 () (InoxSet Context!8978))

(assert (=> b!5381062 (= e!3338103 call!385380)))

(declare-fun bm!385375 () Bool)

(assert (=> bm!385375 (= call!385380 (derivationStepZipperDown!553 (h!67939 (exprs!4989 lt!2190650)) (Context!8979 (t!374838 (exprs!4989 lt!2190650))) (h!67938 s!2326)))))

(declare-fun b!5381063 () Bool)

(declare-fun e!3338105 () (InoxSet Context!8978))

(assert (=> b!5381063 (= e!3338105 e!3338103)))

(declare-fun c!937913 () Bool)

(assert (=> b!5381063 (= c!937913 ((_ is Cons!61491) (exprs!4989 lt!2190650)))))

(declare-fun b!5381064 () Bool)

(assert (=> b!5381064 (= e!3338105 ((_ map or) call!385380 (derivationStepZipperUp!477 (Context!8979 (t!374838 (exprs!4989 lt!2190650))) (h!67938 s!2326))))))

(declare-fun d!1722114 () Bool)

(declare-fun c!937914 () Bool)

(declare-fun e!3338104 () Bool)

(assert (=> d!1722114 (= c!937914 e!3338104)))

(declare-fun res!2284606 () Bool)

(assert (=> d!1722114 (=> (not res!2284606) (not e!3338104))))

(assert (=> d!1722114 (= res!2284606 ((_ is Cons!61491) (exprs!4989 lt!2190650)))))

(assert (=> d!1722114 (= (derivationStepZipperUp!477 lt!2190650 (h!67938 s!2326)) e!3338105)))

(declare-fun b!5381065 () Bool)

(assert (=> b!5381065 (= e!3338104 (nullable!5274 (h!67939 (exprs!4989 lt!2190650))))))

(declare-fun b!5381066 () Bool)

(assert (=> b!5381066 (= e!3338103 ((as const (Array Context!8978 Bool)) false))))

(assert (= (and d!1722114 res!2284606) b!5381065))

(assert (= (and d!1722114 c!937914) b!5381064))

(assert (= (and d!1722114 (not c!937914)) b!5381063))

(assert (= (and b!5381063 c!937913) b!5381062))

(assert (= (and b!5381063 (not c!937913)) b!5381066))

(assert (= (or b!5381064 b!5381062) bm!385375))

(declare-fun m!6407084 () Bool)

(assert (=> bm!385375 m!6407084))

(declare-fun m!6407086 () Bool)

(assert (=> b!5381064 m!6407086))

(declare-fun m!6407088 () Bool)

(assert (=> b!5381065 m!6407088))

(assert (=> b!5380408 d!1722114))

(declare-fun b!5381067 () Bool)

(declare-fun e!3338106 () (InoxSet Context!8978))

(declare-fun call!385381 () (InoxSet Context!8978))

(assert (=> b!5381067 (= e!3338106 call!385381)))

(declare-fun bm!385376 () Bool)

(assert (=> bm!385376 (= call!385381 (derivationStepZipperDown!553 (h!67939 (exprs!4989 lt!2190634)) (Context!8979 (t!374838 (exprs!4989 lt!2190634))) (h!67938 s!2326)))))

(declare-fun b!5381068 () Bool)

(declare-fun e!3338108 () (InoxSet Context!8978))

(assert (=> b!5381068 (= e!3338108 e!3338106)))

(declare-fun c!937915 () Bool)

(assert (=> b!5381068 (= c!937915 ((_ is Cons!61491) (exprs!4989 lt!2190634)))))

(declare-fun b!5381069 () Bool)

(assert (=> b!5381069 (= e!3338108 ((_ map or) call!385381 (derivationStepZipperUp!477 (Context!8979 (t!374838 (exprs!4989 lt!2190634))) (h!67938 s!2326))))))

(declare-fun d!1722116 () Bool)

(declare-fun c!937916 () Bool)

(declare-fun e!3338107 () Bool)

(assert (=> d!1722116 (= c!937916 e!3338107)))

(declare-fun res!2284607 () Bool)

(assert (=> d!1722116 (=> (not res!2284607) (not e!3338107))))

(assert (=> d!1722116 (= res!2284607 ((_ is Cons!61491) (exprs!4989 lt!2190634)))))

(assert (=> d!1722116 (= (derivationStepZipperUp!477 lt!2190634 (h!67938 s!2326)) e!3338108)))

(declare-fun b!5381070 () Bool)

(assert (=> b!5381070 (= e!3338107 (nullable!5274 (h!67939 (exprs!4989 lt!2190634))))))

(declare-fun b!5381071 () Bool)

(assert (=> b!5381071 (= e!3338106 ((as const (Array Context!8978 Bool)) false))))

(assert (= (and d!1722116 res!2284607) b!5381070))

(assert (= (and d!1722116 c!937916) b!5381069))

(assert (= (and d!1722116 (not c!937916)) b!5381068))

(assert (= (and b!5381068 c!937915) b!5381067))

(assert (= (and b!5381068 (not c!937915)) b!5381071))

(assert (= (or b!5381069 b!5381067) bm!385376))

(declare-fun m!6407090 () Bool)

(assert (=> bm!385376 m!6407090))

(declare-fun m!6407092 () Bool)

(assert (=> b!5381069 m!6407092))

(declare-fun m!6407094 () Bool)

(assert (=> b!5381070 m!6407094))

(assert (=> b!5380408 d!1722116))

(declare-fun d!1722118 () Bool)

(assert (=> d!1722118 (= (flatMap!832 lt!2190636 lambda!278368) (choose!40456 lt!2190636 lambda!278368))))

(declare-fun bs!1245950 () Bool)

(assert (= bs!1245950 d!1722118))

(declare-fun m!6407096 () Bool)

(assert (=> bs!1245950 m!6407096))

(assert (=> b!5380408 d!1722118))

(declare-fun d!1722120 () Bool)

(declare-fun lt!2190789 () Regex!15105)

(assert (=> d!1722120 (validRegex!6841 lt!2190789)))

(assert (=> d!1722120 (= lt!2190789 (generalisedUnion!1034 (unfocusZipperList!547 (Cons!61492 lt!2190651 Nil!61492))))))

(assert (=> d!1722120 (= (unfocusZipper!847 (Cons!61492 lt!2190651 Nil!61492)) lt!2190789)))

(declare-fun bs!1245951 () Bool)

(assert (= bs!1245951 d!1722120))

(declare-fun m!6407098 () Bool)

(assert (=> bs!1245951 m!6407098))

(declare-fun m!6407100 () Bool)

(assert (=> bs!1245951 m!6407100))

(assert (=> bs!1245951 m!6407100))

(declare-fun m!6407102 () Bool)

(assert (=> bs!1245951 m!6407102))

(assert (=> b!5380411 d!1722120))

(declare-fun b!5381100 () Bool)

(declare-fun res!2284627 () Bool)

(declare-fun e!3338123 () Bool)

(assert (=> b!5381100 (=> res!2284627 e!3338123)))

(declare-fun tail!10643 (List!61614) List!61614)

(assert (=> b!5381100 (= res!2284627 (not (isEmpty!33483 (tail!10643 (_1!35607 lt!2190675)))))))

(declare-fun b!5381101 () Bool)

(declare-fun e!3338125 () Bool)

(assert (=> b!5381101 (= e!3338125 e!3338123)))

(declare-fun res!2284631 () Bool)

(assert (=> b!5381101 (=> res!2284631 e!3338123)))

(declare-fun call!385384 () Bool)

(assert (=> b!5381101 (= res!2284631 call!385384)))

(declare-fun b!5381102 () Bool)

(declare-fun e!3338126 () Bool)

(declare-fun lt!2190792 () Bool)

(assert (=> b!5381102 (= e!3338126 (not lt!2190792))))

(declare-fun b!5381103 () Bool)

(declare-fun e!3338124 () Bool)

(declare-fun derivativeStep!4235 (Regex!15105 C!30480) Regex!15105)

(declare-fun head!11546 (List!61614) C!30480)

(assert (=> b!5381103 (= e!3338124 (matchR!7290 (derivativeStep!4235 (reg!15434 (regOne!30722 r!7292)) (head!11546 (_1!35607 lt!2190675))) (tail!10643 (_1!35607 lt!2190675))))))

(declare-fun b!5381104 () Bool)

(assert (=> b!5381104 (= e!3338124 (nullable!5274 (reg!15434 (regOne!30722 r!7292))))))

(declare-fun b!5381105 () Bool)

(declare-fun e!3338129 () Bool)

(assert (=> b!5381105 (= e!3338129 e!3338126)))

(declare-fun c!937925 () Bool)

(assert (=> b!5381105 (= c!937925 ((_ is EmptyLang!15105) (reg!15434 (regOne!30722 r!7292))))))

(declare-fun bm!385379 () Bool)

(assert (=> bm!385379 (= call!385384 (isEmpty!33483 (_1!35607 lt!2190675)))))

(declare-fun b!5381107 () Bool)

(assert (=> b!5381107 (= e!3338123 (not (= (head!11546 (_1!35607 lt!2190675)) (c!937749 (reg!15434 (regOne!30722 r!7292))))))))

(declare-fun b!5381108 () Bool)

(declare-fun e!3338127 () Bool)

(assert (=> b!5381108 (= e!3338127 e!3338125)))

(declare-fun res!2284624 () Bool)

(assert (=> b!5381108 (=> (not res!2284624) (not e!3338125))))

(assert (=> b!5381108 (= res!2284624 (not lt!2190792))))

(declare-fun b!5381109 () Bool)

(declare-fun e!3338128 () Bool)

(assert (=> b!5381109 (= e!3338128 (= (head!11546 (_1!35607 lt!2190675)) (c!937749 (reg!15434 (regOne!30722 r!7292)))))))

(declare-fun b!5381110 () Bool)

(declare-fun res!2284625 () Bool)

(assert (=> b!5381110 (=> (not res!2284625) (not e!3338128))))

(assert (=> b!5381110 (= res!2284625 (isEmpty!33483 (tail!10643 (_1!35607 lt!2190675))))))

(declare-fun b!5381111 () Bool)

(declare-fun res!2284629 () Bool)

(assert (=> b!5381111 (=> (not res!2284629) (not e!3338128))))

(assert (=> b!5381111 (= res!2284629 (not call!385384))))

(declare-fun b!5381112 () Bool)

(declare-fun res!2284630 () Bool)

(assert (=> b!5381112 (=> res!2284630 e!3338127)))

(assert (=> b!5381112 (= res!2284630 e!3338128)))

(declare-fun res!2284626 () Bool)

(assert (=> b!5381112 (=> (not res!2284626) (not e!3338128))))

(assert (=> b!5381112 (= res!2284626 lt!2190792)))

(declare-fun b!5381113 () Bool)

(declare-fun res!2284628 () Bool)

(assert (=> b!5381113 (=> res!2284628 e!3338127)))

(assert (=> b!5381113 (= res!2284628 (not ((_ is ElementMatch!15105) (reg!15434 (regOne!30722 r!7292)))))))

(assert (=> b!5381113 (= e!3338126 e!3338127)))

(declare-fun b!5381106 () Bool)

(assert (=> b!5381106 (= e!3338129 (= lt!2190792 call!385384))))

(declare-fun d!1722122 () Bool)

(assert (=> d!1722122 e!3338129))

(declare-fun c!937924 () Bool)

(assert (=> d!1722122 (= c!937924 ((_ is EmptyExpr!15105) (reg!15434 (regOne!30722 r!7292))))))

(assert (=> d!1722122 (= lt!2190792 e!3338124)))

(declare-fun c!937923 () Bool)

(assert (=> d!1722122 (= c!937923 (isEmpty!33483 (_1!35607 lt!2190675)))))

(assert (=> d!1722122 (validRegex!6841 (reg!15434 (regOne!30722 r!7292)))))

(assert (=> d!1722122 (= (matchR!7290 (reg!15434 (regOne!30722 r!7292)) (_1!35607 lt!2190675)) lt!2190792)))

(assert (= (and d!1722122 c!937923) b!5381104))

(assert (= (and d!1722122 (not c!937923)) b!5381103))

(assert (= (and d!1722122 c!937924) b!5381106))

(assert (= (and d!1722122 (not c!937924)) b!5381105))

(assert (= (and b!5381105 c!937925) b!5381102))

(assert (= (and b!5381105 (not c!937925)) b!5381113))

(assert (= (and b!5381113 (not res!2284628)) b!5381112))

(assert (= (and b!5381112 res!2284626) b!5381111))

(assert (= (and b!5381111 res!2284629) b!5381110))

(assert (= (and b!5381110 res!2284625) b!5381109))

(assert (= (and b!5381112 (not res!2284630)) b!5381108))

(assert (= (and b!5381108 res!2284624) b!5381101))

(assert (= (and b!5381101 (not res!2284631)) b!5381100))

(assert (= (and b!5381100 (not res!2284627)) b!5381107))

(assert (= (or b!5381106 b!5381101 b!5381111) bm!385379))

(declare-fun m!6407104 () Bool)

(assert (=> b!5381110 m!6407104))

(assert (=> b!5381110 m!6407104))

(declare-fun m!6407106 () Bool)

(assert (=> b!5381110 m!6407106))

(declare-fun m!6407108 () Bool)

(assert (=> d!1722122 m!6407108))

(assert (=> d!1722122 m!6406760))

(declare-fun m!6407110 () Bool)

(assert (=> b!5381104 m!6407110))

(declare-fun m!6407112 () Bool)

(assert (=> b!5381103 m!6407112))

(assert (=> b!5381103 m!6407112))

(declare-fun m!6407114 () Bool)

(assert (=> b!5381103 m!6407114))

(assert (=> b!5381103 m!6407104))

(assert (=> b!5381103 m!6407114))

(assert (=> b!5381103 m!6407104))

(declare-fun m!6407116 () Bool)

(assert (=> b!5381103 m!6407116))

(assert (=> b!5381107 m!6407112))

(assert (=> bm!385379 m!6407108))

(assert (=> b!5381100 m!6407104))

(assert (=> b!5381100 m!6407104))

(assert (=> b!5381100 m!6407106))

(assert (=> b!5381109 m!6407112))

(assert (=> b!5380391 d!1722122))

(declare-fun b!5381114 () Bool)

(declare-fun res!2284635 () Bool)

(declare-fun e!3338130 () Bool)

(assert (=> b!5381114 (=> res!2284635 e!3338130)))

(assert (=> b!5381114 (= res!2284635 (not (isEmpty!33483 (tail!10643 (_2!35607 lt!2190644)))))))

(declare-fun b!5381115 () Bool)

(declare-fun e!3338132 () Bool)

(assert (=> b!5381115 (= e!3338132 e!3338130)))

(declare-fun res!2284639 () Bool)

(assert (=> b!5381115 (=> res!2284639 e!3338130)))

(declare-fun call!385385 () Bool)

(assert (=> b!5381115 (= res!2284639 call!385385)))

(declare-fun b!5381116 () Bool)

(declare-fun e!3338133 () Bool)

(declare-fun lt!2190793 () Bool)

(assert (=> b!5381116 (= e!3338133 (not lt!2190793))))

(declare-fun b!5381117 () Bool)

(declare-fun e!3338131 () Bool)

(assert (=> b!5381117 (= e!3338131 (matchR!7290 (derivativeStep!4235 (regTwo!30722 r!7292) (head!11546 (_2!35607 lt!2190644))) (tail!10643 (_2!35607 lt!2190644))))))

(declare-fun b!5381118 () Bool)

(assert (=> b!5381118 (= e!3338131 (nullable!5274 (regTwo!30722 r!7292)))))

(declare-fun b!5381119 () Bool)

(declare-fun e!3338136 () Bool)

(assert (=> b!5381119 (= e!3338136 e!3338133)))

(declare-fun c!937928 () Bool)

(assert (=> b!5381119 (= c!937928 ((_ is EmptyLang!15105) (regTwo!30722 r!7292)))))

(declare-fun bm!385380 () Bool)

(assert (=> bm!385380 (= call!385385 (isEmpty!33483 (_2!35607 lt!2190644)))))

(declare-fun b!5381121 () Bool)

(assert (=> b!5381121 (= e!3338130 (not (= (head!11546 (_2!35607 lt!2190644)) (c!937749 (regTwo!30722 r!7292)))))))

(declare-fun b!5381122 () Bool)

(declare-fun e!3338134 () Bool)

(assert (=> b!5381122 (= e!3338134 e!3338132)))

(declare-fun res!2284632 () Bool)

(assert (=> b!5381122 (=> (not res!2284632) (not e!3338132))))

(assert (=> b!5381122 (= res!2284632 (not lt!2190793))))

(declare-fun b!5381123 () Bool)

(declare-fun e!3338135 () Bool)

(assert (=> b!5381123 (= e!3338135 (= (head!11546 (_2!35607 lt!2190644)) (c!937749 (regTwo!30722 r!7292))))))

(declare-fun b!5381124 () Bool)

(declare-fun res!2284633 () Bool)

(assert (=> b!5381124 (=> (not res!2284633) (not e!3338135))))

(assert (=> b!5381124 (= res!2284633 (isEmpty!33483 (tail!10643 (_2!35607 lt!2190644))))))

(declare-fun b!5381125 () Bool)

(declare-fun res!2284637 () Bool)

(assert (=> b!5381125 (=> (not res!2284637) (not e!3338135))))

(assert (=> b!5381125 (= res!2284637 (not call!385385))))

(declare-fun b!5381126 () Bool)

(declare-fun res!2284638 () Bool)

(assert (=> b!5381126 (=> res!2284638 e!3338134)))

(assert (=> b!5381126 (= res!2284638 e!3338135)))

(declare-fun res!2284634 () Bool)

(assert (=> b!5381126 (=> (not res!2284634) (not e!3338135))))

(assert (=> b!5381126 (= res!2284634 lt!2190793)))

(declare-fun b!5381127 () Bool)

(declare-fun res!2284636 () Bool)

(assert (=> b!5381127 (=> res!2284636 e!3338134)))

(assert (=> b!5381127 (= res!2284636 (not ((_ is ElementMatch!15105) (regTwo!30722 r!7292))))))

(assert (=> b!5381127 (= e!3338133 e!3338134)))

(declare-fun b!5381120 () Bool)

(assert (=> b!5381120 (= e!3338136 (= lt!2190793 call!385385))))

(declare-fun d!1722124 () Bool)

(assert (=> d!1722124 e!3338136))

(declare-fun c!937927 () Bool)

(assert (=> d!1722124 (= c!937927 ((_ is EmptyExpr!15105) (regTwo!30722 r!7292)))))

(assert (=> d!1722124 (= lt!2190793 e!3338131)))

(declare-fun c!937926 () Bool)

(assert (=> d!1722124 (= c!937926 (isEmpty!33483 (_2!35607 lt!2190644)))))

(assert (=> d!1722124 (validRegex!6841 (regTwo!30722 r!7292))))

(assert (=> d!1722124 (= (matchR!7290 (regTwo!30722 r!7292) (_2!35607 lt!2190644)) lt!2190793)))

(assert (= (and d!1722124 c!937926) b!5381118))

(assert (= (and d!1722124 (not c!937926)) b!5381117))

(assert (= (and d!1722124 c!937927) b!5381120))

(assert (= (and d!1722124 (not c!937927)) b!5381119))

(assert (= (and b!5381119 c!937928) b!5381116))

(assert (= (and b!5381119 (not c!937928)) b!5381127))

(assert (= (and b!5381127 (not res!2284636)) b!5381126))

(assert (= (and b!5381126 res!2284634) b!5381125))

(assert (= (and b!5381125 res!2284637) b!5381124))

(assert (= (and b!5381124 res!2284633) b!5381123))

(assert (= (and b!5381126 (not res!2284638)) b!5381122))

(assert (= (and b!5381122 res!2284632) b!5381115))

(assert (= (and b!5381115 (not res!2284639)) b!5381114))

(assert (= (and b!5381114 (not res!2284635)) b!5381121))

(assert (= (or b!5381120 b!5381115 b!5381125) bm!385380))

(declare-fun m!6407118 () Bool)

(assert (=> b!5381124 m!6407118))

(assert (=> b!5381124 m!6407118))

(declare-fun m!6407120 () Bool)

(assert (=> b!5381124 m!6407120))

(declare-fun m!6407122 () Bool)

(assert (=> d!1722124 m!6407122))

(declare-fun m!6407124 () Bool)

(assert (=> d!1722124 m!6407124))

(declare-fun m!6407126 () Bool)

(assert (=> b!5381118 m!6407126))

(declare-fun m!6407128 () Bool)

(assert (=> b!5381117 m!6407128))

(assert (=> b!5381117 m!6407128))

(declare-fun m!6407130 () Bool)

(assert (=> b!5381117 m!6407130))

(assert (=> b!5381117 m!6407118))

(assert (=> b!5381117 m!6407130))

(assert (=> b!5381117 m!6407118))

(declare-fun m!6407132 () Bool)

(assert (=> b!5381117 m!6407132))

(assert (=> b!5381121 m!6407128))

(assert (=> bm!385380 m!6407122))

(assert (=> b!5381114 m!6407118))

(assert (=> b!5381114 m!6407118))

(assert (=> b!5381114 m!6407120))

(assert (=> b!5381123 m!6407128))

(assert (=> b!5380390 d!1722124))

(declare-fun d!1722126 () Bool)

(assert (=> d!1722126 (= (isEmpty!33482 (t!374838 (exprs!4989 (h!67940 zl!343)))) ((_ is Nil!61491) (t!374838 (exprs!4989 (h!67940 zl!343)))))))

(assert (=> b!5380392 d!1722126))

(declare-fun b!5381146 () Bool)

(declare-fun e!3338153 () Bool)

(declare-fun e!3338156 () Bool)

(assert (=> b!5381146 (= e!3338153 e!3338156)))

(declare-fun c!937933 () Bool)

(assert (=> b!5381146 (= c!937933 ((_ is Star!15105) r!7292))))

(declare-fun call!385394 () Bool)

(declare-fun bm!385387 () Bool)

(declare-fun c!937934 () Bool)

(assert (=> bm!385387 (= call!385394 (validRegex!6841 (ite c!937933 (reg!15434 r!7292) (ite c!937934 (regOne!30723 r!7292) (regOne!30722 r!7292)))))))

(declare-fun b!5381147 () Bool)

(declare-fun e!3338157 () Bool)

(declare-fun call!385393 () Bool)

(assert (=> b!5381147 (= e!3338157 call!385393)))

(declare-fun b!5381148 () Bool)

(declare-fun e!3338154 () Bool)

(assert (=> b!5381148 (= e!3338156 e!3338154)))

(assert (=> b!5381148 (= c!937934 ((_ is Union!15105) r!7292))))

(declare-fun b!5381149 () Bool)

(declare-fun e!3338152 () Bool)

(assert (=> b!5381149 (= e!3338152 call!385393)))

(declare-fun bm!385388 () Bool)

(assert (=> bm!385388 (= call!385393 (validRegex!6841 (ite c!937934 (regTwo!30723 r!7292) (regTwo!30722 r!7292))))))

(declare-fun d!1722128 () Bool)

(declare-fun res!2284651 () Bool)

(assert (=> d!1722128 (=> res!2284651 e!3338153)))

(assert (=> d!1722128 (= res!2284651 ((_ is ElementMatch!15105) r!7292))))

(assert (=> d!1722128 (= (validRegex!6841 r!7292) e!3338153)))

(declare-fun b!5381150 () Bool)

(declare-fun e!3338155 () Bool)

(assert (=> b!5381150 (= e!3338155 call!385394)))

(declare-fun bm!385389 () Bool)

(declare-fun call!385392 () Bool)

(assert (=> bm!385389 (= call!385392 call!385394)))

(declare-fun b!5381151 () Bool)

(declare-fun e!3338151 () Bool)

(assert (=> b!5381151 (= e!3338151 e!3338157)))

(declare-fun res!2284650 () Bool)

(assert (=> b!5381151 (=> (not res!2284650) (not e!3338157))))

(assert (=> b!5381151 (= res!2284650 call!385392)))

(declare-fun b!5381152 () Bool)

(declare-fun res!2284654 () Bool)

(assert (=> b!5381152 (=> (not res!2284654) (not e!3338152))))

(assert (=> b!5381152 (= res!2284654 call!385392)))

(assert (=> b!5381152 (= e!3338154 e!3338152)))

(declare-fun b!5381153 () Bool)

(declare-fun res!2284652 () Bool)

(assert (=> b!5381153 (=> res!2284652 e!3338151)))

(assert (=> b!5381153 (= res!2284652 (not ((_ is Concat!23950) r!7292)))))

(assert (=> b!5381153 (= e!3338154 e!3338151)))

(declare-fun b!5381154 () Bool)

(assert (=> b!5381154 (= e!3338156 e!3338155)))

(declare-fun res!2284653 () Bool)

(assert (=> b!5381154 (= res!2284653 (not (nullable!5274 (reg!15434 r!7292))))))

(assert (=> b!5381154 (=> (not res!2284653) (not e!3338155))))

(assert (= (and d!1722128 (not res!2284651)) b!5381146))

(assert (= (and b!5381146 c!937933) b!5381154))

(assert (= (and b!5381146 (not c!937933)) b!5381148))

(assert (= (and b!5381154 res!2284653) b!5381150))

(assert (= (and b!5381148 c!937934) b!5381152))

(assert (= (and b!5381148 (not c!937934)) b!5381153))

(assert (= (and b!5381152 res!2284654) b!5381149))

(assert (= (and b!5381153 (not res!2284652)) b!5381151))

(assert (= (and b!5381151 res!2284650) b!5381147))

(assert (= (or b!5381149 b!5381147) bm!385388))

(assert (= (or b!5381152 b!5381151) bm!385389))

(assert (= (or b!5381150 bm!385389) bm!385387))

(declare-fun m!6407134 () Bool)

(assert (=> bm!385387 m!6407134))

(declare-fun m!6407136 () Bool)

(assert (=> bm!385388 m!6407136))

(declare-fun m!6407138 () Bool)

(assert (=> b!5381154 m!6407138))

(assert (=> start!565858 d!1722128))

(declare-fun d!1722130 () Bool)

(assert (=> d!1722130 (= (flatMap!832 z!1189 lambda!278368) (choose!40456 z!1189 lambda!278368))))

(declare-fun bs!1245952 () Bool)

(assert (= bs!1245952 d!1722130))

(declare-fun m!6407140 () Bool)

(assert (=> bs!1245952 m!6407140))

(assert (=> b!5380412 d!1722130))

(declare-fun d!1722132 () Bool)

(declare-fun nullableFct!1566 (Regex!15105) Bool)

(assert (=> d!1722132 (= (nullable!5274 (h!67939 (exprs!4989 (h!67940 zl!343)))) (nullableFct!1566 (h!67939 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun bs!1245953 () Bool)

(assert (= bs!1245953 d!1722132))

(declare-fun m!6407142 () Bool)

(assert (=> bs!1245953 m!6407142))

(assert (=> b!5380412 d!1722132))

(declare-fun b!5381155 () Bool)

(declare-fun e!3338158 () (InoxSet Context!8978))

(declare-fun call!385395 () (InoxSet Context!8978))

(assert (=> b!5381155 (= e!3338158 call!385395)))

(declare-fun bm!385390 () Bool)

(assert (=> bm!385390 (= call!385395 (derivationStepZipperDown!553 (h!67939 (exprs!4989 (Context!8979 (Cons!61491 (h!67939 (exprs!4989 (h!67940 zl!343))) (t!374838 (exprs!4989 (h!67940 zl!343))))))) (Context!8979 (t!374838 (exprs!4989 (Context!8979 (Cons!61491 (h!67939 (exprs!4989 (h!67940 zl!343))) (t!374838 (exprs!4989 (h!67940 zl!343)))))))) (h!67938 s!2326)))))

(declare-fun b!5381156 () Bool)

(declare-fun e!3338160 () (InoxSet Context!8978))

(assert (=> b!5381156 (= e!3338160 e!3338158)))

(declare-fun c!937935 () Bool)

(assert (=> b!5381156 (= c!937935 ((_ is Cons!61491) (exprs!4989 (Context!8979 (Cons!61491 (h!67939 (exprs!4989 (h!67940 zl!343))) (t!374838 (exprs!4989 (h!67940 zl!343))))))))))

(declare-fun b!5381157 () Bool)

(assert (=> b!5381157 (= e!3338160 ((_ map or) call!385395 (derivationStepZipperUp!477 (Context!8979 (t!374838 (exprs!4989 (Context!8979 (Cons!61491 (h!67939 (exprs!4989 (h!67940 zl!343))) (t!374838 (exprs!4989 (h!67940 zl!343)))))))) (h!67938 s!2326))))))

(declare-fun d!1722134 () Bool)

(declare-fun c!937936 () Bool)

(declare-fun e!3338159 () Bool)

(assert (=> d!1722134 (= c!937936 e!3338159)))

(declare-fun res!2284655 () Bool)

(assert (=> d!1722134 (=> (not res!2284655) (not e!3338159))))

(assert (=> d!1722134 (= res!2284655 ((_ is Cons!61491) (exprs!4989 (Context!8979 (Cons!61491 (h!67939 (exprs!4989 (h!67940 zl!343))) (t!374838 (exprs!4989 (h!67940 zl!343))))))))))

(assert (=> d!1722134 (= (derivationStepZipperUp!477 (Context!8979 (Cons!61491 (h!67939 (exprs!4989 (h!67940 zl!343))) (t!374838 (exprs!4989 (h!67940 zl!343))))) (h!67938 s!2326)) e!3338160)))

(declare-fun b!5381158 () Bool)

(assert (=> b!5381158 (= e!3338159 (nullable!5274 (h!67939 (exprs!4989 (Context!8979 (Cons!61491 (h!67939 (exprs!4989 (h!67940 zl!343))) (t!374838 (exprs!4989 (h!67940 zl!343)))))))))))

(declare-fun b!5381159 () Bool)

(assert (=> b!5381159 (= e!3338158 ((as const (Array Context!8978 Bool)) false))))

(assert (= (and d!1722134 res!2284655) b!5381158))

(assert (= (and d!1722134 c!937936) b!5381157))

(assert (= (and d!1722134 (not c!937936)) b!5381156))

(assert (= (and b!5381156 c!937935) b!5381155))

(assert (= (and b!5381156 (not c!937935)) b!5381159))

(assert (= (or b!5381157 b!5381155) bm!385390))

(declare-fun m!6407144 () Bool)

(assert (=> bm!385390 m!6407144))

(declare-fun m!6407146 () Bool)

(assert (=> b!5381157 m!6407146))

(declare-fun m!6407148 () Bool)

(assert (=> b!5381158 m!6407148))

(assert (=> b!5380412 d!1722134))

(declare-fun d!1722136 () Bool)

(assert (=> d!1722136 (= (flatMap!832 z!1189 lambda!278368) (dynLambda!24275 lambda!278368 (h!67940 zl!343)))))

(declare-fun lt!2190794 () Unit!153938)

(assert (=> d!1722136 (= lt!2190794 (choose!40455 z!1189 (h!67940 zl!343) lambda!278368))))

(assert (=> d!1722136 (= z!1189 (store ((as const (Array Context!8978 Bool)) false) (h!67940 zl!343) true))))

(assert (=> d!1722136 (= (lemmaFlatMapOnSingletonSet!364 z!1189 (h!67940 zl!343) lambda!278368) lt!2190794)))

(declare-fun b_lambda!206113 () Bool)

(assert (=> (not b_lambda!206113) (not d!1722136)))

(declare-fun bs!1245954 () Bool)

(assert (= bs!1245954 d!1722136))

(assert (=> bs!1245954 m!6406488))

(declare-fun m!6407150 () Bool)

(assert (=> bs!1245954 m!6407150))

(declare-fun m!6407152 () Bool)

(assert (=> bs!1245954 m!6407152))

(declare-fun m!6407154 () Bool)

(assert (=> bs!1245954 m!6407154))

(assert (=> b!5380412 d!1722136))

(declare-fun b!5381160 () Bool)

(declare-fun e!3338161 () (InoxSet Context!8978))

(declare-fun call!385396 () (InoxSet Context!8978))

(assert (=> b!5381160 (= e!3338161 call!385396)))

(declare-fun bm!385391 () Bool)

(assert (=> bm!385391 (= call!385396 (derivationStepZipperDown!553 (h!67939 (exprs!4989 lt!2190677)) (Context!8979 (t!374838 (exprs!4989 lt!2190677))) (h!67938 s!2326)))))

(declare-fun b!5381161 () Bool)

(declare-fun e!3338163 () (InoxSet Context!8978))

(assert (=> b!5381161 (= e!3338163 e!3338161)))

(declare-fun c!937937 () Bool)

(assert (=> b!5381161 (= c!937937 ((_ is Cons!61491) (exprs!4989 lt!2190677)))))

(declare-fun b!5381162 () Bool)

(assert (=> b!5381162 (= e!3338163 ((_ map or) call!385396 (derivationStepZipperUp!477 (Context!8979 (t!374838 (exprs!4989 lt!2190677))) (h!67938 s!2326))))))

(declare-fun d!1722138 () Bool)

(declare-fun c!937938 () Bool)

(declare-fun e!3338162 () Bool)

(assert (=> d!1722138 (= c!937938 e!3338162)))

(declare-fun res!2284656 () Bool)

(assert (=> d!1722138 (=> (not res!2284656) (not e!3338162))))

(assert (=> d!1722138 (= res!2284656 ((_ is Cons!61491) (exprs!4989 lt!2190677)))))

(assert (=> d!1722138 (= (derivationStepZipperUp!477 lt!2190677 (h!67938 s!2326)) e!3338163)))

(declare-fun b!5381163 () Bool)

(assert (=> b!5381163 (= e!3338162 (nullable!5274 (h!67939 (exprs!4989 lt!2190677))))))

(declare-fun b!5381164 () Bool)

(assert (=> b!5381164 (= e!3338161 ((as const (Array Context!8978 Bool)) false))))

(assert (= (and d!1722138 res!2284656) b!5381163))

(assert (= (and d!1722138 c!937938) b!5381162))

(assert (= (and d!1722138 (not c!937938)) b!5381161))

(assert (= (and b!5381161 c!937937) b!5381160))

(assert (= (and b!5381161 (not c!937937)) b!5381164))

(assert (= (or b!5381162 b!5381160) bm!385391))

(declare-fun m!6407156 () Bool)

(assert (=> bm!385391 m!6407156))

(declare-fun m!6407158 () Bool)

(assert (=> b!5381162 m!6407158))

(declare-fun m!6407160 () Bool)

(assert (=> b!5381163 m!6407160))

(assert (=> b!5380412 d!1722138))

(declare-fun b!5381165 () Bool)

(declare-fun e!3338164 () (InoxSet Context!8978))

(declare-fun call!385397 () (InoxSet Context!8978))

(assert (=> b!5381165 (= e!3338164 call!385397)))

(declare-fun bm!385392 () Bool)

(assert (=> bm!385392 (= call!385397 (derivationStepZipperDown!553 (h!67939 (exprs!4989 (h!67940 zl!343))) (Context!8979 (t!374838 (exprs!4989 (h!67940 zl!343)))) (h!67938 s!2326)))))

(declare-fun b!5381166 () Bool)

(declare-fun e!3338166 () (InoxSet Context!8978))

(assert (=> b!5381166 (= e!3338166 e!3338164)))

(declare-fun c!937939 () Bool)

(assert (=> b!5381166 (= c!937939 ((_ is Cons!61491) (exprs!4989 (h!67940 zl!343))))))

(declare-fun b!5381167 () Bool)

(assert (=> b!5381167 (= e!3338166 ((_ map or) call!385397 (derivationStepZipperUp!477 (Context!8979 (t!374838 (exprs!4989 (h!67940 zl!343)))) (h!67938 s!2326))))))

(declare-fun d!1722140 () Bool)

(declare-fun c!937940 () Bool)

(declare-fun e!3338165 () Bool)

(assert (=> d!1722140 (= c!937940 e!3338165)))

(declare-fun res!2284657 () Bool)

(assert (=> d!1722140 (=> (not res!2284657) (not e!3338165))))

(assert (=> d!1722140 (= res!2284657 ((_ is Cons!61491) (exprs!4989 (h!67940 zl!343))))))

(assert (=> d!1722140 (= (derivationStepZipperUp!477 (h!67940 zl!343) (h!67938 s!2326)) e!3338166)))

(declare-fun b!5381168 () Bool)

(assert (=> b!5381168 (= e!3338165 (nullable!5274 (h!67939 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun b!5381169 () Bool)

(assert (=> b!5381169 (= e!3338164 ((as const (Array Context!8978 Bool)) false))))

(assert (= (and d!1722140 res!2284657) b!5381168))

(assert (= (and d!1722140 c!937940) b!5381167))

(assert (= (and d!1722140 (not c!937940)) b!5381166))

(assert (= (and b!5381166 c!937939) b!5381165))

(assert (= (and b!5381166 (not c!937939)) b!5381169))

(assert (= (or b!5381167 b!5381165) bm!385392))

(declare-fun m!6407162 () Bool)

(assert (=> bm!385392 m!6407162))

(declare-fun m!6407164 () Bool)

(assert (=> b!5381167 m!6407164))

(assert (=> b!5381168 m!6406486))

(assert (=> b!5380412 d!1722140))

(declare-fun b!5381192 () Bool)

(declare-fun e!3338180 () (InoxSet Context!8978))

(declare-fun call!385412 () (InoxSet Context!8978))

(declare-fun call!385414 () (InoxSet Context!8978))

(assert (=> b!5381192 (= e!3338180 ((_ map or) call!385412 call!385414))))

(declare-fun b!5381193 () Bool)

(declare-fun e!3338181 () Bool)

(assert (=> b!5381193 (= e!3338181 (nullable!5274 (regOne!30722 (h!67939 (exprs!4989 (h!67940 zl!343))))))))

(declare-fun b!5381194 () Bool)

(declare-fun e!3338182 () (InoxSet Context!8978))

(declare-fun e!3338183 () (InoxSet Context!8978))

(assert (=> b!5381194 (= e!3338182 e!3338183)))

(declare-fun c!937955 () Bool)

(assert (=> b!5381194 (= c!937955 ((_ is Concat!23950) (h!67939 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun b!5381195 () Bool)

(declare-fun c!937953 () Bool)

(assert (=> b!5381195 (= c!937953 e!3338181)))

(declare-fun res!2284660 () Bool)

(assert (=> b!5381195 (=> (not res!2284660) (not e!3338181))))

(assert (=> b!5381195 (= res!2284660 ((_ is Concat!23950) (h!67939 (exprs!4989 (h!67940 zl!343)))))))

(assert (=> b!5381195 (= e!3338180 e!3338182)))

(declare-fun b!5381196 () Bool)

(declare-fun e!3338179 () (InoxSet Context!8978))

(assert (=> b!5381196 (= e!3338179 (store ((as const (Array Context!8978 Bool)) false) lt!2190677 true))))

(declare-fun c!937951 () Bool)

(declare-fun bm!385405 () Bool)

(declare-fun call!385410 () List!61615)

(assert (=> bm!385405 (= call!385414 (derivationStepZipperDown!553 (ite c!937951 (regTwo!30723 (h!67939 (exprs!4989 (h!67940 zl!343)))) (regOne!30722 (h!67939 (exprs!4989 (h!67940 zl!343))))) (ite c!937951 lt!2190677 (Context!8979 call!385410)) (h!67938 s!2326)))))

(declare-fun bm!385406 () Bool)

(declare-fun $colon$colon!1464 (List!61615 Regex!15105) List!61615)

(assert (=> bm!385406 (= call!385410 ($colon$colon!1464 (exprs!4989 lt!2190677) (ite (or c!937953 c!937955) (regTwo!30722 (h!67939 (exprs!4989 (h!67940 zl!343)))) (h!67939 (exprs!4989 (h!67940 zl!343))))))))

(declare-fun b!5381198 () Bool)

(declare-fun call!385411 () (InoxSet Context!8978))

(assert (=> b!5381198 (= e!3338182 ((_ map or) call!385414 call!385411))))

(declare-fun b!5381199 () Bool)

(declare-fun call!385415 () (InoxSet Context!8978))

(assert (=> b!5381199 (= e!3338183 call!385415)))

(declare-fun b!5381200 () Bool)

(assert (=> b!5381200 (= e!3338179 e!3338180)))

(assert (=> b!5381200 (= c!937951 ((_ is Union!15105) (h!67939 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun bm!385407 () Bool)

(assert (=> bm!385407 (= call!385415 call!385411)))

(declare-fun b!5381201 () Bool)

(declare-fun c!937952 () Bool)

(assert (=> b!5381201 (= c!937952 ((_ is Star!15105) (h!67939 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun e!3338184 () (InoxSet Context!8978))

(assert (=> b!5381201 (= e!3338183 e!3338184)))

(declare-fun b!5381202 () Bool)

(assert (=> b!5381202 (= e!3338184 call!385415)))

(declare-fun d!1722142 () Bool)

(declare-fun c!937954 () Bool)

(assert (=> d!1722142 (= c!937954 (and ((_ is ElementMatch!15105) (h!67939 (exprs!4989 (h!67940 zl!343)))) (= (c!937749 (h!67939 (exprs!4989 (h!67940 zl!343)))) (h!67938 s!2326))))))

(assert (=> d!1722142 (= (derivationStepZipperDown!553 (h!67939 (exprs!4989 (h!67940 zl!343))) lt!2190677 (h!67938 s!2326)) e!3338179)))

(declare-fun b!5381197 () Bool)

(assert (=> b!5381197 (= e!3338184 ((as const (Array Context!8978 Bool)) false))))

(declare-fun bm!385408 () Bool)

(declare-fun call!385413 () List!61615)

(assert (=> bm!385408 (= call!385412 (derivationStepZipperDown!553 (ite c!937951 (regOne!30723 (h!67939 (exprs!4989 (h!67940 zl!343)))) (ite c!937953 (regTwo!30722 (h!67939 (exprs!4989 (h!67940 zl!343)))) (ite c!937955 (regOne!30722 (h!67939 (exprs!4989 (h!67940 zl!343)))) (reg!15434 (h!67939 (exprs!4989 (h!67940 zl!343))))))) (ite (or c!937951 c!937953) lt!2190677 (Context!8979 call!385413)) (h!67938 s!2326)))))

(declare-fun bm!385409 () Bool)

(assert (=> bm!385409 (= call!385411 call!385412)))

(declare-fun bm!385410 () Bool)

(assert (=> bm!385410 (= call!385413 call!385410)))

(assert (= (and d!1722142 c!937954) b!5381196))

(assert (= (and d!1722142 (not c!937954)) b!5381200))

(assert (= (and b!5381200 c!937951) b!5381192))

(assert (= (and b!5381200 (not c!937951)) b!5381195))

(assert (= (and b!5381195 res!2284660) b!5381193))

(assert (= (and b!5381195 c!937953) b!5381198))

(assert (= (and b!5381195 (not c!937953)) b!5381194))

(assert (= (and b!5381194 c!937955) b!5381199))

(assert (= (and b!5381194 (not c!937955)) b!5381201))

(assert (= (and b!5381201 c!937952) b!5381202))

(assert (= (and b!5381201 (not c!937952)) b!5381197))

(assert (= (or b!5381199 b!5381202) bm!385410))

(assert (= (or b!5381199 b!5381202) bm!385407))

(assert (= (or b!5381198 bm!385410) bm!385406))

(assert (= (or b!5381198 bm!385407) bm!385409))

(assert (= (or b!5381192 b!5381198) bm!385405))

(assert (= (or b!5381192 bm!385409) bm!385408))

(declare-fun m!6407166 () Bool)

(assert (=> bm!385408 m!6407166))

(declare-fun m!6407168 () Bool)

(assert (=> b!5381196 m!6407168))

(declare-fun m!6407170 () Bool)

(assert (=> bm!385405 m!6407170))

(declare-fun m!6407172 () Bool)

(assert (=> b!5381193 m!6407172))

(declare-fun m!6407174 () Bool)

(assert (=> bm!385406 m!6407174))

(assert (=> b!5380412 d!1722142))

(declare-fun d!1722144 () Bool)

(assert (=> d!1722144 (= (isEmpty!33484 (t!374839 zl!343)) ((_ is Nil!61492) (t!374839 zl!343)))))

(assert (=> b!5380414 d!1722144))

(declare-fun d!1722146 () Bool)

(declare-fun e!3338187 () Bool)

(assert (=> d!1722146 (= (matchZipper!1349 ((_ map or) lt!2190673 lt!2190666) (t!374837 s!2326)) e!3338187)))

(declare-fun res!2284663 () Bool)

(assert (=> d!1722146 (=> res!2284663 e!3338187)))

(assert (=> d!1722146 (= res!2284663 (matchZipper!1349 lt!2190673 (t!374837 s!2326)))))

(declare-fun lt!2190797 () Unit!153938)

(declare-fun choose!40459 ((InoxSet Context!8978) (InoxSet Context!8978) List!61614) Unit!153938)

(assert (=> d!1722146 (= lt!2190797 (choose!40459 lt!2190673 lt!2190666 (t!374837 s!2326)))))

(assert (=> d!1722146 (= (lemmaZipperConcatMatchesSameAsBothZippers!342 lt!2190673 lt!2190666 (t!374837 s!2326)) lt!2190797)))

(declare-fun b!5381205 () Bool)

(assert (=> b!5381205 (= e!3338187 (matchZipper!1349 lt!2190666 (t!374837 s!2326)))))

(assert (= (and d!1722146 (not res!2284663)) b!5381205))

(assert (=> d!1722146 m!6406454))

(assert (=> d!1722146 m!6406452))

(declare-fun m!6407176 () Bool)

(assert (=> d!1722146 m!6407176))

(assert (=> b!5381205 m!6406424))

(assert (=> b!5380413 d!1722146))

(declare-fun d!1722148 () Bool)

(declare-fun c!937958 () Bool)

(assert (=> d!1722148 (= c!937958 (isEmpty!33483 (t!374837 s!2326)))))

(declare-fun e!3338190 () Bool)

(assert (=> d!1722148 (= (matchZipper!1349 lt!2190673 (t!374837 s!2326)) e!3338190)))

(declare-fun b!5381210 () Bool)

(declare-fun nullableZipper!1414 ((InoxSet Context!8978)) Bool)

(assert (=> b!5381210 (= e!3338190 (nullableZipper!1414 lt!2190673))))

(declare-fun b!5381211 () Bool)

(assert (=> b!5381211 (= e!3338190 (matchZipper!1349 (derivationStepZipper!1344 lt!2190673 (head!11546 (t!374837 s!2326))) (tail!10643 (t!374837 s!2326))))))

(assert (= (and d!1722148 c!937958) b!5381210))

(assert (= (and d!1722148 (not c!937958)) b!5381211))

(declare-fun m!6407178 () Bool)

(assert (=> d!1722148 m!6407178))

(declare-fun m!6407180 () Bool)

(assert (=> b!5381210 m!6407180))

(declare-fun m!6407182 () Bool)

(assert (=> b!5381211 m!6407182))

(assert (=> b!5381211 m!6407182))

(declare-fun m!6407184 () Bool)

(assert (=> b!5381211 m!6407184))

(declare-fun m!6407186 () Bool)

(assert (=> b!5381211 m!6407186))

(assert (=> b!5381211 m!6407184))

(assert (=> b!5381211 m!6407186))

(declare-fun m!6407188 () Bool)

(assert (=> b!5381211 m!6407188))

(assert (=> b!5380413 d!1722148))

(declare-fun d!1722150 () Bool)

(declare-fun c!937959 () Bool)

(assert (=> d!1722150 (= c!937959 (isEmpty!33483 (t!374837 s!2326)))))

(declare-fun e!3338191 () Bool)

(assert (=> d!1722150 (= (matchZipper!1349 ((_ map or) lt!2190673 lt!2190666) (t!374837 s!2326)) e!3338191)))

(declare-fun b!5381212 () Bool)

(assert (=> b!5381212 (= e!3338191 (nullableZipper!1414 ((_ map or) lt!2190673 lt!2190666)))))

(declare-fun b!5381213 () Bool)

(assert (=> b!5381213 (= e!3338191 (matchZipper!1349 (derivationStepZipper!1344 ((_ map or) lt!2190673 lt!2190666) (head!11546 (t!374837 s!2326))) (tail!10643 (t!374837 s!2326))))))

(assert (= (and d!1722150 c!937959) b!5381212))

(assert (= (and d!1722150 (not c!937959)) b!5381213))

(assert (=> d!1722150 m!6407178))

(declare-fun m!6407190 () Bool)

(assert (=> b!5381212 m!6407190))

(assert (=> b!5381213 m!6407182))

(assert (=> b!5381213 m!6407182))

(declare-fun m!6407192 () Bool)

(assert (=> b!5381213 m!6407192))

(assert (=> b!5381213 m!6407186))

(assert (=> b!5381213 m!6407192))

(assert (=> b!5381213 m!6407186))

(declare-fun m!6407194 () Bool)

(assert (=> b!5381213 m!6407194))

(assert (=> b!5380413 d!1722150))

(declare-fun bs!1245955 () Bool)

(declare-fun b!5381223 () Bool)

(assert (= bs!1245955 (and b!5381223 b!5380388)))

(declare-fun lambda!278442 () Int)

(assert (=> bs!1245955 (not (= lambda!278442 lambda!278371))))

(declare-fun bs!1245956 () Bool)

(assert (= bs!1245956 (and b!5381223 b!5380404)))

(assert (=> bs!1245956 (not (= lambda!278442 lambda!278366))))

(declare-fun bs!1245957 () Bool)

(assert (= bs!1245957 (and b!5381223 b!5380886)))

(assert (=> bs!1245957 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (reg!15434 r!7292) (reg!15434 lt!2190664)) (= r!7292 lt!2190664)) (= lambda!278442 lambda!278417))))

(declare-fun bs!1245958 () Bool)

(assert (= bs!1245958 (and b!5381223 b!5380403)))

(assert (=> bs!1245958 (not (= lambda!278442 lambda!278370))))

(assert (=> bs!1245958 (not (= lambda!278442 lambda!278369))))

(assert (=> bs!1245956 (not (= lambda!278442 lambda!278367))))

(assert (=> bs!1245955 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (reg!15434 r!7292) (reg!15434 (regOne!30722 r!7292))) (= r!7292 lt!2190664)) (= lambda!278442 lambda!278372))))

(declare-fun bs!1245959 () Bool)

(assert (= bs!1245959 (and b!5381223 d!1722092)))

(assert (=> bs!1245959 (not (= lambda!278442 lambda!278441))))

(declare-fun bs!1245960 () Bool)

(assert (= bs!1245960 (and b!5381223 d!1722078)))

(assert (=> bs!1245960 (not (= lambda!278442 lambda!278433))))

(assert (=> bs!1245960 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (reg!15434 r!7292) (reg!15434 (regOne!30722 r!7292))) (= r!7292 (Star!15105 (reg!15434 (regOne!30722 r!7292))))) (= lambda!278442 lambda!278434))))

(declare-fun bs!1245961 () Bool)

(assert (= bs!1245961 (and b!5381223 d!1722032)))

(assert (=> bs!1245961 (not (= lambda!278442 lambda!278401))))

(declare-fun bs!1245962 () Bool)

(assert (= bs!1245962 (and b!5381223 b!5380881)))

(assert (=> bs!1245962 (not (= lambda!278442 lambda!278419))))

(assert (=> bs!1245959 (not (= lambda!278442 lambda!278440))))

(assert (=> bs!1245955 (not (= lambda!278442 lambda!278373))))

(assert (=> b!5381223 true))

(assert (=> b!5381223 true))

(declare-fun bs!1245963 () Bool)

(declare-fun b!5381218 () Bool)

(assert (= bs!1245963 (and b!5381218 b!5380388)))

(declare-fun lambda!278443 () Int)

(assert (=> bs!1245963 (not (= lambda!278443 lambda!278371))))

(declare-fun bs!1245964 () Bool)

(assert (= bs!1245964 (and b!5381218 b!5380404)))

(assert (=> bs!1245964 (not (= lambda!278443 lambda!278366))))

(declare-fun bs!1245965 () Bool)

(assert (= bs!1245965 (and b!5381218 b!5380886)))

(assert (=> bs!1245965 (not (= lambda!278443 lambda!278417))))

(declare-fun bs!1245966 () Bool)

(assert (= bs!1245966 (and b!5381218 b!5380403)))

(assert (=> bs!1245966 (= (= (regOne!30722 r!7292) lt!2190664) (= lambda!278443 lambda!278370))))

(assert (=> bs!1245966 (not (= lambda!278443 lambda!278369))))

(assert (=> bs!1245964 (= lambda!278443 lambda!278367)))

(declare-fun bs!1245967 () Bool)

(assert (= bs!1245967 (and b!5381218 b!5381223)))

(assert (=> bs!1245967 (not (= lambda!278443 lambda!278442))))

(assert (=> bs!1245963 (not (= lambda!278443 lambda!278372))))

(declare-fun bs!1245968 () Bool)

(assert (= bs!1245968 (and b!5381218 d!1722092)))

(assert (=> bs!1245968 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278443 lambda!278441))))

(declare-fun bs!1245969 () Bool)

(assert (= bs!1245969 (and b!5381218 d!1722078)))

(assert (=> bs!1245969 (not (= lambda!278443 lambda!278433))))

(assert (=> bs!1245969 (not (= lambda!278443 lambda!278434))))

(declare-fun bs!1245970 () Bool)

(assert (= bs!1245970 (and b!5381218 d!1722032)))

(assert (=> bs!1245970 (not (= lambda!278443 lambda!278401))))

(declare-fun bs!1245971 () Bool)

(assert (= bs!1245971 (and b!5381218 b!5380881)))

(assert (=> bs!1245971 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (regOne!30722 lt!2190664)) (= (regTwo!30722 r!7292) (regTwo!30722 lt!2190664))) (= lambda!278443 lambda!278419))))

(assert (=> bs!1245968 (not (= lambda!278443 lambda!278440))))

(assert (=> bs!1245963 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278443 lambda!278373))))

(assert (=> b!5381218 true))

(assert (=> b!5381218 true))

(declare-fun b!5381214 () Bool)

(declare-fun e!3338196 () Bool)

(declare-fun e!3338194 () Bool)

(assert (=> b!5381214 (= e!3338196 e!3338194)))

(declare-fun c!937962 () Bool)

(assert (=> b!5381214 (= c!937962 ((_ is Star!15105) r!7292))))

(declare-fun b!5381215 () Bool)

(declare-fun c!937963 () Bool)

(assert (=> b!5381215 (= c!937963 ((_ is ElementMatch!15105) r!7292))))

(declare-fun e!3338192 () Bool)

(declare-fun e!3338198 () Bool)

(assert (=> b!5381215 (= e!3338192 e!3338198)))

(declare-fun b!5381216 () Bool)

(declare-fun e!3338195 () Bool)

(assert (=> b!5381216 (= e!3338195 (matchRSpec!2208 (regTwo!30723 r!7292) s!2326))))

(declare-fun b!5381217 () Bool)

(declare-fun e!3338197 () Bool)

(declare-fun call!385417 () Bool)

(assert (=> b!5381217 (= e!3338197 call!385417)))

(declare-fun call!385416 () Bool)

(assert (=> b!5381218 (= e!3338194 call!385416)))

(declare-fun b!5381219 () Bool)

(declare-fun c!937960 () Bool)

(assert (=> b!5381219 (= c!937960 ((_ is Union!15105) r!7292))))

(assert (=> b!5381219 (= e!3338198 e!3338196)))

(declare-fun bm!385411 () Bool)

(assert (=> bm!385411 (= call!385417 (isEmpty!33483 s!2326))))

(declare-fun b!5381220 () Bool)

(assert (=> b!5381220 (= e!3338196 e!3338195)))

(declare-fun res!2284664 () Bool)

(assert (=> b!5381220 (= res!2284664 (matchRSpec!2208 (regOne!30723 r!7292) s!2326))))

(assert (=> b!5381220 (=> res!2284664 e!3338195)))

(declare-fun bm!385412 () Bool)

(assert (=> bm!385412 (= call!385416 (Exists!2286 (ite c!937962 lambda!278442 lambda!278443)))))

(declare-fun b!5381221 () Bool)

(declare-fun res!2284665 () Bool)

(declare-fun e!3338193 () Bool)

(assert (=> b!5381221 (=> res!2284665 e!3338193)))

(assert (=> b!5381221 (= res!2284665 call!385417)))

(assert (=> b!5381221 (= e!3338194 e!3338193)))

(declare-fun b!5381222 () Bool)

(assert (=> b!5381222 (= e!3338197 e!3338192)))

(declare-fun res!2284666 () Bool)

(assert (=> b!5381222 (= res!2284666 (not ((_ is EmptyLang!15105) r!7292)))))

(assert (=> b!5381222 (=> (not res!2284666) (not e!3338192))))

(assert (=> b!5381223 (= e!3338193 call!385416)))

(declare-fun d!1722152 () Bool)

(declare-fun c!937961 () Bool)

(assert (=> d!1722152 (= c!937961 ((_ is EmptyExpr!15105) r!7292))))

(assert (=> d!1722152 (= (matchRSpec!2208 r!7292 s!2326) e!3338197)))

(declare-fun b!5381224 () Bool)

(assert (=> b!5381224 (= e!3338198 (= s!2326 (Cons!61490 (c!937749 r!7292) Nil!61490)))))

(assert (= (and d!1722152 c!937961) b!5381217))

(assert (= (and d!1722152 (not c!937961)) b!5381222))

(assert (= (and b!5381222 res!2284666) b!5381215))

(assert (= (and b!5381215 c!937963) b!5381224))

(assert (= (and b!5381215 (not c!937963)) b!5381219))

(assert (= (and b!5381219 c!937960) b!5381220))

(assert (= (and b!5381219 (not c!937960)) b!5381214))

(assert (= (and b!5381220 (not res!2284664)) b!5381216))

(assert (= (and b!5381214 c!937962) b!5381221))

(assert (= (and b!5381214 (not c!937962)) b!5381218))

(assert (= (and b!5381221 (not res!2284665)) b!5381223))

(assert (= (or b!5381223 b!5381218) bm!385412))

(assert (= (or b!5381217 b!5381221) bm!385411))

(declare-fun m!6407196 () Bool)

(assert (=> b!5381216 m!6407196))

(declare-fun m!6407198 () Bool)

(assert (=> bm!385411 m!6407198))

(declare-fun m!6407200 () Bool)

(assert (=> b!5381220 m!6407200))

(declare-fun m!6407202 () Bool)

(assert (=> bm!385412 m!6407202))

(assert (=> b!5380393 d!1722152))

(declare-fun b!5381225 () Bool)

(declare-fun res!2284670 () Bool)

(declare-fun e!3338199 () Bool)

(assert (=> b!5381225 (=> res!2284670 e!3338199)))

(assert (=> b!5381225 (= res!2284670 (not (isEmpty!33483 (tail!10643 s!2326))))))

(declare-fun b!5381226 () Bool)

(declare-fun e!3338201 () Bool)

(assert (=> b!5381226 (= e!3338201 e!3338199)))

(declare-fun res!2284674 () Bool)

(assert (=> b!5381226 (=> res!2284674 e!3338199)))

(declare-fun call!385418 () Bool)

(assert (=> b!5381226 (= res!2284674 call!385418)))

(declare-fun b!5381227 () Bool)

(declare-fun e!3338202 () Bool)

(declare-fun lt!2190798 () Bool)

(assert (=> b!5381227 (= e!3338202 (not lt!2190798))))

(declare-fun b!5381228 () Bool)

(declare-fun e!3338200 () Bool)

(assert (=> b!5381228 (= e!3338200 (matchR!7290 (derivativeStep!4235 r!7292 (head!11546 s!2326)) (tail!10643 s!2326)))))

(declare-fun b!5381229 () Bool)

(assert (=> b!5381229 (= e!3338200 (nullable!5274 r!7292))))

(declare-fun b!5381230 () Bool)

(declare-fun e!3338205 () Bool)

(assert (=> b!5381230 (= e!3338205 e!3338202)))

(declare-fun c!937966 () Bool)

(assert (=> b!5381230 (= c!937966 ((_ is EmptyLang!15105) r!7292))))

(declare-fun bm!385413 () Bool)

(assert (=> bm!385413 (= call!385418 (isEmpty!33483 s!2326))))

(declare-fun b!5381232 () Bool)

(assert (=> b!5381232 (= e!3338199 (not (= (head!11546 s!2326) (c!937749 r!7292))))))

(declare-fun b!5381233 () Bool)

(declare-fun e!3338203 () Bool)

(assert (=> b!5381233 (= e!3338203 e!3338201)))

(declare-fun res!2284667 () Bool)

(assert (=> b!5381233 (=> (not res!2284667) (not e!3338201))))

(assert (=> b!5381233 (= res!2284667 (not lt!2190798))))

(declare-fun b!5381234 () Bool)

(declare-fun e!3338204 () Bool)

(assert (=> b!5381234 (= e!3338204 (= (head!11546 s!2326) (c!937749 r!7292)))))

(declare-fun b!5381235 () Bool)

(declare-fun res!2284668 () Bool)

(assert (=> b!5381235 (=> (not res!2284668) (not e!3338204))))

(assert (=> b!5381235 (= res!2284668 (isEmpty!33483 (tail!10643 s!2326)))))

(declare-fun b!5381236 () Bool)

(declare-fun res!2284672 () Bool)

(assert (=> b!5381236 (=> (not res!2284672) (not e!3338204))))

(assert (=> b!5381236 (= res!2284672 (not call!385418))))

(declare-fun b!5381237 () Bool)

(declare-fun res!2284673 () Bool)

(assert (=> b!5381237 (=> res!2284673 e!3338203)))

(assert (=> b!5381237 (= res!2284673 e!3338204)))

(declare-fun res!2284669 () Bool)

(assert (=> b!5381237 (=> (not res!2284669) (not e!3338204))))

(assert (=> b!5381237 (= res!2284669 lt!2190798)))

(declare-fun b!5381238 () Bool)

(declare-fun res!2284671 () Bool)

(assert (=> b!5381238 (=> res!2284671 e!3338203)))

(assert (=> b!5381238 (= res!2284671 (not ((_ is ElementMatch!15105) r!7292)))))

(assert (=> b!5381238 (= e!3338202 e!3338203)))

(declare-fun b!5381231 () Bool)

(assert (=> b!5381231 (= e!3338205 (= lt!2190798 call!385418))))

(declare-fun d!1722154 () Bool)

(assert (=> d!1722154 e!3338205))

(declare-fun c!937965 () Bool)

(assert (=> d!1722154 (= c!937965 ((_ is EmptyExpr!15105) r!7292))))

(assert (=> d!1722154 (= lt!2190798 e!3338200)))

(declare-fun c!937964 () Bool)

(assert (=> d!1722154 (= c!937964 (isEmpty!33483 s!2326))))

(assert (=> d!1722154 (validRegex!6841 r!7292)))

(assert (=> d!1722154 (= (matchR!7290 r!7292 s!2326) lt!2190798)))

(assert (= (and d!1722154 c!937964) b!5381229))

(assert (= (and d!1722154 (not c!937964)) b!5381228))

(assert (= (and d!1722154 c!937965) b!5381231))

(assert (= (and d!1722154 (not c!937965)) b!5381230))

(assert (= (and b!5381230 c!937966) b!5381227))

(assert (= (and b!5381230 (not c!937966)) b!5381238))

(assert (= (and b!5381238 (not res!2284671)) b!5381237))

(assert (= (and b!5381237 res!2284669) b!5381236))

(assert (= (and b!5381236 res!2284672) b!5381235))

(assert (= (and b!5381235 res!2284668) b!5381234))

(assert (= (and b!5381237 (not res!2284673)) b!5381233))

(assert (= (and b!5381233 res!2284667) b!5381226))

(assert (= (and b!5381226 (not res!2284674)) b!5381225))

(assert (= (and b!5381225 (not res!2284670)) b!5381232))

(assert (= (or b!5381231 b!5381226 b!5381236) bm!385413))

(declare-fun m!6407204 () Bool)

(assert (=> b!5381235 m!6407204))

(assert (=> b!5381235 m!6407204))

(declare-fun m!6407206 () Bool)

(assert (=> b!5381235 m!6407206))

(assert (=> d!1722154 m!6407198))

(assert (=> d!1722154 m!6406428))

(declare-fun m!6407208 () Bool)

(assert (=> b!5381229 m!6407208))

(declare-fun m!6407210 () Bool)

(assert (=> b!5381228 m!6407210))

(assert (=> b!5381228 m!6407210))

(declare-fun m!6407212 () Bool)

(assert (=> b!5381228 m!6407212))

(assert (=> b!5381228 m!6407204))

(assert (=> b!5381228 m!6407212))

(assert (=> b!5381228 m!6407204))

(declare-fun m!6407214 () Bool)

(assert (=> b!5381228 m!6407214))

(assert (=> b!5381232 m!6407210))

(assert (=> bm!385413 m!6407198))

(assert (=> b!5381225 m!6407204))

(assert (=> b!5381225 m!6407204))

(assert (=> b!5381225 m!6407206))

(assert (=> b!5381234 m!6407210))

(assert (=> b!5380393 d!1722154))

(declare-fun d!1722156 () Bool)

(assert (=> d!1722156 (= (matchR!7290 r!7292 s!2326) (matchRSpec!2208 r!7292 s!2326))))

(declare-fun lt!2190799 () Unit!153938)

(assert (=> d!1722156 (= lt!2190799 (choose!40451 r!7292 s!2326))))

(assert (=> d!1722156 (validRegex!6841 r!7292)))

(assert (=> d!1722156 (= (mainMatchTheorem!2208 r!7292 s!2326) lt!2190799)))

(declare-fun bs!1245972 () Bool)

(assert (= bs!1245972 d!1722156))

(assert (=> bs!1245972 m!6406432))

(assert (=> bs!1245972 m!6406430))

(declare-fun m!6407216 () Bool)

(assert (=> bs!1245972 m!6407216))

(assert (=> bs!1245972 m!6406428))

(assert (=> b!5380393 d!1722156))

(declare-fun b!5381259 () Bool)

(declare-fun e!3338218 () Regex!15105)

(assert (=> b!5381259 (= e!3338218 EmptyLang!15105)))

(declare-fun b!5381261 () Bool)

(assert (=> b!5381261 (= e!3338218 (Union!15105 (h!67939 (unfocusZipperList!547 zl!343)) (generalisedUnion!1034 (t!374838 (unfocusZipperList!547 zl!343)))))))

(declare-fun b!5381262 () Bool)

(declare-fun e!3338221 () Bool)

(declare-fun e!3338219 () Bool)

(assert (=> b!5381262 (= e!3338221 e!3338219)))

(declare-fun c!937978 () Bool)

(declare-fun tail!10644 (List!61615) List!61615)

(assert (=> b!5381262 (= c!937978 (isEmpty!33482 (tail!10644 (unfocusZipperList!547 zl!343))))))

(declare-fun b!5381263 () Bool)

(declare-fun e!3338223 () Bool)

(assert (=> b!5381263 (= e!3338223 e!3338221)))

(declare-fun c!937976 () Bool)

(assert (=> b!5381263 (= c!937976 (isEmpty!33482 (unfocusZipperList!547 zl!343)))))

(declare-fun b!5381264 () Bool)

(declare-fun e!3338222 () Bool)

(assert (=> b!5381264 (= e!3338222 (isEmpty!33482 (t!374838 (unfocusZipperList!547 zl!343))))))

(declare-fun b!5381265 () Bool)

(declare-fun lt!2190802 () Regex!15105)

(declare-fun isEmptyLang!956 (Regex!15105) Bool)

(assert (=> b!5381265 (= e!3338221 (isEmptyLang!956 lt!2190802))))

(declare-fun b!5381266 () Bool)

(declare-fun isUnion!388 (Regex!15105) Bool)

(assert (=> b!5381266 (= e!3338219 (isUnion!388 lt!2190802))))

(declare-fun d!1722158 () Bool)

(assert (=> d!1722158 e!3338223))

(declare-fun res!2284679 () Bool)

(assert (=> d!1722158 (=> (not res!2284679) (not e!3338223))))

(assert (=> d!1722158 (= res!2284679 (validRegex!6841 lt!2190802))))

(declare-fun e!3338220 () Regex!15105)

(assert (=> d!1722158 (= lt!2190802 e!3338220)))

(declare-fun c!937977 () Bool)

(assert (=> d!1722158 (= c!937977 e!3338222)))

(declare-fun res!2284680 () Bool)

(assert (=> d!1722158 (=> (not res!2284680) (not e!3338222))))

(assert (=> d!1722158 (= res!2284680 ((_ is Cons!61491) (unfocusZipperList!547 zl!343)))))

(declare-fun lambda!278446 () Int)

(declare-fun forall!14507 (List!61615 Int) Bool)

(assert (=> d!1722158 (forall!14507 (unfocusZipperList!547 zl!343) lambda!278446)))

(assert (=> d!1722158 (= (generalisedUnion!1034 (unfocusZipperList!547 zl!343)) lt!2190802)))

(declare-fun b!5381260 () Bool)

(assert (=> b!5381260 (= e!3338220 (h!67939 (unfocusZipperList!547 zl!343)))))

(declare-fun b!5381267 () Bool)

(declare-fun head!11547 (List!61615) Regex!15105)

(assert (=> b!5381267 (= e!3338219 (= lt!2190802 (head!11547 (unfocusZipperList!547 zl!343))))))

(declare-fun b!5381268 () Bool)

(assert (=> b!5381268 (= e!3338220 e!3338218)))

(declare-fun c!937975 () Bool)

(assert (=> b!5381268 (= c!937975 ((_ is Cons!61491) (unfocusZipperList!547 zl!343)))))

(assert (= (and d!1722158 res!2284680) b!5381264))

(assert (= (and d!1722158 c!937977) b!5381260))

(assert (= (and d!1722158 (not c!937977)) b!5381268))

(assert (= (and b!5381268 c!937975) b!5381261))

(assert (= (and b!5381268 (not c!937975)) b!5381259))

(assert (= (and d!1722158 res!2284679) b!5381263))

(assert (= (and b!5381263 c!937976) b!5381265))

(assert (= (and b!5381263 (not c!937976)) b!5381262))

(assert (= (and b!5381262 c!937978) b!5381267))

(assert (= (and b!5381262 (not c!937978)) b!5381266))

(declare-fun m!6407218 () Bool)

(assert (=> b!5381264 m!6407218))

(declare-fun m!6407220 () Bool)

(assert (=> b!5381261 m!6407220))

(declare-fun m!6407222 () Bool)

(assert (=> d!1722158 m!6407222))

(assert (=> d!1722158 m!6406396))

(declare-fun m!6407224 () Bool)

(assert (=> d!1722158 m!6407224))

(declare-fun m!6407226 () Bool)

(assert (=> b!5381265 m!6407226))

(assert (=> b!5381262 m!6406396))

(declare-fun m!6407228 () Bool)

(assert (=> b!5381262 m!6407228))

(assert (=> b!5381262 m!6407228))

(declare-fun m!6407230 () Bool)

(assert (=> b!5381262 m!6407230))

(declare-fun m!6407232 () Bool)

(assert (=> b!5381266 m!6407232))

(assert (=> b!5381267 m!6406396))

(declare-fun m!6407234 () Bool)

(assert (=> b!5381267 m!6407234))

(assert (=> b!5381263 m!6406396))

(declare-fun m!6407236 () Bool)

(assert (=> b!5381263 m!6407236))

(assert (=> b!5380394 d!1722158))

(declare-fun bs!1245973 () Bool)

(declare-fun d!1722160 () Bool)

(assert (= bs!1245973 (and d!1722160 d!1722158)))

(declare-fun lambda!278449 () Int)

(assert (=> bs!1245973 (= lambda!278449 lambda!278446)))

(declare-fun lt!2190805 () List!61615)

(assert (=> d!1722160 (forall!14507 lt!2190805 lambda!278449)))

(declare-fun e!3338226 () List!61615)

(assert (=> d!1722160 (= lt!2190805 e!3338226)))

(declare-fun c!937981 () Bool)

(assert (=> d!1722160 (= c!937981 ((_ is Cons!61492) zl!343))))

(assert (=> d!1722160 (= (unfocusZipperList!547 zl!343) lt!2190805)))

(declare-fun b!5381273 () Bool)

(assert (=> b!5381273 (= e!3338226 (Cons!61491 (generalisedConcat!774 (exprs!4989 (h!67940 zl!343))) (unfocusZipperList!547 (t!374839 zl!343))))))

(declare-fun b!5381274 () Bool)

(assert (=> b!5381274 (= e!3338226 Nil!61491)))

(assert (= (and d!1722160 c!937981) b!5381273))

(assert (= (and d!1722160 (not c!937981)) b!5381274))

(declare-fun m!6407238 () Bool)

(assert (=> d!1722160 m!6407238))

(assert (=> b!5381273 m!6406438))

(declare-fun m!6407240 () Bool)

(assert (=> b!5381273 m!6407240))

(assert (=> b!5380394 d!1722160))

(declare-fun d!1722162 () Bool)

(declare-fun c!937982 () Bool)

(assert (=> d!1722162 (= c!937982 (isEmpty!33483 s!2326))))

(declare-fun e!3338227 () Bool)

(assert (=> d!1722162 (= (matchZipper!1349 lt!2190654 s!2326) e!3338227)))

(declare-fun b!5381275 () Bool)

(assert (=> b!5381275 (= e!3338227 (nullableZipper!1414 lt!2190654))))

(declare-fun b!5381276 () Bool)

(assert (=> b!5381276 (= e!3338227 (matchZipper!1349 (derivationStepZipper!1344 lt!2190654 (head!11546 s!2326)) (tail!10643 s!2326)))))

(assert (= (and d!1722162 c!937982) b!5381275))

(assert (= (and d!1722162 (not c!937982)) b!5381276))

(assert (=> d!1722162 m!6407198))

(declare-fun m!6407242 () Bool)

(assert (=> b!5381275 m!6407242))

(assert (=> b!5381276 m!6407210))

(assert (=> b!5381276 m!6407210))

(declare-fun m!6407244 () Bool)

(assert (=> b!5381276 m!6407244))

(assert (=> b!5381276 m!6407204))

(assert (=> b!5381276 m!6407244))

(assert (=> b!5381276 m!6407204))

(declare-fun m!6407246 () Bool)

(assert (=> b!5381276 m!6407246))

(assert (=> b!5380416 d!1722162))

(declare-fun d!1722164 () Bool)

(declare-fun c!937983 () Bool)

(assert (=> d!1722164 (= c!937983 (isEmpty!33483 (t!374837 s!2326)))))

(declare-fun e!3338228 () Bool)

(assert (=> d!1722164 (= (matchZipper!1349 lt!2190655 (t!374837 s!2326)) e!3338228)))

(declare-fun b!5381277 () Bool)

(assert (=> b!5381277 (= e!3338228 (nullableZipper!1414 lt!2190655))))

(declare-fun b!5381278 () Bool)

(assert (=> b!5381278 (= e!3338228 (matchZipper!1349 (derivationStepZipper!1344 lt!2190655 (head!11546 (t!374837 s!2326))) (tail!10643 (t!374837 s!2326))))))

(assert (= (and d!1722164 c!937983) b!5381277))

(assert (= (and d!1722164 (not c!937983)) b!5381278))

(assert (=> d!1722164 m!6407178))

(declare-fun m!6407248 () Bool)

(assert (=> b!5381277 m!6407248))

(assert (=> b!5381278 m!6407182))

(assert (=> b!5381278 m!6407182))

(declare-fun m!6407250 () Bool)

(assert (=> b!5381278 m!6407250))

(assert (=> b!5381278 m!6407186))

(assert (=> b!5381278 m!6407250))

(assert (=> b!5381278 m!6407186))

(declare-fun m!6407252 () Bool)

(assert (=> b!5381278 m!6407252))

(assert (=> b!5380416 d!1722164))

(declare-fun bs!1245974 () Bool)

(declare-fun d!1722166 () Bool)

(assert (= bs!1245974 (and d!1722166 d!1722158)))

(declare-fun lambda!278452 () Int)

(assert (=> bs!1245974 (= lambda!278452 lambda!278446)))

(declare-fun bs!1245975 () Bool)

(assert (= bs!1245975 (and d!1722166 d!1722160)))

(assert (=> bs!1245975 (= lambda!278452 lambda!278449)))

(assert (=> d!1722166 (= (inv!81009 setElem!34901) (forall!14507 (exprs!4989 setElem!34901) lambda!278452))))

(declare-fun bs!1245976 () Bool)

(assert (= bs!1245976 d!1722166))

(declare-fun m!6407254 () Bool)

(assert (=> bs!1245976 m!6407254))

(assert (=> setNonEmpty!34901 d!1722166))

(declare-fun b!5381280 () Bool)

(declare-fun e!3338230 () List!61614)

(assert (=> b!5381280 (= e!3338230 (Cons!61490 (h!67938 (_1!35607 lt!2190675)) (++!13408 (t!374837 (_1!35607 lt!2190675)) lt!2190645)))))

(declare-fun b!5381279 () Bool)

(assert (=> b!5381279 (= e!3338230 lt!2190645)))

(declare-fun b!5381282 () Bool)

(declare-fun e!3338229 () Bool)

(declare-fun lt!2190806 () List!61614)

(assert (=> b!5381282 (= e!3338229 (or (not (= lt!2190645 Nil!61490)) (= lt!2190806 (_1!35607 lt!2190675))))))

(declare-fun d!1722168 () Bool)

(assert (=> d!1722168 e!3338229))

(declare-fun res!2284681 () Bool)

(assert (=> d!1722168 (=> (not res!2284681) (not e!3338229))))

(assert (=> d!1722168 (= res!2284681 (= (content!11002 lt!2190806) ((_ map or) (content!11002 (_1!35607 lt!2190675)) (content!11002 lt!2190645))))))

(assert (=> d!1722168 (= lt!2190806 e!3338230)))

(declare-fun c!937984 () Bool)

(assert (=> d!1722168 (= c!937984 ((_ is Nil!61490) (_1!35607 lt!2190675)))))

(assert (=> d!1722168 (= (++!13408 (_1!35607 lt!2190675) lt!2190645) lt!2190806)))

(declare-fun b!5381281 () Bool)

(declare-fun res!2284682 () Bool)

(assert (=> b!5381281 (=> (not res!2284682) (not e!3338229))))

(assert (=> b!5381281 (= res!2284682 (= (size!39805 lt!2190806) (+ (size!39805 (_1!35607 lt!2190675)) (size!39805 lt!2190645))))))

(assert (= (and d!1722168 c!937984) b!5381279))

(assert (= (and d!1722168 (not c!937984)) b!5381280))

(assert (= (and d!1722168 res!2284681) b!5381281))

(assert (= (and b!5381281 res!2284682) b!5381282))

(declare-fun m!6407256 () Bool)

(assert (=> b!5381280 m!6407256))

(declare-fun m!6407258 () Bool)

(assert (=> d!1722168 m!6407258))

(assert (=> d!1722168 m!6406850))

(declare-fun m!6407260 () Bool)

(assert (=> d!1722168 m!6407260))

(declare-fun m!6407262 () Bool)

(assert (=> b!5381281 m!6407262))

(assert (=> b!5381281 m!6406856))

(declare-fun m!6407264 () Bool)

(assert (=> b!5381281 m!6407264))

(assert (=> b!5380418 d!1722168))

(declare-fun b!5381284 () Bool)

(declare-fun e!3338232 () List!61614)

(assert (=> b!5381284 (= e!3338232 (Cons!61490 (h!67938 lt!2190665) (++!13408 (t!374837 lt!2190665) (_2!35607 lt!2190644))))))

(declare-fun b!5381283 () Bool)

(assert (=> b!5381283 (= e!3338232 (_2!35607 lt!2190644))))

(declare-fun e!3338231 () Bool)

(declare-fun lt!2190807 () List!61614)

(declare-fun b!5381286 () Bool)

(assert (=> b!5381286 (= e!3338231 (or (not (= (_2!35607 lt!2190644) Nil!61490)) (= lt!2190807 lt!2190665)))))

(declare-fun d!1722170 () Bool)

(assert (=> d!1722170 e!3338231))

(declare-fun res!2284683 () Bool)

(assert (=> d!1722170 (=> (not res!2284683) (not e!3338231))))

(assert (=> d!1722170 (= res!2284683 (= (content!11002 lt!2190807) ((_ map or) (content!11002 lt!2190665) (content!11002 (_2!35607 lt!2190644)))))))

(assert (=> d!1722170 (= lt!2190807 e!3338232)))

(declare-fun c!937985 () Bool)

(assert (=> d!1722170 (= c!937985 ((_ is Nil!61490) lt!2190665))))

(assert (=> d!1722170 (= (++!13408 lt!2190665 (_2!35607 lt!2190644)) lt!2190807)))

(declare-fun b!5381285 () Bool)

(declare-fun res!2284684 () Bool)

(assert (=> b!5381285 (=> (not res!2284684) (not e!3338231))))

(assert (=> b!5381285 (= res!2284684 (= (size!39805 lt!2190807) (+ (size!39805 lt!2190665) (size!39805 (_2!35607 lt!2190644)))))))

(assert (= (and d!1722170 c!937985) b!5381283))

(assert (= (and d!1722170 (not c!937985)) b!5381284))

(assert (= (and d!1722170 res!2284683) b!5381285))

(assert (= (and b!5381285 res!2284684) b!5381286))

(declare-fun m!6407266 () Bool)

(assert (=> b!5381284 m!6407266))

(declare-fun m!6407268 () Bool)

(assert (=> d!1722170 m!6407268))

(declare-fun m!6407270 () Bool)

(assert (=> d!1722170 m!6407270))

(declare-fun m!6407272 () Bool)

(assert (=> d!1722170 m!6407272))

(declare-fun m!6407274 () Bool)

(assert (=> b!5381285 m!6407274))

(declare-fun m!6407276 () Bool)

(assert (=> b!5381285 m!6407276))

(declare-fun m!6407278 () Bool)

(assert (=> b!5381285 m!6407278))

(assert (=> b!5380418 d!1722170))

(declare-fun b!5381288 () Bool)

(declare-fun e!3338234 () List!61614)

(assert (=> b!5381288 (= e!3338234 (Cons!61490 (h!67938 (_2!35607 lt!2190675)) (++!13408 (t!374837 (_2!35607 lt!2190675)) (_2!35607 lt!2190644))))))

(declare-fun b!5381287 () Bool)

(assert (=> b!5381287 (= e!3338234 (_2!35607 lt!2190644))))

(declare-fun e!3338233 () Bool)

(declare-fun b!5381290 () Bool)

(declare-fun lt!2190808 () List!61614)

(assert (=> b!5381290 (= e!3338233 (or (not (= (_2!35607 lt!2190644) Nil!61490)) (= lt!2190808 (_2!35607 lt!2190675))))))

(declare-fun d!1722172 () Bool)

(assert (=> d!1722172 e!3338233))

(declare-fun res!2284685 () Bool)

(assert (=> d!1722172 (=> (not res!2284685) (not e!3338233))))

(assert (=> d!1722172 (= res!2284685 (= (content!11002 lt!2190808) ((_ map or) (content!11002 (_2!35607 lt!2190675)) (content!11002 (_2!35607 lt!2190644)))))))

(assert (=> d!1722172 (= lt!2190808 e!3338234)))

(declare-fun c!937986 () Bool)

(assert (=> d!1722172 (= c!937986 ((_ is Nil!61490) (_2!35607 lt!2190675)))))

(assert (=> d!1722172 (= (++!13408 (_2!35607 lt!2190675) (_2!35607 lt!2190644)) lt!2190808)))

(declare-fun b!5381289 () Bool)

(declare-fun res!2284686 () Bool)

(assert (=> b!5381289 (=> (not res!2284686) (not e!3338233))))

(assert (=> b!5381289 (= res!2284686 (= (size!39805 lt!2190808) (+ (size!39805 (_2!35607 lt!2190675)) (size!39805 (_2!35607 lt!2190644)))))))

(assert (= (and d!1722172 c!937986) b!5381287))

(assert (= (and d!1722172 (not c!937986)) b!5381288))

(assert (= (and d!1722172 res!2284685) b!5381289))

(assert (= (and b!5381289 res!2284686) b!5381290))

(declare-fun m!6407280 () Bool)

(assert (=> b!5381288 m!6407280))

(declare-fun m!6407282 () Bool)

(assert (=> d!1722172 m!6407282))

(assert (=> d!1722172 m!6406852))

(assert (=> d!1722172 m!6407272))

(declare-fun m!6407284 () Bool)

(assert (=> b!5381289 m!6407284))

(assert (=> b!5381289 m!6406858))

(assert (=> b!5381289 m!6407278))

(assert (=> b!5380418 d!1722172))

(declare-fun d!1722174 () Bool)

(assert (=> d!1722174 (= (++!13408 (++!13408 (_1!35607 lt!2190675) (_2!35607 lt!2190675)) (_2!35607 lt!2190644)) (++!13408 (_1!35607 lt!2190675) (++!13408 (_2!35607 lt!2190675) (_2!35607 lt!2190644))))))

(declare-fun lt!2190811 () Unit!153938)

(declare-fun choose!40461 (List!61614 List!61614 List!61614) Unit!153938)

(assert (=> d!1722174 (= lt!2190811 (choose!40461 (_1!35607 lt!2190675) (_2!35607 lt!2190675) (_2!35607 lt!2190644)))))

(assert (=> d!1722174 (= (lemmaConcatAssociativity!2802 (_1!35607 lt!2190675) (_2!35607 lt!2190675) (_2!35607 lt!2190644)) lt!2190811)))

(declare-fun bs!1245977 () Bool)

(assert (= bs!1245977 d!1722174))

(assert (=> bs!1245977 m!6406402))

(assert (=> bs!1245977 m!6406402))

(declare-fun m!6407286 () Bool)

(assert (=> bs!1245977 m!6407286))

(assert (=> bs!1245977 m!6406460))

(assert (=> bs!1245977 m!6406460))

(declare-fun m!6407288 () Bool)

(assert (=> bs!1245977 m!6407288))

(declare-fun m!6407290 () Bool)

(assert (=> bs!1245977 m!6407290))

(assert (=> b!5380418 d!1722174))

(declare-fun b!5381291 () Bool)

(declare-fun res!2284690 () Bool)

(declare-fun e!3338235 () Bool)

(assert (=> b!5381291 (=> res!2284690 e!3338235)))

(assert (=> b!5381291 (= res!2284690 (not (isEmpty!33483 (tail!10643 (_1!35607 lt!2190644)))))))

(declare-fun b!5381292 () Bool)

(declare-fun e!3338237 () Bool)

(assert (=> b!5381292 (= e!3338237 e!3338235)))

(declare-fun res!2284694 () Bool)

(assert (=> b!5381292 (=> res!2284694 e!3338235)))

(declare-fun call!385419 () Bool)

(assert (=> b!5381292 (= res!2284694 call!385419)))

(declare-fun b!5381293 () Bool)

(declare-fun e!3338238 () Bool)

(declare-fun lt!2190812 () Bool)

(assert (=> b!5381293 (= e!3338238 (not lt!2190812))))

(declare-fun b!5381294 () Bool)

(declare-fun e!3338236 () Bool)

(assert (=> b!5381294 (= e!3338236 (matchR!7290 (derivativeStep!4235 lt!2190664 (head!11546 (_1!35607 lt!2190644))) (tail!10643 (_1!35607 lt!2190644))))))

(declare-fun b!5381295 () Bool)

(assert (=> b!5381295 (= e!3338236 (nullable!5274 lt!2190664))))

(declare-fun b!5381296 () Bool)

(declare-fun e!3338241 () Bool)

(assert (=> b!5381296 (= e!3338241 e!3338238)))

(declare-fun c!937989 () Bool)

(assert (=> b!5381296 (= c!937989 ((_ is EmptyLang!15105) lt!2190664))))

(declare-fun bm!385414 () Bool)

(assert (=> bm!385414 (= call!385419 (isEmpty!33483 (_1!35607 lt!2190644)))))

(declare-fun b!5381298 () Bool)

(assert (=> b!5381298 (= e!3338235 (not (= (head!11546 (_1!35607 lt!2190644)) (c!937749 lt!2190664))))))

(declare-fun b!5381299 () Bool)

(declare-fun e!3338239 () Bool)

(assert (=> b!5381299 (= e!3338239 e!3338237)))

(declare-fun res!2284687 () Bool)

(assert (=> b!5381299 (=> (not res!2284687) (not e!3338237))))

(assert (=> b!5381299 (= res!2284687 (not lt!2190812))))

(declare-fun b!5381300 () Bool)

(declare-fun e!3338240 () Bool)

(assert (=> b!5381300 (= e!3338240 (= (head!11546 (_1!35607 lt!2190644)) (c!937749 lt!2190664)))))

(declare-fun b!5381301 () Bool)

(declare-fun res!2284688 () Bool)

(assert (=> b!5381301 (=> (not res!2284688) (not e!3338240))))

(assert (=> b!5381301 (= res!2284688 (isEmpty!33483 (tail!10643 (_1!35607 lt!2190644))))))

(declare-fun b!5381302 () Bool)

(declare-fun res!2284692 () Bool)

(assert (=> b!5381302 (=> (not res!2284692) (not e!3338240))))

(assert (=> b!5381302 (= res!2284692 (not call!385419))))

(declare-fun b!5381303 () Bool)

(declare-fun res!2284693 () Bool)

(assert (=> b!5381303 (=> res!2284693 e!3338239)))

(assert (=> b!5381303 (= res!2284693 e!3338240)))

(declare-fun res!2284689 () Bool)

(assert (=> b!5381303 (=> (not res!2284689) (not e!3338240))))

(assert (=> b!5381303 (= res!2284689 lt!2190812)))

(declare-fun b!5381304 () Bool)

(declare-fun res!2284691 () Bool)

(assert (=> b!5381304 (=> res!2284691 e!3338239)))

(assert (=> b!5381304 (= res!2284691 (not ((_ is ElementMatch!15105) lt!2190664)))))

(assert (=> b!5381304 (= e!3338238 e!3338239)))

(declare-fun b!5381297 () Bool)

(assert (=> b!5381297 (= e!3338241 (= lt!2190812 call!385419))))

(declare-fun d!1722176 () Bool)

(assert (=> d!1722176 e!3338241))

(declare-fun c!937988 () Bool)

(assert (=> d!1722176 (= c!937988 ((_ is EmptyExpr!15105) lt!2190664))))

(assert (=> d!1722176 (= lt!2190812 e!3338236)))

(declare-fun c!937987 () Bool)

(assert (=> d!1722176 (= c!937987 (isEmpty!33483 (_1!35607 lt!2190644)))))

(assert (=> d!1722176 (validRegex!6841 lt!2190664)))

(assert (=> d!1722176 (= (matchR!7290 lt!2190664 (_1!35607 lt!2190644)) lt!2190812)))

(assert (= (and d!1722176 c!937987) b!5381295))

(assert (= (and d!1722176 (not c!937987)) b!5381294))

(assert (= (and d!1722176 c!937988) b!5381297))

(assert (= (and d!1722176 (not c!937988)) b!5381296))

(assert (= (and b!5381296 c!937989) b!5381293))

(assert (= (and b!5381296 (not c!937989)) b!5381304))

(assert (= (and b!5381304 (not res!2284691)) b!5381303))

(assert (= (and b!5381303 res!2284689) b!5381302))

(assert (= (and b!5381302 res!2284692) b!5381301))

(assert (= (and b!5381301 res!2284688) b!5381300))

(assert (= (and b!5381303 (not res!2284693)) b!5381299))

(assert (= (and b!5381299 res!2284687) b!5381292))

(assert (= (and b!5381292 (not res!2284694)) b!5381291))

(assert (= (and b!5381291 (not res!2284690)) b!5381298))

(assert (= (or b!5381297 b!5381292 b!5381302) bm!385414))

(declare-fun m!6407292 () Bool)

(assert (=> b!5381301 m!6407292))

(assert (=> b!5381301 m!6407292))

(declare-fun m!6407294 () Bool)

(assert (=> b!5381301 m!6407294))

(assert (=> d!1722176 m!6406464))

(assert (=> d!1722176 m!6406440))

(declare-fun m!6407296 () Bool)

(assert (=> b!5381295 m!6407296))

(declare-fun m!6407298 () Bool)

(assert (=> b!5381294 m!6407298))

(assert (=> b!5381294 m!6407298))

(declare-fun m!6407300 () Bool)

(assert (=> b!5381294 m!6407300))

(assert (=> b!5381294 m!6407292))

(assert (=> b!5381294 m!6407300))

(assert (=> b!5381294 m!6407292))

(declare-fun m!6407302 () Bool)

(assert (=> b!5381294 m!6407302))

(assert (=> b!5381298 m!6407298))

(assert (=> bm!385414 m!6406464))

(assert (=> b!5381291 m!6407292))

(assert (=> b!5381291 m!6407292))

(assert (=> b!5381291 m!6407294))

(assert (=> b!5381300 m!6407298))

(assert (=> b!5380417 d!1722176))

(declare-fun d!1722178 () Bool)

(assert (=> d!1722178 (= (nullable!5274 (regOne!30722 (regOne!30722 r!7292))) (nullableFct!1566 (regOne!30722 (regOne!30722 r!7292))))))

(declare-fun bs!1245978 () Bool)

(assert (= bs!1245978 d!1722178))

(declare-fun m!6407304 () Bool)

(assert (=> bs!1245978 m!6407304))

(assert (=> b!5380397 d!1722178))

(declare-fun d!1722180 () Bool)

(declare-fun lt!2190813 () Regex!15105)

(assert (=> d!1722180 (validRegex!6841 lt!2190813)))

(assert (=> d!1722180 (= lt!2190813 (generalisedUnion!1034 (unfocusZipperList!547 (Cons!61492 lt!2190650 Nil!61492))))))

(assert (=> d!1722180 (= (unfocusZipper!847 (Cons!61492 lt!2190650 Nil!61492)) lt!2190813)))

(declare-fun bs!1245979 () Bool)

(assert (= bs!1245979 d!1722180))

(declare-fun m!6407306 () Bool)

(assert (=> bs!1245979 m!6407306))

(declare-fun m!6407308 () Bool)

(assert (=> bs!1245979 m!6407308))

(assert (=> bs!1245979 m!6407308))

(declare-fun m!6407310 () Bool)

(assert (=> bs!1245979 m!6407310))

(assert (=> b!5380419 d!1722180))

(declare-fun d!1722182 () Bool)

(assert (=> d!1722182 (= (flatMap!832 lt!2190654 lambda!278368) (choose!40456 lt!2190654 lambda!278368))))

(declare-fun bs!1245980 () Bool)

(assert (= bs!1245980 d!1722182))

(declare-fun m!6407312 () Bool)

(assert (=> bs!1245980 m!6407312))

(assert (=> b!5380399 d!1722182))

(declare-fun b!5381305 () Bool)

(declare-fun e!3338242 () (InoxSet Context!8978))

(declare-fun call!385420 () (InoxSet Context!8978))

(assert (=> b!5381305 (= e!3338242 call!385420)))

(declare-fun bm!385415 () Bool)

(assert (=> bm!385415 (= call!385420 (derivationStepZipperDown!553 (h!67939 (exprs!4989 lt!2190651)) (Context!8979 (t!374838 (exprs!4989 lt!2190651))) (h!67938 s!2326)))))

(declare-fun b!5381306 () Bool)

(declare-fun e!3338244 () (InoxSet Context!8978))

(assert (=> b!5381306 (= e!3338244 e!3338242)))

(declare-fun c!937990 () Bool)

(assert (=> b!5381306 (= c!937990 ((_ is Cons!61491) (exprs!4989 lt!2190651)))))

(declare-fun b!5381307 () Bool)

(assert (=> b!5381307 (= e!3338244 ((_ map or) call!385420 (derivationStepZipperUp!477 (Context!8979 (t!374838 (exprs!4989 lt!2190651))) (h!67938 s!2326))))))

(declare-fun d!1722184 () Bool)

(declare-fun c!937991 () Bool)

(declare-fun e!3338243 () Bool)

(assert (=> d!1722184 (= c!937991 e!3338243)))

(declare-fun res!2284695 () Bool)

(assert (=> d!1722184 (=> (not res!2284695) (not e!3338243))))

(assert (=> d!1722184 (= res!2284695 ((_ is Cons!61491) (exprs!4989 lt!2190651)))))

(assert (=> d!1722184 (= (derivationStepZipperUp!477 lt!2190651 (h!67938 s!2326)) e!3338244)))

(declare-fun b!5381308 () Bool)

(assert (=> b!5381308 (= e!3338243 (nullable!5274 (h!67939 (exprs!4989 lt!2190651))))))

(declare-fun b!5381309 () Bool)

(assert (=> b!5381309 (= e!3338242 ((as const (Array Context!8978 Bool)) false))))

(assert (= (and d!1722184 res!2284695) b!5381308))

(assert (= (and d!1722184 c!937991) b!5381307))

(assert (= (and d!1722184 (not c!937991)) b!5381306))

(assert (= (and b!5381306 c!937990) b!5381305))

(assert (= (and b!5381306 (not c!937990)) b!5381309))

(assert (= (or b!5381307 b!5381305) bm!385415))

(declare-fun m!6407314 () Bool)

(assert (=> bm!385415 m!6407314))

(declare-fun m!6407316 () Bool)

(assert (=> b!5381307 m!6407316))

(declare-fun m!6407318 () Bool)

(assert (=> b!5381308 m!6407318))

(assert (=> b!5380399 d!1722184))

(declare-fun d!1722186 () Bool)

(assert (=> d!1722186 (= (flatMap!832 lt!2190654 lambda!278368) (dynLambda!24275 lambda!278368 lt!2190651))))

(declare-fun lt!2190814 () Unit!153938)

(assert (=> d!1722186 (= lt!2190814 (choose!40455 lt!2190654 lt!2190651 lambda!278368))))

(assert (=> d!1722186 (= lt!2190654 (store ((as const (Array Context!8978 Bool)) false) lt!2190651 true))))

(assert (=> d!1722186 (= (lemmaFlatMapOnSingletonSet!364 lt!2190654 lt!2190651 lambda!278368) lt!2190814)))

(declare-fun b_lambda!206115 () Bool)

(assert (=> (not b_lambda!206115) (not d!1722186)))

(declare-fun bs!1245981 () Bool)

(assert (= bs!1245981 d!1722186))

(assert (=> bs!1245981 m!6406494))

(declare-fun m!6407320 () Bool)

(assert (=> bs!1245981 m!6407320))

(declare-fun m!6407322 () Bool)

(assert (=> bs!1245981 m!6407322))

(assert (=> bs!1245981 m!6406500))

(assert (=> b!5380399 d!1722186))

(declare-fun bs!1245982 () Bool)

(declare-fun d!1722188 () Bool)

(assert (= bs!1245982 (and d!1722188 b!5380412)))

(declare-fun lambda!278455 () Int)

(assert (=> bs!1245982 (= lambda!278455 lambda!278368)))

(assert (=> d!1722188 true))

(assert (=> d!1722188 (= (derivationStepZipper!1344 lt!2190654 (h!67938 s!2326)) (flatMap!832 lt!2190654 lambda!278455))))

(declare-fun bs!1245983 () Bool)

(assert (= bs!1245983 d!1722188))

(declare-fun m!6407324 () Bool)

(assert (=> bs!1245983 m!6407324))

(assert (=> b!5380399 d!1722188))

(declare-fun d!1722190 () Bool)

(declare-fun lt!2190815 () Regex!15105)

(assert (=> d!1722190 (validRegex!6841 lt!2190815)))

(assert (=> d!1722190 (= lt!2190815 (generalisedUnion!1034 (unfocusZipperList!547 zl!343)))))

(assert (=> d!1722190 (= (unfocusZipper!847 zl!343) lt!2190815)))

(declare-fun bs!1245984 () Bool)

(assert (= bs!1245984 d!1722190))

(declare-fun m!6407326 () Bool)

(assert (=> bs!1245984 m!6407326))

(assert (=> bs!1245984 m!6406396))

(assert (=> bs!1245984 m!6406396))

(assert (=> bs!1245984 m!6406398))

(assert (=> b!5380377 d!1722190))

(declare-fun d!1722192 () Bool)

(assert (=> d!1722192 (= (isEmpty!33483 (_1!35607 lt!2190644)) ((_ is Nil!61490) (_1!35607 lt!2190644)))))

(assert (=> b!5380400 d!1722192))

(declare-fun b!5381312 () Bool)

(declare-fun e!3338247 () Bool)

(declare-fun e!3338250 () Bool)

(assert (=> b!5381312 (= e!3338247 e!3338250)))

(declare-fun c!937994 () Bool)

(assert (=> b!5381312 (= c!937994 ((_ is Star!15105) lt!2190664))))

(declare-fun bm!385416 () Bool)

(declare-fun call!385423 () Bool)

(declare-fun c!937995 () Bool)

(assert (=> bm!385416 (= call!385423 (validRegex!6841 (ite c!937994 (reg!15434 lt!2190664) (ite c!937995 (regOne!30723 lt!2190664) (regOne!30722 lt!2190664)))))))

(declare-fun b!5381313 () Bool)

(declare-fun e!3338251 () Bool)

(declare-fun call!385422 () Bool)

(assert (=> b!5381313 (= e!3338251 call!385422)))

(declare-fun b!5381314 () Bool)

(declare-fun e!3338248 () Bool)

(assert (=> b!5381314 (= e!3338250 e!3338248)))

(assert (=> b!5381314 (= c!937995 ((_ is Union!15105) lt!2190664))))

(declare-fun b!5381315 () Bool)

(declare-fun e!3338246 () Bool)

(assert (=> b!5381315 (= e!3338246 call!385422)))

(declare-fun bm!385417 () Bool)

(assert (=> bm!385417 (= call!385422 (validRegex!6841 (ite c!937995 (regTwo!30723 lt!2190664) (regTwo!30722 lt!2190664))))))

(declare-fun d!1722194 () Bool)

(declare-fun res!2284697 () Bool)

(assert (=> d!1722194 (=> res!2284697 e!3338247)))

(assert (=> d!1722194 (= res!2284697 ((_ is ElementMatch!15105) lt!2190664))))

(assert (=> d!1722194 (= (validRegex!6841 lt!2190664) e!3338247)))

(declare-fun b!5381316 () Bool)

(declare-fun e!3338249 () Bool)

(assert (=> b!5381316 (= e!3338249 call!385423)))

(declare-fun bm!385418 () Bool)

(declare-fun call!385421 () Bool)

(assert (=> bm!385418 (= call!385421 call!385423)))

(declare-fun b!5381317 () Bool)

(declare-fun e!3338245 () Bool)

(assert (=> b!5381317 (= e!3338245 e!3338251)))

(declare-fun res!2284696 () Bool)

(assert (=> b!5381317 (=> (not res!2284696) (not e!3338251))))

(assert (=> b!5381317 (= res!2284696 call!385421)))

(declare-fun b!5381318 () Bool)

(declare-fun res!2284700 () Bool)

(assert (=> b!5381318 (=> (not res!2284700) (not e!3338246))))

(assert (=> b!5381318 (= res!2284700 call!385421)))

(assert (=> b!5381318 (= e!3338248 e!3338246)))

(declare-fun b!5381319 () Bool)

(declare-fun res!2284698 () Bool)

(assert (=> b!5381319 (=> res!2284698 e!3338245)))

(assert (=> b!5381319 (= res!2284698 (not ((_ is Concat!23950) lt!2190664)))))

(assert (=> b!5381319 (= e!3338248 e!3338245)))

(declare-fun b!5381320 () Bool)

(assert (=> b!5381320 (= e!3338250 e!3338249)))

(declare-fun res!2284699 () Bool)

(assert (=> b!5381320 (= res!2284699 (not (nullable!5274 (reg!15434 lt!2190664))))))

(assert (=> b!5381320 (=> (not res!2284699) (not e!3338249))))

(assert (= (and d!1722194 (not res!2284697)) b!5381312))

(assert (= (and b!5381312 c!937994) b!5381320))

(assert (= (and b!5381312 (not c!937994)) b!5381314))

(assert (= (and b!5381320 res!2284699) b!5381316))

(assert (= (and b!5381314 c!937995) b!5381318))

(assert (= (and b!5381314 (not c!937995)) b!5381319))

(assert (= (and b!5381318 res!2284700) b!5381315))

(assert (= (and b!5381319 (not res!2284698)) b!5381317))

(assert (= (and b!5381317 res!2284696) b!5381313))

(assert (= (or b!5381315 b!5381313) bm!385417))

(assert (= (or b!5381318 b!5381317) bm!385418))

(assert (= (or b!5381316 bm!385418) bm!385416))

(declare-fun m!6407328 () Bool)

(assert (=> bm!385416 m!6407328))

(declare-fun m!6407330 () Bool)

(assert (=> bm!385417 m!6407330))

(declare-fun m!6407332 () Bool)

(assert (=> b!5381320 m!6407332))

(assert (=> b!5380379 d!1722194))

(declare-fun d!1722196 () Bool)

(declare-fun e!3338254 () Bool)

(assert (=> d!1722196 e!3338254))

(declare-fun res!2284703 () Bool)

(assert (=> d!1722196 (=> (not res!2284703) (not e!3338254))))

(declare-fun lt!2190818 () List!61616)

(declare-fun noDuplicate!1368 (List!61616) Bool)

(assert (=> d!1722196 (= res!2284703 (noDuplicate!1368 lt!2190818))))

(declare-fun choose!40462 ((InoxSet Context!8978)) List!61616)

(assert (=> d!1722196 (= lt!2190818 (choose!40462 z!1189))))

(assert (=> d!1722196 (= (toList!8889 z!1189) lt!2190818)))

(declare-fun b!5381323 () Bool)

(declare-fun content!11004 (List!61616) (InoxSet Context!8978))

(assert (=> b!5381323 (= e!3338254 (= (content!11004 lt!2190818) z!1189))))

(assert (= (and d!1722196 res!2284703) b!5381323))

(declare-fun m!6407334 () Bool)

(assert (=> d!1722196 m!6407334))

(declare-fun m!6407336 () Bool)

(assert (=> d!1722196 m!6407336))

(declare-fun m!6407338 () Bool)

(assert (=> b!5381323 m!6407338))

(assert (=> b!5380378 d!1722196))

(declare-fun b!5381324 () Bool)

(declare-fun e!3338256 () (InoxSet Context!8978))

(declare-fun call!385426 () (InoxSet Context!8978))

(declare-fun call!385428 () (InoxSet Context!8978))

(assert (=> b!5381324 (= e!3338256 ((_ map or) call!385426 call!385428))))

(declare-fun b!5381325 () Bool)

(declare-fun e!3338257 () Bool)

(assert (=> b!5381325 (= e!3338257 (nullable!5274 (regOne!30722 (reg!15434 (regOne!30722 r!7292)))))))

(declare-fun b!5381326 () Bool)

(declare-fun e!3338258 () (InoxSet Context!8978))

(declare-fun e!3338259 () (InoxSet Context!8978))

(assert (=> b!5381326 (= e!3338258 e!3338259)))

(declare-fun c!938000 () Bool)

(assert (=> b!5381326 (= c!938000 ((_ is Concat!23950) (reg!15434 (regOne!30722 r!7292))))))

(declare-fun b!5381327 () Bool)

(declare-fun c!937998 () Bool)

(assert (=> b!5381327 (= c!937998 e!3338257)))

(declare-fun res!2284704 () Bool)

(assert (=> b!5381327 (=> (not res!2284704) (not e!3338257))))

(assert (=> b!5381327 (= res!2284704 ((_ is Concat!23950) (reg!15434 (regOne!30722 r!7292))))))

(assert (=> b!5381327 (= e!3338256 e!3338258)))

(declare-fun b!5381328 () Bool)

(declare-fun e!3338255 () (InoxSet Context!8978))

(assert (=> b!5381328 (= e!3338255 (store ((as const (Array Context!8978 Bool)) false) lt!2190650 true))))

(declare-fun c!937996 () Bool)

(declare-fun bm!385419 () Bool)

(declare-fun call!385424 () List!61615)

(assert (=> bm!385419 (= call!385428 (derivationStepZipperDown!553 (ite c!937996 (regTwo!30723 (reg!15434 (regOne!30722 r!7292))) (regOne!30722 (reg!15434 (regOne!30722 r!7292)))) (ite c!937996 lt!2190650 (Context!8979 call!385424)) (h!67938 s!2326)))))

(declare-fun bm!385420 () Bool)

(assert (=> bm!385420 (= call!385424 ($colon$colon!1464 (exprs!4989 lt!2190650) (ite (or c!937998 c!938000) (regTwo!30722 (reg!15434 (regOne!30722 r!7292))) (reg!15434 (regOne!30722 r!7292)))))))

(declare-fun b!5381330 () Bool)

(declare-fun call!385425 () (InoxSet Context!8978))

(assert (=> b!5381330 (= e!3338258 ((_ map or) call!385428 call!385425))))

(declare-fun b!5381331 () Bool)

(declare-fun call!385429 () (InoxSet Context!8978))

(assert (=> b!5381331 (= e!3338259 call!385429)))

(declare-fun b!5381332 () Bool)

(assert (=> b!5381332 (= e!3338255 e!3338256)))

(assert (=> b!5381332 (= c!937996 ((_ is Union!15105) (reg!15434 (regOne!30722 r!7292))))))

(declare-fun bm!385421 () Bool)

(assert (=> bm!385421 (= call!385429 call!385425)))

(declare-fun b!5381333 () Bool)

(declare-fun c!937997 () Bool)

(assert (=> b!5381333 (= c!937997 ((_ is Star!15105) (reg!15434 (regOne!30722 r!7292))))))

(declare-fun e!3338260 () (InoxSet Context!8978))

(assert (=> b!5381333 (= e!3338259 e!3338260)))

(declare-fun b!5381334 () Bool)

(assert (=> b!5381334 (= e!3338260 call!385429)))

(declare-fun d!1722198 () Bool)

(declare-fun c!937999 () Bool)

(assert (=> d!1722198 (= c!937999 (and ((_ is ElementMatch!15105) (reg!15434 (regOne!30722 r!7292))) (= (c!937749 (reg!15434 (regOne!30722 r!7292))) (h!67938 s!2326))))))

(assert (=> d!1722198 (= (derivationStepZipperDown!553 (reg!15434 (regOne!30722 r!7292)) lt!2190650 (h!67938 s!2326)) e!3338255)))

(declare-fun b!5381329 () Bool)

(assert (=> b!5381329 (= e!3338260 ((as const (Array Context!8978 Bool)) false))))

(declare-fun bm!385422 () Bool)

(declare-fun call!385427 () List!61615)

(assert (=> bm!385422 (= call!385426 (derivationStepZipperDown!553 (ite c!937996 (regOne!30723 (reg!15434 (regOne!30722 r!7292))) (ite c!937998 (regTwo!30722 (reg!15434 (regOne!30722 r!7292))) (ite c!938000 (regOne!30722 (reg!15434 (regOne!30722 r!7292))) (reg!15434 (reg!15434 (regOne!30722 r!7292)))))) (ite (or c!937996 c!937998) lt!2190650 (Context!8979 call!385427)) (h!67938 s!2326)))))

(declare-fun bm!385423 () Bool)

(assert (=> bm!385423 (= call!385425 call!385426)))

(declare-fun bm!385424 () Bool)

(assert (=> bm!385424 (= call!385427 call!385424)))

(assert (= (and d!1722198 c!937999) b!5381328))

(assert (= (and d!1722198 (not c!937999)) b!5381332))

(assert (= (and b!5381332 c!937996) b!5381324))

(assert (= (and b!5381332 (not c!937996)) b!5381327))

(assert (= (and b!5381327 res!2284704) b!5381325))

(assert (= (and b!5381327 c!937998) b!5381330))

(assert (= (and b!5381327 (not c!937998)) b!5381326))

(assert (= (and b!5381326 c!938000) b!5381331))

(assert (= (and b!5381326 (not c!938000)) b!5381333))

(assert (= (and b!5381333 c!937997) b!5381334))

(assert (= (and b!5381333 (not c!937997)) b!5381329))

(assert (= (or b!5381331 b!5381334) bm!385424))

(assert (= (or b!5381331 b!5381334) bm!385421))

(assert (= (or b!5381330 bm!385424) bm!385420))

(assert (= (or b!5381330 bm!385421) bm!385423))

(assert (= (or b!5381324 b!5381330) bm!385419))

(assert (= (or b!5381324 bm!385423) bm!385422))

(declare-fun m!6407340 () Bool)

(assert (=> bm!385422 m!6407340))

(assert (=> b!5381328 m!6406362))

(declare-fun m!6407342 () Bool)

(assert (=> bm!385419 m!6407342))

(declare-fun m!6407344 () Bool)

(assert (=> b!5381325 m!6407344))

(declare-fun m!6407346 () Bool)

(assert (=> bm!385420 m!6407346))

(assert (=> b!5380380 d!1722198))

(declare-fun d!1722200 () Bool)

(declare-fun c!938001 () Bool)

(assert (=> d!1722200 (= c!938001 (isEmpty!33483 (t!374837 s!2326)))))

(declare-fun e!3338261 () Bool)

(assert (=> d!1722200 (= (matchZipper!1349 lt!2190666 (t!374837 s!2326)) e!3338261)))

(declare-fun b!5381335 () Bool)

(assert (=> b!5381335 (= e!3338261 (nullableZipper!1414 lt!2190666))))

(declare-fun b!5381336 () Bool)

(assert (=> b!5381336 (= e!3338261 (matchZipper!1349 (derivationStepZipper!1344 lt!2190666 (head!11546 (t!374837 s!2326))) (tail!10643 (t!374837 s!2326))))))

(assert (= (and d!1722200 c!938001) b!5381335))

(assert (= (and d!1722200 (not c!938001)) b!5381336))

(assert (=> d!1722200 m!6407178))

(declare-fun m!6407348 () Bool)

(assert (=> b!5381335 m!6407348))

(assert (=> b!5381336 m!6407182))

(assert (=> b!5381336 m!6407182))

(declare-fun m!6407350 () Bool)

(assert (=> b!5381336 m!6407350))

(assert (=> b!5381336 m!6407186))

(assert (=> b!5381336 m!6407350))

(assert (=> b!5381336 m!6407186))

(declare-fun m!6407352 () Bool)

(assert (=> b!5381336 m!6407352))

(assert (=> b!5380381 d!1722200))

(declare-fun b!5381337 () Bool)

(declare-fun res!2284707 () Bool)

(declare-fun e!3338263 () Bool)

(assert (=> b!5381337 (=> (not res!2284707) (not e!3338263))))

(declare-fun lt!2190821 () Option!15216)

(assert (=> b!5381337 (= res!2284707 (matchR!7290 lt!2190664 (_1!35607 (get!21166 lt!2190821))))))

(declare-fun b!5381338 () Bool)

(declare-fun e!3338262 () Option!15216)

(declare-fun e!3338264 () Option!15216)

(assert (=> b!5381338 (= e!3338262 e!3338264)))

(declare-fun c!938003 () Bool)

(assert (=> b!5381338 (= c!938003 ((_ is Nil!61490) s!2326))))

(declare-fun b!5381339 () Bool)

(declare-fun e!3338265 () Bool)

(assert (=> b!5381339 (= e!3338265 (matchR!7290 (regTwo!30722 r!7292) s!2326))))

(declare-fun b!5381340 () Bool)

(declare-fun res!2284709 () Bool)

(assert (=> b!5381340 (=> (not res!2284709) (not e!3338263))))

(assert (=> b!5381340 (= res!2284709 (matchR!7290 (regTwo!30722 r!7292) (_2!35607 (get!21166 lt!2190821))))))

(declare-fun b!5381341 () Bool)

(declare-fun e!3338266 () Bool)

(assert (=> b!5381341 (= e!3338266 (not (isDefined!11919 lt!2190821)))))

(declare-fun b!5381342 () Bool)

(assert (=> b!5381342 (= e!3338263 (= (++!13408 (_1!35607 (get!21166 lt!2190821)) (_2!35607 (get!21166 lt!2190821))) s!2326))))

(declare-fun d!1722202 () Bool)

(assert (=> d!1722202 e!3338266))

(declare-fun res!2284705 () Bool)

(assert (=> d!1722202 (=> res!2284705 e!3338266)))

(assert (=> d!1722202 (= res!2284705 e!3338263)))

(declare-fun res!2284708 () Bool)

(assert (=> d!1722202 (=> (not res!2284708) (not e!3338263))))

(assert (=> d!1722202 (= res!2284708 (isDefined!11919 lt!2190821))))

(assert (=> d!1722202 (= lt!2190821 e!3338262)))

(declare-fun c!938002 () Bool)

(assert (=> d!1722202 (= c!938002 e!3338265)))

(declare-fun res!2284706 () Bool)

(assert (=> d!1722202 (=> (not res!2284706) (not e!3338265))))

(assert (=> d!1722202 (= res!2284706 (matchR!7290 lt!2190664 Nil!61490))))

(assert (=> d!1722202 (validRegex!6841 lt!2190664)))

(assert (=> d!1722202 (= (findConcatSeparation!1630 lt!2190664 (regTwo!30722 r!7292) Nil!61490 s!2326 s!2326) lt!2190821)))

(declare-fun b!5381343 () Bool)

(assert (=> b!5381343 (= e!3338264 None!15215)))

(declare-fun b!5381344 () Bool)

(declare-fun lt!2190820 () Unit!153938)

(declare-fun lt!2190819 () Unit!153938)

(assert (=> b!5381344 (= lt!2190820 lt!2190819)))

(assert (=> b!5381344 (= (++!13408 (++!13408 Nil!61490 (Cons!61490 (h!67938 s!2326) Nil!61490)) (t!374837 s!2326)) s!2326)))

(assert (=> b!5381344 (= lt!2190819 (lemmaMoveElementToOtherListKeepsConcatEq!1809 Nil!61490 (h!67938 s!2326) (t!374837 s!2326) s!2326))))

(assert (=> b!5381344 (= e!3338264 (findConcatSeparation!1630 lt!2190664 (regTwo!30722 r!7292) (++!13408 Nil!61490 (Cons!61490 (h!67938 s!2326) Nil!61490)) (t!374837 s!2326) s!2326))))

(declare-fun b!5381345 () Bool)

(assert (=> b!5381345 (= e!3338262 (Some!15215 (tuple2!64609 Nil!61490 s!2326)))))

(assert (= (and d!1722202 res!2284706) b!5381339))

(assert (= (and d!1722202 c!938002) b!5381345))

(assert (= (and d!1722202 (not c!938002)) b!5381338))

(assert (= (and b!5381338 c!938003) b!5381343))

(assert (= (and b!5381338 (not c!938003)) b!5381344))

(assert (= (and d!1722202 res!2284708) b!5381337))

(assert (= (and b!5381337 res!2284707) b!5381340))

(assert (= (and b!5381340 res!2284709) b!5381342))

(assert (= (and d!1722202 (not res!2284705)) b!5381341))

(declare-fun m!6407354 () Bool)

(assert (=> b!5381340 m!6407354))

(declare-fun m!6407356 () Bool)

(assert (=> b!5381340 m!6407356))

(declare-fun m!6407358 () Bool)

(assert (=> b!5381339 m!6407358))

(declare-fun m!6407360 () Bool)

(assert (=> d!1722202 m!6407360))

(declare-fun m!6407362 () Bool)

(assert (=> d!1722202 m!6407362))

(assert (=> d!1722202 m!6406440))

(assert (=> b!5381342 m!6407354))

(declare-fun m!6407364 () Bool)

(assert (=> b!5381342 m!6407364))

(assert (=> b!5381341 m!6407360))

(assert (=> b!5381337 m!6407354))

(declare-fun m!6407366 () Bool)

(assert (=> b!5381337 m!6407366))

(declare-fun m!6407368 () Bool)

(assert (=> b!5381344 m!6407368))

(assert (=> b!5381344 m!6407368))

(declare-fun m!6407370 () Bool)

(assert (=> b!5381344 m!6407370))

(declare-fun m!6407372 () Bool)

(assert (=> b!5381344 m!6407372))

(assert (=> b!5381344 m!6407368))

(declare-fun m!6407374 () Bool)

(assert (=> b!5381344 m!6407374))

(assert (=> b!5380403 d!1722202))

(declare-fun d!1722204 () Bool)

(assert (=> d!1722204 (= (Exists!2286 lambda!278369) (choose!40450 lambda!278369))))

(declare-fun bs!1245985 () Bool)

(assert (= bs!1245985 d!1722204))

(declare-fun m!6407376 () Bool)

(assert (=> bs!1245985 m!6407376))

(assert (=> b!5380403 d!1722204))

(declare-fun bs!1245986 () Bool)

(declare-fun d!1722206 () Bool)

(assert (= bs!1245986 (and d!1722206 b!5380388)))

(declare-fun lambda!278456 () Int)

(assert (=> bs!1245986 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278456 lambda!278371))))

(declare-fun bs!1245987 () Bool)

(assert (= bs!1245987 (and d!1722206 b!5380404)))

(assert (=> bs!1245987 (= (= lt!2190664 (regOne!30722 r!7292)) (= lambda!278456 lambda!278366))))

(declare-fun bs!1245988 () Bool)

(assert (= bs!1245988 (and d!1722206 b!5380886)))

(assert (=> bs!1245988 (not (= lambda!278456 lambda!278417))))

(declare-fun bs!1245989 () Bool)

(assert (= bs!1245989 (and d!1722206 b!5380403)))

(assert (=> bs!1245989 (= lambda!278456 lambda!278369)))

(assert (=> bs!1245987 (not (= lambda!278456 lambda!278367))))

(declare-fun bs!1245990 () Bool)

(assert (= bs!1245990 (and d!1722206 b!5381223)))

(assert (=> bs!1245990 (not (= lambda!278456 lambda!278442))))

(assert (=> bs!1245986 (not (= lambda!278456 lambda!278372))))

(declare-fun bs!1245991 () Bool)

(assert (= bs!1245991 (and d!1722206 d!1722092)))

(assert (=> bs!1245991 (not (= lambda!278456 lambda!278441))))

(declare-fun bs!1245992 () Bool)

(assert (= bs!1245992 (and d!1722206 d!1722078)))

(assert (=> bs!1245992 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) (Star!15105 (reg!15434 (regOne!30722 r!7292))))) (= lambda!278456 lambda!278433))))

(assert (=> bs!1245992 (not (= lambda!278456 lambda!278434))))

(declare-fun bs!1245993 () Bool)

(assert (= bs!1245993 (and d!1722206 d!1722032)))

(assert (=> bs!1245993 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278456 lambda!278401))))

(declare-fun bs!1245994 () Bool)

(assert (= bs!1245994 (and d!1722206 b!5380881)))

(assert (=> bs!1245994 (not (= lambda!278456 lambda!278419))))

(declare-fun bs!1245995 () Bool)

(assert (= bs!1245995 (and d!1722206 b!5381218)))

(assert (=> bs!1245995 (not (= lambda!278456 lambda!278443))))

(assert (=> bs!1245989 (not (= lambda!278456 lambda!278370))))

(assert (=> bs!1245991 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278456 lambda!278440))))

(assert (=> bs!1245986 (not (= lambda!278456 lambda!278373))))

(assert (=> d!1722206 true))

(assert (=> d!1722206 true))

(assert (=> d!1722206 true))

(assert (=> d!1722206 (= (isDefined!11919 (findConcatSeparation!1630 lt!2190664 (regTwo!30722 r!7292) Nil!61490 s!2326 s!2326)) (Exists!2286 lambda!278456))))

(declare-fun lt!2190822 () Unit!153938)

(assert (=> d!1722206 (= lt!2190822 (choose!40452 lt!2190664 (regTwo!30722 r!7292) s!2326))))

(assert (=> d!1722206 (validRegex!6841 lt!2190664)))

(assert (=> d!1722206 (= (lemmaFindConcatSeparationEquivalentToExists!1394 lt!2190664 (regTwo!30722 r!7292) s!2326) lt!2190822)))

(declare-fun bs!1245996 () Bool)

(assert (= bs!1245996 d!1722206))

(declare-fun m!6407378 () Bool)

(assert (=> bs!1245996 m!6407378))

(assert (=> bs!1245996 m!6406514))

(declare-fun m!6407380 () Bool)

(assert (=> bs!1245996 m!6407380))

(declare-fun m!6407382 () Bool)

(assert (=> bs!1245996 m!6407382))

(assert (=> bs!1245996 m!6406514))

(assert (=> bs!1245996 m!6406440))

(assert (=> b!5380403 d!1722206))

(declare-fun d!1722208 () Bool)

(assert (=> d!1722208 (= (Exists!2286 lambda!278370) (choose!40450 lambda!278370))))

(declare-fun bs!1245997 () Bool)

(assert (= bs!1245997 d!1722208))

(declare-fun m!6407384 () Bool)

(assert (=> bs!1245997 m!6407384))

(assert (=> b!5380403 d!1722208))

(declare-fun b!5381347 () Bool)

(declare-fun e!3338268 () List!61614)

(assert (=> b!5381347 (= e!3338268 (Cons!61490 (h!67938 (_1!35607 lt!2190644)) (++!13408 (t!374837 (_1!35607 lt!2190644)) (_2!35607 lt!2190644))))))

(declare-fun b!5381346 () Bool)

(assert (=> b!5381346 (= e!3338268 (_2!35607 lt!2190644))))

(declare-fun b!5381349 () Bool)

(declare-fun e!3338267 () Bool)

(declare-fun lt!2190823 () List!61614)

(assert (=> b!5381349 (= e!3338267 (or (not (= (_2!35607 lt!2190644) Nil!61490)) (= lt!2190823 (_1!35607 lt!2190644))))))

(declare-fun d!1722210 () Bool)

(assert (=> d!1722210 e!3338267))

(declare-fun res!2284710 () Bool)

(assert (=> d!1722210 (=> (not res!2284710) (not e!3338267))))

(assert (=> d!1722210 (= res!2284710 (= (content!11002 lt!2190823) ((_ map or) (content!11002 (_1!35607 lt!2190644)) (content!11002 (_2!35607 lt!2190644)))))))

(assert (=> d!1722210 (= lt!2190823 e!3338268)))

(declare-fun c!938004 () Bool)

(assert (=> d!1722210 (= c!938004 ((_ is Nil!61490) (_1!35607 lt!2190644)))))

(assert (=> d!1722210 (= (++!13408 (_1!35607 lt!2190644) (_2!35607 lt!2190644)) lt!2190823)))

(declare-fun b!5381348 () Bool)

(declare-fun res!2284711 () Bool)

(assert (=> b!5381348 (=> (not res!2284711) (not e!3338267))))

(assert (=> b!5381348 (= res!2284711 (= (size!39805 lt!2190823) (+ (size!39805 (_1!35607 lt!2190644)) (size!39805 (_2!35607 lt!2190644)))))))

(assert (= (and d!1722210 c!938004) b!5381346))

(assert (= (and d!1722210 (not c!938004)) b!5381347))

(assert (= (and d!1722210 res!2284710) b!5381348))

(assert (= (and b!5381348 res!2284711) b!5381349))

(declare-fun m!6407386 () Bool)

(assert (=> b!5381347 m!6407386))

(declare-fun m!6407388 () Bool)

(assert (=> d!1722210 m!6407388))

(declare-fun m!6407390 () Bool)

(assert (=> d!1722210 m!6407390))

(assert (=> d!1722210 m!6407272))

(declare-fun m!6407392 () Bool)

(assert (=> b!5381348 m!6407392))

(declare-fun m!6407394 () Bool)

(assert (=> b!5381348 m!6407394))

(assert (=> b!5381348 m!6407278))

(assert (=> b!5380403 d!1722210))

(declare-fun d!1722212 () Bool)

(assert (=> d!1722212 (= (get!21166 lt!2190639) (v!51244 lt!2190639))))

(assert (=> b!5380403 d!1722212))

(declare-fun bs!1245998 () Bool)

(declare-fun d!1722214 () Bool)

(assert (= bs!1245998 (and d!1722214 b!5380388)))

(declare-fun lambda!278457 () Int)

(assert (=> bs!1245998 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278457 lambda!278371))))

(declare-fun bs!1245999 () Bool)

(assert (= bs!1245999 (and d!1722214 b!5380404)))

(assert (=> bs!1245999 (= (= lt!2190664 (regOne!30722 r!7292)) (= lambda!278457 lambda!278366))))

(declare-fun bs!1246000 () Bool)

(assert (= bs!1246000 (and d!1722214 b!5380886)))

(assert (=> bs!1246000 (not (= lambda!278457 lambda!278417))))

(declare-fun bs!1246001 () Bool)

(assert (= bs!1246001 (and d!1722214 b!5380403)))

(assert (=> bs!1246001 (= lambda!278457 lambda!278369)))

(assert (=> bs!1245999 (not (= lambda!278457 lambda!278367))))

(declare-fun bs!1246002 () Bool)

(assert (= bs!1246002 (and d!1722214 d!1722206)))

(assert (=> bs!1246002 (= lambda!278457 lambda!278456)))

(declare-fun bs!1246003 () Bool)

(assert (= bs!1246003 (and d!1722214 b!5381223)))

(assert (=> bs!1246003 (not (= lambda!278457 lambda!278442))))

(assert (=> bs!1245998 (not (= lambda!278457 lambda!278372))))

(declare-fun bs!1246004 () Bool)

(assert (= bs!1246004 (and d!1722214 d!1722092)))

(assert (=> bs!1246004 (not (= lambda!278457 lambda!278441))))

(declare-fun bs!1246005 () Bool)

(assert (= bs!1246005 (and d!1722214 d!1722078)))

(assert (=> bs!1246005 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) (Star!15105 (reg!15434 (regOne!30722 r!7292))))) (= lambda!278457 lambda!278433))))

(assert (=> bs!1246005 (not (= lambda!278457 lambda!278434))))

(declare-fun bs!1246006 () Bool)

(assert (= bs!1246006 (and d!1722214 d!1722032)))

(assert (=> bs!1246006 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278457 lambda!278401))))

(declare-fun bs!1246007 () Bool)

(assert (= bs!1246007 (and d!1722214 b!5380881)))

(assert (=> bs!1246007 (not (= lambda!278457 lambda!278419))))

(declare-fun bs!1246008 () Bool)

(assert (= bs!1246008 (and d!1722214 b!5381218)))

(assert (=> bs!1246008 (not (= lambda!278457 lambda!278443))))

(assert (=> bs!1246001 (not (= lambda!278457 lambda!278370))))

(assert (=> bs!1246004 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278457 lambda!278440))))

(assert (=> bs!1245998 (not (= lambda!278457 lambda!278373))))

(assert (=> d!1722214 true))

(assert (=> d!1722214 true))

(assert (=> d!1722214 true))

(declare-fun lambda!278458 () Int)

(assert (=> bs!1245998 (not (= lambda!278458 lambda!278371))))

(declare-fun bs!1246009 () Bool)

(assert (= bs!1246009 d!1722214))

(assert (=> bs!1246009 (not (= lambda!278458 lambda!278457))))

(assert (=> bs!1245999 (not (= lambda!278458 lambda!278366))))

(assert (=> bs!1246000 (not (= lambda!278458 lambda!278417))))

(assert (=> bs!1246001 (not (= lambda!278458 lambda!278369))))

(assert (=> bs!1245999 (= (= lt!2190664 (regOne!30722 r!7292)) (= lambda!278458 lambda!278367))))

(assert (=> bs!1246002 (not (= lambda!278458 lambda!278456))))

(assert (=> bs!1246003 (not (= lambda!278458 lambda!278442))))

(assert (=> bs!1245998 (not (= lambda!278458 lambda!278372))))

(assert (=> bs!1246004 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278458 lambda!278441))))

(assert (=> bs!1246005 (not (= lambda!278458 lambda!278433))))

(assert (=> bs!1246005 (not (= lambda!278458 lambda!278434))))

(assert (=> bs!1246006 (not (= lambda!278458 lambda!278401))))

(assert (=> bs!1246007 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (regOne!30722 lt!2190664)) (= (regTwo!30722 r!7292) (regTwo!30722 lt!2190664))) (= lambda!278458 lambda!278419))))

(assert (=> bs!1246008 (= (= lt!2190664 (regOne!30722 r!7292)) (= lambda!278458 lambda!278443))))

(assert (=> bs!1246001 (= lambda!278458 lambda!278370)))

(assert (=> bs!1246004 (not (= lambda!278458 lambda!278440))))

(assert (=> bs!1245998 (= (and (= s!2326 (_1!35607 lt!2190644)) (= lt!2190664 (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278458 lambda!278373))))

(assert (=> d!1722214 true))

(assert (=> d!1722214 true))

(assert (=> d!1722214 true))

(assert (=> d!1722214 (= (Exists!2286 lambda!278457) (Exists!2286 lambda!278458))))

(declare-fun lt!2190824 () Unit!153938)

(assert (=> d!1722214 (= lt!2190824 (choose!40454 lt!2190664 (regTwo!30722 r!7292) s!2326))))

(assert (=> d!1722214 (validRegex!6841 lt!2190664)))

(assert (=> d!1722214 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!940 lt!2190664 (regTwo!30722 r!7292) s!2326) lt!2190824)))

(declare-fun m!6407396 () Bool)

(assert (=> bs!1246009 m!6407396))

(declare-fun m!6407398 () Bool)

(assert (=> bs!1246009 m!6407398))

(declare-fun m!6407400 () Bool)

(assert (=> bs!1246009 m!6407400))

(assert (=> bs!1246009 m!6406440))

(assert (=> b!5380403 d!1722214))

(declare-fun d!1722216 () Bool)

(assert (=> d!1722216 (= (isDefined!11919 lt!2190639) (not (isEmpty!33486 lt!2190639)))))

(declare-fun bs!1246010 () Bool)

(assert (= bs!1246010 d!1722216))

(declare-fun m!6407402 () Bool)

(assert (=> bs!1246010 m!6407402))

(assert (=> b!5380403 d!1722216))

(declare-fun b!5381350 () Bool)

(declare-fun res!2284715 () Bool)

(declare-fun e!3338269 () Bool)

(assert (=> b!5381350 (=> res!2284715 e!3338269)))

(assert (=> b!5381350 (= res!2284715 (not (isEmpty!33483 (tail!10643 s!2326))))))

(declare-fun b!5381351 () Bool)

(declare-fun e!3338271 () Bool)

(assert (=> b!5381351 (= e!3338271 e!3338269)))

(declare-fun res!2284719 () Bool)

(assert (=> b!5381351 (=> res!2284719 e!3338269)))

(declare-fun call!385430 () Bool)

(assert (=> b!5381351 (= res!2284719 call!385430)))

(declare-fun b!5381352 () Bool)

(declare-fun e!3338272 () Bool)

(declare-fun lt!2190825 () Bool)

(assert (=> b!5381352 (= e!3338272 (not lt!2190825))))

(declare-fun b!5381353 () Bool)

(declare-fun e!3338270 () Bool)

(assert (=> b!5381353 (= e!3338270 (matchR!7290 (derivativeStep!4235 lt!2190640 (head!11546 s!2326)) (tail!10643 s!2326)))))

(declare-fun b!5381354 () Bool)

(assert (=> b!5381354 (= e!3338270 (nullable!5274 lt!2190640))))

(declare-fun b!5381355 () Bool)

(declare-fun e!3338275 () Bool)

(assert (=> b!5381355 (= e!3338275 e!3338272)))

(declare-fun c!938007 () Bool)

(assert (=> b!5381355 (= c!938007 ((_ is EmptyLang!15105) lt!2190640))))

(declare-fun bm!385425 () Bool)

(assert (=> bm!385425 (= call!385430 (isEmpty!33483 s!2326))))

(declare-fun b!5381357 () Bool)

(assert (=> b!5381357 (= e!3338269 (not (= (head!11546 s!2326) (c!937749 lt!2190640))))))

(declare-fun b!5381358 () Bool)

(declare-fun e!3338273 () Bool)

(assert (=> b!5381358 (= e!3338273 e!3338271)))

(declare-fun res!2284712 () Bool)

(assert (=> b!5381358 (=> (not res!2284712) (not e!3338271))))

(assert (=> b!5381358 (= res!2284712 (not lt!2190825))))

(declare-fun b!5381359 () Bool)

(declare-fun e!3338274 () Bool)

(assert (=> b!5381359 (= e!3338274 (= (head!11546 s!2326) (c!937749 lt!2190640)))))

(declare-fun b!5381360 () Bool)

(declare-fun res!2284713 () Bool)

(assert (=> b!5381360 (=> (not res!2284713) (not e!3338274))))

(assert (=> b!5381360 (= res!2284713 (isEmpty!33483 (tail!10643 s!2326)))))

(declare-fun b!5381361 () Bool)

(declare-fun res!2284717 () Bool)

(assert (=> b!5381361 (=> (not res!2284717) (not e!3338274))))

(assert (=> b!5381361 (= res!2284717 (not call!385430))))

(declare-fun b!5381362 () Bool)

(declare-fun res!2284718 () Bool)

(assert (=> b!5381362 (=> res!2284718 e!3338273)))

(assert (=> b!5381362 (= res!2284718 e!3338274)))

(declare-fun res!2284714 () Bool)

(assert (=> b!5381362 (=> (not res!2284714) (not e!3338274))))

(assert (=> b!5381362 (= res!2284714 lt!2190825)))

(declare-fun b!5381363 () Bool)

(declare-fun res!2284716 () Bool)

(assert (=> b!5381363 (=> res!2284716 e!3338273)))

(assert (=> b!5381363 (= res!2284716 (not ((_ is ElementMatch!15105) lt!2190640)))))

(assert (=> b!5381363 (= e!3338272 e!3338273)))

(declare-fun b!5381356 () Bool)

(assert (=> b!5381356 (= e!3338275 (= lt!2190825 call!385430))))

(declare-fun d!1722218 () Bool)

(assert (=> d!1722218 e!3338275))

(declare-fun c!938006 () Bool)

(assert (=> d!1722218 (= c!938006 ((_ is EmptyExpr!15105) lt!2190640))))

(assert (=> d!1722218 (= lt!2190825 e!3338270)))

(declare-fun c!938005 () Bool)

(assert (=> d!1722218 (= c!938005 (isEmpty!33483 s!2326))))

(assert (=> d!1722218 (validRegex!6841 lt!2190640)))

(assert (=> d!1722218 (= (matchR!7290 lt!2190640 s!2326) lt!2190825)))

(assert (= (and d!1722218 c!938005) b!5381354))

(assert (= (and d!1722218 (not c!938005)) b!5381353))

(assert (= (and d!1722218 c!938006) b!5381356))

(assert (= (and d!1722218 (not c!938006)) b!5381355))

(assert (= (and b!5381355 c!938007) b!5381352))

(assert (= (and b!5381355 (not c!938007)) b!5381363))

(assert (= (and b!5381363 (not res!2284716)) b!5381362))

(assert (= (and b!5381362 res!2284714) b!5381361))

(assert (= (and b!5381361 res!2284717) b!5381360))

(assert (= (and b!5381360 res!2284713) b!5381359))

(assert (= (and b!5381362 (not res!2284718)) b!5381358))

(assert (= (and b!5381358 res!2284712) b!5381351))

(assert (= (and b!5381351 (not res!2284719)) b!5381350))

(assert (= (and b!5381350 (not res!2284715)) b!5381357))

(assert (= (or b!5381356 b!5381351 b!5381361) bm!385425))

(assert (=> b!5381360 m!6407204))

(assert (=> b!5381360 m!6407204))

(assert (=> b!5381360 m!6407206))

(assert (=> d!1722218 m!6407198))

(declare-fun m!6407404 () Bool)

(assert (=> d!1722218 m!6407404))

(declare-fun m!6407406 () Bool)

(assert (=> b!5381354 m!6407406))

(assert (=> b!5381353 m!6407210))

(assert (=> b!5381353 m!6407210))

(declare-fun m!6407408 () Bool)

(assert (=> b!5381353 m!6407408))

(assert (=> b!5381353 m!6407204))

(assert (=> b!5381353 m!6407408))

(assert (=> b!5381353 m!6407204))

(declare-fun m!6407410 () Bool)

(assert (=> b!5381353 m!6407410))

(assert (=> b!5381357 m!6407210))

(assert (=> bm!385425 m!6407198))

(assert (=> b!5381350 m!6407204))

(assert (=> b!5381350 m!6407204))

(assert (=> b!5381350 m!6407206))

(assert (=> b!5381359 m!6407210))

(assert (=> b!5380383 d!1722218))

(declare-fun bs!1246011 () Bool)

(declare-fun b!5381373 () Bool)

(assert (= bs!1246011 (and b!5381373 b!5380388)))

(declare-fun lambda!278459 () Int)

(assert (=> bs!1246011 (not (= lambda!278459 lambda!278371))))

(declare-fun bs!1246012 () Bool)

(assert (= bs!1246012 (and b!5381373 d!1722214)))

(assert (=> bs!1246012 (not (= lambda!278459 lambda!278457))))

(declare-fun bs!1246013 () Bool)

(assert (= bs!1246013 (and b!5381373 b!5380404)))

(assert (=> bs!1246013 (not (= lambda!278459 lambda!278366))))

(declare-fun bs!1246014 () Bool)

(assert (= bs!1246014 (and b!5381373 b!5380886)))

(assert (=> bs!1246014 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (reg!15434 lt!2190640) (reg!15434 lt!2190664)) (= lt!2190640 lt!2190664)) (= lambda!278459 lambda!278417))))

(declare-fun bs!1246015 () Bool)

(assert (= bs!1246015 (and b!5381373 b!5380403)))

(assert (=> bs!1246015 (not (= lambda!278459 lambda!278369))))

(assert (=> bs!1246013 (not (= lambda!278459 lambda!278367))))

(declare-fun bs!1246016 () Bool)

(assert (= bs!1246016 (and b!5381373 d!1722206)))

(assert (=> bs!1246016 (not (= lambda!278459 lambda!278456))))

(declare-fun bs!1246017 () Bool)

(assert (= bs!1246017 (and b!5381373 b!5381223)))

(assert (=> bs!1246017 (= (and (= (reg!15434 lt!2190640) (reg!15434 r!7292)) (= lt!2190640 r!7292)) (= lambda!278459 lambda!278442))))

(assert (=> bs!1246011 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (reg!15434 lt!2190640) (reg!15434 (regOne!30722 r!7292))) (= lt!2190640 lt!2190664)) (= lambda!278459 lambda!278372))))

(declare-fun bs!1246018 () Bool)

(assert (= bs!1246018 (and b!5381373 d!1722092)))

(assert (=> bs!1246018 (not (= lambda!278459 lambda!278441))))

(declare-fun bs!1246019 () Bool)

(assert (= bs!1246019 (and b!5381373 d!1722078)))

(assert (=> bs!1246019 (not (= lambda!278459 lambda!278433))))

(assert (=> bs!1246012 (not (= lambda!278459 lambda!278458))))

(assert (=> bs!1246019 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (reg!15434 lt!2190640) (reg!15434 (regOne!30722 r!7292))) (= lt!2190640 (Star!15105 (reg!15434 (regOne!30722 r!7292))))) (= lambda!278459 lambda!278434))))

(declare-fun bs!1246020 () Bool)

(assert (= bs!1246020 (and b!5381373 d!1722032)))

(assert (=> bs!1246020 (not (= lambda!278459 lambda!278401))))

(declare-fun bs!1246021 () Bool)

(assert (= bs!1246021 (and b!5381373 b!5380881)))

(assert (=> bs!1246021 (not (= lambda!278459 lambda!278419))))

(declare-fun bs!1246022 () Bool)

(assert (= bs!1246022 (and b!5381373 b!5381218)))

(assert (=> bs!1246022 (not (= lambda!278459 lambda!278443))))

(assert (=> bs!1246015 (not (= lambda!278459 lambda!278370))))

(assert (=> bs!1246018 (not (= lambda!278459 lambda!278440))))

(assert (=> bs!1246011 (not (= lambda!278459 lambda!278373))))

(assert (=> b!5381373 true))

(assert (=> b!5381373 true))

(declare-fun bs!1246023 () Bool)

(declare-fun b!5381368 () Bool)

(assert (= bs!1246023 (and b!5381368 b!5380388)))

(declare-fun lambda!278460 () Int)

(assert (=> bs!1246023 (not (= lambda!278460 lambda!278371))))

(declare-fun bs!1246024 () Bool)

(assert (= bs!1246024 (and b!5381368 d!1722214)))

(assert (=> bs!1246024 (not (= lambda!278460 lambda!278457))))

(declare-fun bs!1246025 () Bool)

(assert (= bs!1246025 (and b!5381368 b!5380404)))

(assert (=> bs!1246025 (not (= lambda!278460 lambda!278366))))

(declare-fun bs!1246026 () Bool)

(assert (= bs!1246026 (and b!5381368 b!5380886)))

(assert (=> bs!1246026 (not (= lambda!278460 lambda!278417))))

(declare-fun bs!1246027 () Bool)

(assert (= bs!1246027 (and b!5381368 b!5380403)))

(assert (=> bs!1246027 (not (= lambda!278460 lambda!278369))))

(assert (=> bs!1246025 (= (and (= (regOne!30722 lt!2190640) (regOne!30722 r!7292)) (= (regTwo!30722 lt!2190640) (regTwo!30722 r!7292))) (= lambda!278460 lambda!278367))))

(declare-fun bs!1246028 () Bool)

(assert (= bs!1246028 (and b!5381368 b!5381223)))

(assert (=> bs!1246028 (not (= lambda!278460 lambda!278442))))

(assert (=> bs!1246023 (not (= lambda!278460 lambda!278372))))

(declare-fun bs!1246029 () Bool)

(assert (= bs!1246029 (and b!5381368 d!1722092)))

(assert (=> bs!1246029 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 lt!2190640) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 lt!2190640) lt!2190664)) (= lambda!278460 lambda!278441))))

(declare-fun bs!1246030 () Bool)

(assert (= bs!1246030 (and b!5381368 d!1722078)))

(assert (=> bs!1246030 (not (= lambda!278460 lambda!278433))))

(assert (=> bs!1246024 (= (and (= (regOne!30722 lt!2190640) lt!2190664) (= (regTwo!30722 lt!2190640) (regTwo!30722 r!7292))) (= lambda!278460 lambda!278458))))

(assert (=> bs!1246030 (not (= lambda!278460 lambda!278434))))

(declare-fun bs!1246031 () Bool)

(assert (= bs!1246031 (and b!5381368 d!1722032)))

(assert (=> bs!1246031 (not (= lambda!278460 lambda!278401))))

(declare-fun bs!1246032 () Bool)

(assert (= bs!1246032 (and b!5381368 b!5380881)))

(assert (=> bs!1246032 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 lt!2190640) (regOne!30722 lt!2190664)) (= (regTwo!30722 lt!2190640) (regTwo!30722 lt!2190664))) (= lambda!278460 lambda!278419))))

(declare-fun bs!1246033 () Bool)

(assert (= bs!1246033 (and b!5381368 b!5381218)))

(assert (=> bs!1246033 (= (and (= (regOne!30722 lt!2190640) (regOne!30722 r!7292)) (= (regTwo!30722 lt!2190640) (regTwo!30722 r!7292))) (= lambda!278460 lambda!278443))))

(assert (=> bs!1246027 (= (and (= (regOne!30722 lt!2190640) lt!2190664) (= (regTwo!30722 lt!2190640) (regTwo!30722 r!7292))) (= lambda!278460 lambda!278370))))

(declare-fun bs!1246034 () Bool)

(assert (= bs!1246034 (and b!5381368 d!1722206)))

(assert (=> bs!1246034 (not (= lambda!278460 lambda!278456))))

(declare-fun bs!1246035 () Bool)

(assert (= bs!1246035 (and b!5381368 b!5381373)))

(assert (=> bs!1246035 (not (= lambda!278460 lambda!278459))))

(assert (=> bs!1246029 (not (= lambda!278460 lambda!278440))))

(assert (=> bs!1246023 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 lt!2190640) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 lt!2190640) lt!2190664)) (= lambda!278460 lambda!278373))))

(assert (=> b!5381368 true))

(assert (=> b!5381368 true))

(declare-fun b!5381364 () Bool)

(declare-fun e!3338280 () Bool)

(declare-fun e!3338278 () Bool)

(assert (=> b!5381364 (= e!3338280 e!3338278)))

(declare-fun c!938010 () Bool)

(assert (=> b!5381364 (= c!938010 ((_ is Star!15105) lt!2190640))))

(declare-fun b!5381365 () Bool)

(declare-fun c!938011 () Bool)

(assert (=> b!5381365 (= c!938011 ((_ is ElementMatch!15105) lt!2190640))))

(declare-fun e!3338276 () Bool)

(declare-fun e!3338282 () Bool)

(assert (=> b!5381365 (= e!3338276 e!3338282)))

(declare-fun b!5381366 () Bool)

(declare-fun e!3338279 () Bool)

(assert (=> b!5381366 (= e!3338279 (matchRSpec!2208 (regTwo!30723 lt!2190640) s!2326))))

(declare-fun b!5381367 () Bool)

(declare-fun e!3338281 () Bool)

(declare-fun call!385432 () Bool)

(assert (=> b!5381367 (= e!3338281 call!385432)))

(declare-fun call!385431 () Bool)

(assert (=> b!5381368 (= e!3338278 call!385431)))

(declare-fun b!5381369 () Bool)

(declare-fun c!938008 () Bool)

(assert (=> b!5381369 (= c!938008 ((_ is Union!15105) lt!2190640))))

(assert (=> b!5381369 (= e!3338282 e!3338280)))

(declare-fun bm!385426 () Bool)

(assert (=> bm!385426 (= call!385432 (isEmpty!33483 s!2326))))

(declare-fun b!5381370 () Bool)

(assert (=> b!5381370 (= e!3338280 e!3338279)))

(declare-fun res!2284720 () Bool)

(assert (=> b!5381370 (= res!2284720 (matchRSpec!2208 (regOne!30723 lt!2190640) s!2326))))

(assert (=> b!5381370 (=> res!2284720 e!3338279)))

(declare-fun bm!385427 () Bool)

(assert (=> bm!385427 (= call!385431 (Exists!2286 (ite c!938010 lambda!278459 lambda!278460)))))

(declare-fun b!5381371 () Bool)

(declare-fun res!2284721 () Bool)

(declare-fun e!3338277 () Bool)

(assert (=> b!5381371 (=> res!2284721 e!3338277)))

(assert (=> b!5381371 (= res!2284721 call!385432)))

(assert (=> b!5381371 (= e!3338278 e!3338277)))

(declare-fun b!5381372 () Bool)

(assert (=> b!5381372 (= e!3338281 e!3338276)))

(declare-fun res!2284722 () Bool)

(assert (=> b!5381372 (= res!2284722 (not ((_ is EmptyLang!15105) lt!2190640)))))

(assert (=> b!5381372 (=> (not res!2284722) (not e!3338276))))

(assert (=> b!5381373 (= e!3338277 call!385431)))

(declare-fun d!1722220 () Bool)

(declare-fun c!938009 () Bool)

(assert (=> d!1722220 (= c!938009 ((_ is EmptyExpr!15105) lt!2190640))))

(assert (=> d!1722220 (= (matchRSpec!2208 lt!2190640 s!2326) e!3338281)))

(declare-fun b!5381374 () Bool)

(assert (=> b!5381374 (= e!3338282 (= s!2326 (Cons!61490 (c!937749 lt!2190640) Nil!61490)))))

(assert (= (and d!1722220 c!938009) b!5381367))

(assert (= (and d!1722220 (not c!938009)) b!5381372))

(assert (= (and b!5381372 res!2284722) b!5381365))

(assert (= (and b!5381365 c!938011) b!5381374))

(assert (= (and b!5381365 (not c!938011)) b!5381369))

(assert (= (and b!5381369 c!938008) b!5381370))

(assert (= (and b!5381369 (not c!938008)) b!5381364))

(assert (= (and b!5381370 (not res!2284720)) b!5381366))

(assert (= (and b!5381364 c!938010) b!5381371))

(assert (= (and b!5381364 (not c!938010)) b!5381368))

(assert (= (and b!5381371 (not res!2284721)) b!5381373))

(assert (= (or b!5381373 b!5381368) bm!385427))

(assert (= (or b!5381367 b!5381371) bm!385426))

(declare-fun m!6407412 () Bool)

(assert (=> b!5381366 m!6407412))

(assert (=> bm!385426 m!6407198))

(declare-fun m!6407414 () Bool)

(assert (=> b!5381370 m!6407414))

(declare-fun m!6407416 () Bool)

(assert (=> bm!385427 m!6407416))

(assert (=> b!5380383 d!1722220))

(declare-fun d!1722222 () Bool)

(assert (=> d!1722222 (= (matchR!7290 lt!2190640 s!2326) (matchRSpec!2208 lt!2190640 s!2326))))

(declare-fun lt!2190826 () Unit!153938)

(assert (=> d!1722222 (= lt!2190826 (choose!40451 lt!2190640 s!2326))))

(assert (=> d!1722222 (validRegex!6841 lt!2190640)))

(assert (=> d!1722222 (= (mainMatchTheorem!2208 lt!2190640 s!2326) lt!2190826)))

(declare-fun bs!1246036 () Bool)

(assert (= bs!1246036 d!1722222))

(assert (=> bs!1246036 m!6406442))

(assert (=> bs!1246036 m!6406444))

(declare-fun m!6407418 () Bool)

(assert (=> bs!1246036 m!6407418))

(assert (=> bs!1246036 m!6407404))

(assert (=> b!5380383 d!1722222))

(declare-fun bs!1246037 () Bool)

(declare-fun d!1722224 () Bool)

(assert (= bs!1246037 (and d!1722224 d!1722158)))

(declare-fun lambda!278463 () Int)

(assert (=> bs!1246037 (= lambda!278463 lambda!278446)))

(declare-fun bs!1246038 () Bool)

(assert (= bs!1246038 (and d!1722224 d!1722160)))

(assert (=> bs!1246038 (= lambda!278463 lambda!278449)))

(declare-fun bs!1246039 () Bool)

(assert (= bs!1246039 (and d!1722224 d!1722166)))

(assert (=> bs!1246039 (= lambda!278463 lambda!278452)))

(declare-fun b!5381395 () Bool)

(declare-fun e!3338300 () Bool)

(declare-fun e!3338297 () Bool)

(assert (=> b!5381395 (= e!3338300 e!3338297)))

(declare-fun c!938023 () Bool)

(assert (=> b!5381395 (= c!938023 (isEmpty!33482 (tail!10644 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun b!5381396 () Bool)

(declare-fun lt!2190829 () Regex!15105)

(declare-fun isConcat!471 (Regex!15105) Bool)

(assert (=> b!5381396 (= e!3338297 (isConcat!471 lt!2190829))))

(declare-fun b!5381397 () Bool)

(declare-fun e!3338296 () Bool)

(assert (=> b!5381397 (= e!3338296 e!3338300)))

(declare-fun c!938022 () Bool)

(assert (=> b!5381397 (= c!938022 (isEmpty!33482 (exprs!4989 (h!67940 zl!343))))))

(declare-fun b!5381399 () Bool)

(declare-fun e!3338298 () Regex!15105)

(assert (=> b!5381399 (= e!3338298 (Concat!23950 (h!67939 (exprs!4989 (h!67940 zl!343))) (generalisedConcat!774 (t!374838 (exprs!4989 (h!67940 zl!343))))))))

(declare-fun b!5381400 () Bool)

(assert (=> b!5381400 (= e!3338298 EmptyExpr!15105)))

(declare-fun b!5381401 () Bool)

(declare-fun e!3338295 () Bool)

(assert (=> b!5381401 (= e!3338295 (isEmpty!33482 (t!374838 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun b!5381402 () Bool)

(declare-fun isEmptyExpr!948 (Regex!15105) Bool)

(assert (=> b!5381402 (= e!3338300 (isEmptyExpr!948 lt!2190829))))

(declare-fun b!5381403 () Bool)

(assert (=> b!5381403 (= e!3338297 (= lt!2190829 (head!11547 (exprs!4989 (h!67940 zl!343)))))))

(declare-fun b!5381404 () Bool)

(declare-fun e!3338299 () Regex!15105)

(assert (=> b!5381404 (= e!3338299 (h!67939 (exprs!4989 (h!67940 zl!343))))))

(declare-fun b!5381398 () Bool)

(assert (=> b!5381398 (= e!3338299 e!3338298)))

(declare-fun c!938021 () Bool)

(assert (=> b!5381398 (= c!938021 ((_ is Cons!61491) (exprs!4989 (h!67940 zl!343))))))

(assert (=> d!1722224 e!3338296))

(declare-fun res!2284727 () Bool)

(assert (=> d!1722224 (=> (not res!2284727) (not e!3338296))))

(assert (=> d!1722224 (= res!2284727 (validRegex!6841 lt!2190829))))

(assert (=> d!1722224 (= lt!2190829 e!3338299)))

(declare-fun c!938020 () Bool)

(assert (=> d!1722224 (= c!938020 e!3338295)))

(declare-fun res!2284728 () Bool)

(assert (=> d!1722224 (=> (not res!2284728) (not e!3338295))))

(assert (=> d!1722224 (= res!2284728 ((_ is Cons!61491) (exprs!4989 (h!67940 zl!343))))))

(assert (=> d!1722224 (forall!14507 (exprs!4989 (h!67940 zl!343)) lambda!278463)))

(assert (=> d!1722224 (= (generalisedConcat!774 (exprs!4989 (h!67940 zl!343))) lt!2190829)))

(assert (= (and d!1722224 res!2284728) b!5381401))

(assert (= (and d!1722224 c!938020) b!5381404))

(assert (= (and d!1722224 (not c!938020)) b!5381398))

(assert (= (and b!5381398 c!938021) b!5381399))

(assert (= (and b!5381398 (not c!938021)) b!5381400))

(assert (= (and d!1722224 res!2284727) b!5381397))

(assert (= (and b!5381397 c!938022) b!5381402))

(assert (= (and b!5381397 (not c!938022)) b!5381395))

(assert (= (and b!5381395 c!938023) b!5381403))

(assert (= (and b!5381395 (not c!938023)) b!5381396))

(declare-fun m!6407420 () Bool)

(assert (=> b!5381403 m!6407420))

(declare-fun m!6407422 () Bool)

(assert (=> b!5381397 m!6407422))

(declare-fun m!6407424 () Bool)

(assert (=> b!5381402 m!6407424))

(declare-fun m!6407426 () Bool)

(assert (=> b!5381396 m!6407426))

(declare-fun m!6407428 () Bool)

(assert (=> b!5381399 m!6407428))

(declare-fun m!6407430 () Bool)

(assert (=> d!1722224 m!6407430))

(declare-fun m!6407432 () Bool)

(assert (=> d!1722224 m!6407432))

(declare-fun m!6407434 () Bool)

(assert (=> b!5381395 m!6407434))

(assert (=> b!5381395 m!6407434))

(declare-fun m!6407436 () Bool)

(assert (=> b!5381395 m!6407436))

(assert (=> b!5381401 m!6406466))

(assert (=> b!5380382 d!1722224))

(declare-fun b!5381405 () Bool)

(declare-fun res!2284731 () Bool)

(declare-fun e!3338302 () Bool)

(assert (=> b!5381405 (=> (not res!2284731) (not e!3338302))))

(declare-fun lt!2190832 () Option!15216)

(assert (=> b!5381405 (= res!2284731 (matchR!7290 (regOne!30722 r!7292) (_1!35607 (get!21166 lt!2190832))))))

(declare-fun b!5381406 () Bool)

(declare-fun e!3338301 () Option!15216)

(declare-fun e!3338303 () Option!15216)

(assert (=> b!5381406 (= e!3338301 e!3338303)))

(declare-fun c!938025 () Bool)

(assert (=> b!5381406 (= c!938025 ((_ is Nil!61490) s!2326))))

(declare-fun b!5381407 () Bool)

(declare-fun e!3338304 () Bool)

(assert (=> b!5381407 (= e!3338304 (matchR!7290 (regTwo!30722 r!7292) s!2326))))

(declare-fun b!5381408 () Bool)

(declare-fun res!2284733 () Bool)

(assert (=> b!5381408 (=> (not res!2284733) (not e!3338302))))

(assert (=> b!5381408 (= res!2284733 (matchR!7290 (regTwo!30722 r!7292) (_2!35607 (get!21166 lt!2190832))))))

(declare-fun b!5381409 () Bool)

(declare-fun e!3338305 () Bool)

(assert (=> b!5381409 (= e!3338305 (not (isDefined!11919 lt!2190832)))))

(declare-fun b!5381410 () Bool)

(assert (=> b!5381410 (= e!3338302 (= (++!13408 (_1!35607 (get!21166 lt!2190832)) (_2!35607 (get!21166 lt!2190832))) s!2326))))

(declare-fun d!1722226 () Bool)

(assert (=> d!1722226 e!3338305))

(declare-fun res!2284729 () Bool)

(assert (=> d!1722226 (=> res!2284729 e!3338305)))

(assert (=> d!1722226 (= res!2284729 e!3338302)))

(declare-fun res!2284732 () Bool)

(assert (=> d!1722226 (=> (not res!2284732) (not e!3338302))))

(assert (=> d!1722226 (= res!2284732 (isDefined!11919 lt!2190832))))

(assert (=> d!1722226 (= lt!2190832 e!3338301)))

(declare-fun c!938024 () Bool)

(assert (=> d!1722226 (= c!938024 e!3338304)))

(declare-fun res!2284730 () Bool)

(assert (=> d!1722226 (=> (not res!2284730) (not e!3338304))))

(assert (=> d!1722226 (= res!2284730 (matchR!7290 (regOne!30722 r!7292) Nil!61490))))

(assert (=> d!1722226 (validRegex!6841 (regOne!30722 r!7292))))

(assert (=> d!1722226 (= (findConcatSeparation!1630 (regOne!30722 r!7292) (regTwo!30722 r!7292) Nil!61490 s!2326 s!2326) lt!2190832)))

(declare-fun b!5381411 () Bool)

(assert (=> b!5381411 (= e!3338303 None!15215)))

(declare-fun b!5381412 () Bool)

(declare-fun lt!2190831 () Unit!153938)

(declare-fun lt!2190830 () Unit!153938)

(assert (=> b!5381412 (= lt!2190831 lt!2190830)))

(assert (=> b!5381412 (= (++!13408 (++!13408 Nil!61490 (Cons!61490 (h!67938 s!2326) Nil!61490)) (t!374837 s!2326)) s!2326)))

(assert (=> b!5381412 (= lt!2190830 (lemmaMoveElementToOtherListKeepsConcatEq!1809 Nil!61490 (h!67938 s!2326) (t!374837 s!2326) s!2326))))

(assert (=> b!5381412 (= e!3338303 (findConcatSeparation!1630 (regOne!30722 r!7292) (regTwo!30722 r!7292) (++!13408 Nil!61490 (Cons!61490 (h!67938 s!2326) Nil!61490)) (t!374837 s!2326) s!2326))))

(declare-fun b!5381413 () Bool)

(assert (=> b!5381413 (= e!3338301 (Some!15215 (tuple2!64609 Nil!61490 s!2326)))))

(assert (= (and d!1722226 res!2284730) b!5381407))

(assert (= (and d!1722226 c!938024) b!5381413))

(assert (= (and d!1722226 (not c!938024)) b!5381406))

(assert (= (and b!5381406 c!938025) b!5381411))

(assert (= (and b!5381406 (not c!938025)) b!5381412))

(assert (= (and d!1722226 res!2284732) b!5381405))

(assert (= (and b!5381405 res!2284731) b!5381408))

(assert (= (and b!5381408 res!2284733) b!5381410))

(assert (= (and d!1722226 (not res!2284729)) b!5381409))

(declare-fun m!6407438 () Bool)

(assert (=> b!5381408 m!6407438))

(declare-fun m!6407440 () Bool)

(assert (=> b!5381408 m!6407440))

(assert (=> b!5381407 m!6407358))

(declare-fun m!6407442 () Bool)

(assert (=> d!1722226 m!6407442))

(declare-fun m!6407444 () Bool)

(assert (=> d!1722226 m!6407444))

(declare-fun m!6407446 () Bool)

(assert (=> d!1722226 m!6407446))

(assert (=> b!5381410 m!6407438))

(declare-fun m!6407448 () Bool)

(assert (=> b!5381410 m!6407448))

(assert (=> b!5381409 m!6407442))

(assert (=> b!5381405 m!6407438))

(declare-fun m!6407450 () Bool)

(assert (=> b!5381405 m!6407450))

(assert (=> b!5381412 m!6407368))

(assert (=> b!5381412 m!6407368))

(assert (=> b!5381412 m!6407370))

(assert (=> b!5381412 m!6407372))

(assert (=> b!5381412 m!6407368))

(declare-fun m!6407452 () Bool)

(assert (=> b!5381412 m!6407452))

(assert (=> b!5380404 d!1722226))

(declare-fun d!1722228 () Bool)

(assert (=> d!1722228 (= (Exists!2286 lambda!278366) (choose!40450 lambda!278366))))

(declare-fun bs!1246040 () Bool)

(assert (= bs!1246040 d!1722228))

(declare-fun m!6407454 () Bool)

(assert (=> bs!1246040 m!6407454))

(assert (=> b!5380404 d!1722228))

(declare-fun d!1722230 () Bool)

(assert (=> d!1722230 (= (Exists!2286 lambda!278367) (choose!40450 lambda!278367))))

(declare-fun bs!1246041 () Bool)

(assert (= bs!1246041 d!1722230))

(declare-fun m!6407456 () Bool)

(assert (=> bs!1246041 m!6407456))

(assert (=> b!5380404 d!1722230))

(declare-fun bs!1246042 () Bool)

(declare-fun d!1722232 () Bool)

(assert (= bs!1246042 (and d!1722232 b!5380388)))

(declare-fun lambda!278464 () Int)

(assert (=> bs!1246042 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278464 lambda!278371))))

(declare-fun bs!1246043 () Bool)

(assert (= bs!1246043 (and d!1722232 d!1722214)))

(assert (=> bs!1246043 (= (= (regOne!30722 r!7292) lt!2190664) (= lambda!278464 lambda!278457))))

(declare-fun bs!1246044 () Bool)

(assert (= bs!1246044 (and d!1722232 b!5380404)))

(assert (=> bs!1246044 (= lambda!278464 lambda!278366)))

(declare-fun bs!1246045 () Bool)

(assert (= bs!1246045 (and d!1722232 b!5380886)))

(assert (=> bs!1246045 (not (= lambda!278464 lambda!278417))))

(declare-fun bs!1246046 () Bool)

(assert (= bs!1246046 (and d!1722232 b!5381368)))

(assert (=> bs!1246046 (not (= lambda!278464 lambda!278460))))

(declare-fun bs!1246047 () Bool)

(assert (= bs!1246047 (and d!1722232 b!5380403)))

(assert (=> bs!1246047 (= (= (regOne!30722 r!7292) lt!2190664) (= lambda!278464 lambda!278369))))

(assert (=> bs!1246044 (not (= lambda!278464 lambda!278367))))

(declare-fun bs!1246048 () Bool)

(assert (= bs!1246048 (and d!1722232 b!5381223)))

(assert (=> bs!1246048 (not (= lambda!278464 lambda!278442))))

(assert (=> bs!1246042 (not (= lambda!278464 lambda!278372))))

(declare-fun bs!1246049 () Bool)

(assert (= bs!1246049 (and d!1722232 d!1722092)))

(assert (=> bs!1246049 (not (= lambda!278464 lambda!278441))))

(declare-fun bs!1246050 () Bool)

(assert (= bs!1246050 (and d!1722232 d!1722078)))

(assert (=> bs!1246050 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) (Star!15105 (reg!15434 (regOne!30722 r!7292))))) (= lambda!278464 lambda!278433))))

(assert (=> bs!1246043 (not (= lambda!278464 lambda!278458))))

(assert (=> bs!1246050 (not (= lambda!278464 lambda!278434))))

(declare-fun bs!1246051 () Bool)

(assert (= bs!1246051 (and d!1722232 d!1722032)))

(assert (=> bs!1246051 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278464 lambda!278401))))

(declare-fun bs!1246052 () Bool)

(assert (= bs!1246052 (and d!1722232 b!5380881)))

(assert (=> bs!1246052 (not (= lambda!278464 lambda!278419))))

(declare-fun bs!1246053 () Bool)

(assert (= bs!1246053 (and d!1722232 b!5381218)))

(assert (=> bs!1246053 (not (= lambda!278464 lambda!278443))))

(assert (=> bs!1246047 (not (= lambda!278464 lambda!278370))))

(declare-fun bs!1246054 () Bool)

(assert (= bs!1246054 (and d!1722232 d!1722206)))

(assert (=> bs!1246054 (= (= (regOne!30722 r!7292) lt!2190664) (= lambda!278464 lambda!278456))))

(declare-fun bs!1246055 () Bool)

(assert (= bs!1246055 (and d!1722232 b!5381373)))

(assert (=> bs!1246055 (not (= lambda!278464 lambda!278459))))

(assert (=> bs!1246049 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278464 lambda!278440))))

(assert (=> bs!1246042 (not (= lambda!278464 lambda!278373))))

(assert (=> d!1722232 true))

(assert (=> d!1722232 true))

(assert (=> d!1722232 true))

(assert (=> d!1722232 (= (isDefined!11919 (findConcatSeparation!1630 (regOne!30722 r!7292) (regTwo!30722 r!7292) Nil!61490 s!2326 s!2326)) (Exists!2286 lambda!278464))))

(declare-fun lt!2190833 () Unit!153938)

(assert (=> d!1722232 (= lt!2190833 (choose!40452 (regOne!30722 r!7292) (regTwo!30722 r!7292) s!2326))))

(assert (=> d!1722232 (validRegex!6841 (regOne!30722 r!7292))))

(assert (=> d!1722232 (= (lemmaFindConcatSeparationEquivalentToExists!1394 (regOne!30722 r!7292) (regTwo!30722 r!7292) s!2326) lt!2190833)))

(declare-fun bs!1246056 () Bool)

(assert (= bs!1246056 d!1722232))

(declare-fun m!6407458 () Bool)

(assert (=> bs!1246056 m!6407458))

(assert (=> bs!1246056 m!6406386))

(assert (=> bs!1246056 m!6406388))

(declare-fun m!6407460 () Bool)

(assert (=> bs!1246056 m!6407460))

(assert (=> bs!1246056 m!6406386))

(assert (=> bs!1246056 m!6407446))

(assert (=> b!5380404 d!1722232))

(declare-fun bs!1246057 () Bool)

(declare-fun d!1722234 () Bool)

(assert (= bs!1246057 (and d!1722234 b!5380388)))

(declare-fun lambda!278465 () Int)

(assert (=> bs!1246057 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278465 lambda!278371))))

(declare-fun bs!1246058 () Bool)

(assert (= bs!1246058 (and d!1722234 d!1722214)))

(assert (=> bs!1246058 (= (= (regOne!30722 r!7292) lt!2190664) (= lambda!278465 lambda!278457))))

(declare-fun bs!1246059 () Bool)

(assert (= bs!1246059 (and d!1722234 b!5380404)))

(assert (=> bs!1246059 (= lambda!278465 lambda!278366)))

(declare-fun bs!1246060 () Bool)

(assert (= bs!1246060 (and d!1722234 b!5380886)))

(assert (=> bs!1246060 (not (= lambda!278465 lambda!278417))))

(declare-fun bs!1246061 () Bool)

(assert (= bs!1246061 (and d!1722234 b!5381368)))

(assert (=> bs!1246061 (not (= lambda!278465 lambda!278460))))

(declare-fun bs!1246062 () Bool)

(assert (= bs!1246062 (and d!1722234 b!5380403)))

(assert (=> bs!1246062 (= (= (regOne!30722 r!7292) lt!2190664) (= lambda!278465 lambda!278369))))

(assert (=> bs!1246059 (not (= lambda!278465 lambda!278367))))

(declare-fun bs!1246063 () Bool)

(assert (= bs!1246063 (and d!1722234 b!5381223)))

(assert (=> bs!1246063 (not (= lambda!278465 lambda!278442))))

(assert (=> bs!1246057 (not (= lambda!278465 lambda!278372))))

(declare-fun bs!1246064 () Bool)

(assert (= bs!1246064 (and d!1722234 d!1722092)))

(assert (=> bs!1246064 (not (= lambda!278465 lambda!278441))))

(declare-fun bs!1246065 () Bool)

(assert (= bs!1246065 (and d!1722234 d!1722078)))

(assert (=> bs!1246065 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) (Star!15105 (reg!15434 (regOne!30722 r!7292))))) (= lambda!278465 lambda!278433))))

(assert (=> bs!1246058 (not (= lambda!278465 lambda!278458))))

(assert (=> bs!1246065 (not (= lambda!278465 lambda!278434))))

(declare-fun bs!1246066 () Bool)

(assert (= bs!1246066 (and d!1722234 d!1722032)))

(assert (=> bs!1246066 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278465 lambda!278401))))

(declare-fun bs!1246067 () Bool)

(assert (= bs!1246067 (and d!1722234 b!5380881)))

(assert (=> bs!1246067 (not (= lambda!278465 lambda!278419))))

(declare-fun bs!1246068 () Bool)

(assert (= bs!1246068 (and d!1722234 d!1722232)))

(assert (=> bs!1246068 (= lambda!278465 lambda!278464)))

(declare-fun bs!1246069 () Bool)

(assert (= bs!1246069 (and d!1722234 b!5381218)))

(assert (=> bs!1246069 (not (= lambda!278465 lambda!278443))))

(assert (=> bs!1246062 (not (= lambda!278465 lambda!278370))))

(declare-fun bs!1246070 () Bool)

(assert (= bs!1246070 (and d!1722234 d!1722206)))

(assert (=> bs!1246070 (= (= (regOne!30722 r!7292) lt!2190664) (= lambda!278465 lambda!278456))))

(declare-fun bs!1246071 () Bool)

(assert (= bs!1246071 (and d!1722234 b!5381373)))

(assert (=> bs!1246071 (not (= lambda!278465 lambda!278459))))

(assert (=> bs!1246064 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278465 lambda!278440))))

(assert (=> bs!1246057 (not (= lambda!278465 lambda!278373))))

(assert (=> d!1722234 true))

(assert (=> d!1722234 true))

(assert (=> d!1722234 true))

(declare-fun lambda!278466 () Int)

(assert (=> bs!1246057 (not (= lambda!278466 lambda!278371))))

(assert (=> bs!1246058 (not (= lambda!278466 lambda!278457))))

(assert (=> bs!1246059 (not (= lambda!278466 lambda!278366))))

(assert (=> bs!1246060 (not (= lambda!278466 lambda!278417))))

(assert (=> bs!1246061 (= (and (= (regOne!30722 r!7292) (regOne!30722 lt!2190640)) (= (regTwo!30722 r!7292) (regTwo!30722 lt!2190640))) (= lambda!278466 lambda!278460))))

(assert (=> bs!1246062 (not (= lambda!278466 lambda!278369))))

(assert (=> bs!1246059 (= lambda!278466 lambda!278367)))

(assert (=> bs!1246063 (not (= lambda!278466 lambda!278442))))

(assert (=> bs!1246057 (not (= lambda!278466 lambda!278372))))

(assert (=> bs!1246064 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278466 lambda!278441))))

(assert (=> bs!1246065 (not (= lambda!278466 lambda!278433))))

(assert (=> bs!1246058 (= (= (regOne!30722 r!7292) lt!2190664) (= lambda!278466 lambda!278458))))

(assert (=> bs!1246065 (not (= lambda!278466 lambda!278434))))

(declare-fun bs!1246072 () Bool)

(assert (= bs!1246072 d!1722234))

(assert (=> bs!1246072 (not (= lambda!278466 lambda!278465))))

(assert (=> bs!1246066 (not (= lambda!278466 lambda!278401))))

(assert (=> bs!1246067 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (regOne!30722 lt!2190664)) (= (regTwo!30722 r!7292) (regTwo!30722 lt!2190664))) (= lambda!278466 lambda!278419))))

(assert (=> bs!1246068 (not (= lambda!278466 lambda!278464))))

(assert (=> bs!1246069 (= lambda!278466 lambda!278443)))

(assert (=> bs!1246062 (= (= (regOne!30722 r!7292) lt!2190664) (= lambda!278466 lambda!278370))))

(assert (=> bs!1246070 (not (= lambda!278466 lambda!278456))))

(assert (=> bs!1246071 (not (= lambda!278466 lambda!278459))))

(assert (=> bs!1246064 (not (= lambda!278466 lambda!278440))))

(assert (=> bs!1246057 (= (and (= s!2326 (_1!35607 lt!2190644)) (= (regOne!30722 r!7292) (reg!15434 (regOne!30722 r!7292))) (= (regTwo!30722 r!7292) lt!2190664)) (= lambda!278466 lambda!278373))))

(assert (=> d!1722234 true))

(assert (=> d!1722234 true))

(assert (=> d!1722234 true))

(assert (=> d!1722234 (= (Exists!2286 lambda!278465) (Exists!2286 lambda!278466))))

(declare-fun lt!2190834 () Unit!153938)

(assert (=> d!1722234 (= lt!2190834 (choose!40454 (regOne!30722 r!7292) (regTwo!30722 r!7292) s!2326))))

(assert (=> d!1722234 (validRegex!6841 (regOne!30722 r!7292))))

(assert (=> d!1722234 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!940 (regOne!30722 r!7292) (regTwo!30722 r!7292) s!2326) lt!2190834)))

(declare-fun m!6407462 () Bool)

(assert (=> bs!1246072 m!6407462))

(declare-fun m!6407464 () Bool)

(assert (=> bs!1246072 m!6407464))

(declare-fun m!6407466 () Bool)

(assert (=> bs!1246072 m!6407466))

(assert (=> bs!1246072 m!6407446))

(assert (=> b!5380404 d!1722234))

(declare-fun d!1722236 () Bool)

(assert (=> d!1722236 (= (isDefined!11919 (findConcatSeparation!1630 (regOne!30722 r!7292) (regTwo!30722 r!7292) Nil!61490 s!2326 s!2326)) (not (isEmpty!33486 (findConcatSeparation!1630 (regOne!30722 r!7292) (regTwo!30722 r!7292) Nil!61490 s!2326 s!2326))))))

(declare-fun bs!1246073 () Bool)

(assert (= bs!1246073 d!1722236))

(assert (=> bs!1246073 m!6406386))

(declare-fun m!6407468 () Bool)

(assert (=> bs!1246073 m!6407468))

(assert (=> b!5380404 d!1722236))

(declare-fun bs!1246074 () Bool)

(declare-fun d!1722238 () Bool)

(assert (= bs!1246074 (and d!1722238 d!1722158)))

(declare-fun lambda!278467 () Int)

(assert (=> bs!1246074 (= lambda!278467 lambda!278446)))

(declare-fun bs!1246075 () Bool)

(assert (= bs!1246075 (and d!1722238 d!1722160)))

(assert (=> bs!1246075 (= lambda!278467 lambda!278449)))

(declare-fun bs!1246076 () Bool)

(assert (= bs!1246076 (and d!1722238 d!1722166)))

(assert (=> bs!1246076 (= lambda!278467 lambda!278452)))

(declare-fun bs!1246077 () Bool)

(assert (= bs!1246077 (and d!1722238 d!1722224)))

(assert (=> bs!1246077 (= lambda!278467 lambda!278463)))

(assert (=> d!1722238 (= (inv!81009 (h!67940 zl!343)) (forall!14507 (exprs!4989 (h!67940 zl!343)) lambda!278467))))

(declare-fun bs!1246078 () Bool)

(assert (= bs!1246078 d!1722238))

(declare-fun m!6407470 () Bool)

(assert (=> bs!1246078 m!6407470))

(assert (=> b!5380387 d!1722238))

(declare-fun e!3338308 () Bool)

(assert (=> b!5380384 (= tp!1491329 e!3338308)))

(declare-fun b!5381424 () Bool)

(assert (=> b!5381424 (= e!3338308 tp_is_empty!39463)))

(declare-fun b!5381427 () Bool)

(declare-fun tp!1491402 () Bool)

(declare-fun tp!1491406 () Bool)

(assert (=> b!5381427 (= e!3338308 (and tp!1491402 tp!1491406))))

(declare-fun b!5381425 () Bool)

(declare-fun tp!1491405 () Bool)

(declare-fun tp!1491404 () Bool)

(assert (=> b!5381425 (= e!3338308 (and tp!1491405 tp!1491404))))

(declare-fun b!5381426 () Bool)

(declare-fun tp!1491403 () Bool)

(assert (=> b!5381426 (= e!3338308 tp!1491403)))

(assert (= (and b!5380384 ((_ is ElementMatch!15105) (regOne!30722 r!7292))) b!5381424))

(assert (= (and b!5380384 ((_ is Concat!23950) (regOne!30722 r!7292))) b!5381425))

(assert (= (and b!5380384 ((_ is Star!15105) (regOne!30722 r!7292))) b!5381426))

(assert (= (and b!5380384 ((_ is Union!15105) (regOne!30722 r!7292))) b!5381427))

(declare-fun e!3338309 () Bool)

(assert (=> b!5380384 (= tp!1491332 e!3338309)))

(declare-fun b!5381428 () Bool)

(assert (=> b!5381428 (= e!3338309 tp_is_empty!39463)))

(declare-fun b!5381431 () Bool)

(declare-fun tp!1491407 () Bool)

(declare-fun tp!1491411 () Bool)

(assert (=> b!5381431 (= e!3338309 (and tp!1491407 tp!1491411))))

(declare-fun b!5381429 () Bool)

(declare-fun tp!1491410 () Bool)

(declare-fun tp!1491409 () Bool)

(assert (=> b!5381429 (= e!3338309 (and tp!1491410 tp!1491409))))

(declare-fun b!5381430 () Bool)

(declare-fun tp!1491408 () Bool)

(assert (=> b!5381430 (= e!3338309 tp!1491408)))

(assert (= (and b!5380384 ((_ is ElementMatch!15105) (regTwo!30722 r!7292))) b!5381428))

(assert (= (and b!5380384 ((_ is Concat!23950) (regTwo!30722 r!7292))) b!5381429))

(assert (= (and b!5380384 ((_ is Star!15105) (regTwo!30722 r!7292))) b!5381430))

(assert (= (and b!5380384 ((_ is Union!15105) (regTwo!30722 r!7292))) b!5381431))

(declare-fun e!3338310 () Bool)

(assert (=> b!5380410 (= tp!1491324 e!3338310)))

(declare-fun b!5381432 () Bool)

(assert (=> b!5381432 (= e!3338310 tp_is_empty!39463)))

(declare-fun b!5381435 () Bool)

(declare-fun tp!1491412 () Bool)

(declare-fun tp!1491416 () Bool)

(assert (=> b!5381435 (= e!3338310 (and tp!1491412 tp!1491416))))

(declare-fun b!5381433 () Bool)

(declare-fun tp!1491415 () Bool)

(declare-fun tp!1491414 () Bool)

(assert (=> b!5381433 (= e!3338310 (and tp!1491415 tp!1491414))))

(declare-fun b!5381434 () Bool)

(declare-fun tp!1491413 () Bool)

(assert (=> b!5381434 (= e!3338310 tp!1491413)))

(assert (= (and b!5380410 ((_ is ElementMatch!15105) (reg!15434 r!7292))) b!5381432))

(assert (= (and b!5380410 ((_ is Concat!23950) (reg!15434 r!7292))) b!5381433))

(assert (= (and b!5380410 ((_ is Star!15105) (reg!15434 r!7292))) b!5381434))

(assert (= (and b!5380410 ((_ is Union!15105) (reg!15434 r!7292))) b!5381435))

(declare-fun b!5381440 () Bool)

(declare-fun e!3338313 () Bool)

(declare-fun tp!1491421 () Bool)

(declare-fun tp!1491422 () Bool)

(assert (=> b!5381440 (= e!3338313 (and tp!1491421 tp!1491422))))

(assert (=> b!5380409 (= tp!1491333 e!3338313)))

(assert (= (and b!5380409 ((_ is Cons!61491) (exprs!4989 setElem!34901))) b!5381440))

(declare-fun b!5381445 () Bool)

(declare-fun e!3338316 () Bool)

(declare-fun tp!1491425 () Bool)

(assert (=> b!5381445 (= e!3338316 (and tp_is_empty!39463 tp!1491425))))

(assert (=> b!5380396 (= tp!1491325 e!3338316)))

(assert (= (and b!5380396 ((_ is Cons!61490) (t!374837 s!2326))) b!5381445))

(declare-fun e!3338317 () Bool)

(assert (=> b!5380385 (= tp!1491326 e!3338317)))

(declare-fun b!5381446 () Bool)

(assert (=> b!5381446 (= e!3338317 tp_is_empty!39463)))

(declare-fun b!5381449 () Bool)

(declare-fun tp!1491426 () Bool)

(declare-fun tp!1491430 () Bool)

(assert (=> b!5381449 (= e!3338317 (and tp!1491426 tp!1491430))))

(declare-fun b!5381447 () Bool)

(declare-fun tp!1491429 () Bool)

(declare-fun tp!1491428 () Bool)

(assert (=> b!5381447 (= e!3338317 (and tp!1491429 tp!1491428))))

(declare-fun b!5381448 () Bool)

(declare-fun tp!1491427 () Bool)

(assert (=> b!5381448 (= e!3338317 tp!1491427)))

(assert (= (and b!5380385 ((_ is ElementMatch!15105) (regOne!30723 r!7292))) b!5381446))

(assert (= (and b!5380385 ((_ is Concat!23950) (regOne!30723 r!7292))) b!5381447))

(assert (= (and b!5380385 ((_ is Star!15105) (regOne!30723 r!7292))) b!5381448))

(assert (= (and b!5380385 ((_ is Union!15105) (regOne!30723 r!7292))) b!5381449))

(declare-fun e!3338318 () Bool)

(assert (=> b!5380385 (= tp!1491328 e!3338318)))

(declare-fun b!5381450 () Bool)

(assert (=> b!5381450 (= e!3338318 tp_is_empty!39463)))

(declare-fun b!5381453 () Bool)

(declare-fun tp!1491431 () Bool)

(declare-fun tp!1491435 () Bool)

(assert (=> b!5381453 (= e!3338318 (and tp!1491431 tp!1491435))))

(declare-fun b!5381451 () Bool)

(declare-fun tp!1491434 () Bool)

(declare-fun tp!1491433 () Bool)

(assert (=> b!5381451 (= e!3338318 (and tp!1491434 tp!1491433))))

(declare-fun b!5381452 () Bool)

(declare-fun tp!1491432 () Bool)

(assert (=> b!5381452 (= e!3338318 tp!1491432)))

(assert (= (and b!5380385 ((_ is ElementMatch!15105) (regTwo!30723 r!7292))) b!5381450))

(assert (= (and b!5380385 ((_ is Concat!23950) (regTwo!30723 r!7292))) b!5381451))

(assert (= (and b!5380385 ((_ is Star!15105) (regTwo!30723 r!7292))) b!5381452))

(assert (= (and b!5380385 ((_ is Union!15105) (regTwo!30723 r!7292))) b!5381453))

(declare-fun condSetEmpty!34907 () Bool)

(assert (=> setNonEmpty!34901 (= condSetEmpty!34907 (= setRest!34901 ((as const (Array Context!8978 Bool)) false)))))

(declare-fun setRes!34907 () Bool)

(assert (=> setNonEmpty!34901 (= tp!1491331 setRes!34907)))

(declare-fun setIsEmpty!34907 () Bool)

(assert (=> setIsEmpty!34907 setRes!34907))

(declare-fun e!3338321 () Bool)

(declare-fun setNonEmpty!34907 () Bool)

(declare-fun tp!1491440 () Bool)

(declare-fun setElem!34907 () Context!8978)

(assert (=> setNonEmpty!34907 (= setRes!34907 (and tp!1491440 (inv!81009 setElem!34907) e!3338321))))

(declare-fun setRest!34907 () (InoxSet Context!8978))

(assert (=> setNonEmpty!34907 (= setRest!34901 ((_ map or) (store ((as const (Array Context!8978 Bool)) false) setElem!34907 true) setRest!34907))))

(declare-fun b!5381458 () Bool)

(declare-fun tp!1491441 () Bool)

(assert (=> b!5381458 (= e!3338321 tp!1491441)))

(assert (= (and setNonEmpty!34901 condSetEmpty!34907) setIsEmpty!34907))

(assert (= (and setNonEmpty!34901 (not condSetEmpty!34907)) setNonEmpty!34907))

(assert (= setNonEmpty!34907 b!5381458))

(declare-fun m!6407472 () Bool)

(assert (=> setNonEmpty!34907 m!6407472))

(declare-fun b!5381466 () Bool)

(declare-fun e!3338327 () Bool)

(declare-fun tp!1491446 () Bool)

(assert (=> b!5381466 (= e!3338327 tp!1491446)))

(declare-fun b!5381465 () Bool)

(declare-fun tp!1491447 () Bool)

(declare-fun e!3338326 () Bool)

(assert (=> b!5381465 (= e!3338326 (and (inv!81009 (h!67940 (t!374839 zl!343))) e!3338327 tp!1491447))))

(assert (=> b!5380387 (= tp!1491330 e!3338326)))

(assert (= b!5381465 b!5381466))

(assert (= (and b!5380387 ((_ is Cons!61492) (t!374839 zl!343))) b!5381465))

(declare-fun m!6407474 () Bool)

(assert (=> b!5381465 m!6407474))

(declare-fun b!5381467 () Bool)

(declare-fun e!3338328 () Bool)

(declare-fun tp!1491448 () Bool)

(declare-fun tp!1491449 () Bool)

(assert (=> b!5381467 (= e!3338328 (and tp!1491448 tp!1491449))))

(assert (=> b!5380402 (= tp!1491327 e!3338328)))

(assert (= (and b!5380402 ((_ is Cons!61491) (exprs!4989 (h!67940 zl!343)))) b!5381467))

(declare-fun b_lambda!206117 () Bool)

(assert (= b_lambda!206111 (or b!5380412 b_lambda!206117)))

(declare-fun bs!1246079 () Bool)

(declare-fun d!1722240 () Bool)

(assert (= bs!1246079 (and d!1722240 b!5380412)))

(assert (=> bs!1246079 (= (dynLambda!24275 lambda!278368 lt!2190634) (derivationStepZipperUp!477 lt!2190634 (h!67938 s!2326)))))

(assert (=> bs!1246079 m!6406366))

(assert (=> d!1722108 d!1722240))

(declare-fun b_lambda!206119 () Bool)

(assert (= b_lambda!206115 (or b!5380412 b_lambda!206119)))

(declare-fun bs!1246080 () Bool)

(declare-fun d!1722242 () Bool)

(assert (= bs!1246080 (and d!1722242 b!5380412)))

(assert (=> bs!1246080 (= (dynLambda!24275 lambda!278368 lt!2190651) (derivationStepZipperUp!477 lt!2190651 (h!67938 s!2326)))))

(assert (=> bs!1246080 m!6406498))

(assert (=> d!1722186 d!1722242))

(declare-fun b_lambda!206121 () Bool)

(assert (= b_lambda!206109 (or b!5380412 b_lambda!206121)))

(declare-fun bs!1246081 () Bool)

(declare-fun d!1722244 () Bool)

(assert (= bs!1246081 (and d!1722244 b!5380412)))

(assert (=> bs!1246081 (= (dynLambda!24275 lambda!278368 lt!2190650) (derivationStepZipperUp!477 lt!2190650 (h!67938 s!2326)))))

(assert (=> bs!1246081 m!6406370))

(assert (=> d!1722106 d!1722244))

(declare-fun b_lambda!206123 () Bool)

(assert (= b_lambda!206113 (or b!5380412 b_lambda!206123)))

(declare-fun bs!1246082 () Bool)

(declare-fun d!1722246 () Bool)

(assert (= bs!1246082 (and d!1722246 b!5380412)))

(assert (=> bs!1246082 (= (dynLambda!24275 lambda!278368 (h!67940 zl!343)) (derivationStepZipperUp!477 (h!67940 zl!343) (h!67938 s!2326)))))

(assert (=> bs!1246082 m!6406480))

(assert (=> d!1722136 d!1722246))

(check-sat (not b!5381410) (not d!1722208) (not b!5381264) (not d!1722130) (not d!1722202) (not b!5381228) (not b!5381114) (not d!1722210) (not bm!385426) (not d!1722224) (not b!5381232) (not b!5381397) (not b!5381104) (not d!1721942) (not d!1722108) (not b!5381193) (not b!5381121) (not b!5381211) (not b!5381216) (not d!1722170) (not b!5381434) (not b!5381064) (not b!5381409) (not b!5380665) (not b!5381070) (not bm!385375) (not bm!385419) (not b!5381403) (not d!1721998) (not d!1722132) (not b!5381426) (not b!5380883) (not b!5380667) (not b!5381336) (not b!5381407) (not b_lambda!206119) (not b_lambda!206117) (not bm!385406) (not d!1722030) (not b!5381335) (not d!1722110) (not b!5381341) (not b!5380666) (not d!1722076) (not d!1722206) (not b!5381320) (not b!5381117) (not b!5381262) (not b!5380750) (not bm!385379) (not d!1722154) (not b!5381405) (not b!5381205) (not b!5381263) (not d!1722150) (not b!5381276) (not b!5381395) (not b!5381354) (not b!5381168) (not bm!385413) (not bm!385390) (not d!1721996) (not b!5380664) (not bm!385422) (not b!5381396) (not d!1722162) (not b!5381339) (not b!5381451) (not d!1722160) (not b!5380669) (not bm!385414) (not d!1722230) (not b!5381359) tp_is_empty!39463 (not d!1722166) (not setNonEmpty!34907) (not b!5381448) (not b!5381288) (not d!1722226) (not b!5380662) (not d!1722118) (not b!5381453) (not b!5381123) (not bm!385412) (not b!5381401) (not b!5381323) (not d!1722186) (not bm!385408) (not d!1722146) (not b!5381154) (not b!5381295) (not b!5381285) (not b!5381342) (not b!5381408) (not d!1722180) (not b!5381163) (not bm!385417) (not b!5381429) (not d!1722190) (not d!1722174) (not b!5381425) (not d!1722136) (not b!5381289) (not b!5381466) (not b!5381430) (not b!5381273) (not b!5381447) (not b!5381267) (not d!1722182) (not bm!385388) (not b!5381277) (not bs!1246080) (not b!5381100) (not b!5381433) (not bs!1246082) (not b!5381261) (not b!5381157) (not b!5381213) (not d!1722232) (not b!5381124) (not b!5381370) (not b!5381229) (not b!5381458) (not b!5381275) (not b!5381465) (not b!5381158) (not b!5381399) (not d!1722178) (not d!1722148) (not d!1722228) (not d!1722204) (not bm!385368) (not b!5381344) (not b!5381235) (not b!5381347) (not b!5381350) (not b!5381308) (not d!1722164) (not b!5381266) (not b!5381348) (not b!5381210) (not b!5381110) (not b!5381412) (not bm!385405) (not d!1722106) (not d!1722156) (not d!1722168) (not b!5381298) (not b!5381294) (not d!1722238) (not b!5381118) (not bm!385420) (not b!5380749) (not b!5381162) (not b!5381307) (not bm!385367) (not d!1722120) (not d!1722026) (not d!1722200) (not b!5381069) (not b!5381220) (not bm!385411) (not b!5381300) (not b!5381301) (not bs!1246079) (not d!1722112) (not b!5381427) (not d!1722078) (not b!5381325) (not d!1722188) (not d!1722214) (not bm!385380) (not b!5381366) (not b!5381440) (not b!5381278) (not d!1722092) (not b!5381467) (not b!5381265) (not b!5381234) (not b!5381280) (not b!5381167) (not b_lambda!206123) (not bm!385392) (not bm!385376) (not d!1722172) (not b!5381445) (not bm!385416) (not d!1722218) (not b!5381431) (not b!5380879) (not bm!385425) (not b!5381065) (not b_lambda!206121) (not b!5381103) (not bs!1246081) (not b!5381337) (not b!5381281) (not d!1722216) (not b!5381357) (not d!1722196) (not d!1722124) (not bm!385427) (not bm!385387) (not b!5381353) (not b!5381225) (not d!1722122) (not b!5381360) (not d!1722158) (not d!1722032) (not b!5381402) (not b!5381452) (not d!1722222) (not b!5381107) (not b!5381435) (not d!1721994) (not d!1722234) (not b!5381291) (not bm!385415) (not b!5381284) (not b!5381212) (not bm!385391) (not b!5381109) (not d!1722176) (not d!1722236) (not b!5381340) (not b!5381449))
(check-sat)
