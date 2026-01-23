; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!598684 () Bool)

(assert start!598684)

(declare-fun b!5851884 () Bool)

(assert (=> b!5851884 true))

(declare-fun b!5851861 () Bool)

(declare-fun e!3588533 () Bool)

(declare-fun tp!1618935 () Bool)

(assert (=> b!5851861 (= e!3588533 tp!1618935)))

(declare-fun b!5851862 () Bool)

(declare-fun e!3588537 () Bool)

(declare-fun tp_is_empty!41091 () Bool)

(declare-fun tp!1618936 () Bool)

(assert (=> b!5851862 (= e!3588537 (and tp_is_empty!41091 tp!1618936))))

(declare-fun res!2463627 () Bool)

(declare-fun e!3588540 () Bool)

(assert (=> start!598684 (=> (not res!2463627) (not e!3588540))))

(declare-datatypes ((C!32108 0))(
  ( (C!32109 (val!25756 Int)) )
))
(declare-datatypes ((Regex!15919 0))(
  ( (ElementMatch!15919 (c!1037365 C!32108)) (Concat!24764 (regOne!32350 Regex!15919) (regTwo!32350 Regex!15919)) (EmptyExpr!15919) (Star!15919 (reg!16248 Regex!15919)) (EmptyLang!15919) (Union!15919 (regOne!32351 Regex!15919) (regTwo!32351 Regex!15919)) )
))
(declare-fun r!7292 () Regex!15919)

(declare-fun validRegex!7655 (Regex!15919) Bool)

(assert (=> start!598684 (= res!2463627 (validRegex!7655 r!7292))))

(assert (=> start!598684 e!3588540))

(declare-fun e!3588541 () Bool)

(assert (=> start!598684 e!3588541))

(declare-fun condSetEmpty!39650 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!64056 0))(
  ( (Nil!63932) (Cons!63932 (h!70380 Regex!15919) (t!377419 List!64056)) )
))
(declare-datatypes ((Context!10606 0))(
  ( (Context!10607 (exprs!5803 List!64056)) )
))
(declare-fun z!1189 () (InoxSet Context!10606))

(assert (=> start!598684 (= condSetEmpty!39650 (= z!1189 ((as const (Array Context!10606 Bool)) false)))))

(declare-fun setRes!39650 () Bool)

(assert (=> start!598684 setRes!39650))

(declare-fun e!3588535 () Bool)

(assert (=> start!598684 e!3588535))

(assert (=> start!598684 e!3588537))

(declare-fun b!5851863 () Bool)

(declare-fun e!3588530 () Bool)

(declare-fun inv!83044 (Context!10606) Bool)

(assert (=> b!5851863 (= e!3588530 (inv!83044 (Context!10607 (Cons!63932 (regTwo!32351 r!7292) Nil!63932))))))

(declare-fun b!5851864 () Bool)

(declare-fun res!2463629 () Bool)

(declare-fun e!3588539 () Bool)

(assert (=> b!5851864 (=> res!2463629 e!3588539)))

(declare-datatypes ((List!64057 0))(
  ( (Nil!63933) (Cons!63933 (h!70381 Context!10606) (t!377420 List!64057)) )
))
(declare-fun zl!343 () List!64057)

(declare-fun generalisedUnion!1763 (List!64056) Regex!15919)

(declare-fun unfocusZipperList!1340 (List!64057) List!64056)

(assert (=> b!5851864 (= res!2463629 (not (= r!7292 (generalisedUnion!1763 (unfocusZipperList!1340 zl!343)))))))

(declare-fun b!5851865 () Bool)

(declare-fun tp!1618929 () Bool)

(declare-fun tp!1618933 () Bool)

(assert (=> b!5851865 (= e!3588541 (and tp!1618929 tp!1618933))))

(declare-fun b!5851866 () Bool)

(declare-fun res!2463638 () Bool)

(assert (=> b!5851866 (=> res!2463638 e!3588539)))

(get-info :version)

(assert (=> b!5851866 (= res!2463638 (or ((_ is EmptyExpr!15919) r!7292) ((_ is EmptyLang!15919) r!7292) ((_ is ElementMatch!15919) r!7292) (not ((_ is Union!15919) r!7292))))))

(declare-fun b!5851867 () Bool)

(declare-fun e!3588532 () Bool)

(assert (=> b!5851867 (= e!3588532 e!3588530)))

(declare-fun res!2463637 () Bool)

(assert (=> b!5851867 (=> res!2463637 e!3588530)))

(declare-fun lt!2304510 () Bool)

(declare-fun lt!2304503 () Bool)

(declare-fun lt!2304505 () Bool)

(assert (=> b!5851867 (= res!2463637 (or (not (= lt!2304503 lt!2304510)) (not (= lt!2304503 lt!2304505))))))

(assert (=> b!5851867 (= lt!2304510 lt!2304503)))

(declare-fun e!3588531 () Bool)

(assert (=> b!5851867 (= lt!2304503 e!3588531)))

(declare-fun res!2463636 () Bool)

(assert (=> b!5851867 (=> res!2463636 e!3588531)))

(declare-fun lt!2304504 () (InoxSet Context!10606))

(declare-datatypes ((List!64058 0))(
  ( (Nil!63934) (Cons!63934 (h!70382 C!32108) (t!377421 List!64058)) )
))
(declare-fun s!2326 () List!64058)

(declare-fun matchZipper!1985 ((InoxSet Context!10606) List!64058) Bool)

(assert (=> b!5851867 (= res!2463636 (matchZipper!1985 lt!2304504 (t!377421 s!2326)))))

(declare-datatypes ((Unit!157109 0))(
  ( (Unit!157110) )
))
(declare-fun lt!2304500 () Unit!157109)

(declare-fun lt!2304501 () (InoxSet Context!10606))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!820 ((InoxSet Context!10606) (InoxSet Context!10606) List!64058) Unit!157109)

(assert (=> b!5851867 (= lt!2304500 (lemmaZipperConcatMatchesSameAsBothZippers!820 lt!2304504 lt!2304501 (t!377421 s!2326)))))

(declare-fun b!5851868 () Bool)

(declare-fun res!2463632 () Bool)

(assert (=> b!5851868 (=> (not res!2463632) (not e!3588540))))

(declare-fun toList!9703 ((InoxSet Context!10606)) List!64057)

(assert (=> b!5851868 (= res!2463632 (= (toList!9703 z!1189) zl!343))))

(declare-fun b!5851869 () Bool)

(declare-fun e!3588542 () Bool)

(declare-fun tp!1618934 () Bool)

(assert (=> b!5851869 (= e!3588542 tp!1618934)))

(declare-fun b!5851870 () Bool)

(assert (=> b!5851870 (= e!3588541 tp_is_empty!41091)))

(declare-fun b!5851871 () Bool)

(declare-fun tp!1618931 () Bool)

(assert (=> b!5851871 (= e!3588541 tp!1618931)))

(declare-fun b!5851872 () Bool)

(declare-fun e!3588536 () Bool)

(declare-fun e!3588538 () Bool)

(assert (=> b!5851872 (= e!3588536 e!3588538)))

(declare-fun res!2463633 () Bool)

(assert (=> b!5851872 (=> res!2463633 e!3588538)))

(declare-fun lt!2304506 () (InoxSet Context!10606))

(declare-fun lt!2304498 () (InoxSet Context!10606))

(assert (=> b!5851872 (= res!2463633 (not (= lt!2304506 lt!2304498)))))

(declare-fun lt!2304502 () Context!10606)

(declare-fun derivationStepZipperDown!1185 (Regex!15919 Context!10606 C!32108) (InoxSet Context!10606))

(assert (=> b!5851872 (= lt!2304498 (derivationStepZipperDown!1185 r!7292 lt!2304502 (h!70382 s!2326)))))

(assert (=> b!5851872 (= lt!2304502 (Context!10607 Nil!63932))))

(declare-fun derivationStepZipperUp!1111 (Context!10606 C!32108) (InoxSet Context!10606))

(assert (=> b!5851872 (= lt!2304506 (derivationStepZipperUp!1111 (Context!10607 (Cons!63932 r!7292 Nil!63932)) (h!70382 s!2326)))))

(declare-fun b!5851873 () Bool)

(declare-fun e!3588543 () Bool)

(assert (=> b!5851873 (= e!3588543 e!3588532)))

(declare-fun res!2463628 () Bool)

(assert (=> b!5851873 (=> res!2463628 e!3588532)))

(assert (=> b!5851873 (= res!2463628 (not (= lt!2304510 lt!2304505)))))

(assert (=> b!5851873 (= lt!2304505 (matchZipper!1985 z!1189 s!2326))))

(declare-fun lt!2304509 () (InoxSet Context!10606))

(assert (=> b!5851873 (= lt!2304510 (matchZipper!1985 lt!2304509 (t!377421 s!2326)))))

(declare-fun tp!1618932 () Bool)

(declare-fun b!5851874 () Bool)

(assert (=> b!5851874 (= e!3588535 (and (inv!83044 (h!70381 zl!343)) e!3588533 tp!1618932))))

(declare-fun b!5851875 () Bool)

(declare-fun res!2463641 () Bool)

(assert (=> b!5851875 (=> res!2463641 e!3588539)))

(assert (=> b!5851875 (= res!2463641 (not ((_ is Cons!63932) (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5851876 () Bool)

(assert (=> b!5851876 (= e!3588540 (not e!3588539))))

(declare-fun res!2463635 () Bool)

(assert (=> b!5851876 (=> res!2463635 e!3588539)))

(assert (=> b!5851876 (= res!2463635 (not ((_ is Cons!63933) zl!343)))))

(declare-fun lt!2304514 () Bool)

(declare-fun matchRSpec!3020 (Regex!15919 List!64058) Bool)

(assert (=> b!5851876 (= lt!2304514 (matchRSpec!3020 r!7292 s!2326))))

(declare-fun matchR!8102 (Regex!15919 List!64058) Bool)

(assert (=> b!5851876 (= lt!2304514 (matchR!8102 r!7292 s!2326))))

(declare-fun lt!2304513 () Unit!157109)

(declare-fun mainMatchTheorem!3020 (Regex!15919 List!64058) Unit!157109)

(assert (=> b!5851876 (= lt!2304513 (mainMatchTheorem!3020 r!7292 s!2326))))

(declare-fun b!5851877 () Bool)

(declare-fun tp!1618930 () Bool)

(declare-fun tp!1618927 () Bool)

(assert (=> b!5851877 (= e!3588541 (and tp!1618930 tp!1618927))))

(declare-fun setElem!39650 () Context!10606)

(declare-fun tp!1618928 () Bool)

(declare-fun setNonEmpty!39650 () Bool)

(assert (=> setNonEmpty!39650 (= setRes!39650 (and tp!1618928 (inv!83044 setElem!39650) e!3588542))))

(declare-fun setRest!39650 () (InoxSet Context!10606))

(assert (=> setNonEmpty!39650 (= z!1189 ((_ map or) (store ((as const (Array Context!10606 Bool)) false) setElem!39650 true) setRest!39650))))

(declare-fun b!5851878 () Bool)

(declare-fun res!2463640 () Bool)

(assert (=> b!5851878 (=> res!2463640 e!3588539)))

(declare-fun generalisedConcat!1516 (List!64056) Regex!15919)

(assert (=> b!5851878 (= res!2463640 (not (= r!7292 (generalisedConcat!1516 (exprs!5803 (h!70381 zl!343))))))))

(declare-fun setIsEmpty!39650 () Bool)

(assert (=> setIsEmpty!39650 setRes!39650))

(declare-fun b!5851879 () Bool)

(assert (=> b!5851879 (= e!3588531 (matchZipper!1985 lt!2304501 (t!377421 s!2326)))))

(declare-fun b!5851880 () Bool)

(declare-fun res!2463642 () Bool)

(assert (=> b!5851880 (=> res!2463642 e!3588539)))

(declare-fun isEmpty!35790 (List!64057) Bool)

(assert (=> b!5851880 (= res!2463642 (not (isEmpty!35790 (t!377420 zl!343))))))

(declare-fun b!5851881 () Bool)

(declare-fun res!2463631 () Bool)

(assert (=> b!5851881 (=> (not res!2463631) (not e!3588540))))

(declare-fun unfocusZipper!1661 (List!64057) Regex!15919)

(assert (=> b!5851881 (= res!2463631 (= r!7292 (unfocusZipper!1661 zl!343)))))

(declare-fun b!5851882 () Bool)

(declare-fun e!3588534 () Bool)

(assert (=> b!5851882 (= e!3588538 e!3588534)))

(declare-fun res!2463634 () Bool)

(assert (=> b!5851882 (=> res!2463634 e!3588534)))

(assert (=> b!5851882 (= res!2463634 (not (= lt!2304498 lt!2304509)))))

(assert (=> b!5851882 (= lt!2304509 ((_ map or) lt!2304504 lt!2304501))))

(assert (=> b!5851882 (= lt!2304501 (derivationStepZipperDown!1185 (regTwo!32351 r!7292) lt!2304502 (h!70382 s!2326)))))

(assert (=> b!5851882 (= lt!2304504 (derivationStepZipperDown!1185 (regOne!32351 r!7292) lt!2304502 (h!70382 s!2326)))))

(declare-fun b!5851883 () Bool)

(assert (=> b!5851883 (= e!3588539 e!3588536)))

(declare-fun res!2463639 () Bool)

(assert (=> b!5851883 (=> res!2463639 e!3588536)))

(declare-fun lt!2304507 () Bool)

(declare-fun lt!2304511 () Bool)

(assert (=> b!5851883 (= res!2463639 (or (not (= lt!2304514 (or lt!2304511 lt!2304507))) ((_ is Nil!63934) s!2326)))))

(assert (=> b!5851883 (= lt!2304507 (matchRSpec!3020 (regTwo!32351 r!7292) s!2326))))

(assert (=> b!5851883 (= lt!2304507 (matchR!8102 (regTwo!32351 r!7292) s!2326))))

(declare-fun lt!2304512 () Unit!157109)

(assert (=> b!5851883 (= lt!2304512 (mainMatchTheorem!3020 (regTwo!32351 r!7292) s!2326))))

(assert (=> b!5851883 (= lt!2304511 (matchRSpec!3020 (regOne!32351 r!7292) s!2326))))

(assert (=> b!5851883 (= lt!2304511 (matchR!8102 (regOne!32351 r!7292) s!2326))))

(declare-fun lt!2304499 () Unit!157109)

(assert (=> b!5851883 (= lt!2304499 (mainMatchTheorem!3020 (regOne!32351 r!7292) s!2326))))

(assert (=> b!5851884 (= e!3588534 e!3588543)))

(declare-fun res!2463630 () Bool)

(assert (=> b!5851884 (=> res!2463630 e!3588543)))

(declare-fun derivationStepZipper!1918 ((InoxSet Context!10606) C!32108) (InoxSet Context!10606))

(assert (=> b!5851884 (= res!2463630 (not (= (derivationStepZipper!1918 z!1189 (h!70382 s!2326)) lt!2304509)))))

(declare-fun lambda!319958 () Int)

(declare-fun flatMap!1450 ((InoxSet Context!10606) Int) (InoxSet Context!10606))

(assert (=> b!5851884 (= (flatMap!1450 z!1189 lambda!319958) (derivationStepZipperUp!1111 (h!70381 zl!343) (h!70382 s!2326)))))

(declare-fun lt!2304508 () Unit!157109)

(declare-fun lemmaFlatMapOnSingletonSet!978 ((InoxSet Context!10606) Context!10606 Int) Unit!157109)

(assert (=> b!5851884 (= lt!2304508 (lemmaFlatMapOnSingletonSet!978 z!1189 (h!70381 zl!343) lambda!319958))))

(assert (= (and start!598684 res!2463627) b!5851868))

(assert (= (and b!5851868 res!2463632) b!5851881))

(assert (= (and b!5851881 res!2463631) b!5851876))

(assert (= (and b!5851876 (not res!2463635)) b!5851880))

(assert (= (and b!5851880 (not res!2463642)) b!5851878))

(assert (= (and b!5851878 (not res!2463640)) b!5851875))

(assert (= (and b!5851875 (not res!2463641)) b!5851864))

(assert (= (and b!5851864 (not res!2463629)) b!5851866))

(assert (= (and b!5851866 (not res!2463638)) b!5851883))

(assert (= (and b!5851883 (not res!2463639)) b!5851872))

(assert (= (and b!5851872 (not res!2463633)) b!5851882))

(assert (= (and b!5851882 (not res!2463634)) b!5851884))

(assert (= (and b!5851884 (not res!2463630)) b!5851873))

(assert (= (and b!5851873 (not res!2463628)) b!5851867))

(assert (= (and b!5851867 (not res!2463636)) b!5851879))

(assert (= (and b!5851867 (not res!2463637)) b!5851863))

(assert (= (and start!598684 ((_ is ElementMatch!15919) r!7292)) b!5851870))

(assert (= (and start!598684 ((_ is Concat!24764) r!7292)) b!5851877))

(assert (= (and start!598684 ((_ is Star!15919) r!7292)) b!5851871))

(assert (= (and start!598684 ((_ is Union!15919) r!7292)) b!5851865))

(assert (= (and start!598684 condSetEmpty!39650) setIsEmpty!39650))

(assert (= (and start!598684 (not condSetEmpty!39650)) setNonEmpty!39650))

(assert (= setNonEmpty!39650 b!5851869))

(assert (= b!5851874 b!5851861))

(assert (= (and start!598684 ((_ is Cons!63933) zl!343)) b!5851874))

(assert (= (and start!598684 ((_ is Cons!63934) s!2326)) b!5851862))

(declare-fun m!6771532 () Bool)

(assert (=> b!5851873 m!6771532))

(declare-fun m!6771534 () Bool)

(assert (=> b!5851873 m!6771534))

(declare-fun m!6771536 () Bool)

(assert (=> b!5851864 m!6771536))

(assert (=> b!5851864 m!6771536))

(declare-fun m!6771538 () Bool)

(assert (=> b!5851864 m!6771538))

(declare-fun m!6771540 () Bool)

(assert (=> start!598684 m!6771540))

(declare-fun m!6771542 () Bool)

(assert (=> b!5851863 m!6771542))

(declare-fun m!6771544 () Bool)

(assert (=> b!5851882 m!6771544))

(declare-fun m!6771546 () Bool)

(assert (=> b!5851882 m!6771546))

(declare-fun m!6771548 () Bool)

(assert (=> b!5851878 m!6771548))

(declare-fun m!6771550 () Bool)

(assert (=> b!5851868 m!6771550))

(declare-fun m!6771552 () Bool)

(assert (=> b!5851883 m!6771552))

(declare-fun m!6771554 () Bool)

(assert (=> b!5851883 m!6771554))

(declare-fun m!6771556 () Bool)

(assert (=> b!5851883 m!6771556))

(declare-fun m!6771558 () Bool)

(assert (=> b!5851883 m!6771558))

(declare-fun m!6771560 () Bool)

(assert (=> b!5851883 m!6771560))

(declare-fun m!6771562 () Bool)

(assert (=> b!5851883 m!6771562))

(declare-fun m!6771564 () Bool)

(assert (=> b!5851874 m!6771564))

(declare-fun m!6771566 () Bool)

(assert (=> b!5851876 m!6771566))

(declare-fun m!6771568 () Bool)

(assert (=> b!5851876 m!6771568))

(declare-fun m!6771570 () Bool)

(assert (=> b!5851876 m!6771570))

(declare-fun m!6771572 () Bool)

(assert (=> b!5851872 m!6771572))

(declare-fun m!6771574 () Bool)

(assert (=> b!5851872 m!6771574))

(declare-fun m!6771576 () Bool)

(assert (=> setNonEmpty!39650 m!6771576))

(declare-fun m!6771578 () Bool)

(assert (=> b!5851884 m!6771578))

(declare-fun m!6771580 () Bool)

(assert (=> b!5851884 m!6771580))

(declare-fun m!6771582 () Bool)

(assert (=> b!5851884 m!6771582))

(declare-fun m!6771584 () Bool)

(assert (=> b!5851884 m!6771584))

(declare-fun m!6771586 () Bool)

(assert (=> b!5851881 m!6771586))

(declare-fun m!6771588 () Bool)

(assert (=> b!5851880 m!6771588))

(declare-fun m!6771590 () Bool)

(assert (=> b!5851867 m!6771590))

(declare-fun m!6771592 () Bool)

(assert (=> b!5851867 m!6771592))

(declare-fun m!6771594 () Bool)

(assert (=> b!5851879 m!6771594))

(check-sat (not b!5851861) (not b!5851865) (not b!5851862) (not b!5851873) (not b!5851869) (not b!5851863) tp_is_empty!41091 (not setNonEmpty!39650) (not b!5851868) (not b!5851877) (not b!5851884) (not b!5851878) (not b!5851871) (not b!5851879) (not b!5851864) (not b!5851881) (not b!5851883) (not b!5851872) (not b!5851876) (not b!5851880) (not b!5851882) (not start!598684) (not b!5851867) (not b!5851874))
(check-sat)
(get-model)

(declare-fun d!1837965 () Bool)

(declare-fun c!1037465 () Bool)

(declare-fun isEmpty!35793 (List!64058) Bool)

(assert (=> d!1837965 (= c!1037465 (isEmpty!35793 (t!377421 s!2326)))))

(declare-fun e!3588716 () Bool)

(assert (=> d!1837965 (= (matchZipper!1985 lt!2304501 (t!377421 s!2326)) e!3588716)))

(declare-fun b!5852188 () Bool)

(declare-fun nullableZipper!1758 ((InoxSet Context!10606)) Bool)

(assert (=> b!5852188 (= e!3588716 (nullableZipper!1758 lt!2304501))))

(declare-fun b!5852189 () Bool)

(declare-fun head!12392 (List!64058) C!32108)

(declare-fun tail!11477 (List!64058) List!64058)

(assert (=> b!5852189 (= e!3588716 (matchZipper!1985 (derivationStepZipper!1918 lt!2304501 (head!12392 (t!377421 s!2326))) (tail!11477 (t!377421 s!2326))))))

(assert (= (and d!1837965 c!1037465) b!5852188))

(assert (= (and d!1837965 (not c!1037465)) b!5852189))

(declare-fun m!6771770 () Bool)

(assert (=> d!1837965 m!6771770))

(declare-fun m!6771772 () Bool)

(assert (=> b!5852188 m!6771772))

(declare-fun m!6771774 () Bool)

(assert (=> b!5852189 m!6771774))

(assert (=> b!5852189 m!6771774))

(declare-fun m!6771776 () Bool)

(assert (=> b!5852189 m!6771776))

(declare-fun m!6771778 () Bool)

(assert (=> b!5852189 m!6771778))

(assert (=> b!5852189 m!6771776))

(assert (=> b!5852189 m!6771778))

(declare-fun m!6771780 () Bool)

(assert (=> b!5852189 m!6771780))

(assert (=> b!5851879 d!1837965))

(declare-fun bm!458088 () Bool)

(declare-fun call!458097 () List!64056)

(declare-fun call!458094 () List!64056)

(assert (=> bm!458088 (= call!458097 call!458094)))

(declare-fun c!1037492 () Bool)

(declare-fun c!1037490 () Bool)

(declare-fun bm!458089 () Bool)

(declare-fun c!1037491 () Bool)

(declare-fun call!458095 () (InoxSet Context!10606))

(assert (=> bm!458089 (= call!458095 (derivationStepZipperDown!1185 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292)))) (ite (or c!1037492 c!1037490) lt!2304502 (Context!10607 call!458097)) (h!70382 s!2326)))))

(declare-fun bm!458090 () Bool)

(declare-fun call!458098 () (InoxSet Context!10606))

(declare-fun call!458093 () (InoxSet Context!10606))

(assert (=> bm!458090 (= call!458098 call!458093)))

(declare-fun b!5852296 () Bool)

(declare-fun e!3588770 () (InoxSet Context!10606))

(assert (=> b!5852296 (= e!3588770 (store ((as const (Array Context!10606 Bool)) false) lt!2304502 true))))

(declare-fun d!1837975 () Bool)

(declare-fun c!1037488 () Bool)

(assert (=> d!1837975 (= c!1037488 (and ((_ is ElementMatch!15919) r!7292) (= (c!1037365 r!7292) (h!70382 s!2326))))))

(assert (=> d!1837975 (= (derivationStepZipperDown!1185 r!7292 lt!2304502 (h!70382 s!2326)) e!3588770)))

(declare-fun bm!458091 () Bool)

(declare-fun $colon$colon!1824 (List!64056 Regex!15919) List!64056)

(assert (=> bm!458091 (= call!458094 ($colon$colon!1824 (exprs!5803 lt!2304502) (ite (or c!1037490 c!1037491) (regTwo!32350 r!7292) r!7292)))))

(declare-fun b!5852297 () Bool)

(declare-fun e!3588772 () Bool)

(declare-fun nullable!5919 (Regex!15919) Bool)

(assert (=> b!5852297 (= e!3588772 (nullable!5919 (regOne!32350 r!7292)))))

(declare-fun b!5852298 () Bool)

(declare-fun e!3588774 () (InoxSet Context!10606))

(assert (=> b!5852298 (= e!3588774 call!458098)))

(declare-fun b!5852299 () Bool)

(declare-fun e!3588775 () (InoxSet Context!10606))

(assert (=> b!5852299 (= e!3588770 e!3588775)))

(assert (=> b!5852299 (= c!1037492 ((_ is Union!15919) r!7292))))

(declare-fun b!5852300 () Bool)

(declare-fun e!3588773 () (InoxSet Context!10606))

(assert (=> b!5852300 (= e!3588773 e!3588774)))

(assert (=> b!5852300 (= c!1037491 ((_ is Concat!24764) r!7292))))

(declare-fun b!5852301 () Bool)

(declare-fun call!458096 () (InoxSet Context!10606))

(assert (=> b!5852301 (= e!3588775 ((_ map or) call!458096 call!458095))))

(declare-fun b!5852302 () Bool)

(declare-fun e!3588771 () (InoxSet Context!10606))

(assert (=> b!5852302 (= e!3588771 call!458098)))

(declare-fun bm!458092 () Bool)

(assert (=> bm!458092 (= call!458093 call!458095)))

(declare-fun b!5852303 () Bool)

(assert (=> b!5852303 (= e!3588773 ((_ map or) call!458096 call!458093))))

(declare-fun b!5852304 () Bool)

(assert (=> b!5852304 (= e!3588771 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458093 () Bool)

(assert (=> bm!458093 (= call!458096 (derivationStepZipperDown!1185 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292)) (ite c!1037492 lt!2304502 (Context!10607 call!458094)) (h!70382 s!2326)))))

(declare-fun b!5852305 () Bool)

(declare-fun c!1037489 () Bool)

(assert (=> b!5852305 (= c!1037489 ((_ is Star!15919) r!7292))))

(assert (=> b!5852305 (= e!3588774 e!3588771)))

(declare-fun b!5852306 () Bool)

(assert (=> b!5852306 (= c!1037490 e!3588772)))

(declare-fun res!2463752 () Bool)

(assert (=> b!5852306 (=> (not res!2463752) (not e!3588772))))

(assert (=> b!5852306 (= res!2463752 ((_ is Concat!24764) r!7292))))

(assert (=> b!5852306 (= e!3588775 e!3588773)))

(assert (= (and d!1837975 c!1037488) b!5852296))

(assert (= (and d!1837975 (not c!1037488)) b!5852299))

(assert (= (and b!5852299 c!1037492) b!5852301))

(assert (= (and b!5852299 (not c!1037492)) b!5852306))

(assert (= (and b!5852306 res!2463752) b!5852297))

(assert (= (and b!5852306 c!1037490) b!5852303))

(assert (= (and b!5852306 (not c!1037490)) b!5852300))

(assert (= (and b!5852300 c!1037491) b!5852298))

(assert (= (and b!5852300 (not c!1037491)) b!5852305))

(assert (= (and b!5852305 c!1037489) b!5852302))

(assert (= (and b!5852305 (not c!1037489)) b!5852304))

(assert (= (or b!5852298 b!5852302) bm!458088))

(assert (= (or b!5852298 b!5852302) bm!458090))

(assert (= (or b!5852303 bm!458088) bm!458091))

(assert (= (or b!5852303 bm!458090) bm!458092))

(assert (= (or b!5852301 bm!458092) bm!458089))

(assert (= (or b!5852301 b!5852303) bm!458093))

(declare-fun m!6771808 () Bool)

(assert (=> b!5852297 m!6771808))

(declare-fun m!6771810 () Bool)

(assert (=> b!5852296 m!6771810))

(declare-fun m!6771812 () Bool)

(assert (=> bm!458091 m!6771812))

(declare-fun m!6771814 () Bool)

(assert (=> bm!458089 m!6771814))

(declare-fun m!6771816 () Bool)

(assert (=> bm!458093 m!6771816))

(assert (=> b!5851872 d!1837975))

(declare-fun d!1837981 () Bool)

(declare-fun c!1037498 () Bool)

(declare-fun e!3588782 () Bool)

(assert (=> d!1837981 (= c!1037498 e!3588782)))

(declare-fun res!2463755 () Bool)

(assert (=> d!1837981 (=> (not res!2463755) (not e!3588782))))

(assert (=> d!1837981 (= res!2463755 ((_ is Cons!63932) (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))))

(declare-fun e!3588783 () (InoxSet Context!10606))

(assert (=> d!1837981 (= (derivationStepZipperUp!1111 (Context!10607 (Cons!63932 r!7292 Nil!63932)) (h!70382 s!2326)) e!3588783)))

(declare-fun call!458101 () (InoxSet Context!10606))

(declare-fun b!5852317 () Bool)

(assert (=> b!5852317 (= e!3588783 ((_ map or) call!458101 (derivationStepZipperUp!1111 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (h!70382 s!2326))))))

(declare-fun b!5852318 () Bool)

(assert (=> b!5852318 (= e!3588782 (nullable!5919 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))))))

(declare-fun b!5852319 () Bool)

(declare-fun e!3588784 () (InoxSet Context!10606))

(assert (=> b!5852319 (= e!3588784 ((as const (Array Context!10606 Bool)) false))))

(declare-fun b!5852320 () Bool)

(assert (=> b!5852320 (= e!3588784 call!458101)))

(declare-fun bm!458096 () Bool)

(assert (=> bm!458096 (= call!458101 (derivationStepZipperDown!1185 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))) (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (h!70382 s!2326)))))

(declare-fun b!5852321 () Bool)

(assert (=> b!5852321 (= e!3588783 e!3588784)))

(declare-fun c!1037497 () Bool)

(assert (=> b!5852321 (= c!1037497 ((_ is Cons!63932) (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))))

(assert (= (and d!1837981 res!2463755) b!5852318))

(assert (= (and d!1837981 c!1037498) b!5852317))

(assert (= (and d!1837981 (not c!1037498)) b!5852321))

(assert (= (and b!5852321 c!1037497) b!5852320))

(assert (= (and b!5852321 (not c!1037497)) b!5852319))

(assert (= (or b!5852317 b!5852320) bm!458096))

(declare-fun m!6771818 () Bool)

(assert (=> b!5852317 m!6771818))

(declare-fun m!6771820 () Bool)

(assert (=> b!5852318 m!6771820))

(declare-fun m!6771822 () Bool)

(assert (=> bm!458096 m!6771822))

(assert (=> b!5851872 d!1837981))

(declare-fun d!1837983 () Bool)

(assert (=> d!1837983 (= (isEmpty!35790 (t!377420 zl!343)) ((_ is Nil!63933) (t!377420 zl!343)))))

(assert (=> b!5851880 d!1837983))

(declare-fun bm!458097 () Bool)

(declare-fun call!458106 () List!64056)

(declare-fun call!458103 () List!64056)

(assert (=> bm!458097 (= call!458106 call!458103)))

(declare-fun c!1037501 () Bool)

(declare-fun c!1037502 () Bool)

(declare-fun c!1037503 () Bool)

(declare-fun call!458104 () (InoxSet Context!10606))

(declare-fun bm!458098 () Bool)

(assert (=> bm!458098 (= call!458104 (derivationStepZipperDown!1185 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292))))) (ite (or c!1037503 c!1037501) lt!2304502 (Context!10607 call!458106)) (h!70382 s!2326)))))

(declare-fun bm!458099 () Bool)

(declare-fun call!458107 () (InoxSet Context!10606))

(declare-fun call!458102 () (InoxSet Context!10606))

(assert (=> bm!458099 (= call!458107 call!458102)))

(declare-fun b!5852322 () Bool)

(declare-fun e!3588785 () (InoxSet Context!10606))

(assert (=> b!5852322 (= e!3588785 (store ((as const (Array Context!10606 Bool)) false) lt!2304502 true))))

(declare-fun d!1837985 () Bool)

(declare-fun c!1037499 () Bool)

(assert (=> d!1837985 (= c!1037499 (and ((_ is ElementMatch!15919) (regTwo!32351 r!7292)) (= (c!1037365 (regTwo!32351 r!7292)) (h!70382 s!2326))))))

(assert (=> d!1837985 (= (derivationStepZipperDown!1185 (regTwo!32351 r!7292) lt!2304502 (h!70382 s!2326)) e!3588785)))

(declare-fun bm!458100 () Bool)

(assert (=> bm!458100 (= call!458103 ($colon$colon!1824 (exprs!5803 lt!2304502) (ite (or c!1037501 c!1037502) (regTwo!32350 (regTwo!32351 r!7292)) (regTwo!32351 r!7292))))))

(declare-fun b!5852323 () Bool)

(declare-fun e!3588787 () Bool)

(assert (=> b!5852323 (= e!3588787 (nullable!5919 (regOne!32350 (regTwo!32351 r!7292))))))

(declare-fun b!5852324 () Bool)

(declare-fun e!3588789 () (InoxSet Context!10606))

(assert (=> b!5852324 (= e!3588789 call!458107)))

(declare-fun b!5852325 () Bool)

(declare-fun e!3588790 () (InoxSet Context!10606))

(assert (=> b!5852325 (= e!3588785 e!3588790)))

(assert (=> b!5852325 (= c!1037503 ((_ is Union!15919) (regTwo!32351 r!7292)))))

(declare-fun b!5852326 () Bool)

(declare-fun e!3588788 () (InoxSet Context!10606))

(assert (=> b!5852326 (= e!3588788 e!3588789)))

(assert (=> b!5852326 (= c!1037502 ((_ is Concat!24764) (regTwo!32351 r!7292)))))

(declare-fun b!5852327 () Bool)

(declare-fun call!458105 () (InoxSet Context!10606))

(assert (=> b!5852327 (= e!3588790 ((_ map or) call!458105 call!458104))))

(declare-fun b!5852328 () Bool)

(declare-fun e!3588786 () (InoxSet Context!10606))

(assert (=> b!5852328 (= e!3588786 call!458107)))

(declare-fun bm!458101 () Bool)

(assert (=> bm!458101 (= call!458102 call!458104)))

(declare-fun b!5852329 () Bool)

(assert (=> b!5852329 (= e!3588788 ((_ map or) call!458105 call!458102))))

(declare-fun b!5852330 () Bool)

(assert (=> b!5852330 (= e!3588786 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458102 () Bool)

(assert (=> bm!458102 (= call!458105 (derivationStepZipperDown!1185 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))) (ite c!1037503 lt!2304502 (Context!10607 call!458103)) (h!70382 s!2326)))))

(declare-fun b!5852331 () Bool)

(declare-fun c!1037500 () Bool)

(assert (=> b!5852331 (= c!1037500 ((_ is Star!15919) (regTwo!32351 r!7292)))))

(assert (=> b!5852331 (= e!3588789 e!3588786)))

(declare-fun b!5852332 () Bool)

(assert (=> b!5852332 (= c!1037501 e!3588787)))

(declare-fun res!2463756 () Bool)

(assert (=> b!5852332 (=> (not res!2463756) (not e!3588787))))

(assert (=> b!5852332 (= res!2463756 ((_ is Concat!24764) (regTwo!32351 r!7292)))))

(assert (=> b!5852332 (= e!3588790 e!3588788)))

(assert (= (and d!1837985 c!1037499) b!5852322))

(assert (= (and d!1837985 (not c!1037499)) b!5852325))

(assert (= (and b!5852325 c!1037503) b!5852327))

(assert (= (and b!5852325 (not c!1037503)) b!5852332))

(assert (= (and b!5852332 res!2463756) b!5852323))

(assert (= (and b!5852332 c!1037501) b!5852329))

(assert (= (and b!5852332 (not c!1037501)) b!5852326))

(assert (= (and b!5852326 c!1037502) b!5852324))

(assert (= (and b!5852326 (not c!1037502)) b!5852331))

(assert (= (and b!5852331 c!1037500) b!5852328))

(assert (= (and b!5852331 (not c!1037500)) b!5852330))

(assert (= (or b!5852324 b!5852328) bm!458097))

(assert (= (or b!5852324 b!5852328) bm!458099))

(assert (= (or b!5852329 bm!458097) bm!458100))

(assert (= (or b!5852329 bm!458099) bm!458101))

(assert (= (or b!5852327 bm!458101) bm!458098))

(assert (= (or b!5852327 b!5852329) bm!458102))

(declare-fun m!6771824 () Bool)

(assert (=> b!5852323 m!6771824))

(assert (=> b!5852322 m!6771810))

(declare-fun m!6771826 () Bool)

(assert (=> bm!458100 m!6771826))

(declare-fun m!6771828 () Bool)

(assert (=> bm!458098 m!6771828))

(declare-fun m!6771830 () Bool)

(assert (=> bm!458102 m!6771830))

(assert (=> b!5851882 d!1837985))

(declare-fun bm!458103 () Bool)

(declare-fun call!458112 () List!64056)

(declare-fun call!458109 () List!64056)

(assert (=> bm!458103 (= call!458112 call!458109)))

(declare-fun c!1037507 () Bool)

(declare-fun c!1037508 () Bool)

(declare-fun c!1037506 () Bool)

(declare-fun call!458110 () (InoxSet Context!10606))

(declare-fun bm!458104 () Bool)

(assert (=> bm!458104 (= call!458110 (derivationStepZipperDown!1185 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292))))) (ite (or c!1037508 c!1037506) lt!2304502 (Context!10607 call!458112)) (h!70382 s!2326)))))

(declare-fun bm!458105 () Bool)

(declare-fun call!458113 () (InoxSet Context!10606))

(declare-fun call!458108 () (InoxSet Context!10606))

(assert (=> bm!458105 (= call!458113 call!458108)))

(declare-fun b!5852333 () Bool)

(declare-fun e!3588791 () (InoxSet Context!10606))

(assert (=> b!5852333 (= e!3588791 (store ((as const (Array Context!10606 Bool)) false) lt!2304502 true))))

(declare-fun d!1837987 () Bool)

(declare-fun c!1037504 () Bool)

(assert (=> d!1837987 (= c!1037504 (and ((_ is ElementMatch!15919) (regOne!32351 r!7292)) (= (c!1037365 (regOne!32351 r!7292)) (h!70382 s!2326))))))

(assert (=> d!1837987 (= (derivationStepZipperDown!1185 (regOne!32351 r!7292) lt!2304502 (h!70382 s!2326)) e!3588791)))

(declare-fun bm!458106 () Bool)

(assert (=> bm!458106 (= call!458109 ($colon$colon!1824 (exprs!5803 lt!2304502) (ite (or c!1037506 c!1037507) (regTwo!32350 (regOne!32351 r!7292)) (regOne!32351 r!7292))))))

(declare-fun b!5852334 () Bool)

(declare-fun e!3588793 () Bool)

(assert (=> b!5852334 (= e!3588793 (nullable!5919 (regOne!32350 (regOne!32351 r!7292))))))

(declare-fun b!5852335 () Bool)

(declare-fun e!3588795 () (InoxSet Context!10606))

(assert (=> b!5852335 (= e!3588795 call!458113)))

(declare-fun b!5852336 () Bool)

(declare-fun e!3588796 () (InoxSet Context!10606))

(assert (=> b!5852336 (= e!3588791 e!3588796)))

(assert (=> b!5852336 (= c!1037508 ((_ is Union!15919) (regOne!32351 r!7292)))))

(declare-fun b!5852337 () Bool)

(declare-fun e!3588794 () (InoxSet Context!10606))

(assert (=> b!5852337 (= e!3588794 e!3588795)))

(assert (=> b!5852337 (= c!1037507 ((_ is Concat!24764) (regOne!32351 r!7292)))))

(declare-fun b!5852338 () Bool)

(declare-fun call!458111 () (InoxSet Context!10606))

(assert (=> b!5852338 (= e!3588796 ((_ map or) call!458111 call!458110))))

(declare-fun b!5852339 () Bool)

(declare-fun e!3588792 () (InoxSet Context!10606))

(assert (=> b!5852339 (= e!3588792 call!458113)))

(declare-fun bm!458107 () Bool)

(assert (=> bm!458107 (= call!458108 call!458110)))

(declare-fun b!5852340 () Bool)

(assert (=> b!5852340 (= e!3588794 ((_ map or) call!458111 call!458108))))

(declare-fun b!5852341 () Bool)

(assert (=> b!5852341 (= e!3588792 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458108 () Bool)

(assert (=> bm!458108 (= call!458111 (derivationStepZipperDown!1185 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292))) (ite c!1037508 lt!2304502 (Context!10607 call!458109)) (h!70382 s!2326)))))

(declare-fun b!5852342 () Bool)

(declare-fun c!1037505 () Bool)

(assert (=> b!5852342 (= c!1037505 ((_ is Star!15919) (regOne!32351 r!7292)))))

(assert (=> b!5852342 (= e!3588795 e!3588792)))

(declare-fun b!5852343 () Bool)

(assert (=> b!5852343 (= c!1037506 e!3588793)))

(declare-fun res!2463757 () Bool)

(assert (=> b!5852343 (=> (not res!2463757) (not e!3588793))))

(assert (=> b!5852343 (= res!2463757 ((_ is Concat!24764) (regOne!32351 r!7292)))))

(assert (=> b!5852343 (= e!3588796 e!3588794)))

(assert (= (and d!1837987 c!1037504) b!5852333))

(assert (= (and d!1837987 (not c!1037504)) b!5852336))

(assert (= (and b!5852336 c!1037508) b!5852338))

(assert (= (and b!5852336 (not c!1037508)) b!5852343))

(assert (= (and b!5852343 res!2463757) b!5852334))

(assert (= (and b!5852343 c!1037506) b!5852340))

(assert (= (and b!5852343 (not c!1037506)) b!5852337))

(assert (= (and b!5852337 c!1037507) b!5852335))

(assert (= (and b!5852337 (not c!1037507)) b!5852342))

(assert (= (and b!5852342 c!1037505) b!5852339))

(assert (= (and b!5852342 (not c!1037505)) b!5852341))

(assert (= (or b!5852335 b!5852339) bm!458103))

(assert (= (or b!5852335 b!5852339) bm!458105))

(assert (= (or b!5852340 bm!458103) bm!458106))

(assert (= (or b!5852340 bm!458105) bm!458107))

(assert (= (or b!5852338 bm!458107) bm!458104))

(assert (= (or b!5852338 b!5852340) bm!458108))

(declare-fun m!6771832 () Bool)

(assert (=> b!5852334 m!6771832))

(assert (=> b!5852333 m!6771810))

(declare-fun m!6771834 () Bool)

(assert (=> bm!458106 m!6771834))

(declare-fun m!6771836 () Bool)

(assert (=> bm!458104 m!6771836))

(declare-fun m!6771838 () Bool)

(assert (=> bm!458108 m!6771838))

(assert (=> b!5851882 d!1837987))

(declare-fun d!1837989 () Bool)

(declare-fun c!1037509 () Bool)

(assert (=> d!1837989 (= c!1037509 (isEmpty!35793 s!2326))))

(declare-fun e!3588797 () Bool)

(assert (=> d!1837989 (= (matchZipper!1985 z!1189 s!2326) e!3588797)))

(declare-fun b!5852344 () Bool)

(assert (=> b!5852344 (= e!3588797 (nullableZipper!1758 z!1189))))

(declare-fun b!5852345 () Bool)

(assert (=> b!5852345 (= e!3588797 (matchZipper!1985 (derivationStepZipper!1918 z!1189 (head!12392 s!2326)) (tail!11477 s!2326)))))

(assert (= (and d!1837989 c!1037509) b!5852344))

(assert (= (and d!1837989 (not c!1037509)) b!5852345))

(declare-fun m!6771840 () Bool)

(assert (=> d!1837989 m!6771840))

(declare-fun m!6771842 () Bool)

(assert (=> b!5852344 m!6771842))

(declare-fun m!6771844 () Bool)

(assert (=> b!5852345 m!6771844))

(assert (=> b!5852345 m!6771844))

(declare-fun m!6771846 () Bool)

(assert (=> b!5852345 m!6771846))

(declare-fun m!6771848 () Bool)

(assert (=> b!5852345 m!6771848))

(assert (=> b!5852345 m!6771846))

(assert (=> b!5852345 m!6771848))

(declare-fun m!6771850 () Bool)

(assert (=> b!5852345 m!6771850))

(assert (=> b!5851873 d!1837989))

(declare-fun d!1837991 () Bool)

(declare-fun c!1037510 () Bool)

(assert (=> d!1837991 (= c!1037510 (isEmpty!35793 (t!377421 s!2326)))))

(declare-fun e!3588798 () Bool)

(assert (=> d!1837991 (= (matchZipper!1985 lt!2304509 (t!377421 s!2326)) e!3588798)))

(declare-fun b!5852346 () Bool)

(assert (=> b!5852346 (= e!3588798 (nullableZipper!1758 lt!2304509))))

(declare-fun b!5852347 () Bool)

(assert (=> b!5852347 (= e!3588798 (matchZipper!1985 (derivationStepZipper!1918 lt!2304509 (head!12392 (t!377421 s!2326))) (tail!11477 (t!377421 s!2326))))))

(assert (= (and d!1837991 c!1037510) b!5852346))

(assert (= (and d!1837991 (not c!1037510)) b!5852347))

(assert (=> d!1837991 m!6771770))

(declare-fun m!6771852 () Bool)

(assert (=> b!5852346 m!6771852))

(assert (=> b!5852347 m!6771774))

(assert (=> b!5852347 m!6771774))

(declare-fun m!6771854 () Bool)

(assert (=> b!5852347 m!6771854))

(assert (=> b!5852347 m!6771778))

(assert (=> b!5852347 m!6771854))

(assert (=> b!5852347 m!6771778))

(declare-fun m!6771856 () Bool)

(assert (=> b!5852347 m!6771856))

(assert (=> b!5851873 d!1837991))

(declare-fun d!1837993 () Bool)

(declare-fun lt!2304548 () Regex!15919)

(assert (=> d!1837993 (validRegex!7655 lt!2304548)))

(assert (=> d!1837993 (= lt!2304548 (generalisedUnion!1763 (unfocusZipperList!1340 zl!343)))))

(assert (=> d!1837993 (= (unfocusZipper!1661 zl!343) lt!2304548)))

(declare-fun bs!1378924 () Bool)

(assert (= bs!1378924 d!1837993))

(declare-fun m!6771858 () Bool)

(assert (=> bs!1378924 m!6771858))

(assert (=> bs!1378924 m!6771536))

(assert (=> bs!1378924 m!6771536))

(assert (=> bs!1378924 m!6771538))

(assert (=> b!5851881 d!1837993))

(declare-fun b!5852368 () Bool)

(declare-fun e!3588813 () Regex!15919)

(declare-fun e!3588815 () Regex!15919)

(assert (=> b!5852368 (= e!3588813 e!3588815)))

(declare-fun c!1037520 () Bool)

(assert (=> b!5852368 (= c!1037520 ((_ is Cons!63932) (unfocusZipperList!1340 zl!343)))))

(declare-fun b!5852369 () Bool)

(declare-fun e!3588814 () Bool)

(declare-fun lt!2304551 () Regex!15919)

(declare-fun isEmptyLang!1362 (Regex!15919) Bool)

(assert (=> b!5852369 (= e!3588814 (isEmptyLang!1362 lt!2304551))))

(declare-fun b!5852370 () Bool)

(declare-fun e!3588811 () Bool)

(declare-fun head!12393 (List!64056) Regex!15919)

(assert (=> b!5852370 (= e!3588811 (= lt!2304551 (head!12393 (unfocusZipperList!1340 zl!343))))))

(declare-fun b!5852371 () Bool)

(declare-fun isUnion!792 (Regex!15919) Bool)

(assert (=> b!5852371 (= e!3588811 (isUnion!792 lt!2304551))))

(declare-fun b!5852372 () Bool)

(declare-fun e!3588816 () Bool)

(assert (=> b!5852372 (= e!3588816 e!3588814)))

(declare-fun c!1037522 () Bool)

(declare-fun isEmpty!35794 (List!64056) Bool)

(assert (=> b!5852372 (= c!1037522 (isEmpty!35794 (unfocusZipperList!1340 zl!343)))))

(declare-fun d!1837995 () Bool)

(assert (=> d!1837995 e!3588816))

(declare-fun res!2463763 () Bool)

(assert (=> d!1837995 (=> (not res!2463763) (not e!3588816))))

(assert (=> d!1837995 (= res!2463763 (validRegex!7655 lt!2304551))))

(assert (=> d!1837995 (= lt!2304551 e!3588813)))

(declare-fun c!1037519 () Bool)

(declare-fun e!3588812 () Bool)

(assert (=> d!1837995 (= c!1037519 e!3588812)))

(declare-fun res!2463762 () Bool)

(assert (=> d!1837995 (=> (not res!2463762) (not e!3588812))))

(assert (=> d!1837995 (= res!2463762 ((_ is Cons!63932) (unfocusZipperList!1340 zl!343)))))

(declare-fun lambda!319988 () Int)

(declare-fun forall!15006 (List!64056 Int) Bool)

(assert (=> d!1837995 (forall!15006 (unfocusZipperList!1340 zl!343) lambda!319988)))

(assert (=> d!1837995 (= (generalisedUnion!1763 (unfocusZipperList!1340 zl!343)) lt!2304551)))

(declare-fun b!5852373 () Bool)

(assert (=> b!5852373 (= e!3588813 (h!70380 (unfocusZipperList!1340 zl!343)))))

(declare-fun b!5852374 () Bool)

(assert (=> b!5852374 (= e!3588812 (isEmpty!35794 (t!377419 (unfocusZipperList!1340 zl!343))))))

(declare-fun b!5852375 () Bool)

(assert (=> b!5852375 (= e!3588814 e!3588811)))

(declare-fun c!1037521 () Bool)

(declare-fun tail!11478 (List!64056) List!64056)

(assert (=> b!5852375 (= c!1037521 (isEmpty!35794 (tail!11478 (unfocusZipperList!1340 zl!343))))))

(declare-fun b!5852376 () Bool)

(assert (=> b!5852376 (= e!3588815 (Union!15919 (h!70380 (unfocusZipperList!1340 zl!343)) (generalisedUnion!1763 (t!377419 (unfocusZipperList!1340 zl!343)))))))

(declare-fun b!5852377 () Bool)

(assert (=> b!5852377 (= e!3588815 EmptyLang!15919)))

(assert (= (and d!1837995 res!2463762) b!5852374))

(assert (= (and d!1837995 c!1037519) b!5852373))

(assert (= (and d!1837995 (not c!1037519)) b!5852368))

(assert (= (and b!5852368 c!1037520) b!5852376))

(assert (= (and b!5852368 (not c!1037520)) b!5852377))

(assert (= (and d!1837995 res!2463763) b!5852372))

(assert (= (and b!5852372 c!1037522) b!5852369))

(assert (= (and b!5852372 (not c!1037522)) b!5852375))

(assert (= (and b!5852375 c!1037521) b!5852370))

(assert (= (and b!5852375 (not c!1037521)) b!5852371))

(assert (=> b!5852372 m!6771536))

(declare-fun m!6771860 () Bool)

(assert (=> b!5852372 m!6771860))

(assert (=> b!5852375 m!6771536))

(declare-fun m!6771862 () Bool)

(assert (=> b!5852375 m!6771862))

(assert (=> b!5852375 m!6771862))

(declare-fun m!6771864 () Bool)

(assert (=> b!5852375 m!6771864))

(declare-fun m!6771866 () Bool)

(assert (=> b!5852376 m!6771866))

(declare-fun m!6771868 () Bool)

(assert (=> d!1837995 m!6771868))

(assert (=> d!1837995 m!6771536))

(declare-fun m!6771870 () Bool)

(assert (=> d!1837995 m!6771870))

(declare-fun m!6771872 () Bool)

(assert (=> b!5852374 m!6771872))

(declare-fun m!6771874 () Bool)

(assert (=> b!5852371 m!6771874))

(declare-fun m!6771876 () Bool)

(assert (=> b!5852369 m!6771876))

(assert (=> b!5852370 m!6771536))

(declare-fun m!6771878 () Bool)

(assert (=> b!5852370 m!6771878))

(assert (=> b!5851864 d!1837995))

(declare-fun bs!1378925 () Bool)

(declare-fun d!1837997 () Bool)

(assert (= bs!1378925 (and d!1837997 d!1837995)))

(declare-fun lambda!319991 () Int)

(assert (=> bs!1378925 (= lambda!319991 lambda!319988)))

(declare-fun lt!2304554 () List!64056)

(assert (=> d!1837997 (forall!15006 lt!2304554 lambda!319991)))

(declare-fun e!3588819 () List!64056)

(assert (=> d!1837997 (= lt!2304554 e!3588819)))

(declare-fun c!1037525 () Bool)

(assert (=> d!1837997 (= c!1037525 ((_ is Cons!63933) zl!343))))

(assert (=> d!1837997 (= (unfocusZipperList!1340 zl!343) lt!2304554)))

(declare-fun b!5852382 () Bool)

(assert (=> b!5852382 (= e!3588819 (Cons!63932 (generalisedConcat!1516 (exprs!5803 (h!70381 zl!343))) (unfocusZipperList!1340 (t!377420 zl!343))))))

(declare-fun b!5852383 () Bool)

(assert (=> b!5852383 (= e!3588819 Nil!63932)))

(assert (= (and d!1837997 c!1037525) b!5852382))

(assert (= (and d!1837997 (not c!1037525)) b!5852383))

(declare-fun m!6771880 () Bool)

(assert (=> d!1837997 m!6771880))

(assert (=> b!5852382 m!6771548))

(declare-fun m!6771882 () Bool)

(assert (=> b!5852382 m!6771882))

(assert (=> b!5851864 d!1837997))

(declare-fun b!5852419 () Bool)

(assert (=> b!5852419 true))

(assert (=> b!5852419 true))

(declare-fun bs!1378926 () Bool)

(declare-fun b!5852423 () Bool)

(assert (= bs!1378926 (and b!5852423 b!5852419)))

(declare-fun lambda!319997 () Int)

(declare-fun lambda!319996 () Int)

(assert (=> bs!1378926 (not (= lambda!319997 lambda!319996))))

(assert (=> b!5852423 true))

(assert (=> b!5852423 true))

(declare-fun b!5852416 () Bool)

(declare-fun e!3588838 () Bool)

(declare-fun e!3588839 () Bool)

(assert (=> b!5852416 (= e!3588838 e!3588839)))

(declare-fun res!2463781 () Bool)

(assert (=> b!5852416 (= res!2463781 (not ((_ is EmptyLang!15919) (regTwo!32351 r!7292))))))

(assert (=> b!5852416 (=> (not res!2463781) (not e!3588839))))

(declare-fun b!5852417 () Bool)

(declare-fun e!3588841 () Bool)

(assert (=> b!5852417 (= e!3588841 (matchRSpec!3020 (regTwo!32351 (regTwo!32351 r!7292)) s!2326))))

(declare-fun b!5852418 () Bool)

(declare-fun c!1037536 () Bool)

(assert (=> b!5852418 (= c!1037536 ((_ is Union!15919) (regTwo!32351 r!7292)))))

(declare-fun e!3588844 () Bool)

(declare-fun e!3588843 () Bool)

(assert (=> b!5852418 (= e!3588844 e!3588843)))

(declare-fun e!3588840 () Bool)

(declare-fun call!458118 () Bool)

(assert (=> b!5852419 (= e!3588840 call!458118)))

(declare-fun b!5852420 () Bool)

(assert (=> b!5852420 (= e!3588843 e!3588841)))

(declare-fun res!2463780 () Bool)

(assert (=> b!5852420 (= res!2463780 (matchRSpec!3020 (regOne!32351 (regTwo!32351 r!7292)) s!2326))))

(assert (=> b!5852420 (=> res!2463780 e!3588841)))

(declare-fun b!5852421 () Bool)

(assert (=> b!5852421 (= e!3588844 (= s!2326 (Cons!63934 (c!1037365 (regTwo!32351 r!7292)) Nil!63934)))))

(declare-fun bm!458113 () Bool)

(declare-fun call!458119 () Bool)

(assert (=> bm!458113 (= call!458119 (isEmpty!35793 s!2326))))

(declare-fun b!5852422 () Bool)

(declare-fun c!1037534 () Bool)

(assert (=> b!5852422 (= c!1037534 ((_ is ElementMatch!15919) (regTwo!32351 r!7292)))))

(assert (=> b!5852422 (= e!3588839 e!3588844)))

(declare-fun d!1837999 () Bool)

(declare-fun c!1037535 () Bool)

(assert (=> d!1837999 (= c!1037535 ((_ is EmptyExpr!15919) (regTwo!32351 r!7292)))))

(assert (=> d!1837999 (= (matchRSpec!3020 (regTwo!32351 r!7292) s!2326) e!3588838)))

(declare-fun e!3588842 () Bool)

(assert (=> b!5852423 (= e!3588842 call!458118)))

(declare-fun b!5852424 () Bool)

(assert (=> b!5852424 (= e!3588843 e!3588842)))

(declare-fun c!1037537 () Bool)

(assert (=> b!5852424 (= c!1037537 ((_ is Star!15919) (regTwo!32351 r!7292)))))

(declare-fun b!5852425 () Bool)

(assert (=> b!5852425 (= e!3588838 call!458119)))

(declare-fun bm!458114 () Bool)

(declare-fun Exists!2991 (Int) Bool)

(assert (=> bm!458114 (= call!458118 (Exists!2991 (ite c!1037537 lambda!319996 lambda!319997)))))

(declare-fun b!5852426 () Bool)

(declare-fun res!2463782 () Bool)

(assert (=> b!5852426 (=> res!2463782 e!3588840)))

(assert (=> b!5852426 (= res!2463782 call!458119)))

(assert (=> b!5852426 (= e!3588842 e!3588840)))

(assert (= (and d!1837999 c!1037535) b!5852425))

(assert (= (and d!1837999 (not c!1037535)) b!5852416))

(assert (= (and b!5852416 res!2463781) b!5852422))

(assert (= (and b!5852422 c!1037534) b!5852421))

(assert (= (and b!5852422 (not c!1037534)) b!5852418))

(assert (= (and b!5852418 c!1037536) b!5852420))

(assert (= (and b!5852418 (not c!1037536)) b!5852424))

(assert (= (and b!5852420 (not res!2463780)) b!5852417))

(assert (= (and b!5852424 c!1037537) b!5852426))

(assert (= (and b!5852424 (not c!1037537)) b!5852423))

(assert (= (and b!5852426 (not res!2463782)) b!5852419))

(assert (= (or b!5852419 b!5852423) bm!458114))

(assert (= (or b!5852425 b!5852426) bm!458113))

(declare-fun m!6771884 () Bool)

(assert (=> b!5852417 m!6771884))

(declare-fun m!6771886 () Bool)

(assert (=> b!5852420 m!6771886))

(assert (=> bm!458113 m!6771840))

(declare-fun m!6771888 () Bool)

(assert (=> bm!458114 m!6771888))

(assert (=> b!5851883 d!1837999))

(declare-fun d!1838001 () Bool)

(assert (=> d!1838001 (= (matchR!8102 (regOne!32351 r!7292) s!2326) (matchRSpec!3020 (regOne!32351 r!7292) s!2326))))

(declare-fun lt!2304557 () Unit!157109)

(declare-fun choose!44381 (Regex!15919 List!64058) Unit!157109)

(assert (=> d!1838001 (= lt!2304557 (choose!44381 (regOne!32351 r!7292) s!2326))))

(assert (=> d!1838001 (validRegex!7655 (regOne!32351 r!7292))))

(assert (=> d!1838001 (= (mainMatchTheorem!3020 (regOne!32351 r!7292) s!2326) lt!2304557)))

(declare-fun bs!1378927 () Bool)

(assert (= bs!1378927 d!1838001))

(assert (=> bs!1378927 m!6771562))

(assert (=> bs!1378927 m!6771558))

(declare-fun m!6771890 () Bool)

(assert (=> bs!1378927 m!6771890))

(declare-fun m!6771892 () Bool)

(assert (=> bs!1378927 m!6771892))

(assert (=> b!5851883 d!1838001))

(declare-fun b!5852459 () Bool)

(declare-fun res!2463801 () Bool)

(declare-fun e!3588859 () Bool)

(assert (=> b!5852459 (=> (not res!2463801) (not e!3588859))))

(declare-fun call!458122 () Bool)

(assert (=> b!5852459 (= res!2463801 (not call!458122))))

(declare-fun d!1838003 () Bool)

(declare-fun e!3588860 () Bool)

(assert (=> d!1838003 e!3588860))

(declare-fun c!1037545 () Bool)

(assert (=> d!1838003 (= c!1037545 ((_ is EmptyExpr!15919) (regTwo!32351 r!7292)))))

(declare-fun lt!2304560 () Bool)

(declare-fun e!3588864 () Bool)

(assert (=> d!1838003 (= lt!2304560 e!3588864)))

(declare-fun c!1037546 () Bool)

(assert (=> d!1838003 (= c!1037546 (isEmpty!35793 s!2326))))

(assert (=> d!1838003 (validRegex!7655 (regTwo!32351 r!7292))))

(assert (=> d!1838003 (= (matchR!8102 (regTwo!32351 r!7292) s!2326) lt!2304560)))

(declare-fun b!5852460 () Bool)

(declare-fun e!3588863 () Bool)

(assert (=> b!5852460 (= e!3588860 e!3588863)))

(declare-fun c!1037544 () Bool)

(assert (=> b!5852460 (= c!1037544 ((_ is EmptyLang!15919) (regTwo!32351 r!7292)))))

(declare-fun b!5852461 () Bool)

(declare-fun res!2463803 () Bool)

(declare-fun e!3588865 () Bool)

(assert (=> b!5852461 (=> res!2463803 e!3588865)))

(assert (=> b!5852461 (= res!2463803 e!3588859)))

(declare-fun res!2463800 () Bool)

(assert (=> b!5852461 (=> (not res!2463800) (not e!3588859))))

(assert (=> b!5852461 (= res!2463800 lt!2304560)))

(declare-fun bm!458117 () Bool)

(assert (=> bm!458117 (= call!458122 (isEmpty!35793 s!2326))))

(declare-fun b!5852462 () Bool)

(assert (=> b!5852462 (= e!3588859 (= (head!12392 s!2326) (c!1037365 (regTwo!32351 r!7292))))))

(declare-fun b!5852463 () Bool)

(declare-fun e!3588862 () Bool)

(assert (=> b!5852463 (= e!3588862 (not (= (head!12392 s!2326) (c!1037365 (regTwo!32351 r!7292)))))))

(declare-fun b!5852464 () Bool)

(declare-fun derivativeStep!4657 (Regex!15919 C!32108) Regex!15919)

(assert (=> b!5852464 (= e!3588864 (matchR!8102 (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326)) (tail!11477 s!2326)))))

(declare-fun b!5852465 () Bool)

(declare-fun e!3588861 () Bool)

(assert (=> b!5852465 (= e!3588865 e!3588861)))

(declare-fun res!2463806 () Bool)

(assert (=> b!5852465 (=> (not res!2463806) (not e!3588861))))

(assert (=> b!5852465 (= res!2463806 (not lt!2304560))))

(declare-fun b!5852466 () Bool)

(declare-fun res!2463802 () Bool)

(assert (=> b!5852466 (=> (not res!2463802) (not e!3588859))))

(assert (=> b!5852466 (= res!2463802 (isEmpty!35793 (tail!11477 s!2326)))))

(declare-fun b!5852467 () Bool)

(assert (=> b!5852467 (= e!3588861 e!3588862)))

(declare-fun res!2463804 () Bool)

(assert (=> b!5852467 (=> res!2463804 e!3588862)))

(assert (=> b!5852467 (= res!2463804 call!458122)))

(declare-fun b!5852468 () Bool)

(assert (=> b!5852468 (= e!3588860 (= lt!2304560 call!458122))))

(declare-fun b!5852469 () Bool)

(assert (=> b!5852469 (= e!3588864 (nullable!5919 (regTwo!32351 r!7292)))))

(declare-fun b!5852470 () Bool)

(declare-fun res!2463799 () Bool)

(assert (=> b!5852470 (=> res!2463799 e!3588865)))

(assert (=> b!5852470 (= res!2463799 (not ((_ is ElementMatch!15919) (regTwo!32351 r!7292))))))

(assert (=> b!5852470 (= e!3588863 e!3588865)))

(declare-fun b!5852471 () Bool)

(declare-fun res!2463805 () Bool)

(assert (=> b!5852471 (=> res!2463805 e!3588862)))

(assert (=> b!5852471 (= res!2463805 (not (isEmpty!35793 (tail!11477 s!2326))))))

(declare-fun b!5852472 () Bool)

(assert (=> b!5852472 (= e!3588863 (not lt!2304560))))

(assert (= (and d!1838003 c!1037546) b!5852469))

(assert (= (and d!1838003 (not c!1037546)) b!5852464))

(assert (= (and d!1838003 c!1037545) b!5852468))

(assert (= (and d!1838003 (not c!1037545)) b!5852460))

(assert (= (and b!5852460 c!1037544) b!5852472))

(assert (= (and b!5852460 (not c!1037544)) b!5852470))

(assert (= (and b!5852470 (not res!2463799)) b!5852461))

(assert (= (and b!5852461 res!2463800) b!5852459))

(assert (= (and b!5852459 res!2463801) b!5852466))

(assert (= (and b!5852466 res!2463802) b!5852462))

(assert (= (and b!5852461 (not res!2463803)) b!5852465))

(assert (= (and b!5852465 res!2463806) b!5852467))

(assert (= (and b!5852467 (not res!2463804)) b!5852471))

(assert (= (and b!5852471 (not res!2463805)) b!5852463))

(assert (= (or b!5852468 b!5852459 b!5852467) bm!458117))

(assert (=> bm!458117 m!6771840))

(assert (=> b!5852463 m!6771844))

(declare-fun m!6771894 () Bool)

(assert (=> b!5852469 m!6771894))

(assert (=> b!5852471 m!6771848))

(assert (=> b!5852471 m!6771848))

(declare-fun m!6771896 () Bool)

(assert (=> b!5852471 m!6771896))

(assert (=> b!5852466 m!6771848))

(assert (=> b!5852466 m!6771848))

(assert (=> b!5852466 m!6771896))

(assert (=> b!5852464 m!6771844))

(assert (=> b!5852464 m!6771844))

(declare-fun m!6771898 () Bool)

(assert (=> b!5852464 m!6771898))

(assert (=> b!5852464 m!6771848))

(assert (=> b!5852464 m!6771898))

(assert (=> b!5852464 m!6771848))

(declare-fun m!6771900 () Bool)

(assert (=> b!5852464 m!6771900))

(assert (=> b!5852462 m!6771844))

(assert (=> d!1838003 m!6771840))

(declare-fun m!6771902 () Bool)

(assert (=> d!1838003 m!6771902))

(assert (=> b!5851883 d!1838003))

(declare-fun d!1838005 () Bool)

(assert (=> d!1838005 (= (matchR!8102 (regTwo!32351 r!7292) s!2326) (matchRSpec!3020 (regTwo!32351 r!7292) s!2326))))

(declare-fun lt!2304561 () Unit!157109)

(assert (=> d!1838005 (= lt!2304561 (choose!44381 (regTwo!32351 r!7292) s!2326))))

(assert (=> d!1838005 (validRegex!7655 (regTwo!32351 r!7292))))

(assert (=> d!1838005 (= (mainMatchTheorem!3020 (regTwo!32351 r!7292) s!2326) lt!2304561)))

(declare-fun bs!1378928 () Bool)

(assert (= bs!1378928 d!1838005))

(assert (=> bs!1378928 m!6771556))

(assert (=> bs!1378928 m!6771552))

(declare-fun m!6771904 () Bool)

(assert (=> bs!1378928 m!6771904))

(assert (=> bs!1378928 m!6771902))

(assert (=> b!5851883 d!1838005))

(declare-fun bs!1378929 () Bool)

(declare-fun b!5852476 () Bool)

(assert (= bs!1378929 (and b!5852476 b!5852419)))

(declare-fun lambda!319998 () Int)

(assert (=> bs!1378929 (= (and (= (reg!16248 (regOne!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292))) (= (regOne!32351 r!7292) (regTwo!32351 r!7292))) (= lambda!319998 lambda!319996))))

(declare-fun bs!1378930 () Bool)

(assert (= bs!1378930 (and b!5852476 b!5852423)))

(assert (=> bs!1378930 (not (= lambda!319998 lambda!319997))))

(assert (=> b!5852476 true))

(assert (=> b!5852476 true))

(declare-fun bs!1378931 () Bool)

(declare-fun b!5852480 () Bool)

(assert (= bs!1378931 (and b!5852480 b!5852419)))

(declare-fun lambda!319999 () Int)

(assert (=> bs!1378931 (not (= lambda!319999 lambda!319996))))

(declare-fun bs!1378932 () Bool)

(assert (= bs!1378932 (and b!5852480 b!5852423)))

(assert (=> bs!1378932 (= (and (= (regOne!32350 (regOne!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))) (= (regTwo!32350 (regOne!32351 r!7292)) (regTwo!32350 (regTwo!32351 r!7292)))) (= lambda!319999 lambda!319997))))

(declare-fun bs!1378933 () Bool)

(assert (= bs!1378933 (and b!5852480 b!5852476)))

(assert (=> bs!1378933 (not (= lambda!319999 lambda!319998))))

(assert (=> b!5852480 true))

(assert (=> b!5852480 true))

(declare-fun b!5852473 () Bool)

(declare-fun e!3588866 () Bool)

(declare-fun e!3588867 () Bool)

(assert (=> b!5852473 (= e!3588866 e!3588867)))

(declare-fun res!2463808 () Bool)

(assert (=> b!5852473 (= res!2463808 (not ((_ is EmptyLang!15919) (regOne!32351 r!7292))))))

(assert (=> b!5852473 (=> (not res!2463808) (not e!3588867))))

(declare-fun b!5852474 () Bool)

(declare-fun e!3588869 () Bool)

(assert (=> b!5852474 (= e!3588869 (matchRSpec!3020 (regTwo!32351 (regOne!32351 r!7292)) s!2326))))

(declare-fun b!5852475 () Bool)

(declare-fun c!1037549 () Bool)

(assert (=> b!5852475 (= c!1037549 ((_ is Union!15919) (regOne!32351 r!7292)))))

(declare-fun e!3588872 () Bool)

(declare-fun e!3588871 () Bool)

(assert (=> b!5852475 (= e!3588872 e!3588871)))

(declare-fun e!3588868 () Bool)

(declare-fun call!458123 () Bool)

(assert (=> b!5852476 (= e!3588868 call!458123)))

(declare-fun b!5852477 () Bool)

(assert (=> b!5852477 (= e!3588871 e!3588869)))

(declare-fun res!2463807 () Bool)

(assert (=> b!5852477 (= res!2463807 (matchRSpec!3020 (regOne!32351 (regOne!32351 r!7292)) s!2326))))

(assert (=> b!5852477 (=> res!2463807 e!3588869)))

(declare-fun b!5852478 () Bool)

(assert (=> b!5852478 (= e!3588872 (= s!2326 (Cons!63934 (c!1037365 (regOne!32351 r!7292)) Nil!63934)))))

(declare-fun bm!458118 () Bool)

(declare-fun call!458124 () Bool)

(assert (=> bm!458118 (= call!458124 (isEmpty!35793 s!2326))))

(declare-fun b!5852479 () Bool)

(declare-fun c!1037547 () Bool)

(assert (=> b!5852479 (= c!1037547 ((_ is ElementMatch!15919) (regOne!32351 r!7292)))))

(assert (=> b!5852479 (= e!3588867 e!3588872)))

(declare-fun d!1838007 () Bool)

(declare-fun c!1037548 () Bool)

(assert (=> d!1838007 (= c!1037548 ((_ is EmptyExpr!15919) (regOne!32351 r!7292)))))

(assert (=> d!1838007 (= (matchRSpec!3020 (regOne!32351 r!7292) s!2326) e!3588866)))

(declare-fun e!3588870 () Bool)

(assert (=> b!5852480 (= e!3588870 call!458123)))

(declare-fun b!5852481 () Bool)

(assert (=> b!5852481 (= e!3588871 e!3588870)))

(declare-fun c!1037550 () Bool)

(assert (=> b!5852481 (= c!1037550 ((_ is Star!15919) (regOne!32351 r!7292)))))

(declare-fun b!5852482 () Bool)

(assert (=> b!5852482 (= e!3588866 call!458124)))

(declare-fun bm!458119 () Bool)

(assert (=> bm!458119 (= call!458123 (Exists!2991 (ite c!1037550 lambda!319998 lambda!319999)))))

(declare-fun b!5852483 () Bool)

(declare-fun res!2463809 () Bool)

(assert (=> b!5852483 (=> res!2463809 e!3588868)))

(assert (=> b!5852483 (= res!2463809 call!458124)))

(assert (=> b!5852483 (= e!3588870 e!3588868)))

(assert (= (and d!1838007 c!1037548) b!5852482))

(assert (= (and d!1838007 (not c!1037548)) b!5852473))

(assert (= (and b!5852473 res!2463808) b!5852479))

(assert (= (and b!5852479 c!1037547) b!5852478))

(assert (= (and b!5852479 (not c!1037547)) b!5852475))

(assert (= (and b!5852475 c!1037549) b!5852477))

(assert (= (and b!5852475 (not c!1037549)) b!5852481))

(assert (= (and b!5852477 (not res!2463807)) b!5852474))

(assert (= (and b!5852481 c!1037550) b!5852483))

(assert (= (and b!5852481 (not c!1037550)) b!5852480))

(assert (= (and b!5852483 (not res!2463809)) b!5852476))

(assert (= (or b!5852476 b!5852480) bm!458119))

(assert (= (or b!5852482 b!5852483) bm!458118))

(declare-fun m!6771906 () Bool)

(assert (=> b!5852474 m!6771906))

(declare-fun m!6771908 () Bool)

(assert (=> b!5852477 m!6771908))

(assert (=> bm!458118 m!6771840))

(declare-fun m!6771910 () Bool)

(assert (=> bm!458119 m!6771910))

(assert (=> b!5851883 d!1838007))

(declare-fun b!5852484 () Bool)

(declare-fun res!2463812 () Bool)

(declare-fun e!3588873 () Bool)

(assert (=> b!5852484 (=> (not res!2463812) (not e!3588873))))

(declare-fun call!458125 () Bool)

(assert (=> b!5852484 (= res!2463812 (not call!458125))))

(declare-fun d!1838009 () Bool)

(declare-fun e!3588874 () Bool)

(assert (=> d!1838009 e!3588874))

(declare-fun c!1037552 () Bool)

(assert (=> d!1838009 (= c!1037552 ((_ is EmptyExpr!15919) (regOne!32351 r!7292)))))

(declare-fun lt!2304562 () Bool)

(declare-fun e!3588878 () Bool)

(assert (=> d!1838009 (= lt!2304562 e!3588878)))

(declare-fun c!1037553 () Bool)

(assert (=> d!1838009 (= c!1037553 (isEmpty!35793 s!2326))))

(assert (=> d!1838009 (validRegex!7655 (regOne!32351 r!7292))))

(assert (=> d!1838009 (= (matchR!8102 (regOne!32351 r!7292) s!2326) lt!2304562)))

(declare-fun b!5852485 () Bool)

(declare-fun e!3588877 () Bool)

(assert (=> b!5852485 (= e!3588874 e!3588877)))

(declare-fun c!1037551 () Bool)

(assert (=> b!5852485 (= c!1037551 ((_ is EmptyLang!15919) (regOne!32351 r!7292)))))

(declare-fun b!5852486 () Bool)

(declare-fun res!2463814 () Bool)

(declare-fun e!3588879 () Bool)

(assert (=> b!5852486 (=> res!2463814 e!3588879)))

(assert (=> b!5852486 (= res!2463814 e!3588873)))

(declare-fun res!2463811 () Bool)

(assert (=> b!5852486 (=> (not res!2463811) (not e!3588873))))

(assert (=> b!5852486 (= res!2463811 lt!2304562)))

(declare-fun bm!458120 () Bool)

(assert (=> bm!458120 (= call!458125 (isEmpty!35793 s!2326))))

(declare-fun b!5852487 () Bool)

(assert (=> b!5852487 (= e!3588873 (= (head!12392 s!2326) (c!1037365 (regOne!32351 r!7292))))))

(declare-fun b!5852488 () Bool)

(declare-fun e!3588876 () Bool)

(assert (=> b!5852488 (= e!3588876 (not (= (head!12392 s!2326) (c!1037365 (regOne!32351 r!7292)))))))

(declare-fun b!5852489 () Bool)

(assert (=> b!5852489 (= e!3588878 (matchR!8102 (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326)) (tail!11477 s!2326)))))

(declare-fun b!5852490 () Bool)

(declare-fun e!3588875 () Bool)

(assert (=> b!5852490 (= e!3588879 e!3588875)))

(declare-fun res!2463817 () Bool)

(assert (=> b!5852490 (=> (not res!2463817) (not e!3588875))))

(assert (=> b!5852490 (= res!2463817 (not lt!2304562))))

(declare-fun b!5852491 () Bool)

(declare-fun res!2463813 () Bool)

(assert (=> b!5852491 (=> (not res!2463813) (not e!3588873))))

(assert (=> b!5852491 (= res!2463813 (isEmpty!35793 (tail!11477 s!2326)))))

(declare-fun b!5852492 () Bool)

(assert (=> b!5852492 (= e!3588875 e!3588876)))

(declare-fun res!2463815 () Bool)

(assert (=> b!5852492 (=> res!2463815 e!3588876)))

(assert (=> b!5852492 (= res!2463815 call!458125)))

(declare-fun b!5852493 () Bool)

(assert (=> b!5852493 (= e!3588874 (= lt!2304562 call!458125))))

(declare-fun b!5852494 () Bool)

(assert (=> b!5852494 (= e!3588878 (nullable!5919 (regOne!32351 r!7292)))))

(declare-fun b!5852495 () Bool)

(declare-fun res!2463810 () Bool)

(assert (=> b!5852495 (=> res!2463810 e!3588879)))

(assert (=> b!5852495 (= res!2463810 (not ((_ is ElementMatch!15919) (regOne!32351 r!7292))))))

(assert (=> b!5852495 (= e!3588877 e!3588879)))

(declare-fun b!5852496 () Bool)

(declare-fun res!2463816 () Bool)

(assert (=> b!5852496 (=> res!2463816 e!3588876)))

(assert (=> b!5852496 (= res!2463816 (not (isEmpty!35793 (tail!11477 s!2326))))))

(declare-fun b!5852497 () Bool)

(assert (=> b!5852497 (= e!3588877 (not lt!2304562))))

(assert (= (and d!1838009 c!1037553) b!5852494))

(assert (= (and d!1838009 (not c!1037553)) b!5852489))

(assert (= (and d!1838009 c!1037552) b!5852493))

(assert (= (and d!1838009 (not c!1037552)) b!5852485))

(assert (= (and b!5852485 c!1037551) b!5852497))

(assert (= (and b!5852485 (not c!1037551)) b!5852495))

(assert (= (and b!5852495 (not res!2463810)) b!5852486))

(assert (= (and b!5852486 res!2463811) b!5852484))

(assert (= (and b!5852484 res!2463812) b!5852491))

(assert (= (and b!5852491 res!2463813) b!5852487))

(assert (= (and b!5852486 (not res!2463814)) b!5852490))

(assert (= (and b!5852490 res!2463817) b!5852492))

(assert (= (and b!5852492 (not res!2463815)) b!5852496))

(assert (= (and b!5852496 (not res!2463816)) b!5852488))

(assert (= (or b!5852493 b!5852484 b!5852492) bm!458120))

(assert (=> bm!458120 m!6771840))

(assert (=> b!5852488 m!6771844))

(declare-fun m!6771912 () Bool)

(assert (=> b!5852494 m!6771912))

(assert (=> b!5852496 m!6771848))

(assert (=> b!5852496 m!6771848))

(assert (=> b!5852496 m!6771896))

(assert (=> b!5852491 m!6771848))

(assert (=> b!5852491 m!6771848))

(assert (=> b!5852491 m!6771896))

(assert (=> b!5852489 m!6771844))

(assert (=> b!5852489 m!6771844))

(declare-fun m!6771914 () Bool)

(assert (=> b!5852489 m!6771914))

(assert (=> b!5852489 m!6771848))

(assert (=> b!5852489 m!6771914))

(assert (=> b!5852489 m!6771848))

(declare-fun m!6771916 () Bool)

(assert (=> b!5852489 m!6771916))

(assert (=> b!5852487 m!6771844))

(assert (=> d!1838009 m!6771840))

(assert (=> d!1838009 m!6771892))

(assert (=> b!5851883 d!1838009))

(declare-fun bs!1378934 () Bool)

(declare-fun d!1838011 () Bool)

(assert (= bs!1378934 (and d!1838011 d!1837995)))

(declare-fun lambda!320002 () Int)

(assert (=> bs!1378934 (= lambda!320002 lambda!319988)))

(declare-fun bs!1378935 () Bool)

(assert (= bs!1378935 (and d!1838011 d!1837997)))

(assert (=> bs!1378935 (= lambda!320002 lambda!319991)))

(assert (=> d!1838011 (= (inv!83044 (h!70381 zl!343)) (forall!15006 (exprs!5803 (h!70381 zl!343)) lambda!320002))))

(declare-fun bs!1378936 () Bool)

(assert (= bs!1378936 d!1838011))

(declare-fun m!6771918 () Bool)

(assert (=> bs!1378936 m!6771918))

(assert (=> b!5851874 d!1838011))

(declare-fun bs!1378937 () Bool)

(declare-fun d!1838013 () Bool)

(assert (= bs!1378937 (and d!1838013 d!1837995)))

(declare-fun lambda!320003 () Int)

(assert (=> bs!1378937 (= lambda!320003 lambda!319988)))

(declare-fun bs!1378938 () Bool)

(assert (= bs!1378938 (and d!1838013 d!1837997)))

(assert (=> bs!1378938 (= lambda!320003 lambda!319991)))

(declare-fun bs!1378939 () Bool)

(assert (= bs!1378939 (and d!1838013 d!1838011)))

(assert (=> bs!1378939 (= lambda!320003 lambda!320002)))

(assert (=> d!1838013 (= (inv!83044 (Context!10607 (Cons!63932 (regTwo!32351 r!7292) Nil!63932))) (forall!15006 (exprs!5803 (Context!10607 (Cons!63932 (regTwo!32351 r!7292) Nil!63932))) lambda!320003))))

(declare-fun bs!1378940 () Bool)

(assert (= bs!1378940 d!1838013))

(declare-fun m!6771920 () Bool)

(assert (=> bs!1378940 m!6771920))

(assert (=> b!5851863 d!1838013))

(declare-fun bs!1378941 () Bool)

(declare-fun b!5852501 () Bool)

(assert (= bs!1378941 (and b!5852501 b!5852419)))

(declare-fun lambda!320004 () Int)

(assert (=> bs!1378941 (= (and (= (reg!16248 r!7292) (reg!16248 (regTwo!32351 r!7292))) (= r!7292 (regTwo!32351 r!7292))) (= lambda!320004 lambda!319996))))

(declare-fun bs!1378942 () Bool)

(assert (= bs!1378942 (and b!5852501 b!5852423)))

(assert (=> bs!1378942 (not (= lambda!320004 lambda!319997))))

(declare-fun bs!1378943 () Bool)

(assert (= bs!1378943 (and b!5852501 b!5852476)))

(assert (=> bs!1378943 (= (and (= (reg!16248 r!7292) (reg!16248 (regOne!32351 r!7292))) (= r!7292 (regOne!32351 r!7292))) (= lambda!320004 lambda!319998))))

(declare-fun bs!1378944 () Bool)

(assert (= bs!1378944 (and b!5852501 b!5852480)))

(assert (=> bs!1378944 (not (= lambda!320004 lambda!319999))))

(assert (=> b!5852501 true))

(assert (=> b!5852501 true))

(declare-fun bs!1378945 () Bool)

(declare-fun b!5852505 () Bool)

(assert (= bs!1378945 (and b!5852505 b!5852501)))

(declare-fun lambda!320005 () Int)

(assert (=> bs!1378945 (not (= lambda!320005 lambda!320004))))

(declare-fun bs!1378946 () Bool)

(assert (= bs!1378946 (and b!5852505 b!5852480)))

(assert (=> bs!1378946 (= (and (= (regOne!32350 r!7292) (regOne!32350 (regOne!32351 r!7292))) (= (regTwo!32350 r!7292) (regTwo!32350 (regOne!32351 r!7292)))) (= lambda!320005 lambda!319999))))

(declare-fun bs!1378947 () Bool)

(assert (= bs!1378947 (and b!5852505 b!5852419)))

(assert (=> bs!1378947 (not (= lambda!320005 lambda!319996))))

(declare-fun bs!1378948 () Bool)

(assert (= bs!1378948 (and b!5852505 b!5852423)))

(assert (=> bs!1378948 (= (and (= (regOne!32350 r!7292) (regOne!32350 (regTwo!32351 r!7292))) (= (regTwo!32350 r!7292) (regTwo!32350 (regTwo!32351 r!7292)))) (= lambda!320005 lambda!319997))))

(declare-fun bs!1378949 () Bool)

(assert (= bs!1378949 (and b!5852505 b!5852476)))

(assert (=> bs!1378949 (not (= lambda!320005 lambda!319998))))

(assert (=> b!5852505 true))

(assert (=> b!5852505 true))

(declare-fun b!5852498 () Bool)

(declare-fun e!3588880 () Bool)

(declare-fun e!3588881 () Bool)

(assert (=> b!5852498 (= e!3588880 e!3588881)))

(declare-fun res!2463819 () Bool)

(assert (=> b!5852498 (= res!2463819 (not ((_ is EmptyLang!15919) r!7292)))))

(assert (=> b!5852498 (=> (not res!2463819) (not e!3588881))))

(declare-fun b!5852499 () Bool)

(declare-fun e!3588883 () Bool)

(assert (=> b!5852499 (= e!3588883 (matchRSpec!3020 (regTwo!32351 r!7292) s!2326))))

(declare-fun b!5852500 () Bool)

(declare-fun c!1037556 () Bool)

(assert (=> b!5852500 (= c!1037556 ((_ is Union!15919) r!7292))))

(declare-fun e!3588886 () Bool)

(declare-fun e!3588885 () Bool)

(assert (=> b!5852500 (= e!3588886 e!3588885)))

(declare-fun e!3588882 () Bool)

(declare-fun call!458126 () Bool)

(assert (=> b!5852501 (= e!3588882 call!458126)))

(declare-fun b!5852502 () Bool)

(assert (=> b!5852502 (= e!3588885 e!3588883)))

(declare-fun res!2463818 () Bool)

(assert (=> b!5852502 (= res!2463818 (matchRSpec!3020 (regOne!32351 r!7292) s!2326))))

(assert (=> b!5852502 (=> res!2463818 e!3588883)))

(declare-fun b!5852503 () Bool)

(assert (=> b!5852503 (= e!3588886 (= s!2326 (Cons!63934 (c!1037365 r!7292) Nil!63934)))))

(declare-fun bm!458121 () Bool)

(declare-fun call!458127 () Bool)

(assert (=> bm!458121 (= call!458127 (isEmpty!35793 s!2326))))

(declare-fun b!5852504 () Bool)

(declare-fun c!1037554 () Bool)

(assert (=> b!5852504 (= c!1037554 ((_ is ElementMatch!15919) r!7292))))

(assert (=> b!5852504 (= e!3588881 e!3588886)))

(declare-fun d!1838015 () Bool)

(declare-fun c!1037555 () Bool)

(assert (=> d!1838015 (= c!1037555 ((_ is EmptyExpr!15919) r!7292))))

(assert (=> d!1838015 (= (matchRSpec!3020 r!7292 s!2326) e!3588880)))

(declare-fun e!3588884 () Bool)

(assert (=> b!5852505 (= e!3588884 call!458126)))

(declare-fun b!5852506 () Bool)

(assert (=> b!5852506 (= e!3588885 e!3588884)))

(declare-fun c!1037557 () Bool)

(assert (=> b!5852506 (= c!1037557 ((_ is Star!15919) r!7292))))

(declare-fun b!5852507 () Bool)

(assert (=> b!5852507 (= e!3588880 call!458127)))

(declare-fun bm!458122 () Bool)

(assert (=> bm!458122 (= call!458126 (Exists!2991 (ite c!1037557 lambda!320004 lambda!320005)))))

(declare-fun b!5852508 () Bool)

(declare-fun res!2463820 () Bool)

(assert (=> b!5852508 (=> res!2463820 e!3588882)))

(assert (=> b!5852508 (= res!2463820 call!458127)))

(assert (=> b!5852508 (= e!3588884 e!3588882)))

(assert (= (and d!1838015 c!1037555) b!5852507))

(assert (= (and d!1838015 (not c!1037555)) b!5852498))

(assert (= (and b!5852498 res!2463819) b!5852504))

(assert (= (and b!5852504 c!1037554) b!5852503))

(assert (= (and b!5852504 (not c!1037554)) b!5852500))

(assert (= (and b!5852500 c!1037556) b!5852502))

(assert (= (and b!5852500 (not c!1037556)) b!5852506))

(assert (= (and b!5852502 (not res!2463818)) b!5852499))

(assert (= (and b!5852506 c!1037557) b!5852508))

(assert (= (and b!5852506 (not c!1037557)) b!5852505))

(assert (= (and b!5852508 (not res!2463820)) b!5852501))

(assert (= (or b!5852501 b!5852505) bm!458122))

(assert (= (or b!5852507 b!5852508) bm!458121))

(assert (=> b!5852499 m!6771552))

(assert (=> b!5852502 m!6771558))

(assert (=> bm!458121 m!6771840))

(declare-fun m!6771922 () Bool)

(assert (=> bm!458122 m!6771922))

(assert (=> b!5851876 d!1838015))

(declare-fun b!5852509 () Bool)

(declare-fun res!2463823 () Bool)

(declare-fun e!3588887 () Bool)

(assert (=> b!5852509 (=> (not res!2463823) (not e!3588887))))

(declare-fun call!458128 () Bool)

(assert (=> b!5852509 (= res!2463823 (not call!458128))))

(declare-fun d!1838017 () Bool)

(declare-fun e!3588888 () Bool)

(assert (=> d!1838017 e!3588888))

(declare-fun c!1037559 () Bool)

(assert (=> d!1838017 (= c!1037559 ((_ is EmptyExpr!15919) r!7292))))

(declare-fun lt!2304563 () Bool)

(declare-fun e!3588892 () Bool)

(assert (=> d!1838017 (= lt!2304563 e!3588892)))

(declare-fun c!1037560 () Bool)

(assert (=> d!1838017 (= c!1037560 (isEmpty!35793 s!2326))))

(assert (=> d!1838017 (validRegex!7655 r!7292)))

(assert (=> d!1838017 (= (matchR!8102 r!7292 s!2326) lt!2304563)))

(declare-fun b!5852510 () Bool)

(declare-fun e!3588891 () Bool)

(assert (=> b!5852510 (= e!3588888 e!3588891)))

(declare-fun c!1037558 () Bool)

(assert (=> b!5852510 (= c!1037558 ((_ is EmptyLang!15919) r!7292))))

(declare-fun b!5852511 () Bool)

(declare-fun res!2463825 () Bool)

(declare-fun e!3588893 () Bool)

(assert (=> b!5852511 (=> res!2463825 e!3588893)))

(assert (=> b!5852511 (= res!2463825 e!3588887)))

(declare-fun res!2463822 () Bool)

(assert (=> b!5852511 (=> (not res!2463822) (not e!3588887))))

(assert (=> b!5852511 (= res!2463822 lt!2304563)))

(declare-fun bm!458123 () Bool)

(assert (=> bm!458123 (= call!458128 (isEmpty!35793 s!2326))))

(declare-fun b!5852512 () Bool)

(assert (=> b!5852512 (= e!3588887 (= (head!12392 s!2326) (c!1037365 r!7292)))))

(declare-fun b!5852513 () Bool)

(declare-fun e!3588890 () Bool)

(assert (=> b!5852513 (= e!3588890 (not (= (head!12392 s!2326) (c!1037365 r!7292))))))

(declare-fun b!5852514 () Bool)

(assert (=> b!5852514 (= e!3588892 (matchR!8102 (derivativeStep!4657 r!7292 (head!12392 s!2326)) (tail!11477 s!2326)))))

(declare-fun b!5852515 () Bool)

(declare-fun e!3588889 () Bool)

(assert (=> b!5852515 (= e!3588893 e!3588889)))

(declare-fun res!2463828 () Bool)

(assert (=> b!5852515 (=> (not res!2463828) (not e!3588889))))

(assert (=> b!5852515 (= res!2463828 (not lt!2304563))))

(declare-fun b!5852516 () Bool)

(declare-fun res!2463824 () Bool)

(assert (=> b!5852516 (=> (not res!2463824) (not e!3588887))))

(assert (=> b!5852516 (= res!2463824 (isEmpty!35793 (tail!11477 s!2326)))))

(declare-fun b!5852517 () Bool)

(assert (=> b!5852517 (= e!3588889 e!3588890)))

(declare-fun res!2463826 () Bool)

(assert (=> b!5852517 (=> res!2463826 e!3588890)))

(assert (=> b!5852517 (= res!2463826 call!458128)))

(declare-fun b!5852518 () Bool)

(assert (=> b!5852518 (= e!3588888 (= lt!2304563 call!458128))))

(declare-fun b!5852519 () Bool)

(assert (=> b!5852519 (= e!3588892 (nullable!5919 r!7292))))

(declare-fun b!5852520 () Bool)

(declare-fun res!2463821 () Bool)

(assert (=> b!5852520 (=> res!2463821 e!3588893)))

(assert (=> b!5852520 (= res!2463821 (not ((_ is ElementMatch!15919) r!7292)))))

(assert (=> b!5852520 (= e!3588891 e!3588893)))

(declare-fun b!5852521 () Bool)

(declare-fun res!2463827 () Bool)

(assert (=> b!5852521 (=> res!2463827 e!3588890)))

(assert (=> b!5852521 (= res!2463827 (not (isEmpty!35793 (tail!11477 s!2326))))))

(declare-fun b!5852522 () Bool)

(assert (=> b!5852522 (= e!3588891 (not lt!2304563))))

(assert (= (and d!1838017 c!1037560) b!5852519))

(assert (= (and d!1838017 (not c!1037560)) b!5852514))

(assert (= (and d!1838017 c!1037559) b!5852518))

(assert (= (and d!1838017 (not c!1037559)) b!5852510))

(assert (= (and b!5852510 c!1037558) b!5852522))

(assert (= (and b!5852510 (not c!1037558)) b!5852520))

(assert (= (and b!5852520 (not res!2463821)) b!5852511))

(assert (= (and b!5852511 res!2463822) b!5852509))

(assert (= (and b!5852509 res!2463823) b!5852516))

(assert (= (and b!5852516 res!2463824) b!5852512))

(assert (= (and b!5852511 (not res!2463825)) b!5852515))

(assert (= (and b!5852515 res!2463828) b!5852517))

(assert (= (and b!5852517 (not res!2463826)) b!5852521))

(assert (= (and b!5852521 (not res!2463827)) b!5852513))

(assert (= (or b!5852518 b!5852509 b!5852517) bm!458123))

(assert (=> bm!458123 m!6771840))

(assert (=> b!5852513 m!6771844))

(declare-fun m!6771924 () Bool)

(assert (=> b!5852519 m!6771924))

(assert (=> b!5852521 m!6771848))

(assert (=> b!5852521 m!6771848))

(assert (=> b!5852521 m!6771896))

(assert (=> b!5852516 m!6771848))

(assert (=> b!5852516 m!6771848))

(assert (=> b!5852516 m!6771896))

(assert (=> b!5852514 m!6771844))

(assert (=> b!5852514 m!6771844))

(declare-fun m!6771926 () Bool)

(assert (=> b!5852514 m!6771926))

(assert (=> b!5852514 m!6771848))

(assert (=> b!5852514 m!6771926))

(assert (=> b!5852514 m!6771848))

(declare-fun m!6771928 () Bool)

(assert (=> b!5852514 m!6771928))

(assert (=> b!5852512 m!6771844))

(assert (=> d!1838017 m!6771840))

(assert (=> d!1838017 m!6771540))

(assert (=> b!5851876 d!1838017))

(declare-fun d!1838019 () Bool)

(assert (=> d!1838019 (= (matchR!8102 r!7292 s!2326) (matchRSpec!3020 r!7292 s!2326))))

(declare-fun lt!2304564 () Unit!157109)

(assert (=> d!1838019 (= lt!2304564 (choose!44381 r!7292 s!2326))))

(assert (=> d!1838019 (validRegex!7655 r!7292)))

(assert (=> d!1838019 (= (mainMatchTheorem!3020 r!7292 s!2326) lt!2304564)))

(declare-fun bs!1378950 () Bool)

(assert (= bs!1378950 d!1838019))

(assert (=> bs!1378950 m!6771568))

(assert (=> bs!1378950 m!6771566))

(declare-fun m!6771930 () Bool)

(assert (=> bs!1378950 m!6771930))

(assert (=> bs!1378950 m!6771540))

(assert (=> b!5851876 d!1838019))

(declare-fun bs!1378951 () Bool)

(declare-fun d!1838021 () Bool)

(assert (= bs!1378951 (and d!1838021 b!5851884)))

(declare-fun lambda!320008 () Int)

(assert (=> bs!1378951 (= lambda!320008 lambda!319958)))

(assert (=> d!1838021 true))

(assert (=> d!1838021 (= (derivationStepZipper!1918 z!1189 (h!70382 s!2326)) (flatMap!1450 z!1189 lambda!320008))))

(declare-fun bs!1378952 () Bool)

(assert (= bs!1378952 d!1838021))

(declare-fun m!6771932 () Bool)

(assert (=> bs!1378952 m!6771932))

(assert (=> b!5851884 d!1838021))

(declare-fun d!1838023 () Bool)

(declare-fun choose!44382 ((InoxSet Context!10606) Int) (InoxSet Context!10606))

(assert (=> d!1838023 (= (flatMap!1450 z!1189 lambda!319958) (choose!44382 z!1189 lambda!319958))))

(declare-fun bs!1378953 () Bool)

(assert (= bs!1378953 d!1838023))

(declare-fun m!6771934 () Bool)

(assert (=> bs!1378953 m!6771934))

(assert (=> b!5851884 d!1838023))

(declare-fun d!1838025 () Bool)

(declare-fun c!1037564 () Bool)

(declare-fun e!3588894 () Bool)

(assert (=> d!1838025 (= c!1037564 e!3588894)))

(declare-fun res!2463829 () Bool)

(assert (=> d!1838025 (=> (not res!2463829) (not e!3588894))))

(assert (=> d!1838025 (= res!2463829 ((_ is Cons!63932) (exprs!5803 (h!70381 zl!343))))))

(declare-fun e!3588895 () (InoxSet Context!10606))

(assert (=> d!1838025 (= (derivationStepZipperUp!1111 (h!70381 zl!343) (h!70382 s!2326)) e!3588895)))

(declare-fun call!458129 () (InoxSet Context!10606))

(declare-fun b!5852525 () Bool)

(assert (=> b!5852525 (= e!3588895 ((_ map or) call!458129 (derivationStepZipperUp!1111 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))) (h!70382 s!2326))))))

(declare-fun b!5852526 () Bool)

(assert (=> b!5852526 (= e!3588894 (nullable!5919 (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5852527 () Bool)

(declare-fun e!3588896 () (InoxSet Context!10606))

(assert (=> b!5852527 (= e!3588896 ((as const (Array Context!10606 Bool)) false))))

(declare-fun b!5852528 () Bool)

(assert (=> b!5852528 (= e!3588896 call!458129)))

(declare-fun bm!458124 () Bool)

(assert (=> bm!458124 (= call!458129 (derivationStepZipperDown!1185 (h!70380 (exprs!5803 (h!70381 zl!343))) (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))) (h!70382 s!2326)))))

(declare-fun b!5852529 () Bool)

(assert (=> b!5852529 (= e!3588895 e!3588896)))

(declare-fun c!1037563 () Bool)

(assert (=> b!5852529 (= c!1037563 ((_ is Cons!63932) (exprs!5803 (h!70381 zl!343))))))

(assert (= (and d!1838025 res!2463829) b!5852526))

(assert (= (and d!1838025 c!1037564) b!5852525))

(assert (= (and d!1838025 (not c!1037564)) b!5852529))

(assert (= (and b!5852529 c!1037563) b!5852528))

(assert (= (and b!5852529 (not c!1037563)) b!5852527))

(assert (= (or b!5852525 b!5852528) bm!458124))

(declare-fun m!6771936 () Bool)

(assert (=> b!5852525 m!6771936))

(declare-fun m!6771938 () Bool)

(assert (=> b!5852526 m!6771938))

(declare-fun m!6771940 () Bool)

(assert (=> bm!458124 m!6771940))

(assert (=> b!5851884 d!1838025))

(declare-fun d!1838027 () Bool)

(declare-fun dynLambda!24992 (Int Context!10606) (InoxSet Context!10606))

(assert (=> d!1838027 (= (flatMap!1450 z!1189 lambda!319958) (dynLambda!24992 lambda!319958 (h!70381 zl!343)))))

(declare-fun lt!2304567 () Unit!157109)

(declare-fun choose!44383 ((InoxSet Context!10606) Context!10606 Int) Unit!157109)

(assert (=> d!1838027 (= lt!2304567 (choose!44383 z!1189 (h!70381 zl!343) lambda!319958))))

(assert (=> d!1838027 (= z!1189 (store ((as const (Array Context!10606 Bool)) false) (h!70381 zl!343) true))))

(assert (=> d!1838027 (= (lemmaFlatMapOnSingletonSet!978 z!1189 (h!70381 zl!343) lambda!319958) lt!2304567)))

(declare-fun b_lambda!220289 () Bool)

(assert (=> (not b_lambda!220289) (not d!1838027)))

(declare-fun bs!1378954 () Bool)

(assert (= bs!1378954 d!1838027))

(assert (=> bs!1378954 m!6771580))

(declare-fun m!6771942 () Bool)

(assert (=> bs!1378954 m!6771942))

(declare-fun m!6771944 () Bool)

(assert (=> bs!1378954 m!6771944))

(declare-fun m!6771946 () Bool)

(assert (=> bs!1378954 m!6771946))

(assert (=> b!5851884 d!1838027))

(declare-fun d!1838029 () Bool)

(declare-fun e!3588899 () Bool)

(assert (=> d!1838029 e!3588899))

(declare-fun res!2463832 () Bool)

(assert (=> d!1838029 (=> (not res!2463832) (not e!3588899))))

(declare-fun lt!2304570 () List!64057)

(declare-fun noDuplicate!1784 (List!64057) Bool)

(assert (=> d!1838029 (= res!2463832 (noDuplicate!1784 lt!2304570))))

(declare-fun choose!44384 ((InoxSet Context!10606)) List!64057)

(assert (=> d!1838029 (= lt!2304570 (choose!44384 z!1189))))

(assert (=> d!1838029 (= (toList!9703 z!1189) lt!2304570)))

(declare-fun b!5852532 () Bool)

(declare-fun content!11749 (List!64057) (InoxSet Context!10606))

(assert (=> b!5852532 (= e!3588899 (= (content!11749 lt!2304570) z!1189))))

(assert (= (and d!1838029 res!2463832) b!5852532))

(declare-fun m!6771948 () Bool)

(assert (=> d!1838029 m!6771948))

(declare-fun m!6771950 () Bool)

(assert (=> d!1838029 m!6771950))

(declare-fun m!6771952 () Bool)

(assert (=> b!5852532 m!6771952))

(assert (=> b!5851868 d!1838029))

(declare-fun bs!1378955 () Bool)

(declare-fun d!1838031 () Bool)

(assert (= bs!1378955 (and d!1838031 d!1837995)))

(declare-fun lambda!320009 () Int)

(assert (=> bs!1378955 (= lambda!320009 lambda!319988)))

(declare-fun bs!1378956 () Bool)

(assert (= bs!1378956 (and d!1838031 d!1837997)))

(assert (=> bs!1378956 (= lambda!320009 lambda!319991)))

(declare-fun bs!1378957 () Bool)

(assert (= bs!1378957 (and d!1838031 d!1838011)))

(assert (=> bs!1378957 (= lambda!320009 lambda!320002)))

(declare-fun bs!1378958 () Bool)

(assert (= bs!1378958 (and d!1838031 d!1838013)))

(assert (=> bs!1378958 (= lambda!320009 lambda!320003)))

(assert (=> d!1838031 (= (inv!83044 setElem!39650) (forall!15006 (exprs!5803 setElem!39650) lambda!320009))))

(declare-fun bs!1378959 () Bool)

(assert (= bs!1378959 d!1838031))

(declare-fun m!6771954 () Bool)

(assert (=> bs!1378959 m!6771954))

(assert (=> setNonEmpty!39650 d!1838031))

(declare-fun d!1838033 () Bool)

(declare-fun c!1037565 () Bool)

(assert (=> d!1838033 (= c!1037565 (isEmpty!35793 (t!377421 s!2326)))))

(declare-fun e!3588900 () Bool)

(assert (=> d!1838033 (= (matchZipper!1985 lt!2304504 (t!377421 s!2326)) e!3588900)))

(declare-fun b!5852533 () Bool)

(assert (=> b!5852533 (= e!3588900 (nullableZipper!1758 lt!2304504))))

(declare-fun b!5852534 () Bool)

(assert (=> b!5852534 (= e!3588900 (matchZipper!1985 (derivationStepZipper!1918 lt!2304504 (head!12392 (t!377421 s!2326))) (tail!11477 (t!377421 s!2326))))))

(assert (= (and d!1838033 c!1037565) b!5852533))

(assert (= (and d!1838033 (not c!1037565)) b!5852534))

(assert (=> d!1838033 m!6771770))

(declare-fun m!6771956 () Bool)

(assert (=> b!5852533 m!6771956))

(assert (=> b!5852534 m!6771774))

(assert (=> b!5852534 m!6771774))

(declare-fun m!6771958 () Bool)

(assert (=> b!5852534 m!6771958))

(assert (=> b!5852534 m!6771778))

(assert (=> b!5852534 m!6771958))

(assert (=> b!5852534 m!6771778))

(declare-fun m!6771960 () Bool)

(assert (=> b!5852534 m!6771960))

(assert (=> b!5851867 d!1838033))

(declare-fun d!1838035 () Bool)

(declare-fun e!3588903 () Bool)

(assert (=> d!1838035 (= (matchZipper!1985 ((_ map or) lt!2304504 lt!2304501) (t!377421 s!2326)) e!3588903)))

(declare-fun res!2463835 () Bool)

(assert (=> d!1838035 (=> res!2463835 e!3588903)))

(assert (=> d!1838035 (= res!2463835 (matchZipper!1985 lt!2304504 (t!377421 s!2326)))))

(declare-fun lt!2304573 () Unit!157109)

(declare-fun choose!44385 ((InoxSet Context!10606) (InoxSet Context!10606) List!64058) Unit!157109)

(assert (=> d!1838035 (= lt!2304573 (choose!44385 lt!2304504 lt!2304501 (t!377421 s!2326)))))

(assert (=> d!1838035 (= (lemmaZipperConcatMatchesSameAsBothZippers!820 lt!2304504 lt!2304501 (t!377421 s!2326)) lt!2304573)))

(declare-fun b!5852537 () Bool)

(assert (=> b!5852537 (= e!3588903 (matchZipper!1985 lt!2304501 (t!377421 s!2326)))))

(assert (= (and d!1838035 (not res!2463835)) b!5852537))

(declare-fun m!6771962 () Bool)

(assert (=> d!1838035 m!6771962))

(assert (=> d!1838035 m!6771590))

(declare-fun m!6771964 () Bool)

(assert (=> d!1838035 m!6771964))

(assert (=> b!5852537 m!6771594))

(assert (=> b!5851867 d!1838035))

(declare-fun b!5852556 () Bool)

(declare-fun res!2463848 () Bool)

(declare-fun e!3588919 () Bool)

(assert (=> b!5852556 (=> (not res!2463848) (not e!3588919))))

(declare-fun call!458137 () Bool)

(assert (=> b!5852556 (= res!2463848 call!458137)))

(declare-fun e!3588923 () Bool)

(assert (=> b!5852556 (= e!3588923 e!3588919)))

(declare-fun b!5852557 () Bool)

(declare-fun res!2463847 () Bool)

(declare-fun e!3588922 () Bool)

(assert (=> b!5852557 (=> res!2463847 e!3588922)))

(assert (=> b!5852557 (= res!2463847 (not ((_ is Concat!24764) r!7292)))))

(assert (=> b!5852557 (= e!3588923 e!3588922)))

(declare-fun bm!458131 () Bool)

(declare-fun call!458138 () Bool)

(assert (=> bm!458131 (= call!458137 call!458138)))

(declare-fun b!5852558 () Bool)

(declare-fun e!3588918 () Bool)

(declare-fun e!3588921 () Bool)

(assert (=> b!5852558 (= e!3588918 e!3588921)))

(declare-fun c!1037571 () Bool)

(assert (=> b!5852558 (= c!1037571 ((_ is Star!15919) r!7292))))

(declare-fun b!5852559 () Bool)

(assert (=> b!5852559 (= e!3588921 e!3588923)))

(declare-fun c!1037570 () Bool)

(assert (=> b!5852559 (= c!1037570 ((_ is Union!15919) r!7292))))

(declare-fun d!1838037 () Bool)

(declare-fun res!2463846 () Bool)

(assert (=> d!1838037 (=> res!2463846 e!3588918)))

(assert (=> d!1838037 (= res!2463846 ((_ is ElementMatch!15919) r!7292))))

(assert (=> d!1838037 (= (validRegex!7655 r!7292) e!3588918)))

(declare-fun bm!458132 () Bool)

(declare-fun call!458136 () Bool)

(assert (=> bm!458132 (= call!458136 (validRegex!7655 (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))))))

(declare-fun b!5852560 () Bool)

(declare-fun e!3588924 () Bool)

(assert (=> b!5852560 (= e!3588921 e!3588924)))

(declare-fun res!2463849 () Bool)

(assert (=> b!5852560 (= res!2463849 (not (nullable!5919 (reg!16248 r!7292))))))

(assert (=> b!5852560 (=> (not res!2463849) (not e!3588924))))

(declare-fun b!5852561 () Bool)

(assert (=> b!5852561 (= e!3588919 call!458136)))

(declare-fun bm!458133 () Bool)

(assert (=> bm!458133 (= call!458138 (validRegex!7655 (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))))))

(declare-fun b!5852562 () Bool)

(declare-fun e!3588920 () Bool)

(assert (=> b!5852562 (= e!3588922 e!3588920)))

(declare-fun res!2463850 () Bool)

(assert (=> b!5852562 (=> (not res!2463850) (not e!3588920))))

(assert (=> b!5852562 (= res!2463850 call!458137)))

(declare-fun b!5852563 () Bool)

(assert (=> b!5852563 (= e!3588924 call!458138)))

(declare-fun b!5852564 () Bool)

(assert (=> b!5852564 (= e!3588920 call!458136)))

(assert (= (and d!1838037 (not res!2463846)) b!5852558))

(assert (= (and b!5852558 c!1037571) b!5852560))

(assert (= (and b!5852558 (not c!1037571)) b!5852559))

(assert (= (and b!5852560 res!2463849) b!5852563))

(assert (= (and b!5852559 c!1037570) b!5852556))

(assert (= (and b!5852559 (not c!1037570)) b!5852557))

(assert (= (and b!5852556 res!2463848) b!5852561))

(assert (= (and b!5852557 (not res!2463847)) b!5852562))

(assert (= (and b!5852562 res!2463850) b!5852564))

(assert (= (or b!5852561 b!5852564) bm!458132))

(assert (= (or b!5852556 b!5852562) bm!458131))

(assert (= (or b!5852563 bm!458131) bm!458133))

(declare-fun m!6771966 () Bool)

(assert (=> bm!458132 m!6771966))

(declare-fun m!6771968 () Bool)

(assert (=> b!5852560 m!6771968))

(declare-fun m!6771970 () Bool)

(assert (=> bm!458133 m!6771970))

(assert (=> start!598684 d!1838037))

(declare-fun bs!1378960 () Bool)

(declare-fun d!1838039 () Bool)

(assert (= bs!1378960 (and d!1838039 d!1837997)))

(declare-fun lambda!320012 () Int)

(assert (=> bs!1378960 (= lambda!320012 lambda!319991)))

(declare-fun bs!1378961 () Bool)

(assert (= bs!1378961 (and d!1838039 d!1838031)))

(assert (=> bs!1378961 (= lambda!320012 lambda!320009)))

(declare-fun bs!1378962 () Bool)

(assert (= bs!1378962 (and d!1838039 d!1838011)))

(assert (=> bs!1378962 (= lambda!320012 lambda!320002)))

(declare-fun bs!1378963 () Bool)

(assert (= bs!1378963 (and d!1838039 d!1837995)))

(assert (=> bs!1378963 (= lambda!320012 lambda!319988)))

(declare-fun bs!1378964 () Bool)

(assert (= bs!1378964 (and d!1838039 d!1838013)))

(assert (=> bs!1378964 (= lambda!320012 lambda!320003)))

(declare-fun b!5852585 () Bool)

(declare-fun e!3588942 () Bool)

(declare-fun e!3588937 () Bool)

(assert (=> b!5852585 (= e!3588942 e!3588937)))

(declare-fun c!1037580 () Bool)

(assert (=> b!5852585 (= c!1037580 (isEmpty!35794 (exprs!5803 (h!70381 zl!343))))))

(declare-fun b!5852586 () Bool)

(declare-fun e!3588939 () Bool)

(assert (=> b!5852586 (= e!3588939 (isEmpty!35794 (t!377419 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5852587 () Bool)

(declare-fun lt!2304576 () Regex!15919)

(declare-fun isEmptyExpr!1354 (Regex!15919) Bool)

(assert (=> b!5852587 (= e!3588937 (isEmptyExpr!1354 lt!2304576))))

(declare-fun b!5852588 () Bool)

(declare-fun e!3588940 () Regex!15919)

(declare-fun e!3588938 () Regex!15919)

(assert (=> b!5852588 (= e!3588940 e!3588938)))

(declare-fun c!1037583 () Bool)

(assert (=> b!5852588 (= c!1037583 ((_ is Cons!63932) (exprs!5803 (h!70381 zl!343))))))

(declare-fun b!5852589 () Bool)

(assert (=> b!5852589 (= e!3588938 (Concat!24764 (h!70380 (exprs!5803 (h!70381 zl!343))) (generalisedConcat!1516 (t!377419 (exprs!5803 (h!70381 zl!343))))))))

(declare-fun b!5852590 () Bool)

(assert (=> b!5852590 (= e!3588938 EmptyExpr!15919)))

(declare-fun b!5852591 () Bool)

(declare-fun e!3588941 () Bool)

(declare-fun isConcat!877 (Regex!15919) Bool)

(assert (=> b!5852591 (= e!3588941 (isConcat!877 lt!2304576))))

(declare-fun b!5852592 () Bool)

(assert (=> b!5852592 (= e!3588940 (h!70380 (exprs!5803 (h!70381 zl!343))))))

(declare-fun b!5852593 () Bool)

(assert (=> b!5852593 (= e!3588941 (= lt!2304576 (head!12393 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5852594 () Bool)

(assert (=> b!5852594 (= e!3588937 e!3588941)))

(declare-fun c!1037582 () Bool)

(assert (=> b!5852594 (= c!1037582 (isEmpty!35794 (tail!11478 (exprs!5803 (h!70381 zl!343)))))))

(assert (=> d!1838039 e!3588942))

(declare-fun res!2463855 () Bool)

(assert (=> d!1838039 (=> (not res!2463855) (not e!3588942))))

(assert (=> d!1838039 (= res!2463855 (validRegex!7655 lt!2304576))))

(assert (=> d!1838039 (= lt!2304576 e!3588940)))

(declare-fun c!1037581 () Bool)

(assert (=> d!1838039 (= c!1037581 e!3588939)))

(declare-fun res!2463856 () Bool)

(assert (=> d!1838039 (=> (not res!2463856) (not e!3588939))))

(assert (=> d!1838039 (= res!2463856 ((_ is Cons!63932) (exprs!5803 (h!70381 zl!343))))))

(assert (=> d!1838039 (forall!15006 (exprs!5803 (h!70381 zl!343)) lambda!320012)))

(assert (=> d!1838039 (= (generalisedConcat!1516 (exprs!5803 (h!70381 zl!343))) lt!2304576)))

(assert (= (and d!1838039 res!2463856) b!5852586))

(assert (= (and d!1838039 c!1037581) b!5852592))

(assert (= (and d!1838039 (not c!1037581)) b!5852588))

(assert (= (and b!5852588 c!1037583) b!5852589))

(assert (= (and b!5852588 (not c!1037583)) b!5852590))

(assert (= (and d!1838039 res!2463855) b!5852585))

(assert (= (and b!5852585 c!1037580) b!5852587))

(assert (= (and b!5852585 (not c!1037580)) b!5852594))

(assert (= (and b!5852594 c!1037582) b!5852593))

(assert (= (and b!5852594 (not c!1037582)) b!5852591))

(declare-fun m!6771972 () Bool)

(assert (=> b!5852585 m!6771972))

(declare-fun m!6771974 () Bool)

(assert (=> b!5852591 m!6771974))

(declare-fun m!6771976 () Bool)

(assert (=> b!5852586 m!6771976))

(declare-fun m!6771978 () Bool)

(assert (=> b!5852589 m!6771978))

(declare-fun m!6771980 () Bool)

(assert (=> b!5852593 m!6771980))

(declare-fun m!6771982 () Bool)

(assert (=> d!1838039 m!6771982))

(declare-fun m!6771984 () Bool)

(assert (=> d!1838039 m!6771984))

(declare-fun m!6771986 () Bool)

(assert (=> b!5852587 m!6771986))

(declare-fun m!6771988 () Bool)

(assert (=> b!5852594 m!6771988))

(assert (=> b!5852594 m!6771988))

(declare-fun m!6771990 () Bool)

(assert (=> b!5852594 m!6771990))

(assert (=> b!5851878 d!1838039))

(declare-fun b!5852607 () Bool)

(declare-fun e!3588945 () Bool)

(declare-fun tp!1619008 () Bool)

(assert (=> b!5852607 (= e!3588945 tp!1619008)))

(assert (=> b!5851865 (= tp!1618929 e!3588945)))

(declare-fun b!5852606 () Bool)

(declare-fun tp!1619005 () Bool)

(declare-fun tp!1619006 () Bool)

(assert (=> b!5852606 (= e!3588945 (and tp!1619005 tp!1619006))))

(declare-fun b!5852605 () Bool)

(assert (=> b!5852605 (= e!3588945 tp_is_empty!41091)))

(declare-fun b!5852608 () Bool)

(declare-fun tp!1619009 () Bool)

(declare-fun tp!1619007 () Bool)

(assert (=> b!5852608 (= e!3588945 (and tp!1619009 tp!1619007))))

(assert (= (and b!5851865 ((_ is ElementMatch!15919) (regOne!32351 r!7292))) b!5852605))

(assert (= (and b!5851865 ((_ is Concat!24764) (regOne!32351 r!7292))) b!5852606))

(assert (= (and b!5851865 ((_ is Star!15919) (regOne!32351 r!7292))) b!5852607))

(assert (= (and b!5851865 ((_ is Union!15919) (regOne!32351 r!7292))) b!5852608))

(declare-fun b!5852611 () Bool)

(declare-fun e!3588946 () Bool)

(declare-fun tp!1619013 () Bool)

(assert (=> b!5852611 (= e!3588946 tp!1619013)))

(assert (=> b!5851865 (= tp!1618933 e!3588946)))

(declare-fun b!5852610 () Bool)

(declare-fun tp!1619010 () Bool)

(declare-fun tp!1619011 () Bool)

(assert (=> b!5852610 (= e!3588946 (and tp!1619010 tp!1619011))))

(declare-fun b!5852609 () Bool)

(assert (=> b!5852609 (= e!3588946 tp_is_empty!41091)))

(declare-fun b!5852612 () Bool)

(declare-fun tp!1619014 () Bool)

(declare-fun tp!1619012 () Bool)

(assert (=> b!5852612 (= e!3588946 (and tp!1619014 tp!1619012))))

(assert (= (and b!5851865 ((_ is ElementMatch!15919) (regTwo!32351 r!7292))) b!5852609))

(assert (= (and b!5851865 ((_ is Concat!24764) (regTwo!32351 r!7292))) b!5852610))

(assert (= (and b!5851865 ((_ is Star!15919) (regTwo!32351 r!7292))) b!5852611))

(assert (= (and b!5851865 ((_ is Union!15919) (regTwo!32351 r!7292))) b!5852612))

(declare-fun b!5852615 () Bool)

(declare-fun e!3588947 () Bool)

(declare-fun tp!1619018 () Bool)

(assert (=> b!5852615 (= e!3588947 tp!1619018)))

(assert (=> b!5851877 (= tp!1618930 e!3588947)))

(declare-fun b!5852614 () Bool)

(declare-fun tp!1619015 () Bool)

(declare-fun tp!1619016 () Bool)

(assert (=> b!5852614 (= e!3588947 (and tp!1619015 tp!1619016))))

(declare-fun b!5852613 () Bool)

(assert (=> b!5852613 (= e!3588947 tp_is_empty!41091)))

(declare-fun b!5852616 () Bool)

(declare-fun tp!1619019 () Bool)

(declare-fun tp!1619017 () Bool)

(assert (=> b!5852616 (= e!3588947 (and tp!1619019 tp!1619017))))

(assert (= (and b!5851877 ((_ is ElementMatch!15919) (regOne!32350 r!7292))) b!5852613))

(assert (= (and b!5851877 ((_ is Concat!24764) (regOne!32350 r!7292))) b!5852614))

(assert (= (and b!5851877 ((_ is Star!15919) (regOne!32350 r!7292))) b!5852615))

(assert (= (and b!5851877 ((_ is Union!15919) (regOne!32350 r!7292))) b!5852616))

(declare-fun b!5852619 () Bool)

(declare-fun e!3588948 () Bool)

(declare-fun tp!1619023 () Bool)

(assert (=> b!5852619 (= e!3588948 tp!1619023)))

(assert (=> b!5851877 (= tp!1618927 e!3588948)))

(declare-fun b!5852618 () Bool)

(declare-fun tp!1619020 () Bool)

(declare-fun tp!1619021 () Bool)

(assert (=> b!5852618 (= e!3588948 (and tp!1619020 tp!1619021))))

(declare-fun b!5852617 () Bool)

(assert (=> b!5852617 (= e!3588948 tp_is_empty!41091)))

(declare-fun b!5852620 () Bool)

(declare-fun tp!1619024 () Bool)

(declare-fun tp!1619022 () Bool)

(assert (=> b!5852620 (= e!3588948 (and tp!1619024 tp!1619022))))

(assert (= (and b!5851877 ((_ is ElementMatch!15919) (regTwo!32350 r!7292))) b!5852617))

(assert (= (and b!5851877 ((_ is Concat!24764) (regTwo!32350 r!7292))) b!5852618))

(assert (= (and b!5851877 ((_ is Star!15919) (regTwo!32350 r!7292))) b!5852619))

(assert (= (and b!5851877 ((_ is Union!15919) (regTwo!32350 r!7292))) b!5852620))

(declare-fun b!5852625 () Bool)

(declare-fun e!3588951 () Bool)

(declare-fun tp!1619029 () Bool)

(declare-fun tp!1619030 () Bool)

(assert (=> b!5852625 (= e!3588951 (and tp!1619029 tp!1619030))))

(assert (=> b!5851861 (= tp!1618935 e!3588951)))

(assert (= (and b!5851861 ((_ is Cons!63932) (exprs!5803 (h!70381 zl!343)))) b!5852625))

(declare-fun b!5852628 () Bool)

(declare-fun e!3588952 () Bool)

(declare-fun tp!1619034 () Bool)

(assert (=> b!5852628 (= e!3588952 tp!1619034)))

(assert (=> b!5851871 (= tp!1618931 e!3588952)))

(declare-fun b!5852627 () Bool)

(declare-fun tp!1619031 () Bool)

(declare-fun tp!1619032 () Bool)

(assert (=> b!5852627 (= e!3588952 (and tp!1619031 tp!1619032))))

(declare-fun b!5852626 () Bool)

(assert (=> b!5852626 (= e!3588952 tp_is_empty!41091)))

(declare-fun b!5852629 () Bool)

(declare-fun tp!1619035 () Bool)

(declare-fun tp!1619033 () Bool)

(assert (=> b!5852629 (= e!3588952 (and tp!1619035 tp!1619033))))

(assert (= (and b!5851871 ((_ is ElementMatch!15919) (reg!16248 r!7292))) b!5852626))

(assert (= (and b!5851871 ((_ is Concat!24764) (reg!16248 r!7292))) b!5852627))

(assert (= (and b!5851871 ((_ is Star!15919) (reg!16248 r!7292))) b!5852628))

(assert (= (and b!5851871 ((_ is Union!15919) (reg!16248 r!7292))) b!5852629))

(declare-fun b!5852634 () Bool)

(declare-fun e!3588955 () Bool)

(declare-fun tp!1619038 () Bool)

(assert (=> b!5852634 (= e!3588955 (and tp_is_empty!41091 tp!1619038))))

(assert (=> b!5851862 (= tp!1618936 e!3588955)))

(assert (= (and b!5851862 ((_ is Cons!63934) (t!377421 s!2326))) b!5852634))

(declare-fun condSetEmpty!39656 () Bool)

(assert (=> setNonEmpty!39650 (= condSetEmpty!39656 (= setRest!39650 ((as const (Array Context!10606 Bool)) false)))))

(declare-fun setRes!39656 () Bool)

(assert (=> setNonEmpty!39650 (= tp!1618928 setRes!39656)))

(declare-fun setIsEmpty!39656 () Bool)

(assert (=> setIsEmpty!39656 setRes!39656))

(declare-fun setElem!39656 () Context!10606)

(declare-fun e!3588958 () Bool)

(declare-fun tp!1619043 () Bool)

(declare-fun setNonEmpty!39656 () Bool)

(assert (=> setNonEmpty!39656 (= setRes!39656 (and tp!1619043 (inv!83044 setElem!39656) e!3588958))))

(declare-fun setRest!39656 () (InoxSet Context!10606))

(assert (=> setNonEmpty!39656 (= setRest!39650 ((_ map or) (store ((as const (Array Context!10606 Bool)) false) setElem!39656 true) setRest!39656))))

(declare-fun b!5852639 () Bool)

(declare-fun tp!1619044 () Bool)

(assert (=> b!5852639 (= e!3588958 tp!1619044)))

(assert (= (and setNonEmpty!39650 condSetEmpty!39656) setIsEmpty!39656))

(assert (= (and setNonEmpty!39650 (not condSetEmpty!39656)) setNonEmpty!39656))

(assert (= setNonEmpty!39656 b!5852639))

(declare-fun m!6771992 () Bool)

(assert (=> setNonEmpty!39656 m!6771992))

(declare-fun b!5852640 () Bool)

(declare-fun e!3588959 () Bool)

(declare-fun tp!1619045 () Bool)

(declare-fun tp!1619046 () Bool)

(assert (=> b!5852640 (= e!3588959 (and tp!1619045 tp!1619046))))

(assert (=> b!5851869 (= tp!1618934 e!3588959)))

(assert (= (and b!5851869 ((_ is Cons!63932) (exprs!5803 setElem!39650))) b!5852640))

(declare-fun b!5852648 () Bool)

(declare-fun e!3588965 () Bool)

(declare-fun tp!1619051 () Bool)

(assert (=> b!5852648 (= e!3588965 tp!1619051)))

(declare-fun e!3588964 () Bool)

(declare-fun tp!1619052 () Bool)

(declare-fun b!5852647 () Bool)

(assert (=> b!5852647 (= e!3588964 (and (inv!83044 (h!70381 (t!377420 zl!343))) e!3588965 tp!1619052))))

(assert (=> b!5851874 (= tp!1618932 e!3588964)))

(assert (= b!5852647 b!5852648))

(assert (= (and b!5851874 ((_ is Cons!63933) (t!377420 zl!343))) b!5852647))

(declare-fun m!6771994 () Bool)

(assert (=> b!5852647 m!6771994))

(declare-fun b_lambda!220291 () Bool)

(assert (= b_lambda!220289 (or b!5851884 b_lambda!220291)))

(declare-fun bs!1378965 () Bool)

(declare-fun d!1838041 () Bool)

(assert (= bs!1378965 (and d!1838041 b!5851884)))

(assert (=> bs!1378965 (= (dynLambda!24992 lambda!319958 (h!70381 zl!343)) (derivationStepZipperUp!1111 (h!70381 zl!343) (h!70382 s!2326)))))

(assert (=> bs!1378965 m!6771582))

(assert (=> d!1838027 d!1838041))

(check-sat (not bm!458098) (not b!5852488) (not b!5852297) (not b!5852345) (not b!5852344) (not bm!458093) (not b!5852369) (not b!5852525) (not b!5852606) (not d!1838027) (not b!5852487) (not b!5852634) (not b!5852619) (not d!1837997) (not b!5852489) (not b!5852526) (not b!5852618) (not d!1838003) (not b!5852375) (not b!5852537) (not b!5852494) (not b!5852347) (not b!5852639) (not b!5852370) (not bm!458120) (not b!5852471) (not d!1838033) (not b!5852491) (not b!5852499) (not b!5852502) (not b!5852627) (not bm!458117) (not b!5852516) (not b!5852374) (not b!5852318) (not d!1838023) (not b!5852519) (not b!5852371) (not bm!458124) (not d!1838039) (not d!1838019) (not b!5852463) (not b!5852612) (not b!5852625) (not b!5852477) (not bm!458108) (not b!5852560) (not b!5852614) (not d!1838031) (not b!5852594) (not bm!458091) (not bm!458100) (not d!1838001) (not b!5852513) (not b!5852589) (not b!5852346) (not b_lambda!220291) (not d!1838035) (not d!1838009) (not b!5852469) (not b!5852629) (not b!5852591) (not b!5852512) (not d!1838005) (not b!5852372) (not b!5852615) (not b!5852382) (not bm!458113) (not b!5852534) (not b!5852376) (not bm!458104) (not b!5852648) (not bm!458119) (not d!1837993) (not b!5852464) (not bm!458132) tp_is_empty!41091 (not b!5852628) (not b!5852514) (not bm!458121) (not d!1837995) (not b!5852533) (not b!5852334) (not b!5852189) (not d!1838017) (not bm!458114) (not b!5852417) (not b!5852317) (not d!1838021) (not bm!458122) (not bm!458096) (not d!1838011) (not b!5852620) (not d!1838029) (not bm!458106) (not setNonEmpty!39656) (not b!5852496) (not bm!458133) (not b!5852474) (not b!5852586) (not b!5852466) (not bm!458102) (not b!5852587) (not b!5852521) (not d!1837965) (not b!5852607) (not d!1837991) (not b!5852616) (not bm!458123) (not b!5852420) (not b!5852610) (not b!5852323) (not bs!1378965) (not bm!458118) (not bm!458089) (not b!5852593) (not b!5852640) (not b!5852611) (not b!5852585) (not d!1837989) (not b!5852462) (not b!5852647) (not d!1838013) (not b!5852188) (not b!5852608) (not b!5852532))
(check-sat)
(get-model)

(declare-fun bs!1379122 () Bool)

(declare-fun b!5853022 () Bool)

(assert (= bs!1379122 (and b!5853022 b!5852501)))

(declare-fun lambda!320035 () Int)

(assert (=> bs!1379122 (= (and (= (reg!16248 (regOne!32351 (regTwo!32351 r!7292))) (reg!16248 r!7292)) (= (regOne!32351 (regTwo!32351 r!7292)) r!7292)) (= lambda!320035 lambda!320004))))

(declare-fun bs!1379126 () Bool)

(assert (= bs!1379126 (and b!5853022 b!5852480)))

(assert (=> bs!1379126 (not (= lambda!320035 lambda!319999))))

(declare-fun bs!1379129 () Bool)

(assert (= bs!1379129 (and b!5853022 b!5852419)))

(assert (=> bs!1379129 (= (and (= (reg!16248 (regOne!32351 (regTwo!32351 r!7292))) (reg!16248 (regTwo!32351 r!7292))) (= (regOne!32351 (regTwo!32351 r!7292)) (regTwo!32351 r!7292))) (= lambda!320035 lambda!319996))))

(declare-fun bs!1379131 () Bool)

(assert (= bs!1379131 (and b!5853022 b!5852423)))

(assert (=> bs!1379131 (not (= lambda!320035 lambda!319997))))

(declare-fun bs!1379132 () Bool)

(assert (= bs!1379132 (and b!5853022 b!5852476)))

(assert (=> bs!1379132 (= (and (= (reg!16248 (regOne!32351 (regTwo!32351 r!7292))) (reg!16248 (regOne!32351 r!7292))) (= (regOne!32351 (regTwo!32351 r!7292)) (regOne!32351 r!7292))) (= lambda!320035 lambda!319998))))

(declare-fun bs!1379134 () Bool)

(assert (= bs!1379134 (and b!5853022 b!5852505)))

(assert (=> bs!1379134 (not (= lambda!320035 lambda!320005))))

(assert (=> b!5853022 true))

(assert (=> b!5853022 true))

(declare-fun bs!1379135 () Bool)

(declare-fun b!5853026 () Bool)

(assert (= bs!1379135 (and b!5853026 b!5852501)))

(declare-fun lambda!320037 () Int)

(assert (=> bs!1379135 (not (= lambda!320037 lambda!320004))))

(declare-fun bs!1379136 () Bool)

(assert (= bs!1379136 (and b!5853026 b!5852480)))

(assert (=> bs!1379136 (= (and (= (regOne!32350 (regOne!32351 (regTwo!32351 r!7292))) (regOne!32350 (regOne!32351 r!7292))) (= (regTwo!32350 (regOne!32351 (regTwo!32351 r!7292))) (regTwo!32350 (regOne!32351 r!7292)))) (= lambda!320037 lambda!319999))))

(declare-fun bs!1379137 () Bool)

(assert (= bs!1379137 (and b!5853026 b!5853022)))

(assert (=> bs!1379137 (not (= lambda!320037 lambda!320035))))

(declare-fun bs!1379138 () Bool)

(assert (= bs!1379138 (and b!5853026 b!5852419)))

(assert (=> bs!1379138 (not (= lambda!320037 lambda!319996))))

(declare-fun bs!1379139 () Bool)

(assert (= bs!1379139 (and b!5853026 b!5852423)))

(assert (=> bs!1379139 (= (and (= (regOne!32350 (regOne!32351 (regTwo!32351 r!7292))) (regOne!32350 (regTwo!32351 r!7292))) (= (regTwo!32350 (regOne!32351 (regTwo!32351 r!7292))) (regTwo!32350 (regTwo!32351 r!7292)))) (= lambda!320037 lambda!319997))))

(declare-fun bs!1379140 () Bool)

(assert (= bs!1379140 (and b!5853026 b!5852476)))

(assert (=> bs!1379140 (not (= lambda!320037 lambda!319998))))

(declare-fun bs!1379141 () Bool)

(assert (= bs!1379141 (and b!5853026 b!5852505)))

(assert (=> bs!1379141 (= (and (= (regOne!32350 (regOne!32351 (regTwo!32351 r!7292))) (regOne!32350 r!7292)) (= (regTwo!32350 (regOne!32351 (regTwo!32351 r!7292))) (regTwo!32350 r!7292))) (= lambda!320037 lambda!320005))))

(assert (=> b!5853026 true))

(assert (=> b!5853026 true))

(declare-fun b!5853019 () Bool)

(declare-fun e!3589200 () Bool)

(declare-fun e!3589201 () Bool)

(assert (=> b!5853019 (= e!3589200 e!3589201)))

(declare-fun res!2463977 () Bool)

(assert (=> b!5853019 (= res!2463977 (not ((_ is EmptyLang!15919) (regOne!32351 (regTwo!32351 r!7292)))))))

(assert (=> b!5853019 (=> (not res!2463977) (not e!3589201))))

(declare-fun b!5853020 () Bool)

(declare-fun e!3589203 () Bool)

(assert (=> b!5853020 (= e!3589203 (matchRSpec!3020 (regTwo!32351 (regOne!32351 (regTwo!32351 r!7292))) s!2326))))

(declare-fun b!5853021 () Bool)

(declare-fun c!1037712 () Bool)

(assert (=> b!5853021 (= c!1037712 ((_ is Union!15919) (regOne!32351 (regTwo!32351 r!7292))))))

(declare-fun e!3589206 () Bool)

(declare-fun e!3589205 () Bool)

(assert (=> b!5853021 (= e!3589206 e!3589205)))

(declare-fun e!3589202 () Bool)

(declare-fun call!458241 () Bool)

(assert (=> b!5853022 (= e!3589202 call!458241)))

(declare-fun b!5853023 () Bool)

(assert (=> b!5853023 (= e!3589205 e!3589203)))

(declare-fun res!2463976 () Bool)

(assert (=> b!5853023 (= res!2463976 (matchRSpec!3020 (regOne!32351 (regOne!32351 (regTwo!32351 r!7292))) s!2326))))

(assert (=> b!5853023 (=> res!2463976 e!3589203)))

(declare-fun b!5853024 () Bool)

(assert (=> b!5853024 (= e!3589206 (= s!2326 (Cons!63934 (c!1037365 (regOne!32351 (regTwo!32351 r!7292))) Nil!63934)))))

(declare-fun bm!458236 () Bool)

(declare-fun call!458242 () Bool)

(assert (=> bm!458236 (= call!458242 (isEmpty!35793 s!2326))))

(declare-fun b!5853025 () Bool)

(declare-fun c!1037710 () Bool)

(assert (=> b!5853025 (= c!1037710 ((_ is ElementMatch!15919) (regOne!32351 (regTwo!32351 r!7292))))))

(assert (=> b!5853025 (= e!3589201 e!3589206)))

(declare-fun d!1838229 () Bool)

(declare-fun c!1037711 () Bool)

(assert (=> d!1838229 (= c!1037711 ((_ is EmptyExpr!15919) (regOne!32351 (regTwo!32351 r!7292))))))

(assert (=> d!1838229 (= (matchRSpec!3020 (regOne!32351 (regTwo!32351 r!7292)) s!2326) e!3589200)))

(declare-fun e!3589204 () Bool)

(assert (=> b!5853026 (= e!3589204 call!458241)))

(declare-fun b!5853027 () Bool)

(assert (=> b!5853027 (= e!3589205 e!3589204)))

(declare-fun c!1037713 () Bool)

(assert (=> b!5853027 (= c!1037713 ((_ is Star!15919) (regOne!32351 (regTwo!32351 r!7292))))))

(declare-fun b!5853028 () Bool)

(assert (=> b!5853028 (= e!3589200 call!458242)))

(declare-fun bm!458237 () Bool)

(assert (=> bm!458237 (= call!458241 (Exists!2991 (ite c!1037713 lambda!320035 lambda!320037)))))

(declare-fun b!5853029 () Bool)

(declare-fun res!2463978 () Bool)

(assert (=> b!5853029 (=> res!2463978 e!3589202)))

(assert (=> b!5853029 (= res!2463978 call!458242)))

(assert (=> b!5853029 (= e!3589204 e!3589202)))

(assert (= (and d!1838229 c!1037711) b!5853028))

(assert (= (and d!1838229 (not c!1037711)) b!5853019))

(assert (= (and b!5853019 res!2463977) b!5853025))

(assert (= (and b!5853025 c!1037710) b!5853024))

(assert (= (and b!5853025 (not c!1037710)) b!5853021))

(assert (= (and b!5853021 c!1037712) b!5853023))

(assert (= (and b!5853021 (not c!1037712)) b!5853027))

(assert (= (and b!5853023 (not res!2463976)) b!5853020))

(assert (= (and b!5853027 c!1037713) b!5853029))

(assert (= (and b!5853027 (not c!1037713)) b!5853026))

(assert (= (and b!5853029 (not res!2463978)) b!5853022))

(assert (= (or b!5853022 b!5853026) bm!458237))

(assert (= (or b!5853028 b!5853029) bm!458236))

(declare-fun m!6772368 () Bool)

(assert (=> b!5853020 m!6772368))

(declare-fun m!6772370 () Bool)

(assert (=> b!5853023 m!6772370))

(assert (=> bm!458236 m!6771840))

(declare-fun m!6772372 () Bool)

(assert (=> bm!458237 m!6772372))

(assert (=> b!5852420 d!1838229))

(declare-fun d!1838239 () Bool)

(declare-fun res!2463983 () Bool)

(declare-fun e!3589241 () Bool)

(assert (=> d!1838239 (=> res!2463983 e!3589241)))

(assert (=> d!1838239 (= res!2463983 ((_ is Nil!63932) (exprs!5803 setElem!39650)))))

(assert (=> d!1838239 (= (forall!15006 (exprs!5803 setElem!39650) lambda!320009) e!3589241)))

(declare-fun b!5853128 () Bool)

(declare-fun e!3589242 () Bool)

(assert (=> b!5853128 (= e!3589241 e!3589242)))

(declare-fun res!2463984 () Bool)

(assert (=> b!5853128 (=> (not res!2463984) (not e!3589242))))

(declare-fun dynLambda!24993 (Int Regex!15919) Bool)

(assert (=> b!5853128 (= res!2463984 (dynLambda!24993 lambda!320009 (h!70380 (exprs!5803 setElem!39650))))))

(declare-fun b!5853129 () Bool)

(assert (=> b!5853129 (= e!3589242 (forall!15006 (t!377419 (exprs!5803 setElem!39650)) lambda!320009))))

(assert (= (and d!1838239 (not res!2463983)) b!5853128))

(assert (= (and b!5853128 res!2463984) b!5853129))

(declare-fun b_lambda!220307 () Bool)

(assert (=> (not b_lambda!220307) (not b!5853128)))

(declare-fun m!6772376 () Bool)

(assert (=> b!5853128 m!6772376))

(declare-fun m!6772378 () Bool)

(assert (=> b!5853129 m!6772378))

(assert (=> d!1838031 d!1838239))

(declare-fun bs!1379142 () Bool)

(declare-fun b!5853141 () Bool)

(assert (= bs!1379142 (and b!5853141 b!5852501)))

(declare-fun lambda!320038 () Int)

(assert (=> bs!1379142 (= (and (= (reg!16248 (regOne!32351 (regOne!32351 r!7292))) (reg!16248 r!7292)) (= (regOne!32351 (regOne!32351 r!7292)) r!7292)) (= lambda!320038 lambda!320004))))

(declare-fun bs!1379143 () Bool)

(assert (= bs!1379143 (and b!5853141 b!5853026)))

(assert (=> bs!1379143 (not (= lambda!320038 lambda!320037))))

(declare-fun bs!1379144 () Bool)

(assert (= bs!1379144 (and b!5853141 b!5852480)))

(assert (=> bs!1379144 (not (= lambda!320038 lambda!319999))))

(declare-fun bs!1379146 () Bool)

(assert (= bs!1379146 (and b!5853141 b!5853022)))

(assert (=> bs!1379146 (= (and (= (reg!16248 (regOne!32351 (regOne!32351 r!7292))) (reg!16248 (regOne!32351 (regTwo!32351 r!7292)))) (= (regOne!32351 (regOne!32351 r!7292)) (regOne!32351 (regTwo!32351 r!7292)))) (= lambda!320038 lambda!320035))))

(declare-fun bs!1379148 () Bool)

(assert (= bs!1379148 (and b!5853141 b!5852419)))

(assert (=> bs!1379148 (= (and (= (reg!16248 (regOne!32351 (regOne!32351 r!7292))) (reg!16248 (regTwo!32351 r!7292))) (= (regOne!32351 (regOne!32351 r!7292)) (regTwo!32351 r!7292))) (= lambda!320038 lambda!319996))))

(declare-fun bs!1379150 () Bool)

(assert (= bs!1379150 (and b!5853141 b!5852423)))

(assert (=> bs!1379150 (not (= lambda!320038 lambda!319997))))

(declare-fun bs!1379152 () Bool)

(assert (= bs!1379152 (and b!5853141 b!5852476)))

(assert (=> bs!1379152 (= (and (= (reg!16248 (regOne!32351 (regOne!32351 r!7292))) (reg!16248 (regOne!32351 r!7292))) (= (regOne!32351 (regOne!32351 r!7292)) (regOne!32351 r!7292))) (= lambda!320038 lambda!319998))))

(declare-fun bs!1379155 () Bool)

(assert (= bs!1379155 (and b!5853141 b!5852505)))

(assert (=> bs!1379155 (not (= lambda!320038 lambda!320005))))

(assert (=> b!5853141 true))

(assert (=> b!5853141 true))

(declare-fun bs!1379156 () Bool)

(declare-fun b!5853145 () Bool)

(assert (= bs!1379156 (and b!5853145 b!5852501)))

(declare-fun lambda!320039 () Int)

(assert (=> bs!1379156 (not (= lambda!320039 lambda!320004))))

(declare-fun bs!1379157 () Bool)

(assert (= bs!1379157 (and b!5853145 b!5853026)))

(assert (=> bs!1379157 (= (and (= (regOne!32350 (regOne!32351 (regOne!32351 r!7292))) (regOne!32350 (regOne!32351 (regTwo!32351 r!7292)))) (= (regTwo!32350 (regOne!32351 (regOne!32351 r!7292))) (regTwo!32350 (regOne!32351 (regTwo!32351 r!7292))))) (= lambda!320039 lambda!320037))))

(declare-fun bs!1379158 () Bool)

(assert (= bs!1379158 (and b!5853145 b!5853141)))

(assert (=> bs!1379158 (not (= lambda!320039 lambda!320038))))

(declare-fun bs!1379159 () Bool)

(assert (= bs!1379159 (and b!5853145 b!5852480)))

(assert (=> bs!1379159 (= (and (= (regOne!32350 (regOne!32351 (regOne!32351 r!7292))) (regOne!32350 (regOne!32351 r!7292))) (= (regTwo!32350 (regOne!32351 (regOne!32351 r!7292))) (regTwo!32350 (regOne!32351 r!7292)))) (= lambda!320039 lambda!319999))))

(declare-fun bs!1379160 () Bool)

(assert (= bs!1379160 (and b!5853145 b!5853022)))

(assert (=> bs!1379160 (not (= lambda!320039 lambda!320035))))

(declare-fun bs!1379161 () Bool)

(assert (= bs!1379161 (and b!5853145 b!5852419)))

(assert (=> bs!1379161 (not (= lambda!320039 lambda!319996))))

(declare-fun bs!1379162 () Bool)

(assert (= bs!1379162 (and b!5853145 b!5852423)))

(assert (=> bs!1379162 (= (and (= (regOne!32350 (regOne!32351 (regOne!32351 r!7292))) (regOne!32350 (regTwo!32351 r!7292))) (= (regTwo!32350 (regOne!32351 (regOne!32351 r!7292))) (regTwo!32350 (regTwo!32351 r!7292)))) (= lambda!320039 lambda!319997))))

(declare-fun bs!1379163 () Bool)

(assert (= bs!1379163 (and b!5853145 b!5852476)))

(assert (=> bs!1379163 (not (= lambda!320039 lambda!319998))))

(declare-fun bs!1379164 () Bool)

(assert (= bs!1379164 (and b!5853145 b!5852505)))

(assert (=> bs!1379164 (= (and (= (regOne!32350 (regOne!32351 (regOne!32351 r!7292))) (regOne!32350 r!7292)) (= (regTwo!32350 (regOne!32351 (regOne!32351 r!7292))) (regTwo!32350 r!7292))) (= lambda!320039 lambda!320005))))

(assert (=> b!5853145 true))

(assert (=> b!5853145 true))

(declare-fun b!5853138 () Bool)

(declare-fun e!3589245 () Bool)

(declare-fun e!3589246 () Bool)

(assert (=> b!5853138 (= e!3589245 e!3589246)))

(declare-fun res!2463986 () Bool)

(assert (=> b!5853138 (= res!2463986 (not ((_ is EmptyLang!15919) (regOne!32351 (regOne!32351 r!7292)))))))

(assert (=> b!5853138 (=> (not res!2463986) (not e!3589246))))

(declare-fun b!5853139 () Bool)

(declare-fun e!3589248 () Bool)

(assert (=> b!5853139 (= e!3589248 (matchRSpec!3020 (regTwo!32351 (regOne!32351 (regOne!32351 r!7292))) s!2326))))

(declare-fun b!5853140 () Bool)

(declare-fun c!1037717 () Bool)

(assert (=> b!5853140 (= c!1037717 ((_ is Union!15919) (regOne!32351 (regOne!32351 r!7292))))))

(declare-fun e!3589251 () Bool)

(declare-fun e!3589250 () Bool)

(assert (=> b!5853140 (= e!3589251 e!3589250)))

(declare-fun e!3589247 () Bool)

(declare-fun call!458243 () Bool)

(assert (=> b!5853141 (= e!3589247 call!458243)))

(declare-fun b!5853142 () Bool)

(assert (=> b!5853142 (= e!3589250 e!3589248)))

(declare-fun res!2463985 () Bool)

(assert (=> b!5853142 (= res!2463985 (matchRSpec!3020 (regOne!32351 (regOne!32351 (regOne!32351 r!7292))) s!2326))))

(assert (=> b!5853142 (=> res!2463985 e!3589248)))

(declare-fun b!5853143 () Bool)

(assert (=> b!5853143 (= e!3589251 (= s!2326 (Cons!63934 (c!1037365 (regOne!32351 (regOne!32351 r!7292))) Nil!63934)))))

(declare-fun bm!458238 () Bool)

(declare-fun call!458244 () Bool)

(assert (=> bm!458238 (= call!458244 (isEmpty!35793 s!2326))))

(declare-fun b!5853144 () Bool)

(declare-fun c!1037715 () Bool)

(assert (=> b!5853144 (= c!1037715 ((_ is ElementMatch!15919) (regOne!32351 (regOne!32351 r!7292))))))

(assert (=> b!5853144 (= e!3589246 e!3589251)))

(declare-fun d!1838241 () Bool)

(declare-fun c!1037716 () Bool)

(assert (=> d!1838241 (= c!1037716 ((_ is EmptyExpr!15919) (regOne!32351 (regOne!32351 r!7292))))))

(assert (=> d!1838241 (= (matchRSpec!3020 (regOne!32351 (regOne!32351 r!7292)) s!2326) e!3589245)))

(declare-fun e!3589249 () Bool)

(assert (=> b!5853145 (= e!3589249 call!458243)))

(declare-fun b!5853146 () Bool)

(assert (=> b!5853146 (= e!3589250 e!3589249)))

(declare-fun c!1037718 () Bool)

(assert (=> b!5853146 (= c!1037718 ((_ is Star!15919) (regOne!32351 (regOne!32351 r!7292))))))

(declare-fun b!5853147 () Bool)

(assert (=> b!5853147 (= e!3589245 call!458244)))

(declare-fun bm!458239 () Bool)

(assert (=> bm!458239 (= call!458243 (Exists!2991 (ite c!1037718 lambda!320038 lambda!320039)))))

(declare-fun b!5853148 () Bool)

(declare-fun res!2463987 () Bool)

(assert (=> b!5853148 (=> res!2463987 e!3589247)))

(assert (=> b!5853148 (= res!2463987 call!458244)))

(assert (=> b!5853148 (= e!3589249 e!3589247)))

(assert (= (and d!1838241 c!1037716) b!5853147))

(assert (= (and d!1838241 (not c!1037716)) b!5853138))

(assert (= (and b!5853138 res!2463986) b!5853144))

(assert (= (and b!5853144 c!1037715) b!5853143))

(assert (= (and b!5853144 (not c!1037715)) b!5853140))

(assert (= (and b!5853140 c!1037717) b!5853142))

(assert (= (and b!5853140 (not c!1037717)) b!5853146))

(assert (= (and b!5853142 (not res!2463985)) b!5853139))

(assert (= (and b!5853146 c!1037718) b!5853148))

(assert (= (and b!5853146 (not c!1037718)) b!5853145))

(assert (= (and b!5853148 (not res!2463987)) b!5853141))

(assert (= (or b!5853141 b!5853145) bm!458239))

(assert (= (or b!5853147 b!5853148) bm!458238))

(declare-fun m!6772390 () Bool)

(assert (=> b!5853139 m!6772390))

(declare-fun m!6772392 () Bool)

(assert (=> b!5853142 m!6772392))

(assert (=> bm!458238 m!6771840))

(declare-fun m!6772394 () Bool)

(assert (=> bm!458239 m!6772394))

(assert (=> b!5852477 d!1838241))

(assert (=> d!1838027 d!1838023))

(declare-fun d!1838255 () Bool)

(assert (=> d!1838255 (= (flatMap!1450 z!1189 lambda!319958) (dynLambda!24992 lambda!319958 (h!70381 zl!343)))))

(assert (=> d!1838255 true))

(declare-fun _$13!2559 () Unit!157109)

(assert (=> d!1838255 (= (choose!44383 z!1189 (h!70381 zl!343) lambda!319958) _$13!2559)))

(declare-fun b_lambda!220323 () Bool)

(assert (=> (not b_lambda!220323) (not d!1838255)))

(declare-fun bs!1379165 () Bool)

(assert (= bs!1379165 d!1838255))

(assert (=> bs!1379165 m!6771580))

(assert (=> bs!1379165 m!6771942))

(assert (=> d!1838027 d!1838255))

(declare-fun d!1838257 () Bool)

(assert (=> d!1838257 (= (isEmpty!35794 (t!377419 (exprs!5803 (h!70381 zl!343)))) ((_ is Nil!63932) (t!377419 (exprs!5803 (h!70381 zl!343)))))))

(assert (=> b!5852586 d!1838257))

(declare-fun d!1838259 () Bool)

(declare-fun nullableFct!1906 (Regex!15919) Bool)

(assert (=> d!1838259 (= (nullable!5919 (regTwo!32351 r!7292)) (nullableFct!1906 (regTwo!32351 r!7292)))))

(declare-fun bs!1379166 () Bool)

(assert (= bs!1379166 d!1838259))

(declare-fun m!6772396 () Bool)

(assert (=> bs!1379166 m!6772396))

(assert (=> b!5852469 d!1838259))

(declare-fun d!1838261 () Bool)

(assert (=> d!1838261 (= (isEmptyLang!1362 lt!2304551) ((_ is EmptyLang!15919) lt!2304551))))

(assert (=> b!5852369 d!1838261))

(declare-fun d!1838263 () Bool)

(assert (=> d!1838263 (= ($colon$colon!1824 (exprs!5803 lt!2304502) (ite (or c!1037490 c!1037491) (regTwo!32350 r!7292) r!7292)) (Cons!63932 (ite (or c!1037490 c!1037491) (regTwo!32350 r!7292) r!7292) (exprs!5803 lt!2304502)))))

(assert (=> bm!458091 d!1838263))

(declare-fun d!1838265 () Bool)

(assert (=> d!1838265 (= (isEmpty!35793 s!2326) ((_ is Nil!63934) s!2326))))

(assert (=> d!1838017 d!1838265))

(assert (=> d!1838017 d!1838037))

(assert (=> bm!458121 d!1838265))

(declare-fun b!5853165 () Bool)

(declare-fun res!2463990 () Bool)

(declare-fun e!3589256 () Bool)

(assert (=> b!5853165 (=> (not res!2463990) (not e!3589256))))

(declare-fun call!458245 () Bool)

(assert (=> b!5853165 (= res!2463990 (not call!458245))))

(declare-fun d!1838267 () Bool)

(declare-fun e!3589257 () Bool)

(assert (=> d!1838267 e!3589257))

(declare-fun c!1037720 () Bool)

(assert (=> d!1838267 (= c!1037720 ((_ is EmptyExpr!15919) (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326))))))

(declare-fun lt!2304588 () Bool)

(declare-fun e!3589261 () Bool)

(assert (=> d!1838267 (= lt!2304588 e!3589261)))

(declare-fun c!1037721 () Bool)

(assert (=> d!1838267 (= c!1037721 (isEmpty!35793 (tail!11477 s!2326)))))

(assert (=> d!1838267 (validRegex!7655 (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326)))))

(assert (=> d!1838267 (= (matchR!8102 (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326)) (tail!11477 s!2326)) lt!2304588)))

(declare-fun b!5853166 () Bool)

(declare-fun e!3589260 () Bool)

(assert (=> b!5853166 (= e!3589257 e!3589260)))

(declare-fun c!1037719 () Bool)

(assert (=> b!5853166 (= c!1037719 ((_ is EmptyLang!15919) (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326))))))

(declare-fun b!5853167 () Bool)

(declare-fun res!2463992 () Bool)

(declare-fun e!3589262 () Bool)

(assert (=> b!5853167 (=> res!2463992 e!3589262)))

(assert (=> b!5853167 (= res!2463992 e!3589256)))

(declare-fun res!2463989 () Bool)

(assert (=> b!5853167 (=> (not res!2463989) (not e!3589256))))

(assert (=> b!5853167 (= res!2463989 lt!2304588)))

(declare-fun bm!458240 () Bool)

(assert (=> bm!458240 (= call!458245 (isEmpty!35793 (tail!11477 s!2326)))))

(declare-fun b!5853168 () Bool)

(assert (=> b!5853168 (= e!3589256 (= (head!12392 (tail!11477 s!2326)) (c!1037365 (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326)))))))

(declare-fun b!5853169 () Bool)

(declare-fun e!3589259 () Bool)

(assert (=> b!5853169 (= e!3589259 (not (= (head!12392 (tail!11477 s!2326)) (c!1037365 (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326))))))))

(declare-fun b!5853170 () Bool)

(assert (=> b!5853170 (= e!3589261 (matchR!8102 (derivativeStep!4657 (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326)) (head!12392 (tail!11477 s!2326))) (tail!11477 (tail!11477 s!2326))))))

(declare-fun b!5853171 () Bool)

(declare-fun e!3589258 () Bool)

(assert (=> b!5853171 (= e!3589262 e!3589258)))

(declare-fun res!2463995 () Bool)

(assert (=> b!5853171 (=> (not res!2463995) (not e!3589258))))

(assert (=> b!5853171 (= res!2463995 (not lt!2304588))))

(declare-fun b!5853172 () Bool)

(declare-fun res!2463991 () Bool)

(assert (=> b!5853172 (=> (not res!2463991) (not e!3589256))))

(assert (=> b!5853172 (= res!2463991 (isEmpty!35793 (tail!11477 (tail!11477 s!2326))))))

(declare-fun b!5853173 () Bool)

(assert (=> b!5853173 (= e!3589258 e!3589259)))

(declare-fun res!2463993 () Bool)

(assert (=> b!5853173 (=> res!2463993 e!3589259)))

(assert (=> b!5853173 (= res!2463993 call!458245)))

(declare-fun b!5853174 () Bool)

(assert (=> b!5853174 (= e!3589257 (= lt!2304588 call!458245))))

(declare-fun b!5853175 () Bool)

(assert (=> b!5853175 (= e!3589261 (nullable!5919 (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326))))))

(declare-fun b!5853176 () Bool)

(declare-fun res!2463988 () Bool)

(assert (=> b!5853176 (=> res!2463988 e!3589262)))

(assert (=> b!5853176 (= res!2463988 (not ((_ is ElementMatch!15919) (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326)))))))

(assert (=> b!5853176 (= e!3589260 e!3589262)))

(declare-fun b!5853177 () Bool)

(declare-fun res!2463994 () Bool)

(assert (=> b!5853177 (=> res!2463994 e!3589259)))

(assert (=> b!5853177 (= res!2463994 (not (isEmpty!35793 (tail!11477 (tail!11477 s!2326)))))))

(declare-fun b!5853178 () Bool)

(assert (=> b!5853178 (= e!3589260 (not lt!2304588))))

(assert (= (and d!1838267 c!1037721) b!5853175))

(assert (= (and d!1838267 (not c!1037721)) b!5853170))

(assert (= (and d!1838267 c!1037720) b!5853174))

(assert (= (and d!1838267 (not c!1037720)) b!5853166))

(assert (= (and b!5853166 c!1037719) b!5853178))

(assert (= (and b!5853166 (not c!1037719)) b!5853176))

(assert (= (and b!5853176 (not res!2463988)) b!5853167))

(assert (= (and b!5853167 res!2463989) b!5853165))

(assert (= (and b!5853165 res!2463990) b!5853172))

(assert (= (and b!5853172 res!2463991) b!5853168))

(assert (= (and b!5853167 (not res!2463992)) b!5853171))

(assert (= (and b!5853171 res!2463995) b!5853173))

(assert (= (and b!5853173 (not res!2463993)) b!5853177))

(assert (= (and b!5853177 (not res!2463994)) b!5853169))

(assert (= (or b!5853174 b!5853165 b!5853173) bm!458240))

(assert (=> bm!458240 m!6771848))

(assert (=> bm!458240 m!6771896))

(assert (=> b!5853169 m!6771848))

(declare-fun m!6772398 () Bool)

(assert (=> b!5853169 m!6772398))

(assert (=> b!5853175 m!6771914))

(declare-fun m!6772400 () Bool)

(assert (=> b!5853175 m!6772400))

(assert (=> b!5853177 m!6771848))

(declare-fun m!6772402 () Bool)

(assert (=> b!5853177 m!6772402))

(assert (=> b!5853177 m!6772402))

(declare-fun m!6772404 () Bool)

(assert (=> b!5853177 m!6772404))

(assert (=> b!5853172 m!6771848))

(assert (=> b!5853172 m!6772402))

(assert (=> b!5853172 m!6772402))

(assert (=> b!5853172 m!6772404))

(assert (=> b!5853170 m!6771848))

(assert (=> b!5853170 m!6772398))

(assert (=> b!5853170 m!6771914))

(assert (=> b!5853170 m!6772398))

(declare-fun m!6772406 () Bool)

(assert (=> b!5853170 m!6772406))

(assert (=> b!5853170 m!6771848))

(assert (=> b!5853170 m!6772402))

(assert (=> b!5853170 m!6772406))

(assert (=> b!5853170 m!6772402))

(declare-fun m!6772408 () Bool)

(assert (=> b!5853170 m!6772408))

(assert (=> b!5853168 m!6771848))

(assert (=> b!5853168 m!6772398))

(assert (=> d!1838267 m!6771848))

(assert (=> d!1838267 m!6771896))

(assert (=> d!1838267 m!6771914))

(declare-fun m!6772410 () Bool)

(assert (=> d!1838267 m!6772410))

(assert (=> b!5852489 d!1838267))

(declare-fun bm!458249 () Bool)

(declare-fun call!458255 () Regex!15919)

(declare-fun call!458254 () Regex!15919)

(assert (=> bm!458249 (= call!458255 call!458254)))

(declare-fun b!5853199 () Bool)

(declare-fun e!3589275 () Regex!15919)

(declare-fun call!458257 () Regex!15919)

(assert (=> b!5853199 (= e!3589275 (Union!15919 (Concat!24764 call!458257 (regTwo!32350 (regOne!32351 r!7292))) EmptyLang!15919))))

(declare-fun call!458256 () Regex!15919)

(declare-fun b!5853200 () Bool)

(assert (=> b!5853200 (= e!3589275 (Union!15919 (Concat!24764 call!458256 (regTwo!32350 (regOne!32351 r!7292))) call!458257))))

(declare-fun b!5853201 () Bool)

(declare-fun c!1037732 () Bool)

(assert (=> b!5853201 (= c!1037732 (nullable!5919 (regOne!32350 (regOne!32351 r!7292))))))

(declare-fun e!3589273 () Regex!15919)

(assert (=> b!5853201 (= e!3589273 e!3589275)))

(declare-fun b!5853202 () Bool)

(declare-fun e!3589274 () Regex!15919)

(assert (=> b!5853202 (= e!3589274 (ite (= (head!12392 s!2326) (c!1037365 (regOne!32351 r!7292))) EmptyExpr!15919 EmptyLang!15919))))

(declare-fun d!1838269 () Bool)

(declare-fun lt!2304591 () Regex!15919)

(assert (=> d!1838269 (validRegex!7655 lt!2304591)))

(declare-fun e!3589276 () Regex!15919)

(assert (=> d!1838269 (= lt!2304591 e!3589276)))

(declare-fun c!1037734 () Bool)

(assert (=> d!1838269 (= c!1037734 (or ((_ is EmptyExpr!15919) (regOne!32351 r!7292)) ((_ is EmptyLang!15919) (regOne!32351 r!7292))))))

(assert (=> d!1838269 (validRegex!7655 (regOne!32351 r!7292))))

(assert (=> d!1838269 (= (derivativeStep!4657 (regOne!32351 r!7292) (head!12392 s!2326)) lt!2304591)))

(declare-fun b!5853203 () Bool)

(assert (=> b!5853203 (= e!3589273 (Concat!24764 call!458255 (regOne!32351 r!7292)))))

(declare-fun bm!458250 () Bool)

(declare-fun c!1037735 () Bool)

(assert (=> bm!458250 (= call!458256 (derivativeStep!4657 (ite c!1037735 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292))) (head!12392 s!2326)))))

(declare-fun c!1037733 () Bool)

(declare-fun bm!458251 () Bool)

(assert (=> bm!458251 (= call!458254 (derivativeStep!4657 (ite c!1037735 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037733 (reg!16248 (regOne!32351 r!7292)) (ite c!1037732 (regTwo!32350 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292))))) (head!12392 s!2326)))))

(declare-fun bm!458252 () Bool)

(assert (=> bm!458252 (= call!458257 call!458255)))

(declare-fun b!5853204 () Bool)

(declare-fun e!3589277 () Regex!15919)

(assert (=> b!5853204 (= e!3589277 (Union!15919 call!458256 call!458254))))

(declare-fun b!5853205 () Bool)

(assert (=> b!5853205 (= e!3589276 EmptyLang!15919)))

(declare-fun b!5853206 () Bool)

(assert (=> b!5853206 (= c!1037735 ((_ is Union!15919) (regOne!32351 r!7292)))))

(assert (=> b!5853206 (= e!3589274 e!3589277)))

(declare-fun b!5853207 () Bool)

(assert (=> b!5853207 (= e!3589277 e!3589273)))

(assert (=> b!5853207 (= c!1037733 ((_ is Star!15919) (regOne!32351 r!7292)))))

(declare-fun b!5853208 () Bool)

(assert (=> b!5853208 (= e!3589276 e!3589274)))

(declare-fun c!1037736 () Bool)

(assert (=> b!5853208 (= c!1037736 ((_ is ElementMatch!15919) (regOne!32351 r!7292)))))

(assert (= (and d!1838269 c!1037734) b!5853205))

(assert (= (and d!1838269 (not c!1037734)) b!5853208))

(assert (= (and b!5853208 c!1037736) b!5853202))

(assert (= (and b!5853208 (not c!1037736)) b!5853206))

(assert (= (and b!5853206 c!1037735) b!5853204))

(assert (= (and b!5853206 (not c!1037735)) b!5853207))

(assert (= (and b!5853207 c!1037733) b!5853203))

(assert (= (and b!5853207 (not c!1037733)) b!5853201))

(assert (= (and b!5853201 c!1037732) b!5853200))

(assert (= (and b!5853201 (not c!1037732)) b!5853199))

(assert (= (or b!5853200 b!5853199) bm!458252))

(assert (= (or b!5853203 bm!458252) bm!458249))

(assert (= (or b!5853204 bm!458249) bm!458251))

(assert (= (or b!5853204 b!5853200) bm!458250))

(assert (=> b!5853201 m!6771832))

(declare-fun m!6772412 () Bool)

(assert (=> d!1838269 m!6772412))

(assert (=> d!1838269 m!6771892))

(assert (=> bm!458250 m!6771844))

(declare-fun m!6772414 () Bool)

(assert (=> bm!458250 m!6772414))

(assert (=> bm!458251 m!6771844))

(declare-fun m!6772416 () Bool)

(assert (=> bm!458251 m!6772416))

(assert (=> b!5852489 d!1838269))

(declare-fun d!1838271 () Bool)

(assert (=> d!1838271 (= (head!12392 s!2326) (h!70382 s!2326))))

(assert (=> b!5852489 d!1838271))

(declare-fun d!1838273 () Bool)

(assert (=> d!1838273 (= (tail!11477 s!2326) (t!377421 s!2326))))

(assert (=> b!5852489 d!1838273))

(assert (=> d!1837989 d!1838265))

(declare-fun d!1838275 () Bool)

(declare-fun lambda!320042 () Int)

(declare-fun exists!2302 ((InoxSet Context!10606) Int) Bool)

(assert (=> d!1838275 (= (nullableZipper!1758 lt!2304509) (exists!2302 lt!2304509 lambda!320042))))

(declare-fun bs!1379167 () Bool)

(assert (= bs!1379167 d!1838275))

(declare-fun m!6772418 () Bool)

(assert (=> bs!1379167 m!6772418))

(assert (=> b!5852346 d!1838275))

(declare-fun d!1838277 () Bool)

(declare-fun c!1037739 () Bool)

(assert (=> d!1838277 (= c!1037739 (isEmpty!35793 (tail!11477 (t!377421 s!2326))))))

(declare-fun e!3589278 () Bool)

(assert (=> d!1838277 (= (matchZipper!1985 (derivationStepZipper!1918 lt!2304509 (head!12392 (t!377421 s!2326))) (tail!11477 (t!377421 s!2326))) e!3589278)))

(declare-fun b!5853209 () Bool)

(assert (=> b!5853209 (= e!3589278 (nullableZipper!1758 (derivationStepZipper!1918 lt!2304509 (head!12392 (t!377421 s!2326)))))))

(declare-fun b!5853210 () Bool)

(assert (=> b!5853210 (= e!3589278 (matchZipper!1985 (derivationStepZipper!1918 (derivationStepZipper!1918 lt!2304509 (head!12392 (t!377421 s!2326))) (head!12392 (tail!11477 (t!377421 s!2326)))) (tail!11477 (tail!11477 (t!377421 s!2326)))))))

(assert (= (and d!1838277 c!1037739) b!5853209))

(assert (= (and d!1838277 (not c!1037739)) b!5853210))

(assert (=> d!1838277 m!6771778))

(declare-fun m!6772420 () Bool)

(assert (=> d!1838277 m!6772420))

(assert (=> b!5853209 m!6771854))

(declare-fun m!6772422 () Bool)

(assert (=> b!5853209 m!6772422))

(assert (=> b!5853210 m!6771778))

(declare-fun m!6772424 () Bool)

(assert (=> b!5853210 m!6772424))

(assert (=> b!5853210 m!6771854))

(assert (=> b!5853210 m!6772424))

(declare-fun m!6772426 () Bool)

(assert (=> b!5853210 m!6772426))

(assert (=> b!5853210 m!6771778))

(declare-fun m!6772428 () Bool)

(assert (=> b!5853210 m!6772428))

(assert (=> b!5853210 m!6772426))

(assert (=> b!5853210 m!6772428))

(declare-fun m!6772430 () Bool)

(assert (=> b!5853210 m!6772430))

(assert (=> b!5852347 d!1838277))

(declare-fun bs!1379168 () Bool)

(declare-fun d!1838279 () Bool)

(assert (= bs!1379168 (and d!1838279 b!5851884)))

(declare-fun lambda!320043 () Int)

(assert (=> bs!1379168 (= (= (head!12392 (t!377421 s!2326)) (h!70382 s!2326)) (= lambda!320043 lambda!319958))))

(declare-fun bs!1379169 () Bool)

(assert (= bs!1379169 (and d!1838279 d!1838021)))

(assert (=> bs!1379169 (= (= (head!12392 (t!377421 s!2326)) (h!70382 s!2326)) (= lambda!320043 lambda!320008))))

(assert (=> d!1838279 true))

(assert (=> d!1838279 (= (derivationStepZipper!1918 lt!2304509 (head!12392 (t!377421 s!2326))) (flatMap!1450 lt!2304509 lambda!320043))))

(declare-fun bs!1379170 () Bool)

(assert (= bs!1379170 d!1838279))

(declare-fun m!6772432 () Bool)

(assert (=> bs!1379170 m!6772432))

(assert (=> b!5852347 d!1838279))

(declare-fun d!1838281 () Bool)

(assert (=> d!1838281 (= (head!12392 (t!377421 s!2326)) (h!70382 (t!377421 s!2326)))))

(assert (=> b!5852347 d!1838281))

(declare-fun d!1838283 () Bool)

(assert (=> d!1838283 (= (tail!11477 (t!377421 s!2326)) (t!377421 (t!377421 s!2326)))))

(assert (=> b!5852347 d!1838283))

(declare-fun b!5853211 () Bool)

(declare-fun res!2463998 () Bool)

(declare-fun e!3589280 () Bool)

(assert (=> b!5853211 (=> (not res!2463998) (not e!3589280))))

(declare-fun call!458259 () Bool)

(assert (=> b!5853211 (= res!2463998 call!458259)))

(declare-fun e!3589284 () Bool)

(assert (=> b!5853211 (= e!3589284 e!3589280)))

(declare-fun b!5853212 () Bool)

(declare-fun res!2463997 () Bool)

(declare-fun e!3589283 () Bool)

(assert (=> b!5853212 (=> res!2463997 e!3589283)))

(assert (=> b!5853212 (= res!2463997 (not ((_ is Concat!24764) lt!2304551)))))

(assert (=> b!5853212 (= e!3589284 e!3589283)))

(declare-fun bm!458253 () Bool)

(declare-fun call!458260 () Bool)

(assert (=> bm!458253 (= call!458259 call!458260)))

(declare-fun b!5853213 () Bool)

(declare-fun e!3589279 () Bool)

(declare-fun e!3589282 () Bool)

(assert (=> b!5853213 (= e!3589279 e!3589282)))

(declare-fun c!1037741 () Bool)

(assert (=> b!5853213 (= c!1037741 ((_ is Star!15919) lt!2304551))))

(declare-fun b!5853214 () Bool)

(assert (=> b!5853214 (= e!3589282 e!3589284)))

(declare-fun c!1037740 () Bool)

(assert (=> b!5853214 (= c!1037740 ((_ is Union!15919) lt!2304551))))

(declare-fun d!1838285 () Bool)

(declare-fun res!2463996 () Bool)

(assert (=> d!1838285 (=> res!2463996 e!3589279)))

(assert (=> d!1838285 (= res!2463996 ((_ is ElementMatch!15919) lt!2304551))))

(assert (=> d!1838285 (= (validRegex!7655 lt!2304551) e!3589279)))

(declare-fun bm!458254 () Bool)

(declare-fun call!458258 () Bool)

(assert (=> bm!458254 (= call!458258 (validRegex!7655 (ite c!1037740 (regTwo!32351 lt!2304551) (regTwo!32350 lt!2304551))))))

(declare-fun b!5853215 () Bool)

(declare-fun e!3589285 () Bool)

(assert (=> b!5853215 (= e!3589282 e!3589285)))

(declare-fun res!2463999 () Bool)

(assert (=> b!5853215 (= res!2463999 (not (nullable!5919 (reg!16248 lt!2304551))))))

(assert (=> b!5853215 (=> (not res!2463999) (not e!3589285))))

(declare-fun b!5853216 () Bool)

(assert (=> b!5853216 (= e!3589280 call!458258)))

(declare-fun bm!458255 () Bool)

(assert (=> bm!458255 (= call!458260 (validRegex!7655 (ite c!1037741 (reg!16248 lt!2304551) (ite c!1037740 (regOne!32351 lt!2304551) (regOne!32350 lt!2304551)))))))

(declare-fun b!5853217 () Bool)

(declare-fun e!3589281 () Bool)

(assert (=> b!5853217 (= e!3589283 e!3589281)))

(declare-fun res!2464000 () Bool)

(assert (=> b!5853217 (=> (not res!2464000) (not e!3589281))))

(assert (=> b!5853217 (= res!2464000 call!458259)))

(declare-fun b!5853218 () Bool)

(assert (=> b!5853218 (= e!3589285 call!458260)))

(declare-fun b!5853219 () Bool)

(assert (=> b!5853219 (= e!3589281 call!458258)))

(assert (= (and d!1838285 (not res!2463996)) b!5853213))

(assert (= (and b!5853213 c!1037741) b!5853215))

(assert (= (and b!5853213 (not c!1037741)) b!5853214))

(assert (= (and b!5853215 res!2463999) b!5853218))

(assert (= (and b!5853214 c!1037740) b!5853211))

(assert (= (and b!5853214 (not c!1037740)) b!5853212))

(assert (= (and b!5853211 res!2463998) b!5853216))

(assert (= (and b!5853212 (not res!2463997)) b!5853217))

(assert (= (and b!5853217 res!2464000) b!5853219))

(assert (= (or b!5853216 b!5853219) bm!458254))

(assert (= (or b!5853211 b!5853217) bm!458253))

(assert (= (or b!5853218 bm!458253) bm!458255))

(declare-fun m!6772434 () Bool)

(assert (=> bm!458254 m!6772434))

(declare-fun m!6772436 () Bool)

(assert (=> b!5853215 m!6772436))

(declare-fun m!6772438 () Bool)

(assert (=> bm!458255 m!6772438))

(assert (=> d!1837995 d!1838285))

(declare-fun d!1838287 () Bool)

(declare-fun res!2464001 () Bool)

(declare-fun e!3589286 () Bool)

(assert (=> d!1838287 (=> res!2464001 e!3589286)))

(assert (=> d!1838287 (= res!2464001 ((_ is Nil!63932) (unfocusZipperList!1340 zl!343)))))

(assert (=> d!1838287 (= (forall!15006 (unfocusZipperList!1340 zl!343) lambda!319988) e!3589286)))

(declare-fun b!5853220 () Bool)

(declare-fun e!3589287 () Bool)

(assert (=> b!5853220 (= e!3589286 e!3589287)))

(declare-fun res!2464002 () Bool)

(assert (=> b!5853220 (=> (not res!2464002) (not e!3589287))))

(assert (=> b!5853220 (= res!2464002 (dynLambda!24993 lambda!319988 (h!70380 (unfocusZipperList!1340 zl!343))))))

(declare-fun b!5853221 () Bool)

(assert (=> b!5853221 (= e!3589287 (forall!15006 (t!377419 (unfocusZipperList!1340 zl!343)) lambda!319988))))

(assert (= (and d!1838287 (not res!2464001)) b!5853220))

(assert (= (and b!5853220 res!2464002) b!5853221))

(declare-fun b_lambda!220325 () Bool)

(assert (=> (not b_lambda!220325) (not b!5853220)))

(declare-fun m!6772440 () Bool)

(assert (=> b!5853220 m!6772440))

(declare-fun m!6772442 () Bool)

(assert (=> b!5853221 m!6772442))

(assert (=> d!1837995 d!1838287))

(declare-fun d!1838289 () Bool)

(assert (=> d!1838289 (= (nullable!5919 (h!70380 (exprs!5803 (h!70381 zl!343)))) (nullableFct!1906 (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun bs!1379171 () Bool)

(assert (= bs!1379171 d!1838289))

(declare-fun m!6772444 () Bool)

(assert (=> bs!1379171 m!6772444))

(assert (=> b!5852526 d!1838289))

(assert (=> b!5852513 d!1838271))

(declare-fun d!1838291 () Bool)

(declare-fun choose!44387 (Int) Bool)

(assert (=> d!1838291 (= (Exists!2991 (ite c!1037557 lambda!320004 lambda!320005)) (choose!44387 (ite c!1037557 lambda!320004 lambda!320005)))))

(declare-fun bs!1379172 () Bool)

(assert (= bs!1379172 d!1838291))

(declare-fun m!6772446 () Bool)

(assert (=> bs!1379172 m!6772446))

(assert (=> bm!458122 d!1838291))

(declare-fun d!1838293 () Bool)

(assert (=> d!1838293 (= (nullable!5919 (regOne!32351 r!7292)) (nullableFct!1906 (regOne!32351 r!7292)))))

(declare-fun bs!1379173 () Bool)

(assert (= bs!1379173 d!1838293))

(declare-fun m!6772448 () Bool)

(assert (=> bs!1379173 m!6772448))

(assert (=> b!5852494 d!1838293))

(declare-fun bs!1379174 () Bool)

(declare-fun d!1838295 () Bool)

(assert (= bs!1379174 (and d!1838295 d!1838275)))

(declare-fun lambda!320044 () Int)

(assert (=> bs!1379174 (= lambda!320044 lambda!320042)))

(assert (=> d!1838295 (= (nullableZipper!1758 lt!2304504) (exists!2302 lt!2304504 lambda!320044))))

(declare-fun bs!1379175 () Bool)

(assert (= bs!1379175 d!1838295))

(declare-fun m!6772450 () Bool)

(assert (=> bs!1379175 m!6772450))

(assert (=> b!5852533 d!1838295))

(declare-fun d!1838297 () Bool)

(declare-fun c!1037744 () Bool)

(assert (=> d!1838297 (= c!1037744 ((_ is Nil!63933) lt!2304570))))

(declare-fun e!3589290 () (InoxSet Context!10606))

(assert (=> d!1838297 (= (content!11749 lt!2304570) e!3589290)))

(declare-fun b!5853226 () Bool)

(assert (=> b!5853226 (= e!3589290 ((as const (Array Context!10606 Bool)) false))))

(declare-fun b!5853227 () Bool)

(assert (=> b!5853227 (= e!3589290 ((_ map or) (store ((as const (Array Context!10606 Bool)) false) (h!70381 lt!2304570) true) (content!11749 (t!377420 lt!2304570))))))

(assert (= (and d!1838297 c!1037744) b!5853226))

(assert (= (and d!1838297 (not c!1037744)) b!5853227))

(declare-fun m!6772452 () Bool)

(assert (=> b!5853227 m!6772452))

(declare-fun m!6772454 () Bool)

(assert (=> b!5853227 m!6772454))

(assert (=> b!5852532 d!1838297))

(assert (=> bm!458117 d!1838265))

(declare-fun d!1838299 () Bool)

(assert (=> d!1838299 (= (isEmpty!35793 (tail!11477 s!2326)) ((_ is Nil!63934) (tail!11477 s!2326)))))

(assert (=> b!5852521 d!1838299))

(assert (=> b!5852521 d!1838273))

(declare-fun d!1838301 () Bool)

(assert (=> d!1838301 (= (isEmpty!35794 (exprs!5803 (h!70381 zl!343))) ((_ is Nil!63932) (exprs!5803 (h!70381 zl!343))))))

(assert (=> b!5852585 d!1838301))

(assert (=> d!1838003 d!1838265))

(declare-fun b!5853228 () Bool)

(declare-fun res!2464005 () Bool)

(declare-fun e!3589292 () Bool)

(assert (=> b!5853228 (=> (not res!2464005) (not e!3589292))))

(declare-fun call!458262 () Bool)

(assert (=> b!5853228 (= res!2464005 call!458262)))

(declare-fun e!3589296 () Bool)

(assert (=> b!5853228 (= e!3589296 e!3589292)))

(declare-fun b!5853229 () Bool)

(declare-fun res!2464004 () Bool)

(declare-fun e!3589295 () Bool)

(assert (=> b!5853229 (=> res!2464004 e!3589295)))

(assert (=> b!5853229 (= res!2464004 (not ((_ is Concat!24764) (regTwo!32351 r!7292))))))

(assert (=> b!5853229 (= e!3589296 e!3589295)))

(declare-fun bm!458256 () Bool)

(declare-fun call!458263 () Bool)

(assert (=> bm!458256 (= call!458262 call!458263)))

(declare-fun b!5853230 () Bool)

(declare-fun e!3589291 () Bool)

(declare-fun e!3589294 () Bool)

(assert (=> b!5853230 (= e!3589291 e!3589294)))

(declare-fun c!1037746 () Bool)

(assert (=> b!5853230 (= c!1037746 ((_ is Star!15919) (regTwo!32351 r!7292)))))

(declare-fun b!5853231 () Bool)

(assert (=> b!5853231 (= e!3589294 e!3589296)))

(declare-fun c!1037745 () Bool)

(assert (=> b!5853231 (= c!1037745 ((_ is Union!15919) (regTwo!32351 r!7292)))))

(declare-fun d!1838303 () Bool)

(declare-fun res!2464003 () Bool)

(assert (=> d!1838303 (=> res!2464003 e!3589291)))

(assert (=> d!1838303 (= res!2464003 ((_ is ElementMatch!15919) (regTwo!32351 r!7292)))))

(assert (=> d!1838303 (= (validRegex!7655 (regTwo!32351 r!7292)) e!3589291)))

(declare-fun bm!458257 () Bool)

(declare-fun call!458261 () Bool)

(assert (=> bm!458257 (= call!458261 (validRegex!7655 (ite c!1037745 (regTwo!32351 (regTwo!32351 r!7292)) (regTwo!32350 (regTwo!32351 r!7292)))))))

(declare-fun b!5853232 () Bool)

(declare-fun e!3589297 () Bool)

(assert (=> b!5853232 (= e!3589294 e!3589297)))

(declare-fun res!2464006 () Bool)

(assert (=> b!5853232 (= res!2464006 (not (nullable!5919 (reg!16248 (regTwo!32351 r!7292)))))))

(assert (=> b!5853232 (=> (not res!2464006) (not e!3589297))))

(declare-fun b!5853233 () Bool)

(assert (=> b!5853233 (= e!3589292 call!458261)))

(declare-fun bm!458258 () Bool)

(assert (=> bm!458258 (= call!458263 (validRegex!7655 (ite c!1037746 (reg!16248 (regTwo!32351 r!7292)) (ite c!1037745 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))))))))

(declare-fun b!5853234 () Bool)

(declare-fun e!3589293 () Bool)

(assert (=> b!5853234 (= e!3589295 e!3589293)))

(declare-fun res!2464007 () Bool)

(assert (=> b!5853234 (=> (not res!2464007) (not e!3589293))))

(assert (=> b!5853234 (= res!2464007 call!458262)))

(declare-fun b!5853235 () Bool)

(assert (=> b!5853235 (= e!3589297 call!458263)))

(declare-fun b!5853236 () Bool)

(assert (=> b!5853236 (= e!3589293 call!458261)))

(assert (= (and d!1838303 (not res!2464003)) b!5853230))

(assert (= (and b!5853230 c!1037746) b!5853232))

(assert (= (and b!5853230 (not c!1037746)) b!5853231))

(assert (= (and b!5853232 res!2464006) b!5853235))

(assert (= (and b!5853231 c!1037745) b!5853228))

(assert (= (and b!5853231 (not c!1037745)) b!5853229))

(assert (= (and b!5853228 res!2464005) b!5853233))

(assert (= (and b!5853229 (not res!2464004)) b!5853234))

(assert (= (and b!5853234 res!2464007) b!5853236))

(assert (= (or b!5853233 b!5853236) bm!458257))

(assert (= (or b!5853228 b!5853234) bm!458256))

(assert (= (or b!5853235 bm!458256) bm!458258))

(declare-fun m!6772456 () Bool)

(assert (=> bm!458257 m!6772456))

(declare-fun m!6772458 () Bool)

(assert (=> b!5853232 m!6772458))

(declare-fun m!6772460 () Bool)

(assert (=> bm!458258 m!6772460))

(assert (=> d!1838003 d!1838303))

(assert (=> b!5852499 d!1837999))

(declare-fun d!1838305 () Bool)

(declare-fun res!2464008 () Bool)

(declare-fun e!3589298 () Bool)

(assert (=> d!1838305 (=> res!2464008 e!3589298)))

(assert (=> d!1838305 (= res!2464008 ((_ is Nil!63932) (exprs!5803 (h!70381 zl!343))))))

(assert (=> d!1838305 (= (forall!15006 (exprs!5803 (h!70381 zl!343)) lambda!320002) e!3589298)))

(declare-fun b!5853237 () Bool)

(declare-fun e!3589299 () Bool)

(assert (=> b!5853237 (= e!3589298 e!3589299)))

(declare-fun res!2464009 () Bool)

(assert (=> b!5853237 (=> (not res!2464009) (not e!3589299))))

(assert (=> b!5853237 (= res!2464009 (dynLambda!24993 lambda!320002 (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5853238 () Bool)

(assert (=> b!5853238 (= e!3589299 (forall!15006 (t!377419 (exprs!5803 (h!70381 zl!343))) lambda!320002))))

(assert (= (and d!1838305 (not res!2464008)) b!5853237))

(assert (= (and b!5853237 res!2464009) b!5853238))

(declare-fun b_lambda!220327 () Bool)

(assert (=> (not b_lambda!220327) (not b!5853237)))

(declare-fun m!6772462 () Bool)

(assert (=> b!5853237 m!6772462))

(declare-fun m!6772464 () Bool)

(assert (=> b!5853238 m!6772464))

(assert (=> d!1838011 d!1838305))

(declare-fun bs!1379176 () Bool)

(declare-fun d!1838307 () Bool)

(assert (= bs!1379176 (and d!1838307 d!1837997)))

(declare-fun lambda!320045 () Int)

(assert (=> bs!1379176 (= lambda!320045 lambda!319991)))

(declare-fun bs!1379177 () Bool)

(assert (= bs!1379177 (and d!1838307 d!1838039)))

(assert (=> bs!1379177 (= lambda!320045 lambda!320012)))

(declare-fun bs!1379178 () Bool)

(assert (= bs!1379178 (and d!1838307 d!1838031)))

(assert (=> bs!1379178 (= lambda!320045 lambda!320009)))

(declare-fun bs!1379179 () Bool)

(assert (= bs!1379179 (and d!1838307 d!1838011)))

(assert (=> bs!1379179 (= lambda!320045 lambda!320002)))

(declare-fun bs!1379180 () Bool)

(assert (= bs!1379180 (and d!1838307 d!1837995)))

(assert (=> bs!1379180 (= lambda!320045 lambda!319988)))

(declare-fun bs!1379181 () Bool)

(assert (= bs!1379181 (and d!1838307 d!1838013)))

(assert (=> bs!1379181 (= lambda!320045 lambda!320003)))

(declare-fun b!5853239 () Bool)

(declare-fun e!3589305 () Bool)

(declare-fun e!3589300 () Bool)

(assert (=> b!5853239 (= e!3589305 e!3589300)))

(declare-fun c!1037747 () Bool)

(assert (=> b!5853239 (= c!1037747 (isEmpty!35794 (t!377419 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5853240 () Bool)

(declare-fun e!3589302 () Bool)

(assert (=> b!5853240 (= e!3589302 (isEmpty!35794 (t!377419 (t!377419 (exprs!5803 (h!70381 zl!343))))))))

(declare-fun b!5853241 () Bool)

(declare-fun lt!2304592 () Regex!15919)

(assert (=> b!5853241 (= e!3589300 (isEmptyExpr!1354 lt!2304592))))

(declare-fun b!5853242 () Bool)

(declare-fun e!3589303 () Regex!15919)

(declare-fun e!3589301 () Regex!15919)

(assert (=> b!5853242 (= e!3589303 e!3589301)))

(declare-fun c!1037750 () Bool)

(assert (=> b!5853242 (= c!1037750 ((_ is Cons!63932) (t!377419 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5853243 () Bool)

(assert (=> b!5853243 (= e!3589301 (Concat!24764 (h!70380 (t!377419 (exprs!5803 (h!70381 zl!343)))) (generalisedConcat!1516 (t!377419 (t!377419 (exprs!5803 (h!70381 zl!343)))))))))

(declare-fun b!5853244 () Bool)

(assert (=> b!5853244 (= e!3589301 EmptyExpr!15919)))

(declare-fun b!5853245 () Bool)

(declare-fun e!3589304 () Bool)

(assert (=> b!5853245 (= e!3589304 (isConcat!877 lt!2304592))))

(declare-fun b!5853246 () Bool)

(assert (=> b!5853246 (= e!3589303 (h!70380 (t!377419 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5853247 () Bool)

(assert (=> b!5853247 (= e!3589304 (= lt!2304592 (head!12393 (t!377419 (exprs!5803 (h!70381 zl!343))))))))

(declare-fun b!5853248 () Bool)

(assert (=> b!5853248 (= e!3589300 e!3589304)))

(declare-fun c!1037749 () Bool)

(assert (=> b!5853248 (= c!1037749 (isEmpty!35794 (tail!11478 (t!377419 (exprs!5803 (h!70381 zl!343))))))))

(assert (=> d!1838307 e!3589305))

(declare-fun res!2464010 () Bool)

(assert (=> d!1838307 (=> (not res!2464010) (not e!3589305))))

(assert (=> d!1838307 (= res!2464010 (validRegex!7655 lt!2304592))))

(assert (=> d!1838307 (= lt!2304592 e!3589303)))

(declare-fun c!1037748 () Bool)

(assert (=> d!1838307 (= c!1037748 e!3589302)))

(declare-fun res!2464011 () Bool)

(assert (=> d!1838307 (=> (not res!2464011) (not e!3589302))))

(assert (=> d!1838307 (= res!2464011 ((_ is Cons!63932) (t!377419 (exprs!5803 (h!70381 zl!343)))))))

(assert (=> d!1838307 (forall!15006 (t!377419 (exprs!5803 (h!70381 zl!343))) lambda!320045)))

(assert (=> d!1838307 (= (generalisedConcat!1516 (t!377419 (exprs!5803 (h!70381 zl!343)))) lt!2304592)))

(assert (= (and d!1838307 res!2464011) b!5853240))

(assert (= (and d!1838307 c!1037748) b!5853246))

(assert (= (and d!1838307 (not c!1037748)) b!5853242))

(assert (= (and b!5853242 c!1037750) b!5853243))

(assert (= (and b!5853242 (not c!1037750)) b!5853244))

(assert (= (and d!1838307 res!2464010) b!5853239))

(assert (= (and b!5853239 c!1037747) b!5853241))

(assert (= (and b!5853239 (not c!1037747)) b!5853248))

(assert (= (and b!5853248 c!1037749) b!5853247))

(assert (= (and b!5853248 (not c!1037749)) b!5853245))

(assert (=> b!5853239 m!6771976))

(declare-fun m!6772466 () Bool)

(assert (=> b!5853245 m!6772466))

(declare-fun m!6772468 () Bool)

(assert (=> b!5853240 m!6772468))

(declare-fun m!6772470 () Bool)

(assert (=> b!5853243 m!6772470))

(declare-fun m!6772472 () Bool)

(assert (=> b!5853247 m!6772472))

(declare-fun m!6772474 () Bool)

(assert (=> d!1838307 m!6772474))

(declare-fun m!6772476 () Bool)

(assert (=> d!1838307 m!6772476))

(declare-fun m!6772478 () Bool)

(assert (=> b!5853241 m!6772478))

(declare-fun m!6772480 () Bool)

(assert (=> b!5853248 m!6772480))

(assert (=> b!5853248 m!6772480))

(declare-fun m!6772482 () Bool)

(assert (=> b!5853248 m!6772482))

(assert (=> b!5852589 d!1838307))

(declare-fun d!1838309 () Bool)

(assert (=> d!1838309 (= (nullable!5919 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (nullableFct!1906 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))))))

(declare-fun bs!1379182 () Bool)

(assert (= bs!1379182 d!1838309))

(declare-fun m!6772484 () Bool)

(assert (=> bs!1379182 m!6772484))

(assert (=> b!5852318 d!1838309))

(declare-fun d!1838311 () Bool)

(assert (=> d!1838311 (= (nullable!5919 (reg!16248 r!7292)) (nullableFct!1906 (reg!16248 r!7292)))))

(declare-fun bs!1379183 () Bool)

(assert (= bs!1379183 d!1838311))

(declare-fun m!6772486 () Bool)

(assert (=> bs!1379183 m!6772486))

(assert (=> b!5852560 d!1838311))

(declare-fun d!1838313 () Bool)

(assert (=> d!1838313 (= (isEmpty!35794 (unfocusZipperList!1340 zl!343)) ((_ is Nil!63932) (unfocusZipperList!1340 zl!343)))))

(assert (=> b!5852372 d!1838313))

(declare-fun d!1838315 () Bool)

(assert (=> d!1838315 (= (Exists!2991 (ite c!1037537 lambda!319996 lambda!319997)) (choose!44387 (ite c!1037537 lambda!319996 lambda!319997)))))

(declare-fun bs!1379184 () Bool)

(assert (= bs!1379184 d!1838315))

(declare-fun m!6772488 () Bool)

(assert (=> bs!1379184 m!6772488))

(assert (=> bm!458114 d!1838315))

(assert (=> b!5852488 d!1838271))

(declare-fun d!1838317 () Bool)

(assert (=> d!1838317 (= (Exists!2991 (ite c!1037550 lambda!319998 lambda!319999)) (choose!44387 (ite c!1037550 lambda!319998 lambda!319999)))))

(declare-fun bs!1379185 () Bool)

(assert (= bs!1379185 d!1838317))

(declare-fun m!6772490 () Bool)

(assert (=> bs!1379185 m!6772490))

(assert (=> bm!458119 d!1838317))

(declare-fun d!1838319 () Bool)

(assert (=> d!1838319 (= (head!12393 (exprs!5803 (h!70381 zl!343))) (h!70380 (exprs!5803 (h!70381 zl!343))))))

(assert (=> b!5852593 d!1838319))

(declare-fun d!1838321 () Bool)

(assert (=> d!1838321 (= (isEmpty!35794 (tail!11478 (exprs!5803 (h!70381 zl!343)))) ((_ is Nil!63932) (tail!11478 (exprs!5803 (h!70381 zl!343)))))))

(assert (=> b!5852594 d!1838321))

(declare-fun d!1838323 () Bool)

(assert (=> d!1838323 (= (tail!11478 (exprs!5803 (h!70381 zl!343))) (t!377419 (exprs!5803 (h!70381 zl!343))))))

(assert (=> b!5852594 d!1838323))

(declare-fun d!1838325 () Bool)

(declare-fun c!1037752 () Bool)

(declare-fun e!3589306 () Bool)

(assert (=> d!1838325 (= c!1037752 e!3589306)))

(declare-fun res!2464012 () Bool)

(assert (=> d!1838325 (=> (not res!2464012) (not e!3589306))))

(assert (=> d!1838325 (= res!2464012 ((_ is Cons!63932) (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))))))))

(declare-fun e!3589307 () (InoxSet Context!10606))

(assert (=> d!1838325 (= (derivationStepZipperUp!1111 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))) (h!70382 s!2326)) e!3589307)))

(declare-fun call!458264 () (InoxSet Context!10606))

(declare-fun b!5853249 () Bool)

(assert (=> b!5853249 (= e!3589307 ((_ map or) call!458264 (derivationStepZipperUp!1111 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343))))))) (h!70382 s!2326))))))

(declare-fun b!5853250 () Bool)

(assert (=> b!5853250 (= e!3589306 (nullable!5919 (h!70380 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343))))))))))

(declare-fun b!5853251 () Bool)

(declare-fun e!3589308 () (InoxSet Context!10606))

(assert (=> b!5853251 (= e!3589308 ((as const (Array Context!10606 Bool)) false))))

(declare-fun b!5853252 () Bool)

(assert (=> b!5853252 (= e!3589308 call!458264)))

(declare-fun bm!458259 () Bool)

(assert (=> bm!458259 (= call!458264 (derivationStepZipperDown!1185 (h!70380 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))))) (Context!10607 (t!377419 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343))))))) (h!70382 s!2326)))))

(declare-fun b!5853253 () Bool)

(assert (=> b!5853253 (= e!3589307 e!3589308)))

(declare-fun c!1037751 () Bool)

(assert (=> b!5853253 (= c!1037751 ((_ is Cons!63932) (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))))))))

(assert (= (and d!1838325 res!2464012) b!5853250))

(assert (= (and d!1838325 c!1037752) b!5853249))

(assert (= (and d!1838325 (not c!1037752)) b!5853253))

(assert (= (and b!5853253 c!1037751) b!5853252))

(assert (= (and b!5853253 (not c!1037751)) b!5853251))

(assert (= (or b!5853249 b!5853252) bm!458259))

(declare-fun m!6772492 () Bool)

(assert (=> b!5853249 m!6772492))

(declare-fun m!6772494 () Bool)

(assert (=> b!5853250 m!6772494))

(declare-fun m!6772496 () Bool)

(assert (=> bm!458259 m!6772496))

(assert (=> b!5852525 d!1838325))

(assert (=> b!5852512 d!1838271))

(declare-fun d!1838327 () Bool)

(declare-fun c!1037753 () Bool)

(assert (=> d!1838327 (= c!1037753 (isEmpty!35793 (tail!11477 s!2326)))))

(declare-fun e!3589309 () Bool)

(assert (=> d!1838327 (= (matchZipper!1985 (derivationStepZipper!1918 z!1189 (head!12392 s!2326)) (tail!11477 s!2326)) e!3589309)))

(declare-fun b!5853254 () Bool)

(assert (=> b!5853254 (= e!3589309 (nullableZipper!1758 (derivationStepZipper!1918 z!1189 (head!12392 s!2326))))))

(declare-fun b!5853255 () Bool)

(assert (=> b!5853255 (= e!3589309 (matchZipper!1985 (derivationStepZipper!1918 (derivationStepZipper!1918 z!1189 (head!12392 s!2326)) (head!12392 (tail!11477 s!2326))) (tail!11477 (tail!11477 s!2326))))))

(assert (= (and d!1838327 c!1037753) b!5853254))

(assert (= (and d!1838327 (not c!1037753)) b!5853255))

(assert (=> d!1838327 m!6771848))

(assert (=> d!1838327 m!6771896))

(assert (=> b!5853254 m!6771846))

(declare-fun m!6772498 () Bool)

(assert (=> b!5853254 m!6772498))

(assert (=> b!5853255 m!6771848))

(assert (=> b!5853255 m!6772398))

(assert (=> b!5853255 m!6771846))

(assert (=> b!5853255 m!6772398))

(declare-fun m!6772500 () Bool)

(assert (=> b!5853255 m!6772500))

(assert (=> b!5853255 m!6771848))

(assert (=> b!5853255 m!6772402))

(assert (=> b!5853255 m!6772500))

(assert (=> b!5853255 m!6772402))

(declare-fun m!6772502 () Bool)

(assert (=> b!5853255 m!6772502))

(assert (=> b!5852345 d!1838327))

(declare-fun bs!1379186 () Bool)

(declare-fun d!1838329 () Bool)

(assert (= bs!1379186 (and d!1838329 b!5851884)))

(declare-fun lambda!320046 () Int)

(assert (=> bs!1379186 (= (= (head!12392 s!2326) (h!70382 s!2326)) (= lambda!320046 lambda!319958))))

(declare-fun bs!1379187 () Bool)

(assert (= bs!1379187 (and d!1838329 d!1838021)))

(assert (=> bs!1379187 (= (= (head!12392 s!2326) (h!70382 s!2326)) (= lambda!320046 lambda!320008))))

(declare-fun bs!1379188 () Bool)

(assert (= bs!1379188 (and d!1838329 d!1838279)))

(assert (=> bs!1379188 (= (= (head!12392 s!2326) (head!12392 (t!377421 s!2326))) (= lambda!320046 lambda!320043))))

(assert (=> d!1838329 true))

(assert (=> d!1838329 (= (derivationStepZipper!1918 z!1189 (head!12392 s!2326)) (flatMap!1450 z!1189 lambda!320046))))

(declare-fun bs!1379189 () Bool)

(assert (= bs!1379189 d!1838329))

(declare-fun m!6772504 () Bool)

(assert (=> bs!1379189 m!6772504))

(assert (=> b!5852345 d!1838329))

(assert (=> b!5852345 d!1838271))

(assert (=> b!5852345 d!1838273))

(declare-fun bm!458260 () Bool)

(declare-fun call!458269 () List!64056)

(declare-fun call!458266 () List!64056)

(assert (=> bm!458260 (= call!458269 call!458266)))

(declare-fun c!1037757 () Bool)

(declare-fun c!1037756 () Bool)

(declare-fun c!1037758 () Bool)

(declare-fun call!458267 () (InoxSet Context!10606))

(declare-fun bm!458261 () Bool)

(assert (=> bm!458261 (= call!458267 (derivationStepZipperDown!1185 (ite c!1037758 (regTwo!32351 (h!70380 (exprs!5803 (h!70381 zl!343)))) (ite c!1037756 (regTwo!32350 (h!70380 (exprs!5803 (h!70381 zl!343)))) (ite c!1037757 (regOne!32350 (h!70380 (exprs!5803 (h!70381 zl!343)))) (reg!16248 (h!70380 (exprs!5803 (h!70381 zl!343))))))) (ite (or c!1037758 c!1037756) (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))) (Context!10607 call!458269)) (h!70382 s!2326)))))

(declare-fun bm!458262 () Bool)

(declare-fun call!458270 () (InoxSet Context!10606))

(declare-fun call!458265 () (InoxSet Context!10606))

(assert (=> bm!458262 (= call!458270 call!458265)))

(declare-fun b!5853256 () Bool)

(declare-fun e!3589310 () (InoxSet Context!10606))

(assert (=> b!5853256 (= e!3589310 (store ((as const (Array Context!10606 Bool)) false) (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))) true))))

(declare-fun d!1838331 () Bool)

(declare-fun c!1037754 () Bool)

(assert (=> d!1838331 (= c!1037754 (and ((_ is ElementMatch!15919) (h!70380 (exprs!5803 (h!70381 zl!343)))) (= (c!1037365 (h!70380 (exprs!5803 (h!70381 zl!343)))) (h!70382 s!2326))))))

(assert (=> d!1838331 (= (derivationStepZipperDown!1185 (h!70380 (exprs!5803 (h!70381 zl!343))) (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))) (h!70382 s!2326)) e!3589310)))

(declare-fun bm!458263 () Bool)

(assert (=> bm!458263 (= call!458266 ($colon$colon!1824 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343))))) (ite (or c!1037756 c!1037757) (regTwo!32350 (h!70380 (exprs!5803 (h!70381 zl!343)))) (h!70380 (exprs!5803 (h!70381 zl!343))))))))

(declare-fun b!5853257 () Bool)

(declare-fun e!3589312 () Bool)

(assert (=> b!5853257 (= e!3589312 (nullable!5919 (regOne!32350 (h!70380 (exprs!5803 (h!70381 zl!343))))))))

(declare-fun b!5853258 () Bool)

(declare-fun e!3589314 () (InoxSet Context!10606))

(assert (=> b!5853258 (= e!3589314 call!458270)))

(declare-fun b!5853259 () Bool)

(declare-fun e!3589315 () (InoxSet Context!10606))

(assert (=> b!5853259 (= e!3589310 e!3589315)))

(assert (=> b!5853259 (= c!1037758 ((_ is Union!15919) (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5853260 () Bool)

(declare-fun e!3589313 () (InoxSet Context!10606))

(assert (=> b!5853260 (= e!3589313 e!3589314)))

(assert (=> b!5853260 (= c!1037757 ((_ is Concat!24764) (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5853261 () Bool)

(declare-fun call!458268 () (InoxSet Context!10606))

(assert (=> b!5853261 (= e!3589315 ((_ map or) call!458268 call!458267))))

(declare-fun b!5853262 () Bool)

(declare-fun e!3589311 () (InoxSet Context!10606))

(assert (=> b!5853262 (= e!3589311 call!458270)))

(declare-fun bm!458264 () Bool)

(assert (=> bm!458264 (= call!458265 call!458267)))

(declare-fun b!5853263 () Bool)

(assert (=> b!5853263 (= e!3589313 ((_ map or) call!458268 call!458265))))

(declare-fun b!5853264 () Bool)

(assert (=> b!5853264 (= e!3589311 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458265 () Bool)

(assert (=> bm!458265 (= call!458268 (derivationStepZipperDown!1185 (ite c!1037758 (regOne!32351 (h!70380 (exprs!5803 (h!70381 zl!343)))) (regOne!32350 (h!70380 (exprs!5803 (h!70381 zl!343))))) (ite c!1037758 (Context!10607 (t!377419 (exprs!5803 (h!70381 zl!343)))) (Context!10607 call!458266)) (h!70382 s!2326)))))

(declare-fun b!5853265 () Bool)

(declare-fun c!1037755 () Bool)

(assert (=> b!5853265 (= c!1037755 ((_ is Star!15919) (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(assert (=> b!5853265 (= e!3589314 e!3589311)))

(declare-fun b!5853266 () Bool)

(assert (=> b!5853266 (= c!1037756 e!3589312)))

(declare-fun res!2464013 () Bool)

(assert (=> b!5853266 (=> (not res!2464013) (not e!3589312))))

(assert (=> b!5853266 (= res!2464013 ((_ is Concat!24764) (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(assert (=> b!5853266 (= e!3589315 e!3589313)))

(assert (= (and d!1838331 c!1037754) b!5853256))

(assert (= (and d!1838331 (not c!1037754)) b!5853259))

(assert (= (and b!5853259 c!1037758) b!5853261))

(assert (= (and b!5853259 (not c!1037758)) b!5853266))

(assert (= (and b!5853266 res!2464013) b!5853257))

(assert (= (and b!5853266 c!1037756) b!5853263))

(assert (= (and b!5853266 (not c!1037756)) b!5853260))

(assert (= (and b!5853260 c!1037757) b!5853258))

(assert (= (and b!5853260 (not c!1037757)) b!5853265))

(assert (= (and b!5853265 c!1037755) b!5853262))

(assert (= (and b!5853265 (not c!1037755)) b!5853264))

(assert (= (or b!5853258 b!5853262) bm!458260))

(assert (= (or b!5853258 b!5853262) bm!458262))

(assert (= (or b!5853263 bm!458260) bm!458263))

(assert (= (or b!5853263 bm!458262) bm!458264))

(assert (= (or b!5853261 bm!458264) bm!458261))

(assert (= (or b!5853261 b!5853263) bm!458265))

(declare-fun m!6772506 () Bool)

(assert (=> b!5853257 m!6772506))

(declare-fun m!6772508 () Bool)

(assert (=> b!5853256 m!6772508))

(declare-fun m!6772510 () Bool)

(assert (=> bm!458263 m!6772510))

(declare-fun m!6772512 () Bool)

(assert (=> bm!458261 m!6772512))

(declare-fun m!6772514 () Bool)

(assert (=> bm!458265 m!6772514))

(assert (=> bm!458124 d!1838331))

(declare-fun d!1838333 () Bool)

(assert (=> d!1838333 true))

(declare-fun setRes!39663 () Bool)

(assert (=> d!1838333 setRes!39663))

(declare-fun condSetEmpty!39663 () Bool)

(declare-fun res!2464016 () (InoxSet Context!10606))

(assert (=> d!1838333 (= condSetEmpty!39663 (= res!2464016 ((as const (Array Context!10606 Bool)) false)))))

(assert (=> d!1838333 (= (choose!44382 z!1189 lambda!319958) res!2464016)))

(declare-fun setIsEmpty!39663 () Bool)

(assert (=> setIsEmpty!39663 setRes!39663))

(declare-fun tp!1619217 () Bool)

(declare-fun e!3589318 () Bool)

(declare-fun setNonEmpty!39663 () Bool)

(declare-fun setElem!39663 () Context!10606)

(assert (=> setNonEmpty!39663 (= setRes!39663 (and tp!1619217 (inv!83044 setElem!39663) e!3589318))))

(declare-fun setRest!39663 () (InoxSet Context!10606))

(assert (=> setNonEmpty!39663 (= res!2464016 ((_ map or) (store ((as const (Array Context!10606 Bool)) false) setElem!39663 true) setRest!39663))))

(declare-fun b!5853269 () Bool)

(declare-fun tp!1619218 () Bool)

(assert (=> b!5853269 (= e!3589318 tp!1619218)))

(assert (= (and d!1838333 condSetEmpty!39663) setIsEmpty!39663))

(assert (= (and d!1838333 (not condSetEmpty!39663)) setNonEmpty!39663))

(assert (= setNonEmpty!39663 b!5853269))

(declare-fun m!6772516 () Bool)

(assert (=> setNonEmpty!39663 m!6772516))

(assert (=> d!1838023 d!1838333))

(assert (=> b!5852516 d!1838299))

(assert (=> b!5852516 d!1838273))

(declare-fun b!5853270 () Bool)

(declare-fun res!2464019 () Bool)

(declare-fun e!3589319 () Bool)

(assert (=> b!5853270 (=> (not res!2464019) (not e!3589319))))

(declare-fun call!458271 () Bool)

(assert (=> b!5853270 (= res!2464019 (not call!458271))))

(declare-fun d!1838335 () Bool)

(declare-fun e!3589320 () Bool)

(assert (=> d!1838335 e!3589320))

(declare-fun c!1037760 () Bool)

(assert (=> d!1838335 (= c!1037760 ((_ is EmptyExpr!15919) (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326))))))

(declare-fun lt!2304593 () Bool)

(declare-fun e!3589324 () Bool)

(assert (=> d!1838335 (= lt!2304593 e!3589324)))

(declare-fun c!1037761 () Bool)

(assert (=> d!1838335 (= c!1037761 (isEmpty!35793 (tail!11477 s!2326)))))

(assert (=> d!1838335 (validRegex!7655 (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326)))))

(assert (=> d!1838335 (= (matchR!8102 (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326)) (tail!11477 s!2326)) lt!2304593)))

(declare-fun b!5853271 () Bool)

(declare-fun e!3589323 () Bool)

(assert (=> b!5853271 (= e!3589320 e!3589323)))

(declare-fun c!1037759 () Bool)

(assert (=> b!5853271 (= c!1037759 ((_ is EmptyLang!15919) (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326))))))

(declare-fun b!5853272 () Bool)

(declare-fun res!2464021 () Bool)

(declare-fun e!3589325 () Bool)

(assert (=> b!5853272 (=> res!2464021 e!3589325)))

(assert (=> b!5853272 (= res!2464021 e!3589319)))

(declare-fun res!2464018 () Bool)

(assert (=> b!5853272 (=> (not res!2464018) (not e!3589319))))

(assert (=> b!5853272 (= res!2464018 lt!2304593)))

(declare-fun bm!458266 () Bool)

(assert (=> bm!458266 (= call!458271 (isEmpty!35793 (tail!11477 s!2326)))))

(declare-fun b!5853273 () Bool)

(assert (=> b!5853273 (= e!3589319 (= (head!12392 (tail!11477 s!2326)) (c!1037365 (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326)))))))

(declare-fun b!5853274 () Bool)

(declare-fun e!3589322 () Bool)

(assert (=> b!5853274 (= e!3589322 (not (= (head!12392 (tail!11477 s!2326)) (c!1037365 (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326))))))))

(declare-fun b!5853275 () Bool)

(assert (=> b!5853275 (= e!3589324 (matchR!8102 (derivativeStep!4657 (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326)) (head!12392 (tail!11477 s!2326))) (tail!11477 (tail!11477 s!2326))))))

(declare-fun b!5853276 () Bool)

(declare-fun e!3589321 () Bool)

(assert (=> b!5853276 (= e!3589325 e!3589321)))

(declare-fun res!2464024 () Bool)

(assert (=> b!5853276 (=> (not res!2464024) (not e!3589321))))

(assert (=> b!5853276 (= res!2464024 (not lt!2304593))))

(declare-fun b!5853277 () Bool)

(declare-fun res!2464020 () Bool)

(assert (=> b!5853277 (=> (not res!2464020) (not e!3589319))))

(assert (=> b!5853277 (= res!2464020 (isEmpty!35793 (tail!11477 (tail!11477 s!2326))))))

(declare-fun b!5853278 () Bool)

(assert (=> b!5853278 (= e!3589321 e!3589322)))

(declare-fun res!2464022 () Bool)

(assert (=> b!5853278 (=> res!2464022 e!3589322)))

(assert (=> b!5853278 (= res!2464022 call!458271)))

(declare-fun b!5853279 () Bool)

(assert (=> b!5853279 (= e!3589320 (= lt!2304593 call!458271))))

(declare-fun b!5853280 () Bool)

(assert (=> b!5853280 (= e!3589324 (nullable!5919 (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326))))))

(declare-fun b!5853281 () Bool)

(declare-fun res!2464017 () Bool)

(assert (=> b!5853281 (=> res!2464017 e!3589325)))

(assert (=> b!5853281 (= res!2464017 (not ((_ is ElementMatch!15919) (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326)))))))

(assert (=> b!5853281 (= e!3589323 e!3589325)))

(declare-fun b!5853282 () Bool)

(declare-fun res!2464023 () Bool)

(assert (=> b!5853282 (=> res!2464023 e!3589322)))

(assert (=> b!5853282 (= res!2464023 (not (isEmpty!35793 (tail!11477 (tail!11477 s!2326)))))))

(declare-fun b!5853283 () Bool)

(assert (=> b!5853283 (= e!3589323 (not lt!2304593))))

(assert (= (and d!1838335 c!1037761) b!5853280))

(assert (= (and d!1838335 (not c!1037761)) b!5853275))

(assert (= (and d!1838335 c!1037760) b!5853279))

(assert (= (and d!1838335 (not c!1037760)) b!5853271))

(assert (= (and b!5853271 c!1037759) b!5853283))

(assert (= (and b!5853271 (not c!1037759)) b!5853281))

(assert (= (and b!5853281 (not res!2464017)) b!5853272))

(assert (= (and b!5853272 res!2464018) b!5853270))

(assert (= (and b!5853270 res!2464019) b!5853277))

(assert (= (and b!5853277 res!2464020) b!5853273))

(assert (= (and b!5853272 (not res!2464021)) b!5853276))

(assert (= (and b!5853276 res!2464024) b!5853278))

(assert (= (and b!5853278 (not res!2464022)) b!5853282))

(assert (= (and b!5853282 (not res!2464023)) b!5853274))

(assert (= (or b!5853279 b!5853270 b!5853278) bm!458266))

(assert (=> bm!458266 m!6771848))

(assert (=> bm!458266 m!6771896))

(assert (=> b!5853274 m!6771848))

(assert (=> b!5853274 m!6772398))

(assert (=> b!5853280 m!6771898))

(declare-fun m!6772518 () Bool)

(assert (=> b!5853280 m!6772518))

(assert (=> b!5853282 m!6771848))

(assert (=> b!5853282 m!6772402))

(assert (=> b!5853282 m!6772402))

(assert (=> b!5853282 m!6772404))

(assert (=> b!5853277 m!6771848))

(assert (=> b!5853277 m!6772402))

(assert (=> b!5853277 m!6772402))

(assert (=> b!5853277 m!6772404))

(assert (=> b!5853275 m!6771848))

(assert (=> b!5853275 m!6772398))

(assert (=> b!5853275 m!6771898))

(assert (=> b!5853275 m!6772398))

(declare-fun m!6772520 () Bool)

(assert (=> b!5853275 m!6772520))

(assert (=> b!5853275 m!6771848))

(assert (=> b!5853275 m!6772402))

(assert (=> b!5853275 m!6772520))

(assert (=> b!5853275 m!6772402))

(declare-fun m!6772522 () Bool)

(assert (=> b!5853275 m!6772522))

(assert (=> b!5853273 m!6771848))

(assert (=> b!5853273 m!6772398))

(assert (=> d!1838335 m!6771848))

(assert (=> d!1838335 m!6771896))

(assert (=> d!1838335 m!6771898))

(declare-fun m!6772524 () Bool)

(assert (=> d!1838335 m!6772524))

(assert (=> b!5852464 d!1838335))

(declare-fun bm!458267 () Bool)

(declare-fun call!458273 () Regex!15919)

(declare-fun call!458272 () Regex!15919)

(assert (=> bm!458267 (= call!458273 call!458272)))

(declare-fun b!5853284 () Bool)

(declare-fun e!3589328 () Regex!15919)

(declare-fun call!458275 () Regex!15919)

(assert (=> b!5853284 (= e!3589328 (Union!15919 (Concat!24764 call!458275 (regTwo!32350 (regTwo!32351 r!7292))) EmptyLang!15919))))

(declare-fun call!458274 () Regex!15919)

(declare-fun b!5853285 () Bool)

(assert (=> b!5853285 (= e!3589328 (Union!15919 (Concat!24764 call!458274 (regTwo!32350 (regTwo!32351 r!7292))) call!458275))))

(declare-fun b!5853286 () Bool)

(declare-fun c!1037762 () Bool)

(assert (=> b!5853286 (= c!1037762 (nullable!5919 (regOne!32350 (regTwo!32351 r!7292))))))

(declare-fun e!3589326 () Regex!15919)

(assert (=> b!5853286 (= e!3589326 e!3589328)))

(declare-fun b!5853287 () Bool)

(declare-fun e!3589327 () Regex!15919)

(assert (=> b!5853287 (= e!3589327 (ite (= (head!12392 s!2326) (c!1037365 (regTwo!32351 r!7292))) EmptyExpr!15919 EmptyLang!15919))))

(declare-fun d!1838337 () Bool)

(declare-fun lt!2304594 () Regex!15919)

(assert (=> d!1838337 (validRegex!7655 lt!2304594)))

(declare-fun e!3589329 () Regex!15919)

(assert (=> d!1838337 (= lt!2304594 e!3589329)))

(declare-fun c!1037764 () Bool)

(assert (=> d!1838337 (= c!1037764 (or ((_ is EmptyExpr!15919) (regTwo!32351 r!7292)) ((_ is EmptyLang!15919) (regTwo!32351 r!7292))))))

(assert (=> d!1838337 (validRegex!7655 (regTwo!32351 r!7292))))

(assert (=> d!1838337 (= (derivativeStep!4657 (regTwo!32351 r!7292) (head!12392 s!2326)) lt!2304594)))

(declare-fun b!5853288 () Bool)

(assert (=> b!5853288 (= e!3589326 (Concat!24764 call!458273 (regTwo!32351 r!7292)))))

(declare-fun bm!458268 () Bool)

(declare-fun c!1037765 () Bool)

(assert (=> bm!458268 (= call!458274 (derivativeStep!4657 (ite c!1037765 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))) (head!12392 s!2326)))))

(declare-fun c!1037763 () Bool)

(declare-fun bm!458269 () Bool)

(assert (=> bm!458269 (= call!458272 (derivativeStep!4657 (ite c!1037765 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037763 (reg!16248 (regTwo!32351 r!7292)) (ite c!1037762 (regTwo!32350 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))))) (head!12392 s!2326)))))

(declare-fun bm!458270 () Bool)

(assert (=> bm!458270 (= call!458275 call!458273)))

(declare-fun b!5853289 () Bool)

(declare-fun e!3589330 () Regex!15919)

(assert (=> b!5853289 (= e!3589330 (Union!15919 call!458274 call!458272))))

(declare-fun b!5853290 () Bool)

(assert (=> b!5853290 (= e!3589329 EmptyLang!15919)))

(declare-fun b!5853291 () Bool)

(assert (=> b!5853291 (= c!1037765 ((_ is Union!15919) (regTwo!32351 r!7292)))))

(assert (=> b!5853291 (= e!3589327 e!3589330)))

(declare-fun b!5853292 () Bool)

(assert (=> b!5853292 (= e!3589330 e!3589326)))

(assert (=> b!5853292 (= c!1037763 ((_ is Star!15919) (regTwo!32351 r!7292)))))

(declare-fun b!5853293 () Bool)

(assert (=> b!5853293 (= e!3589329 e!3589327)))

(declare-fun c!1037766 () Bool)

(assert (=> b!5853293 (= c!1037766 ((_ is ElementMatch!15919) (regTwo!32351 r!7292)))))

(assert (= (and d!1838337 c!1037764) b!5853290))

(assert (= (and d!1838337 (not c!1037764)) b!5853293))

(assert (= (and b!5853293 c!1037766) b!5853287))

(assert (= (and b!5853293 (not c!1037766)) b!5853291))

(assert (= (and b!5853291 c!1037765) b!5853289))

(assert (= (and b!5853291 (not c!1037765)) b!5853292))

(assert (= (and b!5853292 c!1037763) b!5853288))

(assert (= (and b!5853292 (not c!1037763)) b!5853286))

(assert (= (and b!5853286 c!1037762) b!5853285))

(assert (= (and b!5853286 (not c!1037762)) b!5853284))

(assert (= (or b!5853285 b!5853284) bm!458270))

(assert (= (or b!5853288 bm!458270) bm!458267))

(assert (= (or b!5853289 bm!458267) bm!458269))

(assert (= (or b!5853289 b!5853285) bm!458268))

(assert (=> b!5853286 m!6771824))

(declare-fun m!6772526 () Bool)

(assert (=> d!1838337 m!6772526))

(assert (=> d!1838337 m!6771902))

(assert (=> bm!458268 m!6771844))

(declare-fun m!6772528 () Bool)

(assert (=> bm!458268 m!6772528))

(assert (=> bm!458269 m!6771844))

(declare-fun m!6772530 () Bool)

(assert (=> bm!458269 m!6772530))

(assert (=> b!5852464 d!1838337))

(assert (=> b!5852464 d!1838271))

(assert (=> b!5852464 d!1838273))

(declare-fun b!5853294 () Bool)

(declare-fun res!2464027 () Bool)

(declare-fun e!3589332 () Bool)

(assert (=> b!5853294 (=> (not res!2464027) (not e!3589332))))

(declare-fun call!458277 () Bool)

(assert (=> b!5853294 (= res!2464027 call!458277)))

(declare-fun e!3589336 () Bool)

(assert (=> b!5853294 (= e!3589336 e!3589332)))

(declare-fun b!5853295 () Bool)

(declare-fun res!2464026 () Bool)

(declare-fun e!3589335 () Bool)

(assert (=> b!5853295 (=> res!2464026 e!3589335)))

(assert (=> b!5853295 (= res!2464026 (not ((_ is Concat!24764) lt!2304576)))))

(assert (=> b!5853295 (= e!3589336 e!3589335)))

(declare-fun bm!458271 () Bool)

(declare-fun call!458278 () Bool)

(assert (=> bm!458271 (= call!458277 call!458278)))

(declare-fun b!5853296 () Bool)

(declare-fun e!3589331 () Bool)

(declare-fun e!3589334 () Bool)

(assert (=> b!5853296 (= e!3589331 e!3589334)))

(declare-fun c!1037768 () Bool)

(assert (=> b!5853296 (= c!1037768 ((_ is Star!15919) lt!2304576))))

(declare-fun b!5853297 () Bool)

(assert (=> b!5853297 (= e!3589334 e!3589336)))

(declare-fun c!1037767 () Bool)

(assert (=> b!5853297 (= c!1037767 ((_ is Union!15919) lt!2304576))))

(declare-fun d!1838339 () Bool)

(declare-fun res!2464025 () Bool)

(assert (=> d!1838339 (=> res!2464025 e!3589331)))

(assert (=> d!1838339 (= res!2464025 ((_ is ElementMatch!15919) lt!2304576))))

(assert (=> d!1838339 (= (validRegex!7655 lt!2304576) e!3589331)))

(declare-fun bm!458272 () Bool)

(declare-fun call!458276 () Bool)

(assert (=> bm!458272 (= call!458276 (validRegex!7655 (ite c!1037767 (regTwo!32351 lt!2304576) (regTwo!32350 lt!2304576))))))

(declare-fun b!5853298 () Bool)

(declare-fun e!3589337 () Bool)

(assert (=> b!5853298 (= e!3589334 e!3589337)))

(declare-fun res!2464028 () Bool)

(assert (=> b!5853298 (= res!2464028 (not (nullable!5919 (reg!16248 lt!2304576))))))

(assert (=> b!5853298 (=> (not res!2464028) (not e!3589337))))

(declare-fun b!5853299 () Bool)

(assert (=> b!5853299 (= e!3589332 call!458276)))

(declare-fun bm!458273 () Bool)

(assert (=> bm!458273 (= call!458278 (validRegex!7655 (ite c!1037768 (reg!16248 lt!2304576) (ite c!1037767 (regOne!32351 lt!2304576) (regOne!32350 lt!2304576)))))))

(declare-fun b!5853300 () Bool)

(declare-fun e!3589333 () Bool)

(assert (=> b!5853300 (= e!3589335 e!3589333)))

(declare-fun res!2464029 () Bool)

(assert (=> b!5853300 (=> (not res!2464029) (not e!3589333))))

(assert (=> b!5853300 (= res!2464029 call!458277)))

(declare-fun b!5853301 () Bool)

(assert (=> b!5853301 (= e!3589337 call!458278)))

(declare-fun b!5853302 () Bool)

(assert (=> b!5853302 (= e!3589333 call!458276)))

(assert (= (and d!1838339 (not res!2464025)) b!5853296))

(assert (= (and b!5853296 c!1037768) b!5853298))

(assert (= (and b!5853296 (not c!1037768)) b!5853297))

(assert (= (and b!5853298 res!2464028) b!5853301))

(assert (= (and b!5853297 c!1037767) b!5853294))

(assert (= (and b!5853297 (not c!1037767)) b!5853295))

(assert (= (and b!5853294 res!2464027) b!5853299))

(assert (= (and b!5853295 (not res!2464026)) b!5853300))

(assert (= (and b!5853300 res!2464029) b!5853302))

(assert (= (or b!5853299 b!5853302) bm!458272))

(assert (= (or b!5853294 b!5853300) bm!458271))

(assert (= (or b!5853301 bm!458271) bm!458273))

(declare-fun m!6772532 () Bool)

(assert (=> bm!458272 m!6772532))

(declare-fun m!6772534 () Bool)

(assert (=> b!5853298 m!6772534))

(declare-fun m!6772536 () Bool)

(assert (=> bm!458273 m!6772536))

(assert (=> d!1838039 d!1838339))

(declare-fun d!1838341 () Bool)

(declare-fun res!2464030 () Bool)

(declare-fun e!3589338 () Bool)

(assert (=> d!1838341 (=> res!2464030 e!3589338)))

(assert (=> d!1838341 (= res!2464030 ((_ is Nil!63932) (exprs!5803 (h!70381 zl!343))))))

(assert (=> d!1838341 (= (forall!15006 (exprs!5803 (h!70381 zl!343)) lambda!320012) e!3589338)))

(declare-fun b!5853303 () Bool)

(declare-fun e!3589339 () Bool)

(assert (=> b!5853303 (= e!3589338 e!3589339)))

(declare-fun res!2464031 () Bool)

(assert (=> b!5853303 (=> (not res!2464031) (not e!3589339))))

(assert (=> b!5853303 (= res!2464031 (dynLambda!24993 lambda!320012 (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun b!5853304 () Bool)

(assert (=> b!5853304 (= e!3589339 (forall!15006 (t!377419 (exprs!5803 (h!70381 zl!343))) lambda!320012))))

(assert (= (and d!1838341 (not res!2464030)) b!5853303))

(assert (= (and b!5853303 res!2464031) b!5853304))

(declare-fun b_lambda!220329 () Bool)

(assert (=> (not b_lambda!220329) (not b!5853303)))

(declare-fun m!6772538 () Bool)

(assert (=> b!5853303 m!6772538))

(declare-fun m!6772540 () Bool)

(assert (=> b!5853304 m!6772540))

(assert (=> d!1838039 d!1838341))

(declare-fun d!1838343 () Bool)

(declare-fun res!2464036 () Bool)

(declare-fun e!3589344 () Bool)

(assert (=> d!1838343 (=> res!2464036 e!3589344)))

(assert (=> d!1838343 (= res!2464036 ((_ is Nil!63933) lt!2304570))))

(assert (=> d!1838343 (= (noDuplicate!1784 lt!2304570) e!3589344)))

(declare-fun b!5853309 () Bool)

(declare-fun e!3589345 () Bool)

(assert (=> b!5853309 (= e!3589344 e!3589345)))

(declare-fun res!2464037 () Bool)

(assert (=> b!5853309 (=> (not res!2464037) (not e!3589345))))

(declare-fun contains!19924 (List!64057 Context!10606) Bool)

(assert (=> b!5853309 (= res!2464037 (not (contains!19924 (t!377420 lt!2304570) (h!70381 lt!2304570))))))

(declare-fun b!5853310 () Bool)

(assert (=> b!5853310 (= e!3589345 (noDuplicate!1784 (t!377420 lt!2304570)))))

(assert (= (and d!1838343 (not res!2464036)) b!5853309))

(assert (= (and b!5853309 res!2464037) b!5853310))

(declare-fun m!6772542 () Bool)

(assert (=> b!5853309 m!6772542))

(declare-fun m!6772544 () Bool)

(assert (=> b!5853310 m!6772544))

(assert (=> d!1838029 d!1838343))

(declare-fun d!1838345 () Bool)

(declare-fun e!3589353 () Bool)

(assert (=> d!1838345 e!3589353))

(declare-fun res!2464043 () Bool)

(assert (=> d!1838345 (=> (not res!2464043) (not e!3589353))))

(declare-fun res!2464042 () List!64057)

(assert (=> d!1838345 (= res!2464043 (noDuplicate!1784 res!2464042))))

(declare-fun e!3589354 () Bool)

(assert (=> d!1838345 e!3589354))

(assert (=> d!1838345 (= (choose!44384 z!1189) res!2464042)))

(declare-fun b!5853318 () Bool)

(declare-fun e!3589352 () Bool)

(declare-fun tp!1619224 () Bool)

(assert (=> b!5853318 (= e!3589352 tp!1619224)))

(declare-fun tp!1619223 () Bool)

(declare-fun b!5853317 () Bool)

(assert (=> b!5853317 (= e!3589354 (and (inv!83044 (h!70381 res!2464042)) e!3589352 tp!1619223))))

(declare-fun b!5853319 () Bool)

(assert (=> b!5853319 (= e!3589353 (= (content!11749 res!2464042) z!1189))))

(assert (= b!5853317 b!5853318))

(assert (= (and d!1838345 ((_ is Cons!63933) res!2464042)) b!5853317))

(assert (= (and d!1838345 res!2464043) b!5853319))

(declare-fun m!6772546 () Bool)

(assert (=> d!1838345 m!6772546))

(declare-fun m!6772548 () Bool)

(assert (=> b!5853317 m!6772548))

(declare-fun m!6772550 () Bool)

(assert (=> b!5853319 m!6772550))

(assert (=> d!1838029 d!1838345))

(declare-fun d!1838347 () Bool)

(declare-fun c!1037769 () Bool)

(assert (=> d!1838347 (= c!1037769 (isEmpty!35793 (tail!11477 (t!377421 s!2326))))))

(declare-fun e!3589355 () Bool)

(assert (=> d!1838347 (= (matchZipper!1985 (derivationStepZipper!1918 lt!2304501 (head!12392 (t!377421 s!2326))) (tail!11477 (t!377421 s!2326))) e!3589355)))

(declare-fun b!5853320 () Bool)

(assert (=> b!5853320 (= e!3589355 (nullableZipper!1758 (derivationStepZipper!1918 lt!2304501 (head!12392 (t!377421 s!2326)))))))

(declare-fun b!5853321 () Bool)

(assert (=> b!5853321 (= e!3589355 (matchZipper!1985 (derivationStepZipper!1918 (derivationStepZipper!1918 lt!2304501 (head!12392 (t!377421 s!2326))) (head!12392 (tail!11477 (t!377421 s!2326)))) (tail!11477 (tail!11477 (t!377421 s!2326)))))))

(assert (= (and d!1838347 c!1037769) b!5853320))

(assert (= (and d!1838347 (not c!1037769)) b!5853321))

(assert (=> d!1838347 m!6771778))

(assert (=> d!1838347 m!6772420))

(assert (=> b!5853320 m!6771776))

(declare-fun m!6772552 () Bool)

(assert (=> b!5853320 m!6772552))

(assert (=> b!5853321 m!6771778))

(assert (=> b!5853321 m!6772424))

(assert (=> b!5853321 m!6771776))

(assert (=> b!5853321 m!6772424))

(declare-fun m!6772554 () Bool)

(assert (=> b!5853321 m!6772554))

(assert (=> b!5853321 m!6771778))

(assert (=> b!5853321 m!6772428))

(assert (=> b!5853321 m!6772554))

(assert (=> b!5853321 m!6772428))

(declare-fun m!6772556 () Bool)

(assert (=> b!5853321 m!6772556))

(assert (=> b!5852189 d!1838347))

(declare-fun bs!1379190 () Bool)

(declare-fun d!1838349 () Bool)

(assert (= bs!1379190 (and d!1838349 b!5851884)))

(declare-fun lambda!320047 () Int)

(assert (=> bs!1379190 (= (= (head!12392 (t!377421 s!2326)) (h!70382 s!2326)) (= lambda!320047 lambda!319958))))

(declare-fun bs!1379191 () Bool)

(assert (= bs!1379191 (and d!1838349 d!1838021)))

(assert (=> bs!1379191 (= (= (head!12392 (t!377421 s!2326)) (h!70382 s!2326)) (= lambda!320047 lambda!320008))))

(declare-fun bs!1379192 () Bool)

(assert (= bs!1379192 (and d!1838349 d!1838279)))

(assert (=> bs!1379192 (= lambda!320047 lambda!320043)))

(declare-fun bs!1379193 () Bool)

(assert (= bs!1379193 (and d!1838349 d!1838329)))

(assert (=> bs!1379193 (= (= (head!12392 (t!377421 s!2326)) (head!12392 s!2326)) (= lambda!320047 lambda!320046))))

(assert (=> d!1838349 true))

(assert (=> d!1838349 (= (derivationStepZipper!1918 lt!2304501 (head!12392 (t!377421 s!2326))) (flatMap!1450 lt!2304501 lambda!320047))))

(declare-fun bs!1379194 () Bool)

(assert (= bs!1379194 d!1838349))

(declare-fun m!6772558 () Bool)

(assert (=> bs!1379194 m!6772558))

(assert (=> b!5852189 d!1838349))

(assert (=> b!5852189 d!1838281))

(assert (=> b!5852189 d!1838283))

(declare-fun bm!458274 () Bool)

(declare-fun call!458283 () List!64056)

(declare-fun call!458280 () List!64056)

(assert (=> bm!458274 (= call!458283 call!458280)))

(declare-fun bm!458275 () Bool)

(declare-fun c!1037774 () Bool)

(declare-fun c!1037773 () Bool)

(declare-fun c!1037772 () Bool)

(declare-fun call!458281 () (InoxSet Context!10606))

(assert (=> bm!458275 (= call!458281 (derivationStepZipperDown!1185 (ite c!1037774 (regTwo!32351 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))) (ite c!1037772 (regTwo!32350 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))) (ite c!1037773 (regOne!32350 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))) (reg!16248 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292))))))))) (ite (or c!1037774 c!1037772) (ite (or c!1037503 c!1037501) lt!2304502 (Context!10607 call!458106)) (Context!10607 call!458283)) (h!70382 s!2326)))))

(declare-fun bm!458276 () Bool)

(declare-fun call!458284 () (InoxSet Context!10606))

(declare-fun call!458279 () (InoxSet Context!10606))

(assert (=> bm!458276 (= call!458284 call!458279)))

(declare-fun b!5853322 () Bool)

(declare-fun e!3589356 () (InoxSet Context!10606))

(assert (=> b!5853322 (= e!3589356 (store ((as const (Array Context!10606 Bool)) false) (ite (or c!1037503 c!1037501) lt!2304502 (Context!10607 call!458106)) true))))

(declare-fun c!1037770 () Bool)

(declare-fun d!1838351 () Bool)

(assert (=> d!1838351 (= c!1037770 (and ((_ is ElementMatch!15919) (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))) (= (c!1037365 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))) (h!70382 s!2326))))))

(assert (=> d!1838351 (= (derivationStepZipperDown!1185 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292))))) (ite (or c!1037503 c!1037501) lt!2304502 (Context!10607 call!458106)) (h!70382 s!2326)) e!3589356)))

(declare-fun bm!458277 () Bool)

(assert (=> bm!458277 (= call!458280 ($colon$colon!1824 (exprs!5803 (ite (or c!1037503 c!1037501) lt!2304502 (Context!10607 call!458106))) (ite (or c!1037772 c!1037773) (regTwo!32350 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))) (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292))))))))))

(declare-fun e!3589358 () Bool)

(declare-fun b!5853323 () Bool)

(assert (=> b!5853323 (= e!3589358 (nullable!5919 (regOne!32350 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292))))))))))

(declare-fun b!5853324 () Bool)

(declare-fun e!3589360 () (InoxSet Context!10606))

(assert (=> b!5853324 (= e!3589360 call!458284)))

(declare-fun b!5853325 () Bool)

(declare-fun e!3589361 () (InoxSet Context!10606))

(assert (=> b!5853325 (= e!3589356 e!3589361)))

(assert (=> b!5853325 (= c!1037774 ((_ is Union!15919) (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))))))

(declare-fun b!5853326 () Bool)

(declare-fun e!3589359 () (InoxSet Context!10606))

(assert (=> b!5853326 (= e!3589359 e!3589360)))

(assert (=> b!5853326 (= c!1037773 ((_ is Concat!24764) (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))))))

(declare-fun b!5853327 () Bool)

(declare-fun call!458282 () (InoxSet Context!10606))

(assert (=> b!5853327 (= e!3589361 ((_ map or) call!458282 call!458281))))

(declare-fun b!5853328 () Bool)

(declare-fun e!3589357 () (InoxSet Context!10606))

(assert (=> b!5853328 (= e!3589357 call!458284)))

(declare-fun bm!458278 () Bool)

(assert (=> bm!458278 (= call!458279 call!458281)))

(declare-fun b!5853329 () Bool)

(assert (=> b!5853329 (= e!3589359 ((_ map or) call!458282 call!458279))))

(declare-fun b!5853330 () Bool)

(assert (=> b!5853330 (= e!3589357 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458279 () Bool)

(assert (=> bm!458279 (= call!458282 (derivationStepZipperDown!1185 (ite c!1037774 (regOne!32351 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))) (regOne!32350 (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292))))))) (ite c!1037774 (ite (or c!1037503 c!1037501) lt!2304502 (Context!10607 call!458106)) (Context!10607 call!458280)) (h!70382 s!2326)))))

(declare-fun b!5853331 () Bool)

(declare-fun c!1037771 () Bool)

(assert (=> b!5853331 (= c!1037771 ((_ is Star!15919) (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))))))

(assert (=> b!5853331 (= e!3589360 e!3589357)))

(declare-fun b!5853332 () Bool)

(assert (=> b!5853332 (= c!1037772 e!3589358)))

(declare-fun res!2464044 () Bool)

(assert (=> b!5853332 (=> (not res!2464044) (not e!3589358))))

(assert (=> b!5853332 (= res!2464044 ((_ is Concat!24764) (ite c!1037503 (regTwo!32351 (regTwo!32351 r!7292)) (ite c!1037501 (regTwo!32350 (regTwo!32351 r!7292)) (ite c!1037502 (regOne!32350 (regTwo!32351 r!7292)) (reg!16248 (regTwo!32351 r!7292)))))))))

(assert (=> b!5853332 (= e!3589361 e!3589359)))

(assert (= (and d!1838351 c!1037770) b!5853322))

(assert (= (and d!1838351 (not c!1037770)) b!5853325))

(assert (= (and b!5853325 c!1037774) b!5853327))

(assert (= (and b!5853325 (not c!1037774)) b!5853332))

(assert (= (and b!5853332 res!2464044) b!5853323))

(assert (= (and b!5853332 c!1037772) b!5853329))

(assert (= (and b!5853332 (not c!1037772)) b!5853326))

(assert (= (and b!5853326 c!1037773) b!5853324))

(assert (= (and b!5853326 (not c!1037773)) b!5853331))

(assert (= (and b!5853331 c!1037771) b!5853328))

(assert (= (and b!5853331 (not c!1037771)) b!5853330))

(assert (= (or b!5853324 b!5853328) bm!458274))

(assert (= (or b!5853324 b!5853328) bm!458276))

(assert (= (or b!5853329 bm!458274) bm!458277))

(assert (= (or b!5853329 bm!458276) bm!458278))

(assert (= (or b!5853327 bm!458278) bm!458275))

(assert (= (or b!5853327 b!5853329) bm!458279))

(declare-fun m!6772560 () Bool)

(assert (=> b!5853323 m!6772560))

(declare-fun m!6772562 () Bool)

(assert (=> b!5853322 m!6772562))

(declare-fun m!6772564 () Bool)

(assert (=> bm!458277 m!6772564))

(declare-fun m!6772566 () Bool)

(assert (=> bm!458275 m!6772566))

(declare-fun m!6772568 () Bool)

(assert (=> bm!458279 m!6772568))

(assert (=> bm!458098 d!1838351))

(assert (=> bm!458113 d!1838265))

(assert (=> d!1838009 d!1838265))

(declare-fun b!5853333 () Bool)

(declare-fun res!2464047 () Bool)

(declare-fun e!3589363 () Bool)

(assert (=> b!5853333 (=> (not res!2464047) (not e!3589363))))

(declare-fun call!458286 () Bool)

(assert (=> b!5853333 (= res!2464047 call!458286)))

(declare-fun e!3589367 () Bool)

(assert (=> b!5853333 (= e!3589367 e!3589363)))

(declare-fun b!5853334 () Bool)

(declare-fun res!2464046 () Bool)

(declare-fun e!3589366 () Bool)

(assert (=> b!5853334 (=> res!2464046 e!3589366)))

(assert (=> b!5853334 (= res!2464046 (not ((_ is Concat!24764) (regOne!32351 r!7292))))))

(assert (=> b!5853334 (= e!3589367 e!3589366)))

(declare-fun bm!458280 () Bool)

(declare-fun call!458287 () Bool)

(assert (=> bm!458280 (= call!458286 call!458287)))

(declare-fun b!5853335 () Bool)

(declare-fun e!3589362 () Bool)

(declare-fun e!3589365 () Bool)

(assert (=> b!5853335 (= e!3589362 e!3589365)))

(declare-fun c!1037776 () Bool)

(assert (=> b!5853335 (= c!1037776 ((_ is Star!15919) (regOne!32351 r!7292)))))

(declare-fun b!5853336 () Bool)

(assert (=> b!5853336 (= e!3589365 e!3589367)))

(declare-fun c!1037775 () Bool)

(assert (=> b!5853336 (= c!1037775 ((_ is Union!15919) (regOne!32351 r!7292)))))

(declare-fun d!1838353 () Bool)

(declare-fun res!2464045 () Bool)

(assert (=> d!1838353 (=> res!2464045 e!3589362)))

(assert (=> d!1838353 (= res!2464045 ((_ is ElementMatch!15919) (regOne!32351 r!7292)))))

(assert (=> d!1838353 (= (validRegex!7655 (regOne!32351 r!7292)) e!3589362)))

(declare-fun bm!458281 () Bool)

(declare-fun call!458285 () Bool)

(assert (=> bm!458281 (= call!458285 (validRegex!7655 (ite c!1037775 (regTwo!32351 (regOne!32351 r!7292)) (regTwo!32350 (regOne!32351 r!7292)))))))

(declare-fun b!5853337 () Bool)

(declare-fun e!3589368 () Bool)

(assert (=> b!5853337 (= e!3589365 e!3589368)))

(declare-fun res!2464048 () Bool)

(assert (=> b!5853337 (= res!2464048 (not (nullable!5919 (reg!16248 (regOne!32351 r!7292)))))))

(assert (=> b!5853337 (=> (not res!2464048) (not e!3589368))))

(declare-fun b!5853338 () Bool)

(assert (=> b!5853338 (= e!3589363 call!458285)))

(declare-fun bm!458282 () Bool)

(assert (=> bm!458282 (= call!458287 (validRegex!7655 (ite c!1037776 (reg!16248 (regOne!32351 r!7292)) (ite c!1037775 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292))))))))

(declare-fun b!5853339 () Bool)

(declare-fun e!3589364 () Bool)

(assert (=> b!5853339 (= e!3589366 e!3589364)))

(declare-fun res!2464049 () Bool)

(assert (=> b!5853339 (=> (not res!2464049) (not e!3589364))))

(assert (=> b!5853339 (= res!2464049 call!458286)))

(declare-fun b!5853340 () Bool)

(assert (=> b!5853340 (= e!3589368 call!458287)))

(declare-fun b!5853341 () Bool)

(assert (=> b!5853341 (= e!3589364 call!458285)))

(assert (= (and d!1838353 (not res!2464045)) b!5853335))

(assert (= (and b!5853335 c!1037776) b!5853337))

(assert (= (and b!5853335 (not c!1037776)) b!5853336))

(assert (= (and b!5853337 res!2464048) b!5853340))

(assert (= (and b!5853336 c!1037775) b!5853333))

(assert (= (and b!5853336 (not c!1037775)) b!5853334))

(assert (= (and b!5853333 res!2464047) b!5853338))

(assert (= (and b!5853334 (not res!2464046)) b!5853339))

(assert (= (and b!5853339 res!2464049) b!5853341))

(assert (= (or b!5853338 b!5853341) bm!458281))

(assert (= (or b!5853333 b!5853339) bm!458280))

(assert (= (or b!5853340 bm!458280) bm!458282))

(declare-fun m!6772570 () Bool)

(assert (=> bm!458281 m!6772570))

(declare-fun m!6772572 () Bool)

(assert (=> b!5853337 m!6772572))

(declare-fun m!6772574 () Bool)

(assert (=> bm!458282 m!6772574))

(assert (=> d!1838009 d!1838353))

(assert (=> bm!458118 d!1838265))

(declare-fun bm!458283 () Bool)

(declare-fun call!458292 () List!64056)

(declare-fun call!458289 () List!64056)

(assert (=> bm!458283 (= call!458292 call!458289)))

(declare-fun c!1037780 () Bool)

(declare-fun c!1037779 () Bool)

(declare-fun call!458290 () (InoxSet Context!10606))

(declare-fun bm!458284 () Bool)

(declare-fun c!1037781 () Bool)

(assert (=> bm!458284 (= call!458290 (derivationStepZipperDown!1185 (ite c!1037781 (regTwo!32351 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))) (ite c!1037779 (regTwo!32350 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))) (ite c!1037780 (regOne!32350 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))) (reg!16248 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292))))))))) (ite (or c!1037781 c!1037779) (ite (or c!1037508 c!1037506) lt!2304502 (Context!10607 call!458112)) (Context!10607 call!458292)) (h!70382 s!2326)))))

(declare-fun bm!458285 () Bool)

(declare-fun call!458293 () (InoxSet Context!10606))

(declare-fun call!458288 () (InoxSet Context!10606))

(assert (=> bm!458285 (= call!458293 call!458288)))

(declare-fun e!3589369 () (InoxSet Context!10606))

(declare-fun b!5853342 () Bool)

(assert (=> b!5853342 (= e!3589369 (store ((as const (Array Context!10606 Bool)) false) (ite (or c!1037508 c!1037506) lt!2304502 (Context!10607 call!458112)) true))))

(declare-fun c!1037777 () Bool)

(declare-fun d!1838355 () Bool)

(assert (=> d!1838355 (= c!1037777 (and ((_ is ElementMatch!15919) (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))) (= (c!1037365 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))) (h!70382 s!2326))))))

(assert (=> d!1838355 (= (derivationStepZipperDown!1185 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292))))) (ite (or c!1037508 c!1037506) lt!2304502 (Context!10607 call!458112)) (h!70382 s!2326)) e!3589369)))

(declare-fun bm!458286 () Bool)

(assert (=> bm!458286 (= call!458289 ($colon$colon!1824 (exprs!5803 (ite (or c!1037508 c!1037506) lt!2304502 (Context!10607 call!458112))) (ite (or c!1037779 c!1037780) (regTwo!32350 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))) (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292))))))))))

(declare-fun e!3589371 () Bool)

(declare-fun b!5853343 () Bool)

(assert (=> b!5853343 (= e!3589371 (nullable!5919 (regOne!32350 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292))))))))))

(declare-fun b!5853344 () Bool)

(declare-fun e!3589373 () (InoxSet Context!10606))

(assert (=> b!5853344 (= e!3589373 call!458293)))

(declare-fun b!5853345 () Bool)

(declare-fun e!3589374 () (InoxSet Context!10606))

(assert (=> b!5853345 (= e!3589369 e!3589374)))

(assert (=> b!5853345 (= c!1037781 ((_ is Union!15919) (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))))))

(declare-fun b!5853346 () Bool)

(declare-fun e!3589372 () (InoxSet Context!10606))

(assert (=> b!5853346 (= e!3589372 e!3589373)))

(assert (=> b!5853346 (= c!1037780 ((_ is Concat!24764) (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))))))

(declare-fun b!5853347 () Bool)

(declare-fun call!458291 () (InoxSet Context!10606))

(assert (=> b!5853347 (= e!3589374 ((_ map or) call!458291 call!458290))))

(declare-fun b!5853348 () Bool)

(declare-fun e!3589370 () (InoxSet Context!10606))

(assert (=> b!5853348 (= e!3589370 call!458293)))

(declare-fun bm!458287 () Bool)

(assert (=> bm!458287 (= call!458288 call!458290)))

(declare-fun b!5853349 () Bool)

(assert (=> b!5853349 (= e!3589372 ((_ map or) call!458291 call!458288))))

(declare-fun b!5853350 () Bool)

(assert (=> b!5853350 (= e!3589370 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458288 () Bool)

(assert (=> bm!458288 (= call!458291 (derivationStepZipperDown!1185 (ite c!1037781 (regOne!32351 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))) (regOne!32350 (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292))))))) (ite c!1037781 (ite (or c!1037508 c!1037506) lt!2304502 (Context!10607 call!458112)) (Context!10607 call!458289)) (h!70382 s!2326)))))

(declare-fun c!1037778 () Bool)

(declare-fun b!5853351 () Bool)

(assert (=> b!5853351 (= c!1037778 ((_ is Star!15919) (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))))))

(assert (=> b!5853351 (= e!3589373 e!3589370)))

(declare-fun b!5853352 () Bool)

(assert (=> b!5853352 (= c!1037779 e!3589371)))

(declare-fun res!2464050 () Bool)

(assert (=> b!5853352 (=> (not res!2464050) (not e!3589371))))

(assert (=> b!5853352 (= res!2464050 ((_ is Concat!24764) (ite c!1037508 (regTwo!32351 (regOne!32351 r!7292)) (ite c!1037506 (regTwo!32350 (regOne!32351 r!7292)) (ite c!1037507 (regOne!32350 (regOne!32351 r!7292)) (reg!16248 (regOne!32351 r!7292)))))))))

(assert (=> b!5853352 (= e!3589374 e!3589372)))

(assert (= (and d!1838355 c!1037777) b!5853342))

(assert (= (and d!1838355 (not c!1037777)) b!5853345))

(assert (= (and b!5853345 c!1037781) b!5853347))

(assert (= (and b!5853345 (not c!1037781)) b!5853352))

(assert (= (and b!5853352 res!2464050) b!5853343))

(assert (= (and b!5853352 c!1037779) b!5853349))

(assert (= (and b!5853352 (not c!1037779)) b!5853346))

(assert (= (and b!5853346 c!1037780) b!5853344))

(assert (= (and b!5853346 (not c!1037780)) b!5853351))

(assert (= (and b!5853351 c!1037778) b!5853348))

(assert (= (and b!5853351 (not c!1037778)) b!5853350))

(assert (= (or b!5853344 b!5853348) bm!458283))

(assert (= (or b!5853344 b!5853348) bm!458285))

(assert (= (or b!5853349 bm!458283) bm!458286))

(assert (= (or b!5853349 bm!458285) bm!458287))

(assert (= (or b!5853347 bm!458287) bm!458284))

(assert (= (or b!5853347 b!5853349) bm!458288))

(declare-fun m!6772576 () Bool)

(assert (=> b!5853343 m!6772576))

(declare-fun m!6772578 () Bool)

(assert (=> b!5853342 m!6772578))

(declare-fun m!6772580 () Bool)

(assert (=> bm!458286 m!6772580))

(declare-fun m!6772582 () Bool)

(assert (=> bm!458284 m!6772582))

(declare-fun m!6772584 () Bool)

(assert (=> bm!458288 m!6772584))

(assert (=> bm!458104 d!1838355))

(assert (=> b!5852471 d!1838299))

(assert (=> b!5852471 d!1838273))

(assert (=> bs!1378965 d!1838025))

(declare-fun d!1838357 () Bool)

(assert (=> d!1838357 (= (nullable!5919 (regOne!32350 (regTwo!32351 r!7292))) (nullableFct!1906 (regOne!32350 (regTwo!32351 r!7292))))))

(declare-fun bs!1379195 () Bool)

(assert (= bs!1379195 d!1838357))

(declare-fun m!6772586 () Bool)

(assert (=> bs!1379195 m!6772586))

(assert (=> b!5852323 d!1838357))

(declare-fun d!1838359 () Bool)

(assert (=> d!1838359 (= (isUnion!792 lt!2304551) ((_ is Union!15919) lt!2304551))))

(assert (=> b!5852371 d!1838359))

(declare-fun b!5853353 () Bool)

(declare-fun res!2464053 () Bool)

(declare-fun e!3589376 () Bool)

(assert (=> b!5853353 (=> (not res!2464053) (not e!3589376))))

(declare-fun call!458295 () Bool)

(assert (=> b!5853353 (= res!2464053 call!458295)))

(declare-fun e!3589380 () Bool)

(assert (=> b!5853353 (= e!3589380 e!3589376)))

(declare-fun b!5853354 () Bool)

(declare-fun res!2464052 () Bool)

(declare-fun e!3589379 () Bool)

(assert (=> b!5853354 (=> res!2464052 e!3589379)))

(assert (=> b!5853354 (= res!2464052 (not ((_ is Concat!24764) (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292)))))))

(assert (=> b!5853354 (= e!3589380 e!3589379)))

(declare-fun bm!458289 () Bool)

(declare-fun call!458296 () Bool)

(assert (=> bm!458289 (= call!458295 call!458296)))

(declare-fun b!5853355 () Bool)

(declare-fun e!3589375 () Bool)

(declare-fun e!3589378 () Bool)

(assert (=> b!5853355 (= e!3589375 e!3589378)))

(declare-fun c!1037783 () Bool)

(assert (=> b!5853355 (= c!1037783 ((_ is Star!15919) (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))))))

(declare-fun b!5853356 () Bool)

(assert (=> b!5853356 (= e!3589378 e!3589380)))

(declare-fun c!1037782 () Bool)

(assert (=> b!5853356 (= c!1037782 ((_ is Union!15919) (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))))))

(declare-fun d!1838361 () Bool)

(declare-fun res!2464051 () Bool)

(assert (=> d!1838361 (=> res!2464051 e!3589375)))

(assert (=> d!1838361 (= res!2464051 ((_ is ElementMatch!15919) (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))))))

(assert (=> d!1838361 (= (validRegex!7655 (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))) e!3589375)))

(declare-fun bm!458290 () Bool)

(declare-fun call!458294 () Bool)

(assert (=> bm!458290 (= call!458294 (validRegex!7655 (ite c!1037782 (regTwo!32351 (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))) (regTwo!32350 (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))))))))

(declare-fun b!5853357 () Bool)

(declare-fun e!3589381 () Bool)

(assert (=> b!5853357 (= e!3589378 e!3589381)))

(declare-fun res!2464054 () Bool)

(assert (=> b!5853357 (= res!2464054 (not (nullable!5919 (reg!16248 (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))))))))

(assert (=> b!5853357 (=> (not res!2464054) (not e!3589381))))

(declare-fun b!5853358 () Bool)

(assert (=> b!5853358 (= e!3589376 call!458294)))

(declare-fun bm!458291 () Bool)

(assert (=> bm!458291 (= call!458296 (validRegex!7655 (ite c!1037783 (reg!16248 (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))) (ite c!1037782 (regOne!32351 (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292))) (regOne!32350 (ite c!1037570 (regTwo!32351 r!7292) (regTwo!32350 r!7292)))))))))

(declare-fun b!5853359 () Bool)

(declare-fun e!3589377 () Bool)

(assert (=> b!5853359 (= e!3589379 e!3589377)))

(declare-fun res!2464055 () Bool)

(assert (=> b!5853359 (=> (not res!2464055) (not e!3589377))))

(assert (=> b!5853359 (= res!2464055 call!458295)))

(declare-fun b!5853360 () Bool)

(assert (=> b!5853360 (= e!3589381 call!458296)))

(declare-fun b!5853361 () Bool)

(assert (=> b!5853361 (= e!3589377 call!458294)))

(assert (= (and d!1838361 (not res!2464051)) b!5853355))

(assert (= (and b!5853355 c!1037783) b!5853357))

(assert (= (and b!5853355 (not c!1037783)) b!5853356))

(assert (= (and b!5853357 res!2464054) b!5853360))

(assert (= (and b!5853356 c!1037782) b!5853353))

(assert (= (and b!5853356 (not c!1037782)) b!5853354))

(assert (= (and b!5853353 res!2464053) b!5853358))

(assert (= (and b!5853354 (not res!2464052)) b!5853359))

(assert (= (and b!5853359 res!2464055) b!5853361))

(assert (= (or b!5853358 b!5853361) bm!458290))

(assert (= (or b!5853353 b!5853359) bm!458289))

(assert (= (or b!5853360 bm!458289) bm!458291))

(declare-fun m!6772588 () Bool)

(assert (=> bm!458290 m!6772588))

(declare-fun m!6772590 () Bool)

(assert (=> b!5853357 m!6772590))

(declare-fun m!6772592 () Bool)

(assert (=> bm!458291 m!6772592))

(assert (=> bm!458132 d!1838361))

(declare-fun d!1838363 () Bool)

(declare-fun c!1037785 () Bool)

(declare-fun e!3589382 () Bool)

(assert (=> d!1838363 (= c!1037785 e!3589382)))

(declare-fun res!2464056 () Bool)

(assert (=> d!1838363 (=> (not res!2464056) (not e!3589382))))

(assert (=> d!1838363 (= res!2464056 ((_ is Cons!63932) (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))))))))

(declare-fun e!3589383 () (InoxSet Context!10606))

(assert (=> d!1838363 (= (derivationStepZipperUp!1111 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (h!70382 s!2326)) e!3589383)))

(declare-fun call!458297 () (InoxSet Context!10606))

(declare-fun b!5853362 () Bool)

(assert (=> b!5853362 (= e!3589383 ((_ map or) call!458297 (derivationStepZipperUp!1111 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))))) (h!70382 s!2326))))))

(declare-fun b!5853363 () Bool)

(assert (=> b!5853363 (= e!3589382 (nullable!5919 (h!70380 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))))))))

(declare-fun b!5853364 () Bool)

(declare-fun e!3589384 () (InoxSet Context!10606))

(assert (=> b!5853364 (= e!3589384 ((as const (Array Context!10606 Bool)) false))))

(declare-fun b!5853365 () Bool)

(assert (=> b!5853365 (= e!3589384 call!458297)))

(declare-fun bm!458292 () Bool)

(assert (=> bm!458292 (= call!458297 (derivationStepZipperDown!1185 (h!70380 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))))) (Context!10607 (t!377419 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))))) (h!70382 s!2326)))))

(declare-fun b!5853366 () Bool)

(assert (=> b!5853366 (= e!3589383 e!3589384)))

(declare-fun c!1037784 () Bool)

(assert (=> b!5853366 (= c!1037784 ((_ is Cons!63932) (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))))))))

(assert (= (and d!1838363 res!2464056) b!5853363))

(assert (= (and d!1838363 c!1037785) b!5853362))

(assert (= (and d!1838363 (not c!1037785)) b!5853366))

(assert (= (and b!5853366 c!1037784) b!5853365))

(assert (= (and b!5853366 (not c!1037784)) b!5853364))

(assert (= (or b!5853362 b!5853365) bm!458292))

(declare-fun m!6772594 () Bool)

(assert (=> b!5853362 m!6772594))

(declare-fun m!6772596 () Bool)

(assert (=> b!5853363 m!6772596))

(declare-fun m!6772598 () Bool)

(assert (=> bm!458292 m!6772598))

(assert (=> b!5852317 d!1838363))

(assert (=> b!5852502 d!1838007))

(assert (=> b!5852487 d!1838271))

(declare-fun d!1838365 () Bool)

(assert (=> d!1838365 (= (nullable!5919 (regOne!32350 (regOne!32351 r!7292))) (nullableFct!1906 (regOne!32350 (regOne!32351 r!7292))))))

(declare-fun bs!1379196 () Bool)

(assert (= bs!1379196 d!1838365))

(declare-fun m!6772600 () Bool)

(assert (=> bs!1379196 m!6772600))

(assert (=> b!5852334 d!1838365))

(declare-fun d!1838367 () Bool)

(assert (=> d!1838367 (= (isEmpty!35794 (tail!11478 (unfocusZipperList!1340 zl!343))) ((_ is Nil!63932) (tail!11478 (unfocusZipperList!1340 zl!343))))))

(assert (=> b!5852375 d!1838367))

(declare-fun d!1838369 () Bool)

(assert (=> d!1838369 (= (tail!11478 (unfocusZipperList!1340 zl!343)) (t!377419 (unfocusZipperList!1340 zl!343)))))

(assert (=> b!5852375 d!1838369))

(declare-fun bs!1379197 () Bool)

(declare-fun d!1838371 () Bool)

(assert (= bs!1379197 (and d!1838371 d!1837997)))

(declare-fun lambda!320048 () Int)

(assert (=> bs!1379197 (= lambda!320048 lambda!319991)))

(declare-fun bs!1379198 () Bool)

(assert (= bs!1379198 (and d!1838371 d!1838307)))

(assert (=> bs!1379198 (= lambda!320048 lambda!320045)))

(declare-fun bs!1379199 () Bool)

(assert (= bs!1379199 (and d!1838371 d!1838039)))

(assert (=> bs!1379199 (= lambda!320048 lambda!320012)))

(declare-fun bs!1379200 () Bool)

(assert (= bs!1379200 (and d!1838371 d!1838031)))

(assert (=> bs!1379200 (= lambda!320048 lambda!320009)))

(declare-fun bs!1379201 () Bool)

(assert (= bs!1379201 (and d!1838371 d!1838011)))

(assert (=> bs!1379201 (= lambda!320048 lambda!320002)))

(declare-fun bs!1379202 () Bool)

(assert (= bs!1379202 (and d!1838371 d!1837995)))

(assert (=> bs!1379202 (= lambda!320048 lambda!319988)))

(declare-fun bs!1379203 () Bool)

(assert (= bs!1379203 (and d!1838371 d!1838013)))

(assert (=> bs!1379203 (= lambda!320048 lambda!320003)))

(assert (=> d!1838371 (= (inv!83044 setElem!39656) (forall!15006 (exprs!5803 setElem!39656) lambda!320048))))

(declare-fun bs!1379204 () Bool)

(assert (= bs!1379204 d!1838371))

(declare-fun m!6772602 () Bool)

(assert (=> bs!1379204 m!6772602))

(assert (=> setNonEmpty!39656 d!1838371))

(declare-fun bm!458293 () Bool)

(declare-fun call!458302 () List!64056)

(declare-fun call!458299 () List!64056)

(assert (=> bm!458293 (= call!458302 call!458299)))

(declare-fun call!458300 () (InoxSet Context!10606))

(declare-fun c!1037790 () Bool)

(declare-fun c!1037789 () Bool)

(declare-fun bm!458294 () Bool)

(declare-fun c!1037788 () Bool)

(assert (=> bm!458294 (= call!458300 (derivationStepZipperDown!1185 (ite c!1037790 (regTwo!32351 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (ite c!1037788 (regTwo!32350 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (ite c!1037789 (regOne!32350 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (reg!16248 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))))) (ite (or c!1037790 c!1037788) (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (Context!10607 call!458302)) (h!70382 s!2326)))))

(declare-fun bm!458295 () Bool)

(declare-fun call!458303 () (InoxSet Context!10606))

(declare-fun call!458298 () (InoxSet Context!10606))

(assert (=> bm!458295 (= call!458303 call!458298)))

(declare-fun b!5853367 () Bool)

(declare-fun e!3589385 () (InoxSet Context!10606))

(assert (=> b!5853367 (= e!3589385 (store ((as const (Array Context!10606 Bool)) false) (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) true))))

(declare-fun d!1838373 () Bool)

(declare-fun c!1037786 () Bool)

(assert (=> d!1838373 (= c!1037786 (and ((_ is ElementMatch!15919) (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (= (c!1037365 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (h!70382 s!2326))))))

(assert (=> d!1838373 (= (derivationStepZipperDown!1185 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))) (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (h!70382 s!2326)) e!3589385)))

(declare-fun bm!458296 () Bool)

(assert (=> bm!458296 (= call!458299 ($colon$colon!1824 (exprs!5803 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))) (ite (or c!1037788 c!1037789) (regTwo!32350 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))))))

(declare-fun b!5853368 () Bool)

(declare-fun e!3589387 () Bool)

(assert (=> b!5853368 (= e!3589387 (nullable!5919 (regOne!32350 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))))))

(declare-fun b!5853369 () Bool)

(declare-fun e!3589389 () (InoxSet Context!10606))

(assert (=> b!5853369 (= e!3589389 call!458303)))

(declare-fun b!5853370 () Bool)

(declare-fun e!3589390 () (InoxSet Context!10606))

(assert (=> b!5853370 (= e!3589385 e!3589390)))

(assert (=> b!5853370 (= c!1037790 ((_ is Union!15919) (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))))))

(declare-fun b!5853371 () Bool)

(declare-fun e!3589388 () (InoxSet Context!10606))

(assert (=> b!5853371 (= e!3589388 e!3589389)))

(assert (=> b!5853371 (= c!1037789 ((_ is Concat!24764) (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))))))

(declare-fun b!5853372 () Bool)

(declare-fun call!458301 () (InoxSet Context!10606))

(assert (=> b!5853372 (= e!3589390 ((_ map or) call!458301 call!458300))))

(declare-fun b!5853373 () Bool)

(declare-fun e!3589386 () (InoxSet Context!10606))

(assert (=> b!5853373 (= e!3589386 call!458303)))

(declare-fun bm!458297 () Bool)

(assert (=> bm!458297 (= call!458298 call!458300)))

(declare-fun b!5853374 () Bool)

(assert (=> b!5853374 (= e!3589388 ((_ map or) call!458301 call!458298))))

(declare-fun b!5853375 () Bool)

(assert (=> b!5853375 (= e!3589386 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458298 () Bool)

(assert (=> bm!458298 (= call!458301 (derivationStepZipperDown!1185 (ite c!1037790 (regOne!32351 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (regOne!32350 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932)))))) (ite c!1037790 (Context!10607 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))) (Context!10607 call!458299)) (h!70382 s!2326)))))

(declare-fun b!5853376 () Bool)

(declare-fun c!1037787 () Bool)

(assert (=> b!5853376 (= c!1037787 ((_ is Star!15919) (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))))))

(assert (=> b!5853376 (= e!3589389 e!3589386)))

(declare-fun b!5853377 () Bool)

(assert (=> b!5853377 (= c!1037788 e!3589387)))

(declare-fun res!2464057 () Bool)

(assert (=> b!5853377 (=> (not res!2464057) (not e!3589387))))

(assert (=> b!5853377 (= res!2464057 ((_ is Concat!24764) (h!70380 (exprs!5803 (Context!10607 (Cons!63932 r!7292 Nil!63932))))))))

(assert (=> b!5853377 (= e!3589390 e!3589388)))

(assert (= (and d!1838373 c!1037786) b!5853367))

(assert (= (and d!1838373 (not c!1037786)) b!5853370))

(assert (= (and b!5853370 c!1037790) b!5853372))

(assert (= (and b!5853370 (not c!1037790)) b!5853377))

(assert (= (and b!5853377 res!2464057) b!5853368))

(assert (= (and b!5853377 c!1037788) b!5853374))

(assert (= (and b!5853377 (not c!1037788)) b!5853371))

(assert (= (and b!5853371 c!1037789) b!5853369))

(assert (= (and b!5853371 (not c!1037789)) b!5853376))

(assert (= (and b!5853376 c!1037787) b!5853373))

(assert (= (and b!5853376 (not c!1037787)) b!5853375))

(assert (= (or b!5853369 b!5853373) bm!458293))

(assert (= (or b!5853369 b!5853373) bm!458295))

(assert (= (or b!5853374 bm!458293) bm!458296))

(assert (= (or b!5853374 bm!458295) bm!458297))

(assert (= (or b!5853372 bm!458297) bm!458294))

(assert (= (or b!5853372 b!5853374) bm!458298))

(declare-fun m!6772604 () Bool)

(assert (=> b!5853368 m!6772604))

(declare-fun m!6772606 () Bool)

(assert (=> b!5853367 m!6772606))

(declare-fun m!6772608 () Bool)

(assert (=> bm!458296 m!6772608))

(declare-fun m!6772610 () Bool)

(assert (=> bm!458294 m!6772610))

(declare-fun m!6772612 () Bool)

(assert (=> bm!458298 m!6772612))

(assert (=> bm!458096 d!1838373))

(assert (=> bm!458123 d!1838265))

(declare-fun bs!1379205 () Bool)

(declare-fun d!1838375 () Bool)

(assert (= bs!1379205 (and d!1838375 d!1838371)))

(declare-fun lambda!320049 () Int)

(assert (=> bs!1379205 (= lambda!320049 lambda!320048)))

(declare-fun bs!1379206 () Bool)

(assert (= bs!1379206 (and d!1838375 d!1837997)))

(assert (=> bs!1379206 (= lambda!320049 lambda!319991)))

(declare-fun bs!1379207 () Bool)

(assert (= bs!1379207 (and d!1838375 d!1838307)))

(assert (=> bs!1379207 (= lambda!320049 lambda!320045)))

(declare-fun bs!1379208 () Bool)

(assert (= bs!1379208 (and d!1838375 d!1838039)))

(assert (=> bs!1379208 (= lambda!320049 lambda!320012)))

(declare-fun bs!1379209 () Bool)

(assert (= bs!1379209 (and d!1838375 d!1838031)))

(assert (=> bs!1379209 (= lambda!320049 lambda!320009)))

(declare-fun bs!1379210 () Bool)

(assert (= bs!1379210 (and d!1838375 d!1838011)))

(assert (=> bs!1379210 (= lambda!320049 lambda!320002)))

(declare-fun bs!1379211 () Bool)

(assert (= bs!1379211 (and d!1838375 d!1837995)))

(assert (=> bs!1379211 (= lambda!320049 lambda!319988)))

(declare-fun bs!1379212 () Bool)

(assert (= bs!1379212 (and d!1838375 d!1838013)))

(assert (=> bs!1379212 (= lambda!320049 lambda!320003)))

(declare-fun b!5853378 () Bool)

(declare-fun e!3589393 () Regex!15919)

(declare-fun e!3589395 () Regex!15919)

(assert (=> b!5853378 (= e!3589393 e!3589395)))

(declare-fun c!1037792 () Bool)

(assert (=> b!5853378 (= c!1037792 ((_ is Cons!63932) (t!377419 (unfocusZipperList!1340 zl!343))))))

(declare-fun b!5853379 () Bool)

(declare-fun e!3589394 () Bool)

(declare-fun lt!2304595 () Regex!15919)

(assert (=> b!5853379 (= e!3589394 (isEmptyLang!1362 lt!2304595))))

(declare-fun b!5853380 () Bool)

(declare-fun e!3589391 () Bool)

(assert (=> b!5853380 (= e!3589391 (= lt!2304595 (head!12393 (t!377419 (unfocusZipperList!1340 zl!343)))))))

(declare-fun b!5853381 () Bool)

(assert (=> b!5853381 (= e!3589391 (isUnion!792 lt!2304595))))

(declare-fun b!5853382 () Bool)

(declare-fun e!3589396 () Bool)

(assert (=> b!5853382 (= e!3589396 e!3589394)))

(declare-fun c!1037794 () Bool)

(assert (=> b!5853382 (= c!1037794 (isEmpty!35794 (t!377419 (unfocusZipperList!1340 zl!343))))))

(assert (=> d!1838375 e!3589396))

(declare-fun res!2464059 () Bool)

(assert (=> d!1838375 (=> (not res!2464059) (not e!3589396))))

(assert (=> d!1838375 (= res!2464059 (validRegex!7655 lt!2304595))))

(assert (=> d!1838375 (= lt!2304595 e!3589393)))

(declare-fun c!1037791 () Bool)

(declare-fun e!3589392 () Bool)

(assert (=> d!1838375 (= c!1037791 e!3589392)))

(declare-fun res!2464058 () Bool)

(assert (=> d!1838375 (=> (not res!2464058) (not e!3589392))))

(assert (=> d!1838375 (= res!2464058 ((_ is Cons!63932) (t!377419 (unfocusZipperList!1340 zl!343))))))

(assert (=> d!1838375 (forall!15006 (t!377419 (unfocusZipperList!1340 zl!343)) lambda!320049)))

(assert (=> d!1838375 (= (generalisedUnion!1763 (t!377419 (unfocusZipperList!1340 zl!343))) lt!2304595)))

(declare-fun b!5853383 () Bool)

(assert (=> b!5853383 (= e!3589393 (h!70380 (t!377419 (unfocusZipperList!1340 zl!343))))))

(declare-fun b!5853384 () Bool)

(assert (=> b!5853384 (= e!3589392 (isEmpty!35794 (t!377419 (t!377419 (unfocusZipperList!1340 zl!343)))))))

(declare-fun b!5853385 () Bool)

(assert (=> b!5853385 (= e!3589394 e!3589391)))

(declare-fun c!1037793 () Bool)

(assert (=> b!5853385 (= c!1037793 (isEmpty!35794 (tail!11478 (t!377419 (unfocusZipperList!1340 zl!343)))))))

(declare-fun b!5853386 () Bool)

(assert (=> b!5853386 (= e!3589395 (Union!15919 (h!70380 (t!377419 (unfocusZipperList!1340 zl!343))) (generalisedUnion!1763 (t!377419 (t!377419 (unfocusZipperList!1340 zl!343))))))))

(declare-fun b!5853387 () Bool)

(assert (=> b!5853387 (= e!3589395 EmptyLang!15919)))

(assert (= (and d!1838375 res!2464058) b!5853384))

(assert (= (and d!1838375 c!1037791) b!5853383))

(assert (= (and d!1838375 (not c!1037791)) b!5853378))

(assert (= (and b!5853378 c!1037792) b!5853386))

(assert (= (and b!5853378 (not c!1037792)) b!5853387))

(assert (= (and d!1838375 res!2464059) b!5853382))

(assert (= (and b!5853382 c!1037794) b!5853379))

(assert (= (and b!5853382 (not c!1037794)) b!5853385))

(assert (= (and b!5853385 c!1037793) b!5853380))

(assert (= (and b!5853385 (not c!1037793)) b!5853381))

(assert (=> b!5853382 m!6771872))

(declare-fun m!6772614 () Bool)

(assert (=> b!5853385 m!6772614))

(assert (=> b!5853385 m!6772614))

(declare-fun m!6772616 () Bool)

(assert (=> b!5853385 m!6772616))

(declare-fun m!6772618 () Bool)

(assert (=> b!5853386 m!6772618))

(declare-fun m!6772620 () Bool)

(assert (=> d!1838375 m!6772620))

(declare-fun m!6772622 () Bool)

(assert (=> d!1838375 m!6772622))

(declare-fun m!6772624 () Bool)

(assert (=> b!5853384 m!6772624))

(declare-fun m!6772626 () Bool)

(assert (=> b!5853381 m!6772626))

(declare-fun m!6772628 () Bool)

(assert (=> b!5853379 m!6772628))

(declare-fun m!6772630 () Bool)

(assert (=> b!5853380 m!6772630))

(assert (=> b!5852376 d!1838375))

(declare-fun bs!1379213 () Bool)

(declare-fun d!1838377 () Bool)

(assert (= bs!1379213 (and d!1838377 d!1838275)))

(declare-fun lambda!320050 () Int)

(assert (=> bs!1379213 (= lambda!320050 lambda!320042)))

(declare-fun bs!1379214 () Bool)

(assert (= bs!1379214 (and d!1838377 d!1838295)))

(assert (=> bs!1379214 (= lambda!320050 lambda!320044)))

(assert (=> d!1838377 (= (nullableZipper!1758 z!1189) (exists!2302 z!1189 lambda!320050))))

(declare-fun bs!1379215 () Bool)

(assert (= bs!1379215 d!1838377))

(declare-fun m!6772632 () Bool)

(assert (=> bs!1379215 m!6772632))

(assert (=> b!5852344 d!1838377))

(declare-fun bm!458299 () Bool)

(declare-fun call!458308 () List!64056)

(declare-fun call!458305 () List!64056)

(assert (=> bm!458299 (= call!458308 call!458305)))

(declare-fun bm!458300 () Bool)

(declare-fun c!1037799 () Bool)

(declare-fun call!458306 () (InoxSet Context!10606))

(declare-fun c!1037798 () Bool)

(declare-fun c!1037797 () Bool)

(assert (=> bm!458300 (= call!458306 (derivationStepZipperDown!1185 (ite c!1037799 (regTwo!32351 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))) (ite c!1037797 (regTwo!32350 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))) (ite c!1037798 (regOne!32350 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))) (reg!16248 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))))))) (ite (or c!1037799 c!1037797) (ite c!1037503 lt!2304502 (Context!10607 call!458103)) (Context!10607 call!458308)) (h!70382 s!2326)))))

(declare-fun bm!458301 () Bool)

(declare-fun call!458309 () (InoxSet Context!10606))

(declare-fun call!458304 () (InoxSet Context!10606))

(assert (=> bm!458301 (= call!458309 call!458304)))

(declare-fun b!5853388 () Bool)

(declare-fun e!3589397 () (InoxSet Context!10606))

(assert (=> b!5853388 (= e!3589397 (store ((as const (Array Context!10606 Bool)) false) (ite c!1037503 lt!2304502 (Context!10607 call!458103)) true))))

(declare-fun c!1037795 () Bool)

(declare-fun d!1838379 () Bool)

(assert (=> d!1838379 (= c!1037795 (and ((_ is ElementMatch!15919) (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))) (= (c!1037365 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))) (h!70382 s!2326))))))

(assert (=> d!1838379 (= (derivationStepZipperDown!1185 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))) (ite c!1037503 lt!2304502 (Context!10607 call!458103)) (h!70382 s!2326)) e!3589397)))

(declare-fun bm!458302 () Bool)

(assert (=> bm!458302 (= call!458305 ($colon$colon!1824 (exprs!5803 (ite c!1037503 lt!2304502 (Context!10607 call!458103))) (ite (or c!1037797 c!1037798) (regTwo!32350 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))) (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))))))))

(declare-fun b!5853389 () Bool)

(declare-fun e!3589399 () Bool)

(assert (=> b!5853389 (= e!3589399 (nullable!5919 (regOne!32350 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))))))))

(declare-fun b!5853390 () Bool)

(declare-fun e!3589401 () (InoxSet Context!10606))

(assert (=> b!5853390 (= e!3589401 call!458309)))

(declare-fun b!5853391 () Bool)

(declare-fun e!3589402 () (InoxSet Context!10606))

(assert (=> b!5853391 (= e!3589397 e!3589402)))

(assert (=> b!5853391 (= c!1037799 ((_ is Union!15919) (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))))))

(declare-fun b!5853392 () Bool)

(declare-fun e!3589400 () (InoxSet Context!10606))

(assert (=> b!5853392 (= e!3589400 e!3589401)))

(assert (=> b!5853392 (= c!1037798 ((_ is Concat!24764) (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))))))

(declare-fun b!5853393 () Bool)

(declare-fun call!458307 () (InoxSet Context!10606))

(assert (=> b!5853393 (= e!3589402 ((_ map or) call!458307 call!458306))))

(declare-fun b!5853394 () Bool)

(declare-fun e!3589398 () (InoxSet Context!10606))

(assert (=> b!5853394 (= e!3589398 call!458309)))

(declare-fun bm!458303 () Bool)

(assert (=> bm!458303 (= call!458304 call!458306)))

(declare-fun b!5853395 () Bool)

(assert (=> b!5853395 (= e!3589400 ((_ map or) call!458307 call!458304))))

(declare-fun b!5853396 () Bool)

(assert (=> b!5853396 (= e!3589398 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458304 () Bool)

(assert (=> bm!458304 (= call!458307 (derivationStepZipperDown!1185 (ite c!1037799 (regOne!32351 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))) (regOne!32350 (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292))))) (ite c!1037799 (ite c!1037503 lt!2304502 (Context!10607 call!458103)) (Context!10607 call!458305)) (h!70382 s!2326)))))

(declare-fun b!5853397 () Bool)

(declare-fun c!1037796 () Bool)

(assert (=> b!5853397 (= c!1037796 ((_ is Star!15919) (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))))))

(assert (=> b!5853397 (= e!3589401 e!3589398)))

(declare-fun b!5853398 () Bool)

(assert (=> b!5853398 (= c!1037797 e!3589399)))

(declare-fun res!2464060 () Bool)

(assert (=> b!5853398 (=> (not res!2464060) (not e!3589399))))

(assert (=> b!5853398 (= res!2464060 ((_ is Concat!24764) (ite c!1037503 (regOne!32351 (regTwo!32351 r!7292)) (regOne!32350 (regTwo!32351 r!7292)))))))

(assert (=> b!5853398 (= e!3589402 e!3589400)))

(assert (= (and d!1838379 c!1037795) b!5853388))

(assert (= (and d!1838379 (not c!1037795)) b!5853391))

(assert (= (and b!5853391 c!1037799) b!5853393))

(assert (= (and b!5853391 (not c!1037799)) b!5853398))

(assert (= (and b!5853398 res!2464060) b!5853389))

(assert (= (and b!5853398 c!1037797) b!5853395))

(assert (= (and b!5853398 (not c!1037797)) b!5853392))

(assert (= (and b!5853392 c!1037798) b!5853390))

(assert (= (and b!5853392 (not c!1037798)) b!5853397))

(assert (= (and b!5853397 c!1037796) b!5853394))

(assert (= (and b!5853397 (not c!1037796)) b!5853396))

(assert (= (or b!5853390 b!5853394) bm!458299))

(assert (= (or b!5853390 b!5853394) bm!458301))

(assert (= (or b!5853395 bm!458299) bm!458302))

(assert (= (or b!5853395 bm!458301) bm!458303))

(assert (= (or b!5853393 bm!458303) bm!458300))

(assert (= (or b!5853393 b!5853395) bm!458304))

(declare-fun m!6772634 () Bool)

(assert (=> b!5853389 m!6772634))

(declare-fun m!6772636 () Bool)

(assert (=> b!5853388 m!6772636))

(declare-fun m!6772638 () Bool)

(assert (=> bm!458302 m!6772638))

(declare-fun m!6772640 () Bool)

(assert (=> bm!458300 m!6772640))

(declare-fun m!6772642 () Bool)

(assert (=> bm!458304 m!6772642))

(assert (=> bm!458102 d!1838379))

(declare-fun d!1838381 () Bool)

(assert (=> d!1838381 (= (flatMap!1450 z!1189 lambda!320008) (choose!44382 z!1189 lambda!320008))))

(declare-fun bs!1379216 () Bool)

(assert (= bs!1379216 d!1838381))

(declare-fun m!6772644 () Bool)

(assert (=> bs!1379216 m!6772644))

(assert (=> d!1838021 d!1838381))

(declare-fun d!1838383 () Bool)

(assert (=> d!1838383 (= (isEmpty!35793 (t!377421 s!2326)) ((_ is Nil!63934) (t!377421 s!2326)))))

(assert (=> d!1837965 d!1838383))

(assert (=> b!5852496 d!1838299))

(assert (=> b!5852496 d!1838273))

(declare-fun bm!458305 () Bool)

(declare-fun call!458314 () List!64056)

(declare-fun call!458311 () List!64056)

(assert (=> bm!458305 (= call!458314 call!458311)))

(declare-fun c!1037802 () Bool)

(declare-fun call!458312 () (InoxSet Context!10606))

(declare-fun c!1037804 () Bool)

(declare-fun bm!458306 () Bool)

(declare-fun c!1037803 () Bool)

(assert (=> bm!458306 (= call!458312 (derivationStepZipperDown!1185 (ite c!1037804 (regTwo!32351 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))) (ite c!1037802 (regTwo!32350 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))) (ite c!1037803 (regOne!32350 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))) (reg!16248 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292))))))) (ite (or c!1037804 c!1037802) (ite c!1037508 lt!2304502 (Context!10607 call!458109)) (Context!10607 call!458314)) (h!70382 s!2326)))))

(declare-fun bm!458307 () Bool)

(declare-fun call!458315 () (InoxSet Context!10606))

(declare-fun call!458310 () (InoxSet Context!10606))

(assert (=> bm!458307 (= call!458315 call!458310)))

(declare-fun b!5853399 () Bool)

(declare-fun e!3589403 () (InoxSet Context!10606))

(assert (=> b!5853399 (= e!3589403 (store ((as const (Array Context!10606 Bool)) false) (ite c!1037508 lt!2304502 (Context!10607 call!458109)) true))))

(declare-fun d!1838385 () Bool)

(declare-fun c!1037800 () Bool)

(assert (=> d!1838385 (= c!1037800 (and ((_ is ElementMatch!15919) (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))) (= (c!1037365 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))) (h!70382 s!2326))))))

(assert (=> d!1838385 (= (derivationStepZipperDown!1185 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292))) (ite c!1037508 lt!2304502 (Context!10607 call!458109)) (h!70382 s!2326)) e!3589403)))

(declare-fun bm!458308 () Bool)

(assert (=> bm!458308 (= call!458311 ($colon$colon!1824 (exprs!5803 (ite c!1037508 lt!2304502 (Context!10607 call!458109))) (ite (or c!1037802 c!1037803) (regTwo!32350 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))) (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292))))))))

(declare-fun b!5853400 () Bool)

(declare-fun e!3589405 () Bool)

(assert (=> b!5853400 (= e!3589405 (nullable!5919 (regOne!32350 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292))))))))

(declare-fun b!5853401 () Bool)

(declare-fun e!3589407 () (InoxSet Context!10606))

(assert (=> b!5853401 (= e!3589407 call!458315)))

(declare-fun b!5853402 () Bool)

(declare-fun e!3589408 () (InoxSet Context!10606))

(assert (=> b!5853402 (= e!3589403 e!3589408)))

(assert (=> b!5853402 (= c!1037804 ((_ is Union!15919) (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))))))

(declare-fun b!5853403 () Bool)

(declare-fun e!3589406 () (InoxSet Context!10606))

(assert (=> b!5853403 (= e!3589406 e!3589407)))

(assert (=> b!5853403 (= c!1037803 ((_ is Concat!24764) (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))))))

(declare-fun b!5853404 () Bool)

(declare-fun call!458313 () (InoxSet Context!10606))

(assert (=> b!5853404 (= e!3589408 ((_ map or) call!458313 call!458312))))

(declare-fun b!5853405 () Bool)

(declare-fun e!3589404 () (InoxSet Context!10606))

(assert (=> b!5853405 (= e!3589404 call!458315)))

(declare-fun bm!458309 () Bool)

(assert (=> bm!458309 (= call!458310 call!458312)))

(declare-fun b!5853406 () Bool)

(assert (=> b!5853406 (= e!3589406 ((_ map or) call!458313 call!458310))))

(declare-fun b!5853407 () Bool)

(assert (=> b!5853407 (= e!3589404 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458310 () Bool)

(assert (=> bm!458310 (= call!458313 (derivationStepZipperDown!1185 (ite c!1037804 (regOne!32351 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))) (regOne!32350 (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292))))) (ite c!1037804 (ite c!1037508 lt!2304502 (Context!10607 call!458109)) (Context!10607 call!458311)) (h!70382 s!2326)))))

(declare-fun b!5853408 () Bool)

(declare-fun c!1037801 () Bool)

(assert (=> b!5853408 (= c!1037801 ((_ is Star!15919) (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))))))

(assert (=> b!5853408 (= e!3589407 e!3589404)))

(declare-fun b!5853409 () Bool)

(assert (=> b!5853409 (= c!1037802 e!3589405)))

(declare-fun res!2464061 () Bool)

(assert (=> b!5853409 (=> (not res!2464061) (not e!3589405))))

(assert (=> b!5853409 (= res!2464061 ((_ is Concat!24764) (ite c!1037508 (regOne!32351 (regOne!32351 r!7292)) (regOne!32350 (regOne!32351 r!7292)))))))

(assert (=> b!5853409 (= e!3589408 e!3589406)))

(assert (= (and d!1838385 c!1037800) b!5853399))

(assert (= (and d!1838385 (not c!1037800)) b!5853402))

(assert (= (and b!5853402 c!1037804) b!5853404))

(assert (= (and b!5853402 (not c!1037804)) b!5853409))

(assert (= (and b!5853409 res!2464061) b!5853400))

(assert (= (and b!5853409 c!1037802) b!5853406))

(assert (= (and b!5853409 (not c!1037802)) b!5853403))

(assert (= (and b!5853403 c!1037803) b!5853401))

(assert (= (and b!5853403 (not c!1037803)) b!5853408))

(assert (= (and b!5853408 c!1037801) b!5853405))

(assert (= (and b!5853408 (not c!1037801)) b!5853407))

(assert (= (or b!5853401 b!5853405) bm!458305))

(assert (= (or b!5853401 b!5853405) bm!458307))

(assert (= (or b!5853406 bm!458305) bm!458308))

(assert (= (or b!5853406 bm!458307) bm!458309))

(assert (= (or b!5853404 bm!458309) bm!458306))

(assert (= (or b!5853404 b!5853406) bm!458310))

(declare-fun m!6772646 () Bool)

(assert (=> b!5853400 m!6772646))

(declare-fun m!6772648 () Bool)

(assert (=> b!5853399 m!6772648))

(declare-fun m!6772650 () Bool)

(assert (=> bm!458308 m!6772650))

(declare-fun m!6772652 () Bool)

(assert (=> bm!458306 m!6772652))

(declare-fun m!6772654 () Bool)

(assert (=> bm!458310 m!6772654))

(assert (=> bm!458108 d!1838385))

(assert (=> d!1838005 d!1838003))

(assert (=> d!1838005 d!1837999))

(declare-fun d!1838387 () Bool)

(assert (=> d!1838387 (= (matchR!8102 (regTwo!32351 r!7292) s!2326) (matchRSpec!3020 (regTwo!32351 r!7292) s!2326))))

(assert (=> d!1838387 true))

(declare-fun _$88!4258 () Unit!157109)

(assert (=> d!1838387 (= (choose!44381 (regTwo!32351 r!7292) s!2326) _$88!4258)))

(declare-fun bs!1379217 () Bool)

(assert (= bs!1379217 d!1838387))

(assert (=> bs!1379217 m!6771556))

(assert (=> bs!1379217 m!6771552))

(assert (=> d!1838005 d!1838387))

(assert (=> d!1838005 d!1838303))

(assert (=> b!5852463 d!1838271))

(declare-fun bs!1379218 () Bool)

(declare-fun d!1838389 () Bool)

(assert (= bs!1379218 (and d!1838389 d!1838371)))

(declare-fun lambda!320051 () Int)

(assert (=> bs!1379218 (= lambda!320051 lambda!320048)))

(declare-fun bs!1379219 () Bool)

(assert (= bs!1379219 (and d!1838389 d!1837997)))

(assert (=> bs!1379219 (= lambda!320051 lambda!319991)))

(declare-fun bs!1379220 () Bool)

(assert (= bs!1379220 (and d!1838389 d!1838307)))

(assert (=> bs!1379220 (= lambda!320051 lambda!320045)))

(declare-fun bs!1379221 () Bool)

(assert (= bs!1379221 (and d!1838389 d!1838039)))

(assert (=> bs!1379221 (= lambda!320051 lambda!320012)))

(declare-fun bs!1379222 () Bool)

(assert (= bs!1379222 (and d!1838389 d!1838031)))

(assert (=> bs!1379222 (= lambda!320051 lambda!320009)))

(declare-fun bs!1379223 () Bool)

(assert (= bs!1379223 (and d!1838389 d!1837995)))

(assert (=> bs!1379223 (= lambda!320051 lambda!319988)))

(declare-fun bs!1379224 () Bool)

(assert (= bs!1379224 (and d!1838389 d!1838013)))

(assert (=> bs!1379224 (= lambda!320051 lambda!320003)))

(declare-fun bs!1379225 () Bool)

(assert (= bs!1379225 (and d!1838389 d!1838375)))

(assert (=> bs!1379225 (= lambda!320051 lambda!320049)))

(declare-fun bs!1379226 () Bool)

(assert (= bs!1379226 (and d!1838389 d!1838011)))

(assert (=> bs!1379226 (= lambda!320051 lambda!320002)))

(assert (=> d!1838389 (= (inv!83044 (h!70381 (t!377420 zl!343))) (forall!15006 (exprs!5803 (h!70381 (t!377420 zl!343))) lambda!320051))))

(declare-fun bs!1379227 () Bool)

(assert (= bs!1379227 d!1838389))

(declare-fun m!6772656 () Bool)

(assert (=> bs!1379227 m!6772656))

(assert (=> b!5852647 d!1838389))

(declare-fun d!1838391 () Bool)

(assert (=> d!1838391 (= (nullable!5919 r!7292) (nullableFct!1906 r!7292))))

(declare-fun bs!1379228 () Bool)

(assert (= bs!1379228 d!1838391))

(declare-fun m!6772658 () Bool)

(assert (=> bs!1379228 m!6772658))

(assert (=> b!5852519 d!1838391))

(assert (=> b!5852537 d!1837965))

(declare-fun bs!1379229 () Bool)

(declare-fun d!1838393 () Bool)

(assert (= bs!1379229 (and d!1838393 d!1838275)))

(declare-fun lambda!320052 () Int)

(assert (=> bs!1379229 (= lambda!320052 lambda!320042)))

(declare-fun bs!1379230 () Bool)

(assert (= bs!1379230 (and d!1838393 d!1838295)))

(assert (=> bs!1379230 (= lambda!320052 lambda!320044)))

(declare-fun bs!1379231 () Bool)

(assert (= bs!1379231 (and d!1838393 d!1838377)))

(assert (=> bs!1379231 (= lambda!320052 lambda!320050)))

(assert (=> d!1838393 (= (nullableZipper!1758 lt!2304501) (exists!2302 lt!2304501 lambda!320052))))

(declare-fun bs!1379232 () Bool)

(assert (= bs!1379232 d!1838393))

(declare-fun m!6772660 () Bool)

(assert (=> bs!1379232 m!6772660))

(assert (=> b!5852188 d!1838393))

(assert (=> b!5852466 d!1838299))

(assert (=> b!5852466 d!1838273))

(declare-fun bm!458311 () Bool)

(declare-fun call!458320 () List!64056)

(declare-fun call!458317 () List!64056)

(assert (=> bm!458311 (= call!458320 call!458317)))

(declare-fun c!1037807 () Bool)

(declare-fun c!1037809 () Bool)

(declare-fun c!1037808 () Bool)

(declare-fun call!458318 () (InoxSet Context!10606))

(declare-fun bm!458312 () Bool)

(assert (=> bm!458312 (= call!458318 (derivationStepZipperDown!1185 (ite c!1037809 (regTwo!32351 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))) (ite c!1037807 (regTwo!32350 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))) (ite c!1037808 (regOne!32350 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))) (reg!16248 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292)))))))) (ite (or c!1037809 c!1037807) (ite (or c!1037492 c!1037490) lt!2304502 (Context!10607 call!458097)) (Context!10607 call!458320)) (h!70382 s!2326)))))

(declare-fun bm!458313 () Bool)

(declare-fun call!458321 () (InoxSet Context!10606))

(declare-fun call!458316 () (InoxSet Context!10606))

(assert (=> bm!458313 (= call!458321 call!458316)))

(declare-fun e!3589409 () (InoxSet Context!10606))

(declare-fun b!5853410 () Bool)

(assert (=> b!5853410 (= e!3589409 (store ((as const (Array Context!10606 Bool)) false) (ite (or c!1037492 c!1037490) lt!2304502 (Context!10607 call!458097)) true))))

(declare-fun d!1838395 () Bool)

(declare-fun c!1037805 () Bool)

(assert (=> d!1838395 (= c!1037805 (and ((_ is ElementMatch!15919) (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))) (= (c!1037365 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))) (h!70382 s!2326))))))

(assert (=> d!1838395 (= (derivationStepZipperDown!1185 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292)))) (ite (or c!1037492 c!1037490) lt!2304502 (Context!10607 call!458097)) (h!70382 s!2326)) e!3589409)))

(declare-fun bm!458314 () Bool)

(assert (=> bm!458314 (= call!458317 ($colon$colon!1824 (exprs!5803 (ite (or c!1037492 c!1037490) lt!2304502 (Context!10607 call!458097))) (ite (or c!1037807 c!1037808) (regTwo!32350 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))) (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292)))))))))

(declare-fun b!5853411 () Bool)

(declare-fun e!3589411 () Bool)

(assert (=> b!5853411 (= e!3589411 (nullable!5919 (regOne!32350 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292)))))))))

(declare-fun b!5853412 () Bool)

(declare-fun e!3589413 () (InoxSet Context!10606))

(assert (=> b!5853412 (= e!3589413 call!458321)))

(declare-fun b!5853413 () Bool)

(declare-fun e!3589414 () (InoxSet Context!10606))

(assert (=> b!5853413 (= e!3589409 e!3589414)))

(assert (=> b!5853413 (= c!1037809 ((_ is Union!15919) (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))))))

(declare-fun b!5853414 () Bool)

(declare-fun e!3589412 () (InoxSet Context!10606))

(assert (=> b!5853414 (= e!3589412 e!3589413)))

(assert (=> b!5853414 (= c!1037808 ((_ is Concat!24764) (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))))))

(declare-fun b!5853415 () Bool)

(declare-fun call!458319 () (InoxSet Context!10606))

(assert (=> b!5853415 (= e!3589414 ((_ map or) call!458319 call!458318))))

(declare-fun b!5853416 () Bool)

(declare-fun e!3589410 () (InoxSet Context!10606))

(assert (=> b!5853416 (= e!3589410 call!458321)))

(declare-fun bm!458315 () Bool)

(assert (=> bm!458315 (= call!458316 call!458318)))

(declare-fun b!5853417 () Bool)

(assert (=> b!5853417 (= e!3589412 ((_ map or) call!458319 call!458316))))

(declare-fun b!5853418 () Bool)

(assert (=> b!5853418 (= e!3589410 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458316 () Bool)

(assert (=> bm!458316 (= call!458319 (derivationStepZipperDown!1185 (ite c!1037809 (regOne!32351 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))) (regOne!32350 (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292)))))) (ite c!1037809 (ite (or c!1037492 c!1037490) lt!2304502 (Context!10607 call!458097)) (Context!10607 call!458317)) (h!70382 s!2326)))))

(declare-fun b!5853419 () Bool)

(declare-fun c!1037806 () Bool)

(assert (=> b!5853419 (= c!1037806 ((_ is Star!15919) (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))))))

(assert (=> b!5853419 (= e!3589413 e!3589410)))

(declare-fun b!5853420 () Bool)

(assert (=> b!5853420 (= c!1037807 e!3589411)))

(declare-fun res!2464062 () Bool)

(assert (=> b!5853420 (=> (not res!2464062) (not e!3589411))))

(assert (=> b!5853420 (= res!2464062 ((_ is Concat!24764) (ite c!1037492 (regTwo!32351 r!7292) (ite c!1037490 (regTwo!32350 r!7292) (ite c!1037491 (regOne!32350 r!7292) (reg!16248 r!7292))))))))

(assert (=> b!5853420 (= e!3589414 e!3589412)))

(assert (= (and d!1838395 c!1037805) b!5853410))

(assert (= (and d!1838395 (not c!1037805)) b!5853413))

(assert (= (and b!5853413 c!1037809) b!5853415))

(assert (= (and b!5853413 (not c!1037809)) b!5853420))

(assert (= (and b!5853420 res!2464062) b!5853411))

(assert (= (and b!5853420 c!1037807) b!5853417))

(assert (= (and b!5853420 (not c!1037807)) b!5853414))

(assert (= (and b!5853414 c!1037808) b!5853412))

(assert (= (and b!5853414 (not c!1037808)) b!5853419))

(assert (= (and b!5853419 c!1037806) b!5853416))

(assert (= (and b!5853419 (not c!1037806)) b!5853418))

(assert (= (or b!5853412 b!5853416) bm!458311))

(assert (= (or b!5853412 b!5853416) bm!458313))

(assert (= (or b!5853417 bm!458311) bm!458314))

(assert (= (or b!5853417 bm!458313) bm!458315))

(assert (= (or b!5853415 bm!458315) bm!458312))

(assert (= (or b!5853415 b!5853417) bm!458316))

(declare-fun m!6772662 () Bool)

(assert (=> b!5853411 m!6772662))

(declare-fun m!6772664 () Bool)

(assert (=> b!5853410 m!6772664))

(declare-fun m!6772666 () Bool)

(assert (=> bm!458314 m!6772666))

(declare-fun m!6772668 () Bool)

(assert (=> bm!458312 m!6772668))

(declare-fun m!6772670 () Bool)

(assert (=> bm!458316 m!6772670))

(assert (=> bm!458089 d!1838395))

(declare-fun d!1838397 () Bool)

(declare-fun c!1037810 () Bool)

(assert (=> d!1838397 (= c!1037810 (isEmpty!35793 (t!377421 s!2326)))))

(declare-fun e!3589415 () Bool)

(assert (=> d!1838397 (= (matchZipper!1985 ((_ map or) lt!2304504 lt!2304501) (t!377421 s!2326)) e!3589415)))

(declare-fun b!5853421 () Bool)

(assert (=> b!5853421 (= e!3589415 (nullableZipper!1758 ((_ map or) lt!2304504 lt!2304501)))))

(declare-fun b!5853422 () Bool)

(assert (=> b!5853422 (= e!3589415 (matchZipper!1985 (derivationStepZipper!1918 ((_ map or) lt!2304504 lt!2304501) (head!12392 (t!377421 s!2326))) (tail!11477 (t!377421 s!2326))))))

(assert (= (and d!1838397 c!1037810) b!5853421))

(assert (= (and d!1838397 (not c!1037810)) b!5853422))

(assert (=> d!1838397 m!6771770))

(declare-fun m!6772672 () Bool)

(assert (=> b!5853421 m!6772672))

(assert (=> b!5853422 m!6771774))

(assert (=> b!5853422 m!6771774))

(declare-fun m!6772674 () Bool)

(assert (=> b!5853422 m!6772674))

(assert (=> b!5853422 m!6771778))

(assert (=> b!5853422 m!6772674))

(assert (=> b!5853422 m!6771778))

(declare-fun m!6772676 () Bool)

(assert (=> b!5853422 m!6772676))

(assert (=> d!1838035 d!1838397))

(assert (=> d!1838035 d!1838033))

(declare-fun e!3589418 () Bool)

(declare-fun d!1838399 () Bool)

(assert (=> d!1838399 (= (matchZipper!1985 ((_ map or) lt!2304504 lt!2304501) (t!377421 s!2326)) e!3589418)))

(declare-fun res!2464065 () Bool)

(assert (=> d!1838399 (=> res!2464065 e!3589418)))

(assert (=> d!1838399 (= res!2464065 (matchZipper!1985 lt!2304504 (t!377421 s!2326)))))

(assert (=> d!1838399 true))

(declare-fun _$48!1413 () Unit!157109)

(assert (=> d!1838399 (= (choose!44385 lt!2304504 lt!2304501 (t!377421 s!2326)) _$48!1413)))

(declare-fun b!5853425 () Bool)

(assert (=> b!5853425 (= e!3589418 (matchZipper!1985 lt!2304501 (t!377421 s!2326)))))

(assert (= (and d!1838399 (not res!2464065)) b!5853425))

(assert (=> d!1838399 m!6771962))

(assert (=> d!1838399 m!6771590))

(assert (=> b!5853425 m!6771594))

(assert (=> d!1838035 d!1838399))

(declare-fun d!1838401 () Bool)

(assert (=> d!1838401 (= (isEmptyExpr!1354 lt!2304576) ((_ is EmptyExpr!15919) lt!2304576))))

(assert (=> b!5852587 d!1838401))

(declare-fun d!1838403 () Bool)

(assert (=> d!1838403 (= ($colon$colon!1824 (exprs!5803 lt!2304502) (ite (or c!1037501 c!1037502) (regTwo!32350 (regTwo!32351 r!7292)) (regTwo!32351 r!7292))) (Cons!63932 (ite (or c!1037501 c!1037502) (regTwo!32350 (regTwo!32351 r!7292)) (regTwo!32351 r!7292)) (exprs!5803 lt!2304502)))))

(assert (=> bm!458100 d!1838403))

(declare-fun d!1838405 () Bool)

(assert (=> d!1838405 (= (head!12393 (unfocusZipperList!1340 zl!343)) (h!70380 (unfocusZipperList!1340 zl!343)))))

(assert (=> b!5852370 d!1838405))

(declare-fun d!1838407 () Bool)

(assert (=> d!1838407 (= (nullable!5919 (regOne!32350 r!7292)) (nullableFct!1906 (regOne!32350 r!7292)))))

(declare-fun bs!1379233 () Bool)

(assert (= bs!1379233 d!1838407))

(declare-fun m!6772678 () Bool)

(assert (=> bs!1379233 m!6772678))

(assert (=> b!5852297 d!1838407))

(assert (=> d!1837991 d!1838383))

(assert (=> bm!458120 d!1838265))

(declare-fun d!1838409 () Bool)

(assert (=> d!1838409 (= ($colon$colon!1824 (exprs!5803 lt!2304502) (ite (or c!1037506 c!1037507) (regTwo!32350 (regOne!32351 r!7292)) (regOne!32351 r!7292))) (Cons!63932 (ite (or c!1037506 c!1037507) (regTwo!32350 (regOne!32351 r!7292)) (regOne!32351 r!7292)) (exprs!5803 lt!2304502)))))

(assert (=> bm!458106 d!1838409))

(declare-fun d!1838411 () Bool)

(assert (=> d!1838411 (= (isConcat!877 lt!2304576) ((_ is Concat!24764) lt!2304576))))

(assert (=> b!5852591 d!1838411))

(assert (=> d!1838019 d!1838017))

(assert (=> d!1838019 d!1838015))

(declare-fun d!1838413 () Bool)

(assert (=> d!1838413 (= (matchR!8102 r!7292 s!2326) (matchRSpec!3020 r!7292 s!2326))))

(assert (=> d!1838413 true))

(declare-fun _$88!4259 () Unit!157109)

(assert (=> d!1838413 (= (choose!44381 r!7292 s!2326) _$88!4259)))

(declare-fun bs!1379234 () Bool)

(assert (= bs!1379234 d!1838413))

(assert (=> bs!1379234 m!6771568))

(assert (=> bs!1379234 m!6771566))

(assert (=> d!1838019 d!1838413))

(assert (=> d!1838019 d!1838037))

(declare-fun b!5853426 () Bool)

(declare-fun res!2464068 () Bool)

(declare-fun e!3589420 () Bool)

(assert (=> b!5853426 (=> (not res!2464068) (not e!3589420))))

(declare-fun call!458323 () Bool)

(assert (=> b!5853426 (= res!2464068 call!458323)))

(declare-fun e!3589424 () Bool)

(assert (=> b!5853426 (= e!3589424 e!3589420)))

(declare-fun b!5853427 () Bool)

(declare-fun res!2464067 () Bool)

(declare-fun e!3589423 () Bool)

(assert (=> b!5853427 (=> res!2464067 e!3589423)))

(assert (=> b!5853427 (= res!2464067 (not ((_ is Concat!24764) (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292))))))))

(assert (=> b!5853427 (= e!3589424 e!3589423)))

(declare-fun bm!458317 () Bool)

(declare-fun call!458324 () Bool)

(assert (=> bm!458317 (= call!458323 call!458324)))

(declare-fun b!5853428 () Bool)

(declare-fun e!3589419 () Bool)

(declare-fun e!3589422 () Bool)

(assert (=> b!5853428 (= e!3589419 e!3589422)))

(declare-fun c!1037812 () Bool)

(assert (=> b!5853428 (= c!1037812 ((_ is Star!15919) (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))))))

(declare-fun b!5853429 () Bool)

(assert (=> b!5853429 (= e!3589422 e!3589424)))

(declare-fun c!1037811 () Bool)

(assert (=> b!5853429 (= c!1037811 ((_ is Union!15919) (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))))))

(declare-fun d!1838415 () Bool)

(declare-fun res!2464066 () Bool)

(assert (=> d!1838415 (=> res!2464066 e!3589419)))

(assert (=> d!1838415 (= res!2464066 ((_ is ElementMatch!15919) (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))))))

(assert (=> d!1838415 (= (validRegex!7655 (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))) e!3589419)))

(declare-fun bm!458318 () Bool)

(declare-fun call!458322 () Bool)

(assert (=> bm!458318 (= call!458322 (validRegex!7655 (ite c!1037811 (regTwo!32351 (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))) (regTwo!32350 (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))))))))

(declare-fun b!5853430 () Bool)

(declare-fun e!3589425 () Bool)

(assert (=> b!5853430 (= e!3589422 e!3589425)))

(declare-fun res!2464069 () Bool)

(assert (=> b!5853430 (= res!2464069 (not (nullable!5919 (reg!16248 (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))))))))

(assert (=> b!5853430 (=> (not res!2464069) (not e!3589425))))

(declare-fun b!5853431 () Bool)

(assert (=> b!5853431 (= e!3589420 call!458322)))

(declare-fun bm!458319 () Bool)

(assert (=> bm!458319 (= call!458324 (validRegex!7655 (ite c!1037812 (reg!16248 (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))) (ite c!1037811 (regOne!32351 (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292)))) (regOne!32350 (ite c!1037571 (reg!16248 r!7292) (ite c!1037570 (regOne!32351 r!7292) (regOne!32350 r!7292))))))))))

(declare-fun b!5853432 () Bool)

(declare-fun e!3589421 () Bool)

(assert (=> b!5853432 (= e!3589423 e!3589421)))

(declare-fun res!2464070 () Bool)

(assert (=> b!5853432 (=> (not res!2464070) (not e!3589421))))

(assert (=> b!5853432 (= res!2464070 call!458323)))

(declare-fun b!5853433 () Bool)

(assert (=> b!5853433 (= e!3589425 call!458324)))

(declare-fun b!5853434 () Bool)

(assert (=> b!5853434 (= e!3589421 call!458322)))

(assert (= (and d!1838415 (not res!2464066)) b!5853428))

(assert (= (and b!5853428 c!1037812) b!5853430))

(assert (= (and b!5853428 (not c!1037812)) b!5853429))

(assert (= (and b!5853430 res!2464069) b!5853433))

(assert (= (and b!5853429 c!1037811) b!5853426))

(assert (= (and b!5853429 (not c!1037811)) b!5853427))

(assert (= (and b!5853426 res!2464068) b!5853431))

(assert (= (and b!5853427 (not res!2464067)) b!5853432))

(assert (= (and b!5853432 res!2464070) b!5853434))

(assert (= (or b!5853431 b!5853434) bm!458318))

(assert (= (or b!5853426 b!5853432) bm!458317))

(assert (= (or b!5853433 bm!458317) bm!458319))

(declare-fun m!6772680 () Bool)

(assert (=> bm!458318 m!6772680))

(declare-fun m!6772682 () Bool)

(assert (=> b!5853430 m!6772682))

(declare-fun m!6772684 () Bool)

(assert (=> bm!458319 m!6772684))

(assert (=> bm!458133 d!1838415))

(declare-fun d!1838417 () Bool)

(assert (=> d!1838417 (= (isEmpty!35794 (t!377419 (unfocusZipperList!1340 zl!343))) ((_ is Nil!63932) (t!377419 (unfocusZipperList!1340 zl!343))))))

(assert (=> b!5852374 d!1838417))

(assert (=> d!1838001 d!1838009))

(assert (=> d!1838001 d!1838007))

(declare-fun d!1838419 () Bool)

(assert (=> d!1838419 (= (matchR!8102 (regOne!32351 r!7292) s!2326) (matchRSpec!3020 (regOne!32351 r!7292) s!2326))))

(assert (=> d!1838419 true))

(declare-fun _$88!4260 () Unit!157109)

(assert (=> d!1838419 (= (choose!44381 (regOne!32351 r!7292) s!2326) _$88!4260)))

(declare-fun bs!1379235 () Bool)

(assert (= bs!1379235 d!1838419))

(assert (=> bs!1379235 m!6771562))

(assert (=> bs!1379235 m!6771558))

(assert (=> d!1838001 d!1838419))

(assert (=> d!1838001 d!1838353))

(assert (=> b!5852491 d!1838299))

(assert (=> b!5852491 d!1838273))

(assert (=> d!1838033 d!1838383))

(assert (=> b!5852382 d!1838039))

(declare-fun bs!1379236 () Bool)

(declare-fun d!1838421 () Bool)

(assert (= bs!1379236 (and d!1838421 d!1838371)))

(declare-fun lambda!320053 () Int)

(assert (=> bs!1379236 (= lambda!320053 lambda!320048)))

(declare-fun bs!1379237 () Bool)

(assert (= bs!1379237 (and d!1838421 d!1838389)))

(assert (=> bs!1379237 (= lambda!320053 lambda!320051)))

(declare-fun bs!1379238 () Bool)

(assert (= bs!1379238 (and d!1838421 d!1837997)))

(assert (=> bs!1379238 (= lambda!320053 lambda!319991)))

(declare-fun bs!1379239 () Bool)

(assert (= bs!1379239 (and d!1838421 d!1838307)))

(assert (=> bs!1379239 (= lambda!320053 lambda!320045)))

(declare-fun bs!1379240 () Bool)

(assert (= bs!1379240 (and d!1838421 d!1838039)))

(assert (=> bs!1379240 (= lambda!320053 lambda!320012)))

(declare-fun bs!1379241 () Bool)

(assert (= bs!1379241 (and d!1838421 d!1838031)))

(assert (=> bs!1379241 (= lambda!320053 lambda!320009)))

(declare-fun bs!1379242 () Bool)

(assert (= bs!1379242 (and d!1838421 d!1837995)))

(assert (=> bs!1379242 (= lambda!320053 lambda!319988)))

(declare-fun bs!1379243 () Bool)

(assert (= bs!1379243 (and d!1838421 d!1838013)))

(assert (=> bs!1379243 (= lambda!320053 lambda!320003)))

(declare-fun bs!1379244 () Bool)

(assert (= bs!1379244 (and d!1838421 d!1838375)))

(assert (=> bs!1379244 (= lambda!320053 lambda!320049)))

(declare-fun bs!1379245 () Bool)

(assert (= bs!1379245 (and d!1838421 d!1838011)))

(assert (=> bs!1379245 (= lambda!320053 lambda!320002)))

(declare-fun lt!2304596 () List!64056)

(assert (=> d!1838421 (forall!15006 lt!2304596 lambda!320053)))

(declare-fun e!3589426 () List!64056)

(assert (=> d!1838421 (= lt!2304596 e!3589426)))

(declare-fun c!1037813 () Bool)

(assert (=> d!1838421 (= c!1037813 ((_ is Cons!63933) (t!377420 zl!343)))))

(assert (=> d!1838421 (= (unfocusZipperList!1340 (t!377420 zl!343)) lt!2304596)))

(declare-fun b!5853435 () Bool)

(assert (=> b!5853435 (= e!3589426 (Cons!63932 (generalisedConcat!1516 (exprs!5803 (h!70381 (t!377420 zl!343)))) (unfocusZipperList!1340 (t!377420 (t!377420 zl!343)))))))

(declare-fun b!5853436 () Bool)

(assert (=> b!5853436 (= e!3589426 Nil!63932)))

(assert (= (and d!1838421 c!1037813) b!5853435))

(assert (= (and d!1838421 (not c!1037813)) b!5853436))

(declare-fun m!6772686 () Bool)

(assert (=> d!1838421 m!6772686))

(declare-fun m!6772688 () Bool)

(assert (=> b!5853435 m!6772688))

(declare-fun m!6772690 () Bool)

(assert (=> b!5853435 m!6772690))

(assert (=> b!5852382 d!1838421))

(declare-fun b!5853437 () Bool)

(declare-fun res!2464073 () Bool)

(declare-fun e!3589427 () Bool)

(assert (=> b!5853437 (=> (not res!2464073) (not e!3589427))))

(declare-fun call!458325 () Bool)

(assert (=> b!5853437 (= res!2464073 (not call!458325))))

(declare-fun d!1838423 () Bool)

(declare-fun e!3589428 () Bool)

(assert (=> d!1838423 e!3589428))

(declare-fun c!1037815 () Bool)

(assert (=> d!1838423 (= c!1037815 ((_ is EmptyExpr!15919) (derivativeStep!4657 r!7292 (head!12392 s!2326))))))

(declare-fun lt!2304597 () Bool)

(declare-fun e!3589432 () Bool)

(assert (=> d!1838423 (= lt!2304597 e!3589432)))

(declare-fun c!1037816 () Bool)

(assert (=> d!1838423 (= c!1037816 (isEmpty!35793 (tail!11477 s!2326)))))

(assert (=> d!1838423 (validRegex!7655 (derivativeStep!4657 r!7292 (head!12392 s!2326)))))

(assert (=> d!1838423 (= (matchR!8102 (derivativeStep!4657 r!7292 (head!12392 s!2326)) (tail!11477 s!2326)) lt!2304597)))

(declare-fun b!5853438 () Bool)

(declare-fun e!3589431 () Bool)

(assert (=> b!5853438 (= e!3589428 e!3589431)))

(declare-fun c!1037814 () Bool)

(assert (=> b!5853438 (= c!1037814 ((_ is EmptyLang!15919) (derivativeStep!4657 r!7292 (head!12392 s!2326))))))

(declare-fun b!5853439 () Bool)

(declare-fun res!2464075 () Bool)

(declare-fun e!3589433 () Bool)

(assert (=> b!5853439 (=> res!2464075 e!3589433)))

(assert (=> b!5853439 (= res!2464075 e!3589427)))

(declare-fun res!2464072 () Bool)

(assert (=> b!5853439 (=> (not res!2464072) (not e!3589427))))

(assert (=> b!5853439 (= res!2464072 lt!2304597)))

(declare-fun bm!458320 () Bool)

(assert (=> bm!458320 (= call!458325 (isEmpty!35793 (tail!11477 s!2326)))))

(declare-fun b!5853440 () Bool)

(assert (=> b!5853440 (= e!3589427 (= (head!12392 (tail!11477 s!2326)) (c!1037365 (derivativeStep!4657 r!7292 (head!12392 s!2326)))))))

(declare-fun b!5853441 () Bool)

(declare-fun e!3589430 () Bool)

(assert (=> b!5853441 (= e!3589430 (not (= (head!12392 (tail!11477 s!2326)) (c!1037365 (derivativeStep!4657 r!7292 (head!12392 s!2326))))))))

(declare-fun b!5853442 () Bool)

(assert (=> b!5853442 (= e!3589432 (matchR!8102 (derivativeStep!4657 (derivativeStep!4657 r!7292 (head!12392 s!2326)) (head!12392 (tail!11477 s!2326))) (tail!11477 (tail!11477 s!2326))))))

(declare-fun b!5853443 () Bool)

(declare-fun e!3589429 () Bool)

(assert (=> b!5853443 (= e!3589433 e!3589429)))

(declare-fun res!2464078 () Bool)

(assert (=> b!5853443 (=> (not res!2464078) (not e!3589429))))

(assert (=> b!5853443 (= res!2464078 (not lt!2304597))))

(declare-fun b!5853444 () Bool)

(declare-fun res!2464074 () Bool)

(assert (=> b!5853444 (=> (not res!2464074) (not e!3589427))))

(assert (=> b!5853444 (= res!2464074 (isEmpty!35793 (tail!11477 (tail!11477 s!2326))))))

(declare-fun b!5853445 () Bool)

(assert (=> b!5853445 (= e!3589429 e!3589430)))

(declare-fun res!2464076 () Bool)

(assert (=> b!5853445 (=> res!2464076 e!3589430)))

(assert (=> b!5853445 (= res!2464076 call!458325)))

(declare-fun b!5853446 () Bool)

(assert (=> b!5853446 (= e!3589428 (= lt!2304597 call!458325))))

(declare-fun b!5853447 () Bool)

(assert (=> b!5853447 (= e!3589432 (nullable!5919 (derivativeStep!4657 r!7292 (head!12392 s!2326))))))

(declare-fun b!5853448 () Bool)

(declare-fun res!2464071 () Bool)

(assert (=> b!5853448 (=> res!2464071 e!3589433)))

(assert (=> b!5853448 (= res!2464071 (not ((_ is ElementMatch!15919) (derivativeStep!4657 r!7292 (head!12392 s!2326)))))))

(assert (=> b!5853448 (= e!3589431 e!3589433)))

(declare-fun b!5853449 () Bool)

(declare-fun res!2464077 () Bool)

(assert (=> b!5853449 (=> res!2464077 e!3589430)))

(assert (=> b!5853449 (= res!2464077 (not (isEmpty!35793 (tail!11477 (tail!11477 s!2326)))))))

(declare-fun b!5853450 () Bool)

(assert (=> b!5853450 (= e!3589431 (not lt!2304597))))

(assert (= (and d!1838423 c!1037816) b!5853447))

(assert (= (and d!1838423 (not c!1037816)) b!5853442))

(assert (= (and d!1838423 c!1037815) b!5853446))

(assert (= (and d!1838423 (not c!1037815)) b!5853438))

(assert (= (and b!5853438 c!1037814) b!5853450))

(assert (= (and b!5853438 (not c!1037814)) b!5853448))

(assert (= (and b!5853448 (not res!2464071)) b!5853439))

(assert (= (and b!5853439 res!2464072) b!5853437))

(assert (= (and b!5853437 res!2464073) b!5853444))

(assert (= (and b!5853444 res!2464074) b!5853440))

(assert (= (and b!5853439 (not res!2464075)) b!5853443))

(assert (= (and b!5853443 res!2464078) b!5853445))

(assert (= (and b!5853445 (not res!2464076)) b!5853449))

(assert (= (and b!5853449 (not res!2464077)) b!5853441))

(assert (= (or b!5853446 b!5853437 b!5853445) bm!458320))

(assert (=> bm!458320 m!6771848))

(assert (=> bm!458320 m!6771896))

(assert (=> b!5853441 m!6771848))

(assert (=> b!5853441 m!6772398))

(assert (=> b!5853447 m!6771926))

(declare-fun m!6772692 () Bool)

(assert (=> b!5853447 m!6772692))

(assert (=> b!5853449 m!6771848))

(assert (=> b!5853449 m!6772402))

(assert (=> b!5853449 m!6772402))

(assert (=> b!5853449 m!6772404))

(assert (=> b!5853444 m!6771848))

(assert (=> b!5853444 m!6772402))

(assert (=> b!5853444 m!6772402))

(assert (=> b!5853444 m!6772404))

(assert (=> b!5853442 m!6771848))

(assert (=> b!5853442 m!6772398))

(assert (=> b!5853442 m!6771926))

(assert (=> b!5853442 m!6772398))

(declare-fun m!6772694 () Bool)

(assert (=> b!5853442 m!6772694))

(assert (=> b!5853442 m!6771848))

(assert (=> b!5853442 m!6772402))

(assert (=> b!5853442 m!6772694))

(assert (=> b!5853442 m!6772402))

(declare-fun m!6772696 () Bool)

(assert (=> b!5853442 m!6772696))

(assert (=> b!5853440 m!6771848))

(assert (=> b!5853440 m!6772398))

(assert (=> d!1838423 m!6771848))

(assert (=> d!1838423 m!6771896))

(assert (=> d!1838423 m!6771926))

(declare-fun m!6772698 () Bool)

(assert (=> d!1838423 m!6772698))

(assert (=> b!5852514 d!1838423))

(declare-fun bm!458321 () Bool)

(declare-fun call!458327 () Regex!15919)

(declare-fun call!458326 () Regex!15919)

(assert (=> bm!458321 (= call!458327 call!458326)))

(declare-fun b!5853451 () Bool)

(declare-fun e!3589436 () Regex!15919)

(declare-fun call!458329 () Regex!15919)

(assert (=> b!5853451 (= e!3589436 (Union!15919 (Concat!24764 call!458329 (regTwo!32350 r!7292)) EmptyLang!15919))))

(declare-fun b!5853452 () Bool)

(declare-fun call!458328 () Regex!15919)

(assert (=> b!5853452 (= e!3589436 (Union!15919 (Concat!24764 call!458328 (regTwo!32350 r!7292)) call!458329))))

(declare-fun b!5853453 () Bool)

(declare-fun c!1037817 () Bool)

(assert (=> b!5853453 (= c!1037817 (nullable!5919 (regOne!32350 r!7292)))))

(declare-fun e!3589434 () Regex!15919)

(assert (=> b!5853453 (= e!3589434 e!3589436)))

(declare-fun b!5853454 () Bool)

(declare-fun e!3589435 () Regex!15919)

(assert (=> b!5853454 (= e!3589435 (ite (= (head!12392 s!2326) (c!1037365 r!7292)) EmptyExpr!15919 EmptyLang!15919))))

(declare-fun d!1838425 () Bool)

(declare-fun lt!2304598 () Regex!15919)

(assert (=> d!1838425 (validRegex!7655 lt!2304598)))

(declare-fun e!3589437 () Regex!15919)

(assert (=> d!1838425 (= lt!2304598 e!3589437)))

(declare-fun c!1037819 () Bool)

(assert (=> d!1838425 (= c!1037819 (or ((_ is EmptyExpr!15919) r!7292) ((_ is EmptyLang!15919) r!7292)))))

(assert (=> d!1838425 (validRegex!7655 r!7292)))

(assert (=> d!1838425 (= (derivativeStep!4657 r!7292 (head!12392 s!2326)) lt!2304598)))

(declare-fun b!5853455 () Bool)

(assert (=> b!5853455 (= e!3589434 (Concat!24764 call!458327 r!7292))))

(declare-fun bm!458322 () Bool)

(declare-fun c!1037820 () Bool)

(assert (=> bm!458322 (= call!458328 (derivativeStep!4657 (ite c!1037820 (regOne!32351 r!7292) (regOne!32350 r!7292)) (head!12392 s!2326)))))

(declare-fun c!1037818 () Bool)

(declare-fun bm!458323 () Bool)

(assert (=> bm!458323 (= call!458326 (derivativeStep!4657 (ite c!1037820 (regTwo!32351 r!7292) (ite c!1037818 (reg!16248 r!7292) (ite c!1037817 (regTwo!32350 r!7292) (regOne!32350 r!7292)))) (head!12392 s!2326)))))

(declare-fun bm!458324 () Bool)

(assert (=> bm!458324 (= call!458329 call!458327)))

(declare-fun b!5853456 () Bool)

(declare-fun e!3589438 () Regex!15919)

(assert (=> b!5853456 (= e!3589438 (Union!15919 call!458328 call!458326))))

(declare-fun b!5853457 () Bool)

(assert (=> b!5853457 (= e!3589437 EmptyLang!15919)))

(declare-fun b!5853458 () Bool)

(assert (=> b!5853458 (= c!1037820 ((_ is Union!15919) r!7292))))

(assert (=> b!5853458 (= e!3589435 e!3589438)))

(declare-fun b!5853459 () Bool)

(assert (=> b!5853459 (= e!3589438 e!3589434)))

(assert (=> b!5853459 (= c!1037818 ((_ is Star!15919) r!7292))))

(declare-fun b!5853460 () Bool)

(assert (=> b!5853460 (= e!3589437 e!3589435)))

(declare-fun c!1037821 () Bool)

(assert (=> b!5853460 (= c!1037821 ((_ is ElementMatch!15919) r!7292))))

(assert (= (and d!1838425 c!1037819) b!5853457))

(assert (= (and d!1838425 (not c!1037819)) b!5853460))

(assert (= (and b!5853460 c!1037821) b!5853454))

(assert (= (and b!5853460 (not c!1037821)) b!5853458))

(assert (= (and b!5853458 c!1037820) b!5853456))

(assert (= (and b!5853458 (not c!1037820)) b!5853459))

(assert (= (and b!5853459 c!1037818) b!5853455))

(assert (= (and b!5853459 (not c!1037818)) b!5853453))

(assert (= (and b!5853453 c!1037817) b!5853452))

(assert (= (and b!5853453 (not c!1037817)) b!5853451))

(assert (= (or b!5853452 b!5853451) bm!458324))

(assert (= (or b!5853455 bm!458324) bm!458321))

(assert (= (or b!5853456 bm!458321) bm!458323))

(assert (= (or b!5853456 b!5853452) bm!458322))

(assert (=> b!5853453 m!6771808))

(declare-fun m!6772700 () Bool)

(assert (=> d!1838425 m!6772700))

(assert (=> d!1838425 m!6771540))

(assert (=> bm!458322 m!6771844))

(declare-fun m!6772702 () Bool)

(assert (=> bm!458322 m!6772702))

(assert (=> bm!458323 m!6771844))

(declare-fun m!6772704 () Bool)

(assert (=> bm!458323 m!6772704))

(assert (=> b!5852514 d!1838425))

(assert (=> b!5852514 d!1838271))

(assert (=> b!5852514 d!1838273))

(declare-fun d!1838427 () Bool)

(declare-fun res!2464079 () Bool)

(declare-fun e!3589439 () Bool)

(assert (=> d!1838427 (=> res!2464079 e!3589439)))

(assert (=> d!1838427 (= res!2464079 ((_ is Nil!63932) lt!2304554))))

(assert (=> d!1838427 (= (forall!15006 lt!2304554 lambda!319991) e!3589439)))

(declare-fun b!5853461 () Bool)

(declare-fun e!3589440 () Bool)

(assert (=> b!5853461 (= e!3589439 e!3589440)))

(declare-fun res!2464080 () Bool)

(assert (=> b!5853461 (=> (not res!2464080) (not e!3589440))))

(assert (=> b!5853461 (= res!2464080 (dynLambda!24993 lambda!319991 (h!70380 lt!2304554)))))

(declare-fun b!5853462 () Bool)

(assert (=> b!5853462 (= e!3589440 (forall!15006 (t!377419 lt!2304554) lambda!319991))))

(assert (= (and d!1838427 (not res!2464079)) b!5853461))

(assert (= (and b!5853461 res!2464080) b!5853462))

(declare-fun b_lambda!220331 () Bool)

(assert (=> (not b_lambda!220331) (not b!5853461)))

(declare-fun m!6772706 () Bool)

(assert (=> b!5853461 m!6772706))

(declare-fun m!6772708 () Bool)

(assert (=> b!5853462 m!6772708))

(assert (=> d!1837997 d!1838427))

(declare-fun bm!458325 () Bool)

(declare-fun call!458334 () List!64056)

(declare-fun call!458331 () List!64056)

(assert (=> bm!458325 (= call!458334 call!458331)))

(declare-fun c!1037826 () Bool)

(declare-fun call!458332 () (InoxSet Context!10606))

(declare-fun c!1037824 () Bool)

(declare-fun c!1037825 () Bool)

(declare-fun bm!458326 () Bool)

(assert (=> bm!458326 (= call!458332 (derivationStepZipperDown!1185 (ite c!1037826 (regTwo!32351 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))) (ite c!1037824 (regTwo!32350 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))) (ite c!1037825 (regOne!32350 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))) (reg!16248 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292)))))) (ite (or c!1037826 c!1037824) (ite c!1037492 lt!2304502 (Context!10607 call!458094)) (Context!10607 call!458334)) (h!70382 s!2326)))))

(declare-fun bm!458327 () Bool)

(declare-fun call!458335 () (InoxSet Context!10606))

(declare-fun call!458330 () (InoxSet Context!10606))

(assert (=> bm!458327 (= call!458335 call!458330)))

(declare-fun b!5853463 () Bool)

(declare-fun e!3589441 () (InoxSet Context!10606))

(assert (=> b!5853463 (= e!3589441 (store ((as const (Array Context!10606 Bool)) false) (ite c!1037492 lt!2304502 (Context!10607 call!458094)) true))))

(declare-fun d!1838429 () Bool)

(declare-fun c!1037822 () Bool)

(assert (=> d!1838429 (= c!1037822 (and ((_ is ElementMatch!15919) (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))) (= (c!1037365 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))) (h!70382 s!2326))))))

(assert (=> d!1838429 (= (derivationStepZipperDown!1185 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292)) (ite c!1037492 lt!2304502 (Context!10607 call!458094)) (h!70382 s!2326)) e!3589441)))

(declare-fun bm!458328 () Bool)

(assert (=> bm!458328 (= call!458331 ($colon$colon!1824 (exprs!5803 (ite c!1037492 lt!2304502 (Context!10607 call!458094))) (ite (or c!1037824 c!1037825) (regTwo!32350 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))) (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292)))))))

(declare-fun b!5853464 () Bool)

(declare-fun e!3589443 () Bool)

(assert (=> b!5853464 (= e!3589443 (nullable!5919 (regOne!32350 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292)))))))

(declare-fun b!5853465 () Bool)

(declare-fun e!3589445 () (InoxSet Context!10606))

(assert (=> b!5853465 (= e!3589445 call!458335)))

(declare-fun b!5853466 () Bool)

(declare-fun e!3589446 () (InoxSet Context!10606))

(assert (=> b!5853466 (= e!3589441 e!3589446)))

(assert (=> b!5853466 (= c!1037826 ((_ is Union!15919) (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))))))

(declare-fun b!5853467 () Bool)

(declare-fun e!3589444 () (InoxSet Context!10606))

(assert (=> b!5853467 (= e!3589444 e!3589445)))

(assert (=> b!5853467 (= c!1037825 ((_ is Concat!24764) (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))))))

(declare-fun b!5853468 () Bool)

(declare-fun call!458333 () (InoxSet Context!10606))

(assert (=> b!5853468 (= e!3589446 ((_ map or) call!458333 call!458332))))

(declare-fun b!5853469 () Bool)

(declare-fun e!3589442 () (InoxSet Context!10606))

(assert (=> b!5853469 (= e!3589442 call!458335)))

(declare-fun bm!458329 () Bool)

(assert (=> bm!458329 (= call!458330 call!458332)))

(declare-fun b!5853470 () Bool)

(assert (=> b!5853470 (= e!3589444 ((_ map or) call!458333 call!458330))))

(declare-fun b!5853471 () Bool)

(assert (=> b!5853471 (= e!3589442 ((as const (Array Context!10606 Bool)) false))))

(declare-fun bm!458330 () Bool)

(assert (=> bm!458330 (= call!458333 (derivationStepZipperDown!1185 (ite c!1037826 (regOne!32351 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))) (regOne!32350 (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292)))) (ite c!1037826 (ite c!1037492 lt!2304502 (Context!10607 call!458094)) (Context!10607 call!458331)) (h!70382 s!2326)))))

(declare-fun b!5853472 () Bool)

(declare-fun c!1037823 () Bool)

(assert (=> b!5853472 (= c!1037823 ((_ is Star!15919) (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))))))

(assert (=> b!5853472 (= e!3589445 e!3589442)))

(declare-fun b!5853473 () Bool)

(assert (=> b!5853473 (= c!1037824 e!3589443)))

(declare-fun res!2464081 () Bool)

(assert (=> b!5853473 (=> (not res!2464081) (not e!3589443))))

(assert (=> b!5853473 (= res!2464081 ((_ is Concat!24764) (ite c!1037492 (regOne!32351 r!7292) (regOne!32350 r!7292))))))

(assert (=> b!5853473 (= e!3589446 e!3589444)))

(assert (= (and d!1838429 c!1037822) b!5853463))

(assert (= (and d!1838429 (not c!1037822)) b!5853466))

(assert (= (and b!5853466 c!1037826) b!5853468))

(assert (= (and b!5853466 (not c!1037826)) b!5853473))

(assert (= (and b!5853473 res!2464081) b!5853464))

(assert (= (and b!5853473 c!1037824) b!5853470))

(assert (= (and b!5853473 (not c!1037824)) b!5853467))

(assert (= (and b!5853467 c!1037825) b!5853465))

(assert (= (and b!5853467 (not c!1037825)) b!5853472))

(assert (= (and b!5853472 c!1037823) b!5853469))

(assert (= (and b!5853472 (not c!1037823)) b!5853471))

(assert (= (or b!5853465 b!5853469) bm!458325))

(assert (= (or b!5853465 b!5853469) bm!458327))

(assert (= (or b!5853470 bm!458325) bm!458328))

(assert (= (or b!5853470 bm!458327) bm!458329))

(assert (= (or b!5853468 bm!458329) bm!458326))

(assert (= (or b!5853468 b!5853470) bm!458330))

(declare-fun m!6772710 () Bool)

(assert (=> b!5853464 m!6772710))

(declare-fun m!6772712 () Bool)

(assert (=> b!5853463 m!6772712))

(declare-fun m!6772714 () Bool)

(assert (=> bm!458328 m!6772714))

(declare-fun m!6772716 () Bool)

(assert (=> bm!458326 m!6772716))

(declare-fun m!6772718 () Bool)

(assert (=> bm!458330 m!6772718))

(assert (=> bm!458093 d!1838429))

(declare-fun d!1838431 () Bool)

(declare-fun c!1037827 () Bool)

(assert (=> d!1838431 (= c!1037827 (isEmpty!35793 (tail!11477 (t!377421 s!2326))))))

(declare-fun e!3589447 () Bool)

(assert (=> d!1838431 (= (matchZipper!1985 (derivationStepZipper!1918 lt!2304504 (head!12392 (t!377421 s!2326))) (tail!11477 (t!377421 s!2326))) e!3589447)))

(declare-fun b!5853474 () Bool)

(assert (=> b!5853474 (= e!3589447 (nullableZipper!1758 (derivationStepZipper!1918 lt!2304504 (head!12392 (t!377421 s!2326)))))))

(declare-fun b!5853475 () Bool)

(assert (=> b!5853475 (= e!3589447 (matchZipper!1985 (derivationStepZipper!1918 (derivationStepZipper!1918 lt!2304504 (head!12392 (t!377421 s!2326))) (head!12392 (tail!11477 (t!377421 s!2326)))) (tail!11477 (tail!11477 (t!377421 s!2326)))))))

(assert (= (and d!1838431 c!1037827) b!5853474))

(assert (= (and d!1838431 (not c!1037827)) b!5853475))

(assert (=> d!1838431 m!6771778))

(assert (=> d!1838431 m!6772420))

(assert (=> b!5853474 m!6771958))

(declare-fun m!6772720 () Bool)

(assert (=> b!5853474 m!6772720))

(assert (=> b!5853475 m!6771778))

(assert (=> b!5853475 m!6772424))

(assert (=> b!5853475 m!6771958))

(assert (=> b!5853475 m!6772424))

(declare-fun m!6772722 () Bool)

(assert (=> b!5853475 m!6772722))

(assert (=> b!5853475 m!6771778))

(assert (=> b!5853475 m!6772428))

(assert (=> b!5853475 m!6772722))

(assert (=> b!5853475 m!6772428))

(declare-fun m!6772724 () Bool)

(assert (=> b!5853475 m!6772724))

(assert (=> b!5852534 d!1838431))

(declare-fun bs!1379246 () Bool)

(declare-fun d!1838433 () Bool)

(assert (= bs!1379246 (and d!1838433 d!1838279)))

(declare-fun lambda!320054 () Int)

(assert (=> bs!1379246 (= lambda!320054 lambda!320043)))

(declare-fun bs!1379247 () Bool)

(assert (= bs!1379247 (and d!1838433 d!1838021)))

(assert (=> bs!1379247 (= (= (head!12392 (t!377421 s!2326)) (h!70382 s!2326)) (= lambda!320054 lambda!320008))))

(declare-fun bs!1379248 () Bool)

(assert (= bs!1379248 (and d!1838433 b!5851884)))

(assert (=> bs!1379248 (= (= (head!12392 (t!377421 s!2326)) (h!70382 s!2326)) (= lambda!320054 lambda!319958))))

(declare-fun bs!1379249 () Bool)

(assert (= bs!1379249 (and d!1838433 d!1838349)))

(assert (=> bs!1379249 (= lambda!320054 lambda!320047)))

(declare-fun bs!1379250 () Bool)

(assert (= bs!1379250 (and d!1838433 d!1838329)))

(assert (=> bs!1379250 (= (= (head!12392 (t!377421 s!2326)) (head!12392 s!2326)) (= lambda!320054 lambda!320046))))

(assert (=> d!1838433 true))

(assert (=> d!1838433 (= (derivationStepZipper!1918 lt!2304504 (head!12392 (t!377421 s!2326))) (flatMap!1450 lt!2304504 lambda!320054))))

(declare-fun bs!1379251 () Bool)

(assert (= bs!1379251 d!1838433))

(declare-fun m!6772726 () Bool)

(assert (=> bs!1379251 m!6772726))

(assert (=> b!5852534 d!1838433))

(assert (=> b!5852534 d!1838281))

(assert (=> b!5852534 d!1838283))

(assert (=> b!5852462 d!1838271))

(declare-fun bs!1379252 () Bool)

(declare-fun b!5853479 () Bool)

(assert (= bs!1379252 (and b!5853479 b!5852501)))

(declare-fun lambda!320055 () Int)

(assert (=> bs!1379252 (= (and (= (reg!16248 (regTwo!32351 (regTwo!32351 r!7292))) (reg!16248 r!7292)) (= (regTwo!32351 (regTwo!32351 r!7292)) r!7292)) (= lambda!320055 lambda!320004))))

(declare-fun bs!1379253 () Bool)

(assert (= bs!1379253 (and b!5853479 b!5853026)))

(assert (=> bs!1379253 (not (= lambda!320055 lambda!320037))))

(declare-fun bs!1379254 () Bool)

(assert (= bs!1379254 (and b!5853479 b!5853141)))

(assert (=> bs!1379254 (= (and (= (reg!16248 (regTwo!32351 (regTwo!32351 r!7292))) (reg!16248 (regOne!32351 (regOne!32351 r!7292)))) (= (regTwo!32351 (regTwo!32351 r!7292)) (regOne!32351 (regOne!32351 r!7292)))) (= lambda!320055 lambda!320038))))

(declare-fun bs!1379255 () Bool)

(assert (= bs!1379255 (and b!5853479 b!5852480)))

(assert (=> bs!1379255 (not (= lambda!320055 lambda!319999))))

(declare-fun bs!1379256 () Bool)

(assert (= bs!1379256 (and b!5853479 b!5853022)))

(assert (=> bs!1379256 (= (and (= (reg!16248 (regTwo!32351 (regTwo!32351 r!7292))) (reg!16248 (regOne!32351 (regTwo!32351 r!7292)))) (= (regTwo!32351 (regTwo!32351 r!7292)) (regOne!32351 (regTwo!32351 r!7292)))) (= lambda!320055 lambda!320035))))

(declare-fun bs!1379257 () Bool)

(assert (= bs!1379257 (and b!5853479 b!5852419)))

(assert (=> bs!1379257 (= (and (= (reg!16248 (regTwo!32351 (regTwo!32351 r!7292))) (reg!16248 (regTwo!32351 r!7292))) (= (regTwo!32351 (regTwo!32351 r!7292)) (regTwo!32351 r!7292))) (= lambda!320055 lambda!319996))))

(declare-fun bs!1379258 () Bool)

(assert (= bs!1379258 (and b!5853479 b!5852423)))

(assert (=> bs!1379258 (not (= lambda!320055 lambda!319997))))

(declare-fun bs!1379259 () Bool)

(assert (= bs!1379259 (and b!5853479 b!5852476)))

(assert (=> bs!1379259 (= (and (= (reg!16248 (regTwo!32351 (regTwo!32351 r!7292))) (reg!16248 (regOne!32351 r!7292))) (= (regTwo!32351 (regTwo!32351 r!7292)) (regOne!32351 r!7292))) (= lambda!320055 lambda!319998))))

(declare-fun bs!1379260 () Bool)

(assert (= bs!1379260 (and b!5853479 b!5852505)))

(assert (=> bs!1379260 (not (= lambda!320055 lambda!320005))))

(declare-fun bs!1379261 () Bool)

(assert (= bs!1379261 (and b!5853479 b!5853145)))

(assert (=> bs!1379261 (not (= lambda!320055 lambda!320039))))

(assert (=> b!5853479 true))

(assert (=> b!5853479 true))

(declare-fun bs!1379262 () Bool)

(declare-fun b!5853483 () Bool)

(assert (= bs!1379262 (and b!5853483 b!5852501)))

(declare-fun lambda!320056 () Int)

(assert (=> bs!1379262 (not (= lambda!320056 lambda!320004))))

(declare-fun bs!1379263 () Bool)

(assert (= bs!1379263 (and b!5853483 b!5853026)))

(assert (=> bs!1379263 (= (and (= (regOne!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regOne!32350 (regOne!32351 (regTwo!32351 r!7292)))) (= (regTwo!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regTwo!32350 (regOne!32351 (regTwo!32351 r!7292))))) (= lambda!320056 lambda!320037))))

(declare-fun bs!1379264 () Bool)

(assert (= bs!1379264 (and b!5853483 b!5853141)))

(assert (=> bs!1379264 (not (= lambda!320056 lambda!320038))))

(declare-fun bs!1379265 () Bool)

(assert (= bs!1379265 (and b!5853483 b!5852480)))

(assert (=> bs!1379265 (= (and (= (regOne!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regOne!32350 (regOne!32351 r!7292))) (= (regTwo!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regTwo!32350 (regOne!32351 r!7292)))) (= lambda!320056 lambda!319999))))

(declare-fun bs!1379266 () Bool)

(assert (= bs!1379266 (and b!5853483 b!5853022)))

(assert (=> bs!1379266 (not (= lambda!320056 lambda!320035))))

(declare-fun bs!1379267 () Bool)

(assert (= bs!1379267 (and b!5853483 b!5852419)))

(assert (=> bs!1379267 (not (= lambda!320056 lambda!319996))))

(declare-fun bs!1379268 () Bool)

(assert (= bs!1379268 (and b!5853483 b!5852423)))

(assert (=> bs!1379268 (= (and (= (regOne!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regOne!32350 (regTwo!32351 r!7292))) (= (regTwo!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regTwo!32350 (regTwo!32351 r!7292)))) (= lambda!320056 lambda!319997))))

(declare-fun bs!1379269 () Bool)

(assert (= bs!1379269 (and b!5853483 b!5852476)))

(assert (=> bs!1379269 (not (= lambda!320056 lambda!319998))))

(declare-fun bs!1379270 () Bool)

(assert (= bs!1379270 (and b!5853483 b!5852505)))

(assert (=> bs!1379270 (= (and (= (regOne!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regOne!32350 r!7292)) (= (regTwo!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regTwo!32350 r!7292))) (= lambda!320056 lambda!320005))))

(declare-fun bs!1379271 () Bool)

(assert (= bs!1379271 (and b!5853483 b!5853479)))

(assert (=> bs!1379271 (not (= lambda!320056 lambda!320055))))

(declare-fun bs!1379272 () Bool)

(assert (= bs!1379272 (and b!5853483 b!5853145)))

(assert (=> bs!1379272 (= (and (= (regOne!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regOne!32350 (regOne!32351 (regOne!32351 r!7292)))) (= (regTwo!32350 (regTwo!32351 (regTwo!32351 r!7292))) (regTwo!32350 (regOne!32351 (regOne!32351 r!7292))))) (= lambda!320056 lambda!320039))))

(assert (=> b!5853483 true))

(assert (=> b!5853483 true))

(declare-fun b!5853476 () Bool)

(declare-fun e!3589448 () Bool)

(declare-fun e!3589449 () Bool)

(assert (=> b!5853476 (= e!3589448 e!3589449)))

(declare-fun res!2464083 () Bool)

(assert (=> b!5853476 (= res!2464083 (not ((_ is EmptyLang!15919) (regTwo!32351 (regTwo!32351 r!7292)))))))

(assert (=> b!5853476 (=> (not res!2464083) (not e!3589449))))

(declare-fun b!5853477 () Bool)

(declare-fun e!3589451 () Bool)

(assert (=> b!5853477 (= e!3589451 (matchRSpec!3020 (regTwo!32351 (regTwo!32351 (regTwo!32351 r!7292))) s!2326))))

(declare-fun b!5853478 () Bool)

(declare-fun c!1037830 () Bool)

(assert (=> b!5853478 (= c!1037830 ((_ is Union!15919) (regTwo!32351 (regTwo!32351 r!7292))))))

(declare-fun e!3589454 () Bool)

(declare-fun e!3589453 () Bool)

(assert (=> b!5853478 (= e!3589454 e!3589453)))

(declare-fun e!3589450 () Bool)

(declare-fun call!458336 () Bool)

(assert (=> b!5853479 (= e!3589450 call!458336)))

(declare-fun b!5853480 () Bool)

(assert (=> b!5853480 (= e!3589453 e!3589451)))

(declare-fun res!2464082 () Bool)

(assert (=> b!5853480 (= res!2464082 (matchRSpec!3020 (regOne!32351 (regTwo!32351 (regTwo!32351 r!7292))) s!2326))))

(assert (=> b!5853480 (=> res!2464082 e!3589451)))

(declare-fun b!5853481 () Bool)

(assert (=> b!5853481 (= e!3589454 (= s!2326 (Cons!63934 (c!1037365 (regTwo!32351 (regTwo!32351 r!7292))) Nil!63934)))))

(declare-fun bm!458331 () Bool)

(declare-fun call!458337 () Bool)

(assert (=> bm!458331 (= call!458337 (isEmpty!35793 s!2326))))

(declare-fun b!5853482 () Bool)

(declare-fun c!1037828 () Bool)

(assert (=> b!5853482 (= c!1037828 ((_ is ElementMatch!15919) (regTwo!32351 (regTwo!32351 r!7292))))))

(assert (=> b!5853482 (= e!3589449 e!3589454)))

(declare-fun d!1838435 () Bool)

(declare-fun c!1037829 () Bool)

(assert (=> d!1838435 (= c!1037829 ((_ is EmptyExpr!15919) (regTwo!32351 (regTwo!32351 r!7292))))))

(assert (=> d!1838435 (= (matchRSpec!3020 (regTwo!32351 (regTwo!32351 r!7292)) s!2326) e!3589448)))

(declare-fun e!3589452 () Bool)

(assert (=> b!5853483 (= e!3589452 call!458336)))

(declare-fun b!5853484 () Bool)

(assert (=> b!5853484 (= e!3589453 e!3589452)))

(declare-fun c!1037831 () Bool)

(assert (=> b!5853484 (= c!1037831 ((_ is Star!15919) (regTwo!32351 (regTwo!32351 r!7292))))))

(declare-fun b!5853485 () Bool)

(assert (=> b!5853485 (= e!3589448 call!458337)))

(declare-fun bm!458332 () Bool)

(assert (=> bm!458332 (= call!458336 (Exists!2991 (ite c!1037831 lambda!320055 lambda!320056)))))

(declare-fun b!5853486 () Bool)

(declare-fun res!2464084 () Bool)

(assert (=> b!5853486 (=> res!2464084 e!3589450)))

(assert (=> b!5853486 (= res!2464084 call!458337)))

(assert (=> b!5853486 (= e!3589452 e!3589450)))

(assert (= (and d!1838435 c!1037829) b!5853485))

(assert (= (and d!1838435 (not c!1037829)) b!5853476))

(assert (= (and b!5853476 res!2464083) b!5853482))

(assert (= (and b!5853482 c!1037828) b!5853481))

(assert (= (and b!5853482 (not c!1037828)) b!5853478))

(assert (= (and b!5853478 c!1037830) b!5853480))

(assert (= (and b!5853478 (not c!1037830)) b!5853484))

(assert (= (and b!5853480 (not res!2464082)) b!5853477))

(assert (= (and b!5853484 c!1037831) b!5853486))

(assert (= (and b!5853484 (not c!1037831)) b!5853483))

(assert (= (and b!5853486 (not res!2464084)) b!5853479))

(assert (= (or b!5853479 b!5853483) bm!458332))

(assert (= (or b!5853485 b!5853486) bm!458331))

(declare-fun m!6772728 () Bool)

(assert (=> b!5853477 m!6772728))

(declare-fun m!6772730 () Bool)

(assert (=> b!5853480 m!6772730))

(assert (=> bm!458331 m!6771840))

(declare-fun m!6772732 () Bool)

(assert (=> bm!458332 m!6772732))

(assert (=> b!5852417 d!1838435))

(declare-fun d!1838437 () Bool)

(declare-fun res!2464085 () Bool)

(declare-fun e!3589455 () Bool)

(assert (=> d!1838437 (=> res!2464085 e!3589455)))

(assert (=> d!1838437 (= res!2464085 ((_ is Nil!63932) (exprs!5803 (Context!10607 (Cons!63932 (regTwo!32351 r!7292) Nil!63932)))))))

(assert (=> d!1838437 (= (forall!15006 (exprs!5803 (Context!10607 (Cons!63932 (regTwo!32351 r!7292) Nil!63932))) lambda!320003) e!3589455)))

(declare-fun b!5853487 () Bool)

(declare-fun e!3589456 () Bool)

(assert (=> b!5853487 (= e!3589455 e!3589456)))

(declare-fun res!2464086 () Bool)

(assert (=> b!5853487 (=> (not res!2464086) (not e!3589456))))

(assert (=> b!5853487 (= res!2464086 (dynLambda!24993 lambda!320003 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 (regTwo!32351 r!7292) Nil!63932))))))))

(declare-fun b!5853488 () Bool)

(assert (=> b!5853488 (= e!3589456 (forall!15006 (t!377419 (exprs!5803 (Context!10607 (Cons!63932 (regTwo!32351 r!7292) Nil!63932)))) lambda!320003))))

(assert (= (and d!1838437 (not res!2464085)) b!5853487))

(assert (= (and b!5853487 res!2464086) b!5853488))

(declare-fun b_lambda!220333 () Bool)

(assert (=> (not b_lambda!220333) (not b!5853487)))

(declare-fun m!6772734 () Bool)

(assert (=> b!5853487 m!6772734))

(declare-fun m!6772736 () Bool)

(assert (=> b!5853488 m!6772736))

(assert (=> d!1838013 d!1838437))

(declare-fun b!5853489 () Bool)

(declare-fun res!2464089 () Bool)

(declare-fun e!3589458 () Bool)

(assert (=> b!5853489 (=> (not res!2464089) (not e!3589458))))

(declare-fun call!458339 () Bool)

(assert (=> b!5853489 (= res!2464089 call!458339)))

(declare-fun e!3589462 () Bool)

(assert (=> b!5853489 (= e!3589462 e!3589458)))

(declare-fun b!5853490 () Bool)

(declare-fun res!2464088 () Bool)

(declare-fun e!3589461 () Bool)

(assert (=> b!5853490 (=> res!2464088 e!3589461)))

(assert (=> b!5853490 (= res!2464088 (not ((_ is Concat!24764) lt!2304548)))))

(assert (=> b!5853490 (= e!3589462 e!3589461)))

(declare-fun bm!458333 () Bool)

(declare-fun call!458340 () Bool)

(assert (=> bm!458333 (= call!458339 call!458340)))

(declare-fun b!5853491 () Bool)

(declare-fun e!3589457 () Bool)

(declare-fun e!3589460 () Bool)

(assert (=> b!5853491 (= e!3589457 e!3589460)))

(declare-fun c!1037833 () Bool)

(assert (=> b!5853491 (= c!1037833 ((_ is Star!15919) lt!2304548))))

(declare-fun b!5853492 () Bool)

(assert (=> b!5853492 (= e!3589460 e!3589462)))

(declare-fun c!1037832 () Bool)

(assert (=> b!5853492 (= c!1037832 ((_ is Union!15919) lt!2304548))))

(declare-fun d!1838439 () Bool)

(declare-fun res!2464087 () Bool)

(assert (=> d!1838439 (=> res!2464087 e!3589457)))

(assert (=> d!1838439 (= res!2464087 ((_ is ElementMatch!15919) lt!2304548))))

(assert (=> d!1838439 (= (validRegex!7655 lt!2304548) e!3589457)))

(declare-fun bm!458334 () Bool)

(declare-fun call!458338 () Bool)

(assert (=> bm!458334 (= call!458338 (validRegex!7655 (ite c!1037832 (regTwo!32351 lt!2304548) (regTwo!32350 lt!2304548))))))

(declare-fun b!5853493 () Bool)

(declare-fun e!3589463 () Bool)

(assert (=> b!5853493 (= e!3589460 e!3589463)))

(declare-fun res!2464090 () Bool)

(assert (=> b!5853493 (= res!2464090 (not (nullable!5919 (reg!16248 lt!2304548))))))

(assert (=> b!5853493 (=> (not res!2464090) (not e!3589463))))

(declare-fun b!5853494 () Bool)

(assert (=> b!5853494 (= e!3589458 call!458338)))

(declare-fun bm!458335 () Bool)

(assert (=> bm!458335 (= call!458340 (validRegex!7655 (ite c!1037833 (reg!16248 lt!2304548) (ite c!1037832 (regOne!32351 lt!2304548) (regOne!32350 lt!2304548)))))))

(declare-fun b!5853495 () Bool)

(declare-fun e!3589459 () Bool)

(assert (=> b!5853495 (= e!3589461 e!3589459)))

(declare-fun res!2464091 () Bool)

(assert (=> b!5853495 (=> (not res!2464091) (not e!3589459))))

(assert (=> b!5853495 (= res!2464091 call!458339)))

(declare-fun b!5853496 () Bool)

(assert (=> b!5853496 (= e!3589463 call!458340)))

(declare-fun b!5853497 () Bool)

(assert (=> b!5853497 (= e!3589459 call!458338)))

(assert (= (and d!1838439 (not res!2464087)) b!5853491))

(assert (= (and b!5853491 c!1037833) b!5853493))

(assert (= (and b!5853491 (not c!1037833)) b!5853492))

(assert (= (and b!5853493 res!2464090) b!5853496))

(assert (= (and b!5853492 c!1037832) b!5853489))

(assert (= (and b!5853492 (not c!1037832)) b!5853490))

(assert (= (and b!5853489 res!2464089) b!5853494))

(assert (= (and b!5853490 (not res!2464088)) b!5853495))

(assert (= (and b!5853495 res!2464091) b!5853497))

(assert (= (or b!5853494 b!5853497) bm!458334))

(assert (= (or b!5853489 b!5853495) bm!458333))

(assert (= (or b!5853496 bm!458333) bm!458335))

(declare-fun m!6772738 () Bool)

(assert (=> bm!458334 m!6772738))

(declare-fun m!6772740 () Bool)

(assert (=> b!5853493 m!6772740))

(declare-fun m!6772742 () Bool)

(assert (=> bm!458335 m!6772742))

(assert (=> d!1837993 d!1838439))

(assert (=> d!1837993 d!1837995))

(assert (=> d!1837993 d!1837997))

(declare-fun bs!1379273 () Bool)

(declare-fun b!5853501 () Bool)

(assert (= bs!1379273 (and b!5853501 b!5852501)))

(declare-fun lambda!320057 () Int)

(assert (=> bs!1379273 (= (and (= (reg!16248 (regTwo!32351 (regOne!32351 r!7292))) (reg!16248 r!7292)) (= (regTwo!32351 (regOne!32351 r!7292)) r!7292)) (= lambda!320057 lambda!320004))))

(declare-fun bs!1379274 () Bool)

(assert (= bs!1379274 (and b!5853501 b!5853026)))

(assert (=> bs!1379274 (not (= lambda!320057 lambda!320037))))

(declare-fun bs!1379275 () Bool)

(assert (= bs!1379275 (and b!5853501 b!5853141)))

(assert (=> bs!1379275 (= (and (= (reg!16248 (regTwo!32351 (regOne!32351 r!7292))) (reg!16248 (regOne!32351 (regOne!32351 r!7292)))) (= (regTwo!32351 (regOne!32351 r!7292)) (regOne!32351 (regOne!32351 r!7292)))) (= lambda!320057 lambda!320038))))

(declare-fun bs!1379276 () Bool)

(assert (= bs!1379276 (and b!5853501 b!5852480)))

(assert (=> bs!1379276 (not (= lambda!320057 lambda!319999))))

(declare-fun bs!1379277 () Bool)

(assert (= bs!1379277 (and b!5853501 b!5853483)))

(assert (=> bs!1379277 (not (= lambda!320057 lambda!320056))))

(declare-fun bs!1379278 () Bool)

(assert (= bs!1379278 (and b!5853501 b!5853022)))

(assert (=> bs!1379278 (= (and (= (reg!16248 (regTwo!32351 (regOne!32351 r!7292))) (reg!16248 (regOne!32351 (regTwo!32351 r!7292)))) (= (regTwo!32351 (regOne!32351 r!7292)) (regOne!32351 (regTwo!32351 r!7292)))) (= lambda!320057 lambda!320035))))

(declare-fun bs!1379279 () Bool)

(assert (= bs!1379279 (and b!5853501 b!5852419)))

(assert (=> bs!1379279 (= (and (= (reg!16248 (regTwo!32351 (regOne!32351 r!7292))) (reg!16248 (regTwo!32351 r!7292))) (= (regTwo!32351 (regOne!32351 r!7292)) (regTwo!32351 r!7292))) (= lambda!320057 lambda!319996))))

(declare-fun bs!1379280 () Bool)

(assert (= bs!1379280 (and b!5853501 b!5852423)))

(assert (=> bs!1379280 (not (= lambda!320057 lambda!319997))))

(declare-fun bs!1379281 () Bool)

(assert (= bs!1379281 (and b!5853501 b!5852476)))

(assert (=> bs!1379281 (= (and (= (reg!16248 (regTwo!32351 (regOne!32351 r!7292))) (reg!16248 (regOne!32351 r!7292))) (= (regTwo!32351 (regOne!32351 r!7292)) (regOne!32351 r!7292))) (= lambda!320057 lambda!319998))))

(declare-fun bs!1379282 () Bool)

(assert (= bs!1379282 (and b!5853501 b!5852505)))

(assert (=> bs!1379282 (not (= lambda!320057 lambda!320005))))

(declare-fun bs!1379283 () Bool)

(assert (= bs!1379283 (and b!5853501 b!5853479)))

(assert (=> bs!1379283 (= (and (= (reg!16248 (regTwo!32351 (regOne!32351 r!7292))) (reg!16248 (regTwo!32351 (regTwo!32351 r!7292)))) (= (regTwo!32351 (regOne!32351 r!7292)) (regTwo!32351 (regTwo!32351 r!7292)))) (= lambda!320057 lambda!320055))))

(declare-fun bs!1379284 () Bool)

(assert (= bs!1379284 (and b!5853501 b!5853145)))

(assert (=> bs!1379284 (not (= lambda!320057 lambda!320039))))

(assert (=> b!5853501 true))

(assert (=> b!5853501 true))

(declare-fun bs!1379285 () Bool)

(declare-fun b!5853505 () Bool)

(assert (= bs!1379285 (and b!5853505 b!5852501)))

(declare-fun lambda!320058 () Int)

(assert (=> bs!1379285 (not (= lambda!320058 lambda!320004))))

(declare-fun bs!1379286 () Bool)

(assert (= bs!1379286 (and b!5853505 b!5853026)))

(assert (=> bs!1379286 (= (and (= (regOne!32350 (regTwo!32351 (regOne!32351 r!7292))) (regOne!32350 (regOne!32351 (regTwo!32351 r!7292)))) (= (regTwo!32350 (regTwo!32351 (regOne!32351 r!7292))) (regTwo!32350 (regOne!32351 (regTwo!32351 r!7292))))) (= lambda!320058 lambda!320037))))

(declare-fun bs!1379287 () Bool)

(assert (= bs!1379287 (and b!5853505 b!5853141)))

(assert (=> bs!1379287 (not (= lambda!320058 lambda!320038))))

(declare-fun bs!1379288 () Bool)

(assert (= bs!1379288 (and b!5853505 b!5852480)))

(assert (=> bs!1379288 (= (and (= (regOne!32350 (regTwo!32351 (regOne!32351 r!7292))) (regOne!32350 (regOne!32351 r!7292))) (= (regTwo!32350 (regTwo!32351 (regOne!32351 r!7292))) (regTwo!32350 (regOne!32351 r!7292)))) (= lambda!320058 lambda!319999))))

(declare-fun bs!1379289 () Bool)

(assert (= bs!1379289 (and b!5853505 b!5853483)))

(assert (=> bs!1379289 (= (and (= (regOne!32350 (regTwo!32351 (regOne!32351 r!7292))) (regOne!32350 (regTwo!32351 (regTwo!32351 r!7292)))) (= (regTwo!32350 (regTwo!32351 (regOne!32351 r!7292))) (regTwo!32350 (regTwo!32351 (regTwo!32351 r!7292))))) (= lambda!320058 lambda!320056))))

(declare-fun bs!1379290 () Bool)

(assert (= bs!1379290 (and b!5853505 b!5853022)))

(assert (=> bs!1379290 (not (= lambda!320058 lambda!320035))))

(declare-fun bs!1379291 () Bool)

(assert (= bs!1379291 (and b!5853505 b!5852419)))

(assert (=> bs!1379291 (not (= lambda!320058 lambda!319996))))

(declare-fun bs!1379292 () Bool)

(assert (= bs!1379292 (and b!5853505 b!5852423)))

(assert (=> bs!1379292 (= (and (= (regOne!32350 (regTwo!32351 (regOne!32351 r!7292))) (regOne!32350 (regTwo!32351 r!7292))) (= (regTwo!32350 (regTwo!32351 (regOne!32351 r!7292))) (regTwo!32350 (regTwo!32351 r!7292)))) (= lambda!320058 lambda!319997))))

(declare-fun bs!1379293 () Bool)

(assert (= bs!1379293 (and b!5853505 b!5852476)))

(assert (=> bs!1379293 (not (= lambda!320058 lambda!319998))))

(declare-fun bs!1379294 () Bool)

(assert (= bs!1379294 (and b!5853505 b!5852505)))

(assert (=> bs!1379294 (= (and (= (regOne!32350 (regTwo!32351 (regOne!32351 r!7292))) (regOne!32350 r!7292)) (= (regTwo!32350 (regTwo!32351 (regOne!32351 r!7292))) (regTwo!32350 r!7292))) (= lambda!320058 lambda!320005))))

(declare-fun bs!1379295 () Bool)

(assert (= bs!1379295 (and b!5853505 b!5853501)))

(assert (=> bs!1379295 (not (= lambda!320058 lambda!320057))))

(declare-fun bs!1379296 () Bool)

(assert (= bs!1379296 (and b!5853505 b!5853479)))

(assert (=> bs!1379296 (not (= lambda!320058 lambda!320055))))

(declare-fun bs!1379297 () Bool)

(assert (= bs!1379297 (and b!5853505 b!5853145)))

(assert (=> bs!1379297 (= (and (= (regOne!32350 (regTwo!32351 (regOne!32351 r!7292))) (regOne!32350 (regOne!32351 (regOne!32351 r!7292)))) (= (regTwo!32350 (regTwo!32351 (regOne!32351 r!7292))) (regTwo!32350 (regOne!32351 (regOne!32351 r!7292))))) (= lambda!320058 lambda!320039))))

(assert (=> b!5853505 true))

(assert (=> b!5853505 true))

(declare-fun b!5853498 () Bool)

(declare-fun e!3589464 () Bool)

(declare-fun e!3589465 () Bool)

(assert (=> b!5853498 (= e!3589464 e!3589465)))

(declare-fun res!2464093 () Bool)

(assert (=> b!5853498 (= res!2464093 (not ((_ is EmptyLang!15919) (regTwo!32351 (regOne!32351 r!7292)))))))

(assert (=> b!5853498 (=> (not res!2464093) (not e!3589465))))

(declare-fun b!5853499 () Bool)

(declare-fun e!3589467 () Bool)

(assert (=> b!5853499 (= e!3589467 (matchRSpec!3020 (regTwo!32351 (regTwo!32351 (regOne!32351 r!7292))) s!2326))))

(declare-fun b!5853500 () Bool)

(declare-fun c!1037836 () Bool)

(assert (=> b!5853500 (= c!1037836 ((_ is Union!15919) (regTwo!32351 (regOne!32351 r!7292))))))

(declare-fun e!3589470 () Bool)

(declare-fun e!3589469 () Bool)

(assert (=> b!5853500 (= e!3589470 e!3589469)))

(declare-fun e!3589466 () Bool)

(declare-fun call!458341 () Bool)

(assert (=> b!5853501 (= e!3589466 call!458341)))

(declare-fun b!5853502 () Bool)

(assert (=> b!5853502 (= e!3589469 e!3589467)))

(declare-fun res!2464092 () Bool)

(assert (=> b!5853502 (= res!2464092 (matchRSpec!3020 (regOne!32351 (regTwo!32351 (regOne!32351 r!7292))) s!2326))))

(assert (=> b!5853502 (=> res!2464092 e!3589467)))

(declare-fun b!5853503 () Bool)

(assert (=> b!5853503 (= e!3589470 (= s!2326 (Cons!63934 (c!1037365 (regTwo!32351 (regOne!32351 r!7292))) Nil!63934)))))

(declare-fun bm!458336 () Bool)

(declare-fun call!458342 () Bool)

(assert (=> bm!458336 (= call!458342 (isEmpty!35793 s!2326))))

(declare-fun b!5853504 () Bool)

(declare-fun c!1037834 () Bool)

(assert (=> b!5853504 (= c!1037834 ((_ is ElementMatch!15919) (regTwo!32351 (regOne!32351 r!7292))))))

(assert (=> b!5853504 (= e!3589465 e!3589470)))

(declare-fun d!1838441 () Bool)

(declare-fun c!1037835 () Bool)

(assert (=> d!1838441 (= c!1037835 ((_ is EmptyExpr!15919) (regTwo!32351 (regOne!32351 r!7292))))))

(assert (=> d!1838441 (= (matchRSpec!3020 (regTwo!32351 (regOne!32351 r!7292)) s!2326) e!3589464)))

(declare-fun e!3589468 () Bool)

(assert (=> b!5853505 (= e!3589468 call!458341)))

(declare-fun b!5853506 () Bool)

(assert (=> b!5853506 (= e!3589469 e!3589468)))

(declare-fun c!1037837 () Bool)

(assert (=> b!5853506 (= c!1037837 ((_ is Star!15919) (regTwo!32351 (regOne!32351 r!7292))))))

(declare-fun b!5853507 () Bool)

(assert (=> b!5853507 (= e!3589464 call!458342)))

(declare-fun bm!458337 () Bool)

(assert (=> bm!458337 (= call!458341 (Exists!2991 (ite c!1037837 lambda!320057 lambda!320058)))))

(declare-fun b!5853508 () Bool)

(declare-fun res!2464094 () Bool)

(assert (=> b!5853508 (=> res!2464094 e!3589466)))

(assert (=> b!5853508 (= res!2464094 call!458342)))

(assert (=> b!5853508 (= e!3589468 e!3589466)))

(assert (= (and d!1838441 c!1037835) b!5853507))

(assert (= (and d!1838441 (not c!1037835)) b!5853498))

(assert (= (and b!5853498 res!2464093) b!5853504))

(assert (= (and b!5853504 c!1037834) b!5853503))

(assert (= (and b!5853504 (not c!1037834)) b!5853500))

(assert (= (and b!5853500 c!1037836) b!5853502))

(assert (= (and b!5853500 (not c!1037836)) b!5853506))

(assert (= (and b!5853502 (not res!2464092)) b!5853499))

(assert (= (and b!5853506 c!1037837) b!5853508))

(assert (= (and b!5853506 (not c!1037837)) b!5853505))

(assert (= (and b!5853508 (not res!2464094)) b!5853501))

(assert (= (or b!5853501 b!5853505) bm!458337))

(assert (= (or b!5853507 b!5853508) bm!458336))

(declare-fun m!6772744 () Bool)

(assert (=> b!5853499 m!6772744))

(declare-fun m!6772746 () Bool)

(assert (=> b!5853502 m!6772746))

(assert (=> bm!458336 m!6771840))

(declare-fun m!6772748 () Bool)

(assert (=> bm!458337 m!6772748))

(assert (=> b!5852474 d!1838441))

(declare-fun b!5853511 () Bool)

(declare-fun e!3589471 () Bool)

(declare-fun tp!1619228 () Bool)

(assert (=> b!5853511 (= e!3589471 tp!1619228)))

(assert (=> b!5852627 (= tp!1619031 e!3589471)))

(declare-fun b!5853510 () Bool)

(declare-fun tp!1619225 () Bool)

(declare-fun tp!1619226 () Bool)

(assert (=> b!5853510 (= e!3589471 (and tp!1619225 tp!1619226))))

(declare-fun b!5853509 () Bool)

(assert (=> b!5853509 (= e!3589471 tp_is_empty!41091)))

(declare-fun b!5853512 () Bool)

(declare-fun tp!1619229 () Bool)

(declare-fun tp!1619227 () Bool)

(assert (=> b!5853512 (= e!3589471 (and tp!1619229 tp!1619227))))

(assert (= (and b!5852627 ((_ is ElementMatch!15919) (regOne!32350 (reg!16248 r!7292)))) b!5853509))

(assert (= (and b!5852627 ((_ is Concat!24764) (regOne!32350 (reg!16248 r!7292)))) b!5853510))

(assert (= (and b!5852627 ((_ is Star!15919) (regOne!32350 (reg!16248 r!7292)))) b!5853511))

(assert (= (and b!5852627 ((_ is Union!15919) (regOne!32350 (reg!16248 r!7292)))) b!5853512))

(declare-fun b!5853515 () Bool)

(declare-fun e!3589472 () Bool)

(declare-fun tp!1619233 () Bool)

(assert (=> b!5853515 (= e!3589472 tp!1619233)))

(assert (=> b!5852627 (= tp!1619032 e!3589472)))

(declare-fun b!5853514 () Bool)

(declare-fun tp!1619230 () Bool)

(declare-fun tp!1619231 () Bool)

(assert (=> b!5853514 (= e!3589472 (and tp!1619230 tp!1619231))))

(declare-fun b!5853513 () Bool)

(assert (=> b!5853513 (= e!3589472 tp_is_empty!41091)))

(declare-fun b!5853516 () Bool)

(declare-fun tp!1619234 () Bool)

(declare-fun tp!1619232 () Bool)

(assert (=> b!5853516 (= e!3589472 (and tp!1619234 tp!1619232))))

(assert (= (and b!5852627 ((_ is ElementMatch!15919) (regTwo!32350 (reg!16248 r!7292)))) b!5853513))

(assert (= (and b!5852627 ((_ is Concat!24764) (regTwo!32350 (reg!16248 r!7292)))) b!5853514))

(assert (= (and b!5852627 ((_ is Star!15919) (regTwo!32350 (reg!16248 r!7292)))) b!5853515))

(assert (= (and b!5852627 ((_ is Union!15919) (regTwo!32350 (reg!16248 r!7292)))) b!5853516))

(declare-fun b!5853519 () Bool)

(declare-fun e!3589473 () Bool)

(declare-fun tp!1619238 () Bool)

(assert (=> b!5853519 (= e!3589473 tp!1619238)))

(assert (=> b!5852628 (= tp!1619034 e!3589473)))

(declare-fun b!5853518 () Bool)

(declare-fun tp!1619235 () Bool)

(declare-fun tp!1619236 () Bool)

(assert (=> b!5853518 (= e!3589473 (and tp!1619235 tp!1619236))))

(declare-fun b!5853517 () Bool)

(assert (=> b!5853517 (= e!3589473 tp_is_empty!41091)))

(declare-fun b!5853520 () Bool)

(declare-fun tp!1619239 () Bool)

(declare-fun tp!1619237 () Bool)

(assert (=> b!5853520 (= e!3589473 (and tp!1619239 tp!1619237))))

(assert (= (and b!5852628 ((_ is ElementMatch!15919) (reg!16248 (reg!16248 r!7292)))) b!5853517))

(assert (= (and b!5852628 ((_ is Concat!24764) (reg!16248 (reg!16248 r!7292)))) b!5853518))

(assert (= (and b!5852628 ((_ is Star!15919) (reg!16248 (reg!16248 r!7292)))) b!5853519))

(assert (= (and b!5852628 ((_ is Union!15919) (reg!16248 (reg!16248 r!7292)))) b!5853520))

(declare-fun b!5853523 () Bool)

(declare-fun e!3589474 () Bool)

(declare-fun tp!1619243 () Bool)

(assert (=> b!5853523 (= e!3589474 tp!1619243)))

(assert (=> b!5852629 (= tp!1619035 e!3589474)))

(declare-fun b!5853522 () Bool)

(declare-fun tp!1619240 () Bool)

(declare-fun tp!1619241 () Bool)

(assert (=> b!5853522 (= e!3589474 (and tp!1619240 tp!1619241))))

(declare-fun b!5853521 () Bool)

(assert (=> b!5853521 (= e!3589474 tp_is_empty!41091)))

(declare-fun b!5853524 () Bool)

(declare-fun tp!1619244 () Bool)

(declare-fun tp!1619242 () Bool)

(assert (=> b!5853524 (= e!3589474 (and tp!1619244 tp!1619242))))

(assert (= (and b!5852629 ((_ is ElementMatch!15919) (regOne!32351 (reg!16248 r!7292)))) b!5853521))

(assert (= (and b!5852629 ((_ is Concat!24764) (regOne!32351 (reg!16248 r!7292)))) b!5853522))

(assert (= (and b!5852629 ((_ is Star!15919) (regOne!32351 (reg!16248 r!7292)))) b!5853523))

(assert (= (and b!5852629 ((_ is Union!15919) (regOne!32351 (reg!16248 r!7292)))) b!5853524))

(declare-fun b!5853527 () Bool)

(declare-fun e!3589475 () Bool)

(declare-fun tp!1619248 () Bool)

(assert (=> b!5853527 (= e!3589475 tp!1619248)))

(assert (=> b!5852629 (= tp!1619033 e!3589475)))

(declare-fun b!5853526 () Bool)

(declare-fun tp!1619245 () Bool)

(declare-fun tp!1619246 () Bool)

(assert (=> b!5853526 (= e!3589475 (and tp!1619245 tp!1619246))))

(declare-fun b!5853525 () Bool)

(assert (=> b!5853525 (= e!3589475 tp_is_empty!41091)))

(declare-fun b!5853528 () Bool)

(declare-fun tp!1619249 () Bool)

(declare-fun tp!1619247 () Bool)

(assert (=> b!5853528 (= e!3589475 (and tp!1619249 tp!1619247))))

(assert (= (and b!5852629 ((_ is ElementMatch!15919) (regTwo!32351 (reg!16248 r!7292)))) b!5853525))

(assert (= (and b!5852629 ((_ is Concat!24764) (regTwo!32351 (reg!16248 r!7292)))) b!5853526))

(assert (= (and b!5852629 ((_ is Star!15919) (regTwo!32351 (reg!16248 r!7292)))) b!5853527))

(assert (= (and b!5852629 ((_ is Union!15919) (regTwo!32351 (reg!16248 r!7292)))) b!5853528))

(declare-fun b!5853531 () Bool)

(declare-fun e!3589476 () Bool)

(declare-fun tp!1619253 () Bool)

(assert (=> b!5853531 (= e!3589476 tp!1619253)))

(assert (=> b!5852614 (= tp!1619015 e!3589476)))

(declare-fun b!5853530 () Bool)

(declare-fun tp!1619250 () Bool)

(declare-fun tp!1619251 () Bool)

(assert (=> b!5853530 (= e!3589476 (and tp!1619250 tp!1619251))))

(declare-fun b!5853529 () Bool)

(assert (=> b!5853529 (= e!3589476 tp_is_empty!41091)))

(declare-fun b!5853532 () Bool)

(declare-fun tp!1619254 () Bool)

(declare-fun tp!1619252 () Bool)

(assert (=> b!5853532 (= e!3589476 (and tp!1619254 tp!1619252))))

(assert (= (and b!5852614 ((_ is ElementMatch!15919) (regOne!32350 (regOne!32350 r!7292)))) b!5853529))

(assert (= (and b!5852614 ((_ is Concat!24764) (regOne!32350 (regOne!32350 r!7292)))) b!5853530))

(assert (= (and b!5852614 ((_ is Star!15919) (regOne!32350 (regOne!32350 r!7292)))) b!5853531))

(assert (= (and b!5852614 ((_ is Union!15919) (regOne!32350 (regOne!32350 r!7292)))) b!5853532))

(declare-fun b!5853535 () Bool)

(declare-fun e!3589477 () Bool)

(declare-fun tp!1619258 () Bool)

(assert (=> b!5853535 (= e!3589477 tp!1619258)))

(assert (=> b!5852614 (= tp!1619016 e!3589477)))

(declare-fun b!5853534 () Bool)

(declare-fun tp!1619255 () Bool)

(declare-fun tp!1619256 () Bool)

(assert (=> b!5853534 (= e!3589477 (and tp!1619255 tp!1619256))))

(declare-fun b!5853533 () Bool)

(assert (=> b!5853533 (= e!3589477 tp_is_empty!41091)))

(declare-fun b!5853536 () Bool)

(declare-fun tp!1619259 () Bool)

(declare-fun tp!1619257 () Bool)

(assert (=> b!5853536 (= e!3589477 (and tp!1619259 tp!1619257))))

(assert (= (and b!5852614 ((_ is ElementMatch!15919) (regTwo!32350 (regOne!32350 r!7292)))) b!5853533))

(assert (= (and b!5852614 ((_ is Concat!24764) (regTwo!32350 (regOne!32350 r!7292)))) b!5853534))

(assert (= (and b!5852614 ((_ is Star!15919) (regTwo!32350 (regOne!32350 r!7292)))) b!5853535))

(assert (= (and b!5852614 ((_ is Union!15919) (regTwo!32350 (regOne!32350 r!7292)))) b!5853536))

(declare-fun b!5853539 () Bool)

(declare-fun e!3589478 () Bool)

(declare-fun tp!1619263 () Bool)

(assert (=> b!5853539 (= e!3589478 tp!1619263)))

(assert (=> b!5852615 (= tp!1619018 e!3589478)))

(declare-fun b!5853538 () Bool)

(declare-fun tp!1619260 () Bool)

(declare-fun tp!1619261 () Bool)

(assert (=> b!5853538 (= e!3589478 (and tp!1619260 tp!1619261))))

(declare-fun b!5853537 () Bool)

(assert (=> b!5853537 (= e!3589478 tp_is_empty!41091)))

(declare-fun b!5853540 () Bool)

(declare-fun tp!1619264 () Bool)

(declare-fun tp!1619262 () Bool)

(assert (=> b!5853540 (= e!3589478 (and tp!1619264 tp!1619262))))

(assert (= (and b!5852615 ((_ is ElementMatch!15919) (reg!16248 (regOne!32350 r!7292)))) b!5853537))

(assert (= (and b!5852615 ((_ is Concat!24764) (reg!16248 (regOne!32350 r!7292)))) b!5853538))

(assert (= (and b!5852615 ((_ is Star!15919) (reg!16248 (regOne!32350 r!7292)))) b!5853539))

(assert (= (and b!5852615 ((_ is Union!15919) (reg!16248 (regOne!32350 r!7292)))) b!5853540))

(declare-fun b!5853543 () Bool)

(declare-fun e!3589479 () Bool)

(declare-fun tp!1619268 () Bool)

(assert (=> b!5853543 (= e!3589479 tp!1619268)))

(assert (=> b!5852606 (= tp!1619005 e!3589479)))

(declare-fun b!5853542 () Bool)

(declare-fun tp!1619265 () Bool)

(declare-fun tp!1619266 () Bool)

(assert (=> b!5853542 (= e!3589479 (and tp!1619265 tp!1619266))))

(declare-fun b!5853541 () Bool)

(assert (=> b!5853541 (= e!3589479 tp_is_empty!41091)))

(declare-fun b!5853544 () Bool)

(declare-fun tp!1619269 () Bool)

(declare-fun tp!1619267 () Bool)

(assert (=> b!5853544 (= e!3589479 (and tp!1619269 tp!1619267))))

(assert (= (and b!5852606 ((_ is ElementMatch!15919) (regOne!32350 (regOne!32351 r!7292)))) b!5853541))

(assert (= (and b!5852606 ((_ is Concat!24764) (regOne!32350 (regOne!32351 r!7292)))) b!5853542))

(assert (= (and b!5852606 ((_ is Star!15919) (regOne!32350 (regOne!32351 r!7292)))) b!5853543))

(assert (= (and b!5852606 ((_ is Union!15919) (regOne!32350 (regOne!32351 r!7292)))) b!5853544))

(declare-fun b!5853547 () Bool)

(declare-fun e!3589480 () Bool)

(declare-fun tp!1619273 () Bool)

(assert (=> b!5853547 (= e!3589480 tp!1619273)))

(assert (=> b!5852606 (= tp!1619006 e!3589480)))

(declare-fun b!5853546 () Bool)

(declare-fun tp!1619270 () Bool)

(declare-fun tp!1619271 () Bool)

(assert (=> b!5853546 (= e!3589480 (and tp!1619270 tp!1619271))))

(declare-fun b!5853545 () Bool)

(assert (=> b!5853545 (= e!3589480 tp_is_empty!41091)))

(declare-fun b!5853548 () Bool)

(declare-fun tp!1619274 () Bool)

(declare-fun tp!1619272 () Bool)

(assert (=> b!5853548 (= e!3589480 (and tp!1619274 tp!1619272))))

(assert (= (and b!5852606 ((_ is ElementMatch!15919) (regTwo!32350 (regOne!32351 r!7292)))) b!5853545))

(assert (= (and b!5852606 ((_ is Concat!24764) (regTwo!32350 (regOne!32351 r!7292)))) b!5853546))

(assert (= (and b!5852606 ((_ is Star!15919) (regTwo!32350 (regOne!32351 r!7292)))) b!5853547))

(assert (= (and b!5852606 ((_ is Union!15919) (regTwo!32350 (regOne!32351 r!7292)))) b!5853548))

(declare-fun b!5853551 () Bool)

(declare-fun e!3589481 () Bool)

(declare-fun tp!1619278 () Bool)

(assert (=> b!5853551 (= e!3589481 tp!1619278)))

(assert (=> b!5852616 (= tp!1619019 e!3589481)))

(declare-fun b!5853550 () Bool)

(declare-fun tp!1619275 () Bool)

(declare-fun tp!1619276 () Bool)

(assert (=> b!5853550 (= e!3589481 (and tp!1619275 tp!1619276))))

(declare-fun b!5853549 () Bool)

(assert (=> b!5853549 (= e!3589481 tp_is_empty!41091)))

(declare-fun b!5853552 () Bool)

(declare-fun tp!1619279 () Bool)

(declare-fun tp!1619277 () Bool)

(assert (=> b!5853552 (= e!3589481 (and tp!1619279 tp!1619277))))

(assert (= (and b!5852616 ((_ is ElementMatch!15919) (regOne!32351 (regOne!32350 r!7292)))) b!5853549))

(assert (= (and b!5852616 ((_ is Concat!24764) (regOne!32351 (regOne!32350 r!7292)))) b!5853550))

(assert (= (and b!5852616 ((_ is Star!15919) (regOne!32351 (regOne!32350 r!7292)))) b!5853551))

(assert (= (and b!5852616 ((_ is Union!15919) (regOne!32351 (regOne!32350 r!7292)))) b!5853552))

(declare-fun b!5853555 () Bool)

(declare-fun e!3589482 () Bool)

(declare-fun tp!1619283 () Bool)

(assert (=> b!5853555 (= e!3589482 tp!1619283)))

(assert (=> b!5852616 (= tp!1619017 e!3589482)))

(declare-fun b!5853554 () Bool)

(declare-fun tp!1619280 () Bool)

(declare-fun tp!1619281 () Bool)

(assert (=> b!5853554 (= e!3589482 (and tp!1619280 tp!1619281))))

(declare-fun b!5853553 () Bool)

(assert (=> b!5853553 (= e!3589482 tp_is_empty!41091)))

(declare-fun b!5853556 () Bool)

(declare-fun tp!1619284 () Bool)

(declare-fun tp!1619282 () Bool)

(assert (=> b!5853556 (= e!3589482 (and tp!1619284 tp!1619282))))

(assert (= (and b!5852616 ((_ is ElementMatch!15919) (regTwo!32351 (regOne!32350 r!7292)))) b!5853553))

(assert (= (and b!5852616 ((_ is Concat!24764) (regTwo!32351 (regOne!32350 r!7292)))) b!5853554))

(assert (= (and b!5852616 ((_ is Star!15919) (regTwo!32351 (regOne!32350 r!7292)))) b!5853555))

(assert (= (and b!5852616 ((_ is Union!15919) (regTwo!32351 (regOne!32350 r!7292)))) b!5853556))

(declare-fun b!5853559 () Bool)

(declare-fun e!3589483 () Bool)

(declare-fun tp!1619288 () Bool)

(assert (=> b!5853559 (= e!3589483 tp!1619288)))

(assert (=> b!5852607 (= tp!1619008 e!3589483)))

(declare-fun b!5853558 () Bool)

(declare-fun tp!1619285 () Bool)

(declare-fun tp!1619286 () Bool)

(assert (=> b!5853558 (= e!3589483 (and tp!1619285 tp!1619286))))

(declare-fun b!5853557 () Bool)

(assert (=> b!5853557 (= e!3589483 tp_is_empty!41091)))

(declare-fun b!5853560 () Bool)

(declare-fun tp!1619289 () Bool)

(declare-fun tp!1619287 () Bool)

(assert (=> b!5853560 (= e!3589483 (and tp!1619289 tp!1619287))))

(assert (= (and b!5852607 ((_ is ElementMatch!15919) (reg!16248 (regOne!32351 r!7292)))) b!5853557))

(assert (= (and b!5852607 ((_ is Concat!24764) (reg!16248 (regOne!32351 r!7292)))) b!5853558))

(assert (= (and b!5852607 ((_ is Star!15919) (reg!16248 (regOne!32351 r!7292)))) b!5853559))

(assert (= (and b!5852607 ((_ is Union!15919) (reg!16248 (regOne!32351 r!7292)))) b!5853560))

(declare-fun b!5853563 () Bool)

(declare-fun e!3589484 () Bool)

(declare-fun tp!1619293 () Bool)

(assert (=> b!5853563 (= e!3589484 tp!1619293)))

(assert (=> b!5852608 (= tp!1619009 e!3589484)))

(declare-fun b!5853562 () Bool)

(declare-fun tp!1619290 () Bool)

(declare-fun tp!1619291 () Bool)

(assert (=> b!5853562 (= e!3589484 (and tp!1619290 tp!1619291))))

(declare-fun b!5853561 () Bool)

(assert (=> b!5853561 (= e!3589484 tp_is_empty!41091)))

(declare-fun b!5853564 () Bool)

(declare-fun tp!1619294 () Bool)

(declare-fun tp!1619292 () Bool)

(assert (=> b!5853564 (= e!3589484 (and tp!1619294 tp!1619292))))

(assert (= (and b!5852608 ((_ is ElementMatch!15919) (regOne!32351 (regOne!32351 r!7292)))) b!5853561))

(assert (= (and b!5852608 ((_ is Concat!24764) (regOne!32351 (regOne!32351 r!7292)))) b!5853562))

(assert (= (and b!5852608 ((_ is Star!15919) (regOne!32351 (regOne!32351 r!7292)))) b!5853563))

(assert (= (and b!5852608 ((_ is Union!15919) (regOne!32351 (regOne!32351 r!7292)))) b!5853564))

(declare-fun b!5853567 () Bool)

(declare-fun e!3589485 () Bool)

(declare-fun tp!1619298 () Bool)

(assert (=> b!5853567 (= e!3589485 tp!1619298)))

(assert (=> b!5852608 (= tp!1619007 e!3589485)))

(declare-fun b!5853566 () Bool)

(declare-fun tp!1619295 () Bool)

(declare-fun tp!1619296 () Bool)

(assert (=> b!5853566 (= e!3589485 (and tp!1619295 tp!1619296))))

(declare-fun b!5853565 () Bool)

(assert (=> b!5853565 (= e!3589485 tp_is_empty!41091)))

(declare-fun b!5853568 () Bool)

(declare-fun tp!1619299 () Bool)

(declare-fun tp!1619297 () Bool)

(assert (=> b!5853568 (= e!3589485 (and tp!1619299 tp!1619297))))

(assert (= (and b!5852608 ((_ is ElementMatch!15919) (regTwo!32351 (regOne!32351 r!7292)))) b!5853565))

(assert (= (and b!5852608 ((_ is Concat!24764) (regTwo!32351 (regOne!32351 r!7292)))) b!5853566))

(assert (= (and b!5852608 ((_ is Star!15919) (regTwo!32351 (regOne!32351 r!7292)))) b!5853567))

(assert (= (and b!5852608 ((_ is Union!15919) (regTwo!32351 (regOne!32351 r!7292)))) b!5853568))

(declare-fun condSetEmpty!39664 () Bool)

(assert (=> setNonEmpty!39656 (= condSetEmpty!39664 (= setRest!39656 ((as const (Array Context!10606 Bool)) false)))))

(declare-fun setRes!39664 () Bool)

(assert (=> setNonEmpty!39656 (= tp!1619043 setRes!39664)))

(declare-fun setIsEmpty!39664 () Bool)

(assert (=> setIsEmpty!39664 setRes!39664))

(declare-fun tp!1619300 () Bool)

(declare-fun setNonEmpty!39664 () Bool)

(declare-fun setElem!39664 () Context!10606)

(declare-fun e!3589486 () Bool)

(assert (=> setNonEmpty!39664 (= setRes!39664 (and tp!1619300 (inv!83044 setElem!39664) e!3589486))))

(declare-fun setRest!39664 () (InoxSet Context!10606))

(assert (=> setNonEmpty!39664 (= setRest!39656 ((_ map or) (store ((as const (Array Context!10606 Bool)) false) setElem!39664 true) setRest!39664))))

(declare-fun b!5853569 () Bool)

(declare-fun tp!1619301 () Bool)

(assert (=> b!5853569 (= e!3589486 tp!1619301)))

(assert (= (and setNonEmpty!39656 condSetEmpty!39664) setIsEmpty!39664))

(assert (= (and setNonEmpty!39656 (not condSetEmpty!39664)) setNonEmpty!39664))

(assert (= setNonEmpty!39664 b!5853569))

(declare-fun m!6772750 () Bool)

(assert (=> setNonEmpty!39664 m!6772750))

(declare-fun b!5853570 () Bool)

(declare-fun e!3589487 () Bool)

(declare-fun tp!1619302 () Bool)

(declare-fun tp!1619303 () Bool)

(assert (=> b!5853570 (= e!3589487 (and tp!1619302 tp!1619303))))

(assert (=> b!5852639 (= tp!1619044 e!3589487)))

(assert (= (and b!5852639 ((_ is Cons!63932) (exprs!5803 setElem!39656))) b!5853570))

(declare-fun b!5853573 () Bool)

(declare-fun e!3589488 () Bool)

(declare-fun tp!1619307 () Bool)

(assert (=> b!5853573 (= e!3589488 tp!1619307)))

(assert (=> b!5852625 (= tp!1619029 e!3589488)))

(declare-fun b!5853572 () Bool)

(declare-fun tp!1619304 () Bool)

(declare-fun tp!1619305 () Bool)

(assert (=> b!5853572 (= e!3589488 (and tp!1619304 tp!1619305))))

(declare-fun b!5853571 () Bool)

(assert (=> b!5853571 (= e!3589488 tp_is_empty!41091)))

(declare-fun b!5853574 () Bool)

(declare-fun tp!1619308 () Bool)

(declare-fun tp!1619306 () Bool)

(assert (=> b!5853574 (= e!3589488 (and tp!1619308 tp!1619306))))

(assert (= (and b!5852625 ((_ is ElementMatch!15919) (h!70380 (exprs!5803 (h!70381 zl!343))))) b!5853571))

(assert (= (and b!5852625 ((_ is Concat!24764) (h!70380 (exprs!5803 (h!70381 zl!343))))) b!5853572))

(assert (= (and b!5852625 ((_ is Star!15919) (h!70380 (exprs!5803 (h!70381 zl!343))))) b!5853573))

(assert (= (and b!5852625 ((_ is Union!15919) (h!70380 (exprs!5803 (h!70381 zl!343))))) b!5853574))

(declare-fun b!5853575 () Bool)

(declare-fun e!3589489 () Bool)

(declare-fun tp!1619309 () Bool)

(declare-fun tp!1619310 () Bool)

(assert (=> b!5853575 (= e!3589489 (and tp!1619309 tp!1619310))))

(assert (=> b!5852625 (= tp!1619030 e!3589489)))

(assert (= (and b!5852625 ((_ is Cons!63932) (t!377419 (exprs!5803 (h!70381 zl!343))))) b!5853575))

(declare-fun b!5853578 () Bool)

(declare-fun e!3589490 () Bool)

(declare-fun tp!1619314 () Bool)

(assert (=> b!5853578 (= e!3589490 tp!1619314)))

(assert (=> b!5852618 (= tp!1619020 e!3589490)))

(declare-fun b!5853577 () Bool)

(declare-fun tp!1619311 () Bool)

(declare-fun tp!1619312 () Bool)

(assert (=> b!5853577 (= e!3589490 (and tp!1619311 tp!1619312))))

(declare-fun b!5853576 () Bool)

(assert (=> b!5853576 (= e!3589490 tp_is_empty!41091)))

(declare-fun b!5853579 () Bool)

(declare-fun tp!1619315 () Bool)

(declare-fun tp!1619313 () Bool)

(assert (=> b!5853579 (= e!3589490 (and tp!1619315 tp!1619313))))

(assert (= (and b!5852618 ((_ is ElementMatch!15919) (regOne!32350 (regTwo!32350 r!7292)))) b!5853576))

(assert (= (and b!5852618 ((_ is Concat!24764) (regOne!32350 (regTwo!32350 r!7292)))) b!5853577))

(assert (= (and b!5852618 ((_ is Star!15919) (regOne!32350 (regTwo!32350 r!7292)))) b!5853578))

(assert (= (and b!5852618 ((_ is Union!15919) (regOne!32350 (regTwo!32350 r!7292)))) b!5853579))

(declare-fun b!5853582 () Bool)

(declare-fun e!3589491 () Bool)

(declare-fun tp!1619319 () Bool)

(assert (=> b!5853582 (= e!3589491 tp!1619319)))

(assert (=> b!5852618 (= tp!1619021 e!3589491)))

(declare-fun b!5853581 () Bool)

(declare-fun tp!1619316 () Bool)

(declare-fun tp!1619317 () Bool)

(assert (=> b!5853581 (= e!3589491 (and tp!1619316 tp!1619317))))

(declare-fun b!5853580 () Bool)

(assert (=> b!5853580 (= e!3589491 tp_is_empty!41091)))

(declare-fun b!5853583 () Bool)

(declare-fun tp!1619320 () Bool)

(declare-fun tp!1619318 () Bool)

(assert (=> b!5853583 (= e!3589491 (and tp!1619320 tp!1619318))))

(assert (= (and b!5852618 ((_ is ElementMatch!15919) (regTwo!32350 (regTwo!32350 r!7292)))) b!5853580))

(assert (= (and b!5852618 ((_ is Concat!24764) (regTwo!32350 (regTwo!32350 r!7292)))) b!5853581))

(assert (= (and b!5852618 ((_ is Star!15919) (regTwo!32350 (regTwo!32350 r!7292)))) b!5853582))

(assert (= (and b!5852618 ((_ is Union!15919) (regTwo!32350 (regTwo!32350 r!7292)))) b!5853583))

(declare-fun b!5853586 () Bool)

(declare-fun e!3589492 () Bool)

(declare-fun tp!1619324 () Bool)

(assert (=> b!5853586 (= e!3589492 tp!1619324)))

(assert (=> b!5852619 (= tp!1619023 e!3589492)))

(declare-fun b!5853585 () Bool)

(declare-fun tp!1619321 () Bool)

(declare-fun tp!1619322 () Bool)

(assert (=> b!5853585 (= e!3589492 (and tp!1619321 tp!1619322))))

(declare-fun b!5853584 () Bool)

(assert (=> b!5853584 (= e!3589492 tp_is_empty!41091)))

(declare-fun b!5853587 () Bool)

(declare-fun tp!1619325 () Bool)

(declare-fun tp!1619323 () Bool)

(assert (=> b!5853587 (= e!3589492 (and tp!1619325 tp!1619323))))

(assert (= (and b!5852619 ((_ is ElementMatch!15919) (reg!16248 (regTwo!32350 r!7292)))) b!5853584))

(assert (= (and b!5852619 ((_ is Concat!24764) (reg!16248 (regTwo!32350 r!7292)))) b!5853585))

(assert (= (and b!5852619 ((_ is Star!15919) (reg!16248 (regTwo!32350 r!7292)))) b!5853586))

(assert (= (and b!5852619 ((_ is Union!15919) (reg!16248 (regTwo!32350 r!7292)))) b!5853587))

(declare-fun b!5853590 () Bool)

(declare-fun e!3589493 () Bool)

(declare-fun tp!1619329 () Bool)

(assert (=> b!5853590 (= e!3589493 tp!1619329)))

(assert (=> b!5852610 (= tp!1619010 e!3589493)))

(declare-fun b!5853589 () Bool)

(declare-fun tp!1619326 () Bool)

(declare-fun tp!1619327 () Bool)

(assert (=> b!5853589 (= e!3589493 (and tp!1619326 tp!1619327))))

(declare-fun b!5853588 () Bool)

(assert (=> b!5853588 (= e!3589493 tp_is_empty!41091)))

(declare-fun b!5853591 () Bool)

(declare-fun tp!1619330 () Bool)

(declare-fun tp!1619328 () Bool)

(assert (=> b!5853591 (= e!3589493 (and tp!1619330 tp!1619328))))

(assert (= (and b!5852610 ((_ is ElementMatch!15919) (regOne!32350 (regTwo!32351 r!7292)))) b!5853588))

(assert (= (and b!5852610 ((_ is Concat!24764) (regOne!32350 (regTwo!32351 r!7292)))) b!5853589))

(assert (= (and b!5852610 ((_ is Star!15919) (regOne!32350 (regTwo!32351 r!7292)))) b!5853590))

(assert (= (and b!5852610 ((_ is Union!15919) (regOne!32350 (regTwo!32351 r!7292)))) b!5853591))

(declare-fun b!5853594 () Bool)

(declare-fun e!3589494 () Bool)

(declare-fun tp!1619334 () Bool)

(assert (=> b!5853594 (= e!3589494 tp!1619334)))

(assert (=> b!5852610 (= tp!1619011 e!3589494)))

(declare-fun b!5853593 () Bool)

(declare-fun tp!1619331 () Bool)

(declare-fun tp!1619332 () Bool)

(assert (=> b!5853593 (= e!3589494 (and tp!1619331 tp!1619332))))

(declare-fun b!5853592 () Bool)

(assert (=> b!5853592 (= e!3589494 tp_is_empty!41091)))

(declare-fun b!5853595 () Bool)

(declare-fun tp!1619335 () Bool)

(declare-fun tp!1619333 () Bool)

(assert (=> b!5853595 (= e!3589494 (and tp!1619335 tp!1619333))))

(assert (= (and b!5852610 ((_ is ElementMatch!15919) (regTwo!32350 (regTwo!32351 r!7292)))) b!5853592))

(assert (= (and b!5852610 ((_ is Concat!24764) (regTwo!32350 (regTwo!32351 r!7292)))) b!5853593))

(assert (= (and b!5852610 ((_ is Star!15919) (regTwo!32350 (regTwo!32351 r!7292)))) b!5853594))

(assert (= (and b!5852610 ((_ is Union!15919) (regTwo!32350 (regTwo!32351 r!7292)))) b!5853595))

(declare-fun b!5853598 () Bool)

(declare-fun e!3589495 () Bool)

(declare-fun tp!1619339 () Bool)

(assert (=> b!5853598 (= e!3589495 tp!1619339)))

(assert (=> b!5852640 (= tp!1619045 e!3589495)))

(declare-fun b!5853597 () Bool)

(declare-fun tp!1619336 () Bool)

(declare-fun tp!1619337 () Bool)

(assert (=> b!5853597 (= e!3589495 (and tp!1619336 tp!1619337))))

(declare-fun b!5853596 () Bool)

(assert (=> b!5853596 (= e!3589495 tp_is_empty!41091)))

(declare-fun b!5853599 () Bool)

(declare-fun tp!1619340 () Bool)

(declare-fun tp!1619338 () Bool)

(assert (=> b!5853599 (= e!3589495 (and tp!1619340 tp!1619338))))

(assert (= (and b!5852640 ((_ is ElementMatch!15919) (h!70380 (exprs!5803 setElem!39650)))) b!5853596))

(assert (= (and b!5852640 ((_ is Concat!24764) (h!70380 (exprs!5803 setElem!39650)))) b!5853597))

(assert (= (and b!5852640 ((_ is Star!15919) (h!70380 (exprs!5803 setElem!39650)))) b!5853598))

(assert (= (and b!5852640 ((_ is Union!15919) (h!70380 (exprs!5803 setElem!39650)))) b!5853599))

(declare-fun b!5853600 () Bool)

(declare-fun e!3589496 () Bool)

(declare-fun tp!1619341 () Bool)

(declare-fun tp!1619342 () Bool)

(assert (=> b!5853600 (= e!3589496 (and tp!1619341 tp!1619342))))

(assert (=> b!5852640 (= tp!1619046 e!3589496)))

(assert (= (and b!5852640 ((_ is Cons!63932) (t!377419 (exprs!5803 setElem!39650)))) b!5853600))

(declare-fun b!5853603 () Bool)

(declare-fun e!3589497 () Bool)

(declare-fun tp!1619346 () Bool)

(assert (=> b!5853603 (= e!3589497 tp!1619346)))

(assert (=> b!5852620 (= tp!1619024 e!3589497)))

(declare-fun b!5853602 () Bool)

(declare-fun tp!1619343 () Bool)

(declare-fun tp!1619344 () Bool)

(assert (=> b!5853602 (= e!3589497 (and tp!1619343 tp!1619344))))

(declare-fun b!5853601 () Bool)

(assert (=> b!5853601 (= e!3589497 tp_is_empty!41091)))

(declare-fun b!5853604 () Bool)

(declare-fun tp!1619347 () Bool)

(declare-fun tp!1619345 () Bool)

(assert (=> b!5853604 (= e!3589497 (and tp!1619347 tp!1619345))))

(assert (= (and b!5852620 ((_ is ElementMatch!15919) (regOne!32351 (regTwo!32350 r!7292)))) b!5853601))

(assert (= (and b!5852620 ((_ is Concat!24764) (regOne!32351 (regTwo!32350 r!7292)))) b!5853602))

(assert (= (and b!5852620 ((_ is Star!15919) (regOne!32351 (regTwo!32350 r!7292)))) b!5853603))

(assert (= (and b!5852620 ((_ is Union!15919) (regOne!32351 (regTwo!32350 r!7292)))) b!5853604))

(declare-fun b!5853607 () Bool)

(declare-fun e!3589498 () Bool)

(declare-fun tp!1619351 () Bool)

(assert (=> b!5853607 (= e!3589498 tp!1619351)))

(assert (=> b!5852620 (= tp!1619022 e!3589498)))

(declare-fun b!5853606 () Bool)

(declare-fun tp!1619348 () Bool)

(declare-fun tp!1619349 () Bool)

(assert (=> b!5853606 (= e!3589498 (and tp!1619348 tp!1619349))))

(declare-fun b!5853605 () Bool)

(assert (=> b!5853605 (= e!3589498 tp_is_empty!41091)))

(declare-fun b!5853608 () Bool)

(declare-fun tp!1619352 () Bool)

(declare-fun tp!1619350 () Bool)

(assert (=> b!5853608 (= e!3589498 (and tp!1619352 tp!1619350))))

(assert (= (and b!5852620 ((_ is ElementMatch!15919) (regTwo!32351 (regTwo!32350 r!7292)))) b!5853605))

(assert (= (and b!5852620 ((_ is Concat!24764) (regTwo!32351 (regTwo!32350 r!7292)))) b!5853606))

(assert (= (and b!5852620 ((_ is Star!15919) (regTwo!32351 (regTwo!32350 r!7292)))) b!5853607))

(assert (= (and b!5852620 ((_ is Union!15919) (regTwo!32351 (regTwo!32350 r!7292)))) b!5853608))

(declare-fun b!5853609 () Bool)

(declare-fun e!3589499 () Bool)

(declare-fun tp!1619353 () Bool)

(assert (=> b!5853609 (= e!3589499 (and tp_is_empty!41091 tp!1619353))))

(assert (=> b!5852634 (= tp!1619038 e!3589499)))

(assert (= (and b!5852634 ((_ is Cons!63934) (t!377421 (t!377421 s!2326)))) b!5853609))

(declare-fun b!5853612 () Bool)

(declare-fun e!3589500 () Bool)

(declare-fun tp!1619357 () Bool)

(assert (=> b!5853612 (= e!3589500 tp!1619357)))

(assert (=> b!5852611 (= tp!1619013 e!3589500)))

(declare-fun b!5853611 () Bool)

(declare-fun tp!1619354 () Bool)

(declare-fun tp!1619355 () Bool)

(assert (=> b!5853611 (= e!3589500 (and tp!1619354 tp!1619355))))

(declare-fun b!5853610 () Bool)

(assert (=> b!5853610 (= e!3589500 tp_is_empty!41091)))

(declare-fun b!5853613 () Bool)

(declare-fun tp!1619358 () Bool)

(declare-fun tp!1619356 () Bool)

(assert (=> b!5853613 (= e!3589500 (and tp!1619358 tp!1619356))))

(assert (= (and b!5852611 ((_ is ElementMatch!15919) (reg!16248 (regTwo!32351 r!7292)))) b!5853610))

(assert (= (and b!5852611 ((_ is Concat!24764) (reg!16248 (regTwo!32351 r!7292)))) b!5853611))

(assert (= (and b!5852611 ((_ is Star!15919) (reg!16248 (regTwo!32351 r!7292)))) b!5853612))

(assert (= (and b!5852611 ((_ is Union!15919) (reg!16248 (regTwo!32351 r!7292)))) b!5853613))

(declare-fun b!5853615 () Bool)

(declare-fun e!3589502 () Bool)

(declare-fun tp!1619359 () Bool)

(assert (=> b!5853615 (= e!3589502 tp!1619359)))

(declare-fun tp!1619360 () Bool)

(declare-fun b!5853614 () Bool)

(declare-fun e!3589501 () Bool)

(assert (=> b!5853614 (= e!3589501 (and (inv!83044 (h!70381 (t!377420 (t!377420 zl!343)))) e!3589502 tp!1619360))))

(assert (=> b!5852647 (= tp!1619052 e!3589501)))

(assert (= b!5853614 b!5853615))

(assert (= (and b!5852647 ((_ is Cons!63933) (t!377420 (t!377420 zl!343)))) b!5853614))

(declare-fun m!6772752 () Bool)

(assert (=> b!5853614 m!6772752))

(declare-fun b!5853618 () Bool)

(declare-fun e!3589503 () Bool)

(declare-fun tp!1619364 () Bool)

(assert (=> b!5853618 (= e!3589503 tp!1619364)))

(assert (=> b!5852612 (= tp!1619014 e!3589503)))

(declare-fun b!5853617 () Bool)

(declare-fun tp!1619361 () Bool)

(declare-fun tp!1619362 () Bool)

(assert (=> b!5853617 (= e!3589503 (and tp!1619361 tp!1619362))))

(declare-fun b!5853616 () Bool)

(assert (=> b!5853616 (= e!3589503 tp_is_empty!41091)))

(declare-fun b!5853619 () Bool)

(declare-fun tp!1619365 () Bool)

(declare-fun tp!1619363 () Bool)

(assert (=> b!5853619 (= e!3589503 (and tp!1619365 tp!1619363))))

(assert (= (and b!5852612 ((_ is ElementMatch!15919) (regOne!32351 (regTwo!32351 r!7292)))) b!5853616))

(assert (= (and b!5852612 ((_ is Concat!24764) (regOne!32351 (regTwo!32351 r!7292)))) b!5853617))

(assert (= (and b!5852612 ((_ is Star!15919) (regOne!32351 (regTwo!32351 r!7292)))) b!5853618))

(assert (= (and b!5852612 ((_ is Union!15919) (regOne!32351 (regTwo!32351 r!7292)))) b!5853619))

(declare-fun b!5853622 () Bool)

(declare-fun e!3589504 () Bool)

(declare-fun tp!1619369 () Bool)

(assert (=> b!5853622 (= e!3589504 tp!1619369)))

(assert (=> b!5852612 (= tp!1619012 e!3589504)))

(declare-fun b!5853621 () Bool)

(declare-fun tp!1619366 () Bool)

(declare-fun tp!1619367 () Bool)

(assert (=> b!5853621 (= e!3589504 (and tp!1619366 tp!1619367))))

(declare-fun b!5853620 () Bool)

(assert (=> b!5853620 (= e!3589504 tp_is_empty!41091)))

(declare-fun b!5853623 () Bool)

(declare-fun tp!1619370 () Bool)

(declare-fun tp!1619368 () Bool)

(assert (=> b!5853623 (= e!3589504 (and tp!1619370 tp!1619368))))

(assert (= (and b!5852612 ((_ is ElementMatch!15919) (regTwo!32351 (regTwo!32351 r!7292)))) b!5853620))

(assert (= (and b!5852612 ((_ is Concat!24764) (regTwo!32351 (regTwo!32351 r!7292)))) b!5853621))

(assert (= (and b!5852612 ((_ is Star!15919) (regTwo!32351 (regTwo!32351 r!7292)))) b!5853622))

(assert (= (and b!5852612 ((_ is Union!15919) (regTwo!32351 (regTwo!32351 r!7292)))) b!5853623))

(declare-fun b!5853624 () Bool)

(declare-fun e!3589505 () Bool)

(declare-fun tp!1619371 () Bool)

(declare-fun tp!1619372 () Bool)

(assert (=> b!5853624 (= e!3589505 (and tp!1619371 tp!1619372))))

(assert (=> b!5852648 (= tp!1619051 e!3589505)))

(assert (= (and b!5852648 ((_ is Cons!63932) (exprs!5803 (h!70381 (t!377420 zl!343))))) b!5853624))

(declare-fun b_lambda!220335 () Bool)

(assert (= b_lambda!220323 (or b!5851884 b_lambda!220335)))

(assert (=> d!1838255 d!1838041))

(declare-fun b_lambda!220337 () Bool)

(assert (= b_lambda!220307 (or d!1838031 b_lambda!220337)))

(declare-fun bs!1379298 () Bool)

(declare-fun d!1838443 () Bool)

(assert (= bs!1379298 (and d!1838443 d!1838031)))

(assert (=> bs!1379298 (= (dynLambda!24993 lambda!320009 (h!70380 (exprs!5803 setElem!39650))) (validRegex!7655 (h!70380 (exprs!5803 setElem!39650))))))

(declare-fun m!6772754 () Bool)

(assert (=> bs!1379298 m!6772754))

(assert (=> b!5853128 d!1838443))

(declare-fun b_lambda!220339 () Bool)

(assert (= b_lambda!220327 (or d!1838011 b_lambda!220339)))

(declare-fun bs!1379299 () Bool)

(declare-fun d!1838445 () Bool)

(assert (= bs!1379299 (and d!1838445 d!1838011)))

(assert (=> bs!1379299 (= (dynLambda!24993 lambda!320002 (h!70380 (exprs!5803 (h!70381 zl!343)))) (validRegex!7655 (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(declare-fun m!6772756 () Bool)

(assert (=> bs!1379299 m!6772756))

(assert (=> b!5853237 d!1838445))

(declare-fun b_lambda!220341 () Bool)

(assert (= b_lambda!220325 (or d!1837995 b_lambda!220341)))

(declare-fun bs!1379300 () Bool)

(declare-fun d!1838447 () Bool)

(assert (= bs!1379300 (and d!1838447 d!1837995)))

(assert (=> bs!1379300 (= (dynLambda!24993 lambda!319988 (h!70380 (unfocusZipperList!1340 zl!343))) (validRegex!7655 (h!70380 (unfocusZipperList!1340 zl!343))))))

(declare-fun m!6772758 () Bool)

(assert (=> bs!1379300 m!6772758))

(assert (=> b!5853220 d!1838447))

(declare-fun b_lambda!220343 () Bool)

(assert (= b_lambda!220331 (or d!1837997 b_lambda!220343)))

(declare-fun bs!1379301 () Bool)

(declare-fun d!1838449 () Bool)

(assert (= bs!1379301 (and d!1838449 d!1837997)))

(assert (=> bs!1379301 (= (dynLambda!24993 lambda!319991 (h!70380 lt!2304554)) (validRegex!7655 (h!70380 lt!2304554)))))

(declare-fun m!6772760 () Bool)

(assert (=> bs!1379301 m!6772760))

(assert (=> b!5853461 d!1838449))

(declare-fun b_lambda!220345 () Bool)

(assert (= b_lambda!220329 (or d!1838039 b_lambda!220345)))

(declare-fun bs!1379302 () Bool)

(declare-fun d!1838451 () Bool)

(assert (= bs!1379302 (and d!1838451 d!1838039)))

(assert (=> bs!1379302 (= (dynLambda!24993 lambda!320012 (h!70380 (exprs!5803 (h!70381 zl!343)))) (validRegex!7655 (h!70380 (exprs!5803 (h!70381 zl!343)))))))

(assert (=> bs!1379302 m!6772756))

(assert (=> b!5853303 d!1838451))

(declare-fun b_lambda!220347 () Bool)

(assert (= b_lambda!220333 (or d!1838013 b_lambda!220347)))

(declare-fun bs!1379303 () Bool)

(declare-fun d!1838453 () Bool)

(assert (= bs!1379303 (and d!1838453 d!1838013)))

(assert (=> bs!1379303 (= (dynLambda!24993 lambda!320003 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 (regTwo!32351 r!7292) Nil!63932))))) (validRegex!7655 (h!70380 (exprs!5803 (Context!10607 (Cons!63932 (regTwo!32351 r!7292) Nil!63932))))))))

(declare-fun m!6772762 () Bool)

(assert (=> bs!1379303 m!6772762))

(assert (=> b!5853487 d!1838453))

(check-sat (not b!5853319) (not d!1838279) (not bm!458238) (not b!5853622) (not bm!458320) (not b!5853572) (not b!5853574) (not b!5853524) (not d!1838387) (not b_lambda!220339) (not b!5853269) (not b!5853579) (not bm!458335) (not b!5853238) (not bm!458258) (not b!5853614) (not d!1838267) (not b!5853304) (not b!5853385) (not bm!458236) (not d!1838275) (not b!5853544) (not b!5853611) (not b!5853254) (not b!5853523) (not b!5853613) (not b!5853587) (not b!5853320) (not b!5853337) (not b!5853519) (not b!5853518) (not bs!1379303) (not d!1838291) (not b!5853318) (not d!1838391) (not bm!458291) (not d!1838307) (not b!5853585) (not d!1838349) (not bm!458286) (not b!5853555) (not b!5853321) (not b!5853562) (not setNonEmpty!39663) (not d!1838399) (not d!1838335) (not d!1838345) (not b!5853499) (not bs!1379302) (not b!5853511) (not bm!458272) (not b!5853502) (not bm!458332) (not b!5853564) (not bm!458290) (not b!5853245) (not b!5853250) (not b!5853531) (not bm!458314) (not bm!458255) (not bm!458251) (not b_lambda!220345) (not b!5853310) (not b!5853535) (not b!5853389) (not b!5853493) (not b!5853381) (not b!5853568) (not b!5853586) (not b!5853241) (not b!5853526) (not bm!458284) (not b!5853444) (not b!5853560) (not b!5853593) (not b_lambda!220341) (not b!5853215) (not b!5853582) (not b!5853559) (not b!5853441) (not b!5853411) (not b!5853573) (not bm!458318) (not b!5853556) (not b!5853248) (not d!1838327) (not b!5853597) (not bm!458294) (not d!1838433) (not b!5853430) (not b!5853474) (not b!5853232) (not b!5853548) (not b_lambda!220291) (not bm!458273) (not b!5853255) (not b!5853168) (not bm!458296) (not d!1838371) (not d!1838347) (not b!5853550) (not d!1838309) (not b!5853536) (not d!1838317) (not b!5853142) (not b!5853623) (not bm!458323) (not bm!458265) (not bm!458266) (not b!5853608) (not b!5853227) (not d!1838431) (not d!1838259) (not b!5853421) (not d!1838423) (not b!5853384) (not b!5853239) (not bs!1379301) (not bm!458269) (not d!1838421) (not b!5853447) (not b!5853440) (not b!5853599) (not b!5853609) (not d!1838269) (not d!1838419) (not b!5853552) (not b!5853177) (not b!5853589) (not b_lambda!220347) (not b!5853621) (not bm!458277) (not bm!458281) (not d!1838377) (not b!5853442) (not b!5853257) (not b!5853275) (not b!5853615) (not b!5853209) (not bm!458298) (not d!1838365) (not b!5853542) (not d!1838311) (not bm!458312) (not b!5853380) (not bm!458330) (not bs!1379300) (not b!5853201) (not d!1838357) (not b!5853522) (not b!5853510) (not bm!458310) (not b!5853527) tp_is_empty!41091 (not b!5853618) (not b!5853449) (not b!5853514) (not d!1838295) (not b!5853512) (not b!5853475) (not d!1838289) (not d!1838389) (not b!5853563) (not d!1838413) (not b!5853543) (not b!5853277) (not b!5853382) (not bm!458292) (not b!5853570) (not d!1838407) (not d!1838425) (not bm!458334) (not bm!458336) (not b!5853598) (not bm!458275) (not b!5853566) (not b!5853520) (not b!5853343) (not bm!458257) (not d!1838293) (not b!5853175) (not bm!458240) (not b!5853612) (not b!5853581) (not b!5853590) (not b!5853247) (not b!5853617) (not b!5853129) (not b!5853280) (not b!5853249) (not b!5853515) (not d!1838393) (not bm!458237) (not b!5853221) (not b!5853139) (not bm!458316) (not b!5853298) (not d!1838329) (not bm!458254) (not b_lambda!220337) (not b!5853538) (not b!5853546) (not b_lambda!220343) (not bm!458322) (not bm!458300) (not b!5853547) (not b!5853558) (not b!5853488) (not b!5853516) (not bm!458337) (not d!1838277) (not b!5853282) (not b!5853595) (not bm!458239) (not b_lambda!220335) (not b!5853462) (not bm!458304) (not b!5853480) (not b!5853540) (not bs!1379299) (not b!5853551) (not d!1838375) (not b!5853530) (not b!5853591) (not b!5853567) (not b!5853607) (not b!5853274) (not d!1838255) (not b!5853577) (not bm!458319) (not d!1838381) (not b!5853368) (not b!5853400) (not b!5853554) (not b!5853606) (not b!5853604) (not bm!458279) (not b!5853602) (not b!5853603) (not b!5853286) (not b!5853379) (not b!5853243) (not b!5853210) (not b!5853240) (not d!1838315) (not b!5853323) (not bm!458288) (not d!1838337) (not b!5853363) (not b!5853023) (not bm!458259) (not bm!458250) (not b!5853453) (not bm!458308) (not b!5853317) (not bm!458326) (not b!5853578) (not bm!458263) (not bm!458261) (not bm!458328) (not bm!458331) (not b!5853464) (not b!5853569) (not b!5853624) (not b!5853357) (not b!5853594) (not b!5853583) (not b!5853600) (not bm!458306) (not setNonEmpty!39664) (not b!5853477) (not b!5853362) (not b!5853539) (not b!5853435) (not b!5853575) (not bs!1379298) (not b!5853386) (not d!1838397) (not bm!458268) (not b!5853309) (not b!5853273) (not b!5853532) (not b!5853020) (not b!5853528) (not b!5853172) (not b!5853422) (not bm!458302) (not bm!458282) (not b!5853169) (not b!5853619) (not b!5853425) (not b!5853170) (not b!5853534))
(check-sat)
