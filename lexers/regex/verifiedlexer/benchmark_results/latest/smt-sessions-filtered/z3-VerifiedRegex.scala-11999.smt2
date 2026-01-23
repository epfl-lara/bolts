; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!672454 () Bool)

(assert start!672454)

(declare-fun b!6993633 () Bool)

(assert (=> b!6993633 true))

(declare-fun b!6993628 () Bool)

(assert (=> b!6993628 true))

(declare-fun b!6993634 () Bool)

(assert (=> b!6993634 true))

(declare-fun b!6993620 () Bool)

(declare-fun res!2852503 () Bool)

(declare-fun e!4203674 () Bool)

(assert (=> b!6993620 (=> res!2852503 e!4203674)))

(declare-datatypes ((C!34760 0))(
  ( (C!34761 (val!27082 Int)) )
))
(declare-datatypes ((Regex!17245 0))(
  ( (ElementMatch!17245 (c!1297464 C!34760)) (Concat!26090 (regOne!35002 Regex!17245) (regTwo!35002 Regex!17245)) (EmptyExpr!17245) (Star!17245 (reg!17574 Regex!17245)) (EmptyLang!17245) (Union!17245 (regOne!35003 Regex!17245) (regTwo!35003 Regex!17245)) )
))
(declare-datatypes ((List!67280 0))(
  ( (Nil!67156) (Cons!67156 (h!73604 Regex!17245) (t!381027 List!67280)) )
))
(declare-datatypes ((Context!12482 0))(
  ( (Context!12483 (exprs!6741 List!67280)) )
))
(declare-fun lt!2490721 () Context!12482)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2490713 () (InoxSet Context!12482))

(assert (=> b!6993620 (= res!2852503 (not (select lt!2490713 lt!2490721)))))

(declare-fun b!6993621 () Bool)

(declare-fun e!4203679 () Bool)

(declare-fun lt!2490731 () (InoxSet Context!12482))

(declare-datatypes ((List!67281 0))(
  ( (Nil!67157) (Cons!67157 (h!73605 C!34760) (t!381028 List!67281)) )
))
(declare-fun s!7408 () List!67281)

(declare-fun matchZipper!2785 ((InoxSet Context!12482) List!67281) Bool)

(assert (=> b!6993621 (= e!4203679 (matchZipper!2785 lt!2490731 (t!381028 s!7408)))))

(declare-fun b!6993622 () Bool)

(declare-fun e!4203668 () Bool)

(declare-fun tp_is_empty!43715 () Bool)

(declare-fun tp!1930295 () Bool)

(assert (=> b!6993622 (= e!4203668 (and tp_is_empty!43715 tp!1930295))))

(declare-fun b!6993623 () Bool)

(declare-fun e!4203671 () Bool)

(declare-fun e!4203666 () Bool)

(assert (=> b!6993623 (= e!4203671 e!4203666)))

(declare-fun res!2852498 () Bool)

(assert (=> b!6993623 (=> res!2852498 e!4203666)))

(declare-fun lt!2490695 () (InoxSet Context!12482))

(declare-fun lt!2490692 () (InoxSet Context!12482))

(assert (=> b!6993623 (= res!2852498 (not (= lt!2490695 lt!2490692)))))

(declare-fun lt!2490724 () Context!12482)

(assert (=> b!6993623 (= lt!2490695 (store ((as const (Array Context!12482 Bool)) false) lt!2490724 true))))

(declare-fun lambda!403345 () Int)

(declare-fun lt!2490712 () Context!12482)

(declare-fun ct2!306 () Context!12482)

(declare-datatypes ((Unit!161145 0))(
  ( (Unit!161146) )
))
(declare-fun lt!2490699 () Unit!161145)

(declare-fun lemmaConcatPreservesForall!581 (List!67280 List!67280 Int) Unit!161145)

(assert (=> b!6993623 (= lt!2490699 (lemmaConcatPreservesForall!581 (exprs!6741 lt!2490712) (exprs!6741 ct2!306) lambda!403345))))

(declare-fun b!6993624 () Bool)

(declare-fun e!4203673 () Bool)

(declare-fun e!4203682 () Bool)

(assert (=> b!6993624 (= e!4203673 e!4203682)))

(declare-fun res!2852505 () Bool)

(assert (=> b!6993624 (=> res!2852505 e!4203682)))

(declare-fun e!4203670 () Bool)

(assert (=> b!6993624 (= res!2852505 e!4203670)))

(declare-fun res!2852494 () Bool)

(assert (=> b!6993624 (=> (not res!2852494) (not e!4203670))))

(declare-fun lt!2490717 () Bool)

(declare-fun lt!2490732 () Bool)

(assert (=> b!6993624 (= res!2852494 (not (= lt!2490717 lt!2490732)))))

(declare-fun lt!2490723 () (InoxSet Context!12482))

(assert (=> b!6993624 (= lt!2490717 (matchZipper!2785 lt!2490723 (t!381028 s!7408)))))

(declare-fun lt!2490715 () List!67280)

(declare-fun lt!2490694 () Unit!161145)

(assert (=> b!6993624 (= lt!2490694 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lt!2490734 () (InoxSet Context!12482))

(assert (=> b!6993624 (= (matchZipper!2785 lt!2490734 (t!381028 s!7408)) e!4203679)))

(declare-fun res!2852496 () Bool)

(assert (=> b!6993624 (=> res!2852496 e!4203679)))

(assert (=> b!6993624 (= res!2852496 lt!2490732)))

(declare-fun lt!2490697 () (InoxSet Context!12482))

(assert (=> b!6993624 (= lt!2490732 (matchZipper!2785 lt!2490697 (t!381028 s!7408)))))

(declare-fun lt!2490703 () Unit!161145)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1418 ((InoxSet Context!12482) (InoxSet Context!12482) List!67281) Unit!161145)

(assert (=> b!6993624 (= lt!2490703 (lemmaZipperConcatMatchesSameAsBothZippers!1418 lt!2490697 lt!2490731 (t!381028 s!7408)))))

(declare-fun lt!2490693 () Unit!161145)

(assert (=> b!6993624 (= lt!2490693 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lt!2490714 () Unit!161145)

(assert (=> b!6993624 (= lt!2490714 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun b!6993625 () Bool)

(declare-fun e!4203672 () Bool)

(assert (=> b!6993625 (= e!4203672 e!4203673)))

(declare-fun res!2852500 () Bool)

(assert (=> b!6993625 (=> res!2852500 e!4203673)))

(assert (=> b!6993625 (= res!2852500 (not (= lt!2490723 lt!2490734)))))

(assert (=> b!6993625 (= lt!2490734 ((_ map or) lt!2490697 lt!2490731))))

(declare-fun lt!2490709 () Context!12482)

(declare-fun derivationStepZipperUp!1895 (Context!12482 C!34760) (InoxSet Context!12482))

(assert (=> b!6993625 (= lt!2490731 (derivationStepZipperUp!1895 lt!2490709 (h!73605 s!7408)))))

(declare-fun derivationStepZipperDown!1963 (Regex!17245 Context!12482 C!34760) (InoxSet Context!12482))

(assert (=> b!6993625 (= lt!2490697 (derivationStepZipperDown!1963 (h!73604 (exprs!6741 lt!2490712)) lt!2490709 (h!73605 s!7408)))))

(declare-fun ++!15192 (List!67280 List!67280) List!67280)

(assert (=> b!6993625 (= lt!2490709 (Context!12483 (++!15192 lt!2490715 (exprs!6741 ct2!306))))))

(declare-fun lt!2490705 () Unit!161145)

(assert (=> b!6993625 (= lt!2490705 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lt!2490710 () Unit!161145)

(assert (=> b!6993625 (= lt!2490710 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun b!6993626 () Bool)

(declare-fun e!4203669 () Bool)

(declare-fun e!4203681 () Bool)

(assert (=> b!6993626 (= e!4203669 e!4203681)))

(declare-fun res!2852501 () Bool)

(assert (=> b!6993626 (=> res!2852501 e!4203681)))

(declare-fun lt!2490700 () (InoxSet Context!12482))

(assert (=> b!6993626 (= res!2852501 (not (matchZipper!2785 lt!2490700 s!7408)))))

(declare-fun lt!2490728 () Unit!161145)

(assert (=> b!6993626 (= lt!2490728 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun b!6993627 () Bool)

(declare-fun e!4203675 () Bool)

(declare-fun tp!1930293 () Bool)

(assert (=> b!6993627 (= e!4203675 tp!1930293)))

(assert (=> b!6993628 (= e!4203674 e!4203671)))

(declare-fun res!2852504 () Bool)

(assert (=> b!6993628 (=> res!2852504 e!4203671)))

(declare-fun z1!570 () (InoxSet Context!12482))

(assert (=> b!6993628 (= res!2852504 (or (not (= lt!2490724 lt!2490721)) (not (select z1!570 lt!2490712))))))

(assert (=> b!6993628 (= lt!2490724 (Context!12483 (++!15192 (exprs!6741 lt!2490712) (exprs!6741 ct2!306))))))

(declare-fun lt!2490707 () Unit!161145)

(assert (=> b!6993628 (= lt!2490707 (lemmaConcatPreservesForall!581 (exprs!6741 lt!2490712) (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lambda!403344 () Int)

(declare-fun mapPost2!100 ((InoxSet Context!12482) Int Context!12482) Context!12482)

(assert (=> b!6993628 (= lt!2490712 (mapPost2!100 z1!570 lambda!403344 lt!2490721))))

(declare-fun b!6993629 () Bool)

(declare-fun e!4203676 () Bool)

(assert (=> b!6993629 (= e!4203676 e!4203672)))

(declare-fun res!2852487 () Bool)

(assert (=> b!6993629 (=> res!2852487 e!4203672)))

(declare-fun nullable!7005 (Regex!17245) Bool)

(assert (=> b!6993629 (= res!2852487 (not (nullable!7005 (h!73604 (exprs!6741 lt!2490712)))))))

(declare-fun lt!2490738 () Context!12482)

(assert (=> b!6993629 (= lt!2490738 (Context!12483 lt!2490715))))

(declare-fun tail!13269 (List!67280) List!67280)

(assert (=> b!6993629 (= lt!2490715 (tail!13269 (exprs!6741 lt!2490712)))))

(declare-fun b!6993630 () Bool)

(declare-fun res!2852490 () Bool)

(assert (=> b!6993630 (=> res!2852490 e!4203676)))

(declare-fun isEmpty!39194 (List!67280) Bool)

(assert (=> b!6993630 (= res!2852490 (isEmpty!39194 (exprs!6741 lt!2490712)))))

(declare-fun b!6993631 () Bool)

(declare-fun res!2852493 () Bool)

(assert (=> b!6993631 (=> res!2852493 e!4203676)))

(get-info :version)

(assert (=> b!6993631 (= res!2852493 (not ((_ is Cons!67156) (exprs!6741 lt!2490712))))))

(declare-fun res!2852497 () Bool)

(declare-fun e!4203667 () Bool)

(assert (=> start!672454 (=> (not res!2852497) (not e!4203667))))

(assert (=> start!672454 (= res!2852497 (matchZipper!2785 lt!2490713 s!7408))))

(declare-fun appendTo!366 ((InoxSet Context!12482) Context!12482) (InoxSet Context!12482))

(assert (=> start!672454 (= lt!2490713 (appendTo!366 z1!570 ct2!306))))

(assert (=> start!672454 e!4203667))

(declare-fun condSetEmpty!47937 () Bool)

(assert (=> start!672454 (= condSetEmpty!47937 (= z1!570 ((as const (Array Context!12482 Bool)) false)))))

(declare-fun setRes!47937 () Bool)

(assert (=> start!672454 setRes!47937))

(declare-fun e!4203678 () Bool)

(declare-fun inv!85971 (Context!12482) Bool)

(assert (=> start!672454 (and (inv!85971 ct2!306) e!4203678)))

(assert (=> start!672454 e!4203668))

(declare-fun b!6993632 () Bool)

(declare-fun e!4203677 () Bool)

(assert (=> b!6993632 (= e!4203681 e!4203677)))

(declare-fun res!2852492 () Bool)

(assert (=> b!6993632 (=> res!2852492 e!4203677)))

(declare-fun lt!2490729 () Int)

(declare-fun contextDepthTotal!438 (Context!12482) Int)

(assert (=> b!6993632 (= res!2852492 (<= lt!2490729 (contextDepthTotal!438 lt!2490738)))))

(declare-fun lt!2490711 () Int)

(assert (=> b!6993632 (<= lt!2490729 lt!2490711)))

(declare-datatypes ((List!67282 0))(
  ( (Nil!67158) (Cons!67158 (h!73606 Context!12482) (t!381029 List!67282)) )
))
(declare-fun lt!2490701 () List!67282)

(declare-fun zipperDepthTotal!466 (List!67282) Int)

(assert (=> b!6993632 (= lt!2490711 (zipperDepthTotal!466 lt!2490701))))

(assert (=> b!6993632 (= lt!2490729 (contextDepthTotal!438 lt!2490712))))

(declare-fun lt!2490696 () Unit!161145)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!6 (List!67282 Context!12482) Unit!161145)

(assert (=> b!6993632 (= lt!2490696 (lemmaTotalDepthZipperLargerThanOfAnyContext!6 lt!2490701 lt!2490712))))

(declare-fun toList!10605 ((InoxSet Context!12482)) List!67282)

(assert (=> b!6993632 (= lt!2490701 (toList!10605 z1!570))))

(declare-fun lt!2490718 () Unit!161145)

(assert (=> b!6993632 (= lt!2490718 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lt!2490698 () Unit!161145)

(assert (=> b!6993632 (= lt!2490698 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lt!2490725 () Unit!161145)

(assert (=> b!6993632 (= lt!2490725 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lt!2490716 () (InoxSet Context!12482))

(declare-fun lambda!403346 () Int)

(declare-fun flatMap!2231 ((InoxSet Context!12482) Int) (InoxSet Context!12482))

(assert (=> b!6993632 (= (flatMap!2231 lt!2490716 lambda!403346) (derivationStepZipperUp!1895 lt!2490738 (h!73605 s!7408)))))

(declare-fun lt!2490730 () Unit!161145)

(declare-fun lemmaFlatMapOnSingletonSet!1746 ((InoxSet Context!12482) Context!12482 Int) Unit!161145)

(assert (=> b!6993632 (= lt!2490730 (lemmaFlatMapOnSingletonSet!1746 lt!2490716 lt!2490738 lambda!403346))))

(declare-fun map!15514 ((InoxSet Context!12482) Int) (InoxSet Context!12482))

(assert (=> b!6993632 (= (map!15514 lt!2490716 lambda!403344) (store ((as const (Array Context!12482 Bool)) false) (Context!12483 (++!15192 lt!2490715 (exprs!6741 ct2!306))) true))))

(declare-fun lt!2490736 () Unit!161145)

(assert (=> b!6993632 (= lt!2490736 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lt!2490737 () Unit!161145)

(declare-fun lemmaMapOnSingletonSet!310 ((InoxSet Context!12482) Context!12482 Int) Unit!161145)

(assert (=> b!6993632 (= lt!2490737 (lemmaMapOnSingletonSet!310 lt!2490716 lt!2490738 lambda!403344))))

(assert (=> b!6993632 (= lt!2490716 (store ((as const (Array Context!12482 Bool)) false) lt!2490738 true))))

(assert (=> b!6993633 (= e!4203667 (not e!4203674))))

(declare-fun res!2852506 () Bool)

(assert (=> b!6993633 (=> res!2852506 e!4203674)))

(assert (=> b!6993633 (= res!2852506 (not (matchZipper!2785 lt!2490692 s!7408)))))

(assert (=> b!6993633 (= lt!2490692 (store ((as const (Array Context!12482 Bool)) false) lt!2490721 true))))

(declare-fun lambda!403343 () Int)

(declare-fun getWitness!1154 ((InoxSet Context!12482) Int) Context!12482)

(assert (=> b!6993633 (= lt!2490721 (getWitness!1154 lt!2490713 lambda!403343))))

(declare-fun lt!2490719 () List!67282)

(declare-fun exists!3042 (List!67282 Int) Bool)

(assert (=> b!6993633 (exists!3042 lt!2490719 lambda!403343)))

(declare-fun lt!2490708 () Unit!161145)

(declare-fun lemmaZipperMatchesExistsMatchingContext!214 (List!67282 List!67281) Unit!161145)

(assert (=> b!6993633 (= lt!2490708 (lemmaZipperMatchesExistsMatchingContext!214 lt!2490719 s!7408))))

(assert (=> b!6993633 (= lt!2490719 (toList!10605 lt!2490713))))

(assert (=> b!6993634 (= e!4203666 e!4203676)))

(declare-fun res!2852491 () Bool)

(assert (=> b!6993634 (=> res!2852491 e!4203676)))

(declare-fun derivationStepZipper!2725 ((InoxSet Context!12482) C!34760) (InoxSet Context!12482))

(assert (=> b!6993634 (= res!2852491 (not (= (derivationStepZipper!2725 lt!2490695 (h!73605 s!7408)) lt!2490723)))))

(assert (=> b!6993634 (= (flatMap!2231 lt!2490695 lambda!403346) (derivationStepZipperUp!1895 lt!2490724 (h!73605 s!7408)))))

(declare-fun lt!2490720 () Unit!161145)

(assert (=> b!6993634 (= lt!2490720 (lemmaFlatMapOnSingletonSet!1746 lt!2490695 lt!2490724 lambda!403346))))

(assert (=> b!6993634 (= lt!2490723 (derivationStepZipperUp!1895 lt!2490724 (h!73605 s!7408)))))

(declare-fun lt!2490727 () Unit!161145)

(assert (=> b!6993634 (= lt!2490727 (lemmaConcatPreservesForall!581 (exprs!6741 lt!2490712) (exprs!6741 ct2!306) lambda!403345))))

(declare-fun setElem!47937 () Context!12482)

(declare-fun setNonEmpty!47937 () Bool)

(declare-fun tp!1930294 () Bool)

(assert (=> setNonEmpty!47937 (= setRes!47937 (and tp!1930294 (inv!85971 setElem!47937) e!4203675))))

(declare-fun setRest!47937 () (InoxSet Context!12482))

(assert (=> setNonEmpty!47937 (= z1!570 ((_ map or) (store ((as const (Array Context!12482 Bool)) false) setElem!47937 true) setRest!47937))))

(declare-fun b!6993635 () Bool)

(assert (=> b!6993635 (= e!4203677 true)))

(declare-datatypes ((tuple2!67836 0))(
  ( (tuple2!67837 (_1!37221 List!67281) (_2!37221 List!67281)) )
))
(declare-datatypes ((Option!16750 0))(
  ( (None!16749) (Some!16749 (v!53021 tuple2!67836)) )
))
(declare-fun isDefined!13451 (Option!16750) Bool)

(declare-fun findConcatSeparationZippers!266 ((InoxSet Context!12482) (InoxSet Context!12482) List!67281 List!67281 List!67281) Option!16750)

(assert (=> b!6993635 (isDefined!13451 (findConcatSeparationZippers!266 lt!2490716 (store ((as const (Array Context!12482 Bool)) false) ct2!306 true) Nil!67157 s!7408 s!7408))))

(declare-fun lt!2490735 () Unit!161145)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!266 ((InoxSet Context!12482) Context!12482 List!67281) Unit!161145)

(assert (=> b!6993635 (= lt!2490735 (lemmaConcatZipperMatchesStringThenFindConcatDefined!266 lt!2490716 ct2!306 s!7408))))

(declare-fun b!6993636 () Bool)

(declare-fun e!4203680 () Bool)

(assert (=> b!6993636 (= e!4203682 e!4203680)))

(declare-fun res!2852499 () Bool)

(assert (=> b!6993636 (=> res!2852499 e!4203680)))

(assert (=> b!6993636 (= res!2852499 (not (matchZipper!2785 lt!2490731 (t!381028 s!7408))))))

(declare-fun lt!2490739 () Unit!161145)

(assert (=> b!6993636 (= lt!2490739 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun b!6993637 () Bool)

(declare-fun res!2852489 () Bool)

(assert (=> b!6993637 (=> res!2852489 e!4203682)))

(assert (=> b!6993637 (= res!2852489 (not lt!2490717))))

(declare-fun setIsEmpty!47937 () Bool)

(assert (=> setIsEmpty!47937 setRes!47937))

(declare-fun b!6993638 () Bool)

(declare-fun tp!1930296 () Bool)

(assert (=> b!6993638 (= e!4203678 tp!1930296)))

(declare-fun b!6993639 () Bool)

(assert (=> b!6993639 (= e!4203670 (not (matchZipper!2785 lt!2490731 (t!381028 s!7408))))))

(declare-fun lt!2490702 () Unit!161145)

(assert (=> b!6993639 (= lt!2490702 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun b!6993640 () Bool)

(declare-fun res!2852495 () Bool)

(assert (=> b!6993640 (=> (not res!2852495) (not e!4203667))))

(assert (=> b!6993640 (= res!2852495 ((_ is Cons!67157) s!7408))))

(declare-fun b!6993641 () Bool)

(declare-fun res!2852488 () Bool)

(assert (=> b!6993641 (=> res!2852488 e!4203677)))

(assert (=> b!6993641 (= res!2852488 (>= (zipperDepthTotal!466 (Cons!67158 lt!2490738 Nil!67158)) lt!2490711))))

(declare-fun b!6993642 () Bool)

(assert (=> b!6993642 (= e!4203680 e!4203669)))

(declare-fun res!2852502 () Bool)

(assert (=> b!6993642 (=> res!2852502 e!4203669)))

(assert (=> b!6993642 (= res!2852502 (not (= (derivationStepZipper!2725 lt!2490700 (h!73605 s!7408)) lt!2490731)))))

(declare-fun lt!2490706 () Unit!161145)

(assert (=> b!6993642 (= lt!2490706 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lt!2490704 () Unit!161145)

(assert (=> b!6993642 (= lt!2490704 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(assert (=> b!6993642 (= (flatMap!2231 lt!2490700 lambda!403346) (derivationStepZipperUp!1895 lt!2490709 (h!73605 s!7408)))))

(declare-fun lt!2490722 () Unit!161145)

(assert (=> b!6993642 (= lt!2490722 (lemmaFlatMapOnSingletonSet!1746 lt!2490700 lt!2490709 lambda!403346))))

(assert (=> b!6993642 (= lt!2490700 (store ((as const (Array Context!12482 Bool)) false) lt!2490709 true))))

(declare-fun lt!2490726 () Unit!161145)

(assert (=> b!6993642 (= lt!2490726 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(declare-fun lt!2490733 () Unit!161145)

(assert (=> b!6993642 (= lt!2490733 (lemmaConcatPreservesForall!581 lt!2490715 (exprs!6741 ct2!306) lambda!403345))))

(assert (= (and start!672454 res!2852497) b!6993640))

(assert (= (and b!6993640 res!2852495) b!6993633))

(assert (= (and b!6993633 (not res!2852506)) b!6993620))

(assert (= (and b!6993620 (not res!2852503)) b!6993628))

(assert (= (and b!6993628 (not res!2852504)) b!6993623))

(assert (= (and b!6993623 (not res!2852498)) b!6993634))

(assert (= (and b!6993634 (not res!2852491)) b!6993631))

(assert (= (and b!6993631 (not res!2852493)) b!6993630))

(assert (= (and b!6993630 (not res!2852490)) b!6993629))

(assert (= (and b!6993629 (not res!2852487)) b!6993625))

(assert (= (and b!6993625 (not res!2852500)) b!6993624))

(assert (= (and b!6993624 (not res!2852496)) b!6993621))

(assert (= (and b!6993624 res!2852494) b!6993639))

(assert (= (and b!6993624 (not res!2852505)) b!6993637))

(assert (= (and b!6993637 (not res!2852489)) b!6993636))

(assert (= (and b!6993636 (not res!2852499)) b!6993642))

(assert (= (and b!6993642 (not res!2852502)) b!6993626))

(assert (= (and b!6993626 (not res!2852501)) b!6993632))

(assert (= (and b!6993632 (not res!2852492)) b!6993641))

(assert (= (and b!6993641 (not res!2852488)) b!6993635))

(assert (= (and start!672454 condSetEmpty!47937) setIsEmpty!47937))

(assert (= (and start!672454 (not condSetEmpty!47937)) setNonEmpty!47937))

(assert (= setNonEmpty!47937 b!6993627))

(assert (= start!672454 b!6993638))

(assert (= (and start!672454 ((_ is Cons!67157) s!7408)) b!6993622))

(declare-fun m!7684016 () Bool)

(assert (=> setNonEmpty!47937 m!7684016))

(declare-fun m!7684018 () Bool)

(assert (=> b!6993634 m!7684018))

(declare-fun m!7684020 () Bool)

(assert (=> b!6993634 m!7684020))

(declare-fun m!7684022 () Bool)

(assert (=> b!6993634 m!7684022))

(declare-fun m!7684024 () Bool)

(assert (=> b!6993634 m!7684024))

(declare-fun m!7684026 () Bool)

(assert (=> b!6993634 m!7684026))

(declare-fun m!7684028 () Bool)

(assert (=> b!6993625 m!7684028))

(declare-fun m!7684030 () Bool)

(assert (=> b!6993625 m!7684030))

(declare-fun m!7684032 () Bool)

(assert (=> b!6993625 m!7684032))

(assert (=> b!6993625 m!7684032))

(declare-fun m!7684034 () Bool)

(assert (=> b!6993625 m!7684034))

(declare-fun m!7684036 () Bool)

(assert (=> b!6993623 m!7684036))

(assert (=> b!6993623 m!7684018))

(declare-fun m!7684038 () Bool)

(assert (=> b!6993626 m!7684038))

(assert (=> b!6993626 m!7684032))

(assert (=> b!6993624 m!7684032))

(declare-fun m!7684040 () Bool)

(assert (=> b!6993624 m!7684040))

(assert (=> b!6993624 m!7684032))

(declare-fun m!7684042 () Bool)

(assert (=> b!6993624 m!7684042))

(assert (=> b!6993624 m!7684032))

(declare-fun m!7684044 () Bool)

(assert (=> b!6993624 m!7684044))

(declare-fun m!7684046 () Bool)

(assert (=> b!6993624 m!7684046))

(declare-fun m!7684048 () Bool)

(assert (=> b!6993621 m!7684048))

(declare-fun m!7684050 () Bool)

(assert (=> b!6993633 m!7684050))

(declare-fun m!7684052 () Bool)

(assert (=> b!6993633 m!7684052))

(declare-fun m!7684054 () Bool)

(assert (=> b!6993633 m!7684054))

(declare-fun m!7684056 () Bool)

(assert (=> b!6993633 m!7684056))

(declare-fun m!7684058 () Bool)

(assert (=> b!6993633 m!7684058))

(declare-fun m!7684060 () Bool)

(assert (=> b!6993633 m!7684060))

(declare-fun m!7684062 () Bool)

(assert (=> b!6993630 m!7684062))

(declare-fun m!7684064 () Bool)

(assert (=> b!6993628 m!7684064))

(declare-fun m!7684066 () Bool)

(assert (=> b!6993628 m!7684066))

(assert (=> b!6993628 m!7684018))

(declare-fun m!7684068 () Bool)

(assert (=> b!6993628 m!7684068))

(assert (=> b!6993639 m!7684048))

(assert (=> b!6993639 m!7684032))

(declare-fun m!7684070 () Bool)

(assert (=> b!6993641 m!7684070))

(declare-fun m!7684072 () Bool)

(assert (=> start!672454 m!7684072))

(declare-fun m!7684074 () Bool)

(assert (=> start!672454 m!7684074))

(declare-fun m!7684076 () Bool)

(assert (=> start!672454 m!7684076))

(declare-fun m!7684078 () Bool)

(assert (=> b!6993635 m!7684078))

(assert (=> b!6993635 m!7684078))

(declare-fun m!7684080 () Bool)

(assert (=> b!6993635 m!7684080))

(assert (=> b!6993635 m!7684080))

(declare-fun m!7684082 () Bool)

(assert (=> b!6993635 m!7684082))

(declare-fun m!7684084 () Bool)

(assert (=> b!6993635 m!7684084))

(declare-fun m!7684086 () Bool)

(assert (=> b!6993620 m!7684086))

(assert (=> b!6993642 m!7684032))

(declare-fun m!7684088 () Bool)

(assert (=> b!6993642 m!7684088))

(declare-fun m!7684090 () Bool)

(assert (=> b!6993642 m!7684090))

(assert (=> b!6993642 m!7684034))

(assert (=> b!6993642 m!7684032))

(declare-fun m!7684092 () Bool)

(assert (=> b!6993642 m!7684092))

(assert (=> b!6993642 m!7684032))

(assert (=> b!6993642 m!7684032))

(declare-fun m!7684094 () Bool)

(assert (=> b!6993642 m!7684094))

(assert (=> b!6993636 m!7684048))

(assert (=> b!6993636 m!7684032))

(declare-fun m!7684096 () Bool)

(assert (=> b!6993629 m!7684096))

(declare-fun m!7684098 () Bool)

(assert (=> b!6993629 m!7684098))

(declare-fun m!7684100 () Bool)

(assert (=> b!6993632 m!7684100))

(declare-fun m!7684102 () Bool)

(assert (=> b!6993632 m!7684102))

(assert (=> b!6993632 m!7684032))

(declare-fun m!7684104 () Bool)

(assert (=> b!6993632 m!7684104))

(assert (=> b!6993632 m!7684032))

(declare-fun m!7684106 () Bool)

(assert (=> b!6993632 m!7684106))

(declare-fun m!7684108 () Bool)

(assert (=> b!6993632 m!7684108))

(declare-fun m!7684110 () Bool)

(assert (=> b!6993632 m!7684110))

(declare-fun m!7684112 () Bool)

(assert (=> b!6993632 m!7684112))

(assert (=> b!6993632 m!7684032))

(declare-fun m!7684114 () Bool)

(assert (=> b!6993632 m!7684114))

(assert (=> b!6993632 m!7684032))

(assert (=> b!6993632 m!7684028))

(declare-fun m!7684116 () Bool)

(assert (=> b!6993632 m!7684116))

(declare-fun m!7684118 () Bool)

(assert (=> b!6993632 m!7684118))

(declare-fun m!7684120 () Bool)

(assert (=> b!6993632 m!7684120))

(declare-fun m!7684122 () Bool)

(assert (=> b!6993632 m!7684122))

(check-sat (not b!6993642) (not setNonEmpty!47937) (not b!6993638) (not b!6993633) (not b!6993629) (not b!6993636) tp_is_empty!43715 (not b!6993639) (not b!6993625) (not b!6993621) (not b!6993641) (not b!6993627) (not b!6993628) (not b!6993634) (not b!6993623) (not b!6993630) (not b!6993622) (not b!6993635) (not b!6993626) (not b!6993624) (not b!6993632) (not start!672454))
(check-sat)
