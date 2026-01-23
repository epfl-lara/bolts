; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!582484 () Bool)

(assert start!582484)

(declare-fun b!5621913 () Bool)

(assert (=> b!5621913 true))

(assert (=> b!5621913 true))

(declare-fun lambda!301859 () Int)

(declare-fun lambda!301858 () Int)

(assert (=> b!5621913 (not (= lambda!301859 lambda!301858))))

(assert (=> b!5621913 true))

(assert (=> b!5621913 true))

(declare-fun b!5621919 () Bool)

(assert (=> b!5621919 true))

(declare-fun b!5621888 () Bool)

(declare-datatypes ((Unit!155964 0))(
  ( (Unit!155965) )
))
(declare-fun e!3465586 () Unit!155964)

(declare-fun Unit!155966 () Unit!155964)

(assert (=> b!5621888 (= e!3465586 Unit!155966)))

(declare-fun b!5621889 () Bool)

(declare-fun e!3465576 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31488 0))(
  ( (C!31489 (val!25446 Int)) )
))
(declare-datatypes ((Regex!15609 0))(
  ( (ElementMatch!15609 (c!986617 C!31488)) (Concat!24454 (regOne!31730 Regex!15609) (regTwo!31730 Regex!15609)) (EmptyExpr!15609) (Star!15609 (reg!15938 Regex!15609)) (EmptyLang!15609) (Union!15609 (regOne!31731 Regex!15609) (regTwo!31731 Regex!15609)) )
))
(declare-datatypes ((List!63126 0))(
  ( (Nil!63002) (Cons!63002 (h!69450 Regex!15609) (t!376416 List!63126)) )
))
(declare-datatypes ((Context!9986 0))(
  ( (Context!9987 (exprs!5493 List!63126)) )
))
(declare-fun lt!2260739 () (InoxSet Context!9986))

(declare-datatypes ((List!63127 0))(
  ( (Nil!63003) (Cons!63003 (h!69451 C!31488) (t!376417 List!63127)) )
))
(declare-fun s!2326 () List!63127)

(declare-fun matchZipper!1747 ((InoxSet Context!9986) List!63127) Bool)

(assert (=> b!5621889 (= e!3465576 (matchZipper!1747 lt!2260739 (t!376417 s!2326)))))

(declare-fun res!2381322 () Bool)

(declare-fun e!3465594 () Bool)

(assert (=> start!582484 (=> (not res!2381322) (not e!3465594))))

(declare-fun r!7292 () Regex!15609)

(declare-fun validRegex!7345 (Regex!15609) Bool)

(assert (=> start!582484 (= res!2381322 (validRegex!7345 r!7292))))

(assert (=> start!582484 e!3465594))

(declare-fun e!3465593 () Bool)

(assert (=> start!582484 e!3465593))

(declare-fun condSetEmpty!37514 () Bool)

(declare-fun z!1189 () (InoxSet Context!9986))

(assert (=> start!582484 (= condSetEmpty!37514 (= z!1189 ((as const (Array Context!9986 Bool)) false)))))

(declare-fun setRes!37514 () Bool)

(assert (=> start!582484 setRes!37514))

(declare-fun e!3465597 () Bool)

(assert (=> start!582484 e!3465597))

(declare-fun e!3465599 () Bool)

(assert (=> start!582484 e!3465599))

(declare-fun b!5621890 () Bool)

(declare-fun res!2381333 () Bool)

(assert (=> b!5621890 (=> (not res!2381333) (not e!3465594))))

(declare-datatypes ((List!63128 0))(
  ( (Nil!63004) (Cons!63004 (h!69452 Context!9986) (t!376418 List!63128)) )
))
(declare-fun zl!343 () List!63128)

(declare-fun toList!9393 ((InoxSet Context!9986)) List!63128)

(assert (=> b!5621890 (= res!2381333 (= (toList!9393 z!1189) zl!343))))

(declare-fun b!5621891 () Bool)

(declare-fun e!3465577 () Bool)

(assert (=> b!5621891 (= e!3465594 e!3465577)))

(declare-fun res!2381331 () Bool)

(assert (=> b!5621891 (=> (not res!2381331) (not e!3465577))))

(declare-fun lt!2260713 () Regex!15609)

(assert (=> b!5621891 (= res!2381331 (= r!7292 lt!2260713))))

(declare-fun unfocusZipper!1351 (List!63128) Regex!15609)

(assert (=> b!5621891 (= lt!2260713 (unfocusZipper!1351 zl!343))))

(declare-fun setIsEmpty!37514 () Bool)

(assert (=> setIsEmpty!37514 setRes!37514))

(declare-fun b!5621892 () Bool)

(declare-fun tp!1556861 () Bool)

(declare-fun tp!1556857 () Bool)

(assert (=> b!5621892 (= e!3465593 (and tp!1556861 tp!1556857))))

(declare-fun b!5621893 () Bool)

(declare-fun Unit!155967 () Unit!155964)

(assert (=> b!5621893 (= e!3465586 Unit!155967)))

(declare-fun lt!2260762 () (InoxSet Context!9986))

(declare-fun lt!2260729 () Unit!155964)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!634 ((InoxSet Context!9986) (InoxSet Context!9986) List!63127) Unit!155964)

(assert (=> b!5621893 (= lt!2260729 (lemmaZipperConcatMatchesSameAsBothZippers!634 lt!2260762 lt!2260739 (t!376417 s!2326)))))

(declare-fun res!2381318 () Bool)

(assert (=> b!5621893 (= res!2381318 (matchZipper!1747 lt!2260762 (t!376417 s!2326)))))

(declare-fun e!3465581 () Bool)

(assert (=> b!5621893 (=> res!2381318 e!3465581)))

(assert (=> b!5621893 (= (matchZipper!1747 ((_ map or) lt!2260762 lt!2260739) (t!376417 s!2326)) e!3465581)))

(declare-fun b!5621894 () Bool)

(declare-fun tp_is_empty!40471 () Bool)

(assert (=> b!5621894 (= e!3465593 tp_is_empty!40471)))

(declare-fun b!5621895 () Bool)

(declare-fun e!3465588 () Bool)

(declare-fun lt!2260759 () (InoxSet Context!9986))

(assert (=> b!5621895 (= e!3465588 (matchZipper!1747 lt!2260759 (t!376417 s!2326)))))

(declare-fun b!5621896 () Bool)

(declare-fun e!3465600 () Bool)

(declare-fun e!3465580 () Bool)

(assert (=> b!5621896 (= e!3465600 e!3465580)))

(declare-fun res!2381325 () Bool)

(assert (=> b!5621896 (=> res!2381325 e!3465580)))

(declare-fun lt!2260731 () (InoxSet Context!9986))

(assert (=> b!5621896 (= res!2381325 (not (= lt!2260762 lt!2260731)))))

(declare-fun lt!2260748 () (InoxSet Context!9986))

(assert (=> b!5621896 (= lt!2260731 ((_ map or) lt!2260748 lt!2260759))))

(declare-fun lt!2260733 () Context!9986)

(declare-fun derivationStepZipperDown!951 (Regex!15609 Context!9986 C!31488) (InoxSet Context!9986))

(assert (=> b!5621896 (= lt!2260759 (derivationStepZipperDown!951 (regTwo!31731 (regOne!31730 r!7292)) lt!2260733 (h!69451 s!2326)))))

(assert (=> b!5621896 (= lt!2260748 (derivationStepZipperDown!951 (regOne!31731 (regOne!31730 r!7292)) lt!2260733 (h!69451 s!2326)))))

(declare-fun b!5621897 () Bool)

(assert (=> b!5621897 (= e!3465581 (matchZipper!1747 lt!2260739 (t!376417 s!2326)))))

(declare-fun b!5621898 () Bool)

(declare-fun res!2381320 () Bool)

(declare-fun e!3465592 () Bool)

(assert (=> b!5621898 (=> res!2381320 e!3465592)))

(declare-fun generalisedUnion!1472 (List!63126) Regex!15609)

(declare-fun unfocusZipperList!1037 (List!63128) List!63126)

(assert (=> b!5621898 (= res!2381320 (not (= r!7292 (generalisedUnion!1472 (unfocusZipperList!1037 zl!343)))))))

(declare-fun b!5621899 () Bool)

(declare-fun e!3465579 () Unit!155964)

(declare-fun Unit!155968 () Unit!155964)

(assert (=> b!5621899 (= e!3465579 Unit!155968)))

(declare-fun lt!2260730 () Unit!155964)

(assert (=> b!5621899 (= lt!2260730 (lemmaZipperConcatMatchesSameAsBothZippers!634 lt!2260759 lt!2260739 (t!376417 s!2326)))))

(declare-fun res!2381328 () Bool)

(assert (=> b!5621899 (= res!2381328 (matchZipper!1747 lt!2260759 (t!376417 s!2326)))))

(declare-fun e!3465591 () Bool)

(assert (=> b!5621899 (=> res!2381328 e!3465591)))

(assert (=> b!5621899 (= (matchZipper!1747 ((_ map or) lt!2260759 lt!2260739) (t!376417 s!2326)) e!3465591)))

(declare-fun b!5621900 () Bool)

(declare-fun res!2381312 () Bool)

(declare-fun e!3465589 () Bool)

(assert (=> b!5621900 (=> res!2381312 e!3465589)))

(declare-fun isEmpty!34830 (List!63126) Bool)

(assert (=> b!5621900 (= res!2381312 (isEmpty!34830 (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5621901 () Bool)

(declare-fun e!3465596 () Bool)

(declare-fun tp!1556858 () Bool)

(declare-fun inv!82269 (Context!9986) Bool)

(assert (=> b!5621901 (= e!3465597 (and (inv!82269 (h!69452 zl!343)) e!3465596 tp!1556858))))

(declare-fun b!5621902 () Bool)

(declare-fun res!2381334 () Bool)

(assert (=> b!5621902 (=> res!2381334 e!3465592)))

(declare-fun isEmpty!34831 (List!63128) Bool)

(assert (=> b!5621902 (= res!2381334 (not (isEmpty!34831 (t!376418 zl!343))))))

(declare-fun b!5621903 () Bool)

(declare-fun tp!1556854 () Bool)

(assert (=> b!5621903 (= e!3465599 (and tp_is_empty!40471 tp!1556854))))

(declare-fun b!5621904 () Bool)

(declare-fun e!3465585 () Bool)

(declare-fun lt!2260752 () (InoxSet Context!9986))

(assert (=> b!5621904 (= e!3465585 (matchZipper!1747 lt!2260752 s!2326))))

(declare-fun b!5621905 () Bool)

(declare-fun e!3465598 () Bool)

(declare-fun e!3465595 () Bool)

(assert (=> b!5621905 (= e!3465598 e!3465595)))

(declare-fun res!2381327 () Bool)

(assert (=> b!5621905 (=> res!2381327 e!3465595)))

(declare-fun lt!2260747 () Bool)

(assert (=> b!5621905 (= res!2381327 (not (= lt!2260747 e!3465585)))))

(declare-fun res!2381335 () Bool)

(assert (=> b!5621905 (=> res!2381335 e!3465585)))

(declare-fun lt!2260754 () Bool)

(assert (=> b!5621905 (= res!2381335 lt!2260754)))

(assert (=> b!5621905 (= lt!2260747 (matchZipper!1747 z!1189 s!2326))))

(declare-fun lt!2260737 () (InoxSet Context!9986))

(assert (=> b!5621905 (= lt!2260754 (matchZipper!1747 lt!2260737 s!2326))))

(declare-fun lt!2260734 () Unit!155964)

(assert (=> b!5621905 (= lt!2260734 e!3465579)))

(declare-fun c!986616 () Bool)

(declare-fun nullable!5641 (Regex!15609) Bool)

(assert (=> b!5621905 (= c!986616 (nullable!5641 (regTwo!31731 (regOne!31730 r!7292))))))

(declare-fun lt!2260719 () Context!9986)

(declare-fun lambda!301860 () Int)

(declare-fun flatMap!1222 ((InoxSet Context!9986) Int) (InoxSet Context!9986))

(declare-fun derivationStepZipperUp!877 (Context!9986 C!31488) (InoxSet Context!9986))

(assert (=> b!5621905 (= (flatMap!1222 lt!2260752 lambda!301860) (derivationStepZipperUp!877 lt!2260719 (h!69451 s!2326)))))

(declare-fun lt!2260723 () Unit!155964)

(declare-fun lemmaFlatMapOnSingletonSet!754 ((InoxSet Context!9986) Context!9986 Int) Unit!155964)

(assert (=> b!5621905 (= lt!2260723 (lemmaFlatMapOnSingletonSet!754 lt!2260752 lt!2260719 lambda!301860))))

(declare-fun lt!2260740 () (InoxSet Context!9986))

(assert (=> b!5621905 (= lt!2260740 (derivationStepZipperUp!877 lt!2260719 (h!69451 s!2326)))))

(declare-fun lt!2260750 () Unit!155964)

(declare-fun e!3465590 () Unit!155964)

(assert (=> b!5621905 (= lt!2260750 e!3465590)))

(declare-fun c!986614 () Bool)

(assert (=> b!5621905 (= c!986614 (nullable!5641 (regOne!31731 (regOne!31730 r!7292))))))

(declare-fun lt!2260758 () Context!9986)

(assert (=> b!5621905 (= (flatMap!1222 lt!2260737 lambda!301860) (derivationStepZipperUp!877 lt!2260758 (h!69451 s!2326)))))

(declare-fun lt!2260718 () Unit!155964)

(assert (=> b!5621905 (= lt!2260718 (lemmaFlatMapOnSingletonSet!754 lt!2260737 lt!2260758 lambda!301860))))

(declare-fun lt!2260728 () (InoxSet Context!9986))

(assert (=> b!5621905 (= lt!2260728 (derivationStepZipperUp!877 lt!2260758 (h!69451 s!2326)))))

(assert (=> b!5621905 (= lt!2260752 (store ((as const (Array Context!9986 Bool)) false) lt!2260719 true))))

(declare-fun lt!2260721 () List!63126)

(assert (=> b!5621905 (= lt!2260719 (Context!9987 lt!2260721))))

(assert (=> b!5621905 (= lt!2260721 (Cons!63002 (regTwo!31731 (regOne!31730 r!7292)) (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(assert (=> b!5621905 (= lt!2260737 (store ((as const (Array Context!9986 Bool)) false) lt!2260758 true))))

(declare-fun lt!2260763 () List!63126)

(assert (=> b!5621905 (= lt!2260758 (Context!9987 lt!2260763))))

(assert (=> b!5621905 (= lt!2260763 (Cons!63002 (regOne!31731 (regOne!31730 r!7292)) (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5621906 () Bool)

(declare-fun e!3465584 () Bool)

(declare-fun e!3465583 () Bool)

(assert (=> b!5621906 (= e!3465584 e!3465583)))

(declare-fun res!2381326 () Bool)

(assert (=> b!5621906 (=> res!2381326 e!3465583)))

(declare-fun lt!2260755 () Bool)

(declare-fun lt!2260745 () Bool)

(assert (=> b!5621906 (= res!2381326 (and (not (= lt!2260747 lt!2260755)) (not lt!2260745)))))

(declare-fun lt!2260735 () Regex!15609)

(declare-fun matchRSpec!2712 (Regex!15609 List!63127) Bool)

(assert (=> b!5621906 (= lt!2260745 (matchRSpec!2712 lt!2260735 s!2326))))

(declare-fun lt!2260746 () Unit!155964)

(declare-fun mainMatchTheorem!2712 (Regex!15609 List!63127) Unit!155964)

(assert (=> b!5621906 (= lt!2260746 (mainMatchTheorem!2712 lt!2260735 s!2326))))

(declare-fun lt!2260765 () Regex!15609)

(assert (=> b!5621906 (= lt!2260755 (matchRSpec!2712 lt!2260765 s!2326))))

(declare-fun lt!2260714 () Unit!155964)

(assert (=> b!5621906 (= lt!2260714 (mainMatchTheorem!2712 lt!2260765 s!2326))))

(assert (=> b!5621906 (= lt!2260745 (matchZipper!1747 lt!2260752 s!2326))))

(declare-fun matchR!7794 (Regex!15609 List!63127) Bool)

(assert (=> b!5621906 (= lt!2260745 (matchR!7794 lt!2260735 s!2326))))

(declare-fun lt!2260725 () List!63128)

(declare-fun lt!2260764 () Unit!155964)

(declare-fun theoremZipperRegexEquiv!625 ((InoxSet Context!9986) List!63128 Regex!15609 List!63127) Unit!155964)

(assert (=> b!5621906 (= lt!2260764 (theoremZipperRegexEquiv!625 lt!2260752 lt!2260725 lt!2260735 s!2326))))

(declare-fun generalisedConcat!1224 (List!63126) Regex!15609)

(assert (=> b!5621906 (= lt!2260735 (generalisedConcat!1224 lt!2260721))))

(assert (=> b!5621906 (= lt!2260755 lt!2260754)))

(assert (=> b!5621906 (= lt!2260755 (matchR!7794 lt!2260765 s!2326))))

(declare-fun lt!2260720 () List!63128)

(declare-fun lt!2260722 () Unit!155964)

(assert (=> b!5621906 (= lt!2260722 (theoremZipperRegexEquiv!625 lt!2260737 lt!2260720 lt!2260765 s!2326))))

(assert (=> b!5621906 (= lt!2260765 (generalisedConcat!1224 lt!2260763))))

(declare-fun b!5621907 () Bool)

(assert (=> b!5621907 (= e!3465580 e!3465598)))

(declare-fun res!2381330 () Bool)

(assert (=> b!5621907 (=> res!2381330 e!3465598)))

(declare-fun e!3465587 () Bool)

(assert (=> b!5621907 (= res!2381330 e!3465587)))

(declare-fun res!2381336 () Bool)

(assert (=> b!5621907 (=> (not res!2381336) (not e!3465587))))

(declare-fun lt!2260727 () Bool)

(assert (=> b!5621907 (= res!2381336 (not (= (matchZipper!1747 lt!2260762 (t!376417 s!2326)) lt!2260727)))))

(assert (=> b!5621907 (= (matchZipper!1747 lt!2260731 (t!376417 s!2326)) e!3465588)))

(declare-fun res!2381323 () Bool)

(assert (=> b!5621907 (=> res!2381323 e!3465588)))

(assert (=> b!5621907 (= res!2381323 lt!2260727)))

(assert (=> b!5621907 (= lt!2260727 (matchZipper!1747 lt!2260748 (t!376417 s!2326)))))

(declare-fun lt!2260749 () Unit!155964)

(assert (=> b!5621907 (= lt!2260749 (lemmaZipperConcatMatchesSameAsBothZippers!634 lt!2260748 lt!2260759 (t!376417 s!2326)))))

(declare-fun b!5621908 () Bool)

(declare-fun tp!1556863 () Bool)

(assert (=> b!5621908 (= e!3465596 tp!1556863)))

(declare-fun b!5621909 () Bool)

(declare-fun Unit!155969 () Unit!155964)

(assert (=> b!5621909 (= e!3465579 Unit!155969)))

(declare-fun b!5621910 () Bool)

(declare-fun Unit!155970 () Unit!155964)

(assert (=> b!5621910 (= e!3465590 Unit!155970)))

(declare-fun lt!2260717 () Unit!155964)

(assert (=> b!5621910 (= lt!2260717 (lemmaZipperConcatMatchesSameAsBothZippers!634 lt!2260748 lt!2260739 (t!376417 s!2326)))))

(declare-fun res!2381317 () Bool)

(assert (=> b!5621910 (= res!2381317 lt!2260727)))

(assert (=> b!5621910 (=> res!2381317 e!3465576)))

(assert (=> b!5621910 (= (matchZipper!1747 ((_ map or) lt!2260748 lt!2260739) (t!376417 s!2326)) e!3465576)))

(declare-fun b!5621911 () Bool)

(declare-fun tp!1556860 () Bool)

(assert (=> b!5621911 (= e!3465593 tp!1556860)))

(declare-fun b!5621912 () Bool)

(assert (=> b!5621912 (= e!3465577 (not e!3465592))))

(declare-fun res!2381314 () Bool)

(assert (=> b!5621912 (=> res!2381314 e!3465592)))

(get-info :version)

(assert (=> b!5621912 (= res!2381314 (not ((_ is Cons!63004) zl!343)))))

(declare-fun lt!2260761 () Bool)

(assert (=> b!5621912 (= lt!2260761 (matchRSpec!2712 r!7292 s!2326))))

(assert (=> b!5621912 (= lt!2260761 (matchR!7794 r!7292 s!2326))))

(declare-fun lt!2260738 () Unit!155964)

(assert (=> b!5621912 (= lt!2260738 (mainMatchTheorem!2712 r!7292 s!2326))))

(assert (=> b!5621913 (= e!3465592 e!3465589)))

(declare-fun res!2381316 () Bool)

(assert (=> b!5621913 (=> res!2381316 e!3465589)))

(declare-fun lt!2260751 () Bool)

(assert (=> b!5621913 (= res!2381316 (or (not (= lt!2260761 lt!2260751)) ((_ is Nil!63003) s!2326)))))

(declare-fun Exists!2709 (Int) Bool)

(assert (=> b!5621913 (= (Exists!2709 lambda!301858) (Exists!2709 lambda!301859))))

(declare-fun lt!2260766 () Unit!155964)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1338 (Regex!15609 Regex!15609 List!63127) Unit!155964)

(assert (=> b!5621913 (= lt!2260766 (lemmaExistCutMatchRandMatchRSpecEquivalent!1338 (regOne!31730 r!7292) (regTwo!31730 r!7292) s!2326))))

(assert (=> b!5621913 (= lt!2260751 (Exists!2709 lambda!301858))))

(declare-datatypes ((tuple2!65412 0))(
  ( (tuple2!65413 (_1!36009 List!63127) (_2!36009 List!63127)) )
))
(declare-datatypes ((Option!15618 0))(
  ( (None!15617) (Some!15617 (v!51662 tuple2!65412)) )
))
(declare-fun isDefined!12321 (Option!15618) Bool)

(declare-fun findConcatSeparation!2032 (Regex!15609 Regex!15609 List!63127 List!63127 List!63127) Option!15618)

(assert (=> b!5621913 (= lt!2260751 (isDefined!12321 (findConcatSeparation!2032 (regOne!31730 r!7292) (regTwo!31730 r!7292) Nil!63003 s!2326 s!2326)))))

(declare-fun lt!2260743 () Unit!155964)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1796 (Regex!15609 Regex!15609 List!63127) Unit!155964)

(assert (=> b!5621913 (= lt!2260743 (lemmaFindConcatSeparationEquivalentToExists!1796 (regOne!31730 r!7292) (regTwo!31730 r!7292) s!2326))))

(declare-fun b!5621914 () Bool)

(declare-fun res!2381319 () Bool)

(assert (=> b!5621914 (=> res!2381319 e!3465595)))

(assert (=> b!5621914 (= res!2381319 (or (not (= lt!2260713 r!7292)) (not (= (exprs!5493 (h!69452 zl!343)) (Cons!63002 (regOne!31730 r!7292) (t!376416 (exprs!5493 (h!69452 zl!343))))))))))

(declare-fun b!5621915 () Bool)

(declare-fun e!3465582 () Bool)

(assert (=> b!5621915 (= e!3465583 e!3465582)))

(declare-fun res!2381315 () Bool)

(assert (=> b!5621915 (=> res!2381315 e!3465582)))

(declare-fun lt!2260732 () Regex!15609)

(assert (=> b!5621915 (= res!2381315 (not (= r!7292 lt!2260732)))))

(assert (=> b!5621915 (= lt!2260732 (Concat!24454 (Union!15609 (regOne!31731 (regOne!31730 r!7292)) (regTwo!31731 (regOne!31730 r!7292))) (regTwo!31730 r!7292)))))

(declare-fun b!5621916 () Bool)

(declare-fun res!2381321 () Bool)

(assert (=> b!5621916 (=> res!2381321 e!3465592)))

(assert (=> b!5621916 (= res!2381321 (not ((_ is Cons!63002) (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5621917 () Bool)

(assert (=> b!5621917 (= e!3465591 (matchZipper!1747 lt!2260739 (t!376417 s!2326)))))

(declare-fun b!5621918 () Bool)

(declare-fun e!3465601 () Bool)

(assert (=> b!5621918 (= e!3465601 e!3465584)))

(declare-fun res!2381338 () Bool)

(assert (=> b!5621918 (=> res!2381338 e!3465584)))

(declare-fun lt!2260757 () Int)

(declare-fun zipperDepthTotal!234 (List!63128) Int)

(assert (=> b!5621918 (= res!2381338 (>= (zipperDepthTotal!234 lt!2260725) lt!2260757))))

(assert (=> b!5621918 (= lt!2260725 (Cons!63004 lt!2260719 Nil!63004))))

(assert (=> b!5621919 (= e!3465589 e!3465600)))

(declare-fun res!2381313 () Bool)

(assert (=> b!5621919 (=> res!2381313 e!3465600)))

(assert (=> b!5621919 (= res!2381313 (or (and ((_ is ElementMatch!15609) (regOne!31730 r!7292)) (= (c!986617 (regOne!31730 r!7292)) (h!69451 s!2326))) (not ((_ is Union!15609) (regOne!31730 r!7292)))))))

(declare-fun lt!2260756 () Unit!155964)

(assert (=> b!5621919 (= lt!2260756 e!3465586)))

(declare-fun c!986615 () Bool)

(assert (=> b!5621919 (= c!986615 (nullable!5641 (h!69450 (exprs!5493 (h!69452 zl!343)))))))

(assert (=> b!5621919 (= (flatMap!1222 z!1189 lambda!301860) (derivationStepZipperUp!877 (h!69452 zl!343) (h!69451 s!2326)))))

(declare-fun lt!2260742 () Unit!155964)

(assert (=> b!5621919 (= lt!2260742 (lemmaFlatMapOnSingletonSet!754 z!1189 (h!69452 zl!343) lambda!301860))))

(assert (=> b!5621919 (= lt!2260739 (derivationStepZipperUp!877 lt!2260733 (h!69451 s!2326)))))

(assert (=> b!5621919 (= lt!2260762 (derivationStepZipperDown!951 (h!69450 (exprs!5493 (h!69452 zl!343))) lt!2260733 (h!69451 s!2326)))))

(assert (=> b!5621919 (= lt!2260733 (Context!9987 (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun lt!2260736 () (InoxSet Context!9986))

(assert (=> b!5621919 (= lt!2260736 (derivationStepZipperUp!877 (Context!9987 (Cons!63002 (h!69450 (exprs!5493 (h!69452 zl!343))) (t!376416 (exprs!5493 (h!69452 zl!343))))) (h!69451 s!2326)))))

(declare-fun e!3465578 () Bool)

(declare-fun setElem!37514 () Context!9986)

(declare-fun tp!1556859 () Bool)

(declare-fun setNonEmpty!37514 () Bool)

(assert (=> setNonEmpty!37514 (= setRes!37514 (and tp!1556859 (inv!82269 setElem!37514) e!3465578))))

(declare-fun setRest!37514 () (InoxSet Context!9986))

(assert (=> setNonEmpty!37514 (= z!1189 ((_ map or) (store ((as const (Array Context!9986 Bool)) false) setElem!37514 true) setRest!37514))))

(declare-fun lt!2260753 () Bool)

(declare-fun b!5621920 () Bool)

(declare-fun e!3465602 () Bool)

(assert (=> b!5621920 (= e!3465602 (or (= lt!2260753 lt!2260755) lt!2260745))))

(assert (=> b!5621920 (= lt!2260753 (matchRSpec!2712 lt!2260732 s!2326))))

(declare-fun lt!2260726 () Unit!155964)

(assert (=> b!5621920 (= lt!2260726 (mainMatchTheorem!2712 lt!2260732 s!2326))))

(declare-fun lt!2260724 () Bool)

(declare-fun lt!2260741 () Regex!15609)

(assert (=> b!5621920 (= lt!2260724 (matchRSpec!2712 lt!2260741 s!2326))))

(declare-fun lt!2260760 () Unit!155964)

(assert (=> b!5621920 (= lt!2260760 (mainMatchTheorem!2712 lt!2260741 s!2326))))

(assert (=> b!5621920 (= lt!2260753 lt!2260724)))

(assert (=> b!5621920 (= lt!2260724 (matchR!7794 lt!2260741 s!2326))))

(assert (=> b!5621920 (= lt!2260753 (matchR!7794 lt!2260732 s!2326))))

(assert (=> b!5621920 (= lt!2260741 (Union!15609 (Concat!24454 (regOne!31731 (regOne!31730 r!7292)) (regTwo!31730 r!7292)) (Concat!24454 (regTwo!31731 (regOne!31730 r!7292)) (regTwo!31730 r!7292))))))

(declare-fun lt!2260715 () Unit!155964)

(declare-fun lemmaConcatDistributesInUnion!42 (Regex!15609 Regex!15609 Regex!15609 List!63127) Unit!155964)

(assert (=> b!5621920 (= lt!2260715 (lemmaConcatDistributesInUnion!42 (regOne!31731 (regOne!31730 r!7292)) (regTwo!31731 (regOne!31730 r!7292)) (regTwo!31730 r!7292) s!2326))))

(declare-fun b!5621921 () Bool)

(declare-fun tp!1556856 () Bool)

(declare-fun tp!1556855 () Bool)

(assert (=> b!5621921 (= e!3465593 (and tp!1556856 tp!1556855))))

(declare-fun b!5621922 () Bool)

(declare-fun Unit!155971 () Unit!155964)

(assert (=> b!5621922 (= e!3465590 Unit!155971)))

(declare-fun b!5621923 () Bool)

(declare-fun res!2381324 () Bool)

(assert (=> b!5621923 (=> res!2381324 e!3465592)))

(assert (=> b!5621923 (= res!2381324 (or ((_ is EmptyExpr!15609) r!7292) ((_ is EmptyLang!15609) r!7292) ((_ is ElementMatch!15609) r!7292) ((_ is Union!15609) r!7292) (not ((_ is Concat!24454) r!7292))))))

(declare-fun b!5621924 () Bool)

(assert (=> b!5621924 (= e!3465582 e!3465602)))

(declare-fun res!2381337 () Bool)

(assert (=> b!5621924 (=> res!2381337 e!3465602)))

(declare-fun lt!2260716 () Regex!15609)

(assert (=> b!5621924 (= res!2381337 (or (not (= lt!2260765 (Concat!24454 (regOne!31731 (regOne!31730 r!7292)) lt!2260716))) (not (= lt!2260735 (Concat!24454 (regTwo!31731 (regOne!31730 r!7292)) lt!2260716))) (not (= (regTwo!31730 r!7292) lt!2260716))))))

(assert (=> b!5621924 (= lt!2260716 (generalisedConcat!1224 (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5621925 () Bool)

(declare-fun tp!1556862 () Bool)

(assert (=> b!5621925 (= e!3465578 tp!1556862)))

(declare-fun b!5621926 () Bool)

(declare-fun res!2381332 () Bool)

(assert (=> b!5621926 (=> res!2381332 e!3465592)))

(assert (=> b!5621926 (= res!2381332 (not (= r!7292 (generalisedConcat!1224 (exprs!5493 (h!69452 zl!343))))))))

(declare-fun b!5621927 () Bool)

(assert (=> b!5621927 (= e!3465595 e!3465601)))

(declare-fun res!2381329 () Bool)

(assert (=> b!5621927 (=> res!2381329 e!3465601)))

(declare-fun lt!2260744 () Int)

(assert (=> b!5621927 (= res!2381329 (>= lt!2260744 lt!2260757))))

(assert (=> b!5621927 (= lt!2260757 (zipperDepthTotal!234 zl!343))))

(assert (=> b!5621927 (= lt!2260744 (zipperDepthTotal!234 lt!2260720))))

(assert (=> b!5621927 (= lt!2260720 (Cons!63004 lt!2260758 Nil!63004))))

(declare-fun b!5621928 () Bool)

(assert (=> b!5621928 (= e!3465587 (not (matchZipper!1747 lt!2260759 (t!376417 s!2326))))))

(assert (= (and start!582484 res!2381322) b!5621890))

(assert (= (and b!5621890 res!2381333) b!5621891))

(assert (= (and b!5621891 res!2381331) b!5621912))

(assert (= (and b!5621912 (not res!2381314)) b!5621902))

(assert (= (and b!5621902 (not res!2381334)) b!5621926))

(assert (= (and b!5621926 (not res!2381332)) b!5621916))

(assert (= (and b!5621916 (not res!2381321)) b!5621898))

(assert (= (and b!5621898 (not res!2381320)) b!5621923))

(assert (= (and b!5621923 (not res!2381324)) b!5621913))

(assert (= (and b!5621913 (not res!2381316)) b!5621900))

(assert (= (and b!5621900 (not res!2381312)) b!5621919))

(assert (= (and b!5621919 c!986615) b!5621893))

(assert (= (and b!5621919 (not c!986615)) b!5621888))

(assert (= (and b!5621893 (not res!2381318)) b!5621897))

(assert (= (and b!5621919 (not res!2381313)) b!5621896))

(assert (= (and b!5621896 (not res!2381325)) b!5621907))

(assert (= (and b!5621907 (not res!2381323)) b!5621895))

(assert (= (and b!5621907 res!2381336) b!5621928))

(assert (= (and b!5621907 (not res!2381330)) b!5621905))

(assert (= (and b!5621905 c!986614) b!5621910))

(assert (= (and b!5621905 (not c!986614)) b!5621922))

(assert (= (and b!5621910 (not res!2381317)) b!5621889))

(assert (= (and b!5621905 c!986616) b!5621899))

(assert (= (and b!5621905 (not c!986616)) b!5621909))

(assert (= (and b!5621899 (not res!2381328)) b!5621917))

(assert (= (and b!5621905 (not res!2381335)) b!5621904))

(assert (= (and b!5621905 (not res!2381327)) b!5621914))

(assert (= (and b!5621914 (not res!2381319)) b!5621927))

(assert (= (and b!5621927 (not res!2381329)) b!5621918))

(assert (= (and b!5621918 (not res!2381338)) b!5621906))

(assert (= (and b!5621906 (not res!2381326)) b!5621915))

(assert (= (and b!5621915 (not res!2381315)) b!5621924))

(assert (= (and b!5621924 (not res!2381337)) b!5621920))

(assert (= (and start!582484 ((_ is ElementMatch!15609) r!7292)) b!5621894))

(assert (= (and start!582484 ((_ is Concat!24454) r!7292)) b!5621921))

(assert (= (and start!582484 ((_ is Star!15609) r!7292)) b!5621911))

(assert (= (and start!582484 ((_ is Union!15609) r!7292)) b!5621892))

(assert (= (and start!582484 condSetEmpty!37514) setIsEmpty!37514))

(assert (= (and start!582484 (not condSetEmpty!37514)) setNonEmpty!37514))

(assert (= setNonEmpty!37514 b!5621925))

(assert (= b!5621901 b!5621908))

(assert (= (and start!582484 ((_ is Cons!63004) zl!343)) b!5621901))

(assert (= (and start!582484 ((_ is Cons!63003) s!2326)) b!5621903))

(declare-fun m!6595168 () Bool)

(assert (=> b!5621899 m!6595168))

(declare-fun m!6595170 () Bool)

(assert (=> b!5621899 m!6595170))

(declare-fun m!6595172 () Bool)

(assert (=> b!5621899 m!6595172))

(declare-fun m!6595174 () Bool)

(assert (=> b!5621891 m!6595174))

(declare-fun m!6595176 () Bool)

(assert (=> start!582484 m!6595176))

(declare-fun m!6595178 () Bool)

(assert (=> b!5621900 m!6595178))

(declare-fun m!6595180 () Bool)

(assert (=> b!5621927 m!6595180))

(declare-fun m!6595182 () Bool)

(assert (=> b!5621927 m!6595182))

(declare-fun m!6595184 () Bool)

(assert (=> b!5621905 m!6595184))

(declare-fun m!6595186 () Bool)

(assert (=> b!5621905 m!6595186))

(declare-fun m!6595188 () Bool)

(assert (=> b!5621905 m!6595188))

(declare-fun m!6595190 () Bool)

(assert (=> b!5621905 m!6595190))

(declare-fun m!6595192 () Bool)

(assert (=> b!5621905 m!6595192))

(declare-fun m!6595194 () Bool)

(assert (=> b!5621905 m!6595194))

(declare-fun m!6595196 () Bool)

(assert (=> b!5621905 m!6595196))

(declare-fun m!6595198 () Bool)

(assert (=> b!5621905 m!6595198))

(declare-fun m!6595200 () Bool)

(assert (=> b!5621905 m!6595200))

(declare-fun m!6595202 () Bool)

(assert (=> b!5621905 m!6595202))

(declare-fun m!6595204 () Bool)

(assert (=> b!5621905 m!6595204))

(declare-fun m!6595206 () Bool)

(assert (=> b!5621905 m!6595206))

(declare-fun m!6595208 () Bool)

(assert (=> b!5621890 m!6595208))

(declare-fun m!6595210 () Bool)

(assert (=> b!5621919 m!6595210))

(declare-fun m!6595212 () Bool)

(assert (=> b!5621919 m!6595212))

(declare-fun m!6595214 () Bool)

(assert (=> b!5621919 m!6595214))

(declare-fun m!6595216 () Bool)

(assert (=> b!5621919 m!6595216))

(declare-fun m!6595218 () Bool)

(assert (=> b!5621919 m!6595218))

(declare-fun m!6595220 () Bool)

(assert (=> b!5621919 m!6595220))

(declare-fun m!6595222 () Bool)

(assert (=> b!5621919 m!6595222))

(declare-fun m!6595224 () Bool)

(assert (=> b!5621907 m!6595224))

(declare-fun m!6595226 () Bool)

(assert (=> b!5621907 m!6595226))

(declare-fun m!6595228 () Bool)

(assert (=> b!5621907 m!6595228))

(declare-fun m!6595230 () Bool)

(assert (=> b!5621907 m!6595230))

(declare-fun m!6595232 () Bool)

(assert (=> b!5621912 m!6595232))

(declare-fun m!6595234 () Bool)

(assert (=> b!5621912 m!6595234))

(declare-fun m!6595236 () Bool)

(assert (=> b!5621912 m!6595236))

(declare-fun m!6595238 () Bool)

(assert (=> b!5621897 m!6595238))

(assert (=> b!5621889 m!6595238))

(declare-fun m!6595240 () Bool)

(assert (=> b!5621902 m!6595240))

(assert (=> b!5621928 m!6595170))

(declare-fun m!6595242 () Bool)

(assert (=> b!5621910 m!6595242))

(declare-fun m!6595244 () Bool)

(assert (=> b!5621910 m!6595244))

(declare-fun m!6595246 () Bool)

(assert (=> b!5621904 m!6595246))

(declare-fun m!6595248 () Bool)

(assert (=> b!5621913 m!6595248))

(declare-fun m!6595250 () Bool)

(assert (=> b!5621913 m!6595250))

(declare-fun m!6595252 () Bool)

(assert (=> b!5621913 m!6595252))

(assert (=> b!5621913 m!6595252))

(declare-fun m!6595254 () Bool)

(assert (=> b!5621913 m!6595254))

(declare-fun m!6595256 () Bool)

(assert (=> b!5621913 m!6595256))

(assert (=> b!5621913 m!6595248))

(declare-fun m!6595258 () Bool)

(assert (=> b!5621913 m!6595258))

(declare-fun m!6595260 () Bool)

(assert (=> b!5621901 m!6595260))

(declare-fun m!6595262 () Bool)

(assert (=> b!5621906 m!6595262))

(declare-fun m!6595264 () Bool)

(assert (=> b!5621906 m!6595264))

(declare-fun m!6595266 () Bool)

(assert (=> b!5621906 m!6595266))

(declare-fun m!6595268 () Bool)

(assert (=> b!5621906 m!6595268))

(declare-fun m!6595270 () Bool)

(assert (=> b!5621906 m!6595270))

(assert (=> b!5621906 m!6595246))

(declare-fun m!6595272 () Bool)

(assert (=> b!5621906 m!6595272))

(declare-fun m!6595274 () Bool)

(assert (=> b!5621906 m!6595274))

(declare-fun m!6595276 () Bool)

(assert (=> b!5621906 m!6595276))

(declare-fun m!6595278 () Bool)

(assert (=> b!5621906 m!6595278))

(declare-fun m!6595280 () Bool)

(assert (=> b!5621906 m!6595280))

(declare-fun m!6595282 () Bool)

(assert (=> b!5621896 m!6595282))

(declare-fun m!6595284 () Bool)

(assert (=> b!5621896 m!6595284))

(declare-fun m!6595286 () Bool)

(assert (=> b!5621893 m!6595286))

(assert (=> b!5621893 m!6595224))

(declare-fun m!6595288 () Bool)

(assert (=> b!5621893 m!6595288))

(declare-fun m!6595290 () Bool)

(assert (=> b!5621920 m!6595290))

(declare-fun m!6595292 () Bool)

(assert (=> b!5621920 m!6595292))

(declare-fun m!6595294 () Bool)

(assert (=> b!5621920 m!6595294))

(declare-fun m!6595296 () Bool)

(assert (=> b!5621920 m!6595296))

(declare-fun m!6595298 () Bool)

(assert (=> b!5621920 m!6595298))

(declare-fun m!6595300 () Bool)

(assert (=> b!5621920 m!6595300))

(declare-fun m!6595302 () Bool)

(assert (=> b!5621920 m!6595302))

(declare-fun m!6595304 () Bool)

(assert (=> b!5621926 m!6595304))

(declare-fun m!6595306 () Bool)

(assert (=> b!5621924 m!6595306))

(declare-fun m!6595308 () Bool)

(assert (=> b!5621918 m!6595308))

(declare-fun m!6595310 () Bool)

(assert (=> setNonEmpty!37514 m!6595310))

(assert (=> b!5621895 m!6595170))

(declare-fun m!6595312 () Bool)

(assert (=> b!5621898 m!6595312))

(assert (=> b!5621898 m!6595312))

(declare-fun m!6595314 () Bool)

(assert (=> b!5621898 m!6595314))

(assert (=> b!5621917 m!6595238))

(check-sat (not b!5621925) (not b!5621902) (not b!5621918) (not b!5621890) (not b!5621926) (not b!5621912) (not b!5621895) (not b!5621904) (not b!5621921) (not b!5621893) (not b!5621897) (not b!5621903) (not b!5621889) (not b!5621906) (not b!5621920) (not start!582484) (not b!5621911) (not b!5621892) (not setNonEmpty!37514) (not b!5621905) (not b!5621917) (not b!5621910) (not b!5621900) (not b!5621908) (not b!5621913) tp_is_empty!40471 (not b!5621901) (not b!5621907) (not b!5621896) (not b!5621899) (not b!5621898) (not b!5621924) (not b!5621891) (not b!5621927) (not b!5621928) (not b!5621919))
(check-sat)
(get-model)

(declare-fun d!1776358 () Bool)

(assert (=> d!1776358 (= (isEmpty!34831 (t!376418 zl!343)) ((_ is Nil!63004) (t!376418 zl!343)))))

(assert (=> b!5621902 d!1776358))

(declare-fun b!5622050 () Bool)

(declare-fun res!2381379 () Bool)

(declare-fun e!3465674 () Bool)

(assert (=> b!5622050 (=> (not res!2381379) (not e!3465674))))

(declare-fun call!423299 () Bool)

(assert (=> b!5622050 (= res!2381379 call!423299)))

(declare-fun e!3465675 () Bool)

(assert (=> b!5622050 (= e!3465675 e!3465674)))

(declare-fun b!5622051 () Bool)

(declare-fun e!3465678 () Bool)

(declare-fun e!3465673 () Bool)

(assert (=> b!5622051 (= e!3465678 e!3465673)))

(declare-fun res!2381378 () Bool)

(assert (=> b!5622051 (=> (not res!2381378) (not e!3465673))))

(assert (=> b!5622051 (= res!2381378 call!423299)))

(declare-fun bm!423293 () Bool)

(declare-fun call!423300 () Bool)

(declare-fun c!986658 () Bool)

(declare-fun c!986657 () Bool)

(assert (=> bm!423293 (= call!423300 (validRegex!7345 (ite c!986657 (reg!15938 r!7292) (ite c!986658 (regOne!31731 r!7292) (regOne!31730 r!7292)))))))

(declare-fun b!5622052 () Bool)

(declare-fun res!2381380 () Bool)

(assert (=> b!5622052 (=> res!2381380 e!3465678)))

(assert (=> b!5622052 (= res!2381380 (not ((_ is Concat!24454) r!7292)))))

(assert (=> b!5622052 (= e!3465675 e!3465678)))

(declare-fun b!5622054 () Bool)

(declare-fun e!3465677 () Bool)

(declare-fun e!3465679 () Bool)

(assert (=> b!5622054 (= e!3465677 e!3465679)))

(assert (=> b!5622054 (= c!986657 ((_ is Star!15609) r!7292))))

(declare-fun b!5622055 () Bool)

(declare-fun call!423298 () Bool)

(assert (=> b!5622055 (= e!3465674 call!423298)))

(declare-fun bm!423294 () Bool)

(assert (=> bm!423294 (= call!423298 (validRegex!7345 (ite c!986658 (regTwo!31731 r!7292) (regTwo!31730 r!7292))))))

(declare-fun bm!423295 () Bool)

(assert (=> bm!423295 (= call!423299 call!423300)))

(declare-fun b!5622056 () Bool)

(declare-fun e!3465676 () Bool)

(assert (=> b!5622056 (= e!3465679 e!3465676)))

(declare-fun res!2381376 () Bool)

(assert (=> b!5622056 (= res!2381376 (not (nullable!5641 (reg!15938 r!7292))))))

(assert (=> b!5622056 (=> (not res!2381376) (not e!3465676))))

(declare-fun b!5622057 () Bool)

(assert (=> b!5622057 (= e!3465679 e!3465675)))

(assert (=> b!5622057 (= c!986658 ((_ is Union!15609) r!7292))))

(declare-fun b!5622058 () Bool)

(assert (=> b!5622058 (= e!3465676 call!423300)))

(declare-fun d!1776360 () Bool)

(declare-fun res!2381377 () Bool)

(assert (=> d!1776360 (=> res!2381377 e!3465677)))

(assert (=> d!1776360 (= res!2381377 ((_ is ElementMatch!15609) r!7292))))

(assert (=> d!1776360 (= (validRegex!7345 r!7292) e!3465677)))

(declare-fun b!5622053 () Bool)

(assert (=> b!5622053 (= e!3465673 call!423298)))

(assert (= (and d!1776360 (not res!2381377)) b!5622054))

(assert (= (and b!5622054 c!986657) b!5622056))

(assert (= (and b!5622054 (not c!986657)) b!5622057))

(assert (= (and b!5622056 res!2381376) b!5622058))

(assert (= (and b!5622057 c!986658) b!5622050))

(assert (= (and b!5622057 (not c!986658)) b!5622052))

(assert (= (and b!5622050 res!2381379) b!5622055))

(assert (= (and b!5622052 (not res!2381380)) b!5622051))

(assert (= (and b!5622051 res!2381378) b!5622053))

(assert (= (or b!5622055 b!5622053) bm!423294))

(assert (= (or b!5622050 b!5622051) bm!423295))

(assert (= (or b!5622058 bm!423295) bm!423293))

(declare-fun m!6595398 () Bool)

(assert (=> bm!423293 m!6595398))

(declare-fun m!6595400 () Bool)

(assert (=> bm!423294 m!6595400))

(declare-fun m!6595402 () Bool)

(assert (=> b!5622056 m!6595402))

(assert (=> start!582484 d!1776360))

(declare-fun d!1776370 () Bool)

(declare-fun lambda!301875 () Int)

(declare-fun forall!14766 (List!63126 Int) Bool)

(assert (=> d!1776370 (= (inv!82269 (h!69452 zl!343)) (forall!14766 (exprs!5493 (h!69452 zl!343)) lambda!301875))))

(declare-fun bs!1301702 () Bool)

(assert (= bs!1301702 d!1776370))

(declare-fun m!6595412 () Bool)

(assert (=> bs!1301702 m!6595412))

(assert (=> b!5621901 d!1776370))

(declare-fun d!1776376 () Bool)

(declare-fun choose!42576 ((InoxSet Context!9986) Int) (InoxSet Context!9986))

(assert (=> d!1776376 (= (flatMap!1222 lt!2260752 lambda!301860) (choose!42576 lt!2260752 lambda!301860))))

(declare-fun bs!1301703 () Bool)

(assert (= bs!1301703 d!1776376))

(declare-fun m!6595414 () Bool)

(assert (=> bs!1301703 m!6595414))

(assert (=> b!5621905 d!1776376))

(declare-fun d!1776378 () Bool)

(declare-fun nullableFct!1739 (Regex!15609) Bool)

(assert (=> d!1776378 (= (nullable!5641 (regTwo!31731 (regOne!31730 r!7292))) (nullableFct!1739 (regTwo!31731 (regOne!31730 r!7292))))))

(declare-fun bs!1301704 () Bool)

(assert (= bs!1301704 d!1776378))

(declare-fun m!6595416 () Bool)

(assert (=> bs!1301704 m!6595416))

(assert (=> b!5621905 d!1776378))

(declare-fun d!1776380 () Bool)

(declare-fun dynLambda!24637 (Int Context!9986) (InoxSet Context!9986))

(assert (=> d!1776380 (= (flatMap!1222 lt!2260737 lambda!301860) (dynLambda!24637 lambda!301860 lt!2260758))))

(declare-fun lt!2260785 () Unit!155964)

(declare-fun choose!42577 ((InoxSet Context!9986) Context!9986 Int) Unit!155964)

(assert (=> d!1776380 (= lt!2260785 (choose!42577 lt!2260737 lt!2260758 lambda!301860))))

(assert (=> d!1776380 (= lt!2260737 (store ((as const (Array Context!9986 Bool)) false) lt!2260758 true))))

(assert (=> d!1776380 (= (lemmaFlatMapOnSingletonSet!754 lt!2260737 lt!2260758 lambda!301860) lt!2260785)))

(declare-fun b_lambda!212715 () Bool)

(assert (=> (not b_lambda!212715) (not d!1776380)))

(declare-fun bs!1301705 () Bool)

(assert (= bs!1301705 d!1776380))

(assert (=> bs!1301705 m!6595192))

(declare-fun m!6595418 () Bool)

(assert (=> bs!1301705 m!6595418))

(declare-fun m!6595420 () Bool)

(assert (=> bs!1301705 m!6595420))

(assert (=> bs!1301705 m!6595202))

(assert (=> b!5621905 d!1776380))

(declare-fun d!1776382 () Bool)

(declare-fun c!986683 () Bool)

(declare-fun e!3465736 () Bool)

(assert (=> d!1776382 (= c!986683 e!3465736)))

(declare-fun res!2381428 () Bool)

(assert (=> d!1776382 (=> (not res!2381428) (not e!3465736))))

(assert (=> d!1776382 (= res!2381428 ((_ is Cons!63002) (exprs!5493 lt!2260719)))))

(declare-fun e!3465735 () (InoxSet Context!9986))

(assert (=> d!1776382 (= (derivationStepZipperUp!877 lt!2260719 (h!69451 s!2326)) e!3465735)))

(declare-fun b!5622154 () Bool)

(declare-fun call!423315 () (InoxSet Context!9986))

(assert (=> b!5622154 (= e!3465735 ((_ map or) call!423315 (derivationStepZipperUp!877 (Context!9987 (t!376416 (exprs!5493 lt!2260719))) (h!69451 s!2326))))))

(declare-fun b!5622155 () Bool)

(assert (=> b!5622155 (= e!3465736 (nullable!5641 (h!69450 (exprs!5493 lt!2260719))))))

(declare-fun b!5622156 () Bool)

(declare-fun e!3465737 () (InoxSet Context!9986))

(assert (=> b!5622156 (= e!3465735 e!3465737)))

(declare-fun c!986684 () Bool)

(assert (=> b!5622156 (= c!986684 ((_ is Cons!63002) (exprs!5493 lt!2260719)))))

(declare-fun bm!423310 () Bool)

(assert (=> bm!423310 (= call!423315 (derivationStepZipperDown!951 (h!69450 (exprs!5493 lt!2260719)) (Context!9987 (t!376416 (exprs!5493 lt!2260719))) (h!69451 s!2326)))))

(declare-fun b!5622157 () Bool)

(assert (=> b!5622157 (= e!3465737 call!423315)))

(declare-fun b!5622158 () Bool)

(assert (=> b!5622158 (= e!3465737 ((as const (Array Context!9986 Bool)) false))))

(assert (= (and d!1776382 res!2381428) b!5622155))

(assert (= (and d!1776382 c!986683) b!5622154))

(assert (= (and d!1776382 (not c!986683)) b!5622156))

(assert (= (and b!5622156 c!986684) b!5622157))

(assert (= (and b!5622156 (not c!986684)) b!5622158))

(assert (= (or b!5622154 b!5622157) bm!423310))

(declare-fun m!6595438 () Bool)

(assert (=> b!5622154 m!6595438))

(declare-fun m!6595440 () Bool)

(assert (=> b!5622155 m!6595440))

(declare-fun m!6595442 () Bool)

(assert (=> bm!423310 m!6595442))

(assert (=> b!5621905 d!1776382))

(declare-fun d!1776390 () Bool)

(declare-fun c!986685 () Bool)

(declare-fun e!3465739 () Bool)

(assert (=> d!1776390 (= c!986685 e!3465739)))

(declare-fun res!2381429 () Bool)

(assert (=> d!1776390 (=> (not res!2381429) (not e!3465739))))

(assert (=> d!1776390 (= res!2381429 ((_ is Cons!63002) (exprs!5493 lt!2260758)))))

(declare-fun e!3465738 () (InoxSet Context!9986))

(assert (=> d!1776390 (= (derivationStepZipperUp!877 lt!2260758 (h!69451 s!2326)) e!3465738)))

(declare-fun b!5622159 () Bool)

(declare-fun call!423316 () (InoxSet Context!9986))

(assert (=> b!5622159 (= e!3465738 ((_ map or) call!423316 (derivationStepZipperUp!877 (Context!9987 (t!376416 (exprs!5493 lt!2260758))) (h!69451 s!2326))))))

(declare-fun b!5622160 () Bool)

(assert (=> b!5622160 (= e!3465739 (nullable!5641 (h!69450 (exprs!5493 lt!2260758))))))

(declare-fun b!5622161 () Bool)

(declare-fun e!3465740 () (InoxSet Context!9986))

(assert (=> b!5622161 (= e!3465738 e!3465740)))

(declare-fun c!986686 () Bool)

(assert (=> b!5622161 (= c!986686 ((_ is Cons!63002) (exprs!5493 lt!2260758)))))

(declare-fun bm!423311 () Bool)

(assert (=> bm!423311 (= call!423316 (derivationStepZipperDown!951 (h!69450 (exprs!5493 lt!2260758)) (Context!9987 (t!376416 (exprs!5493 lt!2260758))) (h!69451 s!2326)))))

(declare-fun b!5622162 () Bool)

(assert (=> b!5622162 (= e!3465740 call!423316)))

(declare-fun b!5622163 () Bool)

(assert (=> b!5622163 (= e!3465740 ((as const (Array Context!9986 Bool)) false))))

(assert (= (and d!1776390 res!2381429) b!5622160))

(assert (= (and d!1776390 c!986685) b!5622159))

(assert (= (and d!1776390 (not c!986685)) b!5622161))

(assert (= (and b!5622161 c!986686) b!5622162))

(assert (= (and b!5622161 (not c!986686)) b!5622163))

(assert (= (or b!5622159 b!5622162) bm!423311))

(declare-fun m!6595444 () Bool)

(assert (=> b!5622159 m!6595444))

(declare-fun m!6595448 () Bool)

(assert (=> b!5622160 m!6595448))

(declare-fun m!6595454 () Bool)

(assert (=> bm!423311 m!6595454))

(assert (=> b!5621905 d!1776390))

(declare-fun d!1776394 () Bool)

(assert (=> d!1776394 (= (nullable!5641 (regOne!31731 (regOne!31730 r!7292))) (nullableFct!1739 (regOne!31731 (regOne!31730 r!7292))))))

(declare-fun bs!1301707 () Bool)

(assert (= bs!1301707 d!1776394))

(declare-fun m!6595456 () Bool)

(assert (=> bs!1301707 m!6595456))

(assert (=> b!5621905 d!1776394))

(declare-fun d!1776396 () Bool)

(assert (=> d!1776396 (= (flatMap!1222 lt!2260752 lambda!301860) (dynLambda!24637 lambda!301860 lt!2260719))))

(declare-fun lt!2260789 () Unit!155964)

(assert (=> d!1776396 (= lt!2260789 (choose!42577 lt!2260752 lt!2260719 lambda!301860))))

(assert (=> d!1776396 (= lt!2260752 (store ((as const (Array Context!9986 Bool)) false) lt!2260719 true))))

(assert (=> d!1776396 (= (lemmaFlatMapOnSingletonSet!754 lt!2260752 lt!2260719 lambda!301860) lt!2260789)))

(declare-fun b_lambda!212717 () Bool)

(assert (=> (not b_lambda!212717) (not d!1776396)))

(declare-fun bs!1301708 () Bool)

(assert (= bs!1301708 d!1776396))

(assert (=> bs!1301708 m!6595200))

(declare-fun m!6595458 () Bool)

(assert (=> bs!1301708 m!6595458))

(declare-fun m!6595460 () Bool)

(assert (=> bs!1301708 m!6595460))

(assert (=> bs!1301708 m!6595188))

(assert (=> b!5621905 d!1776396))

(declare-fun d!1776398 () Bool)

(declare-fun c!986699 () Bool)

(declare-fun isEmpty!34833 (List!63127) Bool)

(assert (=> d!1776398 (= c!986699 (isEmpty!34833 s!2326))))

(declare-fun e!3465764 () Bool)

(assert (=> d!1776398 (= (matchZipper!1747 z!1189 s!2326) e!3465764)))

(declare-fun b!5622199 () Bool)

(declare-fun nullableZipper!1594 ((InoxSet Context!9986)) Bool)

(assert (=> b!5622199 (= e!3465764 (nullableZipper!1594 z!1189))))

(declare-fun b!5622200 () Bool)

(declare-fun derivationStepZipper!1698 ((InoxSet Context!9986) C!31488) (InoxSet Context!9986))

(declare-fun head!11967 (List!63127) C!31488)

(declare-fun tail!11062 (List!63127) List!63127)

(assert (=> b!5622200 (= e!3465764 (matchZipper!1747 (derivationStepZipper!1698 z!1189 (head!11967 s!2326)) (tail!11062 s!2326)))))

(assert (= (and d!1776398 c!986699) b!5622199))

(assert (= (and d!1776398 (not c!986699)) b!5622200))

(declare-fun m!6595510 () Bool)

(assert (=> d!1776398 m!6595510))

(declare-fun m!6595512 () Bool)

(assert (=> b!5622199 m!6595512))

(declare-fun m!6595514 () Bool)

(assert (=> b!5622200 m!6595514))

(assert (=> b!5622200 m!6595514))

(declare-fun m!6595516 () Bool)

(assert (=> b!5622200 m!6595516))

(declare-fun m!6595518 () Bool)

(assert (=> b!5622200 m!6595518))

(assert (=> b!5622200 m!6595516))

(assert (=> b!5622200 m!6595518))

(declare-fun m!6595520 () Bool)

(assert (=> b!5622200 m!6595520))

(assert (=> b!5621905 d!1776398))

(declare-fun d!1776416 () Bool)

(assert (=> d!1776416 (= (flatMap!1222 lt!2260737 lambda!301860) (choose!42576 lt!2260737 lambda!301860))))

(declare-fun bs!1301711 () Bool)

(assert (= bs!1301711 d!1776416))

(declare-fun m!6595522 () Bool)

(assert (=> bs!1301711 m!6595522))

(assert (=> b!5621905 d!1776416))

(declare-fun d!1776418 () Bool)

(declare-fun c!986700 () Bool)

(assert (=> d!1776418 (= c!986700 (isEmpty!34833 s!2326))))

(declare-fun e!3465765 () Bool)

(assert (=> d!1776418 (= (matchZipper!1747 lt!2260737 s!2326) e!3465765)))

(declare-fun b!5622201 () Bool)

(assert (=> b!5622201 (= e!3465765 (nullableZipper!1594 lt!2260737))))

(declare-fun b!5622202 () Bool)

(assert (=> b!5622202 (= e!3465765 (matchZipper!1747 (derivationStepZipper!1698 lt!2260737 (head!11967 s!2326)) (tail!11062 s!2326)))))

(assert (= (and d!1776418 c!986700) b!5622201))

(assert (= (and d!1776418 (not c!986700)) b!5622202))

(assert (=> d!1776418 m!6595510))

(declare-fun m!6595524 () Bool)

(assert (=> b!5622201 m!6595524))

(assert (=> b!5622202 m!6595514))

(assert (=> b!5622202 m!6595514))

(declare-fun m!6595526 () Bool)

(assert (=> b!5622202 m!6595526))

(assert (=> b!5622202 m!6595518))

(assert (=> b!5622202 m!6595526))

(assert (=> b!5622202 m!6595518))

(declare-fun m!6595528 () Bool)

(assert (=> b!5622202 m!6595528))

(assert (=> b!5621905 d!1776418))

(declare-fun bs!1301714 () Bool)

(declare-fun d!1776420 () Bool)

(assert (= bs!1301714 (and d!1776420 d!1776370)))

(declare-fun lambda!301879 () Int)

(assert (=> bs!1301714 (= lambda!301879 lambda!301875)))

(declare-fun b!5622250 () Bool)

(declare-fun e!3465798 () Bool)

(declare-fun lt!2260806 () Regex!15609)

(declare-fun head!11968 (List!63126) Regex!15609)

(assert (=> b!5622250 (= e!3465798 (= lt!2260806 (head!11968 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5622251 () Bool)

(declare-fun e!3465795 () Bool)

(declare-fun isEmptyExpr!1153 (Regex!15609) Bool)

(assert (=> b!5622251 (= e!3465795 (isEmptyExpr!1153 lt!2260806))))

(declare-fun e!3465794 () Bool)

(assert (=> d!1776420 e!3465794))

(declare-fun res!2381460 () Bool)

(assert (=> d!1776420 (=> (not res!2381460) (not e!3465794))))

(assert (=> d!1776420 (= res!2381460 (validRegex!7345 lt!2260806))))

(declare-fun e!3465797 () Regex!15609)

(assert (=> d!1776420 (= lt!2260806 e!3465797)))

(declare-fun c!986716 () Bool)

(declare-fun e!3465796 () Bool)

(assert (=> d!1776420 (= c!986716 e!3465796)))

(declare-fun res!2381461 () Bool)

(assert (=> d!1776420 (=> (not res!2381461) (not e!3465796))))

(assert (=> d!1776420 (= res!2381461 ((_ is Cons!63002) (exprs!5493 (h!69452 zl!343))))))

(assert (=> d!1776420 (forall!14766 (exprs!5493 (h!69452 zl!343)) lambda!301879)))

(assert (=> d!1776420 (= (generalisedConcat!1224 (exprs!5493 (h!69452 zl!343))) lt!2260806)))

(declare-fun b!5622252 () Bool)

(assert (=> b!5622252 (= e!3465797 (h!69450 (exprs!5493 (h!69452 zl!343))))))

(declare-fun b!5622253 () Bool)

(declare-fun e!3465793 () Regex!15609)

(assert (=> b!5622253 (= e!3465797 e!3465793)))

(declare-fun c!986717 () Bool)

(assert (=> b!5622253 (= c!986717 ((_ is Cons!63002) (exprs!5493 (h!69452 zl!343))))))

(declare-fun b!5622254 () Bool)

(assert (=> b!5622254 (= e!3465796 (isEmpty!34830 (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5622255 () Bool)

(assert (=> b!5622255 (= e!3465795 e!3465798)))

(declare-fun c!986715 () Bool)

(declare-fun tail!11063 (List!63126) List!63126)

(assert (=> b!5622255 (= c!986715 (isEmpty!34830 (tail!11063 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5622256 () Bool)

(assert (=> b!5622256 (= e!3465793 (Concat!24454 (h!69450 (exprs!5493 (h!69452 zl!343))) (generalisedConcat!1224 (t!376416 (exprs!5493 (h!69452 zl!343))))))))

(declare-fun b!5622257 () Bool)

(assert (=> b!5622257 (= e!3465793 EmptyExpr!15609)))

(declare-fun b!5622258 () Bool)

(declare-fun isConcat!676 (Regex!15609) Bool)

(assert (=> b!5622258 (= e!3465798 (isConcat!676 lt!2260806))))

(declare-fun b!5622259 () Bool)

(assert (=> b!5622259 (= e!3465794 e!3465795)))

(declare-fun c!986718 () Bool)

(assert (=> b!5622259 (= c!986718 (isEmpty!34830 (exprs!5493 (h!69452 zl!343))))))

(assert (= (and d!1776420 res!2381461) b!5622254))

(assert (= (and d!1776420 c!986716) b!5622252))

(assert (= (and d!1776420 (not c!986716)) b!5622253))

(assert (= (and b!5622253 c!986717) b!5622256))

(assert (= (and b!5622253 (not c!986717)) b!5622257))

(assert (= (and d!1776420 res!2381460) b!5622259))

(assert (= (and b!5622259 c!986718) b!5622251))

(assert (= (and b!5622259 (not c!986718)) b!5622255))

(assert (= (and b!5622255 c!986715) b!5622250))

(assert (= (and b!5622255 (not c!986715)) b!5622258))

(assert (=> b!5622256 m!6595306))

(declare-fun m!6595558 () Bool)

(assert (=> b!5622251 m!6595558))

(assert (=> b!5622254 m!6595178))

(declare-fun m!6595560 () Bool)

(assert (=> b!5622258 m!6595560))

(declare-fun m!6595562 () Bool)

(assert (=> b!5622255 m!6595562))

(assert (=> b!5622255 m!6595562))

(declare-fun m!6595564 () Bool)

(assert (=> b!5622255 m!6595564))

(declare-fun m!6595566 () Bool)

(assert (=> b!5622259 m!6595566))

(declare-fun m!6595568 () Bool)

(assert (=> d!1776420 m!6595568))

(declare-fun m!6595570 () Bool)

(assert (=> d!1776420 m!6595570))

(declare-fun m!6595572 () Bool)

(assert (=> b!5622250 m!6595572))

(assert (=> b!5621926 d!1776420))

(declare-fun bs!1301715 () Bool)

(declare-fun d!1776428 () Bool)

(assert (= bs!1301715 (and d!1776428 d!1776370)))

(declare-fun lambda!301880 () Int)

(assert (=> bs!1301715 (= lambda!301880 lambda!301875)))

(declare-fun bs!1301716 () Bool)

(assert (= bs!1301716 (and d!1776428 d!1776420)))

(assert (=> bs!1301716 (= lambda!301880 lambda!301879)))

(declare-fun b!5622260 () Bool)

(declare-fun e!3465804 () Bool)

(declare-fun lt!2260807 () Regex!15609)

(assert (=> b!5622260 (= e!3465804 (= lt!2260807 (head!11968 (t!376416 (exprs!5493 (h!69452 zl!343))))))))

(declare-fun b!5622261 () Bool)

(declare-fun e!3465801 () Bool)

(assert (=> b!5622261 (= e!3465801 (isEmptyExpr!1153 lt!2260807))))

(declare-fun e!3465800 () Bool)

(assert (=> d!1776428 e!3465800))

(declare-fun res!2381462 () Bool)

(assert (=> d!1776428 (=> (not res!2381462) (not e!3465800))))

(assert (=> d!1776428 (= res!2381462 (validRegex!7345 lt!2260807))))

(declare-fun e!3465803 () Regex!15609)

(assert (=> d!1776428 (= lt!2260807 e!3465803)))

(declare-fun c!986720 () Bool)

(declare-fun e!3465802 () Bool)

(assert (=> d!1776428 (= c!986720 e!3465802)))

(declare-fun res!2381463 () Bool)

(assert (=> d!1776428 (=> (not res!2381463) (not e!3465802))))

(assert (=> d!1776428 (= res!2381463 ((_ is Cons!63002) (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(assert (=> d!1776428 (forall!14766 (t!376416 (exprs!5493 (h!69452 zl!343))) lambda!301880)))

(assert (=> d!1776428 (= (generalisedConcat!1224 (t!376416 (exprs!5493 (h!69452 zl!343)))) lt!2260807)))

(declare-fun b!5622262 () Bool)

(assert (=> b!5622262 (= e!3465803 (h!69450 (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5622263 () Bool)

(declare-fun e!3465799 () Regex!15609)

(assert (=> b!5622263 (= e!3465803 e!3465799)))

(declare-fun c!986721 () Bool)

(assert (=> b!5622263 (= c!986721 ((_ is Cons!63002) (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5622264 () Bool)

(assert (=> b!5622264 (= e!3465802 (isEmpty!34830 (t!376416 (t!376416 (exprs!5493 (h!69452 zl!343))))))))

(declare-fun b!5622265 () Bool)

(assert (=> b!5622265 (= e!3465801 e!3465804)))

(declare-fun c!986719 () Bool)

(assert (=> b!5622265 (= c!986719 (isEmpty!34830 (tail!11063 (t!376416 (exprs!5493 (h!69452 zl!343))))))))

(declare-fun b!5622266 () Bool)

(assert (=> b!5622266 (= e!3465799 (Concat!24454 (h!69450 (t!376416 (exprs!5493 (h!69452 zl!343)))) (generalisedConcat!1224 (t!376416 (t!376416 (exprs!5493 (h!69452 zl!343)))))))))

(declare-fun b!5622267 () Bool)

(assert (=> b!5622267 (= e!3465799 EmptyExpr!15609)))

(declare-fun b!5622268 () Bool)

(assert (=> b!5622268 (= e!3465804 (isConcat!676 lt!2260807))))

(declare-fun b!5622269 () Bool)

(assert (=> b!5622269 (= e!3465800 e!3465801)))

(declare-fun c!986722 () Bool)

(assert (=> b!5622269 (= c!986722 (isEmpty!34830 (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(assert (= (and d!1776428 res!2381463) b!5622264))

(assert (= (and d!1776428 c!986720) b!5622262))

(assert (= (and d!1776428 (not c!986720)) b!5622263))

(assert (= (and b!5622263 c!986721) b!5622266))

(assert (= (and b!5622263 (not c!986721)) b!5622267))

(assert (= (and d!1776428 res!2381462) b!5622269))

(assert (= (and b!5622269 c!986722) b!5622261))

(assert (= (and b!5622269 (not c!986722)) b!5622265))

(assert (= (and b!5622265 c!986719) b!5622260))

(assert (= (and b!5622265 (not c!986719)) b!5622268))

(declare-fun m!6595574 () Bool)

(assert (=> b!5622266 m!6595574))

(declare-fun m!6595576 () Bool)

(assert (=> b!5622261 m!6595576))

(declare-fun m!6595578 () Bool)

(assert (=> b!5622264 m!6595578))

(declare-fun m!6595580 () Bool)

(assert (=> b!5622268 m!6595580))

(declare-fun m!6595582 () Bool)

(assert (=> b!5622265 m!6595582))

(assert (=> b!5622265 m!6595582))

(declare-fun m!6595584 () Bool)

(assert (=> b!5622265 m!6595584))

(assert (=> b!5622269 m!6595178))

(declare-fun m!6595586 () Bool)

(assert (=> d!1776428 m!6595586))

(declare-fun m!6595588 () Bool)

(assert (=> d!1776428 m!6595588))

(declare-fun m!6595590 () Bool)

(assert (=> b!5622260 m!6595590))

(assert (=> b!5621924 d!1776428))

(declare-fun d!1776430 () Bool)

(declare-fun c!986723 () Bool)

(assert (=> d!1776430 (= c!986723 (isEmpty!34833 s!2326))))

(declare-fun e!3465805 () Bool)

(assert (=> d!1776430 (= (matchZipper!1747 lt!2260752 s!2326) e!3465805)))

(declare-fun b!5622270 () Bool)

(assert (=> b!5622270 (= e!3465805 (nullableZipper!1594 lt!2260752))))

(declare-fun b!5622271 () Bool)

(assert (=> b!5622271 (= e!3465805 (matchZipper!1747 (derivationStepZipper!1698 lt!2260752 (head!11967 s!2326)) (tail!11062 s!2326)))))

(assert (= (and d!1776430 c!986723) b!5622270))

(assert (= (and d!1776430 (not c!986723)) b!5622271))

(assert (=> d!1776430 m!6595510))

(declare-fun m!6595592 () Bool)

(assert (=> b!5622270 m!6595592))

(assert (=> b!5622271 m!6595514))

(assert (=> b!5622271 m!6595514))

(declare-fun m!6595594 () Bool)

(assert (=> b!5622271 m!6595594))

(assert (=> b!5622271 m!6595518))

(assert (=> b!5622271 m!6595594))

(assert (=> b!5622271 m!6595518))

(declare-fun m!6595596 () Bool)

(assert (=> b!5622271 m!6595596))

(assert (=> b!5621904 d!1776430))

(declare-fun d!1776432 () Bool)

(declare-fun c!986724 () Bool)

(assert (=> d!1776432 (= c!986724 (isEmpty!34833 (t!376417 s!2326)))))

(declare-fun e!3465806 () Bool)

(assert (=> d!1776432 (= (matchZipper!1747 lt!2260759 (t!376417 s!2326)) e!3465806)))

(declare-fun b!5622272 () Bool)

(assert (=> b!5622272 (= e!3465806 (nullableZipper!1594 lt!2260759))))

(declare-fun b!5622273 () Bool)

(assert (=> b!5622273 (= e!3465806 (matchZipper!1747 (derivationStepZipper!1698 lt!2260759 (head!11967 (t!376417 s!2326))) (tail!11062 (t!376417 s!2326))))))

(assert (= (and d!1776432 c!986724) b!5622272))

(assert (= (and d!1776432 (not c!986724)) b!5622273))

(declare-fun m!6595598 () Bool)

(assert (=> d!1776432 m!6595598))

(declare-fun m!6595600 () Bool)

(assert (=> b!5622272 m!6595600))

(declare-fun m!6595602 () Bool)

(assert (=> b!5622273 m!6595602))

(assert (=> b!5622273 m!6595602))

(declare-fun m!6595604 () Bool)

(assert (=> b!5622273 m!6595604))

(declare-fun m!6595606 () Bool)

(assert (=> b!5622273 m!6595606))

(assert (=> b!5622273 m!6595604))

(assert (=> b!5622273 m!6595606))

(declare-fun m!6595608 () Bool)

(assert (=> b!5622273 m!6595608))

(assert (=> b!5621928 d!1776432))

(declare-fun d!1776434 () Bool)

(assert (=> d!1776434 (= (matchR!7794 lt!2260735 s!2326) (matchZipper!1747 lt!2260752 s!2326))))

(declare-fun lt!2260813 () Unit!155964)

(declare-fun choose!42579 ((InoxSet Context!9986) List!63128 Regex!15609 List!63127) Unit!155964)

(assert (=> d!1776434 (= lt!2260813 (choose!42579 lt!2260752 lt!2260725 lt!2260735 s!2326))))

(assert (=> d!1776434 (validRegex!7345 lt!2260735)))

(assert (=> d!1776434 (= (theoremZipperRegexEquiv!625 lt!2260752 lt!2260725 lt!2260735 s!2326) lt!2260813)))

(declare-fun bs!1301722 () Bool)

(assert (= bs!1301722 d!1776434))

(assert (=> bs!1301722 m!6595276))

(assert (=> bs!1301722 m!6595246))

(declare-fun m!6595610 () Bool)

(assert (=> bs!1301722 m!6595610))

(declare-fun m!6595612 () Bool)

(assert (=> bs!1301722 m!6595612))

(assert (=> b!5621906 d!1776434))

(declare-fun bm!423317 () Bool)

(declare-fun call!423322 () Bool)

(assert (=> bm!423317 (= call!423322 (isEmpty!34833 s!2326))))

(declare-fun b!5622314 () Bool)

(declare-fun e!3465829 () Bool)

(declare-fun derivativeStep!4447 (Regex!15609 C!31488) Regex!15609)

(assert (=> b!5622314 (= e!3465829 (matchR!7794 (derivativeStep!4447 lt!2260765 (head!11967 s!2326)) (tail!11062 s!2326)))))

(declare-fun d!1776436 () Bool)

(declare-fun e!3465827 () Bool)

(assert (=> d!1776436 e!3465827))

(declare-fun c!986732 () Bool)

(assert (=> d!1776436 (= c!986732 ((_ is EmptyExpr!15609) lt!2260765))))

(declare-fun lt!2260819 () Bool)

(assert (=> d!1776436 (= lt!2260819 e!3465829)))

(declare-fun c!986731 () Bool)

(assert (=> d!1776436 (= c!986731 (isEmpty!34833 s!2326))))

(assert (=> d!1776436 (validRegex!7345 lt!2260765)))

(assert (=> d!1776436 (= (matchR!7794 lt!2260765 s!2326) lt!2260819)))

(declare-fun b!5622315 () Bool)

(declare-fun res!2381492 () Bool)

(declare-fun e!3465833 () Bool)

(assert (=> b!5622315 (=> (not res!2381492) (not e!3465833))))

(assert (=> b!5622315 (= res!2381492 (isEmpty!34833 (tail!11062 s!2326)))))

(declare-fun b!5622316 () Bool)

(declare-fun e!3465830 () Bool)

(assert (=> b!5622316 (= e!3465827 e!3465830)))

(declare-fun c!986733 () Bool)

(assert (=> b!5622316 (= c!986733 ((_ is EmptyLang!15609) lt!2260765))))

(declare-fun b!5622317 () Bool)

(assert (=> b!5622317 (= e!3465829 (nullable!5641 lt!2260765))))

(declare-fun b!5622318 () Bool)

(assert (=> b!5622318 (= e!3465833 (= (head!11967 s!2326) (c!986617 lt!2260765)))))

(declare-fun b!5622319 () Bool)

(declare-fun res!2381495 () Bool)

(declare-fun e!3465831 () Bool)

(assert (=> b!5622319 (=> res!2381495 e!3465831)))

(assert (=> b!5622319 (= res!2381495 e!3465833)))

(declare-fun res!2381494 () Bool)

(assert (=> b!5622319 (=> (not res!2381494) (not e!3465833))))

(assert (=> b!5622319 (= res!2381494 lt!2260819)))

(declare-fun b!5622320 () Bool)

(declare-fun e!3465832 () Bool)

(assert (=> b!5622320 (= e!3465831 e!3465832)))

(declare-fun res!2381497 () Bool)

(assert (=> b!5622320 (=> (not res!2381497) (not e!3465832))))

(assert (=> b!5622320 (= res!2381497 (not lt!2260819))))

(declare-fun b!5622321 () Bool)

(declare-fun res!2381493 () Bool)

(declare-fun e!3465828 () Bool)

(assert (=> b!5622321 (=> res!2381493 e!3465828)))

(assert (=> b!5622321 (= res!2381493 (not (isEmpty!34833 (tail!11062 s!2326))))))

(declare-fun b!5622322 () Bool)

(assert (=> b!5622322 (= e!3465828 (not (= (head!11967 s!2326) (c!986617 lt!2260765))))))

(declare-fun b!5622323 () Bool)

(declare-fun res!2381498 () Bool)

(assert (=> b!5622323 (=> res!2381498 e!3465831)))

(assert (=> b!5622323 (= res!2381498 (not ((_ is ElementMatch!15609) lt!2260765)))))

(assert (=> b!5622323 (= e!3465830 e!3465831)))

(declare-fun b!5622324 () Bool)

(declare-fun res!2381496 () Bool)

(assert (=> b!5622324 (=> (not res!2381496) (not e!3465833))))

(assert (=> b!5622324 (= res!2381496 (not call!423322))))

(declare-fun b!5622325 () Bool)

(assert (=> b!5622325 (= e!3465827 (= lt!2260819 call!423322))))

(declare-fun b!5622326 () Bool)

(assert (=> b!5622326 (= e!3465832 e!3465828)))

(declare-fun res!2381499 () Bool)

(assert (=> b!5622326 (=> res!2381499 e!3465828)))

(assert (=> b!5622326 (= res!2381499 call!423322)))

(declare-fun b!5622327 () Bool)

(assert (=> b!5622327 (= e!3465830 (not lt!2260819))))

(assert (= (and d!1776436 c!986731) b!5622317))

(assert (= (and d!1776436 (not c!986731)) b!5622314))

(assert (= (and d!1776436 c!986732) b!5622325))

(assert (= (and d!1776436 (not c!986732)) b!5622316))

(assert (= (and b!5622316 c!986733) b!5622327))

(assert (= (and b!5622316 (not c!986733)) b!5622323))

(assert (= (and b!5622323 (not res!2381498)) b!5622319))

(assert (= (and b!5622319 res!2381494) b!5622324))

(assert (= (and b!5622324 res!2381496) b!5622315))

(assert (= (and b!5622315 res!2381492) b!5622318))

(assert (= (and b!5622319 (not res!2381495)) b!5622320))

(assert (= (and b!5622320 res!2381497) b!5622326))

(assert (= (and b!5622326 (not res!2381499)) b!5622321))

(assert (= (and b!5622321 (not res!2381493)) b!5622322))

(assert (= (or b!5622325 b!5622324 b!5622326) bm!423317))

(assert (=> d!1776436 m!6595510))

(declare-fun m!6595618 () Bool)

(assert (=> d!1776436 m!6595618))

(assert (=> b!5622314 m!6595514))

(assert (=> b!5622314 m!6595514))

(declare-fun m!6595620 () Bool)

(assert (=> b!5622314 m!6595620))

(assert (=> b!5622314 m!6595518))

(assert (=> b!5622314 m!6595620))

(assert (=> b!5622314 m!6595518))

(declare-fun m!6595622 () Bool)

(assert (=> b!5622314 m!6595622))

(assert (=> b!5622321 m!6595518))

(assert (=> b!5622321 m!6595518))

(declare-fun m!6595624 () Bool)

(assert (=> b!5622321 m!6595624))

(declare-fun m!6595626 () Bool)

(assert (=> b!5622317 m!6595626))

(assert (=> b!5622315 m!6595518))

(assert (=> b!5622315 m!6595518))

(assert (=> b!5622315 m!6595624))

(assert (=> b!5622318 m!6595514))

(assert (=> bm!423317 m!6595510))

(assert (=> b!5622322 m!6595514))

(assert (=> b!5621906 d!1776436))

(declare-fun bs!1301738 () Bool)

(declare-fun b!5622390 () Bool)

(assert (= bs!1301738 (and b!5622390 b!5621913)))

(declare-fun lambda!301897 () Int)

(assert (=> bs!1301738 (not (= lambda!301897 lambda!301858))))

(assert (=> bs!1301738 (not (= lambda!301897 lambda!301859))))

(assert (=> b!5622390 true))

(assert (=> b!5622390 true))

(declare-fun bs!1301739 () Bool)

(declare-fun b!5622398 () Bool)

(assert (= bs!1301739 (and b!5622398 b!5621913)))

(declare-fun lambda!301898 () Int)

(assert (=> bs!1301739 (not (= lambda!301898 lambda!301858))))

(assert (=> bs!1301739 (= (and (= (regOne!31730 lt!2260735) (regOne!31730 r!7292)) (= (regTwo!31730 lt!2260735) (regTwo!31730 r!7292))) (= lambda!301898 lambda!301859))))

(declare-fun bs!1301740 () Bool)

(assert (= bs!1301740 (and b!5622398 b!5622390)))

(assert (=> bs!1301740 (not (= lambda!301898 lambda!301897))))

(assert (=> b!5622398 true))

(assert (=> b!5622398 true))

(declare-fun b!5622388 () Bool)

(declare-fun e!3465875 () Bool)

(declare-fun e!3465872 () Bool)

(assert (=> b!5622388 (= e!3465875 e!3465872)))

(declare-fun c!986755 () Bool)

(assert (=> b!5622388 (= c!986755 ((_ is Star!15609) lt!2260735))))

(declare-fun b!5622389 () Bool)

(declare-fun e!3465874 () Bool)

(declare-fun call!423332 () Bool)

(assert (=> b!5622389 (= e!3465874 call!423332)))

(declare-fun e!3465870 () Bool)

(declare-fun call!423333 () Bool)

(assert (=> b!5622390 (= e!3465870 call!423333)))

(declare-fun b!5622391 () Bool)

(declare-fun e!3465873 () Bool)

(assert (=> b!5622391 (= e!3465873 (= s!2326 (Cons!63003 (c!986617 lt!2260735) Nil!63003)))))

(declare-fun b!5622392 () Bool)

(declare-fun c!986753 () Bool)

(assert (=> b!5622392 (= c!986753 ((_ is ElementMatch!15609) lt!2260735))))

(declare-fun e!3465876 () Bool)

(assert (=> b!5622392 (= e!3465876 e!3465873)))

(declare-fun b!5622393 () Bool)

(assert (=> b!5622393 (= e!3465874 e!3465876)))

(declare-fun res!2381525 () Bool)

(assert (=> b!5622393 (= res!2381525 (not ((_ is EmptyLang!15609) lt!2260735)))))

(assert (=> b!5622393 (=> (not res!2381525) (not e!3465876))))

(declare-fun b!5622394 () Bool)

(declare-fun res!2381524 () Bool)

(assert (=> b!5622394 (=> res!2381524 e!3465870)))

(assert (=> b!5622394 (= res!2381524 call!423332)))

(assert (=> b!5622394 (= e!3465872 e!3465870)))

(declare-fun bm!423327 () Bool)

(assert (=> bm!423327 (= call!423332 (isEmpty!34833 s!2326))))

(declare-fun b!5622396 () Bool)

(declare-fun e!3465871 () Bool)

(assert (=> b!5622396 (= e!3465871 (matchRSpec!2712 (regTwo!31731 lt!2260735) s!2326))))

(declare-fun b!5622397 () Bool)

(declare-fun c!986754 () Bool)

(assert (=> b!5622397 (= c!986754 ((_ is Union!15609) lt!2260735))))

(assert (=> b!5622397 (= e!3465873 e!3465875)))

(assert (=> b!5622398 (= e!3465872 call!423333)))

(declare-fun bm!423328 () Bool)

(assert (=> bm!423328 (= call!423333 (Exists!2709 (ite c!986755 lambda!301897 lambda!301898)))))

(declare-fun d!1776440 () Bool)

(declare-fun c!986752 () Bool)

(assert (=> d!1776440 (= c!986752 ((_ is EmptyExpr!15609) lt!2260735))))

(assert (=> d!1776440 (= (matchRSpec!2712 lt!2260735 s!2326) e!3465874)))

(declare-fun b!5622395 () Bool)

(assert (=> b!5622395 (= e!3465875 e!3465871)))

(declare-fun res!2381526 () Bool)

(assert (=> b!5622395 (= res!2381526 (matchRSpec!2712 (regOne!31731 lt!2260735) s!2326))))

(assert (=> b!5622395 (=> res!2381526 e!3465871)))

(assert (= (and d!1776440 c!986752) b!5622389))

(assert (= (and d!1776440 (not c!986752)) b!5622393))

(assert (= (and b!5622393 res!2381525) b!5622392))

(assert (= (and b!5622392 c!986753) b!5622391))

(assert (= (and b!5622392 (not c!986753)) b!5622397))

(assert (= (and b!5622397 c!986754) b!5622395))

(assert (= (and b!5622397 (not c!986754)) b!5622388))

(assert (= (and b!5622395 (not res!2381526)) b!5622396))

(assert (= (and b!5622388 c!986755) b!5622394))

(assert (= (and b!5622388 (not c!986755)) b!5622398))

(assert (= (and b!5622394 (not res!2381524)) b!5622390))

(assert (= (or b!5622390 b!5622398) bm!423328))

(assert (= (or b!5622389 b!5622394) bm!423327))

(assert (=> bm!423327 m!6595510))

(declare-fun m!6595670 () Bool)

(assert (=> b!5622396 m!6595670))

(declare-fun m!6595672 () Bool)

(assert (=> bm!423328 m!6595672))

(declare-fun m!6595674 () Bool)

(assert (=> b!5622395 m!6595674))

(assert (=> b!5621906 d!1776440))

(declare-fun bs!1301742 () Bool)

(declare-fun d!1776462 () Bool)

(assert (= bs!1301742 (and d!1776462 d!1776370)))

(declare-fun lambda!301899 () Int)

(assert (=> bs!1301742 (= lambda!301899 lambda!301875)))

(declare-fun bs!1301743 () Bool)

(assert (= bs!1301743 (and d!1776462 d!1776420)))

(assert (=> bs!1301743 (= lambda!301899 lambda!301879)))

(declare-fun bs!1301744 () Bool)

(assert (= bs!1301744 (and d!1776462 d!1776428)))

(assert (=> bs!1301744 (= lambda!301899 lambda!301880)))

(declare-fun b!5622399 () Bool)

(declare-fun e!3465882 () Bool)

(declare-fun lt!2260826 () Regex!15609)

(assert (=> b!5622399 (= e!3465882 (= lt!2260826 (head!11968 lt!2260763)))))

(declare-fun b!5622400 () Bool)

(declare-fun e!3465879 () Bool)

(assert (=> b!5622400 (= e!3465879 (isEmptyExpr!1153 lt!2260826))))

(declare-fun e!3465878 () Bool)

(assert (=> d!1776462 e!3465878))

(declare-fun res!2381527 () Bool)

(assert (=> d!1776462 (=> (not res!2381527) (not e!3465878))))

(assert (=> d!1776462 (= res!2381527 (validRegex!7345 lt!2260826))))

(declare-fun e!3465881 () Regex!15609)

(assert (=> d!1776462 (= lt!2260826 e!3465881)))

(declare-fun c!986757 () Bool)

(declare-fun e!3465880 () Bool)

(assert (=> d!1776462 (= c!986757 e!3465880)))

(declare-fun res!2381528 () Bool)

(assert (=> d!1776462 (=> (not res!2381528) (not e!3465880))))

(assert (=> d!1776462 (= res!2381528 ((_ is Cons!63002) lt!2260763))))

(assert (=> d!1776462 (forall!14766 lt!2260763 lambda!301899)))

(assert (=> d!1776462 (= (generalisedConcat!1224 lt!2260763) lt!2260826)))

(declare-fun b!5622401 () Bool)

(assert (=> b!5622401 (= e!3465881 (h!69450 lt!2260763))))

(declare-fun b!5622402 () Bool)

(declare-fun e!3465877 () Regex!15609)

(assert (=> b!5622402 (= e!3465881 e!3465877)))

(declare-fun c!986758 () Bool)

(assert (=> b!5622402 (= c!986758 ((_ is Cons!63002) lt!2260763))))

(declare-fun b!5622403 () Bool)

(assert (=> b!5622403 (= e!3465880 (isEmpty!34830 (t!376416 lt!2260763)))))

(declare-fun b!5622404 () Bool)

(assert (=> b!5622404 (= e!3465879 e!3465882)))

(declare-fun c!986756 () Bool)

(assert (=> b!5622404 (= c!986756 (isEmpty!34830 (tail!11063 lt!2260763)))))

(declare-fun b!5622405 () Bool)

(assert (=> b!5622405 (= e!3465877 (Concat!24454 (h!69450 lt!2260763) (generalisedConcat!1224 (t!376416 lt!2260763))))))

(declare-fun b!5622406 () Bool)

(assert (=> b!5622406 (= e!3465877 EmptyExpr!15609)))

(declare-fun b!5622407 () Bool)

(assert (=> b!5622407 (= e!3465882 (isConcat!676 lt!2260826))))

(declare-fun b!5622408 () Bool)

(assert (=> b!5622408 (= e!3465878 e!3465879)))

(declare-fun c!986759 () Bool)

(assert (=> b!5622408 (= c!986759 (isEmpty!34830 lt!2260763))))

(assert (= (and d!1776462 res!2381528) b!5622403))

(assert (= (and d!1776462 c!986757) b!5622401))

(assert (= (and d!1776462 (not c!986757)) b!5622402))

(assert (= (and b!5622402 c!986758) b!5622405))

(assert (= (and b!5622402 (not c!986758)) b!5622406))

(assert (= (and d!1776462 res!2381527) b!5622408))

(assert (= (and b!5622408 c!986759) b!5622400))

(assert (= (and b!5622408 (not c!986759)) b!5622404))

(assert (= (and b!5622404 c!986756) b!5622399))

(assert (= (and b!5622404 (not c!986756)) b!5622407))

(declare-fun m!6595676 () Bool)

(assert (=> b!5622405 m!6595676))

(declare-fun m!6595678 () Bool)

(assert (=> b!5622400 m!6595678))

(declare-fun m!6595680 () Bool)

(assert (=> b!5622403 m!6595680))

(declare-fun m!6595682 () Bool)

(assert (=> b!5622407 m!6595682))

(declare-fun m!6595684 () Bool)

(assert (=> b!5622404 m!6595684))

(assert (=> b!5622404 m!6595684))

(declare-fun m!6595686 () Bool)

(assert (=> b!5622404 m!6595686))

(declare-fun m!6595688 () Bool)

(assert (=> b!5622408 m!6595688))

(declare-fun m!6595690 () Bool)

(assert (=> d!1776462 m!6595690))

(declare-fun m!6595692 () Bool)

(assert (=> d!1776462 m!6595692))

(declare-fun m!6595694 () Bool)

(assert (=> b!5622399 m!6595694))

(assert (=> b!5621906 d!1776462))

(declare-fun bs!1301745 () Bool)

(declare-fun b!5622411 () Bool)

(assert (= bs!1301745 (and b!5622411 b!5621913)))

(declare-fun lambda!301900 () Int)

(assert (=> bs!1301745 (not (= lambda!301900 lambda!301858))))

(assert (=> bs!1301745 (not (= lambda!301900 lambda!301859))))

(declare-fun bs!1301746 () Bool)

(assert (= bs!1301746 (and b!5622411 b!5622390)))

(assert (=> bs!1301746 (= (and (= (reg!15938 lt!2260765) (reg!15938 lt!2260735)) (= lt!2260765 lt!2260735)) (= lambda!301900 lambda!301897))))

(declare-fun bs!1301747 () Bool)

(assert (= bs!1301747 (and b!5622411 b!5622398)))

(assert (=> bs!1301747 (not (= lambda!301900 lambda!301898))))

(assert (=> b!5622411 true))

(assert (=> b!5622411 true))

(declare-fun bs!1301748 () Bool)

(declare-fun b!5622419 () Bool)

(assert (= bs!1301748 (and b!5622419 b!5622398)))

(declare-fun lambda!301901 () Int)

(assert (=> bs!1301748 (= (and (= (regOne!31730 lt!2260765) (regOne!31730 lt!2260735)) (= (regTwo!31730 lt!2260765) (regTwo!31730 lt!2260735))) (= lambda!301901 lambda!301898))))

(declare-fun bs!1301749 () Bool)

(assert (= bs!1301749 (and b!5622419 b!5621913)))

(assert (=> bs!1301749 (not (= lambda!301901 lambda!301858))))

(assert (=> bs!1301749 (= (and (= (regOne!31730 lt!2260765) (regOne!31730 r!7292)) (= (regTwo!31730 lt!2260765) (regTwo!31730 r!7292))) (= lambda!301901 lambda!301859))))

(declare-fun bs!1301750 () Bool)

(assert (= bs!1301750 (and b!5622419 b!5622390)))

(assert (=> bs!1301750 (not (= lambda!301901 lambda!301897))))

(declare-fun bs!1301751 () Bool)

(assert (= bs!1301751 (and b!5622419 b!5622411)))

(assert (=> bs!1301751 (not (= lambda!301901 lambda!301900))))

(assert (=> b!5622419 true))

(assert (=> b!5622419 true))

(declare-fun b!5622409 () Bool)

(declare-fun e!3465888 () Bool)

(declare-fun e!3465885 () Bool)

(assert (=> b!5622409 (= e!3465888 e!3465885)))

(declare-fun c!986763 () Bool)

(assert (=> b!5622409 (= c!986763 ((_ is Star!15609) lt!2260765))))

(declare-fun b!5622410 () Bool)

(declare-fun e!3465887 () Bool)

(declare-fun call!423334 () Bool)

(assert (=> b!5622410 (= e!3465887 call!423334)))

(declare-fun e!3465883 () Bool)

(declare-fun call!423335 () Bool)

(assert (=> b!5622411 (= e!3465883 call!423335)))

(declare-fun b!5622412 () Bool)

(declare-fun e!3465886 () Bool)

(assert (=> b!5622412 (= e!3465886 (= s!2326 (Cons!63003 (c!986617 lt!2260765) Nil!63003)))))

(declare-fun b!5622413 () Bool)

(declare-fun c!986761 () Bool)

(assert (=> b!5622413 (= c!986761 ((_ is ElementMatch!15609) lt!2260765))))

(declare-fun e!3465889 () Bool)

(assert (=> b!5622413 (= e!3465889 e!3465886)))

(declare-fun b!5622414 () Bool)

(assert (=> b!5622414 (= e!3465887 e!3465889)))

(declare-fun res!2381530 () Bool)

(assert (=> b!5622414 (= res!2381530 (not ((_ is EmptyLang!15609) lt!2260765)))))

(assert (=> b!5622414 (=> (not res!2381530) (not e!3465889))))

(declare-fun b!5622415 () Bool)

(declare-fun res!2381529 () Bool)

(assert (=> b!5622415 (=> res!2381529 e!3465883)))

(assert (=> b!5622415 (= res!2381529 call!423334)))

(assert (=> b!5622415 (= e!3465885 e!3465883)))

(declare-fun bm!423329 () Bool)

(assert (=> bm!423329 (= call!423334 (isEmpty!34833 s!2326))))

(declare-fun b!5622417 () Bool)

(declare-fun e!3465884 () Bool)

(assert (=> b!5622417 (= e!3465884 (matchRSpec!2712 (regTwo!31731 lt!2260765) s!2326))))

(declare-fun b!5622418 () Bool)

(declare-fun c!986762 () Bool)

(assert (=> b!5622418 (= c!986762 ((_ is Union!15609) lt!2260765))))

(assert (=> b!5622418 (= e!3465886 e!3465888)))

(assert (=> b!5622419 (= e!3465885 call!423335)))

(declare-fun bm!423330 () Bool)

(assert (=> bm!423330 (= call!423335 (Exists!2709 (ite c!986763 lambda!301900 lambda!301901)))))

(declare-fun d!1776464 () Bool)

(declare-fun c!986760 () Bool)

(assert (=> d!1776464 (= c!986760 ((_ is EmptyExpr!15609) lt!2260765))))

(assert (=> d!1776464 (= (matchRSpec!2712 lt!2260765 s!2326) e!3465887)))

(declare-fun b!5622416 () Bool)

(assert (=> b!5622416 (= e!3465888 e!3465884)))

(declare-fun res!2381531 () Bool)

(assert (=> b!5622416 (= res!2381531 (matchRSpec!2712 (regOne!31731 lt!2260765) s!2326))))

(assert (=> b!5622416 (=> res!2381531 e!3465884)))

(assert (= (and d!1776464 c!986760) b!5622410))

(assert (= (and d!1776464 (not c!986760)) b!5622414))

(assert (= (and b!5622414 res!2381530) b!5622413))

(assert (= (and b!5622413 c!986761) b!5622412))

(assert (= (and b!5622413 (not c!986761)) b!5622418))

(assert (= (and b!5622418 c!986762) b!5622416))

(assert (= (and b!5622418 (not c!986762)) b!5622409))

(assert (= (and b!5622416 (not res!2381531)) b!5622417))

(assert (= (and b!5622409 c!986763) b!5622415))

(assert (= (and b!5622409 (not c!986763)) b!5622419))

(assert (= (and b!5622415 (not res!2381529)) b!5622411))

(assert (= (or b!5622411 b!5622419) bm!423330))

(assert (= (or b!5622410 b!5622415) bm!423329))

(assert (=> bm!423329 m!6595510))

(declare-fun m!6595696 () Bool)

(assert (=> b!5622417 m!6595696))

(declare-fun m!6595698 () Bool)

(assert (=> bm!423330 m!6595698))

(declare-fun m!6595700 () Bool)

(assert (=> b!5622416 m!6595700))

(assert (=> b!5621906 d!1776464))

(declare-fun d!1776466 () Bool)

(assert (=> d!1776466 (= (matchR!7794 lt!2260765 s!2326) (matchRSpec!2712 lt!2260765 s!2326))))

(declare-fun lt!2260829 () Unit!155964)

(declare-fun choose!42585 (Regex!15609 List!63127) Unit!155964)

(assert (=> d!1776466 (= lt!2260829 (choose!42585 lt!2260765 s!2326))))

(assert (=> d!1776466 (validRegex!7345 lt!2260765)))

(assert (=> d!1776466 (= (mainMatchTheorem!2712 lt!2260765 s!2326) lt!2260829)))

(declare-fun bs!1301752 () Bool)

(assert (= bs!1301752 d!1776466))

(assert (=> bs!1301752 m!6595274))

(assert (=> bs!1301752 m!6595270))

(declare-fun m!6595702 () Bool)

(assert (=> bs!1301752 m!6595702))

(assert (=> bs!1301752 m!6595618))

(assert (=> b!5621906 d!1776466))

(declare-fun d!1776468 () Bool)

(assert (=> d!1776468 (= (matchR!7794 lt!2260765 s!2326) (matchZipper!1747 lt!2260737 s!2326))))

(declare-fun lt!2260830 () Unit!155964)

(assert (=> d!1776468 (= lt!2260830 (choose!42579 lt!2260737 lt!2260720 lt!2260765 s!2326))))

(assert (=> d!1776468 (validRegex!7345 lt!2260765)))

(assert (=> d!1776468 (= (theoremZipperRegexEquiv!625 lt!2260737 lt!2260720 lt!2260765 s!2326) lt!2260830)))

(declare-fun bs!1301753 () Bool)

(assert (= bs!1301753 d!1776468))

(assert (=> bs!1301753 m!6595274))

(assert (=> bs!1301753 m!6595206))

(declare-fun m!6595704 () Bool)

(assert (=> bs!1301753 m!6595704))

(assert (=> bs!1301753 m!6595618))

(assert (=> b!5621906 d!1776468))

(declare-fun d!1776470 () Bool)

(assert (=> d!1776470 (= (matchR!7794 lt!2260735 s!2326) (matchRSpec!2712 lt!2260735 s!2326))))

(declare-fun lt!2260831 () Unit!155964)

(assert (=> d!1776470 (= lt!2260831 (choose!42585 lt!2260735 s!2326))))

(assert (=> d!1776470 (validRegex!7345 lt!2260735)))

(assert (=> d!1776470 (= (mainMatchTheorem!2712 lt!2260735 s!2326) lt!2260831)))

(declare-fun bs!1301754 () Bool)

(assert (= bs!1301754 d!1776470))

(assert (=> bs!1301754 m!6595276))

(assert (=> bs!1301754 m!6595266))

(declare-fun m!6595706 () Bool)

(assert (=> bs!1301754 m!6595706))

(assert (=> bs!1301754 m!6595612))

(assert (=> b!5621906 d!1776470))

(declare-fun bs!1301755 () Bool)

(declare-fun d!1776472 () Bool)

(assert (= bs!1301755 (and d!1776472 d!1776370)))

(declare-fun lambda!301902 () Int)

(assert (=> bs!1301755 (= lambda!301902 lambda!301875)))

(declare-fun bs!1301756 () Bool)

(assert (= bs!1301756 (and d!1776472 d!1776420)))

(assert (=> bs!1301756 (= lambda!301902 lambda!301879)))

(declare-fun bs!1301757 () Bool)

(assert (= bs!1301757 (and d!1776472 d!1776428)))

(assert (=> bs!1301757 (= lambda!301902 lambda!301880)))

(declare-fun bs!1301758 () Bool)

(assert (= bs!1301758 (and d!1776472 d!1776462)))

(assert (=> bs!1301758 (= lambda!301902 lambda!301899)))

(declare-fun b!5622442 () Bool)

(declare-fun e!3465907 () Bool)

(declare-fun lt!2260832 () Regex!15609)

(assert (=> b!5622442 (= e!3465907 (= lt!2260832 (head!11968 lt!2260721)))))

(declare-fun b!5622443 () Bool)

(declare-fun e!3465904 () Bool)

(assert (=> b!5622443 (= e!3465904 (isEmptyExpr!1153 lt!2260832))))

(declare-fun e!3465903 () Bool)

(assert (=> d!1776472 e!3465903))

(declare-fun res!2381534 () Bool)

(assert (=> d!1776472 (=> (not res!2381534) (not e!3465903))))

(assert (=> d!1776472 (= res!2381534 (validRegex!7345 lt!2260832))))

(declare-fun e!3465906 () Regex!15609)

(assert (=> d!1776472 (= lt!2260832 e!3465906)))

(declare-fun c!986775 () Bool)

(declare-fun e!3465905 () Bool)

(assert (=> d!1776472 (= c!986775 e!3465905)))

(declare-fun res!2381535 () Bool)

(assert (=> d!1776472 (=> (not res!2381535) (not e!3465905))))

(assert (=> d!1776472 (= res!2381535 ((_ is Cons!63002) lt!2260721))))

(assert (=> d!1776472 (forall!14766 lt!2260721 lambda!301902)))

(assert (=> d!1776472 (= (generalisedConcat!1224 lt!2260721) lt!2260832)))

(declare-fun b!5622444 () Bool)

(assert (=> b!5622444 (= e!3465906 (h!69450 lt!2260721))))

(declare-fun b!5622445 () Bool)

(declare-fun e!3465902 () Regex!15609)

(assert (=> b!5622445 (= e!3465906 e!3465902)))

(declare-fun c!986776 () Bool)

(assert (=> b!5622445 (= c!986776 ((_ is Cons!63002) lt!2260721))))

(declare-fun b!5622446 () Bool)

(assert (=> b!5622446 (= e!3465905 (isEmpty!34830 (t!376416 lt!2260721)))))

(declare-fun b!5622447 () Bool)

(assert (=> b!5622447 (= e!3465904 e!3465907)))

(declare-fun c!986774 () Bool)

(assert (=> b!5622447 (= c!986774 (isEmpty!34830 (tail!11063 lt!2260721)))))

(declare-fun b!5622448 () Bool)

(assert (=> b!5622448 (= e!3465902 (Concat!24454 (h!69450 lt!2260721) (generalisedConcat!1224 (t!376416 lt!2260721))))))

(declare-fun b!5622449 () Bool)

(assert (=> b!5622449 (= e!3465902 EmptyExpr!15609)))

(declare-fun b!5622450 () Bool)

(assert (=> b!5622450 (= e!3465907 (isConcat!676 lt!2260832))))

(declare-fun b!5622451 () Bool)

(assert (=> b!5622451 (= e!3465903 e!3465904)))

(declare-fun c!986777 () Bool)

(assert (=> b!5622451 (= c!986777 (isEmpty!34830 lt!2260721))))

(assert (= (and d!1776472 res!2381535) b!5622446))

(assert (= (and d!1776472 c!986775) b!5622444))

(assert (= (and d!1776472 (not c!986775)) b!5622445))

(assert (= (and b!5622445 c!986776) b!5622448))

(assert (= (and b!5622445 (not c!986776)) b!5622449))

(assert (= (and d!1776472 res!2381534) b!5622451))

(assert (= (and b!5622451 c!986777) b!5622443))

(assert (= (and b!5622451 (not c!986777)) b!5622447))

(assert (= (and b!5622447 c!986774) b!5622442))

(assert (= (and b!5622447 (not c!986774)) b!5622450))

(declare-fun m!6595708 () Bool)

(assert (=> b!5622448 m!6595708))

(declare-fun m!6595710 () Bool)

(assert (=> b!5622443 m!6595710))

(declare-fun m!6595712 () Bool)

(assert (=> b!5622446 m!6595712))

(declare-fun m!6595714 () Bool)

(assert (=> b!5622450 m!6595714))

(declare-fun m!6595716 () Bool)

(assert (=> b!5622447 m!6595716))

(assert (=> b!5622447 m!6595716))

(declare-fun m!6595718 () Bool)

(assert (=> b!5622447 m!6595718))

(declare-fun m!6595720 () Bool)

(assert (=> b!5622451 m!6595720))

(declare-fun m!6595722 () Bool)

(assert (=> d!1776472 m!6595722))

(declare-fun m!6595724 () Bool)

(assert (=> d!1776472 m!6595724))

(declare-fun m!6595726 () Bool)

(assert (=> b!5622442 m!6595726))

(assert (=> b!5621906 d!1776472))

(declare-fun bm!423343 () Bool)

(declare-fun call!423348 () Bool)

(assert (=> bm!423343 (= call!423348 (isEmpty!34833 s!2326))))

(declare-fun b!5622452 () Bool)

(declare-fun e!3465910 () Bool)

(assert (=> b!5622452 (= e!3465910 (matchR!7794 (derivativeStep!4447 lt!2260735 (head!11967 s!2326)) (tail!11062 s!2326)))))

(declare-fun d!1776474 () Bool)

(declare-fun e!3465908 () Bool)

(assert (=> d!1776474 e!3465908))

(declare-fun c!986779 () Bool)

(assert (=> d!1776474 (= c!986779 ((_ is EmptyExpr!15609) lt!2260735))))

(declare-fun lt!2260833 () Bool)

(assert (=> d!1776474 (= lt!2260833 e!3465910)))

(declare-fun c!986778 () Bool)

(assert (=> d!1776474 (= c!986778 (isEmpty!34833 s!2326))))

(assert (=> d!1776474 (validRegex!7345 lt!2260735)))

(assert (=> d!1776474 (= (matchR!7794 lt!2260735 s!2326) lt!2260833)))

(declare-fun b!5622453 () Bool)

(declare-fun res!2381536 () Bool)

(declare-fun e!3465914 () Bool)

(assert (=> b!5622453 (=> (not res!2381536) (not e!3465914))))

(assert (=> b!5622453 (= res!2381536 (isEmpty!34833 (tail!11062 s!2326)))))

(declare-fun b!5622454 () Bool)

(declare-fun e!3465911 () Bool)

(assert (=> b!5622454 (= e!3465908 e!3465911)))

(declare-fun c!986780 () Bool)

(assert (=> b!5622454 (= c!986780 ((_ is EmptyLang!15609) lt!2260735))))

(declare-fun b!5622455 () Bool)

(assert (=> b!5622455 (= e!3465910 (nullable!5641 lt!2260735))))

(declare-fun b!5622456 () Bool)

(assert (=> b!5622456 (= e!3465914 (= (head!11967 s!2326) (c!986617 lt!2260735)))))

(declare-fun b!5622457 () Bool)

(declare-fun res!2381539 () Bool)

(declare-fun e!3465912 () Bool)

(assert (=> b!5622457 (=> res!2381539 e!3465912)))

(assert (=> b!5622457 (= res!2381539 e!3465914)))

(declare-fun res!2381538 () Bool)

(assert (=> b!5622457 (=> (not res!2381538) (not e!3465914))))

(assert (=> b!5622457 (= res!2381538 lt!2260833)))

(declare-fun b!5622458 () Bool)

(declare-fun e!3465913 () Bool)

(assert (=> b!5622458 (= e!3465912 e!3465913)))

(declare-fun res!2381541 () Bool)

(assert (=> b!5622458 (=> (not res!2381541) (not e!3465913))))

(assert (=> b!5622458 (= res!2381541 (not lt!2260833))))

(declare-fun b!5622459 () Bool)

(declare-fun res!2381537 () Bool)

(declare-fun e!3465909 () Bool)

(assert (=> b!5622459 (=> res!2381537 e!3465909)))

(assert (=> b!5622459 (= res!2381537 (not (isEmpty!34833 (tail!11062 s!2326))))))

(declare-fun b!5622460 () Bool)

(assert (=> b!5622460 (= e!3465909 (not (= (head!11967 s!2326) (c!986617 lt!2260735))))))

(declare-fun b!5622461 () Bool)

(declare-fun res!2381542 () Bool)

(assert (=> b!5622461 (=> res!2381542 e!3465912)))

(assert (=> b!5622461 (= res!2381542 (not ((_ is ElementMatch!15609) lt!2260735)))))

(assert (=> b!5622461 (= e!3465911 e!3465912)))

(declare-fun b!5622462 () Bool)

(declare-fun res!2381540 () Bool)

(assert (=> b!5622462 (=> (not res!2381540) (not e!3465914))))

(assert (=> b!5622462 (= res!2381540 (not call!423348))))

(declare-fun b!5622463 () Bool)

(assert (=> b!5622463 (= e!3465908 (= lt!2260833 call!423348))))

(declare-fun b!5622464 () Bool)

(assert (=> b!5622464 (= e!3465913 e!3465909)))

(declare-fun res!2381543 () Bool)

(assert (=> b!5622464 (=> res!2381543 e!3465909)))

(assert (=> b!5622464 (= res!2381543 call!423348)))

(declare-fun b!5622465 () Bool)

(assert (=> b!5622465 (= e!3465911 (not lt!2260833))))

(assert (= (and d!1776474 c!986778) b!5622455))

(assert (= (and d!1776474 (not c!986778)) b!5622452))

(assert (= (and d!1776474 c!986779) b!5622463))

(assert (= (and d!1776474 (not c!986779)) b!5622454))

(assert (= (and b!5622454 c!986780) b!5622465))

(assert (= (and b!5622454 (not c!986780)) b!5622461))

(assert (= (and b!5622461 (not res!2381542)) b!5622457))

(assert (= (and b!5622457 res!2381538) b!5622462))

(assert (= (and b!5622462 res!2381540) b!5622453))

(assert (= (and b!5622453 res!2381536) b!5622456))

(assert (= (and b!5622457 (not res!2381539)) b!5622458))

(assert (= (and b!5622458 res!2381541) b!5622464))

(assert (= (and b!5622464 (not res!2381543)) b!5622459))

(assert (= (and b!5622459 (not res!2381537)) b!5622460))

(assert (= (or b!5622463 b!5622462 b!5622464) bm!423343))

(assert (=> d!1776474 m!6595510))

(assert (=> d!1776474 m!6595612))

(assert (=> b!5622452 m!6595514))

(assert (=> b!5622452 m!6595514))

(declare-fun m!6595728 () Bool)

(assert (=> b!5622452 m!6595728))

(assert (=> b!5622452 m!6595518))

(assert (=> b!5622452 m!6595728))

(assert (=> b!5622452 m!6595518))

(declare-fun m!6595730 () Bool)

(assert (=> b!5622452 m!6595730))

(assert (=> b!5622459 m!6595518))

(assert (=> b!5622459 m!6595518))

(assert (=> b!5622459 m!6595624))

(declare-fun m!6595732 () Bool)

(assert (=> b!5622455 m!6595732))

(assert (=> b!5622453 m!6595518))

(assert (=> b!5622453 m!6595518))

(assert (=> b!5622453 m!6595624))

(assert (=> b!5622456 m!6595514))

(assert (=> bm!423343 m!6595510))

(assert (=> b!5622460 m!6595514))

(assert (=> b!5621906 d!1776474))

(assert (=> b!5621906 d!1776430))

(declare-fun d!1776476 () Bool)

(declare-fun lt!2260836 () Int)

(assert (=> d!1776476 (>= lt!2260836 0)))

(declare-fun e!3465917 () Int)

(assert (=> d!1776476 (= lt!2260836 e!3465917)))

(declare-fun c!986783 () Bool)

(assert (=> d!1776476 (= c!986783 ((_ is Cons!63004) zl!343))))

(assert (=> d!1776476 (= (zipperDepthTotal!234 zl!343) lt!2260836)))

(declare-fun b!5622470 () Bool)

(declare-fun contextDepthTotal!208 (Context!9986) Int)

(assert (=> b!5622470 (= e!3465917 (+ (contextDepthTotal!208 (h!69452 zl!343)) (zipperDepthTotal!234 (t!376418 zl!343))))))

(declare-fun b!5622471 () Bool)

(assert (=> b!5622471 (= e!3465917 0)))

(assert (= (and d!1776476 c!986783) b!5622470))

(assert (= (and d!1776476 (not c!986783)) b!5622471))

(declare-fun m!6595734 () Bool)

(assert (=> b!5622470 m!6595734))

(declare-fun m!6595736 () Bool)

(assert (=> b!5622470 m!6595736))

(assert (=> b!5621927 d!1776476))

(declare-fun d!1776478 () Bool)

(declare-fun lt!2260837 () Int)

(assert (=> d!1776478 (>= lt!2260837 0)))

(declare-fun e!3465918 () Int)

(assert (=> d!1776478 (= lt!2260837 e!3465918)))

(declare-fun c!986784 () Bool)

(assert (=> d!1776478 (= c!986784 ((_ is Cons!63004) lt!2260720))))

(assert (=> d!1776478 (= (zipperDepthTotal!234 lt!2260720) lt!2260837)))

(declare-fun b!5622472 () Bool)

(assert (=> b!5622472 (= e!3465918 (+ (contextDepthTotal!208 (h!69452 lt!2260720)) (zipperDepthTotal!234 (t!376418 lt!2260720))))))

(declare-fun b!5622473 () Bool)

(assert (=> b!5622473 (= e!3465918 0)))

(assert (= (and d!1776478 c!986784) b!5622472))

(assert (= (and d!1776478 (not c!986784)) b!5622473))

(declare-fun m!6595738 () Bool)

(assert (=> b!5622472 m!6595738))

(declare-fun m!6595740 () Bool)

(assert (=> b!5622472 m!6595740))

(assert (=> b!5621927 d!1776478))

(declare-fun d!1776480 () Bool)

(declare-fun c!986785 () Bool)

(assert (=> d!1776480 (= c!986785 (isEmpty!34833 (t!376417 s!2326)))))

(declare-fun e!3465919 () Bool)

(assert (=> d!1776480 (= (matchZipper!1747 lt!2260762 (t!376417 s!2326)) e!3465919)))

(declare-fun b!5622474 () Bool)

(assert (=> b!5622474 (= e!3465919 (nullableZipper!1594 lt!2260762))))

(declare-fun b!5622475 () Bool)

(assert (=> b!5622475 (= e!3465919 (matchZipper!1747 (derivationStepZipper!1698 lt!2260762 (head!11967 (t!376417 s!2326))) (tail!11062 (t!376417 s!2326))))))

(assert (= (and d!1776480 c!986785) b!5622474))

(assert (= (and d!1776480 (not c!986785)) b!5622475))

(assert (=> d!1776480 m!6595598))

(declare-fun m!6595742 () Bool)

(assert (=> b!5622474 m!6595742))

(assert (=> b!5622475 m!6595602))

(assert (=> b!5622475 m!6595602))

(declare-fun m!6595744 () Bool)

(assert (=> b!5622475 m!6595744))

(assert (=> b!5622475 m!6595606))

(assert (=> b!5622475 m!6595744))

(assert (=> b!5622475 m!6595606))

(declare-fun m!6595746 () Bool)

(assert (=> b!5622475 m!6595746))

(assert (=> b!5621907 d!1776480))

(declare-fun d!1776482 () Bool)

(declare-fun c!986786 () Bool)

(assert (=> d!1776482 (= c!986786 (isEmpty!34833 (t!376417 s!2326)))))

(declare-fun e!3465920 () Bool)

(assert (=> d!1776482 (= (matchZipper!1747 lt!2260731 (t!376417 s!2326)) e!3465920)))

(declare-fun b!5622476 () Bool)

(assert (=> b!5622476 (= e!3465920 (nullableZipper!1594 lt!2260731))))

(declare-fun b!5622477 () Bool)

(assert (=> b!5622477 (= e!3465920 (matchZipper!1747 (derivationStepZipper!1698 lt!2260731 (head!11967 (t!376417 s!2326))) (tail!11062 (t!376417 s!2326))))))

(assert (= (and d!1776482 c!986786) b!5622476))

(assert (= (and d!1776482 (not c!986786)) b!5622477))

(assert (=> d!1776482 m!6595598))

(declare-fun m!6595748 () Bool)

(assert (=> b!5622476 m!6595748))

(assert (=> b!5622477 m!6595602))

(assert (=> b!5622477 m!6595602))

(declare-fun m!6595750 () Bool)

(assert (=> b!5622477 m!6595750))

(assert (=> b!5622477 m!6595606))

(assert (=> b!5622477 m!6595750))

(assert (=> b!5622477 m!6595606))

(declare-fun m!6595752 () Bool)

(assert (=> b!5622477 m!6595752))

(assert (=> b!5621907 d!1776482))

(declare-fun d!1776484 () Bool)

(declare-fun c!986787 () Bool)

(assert (=> d!1776484 (= c!986787 (isEmpty!34833 (t!376417 s!2326)))))

(declare-fun e!3465921 () Bool)

(assert (=> d!1776484 (= (matchZipper!1747 lt!2260748 (t!376417 s!2326)) e!3465921)))

(declare-fun b!5622478 () Bool)

(assert (=> b!5622478 (= e!3465921 (nullableZipper!1594 lt!2260748))))

(declare-fun b!5622479 () Bool)

(assert (=> b!5622479 (= e!3465921 (matchZipper!1747 (derivationStepZipper!1698 lt!2260748 (head!11967 (t!376417 s!2326))) (tail!11062 (t!376417 s!2326))))))

(assert (= (and d!1776484 c!986787) b!5622478))

(assert (= (and d!1776484 (not c!986787)) b!5622479))

(assert (=> d!1776484 m!6595598))

(declare-fun m!6595754 () Bool)

(assert (=> b!5622478 m!6595754))

(assert (=> b!5622479 m!6595602))

(assert (=> b!5622479 m!6595602))

(declare-fun m!6595756 () Bool)

(assert (=> b!5622479 m!6595756))

(assert (=> b!5622479 m!6595606))

(assert (=> b!5622479 m!6595756))

(assert (=> b!5622479 m!6595606))

(declare-fun m!6595758 () Bool)

(assert (=> b!5622479 m!6595758))

(assert (=> b!5621907 d!1776484))

(declare-fun d!1776486 () Bool)

(declare-fun e!3465930 () Bool)

(assert (=> d!1776486 (= (matchZipper!1747 ((_ map or) lt!2260748 lt!2260759) (t!376417 s!2326)) e!3465930)))

(declare-fun res!2381547 () Bool)

(assert (=> d!1776486 (=> res!2381547 e!3465930)))

(assert (=> d!1776486 (= res!2381547 (matchZipper!1747 lt!2260748 (t!376417 s!2326)))))

(declare-fun lt!2260840 () Unit!155964)

(declare-fun choose!42587 ((InoxSet Context!9986) (InoxSet Context!9986) List!63127) Unit!155964)

(assert (=> d!1776486 (= lt!2260840 (choose!42587 lt!2260748 lt!2260759 (t!376417 s!2326)))))

(assert (=> d!1776486 (= (lemmaZipperConcatMatchesSameAsBothZippers!634 lt!2260748 lt!2260759 (t!376417 s!2326)) lt!2260840)))

(declare-fun b!5622493 () Bool)

(assert (=> b!5622493 (= e!3465930 (matchZipper!1747 lt!2260759 (t!376417 s!2326)))))

(assert (= (and d!1776486 (not res!2381547)) b!5622493))

(declare-fun m!6595770 () Bool)

(assert (=> d!1776486 m!6595770))

(assert (=> d!1776486 m!6595228))

(declare-fun m!6595772 () Bool)

(assert (=> d!1776486 m!6595772))

(assert (=> b!5622493 m!6595170))

(assert (=> b!5621907 d!1776486))

(declare-fun e!3465938 () Bool)

(declare-fun d!1776490 () Bool)

(assert (=> d!1776490 (= (matchZipper!1747 ((_ map or) lt!2260748 lt!2260739) (t!376417 s!2326)) e!3465938)))

(declare-fun res!2381551 () Bool)

(assert (=> d!1776490 (=> res!2381551 e!3465938)))

(assert (=> d!1776490 (= res!2381551 (matchZipper!1747 lt!2260748 (t!376417 s!2326)))))

(declare-fun lt!2260841 () Unit!155964)

(assert (=> d!1776490 (= lt!2260841 (choose!42587 lt!2260748 lt!2260739 (t!376417 s!2326)))))

(assert (=> d!1776490 (= (lemmaZipperConcatMatchesSameAsBothZippers!634 lt!2260748 lt!2260739 (t!376417 s!2326)) lt!2260841)))

(declare-fun b!5622505 () Bool)

(assert (=> b!5622505 (= e!3465938 (matchZipper!1747 lt!2260739 (t!376417 s!2326)))))

(assert (= (and d!1776490 (not res!2381551)) b!5622505))

(assert (=> d!1776490 m!6595244))

(assert (=> d!1776490 m!6595228))

(declare-fun m!6595774 () Bool)

(assert (=> d!1776490 m!6595774))

(assert (=> b!5622505 m!6595238))

(assert (=> b!5621910 d!1776490))

(declare-fun d!1776492 () Bool)

(declare-fun c!986797 () Bool)

(assert (=> d!1776492 (= c!986797 (isEmpty!34833 (t!376417 s!2326)))))

(declare-fun e!3465939 () Bool)

(assert (=> d!1776492 (= (matchZipper!1747 ((_ map or) lt!2260748 lt!2260739) (t!376417 s!2326)) e!3465939)))

(declare-fun b!5622506 () Bool)

(assert (=> b!5622506 (= e!3465939 (nullableZipper!1594 ((_ map or) lt!2260748 lt!2260739)))))

(declare-fun b!5622507 () Bool)

(assert (=> b!5622507 (= e!3465939 (matchZipper!1747 (derivationStepZipper!1698 ((_ map or) lt!2260748 lt!2260739) (head!11967 (t!376417 s!2326))) (tail!11062 (t!376417 s!2326))))))

(assert (= (and d!1776492 c!986797) b!5622506))

(assert (= (and d!1776492 (not c!986797)) b!5622507))

(assert (=> d!1776492 m!6595598))

(declare-fun m!6595776 () Bool)

(assert (=> b!5622506 m!6595776))

(assert (=> b!5622507 m!6595602))

(assert (=> b!5622507 m!6595602))

(declare-fun m!6595778 () Bool)

(assert (=> b!5622507 m!6595778))

(assert (=> b!5622507 m!6595606))

(assert (=> b!5622507 m!6595778))

(assert (=> b!5622507 m!6595606))

(declare-fun m!6595780 () Bool)

(assert (=> b!5622507 m!6595780))

(assert (=> b!5621910 d!1776492))

(declare-fun d!1776494 () Bool)

(declare-fun e!3465942 () Bool)

(assert (=> d!1776494 e!3465942))

(declare-fun res!2381554 () Bool)

(assert (=> d!1776494 (=> (not res!2381554) (not e!3465942))))

(declare-fun lt!2260844 () List!63128)

(declare-fun noDuplicate!1575 (List!63128) Bool)

(assert (=> d!1776494 (= res!2381554 (noDuplicate!1575 lt!2260844))))

(declare-fun choose!42588 ((InoxSet Context!9986)) List!63128)

(assert (=> d!1776494 (= lt!2260844 (choose!42588 z!1189))))

(assert (=> d!1776494 (= (toList!9393 z!1189) lt!2260844)))

(declare-fun b!5622510 () Bool)

(declare-fun content!11384 (List!63128) (InoxSet Context!9986))

(assert (=> b!5622510 (= e!3465942 (= (content!11384 lt!2260844) z!1189))))

(assert (= (and d!1776494 res!2381554) b!5622510))

(declare-fun m!6595782 () Bool)

(assert (=> d!1776494 m!6595782))

(declare-fun m!6595784 () Bool)

(assert (=> d!1776494 m!6595784))

(declare-fun m!6595786 () Bool)

(assert (=> b!5622510 m!6595786))

(assert (=> b!5621890 d!1776494))

(declare-fun d!1776496 () Bool)

(declare-fun c!986798 () Bool)

(assert (=> d!1776496 (= c!986798 (isEmpty!34833 (t!376417 s!2326)))))

(declare-fun e!3465943 () Bool)

(assert (=> d!1776496 (= (matchZipper!1747 lt!2260739 (t!376417 s!2326)) e!3465943)))

(declare-fun b!5622511 () Bool)

(assert (=> b!5622511 (= e!3465943 (nullableZipper!1594 lt!2260739))))

(declare-fun b!5622512 () Bool)

(assert (=> b!5622512 (= e!3465943 (matchZipper!1747 (derivationStepZipper!1698 lt!2260739 (head!11967 (t!376417 s!2326))) (tail!11062 (t!376417 s!2326))))))

(assert (= (and d!1776496 c!986798) b!5622511))

(assert (= (and d!1776496 (not c!986798)) b!5622512))

(assert (=> d!1776496 m!6595598))

(declare-fun m!6595788 () Bool)

(assert (=> b!5622511 m!6595788))

(assert (=> b!5622512 m!6595602))

(assert (=> b!5622512 m!6595602))

(declare-fun m!6595790 () Bool)

(assert (=> b!5622512 m!6595790))

(assert (=> b!5622512 m!6595606))

(assert (=> b!5622512 m!6595790))

(assert (=> b!5622512 m!6595606))

(declare-fun m!6595792 () Bool)

(assert (=> b!5622512 m!6595792))

(assert (=> b!5621889 d!1776496))

(declare-fun b!5622607 () Bool)

(declare-fun e!3466000 () Option!15618)

(declare-fun e!3465999 () Option!15618)

(assert (=> b!5622607 (= e!3466000 e!3465999)))

(declare-fun c!986828 () Bool)

(assert (=> b!5622607 (= c!986828 ((_ is Nil!63003) s!2326))))

(declare-fun b!5622609 () Bool)

(declare-fun e!3466001 () Bool)

(declare-fun lt!2260863 () Option!15618)

(assert (=> b!5622609 (= e!3466001 (not (isDefined!12321 lt!2260863)))))

(declare-fun b!5622610 () Bool)

(assert (=> b!5622610 (= e!3465999 None!15617)))

(declare-fun b!5622611 () Bool)

(declare-fun lt!2260865 () Unit!155964)

(declare-fun lt!2260864 () Unit!155964)

(assert (=> b!5622611 (= lt!2260865 lt!2260864)))

(declare-fun ++!13828 (List!63127 List!63127) List!63127)

(assert (=> b!5622611 (= (++!13828 (++!13828 Nil!63003 (Cons!63003 (h!69451 s!2326) Nil!63003)) (t!376417 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1997 (List!63127 C!31488 List!63127 List!63127) Unit!155964)

(assert (=> b!5622611 (= lt!2260864 (lemmaMoveElementToOtherListKeepsConcatEq!1997 Nil!63003 (h!69451 s!2326) (t!376417 s!2326) s!2326))))

(assert (=> b!5622611 (= e!3465999 (findConcatSeparation!2032 (regOne!31730 r!7292) (regTwo!31730 r!7292) (++!13828 Nil!63003 (Cons!63003 (h!69451 s!2326) Nil!63003)) (t!376417 s!2326) s!2326))))

(declare-fun b!5622612 () Bool)

(declare-fun res!2381595 () Bool)

(declare-fun e!3465997 () Bool)

(assert (=> b!5622612 (=> (not res!2381595) (not e!3465997))))

(declare-fun get!21700 (Option!15618) tuple2!65412)

(assert (=> b!5622612 (= res!2381595 (matchR!7794 (regTwo!31730 r!7292) (_2!36009 (get!21700 lt!2260863))))))

(declare-fun b!5622613 () Bool)

(assert (=> b!5622613 (= e!3466000 (Some!15617 (tuple2!65413 Nil!63003 s!2326)))))

(declare-fun b!5622614 () Bool)

(declare-fun e!3465998 () Bool)

(assert (=> b!5622614 (= e!3465998 (matchR!7794 (regTwo!31730 r!7292) s!2326))))

(declare-fun b!5622615 () Bool)

(assert (=> b!5622615 (= e!3465997 (= (++!13828 (_1!36009 (get!21700 lt!2260863)) (_2!36009 (get!21700 lt!2260863))) s!2326))))

(declare-fun d!1776498 () Bool)

(assert (=> d!1776498 e!3466001))

(declare-fun res!2381594 () Bool)

(assert (=> d!1776498 (=> res!2381594 e!3466001)))

(assert (=> d!1776498 (= res!2381594 e!3465997)))

(declare-fun res!2381592 () Bool)

(assert (=> d!1776498 (=> (not res!2381592) (not e!3465997))))

(assert (=> d!1776498 (= res!2381592 (isDefined!12321 lt!2260863))))

(assert (=> d!1776498 (= lt!2260863 e!3466000)))

(declare-fun c!986829 () Bool)

(assert (=> d!1776498 (= c!986829 e!3465998)))

(declare-fun res!2381591 () Bool)

(assert (=> d!1776498 (=> (not res!2381591) (not e!3465998))))

(assert (=> d!1776498 (= res!2381591 (matchR!7794 (regOne!31730 r!7292) Nil!63003))))

(assert (=> d!1776498 (validRegex!7345 (regOne!31730 r!7292))))

(assert (=> d!1776498 (= (findConcatSeparation!2032 (regOne!31730 r!7292) (regTwo!31730 r!7292) Nil!63003 s!2326 s!2326) lt!2260863)))

(declare-fun b!5622608 () Bool)

(declare-fun res!2381593 () Bool)

(assert (=> b!5622608 (=> (not res!2381593) (not e!3465997))))

(assert (=> b!5622608 (= res!2381593 (matchR!7794 (regOne!31730 r!7292) (_1!36009 (get!21700 lt!2260863))))))

(assert (= (and d!1776498 res!2381591) b!5622614))

(assert (= (and d!1776498 c!986829) b!5622613))

(assert (= (and d!1776498 (not c!986829)) b!5622607))

(assert (= (and b!5622607 c!986828) b!5622610))

(assert (= (and b!5622607 (not c!986828)) b!5622611))

(assert (= (and d!1776498 res!2381592) b!5622608))

(assert (= (and b!5622608 res!2381593) b!5622612))

(assert (= (and b!5622612 res!2381595) b!5622615))

(assert (= (and d!1776498 (not res!2381594)) b!5622609))

(declare-fun m!6595894 () Bool)

(assert (=> b!5622609 m!6595894))

(assert (=> d!1776498 m!6595894))

(declare-fun m!6595896 () Bool)

(assert (=> d!1776498 m!6595896))

(declare-fun m!6595898 () Bool)

(assert (=> d!1776498 m!6595898))

(declare-fun m!6595900 () Bool)

(assert (=> b!5622615 m!6595900))

(declare-fun m!6595902 () Bool)

(assert (=> b!5622615 m!6595902))

(declare-fun m!6595904 () Bool)

(assert (=> b!5622614 m!6595904))

(assert (=> b!5622608 m!6595900))

(declare-fun m!6595906 () Bool)

(assert (=> b!5622608 m!6595906))

(declare-fun m!6595908 () Bool)

(assert (=> b!5622611 m!6595908))

(assert (=> b!5622611 m!6595908))

(declare-fun m!6595910 () Bool)

(assert (=> b!5622611 m!6595910))

(declare-fun m!6595912 () Bool)

(assert (=> b!5622611 m!6595912))

(assert (=> b!5622611 m!6595908))

(declare-fun m!6595914 () Bool)

(assert (=> b!5622611 m!6595914))

(assert (=> b!5622612 m!6595900))

(declare-fun m!6595916 () Bool)

(assert (=> b!5622612 m!6595916))

(assert (=> b!5621913 d!1776498))

(declare-fun d!1776540 () Bool)

(declare-fun choose!42589 (Int) Bool)

(assert (=> d!1776540 (= (Exists!2709 lambda!301859) (choose!42589 lambda!301859))))

(declare-fun bs!1301819 () Bool)

(assert (= bs!1301819 d!1776540))

(declare-fun m!6595918 () Bool)

(assert (=> bs!1301819 m!6595918))

(assert (=> b!5621913 d!1776540))

(declare-fun d!1776542 () Bool)

(assert (=> d!1776542 (= (Exists!2709 lambda!301858) (choose!42589 lambda!301858))))

(declare-fun bs!1301821 () Bool)

(assert (= bs!1301821 d!1776542))

(declare-fun m!6595920 () Bool)

(assert (=> bs!1301821 m!6595920))

(assert (=> b!5621913 d!1776542))

(declare-fun bs!1301833 () Bool)

(declare-fun d!1776544 () Bool)

(assert (= bs!1301833 (and d!1776544 b!5622398)))

(declare-fun lambda!301912 () Int)

(assert (=> bs!1301833 (not (= lambda!301912 lambda!301898))))

(declare-fun bs!1301834 () Bool)

(assert (= bs!1301834 (and d!1776544 b!5621913)))

(assert (=> bs!1301834 (= lambda!301912 lambda!301858)))

(declare-fun bs!1301835 () Bool)

(assert (= bs!1301835 (and d!1776544 b!5622419)))

(assert (=> bs!1301835 (not (= lambda!301912 lambda!301901))))

(assert (=> bs!1301834 (not (= lambda!301912 lambda!301859))))

(declare-fun bs!1301836 () Bool)

(assert (= bs!1301836 (and d!1776544 b!5622390)))

(assert (=> bs!1301836 (not (= lambda!301912 lambda!301897))))

(declare-fun bs!1301837 () Bool)

(assert (= bs!1301837 (and d!1776544 b!5622411)))

(assert (=> bs!1301837 (not (= lambda!301912 lambda!301900))))

(assert (=> d!1776544 true))

(assert (=> d!1776544 true))

(assert (=> d!1776544 true))

(assert (=> d!1776544 (= (isDefined!12321 (findConcatSeparation!2032 (regOne!31730 r!7292) (regTwo!31730 r!7292) Nil!63003 s!2326 s!2326)) (Exists!2709 lambda!301912))))

(declare-fun lt!2260872 () Unit!155964)

(declare-fun choose!42590 (Regex!15609 Regex!15609 List!63127) Unit!155964)

(assert (=> d!1776544 (= lt!2260872 (choose!42590 (regOne!31730 r!7292) (regTwo!31730 r!7292) s!2326))))

(assert (=> d!1776544 (validRegex!7345 (regOne!31730 r!7292))))

(assert (=> d!1776544 (= (lemmaFindConcatSeparationEquivalentToExists!1796 (regOne!31730 r!7292) (regTwo!31730 r!7292) s!2326) lt!2260872)))

(declare-fun bs!1301838 () Bool)

(assert (= bs!1301838 d!1776544))

(declare-fun m!6595948 () Bool)

(assert (=> bs!1301838 m!6595948))

(assert (=> bs!1301838 m!6595248))

(assert (=> bs!1301838 m!6595250))

(declare-fun m!6595950 () Bool)

(assert (=> bs!1301838 m!6595950))

(assert (=> bs!1301838 m!6595898))

(assert (=> bs!1301838 m!6595248))

(assert (=> b!5621913 d!1776544))

(declare-fun bs!1301851 () Bool)

(declare-fun d!1776558 () Bool)

(assert (= bs!1301851 (and d!1776558 b!5622398)))

(declare-fun lambda!301923 () Int)

(assert (=> bs!1301851 (not (= lambda!301923 lambda!301898))))

(declare-fun bs!1301854 () Bool)

(assert (= bs!1301854 (and d!1776558 b!5621913)))

(assert (=> bs!1301854 (= lambda!301923 lambda!301858)))

(declare-fun bs!1301857 () Bool)

(assert (= bs!1301857 (and d!1776558 b!5622419)))

(assert (=> bs!1301857 (not (= lambda!301923 lambda!301901))))

(declare-fun bs!1301859 () Bool)

(assert (= bs!1301859 (and d!1776558 d!1776544)))

(assert (=> bs!1301859 (= lambda!301923 lambda!301912)))

(assert (=> bs!1301854 (not (= lambda!301923 lambda!301859))))

(declare-fun bs!1301862 () Bool)

(assert (= bs!1301862 (and d!1776558 b!5622390)))

(assert (=> bs!1301862 (not (= lambda!301923 lambda!301897))))

(declare-fun bs!1301863 () Bool)

(assert (= bs!1301863 (and d!1776558 b!5622411)))

(assert (=> bs!1301863 (not (= lambda!301923 lambda!301900))))

(assert (=> d!1776558 true))

(assert (=> d!1776558 true))

(assert (=> d!1776558 true))

(declare-fun lambda!301925 () Int)

(assert (=> bs!1301851 (= (and (= (regOne!31730 r!7292) (regOne!31730 lt!2260735)) (= (regTwo!31730 r!7292) (regTwo!31730 lt!2260735))) (= lambda!301925 lambda!301898))))

(assert (=> bs!1301854 (not (= lambda!301925 lambda!301858))))

(assert (=> bs!1301857 (= (and (= (regOne!31730 r!7292) (regOne!31730 lt!2260765)) (= (regTwo!31730 r!7292) (regTwo!31730 lt!2260765))) (= lambda!301925 lambda!301901))))

(declare-fun bs!1301864 () Bool)

(assert (= bs!1301864 d!1776558))

(assert (=> bs!1301864 (not (= lambda!301925 lambda!301923))))

(assert (=> bs!1301859 (not (= lambda!301925 lambda!301912))))

(assert (=> bs!1301854 (= lambda!301925 lambda!301859)))

(assert (=> bs!1301862 (not (= lambda!301925 lambda!301897))))

(assert (=> bs!1301863 (not (= lambda!301925 lambda!301900))))

(assert (=> d!1776558 true))

(assert (=> d!1776558 true))

(assert (=> d!1776558 true))

(assert (=> d!1776558 (= (Exists!2709 lambda!301923) (Exists!2709 lambda!301925))))

(declare-fun lt!2260882 () Unit!155964)

(declare-fun choose!42591 (Regex!15609 Regex!15609 List!63127) Unit!155964)

(assert (=> d!1776558 (= lt!2260882 (choose!42591 (regOne!31730 r!7292) (regTwo!31730 r!7292) s!2326))))

(assert (=> d!1776558 (validRegex!7345 (regOne!31730 r!7292))))

(assert (=> d!1776558 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1338 (regOne!31730 r!7292) (regTwo!31730 r!7292) s!2326) lt!2260882)))

(declare-fun m!6596002 () Bool)

(assert (=> bs!1301864 m!6596002))

(declare-fun m!6596004 () Bool)

(assert (=> bs!1301864 m!6596004))

(declare-fun m!6596006 () Bool)

(assert (=> bs!1301864 m!6596006))

(assert (=> bs!1301864 m!6595898))

(assert (=> b!5621913 d!1776558))

(declare-fun d!1776576 () Bool)

(declare-fun isEmpty!34835 (Option!15618) Bool)

(assert (=> d!1776576 (= (isDefined!12321 (findConcatSeparation!2032 (regOne!31730 r!7292) (regTwo!31730 r!7292) Nil!63003 s!2326 s!2326)) (not (isEmpty!34835 (findConcatSeparation!2032 (regOne!31730 r!7292) (regTwo!31730 r!7292) Nil!63003 s!2326 s!2326))))))

(declare-fun bs!1301865 () Bool)

(assert (= bs!1301865 d!1776576))

(assert (=> bs!1301865 m!6595248))

(declare-fun m!6596016 () Bool)

(assert (=> bs!1301865 m!6596016))

(assert (=> b!5621913 d!1776576))

(declare-fun d!1776578 () Bool)

(declare-fun lt!2260887 () Regex!15609)

(assert (=> d!1776578 (validRegex!7345 lt!2260887)))

(assert (=> d!1776578 (= lt!2260887 (generalisedUnion!1472 (unfocusZipperList!1037 zl!343)))))

(assert (=> d!1776578 (= (unfocusZipper!1351 zl!343) lt!2260887)))

(declare-fun bs!1301866 () Bool)

(assert (= bs!1301866 d!1776578))

(declare-fun m!6596020 () Bool)

(assert (=> bs!1301866 m!6596020))

(assert (=> bs!1301866 m!6595312))

(assert (=> bs!1301866 m!6595312))

(assert (=> bs!1301866 m!6595314))

(assert (=> b!5621891 d!1776578))

(declare-fun bs!1301867 () Bool)

(declare-fun b!5622732 () Bool)

(assert (= bs!1301867 (and b!5622732 b!5622398)))

(declare-fun lambda!301926 () Int)

(assert (=> bs!1301867 (not (= lambda!301926 lambda!301898))))

(declare-fun bs!1301868 () Bool)

(assert (= bs!1301868 (and b!5622732 b!5621913)))

(assert (=> bs!1301868 (not (= lambda!301926 lambda!301858))))

(declare-fun bs!1301869 () Bool)

(assert (= bs!1301869 (and b!5622732 d!1776558)))

(assert (=> bs!1301869 (not (= lambda!301926 lambda!301925))))

(declare-fun bs!1301870 () Bool)

(assert (= bs!1301870 (and b!5622732 b!5622419)))

(assert (=> bs!1301870 (not (= lambda!301926 lambda!301901))))

(assert (=> bs!1301869 (not (= lambda!301926 lambda!301923))))

(declare-fun bs!1301871 () Bool)

(assert (= bs!1301871 (and b!5622732 d!1776544)))

(assert (=> bs!1301871 (not (= lambda!301926 lambda!301912))))

(assert (=> bs!1301868 (not (= lambda!301926 lambda!301859))))

(declare-fun bs!1301872 () Bool)

(assert (= bs!1301872 (and b!5622732 b!5622390)))

(assert (=> bs!1301872 (= (and (= (reg!15938 r!7292) (reg!15938 lt!2260735)) (= r!7292 lt!2260735)) (= lambda!301926 lambda!301897))))

(declare-fun bs!1301873 () Bool)

(assert (= bs!1301873 (and b!5622732 b!5622411)))

(assert (=> bs!1301873 (= (and (= (reg!15938 r!7292) (reg!15938 lt!2260765)) (= r!7292 lt!2260765)) (= lambda!301926 lambda!301900))))

(assert (=> b!5622732 true))

(assert (=> b!5622732 true))

(declare-fun bs!1301874 () Bool)

(declare-fun b!5622740 () Bool)

(assert (= bs!1301874 (and b!5622740 b!5622398)))

(declare-fun lambda!301927 () Int)

(assert (=> bs!1301874 (= (and (= (regOne!31730 r!7292) (regOne!31730 lt!2260735)) (= (regTwo!31730 r!7292) (regTwo!31730 lt!2260735))) (= lambda!301927 lambda!301898))))

(declare-fun bs!1301875 () Bool)

(assert (= bs!1301875 (and b!5622740 b!5621913)))

(assert (=> bs!1301875 (not (= lambda!301927 lambda!301858))))

(declare-fun bs!1301876 () Bool)

(assert (= bs!1301876 (and b!5622740 d!1776558)))

(assert (=> bs!1301876 (= lambda!301927 lambda!301925)))

(declare-fun bs!1301877 () Bool)

(assert (= bs!1301877 (and b!5622740 b!5622419)))

(assert (=> bs!1301877 (= (and (= (regOne!31730 r!7292) (regOne!31730 lt!2260765)) (= (regTwo!31730 r!7292) (regTwo!31730 lt!2260765))) (= lambda!301927 lambda!301901))))

(assert (=> bs!1301876 (not (= lambda!301927 lambda!301923))))

(declare-fun bs!1301878 () Bool)

(assert (= bs!1301878 (and b!5622740 d!1776544)))

(assert (=> bs!1301878 (not (= lambda!301927 lambda!301912))))

(declare-fun bs!1301879 () Bool)

(assert (= bs!1301879 (and b!5622740 b!5622390)))

(assert (=> bs!1301879 (not (= lambda!301927 lambda!301897))))

(declare-fun bs!1301881 () Bool)

(assert (= bs!1301881 (and b!5622740 b!5622411)))

(assert (=> bs!1301881 (not (= lambda!301927 lambda!301900))))

(assert (=> bs!1301875 (= lambda!301927 lambda!301859)))

(declare-fun bs!1301884 () Bool)

(assert (= bs!1301884 (and b!5622740 b!5622732)))

(assert (=> bs!1301884 (not (= lambda!301927 lambda!301926))))

(assert (=> b!5622740 true))

(assert (=> b!5622740 true))

(declare-fun b!5622730 () Bool)

(declare-fun e!3466067 () Bool)

(declare-fun e!3466064 () Bool)

(assert (=> b!5622730 (= e!3466067 e!3466064)))

(declare-fun c!986865 () Bool)

(assert (=> b!5622730 (= c!986865 ((_ is Star!15609) r!7292))))

(declare-fun b!5622731 () Bool)

(declare-fun e!3466066 () Bool)

(declare-fun call!423378 () Bool)

(assert (=> b!5622731 (= e!3466066 call!423378)))

(declare-fun e!3466062 () Bool)

(declare-fun call!423379 () Bool)

(assert (=> b!5622732 (= e!3466062 call!423379)))

(declare-fun b!5622733 () Bool)

(declare-fun e!3466065 () Bool)

(assert (=> b!5622733 (= e!3466065 (= s!2326 (Cons!63003 (c!986617 r!7292) Nil!63003)))))

(declare-fun b!5622734 () Bool)

(declare-fun c!986863 () Bool)

(assert (=> b!5622734 (= c!986863 ((_ is ElementMatch!15609) r!7292))))

(declare-fun e!3466068 () Bool)

(assert (=> b!5622734 (= e!3466068 e!3466065)))

(declare-fun b!5622735 () Bool)

(assert (=> b!5622735 (= e!3466066 e!3466068)))

(declare-fun res!2381627 () Bool)

(assert (=> b!5622735 (= res!2381627 (not ((_ is EmptyLang!15609) r!7292)))))

(assert (=> b!5622735 (=> (not res!2381627) (not e!3466068))))

(declare-fun b!5622736 () Bool)

(declare-fun res!2381626 () Bool)

(assert (=> b!5622736 (=> res!2381626 e!3466062)))

(assert (=> b!5622736 (= res!2381626 call!423378)))

(assert (=> b!5622736 (= e!3466064 e!3466062)))

(declare-fun bm!423373 () Bool)

(assert (=> bm!423373 (= call!423378 (isEmpty!34833 s!2326))))

(declare-fun b!5622738 () Bool)

(declare-fun e!3466063 () Bool)

(assert (=> b!5622738 (= e!3466063 (matchRSpec!2712 (regTwo!31731 r!7292) s!2326))))

(declare-fun b!5622739 () Bool)

(declare-fun c!986864 () Bool)

(assert (=> b!5622739 (= c!986864 ((_ is Union!15609) r!7292))))

(assert (=> b!5622739 (= e!3466065 e!3466067)))

(assert (=> b!5622740 (= e!3466064 call!423379)))

(declare-fun bm!423374 () Bool)

(assert (=> bm!423374 (= call!423379 (Exists!2709 (ite c!986865 lambda!301926 lambda!301927)))))

(declare-fun d!1776580 () Bool)

(declare-fun c!986862 () Bool)

(assert (=> d!1776580 (= c!986862 ((_ is EmptyExpr!15609) r!7292))))

(assert (=> d!1776580 (= (matchRSpec!2712 r!7292 s!2326) e!3466066)))

(declare-fun b!5622737 () Bool)

(assert (=> b!5622737 (= e!3466067 e!3466063)))

(declare-fun res!2381628 () Bool)

(assert (=> b!5622737 (= res!2381628 (matchRSpec!2712 (regOne!31731 r!7292) s!2326))))

(assert (=> b!5622737 (=> res!2381628 e!3466063)))

(assert (= (and d!1776580 c!986862) b!5622731))

(assert (= (and d!1776580 (not c!986862)) b!5622735))

(assert (= (and b!5622735 res!2381627) b!5622734))

(assert (= (and b!5622734 c!986863) b!5622733))

(assert (= (and b!5622734 (not c!986863)) b!5622739))

(assert (= (and b!5622739 c!986864) b!5622737))

(assert (= (and b!5622739 (not c!986864)) b!5622730))

(assert (= (and b!5622737 (not res!2381628)) b!5622738))

(assert (= (and b!5622730 c!986865) b!5622736))

(assert (= (and b!5622730 (not c!986865)) b!5622740))

(assert (= (and b!5622736 (not res!2381626)) b!5622732))

(assert (= (or b!5622732 b!5622740) bm!423374))

(assert (= (or b!5622731 b!5622736) bm!423373))

(assert (=> bm!423373 m!6595510))

(declare-fun m!6596024 () Bool)

(assert (=> b!5622738 m!6596024))

(declare-fun m!6596026 () Bool)

(assert (=> bm!423374 m!6596026))

(declare-fun m!6596028 () Bool)

(assert (=> b!5622737 m!6596028))

(assert (=> b!5621912 d!1776580))

(declare-fun bm!423375 () Bool)

(declare-fun call!423380 () Bool)

(assert (=> bm!423375 (= call!423380 (isEmpty!34833 s!2326))))

(declare-fun b!5622775 () Bool)

(declare-fun e!3466086 () Bool)

(assert (=> b!5622775 (= e!3466086 (matchR!7794 (derivativeStep!4447 r!7292 (head!11967 s!2326)) (tail!11062 s!2326)))))

(declare-fun d!1776588 () Bool)

(declare-fun e!3466084 () Bool)

(assert (=> d!1776588 e!3466084))

(declare-fun c!986867 () Bool)

(assert (=> d!1776588 (= c!986867 ((_ is EmptyExpr!15609) r!7292))))

(declare-fun lt!2260888 () Bool)

(assert (=> d!1776588 (= lt!2260888 e!3466086)))

(declare-fun c!986866 () Bool)

(assert (=> d!1776588 (= c!986866 (isEmpty!34833 s!2326))))

(assert (=> d!1776588 (validRegex!7345 r!7292)))

(assert (=> d!1776588 (= (matchR!7794 r!7292 s!2326) lt!2260888)))

(declare-fun b!5622776 () Bool)

(declare-fun res!2381629 () Bool)

(declare-fun e!3466090 () Bool)

(assert (=> b!5622776 (=> (not res!2381629) (not e!3466090))))

(assert (=> b!5622776 (= res!2381629 (isEmpty!34833 (tail!11062 s!2326)))))

(declare-fun b!5622777 () Bool)

(declare-fun e!3466087 () Bool)

(assert (=> b!5622777 (= e!3466084 e!3466087)))

(declare-fun c!986868 () Bool)

(assert (=> b!5622777 (= c!986868 ((_ is EmptyLang!15609) r!7292))))

(declare-fun b!5622778 () Bool)

(assert (=> b!5622778 (= e!3466086 (nullable!5641 r!7292))))

(declare-fun b!5622779 () Bool)

(assert (=> b!5622779 (= e!3466090 (= (head!11967 s!2326) (c!986617 r!7292)))))

(declare-fun b!5622780 () Bool)

(declare-fun res!2381632 () Bool)

(declare-fun e!3466088 () Bool)

(assert (=> b!5622780 (=> res!2381632 e!3466088)))

(assert (=> b!5622780 (= res!2381632 e!3466090)))

(declare-fun res!2381631 () Bool)

(assert (=> b!5622780 (=> (not res!2381631) (not e!3466090))))

(assert (=> b!5622780 (= res!2381631 lt!2260888)))

(declare-fun b!5622781 () Bool)

(declare-fun e!3466089 () Bool)

(assert (=> b!5622781 (= e!3466088 e!3466089)))

(declare-fun res!2381634 () Bool)

(assert (=> b!5622781 (=> (not res!2381634) (not e!3466089))))

(assert (=> b!5622781 (= res!2381634 (not lt!2260888))))

(declare-fun b!5622782 () Bool)

(declare-fun res!2381630 () Bool)

(declare-fun e!3466085 () Bool)

(assert (=> b!5622782 (=> res!2381630 e!3466085)))

(assert (=> b!5622782 (= res!2381630 (not (isEmpty!34833 (tail!11062 s!2326))))))

(declare-fun b!5622783 () Bool)

(assert (=> b!5622783 (= e!3466085 (not (= (head!11967 s!2326) (c!986617 r!7292))))))

(declare-fun b!5622784 () Bool)

(declare-fun res!2381635 () Bool)

(assert (=> b!5622784 (=> res!2381635 e!3466088)))

(assert (=> b!5622784 (= res!2381635 (not ((_ is ElementMatch!15609) r!7292)))))

(assert (=> b!5622784 (= e!3466087 e!3466088)))

(declare-fun b!5622785 () Bool)

(declare-fun res!2381633 () Bool)

(assert (=> b!5622785 (=> (not res!2381633) (not e!3466090))))

(assert (=> b!5622785 (= res!2381633 (not call!423380))))

(declare-fun b!5622786 () Bool)

(assert (=> b!5622786 (= e!3466084 (= lt!2260888 call!423380))))

(declare-fun b!5622787 () Bool)

(assert (=> b!5622787 (= e!3466089 e!3466085)))

(declare-fun res!2381636 () Bool)

(assert (=> b!5622787 (=> res!2381636 e!3466085)))

(assert (=> b!5622787 (= res!2381636 call!423380)))

(declare-fun b!5622788 () Bool)

(assert (=> b!5622788 (= e!3466087 (not lt!2260888))))

(assert (= (and d!1776588 c!986866) b!5622778))

(assert (= (and d!1776588 (not c!986866)) b!5622775))

(assert (= (and d!1776588 c!986867) b!5622786))

(assert (= (and d!1776588 (not c!986867)) b!5622777))

(assert (= (and b!5622777 c!986868) b!5622788))

(assert (= (and b!5622777 (not c!986868)) b!5622784))

(assert (= (and b!5622784 (not res!2381635)) b!5622780))

(assert (= (and b!5622780 res!2381631) b!5622785))

(assert (= (and b!5622785 res!2381633) b!5622776))

(assert (= (and b!5622776 res!2381629) b!5622779))

(assert (= (and b!5622780 (not res!2381632)) b!5622781))

(assert (= (and b!5622781 res!2381634) b!5622787))

(assert (= (and b!5622787 (not res!2381636)) b!5622782))

(assert (= (and b!5622782 (not res!2381630)) b!5622783))

(assert (= (or b!5622786 b!5622785 b!5622787) bm!423375))

(assert (=> d!1776588 m!6595510))

(assert (=> d!1776588 m!6595176))

(assert (=> b!5622775 m!6595514))

(assert (=> b!5622775 m!6595514))

(declare-fun m!6596030 () Bool)

(assert (=> b!5622775 m!6596030))

(assert (=> b!5622775 m!6595518))

(assert (=> b!5622775 m!6596030))

(assert (=> b!5622775 m!6595518))

(declare-fun m!6596032 () Bool)

(assert (=> b!5622775 m!6596032))

(assert (=> b!5622782 m!6595518))

(assert (=> b!5622782 m!6595518))

(assert (=> b!5622782 m!6595624))

(declare-fun m!6596034 () Bool)

(assert (=> b!5622778 m!6596034))

(assert (=> b!5622776 m!6595518))

(assert (=> b!5622776 m!6595518))

(assert (=> b!5622776 m!6595624))

(assert (=> b!5622779 m!6595514))

(assert (=> bm!423375 m!6595510))

(assert (=> b!5622783 m!6595514))

(assert (=> b!5621912 d!1776588))

(declare-fun d!1776590 () Bool)

(assert (=> d!1776590 (= (matchR!7794 r!7292 s!2326) (matchRSpec!2712 r!7292 s!2326))))

(declare-fun lt!2260889 () Unit!155964)

(assert (=> d!1776590 (= lt!2260889 (choose!42585 r!7292 s!2326))))

(assert (=> d!1776590 (validRegex!7345 r!7292)))

(assert (=> d!1776590 (= (mainMatchTheorem!2712 r!7292 s!2326) lt!2260889)))

(declare-fun bs!1301885 () Bool)

(assert (= bs!1301885 d!1776590))

(assert (=> bs!1301885 m!6595234))

(assert (=> bs!1301885 m!6595232))

(declare-fun m!6596036 () Bool)

(assert (=> bs!1301885 m!6596036))

(assert (=> bs!1301885 m!6595176))

(assert (=> b!5621912 d!1776590))

(assert (=> b!5621895 d!1776432))

(declare-fun d!1776592 () Bool)

(declare-fun e!3466091 () Bool)

(assert (=> d!1776592 (= (matchZipper!1747 ((_ map or) lt!2260762 lt!2260739) (t!376417 s!2326)) e!3466091)))

(declare-fun res!2381637 () Bool)

(assert (=> d!1776592 (=> res!2381637 e!3466091)))

(assert (=> d!1776592 (= res!2381637 (matchZipper!1747 lt!2260762 (t!376417 s!2326)))))

(declare-fun lt!2260890 () Unit!155964)

(assert (=> d!1776592 (= lt!2260890 (choose!42587 lt!2260762 lt!2260739 (t!376417 s!2326)))))

(assert (=> d!1776592 (= (lemmaZipperConcatMatchesSameAsBothZippers!634 lt!2260762 lt!2260739 (t!376417 s!2326)) lt!2260890)))

(declare-fun b!5622789 () Bool)

(assert (=> b!5622789 (= e!3466091 (matchZipper!1747 lt!2260739 (t!376417 s!2326)))))

(assert (= (and d!1776592 (not res!2381637)) b!5622789))

(assert (=> d!1776592 m!6595288))

(assert (=> d!1776592 m!6595224))

(declare-fun m!6596038 () Bool)

(assert (=> d!1776592 m!6596038))

(assert (=> b!5622789 m!6595238))

(assert (=> b!5621893 d!1776592))

(assert (=> b!5621893 d!1776480))

(declare-fun d!1776594 () Bool)

(declare-fun c!986869 () Bool)

(assert (=> d!1776594 (= c!986869 (isEmpty!34833 (t!376417 s!2326)))))

(declare-fun e!3466092 () Bool)

(assert (=> d!1776594 (= (matchZipper!1747 ((_ map or) lt!2260762 lt!2260739) (t!376417 s!2326)) e!3466092)))

(declare-fun b!5622790 () Bool)

(assert (=> b!5622790 (= e!3466092 (nullableZipper!1594 ((_ map or) lt!2260762 lt!2260739)))))

(declare-fun b!5622791 () Bool)

(assert (=> b!5622791 (= e!3466092 (matchZipper!1747 (derivationStepZipper!1698 ((_ map or) lt!2260762 lt!2260739) (head!11967 (t!376417 s!2326))) (tail!11062 (t!376417 s!2326))))))

(assert (= (and d!1776594 c!986869) b!5622790))

(assert (= (and d!1776594 (not c!986869)) b!5622791))

(assert (=> d!1776594 m!6595598))

(declare-fun m!6596040 () Bool)

(assert (=> b!5622790 m!6596040))

(assert (=> b!5622791 m!6595602))

(assert (=> b!5622791 m!6595602))

(declare-fun m!6596042 () Bool)

(assert (=> b!5622791 m!6596042))

(assert (=> b!5622791 m!6595606))

(assert (=> b!5622791 m!6596042))

(assert (=> b!5622791 m!6595606))

(declare-fun m!6596044 () Bool)

(assert (=> b!5622791 m!6596044))

(assert (=> b!5621893 d!1776594))

(declare-fun d!1776596 () Bool)

(declare-fun lt!2260891 () Int)

(assert (=> d!1776596 (>= lt!2260891 0)))

(declare-fun e!3466093 () Int)

(assert (=> d!1776596 (= lt!2260891 e!3466093)))

(declare-fun c!986870 () Bool)

(assert (=> d!1776596 (= c!986870 ((_ is Cons!63004) lt!2260725))))

(assert (=> d!1776596 (= (zipperDepthTotal!234 lt!2260725) lt!2260891)))

(declare-fun b!5622792 () Bool)

(assert (=> b!5622792 (= e!3466093 (+ (contextDepthTotal!208 (h!69452 lt!2260725)) (zipperDepthTotal!234 (t!376418 lt!2260725))))))

(declare-fun b!5622793 () Bool)

(assert (=> b!5622793 (= e!3466093 0)))

(assert (= (and d!1776596 c!986870) b!5622792))

(assert (= (and d!1776596 (not c!986870)) b!5622793))

(declare-fun m!6596046 () Bool)

(assert (=> b!5622792 m!6596046))

(declare-fun m!6596048 () Bool)

(assert (=> b!5622792 m!6596048))

(assert (=> b!5621918 d!1776596))

(assert (=> b!5621897 d!1776496))

(declare-fun d!1776598 () Bool)

(assert (=> d!1776598 (= (nullable!5641 (h!69450 (exprs!5493 (h!69452 zl!343)))) (nullableFct!1739 (h!69450 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun bs!1301886 () Bool)

(assert (= bs!1301886 d!1776598))

(declare-fun m!6596050 () Bool)

(assert (=> bs!1301886 m!6596050))

(assert (=> b!5621919 d!1776598))

(declare-fun d!1776600 () Bool)

(assert (=> d!1776600 (= (flatMap!1222 z!1189 lambda!301860) (dynLambda!24637 lambda!301860 (h!69452 zl!343)))))

(declare-fun lt!2260892 () Unit!155964)

(assert (=> d!1776600 (= lt!2260892 (choose!42577 z!1189 (h!69452 zl!343) lambda!301860))))

(assert (=> d!1776600 (= z!1189 (store ((as const (Array Context!9986 Bool)) false) (h!69452 zl!343) true))))

(assert (=> d!1776600 (= (lemmaFlatMapOnSingletonSet!754 z!1189 (h!69452 zl!343) lambda!301860) lt!2260892)))

(declare-fun b_lambda!212731 () Bool)

(assert (=> (not b_lambda!212731) (not d!1776600)))

(declare-fun bs!1301887 () Bool)

(assert (= bs!1301887 d!1776600))

(assert (=> bs!1301887 m!6595212))

(declare-fun m!6596052 () Bool)

(assert (=> bs!1301887 m!6596052))

(declare-fun m!6596054 () Bool)

(assert (=> bs!1301887 m!6596054))

(declare-fun m!6596056 () Bool)

(assert (=> bs!1301887 m!6596056))

(assert (=> b!5621919 d!1776600))

(declare-fun d!1776602 () Bool)

(declare-fun c!986871 () Bool)

(declare-fun e!3466095 () Bool)

(assert (=> d!1776602 (= c!986871 e!3466095)))

(declare-fun res!2381638 () Bool)

(assert (=> d!1776602 (=> (not res!2381638) (not e!3466095))))

(assert (=> d!1776602 (= res!2381638 ((_ is Cons!63002) (exprs!5493 lt!2260733)))))

(declare-fun e!3466094 () (InoxSet Context!9986))

(assert (=> d!1776602 (= (derivationStepZipperUp!877 lt!2260733 (h!69451 s!2326)) e!3466094)))

(declare-fun call!423381 () (InoxSet Context!9986))

(declare-fun b!5622794 () Bool)

(assert (=> b!5622794 (= e!3466094 ((_ map or) call!423381 (derivationStepZipperUp!877 (Context!9987 (t!376416 (exprs!5493 lt!2260733))) (h!69451 s!2326))))))

(declare-fun b!5622795 () Bool)

(assert (=> b!5622795 (= e!3466095 (nullable!5641 (h!69450 (exprs!5493 lt!2260733))))))

(declare-fun b!5622796 () Bool)

(declare-fun e!3466096 () (InoxSet Context!9986))

(assert (=> b!5622796 (= e!3466094 e!3466096)))

(declare-fun c!986872 () Bool)

(assert (=> b!5622796 (= c!986872 ((_ is Cons!63002) (exprs!5493 lt!2260733)))))

(declare-fun bm!423376 () Bool)

(assert (=> bm!423376 (= call!423381 (derivationStepZipperDown!951 (h!69450 (exprs!5493 lt!2260733)) (Context!9987 (t!376416 (exprs!5493 lt!2260733))) (h!69451 s!2326)))))

(declare-fun b!5622797 () Bool)

(assert (=> b!5622797 (= e!3466096 call!423381)))

(declare-fun b!5622798 () Bool)

(assert (=> b!5622798 (= e!3466096 ((as const (Array Context!9986 Bool)) false))))

(assert (= (and d!1776602 res!2381638) b!5622795))

(assert (= (and d!1776602 c!986871) b!5622794))

(assert (= (and d!1776602 (not c!986871)) b!5622796))

(assert (= (and b!5622796 c!986872) b!5622797))

(assert (= (and b!5622796 (not c!986872)) b!5622798))

(assert (= (or b!5622794 b!5622797) bm!423376))

(declare-fun m!6596058 () Bool)

(assert (=> b!5622794 m!6596058))

(declare-fun m!6596060 () Bool)

(assert (=> b!5622795 m!6596060))

(declare-fun m!6596062 () Bool)

(assert (=> bm!423376 m!6596062))

(assert (=> b!5621919 d!1776602))

(declare-fun bm!423389 () Bool)

(declare-fun c!986886 () Bool)

(declare-fun call!423399 () List!63126)

(declare-fun call!423398 () (InoxSet Context!9986))

(assert (=> bm!423389 (= call!423398 (derivationStepZipperDown!951 (ite c!986886 (regTwo!31731 (h!69450 (exprs!5493 (h!69452 zl!343)))) (regOne!31730 (h!69450 (exprs!5493 (h!69452 zl!343))))) (ite c!986886 lt!2260733 (Context!9987 call!423399)) (h!69451 s!2326)))))

(declare-fun b!5622821 () Bool)

(declare-fun c!986884 () Bool)

(assert (=> b!5622821 (= c!986884 ((_ is Star!15609) (h!69450 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun e!3466111 () (InoxSet Context!9986))

(declare-fun e!3466114 () (InoxSet Context!9986))

(assert (=> b!5622821 (= e!3466111 e!3466114)))

(declare-fun b!5622823 () Bool)

(declare-fun c!986885 () Bool)

(declare-fun e!3466113 () Bool)

(assert (=> b!5622823 (= c!986885 e!3466113)))

(declare-fun res!2381641 () Bool)

(assert (=> b!5622823 (=> (not res!2381641) (not e!3466113))))

(assert (=> b!5622823 (= res!2381641 ((_ is Concat!24454) (h!69450 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun e!3466109 () (InoxSet Context!9986))

(declare-fun e!3466112 () (InoxSet Context!9986))

(assert (=> b!5622823 (= e!3466109 e!3466112)))

(declare-fun b!5622824 () Bool)

(declare-fun e!3466110 () (InoxSet Context!9986))

(assert (=> b!5622824 (= e!3466110 (store ((as const (Array Context!9986 Bool)) false) lt!2260733 true))))

(declare-fun b!5622825 () Bool)

(declare-fun call!423396 () (InoxSet Context!9986))

(assert (=> b!5622825 (= e!3466112 ((_ map or) call!423398 call!423396))))

(declare-fun d!1776604 () Bool)

(declare-fun c!986887 () Bool)

(assert (=> d!1776604 (= c!986887 (and ((_ is ElementMatch!15609) (h!69450 (exprs!5493 (h!69452 zl!343)))) (= (c!986617 (h!69450 (exprs!5493 (h!69452 zl!343)))) (h!69451 s!2326))))))

(assert (=> d!1776604 (= (derivationStepZipperDown!951 (h!69450 (exprs!5493 (h!69452 zl!343))) lt!2260733 (h!69451 s!2326)) e!3466110)))

(declare-fun b!5622822 () Bool)

(declare-fun call!423397 () (InoxSet Context!9986))

(assert (=> b!5622822 (= e!3466111 call!423397)))

(declare-fun bm!423390 () Bool)

(declare-fun c!986883 () Bool)

(declare-fun $colon$colon!1662 (List!63126 Regex!15609) List!63126)

(assert (=> bm!423390 (= call!423399 ($colon$colon!1662 (exprs!5493 lt!2260733) (ite (or c!986885 c!986883) (regTwo!31730 (h!69450 (exprs!5493 (h!69452 zl!343)))) (h!69450 (exprs!5493 (h!69452 zl!343))))))))

(declare-fun b!5622826 () Bool)

(assert (=> b!5622826 (= e!3466110 e!3466109)))

(assert (=> b!5622826 (= c!986886 ((_ is Union!15609) (h!69450 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun bm!423391 () Bool)

(declare-fun call!423395 () (InoxSet Context!9986))

(assert (=> bm!423391 (= call!423396 call!423395)))

(declare-fun b!5622827 () Bool)

(assert (=> b!5622827 (= e!3466114 call!423397)))

(declare-fun bm!423392 () Bool)

(declare-fun call!423394 () List!63126)

(assert (=> bm!423392 (= call!423394 call!423399)))

(declare-fun bm!423393 () Bool)

(assert (=> bm!423393 (= call!423397 call!423396)))

(declare-fun bm!423394 () Bool)

(assert (=> bm!423394 (= call!423395 (derivationStepZipperDown!951 (ite c!986886 (regOne!31731 (h!69450 (exprs!5493 (h!69452 zl!343)))) (ite c!986885 (regTwo!31730 (h!69450 (exprs!5493 (h!69452 zl!343)))) (ite c!986883 (regOne!31730 (h!69450 (exprs!5493 (h!69452 zl!343)))) (reg!15938 (h!69450 (exprs!5493 (h!69452 zl!343))))))) (ite (or c!986886 c!986885) lt!2260733 (Context!9987 call!423394)) (h!69451 s!2326)))))

(declare-fun b!5622828 () Bool)

(assert (=> b!5622828 (= e!3466114 ((as const (Array Context!9986 Bool)) false))))

(declare-fun b!5622829 () Bool)

(assert (=> b!5622829 (= e!3466113 (nullable!5641 (regOne!31730 (h!69450 (exprs!5493 (h!69452 zl!343))))))))

(declare-fun b!5622830 () Bool)

(assert (=> b!5622830 (= e!3466112 e!3466111)))

(assert (=> b!5622830 (= c!986883 ((_ is Concat!24454) (h!69450 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5622831 () Bool)

(assert (=> b!5622831 (= e!3466109 ((_ map or) call!423395 call!423398))))

(assert (= (and d!1776604 c!986887) b!5622824))

(assert (= (and d!1776604 (not c!986887)) b!5622826))

(assert (= (and b!5622826 c!986886) b!5622831))

(assert (= (and b!5622826 (not c!986886)) b!5622823))

(assert (= (and b!5622823 res!2381641) b!5622829))

(assert (= (and b!5622823 c!986885) b!5622825))

(assert (= (and b!5622823 (not c!986885)) b!5622830))

(assert (= (and b!5622830 c!986883) b!5622822))

(assert (= (and b!5622830 (not c!986883)) b!5622821))

(assert (= (and b!5622821 c!986884) b!5622827))

(assert (= (and b!5622821 (not c!986884)) b!5622828))

(assert (= (or b!5622822 b!5622827) bm!423392))

(assert (= (or b!5622822 b!5622827) bm!423393))

(assert (= (or b!5622825 bm!423392) bm!423390))

(assert (= (or b!5622825 bm!423393) bm!423391))

(assert (= (or b!5622831 b!5622825) bm!423389))

(assert (= (or b!5622831 bm!423391) bm!423394))

(declare-fun m!6596064 () Bool)

(assert (=> b!5622824 m!6596064))

(declare-fun m!6596066 () Bool)

(assert (=> bm!423390 m!6596066))

(declare-fun m!6596068 () Bool)

(assert (=> b!5622829 m!6596068))

(declare-fun m!6596070 () Bool)

(assert (=> bm!423394 m!6596070))

(declare-fun m!6596072 () Bool)

(assert (=> bm!423389 m!6596072))

(assert (=> b!5621919 d!1776604))

(declare-fun d!1776606 () Bool)

(declare-fun c!986888 () Bool)

(declare-fun e!3466116 () Bool)

(assert (=> d!1776606 (= c!986888 e!3466116)))

(declare-fun res!2381642 () Bool)

(assert (=> d!1776606 (=> (not res!2381642) (not e!3466116))))

(assert (=> d!1776606 (= res!2381642 ((_ is Cons!63002) (exprs!5493 (h!69452 zl!343))))))

(declare-fun e!3466115 () (InoxSet Context!9986))

(assert (=> d!1776606 (= (derivationStepZipperUp!877 (h!69452 zl!343) (h!69451 s!2326)) e!3466115)))

(declare-fun b!5622832 () Bool)

(declare-fun call!423400 () (InoxSet Context!9986))

(assert (=> b!5622832 (= e!3466115 ((_ map or) call!423400 (derivationStepZipperUp!877 (Context!9987 (t!376416 (exprs!5493 (h!69452 zl!343)))) (h!69451 s!2326))))))

(declare-fun b!5622833 () Bool)

(assert (=> b!5622833 (= e!3466116 (nullable!5641 (h!69450 (exprs!5493 (h!69452 zl!343)))))))

(declare-fun b!5622834 () Bool)

(declare-fun e!3466117 () (InoxSet Context!9986))

(assert (=> b!5622834 (= e!3466115 e!3466117)))

(declare-fun c!986889 () Bool)

(assert (=> b!5622834 (= c!986889 ((_ is Cons!63002) (exprs!5493 (h!69452 zl!343))))))

(declare-fun bm!423395 () Bool)

(assert (=> bm!423395 (= call!423400 (derivationStepZipperDown!951 (h!69450 (exprs!5493 (h!69452 zl!343))) (Context!9987 (t!376416 (exprs!5493 (h!69452 zl!343)))) (h!69451 s!2326)))))

(declare-fun b!5622835 () Bool)

(assert (=> b!5622835 (= e!3466117 call!423400)))

(declare-fun b!5622836 () Bool)

(assert (=> b!5622836 (= e!3466117 ((as const (Array Context!9986 Bool)) false))))

(assert (= (and d!1776606 res!2381642) b!5622833))

(assert (= (and d!1776606 c!986888) b!5622832))

(assert (= (and d!1776606 (not c!986888)) b!5622834))

(assert (= (and b!5622834 c!986889) b!5622835))

(assert (= (and b!5622834 (not c!986889)) b!5622836))

(assert (= (or b!5622832 b!5622835) bm!423395))

(declare-fun m!6596074 () Bool)

(assert (=> b!5622832 m!6596074))

(assert (=> b!5622833 m!6595220))

(declare-fun m!6596076 () Bool)

(assert (=> bm!423395 m!6596076))

(assert (=> b!5621919 d!1776606))

(declare-fun d!1776608 () Bool)

(assert (=> d!1776608 (= (flatMap!1222 z!1189 lambda!301860) (choose!42576 z!1189 lambda!301860))))

(declare-fun bs!1301888 () Bool)

(assert (= bs!1301888 d!1776608))

(declare-fun m!6596078 () Bool)

(assert (=> bs!1301888 m!6596078))

(assert (=> b!5621919 d!1776608))

(declare-fun d!1776610 () Bool)

(declare-fun c!986890 () Bool)

(declare-fun e!3466119 () Bool)

(assert (=> d!1776610 (= c!986890 e!3466119)))

(declare-fun res!2381643 () Bool)

(assert (=> d!1776610 (=> (not res!2381643) (not e!3466119))))

(assert (=> d!1776610 (= res!2381643 ((_ is Cons!63002) (exprs!5493 (Context!9987 (Cons!63002 (h!69450 (exprs!5493 (h!69452 zl!343))) (t!376416 (exprs!5493 (h!69452 zl!343))))))))))

(declare-fun e!3466118 () (InoxSet Context!9986))

(assert (=> d!1776610 (= (derivationStepZipperUp!877 (Context!9987 (Cons!63002 (h!69450 (exprs!5493 (h!69452 zl!343))) (t!376416 (exprs!5493 (h!69452 zl!343))))) (h!69451 s!2326)) e!3466118)))

(declare-fun b!5622837 () Bool)

(declare-fun call!423401 () (InoxSet Context!9986))

(assert (=> b!5622837 (= e!3466118 ((_ map or) call!423401 (derivationStepZipperUp!877 (Context!9987 (t!376416 (exprs!5493 (Context!9987 (Cons!63002 (h!69450 (exprs!5493 (h!69452 zl!343))) (t!376416 (exprs!5493 (h!69452 zl!343)))))))) (h!69451 s!2326))))))

(declare-fun b!5622838 () Bool)

(assert (=> b!5622838 (= e!3466119 (nullable!5641 (h!69450 (exprs!5493 (Context!9987 (Cons!63002 (h!69450 (exprs!5493 (h!69452 zl!343))) (t!376416 (exprs!5493 (h!69452 zl!343)))))))))))

(declare-fun b!5622839 () Bool)

(declare-fun e!3466120 () (InoxSet Context!9986))

(assert (=> b!5622839 (= e!3466118 e!3466120)))

(declare-fun c!986891 () Bool)

(assert (=> b!5622839 (= c!986891 ((_ is Cons!63002) (exprs!5493 (Context!9987 (Cons!63002 (h!69450 (exprs!5493 (h!69452 zl!343))) (t!376416 (exprs!5493 (h!69452 zl!343))))))))))

(declare-fun bm!423396 () Bool)

(assert (=> bm!423396 (= call!423401 (derivationStepZipperDown!951 (h!69450 (exprs!5493 (Context!9987 (Cons!63002 (h!69450 (exprs!5493 (h!69452 zl!343))) (t!376416 (exprs!5493 (h!69452 zl!343))))))) (Context!9987 (t!376416 (exprs!5493 (Context!9987 (Cons!63002 (h!69450 (exprs!5493 (h!69452 zl!343))) (t!376416 (exprs!5493 (h!69452 zl!343)))))))) (h!69451 s!2326)))))

(declare-fun b!5622840 () Bool)

(assert (=> b!5622840 (= e!3466120 call!423401)))

(declare-fun b!5622841 () Bool)

(assert (=> b!5622841 (= e!3466120 ((as const (Array Context!9986 Bool)) false))))

(assert (= (and d!1776610 res!2381643) b!5622838))

(assert (= (and d!1776610 c!986890) b!5622837))

(assert (= (and d!1776610 (not c!986890)) b!5622839))

(assert (= (and b!5622839 c!986891) b!5622840))

(assert (= (and b!5622839 (not c!986891)) b!5622841))

(assert (= (or b!5622837 b!5622840) bm!423396))

(declare-fun m!6596080 () Bool)

(assert (=> b!5622837 m!6596080))

(declare-fun m!6596082 () Bool)

(assert (=> b!5622838 m!6596082))

(declare-fun m!6596084 () Bool)

(assert (=> bm!423396 m!6596084))

(assert (=> b!5621919 d!1776610))

(assert (=> b!5621917 d!1776496))

(declare-fun call!423406 () (InoxSet Context!9986))

(declare-fun c!986895 () Bool)

(declare-fun bm!423397 () Bool)

(declare-fun call!423407 () List!63126)

(assert (=> bm!423397 (= call!423406 (derivationStepZipperDown!951 (ite c!986895 (regTwo!31731 (regTwo!31731 (regOne!31730 r!7292))) (regOne!31730 (regTwo!31731 (regOne!31730 r!7292)))) (ite c!986895 lt!2260733 (Context!9987 call!423407)) (h!69451 s!2326)))))

(declare-fun b!5622842 () Bool)

(declare-fun c!986893 () Bool)

(assert (=> b!5622842 (= c!986893 ((_ is Star!15609) (regTwo!31731 (regOne!31730 r!7292))))))

(declare-fun e!3466123 () (InoxSet Context!9986))

(declare-fun e!3466126 () (InoxSet Context!9986))

(assert (=> b!5622842 (= e!3466123 e!3466126)))

(declare-fun b!5622844 () Bool)

(declare-fun c!986894 () Bool)

(declare-fun e!3466125 () Bool)

(assert (=> b!5622844 (= c!986894 e!3466125)))

(declare-fun res!2381644 () Bool)

(assert (=> b!5622844 (=> (not res!2381644) (not e!3466125))))

(assert (=> b!5622844 (= res!2381644 ((_ is Concat!24454) (regTwo!31731 (regOne!31730 r!7292))))))

(declare-fun e!3466121 () (InoxSet Context!9986))

(declare-fun e!3466124 () (InoxSet Context!9986))

(assert (=> b!5622844 (= e!3466121 e!3466124)))

(declare-fun b!5622845 () Bool)

(declare-fun e!3466122 () (InoxSet Context!9986))

(assert (=> b!5622845 (= e!3466122 (store ((as const (Array Context!9986 Bool)) false) lt!2260733 true))))

(declare-fun b!5622846 () Bool)

(declare-fun call!423404 () (InoxSet Context!9986))

(assert (=> b!5622846 (= e!3466124 ((_ map or) call!423406 call!423404))))

(declare-fun d!1776612 () Bool)

(declare-fun c!986896 () Bool)

(assert (=> d!1776612 (= c!986896 (and ((_ is ElementMatch!15609) (regTwo!31731 (regOne!31730 r!7292))) (= (c!986617 (regTwo!31731 (regOne!31730 r!7292))) (h!69451 s!2326))))))

(assert (=> d!1776612 (= (derivationStepZipperDown!951 (regTwo!31731 (regOne!31730 r!7292)) lt!2260733 (h!69451 s!2326)) e!3466122)))

(declare-fun b!5622843 () Bool)

(declare-fun call!423405 () (InoxSet Context!9986))

(assert (=> b!5622843 (= e!3466123 call!423405)))

(declare-fun bm!423398 () Bool)

(declare-fun c!986892 () Bool)

(assert (=> bm!423398 (= call!423407 ($colon$colon!1662 (exprs!5493 lt!2260733) (ite (or c!986894 c!986892) (regTwo!31730 (regTwo!31731 (regOne!31730 r!7292))) (regTwo!31731 (regOne!31730 r!7292)))))))

(declare-fun b!5622847 () Bool)

(assert (=> b!5622847 (= e!3466122 e!3466121)))

(assert (=> b!5622847 (= c!986895 ((_ is Union!15609) (regTwo!31731 (regOne!31730 r!7292))))))

(declare-fun bm!423399 () Bool)

(declare-fun call!423403 () (InoxSet Context!9986))

(assert (=> bm!423399 (= call!423404 call!423403)))

(declare-fun b!5622848 () Bool)

(assert (=> b!5622848 (= e!3466126 call!423405)))

(declare-fun bm!423400 () Bool)

(declare-fun call!423402 () List!63126)

(assert (=> bm!423400 (= call!423402 call!423407)))

(declare-fun bm!423401 () Bool)

(assert (=> bm!423401 (= call!423405 call!423404)))

(declare-fun bm!423402 () Bool)

(assert (=> bm!423402 (= call!423403 (derivationStepZipperDown!951 (ite c!986895 (regOne!31731 (regTwo!31731 (regOne!31730 r!7292))) (ite c!986894 (regTwo!31730 (regTwo!31731 (regOne!31730 r!7292))) (ite c!986892 (regOne!31730 (regTwo!31731 (regOne!31730 r!7292))) (reg!15938 (regTwo!31731 (regOne!31730 r!7292)))))) (ite (or c!986895 c!986894) lt!2260733 (Context!9987 call!423402)) (h!69451 s!2326)))))

(declare-fun b!5622849 () Bool)

(assert (=> b!5622849 (= e!3466126 ((as const (Array Context!9986 Bool)) false))))

(declare-fun b!5622850 () Bool)

(assert (=> b!5622850 (= e!3466125 (nullable!5641 (regOne!31730 (regTwo!31731 (regOne!31730 r!7292)))))))

(declare-fun b!5622851 () Bool)

(assert (=> b!5622851 (= e!3466124 e!3466123)))

(assert (=> b!5622851 (= c!986892 ((_ is Concat!24454) (regTwo!31731 (regOne!31730 r!7292))))))

(declare-fun b!5622852 () Bool)

(assert (=> b!5622852 (= e!3466121 ((_ map or) call!423403 call!423406))))

(assert (= (and d!1776612 c!986896) b!5622845))

(assert (= (and d!1776612 (not c!986896)) b!5622847))

(assert (= (and b!5622847 c!986895) b!5622852))

(assert (= (and b!5622847 (not c!986895)) b!5622844))

(assert (= (and b!5622844 res!2381644) b!5622850))

(assert (= (and b!5622844 c!986894) b!5622846))

(assert (= (and b!5622844 (not c!986894)) b!5622851))

(assert (= (and b!5622851 c!986892) b!5622843))

(assert (= (and b!5622851 (not c!986892)) b!5622842))

(assert (= (and b!5622842 c!986893) b!5622848))

(assert (= (and b!5622842 (not c!986893)) b!5622849))

(assert (= (or b!5622843 b!5622848) bm!423400))

(assert (= (or b!5622843 b!5622848) bm!423401))

(assert (= (or b!5622846 bm!423400) bm!423398))

(assert (= (or b!5622846 bm!423401) bm!423399))

(assert (= (or b!5622852 b!5622846) bm!423397))

(assert (= (or b!5622852 bm!423399) bm!423402))

(assert (=> b!5622845 m!6596064))

(declare-fun m!6596086 () Bool)

(assert (=> bm!423398 m!6596086))

(declare-fun m!6596088 () Bool)

(assert (=> b!5622850 m!6596088))

(declare-fun m!6596090 () Bool)

(assert (=> bm!423402 m!6596090))

(declare-fun m!6596092 () Bool)

(assert (=> bm!423397 m!6596092))

(assert (=> b!5621896 d!1776612))

(declare-fun call!423413 () List!63126)

(declare-fun bm!423403 () Bool)

(declare-fun call!423412 () (InoxSet Context!9986))

(declare-fun c!986900 () Bool)

(assert (=> bm!423403 (= call!423412 (derivationStepZipperDown!951 (ite c!986900 (regTwo!31731 (regOne!31731 (regOne!31730 r!7292))) (regOne!31730 (regOne!31731 (regOne!31730 r!7292)))) (ite c!986900 lt!2260733 (Context!9987 call!423413)) (h!69451 s!2326)))))

(declare-fun b!5622853 () Bool)

(declare-fun c!986898 () Bool)

(assert (=> b!5622853 (= c!986898 ((_ is Star!15609) (regOne!31731 (regOne!31730 r!7292))))))

(declare-fun e!3466129 () (InoxSet Context!9986))

(declare-fun e!3466132 () (InoxSet Context!9986))

(assert (=> b!5622853 (= e!3466129 e!3466132)))

(declare-fun b!5622855 () Bool)

(declare-fun c!986899 () Bool)

(declare-fun e!3466131 () Bool)

(assert (=> b!5622855 (= c!986899 e!3466131)))

(declare-fun res!2381645 () Bool)

(assert (=> b!5622855 (=> (not res!2381645) (not e!3466131))))

(assert (=> b!5622855 (= res!2381645 ((_ is Concat!24454) (regOne!31731 (regOne!31730 r!7292))))))

(declare-fun e!3466127 () (InoxSet Context!9986))

(declare-fun e!3466130 () (InoxSet Context!9986))

(assert (=> b!5622855 (= e!3466127 e!3466130)))

(declare-fun b!5622856 () Bool)

(declare-fun e!3466128 () (InoxSet Context!9986))

(assert (=> b!5622856 (= e!3466128 (store ((as const (Array Context!9986 Bool)) false) lt!2260733 true))))

(declare-fun b!5622857 () Bool)

(declare-fun call!423410 () (InoxSet Context!9986))

(assert (=> b!5622857 (= e!3466130 ((_ map or) call!423412 call!423410))))

(declare-fun d!1776614 () Bool)

(declare-fun c!986901 () Bool)

(assert (=> d!1776614 (= c!986901 (and ((_ is ElementMatch!15609) (regOne!31731 (regOne!31730 r!7292))) (= (c!986617 (regOne!31731 (regOne!31730 r!7292))) (h!69451 s!2326))))))

(assert (=> d!1776614 (= (derivationStepZipperDown!951 (regOne!31731 (regOne!31730 r!7292)) lt!2260733 (h!69451 s!2326)) e!3466128)))

(declare-fun b!5622854 () Bool)

(declare-fun call!423411 () (InoxSet Context!9986))

(assert (=> b!5622854 (= e!3466129 call!423411)))

(declare-fun bm!423404 () Bool)

(declare-fun c!986897 () Bool)

(assert (=> bm!423404 (= call!423413 ($colon$colon!1662 (exprs!5493 lt!2260733) (ite (or c!986899 c!986897) (regTwo!31730 (regOne!31731 (regOne!31730 r!7292))) (regOne!31731 (regOne!31730 r!7292)))))))

(declare-fun b!5622858 () Bool)

(assert (=> b!5622858 (= e!3466128 e!3466127)))

(assert (=> b!5622858 (= c!986900 ((_ is Union!15609) (regOne!31731 (regOne!31730 r!7292))))))

(declare-fun bm!423405 () Bool)

(declare-fun call!423409 () (InoxSet Context!9986))

(assert (=> bm!423405 (= call!423410 call!423409)))

(declare-fun b!5622859 () Bool)

(assert (=> b!5622859 (= e!3466132 call!423411)))

(declare-fun bm!423406 () Bool)

(declare-fun call!423408 () List!63126)

(assert (=> bm!423406 (= call!423408 call!423413)))

(declare-fun bm!423407 () Bool)

(assert (=> bm!423407 (= call!423411 call!423410)))

(declare-fun bm!423408 () Bool)

(assert (=> bm!423408 (= call!423409 (derivationStepZipperDown!951 (ite c!986900 (regOne!31731 (regOne!31731 (regOne!31730 r!7292))) (ite c!986899 (regTwo!31730 (regOne!31731 (regOne!31730 r!7292))) (ite c!986897 (regOne!31730 (regOne!31731 (regOne!31730 r!7292))) (reg!15938 (regOne!31731 (regOne!31730 r!7292)))))) (ite (or c!986900 c!986899) lt!2260733 (Context!9987 call!423408)) (h!69451 s!2326)))))

(declare-fun b!5622860 () Bool)

(assert (=> b!5622860 (= e!3466132 ((as const (Array Context!9986 Bool)) false))))

(declare-fun b!5622861 () Bool)

(assert (=> b!5622861 (= e!3466131 (nullable!5641 (regOne!31730 (regOne!31731 (regOne!31730 r!7292)))))))

(declare-fun b!5622862 () Bool)

(assert (=> b!5622862 (= e!3466130 e!3466129)))

(assert (=> b!5622862 (= c!986897 ((_ is Concat!24454) (regOne!31731 (regOne!31730 r!7292))))))

(declare-fun b!5622863 () Bool)

(assert (=> b!5622863 (= e!3466127 ((_ map or) call!423409 call!423412))))

(assert (= (and d!1776614 c!986901) b!5622856))

(assert (= (and d!1776614 (not c!986901)) b!5622858))

(assert (= (and b!5622858 c!986900) b!5622863))

(assert (= (and b!5622858 (not c!986900)) b!5622855))

(assert (= (and b!5622855 res!2381645) b!5622861))

(assert (= (and b!5622855 c!986899) b!5622857))

(assert (= (and b!5622855 (not c!986899)) b!5622862))

(assert (= (and b!5622862 c!986897) b!5622854))

(assert (= (and b!5622862 (not c!986897)) b!5622853))

(assert (= (and b!5622853 c!986898) b!5622859))

(assert (= (and b!5622853 (not c!986898)) b!5622860))

(assert (= (or b!5622854 b!5622859) bm!423406))

(assert (= (or b!5622854 b!5622859) bm!423407))

(assert (= (or b!5622857 bm!423406) bm!423404))

(assert (= (or b!5622857 bm!423407) bm!423405))

(assert (= (or b!5622863 b!5622857) bm!423403))

(assert (= (or b!5622863 bm!423405) bm!423408))

(assert (=> b!5622856 m!6596064))

(declare-fun m!6596094 () Bool)

(assert (=> bm!423404 m!6596094))

(declare-fun m!6596096 () Bool)

(assert (=> b!5622861 m!6596096))

(declare-fun m!6596098 () Bool)

(assert (=> bm!423408 m!6596098))

(declare-fun m!6596100 () Bool)

(assert (=> bm!423403 m!6596100))

(assert (=> b!5621896 d!1776614))

(declare-fun d!1776616 () Bool)

(assert (=> d!1776616 (= (matchR!7794 (Concat!24454 (Union!15609 (regOne!31731 (regOne!31730 r!7292)) (regTwo!31731 (regOne!31730 r!7292))) (regTwo!31730 r!7292)) s!2326) (matchR!7794 (Union!15609 (Concat!24454 (regOne!31731 (regOne!31730 r!7292)) (regTwo!31730 r!7292)) (Concat!24454 (regTwo!31731 (regOne!31730 r!7292)) (regTwo!31730 r!7292))) s!2326))))

(declare-fun lt!2260895 () Unit!155964)

(declare-fun choose!42593 (Regex!15609 Regex!15609 Regex!15609 List!63127) Unit!155964)

(assert (=> d!1776616 (= lt!2260895 (choose!42593 (regOne!31731 (regOne!31730 r!7292)) (regTwo!31731 (regOne!31730 r!7292)) (regTwo!31730 r!7292) s!2326))))

(assert (=> d!1776616 (validRegex!7345 (regOne!31731 (regOne!31730 r!7292)))))

(assert (=> d!1776616 (= (lemmaConcatDistributesInUnion!42 (regOne!31731 (regOne!31730 r!7292)) (regTwo!31731 (regOne!31730 r!7292)) (regTwo!31730 r!7292) s!2326) lt!2260895)))

(declare-fun bs!1301889 () Bool)

(assert (= bs!1301889 d!1776616))

(declare-fun m!6596102 () Bool)

(assert (=> bs!1301889 m!6596102))

(declare-fun m!6596104 () Bool)

(assert (=> bs!1301889 m!6596104))

(declare-fun m!6596106 () Bool)

(assert (=> bs!1301889 m!6596106))

(declare-fun m!6596108 () Bool)

(assert (=> bs!1301889 m!6596108))

(assert (=> b!5621920 d!1776616))

(declare-fun bm!423409 () Bool)

(declare-fun call!423414 () Bool)

(assert (=> bm!423409 (= call!423414 (isEmpty!34833 s!2326))))

(declare-fun b!5622864 () Bool)

(declare-fun e!3466135 () Bool)

(assert (=> b!5622864 (= e!3466135 (matchR!7794 (derivativeStep!4447 lt!2260741 (head!11967 s!2326)) (tail!11062 s!2326)))))

(declare-fun d!1776618 () Bool)

(declare-fun e!3466133 () Bool)

(assert (=> d!1776618 e!3466133))

(declare-fun c!986903 () Bool)

(assert (=> d!1776618 (= c!986903 ((_ is EmptyExpr!15609) lt!2260741))))

(declare-fun lt!2260896 () Bool)

(assert (=> d!1776618 (= lt!2260896 e!3466135)))

(declare-fun c!986902 () Bool)

(assert (=> d!1776618 (= c!986902 (isEmpty!34833 s!2326))))

(assert (=> d!1776618 (validRegex!7345 lt!2260741)))

(assert (=> d!1776618 (= (matchR!7794 lt!2260741 s!2326) lt!2260896)))

(declare-fun b!5622865 () Bool)

(declare-fun res!2381646 () Bool)

(declare-fun e!3466139 () Bool)

(assert (=> b!5622865 (=> (not res!2381646) (not e!3466139))))

(assert (=> b!5622865 (= res!2381646 (isEmpty!34833 (tail!11062 s!2326)))))

(declare-fun b!5622866 () Bool)

(declare-fun e!3466136 () Bool)

(assert (=> b!5622866 (= e!3466133 e!3466136)))

(declare-fun c!986904 () Bool)

(assert (=> b!5622866 (= c!986904 ((_ is EmptyLang!15609) lt!2260741))))

(declare-fun b!5622867 () Bool)

(assert (=> b!5622867 (= e!3466135 (nullable!5641 lt!2260741))))

(declare-fun b!5622868 () Bool)

(assert (=> b!5622868 (= e!3466139 (= (head!11967 s!2326) (c!986617 lt!2260741)))))

(declare-fun b!5622869 () Bool)

(declare-fun res!2381649 () Bool)

(declare-fun e!3466137 () Bool)

(assert (=> b!5622869 (=> res!2381649 e!3466137)))

(assert (=> b!5622869 (= res!2381649 e!3466139)))

(declare-fun res!2381648 () Bool)

(assert (=> b!5622869 (=> (not res!2381648) (not e!3466139))))

(assert (=> b!5622869 (= res!2381648 lt!2260896)))

(declare-fun b!5622870 () Bool)

(declare-fun e!3466138 () Bool)

(assert (=> b!5622870 (= e!3466137 e!3466138)))

(declare-fun res!2381651 () Bool)

(assert (=> b!5622870 (=> (not res!2381651) (not e!3466138))))

(assert (=> b!5622870 (= res!2381651 (not lt!2260896))))

(declare-fun b!5622871 () Bool)

(declare-fun res!2381647 () Bool)

(declare-fun e!3466134 () Bool)

(assert (=> b!5622871 (=> res!2381647 e!3466134)))

(assert (=> b!5622871 (= res!2381647 (not (isEmpty!34833 (tail!11062 s!2326))))))

(declare-fun b!5622872 () Bool)

(assert (=> b!5622872 (= e!3466134 (not (= (head!11967 s!2326) (c!986617 lt!2260741))))))

(declare-fun b!5622873 () Bool)

(declare-fun res!2381652 () Bool)

(assert (=> b!5622873 (=> res!2381652 e!3466137)))

(assert (=> b!5622873 (= res!2381652 (not ((_ is ElementMatch!15609) lt!2260741)))))

(assert (=> b!5622873 (= e!3466136 e!3466137)))

(declare-fun b!5622874 () Bool)

(declare-fun res!2381650 () Bool)

(assert (=> b!5622874 (=> (not res!2381650) (not e!3466139))))

(assert (=> b!5622874 (= res!2381650 (not call!423414))))

(declare-fun b!5622875 () Bool)

(assert (=> b!5622875 (= e!3466133 (= lt!2260896 call!423414))))

(declare-fun b!5622876 () Bool)

(assert (=> b!5622876 (= e!3466138 e!3466134)))

(declare-fun res!2381653 () Bool)

(assert (=> b!5622876 (=> res!2381653 e!3466134)))

(assert (=> b!5622876 (= res!2381653 call!423414)))

(declare-fun b!5622877 () Bool)

(assert (=> b!5622877 (= e!3466136 (not lt!2260896))))

(assert (= (and d!1776618 c!986902) b!5622867))

(assert (= (and d!1776618 (not c!986902)) b!5622864))

(assert (= (and d!1776618 c!986903) b!5622875))

(assert (= (and d!1776618 (not c!986903)) b!5622866))

(assert (= (and b!5622866 c!986904) b!5622877))

(assert (= (and b!5622866 (not c!986904)) b!5622873))

(assert (= (and b!5622873 (not res!2381652)) b!5622869))

(assert (= (and b!5622869 res!2381648) b!5622874))

(assert (= (and b!5622874 res!2381650) b!5622865))

(assert (= (and b!5622865 res!2381646) b!5622868))

(assert (= (and b!5622869 (not res!2381649)) b!5622870))

(assert (= (and b!5622870 res!2381651) b!5622876))

(assert (= (and b!5622876 (not res!2381653)) b!5622871))

(assert (= (and b!5622871 (not res!2381647)) b!5622872))

(assert (= (or b!5622875 b!5622874 b!5622876) bm!423409))

(assert (=> d!1776618 m!6595510))

(declare-fun m!6596110 () Bool)

(assert (=> d!1776618 m!6596110))

(assert (=> b!5622864 m!6595514))

(assert (=> b!5622864 m!6595514))

(declare-fun m!6596112 () Bool)

(assert (=> b!5622864 m!6596112))

(assert (=> b!5622864 m!6595518))

(assert (=> b!5622864 m!6596112))

(assert (=> b!5622864 m!6595518))

(declare-fun m!6596114 () Bool)

(assert (=> b!5622864 m!6596114))

(assert (=> b!5622871 m!6595518))

(assert (=> b!5622871 m!6595518))

(assert (=> b!5622871 m!6595624))

(declare-fun m!6596116 () Bool)

(assert (=> b!5622867 m!6596116))

(assert (=> b!5622865 m!6595518))

(assert (=> b!5622865 m!6595518))

(assert (=> b!5622865 m!6595624))

(assert (=> b!5622868 m!6595514))

(assert (=> bm!423409 m!6595510))

(assert (=> b!5622872 m!6595514))

(assert (=> b!5621920 d!1776618))

(declare-fun d!1776620 () Bool)

(assert (=> d!1776620 (= (matchR!7794 lt!2260732 s!2326) (matchRSpec!2712 lt!2260732 s!2326))))

(declare-fun lt!2260897 () Unit!155964)

(assert (=> d!1776620 (= lt!2260897 (choose!42585 lt!2260732 s!2326))))

(assert (=> d!1776620 (validRegex!7345 lt!2260732)))

(assert (=> d!1776620 (= (mainMatchTheorem!2712 lt!2260732 s!2326) lt!2260897)))

(declare-fun bs!1301890 () Bool)

(assert (= bs!1301890 d!1776620))

(assert (=> bs!1301890 m!6595296))

(assert (=> bs!1301890 m!6595292))

(declare-fun m!6596118 () Bool)

(assert (=> bs!1301890 m!6596118))

(declare-fun m!6596120 () Bool)

(assert (=> bs!1301890 m!6596120))

(assert (=> b!5621920 d!1776620))

(declare-fun d!1776622 () Bool)

(assert (=> d!1776622 (= (matchR!7794 lt!2260741 s!2326) (matchRSpec!2712 lt!2260741 s!2326))))

(declare-fun lt!2260898 () Unit!155964)

(assert (=> d!1776622 (= lt!2260898 (choose!42585 lt!2260741 s!2326))))

(assert (=> d!1776622 (validRegex!7345 lt!2260741)))

(assert (=> d!1776622 (= (mainMatchTheorem!2712 lt!2260741 s!2326) lt!2260898)))

(declare-fun bs!1301891 () Bool)

(assert (= bs!1301891 d!1776622))

(assert (=> bs!1301891 m!6595298))

(assert (=> bs!1301891 m!6595294))

(declare-fun m!6596122 () Bool)

(assert (=> bs!1301891 m!6596122))

(assert (=> bs!1301891 m!6596110))

(assert (=> b!5621920 d!1776622))

(declare-fun bs!1301892 () Bool)

(declare-fun b!5622880 () Bool)

(assert (= bs!1301892 (and b!5622880 b!5622398)))

(declare-fun lambda!301928 () Int)

(assert (=> bs!1301892 (not (= lambda!301928 lambda!301898))))

(declare-fun bs!1301893 () Bool)

(assert (= bs!1301893 (and b!5622880 b!5621913)))

(assert (=> bs!1301893 (not (= lambda!301928 lambda!301858))))

(declare-fun bs!1301894 () Bool)

(assert (= bs!1301894 (and b!5622880 d!1776558)))

(assert (=> bs!1301894 (not (= lambda!301928 lambda!301925))))

(assert (=> bs!1301894 (not (= lambda!301928 lambda!301923))))

(declare-fun bs!1301895 () Bool)

(assert (= bs!1301895 (and b!5622880 d!1776544)))

(assert (=> bs!1301895 (not (= lambda!301928 lambda!301912))))

(declare-fun bs!1301896 () Bool)

(assert (= bs!1301896 (and b!5622880 b!5622390)))

(assert (=> bs!1301896 (= (and (= (reg!15938 lt!2260741) (reg!15938 lt!2260735)) (= lt!2260741 lt!2260735)) (= lambda!301928 lambda!301897))))

(declare-fun bs!1301897 () Bool)

(assert (= bs!1301897 (and b!5622880 b!5622411)))

(assert (=> bs!1301897 (= (and (= (reg!15938 lt!2260741) (reg!15938 lt!2260765)) (= lt!2260741 lt!2260765)) (= lambda!301928 lambda!301900))))

(declare-fun bs!1301898 () Bool)

(assert (= bs!1301898 (and b!5622880 b!5622740)))

(assert (=> bs!1301898 (not (= lambda!301928 lambda!301927))))

(declare-fun bs!1301899 () Bool)

(assert (= bs!1301899 (and b!5622880 b!5622419)))

(assert (=> bs!1301899 (not (= lambda!301928 lambda!301901))))

(assert (=> bs!1301893 (not (= lambda!301928 lambda!301859))))

(declare-fun bs!1301900 () Bool)

(assert (= bs!1301900 (and b!5622880 b!5622732)))

(assert (=> bs!1301900 (= (and (= (reg!15938 lt!2260741) (reg!15938 r!7292)) (= lt!2260741 r!7292)) (= lambda!301928 lambda!301926))))

(assert (=> b!5622880 true))

(assert (=> b!5622880 true))

(declare-fun bs!1301901 () Bool)

(declare-fun b!5622888 () Bool)

(assert (= bs!1301901 (and b!5622888 b!5622398)))

(declare-fun lambda!301929 () Int)

(assert (=> bs!1301901 (= (and (= (regOne!31730 lt!2260741) (regOne!31730 lt!2260735)) (= (regTwo!31730 lt!2260741) (regTwo!31730 lt!2260735))) (= lambda!301929 lambda!301898))))

(declare-fun bs!1301902 () Bool)

(assert (= bs!1301902 (and b!5622888 b!5621913)))

(assert (=> bs!1301902 (not (= lambda!301929 lambda!301858))))

(declare-fun bs!1301903 () Bool)

(assert (= bs!1301903 (and b!5622888 d!1776558)))

(assert (=> bs!1301903 (= (and (= (regOne!31730 lt!2260741) (regOne!31730 r!7292)) (= (regTwo!31730 lt!2260741) (regTwo!31730 r!7292))) (= lambda!301929 lambda!301925))))

(assert (=> bs!1301903 (not (= lambda!301929 lambda!301923))))

(declare-fun bs!1301904 () Bool)

(assert (= bs!1301904 (and b!5622888 d!1776544)))

(assert (=> bs!1301904 (not (= lambda!301929 lambda!301912))))

(declare-fun bs!1301905 () Bool)

(assert (= bs!1301905 (and b!5622888 b!5622390)))

(assert (=> bs!1301905 (not (= lambda!301929 lambda!301897))))

(declare-fun bs!1301906 () Bool)

(assert (= bs!1301906 (and b!5622888 b!5622880)))

(assert (=> bs!1301906 (not (= lambda!301929 lambda!301928))))

(declare-fun bs!1301907 () Bool)

(assert (= bs!1301907 (and b!5622888 b!5622411)))

(assert (=> bs!1301907 (not (= lambda!301929 lambda!301900))))

(declare-fun bs!1301908 () Bool)

(assert (= bs!1301908 (and b!5622888 b!5622740)))

(assert (=> bs!1301908 (= (and (= (regOne!31730 lt!2260741) (regOne!31730 r!7292)) (= (regTwo!31730 lt!2260741) (regTwo!31730 r!7292))) (= lambda!301929 lambda!301927))))

(declare-fun bs!1301909 () Bool)

(assert (= bs!1301909 (and b!5622888 b!5622419)))

(assert (=> bs!1301909 (= (and (= (regOne!31730 lt!2260741) (regOne!31730 lt!2260765)) (= (regTwo!31730 lt!2260741) (regTwo!31730 lt!2260765))) (= lambda!301929 lambda!301901))))

(assert (=> bs!1301902 (= (and (= (regOne!31730 lt!2260741) (regOne!31730 r!7292)) (= (regTwo!31730 lt!2260741) (regTwo!31730 r!7292))) (= lambda!301929 lambda!301859))))

(declare-fun bs!1301910 () Bool)

(assert (= bs!1301910 (and b!5622888 b!5622732)))

(assert (=> bs!1301910 (not (= lambda!301929 lambda!301926))))

(assert (=> b!5622888 true))

(assert (=> b!5622888 true))

(declare-fun b!5622878 () Bool)

(declare-fun e!3466145 () Bool)

(declare-fun e!3466142 () Bool)

(assert (=> b!5622878 (= e!3466145 e!3466142)))

(declare-fun c!986908 () Bool)

(assert (=> b!5622878 (= c!986908 ((_ is Star!15609) lt!2260741))))

(declare-fun b!5622879 () Bool)

(declare-fun e!3466144 () Bool)

(declare-fun call!423415 () Bool)

(assert (=> b!5622879 (= e!3466144 call!423415)))

(declare-fun e!3466140 () Bool)

(declare-fun call!423416 () Bool)

(assert (=> b!5622880 (= e!3466140 call!423416)))

(declare-fun b!5622881 () Bool)

(declare-fun e!3466143 () Bool)

(assert (=> b!5622881 (= e!3466143 (= s!2326 (Cons!63003 (c!986617 lt!2260741) Nil!63003)))))

(declare-fun b!5622882 () Bool)

(declare-fun c!986906 () Bool)

(assert (=> b!5622882 (= c!986906 ((_ is ElementMatch!15609) lt!2260741))))

(declare-fun e!3466146 () Bool)

(assert (=> b!5622882 (= e!3466146 e!3466143)))

(declare-fun b!5622883 () Bool)

(assert (=> b!5622883 (= e!3466144 e!3466146)))

(declare-fun res!2381655 () Bool)

(assert (=> b!5622883 (= res!2381655 (not ((_ is EmptyLang!15609) lt!2260741)))))

(assert (=> b!5622883 (=> (not res!2381655) (not e!3466146))))

(declare-fun b!5622884 () Bool)

(declare-fun res!2381654 () Bool)

(assert (=> b!5622884 (=> res!2381654 e!3466140)))

(assert (=> b!5622884 (= res!2381654 call!423415)))

(assert (=> b!5622884 (= e!3466142 e!3466140)))

(declare-fun bm!423410 () Bool)

(assert (=> bm!423410 (= call!423415 (isEmpty!34833 s!2326))))

(declare-fun b!5622886 () Bool)

(declare-fun e!3466141 () Bool)

(assert (=> b!5622886 (= e!3466141 (matchRSpec!2712 (regTwo!31731 lt!2260741) s!2326))))

(declare-fun b!5622887 () Bool)

(declare-fun c!986907 () Bool)

(assert (=> b!5622887 (= c!986907 ((_ is Union!15609) lt!2260741))))

(assert (=> b!5622887 (= e!3466143 e!3466145)))

(assert (=> b!5622888 (= e!3466142 call!423416)))

(declare-fun bm!423411 () Bool)

(assert (=> bm!423411 (= call!423416 (Exists!2709 (ite c!986908 lambda!301928 lambda!301929)))))

(declare-fun d!1776624 () Bool)

(declare-fun c!986905 () Bool)

(assert (=> d!1776624 (= c!986905 ((_ is EmptyExpr!15609) lt!2260741))))

(assert (=> d!1776624 (= (matchRSpec!2712 lt!2260741 s!2326) e!3466144)))

(declare-fun b!5622885 () Bool)

(assert (=> b!5622885 (= e!3466145 e!3466141)))

(declare-fun res!2381656 () Bool)

(assert (=> b!5622885 (= res!2381656 (matchRSpec!2712 (regOne!31731 lt!2260741) s!2326))))

(assert (=> b!5622885 (=> res!2381656 e!3466141)))

(assert (= (and d!1776624 c!986905) b!5622879))

(assert (= (and d!1776624 (not c!986905)) b!5622883))

(assert (= (and b!5622883 res!2381655) b!5622882))

(assert (= (and b!5622882 c!986906) b!5622881))

(assert (= (and b!5622882 (not c!986906)) b!5622887))

(assert (= (and b!5622887 c!986907) b!5622885))

(assert (= (and b!5622887 (not c!986907)) b!5622878))

(assert (= (and b!5622885 (not res!2381656)) b!5622886))

(assert (= (and b!5622878 c!986908) b!5622884))

(assert (= (and b!5622878 (not c!986908)) b!5622888))

(assert (= (and b!5622884 (not res!2381654)) b!5622880))

(assert (= (or b!5622880 b!5622888) bm!423411))

(assert (= (or b!5622879 b!5622884) bm!423410))

(assert (=> bm!423410 m!6595510))

(declare-fun m!6596124 () Bool)

(assert (=> b!5622886 m!6596124))

(declare-fun m!6596126 () Bool)

(assert (=> bm!423411 m!6596126))

(declare-fun m!6596128 () Bool)

(assert (=> b!5622885 m!6596128))

(assert (=> b!5621920 d!1776624))

(declare-fun bm!423412 () Bool)

(declare-fun call!423417 () Bool)

(assert (=> bm!423412 (= call!423417 (isEmpty!34833 s!2326))))

(declare-fun b!5622889 () Bool)

(declare-fun e!3466149 () Bool)

(assert (=> b!5622889 (= e!3466149 (matchR!7794 (derivativeStep!4447 lt!2260732 (head!11967 s!2326)) (tail!11062 s!2326)))))

(declare-fun d!1776626 () Bool)

(declare-fun e!3466147 () Bool)

(assert (=> d!1776626 e!3466147))

(declare-fun c!986910 () Bool)

(assert (=> d!1776626 (= c!986910 ((_ is EmptyExpr!15609) lt!2260732))))

(declare-fun lt!2260899 () Bool)

(assert (=> d!1776626 (= lt!2260899 e!3466149)))

(declare-fun c!986909 () Bool)

(assert (=> d!1776626 (= c!986909 (isEmpty!34833 s!2326))))

(assert (=> d!1776626 (validRegex!7345 lt!2260732)))

(assert (=> d!1776626 (= (matchR!7794 lt!2260732 s!2326) lt!2260899)))

(declare-fun b!5622890 () Bool)

(declare-fun res!2381657 () Bool)

(declare-fun e!3466153 () Bool)

(assert (=> b!5622890 (=> (not res!2381657) (not e!3466153))))

(assert (=> b!5622890 (= res!2381657 (isEmpty!34833 (tail!11062 s!2326)))))

(declare-fun b!5622891 () Bool)

(declare-fun e!3466150 () Bool)

(assert (=> b!5622891 (= e!3466147 e!3466150)))

(declare-fun c!986911 () Bool)

(assert (=> b!5622891 (= c!986911 ((_ is EmptyLang!15609) lt!2260732))))

(declare-fun b!5622892 () Bool)

(assert (=> b!5622892 (= e!3466149 (nullable!5641 lt!2260732))))

(declare-fun b!5622893 () Bool)

(assert (=> b!5622893 (= e!3466153 (= (head!11967 s!2326) (c!986617 lt!2260732)))))

(declare-fun b!5622894 () Bool)

(declare-fun res!2381660 () Bool)

(declare-fun e!3466151 () Bool)

(assert (=> b!5622894 (=> res!2381660 e!3466151)))

(assert (=> b!5622894 (= res!2381660 e!3466153)))

(declare-fun res!2381659 () Bool)

(assert (=> b!5622894 (=> (not res!2381659) (not e!3466153))))

(assert (=> b!5622894 (= res!2381659 lt!2260899)))

(declare-fun b!5622895 () Bool)

(declare-fun e!3466152 () Bool)

(assert (=> b!5622895 (= e!3466151 e!3466152)))

(declare-fun res!2381662 () Bool)

(assert (=> b!5622895 (=> (not res!2381662) (not e!3466152))))

(assert (=> b!5622895 (= res!2381662 (not lt!2260899))))

(declare-fun b!5622896 () Bool)

(declare-fun res!2381658 () Bool)

(declare-fun e!3466148 () Bool)

(assert (=> b!5622896 (=> res!2381658 e!3466148)))

(assert (=> b!5622896 (= res!2381658 (not (isEmpty!34833 (tail!11062 s!2326))))))

(declare-fun b!5622897 () Bool)

(assert (=> b!5622897 (= e!3466148 (not (= (head!11967 s!2326) (c!986617 lt!2260732))))))

(declare-fun b!5622898 () Bool)

(declare-fun res!2381663 () Bool)

(assert (=> b!5622898 (=> res!2381663 e!3466151)))

(assert (=> b!5622898 (= res!2381663 (not ((_ is ElementMatch!15609) lt!2260732)))))

(assert (=> b!5622898 (= e!3466150 e!3466151)))

(declare-fun b!5622899 () Bool)

(declare-fun res!2381661 () Bool)

(assert (=> b!5622899 (=> (not res!2381661) (not e!3466153))))

(assert (=> b!5622899 (= res!2381661 (not call!423417))))

(declare-fun b!5622900 () Bool)

(assert (=> b!5622900 (= e!3466147 (= lt!2260899 call!423417))))

(declare-fun b!5622901 () Bool)

(assert (=> b!5622901 (= e!3466152 e!3466148)))

(declare-fun res!2381664 () Bool)

(assert (=> b!5622901 (=> res!2381664 e!3466148)))

(assert (=> b!5622901 (= res!2381664 call!423417)))

(declare-fun b!5622902 () Bool)

(assert (=> b!5622902 (= e!3466150 (not lt!2260899))))

(assert (= (and d!1776626 c!986909) b!5622892))

(assert (= (and d!1776626 (not c!986909)) b!5622889))

(assert (= (and d!1776626 c!986910) b!5622900))

(assert (= (and d!1776626 (not c!986910)) b!5622891))

(assert (= (and b!5622891 c!986911) b!5622902))

(assert (= (and b!5622891 (not c!986911)) b!5622898))

(assert (= (and b!5622898 (not res!2381663)) b!5622894))

(assert (= (and b!5622894 res!2381659) b!5622899))

(assert (= (and b!5622899 res!2381661) b!5622890))

(assert (= (and b!5622890 res!2381657) b!5622893))

(assert (= (and b!5622894 (not res!2381660)) b!5622895))

(assert (= (and b!5622895 res!2381662) b!5622901))

(assert (= (and b!5622901 (not res!2381664)) b!5622896))

(assert (= (and b!5622896 (not res!2381658)) b!5622897))

(assert (= (or b!5622900 b!5622899 b!5622901) bm!423412))

(assert (=> d!1776626 m!6595510))

(assert (=> d!1776626 m!6596120))

(assert (=> b!5622889 m!6595514))

(assert (=> b!5622889 m!6595514))

(declare-fun m!6596130 () Bool)

(assert (=> b!5622889 m!6596130))

(assert (=> b!5622889 m!6595518))

(assert (=> b!5622889 m!6596130))

(assert (=> b!5622889 m!6595518))

(declare-fun m!6596132 () Bool)

(assert (=> b!5622889 m!6596132))

(assert (=> b!5622896 m!6595518))

(assert (=> b!5622896 m!6595518))

(assert (=> b!5622896 m!6595624))

(declare-fun m!6596134 () Bool)

(assert (=> b!5622892 m!6596134))

(assert (=> b!5622890 m!6595518))

(assert (=> b!5622890 m!6595518))

(assert (=> b!5622890 m!6595624))

(assert (=> b!5622893 m!6595514))

(assert (=> bm!423412 m!6595510))

(assert (=> b!5622897 m!6595514))

(assert (=> b!5621920 d!1776626))

(declare-fun bs!1301911 () Bool)

(declare-fun b!5622905 () Bool)

(assert (= bs!1301911 (and b!5622905 b!5622398)))

(declare-fun lambda!301930 () Int)

(assert (=> bs!1301911 (not (= lambda!301930 lambda!301898))))

(declare-fun bs!1301912 () Bool)

(assert (= bs!1301912 (and b!5622905 b!5621913)))

(assert (=> bs!1301912 (not (= lambda!301930 lambda!301858))))

(declare-fun bs!1301913 () Bool)

(assert (= bs!1301913 (and b!5622905 d!1776558)))

(assert (=> bs!1301913 (not (= lambda!301930 lambda!301925))))

(declare-fun bs!1301914 () Bool)

(assert (= bs!1301914 (and b!5622905 d!1776544)))

(assert (=> bs!1301914 (not (= lambda!301930 lambda!301912))))

(declare-fun bs!1301915 () Bool)

(assert (= bs!1301915 (and b!5622905 b!5622390)))

(assert (=> bs!1301915 (= (and (= (reg!15938 lt!2260732) (reg!15938 lt!2260735)) (= lt!2260732 lt!2260735)) (= lambda!301930 lambda!301897))))

(declare-fun bs!1301916 () Bool)

(assert (= bs!1301916 (and b!5622905 b!5622880)))

(assert (=> bs!1301916 (= (and (= (reg!15938 lt!2260732) (reg!15938 lt!2260741)) (= lt!2260732 lt!2260741)) (= lambda!301930 lambda!301928))))

(declare-fun bs!1301917 () Bool)

(assert (= bs!1301917 (and b!5622905 b!5622411)))

(assert (=> bs!1301917 (= (and (= (reg!15938 lt!2260732) (reg!15938 lt!2260765)) (= lt!2260732 lt!2260765)) (= lambda!301930 lambda!301900))))

(declare-fun bs!1301918 () Bool)

(assert (= bs!1301918 (and b!5622905 b!5622740)))

(assert (=> bs!1301918 (not (= lambda!301930 lambda!301927))))

(declare-fun bs!1301919 () Bool)

(assert (= bs!1301919 (and b!5622905 b!5622419)))

(assert (=> bs!1301919 (not (= lambda!301930 lambda!301901))))

(declare-fun bs!1301920 () Bool)

(assert (= bs!1301920 (and b!5622905 b!5622888)))

(assert (=> bs!1301920 (not (= lambda!301930 lambda!301929))))

(assert (=> bs!1301913 (not (= lambda!301930 lambda!301923))))

(assert (=> bs!1301912 (not (= lambda!301930 lambda!301859))))

(declare-fun bs!1301921 () Bool)

(assert (= bs!1301921 (and b!5622905 b!5622732)))

(assert (=> bs!1301921 (= (and (= (reg!15938 lt!2260732) (reg!15938 r!7292)) (= lt!2260732 r!7292)) (= lambda!301930 lambda!301926))))

(assert (=> b!5622905 true))

(assert (=> b!5622905 true))

(declare-fun bs!1301922 () Bool)

(declare-fun b!5622913 () Bool)

(assert (= bs!1301922 (and b!5622913 b!5622398)))

(declare-fun lambda!301931 () Int)

(assert (=> bs!1301922 (= (and (= (regOne!31730 lt!2260732) (regOne!31730 lt!2260735)) (= (regTwo!31730 lt!2260732) (regTwo!31730 lt!2260735))) (= lambda!301931 lambda!301898))))

(declare-fun bs!1301923 () Bool)

(assert (= bs!1301923 (and b!5622913 b!5621913)))

(assert (=> bs!1301923 (not (= lambda!301931 lambda!301858))))

(declare-fun bs!1301924 () Bool)

(assert (= bs!1301924 (and b!5622913 d!1776558)))

(assert (=> bs!1301924 (= (and (= (regOne!31730 lt!2260732) (regOne!31730 r!7292)) (= (regTwo!31730 lt!2260732) (regTwo!31730 r!7292))) (= lambda!301931 lambda!301925))))

(declare-fun bs!1301925 () Bool)

(assert (= bs!1301925 (and b!5622913 b!5622390)))

(assert (=> bs!1301925 (not (= lambda!301931 lambda!301897))))

(declare-fun bs!1301926 () Bool)

(assert (= bs!1301926 (and b!5622913 b!5622880)))

(assert (=> bs!1301926 (not (= lambda!301931 lambda!301928))))

(declare-fun bs!1301927 () Bool)

(assert (= bs!1301927 (and b!5622913 b!5622411)))

(assert (=> bs!1301927 (not (= lambda!301931 lambda!301900))))

(declare-fun bs!1301928 () Bool)

(assert (= bs!1301928 (and b!5622913 b!5622740)))

(assert (=> bs!1301928 (= (and (= (regOne!31730 lt!2260732) (regOne!31730 r!7292)) (= (regTwo!31730 lt!2260732) (regTwo!31730 r!7292))) (= lambda!301931 lambda!301927))))

(declare-fun bs!1301929 () Bool)

(assert (= bs!1301929 (and b!5622913 b!5622419)))

(assert (=> bs!1301929 (= (and (= (regOne!31730 lt!2260732) (regOne!31730 lt!2260765)) (= (regTwo!31730 lt!2260732) (regTwo!31730 lt!2260765))) (= lambda!301931 lambda!301901))))

(declare-fun bs!1301930 () Bool)

(assert (= bs!1301930 (and b!5622913 b!5622888)))

(assert (=> bs!1301930 (= (and (= (regOne!31730 lt!2260732) (regOne!31730 lt!2260741)) (= (regTwo!31730 lt!2260732) (regTwo!31730 lt!2260741))) (= lambda!301931 lambda!301929))))

(assert (=> bs!1301924 (not (= lambda!301931 lambda!301923))))

(declare-fun bs!1301931 () Bool)

(assert (= bs!1301931 (and b!5622913 b!5622905)))

(assert (=> bs!1301931 (not (= lambda!301931 lambda!301930))))

(declare-fun bs!1301932 () Bool)

(assert (= bs!1301932 (and b!5622913 d!1776544)))

(assert (=> bs!1301932 (not (= lambda!301931 lambda!301912))))

(assert (=> bs!1301923 (= (and (= (regOne!31730 lt!2260732) (regOne!31730 r!7292)) (= (regTwo!31730 lt!2260732) (regTwo!31730 r!7292))) (= lambda!301931 lambda!301859))))

(declare-fun bs!1301933 () Bool)

(assert (= bs!1301933 (and b!5622913 b!5622732)))

(assert (=> bs!1301933 (not (= lambda!301931 lambda!301926))))

(assert (=> b!5622913 true))

(assert (=> b!5622913 true))

(declare-fun b!5622903 () Bool)

(declare-fun e!3466159 () Bool)

(declare-fun e!3466156 () Bool)

(assert (=> b!5622903 (= e!3466159 e!3466156)))

(declare-fun c!986915 () Bool)

(assert (=> b!5622903 (= c!986915 ((_ is Star!15609) lt!2260732))))

(declare-fun b!5622904 () Bool)

(declare-fun e!3466158 () Bool)

(declare-fun call!423418 () Bool)

(assert (=> b!5622904 (= e!3466158 call!423418)))

(declare-fun e!3466154 () Bool)

(declare-fun call!423419 () Bool)

(assert (=> b!5622905 (= e!3466154 call!423419)))

(declare-fun b!5622906 () Bool)

(declare-fun e!3466157 () Bool)

(assert (=> b!5622906 (= e!3466157 (= s!2326 (Cons!63003 (c!986617 lt!2260732) Nil!63003)))))

(declare-fun b!5622907 () Bool)

(declare-fun c!986913 () Bool)

(assert (=> b!5622907 (= c!986913 ((_ is ElementMatch!15609) lt!2260732))))

(declare-fun e!3466160 () Bool)

(assert (=> b!5622907 (= e!3466160 e!3466157)))

(declare-fun b!5622908 () Bool)

(assert (=> b!5622908 (= e!3466158 e!3466160)))

(declare-fun res!2381666 () Bool)

(assert (=> b!5622908 (= res!2381666 (not ((_ is EmptyLang!15609) lt!2260732)))))

(assert (=> b!5622908 (=> (not res!2381666) (not e!3466160))))

(declare-fun b!5622909 () Bool)

(declare-fun res!2381665 () Bool)

(assert (=> b!5622909 (=> res!2381665 e!3466154)))

(assert (=> b!5622909 (= res!2381665 call!423418)))

(assert (=> b!5622909 (= e!3466156 e!3466154)))

(declare-fun bm!423413 () Bool)

(assert (=> bm!423413 (= call!423418 (isEmpty!34833 s!2326))))

(declare-fun b!5622911 () Bool)

(declare-fun e!3466155 () Bool)

(assert (=> b!5622911 (= e!3466155 (matchRSpec!2712 (regTwo!31731 lt!2260732) s!2326))))

(declare-fun b!5622912 () Bool)

(declare-fun c!986914 () Bool)

(assert (=> b!5622912 (= c!986914 ((_ is Union!15609) lt!2260732))))

(assert (=> b!5622912 (= e!3466157 e!3466159)))

(assert (=> b!5622913 (= e!3466156 call!423419)))

(declare-fun bm!423414 () Bool)

(assert (=> bm!423414 (= call!423419 (Exists!2709 (ite c!986915 lambda!301930 lambda!301931)))))

(declare-fun d!1776628 () Bool)

(declare-fun c!986912 () Bool)

(assert (=> d!1776628 (= c!986912 ((_ is EmptyExpr!15609) lt!2260732))))

(assert (=> d!1776628 (= (matchRSpec!2712 lt!2260732 s!2326) e!3466158)))

(declare-fun b!5622910 () Bool)

(assert (=> b!5622910 (= e!3466159 e!3466155)))

(declare-fun res!2381667 () Bool)

(assert (=> b!5622910 (= res!2381667 (matchRSpec!2712 (regOne!31731 lt!2260732) s!2326))))

(assert (=> b!5622910 (=> res!2381667 e!3466155)))

(assert (= (and d!1776628 c!986912) b!5622904))

(assert (= (and d!1776628 (not c!986912)) b!5622908))

(assert (= (and b!5622908 res!2381666) b!5622907))

(assert (= (and b!5622907 c!986913) b!5622906))

(assert (= (and b!5622907 (not c!986913)) b!5622912))

(assert (= (and b!5622912 c!986914) b!5622910))

(assert (= (and b!5622912 (not c!986914)) b!5622903))

(assert (= (and b!5622910 (not res!2381667)) b!5622911))

(assert (= (and b!5622903 c!986915) b!5622909))

(assert (= (and b!5622903 (not c!986915)) b!5622913))

(assert (= (and b!5622909 (not res!2381665)) b!5622905))

(assert (= (or b!5622905 b!5622913) bm!423414))

(assert (= (or b!5622904 b!5622909) bm!423413))

(assert (=> bm!423413 m!6595510))

(declare-fun m!6596136 () Bool)

(assert (=> b!5622911 m!6596136))

(declare-fun m!6596138 () Bool)

(assert (=> bm!423414 m!6596138))

(declare-fun m!6596140 () Bool)

(assert (=> b!5622910 m!6596140))

(assert (=> b!5621920 d!1776628))

(declare-fun d!1776630 () Bool)

(assert (=> d!1776630 (= (isEmpty!34830 (t!376416 (exprs!5493 (h!69452 zl!343)))) ((_ is Nil!63002) (t!376416 (exprs!5493 (h!69452 zl!343)))))))

(assert (=> b!5621900 d!1776630))

(declare-fun bs!1301934 () Bool)

(declare-fun d!1776632 () Bool)

(assert (= bs!1301934 (and d!1776632 d!1776428)))

(declare-fun lambda!301934 () Int)

(assert (=> bs!1301934 (= lambda!301934 lambda!301880)))

(declare-fun bs!1301935 () Bool)

(assert (= bs!1301935 (and d!1776632 d!1776370)))

(assert (=> bs!1301935 (= lambda!301934 lambda!301875)))

(declare-fun bs!1301936 () Bool)

(assert (= bs!1301936 (and d!1776632 d!1776462)))

(assert (=> bs!1301936 (= lambda!301934 lambda!301899)))

(declare-fun bs!1301937 () Bool)

(assert (= bs!1301937 (and d!1776632 d!1776420)))

(assert (=> bs!1301937 (= lambda!301934 lambda!301879)))

(declare-fun bs!1301938 () Bool)

(assert (= bs!1301938 (and d!1776632 d!1776472)))

(assert (=> bs!1301938 (= lambda!301934 lambda!301902)))

(declare-fun b!5622934 () Bool)

(declare-fun e!3466175 () Bool)

(declare-fun lt!2260902 () Regex!15609)

(declare-fun isUnion!593 (Regex!15609) Bool)

(assert (=> b!5622934 (= e!3466175 (isUnion!593 lt!2260902))))

(declare-fun b!5622935 () Bool)

(declare-fun e!3466174 () Regex!15609)

(declare-fun e!3466177 () Regex!15609)

(assert (=> b!5622935 (= e!3466174 e!3466177)))

(declare-fun c!986927 () Bool)

(assert (=> b!5622935 (= c!986927 ((_ is Cons!63002) (unfocusZipperList!1037 zl!343)))))

(declare-fun b!5622936 () Bool)

(assert (=> b!5622936 (= e!3466175 (= lt!2260902 (head!11968 (unfocusZipperList!1037 zl!343))))))

(declare-fun b!5622937 () Bool)

(declare-fun e!3466173 () Bool)

(declare-fun e!3466178 () Bool)

(assert (=> b!5622937 (= e!3466173 e!3466178)))

(declare-fun c!986925 () Bool)

(assert (=> b!5622937 (= c!986925 (isEmpty!34830 (unfocusZipperList!1037 zl!343)))))

(declare-fun b!5622938 () Bool)

(assert (=> b!5622938 (= e!3466177 (Union!15609 (h!69450 (unfocusZipperList!1037 zl!343)) (generalisedUnion!1472 (t!376416 (unfocusZipperList!1037 zl!343)))))))

(declare-fun b!5622939 () Bool)

(declare-fun e!3466176 () Bool)

(assert (=> b!5622939 (= e!3466176 (isEmpty!34830 (t!376416 (unfocusZipperList!1037 zl!343))))))

(assert (=> d!1776632 e!3466173))

(declare-fun res!2381672 () Bool)

(assert (=> d!1776632 (=> (not res!2381672) (not e!3466173))))

(assert (=> d!1776632 (= res!2381672 (validRegex!7345 lt!2260902))))

(assert (=> d!1776632 (= lt!2260902 e!3466174)))

(declare-fun c!986926 () Bool)

(assert (=> d!1776632 (= c!986926 e!3466176)))

(declare-fun res!2381673 () Bool)

(assert (=> d!1776632 (=> (not res!2381673) (not e!3466176))))

(assert (=> d!1776632 (= res!2381673 ((_ is Cons!63002) (unfocusZipperList!1037 zl!343)))))

(assert (=> d!1776632 (forall!14766 (unfocusZipperList!1037 zl!343) lambda!301934)))

(assert (=> d!1776632 (= (generalisedUnion!1472 (unfocusZipperList!1037 zl!343)) lt!2260902)))

(declare-fun b!5622940 () Bool)

(declare-fun isEmptyLang!1163 (Regex!15609) Bool)

(assert (=> b!5622940 (= e!3466178 (isEmptyLang!1163 lt!2260902))))

(declare-fun b!5622941 () Bool)

(assert (=> b!5622941 (= e!3466174 (h!69450 (unfocusZipperList!1037 zl!343)))))

(declare-fun b!5622942 () Bool)

(assert (=> b!5622942 (= e!3466177 EmptyLang!15609)))

(declare-fun b!5622943 () Bool)

(assert (=> b!5622943 (= e!3466178 e!3466175)))

(declare-fun c!986924 () Bool)

(assert (=> b!5622943 (= c!986924 (isEmpty!34830 (tail!11063 (unfocusZipperList!1037 zl!343))))))

(assert (= (and d!1776632 res!2381673) b!5622939))

(assert (= (and d!1776632 c!986926) b!5622941))

(assert (= (and d!1776632 (not c!986926)) b!5622935))

(assert (= (and b!5622935 c!986927) b!5622938))

(assert (= (and b!5622935 (not c!986927)) b!5622942))

(assert (= (and d!1776632 res!2381672) b!5622937))

(assert (= (and b!5622937 c!986925) b!5622940))

(assert (= (and b!5622937 (not c!986925)) b!5622943))

(assert (= (and b!5622943 c!986924) b!5622936))

(assert (= (and b!5622943 (not c!986924)) b!5622934))

(declare-fun m!6596142 () Bool)

(assert (=> b!5622934 m!6596142))

(declare-fun m!6596144 () Bool)

(assert (=> b!5622938 m!6596144))

(assert (=> b!5622936 m!6595312))

(declare-fun m!6596146 () Bool)

(assert (=> b!5622936 m!6596146))

(declare-fun m!6596148 () Bool)

(assert (=> b!5622940 m!6596148))

(assert (=> b!5622943 m!6595312))

(declare-fun m!6596150 () Bool)

(assert (=> b!5622943 m!6596150))

(assert (=> b!5622943 m!6596150))

(declare-fun m!6596152 () Bool)

(assert (=> b!5622943 m!6596152))

(declare-fun m!6596154 () Bool)

(assert (=> b!5622939 m!6596154))

(assert (=> b!5622937 m!6595312))

(declare-fun m!6596156 () Bool)

(assert (=> b!5622937 m!6596156))

(declare-fun m!6596158 () Bool)

(assert (=> d!1776632 m!6596158))

(assert (=> d!1776632 m!6595312))

(declare-fun m!6596160 () Bool)

(assert (=> d!1776632 m!6596160))

(assert (=> b!5621898 d!1776632))

(declare-fun bs!1301939 () Bool)

(declare-fun d!1776634 () Bool)

(assert (= bs!1301939 (and d!1776634 d!1776428)))

(declare-fun lambda!301937 () Int)

(assert (=> bs!1301939 (= lambda!301937 lambda!301880)))

(declare-fun bs!1301940 () Bool)

(assert (= bs!1301940 (and d!1776634 d!1776370)))

(assert (=> bs!1301940 (= lambda!301937 lambda!301875)))

(declare-fun bs!1301941 () Bool)

(assert (= bs!1301941 (and d!1776634 d!1776632)))

(assert (=> bs!1301941 (= lambda!301937 lambda!301934)))

(declare-fun bs!1301942 () Bool)

(assert (= bs!1301942 (and d!1776634 d!1776462)))

(assert (=> bs!1301942 (= lambda!301937 lambda!301899)))

(declare-fun bs!1301943 () Bool)

(assert (= bs!1301943 (and d!1776634 d!1776420)))

(assert (=> bs!1301943 (= lambda!301937 lambda!301879)))

(declare-fun bs!1301944 () Bool)

(assert (= bs!1301944 (and d!1776634 d!1776472)))

(assert (=> bs!1301944 (= lambda!301937 lambda!301902)))

(declare-fun lt!2260905 () List!63126)

(assert (=> d!1776634 (forall!14766 lt!2260905 lambda!301937)))

(declare-fun e!3466181 () List!63126)

(assert (=> d!1776634 (= lt!2260905 e!3466181)))

(declare-fun c!986930 () Bool)

(assert (=> d!1776634 (= c!986930 ((_ is Cons!63004) zl!343))))

(assert (=> d!1776634 (= (unfocusZipperList!1037 zl!343) lt!2260905)))

(declare-fun b!5622948 () Bool)

(assert (=> b!5622948 (= e!3466181 (Cons!63002 (generalisedConcat!1224 (exprs!5493 (h!69452 zl!343))) (unfocusZipperList!1037 (t!376418 zl!343))))))

(declare-fun b!5622949 () Bool)

(assert (=> b!5622949 (= e!3466181 Nil!63002)))

(assert (= (and d!1776634 c!986930) b!5622948))

(assert (= (and d!1776634 (not c!986930)) b!5622949))

(declare-fun m!6596162 () Bool)

(assert (=> d!1776634 m!6596162))

(assert (=> b!5622948 m!6595304))

(declare-fun m!6596164 () Bool)

(assert (=> b!5622948 m!6596164))

(assert (=> b!5621898 d!1776634))

(declare-fun bs!1301945 () Bool)

(declare-fun d!1776636 () Bool)

(assert (= bs!1301945 (and d!1776636 d!1776428)))

(declare-fun lambda!301938 () Int)

(assert (=> bs!1301945 (= lambda!301938 lambda!301880)))

(declare-fun bs!1301946 () Bool)

(assert (= bs!1301946 (and d!1776636 d!1776370)))

(assert (=> bs!1301946 (= lambda!301938 lambda!301875)))

(declare-fun bs!1301947 () Bool)

(assert (= bs!1301947 (and d!1776636 d!1776632)))

(assert (=> bs!1301947 (= lambda!301938 lambda!301934)))

(declare-fun bs!1301948 () Bool)

(assert (= bs!1301948 (and d!1776636 d!1776462)))

(assert (=> bs!1301948 (= lambda!301938 lambda!301899)))

(declare-fun bs!1301949 () Bool)

(assert (= bs!1301949 (and d!1776636 d!1776472)))

(assert (=> bs!1301949 (= lambda!301938 lambda!301902)))

(declare-fun bs!1301950 () Bool)

(assert (= bs!1301950 (and d!1776636 d!1776420)))

(assert (=> bs!1301950 (= lambda!301938 lambda!301879)))

(declare-fun bs!1301951 () Bool)

(assert (= bs!1301951 (and d!1776636 d!1776634)))

(assert (=> bs!1301951 (= lambda!301938 lambda!301937)))

(assert (=> d!1776636 (= (inv!82269 setElem!37514) (forall!14766 (exprs!5493 setElem!37514) lambda!301938))))

(declare-fun bs!1301952 () Bool)

(assert (= bs!1301952 d!1776636))

(declare-fun m!6596166 () Bool)

(assert (=> bs!1301952 m!6596166))

(assert (=> setNonEmpty!37514 d!1776636))

(declare-fun e!3466182 () Bool)

(declare-fun d!1776638 () Bool)

(assert (=> d!1776638 (= (matchZipper!1747 ((_ map or) lt!2260759 lt!2260739) (t!376417 s!2326)) e!3466182)))

(declare-fun res!2381674 () Bool)

(assert (=> d!1776638 (=> res!2381674 e!3466182)))

(assert (=> d!1776638 (= res!2381674 (matchZipper!1747 lt!2260759 (t!376417 s!2326)))))

(declare-fun lt!2260906 () Unit!155964)

(assert (=> d!1776638 (= lt!2260906 (choose!42587 lt!2260759 lt!2260739 (t!376417 s!2326)))))

(assert (=> d!1776638 (= (lemmaZipperConcatMatchesSameAsBothZippers!634 lt!2260759 lt!2260739 (t!376417 s!2326)) lt!2260906)))

(declare-fun b!5622950 () Bool)

(assert (=> b!5622950 (= e!3466182 (matchZipper!1747 lt!2260739 (t!376417 s!2326)))))

(assert (= (and d!1776638 (not res!2381674)) b!5622950))

(assert (=> d!1776638 m!6595172))

(assert (=> d!1776638 m!6595170))

(declare-fun m!6596168 () Bool)

(assert (=> d!1776638 m!6596168))

(assert (=> b!5622950 m!6595238))

(assert (=> b!5621899 d!1776638))

(assert (=> b!5621899 d!1776432))

(declare-fun d!1776640 () Bool)

(declare-fun c!986931 () Bool)

(assert (=> d!1776640 (= c!986931 (isEmpty!34833 (t!376417 s!2326)))))

(declare-fun e!3466183 () Bool)

(assert (=> d!1776640 (= (matchZipper!1747 ((_ map or) lt!2260759 lt!2260739) (t!376417 s!2326)) e!3466183)))

(declare-fun b!5622951 () Bool)

(assert (=> b!5622951 (= e!3466183 (nullableZipper!1594 ((_ map or) lt!2260759 lt!2260739)))))

(declare-fun b!5622952 () Bool)

(assert (=> b!5622952 (= e!3466183 (matchZipper!1747 (derivationStepZipper!1698 ((_ map or) lt!2260759 lt!2260739) (head!11967 (t!376417 s!2326))) (tail!11062 (t!376417 s!2326))))))

(assert (= (and d!1776640 c!986931) b!5622951))

(assert (= (and d!1776640 (not c!986931)) b!5622952))

(assert (=> d!1776640 m!6595598))

(declare-fun m!6596170 () Bool)

(assert (=> b!5622951 m!6596170))

(assert (=> b!5622952 m!6595602))

(assert (=> b!5622952 m!6595602))

(declare-fun m!6596172 () Bool)

(assert (=> b!5622952 m!6596172))

(assert (=> b!5622952 m!6595606))

(assert (=> b!5622952 m!6596172))

(assert (=> b!5622952 m!6595606))

(declare-fun m!6596174 () Bool)

(assert (=> b!5622952 m!6596174))

(assert (=> b!5621899 d!1776640))

(declare-fun b!5622957 () Bool)

(declare-fun e!3466186 () Bool)

(declare-fun tp!1556926 () Bool)

(declare-fun tp!1556927 () Bool)

(assert (=> b!5622957 (= e!3466186 (and tp!1556926 tp!1556927))))

(assert (=> b!5621908 (= tp!1556863 e!3466186)))

(assert (= (and b!5621908 ((_ is Cons!63002) (exprs!5493 (h!69452 zl!343)))) b!5622957))

(declare-fun b!5622971 () Bool)

(declare-fun e!3466189 () Bool)

(declare-fun tp!1556942 () Bool)

(declare-fun tp!1556940 () Bool)

(assert (=> b!5622971 (= e!3466189 (and tp!1556942 tp!1556940))))

(assert (=> b!5621892 (= tp!1556861 e!3466189)))

(declare-fun b!5622969 () Bool)

(declare-fun tp!1556938 () Bool)

(declare-fun tp!1556941 () Bool)

(assert (=> b!5622969 (= e!3466189 (and tp!1556938 tp!1556941))))

(declare-fun b!5622968 () Bool)

(assert (=> b!5622968 (= e!3466189 tp_is_empty!40471)))

(declare-fun b!5622970 () Bool)

(declare-fun tp!1556939 () Bool)

(assert (=> b!5622970 (= e!3466189 tp!1556939)))

(assert (= (and b!5621892 ((_ is ElementMatch!15609) (regOne!31731 r!7292))) b!5622968))

(assert (= (and b!5621892 ((_ is Concat!24454) (regOne!31731 r!7292))) b!5622969))

(assert (= (and b!5621892 ((_ is Star!15609) (regOne!31731 r!7292))) b!5622970))

(assert (= (and b!5621892 ((_ is Union!15609) (regOne!31731 r!7292))) b!5622971))

(declare-fun b!5622975 () Bool)

(declare-fun e!3466190 () Bool)

(declare-fun tp!1556947 () Bool)

(declare-fun tp!1556945 () Bool)

(assert (=> b!5622975 (= e!3466190 (and tp!1556947 tp!1556945))))

(assert (=> b!5621892 (= tp!1556857 e!3466190)))

(declare-fun b!5622973 () Bool)

(declare-fun tp!1556943 () Bool)

(declare-fun tp!1556946 () Bool)

(assert (=> b!5622973 (= e!3466190 (and tp!1556943 tp!1556946))))

(declare-fun b!5622972 () Bool)

(assert (=> b!5622972 (= e!3466190 tp_is_empty!40471)))

(declare-fun b!5622974 () Bool)

(declare-fun tp!1556944 () Bool)

(assert (=> b!5622974 (= e!3466190 tp!1556944)))

(assert (= (and b!5621892 ((_ is ElementMatch!15609) (regTwo!31731 r!7292))) b!5622972))

(assert (= (and b!5621892 ((_ is Concat!24454) (regTwo!31731 r!7292))) b!5622973))

(assert (= (and b!5621892 ((_ is Star!15609) (regTwo!31731 r!7292))) b!5622974))

(assert (= (and b!5621892 ((_ is Union!15609) (regTwo!31731 r!7292))) b!5622975))

(declare-fun b!5622980 () Bool)

(declare-fun e!3466193 () Bool)

(declare-fun tp!1556950 () Bool)

(assert (=> b!5622980 (= e!3466193 (and tp_is_empty!40471 tp!1556950))))

(assert (=> b!5621903 (= tp!1556854 e!3466193)))

(assert (= (and b!5621903 ((_ is Cons!63003) (t!376417 s!2326))) b!5622980))

(declare-fun b!5622984 () Bool)

(declare-fun e!3466194 () Bool)

(declare-fun tp!1556955 () Bool)

(declare-fun tp!1556953 () Bool)

(assert (=> b!5622984 (= e!3466194 (and tp!1556955 tp!1556953))))

(assert (=> b!5621921 (= tp!1556856 e!3466194)))

(declare-fun b!5622982 () Bool)

(declare-fun tp!1556951 () Bool)

(declare-fun tp!1556954 () Bool)

(assert (=> b!5622982 (= e!3466194 (and tp!1556951 tp!1556954))))

(declare-fun b!5622981 () Bool)

(assert (=> b!5622981 (= e!3466194 tp_is_empty!40471)))

(declare-fun b!5622983 () Bool)

(declare-fun tp!1556952 () Bool)

(assert (=> b!5622983 (= e!3466194 tp!1556952)))

(assert (= (and b!5621921 ((_ is ElementMatch!15609) (regOne!31730 r!7292))) b!5622981))

(assert (= (and b!5621921 ((_ is Concat!24454) (regOne!31730 r!7292))) b!5622982))

(assert (= (and b!5621921 ((_ is Star!15609) (regOne!31730 r!7292))) b!5622983))

(assert (= (and b!5621921 ((_ is Union!15609) (regOne!31730 r!7292))) b!5622984))

(declare-fun b!5622988 () Bool)

(declare-fun e!3466195 () Bool)

(declare-fun tp!1556960 () Bool)

(declare-fun tp!1556958 () Bool)

(assert (=> b!5622988 (= e!3466195 (and tp!1556960 tp!1556958))))

(assert (=> b!5621921 (= tp!1556855 e!3466195)))

(declare-fun b!5622986 () Bool)

(declare-fun tp!1556956 () Bool)

(declare-fun tp!1556959 () Bool)

(assert (=> b!5622986 (= e!3466195 (and tp!1556956 tp!1556959))))

(declare-fun b!5622985 () Bool)

(assert (=> b!5622985 (= e!3466195 tp_is_empty!40471)))

(declare-fun b!5622987 () Bool)

(declare-fun tp!1556957 () Bool)

(assert (=> b!5622987 (= e!3466195 tp!1556957)))

(assert (= (and b!5621921 ((_ is ElementMatch!15609) (regTwo!31730 r!7292))) b!5622985))

(assert (= (and b!5621921 ((_ is Concat!24454) (regTwo!31730 r!7292))) b!5622986))

(assert (= (and b!5621921 ((_ is Star!15609) (regTwo!31730 r!7292))) b!5622987))

(assert (= (and b!5621921 ((_ is Union!15609) (regTwo!31730 r!7292))) b!5622988))

(declare-fun b!5622996 () Bool)

(declare-fun e!3466201 () Bool)

(declare-fun tp!1556965 () Bool)

(assert (=> b!5622996 (= e!3466201 tp!1556965)))

(declare-fun b!5622995 () Bool)

(declare-fun tp!1556966 () Bool)

(declare-fun e!3466200 () Bool)

(assert (=> b!5622995 (= e!3466200 (and (inv!82269 (h!69452 (t!376418 zl!343))) e!3466201 tp!1556966))))

(assert (=> b!5621901 (= tp!1556858 e!3466200)))

(assert (= b!5622995 b!5622996))

(assert (= (and b!5621901 ((_ is Cons!63004) (t!376418 zl!343))) b!5622995))

(declare-fun m!6596176 () Bool)

(assert (=> b!5622995 m!6596176))

(declare-fun b!5622997 () Bool)

(declare-fun e!3466202 () Bool)

(declare-fun tp!1556967 () Bool)

(declare-fun tp!1556968 () Bool)

(assert (=> b!5622997 (= e!3466202 (and tp!1556967 tp!1556968))))

(assert (=> b!5621925 (= tp!1556862 e!3466202)))

(assert (= (and b!5621925 ((_ is Cons!63002) (exprs!5493 setElem!37514))) b!5622997))

(declare-fun b!5623001 () Bool)

(declare-fun e!3466203 () Bool)

(declare-fun tp!1556973 () Bool)

(declare-fun tp!1556971 () Bool)

(assert (=> b!5623001 (= e!3466203 (and tp!1556973 tp!1556971))))

(assert (=> b!5621911 (= tp!1556860 e!3466203)))

(declare-fun b!5622999 () Bool)

(declare-fun tp!1556969 () Bool)

(declare-fun tp!1556972 () Bool)

(assert (=> b!5622999 (= e!3466203 (and tp!1556969 tp!1556972))))

(declare-fun b!5622998 () Bool)

(assert (=> b!5622998 (= e!3466203 tp_is_empty!40471)))

(declare-fun b!5623000 () Bool)

(declare-fun tp!1556970 () Bool)

(assert (=> b!5623000 (= e!3466203 tp!1556970)))

(assert (= (and b!5621911 ((_ is ElementMatch!15609) (reg!15938 r!7292))) b!5622998))

(assert (= (and b!5621911 ((_ is Concat!24454) (reg!15938 r!7292))) b!5622999))

(assert (= (and b!5621911 ((_ is Star!15609) (reg!15938 r!7292))) b!5623000))

(assert (= (and b!5621911 ((_ is Union!15609) (reg!15938 r!7292))) b!5623001))

(declare-fun condSetEmpty!37520 () Bool)

(assert (=> setNonEmpty!37514 (= condSetEmpty!37520 (= setRest!37514 ((as const (Array Context!9986 Bool)) false)))))

(declare-fun setRes!37520 () Bool)

(assert (=> setNonEmpty!37514 (= tp!1556859 setRes!37520)))

(declare-fun setIsEmpty!37520 () Bool)

(assert (=> setIsEmpty!37520 setRes!37520))

(declare-fun e!3466206 () Bool)

(declare-fun setNonEmpty!37520 () Bool)

(declare-fun setElem!37520 () Context!9986)

(declare-fun tp!1556978 () Bool)

(assert (=> setNonEmpty!37520 (= setRes!37520 (and tp!1556978 (inv!82269 setElem!37520) e!3466206))))

(declare-fun setRest!37520 () (InoxSet Context!9986))

(assert (=> setNonEmpty!37520 (= setRest!37514 ((_ map or) (store ((as const (Array Context!9986 Bool)) false) setElem!37520 true) setRest!37520))))

(declare-fun b!5623006 () Bool)

(declare-fun tp!1556979 () Bool)

(assert (=> b!5623006 (= e!3466206 tp!1556979)))

(assert (= (and setNonEmpty!37514 condSetEmpty!37520) setIsEmpty!37520))

(assert (= (and setNonEmpty!37514 (not condSetEmpty!37520)) setNonEmpty!37520))

(assert (= setNonEmpty!37520 b!5623006))

(declare-fun m!6596178 () Bool)

(assert (=> setNonEmpty!37520 m!6596178))

(declare-fun b_lambda!212733 () Bool)

(assert (= b_lambda!212717 (or b!5621919 b_lambda!212733)))

(declare-fun bs!1301953 () Bool)

(declare-fun d!1776642 () Bool)

(assert (= bs!1301953 (and d!1776642 b!5621919)))

(assert (=> bs!1301953 (= (dynLambda!24637 lambda!301860 lt!2260719) (derivationStepZipperUp!877 lt!2260719 (h!69451 s!2326)))))

(assert (=> bs!1301953 m!6595204))

(assert (=> d!1776396 d!1776642))

(declare-fun b_lambda!212735 () Bool)

(assert (= b_lambda!212715 (or b!5621919 b_lambda!212735)))

(declare-fun bs!1301954 () Bool)

(declare-fun d!1776644 () Bool)

(assert (= bs!1301954 (and d!1776644 b!5621919)))

(assert (=> bs!1301954 (= (dynLambda!24637 lambda!301860 lt!2260758) (derivationStepZipperUp!877 lt!2260758 (h!69451 s!2326)))))

(assert (=> bs!1301954 m!6595190))

(assert (=> d!1776380 d!1776644))

(declare-fun b_lambda!212737 () Bool)

(assert (= b_lambda!212731 (or b!5621919 b_lambda!212737)))

(declare-fun bs!1301955 () Bool)

(declare-fun d!1776646 () Bool)

(assert (= bs!1301955 (and d!1776646 b!5621919)))

(assert (=> bs!1301955 (= (dynLambda!24637 lambda!301860 (h!69452 zl!343)) (derivationStepZipperUp!877 (h!69452 zl!343) (h!69451 s!2326)))))

(assert (=> bs!1301955 m!6595214))

(assert (=> d!1776600 d!1776646))

(check-sat (not b!5622155) (not b!5622200) (not b!5622938) (not b_lambda!212735) (not bs!1301954) (not d!1776430) (not b!5622971) (not b!5622889) (not b!5622505) (not b!5622982) (not b!5622154) (not b!5622829) (not b!5622893) (not b!5622405) (not bm!423412) (not b!5622611) (not d!1776436) (not b!5622265) (not bm!423343) (not b!5622317) (not b!5622446) (not b!5622896) (not b!5622983) (not b!5622615) (not b!5622776) (not b!5622890) (not d!1776434) (not bm!423310) (not b!5622833) (not b!5622056) (not b!5622474) (not d!1776490) (not b!5622886) (not d!1776474) (not d!1776578) (not d!1776494) (not b!5622453) (not d!1776428) (not b!5622269) (not d!1776472) (not d!1776638) (not b!5622951) (not b!5622447) (not bm!423375) (not b!5622997) (not d!1776600) (not b!5622950) (not d!1776576) (not b!5622417) (not bm!423389) (not bm!423409) (not bm!423293) (not b!5622790) (not bm!423374) (not b!5622864) (not bs!1301955) (not b!5622408) (not b!5622867) (not b!5622999) (not bm!423411) (not b!5622940) (not b!5622892) (not b!5622321) (not b!5622865) (not d!1776498) (not b!5622612) (not b!5622792) (not setNonEmpty!37520) (not bm!423395) (not b!5622948) (not d!1776626) (not b!5622995) (not b!5622260) (not b!5622988) (not d!1776544) (not d!1776470) (not b!5622199) (not d!1776588) (not d!1776398) (not d!1776598) (not b!5622266) (not b!5622783) (not b!5622400) (not b!5622270) (not b!5622271) (not bm!423376) (not b!5622403) (not b!5622450) (not b!5622737) (not d!1776416) (not bm!423408) (not b!5623001) (not b!5622973) (not b!5622451) (not bm!423327) (not b!5622974) (not b_lambda!212733) (not b!5622318) (not b!5622261) (not b!5622404) (not d!1776542) (not d!1776418) (not b!5622506) (not b!5622264) (not b!5622937) (not bm!423328) (not b!5622322) (not bs!1301953) (not bm!423403) (not b!5622272) (not bm!423404) (not b!5622493) (not d!1776640) (not b!5622479) (not b_lambda!212737) (not b!5622255) (not b!5622507) (not d!1776420) (not b!5622789) (not b!5622470) (not bm!423413) (not b!5622910) (not b!5622861) (not bm!423329) (not b!5622868) (not bm!423394) (not d!1776632) (not b!5622939) (not b!5622455) (not b!5622838) (not b!5622779) (not b!5622395) (not d!1776480) (not b!5622475) (not b!5622986) (not b!5622952) (not b!5622738) (not b!5622609) (not b!5622452) (not d!1776482) (not bm!423294) (not b!5622268) (not b!5622975) (not b!5623006) (not b!5622477) (not d!1776468) (not d!1776616) tp_is_empty!40471 (not b!5622254) (not d!1776558) (not b!5622936) (not b!5622778) (not b!5622872) (not d!1776396) (not d!1776608) (not d!1776378) (not b!5622478) (not b!5622202) (not b!5622794) (not b!5622614) (not b!5622510) (not d!1776540) (not b!5622201) (not b!5622608) (not d!1776618) (not bm!423311) (not b!5622258) (not b!5622969) (not bm!423414) (not d!1776394) (not d!1776492) (not b!5622476) (not b!5622775) (not d!1776370) (not b!5622984) (not d!1776462) (not b!5622448) (not b!5622791) (not d!1776636) (not b!5622460) (not bm!423330) (not b!5622996) (not b!5622416) (not d!1776620) (not b!5622314) (not b!5623000) (not b!5622943) (not b!5622459) (not b!5622472) (not b!5622970) (not d!1776590) (not b!5622159) (not b!5622273) (not b!5622251) (not b!5622443) (not b!5622511) (not d!1776380) (not d!1776432) (not b!5622160) (not b!5622456) (not d!1776594) (not bm!423396) (not b!5622934) (not bm!423402) (not b!5622911) (not bm!423410) (not d!1776376) (not b!5622512) (not b!5622782) (not d!1776496) (not b!5622396) (not d!1776486) (not bm!423373) (not b!5622250) (not b!5622259) (not d!1776634) (not b!5622980) (not b!5622987) (not b!5622315) (not b!5622256) (not b!5622832) (not bm!423390) (not b!5622837) (not b!5622795) (not d!1776592) (not bm!423398) (not d!1776622) (not b!5622957) (not b!5622850) (not bm!423397) (not b!5622897) (not d!1776484) (not b!5622407) (not b!5622442) (not b!5622399) (not d!1776466) (not b!5622885) (not bm!423317) (not b!5622871))
(check-sat)
