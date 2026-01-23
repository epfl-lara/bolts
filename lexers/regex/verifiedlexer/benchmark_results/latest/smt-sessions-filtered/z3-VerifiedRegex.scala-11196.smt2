; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584338 () Bool)

(assert start!584338)

(declare-fun b!5650698 () Bool)

(assert (=> b!5650698 true))

(assert (=> b!5650698 true))

(declare-fun lambda!303946 () Int)

(declare-fun lambda!303945 () Int)

(assert (=> b!5650698 (not (= lambda!303946 lambda!303945))))

(assert (=> b!5650698 true))

(assert (=> b!5650698 true))

(declare-fun b!5650693 () Bool)

(assert (=> b!5650693 true))

(declare-fun bs!1314425 () Bool)

(declare-fun b!5650700 () Bool)

(assert (= bs!1314425 (and b!5650700 b!5650698)))

(declare-datatypes ((C!31548 0))(
  ( (C!31549 (val!25476 Int)) )
))
(declare-datatypes ((Regex!15639 0))(
  ( (ElementMatch!15639 (c!993109 C!31548)) (Concat!24484 (regOne!31790 Regex!15639) (regTwo!31790 Regex!15639)) (EmptyExpr!15639) (Star!15639 (reg!15968 Regex!15639)) (EmptyLang!15639) (Union!15639 (regOne!31791 Regex!15639) (regTwo!31791 Regex!15639)) )
))
(declare-fun r!7292 () Regex!15639)

(declare-fun lt!2265690 () Regex!15639)

(declare-fun lambda!303948 () Int)

(assert (=> bs!1314425 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265690 (regTwo!31790 r!7292))) (= lambda!303948 lambda!303945))))

(assert (=> bs!1314425 (not (= lambda!303948 lambda!303946))))

(assert (=> b!5650700 true))

(assert (=> b!5650700 true))

(assert (=> b!5650700 true))

(declare-fun lambda!303949 () Int)

(assert (=> bs!1314425 (not (= lambda!303949 lambda!303945))))

(assert (=> bs!1314425 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265690 (regTwo!31790 r!7292))) (= lambda!303949 lambda!303946))))

(assert (=> b!5650700 (not (= lambda!303949 lambda!303948))))

(assert (=> b!5650700 true))

(assert (=> b!5650700 true))

(assert (=> b!5650700 true))

(declare-fun lt!2265692 () Regex!15639)

(declare-fun lambda!303950 () Int)

(assert (=> bs!1314425 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265692 (regTwo!31790 r!7292))) (= lambda!303950 lambda!303945))))

(assert (=> bs!1314425 (not (= lambda!303950 lambda!303946))))

(assert (=> b!5650700 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 (regOne!31790 r!7292))) (= lt!2265692 lt!2265690)) (= lambda!303950 lambda!303948))))

(assert (=> b!5650700 (not (= lambda!303950 lambda!303949))))

(assert (=> b!5650700 true))

(assert (=> b!5650700 true))

(assert (=> b!5650700 true))

(declare-fun lambda!303951 () Int)

(assert (=> b!5650700 (not (= lambda!303951 lambda!303950))))

(assert (=> b!5650700 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 (regOne!31790 r!7292))) (= lt!2265692 lt!2265690)) (= lambda!303951 lambda!303949))))

(assert (=> bs!1314425 (not (= lambda!303951 lambda!303945))))

(assert (=> bs!1314425 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265692 (regTwo!31790 r!7292))) (= lambda!303951 lambda!303946))))

(assert (=> b!5650700 (not (= lambda!303951 lambda!303948))))

(assert (=> b!5650700 true))

(assert (=> b!5650700 true))

(assert (=> b!5650700 true))

(declare-fun b!5650677 () Bool)

(declare-fun e!3480734 () Bool)

(declare-fun tp_is_empty!40531 () Bool)

(assert (=> b!5650677 (= e!3480734 tp_is_empty!40531)))

(declare-fun b!5650678 () Bool)

(declare-fun res!2390496 () Bool)

(declare-fun e!3480741 () Bool)

(assert (=> b!5650678 (=> res!2390496 e!3480741)))

(declare-fun nullable!5671 (Regex!15639) Bool)

(assert (=> b!5650678 (= res!2390496 (not (nullable!5671 (regOne!31790 (regOne!31790 r!7292)))))))

(declare-fun b!5650679 () Bool)

(declare-fun res!2390488 () Bool)

(declare-fun e!3480749 () Bool)

(assert (=> b!5650679 (=> res!2390488 e!3480749)))

(declare-datatypes ((List!63216 0))(
  ( (Nil!63092) (Cons!63092 (h!69540 Regex!15639) (t!376516 List!63216)) )
))
(declare-datatypes ((Context!10046 0))(
  ( (Context!10047 (exprs!5523 List!63216)) )
))
(declare-datatypes ((List!63217 0))(
  ( (Nil!63093) (Cons!63093 (h!69541 Context!10046) (t!376517 List!63217)) )
))
(declare-fun zl!343 () List!63217)

(declare-fun generalisedConcat!1254 (List!63216) Regex!15639)

(assert (=> b!5650679 (= res!2390488 (not (= r!7292 (generalisedConcat!1254 (exprs!5523 (h!69541 zl!343))))))))

(declare-fun b!5650680 () Bool)

(declare-datatypes ((Unit!156088 0))(
  ( (Unit!156089) )
))
(declare-fun e!3480737 () Unit!156088)

(declare-fun Unit!156090 () Unit!156088)

(assert (=> b!5650680 (= e!3480737 Unit!156090)))

(declare-fun b!5650681 () Bool)

(declare-fun res!2390508 () Bool)

(declare-fun e!3480732 () Bool)

(assert (=> b!5650681 (=> (not res!2390508) (not e!3480732))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10046))

(declare-fun toList!9423 ((InoxSet Context!10046)) List!63217)

(assert (=> b!5650681 (= res!2390508 (= (toList!9423 z!1189) zl!343))))

(declare-fun b!5650682 () Bool)

(declare-fun res!2390501 () Bool)

(assert (=> b!5650682 (=> (not res!2390501) (not e!3480732))))

(declare-fun unfocusZipper!1381 (List!63217) Regex!15639)

(assert (=> b!5650682 (= res!2390501 (= r!7292 (unfocusZipper!1381 zl!343)))))

(declare-fun b!5650683 () Bool)

(declare-fun res!2390495 () Bool)

(declare-fun e!3480744 () Bool)

(assert (=> b!5650683 (=> res!2390495 e!3480744)))

(declare-fun lt!2265735 () List!63217)

(declare-fun zipperDepth!216 (List!63217) Int)

(assert (=> b!5650683 (= res!2390495 (> (zipperDepth!216 lt!2265735) (zipperDepth!216 zl!343)))))

(declare-fun b!5650684 () Bool)

(assert (=> b!5650684 (= e!3480732 (not e!3480749))))

(declare-fun res!2390507 () Bool)

(assert (=> b!5650684 (=> res!2390507 e!3480749)))

(get-info :version)

(assert (=> b!5650684 (= res!2390507 (not ((_ is Cons!63093) zl!343)))))

(declare-fun lt!2265732 () Bool)

(declare-datatypes ((List!63218 0))(
  ( (Nil!63094) (Cons!63094 (h!69542 C!31548) (t!376518 List!63218)) )
))
(declare-fun s!2326 () List!63218)

(declare-fun matchRSpec!2742 (Regex!15639 List!63218) Bool)

(assert (=> b!5650684 (= lt!2265732 (matchRSpec!2742 r!7292 s!2326))))

(declare-fun matchR!7824 (Regex!15639 List!63218) Bool)

(assert (=> b!5650684 (= lt!2265732 (matchR!7824 r!7292 s!2326))))

(declare-fun lt!2265700 () Unit!156088)

(declare-fun mainMatchTheorem!2742 (Regex!15639 List!63218) Unit!156088)

(assert (=> b!5650684 (= lt!2265700 (mainMatchTheorem!2742 r!7292 s!2326))))

(declare-fun b!5650685 () Bool)

(declare-fun e!3480743 () Bool)

(assert (=> b!5650685 (= e!3480741 e!3480743)))

(declare-fun res!2390486 () Bool)

(assert (=> b!5650685 (=> res!2390486 e!3480743)))

(declare-fun lt!2265719 () (InoxSet Context!10046))

(declare-fun lt!2265694 () (InoxSet Context!10046))

(assert (=> b!5650685 (= res!2390486 (not (= lt!2265719 lt!2265694)))))

(declare-fun lt!2265717 () (InoxSet Context!10046))

(declare-fun lt!2265731 () (InoxSet Context!10046))

(assert (=> b!5650685 (= lt!2265694 ((_ map or) lt!2265717 lt!2265731))))

(declare-fun lt!2265730 () Context!10046)

(declare-fun derivationStepZipperDown!981 (Regex!15639 Context!10046 C!31548) (InoxSet Context!10046))

(assert (=> b!5650685 (= lt!2265731 (derivationStepZipperDown!981 (regTwo!31790 (regOne!31790 r!7292)) lt!2265730 (h!69542 s!2326)))))

(declare-fun lt!2265689 () Context!10046)

(assert (=> b!5650685 (= lt!2265717 (derivationStepZipperDown!981 (regOne!31790 (regOne!31790 r!7292)) lt!2265689 (h!69542 s!2326)))))

(declare-fun lt!2265733 () List!63216)

(assert (=> b!5650685 (= lt!2265689 (Context!10047 lt!2265733))))

(assert (=> b!5650685 (= lt!2265733 (Cons!63092 (regTwo!31790 (regOne!31790 r!7292)) (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun b!5650686 () Bool)

(declare-fun res!2390489 () Bool)

(assert (=> b!5650686 (=> res!2390489 e!3480749)))

(assert (=> b!5650686 (= res!2390489 (or ((_ is EmptyExpr!15639) r!7292) ((_ is EmptyLang!15639) r!7292) ((_ is ElementMatch!15639) r!7292) ((_ is Union!15639) r!7292) (not ((_ is Concat!24484) r!7292))))))

(declare-fun e!3480730 () Bool)

(declare-fun b!5650687 () Bool)

(declare-fun lt!2265696 () Regex!15639)

(assert (=> b!5650687 (= e!3480730 (= lt!2265732 (matchR!7824 (Concat!24484 lt!2265696 lt!2265692) s!2326)))))

(declare-fun res!2390510 () Bool)

(assert (=> start!584338 (=> (not res!2390510) (not e!3480732))))

(declare-fun validRegex!7375 (Regex!15639) Bool)

(assert (=> start!584338 (= res!2390510 (validRegex!7375 r!7292))))

(assert (=> start!584338 e!3480732))

(assert (=> start!584338 e!3480734))

(declare-fun condSetEmpty!37754 () Bool)

(assert (=> start!584338 (= condSetEmpty!37754 (= z!1189 ((as const (Array Context!10046 Bool)) false)))))

(declare-fun setRes!37754 () Bool)

(assert (=> start!584338 setRes!37754))

(declare-fun e!3480746 () Bool)

(assert (=> start!584338 e!3480746))

(declare-fun e!3480740 () Bool)

(assert (=> start!584338 e!3480740))

(declare-fun b!5650688 () Bool)

(declare-fun Unit!156091 () Unit!156088)

(assert (=> b!5650688 (= e!3480737 Unit!156091)))

(declare-fun lt!2265709 () Unit!156088)

(declare-fun lt!2265725 () (InoxSet Context!10046))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!664 ((InoxSet Context!10046) (InoxSet Context!10046) List!63218) Unit!156088)

(assert (=> b!5650688 (= lt!2265709 (lemmaZipperConcatMatchesSameAsBothZippers!664 lt!2265719 lt!2265725 (t!376518 s!2326)))))

(declare-fun res!2390514 () Bool)

(declare-fun matchZipper!1777 ((InoxSet Context!10046) List!63218) Bool)

(assert (=> b!5650688 (= res!2390514 (matchZipper!1777 lt!2265719 (t!376518 s!2326)))))

(declare-fun e!3480733 () Bool)

(assert (=> b!5650688 (=> res!2390514 e!3480733)))

(assert (=> b!5650688 (= (matchZipper!1777 ((_ map or) lt!2265719 lt!2265725) (t!376518 s!2326)) e!3480733)))

(declare-fun b!5650689 () Bool)

(declare-fun tp!1565726 () Bool)

(assert (=> b!5650689 (= e!3480740 (and tp_is_empty!40531 tp!1565726))))

(declare-fun b!5650690 () Bool)

(declare-fun res!2390497 () Bool)

(assert (=> b!5650690 (=> res!2390497 e!3480730)))

(assert (=> b!5650690 (= res!2390497 (not (= lt!2265732 (matchR!7824 (Concat!24484 lt!2265696 (regTwo!31790 r!7292)) s!2326))))))

(declare-fun b!5650691 () Bool)

(declare-fun res!2390504 () Bool)

(assert (=> b!5650691 (=> res!2390504 e!3480749)))

(assert (=> b!5650691 (= res!2390504 (not ((_ is Cons!63092) (exprs!5523 (h!69541 zl!343)))))))

(declare-fun b!5650692 () Bool)

(declare-fun e!3480738 () Bool)

(declare-fun tp!1565725 () Bool)

(assert (=> b!5650692 (= e!3480738 tp!1565725)))

(declare-fun e!3480736 () Bool)

(assert (=> b!5650693 (= e!3480736 e!3480741)))

(declare-fun res!2390494 () Bool)

(assert (=> b!5650693 (=> res!2390494 e!3480741)))

(assert (=> b!5650693 (= res!2390494 (or (and ((_ is ElementMatch!15639) (regOne!31790 r!7292)) (= (c!993109 (regOne!31790 r!7292)) (h!69542 s!2326))) ((_ is Union!15639) (regOne!31790 r!7292)) (not ((_ is Concat!24484) (regOne!31790 r!7292)))))))

(declare-fun lt!2265706 () Unit!156088)

(assert (=> b!5650693 (= lt!2265706 e!3480737)))

(declare-fun c!993108 () Bool)

(assert (=> b!5650693 (= c!993108 (nullable!5671 (h!69540 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun lambda!303947 () Int)

(declare-fun flatMap!1252 ((InoxSet Context!10046) Int) (InoxSet Context!10046))

(declare-fun derivationStepZipperUp!907 (Context!10046 C!31548) (InoxSet Context!10046))

(assert (=> b!5650693 (= (flatMap!1252 z!1189 lambda!303947) (derivationStepZipperUp!907 (h!69541 zl!343) (h!69542 s!2326)))))

(declare-fun lt!2265718 () Unit!156088)

(declare-fun lemmaFlatMapOnSingletonSet!784 ((InoxSet Context!10046) Context!10046 Int) Unit!156088)

(assert (=> b!5650693 (= lt!2265718 (lemmaFlatMapOnSingletonSet!784 z!1189 (h!69541 zl!343) lambda!303947))))

(assert (=> b!5650693 (= lt!2265725 (derivationStepZipperUp!907 lt!2265730 (h!69542 s!2326)))))

(assert (=> b!5650693 (= lt!2265719 (derivationStepZipperDown!981 (h!69540 (exprs!5523 (h!69541 zl!343))) lt!2265730 (h!69542 s!2326)))))

(assert (=> b!5650693 (= lt!2265730 (Context!10047 (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun lt!2265711 () (InoxSet Context!10046))

(assert (=> b!5650693 (= lt!2265711 (derivationStepZipperUp!907 (Context!10047 (Cons!63092 (h!69540 (exprs!5523 (h!69541 zl!343))) (t!376516 (exprs!5523 (h!69541 zl!343))))) (h!69542 s!2326)))))

(declare-fun b!5650694 () Bool)

(declare-fun res!2390499 () Bool)

(assert (=> b!5650694 (=> res!2390499 e!3480749)))

(declare-fun generalisedUnion!1502 (List!63216) Regex!15639)

(declare-fun unfocusZipperList!1067 (List!63217) List!63216)

(assert (=> b!5650694 (= res!2390499 (not (= r!7292 (generalisedUnion!1502 (unfocusZipperList!1067 zl!343)))))))

(declare-fun b!5650695 () Bool)

(declare-fun tp!1565732 () Bool)

(declare-fun tp!1565733 () Bool)

(assert (=> b!5650695 (= e!3480734 (and tp!1565732 tp!1565733))))

(declare-fun b!5650696 () Bool)

(declare-fun tp!1565729 () Bool)

(assert (=> b!5650696 (= e!3480734 tp!1565729)))

(declare-fun b!5650697 () Bool)

(declare-fun e!3480750 () Bool)

(declare-fun e!3480735 () Bool)

(assert (=> b!5650697 (= e!3480750 e!3480735)))

(declare-fun res!2390500 () Bool)

(assert (=> b!5650697 (=> res!2390500 e!3480735)))

(declare-fun e!3480739 () Bool)

(assert (=> b!5650697 (= res!2390500 e!3480739)))

(declare-fun res!2390505 () Bool)

(assert (=> b!5650697 (=> (not res!2390505) (not e!3480739))))

(declare-fun lt!2265729 () (InoxSet Context!10046))

(declare-fun lt!2265698 () Bool)

(assert (=> b!5650697 (= res!2390505 (not (= lt!2265698 (matchZipper!1777 lt!2265729 (t!376518 s!2326)))))))

(declare-fun lt!2265724 () (InoxSet Context!10046))

(declare-fun e!3480742 () Bool)

(assert (=> b!5650697 (= (matchZipper!1777 lt!2265724 (t!376518 s!2326)) e!3480742)))

(declare-fun res!2390491 () Bool)

(assert (=> b!5650697 (=> res!2390491 e!3480742)))

(declare-fun lt!2265723 () Bool)

(assert (=> b!5650697 (= res!2390491 lt!2265723)))

(declare-fun lt!2265708 () Unit!156088)

(declare-fun lt!2265722 () (InoxSet Context!10046))

(assert (=> b!5650697 (= lt!2265708 (lemmaZipperConcatMatchesSameAsBothZippers!664 lt!2265717 lt!2265722 (t!376518 s!2326)))))

(declare-fun lt!2265695 () (InoxSet Context!10046))

(assert (=> b!5650697 (= (flatMap!1252 lt!2265695 lambda!303947) (derivationStepZipperUp!907 lt!2265689 (h!69542 s!2326)))))

(declare-fun lt!2265734 () Unit!156088)

(assert (=> b!5650697 (= lt!2265734 (lemmaFlatMapOnSingletonSet!784 lt!2265695 lt!2265689 lambda!303947))))

(assert (=> b!5650698 (= e!3480749 e!3480736)))

(declare-fun res!2390493 () Bool)

(assert (=> b!5650698 (=> res!2390493 e!3480736)))

(declare-fun lt!2265710 () Bool)

(assert (=> b!5650698 (= res!2390493 (or (not (= lt!2265732 lt!2265710)) ((_ is Nil!63094) s!2326)))))

(declare-fun Exists!2739 (Int) Bool)

(assert (=> b!5650698 (= (Exists!2739 lambda!303945) (Exists!2739 lambda!303946))))

(declare-fun lt!2265704 () Unit!156088)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1368 (Regex!15639 Regex!15639 List!63218) Unit!156088)

(assert (=> b!5650698 (= lt!2265704 (lemmaExistCutMatchRandMatchRSpecEquivalent!1368 (regOne!31790 r!7292) (regTwo!31790 r!7292) s!2326))))

(assert (=> b!5650698 (= lt!2265710 (Exists!2739 lambda!303945))))

(declare-datatypes ((tuple2!65472 0))(
  ( (tuple2!65473 (_1!36039 List!63218) (_2!36039 List!63218)) )
))
(declare-datatypes ((Option!15648 0))(
  ( (None!15647) (Some!15647 (v!51694 tuple2!65472)) )
))
(declare-fun isDefined!12351 (Option!15648) Bool)

(declare-fun findConcatSeparation!2062 (Regex!15639 Regex!15639 List!63218 List!63218 List!63218) Option!15648)

(assert (=> b!5650698 (= lt!2265710 (isDefined!12351 (findConcatSeparation!2062 (regOne!31790 r!7292) (regTwo!31790 r!7292) Nil!63094 s!2326 s!2326)))))

(declare-fun lt!2265714 () Unit!156088)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1826 (Regex!15639 Regex!15639 List!63218) Unit!156088)

(assert (=> b!5650698 (= lt!2265714 (lemmaFindConcatSeparationEquivalentToExists!1826 (regOne!31790 r!7292) (regTwo!31790 r!7292) s!2326))))

(declare-fun b!5650699 () Bool)

(declare-fun e!3480747 () Bool)

(assert (=> b!5650699 (= e!3480735 e!3480747)))

(declare-fun res!2390506 () Bool)

(assert (=> b!5650699 (=> res!2390506 e!3480747)))

(assert (=> b!5650699 (= res!2390506 (not (= (exprs!5523 (h!69541 zl!343)) (Cons!63092 lt!2265696 (t!376516 (exprs!5523 (h!69541 zl!343)))))))))

(assert (=> b!5650699 (= lt!2265696 (Concat!24484 (regOne!31790 (regOne!31790 r!7292)) (regTwo!31790 (regOne!31790 r!7292))))))

(assert (=> b!5650700 (= e!3480744 e!3480730)))

(declare-fun res!2390498 () Bool)

(assert (=> b!5650700 (=> res!2390498 e!3480730)))

(declare-fun lt!2265712 () Bool)

(declare-fun lt!2265736 () Bool)

(declare-fun lt!2265707 () Bool)

(declare-fun lt!2265703 () Bool)

(declare-fun lt!2265713 () Bool)

(assert (=> b!5650700 (= res!2390498 (or (not (= lt!2265707 (or lt!2265712 lt!2265713))) (not (= lt!2265707 (or lt!2265736 lt!2265703)))))))

(assert (=> b!5650700 (= lt!2265707 (matchZipper!1777 z!1189 s!2326))))

(assert (=> b!5650700 (= (Exists!2739 lambda!303950) (Exists!2739 lambda!303951))))

(declare-fun lt!2265728 () Unit!156088)

(assert (=> b!5650700 (= lt!2265728 (lemmaExistCutMatchRandMatchRSpecEquivalent!1368 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 s!2326))))

(assert (=> b!5650700 (= (isDefined!12351 (findConcatSeparation!2062 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 Nil!63094 s!2326 s!2326)) (Exists!2739 lambda!303950))))

(declare-fun lt!2265720 () Unit!156088)

(assert (=> b!5650700 (= lt!2265720 (lemmaFindConcatSeparationEquivalentToExists!1826 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 s!2326))))

(assert (=> b!5650700 (= lt!2265692 (generalisedConcat!1254 (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(assert (=> b!5650700 (= lt!2265703 (matchRSpec!2742 lt!2265690 s!2326))))

(declare-fun lt!2265701 () Unit!156088)

(assert (=> b!5650700 (= lt!2265701 (mainMatchTheorem!2742 lt!2265690 s!2326))))

(assert (=> b!5650700 (= (Exists!2739 lambda!303948) (Exists!2739 lambda!303949))))

(declare-fun lt!2265726 () Unit!156088)

(assert (=> b!5650700 (= lt!2265726 (lemmaExistCutMatchRandMatchRSpecEquivalent!1368 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 s!2326))))

(assert (=> b!5650700 (= (isDefined!12351 (findConcatSeparation!2062 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 Nil!63094 s!2326 s!2326)) (Exists!2739 lambda!303948))))

(declare-fun lt!2265702 () Unit!156088)

(assert (=> b!5650700 (= lt!2265702 (lemmaFindConcatSeparationEquivalentToExists!1826 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 s!2326))))

(declare-fun lt!2265715 () Regex!15639)

(assert (=> b!5650700 (= lt!2265736 (matchRSpec!2742 lt!2265715 s!2326))))

(declare-fun lt!2265691 () Unit!156088)

(assert (=> b!5650700 (= lt!2265691 (mainMatchTheorem!2742 lt!2265715 s!2326))))

(assert (=> b!5650700 (= lt!2265703 lt!2265713)))

(assert (=> b!5650700 (= lt!2265713 (matchZipper!1777 lt!2265695 s!2326))))

(assert (=> b!5650700 (= lt!2265703 (matchR!7824 lt!2265690 s!2326))))

(declare-fun lt!2265688 () Unit!156088)

(declare-fun theoremZipperRegexEquiv!635 ((InoxSet Context!10046) List!63217 Regex!15639 List!63218) Unit!156088)

(assert (=> b!5650700 (= lt!2265688 (theoremZipperRegexEquiv!635 lt!2265695 (Cons!63093 lt!2265689 Nil!63093) lt!2265690 s!2326))))

(assert (=> b!5650700 (= lt!2265690 (generalisedConcat!1254 lt!2265733))))

(assert (=> b!5650700 (= lt!2265736 lt!2265712)))

(declare-fun lt!2265721 () (InoxSet Context!10046))

(assert (=> b!5650700 (= lt!2265712 (matchZipper!1777 lt!2265721 s!2326))))

(assert (=> b!5650700 (= lt!2265736 (matchR!7824 lt!2265715 s!2326))))

(declare-fun lt!2265693 () Unit!156088)

(assert (=> b!5650700 (= lt!2265693 (theoremZipperRegexEquiv!635 lt!2265721 lt!2265735 lt!2265715 s!2326))))

(declare-fun lt!2265716 () List!63216)

(assert (=> b!5650700 (= lt!2265715 (generalisedConcat!1254 lt!2265716))))

(declare-fun b!5650701 () Bool)

(declare-fun e!3480745 () Bool)

(declare-fun tp!1565728 () Bool)

(assert (=> b!5650701 (= e!3480745 tp!1565728)))

(declare-fun b!5650702 () Bool)

(declare-fun tp!1565731 () Bool)

(declare-fun tp!1565727 () Bool)

(assert (=> b!5650702 (= e!3480734 (and tp!1565731 tp!1565727))))

(declare-fun tp!1565730 () Bool)

(declare-fun b!5650703 () Bool)

(declare-fun inv!82344 (Context!10046) Bool)

(assert (=> b!5650703 (= e!3480746 (and (inv!82344 (h!69541 zl!343)) e!3480745 tp!1565730))))

(declare-fun b!5650704 () Bool)

(declare-fun e!3480729 () Bool)

(assert (=> b!5650704 (= e!3480729 (matchZipper!1777 lt!2265731 (t!376518 s!2326)))))

(declare-fun b!5650705 () Bool)

(declare-fun e!3480731 () Bool)

(assert (=> b!5650705 (= e!3480731 (not (matchZipper!1777 lt!2265731 (t!376518 s!2326))))))

(declare-fun b!5650706 () Bool)

(declare-fun res!2390509 () Bool)

(assert (=> b!5650706 (=> res!2390509 e!3480747)))

(declare-fun lt!2265699 () Context!10046)

(declare-fun contextDepthTotal!224 (Context!10046) Int)

(assert (=> b!5650706 (= res!2390509 (>= (contextDepthTotal!224 lt!2265699) (contextDepthTotal!224 (h!69541 zl!343))))))

(declare-fun tp!1565724 () Bool)

(declare-fun setElem!37754 () Context!10046)

(declare-fun setNonEmpty!37754 () Bool)

(assert (=> setNonEmpty!37754 (= setRes!37754 (and tp!1565724 (inv!82344 setElem!37754) e!3480738))))

(declare-fun setRest!37754 () (InoxSet Context!10046))

(assert (=> setNonEmpty!37754 (= z!1189 ((_ map or) (store ((as const (Array Context!10046 Bool)) false) setElem!37754 true) setRest!37754))))

(declare-fun b!5650707 () Bool)

(declare-fun res!2390511 () Bool)

(assert (=> b!5650707 (=> res!2390511 e!3480736)))

(declare-fun isEmpty!34933 (List!63216) Bool)

(assert (=> b!5650707 (= res!2390511 (isEmpty!34933 (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun b!5650708 () Bool)

(declare-fun res!2390490 () Bool)

(assert (=> b!5650708 (=> res!2390490 e!3480730)))

(assert (=> b!5650708 (= res!2390490 (not (= lt!2265732 (matchR!7824 (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292)) s!2326))))))

(declare-fun b!5650709 () Bool)

(declare-fun derivationStepZipper!1726 ((InoxSet Context!10046) C!31548) (InoxSet Context!10046))

(assert (=> b!5650709 (= e!3480739 (not (matchZipper!1777 (derivationStepZipper!1726 lt!2265695 (h!69542 s!2326)) (t!376518 s!2326))))))

(declare-fun b!5650710 () Bool)

(assert (=> b!5650710 (= e!3480733 (matchZipper!1777 lt!2265725 (t!376518 s!2326)))))

(declare-fun b!5650711 () Bool)

(declare-fun e!3480748 () Bool)

(assert (=> b!5650711 (= e!3480743 e!3480748)))

(declare-fun res!2390492 () Bool)

(assert (=> b!5650711 (=> res!2390492 e!3480748)))

(assert (=> b!5650711 (= res!2390492 e!3480731)))

(declare-fun res!2390513 () Bool)

(assert (=> b!5650711 (=> (not res!2390513) (not e!3480731))))

(assert (=> b!5650711 (= res!2390513 (not (= lt!2265698 lt!2265723)))))

(assert (=> b!5650711 (= lt!2265698 (matchZipper!1777 lt!2265719 (t!376518 s!2326)))))

(assert (=> b!5650711 (= (matchZipper!1777 lt!2265694 (t!376518 s!2326)) e!3480729)))

(declare-fun res!2390487 () Bool)

(assert (=> b!5650711 (=> res!2390487 e!3480729)))

(assert (=> b!5650711 (= res!2390487 lt!2265723)))

(assert (=> b!5650711 (= lt!2265723 (matchZipper!1777 lt!2265717 (t!376518 s!2326)))))

(declare-fun lt!2265705 () Unit!156088)

(assert (=> b!5650711 (= lt!2265705 (lemmaZipperConcatMatchesSameAsBothZippers!664 lt!2265717 lt!2265731 (t!376518 s!2326)))))

(declare-fun b!5650712 () Bool)

(assert (=> b!5650712 (= e!3480747 e!3480744)))

(declare-fun res!2390503 () Bool)

(assert (=> b!5650712 (=> res!2390503 e!3480744)))

(declare-fun zipperDepthTotal!248 (List!63217) Int)

(assert (=> b!5650712 (= res!2390503 (>= (zipperDepthTotal!248 lt!2265735) (zipperDepthTotal!248 zl!343)))))

(assert (=> b!5650712 (= lt!2265735 (Cons!63093 lt!2265699 Nil!63093))))

(declare-fun b!5650713 () Bool)

(assert (=> b!5650713 (= e!3480748 e!3480750)))

(declare-fun res!2390512 () Bool)

(assert (=> b!5650713 (=> res!2390512 e!3480750)))

(assert (=> b!5650713 (= res!2390512 (not (= lt!2265729 lt!2265724)))))

(assert (=> b!5650713 (= lt!2265724 ((_ map or) lt!2265717 lt!2265722))))

(assert (=> b!5650713 (= lt!2265722 (derivationStepZipperUp!907 lt!2265689 (h!69542 s!2326)))))

(assert (=> b!5650713 (= (flatMap!1252 lt!2265721 lambda!303947) (derivationStepZipperUp!907 lt!2265699 (h!69542 s!2326)))))

(declare-fun lt!2265727 () Unit!156088)

(assert (=> b!5650713 (= lt!2265727 (lemmaFlatMapOnSingletonSet!784 lt!2265721 lt!2265699 lambda!303947))))

(declare-fun lt!2265697 () (InoxSet Context!10046))

(assert (=> b!5650713 (= lt!2265697 (derivationStepZipperUp!907 lt!2265699 (h!69542 s!2326)))))

(assert (=> b!5650713 (= lt!2265729 (derivationStepZipper!1726 lt!2265721 (h!69542 s!2326)))))

(assert (=> b!5650713 (= lt!2265695 (store ((as const (Array Context!10046 Bool)) false) lt!2265689 true))))

(assert (=> b!5650713 (= lt!2265721 (store ((as const (Array Context!10046 Bool)) false) lt!2265699 true))))

(assert (=> b!5650713 (= lt!2265699 (Context!10047 lt!2265716))))

(assert (=> b!5650713 (= lt!2265716 (Cons!63092 (regOne!31790 (regOne!31790 r!7292)) lt!2265733))))

(declare-fun b!5650714 () Bool)

(declare-fun res!2390502 () Bool)

(assert (=> b!5650714 (=> res!2390502 e!3480749)))

(declare-fun isEmpty!34934 (List!63217) Bool)

(assert (=> b!5650714 (= res!2390502 (not (isEmpty!34934 (t!376517 zl!343))))))

(declare-fun setIsEmpty!37754 () Bool)

(assert (=> setIsEmpty!37754 setRes!37754))

(declare-fun b!5650715 () Bool)

(assert (=> b!5650715 (= e!3480742 (matchZipper!1777 lt!2265722 (t!376518 s!2326)))))

(assert (= (and start!584338 res!2390510) b!5650681))

(assert (= (and b!5650681 res!2390508) b!5650682))

(assert (= (and b!5650682 res!2390501) b!5650684))

(assert (= (and b!5650684 (not res!2390507)) b!5650714))

(assert (= (and b!5650714 (not res!2390502)) b!5650679))

(assert (= (and b!5650679 (not res!2390488)) b!5650691))

(assert (= (and b!5650691 (not res!2390504)) b!5650694))

(assert (= (and b!5650694 (not res!2390499)) b!5650686))

(assert (= (and b!5650686 (not res!2390489)) b!5650698))

(assert (= (and b!5650698 (not res!2390493)) b!5650707))

(assert (= (and b!5650707 (not res!2390511)) b!5650693))

(assert (= (and b!5650693 c!993108) b!5650688))

(assert (= (and b!5650693 (not c!993108)) b!5650680))

(assert (= (and b!5650688 (not res!2390514)) b!5650710))

(assert (= (and b!5650693 (not res!2390494)) b!5650678))

(assert (= (and b!5650678 (not res!2390496)) b!5650685))

(assert (= (and b!5650685 (not res!2390486)) b!5650711))

(assert (= (and b!5650711 (not res!2390487)) b!5650704))

(assert (= (and b!5650711 res!2390513) b!5650705))

(assert (= (and b!5650711 (not res!2390492)) b!5650713))

(assert (= (and b!5650713 (not res!2390512)) b!5650697))

(assert (= (and b!5650697 (not res!2390491)) b!5650715))

(assert (= (and b!5650697 res!2390505) b!5650709))

(assert (= (and b!5650697 (not res!2390500)) b!5650699))

(assert (= (and b!5650699 (not res!2390506)) b!5650706))

(assert (= (and b!5650706 (not res!2390509)) b!5650712))

(assert (= (and b!5650712 (not res!2390503)) b!5650683))

(assert (= (and b!5650683 (not res!2390495)) b!5650700))

(assert (= (and b!5650700 (not res!2390498)) b!5650708))

(assert (= (and b!5650708 (not res!2390490)) b!5650690))

(assert (= (and b!5650690 (not res!2390497)) b!5650687))

(assert (= (and start!584338 ((_ is ElementMatch!15639) r!7292)) b!5650677))

(assert (= (and start!584338 ((_ is Concat!24484) r!7292)) b!5650695))

(assert (= (and start!584338 ((_ is Star!15639) r!7292)) b!5650696))

(assert (= (and start!584338 ((_ is Union!15639) r!7292)) b!5650702))

(assert (= (and start!584338 condSetEmpty!37754) setIsEmpty!37754))

(assert (= (and start!584338 (not condSetEmpty!37754)) setNonEmpty!37754))

(assert (= setNonEmpty!37754 b!5650692))

(assert (= b!5650703 b!5650701))

(assert (= (and start!584338 ((_ is Cons!63093) zl!343)) b!5650703))

(assert (= (and start!584338 ((_ is Cons!63094) s!2326)) b!5650689))

(declare-fun m!6618046 () Bool)

(assert (=> b!5650684 m!6618046))

(declare-fun m!6618048 () Bool)

(assert (=> b!5650684 m!6618048))

(declare-fun m!6618050 () Bool)

(assert (=> b!5650684 m!6618050))

(declare-fun m!6618052 () Bool)

(assert (=> b!5650714 m!6618052))

(declare-fun m!6618054 () Bool)

(assert (=> b!5650709 m!6618054))

(assert (=> b!5650709 m!6618054))

(declare-fun m!6618056 () Bool)

(assert (=> b!5650709 m!6618056))

(declare-fun m!6618058 () Bool)

(assert (=> setNonEmpty!37754 m!6618058))

(declare-fun m!6618060 () Bool)

(assert (=> b!5650690 m!6618060))

(declare-fun m!6618062 () Bool)

(assert (=> b!5650682 m!6618062))

(declare-fun m!6618064 () Bool)

(assert (=> b!5650706 m!6618064))

(declare-fun m!6618066 () Bool)

(assert (=> b!5650706 m!6618066))

(declare-fun m!6618068 () Bool)

(assert (=> start!584338 m!6618068))

(declare-fun m!6618070 () Bool)

(assert (=> b!5650693 m!6618070))

(declare-fun m!6618072 () Bool)

(assert (=> b!5650693 m!6618072))

(declare-fun m!6618074 () Bool)

(assert (=> b!5650693 m!6618074))

(declare-fun m!6618076 () Bool)

(assert (=> b!5650693 m!6618076))

(declare-fun m!6618078 () Bool)

(assert (=> b!5650693 m!6618078))

(declare-fun m!6618080 () Bool)

(assert (=> b!5650693 m!6618080))

(declare-fun m!6618082 () Bool)

(assert (=> b!5650693 m!6618082))

(declare-fun m!6618084 () Bool)

(assert (=> b!5650678 m!6618084))

(declare-fun m!6618086 () Bool)

(assert (=> b!5650705 m!6618086))

(declare-fun m!6618088 () Bool)

(assert (=> b!5650700 m!6618088))

(declare-fun m!6618090 () Bool)

(assert (=> b!5650700 m!6618090))

(declare-fun m!6618092 () Bool)

(assert (=> b!5650700 m!6618092))

(declare-fun m!6618094 () Bool)

(assert (=> b!5650700 m!6618094))

(declare-fun m!6618096 () Bool)

(assert (=> b!5650700 m!6618096))

(declare-fun m!6618098 () Bool)

(assert (=> b!5650700 m!6618098))

(declare-fun m!6618100 () Bool)

(assert (=> b!5650700 m!6618100))

(declare-fun m!6618102 () Bool)

(assert (=> b!5650700 m!6618102))

(declare-fun m!6618104 () Bool)

(assert (=> b!5650700 m!6618104))

(declare-fun m!6618106 () Bool)

(assert (=> b!5650700 m!6618106))

(declare-fun m!6618108 () Bool)

(assert (=> b!5650700 m!6618108))

(declare-fun m!6618110 () Bool)

(assert (=> b!5650700 m!6618110))

(declare-fun m!6618112 () Bool)

(assert (=> b!5650700 m!6618112))

(declare-fun m!6618114 () Bool)

(assert (=> b!5650700 m!6618114))

(declare-fun m!6618116 () Bool)

(assert (=> b!5650700 m!6618116))

(declare-fun m!6618118 () Bool)

(assert (=> b!5650700 m!6618118))

(assert (=> b!5650700 m!6618112))

(declare-fun m!6618120 () Bool)

(assert (=> b!5650700 m!6618120))

(declare-fun m!6618122 () Bool)

(assert (=> b!5650700 m!6618122))

(declare-fun m!6618124 () Bool)

(assert (=> b!5650700 m!6618124))

(assert (=> b!5650700 m!6618098))

(declare-fun m!6618126 () Bool)

(assert (=> b!5650700 m!6618126))

(declare-fun m!6618128 () Bool)

(assert (=> b!5650700 m!6618128))

(declare-fun m!6618130 () Bool)

(assert (=> b!5650700 m!6618130))

(declare-fun m!6618132 () Bool)

(assert (=> b!5650700 m!6618132))

(assert (=> b!5650700 m!6618132))

(assert (=> b!5650700 m!6618118))

(declare-fun m!6618134 () Bool)

(assert (=> b!5650700 m!6618134))

(declare-fun m!6618136 () Bool)

(assert (=> b!5650700 m!6618136))

(declare-fun m!6618138 () Bool)

(assert (=> b!5650700 m!6618138))

(declare-fun m!6618140 () Bool)

(assert (=> b!5650694 m!6618140))

(assert (=> b!5650694 m!6618140))

(declare-fun m!6618142 () Bool)

(assert (=> b!5650694 m!6618142))

(declare-fun m!6618144 () Bool)

(assert (=> b!5650703 m!6618144))

(declare-fun m!6618146 () Bool)

(assert (=> b!5650685 m!6618146))

(declare-fun m!6618148 () Bool)

(assert (=> b!5650685 m!6618148))

(declare-fun m!6618150 () Bool)

(assert (=> b!5650698 m!6618150))

(declare-fun m!6618152 () Bool)

(assert (=> b!5650698 m!6618152))

(declare-fun m!6618154 () Bool)

(assert (=> b!5650698 m!6618154))

(declare-fun m!6618156 () Bool)

(assert (=> b!5650698 m!6618156))

(declare-fun m!6618158 () Bool)

(assert (=> b!5650698 m!6618158))

(assert (=> b!5650698 m!6618150))

(assert (=> b!5650698 m!6618156))

(declare-fun m!6618160 () Bool)

(assert (=> b!5650698 m!6618160))

(declare-fun m!6618162 () Bool)

(assert (=> b!5650707 m!6618162))

(declare-fun m!6618164 () Bool)

(assert (=> b!5650708 m!6618164))

(declare-fun m!6618166 () Bool)

(assert (=> b!5650679 m!6618166))

(declare-fun m!6618168 () Bool)

(assert (=> b!5650712 m!6618168))

(declare-fun m!6618170 () Bool)

(assert (=> b!5650712 m!6618170))

(declare-fun m!6618172 () Bool)

(assert (=> b!5650715 m!6618172))

(declare-fun m!6618174 () Bool)

(assert (=> b!5650710 m!6618174))

(declare-fun m!6618176 () Bool)

(assert (=> b!5650711 m!6618176))

(declare-fun m!6618178 () Bool)

(assert (=> b!5650711 m!6618178))

(declare-fun m!6618180 () Bool)

(assert (=> b!5650711 m!6618180))

(declare-fun m!6618182 () Bool)

(assert (=> b!5650711 m!6618182))

(declare-fun m!6618184 () Bool)

(assert (=> b!5650713 m!6618184))

(declare-fun m!6618186 () Bool)

(assert (=> b!5650713 m!6618186))

(declare-fun m!6618188 () Bool)

(assert (=> b!5650713 m!6618188))

(declare-fun m!6618190 () Bool)

(assert (=> b!5650713 m!6618190))

(declare-fun m!6618192 () Bool)

(assert (=> b!5650713 m!6618192))

(declare-fun m!6618194 () Bool)

(assert (=> b!5650713 m!6618194))

(declare-fun m!6618196 () Bool)

(assert (=> b!5650713 m!6618196))

(assert (=> b!5650704 m!6618086))

(declare-fun m!6618198 () Bool)

(assert (=> b!5650697 m!6618198))

(declare-fun m!6618200 () Bool)

(assert (=> b!5650697 m!6618200))

(declare-fun m!6618202 () Bool)

(assert (=> b!5650697 m!6618202))

(declare-fun m!6618204 () Bool)

(assert (=> b!5650697 m!6618204))

(assert (=> b!5650697 m!6618186))

(declare-fun m!6618206 () Bool)

(assert (=> b!5650697 m!6618206))

(declare-fun m!6618208 () Bool)

(assert (=> b!5650683 m!6618208))

(declare-fun m!6618210 () Bool)

(assert (=> b!5650683 m!6618210))

(declare-fun m!6618212 () Bool)

(assert (=> b!5650688 m!6618212))

(assert (=> b!5650688 m!6618176))

(declare-fun m!6618214 () Bool)

(assert (=> b!5650688 m!6618214))

(declare-fun m!6618216 () Bool)

(assert (=> b!5650681 m!6618216))

(declare-fun m!6618218 () Bool)

(assert (=> b!5650687 m!6618218))

(check-sat (not b!5650710) (not b!5650690) (not b!5650684) (not b!5650705) (not b!5650693) (not b!5650687) (not b!5650709) (not b!5650704) (not b!5650708) (not b!5650712) (not b!5650695) (not b!5650692) (not b!5650711) (not b!5650688) (not b!5650706) (not start!584338) (not b!5650685) (not b!5650682) (not b!5650714) (not b!5650678) (not b!5650697) (not b!5650696) (not b!5650703) (not b!5650700) (not b!5650701) (not b!5650681) (not b!5650683) (not b!5650715) (not b!5650698) (not b!5650707) (not b!5650713) (not b!5650694) tp_is_empty!40531 (not b!5650702) (not setNonEmpty!37754) (not b!5650679) (not b!5650689))
(check-sat)
(get-model)

(declare-fun d!1784853 () Bool)

(declare-fun c!993112 () Bool)

(declare-fun isEmpty!34935 (List!63218) Bool)

(assert (=> d!1784853 (= c!993112 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3480753 () Bool)

(assert (=> d!1784853 (= (matchZipper!1777 lt!2265725 (t!376518 s!2326)) e!3480753)))

(declare-fun b!5650726 () Bool)

(declare-fun nullableZipper!1614 ((InoxSet Context!10046)) Bool)

(assert (=> b!5650726 (= e!3480753 (nullableZipper!1614 lt!2265725))))

(declare-fun b!5650727 () Bool)

(declare-fun head!12008 (List!63218) C!31548)

(declare-fun tail!11103 (List!63218) List!63218)

(assert (=> b!5650727 (= e!3480753 (matchZipper!1777 (derivationStepZipper!1726 lt!2265725 (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1784853 c!993112) b!5650726))

(assert (= (and d!1784853 (not c!993112)) b!5650727))

(declare-fun m!6618220 () Bool)

(assert (=> d!1784853 m!6618220))

(declare-fun m!6618222 () Bool)

(assert (=> b!5650726 m!6618222))

(declare-fun m!6618224 () Bool)

(assert (=> b!5650727 m!6618224))

(assert (=> b!5650727 m!6618224))

(declare-fun m!6618226 () Bool)

(assert (=> b!5650727 m!6618226))

(declare-fun m!6618228 () Bool)

(assert (=> b!5650727 m!6618228))

(assert (=> b!5650727 m!6618226))

(assert (=> b!5650727 m!6618228))

(declare-fun m!6618230 () Bool)

(assert (=> b!5650727 m!6618230))

(assert (=> b!5650710 d!1784853))

(declare-fun d!1784855 () Bool)

(declare-fun c!993113 () Bool)

(assert (=> d!1784855 (= c!993113 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3480754 () Bool)

(assert (=> d!1784855 (= (matchZipper!1777 (derivationStepZipper!1726 lt!2265695 (h!69542 s!2326)) (t!376518 s!2326)) e!3480754)))

(declare-fun b!5650728 () Bool)

(assert (=> b!5650728 (= e!3480754 (nullableZipper!1614 (derivationStepZipper!1726 lt!2265695 (h!69542 s!2326))))))

(declare-fun b!5650729 () Bool)

(assert (=> b!5650729 (= e!3480754 (matchZipper!1777 (derivationStepZipper!1726 (derivationStepZipper!1726 lt!2265695 (h!69542 s!2326)) (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1784855 c!993113) b!5650728))

(assert (= (and d!1784855 (not c!993113)) b!5650729))

(assert (=> d!1784855 m!6618220))

(assert (=> b!5650728 m!6618054))

(declare-fun m!6618232 () Bool)

(assert (=> b!5650728 m!6618232))

(assert (=> b!5650729 m!6618224))

(assert (=> b!5650729 m!6618054))

(assert (=> b!5650729 m!6618224))

(declare-fun m!6618234 () Bool)

(assert (=> b!5650729 m!6618234))

(assert (=> b!5650729 m!6618228))

(assert (=> b!5650729 m!6618234))

(assert (=> b!5650729 m!6618228))

(declare-fun m!6618236 () Bool)

(assert (=> b!5650729 m!6618236))

(assert (=> b!5650709 d!1784855))

(declare-fun bs!1314426 () Bool)

(declare-fun d!1784857 () Bool)

(assert (= bs!1314426 (and d!1784857 b!5650693)))

(declare-fun lambda!303954 () Int)

(assert (=> bs!1314426 (= lambda!303954 lambda!303947)))

(assert (=> d!1784857 true))

(assert (=> d!1784857 (= (derivationStepZipper!1726 lt!2265695 (h!69542 s!2326)) (flatMap!1252 lt!2265695 lambda!303954))))

(declare-fun bs!1314427 () Bool)

(assert (= bs!1314427 d!1784857))

(declare-fun m!6618238 () Bool)

(assert (=> bs!1314427 m!6618238))

(assert (=> b!5650709 d!1784857))

(declare-fun d!1784859 () Bool)

(declare-fun res!2390525 () Bool)

(declare-fun e!3480774 () Bool)

(assert (=> d!1784859 (=> res!2390525 e!3480774)))

(assert (=> d!1784859 (= res!2390525 ((_ is ElementMatch!15639) r!7292))))

(assert (=> d!1784859 (= (validRegex!7375 r!7292) e!3480774)))

(declare-fun b!5650750 () Bool)

(declare-fun e!3480770 () Bool)

(declare-fun e!3480769 () Bool)

(assert (=> b!5650750 (= e!3480770 e!3480769)))

(declare-fun c!993120 () Bool)

(assert (=> b!5650750 (= c!993120 ((_ is Union!15639) r!7292))))

(declare-fun b!5650751 () Bool)

(assert (=> b!5650751 (= e!3480774 e!3480770)))

(declare-fun c!993121 () Bool)

(assert (=> b!5650751 (= c!993121 ((_ is Star!15639) r!7292))))

(declare-fun b!5650752 () Bool)

(declare-fun res!2390529 () Bool)

(declare-fun e!3480773 () Bool)

(assert (=> b!5650752 (=> res!2390529 e!3480773)))

(assert (=> b!5650752 (= res!2390529 (not ((_ is Concat!24484) r!7292)))))

(assert (=> b!5650752 (= e!3480769 e!3480773)))

(declare-fun b!5650753 () Bool)

(declare-fun res!2390526 () Bool)

(declare-fun e!3480771 () Bool)

(assert (=> b!5650753 (=> (not res!2390526) (not e!3480771))))

(declare-fun call!427396 () Bool)

(assert (=> b!5650753 (= res!2390526 call!427396)))

(assert (=> b!5650753 (= e!3480769 e!3480771)))

(declare-fun b!5650754 () Bool)

(declare-fun call!427395 () Bool)

(assert (=> b!5650754 (= e!3480771 call!427395)))

(declare-fun b!5650755 () Bool)

(declare-fun e!3480772 () Bool)

(declare-fun call!427394 () Bool)

(assert (=> b!5650755 (= e!3480772 call!427394)))

(declare-fun b!5650756 () Bool)

(declare-fun e!3480775 () Bool)

(assert (=> b!5650756 (= e!3480773 e!3480775)))

(declare-fun res!2390527 () Bool)

(assert (=> b!5650756 (=> (not res!2390527) (not e!3480775))))

(assert (=> b!5650756 (= res!2390527 call!427396)))

(declare-fun bm!427389 () Bool)

(assert (=> bm!427389 (= call!427396 call!427394)))

(declare-fun bm!427390 () Bool)

(assert (=> bm!427390 (= call!427395 (validRegex!7375 (ite c!993120 (regTwo!31791 r!7292) (regTwo!31790 r!7292))))))

(declare-fun bm!427391 () Bool)

(assert (=> bm!427391 (= call!427394 (validRegex!7375 (ite c!993121 (reg!15968 r!7292) (ite c!993120 (regOne!31791 r!7292) (regOne!31790 r!7292)))))))

(declare-fun b!5650757 () Bool)

(assert (=> b!5650757 (= e!3480775 call!427395)))

(declare-fun b!5650758 () Bool)

(assert (=> b!5650758 (= e!3480770 e!3480772)))

(declare-fun res!2390528 () Bool)

(assert (=> b!5650758 (= res!2390528 (not (nullable!5671 (reg!15968 r!7292))))))

(assert (=> b!5650758 (=> (not res!2390528) (not e!3480772))))

(assert (= (and d!1784859 (not res!2390525)) b!5650751))

(assert (= (and b!5650751 c!993121) b!5650758))

(assert (= (and b!5650751 (not c!993121)) b!5650750))

(assert (= (and b!5650758 res!2390528) b!5650755))

(assert (= (and b!5650750 c!993120) b!5650753))

(assert (= (and b!5650750 (not c!993120)) b!5650752))

(assert (= (and b!5650753 res!2390526) b!5650754))

(assert (= (and b!5650752 (not res!2390529)) b!5650756))

(assert (= (and b!5650756 res!2390527) b!5650757))

(assert (= (or b!5650754 b!5650757) bm!427390))

(assert (= (or b!5650753 b!5650756) bm!427389))

(assert (= (or b!5650755 bm!427389) bm!427391))

(declare-fun m!6618240 () Bool)

(assert (=> bm!427390 m!6618240))

(declare-fun m!6618242 () Bool)

(assert (=> bm!427391 m!6618242))

(declare-fun m!6618244 () Bool)

(assert (=> b!5650758 m!6618244))

(assert (=> start!584338 d!1784859))

(declare-fun e!3480790 () Bool)

(declare-fun d!1784863 () Bool)

(assert (=> d!1784863 (= (matchZipper!1777 ((_ map or) lt!2265719 lt!2265725) (t!376518 s!2326)) e!3480790)))

(declare-fun res!2390534 () Bool)

(assert (=> d!1784863 (=> res!2390534 e!3480790)))

(assert (=> d!1784863 (= res!2390534 (matchZipper!1777 lt!2265719 (t!376518 s!2326)))))

(declare-fun lt!2265739 () Unit!156088)

(declare-fun choose!42770 ((InoxSet Context!10046) (InoxSet Context!10046) List!63218) Unit!156088)

(assert (=> d!1784863 (= lt!2265739 (choose!42770 lt!2265719 lt!2265725 (t!376518 s!2326)))))

(assert (=> d!1784863 (= (lemmaZipperConcatMatchesSameAsBothZippers!664 lt!2265719 lt!2265725 (t!376518 s!2326)) lt!2265739)))

(declare-fun b!5650783 () Bool)

(assert (=> b!5650783 (= e!3480790 (matchZipper!1777 lt!2265725 (t!376518 s!2326)))))

(assert (= (and d!1784863 (not res!2390534)) b!5650783))

(assert (=> d!1784863 m!6618214))

(assert (=> d!1784863 m!6618176))

(declare-fun m!6618246 () Bool)

(assert (=> d!1784863 m!6618246))

(assert (=> b!5650783 m!6618174))

(assert (=> b!5650688 d!1784863))

(declare-fun d!1784865 () Bool)

(declare-fun c!993137 () Bool)

(assert (=> d!1784865 (= c!993137 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3480797 () Bool)

(assert (=> d!1784865 (= (matchZipper!1777 lt!2265719 (t!376518 s!2326)) e!3480797)))

(declare-fun b!5650795 () Bool)

(assert (=> b!5650795 (= e!3480797 (nullableZipper!1614 lt!2265719))))

(declare-fun b!5650796 () Bool)

(assert (=> b!5650796 (= e!3480797 (matchZipper!1777 (derivationStepZipper!1726 lt!2265719 (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1784865 c!993137) b!5650795))

(assert (= (and d!1784865 (not c!993137)) b!5650796))

(assert (=> d!1784865 m!6618220))

(declare-fun m!6618248 () Bool)

(assert (=> b!5650795 m!6618248))

(assert (=> b!5650796 m!6618224))

(assert (=> b!5650796 m!6618224))

(declare-fun m!6618250 () Bool)

(assert (=> b!5650796 m!6618250))

(assert (=> b!5650796 m!6618228))

(assert (=> b!5650796 m!6618250))

(assert (=> b!5650796 m!6618228))

(declare-fun m!6618252 () Bool)

(assert (=> b!5650796 m!6618252))

(assert (=> b!5650688 d!1784865))

(declare-fun d!1784867 () Bool)

(declare-fun c!993138 () Bool)

(assert (=> d!1784867 (= c!993138 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3480798 () Bool)

(assert (=> d!1784867 (= (matchZipper!1777 ((_ map or) lt!2265719 lt!2265725) (t!376518 s!2326)) e!3480798)))

(declare-fun b!5650797 () Bool)

(assert (=> b!5650797 (= e!3480798 (nullableZipper!1614 ((_ map or) lt!2265719 lt!2265725)))))

(declare-fun b!5650798 () Bool)

(assert (=> b!5650798 (= e!3480798 (matchZipper!1777 (derivationStepZipper!1726 ((_ map or) lt!2265719 lt!2265725) (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1784867 c!993138) b!5650797))

(assert (= (and d!1784867 (not c!993138)) b!5650798))

(assert (=> d!1784867 m!6618220))

(declare-fun m!6618264 () Bool)

(assert (=> b!5650797 m!6618264))

(assert (=> b!5650798 m!6618224))

(assert (=> b!5650798 m!6618224))

(declare-fun m!6618266 () Bool)

(assert (=> b!5650798 m!6618266))

(assert (=> b!5650798 m!6618228))

(assert (=> b!5650798 m!6618266))

(assert (=> b!5650798 m!6618228))

(declare-fun m!6618268 () Bool)

(assert (=> b!5650798 m!6618268))

(assert (=> b!5650688 d!1784867))

(declare-fun b!5650881 () Bool)

(declare-fun e!3480851 () Bool)

(declare-fun e!3480849 () Bool)

(assert (=> b!5650881 (= e!3480851 e!3480849)))

(declare-fun res!2390564 () Bool)

(assert (=> b!5650881 (=> res!2390564 e!3480849)))

(declare-fun call!427434 () Bool)

(assert (=> b!5650881 (= res!2390564 call!427434)))

(declare-fun b!5650882 () Bool)

(declare-fun e!3480848 () Bool)

(declare-fun lt!2265748 () Bool)

(assert (=> b!5650882 (= e!3480848 (= lt!2265748 call!427434))))

(declare-fun b!5650883 () Bool)

(declare-fun e!3480847 () Bool)

(assert (=> b!5650883 (= e!3480848 e!3480847)))

(declare-fun c!993168 () Bool)

(assert (=> b!5650883 (= c!993168 ((_ is EmptyLang!15639) (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292))))))

(declare-fun b!5650884 () Bool)

(declare-fun res!2390563 () Bool)

(declare-fun e!3480846 () Bool)

(assert (=> b!5650884 (=> (not res!2390563) (not e!3480846))))

(assert (=> b!5650884 (= res!2390563 (not call!427434))))

(declare-fun b!5650885 () Bool)

(assert (=> b!5650885 (= e!3480849 (not (= (head!12008 s!2326) (c!993109 (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292))))))))

(declare-fun b!5650887 () Bool)

(declare-fun res!2390567 () Bool)

(declare-fun e!3480845 () Bool)

(assert (=> b!5650887 (=> res!2390567 e!3480845)))

(assert (=> b!5650887 (= res!2390567 e!3480846)))

(declare-fun res!2390568 () Bool)

(assert (=> b!5650887 (=> (not res!2390568) (not e!3480846))))

(assert (=> b!5650887 (= res!2390568 lt!2265748)))

(declare-fun b!5650888 () Bool)

(declare-fun e!3480850 () Bool)

(assert (=> b!5650888 (= e!3480850 (nullable!5671 (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292))))))

(declare-fun b!5650889 () Bool)

(declare-fun res!2390565 () Bool)

(assert (=> b!5650889 (=> res!2390565 e!3480849)))

(assert (=> b!5650889 (= res!2390565 (not (isEmpty!34935 (tail!11103 s!2326))))))

(declare-fun b!5650890 () Bool)

(declare-fun derivativeStep!4468 (Regex!15639 C!31548) Regex!15639)

(assert (=> b!5650890 (= e!3480850 (matchR!7824 (derivativeStep!4468 (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292)) (head!12008 s!2326)) (tail!11103 s!2326)))))

(declare-fun b!5650891 () Bool)

(assert (=> b!5650891 (= e!3480845 e!3480851)))

(declare-fun res!2390569 () Bool)

(assert (=> b!5650891 (=> (not res!2390569) (not e!3480851))))

(assert (=> b!5650891 (= res!2390569 (not lt!2265748))))

(declare-fun b!5650892 () Bool)

(assert (=> b!5650892 (= e!3480846 (= (head!12008 s!2326) (c!993109 (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292)))))))

(declare-fun b!5650886 () Bool)

(declare-fun res!2390566 () Bool)

(assert (=> b!5650886 (=> (not res!2390566) (not e!3480846))))

(assert (=> b!5650886 (= res!2390566 (isEmpty!34935 (tail!11103 s!2326)))))

(declare-fun d!1784871 () Bool)

(assert (=> d!1784871 e!3480848))

(declare-fun c!993169 () Bool)

(assert (=> d!1784871 (= c!993169 ((_ is EmptyExpr!15639) (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292))))))

(assert (=> d!1784871 (= lt!2265748 e!3480850)))

(declare-fun c!993167 () Bool)

(assert (=> d!1784871 (= c!993167 (isEmpty!34935 s!2326))))

(assert (=> d!1784871 (validRegex!7375 (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292)))))

(assert (=> d!1784871 (= (matchR!7824 (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292)) s!2326) lt!2265748)))

(declare-fun bm!427429 () Bool)

(assert (=> bm!427429 (= call!427434 (isEmpty!34935 s!2326))))

(declare-fun b!5650893 () Bool)

(declare-fun res!2390562 () Bool)

(assert (=> b!5650893 (=> res!2390562 e!3480845)))

(assert (=> b!5650893 (= res!2390562 (not ((_ is ElementMatch!15639) (Concat!24484 (regOne!31790 r!7292) (regTwo!31790 r!7292)))))))

(assert (=> b!5650893 (= e!3480847 e!3480845)))

(declare-fun b!5650894 () Bool)

(assert (=> b!5650894 (= e!3480847 (not lt!2265748))))

(assert (= (and d!1784871 c!993167) b!5650888))

(assert (= (and d!1784871 (not c!993167)) b!5650890))

(assert (= (and d!1784871 c!993169) b!5650882))

(assert (= (and d!1784871 (not c!993169)) b!5650883))

(assert (= (and b!5650883 c!993168) b!5650894))

(assert (= (and b!5650883 (not c!993168)) b!5650893))

(assert (= (and b!5650893 (not res!2390562)) b!5650887))

(assert (= (and b!5650887 res!2390568) b!5650884))

(assert (= (and b!5650884 res!2390563) b!5650886))

(assert (= (and b!5650886 res!2390566) b!5650892))

(assert (= (and b!5650887 (not res!2390567)) b!5650891))

(assert (= (and b!5650891 res!2390569) b!5650881))

(assert (= (and b!5650881 (not res!2390564)) b!5650889))

(assert (= (and b!5650889 (not res!2390565)) b!5650885))

(assert (= (or b!5650882 b!5650881 b!5650884) bm!427429))

(declare-fun m!6618334 () Bool)

(assert (=> d!1784871 m!6618334))

(declare-fun m!6618336 () Bool)

(assert (=> d!1784871 m!6618336))

(declare-fun m!6618338 () Bool)

(assert (=> b!5650890 m!6618338))

(assert (=> b!5650890 m!6618338))

(declare-fun m!6618340 () Bool)

(assert (=> b!5650890 m!6618340))

(declare-fun m!6618342 () Bool)

(assert (=> b!5650890 m!6618342))

(assert (=> b!5650890 m!6618340))

(assert (=> b!5650890 m!6618342))

(declare-fun m!6618344 () Bool)

(assert (=> b!5650890 m!6618344))

(assert (=> b!5650892 m!6618338))

(declare-fun m!6618346 () Bool)

(assert (=> b!5650888 m!6618346))

(assert (=> b!5650885 m!6618338))

(assert (=> b!5650886 m!6618342))

(assert (=> b!5650886 m!6618342))

(declare-fun m!6618348 () Bool)

(assert (=> b!5650886 m!6618348))

(assert (=> bm!427429 m!6618334))

(assert (=> b!5650889 m!6618342))

(assert (=> b!5650889 m!6618342))

(assert (=> b!5650889 m!6618348))

(assert (=> b!5650708 d!1784871))

(declare-fun d!1784899 () Bool)

(assert (=> d!1784899 (= (isEmpty!34933 (t!376516 (exprs!5523 (h!69541 zl!343)))) ((_ is Nil!63092) (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(assert (=> b!5650707 d!1784899))

(declare-fun b!5650899 () Bool)

(declare-fun e!3480860 () Bool)

(declare-fun e!3480858 () Bool)

(assert (=> b!5650899 (= e!3480860 e!3480858)))

(declare-fun res!2390572 () Bool)

(assert (=> b!5650899 (=> res!2390572 e!3480858)))

(declare-fun call!427435 () Bool)

(assert (=> b!5650899 (= res!2390572 call!427435)))

(declare-fun b!5650900 () Bool)

(declare-fun e!3480857 () Bool)

(declare-fun lt!2265749 () Bool)

(assert (=> b!5650900 (= e!3480857 (= lt!2265749 call!427435))))

(declare-fun b!5650901 () Bool)

(declare-fun e!3480856 () Bool)

(assert (=> b!5650901 (= e!3480857 e!3480856)))

(declare-fun c!993173 () Bool)

(assert (=> b!5650901 (= c!993173 ((_ is EmptyLang!15639) (Concat!24484 lt!2265696 lt!2265692)))))

(declare-fun b!5650902 () Bool)

(declare-fun res!2390571 () Bool)

(declare-fun e!3480855 () Bool)

(assert (=> b!5650902 (=> (not res!2390571) (not e!3480855))))

(assert (=> b!5650902 (= res!2390571 (not call!427435))))

(declare-fun b!5650903 () Bool)

(assert (=> b!5650903 (= e!3480858 (not (= (head!12008 s!2326) (c!993109 (Concat!24484 lt!2265696 lt!2265692)))))))

(declare-fun b!5650905 () Bool)

(declare-fun res!2390575 () Bool)

(declare-fun e!3480854 () Bool)

(assert (=> b!5650905 (=> res!2390575 e!3480854)))

(assert (=> b!5650905 (= res!2390575 e!3480855)))

(declare-fun res!2390576 () Bool)

(assert (=> b!5650905 (=> (not res!2390576) (not e!3480855))))

(assert (=> b!5650905 (= res!2390576 lt!2265749)))

(declare-fun b!5650906 () Bool)

(declare-fun e!3480859 () Bool)

(assert (=> b!5650906 (= e!3480859 (nullable!5671 (Concat!24484 lt!2265696 lt!2265692)))))

(declare-fun b!5650907 () Bool)

(declare-fun res!2390573 () Bool)

(assert (=> b!5650907 (=> res!2390573 e!3480858)))

(assert (=> b!5650907 (= res!2390573 (not (isEmpty!34935 (tail!11103 s!2326))))))

(declare-fun b!5650908 () Bool)

(assert (=> b!5650908 (= e!3480859 (matchR!7824 (derivativeStep!4468 (Concat!24484 lt!2265696 lt!2265692) (head!12008 s!2326)) (tail!11103 s!2326)))))

(declare-fun b!5650909 () Bool)

(assert (=> b!5650909 (= e!3480854 e!3480860)))

(declare-fun res!2390577 () Bool)

(assert (=> b!5650909 (=> (not res!2390577) (not e!3480860))))

(assert (=> b!5650909 (= res!2390577 (not lt!2265749))))

(declare-fun b!5650910 () Bool)

(assert (=> b!5650910 (= e!3480855 (= (head!12008 s!2326) (c!993109 (Concat!24484 lt!2265696 lt!2265692))))))

(declare-fun b!5650904 () Bool)

(declare-fun res!2390574 () Bool)

(assert (=> b!5650904 (=> (not res!2390574) (not e!3480855))))

(assert (=> b!5650904 (= res!2390574 (isEmpty!34935 (tail!11103 s!2326)))))

(declare-fun d!1784901 () Bool)

(assert (=> d!1784901 e!3480857))

(declare-fun c!993174 () Bool)

(assert (=> d!1784901 (= c!993174 ((_ is EmptyExpr!15639) (Concat!24484 lt!2265696 lt!2265692)))))

(assert (=> d!1784901 (= lt!2265749 e!3480859)))

(declare-fun c!993172 () Bool)

(assert (=> d!1784901 (= c!993172 (isEmpty!34935 s!2326))))

(assert (=> d!1784901 (validRegex!7375 (Concat!24484 lt!2265696 lt!2265692))))

(assert (=> d!1784901 (= (matchR!7824 (Concat!24484 lt!2265696 lt!2265692) s!2326) lt!2265749)))

(declare-fun bm!427430 () Bool)

(assert (=> bm!427430 (= call!427435 (isEmpty!34935 s!2326))))

(declare-fun b!5650911 () Bool)

(declare-fun res!2390570 () Bool)

(assert (=> b!5650911 (=> res!2390570 e!3480854)))

(assert (=> b!5650911 (= res!2390570 (not ((_ is ElementMatch!15639) (Concat!24484 lt!2265696 lt!2265692))))))

(assert (=> b!5650911 (= e!3480856 e!3480854)))

(declare-fun b!5650912 () Bool)

(assert (=> b!5650912 (= e!3480856 (not lt!2265749))))

(assert (= (and d!1784901 c!993172) b!5650906))

(assert (= (and d!1784901 (not c!993172)) b!5650908))

(assert (= (and d!1784901 c!993174) b!5650900))

(assert (= (and d!1784901 (not c!993174)) b!5650901))

(assert (= (and b!5650901 c!993173) b!5650912))

(assert (= (and b!5650901 (not c!993173)) b!5650911))

(assert (= (and b!5650911 (not res!2390570)) b!5650905))

(assert (= (and b!5650905 res!2390576) b!5650902))

(assert (= (and b!5650902 res!2390571) b!5650904))

(assert (= (and b!5650904 res!2390574) b!5650910))

(assert (= (and b!5650905 (not res!2390575)) b!5650909))

(assert (= (and b!5650909 res!2390577) b!5650899))

(assert (= (and b!5650899 (not res!2390572)) b!5650907))

(assert (= (and b!5650907 (not res!2390573)) b!5650903))

(assert (= (or b!5650900 b!5650899 b!5650902) bm!427430))

(assert (=> d!1784901 m!6618334))

(declare-fun m!6618350 () Bool)

(assert (=> d!1784901 m!6618350))

(assert (=> b!5650908 m!6618338))

(assert (=> b!5650908 m!6618338))

(declare-fun m!6618352 () Bool)

(assert (=> b!5650908 m!6618352))

(assert (=> b!5650908 m!6618342))

(assert (=> b!5650908 m!6618352))

(assert (=> b!5650908 m!6618342))

(declare-fun m!6618354 () Bool)

(assert (=> b!5650908 m!6618354))

(assert (=> b!5650910 m!6618338))

(declare-fun m!6618356 () Bool)

(assert (=> b!5650906 m!6618356))

(assert (=> b!5650903 m!6618338))

(assert (=> b!5650904 m!6618342))

(assert (=> b!5650904 m!6618342))

(assert (=> b!5650904 m!6618348))

(assert (=> bm!427430 m!6618334))

(assert (=> b!5650907 m!6618342))

(assert (=> b!5650907 m!6618342))

(assert (=> b!5650907 m!6618348))

(assert (=> b!5650687 d!1784901))

(declare-fun d!1784903 () Bool)

(declare-fun lambda!303970 () Int)

(declare-fun forall!14791 (List!63216 Int) Bool)

(assert (=> d!1784903 (= (inv!82344 setElem!37754) (forall!14791 (exprs!5523 setElem!37754) lambda!303970))))

(declare-fun bs!1314442 () Bool)

(assert (= bs!1314442 d!1784903))

(declare-fun m!6618398 () Bool)

(assert (=> bs!1314442 m!6618398))

(assert (=> setNonEmpty!37754 d!1784903))

(declare-fun d!1784915 () Bool)

(declare-fun lt!2265766 () Int)

(assert (=> d!1784915 (>= lt!2265766 0)))

(declare-fun e!3480936 () Int)

(assert (=> d!1784915 (= lt!2265766 e!3480936)))

(declare-fun c!993220 () Bool)

(assert (=> d!1784915 (= c!993220 ((_ is Cons!63092) (exprs!5523 lt!2265699)))))

(assert (=> d!1784915 (= (contextDepthTotal!224 lt!2265699) lt!2265766)))

(declare-fun b!5651049 () Bool)

(declare-fun regexDepthTotal!96 (Regex!15639) Int)

(assert (=> b!5651049 (= e!3480936 (+ (regexDepthTotal!96 (h!69540 (exprs!5523 lt!2265699))) (contextDepthTotal!224 (Context!10047 (t!376516 (exprs!5523 lt!2265699))))))))

(declare-fun b!5651050 () Bool)

(assert (=> b!5651050 (= e!3480936 1)))

(assert (= (and d!1784915 c!993220) b!5651049))

(assert (= (and d!1784915 (not c!993220)) b!5651050))

(declare-fun m!6618436 () Bool)

(assert (=> b!5651049 m!6618436))

(declare-fun m!6618438 () Bool)

(assert (=> b!5651049 m!6618438))

(assert (=> b!5650706 d!1784915))

(declare-fun d!1784931 () Bool)

(declare-fun lt!2265767 () Int)

(assert (=> d!1784931 (>= lt!2265767 0)))

(declare-fun e!3480937 () Int)

(assert (=> d!1784931 (= lt!2265767 e!3480937)))

(declare-fun c!993221 () Bool)

(assert (=> d!1784931 (= c!993221 ((_ is Cons!63092) (exprs!5523 (h!69541 zl!343))))))

(assert (=> d!1784931 (= (contextDepthTotal!224 (h!69541 zl!343)) lt!2265767)))

(declare-fun b!5651051 () Bool)

(assert (=> b!5651051 (= e!3480937 (+ (regexDepthTotal!96 (h!69540 (exprs!5523 (h!69541 zl!343)))) (contextDepthTotal!224 (Context!10047 (t!376516 (exprs!5523 (h!69541 zl!343)))))))))

(declare-fun b!5651052 () Bool)

(assert (=> b!5651052 (= e!3480937 1)))

(assert (= (and d!1784931 c!993221) b!5651051))

(assert (= (and d!1784931 (not c!993221)) b!5651052))

(declare-fun m!6618440 () Bool)

(assert (=> b!5651051 m!6618440))

(declare-fun m!6618442 () Bool)

(assert (=> b!5651051 m!6618442))

(assert (=> b!5650706 d!1784931))

(declare-fun b!5651112 () Bool)

(declare-fun e!3480981 () (InoxSet Context!10046))

(assert (=> b!5651112 (= e!3480981 ((as const (Array Context!10046 Bool)) false))))

(declare-fun c!993243 () Bool)

(declare-fun call!427467 () List!63216)

(declare-fun c!993247 () Bool)

(declare-fun c!993246 () Bool)

(declare-fun bm!427461 () Bool)

(declare-fun call!427468 () (InoxSet Context!10046))

(assert (=> bm!427461 (= call!427468 (derivationStepZipperDown!981 (ite c!993247 (regOne!31791 (regTwo!31790 (regOne!31790 r!7292))) (ite c!993246 (regTwo!31790 (regTwo!31790 (regOne!31790 r!7292))) (ite c!993243 (regOne!31790 (regTwo!31790 (regOne!31790 r!7292))) (reg!15968 (regTwo!31790 (regOne!31790 r!7292)))))) (ite (or c!993247 c!993246) lt!2265730 (Context!10047 call!427467)) (h!69542 s!2326)))))

(declare-fun b!5651113 () Bool)

(declare-fun e!3480977 () (InoxSet Context!10046))

(declare-fun e!3480979 () (InoxSet Context!10046))

(assert (=> b!5651113 (= e!3480977 e!3480979)))

(assert (=> b!5651113 (= c!993247 ((_ is Union!15639) (regTwo!31790 (regOne!31790 r!7292))))))

(declare-fun d!1784933 () Bool)

(declare-fun c!993244 () Bool)

(assert (=> d!1784933 (= c!993244 (and ((_ is ElementMatch!15639) (regTwo!31790 (regOne!31790 r!7292))) (= (c!993109 (regTwo!31790 (regOne!31790 r!7292))) (h!69542 s!2326))))))

(assert (=> d!1784933 (= (derivationStepZipperDown!981 (regTwo!31790 (regOne!31790 r!7292)) lt!2265730 (h!69542 s!2326)) e!3480977)))

(declare-fun bm!427462 () Bool)

(declare-fun call!427470 () (InoxSet Context!10046))

(declare-fun call!427466 () (InoxSet Context!10046))

(assert (=> bm!427462 (= call!427470 call!427466)))

(declare-fun bm!427463 () Bool)

(declare-fun call!427469 () List!63216)

(assert (=> bm!427463 (= call!427467 call!427469)))

(declare-fun b!5651114 () Bool)

(assert (=> b!5651114 (= e!3480981 call!427470)))

(declare-fun bm!427464 () Bool)

(assert (=> bm!427464 (= call!427466 call!427468)))

(declare-fun b!5651115 () Bool)

(declare-fun e!3480978 () Bool)

(assert (=> b!5651115 (= e!3480978 (nullable!5671 (regOne!31790 (regTwo!31790 (regOne!31790 r!7292)))))))

(declare-fun b!5651116 () Bool)

(declare-fun c!993245 () Bool)

(assert (=> b!5651116 (= c!993245 ((_ is Star!15639) (regTwo!31790 (regOne!31790 r!7292))))))

(declare-fun e!3480976 () (InoxSet Context!10046))

(assert (=> b!5651116 (= e!3480976 e!3480981)))

(declare-fun b!5651117 () Bool)

(declare-fun e!3480980 () (InoxSet Context!10046))

(assert (=> b!5651117 (= e!3480980 e!3480976)))

(assert (=> b!5651117 (= c!993243 ((_ is Concat!24484) (regTwo!31790 (regOne!31790 r!7292))))))

(declare-fun b!5651118 () Bool)

(assert (=> b!5651118 (= c!993246 e!3480978)))

(declare-fun res!2390645 () Bool)

(assert (=> b!5651118 (=> (not res!2390645) (not e!3480978))))

(assert (=> b!5651118 (= res!2390645 ((_ is Concat!24484) (regTwo!31790 (regOne!31790 r!7292))))))

(assert (=> b!5651118 (= e!3480979 e!3480980)))

(declare-fun b!5651119 () Bool)

(assert (=> b!5651119 (= e!3480977 (store ((as const (Array Context!10046 Bool)) false) lt!2265730 true))))

(declare-fun b!5651120 () Bool)

(assert (=> b!5651120 (= e!3480976 call!427470)))

(declare-fun bm!427465 () Bool)

(declare-fun call!427471 () (InoxSet Context!10046))

(assert (=> bm!427465 (= call!427471 (derivationStepZipperDown!981 (ite c!993247 (regTwo!31791 (regTwo!31790 (regOne!31790 r!7292))) (regOne!31790 (regTwo!31790 (regOne!31790 r!7292)))) (ite c!993247 lt!2265730 (Context!10047 call!427469)) (h!69542 s!2326)))))

(declare-fun b!5651121 () Bool)

(assert (=> b!5651121 (= e!3480979 ((_ map or) call!427468 call!427471))))

(declare-fun b!5651122 () Bool)

(assert (=> b!5651122 (= e!3480980 ((_ map or) call!427471 call!427466))))

(declare-fun bm!427466 () Bool)

(declare-fun $colon$colon!1683 (List!63216 Regex!15639) List!63216)

(assert (=> bm!427466 (= call!427469 ($colon$colon!1683 (exprs!5523 lt!2265730) (ite (or c!993246 c!993243) (regTwo!31790 (regTwo!31790 (regOne!31790 r!7292))) (regTwo!31790 (regOne!31790 r!7292)))))))

(assert (= (and d!1784933 c!993244) b!5651119))

(assert (= (and d!1784933 (not c!993244)) b!5651113))

(assert (= (and b!5651113 c!993247) b!5651121))

(assert (= (and b!5651113 (not c!993247)) b!5651118))

(assert (= (and b!5651118 res!2390645) b!5651115))

(assert (= (and b!5651118 c!993246) b!5651122))

(assert (= (and b!5651118 (not c!993246)) b!5651117))

(assert (= (and b!5651117 c!993243) b!5651120))

(assert (= (and b!5651117 (not c!993243)) b!5651116))

(assert (= (and b!5651116 c!993245) b!5651114))

(assert (= (and b!5651116 (not c!993245)) b!5651112))

(assert (= (or b!5651120 b!5651114) bm!427463))

(assert (= (or b!5651120 b!5651114) bm!427462))

(assert (= (or b!5651122 bm!427463) bm!427466))

(assert (= (or b!5651122 bm!427462) bm!427464))

(assert (= (or b!5651121 b!5651122) bm!427465))

(assert (= (or b!5651121 bm!427464) bm!427461))

(declare-fun m!6618462 () Bool)

(assert (=> b!5651115 m!6618462))

(declare-fun m!6618464 () Bool)

(assert (=> bm!427465 m!6618464))

(declare-fun m!6618466 () Bool)

(assert (=> bm!427461 m!6618466))

(declare-fun m!6618468 () Bool)

(assert (=> bm!427466 m!6618468))

(declare-fun m!6618470 () Bool)

(assert (=> b!5651119 m!6618470))

(assert (=> b!5650685 d!1784933))

(declare-fun b!5651123 () Bool)

(declare-fun e!3480987 () (InoxSet Context!10046))

(assert (=> b!5651123 (= e!3480987 ((as const (Array Context!10046 Bool)) false))))

(declare-fun c!993248 () Bool)

(declare-fun call!427474 () (InoxSet Context!10046))

(declare-fun call!427473 () List!63216)

(declare-fun bm!427467 () Bool)

(declare-fun c!993251 () Bool)

(declare-fun c!993252 () Bool)

(assert (=> bm!427467 (= call!427474 (derivationStepZipperDown!981 (ite c!993252 (regOne!31791 (regOne!31790 (regOne!31790 r!7292))) (ite c!993251 (regTwo!31790 (regOne!31790 (regOne!31790 r!7292))) (ite c!993248 (regOne!31790 (regOne!31790 (regOne!31790 r!7292))) (reg!15968 (regOne!31790 (regOne!31790 r!7292)))))) (ite (or c!993252 c!993251) lt!2265689 (Context!10047 call!427473)) (h!69542 s!2326)))))

(declare-fun b!5651124 () Bool)

(declare-fun e!3480983 () (InoxSet Context!10046))

(declare-fun e!3480985 () (InoxSet Context!10046))

(assert (=> b!5651124 (= e!3480983 e!3480985)))

(assert (=> b!5651124 (= c!993252 ((_ is Union!15639) (regOne!31790 (regOne!31790 r!7292))))))

(declare-fun d!1784945 () Bool)

(declare-fun c!993249 () Bool)

(assert (=> d!1784945 (= c!993249 (and ((_ is ElementMatch!15639) (regOne!31790 (regOne!31790 r!7292))) (= (c!993109 (regOne!31790 (regOne!31790 r!7292))) (h!69542 s!2326))))))

(assert (=> d!1784945 (= (derivationStepZipperDown!981 (regOne!31790 (regOne!31790 r!7292)) lt!2265689 (h!69542 s!2326)) e!3480983)))

(declare-fun bm!427468 () Bool)

(declare-fun call!427476 () (InoxSet Context!10046))

(declare-fun call!427472 () (InoxSet Context!10046))

(assert (=> bm!427468 (= call!427476 call!427472)))

(declare-fun bm!427469 () Bool)

(declare-fun call!427475 () List!63216)

(assert (=> bm!427469 (= call!427473 call!427475)))

(declare-fun b!5651125 () Bool)

(assert (=> b!5651125 (= e!3480987 call!427476)))

(declare-fun bm!427470 () Bool)

(assert (=> bm!427470 (= call!427472 call!427474)))

(declare-fun b!5651126 () Bool)

(declare-fun e!3480984 () Bool)

(assert (=> b!5651126 (= e!3480984 (nullable!5671 (regOne!31790 (regOne!31790 (regOne!31790 r!7292)))))))

(declare-fun b!5651127 () Bool)

(declare-fun c!993250 () Bool)

(assert (=> b!5651127 (= c!993250 ((_ is Star!15639) (regOne!31790 (regOne!31790 r!7292))))))

(declare-fun e!3480982 () (InoxSet Context!10046))

(assert (=> b!5651127 (= e!3480982 e!3480987)))

(declare-fun b!5651128 () Bool)

(declare-fun e!3480986 () (InoxSet Context!10046))

(assert (=> b!5651128 (= e!3480986 e!3480982)))

(assert (=> b!5651128 (= c!993248 ((_ is Concat!24484) (regOne!31790 (regOne!31790 r!7292))))))

(declare-fun b!5651129 () Bool)

(assert (=> b!5651129 (= c!993251 e!3480984)))

(declare-fun res!2390646 () Bool)

(assert (=> b!5651129 (=> (not res!2390646) (not e!3480984))))

(assert (=> b!5651129 (= res!2390646 ((_ is Concat!24484) (regOne!31790 (regOne!31790 r!7292))))))

(assert (=> b!5651129 (= e!3480985 e!3480986)))

(declare-fun b!5651130 () Bool)

(assert (=> b!5651130 (= e!3480983 (store ((as const (Array Context!10046 Bool)) false) lt!2265689 true))))

(declare-fun b!5651131 () Bool)

(assert (=> b!5651131 (= e!3480982 call!427476)))

(declare-fun bm!427471 () Bool)

(declare-fun call!427477 () (InoxSet Context!10046))

(assert (=> bm!427471 (= call!427477 (derivationStepZipperDown!981 (ite c!993252 (regTwo!31791 (regOne!31790 (regOne!31790 r!7292))) (regOne!31790 (regOne!31790 (regOne!31790 r!7292)))) (ite c!993252 lt!2265689 (Context!10047 call!427475)) (h!69542 s!2326)))))

(declare-fun b!5651132 () Bool)

(assert (=> b!5651132 (= e!3480985 ((_ map or) call!427474 call!427477))))

(declare-fun b!5651133 () Bool)

(assert (=> b!5651133 (= e!3480986 ((_ map or) call!427477 call!427472))))

(declare-fun bm!427472 () Bool)

(assert (=> bm!427472 (= call!427475 ($colon$colon!1683 (exprs!5523 lt!2265689) (ite (or c!993251 c!993248) (regTwo!31790 (regOne!31790 (regOne!31790 r!7292))) (regOne!31790 (regOne!31790 r!7292)))))))

(assert (= (and d!1784945 c!993249) b!5651130))

(assert (= (and d!1784945 (not c!993249)) b!5651124))

(assert (= (and b!5651124 c!993252) b!5651132))

(assert (= (and b!5651124 (not c!993252)) b!5651129))

(assert (= (and b!5651129 res!2390646) b!5651126))

(assert (= (and b!5651129 c!993251) b!5651133))

(assert (= (and b!5651129 (not c!993251)) b!5651128))

(assert (= (and b!5651128 c!993248) b!5651131))

(assert (= (and b!5651128 (not c!993248)) b!5651127))

(assert (= (and b!5651127 c!993250) b!5651125))

(assert (= (and b!5651127 (not c!993250)) b!5651123))

(assert (= (or b!5651131 b!5651125) bm!427469))

(assert (= (or b!5651131 b!5651125) bm!427468))

(assert (= (or b!5651133 bm!427469) bm!427472))

(assert (= (or b!5651133 bm!427468) bm!427470))

(assert (= (or b!5651132 b!5651133) bm!427471))

(assert (= (or b!5651132 bm!427470) bm!427467))

(declare-fun m!6618472 () Bool)

(assert (=> b!5651126 m!6618472))

(declare-fun m!6618474 () Bool)

(assert (=> bm!427471 m!6618474))

(declare-fun m!6618476 () Bool)

(assert (=> bm!427467 m!6618476))

(declare-fun m!6618478 () Bool)

(assert (=> bm!427472 m!6618478))

(assert (=> b!5651130 m!6618184))

(assert (=> b!5650685 d!1784945))

(declare-fun bs!1314444 () Bool)

(declare-fun b!5651202 () Bool)

(assert (= bs!1314444 (and b!5651202 b!5650700)))

(declare-fun lambda!303975 () Int)

(assert (=> bs!1314444 (not (= lambda!303975 lambda!303950))))

(assert (=> bs!1314444 (not (= lambda!303975 lambda!303949))))

(declare-fun bs!1314445 () Bool)

(assert (= bs!1314445 (and b!5651202 b!5650698)))

(assert (=> bs!1314445 (not (= lambda!303975 lambda!303945))))

(assert (=> bs!1314444 (not (= lambda!303975 lambda!303951))))

(assert (=> bs!1314445 (not (= lambda!303975 lambda!303946))))

(assert (=> bs!1314444 (not (= lambda!303975 lambda!303948))))

(assert (=> b!5651202 true))

(assert (=> b!5651202 true))

(declare-fun bs!1314446 () Bool)

(declare-fun b!5651203 () Bool)

(assert (= bs!1314446 (and b!5651203 b!5650700)))

(declare-fun lambda!303978 () Int)

(assert (=> bs!1314446 (not (= lambda!303978 lambda!303950))))

(assert (=> bs!1314446 (= (and (= (regOne!31790 r!7292) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265690)) (= lambda!303978 lambda!303949))))

(declare-fun bs!1314447 () Bool)

(assert (= bs!1314447 (and b!5651203 b!5651202)))

(assert (=> bs!1314447 (not (= lambda!303978 lambda!303975))))

(declare-fun bs!1314448 () Bool)

(assert (= bs!1314448 (and b!5651203 b!5650698)))

(assert (=> bs!1314448 (not (= lambda!303978 lambda!303945))))

(assert (=> bs!1314446 (= (and (= (regOne!31790 r!7292) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265692)) (= lambda!303978 lambda!303951))))

(assert (=> bs!1314448 (= lambda!303978 lambda!303946)))

(assert (=> bs!1314446 (not (= lambda!303978 lambda!303948))))

(assert (=> b!5651203 true))

(assert (=> b!5651203 true))

(declare-fun b!5651193 () Bool)

(declare-fun c!993267 () Bool)

(assert (=> b!5651193 (= c!993267 ((_ is ElementMatch!15639) r!7292))))

(declare-fun e!3481021 () Bool)

(declare-fun e!3481026 () Bool)

(assert (=> b!5651193 (= e!3481021 e!3481026)))

(declare-fun b!5651194 () Bool)

(declare-fun e!3481024 () Bool)

(declare-fun e!3481022 () Bool)

(assert (=> b!5651194 (= e!3481024 e!3481022)))

(declare-fun res!2390679 () Bool)

(assert (=> b!5651194 (= res!2390679 (matchRSpec!2742 (regOne!31791 r!7292) s!2326))))

(assert (=> b!5651194 (=> res!2390679 e!3481022)))

(declare-fun b!5651195 () Bool)

(declare-fun c!993269 () Bool)

(assert (=> b!5651195 (= c!993269 ((_ is Union!15639) r!7292))))

(assert (=> b!5651195 (= e!3481026 e!3481024)))

(declare-fun bm!427477 () Bool)

(declare-fun c!993270 () Bool)

(declare-fun call!427483 () Bool)

(assert (=> bm!427477 (= call!427483 (Exists!2739 (ite c!993270 lambda!303975 lambda!303978)))))

(declare-fun b!5651196 () Bool)

(declare-fun e!3481025 () Bool)

(assert (=> b!5651196 (= e!3481025 e!3481021)))

(declare-fun res!2390680 () Bool)

(assert (=> b!5651196 (= res!2390680 (not ((_ is EmptyLang!15639) r!7292)))))

(assert (=> b!5651196 (=> (not res!2390680) (not e!3481021))))

(declare-fun b!5651198 () Bool)

(assert (=> b!5651198 (= e!3481026 (= s!2326 (Cons!63094 (c!993109 r!7292) Nil!63094)))))

(declare-fun b!5651199 () Bool)

(assert (=> b!5651199 (= e!3481022 (matchRSpec!2742 (regTwo!31791 r!7292) s!2326))))

(declare-fun b!5651200 () Bool)

(declare-fun call!427482 () Bool)

(assert (=> b!5651200 (= e!3481025 call!427482)))

(declare-fun b!5651197 () Bool)

(declare-fun e!3481023 () Bool)

(assert (=> b!5651197 (= e!3481024 e!3481023)))

(assert (=> b!5651197 (= c!993270 ((_ is Star!15639) r!7292))))

(declare-fun d!1784947 () Bool)

(declare-fun c!993268 () Bool)

(assert (=> d!1784947 (= c!993268 ((_ is EmptyExpr!15639) r!7292))))

(assert (=> d!1784947 (= (matchRSpec!2742 r!7292 s!2326) e!3481025)))

(declare-fun bm!427478 () Bool)

(assert (=> bm!427478 (= call!427482 (isEmpty!34935 s!2326))))

(declare-fun b!5651201 () Bool)

(declare-fun res!2390678 () Bool)

(declare-fun e!3481027 () Bool)

(assert (=> b!5651201 (=> res!2390678 e!3481027)))

(assert (=> b!5651201 (= res!2390678 call!427482)))

(assert (=> b!5651201 (= e!3481023 e!3481027)))

(assert (=> b!5651202 (= e!3481027 call!427483)))

(assert (=> b!5651203 (= e!3481023 call!427483)))

(assert (= (and d!1784947 c!993268) b!5651200))

(assert (= (and d!1784947 (not c!993268)) b!5651196))

(assert (= (and b!5651196 res!2390680) b!5651193))

(assert (= (and b!5651193 c!993267) b!5651198))

(assert (= (and b!5651193 (not c!993267)) b!5651195))

(assert (= (and b!5651195 c!993269) b!5651194))

(assert (= (and b!5651195 (not c!993269)) b!5651197))

(assert (= (and b!5651194 (not res!2390679)) b!5651199))

(assert (= (and b!5651197 c!993270) b!5651201))

(assert (= (and b!5651197 (not c!993270)) b!5651203))

(assert (= (and b!5651201 (not res!2390678)) b!5651202))

(assert (= (or b!5651202 b!5651203) bm!427477))

(assert (= (or b!5651200 b!5651201) bm!427478))

(declare-fun m!6618506 () Bool)

(assert (=> b!5651194 m!6618506))

(declare-fun m!6618508 () Bool)

(assert (=> bm!427477 m!6618508))

(declare-fun m!6618510 () Bool)

(assert (=> b!5651199 m!6618510))

(assert (=> bm!427478 m!6618334))

(assert (=> b!5650684 d!1784947))

(declare-fun b!5651212 () Bool)

(declare-fun e!3481038 () Bool)

(declare-fun e!3481036 () Bool)

(assert (=> b!5651212 (= e!3481038 e!3481036)))

(declare-fun res!2390691 () Bool)

(assert (=> b!5651212 (=> res!2390691 e!3481036)))

(declare-fun call!427484 () Bool)

(assert (=> b!5651212 (= res!2390691 call!427484)))

(declare-fun b!5651213 () Bool)

(declare-fun e!3481035 () Bool)

(declare-fun lt!2265783 () Bool)

(assert (=> b!5651213 (= e!3481035 (= lt!2265783 call!427484))))

(declare-fun b!5651214 () Bool)

(declare-fun e!3481034 () Bool)

(assert (=> b!5651214 (= e!3481035 e!3481034)))

(declare-fun c!993272 () Bool)

(assert (=> b!5651214 (= c!993272 ((_ is EmptyLang!15639) r!7292))))

(declare-fun b!5651215 () Bool)

(declare-fun res!2390690 () Bool)

(declare-fun e!3481033 () Bool)

(assert (=> b!5651215 (=> (not res!2390690) (not e!3481033))))

(assert (=> b!5651215 (= res!2390690 (not call!427484))))

(declare-fun b!5651216 () Bool)

(assert (=> b!5651216 (= e!3481036 (not (= (head!12008 s!2326) (c!993109 r!7292))))))

(declare-fun b!5651218 () Bool)

(declare-fun res!2390694 () Bool)

(declare-fun e!3481032 () Bool)

(assert (=> b!5651218 (=> res!2390694 e!3481032)))

(assert (=> b!5651218 (= res!2390694 e!3481033)))

(declare-fun res!2390695 () Bool)

(assert (=> b!5651218 (=> (not res!2390695) (not e!3481033))))

(assert (=> b!5651218 (= res!2390695 lt!2265783)))

(declare-fun b!5651219 () Bool)

(declare-fun e!3481037 () Bool)

(assert (=> b!5651219 (= e!3481037 (nullable!5671 r!7292))))

(declare-fun b!5651220 () Bool)

(declare-fun res!2390692 () Bool)

(assert (=> b!5651220 (=> res!2390692 e!3481036)))

(assert (=> b!5651220 (= res!2390692 (not (isEmpty!34935 (tail!11103 s!2326))))))

(declare-fun b!5651221 () Bool)

(assert (=> b!5651221 (= e!3481037 (matchR!7824 (derivativeStep!4468 r!7292 (head!12008 s!2326)) (tail!11103 s!2326)))))

(declare-fun b!5651222 () Bool)

(assert (=> b!5651222 (= e!3481032 e!3481038)))

(declare-fun res!2390696 () Bool)

(assert (=> b!5651222 (=> (not res!2390696) (not e!3481038))))

(assert (=> b!5651222 (= res!2390696 (not lt!2265783))))

(declare-fun b!5651223 () Bool)

(assert (=> b!5651223 (= e!3481033 (= (head!12008 s!2326) (c!993109 r!7292)))))

(declare-fun b!5651217 () Bool)

(declare-fun res!2390693 () Bool)

(assert (=> b!5651217 (=> (not res!2390693) (not e!3481033))))

(assert (=> b!5651217 (= res!2390693 (isEmpty!34935 (tail!11103 s!2326)))))

(declare-fun d!1784953 () Bool)

(assert (=> d!1784953 e!3481035))

(declare-fun c!993273 () Bool)

(assert (=> d!1784953 (= c!993273 ((_ is EmptyExpr!15639) r!7292))))

(assert (=> d!1784953 (= lt!2265783 e!3481037)))

(declare-fun c!993271 () Bool)

(assert (=> d!1784953 (= c!993271 (isEmpty!34935 s!2326))))

(assert (=> d!1784953 (validRegex!7375 r!7292)))

(assert (=> d!1784953 (= (matchR!7824 r!7292 s!2326) lt!2265783)))

(declare-fun bm!427479 () Bool)

(assert (=> bm!427479 (= call!427484 (isEmpty!34935 s!2326))))

(declare-fun b!5651224 () Bool)

(declare-fun res!2390689 () Bool)

(assert (=> b!5651224 (=> res!2390689 e!3481032)))

(assert (=> b!5651224 (= res!2390689 (not ((_ is ElementMatch!15639) r!7292)))))

(assert (=> b!5651224 (= e!3481034 e!3481032)))

(declare-fun b!5651225 () Bool)

(assert (=> b!5651225 (= e!3481034 (not lt!2265783))))

(assert (= (and d!1784953 c!993271) b!5651219))

(assert (= (and d!1784953 (not c!993271)) b!5651221))

(assert (= (and d!1784953 c!993273) b!5651213))

(assert (= (and d!1784953 (not c!993273)) b!5651214))

(assert (= (and b!5651214 c!993272) b!5651225))

(assert (= (and b!5651214 (not c!993272)) b!5651224))

(assert (= (and b!5651224 (not res!2390689)) b!5651218))

(assert (= (and b!5651218 res!2390695) b!5651215))

(assert (= (and b!5651215 res!2390690) b!5651217))

(assert (= (and b!5651217 res!2390693) b!5651223))

(assert (= (and b!5651218 (not res!2390694)) b!5651222))

(assert (= (and b!5651222 res!2390696) b!5651212))

(assert (= (and b!5651212 (not res!2390691)) b!5651220))

(assert (= (and b!5651220 (not res!2390692)) b!5651216))

(assert (= (or b!5651213 b!5651212 b!5651215) bm!427479))

(assert (=> d!1784953 m!6618334))

(assert (=> d!1784953 m!6618068))

(assert (=> b!5651221 m!6618338))

(assert (=> b!5651221 m!6618338))

(declare-fun m!6618512 () Bool)

(assert (=> b!5651221 m!6618512))

(assert (=> b!5651221 m!6618342))

(assert (=> b!5651221 m!6618512))

(assert (=> b!5651221 m!6618342))

(declare-fun m!6618514 () Bool)

(assert (=> b!5651221 m!6618514))

(assert (=> b!5651223 m!6618338))

(declare-fun m!6618516 () Bool)

(assert (=> b!5651219 m!6618516))

(assert (=> b!5651216 m!6618338))

(assert (=> b!5651217 m!6618342))

(assert (=> b!5651217 m!6618342))

(assert (=> b!5651217 m!6618348))

(assert (=> bm!427479 m!6618334))

(assert (=> b!5651220 m!6618342))

(assert (=> b!5651220 m!6618342))

(assert (=> b!5651220 m!6618348))

(assert (=> b!5650684 d!1784953))

(declare-fun d!1784955 () Bool)

(assert (=> d!1784955 (= (matchR!7824 r!7292 s!2326) (matchRSpec!2742 r!7292 s!2326))))

(declare-fun lt!2265787 () Unit!156088)

(declare-fun choose!42773 (Regex!15639 List!63218) Unit!156088)

(assert (=> d!1784955 (= lt!2265787 (choose!42773 r!7292 s!2326))))

(assert (=> d!1784955 (validRegex!7375 r!7292)))

(assert (=> d!1784955 (= (mainMatchTheorem!2742 r!7292 s!2326) lt!2265787)))

(declare-fun bs!1314454 () Bool)

(assert (= bs!1314454 d!1784955))

(assert (=> bs!1314454 m!6618048))

(assert (=> bs!1314454 m!6618046))

(declare-fun m!6618524 () Bool)

(assert (=> bs!1314454 m!6618524))

(assert (=> bs!1314454 m!6618068))

(assert (=> b!5650684 d!1784955))

(declare-fun d!1784959 () Bool)

(declare-fun c!993274 () Bool)

(assert (=> d!1784959 (= c!993274 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3481039 () Bool)

(assert (=> d!1784959 (= (matchZipper!1777 lt!2265731 (t!376518 s!2326)) e!3481039)))

(declare-fun b!5651226 () Bool)

(assert (=> b!5651226 (= e!3481039 (nullableZipper!1614 lt!2265731))))

(declare-fun b!5651227 () Bool)

(assert (=> b!5651227 (= e!3481039 (matchZipper!1777 (derivationStepZipper!1726 lt!2265731 (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1784959 c!993274) b!5651226))

(assert (= (and d!1784959 (not c!993274)) b!5651227))

(assert (=> d!1784959 m!6618220))

(declare-fun m!6618528 () Bool)

(assert (=> b!5651226 m!6618528))

(assert (=> b!5651227 m!6618224))

(assert (=> b!5651227 m!6618224))

(declare-fun m!6618530 () Bool)

(assert (=> b!5651227 m!6618530))

(assert (=> b!5651227 m!6618228))

(assert (=> b!5651227 m!6618530))

(assert (=> b!5651227 m!6618228))

(declare-fun m!6618532 () Bool)

(assert (=> b!5651227 m!6618532))

(assert (=> b!5650705 d!1784959))

(assert (=> b!5650704 d!1784959))

(declare-fun b!5651240 () Bool)

(assert (=> b!5651240 true))

(declare-fun bs!1314463 () Bool)

(declare-fun b!5651242 () Bool)

(assert (= bs!1314463 (and b!5651242 b!5651240)))

(declare-fun lambda!303993 () Int)

(declare-fun lt!2265800 () Int)

(declare-fun lambda!303994 () Int)

(declare-fun lt!2265801 () Int)

(assert (=> bs!1314463 (= (= lt!2265801 lt!2265800) (= lambda!303994 lambda!303993))))

(assert (=> b!5651242 true))

(declare-fun d!1784963 () Bool)

(declare-fun e!3481048 () Bool)

(assert (=> d!1784963 e!3481048))

(declare-fun res!2390703 () Bool)

(assert (=> d!1784963 (=> (not res!2390703) (not e!3481048))))

(assert (=> d!1784963 (= res!2390703 (>= lt!2265801 0))))

(declare-fun e!3481047 () Int)

(assert (=> d!1784963 (= lt!2265801 e!3481047)))

(declare-fun c!993284 () Bool)

(assert (=> d!1784963 (= c!993284 ((_ is Cons!63093) lt!2265735))))

(assert (=> d!1784963 (= (zipperDepth!216 lt!2265735) lt!2265801)))

(assert (=> b!5651240 (= e!3481047 lt!2265800)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!120 (Context!10046) Int)

(assert (=> b!5651240 (= lt!2265800 (maxBigInt!0 (contextDepth!120 (h!69541 lt!2265735)) (zipperDepth!216 (t!376517 lt!2265735))))))

(declare-fun lambda!303992 () Int)

(declare-fun lt!2265802 () Unit!156088)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!110 (List!63217 Int Int Int) Unit!156088)

(assert (=> b!5651240 (= lt!2265802 (lemmaForallContextDepthBiggerThanTransitive!110 (t!376517 lt!2265735) lt!2265800 (zipperDepth!216 (t!376517 lt!2265735)) lambda!303992))))

(declare-fun forall!14792 (List!63217 Int) Bool)

(assert (=> b!5651240 (forall!14792 (t!376517 lt!2265735) lambda!303993)))

(declare-fun lt!2265799 () Unit!156088)

(assert (=> b!5651240 (= lt!2265799 lt!2265802)))

(declare-fun b!5651241 () Bool)

(assert (=> b!5651241 (= e!3481047 0)))

(assert (=> b!5651242 (= e!3481048 (forall!14792 lt!2265735 lambda!303994))))

(assert (= (and d!1784963 c!993284) b!5651240))

(assert (= (and d!1784963 (not c!993284)) b!5651241))

(assert (= (and d!1784963 res!2390703) b!5651242))

(declare-fun m!6618546 () Bool)

(assert (=> b!5651240 m!6618546))

(declare-fun m!6618548 () Bool)

(assert (=> b!5651240 m!6618548))

(declare-fun m!6618550 () Bool)

(assert (=> b!5651240 m!6618550))

(declare-fun m!6618552 () Bool)

(assert (=> b!5651240 m!6618552))

(assert (=> b!5651240 m!6618548))

(declare-fun m!6618554 () Bool)

(assert (=> b!5651240 m!6618554))

(assert (=> b!5651240 m!6618548))

(assert (=> b!5651240 m!6618546))

(declare-fun m!6618556 () Bool)

(assert (=> b!5651242 m!6618556))

(assert (=> b!5650683 d!1784963))

(declare-fun bs!1314464 () Bool)

(declare-fun b!5651245 () Bool)

(assert (= bs!1314464 (and b!5651245 b!5651240)))

(declare-fun lambda!303997 () Int)

(assert (=> bs!1314464 (= lambda!303997 lambda!303992)))

(declare-fun lambda!303998 () Int)

(declare-fun lt!2265804 () Int)

(assert (=> bs!1314464 (= (= lt!2265804 lt!2265800) (= lambda!303998 lambda!303993))))

(declare-fun bs!1314465 () Bool)

(assert (= bs!1314465 (and b!5651245 b!5651242)))

(assert (=> bs!1314465 (= (= lt!2265804 lt!2265801) (= lambda!303998 lambda!303994))))

(assert (=> b!5651245 true))

(declare-fun bs!1314468 () Bool)

(declare-fun b!5651247 () Bool)

(assert (= bs!1314468 (and b!5651247 b!5651240)))

(declare-fun lambda!304000 () Int)

(declare-fun lt!2265805 () Int)

(assert (=> bs!1314468 (= (= lt!2265805 lt!2265800) (= lambda!304000 lambda!303993))))

(declare-fun bs!1314469 () Bool)

(assert (= bs!1314469 (and b!5651247 b!5651242)))

(assert (=> bs!1314469 (= (= lt!2265805 lt!2265801) (= lambda!304000 lambda!303994))))

(declare-fun bs!1314470 () Bool)

(assert (= bs!1314470 (and b!5651247 b!5651245)))

(assert (=> bs!1314470 (= (= lt!2265805 lt!2265804) (= lambda!304000 lambda!303998))))

(assert (=> b!5651247 true))

(declare-fun d!1784971 () Bool)

(declare-fun e!3481050 () Bool)

(assert (=> d!1784971 e!3481050))

(declare-fun res!2390704 () Bool)

(assert (=> d!1784971 (=> (not res!2390704) (not e!3481050))))

(assert (=> d!1784971 (= res!2390704 (>= lt!2265805 0))))

(declare-fun e!3481049 () Int)

(assert (=> d!1784971 (= lt!2265805 e!3481049)))

(declare-fun c!993287 () Bool)

(assert (=> d!1784971 (= c!993287 ((_ is Cons!63093) zl!343))))

(assert (=> d!1784971 (= (zipperDepth!216 zl!343) lt!2265805)))

(assert (=> b!5651245 (= e!3481049 lt!2265804)))

(assert (=> b!5651245 (= lt!2265804 (maxBigInt!0 (contextDepth!120 (h!69541 zl!343)) (zipperDepth!216 (t!376517 zl!343))))))

(declare-fun lt!2265806 () Unit!156088)

(assert (=> b!5651245 (= lt!2265806 (lemmaForallContextDepthBiggerThanTransitive!110 (t!376517 zl!343) lt!2265804 (zipperDepth!216 (t!376517 zl!343)) lambda!303997))))

(assert (=> b!5651245 (forall!14792 (t!376517 zl!343) lambda!303998)))

(declare-fun lt!2265803 () Unit!156088)

(assert (=> b!5651245 (= lt!2265803 lt!2265806)))

(declare-fun b!5651246 () Bool)

(assert (=> b!5651246 (= e!3481049 0)))

(assert (=> b!5651247 (= e!3481050 (forall!14792 zl!343 lambda!304000))))

(assert (= (and d!1784971 c!993287) b!5651245))

(assert (= (and d!1784971 (not c!993287)) b!5651246))

(assert (= (and d!1784971 res!2390704) b!5651247))

(declare-fun m!6618560 () Bool)

(assert (=> b!5651245 m!6618560))

(declare-fun m!6618562 () Bool)

(assert (=> b!5651245 m!6618562))

(declare-fun m!6618564 () Bool)

(assert (=> b!5651245 m!6618564))

(declare-fun m!6618566 () Bool)

(assert (=> b!5651245 m!6618566))

(assert (=> b!5651245 m!6618562))

(declare-fun m!6618568 () Bool)

(assert (=> b!5651245 m!6618568))

(assert (=> b!5651245 m!6618562))

(assert (=> b!5651245 m!6618560))

(declare-fun m!6618570 () Bool)

(assert (=> b!5651247 m!6618570))

(assert (=> b!5650683 d!1784971))

(declare-fun d!1784975 () Bool)

(declare-fun lt!2265813 () Regex!15639)

(assert (=> d!1784975 (validRegex!7375 lt!2265813)))

(assert (=> d!1784975 (= lt!2265813 (generalisedUnion!1502 (unfocusZipperList!1067 zl!343)))))

(assert (=> d!1784975 (= (unfocusZipper!1381 zl!343) lt!2265813)))

(declare-fun bs!1314471 () Bool)

(assert (= bs!1314471 d!1784975))

(declare-fun m!6618578 () Bool)

(assert (=> bs!1314471 m!6618578))

(assert (=> bs!1314471 m!6618140))

(assert (=> bs!1314471 m!6618140))

(assert (=> bs!1314471 m!6618142))

(assert (=> b!5650682 d!1784975))

(declare-fun bs!1314472 () Bool)

(declare-fun d!1784979 () Bool)

(assert (= bs!1314472 (and d!1784979 d!1784903)))

(declare-fun lambda!304001 () Int)

(assert (=> bs!1314472 (= lambda!304001 lambda!303970)))

(assert (=> d!1784979 (= (inv!82344 (h!69541 zl!343)) (forall!14791 (exprs!5523 (h!69541 zl!343)) lambda!304001))))

(declare-fun bs!1314473 () Bool)

(assert (= bs!1314473 d!1784979))

(declare-fun m!6618584 () Bool)

(assert (=> bs!1314473 m!6618584))

(assert (=> b!5650703 d!1784979))

(declare-fun d!1784981 () Bool)

(declare-fun e!3481069 () Bool)

(assert (=> d!1784981 e!3481069))

(declare-fun res!2390720 () Bool)

(assert (=> d!1784981 (=> (not res!2390720) (not e!3481069))))

(declare-fun lt!2265818 () List!63217)

(declare-fun noDuplicate!1595 (List!63217) Bool)

(assert (=> d!1784981 (= res!2390720 (noDuplicate!1595 lt!2265818))))

(declare-fun choose!42774 ((InoxSet Context!10046)) List!63217)

(assert (=> d!1784981 (= lt!2265818 (choose!42774 z!1189))))

(assert (=> d!1784981 (= (toList!9423 z!1189) lt!2265818)))

(declare-fun b!5651279 () Bool)

(declare-fun content!11414 (List!63217) (InoxSet Context!10046))

(assert (=> b!5651279 (= e!3481069 (= (content!11414 lt!2265818) z!1189))))

(assert (= (and d!1784981 res!2390720) b!5651279))

(declare-fun m!6618612 () Bool)

(assert (=> d!1784981 m!6618612))

(declare-fun m!6618614 () Bool)

(assert (=> d!1784981 m!6618614))

(declare-fun m!6618618 () Bool)

(assert (=> b!5651279 m!6618618))

(assert (=> b!5650681 d!1784981))

(declare-fun bs!1314477 () Bool)

(declare-fun d!1784993 () Bool)

(assert (= bs!1314477 (and d!1784993 d!1784903)))

(declare-fun lambda!304006 () Int)

(assert (=> bs!1314477 (= lambda!304006 lambda!303970)))

(declare-fun bs!1314478 () Bool)

(assert (= bs!1314478 (and d!1784993 d!1784979)))

(assert (=> bs!1314478 (= lambda!304006 lambda!304001)))

(declare-fun b!5651320 () Bool)

(declare-fun e!3481099 () Bool)

(declare-fun lt!2265823 () Regex!15639)

(declare-fun head!12011 (List!63216) Regex!15639)

(assert (=> b!5651320 (= e!3481099 (= lt!2265823 (head!12011 lt!2265733)))))

(declare-fun b!5651321 () Bool)

(declare-fun e!3481097 () Regex!15639)

(assert (=> b!5651321 (= e!3481097 (Concat!24484 (h!69540 lt!2265733) (generalisedConcat!1254 (t!376516 lt!2265733))))))

(declare-fun b!5651322 () Bool)

(assert (=> b!5651322 (= e!3481097 EmptyExpr!15639)))

(declare-fun b!5651323 () Bool)

(declare-fun e!3481095 () Bool)

(declare-fun e!3481096 () Bool)

(assert (=> b!5651323 (= e!3481095 e!3481096)))

(declare-fun c!993313 () Bool)

(assert (=> b!5651323 (= c!993313 (isEmpty!34933 lt!2265733))))

(declare-fun b!5651324 () Bool)

(declare-fun isEmptyExpr!1174 (Regex!15639) Bool)

(assert (=> b!5651324 (= e!3481096 (isEmptyExpr!1174 lt!2265823))))

(assert (=> d!1784993 e!3481095))

(declare-fun res!2390729 () Bool)

(assert (=> d!1784993 (=> (not res!2390729) (not e!3481095))))

(assert (=> d!1784993 (= res!2390729 (validRegex!7375 lt!2265823))))

(declare-fun e!3481094 () Regex!15639)

(assert (=> d!1784993 (= lt!2265823 e!3481094)))

(declare-fun c!993314 () Bool)

(declare-fun e!3481098 () Bool)

(assert (=> d!1784993 (= c!993314 e!3481098)))

(declare-fun res!2390730 () Bool)

(assert (=> d!1784993 (=> (not res!2390730) (not e!3481098))))

(assert (=> d!1784993 (= res!2390730 ((_ is Cons!63092) lt!2265733))))

(assert (=> d!1784993 (forall!14791 lt!2265733 lambda!304006)))

(assert (=> d!1784993 (= (generalisedConcat!1254 lt!2265733) lt!2265823)))

(declare-fun b!5651325 () Bool)

(assert (=> b!5651325 (= e!3481094 (h!69540 lt!2265733))))

(declare-fun b!5651326 () Bool)

(assert (=> b!5651326 (= e!3481098 (isEmpty!34933 (t!376516 lt!2265733)))))

(declare-fun b!5651327 () Bool)

(declare-fun isConcat!697 (Regex!15639) Bool)

(assert (=> b!5651327 (= e!3481099 (isConcat!697 lt!2265823))))

(declare-fun b!5651328 () Bool)

(assert (=> b!5651328 (= e!3481096 e!3481099)))

(declare-fun c!993311 () Bool)

(declare-fun tail!11106 (List!63216) List!63216)

(assert (=> b!5651328 (= c!993311 (isEmpty!34933 (tail!11106 lt!2265733)))))

(declare-fun b!5651329 () Bool)

(assert (=> b!5651329 (= e!3481094 e!3481097)))

(declare-fun c!993312 () Bool)

(assert (=> b!5651329 (= c!993312 ((_ is Cons!63092) lt!2265733))))

(assert (= (and d!1784993 res!2390730) b!5651326))

(assert (= (and d!1784993 c!993314) b!5651325))

(assert (= (and d!1784993 (not c!993314)) b!5651329))

(assert (= (and b!5651329 c!993312) b!5651321))

(assert (= (and b!5651329 (not c!993312)) b!5651322))

(assert (= (and d!1784993 res!2390729) b!5651323))

(assert (= (and b!5651323 c!993313) b!5651324))

(assert (= (and b!5651323 (not c!993313)) b!5651328))

(assert (= (and b!5651328 c!993311) b!5651320))

(assert (= (and b!5651328 (not c!993311)) b!5651327))

(declare-fun m!6618626 () Bool)

(assert (=> b!5651326 m!6618626))

(declare-fun m!6618628 () Bool)

(assert (=> b!5651323 m!6618628))

(declare-fun m!6618630 () Bool)

(assert (=> b!5651320 m!6618630))

(declare-fun m!6618632 () Bool)

(assert (=> b!5651324 m!6618632))

(declare-fun m!6618634 () Bool)

(assert (=> d!1784993 m!6618634))

(declare-fun m!6618636 () Bool)

(assert (=> d!1784993 m!6618636))

(declare-fun m!6618638 () Bool)

(assert (=> b!5651321 m!6618638))

(declare-fun m!6618640 () Bool)

(assert (=> b!5651327 m!6618640))

(declare-fun m!6618642 () Bool)

(assert (=> b!5651328 m!6618642))

(assert (=> b!5651328 m!6618642))

(declare-fun m!6618644 () Bool)

(assert (=> b!5651328 m!6618644))

(assert (=> b!5650700 d!1784993))

(declare-fun d!1785001 () Bool)

(assert (=> d!1785001 (= (matchR!7824 lt!2265715 s!2326) (matchRSpec!2742 lt!2265715 s!2326))))

(declare-fun lt!2265825 () Unit!156088)

(assert (=> d!1785001 (= lt!2265825 (choose!42773 lt!2265715 s!2326))))

(assert (=> d!1785001 (validRegex!7375 lt!2265715)))

(assert (=> d!1785001 (= (mainMatchTheorem!2742 lt!2265715 s!2326) lt!2265825)))

(declare-fun bs!1314482 () Bool)

(assert (= bs!1314482 d!1785001))

(assert (=> bs!1314482 m!6618094))

(assert (=> bs!1314482 m!6618110))

(declare-fun m!6618646 () Bool)

(assert (=> bs!1314482 m!6618646))

(declare-fun m!6618648 () Bool)

(assert (=> bs!1314482 m!6618648))

(assert (=> b!5650700 d!1785001))

(declare-fun b!5651340 () Bool)

(declare-fun e!3481112 () Bool)

(declare-fun e!3481110 () Bool)

(assert (=> b!5651340 (= e!3481112 e!3481110)))

(declare-fun res!2390735 () Bool)

(assert (=> b!5651340 (=> res!2390735 e!3481110)))

(declare-fun call!427487 () Bool)

(assert (=> b!5651340 (= res!2390735 call!427487)))

(declare-fun b!5651341 () Bool)

(declare-fun e!3481109 () Bool)

(declare-fun lt!2265826 () Bool)

(assert (=> b!5651341 (= e!3481109 (= lt!2265826 call!427487))))

(declare-fun b!5651342 () Bool)

(declare-fun e!3481108 () Bool)

(assert (=> b!5651342 (= e!3481109 e!3481108)))

(declare-fun c!993320 () Bool)

(assert (=> b!5651342 (= c!993320 ((_ is EmptyLang!15639) lt!2265690))))

(declare-fun b!5651343 () Bool)

(declare-fun res!2390734 () Bool)

(declare-fun e!3481107 () Bool)

(assert (=> b!5651343 (=> (not res!2390734) (not e!3481107))))

(assert (=> b!5651343 (= res!2390734 (not call!427487))))

(declare-fun b!5651344 () Bool)

(assert (=> b!5651344 (= e!3481110 (not (= (head!12008 s!2326) (c!993109 lt!2265690))))))

(declare-fun b!5651346 () Bool)

(declare-fun res!2390738 () Bool)

(declare-fun e!3481106 () Bool)

(assert (=> b!5651346 (=> res!2390738 e!3481106)))

(assert (=> b!5651346 (= res!2390738 e!3481107)))

(declare-fun res!2390739 () Bool)

(assert (=> b!5651346 (=> (not res!2390739) (not e!3481107))))

(assert (=> b!5651346 (= res!2390739 lt!2265826)))

(declare-fun b!5651347 () Bool)

(declare-fun e!3481111 () Bool)

(assert (=> b!5651347 (= e!3481111 (nullable!5671 lt!2265690))))

(declare-fun b!5651348 () Bool)

(declare-fun res!2390736 () Bool)

(assert (=> b!5651348 (=> res!2390736 e!3481110)))

(assert (=> b!5651348 (= res!2390736 (not (isEmpty!34935 (tail!11103 s!2326))))))

(declare-fun b!5651349 () Bool)

(assert (=> b!5651349 (= e!3481111 (matchR!7824 (derivativeStep!4468 lt!2265690 (head!12008 s!2326)) (tail!11103 s!2326)))))

(declare-fun b!5651350 () Bool)

(assert (=> b!5651350 (= e!3481106 e!3481112)))

(declare-fun res!2390740 () Bool)

(assert (=> b!5651350 (=> (not res!2390740) (not e!3481112))))

(assert (=> b!5651350 (= res!2390740 (not lt!2265826))))

(declare-fun b!5651351 () Bool)

(assert (=> b!5651351 (= e!3481107 (= (head!12008 s!2326) (c!993109 lt!2265690)))))

(declare-fun b!5651345 () Bool)

(declare-fun res!2390737 () Bool)

(assert (=> b!5651345 (=> (not res!2390737) (not e!3481107))))

(assert (=> b!5651345 (= res!2390737 (isEmpty!34935 (tail!11103 s!2326)))))

(declare-fun d!1785003 () Bool)

(assert (=> d!1785003 e!3481109))

(declare-fun c!993321 () Bool)

(assert (=> d!1785003 (= c!993321 ((_ is EmptyExpr!15639) lt!2265690))))

(assert (=> d!1785003 (= lt!2265826 e!3481111)))

(declare-fun c!993319 () Bool)

(assert (=> d!1785003 (= c!993319 (isEmpty!34935 s!2326))))

(assert (=> d!1785003 (validRegex!7375 lt!2265690)))

(assert (=> d!1785003 (= (matchR!7824 lt!2265690 s!2326) lt!2265826)))

(declare-fun bm!427482 () Bool)

(assert (=> bm!427482 (= call!427487 (isEmpty!34935 s!2326))))

(declare-fun b!5651352 () Bool)

(declare-fun res!2390733 () Bool)

(assert (=> b!5651352 (=> res!2390733 e!3481106)))

(assert (=> b!5651352 (= res!2390733 (not ((_ is ElementMatch!15639) lt!2265690)))))

(assert (=> b!5651352 (= e!3481108 e!3481106)))

(declare-fun b!5651353 () Bool)

(assert (=> b!5651353 (= e!3481108 (not lt!2265826))))

(assert (= (and d!1785003 c!993319) b!5651347))

(assert (= (and d!1785003 (not c!993319)) b!5651349))

(assert (= (and d!1785003 c!993321) b!5651341))

(assert (= (and d!1785003 (not c!993321)) b!5651342))

(assert (= (and b!5651342 c!993320) b!5651353))

(assert (= (and b!5651342 (not c!993320)) b!5651352))

(assert (= (and b!5651352 (not res!2390733)) b!5651346))

(assert (= (and b!5651346 res!2390739) b!5651343))

(assert (= (and b!5651343 res!2390734) b!5651345))

(assert (= (and b!5651345 res!2390737) b!5651351))

(assert (= (and b!5651346 (not res!2390738)) b!5651350))

(assert (= (and b!5651350 res!2390740) b!5651340))

(assert (= (and b!5651340 (not res!2390735)) b!5651348))

(assert (= (and b!5651348 (not res!2390736)) b!5651344))

(assert (= (or b!5651341 b!5651340 b!5651343) bm!427482))

(assert (=> d!1785003 m!6618334))

(declare-fun m!6618670 () Bool)

(assert (=> d!1785003 m!6618670))

(assert (=> b!5651349 m!6618338))

(assert (=> b!5651349 m!6618338))

(declare-fun m!6618672 () Bool)

(assert (=> b!5651349 m!6618672))

(assert (=> b!5651349 m!6618342))

(assert (=> b!5651349 m!6618672))

(assert (=> b!5651349 m!6618342))

(declare-fun m!6618674 () Bool)

(assert (=> b!5651349 m!6618674))

(assert (=> b!5651351 m!6618338))

(declare-fun m!6618676 () Bool)

(assert (=> b!5651347 m!6618676))

(assert (=> b!5651344 m!6618338))

(assert (=> b!5651345 m!6618342))

(assert (=> b!5651345 m!6618342))

(assert (=> b!5651345 m!6618348))

(assert (=> bm!427482 m!6618334))

(assert (=> b!5651348 m!6618342))

(assert (=> b!5651348 m!6618342))

(assert (=> b!5651348 m!6618348))

(assert (=> b!5650700 d!1785003))

(declare-fun bs!1314483 () Bool)

(declare-fun d!1785007 () Bool)

(assert (= bs!1314483 (and d!1785007 d!1784903)))

(declare-fun lambda!304008 () Int)

(assert (=> bs!1314483 (= lambda!304008 lambda!303970)))

(declare-fun bs!1314484 () Bool)

(assert (= bs!1314484 (and d!1785007 d!1784979)))

(assert (=> bs!1314484 (= lambda!304008 lambda!304001)))

(declare-fun bs!1314485 () Bool)

(assert (= bs!1314485 (and d!1785007 d!1784993)))

(assert (=> bs!1314485 (= lambda!304008 lambda!304006)))

(declare-fun b!5651354 () Bool)

(declare-fun e!3481118 () Bool)

(declare-fun lt!2265827 () Regex!15639)

(assert (=> b!5651354 (= e!3481118 (= lt!2265827 (head!12011 (t!376516 (exprs!5523 (h!69541 zl!343))))))))

(declare-fun b!5651355 () Bool)

(declare-fun e!3481116 () Regex!15639)

(assert (=> b!5651355 (= e!3481116 (Concat!24484 (h!69540 (t!376516 (exprs!5523 (h!69541 zl!343)))) (generalisedConcat!1254 (t!376516 (t!376516 (exprs!5523 (h!69541 zl!343)))))))))

(declare-fun b!5651356 () Bool)

(assert (=> b!5651356 (= e!3481116 EmptyExpr!15639)))

(declare-fun b!5651357 () Bool)

(declare-fun e!3481114 () Bool)

(declare-fun e!3481115 () Bool)

(assert (=> b!5651357 (= e!3481114 e!3481115)))

(declare-fun c!993324 () Bool)

(assert (=> b!5651357 (= c!993324 (isEmpty!34933 (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun b!5651358 () Bool)

(assert (=> b!5651358 (= e!3481115 (isEmptyExpr!1174 lt!2265827))))

(assert (=> d!1785007 e!3481114))

(declare-fun res!2390741 () Bool)

(assert (=> d!1785007 (=> (not res!2390741) (not e!3481114))))

(assert (=> d!1785007 (= res!2390741 (validRegex!7375 lt!2265827))))

(declare-fun e!3481113 () Regex!15639)

(assert (=> d!1785007 (= lt!2265827 e!3481113)))

(declare-fun c!993325 () Bool)

(declare-fun e!3481117 () Bool)

(assert (=> d!1785007 (= c!993325 e!3481117)))

(declare-fun res!2390742 () Bool)

(assert (=> d!1785007 (=> (not res!2390742) (not e!3481117))))

(assert (=> d!1785007 (= res!2390742 ((_ is Cons!63092) (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(assert (=> d!1785007 (forall!14791 (t!376516 (exprs!5523 (h!69541 zl!343))) lambda!304008)))

(assert (=> d!1785007 (= (generalisedConcat!1254 (t!376516 (exprs!5523 (h!69541 zl!343)))) lt!2265827)))

(declare-fun b!5651359 () Bool)

(assert (=> b!5651359 (= e!3481113 (h!69540 (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun b!5651360 () Bool)

(assert (=> b!5651360 (= e!3481117 (isEmpty!34933 (t!376516 (t!376516 (exprs!5523 (h!69541 zl!343))))))))

(declare-fun b!5651361 () Bool)

(assert (=> b!5651361 (= e!3481118 (isConcat!697 lt!2265827))))

(declare-fun b!5651362 () Bool)

(assert (=> b!5651362 (= e!3481115 e!3481118)))

(declare-fun c!993322 () Bool)

(assert (=> b!5651362 (= c!993322 (isEmpty!34933 (tail!11106 (t!376516 (exprs!5523 (h!69541 zl!343))))))))

(declare-fun b!5651363 () Bool)

(assert (=> b!5651363 (= e!3481113 e!3481116)))

(declare-fun c!993323 () Bool)

(assert (=> b!5651363 (= c!993323 ((_ is Cons!63092) (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(assert (= (and d!1785007 res!2390742) b!5651360))

(assert (= (and d!1785007 c!993325) b!5651359))

(assert (= (and d!1785007 (not c!993325)) b!5651363))

(assert (= (and b!5651363 c!993323) b!5651355))

(assert (= (and b!5651363 (not c!993323)) b!5651356))

(assert (= (and d!1785007 res!2390741) b!5651357))

(assert (= (and b!5651357 c!993324) b!5651358))

(assert (= (and b!5651357 (not c!993324)) b!5651362))

(assert (= (and b!5651362 c!993322) b!5651354))

(assert (= (and b!5651362 (not c!993322)) b!5651361))

(declare-fun m!6618678 () Bool)

(assert (=> b!5651360 m!6618678))

(assert (=> b!5651357 m!6618162))

(declare-fun m!6618680 () Bool)

(assert (=> b!5651354 m!6618680))

(declare-fun m!6618682 () Bool)

(assert (=> b!5651358 m!6618682))

(declare-fun m!6618684 () Bool)

(assert (=> d!1785007 m!6618684))

(declare-fun m!6618686 () Bool)

(assert (=> d!1785007 m!6618686))

(declare-fun m!6618688 () Bool)

(assert (=> b!5651355 m!6618688))

(declare-fun m!6618690 () Bool)

(assert (=> b!5651361 m!6618690))

(declare-fun m!6618692 () Bool)

(assert (=> b!5651362 m!6618692))

(assert (=> b!5651362 m!6618692))

(declare-fun m!6618694 () Bool)

(assert (=> b!5651362 m!6618694))

(assert (=> b!5650700 d!1785007))

(declare-fun d!1785009 () Bool)

(assert (=> d!1785009 (= (matchR!7824 lt!2265690 s!2326) (matchZipper!1777 lt!2265695 s!2326))))

(declare-fun lt!2265833 () Unit!156088)

(declare-fun choose!42776 ((InoxSet Context!10046) List!63217 Regex!15639 List!63218) Unit!156088)

(assert (=> d!1785009 (= lt!2265833 (choose!42776 lt!2265695 (Cons!63093 lt!2265689 Nil!63093) lt!2265690 s!2326))))

(assert (=> d!1785009 (validRegex!7375 lt!2265690)))

(assert (=> d!1785009 (= (theoremZipperRegexEquiv!635 lt!2265695 (Cons!63093 lt!2265689 Nil!63093) lt!2265690 s!2326) lt!2265833)))

(declare-fun bs!1314497 () Bool)

(assert (= bs!1314497 d!1785009))

(assert (=> bs!1314497 m!6618136))

(assert (=> bs!1314497 m!6618120))

(declare-fun m!6618700 () Bool)

(assert (=> bs!1314497 m!6618700))

(assert (=> bs!1314497 m!6618670))

(assert (=> b!5650700 d!1785009))

(declare-fun bs!1314502 () Bool)

(declare-fun b!5651390 () Bool)

(assert (= bs!1314502 (and b!5651390 b!5651203)))

(declare-fun lambda!304014 () Int)

(assert (=> bs!1314502 (not (= lambda!304014 lambda!303978))))

(declare-fun bs!1314504 () Bool)

(assert (= bs!1314504 (and b!5651390 b!5650700)))

(assert (=> bs!1314504 (not (= lambda!304014 lambda!303950))))

(assert (=> bs!1314504 (not (= lambda!304014 lambda!303949))))

(declare-fun bs!1314506 () Bool)

(assert (= bs!1314506 (and b!5651390 b!5651202)))

(assert (=> bs!1314506 (= (and (= (reg!15968 lt!2265715) (reg!15968 r!7292)) (= lt!2265715 r!7292)) (= lambda!304014 lambda!303975))))

(declare-fun bs!1314507 () Bool)

(assert (= bs!1314507 (and b!5651390 b!5650698)))

(assert (=> bs!1314507 (not (= lambda!304014 lambda!303945))))

(assert (=> bs!1314504 (not (= lambda!304014 lambda!303951))))

(assert (=> bs!1314507 (not (= lambda!304014 lambda!303946))))

(assert (=> bs!1314504 (not (= lambda!304014 lambda!303948))))

(assert (=> b!5651390 true))

(assert (=> b!5651390 true))

(declare-fun bs!1314508 () Bool)

(declare-fun b!5651391 () Bool)

(assert (= bs!1314508 (and b!5651391 b!5651390)))

(declare-fun lambda!304015 () Int)

(assert (=> bs!1314508 (not (= lambda!304015 lambda!304014))))

(declare-fun bs!1314510 () Bool)

(assert (= bs!1314510 (and b!5651391 b!5651203)))

(assert (=> bs!1314510 (= (and (= (regOne!31790 lt!2265715) (regOne!31790 r!7292)) (= (regTwo!31790 lt!2265715) (regTwo!31790 r!7292))) (= lambda!304015 lambda!303978))))

(declare-fun bs!1314512 () Bool)

(assert (= bs!1314512 (and b!5651391 b!5650700)))

(assert (=> bs!1314512 (not (= lambda!304015 lambda!303950))))

(assert (=> bs!1314512 (= (and (= (regOne!31790 lt!2265715) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 lt!2265715) lt!2265690)) (= lambda!304015 lambda!303949))))

(declare-fun bs!1314514 () Bool)

(assert (= bs!1314514 (and b!5651391 b!5651202)))

(assert (=> bs!1314514 (not (= lambda!304015 lambda!303975))))

(declare-fun bs!1314516 () Bool)

(assert (= bs!1314516 (and b!5651391 b!5650698)))

(assert (=> bs!1314516 (not (= lambda!304015 lambda!303945))))

(assert (=> bs!1314512 (= (and (= (regOne!31790 lt!2265715) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 lt!2265715) lt!2265692)) (= lambda!304015 lambda!303951))))

(assert (=> bs!1314516 (= (and (= (regOne!31790 lt!2265715) (regOne!31790 r!7292)) (= (regTwo!31790 lt!2265715) (regTwo!31790 r!7292))) (= lambda!304015 lambda!303946))))

(assert (=> bs!1314512 (not (= lambda!304015 lambda!303948))))

(assert (=> b!5651391 true))

(assert (=> b!5651391 true))

(declare-fun b!5651381 () Bool)

(declare-fun c!993333 () Bool)

(assert (=> b!5651381 (= c!993333 ((_ is ElementMatch!15639) lt!2265715))))

(declare-fun e!3481129 () Bool)

(declare-fun e!3481134 () Bool)

(assert (=> b!5651381 (= e!3481129 e!3481134)))

(declare-fun b!5651382 () Bool)

(declare-fun e!3481132 () Bool)

(declare-fun e!3481130 () Bool)

(assert (=> b!5651382 (= e!3481132 e!3481130)))

(declare-fun res!2390747 () Bool)

(assert (=> b!5651382 (= res!2390747 (matchRSpec!2742 (regOne!31791 lt!2265715) s!2326))))

(assert (=> b!5651382 (=> res!2390747 e!3481130)))

(declare-fun b!5651383 () Bool)

(declare-fun c!993335 () Bool)

(assert (=> b!5651383 (= c!993335 ((_ is Union!15639) lt!2265715))))

(assert (=> b!5651383 (= e!3481134 e!3481132)))

(declare-fun call!427491 () Bool)

(declare-fun c!993336 () Bool)

(declare-fun bm!427485 () Bool)

(assert (=> bm!427485 (= call!427491 (Exists!2739 (ite c!993336 lambda!304014 lambda!304015)))))

(declare-fun b!5651384 () Bool)

(declare-fun e!3481133 () Bool)

(assert (=> b!5651384 (= e!3481133 e!3481129)))

(declare-fun res!2390748 () Bool)

(assert (=> b!5651384 (= res!2390748 (not ((_ is EmptyLang!15639) lt!2265715)))))

(assert (=> b!5651384 (=> (not res!2390748) (not e!3481129))))

(declare-fun b!5651386 () Bool)

(assert (=> b!5651386 (= e!3481134 (= s!2326 (Cons!63094 (c!993109 lt!2265715) Nil!63094)))))

(declare-fun b!5651387 () Bool)

(assert (=> b!5651387 (= e!3481130 (matchRSpec!2742 (regTwo!31791 lt!2265715) s!2326))))

(declare-fun b!5651388 () Bool)

(declare-fun call!427490 () Bool)

(assert (=> b!5651388 (= e!3481133 call!427490)))

(declare-fun b!5651385 () Bool)

(declare-fun e!3481131 () Bool)

(assert (=> b!5651385 (= e!3481132 e!3481131)))

(assert (=> b!5651385 (= c!993336 ((_ is Star!15639) lt!2265715))))

(declare-fun d!1785013 () Bool)

(declare-fun c!993334 () Bool)

(assert (=> d!1785013 (= c!993334 ((_ is EmptyExpr!15639) lt!2265715))))

(assert (=> d!1785013 (= (matchRSpec!2742 lt!2265715 s!2326) e!3481133)))

(declare-fun bm!427486 () Bool)

(assert (=> bm!427486 (= call!427490 (isEmpty!34935 s!2326))))

(declare-fun b!5651389 () Bool)

(declare-fun res!2390746 () Bool)

(declare-fun e!3481135 () Bool)

(assert (=> b!5651389 (=> res!2390746 e!3481135)))

(assert (=> b!5651389 (= res!2390746 call!427490)))

(assert (=> b!5651389 (= e!3481131 e!3481135)))

(assert (=> b!5651390 (= e!3481135 call!427491)))

(assert (=> b!5651391 (= e!3481131 call!427491)))

(assert (= (and d!1785013 c!993334) b!5651388))

(assert (= (and d!1785013 (not c!993334)) b!5651384))

(assert (= (and b!5651384 res!2390748) b!5651381))

(assert (= (and b!5651381 c!993333) b!5651386))

(assert (= (and b!5651381 (not c!993333)) b!5651383))

(assert (= (and b!5651383 c!993335) b!5651382))

(assert (= (and b!5651383 (not c!993335)) b!5651385))

(assert (= (and b!5651382 (not res!2390747)) b!5651387))

(assert (= (and b!5651385 c!993336) b!5651389))

(assert (= (and b!5651385 (not c!993336)) b!5651391))

(assert (= (and b!5651389 (not res!2390746)) b!5651390))

(assert (= (or b!5651390 b!5651391) bm!427485))

(assert (= (or b!5651388 b!5651389) bm!427486))

(declare-fun m!6618708 () Bool)

(assert (=> b!5651382 m!6618708))

(declare-fun m!6618710 () Bool)

(assert (=> bm!427485 m!6618710))

(declare-fun m!6618712 () Bool)

(assert (=> b!5651387 m!6618712))

(assert (=> bm!427486 m!6618334))

(assert (=> b!5650700 d!1785013))

(declare-fun bs!1314546 () Bool)

(declare-fun d!1785017 () Bool)

(assert (= bs!1314546 (and d!1785017 b!5651391)))

(declare-fun lambda!304022 () Int)

(assert (=> bs!1314546 (not (= lambda!304022 lambda!304015))))

(declare-fun bs!1314547 () Bool)

(assert (= bs!1314547 (and d!1785017 b!5651390)))

(assert (=> bs!1314547 (not (= lambda!304022 lambda!304014))))

(declare-fun bs!1314548 () Bool)

(assert (= bs!1314548 (and d!1785017 b!5651203)))

(assert (=> bs!1314548 (not (= lambda!304022 lambda!303978))))

(declare-fun bs!1314549 () Bool)

(assert (= bs!1314549 (and d!1785017 b!5650700)))

(assert (=> bs!1314549 (= lambda!304022 lambda!303950)))

(assert (=> bs!1314549 (not (= lambda!304022 lambda!303949))))

(declare-fun bs!1314550 () Bool)

(assert (= bs!1314550 (and d!1785017 b!5651202)))

(assert (=> bs!1314550 (not (= lambda!304022 lambda!303975))))

(declare-fun bs!1314551 () Bool)

(assert (= bs!1314551 (and d!1785017 b!5650698)))

(assert (=> bs!1314551 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265692 (regTwo!31790 r!7292))) (= lambda!304022 lambda!303945))))

(assert (=> bs!1314549 (not (= lambda!304022 lambda!303951))))

(assert (=> bs!1314551 (not (= lambda!304022 lambda!303946))))

(assert (=> bs!1314549 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 (regOne!31790 r!7292))) (= lt!2265692 lt!2265690)) (= lambda!304022 lambda!303948))))

(assert (=> d!1785017 true))

(assert (=> d!1785017 true))

(assert (=> d!1785017 true))

(assert (=> d!1785017 (= (isDefined!12351 (findConcatSeparation!2062 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 Nil!63094 s!2326 s!2326)) (Exists!2739 lambda!304022))))

(declare-fun lt!2265841 () Unit!156088)

(declare-fun choose!42779 (Regex!15639 Regex!15639 List!63218) Unit!156088)

(assert (=> d!1785017 (= lt!2265841 (choose!42779 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 s!2326))))

(assert (=> d!1785017 (validRegex!7375 (regTwo!31790 (regOne!31790 r!7292)))))

(assert (=> d!1785017 (= (lemmaFindConcatSeparationEquivalentToExists!1826 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 s!2326) lt!2265841)))

(declare-fun bs!1314552 () Bool)

(assert (= bs!1314552 d!1785017))

(assert (=> bs!1314552 m!6618098))

(assert (=> bs!1314552 m!6618126))

(declare-fun m!6618786 () Bool)

(assert (=> bs!1314552 m!6618786))

(declare-fun m!6618788 () Bool)

(assert (=> bs!1314552 m!6618788))

(declare-fun m!6618790 () Bool)

(assert (=> bs!1314552 m!6618790))

(assert (=> bs!1314552 m!6618098))

(assert (=> b!5650700 d!1785017))

(declare-fun d!1785037 () Bool)

(declare-fun choose!42780 (Int) Bool)

(assert (=> d!1785037 (= (Exists!2739 lambda!303951) (choose!42780 lambda!303951))))

(declare-fun bs!1314553 () Bool)

(assert (= bs!1314553 d!1785037))

(declare-fun m!6618792 () Bool)

(assert (=> bs!1314553 m!6618792))

(assert (=> b!5650700 d!1785037))

(declare-fun d!1785039 () Bool)

(declare-fun isEmpty!34938 (Option!15648) Bool)

(assert (=> d!1785039 (= (isDefined!12351 (findConcatSeparation!2062 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 Nil!63094 s!2326 s!2326)) (not (isEmpty!34938 (findConcatSeparation!2062 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 Nil!63094 s!2326 s!2326))))))

(declare-fun bs!1314554 () Bool)

(assert (= bs!1314554 d!1785039))

(assert (=> bs!1314554 m!6618118))

(declare-fun m!6618794 () Bool)

(assert (=> bs!1314554 m!6618794))

(assert (=> b!5650700 d!1785039))

(declare-fun d!1785041 () Bool)

(assert (=> d!1785041 (= (matchR!7824 lt!2265715 s!2326) (matchZipper!1777 lt!2265721 s!2326))))

(declare-fun lt!2265842 () Unit!156088)

(assert (=> d!1785041 (= lt!2265842 (choose!42776 lt!2265721 lt!2265735 lt!2265715 s!2326))))

(assert (=> d!1785041 (validRegex!7375 lt!2265715)))

(assert (=> d!1785041 (= (theoremZipperRegexEquiv!635 lt!2265721 lt!2265735 lt!2265715 s!2326) lt!2265842)))

(declare-fun bs!1314555 () Bool)

(assert (= bs!1314555 d!1785041))

(assert (=> bs!1314555 m!6618094))

(assert (=> bs!1314555 m!6618092))

(declare-fun m!6618796 () Bool)

(assert (=> bs!1314555 m!6618796))

(assert (=> bs!1314555 m!6618648))

(assert (=> b!5650700 d!1785041))

(declare-fun bs!1314576 () Bool)

(declare-fun d!1785043 () Bool)

(assert (= bs!1314576 (and d!1785043 b!5651391)))

(declare-fun lambda!304030 () Int)

(assert (=> bs!1314576 (not (= lambda!304030 lambda!304015))))

(declare-fun bs!1314577 () Bool)

(assert (= bs!1314577 (and d!1785043 b!5651390)))

(assert (=> bs!1314577 (not (= lambda!304030 lambda!304014))))

(declare-fun bs!1314578 () Bool)

(assert (= bs!1314578 (and d!1785043 b!5651203)))

(assert (=> bs!1314578 (not (= lambda!304030 lambda!303978))))

(declare-fun bs!1314579 () Bool)

(assert (= bs!1314579 (and d!1785043 b!5650700)))

(assert (=> bs!1314579 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regTwo!31790 (regOne!31790 r!7292))) (= lt!2265690 lt!2265692)) (= lambda!304030 lambda!303950))))

(assert (=> bs!1314579 (not (= lambda!304030 lambda!303949))))

(declare-fun bs!1314582 () Bool)

(assert (= bs!1314582 (and d!1785043 b!5651202)))

(assert (=> bs!1314582 (not (= lambda!304030 lambda!303975))))

(declare-fun bs!1314584 () Bool)

(assert (= bs!1314584 (and d!1785043 b!5650698)))

(assert (=> bs!1314584 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265690 (regTwo!31790 r!7292))) (= lambda!304030 lambda!303945))))

(assert (=> bs!1314584 (not (= lambda!304030 lambda!303946))))

(assert (=> bs!1314579 (= lambda!304030 lambda!303948)))

(assert (=> bs!1314579 (not (= lambda!304030 lambda!303951))))

(declare-fun bs!1314588 () Bool)

(assert (= bs!1314588 (and d!1785043 d!1785017)))

(assert (=> bs!1314588 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regTwo!31790 (regOne!31790 r!7292))) (= lt!2265690 lt!2265692)) (= lambda!304030 lambda!304022))))

(assert (=> d!1785043 true))

(assert (=> d!1785043 true))

(assert (=> d!1785043 true))

(declare-fun lambda!304032 () Int)

(assert (=> bs!1314576 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regOne!31790 lt!2265715)) (= lt!2265690 (regTwo!31790 lt!2265715))) (= lambda!304032 lambda!304015))))

(assert (=> bs!1314577 (not (= lambda!304032 lambda!304014))))

(assert (=> bs!1314578 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265690 (regTwo!31790 r!7292))) (= lambda!304032 lambda!303978))))

(declare-fun bs!1314594 () Bool)

(assert (= bs!1314594 d!1785043))

(assert (=> bs!1314594 (not (= lambda!304032 lambda!304030))))

(assert (=> bs!1314579 (not (= lambda!304032 lambda!303950))))

(assert (=> bs!1314579 (= lambda!304032 lambda!303949)))

(assert (=> bs!1314582 (not (= lambda!304032 lambda!303975))))

(assert (=> bs!1314584 (not (= lambda!304032 lambda!303945))))

(assert (=> bs!1314584 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265690 (regTwo!31790 r!7292))) (= lambda!304032 lambda!303946))))

(assert (=> bs!1314579 (not (= lambda!304032 lambda!303948))))

(assert (=> bs!1314579 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regTwo!31790 (regOne!31790 r!7292))) (= lt!2265690 lt!2265692)) (= lambda!304032 lambda!303951))))

(assert (=> bs!1314588 (not (= lambda!304032 lambda!304022))))

(assert (=> d!1785043 true))

(assert (=> d!1785043 true))

(assert (=> d!1785043 true))

(assert (=> d!1785043 (= (Exists!2739 lambda!304030) (Exists!2739 lambda!304032))))

(declare-fun lt!2265851 () Unit!156088)

(declare-fun choose!42782 (Regex!15639 Regex!15639 List!63218) Unit!156088)

(assert (=> d!1785043 (= lt!2265851 (choose!42782 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 s!2326))))

(assert (=> d!1785043 (validRegex!7375 (regOne!31790 (regOne!31790 r!7292)))))

(assert (=> d!1785043 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1368 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 s!2326) lt!2265851)))

(declare-fun m!6618840 () Bool)

(assert (=> bs!1314594 m!6618840))

(declare-fun m!6618842 () Bool)

(assert (=> bs!1314594 m!6618842))

(declare-fun m!6618844 () Bool)

(assert (=> bs!1314594 m!6618844))

(declare-fun m!6618846 () Bool)

(assert (=> bs!1314594 m!6618846))

(assert (=> b!5650700 d!1785043))

(declare-fun bs!1314603 () Bool)

(declare-fun d!1785057 () Bool)

(assert (= bs!1314603 (and d!1785057 b!5651391)))

(declare-fun lambda!304034 () Int)

(assert (=> bs!1314603 (not (= lambda!304034 lambda!304015))))

(declare-fun bs!1314605 () Bool)

(assert (= bs!1314605 (and d!1785057 b!5651390)))

(assert (=> bs!1314605 (not (= lambda!304034 lambda!304014))))

(declare-fun bs!1314607 () Bool)

(assert (= bs!1314607 (and d!1785057 b!5651203)))

(assert (=> bs!1314607 (not (= lambda!304034 lambda!303978))))

(declare-fun bs!1314608 () Bool)

(assert (= bs!1314608 (and d!1785057 d!1785043)))

(assert (=> bs!1314608 (= lambda!304034 lambda!304030)))

(declare-fun bs!1314610 () Bool)

(assert (= bs!1314610 (and d!1785057 b!5650700)))

(assert (=> bs!1314610 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regTwo!31790 (regOne!31790 r!7292))) (= lt!2265690 lt!2265692)) (= lambda!304034 lambda!303950))))

(assert (=> bs!1314610 (not (= lambda!304034 lambda!303949))))

(declare-fun bs!1314612 () Bool)

(assert (= bs!1314612 (and d!1785057 b!5651202)))

(assert (=> bs!1314612 (not (= lambda!304034 lambda!303975))))

(declare-fun bs!1314613 () Bool)

(assert (= bs!1314613 (and d!1785057 b!5650698)))

(assert (=> bs!1314613 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265690 (regTwo!31790 r!7292))) (= lambda!304034 lambda!303945))))

(assert (=> bs!1314613 (not (= lambda!304034 lambda!303946))))

(assert (=> bs!1314608 (not (= lambda!304034 lambda!304032))))

(assert (=> bs!1314610 (= lambda!304034 lambda!303948)))

(assert (=> bs!1314610 (not (= lambda!304034 lambda!303951))))

(declare-fun bs!1314614 () Bool)

(assert (= bs!1314614 (and d!1785057 d!1785017)))

(assert (=> bs!1314614 (= (and (= (regOne!31790 (regOne!31790 r!7292)) (regTwo!31790 (regOne!31790 r!7292))) (= lt!2265690 lt!2265692)) (= lambda!304034 lambda!304022))))

(assert (=> d!1785057 true))

(assert (=> d!1785057 true))

(assert (=> d!1785057 true))

(assert (=> d!1785057 (= (isDefined!12351 (findConcatSeparation!2062 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 Nil!63094 s!2326 s!2326)) (Exists!2739 lambda!304034))))

(declare-fun lt!2265852 () Unit!156088)

(assert (=> d!1785057 (= lt!2265852 (choose!42779 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 s!2326))))

(assert (=> d!1785057 (validRegex!7375 (regOne!31790 (regOne!31790 r!7292)))))

(assert (=> d!1785057 (= (lemmaFindConcatSeparationEquivalentToExists!1826 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 s!2326) lt!2265852)))

(declare-fun bs!1314615 () Bool)

(assert (= bs!1314615 d!1785057))

(assert (=> bs!1314615 m!6618118))

(assert (=> bs!1314615 m!6618134))

(declare-fun m!6618856 () Bool)

(assert (=> bs!1314615 m!6618856))

(declare-fun m!6618858 () Bool)

(assert (=> bs!1314615 m!6618858))

(assert (=> bs!1314615 m!6618846))

(assert (=> bs!1314615 m!6618118))

(assert (=> b!5650700 d!1785057))

(declare-fun d!1785063 () Bool)

(assert (=> d!1785063 (= (Exists!2739 lambda!303948) (choose!42780 lambda!303948))))

(declare-fun bs!1314617 () Bool)

(assert (= bs!1314617 d!1785063))

(declare-fun m!6618860 () Bool)

(assert (=> bs!1314617 m!6618860))

(assert (=> b!5650700 d!1785063))

(declare-fun b!5651477 () Bool)

(declare-fun e!3481189 () Bool)

(declare-fun e!3481187 () Bool)

(assert (=> b!5651477 (= e!3481189 e!3481187)))

(declare-fun res!2390788 () Bool)

(assert (=> b!5651477 (=> res!2390788 e!3481187)))

(declare-fun call!427496 () Bool)

(assert (=> b!5651477 (= res!2390788 call!427496)))

(declare-fun b!5651478 () Bool)

(declare-fun e!3481186 () Bool)

(declare-fun lt!2265854 () Bool)

(assert (=> b!5651478 (= e!3481186 (= lt!2265854 call!427496))))

(declare-fun b!5651479 () Bool)

(declare-fun e!3481185 () Bool)

(assert (=> b!5651479 (= e!3481186 e!3481185)))

(declare-fun c!993362 () Bool)

(assert (=> b!5651479 (= c!993362 ((_ is EmptyLang!15639) lt!2265715))))

(declare-fun b!5651480 () Bool)

(declare-fun res!2390787 () Bool)

(declare-fun e!3481184 () Bool)

(assert (=> b!5651480 (=> (not res!2390787) (not e!3481184))))

(assert (=> b!5651480 (= res!2390787 (not call!427496))))

(declare-fun b!5651481 () Bool)

(assert (=> b!5651481 (= e!3481187 (not (= (head!12008 s!2326) (c!993109 lt!2265715))))))

(declare-fun b!5651483 () Bool)

(declare-fun res!2390791 () Bool)

(declare-fun e!3481183 () Bool)

(assert (=> b!5651483 (=> res!2390791 e!3481183)))

(assert (=> b!5651483 (= res!2390791 e!3481184)))

(declare-fun res!2390792 () Bool)

(assert (=> b!5651483 (=> (not res!2390792) (not e!3481184))))

(assert (=> b!5651483 (= res!2390792 lt!2265854)))

(declare-fun b!5651484 () Bool)

(declare-fun e!3481188 () Bool)

(assert (=> b!5651484 (= e!3481188 (nullable!5671 lt!2265715))))

(declare-fun b!5651485 () Bool)

(declare-fun res!2390789 () Bool)

(assert (=> b!5651485 (=> res!2390789 e!3481187)))

(assert (=> b!5651485 (= res!2390789 (not (isEmpty!34935 (tail!11103 s!2326))))))

(declare-fun b!5651486 () Bool)

(assert (=> b!5651486 (= e!3481188 (matchR!7824 (derivativeStep!4468 lt!2265715 (head!12008 s!2326)) (tail!11103 s!2326)))))

(declare-fun b!5651487 () Bool)

(assert (=> b!5651487 (= e!3481183 e!3481189)))

(declare-fun res!2390793 () Bool)

(assert (=> b!5651487 (=> (not res!2390793) (not e!3481189))))

(assert (=> b!5651487 (= res!2390793 (not lt!2265854))))

(declare-fun b!5651488 () Bool)

(assert (=> b!5651488 (= e!3481184 (= (head!12008 s!2326) (c!993109 lt!2265715)))))

(declare-fun b!5651482 () Bool)

(declare-fun res!2390790 () Bool)

(assert (=> b!5651482 (=> (not res!2390790) (not e!3481184))))

(assert (=> b!5651482 (= res!2390790 (isEmpty!34935 (tail!11103 s!2326)))))

(declare-fun d!1785065 () Bool)

(assert (=> d!1785065 e!3481186))

(declare-fun c!993363 () Bool)

(assert (=> d!1785065 (= c!993363 ((_ is EmptyExpr!15639) lt!2265715))))

(assert (=> d!1785065 (= lt!2265854 e!3481188)))

(declare-fun c!993361 () Bool)

(assert (=> d!1785065 (= c!993361 (isEmpty!34935 s!2326))))

(assert (=> d!1785065 (validRegex!7375 lt!2265715)))

(assert (=> d!1785065 (= (matchR!7824 lt!2265715 s!2326) lt!2265854)))

(declare-fun bm!427491 () Bool)

(assert (=> bm!427491 (= call!427496 (isEmpty!34935 s!2326))))

(declare-fun b!5651489 () Bool)

(declare-fun res!2390786 () Bool)

(assert (=> b!5651489 (=> res!2390786 e!3481183)))

(assert (=> b!5651489 (= res!2390786 (not ((_ is ElementMatch!15639) lt!2265715)))))

(assert (=> b!5651489 (= e!3481185 e!3481183)))

(declare-fun b!5651490 () Bool)

(assert (=> b!5651490 (= e!3481185 (not lt!2265854))))

(assert (= (and d!1785065 c!993361) b!5651484))

(assert (= (and d!1785065 (not c!993361)) b!5651486))

(assert (= (and d!1785065 c!993363) b!5651478))

(assert (= (and d!1785065 (not c!993363)) b!5651479))

(assert (= (and b!5651479 c!993362) b!5651490))

(assert (= (and b!5651479 (not c!993362)) b!5651489))

(assert (= (and b!5651489 (not res!2390786)) b!5651483))

(assert (= (and b!5651483 res!2390792) b!5651480))

(assert (= (and b!5651480 res!2390787) b!5651482))

(assert (= (and b!5651482 res!2390790) b!5651488))

(assert (= (and b!5651483 (not res!2390791)) b!5651487))

(assert (= (and b!5651487 res!2390793) b!5651477))

(assert (= (and b!5651477 (not res!2390788)) b!5651485))

(assert (= (and b!5651485 (not res!2390789)) b!5651481))

(assert (= (or b!5651478 b!5651477 b!5651480) bm!427491))

(assert (=> d!1785065 m!6618334))

(assert (=> d!1785065 m!6618648))

(assert (=> b!5651486 m!6618338))

(assert (=> b!5651486 m!6618338))

(declare-fun m!6618862 () Bool)

(assert (=> b!5651486 m!6618862))

(assert (=> b!5651486 m!6618342))

(assert (=> b!5651486 m!6618862))

(assert (=> b!5651486 m!6618342))

(declare-fun m!6618864 () Bool)

(assert (=> b!5651486 m!6618864))

(assert (=> b!5651488 m!6618338))

(declare-fun m!6618866 () Bool)

(assert (=> b!5651484 m!6618866))

(assert (=> b!5651481 m!6618338))

(assert (=> b!5651482 m!6618342))

(assert (=> b!5651482 m!6618342))

(assert (=> b!5651482 m!6618348))

(assert (=> bm!427491 m!6618334))

(assert (=> b!5651485 m!6618342))

(assert (=> b!5651485 m!6618342))

(assert (=> b!5651485 m!6618348))

(assert (=> b!5650700 d!1785065))

(declare-fun d!1785067 () Bool)

(assert (=> d!1785067 (= (isDefined!12351 (findConcatSeparation!2062 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 Nil!63094 s!2326 s!2326)) (not (isEmpty!34938 (findConcatSeparation!2062 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 Nil!63094 s!2326 s!2326))))))

(declare-fun bs!1314625 () Bool)

(assert (= bs!1314625 d!1785067))

(assert (=> bs!1314625 m!6618098))

(declare-fun m!6618868 () Bool)

(assert (=> bs!1314625 m!6618868))

(assert (=> b!5650700 d!1785067))

(declare-fun d!1785069 () Bool)

(assert (=> d!1785069 (= (Exists!2739 lambda!303949) (choose!42780 lambda!303949))))

(declare-fun bs!1314628 () Bool)

(assert (= bs!1314628 d!1785069))

(declare-fun m!6618870 () Bool)

(assert (=> bs!1314628 m!6618870))

(assert (=> b!5650700 d!1785069))

(declare-fun d!1785071 () Bool)

(declare-fun c!993364 () Bool)

(assert (=> d!1785071 (= c!993364 (isEmpty!34935 s!2326))))

(declare-fun e!3481190 () Bool)

(assert (=> d!1785071 (= (matchZipper!1777 z!1189 s!2326) e!3481190)))

(declare-fun b!5651491 () Bool)

(assert (=> b!5651491 (= e!3481190 (nullableZipper!1614 z!1189))))

(declare-fun b!5651492 () Bool)

(assert (=> b!5651492 (= e!3481190 (matchZipper!1777 (derivationStepZipper!1726 z!1189 (head!12008 s!2326)) (tail!11103 s!2326)))))

(assert (= (and d!1785071 c!993364) b!5651491))

(assert (= (and d!1785071 (not c!993364)) b!5651492))

(assert (=> d!1785071 m!6618334))

(declare-fun m!6618872 () Bool)

(assert (=> b!5651491 m!6618872))

(assert (=> b!5651492 m!6618338))

(assert (=> b!5651492 m!6618338))

(declare-fun m!6618874 () Bool)

(assert (=> b!5651492 m!6618874))

(assert (=> b!5651492 m!6618342))

(assert (=> b!5651492 m!6618874))

(assert (=> b!5651492 m!6618342))

(declare-fun m!6618876 () Bool)

(assert (=> b!5651492 m!6618876))

(assert (=> b!5650700 d!1785071))

(declare-fun bs!1314633 () Bool)

(declare-fun d!1785073 () Bool)

(assert (= bs!1314633 (and d!1785073 d!1784903)))

(declare-fun lambda!304036 () Int)

(assert (=> bs!1314633 (= lambda!304036 lambda!303970)))

(declare-fun bs!1314634 () Bool)

(assert (= bs!1314634 (and d!1785073 d!1784979)))

(assert (=> bs!1314634 (= lambda!304036 lambda!304001)))

(declare-fun bs!1314635 () Bool)

(assert (= bs!1314635 (and d!1785073 d!1784993)))

(assert (=> bs!1314635 (= lambda!304036 lambda!304006)))

(declare-fun bs!1314636 () Bool)

(assert (= bs!1314636 (and d!1785073 d!1785007)))

(assert (=> bs!1314636 (= lambda!304036 lambda!304008)))

(declare-fun b!5651493 () Bool)

(declare-fun e!3481196 () Bool)

(declare-fun lt!2265855 () Regex!15639)

(assert (=> b!5651493 (= e!3481196 (= lt!2265855 (head!12011 lt!2265716)))))

(declare-fun b!5651494 () Bool)

(declare-fun e!3481194 () Regex!15639)

(assert (=> b!5651494 (= e!3481194 (Concat!24484 (h!69540 lt!2265716) (generalisedConcat!1254 (t!376516 lt!2265716))))))

(declare-fun b!5651495 () Bool)

(assert (=> b!5651495 (= e!3481194 EmptyExpr!15639)))

(declare-fun b!5651496 () Bool)

(declare-fun e!3481192 () Bool)

(declare-fun e!3481193 () Bool)

(assert (=> b!5651496 (= e!3481192 e!3481193)))

(declare-fun c!993367 () Bool)

(assert (=> b!5651496 (= c!993367 (isEmpty!34933 lt!2265716))))

(declare-fun b!5651497 () Bool)

(assert (=> b!5651497 (= e!3481193 (isEmptyExpr!1174 lt!2265855))))

(assert (=> d!1785073 e!3481192))

(declare-fun res!2390794 () Bool)

(assert (=> d!1785073 (=> (not res!2390794) (not e!3481192))))

(assert (=> d!1785073 (= res!2390794 (validRegex!7375 lt!2265855))))

(declare-fun e!3481191 () Regex!15639)

(assert (=> d!1785073 (= lt!2265855 e!3481191)))

(declare-fun c!993368 () Bool)

(declare-fun e!3481195 () Bool)

(assert (=> d!1785073 (= c!993368 e!3481195)))

(declare-fun res!2390795 () Bool)

(assert (=> d!1785073 (=> (not res!2390795) (not e!3481195))))

(assert (=> d!1785073 (= res!2390795 ((_ is Cons!63092) lt!2265716))))

(assert (=> d!1785073 (forall!14791 lt!2265716 lambda!304036)))

(assert (=> d!1785073 (= (generalisedConcat!1254 lt!2265716) lt!2265855)))

(declare-fun b!5651498 () Bool)

(assert (=> b!5651498 (= e!3481191 (h!69540 lt!2265716))))

(declare-fun b!5651499 () Bool)

(assert (=> b!5651499 (= e!3481195 (isEmpty!34933 (t!376516 lt!2265716)))))

(declare-fun b!5651500 () Bool)

(assert (=> b!5651500 (= e!3481196 (isConcat!697 lt!2265855))))

(declare-fun b!5651501 () Bool)

(assert (=> b!5651501 (= e!3481193 e!3481196)))

(declare-fun c!993365 () Bool)

(assert (=> b!5651501 (= c!993365 (isEmpty!34933 (tail!11106 lt!2265716)))))

(declare-fun b!5651502 () Bool)

(assert (=> b!5651502 (= e!3481191 e!3481194)))

(declare-fun c!993366 () Bool)

(assert (=> b!5651502 (= c!993366 ((_ is Cons!63092) lt!2265716))))

(assert (= (and d!1785073 res!2390795) b!5651499))

(assert (= (and d!1785073 c!993368) b!5651498))

(assert (= (and d!1785073 (not c!993368)) b!5651502))

(assert (= (and b!5651502 c!993366) b!5651494))

(assert (= (and b!5651502 (not c!993366)) b!5651495))

(assert (= (and d!1785073 res!2390794) b!5651496))

(assert (= (and b!5651496 c!993367) b!5651497))

(assert (= (and b!5651496 (not c!993367)) b!5651501))

(assert (= (and b!5651501 c!993365) b!5651493))

(assert (= (and b!5651501 (not c!993365)) b!5651500))

(declare-fun m!6618878 () Bool)

(assert (=> b!5651499 m!6618878))

(declare-fun m!6618880 () Bool)

(assert (=> b!5651496 m!6618880))

(declare-fun m!6618882 () Bool)

(assert (=> b!5651493 m!6618882))

(declare-fun m!6618884 () Bool)

(assert (=> b!5651497 m!6618884))

(declare-fun m!6618886 () Bool)

(assert (=> d!1785073 m!6618886))

(declare-fun m!6618888 () Bool)

(assert (=> d!1785073 m!6618888))

(declare-fun m!6618890 () Bool)

(assert (=> b!5651494 m!6618890))

(declare-fun m!6618892 () Bool)

(assert (=> b!5651500 m!6618892))

(declare-fun m!6618894 () Bool)

(assert (=> b!5651501 m!6618894))

(assert (=> b!5651501 m!6618894))

(declare-fun m!6618896 () Bool)

(assert (=> b!5651501 m!6618896))

(assert (=> b!5650700 d!1785073))

(declare-fun b!5651545 () Bool)

(declare-fun lt!2265881 () Unit!156088)

(declare-fun lt!2265879 () Unit!156088)

(assert (=> b!5651545 (= lt!2265881 lt!2265879)))

(declare-fun ++!13849 (List!63218 List!63218) List!63218)

(assert (=> b!5651545 (= (++!13849 (++!13849 Nil!63094 (Cons!63094 (h!69542 s!2326) Nil!63094)) (t!376518 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2018 (List!63218 C!31548 List!63218 List!63218) Unit!156088)

(assert (=> b!5651545 (= lt!2265879 (lemmaMoveElementToOtherListKeepsConcatEq!2018 Nil!63094 (h!69542 s!2326) (t!376518 s!2326) s!2326))))

(declare-fun e!3481224 () Option!15648)

(assert (=> b!5651545 (= e!3481224 (findConcatSeparation!2062 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 (++!13849 Nil!63094 (Cons!63094 (h!69542 s!2326) Nil!63094)) (t!376518 s!2326) s!2326))))

(declare-fun b!5651546 () Bool)

(declare-fun res!2390817 () Bool)

(declare-fun e!3481220 () Bool)

(assert (=> b!5651546 (=> (not res!2390817) (not e!3481220))))

(declare-fun lt!2265880 () Option!15648)

(declare-fun get!21736 (Option!15648) tuple2!65472)

(assert (=> b!5651546 (= res!2390817 (matchR!7824 (regOne!31790 (regOne!31790 r!7292)) (_1!36039 (get!21736 lt!2265880))))))

(declare-fun b!5651547 () Bool)

(declare-fun e!3481223 () Bool)

(assert (=> b!5651547 (= e!3481223 (not (isDefined!12351 lt!2265880)))))

(declare-fun b!5651548 () Bool)

(declare-fun e!3481222 () Bool)

(assert (=> b!5651548 (= e!3481222 (matchR!7824 lt!2265690 s!2326))))

(declare-fun b!5651550 () Bool)

(declare-fun res!2390816 () Bool)

(assert (=> b!5651550 (=> (not res!2390816) (not e!3481220))))

(assert (=> b!5651550 (= res!2390816 (matchR!7824 lt!2265690 (_2!36039 (get!21736 lt!2265880))))))

(declare-fun b!5651551 () Bool)

(declare-fun e!3481221 () Option!15648)

(assert (=> b!5651551 (= e!3481221 e!3481224)))

(declare-fun c!993385 () Bool)

(assert (=> b!5651551 (= c!993385 ((_ is Nil!63094) s!2326))))

(declare-fun d!1785075 () Bool)

(assert (=> d!1785075 e!3481223))

(declare-fun res!2390820 () Bool)

(assert (=> d!1785075 (=> res!2390820 e!3481223)))

(assert (=> d!1785075 (= res!2390820 e!3481220)))

(declare-fun res!2390818 () Bool)

(assert (=> d!1785075 (=> (not res!2390818) (not e!3481220))))

(assert (=> d!1785075 (= res!2390818 (isDefined!12351 lt!2265880))))

(assert (=> d!1785075 (= lt!2265880 e!3481221)))

(declare-fun c!993384 () Bool)

(assert (=> d!1785075 (= c!993384 e!3481222)))

(declare-fun res!2390819 () Bool)

(assert (=> d!1785075 (=> (not res!2390819) (not e!3481222))))

(assert (=> d!1785075 (= res!2390819 (matchR!7824 (regOne!31790 (regOne!31790 r!7292)) Nil!63094))))

(assert (=> d!1785075 (validRegex!7375 (regOne!31790 (regOne!31790 r!7292)))))

(assert (=> d!1785075 (= (findConcatSeparation!2062 (regOne!31790 (regOne!31790 r!7292)) lt!2265690 Nil!63094 s!2326 s!2326) lt!2265880)))

(declare-fun b!5651549 () Bool)

(assert (=> b!5651549 (= e!3481220 (= (++!13849 (_1!36039 (get!21736 lt!2265880)) (_2!36039 (get!21736 lt!2265880))) s!2326))))

(declare-fun b!5651552 () Bool)

(assert (=> b!5651552 (= e!3481224 None!15647)))

(declare-fun b!5651553 () Bool)

(assert (=> b!5651553 (= e!3481221 (Some!15647 (tuple2!65473 Nil!63094 s!2326)))))

(assert (= (and d!1785075 res!2390819) b!5651548))

(assert (= (and d!1785075 c!993384) b!5651553))

(assert (= (and d!1785075 (not c!993384)) b!5651551))

(assert (= (and b!5651551 c!993385) b!5651552))

(assert (= (and b!5651551 (not c!993385)) b!5651545))

(assert (= (and d!1785075 res!2390818) b!5651546))

(assert (= (and b!5651546 res!2390817) b!5651550))

(assert (= (and b!5651550 res!2390816) b!5651549))

(assert (= (and d!1785075 (not res!2390820)) b!5651547))

(declare-fun m!6618948 () Bool)

(assert (=> b!5651545 m!6618948))

(assert (=> b!5651545 m!6618948))

(declare-fun m!6618950 () Bool)

(assert (=> b!5651545 m!6618950))

(declare-fun m!6618952 () Bool)

(assert (=> b!5651545 m!6618952))

(assert (=> b!5651545 m!6618948))

(declare-fun m!6618954 () Bool)

(assert (=> b!5651545 m!6618954))

(declare-fun m!6618956 () Bool)

(assert (=> d!1785075 m!6618956))

(declare-fun m!6618958 () Bool)

(assert (=> d!1785075 m!6618958))

(assert (=> d!1785075 m!6618846))

(assert (=> b!5651548 m!6618136))

(declare-fun m!6618960 () Bool)

(assert (=> b!5651550 m!6618960))

(declare-fun m!6618962 () Bool)

(assert (=> b!5651550 m!6618962))

(assert (=> b!5651546 m!6618960))

(declare-fun m!6618964 () Bool)

(assert (=> b!5651546 m!6618964))

(assert (=> b!5651547 m!6618956))

(assert (=> b!5651549 m!6618960))

(declare-fun m!6618966 () Bool)

(assert (=> b!5651549 m!6618966))

(assert (=> b!5650700 d!1785075))

(declare-fun d!1785093 () Bool)

(declare-fun c!993388 () Bool)

(assert (=> d!1785093 (= c!993388 (isEmpty!34935 s!2326))))

(declare-fun e!3481227 () Bool)

(assert (=> d!1785093 (= (matchZipper!1777 lt!2265695 s!2326) e!3481227)))

(declare-fun b!5651556 () Bool)

(assert (=> b!5651556 (= e!3481227 (nullableZipper!1614 lt!2265695))))

(declare-fun b!5651557 () Bool)

(assert (=> b!5651557 (= e!3481227 (matchZipper!1777 (derivationStepZipper!1726 lt!2265695 (head!12008 s!2326)) (tail!11103 s!2326)))))

(assert (= (and d!1785093 c!993388) b!5651556))

(assert (= (and d!1785093 (not c!993388)) b!5651557))

(assert (=> d!1785093 m!6618334))

(declare-fun m!6618968 () Bool)

(assert (=> b!5651556 m!6618968))

(assert (=> b!5651557 m!6618338))

(assert (=> b!5651557 m!6618338))

(declare-fun m!6618970 () Bool)

(assert (=> b!5651557 m!6618970))

(assert (=> b!5651557 m!6618342))

(assert (=> b!5651557 m!6618970))

(assert (=> b!5651557 m!6618342))

(declare-fun m!6618972 () Bool)

(assert (=> b!5651557 m!6618972))

(assert (=> b!5650700 d!1785093))

(declare-fun d!1785095 () Bool)

(assert (=> d!1785095 (= (Exists!2739 lambda!303950) (choose!42780 lambda!303950))))

(declare-fun bs!1314642 () Bool)

(assert (= bs!1314642 d!1785095))

(declare-fun m!6618974 () Bool)

(assert (=> bs!1314642 m!6618974))

(assert (=> b!5650700 d!1785095))

(declare-fun b!5651558 () Bool)

(declare-fun lt!2265884 () Unit!156088)

(declare-fun lt!2265882 () Unit!156088)

(assert (=> b!5651558 (= lt!2265884 lt!2265882)))

(assert (=> b!5651558 (= (++!13849 (++!13849 Nil!63094 (Cons!63094 (h!69542 s!2326) Nil!63094)) (t!376518 s!2326)) s!2326)))

(assert (=> b!5651558 (= lt!2265882 (lemmaMoveElementToOtherListKeepsConcatEq!2018 Nil!63094 (h!69542 s!2326) (t!376518 s!2326) s!2326))))

(declare-fun e!3481232 () Option!15648)

(assert (=> b!5651558 (= e!3481232 (findConcatSeparation!2062 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 (++!13849 Nil!63094 (Cons!63094 (h!69542 s!2326) Nil!63094)) (t!376518 s!2326) s!2326))))

(declare-fun b!5651559 () Bool)

(declare-fun res!2390824 () Bool)

(declare-fun e!3481228 () Bool)

(assert (=> b!5651559 (=> (not res!2390824) (not e!3481228))))

(declare-fun lt!2265883 () Option!15648)

(assert (=> b!5651559 (= res!2390824 (matchR!7824 (regTwo!31790 (regOne!31790 r!7292)) (_1!36039 (get!21736 lt!2265883))))))

(declare-fun b!5651560 () Bool)

(declare-fun e!3481231 () Bool)

(assert (=> b!5651560 (= e!3481231 (not (isDefined!12351 lt!2265883)))))

(declare-fun b!5651561 () Bool)

(declare-fun e!3481230 () Bool)

(assert (=> b!5651561 (= e!3481230 (matchR!7824 lt!2265692 s!2326))))

(declare-fun b!5651563 () Bool)

(declare-fun res!2390823 () Bool)

(assert (=> b!5651563 (=> (not res!2390823) (not e!3481228))))

(assert (=> b!5651563 (= res!2390823 (matchR!7824 lt!2265692 (_2!36039 (get!21736 lt!2265883))))))

(declare-fun b!5651564 () Bool)

(declare-fun e!3481229 () Option!15648)

(assert (=> b!5651564 (= e!3481229 e!3481232)))

(declare-fun c!993390 () Bool)

(assert (=> b!5651564 (= c!993390 ((_ is Nil!63094) s!2326))))

(declare-fun d!1785097 () Bool)

(assert (=> d!1785097 e!3481231))

(declare-fun res!2390827 () Bool)

(assert (=> d!1785097 (=> res!2390827 e!3481231)))

(assert (=> d!1785097 (= res!2390827 e!3481228)))

(declare-fun res!2390825 () Bool)

(assert (=> d!1785097 (=> (not res!2390825) (not e!3481228))))

(assert (=> d!1785097 (= res!2390825 (isDefined!12351 lt!2265883))))

(assert (=> d!1785097 (= lt!2265883 e!3481229)))

(declare-fun c!993389 () Bool)

(assert (=> d!1785097 (= c!993389 e!3481230)))

(declare-fun res!2390826 () Bool)

(assert (=> d!1785097 (=> (not res!2390826) (not e!3481230))))

(assert (=> d!1785097 (= res!2390826 (matchR!7824 (regTwo!31790 (regOne!31790 r!7292)) Nil!63094))))

(assert (=> d!1785097 (validRegex!7375 (regTwo!31790 (regOne!31790 r!7292)))))

(assert (=> d!1785097 (= (findConcatSeparation!2062 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 Nil!63094 s!2326 s!2326) lt!2265883)))

(declare-fun b!5651562 () Bool)

(assert (=> b!5651562 (= e!3481228 (= (++!13849 (_1!36039 (get!21736 lt!2265883)) (_2!36039 (get!21736 lt!2265883))) s!2326))))

(declare-fun b!5651565 () Bool)

(assert (=> b!5651565 (= e!3481232 None!15647)))

(declare-fun b!5651566 () Bool)

(assert (=> b!5651566 (= e!3481229 (Some!15647 (tuple2!65473 Nil!63094 s!2326)))))

(assert (= (and d!1785097 res!2390826) b!5651561))

(assert (= (and d!1785097 c!993389) b!5651566))

(assert (= (and d!1785097 (not c!993389)) b!5651564))

(assert (= (and b!5651564 c!993390) b!5651565))

(assert (= (and b!5651564 (not c!993390)) b!5651558))

(assert (= (and d!1785097 res!2390825) b!5651559))

(assert (= (and b!5651559 res!2390824) b!5651563))

(assert (= (and b!5651563 res!2390823) b!5651562))

(assert (= (and d!1785097 (not res!2390827)) b!5651560))

(assert (=> b!5651558 m!6618948))

(assert (=> b!5651558 m!6618948))

(assert (=> b!5651558 m!6618950))

(assert (=> b!5651558 m!6618952))

(assert (=> b!5651558 m!6618948))

(declare-fun m!6618976 () Bool)

(assert (=> b!5651558 m!6618976))

(declare-fun m!6618978 () Bool)

(assert (=> d!1785097 m!6618978))

(declare-fun m!6618980 () Bool)

(assert (=> d!1785097 m!6618980))

(assert (=> d!1785097 m!6618790))

(declare-fun m!6618982 () Bool)

(assert (=> b!5651561 m!6618982))

(declare-fun m!6618984 () Bool)

(assert (=> b!5651563 m!6618984))

(declare-fun m!6618986 () Bool)

(assert (=> b!5651563 m!6618986))

(assert (=> b!5651559 m!6618984))

(declare-fun m!6618988 () Bool)

(assert (=> b!5651559 m!6618988))

(assert (=> b!5651560 m!6618978))

(assert (=> b!5651562 m!6618984))

(declare-fun m!6618992 () Bool)

(assert (=> b!5651562 m!6618992))

(assert (=> b!5650700 d!1785097))

(declare-fun bs!1314646 () Bool)

(declare-fun b!5651581 () Bool)

(assert (= bs!1314646 (and b!5651581 b!5651391)))

(declare-fun lambda!304049 () Int)

(assert (=> bs!1314646 (not (= lambda!304049 lambda!304015))))

(declare-fun bs!1314649 () Bool)

(assert (= bs!1314649 (and b!5651581 b!5651390)))

(assert (=> bs!1314649 (= (and (= (reg!15968 lt!2265690) (reg!15968 lt!2265715)) (= lt!2265690 lt!2265715)) (= lambda!304049 lambda!304014))))

(declare-fun bs!1314651 () Bool)

(assert (= bs!1314651 (and b!5651581 b!5651203)))

(assert (=> bs!1314651 (not (= lambda!304049 lambda!303978))))

(declare-fun bs!1314652 () Bool)

(assert (= bs!1314652 (and b!5651581 d!1785043)))

(assert (=> bs!1314652 (not (= lambda!304049 lambda!304030))))

(declare-fun bs!1314653 () Bool)

(assert (= bs!1314653 (and b!5651581 b!5650700)))

(assert (=> bs!1314653 (not (= lambda!304049 lambda!303950))))

(assert (=> bs!1314653 (not (= lambda!304049 lambda!303949))))

(declare-fun bs!1314654 () Bool)

(assert (= bs!1314654 (and b!5651581 d!1785057)))

(assert (=> bs!1314654 (not (= lambda!304049 lambda!304034))))

(declare-fun bs!1314655 () Bool)

(assert (= bs!1314655 (and b!5651581 b!5651202)))

(assert (=> bs!1314655 (= (and (= (reg!15968 lt!2265690) (reg!15968 r!7292)) (= lt!2265690 r!7292)) (= lambda!304049 lambda!303975))))

(declare-fun bs!1314656 () Bool)

(assert (= bs!1314656 (and b!5651581 b!5650698)))

(assert (=> bs!1314656 (not (= lambda!304049 lambda!303945))))

(assert (=> bs!1314656 (not (= lambda!304049 lambda!303946))))

(assert (=> bs!1314652 (not (= lambda!304049 lambda!304032))))

(assert (=> bs!1314653 (not (= lambda!304049 lambda!303948))))

(assert (=> bs!1314653 (not (= lambda!304049 lambda!303951))))

(declare-fun bs!1314659 () Bool)

(assert (= bs!1314659 (and b!5651581 d!1785017)))

(assert (=> bs!1314659 (not (= lambda!304049 lambda!304022))))

(assert (=> b!5651581 true))

(assert (=> b!5651581 true))

(declare-fun bs!1314661 () Bool)

(declare-fun b!5651582 () Bool)

(assert (= bs!1314661 (and b!5651582 b!5651391)))

(declare-fun lambda!304051 () Int)

(assert (=> bs!1314661 (= (and (= (regOne!31790 lt!2265690) (regOne!31790 lt!2265715)) (= (regTwo!31790 lt!2265690) (regTwo!31790 lt!2265715))) (= lambda!304051 lambda!304015))))

(declare-fun bs!1314663 () Bool)

(assert (= bs!1314663 (and b!5651582 b!5651390)))

(assert (=> bs!1314663 (not (= lambda!304051 lambda!304014))))

(declare-fun bs!1314665 () Bool)

(assert (= bs!1314665 (and b!5651582 b!5651203)))

(assert (=> bs!1314665 (= (and (= (regOne!31790 lt!2265690) (regOne!31790 r!7292)) (= (regTwo!31790 lt!2265690) (regTwo!31790 r!7292))) (= lambda!304051 lambda!303978))))

(declare-fun bs!1314666 () Bool)

(assert (= bs!1314666 (and b!5651582 b!5650700)))

(assert (=> bs!1314666 (not (= lambda!304051 lambda!303950))))

(assert (=> bs!1314666 (= (and (= (regOne!31790 lt!2265690) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 lt!2265690) lt!2265690)) (= lambda!304051 lambda!303949))))

(declare-fun bs!1314667 () Bool)

(assert (= bs!1314667 (and b!5651582 d!1785057)))

(assert (=> bs!1314667 (not (= lambda!304051 lambda!304034))))

(declare-fun bs!1314668 () Bool)

(assert (= bs!1314668 (and b!5651582 b!5651202)))

(assert (=> bs!1314668 (not (= lambda!304051 lambda!303975))))

(declare-fun bs!1314669 () Bool)

(assert (= bs!1314669 (and b!5651582 b!5650698)))

(assert (=> bs!1314669 (not (= lambda!304051 lambda!303945))))

(assert (=> bs!1314669 (= (and (= (regOne!31790 lt!2265690) (regOne!31790 r!7292)) (= (regTwo!31790 lt!2265690) (regTwo!31790 r!7292))) (= lambda!304051 lambda!303946))))

(declare-fun bs!1314670 () Bool)

(assert (= bs!1314670 (and b!5651582 d!1785043)))

(assert (=> bs!1314670 (= (and (= (regOne!31790 lt!2265690) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 lt!2265690) lt!2265690)) (= lambda!304051 lambda!304032))))

(assert (=> bs!1314666 (not (= lambda!304051 lambda!303948))))

(declare-fun bs!1314671 () Bool)

(assert (= bs!1314671 (and b!5651582 b!5651581)))

(assert (=> bs!1314671 (not (= lambda!304051 lambda!304049))))

(assert (=> bs!1314670 (not (= lambda!304051 lambda!304030))))

(assert (=> bs!1314666 (= (and (= (regOne!31790 lt!2265690) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 lt!2265690) lt!2265692)) (= lambda!304051 lambda!303951))))

(declare-fun bs!1314672 () Bool)

(assert (= bs!1314672 (and b!5651582 d!1785017)))

(assert (=> bs!1314672 (not (= lambda!304051 lambda!304022))))

(assert (=> b!5651582 true))

(assert (=> b!5651582 true))

(declare-fun b!5651572 () Bool)

(declare-fun c!993392 () Bool)

(assert (=> b!5651572 (= c!993392 ((_ is ElementMatch!15639) lt!2265690))))

(declare-fun e!3481235 () Bool)

(declare-fun e!3481240 () Bool)

(assert (=> b!5651572 (= e!3481235 e!3481240)))

(declare-fun b!5651573 () Bool)

(declare-fun e!3481238 () Bool)

(declare-fun e!3481236 () Bool)

(assert (=> b!5651573 (= e!3481238 e!3481236)))

(declare-fun res!2390830 () Bool)

(assert (=> b!5651573 (= res!2390830 (matchRSpec!2742 (regOne!31791 lt!2265690) s!2326))))

(assert (=> b!5651573 (=> res!2390830 e!3481236)))

(declare-fun b!5651574 () Bool)

(declare-fun c!993394 () Bool)

(assert (=> b!5651574 (= c!993394 ((_ is Union!15639) lt!2265690))))

(assert (=> b!5651574 (= e!3481240 e!3481238)))

(declare-fun call!427498 () Bool)

(declare-fun bm!427492 () Bool)

(declare-fun c!993395 () Bool)

(assert (=> bm!427492 (= call!427498 (Exists!2739 (ite c!993395 lambda!304049 lambda!304051)))))

(declare-fun b!5651575 () Bool)

(declare-fun e!3481239 () Bool)

(assert (=> b!5651575 (= e!3481239 e!3481235)))

(declare-fun res!2390831 () Bool)

(assert (=> b!5651575 (= res!2390831 (not ((_ is EmptyLang!15639) lt!2265690)))))

(assert (=> b!5651575 (=> (not res!2390831) (not e!3481235))))

(declare-fun b!5651577 () Bool)

(assert (=> b!5651577 (= e!3481240 (= s!2326 (Cons!63094 (c!993109 lt!2265690) Nil!63094)))))

(declare-fun b!5651578 () Bool)

(assert (=> b!5651578 (= e!3481236 (matchRSpec!2742 (regTwo!31791 lt!2265690) s!2326))))

(declare-fun b!5651579 () Bool)

(declare-fun call!427497 () Bool)

(assert (=> b!5651579 (= e!3481239 call!427497)))

(declare-fun b!5651576 () Bool)

(declare-fun e!3481237 () Bool)

(assert (=> b!5651576 (= e!3481238 e!3481237)))

(assert (=> b!5651576 (= c!993395 ((_ is Star!15639) lt!2265690))))

(declare-fun d!1785099 () Bool)

(declare-fun c!993393 () Bool)

(assert (=> d!1785099 (= c!993393 ((_ is EmptyExpr!15639) lt!2265690))))

(assert (=> d!1785099 (= (matchRSpec!2742 lt!2265690 s!2326) e!3481239)))

(declare-fun bm!427493 () Bool)

(assert (=> bm!427493 (= call!427497 (isEmpty!34935 s!2326))))

(declare-fun b!5651580 () Bool)

(declare-fun res!2390829 () Bool)

(declare-fun e!3481241 () Bool)

(assert (=> b!5651580 (=> res!2390829 e!3481241)))

(assert (=> b!5651580 (= res!2390829 call!427497)))

(assert (=> b!5651580 (= e!3481237 e!3481241)))

(assert (=> b!5651581 (= e!3481241 call!427498)))

(assert (=> b!5651582 (= e!3481237 call!427498)))

(assert (= (and d!1785099 c!993393) b!5651579))

(assert (= (and d!1785099 (not c!993393)) b!5651575))

(assert (= (and b!5651575 res!2390831) b!5651572))

(assert (= (and b!5651572 c!993392) b!5651577))

(assert (= (and b!5651572 (not c!993392)) b!5651574))

(assert (= (and b!5651574 c!993394) b!5651573))

(assert (= (and b!5651574 (not c!993394)) b!5651576))

(assert (= (and b!5651573 (not res!2390830)) b!5651578))

(assert (= (and b!5651576 c!993395) b!5651580))

(assert (= (and b!5651576 (not c!993395)) b!5651582))

(assert (= (and b!5651580 (not res!2390829)) b!5651581))

(assert (= (or b!5651581 b!5651582) bm!427492))

(assert (= (or b!5651579 b!5651580) bm!427493))

(declare-fun m!6619038 () Bool)

(assert (=> b!5651573 m!6619038))

(declare-fun m!6619040 () Bool)

(assert (=> bm!427492 m!6619040))

(declare-fun m!6619042 () Bool)

(assert (=> b!5651578 m!6619042))

(assert (=> bm!427493 m!6618334))

(assert (=> b!5650700 d!1785099))

(declare-fun d!1785115 () Bool)

(declare-fun c!993402 () Bool)

(assert (=> d!1785115 (= c!993402 (isEmpty!34935 s!2326))))

(declare-fun e!3481254 () Bool)

(assert (=> d!1785115 (= (matchZipper!1777 lt!2265721 s!2326) e!3481254)))

(declare-fun b!5651605 () Bool)

(assert (=> b!5651605 (= e!3481254 (nullableZipper!1614 lt!2265721))))

(declare-fun b!5651606 () Bool)

(assert (=> b!5651606 (= e!3481254 (matchZipper!1777 (derivationStepZipper!1726 lt!2265721 (head!12008 s!2326)) (tail!11103 s!2326)))))

(assert (= (and d!1785115 c!993402) b!5651605))

(assert (= (and d!1785115 (not c!993402)) b!5651606))

(assert (=> d!1785115 m!6618334))

(declare-fun m!6619044 () Bool)

(assert (=> b!5651605 m!6619044))

(assert (=> b!5651606 m!6618338))

(assert (=> b!5651606 m!6618338))

(declare-fun m!6619046 () Bool)

(assert (=> b!5651606 m!6619046))

(assert (=> b!5651606 m!6618342))

(assert (=> b!5651606 m!6619046))

(assert (=> b!5651606 m!6618342))

(declare-fun m!6619048 () Bool)

(assert (=> b!5651606 m!6619048))

(assert (=> b!5650700 d!1785115))

(declare-fun bs!1314673 () Bool)

(declare-fun d!1785117 () Bool)

(assert (= bs!1314673 (and d!1785117 b!5651391)))

(declare-fun lambda!304053 () Int)

(assert (=> bs!1314673 (not (= lambda!304053 lambda!304015))))

(declare-fun bs!1314674 () Bool)

(assert (= bs!1314674 (and d!1785117 b!5651390)))

(assert (=> bs!1314674 (not (= lambda!304053 lambda!304014))))

(declare-fun bs!1314676 () Bool)

(assert (= bs!1314676 (and d!1785117 b!5651203)))

(assert (=> bs!1314676 (not (= lambda!304053 lambda!303978))))

(declare-fun bs!1314677 () Bool)

(assert (= bs!1314677 (and d!1785117 b!5650700)))

(assert (=> bs!1314677 (= lambda!304053 lambda!303950)))

(assert (=> bs!1314677 (not (= lambda!304053 lambda!303949))))

(declare-fun bs!1314678 () Bool)

(assert (= bs!1314678 (and d!1785117 d!1785057)))

(assert (=> bs!1314678 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 (regOne!31790 r!7292))) (= lt!2265692 lt!2265690)) (= lambda!304053 lambda!304034))))

(declare-fun bs!1314679 () Bool)

(assert (= bs!1314679 (and d!1785117 b!5651202)))

(assert (=> bs!1314679 (not (= lambda!304053 lambda!303975))))

(declare-fun bs!1314680 () Bool)

(assert (= bs!1314680 (and d!1785117 b!5650698)))

(assert (=> bs!1314680 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265692 (regTwo!31790 r!7292))) (= lambda!304053 lambda!303945))))

(declare-fun bs!1314681 () Bool)

(assert (= bs!1314681 (and d!1785117 b!5651582)))

(assert (=> bs!1314681 (not (= lambda!304053 lambda!304051))))

(assert (=> bs!1314680 (not (= lambda!304053 lambda!303946))))

(declare-fun bs!1314682 () Bool)

(assert (= bs!1314682 (and d!1785117 d!1785043)))

(assert (=> bs!1314682 (not (= lambda!304053 lambda!304032))))

(assert (=> bs!1314677 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 (regOne!31790 r!7292))) (= lt!2265692 lt!2265690)) (= lambda!304053 lambda!303948))))

(declare-fun bs!1314683 () Bool)

(assert (= bs!1314683 (and d!1785117 b!5651581)))

(assert (=> bs!1314683 (not (= lambda!304053 lambda!304049))))

(assert (=> bs!1314682 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 (regOne!31790 r!7292))) (= lt!2265692 lt!2265690)) (= lambda!304053 lambda!304030))))

(assert (=> bs!1314677 (not (= lambda!304053 lambda!303951))))

(declare-fun bs!1314684 () Bool)

(assert (= bs!1314684 (and d!1785117 d!1785017)))

(assert (=> bs!1314684 (= lambda!304053 lambda!304022)))

(assert (=> d!1785117 true))

(assert (=> d!1785117 true))

(assert (=> d!1785117 true))

(declare-fun lambda!304054 () Int)

(assert (=> bs!1314673 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 lt!2265715)) (= lt!2265692 (regTwo!31790 lt!2265715))) (= lambda!304054 lambda!304015))))

(assert (=> bs!1314674 (not (= lambda!304054 lambda!304014))))

(assert (=> bs!1314676 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265692 (regTwo!31790 r!7292))) (= lambda!304054 lambda!303978))))

(declare-fun bs!1314685 () Bool)

(assert (= bs!1314685 d!1785117))

(assert (=> bs!1314685 (not (= lambda!304054 lambda!304053))))

(assert (=> bs!1314677 (not (= lambda!304054 lambda!303950))))

(assert (=> bs!1314677 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 (regOne!31790 r!7292))) (= lt!2265692 lt!2265690)) (= lambda!304054 lambda!303949))))

(assert (=> bs!1314678 (not (= lambda!304054 lambda!304034))))

(assert (=> bs!1314679 (not (= lambda!304054 lambda!303975))))

(assert (=> bs!1314680 (not (= lambda!304054 lambda!303945))))

(assert (=> bs!1314681 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 lt!2265690)) (= lt!2265692 (regTwo!31790 lt!2265690))) (= lambda!304054 lambda!304051))))

(assert (=> bs!1314680 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 r!7292)) (= lt!2265692 (regTwo!31790 r!7292))) (= lambda!304054 lambda!303946))))

(assert (=> bs!1314682 (= (and (= (regTwo!31790 (regOne!31790 r!7292)) (regOne!31790 (regOne!31790 r!7292))) (= lt!2265692 lt!2265690)) (= lambda!304054 lambda!304032))))

(assert (=> bs!1314677 (not (= lambda!304054 lambda!303948))))

(assert (=> bs!1314683 (not (= lambda!304054 lambda!304049))))

(assert (=> bs!1314682 (not (= lambda!304054 lambda!304030))))

(assert (=> bs!1314677 (= lambda!304054 lambda!303951)))

(assert (=> bs!1314684 (not (= lambda!304054 lambda!304022))))

(assert (=> d!1785117 true))

(assert (=> d!1785117 true))

(assert (=> d!1785117 true))

(assert (=> d!1785117 (= (Exists!2739 lambda!304053) (Exists!2739 lambda!304054))))

(declare-fun lt!2265895 () Unit!156088)

(assert (=> d!1785117 (= lt!2265895 (choose!42782 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 s!2326))))

(assert (=> d!1785117 (validRegex!7375 (regTwo!31790 (regOne!31790 r!7292)))))

(assert (=> d!1785117 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1368 (regTwo!31790 (regOne!31790 r!7292)) lt!2265692 s!2326) lt!2265895)))

(declare-fun m!6619062 () Bool)

(assert (=> bs!1314685 m!6619062))

(declare-fun m!6619064 () Bool)

(assert (=> bs!1314685 m!6619064))

(declare-fun m!6619066 () Bool)

(assert (=> bs!1314685 m!6619066))

(assert (=> bs!1314685 m!6618790))

(assert (=> b!5650700 d!1785117))

(declare-fun d!1785121 () Bool)

(assert (=> d!1785121 (= (matchR!7824 lt!2265690 s!2326) (matchRSpec!2742 lt!2265690 s!2326))))

(declare-fun lt!2265900 () Unit!156088)

(assert (=> d!1785121 (= lt!2265900 (choose!42773 lt!2265690 s!2326))))

(assert (=> d!1785121 (validRegex!7375 lt!2265690)))

(assert (=> d!1785121 (= (mainMatchTheorem!2742 lt!2265690 s!2326) lt!2265900)))

(declare-fun bs!1314686 () Bool)

(assert (= bs!1314686 d!1785121))

(assert (=> bs!1314686 m!6618136))

(assert (=> bs!1314686 m!6618102))

(declare-fun m!6619068 () Bool)

(assert (=> bs!1314686 m!6619068))

(assert (=> bs!1314686 m!6618670))

(assert (=> b!5650700 d!1785121))

(declare-fun bs!1314687 () Bool)

(declare-fun d!1785123 () Bool)

(assert (= bs!1314687 (and d!1785123 d!1785073)))

(declare-fun lambda!304055 () Int)

(assert (=> bs!1314687 (= lambda!304055 lambda!304036)))

(declare-fun bs!1314688 () Bool)

(assert (= bs!1314688 (and d!1785123 d!1784993)))

(assert (=> bs!1314688 (= lambda!304055 lambda!304006)))

(declare-fun bs!1314689 () Bool)

(assert (= bs!1314689 (and d!1785123 d!1785007)))

(assert (=> bs!1314689 (= lambda!304055 lambda!304008)))

(declare-fun bs!1314690 () Bool)

(assert (= bs!1314690 (and d!1785123 d!1784903)))

(assert (=> bs!1314690 (= lambda!304055 lambda!303970)))

(declare-fun bs!1314691 () Bool)

(assert (= bs!1314691 (and d!1785123 d!1784979)))

(assert (=> bs!1314691 (= lambda!304055 lambda!304001)))

(declare-fun b!5651651 () Bool)

(declare-fun e!3481279 () Bool)

(declare-fun lt!2265901 () Regex!15639)

(assert (=> b!5651651 (= e!3481279 (= lt!2265901 (head!12011 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun b!5651652 () Bool)

(declare-fun e!3481277 () Regex!15639)

(assert (=> b!5651652 (= e!3481277 (Concat!24484 (h!69540 (exprs!5523 (h!69541 zl!343))) (generalisedConcat!1254 (t!376516 (exprs!5523 (h!69541 zl!343))))))))

(declare-fun b!5651653 () Bool)

(assert (=> b!5651653 (= e!3481277 EmptyExpr!15639)))

(declare-fun b!5651654 () Bool)

(declare-fun e!3481275 () Bool)

(declare-fun e!3481276 () Bool)

(assert (=> b!5651654 (= e!3481275 e!3481276)))

(declare-fun c!993408 () Bool)

(assert (=> b!5651654 (= c!993408 (isEmpty!34933 (exprs!5523 (h!69541 zl!343))))))

(declare-fun b!5651655 () Bool)

(assert (=> b!5651655 (= e!3481276 (isEmptyExpr!1174 lt!2265901))))

(assert (=> d!1785123 e!3481275))

(declare-fun res!2390850 () Bool)

(assert (=> d!1785123 (=> (not res!2390850) (not e!3481275))))

(assert (=> d!1785123 (= res!2390850 (validRegex!7375 lt!2265901))))

(declare-fun e!3481274 () Regex!15639)

(assert (=> d!1785123 (= lt!2265901 e!3481274)))

(declare-fun c!993409 () Bool)

(declare-fun e!3481278 () Bool)

(assert (=> d!1785123 (= c!993409 e!3481278)))

(declare-fun res!2390851 () Bool)

(assert (=> d!1785123 (=> (not res!2390851) (not e!3481278))))

(assert (=> d!1785123 (= res!2390851 ((_ is Cons!63092) (exprs!5523 (h!69541 zl!343))))))

(assert (=> d!1785123 (forall!14791 (exprs!5523 (h!69541 zl!343)) lambda!304055)))

(assert (=> d!1785123 (= (generalisedConcat!1254 (exprs!5523 (h!69541 zl!343))) lt!2265901)))

(declare-fun b!5651656 () Bool)

(assert (=> b!5651656 (= e!3481274 (h!69540 (exprs!5523 (h!69541 zl!343))))))

(declare-fun b!5651657 () Bool)

(assert (=> b!5651657 (= e!3481278 (isEmpty!34933 (t!376516 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun b!5651658 () Bool)

(assert (=> b!5651658 (= e!3481279 (isConcat!697 lt!2265901))))

(declare-fun b!5651659 () Bool)

(assert (=> b!5651659 (= e!3481276 e!3481279)))

(declare-fun c!993406 () Bool)

(assert (=> b!5651659 (= c!993406 (isEmpty!34933 (tail!11106 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun b!5651660 () Bool)

(assert (=> b!5651660 (= e!3481274 e!3481277)))

(declare-fun c!993407 () Bool)

(assert (=> b!5651660 (= c!993407 ((_ is Cons!63092) (exprs!5523 (h!69541 zl!343))))))

(assert (= (and d!1785123 res!2390851) b!5651657))

(assert (= (and d!1785123 c!993409) b!5651656))

(assert (= (and d!1785123 (not c!993409)) b!5651660))

(assert (= (and b!5651660 c!993407) b!5651652))

(assert (= (and b!5651660 (not c!993407)) b!5651653))

(assert (= (and d!1785123 res!2390850) b!5651654))

(assert (= (and b!5651654 c!993408) b!5651655))

(assert (= (and b!5651654 (not c!993408)) b!5651659))

(assert (= (and b!5651659 c!993406) b!5651651))

(assert (= (and b!5651659 (not c!993406)) b!5651658))

(assert (=> b!5651657 m!6618162))

(declare-fun m!6619072 () Bool)

(assert (=> b!5651654 m!6619072))

(declare-fun m!6619074 () Bool)

(assert (=> b!5651651 m!6619074))

(declare-fun m!6619076 () Bool)

(assert (=> b!5651655 m!6619076))

(declare-fun m!6619078 () Bool)

(assert (=> d!1785123 m!6619078))

(declare-fun m!6619080 () Bool)

(assert (=> d!1785123 m!6619080))

(assert (=> b!5651652 m!6618100))

(declare-fun m!6619082 () Bool)

(assert (=> b!5651658 m!6619082))

(declare-fun m!6619084 () Bool)

(assert (=> b!5651659 m!6619084))

(assert (=> b!5651659 m!6619084))

(declare-fun m!6619086 () Bool)

(assert (=> b!5651659 m!6619086))

(assert (=> b!5650679 d!1785123))

(declare-fun d!1785125 () Bool)

(declare-fun nullableFct!1762 (Regex!15639) Bool)

(assert (=> d!1785125 (= (nullable!5671 (regOne!31790 (regOne!31790 r!7292))) (nullableFct!1762 (regOne!31790 (regOne!31790 r!7292))))))

(declare-fun bs!1314692 () Bool)

(assert (= bs!1314692 d!1785125))

(declare-fun m!6619088 () Bool)

(assert (=> bs!1314692 m!6619088))

(assert (=> b!5650678 d!1785125))

(declare-fun d!1785127 () Bool)

(assert (=> d!1785127 (= (Exists!2739 lambda!303945) (choose!42780 lambda!303945))))

(declare-fun bs!1314693 () Bool)

(assert (= bs!1314693 d!1785127))

(declare-fun m!6619090 () Bool)

(assert (=> bs!1314693 m!6619090))

(assert (=> b!5650698 d!1785127))

(declare-fun b!5651685 () Bool)

(declare-fun lt!2265904 () Unit!156088)

(declare-fun lt!2265902 () Unit!156088)

(assert (=> b!5651685 (= lt!2265904 lt!2265902)))

(assert (=> b!5651685 (= (++!13849 (++!13849 Nil!63094 (Cons!63094 (h!69542 s!2326) Nil!63094)) (t!376518 s!2326)) s!2326)))

(assert (=> b!5651685 (= lt!2265902 (lemmaMoveElementToOtherListKeepsConcatEq!2018 Nil!63094 (h!69542 s!2326) (t!376518 s!2326) s!2326))))

(declare-fun e!3481295 () Option!15648)

(assert (=> b!5651685 (= e!3481295 (findConcatSeparation!2062 (regOne!31790 r!7292) (regTwo!31790 r!7292) (++!13849 Nil!63094 (Cons!63094 (h!69542 s!2326) Nil!63094)) (t!376518 s!2326) s!2326))))

(declare-fun b!5651686 () Bool)

(declare-fun res!2390853 () Bool)

(declare-fun e!3481291 () Bool)

(assert (=> b!5651686 (=> (not res!2390853) (not e!3481291))))

(declare-fun lt!2265903 () Option!15648)

(assert (=> b!5651686 (= res!2390853 (matchR!7824 (regOne!31790 r!7292) (_1!36039 (get!21736 lt!2265903))))))

(declare-fun b!5651687 () Bool)

(declare-fun e!3481294 () Bool)

(assert (=> b!5651687 (= e!3481294 (not (isDefined!12351 lt!2265903)))))

(declare-fun b!5651688 () Bool)

(declare-fun e!3481293 () Bool)

(assert (=> b!5651688 (= e!3481293 (matchR!7824 (regTwo!31790 r!7292) s!2326))))

(declare-fun b!5651690 () Bool)

(declare-fun res!2390852 () Bool)

(assert (=> b!5651690 (=> (not res!2390852) (not e!3481291))))

(assert (=> b!5651690 (= res!2390852 (matchR!7824 (regTwo!31790 r!7292) (_2!36039 (get!21736 lt!2265903))))))

(declare-fun b!5651691 () Bool)

(declare-fun e!3481292 () Option!15648)

(assert (=> b!5651691 (= e!3481292 e!3481295)))

(declare-fun c!993411 () Bool)

(assert (=> b!5651691 (= c!993411 ((_ is Nil!63094) s!2326))))

(declare-fun d!1785129 () Bool)

(assert (=> d!1785129 e!3481294))

(declare-fun res!2390856 () Bool)

(assert (=> d!1785129 (=> res!2390856 e!3481294)))

(assert (=> d!1785129 (= res!2390856 e!3481291)))

(declare-fun res!2390854 () Bool)

(assert (=> d!1785129 (=> (not res!2390854) (not e!3481291))))

(assert (=> d!1785129 (= res!2390854 (isDefined!12351 lt!2265903))))

(assert (=> d!1785129 (= lt!2265903 e!3481292)))

(declare-fun c!993410 () Bool)

(assert (=> d!1785129 (= c!993410 e!3481293)))

(declare-fun res!2390855 () Bool)

(assert (=> d!1785129 (=> (not res!2390855) (not e!3481293))))

(assert (=> d!1785129 (= res!2390855 (matchR!7824 (regOne!31790 r!7292) Nil!63094))))

(assert (=> d!1785129 (validRegex!7375 (regOne!31790 r!7292))))

(assert (=> d!1785129 (= (findConcatSeparation!2062 (regOne!31790 r!7292) (regTwo!31790 r!7292) Nil!63094 s!2326 s!2326) lt!2265903)))

(declare-fun b!5651689 () Bool)

(assert (=> b!5651689 (= e!3481291 (= (++!13849 (_1!36039 (get!21736 lt!2265903)) (_2!36039 (get!21736 lt!2265903))) s!2326))))

(declare-fun b!5651692 () Bool)

(assert (=> b!5651692 (= e!3481295 None!15647)))

(declare-fun b!5651693 () Bool)

(assert (=> b!5651693 (= e!3481292 (Some!15647 (tuple2!65473 Nil!63094 s!2326)))))

(assert (= (and d!1785129 res!2390855) b!5651688))

(assert (= (and d!1785129 c!993410) b!5651693))

(assert (= (and d!1785129 (not c!993410)) b!5651691))

(assert (= (and b!5651691 c!993411) b!5651692))

(assert (= (and b!5651691 (not c!993411)) b!5651685))

(assert (= (and d!1785129 res!2390854) b!5651686))

(assert (= (and b!5651686 res!2390853) b!5651690))

(assert (= (and b!5651690 res!2390852) b!5651689))

(assert (= (and d!1785129 (not res!2390856)) b!5651687))

(assert (=> b!5651685 m!6618948))

(assert (=> b!5651685 m!6618948))

(assert (=> b!5651685 m!6618950))

(assert (=> b!5651685 m!6618952))

(assert (=> b!5651685 m!6618948))

(declare-fun m!6619092 () Bool)

(assert (=> b!5651685 m!6619092))

(declare-fun m!6619094 () Bool)

(assert (=> d!1785129 m!6619094))

(declare-fun m!6619096 () Bool)

(assert (=> d!1785129 m!6619096))

(declare-fun m!6619098 () Bool)

(assert (=> d!1785129 m!6619098))

(declare-fun m!6619100 () Bool)

(assert (=> b!5651688 m!6619100))

(declare-fun m!6619102 () Bool)

(assert (=> b!5651690 m!6619102))

(declare-fun m!6619104 () Bool)

(assert (=> b!5651690 m!6619104))

(assert (=> b!5651686 m!6619102))

(declare-fun m!6619106 () Bool)

(assert (=> b!5651686 m!6619106))

(assert (=> b!5651687 m!6619094))

(assert (=> b!5651689 m!6619102))

(declare-fun m!6619108 () Bool)

(assert (=> b!5651689 m!6619108))

(assert (=> b!5650698 d!1785129))

(declare-fun d!1785137 () Bool)

(assert (=> d!1785137 (= (Exists!2739 lambda!303946) (choose!42780 lambda!303946))))

(declare-fun bs!1314697 () Bool)

(assert (= bs!1314697 d!1785137))

(declare-fun m!6619110 () Bool)

(assert (=> bs!1314697 m!6619110))

(assert (=> b!5650698 d!1785137))

(declare-fun bs!1314698 () Bool)

(declare-fun d!1785139 () Bool)

(assert (= bs!1314698 (and d!1785139 b!5651391)))

(declare-fun lambda!304056 () Int)

(assert (=> bs!1314698 (not (= lambda!304056 lambda!304015))))

(declare-fun bs!1314699 () Bool)

(assert (= bs!1314699 (and d!1785139 b!5651390)))

(assert (=> bs!1314699 (not (= lambda!304056 lambda!304014))))

(declare-fun bs!1314700 () Bool)

(assert (= bs!1314700 (and d!1785139 b!5651203)))

(assert (=> bs!1314700 (not (= lambda!304056 lambda!303978))))

(declare-fun bs!1314701 () Bool)

(assert (= bs!1314701 (and d!1785139 d!1785117)))

(assert (=> bs!1314701 (= (and (= (regOne!31790 r!7292) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265692)) (= lambda!304056 lambda!304053))))

(declare-fun bs!1314702 () Bool)

(assert (= bs!1314702 (and d!1785139 b!5650700)))

(assert (=> bs!1314702 (= (and (= (regOne!31790 r!7292) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265692)) (= lambda!304056 lambda!303950))))

(assert (=> bs!1314702 (not (= lambda!304056 lambda!303949))))

(declare-fun bs!1314703 () Bool)

(assert (= bs!1314703 (and d!1785139 d!1785057)))

(assert (=> bs!1314703 (= (and (= (regOne!31790 r!7292) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265690)) (= lambda!304056 lambda!304034))))

(declare-fun bs!1314704 () Bool)

(assert (= bs!1314704 (and d!1785139 b!5651202)))

(assert (=> bs!1314704 (not (= lambda!304056 lambda!303975))))

(declare-fun bs!1314705 () Bool)

(assert (= bs!1314705 (and d!1785139 b!5650698)))

(assert (=> bs!1314705 (= lambda!304056 lambda!303945)))

(declare-fun bs!1314706 () Bool)

(assert (= bs!1314706 (and d!1785139 b!5651582)))

(assert (=> bs!1314706 (not (= lambda!304056 lambda!304051))))

(assert (=> bs!1314705 (not (= lambda!304056 lambda!303946))))

(declare-fun bs!1314707 () Bool)

(assert (= bs!1314707 (and d!1785139 d!1785043)))

(assert (=> bs!1314707 (not (= lambda!304056 lambda!304032))))

(assert (=> bs!1314701 (not (= lambda!304056 lambda!304054))))

(assert (=> bs!1314702 (= (and (= (regOne!31790 r!7292) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265690)) (= lambda!304056 lambda!303948))))

(declare-fun bs!1314708 () Bool)

(assert (= bs!1314708 (and d!1785139 b!5651581)))

(assert (=> bs!1314708 (not (= lambda!304056 lambda!304049))))

(assert (=> bs!1314707 (= (and (= (regOne!31790 r!7292) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265690)) (= lambda!304056 lambda!304030))))

(assert (=> bs!1314702 (not (= lambda!304056 lambda!303951))))

(declare-fun bs!1314709 () Bool)

(assert (= bs!1314709 (and d!1785139 d!1785017)))

(assert (=> bs!1314709 (= (and (= (regOne!31790 r!7292) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265692)) (= lambda!304056 lambda!304022))))

(assert (=> d!1785139 true))

(assert (=> d!1785139 true))

(assert (=> d!1785139 true))

(assert (=> d!1785139 (= (isDefined!12351 (findConcatSeparation!2062 (regOne!31790 r!7292) (regTwo!31790 r!7292) Nil!63094 s!2326 s!2326)) (Exists!2739 lambda!304056))))

(declare-fun lt!2265905 () Unit!156088)

(assert (=> d!1785139 (= lt!2265905 (choose!42779 (regOne!31790 r!7292) (regTwo!31790 r!7292) s!2326))))

(assert (=> d!1785139 (validRegex!7375 (regOne!31790 r!7292))))

(assert (=> d!1785139 (= (lemmaFindConcatSeparationEquivalentToExists!1826 (regOne!31790 r!7292) (regTwo!31790 r!7292) s!2326) lt!2265905)))

(declare-fun bs!1314710 () Bool)

(assert (= bs!1314710 d!1785139))

(assert (=> bs!1314710 m!6618156))

(assert (=> bs!1314710 m!6618158))

(declare-fun m!6619112 () Bool)

(assert (=> bs!1314710 m!6619112))

(declare-fun m!6619114 () Bool)

(assert (=> bs!1314710 m!6619114))

(assert (=> bs!1314710 m!6619098))

(assert (=> bs!1314710 m!6618156))

(assert (=> b!5650698 d!1785139))

(declare-fun bs!1314711 () Bool)

(declare-fun d!1785141 () Bool)

(assert (= bs!1314711 (and d!1785141 b!5651391)))

(declare-fun lambda!304057 () Int)

(assert (=> bs!1314711 (not (= lambda!304057 lambda!304015))))

(declare-fun bs!1314712 () Bool)

(assert (= bs!1314712 (and d!1785141 b!5651390)))

(assert (=> bs!1314712 (not (= lambda!304057 lambda!304014))))

(declare-fun bs!1314713 () Bool)

(assert (= bs!1314713 (and d!1785141 b!5651203)))

(assert (=> bs!1314713 (not (= lambda!304057 lambda!303978))))

(declare-fun bs!1314714 () Bool)

(assert (= bs!1314714 (and d!1785141 b!5650700)))

(assert (=> bs!1314714 (= (and (= (regOne!31790 r!7292) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265692)) (= lambda!304057 lambda!303950))))

(assert (=> bs!1314714 (not (= lambda!304057 lambda!303949))))

(declare-fun bs!1314715 () Bool)

(assert (= bs!1314715 (and d!1785141 d!1785057)))

(assert (=> bs!1314715 (= (and (= (regOne!31790 r!7292) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265690)) (= lambda!304057 lambda!304034))))

(declare-fun bs!1314716 () Bool)

(assert (= bs!1314716 (and d!1785141 b!5651202)))

(assert (=> bs!1314716 (not (= lambda!304057 lambda!303975))))

(declare-fun bs!1314717 () Bool)

(assert (= bs!1314717 (and d!1785141 b!5650698)))

(assert (=> bs!1314717 (= lambda!304057 lambda!303945)))

(declare-fun bs!1314718 () Bool)

(assert (= bs!1314718 (and d!1785141 b!5651582)))

(assert (=> bs!1314718 (not (= lambda!304057 lambda!304051))))

(assert (=> bs!1314717 (not (= lambda!304057 lambda!303946))))

(declare-fun bs!1314719 () Bool)

(assert (= bs!1314719 (and d!1785141 d!1785043)))

(assert (=> bs!1314719 (not (= lambda!304057 lambda!304032))))

(declare-fun bs!1314720 () Bool)

(assert (= bs!1314720 (and d!1785141 d!1785117)))

(assert (=> bs!1314720 (not (= lambda!304057 lambda!304054))))

(assert (=> bs!1314714 (= (and (= (regOne!31790 r!7292) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265690)) (= lambda!304057 lambda!303948))))

(declare-fun bs!1314721 () Bool)

(assert (= bs!1314721 (and d!1785141 d!1785139)))

(assert (=> bs!1314721 (= lambda!304057 lambda!304056)))

(assert (=> bs!1314720 (= (and (= (regOne!31790 r!7292) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265692)) (= lambda!304057 lambda!304053))))

(declare-fun bs!1314722 () Bool)

(assert (= bs!1314722 (and d!1785141 b!5651581)))

(assert (=> bs!1314722 (not (= lambda!304057 lambda!304049))))

(assert (=> bs!1314719 (= (and (= (regOne!31790 r!7292) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265690)) (= lambda!304057 lambda!304030))))

(assert (=> bs!1314714 (not (= lambda!304057 lambda!303951))))

(declare-fun bs!1314723 () Bool)

(assert (= bs!1314723 (and d!1785141 d!1785017)))

(assert (=> bs!1314723 (= (and (= (regOne!31790 r!7292) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265692)) (= lambda!304057 lambda!304022))))

(assert (=> d!1785141 true))

(assert (=> d!1785141 true))

(assert (=> d!1785141 true))

(declare-fun lambda!304058 () Int)

(assert (=> bs!1314711 (= (and (= (regOne!31790 r!7292) (regOne!31790 lt!2265715)) (= (regTwo!31790 r!7292) (regTwo!31790 lt!2265715))) (= lambda!304058 lambda!304015))))

(assert (=> bs!1314712 (not (= lambda!304058 lambda!304014))))

(assert (=> bs!1314713 (= lambda!304058 lambda!303978)))

(assert (=> bs!1314714 (not (= lambda!304058 lambda!303950))))

(assert (=> bs!1314714 (= (and (= (regOne!31790 r!7292) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265690)) (= lambda!304058 lambda!303949))))

(assert (=> bs!1314715 (not (= lambda!304058 lambda!304034))))

(assert (=> bs!1314716 (not (= lambda!304058 lambda!303975))))

(assert (=> bs!1314717 (not (= lambda!304058 lambda!303945))))

(assert (=> bs!1314718 (= (and (= (regOne!31790 r!7292) (regOne!31790 lt!2265690)) (= (regTwo!31790 r!7292) (regTwo!31790 lt!2265690))) (= lambda!304058 lambda!304051))))

(assert (=> bs!1314717 (= lambda!304058 lambda!303946)))

(assert (=> bs!1314719 (= (and (= (regOne!31790 r!7292) (regOne!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265690)) (= lambda!304058 lambda!304032))))

(assert (=> bs!1314720 (= (and (= (regOne!31790 r!7292) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265692)) (= lambda!304058 lambda!304054))))

(assert (=> bs!1314714 (not (= lambda!304058 lambda!303948))))

(assert (=> bs!1314721 (not (= lambda!304058 lambda!304056))))

(assert (=> bs!1314720 (not (= lambda!304058 lambda!304053))))

(assert (=> bs!1314722 (not (= lambda!304058 lambda!304049))))

(assert (=> bs!1314719 (not (= lambda!304058 lambda!304030))))

(declare-fun bs!1314724 () Bool)

(assert (= bs!1314724 d!1785141))

(assert (=> bs!1314724 (not (= lambda!304058 lambda!304057))))

(assert (=> bs!1314714 (= (and (= (regOne!31790 r!7292) (regTwo!31790 (regOne!31790 r!7292))) (= (regTwo!31790 r!7292) lt!2265692)) (= lambda!304058 lambda!303951))))

(assert (=> bs!1314723 (not (= lambda!304058 lambda!304022))))

(assert (=> d!1785141 true))

(assert (=> d!1785141 true))

(assert (=> d!1785141 true))

(assert (=> d!1785141 (= (Exists!2739 lambda!304057) (Exists!2739 lambda!304058))))

(declare-fun lt!2265906 () Unit!156088)

(assert (=> d!1785141 (= lt!2265906 (choose!42782 (regOne!31790 r!7292) (regTwo!31790 r!7292) s!2326))))

(assert (=> d!1785141 (validRegex!7375 (regOne!31790 r!7292))))

(assert (=> d!1785141 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1368 (regOne!31790 r!7292) (regTwo!31790 r!7292) s!2326) lt!2265906)))

(declare-fun m!6619116 () Bool)

(assert (=> bs!1314724 m!6619116))

(declare-fun m!6619118 () Bool)

(assert (=> bs!1314724 m!6619118))

(declare-fun m!6619120 () Bool)

(assert (=> bs!1314724 m!6619120))

(assert (=> bs!1314724 m!6619098))

(assert (=> b!5650698 d!1785141))

(declare-fun d!1785143 () Bool)

(assert (=> d!1785143 (= (isDefined!12351 (findConcatSeparation!2062 (regOne!31790 r!7292) (regTwo!31790 r!7292) Nil!63094 s!2326 s!2326)) (not (isEmpty!34938 (findConcatSeparation!2062 (regOne!31790 r!7292) (regTwo!31790 r!7292) Nil!63094 s!2326 s!2326))))))

(declare-fun bs!1314725 () Bool)

(assert (= bs!1314725 d!1785143))

(assert (=> bs!1314725 m!6618156))

(declare-fun m!6619122 () Bool)

(assert (=> bs!1314725 m!6619122))

(assert (=> b!5650698 d!1785143))

(declare-fun d!1785145 () Bool)

(declare-fun choose!42783 ((InoxSet Context!10046) Int) (InoxSet Context!10046))

(assert (=> d!1785145 (= (flatMap!1252 lt!2265695 lambda!303947) (choose!42783 lt!2265695 lambda!303947))))

(declare-fun bs!1314726 () Bool)

(assert (= bs!1314726 d!1785145))

(declare-fun m!6619124 () Bool)

(assert (=> bs!1314726 m!6619124))

(assert (=> b!5650697 d!1785145))

(declare-fun d!1785147 () Bool)

(declare-fun c!993412 () Bool)

(assert (=> d!1785147 (= c!993412 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3481296 () Bool)

(assert (=> d!1785147 (= (matchZipper!1777 lt!2265724 (t!376518 s!2326)) e!3481296)))

(declare-fun b!5651694 () Bool)

(assert (=> b!5651694 (= e!3481296 (nullableZipper!1614 lt!2265724))))

(declare-fun b!5651695 () Bool)

(assert (=> b!5651695 (= e!3481296 (matchZipper!1777 (derivationStepZipper!1726 lt!2265724 (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1785147 c!993412) b!5651694))

(assert (= (and d!1785147 (not c!993412)) b!5651695))

(assert (=> d!1785147 m!6618220))

(declare-fun m!6619126 () Bool)

(assert (=> b!5651694 m!6619126))

(assert (=> b!5651695 m!6618224))

(assert (=> b!5651695 m!6618224))

(declare-fun m!6619128 () Bool)

(assert (=> b!5651695 m!6619128))

(assert (=> b!5651695 m!6618228))

(assert (=> b!5651695 m!6619128))

(assert (=> b!5651695 m!6618228))

(declare-fun m!6619130 () Bool)

(assert (=> b!5651695 m!6619130))

(assert (=> b!5650697 d!1785147))

(declare-fun d!1785149 () Bool)

(declare-fun dynLambda!24684 (Int Context!10046) (InoxSet Context!10046))

(assert (=> d!1785149 (= (flatMap!1252 lt!2265695 lambda!303947) (dynLambda!24684 lambda!303947 lt!2265689))))

(declare-fun lt!2265909 () Unit!156088)

(declare-fun choose!42784 ((InoxSet Context!10046) Context!10046 Int) Unit!156088)

(assert (=> d!1785149 (= lt!2265909 (choose!42784 lt!2265695 lt!2265689 lambda!303947))))

(assert (=> d!1785149 (= lt!2265695 (store ((as const (Array Context!10046 Bool)) false) lt!2265689 true))))

(assert (=> d!1785149 (= (lemmaFlatMapOnSingletonSet!784 lt!2265695 lt!2265689 lambda!303947) lt!2265909)))

(declare-fun b_lambda!213783 () Bool)

(assert (=> (not b_lambda!213783) (not d!1785149)))

(declare-fun bs!1314727 () Bool)

(assert (= bs!1314727 d!1785149))

(assert (=> bs!1314727 m!6618198))

(declare-fun m!6619132 () Bool)

(assert (=> bs!1314727 m!6619132))

(declare-fun m!6619134 () Bool)

(assert (=> bs!1314727 m!6619134))

(assert (=> bs!1314727 m!6618184))

(assert (=> b!5650697 d!1785149))

(declare-fun e!3481297 () Bool)

(declare-fun d!1785151 () Bool)

(assert (=> d!1785151 (= (matchZipper!1777 ((_ map or) lt!2265717 lt!2265722) (t!376518 s!2326)) e!3481297)))

(declare-fun res!2390857 () Bool)

(assert (=> d!1785151 (=> res!2390857 e!3481297)))

(assert (=> d!1785151 (= res!2390857 (matchZipper!1777 lt!2265717 (t!376518 s!2326)))))

(declare-fun lt!2265910 () Unit!156088)

(assert (=> d!1785151 (= lt!2265910 (choose!42770 lt!2265717 lt!2265722 (t!376518 s!2326)))))

(assert (=> d!1785151 (= (lemmaZipperConcatMatchesSameAsBothZippers!664 lt!2265717 lt!2265722 (t!376518 s!2326)) lt!2265910)))

(declare-fun b!5651696 () Bool)

(assert (=> b!5651696 (= e!3481297 (matchZipper!1777 lt!2265722 (t!376518 s!2326)))))

(assert (= (and d!1785151 (not res!2390857)) b!5651696))

(declare-fun m!6619136 () Bool)

(assert (=> d!1785151 m!6619136))

(assert (=> d!1785151 m!6618180))

(declare-fun m!6619138 () Bool)

(assert (=> d!1785151 m!6619138))

(assert (=> b!5651696 m!6618172))

(assert (=> b!5650697 d!1785151))

(declare-fun d!1785153 () Bool)

(declare-fun c!993413 () Bool)

(assert (=> d!1785153 (= c!993413 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3481298 () Bool)

(assert (=> d!1785153 (= (matchZipper!1777 lt!2265729 (t!376518 s!2326)) e!3481298)))

(declare-fun b!5651697 () Bool)

(assert (=> b!5651697 (= e!3481298 (nullableZipper!1614 lt!2265729))))

(declare-fun b!5651698 () Bool)

(assert (=> b!5651698 (= e!3481298 (matchZipper!1777 (derivationStepZipper!1726 lt!2265729 (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1785153 c!993413) b!5651697))

(assert (= (and d!1785153 (not c!993413)) b!5651698))

(assert (=> d!1785153 m!6618220))

(declare-fun m!6619140 () Bool)

(assert (=> b!5651697 m!6619140))

(assert (=> b!5651698 m!6618224))

(assert (=> b!5651698 m!6618224))

(declare-fun m!6619142 () Bool)

(assert (=> b!5651698 m!6619142))

(assert (=> b!5651698 m!6618228))

(assert (=> b!5651698 m!6619142))

(assert (=> b!5651698 m!6618228))

(declare-fun m!6619144 () Bool)

(assert (=> b!5651698 m!6619144))

(assert (=> b!5650697 d!1785153))

(declare-fun b!5651709 () Bool)

(declare-fun e!3481305 () (InoxSet Context!10046))

(declare-fun call!427504 () (InoxSet Context!10046))

(assert (=> b!5651709 (= e!3481305 ((_ map or) call!427504 (derivationStepZipperUp!907 (Context!10047 (t!376516 (exprs!5523 lt!2265689))) (h!69542 s!2326))))))

(declare-fun bm!427499 () Bool)

(assert (=> bm!427499 (= call!427504 (derivationStepZipperDown!981 (h!69540 (exprs!5523 lt!2265689)) (Context!10047 (t!376516 (exprs!5523 lt!2265689))) (h!69542 s!2326)))))

(declare-fun d!1785155 () Bool)

(declare-fun c!993418 () Bool)

(declare-fun e!3481307 () Bool)

(assert (=> d!1785155 (= c!993418 e!3481307)))

(declare-fun res!2390860 () Bool)

(assert (=> d!1785155 (=> (not res!2390860) (not e!3481307))))

(assert (=> d!1785155 (= res!2390860 ((_ is Cons!63092) (exprs!5523 lt!2265689)))))

(assert (=> d!1785155 (= (derivationStepZipperUp!907 lt!2265689 (h!69542 s!2326)) e!3481305)))

(declare-fun b!5651710 () Bool)

(declare-fun e!3481306 () (InoxSet Context!10046))

(assert (=> b!5651710 (= e!3481306 ((as const (Array Context!10046 Bool)) false))))

(declare-fun b!5651711 () Bool)

(assert (=> b!5651711 (= e!3481306 call!427504)))

(declare-fun b!5651712 () Bool)

(assert (=> b!5651712 (= e!3481305 e!3481306)))

(declare-fun c!993419 () Bool)

(assert (=> b!5651712 (= c!993419 ((_ is Cons!63092) (exprs!5523 lt!2265689)))))

(declare-fun b!5651713 () Bool)

(assert (=> b!5651713 (= e!3481307 (nullable!5671 (h!69540 (exprs!5523 lt!2265689))))))

(assert (= (and d!1785155 res!2390860) b!5651713))

(assert (= (and d!1785155 c!993418) b!5651709))

(assert (= (and d!1785155 (not c!993418)) b!5651712))

(assert (= (and b!5651712 c!993419) b!5651711))

(assert (= (and b!5651712 (not c!993419)) b!5651710))

(assert (= (or b!5651709 b!5651711) bm!427499))

(declare-fun m!6619146 () Bool)

(assert (=> b!5651709 m!6619146))

(declare-fun m!6619148 () Bool)

(assert (=> bm!427499 m!6619148))

(declare-fun m!6619150 () Bool)

(assert (=> b!5651713 m!6619150))

(assert (=> b!5650697 d!1785155))

(declare-fun d!1785157 () Bool)

(declare-fun c!993420 () Bool)

(assert (=> d!1785157 (= c!993420 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3481308 () Bool)

(assert (=> d!1785157 (= (matchZipper!1777 lt!2265722 (t!376518 s!2326)) e!3481308)))

(declare-fun b!5651714 () Bool)

(assert (=> b!5651714 (= e!3481308 (nullableZipper!1614 lt!2265722))))

(declare-fun b!5651715 () Bool)

(assert (=> b!5651715 (= e!3481308 (matchZipper!1777 (derivationStepZipper!1726 lt!2265722 (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1785157 c!993420) b!5651714))

(assert (= (and d!1785157 (not c!993420)) b!5651715))

(assert (=> d!1785157 m!6618220))

(declare-fun m!6619152 () Bool)

(assert (=> b!5651714 m!6619152))

(assert (=> b!5651715 m!6618224))

(assert (=> b!5651715 m!6618224))

(declare-fun m!6619154 () Bool)

(assert (=> b!5651715 m!6619154))

(assert (=> b!5651715 m!6618228))

(assert (=> b!5651715 m!6619154))

(assert (=> b!5651715 m!6618228))

(declare-fun m!6619156 () Bool)

(assert (=> b!5651715 m!6619156))

(assert (=> b!5650715 d!1785157))

(declare-fun bs!1314728 () Bool)

(declare-fun d!1785159 () Bool)

(assert (= bs!1314728 (and d!1785159 d!1785073)))

(declare-fun lambda!304061 () Int)

(assert (=> bs!1314728 (= lambda!304061 lambda!304036)))

(declare-fun bs!1314729 () Bool)

(assert (= bs!1314729 (and d!1785159 d!1784993)))

(assert (=> bs!1314729 (= lambda!304061 lambda!304006)))

(declare-fun bs!1314730 () Bool)

(assert (= bs!1314730 (and d!1785159 d!1785123)))

(assert (=> bs!1314730 (= lambda!304061 lambda!304055)))

(declare-fun bs!1314731 () Bool)

(assert (= bs!1314731 (and d!1785159 d!1785007)))

(assert (=> bs!1314731 (= lambda!304061 lambda!304008)))

(declare-fun bs!1314732 () Bool)

(assert (= bs!1314732 (and d!1785159 d!1784903)))

(assert (=> bs!1314732 (= lambda!304061 lambda!303970)))

(declare-fun bs!1314733 () Bool)

(assert (= bs!1314733 (and d!1785159 d!1784979)))

(assert (=> bs!1314733 (= lambda!304061 lambda!304001)))

(declare-fun b!5651736 () Bool)

(declare-fun e!3481323 () Bool)

(declare-fun lt!2265913 () Regex!15639)

(declare-fun isEmptyLang!1184 (Regex!15639) Bool)

(assert (=> b!5651736 (= e!3481323 (isEmptyLang!1184 lt!2265913))))

(declare-fun b!5651737 () Bool)

(declare-fun e!3481324 () Regex!15639)

(assert (=> b!5651737 (= e!3481324 EmptyLang!15639)))

(declare-fun b!5651738 () Bool)

(declare-fun e!3481325 () Bool)

(assert (=> b!5651738 (= e!3481323 e!3481325)))

(declare-fun c!993432 () Bool)

(assert (=> b!5651738 (= c!993432 (isEmpty!34933 (tail!11106 (unfocusZipperList!1067 zl!343))))))

(declare-fun b!5651739 () Bool)

(declare-fun e!3481321 () Regex!15639)

(assert (=> b!5651739 (= e!3481321 (h!69540 (unfocusZipperList!1067 zl!343)))))

(declare-fun b!5651740 () Bool)

(assert (=> b!5651740 (= e!3481321 e!3481324)))

(declare-fun c!993430 () Bool)

(assert (=> b!5651740 (= c!993430 ((_ is Cons!63092) (unfocusZipperList!1067 zl!343)))))

(declare-fun b!5651741 () Bool)

(declare-fun e!3481322 () Bool)

(assert (=> b!5651741 (= e!3481322 e!3481323)))

(declare-fun c!993429 () Bool)

(assert (=> b!5651741 (= c!993429 (isEmpty!34933 (unfocusZipperList!1067 zl!343)))))

(declare-fun b!5651742 () Bool)

(declare-fun isUnion!614 (Regex!15639) Bool)

(assert (=> b!5651742 (= e!3481325 (isUnion!614 lt!2265913))))

(declare-fun b!5651743 () Bool)

(declare-fun e!3481326 () Bool)

(assert (=> b!5651743 (= e!3481326 (isEmpty!34933 (t!376516 (unfocusZipperList!1067 zl!343))))))

(assert (=> d!1785159 e!3481322))

(declare-fun res!2390865 () Bool)

(assert (=> d!1785159 (=> (not res!2390865) (not e!3481322))))

(assert (=> d!1785159 (= res!2390865 (validRegex!7375 lt!2265913))))

(assert (=> d!1785159 (= lt!2265913 e!3481321)))

(declare-fun c!993431 () Bool)

(assert (=> d!1785159 (= c!993431 e!3481326)))

(declare-fun res!2390866 () Bool)

(assert (=> d!1785159 (=> (not res!2390866) (not e!3481326))))

(assert (=> d!1785159 (= res!2390866 ((_ is Cons!63092) (unfocusZipperList!1067 zl!343)))))

(assert (=> d!1785159 (forall!14791 (unfocusZipperList!1067 zl!343) lambda!304061)))

(assert (=> d!1785159 (= (generalisedUnion!1502 (unfocusZipperList!1067 zl!343)) lt!2265913)))

(declare-fun b!5651744 () Bool)

(assert (=> b!5651744 (= e!3481325 (= lt!2265913 (head!12011 (unfocusZipperList!1067 zl!343))))))

(declare-fun b!5651745 () Bool)

(assert (=> b!5651745 (= e!3481324 (Union!15639 (h!69540 (unfocusZipperList!1067 zl!343)) (generalisedUnion!1502 (t!376516 (unfocusZipperList!1067 zl!343)))))))

(assert (= (and d!1785159 res!2390866) b!5651743))

(assert (= (and d!1785159 c!993431) b!5651739))

(assert (= (and d!1785159 (not c!993431)) b!5651740))

(assert (= (and b!5651740 c!993430) b!5651745))

(assert (= (and b!5651740 (not c!993430)) b!5651737))

(assert (= (and d!1785159 res!2390865) b!5651741))

(assert (= (and b!5651741 c!993429) b!5651736))

(assert (= (and b!5651741 (not c!993429)) b!5651738))

(assert (= (and b!5651738 c!993432) b!5651744))

(assert (= (and b!5651738 (not c!993432)) b!5651742))

(declare-fun m!6619158 () Bool)

(assert (=> d!1785159 m!6619158))

(assert (=> d!1785159 m!6618140))

(declare-fun m!6619160 () Bool)

(assert (=> d!1785159 m!6619160))

(declare-fun m!6619162 () Bool)

(assert (=> b!5651736 m!6619162))

(declare-fun m!6619164 () Bool)

(assert (=> b!5651743 m!6619164))

(assert (=> b!5651744 m!6618140))

(declare-fun m!6619166 () Bool)

(assert (=> b!5651744 m!6619166))

(declare-fun m!6619168 () Bool)

(assert (=> b!5651745 m!6619168))

(assert (=> b!5651738 m!6618140))

(declare-fun m!6619170 () Bool)

(assert (=> b!5651738 m!6619170))

(assert (=> b!5651738 m!6619170))

(declare-fun m!6619172 () Bool)

(assert (=> b!5651738 m!6619172))

(declare-fun m!6619174 () Bool)

(assert (=> b!5651742 m!6619174))

(assert (=> b!5651741 m!6618140))

(declare-fun m!6619176 () Bool)

(assert (=> b!5651741 m!6619176))

(assert (=> b!5650694 d!1785159))

(declare-fun bs!1314734 () Bool)

(declare-fun d!1785161 () Bool)

(assert (= bs!1314734 (and d!1785161 d!1785073)))

(declare-fun lambda!304064 () Int)

(assert (=> bs!1314734 (= lambda!304064 lambda!304036)))

(declare-fun bs!1314735 () Bool)

(assert (= bs!1314735 (and d!1785161 d!1784993)))

(assert (=> bs!1314735 (= lambda!304064 lambda!304006)))

(declare-fun bs!1314736 () Bool)

(assert (= bs!1314736 (and d!1785161 d!1785123)))

(assert (=> bs!1314736 (= lambda!304064 lambda!304055)))

(declare-fun bs!1314737 () Bool)

(assert (= bs!1314737 (and d!1785161 d!1784903)))

(assert (=> bs!1314737 (= lambda!304064 lambda!303970)))

(declare-fun bs!1314738 () Bool)

(assert (= bs!1314738 (and d!1785161 d!1784979)))

(assert (=> bs!1314738 (= lambda!304064 lambda!304001)))

(declare-fun bs!1314739 () Bool)

(assert (= bs!1314739 (and d!1785161 d!1785159)))

(assert (=> bs!1314739 (= lambda!304064 lambda!304061)))

(declare-fun bs!1314740 () Bool)

(assert (= bs!1314740 (and d!1785161 d!1785007)))

(assert (=> bs!1314740 (= lambda!304064 lambda!304008)))

(declare-fun lt!2265916 () List!63216)

(assert (=> d!1785161 (forall!14791 lt!2265916 lambda!304064)))

(declare-fun e!3481329 () List!63216)

(assert (=> d!1785161 (= lt!2265916 e!3481329)))

(declare-fun c!993435 () Bool)

(assert (=> d!1785161 (= c!993435 ((_ is Cons!63093) zl!343))))

(assert (=> d!1785161 (= (unfocusZipperList!1067 zl!343) lt!2265916)))

(declare-fun b!5651750 () Bool)

(assert (=> b!5651750 (= e!3481329 (Cons!63092 (generalisedConcat!1254 (exprs!5523 (h!69541 zl!343))) (unfocusZipperList!1067 (t!376517 zl!343))))))

(declare-fun b!5651751 () Bool)

(assert (=> b!5651751 (= e!3481329 Nil!63092)))

(assert (= (and d!1785161 c!993435) b!5651750))

(assert (= (and d!1785161 (not c!993435)) b!5651751))

(declare-fun m!6619178 () Bool)

(assert (=> d!1785161 m!6619178))

(assert (=> b!5651750 m!6618166))

(declare-fun m!6619180 () Bool)

(assert (=> b!5651750 m!6619180))

(assert (=> b!5650694 d!1785161))

(declare-fun d!1785163 () Bool)

(assert (=> d!1785163 (= (isEmpty!34934 (t!376517 zl!343)) ((_ is Nil!63093) (t!376517 zl!343)))))

(assert (=> b!5650714 d!1785163))

(declare-fun d!1785165 () Bool)

(assert (=> d!1785165 (= (flatMap!1252 lt!2265721 lambda!303947) (dynLambda!24684 lambda!303947 lt!2265699))))

(declare-fun lt!2265917 () Unit!156088)

(assert (=> d!1785165 (= lt!2265917 (choose!42784 lt!2265721 lt!2265699 lambda!303947))))

(assert (=> d!1785165 (= lt!2265721 (store ((as const (Array Context!10046 Bool)) false) lt!2265699 true))))

(assert (=> d!1785165 (= (lemmaFlatMapOnSingletonSet!784 lt!2265721 lt!2265699 lambda!303947) lt!2265917)))

(declare-fun b_lambda!213785 () Bool)

(assert (=> (not b_lambda!213785) (not d!1785165)))

(declare-fun bs!1314741 () Bool)

(assert (= bs!1314741 d!1785165))

(assert (=> bs!1314741 m!6618194))

(declare-fun m!6619182 () Bool)

(assert (=> bs!1314741 m!6619182))

(declare-fun m!6619184 () Bool)

(assert (=> bs!1314741 m!6619184))

(assert (=> bs!1314741 m!6618188))

(assert (=> b!5650713 d!1785165))

(assert (=> b!5650713 d!1785155))

(declare-fun call!427505 () (InoxSet Context!10046))

(declare-fun e!3481330 () (InoxSet Context!10046))

(declare-fun b!5651752 () Bool)

(assert (=> b!5651752 (= e!3481330 ((_ map or) call!427505 (derivationStepZipperUp!907 (Context!10047 (t!376516 (exprs!5523 lt!2265699))) (h!69542 s!2326))))))

(declare-fun bm!427500 () Bool)

(assert (=> bm!427500 (= call!427505 (derivationStepZipperDown!981 (h!69540 (exprs!5523 lt!2265699)) (Context!10047 (t!376516 (exprs!5523 lt!2265699))) (h!69542 s!2326)))))

(declare-fun d!1785167 () Bool)

(declare-fun c!993436 () Bool)

(declare-fun e!3481332 () Bool)

(assert (=> d!1785167 (= c!993436 e!3481332)))

(declare-fun res!2390867 () Bool)

(assert (=> d!1785167 (=> (not res!2390867) (not e!3481332))))

(assert (=> d!1785167 (= res!2390867 ((_ is Cons!63092) (exprs!5523 lt!2265699)))))

(assert (=> d!1785167 (= (derivationStepZipperUp!907 lt!2265699 (h!69542 s!2326)) e!3481330)))

(declare-fun b!5651753 () Bool)

(declare-fun e!3481331 () (InoxSet Context!10046))

(assert (=> b!5651753 (= e!3481331 ((as const (Array Context!10046 Bool)) false))))

(declare-fun b!5651754 () Bool)

(assert (=> b!5651754 (= e!3481331 call!427505)))

(declare-fun b!5651755 () Bool)

(assert (=> b!5651755 (= e!3481330 e!3481331)))

(declare-fun c!993437 () Bool)

(assert (=> b!5651755 (= c!993437 ((_ is Cons!63092) (exprs!5523 lt!2265699)))))

(declare-fun b!5651756 () Bool)

(assert (=> b!5651756 (= e!3481332 (nullable!5671 (h!69540 (exprs!5523 lt!2265699))))))

(assert (= (and d!1785167 res!2390867) b!5651756))

(assert (= (and d!1785167 c!993436) b!5651752))

(assert (= (and d!1785167 (not c!993436)) b!5651755))

(assert (= (and b!5651755 c!993437) b!5651754))

(assert (= (and b!5651755 (not c!993437)) b!5651753))

(assert (= (or b!5651752 b!5651754) bm!427500))

(declare-fun m!6619186 () Bool)

(assert (=> b!5651752 m!6619186))

(declare-fun m!6619188 () Bool)

(assert (=> bm!427500 m!6619188))

(declare-fun m!6619190 () Bool)

(assert (=> b!5651756 m!6619190))

(assert (=> b!5650713 d!1785167))

(declare-fun bs!1314742 () Bool)

(declare-fun d!1785169 () Bool)

(assert (= bs!1314742 (and d!1785169 b!5650693)))

(declare-fun lambda!304065 () Int)

(assert (=> bs!1314742 (= lambda!304065 lambda!303947)))

(declare-fun bs!1314743 () Bool)

(assert (= bs!1314743 (and d!1785169 d!1784857)))

(assert (=> bs!1314743 (= lambda!304065 lambda!303954)))

(assert (=> d!1785169 true))

(assert (=> d!1785169 (= (derivationStepZipper!1726 lt!2265721 (h!69542 s!2326)) (flatMap!1252 lt!2265721 lambda!304065))))

(declare-fun bs!1314744 () Bool)

(assert (= bs!1314744 d!1785169))

(declare-fun m!6619192 () Bool)

(assert (=> bs!1314744 m!6619192))

(assert (=> b!5650713 d!1785169))

(declare-fun d!1785171 () Bool)

(assert (=> d!1785171 (= (flatMap!1252 lt!2265721 lambda!303947) (choose!42783 lt!2265721 lambda!303947))))

(declare-fun bs!1314745 () Bool)

(assert (= bs!1314745 d!1785171))

(declare-fun m!6619194 () Bool)

(assert (=> bs!1314745 m!6619194))

(assert (=> b!5650713 d!1785171))

(declare-fun d!1785173 () Bool)

(assert (=> d!1785173 (= (flatMap!1252 z!1189 lambda!303947) (dynLambda!24684 lambda!303947 (h!69541 zl!343)))))

(declare-fun lt!2265918 () Unit!156088)

(assert (=> d!1785173 (= lt!2265918 (choose!42784 z!1189 (h!69541 zl!343) lambda!303947))))

(assert (=> d!1785173 (= z!1189 (store ((as const (Array Context!10046 Bool)) false) (h!69541 zl!343) true))))

(assert (=> d!1785173 (= (lemmaFlatMapOnSingletonSet!784 z!1189 (h!69541 zl!343) lambda!303947) lt!2265918)))

(declare-fun b_lambda!213787 () Bool)

(assert (=> (not b_lambda!213787) (not d!1785173)))

(declare-fun bs!1314746 () Bool)

(assert (= bs!1314746 d!1785173))

(assert (=> bs!1314746 m!6618082))

(declare-fun m!6619196 () Bool)

(assert (=> bs!1314746 m!6619196))

(declare-fun m!6619198 () Bool)

(assert (=> bs!1314746 m!6619198))

(declare-fun m!6619200 () Bool)

(assert (=> bs!1314746 m!6619200))

(assert (=> b!5650693 d!1785173))

(declare-fun d!1785175 () Bool)

(assert (=> d!1785175 (= (nullable!5671 (h!69540 (exprs!5523 (h!69541 zl!343)))) (nullableFct!1762 (h!69540 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun bs!1314747 () Bool)

(assert (= bs!1314747 d!1785175))

(declare-fun m!6619202 () Bool)

(assert (=> bs!1314747 m!6619202))

(assert (=> b!5650693 d!1785175))

(declare-fun b!5651757 () Bool)

(declare-fun e!3481333 () (InoxSet Context!10046))

(declare-fun call!427506 () (InoxSet Context!10046))

(assert (=> b!5651757 (= e!3481333 ((_ map or) call!427506 (derivationStepZipperUp!907 (Context!10047 (t!376516 (exprs!5523 (Context!10047 (Cons!63092 (h!69540 (exprs!5523 (h!69541 zl!343))) (t!376516 (exprs!5523 (h!69541 zl!343)))))))) (h!69542 s!2326))))))

(declare-fun bm!427501 () Bool)

(assert (=> bm!427501 (= call!427506 (derivationStepZipperDown!981 (h!69540 (exprs!5523 (Context!10047 (Cons!63092 (h!69540 (exprs!5523 (h!69541 zl!343))) (t!376516 (exprs!5523 (h!69541 zl!343))))))) (Context!10047 (t!376516 (exprs!5523 (Context!10047 (Cons!63092 (h!69540 (exprs!5523 (h!69541 zl!343))) (t!376516 (exprs!5523 (h!69541 zl!343)))))))) (h!69542 s!2326)))))

(declare-fun d!1785177 () Bool)

(declare-fun c!993438 () Bool)

(declare-fun e!3481335 () Bool)

(assert (=> d!1785177 (= c!993438 e!3481335)))

(declare-fun res!2390868 () Bool)

(assert (=> d!1785177 (=> (not res!2390868) (not e!3481335))))

(assert (=> d!1785177 (= res!2390868 ((_ is Cons!63092) (exprs!5523 (Context!10047 (Cons!63092 (h!69540 (exprs!5523 (h!69541 zl!343))) (t!376516 (exprs!5523 (h!69541 zl!343))))))))))

(assert (=> d!1785177 (= (derivationStepZipperUp!907 (Context!10047 (Cons!63092 (h!69540 (exprs!5523 (h!69541 zl!343))) (t!376516 (exprs!5523 (h!69541 zl!343))))) (h!69542 s!2326)) e!3481333)))

(declare-fun b!5651758 () Bool)

(declare-fun e!3481334 () (InoxSet Context!10046))

(assert (=> b!5651758 (= e!3481334 ((as const (Array Context!10046 Bool)) false))))

(declare-fun b!5651759 () Bool)

(assert (=> b!5651759 (= e!3481334 call!427506)))

(declare-fun b!5651760 () Bool)

(assert (=> b!5651760 (= e!3481333 e!3481334)))

(declare-fun c!993439 () Bool)

(assert (=> b!5651760 (= c!993439 ((_ is Cons!63092) (exprs!5523 (Context!10047 (Cons!63092 (h!69540 (exprs!5523 (h!69541 zl!343))) (t!376516 (exprs!5523 (h!69541 zl!343))))))))))

(declare-fun b!5651761 () Bool)

(assert (=> b!5651761 (= e!3481335 (nullable!5671 (h!69540 (exprs!5523 (Context!10047 (Cons!63092 (h!69540 (exprs!5523 (h!69541 zl!343))) (t!376516 (exprs!5523 (h!69541 zl!343)))))))))))

(assert (= (and d!1785177 res!2390868) b!5651761))

(assert (= (and d!1785177 c!993438) b!5651757))

(assert (= (and d!1785177 (not c!993438)) b!5651760))

(assert (= (and b!5651760 c!993439) b!5651759))

(assert (= (and b!5651760 (not c!993439)) b!5651758))

(assert (= (or b!5651757 b!5651759) bm!427501))

(declare-fun m!6619204 () Bool)

(assert (=> b!5651757 m!6619204))

(declare-fun m!6619206 () Bool)

(assert (=> bm!427501 m!6619206))

(declare-fun m!6619208 () Bool)

(assert (=> b!5651761 m!6619208))

(assert (=> b!5650693 d!1785177))

(declare-fun d!1785179 () Bool)

(assert (=> d!1785179 (= (flatMap!1252 z!1189 lambda!303947) (choose!42783 z!1189 lambda!303947))))

(declare-fun bs!1314748 () Bool)

(assert (= bs!1314748 d!1785179))

(declare-fun m!6619210 () Bool)

(assert (=> bs!1314748 m!6619210))

(assert (=> b!5650693 d!1785179))

(declare-fun b!5651762 () Bool)

(declare-fun call!427507 () (InoxSet Context!10046))

(declare-fun e!3481336 () (InoxSet Context!10046))

(assert (=> b!5651762 (= e!3481336 ((_ map or) call!427507 (derivationStepZipperUp!907 (Context!10047 (t!376516 (exprs!5523 lt!2265730))) (h!69542 s!2326))))))

(declare-fun bm!427502 () Bool)

(assert (=> bm!427502 (= call!427507 (derivationStepZipperDown!981 (h!69540 (exprs!5523 lt!2265730)) (Context!10047 (t!376516 (exprs!5523 lt!2265730))) (h!69542 s!2326)))))

(declare-fun d!1785181 () Bool)

(declare-fun c!993440 () Bool)

(declare-fun e!3481338 () Bool)

(assert (=> d!1785181 (= c!993440 e!3481338)))

(declare-fun res!2390869 () Bool)

(assert (=> d!1785181 (=> (not res!2390869) (not e!3481338))))

(assert (=> d!1785181 (= res!2390869 ((_ is Cons!63092) (exprs!5523 lt!2265730)))))

(assert (=> d!1785181 (= (derivationStepZipperUp!907 lt!2265730 (h!69542 s!2326)) e!3481336)))

(declare-fun b!5651763 () Bool)

(declare-fun e!3481337 () (InoxSet Context!10046))

(assert (=> b!5651763 (= e!3481337 ((as const (Array Context!10046 Bool)) false))))

(declare-fun b!5651764 () Bool)

(assert (=> b!5651764 (= e!3481337 call!427507)))

(declare-fun b!5651765 () Bool)

(assert (=> b!5651765 (= e!3481336 e!3481337)))

(declare-fun c!993441 () Bool)

(assert (=> b!5651765 (= c!993441 ((_ is Cons!63092) (exprs!5523 lt!2265730)))))

(declare-fun b!5651766 () Bool)

(assert (=> b!5651766 (= e!3481338 (nullable!5671 (h!69540 (exprs!5523 lt!2265730))))))

(assert (= (and d!1785181 res!2390869) b!5651766))

(assert (= (and d!1785181 c!993440) b!5651762))

(assert (= (and d!1785181 (not c!993440)) b!5651765))

(assert (= (and b!5651765 c!993441) b!5651764))

(assert (= (and b!5651765 (not c!993441)) b!5651763))

(assert (= (or b!5651762 b!5651764) bm!427502))

(declare-fun m!6619212 () Bool)

(assert (=> b!5651762 m!6619212))

(declare-fun m!6619214 () Bool)

(assert (=> bm!427502 m!6619214))

(declare-fun m!6619216 () Bool)

(assert (=> b!5651766 m!6619216))

(assert (=> b!5650693 d!1785181))

(declare-fun b!5651767 () Bool)

(declare-fun call!427508 () (InoxSet Context!10046))

(declare-fun e!3481339 () (InoxSet Context!10046))

(assert (=> b!5651767 (= e!3481339 ((_ map or) call!427508 (derivationStepZipperUp!907 (Context!10047 (t!376516 (exprs!5523 (h!69541 zl!343)))) (h!69542 s!2326))))))

(declare-fun bm!427503 () Bool)

(assert (=> bm!427503 (= call!427508 (derivationStepZipperDown!981 (h!69540 (exprs!5523 (h!69541 zl!343))) (Context!10047 (t!376516 (exprs!5523 (h!69541 zl!343)))) (h!69542 s!2326)))))

(declare-fun d!1785183 () Bool)

(declare-fun c!993442 () Bool)

(declare-fun e!3481341 () Bool)

(assert (=> d!1785183 (= c!993442 e!3481341)))

(declare-fun res!2390870 () Bool)

(assert (=> d!1785183 (=> (not res!2390870) (not e!3481341))))

(assert (=> d!1785183 (= res!2390870 ((_ is Cons!63092) (exprs!5523 (h!69541 zl!343))))))

(assert (=> d!1785183 (= (derivationStepZipperUp!907 (h!69541 zl!343) (h!69542 s!2326)) e!3481339)))

(declare-fun b!5651768 () Bool)

(declare-fun e!3481340 () (InoxSet Context!10046))

(assert (=> b!5651768 (= e!3481340 ((as const (Array Context!10046 Bool)) false))))

(declare-fun b!5651769 () Bool)

(assert (=> b!5651769 (= e!3481340 call!427508)))

(declare-fun b!5651770 () Bool)

(assert (=> b!5651770 (= e!3481339 e!3481340)))

(declare-fun c!993443 () Bool)

(assert (=> b!5651770 (= c!993443 ((_ is Cons!63092) (exprs!5523 (h!69541 zl!343))))))

(declare-fun b!5651771 () Bool)

(assert (=> b!5651771 (= e!3481341 (nullable!5671 (h!69540 (exprs!5523 (h!69541 zl!343)))))))

(assert (= (and d!1785183 res!2390870) b!5651771))

(assert (= (and d!1785183 c!993442) b!5651767))

(assert (= (and d!1785183 (not c!993442)) b!5651770))

(assert (= (and b!5651770 c!993443) b!5651769))

(assert (= (and b!5651770 (not c!993443)) b!5651768))

(assert (= (or b!5651767 b!5651769) bm!427503))

(declare-fun m!6619218 () Bool)

(assert (=> b!5651767 m!6619218))

(declare-fun m!6619220 () Bool)

(assert (=> bm!427503 m!6619220))

(assert (=> b!5651771 m!6618074))

(assert (=> b!5650693 d!1785183))

(declare-fun b!5651772 () Bool)

(declare-fun e!3481347 () (InoxSet Context!10046))

(assert (=> b!5651772 (= e!3481347 ((as const (Array Context!10046 Bool)) false))))

(declare-fun call!427510 () List!63216)

(declare-fun c!993448 () Bool)

(declare-fun c!993447 () Bool)

(declare-fun call!427511 () (InoxSet Context!10046))

(declare-fun bm!427504 () Bool)

(declare-fun c!993444 () Bool)

(assert (=> bm!427504 (= call!427511 (derivationStepZipperDown!981 (ite c!993448 (regOne!31791 (h!69540 (exprs!5523 (h!69541 zl!343)))) (ite c!993447 (regTwo!31790 (h!69540 (exprs!5523 (h!69541 zl!343)))) (ite c!993444 (regOne!31790 (h!69540 (exprs!5523 (h!69541 zl!343)))) (reg!15968 (h!69540 (exprs!5523 (h!69541 zl!343))))))) (ite (or c!993448 c!993447) lt!2265730 (Context!10047 call!427510)) (h!69542 s!2326)))))

(declare-fun b!5651773 () Bool)

(declare-fun e!3481343 () (InoxSet Context!10046))

(declare-fun e!3481345 () (InoxSet Context!10046))

(assert (=> b!5651773 (= e!3481343 e!3481345)))

(assert (=> b!5651773 (= c!993448 ((_ is Union!15639) (h!69540 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun d!1785185 () Bool)

(declare-fun c!993445 () Bool)

(assert (=> d!1785185 (= c!993445 (and ((_ is ElementMatch!15639) (h!69540 (exprs!5523 (h!69541 zl!343)))) (= (c!993109 (h!69540 (exprs!5523 (h!69541 zl!343)))) (h!69542 s!2326))))))

(assert (=> d!1785185 (= (derivationStepZipperDown!981 (h!69540 (exprs!5523 (h!69541 zl!343))) lt!2265730 (h!69542 s!2326)) e!3481343)))

(declare-fun bm!427505 () Bool)

(declare-fun call!427513 () (InoxSet Context!10046))

(declare-fun call!427509 () (InoxSet Context!10046))

(assert (=> bm!427505 (= call!427513 call!427509)))

(declare-fun bm!427506 () Bool)

(declare-fun call!427512 () List!63216)

(assert (=> bm!427506 (= call!427510 call!427512)))

(declare-fun b!5651774 () Bool)

(assert (=> b!5651774 (= e!3481347 call!427513)))

(declare-fun bm!427507 () Bool)

(assert (=> bm!427507 (= call!427509 call!427511)))

(declare-fun b!5651775 () Bool)

(declare-fun e!3481344 () Bool)

(assert (=> b!5651775 (= e!3481344 (nullable!5671 (regOne!31790 (h!69540 (exprs!5523 (h!69541 zl!343))))))))

(declare-fun b!5651776 () Bool)

(declare-fun c!993446 () Bool)

(assert (=> b!5651776 (= c!993446 ((_ is Star!15639) (h!69540 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun e!3481342 () (InoxSet Context!10046))

(assert (=> b!5651776 (= e!3481342 e!3481347)))

(declare-fun b!5651777 () Bool)

(declare-fun e!3481346 () (InoxSet Context!10046))

(assert (=> b!5651777 (= e!3481346 e!3481342)))

(assert (=> b!5651777 (= c!993444 ((_ is Concat!24484) (h!69540 (exprs!5523 (h!69541 zl!343)))))))

(declare-fun b!5651778 () Bool)

(assert (=> b!5651778 (= c!993447 e!3481344)))

(declare-fun res!2390871 () Bool)

(assert (=> b!5651778 (=> (not res!2390871) (not e!3481344))))

(assert (=> b!5651778 (= res!2390871 ((_ is Concat!24484) (h!69540 (exprs!5523 (h!69541 zl!343)))))))

(assert (=> b!5651778 (= e!3481345 e!3481346)))

(declare-fun b!5651779 () Bool)

(assert (=> b!5651779 (= e!3481343 (store ((as const (Array Context!10046 Bool)) false) lt!2265730 true))))

(declare-fun b!5651780 () Bool)

(assert (=> b!5651780 (= e!3481342 call!427513)))

(declare-fun bm!427508 () Bool)

(declare-fun call!427514 () (InoxSet Context!10046))

(assert (=> bm!427508 (= call!427514 (derivationStepZipperDown!981 (ite c!993448 (regTwo!31791 (h!69540 (exprs!5523 (h!69541 zl!343)))) (regOne!31790 (h!69540 (exprs!5523 (h!69541 zl!343))))) (ite c!993448 lt!2265730 (Context!10047 call!427512)) (h!69542 s!2326)))))

(declare-fun b!5651781 () Bool)

(assert (=> b!5651781 (= e!3481345 ((_ map or) call!427511 call!427514))))

(declare-fun b!5651782 () Bool)

(assert (=> b!5651782 (= e!3481346 ((_ map or) call!427514 call!427509))))

(declare-fun bm!427509 () Bool)

(assert (=> bm!427509 (= call!427512 ($colon$colon!1683 (exprs!5523 lt!2265730) (ite (or c!993447 c!993444) (regTwo!31790 (h!69540 (exprs!5523 (h!69541 zl!343)))) (h!69540 (exprs!5523 (h!69541 zl!343))))))))

(assert (= (and d!1785185 c!993445) b!5651779))

(assert (= (and d!1785185 (not c!993445)) b!5651773))

(assert (= (and b!5651773 c!993448) b!5651781))

(assert (= (and b!5651773 (not c!993448)) b!5651778))

(assert (= (and b!5651778 res!2390871) b!5651775))

(assert (= (and b!5651778 c!993447) b!5651782))

(assert (= (and b!5651778 (not c!993447)) b!5651777))

(assert (= (and b!5651777 c!993444) b!5651780))

(assert (= (and b!5651777 (not c!993444)) b!5651776))

(assert (= (and b!5651776 c!993446) b!5651774))

(assert (= (and b!5651776 (not c!993446)) b!5651772))

(assert (= (or b!5651780 b!5651774) bm!427506))

(assert (= (or b!5651780 b!5651774) bm!427505))

(assert (= (or b!5651782 bm!427506) bm!427509))

(assert (= (or b!5651782 bm!427505) bm!427507))

(assert (= (or b!5651781 b!5651782) bm!427508))

(assert (= (or b!5651781 bm!427507) bm!427504))

(declare-fun m!6619222 () Bool)

(assert (=> b!5651775 m!6619222))

(declare-fun m!6619224 () Bool)

(assert (=> bm!427508 m!6619224))

(declare-fun m!6619226 () Bool)

(assert (=> bm!427504 m!6619226))

(declare-fun m!6619228 () Bool)

(assert (=> bm!427509 m!6619228))

(assert (=> b!5651779 m!6618470))

(assert (=> b!5650693 d!1785185))

(declare-fun d!1785187 () Bool)

(declare-fun lt!2265921 () Int)

(assert (=> d!1785187 (>= lt!2265921 0)))

(declare-fun e!3481350 () Int)

(assert (=> d!1785187 (= lt!2265921 e!3481350)))

(declare-fun c!993451 () Bool)

(assert (=> d!1785187 (= c!993451 ((_ is Cons!63093) lt!2265735))))

(assert (=> d!1785187 (= (zipperDepthTotal!248 lt!2265735) lt!2265921)))

(declare-fun b!5651787 () Bool)

(assert (=> b!5651787 (= e!3481350 (+ (contextDepthTotal!224 (h!69541 lt!2265735)) (zipperDepthTotal!248 (t!376517 lt!2265735))))))

(declare-fun b!5651788 () Bool)

(assert (=> b!5651788 (= e!3481350 0)))

(assert (= (and d!1785187 c!993451) b!5651787))

(assert (= (and d!1785187 (not c!993451)) b!5651788))

(declare-fun m!6619230 () Bool)

(assert (=> b!5651787 m!6619230))

(declare-fun m!6619232 () Bool)

(assert (=> b!5651787 m!6619232))

(assert (=> b!5650712 d!1785187))

(declare-fun d!1785189 () Bool)

(declare-fun lt!2265922 () Int)

(assert (=> d!1785189 (>= lt!2265922 0)))

(declare-fun e!3481351 () Int)

(assert (=> d!1785189 (= lt!2265922 e!3481351)))

(declare-fun c!993452 () Bool)

(assert (=> d!1785189 (= c!993452 ((_ is Cons!63093) zl!343))))

(assert (=> d!1785189 (= (zipperDepthTotal!248 zl!343) lt!2265922)))

(declare-fun b!5651789 () Bool)

(assert (=> b!5651789 (= e!3481351 (+ (contextDepthTotal!224 (h!69541 zl!343)) (zipperDepthTotal!248 (t!376517 zl!343))))))

(declare-fun b!5651790 () Bool)

(assert (=> b!5651790 (= e!3481351 0)))

(assert (= (and d!1785189 c!993452) b!5651789))

(assert (= (and d!1785189 (not c!993452)) b!5651790))

(assert (=> b!5651789 m!6618066))

(declare-fun m!6619234 () Bool)

(assert (=> b!5651789 m!6619234))

(assert (=> b!5650712 d!1785189))

(assert (=> b!5650711 d!1784865))

(declare-fun d!1785191 () Bool)

(declare-fun c!993453 () Bool)

(assert (=> d!1785191 (= c!993453 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3481352 () Bool)

(assert (=> d!1785191 (= (matchZipper!1777 lt!2265694 (t!376518 s!2326)) e!3481352)))

(declare-fun b!5651791 () Bool)

(assert (=> b!5651791 (= e!3481352 (nullableZipper!1614 lt!2265694))))

(declare-fun b!5651792 () Bool)

(assert (=> b!5651792 (= e!3481352 (matchZipper!1777 (derivationStepZipper!1726 lt!2265694 (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1785191 c!993453) b!5651791))

(assert (= (and d!1785191 (not c!993453)) b!5651792))

(assert (=> d!1785191 m!6618220))

(declare-fun m!6619236 () Bool)

(assert (=> b!5651791 m!6619236))

(assert (=> b!5651792 m!6618224))

(assert (=> b!5651792 m!6618224))

(declare-fun m!6619238 () Bool)

(assert (=> b!5651792 m!6619238))

(assert (=> b!5651792 m!6618228))

(assert (=> b!5651792 m!6619238))

(assert (=> b!5651792 m!6618228))

(declare-fun m!6619240 () Bool)

(assert (=> b!5651792 m!6619240))

(assert (=> b!5650711 d!1785191))

(declare-fun d!1785193 () Bool)

(declare-fun c!993454 () Bool)

(assert (=> d!1785193 (= c!993454 (isEmpty!34935 (t!376518 s!2326)))))

(declare-fun e!3481353 () Bool)

(assert (=> d!1785193 (= (matchZipper!1777 lt!2265717 (t!376518 s!2326)) e!3481353)))

(declare-fun b!5651793 () Bool)

(assert (=> b!5651793 (= e!3481353 (nullableZipper!1614 lt!2265717))))

(declare-fun b!5651794 () Bool)

(assert (=> b!5651794 (= e!3481353 (matchZipper!1777 (derivationStepZipper!1726 lt!2265717 (head!12008 (t!376518 s!2326))) (tail!11103 (t!376518 s!2326))))))

(assert (= (and d!1785193 c!993454) b!5651793))

(assert (= (and d!1785193 (not c!993454)) b!5651794))

(assert (=> d!1785193 m!6618220))

(declare-fun m!6619242 () Bool)

(assert (=> b!5651793 m!6619242))

(assert (=> b!5651794 m!6618224))

(assert (=> b!5651794 m!6618224))

(declare-fun m!6619244 () Bool)

(assert (=> b!5651794 m!6619244))

(assert (=> b!5651794 m!6618228))

(assert (=> b!5651794 m!6619244))

(assert (=> b!5651794 m!6618228))

(declare-fun m!6619246 () Bool)

(assert (=> b!5651794 m!6619246))

(assert (=> b!5650711 d!1785193))

(declare-fun e!3481354 () Bool)

(declare-fun d!1785195 () Bool)

(assert (=> d!1785195 (= (matchZipper!1777 ((_ map or) lt!2265717 lt!2265731) (t!376518 s!2326)) e!3481354)))

(declare-fun res!2390872 () Bool)

(assert (=> d!1785195 (=> res!2390872 e!3481354)))

(assert (=> d!1785195 (= res!2390872 (matchZipper!1777 lt!2265717 (t!376518 s!2326)))))

(declare-fun lt!2265923 () Unit!156088)

(assert (=> d!1785195 (= lt!2265923 (choose!42770 lt!2265717 lt!2265731 (t!376518 s!2326)))))

(assert (=> d!1785195 (= (lemmaZipperConcatMatchesSameAsBothZippers!664 lt!2265717 lt!2265731 (t!376518 s!2326)) lt!2265923)))

(declare-fun b!5651795 () Bool)

(assert (=> b!5651795 (= e!3481354 (matchZipper!1777 lt!2265731 (t!376518 s!2326)))))

(assert (= (and d!1785195 (not res!2390872)) b!5651795))

(declare-fun m!6619248 () Bool)

(assert (=> d!1785195 m!6619248))

(assert (=> d!1785195 m!6618180))

(declare-fun m!6619250 () Bool)

(assert (=> d!1785195 m!6619250))

(assert (=> b!5651795 m!6618086))

(assert (=> b!5650711 d!1785195))

(declare-fun b!5651796 () Bool)

(declare-fun e!3481361 () Bool)

(declare-fun e!3481359 () Bool)

(assert (=> b!5651796 (= e!3481361 e!3481359)))

(declare-fun res!2390875 () Bool)

(assert (=> b!5651796 (=> res!2390875 e!3481359)))

(declare-fun call!427515 () Bool)

(assert (=> b!5651796 (= res!2390875 call!427515)))

(declare-fun b!5651797 () Bool)

(declare-fun e!3481358 () Bool)

(declare-fun lt!2265924 () Bool)

(assert (=> b!5651797 (= e!3481358 (= lt!2265924 call!427515))))

(declare-fun b!5651798 () Bool)

(declare-fun e!3481357 () Bool)

(assert (=> b!5651798 (= e!3481358 e!3481357)))

(declare-fun c!993456 () Bool)

(assert (=> b!5651798 (= c!993456 ((_ is EmptyLang!15639) (Concat!24484 lt!2265696 (regTwo!31790 r!7292))))))

(declare-fun b!5651799 () Bool)

(declare-fun res!2390874 () Bool)

(declare-fun e!3481356 () Bool)

(assert (=> b!5651799 (=> (not res!2390874) (not e!3481356))))

(assert (=> b!5651799 (= res!2390874 (not call!427515))))

(declare-fun b!5651800 () Bool)

(assert (=> b!5651800 (= e!3481359 (not (= (head!12008 s!2326) (c!993109 (Concat!24484 lt!2265696 (regTwo!31790 r!7292))))))))

(declare-fun b!5651802 () Bool)

(declare-fun res!2390878 () Bool)

(declare-fun e!3481355 () Bool)

(assert (=> b!5651802 (=> res!2390878 e!3481355)))

(assert (=> b!5651802 (= res!2390878 e!3481356)))

(declare-fun res!2390879 () Bool)

(assert (=> b!5651802 (=> (not res!2390879) (not e!3481356))))

(assert (=> b!5651802 (= res!2390879 lt!2265924)))

(declare-fun b!5651803 () Bool)

(declare-fun e!3481360 () Bool)

(assert (=> b!5651803 (= e!3481360 (nullable!5671 (Concat!24484 lt!2265696 (regTwo!31790 r!7292))))))

(declare-fun b!5651804 () Bool)

(declare-fun res!2390876 () Bool)

(assert (=> b!5651804 (=> res!2390876 e!3481359)))

(assert (=> b!5651804 (= res!2390876 (not (isEmpty!34935 (tail!11103 s!2326))))))

(declare-fun b!5651805 () Bool)

(assert (=> b!5651805 (= e!3481360 (matchR!7824 (derivativeStep!4468 (Concat!24484 lt!2265696 (regTwo!31790 r!7292)) (head!12008 s!2326)) (tail!11103 s!2326)))))

(declare-fun b!5651806 () Bool)

(assert (=> b!5651806 (= e!3481355 e!3481361)))

(declare-fun res!2390880 () Bool)

(assert (=> b!5651806 (=> (not res!2390880) (not e!3481361))))

(assert (=> b!5651806 (= res!2390880 (not lt!2265924))))

(declare-fun b!5651807 () Bool)

(assert (=> b!5651807 (= e!3481356 (= (head!12008 s!2326) (c!993109 (Concat!24484 lt!2265696 (regTwo!31790 r!7292)))))))

(declare-fun b!5651801 () Bool)

(declare-fun res!2390877 () Bool)

(assert (=> b!5651801 (=> (not res!2390877) (not e!3481356))))

(assert (=> b!5651801 (= res!2390877 (isEmpty!34935 (tail!11103 s!2326)))))

(declare-fun d!1785197 () Bool)

(assert (=> d!1785197 e!3481358))

(declare-fun c!993457 () Bool)

(assert (=> d!1785197 (= c!993457 ((_ is EmptyExpr!15639) (Concat!24484 lt!2265696 (regTwo!31790 r!7292))))))

(assert (=> d!1785197 (= lt!2265924 e!3481360)))

(declare-fun c!993455 () Bool)

(assert (=> d!1785197 (= c!993455 (isEmpty!34935 s!2326))))

(assert (=> d!1785197 (validRegex!7375 (Concat!24484 lt!2265696 (regTwo!31790 r!7292)))))

(assert (=> d!1785197 (= (matchR!7824 (Concat!24484 lt!2265696 (regTwo!31790 r!7292)) s!2326) lt!2265924)))

(declare-fun bm!427510 () Bool)

(assert (=> bm!427510 (= call!427515 (isEmpty!34935 s!2326))))

(declare-fun b!5651808 () Bool)

(declare-fun res!2390873 () Bool)

(assert (=> b!5651808 (=> res!2390873 e!3481355)))

(assert (=> b!5651808 (= res!2390873 (not ((_ is ElementMatch!15639) (Concat!24484 lt!2265696 (regTwo!31790 r!7292)))))))

(assert (=> b!5651808 (= e!3481357 e!3481355)))

(declare-fun b!5651809 () Bool)

(assert (=> b!5651809 (= e!3481357 (not lt!2265924))))

(assert (= (and d!1785197 c!993455) b!5651803))

(assert (= (and d!1785197 (not c!993455)) b!5651805))

(assert (= (and d!1785197 c!993457) b!5651797))

(assert (= (and d!1785197 (not c!993457)) b!5651798))

(assert (= (and b!5651798 c!993456) b!5651809))

(assert (= (and b!5651798 (not c!993456)) b!5651808))

(assert (= (and b!5651808 (not res!2390873)) b!5651802))

(assert (= (and b!5651802 res!2390879) b!5651799))

(assert (= (and b!5651799 res!2390874) b!5651801))

(assert (= (and b!5651801 res!2390877) b!5651807))

(assert (= (and b!5651802 (not res!2390878)) b!5651806))

(assert (= (and b!5651806 res!2390880) b!5651796))

(assert (= (and b!5651796 (not res!2390875)) b!5651804))

(assert (= (and b!5651804 (not res!2390876)) b!5651800))

(assert (= (or b!5651797 b!5651796 b!5651799) bm!427510))

(assert (=> d!1785197 m!6618334))

(declare-fun m!6619252 () Bool)

(assert (=> d!1785197 m!6619252))

(assert (=> b!5651805 m!6618338))

(assert (=> b!5651805 m!6618338))

(declare-fun m!6619254 () Bool)

(assert (=> b!5651805 m!6619254))

(assert (=> b!5651805 m!6618342))

(assert (=> b!5651805 m!6619254))

(assert (=> b!5651805 m!6618342))

(declare-fun m!6619256 () Bool)

(assert (=> b!5651805 m!6619256))

(assert (=> b!5651807 m!6618338))

(declare-fun m!6619258 () Bool)

(assert (=> b!5651803 m!6619258))

(assert (=> b!5651800 m!6618338))

(assert (=> b!5651801 m!6618342))

(assert (=> b!5651801 m!6618342))

(assert (=> b!5651801 m!6618348))

(assert (=> bm!427510 m!6618334))

(assert (=> b!5651804 m!6618342))

(assert (=> b!5651804 m!6618342))

(assert (=> b!5651804 m!6618348))

(assert (=> b!5650690 d!1785197))

(declare-fun b!5651822 () Bool)

(declare-fun e!3481364 () Bool)

(declare-fun tp!1565803 () Bool)

(assert (=> b!5651822 (= e!3481364 tp!1565803)))

(declare-fun b!5651820 () Bool)

(assert (=> b!5651820 (= e!3481364 tp_is_empty!40531)))

(declare-fun b!5651821 () Bool)

(declare-fun tp!1565806 () Bool)

(declare-fun tp!1565804 () Bool)

(assert (=> b!5651821 (= e!3481364 (and tp!1565806 tp!1565804))))

(declare-fun b!5651823 () Bool)

(declare-fun tp!1565805 () Bool)

(declare-fun tp!1565802 () Bool)

(assert (=> b!5651823 (= e!3481364 (and tp!1565805 tp!1565802))))

(assert (=> b!5650695 (= tp!1565732 e!3481364)))

(assert (= (and b!5650695 ((_ is ElementMatch!15639) (regOne!31790 r!7292))) b!5651820))

(assert (= (and b!5650695 ((_ is Concat!24484) (regOne!31790 r!7292))) b!5651821))

(assert (= (and b!5650695 ((_ is Star!15639) (regOne!31790 r!7292))) b!5651822))

(assert (= (and b!5650695 ((_ is Union!15639) (regOne!31790 r!7292))) b!5651823))

(declare-fun b!5651826 () Bool)

(declare-fun e!3481365 () Bool)

(declare-fun tp!1565808 () Bool)

(assert (=> b!5651826 (= e!3481365 tp!1565808)))

(declare-fun b!5651824 () Bool)

(assert (=> b!5651824 (= e!3481365 tp_is_empty!40531)))

(declare-fun b!5651825 () Bool)

(declare-fun tp!1565811 () Bool)

(declare-fun tp!1565809 () Bool)

(assert (=> b!5651825 (= e!3481365 (and tp!1565811 tp!1565809))))

(declare-fun b!5651827 () Bool)

(declare-fun tp!1565810 () Bool)

(declare-fun tp!1565807 () Bool)

(assert (=> b!5651827 (= e!3481365 (and tp!1565810 tp!1565807))))

(assert (=> b!5650695 (= tp!1565733 e!3481365)))

(assert (= (and b!5650695 ((_ is ElementMatch!15639) (regTwo!31790 r!7292))) b!5651824))

(assert (= (and b!5650695 ((_ is Concat!24484) (regTwo!31790 r!7292))) b!5651825))

(assert (= (and b!5650695 ((_ is Star!15639) (regTwo!31790 r!7292))) b!5651826))

(assert (= (and b!5650695 ((_ is Union!15639) (regTwo!31790 r!7292))) b!5651827))

(declare-fun b!5651832 () Bool)

(declare-fun e!3481368 () Bool)

(declare-fun tp!1565814 () Bool)

(assert (=> b!5651832 (= e!3481368 (and tp_is_empty!40531 tp!1565814))))

(assert (=> b!5650689 (= tp!1565726 e!3481368)))

(assert (= (and b!5650689 ((_ is Cons!63094) (t!376518 s!2326))) b!5651832))

(declare-fun b!5651837 () Bool)

(declare-fun e!3481371 () Bool)

(declare-fun tp!1565819 () Bool)

(declare-fun tp!1565820 () Bool)

(assert (=> b!5651837 (= e!3481371 (and tp!1565819 tp!1565820))))

(assert (=> b!5650692 (= tp!1565725 e!3481371)))

(assert (= (and b!5650692 ((_ is Cons!63092) (exprs!5523 setElem!37754))) b!5651837))

(declare-fun b!5651845 () Bool)

(declare-fun e!3481377 () Bool)

(declare-fun tp!1565825 () Bool)

(assert (=> b!5651845 (= e!3481377 tp!1565825)))

(declare-fun b!5651844 () Bool)

(declare-fun e!3481376 () Bool)

(declare-fun tp!1565826 () Bool)

(assert (=> b!5651844 (= e!3481376 (and (inv!82344 (h!69541 (t!376517 zl!343))) e!3481377 tp!1565826))))

(assert (=> b!5650703 (= tp!1565730 e!3481376)))

(assert (= b!5651844 b!5651845))

(assert (= (and b!5650703 ((_ is Cons!63093) (t!376517 zl!343))) b!5651844))

(declare-fun m!6619260 () Bool)

(assert (=> b!5651844 m!6619260))

(declare-fun b!5651848 () Bool)

(declare-fun e!3481378 () Bool)

(declare-fun tp!1565828 () Bool)

(assert (=> b!5651848 (= e!3481378 tp!1565828)))

(declare-fun b!5651846 () Bool)

(assert (=> b!5651846 (= e!3481378 tp_is_empty!40531)))

(declare-fun b!5651847 () Bool)

(declare-fun tp!1565831 () Bool)

(declare-fun tp!1565829 () Bool)

(assert (=> b!5651847 (= e!3481378 (and tp!1565831 tp!1565829))))

(declare-fun b!5651849 () Bool)

(declare-fun tp!1565830 () Bool)

(declare-fun tp!1565827 () Bool)

(assert (=> b!5651849 (= e!3481378 (and tp!1565830 tp!1565827))))

(assert (=> b!5650702 (= tp!1565731 e!3481378)))

(assert (= (and b!5650702 ((_ is ElementMatch!15639) (regOne!31791 r!7292))) b!5651846))

(assert (= (and b!5650702 ((_ is Concat!24484) (regOne!31791 r!7292))) b!5651847))

(assert (= (and b!5650702 ((_ is Star!15639) (regOne!31791 r!7292))) b!5651848))

(assert (= (and b!5650702 ((_ is Union!15639) (regOne!31791 r!7292))) b!5651849))

(declare-fun b!5651852 () Bool)

(declare-fun e!3481379 () Bool)

(declare-fun tp!1565833 () Bool)

(assert (=> b!5651852 (= e!3481379 tp!1565833)))

(declare-fun b!5651850 () Bool)

(assert (=> b!5651850 (= e!3481379 tp_is_empty!40531)))

(declare-fun b!5651851 () Bool)

(declare-fun tp!1565836 () Bool)

(declare-fun tp!1565834 () Bool)

(assert (=> b!5651851 (= e!3481379 (and tp!1565836 tp!1565834))))

(declare-fun b!5651853 () Bool)

(declare-fun tp!1565835 () Bool)

(declare-fun tp!1565832 () Bool)

(assert (=> b!5651853 (= e!3481379 (and tp!1565835 tp!1565832))))

(assert (=> b!5650702 (= tp!1565727 e!3481379)))

(assert (= (and b!5650702 ((_ is ElementMatch!15639) (regTwo!31791 r!7292))) b!5651850))

(assert (= (and b!5650702 ((_ is Concat!24484) (regTwo!31791 r!7292))) b!5651851))

(assert (= (and b!5650702 ((_ is Star!15639) (regTwo!31791 r!7292))) b!5651852))

(assert (= (and b!5650702 ((_ is Union!15639) (regTwo!31791 r!7292))) b!5651853))

(declare-fun b!5651856 () Bool)

(declare-fun e!3481380 () Bool)

(declare-fun tp!1565838 () Bool)

(assert (=> b!5651856 (= e!3481380 tp!1565838)))

(declare-fun b!5651854 () Bool)

(assert (=> b!5651854 (= e!3481380 tp_is_empty!40531)))

(declare-fun b!5651855 () Bool)

(declare-fun tp!1565841 () Bool)

(declare-fun tp!1565839 () Bool)

(assert (=> b!5651855 (= e!3481380 (and tp!1565841 tp!1565839))))

(declare-fun b!5651857 () Bool)

(declare-fun tp!1565840 () Bool)

(declare-fun tp!1565837 () Bool)

(assert (=> b!5651857 (= e!3481380 (and tp!1565840 tp!1565837))))

(assert (=> b!5650696 (= tp!1565729 e!3481380)))

(assert (= (and b!5650696 ((_ is ElementMatch!15639) (reg!15968 r!7292))) b!5651854))

(assert (= (and b!5650696 ((_ is Concat!24484) (reg!15968 r!7292))) b!5651855))

(assert (= (and b!5650696 ((_ is Star!15639) (reg!15968 r!7292))) b!5651856))

(assert (= (and b!5650696 ((_ is Union!15639) (reg!15968 r!7292))) b!5651857))

(declare-fun condSetEmpty!37760 () Bool)

(assert (=> setNonEmpty!37754 (= condSetEmpty!37760 (= setRest!37754 ((as const (Array Context!10046 Bool)) false)))))

(declare-fun setRes!37760 () Bool)

(assert (=> setNonEmpty!37754 (= tp!1565724 setRes!37760)))

(declare-fun setIsEmpty!37760 () Bool)

(assert (=> setIsEmpty!37760 setRes!37760))

(declare-fun tp!1565846 () Bool)

(declare-fun setElem!37760 () Context!10046)

(declare-fun e!3481383 () Bool)

(declare-fun setNonEmpty!37760 () Bool)

(assert (=> setNonEmpty!37760 (= setRes!37760 (and tp!1565846 (inv!82344 setElem!37760) e!3481383))))

(declare-fun setRest!37760 () (InoxSet Context!10046))

(assert (=> setNonEmpty!37760 (= setRest!37754 ((_ map or) (store ((as const (Array Context!10046 Bool)) false) setElem!37760 true) setRest!37760))))

(declare-fun b!5651862 () Bool)

(declare-fun tp!1565847 () Bool)

(assert (=> b!5651862 (= e!3481383 tp!1565847)))

(assert (= (and setNonEmpty!37754 condSetEmpty!37760) setIsEmpty!37760))

(assert (= (and setNonEmpty!37754 (not condSetEmpty!37760)) setNonEmpty!37760))

(assert (= setNonEmpty!37760 b!5651862))

(declare-fun m!6619262 () Bool)

(assert (=> setNonEmpty!37760 m!6619262))

(declare-fun b!5651863 () Bool)

(declare-fun e!3481384 () Bool)

(declare-fun tp!1565848 () Bool)

(declare-fun tp!1565849 () Bool)

(assert (=> b!5651863 (= e!3481384 (and tp!1565848 tp!1565849))))

(assert (=> b!5650701 (= tp!1565728 e!3481384)))

(assert (= (and b!5650701 ((_ is Cons!63092) (exprs!5523 (h!69541 zl!343)))) b!5651863))

(declare-fun b_lambda!213789 () Bool)

(assert (= b_lambda!213783 (or b!5650693 b_lambda!213789)))

(declare-fun bs!1314749 () Bool)

(declare-fun d!1785199 () Bool)

(assert (= bs!1314749 (and d!1785199 b!5650693)))

(assert (=> bs!1314749 (= (dynLambda!24684 lambda!303947 lt!2265689) (derivationStepZipperUp!907 lt!2265689 (h!69542 s!2326)))))

(assert (=> bs!1314749 m!6618186))

(assert (=> d!1785149 d!1785199))

(declare-fun b_lambda!213791 () Bool)

(assert (= b_lambda!213785 (or b!5650693 b_lambda!213791)))

(declare-fun bs!1314750 () Bool)

(declare-fun d!1785201 () Bool)

(assert (= bs!1314750 (and d!1785201 b!5650693)))

(assert (=> bs!1314750 (= (dynLambda!24684 lambda!303947 lt!2265699) (derivationStepZipperUp!907 lt!2265699 (h!69542 s!2326)))))

(assert (=> bs!1314750 m!6618196))

(assert (=> d!1785165 d!1785201))

(declare-fun b_lambda!213793 () Bool)

(assert (= b_lambda!213787 (or b!5650693 b_lambda!213793)))

(declare-fun bs!1314751 () Bool)

(declare-fun d!1785203 () Bool)

(assert (= bs!1314751 (and d!1785203 b!5650693)))

(assert (=> bs!1314751 (= (dynLambda!24684 lambda!303947 (h!69541 zl!343)) (derivationStepZipperUp!907 (h!69541 zl!343) (h!69542 s!2326)))))

(assert (=> bs!1314751 m!6618072))

(assert (=> d!1785173 d!1785203))

(check-sat (not b!5650907) (not b!5651762) (not d!1784853) (not b!5651486) (not b!5650908) (not b!5651750) (not d!1784959) (not b!5651657) (not d!1785121) (not b!5651561) (not b!5651556) (not d!1785065) (not d!1785195) (not bm!427485) (not b!5651355) (not d!1784871) (not b!5651349) (not b!5651348) (not b!5651792) (not b!5650797) (not b!5651685) (not b!5651321) (not b!5651223) (not d!1785161) (not b!5650892) (not b!5651194) (not b!5650783) (not b!5651794) (not bm!427509) (not b!5651686) (not b!5651804) (not b!5651240) (not bm!427502) (not b!5651501) (not b!5651362) (not b!5651219) (not bm!427471) (not d!1785115) (not bm!427510) (not b!5651220) (not b!5651216) (not b!5650889) (not d!1785191) (not b!5651689) (not d!1785071) (not b!5651247) (not b!5651485) (not b!5650906) (not d!1785093) (not b!5651320) (not b!5651562) (not b!5650758) (not b!5651856) (not b!5651354) (not d!1785041) (not d!1785141) (not b!5651709) (not d!1785127) (not b!5651382) (not b!5651827) (not d!1784975) (not b!5651492) (not d!1784979) (not d!1785095) (not b!5651326) (not b!5651805) (not d!1785007) (not d!1785165) (not d!1785001) (not d!1785137) (not b!5651126) (not b!5651715) (not d!1784857) (not bm!427493) (not d!1785145) (not b!5651855) (not b!5651245) (not b!5651743) (not bm!427491) (not b!5651696) (not b!5651550) (not b!5651849) (not b!5651279) (not d!1784855) (not b!5651491) (not b!5651328) (not b!5650796) (not bm!427501) (not b!5651557) (not b!5651547) (not bm!427390) (not b!5651324) (not b!5651497) (not b!5651738) (not d!1785139) (not bm!427477) (not b!5650728) (not d!1784867) (not b!5651358) (not d!1785147) (not b!5651837) (not b!5650885) (not b!5651695) (not b!5651563) (not d!1785171) (not d!1785143) (not b!5651482) (not d!1785169) (not b!5651659) (not b!5651387) (not bs!1314751) (not b!5651578) (not b!5651357) (not d!1785067) (not b!5651199) (not b!5651496) (not d!1785153) (not b_lambda!213789) (not d!1785197) (not b!5651548) (not b!5651857) (not b!5651242) (not b!5650904) (not b!5651360) (not d!1784955) (not b!5651745) (not b!5651361) (not bm!427503) (not d!1784863) (not bm!427429) (not b!5651845) (not b!5651800) (not b!5651051) (not b!5651484) (not b!5651323) (not d!1785069) (not bm!427492) (not b!5650886) (not b!5651559) (not bm!427482) (not b!5651049) (not d!1784903) (not b!5650798) (not b_lambda!213793) (not d!1785157) (not b!5651787) (not b!5651823) (not d!1785073) (not b!5651822) (not d!1785075) (not b!5651488) (not d!1785151) (not b!5650910) (not bm!427465) (not b!5651481) (not b!5651546) (not bm!427508) (not b!5651741) (not b!5651757) (not b!5651847) (not b!5651558) (not b!5651698) (not b!5651345) (not b!5651825) (not b!5650903) tp_is_empty!40531 (not bm!427478) (not d!1785097) (not bm!427504) (not b!5650890) (not b_lambda!213791) (not b!5651690) (not d!1784865) (not b!5651606) (not b!5651545) (not b!5651493) (not b!5651807) (not b!5651351) (not b!5651344) (not b!5650727) (not b!5651688) (not b!5651658) (not bs!1314750) (not setNonEmpty!37760) (not b!5651327) (not b!5651795) (not bm!427472) (not b!5651713) (not b!5651851) (not b!5651852) (not d!1784953) (not b!5651742) (not b!5651862) (not b!5651499) (not b!5651767) (not b!5651744) (not b!5651652) (not b!5651221) (not d!1785193) (not b!5651848) (not d!1784981) (not b!5651803) (not b!5651605) (not b!5651793) (not b!5651775) (not d!1785009) (not b!5651651) (not b!5650795) (not d!1785175) (not b!5651736) (not d!1785117) (not b!5651655) (not b!5651654) (not bm!427500) (not b!5651714) (not b!5651694) (not b!5651226) (not d!1785063) (not d!1785003) (not bm!427499) (not b!5651801) (not b!5651549) (not b!5651844) (not d!1785057) (not b!5651826) (not b!5651494) (not b!5651227) (not b!5651771) (not b!5650888) (not b!5651500) (not b!5651697) (not d!1785043) (not bm!427461) (not b!5651853) (not d!1784993) (not bm!427466) (not d!1785173) (not b!5650726) (not b!5651573) (not bm!427391) (not bm!427467) (not b!5651766) (not b!5651832) (not d!1785159) (not d!1785125) (not bm!427486) (not b!5651821) (not d!1785179) (not b!5651217) (not d!1785129) (not b!5651789) (not b!5651687) (not d!1784901) (not d!1785149) (not b!5650729) (not d!1785037) (not bs!1314749) (not b!5651347) (not b!5651115) (not d!1785123) (not b!5651791) (not b!5651756) (not bm!427430) (not b!5651863) (not b!5651761) (not b!5651560) (not b!5651752) (not d!1785017) (not d!1785039) (not bm!427479))
(check-sat)
