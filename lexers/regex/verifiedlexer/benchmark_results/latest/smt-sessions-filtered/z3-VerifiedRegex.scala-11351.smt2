; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601192 () Bool)

(assert start!601192)

(declare-fun b!5909491 () Bool)

(assert (=> b!5909491 true))

(declare-fun b!5909487 () Bool)

(declare-fun e!3618829 () Bool)

(declare-fun e!3618837 () Bool)

(assert (=> b!5909487 (= e!3618829 e!3618837)))

(declare-fun res!2477949 () Bool)

(assert (=> b!5909487 (=> res!2477949 e!3618837)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32168 0))(
  ( (C!32169 (val!25786 Int)) )
))
(declare-datatypes ((Regex!15949 0))(
  ( (ElementMatch!15949 (c!1050235 C!32168)) (Concat!24794 (regOne!32410 Regex!15949) (regTwo!32410 Regex!15949)) (EmptyExpr!15949) (Star!15949 (reg!16278 Regex!15949)) (EmptyLang!15949) (Union!15949 (regOne!32411 Regex!15949) (regTwo!32411 Regex!15949)) )
))
(declare-datatypes ((List!64146 0))(
  ( (Nil!64022) (Cons!64022 (h!70470 Regex!15949) (t!377535 List!64146)) )
))
(declare-datatypes ((Context!10666 0))(
  ( (Context!10667 (exprs!5833 List!64146)) )
))
(declare-fun lt!2308877 () (InoxSet Context!10666))

(declare-fun lt!2308874 () (InoxSet Context!10666))

(assert (=> b!5909487 (= res!2477949 (not (= lt!2308877 lt!2308874)))))

(declare-fun r!7292 () Regex!15949)

(declare-datatypes ((List!64147 0))(
  ( (Nil!64023) (Cons!64023 (h!70471 C!32168) (t!377536 List!64147)) )
))
(declare-fun s!2326 () List!64147)

(declare-fun lt!2308894 () Context!10666)

(declare-fun derivationStepZipperDown!1215 (Regex!15949 Context!10666 C!32168) (InoxSet Context!10666))

(assert (=> b!5909487 (= lt!2308874 (derivationStepZipperDown!1215 r!7292 lt!2308894 (h!70471 s!2326)))))

(assert (=> b!5909487 (= lt!2308894 (Context!10667 Nil!64022))))

(declare-fun derivationStepZipperUp!1141 (Context!10666 C!32168) (InoxSet Context!10666))

(assert (=> b!5909487 (= lt!2308877 (derivationStepZipperUp!1141 (Context!10667 (Cons!64022 r!7292 Nil!64022)) (h!70471 s!2326)))))

(declare-fun b!5909488 () Bool)

(declare-fun res!2477942 () Bool)

(declare-fun e!3618841 () Bool)

(assert (=> b!5909488 (=> res!2477942 e!3618841)))

(declare-datatypes ((List!64148 0))(
  ( (Nil!64024) (Cons!64024 (h!70472 Context!10666) (t!377537 List!64148)) )
))
(declare-fun zl!343 () List!64148)

(declare-fun generalisedUnion!1793 (List!64146) Regex!15949)

(declare-fun unfocusZipperList!1370 (List!64148) List!64146)

(assert (=> b!5909488 (= res!2477942 (not (= r!7292 (generalisedUnion!1793 (unfocusZipperList!1370 zl!343)))))))

(declare-fun b!5909489 () Bool)

(declare-fun res!2477941 () Bool)

(assert (=> b!5909489 (=> res!2477941 e!3618841)))

(declare-fun generalisedConcat!1546 (List!64146) Regex!15949)

(assert (=> b!5909489 (= res!2477941 (not (= r!7292 (generalisedConcat!1546 (exprs!5833 (h!70472 zl!343))))))))

(declare-fun b!5909490 () Bool)

(declare-fun e!3618830 () Bool)

(declare-fun tp_is_empty!41151 () Bool)

(declare-fun tp!1641830 () Bool)

(assert (=> b!5909490 (= e!3618830 (and tp_is_empty!41151 tp!1641830))))

(declare-fun e!3618840 () Bool)

(declare-fun e!3618832 () Bool)

(assert (=> b!5909491 (= e!3618840 e!3618832)))

(declare-fun res!2477935 () Bool)

(assert (=> b!5909491 (=> res!2477935 e!3618832)))

(declare-fun lt!2308869 () (InoxSet Context!10666))

(declare-fun z!1189 () (InoxSet Context!10666))

(declare-fun derivationStepZipper!1948 ((InoxSet Context!10666) C!32168) (InoxSet Context!10666))

(assert (=> b!5909491 (= res!2477935 (not (= (derivationStepZipper!1948 z!1189 (h!70471 s!2326)) lt!2308869)))))

(declare-fun lambda!322278 () Int)

(declare-fun flatMap!1480 ((InoxSet Context!10666) Int) (InoxSet Context!10666))

(assert (=> b!5909491 (= (flatMap!1480 z!1189 lambda!322278) (derivationStepZipperUp!1141 (h!70472 zl!343) (h!70471 s!2326)))))

(declare-datatypes ((Unit!157169 0))(
  ( (Unit!157170) )
))
(declare-fun lt!2308878 () Unit!157169)

(declare-fun lemmaFlatMapOnSingletonSet!1008 ((InoxSet Context!10666) Context!10666 Int) Unit!157169)

(assert (=> b!5909491 (= lt!2308878 (lemmaFlatMapOnSingletonSet!1008 z!1189 (h!70472 zl!343) lambda!322278))))

(declare-fun b!5909492 () Bool)

(declare-fun e!3618825 () Bool)

(assert (=> b!5909492 (= e!3618832 e!3618825)))

(declare-fun res!2477948 () Bool)

(assert (=> b!5909492 (=> res!2477948 e!3618825)))

(declare-fun lt!2308875 () Bool)

(declare-fun lt!2308887 () Bool)

(assert (=> b!5909492 (= res!2477948 (not (= lt!2308875 lt!2308887)))))

(declare-fun matchZipper!2015 ((InoxSet Context!10666) List!64147) Bool)

(assert (=> b!5909492 (= lt!2308887 (matchZipper!2015 z!1189 s!2326))))

(assert (=> b!5909492 (= lt!2308875 (matchZipper!2015 lt!2308869 (t!377536 s!2326)))))

(declare-fun b!5909493 () Bool)

(declare-fun e!3618826 () Bool)

(declare-fun tp!1641834 () Bool)

(assert (=> b!5909493 (= e!3618826 tp!1641834)))

(declare-fun e!3618835 () Bool)

(declare-fun b!5909494 () Bool)

(declare-fun tp!1641832 () Bool)

(declare-fun inv!83119 (Context!10666) Bool)

(assert (=> b!5909494 (= e!3618835 (and (inv!83119 (h!70472 zl!343)) e!3618826 tp!1641832))))

(declare-fun b!5909495 () Bool)

(declare-fun e!3618831 () Bool)

(declare-fun tp!1641833 () Bool)

(declare-fun tp!1641829 () Bool)

(assert (=> b!5909495 (= e!3618831 (and tp!1641833 tp!1641829))))

(declare-fun b!5909496 () Bool)

(declare-fun res!2477951 () Bool)

(declare-fun e!3618836 () Bool)

(assert (=> b!5909496 (=> res!2477951 e!3618836)))

(declare-fun lt!2308888 () (InoxSet Context!10666))

(declare-fun lt!2308890 () List!64148)

(declare-fun toList!9733 ((InoxSet Context!10666)) List!64148)

(assert (=> b!5909496 (= res!2477951 (not (= (toList!9733 lt!2308888) lt!2308890)))))

(declare-fun b!5909497 () Bool)

(declare-fun e!3618839 () Bool)

(declare-fun e!3618834 () Bool)

(assert (=> b!5909497 (= e!3618839 e!3618834)))

(declare-fun res!2477938 () Bool)

(assert (=> b!5909497 (=> res!2477938 e!3618834)))

(declare-fun lt!2308870 () Bool)

(declare-fun lt!2308889 () (InoxSet Context!10666))

(assert (=> b!5909497 (= res!2477938 (not (= lt!2308870 (matchZipper!2015 lt!2308889 (t!377536 s!2326)))))))

(assert (=> b!5909497 (= lt!2308870 (matchZipper!2015 lt!2308888 s!2326))))

(declare-fun b!5909498 () Bool)

(declare-fun res!2477934 () Bool)

(declare-fun e!3618833 () Bool)

(assert (=> b!5909498 (=> (not res!2477934) (not e!3618833))))

(assert (=> b!5909498 (= res!2477934 (= (toList!9733 z!1189) zl!343))))

(declare-fun b!5909500 () Bool)

(assert (=> b!5909500 (= e!3618834 e!3618836)))

(declare-fun res!2477944 () Bool)

(assert (=> b!5909500 (=> res!2477944 e!3618836)))

(declare-fun validRegex!7685 (Regex!15949) Bool)

(assert (=> b!5909500 (= res!2477944 (not (validRegex!7685 (regTwo!32411 r!7292))))))

(declare-fun lt!2308873 () Context!10666)

(assert (=> b!5909500 (= lt!2308890 (Cons!64024 lt!2308873 Nil!64024))))

(declare-fun lt!2308879 () Bool)

(declare-fun lt!2308872 () Bool)

(assert (=> b!5909500 (= lt!2308879 lt!2308872)))

(declare-fun lt!2308892 () Unit!157169)

(declare-fun lt!2308886 () Context!10666)

(declare-fun lt!2308866 () (InoxSet Context!10666))

(declare-fun theoremZipperRegexEquiv!701 ((InoxSet Context!10666) List!64148 Regex!15949 List!64147) Unit!157169)

(assert (=> b!5909500 (= lt!2308892 (theoremZipperRegexEquiv!701 lt!2308866 (Cons!64024 lt!2308886 Nil!64024) (regOne!32411 r!7292) s!2326))))

(declare-fun b!5909501 () Bool)

(declare-fun res!2477946 () Bool)

(assert (=> b!5909501 (=> res!2477946 e!3618836)))

(declare-fun unfocusZipper!1691 (List!64148) Regex!15949)

(assert (=> b!5909501 (= res!2477946 (not (= (regTwo!32411 r!7292) (unfocusZipper!1691 lt!2308890))))))

(declare-fun b!5909502 () Bool)

(declare-fun res!2477952 () Bool)

(assert (=> b!5909502 (=> res!2477952 e!3618841)))

(get-info :version)

(assert (=> b!5909502 (= res!2477952 (or ((_ is EmptyExpr!15949) r!7292) ((_ is EmptyLang!15949) r!7292) ((_ is ElementMatch!15949) r!7292) (not ((_ is Union!15949) r!7292))))))

(declare-fun b!5909503 () Bool)

(declare-fun res!2477945 () Bool)

(assert (=> b!5909503 (=> (not res!2477945) (not e!3618833))))

(assert (=> b!5909503 (= res!2477945 (= r!7292 (unfocusZipper!1691 zl!343)))))

(declare-fun b!5909504 () Bool)

(declare-fun res!2477943 () Bool)

(assert (=> b!5909504 (=> res!2477943 e!3618834)))

(assert (=> b!5909504 (= res!2477943 (not (= (or lt!2308872 lt!2308870) lt!2308887)))))

(declare-fun b!5909505 () Bool)

(assert (=> b!5909505 (= e!3618833 (not e!3618841))))

(declare-fun res!2477937 () Bool)

(assert (=> b!5909505 (=> res!2477937 e!3618841)))

(assert (=> b!5909505 (= res!2477937 (not ((_ is Cons!64024) zl!343)))))

(declare-fun lt!2308868 () Bool)

(declare-fun matchRSpec!3050 (Regex!15949 List!64147) Bool)

(assert (=> b!5909505 (= lt!2308868 (matchRSpec!3050 r!7292 s!2326))))

(declare-fun matchR!8132 (Regex!15949 List!64147) Bool)

(assert (=> b!5909505 (= lt!2308868 (matchR!8132 r!7292 s!2326))))

(declare-fun lt!2308891 () Unit!157169)

(declare-fun mainMatchTheorem!3050 (Regex!15949 List!64147) Unit!157169)

(assert (=> b!5909505 (= lt!2308891 (mainMatchTheorem!3050 r!7292 s!2326))))

(declare-fun b!5909506 () Bool)

(assert (=> b!5909506 (= e!3618831 tp_is_empty!41151)))

(declare-fun b!5909507 () Bool)

(declare-fun tp!1641838 () Bool)

(assert (=> b!5909507 (= e!3618831 tp!1641838)))

(declare-fun b!5909508 () Bool)

(assert (=> b!5909508 (= e!3618836 (= lt!2308868 lt!2308887))))

(declare-fun lt!2308884 () Bool)

(assert (=> b!5909508 (= lt!2308884 lt!2308870)))

(declare-fun lt!2308882 () Unit!157169)

(assert (=> b!5909508 (= lt!2308882 (theoremZipperRegexEquiv!701 lt!2308888 lt!2308890 (regTwo!32411 r!7292) s!2326))))

(declare-fun b!5909509 () Bool)

(assert (=> b!5909509 (= e!3618841 e!3618829)))

(declare-fun res!2477939 () Bool)

(assert (=> b!5909509 (=> res!2477939 e!3618829)))

(assert (=> b!5909509 (= res!2477939 (or (not (= lt!2308868 (or lt!2308879 lt!2308884))) ((_ is Nil!64023) s!2326)))))

(assert (=> b!5909509 (= lt!2308884 (matchRSpec!3050 (regTwo!32411 r!7292) s!2326))))

(assert (=> b!5909509 (= lt!2308884 (matchR!8132 (regTwo!32411 r!7292) s!2326))))

(declare-fun lt!2308895 () Unit!157169)

(assert (=> b!5909509 (= lt!2308895 (mainMatchTheorem!3050 (regTwo!32411 r!7292) s!2326))))

(assert (=> b!5909509 (= lt!2308879 (matchRSpec!3050 (regOne!32411 r!7292) s!2326))))

(assert (=> b!5909509 (= lt!2308879 (matchR!8132 (regOne!32411 r!7292) s!2326))))

(declare-fun lt!2308876 () Unit!157169)

(assert (=> b!5909509 (= lt!2308876 (mainMatchTheorem!3050 (regOne!32411 r!7292) s!2326))))

(declare-fun b!5909510 () Bool)

(assert (=> b!5909510 (= e!3618837 e!3618840)))

(declare-fun res!2477933 () Bool)

(assert (=> b!5909510 (=> res!2477933 e!3618840)))

(assert (=> b!5909510 (= res!2477933 (not (= lt!2308874 lt!2308869)))))

(declare-fun lt!2308881 () (InoxSet Context!10666))

(assert (=> b!5909510 (= lt!2308869 ((_ map or) lt!2308881 lt!2308889))))

(assert (=> b!5909510 (= lt!2308889 (derivationStepZipperDown!1215 (regTwo!32411 r!7292) lt!2308894 (h!70471 s!2326)))))

(assert (=> b!5909510 (= lt!2308881 (derivationStepZipperDown!1215 (regOne!32411 r!7292) lt!2308894 (h!70471 s!2326)))))

(declare-fun b!5909511 () Bool)

(declare-fun res!2477940 () Bool)

(assert (=> b!5909511 (=> res!2477940 e!3618841)))

(assert (=> b!5909511 (= res!2477940 (not ((_ is Cons!64022) (exprs!5833 (h!70472 zl!343)))))))

(declare-fun setIsEmpty!40054 () Bool)

(declare-fun setRes!40054 () Bool)

(assert (=> setIsEmpty!40054 setRes!40054))

(declare-fun b!5909512 () Bool)

(declare-fun res!2477936 () Bool)

(assert (=> b!5909512 (=> res!2477936 e!3618841)))

(declare-fun isEmpty!35880 (List!64148) Bool)

(assert (=> b!5909512 (= res!2477936 (not (isEmpty!35880 (t!377537 zl!343))))))

(declare-fun b!5909513 () Bool)

(declare-fun e!3618827 () Bool)

(declare-fun tp!1641836 () Bool)

(assert (=> b!5909513 (= e!3618827 tp!1641836)))

(declare-fun b!5909514 () Bool)

(declare-fun e!3618838 () Bool)

(assert (=> b!5909514 (= e!3618838 e!3618839)))

(declare-fun res!2477953 () Bool)

(assert (=> b!5909514 (=> res!2477953 e!3618839)))

(declare-fun lt!2308867 () Bool)

(assert (=> b!5909514 (= res!2477953 (not (= lt!2308872 lt!2308867)))))

(assert (=> b!5909514 (= lt!2308872 (matchZipper!2015 lt!2308866 s!2326))))

(assert (=> b!5909514 (= (flatMap!1480 lt!2308888 lambda!322278) (derivationStepZipperUp!1141 lt!2308873 (h!70471 s!2326)))))

(declare-fun lt!2308880 () Unit!157169)

(assert (=> b!5909514 (= lt!2308880 (lemmaFlatMapOnSingletonSet!1008 lt!2308888 lt!2308873 lambda!322278))))

(assert (=> b!5909514 (= (flatMap!1480 lt!2308866 lambda!322278) (derivationStepZipperUp!1141 lt!2308886 (h!70471 s!2326)))))

(declare-fun lt!2308893 () Unit!157169)

(assert (=> b!5909514 (= lt!2308893 (lemmaFlatMapOnSingletonSet!1008 lt!2308866 lt!2308886 lambda!322278))))

(declare-fun lt!2308883 () (InoxSet Context!10666))

(assert (=> b!5909514 (= lt!2308883 (derivationStepZipperUp!1141 lt!2308873 (h!70471 s!2326)))))

(declare-fun lt!2308885 () (InoxSet Context!10666))

(assert (=> b!5909514 (= lt!2308885 (derivationStepZipperUp!1141 lt!2308886 (h!70471 s!2326)))))

(assert (=> b!5909514 (= lt!2308888 (store ((as const (Array Context!10666 Bool)) false) lt!2308873 true))))

(assert (=> b!5909514 (= lt!2308873 (Context!10667 (Cons!64022 (regTwo!32411 r!7292) Nil!64022)))))

(assert (=> b!5909514 (= lt!2308866 (store ((as const (Array Context!10666 Bool)) false) lt!2308886 true))))

(assert (=> b!5909514 (= lt!2308886 (Context!10667 (Cons!64022 (regOne!32411 r!7292) Nil!64022)))))

(declare-fun b!5909515 () Bool)

(declare-fun tp!1641835 () Bool)

(declare-fun tp!1641831 () Bool)

(assert (=> b!5909515 (= e!3618831 (and tp!1641835 tp!1641831))))

(declare-fun setElem!40054 () Context!10666)

(declare-fun tp!1641837 () Bool)

(declare-fun setNonEmpty!40054 () Bool)

(assert (=> setNonEmpty!40054 (= setRes!40054 (and tp!1641837 (inv!83119 setElem!40054) e!3618827))))

(declare-fun setRest!40054 () (InoxSet Context!10666))

(assert (=> setNonEmpty!40054 (= z!1189 ((_ map or) (store ((as const (Array Context!10666 Bool)) false) setElem!40054 true) setRest!40054))))

(declare-fun b!5909516 () Bool)

(assert (=> b!5909516 (= e!3618825 e!3618838)))

(declare-fun res!2477950 () Bool)

(assert (=> b!5909516 (=> res!2477950 e!3618838)))

(declare-fun lt!2308871 () Bool)

(assert (=> b!5909516 (= res!2477950 (or (not (= lt!2308871 lt!2308875)) (not (= lt!2308871 lt!2308887))))))

(assert (=> b!5909516 (= lt!2308875 lt!2308871)))

(declare-fun e!3618828 () Bool)

(assert (=> b!5909516 (= lt!2308871 e!3618828)))

(declare-fun res!2477954 () Bool)

(assert (=> b!5909516 (=> res!2477954 e!3618828)))

(assert (=> b!5909516 (= res!2477954 lt!2308867)))

(assert (=> b!5909516 (= lt!2308867 (matchZipper!2015 lt!2308881 (t!377536 s!2326)))))

(declare-fun lt!2308896 () Unit!157169)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!850 ((InoxSet Context!10666) (InoxSet Context!10666) List!64147) Unit!157169)

(assert (=> b!5909516 (= lt!2308896 (lemmaZipperConcatMatchesSameAsBothZippers!850 lt!2308881 lt!2308889 (t!377536 s!2326)))))

(declare-fun res!2477947 () Bool)

(assert (=> start!601192 (=> (not res!2477947) (not e!3618833))))

(assert (=> start!601192 (= res!2477947 (validRegex!7685 r!7292))))

(assert (=> start!601192 e!3618833))

(assert (=> start!601192 e!3618831))

(declare-fun condSetEmpty!40054 () Bool)

(assert (=> start!601192 (= condSetEmpty!40054 (= z!1189 ((as const (Array Context!10666 Bool)) false)))))

(assert (=> start!601192 setRes!40054))

(assert (=> start!601192 e!3618835))

(assert (=> start!601192 e!3618830))

(declare-fun b!5909499 () Bool)

(assert (=> b!5909499 (= e!3618828 (matchZipper!2015 lt!2308889 (t!377536 s!2326)))))

(assert (= (and start!601192 res!2477947) b!5909498))

(assert (= (and b!5909498 res!2477934) b!5909503))

(assert (= (and b!5909503 res!2477945) b!5909505))

(assert (= (and b!5909505 (not res!2477937)) b!5909512))

(assert (= (and b!5909512 (not res!2477936)) b!5909489))

(assert (= (and b!5909489 (not res!2477941)) b!5909511))

(assert (= (and b!5909511 (not res!2477940)) b!5909488))

(assert (= (and b!5909488 (not res!2477942)) b!5909502))

(assert (= (and b!5909502 (not res!2477952)) b!5909509))

(assert (= (and b!5909509 (not res!2477939)) b!5909487))

(assert (= (and b!5909487 (not res!2477949)) b!5909510))

(assert (= (and b!5909510 (not res!2477933)) b!5909491))

(assert (= (and b!5909491 (not res!2477935)) b!5909492))

(assert (= (and b!5909492 (not res!2477948)) b!5909516))

(assert (= (and b!5909516 (not res!2477954)) b!5909499))

(assert (= (and b!5909516 (not res!2477950)) b!5909514))

(assert (= (and b!5909514 (not res!2477953)) b!5909497))

(assert (= (and b!5909497 (not res!2477938)) b!5909504))

(assert (= (and b!5909504 (not res!2477943)) b!5909500))

(assert (= (and b!5909500 (not res!2477944)) b!5909496))

(assert (= (and b!5909496 (not res!2477951)) b!5909501))

(assert (= (and b!5909501 (not res!2477946)) b!5909508))

(assert (= (and start!601192 ((_ is ElementMatch!15949) r!7292)) b!5909506))

(assert (= (and start!601192 ((_ is Concat!24794) r!7292)) b!5909515))

(assert (= (and start!601192 ((_ is Star!15949) r!7292)) b!5909507))

(assert (= (and start!601192 ((_ is Union!15949) r!7292)) b!5909495))

(assert (= (and start!601192 condSetEmpty!40054) setIsEmpty!40054))

(assert (= (and start!601192 (not condSetEmpty!40054)) setNonEmpty!40054))

(assert (= setNonEmpty!40054 b!5909513))

(assert (= b!5909494 b!5909493))

(assert (= (and start!601192 ((_ is Cons!64024) zl!343)) b!5909494))

(assert (= (and start!601192 ((_ is Cons!64023) s!2326)) b!5909490))

(declare-fun m!6810356 () Bool)

(assert (=> b!5909491 m!6810356))

(declare-fun m!6810358 () Bool)

(assert (=> b!5909491 m!6810358))

(declare-fun m!6810360 () Bool)

(assert (=> b!5909491 m!6810360))

(declare-fun m!6810362 () Bool)

(assert (=> b!5909491 m!6810362))

(declare-fun m!6810364 () Bool)

(assert (=> b!5909498 m!6810364))

(declare-fun m!6810366 () Bool)

(assert (=> b!5909501 m!6810366))

(declare-fun m!6810368 () Bool)

(assert (=> b!5909499 m!6810368))

(declare-fun m!6810370 () Bool)

(assert (=> b!5909492 m!6810370))

(declare-fun m!6810372 () Bool)

(assert (=> b!5909492 m!6810372))

(declare-fun m!6810374 () Bool)

(assert (=> b!5909514 m!6810374))

(declare-fun m!6810376 () Bool)

(assert (=> b!5909514 m!6810376))

(declare-fun m!6810378 () Bool)

(assert (=> b!5909514 m!6810378))

(declare-fun m!6810380 () Bool)

(assert (=> b!5909514 m!6810380))

(declare-fun m!6810382 () Bool)

(assert (=> b!5909514 m!6810382))

(declare-fun m!6810384 () Bool)

(assert (=> b!5909514 m!6810384))

(declare-fun m!6810386 () Bool)

(assert (=> b!5909514 m!6810386))

(declare-fun m!6810388 () Bool)

(assert (=> b!5909514 m!6810388))

(declare-fun m!6810390 () Bool)

(assert (=> b!5909514 m!6810390))

(declare-fun m!6810392 () Bool)

(assert (=> b!5909508 m!6810392))

(declare-fun m!6810394 () Bool)

(assert (=> b!5909509 m!6810394))

(declare-fun m!6810396 () Bool)

(assert (=> b!5909509 m!6810396))

(declare-fun m!6810398 () Bool)

(assert (=> b!5909509 m!6810398))

(declare-fun m!6810400 () Bool)

(assert (=> b!5909509 m!6810400))

(declare-fun m!6810402 () Bool)

(assert (=> b!5909509 m!6810402))

(declare-fun m!6810404 () Bool)

(assert (=> b!5909509 m!6810404))

(assert (=> b!5909497 m!6810368))

(declare-fun m!6810406 () Bool)

(assert (=> b!5909497 m!6810406))

(declare-fun m!6810408 () Bool)

(assert (=> b!5909496 m!6810408))

(declare-fun m!6810410 () Bool)

(assert (=> b!5909494 m!6810410))

(declare-fun m!6810412 () Bool)

(assert (=> b!5909505 m!6810412))

(declare-fun m!6810414 () Bool)

(assert (=> b!5909505 m!6810414))

(declare-fun m!6810416 () Bool)

(assert (=> b!5909505 m!6810416))

(declare-fun m!6810418 () Bool)

(assert (=> b!5909512 m!6810418))

(declare-fun m!6810420 () Bool)

(assert (=> b!5909489 m!6810420))

(declare-fun m!6810422 () Bool)

(assert (=> b!5909503 m!6810422))

(declare-fun m!6810424 () Bool)

(assert (=> b!5909516 m!6810424))

(declare-fun m!6810426 () Bool)

(assert (=> b!5909516 m!6810426))

(declare-fun m!6810428 () Bool)

(assert (=> start!601192 m!6810428))

(declare-fun m!6810430 () Bool)

(assert (=> b!5909510 m!6810430))

(declare-fun m!6810432 () Bool)

(assert (=> b!5909510 m!6810432))

(declare-fun m!6810434 () Bool)

(assert (=> setNonEmpty!40054 m!6810434))

(declare-fun m!6810436 () Bool)

(assert (=> b!5909500 m!6810436))

(declare-fun m!6810438 () Bool)

(assert (=> b!5909500 m!6810438))

(declare-fun m!6810440 () Bool)

(assert (=> b!5909488 m!6810440))

(assert (=> b!5909488 m!6810440))

(declare-fun m!6810442 () Bool)

(assert (=> b!5909488 m!6810442))

(declare-fun m!6810444 () Bool)

(assert (=> b!5909487 m!6810444))

(declare-fun m!6810446 () Bool)

(assert (=> b!5909487 m!6810446))

(check-sat (not b!5909495) (not b!5909493) (not b!5909488) (not b!5909516) (not b!5909508) (not b!5909513) (not b!5909505) (not b!5909501) tp_is_empty!41151 (not b!5909500) (not b!5909496) (not b!5909490) (not b!5909503) (not b!5909509) (not b!5909494) (not start!601192) (not b!5909492) (not b!5909489) (not b!5909515) (not b!5909507) (not b!5909512) (not setNonEmpty!40054) (not b!5909499) (not b!5909498) (not b!5909487) (not b!5909491) (not b!5909497) (not b!5909514) (not b!5909510))
(check-sat)
