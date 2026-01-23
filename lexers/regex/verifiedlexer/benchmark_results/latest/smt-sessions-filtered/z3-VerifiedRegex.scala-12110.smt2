; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!679804 () Bool)

(assert start!679804)

(declare-fun b!7033798 () Bool)

(assert (=> b!7033798 true))

(declare-fun b!7033822 () Bool)

(assert (=> b!7033822 true))

(declare-fun b!7033797 () Bool)

(assert (=> b!7033797 true))

(declare-fun bs!1871160 () Bool)

(declare-fun b!7033820 () Bool)

(assert (= bs!1871160 (and b!7033820 b!7033798)))

(declare-fun lambda!415031 () Int)

(declare-fun lambda!415027 () Int)

(assert (=> bs!1871160 (not (= lambda!415031 lambda!415027))))

(declare-fun b!7033793 () Bool)

(declare-fun e!4228424 () Bool)

(declare-fun tp!1936578 () Bool)

(assert (=> b!7033793 (= e!4228424 tp!1936578)))

(declare-fun b!7033794 () Bool)

(declare-fun res!2871376 () Bool)

(declare-fun e!4228421 () Bool)

(assert (=> b!7033794 (=> res!2871376 e!4228421)))

(declare-datatypes ((C!35204 0))(
  ( (C!35205 (val!27304 Int)) )
))
(declare-datatypes ((Regex!17467 0))(
  ( (ElementMatch!17467 (c!1308424 C!35204)) (Concat!26312 (regOne!35446 Regex!17467) (regTwo!35446 Regex!17467)) (EmptyExpr!17467) (Star!17467 (reg!17796 Regex!17467)) (EmptyLang!17467) (Union!17467 (regOne!35447 Regex!17467) (regTwo!35447 Regex!17467)) )
))
(declare-datatypes ((List!67929 0))(
  ( (Nil!67805) (Cons!67805 (h!74253 Regex!17467) (t!381696 List!67929)) )
))
(declare-datatypes ((Context!12926 0))(
  ( (Context!12927 (exprs!6963 List!67929)) )
))
(declare-fun lt!2519501 () Context!12926)

(declare-fun nullableContext!87 (Context!12926) Bool)

(assert (=> b!7033794 (= res!2871376 (not (nullableContext!87 lt!2519501)))))

(declare-fun b!7033795 () Bool)

(declare-fun e!4228433 () Bool)

(declare-fun e!4228430 () Bool)

(assert (=> b!7033795 (= e!4228433 e!4228430)))

(declare-fun res!2871386 () Bool)

(assert (=> b!7033795 (=> res!2871386 e!4228430)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2519524 () (InoxSet Context!12926))

(declare-datatypes ((List!67930 0))(
  ( (Nil!67806) (Cons!67806 (h!74254 C!35204) (t!381697 List!67930)) )
))
(declare-fun s!7408 () List!67930)

(declare-fun matchZipper!3007 ((InoxSet Context!12926) List!67930) Bool)

(assert (=> b!7033795 (= res!2871386 (not (matchZipper!3007 lt!2519524 (t!381697 s!7408))))))

(declare-datatypes ((Unit!161608 0))(
  ( (Unit!161609) )
))
(declare-fun lt!2519519 () Unit!161608)

(declare-fun lt!2519492 () List!67929)

(declare-fun lambda!415029 () Int)

(declare-fun ct2!306 () Context!12926)

(declare-fun lemmaConcatPreservesForall!788 (List!67929 List!67929 Int) Unit!161608)

(assert (=> b!7033795 (= lt!2519519 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun b!7033796 () Bool)

(declare-fun res!2871392 () Bool)

(declare-fun e!4228438 () Bool)

(assert (=> b!7033796 (=> res!2871392 e!4228438)))

(declare-datatypes ((tuple2!68080 0))(
  ( (tuple2!68081 (_1!37343 List!67930) (_2!37343 List!67930)) )
))
(declare-fun lt!2519504 () tuple2!68080)

(declare-fun isEmpty!39548 (List!67930) Bool)

(assert (=> b!7033796 (= res!2871392 (not (isEmpty!39548 (_1!37343 lt!2519504))))))

(declare-fun e!4228423 () Bool)

(declare-fun e!4228436 () Bool)

(assert (=> b!7033797 (= e!4228423 e!4228436)))

(declare-fun res!2871368 () Bool)

(assert (=> b!7033797 (=> res!2871368 e!4228436)))

(declare-fun lt!2519528 () (InoxSet Context!12926))

(declare-fun lt!2519523 () (InoxSet Context!12926))

(declare-fun derivationStepZipper!2923 ((InoxSet Context!12926) C!35204) (InoxSet Context!12926))

(assert (=> b!7033797 (= res!2871368 (not (= (derivationStepZipper!2923 lt!2519523 (h!74254 s!7408)) lt!2519528)))))

(declare-fun lambda!415030 () Int)

(declare-fun lt!2519536 () Context!12926)

(declare-fun flatMap!2414 ((InoxSet Context!12926) Int) (InoxSet Context!12926))

(declare-fun derivationStepZipperUp!2077 (Context!12926 C!35204) (InoxSet Context!12926))

(assert (=> b!7033797 (= (flatMap!2414 lt!2519523 lambda!415030) (derivationStepZipperUp!2077 lt!2519536 (h!74254 s!7408)))))

(declare-fun lt!2519491 () Unit!161608)

(declare-fun lemmaFlatMapOnSingletonSet!1928 ((InoxSet Context!12926) Context!12926 Int) Unit!161608)

(assert (=> b!7033797 (= lt!2519491 (lemmaFlatMapOnSingletonSet!1928 lt!2519523 lt!2519536 lambda!415030))))

(assert (=> b!7033797 (= lt!2519528 (derivationStepZipperUp!2077 lt!2519536 (h!74254 s!7408)))))

(declare-fun lt!2519521 () Unit!161608)

(assert (=> b!7033797 (= lt!2519521 (lemmaConcatPreservesForall!788 (exprs!6963 lt!2519501) (exprs!6963 ct2!306) lambda!415029))))

(declare-fun setElem!49184 () Context!12926)

(declare-fun setNonEmpty!49184 () Bool)

(declare-fun tp!1936576 () Bool)

(declare-fun setRes!49184 () Bool)

(declare-fun inv!86526 (Context!12926) Bool)

(assert (=> setNonEmpty!49184 (= setRes!49184 (and tp!1936576 (inv!86526 setElem!49184) e!4228424))))

(declare-fun z1!570 () (InoxSet Context!12926))

(declare-fun setRest!49184 () (InoxSet Context!12926))

(assert (=> setNonEmpty!49184 (= z1!570 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) setElem!49184 true) setRest!49184))))

(declare-fun e!4228435 () Bool)

(declare-fun e!4228437 () Bool)

(assert (=> b!7033798 (= e!4228435 (not e!4228437))))

(declare-fun res!2871370 () Bool)

(assert (=> b!7033798 (=> res!2871370 e!4228437)))

(declare-fun lt!2519537 () (InoxSet Context!12926))

(assert (=> b!7033798 (= res!2871370 (not (matchZipper!3007 lt!2519537 s!7408)))))

(declare-fun lt!2519506 () Context!12926)

(assert (=> b!7033798 (= lt!2519537 (store ((as const (Array Context!12926 Bool)) false) lt!2519506 true))))

(declare-fun lt!2519543 () (InoxSet Context!12926))

(declare-fun getWitness!1474 ((InoxSet Context!12926) Int) Context!12926)

(assert (=> b!7033798 (= lt!2519506 (getWitness!1474 lt!2519543 lambda!415027))))

(declare-datatypes ((List!67931 0))(
  ( (Nil!67807) (Cons!67807 (h!74255 Context!12926) (t!381698 List!67931)) )
))
(declare-fun lt!2519542 () List!67931)

(declare-fun exists!3396 (List!67931 Int) Bool)

(assert (=> b!7033798 (exists!3396 lt!2519542 lambda!415027)))

(declare-fun lt!2519493 () Unit!161608)

(declare-fun lemmaZipperMatchesExistsMatchingContext!406 (List!67931 List!67930) Unit!161608)

(assert (=> b!7033798 (= lt!2519493 (lemmaZipperMatchesExistsMatchingContext!406 lt!2519542 s!7408))))

(declare-fun toList!10810 ((InoxSet Context!12926)) List!67931)

(assert (=> b!7033798 (= lt!2519542 (toList!10810 lt!2519543))))

(declare-fun b!7033799 () Bool)

(declare-fun e!4228422 () Bool)

(assert (=> b!7033799 (= e!4228422 (not (matchZipper!3007 lt!2519524 (t!381697 s!7408))))))

(declare-fun lt!2519512 () Unit!161608)

(assert (=> b!7033799 (= lt!2519512 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun b!7033800 () Bool)

(declare-fun res!2871394 () Bool)

(declare-fun e!4228425 () Bool)

(assert (=> b!7033800 (=> res!2871394 e!4228425)))

(declare-fun lt!2519545 () Context!12926)

(declare-fun lt!2519503 () Int)

(declare-fun zipperDepthTotal!530 (List!67931) Int)

(assert (=> b!7033800 (= res!2871394 (>= (zipperDepthTotal!530 (Cons!67807 lt!2519545 Nil!67807)) lt!2519503))))

(declare-fun b!7033801 () Bool)

(declare-fun e!4228434 () Bool)

(assert (=> b!7033801 (= e!4228434 e!4228425)))

(declare-fun res!2871389 () Bool)

(assert (=> b!7033801 (=> res!2871389 e!4228425)))

(declare-fun lt!2519500 () Int)

(declare-fun contextDepthTotal!502 (Context!12926) Int)

(assert (=> b!7033801 (= res!2871389 (<= lt!2519500 (contextDepthTotal!502 lt!2519545)))))

(assert (=> b!7033801 (<= lt!2519500 lt!2519503)))

(declare-fun lt!2519525 () List!67931)

(assert (=> b!7033801 (= lt!2519503 (zipperDepthTotal!530 lt!2519525))))

(assert (=> b!7033801 (= lt!2519500 (contextDepthTotal!502 lt!2519501))))

(declare-fun lt!2519517 () Unit!161608)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!70 (List!67931 Context!12926) Unit!161608)

(assert (=> b!7033801 (= lt!2519517 (lemmaTotalDepthZipperLargerThanOfAnyContext!70 lt!2519525 lt!2519501))))

(assert (=> b!7033801 (= lt!2519525 (toList!10810 z1!570))))

(declare-fun lt!2519540 () Unit!161608)

(assert (=> b!7033801 (= lt!2519540 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun lt!2519502 () Unit!161608)

(assert (=> b!7033801 (= lt!2519502 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun lt!2519499 () Unit!161608)

(assert (=> b!7033801 (= lt!2519499 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun lt!2519520 () (InoxSet Context!12926))

(assert (=> b!7033801 (= (flatMap!2414 lt!2519520 lambda!415030) (derivationStepZipperUp!2077 lt!2519545 (h!74254 s!7408)))))

(declare-fun lt!2519539 () Unit!161608)

(assert (=> b!7033801 (= lt!2519539 (lemmaFlatMapOnSingletonSet!1928 lt!2519520 lt!2519545 lambda!415030))))

(declare-fun lambda!415028 () Int)

(declare-fun map!15768 ((InoxSet Context!12926) Int) (InoxSet Context!12926))

(declare-fun ++!15514 (List!67929 List!67929) List!67929)

(assert (=> b!7033801 (= (map!15768 lt!2519520 lambda!415028) (store ((as const (Array Context!12926 Bool)) false) (Context!12927 (++!15514 lt!2519492 (exprs!6963 ct2!306))) true))))

(declare-fun lt!2519509 () Unit!161608)

(assert (=> b!7033801 (= lt!2519509 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun lt!2519496 () Unit!161608)

(declare-fun lemmaMapOnSingletonSet!378 ((InoxSet Context!12926) Context!12926 Int) Unit!161608)

(assert (=> b!7033801 (= lt!2519496 (lemmaMapOnSingletonSet!378 lt!2519520 lt!2519545 lambda!415028))))

(assert (=> b!7033801 (= lt!2519520 (store ((as const (Array Context!12926 Bool)) false) lt!2519545 true))))

(declare-fun res!2871381 () Bool)

(assert (=> start!679804 (=> (not res!2871381) (not e!4228435))))

(assert (=> start!679804 (= res!2871381 (matchZipper!3007 lt!2519543 s!7408))))

(declare-fun appendTo!588 ((InoxSet Context!12926) Context!12926) (InoxSet Context!12926))

(assert (=> start!679804 (= lt!2519543 (appendTo!588 z1!570 ct2!306))))

(assert (=> start!679804 e!4228435))

(declare-fun condSetEmpty!49184 () Bool)

(assert (=> start!679804 (= condSetEmpty!49184 (= z1!570 ((as const (Array Context!12926 Bool)) false)))))

(assert (=> start!679804 setRes!49184))

(declare-fun e!4228431 () Bool)

(assert (=> start!679804 (and (inv!86526 ct2!306) e!4228431)))

(declare-fun e!4228426 () Bool)

(assert (=> start!679804 e!4228426))

(declare-fun b!7033802 () Bool)

(declare-fun e!4228427 () Bool)

(declare-fun e!4228428 () Bool)

(assert (=> b!7033802 (= e!4228427 e!4228428)))

(declare-fun res!2871374 () Bool)

(assert (=> b!7033802 (=> res!2871374 e!4228428)))

(declare-fun lt!2519533 () (InoxSet Context!12926))

(assert (=> b!7033802 (= res!2871374 (not (= lt!2519528 lt!2519533)))))

(declare-fun lt!2519544 () (InoxSet Context!12926))

(assert (=> b!7033802 (= lt!2519533 ((_ map or) lt!2519544 lt!2519524))))

(declare-fun lt!2519527 () Context!12926)

(assert (=> b!7033802 (= lt!2519524 (derivationStepZipperUp!2077 lt!2519527 (h!74254 s!7408)))))

(declare-fun derivationStepZipperDown!2131 (Regex!17467 Context!12926 C!35204) (InoxSet Context!12926))

(assert (=> b!7033802 (= lt!2519544 (derivationStepZipperDown!2131 (h!74253 (exprs!6963 lt!2519501)) lt!2519527 (h!74254 s!7408)))))

(assert (=> b!7033802 (= lt!2519527 (Context!12927 (++!15514 lt!2519492 (exprs!6963 ct2!306))))))

(declare-fun lt!2519497 () Unit!161608)

(assert (=> b!7033802 (= lt!2519497 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun lt!2519535 () Unit!161608)

(assert (=> b!7033802 (= lt!2519535 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun b!7033803 () Bool)

(assert (=> b!7033803 (= e!4228438 e!4228421)))

(declare-fun res!2871382 () Bool)

(assert (=> b!7033803 (=> res!2871382 e!4228421)))

(assert (=> b!7033803 (= res!2871382 (not (nullableContext!87 lt!2519545)))))

(declare-fun lt!2519534 () Context!12926)

(assert (=> b!7033803 (= lt!2519534 (getWitness!1474 lt!2519520 lambda!415031))))

(declare-fun b!7033804 () Bool)

(declare-fun res!2871380 () Bool)

(assert (=> b!7033804 (=> res!2871380 e!4228436)))

(get-info :version)

(assert (=> b!7033804 (= res!2871380 (not ((_ is Cons!67805) (exprs!6963 lt!2519501))))))

(declare-fun setIsEmpty!49184 () Bool)

(assert (=> setIsEmpty!49184 setRes!49184))

(declare-fun b!7033805 () Bool)

(declare-fun res!2871373 () Bool)

(assert (=> b!7033805 (=> res!2871373 e!4228436)))

(declare-fun isEmpty!39549 (List!67929) Bool)

(assert (=> b!7033805 (= res!2871373 (isEmpty!39549 (exprs!6963 lt!2519501)))))

(declare-fun b!7033806 () Bool)

(declare-fun res!2871385 () Bool)

(assert (=> b!7033806 (=> res!2871385 e!4228438)))

(declare-fun lt!2519514 () (InoxSet Context!12926))

(assert (=> b!7033806 (= res!2871385 (not (matchZipper!3007 lt!2519514 (_2!37343 lt!2519504))))))

(declare-fun b!7033807 () Bool)

(declare-fun res!2871384 () Bool)

(assert (=> b!7033807 (=> res!2871384 e!4228437)))

(assert (=> b!7033807 (= res!2871384 (not (select lt!2519543 lt!2519506)))))

(declare-fun b!7033808 () Bool)

(declare-fun lt!2519510 () (InoxSet Context!12926))

(assert (=> b!7033808 (= e!4228421 (matchZipper!3007 lt!2519510 (_1!37343 lt!2519504)))))

(declare-fun exists!3397 ((InoxSet Context!12926) Int) Bool)

(assert (=> b!7033808 (exists!3397 lt!2519510 lambda!415031)))

(declare-fun lt!2519516 () Unit!161608)

(declare-fun lemmaContainsThenExists!121 ((InoxSet Context!12926) Context!12926 Int) Unit!161608)

(assert (=> b!7033808 (= lt!2519516 (lemmaContainsThenExists!121 lt!2519510 lt!2519501 lambda!415031))))

(assert (=> b!7033808 (= lt!2519510 (store ((as const (Array Context!12926 Bool)) false) lt!2519501 true))))

(assert (=> b!7033808 (exists!3397 lt!2519520 lambda!415031)))

(declare-fun lt!2519532 () Unit!161608)

(assert (=> b!7033808 (= lt!2519532 (lemmaContainsThenExists!121 lt!2519520 lt!2519545 lambda!415031))))

(declare-fun b!7033809 () Bool)

(declare-fun res!2871393 () Bool)

(assert (=> b!7033809 (=> (not res!2871393) (not e!4228435))))

(assert (=> b!7033809 (= res!2871393 ((_ is Cons!67806) s!7408))))

(declare-fun b!7033810 () Bool)

(declare-fun e!4228432 () Bool)

(assert (=> b!7033810 (= e!4228430 e!4228432)))

(declare-fun res!2871378 () Bool)

(assert (=> b!7033810 (=> res!2871378 e!4228432)))

(declare-fun lt!2519505 () (InoxSet Context!12926))

(assert (=> b!7033810 (= res!2871378 (not (= (derivationStepZipper!2923 lt!2519505 (h!74254 s!7408)) lt!2519524)))))

(declare-fun lt!2519507 () Unit!161608)

(assert (=> b!7033810 (= lt!2519507 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun lt!2519508 () Unit!161608)

(assert (=> b!7033810 (= lt!2519508 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(assert (=> b!7033810 (= (flatMap!2414 lt!2519505 lambda!415030) (derivationStepZipperUp!2077 lt!2519527 (h!74254 s!7408)))))

(declare-fun lt!2519541 () Unit!161608)

(assert (=> b!7033810 (= lt!2519541 (lemmaFlatMapOnSingletonSet!1928 lt!2519505 lt!2519527 lambda!415030))))

(assert (=> b!7033810 (= lt!2519505 (store ((as const (Array Context!12926 Bool)) false) lt!2519527 true))))

(declare-fun lt!2519495 () Unit!161608)

(assert (=> b!7033810 (= lt!2519495 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun lt!2519522 () Unit!161608)

(assert (=> b!7033810 (= lt!2519522 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun b!7033811 () Bool)

(declare-fun tp_is_empty!44159 () Bool)

(declare-fun tp!1936577 () Bool)

(assert (=> b!7033811 (= e!4228426 (and tp_is_empty!44159 tp!1936577))))

(declare-fun b!7033812 () Bool)

(declare-fun tp!1936579 () Bool)

(assert (=> b!7033812 (= e!4228431 tp!1936579)))

(declare-fun b!7033813 () Bool)

(assert (=> b!7033813 (= e!4228425 e!4228438)))

(declare-fun res!2871379 () Bool)

(assert (=> b!7033813 (=> res!2871379 e!4228438)))

(assert (=> b!7033813 (= res!2871379 (not (matchZipper!3007 lt!2519520 (_1!37343 lt!2519504))))))

(declare-datatypes ((Option!16872 0))(
  ( (None!16871) (Some!16871 (v!53157 tuple2!68080)) )
))
(declare-fun lt!2519498 () Option!16872)

(declare-fun get!23756 (Option!16872) tuple2!68080)

(assert (=> b!7033813 (= lt!2519504 (get!23756 lt!2519498))))

(declare-fun isDefined!13573 (Option!16872) Bool)

(assert (=> b!7033813 (isDefined!13573 lt!2519498)))

(declare-fun findConcatSeparationZippers!388 ((InoxSet Context!12926) (InoxSet Context!12926) List!67930 List!67930 List!67930) Option!16872)

(assert (=> b!7033813 (= lt!2519498 (findConcatSeparationZippers!388 lt!2519520 lt!2519514 Nil!67806 s!7408 s!7408))))

(assert (=> b!7033813 (= lt!2519514 (store ((as const (Array Context!12926 Bool)) false) ct2!306 true))))

(declare-fun lt!2519529 () Unit!161608)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!376 ((InoxSet Context!12926) Context!12926 List!67930) Unit!161608)

(assert (=> b!7033813 (= lt!2519529 (lemmaConcatZipperMatchesStringThenFindConcatDefined!376 lt!2519520 ct2!306 s!7408))))

(declare-fun b!7033814 () Bool)

(declare-fun e!4228439 () Bool)

(assert (=> b!7033814 (= e!4228439 e!4228423)))

(declare-fun res!2871371 () Bool)

(assert (=> b!7033814 (=> res!2871371 e!4228423)))

(assert (=> b!7033814 (= res!2871371 (not (= lt!2519523 lt!2519537)))))

(assert (=> b!7033814 (= lt!2519523 (store ((as const (Array Context!12926 Bool)) false) lt!2519536 true))))

(declare-fun lt!2519513 () Unit!161608)

(assert (=> b!7033814 (= lt!2519513 (lemmaConcatPreservesForall!788 (exprs!6963 lt!2519501) (exprs!6963 ct2!306) lambda!415029))))

(declare-fun b!7033815 () Bool)

(declare-fun res!2871369 () Bool)

(assert (=> b!7033815 (=> res!2871369 e!4228438)))

(declare-fun ++!15515 (List!67930 List!67930) List!67930)

(assert (=> b!7033815 (= res!2871369 (not (= (++!15515 (_1!37343 lt!2519504) (_2!37343 lt!2519504)) s!7408)))))

(declare-fun b!7033816 () Bool)

(assert (=> b!7033816 (= e!4228436 e!4228427)))

(declare-fun res!2871387 () Bool)

(assert (=> b!7033816 (=> res!2871387 e!4228427)))

(declare-fun nullable!7178 (Regex!17467) Bool)

(assert (=> b!7033816 (= res!2871387 (not (nullable!7178 (h!74253 (exprs!6963 lt!2519501)))))))

(assert (=> b!7033816 (= lt!2519545 (Context!12927 lt!2519492))))

(declare-fun tail!13555 (List!67929) List!67929)

(assert (=> b!7033816 (= lt!2519492 (tail!13555 (exprs!6963 lt!2519501)))))

(declare-fun b!7033817 () Bool)

(assert (=> b!7033817 (= e!4228432 e!4228434)))

(declare-fun res!2871388 () Bool)

(assert (=> b!7033817 (=> res!2871388 e!4228434)))

(assert (=> b!7033817 (= res!2871388 (not (matchZipper!3007 lt!2519505 s!7408)))))

(declare-fun lt!2519531 () Unit!161608)

(assert (=> b!7033817 (= lt!2519531 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun b!7033818 () Bool)

(assert (=> b!7033818 (= e!4228428 e!4228433)))

(declare-fun res!2871390 () Bool)

(assert (=> b!7033818 (=> res!2871390 e!4228433)))

(assert (=> b!7033818 (= res!2871390 e!4228422)))

(declare-fun res!2871375 () Bool)

(assert (=> b!7033818 (=> (not res!2871375) (not e!4228422))))

(declare-fun lt!2519515 () Bool)

(declare-fun lt!2519530 () Bool)

(assert (=> b!7033818 (= res!2871375 (not (= lt!2519515 lt!2519530)))))

(assert (=> b!7033818 (= lt!2519515 (matchZipper!3007 lt!2519528 (t!381697 s!7408)))))

(declare-fun lt!2519518 () Unit!161608)

(assert (=> b!7033818 (= lt!2519518 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun e!4228429 () Bool)

(assert (=> b!7033818 (= (matchZipper!3007 lt!2519533 (t!381697 s!7408)) e!4228429)))

(declare-fun res!2871372 () Bool)

(assert (=> b!7033818 (=> res!2871372 e!4228429)))

(assert (=> b!7033818 (= res!2871372 lt!2519530)))

(assert (=> b!7033818 (= lt!2519530 (matchZipper!3007 lt!2519544 (t!381697 s!7408)))))

(declare-fun lt!2519494 () Unit!161608)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1540 ((InoxSet Context!12926) (InoxSet Context!12926) List!67930) Unit!161608)

(assert (=> b!7033818 (= lt!2519494 (lemmaZipperConcatMatchesSameAsBothZippers!1540 lt!2519544 lt!2519524 (t!381697 s!7408)))))

(declare-fun lt!2519526 () Unit!161608)

(assert (=> b!7033818 (= lt!2519526 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun lt!2519511 () Unit!161608)

(assert (=> b!7033818 (= lt!2519511 (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(declare-fun b!7033819 () Bool)

(assert (=> b!7033819 (= e!4228429 (matchZipper!3007 lt!2519524 (t!381697 s!7408)))))

(declare-fun res!2871391 () Bool)

(assert (=> b!7033820 (=> res!2871391 e!4228438)))

(assert (=> b!7033820 (= res!2871391 (not (exists!3397 lt!2519520 lambda!415031)))))

(declare-fun b!7033821 () Bool)

(declare-fun res!2871383 () Bool)

(assert (=> b!7033821 (=> res!2871383 e!4228433)))

(assert (=> b!7033821 (= res!2871383 (not lt!2519515))))

(assert (=> b!7033822 (= e!4228437 e!4228439)))

(declare-fun res!2871377 () Bool)

(assert (=> b!7033822 (=> res!2871377 e!4228439)))

(assert (=> b!7033822 (= res!2871377 (or (not (= lt!2519536 lt!2519506)) (not (select z1!570 lt!2519501))))))

(assert (=> b!7033822 (= lt!2519536 (Context!12927 (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306))))))

(declare-fun lt!2519538 () Unit!161608)

(assert (=> b!7033822 (= lt!2519538 (lemmaConcatPreservesForall!788 (exprs!6963 lt!2519501) (exprs!6963 ct2!306) lambda!415029))))

(declare-fun mapPost2!308 ((InoxSet Context!12926) Int Context!12926) Context!12926)

(assert (=> b!7033822 (= lt!2519501 (mapPost2!308 z1!570 lambda!415028 lt!2519506))))

(assert (= (and start!679804 res!2871381) b!7033809))

(assert (= (and b!7033809 res!2871393) b!7033798))

(assert (= (and b!7033798 (not res!2871370)) b!7033807))

(assert (= (and b!7033807 (not res!2871384)) b!7033822))

(assert (= (and b!7033822 (not res!2871377)) b!7033814))

(assert (= (and b!7033814 (not res!2871371)) b!7033797))

(assert (= (and b!7033797 (not res!2871368)) b!7033804))

(assert (= (and b!7033804 (not res!2871380)) b!7033805))

(assert (= (and b!7033805 (not res!2871373)) b!7033816))

(assert (= (and b!7033816 (not res!2871387)) b!7033802))

(assert (= (and b!7033802 (not res!2871374)) b!7033818))

(assert (= (and b!7033818 (not res!2871372)) b!7033819))

(assert (= (and b!7033818 res!2871375) b!7033799))

(assert (= (and b!7033818 (not res!2871390)) b!7033821))

(assert (= (and b!7033821 (not res!2871383)) b!7033795))

(assert (= (and b!7033795 (not res!2871386)) b!7033810))

(assert (= (and b!7033810 (not res!2871378)) b!7033817))

(assert (= (and b!7033817 (not res!2871388)) b!7033801))

(assert (= (and b!7033801 (not res!2871389)) b!7033800))

(assert (= (and b!7033800 (not res!2871394)) b!7033813))

(assert (= (and b!7033813 (not res!2871379)) b!7033806))

(assert (= (and b!7033806 (not res!2871385)) b!7033815))

(assert (= (and b!7033815 (not res!2871369)) b!7033796))

(assert (= (and b!7033796 (not res!2871392)) b!7033820))

(assert (= (and b!7033820 (not res!2871391)) b!7033803))

(assert (= (and b!7033803 (not res!2871382)) b!7033794))

(assert (= (and b!7033794 (not res!2871376)) b!7033808))

(assert (= (and start!679804 condSetEmpty!49184) setIsEmpty!49184))

(assert (= (and start!679804 (not condSetEmpty!49184)) setNonEmpty!49184))

(assert (= setNonEmpty!49184 b!7033793))

(assert (= start!679804 b!7033812))

(assert (= (and start!679804 ((_ is Cons!67806) s!7408)) b!7033811))

(declare-fun m!7741110 () Bool)

(assert (=> b!7033800 m!7741110))

(declare-fun m!7741112 () Bool)

(assert (=> b!7033807 m!7741112))

(declare-fun m!7741114 () Bool)

(assert (=> b!7033818 m!7741114))

(declare-fun m!7741116 () Bool)

(assert (=> b!7033818 m!7741116))

(assert (=> b!7033818 m!7741114))

(assert (=> b!7033818 m!7741114))

(declare-fun m!7741118 () Bool)

(assert (=> b!7033818 m!7741118))

(declare-fun m!7741120 () Bool)

(assert (=> b!7033818 m!7741120))

(declare-fun m!7741122 () Bool)

(assert (=> b!7033818 m!7741122))

(declare-fun m!7741124 () Bool)

(assert (=> b!7033814 m!7741124))

(declare-fun m!7741126 () Bool)

(assert (=> b!7033814 m!7741126))

(declare-fun m!7741128 () Bool)

(assert (=> b!7033815 m!7741128))

(declare-fun m!7741130 () Bool)

(assert (=> b!7033816 m!7741130))

(declare-fun m!7741132 () Bool)

(assert (=> b!7033816 m!7741132))

(declare-fun m!7741134 () Bool)

(assert (=> b!7033799 m!7741134))

(assert (=> b!7033799 m!7741114))

(declare-fun m!7741136 () Bool)

(assert (=> b!7033820 m!7741136))

(declare-fun m!7741138 () Bool)

(assert (=> b!7033803 m!7741138))

(declare-fun m!7741140 () Bool)

(assert (=> b!7033803 m!7741140))

(declare-fun m!7741142 () Bool)

(assert (=> b!7033801 m!7741142))

(declare-fun m!7741144 () Bool)

(assert (=> b!7033801 m!7741144))

(declare-fun m!7741146 () Bool)

(assert (=> b!7033801 m!7741146))

(declare-fun m!7741148 () Bool)

(assert (=> b!7033801 m!7741148))

(declare-fun m!7741150 () Bool)

(assert (=> b!7033801 m!7741150))

(declare-fun m!7741152 () Bool)

(assert (=> b!7033801 m!7741152))

(declare-fun m!7741154 () Bool)

(assert (=> b!7033801 m!7741154))

(declare-fun m!7741156 () Bool)

(assert (=> b!7033801 m!7741156))

(assert (=> b!7033801 m!7741114))

(assert (=> b!7033801 m!7741114))

(assert (=> b!7033801 m!7741114))

(declare-fun m!7741158 () Bool)

(assert (=> b!7033801 m!7741158))

(declare-fun m!7741160 () Bool)

(assert (=> b!7033801 m!7741160))

(declare-fun m!7741162 () Bool)

(assert (=> b!7033801 m!7741162))

(assert (=> b!7033801 m!7741114))

(declare-fun m!7741164 () Bool)

(assert (=> b!7033801 m!7741164))

(declare-fun m!7741166 () Bool)

(assert (=> b!7033801 m!7741166))

(declare-fun m!7741168 () Bool)

(assert (=> setNonEmpty!49184 m!7741168))

(declare-fun m!7741170 () Bool)

(assert (=> b!7033808 m!7741170))

(declare-fun m!7741172 () Bool)

(assert (=> b!7033808 m!7741172))

(declare-fun m!7741174 () Bool)

(assert (=> b!7033808 m!7741174))

(declare-fun m!7741176 () Bool)

(assert (=> b!7033808 m!7741176))

(assert (=> b!7033808 m!7741136))

(declare-fun m!7741178 () Bool)

(assert (=> b!7033808 m!7741178))

(declare-fun m!7741180 () Bool)

(assert (=> start!679804 m!7741180))

(declare-fun m!7741182 () Bool)

(assert (=> start!679804 m!7741182))

(declare-fun m!7741184 () Bool)

(assert (=> start!679804 m!7741184))

(declare-fun m!7741186 () Bool)

(assert (=> b!7033817 m!7741186))

(assert (=> b!7033817 m!7741114))

(declare-fun m!7741188 () Bool)

(assert (=> b!7033802 m!7741188))

(assert (=> b!7033802 m!7741114))

(assert (=> b!7033802 m!7741156))

(assert (=> b!7033802 m!7741114))

(declare-fun m!7741190 () Bool)

(assert (=> b!7033802 m!7741190))

(declare-fun m!7741192 () Bool)

(assert (=> b!7033813 m!7741192))

(declare-fun m!7741194 () Bool)

(assert (=> b!7033813 m!7741194))

(declare-fun m!7741196 () Bool)

(assert (=> b!7033813 m!7741196))

(declare-fun m!7741198 () Bool)

(assert (=> b!7033813 m!7741198))

(declare-fun m!7741200 () Bool)

(assert (=> b!7033813 m!7741200))

(declare-fun m!7741202 () Bool)

(assert (=> b!7033813 m!7741202))

(declare-fun m!7741204 () Bool)

(assert (=> b!7033810 m!7741204))

(assert (=> b!7033810 m!7741114))

(declare-fun m!7741206 () Bool)

(assert (=> b!7033810 m!7741206))

(assert (=> b!7033810 m!7741114))

(declare-fun m!7741208 () Bool)

(assert (=> b!7033810 m!7741208))

(assert (=> b!7033810 m!7741114))

(declare-fun m!7741210 () Bool)

(assert (=> b!7033810 m!7741210))

(assert (=> b!7033810 m!7741190))

(assert (=> b!7033810 m!7741114))

(declare-fun m!7741212 () Bool)

(assert (=> b!7033822 m!7741212))

(declare-fun m!7741214 () Bool)

(assert (=> b!7033822 m!7741214))

(assert (=> b!7033822 m!7741126))

(declare-fun m!7741216 () Bool)

(assert (=> b!7033822 m!7741216))

(declare-fun m!7741218 () Bool)

(assert (=> b!7033797 m!7741218))

(assert (=> b!7033797 m!7741126))

(declare-fun m!7741220 () Bool)

(assert (=> b!7033797 m!7741220))

(declare-fun m!7741222 () Bool)

(assert (=> b!7033797 m!7741222))

(declare-fun m!7741224 () Bool)

(assert (=> b!7033797 m!7741224))

(declare-fun m!7741226 () Bool)

(assert (=> b!7033806 m!7741226))

(assert (=> b!7033795 m!7741134))

(assert (=> b!7033795 m!7741114))

(declare-fun m!7741228 () Bool)

(assert (=> b!7033805 m!7741228))

(declare-fun m!7741230 () Bool)

(assert (=> b!7033796 m!7741230))

(declare-fun m!7741232 () Bool)

(assert (=> b!7033794 m!7741232))

(declare-fun m!7741234 () Bool)

(assert (=> b!7033798 m!7741234))

(declare-fun m!7741236 () Bool)

(assert (=> b!7033798 m!7741236))

(declare-fun m!7741238 () Bool)

(assert (=> b!7033798 m!7741238))

(declare-fun m!7741240 () Bool)

(assert (=> b!7033798 m!7741240))

(declare-fun m!7741242 () Bool)

(assert (=> b!7033798 m!7741242))

(declare-fun m!7741244 () Bool)

(assert (=> b!7033798 m!7741244))

(assert (=> b!7033819 m!7741134))

(check-sat (not b!7033805) (not b!7033796) (not b!7033814) (not b!7033816) (not b!7033818) (not b!7033803) (not b!7033794) (not b!7033812) tp_is_empty!44159 (not b!7033813) (not b!7033817) (not b!7033800) (not b!7033801) (not b!7033822) (not b!7033799) (not b!7033798) (not start!679804) (not b!7033802) (not b!7033806) (not b!7033815) (not b!7033795) (not b!7033810) (not b!7033811) (not b!7033820) (not b!7033797) (not b!7033808) (not b!7033819) (not setNonEmpty!49184) (not b!7033793))
(check-sat)
(get-model)

(declare-fun d!2194747 () Bool)

(declare-fun c!1308460 () Bool)

(assert (=> d!2194747 (= c!1308460 (isEmpty!39548 (_2!37343 lt!2519504)))))

(declare-fun e!4228483 () Bool)

(assert (=> d!2194747 (= (matchZipper!3007 lt!2519514 (_2!37343 lt!2519504)) e!4228483)))

(declare-fun b!7033903 () Bool)

(declare-fun nullableZipper!2581 ((InoxSet Context!12926)) Bool)

(assert (=> b!7033903 (= e!4228483 (nullableZipper!2581 lt!2519514))))

(declare-fun b!7033904 () Bool)

(declare-fun head!14266 (List!67930) C!35204)

(declare-fun tail!13557 (List!67930) List!67930)

(assert (=> b!7033904 (= e!4228483 (matchZipper!3007 (derivationStepZipper!2923 lt!2519514 (head!14266 (_2!37343 lt!2519504))) (tail!13557 (_2!37343 lt!2519504))))))

(assert (= (and d!2194747 c!1308460) b!7033903))

(assert (= (and d!2194747 (not c!1308460)) b!7033904))

(declare-fun m!7741410 () Bool)

(assert (=> d!2194747 m!7741410))

(declare-fun m!7741412 () Bool)

(assert (=> b!7033903 m!7741412))

(declare-fun m!7741414 () Bool)

(assert (=> b!7033904 m!7741414))

(assert (=> b!7033904 m!7741414))

(declare-fun m!7741416 () Bool)

(assert (=> b!7033904 m!7741416))

(declare-fun m!7741418 () Bool)

(assert (=> b!7033904 m!7741418))

(assert (=> b!7033904 m!7741416))

(assert (=> b!7033904 m!7741418))

(declare-fun m!7741420 () Bool)

(assert (=> b!7033904 m!7741420))

(assert (=> b!7033806 d!2194747))

(declare-fun d!2194751 () Bool)

(assert (=> d!2194751 (exists!3397 lt!2519510 lambda!415031)))

(declare-fun lt!2519584 () Unit!161608)

(declare-fun choose!53271 ((InoxSet Context!12926) Context!12926 Int) Unit!161608)

(assert (=> d!2194751 (= lt!2519584 (choose!53271 lt!2519510 lt!2519501 lambda!415031))))

(assert (=> d!2194751 (select lt!2519510 lt!2519501)))

(assert (=> d!2194751 (= (lemmaContainsThenExists!121 lt!2519510 lt!2519501 lambda!415031) lt!2519584)))

(declare-fun bs!1871198 () Bool)

(assert (= bs!1871198 d!2194751))

(assert (=> bs!1871198 m!7741170))

(declare-fun m!7741430 () Bool)

(assert (=> bs!1871198 m!7741430))

(declare-fun m!7741432 () Bool)

(assert (=> bs!1871198 m!7741432))

(assert (=> b!7033808 d!2194751))

(declare-fun d!2194757 () Bool)

(declare-fun c!1308462 () Bool)

(assert (=> d!2194757 (= c!1308462 (isEmpty!39548 (_1!37343 lt!2519504)))))

(declare-fun e!4228486 () Bool)

(assert (=> d!2194757 (= (matchZipper!3007 lt!2519510 (_1!37343 lt!2519504)) e!4228486)))

(declare-fun b!7033907 () Bool)

(assert (=> b!7033907 (= e!4228486 (nullableZipper!2581 lt!2519510))))

(declare-fun b!7033908 () Bool)

(assert (=> b!7033908 (= e!4228486 (matchZipper!3007 (derivationStepZipper!2923 lt!2519510 (head!14266 (_1!37343 lt!2519504))) (tail!13557 (_1!37343 lt!2519504))))))

(assert (= (and d!2194757 c!1308462) b!7033907))

(assert (= (and d!2194757 (not c!1308462)) b!7033908))

(assert (=> d!2194757 m!7741230))

(declare-fun m!7741434 () Bool)

(assert (=> b!7033907 m!7741434))

(declare-fun m!7741436 () Bool)

(assert (=> b!7033908 m!7741436))

(assert (=> b!7033908 m!7741436))

(declare-fun m!7741438 () Bool)

(assert (=> b!7033908 m!7741438))

(declare-fun m!7741440 () Bool)

(assert (=> b!7033908 m!7741440))

(assert (=> b!7033908 m!7741438))

(assert (=> b!7033908 m!7741440))

(declare-fun m!7741442 () Bool)

(assert (=> b!7033908 m!7741442))

(assert (=> b!7033808 d!2194757))

(declare-fun d!2194759 () Bool)

(declare-fun lt!2519590 () Bool)

(assert (=> d!2194759 (= lt!2519590 (exists!3396 (toList!10810 lt!2519510) lambda!415031))))

(declare-fun choose!53273 ((InoxSet Context!12926) Int) Bool)

(assert (=> d!2194759 (= lt!2519590 (choose!53273 lt!2519510 lambda!415031))))

(assert (=> d!2194759 (= (exists!3397 lt!2519510 lambda!415031) lt!2519590)))

(declare-fun bs!1871200 () Bool)

(assert (= bs!1871200 d!2194759))

(declare-fun m!7741450 () Bool)

(assert (=> bs!1871200 m!7741450))

(assert (=> bs!1871200 m!7741450))

(declare-fun m!7741452 () Bool)

(assert (=> bs!1871200 m!7741452))

(declare-fun m!7741454 () Bool)

(assert (=> bs!1871200 m!7741454))

(assert (=> b!7033808 d!2194759))

(declare-fun d!2194763 () Bool)

(declare-fun lt!2519591 () Bool)

(assert (=> d!2194763 (= lt!2519591 (exists!3396 (toList!10810 lt!2519520) lambda!415031))))

(assert (=> d!2194763 (= lt!2519591 (choose!53273 lt!2519520 lambda!415031))))

(assert (=> d!2194763 (= (exists!3397 lt!2519520 lambda!415031) lt!2519591)))

(declare-fun bs!1871201 () Bool)

(assert (= bs!1871201 d!2194763))

(declare-fun m!7741456 () Bool)

(assert (=> bs!1871201 m!7741456))

(assert (=> bs!1871201 m!7741456))

(declare-fun m!7741458 () Bool)

(assert (=> bs!1871201 m!7741458))

(declare-fun m!7741460 () Bool)

(assert (=> bs!1871201 m!7741460))

(assert (=> b!7033808 d!2194763))

(declare-fun d!2194765 () Bool)

(assert (=> d!2194765 (exists!3397 lt!2519520 lambda!415031)))

(declare-fun lt!2519592 () Unit!161608)

(assert (=> d!2194765 (= lt!2519592 (choose!53271 lt!2519520 lt!2519545 lambda!415031))))

(assert (=> d!2194765 (select lt!2519520 lt!2519545)))

(assert (=> d!2194765 (= (lemmaContainsThenExists!121 lt!2519520 lt!2519545 lambda!415031) lt!2519592)))

(declare-fun bs!1871202 () Bool)

(assert (= bs!1871202 d!2194765))

(assert (=> bs!1871202 m!7741136))

(declare-fun m!7741462 () Bool)

(assert (=> bs!1871202 m!7741462))

(declare-fun m!7741464 () Bool)

(assert (=> bs!1871202 m!7741464))

(assert (=> b!7033808 d!2194765))

(declare-fun d!2194767 () Bool)

(declare-fun forall!16381 (List!67929 Int) Bool)

(assert (=> d!2194767 (forall!16381 (++!15514 lt!2519492 (exprs!6963 ct2!306)) lambda!415029)))

(declare-fun lt!2519597 () Unit!161608)

(declare-fun choose!53275 (List!67929 List!67929 Int) Unit!161608)

(assert (=> d!2194767 (= lt!2519597 (choose!53275 lt!2519492 (exprs!6963 ct2!306) lambda!415029))))

(assert (=> d!2194767 (forall!16381 lt!2519492 lambda!415029)))

(assert (=> d!2194767 (= (lemmaConcatPreservesForall!788 lt!2519492 (exprs!6963 ct2!306) lambda!415029) lt!2519597)))

(declare-fun bs!1871203 () Bool)

(assert (= bs!1871203 d!2194767))

(assert (=> bs!1871203 m!7741156))

(assert (=> bs!1871203 m!7741156))

(declare-fun m!7741466 () Bool)

(assert (=> bs!1871203 m!7741466))

(declare-fun m!7741468 () Bool)

(assert (=> bs!1871203 m!7741468))

(declare-fun m!7741470 () Bool)

(assert (=> bs!1871203 m!7741470))

(assert (=> b!7033810 d!2194767))

(declare-fun bs!1871206 () Bool)

(declare-fun d!2194769 () Bool)

(assert (= bs!1871206 (and d!2194769 b!7033797)))

(declare-fun lambda!415057 () Int)

(assert (=> bs!1871206 (= lambda!415057 lambda!415030)))

(assert (=> d!2194769 true))

(assert (=> d!2194769 (= (derivationStepZipper!2923 lt!2519505 (h!74254 s!7408)) (flatMap!2414 lt!2519505 lambda!415057))))

(declare-fun bs!1871207 () Bool)

(assert (= bs!1871207 d!2194769))

(declare-fun m!7741490 () Bool)

(assert (=> bs!1871207 m!7741490))

(assert (=> b!7033810 d!2194769))

(declare-fun call!638744 () (InoxSet Context!12926))

(declare-fun e!4228513 () (InoxSet Context!12926))

(declare-fun b!7033955 () Bool)

(assert (=> b!7033955 (= e!4228513 ((_ map or) call!638744 (derivationStepZipperUp!2077 (Context!12927 (t!381696 (exprs!6963 lt!2519527))) (h!74254 s!7408))))))

(declare-fun bm!638737 () Bool)

(assert (=> bm!638737 (= call!638744 (derivationStepZipperDown!2131 (h!74253 (exprs!6963 lt!2519527)) (Context!12927 (t!381696 (exprs!6963 lt!2519527))) (h!74254 s!7408)))))

(declare-fun b!7033956 () Bool)

(declare-fun e!4228511 () (InoxSet Context!12926))

(assert (=> b!7033956 (= e!4228511 ((as const (Array Context!12926 Bool)) false))))

(declare-fun b!7033957 () Bool)

(assert (=> b!7033957 (= e!4228511 call!638744)))

(declare-fun b!7033958 () Bool)

(assert (=> b!7033958 (= e!4228513 e!4228511)))

(declare-fun c!1308483 () Bool)

(assert (=> b!7033958 (= c!1308483 ((_ is Cons!67805) (exprs!6963 lt!2519527)))))

(declare-fun d!2194777 () Bool)

(declare-fun c!1308482 () Bool)

(declare-fun e!4228512 () Bool)

(assert (=> d!2194777 (= c!1308482 e!4228512)))

(declare-fun res!2871423 () Bool)

(assert (=> d!2194777 (=> (not res!2871423) (not e!4228512))))

(assert (=> d!2194777 (= res!2871423 ((_ is Cons!67805) (exprs!6963 lt!2519527)))))

(assert (=> d!2194777 (= (derivationStepZipperUp!2077 lt!2519527 (h!74254 s!7408)) e!4228513)))

(declare-fun b!7033959 () Bool)

(assert (=> b!7033959 (= e!4228512 (nullable!7178 (h!74253 (exprs!6963 lt!2519527))))))

(assert (= (and d!2194777 res!2871423) b!7033959))

(assert (= (and d!2194777 c!1308482) b!7033955))

(assert (= (and d!2194777 (not c!1308482)) b!7033958))

(assert (= (and b!7033958 c!1308483) b!7033957))

(assert (= (and b!7033958 (not c!1308483)) b!7033956))

(assert (= (or b!7033955 b!7033957) bm!638737))

(declare-fun m!7741492 () Bool)

(assert (=> b!7033955 m!7741492))

(declare-fun m!7741494 () Bool)

(assert (=> bm!638737 m!7741494))

(declare-fun m!7741496 () Bool)

(assert (=> b!7033959 m!7741496))

(assert (=> b!7033810 d!2194777))

(declare-fun d!2194779 () Bool)

(declare-fun choose!53277 ((InoxSet Context!12926) Int) (InoxSet Context!12926))

(assert (=> d!2194779 (= (flatMap!2414 lt!2519505 lambda!415030) (choose!53277 lt!2519505 lambda!415030))))

(declare-fun bs!1871208 () Bool)

(assert (= bs!1871208 d!2194779))

(declare-fun m!7741498 () Bool)

(assert (=> bs!1871208 m!7741498))

(assert (=> b!7033810 d!2194779))

(declare-fun d!2194781 () Bool)

(declare-fun dynLambda!27387 (Int Context!12926) (InoxSet Context!12926))

(assert (=> d!2194781 (= (flatMap!2414 lt!2519505 lambda!415030) (dynLambda!27387 lambda!415030 lt!2519527))))

(declare-fun lt!2519601 () Unit!161608)

(declare-fun choose!53278 ((InoxSet Context!12926) Context!12926 Int) Unit!161608)

(assert (=> d!2194781 (= lt!2519601 (choose!53278 lt!2519505 lt!2519527 lambda!415030))))

(assert (=> d!2194781 (= lt!2519505 (store ((as const (Array Context!12926 Bool)) false) lt!2519527 true))))

(assert (=> d!2194781 (= (lemmaFlatMapOnSingletonSet!1928 lt!2519505 lt!2519527 lambda!415030) lt!2519601)))

(declare-fun b_lambda!266603 () Bool)

(assert (=> (not b_lambda!266603) (not d!2194781)))

(declare-fun bs!1871209 () Bool)

(assert (= bs!1871209 d!2194781))

(assert (=> bs!1871209 m!7741210))

(declare-fun m!7741500 () Bool)

(assert (=> bs!1871209 m!7741500))

(declare-fun m!7741502 () Bool)

(assert (=> bs!1871209 m!7741502))

(assert (=> bs!1871209 m!7741206))

(assert (=> b!7033810 d!2194781))

(declare-fun d!2194783 () Bool)

(declare-fun c!1308484 () Bool)

(assert (=> d!2194783 (= c!1308484 (isEmpty!39548 s!7408))))

(declare-fun e!4228514 () Bool)

(assert (=> d!2194783 (= (matchZipper!3007 lt!2519543 s!7408) e!4228514)))

(declare-fun b!7033960 () Bool)

(assert (=> b!7033960 (= e!4228514 (nullableZipper!2581 lt!2519543))))

(declare-fun b!7033961 () Bool)

(assert (=> b!7033961 (= e!4228514 (matchZipper!3007 (derivationStepZipper!2923 lt!2519543 (head!14266 s!7408)) (tail!13557 s!7408)))))

(assert (= (and d!2194783 c!1308484) b!7033960))

(assert (= (and d!2194783 (not c!1308484)) b!7033961))

(declare-fun m!7741504 () Bool)

(assert (=> d!2194783 m!7741504))

(declare-fun m!7741506 () Bool)

(assert (=> b!7033960 m!7741506))

(declare-fun m!7741508 () Bool)

(assert (=> b!7033961 m!7741508))

(assert (=> b!7033961 m!7741508))

(declare-fun m!7741510 () Bool)

(assert (=> b!7033961 m!7741510))

(declare-fun m!7741512 () Bool)

(assert (=> b!7033961 m!7741512))

(assert (=> b!7033961 m!7741510))

(assert (=> b!7033961 m!7741512))

(declare-fun m!7741514 () Bool)

(assert (=> b!7033961 m!7741514))

(assert (=> start!679804 d!2194783))

(declare-fun bs!1871210 () Bool)

(declare-fun d!2194785 () Bool)

(assert (= bs!1871210 (and d!2194785 b!7033822)))

(declare-fun lambda!415062 () Int)

(assert (=> bs!1871210 (= lambda!415062 lambda!415028)))

(assert (=> d!2194785 true))

(assert (=> d!2194785 (= (appendTo!588 z1!570 ct2!306) (map!15768 z1!570 lambda!415062))))

(declare-fun bs!1871211 () Bool)

(assert (= bs!1871211 d!2194785))

(declare-fun m!7741524 () Bool)

(assert (=> bs!1871211 m!7741524))

(assert (=> start!679804 d!2194785))

(declare-fun bs!1871212 () Bool)

(declare-fun d!2194789 () Bool)

(assert (= bs!1871212 (and d!2194789 b!7033822)))

(declare-fun lambda!415065 () Int)

(assert (=> bs!1871212 (= lambda!415065 lambda!415029)))

(assert (=> d!2194789 (= (inv!86526 ct2!306) (forall!16381 (exprs!6963 ct2!306) lambda!415065))))

(declare-fun bs!1871213 () Bool)

(assert (= bs!1871213 d!2194789))

(declare-fun m!7741526 () Bool)

(assert (=> bs!1871213 m!7741526))

(assert (=> start!679804 d!2194789))

(declare-fun d!2194791 () Bool)

(declare-fun c!1308493 () Bool)

(assert (=> d!2194791 (= c!1308493 (isEmpty!39548 (_1!37343 lt!2519504)))))

(declare-fun e!4228525 () Bool)

(assert (=> d!2194791 (= (matchZipper!3007 lt!2519520 (_1!37343 lt!2519504)) e!4228525)))

(declare-fun b!7033981 () Bool)

(assert (=> b!7033981 (= e!4228525 (nullableZipper!2581 lt!2519520))))

(declare-fun b!7033982 () Bool)

(assert (=> b!7033982 (= e!4228525 (matchZipper!3007 (derivationStepZipper!2923 lt!2519520 (head!14266 (_1!37343 lt!2519504))) (tail!13557 (_1!37343 lt!2519504))))))

(assert (= (and d!2194791 c!1308493) b!7033981))

(assert (= (and d!2194791 (not c!1308493)) b!7033982))

(assert (=> d!2194791 m!7741230))

(declare-fun m!7741528 () Bool)

(assert (=> b!7033981 m!7741528))

(assert (=> b!7033982 m!7741436))

(assert (=> b!7033982 m!7741436))

(declare-fun m!7741530 () Bool)

(assert (=> b!7033982 m!7741530))

(assert (=> b!7033982 m!7741440))

(assert (=> b!7033982 m!7741530))

(assert (=> b!7033982 m!7741440))

(declare-fun m!7741532 () Bool)

(assert (=> b!7033982 m!7741532))

(assert (=> b!7033813 d!2194791))

(declare-fun d!2194793 () Bool)

(assert (=> d!2194793 (= (get!23756 lt!2519498) (v!53157 lt!2519498))))

(assert (=> b!7033813 d!2194793))

(declare-fun d!2194795 () Bool)

(declare-fun isEmpty!39550 (Option!16872) Bool)

(assert (=> d!2194795 (= (isDefined!13573 lt!2519498) (not (isEmpty!39550 lt!2519498)))))

(declare-fun bs!1871214 () Bool)

(assert (= bs!1871214 d!2194795))

(declare-fun m!7741534 () Bool)

(assert (=> bs!1871214 m!7741534))

(assert (=> b!7033813 d!2194795))

(declare-fun d!2194797 () Bool)

(assert (=> d!2194797 (isDefined!13573 (findConcatSeparationZippers!388 lt!2519520 (store ((as const (Array Context!12926 Bool)) false) ct2!306 true) Nil!67806 s!7408 s!7408))))

(declare-fun lt!2519616 () Unit!161608)

(declare-fun choose!53279 ((InoxSet Context!12926) Context!12926 List!67930) Unit!161608)

(assert (=> d!2194797 (= lt!2519616 (choose!53279 lt!2519520 ct2!306 s!7408))))

(assert (=> d!2194797 (matchZipper!3007 (appendTo!588 lt!2519520 ct2!306) s!7408)))

(assert (=> d!2194797 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!376 lt!2519520 ct2!306 s!7408) lt!2519616)))

(declare-fun bs!1871218 () Bool)

(assert (= bs!1871218 d!2194797))

(assert (=> bs!1871218 m!7741194))

(declare-fun m!7741582 () Bool)

(assert (=> bs!1871218 m!7741582))

(declare-fun m!7741584 () Bool)

(assert (=> bs!1871218 m!7741584))

(assert (=> bs!1871218 m!7741582))

(assert (=> bs!1871218 m!7741194))

(declare-fun m!7741586 () Bool)

(assert (=> bs!1871218 m!7741586))

(assert (=> bs!1871218 m!7741586))

(declare-fun m!7741594 () Bool)

(assert (=> bs!1871218 m!7741594))

(declare-fun m!7741598 () Bool)

(assert (=> bs!1871218 m!7741598))

(assert (=> b!7033813 d!2194797))

(declare-fun b!7034021 () Bool)

(declare-fun res!2871450 () Bool)

(declare-fun e!4228552 () Bool)

(assert (=> b!7034021 (=> (not res!2871450) (not e!4228552))))

(declare-fun lt!2519633 () Option!16872)

(assert (=> b!7034021 (= res!2871450 (matchZipper!3007 lt!2519514 (_2!37343 (get!23756 lt!2519633))))))

(declare-fun b!7034022 () Bool)

(declare-fun e!4228549 () Option!16872)

(assert (=> b!7034022 (= e!4228549 None!16871)))

(declare-fun b!7034023 () Bool)

(declare-fun e!4228548 () Option!16872)

(assert (=> b!7034023 (= e!4228548 e!4228549)))

(declare-fun c!1308504 () Bool)

(assert (=> b!7034023 (= c!1308504 ((_ is Nil!67806) s!7408))))

(declare-fun b!7034024 () Bool)

(declare-fun lt!2519631 () Unit!161608)

(declare-fun lt!2519632 () Unit!161608)

(assert (=> b!7034024 (= lt!2519631 lt!2519632)))

(assert (=> b!7034024 (= (++!15515 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (t!381697 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2924 (List!67930 C!35204 List!67930 List!67930) Unit!161608)

(assert (=> b!7034024 (= lt!2519632 (lemmaMoveElementToOtherListKeepsConcatEq!2924 Nil!67806 (h!74254 s!7408) (t!381697 s!7408) s!7408))))

(assert (=> b!7034024 (= e!4228549 (findConcatSeparationZippers!388 lt!2519520 lt!2519514 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (t!381697 s!7408) s!7408))))

(declare-fun b!7034025 () Bool)

(declare-fun e!4228551 () Bool)

(assert (=> b!7034025 (= e!4228551 (not (isDefined!13573 lt!2519633)))))

(declare-fun b!7034026 () Bool)

(declare-fun e!4228550 () Bool)

(assert (=> b!7034026 (= e!4228550 (matchZipper!3007 lt!2519514 s!7408))))

(declare-fun d!2194811 () Bool)

(assert (=> d!2194811 e!4228551))

(declare-fun res!2871446 () Bool)

(assert (=> d!2194811 (=> res!2871446 e!4228551)))

(assert (=> d!2194811 (= res!2871446 e!4228552)))

(declare-fun res!2871448 () Bool)

(assert (=> d!2194811 (=> (not res!2871448) (not e!4228552))))

(assert (=> d!2194811 (= res!2871448 (isDefined!13573 lt!2519633))))

(assert (=> d!2194811 (= lt!2519633 e!4228548)))

(declare-fun c!1308505 () Bool)

(assert (=> d!2194811 (= c!1308505 e!4228550)))

(declare-fun res!2871449 () Bool)

(assert (=> d!2194811 (=> (not res!2871449) (not e!4228550))))

(assert (=> d!2194811 (= res!2871449 (matchZipper!3007 lt!2519520 Nil!67806))))

(assert (=> d!2194811 (= (++!15515 Nil!67806 s!7408) s!7408)))

(assert (=> d!2194811 (= (findConcatSeparationZippers!388 lt!2519520 lt!2519514 Nil!67806 s!7408 s!7408) lt!2519633)))

(declare-fun b!7034027 () Bool)

(assert (=> b!7034027 (= e!4228548 (Some!16871 (tuple2!68081 Nil!67806 s!7408)))))

(declare-fun b!7034028 () Bool)

(assert (=> b!7034028 (= e!4228552 (= (++!15515 (_1!37343 (get!23756 lt!2519633)) (_2!37343 (get!23756 lt!2519633))) s!7408))))

(declare-fun b!7034029 () Bool)

(declare-fun res!2871447 () Bool)

(assert (=> b!7034029 (=> (not res!2871447) (not e!4228552))))

(assert (=> b!7034029 (= res!2871447 (matchZipper!3007 lt!2519520 (_1!37343 (get!23756 lt!2519633))))))

(assert (= (and d!2194811 res!2871449) b!7034026))

(assert (= (and d!2194811 c!1308505) b!7034027))

(assert (= (and d!2194811 (not c!1308505)) b!7034023))

(assert (= (and b!7034023 c!1308504) b!7034022))

(assert (= (and b!7034023 (not c!1308504)) b!7034024))

(assert (= (and d!2194811 res!2871448) b!7034029))

(assert (= (and b!7034029 res!2871447) b!7034021))

(assert (= (and b!7034021 res!2871450) b!7034028))

(assert (= (and d!2194811 (not res!2871446)) b!7034025))

(declare-fun m!7741644 () Bool)

(assert (=> b!7034024 m!7741644))

(assert (=> b!7034024 m!7741644))

(declare-fun m!7741646 () Bool)

(assert (=> b!7034024 m!7741646))

(declare-fun m!7741648 () Bool)

(assert (=> b!7034024 m!7741648))

(assert (=> b!7034024 m!7741644))

(declare-fun m!7741650 () Bool)

(assert (=> b!7034024 m!7741650))

(declare-fun m!7741652 () Bool)

(assert (=> b!7034029 m!7741652))

(declare-fun m!7741654 () Bool)

(assert (=> b!7034029 m!7741654))

(assert (=> b!7034021 m!7741652))

(declare-fun m!7741656 () Bool)

(assert (=> b!7034021 m!7741656))

(declare-fun m!7741658 () Bool)

(assert (=> b!7034026 m!7741658))

(declare-fun m!7741660 () Bool)

(assert (=> b!7034025 m!7741660))

(assert (=> b!7034028 m!7741652))

(declare-fun m!7741662 () Bool)

(assert (=> b!7034028 m!7741662))

(assert (=> d!2194811 m!7741660))

(declare-fun m!7741664 () Bool)

(assert (=> d!2194811 m!7741664))

(declare-fun m!7741666 () Bool)

(assert (=> d!2194811 m!7741666))

(assert (=> b!7033813 d!2194811))

(declare-fun bs!1871222 () Bool)

(declare-fun d!2194829 () Bool)

(assert (= bs!1871222 (and d!2194829 b!7033822)))

(declare-fun lambda!415068 () Int)

(assert (=> bs!1871222 (not (= lambda!415068 lambda!415029))))

(declare-fun bs!1871223 () Bool)

(assert (= bs!1871223 (and d!2194829 d!2194789)))

(assert (=> bs!1871223 (not (= lambda!415068 lambda!415065))))

(assert (=> d!2194829 (= (nullableContext!87 lt!2519501) (forall!16381 (exprs!6963 lt!2519501) lambda!415068))))

(declare-fun bs!1871224 () Bool)

(assert (= bs!1871224 d!2194829))

(declare-fun m!7741668 () Bool)

(assert (=> bs!1871224 m!7741668))

(assert (=> b!7033794 d!2194829))

(declare-fun d!2194831 () Bool)

(declare-fun c!1308507 () Bool)

(assert (=> d!2194831 (= c!1308507 (isEmpty!39548 (t!381697 s!7408)))))

(declare-fun e!4228553 () Bool)

(assert (=> d!2194831 (= (matchZipper!3007 lt!2519524 (t!381697 s!7408)) e!4228553)))

(declare-fun b!7034030 () Bool)

(assert (=> b!7034030 (= e!4228553 (nullableZipper!2581 lt!2519524))))

(declare-fun b!7034031 () Bool)

(assert (=> b!7034031 (= e!4228553 (matchZipper!3007 (derivationStepZipper!2923 lt!2519524 (head!14266 (t!381697 s!7408))) (tail!13557 (t!381697 s!7408))))))

(assert (= (and d!2194831 c!1308507) b!7034030))

(assert (= (and d!2194831 (not c!1308507)) b!7034031))

(declare-fun m!7741670 () Bool)

(assert (=> d!2194831 m!7741670))

(declare-fun m!7741672 () Bool)

(assert (=> b!7034030 m!7741672))

(declare-fun m!7741674 () Bool)

(assert (=> b!7034031 m!7741674))

(assert (=> b!7034031 m!7741674))

(declare-fun m!7741676 () Bool)

(assert (=> b!7034031 m!7741676))

(declare-fun m!7741678 () Bool)

(assert (=> b!7034031 m!7741678))

(assert (=> b!7034031 m!7741676))

(assert (=> b!7034031 m!7741678))

(declare-fun m!7741680 () Bool)

(assert (=> b!7034031 m!7741680))

(assert (=> b!7033795 d!2194831))

(assert (=> b!7033795 d!2194767))

(declare-fun d!2194833 () Bool)

(assert (=> d!2194833 (forall!16381 (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306)) lambda!415029)))

(declare-fun lt!2519634 () Unit!161608)

(assert (=> d!2194833 (= lt!2519634 (choose!53275 (exprs!6963 lt!2519501) (exprs!6963 ct2!306) lambda!415029))))

(assert (=> d!2194833 (forall!16381 (exprs!6963 lt!2519501) lambda!415029)))

(assert (=> d!2194833 (= (lemmaConcatPreservesForall!788 (exprs!6963 lt!2519501) (exprs!6963 ct2!306) lambda!415029) lt!2519634)))

(declare-fun bs!1871225 () Bool)

(assert (= bs!1871225 d!2194833))

(assert (=> bs!1871225 m!7741214))

(assert (=> bs!1871225 m!7741214))

(declare-fun m!7741682 () Bool)

(assert (=> bs!1871225 m!7741682))

(declare-fun m!7741684 () Bool)

(assert (=> bs!1871225 m!7741684))

(declare-fun m!7741686 () Bool)

(assert (=> bs!1871225 m!7741686))

(assert (=> b!7033814 d!2194833))

(declare-fun b!7034061 () Bool)

(declare-fun e!4228568 () Bool)

(declare-fun lt!2519643 () List!67930)

(assert (=> b!7034061 (= e!4228568 (or (not (= (_2!37343 lt!2519504) Nil!67806)) (= lt!2519643 (_1!37343 lt!2519504))))))

(declare-fun b!7034060 () Bool)

(declare-fun res!2871465 () Bool)

(assert (=> b!7034060 (=> (not res!2871465) (not e!4228568))))

(declare-fun size!41066 (List!67930) Int)

(assert (=> b!7034060 (= res!2871465 (= (size!41066 lt!2519643) (+ (size!41066 (_1!37343 lt!2519504)) (size!41066 (_2!37343 lt!2519504)))))))

(declare-fun b!7034059 () Bool)

(declare-fun e!4228569 () List!67930)

(assert (=> b!7034059 (= e!4228569 (Cons!67806 (h!74254 (_1!37343 lt!2519504)) (++!15515 (t!381697 (_1!37343 lt!2519504)) (_2!37343 lt!2519504))))))

(declare-fun d!2194835 () Bool)

(assert (=> d!2194835 e!4228568))

(declare-fun res!2871466 () Bool)

(assert (=> d!2194835 (=> (not res!2871466) (not e!4228568))))

(declare-fun content!13538 (List!67930) (InoxSet C!35204))

(assert (=> d!2194835 (= res!2871466 (= (content!13538 lt!2519643) ((_ map or) (content!13538 (_1!37343 lt!2519504)) (content!13538 (_2!37343 lt!2519504)))))))

(assert (=> d!2194835 (= lt!2519643 e!4228569)))

(declare-fun c!1308514 () Bool)

(assert (=> d!2194835 (= c!1308514 ((_ is Nil!67806) (_1!37343 lt!2519504)))))

(assert (=> d!2194835 (= (++!15515 (_1!37343 lt!2519504) (_2!37343 lt!2519504)) lt!2519643)))

(declare-fun b!7034058 () Bool)

(assert (=> b!7034058 (= e!4228569 (_2!37343 lt!2519504))))

(assert (= (and d!2194835 c!1308514) b!7034058))

(assert (= (and d!2194835 (not c!1308514)) b!7034059))

(assert (= (and d!2194835 res!2871466) b!7034060))

(assert (= (and b!7034060 res!2871465) b!7034061))

(declare-fun m!7741688 () Bool)

(assert (=> b!7034060 m!7741688))

(declare-fun m!7741690 () Bool)

(assert (=> b!7034060 m!7741690))

(declare-fun m!7741692 () Bool)

(assert (=> b!7034060 m!7741692))

(declare-fun m!7741694 () Bool)

(assert (=> b!7034059 m!7741694))

(declare-fun m!7741696 () Bool)

(assert (=> d!2194835 m!7741696))

(declare-fun m!7741698 () Bool)

(assert (=> d!2194835 m!7741698))

(declare-fun m!7741700 () Bool)

(assert (=> d!2194835 m!7741700))

(assert (=> b!7033815 d!2194835))

(declare-fun d!2194837 () Bool)

(assert (=> d!2194837 (= (isEmpty!39548 (_1!37343 lt!2519504)) ((_ is Nil!67806) (_1!37343 lt!2519504)))))

(assert (=> b!7033796 d!2194837))

(declare-fun e!4228572 () (InoxSet Context!12926))

(declare-fun call!638757 () (InoxSet Context!12926))

(declare-fun b!7034062 () Bool)

(assert (=> b!7034062 (= e!4228572 ((_ map or) call!638757 (derivationStepZipperUp!2077 (Context!12927 (t!381696 (exprs!6963 lt!2519536))) (h!74254 s!7408))))))

(declare-fun bm!638752 () Bool)

(assert (=> bm!638752 (= call!638757 (derivationStepZipperDown!2131 (h!74253 (exprs!6963 lt!2519536)) (Context!12927 (t!381696 (exprs!6963 lt!2519536))) (h!74254 s!7408)))))

(declare-fun b!7034063 () Bool)

(declare-fun e!4228570 () (InoxSet Context!12926))

(assert (=> b!7034063 (= e!4228570 ((as const (Array Context!12926 Bool)) false))))

(declare-fun b!7034064 () Bool)

(assert (=> b!7034064 (= e!4228570 call!638757)))

(declare-fun b!7034065 () Bool)

(assert (=> b!7034065 (= e!4228572 e!4228570)))

(declare-fun c!1308516 () Bool)

(assert (=> b!7034065 (= c!1308516 ((_ is Cons!67805) (exprs!6963 lt!2519536)))))

(declare-fun d!2194839 () Bool)

(declare-fun c!1308515 () Bool)

(declare-fun e!4228571 () Bool)

(assert (=> d!2194839 (= c!1308515 e!4228571)))

(declare-fun res!2871467 () Bool)

(assert (=> d!2194839 (=> (not res!2871467) (not e!4228571))))

(assert (=> d!2194839 (= res!2871467 ((_ is Cons!67805) (exprs!6963 lt!2519536)))))

(assert (=> d!2194839 (= (derivationStepZipperUp!2077 lt!2519536 (h!74254 s!7408)) e!4228572)))

(declare-fun b!7034066 () Bool)

(assert (=> b!7034066 (= e!4228571 (nullable!7178 (h!74253 (exprs!6963 lt!2519536))))))

(assert (= (and d!2194839 res!2871467) b!7034066))

(assert (= (and d!2194839 c!1308515) b!7034062))

(assert (= (and d!2194839 (not c!1308515)) b!7034065))

(assert (= (and b!7034065 c!1308516) b!7034064))

(assert (= (and b!7034065 (not c!1308516)) b!7034063))

(assert (= (or b!7034062 b!7034064) bm!638752))

(declare-fun m!7741702 () Bool)

(assert (=> b!7034062 m!7741702))

(declare-fun m!7741704 () Bool)

(assert (=> bm!638752 m!7741704))

(declare-fun m!7741706 () Bool)

(assert (=> b!7034066 m!7741706))

(assert (=> b!7033797 d!2194839))

(assert (=> b!7033797 d!2194833))

(declare-fun d!2194841 () Bool)

(assert (=> d!2194841 (= (flatMap!2414 lt!2519523 lambda!415030) (choose!53277 lt!2519523 lambda!415030))))

(declare-fun bs!1871226 () Bool)

(assert (= bs!1871226 d!2194841))

(declare-fun m!7741708 () Bool)

(assert (=> bs!1871226 m!7741708))

(assert (=> b!7033797 d!2194841))

(declare-fun d!2194843 () Bool)

(assert (=> d!2194843 (= (flatMap!2414 lt!2519523 lambda!415030) (dynLambda!27387 lambda!415030 lt!2519536))))

(declare-fun lt!2519644 () Unit!161608)

(assert (=> d!2194843 (= lt!2519644 (choose!53278 lt!2519523 lt!2519536 lambda!415030))))

(assert (=> d!2194843 (= lt!2519523 (store ((as const (Array Context!12926 Bool)) false) lt!2519536 true))))

(assert (=> d!2194843 (= (lemmaFlatMapOnSingletonSet!1928 lt!2519523 lt!2519536 lambda!415030) lt!2519644)))

(declare-fun b_lambda!266607 () Bool)

(assert (=> (not b_lambda!266607) (not d!2194843)))

(declare-fun bs!1871227 () Bool)

(assert (= bs!1871227 d!2194843))

(assert (=> bs!1871227 m!7741218))

(declare-fun m!7741710 () Bool)

(assert (=> bs!1871227 m!7741710))

(declare-fun m!7741712 () Bool)

(assert (=> bs!1871227 m!7741712))

(assert (=> bs!1871227 m!7741124))

(assert (=> b!7033797 d!2194843))

(declare-fun bs!1871228 () Bool)

(declare-fun d!2194845 () Bool)

(assert (= bs!1871228 (and d!2194845 b!7033797)))

(declare-fun lambda!415069 () Int)

(assert (=> bs!1871228 (= lambda!415069 lambda!415030)))

(declare-fun bs!1871229 () Bool)

(assert (= bs!1871229 (and d!2194845 d!2194769)))

(assert (=> bs!1871229 (= lambda!415069 lambda!415057)))

(assert (=> d!2194845 true))

(assert (=> d!2194845 (= (derivationStepZipper!2923 lt!2519523 (h!74254 s!7408)) (flatMap!2414 lt!2519523 lambda!415069))))

(declare-fun bs!1871230 () Bool)

(assert (= bs!1871230 d!2194845))

(declare-fun m!7741714 () Bool)

(assert (=> bs!1871230 m!7741714))

(assert (=> b!7033797 d!2194845))

(declare-fun d!2194847 () Bool)

(declare-fun nullableFct!2729 (Regex!17467) Bool)

(assert (=> d!2194847 (= (nullable!7178 (h!74253 (exprs!6963 lt!2519501))) (nullableFct!2729 (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun bs!1871231 () Bool)

(assert (= bs!1871231 d!2194847))

(declare-fun m!7741716 () Bool)

(assert (=> bs!1871231 m!7741716))

(assert (=> b!7033816 d!2194847))

(declare-fun d!2194849 () Bool)

(assert (=> d!2194849 (= (tail!13555 (exprs!6963 lt!2519501)) (t!381696 (exprs!6963 lt!2519501)))))

(assert (=> b!7033816 d!2194849))

(declare-fun d!2194851 () Bool)

(declare-fun c!1308517 () Bool)

(assert (=> d!2194851 (= c!1308517 (isEmpty!39548 s!7408))))

(declare-fun e!4228573 () Bool)

(assert (=> d!2194851 (= (matchZipper!3007 lt!2519505 s!7408) e!4228573)))

(declare-fun b!7034067 () Bool)

(assert (=> b!7034067 (= e!4228573 (nullableZipper!2581 lt!2519505))))

(declare-fun b!7034068 () Bool)

(assert (=> b!7034068 (= e!4228573 (matchZipper!3007 (derivationStepZipper!2923 lt!2519505 (head!14266 s!7408)) (tail!13557 s!7408)))))

(assert (= (and d!2194851 c!1308517) b!7034067))

(assert (= (and d!2194851 (not c!1308517)) b!7034068))

(assert (=> d!2194851 m!7741504))

(declare-fun m!7741718 () Bool)

(assert (=> b!7034067 m!7741718))

(assert (=> b!7034068 m!7741508))

(assert (=> b!7034068 m!7741508))

(declare-fun m!7741720 () Bool)

(assert (=> b!7034068 m!7741720))

(assert (=> b!7034068 m!7741512))

(assert (=> b!7034068 m!7741720))

(assert (=> b!7034068 m!7741512))

(declare-fun m!7741722 () Bool)

(assert (=> b!7034068 m!7741722))

(assert (=> b!7033817 d!2194851))

(assert (=> b!7033817 d!2194767))

(declare-fun bs!1871232 () Bool)

(declare-fun d!2194853 () Bool)

(assert (= bs!1871232 (and d!2194853 b!7033822)))

(declare-fun lambda!415070 () Int)

(assert (=> bs!1871232 (= lambda!415070 lambda!415029)))

(declare-fun bs!1871233 () Bool)

(assert (= bs!1871233 (and d!2194853 d!2194789)))

(assert (=> bs!1871233 (= lambda!415070 lambda!415065)))

(declare-fun bs!1871234 () Bool)

(assert (= bs!1871234 (and d!2194853 d!2194829)))

(assert (=> bs!1871234 (not (= lambda!415070 lambda!415068))))

(assert (=> d!2194853 (= (inv!86526 setElem!49184) (forall!16381 (exprs!6963 setElem!49184) lambda!415070))))

(declare-fun bs!1871235 () Bool)

(assert (= bs!1871235 d!2194853))

(declare-fun m!7741724 () Bool)

(assert (=> bs!1871235 m!7741724))

(assert (=> setNonEmpty!49184 d!2194853))

(declare-fun bs!1871243 () Bool)

(declare-fun d!2194855 () Bool)

(assert (= bs!1871243 (and d!2194855 b!7033798)))

(declare-fun lambda!415073 () Int)

(assert (=> bs!1871243 (= lambda!415073 lambda!415027)))

(declare-fun bs!1871244 () Bool)

(assert (= bs!1871244 (and d!2194855 b!7033820)))

(assert (=> bs!1871244 (not (= lambda!415073 lambda!415031))))

(assert (=> d!2194855 true))

(assert (=> d!2194855 (exists!3396 lt!2519542 lambda!415073)))

(declare-fun lt!2519652 () Unit!161608)

(declare-fun choose!53284 (List!67931 List!67930) Unit!161608)

(assert (=> d!2194855 (= lt!2519652 (choose!53284 lt!2519542 s!7408))))

(declare-fun content!13539 (List!67931) (InoxSet Context!12926))

(assert (=> d!2194855 (matchZipper!3007 (content!13539 lt!2519542) s!7408)))

(assert (=> d!2194855 (= (lemmaZipperMatchesExistsMatchingContext!406 lt!2519542 s!7408) lt!2519652)))

(declare-fun bs!1871245 () Bool)

(assert (= bs!1871245 d!2194855))

(declare-fun m!7741766 () Bool)

(assert (=> bs!1871245 m!7741766))

(declare-fun m!7741768 () Bool)

(assert (=> bs!1871245 m!7741768))

(declare-fun m!7741770 () Bool)

(assert (=> bs!1871245 m!7741770))

(assert (=> bs!1871245 m!7741770))

(declare-fun m!7741772 () Bool)

(assert (=> bs!1871245 m!7741772))

(assert (=> b!7033798 d!2194855))

(declare-fun bs!1871246 () Bool)

(declare-fun d!2194871 () Bool)

(assert (= bs!1871246 (and d!2194871 b!7033798)))

(declare-fun lambda!415076 () Int)

(assert (=> bs!1871246 (not (= lambda!415076 lambda!415027))))

(declare-fun bs!1871247 () Bool)

(assert (= bs!1871247 (and d!2194871 b!7033820)))

(assert (=> bs!1871247 (not (= lambda!415076 lambda!415031))))

(declare-fun bs!1871248 () Bool)

(assert (= bs!1871248 (and d!2194871 d!2194855)))

(assert (=> bs!1871248 (not (= lambda!415076 lambda!415073))))

(assert (=> d!2194871 true))

(declare-fun order!28177 () Int)

(declare-fun dynLambda!27388 (Int Int) Int)

(assert (=> d!2194871 (< (dynLambda!27388 order!28177 lambda!415027) (dynLambda!27388 order!28177 lambda!415076))))

(declare-fun forall!16382 (List!67931 Int) Bool)

(assert (=> d!2194871 (= (exists!3396 lt!2519542 lambda!415027) (not (forall!16382 lt!2519542 lambda!415076)))))

(declare-fun bs!1871249 () Bool)

(assert (= bs!1871249 d!2194871))

(declare-fun m!7741774 () Bool)

(assert (=> bs!1871249 m!7741774))

(assert (=> b!7033798 d!2194871))

(declare-fun d!2194873 () Bool)

(declare-fun c!1308522 () Bool)

(assert (=> d!2194873 (= c!1308522 (isEmpty!39548 s!7408))))

(declare-fun e!4228589 () Bool)

(assert (=> d!2194873 (= (matchZipper!3007 lt!2519537 s!7408) e!4228589)))

(declare-fun b!7034096 () Bool)

(assert (=> b!7034096 (= e!4228589 (nullableZipper!2581 lt!2519537))))

(declare-fun b!7034097 () Bool)

(assert (=> b!7034097 (= e!4228589 (matchZipper!3007 (derivationStepZipper!2923 lt!2519537 (head!14266 s!7408)) (tail!13557 s!7408)))))

(assert (= (and d!2194873 c!1308522) b!7034096))

(assert (= (and d!2194873 (not c!1308522)) b!7034097))

(assert (=> d!2194873 m!7741504))

(declare-fun m!7741776 () Bool)

(assert (=> b!7034096 m!7741776))

(assert (=> b!7034097 m!7741508))

(assert (=> b!7034097 m!7741508))

(declare-fun m!7741778 () Bool)

(assert (=> b!7034097 m!7741778))

(assert (=> b!7034097 m!7741512))

(assert (=> b!7034097 m!7741778))

(assert (=> b!7034097 m!7741512))

(declare-fun m!7741780 () Bool)

(assert (=> b!7034097 m!7741780))

(assert (=> b!7033798 d!2194873))

(declare-fun d!2194875 () Bool)

(declare-fun e!4228592 () Bool)

(assert (=> d!2194875 e!4228592))

(declare-fun res!2871475 () Bool)

(assert (=> d!2194875 (=> (not res!2871475) (not e!4228592))))

(declare-fun lt!2519655 () Context!12926)

(declare-fun dynLambda!27389 (Int Context!12926) Bool)

(assert (=> d!2194875 (= res!2871475 (dynLambda!27389 lambda!415027 lt!2519655))))

(declare-fun getWitness!1476 (List!67931 Int) Context!12926)

(assert (=> d!2194875 (= lt!2519655 (getWitness!1476 (toList!10810 lt!2519543) lambda!415027))))

(assert (=> d!2194875 (exists!3397 lt!2519543 lambda!415027)))

(assert (=> d!2194875 (= (getWitness!1474 lt!2519543 lambda!415027) lt!2519655)))

(declare-fun b!7034100 () Bool)

(assert (=> b!7034100 (= e!4228592 (select lt!2519543 lt!2519655))))

(assert (= (and d!2194875 res!2871475) b!7034100))

(declare-fun b_lambda!266623 () Bool)

(assert (=> (not b_lambda!266623) (not d!2194875)))

(declare-fun m!7741782 () Bool)

(assert (=> d!2194875 m!7741782))

(assert (=> d!2194875 m!7741234))

(assert (=> d!2194875 m!7741234))

(declare-fun m!7741784 () Bool)

(assert (=> d!2194875 m!7741784))

(declare-fun m!7741786 () Bool)

(assert (=> d!2194875 m!7741786))

(declare-fun m!7741788 () Bool)

(assert (=> b!7034100 m!7741788))

(assert (=> b!7033798 d!2194875))

(declare-fun d!2194877 () Bool)

(declare-fun e!4228595 () Bool)

(assert (=> d!2194877 e!4228595))

(declare-fun res!2871478 () Bool)

(assert (=> d!2194877 (=> (not res!2871478) (not e!4228595))))

(declare-fun lt!2519658 () List!67931)

(declare-fun noDuplicate!2629 (List!67931) Bool)

(assert (=> d!2194877 (= res!2871478 (noDuplicate!2629 lt!2519658))))

(declare-fun choose!53285 ((InoxSet Context!12926)) List!67931)

(assert (=> d!2194877 (= lt!2519658 (choose!53285 lt!2519543))))

(assert (=> d!2194877 (= (toList!10810 lt!2519543) lt!2519658)))

(declare-fun b!7034103 () Bool)

(assert (=> b!7034103 (= e!4228595 (= (content!13539 lt!2519658) lt!2519543))))

(assert (= (and d!2194877 res!2871478) b!7034103))

(declare-fun m!7741790 () Bool)

(assert (=> d!2194877 m!7741790))

(declare-fun m!7741792 () Bool)

(assert (=> d!2194877 m!7741792))

(declare-fun m!7741794 () Bool)

(assert (=> b!7034103 m!7741794))

(assert (=> b!7033798 d!2194877))

(declare-fun d!2194879 () Bool)

(declare-fun c!1308523 () Bool)

(assert (=> d!2194879 (= c!1308523 (isEmpty!39548 (t!381697 s!7408)))))

(declare-fun e!4228596 () Bool)

(assert (=> d!2194879 (= (matchZipper!3007 lt!2519528 (t!381697 s!7408)) e!4228596)))

(declare-fun b!7034104 () Bool)

(assert (=> b!7034104 (= e!4228596 (nullableZipper!2581 lt!2519528))))

(declare-fun b!7034105 () Bool)

(assert (=> b!7034105 (= e!4228596 (matchZipper!3007 (derivationStepZipper!2923 lt!2519528 (head!14266 (t!381697 s!7408))) (tail!13557 (t!381697 s!7408))))))

(assert (= (and d!2194879 c!1308523) b!7034104))

(assert (= (and d!2194879 (not c!1308523)) b!7034105))

(assert (=> d!2194879 m!7741670))

(declare-fun m!7741796 () Bool)

(assert (=> b!7034104 m!7741796))

(assert (=> b!7034105 m!7741674))

(assert (=> b!7034105 m!7741674))

(declare-fun m!7741798 () Bool)

(assert (=> b!7034105 m!7741798))

(assert (=> b!7034105 m!7741678))

(assert (=> b!7034105 m!7741798))

(assert (=> b!7034105 m!7741678))

(declare-fun m!7741800 () Bool)

(assert (=> b!7034105 m!7741800))

(assert (=> b!7033818 d!2194879))

(declare-fun d!2194881 () Bool)

(declare-fun e!4228599 () Bool)

(assert (=> d!2194881 (= (matchZipper!3007 ((_ map or) lt!2519544 lt!2519524) (t!381697 s!7408)) e!4228599)))

(declare-fun res!2871481 () Bool)

(assert (=> d!2194881 (=> res!2871481 e!4228599)))

(assert (=> d!2194881 (= res!2871481 (matchZipper!3007 lt!2519544 (t!381697 s!7408)))))

(declare-fun lt!2519661 () Unit!161608)

(declare-fun choose!53286 ((InoxSet Context!12926) (InoxSet Context!12926) List!67930) Unit!161608)

(assert (=> d!2194881 (= lt!2519661 (choose!53286 lt!2519544 lt!2519524 (t!381697 s!7408)))))

(assert (=> d!2194881 (= (lemmaZipperConcatMatchesSameAsBothZippers!1540 lt!2519544 lt!2519524 (t!381697 s!7408)) lt!2519661)))

(declare-fun b!7034108 () Bool)

(assert (=> b!7034108 (= e!4228599 (matchZipper!3007 lt!2519524 (t!381697 s!7408)))))

(assert (= (and d!2194881 (not res!2871481)) b!7034108))

(declare-fun m!7741802 () Bool)

(assert (=> d!2194881 m!7741802))

(assert (=> d!2194881 m!7741122))

(declare-fun m!7741804 () Bool)

(assert (=> d!2194881 m!7741804))

(assert (=> b!7034108 m!7741134))

(assert (=> b!7033818 d!2194881))

(declare-fun d!2194883 () Bool)

(declare-fun c!1308524 () Bool)

(assert (=> d!2194883 (= c!1308524 (isEmpty!39548 (t!381697 s!7408)))))

(declare-fun e!4228600 () Bool)

(assert (=> d!2194883 (= (matchZipper!3007 lt!2519533 (t!381697 s!7408)) e!4228600)))

(declare-fun b!7034109 () Bool)

(assert (=> b!7034109 (= e!4228600 (nullableZipper!2581 lt!2519533))))

(declare-fun b!7034110 () Bool)

(assert (=> b!7034110 (= e!4228600 (matchZipper!3007 (derivationStepZipper!2923 lt!2519533 (head!14266 (t!381697 s!7408))) (tail!13557 (t!381697 s!7408))))))

(assert (= (and d!2194883 c!1308524) b!7034109))

(assert (= (and d!2194883 (not c!1308524)) b!7034110))

(assert (=> d!2194883 m!7741670))

(declare-fun m!7741806 () Bool)

(assert (=> b!7034109 m!7741806))

(assert (=> b!7034110 m!7741674))

(assert (=> b!7034110 m!7741674))

(declare-fun m!7741808 () Bool)

(assert (=> b!7034110 m!7741808))

(assert (=> b!7034110 m!7741678))

(assert (=> b!7034110 m!7741808))

(assert (=> b!7034110 m!7741678))

(declare-fun m!7741810 () Bool)

(assert (=> b!7034110 m!7741810))

(assert (=> b!7033818 d!2194883))

(declare-fun d!2194885 () Bool)

(declare-fun c!1308525 () Bool)

(assert (=> d!2194885 (= c!1308525 (isEmpty!39548 (t!381697 s!7408)))))

(declare-fun e!4228601 () Bool)

(assert (=> d!2194885 (= (matchZipper!3007 lt!2519544 (t!381697 s!7408)) e!4228601)))

(declare-fun b!7034111 () Bool)

(assert (=> b!7034111 (= e!4228601 (nullableZipper!2581 lt!2519544))))

(declare-fun b!7034112 () Bool)

(assert (=> b!7034112 (= e!4228601 (matchZipper!3007 (derivationStepZipper!2923 lt!2519544 (head!14266 (t!381697 s!7408))) (tail!13557 (t!381697 s!7408))))))

(assert (= (and d!2194885 c!1308525) b!7034111))

(assert (= (and d!2194885 (not c!1308525)) b!7034112))

(assert (=> d!2194885 m!7741670))

(declare-fun m!7741812 () Bool)

(assert (=> b!7034111 m!7741812))

(assert (=> b!7034112 m!7741674))

(assert (=> b!7034112 m!7741674))

(declare-fun m!7741814 () Bool)

(assert (=> b!7034112 m!7741814))

(assert (=> b!7034112 m!7741678))

(assert (=> b!7034112 m!7741814))

(assert (=> b!7034112 m!7741678))

(declare-fun m!7741816 () Bool)

(assert (=> b!7034112 m!7741816))

(assert (=> b!7033818 d!2194885))

(assert (=> b!7033818 d!2194767))

(assert (=> b!7033819 d!2194831))

(assert (=> b!7033799 d!2194831))

(assert (=> b!7033799 d!2194767))

(declare-fun d!2194887 () Bool)

(declare-fun lt!2519664 () Int)

(assert (=> d!2194887 (>= lt!2519664 0)))

(declare-fun e!4228604 () Int)

(assert (=> d!2194887 (= lt!2519664 e!4228604)))

(declare-fun c!1308528 () Bool)

(assert (=> d!2194887 (= c!1308528 ((_ is Cons!67807) (Cons!67807 lt!2519545 Nil!67807)))))

(assert (=> d!2194887 (= (zipperDepthTotal!530 (Cons!67807 lt!2519545 Nil!67807)) lt!2519664)))

(declare-fun b!7034117 () Bool)

(assert (=> b!7034117 (= e!4228604 (+ (contextDepthTotal!502 (h!74255 (Cons!67807 lt!2519545 Nil!67807))) (zipperDepthTotal!530 (t!381698 (Cons!67807 lt!2519545 Nil!67807)))))))

(declare-fun b!7034118 () Bool)

(assert (=> b!7034118 (= e!4228604 0)))

(assert (= (and d!2194887 c!1308528) b!7034117))

(assert (= (and d!2194887 (not c!1308528)) b!7034118))

(declare-fun m!7741818 () Bool)

(assert (=> b!7034117 m!7741818))

(declare-fun m!7741820 () Bool)

(assert (=> b!7034117 m!7741820))

(assert (=> b!7033800 d!2194887))

(assert (=> b!7033820 d!2194763))

(declare-fun d!2194889 () Bool)

(declare-fun lt!2519667 () Int)

(assert (=> d!2194889 (>= lt!2519667 0)))

(declare-fun e!4228607 () Int)

(assert (=> d!2194889 (= lt!2519667 e!4228607)))

(declare-fun c!1308532 () Bool)

(assert (=> d!2194889 (= c!1308532 ((_ is Cons!67805) (exprs!6963 lt!2519501)))))

(assert (=> d!2194889 (= (contextDepthTotal!502 lt!2519501) lt!2519667)))

(declare-fun b!7034123 () Bool)

(declare-fun regexDepthTotal!304 (Regex!17467) Int)

(assert (=> b!7034123 (= e!4228607 (+ (regexDepthTotal!304 (h!74253 (exprs!6963 lt!2519501))) (contextDepthTotal!502 (Context!12927 (t!381696 (exprs!6963 lt!2519501))))))))

(declare-fun b!7034124 () Bool)

(assert (=> b!7034124 (= e!4228607 1)))

(assert (= (and d!2194889 c!1308532) b!7034123))

(assert (= (and d!2194889 (not c!1308532)) b!7034124))

(declare-fun m!7741822 () Bool)

(assert (=> b!7034123 m!7741822))

(declare-fun m!7741824 () Bool)

(assert (=> b!7034123 m!7741824))

(assert (=> b!7033801 d!2194889))

(declare-fun d!2194891 () Bool)

(assert (=> d!2194891 (= (flatMap!2414 lt!2519520 lambda!415030) (choose!53277 lt!2519520 lambda!415030))))

(declare-fun bs!1871250 () Bool)

(assert (= bs!1871250 d!2194891))

(declare-fun m!7741826 () Bool)

(assert (=> bs!1871250 m!7741826))

(assert (=> b!7033801 d!2194891))

(declare-fun d!2194893 () Bool)

(declare-fun e!4228613 () Bool)

(assert (=> d!2194893 e!4228613))

(declare-fun res!2871486 () Bool)

(assert (=> d!2194893 (=> (not res!2871486) (not e!4228613))))

(declare-fun lt!2519670 () List!67929)

(declare-fun content!13540 (List!67929) (InoxSet Regex!17467))

(assert (=> d!2194893 (= res!2871486 (= (content!13540 lt!2519670) ((_ map or) (content!13540 lt!2519492) (content!13540 (exprs!6963 ct2!306)))))))

(declare-fun e!4228612 () List!67929)

(assert (=> d!2194893 (= lt!2519670 e!4228612)))

(declare-fun c!1308535 () Bool)

(assert (=> d!2194893 (= c!1308535 ((_ is Nil!67805) lt!2519492))))

(assert (=> d!2194893 (= (++!15514 lt!2519492 (exprs!6963 ct2!306)) lt!2519670)))

(declare-fun b!7034136 () Bool)

(assert (=> b!7034136 (= e!4228613 (or (not (= (exprs!6963 ct2!306) Nil!67805)) (= lt!2519670 lt!2519492)))))

(declare-fun b!7034135 () Bool)

(declare-fun res!2871487 () Bool)

(assert (=> b!7034135 (=> (not res!2871487) (not e!4228613))))

(declare-fun size!41067 (List!67929) Int)

(assert (=> b!7034135 (= res!2871487 (= (size!41067 lt!2519670) (+ (size!41067 lt!2519492) (size!41067 (exprs!6963 ct2!306)))))))

(declare-fun b!7034134 () Bool)

(assert (=> b!7034134 (= e!4228612 (Cons!67805 (h!74253 lt!2519492) (++!15514 (t!381696 lt!2519492) (exprs!6963 ct2!306))))))

(declare-fun b!7034133 () Bool)

(assert (=> b!7034133 (= e!4228612 (exprs!6963 ct2!306))))

(assert (= (and d!2194893 c!1308535) b!7034133))

(assert (= (and d!2194893 (not c!1308535)) b!7034134))

(assert (= (and d!2194893 res!2871486) b!7034135))

(assert (= (and b!7034135 res!2871487) b!7034136))

(declare-fun m!7741828 () Bool)

(assert (=> d!2194893 m!7741828))

(declare-fun m!7741830 () Bool)

(assert (=> d!2194893 m!7741830))

(declare-fun m!7741832 () Bool)

(assert (=> d!2194893 m!7741832))

(declare-fun m!7741834 () Bool)

(assert (=> b!7034135 m!7741834))

(declare-fun m!7741836 () Bool)

(assert (=> b!7034135 m!7741836))

(declare-fun m!7741838 () Bool)

(assert (=> b!7034135 m!7741838))

(declare-fun m!7741840 () Bool)

(assert (=> b!7034134 m!7741840))

(assert (=> b!7033801 d!2194893))

(declare-fun d!2194895 () Bool)

(declare-fun choose!53287 ((InoxSet Context!12926) Int) (InoxSet Context!12926))

(assert (=> d!2194895 (= (map!15768 lt!2519520 lambda!415028) (choose!53287 lt!2519520 lambda!415028))))

(declare-fun bs!1871251 () Bool)

(assert (= bs!1871251 d!2194895))

(declare-fun m!7741842 () Bool)

(assert (=> bs!1871251 m!7741842))

(assert (=> b!7033801 d!2194895))

(declare-fun d!2194897 () Bool)

(declare-fun lt!2519671 () Int)

(assert (=> d!2194897 (>= lt!2519671 0)))

(declare-fun e!4228614 () Int)

(assert (=> d!2194897 (= lt!2519671 e!4228614)))

(declare-fun c!1308536 () Bool)

(assert (=> d!2194897 (= c!1308536 ((_ is Cons!67805) (exprs!6963 lt!2519545)))))

(assert (=> d!2194897 (= (contextDepthTotal!502 lt!2519545) lt!2519671)))

(declare-fun b!7034137 () Bool)

(assert (=> b!7034137 (= e!4228614 (+ (regexDepthTotal!304 (h!74253 (exprs!6963 lt!2519545))) (contextDepthTotal!502 (Context!12927 (t!381696 (exprs!6963 lt!2519545))))))))

(declare-fun b!7034138 () Bool)

(assert (=> b!7034138 (= e!4228614 1)))

(assert (= (and d!2194897 c!1308536) b!7034137))

(assert (= (and d!2194897 (not c!1308536)) b!7034138))

(declare-fun m!7741844 () Bool)

(assert (=> b!7034137 m!7741844))

(declare-fun m!7741846 () Bool)

(assert (=> b!7034137 m!7741846))

(assert (=> b!7033801 d!2194897))

(declare-fun d!2194899 () Bool)

(assert (=> d!2194899 (= (flatMap!2414 lt!2519520 lambda!415030) (dynLambda!27387 lambda!415030 lt!2519545))))

(declare-fun lt!2519672 () Unit!161608)

(assert (=> d!2194899 (= lt!2519672 (choose!53278 lt!2519520 lt!2519545 lambda!415030))))

(assert (=> d!2194899 (= lt!2519520 (store ((as const (Array Context!12926 Bool)) false) lt!2519545 true))))

(assert (=> d!2194899 (= (lemmaFlatMapOnSingletonSet!1928 lt!2519520 lt!2519545 lambda!415030) lt!2519672)))

(declare-fun b_lambda!266625 () Bool)

(assert (=> (not b_lambda!266625) (not d!2194899)))

(declare-fun bs!1871252 () Bool)

(assert (= bs!1871252 d!2194899))

(assert (=> bs!1871252 m!7741162))

(declare-fun m!7741848 () Bool)

(assert (=> bs!1871252 m!7741848))

(declare-fun m!7741850 () Bool)

(assert (=> bs!1871252 m!7741850))

(assert (=> bs!1871252 m!7741152))

(assert (=> b!7033801 d!2194899))

(assert (=> b!7033801 d!2194767))

(declare-fun d!2194901 () Bool)

(declare-fun lt!2519673 () Int)

(assert (=> d!2194901 (>= lt!2519673 0)))

(declare-fun e!4228615 () Int)

(assert (=> d!2194901 (= lt!2519673 e!4228615)))

(declare-fun c!1308537 () Bool)

(assert (=> d!2194901 (= c!1308537 ((_ is Cons!67807) lt!2519525))))

(assert (=> d!2194901 (= (zipperDepthTotal!530 lt!2519525) lt!2519673)))

(declare-fun b!7034139 () Bool)

(assert (=> b!7034139 (= e!4228615 (+ (contextDepthTotal!502 (h!74255 lt!2519525)) (zipperDepthTotal!530 (t!381698 lt!2519525))))))

(declare-fun b!7034140 () Bool)

(assert (=> b!7034140 (= e!4228615 0)))

(assert (= (and d!2194901 c!1308537) b!7034139))

(assert (= (and d!2194901 (not c!1308537)) b!7034140))

(declare-fun m!7741852 () Bool)

(assert (=> b!7034139 m!7741852))

(declare-fun m!7741854 () Bool)

(assert (=> b!7034139 m!7741854))

(assert (=> b!7033801 d!2194901))

(declare-fun e!4228618 () (InoxSet Context!12926))

(declare-fun b!7034141 () Bool)

(declare-fun call!638758 () (InoxSet Context!12926))

(assert (=> b!7034141 (= e!4228618 ((_ map or) call!638758 (derivationStepZipperUp!2077 (Context!12927 (t!381696 (exprs!6963 lt!2519545))) (h!74254 s!7408))))))

(declare-fun bm!638753 () Bool)

(assert (=> bm!638753 (= call!638758 (derivationStepZipperDown!2131 (h!74253 (exprs!6963 lt!2519545)) (Context!12927 (t!381696 (exprs!6963 lt!2519545))) (h!74254 s!7408)))))

(declare-fun b!7034142 () Bool)

(declare-fun e!4228616 () (InoxSet Context!12926))

(assert (=> b!7034142 (= e!4228616 ((as const (Array Context!12926 Bool)) false))))

(declare-fun b!7034143 () Bool)

(assert (=> b!7034143 (= e!4228616 call!638758)))

(declare-fun b!7034144 () Bool)

(assert (=> b!7034144 (= e!4228618 e!4228616)))

(declare-fun c!1308539 () Bool)

(assert (=> b!7034144 (= c!1308539 ((_ is Cons!67805) (exprs!6963 lt!2519545)))))

(declare-fun d!2194903 () Bool)

(declare-fun c!1308538 () Bool)

(declare-fun e!4228617 () Bool)

(assert (=> d!2194903 (= c!1308538 e!4228617)))

(declare-fun res!2871488 () Bool)

(assert (=> d!2194903 (=> (not res!2871488) (not e!4228617))))

(assert (=> d!2194903 (= res!2871488 ((_ is Cons!67805) (exprs!6963 lt!2519545)))))

(assert (=> d!2194903 (= (derivationStepZipperUp!2077 lt!2519545 (h!74254 s!7408)) e!4228618)))

(declare-fun b!7034145 () Bool)

(assert (=> b!7034145 (= e!4228617 (nullable!7178 (h!74253 (exprs!6963 lt!2519545))))))

(assert (= (and d!2194903 res!2871488) b!7034145))

(assert (= (and d!2194903 c!1308538) b!7034141))

(assert (= (and d!2194903 (not c!1308538)) b!7034144))

(assert (= (and b!7034144 c!1308539) b!7034143))

(assert (= (and b!7034144 (not c!1308539)) b!7034142))

(assert (= (or b!7034141 b!7034143) bm!638753))

(declare-fun m!7741856 () Bool)

(assert (=> b!7034141 m!7741856))

(declare-fun m!7741858 () Bool)

(assert (=> bm!638753 m!7741858))

(declare-fun m!7741860 () Bool)

(assert (=> b!7034145 m!7741860))

(assert (=> b!7033801 d!2194903))

(declare-fun d!2194905 () Bool)

(assert (=> d!2194905 (<= (contextDepthTotal!502 lt!2519501) (zipperDepthTotal!530 lt!2519525))))

(declare-fun lt!2519676 () Unit!161608)

(declare-fun choose!53288 (List!67931 Context!12926) Unit!161608)

(assert (=> d!2194905 (= lt!2519676 (choose!53288 lt!2519525 lt!2519501))))

(declare-fun contains!20458 (List!67931 Context!12926) Bool)

(assert (=> d!2194905 (contains!20458 lt!2519525 lt!2519501)))

(assert (=> d!2194905 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!70 lt!2519525 lt!2519501) lt!2519676)))

(declare-fun bs!1871253 () Bool)

(assert (= bs!1871253 d!2194905))

(assert (=> bs!1871253 m!7741158))

(assert (=> bs!1871253 m!7741142))

(declare-fun m!7741862 () Bool)

(assert (=> bs!1871253 m!7741862))

(declare-fun m!7741864 () Bool)

(assert (=> bs!1871253 m!7741864))

(assert (=> b!7033801 d!2194905))

(declare-fun d!2194907 () Bool)

(declare-fun dynLambda!27390 (Int Context!12926) Context!12926)

(assert (=> d!2194907 (= (map!15768 lt!2519520 lambda!415028) (store ((as const (Array Context!12926 Bool)) false) (dynLambda!27390 lambda!415028 lt!2519545) true))))

(declare-fun lt!2519679 () Unit!161608)

(declare-fun choose!53289 ((InoxSet Context!12926) Context!12926 Int) Unit!161608)

(assert (=> d!2194907 (= lt!2519679 (choose!53289 lt!2519520 lt!2519545 lambda!415028))))

(assert (=> d!2194907 (= lt!2519520 (store ((as const (Array Context!12926 Bool)) false) lt!2519545 true))))

(assert (=> d!2194907 (= (lemmaMapOnSingletonSet!378 lt!2519520 lt!2519545 lambda!415028) lt!2519679)))

(declare-fun b_lambda!266627 () Bool)

(assert (=> (not b_lambda!266627) (not d!2194907)))

(declare-fun bs!1871254 () Bool)

(assert (= bs!1871254 d!2194907))

(declare-fun m!7741866 () Bool)

(assert (=> bs!1871254 m!7741866))

(assert (=> bs!1871254 m!7741152))

(assert (=> bs!1871254 m!7741160))

(assert (=> bs!1871254 m!7741866))

(declare-fun m!7741868 () Bool)

(assert (=> bs!1871254 m!7741868))

(declare-fun m!7741870 () Bool)

(assert (=> bs!1871254 m!7741870))

(assert (=> b!7033801 d!2194907))

(declare-fun d!2194909 () Bool)

(declare-fun e!4228619 () Bool)

(assert (=> d!2194909 e!4228619))

(declare-fun res!2871489 () Bool)

(assert (=> d!2194909 (=> (not res!2871489) (not e!4228619))))

(declare-fun lt!2519680 () List!67931)

(assert (=> d!2194909 (= res!2871489 (noDuplicate!2629 lt!2519680))))

(assert (=> d!2194909 (= lt!2519680 (choose!53285 z1!570))))

(assert (=> d!2194909 (= (toList!10810 z1!570) lt!2519680)))

(declare-fun b!7034146 () Bool)

(assert (=> b!7034146 (= e!4228619 (= (content!13539 lt!2519680) z1!570))))

(assert (= (and d!2194909 res!2871489) b!7034146))

(declare-fun m!7741872 () Bool)

(assert (=> d!2194909 m!7741872))

(declare-fun m!7741874 () Bool)

(assert (=> d!2194909 m!7741874))

(declare-fun m!7741876 () Bool)

(assert (=> b!7034146 m!7741876))

(assert (=> b!7033801 d!2194909))

(declare-fun d!2194911 () Bool)

(declare-fun c!1308555 () Bool)

(assert (=> d!2194911 (= c!1308555 (and ((_ is ElementMatch!17467) (h!74253 (exprs!6963 lt!2519501))) (= (c!1308424 (h!74253 (exprs!6963 lt!2519501))) (h!74254 s!7408))))))

(declare-fun e!4228637 () (InoxSet Context!12926))

(assert (=> d!2194911 (= (derivationStepZipperDown!2131 (h!74253 (exprs!6963 lt!2519501)) lt!2519527 (h!74254 s!7408)) e!4228637)))

(declare-fun call!638773 () List!67929)

(declare-fun c!1308554 () Bool)

(declare-fun bm!638766 () Bool)

(declare-fun c!1308552 () Bool)

(declare-fun $colon$colon!2575 (List!67929 Regex!17467) List!67929)

(assert (=> bm!638766 (= call!638773 ($colon$colon!2575 (exprs!6963 lt!2519527) (ite (or c!1308552 c!1308554) (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (h!74253 (exprs!6963 lt!2519501)))))))

(declare-fun b!7034169 () Bool)

(declare-fun e!4228636 () (InoxSet Context!12926))

(declare-fun call!638776 () (InoxSet Context!12926))

(assert (=> b!7034169 (= e!4228636 call!638776)))

(declare-fun b!7034170 () Bool)

(declare-fun e!4228634 () (InoxSet Context!12926))

(assert (=> b!7034170 (= e!4228637 e!4228634)))

(declare-fun c!1308551 () Bool)

(assert (=> b!7034170 (= c!1308551 ((_ is Union!17467) (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun bm!638767 () Bool)

(declare-fun call!638772 () (InoxSet Context!12926))

(declare-fun call!638775 () (InoxSet Context!12926))

(assert (=> bm!638767 (= call!638772 call!638775)))

(declare-fun call!638771 () List!67929)

(declare-fun bm!638768 () Bool)

(assert (=> bm!638768 (= call!638775 (derivationStepZipperDown!2131 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501)))))) (ite (or c!1308551 c!1308552) lt!2519527 (Context!12927 call!638771)) (h!74254 s!7408)))))

(declare-fun b!7034171 () Bool)

(assert (=> b!7034171 (= e!4228637 (store ((as const (Array Context!12926 Bool)) false) lt!2519527 true))))

(declare-fun b!7034172 () Bool)

(declare-fun e!4228632 () Bool)

(assert (=> b!7034172 (= c!1308552 e!4228632)))

(declare-fun res!2871492 () Bool)

(assert (=> b!7034172 (=> (not res!2871492) (not e!4228632))))

(assert (=> b!7034172 (= res!2871492 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun e!4228633 () (InoxSet Context!12926))

(assert (=> b!7034172 (= e!4228634 e!4228633)))

(declare-fun b!7034173 () Bool)

(declare-fun call!638774 () (InoxSet Context!12926))

(assert (=> b!7034173 (= e!4228633 ((_ map or) call!638774 call!638772))))

(declare-fun bm!638769 () Bool)

(assert (=> bm!638769 (= call!638774 (derivationStepZipperDown!2131 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501)))) (ite c!1308551 lt!2519527 (Context!12927 call!638773)) (h!74254 s!7408)))))

(declare-fun b!7034174 () Bool)

(declare-fun e!4228635 () (InoxSet Context!12926))

(assert (=> b!7034174 (= e!4228635 ((as const (Array Context!12926 Bool)) false))))

(declare-fun bm!638770 () Bool)

(assert (=> bm!638770 (= call!638776 call!638772)))

(declare-fun bm!638771 () Bool)

(assert (=> bm!638771 (= call!638771 call!638773)))

(declare-fun b!7034175 () Bool)

(assert (=> b!7034175 (= e!4228635 call!638776)))

(declare-fun b!7034176 () Bool)

(assert (=> b!7034176 (= e!4228632 (nullable!7178 (regOne!35446 (h!74253 (exprs!6963 lt!2519501)))))))

(declare-fun b!7034177 () Bool)

(assert (=> b!7034177 (= e!4228634 ((_ map or) call!638775 call!638774))))

(declare-fun b!7034178 () Bool)

(declare-fun c!1308553 () Bool)

(assert (=> b!7034178 (= c!1308553 ((_ is Star!17467) (h!74253 (exprs!6963 lt!2519501))))))

(assert (=> b!7034178 (= e!4228636 e!4228635)))

(declare-fun b!7034179 () Bool)

(assert (=> b!7034179 (= e!4228633 e!4228636)))

(assert (=> b!7034179 (= c!1308554 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519501))))))

(assert (= (and d!2194911 c!1308555) b!7034171))

(assert (= (and d!2194911 (not c!1308555)) b!7034170))

(assert (= (and b!7034170 c!1308551) b!7034177))

(assert (= (and b!7034170 (not c!1308551)) b!7034172))

(assert (= (and b!7034172 res!2871492) b!7034176))

(assert (= (and b!7034172 c!1308552) b!7034173))

(assert (= (and b!7034172 (not c!1308552)) b!7034179))

(assert (= (and b!7034179 c!1308554) b!7034169))

(assert (= (and b!7034179 (not c!1308554)) b!7034178))

(assert (= (and b!7034178 c!1308553) b!7034175))

(assert (= (and b!7034178 (not c!1308553)) b!7034174))

(assert (= (or b!7034169 b!7034175) bm!638771))

(assert (= (or b!7034169 b!7034175) bm!638770))

(assert (= (or b!7034173 bm!638770) bm!638767))

(assert (= (or b!7034173 bm!638771) bm!638766))

(assert (= (or b!7034177 bm!638767) bm!638768))

(assert (= (or b!7034177 b!7034173) bm!638769))

(declare-fun m!7741878 () Bool)

(assert (=> bm!638769 m!7741878))

(declare-fun m!7741880 () Bool)

(assert (=> bm!638766 m!7741880))

(declare-fun m!7741882 () Bool)

(assert (=> bm!638768 m!7741882))

(declare-fun m!7741884 () Bool)

(assert (=> b!7034176 m!7741884))

(assert (=> b!7034171 m!7741206))

(assert (=> b!7033802 d!2194911))

(assert (=> b!7033802 d!2194767))

(assert (=> b!7033802 d!2194777))

(assert (=> b!7033802 d!2194893))

(declare-fun d!2194913 () Bool)

(declare-fun e!4228639 () Bool)

(assert (=> d!2194913 e!4228639))

(declare-fun res!2871493 () Bool)

(assert (=> d!2194913 (=> (not res!2871493) (not e!4228639))))

(declare-fun lt!2519681 () List!67929)

(assert (=> d!2194913 (= res!2871493 (= (content!13540 lt!2519681) ((_ map or) (content!13540 (exprs!6963 lt!2519501)) (content!13540 (exprs!6963 ct2!306)))))))

(declare-fun e!4228638 () List!67929)

(assert (=> d!2194913 (= lt!2519681 e!4228638)))

(declare-fun c!1308556 () Bool)

(assert (=> d!2194913 (= c!1308556 ((_ is Nil!67805) (exprs!6963 lt!2519501)))))

(assert (=> d!2194913 (= (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306)) lt!2519681)))

(declare-fun b!7034183 () Bool)

(assert (=> b!7034183 (= e!4228639 (or (not (= (exprs!6963 ct2!306) Nil!67805)) (= lt!2519681 (exprs!6963 lt!2519501))))))

(declare-fun b!7034182 () Bool)

(declare-fun res!2871494 () Bool)

(assert (=> b!7034182 (=> (not res!2871494) (not e!4228639))))

(assert (=> b!7034182 (= res!2871494 (= (size!41067 lt!2519681) (+ (size!41067 (exprs!6963 lt!2519501)) (size!41067 (exprs!6963 ct2!306)))))))

(declare-fun b!7034181 () Bool)

(assert (=> b!7034181 (= e!4228638 (Cons!67805 (h!74253 (exprs!6963 lt!2519501)) (++!15514 (t!381696 (exprs!6963 lt!2519501)) (exprs!6963 ct2!306))))))

(declare-fun b!7034180 () Bool)

(assert (=> b!7034180 (= e!4228638 (exprs!6963 ct2!306))))

(assert (= (and d!2194913 c!1308556) b!7034180))

(assert (= (and d!2194913 (not c!1308556)) b!7034181))

(assert (= (and d!2194913 res!2871493) b!7034182))

(assert (= (and b!7034182 res!2871494) b!7034183))

(declare-fun m!7741886 () Bool)

(assert (=> d!2194913 m!7741886))

(declare-fun m!7741888 () Bool)

(assert (=> d!2194913 m!7741888))

(assert (=> d!2194913 m!7741832))

(declare-fun m!7741890 () Bool)

(assert (=> b!7034182 m!7741890))

(declare-fun m!7741892 () Bool)

(assert (=> b!7034182 m!7741892))

(assert (=> b!7034182 m!7741838))

(declare-fun m!7741894 () Bool)

(assert (=> b!7034181 m!7741894))

(assert (=> b!7033822 d!2194913))

(assert (=> b!7033822 d!2194833))

(declare-fun d!2194915 () Bool)

(declare-fun e!4228642 () Bool)

(assert (=> d!2194915 e!4228642))

(declare-fun res!2871497 () Bool)

(assert (=> d!2194915 (=> (not res!2871497) (not e!4228642))))

(declare-fun lt!2519684 () Context!12926)

(assert (=> d!2194915 (= res!2871497 (= lt!2519506 (dynLambda!27390 lambda!415028 lt!2519684)))))

(declare-fun choose!53290 ((InoxSet Context!12926) Int Context!12926) Context!12926)

(assert (=> d!2194915 (= lt!2519684 (choose!53290 z1!570 lambda!415028 lt!2519506))))

(assert (=> d!2194915 (select (map!15768 z1!570 lambda!415028) lt!2519506)))

(assert (=> d!2194915 (= (mapPost2!308 z1!570 lambda!415028 lt!2519506) lt!2519684)))

(declare-fun b!7034187 () Bool)

(assert (=> b!7034187 (= e!4228642 (select z1!570 lt!2519684))))

(assert (= (and d!2194915 res!2871497) b!7034187))

(declare-fun b_lambda!266629 () Bool)

(assert (=> (not b_lambda!266629) (not d!2194915)))

(declare-fun m!7741896 () Bool)

(assert (=> d!2194915 m!7741896))

(declare-fun m!7741898 () Bool)

(assert (=> d!2194915 m!7741898))

(declare-fun m!7741900 () Bool)

(assert (=> d!2194915 m!7741900))

(declare-fun m!7741902 () Bool)

(assert (=> d!2194915 m!7741902))

(declare-fun m!7741904 () Bool)

(assert (=> b!7034187 m!7741904))

(assert (=> b!7033822 d!2194915))

(declare-fun bs!1871255 () Bool)

(declare-fun d!2194917 () Bool)

(assert (= bs!1871255 (and d!2194917 b!7033822)))

(declare-fun lambda!415077 () Int)

(assert (=> bs!1871255 (not (= lambda!415077 lambda!415029))))

(declare-fun bs!1871256 () Bool)

(assert (= bs!1871256 (and d!2194917 d!2194789)))

(assert (=> bs!1871256 (not (= lambda!415077 lambda!415065))))

(declare-fun bs!1871257 () Bool)

(assert (= bs!1871257 (and d!2194917 d!2194829)))

(assert (=> bs!1871257 (= lambda!415077 lambda!415068)))

(declare-fun bs!1871258 () Bool)

(assert (= bs!1871258 (and d!2194917 d!2194853)))

(assert (=> bs!1871258 (not (= lambda!415077 lambda!415070))))

(assert (=> d!2194917 (= (nullableContext!87 lt!2519545) (forall!16381 (exprs!6963 lt!2519545) lambda!415077))))

(declare-fun bs!1871259 () Bool)

(assert (= bs!1871259 d!2194917))

(declare-fun m!7741906 () Bool)

(assert (=> bs!1871259 m!7741906))

(assert (=> b!7033803 d!2194917))

(declare-fun d!2194919 () Bool)

(declare-fun e!4228643 () Bool)

(assert (=> d!2194919 e!4228643))

(declare-fun res!2871498 () Bool)

(assert (=> d!2194919 (=> (not res!2871498) (not e!4228643))))

(declare-fun lt!2519685 () Context!12926)

(assert (=> d!2194919 (= res!2871498 (dynLambda!27389 lambda!415031 lt!2519685))))

(assert (=> d!2194919 (= lt!2519685 (getWitness!1476 (toList!10810 lt!2519520) lambda!415031))))

(assert (=> d!2194919 (exists!3397 lt!2519520 lambda!415031)))

(assert (=> d!2194919 (= (getWitness!1474 lt!2519520 lambda!415031) lt!2519685)))

(declare-fun b!7034188 () Bool)

(assert (=> b!7034188 (= e!4228643 (select lt!2519520 lt!2519685))))

(assert (= (and d!2194919 res!2871498) b!7034188))

(declare-fun b_lambda!266631 () Bool)

(assert (=> (not b_lambda!266631) (not d!2194919)))

(declare-fun m!7741908 () Bool)

(assert (=> d!2194919 m!7741908))

(assert (=> d!2194919 m!7741456))

(assert (=> d!2194919 m!7741456))

(declare-fun m!7741910 () Bool)

(assert (=> d!2194919 m!7741910))

(assert (=> d!2194919 m!7741136))

(declare-fun m!7741912 () Bool)

(assert (=> b!7034188 m!7741912))

(assert (=> b!7033803 d!2194919))

(declare-fun d!2194921 () Bool)

(assert (=> d!2194921 (= (isEmpty!39549 (exprs!6963 lt!2519501)) ((_ is Nil!67805) (exprs!6963 lt!2519501)))))

(assert (=> b!7033805 d!2194921))

(declare-fun b!7034193 () Bool)

(declare-fun e!4228646 () Bool)

(declare-fun tp!1936601 () Bool)

(declare-fun tp!1936602 () Bool)

(assert (=> b!7034193 (= e!4228646 (and tp!1936601 tp!1936602))))

(assert (=> b!7033793 (= tp!1936578 e!4228646)))

(assert (= (and b!7033793 ((_ is Cons!67805) (exprs!6963 setElem!49184))) b!7034193))

(declare-fun condSetEmpty!49190 () Bool)

(assert (=> setNonEmpty!49184 (= condSetEmpty!49190 (= setRest!49184 ((as const (Array Context!12926 Bool)) false)))))

(declare-fun setRes!49190 () Bool)

(assert (=> setNonEmpty!49184 (= tp!1936576 setRes!49190)))

(declare-fun setIsEmpty!49190 () Bool)

(assert (=> setIsEmpty!49190 setRes!49190))

(declare-fun tp!1936607 () Bool)

(declare-fun e!4228649 () Bool)

(declare-fun setElem!49190 () Context!12926)

(declare-fun setNonEmpty!49190 () Bool)

(assert (=> setNonEmpty!49190 (= setRes!49190 (and tp!1936607 (inv!86526 setElem!49190) e!4228649))))

(declare-fun setRest!49190 () (InoxSet Context!12926))

(assert (=> setNonEmpty!49190 (= setRest!49184 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) setElem!49190 true) setRest!49190))))

(declare-fun b!7034198 () Bool)

(declare-fun tp!1936608 () Bool)

(assert (=> b!7034198 (= e!4228649 tp!1936608)))

(assert (= (and setNonEmpty!49184 condSetEmpty!49190) setIsEmpty!49190))

(assert (= (and setNonEmpty!49184 (not condSetEmpty!49190)) setNonEmpty!49190))

(assert (= setNonEmpty!49190 b!7034198))

(declare-fun m!7741914 () Bool)

(assert (=> setNonEmpty!49190 m!7741914))

(declare-fun b!7034199 () Bool)

(declare-fun e!4228650 () Bool)

(declare-fun tp!1936609 () Bool)

(declare-fun tp!1936610 () Bool)

(assert (=> b!7034199 (= e!4228650 (and tp!1936609 tp!1936610))))

(assert (=> b!7033812 (= tp!1936579 e!4228650)))

(assert (= (and b!7033812 ((_ is Cons!67805) (exprs!6963 ct2!306))) b!7034199))

(declare-fun b!7034204 () Bool)

(declare-fun e!4228653 () Bool)

(declare-fun tp!1936613 () Bool)

(assert (=> b!7034204 (= e!4228653 (and tp_is_empty!44159 tp!1936613))))

(assert (=> b!7033811 (= tp!1936577 e!4228653)))

(assert (= (and b!7033811 ((_ is Cons!67806) (t!381697 s!7408))) b!7034204))

(declare-fun b_lambda!266633 () Bool)

(assert (= b_lambda!266625 (or b!7033797 b_lambda!266633)))

(declare-fun bs!1871260 () Bool)

(declare-fun d!2194923 () Bool)

(assert (= bs!1871260 (and d!2194923 b!7033797)))

(assert (=> bs!1871260 (= (dynLambda!27387 lambda!415030 lt!2519545) (derivationStepZipperUp!2077 lt!2519545 (h!74254 s!7408)))))

(assert (=> bs!1871260 m!7741150))

(assert (=> d!2194899 d!2194923))

(declare-fun b_lambda!266635 () Bool)

(assert (= b_lambda!266627 (or b!7033822 b_lambda!266635)))

(declare-fun bs!1871261 () Bool)

(declare-fun d!2194925 () Bool)

(assert (= bs!1871261 (and d!2194925 b!7033822)))

(declare-fun lt!2519686 () Unit!161608)

(assert (=> bs!1871261 (= lt!2519686 (lemmaConcatPreservesForall!788 (exprs!6963 lt!2519545) (exprs!6963 ct2!306) lambda!415029))))

(assert (=> bs!1871261 (= (dynLambda!27390 lambda!415028 lt!2519545) (Context!12927 (++!15514 (exprs!6963 lt!2519545) (exprs!6963 ct2!306))))))

(declare-fun m!7741916 () Bool)

(assert (=> bs!1871261 m!7741916))

(declare-fun m!7741918 () Bool)

(assert (=> bs!1871261 m!7741918))

(assert (=> d!2194907 d!2194925))

(declare-fun b_lambda!266637 () Bool)

(assert (= b_lambda!266623 (or b!7033798 b_lambda!266637)))

(declare-fun bs!1871262 () Bool)

(declare-fun d!2194927 () Bool)

(assert (= bs!1871262 (and d!2194927 b!7033798)))

(assert (=> bs!1871262 (= (dynLambda!27389 lambda!415027 lt!2519655) (matchZipper!3007 (store ((as const (Array Context!12926 Bool)) false) lt!2519655 true) s!7408))))

(declare-fun m!7741920 () Bool)

(assert (=> bs!1871262 m!7741920))

(assert (=> bs!1871262 m!7741920))

(declare-fun m!7741922 () Bool)

(assert (=> bs!1871262 m!7741922))

(assert (=> d!2194875 d!2194927))

(declare-fun b_lambda!266639 () Bool)

(assert (= b_lambda!266607 (or b!7033797 b_lambda!266639)))

(declare-fun bs!1871263 () Bool)

(declare-fun d!2194929 () Bool)

(assert (= bs!1871263 (and d!2194929 b!7033797)))

(assert (=> bs!1871263 (= (dynLambda!27387 lambda!415030 lt!2519536) (derivationStepZipperUp!2077 lt!2519536 (h!74254 s!7408)))))

(assert (=> bs!1871263 m!7741224))

(assert (=> d!2194843 d!2194929))

(declare-fun b_lambda!266641 () Bool)

(assert (= b_lambda!266603 (or b!7033797 b_lambda!266641)))

(declare-fun bs!1871264 () Bool)

(declare-fun d!2194931 () Bool)

(assert (= bs!1871264 (and d!2194931 b!7033797)))

(assert (=> bs!1871264 (= (dynLambda!27387 lambda!415030 lt!2519527) (derivationStepZipperUp!2077 lt!2519527 (h!74254 s!7408)))))

(assert (=> bs!1871264 m!7741190))

(assert (=> d!2194781 d!2194931))

(declare-fun b_lambda!266643 () Bool)

(assert (= b_lambda!266629 (or b!7033822 b_lambda!266643)))

(declare-fun bs!1871265 () Bool)

(declare-fun d!2194933 () Bool)

(assert (= bs!1871265 (and d!2194933 b!7033822)))

(declare-fun lt!2519687 () Unit!161608)

(assert (=> bs!1871265 (= lt!2519687 (lemmaConcatPreservesForall!788 (exprs!6963 lt!2519684) (exprs!6963 ct2!306) lambda!415029))))

(assert (=> bs!1871265 (= (dynLambda!27390 lambda!415028 lt!2519684) (Context!12927 (++!15514 (exprs!6963 lt!2519684) (exprs!6963 ct2!306))))))

(declare-fun m!7741924 () Bool)

(assert (=> bs!1871265 m!7741924))

(declare-fun m!7741926 () Bool)

(assert (=> bs!1871265 m!7741926))

(assert (=> d!2194915 d!2194933))

(declare-fun b_lambda!266645 () Bool)

(assert (= b_lambda!266631 (or b!7033820 b_lambda!266645)))

(declare-fun bs!1871266 () Bool)

(declare-fun d!2194935 () Bool)

(assert (= bs!1871266 (and d!2194935 b!7033820)))

(assert (=> bs!1871266 (= (dynLambda!27389 lambda!415031 lt!2519685) (nullableContext!87 lt!2519685))))

(declare-fun m!7741928 () Bool)

(assert (=> bs!1871266 m!7741928))

(assert (=> d!2194919 d!2194935))

(check-sat (not bs!1871260) (not b!7034096) (not d!2194891) (not b!7033982) (not d!2194907) (not d!2194791) (not bs!1871261) (not d!2194747) (not d!2194841) (not b!7034145) tp_is_empty!44159 (not d!2194895) (not b!7034060) (not b!7034029) (not b_lambda!266641) (not d!2194783) (not bm!638752) (not d!2194779) (not d!2194881) (not d!2194767) (not b!7034103) (not b!7034134) (not b!7034139) (not bs!1871266) (not bs!1871264) (not d!2194831) (not bm!638769) (not d!2194893) (not b!7033961) (not bm!638766) (not d!2194851) (not b!7034028) (not d!2194797) (not b!7034108) (not bm!638768) (not d!2194871) (not d!2194789) (not b!7034182) (not d!2194855) (not d!2194875) (not b!7034024) (not d!2194811) (not b!7034123) (not d!2194847) (not d!2194899) (not b!7034031) (not b_lambda!266633) (not b!7034141) (not d!2194919) (not b!7034181) (not b!7034204) (not b!7034067) (not d!2194759) (not d!2194845) (not b!7034105) (not d!2194879) (not d!2194757) (not b!7034109) (not d!2194829) (not b_lambda!266639) (not d!2194765) (not b!7034198) (not b!7034193) (not d!2194833) (not bs!1871265) (not bm!638753) (not d!2194853) (not d!2194769) (not d!2194781) (not b_lambda!266635) (not d!2194905) (not b_lambda!266637) (not b!7034066) (not b!7033955) (not d!2194873) (not d!2194885) (not b!7034137) (not d!2194877) (not d!2194785) (not b!7033981) (not d!2194917) (not bs!1871262) (not b!7034030) (not b!7033907) (not b!7034146) (not b_lambda!266645) (not b!7034176) (not d!2194843) (not b!7033903) (not b!7034135) (not b!7034025) (not d!2194909) (not b_lambda!266643) (not b!7034062) (not b!7034110) (not b!7033908) (not b!7033959) (not bs!1871263) (not b!7034104) (not b!7034026) (not d!2194763) (not b!7034199) (not bm!638737) (not b!7034111) (not b!7034097) (not setNonEmpty!49190) (not b!7034112) (not b!7034021) (not b!7034117) (not d!2194915) (not b!7034068) (not d!2194795) (not b!7034059) (not d!2194913) (not d!2194835) (not d!2194883) (not b!7033904) (not b!7033960) (not d!2194751))
(check-sat)
(get-model)

(declare-fun d!2194937 () Bool)

(declare-fun c!1308559 () Bool)

(assert (=> d!2194937 (= c!1308559 ((_ is Nil!67805) lt!2519681))))

(declare-fun e!4228656 () (InoxSet Regex!17467))

(assert (=> d!2194937 (= (content!13540 lt!2519681) e!4228656)))

(declare-fun b!7034209 () Bool)

(assert (=> b!7034209 (= e!4228656 ((as const (Array Regex!17467 Bool)) false))))

(declare-fun b!7034210 () Bool)

(assert (=> b!7034210 (= e!4228656 ((_ map or) (store ((as const (Array Regex!17467 Bool)) false) (h!74253 lt!2519681) true) (content!13540 (t!381696 lt!2519681))))))

(assert (= (and d!2194937 c!1308559) b!7034209))

(assert (= (and d!2194937 (not c!1308559)) b!7034210))

(declare-fun m!7741930 () Bool)

(assert (=> b!7034210 m!7741930))

(declare-fun m!7741932 () Bool)

(assert (=> b!7034210 m!7741932))

(assert (=> d!2194913 d!2194937))

(declare-fun d!2194939 () Bool)

(declare-fun c!1308560 () Bool)

(assert (=> d!2194939 (= c!1308560 ((_ is Nil!67805) (exprs!6963 lt!2519501)))))

(declare-fun e!4228657 () (InoxSet Regex!17467))

(assert (=> d!2194939 (= (content!13540 (exprs!6963 lt!2519501)) e!4228657)))

(declare-fun b!7034211 () Bool)

(assert (=> b!7034211 (= e!4228657 ((as const (Array Regex!17467 Bool)) false))))

(declare-fun b!7034212 () Bool)

(assert (=> b!7034212 (= e!4228657 ((_ map or) (store ((as const (Array Regex!17467 Bool)) false) (h!74253 (exprs!6963 lt!2519501)) true) (content!13540 (t!381696 (exprs!6963 lt!2519501)))))))

(assert (= (and d!2194939 c!1308560) b!7034211))

(assert (= (and d!2194939 (not c!1308560)) b!7034212))

(declare-fun m!7741934 () Bool)

(assert (=> b!7034212 m!7741934))

(declare-fun m!7741936 () Bool)

(assert (=> b!7034212 m!7741936))

(assert (=> d!2194913 d!2194939))

(declare-fun d!2194941 () Bool)

(declare-fun c!1308561 () Bool)

(assert (=> d!2194941 (= c!1308561 ((_ is Nil!67805) (exprs!6963 ct2!306)))))

(declare-fun e!4228658 () (InoxSet Regex!17467))

(assert (=> d!2194941 (= (content!13540 (exprs!6963 ct2!306)) e!4228658)))

(declare-fun b!7034213 () Bool)

(assert (=> b!7034213 (= e!4228658 ((as const (Array Regex!17467 Bool)) false))))

(declare-fun b!7034214 () Bool)

(assert (=> b!7034214 (= e!4228658 ((_ map or) (store ((as const (Array Regex!17467 Bool)) false) (h!74253 (exprs!6963 ct2!306)) true) (content!13540 (t!381696 (exprs!6963 ct2!306)))))))

(assert (= (and d!2194941 c!1308561) b!7034213))

(assert (= (and d!2194941 (not c!1308561)) b!7034214))

(declare-fun m!7741938 () Bool)

(assert (=> b!7034214 m!7741938))

(declare-fun m!7741940 () Bool)

(assert (=> b!7034214 m!7741940))

(assert (=> d!2194913 d!2194941))

(declare-fun d!2194943 () Bool)

(declare-fun c!1308562 () Bool)

(assert (=> d!2194943 (= c!1308562 (isEmpty!39548 s!7408))))

(declare-fun e!4228659 () Bool)

(assert (=> d!2194943 (= (matchZipper!3007 lt!2519514 s!7408) e!4228659)))

(declare-fun b!7034215 () Bool)

(assert (=> b!7034215 (= e!4228659 (nullableZipper!2581 lt!2519514))))

(declare-fun b!7034216 () Bool)

(assert (=> b!7034216 (= e!4228659 (matchZipper!3007 (derivationStepZipper!2923 lt!2519514 (head!14266 s!7408)) (tail!13557 s!7408)))))

(assert (= (and d!2194943 c!1308562) b!7034215))

(assert (= (and d!2194943 (not c!1308562)) b!7034216))

(assert (=> d!2194943 m!7741504))

(assert (=> b!7034215 m!7741412))

(assert (=> b!7034216 m!7741508))

(assert (=> b!7034216 m!7741508))

(declare-fun m!7741942 () Bool)

(assert (=> b!7034216 m!7741942))

(assert (=> b!7034216 m!7741512))

(assert (=> b!7034216 m!7741942))

(assert (=> b!7034216 m!7741512))

(declare-fun m!7741944 () Bool)

(assert (=> b!7034216 m!7741944))

(assert (=> b!7034026 d!2194943))

(declare-fun d!2194945 () Bool)

(declare-fun c!1308565 () Bool)

(assert (=> d!2194945 (= c!1308565 ((_ is Nil!67807) lt!2519658))))

(declare-fun e!4228662 () (InoxSet Context!12926))

(assert (=> d!2194945 (= (content!13539 lt!2519658) e!4228662)))

(declare-fun b!7034221 () Bool)

(assert (=> b!7034221 (= e!4228662 ((as const (Array Context!12926 Bool)) false))))

(declare-fun b!7034222 () Bool)

(assert (=> b!7034222 (= e!4228662 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) (h!74255 lt!2519658) true) (content!13539 (t!381698 lt!2519658))))))

(assert (= (and d!2194945 c!1308565) b!7034221))

(assert (= (and d!2194945 (not c!1308565)) b!7034222))

(declare-fun m!7741946 () Bool)

(assert (=> b!7034222 m!7741946))

(declare-fun m!7741948 () Bool)

(assert (=> b!7034222 m!7741948))

(assert (=> b!7034103 d!2194945))

(assert (=> d!2194791 d!2194837))

(declare-fun d!2194947 () Bool)

(assert (=> d!2194947 (= (flatMap!2414 lt!2519505 lambda!415057) (choose!53277 lt!2519505 lambda!415057))))

(declare-fun bs!1871267 () Bool)

(assert (= bs!1871267 d!2194947))

(declare-fun m!7741950 () Bool)

(assert (=> bs!1871267 m!7741950))

(assert (=> d!2194769 d!2194947))

(declare-fun d!2194949 () Bool)

(assert (=> d!2194949 (= (isEmpty!39548 s!7408) ((_ is Nil!67806) s!7408))))

(assert (=> d!2194783 d!2194949))

(assert (=> d!2194781 d!2194779))

(declare-fun d!2194951 () Bool)

(assert (=> d!2194951 (= (flatMap!2414 lt!2519505 lambda!415030) (dynLambda!27387 lambda!415030 lt!2519527))))

(assert (=> d!2194951 true))

(declare-fun _$13!4484 () Unit!161608)

(assert (=> d!2194951 (= (choose!53278 lt!2519505 lt!2519527 lambda!415030) _$13!4484)))

(declare-fun b_lambda!266647 () Bool)

(assert (=> (not b_lambda!266647) (not d!2194951)))

(declare-fun bs!1871268 () Bool)

(assert (= bs!1871268 d!2194951))

(assert (=> bs!1871268 m!7741210))

(assert (=> bs!1871268 m!7741500))

(assert (=> d!2194781 d!2194951))

(assert (=> d!2194907 d!2194895))

(declare-fun d!2194953 () Bool)

(assert (=> d!2194953 (= (map!15768 lt!2519520 lambda!415028) (store ((as const (Array Context!12926 Bool)) false) (dynLambda!27390 lambda!415028 lt!2519545) true))))

(assert (=> d!2194953 true))

(declare-fun _$12!2356 () Unit!161608)

(assert (=> d!2194953 (= (choose!53289 lt!2519520 lt!2519545 lambda!415028) _$12!2356)))

(declare-fun b_lambda!266649 () Bool)

(assert (=> (not b_lambda!266649) (not d!2194953)))

(declare-fun bs!1871269 () Bool)

(assert (= bs!1871269 d!2194953))

(assert (=> bs!1871269 m!7741160))

(assert (=> bs!1871269 m!7741866))

(assert (=> bs!1871269 m!7741866))

(assert (=> bs!1871269 m!7741868))

(assert (=> d!2194907 d!2194953))

(declare-fun bs!1871270 () Bool)

(declare-fun d!2194955 () Bool)

(assert (= bs!1871270 (and d!2194955 b!7033822)))

(declare-fun lambda!415078 () Int)

(assert (=> bs!1871270 (= lambda!415078 lambda!415028)))

(declare-fun bs!1871271 () Bool)

(assert (= bs!1871271 (and d!2194955 d!2194785)))

(assert (=> bs!1871271 (= lambda!415078 lambda!415062)))

(assert (=> d!2194955 true))

(assert (=> d!2194955 (= (appendTo!588 lt!2519520 ct2!306) (map!15768 lt!2519520 lambda!415078))))

(declare-fun bs!1871272 () Bool)

(assert (= bs!1871272 d!2194955))

(declare-fun m!7741952 () Bool)

(assert (=> bs!1871272 m!7741952))

(assert (=> d!2194797 d!2194955))

(declare-fun d!2194957 () Bool)

(assert (=> d!2194957 (= (isDefined!13573 (findConcatSeparationZippers!388 lt!2519520 (store ((as const (Array Context!12926 Bool)) false) ct2!306 true) Nil!67806 s!7408 s!7408)) (not (isEmpty!39550 (findConcatSeparationZippers!388 lt!2519520 (store ((as const (Array Context!12926 Bool)) false) ct2!306 true) Nil!67806 s!7408 s!7408))))))

(declare-fun bs!1871273 () Bool)

(assert (= bs!1871273 d!2194957))

(assert (=> bs!1871273 m!7741586))

(declare-fun m!7741954 () Bool)

(assert (=> bs!1871273 m!7741954))

(assert (=> d!2194797 d!2194957))

(declare-fun d!2194959 () Bool)

(assert (=> d!2194959 (isDefined!13573 (findConcatSeparationZippers!388 lt!2519520 (store ((as const (Array Context!12926 Bool)) false) ct2!306 true) Nil!67806 s!7408 s!7408))))

(assert (=> d!2194959 true))

(declare-fun _$50!575 () Unit!161608)

(assert (=> d!2194959 (= (choose!53279 lt!2519520 ct2!306 s!7408) _$50!575)))

(declare-fun bs!1871274 () Bool)

(assert (= bs!1871274 d!2194959))

(assert (=> bs!1871274 m!7741194))

(assert (=> bs!1871274 m!7741194))

(assert (=> bs!1871274 m!7741586))

(assert (=> bs!1871274 m!7741586))

(assert (=> bs!1871274 m!7741594))

(assert (=> d!2194797 d!2194959))

(declare-fun d!2194961 () Bool)

(declare-fun c!1308566 () Bool)

(assert (=> d!2194961 (= c!1308566 (isEmpty!39548 s!7408))))

(declare-fun e!4228663 () Bool)

(assert (=> d!2194961 (= (matchZipper!3007 (appendTo!588 lt!2519520 ct2!306) s!7408) e!4228663)))

(declare-fun b!7034223 () Bool)

(assert (=> b!7034223 (= e!4228663 (nullableZipper!2581 (appendTo!588 lt!2519520 ct2!306)))))

(declare-fun b!7034224 () Bool)

(assert (=> b!7034224 (= e!4228663 (matchZipper!3007 (derivationStepZipper!2923 (appendTo!588 lt!2519520 ct2!306) (head!14266 s!7408)) (tail!13557 s!7408)))))

(assert (= (and d!2194961 c!1308566) b!7034223))

(assert (= (and d!2194961 (not c!1308566)) b!7034224))

(assert (=> d!2194961 m!7741504))

(assert (=> b!7034223 m!7741582))

(declare-fun m!7741956 () Bool)

(assert (=> b!7034223 m!7741956))

(assert (=> b!7034224 m!7741508))

(assert (=> b!7034224 m!7741582))

(assert (=> b!7034224 m!7741508))

(declare-fun m!7741958 () Bool)

(assert (=> b!7034224 m!7741958))

(assert (=> b!7034224 m!7741512))

(assert (=> b!7034224 m!7741958))

(assert (=> b!7034224 m!7741512))

(declare-fun m!7741960 () Bool)

(assert (=> b!7034224 m!7741960))

(assert (=> d!2194797 d!2194961))

(declare-fun b!7034225 () Bool)

(declare-fun res!2871503 () Bool)

(declare-fun e!4228668 () Bool)

(assert (=> b!7034225 (=> (not res!2871503) (not e!4228668))))

(declare-fun lt!2519690 () Option!16872)

(assert (=> b!7034225 (= res!2871503 (matchZipper!3007 (store ((as const (Array Context!12926 Bool)) false) ct2!306 true) (_2!37343 (get!23756 lt!2519690))))))

(declare-fun b!7034226 () Bool)

(declare-fun e!4228665 () Option!16872)

(assert (=> b!7034226 (= e!4228665 None!16871)))

(declare-fun b!7034227 () Bool)

(declare-fun e!4228664 () Option!16872)

(assert (=> b!7034227 (= e!4228664 e!4228665)))

(declare-fun c!1308567 () Bool)

(assert (=> b!7034227 (= c!1308567 ((_ is Nil!67806) s!7408))))

(declare-fun b!7034228 () Bool)

(declare-fun lt!2519688 () Unit!161608)

(declare-fun lt!2519689 () Unit!161608)

(assert (=> b!7034228 (= lt!2519688 lt!2519689)))

(assert (=> b!7034228 (= (++!15515 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (t!381697 s!7408)) s!7408)))

(assert (=> b!7034228 (= lt!2519689 (lemmaMoveElementToOtherListKeepsConcatEq!2924 Nil!67806 (h!74254 s!7408) (t!381697 s!7408) s!7408))))

(assert (=> b!7034228 (= e!4228665 (findConcatSeparationZippers!388 lt!2519520 (store ((as const (Array Context!12926 Bool)) false) ct2!306 true) (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (t!381697 s!7408) s!7408))))

(declare-fun b!7034229 () Bool)

(declare-fun e!4228667 () Bool)

(assert (=> b!7034229 (= e!4228667 (not (isDefined!13573 lt!2519690)))))

(declare-fun b!7034230 () Bool)

(declare-fun e!4228666 () Bool)

(assert (=> b!7034230 (= e!4228666 (matchZipper!3007 (store ((as const (Array Context!12926 Bool)) false) ct2!306 true) s!7408))))

(declare-fun d!2194963 () Bool)

(assert (=> d!2194963 e!4228667))

(declare-fun res!2871499 () Bool)

(assert (=> d!2194963 (=> res!2871499 e!4228667)))

(assert (=> d!2194963 (= res!2871499 e!4228668)))

(declare-fun res!2871501 () Bool)

(assert (=> d!2194963 (=> (not res!2871501) (not e!4228668))))

(assert (=> d!2194963 (= res!2871501 (isDefined!13573 lt!2519690))))

(assert (=> d!2194963 (= lt!2519690 e!4228664)))

(declare-fun c!1308568 () Bool)

(assert (=> d!2194963 (= c!1308568 e!4228666)))

(declare-fun res!2871502 () Bool)

(assert (=> d!2194963 (=> (not res!2871502) (not e!4228666))))

(assert (=> d!2194963 (= res!2871502 (matchZipper!3007 lt!2519520 Nil!67806))))

(assert (=> d!2194963 (= (++!15515 Nil!67806 s!7408) s!7408)))

(assert (=> d!2194963 (= (findConcatSeparationZippers!388 lt!2519520 (store ((as const (Array Context!12926 Bool)) false) ct2!306 true) Nil!67806 s!7408 s!7408) lt!2519690)))

(declare-fun b!7034231 () Bool)

(assert (=> b!7034231 (= e!4228664 (Some!16871 (tuple2!68081 Nil!67806 s!7408)))))

(declare-fun b!7034232 () Bool)

(assert (=> b!7034232 (= e!4228668 (= (++!15515 (_1!37343 (get!23756 lt!2519690)) (_2!37343 (get!23756 lt!2519690))) s!7408))))

(declare-fun b!7034233 () Bool)

(declare-fun res!2871500 () Bool)

(assert (=> b!7034233 (=> (not res!2871500) (not e!4228668))))

(assert (=> b!7034233 (= res!2871500 (matchZipper!3007 lt!2519520 (_1!37343 (get!23756 lt!2519690))))))

(assert (= (and d!2194963 res!2871502) b!7034230))

(assert (= (and d!2194963 c!1308568) b!7034231))

(assert (= (and d!2194963 (not c!1308568)) b!7034227))

(assert (= (and b!7034227 c!1308567) b!7034226))

(assert (= (and b!7034227 (not c!1308567)) b!7034228))

(assert (= (and d!2194963 res!2871501) b!7034233))

(assert (= (and b!7034233 res!2871500) b!7034225))

(assert (= (and b!7034225 res!2871503) b!7034232))

(assert (= (and d!2194963 (not res!2871499)) b!7034229))

(assert (=> b!7034228 m!7741644))

(assert (=> b!7034228 m!7741644))

(assert (=> b!7034228 m!7741646))

(assert (=> b!7034228 m!7741648))

(assert (=> b!7034228 m!7741194))

(assert (=> b!7034228 m!7741644))

(declare-fun m!7741962 () Bool)

(assert (=> b!7034228 m!7741962))

(declare-fun m!7741964 () Bool)

(assert (=> b!7034233 m!7741964))

(declare-fun m!7741966 () Bool)

(assert (=> b!7034233 m!7741966))

(assert (=> b!7034225 m!7741964))

(assert (=> b!7034225 m!7741194))

(declare-fun m!7741968 () Bool)

(assert (=> b!7034225 m!7741968))

(assert (=> b!7034230 m!7741194))

(declare-fun m!7741970 () Bool)

(assert (=> b!7034230 m!7741970))

(declare-fun m!7741972 () Bool)

(assert (=> b!7034229 m!7741972))

(assert (=> b!7034232 m!7741964))

(declare-fun m!7741974 () Bool)

(assert (=> b!7034232 m!7741974))

(assert (=> d!2194963 m!7741972))

(assert (=> d!2194963 m!7741664))

(assert (=> d!2194963 m!7741666))

(assert (=> d!2194797 d!2194963))

(declare-fun d!2194965 () Bool)

(declare-fun c!1308569 () Bool)

(assert (=> d!2194965 (= c!1308569 (isEmpty!39548 (tail!13557 (_1!37343 lt!2519504))))))

(declare-fun e!4228669 () Bool)

(assert (=> d!2194965 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519520 (head!14266 (_1!37343 lt!2519504))) (tail!13557 (_1!37343 lt!2519504))) e!4228669)))

(declare-fun b!7034234 () Bool)

(assert (=> b!7034234 (= e!4228669 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519520 (head!14266 (_1!37343 lt!2519504)))))))

(declare-fun b!7034235 () Bool)

(assert (=> b!7034235 (= e!4228669 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519520 (head!14266 (_1!37343 lt!2519504))) (head!14266 (tail!13557 (_1!37343 lt!2519504)))) (tail!13557 (tail!13557 (_1!37343 lt!2519504)))))))

(assert (= (and d!2194965 c!1308569) b!7034234))

(assert (= (and d!2194965 (not c!1308569)) b!7034235))

(assert (=> d!2194965 m!7741440))

(declare-fun m!7741976 () Bool)

(assert (=> d!2194965 m!7741976))

(assert (=> b!7034234 m!7741530))

(declare-fun m!7741978 () Bool)

(assert (=> b!7034234 m!7741978))

(assert (=> b!7034235 m!7741440))

(declare-fun m!7741980 () Bool)

(assert (=> b!7034235 m!7741980))

(assert (=> b!7034235 m!7741530))

(assert (=> b!7034235 m!7741980))

(declare-fun m!7741982 () Bool)

(assert (=> b!7034235 m!7741982))

(assert (=> b!7034235 m!7741440))

(declare-fun m!7741984 () Bool)

(assert (=> b!7034235 m!7741984))

(assert (=> b!7034235 m!7741982))

(assert (=> b!7034235 m!7741984))

(declare-fun m!7741986 () Bool)

(assert (=> b!7034235 m!7741986))

(assert (=> b!7033982 d!2194965))

(declare-fun bs!1871275 () Bool)

(declare-fun d!2194967 () Bool)

(assert (= bs!1871275 (and d!2194967 b!7033797)))

(declare-fun lambda!415079 () Int)

(assert (=> bs!1871275 (= (= (head!14266 (_1!37343 lt!2519504)) (h!74254 s!7408)) (= lambda!415079 lambda!415030))))

(declare-fun bs!1871276 () Bool)

(assert (= bs!1871276 (and d!2194967 d!2194769)))

(assert (=> bs!1871276 (= (= (head!14266 (_1!37343 lt!2519504)) (h!74254 s!7408)) (= lambda!415079 lambda!415057))))

(declare-fun bs!1871277 () Bool)

(assert (= bs!1871277 (and d!2194967 d!2194845)))

(assert (=> bs!1871277 (= (= (head!14266 (_1!37343 lt!2519504)) (h!74254 s!7408)) (= lambda!415079 lambda!415069))))

(assert (=> d!2194967 true))

(assert (=> d!2194967 (= (derivationStepZipper!2923 lt!2519520 (head!14266 (_1!37343 lt!2519504))) (flatMap!2414 lt!2519520 lambda!415079))))

(declare-fun bs!1871278 () Bool)

(assert (= bs!1871278 d!2194967))

(declare-fun m!7741988 () Bool)

(assert (=> bs!1871278 m!7741988))

(assert (=> b!7033982 d!2194967))

(declare-fun d!2194969 () Bool)

(assert (=> d!2194969 (= (head!14266 (_1!37343 lt!2519504)) (h!74254 (_1!37343 lt!2519504)))))

(assert (=> b!7033982 d!2194969))

(declare-fun d!2194971 () Bool)

(assert (=> d!2194971 (= (tail!13557 (_1!37343 lt!2519504)) (t!381697 (_1!37343 lt!2519504)))))

(assert (=> b!7033982 d!2194971))

(declare-fun d!2194973 () Bool)

(declare-fun c!1308570 () Bool)

(assert (=> d!2194973 (= c!1308570 (isEmpty!39548 s!7408))))

(declare-fun e!4228670 () Bool)

(assert (=> d!2194973 (= (matchZipper!3007 (store ((as const (Array Context!12926 Bool)) false) lt!2519655 true) s!7408) e!4228670)))

(declare-fun b!7034236 () Bool)

(assert (=> b!7034236 (= e!4228670 (nullableZipper!2581 (store ((as const (Array Context!12926 Bool)) false) lt!2519655 true)))))

(declare-fun b!7034237 () Bool)

(assert (=> b!7034237 (= e!4228670 (matchZipper!3007 (derivationStepZipper!2923 (store ((as const (Array Context!12926 Bool)) false) lt!2519655 true) (head!14266 s!7408)) (tail!13557 s!7408)))))

(assert (= (and d!2194973 c!1308570) b!7034236))

(assert (= (and d!2194973 (not c!1308570)) b!7034237))

(assert (=> d!2194973 m!7741504))

(assert (=> b!7034236 m!7741920))

(declare-fun m!7741990 () Bool)

(assert (=> b!7034236 m!7741990))

(assert (=> b!7034237 m!7741508))

(assert (=> b!7034237 m!7741920))

(assert (=> b!7034237 m!7741508))

(declare-fun m!7741992 () Bool)

(assert (=> b!7034237 m!7741992))

(assert (=> b!7034237 m!7741512))

(assert (=> b!7034237 m!7741992))

(assert (=> b!7034237 m!7741512))

(declare-fun m!7741994 () Bool)

(assert (=> b!7034237 m!7741994))

(assert (=> bs!1871262 d!2194973))

(declare-fun d!2194975 () Bool)

(declare-fun res!2871508 () Bool)

(declare-fun e!4228675 () Bool)

(assert (=> d!2194975 (=> res!2871508 e!4228675)))

(assert (=> d!2194975 (= res!2871508 ((_ is Nil!67805) (exprs!6963 ct2!306)))))

(assert (=> d!2194975 (= (forall!16381 (exprs!6963 ct2!306) lambda!415065) e!4228675)))

(declare-fun b!7034242 () Bool)

(declare-fun e!4228676 () Bool)

(assert (=> b!7034242 (= e!4228675 e!4228676)))

(declare-fun res!2871509 () Bool)

(assert (=> b!7034242 (=> (not res!2871509) (not e!4228676))))

(declare-fun dynLambda!27391 (Int Regex!17467) Bool)

(assert (=> b!7034242 (= res!2871509 (dynLambda!27391 lambda!415065 (h!74253 (exprs!6963 ct2!306))))))

(declare-fun b!7034243 () Bool)

(assert (=> b!7034243 (= e!4228676 (forall!16381 (t!381696 (exprs!6963 ct2!306)) lambda!415065))))

(assert (= (and d!2194975 (not res!2871508)) b!7034242))

(assert (= (and b!7034242 res!2871509) b!7034243))

(declare-fun b_lambda!266651 () Bool)

(assert (=> (not b_lambda!266651) (not b!7034242)))

(declare-fun m!7741996 () Bool)

(assert (=> b!7034242 m!7741996))

(declare-fun m!7741998 () Bool)

(assert (=> b!7034243 m!7741998))

(assert (=> d!2194789 d!2194975))

(declare-fun bs!1871279 () Bool)

(declare-fun d!2194977 () Bool)

(assert (= bs!1871279 (and d!2194977 d!2194829)))

(declare-fun lambda!415080 () Int)

(assert (=> bs!1871279 (= lambda!415080 lambda!415068)))

(declare-fun bs!1871280 () Bool)

(assert (= bs!1871280 (and d!2194977 d!2194853)))

(assert (=> bs!1871280 (not (= lambda!415080 lambda!415070))))

(declare-fun bs!1871281 () Bool)

(assert (= bs!1871281 (and d!2194977 b!7033822)))

(assert (=> bs!1871281 (not (= lambda!415080 lambda!415029))))

(declare-fun bs!1871282 () Bool)

(assert (= bs!1871282 (and d!2194977 d!2194917)))

(assert (=> bs!1871282 (= lambda!415080 lambda!415077)))

(declare-fun bs!1871283 () Bool)

(assert (= bs!1871283 (and d!2194977 d!2194789)))

(assert (=> bs!1871283 (not (= lambda!415080 lambda!415065))))

(assert (=> d!2194977 (= (nullableContext!87 lt!2519685) (forall!16381 (exprs!6963 lt!2519685) lambda!415080))))

(declare-fun bs!1871284 () Bool)

(assert (= bs!1871284 d!2194977))

(declare-fun m!7742000 () Bool)

(assert (=> bs!1871284 m!7742000))

(assert (=> bs!1871266 d!2194977))

(declare-fun d!2194979 () Bool)

(declare-fun c!1308571 () Bool)

(assert (=> d!2194979 (= c!1308571 (isEmpty!39548 (tail!13557 s!7408)))))

(declare-fun e!4228677 () Bool)

(assert (=> d!2194979 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519543 (head!14266 s!7408)) (tail!13557 s!7408)) e!4228677)))

(declare-fun b!7034244 () Bool)

(assert (=> b!7034244 (= e!4228677 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519543 (head!14266 s!7408))))))

(declare-fun b!7034245 () Bool)

(assert (=> b!7034245 (= e!4228677 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519543 (head!14266 s!7408)) (head!14266 (tail!13557 s!7408))) (tail!13557 (tail!13557 s!7408))))))

(assert (= (and d!2194979 c!1308571) b!7034244))

(assert (= (and d!2194979 (not c!1308571)) b!7034245))

(assert (=> d!2194979 m!7741512))

(declare-fun m!7742002 () Bool)

(assert (=> d!2194979 m!7742002))

(assert (=> b!7034244 m!7741510))

(declare-fun m!7742004 () Bool)

(assert (=> b!7034244 m!7742004))

(assert (=> b!7034245 m!7741512))

(declare-fun m!7742006 () Bool)

(assert (=> b!7034245 m!7742006))

(assert (=> b!7034245 m!7741510))

(assert (=> b!7034245 m!7742006))

(declare-fun m!7742008 () Bool)

(assert (=> b!7034245 m!7742008))

(assert (=> b!7034245 m!7741512))

(declare-fun m!7742010 () Bool)

(assert (=> b!7034245 m!7742010))

(assert (=> b!7034245 m!7742008))

(assert (=> b!7034245 m!7742010))

(declare-fun m!7742012 () Bool)

(assert (=> b!7034245 m!7742012))

(assert (=> b!7033961 d!2194979))

(declare-fun bs!1871285 () Bool)

(declare-fun d!2194981 () Bool)

(assert (= bs!1871285 (and d!2194981 b!7033797)))

(declare-fun lambda!415081 () Int)

(assert (=> bs!1871285 (= (= (head!14266 s!7408) (h!74254 s!7408)) (= lambda!415081 lambda!415030))))

(declare-fun bs!1871286 () Bool)

(assert (= bs!1871286 (and d!2194981 d!2194769)))

(assert (=> bs!1871286 (= (= (head!14266 s!7408) (h!74254 s!7408)) (= lambda!415081 lambda!415057))))

(declare-fun bs!1871287 () Bool)

(assert (= bs!1871287 (and d!2194981 d!2194845)))

(assert (=> bs!1871287 (= (= (head!14266 s!7408) (h!74254 s!7408)) (= lambda!415081 lambda!415069))))

(declare-fun bs!1871288 () Bool)

(assert (= bs!1871288 (and d!2194981 d!2194967)))

(assert (=> bs!1871288 (= (= (head!14266 s!7408) (head!14266 (_1!37343 lt!2519504))) (= lambda!415081 lambda!415079))))

(assert (=> d!2194981 true))

(assert (=> d!2194981 (= (derivationStepZipper!2923 lt!2519543 (head!14266 s!7408)) (flatMap!2414 lt!2519543 lambda!415081))))

(declare-fun bs!1871289 () Bool)

(assert (= bs!1871289 d!2194981))

(declare-fun m!7742014 () Bool)

(assert (=> bs!1871289 m!7742014))

(assert (=> b!7033961 d!2194981))

(declare-fun d!2194983 () Bool)

(assert (=> d!2194983 (= (head!14266 s!7408) (h!74254 s!7408))))

(assert (=> b!7033961 d!2194983))

(declare-fun d!2194985 () Bool)

(assert (=> d!2194985 (= (tail!13557 s!7408) (t!381697 s!7408))))

(assert (=> b!7033961 d!2194985))

(declare-fun d!2194987 () Bool)

(declare-fun res!2871510 () Bool)

(declare-fun e!4228678 () Bool)

(assert (=> d!2194987 (=> res!2871510 e!4228678)))

(assert (=> d!2194987 (= res!2871510 ((_ is Nil!67805) (exprs!6963 lt!2519501)))))

(assert (=> d!2194987 (= (forall!16381 (exprs!6963 lt!2519501) lambda!415068) e!4228678)))

(declare-fun b!7034246 () Bool)

(declare-fun e!4228679 () Bool)

(assert (=> b!7034246 (= e!4228678 e!4228679)))

(declare-fun res!2871511 () Bool)

(assert (=> b!7034246 (=> (not res!2871511) (not e!4228679))))

(assert (=> b!7034246 (= res!2871511 (dynLambda!27391 lambda!415068 (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun b!7034247 () Bool)

(assert (=> b!7034247 (= e!4228679 (forall!16381 (t!381696 (exprs!6963 lt!2519501)) lambda!415068))))

(assert (= (and d!2194987 (not res!2871510)) b!7034246))

(assert (= (and b!7034246 res!2871511) b!7034247))

(declare-fun b_lambda!266653 () Bool)

(assert (=> (not b_lambda!266653) (not b!7034246)))

(declare-fun m!7742016 () Bool)

(assert (=> b!7034246 m!7742016))

(declare-fun m!7742018 () Bool)

(assert (=> b!7034247 m!7742018))

(assert (=> d!2194829 d!2194987))

(declare-fun bs!1871290 () Bool)

(declare-fun d!2194989 () Bool)

(assert (= bs!1871290 (and d!2194989 b!7033798)))

(declare-fun lambda!415082 () Int)

(assert (=> bs!1871290 (not (= lambda!415082 lambda!415027))))

(declare-fun bs!1871291 () Bool)

(assert (= bs!1871291 (and d!2194989 b!7033820)))

(assert (=> bs!1871291 (not (= lambda!415082 lambda!415031))))

(declare-fun bs!1871292 () Bool)

(assert (= bs!1871292 (and d!2194989 d!2194855)))

(assert (=> bs!1871292 (not (= lambda!415082 lambda!415073))))

(declare-fun bs!1871293 () Bool)

(assert (= bs!1871293 (and d!2194989 d!2194871)))

(assert (=> bs!1871293 (= (= lambda!415031 lambda!415027) (= lambda!415082 lambda!415076))))

(assert (=> d!2194989 true))

(assert (=> d!2194989 (< (dynLambda!27388 order!28177 lambda!415031) (dynLambda!27388 order!28177 lambda!415082))))

(assert (=> d!2194989 (= (exists!3396 (toList!10810 lt!2519520) lambda!415031) (not (forall!16382 (toList!10810 lt!2519520) lambda!415082)))))

(declare-fun bs!1871294 () Bool)

(assert (= bs!1871294 d!2194989))

(assert (=> bs!1871294 m!7741456))

(declare-fun m!7742020 () Bool)

(assert (=> bs!1871294 m!7742020))

(assert (=> d!2194763 d!2194989))

(declare-fun d!2194991 () Bool)

(declare-fun e!4228680 () Bool)

(assert (=> d!2194991 e!4228680))

(declare-fun res!2871512 () Bool)

(assert (=> d!2194991 (=> (not res!2871512) (not e!4228680))))

(declare-fun lt!2519691 () List!67931)

(assert (=> d!2194991 (= res!2871512 (noDuplicate!2629 lt!2519691))))

(assert (=> d!2194991 (= lt!2519691 (choose!53285 lt!2519520))))

(assert (=> d!2194991 (= (toList!10810 lt!2519520) lt!2519691)))

(declare-fun b!7034248 () Bool)

(assert (=> b!7034248 (= e!4228680 (= (content!13539 lt!2519691) lt!2519520))))

(assert (= (and d!2194991 res!2871512) b!7034248))

(declare-fun m!7742022 () Bool)

(assert (=> d!2194991 m!7742022))

(declare-fun m!7742024 () Bool)

(assert (=> d!2194991 m!7742024))

(declare-fun m!7742026 () Bool)

(assert (=> b!7034248 m!7742026))

(assert (=> d!2194763 d!2194991))

(declare-fun d!2194993 () Bool)

(declare-fun res!2871515 () Bool)

(assert (=> d!2194993 (= res!2871515 (exists!3396 (toList!10810 lt!2519520) lambda!415031))))

(assert (=> d!2194993 true))

(assert (=> d!2194993 (= (choose!53273 lt!2519520 lambda!415031) res!2871515)))

(declare-fun bs!1871295 () Bool)

(assert (= bs!1871295 d!2194993))

(assert (=> bs!1871295 m!7741456))

(assert (=> bs!1871295 m!7741456))

(assert (=> bs!1871295 m!7741458))

(assert (=> d!2194763 d!2194993))

(declare-fun d!2194995 () Bool)

(declare-fun res!2871516 () Bool)

(declare-fun e!4228681 () Bool)

(assert (=> d!2194995 (=> res!2871516 e!4228681)))

(assert (=> d!2194995 (= res!2871516 ((_ is Nil!67805) (exprs!6963 lt!2519545)))))

(assert (=> d!2194995 (= (forall!16381 (exprs!6963 lt!2519545) lambda!415077) e!4228681)))

(declare-fun b!7034249 () Bool)

(declare-fun e!4228682 () Bool)

(assert (=> b!7034249 (= e!4228681 e!4228682)))

(declare-fun res!2871517 () Bool)

(assert (=> b!7034249 (=> (not res!2871517) (not e!4228682))))

(assert (=> b!7034249 (= res!2871517 (dynLambda!27391 lambda!415077 (h!74253 (exprs!6963 lt!2519545))))))

(declare-fun b!7034250 () Bool)

(assert (=> b!7034250 (= e!4228682 (forall!16381 (t!381696 (exprs!6963 lt!2519545)) lambda!415077))))

(assert (= (and d!2194995 (not res!2871516)) b!7034249))

(assert (= (and b!7034249 res!2871517) b!7034250))

(declare-fun b_lambda!266655 () Bool)

(assert (=> (not b_lambda!266655) (not b!7034249)))

(declare-fun m!7742028 () Bool)

(assert (=> b!7034249 m!7742028))

(declare-fun m!7742030 () Bool)

(assert (=> b!7034250 m!7742030))

(assert (=> d!2194917 d!2194995))

(declare-fun b!7034254 () Bool)

(declare-fun e!4228683 () Bool)

(declare-fun lt!2519692 () List!67930)

(assert (=> b!7034254 (= e!4228683 (or (not (= (_2!37343 lt!2519504) Nil!67806)) (= lt!2519692 (t!381697 (_1!37343 lt!2519504)))))))

(declare-fun b!7034253 () Bool)

(declare-fun res!2871518 () Bool)

(assert (=> b!7034253 (=> (not res!2871518) (not e!4228683))))

(assert (=> b!7034253 (= res!2871518 (= (size!41066 lt!2519692) (+ (size!41066 (t!381697 (_1!37343 lt!2519504))) (size!41066 (_2!37343 lt!2519504)))))))

(declare-fun b!7034252 () Bool)

(declare-fun e!4228684 () List!67930)

(assert (=> b!7034252 (= e!4228684 (Cons!67806 (h!74254 (t!381697 (_1!37343 lt!2519504))) (++!15515 (t!381697 (t!381697 (_1!37343 lt!2519504))) (_2!37343 lt!2519504))))))

(declare-fun d!2194997 () Bool)

(assert (=> d!2194997 e!4228683))

(declare-fun res!2871519 () Bool)

(assert (=> d!2194997 (=> (not res!2871519) (not e!4228683))))

(assert (=> d!2194997 (= res!2871519 (= (content!13538 lt!2519692) ((_ map or) (content!13538 (t!381697 (_1!37343 lt!2519504))) (content!13538 (_2!37343 lt!2519504)))))))

(assert (=> d!2194997 (= lt!2519692 e!4228684)))

(declare-fun c!1308572 () Bool)

(assert (=> d!2194997 (= c!1308572 ((_ is Nil!67806) (t!381697 (_1!37343 lt!2519504))))))

(assert (=> d!2194997 (= (++!15515 (t!381697 (_1!37343 lt!2519504)) (_2!37343 lt!2519504)) lt!2519692)))

(declare-fun b!7034251 () Bool)

(assert (=> b!7034251 (= e!4228684 (_2!37343 lt!2519504))))

(assert (= (and d!2194997 c!1308572) b!7034251))

(assert (= (and d!2194997 (not c!1308572)) b!7034252))

(assert (= (and d!2194997 res!2871519) b!7034253))

(assert (= (and b!7034253 res!2871518) b!7034254))

(declare-fun m!7742032 () Bool)

(assert (=> b!7034253 m!7742032))

(declare-fun m!7742034 () Bool)

(assert (=> b!7034253 m!7742034))

(assert (=> b!7034253 m!7741692))

(declare-fun m!7742036 () Bool)

(assert (=> b!7034252 m!7742036))

(declare-fun m!7742038 () Bool)

(assert (=> d!2194997 m!7742038))

(declare-fun m!7742040 () Bool)

(assert (=> d!2194997 m!7742040))

(assert (=> d!2194997 m!7741700))

(assert (=> b!7034059 d!2194997))

(declare-fun d!2194999 () Bool)

(declare-fun lt!2519695 () Int)

(assert (=> d!2194999 (>= lt!2519695 0)))

(declare-fun e!4228687 () Int)

(assert (=> d!2194999 (= lt!2519695 e!4228687)))

(declare-fun c!1308575 () Bool)

(assert (=> d!2194999 (= c!1308575 ((_ is Nil!67805) lt!2519681))))

(assert (=> d!2194999 (= (size!41067 lt!2519681) lt!2519695)))

(declare-fun b!7034259 () Bool)

(assert (=> b!7034259 (= e!4228687 0)))

(declare-fun b!7034260 () Bool)

(assert (=> b!7034260 (= e!4228687 (+ 1 (size!41067 (t!381696 lt!2519681))))))

(assert (= (and d!2194999 c!1308575) b!7034259))

(assert (= (and d!2194999 (not c!1308575)) b!7034260))

(declare-fun m!7742042 () Bool)

(assert (=> b!7034260 m!7742042))

(assert (=> b!7034182 d!2194999))

(declare-fun d!2195001 () Bool)

(declare-fun lt!2519696 () Int)

(assert (=> d!2195001 (>= lt!2519696 0)))

(declare-fun e!4228688 () Int)

(assert (=> d!2195001 (= lt!2519696 e!4228688)))

(declare-fun c!1308576 () Bool)

(assert (=> d!2195001 (= c!1308576 ((_ is Nil!67805) (exprs!6963 lt!2519501)))))

(assert (=> d!2195001 (= (size!41067 (exprs!6963 lt!2519501)) lt!2519696)))

(declare-fun b!7034261 () Bool)

(assert (=> b!7034261 (= e!4228688 0)))

(declare-fun b!7034262 () Bool)

(assert (=> b!7034262 (= e!4228688 (+ 1 (size!41067 (t!381696 (exprs!6963 lt!2519501)))))))

(assert (= (and d!2195001 c!1308576) b!7034261))

(assert (= (and d!2195001 (not c!1308576)) b!7034262))

(declare-fun m!7742044 () Bool)

(assert (=> b!7034262 m!7742044))

(assert (=> b!7034182 d!2195001))

(declare-fun d!2195003 () Bool)

(declare-fun lt!2519697 () Int)

(assert (=> d!2195003 (>= lt!2519697 0)))

(declare-fun e!4228689 () Int)

(assert (=> d!2195003 (= lt!2519697 e!4228689)))

(declare-fun c!1308577 () Bool)

(assert (=> d!2195003 (= c!1308577 ((_ is Nil!67805) (exprs!6963 ct2!306)))))

(assert (=> d!2195003 (= (size!41067 (exprs!6963 ct2!306)) lt!2519697)))

(declare-fun b!7034263 () Bool)

(assert (=> b!7034263 (= e!4228689 0)))

(declare-fun b!7034264 () Bool)

(assert (=> b!7034264 (= e!4228689 (+ 1 (size!41067 (t!381696 (exprs!6963 ct2!306)))))))

(assert (= (and d!2195003 c!1308577) b!7034263))

(assert (= (and d!2195003 (not c!1308577)) b!7034264))

(declare-fun m!7742046 () Bool)

(assert (=> b!7034264 m!7742046))

(assert (=> b!7034182 d!2195003))

(declare-fun d!2195005 () Bool)

(assert (=> d!2195005 true))

(declare-fun setRes!49193 () Bool)

(assert (=> d!2195005 setRes!49193))

(declare-fun condSetEmpty!49193 () Bool)

(declare-fun res!2871522 () (InoxSet Context!12926))

(assert (=> d!2195005 (= condSetEmpty!49193 (= res!2871522 ((as const (Array Context!12926 Bool)) false)))))

(assert (=> d!2195005 (= (choose!53277 lt!2519505 lambda!415030) res!2871522)))

(declare-fun setIsEmpty!49193 () Bool)

(assert (=> setIsEmpty!49193 setRes!49193))

(declare-fun setNonEmpty!49193 () Bool)

(declare-fun tp!1936618 () Bool)

(declare-fun setElem!49193 () Context!12926)

(declare-fun e!4228692 () Bool)

(assert (=> setNonEmpty!49193 (= setRes!49193 (and tp!1936618 (inv!86526 setElem!49193) e!4228692))))

(declare-fun setRest!49193 () (InoxSet Context!12926))

(assert (=> setNonEmpty!49193 (= res!2871522 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) setElem!49193 true) setRest!49193))))

(declare-fun b!7034267 () Bool)

(declare-fun tp!1936619 () Bool)

(assert (=> b!7034267 (= e!4228692 tp!1936619)))

(assert (= (and d!2195005 condSetEmpty!49193) setIsEmpty!49193))

(assert (= (and d!2195005 (not condSetEmpty!49193)) setNonEmpty!49193))

(assert (= setNonEmpty!49193 b!7034267))

(declare-fun m!7742048 () Bool)

(assert (=> setNonEmpty!49193 m!7742048))

(assert (=> d!2194779 d!2195005))

(declare-fun bs!1871296 () Bool)

(declare-fun d!2195007 () Bool)

(assert (= bs!1871296 (and d!2195007 d!2194977)))

(declare-fun lambda!415083 () Int)

(assert (=> bs!1871296 (not (= lambda!415083 lambda!415080))))

(declare-fun bs!1871297 () Bool)

(assert (= bs!1871297 (and d!2195007 d!2194829)))

(assert (=> bs!1871297 (not (= lambda!415083 lambda!415068))))

(declare-fun bs!1871298 () Bool)

(assert (= bs!1871298 (and d!2195007 d!2194853)))

(assert (=> bs!1871298 (= lambda!415083 lambda!415070)))

(declare-fun bs!1871299 () Bool)

(assert (= bs!1871299 (and d!2195007 b!7033822)))

(assert (=> bs!1871299 (= lambda!415083 lambda!415029)))

(declare-fun bs!1871300 () Bool)

(assert (= bs!1871300 (and d!2195007 d!2194917)))

(assert (=> bs!1871300 (not (= lambda!415083 lambda!415077))))

(declare-fun bs!1871301 () Bool)

(assert (= bs!1871301 (and d!2195007 d!2194789)))

(assert (=> bs!1871301 (= lambda!415083 lambda!415065)))

(assert (=> d!2195007 (= (inv!86526 setElem!49190) (forall!16381 (exprs!6963 setElem!49190) lambda!415083))))

(declare-fun bs!1871302 () Bool)

(assert (= bs!1871302 d!2195007))

(declare-fun m!7742050 () Bool)

(assert (=> bs!1871302 m!7742050))

(assert (=> setNonEmpty!49190 d!2195007))

(declare-fun d!2195009 () Bool)

(assert (=> d!2195009 (forall!16381 (++!15514 (exprs!6963 lt!2519545) (exprs!6963 ct2!306)) lambda!415029)))

(declare-fun lt!2519698 () Unit!161608)

(assert (=> d!2195009 (= lt!2519698 (choose!53275 (exprs!6963 lt!2519545) (exprs!6963 ct2!306) lambda!415029))))

(assert (=> d!2195009 (forall!16381 (exprs!6963 lt!2519545) lambda!415029)))

(assert (=> d!2195009 (= (lemmaConcatPreservesForall!788 (exprs!6963 lt!2519545) (exprs!6963 ct2!306) lambda!415029) lt!2519698)))

(declare-fun bs!1871303 () Bool)

(assert (= bs!1871303 d!2195009))

(assert (=> bs!1871303 m!7741918))

(assert (=> bs!1871303 m!7741918))

(declare-fun m!7742052 () Bool)

(assert (=> bs!1871303 m!7742052))

(declare-fun m!7742054 () Bool)

(assert (=> bs!1871303 m!7742054))

(declare-fun m!7742056 () Bool)

(assert (=> bs!1871303 m!7742056))

(assert (=> bs!1871261 d!2195009))

(declare-fun d!2195011 () Bool)

(declare-fun e!4228694 () Bool)

(assert (=> d!2195011 e!4228694))

(declare-fun res!2871523 () Bool)

(assert (=> d!2195011 (=> (not res!2871523) (not e!4228694))))

(declare-fun lt!2519699 () List!67929)

(assert (=> d!2195011 (= res!2871523 (= (content!13540 lt!2519699) ((_ map or) (content!13540 (exprs!6963 lt!2519545)) (content!13540 (exprs!6963 ct2!306)))))))

(declare-fun e!4228693 () List!67929)

(assert (=> d!2195011 (= lt!2519699 e!4228693)))

(declare-fun c!1308578 () Bool)

(assert (=> d!2195011 (= c!1308578 ((_ is Nil!67805) (exprs!6963 lt!2519545)))))

(assert (=> d!2195011 (= (++!15514 (exprs!6963 lt!2519545) (exprs!6963 ct2!306)) lt!2519699)))

(declare-fun b!7034271 () Bool)

(assert (=> b!7034271 (= e!4228694 (or (not (= (exprs!6963 ct2!306) Nil!67805)) (= lt!2519699 (exprs!6963 lt!2519545))))))

(declare-fun b!7034270 () Bool)

(declare-fun res!2871524 () Bool)

(assert (=> b!7034270 (=> (not res!2871524) (not e!4228694))))

(assert (=> b!7034270 (= res!2871524 (= (size!41067 lt!2519699) (+ (size!41067 (exprs!6963 lt!2519545)) (size!41067 (exprs!6963 ct2!306)))))))

(declare-fun b!7034269 () Bool)

(assert (=> b!7034269 (= e!4228693 (Cons!67805 (h!74253 (exprs!6963 lt!2519545)) (++!15514 (t!381696 (exprs!6963 lt!2519545)) (exprs!6963 ct2!306))))))

(declare-fun b!7034268 () Bool)

(assert (=> b!7034268 (= e!4228693 (exprs!6963 ct2!306))))

(assert (= (and d!2195011 c!1308578) b!7034268))

(assert (= (and d!2195011 (not c!1308578)) b!7034269))

(assert (= (and d!2195011 res!2871523) b!7034270))

(assert (= (and b!7034270 res!2871524) b!7034271))

(declare-fun m!7742058 () Bool)

(assert (=> d!2195011 m!7742058))

(declare-fun m!7742060 () Bool)

(assert (=> d!2195011 m!7742060))

(assert (=> d!2195011 m!7741832))

(declare-fun m!7742062 () Bool)

(assert (=> b!7034270 m!7742062))

(declare-fun m!7742064 () Bool)

(assert (=> b!7034270 m!7742064))

(assert (=> b!7034270 m!7741838))

(declare-fun m!7742066 () Bool)

(assert (=> b!7034269 m!7742066))

(assert (=> bs!1871261 d!2195011))

(declare-fun d!2195013 () Bool)

(assert (=> d!2195013 (forall!16381 (++!15514 (exprs!6963 lt!2519684) (exprs!6963 ct2!306)) lambda!415029)))

(declare-fun lt!2519700 () Unit!161608)

(assert (=> d!2195013 (= lt!2519700 (choose!53275 (exprs!6963 lt!2519684) (exprs!6963 ct2!306) lambda!415029))))

(assert (=> d!2195013 (forall!16381 (exprs!6963 lt!2519684) lambda!415029)))

(assert (=> d!2195013 (= (lemmaConcatPreservesForall!788 (exprs!6963 lt!2519684) (exprs!6963 ct2!306) lambda!415029) lt!2519700)))

(declare-fun bs!1871304 () Bool)

(assert (= bs!1871304 d!2195013))

(assert (=> bs!1871304 m!7741926))

(assert (=> bs!1871304 m!7741926))

(declare-fun m!7742068 () Bool)

(assert (=> bs!1871304 m!7742068))

(declare-fun m!7742070 () Bool)

(assert (=> bs!1871304 m!7742070))

(declare-fun m!7742072 () Bool)

(assert (=> bs!1871304 m!7742072))

(assert (=> bs!1871265 d!2195013))

(declare-fun d!2195015 () Bool)

(declare-fun e!4228696 () Bool)

(assert (=> d!2195015 e!4228696))

(declare-fun res!2871525 () Bool)

(assert (=> d!2195015 (=> (not res!2871525) (not e!4228696))))

(declare-fun lt!2519701 () List!67929)

(assert (=> d!2195015 (= res!2871525 (= (content!13540 lt!2519701) ((_ map or) (content!13540 (exprs!6963 lt!2519684)) (content!13540 (exprs!6963 ct2!306)))))))

(declare-fun e!4228695 () List!67929)

(assert (=> d!2195015 (= lt!2519701 e!4228695)))

(declare-fun c!1308579 () Bool)

(assert (=> d!2195015 (= c!1308579 ((_ is Nil!67805) (exprs!6963 lt!2519684)))))

(assert (=> d!2195015 (= (++!15514 (exprs!6963 lt!2519684) (exprs!6963 ct2!306)) lt!2519701)))

(declare-fun b!7034275 () Bool)

(assert (=> b!7034275 (= e!4228696 (or (not (= (exprs!6963 ct2!306) Nil!67805)) (= lt!2519701 (exprs!6963 lt!2519684))))))

(declare-fun b!7034274 () Bool)

(declare-fun res!2871526 () Bool)

(assert (=> b!7034274 (=> (not res!2871526) (not e!4228696))))

(assert (=> b!7034274 (= res!2871526 (= (size!41067 lt!2519701) (+ (size!41067 (exprs!6963 lt!2519684)) (size!41067 (exprs!6963 ct2!306)))))))

(declare-fun b!7034273 () Bool)

(assert (=> b!7034273 (= e!4228695 (Cons!67805 (h!74253 (exprs!6963 lt!2519684)) (++!15514 (t!381696 (exprs!6963 lt!2519684)) (exprs!6963 ct2!306))))))

(declare-fun b!7034272 () Bool)

(assert (=> b!7034272 (= e!4228695 (exprs!6963 ct2!306))))

(assert (= (and d!2195015 c!1308579) b!7034272))

(assert (= (and d!2195015 (not c!1308579)) b!7034273))

(assert (= (and d!2195015 res!2871525) b!7034274))

(assert (= (and b!7034274 res!2871526) b!7034275))

(declare-fun m!7742074 () Bool)

(assert (=> d!2195015 m!7742074))

(declare-fun m!7742076 () Bool)

(assert (=> d!2195015 m!7742076))

(assert (=> d!2195015 m!7741832))

(declare-fun m!7742078 () Bool)

(assert (=> b!7034274 m!7742078))

(declare-fun m!7742080 () Bool)

(assert (=> b!7034274 m!7742080))

(assert (=> b!7034274 m!7741838))

(declare-fun m!7742082 () Bool)

(assert (=> b!7034273 m!7742082))

(assert (=> bs!1871265 d!2195015))

(declare-fun d!2195017 () Bool)

(declare-fun c!1308580 () Bool)

(assert (=> d!2195017 (= c!1308580 (isEmpty!39548 (_2!37343 (get!23756 lt!2519633))))))

(declare-fun e!4228697 () Bool)

(assert (=> d!2195017 (= (matchZipper!3007 lt!2519514 (_2!37343 (get!23756 lt!2519633))) e!4228697)))

(declare-fun b!7034276 () Bool)

(assert (=> b!7034276 (= e!4228697 (nullableZipper!2581 lt!2519514))))

(declare-fun b!7034277 () Bool)

(assert (=> b!7034277 (= e!4228697 (matchZipper!3007 (derivationStepZipper!2923 lt!2519514 (head!14266 (_2!37343 (get!23756 lt!2519633)))) (tail!13557 (_2!37343 (get!23756 lt!2519633)))))))

(assert (= (and d!2195017 c!1308580) b!7034276))

(assert (= (and d!2195017 (not c!1308580)) b!7034277))

(declare-fun m!7742084 () Bool)

(assert (=> d!2195017 m!7742084))

(assert (=> b!7034276 m!7741412))

(declare-fun m!7742086 () Bool)

(assert (=> b!7034277 m!7742086))

(assert (=> b!7034277 m!7742086))

(declare-fun m!7742088 () Bool)

(assert (=> b!7034277 m!7742088))

(declare-fun m!7742090 () Bool)

(assert (=> b!7034277 m!7742090))

(assert (=> b!7034277 m!7742088))

(assert (=> b!7034277 m!7742090))

(declare-fun m!7742092 () Bool)

(assert (=> b!7034277 m!7742092))

(assert (=> b!7034021 d!2195017))

(declare-fun d!2195019 () Bool)

(assert (=> d!2195019 (= (get!23756 lt!2519633) (v!53157 lt!2519633))))

(assert (=> b!7034021 d!2195019))

(declare-fun call!638777 () (InoxSet Context!12926))

(declare-fun b!7034278 () Bool)

(declare-fun e!4228700 () (InoxSet Context!12926))

(assert (=> b!7034278 (= e!4228700 ((_ map or) call!638777 (derivationStepZipperUp!2077 (Context!12927 (t!381696 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519536)))))) (h!74254 s!7408))))))

(declare-fun bm!638772 () Bool)

(assert (=> bm!638772 (= call!638777 (derivationStepZipperDown!2131 (h!74253 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519536))))) (Context!12927 (t!381696 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519536)))))) (h!74254 s!7408)))))

(declare-fun b!7034279 () Bool)

(declare-fun e!4228698 () (InoxSet Context!12926))

(assert (=> b!7034279 (= e!4228698 ((as const (Array Context!12926 Bool)) false))))

(declare-fun b!7034280 () Bool)

(assert (=> b!7034280 (= e!4228698 call!638777)))

(declare-fun b!7034281 () Bool)

(assert (=> b!7034281 (= e!4228700 e!4228698)))

(declare-fun c!1308582 () Bool)

(assert (=> b!7034281 (= c!1308582 ((_ is Cons!67805) (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519536))))))))

(declare-fun d!2195021 () Bool)

(declare-fun c!1308581 () Bool)

(declare-fun e!4228699 () Bool)

(assert (=> d!2195021 (= c!1308581 e!4228699)))

(declare-fun res!2871527 () Bool)

(assert (=> d!2195021 (=> (not res!2871527) (not e!4228699))))

(assert (=> d!2195021 (= res!2871527 ((_ is Cons!67805) (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519536))))))))

(assert (=> d!2195021 (= (derivationStepZipperUp!2077 (Context!12927 (t!381696 (exprs!6963 lt!2519536))) (h!74254 s!7408)) e!4228700)))

(declare-fun b!7034282 () Bool)

(assert (=> b!7034282 (= e!4228699 (nullable!7178 (h!74253 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519536)))))))))

(assert (= (and d!2195021 res!2871527) b!7034282))

(assert (= (and d!2195021 c!1308581) b!7034278))

(assert (= (and d!2195021 (not c!1308581)) b!7034281))

(assert (= (and b!7034281 c!1308582) b!7034280))

(assert (= (and b!7034281 (not c!1308582)) b!7034279))

(assert (= (or b!7034278 b!7034280) bm!638772))

(declare-fun m!7742094 () Bool)

(assert (=> b!7034278 m!7742094))

(declare-fun m!7742096 () Bool)

(assert (=> bm!638772 m!7742096))

(declare-fun m!7742098 () Bool)

(assert (=> b!7034282 m!7742098))

(assert (=> b!7034062 d!2195021))

(declare-fun d!2195023 () Bool)

(assert (=> d!2195023 (= (isEmpty!39548 (t!381697 s!7408)) ((_ is Nil!67806) (t!381697 s!7408)))))

(assert (=> d!2194883 d!2195023))

(assert (=> bs!1871263 d!2194839))

(declare-fun d!2195025 () Bool)

(declare-fun c!1308587 () Bool)

(assert (=> d!2195025 (= c!1308587 (and ((_ is ElementMatch!17467) (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))) (= (c!1308424 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))) (h!74254 s!7408))))))

(declare-fun e!4228706 () (InoxSet Context!12926))

(assert (=> d!2195025 (= (derivationStepZipperDown!2131 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501)))))) (ite (or c!1308551 c!1308552) lt!2519527 (Context!12927 call!638771)) (h!74254 s!7408)) e!4228706)))

(declare-fun call!638780 () List!67929)

(declare-fun c!1308586 () Bool)

(declare-fun bm!638773 () Bool)

(declare-fun c!1308584 () Bool)

(assert (=> bm!638773 (= call!638780 ($colon$colon!2575 (exprs!6963 (ite (or c!1308551 c!1308552) lt!2519527 (Context!12927 call!638771))) (ite (or c!1308584 c!1308586) (regTwo!35446 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))) (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501)))))))))))

(declare-fun b!7034283 () Bool)

(declare-fun e!4228705 () (InoxSet Context!12926))

(declare-fun call!638783 () (InoxSet Context!12926))

(assert (=> b!7034283 (= e!4228705 call!638783)))

(declare-fun b!7034284 () Bool)

(declare-fun e!4228703 () (InoxSet Context!12926))

(assert (=> b!7034284 (= e!4228706 e!4228703)))

(declare-fun c!1308583 () Bool)

(assert (=> b!7034284 (= c!1308583 ((_ is Union!17467) (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))))))

(declare-fun bm!638774 () Bool)

(declare-fun call!638779 () (InoxSet Context!12926))

(declare-fun call!638782 () (InoxSet Context!12926))

(assert (=> bm!638774 (= call!638779 call!638782)))

(declare-fun call!638778 () List!67929)

(declare-fun bm!638775 () Bool)

(assert (=> bm!638775 (= call!638782 (derivationStepZipperDown!2131 (ite c!1308583 (regOne!35447 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))) (ite c!1308584 (regTwo!35446 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))) (ite c!1308586 (regOne!35446 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))) (reg!17796 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501)))))))))) (ite (or c!1308583 c!1308584) (ite (or c!1308551 c!1308552) lt!2519527 (Context!12927 call!638771)) (Context!12927 call!638778)) (h!74254 s!7408)))))

(declare-fun b!7034285 () Bool)

(assert (=> b!7034285 (= e!4228706 (store ((as const (Array Context!12926 Bool)) false) (ite (or c!1308551 c!1308552) lt!2519527 (Context!12927 call!638771)) true))))

(declare-fun b!7034286 () Bool)

(declare-fun e!4228701 () Bool)

(assert (=> b!7034286 (= c!1308584 e!4228701)))

(declare-fun res!2871528 () Bool)

(assert (=> b!7034286 (=> (not res!2871528) (not e!4228701))))

(assert (=> b!7034286 (= res!2871528 ((_ is Concat!26312) (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))))))

(declare-fun e!4228702 () (InoxSet Context!12926))

(assert (=> b!7034286 (= e!4228703 e!4228702)))

(declare-fun b!7034287 () Bool)

(declare-fun call!638781 () (InoxSet Context!12926))

(assert (=> b!7034287 (= e!4228702 ((_ map or) call!638781 call!638779))))

(declare-fun bm!638776 () Bool)

(assert (=> bm!638776 (= call!638781 (derivationStepZipperDown!2131 (ite c!1308583 (regTwo!35447 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))) (regOne!35446 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501)))))))) (ite c!1308583 (ite (or c!1308551 c!1308552) lt!2519527 (Context!12927 call!638771)) (Context!12927 call!638780)) (h!74254 s!7408)))))

(declare-fun b!7034288 () Bool)

(declare-fun e!4228704 () (InoxSet Context!12926))

(assert (=> b!7034288 (= e!4228704 ((as const (Array Context!12926 Bool)) false))))

(declare-fun bm!638777 () Bool)

(assert (=> bm!638777 (= call!638783 call!638779)))

(declare-fun bm!638778 () Bool)

(assert (=> bm!638778 (= call!638778 call!638780)))

(declare-fun b!7034289 () Bool)

(assert (=> b!7034289 (= e!4228704 call!638783)))

(declare-fun b!7034290 () Bool)

(assert (=> b!7034290 (= e!4228701 (nullable!7178 (regOne!35446 (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501)))))))))))

(declare-fun b!7034291 () Bool)

(assert (=> b!7034291 (= e!4228703 ((_ map or) call!638782 call!638781))))

(declare-fun b!7034292 () Bool)

(declare-fun c!1308585 () Bool)

(assert (=> b!7034292 (= c!1308585 ((_ is Star!17467) (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))))))

(assert (=> b!7034292 (= e!4228705 e!4228704)))

(declare-fun b!7034293 () Bool)

(assert (=> b!7034293 (= e!4228702 e!4228705)))

(assert (=> b!7034293 (= c!1308586 ((_ is Concat!26312) (ite c!1308551 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308552 (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308554 (regOne!35446 (h!74253 (exprs!6963 lt!2519501))) (reg!17796 (h!74253 (exprs!6963 lt!2519501))))))))))

(assert (= (and d!2195025 c!1308587) b!7034285))

(assert (= (and d!2195025 (not c!1308587)) b!7034284))

(assert (= (and b!7034284 c!1308583) b!7034291))

(assert (= (and b!7034284 (not c!1308583)) b!7034286))

(assert (= (and b!7034286 res!2871528) b!7034290))

(assert (= (and b!7034286 c!1308584) b!7034287))

(assert (= (and b!7034286 (not c!1308584)) b!7034293))

(assert (= (and b!7034293 c!1308586) b!7034283))

(assert (= (and b!7034293 (not c!1308586)) b!7034292))

(assert (= (and b!7034292 c!1308585) b!7034289))

(assert (= (and b!7034292 (not c!1308585)) b!7034288))

(assert (= (or b!7034283 b!7034289) bm!638778))

(assert (= (or b!7034283 b!7034289) bm!638777))

(assert (= (or b!7034287 bm!638777) bm!638774))

(assert (= (or b!7034287 bm!638778) bm!638773))

(assert (= (or b!7034291 bm!638774) bm!638775))

(assert (= (or b!7034291 b!7034287) bm!638776))

(declare-fun m!7742100 () Bool)

(assert (=> bm!638776 m!7742100))

(declare-fun m!7742102 () Bool)

(assert (=> bm!638773 m!7742102))

(declare-fun m!7742104 () Bool)

(assert (=> bm!638775 m!7742104))

(declare-fun m!7742106 () Bool)

(assert (=> b!7034290 m!7742106))

(declare-fun m!7742108 () Bool)

(assert (=> b!7034285 m!7742108))

(assert (=> bm!638768 d!2195025))

(declare-fun d!2195027 () Bool)

(assert (=> d!2195027 (= (map!15768 z1!570 lambda!415062) (choose!53287 z1!570 lambda!415062))))

(declare-fun bs!1871305 () Bool)

(assert (= bs!1871305 d!2195027))

(declare-fun m!7742110 () Bool)

(assert (=> bs!1871305 m!7742110))

(assert (=> d!2194785 d!2195027))

(declare-fun d!2195029 () Bool)

(declare-fun res!2871529 () Bool)

(declare-fun e!4228707 () Bool)

(assert (=> d!2195029 (=> res!2871529 e!4228707)))

(assert (=> d!2195029 (= res!2871529 ((_ is Nil!67805) (exprs!6963 setElem!49184)))))

(assert (=> d!2195029 (= (forall!16381 (exprs!6963 setElem!49184) lambda!415070) e!4228707)))

(declare-fun b!7034294 () Bool)

(declare-fun e!4228708 () Bool)

(assert (=> b!7034294 (= e!4228707 e!4228708)))

(declare-fun res!2871530 () Bool)

(assert (=> b!7034294 (=> (not res!2871530) (not e!4228708))))

(assert (=> b!7034294 (= res!2871530 (dynLambda!27391 lambda!415070 (h!74253 (exprs!6963 setElem!49184))))))

(declare-fun b!7034295 () Bool)

(assert (=> b!7034295 (= e!4228708 (forall!16381 (t!381696 (exprs!6963 setElem!49184)) lambda!415070))))

(assert (= (and d!2195029 (not res!2871529)) b!7034294))

(assert (= (and b!7034294 res!2871530) b!7034295))

(declare-fun b_lambda!266657 () Bool)

(assert (=> (not b_lambda!266657) (not b!7034294)))

(declare-fun m!7742112 () Bool)

(assert (=> b!7034294 m!7742112))

(declare-fun m!7742114 () Bool)

(assert (=> b!7034295 m!7742114))

(assert (=> d!2194853 d!2195029))

(declare-fun bs!1871306 () Bool)

(declare-fun d!2195031 () Bool)

(assert (= bs!1871306 (and d!2195031 d!2194871)))

(declare-fun lambda!415084 () Int)

(assert (=> bs!1871306 (= (= lambda!415031 lambda!415027) (= lambda!415084 lambda!415076))))

(declare-fun bs!1871307 () Bool)

(assert (= bs!1871307 (and d!2195031 d!2194989)))

(assert (=> bs!1871307 (= lambda!415084 lambda!415082)))

(declare-fun bs!1871308 () Bool)

(assert (= bs!1871308 (and d!2195031 d!2194855)))

(assert (=> bs!1871308 (not (= lambda!415084 lambda!415073))))

(declare-fun bs!1871309 () Bool)

(assert (= bs!1871309 (and d!2195031 b!7033798)))

(assert (=> bs!1871309 (not (= lambda!415084 lambda!415027))))

(declare-fun bs!1871310 () Bool)

(assert (= bs!1871310 (and d!2195031 b!7033820)))

(assert (=> bs!1871310 (not (= lambda!415084 lambda!415031))))

(assert (=> d!2195031 true))

(assert (=> d!2195031 (< (dynLambda!27388 order!28177 lambda!415031) (dynLambda!27388 order!28177 lambda!415084))))

(assert (=> d!2195031 (= (exists!3396 (toList!10810 lt!2519510) lambda!415031) (not (forall!16382 (toList!10810 lt!2519510) lambda!415084)))))

(declare-fun bs!1871311 () Bool)

(assert (= bs!1871311 d!2195031))

(assert (=> bs!1871311 m!7741450))

(declare-fun m!7742116 () Bool)

(assert (=> bs!1871311 m!7742116))

(assert (=> d!2194759 d!2195031))

(declare-fun d!2195033 () Bool)

(declare-fun e!4228709 () Bool)

(assert (=> d!2195033 e!4228709))

(declare-fun res!2871531 () Bool)

(assert (=> d!2195033 (=> (not res!2871531) (not e!4228709))))

(declare-fun lt!2519702 () List!67931)

(assert (=> d!2195033 (= res!2871531 (noDuplicate!2629 lt!2519702))))

(assert (=> d!2195033 (= lt!2519702 (choose!53285 lt!2519510))))

(assert (=> d!2195033 (= (toList!10810 lt!2519510) lt!2519702)))

(declare-fun b!7034296 () Bool)

(assert (=> b!7034296 (= e!4228709 (= (content!13539 lt!2519702) lt!2519510))))

(assert (= (and d!2195033 res!2871531) b!7034296))

(declare-fun m!7742118 () Bool)

(assert (=> d!2195033 m!7742118))

(declare-fun m!7742120 () Bool)

(assert (=> d!2195033 m!7742120))

(declare-fun m!7742122 () Bool)

(assert (=> b!7034296 m!7742122))

(assert (=> d!2194759 d!2195033))

(declare-fun d!2195035 () Bool)

(declare-fun res!2871532 () Bool)

(assert (=> d!2195035 (= res!2871532 (exists!3396 (toList!10810 lt!2519510) lambda!415031))))

(assert (=> d!2195035 true))

(assert (=> d!2195035 (= (choose!53273 lt!2519510 lambda!415031) res!2871532)))

(declare-fun bs!1871312 () Bool)

(assert (= bs!1871312 d!2195035))

(assert (=> bs!1871312 m!7741450))

(assert (=> bs!1871312 m!7741450))

(assert (=> bs!1871312 m!7741452))

(assert (=> d!2194759 d!2195035))

(declare-fun d!2195037 () Bool)

(declare-fun c!1308588 () Bool)

(assert (=> d!2195037 (= c!1308588 (isEmpty!39548 (t!381697 s!7408)))))

(declare-fun e!4228710 () Bool)

(assert (=> d!2195037 (= (matchZipper!3007 ((_ map or) lt!2519544 lt!2519524) (t!381697 s!7408)) e!4228710)))

(declare-fun b!7034297 () Bool)

(assert (=> b!7034297 (= e!4228710 (nullableZipper!2581 ((_ map or) lt!2519544 lt!2519524)))))

(declare-fun b!7034298 () Bool)

(assert (=> b!7034298 (= e!4228710 (matchZipper!3007 (derivationStepZipper!2923 ((_ map or) lt!2519544 lt!2519524) (head!14266 (t!381697 s!7408))) (tail!13557 (t!381697 s!7408))))))

(assert (= (and d!2195037 c!1308588) b!7034297))

(assert (= (and d!2195037 (not c!1308588)) b!7034298))

(assert (=> d!2195037 m!7741670))

(declare-fun m!7742124 () Bool)

(assert (=> b!7034297 m!7742124))

(assert (=> b!7034298 m!7741674))

(assert (=> b!7034298 m!7741674))

(declare-fun m!7742126 () Bool)

(assert (=> b!7034298 m!7742126))

(assert (=> b!7034298 m!7741678))

(assert (=> b!7034298 m!7742126))

(assert (=> b!7034298 m!7741678))

(declare-fun m!7742128 () Bool)

(assert (=> b!7034298 m!7742128))

(assert (=> d!2194881 d!2195037))

(assert (=> d!2194881 d!2194885))

(declare-fun e!4228713 () Bool)

(declare-fun d!2195039 () Bool)

(assert (=> d!2195039 (= (matchZipper!3007 ((_ map or) lt!2519544 lt!2519524) (t!381697 s!7408)) e!4228713)))

(declare-fun res!2871535 () Bool)

(assert (=> d!2195039 (=> res!2871535 e!4228713)))

(assert (=> d!2195039 (= res!2871535 (matchZipper!3007 lt!2519544 (t!381697 s!7408)))))

(assert (=> d!2195039 true))

(declare-fun _$48!2491 () Unit!161608)

(assert (=> d!2195039 (= (choose!53286 lt!2519544 lt!2519524 (t!381697 s!7408)) _$48!2491)))

(declare-fun b!7034301 () Bool)

(assert (=> b!7034301 (= e!4228713 (matchZipper!3007 lt!2519524 (t!381697 s!7408)))))

(assert (= (and d!2195039 (not res!2871535)) b!7034301))

(assert (=> d!2195039 m!7741802))

(assert (=> d!2195039 m!7741122))

(assert (=> b!7034301 m!7741134))

(assert (=> d!2194881 d!2195039))

(declare-fun d!2195041 () Bool)

(assert (=> d!2195041 (= ($colon$colon!2575 (exprs!6963 lt!2519527) (ite (or c!1308552 c!1308554) (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (h!74253 (exprs!6963 lt!2519501)))) (Cons!67805 (ite (or c!1308552 c!1308554) (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))) (h!74253 (exprs!6963 lt!2519501))) (exprs!6963 lt!2519527)))))

(assert (=> bm!638766 d!2195041))

(declare-fun d!2195043 () Bool)

(declare-fun c!1308589 () Bool)

(assert (=> d!2195043 (= c!1308589 ((_ is Nil!67805) lt!2519670))))

(declare-fun e!4228714 () (InoxSet Regex!17467))

(assert (=> d!2195043 (= (content!13540 lt!2519670) e!4228714)))

(declare-fun b!7034302 () Bool)

(assert (=> b!7034302 (= e!4228714 ((as const (Array Regex!17467 Bool)) false))))

(declare-fun b!7034303 () Bool)

(assert (=> b!7034303 (= e!4228714 ((_ map or) (store ((as const (Array Regex!17467 Bool)) false) (h!74253 lt!2519670) true) (content!13540 (t!381696 lt!2519670))))))

(assert (= (and d!2195043 c!1308589) b!7034302))

(assert (= (and d!2195043 (not c!1308589)) b!7034303))

(declare-fun m!7742130 () Bool)

(assert (=> b!7034303 m!7742130))

(declare-fun m!7742132 () Bool)

(assert (=> b!7034303 m!7742132))

(assert (=> d!2194893 d!2195043))

(declare-fun d!2195045 () Bool)

(declare-fun c!1308590 () Bool)

(assert (=> d!2195045 (= c!1308590 ((_ is Nil!67805) lt!2519492))))

(declare-fun e!4228715 () (InoxSet Regex!17467))

(assert (=> d!2195045 (= (content!13540 lt!2519492) e!4228715)))

(declare-fun b!7034304 () Bool)

(assert (=> b!7034304 (= e!4228715 ((as const (Array Regex!17467 Bool)) false))))

(declare-fun b!7034305 () Bool)

(assert (=> b!7034305 (= e!4228715 ((_ map or) (store ((as const (Array Regex!17467 Bool)) false) (h!74253 lt!2519492) true) (content!13540 (t!381696 lt!2519492))))))

(assert (= (and d!2195045 c!1308590) b!7034304))

(assert (= (and d!2195045 (not c!1308590)) b!7034305))

(declare-fun m!7742134 () Bool)

(assert (=> b!7034305 m!7742134))

(declare-fun m!7742136 () Bool)

(assert (=> b!7034305 m!7742136))

(assert (=> d!2194893 d!2195045))

(assert (=> d!2194893 d!2194941))

(declare-fun d!2195047 () Bool)

(declare-fun res!2871540 () Bool)

(declare-fun e!4228720 () Bool)

(assert (=> d!2195047 (=> res!2871540 e!4228720)))

(assert (=> d!2195047 (= res!2871540 ((_ is Nil!67807) lt!2519542))))

(assert (=> d!2195047 (= (forall!16382 lt!2519542 lambda!415076) e!4228720)))

(declare-fun b!7034310 () Bool)

(declare-fun e!4228721 () Bool)

(assert (=> b!7034310 (= e!4228720 e!4228721)))

(declare-fun res!2871541 () Bool)

(assert (=> b!7034310 (=> (not res!2871541) (not e!4228721))))

(assert (=> b!7034310 (= res!2871541 (dynLambda!27389 lambda!415076 (h!74255 lt!2519542)))))

(declare-fun b!7034311 () Bool)

(assert (=> b!7034311 (= e!4228721 (forall!16382 (t!381698 lt!2519542) lambda!415076))))

(assert (= (and d!2195047 (not res!2871540)) b!7034310))

(assert (= (and b!7034310 res!2871541) b!7034311))

(declare-fun b_lambda!266659 () Bool)

(assert (=> (not b_lambda!266659) (not b!7034310)))

(declare-fun m!7742138 () Bool)

(assert (=> b!7034310 m!7742138))

(declare-fun m!7742140 () Bool)

(assert (=> b!7034311 m!7742140))

(assert (=> d!2194871 d!2195047))

(declare-fun bs!1871313 () Bool)

(declare-fun d!2195049 () Bool)

(assert (= bs!1871313 (and d!2195049 d!2194871)))

(declare-fun lambda!415087 () Int)

(assert (=> bs!1871313 (not (= lambda!415087 lambda!415076))))

(declare-fun bs!1871314 () Bool)

(assert (= bs!1871314 (and d!2195049 d!2195031)))

(assert (=> bs!1871314 (not (= lambda!415087 lambda!415084))))

(declare-fun bs!1871315 () Bool)

(assert (= bs!1871315 (and d!2195049 d!2194989)))

(assert (=> bs!1871315 (not (= lambda!415087 lambda!415082))))

(declare-fun bs!1871316 () Bool)

(assert (= bs!1871316 (and d!2195049 d!2194855)))

(assert (=> bs!1871316 (not (= lambda!415087 lambda!415073))))

(declare-fun bs!1871317 () Bool)

(assert (= bs!1871317 (and d!2195049 b!7033798)))

(assert (=> bs!1871317 (not (= lambda!415087 lambda!415027))))

(declare-fun bs!1871318 () Bool)

(assert (= bs!1871318 (and d!2195049 b!7033820)))

(assert (=> bs!1871318 (= lambda!415087 lambda!415031)))

(assert (=> d!2195049 (= (nullableZipper!2581 lt!2519524) (exists!3397 lt!2519524 lambda!415087))))

(declare-fun bs!1871319 () Bool)

(assert (= bs!1871319 d!2195049))

(declare-fun m!7742142 () Bool)

(assert (=> bs!1871319 m!7742142))

(assert (=> b!7034030 d!2195049))

(declare-fun d!2195051 () Bool)

(declare-fun res!2871542 () Bool)

(declare-fun e!4228722 () Bool)

(assert (=> d!2195051 (=> res!2871542 e!4228722)))

(assert (=> d!2195051 (= res!2871542 ((_ is Nil!67805) (++!15514 lt!2519492 (exprs!6963 ct2!306))))))

(assert (=> d!2195051 (= (forall!16381 (++!15514 lt!2519492 (exprs!6963 ct2!306)) lambda!415029) e!4228722)))

(declare-fun b!7034312 () Bool)

(declare-fun e!4228723 () Bool)

(assert (=> b!7034312 (= e!4228722 e!4228723)))

(declare-fun res!2871543 () Bool)

(assert (=> b!7034312 (=> (not res!2871543) (not e!4228723))))

(assert (=> b!7034312 (= res!2871543 (dynLambda!27391 lambda!415029 (h!74253 (++!15514 lt!2519492 (exprs!6963 ct2!306)))))))

(declare-fun b!7034313 () Bool)

(assert (=> b!7034313 (= e!4228723 (forall!16381 (t!381696 (++!15514 lt!2519492 (exprs!6963 ct2!306))) lambda!415029))))

(assert (= (and d!2195051 (not res!2871542)) b!7034312))

(assert (= (and b!7034312 res!2871543) b!7034313))

(declare-fun b_lambda!266661 () Bool)

(assert (=> (not b_lambda!266661) (not b!7034312)))

(declare-fun m!7742144 () Bool)

(assert (=> b!7034312 m!7742144))

(declare-fun m!7742146 () Bool)

(assert (=> b!7034313 m!7742146))

(assert (=> d!2194767 d!2195051))

(assert (=> d!2194767 d!2194893))

(declare-fun d!2195053 () Bool)

(assert (=> d!2195053 (forall!16381 (++!15514 lt!2519492 (exprs!6963 ct2!306)) lambda!415029)))

(assert (=> d!2195053 true))

(declare-fun _$78!589 () Unit!161608)

(assert (=> d!2195053 (= (choose!53275 lt!2519492 (exprs!6963 ct2!306) lambda!415029) _$78!589)))

(declare-fun bs!1871320 () Bool)

(assert (= bs!1871320 d!2195053))

(assert (=> bs!1871320 m!7741156))

(assert (=> bs!1871320 m!7741156))

(assert (=> bs!1871320 m!7741466))

(assert (=> d!2194767 d!2195053))

(declare-fun d!2195055 () Bool)

(declare-fun res!2871544 () Bool)

(declare-fun e!4228724 () Bool)

(assert (=> d!2195055 (=> res!2871544 e!4228724)))

(assert (=> d!2195055 (= res!2871544 ((_ is Nil!67805) lt!2519492))))

(assert (=> d!2195055 (= (forall!16381 lt!2519492 lambda!415029) e!4228724)))

(declare-fun b!7034314 () Bool)

(declare-fun e!4228725 () Bool)

(assert (=> b!7034314 (= e!4228724 e!4228725)))

(declare-fun res!2871545 () Bool)

(assert (=> b!7034314 (=> (not res!2871545) (not e!4228725))))

(assert (=> b!7034314 (= res!2871545 (dynLambda!27391 lambda!415029 (h!74253 lt!2519492)))))

(declare-fun b!7034315 () Bool)

(assert (=> b!7034315 (= e!4228725 (forall!16381 (t!381696 lt!2519492) lambda!415029))))

(assert (= (and d!2195055 (not res!2871544)) b!7034314))

(assert (= (and b!7034314 res!2871545) b!7034315))

(declare-fun b_lambda!266663 () Bool)

(assert (=> (not b_lambda!266663) (not b!7034314)))

(declare-fun m!7742148 () Bool)

(assert (=> b!7034314 m!7742148))

(declare-fun m!7742150 () Bool)

(assert (=> b!7034315 m!7742150))

(assert (=> d!2194767 d!2195055))

(declare-fun b!7034330 () Bool)

(declare-fun e!4228739 () Bool)

(declare-fun e!4228743 () Bool)

(assert (=> b!7034330 (= e!4228739 e!4228743)))

(declare-fun res!2871558 () Bool)

(declare-fun call!638788 () Bool)

(assert (=> b!7034330 (= res!2871558 call!638788)))

(assert (=> b!7034330 (=> (not res!2871558) (not e!4228743))))

(declare-fun bm!638783 () Bool)

(declare-fun call!638789 () Bool)

(declare-fun c!1308595 () Bool)

(assert (=> bm!638783 (= call!638789 (nullable!7178 (ite c!1308595 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (regTwo!35446 (h!74253 (exprs!6963 lt!2519501))))))))

(declare-fun bm!638784 () Bool)

(assert (=> bm!638784 (= call!638788 (nullable!7178 (ite c!1308595 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))))))

(declare-fun b!7034332 () Bool)

(declare-fun e!4228742 () Bool)

(assert (=> b!7034332 (= e!4228742 e!4228739)))

(assert (=> b!7034332 (= c!1308595 ((_ is Union!17467) (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun b!7034333 () Bool)

(assert (=> b!7034333 (= e!4228743 call!638789)))

(declare-fun b!7034334 () Bool)

(declare-fun e!4228738 () Bool)

(declare-fun e!4228741 () Bool)

(assert (=> b!7034334 (= e!4228738 e!4228741)))

(declare-fun res!2871559 () Bool)

(assert (=> b!7034334 (=> (not res!2871559) (not e!4228741))))

(assert (=> b!7034334 (= res!2871559 (and (not ((_ is EmptyLang!17467) (h!74253 (exprs!6963 lt!2519501)))) (not ((_ is ElementMatch!17467) (h!74253 (exprs!6963 lt!2519501))))))))

(declare-fun d!2195057 () Bool)

(declare-fun res!2871557 () Bool)

(assert (=> d!2195057 (=> res!2871557 e!4228738)))

(assert (=> d!2195057 (= res!2871557 ((_ is EmptyExpr!17467) (h!74253 (exprs!6963 lt!2519501))))))

(assert (=> d!2195057 (= (nullableFct!2729 (h!74253 (exprs!6963 lt!2519501))) e!4228738)))

(declare-fun b!7034331 () Bool)

(declare-fun e!4228740 () Bool)

(assert (=> b!7034331 (= e!4228740 call!638788)))

(declare-fun b!7034335 () Bool)

(assert (=> b!7034335 (= e!4228741 e!4228742)))

(declare-fun res!2871556 () Bool)

(assert (=> b!7034335 (=> res!2871556 e!4228742)))

(assert (=> b!7034335 (= res!2871556 ((_ is Star!17467) (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun b!7034336 () Bool)

(assert (=> b!7034336 (= e!4228739 e!4228740)))

(declare-fun res!2871560 () Bool)

(assert (=> b!7034336 (= res!2871560 call!638789)))

(assert (=> b!7034336 (=> res!2871560 e!4228740)))

(assert (= (and d!2195057 (not res!2871557)) b!7034334))

(assert (= (and b!7034334 res!2871559) b!7034335))

(assert (= (and b!7034335 (not res!2871556)) b!7034332))

(assert (= (and b!7034332 c!1308595) b!7034336))

(assert (= (and b!7034332 (not c!1308595)) b!7034330))

(assert (= (and b!7034336 (not res!2871560)) b!7034331))

(assert (= (and b!7034330 res!2871558) b!7034333))

(assert (= (or b!7034331 b!7034330) bm!638784))

(assert (= (or b!7034336 b!7034333) bm!638783))

(declare-fun m!7742152 () Bool)

(assert (=> bm!638783 m!7742152))

(declare-fun m!7742154 () Bool)

(assert (=> bm!638784 m!7742154))

(assert (=> d!2194847 d!2195057))

(declare-fun b!7034353 () Bool)

(declare-fun e!4228753 () Int)

(declare-fun e!4228754 () Int)

(assert (=> b!7034353 (= e!4228753 e!4228754)))

(declare-fun c!1308607 () Bool)

(assert (=> b!7034353 (= c!1308607 ((_ is Star!17467) (h!74253 (exprs!6963 lt!2519545))))))

(declare-fun bm!638791 () Bool)

(declare-fun call!638796 () Int)

(declare-fun call!638798 () Int)

(assert (=> bm!638791 (= call!638796 call!638798)))

(declare-fun b!7034354 () Bool)

(declare-fun e!4228755 () Int)

(assert (=> b!7034354 (= e!4228755 1)))

(declare-fun bm!638792 () Bool)

(declare-fun call!638797 () Int)

(declare-fun c!1308605 () Bool)

(assert (=> bm!638792 (= call!638797 (regexDepthTotal!304 (ite c!1308605 (regTwo!35447 (h!74253 (exprs!6963 lt!2519545))) (regOne!35446 (h!74253 (exprs!6963 lt!2519545))))))))

(declare-fun b!7034355 () Bool)

(assert (=> b!7034355 (= c!1308605 ((_ is Union!17467) (h!74253 (exprs!6963 lt!2519545))))))

(declare-fun e!4228752 () Int)

(assert (=> b!7034355 (= e!4228754 e!4228752)))

(declare-fun d!2195059 () Bool)

(declare-fun lt!2519705 () Int)

(assert (=> d!2195059 (> lt!2519705 0)))

(assert (=> d!2195059 (= lt!2519705 e!4228753)))

(declare-fun c!1308604 () Bool)

(assert (=> d!2195059 (= c!1308604 ((_ is ElementMatch!17467) (h!74253 (exprs!6963 lt!2519545))))))

(assert (=> d!2195059 (= (regexDepthTotal!304 (h!74253 (exprs!6963 lt!2519545))) lt!2519705)))

(declare-fun b!7034356 () Bool)

(assert (=> b!7034356 (= e!4228755 (+ 1 call!638797 call!638796))))

(declare-fun bm!638793 () Bool)

(assert (=> bm!638793 (= call!638798 (regexDepthTotal!304 (ite c!1308607 (reg!17796 (h!74253 (exprs!6963 lt!2519545))) (ite c!1308605 (regOne!35447 (h!74253 (exprs!6963 lt!2519545))) (regTwo!35446 (h!74253 (exprs!6963 lt!2519545)))))))))

(declare-fun b!7034357 () Bool)

(assert (=> b!7034357 (= e!4228753 1)))

(declare-fun b!7034358 () Bool)

(assert (=> b!7034358 (= e!4228752 (+ 1 call!638796 call!638797))))

(declare-fun b!7034359 () Bool)

(assert (=> b!7034359 (= e!4228754 (+ 1 call!638798))))

(declare-fun b!7034360 () Bool)

(assert (=> b!7034360 (= e!4228752 e!4228755)))

(declare-fun c!1308606 () Bool)

(assert (=> b!7034360 (= c!1308606 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519545))))))

(assert (= (and d!2195059 c!1308604) b!7034357))

(assert (= (and d!2195059 (not c!1308604)) b!7034353))

(assert (= (and b!7034353 c!1308607) b!7034359))

(assert (= (and b!7034353 (not c!1308607)) b!7034355))

(assert (= (and b!7034355 c!1308605) b!7034358))

(assert (= (and b!7034355 (not c!1308605)) b!7034360))

(assert (= (and b!7034360 c!1308606) b!7034356))

(assert (= (and b!7034360 (not c!1308606)) b!7034354))

(assert (= (or b!7034358 b!7034356) bm!638792))

(assert (= (or b!7034358 b!7034356) bm!638791))

(assert (= (or b!7034359 bm!638791) bm!638793))

(declare-fun m!7742156 () Bool)

(assert (=> bm!638792 m!7742156))

(declare-fun m!7742158 () Bool)

(assert (=> bm!638793 m!7742158))

(assert (=> b!7034137 d!2195059))

(declare-fun d!2195061 () Bool)

(declare-fun lt!2519706 () Int)

(assert (=> d!2195061 (>= lt!2519706 0)))

(declare-fun e!4228756 () Int)

(assert (=> d!2195061 (= lt!2519706 e!4228756)))

(declare-fun c!1308608 () Bool)

(assert (=> d!2195061 (= c!1308608 ((_ is Cons!67805) (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545))))))))

(assert (=> d!2195061 (= (contextDepthTotal!502 (Context!12927 (t!381696 (exprs!6963 lt!2519545)))) lt!2519706)))

(declare-fun b!7034361 () Bool)

(assert (=> b!7034361 (= e!4228756 (+ (regexDepthTotal!304 (h!74253 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545)))))) (contextDepthTotal!502 (Context!12927 (t!381696 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545)))))))))))

(declare-fun b!7034362 () Bool)

(assert (=> b!7034362 (= e!4228756 1)))

(assert (= (and d!2195061 c!1308608) b!7034361))

(assert (= (and d!2195061 (not c!1308608)) b!7034362))

(declare-fun m!7742160 () Bool)

(assert (=> b!7034361 m!7742160))

(declare-fun m!7742162 () Bool)

(assert (=> b!7034361 m!7742162))

(assert (=> b!7034137 d!2195061))

(declare-fun d!2195063 () Bool)

(declare-fun lt!2519707 () Int)

(assert (=> d!2195063 (>= lt!2519707 0)))

(declare-fun e!4228757 () Int)

(assert (=> d!2195063 (= lt!2519707 e!4228757)))

(declare-fun c!1308609 () Bool)

(assert (=> d!2195063 (= c!1308609 ((_ is Cons!67805) (exprs!6963 (h!74255 lt!2519525))))))

(assert (=> d!2195063 (= (contextDepthTotal!502 (h!74255 lt!2519525)) lt!2519707)))

(declare-fun b!7034363 () Bool)

(assert (=> b!7034363 (= e!4228757 (+ (regexDepthTotal!304 (h!74253 (exprs!6963 (h!74255 lt!2519525)))) (contextDepthTotal!502 (Context!12927 (t!381696 (exprs!6963 (h!74255 lt!2519525)))))))))

(declare-fun b!7034364 () Bool)

(assert (=> b!7034364 (= e!4228757 1)))

(assert (= (and d!2195063 c!1308609) b!7034363))

(assert (= (and d!2195063 (not c!1308609)) b!7034364))

(declare-fun m!7742164 () Bool)

(assert (=> b!7034363 m!7742164))

(declare-fun m!7742166 () Bool)

(assert (=> b!7034363 m!7742166))

(assert (=> b!7034139 d!2195063))

(declare-fun d!2195065 () Bool)

(declare-fun lt!2519708 () Int)

(assert (=> d!2195065 (>= lt!2519708 0)))

(declare-fun e!4228758 () Int)

(assert (=> d!2195065 (= lt!2519708 e!4228758)))

(declare-fun c!1308610 () Bool)

(assert (=> d!2195065 (= c!1308610 ((_ is Cons!67807) (t!381698 lt!2519525)))))

(assert (=> d!2195065 (= (zipperDepthTotal!530 (t!381698 lt!2519525)) lt!2519708)))

(declare-fun b!7034365 () Bool)

(assert (=> b!7034365 (= e!4228758 (+ (contextDepthTotal!502 (h!74255 (t!381698 lt!2519525))) (zipperDepthTotal!530 (t!381698 (t!381698 lt!2519525)))))))

(declare-fun b!7034366 () Bool)

(assert (=> b!7034366 (= e!4228758 0)))

(assert (= (and d!2195065 c!1308610) b!7034365))

(assert (= (and d!2195065 (not c!1308610)) b!7034366))

(declare-fun m!7742168 () Bool)

(assert (=> b!7034365 m!7742168))

(declare-fun m!7742170 () Bool)

(assert (=> b!7034365 m!7742170))

(assert (=> b!7034139 d!2195065))

(declare-fun d!2195067 () Bool)

(declare-fun c!1308613 () Bool)

(assert (=> d!2195067 (= c!1308613 ((_ is Nil!67806) lt!2519643))))

(declare-fun e!4228761 () (InoxSet C!35204))

(assert (=> d!2195067 (= (content!13538 lt!2519643) e!4228761)))

(declare-fun b!7034371 () Bool)

(assert (=> b!7034371 (= e!4228761 ((as const (Array C!35204 Bool)) false))))

(declare-fun b!7034372 () Bool)

(assert (=> b!7034372 (= e!4228761 ((_ map or) (store ((as const (Array C!35204 Bool)) false) (h!74254 lt!2519643) true) (content!13538 (t!381697 lt!2519643))))))

(assert (= (and d!2195067 c!1308613) b!7034371))

(assert (= (and d!2195067 (not c!1308613)) b!7034372))

(declare-fun m!7742172 () Bool)

(assert (=> b!7034372 m!7742172))

(declare-fun m!7742174 () Bool)

(assert (=> b!7034372 m!7742174))

(assert (=> d!2194835 d!2195067))

(declare-fun d!2195069 () Bool)

(declare-fun c!1308614 () Bool)

(assert (=> d!2195069 (= c!1308614 ((_ is Nil!67806) (_1!37343 lt!2519504)))))

(declare-fun e!4228762 () (InoxSet C!35204))

(assert (=> d!2195069 (= (content!13538 (_1!37343 lt!2519504)) e!4228762)))

(declare-fun b!7034373 () Bool)

(assert (=> b!7034373 (= e!4228762 ((as const (Array C!35204 Bool)) false))))

(declare-fun b!7034374 () Bool)

(assert (=> b!7034374 (= e!4228762 ((_ map or) (store ((as const (Array C!35204 Bool)) false) (h!74254 (_1!37343 lt!2519504)) true) (content!13538 (t!381697 (_1!37343 lt!2519504)))))))

(assert (= (and d!2195069 c!1308614) b!7034373))

(assert (= (and d!2195069 (not c!1308614)) b!7034374))

(declare-fun m!7742176 () Bool)

(assert (=> b!7034374 m!7742176))

(assert (=> b!7034374 m!7742040))

(assert (=> d!2194835 d!2195069))

(declare-fun d!2195071 () Bool)

(declare-fun c!1308615 () Bool)

(assert (=> d!2195071 (= c!1308615 ((_ is Nil!67806) (_2!37343 lt!2519504)))))

(declare-fun e!4228763 () (InoxSet C!35204))

(assert (=> d!2195071 (= (content!13538 (_2!37343 lt!2519504)) e!4228763)))

(declare-fun b!7034375 () Bool)

(assert (=> b!7034375 (= e!4228763 ((as const (Array C!35204 Bool)) false))))

(declare-fun b!7034376 () Bool)

(assert (=> b!7034376 (= e!4228763 ((_ map or) (store ((as const (Array C!35204 Bool)) false) (h!74254 (_2!37343 lt!2519504)) true) (content!13538 (t!381697 (_2!37343 lt!2519504)))))))

(assert (= (and d!2195071 c!1308615) b!7034375))

(assert (= (and d!2195071 (not c!1308615)) b!7034376))

(declare-fun m!7742178 () Bool)

(assert (=> b!7034376 m!7742178))

(declare-fun m!7742180 () Bool)

(assert (=> b!7034376 m!7742180))

(assert (=> d!2194835 d!2195071))

(declare-fun d!2195073 () Bool)

(declare-fun c!1308616 () Bool)

(assert (=> d!2195073 (= c!1308616 (isEmpty!39548 (tail!13557 s!7408)))))

(declare-fun e!4228764 () Bool)

(assert (=> d!2195073 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519505 (head!14266 s!7408)) (tail!13557 s!7408)) e!4228764)))

(declare-fun b!7034377 () Bool)

(assert (=> b!7034377 (= e!4228764 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519505 (head!14266 s!7408))))))

(declare-fun b!7034378 () Bool)

(assert (=> b!7034378 (= e!4228764 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519505 (head!14266 s!7408)) (head!14266 (tail!13557 s!7408))) (tail!13557 (tail!13557 s!7408))))))

(assert (= (and d!2195073 c!1308616) b!7034377))

(assert (= (and d!2195073 (not c!1308616)) b!7034378))

(assert (=> d!2195073 m!7741512))

(assert (=> d!2195073 m!7742002))

(assert (=> b!7034377 m!7741720))

(declare-fun m!7742182 () Bool)

(assert (=> b!7034377 m!7742182))

(assert (=> b!7034378 m!7741512))

(assert (=> b!7034378 m!7742006))

(assert (=> b!7034378 m!7741720))

(assert (=> b!7034378 m!7742006))

(declare-fun m!7742184 () Bool)

(assert (=> b!7034378 m!7742184))

(assert (=> b!7034378 m!7741512))

(assert (=> b!7034378 m!7742010))

(assert (=> b!7034378 m!7742184))

(assert (=> b!7034378 m!7742010))

(declare-fun m!7742186 () Bool)

(assert (=> b!7034378 m!7742186))

(assert (=> b!7034068 d!2195073))

(declare-fun bs!1871321 () Bool)

(declare-fun d!2195075 () Bool)

(assert (= bs!1871321 (and d!2195075 d!2194769)))

(declare-fun lambda!415088 () Int)

(assert (=> bs!1871321 (= (= (head!14266 s!7408) (h!74254 s!7408)) (= lambda!415088 lambda!415057))))

(declare-fun bs!1871322 () Bool)

(assert (= bs!1871322 (and d!2195075 d!2194967)))

(assert (=> bs!1871322 (= (= (head!14266 s!7408) (head!14266 (_1!37343 lt!2519504))) (= lambda!415088 lambda!415079))))

(declare-fun bs!1871323 () Bool)

(assert (= bs!1871323 (and d!2195075 d!2194845)))

(assert (=> bs!1871323 (= (= (head!14266 s!7408) (h!74254 s!7408)) (= lambda!415088 lambda!415069))))

(declare-fun bs!1871324 () Bool)

(assert (= bs!1871324 (and d!2195075 b!7033797)))

(assert (=> bs!1871324 (= (= (head!14266 s!7408) (h!74254 s!7408)) (= lambda!415088 lambda!415030))))

(declare-fun bs!1871325 () Bool)

(assert (= bs!1871325 (and d!2195075 d!2194981)))

(assert (=> bs!1871325 (= lambda!415088 lambda!415081)))

(assert (=> d!2195075 true))

(assert (=> d!2195075 (= (derivationStepZipper!2923 lt!2519505 (head!14266 s!7408)) (flatMap!2414 lt!2519505 lambda!415088))))

(declare-fun bs!1871326 () Bool)

(assert (= bs!1871326 d!2195075))

(declare-fun m!7742188 () Bool)

(assert (=> bs!1871326 m!7742188))

(assert (=> b!7034068 d!2195075))

(assert (=> b!7034068 d!2194983))

(assert (=> b!7034068 d!2194985))

(declare-fun bs!1871327 () Bool)

(declare-fun d!2195077 () Bool)

(assert (= bs!1871327 (and d!2195077 d!2195049)))

(declare-fun lambda!415089 () Int)

(assert (=> bs!1871327 (= lambda!415089 lambda!415087)))

(declare-fun bs!1871328 () Bool)

(assert (= bs!1871328 (and d!2195077 d!2194871)))

(assert (=> bs!1871328 (not (= lambda!415089 lambda!415076))))

(declare-fun bs!1871329 () Bool)

(assert (= bs!1871329 (and d!2195077 d!2195031)))

(assert (=> bs!1871329 (not (= lambda!415089 lambda!415084))))

(declare-fun bs!1871330 () Bool)

(assert (= bs!1871330 (and d!2195077 d!2194989)))

(assert (=> bs!1871330 (not (= lambda!415089 lambda!415082))))

(declare-fun bs!1871331 () Bool)

(assert (= bs!1871331 (and d!2195077 d!2194855)))

(assert (=> bs!1871331 (not (= lambda!415089 lambda!415073))))

(declare-fun bs!1871332 () Bool)

(assert (= bs!1871332 (and d!2195077 b!7033798)))

(assert (=> bs!1871332 (not (= lambda!415089 lambda!415027))))

(declare-fun bs!1871333 () Bool)

(assert (= bs!1871333 (and d!2195077 b!7033820)))

(assert (=> bs!1871333 (= lambda!415089 lambda!415031)))

(assert (=> d!2195077 (= (nullableZipper!2581 lt!2519510) (exists!3397 lt!2519510 lambda!415089))))

(declare-fun bs!1871334 () Bool)

(assert (= bs!1871334 d!2195077))

(declare-fun m!7742190 () Bool)

(assert (=> bs!1871334 m!7742190))

(assert (=> b!7033907 d!2195077))

(declare-fun d!2195079 () Bool)

(declare-fun c!1308617 () Bool)

(assert (=> d!2195079 (= c!1308617 (isEmpty!39548 (tail!13557 (t!381697 s!7408))))))

(declare-fun e!4228765 () Bool)

(assert (=> d!2195079 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519528 (head!14266 (t!381697 s!7408))) (tail!13557 (t!381697 s!7408))) e!4228765)))

(declare-fun b!7034379 () Bool)

(assert (=> b!7034379 (= e!4228765 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519528 (head!14266 (t!381697 s!7408)))))))

(declare-fun b!7034380 () Bool)

(assert (=> b!7034380 (= e!4228765 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519528 (head!14266 (t!381697 s!7408))) (head!14266 (tail!13557 (t!381697 s!7408)))) (tail!13557 (tail!13557 (t!381697 s!7408)))))))

(assert (= (and d!2195079 c!1308617) b!7034379))

(assert (= (and d!2195079 (not c!1308617)) b!7034380))

(assert (=> d!2195079 m!7741678))

(declare-fun m!7742192 () Bool)

(assert (=> d!2195079 m!7742192))

(assert (=> b!7034379 m!7741798))

(declare-fun m!7742194 () Bool)

(assert (=> b!7034379 m!7742194))

(assert (=> b!7034380 m!7741678))

(declare-fun m!7742196 () Bool)

(assert (=> b!7034380 m!7742196))

(assert (=> b!7034380 m!7741798))

(assert (=> b!7034380 m!7742196))

(declare-fun m!7742198 () Bool)

(assert (=> b!7034380 m!7742198))

(assert (=> b!7034380 m!7741678))

(declare-fun m!7742200 () Bool)

(assert (=> b!7034380 m!7742200))

(assert (=> b!7034380 m!7742198))

(assert (=> b!7034380 m!7742200))

(declare-fun m!7742202 () Bool)

(assert (=> b!7034380 m!7742202))

(assert (=> b!7034105 d!2195079))

(declare-fun bs!1871335 () Bool)

(declare-fun d!2195081 () Bool)

(assert (= bs!1871335 (and d!2195081 d!2194769)))

(declare-fun lambda!415090 () Int)

(assert (=> bs!1871335 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415090 lambda!415057))))

(declare-fun bs!1871336 () Bool)

(assert (= bs!1871336 (and d!2195081 d!2194967)))

(assert (=> bs!1871336 (= (= (head!14266 (t!381697 s!7408)) (head!14266 (_1!37343 lt!2519504))) (= lambda!415090 lambda!415079))))

(declare-fun bs!1871337 () Bool)

(assert (= bs!1871337 (and d!2195081 d!2194845)))

(assert (=> bs!1871337 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415090 lambda!415069))))

(declare-fun bs!1871338 () Bool)

(assert (= bs!1871338 (and d!2195081 b!7033797)))

(assert (=> bs!1871338 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415090 lambda!415030))))

(declare-fun bs!1871339 () Bool)

(assert (= bs!1871339 (and d!2195081 d!2194981)))

(assert (=> bs!1871339 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415090 lambda!415081))))

(declare-fun bs!1871340 () Bool)

(assert (= bs!1871340 (and d!2195081 d!2195075)))

(assert (=> bs!1871340 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415090 lambda!415088))))

(assert (=> d!2195081 true))

(assert (=> d!2195081 (= (derivationStepZipper!2923 lt!2519528 (head!14266 (t!381697 s!7408))) (flatMap!2414 lt!2519528 lambda!415090))))

(declare-fun bs!1871341 () Bool)

(assert (= bs!1871341 d!2195081))

(declare-fun m!7742204 () Bool)

(assert (=> bs!1871341 m!7742204))

(assert (=> b!7034105 d!2195081))

(declare-fun d!2195083 () Bool)

(assert (=> d!2195083 (= (head!14266 (t!381697 s!7408)) (h!74254 (t!381697 s!7408)))))

(assert (=> b!7034105 d!2195083))

(declare-fun d!2195085 () Bool)

(assert (=> d!2195085 (= (tail!13557 (t!381697 s!7408)) (t!381697 (t!381697 s!7408)))))

(assert (=> b!7034105 d!2195085))

(declare-fun d!2195087 () Bool)

(declare-fun lt!2519711 () Int)

(assert (=> d!2195087 (>= lt!2519711 0)))

(declare-fun e!4228768 () Int)

(assert (=> d!2195087 (= lt!2519711 e!4228768)))

(declare-fun c!1308620 () Bool)

(assert (=> d!2195087 (= c!1308620 ((_ is Nil!67806) lt!2519643))))

(assert (=> d!2195087 (= (size!41066 lt!2519643) lt!2519711)))

(declare-fun b!7034385 () Bool)

(assert (=> b!7034385 (= e!4228768 0)))

(declare-fun b!7034386 () Bool)

(assert (=> b!7034386 (= e!4228768 (+ 1 (size!41066 (t!381697 lt!2519643))))))

(assert (= (and d!2195087 c!1308620) b!7034385))

(assert (= (and d!2195087 (not c!1308620)) b!7034386))

(declare-fun m!7742206 () Bool)

(assert (=> b!7034386 m!7742206))

(assert (=> b!7034060 d!2195087))

(declare-fun d!2195089 () Bool)

(declare-fun lt!2519712 () Int)

(assert (=> d!2195089 (>= lt!2519712 0)))

(declare-fun e!4228769 () Int)

(assert (=> d!2195089 (= lt!2519712 e!4228769)))

(declare-fun c!1308621 () Bool)

(assert (=> d!2195089 (= c!1308621 ((_ is Nil!67806) (_1!37343 lt!2519504)))))

(assert (=> d!2195089 (= (size!41066 (_1!37343 lt!2519504)) lt!2519712)))

(declare-fun b!7034387 () Bool)

(assert (=> b!7034387 (= e!4228769 0)))

(declare-fun b!7034388 () Bool)

(assert (=> b!7034388 (= e!4228769 (+ 1 (size!41066 (t!381697 (_1!37343 lt!2519504)))))))

(assert (= (and d!2195089 c!1308621) b!7034387))

(assert (= (and d!2195089 (not c!1308621)) b!7034388))

(assert (=> b!7034388 m!7742034))

(assert (=> b!7034060 d!2195089))

(declare-fun d!2195091 () Bool)

(declare-fun lt!2519713 () Int)

(assert (=> d!2195091 (>= lt!2519713 0)))

(declare-fun e!4228770 () Int)

(assert (=> d!2195091 (= lt!2519713 e!4228770)))

(declare-fun c!1308622 () Bool)

(assert (=> d!2195091 (= c!1308622 ((_ is Nil!67806) (_2!37343 lt!2519504)))))

(assert (=> d!2195091 (= (size!41066 (_2!37343 lt!2519504)) lt!2519713)))

(declare-fun b!7034389 () Bool)

(assert (=> b!7034389 (= e!4228770 0)))

(declare-fun b!7034390 () Bool)

(assert (=> b!7034390 (= e!4228770 (+ 1 (size!41066 (t!381697 (_2!37343 lt!2519504)))))))

(assert (= (and d!2195091 c!1308622) b!7034389))

(assert (= (and d!2195091 (not c!1308622)) b!7034390))

(declare-fun m!7742208 () Bool)

(assert (=> b!7034390 m!7742208))

(assert (=> b!7034060 d!2195091))

(declare-fun d!2195093 () Bool)

(assert (=> d!2195093 (= (nullable!7178 (regOne!35446 (h!74253 (exprs!6963 lt!2519501)))) (nullableFct!2729 (regOne!35446 (h!74253 (exprs!6963 lt!2519501)))))))

(declare-fun bs!1871342 () Bool)

(assert (= bs!1871342 d!2195093))

(declare-fun m!7742210 () Bool)

(assert (=> bs!1871342 m!7742210))

(assert (=> b!7034176 d!2195093))

(declare-fun d!2195095 () Bool)

(declare-fun e!4228772 () Bool)

(assert (=> d!2195095 e!4228772))

(declare-fun res!2871561 () Bool)

(assert (=> d!2195095 (=> (not res!2871561) (not e!4228772))))

(declare-fun lt!2519714 () List!67929)

(assert (=> d!2195095 (= res!2871561 (= (content!13540 lt!2519714) ((_ map or) (content!13540 (t!381696 (exprs!6963 lt!2519501))) (content!13540 (exprs!6963 ct2!306)))))))

(declare-fun e!4228771 () List!67929)

(assert (=> d!2195095 (= lt!2519714 e!4228771)))

(declare-fun c!1308623 () Bool)

(assert (=> d!2195095 (= c!1308623 ((_ is Nil!67805) (t!381696 (exprs!6963 lt!2519501))))))

(assert (=> d!2195095 (= (++!15514 (t!381696 (exprs!6963 lt!2519501)) (exprs!6963 ct2!306)) lt!2519714)))

(declare-fun b!7034394 () Bool)

(assert (=> b!7034394 (= e!4228772 (or (not (= (exprs!6963 ct2!306) Nil!67805)) (= lt!2519714 (t!381696 (exprs!6963 lt!2519501)))))))

(declare-fun b!7034393 () Bool)

(declare-fun res!2871562 () Bool)

(assert (=> b!7034393 (=> (not res!2871562) (not e!4228772))))

(assert (=> b!7034393 (= res!2871562 (= (size!41067 lt!2519714) (+ (size!41067 (t!381696 (exprs!6963 lt!2519501))) (size!41067 (exprs!6963 ct2!306)))))))

(declare-fun b!7034392 () Bool)

(assert (=> b!7034392 (= e!4228771 (Cons!67805 (h!74253 (t!381696 (exprs!6963 lt!2519501))) (++!15514 (t!381696 (t!381696 (exprs!6963 lt!2519501))) (exprs!6963 ct2!306))))))

(declare-fun b!7034391 () Bool)

(assert (=> b!7034391 (= e!4228771 (exprs!6963 ct2!306))))

(assert (= (and d!2195095 c!1308623) b!7034391))

(assert (= (and d!2195095 (not c!1308623)) b!7034392))

(assert (= (and d!2195095 res!2871561) b!7034393))

(assert (= (and b!7034393 res!2871562) b!7034394))

(declare-fun m!7742212 () Bool)

(assert (=> d!2195095 m!7742212))

(assert (=> d!2195095 m!7741936))

(assert (=> d!2195095 m!7741832))

(declare-fun m!7742214 () Bool)

(assert (=> b!7034393 m!7742214))

(assert (=> b!7034393 m!7742044))

(assert (=> b!7034393 m!7741838))

(declare-fun m!7742216 () Bool)

(assert (=> b!7034392 m!7742216))

(assert (=> b!7034181 d!2195095))

(declare-fun d!2195097 () Bool)

(assert (=> d!2195097 (= (flatMap!2414 lt!2519523 lambda!415069) (choose!53277 lt!2519523 lambda!415069))))

(declare-fun bs!1871343 () Bool)

(assert (= bs!1871343 d!2195097))

(declare-fun m!7742218 () Bool)

(assert (=> bs!1871343 m!7742218))

(assert (=> d!2194845 d!2195097))

(assert (=> d!2194851 d!2194949))

(declare-fun d!2195099 () Bool)

(declare-fun c!1308624 () Bool)

(assert (=> d!2195099 (= c!1308624 (isEmpty!39548 (tail!13557 s!7408)))))

(declare-fun e!4228773 () Bool)

(assert (=> d!2195099 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519537 (head!14266 s!7408)) (tail!13557 s!7408)) e!4228773)))

(declare-fun b!7034395 () Bool)

(assert (=> b!7034395 (= e!4228773 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519537 (head!14266 s!7408))))))

(declare-fun b!7034396 () Bool)

(assert (=> b!7034396 (= e!4228773 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519537 (head!14266 s!7408)) (head!14266 (tail!13557 s!7408))) (tail!13557 (tail!13557 s!7408))))))

(assert (= (and d!2195099 c!1308624) b!7034395))

(assert (= (and d!2195099 (not c!1308624)) b!7034396))

(assert (=> d!2195099 m!7741512))

(assert (=> d!2195099 m!7742002))

(assert (=> b!7034395 m!7741778))

(declare-fun m!7742220 () Bool)

(assert (=> b!7034395 m!7742220))

(assert (=> b!7034396 m!7741512))

(assert (=> b!7034396 m!7742006))

(assert (=> b!7034396 m!7741778))

(assert (=> b!7034396 m!7742006))

(declare-fun m!7742222 () Bool)

(assert (=> b!7034396 m!7742222))

(assert (=> b!7034396 m!7741512))

(assert (=> b!7034396 m!7742010))

(assert (=> b!7034396 m!7742222))

(assert (=> b!7034396 m!7742010))

(declare-fun m!7742224 () Bool)

(assert (=> b!7034396 m!7742224))

(assert (=> b!7034097 d!2195099))

(declare-fun bs!1871344 () Bool)

(declare-fun d!2195101 () Bool)

(assert (= bs!1871344 (and d!2195101 d!2194769)))

(declare-fun lambda!415091 () Int)

(assert (=> bs!1871344 (= (= (head!14266 s!7408) (h!74254 s!7408)) (= lambda!415091 lambda!415057))))

(declare-fun bs!1871345 () Bool)

(assert (= bs!1871345 (and d!2195101 d!2194967)))

(assert (=> bs!1871345 (= (= (head!14266 s!7408) (head!14266 (_1!37343 lt!2519504))) (= lambda!415091 lambda!415079))))

(declare-fun bs!1871346 () Bool)

(assert (= bs!1871346 (and d!2195101 d!2194845)))

(assert (=> bs!1871346 (= (= (head!14266 s!7408) (h!74254 s!7408)) (= lambda!415091 lambda!415069))))

(declare-fun bs!1871347 () Bool)

(assert (= bs!1871347 (and d!2195101 b!7033797)))

(assert (=> bs!1871347 (= (= (head!14266 s!7408) (h!74254 s!7408)) (= lambda!415091 lambda!415030))))

(declare-fun bs!1871348 () Bool)

(assert (= bs!1871348 (and d!2195101 d!2194981)))

(assert (=> bs!1871348 (= lambda!415091 lambda!415081)))

(declare-fun bs!1871349 () Bool)

(assert (= bs!1871349 (and d!2195101 d!2195081)))

(assert (=> bs!1871349 (= (= (head!14266 s!7408) (head!14266 (t!381697 s!7408))) (= lambda!415091 lambda!415090))))

(declare-fun bs!1871350 () Bool)

(assert (= bs!1871350 (and d!2195101 d!2195075)))

(assert (=> bs!1871350 (= lambda!415091 lambda!415088)))

(assert (=> d!2195101 true))

(assert (=> d!2195101 (= (derivationStepZipper!2923 lt!2519537 (head!14266 s!7408)) (flatMap!2414 lt!2519537 lambda!415091))))

(declare-fun bs!1871351 () Bool)

(assert (= bs!1871351 d!2195101))

(declare-fun m!7742226 () Bool)

(assert (=> bs!1871351 m!7742226))

(assert (=> b!7034097 d!2195101))

(assert (=> b!7034097 d!2194983))

(assert (=> b!7034097 d!2194985))

(assert (=> d!2194879 d!2195023))

(declare-fun bs!1871352 () Bool)

(declare-fun d!2195103 () Bool)

(assert (= bs!1871352 (and d!2195103 d!2195077)))

(declare-fun lambda!415092 () Int)

(assert (=> bs!1871352 (= lambda!415092 lambda!415089)))

(declare-fun bs!1871353 () Bool)

(assert (= bs!1871353 (and d!2195103 d!2195049)))

(assert (=> bs!1871353 (= lambda!415092 lambda!415087)))

(declare-fun bs!1871354 () Bool)

(assert (= bs!1871354 (and d!2195103 d!2194871)))

(assert (=> bs!1871354 (not (= lambda!415092 lambda!415076))))

(declare-fun bs!1871355 () Bool)

(assert (= bs!1871355 (and d!2195103 d!2195031)))

(assert (=> bs!1871355 (not (= lambda!415092 lambda!415084))))

(declare-fun bs!1871356 () Bool)

(assert (= bs!1871356 (and d!2195103 d!2194989)))

(assert (=> bs!1871356 (not (= lambda!415092 lambda!415082))))

(declare-fun bs!1871357 () Bool)

(assert (= bs!1871357 (and d!2195103 d!2194855)))

(assert (=> bs!1871357 (not (= lambda!415092 lambda!415073))))

(declare-fun bs!1871358 () Bool)

(assert (= bs!1871358 (and d!2195103 b!7033798)))

(assert (=> bs!1871358 (not (= lambda!415092 lambda!415027))))

(declare-fun bs!1871359 () Bool)

(assert (= bs!1871359 (and d!2195103 b!7033820)))

(assert (=> bs!1871359 (= lambda!415092 lambda!415031)))

(assert (=> d!2195103 (= (nullableZipper!2581 lt!2519514) (exists!3397 lt!2519514 lambda!415092))))

(declare-fun bs!1871360 () Bool)

(assert (= bs!1871360 d!2195103))

(declare-fun m!7742228 () Bool)

(assert (=> bs!1871360 m!7742228))

(assert (=> b!7033903 d!2195103))

(declare-fun b!7034397 () Bool)

(declare-fun e!4228775 () Int)

(declare-fun e!4228776 () Int)

(assert (=> b!7034397 (= e!4228775 e!4228776)))

(declare-fun c!1308628 () Bool)

(assert (=> b!7034397 (= c!1308628 ((_ is Star!17467) (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun bm!638794 () Bool)

(declare-fun call!638799 () Int)

(declare-fun call!638801 () Int)

(assert (=> bm!638794 (= call!638799 call!638801)))

(declare-fun b!7034398 () Bool)

(declare-fun e!4228777 () Int)

(assert (=> b!7034398 (= e!4228777 1)))

(declare-fun bm!638795 () Bool)

(declare-fun call!638800 () Int)

(declare-fun c!1308626 () Bool)

(assert (=> bm!638795 (= call!638800 (regexDepthTotal!304 (ite c!1308626 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))))))

(declare-fun b!7034399 () Bool)

(assert (=> b!7034399 (= c!1308626 ((_ is Union!17467) (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun e!4228774 () Int)

(assert (=> b!7034399 (= e!4228776 e!4228774)))

(declare-fun d!2195105 () Bool)

(declare-fun lt!2519715 () Int)

(assert (=> d!2195105 (> lt!2519715 0)))

(assert (=> d!2195105 (= lt!2519715 e!4228775)))

(declare-fun c!1308625 () Bool)

(assert (=> d!2195105 (= c!1308625 ((_ is ElementMatch!17467) (h!74253 (exprs!6963 lt!2519501))))))

(assert (=> d!2195105 (= (regexDepthTotal!304 (h!74253 (exprs!6963 lt!2519501))) lt!2519715)))

(declare-fun b!7034400 () Bool)

(assert (=> b!7034400 (= e!4228777 (+ 1 call!638800 call!638799))))

(declare-fun bm!638796 () Bool)

(assert (=> bm!638796 (= call!638801 (regexDepthTotal!304 (ite c!1308628 (reg!17796 (h!74253 (exprs!6963 lt!2519501))) (ite c!1308626 (regOne!35447 (h!74253 (exprs!6963 lt!2519501))) (regTwo!35446 (h!74253 (exprs!6963 lt!2519501)))))))))

(declare-fun b!7034401 () Bool)

(assert (=> b!7034401 (= e!4228775 1)))

(declare-fun b!7034402 () Bool)

(assert (=> b!7034402 (= e!4228774 (+ 1 call!638799 call!638800))))

(declare-fun b!7034403 () Bool)

(assert (=> b!7034403 (= e!4228776 (+ 1 call!638801))))

(declare-fun b!7034404 () Bool)

(assert (=> b!7034404 (= e!4228774 e!4228777)))

(declare-fun c!1308627 () Bool)

(assert (=> b!7034404 (= c!1308627 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519501))))))

(assert (= (and d!2195105 c!1308625) b!7034401))

(assert (= (and d!2195105 (not c!1308625)) b!7034397))

(assert (= (and b!7034397 c!1308628) b!7034403))

(assert (= (and b!7034397 (not c!1308628)) b!7034399))

(assert (= (and b!7034399 c!1308626) b!7034402))

(assert (= (and b!7034399 (not c!1308626)) b!7034404))

(assert (= (and b!7034404 c!1308627) b!7034400))

(assert (= (and b!7034404 (not c!1308627)) b!7034398))

(assert (= (or b!7034402 b!7034400) bm!638795))

(assert (= (or b!7034402 b!7034400) bm!638794))

(assert (= (or b!7034403 bm!638794) bm!638796))

(declare-fun m!7742230 () Bool)

(assert (=> bm!638795 m!7742230))

(declare-fun m!7742232 () Bool)

(assert (=> bm!638796 m!7742232))

(assert (=> b!7034123 d!2195105))

(declare-fun d!2195107 () Bool)

(declare-fun lt!2519716 () Int)

(assert (=> d!2195107 (>= lt!2519716 0)))

(declare-fun e!4228778 () Int)

(assert (=> d!2195107 (= lt!2519716 e!4228778)))

(declare-fun c!1308629 () Bool)

(assert (=> d!2195107 (= c!1308629 ((_ is Cons!67805) (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519501))))))))

(assert (=> d!2195107 (= (contextDepthTotal!502 (Context!12927 (t!381696 (exprs!6963 lt!2519501)))) lt!2519716)))

(declare-fun b!7034405 () Bool)

(assert (=> b!7034405 (= e!4228778 (+ (regexDepthTotal!304 (h!74253 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519501)))))) (contextDepthTotal!502 (Context!12927 (t!381696 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519501)))))))))))

(declare-fun b!7034406 () Bool)

(assert (=> b!7034406 (= e!4228778 1)))

(assert (= (and d!2195107 c!1308629) b!7034405))

(assert (= (and d!2195107 (not c!1308629)) b!7034406))

(declare-fun m!7742234 () Bool)

(assert (=> b!7034405 m!7742234))

(declare-fun m!7742236 () Bool)

(assert (=> b!7034405 m!7742236))

(assert (=> b!7034123 d!2195107))

(assert (=> d!2194873 d!2194949))

(declare-fun d!2195109 () Bool)

(declare-fun res!2871567 () Bool)

(declare-fun e!4228783 () Bool)

(assert (=> d!2195109 (=> res!2871567 e!4228783)))

(assert (=> d!2195109 (= res!2871567 ((_ is Nil!67807) lt!2519658))))

(assert (=> d!2195109 (= (noDuplicate!2629 lt!2519658) e!4228783)))

(declare-fun b!7034411 () Bool)

(declare-fun e!4228784 () Bool)

(assert (=> b!7034411 (= e!4228783 e!4228784)))

(declare-fun res!2871568 () Bool)

(assert (=> b!7034411 (=> (not res!2871568) (not e!4228784))))

(assert (=> b!7034411 (= res!2871568 (not (contains!20458 (t!381698 lt!2519658) (h!74255 lt!2519658))))))

(declare-fun b!7034412 () Bool)

(assert (=> b!7034412 (= e!4228784 (noDuplicate!2629 (t!381698 lt!2519658)))))

(assert (= (and d!2195109 (not res!2871567)) b!7034411))

(assert (= (and b!7034411 res!2871568) b!7034412))

(declare-fun m!7742238 () Bool)

(assert (=> b!7034411 m!7742238))

(declare-fun m!7742240 () Bool)

(assert (=> b!7034412 m!7742240))

(assert (=> d!2194877 d!2195109))

(declare-fun d!2195111 () Bool)

(declare-fun e!4228791 () Bool)

(assert (=> d!2195111 e!4228791))

(declare-fun res!2871574 () Bool)

(assert (=> d!2195111 (=> (not res!2871574) (not e!4228791))))

(declare-fun res!2871573 () List!67931)

(assert (=> d!2195111 (= res!2871574 (noDuplicate!2629 res!2871573))))

(declare-fun e!4228793 () Bool)

(assert (=> d!2195111 e!4228793))

(assert (=> d!2195111 (= (choose!53285 lt!2519543) res!2871573)))

(declare-fun b!7034420 () Bool)

(declare-fun e!4228792 () Bool)

(declare-fun tp!1936625 () Bool)

(assert (=> b!7034420 (= e!4228792 tp!1936625)))

(declare-fun tp!1936624 () Bool)

(declare-fun b!7034419 () Bool)

(assert (=> b!7034419 (= e!4228793 (and (inv!86526 (h!74255 res!2871573)) e!4228792 tp!1936624))))

(declare-fun b!7034421 () Bool)

(assert (=> b!7034421 (= e!4228791 (= (content!13539 res!2871573) lt!2519543))))

(assert (= b!7034419 b!7034420))

(assert (= (and d!2195111 ((_ is Cons!67807) res!2871573)) b!7034419))

(assert (= (and d!2195111 res!2871574) b!7034421))

(declare-fun m!7742242 () Bool)

(assert (=> d!2195111 m!7742242))

(declare-fun m!7742244 () Bool)

(assert (=> b!7034419 m!7742244))

(declare-fun m!7742246 () Bool)

(assert (=> b!7034421 m!7742246))

(assert (=> d!2194877 d!2195111))

(declare-fun d!2195113 () Bool)

(assert (=> d!2195113 (= (isEmpty!39550 lt!2519498) (not ((_ is Some!16871) lt!2519498)))))

(assert (=> d!2194795 d!2195113))

(declare-fun b!7034425 () Bool)

(declare-fun e!4228794 () Bool)

(declare-fun lt!2519717 () List!67930)

(assert (=> b!7034425 (= e!4228794 (or (not (= (t!381697 s!7408) Nil!67806)) (= lt!2519717 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)))))))

(declare-fun b!7034424 () Bool)

(declare-fun res!2871575 () Bool)

(assert (=> b!7034424 (=> (not res!2871575) (not e!4228794))))

(assert (=> b!7034424 (= res!2871575 (= (size!41066 lt!2519717) (+ (size!41066 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806))) (size!41066 (t!381697 s!7408)))))))

(declare-fun b!7034423 () Bool)

(declare-fun e!4228795 () List!67930)

(assert (=> b!7034423 (= e!4228795 (Cons!67806 (h!74254 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806))) (++!15515 (t!381697 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806))) (t!381697 s!7408))))))

(declare-fun d!2195115 () Bool)

(assert (=> d!2195115 e!4228794))

(declare-fun res!2871576 () Bool)

(assert (=> d!2195115 (=> (not res!2871576) (not e!4228794))))

(assert (=> d!2195115 (= res!2871576 (= (content!13538 lt!2519717) ((_ map or) (content!13538 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806))) (content!13538 (t!381697 s!7408)))))))

(assert (=> d!2195115 (= lt!2519717 e!4228795)))

(declare-fun c!1308630 () Bool)

(assert (=> d!2195115 (= c!1308630 ((_ is Nil!67806) (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806))))))

(assert (=> d!2195115 (= (++!15515 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (t!381697 s!7408)) lt!2519717)))

(declare-fun b!7034422 () Bool)

(assert (=> b!7034422 (= e!4228795 (t!381697 s!7408))))

(assert (= (and d!2195115 c!1308630) b!7034422))

(assert (= (and d!2195115 (not c!1308630)) b!7034423))

(assert (= (and d!2195115 res!2871576) b!7034424))

(assert (= (and b!7034424 res!2871575) b!7034425))

(declare-fun m!7742248 () Bool)

(assert (=> b!7034424 m!7742248))

(assert (=> b!7034424 m!7741644))

(declare-fun m!7742250 () Bool)

(assert (=> b!7034424 m!7742250))

(declare-fun m!7742252 () Bool)

(assert (=> b!7034424 m!7742252))

(declare-fun m!7742254 () Bool)

(assert (=> b!7034423 m!7742254))

(declare-fun m!7742256 () Bool)

(assert (=> d!2195115 m!7742256))

(assert (=> d!2195115 m!7741644))

(declare-fun m!7742258 () Bool)

(assert (=> d!2195115 m!7742258))

(declare-fun m!7742260 () Bool)

(assert (=> d!2195115 m!7742260))

(assert (=> b!7034024 d!2195115))

(declare-fun b!7034429 () Bool)

(declare-fun e!4228796 () Bool)

(declare-fun lt!2519718 () List!67930)

(assert (=> b!7034429 (= e!4228796 (or (not (= (Cons!67806 (h!74254 s!7408) Nil!67806) Nil!67806)) (= lt!2519718 Nil!67806)))))

(declare-fun b!7034428 () Bool)

(declare-fun res!2871577 () Bool)

(assert (=> b!7034428 (=> (not res!2871577) (not e!4228796))))

(assert (=> b!7034428 (= res!2871577 (= (size!41066 lt!2519718) (+ (size!41066 Nil!67806) (size!41066 (Cons!67806 (h!74254 s!7408) Nil!67806)))))))

(declare-fun b!7034427 () Bool)

(declare-fun e!4228797 () List!67930)

(assert (=> b!7034427 (= e!4228797 (Cons!67806 (h!74254 Nil!67806) (++!15515 (t!381697 Nil!67806) (Cons!67806 (h!74254 s!7408) Nil!67806))))))

(declare-fun d!2195117 () Bool)

(assert (=> d!2195117 e!4228796))

(declare-fun res!2871578 () Bool)

(assert (=> d!2195117 (=> (not res!2871578) (not e!4228796))))

(assert (=> d!2195117 (= res!2871578 (= (content!13538 lt!2519718) ((_ map or) (content!13538 Nil!67806) (content!13538 (Cons!67806 (h!74254 s!7408) Nil!67806)))))))

(assert (=> d!2195117 (= lt!2519718 e!4228797)))

(declare-fun c!1308631 () Bool)

(assert (=> d!2195117 (= c!1308631 ((_ is Nil!67806) Nil!67806))))

(assert (=> d!2195117 (= (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) lt!2519718)))

(declare-fun b!7034426 () Bool)

(assert (=> b!7034426 (= e!4228797 (Cons!67806 (h!74254 s!7408) Nil!67806))))

(assert (= (and d!2195117 c!1308631) b!7034426))

(assert (= (and d!2195117 (not c!1308631)) b!7034427))

(assert (= (and d!2195117 res!2871578) b!7034428))

(assert (= (and b!7034428 res!2871577) b!7034429))

(declare-fun m!7742262 () Bool)

(assert (=> b!7034428 m!7742262))

(declare-fun m!7742264 () Bool)

(assert (=> b!7034428 m!7742264))

(declare-fun m!7742266 () Bool)

(assert (=> b!7034428 m!7742266))

(declare-fun m!7742268 () Bool)

(assert (=> b!7034427 m!7742268))

(declare-fun m!7742270 () Bool)

(assert (=> d!2195117 m!7742270))

(declare-fun m!7742272 () Bool)

(assert (=> d!2195117 m!7742272))

(declare-fun m!7742274 () Bool)

(assert (=> d!2195117 m!7742274))

(assert (=> b!7034024 d!2195117))

(declare-fun d!2195119 () Bool)

(assert (=> d!2195119 (= (++!15515 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (t!381697 s!7408)) s!7408)))

(declare-fun lt!2519721 () Unit!161608)

(declare-fun choose!53291 (List!67930 C!35204 List!67930 List!67930) Unit!161608)

(assert (=> d!2195119 (= lt!2519721 (choose!53291 Nil!67806 (h!74254 s!7408) (t!381697 s!7408) s!7408))))

(assert (=> d!2195119 (= (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) (t!381697 s!7408))) s!7408)))

(assert (=> d!2195119 (= (lemmaMoveElementToOtherListKeepsConcatEq!2924 Nil!67806 (h!74254 s!7408) (t!381697 s!7408) s!7408) lt!2519721)))

(declare-fun bs!1871361 () Bool)

(assert (= bs!1871361 d!2195119))

(assert (=> bs!1871361 m!7741644))

(assert (=> bs!1871361 m!7741644))

(assert (=> bs!1871361 m!7741646))

(declare-fun m!7742276 () Bool)

(assert (=> bs!1871361 m!7742276))

(declare-fun m!7742278 () Bool)

(assert (=> bs!1871361 m!7742278))

(assert (=> b!7034024 d!2195119))

(declare-fun b!7034430 () Bool)

(declare-fun res!2871583 () Bool)

(declare-fun e!4228802 () Bool)

(assert (=> b!7034430 (=> (not res!2871583) (not e!4228802))))

(declare-fun lt!2519724 () Option!16872)

(assert (=> b!7034430 (= res!2871583 (matchZipper!3007 lt!2519514 (_2!37343 (get!23756 lt!2519724))))))

(declare-fun b!7034431 () Bool)

(declare-fun e!4228799 () Option!16872)

(assert (=> b!7034431 (= e!4228799 None!16871)))

(declare-fun b!7034432 () Bool)

(declare-fun e!4228798 () Option!16872)

(assert (=> b!7034432 (= e!4228798 e!4228799)))

(declare-fun c!1308632 () Bool)

(assert (=> b!7034432 (= c!1308632 ((_ is Nil!67806) (t!381697 s!7408)))))

(declare-fun b!7034433 () Bool)

(declare-fun lt!2519722 () Unit!161608)

(declare-fun lt!2519723 () Unit!161608)

(assert (=> b!7034433 (= lt!2519722 lt!2519723)))

(assert (=> b!7034433 (= (++!15515 (++!15515 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (Cons!67806 (h!74254 (t!381697 s!7408)) Nil!67806)) (t!381697 (t!381697 s!7408))) s!7408)))

(assert (=> b!7034433 (= lt!2519723 (lemmaMoveElementToOtherListKeepsConcatEq!2924 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (h!74254 (t!381697 s!7408)) (t!381697 (t!381697 s!7408)) s!7408))))

(assert (=> b!7034433 (= e!4228799 (findConcatSeparationZippers!388 lt!2519520 lt!2519514 (++!15515 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (Cons!67806 (h!74254 (t!381697 s!7408)) Nil!67806)) (t!381697 (t!381697 s!7408)) s!7408))))

(declare-fun b!7034434 () Bool)

(declare-fun e!4228801 () Bool)

(assert (=> b!7034434 (= e!4228801 (not (isDefined!13573 lt!2519724)))))

(declare-fun b!7034435 () Bool)

(declare-fun e!4228800 () Bool)

(assert (=> b!7034435 (= e!4228800 (matchZipper!3007 lt!2519514 (t!381697 s!7408)))))

(declare-fun d!2195123 () Bool)

(assert (=> d!2195123 e!4228801))

(declare-fun res!2871579 () Bool)

(assert (=> d!2195123 (=> res!2871579 e!4228801)))

(assert (=> d!2195123 (= res!2871579 e!4228802)))

(declare-fun res!2871581 () Bool)

(assert (=> d!2195123 (=> (not res!2871581) (not e!4228802))))

(assert (=> d!2195123 (= res!2871581 (isDefined!13573 lt!2519724))))

(assert (=> d!2195123 (= lt!2519724 e!4228798)))

(declare-fun c!1308633 () Bool)

(assert (=> d!2195123 (= c!1308633 e!4228800)))

(declare-fun res!2871582 () Bool)

(assert (=> d!2195123 (=> (not res!2871582) (not e!4228800))))

(assert (=> d!2195123 (= res!2871582 (matchZipper!3007 lt!2519520 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806))))))

(assert (=> d!2195123 (= (++!15515 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (t!381697 s!7408)) s!7408)))

(assert (=> d!2195123 (= (findConcatSeparationZippers!388 lt!2519520 lt!2519514 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (t!381697 s!7408) s!7408) lt!2519724)))

(declare-fun b!7034436 () Bool)

(assert (=> b!7034436 (= e!4228798 (Some!16871 (tuple2!68081 (++!15515 Nil!67806 (Cons!67806 (h!74254 s!7408) Nil!67806)) (t!381697 s!7408))))))

(declare-fun b!7034437 () Bool)

(assert (=> b!7034437 (= e!4228802 (= (++!15515 (_1!37343 (get!23756 lt!2519724)) (_2!37343 (get!23756 lt!2519724))) s!7408))))

(declare-fun b!7034438 () Bool)

(declare-fun res!2871580 () Bool)

(assert (=> b!7034438 (=> (not res!2871580) (not e!4228802))))

(assert (=> b!7034438 (= res!2871580 (matchZipper!3007 lt!2519520 (_1!37343 (get!23756 lt!2519724))))))

(assert (= (and d!2195123 res!2871582) b!7034435))

(assert (= (and d!2195123 c!1308633) b!7034436))

(assert (= (and d!2195123 (not c!1308633)) b!7034432))

(assert (= (and b!7034432 c!1308632) b!7034431))

(assert (= (and b!7034432 (not c!1308632)) b!7034433))

(assert (= (and d!2195123 res!2871581) b!7034438))

(assert (= (and b!7034438 res!2871580) b!7034430))

(assert (= (and b!7034430 res!2871583) b!7034437))

(assert (= (and d!2195123 (not res!2871579)) b!7034434))

(assert (=> b!7034433 m!7741644))

(declare-fun m!7742280 () Bool)

(assert (=> b!7034433 m!7742280))

(assert (=> b!7034433 m!7742280))

(declare-fun m!7742282 () Bool)

(assert (=> b!7034433 m!7742282))

(assert (=> b!7034433 m!7741644))

(declare-fun m!7742284 () Bool)

(assert (=> b!7034433 m!7742284))

(assert (=> b!7034433 m!7742280))

(declare-fun m!7742286 () Bool)

(assert (=> b!7034433 m!7742286))

(declare-fun m!7742288 () Bool)

(assert (=> b!7034438 m!7742288))

(declare-fun m!7742290 () Bool)

(assert (=> b!7034438 m!7742290))

(assert (=> b!7034430 m!7742288))

(declare-fun m!7742292 () Bool)

(assert (=> b!7034430 m!7742292))

(declare-fun m!7742294 () Bool)

(assert (=> b!7034435 m!7742294))

(declare-fun m!7742296 () Bool)

(assert (=> b!7034434 m!7742296))

(assert (=> b!7034437 m!7742288))

(declare-fun m!7742298 () Bool)

(assert (=> b!7034437 m!7742298))

(assert (=> d!2195123 m!7742296))

(assert (=> d!2195123 m!7741644))

(declare-fun m!7742300 () Bool)

(assert (=> d!2195123 m!7742300))

(assert (=> d!2195123 m!7741644))

(assert (=> d!2195123 m!7741646))

(assert (=> b!7034024 d!2195123))

(declare-fun d!2195125 () Bool)

(assert (=> d!2195125 (= (nullable!7178 (h!74253 (exprs!6963 lt!2519527))) (nullableFct!2729 (h!74253 (exprs!6963 lt!2519527))))))

(declare-fun bs!1871362 () Bool)

(assert (= bs!1871362 d!2195125))

(declare-fun m!7742302 () Bool)

(assert (=> bs!1871362 m!7742302))

(assert (=> b!7033959 d!2195125))

(declare-fun d!2195127 () Bool)

(declare-fun c!1308638 () Bool)

(assert (=> d!2195127 (= c!1308638 (and ((_ is ElementMatch!17467) (h!74253 (exprs!6963 lt!2519536))) (= (c!1308424 (h!74253 (exprs!6963 lt!2519536))) (h!74254 s!7408))))))

(declare-fun e!4228812 () (InoxSet Context!12926))

(assert (=> d!2195127 (= (derivationStepZipperDown!2131 (h!74253 (exprs!6963 lt!2519536)) (Context!12927 (t!381696 (exprs!6963 lt!2519536))) (h!74254 s!7408)) e!4228812)))

(declare-fun c!1308635 () Bool)

(declare-fun c!1308637 () Bool)

(declare-fun bm!638797 () Bool)

(declare-fun call!638804 () List!67929)

(assert (=> bm!638797 (= call!638804 ($colon$colon!2575 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519536)))) (ite (or c!1308635 c!1308637) (regTwo!35446 (h!74253 (exprs!6963 lt!2519536))) (h!74253 (exprs!6963 lt!2519536)))))))

(declare-fun b!7034443 () Bool)

(declare-fun e!4228811 () (InoxSet Context!12926))

(declare-fun call!638807 () (InoxSet Context!12926))

(assert (=> b!7034443 (= e!4228811 call!638807)))

(declare-fun b!7034444 () Bool)

(declare-fun e!4228809 () (InoxSet Context!12926))

(assert (=> b!7034444 (= e!4228812 e!4228809)))

(declare-fun c!1308634 () Bool)

(assert (=> b!7034444 (= c!1308634 ((_ is Union!17467) (h!74253 (exprs!6963 lt!2519536))))))

(declare-fun bm!638798 () Bool)

(declare-fun call!638803 () (InoxSet Context!12926))

(declare-fun call!638806 () (InoxSet Context!12926))

(assert (=> bm!638798 (= call!638803 call!638806)))

(declare-fun call!638802 () List!67929)

(declare-fun bm!638799 () Bool)

(assert (=> bm!638799 (= call!638806 (derivationStepZipperDown!2131 (ite c!1308634 (regOne!35447 (h!74253 (exprs!6963 lt!2519536))) (ite c!1308635 (regTwo!35446 (h!74253 (exprs!6963 lt!2519536))) (ite c!1308637 (regOne!35446 (h!74253 (exprs!6963 lt!2519536))) (reg!17796 (h!74253 (exprs!6963 lt!2519536)))))) (ite (or c!1308634 c!1308635) (Context!12927 (t!381696 (exprs!6963 lt!2519536))) (Context!12927 call!638802)) (h!74254 s!7408)))))

(declare-fun b!7034445 () Bool)

(assert (=> b!7034445 (= e!4228812 (store ((as const (Array Context!12926 Bool)) false) (Context!12927 (t!381696 (exprs!6963 lt!2519536))) true))))

(declare-fun b!7034446 () Bool)

(declare-fun e!4228807 () Bool)

(assert (=> b!7034446 (= c!1308635 e!4228807)))

(declare-fun res!2871588 () Bool)

(assert (=> b!7034446 (=> (not res!2871588) (not e!4228807))))

(assert (=> b!7034446 (= res!2871588 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519536))))))

(declare-fun e!4228808 () (InoxSet Context!12926))

(assert (=> b!7034446 (= e!4228809 e!4228808)))

(declare-fun b!7034447 () Bool)

(declare-fun call!638805 () (InoxSet Context!12926))

(assert (=> b!7034447 (= e!4228808 ((_ map or) call!638805 call!638803))))

(declare-fun bm!638800 () Bool)

(assert (=> bm!638800 (= call!638805 (derivationStepZipperDown!2131 (ite c!1308634 (regTwo!35447 (h!74253 (exprs!6963 lt!2519536))) (regOne!35446 (h!74253 (exprs!6963 lt!2519536)))) (ite c!1308634 (Context!12927 (t!381696 (exprs!6963 lt!2519536))) (Context!12927 call!638804)) (h!74254 s!7408)))))

(declare-fun b!7034448 () Bool)

(declare-fun e!4228810 () (InoxSet Context!12926))

(assert (=> b!7034448 (= e!4228810 ((as const (Array Context!12926 Bool)) false))))

(declare-fun bm!638801 () Bool)

(assert (=> bm!638801 (= call!638807 call!638803)))

(declare-fun bm!638802 () Bool)

(assert (=> bm!638802 (= call!638802 call!638804)))

(declare-fun b!7034449 () Bool)

(assert (=> b!7034449 (= e!4228810 call!638807)))

(declare-fun b!7034450 () Bool)

(assert (=> b!7034450 (= e!4228807 (nullable!7178 (regOne!35446 (h!74253 (exprs!6963 lt!2519536)))))))

(declare-fun b!7034451 () Bool)

(assert (=> b!7034451 (= e!4228809 ((_ map or) call!638806 call!638805))))

(declare-fun b!7034452 () Bool)

(declare-fun c!1308636 () Bool)

(assert (=> b!7034452 (= c!1308636 ((_ is Star!17467) (h!74253 (exprs!6963 lt!2519536))))))

(assert (=> b!7034452 (= e!4228811 e!4228810)))

(declare-fun b!7034453 () Bool)

(assert (=> b!7034453 (= e!4228808 e!4228811)))

(assert (=> b!7034453 (= c!1308637 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519536))))))

(assert (= (and d!2195127 c!1308638) b!7034445))

(assert (= (and d!2195127 (not c!1308638)) b!7034444))

(assert (= (and b!7034444 c!1308634) b!7034451))

(assert (= (and b!7034444 (not c!1308634)) b!7034446))

(assert (= (and b!7034446 res!2871588) b!7034450))

(assert (= (and b!7034446 c!1308635) b!7034447))

(assert (= (and b!7034446 (not c!1308635)) b!7034453))

(assert (= (and b!7034453 c!1308637) b!7034443))

(assert (= (and b!7034453 (not c!1308637)) b!7034452))

(assert (= (and b!7034452 c!1308636) b!7034449))

(assert (= (and b!7034452 (not c!1308636)) b!7034448))

(assert (= (or b!7034443 b!7034449) bm!638802))

(assert (= (or b!7034443 b!7034449) bm!638801))

(assert (= (or b!7034447 bm!638801) bm!638798))

(assert (= (or b!7034447 bm!638802) bm!638797))

(assert (= (or b!7034451 bm!638798) bm!638799))

(assert (= (or b!7034451 b!7034447) bm!638800))

(declare-fun m!7742308 () Bool)

(assert (=> bm!638800 m!7742308))

(declare-fun m!7742310 () Bool)

(assert (=> bm!638797 m!7742310))

(declare-fun m!7742312 () Bool)

(assert (=> bm!638799 m!7742312))

(declare-fun m!7742314 () Bool)

(assert (=> b!7034450 m!7742314))

(declare-fun m!7742316 () Bool)

(assert (=> b!7034445 m!7742316))

(assert (=> bm!638752 d!2195127))

(declare-fun d!2195131 () Bool)

(declare-fun lt!2519725 () Int)

(assert (=> d!2195131 (>= lt!2519725 0)))

(declare-fun e!4228815 () Int)

(assert (=> d!2195131 (= lt!2519725 e!4228815)))

(declare-fun c!1308639 () Bool)

(assert (=> d!2195131 (= c!1308639 ((_ is Cons!67805) (exprs!6963 (h!74255 (Cons!67807 lt!2519545 Nil!67807)))))))

(assert (=> d!2195131 (= (contextDepthTotal!502 (h!74255 (Cons!67807 lt!2519545 Nil!67807))) lt!2519725)))

(declare-fun b!7034456 () Bool)

(assert (=> b!7034456 (= e!4228815 (+ (regexDepthTotal!304 (h!74253 (exprs!6963 (h!74255 (Cons!67807 lt!2519545 Nil!67807))))) (contextDepthTotal!502 (Context!12927 (t!381696 (exprs!6963 (h!74255 (Cons!67807 lt!2519545 Nil!67807))))))))))

(declare-fun b!7034457 () Bool)

(assert (=> b!7034457 (= e!4228815 1)))

(assert (= (and d!2195131 c!1308639) b!7034456))

(assert (= (and d!2195131 (not c!1308639)) b!7034457))

(declare-fun m!7742318 () Bool)

(assert (=> b!7034456 m!7742318))

(declare-fun m!7742320 () Bool)

(assert (=> b!7034456 m!7742320))

(assert (=> b!7034117 d!2195131))

(declare-fun d!2195133 () Bool)

(declare-fun lt!2519726 () Int)

(assert (=> d!2195133 (>= lt!2519726 0)))

(declare-fun e!4228818 () Int)

(assert (=> d!2195133 (= lt!2519726 e!4228818)))

(declare-fun c!1308640 () Bool)

(assert (=> d!2195133 (= c!1308640 ((_ is Cons!67807) (t!381698 (Cons!67807 lt!2519545 Nil!67807))))))

(assert (=> d!2195133 (= (zipperDepthTotal!530 (t!381698 (Cons!67807 lt!2519545 Nil!67807))) lt!2519726)))

(declare-fun b!7034460 () Bool)

(assert (=> b!7034460 (= e!4228818 (+ (contextDepthTotal!502 (h!74255 (t!381698 (Cons!67807 lt!2519545 Nil!67807)))) (zipperDepthTotal!530 (t!381698 (t!381698 (Cons!67807 lt!2519545 Nil!67807))))))))

(declare-fun b!7034461 () Bool)

(assert (=> b!7034461 (= e!4228818 0)))

(assert (= (and d!2195133 c!1308640) b!7034460))

(assert (= (and d!2195133 (not c!1308640)) b!7034461))

(declare-fun m!7742322 () Bool)

(assert (=> b!7034460 m!7742322))

(declare-fun m!7742324 () Bool)

(assert (=> b!7034460 m!7742324))

(assert (=> b!7034117 d!2195133))

(assert (=> d!2194831 d!2195023))

(declare-fun b!7034467 () Bool)

(declare-fun e!4228821 () Bool)

(declare-fun lt!2519727 () List!67930)

(assert (=> b!7034467 (= e!4228821 (or (not (= (_2!37343 (get!23756 lt!2519633)) Nil!67806)) (= lt!2519727 (_1!37343 (get!23756 lt!2519633)))))))

(declare-fun b!7034466 () Bool)

(declare-fun res!2871593 () Bool)

(assert (=> b!7034466 (=> (not res!2871593) (not e!4228821))))

(assert (=> b!7034466 (= res!2871593 (= (size!41066 lt!2519727) (+ (size!41066 (_1!37343 (get!23756 lt!2519633))) (size!41066 (_2!37343 (get!23756 lt!2519633))))))))

(declare-fun b!7034465 () Bool)

(declare-fun e!4228822 () List!67930)

(assert (=> b!7034465 (= e!4228822 (Cons!67806 (h!74254 (_1!37343 (get!23756 lt!2519633))) (++!15515 (t!381697 (_1!37343 (get!23756 lt!2519633))) (_2!37343 (get!23756 lt!2519633)))))))

(declare-fun d!2195135 () Bool)

(assert (=> d!2195135 e!4228821))

(declare-fun res!2871594 () Bool)

(assert (=> d!2195135 (=> (not res!2871594) (not e!4228821))))

(assert (=> d!2195135 (= res!2871594 (= (content!13538 lt!2519727) ((_ map or) (content!13538 (_1!37343 (get!23756 lt!2519633))) (content!13538 (_2!37343 (get!23756 lt!2519633))))))))

(assert (=> d!2195135 (= lt!2519727 e!4228822)))

(declare-fun c!1308641 () Bool)

(assert (=> d!2195135 (= c!1308641 ((_ is Nil!67806) (_1!37343 (get!23756 lt!2519633))))))

(assert (=> d!2195135 (= (++!15515 (_1!37343 (get!23756 lt!2519633)) (_2!37343 (get!23756 lt!2519633))) lt!2519727)))

(declare-fun b!7034464 () Bool)

(assert (=> b!7034464 (= e!4228822 (_2!37343 (get!23756 lt!2519633)))))

(assert (= (and d!2195135 c!1308641) b!7034464))

(assert (= (and d!2195135 (not c!1308641)) b!7034465))

(assert (= (and d!2195135 res!2871594) b!7034466))

(assert (= (and b!7034466 res!2871593) b!7034467))

(declare-fun m!7742326 () Bool)

(assert (=> b!7034466 m!7742326))

(declare-fun m!7742328 () Bool)

(assert (=> b!7034466 m!7742328))

(declare-fun m!7742330 () Bool)

(assert (=> b!7034466 m!7742330))

(declare-fun m!7742332 () Bool)

(assert (=> b!7034465 m!7742332))

(declare-fun m!7742334 () Bool)

(assert (=> d!2195135 m!7742334))

(declare-fun m!7742336 () Bool)

(assert (=> d!2195135 m!7742336))

(declare-fun m!7742338 () Bool)

(assert (=> d!2195135 m!7742338))

(assert (=> b!7034028 d!2195135))

(assert (=> b!7034028 d!2195019))

(declare-fun d!2195137 () Bool)

(declare-fun c!1308642 () Bool)

(assert (=> d!2195137 (= c!1308642 ((_ is Nil!67807) lt!2519680))))

(declare-fun e!4228825 () (InoxSet Context!12926))

(assert (=> d!2195137 (= (content!13539 lt!2519680) e!4228825)))

(declare-fun b!7034470 () Bool)

(assert (=> b!7034470 (= e!4228825 ((as const (Array Context!12926 Bool)) false))))

(declare-fun b!7034471 () Bool)

(assert (=> b!7034471 (= e!4228825 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) (h!74255 lt!2519680) true) (content!13539 (t!381698 lt!2519680))))))

(assert (= (and d!2195137 c!1308642) b!7034470))

(assert (= (and d!2195137 (not c!1308642)) b!7034471))

(declare-fun m!7742340 () Bool)

(assert (=> b!7034471 m!7742340))

(declare-fun m!7742342 () Bool)

(assert (=> b!7034471 m!7742342))

(assert (=> b!7034146 d!2195137))

(declare-fun d!2195139 () Bool)

(assert (=> d!2195139 (= (nullable!7178 (h!74253 (exprs!6963 lt!2519536))) (nullableFct!2729 (h!74253 (exprs!6963 lt!2519536))))))

(declare-fun bs!1871363 () Bool)

(assert (= bs!1871363 d!2195139))

(declare-fun m!7742344 () Bool)

(assert (=> bs!1871363 m!7742344))

(assert (=> b!7034066 d!2195139))

(declare-fun d!2195141 () Bool)

(declare-fun c!1308643 () Bool)

(assert (=> d!2195141 (= c!1308643 (isEmpty!39548 (tail!13557 (t!381697 s!7408))))))

(declare-fun e!4228826 () Bool)

(assert (=> d!2195141 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519544 (head!14266 (t!381697 s!7408))) (tail!13557 (t!381697 s!7408))) e!4228826)))

(declare-fun b!7034472 () Bool)

(assert (=> b!7034472 (= e!4228826 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519544 (head!14266 (t!381697 s!7408)))))))

(declare-fun b!7034473 () Bool)

(assert (=> b!7034473 (= e!4228826 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519544 (head!14266 (t!381697 s!7408))) (head!14266 (tail!13557 (t!381697 s!7408)))) (tail!13557 (tail!13557 (t!381697 s!7408)))))))

(assert (= (and d!2195141 c!1308643) b!7034472))

(assert (= (and d!2195141 (not c!1308643)) b!7034473))

(assert (=> d!2195141 m!7741678))

(assert (=> d!2195141 m!7742192))

(assert (=> b!7034472 m!7741814))

(declare-fun m!7742346 () Bool)

(assert (=> b!7034472 m!7742346))

(assert (=> b!7034473 m!7741678))

(assert (=> b!7034473 m!7742196))

(assert (=> b!7034473 m!7741814))

(assert (=> b!7034473 m!7742196))

(declare-fun m!7742348 () Bool)

(assert (=> b!7034473 m!7742348))

(assert (=> b!7034473 m!7741678))

(assert (=> b!7034473 m!7742200))

(assert (=> b!7034473 m!7742348))

(assert (=> b!7034473 m!7742200))

(declare-fun m!7742350 () Bool)

(assert (=> b!7034473 m!7742350))

(assert (=> b!7034112 d!2195141))

(declare-fun bs!1871364 () Bool)

(declare-fun d!2195143 () Bool)

(assert (= bs!1871364 (and d!2195143 d!2194769)))

(declare-fun lambda!415093 () Int)

(assert (=> bs!1871364 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415093 lambda!415057))))

(declare-fun bs!1871365 () Bool)

(assert (= bs!1871365 (and d!2195143 d!2194967)))

(assert (=> bs!1871365 (= (= (head!14266 (t!381697 s!7408)) (head!14266 (_1!37343 lt!2519504))) (= lambda!415093 lambda!415079))))

(declare-fun bs!1871367 () Bool)

(assert (= bs!1871367 (and d!2195143 d!2194845)))

(assert (=> bs!1871367 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415093 lambda!415069))))

(declare-fun bs!1871368 () Bool)

(assert (= bs!1871368 (and d!2195143 b!7033797)))

(assert (=> bs!1871368 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415093 lambda!415030))))

(declare-fun bs!1871369 () Bool)

(assert (= bs!1871369 (and d!2195143 d!2194981)))

(assert (=> bs!1871369 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415093 lambda!415081))))

(declare-fun bs!1871370 () Bool)

(assert (= bs!1871370 (and d!2195143 d!2195081)))

(assert (=> bs!1871370 (= lambda!415093 lambda!415090)))

(declare-fun bs!1871371 () Bool)

(assert (= bs!1871371 (and d!2195143 d!2195101)))

(assert (=> bs!1871371 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415093 lambda!415091))))

(declare-fun bs!1871372 () Bool)

(assert (= bs!1871372 (and d!2195143 d!2195075)))

(assert (=> bs!1871372 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415093 lambda!415088))))

(assert (=> d!2195143 true))

(assert (=> d!2195143 (= (derivationStepZipper!2923 lt!2519544 (head!14266 (t!381697 s!7408))) (flatMap!2414 lt!2519544 lambda!415093))))

(declare-fun bs!1871373 () Bool)

(assert (= bs!1871373 d!2195143))

(declare-fun m!7742360 () Bool)

(assert (=> bs!1871373 m!7742360))

(assert (=> b!7034112 d!2195143))

(assert (=> b!7034112 d!2195083))

(assert (=> b!7034112 d!2195085))

(declare-fun d!2195149 () Bool)

(assert (=> d!2195149 (= (isDefined!13573 lt!2519633) (not (isEmpty!39550 lt!2519633)))))

(declare-fun bs!1871374 () Bool)

(assert (= bs!1871374 d!2195149))

(declare-fun m!7742362 () Bool)

(assert (=> bs!1871374 m!7742362))

(assert (=> d!2194811 d!2195149))

(declare-fun d!2195151 () Bool)

(declare-fun c!1308644 () Bool)

(assert (=> d!2195151 (= c!1308644 (isEmpty!39548 Nil!67806))))

(declare-fun e!4228830 () Bool)

(assert (=> d!2195151 (= (matchZipper!3007 lt!2519520 Nil!67806) e!4228830)))

(declare-fun b!7034477 () Bool)

(assert (=> b!7034477 (= e!4228830 (nullableZipper!2581 lt!2519520))))

(declare-fun b!7034478 () Bool)

(assert (=> b!7034478 (= e!4228830 (matchZipper!3007 (derivationStepZipper!2923 lt!2519520 (head!14266 Nil!67806)) (tail!13557 Nil!67806)))))

(assert (= (and d!2195151 c!1308644) b!7034477))

(assert (= (and d!2195151 (not c!1308644)) b!7034478))

(declare-fun m!7742364 () Bool)

(assert (=> d!2195151 m!7742364))

(assert (=> b!7034477 m!7741528))

(declare-fun m!7742366 () Bool)

(assert (=> b!7034478 m!7742366))

(assert (=> b!7034478 m!7742366))

(declare-fun m!7742368 () Bool)

(assert (=> b!7034478 m!7742368))

(declare-fun m!7742370 () Bool)

(assert (=> b!7034478 m!7742370))

(assert (=> b!7034478 m!7742368))

(assert (=> b!7034478 m!7742370))

(declare-fun m!7742372 () Bool)

(assert (=> b!7034478 m!7742372))

(assert (=> d!2194811 d!2195151))

(declare-fun b!7034482 () Bool)

(declare-fun e!4228831 () Bool)

(declare-fun lt!2519728 () List!67930)

(assert (=> b!7034482 (= e!4228831 (or (not (= s!7408 Nil!67806)) (= lt!2519728 Nil!67806)))))

(declare-fun b!7034481 () Bool)

(declare-fun res!2871599 () Bool)

(assert (=> b!7034481 (=> (not res!2871599) (not e!4228831))))

(assert (=> b!7034481 (= res!2871599 (= (size!41066 lt!2519728) (+ (size!41066 Nil!67806) (size!41066 s!7408))))))

(declare-fun b!7034480 () Bool)

(declare-fun e!4228832 () List!67930)

(assert (=> b!7034480 (= e!4228832 (Cons!67806 (h!74254 Nil!67806) (++!15515 (t!381697 Nil!67806) s!7408)))))

(declare-fun d!2195153 () Bool)

(assert (=> d!2195153 e!4228831))

(declare-fun res!2871600 () Bool)

(assert (=> d!2195153 (=> (not res!2871600) (not e!4228831))))

(assert (=> d!2195153 (= res!2871600 (= (content!13538 lt!2519728) ((_ map or) (content!13538 Nil!67806) (content!13538 s!7408))))))

(assert (=> d!2195153 (= lt!2519728 e!4228832)))

(declare-fun c!1308645 () Bool)

(assert (=> d!2195153 (= c!1308645 ((_ is Nil!67806) Nil!67806))))

(assert (=> d!2195153 (= (++!15515 Nil!67806 s!7408) lt!2519728)))

(declare-fun b!7034479 () Bool)

(assert (=> b!7034479 (= e!4228832 s!7408)))

(assert (= (and d!2195153 c!1308645) b!7034479))

(assert (= (and d!2195153 (not c!1308645)) b!7034480))

(assert (= (and d!2195153 res!2871600) b!7034481))

(assert (= (and b!7034481 res!2871599) b!7034482))

(declare-fun m!7742374 () Bool)

(assert (=> b!7034481 m!7742374))

(assert (=> b!7034481 m!7742264))

(declare-fun m!7742378 () Bool)

(assert (=> b!7034481 m!7742378))

(declare-fun m!7742382 () Bool)

(assert (=> b!7034480 m!7742382))

(declare-fun m!7742384 () Bool)

(assert (=> d!2195153 m!7742384))

(assert (=> d!2195153 m!7742272))

(declare-fun m!7742388 () Bool)

(assert (=> d!2195153 m!7742388))

(assert (=> d!2194811 d!2195153))

(declare-fun d!2195157 () Bool)

(declare-fun c!1308647 () Bool)

(assert (=> d!2195157 (= c!1308647 (isEmpty!39548 (tail!13557 (t!381697 s!7408))))))

(declare-fun e!4228834 () Bool)

(assert (=> d!2195157 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519524 (head!14266 (t!381697 s!7408))) (tail!13557 (t!381697 s!7408))) e!4228834)))

(declare-fun b!7034485 () Bool)

(assert (=> b!7034485 (= e!4228834 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519524 (head!14266 (t!381697 s!7408)))))))

(declare-fun b!7034486 () Bool)

(assert (=> b!7034486 (= e!4228834 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519524 (head!14266 (t!381697 s!7408))) (head!14266 (tail!13557 (t!381697 s!7408)))) (tail!13557 (tail!13557 (t!381697 s!7408)))))))

(assert (= (and d!2195157 c!1308647) b!7034485))

(assert (= (and d!2195157 (not c!1308647)) b!7034486))

(assert (=> d!2195157 m!7741678))

(assert (=> d!2195157 m!7742192))

(assert (=> b!7034485 m!7741676))

(declare-fun m!7742396 () Bool)

(assert (=> b!7034485 m!7742396))

(assert (=> b!7034486 m!7741678))

(assert (=> b!7034486 m!7742196))

(assert (=> b!7034486 m!7741676))

(assert (=> b!7034486 m!7742196))

(declare-fun m!7742398 () Bool)

(assert (=> b!7034486 m!7742398))

(assert (=> b!7034486 m!7741678))

(assert (=> b!7034486 m!7742200))

(assert (=> b!7034486 m!7742398))

(assert (=> b!7034486 m!7742200))

(declare-fun m!7742400 () Bool)

(assert (=> b!7034486 m!7742400))

(assert (=> b!7034031 d!2195157))

(declare-fun bs!1871379 () Bool)

(declare-fun d!2195161 () Bool)

(assert (= bs!1871379 (and d!2195161 d!2194769)))

(declare-fun lambda!415095 () Int)

(assert (=> bs!1871379 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415095 lambda!415057))))

(declare-fun bs!1871381 () Bool)

(assert (= bs!1871381 (and d!2195161 d!2194967)))

(assert (=> bs!1871381 (= (= (head!14266 (t!381697 s!7408)) (head!14266 (_1!37343 lt!2519504))) (= lambda!415095 lambda!415079))))

(declare-fun bs!1871382 () Bool)

(assert (= bs!1871382 (and d!2195161 d!2194845)))

(assert (=> bs!1871382 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415095 lambda!415069))))

(declare-fun bs!1871383 () Bool)

(assert (= bs!1871383 (and d!2195161 b!7033797)))

(assert (=> bs!1871383 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415095 lambda!415030))))

(declare-fun bs!1871384 () Bool)

(assert (= bs!1871384 (and d!2195161 d!2195143)))

(assert (=> bs!1871384 (= lambda!415095 lambda!415093)))

(declare-fun bs!1871385 () Bool)

(assert (= bs!1871385 (and d!2195161 d!2194981)))

(assert (=> bs!1871385 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415095 lambda!415081))))

(declare-fun bs!1871386 () Bool)

(assert (= bs!1871386 (and d!2195161 d!2195081)))

(assert (=> bs!1871386 (= lambda!415095 lambda!415090)))

(declare-fun bs!1871387 () Bool)

(assert (= bs!1871387 (and d!2195161 d!2195101)))

(assert (=> bs!1871387 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415095 lambda!415091))))

(declare-fun bs!1871388 () Bool)

(assert (= bs!1871388 (and d!2195161 d!2195075)))

(assert (=> bs!1871388 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415095 lambda!415088))))

(assert (=> d!2195161 true))

(assert (=> d!2195161 (= (derivationStepZipper!2923 lt!2519524 (head!14266 (t!381697 s!7408))) (flatMap!2414 lt!2519524 lambda!415095))))

(declare-fun bs!1871390 () Bool)

(assert (= bs!1871390 d!2195161))

(declare-fun m!7742406 () Bool)

(assert (=> bs!1871390 m!7742406))

(assert (=> b!7034031 d!2195161))

(assert (=> b!7034031 d!2195083))

(assert (=> b!7034031 d!2195085))

(declare-fun d!2195171 () Bool)

(assert (=> d!2195171 (= (nullable!7178 (h!74253 (exprs!6963 lt!2519545))) (nullableFct!2729 (h!74253 (exprs!6963 lt!2519545))))))

(declare-fun bs!1871391 () Bool)

(assert (= bs!1871391 d!2195171))

(declare-fun m!7742408 () Bool)

(assert (=> bs!1871391 m!7742408))

(assert (=> b!7034145 d!2195171))

(assert (=> d!2194757 d!2194837))

(declare-fun d!2195173 () Bool)

(declare-fun res!2871601 () Bool)

(declare-fun e!4228835 () Bool)

(assert (=> d!2195173 (=> res!2871601 e!4228835)))

(assert (=> d!2195173 (= res!2871601 ((_ is Nil!67807) lt!2519680))))

(assert (=> d!2195173 (= (noDuplicate!2629 lt!2519680) e!4228835)))

(declare-fun b!7034487 () Bool)

(declare-fun e!4228836 () Bool)

(assert (=> b!7034487 (= e!4228835 e!4228836)))

(declare-fun res!2871602 () Bool)

(assert (=> b!7034487 (=> (not res!2871602) (not e!4228836))))

(assert (=> b!7034487 (= res!2871602 (not (contains!20458 (t!381698 lt!2519680) (h!74255 lt!2519680))))))

(declare-fun b!7034488 () Bool)

(assert (=> b!7034488 (= e!4228836 (noDuplicate!2629 (t!381698 lt!2519680)))))

(assert (= (and d!2195173 (not res!2871601)) b!7034487))

(assert (= (and b!7034487 res!2871602) b!7034488))

(declare-fun m!7742410 () Bool)

(assert (=> b!7034487 m!7742410))

(declare-fun m!7742412 () Bool)

(assert (=> b!7034488 m!7742412))

(assert (=> d!2194909 d!2195173))

(declare-fun d!2195175 () Bool)

(declare-fun e!4228837 () Bool)

(assert (=> d!2195175 e!4228837))

(declare-fun res!2871604 () Bool)

(assert (=> d!2195175 (=> (not res!2871604) (not e!4228837))))

(declare-fun res!2871603 () List!67931)

(assert (=> d!2195175 (= res!2871604 (noDuplicate!2629 res!2871603))))

(declare-fun e!4228839 () Bool)

(assert (=> d!2195175 e!4228839))

(assert (=> d!2195175 (= (choose!53285 z1!570) res!2871603)))

(declare-fun b!7034490 () Bool)

(declare-fun e!4228838 () Bool)

(declare-fun tp!1936633 () Bool)

(assert (=> b!7034490 (= e!4228838 tp!1936633)))

(declare-fun b!7034489 () Bool)

(declare-fun tp!1936632 () Bool)

(assert (=> b!7034489 (= e!4228839 (and (inv!86526 (h!74255 res!2871603)) e!4228838 tp!1936632))))

(declare-fun b!7034491 () Bool)

(assert (=> b!7034491 (= e!4228837 (= (content!13539 res!2871603) z1!570))))

(assert (= b!7034489 b!7034490))

(assert (= (and d!2195175 ((_ is Cons!67807) res!2871603)) b!7034489))

(assert (= (and d!2195175 res!2871604) b!7034491))

(declare-fun m!7742414 () Bool)

(assert (=> d!2195175 m!7742414))

(declare-fun m!7742416 () Bool)

(assert (=> b!7034489 m!7742416))

(declare-fun m!7742418 () Bool)

(assert (=> b!7034491 m!7742418))

(assert (=> d!2194909 d!2195175))

(assert (=> d!2194885 d!2195023))

(declare-fun d!2195177 () Bool)

(assert (=> d!2195177 true))

(declare-fun setRes!49194 () Bool)

(assert (=> d!2195177 setRes!49194))

(declare-fun condSetEmpty!49194 () Bool)

(declare-fun res!2871605 () (InoxSet Context!12926))

(assert (=> d!2195177 (= condSetEmpty!49194 (= res!2871605 ((as const (Array Context!12926 Bool)) false)))))

(assert (=> d!2195177 (= (choose!53277 lt!2519520 lambda!415030) res!2871605)))

(declare-fun setIsEmpty!49194 () Bool)

(assert (=> setIsEmpty!49194 setRes!49194))

(declare-fun tp!1936634 () Bool)

(declare-fun e!4228840 () Bool)

(declare-fun setNonEmpty!49194 () Bool)

(declare-fun setElem!49194 () Context!12926)

(assert (=> setNonEmpty!49194 (= setRes!49194 (and tp!1936634 (inv!86526 setElem!49194) e!4228840))))

(declare-fun setRest!49194 () (InoxSet Context!12926))

(assert (=> setNonEmpty!49194 (= res!2871605 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) setElem!49194 true) setRest!49194))))

(declare-fun b!7034492 () Bool)

(declare-fun tp!1936635 () Bool)

(assert (=> b!7034492 (= e!4228840 tp!1936635)))

(assert (= (and d!2195177 condSetEmpty!49194) setIsEmpty!49194))

(assert (= (and d!2195177 (not condSetEmpty!49194)) setNonEmpty!49194))

(assert (= setNonEmpty!49194 b!7034492))

(declare-fun m!7742420 () Bool)

(assert (=> setNonEmpty!49194 m!7742420))

(assert (=> d!2194891 d!2195177))

(declare-fun bs!1871392 () Bool)

(declare-fun d!2195179 () Bool)

(assert (= bs!1871392 (and d!2195179 d!2195103)))

(declare-fun lambda!415096 () Int)

(assert (=> bs!1871392 (= lambda!415096 lambda!415092)))

(declare-fun bs!1871393 () Bool)

(assert (= bs!1871393 (and d!2195179 d!2195077)))

(assert (=> bs!1871393 (= lambda!415096 lambda!415089)))

(declare-fun bs!1871394 () Bool)

(assert (= bs!1871394 (and d!2195179 d!2195049)))

(assert (=> bs!1871394 (= lambda!415096 lambda!415087)))

(declare-fun bs!1871395 () Bool)

(assert (= bs!1871395 (and d!2195179 d!2194871)))

(assert (=> bs!1871395 (not (= lambda!415096 lambda!415076))))

(declare-fun bs!1871396 () Bool)

(assert (= bs!1871396 (and d!2195179 d!2195031)))

(assert (=> bs!1871396 (not (= lambda!415096 lambda!415084))))

(declare-fun bs!1871397 () Bool)

(assert (= bs!1871397 (and d!2195179 d!2194989)))

(assert (=> bs!1871397 (not (= lambda!415096 lambda!415082))))

(declare-fun bs!1871398 () Bool)

(assert (= bs!1871398 (and d!2195179 d!2194855)))

(assert (=> bs!1871398 (not (= lambda!415096 lambda!415073))))

(declare-fun bs!1871399 () Bool)

(assert (= bs!1871399 (and d!2195179 b!7033798)))

(assert (=> bs!1871399 (not (= lambda!415096 lambda!415027))))

(declare-fun bs!1871400 () Bool)

(assert (= bs!1871400 (and d!2195179 b!7033820)))

(assert (=> bs!1871400 (= lambda!415096 lambda!415031)))

(assert (=> d!2195179 (= (nullableZipper!2581 lt!2519505) (exists!3397 lt!2519505 lambda!415096))))

(declare-fun bs!1871401 () Bool)

(assert (= bs!1871401 d!2195179))

(declare-fun m!7742422 () Bool)

(assert (=> bs!1871401 m!7742422))

(assert (=> b!7034067 d!2195179))

(declare-fun d!2195181 () Bool)

(declare-fun c!1308652 () Bool)

(assert (=> d!2195181 (= c!1308652 (and ((_ is ElementMatch!17467) (h!74253 (exprs!6963 lt!2519545))) (= (c!1308424 (h!74253 (exprs!6963 lt!2519545))) (h!74254 s!7408))))))

(declare-fun e!4228846 () (InoxSet Context!12926))

(assert (=> d!2195181 (= (derivationStepZipperDown!2131 (h!74253 (exprs!6963 lt!2519545)) (Context!12927 (t!381696 (exprs!6963 lt!2519545))) (h!74254 s!7408)) e!4228846)))

(declare-fun c!1308649 () Bool)

(declare-fun call!638810 () List!67929)

(declare-fun c!1308651 () Bool)

(declare-fun bm!638803 () Bool)

(assert (=> bm!638803 (= call!638810 ($colon$colon!2575 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545)))) (ite (or c!1308649 c!1308651) (regTwo!35446 (h!74253 (exprs!6963 lt!2519545))) (h!74253 (exprs!6963 lt!2519545)))))))

(declare-fun b!7034493 () Bool)

(declare-fun e!4228845 () (InoxSet Context!12926))

(declare-fun call!638813 () (InoxSet Context!12926))

(assert (=> b!7034493 (= e!4228845 call!638813)))

(declare-fun b!7034494 () Bool)

(declare-fun e!4228843 () (InoxSet Context!12926))

(assert (=> b!7034494 (= e!4228846 e!4228843)))

(declare-fun c!1308648 () Bool)

(assert (=> b!7034494 (= c!1308648 ((_ is Union!17467) (h!74253 (exprs!6963 lt!2519545))))))

(declare-fun bm!638804 () Bool)

(declare-fun call!638809 () (InoxSet Context!12926))

(declare-fun call!638812 () (InoxSet Context!12926))

(assert (=> bm!638804 (= call!638809 call!638812)))

(declare-fun call!638808 () List!67929)

(declare-fun bm!638805 () Bool)

(assert (=> bm!638805 (= call!638812 (derivationStepZipperDown!2131 (ite c!1308648 (regOne!35447 (h!74253 (exprs!6963 lt!2519545))) (ite c!1308649 (regTwo!35446 (h!74253 (exprs!6963 lt!2519545))) (ite c!1308651 (regOne!35446 (h!74253 (exprs!6963 lt!2519545))) (reg!17796 (h!74253 (exprs!6963 lt!2519545)))))) (ite (or c!1308648 c!1308649) (Context!12927 (t!381696 (exprs!6963 lt!2519545))) (Context!12927 call!638808)) (h!74254 s!7408)))))

(declare-fun b!7034495 () Bool)

(assert (=> b!7034495 (= e!4228846 (store ((as const (Array Context!12926 Bool)) false) (Context!12927 (t!381696 (exprs!6963 lt!2519545))) true))))

(declare-fun b!7034496 () Bool)

(declare-fun e!4228841 () Bool)

(assert (=> b!7034496 (= c!1308649 e!4228841)))

(declare-fun res!2871606 () Bool)

(assert (=> b!7034496 (=> (not res!2871606) (not e!4228841))))

(assert (=> b!7034496 (= res!2871606 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519545))))))

(declare-fun e!4228842 () (InoxSet Context!12926))

(assert (=> b!7034496 (= e!4228843 e!4228842)))

(declare-fun b!7034497 () Bool)

(declare-fun call!638811 () (InoxSet Context!12926))

(assert (=> b!7034497 (= e!4228842 ((_ map or) call!638811 call!638809))))

(declare-fun bm!638806 () Bool)

(assert (=> bm!638806 (= call!638811 (derivationStepZipperDown!2131 (ite c!1308648 (regTwo!35447 (h!74253 (exprs!6963 lt!2519545))) (regOne!35446 (h!74253 (exprs!6963 lt!2519545)))) (ite c!1308648 (Context!12927 (t!381696 (exprs!6963 lt!2519545))) (Context!12927 call!638810)) (h!74254 s!7408)))))

(declare-fun b!7034498 () Bool)

(declare-fun e!4228844 () (InoxSet Context!12926))

(assert (=> b!7034498 (= e!4228844 ((as const (Array Context!12926 Bool)) false))))

(declare-fun bm!638807 () Bool)

(assert (=> bm!638807 (= call!638813 call!638809)))

(declare-fun bm!638808 () Bool)

(assert (=> bm!638808 (= call!638808 call!638810)))

(declare-fun b!7034499 () Bool)

(assert (=> b!7034499 (= e!4228844 call!638813)))

(declare-fun b!7034500 () Bool)

(assert (=> b!7034500 (= e!4228841 (nullable!7178 (regOne!35446 (h!74253 (exprs!6963 lt!2519545)))))))

(declare-fun b!7034501 () Bool)

(assert (=> b!7034501 (= e!4228843 ((_ map or) call!638812 call!638811))))

(declare-fun b!7034502 () Bool)

(declare-fun c!1308650 () Bool)

(assert (=> b!7034502 (= c!1308650 ((_ is Star!17467) (h!74253 (exprs!6963 lt!2519545))))))

(assert (=> b!7034502 (= e!4228845 e!4228844)))

(declare-fun b!7034503 () Bool)

(assert (=> b!7034503 (= e!4228842 e!4228845)))

(assert (=> b!7034503 (= c!1308651 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519545))))))

(assert (= (and d!2195181 c!1308652) b!7034495))

(assert (= (and d!2195181 (not c!1308652)) b!7034494))

(assert (= (and b!7034494 c!1308648) b!7034501))

(assert (= (and b!7034494 (not c!1308648)) b!7034496))

(assert (= (and b!7034496 res!2871606) b!7034500))

(assert (= (and b!7034496 c!1308649) b!7034497))

(assert (= (and b!7034496 (not c!1308649)) b!7034503))

(assert (= (and b!7034503 c!1308651) b!7034493))

(assert (= (and b!7034503 (not c!1308651)) b!7034502))

(assert (= (and b!7034502 c!1308650) b!7034499))

(assert (= (and b!7034502 (not c!1308650)) b!7034498))

(assert (= (or b!7034493 b!7034499) bm!638808))

(assert (= (or b!7034493 b!7034499) bm!638807))

(assert (= (or b!7034497 bm!638807) bm!638804))

(assert (= (or b!7034497 bm!638808) bm!638803))

(assert (= (or b!7034501 bm!638804) bm!638805))

(assert (= (or b!7034501 b!7034497) bm!638806))

(declare-fun m!7742424 () Bool)

(assert (=> bm!638806 m!7742424))

(declare-fun m!7742426 () Bool)

(assert (=> bm!638803 m!7742426))

(declare-fun m!7742428 () Bool)

(assert (=> bm!638805 m!7742428))

(declare-fun m!7742430 () Bool)

(assert (=> b!7034500 m!7742430))

(declare-fun m!7742432 () Bool)

(assert (=> b!7034495 m!7742432))

(assert (=> bm!638753 d!2195181))

(declare-fun d!2195183 () Bool)

(declare-fun c!1308657 () Bool)

(assert (=> d!2195183 (= c!1308657 (isEmpty!39548 (tail!13557 (_1!37343 lt!2519504))))))

(declare-fun e!4228853 () Bool)

(assert (=> d!2195183 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519510 (head!14266 (_1!37343 lt!2519504))) (tail!13557 (_1!37343 lt!2519504))) e!4228853)))

(declare-fun b!7034514 () Bool)

(assert (=> b!7034514 (= e!4228853 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519510 (head!14266 (_1!37343 lt!2519504)))))))

(declare-fun b!7034515 () Bool)

(assert (=> b!7034515 (= e!4228853 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519510 (head!14266 (_1!37343 lt!2519504))) (head!14266 (tail!13557 (_1!37343 lt!2519504)))) (tail!13557 (tail!13557 (_1!37343 lt!2519504)))))))

(assert (= (and d!2195183 c!1308657) b!7034514))

(assert (= (and d!2195183 (not c!1308657)) b!7034515))

(assert (=> d!2195183 m!7741440))

(assert (=> d!2195183 m!7741976))

(assert (=> b!7034514 m!7741438))

(declare-fun m!7742434 () Bool)

(assert (=> b!7034514 m!7742434))

(assert (=> b!7034515 m!7741440))

(assert (=> b!7034515 m!7741980))

(assert (=> b!7034515 m!7741438))

(assert (=> b!7034515 m!7741980))

(declare-fun m!7742436 () Bool)

(assert (=> b!7034515 m!7742436))

(assert (=> b!7034515 m!7741440))

(assert (=> b!7034515 m!7741984))

(assert (=> b!7034515 m!7742436))

(assert (=> b!7034515 m!7741984))

(declare-fun m!7742438 () Bool)

(assert (=> b!7034515 m!7742438))

(assert (=> b!7033908 d!2195183))

(declare-fun bs!1871402 () Bool)

(declare-fun d!2195185 () Bool)

(assert (= bs!1871402 (and d!2195185 d!2195161)))

(declare-fun lambda!415097 () Int)

(assert (=> bs!1871402 (= (= (head!14266 (_1!37343 lt!2519504)) (head!14266 (t!381697 s!7408))) (= lambda!415097 lambda!415095))))

(declare-fun bs!1871403 () Bool)

(assert (= bs!1871403 (and d!2195185 d!2194769)))

(assert (=> bs!1871403 (= (= (head!14266 (_1!37343 lt!2519504)) (h!74254 s!7408)) (= lambda!415097 lambda!415057))))

(declare-fun bs!1871404 () Bool)

(assert (= bs!1871404 (and d!2195185 d!2194967)))

(assert (=> bs!1871404 (= lambda!415097 lambda!415079)))

(declare-fun bs!1871405 () Bool)

(assert (= bs!1871405 (and d!2195185 d!2194845)))

(assert (=> bs!1871405 (= (= (head!14266 (_1!37343 lt!2519504)) (h!74254 s!7408)) (= lambda!415097 lambda!415069))))

(declare-fun bs!1871406 () Bool)

(assert (= bs!1871406 (and d!2195185 b!7033797)))

(assert (=> bs!1871406 (= (= (head!14266 (_1!37343 lt!2519504)) (h!74254 s!7408)) (= lambda!415097 lambda!415030))))

(declare-fun bs!1871407 () Bool)

(assert (= bs!1871407 (and d!2195185 d!2195143)))

(assert (=> bs!1871407 (= (= (head!14266 (_1!37343 lt!2519504)) (head!14266 (t!381697 s!7408))) (= lambda!415097 lambda!415093))))

(declare-fun bs!1871408 () Bool)

(assert (= bs!1871408 (and d!2195185 d!2194981)))

(assert (=> bs!1871408 (= (= (head!14266 (_1!37343 lt!2519504)) (head!14266 s!7408)) (= lambda!415097 lambda!415081))))

(declare-fun bs!1871409 () Bool)

(assert (= bs!1871409 (and d!2195185 d!2195081)))

(assert (=> bs!1871409 (= (= (head!14266 (_1!37343 lt!2519504)) (head!14266 (t!381697 s!7408))) (= lambda!415097 lambda!415090))))

(declare-fun bs!1871410 () Bool)

(assert (= bs!1871410 (and d!2195185 d!2195101)))

(assert (=> bs!1871410 (= (= (head!14266 (_1!37343 lt!2519504)) (head!14266 s!7408)) (= lambda!415097 lambda!415091))))

(declare-fun bs!1871411 () Bool)

(assert (= bs!1871411 (and d!2195185 d!2195075)))

(assert (=> bs!1871411 (= (= (head!14266 (_1!37343 lt!2519504)) (head!14266 s!7408)) (= lambda!415097 lambda!415088))))

(assert (=> d!2195185 true))

(assert (=> d!2195185 (= (derivationStepZipper!2923 lt!2519510 (head!14266 (_1!37343 lt!2519504))) (flatMap!2414 lt!2519510 lambda!415097))))

(declare-fun bs!1871412 () Bool)

(assert (= bs!1871412 d!2195185))

(declare-fun m!7742440 () Bool)

(assert (=> bs!1871412 m!7742440))

(assert (=> b!7033908 d!2195185))

(assert (=> b!7033908 d!2194969))

(assert (=> b!7033908 d!2194971))

(declare-fun bs!1871413 () Bool)

(declare-fun d!2195187 () Bool)

(assert (= bs!1871413 (and d!2195187 d!2195103)))

(declare-fun lambda!415098 () Int)

(assert (=> bs!1871413 (not (= lambda!415098 lambda!415092))))

(declare-fun bs!1871414 () Bool)

(assert (= bs!1871414 (and d!2195187 d!2195077)))

(assert (=> bs!1871414 (not (= lambda!415098 lambda!415089))))

(declare-fun bs!1871415 () Bool)

(assert (= bs!1871415 (and d!2195187 d!2195049)))

(assert (=> bs!1871415 (not (= lambda!415098 lambda!415087))))

(declare-fun bs!1871416 () Bool)

(assert (= bs!1871416 (and d!2195187 d!2195179)))

(assert (=> bs!1871416 (not (= lambda!415098 lambda!415096))))

(declare-fun bs!1871417 () Bool)

(assert (= bs!1871417 (and d!2195187 d!2194871)))

(assert (=> bs!1871417 (= (= lambda!415073 lambda!415027) (= lambda!415098 lambda!415076))))

(declare-fun bs!1871418 () Bool)

(assert (= bs!1871418 (and d!2195187 d!2195031)))

(assert (=> bs!1871418 (= (= lambda!415073 lambda!415031) (= lambda!415098 lambda!415084))))

(declare-fun bs!1871419 () Bool)

(assert (= bs!1871419 (and d!2195187 d!2194989)))

(assert (=> bs!1871419 (= (= lambda!415073 lambda!415031) (= lambda!415098 lambda!415082))))

(declare-fun bs!1871420 () Bool)

(assert (= bs!1871420 (and d!2195187 d!2194855)))

(assert (=> bs!1871420 (not (= lambda!415098 lambda!415073))))

(declare-fun bs!1871421 () Bool)

(assert (= bs!1871421 (and d!2195187 b!7033798)))

(assert (=> bs!1871421 (not (= lambda!415098 lambda!415027))))

(declare-fun bs!1871423 () Bool)

(assert (= bs!1871423 (and d!2195187 b!7033820)))

(assert (=> bs!1871423 (not (= lambda!415098 lambda!415031))))

(assert (=> d!2195187 true))

(assert (=> d!2195187 (< (dynLambda!27388 order!28177 lambda!415073) (dynLambda!27388 order!28177 lambda!415098))))

(assert (=> d!2195187 (= (exists!3396 lt!2519542 lambda!415073) (not (forall!16382 lt!2519542 lambda!415098)))))

(declare-fun bs!1871424 () Bool)

(assert (= bs!1871424 d!2195187))

(declare-fun m!7742456 () Bool)

(assert (=> bs!1871424 m!7742456))

(assert (=> d!2194855 d!2195187))

(declare-fun bs!1871428 () Bool)

(declare-fun d!2195193 () Bool)

(assert (= bs!1871428 (and d!2195193 d!2195103)))

(declare-fun lambda!415101 () Int)

(assert (=> bs!1871428 (not (= lambda!415101 lambda!415092))))

(declare-fun bs!1871429 () Bool)

(assert (= bs!1871429 (and d!2195193 d!2195077)))

(assert (=> bs!1871429 (not (= lambda!415101 lambda!415089))))

(declare-fun bs!1871430 () Bool)

(assert (= bs!1871430 (and d!2195193 d!2195187)))

(assert (=> bs!1871430 (not (= lambda!415101 lambda!415098))))

(declare-fun bs!1871431 () Bool)

(assert (= bs!1871431 (and d!2195193 d!2195049)))

(assert (=> bs!1871431 (not (= lambda!415101 lambda!415087))))

(declare-fun bs!1871432 () Bool)

(assert (= bs!1871432 (and d!2195193 d!2195179)))

(assert (=> bs!1871432 (not (= lambda!415101 lambda!415096))))

(declare-fun bs!1871433 () Bool)

(assert (= bs!1871433 (and d!2195193 d!2194871)))

(assert (=> bs!1871433 (not (= lambda!415101 lambda!415076))))

(declare-fun bs!1871434 () Bool)

(assert (= bs!1871434 (and d!2195193 d!2195031)))

(assert (=> bs!1871434 (not (= lambda!415101 lambda!415084))))

(declare-fun bs!1871435 () Bool)

(assert (= bs!1871435 (and d!2195193 d!2194989)))

(assert (=> bs!1871435 (not (= lambda!415101 lambda!415082))))

(declare-fun bs!1871437 () Bool)

(assert (= bs!1871437 (and d!2195193 d!2194855)))

(assert (=> bs!1871437 (= lambda!415101 lambda!415073)))

(declare-fun bs!1871439 () Bool)

(assert (= bs!1871439 (and d!2195193 b!7033798)))

(assert (=> bs!1871439 (= lambda!415101 lambda!415027)))

(declare-fun bs!1871441 () Bool)

(assert (= bs!1871441 (and d!2195193 b!7033820)))

(assert (=> bs!1871441 (not (= lambda!415101 lambda!415031))))

(assert (=> d!2195193 true))

(assert (=> d!2195193 (exists!3396 lt!2519542 lambda!415101)))

(assert (=> d!2195193 true))

(declare-fun _$60!1129 () Unit!161608)

(assert (=> d!2195193 (= (choose!53284 lt!2519542 s!7408) _$60!1129)))

(declare-fun bs!1871444 () Bool)

(assert (= bs!1871444 d!2195193))

(declare-fun m!7742504 () Bool)

(assert (=> bs!1871444 m!7742504))

(assert (=> d!2194855 d!2195193))

(declare-fun d!2195213 () Bool)

(declare-fun c!1308668 () Bool)

(assert (=> d!2195213 (= c!1308668 (isEmpty!39548 s!7408))))

(declare-fun e!4228868 () Bool)

(assert (=> d!2195213 (= (matchZipper!3007 (content!13539 lt!2519542) s!7408) e!4228868)))

(declare-fun b!7034538 () Bool)

(assert (=> b!7034538 (= e!4228868 (nullableZipper!2581 (content!13539 lt!2519542)))))

(declare-fun b!7034539 () Bool)

(assert (=> b!7034539 (= e!4228868 (matchZipper!3007 (derivationStepZipper!2923 (content!13539 lt!2519542) (head!14266 s!7408)) (tail!13557 s!7408)))))

(assert (= (and d!2195213 c!1308668) b!7034538))

(assert (= (and d!2195213 (not c!1308668)) b!7034539))

(assert (=> d!2195213 m!7741504))

(assert (=> b!7034538 m!7741770))

(declare-fun m!7742506 () Bool)

(assert (=> b!7034538 m!7742506))

(assert (=> b!7034539 m!7741508))

(assert (=> b!7034539 m!7741770))

(assert (=> b!7034539 m!7741508))

(declare-fun m!7742508 () Bool)

(assert (=> b!7034539 m!7742508))

(assert (=> b!7034539 m!7741512))

(assert (=> b!7034539 m!7742508))

(assert (=> b!7034539 m!7741512))

(declare-fun m!7742510 () Bool)

(assert (=> b!7034539 m!7742510))

(assert (=> d!2194855 d!2195213))

(declare-fun d!2195219 () Bool)

(declare-fun c!1308669 () Bool)

(assert (=> d!2195219 (= c!1308669 ((_ is Nil!67807) lt!2519542))))

(declare-fun e!4228869 () (InoxSet Context!12926))

(assert (=> d!2195219 (= (content!13539 lt!2519542) e!4228869)))

(declare-fun b!7034540 () Bool)

(assert (=> b!7034540 (= e!4228869 ((as const (Array Context!12926 Bool)) false))))

(declare-fun b!7034541 () Bool)

(assert (=> b!7034541 (= e!4228869 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) (h!74255 lt!2519542) true) (content!13539 (t!381698 lt!2519542))))))

(assert (= (and d!2195219 c!1308669) b!7034540))

(assert (= (and d!2195219 (not c!1308669)) b!7034541))

(declare-fun m!7742512 () Bool)

(assert (=> b!7034541 m!7742512))

(declare-fun m!7742514 () Bool)

(assert (=> b!7034541 m!7742514))

(assert (=> d!2194855 d!2195219))

(declare-fun bs!1871446 () Bool)

(declare-fun d!2195223 () Bool)

(assert (= bs!1871446 (and d!2195223 d!2195103)))

(declare-fun lambda!415103 () Int)

(assert (=> bs!1871446 (= lambda!415103 lambda!415092)))

(declare-fun bs!1871447 () Bool)

(assert (= bs!1871447 (and d!2195223 d!2195077)))

(assert (=> bs!1871447 (= lambda!415103 lambda!415089)))

(declare-fun bs!1871448 () Bool)

(assert (= bs!1871448 (and d!2195223 d!2195187)))

(assert (=> bs!1871448 (not (= lambda!415103 lambda!415098))))

(declare-fun bs!1871449 () Bool)

(assert (= bs!1871449 (and d!2195223 d!2195179)))

(assert (=> bs!1871449 (= lambda!415103 lambda!415096)))

(declare-fun bs!1871450 () Bool)

(assert (= bs!1871450 (and d!2195223 d!2194871)))

(assert (=> bs!1871450 (not (= lambda!415103 lambda!415076))))

(declare-fun bs!1871451 () Bool)

(assert (= bs!1871451 (and d!2195223 d!2195031)))

(assert (=> bs!1871451 (not (= lambda!415103 lambda!415084))))

(declare-fun bs!1871452 () Bool)

(assert (= bs!1871452 (and d!2195223 d!2194989)))

(assert (=> bs!1871452 (not (= lambda!415103 lambda!415082))))

(declare-fun bs!1871453 () Bool)

(assert (= bs!1871453 (and d!2195223 d!2194855)))

(assert (=> bs!1871453 (not (= lambda!415103 lambda!415073))))

(declare-fun bs!1871454 () Bool)

(assert (= bs!1871454 (and d!2195223 b!7033798)))

(assert (=> bs!1871454 (not (= lambda!415103 lambda!415027))))

(declare-fun bs!1871455 () Bool)

(assert (= bs!1871455 (and d!2195223 b!7033820)))

(assert (=> bs!1871455 (= lambda!415103 lambda!415031)))

(declare-fun bs!1871456 () Bool)

(assert (= bs!1871456 (and d!2195223 d!2195193)))

(assert (=> bs!1871456 (not (= lambda!415103 lambda!415101))))

(declare-fun bs!1871457 () Bool)

(assert (= bs!1871457 (and d!2195223 d!2195049)))

(assert (=> bs!1871457 (= lambda!415103 lambda!415087)))

(assert (=> d!2195223 (= (nullableZipper!2581 lt!2519528) (exists!3397 lt!2519528 lambda!415103))))

(declare-fun bs!1871458 () Bool)

(assert (= bs!1871458 d!2195223))

(declare-fun m!7742526 () Bool)

(assert (=> bs!1871458 m!7742526))

(assert (=> b!7034104 d!2195223))

(declare-fun d!2195231 () Bool)

(assert (=> d!2195231 true))

(declare-fun setRes!49195 () Bool)

(assert (=> d!2195231 setRes!49195))

(declare-fun condSetEmpty!49195 () Bool)

(declare-fun res!2871617 () (InoxSet Context!12926))

(assert (=> d!2195231 (= condSetEmpty!49195 (= res!2871617 ((as const (Array Context!12926 Bool)) false)))))

(assert (=> d!2195231 (= (choose!53277 lt!2519523 lambda!415030) res!2871617)))

(declare-fun setIsEmpty!49195 () Bool)

(assert (=> setIsEmpty!49195 setRes!49195))

(declare-fun setNonEmpty!49195 () Bool)

(declare-fun e!4228872 () Bool)

(declare-fun setElem!49195 () Context!12926)

(declare-fun tp!1936636 () Bool)

(assert (=> setNonEmpty!49195 (= setRes!49195 (and tp!1936636 (inv!86526 setElem!49195) e!4228872))))

(declare-fun setRest!49195 () (InoxSet Context!12926))

(assert (=> setNonEmpty!49195 (= res!2871617 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) setElem!49195 true) setRest!49195))))

(declare-fun b!7034546 () Bool)

(declare-fun tp!1936637 () Bool)

(assert (=> b!7034546 (= e!4228872 tp!1936637)))

(assert (= (and d!2195231 condSetEmpty!49195) setIsEmpty!49195))

(assert (= (and d!2195231 (not condSetEmpty!49195)) setNonEmpty!49195))

(assert (= setNonEmpty!49195 b!7034546))

(declare-fun m!7742528 () Bool)

(assert (=> setNonEmpty!49195 m!7742528))

(assert (=> d!2194841 d!2195231))

(declare-fun d!2195233 () Bool)

(assert (=> d!2195233 (= (isEmpty!39548 (_2!37343 lt!2519504)) ((_ is Nil!67806) (_2!37343 lt!2519504)))))

(assert (=> d!2194747 d!2195233))

(declare-fun d!2195235 () Bool)

(declare-fun lt!2519738 () Int)

(assert (=> d!2195235 (>= lt!2519738 0)))

(declare-fun e!4228873 () Int)

(assert (=> d!2195235 (= lt!2519738 e!4228873)))

(declare-fun c!1308671 () Bool)

(assert (=> d!2195235 (= c!1308671 ((_ is Nil!67805) lt!2519670))))

(assert (=> d!2195235 (= (size!41067 lt!2519670) lt!2519738)))

(declare-fun b!7034547 () Bool)

(assert (=> b!7034547 (= e!4228873 0)))

(declare-fun b!7034548 () Bool)

(assert (=> b!7034548 (= e!4228873 (+ 1 (size!41067 (t!381696 lt!2519670))))))

(assert (= (and d!2195235 c!1308671) b!7034547))

(assert (= (and d!2195235 (not c!1308671)) b!7034548))

(declare-fun m!7742530 () Bool)

(assert (=> b!7034548 m!7742530))

(assert (=> b!7034135 d!2195235))

(declare-fun d!2195237 () Bool)

(declare-fun lt!2519739 () Int)

(assert (=> d!2195237 (>= lt!2519739 0)))

(declare-fun e!4228874 () Int)

(assert (=> d!2195237 (= lt!2519739 e!4228874)))

(declare-fun c!1308674 () Bool)

(assert (=> d!2195237 (= c!1308674 ((_ is Nil!67805) lt!2519492))))

(assert (=> d!2195237 (= (size!41067 lt!2519492) lt!2519739)))

(declare-fun b!7034549 () Bool)

(assert (=> b!7034549 (= e!4228874 0)))

(declare-fun b!7034550 () Bool)

(assert (=> b!7034550 (= e!4228874 (+ 1 (size!41067 (t!381696 lt!2519492))))))

(assert (= (and d!2195237 c!1308674) b!7034549))

(assert (= (and d!2195237 (not c!1308674)) b!7034550))

(declare-fun m!7742532 () Bool)

(assert (=> b!7034550 m!7742532))

(assert (=> b!7034135 d!2195237))

(assert (=> b!7034135 d!2195003))

(declare-fun bs!1871459 () Bool)

(declare-fun d!2195239 () Bool)

(assert (= bs!1871459 (and d!2195239 d!2195103)))

(declare-fun lambda!415106 () Int)

(assert (=> bs!1871459 (= lambda!415106 lambda!415092)))

(declare-fun bs!1871460 () Bool)

(assert (= bs!1871460 (and d!2195239 d!2195077)))

(assert (=> bs!1871460 (= lambda!415106 lambda!415089)))

(declare-fun bs!1871461 () Bool)

(assert (= bs!1871461 (and d!2195239 d!2195223)))

(assert (=> bs!1871461 (= lambda!415106 lambda!415103)))

(declare-fun bs!1871462 () Bool)

(assert (= bs!1871462 (and d!2195239 d!2195187)))

(assert (=> bs!1871462 (not (= lambda!415106 lambda!415098))))

(declare-fun bs!1871463 () Bool)

(assert (= bs!1871463 (and d!2195239 d!2195179)))

(assert (=> bs!1871463 (= lambda!415106 lambda!415096)))

(declare-fun bs!1871465 () Bool)

(assert (= bs!1871465 (and d!2195239 d!2194871)))

(assert (=> bs!1871465 (not (= lambda!415106 lambda!415076))))

(declare-fun bs!1871467 () Bool)

(assert (= bs!1871467 (and d!2195239 d!2195031)))

(assert (=> bs!1871467 (not (= lambda!415106 lambda!415084))))

(declare-fun bs!1871469 () Bool)

(assert (= bs!1871469 (and d!2195239 d!2194989)))

(assert (=> bs!1871469 (not (= lambda!415106 lambda!415082))))

(declare-fun bs!1871471 () Bool)

(assert (= bs!1871471 (and d!2195239 d!2194855)))

(assert (=> bs!1871471 (not (= lambda!415106 lambda!415073))))

(declare-fun bs!1871472 () Bool)

(assert (= bs!1871472 (and d!2195239 b!7033798)))

(assert (=> bs!1871472 (not (= lambda!415106 lambda!415027))))

(declare-fun bs!1871474 () Bool)

(assert (= bs!1871474 (and d!2195239 b!7033820)))

(assert (=> bs!1871474 (= lambda!415106 lambda!415031)))

(declare-fun bs!1871475 () Bool)

(assert (= bs!1871475 (and d!2195239 d!2195193)))

(assert (=> bs!1871475 (not (= lambda!415106 lambda!415101))))

(declare-fun bs!1871477 () Bool)

(assert (= bs!1871477 (and d!2195239 d!2195049)))

(assert (=> bs!1871477 (= lambda!415106 lambda!415087)))

(assert (=> d!2195239 (= (nullableZipper!2581 lt!2519537) (exists!3397 lt!2519537 lambda!415106))))

(declare-fun bs!1871480 () Bool)

(assert (= bs!1871480 d!2195239))

(declare-fun m!7742536 () Bool)

(assert (=> bs!1871480 m!7742536))

(assert (=> b!7034096 d!2195239))

(declare-fun b!7034551 () Bool)

(declare-fun call!638814 () (InoxSet Context!12926))

(declare-fun e!4228877 () (InoxSet Context!12926))

(assert (=> b!7034551 (= e!4228877 ((_ map or) call!638814 (derivationStepZipperUp!2077 (Context!12927 (t!381696 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519527)))))) (h!74254 s!7408))))))

(declare-fun bm!638809 () Bool)

(assert (=> bm!638809 (= call!638814 (derivationStepZipperDown!2131 (h!74253 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519527))))) (Context!12927 (t!381696 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519527)))))) (h!74254 s!7408)))))

(declare-fun b!7034552 () Bool)

(declare-fun e!4228875 () (InoxSet Context!12926))

(assert (=> b!7034552 (= e!4228875 ((as const (Array Context!12926 Bool)) false))))

(declare-fun b!7034553 () Bool)

(assert (=> b!7034553 (= e!4228875 call!638814)))

(declare-fun b!7034554 () Bool)

(assert (=> b!7034554 (= e!4228877 e!4228875)))

(declare-fun c!1308676 () Bool)

(assert (=> b!7034554 (= c!1308676 ((_ is Cons!67805) (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519527))))))))

(declare-fun d!2195243 () Bool)

(declare-fun c!1308675 () Bool)

(declare-fun e!4228876 () Bool)

(assert (=> d!2195243 (= c!1308675 e!4228876)))

(declare-fun res!2871618 () Bool)

(assert (=> d!2195243 (=> (not res!2871618) (not e!4228876))))

(assert (=> d!2195243 (= res!2871618 ((_ is Cons!67805) (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519527))))))))

(assert (=> d!2195243 (= (derivationStepZipperUp!2077 (Context!12927 (t!381696 (exprs!6963 lt!2519527))) (h!74254 s!7408)) e!4228877)))

(declare-fun b!7034555 () Bool)

(assert (=> b!7034555 (= e!4228876 (nullable!7178 (h!74253 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519527)))))))))

(assert (= (and d!2195243 res!2871618) b!7034555))

(assert (= (and d!2195243 c!1308675) b!7034551))

(assert (= (and d!2195243 (not c!1308675)) b!7034554))

(assert (= (and b!7034554 c!1308676) b!7034553))

(assert (= (and b!7034554 (not c!1308676)) b!7034552))

(assert (= (or b!7034551 b!7034553) bm!638809))

(declare-fun m!7742540 () Bool)

(assert (=> b!7034551 m!7742540))

(declare-fun m!7742542 () Bool)

(assert (=> bm!638809 m!7742542))

(declare-fun m!7742544 () Bool)

(assert (=> b!7034555 m!7742544))

(assert (=> b!7033955 d!2195243))

(declare-fun d!2195247 () Bool)

(declare-fun c!1308677 () Bool)

(assert (=> d!2195247 (= c!1308677 (isEmpty!39548 (tail!13557 (_2!37343 lt!2519504))))))

(declare-fun e!4228878 () Bool)

(assert (=> d!2195247 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519514 (head!14266 (_2!37343 lt!2519504))) (tail!13557 (_2!37343 lt!2519504))) e!4228878)))

(declare-fun b!7034556 () Bool)

(assert (=> b!7034556 (= e!4228878 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519514 (head!14266 (_2!37343 lt!2519504)))))))

(declare-fun b!7034557 () Bool)

(assert (=> b!7034557 (= e!4228878 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519514 (head!14266 (_2!37343 lt!2519504))) (head!14266 (tail!13557 (_2!37343 lt!2519504)))) (tail!13557 (tail!13557 (_2!37343 lt!2519504)))))))

(assert (= (and d!2195247 c!1308677) b!7034556))

(assert (= (and d!2195247 (not c!1308677)) b!7034557))

(assert (=> d!2195247 m!7741418))

(declare-fun m!7742546 () Bool)

(assert (=> d!2195247 m!7742546))

(assert (=> b!7034556 m!7741416))

(declare-fun m!7742548 () Bool)

(assert (=> b!7034556 m!7742548))

(assert (=> b!7034557 m!7741418))

(declare-fun m!7742550 () Bool)

(assert (=> b!7034557 m!7742550))

(assert (=> b!7034557 m!7741416))

(assert (=> b!7034557 m!7742550))

(declare-fun m!7742552 () Bool)

(assert (=> b!7034557 m!7742552))

(assert (=> b!7034557 m!7741418))

(declare-fun m!7742554 () Bool)

(assert (=> b!7034557 m!7742554))

(assert (=> b!7034557 m!7742552))

(assert (=> b!7034557 m!7742554))

(declare-fun m!7742556 () Bool)

(assert (=> b!7034557 m!7742556))

(assert (=> b!7033904 d!2195247))

(declare-fun bs!1871491 () Bool)

(declare-fun d!2195249 () Bool)

(assert (= bs!1871491 (and d!2195249 d!2195161)))

(declare-fun lambda!415110 () Int)

(assert (=> bs!1871491 (= (= (head!14266 (_2!37343 lt!2519504)) (head!14266 (t!381697 s!7408))) (= lambda!415110 lambda!415095))))

(declare-fun bs!1871492 () Bool)

(assert (= bs!1871492 (and d!2195249 d!2194769)))

(assert (=> bs!1871492 (= (= (head!14266 (_2!37343 lt!2519504)) (h!74254 s!7408)) (= lambda!415110 lambda!415057))))

(declare-fun bs!1871493 () Bool)

(assert (= bs!1871493 (and d!2195249 d!2195185)))

(assert (=> bs!1871493 (= (= (head!14266 (_2!37343 lt!2519504)) (head!14266 (_1!37343 lt!2519504))) (= lambda!415110 lambda!415097))))

(declare-fun bs!1871494 () Bool)

(assert (= bs!1871494 (and d!2195249 d!2194967)))

(assert (=> bs!1871494 (= (= (head!14266 (_2!37343 lt!2519504)) (head!14266 (_1!37343 lt!2519504))) (= lambda!415110 lambda!415079))))

(declare-fun bs!1871495 () Bool)

(assert (= bs!1871495 (and d!2195249 d!2194845)))

(assert (=> bs!1871495 (= (= (head!14266 (_2!37343 lt!2519504)) (h!74254 s!7408)) (= lambda!415110 lambda!415069))))

(declare-fun bs!1871496 () Bool)

(assert (= bs!1871496 (and d!2195249 b!7033797)))

(assert (=> bs!1871496 (= (= (head!14266 (_2!37343 lt!2519504)) (h!74254 s!7408)) (= lambda!415110 lambda!415030))))

(declare-fun bs!1871497 () Bool)

(assert (= bs!1871497 (and d!2195249 d!2195143)))

(assert (=> bs!1871497 (= (= (head!14266 (_2!37343 lt!2519504)) (head!14266 (t!381697 s!7408))) (= lambda!415110 lambda!415093))))

(declare-fun bs!1871498 () Bool)

(assert (= bs!1871498 (and d!2195249 d!2194981)))

(assert (=> bs!1871498 (= (= (head!14266 (_2!37343 lt!2519504)) (head!14266 s!7408)) (= lambda!415110 lambda!415081))))

(declare-fun bs!1871499 () Bool)

(assert (= bs!1871499 (and d!2195249 d!2195081)))

(assert (=> bs!1871499 (= (= (head!14266 (_2!37343 lt!2519504)) (head!14266 (t!381697 s!7408))) (= lambda!415110 lambda!415090))))

(declare-fun bs!1871500 () Bool)

(assert (= bs!1871500 (and d!2195249 d!2195101)))

(assert (=> bs!1871500 (= (= (head!14266 (_2!37343 lt!2519504)) (head!14266 s!7408)) (= lambda!415110 lambda!415091))))

(declare-fun bs!1871501 () Bool)

(assert (= bs!1871501 (and d!2195249 d!2195075)))

(assert (=> bs!1871501 (= (= (head!14266 (_2!37343 lt!2519504)) (head!14266 s!7408)) (= lambda!415110 lambda!415088))))

(assert (=> d!2195249 true))

(assert (=> d!2195249 (= (derivationStepZipper!2923 lt!2519514 (head!14266 (_2!37343 lt!2519504))) (flatMap!2414 lt!2519514 lambda!415110))))

(declare-fun bs!1871502 () Bool)

(assert (= bs!1871502 d!2195249))

(declare-fun m!7742584 () Bool)

(assert (=> bs!1871502 m!7742584))

(assert (=> b!7033904 d!2195249))

(declare-fun d!2195259 () Bool)

(assert (=> d!2195259 (= (head!14266 (_2!37343 lt!2519504)) (h!74254 (_2!37343 lt!2519504)))))

(assert (=> b!7033904 d!2195259))

(declare-fun d!2195261 () Bool)

(assert (=> d!2195261 (= (tail!13557 (_2!37343 lt!2519504)) (t!381697 (_2!37343 lt!2519504)))))

(assert (=> b!7033904 d!2195261))

(declare-fun d!2195265 () Bool)

(declare-fun c!1308680 () Bool)

(assert (=> d!2195265 (= c!1308680 (isEmpty!39548 (tail!13557 (t!381697 s!7408))))))

(declare-fun e!4228887 () Bool)

(assert (=> d!2195265 (= (matchZipper!3007 (derivationStepZipper!2923 lt!2519533 (head!14266 (t!381697 s!7408))) (tail!13557 (t!381697 s!7408))) e!4228887)))

(declare-fun b!7034569 () Bool)

(assert (=> b!7034569 (= e!4228887 (nullableZipper!2581 (derivationStepZipper!2923 lt!2519533 (head!14266 (t!381697 s!7408)))))))

(declare-fun b!7034570 () Bool)

(assert (=> b!7034570 (= e!4228887 (matchZipper!3007 (derivationStepZipper!2923 (derivationStepZipper!2923 lt!2519533 (head!14266 (t!381697 s!7408))) (head!14266 (tail!13557 (t!381697 s!7408)))) (tail!13557 (tail!13557 (t!381697 s!7408)))))))

(assert (= (and d!2195265 c!1308680) b!7034569))

(assert (= (and d!2195265 (not c!1308680)) b!7034570))

(assert (=> d!2195265 m!7741678))

(assert (=> d!2195265 m!7742192))

(assert (=> b!7034569 m!7741808))

(declare-fun m!7742592 () Bool)

(assert (=> b!7034569 m!7742592))

(assert (=> b!7034570 m!7741678))

(assert (=> b!7034570 m!7742196))

(assert (=> b!7034570 m!7741808))

(assert (=> b!7034570 m!7742196))

(declare-fun m!7742594 () Bool)

(assert (=> b!7034570 m!7742594))

(assert (=> b!7034570 m!7741678))

(assert (=> b!7034570 m!7742200))

(assert (=> b!7034570 m!7742594))

(assert (=> b!7034570 m!7742200))

(declare-fun m!7742596 () Bool)

(assert (=> b!7034570 m!7742596))

(assert (=> b!7034110 d!2195265))

(declare-fun bs!1871508 () Bool)

(declare-fun d!2195271 () Bool)

(assert (= bs!1871508 (and d!2195271 d!2195161)))

(declare-fun lambda!415112 () Int)

(assert (=> bs!1871508 (= lambda!415112 lambda!415095)))

(declare-fun bs!1871510 () Bool)

(assert (= bs!1871510 (and d!2195271 d!2194769)))

(assert (=> bs!1871510 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415112 lambda!415057))))

(declare-fun bs!1871512 () Bool)

(assert (= bs!1871512 (and d!2195271 d!2195185)))

(assert (=> bs!1871512 (= (= (head!14266 (t!381697 s!7408)) (head!14266 (_1!37343 lt!2519504))) (= lambda!415112 lambda!415097))))

(declare-fun bs!1871513 () Bool)

(assert (= bs!1871513 (and d!2195271 d!2194967)))

(assert (=> bs!1871513 (= (= (head!14266 (t!381697 s!7408)) (head!14266 (_1!37343 lt!2519504))) (= lambda!415112 lambda!415079))))

(declare-fun bs!1871515 () Bool)

(assert (= bs!1871515 (and d!2195271 d!2194845)))

(assert (=> bs!1871515 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415112 lambda!415069))))

(declare-fun bs!1871516 () Bool)

(assert (= bs!1871516 (and d!2195271 b!7033797)))

(assert (=> bs!1871516 (= (= (head!14266 (t!381697 s!7408)) (h!74254 s!7408)) (= lambda!415112 lambda!415030))))

(declare-fun bs!1871517 () Bool)

(assert (= bs!1871517 (and d!2195271 d!2195143)))

(assert (=> bs!1871517 (= lambda!415112 lambda!415093)))

(declare-fun bs!1871518 () Bool)

(assert (= bs!1871518 (and d!2195271 d!2195249)))

(assert (=> bs!1871518 (= (= (head!14266 (t!381697 s!7408)) (head!14266 (_2!37343 lt!2519504))) (= lambda!415112 lambda!415110))))

(declare-fun bs!1871519 () Bool)

(assert (= bs!1871519 (and d!2195271 d!2194981)))

(assert (=> bs!1871519 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415112 lambda!415081))))

(declare-fun bs!1871520 () Bool)

(assert (= bs!1871520 (and d!2195271 d!2195081)))

(assert (=> bs!1871520 (= lambda!415112 lambda!415090)))

(declare-fun bs!1871521 () Bool)

(assert (= bs!1871521 (and d!2195271 d!2195101)))

(assert (=> bs!1871521 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415112 lambda!415091))))

(declare-fun bs!1871522 () Bool)

(assert (= bs!1871522 (and d!2195271 d!2195075)))

(assert (=> bs!1871522 (= (= (head!14266 (t!381697 s!7408)) (head!14266 s!7408)) (= lambda!415112 lambda!415088))))

(assert (=> d!2195271 true))

(assert (=> d!2195271 (= (derivationStepZipper!2923 lt!2519533 (head!14266 (t!381697 s!7408))) (flatMap!2414 lt!2519533 lambda!415112))))

(declare-fun bs!1871523 () Bool)

(assert (= bs!1871523 d!2195271))

(declare-fun m!7742606 () Bool)

(assert (=> bs!1871523 m!7742606))

(assert (=> b!7034110 d!2195271))

(assert (=> b!7034110 d!2195083))

(assert (=> b!7034110 d!2195085))

(declare-fun c!1308687 () Bool)

(declare-fun d!2195277 () Bool)

(assert (=> d!2195277 (= c!1308687 (and ((_ is ElementMatch!17467) (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))) (= (c!1308424 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))) (h!74254 s!7408))))))

(declare-fun e!4228896 () (InoxSet Context!12926))

(assert (=> d!2195277 (= (derivationStepZipperDown!2131 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501)))) (ite c!1308551 lt!2519527 (Context!12927 call!638773)) (h!74254 s!7408)) e!4228896)))

(declare-fun bm!638811 () Bool)

(declare-fun call!638818 () List!67929)

(declare-fun c!1308684 () Bool)

(declare-fun c!1308686 () Bool)

(assert (=> bm!638811 (= call!638818 ($colon$colon!2575 (exprs!6963 (ite c!1308551 lt!2519527 (Context!12927 call!638773))) (ite (or c!1308684 c!1308686) (regTwo!35446 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))) (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501)))))))))

(declare-fun b!7034576 () Bool)

(declare-fun e!4228895 () (InoxSet Context!12926))

(declare-fun call!638821 () (InoxSet Context!12926))

(assert (=> b!7034576 (= e!4228895 call!638821)))

(declare-fun b!7034577 () Bool)

(declare-fun e!4228893 () (InoxSet Context!12926))

(assert (=> b!7034577 (= e!4228896 e!4228893)))

(declare-fun c!1308683 () Bool)

(assert (=> b!7034577 (= c!1308683 ((_ is Union!17467) (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))))))

(declare-fun bm!638812 () Bool)

(declare-fun call!638817 () (InoxSet Context!12926))

(declare-fun call!638820 () (InoxSet Context!12926))

(assert (=> bm!638812 (= call!638817 call!638820)))

(declare-fun bm!638813 () Bool)

(declare-fun call!638816 () List!67929)

(assert (=> bm!638813 (= call!638820 (derivationStepZipperDown!2131 (ite c!1308683 (regOne!35447 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))) (ite c!1308684 (regTwo!35446 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))) (ite c!1308686 (regOne!35446 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))) (reg!17796 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501)))))))) (ite (or c!1308683 c!1308684) (ite c!1308551 lt!2519527 (Context!12927 call!638773)) (Context!12927 call!638816)) (h!74254 s!7408)))))

(declare-fun b!7034578 () Bool)

(assert (=> b!7034578 (= e!4228896 (store ((as const (Array Context!12926 Bool)) false) (ite c!1308551 lt!2519527 (Context!12927 call!638773)) true))))

(declare-fun b!7034579 () Bool)

(declare-fun e!4228891 () Bool)

(assert (=> b!7034579 (= c!1308684 e!4228891)))

(declare-fun res!2871626 () Bool)

(assert (=> b!7034579 (=> (not res!2871626) (not e!4228891))))

(assert (=> b!7034579 (= res!2871626 ((_ is Concat!26312) (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))))))

(declare-fun e!4228892 () (InoxSet Context!12926))

(assert (=> b!7034579 (= e!4228893 e!4228892)))

(declare-fun b!7034580 () Bool)

(declare-fun call!638819 () (InoxSet Context!12926))

(assert (=> b!7034580 (= e!4228892 ((_ map or) call!638819 call!638817))))

(declare-fun bm!638814 () Bool)

(assert (=> bm!638814 (= call!638819 (derivationStepZipperDown!2131 (ite c!1308683 (regTwo!35447 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))) (regOne!35446 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501)))))) (ite c!1308683 (ite c!1308551 lt!2519527 (Context!12927 call!638773)) (Context!12927 call!638818)) (h!74254 s!7408)))))

(declare-fun b!7034581 () Bool)

(declare-fun e!4228894 () (InoxSet Context!12926))

(assert (=> b!7034581 (= e!4228894 ((as const (Array Context!12926 Bool)) false))))

(declare-fun bm!638815 () Bool)

(assert (=> bm!638815 (= call!638821 call!638817)))

(declare-fun bm!638816 () Bool)

(assert (=> bm!638816 (= call!638816 call!638818)))

(declare-fun b!7034582 () Bool)

(assert (=> b!7034582 (= e!4228894 call!638821)))

(declare-fun b!7034583 () Bool)

(assert (=> b!7034583 (= e!4228891 (nullable!7178 (regOne!35446 (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501)))))))))

(declare-fun b!7034584 () Bool)

(assert (=> b!7034584 (= e!4228893 ((_ map or) call!638820 call!638819))))

(declare-fun b!7034585 () Bool)

(declare-fun c!1308685 () Bool)

(assert (=> b!7034585 (= c!1308685 ((_ is Star!17467) (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))))))

(assert (=> b!7034585 (= e!4228895 e!4228894)))

(declare-fun b!7034586 () Bool)

(assert (=> b!7034586 (= e!4228892 e!4228895)))

(assert (=> b!7034586 (= c!1308686 ((_ is Concat!26312) (ite c!1308551 (regTwo!35447 (h!74253 (exprs!6963 lt!2519501))) (regOne!35446 (h!74253 (exprs!6963 lt!2519501))))))))

(assert (= (and d!2195277 c!1308687) b!7034578))

(assert (= (and d!2195277 (not c!1308687)) b!7034577))

(assert (= (and b!7034577 c!1308683) b!7034584))

(assert (= (and b!7034577 (not c!1308683)) b!7034579))

(assert (= (and b!7034579 res!2871626) b!7034583))

(assert (= (and b!7034579 c!1308684) b!7034580))

(assert (= (and b!7034579 (not c!1308684)) b!7034586))

(assert (= (and b!7034586 c!1308686) b!7034576))

(assert (= (and b!7034586 (not c!1308686)) b!7034585))

(assert (= (and b!7034585 c!1308685) b!7034582))

(assert (= (and b!7034585 (not c!1308685)) b!7034581))

(assert (= (or b!7034576 b!7034582) bm!638816))

(assert (= (or b!7034576 b!7034582) bm!638815))

(assert (= (or b!7034580 bm!638815) bm!638812))

(assert (= (or b!7034580 bm!638816) bm!638811))

(assert (= (or b!7034584 bm!638812) bm!638813))

(assert (= (or b!7034584 b!7034580) bm!638814))

(declare-fun m!7742608 () Bool)

(assert (=> bm!638814 m!7742608))

(declare-fun m!7742610 () Bool)

(assert (=> bm!638811 m!7742610))

(declare-fun m!7742612 () Bool)

(assert (=> bm!638813 m!7742612))

(declare-fun m!7742614 () Bool)

(assert (=> b!7034583 m!7742614))

(declare-fun m!7742616 () Bool)

(assert (=> b!7034578 m!7742616))

(assert (=> bm!638769 d!2195277))

(declare-fun d!2195279 () Bool)

(assert (=> d!2195279 true))

(declare-fun setRes!49198 () Bool)

(assert (=> d!2195279 setRes!49198))

(declare-fun condSetEmpty!49198 () Bool)

(declare-fun res!2871633 () (InoxSet Context!12926))

(assert (=> d!2195279 (= condSetEmpty!49198 (= res!2871633 ((as const (Array Context!12926 Bool)) false)))))

(assert (=> d!2195279 (= (choose!53287 lt!2519520 lambda!415028) res!2871633)))

(declare-fun setIsEmpty!49198 () Bool)

(assert (=> setIsEmpty!49198 setRes!49198))

(declare-fun setNonEmpty!49198 () Bool)

(declare-fun setElem!49198 () Context!12926)

(declare-fun e!4228908 () Bool)

(declare-fun tp!1936644 () Bool)

(assert (=> setNonEmpty!49198 (= setRes!49198 (and tp!1936644 (inv!86526 setElem!49198) e!4228908))))

(declare-fun setRest!49198 () (InoxSet Context!12926))

(assert (=> setNonEmpty!49198 (= res!2871633 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) setElem!49198 true) setRest!49198))))

(declare-fun b!7034603 () Bool)

(declare-fun tp!1936645 () Bool)

(assert (=> b!7034603 (= e!4228908 tp!1936645)))

(assert (= (and d!2195279 condSetEmpty!49198) setIsEmpty!49198))

(assert (= (and d!2195279 (not condSetEmpty!49198)) setNonEmpty!49198))

(assert (= setNonEmpty!49198 b!7034603))

(declare-fun m!7742628 () Bool)

(assert (=> setNonEmpty!49198 m!7742628))

(assert (=> d!2194895 d!2195279))

(assert (=> d!2194765 d!2194763))

(declare-fun d!2195287 () Bool)

(assert (=> d!2195287 (exists!3397 lt!2519520 lambda!415031)))

(assert (=> d!2195287 true))

(declare-fun _$17!636 () Unit!161608)

(assert (=> d!2195287 (= (choose!53271 lt!2519520 lt!2519545 lambda!415031) _$17!636)))

(declare-fun bs!1871524 () Bool)

(assert (= bs!1871524 d!2195287))

(assert (=> bs!1871524 m!7741136))

(assert (=> d!2194765 d!2195287))

(assert (=> d!2194905 d!2194889))

(assert (=> d!2194905 d!2194901))

(declare-fun d!2195293 () Bool)

(assert (=> d!2195293 (<= (contextDepthTotal!502 lt!2519501) (zipperDepthTotal!530 lt!2519525))))

(assert (=> d!2195293 true))

(declare-fun _$53!122 () Unit!161608)

(assert (=> d!2195293 (= (choose!53288 lt!2519525 lt!2519501) _$53!122)))

(declare-fun bs!1871532 () Bool)

(assert (= bs!1871532 d!2195293))

(assert (=> bs!1871532 m!7741158))

(assert (=> bs!1871532 m!7741142))

(assert (=> d!2194905 d!2195293))

(declare-fun d!2195297 () Bool)

(declare-fun lt!2519744 () Bool)

(assert (=> d!2195297 (= lt!2519744 (select (content!13539 lt!2519525) lt!2519501))))

(declare-fun e!4228919 () Bool)

(assert (=> d!2195297 (= lt!2519744 e!4228919)))

(declare-fun res!2871643 () Bool)

(assert (=> d!2195297 (=> (not res!2871643) (not e!4228919))))

(assert (=> d!2195297 (= res!2871643 ((_ is Cons!67807) lt!2519525))))

(assert (=> d!2195297 (= (contains!20458 lt!2519525 lt!2519501) lt!2519744)))

(declare-fun b!7034616 () Bool)

(declare-fun e!4228920 () Bool)

(assert (=> b!7034616 (= e!4228919 e!4228920)))

(declare-fun res!2871642 () Bool)

(assert (=> b!7034616 (=> res!2871642 e!4228920)))

(assert (=> b!7034616 (= res!2871642 (= (h!74255 lt!2519525) lt!2519501))))

(declare-fun b!7034617 () Bool)

(assert (=> b!7034617 (= e!4228920 (contains!20458 (t!381698 lt!2519525) lt!2519501))))

(assert (= (and d!2195297 res!2871643) b!7034616))

(assert (= (and b!7034616 (not res!2871642)) b!7034617))

(declare-fun m!7742652 () Bool)

(assert (=> d!2195297 m!7742652))

(declare-fun m!7742654 () Bool)

(assert (=> d!2195297 m!7742654))

(declare-fun m!7742656 () Bool)

(assert (=> b!7034617 m!7742656))

(assert (=> d!2194905 d!2195297))

(declare-fun d!2195305 () Bool)

(declare-fun res!2871644 () Bool)

(declare-fun e!4228921 () Bool)

(assert (=> d!2195305 (=> res!2871644 e!4228921)))

(assert (=> d!2195305 (= res!2871644 ((_ is Nil!67805) (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306))))))

(assert (=> d!2195305 (= (forall!16381 (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306)) lambda!415029) e!4228921)))

(declare-fun b!7034618 () Bool)

(declare-fun e!4228922 () Bool)

(assert (=> b!7034618 (= e!4228921 e!4228922)))

(declare-fun res!2871645 () Bool)

(assert (=> b!7034618 (=> (not res!2871645) (not e!4228922))))

(assert (=> b!7034618 (= res!2871645 (dynLambda!27391 lambda!415029 (h!74253 (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306)))))))

(declare-fun b!7034619 () Bool)

(assert (=> b!7034619 (= e!4228922 (forall!16381 (t!381696 (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306))) lambda!415029))))

(assert (= (and d!2195305 (not res!2871644)) b!7034618))

(assert (= (and b!7034618 res!2871645) b!7034619))

(declare-fun b_lambda!266677 () Bool)

(assert (=> (not b_lambda!266677) (not b!7034618)))

(declare-fun m!7742658 () Bool)

(assert (=> b!7034618 m!7742658))

(declare-fun m!7742660 () Bool)

(assert (=> b!7034619 m!7742660))

(assert (=> d!2194833 d!2195305))

(assert (=> d!2194833 d!2194913))

(declare-fun d!2195307 () Bool)

(assert (=> d!2195307 (forall!16381 (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306)) lambda!415029)))

(assert (=> d!2195307 true))

(declare-fun _$78!590 () Unit!161608)

(assert (=> d!2195307 (= (choose!53275 (exprs!6963 lt!2519501) (exprs!6963 ct2!306) lambda!415029) _$78!590)))

(declare-fun bs!1871546 () Bool)

(assert (= bs!1871546 d!2195307))

(assert (=> bs!1871546 m!7741214))

(assert (=> bs!1871546 m!7741214))

(assert (=> bs!1871546 m!7741682))

(assert (=> d!2194833 d!2195307))

(declare-fun d!2195311 () Bool)

(declare-fun res!2871646 () Bool)

(declare-fun e!4228923 () Bool)

(assert (=> d!2195311 (=> res!2871646 e!4228923)))

(assert (=> d!2195311 (= res!2871646 ((_ is Nil!67805) (exprs!6963 lt!2519501)))))

(assert (=> d!2195311 (= (forall!16381 (exprs!6963 lt!2519501) lambda!415029) e!4228923)))

(declare-fun b!7034620 () Bool)

(declare-fun e!4228924 () Bool)

(assert (=> b!7034620 (= e!4228923 e!4228924)))

(declare-fun res!2871647 () Bool)

(assert (=> b!7034620 (=> (not res!2871647) (not e!4228924))))

(assert (=> b!7034620 (= res!2871647 (dynLambda!27391 lambda!415029 (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun b!7034621 () Bool)

(assert (=> b!7034621 (= e!4228924 (forall!16381 (t!381696 (exprs!6963 lt!2519501)) lambda!415029))))

(assert (= (and d!2195311 (not res!2871646)) b!7034620))

(assert (= (and b!7034620 res!2871647) b!7034621))

(declare-fun b_lambda!266679 () Bool)

(assert (=> (not b_lambda!266679) (not b!7034620)))

(declare-fun m!7742664 () Bool)

(assert (=> b!7034620 m!7742664))

(declare-fun m!7742666 () Bool)

(assert (=> b!7034621 m!7742666))

(assert (=> d!2194833 d!2195311))

(declare-fun d!2195313 () Bool)

(declare-fun e!4228933 () Bool)

(assert (=> d!2195313 e!4228933))

(declare-fun res!2871650 () Bool)

(assert (=> d!2195313 (=> (not res!2871650) (not e!4228933))))

(declare-fun a!13214 () Context!12926)

(assert (=> d!2195313 (= res!2871650 (= lt!2519506 (dynLambda!27390 lambda!415028 a!13214)))))

(declare-fun e!4228932 () Bool)

(assert (=> d!2195313 (and (inv!86526 a!13214) e!4228932)))

(assert (=> d!2195313 (= (choose!53290 z1!570 lambda!415028 lt!2519506) a!13214)))

(declare-fun b!7034633 () Bool)

(declare-fun tp!1936648 () Bool)

(assert (=> b!7034633 (= e!4228932 tp!1936648)))

(declare-fun b!7034634 () Bool)

(assert (=> b!7034634 (= e!4228933 (select z1!570 a!13214))))

(assert (= d!2195313 b!7034633))

(assert (= (and d!2195313 res!2871650) b!7034634))

(declare-fun b_lambda!266681 () Bool)

(assert (=> (not b_lambda!266681) (not d!2195313)))

(declare-fun m!7742670 () Bool)

(assert (=> d!2195313 m!7742670))

(declare-fun m!7742672 () Bool)

(assert (=> d!2195313 m!7742672))

(declare-fun m!7742674 () Bool)

(assert (=> b!7034634 m!7742674))

(assert (=> d!2194915 d!2195313))

(declare-fun d!2195317 () Bool)

(assert (=> d!2195317 (= (map!15768 z1!570 lambda!415028) (choose!53287 z1!570 lambda!415028))))

(declare-fun bs!1871547 () Bool)

(assert (= bs!1871547 d!2195317))

(declare-fun m!7742676 () Bool)

(assert (=> bs!1871547 m!7742676))

(assert (=> d!2194915 d!2195317))

(assert (=> b!7034025 d!2195149))

(declare-fun d!2195321 () Bool)

(declare-fun e!4228951 () Bool)

(assert (=> d!2195321 e!4228951))

(declare-fun res!2871660 () Bool)

(assert (=> d!2195321 (=> (not res!2871660) (not e!4228951))))

(declare-fun lt!2519755 () Context!12926)

(assert (=> d!2195321 (= res!2871660 (dynLambda!27389 lambda!415027 lt!2519755))))

(declare-fun e!4228950 () Context!12926)

(assert (=> d!2195321 (= lt!2519755 e!4228950)))

(declare-fun c!1308708 () Bool)

(declare-fun e!4228949 () Bool)

(assert (=> d!2195321 (= c!1308708 e!4228949)))

(declare-fun res!2871659 () Bool)

(assert (=> d!2195321 (=> (not res!2871659) (not e!4228949))))

(assert (=> d!2195321 (= res!2871659 ((_ is Cons!67807) (toList!10810 lt!2519543)))))

(assert (=> d!2195321 (exists!3396 (toList!10810 lt!2519543) lambda!415027)))

(assert (=> d!2195321 (= (getWitness!1476 (toList!10810 lt!2519543) lambda!415027) lt!2519755)))

(declare-fun b!7034658 () Bool)

(assert (=> b!7034658 (= e!4228949 (dynLambda!27389 lambda!415027 (h!74255 (toList!10810 lt!2519543))))))

(declare-fun b!7034659 () Bool)

(assert (=> b!7034659 (= e!4228951 (contains!20458 (toList!10810 lt!2519543) lt!2519755))))

(declare-fun b!7034660 () Bool)

(declare-fun e!4228948 () Context!12926)

(assert (=> b!7034660 (= e!4228950 e!4228948)))

(declare-fun c!1308709 () Bool)

(assert (=> b!7034660 (= c!1308709 ((_ is Cons!67807) (toList!10810 lt!2519543)))))

(declare-fun b!7034661 () Bool)

(declare-fun lt!2519756 () Unit!161608)

(declare-fun Unit!161612 () Unit!161608)

(assert (=> b!7034661 (= lt!2519756 Unit!161612)))

(assert (=> b!7034661 false))

(declare-fun head!14268 (List!67931) Context!12926)

(assert (=> b!7034661 (= e!4228948 (head!14268 (toList!10810 lt!2519543)))))

(declare-fun b!7034662 () Bool)

(assert (=> b!7034662 (= e!4228950 (h!74255 (toList!10810 lt!2519543)))))

(declare-fun b!7034663 () Bool)

(assert (=> b!7034663 (= e!4228948 (getWitness!1476 (t!381698 (toList!10810 lt!2519543)) lambda!415027))))

(assert (= (and d!2195321 res!2871659) b!7034658))

(assert (= (and d!2195321 c!1308708) b!7034662))

(assert (= (and d!2195321 (not c!1308708)) b!7034660))

(assert (= (and b!7034660 c!1308709) b!7034663))

(assert (= (and b!7034660 (not c!1308709)) b!7034661))

(assert (= (and d!2195321 res!2871660) b!7034659))

(declare-fun b_lambda!266683 () Bool)

(assert (=> (not b_lambda!266683) (not d!2195321)))

(declare-fun b_lambda!266685 () Bool)

(assert (=> (not b_lambda!266685) (not b!7034658)))

(assert (=> b!7034661 m!7741234))

(declare-fun m!7742700 () Bool)

(assert (=> b!7034661 m!7742700))

(declare-fun m!7742702 () Bool)

(assert (=> d!2195321 m!7742702))

(assert (=> d!2195321 m!7741234))

(declare-fun m!7742704 () Bool)

(assert (=> d!2195321 m!7742704))

(declare-fun m!7742708 () Bool)

(assert (=> b!7034658 m!7742708))

(declare-fun m!7742710 () Bool)

(assert (=> b!7034663 m!7742710))

(assert (=> b!7034659 m!7741234))

(declare-fun m!7742712 () Bool)

(assert (=> b!7034659 m!7742712))

(assert (=> d!2194875 d!2195321))

(assert (=> d!2194875 d!2194877))

(declare-fun d!2195339 () Bool)

(declare-fun lt!2519757 () Bool)

(assert (=> d!2195339 (= lt!2519757 (exists!3396 (toList!10810 lt!2519543) lambda!415027))))

(assert (=> d!2195339 (= lt!2519757 (choose!53273 lt!2519543 lambda!415027))))

(assert (=> d!2195339 (= (exists!3397 lt!2519543 lambda!415027) lt!2519757)))

(declare-fun bs!1871566 () Bool)

(assert (= bs!1871566 d!2195339))

(assert (=> bs!1871566 m!7741234))

(assert (=> bs!1871566 m!7741234))

(assert (=> bs!1871566 m!7742704))

(declare-fun m!7742718 () Bool)

(assert (=> bs!1871566 m!7742718))

(assert (=> d!2194875 d!2195339))

(declare-fun d!2195343 () Bool)

(declare-fun c!1308714 () Bool)

(assert (=> d!2195343 (= c!1308714 (isEmpty!39548 (_1!37343 (get!23756 lt!2519633))))))

(declare-fun e!4228956 () Bool)

(assert (=> d!2195343 (= (matchZipper!3007 lt!2519520 (_1!37343 (get!23756 lt!2519633))) e!4228956)))

(declare-fun b!7034672 () Bool)

(assert (=> b!7034672 (= e!4228956 (nullableZipper!2581 lt!2519520))))

(declare-fun b!7034673 () Bool)

(assert (=> b!7034673 (= e!4228956 (matchZipper!3007 (derivationStepZipper!2923 lt!2519520 (head!14266 (_1!37343 (get!23756 lt!2519633)))) (tail!13557 (_1!37343 (get!23756 lt!2519633)))))))

(assert (= (and d!2195343 c!1308714) b!7034672))

(assert (= (and d!2195343 (not c!1308714)) b!7034673))

(declare-fun m!7742726 () Bool)

(assert (=> d!2195343 m!7742726))

(assert (=> b!7034672 m!7741528))

(declare-fun m!7742728 () Bool)

(assert (=> b!7034673 m!7742728))

(assert (=> b!7034673 m!7742728))

(declare-fun m!7742730 () Bool)

(assert (=> b!7034673 m!7742730))

(declare-fun m!7742732 () Bool)

(assert (=> b!7034673 m!7742732))

(assert (=> b!7034673 m!7742730))

(assert (=> b!7034673 m!7742732))

(declare-fun m!7742734 () Bool)

(assert (=> b!7034673 m!7742734))

(assert (=> b!7034029 d!2195343))

(assert (=> b!7034029 d!2195019))

(assert (=> b!7034108 d!2194831))

(declare-fun bs!1871569 () Bool)

(declare-fun d!2195347 () Bool)

(assert (= bs!1871569 (and d!2195347 d!2195239)))

(declare-fun lambda!415118 () Int)

(assert (=> bs!1871569 (= lambda!415118 lambda!415106)))

(declare-fun bs!1871571 () Bool)

(assert (= bs!1871571 (and d!2195347 d!2195103)))

(assert (=> bs!1871571 (= lambda!415118 lambda!415092)))

(declare-fun bs!1871573 () Bool)

(assert (= bs!1871573 (and d!2195347 d!2195077)))

(assert (=> bs!1871573 (= lambda!415118 lambda!415089)))

(declare-fun bs!1871574 () Bool)

(assert (= bs!1871574 (and d!2195347 d!2195223)))

(assert (=> bs!1871574 (= lambda!415118 lambda!415103)))

(declare-fun bs!1871576 () Bool)

(assert (= bs!1871576 (and d!2195347 d!2195187)))

(assert (=> bs!1871576 (not (= lambda!415118 lambda!415098))))

(declare-fun bs!1871578 () Bool)

(assert (= bs!1871578 (and d!2195347 d!2195179)))

(assert (=> bs!1871578 (= lambda!415118 lambda!415096)))

(declare-fun bs!1871579 () Bool)

(assert (= bs!1871579 (and d!2195347 d!2194871)))

(assert (=> bs!1871579 (not (= lambda!415118 lambda!415076))))

(declare-fun bs!1871581 () Bool)

(assert (= bs!1871581 (and d!2195347 d!2195031)))

(assert (=> bs!1871581 (not (= lambda!415118 lambda!415084))))

(declare-fun bs!1871582 () Bool)

(assert (= bs!1871582 (and d!2195347 d!2194989)))

(assert (=> bs!1871582 (not (= lambda!415118 lambda!415082))))

(declare-fun bs!1871583 () Bool)

(assert (= bs!1871583 (and d!2195347 d!2194855)))

(assert (=> bs!1871583 (not (= lambda!415118 lambda!415073))))

(declare-fun bs!1871584 () Bool)

(assert (= bs!1871584 (and d!2195347 b!7033798)))

(assert (=> bs!1871584 (not (= lambda!415118 lambda!415027))))

(declare-fun bs!1871585 () Bool)

(assert (= bs!1871585 (and d!2195347 b!7033820)))

(assert (=> bs!1871585 (= lambda!415118 lambda!415031)))

(declare-fun bs!1871586 () Bool)

(assert (= bs!1871586 (and d!2195347 d!2195193)))

(assert (=> bs!1871586 (not (= lambda!415118 lambda!415101))))

(declare-fun bs!1871587 () Bool)

(assert (= bs!1871587 (and d!2195347 d!2195049)))

(assert (=> bs!1871587 (= lambda!415118 lambda!415087)))

(assert (=> d!2195347 (= (nullableZipper!2581 lt!2519520) (exists!3397 lt!2519520 lambda!415118))))

(declare-fun bs!1871589 () Bool)

(assert (= bs!1871589 d!2195347))

(declare-fun m!7742750 () Bool)

(assert (=> bs!1871589 m!7742750))

(assert (=> b!7033981 d!2195347))

(declare-fun bs!1871592 () Bool)

(declare-fun d!2195353 () Bool)

(assert (= bs!1871592 (and d!2195353 d!2195347)))

(declare-fun lambda!415120 () Int)

(assert (=> bs!1871592 (= lambda!415120 lambda!415118)))

(declare-fun bs!1871594 () Bool)

(assert (= bs!1871594 (and d!2195353 d!2195239)))

(assert (=> bs!1871594 (= lambda!415120 lambda!415106)))

(declare-fun bs!1871596 () Bool)

(assert (= bs!1871596 (and d!2195353 d!2195103)))

(assert (=> bs!1871596 (= lambda!415120 lambda!415092)))

(declare-fun bs!1871597 () Bool)

(assert (= bs!1871597 (and d!2195353 d!2195077)))

(assert (=> bs!1871597 (= lambda!415120 lambda!415089)))

(declare-fun bs!1871599 () Bool)

(assert (= bs!1871599 (and d!2195353 d!2195223)))

(assert (=> bs!1871599 (= lambda!415120 lambda!415103)))

(declare-fun bs!1871601 () Bool)

(assert (= bs!1871601 (and d!2195353 d!2195187)))

(assert (=> bs!1871601 (not (= lambda!415120 lambda!415098))))

(declare-fun bs!1871602 () Bool)

(assert (= bs!1871602 (and d!2195353 d!2195179)))

(assert (=> bs!1871602 (= lambda!415120 lambda!415096)))

(declare-fun bs!1871604 () Bool)

(assert (= bs!1871604 (and d!2195353 d!2194871)))

(assert (=> bs!1871604 (not (= lambda!415120 lambda!415076))))

(declare-fun bs!1871605 () Bool)

(assert (= bs!1871605 (and d!2195353 d!2195031)))

(assert (=> bs!1871605 (not (= lambda!415120 lambda!415084))))

(declare-fun bs!1871606 () Bool)

(assert (= bs!1871606 (and d!2195353 d!2194989)))

(assert (=> bs!1871606 (not (= lambda!415120 lambda!415082))))

(declare-fun bs!1871607 () Bool)

(assert (= bs!1871607 (and d!2195353 d!2194855)))

(assert (=> bs!1871607 (not (= lambda!415120 lambda!415073))))

(declare-fun bs!1871608 () Bool)

(assert (= bs!1871608 (and d!2195353 b!7033798)))

(assert (=> bs!1871608 (not (= lambda!415120 lambda!415027))))

(declare-fun bs!1871609 () Bool)

(assert (= bs!1871609 (and d!2195353 b!7033820)))

(assert (=> bs!1871609 (= lambda!415120 lambda!415031)))

(declare-fun bs!1871610 () Bool)

(assert (= bs!1871610 (and d!2195353 d!2195193)))

(assert (=> bs!1871610 (not (= lambda!415120 lambda!415101))))

(declare-fun bs!1871611 () Bool)

(assert (= bs!1871611 (and d!2195353 d!2195049)))

(assert (=> bs!1871611 (= lambda!415120 lambda!415087)))

(assert (=> d!2195353 (= (nullableZipper!2581 lt!2519544) (exists!3397 lt!2519544 lambda!415120))))

(declare-fun bs!1871612 () Bool)

(assert (= bs!1871612 d!2195353))

(declare-fun m!7742754 () Bool)

(assert (=> bs!1871612 m!7742754))

(assert (=> b!7034111 d!2195353))

(declare-fun bs!1871613 () Bool)

(declare-fun d!2195361 () Bool)

(assert (= bs!1871613 (and d!2195361 d!2195347)))

(declare-fun lambda!415121 () Int)

(assert (=> bs!1871613 (= lambda!415121 lambda!415118)))

(declare-fun bs!1871614 () Bool)

(assert (= bs!1871614 (and d!2195361 d!2195239)))

(assert (=> bs!1871614 (= lambda!415121 lambda!415106)))

(declare-fun bs!1871615 () Bool)

(assert (= bs!1871615 (and d!2195361 d!2195103)))

(assert (=> bs!1871615 (= lambda!415121 lambda!415092)))

(declare-fun bs!1871616 () Bool)

(assert (= bs!1871616 (and d!2195361 d!2195223)))

(assert (=> bs!1871616 (= lambda!415121 lambda!415103)))

(declare-fun bs!1871617 () Bool)

(assert (= bs!1871617 (and d!2195361 d!2195187)))

(assert (=> bs!1871617 (not (= lambda!415121 lambda!415098))))

(declare-fun bs!1871618 () Bool)

(assert (= bs!1871618 (and d!2195361 d!2195179)))

(assert (=> bs!1871618 (= lambda!415121 lambda!415096)))

(declare-fun bs!1871619 () Bool)

(assert (= bs!1871619 (and d!2195361 d!2194871)))

(assert (=> bs!1871619 (not (= lambda!415121 lambda!415076))))

(declare-fun bs!1871620 () Bool)

(assert (= bs!1871620 (and d!2195361 d!2195031)))

(assert (=> bs!1871620 (not (= lambda!415121 lambda!415084))))

(declare-fun bs!1871621 () Bool)

(assert (= bs!1871621 (and d!2195361 d!2194989)))

(assert (=> bs!1871621 (not (= lambda!415121 lambda!415082))))

(declare-fun bs!1871622 () Bool)

(assert (= bs!1871622 (and d!2195361 d!2194855)))

(assert (=> bs!1871622 (not (= lambda!415121 lambda!415073))))

(declare-fun bs!1871623 () Bool)

(assert (= bs!1871623 (and d!2195361 b!7033798)))

(assert (=> bs!1871623 (not (= lambda!415121 lambda!415027))))

(declare-fun bs!1871624 () Bool)

(assert (= bs!1871624 (and d!2195361 b!7033820)))

(assert (=> bs!1871624 (= lambda!415121 lambda!415031)))

(declare-fun bs!1871625 () Bool)

(assert (= bs!1871625 (and d!2195361 d!2195077)))

(assert (=> bs!1871625 (= lambda!415121 lambda!415089)))

(declare-fun bs!1871626 () Bool)

(assert (= bs!1871626 (and d!2195361 d!2195353)))

(assert (=> bs!1871626 (= lambda!415121 lambda!415120)))

(declare-fun bs!1871627 () Bool)

(assert (= bs!1871627 (and d!2195361 d!2195193)))

(assert (=> bs!1871627 (not (= lambda!415121 lambda!415101))))

(declare-fun bs!1871628 () Bool)

(assert (= bs!1871628 (and d!2195361 d!2195049)))

(assert (=> bs!1871628 (= lambda!415121 lambda!415087)))

(assert (=> d!2195361 (= (nullableZipper!2581 lt!2519543) (exists!3397 lt!2519543 lambda!415121))))

(declare-fun bs!1871629 () Bool)

(assert (= bs!1871629 d!2195361))

(declare-fun m!7742760 () Bool)

(assert (=> bs!1871629 m!7742760))

(assert (=> b!7033960 d!2195361))

(assert (=> d!2194751 d!2194759))

(declare-fun d!2195369 () Bool)

(assert (=> d!2195369 (exists!3397 lt!2519510 lambda!415031)))

(assert (=> d!2195369 true))

(declare-fun _$17!637 () Unit!161608)

(assert (=> d!2195369 (= (choose!53271 lt!2519510 lt!2519501 lambda!415031) _$17!637)))

(declare-fun bs!1871630 () Bool)

(assert (= bs!1871630 d!2195369))

(assert (=> bs!1871630 m!7741170))

(assert (=> d!2194751 d!2195369))

(declare-fun call!638822 () (InoxSet Context!12926))

(declare-fun e!4228965 () (InoxSet Context!12926))

(declare-fun b!7034686 () Bool)

(assert (=> b!7034686 (= e!4228965 ((_ map or) call!638822 (derivationStepZipperUp!2077 (Context!12927 (t!381696 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545)))))) (h!74254 s!7408))))))

(declare-fun bm!638817 () Bool)

(assert (=> bm!638817 (= call!638822 (derivationStepZipperDown!2131 (h!74253 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545))))) (Context!12927 (t!381696 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545)))))) (h!74254 s!7408)))))

(declare-fun b!7034687 () Bool)

(declare-fun e!4228963 () (InoxSet Context!12926))

(assert (=> b!7034687 (= e!4228963 ((as const (Array Context!12926 Bool)) false))))

(declare-fun b!7034688 () Bool)

(assert (=> b!7034688 (= e!4228963 call!638822)))

(declare-fun b!7034689 () Bool)

(assert (=> b!7034689 (= e!4228965 e!4228963)))

(declare-fun c!1308723 () Bool)

(assert (=> b!7034689 (= c!1308723 ((_ is Cons!67805) (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545))))))))

(declare-fun d!2195371 () Bool)

(declare-fun c!1308722 () Bool)

(declare-fun e!4228964 () Bool)

(assert (=> d!2195371 (= c!1308722 e!4228964)))

(declare-fun res!2871661 () Bool)

(assert (=> d!2195371 (=> (not res!2871661) (not e!4228964))))

(assert (=> d!2195371 (= res!2871661 ((_ is Cons!67805) (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545))))))))

(assert (=> d!2195371 (= (derivationStepZipperUp!2077 (Context!12927 (t!381696 (exprs!6963 lt!2519545))) (h!74254 s!7408)) e!4228965)))

(declare-fun b!7034690 () Bool)

(assert (=> b!7034690 (= e!4228964 (nullable!7178 (h!74253 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519545)))))))))

(assert (= (and d!2195371 res!2871661) b!7034690))

(assert (= (and d!2195371 c!1308722) b!7034686))

(assert (= (and d!2195371 (not c!1308722)) b!7034689))

(assert (= (and b!7034689 c!1308723) b!7034688))

(assert (= (and b!7034689 (not c!1308723)) b!7034687))

(assert (= (or b!7034686 b!7034688) bm!638817))

(declare-fun m!7742762 () Bool)

(assert (=> b!7034686 m!7742762))

(declare-fun m!7742764 () Bool)

(assert (=> bm!638817 m!7742764))

(declare-fun m!7742766 () Bool)

(assert (=> b!7034690 m!7742766))

(assert (=> b!7034141 d!2195371))

(declare-fun d!2195373 () Bool)

(declare-fun e!4228967 () Bool)

(assert (=> d!2195373 e!4228967))

(declare-fun res!2871662 () Bool)

(assert (=> d!2195373 (=> (not res!2871662) (not e!4228967))))

(declare-fun lt!2519763 () List!67929)

(assert (=> d!2195373 (= res!2871662 (= (content!13540 lt!2519763) ((_ map or) (content!13540 (t!381696 lt!2519492)) (content!13540 (exprs!6963 ct2!306)))))))

(declare-fun e!4228966 () List!67929)

(assert (=> d!2195373 (= lt!2519763 e!4228966)))

(declare-fun c!1308724 () Bool)

(assert (=> d!2195373 (= c!1308724 ((_ is Nil!67805) (t!381696 lt!2519492)))))

(assert (=> d!2195373 (= (++!15514 (t!381696 lt!2519492) (exprs!6963 ct2!306)) lt!2519763)))

(declare-fun b!7034694 () Bool)

(assert (=> b!7034694 (= e!4228967 (or (not (= (exprs!6963 ct2!306) Nil!67805)) (= lt!2519763 (t!381696 lt!2519492))))))

(declare-fun b!7034693 () Bool)

(declare-fun res!2871663 () Bool)

(assert (=> b!7034693 (=> (not res!2871663) (not e!4228967))))

(assert (=> b!7034693 (= res!2871663 (= (size!41067 lt!2519763) (+ (size!41067 (t!381696 lt!2519492)) (size!41067 (exprs!6963 ct2!306)))))))

(declare-fun b!7034692 () Bool)

(assert (=> b!7034692 (= e!4228966 (Cons!67805 (h!74253 (t!381696 lt!2519492)) (++!15514 (t!381696 (t!381696 lt!2519492)) (exprs!6963 ct2!306))))))

(declare-fun b!7034691 () Bool)

(assert (=> b!7034691 (= e!4228966 (exprs!6963 ct2!306))))

(assert (= (and d!2195373 c!1308724) b!7034691))

(assert (= (and d!2195373 (not c!1308724)) b!7034692))

(assert (= (and d!2195373 res!2871662) b!7034693))

(assert (= (and b!7034693 res!2871663) b!7034694))

(declare-fun m!7742768 () Bool)

(assert (=> d!2195373 m!7742768))

(assert (=> d!2195373 m!7742136))

(assert (=> d!2195373 m!7741832))

(declare-fun m!7742770 () Bool)

(assert (=> b!7034693 m!7742770))

(assert (=> b!7034693 m!7742532))

(assert (=> b!7034693 m!7741838))

(declare-fun m!7742772 () Bool)

(assert (=> b!7034692 m!7742772))

(assert (=> b!7034134 d!2195373))

(declare-fun d!2195377 () Bool)

(declare-fun c!1308729 () Bool)

(assert (=> d!2195377 (= c!1308729 (and ((_ is ElementMatch!17467) (h!74253 (exprs!6963 lt!2519527))) (= (c!1308424 (h!74253 (exprs!6963 lt!2519527))) (h!74254 s!7408))))))

(declare-fun e!4228973 () (InoxSet Context!12926))

(assert (=> d!2195377 (= (derivationStepZipperDown!2131 (h!74253 (exprs!6963 lt!2519527)) (Context!12927 (t!381696 (exprs!6963 lt!2519527))) (h!74254 s!7408)) e!4228973)))

(declare-fun c!1308728 () Bool)

(declare-fun call!638825 () List!67929)

(declare-fun bm!638818 () Bool)

(declare-fun c!1308726 () Bool)

(assert (=> bm!638818 (= call!638825 ($colon$colon!2575 (exprs!6963 (Context!12927 (t!381696 (exprs!6963 lt!2519527)))) (ite (or c!1308726 c!1308728) (regTwo!35446 (h!74253 (exprs!6963 lt!2519527))) (h!74253 (exprs!6963 lt!2519527)))))))

(declare-fun b!7034695 () Bool)

(declare-fun e!4228972 () (InoxSet Context!12926))

(declare-fun call!638828 () (InoxSet Context!12926))

(assert (=> b!7034695 (= e!4228972 call!638828)))

(declare-fun b!7034696 () Bool)

(declare-fun e!4228970 () (InoxSet Context!12926))

(assert (=> b!7034696 (= e!4228973 e!4228970)))

(declare-fun c!1308725 () Bool)

(assert (=> b!7034696 (= c!1308725 ((_ is Union!17467) (h!74253 (exprs!6963 lt!2519527))))))

(declare-fun bm!638819 () Bool)

(declare-fun call!638824 () (InoxSet Context!12926))

(declare-fun call!638827 () (InoxSet Context!12926))

(assert (=> bm!638819 (= call!638824 call!638827)))

(declare-fun call!638823 () List!67929)

(declare-fun bm!638820 () Bool)

(assert (=> bm!638820 (= call!638827 (derivationStepZipperDown!2131 (ite c!1308725 (regOne!35447 (h!74253 (exprs!6963 lt!2519527))) (ite c!1308726 (regTwo!35446 (h!74253 (exprs!6963 lt!2519527))) (ite c!1308728 (regOne!35446 (h!74253 (exprs!6963 lt!2519527))) (reg!17796 (h!74253 (exprs!6963 lt!2519527)))))) (ite (or c!1308725 c!1308726) (Context!12927 (t!381696 (exprs!6963 lt!2519527))) (Context!12927 call!638823)) (h!74254 s!7408)))))

(declare-fun b!7034697 () Bool)

(assert (=> b!7034697 (= e!4228973 (store ((as const (Array Context!12926 Bool)) false) (Context!12927 (t!381696 (exprs!6963 lt!2519527))) true))))

(declare-fun b!7034698 () Bool)

(declare-fun e!4228968 () Bool)

(assert (=> b!7034698 (= c!1308726 e!4228968)))

(declare-fun res!2871664 () Bool)

(assert (=> b!7034698 (=> (not res!2871664) (not e!4228968))))

(assert (=> b!7034698 (= res!2871664 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519527))))))

(declare-fun e!4228969 () (InoxSet Context!12926))

(assert (=> b!7034698 (= e!4228970 e!4228969)))

(declare-fun b!7034699 () Bool)

(declare-fun call!638826 () (InoxSet Context!12926))

(assert (=> b!7034699 (= e!4228969 ((_ map or) call!638826 call!638824))))

(declare-fun bm!638821 () Bool)

(assert (=> bm!638821 (= call!638826 (derivationStepZipperDown!2131 (ite c!1308725 (regTwo!35447 (h!74253 (exprs!6963 lt!2519527))) (regOne!35446 (h!74253 (exprs!6963 lt!2519527)))) (ite c!1308725 (Context!12927 (t!381696 (exprs!6963 lt!2519527))) (Context!12927 call!638825)) (h!74254 s!7408)))))

(declare-fun b!7034700 () Bool)

(declare-fun e!4228971 () (InoxSet Context!12926))

(assert (=> b!7034700 (= e!4228971 ((as const (Array Context!12926 Bool)) false))))

(declare-fun bm!638822 () Bool)

(assert (=> bm!638822 (= call!638828 call!638824)))

(declare-fun bm!638823 () Bool)

(assert (=> bm!638823 (= call!638823 call!638825)))

(declare-fun b!7034701 () Bool)

(assert (=> b!7034701 (= e!4228971 call!638828)))

(declare-fun b!7034702 () Bool)

(assert (=> b!7034702 (= e!4228968 (nullable!7178 (regOne!35446 (h!74253 (exprs!6963 lt!2519527)))))))

(declare-fun b!7034703 () Bool)

(assert (=> b!7034703 (= e!4228970 ((_ map or) call!638827 call!638826))))

(declare-fun b!7034704 () Bool)

(declare-fun c!1308727 () Bool)

(assert (=> b!7034704 (= c!1308727 ((_ is Star!17467) (h!74253 (exprs!6963 lt!2519527))))))

(assert (=> b!7034704 (= e!4228972 e!4228971)))

(declare-fun b!7034705 () Bool)

(assert (=> b!7034705 (= e!4228969 e!4228972)))

(assert (=> b!7034705 (= c!1308728 ((_ is Concat!26312) (h!74253 (exprs!6963 lt!2519527))))))

(assert (= (and d!2195377 c!1308729) b!7034697))

(assert (= (and d!2195377 (not c!1308729)) b!7034696))

(assert (= (and b!7034696 c!1308725) b!7034703))

(assert (= (and b!7034696 (not c!1308725)) b!7034698))

(assert (= (and b!7034698 res!2871664) b!7034702))

(assert (= (and b!7034698 c!1308726) b!7034699))

(assert (= (and b!7034698 (not c!1308726)) b!7034705))

(assert (= (and b!7034705 c!1308728) b!7034695))

(assert (= (and b!7034705 (not c!1308728)) b!7034704))

(assert (= (and b!7034704 c!1308727) b!7034701))

(assert (= (and b!7034704 (not c!1308727)) b!7034700))

(assert (= (or b!7034695 b!7034701) bm!638823))

(assert (= (or b!7034695 b!7034701) bm!638822))

(assert (= (or b!7034699 bm!638822) bm!638819))

(assert (= (or b!7034699 bm!638823) bm!638818))

(assert (= (or b!7034703 bm!638819) bm!638820))

(assert (= (or b!7034703 b!7034699) bm!638821))

(declare-fun m!7742774 () Bool)

(assert (=> bm!638821 m!7742774))

(declare-fun m!7742776 () Bool)

(assert (=> bm!638818 m!7742776))

(declare-fun m!7742778 () Bool)

(assert (=> bm!638820 m!7742778))

(declare-fun m!7742780 () Bool)

(assert (=> b!7034702 m!7742780))

(declare-fun m!7742782 () Bool)

(assert (=> b!7034697 m!7742782))

(assert (=> bm!638737 d!2195377))

(assert (=> d!2194843 d!2194841))

(declare-fun d!2195379 () Bool)

(assert (=> d!2195379 (= (flatMap!2414 lt!2519523 lambda!415030) (dynLambda!27387 lambda!415030 lt!2519536))))

(assert (=> d!2195379 true))

(declare-fun _$13!4489 () Unit!161608)

(assert (=> d!2195379 (= (choose!53278 lt!2519523 lt!2519536 lambda!415030) _$13!4489)))

(declare-fun b_lambda!266687 () Bool)

(assert (=> (not b_lambda!266687) (not d!2195379)))

(declare-fun bs!1871632 () Bool)

(assert (= bs!1871632 d!2195379))

(assert (=> bs!1871632 m!7741218))

(assert (=> bs!1871632 m!7741710))

(assert (=> d!2194843 d!2195379))

(declare-fun bs!1871633 () Bool)

(declare-fun d!2195381 () Bool)

(assert (= bs!1871633 (and d!2195381 d!2195347)))

(declare-fun lambda!415122 () Int)

(assert (=> bs!1871633 (= lambda!415122 lambda!415118)))

(declare-fun bs!1871634 () Bool)

(assert (= bs!1871634 (and d!2195381 d!2195239)))

(assert (=> bs!1871634 (= lambda!415122 lambda!415106)))

(declare-fun bs!1871635 () Bool)

(assert (= bs!1871635 (and d!2195381 d!2195103)))

(assert (=> bs!1871635 (= lambda!415122 lambda!415092)))

(declare-fun bs!1871636 () Bool)

(assert (= bs!1871636 (and d!2195381 d!2195223)))

(assert (=> bs!1871636 (= lambda!415122 lambda!415103)))

(declare-fun bs!1871637 () Bool)

(assert (= bs!1871637 (and d!2195381 d!2195187)))

(assert (=> bs!1871637 (not (= lambda!415122 lambda!415098))))

(declare-fun bs!1871638 () Bool)

(assert (= bs!1871638 (and d!2195381 d!2195179)))

(assert (=> bs!1871638 (= lambda!415122 lambda!415096)))

(declare-fun bs!1871639 () Bool)

(assert (= bs!1871639 (and d!2195381 d!2195031)))

(assert (=> bs!1871639 (not (= lambda!415122 lambda!415084))))

(declare-fun bs!1871640 () Bool)

(assert (= bs!1871640 (and d!2195381 d!2194989)))

(assert (=> bs!1871640 (not (= lambda!415122 lambda!415082))))

(declare-fun bs!1871641 () Bool)

(assert (= bs!1871641 (and d!2195381 d!2194855)))

(assert (=> bs!1871641 (not (= lambda!415122 lambda!415073))))

(declare-fun bs!1871642 () Bool)

(assert (= bs!1871642 (and d!2195381 b!7033798)))

(assert (=> bs!1871642 (not (= lambda!415122 lambda!415027))))

(declare-fun bs!1871643 () Bool)

(assert (= bs!1871643 (and d!2195381 b!7033820)))

(assert (=> bs!1871643 (= lambda!415122 lambda!415031)))

(declare-fun bs!1871644 () Bool)

(assert (= bs!1871644 (and d!2195381 d!2195077)))

(assert (=> bs!1871644 (= lambda!415122 lambda!415089)))

(declare-fun bs!1871645 () Bool)

(assert (= bs!1871645 (and d!2195381 d!2195353)))

(assert (=> bs!1871645 (= lambda!415122 lambda!415120)))

(declare-fun bs!1871646 () Bool)

(assert (= bs!1871646 (and d!2195381 d!2195193)))

(assert (=> bs!1871646 (not (= lambda!415122 lambda!415101))))

(declare-fun bs!1871647 () Bool)

(assert (= bs!1871647 (and d!2195381 d!2195049)))

(assert (=> bs!1871647 (= lambda!415122 lambda!415087)))

(declare-fun bs!1871648 () Bool)

(assert (= bs!1871648 (and d!2195381 d!2194871)))

(assert (=> bs!1871648 (not (= lambda!415122 lambda!415076))))

(declare-fun bs!1871649 () Bool)

(assert (= bs!1871649 (and d!2195381 d!2195361)))

(assert (=> bs!1871649 (= lambda!415122 lambda!415121)))

(assert (=> d!2195381 (= (nullableZipper!2581 lt!2519533) (exists!3397 lt!2519533 lambda!415122))))

(declare-fun bs!1871650 () Bool)

(assert (= bs!1871650 d!2195381))

(declare-fun m!7742804 () Bool)

(assert (=> bs!1871650 m!7742804))

(assert (=> b!7034109 d!2195381))

(assert (=> bs!1871260 d!2194903))

(assert (=> bs!1871264 d!2194777))

(assert (=> d!2194899 d!2194891))

(declare-fun d!2195387 () Bool)

(assert (=> d!2195387 (= (flatMap!2414 lt!2519520 lambda!415030) (dynLambda!27387 lambda!415030 lt!2519545))))

(assert (=> d!2195387 true))

(declare-fun _$13!4490 () Unit!161608)

(assert (=> d!2195387 (= (choose!53278 lt!2519520 lt!2519545 lambda!415030) _$13!4490)))

(declare-fun b_lambda!266689 () Bool)

(assert (=> (not b_lambda!266689) (not d!2195387)))

(declare-fun bs!1871651 () Bool)

(assert (= bs!1871651 d!2195387))

(assert (=> bs!1871651 m!7741162))

(assert (=> bs!1871651 m!7741848))

(assert (=> d!2194899 d!2195387))

(declare-fun d!2195389 () Bool)

(declare-fun e!4228989 () Bool)

(assert (=> d!2195389 e!4228989))

(declare-fun res!2871678 () Bool)

(assert (=> d!2195389 (=> (not res!2871678) (not e!4228989))))

(declare-fun lt!2519768 () Context!12926)

(assert (=> d!2195389 (= res!2871678 (dynLambda!27389 lambda!415031 lt!2519768))))

(declare-fun e!4228988 () Context!12926)

(assert (=> d!2195389 (= lt!2519768 e!4228988)))

(declare-fun c!1308731 () Bool)

(declare-fun e!4228987 () Bool)

(assert (=> d!2195389 (= c!1308731 e!4228987)))

(declare-fun res!2871677 () Bool)

(assert (=> d!2195389 (=> (not res!2871677) (not e!4228987))))

(assert (=> d!2195389 (= res!2871677 ((_ is Cons!67807) (toList!10810 lt!2519520)))))

(assert (=> d!2195389 (exists!3396 (toList!10810 lt!2519520) lambda!415031)))

(assert (=> d!2195389 (= (getWitness!1476 (toList!10810 lt!2519520) lambda!415031) lt!2519768)))

(declare-fun b!7034720 () Bool)

(assert (=> b!7034720 (= e!4228987 (dynLambda!27389 lambda!415031 (h!74255 (toList!10810 lt!2519520))))))

(declare-fun b!7034721 () Bool)

(assert (=> b!7034721 (= e!4228989 (contains!20458 (toList!10810 lt!2519520) lt!2519768))))

(declare-fun b!7034722 () Bool)

(declare-fun e!4228986 () Context!12926)

(assert (=> b!7034722 (= e!4228988 e!4228986)))

(declare-fun c!1308732 () Bool)

(assert (=> b!7034722 (= c!1308732 ((_ is Cons!67807) (toList!10810 lt!2519520)))))

(declare-fun b!7034723 () Bool)

(declare-fun lt!2519769 () Unit!161608)

(declare-fun Unit!161613 () Unit!161608)

(assert (=> b!7034723 (= lt!2519769 Unit!161613)))

(assert (=> b!7034723 false))

(assert (=> b!7034723 (= e!4228986 (head!14268 (toList!10810 lt!2519520)))))

(declare-fun b!7034724 () Bool)

(assert (=> b!7034724 (= e!4228988 (h!74255 (toList!10810 lt!2519520)))))

(declare-fun b!7034725 () Bool)

(assert (=> b!7034725 (= e!4228986 (getWitness!1476 (t!381698 (toList!10810 lt!2519520)) lambda!415031))))

(assert (= (and d!2195389 res!2871677) b!7034720))

(assert (= (and d!2195389 c!1308731) b!7034724))

(assert (= (and d!2195389 (not c!1308731)) b!7034722))

(assert (= (and b!7034722 c!1308732) b!7034725))

(assert (= (and b!7034722 (not c!1308732)) b!7034723))

(assert (= (and d!2195389 res!2871678) b!7034721))

(declare-fun b_lambda!266691 () Bool)

(assert (=> (not b_lambda!266691) (not d!2195389)))

(declare-fun b_lambda!266693 () Bool)

(assert (=> (not b_lambda!266693) (not b!7034720)))

(assert (=> b!7034723 m!7741456))

(declare-fun m!7742806 () Bool)

(assert (=> b!7034723 m!7742806))

(declare-fun m!7742808 () Bool)

(assert (=> d!2195389 m!7742808))

(assert (=> d!2195389 m!7741456))

(assert (=> d!2195389 m!7741458))

(declare-fun m!7742810 () Bool)

(assert (=> b!7034720 m!7742810))

(declare-fun m!7742812 () Bool)

(assert (=> b!7034725 m!7742812))

(assert (=> b!7034721 m!7741456))

(declare-fun m!7742814 () Bool)

(assert (=> b!7034721 m!7742814))

(assert (=> d!2194919 d!2195389))

(assert (=> d!2194919 d!2194991))

(assert (=> d!2194919 d!2194763))

(declare-fun b!7034734 () Bool)

(declare-fun e!4228996 () Bool)

(declare-fun tp!1936649 () Bool)

(declare-fun tp!1936650 () Bool)

(assert (=> b!7034734 (= e!4228996 (and tp!1936649 tp!1936650))))

(assert (=> b!7034198 (= tp!1936608 e!4228996)))

(assert (= (and b!7034198 ((_ is Cons!67805) (exprs!6963 setElem!49190))) b!7034734))

(declare-fun b!7034735 () Bool)

(declare-fun e!4228997 () Bool)

(declare-fun tp!1936651 () Bool)

(assert (=> b!7034735 (= e!4228997 (and tp_is_empty!44159 tp!1936651))))

(assert (=> b!7034204 (= tp!1936613 e!4228997)))

(assert (= (and b!7034204 ((_ is Cons!67806) (t!381697 (t!381697 s!7408)))) b!7034735))

(declare-fun condSetEmpty!49199 () Bool)

(assert (=> setNonEmpty!49190 (= condSetEmpty!49199 (= setRest!49190 ((as const (Array Context!12926 Bool)) false)))))

(declare-fun setRes!49199 () Bool)

(assert (=> setNonEmpty!49190 (= tp!1936607 setRes!49199)))

(declare-fun setIsEmpty!49199 () Bool)

(assert (=> setIsEmpty!49199 setRes!49199))

(declare-fun e!4228998 () Bool)

(declare-fun tp!1936652 () Bool)

(declare-fun setNonEmpty!49199 () Bool)

(declare-fun setElem!49199 () Context!12926)

(assert (=> setNonEmpty!49199 (= setRes!49199 (and tp!1936652 (inv!86526 setElem!49199) e!4228998))))

(declare-fun setRest!49199 () (InoxSet Context!12926))

(assert (=> setNonEmpty!49199 (= setRest!49190 ((_ map or) (store ((as const (Array Context!12926 Bool)) false) setElem!49199 true) setRest!49199))))

(declare-fun b!7034736 () Bool)

(declare-fun tp!1936653 () Bool)

(assert (=> b!7034736 (= e!4228998 tp!1936653)))

(assert (= (and setNonEmpty!49190 condSetEmpty!49199) setIsEmpty!49199))

(assert (= (and setNonEmpty!49190 (not condSetEmpty!49199)) setNonEmpty!49199))

(assert (= setNonEmpty!49199 b!7034736))

(declare-fun m!7742830 () Bool)

(assert (=> setNonEmpty!49199 m!7742830))

(declare-fun b!7034759 () Bool)

(declare-fun e!4229007 () Bool)

(declare-fun tp!1936665 () Bool)

(declare-fun tp!1936668 () Bool)

(assert (=> b!7034759 (= e!4229007 (and tp!1936665 tp!1936668))))

(declare-fun b!7034760 () Bool)

(declare-fun tp!1936666 () Bool)

(assert (=> b!7034760 (= e!4229007 tp!1936666)))

(assert (=> b!7034193 (= tp!1936601 e!4229007)))

(declare-fun b!7034761 () Bool)

(declare-fun tp!1936667 () Bool)

(declare-fun tp!1936664 () Bool)

(assert (=> b!7034761 (= e!4229007 (and tp!1936667 tp!1936664))))

(declare-fun b!7034758 () Bool)

(assert (=> b!7034758 (= e!4229007 tp_is_empty!44159)))

(assert (= (and b!7034193 ((_ is ElementMatch!17467) (h!74253 (exprs!6963 setElem!49184)))) b!7034758))

(assert (= (and b!7034193 ((_ is Concat!26312) (h!74253 (exprs!6963 setElem!49184)))) b!7034759))

(assert (= (and b!7034193 ((_ is Star!17467) (h!74253 (exprs!6963 setElem!49184)))) b!7034760))

(assert (= (and b!7034193 ((_ is Union!17467) (h!74253 (exprs!6963 setElem!49184)))) b!7034761))

(declare-fun b!7034762 () Bool)

(declare-fun e!4229008 () Bool)

(declare-fun tp!1936669 () Bool)

(declare-fun tp!1936670 () Bool)

(assert (=> b!7034762 (= e!4229008 (and tp!1936669 tp!1936670))))

(assert (=> b!7034193 (= tp!1936602 e!4229008)))

(assert (= (and b!7034193 ((_ is Cons!67805) (t!381696 (exprs!6963 setElem!49184)))) b!7034762))

(declare-fun b!7034764 () Bool)

(declare-fun e!4229009 () Bool)

(declare-fun tp!1936672 () Bool)

(declare-fun tp!1936675 () Bool)

(assert (=> b!7034764 (= e!4229009 (and tp!1936672 tp!1936675))))

(declare-fun b!7034765 () Bool)

(declare-fun tp!1936673 () Bool)

(assert (=> b!7034765 (= e!4229009 tp!1936673)))

(assert (=> b!7034199 (= tp!1936609 e!4229009)))

(declare-fun b!7034766 () Bool)

(declare-fun tp!1936674 () Bool)

(declare-fun tp!1936671 () Bool)

(assert (=> b!7034766 (= e!4229009 (and tp!1936674 tp!1936671))))

(declare-fun b!7034763 () Bool)

(assert (=> b!7034763 (= e!4229009 tp_is_empty!44159)))

(assert (= (and b!7034199 ((_ is ElementMatch!17467) (h!74253 (exprs!6963 ct2!306)))) b!7034763))

(assert (= (and b!7034199 ((_ is Concat!26312) (h!74253 (exprs!6963 ct2!306)))) b!7034764))

(assert (= (and b!7034199 ((_ is Star!17467) (h!74253 (exprs!6963 ct2!306)))) b!7034765))

(assert (= (and b!7034199 ((_ is Union!17467) (h!74253 (exprs!6963 ct2!306)))) b!7034766))

(declare-fun b!7034769 () Bool)

(declare-fun e!4229011 () Bool)

(declare-fun tp!1936676 () Bool)

(declare-fun tp!1936677 () Bool)

(assert (=> b!7034769 (= e!4229011 (and tp!1936676 tp!1936677))))

(assert (=> b!7034199 (= tp!1936610 e!4229011)))

(assert (= (and b!7034199 ((_ is Cons!67805) (t!381696 (exprs!6963 ct2!306)))) b!7034769))

(declare-fun b_lambda!266701 () Bool)

(assert (= b_lambda!266677 (or b!7033822 b_lambda!266701)))

(declare-fun bs!1871653 () Bool)

(declare-fun d!2195401 () Bool)

(assert (= bs!1871653 (and d!2195401 b!7033822)))

(declare-fun validRegex!8930 (Regex!17467) Bool)

(assert (=> bs!1871653 (= (dynLambda!27391 lambda!415029 (h!74253 (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306)))) (validRegex!8930 (h!74253 (++!15514 (exprs!6963 lt!2519501) (exprs!6963 ct2!306)))))))

(declare-fun m!7742850 () Bool)

(assert (=> bs!1871653 m!7742850))

(assert (=> b!7034618 d!2195401))

(declare-fun b_lambda!266703 () Bool)

(assert (= b_lambda!266691 (or b!7033820 b_lambda!266703)))

(declare-fun bs!1871654 () Bool)

(declare-fun d!2195403 () Bool)

(assert (= bs!1871654 (and d!2195403 b!7033820)))

(assert (=> bs!1871654 (= (dynLambda!27389 lambda!415031 lt!2519768) (nullableContext!87 lt!2519768))))

(declare-fun m!7742852 () Bool)

(assert (=> bs!1871654 m!7742852))

(assert (=> d!2195389 d!2195403))

(declare-fun b_lambda!266705 () Bool)

(assert (= b_lambda!266685 (or b!7033798 b_lambda!266705)))

(declare-fun bs!1871655 () Bool)

(declare-fun d!2195405 () Bool)

(assert (= bs!1871655 (and d!2195405 b!7033798)))

(assert (=> bs!1871655 (= (dynLambda!27389 lambda!415027 (h!74255 (toList!10810 lt!2519543))) (matchZipper!3007 (store ((as const (Array Context!12926 Bool)) false) (h!74255 (toList!10810 lt!2519543)) true) s!7408))))

(declare-fun m!7742854 () Bool)

(assert (=> bs!1871655 m!7742854))

(assert (=> bs!1871655 m!7742854))

(declare-fun m!7742856 () Bool)

(assert (=> bs!1871655 m!7742856))

(assert (=> b!7034658 d!2195405))

(declare-fun b_lambda!266707 () Bool)

(assert (= b_lambda!266659 (or d!2194871 b_lambda!266707)))

(declare-fun bs!1871656 () Bool)

(declare-fun d!2195407 () Bool)

(assert (= bs!1871656 (and d!2195407 d!2194871)))

(assert (=> bs!1871656 (= (dynLambda!27389 lambda!415076 (h!74255 lt!2519542)) (not (dynLambda!27389 lambda!415027 (h!74255 lt!2519542))))))

(declare-fun b_lambda!266737 () Bool)

(assert (=> (not b_lambda!266737) (not bs!1871656)))

(declare-fun m!7742858 () Bool)

(assert (=> bs!1871656 m!7742858))

(assert (=> b!7034310 d!2195407))

(declare-fun b_lambda!266709 () Bool)

(assert (= b_lambda!266653 (or d!2194829 b_lambda!266709)))

(declare-fun bs!1871657 () Bool)

(declare-fun d!2195409 () Bool)

(assert (= bs!1871657 (and d!2195409 d!2194829)))

(assert (=> bs!1871657 (= (dynLambda!27391 lambda!415068 (h!74253 (exprs!6963 lt!2519501))) (nullable!7178 (h!74253 (exprs!6963 lt!2519501))))))

(assert (=> bs!1871657 m!7741130))

(assert (=> b!7034246 d!2195409))

(declare-fun b_lambda!266711 () Bool)

(assert (= b_lambda!266647 (or b!7033797 b_lambda!266711)))

(assert (=> d!2194951 d!2194931))

(declare-fun b_lambda!266713 () Bool)

(assert (= b_lambda!266655 (or d!2194917 b_lambda!266713)))

(declare-fun bs!1871658 () Bool)

(declare-fun d!2195411 () Bool)

(assert (= bs!1871658 (and d!2195411 d!2194917)))

(assert (=> bs!1871658 (= (dynLambda!27391 lambda!415077 (h!74253 (exprs!6963 lt!2519545))) (nullable!7178 (h!74253 (exprs!6963 lt!2519545))))))

(assert (=> bs!1871658 m!7741860))

(assert (=> b!7034249 d!2195411))

(declare-fun b_lambda!266715 () Bool)

(assert (= b_lambda!266683 (or b!7033798 b_lambda!266715)))

(declare-fun bs!1871659 () Bool)

(declare-fun d!2195413 () Bool)

(assert (= bs!1871659 (and d!2195413 b!7033798)))

(assert (=> bs!1871659 (= (dynLambda!27389 lambda!415027 lt!2519755) (matchZipper!3007 (store ((as const (Array Context!12926 Bool)) false) lt!2519755 true) s!7408))))

(declare-fun m!7742860 () Bool)

(assert (=> bs!1871659 m!7742860))

(assert (=> bs!1871659 m!7742860))

(declare-fun m!7742862 () Bool)

(assert (=> bs!1871659 m!7742862))

(assert (=> d!2195321 d!2195413))

(declare-fun b_lambda!266717 () Bool)

(assert (= b_lambda!266687 (or b!7033797 b_lambda!266717)))

(assert (=> d!2195379 d!2194929))

(declare-fun b_lambda!266719 () Bool)

(assert (= b_lambda!266649 (or b!7033822 b_lambda!266719)))

(assert (=> d!2194953 d!2194925))

(declare-fun b_lambda!266721 () Bool)

(assert (= b_lambda!266661 (or b!7033822 b_lambda!266721)))

(declare-fun bs!1871660 () Bool)

(declare-fun d!2195415 () Bool)

(assert (= bs!1871660 (and d!2195415 b!7033822)))

(assert (=> bs!1871660 (= (dynLambda!27391 lambda!415029 (h!74253 (++!15514 lt!2519492 (exprs!6963 ct2!306)))) (validRegex!8930 (h!74253 (++!15514 lt!2519492 (exprs!6963 ct2!306)))))))

(declare-fun m!7742870 () Bool)

(assert (=> bs!1871660 m!7742870))

(assert (=> b!7034312 d!2195415))

(declare-fun b_lambda!266723 () Bool)

(assert (= b_lambda!266651 (or d!2194789 b_lambda!266723)))

(declare-fun bs!1871661 () Bool)

(declare-fun d!2195417 () Bool)

(assert (= bs!1871661 (and d!2195417 d!2194789)))

(assert (=> bs!1871661 (= (dynLambda!27391 lambda!415065 (h!74253 (exprs!6963 ct2!306))) (validRegex!8930 (h!74253 (exprs!6963 ct2!306))))))

(declare-fun m!7742872 () Bool)

(assert (=> bs!1871661 m!7742872))

(assert (=> b!7034242 d!2195417))

(declare-fun b_lambda!266725 () Bool)

(assert (= b_lambda!266693 (or b!7033820 b_lambda!266725)))

(declare-fun bs!1871662 () Bool)

(declare-fun d!2195419 () Bool)

(assert (= bs!1871662 (and d!2195419 b!7033820)))

(assert (=> bs!1871662 (= (dynLambda!27389 lambda!415031 (h!74255 (toList!10810 lt!2519520))) (nullableContext!87 (h!74255 (toList!10810 lt!2519520))))))

(declare-fun m!7742876 () Bool)

(assert (=> bs!1871662 m!7742876))

(assert (=> b!7034720 d!2195419))

(declare-fun b_lambda!266727 () Bool)

(assert (= b_lambda!266657 (or d!2194853 b_lambda!266727)))

(declare-fun bs!1871663 () Bool)

(declare-fun d!2195421 () Bool)

(assert (= bs!1871663 (and d!2195421 d!2194853)))

(assert (=> bs!1871663 (= (dynLambda!27391 lambda!415070 (h!74253 (exprs!6963 setElem!49184))) (validRegex!8930 (h!74253 (exprs!6963 setElem!49184))))))

(declare-fun m!7742878 () Bool)

(assert (=> bs!1871663 m!7742878))

(assert (=> b!7034294 d!2195421))

(declare-fun b_lambda!266729 () Bool)

(assert (= b_lambda!266679 (or b!7033822 b_lambda!266729)))

(declare-fun bs!1871664 () Bool)

(declare-fun d!2195423 () Bool)

(assert (= bs!1871664 (and d!2195423 b!7033822)))

(assert (=> bs!1871664 (= (dynLambda!27391 lambda!415029 (h!74253 (exprs!6963 lt!2519501))) (validRegex!8930 (h!74253 (exprs!6963 lt!2519501))))))

(declare-fun m!7742882 () Bool)

(assert (=> bs!1871664 m!7742882))

(assert (=> b!7034620 d!2195423))

(declare-fun b_lambda!266731 () Bool)

(assert (= b_lambda!266681 (or b!7033822 b_lambda!266731)))

(declare-fun bs!1871665 () Bool)

(declare-fun d!2195425 () Bool)

(assert (= bs!1871665 (and d!2195425 b!7033822)))

(declare-fun lt!2519775 () Unit!161608)

(assert (=> bs!1871665 (= lt!2519775 (lemmaConcatPreservesForall!788 (exprs!6963 a!13214) (exprs!6963 ct2!306) lambda!415029))))

(assert (=> bs!1871665 (= (dynLambda!27390 lambda!415028 a!13214) (Context!12927 (++!15514 (exprs!6963 a!13214) (exprs!6963 ct2!306))))))

(declare-fun m!7742888 () Bool)

(assert (=> bs!1871665 m!7742888))

(declare-fun m!7742890 () Bool)

(assert (=> bs!1871665 m!7742890))

(assert (=> d!2195313 d!2195425))

(declare-fun b_lambda!266733 () Bool)

(assert (= b_lambda!266663 (or b!7033822 b_lambda!266733)))

(declare-fun bs!1871666 () Bool)

(declare-fun d!2195429 () Bool)

(assert (= bs!1871666 (and d!2195429 b!7033822)))

(assert (=> bs!1871666 (= (dynLambda!27391 lambda!415029 (h!74253 lt!2519492)) (validRegex!8930 (h!74253 lt!2519492)))))

(declare-fun m!7742892 () Bool)

(assert (=> bs!1871666 m!7742892))

(assert (=> b!7034314 d!2195429))

(declare-fun b_lambda!266735 () Bool)

(assert (= b_lambda!266689 (or b!7033797 b_lambda!266735)))

(assert (=> d!2195387 d!2194923))

(check-sat (not bs!1871663) (not b!7034223) (not b!7034395) (not bm!638814) (not b!7034303) (not b!7034721) (not b!7034419) (not b!7034466) (not b!7034234) (not d!2195175) (not d!2194981) (not bs!1871658) (not b!7034393) (not b!7034295) (not b_lambda!266733) (not d!2195151) tp_is_empty!44159 (not b_lambda!266641) (not b!7034305) (not b!7034546) (not setNonEmpty!49198) (not b_lambda!266701) (not b!7034723) (not b_lambda!266723) (not d!2195135) (not b!7034486) (not bm!638784) (not b!7034765) (not b_lambda!266721) (not b_lambda!266709) (not b!7034378) (not d!2194951) (not b!7034433) (not b!7034490) (not b_lambda!266713) (not d!2194989) (not b!7034465) (not b_lambda!266707) (not b!7034435) (not d!2194993) (not d!2194947) (not b!7034229) (not d!2195265) (not bm!638795) (not d!2195111) (not d!2195157) (not b!7034423) (not d!2195035) (not b!7034313) (not bm!638796) (not d!2195353) (not bm!638818) (not b!7034692) (not bs!1871666) (not d!2195031) (not b!7034557) (not b!7034224) (not b!7034276) (not d!2195125) (not b!7034735) (not b!7034222) (not b!7034492) (not b!7034377) (not d!2195143) (not b!7034555) (not b!7034481) (not bm!638773) (not bs!1871664) (not b!7034438) (not b_lambda!266633) (not bs!1871661) (not d!2195193) (not b!7034424) (not d!2195037) (not b!7034430) (not d!2194997) (not b!7034421) (not d!2195119) (not b!7034548) (not b!7034253) (not d!2195343) (not bm!638772) (not b_lambda!266737) (not b!7034420) (not setNonEmpty!49194) (not b!7034450) (not d!2195179) (not b!7034491) (not b!7034686) (not b!7034379) (not d!2195013) (not b!7034690) (not d!2195009) (not b!7034298) (not b!7034760) (not b!7034551) (not b!7034500) (not b!7034633) (not b!7034734) (not b!7034267) (not b!7034411) (not b!7034290) (not b!7034274) (not d!2195093) (not b!7034570) (not d!2195361) (not d!2195015) (not b!7034550) (not b!7034372) (not bs!1871659) (not b!7034583) (not b_lambda!266725) (not b_lambda!266731) (not b!7034269) (not d!2195223) (not d!2195347) (not b!7034396) (not b!7034487) (not d!2195141) (not d!2195101) (not b!7034273) (not b!7034672) (not bm!638775) (not d!2194965) (not d!2195369) (not b!7034702) (not d!2195139) (not b!7034514) (not setNonEmpty!49193) (not d!2195389) (not d!2195007) (not b!7034488) (not d!2195027) (not b_lambda!266711) (not d!2195049) (not b!7034365) (not bs!1871660) (not bm!638817) (not d!2194955) (not b!7034250) (not d!2195249) (not b!7034278) (not b!7034434) (not bm!638793) (not d!2195149) (not bs!1871655) (not b!7034244) (not b!7034456) (not b!7034230) (not d!2194967) (not b!7034228) (not b_lambda!266639) (not d!2195247) (not d!2195239) (not d!2195075) (not bm!638809) (not b!7034515) (not d!2195321) (not b!7034480) (not b!7034282) (not d!2195339) (not b!7034736) (not b!7034659) (not d!2194991) (not d!2195213) (not bs!1871654) (not bm!638821) (not b!7034260) (not bs!1871653) (not d!2195307) (not b!7034766) (not d!2195017) (not b!7034262) (not b!7034301) (not d!2195297) (not d!2195153) (not b!7034215) (not d!2194953) (not b!7034489) (not b!7034405) (not bs!1871662) (not d!2195387) (not b!7034296) (not bm!638800) (not b!7034569) (not b!7034460) (not d!2194943) (not bm!638806) (not setNonEmpty!49199) (not b_lambda!266635) (not b!7034473) (not b!7034245) (not b!7034252) (not d!2195381) (not b!7034248) (not b_lambda!266637) (not b!7034762) (not d!2195099) (not b!7034478) (not bm!638799) (not bm!638805) (not b!7034477) (not d!2195161) (not b!7034759) (not b!7034376) (not d!2195033) (not b!7034247) (not d!2195097) (not b!7034233) (not d!2195123) (not b!7034427) (not d!2195271) (not d!2195081) (not b_lambda!266715) (not b_lambda!266735) (not b!7034471) (not bm!638813) (not d!2195373) (not d!2195379) (not b!7034725) (not b!7034619) (not bm!638776) (not b!7034311) (not b_lambda!266729) (not b!7034363) (not bm!638820) (not d!2195073) (not b!7034212) (not b!7034297) (not b!7034538) (not b!7034277) (not b!7034390) (not d!2194979) (not d!2195317) (not bm!638803) (not b!7034603) (not b_lambda!266645) (not b!7034617) (not b!7034693) (not b!7034472) (not b!7034236) (not b!7034232) (not b!7034216) (not b!7034539) (not b!7034485) (not d!2195077) (not bm!638783) (not b!7034764) (not d!2195011) (not d!2195293) (not b_lambda!266643) (not b!7034673) (not b!7034270) (not b!7034392) (not b_lambda!266727) (not b!7034428) (not b!7034235) (not b!7034437) (not b!7034761) (not d!2195171) (not d!2195313) (not bm!638797) (not d!2195115) (not d!2195183) (not b!7034621) (not d!2195095) (not b!7034661) (not d!2195103) (not b!7034243) (not b!7034315) (not d!2195185) (not d!2194973) (not b!7034380) (not b_lambda!266719) (not b!7034210) (not b!7034237) (not b_lambda!266705) (not b!7034541) (not b!7034361) (not bs!1871665) (not d!2195187) (not d!2195079) (not b!7034214) (not b!7034386) (not d!2194961) (not b!7034225) (not bm!638811) (not b!7034388) (not b!7034412) (not b!7034663) (not d!2194959) (not d!2194957) (not b_lambda!266717) (not b!7034264) (not b!7034374) (not d!2195117) (not setNonEmpty!49195) (not b!7034769) (not d!2194963) (not bs!1871657) (not b_lambda!266703) (not d!2195053) (not b!7034556) (not d!2195287) (not bm!638792) (not d!2194977) (not d!2195039))
(check-sat)
