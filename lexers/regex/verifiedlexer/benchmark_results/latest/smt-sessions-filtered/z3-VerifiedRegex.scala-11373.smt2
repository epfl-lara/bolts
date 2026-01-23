; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!604166 () Bool)

(assert start!604166)

(declare-fun b!5949708 () Bool)

(assert (=> b!5949708 true))

(assert (=> b!5949708 true))

(declare-fun lambda!324607 () Int)

(declare-fun lambda!324606 () Int)

(assert (=> b!5949708 (not (= lambda!324607 lambda!324606))))

(assert (=> b!5949708 true))

(assert (=> b!5949708 true))

(declare-fun b!5949712 () Bool)

(assert (=> b!5949712 true))

(declare-fun b!5949702 () Bool)

(declare-fun e!3639824 () Bool)

(declare-fun tp!1655719 () Bool)

(assert (=> b!5949702 (= e!3639824 tp!1655719)))

(declare-fun b!5949703 () Bool)

(declare-fun res!2490737 () Bool)

(declare-fun e!3639836 () Bool)

(assert (=> b!5949703 (=> res!2490737 e!3639836)))

(declare-datatypes ((C!32256 0))(
  ( (C!32257 (val!25830 Int)) )
))
(declare-datatypes ((Regex!15993 0))(
  ( (ElementMatch!15993 (c!1058556 C!32256)) (Concat!24838 (regOne!32498 Regex!15993) (regTwo!32498 Regex!15993)) (EmptyExpr!15993) (Star!15993 (reg!16322 Regex!15993)) (EmptyLang!15993) (Union!15993 (regOne!32499 Regex!15993) (regTwo!32499 Regex!15993)) )
))
(declare-fun r!7292 () Regex!15993)

(declare-datatypes ((List!64278 0))(
  ( (Nil!64154) (Cons!64154 (h!70602 Regex!15993) (t!377687 List!64278)) )
))
(declare-datatypes ((Context!10754 0))(
  ( (Context!10755 (exprs!5877 List!64278)) )
))
(declare-datatypes ((List!64279 0))(
  ( (Nil!64155) (Cons!64155 (h!70603 Context!10754) (t!377688 List!64279)) )
))
(declare-fun zl!343 () List!64279)

(declare-fun generalisedConcat!1590 (List!64278) Regex!15993)

(assert (=> b!5949703 (= res!2490737 (not (= r!7292 (generalisedConcat!1590 (exprs!5877 (h!70603 zl!343))))))))

(declare-fun b!5949705 () Bool)

(declare-fun res!2490742 () Bool)

(declare-fun e!3639830 () Bool)

(assert (=> b!5949705 (=> res!2490742 e!3639830)))

(declare-fun isEmpty!36033 (List!64278) Bool)

(assert (=> b!5949705 (= res!2490742 (not (isEmpty!36033 (t!377687 (exprs!5877 (h!70603 zl!343))))))))

(declare-fun b!5949706 () Bool)

(declare-fun e!3639829 () Bool)

(declare-fun tp!1655722 () Bool)

(declare-fun tp!1655715 () Bool)

(assert (=> b!5949706 (= e!3639829 (and tp!1655722 tp!1655715))))

(declare-fun b!5949707 () Bool)

(declare-fun res!2490738 () Bool)

(declare-fun e!3639834 () Bool)

(assert (=> b!5949707 (=> res!2490738 e!3639834)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2312981 () (InoxSet Context!10754))

(declare-datatypes ((List!64280 0))(
  ( (Nil!64156) (Cons!64156 (h!70604 C!32256) (t!377689 List!64280)) )
))
(declare-fun s!2326 () List!64280)

(declare-fun matchZipper!2029 ((InoxSet Context!10754) List!64280) Bool)

(declare-fun derivationStepZipper!1974 ((InoxSet Context!10754) C!32256) (InoxSet Context!10754))

(assert (=> b!5949707 (= res!2490738 (not (= (matchZipper!2029 lt!2312981 s!2326) (matchZipper!2029 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) (t!377689 s!2326)))))))

(assert (=> b!5949708 (= e!3639836 e!3639830)))

(declare-fun res!2490745 () Bool)

(assert (=> b!5949708 (=> res!2490745 e!3639830)))

(declare-fun lt!2312993 () Bool)

(declare-fun lt!2312999 () Bool)

(get-info :version)

(assert (=> b!5949708 (= res!2490745 (or (not (= lt!2312993 lt!2312999)) ((_ is Nil!64156) s!2326)))))

(declare-fun Exists!3063 (Int) Bool)

(assert (=> b!5949708 (= (Exists!3063 lambda!324606) (Exists!3063 lambda!324607))))

(declare-datatypes ((Unit!157257 0))(
  ( (Unit!157258) )
))
(declare-fun lt!2312990 () Unit!157257)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1600 (Regex!15993 Regex!15993 List!64280) Unit!157257)

(assert (=> b!5949708 (= lt!2312990 (lemmaExistCutMatchRandMatchRSpecEquivalent!1600 (regOne!32498 r!7292) (regTwo!32498 r!7292) s!2326))))

(assert (=> b!5949708 (= lt!2312999 (Exists!3063 lambda!324606))))

(declare-datatypes ((tuple2!65944 0))(
  ( (tuple2!65945 (_1!36275 List!64280) (_2!36275 List!64280)) )
))
(declare-datatypes ((Option!15884 0))(
  ( (None!15883) (Some!15883 (v!51986 tuple2!65944)) )
))
(declare-fun isDefined!12587 (Option!15884) Bool)

(declare-fun findConcatSeparation!2298 (Regex!15993 Regex!15993 List!64280 List!64280 List!64280) Option!15884)

(assert (=> b!5949708 (= lt!2312999 (isDefined!12587 (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) Nil!64156 s!2326 s!2326)))))

(declare-fun lt!2313000 () Unit!157257)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2062 (Regex!15993 Regex!15993 List!64280) Unit!157257)

(assert (=> b!5949708 (= lt!2313000 (lemmaFindConcatSeparationEquivalentToExists!2062 (regOne!32498 r!7292) (regTwo!32498 r!7292) s!2326))))

(declare-fun b!5949709 () Bool)

(declare-fun res!2490746 () Bool)

(assert (=> b!5949709 (=> res!2490746 e!3639836)))

(declare-fun generalisedUnion!1837 (List!64278) Regex!15993)

(declare-fun unfocusZipperList!1414 (List!64279) List!64278)

(assert (=> b!5949709 (= res!2490746 (not (= r!7292 (generalisedUnion!1837 (unfocusZipperList!1414 zl!343)))))))

(declare-fun b!5949710 () Bool)

(declare-fun res!2490730 () Bool)

(assert (=> b!5949710 (=> res!2490730 e!3639834)))

(declare-fun lt!2312998 () (InoxSet Context!10754))

(declare-fun lt!2312995 () (InoxSet Context!10754))

(declare-fun lt!2312984 () (InoxSet Context!10754))

(declare-fun lt!2312986 () (InoxSet Context!10754))

(declare-fun lt!2312994 () (InoxSet Context!10754))

(assert (=> b!5949710 (= res!2490730 (or (not (= lt!2312984 ((_ map or) lt!2312995 lt!2312986))) (not (= lt!2312984 lt!2312994)) (not (= lt!2312984 lt!2312998))))))

(declare-fun b!5949711 () Bool)

(declare-fun tp!1655717 () Bool)

(declare-fun tp!1655724 () Bool)

(assert (=> b!5949711 (= e!3639829 (and tp!1655717 tp!1655724))))

(declare-fun e!3639826 () Bool)

(declare-fun e!3639828 () Bool)

(assert (=> b!5949712 (= e!3639826 e!3639828)))

(declare-fun res!2490727 () Bool)

(assert (=> b!5949712 (=> res!2490727 e!3639828)))

(declare-fun lt!2312988 () (InoxSet Context!10754))

(assert (=> b!5949712 (= res!2490727 (not (= lt!2312998 lt!2312988)))))

(declare-fun lambda!324608 () Int)

(declare-fun z!1189 () (InoxSet Context!10754))

(declare-fun flatMap!1506 ((InoxSet Context!10754) Int) (InoxSet Context!10754))

(declare-fun derivationStepZipperUp!1169 (Context!10754 C!32256) (InoxSet Context!10754))

(assert (=> b!5949712 (= (flatMap!1506 z!1189 lambda!324608) (derivationStepZipperUp!1169 (h!70603 zl!343) (h!70604 s!2326)))))

(declare-fun lt!2312992 () Unit!157257)

(declare-fun lemmaFlatMapOnSingletonSet!1032 ((InoxSet Context!10754) Context!10754 Int) Unit!157257)

(assert (=> b!5949712 (= lt!2312992 (lemmaFlatMapOnSingletonSet!1032 z!1189 (h!70603 zl!343) lambda!324608))))

(declare-fun b!5949713 () Bool)

(declare-fun e!3639833 () Bool)

(assert (=> b!5949713 (= e!3639833 e!3639834)))

(declare-fun res!2490733 () Bool)

(assert (=> b!5949713 (=> res!2490733 e!3639834)))

(declare-fun lt!2312991 () Bool)

(assert (=> b!5949713 (= res!2490733 (not (= lt!2312991 (matchZipper!2029 lt!2312998 (t!377689 s!2326)))))))

(declare-fun lt!2313002 () Bool)

(assert (=> b!5949713 (= lt!2313002 lt!2312991)))

(declare-fun e!3639827 () Bool)

(assert (=> b!5949713 (= lt!2312991 e!3639827)))

(declare-fun res!2490729 () Bool)

(assert (=> b!5949713 (=> res!2490729 e!3639827)))

(declare-fun lt!2313003 () Bool)

(assert (=> b!5949713 (= res!2490729 lt!2313003)))

(assert (=> b!5949713 (= lt!2313002 (matchZipper!2029 lt!2312994 (t!377689 s!2326)))))

(assert (=> b!5949713 (= lt!2313003 (matchZipper!2029 lt!2312995 (t!377689 s!2326)))))

(declare-fun lt!2312985 () Unit!157257)

(declare-fun lt!2313001 () (InoxSet Context!10754))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!860 ((InoxSet Context!10754) (InoxSet Context!10754) List!64280) Unit!157257)

(assert (=> b!5949713 (= lt!2312985 (lemmaZipperConcatMatchesSameAsBothZippers!860 lt!2312995 lt!2313001 (t!377689 s!2326)))))

(declare-fun b!5949714 () Bool)

(declare-fun tp!1655720 () Bool)

(assert (=> b!5949714 (= e!3639829 tp!1655720)))

(declare-fun b!5949715 () Bool)

(declare-fun res!2490735 () Bool)

(assert (=> b!5949715 (=> res!2490735 e!3639836)))

(declare-fun isEmpty!36034 (List!64279) Bool)

(assert (=> b!5949715 (= res!2490735 (not (isEmpty!36034 (t!377688 zl!343))))))

(declare-fun b!5949716 () Bool)

(declare-fun lt!2312978 () Context!10754)

(declare-fun inv!83229 (Context!10754) Bool)

(assert (=> b!5949716 (= e!3639834 (inv!83229 lt!2312978))))

(declare-fun setIsEmpty!40431 () Bool)

(declare-fun setRes!40431 () Bool)

(assert (=> setIsEmpty!40431 setRes!40431))

(declare-fun b!5949717 () Bool)

(assert (=> b!5949717 (= e!3639830 e!3639826)))

(declare-fun res!2490741 () Bool)

(assert (=> b!5949717 (=> res!2490741 e!3639826)))

(declare-fun lt!2312983 () (InoxSet Context!10754))

(assert (=> b!5949717 (= res!2490741 (not (= lt!2312983 lt!2312988)))))

(declare-fun lt!2312989 () Context!10754)

(declare-fun derivationStepZipperDown!1243 (Regex!15993 Context!10754 C!32256) (InoxSet Context!10754))

(assert (=> b!5949717 (= lt!2312988 (derivationStepZipperDown!1243 r!7292 lt!2312989 (h!70604 s!2326)))))

(assert (=> b!5949717 (= lt!2312989 (Context!10755 Nil!64154))))

(declare-fun lt!2312982 () Context!10754)

(assert (=> b!5949717 (= lt!2312983 (derivationStepZipperUp!1169 lt!2312982 (h!70604 s!2326)))))

(assert (=> b!5949717 (= lt!2312982 (Context!10755 (Cons!64154 r!7292 Nil!64154)))))

(assert (=> b!5949717 (= lt!2312998 (derivationStepZipper!1974 z!1189 (h!70604 s!2326)))))

(declare-fun b!5949718 () Bool)

(declare-fun res!2490725 () Bool)

(assert (=> b!5949718 (=> res!2490725 e!3639836)))

(assert (=> b!5949718 (= res!2490725 (or ((_ is EmptyExpr!15993) r!7292) ((_ is EmptyLang!15993) r!7292) ((_ is ElementMatch!15993) r!7292) ((_ is Union!15993) r!7292) (not ((_ is Concat!24838) r!7292))))))

(declare-fun b!5949719 () Bool)

(declare-fun res!2490744 () Bool)

(assert (=> b!5949719 (=> res!2490744 e!3639834)))

(declare-fun lt!2312979 () (InoxSet Context!10754))

(assert (=> b!5949719 (= res!2490744 (not (= (matchZipper!2029 lt!2312979 s!2326) (matchZipper!2029 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) (t!377689 s!2326)))))))

(declare-fun b!5949704 () Bool)

(declare-fun e!3639831 () Bool)

(declare-fun tp!1655723 () Bool)

(assert (=> b!5949704 (= e!3639831 tp!1655723)))

(declare-fun res!2490740 () Bool)

(declare-fun e!3639825 () Bool)

(assert (=> start!604166 (=> (not res!2490740) (not e!3639825))))

(declare-fun validRegex!7729 (Regex!15993) Bool)

(assert (=> start!604166 (= res!2490740 (validRegex!7729 r!7292))))

(assert (=> start!604166 e!3639825))

(assert (=> start!604166 e!3639829))

(declare-fun condSetEmpty!40431 () Bool)

(assert (=> start!604166 (= condSetEmpty!40431 (= z!1189 ((as const (Array Context!10754 Bool)) false)))))

(assert (=> start!604166 setRes!40431))

(declare-fun e!3639823 () Bool)

(assert (=> start!604166 e!3639823))

(declare-fun e!3639832 () Bool)

(assert (=> start!604166 e!3639832))

(declare-fun b!5949720 () Bool)

(declare-fun e!3639835 () Bool)

(assert (=> b!5949720 (= e!3639828 e!3639835)))

(declare-fun res!2490736 () Bool)

(assert (=> b!5949720 (=> res!2490736 e!3639835)))

(declare-fun nullable!5988 (Regex!15993) Bool)

(assert (=> b!5949720 (= res!2490736 (not (nullable!5988 (regOne!32498 r!7292))))))

(assert (=> b!5949720 (= lt!2313001 (derivationStepZipperDown!1243 (regTwo!32498 r!7292) lt!2312989 (h!70604 s!2326)))))

(assert (=> b!5949720 (= lt!2312995 (derivationStepZipperDown!1243 (regOne!32498 r!7292) lt!2312978 (h!70604 s!2326)))))

(assert (=> b!5949720 (= (flatMap!1506 lt!2312979 lambda!324608) (derivationStepZipperUp!1169 lt!2312978 (h!70604 s!2326)))))

(declare-fun lt!2312980 () Unit!157257)

(assert (=> b!5949720 (= lt!2312980 (lemmaFlatMapOnSingletonSet!1032 lt!2312979 lt!2312978 lambda!324608))))

(declare-fun lt!2313004 () Context!10754)

(assert (=> b!5949720 (= (flatMap!1506 lt!2312981 lambda!324608) (derivationStepZipperUp!1169 lt!2313004 (h!70604 s!2326)))))

(declare-fun lt!2312997 () Unit!157257)

(assert (=> b!5949720 (= lt!2312997 (lemmaFlatMapOnSingletonSet!1032 lt!2312981 lt!2313004 lambda!324608))))

(assert (=> b!5949720 (= lt!2312986 (derivationStepZipperUp!1169 lt!2312978 (h!70604 s!2326)))))

(assert (=> b!5949720 (= lt!2312984 (derivationStepZipperUp!1169 lt!2313004 (h!70604 s!2326)))))

(assert (=> b!5949720 (= lt!2312979 (store ((as const (Array Context!10754 Bool)) false) lt!2312978 true))))

(declare-fun lt!2312987 () List!64278)

(assert (=> b!5949720 (= lt!2312978 (Context!10755 lt!2312987))))

(assert (=> b!5949720 (= lt!2312981 (store ((as const (Array Context!10754 Bool)) false) lt!2313004 true))))

(assert (=> b!5949720 (= lt!2313004 (Context!10755 (Cons!64154 (regOne!32498 r!7292) lt!2312987)))))

(assert (=> b!5949720 (= lt!2312987 (Cons!64154 (regTwo!32498 r!7292) Nil!64154))))

(declare-fun b!5949721 () Bool)

(declare-fun tp_is_empty!41239 () Bool)

(declare-fun tp!1655721 () Bool)

(assert (=> b!5949721 (= e!3639832 (and tp_is_empty!41239 tp!1655721))))

(declare-fun b!5949722 () Bool)

(declare-fun res!2490728 () Bool)

(assert (=> b!5949722 (=> res!2490728 e!3639834)))

(declare-fun contextDepth!141 (Context!10754) Int)

(assert (=> b!5949722 (= res!2490728 (>= (contextDepth!141 lt!2313004) (contextDepth!141 lt!2312982)))))

(declare-fun setNonEmpty!40431 () Bool)

(declare-fun tp!1655716 () Bool)

(declare-fun setElem!40431 () Context!10754)

(assert (=> setNonEmpty!40431 (= setRes!40431 (and tp!1655716 (inv!83229 setElem!40431) e!3639824))))

(declare-fun setRest!40431 () (InoxSet Context!10754))

(assert (=> setNonEmpty!40431 (= z!1189 ((_ map or) (store ((as const (Array Context!10754 Bool)) false) setElem!40431 true) setRest!40431))))

(declare-fun b!5949723 () Bool)

(assert (=> b!5949723 (= e!3639827 (matchZipper!2029 lt!2313001 (t!377689 s!2326)))))

(declare-fun b!5949724 () Bool)

(declare-fun tp!1655718 () Bool)

(assert (=> b!5949724 (= e!3639823 (and (inv!83229 (h!70603 zl!343)) e!3639831 tp!1655718))))

(declare-fun b!5949725 () Bool)

(declare-fun res!2490743 () Bool)

(assert (=> b!5949725 (=> (not res!2490743) (not e!3639825))))

(declare-fun toList!9777 ((InoxSet Context!10754)) List!64279)

(assert (=> b!5949725 (= res!2490743 (= (toList!9777 z!1189) zl!343))))

(declare-fun b!5949726 () Bool)

(assert (=> b!5949726 (= e!3639835 e!3639833)))

(declare-fun res!2490739 () Bool)

(assert (=> b!5949726 (=> res!2490739 e!3639833)))

(assert (=> b!5949726 (= res!2490739 (not (= lt!2312998 lt!2312994)))))

(assert (=> b!5949726 (= lt!2312994 ((_ map or) lt!2312995 lt!2313001))))

(declare-fun b!5949727 () Bool)

(assert (=> b!5949727 (= e!3639825 (not e!3639836))))

(declare-fun res!2490731 () Bool)

(assert (=> b!5949727 (=> res!2490731 e!3639836)))

(assert (=> b!5949727 (= res!2490731 (not ((_ is Cons!64155) zl!343)))))

(declare-fun matchRSpec!3094 (Regex!15993 List!64280) Bool)

(assert (=> b!5949727 (= lt!2312993 (matchRSpec!3094 r!7292 s!2326))))

(declare-fun matchR!8176 (Regex!15993 List!64280) Bool)

(assert (=> b!5949727 (= lt!2312993 (matchR!8176 r!7292 s!2326))))

(declare-fun lt!2312996 () Unit!157257)

(declare-fun mainMatchTheorem!3094 (Regex!15993 List!64280) Unit!157257)

(assert (=> b!5949727 (= lt!2312996 (mainMatchTheorem!3094 r!7292 s!2326))))

(declare-fun b!5949728 () Bool)

(declare-fun res!2490726 () Bool)

(assert (=> b!5949728 (=> res!2490726 e!3639836)))

(assert (=> b!5949728 (= res!2490726 (not ((_ is Cons!64154) (exprs!5877 (h!70603 zl!343)))))))

(declare-fun b!5949729 () Bool)

(declare-fun res!2490732 () Bool)

(assert (=> b!5949729 (=> (not res!2490732) (not e!3639825))))

(declare-fun unfocusZipper!1735 (List!64279) Regex!15993)

(assert (=> b!5949729 (= res!2490732 (= r!7292 (unfocusZipper!1735 zl!343)))))

(declare-fun b!5949730 () Bool)

(assert (=> b!5949730 (= e!3639829 tp_is_empty!41239)))

(declare-fun b!5949731 () Bool)

(declare-fun res!2490734 () Bool)

(assert (=> b!5949731 (=> res!2490734 e!3639834)))

(declare-fun zipperDepth!242 (List!64279) Int)

(assert (=> b!5949731 (= res!2490734 (>= (zipperDepth!242 (Cons!64155 lt!2313004 Nil!64155)) (zipperDepth!242 (Cons!64155 lt!2312982 Nil!64155))))))

(assert (= (and start!604166 res!2490740) b!5949725))

(assert (= (and b!5949725 res!2490743) b!5949729))

(assert (= (and b!5949729 res!2490732) b!5949727))

(assert (= (and b!5949727 (not res!2490731)) b!5949715))

(assert (= (and b!5949715 (not res!2490735)) b!5949703))

(assert (= (and b!5949703 (not res!2490737)) b!5949728))

(assert (= (and b!5949728 (not res!2490726)) b!5949709))

(assert (= (and b!5949709 (not res!2490746)) b!5949718))

(assert (= (and b!5949718 (not res!2490725)) b!5949708))

(assert (= (and b!5949708 (not res!2490745)) b!5949705))

(assert (= (and b!5949705 (not res!2490742)) b!5949717))

(assert (= (and b!5949717 (not res!2490741)) b!5949712))

(assert (= (and b!5949712 (not res!2490727)) b!5949720))

(assert (= (and b!5949720 (not res!2490736)) b!5949726))

(assert (= (and b!5949726 (not res!2490739)) b!5949713))

(assert (= (and b!5949713 (not res!2490729)) b!5949723))

(assert (= (and b!5949713 (not res!2490733)) b!5949710))

(assert (= (and b!5949710 (not res!2490730)) b!5949707))

(assert (= (and b!5949707 (not res!2490738)) b!5949719))

(assert (= (and b!5949719 (not res!2490744)) b!5949722))

(assert (= (and b!5949722 (not res!2490728)) b!5949731))

(assert (= (and b!5949731 (not res!2490734)) b!5949716))

(assert (= (and start!604166 ((_ is ElementMatch!15993) r!7292)) b!5949730))

(assert (= (and start!604166 ((_ is Concat!24838) r!7292)) b!5949706))

(assert (= (and start!604166 ((_ is Star!15993) r!7292)) b!5949714))

(assert (= (and start!604166 ((_ is Union!15993) r!7292)) b!5949711))

(assert (= (and start!604166 condSetEmpty!40431) setIsEmpty!40431))

(assert (= (and start!604166 (not condSetEmpty!40431)) setNonEmpty!40431))

(assert (= setNonEmpty!40431 b!5949702))

(assert (= b!5949724 b!5949704))

(assert (= (and start!604166 ((_ is Cons!64155) zl!343)) b!5949724))

(assert (= (and start!604166 ((_ is Cons!64156) s!2326)) b!5949721))

(declare-fun m!6837568 () Bool)

(assert (=> b!5949727 m!6837568))

(declare-fun m!6837570 () Bool)

(assert (=> b!5949727 m!6837570))

(declare-fun m!6837572 () Bool)

(assert (=> b!5949727 m!6837572))

(declare-fun m!6837574 () Bool)

(assert (=> b!5949707 m!6837574))

(declare-fun m!6837576 () Bool)

(assert (=> b!5949707 m!6837576))

(assert (=> b!5949707 m!6837576))

(declare-fun m!6837578 () Bool)

(assert (=> b!5949707 m!6837578))

(declare-fun m!6837580 () Bool)

(assert (=> b!5949712 m!6837580))

(declare-fun m!6837582 () Bool)

(assert (=> b!5949712 m!6837582))

(declare-fun m!6837584 () Bool)

(assert (=> b!5949712 m!6837584))

(declare-fun m!6837586 () Bool)

(assert (=> b!5949731 m!6837586))

(declare-fun m!6837588 () Bool)

(assert (=> b!5949731 m!6837588))

(declare-fun m!6837590 () Bool)

(assert (=> b!5949709 m!6837590))

(assert (=> b!5949709 m!6837590))

(declare-fun m!6837592 () Bool)

(assert (=> b!5949709 m!6837592))

(declare-fun m!6837594 () Bool)

(assert (=> b!5949716 m!6837594))

(declare-fun m!6837596 () Bool)

(assert (=> b!5949708 m!6837596))

(declare-fun m!6837598 () Bool)

(assert (=> b!5949708 m!6837598))

(declare-fun m!6837600 () Bool)

(assert (=> b!5949708 m!6837600))

(declare-fun m!6837602 () Bool)

(assert (=> b!5949708 m!6837602))

(assert (=> b!5949708 m!6837600))

(declare-fun m!6837604 () Bool)

(assert (=> b!5949708 m!6837604))

(assert (=> b!5949708 m!6837596))

(declare-fun m!6837606 () Bool)

(assert (=> b!5949708 m!6837606))

(declare-fun m!6837608 () Bool)

(assert (=> b!5949703 m!6837608))

(declare-fun m!6837610 () Bool)

(assert (=> setNonEmpty!40431 m!6837610))

(declare-fun m!6837612 () Bool)

(assert (=> b!5949720 m!6837612))

(declare-fun m!6837614 () Bool)

(assert (=> b!5949720 m!6837614))

(declare-fun m!6837616 () Bool)

(assert (=> b!5949720 m!6837616))

(declare-fun m!6837618 () Bool)

(assert (=> b!5949720 m!6837618))

(declare-fun m!6837620 () Bool)

(assert (=> b!5949720 m!6837620))

(declare-fun m!6837622 () Bool)

(assert (=> b!5949720 m!6837622))

(declare-fun m!6837624 () Bool)

(assert (=> b!5949720 m!6837624))

(declare-fun m!6837626 () Bool)

(assert (=> b!5949720 m!6837626))

(declare-fun m!6837628 () Bool)

(assert (=> b!5949720 m!6837628))

(declare-fun m!6837630 () Bool)

(assert (=> b!5949720 m!6837630))

(declare-fun m!6837632 () Bool)

(assert (=> b!5949720 m!6837632))

(declare-fun m!6837634 () Bool)

(assert (=> b!5949705 m!6837634))

(declare-fun m!6837636 () Bool)

(assert (=> b!5949724 m!6837636))

(declare-fun m!6837638 () Bool)

(assert (=> b!5949719 m!6837638))

(declare-fun m!6837640 () Bool)

(assert (=> b!5949719 m!6837640))

(assert (=> b!5949719 m!6837640))

(declare-fun m!6837642 () Bool)

(assert (=> b!5949719 m!6837642))

(declare-fun m!6837644 () Bool)

(assert (=> b!5949725 m!6837644))

(declare-fun m!6837646 () Bool)

(assert (=> start!604166 m!6837646))

(declare-fun m!6837648 () Bool)

(assert (=> b!5949729 m!6837648))

(declare-fun m!6837650 () Bool)

(assert (=> b!5949723 m!6837650))

(declare-fun m!6837652 () Bool)

(assert (=> b!5949717 m!6837652))

(declare-fun m!6837654 () Bool)

(assert (=> b!5949717 m!6837654))

(declare-fun m!6837656 () Bool)

(assert (=> b!5949717 m!6837656))

(declare-fun m!6837658 () Bool)

(assert (=> b!5949715 m!6837658))

(declare-fun m!6837660 () Bool)

(assert (=> b!5949722 m!6837660))

(declare-fun m!6837662 () Bool)

(assert (=> b!5949722 m!6837662))

(declare-fun m!6837664 () Bool)

(assert (=> b!5949713 m!6837664))

(declare-fun m!6837666 () Bool)

(assert (=> b!5949713 m!6837666))

(declare-fun m!6837668 () Bool)

(assert (=> b!5949713 m!6837668))

(declare-fun m!6837670 () Bool)

(assert (=> b!5949713 m!6837670))

(check-sat (not b!5949702) (not b!5949709) (not b!5949708) (not start!604166) (not b!5949722) (not b!5949724) (not b!5949729) (not b!5949706) (not b!5949727) (not b!5949705) (not b!5949720) (not b!5949717) (not b!5949716) (not setNonEmpty!40431) (not b!5949714) tp_is_empty!41239 (not b!5949715) (not b!5949711) (not b!5949713) (not b!5949721) (not b!5949704) (not b!5949719) (not b!5949731) (not b!5949703) (not b!5949707) (not b!5949712) (not b!5949723) (not b!5949725))
(check-sat)
(get-model)

(declare-fun b!5949848 () Bool)

(declare-fun e!3639911 () Bool)

(declare-fun e!3639908 () Bool)

(assert (=> b!5949848 (= e!3639911 e!3639908)))

(declare-fun res!2490807 () Bool)

(assert (=> b!5949848 (= res!2490807 (not (nullable!5988 (reg!16322 r!7292))))))

(assert (=> b!5949848 (=> (not res!2490807) (not e!3639908))))

(declare-fun c!1058583 () Bool)

(declare-fun c!1058584 () Bool)

(declare-fun call!473787 () Bool)

(declare-fun bm!473781 () Bool)

(assert (=> bm!473781 (= call!473787 (validRegex!7729 (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))))))

(declare-fun b!5949849 () Bool)

(declare-fun e!3639914 () Bool)

(assert (=> b!5949849 (= e!3639914 e!3639911)))

(assert (=> b!5949849 (= c!1058583 ((_ is Star!15993) r!7292))))

(declare-fun bm!473782 () Bool)

(declare-fun call!473786 () Bool)

(assert (=> bm!473782 (= call!473786 (validRegex!7729 (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))))))

(declare-fun b!5949850 () Bool)

(declare-fun e!3639913 () Bool)

(declare-fun call!473788 () Bool)

(assert (=> b!5949850 (= e!3639913 call!473788)))

(declare-fun b!5949851 () Bool)

(declare-fun res!2490806 () Bool)

(assert (=> b!5949851 (=> (not res!2490806) (not e!3639913))))

(assert (=> b!5949851 (= res!2490806 call!473786)))

(declare-fun e!3639912 () Bool)

(assert (=> b!5949851 (= e!3639912 e!3639913)))

(declare-fun bm!473783 () Bool)

(assert (=> bm!473783 (= call!473788 call!473787)))

(declare-fun b!5949852 () Bool)

(declare-fun e!3639910 () Bool)

(declare-fun e!3639909 () Bool)

(assert (=> b!5949852 (= e!3639910 e!3639909)))

(declare-fun res!2490804 () Bool)

(assert (=> b!5949852 (=> (not res!2490804) (not e!3639909))))

(assert (=> b!5949852 (= res!2490804 call!473786)))

(declare-fun b!5949853 () Bool)

(assert (=> b!5949853 (= e!3639911 e!3639912)))

(assert (=> b!5949853 (= c!1058584 ((_ is Union!15993) r!7292))))

(declare-fun b!5949854 () Bool)

(assert (=> b!5949854 (= e!3639909 call!473788)))

(declare-fun b!5949855 () Bool)

(assert (=> b!5949855 (= e!3639908 call!473787)))

(declare-fun b!5949847 () Bool)

(declare-fun res!2490805 () Bool)

(assert (=> b!5949847 (=> res!2490805 e!3639910)))

(assert (=> b!5949847 (= res!2490805 (not ((_ is Concat!24838) r!7292)))))

(assert (=> b!5949847 (= e!3639912 e!3639910)))

(declare-fun d!1865196 () Bool)

(declare-fun res!2490808 () Bool)

(assert (=> d!1865196 (=> res!2490808 e!3639914)))

(assert (=> d!1865196 (= res!2490808 ((_ is ElementMatch!15993) r!7292))))

(assert (=> d!1865196 (= (validRegex!7729 r!7292) e!3639914)))

(assert (= (and d!1865196 (not res!2490808)) b!5949849))

(assert (= (and b!5949849 c!1058583) b!5949848))

(assert (= (and b!5949849 (not c!1058583)) b!5949853))

(assert (= (and b!5949848 res!2490807) b!5949855))

(assert (= (and b!5949853 c!1058584) b!5949851))

(assert (= (and b!5949853 (not c!1058584)) b!5949847))

(assert (= (and b!5949851 res!2490806) b!5949850))

(assert (= (and b!5949847 (not res!2490805)) b!5949852))

(assert (= (and b!5949852 res!2490804) b!5949854))

(assert (= (or b!5949850 b!5949854) bm!473783))

(assert (= (or b!5949851 b!5949852) bm!473782))

(assert (= (or b!5949855 bm!473783) bm!473781))

(declare-fun m!6837728 () Bool)

(assert (=> b!5949848 m!6837728))

(declare-fun m!6837730 () Bool)

(assert (=> bm!473781 m!6837730))

(declare-fun m!6837732 () Bool)

(assert (=> bm!473782 m!6837732))

(assert (=> start!604166 d!1865196))

(declare-fun d!1865198 () Bool)

(declare-fun c!1058596 () Bool)

(declare-fun isEmpty!36036 (List!64280) Bool)

(assert (=> d!1865198 (= c!1058596 (isEmpty!36036 (t!377689 s!2326)))))

(declare-fun e!3639929 () Bool)

(assert (=> d!1865198 (= (matchZipper!2029 lt!2312998 (t!377689 s!2326)) e!3639929)))

(declare-fun b!5949881 () Bool)

(declare-fun nullableZipper!1799 ((InoxSet Context!10754)) Bool)

(assert (=> b!5949881 (= e!3639929 (nullableZipper!1799 lt!2312998))))

(declare-fun b!5949882 () Bool)

(declare-fun head!12525 (List!64280) C!32256)

(declare-fun tail!11610 (List!64280) List!64280)

(assert (=> b!5949882 (= e!3639929 (matchZipper!2029 (derivationStepZipper!1974 lt!2312998 (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))))))

(assert (= (and d!1865198 c!1058596) b!5949881))

(assert (= (and d!1865198 (not c!1058596)) b!5949882))

(declare-fun m!6837742 () Bool)

(assert (=> d!1865198 m!6837742))

(declare-fun m!6837744 () Bool)

(assert (=> b!5949881 m!6837744))

(declare-fun m!6837746 () Bool)

(assert (=> b!5949882 m!6837746))

(assert (=> b!5949882 m!6837746))

(declare-fun m!6837748 () Bool)

(assert (=> b!5949882 m!6837748))

(declare-fun m!6837750 () Bool)

(assert (=> b!5949882 m!6837750))

(assert (=> b!5949882 m!6837748))

(assert (=> b!5949882 m!6837750))

(declare-fun m!6837752 () Bool)

(assert (=> b!5949882 m!6837752))

(assert (=> b!5949713 d!1865198))

(declare-fun d!1865202 () Bool)

(declare-fun c!1058597 () Bool)

(assert (=> d!1865202 (= c!1058597 (isEmpty!36036 (t!377689 s!2326)))))

(declare-fun e!3639930 () Bool)

(assert (=> d!1865202 (= (matchZipper!2029 lt!2312994 (t!377689 s!2326)) e!3639930)))

(declare-fun b!5949883 () Bool)

(assert (=> b!5949883 (= e!3639930 (nullableZipper!1799 lt!2312994))))

(declare-fun b!5949884 () Bool)

(assert (=> b!5949884 (= e!3639930 (matchZipper!2029 (derivationStepZipper!1974 lt!2312994 (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))))))

(assert (= (and d!1865202 c!1058597) b!5949883))

(assert (= (and d!1865202 (not c!1058597)) b!5949884))

(assert (=> d!1865202 m!6837742))

(declare-fun m!6837754 () Bool)

(assert (=> b!5949883 m!6837754))

(assert (=> b!5949884 m!6837746))

(assert (=> b!5949884 m!6837746))

(declare-fun m!6837756 () Bool)

(assert (=> b!5949884 m!6837756))

(assert (=> b!5949884 m!6837750))

(assert (=> b!5949884 m!6837756))

(assert (=> b!5949884 m!6837750))

(declare-fun m!6837758 () Bool)

(assert (=> b!5949884 m!6837758))

(assert (=> b!5949713 d!1865202))

(declare-fun d!1865204 () Bool)

(declare-fun c!1058598 () Bool)

(assert (=> d!1865204 (= c!1058598 (isEmpty!36036 (t!377689 s!2326)))))

(declare-fun e!3639931 () Bool)

(assert (=> d!1865204 (= (matchZipper!2029 lt!2312995 (t!377689 s!2326)) e!3639931)))

(declare-fun b!5949885 () Bool)

(assert (=> b!5949885 (= e!3639931 (nullableZipper!1799 lt!2312995))))

(declare-fun b!5949886 () Bool)

(assert (=> b!5949886 (= e!3639931 (matchZipper!2029 (derivationStepZipper!1974 lt!2312995 (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))))))

(assert (= (and d!1865204 c!1058598) b!5949885))

(assert (= (and d!1865204 (not c!1058598)) b!5949886))

(assert (=> d!1865204 m!6837742))

(declare-fun m!6837760 () Bool)

(assert (=> b!5949885 m!6837760))

(assert (=> b!5949886 m!6837746))

(assert (=> b!5949886 m!6837746))

(declare-fun m!6837762 () Bool)

(assert (=> b!5949886 m!6837762))

(assert (=> b!5949886 m!6837750))

(assert (=> b!5949886 m!6837762))

(assert (=> b!5949886 m!6837750))

(declare-fun m!6837764 () Bool)

(assert (=> b!5949886 m!6837764))

(assert (=> b!5949713 d!1865204))

(declare-fun d!1865206 () Bool)

(declare-fun e!3639937 () Bool)

(assert (=> d!1865206 (= (matchZipper!2029 ((_ map or) lt!2312995 lt!2313001) (t!377689 s!2326)) e!3639937)))

(declare-fun res!2490815 () Bool)

(assert (=> d!1865206 (=> res!2490815 e!3639937)))

(assert (=> d!1865206 (= res!2490815 (matchZipper!2029 lt!2312995 (t!377689 s!2326)))))

(declare-fun lt!2313025 () Unit!157257)

(declare-fun choose!44832 ((InoxSet Context!10754) (InoxSet Context!10754) List!64280) Unit!157257)

(assert (=> d!1865206 (= lt!2313025 (choose!44832 lt!2312995 lt!2313001 (t!377689 s!2326)))))

(assert (=> d!1865206 (= (lemmaZipperConcatMatchesSameAsBothZippers!860 lt!2312995 lt!2313001 (t!377689 s!2326)) lt!2313025)))

(declare-fun b!5949896 () Bool)

(assert (=> b!5949896 (= e!3639937 (matchZipper!2029 lt!2313001 (t!377689 s!2326)))))

(assert (= (and d!1865206 (not res!2490815)) b!5949896))

(declare-fun m!6837774 () Bool)

(assert (=> d!1865206 m!6837774))

(assert (=> d!1865206 m!6837668))

(declare-fun m!6837776 () Bool)

(assert (=> d!1865206 m!6837776))

(assert (=> b!5949896 m!6837650))

(assert (=> b!5949713 d!1865206))

(declare-fun b!5949939 () Bool)

(assert (=> b!5949939 true))

(declare-fun bs!1408923 () Bool)

(declare-fun b!5949941 () Bool)

(assert (= bs!1408923 (and b!5949941 b!5949939)))

(declare-fun lambda!324632 () Int)

(declare-fun lt!2313039 () Int)

(declare-fun lambda!324633 () Int)

(declare-fun lt!2313037 () Int)

(assert (=> bs!1408923 (= (= lt!2313039 lt!2313037) (= lambda!324633 lambda!324632))))

(assert (=> b!5949941 true))

(declare-fun d!1865212 () Bool)

(declare-fun e!3639964 () Bool)

(assert (=> d!1865212 e!3639964))

(declare-fun res!2490824 () Bool)

(assert (=> d!1865212 (=> (not res!2490824) (not e!3639964))))

(assert (=> d!1865212 (= res!2490824 (>= lt!2313039 0))))

(declare-fun e!3639963 () Int)

(assert (=> d!1865212 (= lt!2313039 e!3639963)))

(declare-fun c!1058621 () Bool)

(assert (=> d!1865212 (= c!1058621 ((_ is Cons!64154) (exprs!5877 lt!2313004)))))

(assert (=> d!1865212 (= (contextDepth!141 lt!2313004) lt!2313039)))

(assert (=> b!5949939 (= e!3639963 lt!2313037)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun regexDepth!249 (Regex!15993) Int)

(assert (=> b!5949939 (= lt!2313037 (maxBigInt!0 (regexDepth!249 (h!70602 (exprs!5877 lt!2313004))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))))))

(declare-fun lt!2313040 () Unit!157257)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!41 (List!64278 Int Int) Unit!157257)

(assert (=> b!5949939 (= lt!2313040 (lemmaForallRegexDepthBiggerThanTransitive!41 (t!377687 (exprs!5877 lt!2313004)) lt!2313037 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))))))

(declare-fun forall!15076 (List!64278 Int) Bool)

(assert (=> b!5949939 (forall!15076 (t!377687 (exprs!5877 lt!2313004)) lambda!324632)))

(declare-fun lt!2313038 () Unit!157257)

(assert (=> b!5949939 (= lt!2313038 lt!2313040)))

(declare-fun b!5949940 () Bool)

(assert (=> b!5949940 (= e!3639963 0)))

(assert (=> b!5949941 (= e!3639964 (forall!15076 (exprs!5877 lt!2313004) lambda!324633))))

(assert (= (and d!1865212 c!1058621) b!5949939))

(assert (= (and d!1865212 (not c!1058621)) b!5949940))

(assert (= (and d!1865212 res!2490824) b!5949941))

(declare-fun m!6837810 () Bool)

(assert (=> b!5949939 m!6837810))

(declare-fun m!6837812 () Bool)

(assert (=> b!5949939 m!6837812))

(assert (=> b!5949939 m!6837810))

(declare-fun m!6837814 () Bool)

(assert (=> b!5949939 m!6837814))

(assert (=> b!5949939 m!6837812))

(declare-fun m!6837816 () Bool)

(assert (=> b!5949939 m!6837816))

(assert (=> b!5949939 m!6837810))

(declare-fun m!6837818 () Bool)

(assert (=> b!5949939 m!6837818))

(declare-fun m!6837820 () Bool)

(assert (=> b!5949941 m!6837820))

(assert (=> b!5949722 d!1865212))

(declare-fun bs!1408924 () Bool)

(declare-fun b!5949944 () Bool)

(assert (= bs!1408924 (and b!5949944 b!5949939)))

(declare-fun lambda!324634 () Int)

(declare-fun lt!2313041 () Int)

(assert (=> bs!1408924 (= (= lt!2313041 lt!2313037) (= lambda!324634 lambda!324632))))

(declare-fun bs!1408925 () Bool)

(assert (= bs!1408925 (and b!5949944 b!5949941)))

(assert (=> bs!1408925 (= (= lt!2313041 lt!2313039) (= lambda!324634 lambda!324633))))

(assert (=> b!5949944 true))

(declare-fun bs!1408926 () Bool)

(declare-fun b!5949946 () Bool)

(assert (= bs!1408926 (and b!5949946 b!5949939)))

(declare-fun lambda!324635 () Int)

(declare-fun lt!2313043 () Int)

(assert (=> bs!1408926 (= (= lt!2313043 lt!2313037) (= lambda!324635 lambda!324632))))

(declare-fun bs!1408927 () Bool)

(assert (= bs!1408927 (and b!5949946 b!5949941)))

(assert (=> bs!1408927 (= (= lt!2313043 lt!2313039) (= lambda!324635 lambda!324633))))

(declare-fun bs!1408928 () Bool)

(assert (= bs!1408928 (and b!5949946 b!5949944)))

(assert (=> bs!1408928 (= (= lt!2313043 lt!2313041) (= lambda!324635 lambda!324634))))

(assert (=> b!5949946 true))

(declare-fun d!1865218 () Bool)

(declare-fun e!3639966 () Bool)

(assert (=> d!1865218 e!3639966))

(declare-fun res!2490825 () Bool)

(assert (=> d!1865218 (=> (not res!2490825) (not e!3639966))))

(assert (=> d!1865218 (= res!2490825 (>= lt!2313043 0))))

(declare-fun e!3639965 () Int)

(assert (=> d!1865218 (= lt!2313043 e!3639965)))

(declare-fun c!1058622 () Bool)

(assert (=> d!1865218 (= c!1058622 ((_ is Cons!64154) (exprs!5877 lt!2312982)))))

(assert (=> d!1865218 (= (contextDepth!141 lt!2312982) lt!2313043)))

(assert (=> b!5949944 (= e!3639965 lt!2313041)))

(assert (=> b!5949944 (= lt!2313041 (maxBigInt!0 (regexDepth!249 (h!70602 (exprs!5877 lt!2312982))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))))))

(declare-fun lt!2313044 () Unit!157257)

(assert (=> b!5949944 (= lt!2313044 (lemmaForallRegexDepthBiggerThanTransitive!41 (t!377687 (exprs!5877 lt!2312982)) lt!2313041 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))))))

(assert (=> b!5949944 (forall!15076 (t!377687 (exprs!5877 lt!2312982)) lambda!324634)))

(declare-fun lt!2313042 () Unit!157257)

(assert (=> b!5949944 (= lt!2313042 lt!2313044)))

(declare-fun b!5949945 () Bool)

(assert (=> b!5949945 (= e!3639965 0)))

(assert (=> b!5949946 (= e!3639966 (forall!15076 (exprs!5877 lt!2312982) lambda!324635))))

(assert (= (and d!1865218 c!1058622) b!5949944))

(assert (= (and d!1865218 (not c!1058622)) b!5949945))

(assert (= (and d!1865218 res!2490825) b!5949946))

(declare-fun m!6837822 () Bool)

(assert (=> b!5949944 m!6837822))

(declare-fun m!6837824 () Bool)

(assert (=> b!5949944 m!6837824))

(assert (=> b!5949944 m!6837822))

(declare-fun m!6837826 () Bool)

(assert (=> b!5949944 m!6837826))

(assert (=> b!5949944 m!6837824))

(declare-fun m!6837828 () Bool)

(assert (=> b!5949944 m!6837828))

(assert (=> b!5949944 m!6837822))

(declare-fun m!6837830 () Bool)

(assert (=> b!5949944 m!6837830))

(declare-fun m!6837832 () Bool)

(assert (=> b!5949946 m!6837832))

(assert (=> b!5949722 d!1865218))

(declare-fun d!1865220 () Bool)

(declare-fun choose!44833 ((InoxSet Context!10754) Int) (InoxSet Context!10754))

(assert (=> d!1865220 (= (flatMap!1506 z!1189 lambda!324608) (choose!44833 z!1189 lambda!324608))))

(declare-fun bs!1408929 () Bool)

(assert (= bs!1408929 d!1865220))

(declare-fun m!6837834 () Bool)

(assert (=> bs!1408929 m!6837834))

(assert (=> b!5949712 d!1865220))

(declare-fun call!473812 () (InoxSet Context!10754))

(declare-fun e!3639989 () (InoxSet Context!10754))

(declare-fun b!5949985 () Bool)

(assert (=> b!5949985 (= e!3639989 ((_ map or) call!473812 (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))) (h!70604 s!2326))))))

(declare-fun b!5949986 () Bool)

(declare-fun e!3639990 () (InoxSet Context!10754))

(assert (=> b!5949986 (= e!3639989 e!3639990)))

(declare-fun c!1058640 () Bool)

(assert (=> b!5949986 (= c!1058640 ((_ is Cons!64154) (exprs!5877 (h!70603 zl!343))))))

(declare-fun b!5949987 () Bool)

(assert (=> b!5949987 (= e!3639990 call!473812)))

(declare-fun d!1865222 () Bool)

(declare-fun c!1058641 () Bool)

(declare-fun e!3639988 () Bool)

(assert (=> d!1865222 (= c!1058641 e!3639988)))

(declare-fun res!2490830 () Bool)

(assert (=> d!1865222 (=> (not res!2490830) (not e!3639988))))

(assert (=> d!1865222 (= res!2490830 ((_ is Cons!64154) (exprs!5877 (h!70603 zl!343))))))

(assert (=> d!1865222 (= (derivationStepZipperUp!1169 (h!70603 zl!343) (h!70604 s!2326)) e!3639989)))

(declare-fun bm!473807 () Bool)

(assert (=> bm!473807 (= call!473812 (derivationStepZipperDown!1243 (h!70602 (exprs!5877 (h!70603 zl!343))) (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))) (h!70604 s!2326)))))

(declare-fun b!5949988 () Bool)

(assert (=> b!5949988 (= e!3639990 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5949989 () Bool)

(assert (=> b!5949989 (= e!3639988 (nullable!5988 (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(assert (= (and d!1865222 res!2490830) b!5949989))

(assert (= (and d!1865222 c!1058641) b!5949985))

(assert (= (and d!1865222 (not c!1058641)) b!5949986))

(assert (= (and b!5949986 c!1058640) b!5949987))

(assert (= (and b!5949986 (not c!1058640)) b!5949988))

(assert (= (or b!5949985 b!5949987) bm!473807))

(declare-fun m!6837866 () Bool)

(assert (=> b!5949985 m!6837866))

(declare-fun m!6837868 () Bool)

(assert (=> bm!473807 m!6837868))

(declare-fun m!6837872 () Bool)

(assert (=> b!5949989 m!6837872))

(assert (=> b!5949712 d!1865222))

(declare-fun d!1865238 () Bool)

(declare-fun dynLambda!25095 (Int Context!10754) (InoxSet Context!10754))

(assert (=> d!1865238 (= (flatMap!1506 z!1189 lambda!324608) (dynLambda!25095 lambda!324608 (h!70603 zl!343)))))

(declare-fun lt!2313052 () Unit!157257)

(declare-fun choose!44834 ((InoxSet Context!10754) Context!10754 Int) Unit!157257)

(assert (=> d!1865238 (= lt!2313052 (choose!44834 z!1189 (h!70603 zl!343) lambda!324608))))

(assert (=> d!1865238 (= z!1189 (store ((as const (Array Context!10754 Bool)) false) (h!70603 zl!343) true))))

(assert (=> d!1865238 (= (lemmaFlatMapOnSingletonSet!1032 z!1189 (h!70603 zl!343) lambda!324608) lt!2313052)))

(declare-fun b_lambda!223571 () Bool)

(assert (=> (not b_lambda!223571) (not d!1865238)))

(declare-fun bs!1408936 () Bool)

(assert (= bs!1408936 d!1865238))

(assert (=> bs!1408936 m!6837580))

(declare-fun m!6837875 () Bool)

(assert (=> bs!1408936 m!6837875))

(declare-fun m!6837880 () Bool)

(assert (=> bs!1408936 m!6837880))

(declare-fun m!6837882 () Bool)

(assert (=> bs!1408936 m!6837882))

(assert (=> b!5949712 d!1865238))

(declare-fun b!5950034 () Bool)

(assert (=> b!5950034 true))

(declare-fun bs!1408939 () Bool)

(declare-fun b!5950036 () Bool)

(assert (= bs!1408939 (and b!5950036 b!5950034)))

(declare-fun lt!2313065 () Int)

(declare-fun lambda!324650 () Int)

(declare-fun lambda!324651 () Int)

(declare-fun lt!2313064 () Int)

(assert (=> bs!1408939 (= (= lt!2313065 lt!2313064) (= lambda!324651 lambda!324650))))

(assert (=> b!5950036 true))

(declare-fun d!1865242 () Bool)

(declare-fun e!3640018 () Bool)

(assert (=> d!1865242 e!3640018))

(declare-fun res!2490847 () Bool)

(assert (=> d!1865242 (=> (not res!2490847) (not e!3640018))))

(assert (=> d!1865242 (= res!2490847 (>= lt!2313065 0))))

(declare-fun e!3640017 () Int)

(assert (=> d!1865242 (= lt!2313065 e!3640017)))

(declare-fun c!1058662 () Bool)

(assert (=> d!1865242 (= c!1058662 ((_ is Cons!64155) (Cons!64155 lt!2313004 Nil!64155)))))

(assert (=> d!1865242 (= (zipperDepth!242 (Cons!64155 lt!2313004 Nil!64155)) lt!2313065)))

(assert (=> b!5950034 (= e!3640017 lt!2313064)))

(assert (=> b!5950034 (= lt!2313064 (maxBigInt!0 (contextDepth!141 (h!70603 (Cons!64155 lt!2313004 Nil!64155))) (zipperDepth!242 (t!377688 (Cons!64155 lt!2313004 Nil!64155)))))))

(declare-fun lt!2313066 () Unit!157257)

(declare-fun lambda!324648 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!126 (List!64279 Int Int Int) Unit!157257)

(assert (=> b!5950034 (= lt!2313066 (lemmaForallContextDepthBiggerThanTransitive!126 (t!377688 (Cons!64155 lt!2313004 Nil!64155)) lt!2313064 (zipperDepth!242 (t!377688 (Cons!64155 lt!2313004 Nil!64155))) lambda!324648))))

(declare-fun forall!15077 (List!64279 Int) Bool)

(assert (=> b!5950034 (forall!15077 (t!377688 (Cons!64155 lt!2313004 Nil!64155)) lambda!324650)))

(declare-fun lt!2313063 () Unit!157257)

(assert (=> b!5950034 (= lt!2313063 lt!2313066)))

(declare-fun b!5950035 () Bool)

(assert (=> b!5950035 (= e!3640017 0)))

(assert (=> b!5950036 (= e!3640018 (forall!15077 (Cons!64155 lt!2313004 Nil!64155) lambda!324651))))

(assert (= (and d!1865242 c!1058662) b!5950034))

(assert (= (and d!1865242 (not c!1058662)) b!5950035))

(assert (= (and d!1865242 res!2490847) b!5950036))

(declare-fun m!6837894 () Bool)

(assert (=> b!5950034 m!6837894))

(declare-fun m!6837896 () Bool)

(assert (=> b!5950034 m!6837896))

(declare-fun m!6837898 () Bool)

(assert (=> b!5950034 m!6837898))

(assert (=> b!5950034 m!6837894))

(declare-fun m!6837900 () Bool)

(assert (=> b!5950034 m!6837900))

(assert (=> b!5950034 m!6837894))

(assert (=> b!5950034 m!6837898))

(declare-fun m!6837902 () Bool)

(assert (=> b!5950034 m!6837902))

(declare-fun m!6837904 () Bool)

(assert (=> b!5950036 m!6837904))

(assert (=> b!5949731 d!1865242))

(declare-fun bs!1408940 () Bool)

(declare-fun b!5950043 () Bool)

(assert (= bs!1408940 (and b!5950043 b!5950034)))

(declare-fun lambda!324652 () Int)

(assert (=> bs!1408940 (= lambda!324652 lambda!324648)))

(declare-fun lt!2313068 () Int)

(declare-fun lambda!324653 () Int)

(assert (=> bs!1408940 (= (= lt!2313068 lt!2313064) (= lambda!324653 lambda!324650))))

(declare-fun bs!1408941 () Bool)

(assert (= bs!1408941 (and b!5950043 b!5950036)))

(assert (=> bs!1408941 (= (= lt!2313068 lt!2313065) (= lambda!324653 lambda!324651))))

(assert (=> b!5950043 true))

(declare-fun bs!1408942 () Bool)

(declare-fun b!5950045 () Bool)

(assert (= bs!1408942 (and b!5950045 b!5950034)))

(declare-fun lt!2313069 () Int)

(declare-fun lambda!324654 () Int)

(assert (=> bs!1408942 (= (= lt!2313069 lt!2313064) (= lambda!324654 lambda!324650))))

(declare-fun bs!1408943 () Bool)

(assert (= bs!1408943 (and b!5950045 b!5950036)))

(assert (=> bs!1408943 (= (= lt!2313069 lt!2313065) (= lambda!324654 lambda!324651))))

(declare-fun bs!1408944 () Bool)

(assert (= bs!1408944 (and b!5950045 b!5950043)))

(assert (=> bs!1408944 (= (= lt!2313069 lt!2313068) (= lambda!324654 lambda!324653))))

(assert (=> b!5950045 true))

(declare-fun d!1865248 () Bool)

(declare-fun e!3640022 () Bool)

(assert (=> d!1865248 e!3640022))

(declare-fun res!2490852 () Bool)

(assert (=> d!1865248 (=> (not res!2490852) (not e!3640022))))

(assert (=> d!1865248 (= res!2490852 (>= lt!2313069 0))))

(declare-fun e!3640021 () Int)

(assert (=> d!1865248 (= lt!2313069 e!3640021)))

(declare-fun c!1058663 () Bool)

(assert (=> d!1865248 (= c!1058663 ((_ is Cons!64155) (Cons!64155 lt!2312982 Nil!64155)))))

(assert (=> d!1865248 (= (zipperDepth!242 (Cons!64155 lt!2312982 Nil!64155)) lt!2313069)))

(assert (=> b!5950043 (= e!3640021 lt!2313068)))

(assert (=> b!5950043 (= lt!2313068 (maxBigInt!0 (contextDepth!141 (h!70603 (Cons!64155 lt!2312982 Nil!64155))) (zipperDepth!242 (t!377688 (Cons!64155 lt!2312982 Nil!64155)))))))

(declare-fun lt!2313070 () Unit!157257)

(assert (=> b!5950043 (= lt!2313070 (lemmaForallContextDepthBiggerThanTransitive!126 (t!377688 (Cons!64155 lt!2312982 Nil!64155)) lt!2313068 (zipperDepth!242 (t!377688 (Cons!64155 lt!2312982 Nil!64155))) lambda!324652))))

(assert (=> b!5950043 (forall!15077 (t!377688 (Cons!64155 lt!2312982 Nil!64155)) lambda!324653)))

(declare-fun lt!2313067 () Unit!157257)

(assert (=> b!5950043 (= lt!2313067 lt!2313070)))

(declare-fun b!5950044 () Bool)

(assert (=> b!5950044 (= e!3640021 0)))

(assert (=> b!5950045 (= e!3640022 (forall!15077 (Cons!64155 lt!2312982 Nil!64155) lambda!324654))))

(assert (= (and d!1865248 c!1058663) b!5950043))

(assert (= (and d!1865248 (not c!1058663)) b!5950044))

(assert (= (and d!1865248 res!2490852) b!5950045))

(declare-fun m!6837906 () Bool)

(assert (=> b!5950043 m!6837906))

(declare-fun m!6837908 () Bool)

(assert (=> b!5950043 m!6837908))

(declare-fun m!6837910 () Bool)

(assert (=> b!5950043 m!6837910))

(assert (=> b!5950043 m!6837906))

(declare-fun m!6837912 () Bool)

(assert (=> b!5950043 m!6837912))

(assert (=> b!5950043 m!6837906))

(assert (=> b!5950043 m!6837910))

(declare-fun m!6837914 () Bool)

(assert (=> b!5950043 m!6837914))

(declare-fun m!6837916 () Bool)

(assert (=> b!5950045 m!6837916))

(assert (=> b!5949731 d!1865248))

(declare-fun d!1865250 () Bool)

(assert (=> d!1865250 (= (isEmpty!36033 (t!377687 (exprs!5877 (h!70603 zl!343)))) ((_ is Nil!64154) (t!377687 (exprs!5877 (h!70603 zl!343)))))))

(assert (=> b!5949705 d!1865250))

(declare-fun bs!1408945 () Bool)

(declare-fun d!1865252 () Bool)

(assert (= bs!1408945 (and d!1865252 b!5949939)))

(declare-fun lambda!324657 () Int)

(assert (=> bs!1408945 (not (= lambda!324657 lambda!324632))))

(declare-fun bs!1408946 () Bool)

(assert (= bs!1408946 (and d!1865252 b!5949941)))

(assert (=> bs!1408946 (not (= lambda!324657 lambda!324633))))

(declare-fun bs!1408947 () Bool)

(assert (= bs!1408947 (and d!1865252 b!5949944)))

(assert (=> bs!1408947 (not (= lambda!324657 lambda!324634))))

(declare-fun bs!1408948 () Bool)

(assert (= bs!1408948 (and d!1865252 b!5949946)))

(assert (=> bs!1408948 (not (= lambda!324657 lambda!324635))))

(assert (=> d!1865252 (= (inv!83229 (h!70603 zl!343)) (forall!15076 (exprs!5877 (h!70603 zl!343)) lambda!324657))))

(declare-fun bs!1408949 () Bool)

(assert (= bs!1408949 d!1865252))

(declare-fun m!6837918 () Bool)

(assert (=> bs!1408949 m!6837918))

(assert (=> b!5949724 d!1865252))

(declare-fun d!1865254 () Bool)

(assert (=> d!1865254 (= (isEmpty!36034 (t!377688 zl!343)) ((_ is Nil!64155) (t!377688 zl!343)))))

(assert (=> b!5949715 d!1865254))

(declare-fun d!1865256 () Bool)

(declare-fun c!1058668 () Bool)

(assert (=> d!1865256 (= c!1058668 (isEmpty!36036 (t!377689 s!2326)))))

(declare-fun e!3640030 () Bool)

(assert (=> d!1865256 (= (matchZipper!2029 lt!2313001 (t!377689 s!2326)) e!3640030)))

(declare-fun b!5950057 () Bool)

(assert (=> b!5950057 (= e!3640030 (nullableZipper!1799 lt!2313001))))

(declare-fun b!5950058 () Bool)

(assert (=> b!5950058 (= e!3640030 (matchZipper!2029 (derivationStepZipper!1974 lt!2313001 (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))))))

(assert (= (and d!1865256 c!1058668) b!5950057))

(assert (= (and d!1865256 (not c!1058668)) b!5950058))

(assert (=> d!1865256 m!6837742))

(declare-fun m!6837920 () Bool)

(assert (=> b!5950057 m!6837920))

(assert (=> b!5950058 m!6837746))

(assert (=> b!5950058 m!6837746))

(declare-fun m!6837922 () Bool)

(assert (=> b!5950058 m!6837922))

(assert (=> b!5950058 m!6837750))

(assert (=> b!5950058 m!6837922))

(assert (=> b!5950058 m!6837750))

(declare-fun m!6837924 () Bool)

(assert (=> b!5950058 m!6837924))

(assert (=> b!5949723 d!1865256))

(declare-fun bs!1408957 () Bool)

(declare-fun d!1865258 () Bool)

(assert (= bs!1408957 (and d!1865258 b!5949944)))

(declare-fun lambda!324662 () Int)

(assert (=> bs!1408957 (not (= lambda!324662 lambda!324634))))

(declare-fun bs!1408958 () Bool)

(assert (= bs!1408958 (and d!1865258 b!5949941)))

(assert (=> bs!1408958 (not (= lambda!324662 lambda!324633))))

(declare-fun bs!1408959 () Bool)

(assert (= bs!1408959 (and d!1865258 b!5949946)))

(assert (=> bs!1408959 (not (= lambda!324662 lambda!324635))))

(declare-fun bs!1408960 () Bool)

(assert (= bs!1408960 (and d!1865258 d!1865252)))

(assert (=> bs!1408960 (= lambda!324662 lambda!324657)))

(declare-fun bs!1408961 () Bool)

(assert (= bs!1408961 (and d!1865258 b!5949939)))

(assert (=> bs!1408961 (not (= lambda!324662 lambda!324632))))

(declare-fun b!5950107 () Bool)

(declare-fun e!3640060 () Regex!15993)

(declare-fun e!3640062 () Regex!15993)

(assert (=> b!5950107 (= e!3640060 e!3640062)))

(declare-fun c!1058683 () Bool)

(assert (=> b!5950107 (= c!1058683 ((_ is Cons!64154) (exprs!5877 (h!70603 zl!343))))))

(declare-fun e!3640061 () Bool)

(assert (=> d!1865258 e!3640061))

(declare-fun res!2490876 () Bool)

(assert (=> d!1865258 (=> (not res!2490876) (not e!3640061))))

(declare-fun lt!2313075 () Regex!15993)

(assert (=> d!1865258 (= res!2490876 (validRegex!7729 lt!2313075))))

(assert (=> d!1865258 (= lt!2313075 e!3640060)))

(declare-fun c!1058684 () Bool)

(declare-fun e!3640058 () Bool)

(assert (=> d!1865258 (= c!1058684 e!3640058)))

(declare-fun res!2490877 () Bool)

(assert (=> d!1865258 (=> (not res!2490877) (not e!3640058))))

(assert (=> d!1865258 (= res!2490877 ((_ is Cons!64154) (exprs!5877 (h!70603 zl!343))))))

(assert (=> d!1865258 (forall!15076 (exprs!5877 (h!70603 zl!343)) lambda!324662)))

(assert (=> d!1865258 (= (generalisedConcat!1590 (exprs!5877 (h!70603 zl!343))) lt!2313075)))

(declare-fun b!5950108 () Bool)

(declare-fun e!3640057 () Bool)

(declare-fun e!3640059 () Bool)

(assert (=> b!5950108 (= e!3640057 e!3640059)))

(declare-fun c!1058686 () Bool)

(declare-fun tail!11613 (List!64278) List!64278)

(assert (=> b!5950108 (= c!1058686 (isEmpty!36033 (tail!11613 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun b!5950109 () Bool)

(assert (=> b!5950109 (= e!3640060 (h!70602 (exprs!5877 (h!70603 zl!343))))))

(declare-fun b!5950110 () Bool)

(declare-fun isConcat!943 (Regex!15993) Bool)

(assert (=> b!5950110 (= e!3640059 (isConcat!943 lt!2313075))))

(declare-fun b!5950111 () Bool)

(declare-fun isEmptyExpr!1420 (Regex!15993) Bool)

(assert (=> b!5950111 (= e!3640057 (isEmptyExpr!1420 lt!2313075))))

(declare-fun b!5950112 () Bool)

(assert (=> b!5950112 (= e!3640058 (isEmpty!36033 (t!377687 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun b!5950113 () Bool)

(declare-fun head!12528 (List!64278) Regex!15993)

(assert (=> b!5950113 (= e!3640059 (= lt!2313075 (head!12528 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun b!5950114 () Bool)

(assert (=> b!5950114 (= e!3640062 (Concat!24838 (h!70602 (exprs!5877 (h!70603 zl!343))) (generalisedConcat!1590 (t!377687 (exprs!5877 (h!70603 zl!343))))))))

(declare-fun b!5950115 () Bool)

(assert (=> b!5950115 (= e!3640061 e!3640057)))

(declare-fun c!1058685 () Bool)

(assert (=> b!5950115 (= c!1058685 (isEmpty!36033 (exprs!5877 (h!70603 zl!343))))))

(declare-fun b!5950116 () Bool)

(assert (=> b!5950116 (= e!3640062 EmptyExpr!15993)))

(assert (= (and d!1865258 res!2490877) b!5950112))

(assert (= (and d!1865258 c!1058684) b!5950109))

(assert (= (and d!1865258 (not c!1058684)) b!5950107))

(assert (= (and b!5950107 c!1058683) b!5950114))

(assert (= (and b!5950107 (not c!1058683)) b!5950116))

(assert (= (and d!1865258 res!2490876) b!5950115))

(assert (= (and b!5950115 c!1058685) b!5950111))

(assert (= (and b!5950115 (not c!1058685)) b!5950108))

(assert (= (and b!5950108 c!1058686) b!5950113))

(assert (= (and b!5950108 (not c!1058686)) b!5950110))

(declare-fun m!6837934 () Bool)

(assert (=> b!5950115 m!6837934))

(declare-fun m!6837936 () Bool)

(assert (=> b!5950114 m!6837936))

(assert (=> b!5950112 m!6837634))

(declare-fun m!6837938 () Bool)

(assert (=> b!5950110 m!6837938))

(declare-fun m!6837940 () Bool)

(assert (=> b!5950108 m!6837940))

(assert (=> b!5950108 m!6837940))

(declare-fun m!6837942 () Bool)

(assert (=> b!5950108 m!6837942))

(declare-fun m!6837944 () Bool)

(assert (=> b!5950113 m!6837944))

(declare-fun m!6837946 () Bool)

(assert (=> b!5950111 m!6837946))

(declare-fun m!6837948 () Bool)

(assert (=> d!1865258 m!6837948))

(declare-fun m!6837950 () Bool)

(assert (=> d!1865258 m!6837950))

(assert (=> b!5949703 d!1865258))

(declare-fun bs!1408962 () Bool)

(declare-fun d!1865262 () Bool)

(assert (= bs!1408962 (and d!1865262 b!5949944)))

(declare-fun lambda!324663 () Int)

(assert (=> bs!1408962 (not (= lambda!324663 lambda!324634))))

(declare-fun bs!1408963 () Bool)

(assert (= bs!1408963 (and d!1865262 b!5949941)))

(assert (=> bs!1408963 (not (= lambda!324663 lambda!324633))))

(declare-fun bs!1408964 () Bool)

(assert (= bs!1408964 (and d!1865262 b!5949946)))

(assert (=> bs!1408964 (not (= lambda!324663 lambda!324635))))

(declare-fun bs!1408965 () Bool)

(assert (= bs!1408965 (and d!1865262 d!1865258)))

(assert (=> bs!1408965 (= lambda!324663 lambda!324662)))

(declare-fun bs!1408966 () Bool)

(assert (= bs!1408966 (and d!1865262 d!1865252)))

(assert (=> bs!1408966 (= lambda!324663 lambda!324657)))

(declare-fun bs!1408967 () Bool)

(assert (= bs!1408967 (and d!1865262 b!5949939)))

(assert (=> bs!1408967 (not (= lambda!324663 lambda!324632))))

(assert (=> d!1865262 (= (inv!83229 setElem!40431) (forall!15076 (exprs!5877 setElem!40431) lambda!324663))))

(declare-fun bs!1408968 () Bool)

(assert (= bs!1408968 d!1865262))

(declare-fun m!6837952 () Bool)

(assert (=> bs!1408968 m!6837952))

(assert (=> setNonEmpty!40431 d!1865262))

(declare-fun bs!1408978 () Bool)

(declare-fun b!5950187 () Bool)

(assert (= bs!1408978 (and b!5950187 b!5949708)))

(declare-fun lambda!324672 () Int)

(assert (=> bs!1408978 (not (= lambda!324672 lambda!324606))))

(assert (=> bs!1408978 (not (= lambda!324672 lambda!324607))))

(assert (=> b!5950187 true))

(assert (=> b!5950187 true))

(declare-fun bs!1408979 () Bool)

(declare-fun b!5950188 () Bool)

(assert (= bs!1408979 (and b!5950188 b!5949708)))

(declare-fun lambda!324673 () Int)

(assert (=> bs!1408979 (not (= lambda!324673 lambda!324606))))

(assert (=> bs!1408979 (= lambda!324673 lambda!324607)))

(declare-fun bs!1408980 () Bool)

(assert (= bs!1408980 (and b!5950188 b!5950187)))

(assert (=> bs!1408980 (not (= lambda!324673 lambda!324672))))

(assert (=> b!5950188 true))

(assert (=> b!5950188 true))

(declare-fun d!1865264 () Bool)

(declare-fun c!1058710 () Bool)

(assert (=> d!1865264 (= c!1058710 ((_ is EmptyExpr!15993) r!7292))))

(declare-fun e!3640104 () Bool)

(assert (=> d!1865264 (= (matchRSpec!3094 r!7292 s!2326) e!3640104)))

(declare-fun e!3640102 () Bool)

(declare-fun call!473829 () Bool)

(assert (=> b!5950187 (= e!3640102 call!473829)))

(declare-fun e!3640107 () Bool)

(assert (=> b!5950188 (= e!3640107 call!473829)))

(declare-fun bm!473823 () Bool)

(declare-fun call!473828 () Bool)

(assert (=> bm!473823 (= call!473828 (isEmpty!36036 s!2326))))

(declare-fun c!1058708 () Bool)

(declare-fun bm!473824 () Bool)

(assert (=> bm!473824 (= call!473829 (Exists!3063 (ite c!1058708 lambda!324672 lambda!324673)))))

(declare-fun b!5950189 () Bool)

(declare-fun e!3640105 () Bool)

(assert (=> b!5950189 (= e!3640105 e!3640107)))

(assert (=> b!5950189 (= c!1058708 ((_ is Star!15993) r!7292))))

(declare-fun b!5950190 () Bool)

(declare-fun c!1058709 () Bool)

(assert (=> b!5950190 (= c!1058709 ((_ is ElementMatch!15993) r!7292))))

(declare-fun e!3640108 () Bool)

(declare-fun e!3640103 () Bool)

(assert (=> b!5950190 (= e!3640108 e!3640103)))

(declare-fun b!5950191 () Bool)

(declare-fun e!3640106 () Bool)

(assert (=> b!5950191 (= e!3640106 (matchRSpec!3094 (regTwo!32499 r!7292) s!2326))))

(declare-fun b!5950192 () Bool)

(assert (=> b!5950192 (= e!3640103 (= s!2326 (Cons!64156 (c!1058556 r!7292) Nil!64156)))))

(declare-fun b!5950193 () Bool)

(assert (=> b!5950193 (= e!3640105 e!3640106)))

(declare-fun res!2490908 () Bool)

(assert (=> b!5950193 (= res!2490908 (matchRSpec!3094 (regOne!32499 r!7292) s!2326))))

(assert (=> b!5950193 (=> res!2490908 e!3640106)))

(declare-fun b!5950194 () Bool)

(assert (=> b!5950194 (= e!3640104 e!3640108)))

(declare-fun res!2490907 () Bool)

(assert (=> b!5950194 (= res!2490907 (not ((_ is EmptyLang!15993) r!7292)))))

(assert (=> b!5950194 (=> (not res!2490907) (not e!3640108))))

(declare-fun b!5950195 () Bool)

(declare-fun res!2490906 () Bool)

(assert (=> b!5950195 (=> res!2490906 e!3640102)))

(assert (=> b!5950195 (= res!2490906 call!473828)))

(assert (=> b!5950195 (= e!3640107 e!3640102)))

(declare-fun b!5950196 () Bool)

(declare-fun c!1058711 () Bool)

(assert (=> b!5950196 (= c!1058711 ((_ is Union!15993) r!7292))))

(assert (=> b!5950196 (= e!3640103 e!3640105)))

(declare-fun b!5950197 () Bool)

(assert (=> b!5950197 (= e!3640104 call!473828)))

(assert (= (and d!1865264 c!1058710) b!5950197))

(assert (= (and d!1865264 (not c!1058710)) b!5950194))

(assert (= (and b!5950194 res!2490907) b!5950190))

(assert (= (and b!5950190 c!1058709) b!5950192))

(assert (= (and b!5950190 (not c!1058709)) b!5950196))

(assert (= (and b!5950196 c!1058711) b!5950193))

(assert (= (and b!5950196 (not c!1058711)) b!5950189))

(assert (= (and b!5950193 (not res!2490908)) b!5950191))

(assert (= (and b!5950189 c!1058708) b!5950195))

(assert (= (and b!5950189 (not c!1058708)) b!5950188))

(assert (= (and b!5950195 (not res!2490906)) b!5950187))

(assert (= (or b!5950187 b!5950188) bm!473824))

(assert (= (or b!5950197 b!5950195) bm!473823))

(declare-fun m!6837984 () Bool)

(assert (=> bm!473823 m!6837984))

(declare-fun m!6837986 () Bool)

(assert (=> bm!473824 m!6837986))

(declare-fun m!6837988 () Bool)

(assert (=> b!5950191 m!6837988))

(declare-fun m!6837990 () Bool)

(assert (=> b!5950193 m!6837990))

(assert (=> b!5949727 d!1865264))

(declare-fun d!1865278 () Bool)

(declare-fun e!3640139 () Bool)

(assert (=> d!1865278 e!3640139))

(declare-fun c!1058725 () Bool)

(assert (=> d!1865278 (= c!1058725 ((_ is EmptyExpr!15993) r!7292))))

(declare-fun lt!2313093 () Bool)

(declare-fun e!3640138 () Bool)

(assert (=> d!1865278 (= lt!2313093 e!3640138)))

(declare-fun c!1058726 () Bool)

(assert (=> d!1865278 (= c!1058726 (isEmpty!36036 s!2326))))

(assert (=> d!1865278 (validRegex!7729 r!7292)))

(assert (=> d!1865278 (= (matchR!8176 r!7292 s!2326) lt!2313093)))

(declare-fun b!5950242 () Bool)

(declare-fun e!3640137 () Bool)

(declare-fun e!3640135 () Bool)

(assert (=> b!5950242 (= e!3640137 e!3640135)))

(declare-fun res!2490936 () Bool)

(assert (=> b!5950242 (=> (not res!2490936) (not e!3640135))))

(assert (=> b!5950242 (= res!2490936 (not lt!2313093))))

(declare-fun b!5950243 () Bool)

(declare-fun e!3640136 () Bool)

(assert (=> b!5950243 (= e!3640135 e!3640136)))

(declare-fun res!2490935 () Bool)

(assert (=> b!5950243 (=> res!2490935 e!3640136)))

(declare-fun call!473832 () Bool)

(assert (=> b!5950243 (= res!2490935 call!473832)))

(declare-fun b!5950244 () Bool)

(declare-fun e!3640133 () Bool)

(assert (=> b!5950244 (= e!3640133 (= (head!12525 s!2326) (c!1058556 r!7292)))))

(declare-fun b!5950245 () Bool)

(assert (=> b!5950245 (= e!3640138 (nullable!5988 r!7292))))

(declare-fun b!5950246 () Bool)

(declare-fun e!3640134 () Bool)

(assert (=> b!5950246 (= e!3640134 (not lt!2313093))))

(declare-fun b!5950247 () Bool)

(declare-fun res!2490929 () Bool)

(assert (=> b!5950247 (=> res!2490929 e!3640137)))

(assert (=> b!5950247 (= res!2490929 e!3640133)))

(declare-fun res!2490932 () Bool)

(assert (=> b!5950247 (=> (not res!2490932) (not e!3640133))))

(assert (=> b!5950247 (= res!2490932 lt!2313093)))

(declare-fun b!5950248 () Bool)

(assert (=> b!5950248 (= e!3640139 e!3640134)))

(declare-fun c!1058727 () Bool)

(assert (=> b!5950248 (= c!1058727 ((_ is EmptyLang!15993) r!7292))))

(declare-fun bm!473827 () Bool)

(assert (=> bm!473827 (= call!473832 (isEmpty!36036 s!2326))))

(declare-fun b!5950249 () Bool)

(declare-fun derivativeStep!4723 (Regex!15993 C!32256) Regex!15993)

(assert (=> b!5950249 (= e!3640138 (matchR!8176 (derivativeStep!4723 r!7292 (head!12525 s!2326)) (tail!11610 s!2326)))))

(declare-fun b!5950250 () Bool)

(assert (=> b!5950250 (= e!3640136 (not (= (head!12525 s!2326) (c!1058556 r!7292))))))

(declare-fun b!5950251 () Bool)

(assert (=> b!5950251 (= e!3640139 (= lt!2313093 call!473832))))

(declare-fun b!5950252 () Bool)

(declare-fun res!2490930 () Bool)

(assert (=> b!5950252 (=> res!2490930 e!3640136)))

(assert (=> b!5950252 (= res!2490930 (not (isEmpty!36036 (tail!11610 s!2326))))))

(declare-fun b!5950253 () Bool)

(declare-fun res!2490931 () Bool)

(assert (=> b!5950253 (=> res!2490931 e!3640137)))

(assert (=> b!5950253 (= res!2490931 (not ((_ is ElementMatch!15993) r!7292)))))

(assert (=> b!5950253 (= e!3640134 e!3640137)))

(declare-fun b!5950254 () Bool)

(declare-fun res!2490933 () Bool)

(assert (=> b!5950254 (=> (not res!2490933) (not e!3640133))))

(assert (=> b!5950254 (= res!2490933 (isEmpty!36036 (tail!11610 s!2326)))))

(declare-fun b!5950255 () Bool)

(declare-fun res!2490934 () Bool)

(assert (=> b!5950255 (=> (not res!2490934) (not e!3640133))))

(assert (=> b!5950255 (= res!2490934 (not call!473832))))

(assert (= (and d!1865278 c!1058726) b!5950245))

(assert (= (and d!1865278 (not c!1058726)) b!5950249))

(assert (= (and d!1865278 c!1058725) b!5950251))

(assert (= (and d!1865278 (not c!1058725)) b!5950248))

(assert (= (and b!5950248 c!1058727) b!5950246))

(assert (= (and b!5950248 (not c!1058727)) b!5950253))

(assert (= (and b!5950253 (not res!2490931)) b!5950247))

(assert (= (and b!5950247 res!2490932) b!5950255))

(assert (= (and b!5950255 res!2490934) b!5950254))

(assert (= (and b!5950254 res!2490933) b!5950244))

(assert (= (and b!5950247 (not res!2490929)) b!5950242))

(assert (= (and b!5950242 res!2490936) b!5950243))

(assert (= (and b!5950243 (not res!2490935)) b!5950252))

(assert (= (and b!5950252 (not res!2490930)) b!5950250))

(assert (= (or b!5950251 b!5950243 b!5950255) bm!473827))

(declare-fun m!6838010 () Bool)

(assert (=> b!5950250 m!6838010))

(assert (=> b!5950249 m!6838010))

(assert (=> b!5950249 m!6838010))

(declare-fun m!6838012 () Bool)

(assert (=> b!5950249 m!6838012))

(declare-fun m!6838014 () Bool)

(assert (=> b!5950249 m!6838014))

(assert (=> b!5950249 m!6838012))

(assert (=> b!5950249 m!6838014))

(declare-fun m!6838016 () Bool)

(assert (=> b!5950249 m!6838016))

(assert (=> d!1865278 m!6837984))

(assert (=> d!1865278 m!6837646))

(declare-fun m!6838018 () Bool)

(assert (=> b!5950245 m!6838018))

(assert (=> bm!473827 m!6837984))

(assert (=> b!5950244 m!6838010))

(assert (=> b!5950252 m!6838014))

(assert (=> b!5950252 m!6838014))

(declare-fun m!6838020 () Bool)

(assert (=> b!5950252 m!6838020))

(assert (=> b!5950254 m!6838014))

(assert (=> b!5950254 m!6838014))

(assert (=> b!5950254 m!6838020))

(assert (=> b!5949727 d!1865278))

(declare-fun d!1865282 () Bool)

(assert (=> d!1865282 (= (matchR!8176 r!7292 s!2326) (matchRSpec!3094 r!7292 s!2326))))

(declare-fun lt!2313100 () Unit!157257)

(declare-fun choose!44837 (Regex!15993 List!64280) Unit!157257)

(assert (=> d!1865282 (= lt!2313100 (choose!44837 r!7292 s!2326))))

(assert (=> d!1865282 (validRegex!7729 r!7292)))

(assert (=> d!1865282 (= (mainMatchTheorem!3094 r!7292 s!2326) lt!2313100)))

(declare-fun bs!1408999 () Bool)

(assert (= bs!1408999 d!1865282))

(assert (=> bs!1408999 m!6837570))

(assert (=> bs!1408999 m!6837568))

(declare-fun m!6838032 () Bool)

(assert (=> bs!1408999 m!6838032))

(assert (=> bs!1408999 m!6837646))

(assert (=> b!5949727 d!1865282))

(declare-fun d!1865284 () Bool)

(declare-fun c!1058742 () Bool)

(assert (=> d!1865284 (= c!1058742 (and ((_ is ElementMatch!15993) r!7292) (= (c!1058556 r!7292) (h!70604 s!2326))))))

(declare-fun e!3640161 () (InoxSet Context!10754))

(assert (=> d!1865284 (= (derivationStepZipperDown!1243 r!7292 lt!2312989 (h!70604 s!2326)) e!3640161)))

(declare-fun b!5950290 () Bool)

(declare-fun e!3640163 () Bool)

(assert (=> b!5950290 (= e!3640163 (nullable!5988 (regOne!32498 r!7292)))))

(declare-fun bm!473840 () Bool)

(declare-fun call!473847 () List!64278)

(declare-fun call!473850 () List!64278)

(assert (=> bm!473840 (= call!473847 call!473850)))

(declare-fun c!1058745 () Bool)

(declare-fun bm!473841 () Bool)

(declare-fun c!1058744 () Bool)

(declare-fun c!1058746 () Bool)

(declare-fun call!473849 () (InoxSet Context!10754))

(assert (=> bm!473841 (= call!473849 (derivationStepZipperDown!1243 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292)))) (ite (or c!1058746 c!1058744) lt!2312989 (Context!10755 call!473847)) (h!70604 s!2326)))))

(declare-fun b!5950291 () Bool)

(declare-fun e!3640160 () (InoxSet Context!10754))

(declare-fun call!473845 () (InoxSet Context!10754))

(assert (=> b!5950291 (= e!3640160 call!473845)))

(declare-fun b!5950292 () Bool)

(declare-fun e!3640158 () (InoxSet Context!10754))

(declare-fun call!473846 () (InoxSet Context!10754))

(declare-fun call!473848 () (InoxSet Context!10754))

(assert (=> b!5950292 (= e!3640158 ((_ map or) call!473846 call!473848))))

(declare-fun b!5950293 () Bool)

(assert (=> b!5950293 (= c!1058744 e!3640163)))

(declare-fun res!2490941 () Bool)

(assert (=> b!5950293 (=> (not res!2490941) (not e!3640163))))

(assert (=> b!5950293 (= res!2490941 ((_ is Concat!24838) r!7292))))

(declare-fun e!3640159 () (InoxSet Context!10754))

(assert (=> b!5950293 (= e!3640159 e!3640158)))

(declare-fun b!5950294 () Bool)

(assert (=> b!5950294 (= e!3640159 ((_ map or) call!473846 call!473849))))

(declare-fun b!5950295 () Bool)

(assert (=> b!5950295 (= e!3640158 e!3640160)))

(assert (=> b!5950295 (= c!1058745 ((_ is Concat!24838) r!7292))))

(declare-fun b!5950296 () Bool)

(declare-fun c!1058743 () Bool)

(assert (=> b!5950296 (= c!1058743 ((_ is Star!15993) r!7292))))

(declare-fun e!3640162 () (InoxSet Context!10754))

(assert (=> b!5950296 (= e!3640160 e!3640162)))

(declare-fun bm!473842 () Bool)

(assert (=> bm!473842 (= call!473848 call!473849)))

(declare-fun bm!473843 () Bool)

(assert (=> bm!473843 (= call!473846 (derivationStepZipperDown!1243 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292)) (ite c!1058746 lt!2312989 (Context!10755 call!473850)) (h!70604 s!2326)))))

(declare-fun b!5950297 () Bool)

(assert (=> b!5950297 (= e!3640162 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5950298 () Bool)

(assert (=> b!5950298 (= e!3640161 e!3640159)))

(assert (=> b!5950298 (= c!1058746 ((_ is Union!15993) r!7292))))

(declare-fun bm!473844 () Bool)

(assert (=> bm!473844 (= call!473845 call!473848)))

(declare-fun b!5950299 () Bool)

(assert (=> b!5950299 (= e!3640161 (store ((as const (Array Context!10754 Bool)) false) lt!2312989 true))))

(declare-fun bm!473845 () Bool)

(declare-fun $colon$colon!1880 (List!64278 Regex!15993) List!64278)

(assert (=> bm!473845 (= call!473850 ($colon$colon!1880 (exprs!5877 lt!2312989) (ite (or c!1058744 c!1058745) (regTwo!32498 r!7292) r!7292)))))

(declare-fun b!5950300 () Bool)

(assert (=> b!5950300 (= e!3640162 call!473845)))

(assert (= (and d!1865284 c!1058742) b!5950299))

(assert (= (and d!1865284 (not c!1058742)) b!5950298))

(assert (= (and b!5950298 c!1058746) b!5950294))

(assert (= (and b!5950298 (not c!1058746)) b!5950293))

(assert (= (and b!5950293 res!2490941) b!5950290))

(assert (= (and b!5950293 c!1058744) b!5950292))

(assert (= (and b!5950293 (not c!1058744)) b!5950295))

(assert (= (and b!5950295 c!1058745) b!5950291))

(assert (= (and b!5950295 (not c!1058745)) b!5950296))

(assert (= (and b!5950296 c!1058743) b!5950300))

(assert (= (and b!5950296 (not c!1058743)) b!5950297))

(assert (= (or b!5950291 b!5950300) bm!473840))

(assert (= (or b!5950291 b!5950300) bm!473844))

(assert (= (or b!5950292 bm!473840) bm!473845))

(assert (= (or b!5950292 bm!473844) bm!473842))

(assert (= (or b!5950294 bm!473842) bm!473841))

(assert (= (or b!5950294 b!5950292) bm!473843))

(declare-fun m!6838064 () Bool)

(assert (=> bm!473841 m!6838064))

(assert (=> b!5950290 m!6837628))

(declare-fun m!6838066 () Bool)

(assert (=> b!5950299 m!6838066))

(declare-fun m!6838068 () Bool)

(assert (=> bm!473845 m!6838068))

(declare-fun m!6838070 () Bool)

(assert (=> bm!473843 m!6838070))

(assert (=> b!5949717 d!1865284))

(declare-fun b!5950305 () Bool)

(declare-fun e!3640167 () (InoxSet Context!10754))

(declare-fun call!473851 () (InoxSet Context!10754))

(assert (=> b!5950305 (= e!3640167 ((_ map or) call!473851 (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 lt!2312982))) (h!70604 s!2326))))))

(declare-fun b!5950306 () Bool)

(declare-fun e!3640168 () (InoxSet Context!10754))

(assert (=> b!5950306 (= e!3640167 e!3640168)))

(declare-fun c!1058753 () Bool)

(assert (=> b!5950306 (= c!1058753 ((_ is Cons!64154) (exprs!5877 lt!2312982)))))

(declare-fun b!5950307 () Bool)

(assert (=> b!5950307 (= e!3640168 call!473851)))

(declare-fun d!1865298 () Bool)

(declare-fun c!1058754 () Bool)

(declare-fun e!3640166 () Bool)

(assert (=> d!1865298 (= c!1058754 e!3640166)))

(declare-fun res!2490942 () Bool)

(assert (=> d!1865298 (=> (not res!2490942) (not e!3640166))))

(assert (=> d!1865298 (= res!2490942 ((_ is Cons!64154) (exprs!5877 lt!2312982)))))

(assert (=> d!1865298 (= (derivationStepZipperUp!1169 lt!2312982 (h!70604 s!2326)) e!3640167)))

(declare-fun bm!473846 () Bool)

(assert (=> bm!473846 (= call!473851 (derivationStepZipperDown!1243 (h!70602 (exprs!5877 lt!2312982)) (Context!10755 (t!377687 (exprs!5877 lt!2312982))) (h!70604 s!2326)))))

(declare-fun b!5950308 () Bool)

(assert (=> b!5950308 (= e!3640168 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5950309 () Bool)

(assert (=> b!5950309 (= e!3640166 (nullable!5988 (h!70602 (exprs!5877 lt!2312982))))))

(assert (= (and d!1865298 res!2490942) b!5950309))

(assert (= (and d!1865298 c!1058754) b!5950305))

(assert (= (and d!1865298 (not c!1058754)) b!5950306))

(assert (= (and b!5950306 c!1058753) b!5950307))

(assert (= (and b!5950306 (not c!1058753)) b!5950308))

(assert (= (or b!5950305 b!5950307) bm!473846))

(declare-fun m!6838072 () Bool)

(assert (=> b!5950305 m!6838072))

(declare-fun m!6838074 () Bool)

(assert (=> bm!473846 m!6838074))

(declare-fun m!6838076 () Bool)

(assert (=> b!5950309 m!6838076))

(assert (=> b!5949717 d!1865298))

(declare-fun bs!1409022 () Bool)

(declare-fun d!1865300 () Bool)

(assert (= bs!1409022 (and d!1865300 b!5949712)))

(declare-fun lambda!324692 () Int)

(assert (=> bs!1409022 (= lambda!324692 lambda!324608)))

(assert (=> d!1865300 true))

(assert (=> d!1865300 (= (derivationStepZipper!1974 z!1189 (h!70604 s!2326)) (flatMap!1506 z!1189 lambda!324692))))

(declare-fun bs!1409023 () Bool)

(assert (= bs!1409023 d!1865300))

(declare-fun m!6838078 () Bool)

(assert (=> bs!1409023 m!6838078))

(assert (=> b!5949717 d!1865300))

(declare-fun d!1865302 () Bool)

(declare-fun c!1058760 () Bool)

(assert (=> d!1865302 (= c!1058760 (isEmpty!36036 s!2326))))

(declare-fun e!3640173 () Bool)

(assert (=> d!1865302 (= (matchZipper!2029 lt!2312981 s!2326) e!3640173)))

(declare-fun b!5950317 () Bool)

(assert (=> b!5950317 (= e!3640173 (nullableZipper!1799 lt!2312981))))

(declare-fun b!5950318 () Bool)

(assert (=> b!5950318 (= e!3640173 (matchZipper!2029 (derivationStepZipper!1974 lt!2312981 (head!12525 s!2326)) (tail!11610 s!2326)))))

(assert (= (and d!1865302 c!1058760) b!5950317))

(assert (= (and d!1865302 (not c!1058760)) b!5950318))

(assert (=> d!1865302 m!6837984))

(declare-fun m!6838080 () Bool)

(assert (=> b!5950317 m!6838080))

(assert (=> b!5950318 m!6838010))

(assert (=> b!5950318 m!6838010))

(declare-fun m!6838082 () Bool)

(assert (=> b!5950318 m!6838082))

(assert (=> b!5950318 m!6838014))

(assert (=> b!5950318 m!6838082))

(assert (=> b!5950318 m!6838014))

(declare-fun m!6838084 () Bool)

(assert (=> b!5950318 m!6838084))

(assert (=> b!5949707 d!1865302))

(declare-fun d!1865304 () Bool)

(declare-fun c!1058761 () Bool)

(assert (=> d!1865304 (= c!1058761 (isEmpty!36036 (t!377689 s!2326)))))

(declare-fun e!3640174 () Bool)

(assert (=> d!1865304 (= (matchZipper!2029 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) (t!377689 s!2326)) e!3640174)))

(declare-fun b!5950321 () Bool)

(assert (=> b!5950321 (= e!3640174 (nullableZipper!1799 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326))))))

(declare-fun b!5950322 () Bool)

(assert (=> b!5950322 (= e!3640174 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))))))

(assert (= (and d!1865304 c!1058761) b!5950321))

(assert (= (and d!1865304 (not c!1058761)) b!5950322))

(assert (=> d!1865304 m!6837742))

(assert (=> b!5950321 m!6837576))

(declare-fun m!6838086 () Bool)

(assert (=> b!5950321 m!6838086))

(assert (=> b!5950322 m!6837746))

(assert (=> b!5950322 m!6837576))

(assert (=> b!5950322 m!6837746))

(declare-fun m!6838088 () Bool)

(assert (=> b!5950322 m!6838088))

(assert (=> b!5950322 m!6837750))

(assert (=> b!5950322 m!6838088))

(assert (=> b!5950322 m!6837750))

(declare-fun m!6838090 () Bool)

(assert (=> b!5950322 m!6838090))

(assert (=> b!5949707 d!1865304))

(declare-fun bs!1409025 () Bool)

(declare-fun d!1865306 () Bool)

(assert (= bs!1409025 (and d!1865306 b!5949712)))

(declare-fun lambda!324696 () Int)

(assert (=> bs!1409025 (= lambda!324696 lambda!324608)))

(declare-fun bs!1409026 () Bool)

(assert (= bs!1409026 (and d!1865306 d!1865300)))

(assert (=> bs!1409026 (= lambda!324696 lambda!324692)))

(assert (=> d!1865306 true))

(assert (=> d!1865306 (= (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) (flatMap!1506 lt!2312981 lambda!324696))))

(declare-fun bs!1409027 () Bool)

(assert (= bs!1409027 d!1865306))

(declare-fun m!6838104 () Bool)

(assert (=> bs!1409027 m!6838104))

(assert (=> b!5949707 d!1865306))

(declare-fun d!1865310 () Bool)

(declare-fun e!3640182 () Bool)

(assert (=> d!1865310 e!3640182))

(declare-fun res!2490950 () Bool)

(assert (=> d!1865310 (=> (not res!2490950) (not e!3640182))))

(declare-fun lt!2313126 () List!64279)

(declare-fun noDuplicate!1851 (List!64279) Bool)

(assert (=> d!1865310 (= res!2490950 (noDuplicate!1851 lt!2313126))))

(declare-fun choose!44838 ((InoxSet Context!10754)) List!64279)

(assert (=> d!1865310 (= lt!2313126 (choose!44838 z!1189))))

(assert (=> d!1865310 (= (toList!9777 z!1189) lt!2313126)))

(declare-fun b!5950333 () Bool)

(declare-fun content!11840 (List!64279) (InoxSet Context!10754))

(assert (=> b!5950333 (= e!3640182 (= (content!11840 lt!2313126) z!1189))))

(assert (= (and d!1865310 res!2490950) b!5950333))

(declare-fun m!6838120 () Bool)

(assert (=> d!1865310 m!6838120))

(declare-fun m!6838122 () Bool)

(assert (=> d!1865310 m!6838122))

(declare-fun m!6838124 () Bool)

(assert (=> b!5950333 m!6838124))

(assert (=> b!5949725 d!1865310))

(declare-fun bs!1409034 () Bool)

(declare-fun d!1865316 () Bool)

(assert (= bs!1409034 (and d!1865316 b!5949944)))

(declare-fun lambda!324700 () Int)

(assert (=> bs!1409034 (not (= lambda!324700 lambda!324634))))

(declare-fun bs!1409035 () Bool)

(assert (= bs!1409035 (and d!1865316 b!5949941)))

(assert (=> bs!1409035 (not (= lambda!324700 lambda!324633))))

(declare-fun bs!1409036 () Bool)

(assert (= bs!1409036 (and d!1865316 d!1865262)))

(assert (=> bs!1409036 (= lambda!324700 lambda!324663)))

(declare-fun bs!1409037 () Bool)

(assert (= bs!1409037 (and d!1865316 b!5949946)))

(assert (=> bs!1409037 (not (= lambda!324700 lambda!324635))))

(declare-fun bs!1409039 () Bool)

(assert (= bs!1409039 (and d!1865316 d!1865258)))

(assert (=> bs!1409039 (= lambda!324700 lambda!324662)))

(declare-fun bs!1409040 () Bool)

(assert (= bs!1409040 (and d!1865316 d!1865252)))

(assert (=> bs!1409040 (= lambda!324700 lambda!324657)))

(declare-fun bs!1409041 () Bool)

(assert (= bs!1409041 (and d!1865316 b!5949939)))

(assert (=> bs!1409041 (not (= lambda!324700 lambda!324632))))

(assert (=> d!1865316 (= (inv!83229 lt!2312978) (forall!15076 (exprs!5877 lt!2312978) lambda!324700))))

(declare-fun bs!1409042 () Bool)

(assert (= bs!1409042 d!1865316))

(declare-fun m!6838138 () Bool)

(assert (=> bs!1409042 m!6838138))

(assert (=> b!5949716 d!1865316))

(declare-fun d!1865322 () Bool)

(declare-fun nullableFct!1960 (Regex!15993) Bool)

(assert (=> d!1865322 (= (nullable!5988 (regOne!32498 r!7292)) (nullableFct!1960 (regOne!32498 r!7292)))))

(declare-fun bs!1409043 () Bool)

(assert (= bs!1409043 d!1865322))

(declare-fun m!6838152 () Bool)

(assert (=> bs!1409043 m!6838152))

(assert (=> b!5949720 d!1865322))

(declare-fun b!5950340 () Bool)

(declare-fun e!3640187 () (InoxSet Context!10754))

(declare-fun call!473853 () (InoxSet Context!10754))

(assert (=> b!5950340 (= e!3640187 ((_ map or) call!473853 (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 lt!2313004))) (h!70604 s!2326))))))

(declare-fun b!5950341 () Bool)

(declare-fun e!3640188 () (InoxSet Context!10754))

(assert (=> b!5950341 (= e!3640187 e!3640188)))

(declare-fun c!1058768 () Bool)

(assert (=> b!5950341 (= c!1058768 ((_ is Cons!64154) (exprs!5877 lt!2313004)))))

(declare-fun b!5950342 () Bool)

(assert (=> b!5950342 (= e!3640188 call!473853)))

(declare-fun d!1865328 () Bool)

(declare-fun c!1058769 () Bool)

(declare-fun e!3640186 () Bool)

(assert (=> d!1865328 (= c!1058769 e!3640186)))

(declare-fun res!2490951 () Bool)

(assert (=> d!1865328 (=> (not res!2490951) (not e!3640186))))

(assert (=> d!1865328 (= res!2490951 ((_ is Cons!64154) (exprs!5877 lt!2313004)))))

(assert (=> d!1865328 (= (derivationStepZipperUp!1169 lt!2313004 (h!70604 s!2326)) e!3640187)))

(declare-fun bm!473848 () Bool)

(assert (=> bm!473848 (= call!473853 (derivationStepZipperDown!1243 (h!70602 (exprs!5877 lt!2313004)) (Context!10755 (t!377687 (exprs!5877 lt!2313004))) (h!70604 s!2326)))))

(declare-fun b!5950343 () Bool)

(assert (=> b!5950343 (= e!3640188 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5950344 () Bool)

(assert (=> b!5950344 (= e!3640186 (nullable!5988 (h!70602 (exprs!5877 lt!2313004))))))

(assert (= (and d!1865328 res!2490951) b!5950344))

(assert (= (and d!1865328 c!1058769) b!5950340))

(assert (= (and d!1865328 (not c!1058769)) b!5950341))

(assert (= (and b!5950341 c!1058768) b!5950342))

(assert (= (and b!5950341 (not c!1058768)) b!5950343))

(assert (= (or b!5950340 b!5950342) bm!473848))

(declare-fun m!6838160 () Bool)

(assert (=> b!5950340 m!6838160))

(declare-fun m!6838162 () Bool)

(assert (=> bm!473848 m!6838162))

(declare-fun m!6838164 () Bool)

(assert (=> b!5950344 m!6838164))

(assert (=> b!5949720 d!1865328))

(declare-fun d!1865332 () Bool)

(assert (=> d!1865332 (= (flatMap!1506 lt!2312981 lambda!324608) (dynLambda!25095 lambda!324608 lt!2313004))))

(declare-fun lt!2313128 () Unit!157257)

(assert (=> d!1865332 (= lt!2313128 (choose!44834 lt!2312981 lt!2313004 lambda!324608))))

(assert (=> d!1865332 (= lt!2312981 (store ((as const (Array Context!10754 Bool)) false) lt!2313004 true))))

(assert (=> d!1865332 (= (lemmaFlatMapOnSingletonSet!1032 lt!2312981 lt!2313004 lambda!324608) lt!2313128)))

(declare-fun b_lambda!223577 () Bool)

(assert (=> (not b_lambda!223577) (not d!1865332)))

(declare-fun bs!1409044 () Bool)

(assert (= bs!1409044 d!1865332))

(assert (=> bs!1409044 m!6837626))

(declare-fun m!6838166 () Bool)

(assert (=> bs!1409044 m!6838166))

(declare-fun m!6838168 () Bool)

(assert (=> bs!1409044 m!6838168))

(assert (=> bs!1409044 m!6837618))

(assert (=> b!5949720 d!1865332))

(declare-fun d!1865334 () Bool)

(assert (=> d!1865334 (= (flatMap!1506 lt!2312979 lambda!324608) (choose!44833 lt!2312979 lambda!324608))))

(declare-fun bs!1409045 () Bool)

(assert (= bs!1409045 d!1865334))

(declare-fun m!6838170 () Bool)

(assert (=> bs!1409045 m!6838170))

(assert (=> b!5949720 d!1865334))

(declare-fun d!1865336 () Bool)

(declare-fun c!1058770 () Bool)

(assert (=> d!1865336 (= c!1058770 (and ((_ is ElementMatch!15993) (regOne!32498 r!7292)) (= (c!1058556 (regOne!32498 r!7292)) (h!70604 s!2326))))))

(declare-fun e!3640192 () (InoxSet Context!10754))

(assert (=> d!1865336 (= (derivationStepZipperDown!1243 (regOne!32498 r!7292) lt!2312978 (h!70604 s!2326)) e!3640192)))

(declare-fun b!5950345 () Bool)

(declare-fun e!3640194 () Bool)

(assert (=> b!5950345 (= e!3640194 (nullable!5988 (regOne!32498 (regOne!32498 r!7292))))))

(declare-fun bm!473849 () Bool)

(declare-fun call!473856 () List!64278)

(declare-fun call!473859 () List!64278)

(assert (=> bm!473849 (= call!473856 call!473859)))

(declare-fun c!1058772 () Bool)

(declare-fun call!473858 () (InoxSet Context!10754))

(declare-fun c!1058773 () Bool)

(declare-fun c!1058774 () Bool)

(declare-fun bm!473850 () Bool)

(assert (=> bm!473850 (= call!473858 (derivationStepZipperDown!1243 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292))))) (ite (or c!1058774 c!1058772) lt!2312978 (Context!10755 call!473856)) (h!70604 s!2326)))))

(declare-fun b!5950346 () Bool)

(declare-fun e!3640191 () (InoxSet Context!10754))

(declare-fun call!473854 () (InoxSet Context!10754))

(assert (=> b!5950346 (= e!3640191 call!473854)))

(declare-fun b!5950347 () Bool)

(declare-fun e!3640189 () (InoxSet Context!10754))

(declare-fun call!473855 () (InoxSet Context!10754))

(declare-fun call!473857 () (InoxSet Context!10754))

(assert (=> b!5950347 (= e!3640189 ((_ map or) call!473855 call!473857))))

(declare-fun b!5950348 () Bool)

(assert (=> b!5950348 (= c!1058772 e!3640194)))

(declare-fun res!2490952 () Bool)

(assert (=> b!5950348 (=> (not res!2490952) (not e!3640194))))

(assert (=> b!5950348 (= res!2490952 ((_ is Concat!24838) (regOne!32498 r!7292)))))

(declare-fun e!3640190 () (InoxSet Context!10754))

(assert (=> b!5950348 (= e!3640190 e!3640189)))

(declare-fun b!5950349 () Bool)

(assert (=> b!5950349 (= e!3640190 ((_ map or) call!473855 call!473858))))

(declare-fun b!5950350 () Bool)

(assert (=> b!5950350 (= e!3640189 e!3640191)))

(assert (=> b!5950350 (= c!1058773 ((_ is Concat!24838) (regOne!32498 r!7292)))))

(declare-fun b!5950351 () Bool)

(declare-fun c!1058771 () Bool)

(assert (=> b!5950351 (= c!1058771 ((_ is Star!15993) (regOne!32498 r!7292)))))

(declare-fun e!3640193 () (InoxSet Context!10754))

(assert (=> b!5950351 (= e!3640191 e!3640193)))

(declare-fun bm!473851 () Bool)

(assert (=> bm!473851 (= call!473857 call!473858)))

(declare-fun bm!473852 () Bool)

(assert (=> bm!473852 (= call!473855 (derivationStepZipperDown!1243 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292))) (ite c!1058774 lt!2312978 (Context!10755 call!473859)) (h!70604 s!2326)))))

(declare-fun b!5950352 () Bool)

(assert (=> b!5950352 (= e!3640193 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5950353 () Bool)

(assert (=> b!5950353 (= e!3640192 e!3640190)))

(assert (=> b!5950353 (= c!1058774 ((_ is Union!15993) (regOne!32498 r!7292)))))

(declare-fun bm!473853 () Bool)

(assert (=> bm!473853 (= call!473854 call!473857)))

(declare-fun b!5950354 () Bool)

(assert (=> b!5950354 (= e!3640192 (store ((as const (Array Context!10754 Bool)) false) lt!2312978 true))))

(declare-fun bm!473854 () Bool)

(assert (=> bm!473854 (= call!473859 ($colon$colon!1880 (exprs!5877 lt!2312978) (ite (or c!1058772 c!1058773) (regTwo!32498 (regOne!32498 r!7292)) (regOne!32498 r!7292))))))

(declare-fun b!5950355 () Bool)

(assert (=> b!5950355 (= e!3640193 call!473854)))

(assert (= (and d!1865336 c!1058770) b!5950354))

(assert (= (and d!1865336 (not c!1058770)) b!5950353))

(assert (= (and b!5950353 c!1058774) b!5950349))

(assert (= (and b!5950353 (not c!1058774)) b!5950348))

(assert (= (and b!5950348 res!2490952) b!5950345))

(assert (= (and b!5950348 c!1058772) b!5950347))

(assert (= (and b!5950348 (not c!1058772)) b!5950350))

(assert (= (and b!5950350 c!1058773) b!5950346))

(assert (= (and b!5950350 (not c!1058773)) b!5950351))

(assert (= (and b!5950351 c!1058771) b!5950355))

(assert (= (and b!5950351 (not c!1058771)) b!5950352))

(assert (= (or b!5950346 b!5950355) bm!473849))

(assert (= (or b!5950346 b!5950355) bm!473853))

(assert (= (or b!5950347 bm!473849) bm!473854))

(assert (= (or b!5950347 bm!473853) bm!473851))

(assert (= (or b!5950349 bm!473851) bm!473850))

(assert (= (or b!5950349 b!5950347) bm!473852))

(declare-fun m!6838172 () Bool)

(assert (=> bm!473850 m!6838172))

(declare-fun m!6838174 () Bool)

(assert (=> b!5950345 m!6838174))

(assert (=> b!5950354 m!6837632))

(declare-fun m!6838176 () Bool)

(assert (=> bm!473854 m!6838176))

(declare-fun m!6838178 () Bool)

(assert (=> bm!473852 m!6838178))

(assert (=> b!5949720 d!1865336))

(declare-fun d!1865338 () Bool)

(declare-fun c!1058775 () Bool)

(assert (=> d!1865338 (= c!1058775 (and ((_ is ElementMatch!15993) (regTwo!32498 r!7292)) (= (c!1058556 (regTwo!32498 r!7292)) (h!70604 s!2326))))))

(declare-fun e!3640198 () (InoxSet Context!10754))

(assert (=> d!1865338 (= (derivationStepZipperDown!1243 (regTwo!32498 r!7292) lt!2312989 (h!70604 s!2326)) e!3640198)))

(declare-fun b!5950356 () Bool)

(declare-fun e!3640200 () Bool)

(assert (=> b!5950356 (= e!3640200 (nullable!5988 (regOne!32498 (regTwo!32498 r!7292))))))

(declare-fun bm!473855 () Bool)

(declare-fun call!473862 () List!64278)

(declare-fun call!473865 () List!64278)

(assert (=> bm!473855 (= call!473862 call!473865)))

(declare-fun c!1058779 () Bool)

(declare-fun c!1058778 () Bool)

(declare-fun call!473864 () (InoxSet Context!10754))

(declare-fun c!1058777 () Bool)

(declare-fun bm!473856 () Bool)

(assert (=> bm!473856 (= call!473864 (derivationStepZipperDown!1243 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292))))) (ite (or c!1058779 c!1058777) lt!2312989 (Context!10755 call!473862)) (h!70604 s!2326)))))

(declare-fun b!5950357 () Bool)

(declare-fun e!3640197 () (InoxSet Context!10754))

(declare-fun call!473860 () (InoxSet Context!10754))

(assert (=> b!5950357 (= e!3640197 call!473860)))

(declare-fun b!5950358 () Bool)

(declare-fun e!3640195 () (InoxSet Context!10754))

(declare-fun call!473861 () (InoxSet Context!10754))

(declare-fun call!473863 () (InoxSet Context!10754))

(assert (=> b!5950358 (= e!3640195 ((_ map or) call!473861 call!473863))))

(declare-fun b!5950359 () Bool)

(assert (=> b!5950359 (= c!1058777 e!3640200)))

(declare-fun res!2490953 () Bool)

(assert (=> b!5950359 (=> (not res!2490953) (not e!3640200))))

(assert (=> b!5950359 (= res!2490953 ((_ is Concat!24838) (regTwo!32498 r!7292)))))

(declare-fun e!3640196 () (InoxSet Context!10754))

(assert (=> b!5950359 (= e!3640196 e!3640195)))

(declare-fun b!5950360 () Bool)

(assert (=> b!5950360 (= e!3640196 ((_ map or) call!473861 call!473864))))

(declare-fun b!5950361 () Bool)

(assert (=> b!5950361 (= e!3640195 e!3640197)))

(assert (=> b!5950361 (= c!1058778 ((_ is Concat!24838) (regTwo!32498 r!7292)))))

(declare-fun b!5950362 () Bool)

(declare-fun c!1058776 () Bool)

(assert (=> b!5950362 (= c!1058776 ((_ is Star!15993) (regTwo!32498 r!7292)))))

(declare-fun e!3640199 () (InoxSet Context!10754))

(assert (=> b!5950362 (= e!3640197 e!3640199)))

(declare-fun bm!473857 () Bool)

(assert (=> bm!473857 (= call!473863 call!473864)))

(declare-fun bm!473858 () Bool)

(assert (=> bm!473858 (= call!473861 (derivationStepZipperDown!1243 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292))) (ite c!1058779 lt!2312989 (Context!10755 call!473865)) (h!70604 s!2326)))))

(declare-fun b!5950363 () Bool)

(assert (=> b!5950363 (= e!3640199 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5950364 () Bool)

(assert (=> b!5950364 (= e!3640198 e!3640196)))

(assert (=> b!5950364 (= c!1058779 ((_ is Union!15993) (regTwo!32498 r!7292)))))

(declare-fun bm!473859 () Bool)

(assert (=> bm!473859 (= call!473860 call!473863)))

(declare-fun b!5950365 () Bool)

(assert (=> b!5950365 (= e!3640198 (store ((as const (Array Context!10754 Bool)) false) lt!2312989 true))))

(declare-fun bm!473860 () Bool)

(assert (=> bm!473860 (= call!473865 ($colon$colon!1880 (exprs!5877 lt!2312989) (ite (or c!1058777 c!1058778) (regTwo!32498 (regTwo!32498 r!7292)) (regTwo!32498 r!7292))))))

(declare-fun b!5950366 () Bool)

(assert (=> b!5950366 (= e!3640199 call!473860)))

(assert (= (and d!1865338 c!1058775) b!5950365))

(assert (= (and d!1865338 (not c!1058775)) b!5950364))

(assert (= (and b!5950364 c!1058779) b!5950360))

(assert (= (and b!5950364 (not c!1058779)) b!5950359))

(assert (= (and b!5950359 res!2490953) b!5950356))

(assert (= (and b!5950359 c!1058777) b!5950358))

(assert (= (and b!5950359 (not c!1058777)) b!5950361))

(assert (= (and b!5950361 c!1058778) b!5950357))

(assert (= (and b!5950361 (not c!1058778)) b!5950362))

(assert (= (and b!5950362 c!1058776) b!5950366))

(assert (= (and b!5950362 (not c!1058776)) b!5950363))

(assert (= (or b!5950357 b!5950366) bm!473855))

(assert (= (or b!5950357 b!5950366) bm!473859))

(assert (= (or b!5950358 bm!473855) bm!473860))

(assert (= (or b!5950358 bm!473859) bm!473857))

(assert (= (or b!5950360 bm!473857) bm!473856))

(assert (= (or b!5950360 b!5950358) bm!473858))

(declare-fun m!6838180 () Bool)

(assert (=> bm!473856 m!6838180))

(declare-fun m!6838182 () Bool)

(assert (=> b!5950356 m!6838182))

(assert (=> b!5950365 m!6838066))

(declare-fun m!6838184 () Bool)

(assert (=> bm!473860 m!6838184))

(declare-fun m!6838186 () Bool)

(assert (=> bm!473858 m!6838186))

(assert (=> b!5949720 d!1865338))

(declare-fun d!1865340 () Bool)

(assert (=> d!1865340 (= (flatMap!1506 lt!2312981 lambda!324608) (choose!44833 lt!2312981 lambda!324608))))

(declare-fun bs!1409046 () Bool)

(assert (= bs!1409046 d!1865340))

(declare-fun m!6838188 () Bool)

(assert (=> bs!1409046 m!6838188))

(assert (=> b!5949720 d!1865340))

(declare-fun call!473866 () (InoxSet Context!10754))

(declare-fun b!5950369 () Bool)

(declare-fun e!3640204 () (InoxSet Context!10754))

(assert (=> b!5950369 (= e!3640204 ((_ map or) call!473866 (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 lt!2312978))) (h!70604 s!2326))))))

(declare-fun b!5950370 () Bool)

(declare-fun e!3640205 () (InoxSet Context!10754))

(assert (=> b!5950370 (= e!3640204 e!3640205)))

(declare-fun c!1058780 () Bool)

(assert (=> b!5950370 (= c!1058780 ((_ is Cons!64154) (exprs!5877 lt!2312978)))))

(declare-fun b!5950371 () Bool)

(assert (=> b!5950371 (= e!3640205 call!473866)))

(declare-fun d!1865342 () Bool)

(declare-fun c!1058781 () Bool)

(declare-fun e!3640203 () Bool)

(assert (=> d!1865342 (= c!1058781 e!3640203)))

(declare-fun res!2490956 () Bool)

(assert (=> d!1865342 (=> (not res!2490956) (not e!3640203))))

(assert (=> d!1865342 (= res!2490956 ((_ is Cons!64154) (exprs!5877 lt!2312978)))))

(assert (=> d!1865342 (= (derivationStepZipperUp!1169 lt!2312978 (h!70604 s!2326)) e!3640204)))

(declare-fun bm!473861 () Bool)

(assert (=> bm!473861 (= call!473866 (derivationStepZipperDown!1243 (h!70602 (exprs!5877 lt!2312978)) (Context!10755 (t!377687 (exprs!5877 lt!2312978))) (h!70604 s!2326)))))

(declare-fun b!5950372 () Bool)

(assert (=> b!5950372 (= e!3640205 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5950373 () Bool)

(assert (=> b!5950373 (= e!3640203 (nullable!5988 (h!70602 (exprs!5877 lt!2312978))))))

(assert (= (and d!1865342 res!2490956) b!5950373))

(assert (= (and d!1865342 c!1058781) b!5950369))

(assert (= (and d!1865342 (not c!1058781)) b!5950370))

(assert (= (and b!5950370 c!1058780) b!5950371))

(assert (= (and b!5950370 (not c!1058780)) b!5950372))

(assert (= (or b!5950369 b!5950371) bm!473861))

(declare-fun m!6838190 () Bool)

(assert (=> b!5950369 m!6838190))

(declare-fun m!6838192 () Bool)

(assert (=> bm!473861 m!6838192))

(declare-fun m!6838194 () Bool)

(assert (=> b!5950373 m!6838194))

(assert (=> b!5949720 d!1865342))

(declare-fun d!1865344 () Bool)

(assert (=> d!1865344 (= (flatMap!1506 lt!2312979 lambda!324608) (dynLambda!25095 lambda!324608 lt!2312978))))

(declare-fun lt!2313131 () Unit!157257)

(assert (=> d!1865344 (= lt!2313131 (choose!44834 lt!2312979 lt!2312978 lambda!324608))))

(assert (=> d!1865344 (= lt!2312979 (store ((as const (Array Context!10754 Bool)) false) lt!2312978 true))))

(assert (=> d!1865344 (= (lemmaFlatMapOnSingletonSet!1032 lt!2312979 lt!2312978 lambda!324608) lt!2313131)))

(declare-fun b_lambda!223579 () Bool)

(assert (=> (not b_lambda!223579) (not d!1865344)))

(declare-fun bs!1409047 () Bool)

(assert (= bs!1409047 d!1865344))

(assert (=> bs!1409047 m!6837630))

(declare-fun m!6838196 () Bool)

(assert (=> bs!1409047 m!6838196))

(declare-fun m!6838198 () Bool)

(assert (=> bs!1409047 m!6838198))

(assert (=> bs!1409047 m!6837632))

(assert (=> b!5949720 d!1865344))

(declare-fun d!1865346 () Bool)

(declare-fun lt!2313135 () Regex!15993)

(assert (=> d!1865346 (validRegex!7729 lt!2313135)))

(assert (=> d!1865346 (= lt!2313135 (generalisedUnion!1837 (unfocusZipperList!1414 zl!343)))))

(assert (=> d!1865346 (= (unfocusZipper!1735 zl!343) lt!2313135)))

(declare-fun bs!1409048 () Bool)

(assert (= bs!1409048 d!1865346))

(declare-fun m!6838206 () Bool)

(assert (=> bs!1409048 m!6838206))

(assert (=> bs!1409048 m!6837590))

(assert (=> bs!1409048 m!6837590))

(assert (=> bs!1409048 m!6837592))

(assert (=> b!5949729 d!1865346))

(declare-fun d!1865348 () Bool)

(declare-fun c!1058782 () Bool)

(assert (=> d!1865348 (= c!1058782 (isEmpty!36036 s!2326))))

(declare-fun e!3640216 () Bool)

(assert (=> d!1865348 (= (matchZipper!2029 lt!2312979 s!2326) e!3640216)))

(declare-fun b!5950388 () Bool)

(assert (=> b!5950388 (= e!3640216 (nullableZipper!1799 lt!2312979))))

(declare-fun b!5950389 () Bool)

(assert (=> b!5950389 (= e!3640216 (matchZipper!2029 (derivationStepZipper!1974 lt!2312979 (head!12525 s!2326)) (tail!11610 s!2326)))))

(assert (= (and d!1865348 c!1058782) b!5950388))

(assert (= (and d!1865348 (not c!1058782)) b!5950389))

(assert (=> d!1865348 m!6837984))

(declare-fun m!6838210 () Bool)

(assert (=> b!5950388 m!6838210))

(assert (=> b!5950389 m!6838010))

(assert (=> b!5950389 m!6838010))

(declare-fun m!6838212 () Bool)

(assert (=> b!5950389 m!6838212))

(assert (=> b!5950389 m!6838014))

(assert (=> b!5950389 m!6838212))

(assert (=> b!5950389 m!6838014))

(declare-fun m!6838214 () Bool)

(assert (=> b!5950389 m!6838214))

(assert (=> b!5949719 d!1865348))

(declare-fun d!1865350 () Bool)

(declare-fun c!1058783 () Bool)

(assert (=> d!1865350 (= c!1058783 (isEmpty!36036 (t!377689 s!2326)))))

(declare-fun e!3640219 () Bool)

(assert (=> d!1865350 (= (matchZipper!2029 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) (t!377689 s!2326)) e!3640219)))

(declare-fun b!5950400 () Bool)

(assert (=> b!5950400 (= e!3640219 (nullableZipper!1799 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326))))))

(declare-fun b!5950401 () Bool)

(assert (=> b!5950401 (= e!3640219 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))))))

(assert (= (and d!1865350 c!1058783) b!5950400))

(assert (= (and d!1865350 (not c!1058783)) b!5950401))

(assert (=> d!1865350 m!6837742))

(assert (=> b!5950400 m!6837640))

(declare-fun m!6838216 () Bool)

(assert (=> b!5950400 m!6838216))

(assert (=> b!5950401 m!6837746))

(assert (=> b!5950401 m!6837640))

(assert (=> b!5950401 m!6837746))

(declare-fun m!6838218 () Bool)

(assert (=> b!5950401 m!6838218))

(assert (=> b!5950401 m!6837750))

(assert (=> b!5950401 m!6838218))

(assert (=> b!5950401 m!6837750))

(declare-fun m!6838220 () Bool)

(assert (=> b!5950401 m!6838220))

(assert (=> b!5949719 d!1865350))

(declare-fun bs!1409049 () Bool)

(declare-fun d!1865352 () Bool)

(assert (= bs!1409049 (and d!1865352 b!5949712)))

(declare-fun lambda!324701 () Int)

(assert (=> bs!1409049 (= lambda!324701 lambda!324608)))

(declare-fun bs!1409050 () Bool)

(assert (= bs!1409050 (and d!1865352 d!1865300)))

(assert (=> bs!1409050 (= lambda!324701 lambda!324692)))

(declare-fun bs!1409051 () Bool)

(assert (= bs!1409051 (and d!1865352 d!1865306)))

(assert (=> bs!1409051 (= lambda!324701 lambda!324696)))

(assert (=> d!1865352 true))

(assert (=> d!1865352 (= (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) (flatMap!1506 lt!2312979 lambda!324701))))

(declare-fun bs!1409052 () Bool)

(assert (= bs!1409052 d!1865352))

(declare-fun m!6838222 () Bool)

(assert (=> bs!1409052 m!6838222))

(assert (=> b!5949719 d!1865352))

(declare-fun bs!1409056 () Bool)

(declare-fun d!1865354 () Bool)

(assert (= bs!1409056 (and d!1865354 b!5949944)))

(declare-fun lambda!324704 () Int)

(assert (=> bs!1409056 (not (= lambda!324704 lambda!324634))))

(declare-fun bs!1409057 () Bool)

(assert (= bs!1409057 (and d!1865354 b!5949941)))

(assert (=> bs!1409057 (not (= lambda!324704 lambda!324633))))

(declare-fun bs!1409058 () Bool)

(assert (= bs!1409058 (and d!1865354 d!1865262)))

(assert (=> bs!1409058 (= lambda!324704 lambda!324663)))

(declare-fun bs!1409059 () Bool)

(assert (= bs!1409059 (and d!1865354 b!5949946)))

(assert (=> bs!1409059 (not (= lambda!324704 lambda!324635))))

(declare-fun bs!1409060 () Bool)

(assert (= bs!1409060 (and d!1865354 d!1865258)))

(assert (=> bs!1409060 (= lambda!324704 lambda!324662)))

(declare-fun bs!1409061 () Bool)

(assert (= bs!1409061 (and d!1865354 d!1865252)))

(assert (=> bs!1409061 (= lambda!324704 lambda!324657)))

(declare-fun bs!1409062 () Bool)

(assert (= bs!1409062 (and d!1865354 d!1865316)))

(assert (=> bs!1409062 (= lambda!324704 lambda!324700)))

(declare-fun bs!1409063 () Bool)

(assert (= bs!1409063 (and d!1865354 b!5949939)))

(assert (=> bs!1409063 (not (= lambda!324704 lambda!324632))))

(declare-fun b!5950453 () Bool)

(declare-fun e!3640248 () Bool)

(declare-fun lt!2313138 () Regex!15993)

(assert (=> b!5950453 (= e!3640248 (= lt!2313138 (head!12528 (unfocusZipperList!1414 zl!343))))))

(declare-fun b!5950454 () Bool)

(declare-fun e!3640247 () Regex!15993)

(declare-fun e!3640245 () Regex!15993)

(assert (=> b!5950454 (= e!3640247 e!3640245)))

(declare-fun c!1058794 () Bool)

(assert (=> b!5950454 (= c!1058794 ((_ is Cons!64154) (unfocusZipperList!1414 zl!343)))))

(declare-fun b!5950455 () Bool)

(declare-fun e!3640244 () Bool)

(assert (=> b!5950455 (= e!3640244 e!3640248)))

(declare-fun c!1058792 () Bool)

(assert (=> b!5950455 (= c!1058792 (isEmpty!36033 (tail!11613 (unfocusZipperList!1414 zl!343))))))

(declare-fun e!3640249 () Bool)

(assert (=> d!1865354 e!3640249))

(declare-fun res!2490963 () Bool)

(assert (=> d!1865354 (=> (not res!2490963) (not e!3640249))))

(assert (=> d!1865354 (= res!2490963 (validRegex!7729 lt!2313138))))

(assert (=> d!1865354 (= lt!2313138 e!3640247)))

(declare-fun c!1058793 () Bool)

(declare-fun e!3640246 () Bool)

(assert (=> d!1865354 (= c!1058793 e!3640246)))

(declare-fun res!2490962 () Bool)

(assert (=> d!1865354 (=> (not res!2490962) (not e!3640246))))

(assert (=> d!1865354 (= res!2490962 ((_ is Cons!64154) (unfocusZipperList!1414 zl!343)))))

(assert (=> d!1865354 (forall!15076 (unfocusZipperList!1414 zl!343) lambda!324704)))

(assert (=> d!1865354 (= (generalisedUnion!1837 (unfocusZipperList!1414 zl!343)) lt!2313138)))

(declare-fun b!5950456 () Bool)

(assert (=> b!5950456 (= e!3640247 (h!70602 (unfocusZipperList!1414 zl!343)))))

(declare-fun b!5950457 () Bool)

(assert (=> b!5950457 (= e!3640245 (Union!15993 (h!70602 (unfocusZipperList!1414 zl!343)) (generalisedUnion!1837 (t!377687 (unfocusZipperList!1414 zl!343)))))))

(declare-fun b!5950458 () Bool)

(assert (=> b!5950458 (= e!3640245 EmptyLang!15993)))

(declare-fun b!5950459 () Bool)

(declare-fun isUnion!860 (Regex!15993) Bool)

(assert (=> b!5950459 (= e!3640248 (isUnion!860 lt!2313138))))

(declare-fun b!5950460 () Bool)

(declare-fun isEmptyLang!1430 (Regex!15993) Bool)

(assert (=> b!5950460 (= e!3640244 (isEmptyLang!1430 lt!2313138))))

(declare-fun b!5950461 () Bool)

(assert (=> b!5950461 (= e!3640249 e!3640244)))

(declare-fun c!1058795 () Bool)

(assert (=> b!5950461 (= c!1058795 (isEmpty!36033 (unfocusZipperList!1414 zl!343)))))

(declare-fun b!5950462 () Bool)

(assert (=> b!5950462 (= e!3640246 (isEmpty!36033 (t!377687 (unfocusZipperList!1414 zl!343))))))

(assert (= (and d!1865354 res!2490962) b!5950462))

(assert (= (and d!1865354 c!1058793) b!5950456))

(assert (= (and d!1865354 (not c!1058793)) b!5950454))

(assert (= (and b!5950454 c!1058794) b!5950457))

(assert (= (and b!5950454 (not c!1058794)) b!5950458))

(assert (= (and d!1865354 res!2490963) b!5950461))

(assert (= (and b!5950461 c!1058795) b!5950460))

(assert (= (and b!5950461 (not c!1058795)) b!5950455))

(assert (= (and b!5950455 c!1058792) b!5950453))

(assert (= (and b!5950455 (not c!1058792)) b!5950459))

(declare-fun m!6838224 () Bool)

(assert (=> b!5950462 m!6838224))

(assert (=> b!5950455 m!6837590))

(declare-fun m!6838226 () Bool)

(assert (=> b!5950455 m!6838226))

(assert (=> b!5950455 m!6838226))

(declare-fun m!6838228 () Bool)

(assert (=> b!5950455 m!6838228))

(assert (=> b!5950453 m!6837590))

(declare-fun m!6838230 () Bool)

(assert (=> b!5950453 m!6838230))

(declare-fun m!6838232 () Bool)

(assert (=> b!5950457 m!6838232))

(declare-fun m!6838234 () Bool)

(assert (=> d!1865354 m!6838234))

(assert (=> d!1865354 m!6837590))

(declare-fun m!6838236 () Bool)

(assert (=> d!1865354 m!6838236))

(assert (=> b!5950461 m!6837590))

(declare-fun m!6838238 () Bool)

(assert (=> b!5950461 m!6838238))

(declare-fun m!6838240 () Bool)

(assert (=> b!5950460 m!6838240))

(declare-fun m!6838242 () Bool)

(assert (=> b!5950459 m!6838242))

(assert (=> b!5949709 d!1865354))

(declare-fun bs!1409064 () Bool)

(declare-fun d!1865362 () Bool)

(assert (= bs!1409064 (and d!1865362 b!5949944)))

(declare-fun lambda!324707 () Int)

(assert (=> bs!1409064 (not (= lambda!324707 lambda!324634))))

(declare-fun bs!1409065 () Bool)

(assert (= bs!1409065 (and d!1865362 b!5949941)))

(assert (=> bs!1409065 (not (= lambda!324707 lambda!324633))))

(declare-fun bs!1409066 () Bool)

(assert (= bs!1409066 (and d!1865362 d!1865262)))

(assert (=> bs!1409066 (= lambda!324707 lambda!324663)))

(declare-fun bs!1409067 () Bool)

(assert (= bs!1409067 (and d!1865362 b!5949946)))

(assert (=> bs!1409067 (not (= lambda!324707 lambda!324635))))

(declare-fun bs!1409068 () Bool)

(assert (= bs!1409068 (and d!1865362 d!1865354)))

(assert (=> bs!1409068 (= lambda!324707 lambda!324704)))

(declare-fun bs!1409069 () Bool)

(assert (= bs!1409069 (and d!1865362 d!1865258)))

(assert (=> bs!1409069 (= lambda!324707 lambda!324662)))

(declare-fun bs!1409070 () Bool)

(assert (= bs!1409070 (and d!1865362 d!1865252)))

(assert (=> bs!1409070 (= lambda!324707 lambda!324657)))

(declare-fun bs!1409071 () Bool)

(assert (= bs!1409071 (and d!1865362 d!1865316)))

(assert (=> bs!1409071 (= lambda!324707 lambda!324700)))

(declare-fun bs!1409072 () Bool)

(assert (= bs!1409072 (and d!1865362 b!5949939)))

(assert (=> bs!1409072 (not (= lambda!324707 lambda!324632))))

(declare-fun lt!2313141 () List!64278)

(assert (=> d!1865362 (forall!15076 lt!2313141 lambda!324707)))

(declare-fun e!3640252 () List!64278)

(assert (=> d!1865362 (= lt!2313141 e!3640252)))

(declare-fun c!1058798 () Bool)

(assert (=> d!1865362 (= c!1058798 ((_ is Cons!64155) zl!343))))

(assert (=> d!1865362 (= (unfocusZipperList!1414 zl!343) lt!2313141)))

(declare-fun b!5950467 () Bool)

(assert (=> b!5950467 (= e!3640252 (Cons!64154 (generalisedConcat!1590 (exprs!5877 (h!70603 zl!343))) (unfocusZipperList!1414 (t!377688 zl!343))))))

(declare-fun b!5950468 () Bool)

(assert (=> b!5950468 (= e!3640252 Nil!64154)))

(assert (= (and d!1865362 c!1058798) b!5950467))

(assert (= (and d!1865362 (not c!1058798)) b!5950468))

(declare-fun m!6838244 () Bool)

(assert (=> d!1865362 m!6838244))

(assert (=> b!5950467 m!6837608))

(declare-fun m!6838246 () Bool)

(assert (=> b!5950467 m!6838246))

(assert (=> b!5949709 d!1865362))

(declare-fun b!5950487 () Bool)

(declare-fun lt!2313150 () Unit!157257)

(declare-fun lt!2313148 () Unit!157257)

(assert (=> b!5950487 (= lt!2313150 lt!2313148)))

(declare-fun ++!14090 (List!64280 List!64280) List!64280)

(assert (=> b!5950487 (= (++!14090 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) (t!377689 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2185 (List!64280 C!32256 List!64280 List!64280) Unit!157257)

(assert (=> b!5950487 (= lt!2313148 (lemmaMoveElementToOtherListKeepsConcatEq!2185 Nil!64156 (h!70604 s!2326) (t!377689 s!2326) s!2326))))

(declare-fun e!3640267 () Option!15884)

(assert (=> b!5950487 (= e!3640267 (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) (t!377689 s!2326) s!2326))))

(declare-fun b!5950488 () Bool)

(declare-fun res!2490974 () Bool)

(declare-fun e!3640263 () Bool)

(assert (=> b!5950488 (=> (not res!2490974) (not e!3640263))))

(declare-fun lt!2313149 () Option!15884)

(declare-fun get!22102 (Option!15884) tuple2!65944)

(assert (=> b!5950488 (= res!2490974 (matchR!8176 (regTwo!32498 r!7292) (_2!36275 (get!22102 lt!2313149))))))

(declare-fun b!5950489 () Bool)

(assert (=> b!5950489 (= e!3640267 None!15883)))

(declare-fun d!1865364 () Bool)

(declare-fun e!3640266 () Bool)

(assert (=> d!1865364 e!3640266))

(declare-fun res!2490976 () Bool)

(assert (=> d!1865364 (=> res!2490976 e!3640266)))

(assert (=> d!1865364 (= res!2490976 e!3640263)))

(declare-fun res!2490978 () Bool)

(assert (=> d!1865364 (=> (not res!2490978) (not e!3640263))))

(assert (=> d!1865364 (= res!2490978 (isDefined!12587 lt!2313149))))

(declare-fun e!3640264 () Option!15884)

(assert (=> d!1865364 (= lt!2313149 e!3640264)))

(declare-fun c!1058803 () Bool)

(declare-fun e!3640265 () Bool)

(assert (=> d!1865364 (= c!1058803 e!3640265)))

(declare-fun res!2490977 () Bool)

(assert (=> d!1865364 (=> (not res!2490977) (not e!3640265))))

(assert (=> d!1865364 (= res!2490977 (matchR!8176 (regOne!32498 r!7292) Nil!64156))))

(assert (=> d!1865364 (validRegex!7729 (regOne!32498 r!7292))))

(assert (=> d!1865364 (= (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) Nil!64156 s!2326 s!2326) lt!2313149)))

(declare-fun b!5950490 () Bool)

(assert (=> b!5950490 (= e!3640263 (= (++!14090 (_1!36275 (get!22102 lt!2313149)) (_2!36275 (get!22102 lt!2313149))) s!2326))))

(declare-fun b!5950491 () Bool)

(assert (=> b!5950491 (= e!3640264 e!3640267)))

(declare-fun c!1058804 () Bool)

(assert (=> b!5950491 (= c!1058804 ((_ is Nil!64156) s!2326))))

(declare-fun b!5950492 () Bool)

(assert (=> b!5950492 (= e!3640265 (matchR!8176 (regTwo!32498 r!7292) s!2326))))

(declare-fun b!5950493 () Bool)

(declare-fun res!2490975 () Bool)

(assert (=> b!5950493 (=> (not res!2490975) (not e!3640263))))

(assert (=> b!5950493 (= res!2490975 (matchR!8176 (regOne!32498 r!7292) (_1!36275 (get!22102 lt!2313149))))))

(declare-fun b!5950494 () Bool)

(assert (=> b!5950494 (= e!3640264 (Some!15883 (tuple2!65945 Nil!64156 s!2326)))))

(declare-fun b!5950495 () Bool)

(assert (=> b!5950495 (= e!3640266 (not (isDefined!12587 lt!2313149)))))

(assert (= (and d!1865364 res!2490977) b!5950492))

(assert (= (and d!1865364 c!1058803) b!5950494))

(assert (= (and d!1865364 (not c!1058803)) b!5950491))

(assert (= (and b!5950491 c!1058804) b!5950489))

(assert (= (and b!5950491 (not c!1058804)) b!5950487))

(assert (= (and d!1865364 res!2490978) b!5950493))

(assert (= (and b!5950493 res!2490975) b!5950488))

(assert (= (and b!5950488 res!2490974) b!5950490))

(assert (= (and d!1865364 (not res!2490976)) b!5950495))

(declare-fun m!6838248 () Bool)

(assert (=> b!5950492 m!6838248))

(declare-fun m!6838250 () Bool)

(assert (=> b!5950487 m!6838250))

(assert (=> b!5950487 m!6838250))

(declare-fun m!6838252 () Bool)

(assert (=> b!5950487 m!6838252))

(declare-fun m!6838254 () Bool)

(assert (=> b!5950487 m!6838254))

(assert (=> b!5950487 m!6838250))

(declare-fun m!6838256 () Bool)

(assert (=> b!5950487 m!6838256))

(declare-fun m!6838258 () Bool)

(assert (=> b!5950495 m!6838258))

(assert (=> d!1865364 m!6838258))

(declare-fun m!6838260 () Bool)

(assert (=> d!1865364 m!6838260))

(declare-fun m!6838262 () Bool)

(assert (=> d!1865364 m!6838262))

(declare-fun m!6838264 () Bool)

(assert (=> b!5950493 m!6838264))

(declare-fun m!6838266 () Bool)

(assert (=> b!5950493 m!6838266))

(assert (=> b!5950488 m!6838264))

(declare-fun m!6838268 () Bool)

(assert (=> b!5950488 m!6838268))

(assert (=> b!5950490 m!6838264))

(declare-fun m!6838270 () Bool)

(assert (=> b!5950490 m!6838270))

(assert (=> b!5949708 d!1865364))

(declare-fun bs!1409073 () Bool)

(declare-fun d!1865366 () Bool)

(assert (= bs!1409073 (and d!1865366 b!5949708)))

(declare-fun lambda!324710 () Int)

(assert (=> bs!1409073 (= lambda!324710 lambda!324606)))

(assert (=> bs!1409073 (not (= lambda!324710 lambda!324607))))

(declare-fun bs!1409074 () Bool)

(assert (= bs!1409074 (and d!1865366 b!5950187)))

(assert (=> bs!1409074 (not (= lambda!324710 lambda!324672))))

(declare-fun bs!1409075 () Bool)

(assert (= bs!1409075 (and d!1865366 b!5950188)))

(assert (=> bs!1409075 (not (= lambda!324710 lambda!324673))))

(assert (=> d!1865366 true))

(assert (=> d!1865366 true))

(assert (=> d!1865366 true))

(assert (=> d!1865366 (= (isDefined!12587 (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) Nil!64156 s!2326 s!2326)) (Exists!3063 lambda!324710))))

(declare-fun lt!2313153 () Unit!157257)

(declare-fun choose!44840 (Regex!15993 Regex!15993 List!64280) Unit!157257)

(assert (=> d!1865366 (= lt!2313153 (choose!44840 (regOne!32498 r!7292) (regTwo!32498 r!7292) s!2326))))

(assert (=> d!1865366 (validRegex!7729 (regOne!32498 r!7292))))

(assert (=> d!1865366 (= (lemmaFindConcatSeparationEquivalentToExists!2062 (regOne!32498 r!7292) (regTwo!32498 r!7292) s!2326) lt!2313153)))

(declare-fun bs!1409076 () Bool)

(assert (= bs!1409076 d!1865366))

(assert (=> bs!1409076 m!6837600))

(assert (=> bs!1409076 m!6837602))

(assert (=> bs!1409076 m!6837600))

(assert (=> bs!1409076 m!6838262))

(declare-fun m!6838272 () Bool)

(assert (=> bs!1409076 m!6838272))

(declare-fun m!6838274 () Bool)

(assert (=> bs!1409076 m!6838274))

(assert (=> b!5949708 d!1865366))

(declare-fun bs!1409077 () Bool)

(declare-fun d!1865368 () Bool)

(assert (= bs!1409077 (and d!1865368 d!1865366)))

(declare-fun lambda!324715 () Int)

(assert (=> bs!1409077 (= lambda!324715 lambda!324710)))

(declare-fun bs!1409078 () Bool)

(assert (= bs!1409078 (and d!1865368 b!5950187)))

(assert (=> bs!1409078 (not (= lambda!324715 lambda!324672))))

(declare-fun bs!1409079 () Bool)

(assert (= bs!1409079 (and d!1865368 b!5949708)))

(assert (=> bs!1409079 (not (= lambda!324715 lambda!324607))))

(assert (=> bs!1409079 (= lambda!324715 lambda!324606)))

(declare-fun bs!1409080 () Bool)

(assert (= bs!1409080 (and d!1865368 b!5950188)))

(assert (=> bs!1409080 (not (= lambda!324715 lambda!324673))))

(assert (=> d!1865368 true))

(assert (=> d!1865368 true))

(assert (=> d!1865368 true))

(declare-fun bs!1409081 () Bool)

(assert (= bs!1409081 d!1865368))

(declare-fun lambda!324716 () Int)

(assert (=> bs!1409081 (not (= lambda!324716 lambda!324715))))

(assert (=> bs!1409077 (not (= lambda!324716 lambda!324710))))

(assert (=> bs!1409078 (not (= lambda!324716 lambda!324672))))

(assert (=> bs!1409079 (= lambda!324716 lambda!324607)))

(assert (=> bs!1409079 (not (= lambda!324716 lambda!324606))))

(assert (=> bs!1409080 (= lambda!324716 lambda!324673)))

(assert (=> d!1865368 true))

(assert (=> d!1865368 true))

(assert (=> d!1865368 true))

(assert (=> d!1865368 (= (Exists!3063 lambda!324715) (Exists!3063 lambda!324716))))

(declare-fun lt!2313156 () Unit!157257)

(declare-fun choose!44841 (Regex!15993 Regex!15993 List!64280) Unit!157257)

(assert (=> d!1865368 (= lt!2313156 (choose!44841 (regOne!32498 r!7292) (regTwo!32498 r!7292) s!2326))))

(assert (=> d!1865368 (validRegex!7729 (regOne!32498 r!7292))))

(assert (=> d!1865368 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1600 (regOne!32498 r!7292) (regTwo!32498 r!7292) s!2326) lt!2313156)))

(declare-fun m!6838276 () Bool)

(assert (=> bs!1409081 m!6838276))

(declare-fun m!6838278 () Bool)

(assert (=> bs!1409081 m!6838278))

(declare-fun m!6838280 () Bool)

(assert (=> bs!1409081 m!6838280))

(assert (=> bs!1409081 m!6838262))

(assert (=> b!5949708 d!1865368))

(declare-fun d!1865370 () Bool)

(declare-fun isEmpty!36038 (Option!15884) Bool)

(assert (=> d!1865370 (= (isDefined!12587 (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) Nil!64156 s!2326 s!2326)) (not (isEmpty!36038 (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) Nil!64156 s!2326 s!2326))))))

(declare-fun bs!1409082 () Bool)

(assert (= bs!1409082 d!1865370))

(assert (=> bs!1409082 m!6837600))

(declare-fun m!6838282 () Bool)

(assert (=> bs!1409082 m!6838282))

(assert (=> b!5949708 d!1865370))

(declare-fun d!1865372 () Bool)

(declare-fun choose!44842 (Int) Bool)

(assert (=> d!1865372 (= (Exists!3063 lambda!324606) (choose!44842 lambda!324606))))

(declare-fun bs!1409083 () Bool)

(assert (= bs!1409083 d!1865372))

(declare-fun m!6838284 () Bool)

(assert (=> bs!1409083 m!6838284))

(assert (=> b!5949708 d!1865372))

(declare-fun d!1865374 () Bool)

(assert (=> d!1865374 (= (Exists!3063 lambda!324607) (choose!44842 lambda!324607))))

(declare-fun bs!1409084 () Bool)

(assert (= bs!1409084 d!1865374))

(declare-fun m!6838286 () Bool)

(assert (=> bs!1409084 m!6838286))

(assert (=> b!5949708 d!1865374))

(declare-fun b!5950512 () Bool)

(declare-fun e!3640276 () Bool)

(declare-fun tp!1655787 () Bool)

(declare-fun tp!1655788 () Bool)

(assert (=> b!5950512 (= e!3640276 (and tp!1655787 tp!1655788))))

(assert (=> b!5949702 (= tp!1655719 e!3640276)))

(assert (= (and b!5949702 ((_ is Cons!64154) (exprs!5877 setElem!40431))) b!5950512))

(declare-fun b!5950525 () Bool)

(declare-fun e!3640279 () Bool)

(declare-fun tp!1655799 () Bool)

(assert (=> b!5950525 (= e!3640279 tp!1655799)))

(declare-fun b!5950526 () Bool)

(declare-fun tp!1655803 () Bool)

(declare-fun tp!1655802 () Bool)

(assert (=> b!5950526 (= e!3640279 (and tp!1655803 tp!1655802))))

(declare-fun b!5950524 () Bool)

(declare-fun tp!1655800 () Bool)

(declare-fun tp!1655801 () Bool)

(assert (=> b!5950524 (= e!3640279 (and tp!1655800 tp!1655801))))

(assert (=> b!5949706 (= tp!1655722 e!3640279)))

(declare-fun b!5950523 () Bool)

(assert (=> b!5950523 (= e!3640279 tp_is_empty!41239)))

(assert (= (and b!5949706 ((_ is ElementMatch!15993) (regOne!32498 r!7292))) b!5950523))

(assert (= (and b!5949706 ((_ is Concat!24838) (regOne!32498 r!7292))) b!5950524))

(assert (= (and b!5949706 ((_ is Star!15993) (regOne!32498 r!7292))) b!5950525))

(assert (= (and b!5949706 ((_ is Union!15993) (regOne!32498 r!7292))) b!5950526))

(declare-fun b!5950529 () Bool)

(declare-fun e!3640280 () Bool)

(declare-fun tp!1655804 () Bool)

(assert (=> b!5950529 (= e!3640280 tp!1655804)))

(declare-fun b!5950530 () Bool)

(declare-fun tp!1655808 () Bool)

(declare-fun tp!1655807 () Bool)

(assert (=> b!5950530 (= e!3640280 (and tp!1655808 tp!1655807))))

(declare-fun b!5950528 () Bool)

(declare-fun tp!1655805 () Bool)

(declare-fun tp!1655806 () Bool)

(assert (=> b!5950528 (= e!3640280 (and tp!1655805 tp!1655806))))

(assert (=> b!5949706 (= tp!1655715 e!3640280)))

(declare-fun b!5950527 () Bool)

(assert (=> b!5950527 (= e!3640280 tp_is_empty!41239)))

(assert (= (and b!5949706 ((_ is ElementMatch!15993) (regTwo!32498 r!7292))) b!5950527))

(assert (= (and b!5949706 ((_ is Concat!24838) (regTwo!32498 r!7292))) b!5950528))

(assert (= (and b!5949706 ((_ is Star!15993) (regTwo!32498 r!7292))) b!5950529))

(assert (= (and b!5949706 ((_ is Union!15993) (regTwo!32498 r!7292))) b!5950530))

(declare-fun b!5950535 () Bool)

(declare-fun e!3640283 () Bool)

(declare-fun tp!1655811 () Bool)

(assert (=> b!5950535 (= e!3640283 (and tp_is_empty!41239 tp!1655811))))

(assert (=> b!5949721 (= tp!1655721 e!3640283)))

(assert (= (and b!5949721 ((_ is Cons!64156) (t!377689 s!2326))) b!5950535))

(declare-fun b!5950538 () Bool)

(declare-fun e!3640284 () Bool)

(declare-fun tp!1655812 () Bool)

(assert (=> b!5950538 (= e!3640284 tp!1655812)))

(declare-fun b!5950539 () Bool)

(declare-fun tp!1655816 () Bool)

(declare-fun tp!1655815 () Bool)

(assert (=> b!5950539 (= e!3640284 (and tp!1655816 tp!1655815))))

(declare-fun b!5950537 () Bool)

(declare-fun tp!1655813 () Bool)

(declare-fun tp!1655814 () Bool)

(assert (=> b!5950537 (= e!3640284 (and tp!1655813 tp!1655814))))

(assert (=> b!5949711 (= tp!1655717 e!3640284)))

(declare-fun b!5950536 () Bool)

(assert (=> b!5950536 (= e!3640284 tp_is_empty!41239)))

(assert (= (and b!5949711 ((_ is ElementMatch!15993) (regOne!32499 r!7292))) b!5950536))

(assert (= (and b!5949711 ((_ is Concat!24838) (regOne!32499 r!7292))) b!5950537))

(assert (= (and b!5949711 ((_ is Star!15993) (regOne!32499 r!7292))) b!5950538))

(assert (= (and b!5949711 ((_ is Union!15993) (regOne!32499 r!7292))) b!5950539))

(declare-fun b!5950542 () Bool)

(declare-fun e!3640285 () Bool)

(declare-fun tp!1655817 () Bool)

(assert (=> b!5950542 (= e!3640285 tp!1655817)))

(declare-fun b!5950543 () Bool)

(declare-fun tp!1655821 () Bool)

(declare-fun tp!1655820 () Bool)

(assert (=> b!5950543 (= e!3640285 (and tp!1655821 tp!1655820))))

(declare-fun b!5950541 () Bool)

(declare-fun tp!1655818 () Bool)

(declare-fun tp!1655819 () Bool)

(assert (=> b!5950541 (= e!3640285 (and tp!1655818 tp!1655819))))

(assert (=> b!5949711 (= tp!1655724 e!3640285)))

(declare-fun b!5950540 () Bool)

(assert (=> b!5950540 (= e!3640285 tp_is_empty!41239)))

(assert (= (and b!5949711 ((_ is ElementMatch!15993) (regTwo!32499 r!7292))) b!5950540))

(assert (= (and b!5949711 ((_ is Concat!24838) (regTwo!32499 r!7292))) b!5950541))

(assert (= (and b!5949711 ((_ is Star!15993) (regTwo!32499 r!7292))) b!5950542))

(assert (= (and b!5949711 ((_ is Union!15993) (regTwo!32499 r!7292))) b!5950543))

(declare-fun b!5950551 () Bool)

(declare-fun e!3640291 () Bool)

(declare-fun tp!1655826 () Bool)

(assert (=> b!5950551 (= e!3640291 tp!1655826)))

(declare-fun e!3640290 () Bool)

(declare-fun tp!1655827 () Bool)

(declare-fun b!5950550 () Bool)

(assert (=> b!5950550 (= e!3640290 (and (inv!83229 (h!70603 (t!377688 zl!343))) e!3640291 tp!1655827))))

(assert (=> b!5949724 (= tp!1655718 e!3640290)))

(assert (= b!5950550 b!5950551))

(assert (= (and b!5949724 ((_ is Cons!64155) (t!377688 zl!343))) b!5950550))

(declare-fun m!6838288 () Bool)

(assert (=> b!5950550 m!6838288))

(declare-fun b!5950552 () Bool)

(declare-fun e!3640292 () Bool)

(declare-fun tp!1655828 () Bool)

(declare-fun tp!1655829 () Bool)

(assert (=> b!5950552 (= e!3640292 (and tp!1655828 tp!1655829))))

(assert (=> b!5949704 (= tp!1655723 e!3640292)))

(assert (= (and b!5949704 ((_ is Cons!64154) (exprs!5877 (h!70603 zl!343)))) b!5950552))

(declare-fun b!5950555 () Bool)

(declare-fun e!3640293 () Bool)

(declare-fun tp!1655830 () Bool)

(assert (=> b!5950555 (= e!3640293 tp!1655830)))

(declare-fun b!5950556 () Bool)

(declare-fun tp!1655834 () Bool)

(declare-fun tp!1655833 () Bool)

(assert (=> b!5950556 (= e!3640293 (and tp!1655834 tp!1655833))))

(declare-fun b!5950554 () Bool)

(declare-fun tp!1655831 () Bool)

(declare-fun tp!1655832 () Bool)

(assert (=> b!5950554 (= e!3640293 (and tp!1655831 tp!1655832))))

(assert (=> b!5949714 (= tp!1655720 e!3640293)))

(declare-fun b!5950553 () Bool)

(assert (=> b!5950553 (= e!3640293 tp_is_empty!41239)))

(assert (= (and b!5949714 ((_ is ElementMatch!15993) (reg!16322 r!7292))) b!5950553))

(assert (= (and b!5949714 ((_ is Concat!24838) (reg!16322 r!7292))) b!5950554))

(assert (= (and b!5949714 ((_ is Star!15993) (reg!16322 r!7292))) b!5950555))

(assert (= (and b!5949714 ((_ is Union!15993) (reg!16322 r!7292))) b!5950556))

(declare-fun condSetEmpty!40437 () Bool)

(assert (=> setNonEmpty!40431 (= condSetEmpty!40437 (= setRest!40431 ((as const (Array Context!10754 Bool)) false)))))

(declare-fun setRes!40437 () Bool)

(assert (=> setNonEmpty!40431 (= tp!1655716 setRes!40437)))

(declare-fun setIsEmpty!40437 () Bool)

(assert (=> setIsEmpty!40437 setRes!40437))

(declare-fun tp!1655839 () Bool)

(declare-fun setElem!40437 () Context!10754)

(declare-fun setNonEmpty!40437 () Bool)

(declare-fun e!3640296 () Bool)

(assert (=> setNonEmpty!40437 (= setRes!40437 (and tp!1655839 (inv!83229 setElem!40437) e!3640296))))

(declare-fun setRest!40437 () (InoxSet Context!10754))

(assert (=> setNonEmpty!40437 (= setRest!40431 ((_ map or) (store ((as const (Array Context!10754 Bool)) false) setElem!40437 true) setRest!40437))))

(declare-fun b!5950561 () Bool)

(declare-fun tp!1655840 () Bool)

(assert (=> b!5950561 (= e!3640296 tp!1655840)))

(assert (= (and setNonEmpty!40431 condSetEmpty!40437) setIsEmpty!40437))

(assert (= (and setNonEmpty!40431 (not condSetEmpty!40437)) setNonEmpty!40437))

(assert (= setNonEmpty!40437 b!5950561))

(declare-fun m!6838290 () Bool)

(assert (=> setNonEmpty!40437 m!6838290))

(declare-fun b_lambda!223587 () Bool)

(assert (= b_lambda!223577 (or b!5949712 b_lambda!223587)))

(declare-fun bs!1409085 () Bool)

(declare-fun d!1865376 () Bool)

(assert (= bs!1409085 (and d!1865376 b!5949712)))

(assert (=> bs!1409085 (= (dynLambda!25095 lambda!324608 lt!2313004) (derivationStepZipperUp!1169 lt!2313004 (h!70604 s!2326)))))

(assert (=> bs!1409085 m!6837624))

(assert (=> d!1865332 d!1865376))

(declare-fun b_lambda!223589 () Bool)

(assert (= b_lambda!223571 (or b!5949712 b_lambda!223589)))

(declare-fun bs!1409086 () Bool)

(declare-fun d!1865378 () Bool)

(assert (= bs!1409086 (and d!1865378 b!5949712)))

(assert (=> bs!1409086 (= (dynLambda!25095 lambda!324608 (h!70603 zl!343)) (derivationStepZipperUp!1169 (h!70603 zl!343) (h!70604 s!2326)))))

(assert (=> bs!1409086 m!6837582))

(assert (=> d!1865238 d!1865378))

(declare-fun b_lambda!223591 () Bool)

(assert (= b_lambda!223579 (or b!5949712 b_lambda!223591)))

(declare-fun bs!1409087 () Bool)

(declare-fun d!1865380 () Bool)

(assert (= bs!1409087 (and d!1865380 b!5949712)))

(assert (=> bs!1409087 (= (dynLambda!25095 lambda!324608 lt!2312978) (derivationStepZipperUp!1169 lt!2312978 (h!70604 s!2326)))))

(assert (=> bs!1409087 m!6837620))

(assert (=> d!1865344 d!1865380))

(check-sat (not b!5950526) (not bm!473848) (not b!5950550) (not bm!473861) (not d!1865364) (not bm!473860) (not b!5949946) (not b!5949939) (not bm!473852) (not b!5950457) (not b!5950244) (not bm!473807) (not d!1865374) (not bm!473841) (not b!5950543) (not b!5949944) (not d!1865354) (not d!1865340) (not b!5950525) (not b_lambda!223591) (not b!5949885) (not bm!473824) (not b!5950389) (not d!1865302) (not b!5950036) (not b!5950112) (not bm!473846) (not b!5950541) (not d!1865372) (not b!5950115) (not b!5950057) (not d!1865204) (not bs!1409086) (not b!5950561) (not b!5950321) (not bs!1409085) (not b_lambda!223589) (not d!1865316) (not bm!473827) (not b!5949884) (not d!1865300) (not b!5950490) (not b!5950529) (not b!5950290) (not b!5950493) (not d!1865238) (not b!5950530) (not b!5950110) (not b!5950245) (not b!5950551) (not bm!473781) (not b!5949896) (not b!5950193) (not b!5950512) (not d!1865370) (not b!5950254) (not b!5950467) (not b!5950034) (not b!5949848) (not d!1865262) (not b!5950495) (not b!5950461) (not d!1865310) (not b!5950460) (not b!5950528) tp_is_empty!41239 (not b!5950373) (not b!5950487) (not b!5950058) (not b!5950317) (not b!5950333) (not b!5950555) (not d!1865198) (not b!5949881) (not bm!473823) (not b_lambda!223587) (not d!1865350) (not d!1865304) (not b!5950305) (not bm!473782) (not b!5950462) (not b!5949989) (not bm!473858) (not b!5950524) (not b!5950539) (not d!1865368) (not b!5949883) (not b!5950554) (not b!5950043) (not b!5950340) (not b!5950318) (not b!5950492) (not bm!473854) (not b!5950111) (not d!1865252) (not b!5950455) (not b!5950388) (not d!1865322) (not d!1865282) (not b!5950108) (not setNonEmpty!40437) (not b!5950453) (not b!5949882) (not d!1865278) (not b!5950344) (not b!5950309) (not b!5950045) (not b!5950488) (not b!5950537) (not b!5950400) (not d!1865206) (not b!5950552) (not bm!473845) (not b!5950250) (not d!1865332) (not d!1865256) (not d!1865258) (not b!5949886) (not b!5950114) (not b!5950113) (not d!1865366) (not d!1865344) (not b!5950345) (not b!5950538) (not b!5950401) (not d!1865352) (not d!1865306) (not bs!1409087) (not b!5950459) (not b!5949941) (not b!5950535) (not b!5949985) (not b!5950369) (not bm!473843) (not d!1865348) (not b!5950356) (not d!1865362) (not d!1865220) (not b!5950249) (not d!1865346) (not b!5950191) (not bm!473850) (not d!1865202) (not b!5950252) (not b!5950322) (not d!1865334) (not b!5950542) (not bm!473856) (not b!5950556))
(check-sat)
(get-model)

(declare-fun d!1865530 () Bool)

(assert (=> d!1865530 (= (isEmpty!36036 (t!377689 s!2326)) ((_ is Nil!64156) (t!377689 s!2326)))))

(assert (=> d!1865350 d!1865530))

(declare-fun b!5950860 () Bool)

(declare-fun e!3640489 () Bool)

(declare-fun e!3640486 () Bool)

(assert (=> b!5950860 (= e!3640489 e!3640486)))

(declare-fun res!2491115 () Bool)

(assert (=> b!5950860 (= res!2491115 (not (nullable!5988 (reg!16322 lt!2313075))))))

(assert (=> b!5950860 (=> (not res!2491115) (not e!3640486))))

(declare-fun call!473936 () Bool)

(declare-fun c!1058898 () Bool)

(declare-fun c!1058897 () Bool)

(declare-fun bm!473930 () Bool)

(assert (=> bm!473930 (= call!473936 (validRegex!7729 (ite c!1058897 (reg!16322 lt!2313075) (ite c!1058898 (regTwo!32499 lt!2313075) (regTwo!32498 lt!2313075)))))))

(declare-fun b!5950861 () Bool)

(declare-fun e!3640492 () Bool)

(assert (=> b!5950861 (= e!3640492 e!3640489)))

(assert (=> b!5950861 (= c!1058897 ((_ is Star!15993) lt!2313075))))

(declare-fun bm!473931 () Bool)

(declare-fun call!473935 () Bool)

(assert (=> bm!473931 (= call!473935 (validRegex!7729 (ite c!1058898 (regOne!32499 lt!2313075) (regOne!32498 lt!2313075))))))

(declare-fun b!5950862 () Bool)

(declare-fun e!3640491 () Bool)

(declare-fun call!473937 () Bool)

(assert (=> b!5950862 (= e!3640491 call!473937)))

(declare-fun b!5950863 () Bool)

(declare-fun res!2491114 () Bool)

(assert (=> b!5950863 (=> (not res!2491114) (not e!3640491))))

(assert (=> b!5950863 (= res!2491114 call!473935)))

(declare-fun e!3640490 () Bool)

(assert (=> b!5950863 (= e!3640490 e!3640491)))

(declare-fun bm!473932 () Bool)

(assert (=> bm!473932 (= call!473937 call!473936)))

(declare-fun b!5950864 () Bool)

(declare-fun e!3640488 () Bool)

(declare-fun e!3640487 () Bool)

(assert (=> b!5950864 (= e!3640488 e!3640487)))

(declare-fun res!2491112 () Bool)

(assert (=> b!5950864 (=> (not res!2491112) (not e!3640487))))

(assert (=> b!5950864 (= res!2491112 call!473935)))

(declare-fun b!5950865 () Bool)

(assert (=> b!5950865 (= e!3640489 e!3640490)))

(assert (=> b!5950865 (= c!1058898 ((_ is Union!15993) lt!2313075))))

(declare-fun b!5950866 () Bool)

(assert (=> b!5950866 (= e!3640487 call!473937)))

(declare-fun b!5950867 () Bool)

(assert (=> b!5950867 (= e!3640486 call!473936)))

(declare-fun b!5950859 () Bool)

(declare-fun res!2491113 () Bool)

(assert (=> b!5950859 (=> res!2491113 e!3640488)))

(assert (=> b!5950859 (= res!2491113 (not ((_ is Concat!24838) lt!2313075)))))

(assert (=> b!5950859 (= e!3640490 e!3640488)))

(declare-fun d!1865534 () Bool)

(declare-fun res!2491116 () Bool)

(assert (=> d!1865534 (=> res!2491116 e!3640492)))

(assert (=> d!1865534 (= res!2491116 ((_ is ElementMatch!15993) lt!2313075))))

(assert (=> d!1865534 (= (validRegex!7729 lt!2313075) e!3640492)))

(assert (= (and d!1865534 (not res!2491116)) b!5950861))

(assert (= (and b!5950861 c!1058897) b!5950860))

(assert (= (and b!5950861 (not c!1058897)) b!5950865))

(assert (= (and b!5950860 res!2491115) b!5950867))

(assert (= (and b!5950865 c!1058898) b!5950863))

(assert (= (and b!5950865 (not c!1058898)) b!5950859))

(assert (= (and b!5950863 res!2491114) b!5950862))

(assert (= (and b!5950859 (not res!2491113)) b!5950864))

(assert (= (and b!5950864 res!2491112) b!5950866))

(assert (= (or b!5950862 b!5950866) bm!473932))

(assert (= (or b!5950863 b!5950864) bm!473931))

(assert (= (or b!5950867 bm!473932) bm!473930))

(declare-fun m!6838594 () Bool)

(assert (=> b!5950860 m!6838594))

(declare-fun m!6838596 () Bool)

(assert (=> bm!473930 m!6838596))

(declare-fun m!6838598 () Bool)

(assert (=> bm!473931 m!6838598))

(assert (=> d!1865258 d!1865534))

(declare-fun d!1865536 () Bool)

(declare-fun res!2491121 () Bool)

(declare-fun e!3640497 () Bool)

(assert (=> d!1865536 (=> res!2491121 e!3640497)))

(assert (=> d!1865536 (= res!2491121 ((_ is Nil!64154) (exprs!5877 (h!70603 zl!343))))))

(assert (=> d!1865536 (= (forall!15076 (exprs!5877 (h!70603 zl!343)) lambda!324662) e!3640497)))

(declare-fun b!5950872 () Bool)

(declare-fun e!3640498 () Bool)

(assert (=> b!5950872 (= e!3640497 e!3640498)))

(declare-fun res!2491122 () Bool)

(assert (=> b!5950872 (=> (not res!2491122) (not e!3640498))))

(declare-fun dynLambda!25100 (Int Regex!15993) Bool)

(assert (=> b!5950872 (= res!2491122 (dynLambda!25100 lambda!324662 (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun b!5950873 () Bool)

(assert (=> b!5950873 (= e!3640498 (forall!15076 (t!377687 (exprs!5877 (h!70603 zl!343))) lambda!324662))))

(assert (= (and d!1865536 (not res!2491121)) b!5950872))

(assert (= (and b!5950872 res!2491122) b!5950873))

(declare-fun b_lambda!223611 () Bool)

(assert (=> (not b_lambda!223611) (not b!5950872)))

(declare-fun m!6838600 () Bool)

(assert (=> b!5950872 m!6838600))

(declare-fun m!6838602 () Bool)

(assert (=> b!5950873 m!6838602))

(assert (=> d!1865258 d!1865536))

(declare-fun d!1865538 () Bool)

(assert (=> d!1865538 (= (head!12528 (unfocusZipperList!1414 zl!343)) (h!70602 (unfocusZipperList!1414 zl!343)))))

(assert (=> b!5950453 d!1865538))

(declare-fun d!1865540 () Bool)

(declare-fun c!1058899 () Bool)

(assert (=> d!1865540 (= c!1058899 (isEmpty!36036 (tail!11610 (t!377689 s!2326))))))

(declare-fun e!3640499 () Bool)

(assert (=> d!1865540 (= (matchZipper!2029 (derivationStepZipper!1974 lt!2312998 (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))) e!3640499)))

(declare-fun b!5950874 () Bool)

(assert (=> b!5950874 (= e!3640499 (nullableZipper!1799 (derivationStepZipper!1974 lt!2312998 (head!12525 (t!377689 s!2326)))))))

(declare-fun b!5950875 () Bool)

(assert (=> b!5950875 (= e!3640499 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312998 (head!12525 (t!377689 s!2326))) (head!12525 (tail!11610 (t!377689 s!2326)))) (tail!11610 (tail!11610 (t!377689 s!2326)))))))

(assert (= (and d!1865540 c!1058899) b!5950874))

(assert (= (and d!1865540 (not c!1058899)) b!5950875))

(assert (=> d!1865540 m!6837750))

(declare-fun m!6838610 () Bool)

(assert (=> d!1865540 m!6838610))

(assert (=> b!5950874 m!6837748))

(declare-fun m!6838612 () Bool)

(assert (=> b!5950874 m!6838612))

(assert (=> b!5950875 m!6837750))

(declare-fun m!6838614 () Bool)

(assert (=> b!5950875 m!6838614))

(assert (=> b!5950875 m!6837748))

(assert (=> b!5950875 m!6838614))

(declare-fun m!6838616 () Bool)

(assert (=> b!5950875 m!6838616))

(assert (=> b!5950875 m!6837750))

(declare-fun m!6838618 () Bool)

(assert (=> b!5950875 m!6838618))

(assert (=> b!5950875 m!6838616))

(assert (=> b!5950875 m!6838618))

(declare-fun m!6838620 () Bool)

(assert (=> b!5950875 m!6838620))

(assert (=> b!5949882 d!1865540))

(declare-fun bs!1409274 () Bool)

(declare-fun d!1865544 () Bool)

(assert (= bs!1409274 (and d!1865544 b!5949712)))

(declare-fun lambda!324743 () Int)

(assert (=> bs!1409274 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324743 lambda!324608))))

(declare-fun bs!1409275 () Bool)

(assert (= bs!1409275 (and d!1865544 d!1865300)))

(assert (=> bs!1409275 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324743 lambda!324692))))

(declare-fun bs!1409276 () Bool)

(assert (= bs!1409276 (and d!1865544 d!1865306)))

(assert (=> bs!1409276 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324743 lambda!324696))))

(declare-fun bs!1409277 () Bool)

(assert (= bs!1409277 (and d!1865544 d!1865352)))

(assert (=> bs!1409277 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324743 lambda!324701))))

(assert (=> d!1865544 true))

(assert (=> d!1865544 (= (derivationStepZipper!1974 lt!2312998 (head!12525 (t!377689 s!2326))) (flatMap!1506 lt!2312998 lambda!324743))))

(declare-fun bs!1409278 () Bool)

(assert (= bs!1409278 d!1865544))

(declare-fun m!6838624 () Bool)

(assert (=> bs!1409278 m!6838624))

(assert (=> b!5949882 d!1865544))

(declare-fun d!1865548 () Bool)

(assert (=> d!1865548 (= (head!12525 (t!377689 s!2326)) (h!70604 (t!377689 s!2326)))))

(assert (=> b!5949882 d!1865548))

(declare-fun d!1865550 () Bool)

(assert (=> d!1865550 (= (tail!11610 (t!377689 s!2326)) (t!377689 (t!377689 s!2326)))))

(assert (=> b!5949882 d!1865550))

(declare-fun bs!1409279 () Bool)

(declare-fun d!1865552 () Bool)

(assert (= bs!1409279 (and d!1865552 b!5949941)))

(declare-fun lambda!324744 () Int)

(assert (=> bs!1409279 (not (= lambda!324744 lambda!324633))))

(declare-fun bs!1409280 () Bool)

(assert (= bs!1409280 (and d!1865552 d!1865262)))

(assert (=> bs!1409280 (= lambda!324744 lambda!324663)))

(declare-fun bs!1409281 () Bool)

(assert (= bs!1409281 (and d!1865552 b!5949946)))

(assert (=> bs!1409281 (not (= lambda!324744 lambda!324635))))

(declare-fun bs!1409282 () Bool)

(assert (= bs!1409282 (and d!1865552 d!1865354)))

(assert (=> bs!1409282 (= lambda!324744 lambda!324704)))

(declare-fun bs!1409283 () Bool)

(assert (= bs!1409283 (and d!1865552 d!1865258)))

(assert (=> bs!1409283 (= lambda!324744 lambda!324662)))

(declare-fun bs!1409284 () Bool)

(assert (= bs!1409284 (and d!1865552 d!1865252)))

(assert (=> bs!1409284 (= lambda!324744 lambda!324657)))

(declare-fun bs!1409285 () Bool)

(assert (= bs!1409285 (and d!1865552 d!1865362)))

(assert (=> bs!1409285 (= lambda!324744 lambda!324707)))

(declare-fun bs!1409286 () Bool)

(assert (= bs!1409286 (and d!1865552 b!5949944)))

(assert (=> bs!1409286 (not (= lambda!324744 lambda!324634))))

(declare-fun bs!1409287 () Bool)

(assert (= bs!1409287 (and d!1865552 d!1865316)))

(assert (=> bs!1409287 (= lambda!324744 lambda!324700)))

(declare-fun bs!1409288 () Bool)

(assert (= bs!1409288 (and d!1865552 b!5949939)))

(assert (=> bs!1409288 (not (= lambda!324744 lambda!324632))))

(assert (=> d!1865552 (= (inv!83229 (h!70603 (t!377688 zl!343))) (forall!15076 (exprs!5877 (h!70603 (t!377688 zl!343))) lambda!324744))))

(declare-fun bs!1409289 () Bool)

(assert (= bs!1409289 d!1865552))

(declare-fun m!6838636 () Bool)

(assert (=> bs!1409289 m!6838636))

(assert (=> b!5950550 d!1865552))

(declare-fun d!1865556 () Bool)

(declare-fun res!2491139 () Bool)

(declare-fun e!3640525 () Bool)

(assert (=> d!1865556 (=> res!2491139 e!3640525)))

(assert (=> d!1865556 (= res!2491139 ((_ is Nil!64155) lt!2313126))))

(assert (=> d!1865556 (= (noDuplicate!1851 lt!2313126) e!3640525)))

(declare-fun b!5950918 () Bool)

(declare-fun e!3640526 () Bool)

(assert (=> b!5950918 (= e!3640525 e!3640526)))

(declare-fun res!2491140 () Bool)

(assert (=> b!5950918 (=> (not res!2491140) (not e!3640526))))

(declare-fun contains!19973 (List!64279 Context!10754) Bool)

(assert (=> b!5950918 (= res!2491140 (not (contains!19973 (t!377688 lt!2313126) (h!70603 lt!2313126))))))

(declare-fun b!5950919 () Bool)

(assert (=> b!5950919 (= e!3640526 (noDuplicate!1851 (t!377688 lt!2313126)))))

(assert (= (and d!1865556 (not res!2491139)) b!5950918))

(assert (= (and b!5950918 res!2491140) b!5950919))

(declare-fun m!6838664 () Bool)

(assert (=> b!5950918 m!6838664))

(declare-fun m!6838666 () Bool)

(assert (=> b!5950919 m!6838666))

(assert (=> d!1865310 d!1865556))

(declare-fun d!1865564 () Bool)

(declare-fun e!3640536 () Bool)

(assert (=> d!1865564 e!3640536))

(declare-fun res!2491146 () Bool)

(assert (=> d!1865564 (=> (not res!2491146) (not e!3640536))))

(declare-fun res!2491147 () List!64279)

(assert (=> d!1865564 (= res!2491146 (noDuplicate!1851 res!2491147))))

(declare-fun e!3640535 () Bool)

(assert (=> d!1865564 e!3640535))

(assert (=> d!1865564 (= (choose!44838 z!1189) res!2491147)))

(declare-fun b!5950930 () Bool)

(declare-fun e!3640537 () Bool)

(declare-fun tp!1655853 () Bool)

(assert (=> b!5950930 (= e!3640537 tp!1655853)))

(declare-fun b!5950929 () Bool)

(declare-fun tp!1655854 () Bool)

(assert (=> b!5950929 (= e!3640535 (and (inv!83229 (h!70603 res!2491147)) e!3640537 tp!1655854))))

(declare-fun b!5950931 () Bool)

(assert (=> b!5950931 (= e!3640536 (= (content!11840 res!2491147) z!1189))))

(assert (= b!5950929 b!5950930))

(assert (= (and d!1865564 ((_ is Cons!64155) res!2491147)) b!5950929))

(assert (= (and d!1865564 res!2491146) b!5950931))

(declare-fun m!6838668 () Bool)

(assert (=> d!1865564 m!6838668))

(declare-fun m!6838670 () Bool)

(assert (=> b!5950929 m!6838670))

(declare-fun m!6838672 () Bool)

(assert (=> b!5950931 m!6838672))

(assert (=> d!1865310 d!1865564))

(declare-fun d!1865566 () Bool)

(assert (=> d!1865566 (= ($colon$colon!1880 (exprs!5877 lt!2312989) (ite (or c!1058744 c!1058745) (regTwo!32498 r!7292) r!7292)) (Cons!64154 (ite (or c!1058744 c!1058745) (regTwo!32498 r!7292) r!7292) (exprs!5877 lt!2312989)))))

(assert (=> bm!473845 d!1865566))

(declare-fun d!1865568 () Bool)

(assert (=> d!1865568 (= (isConcat!943 lt!2313075) ((_ is Concat!24838) lt!2313075))))

(assert (=> b!5950110 d!1865568))

(declare-fun d!1865570 () Bool)

(assert (=> d!1865570 (= (head!12525 s!2326) (h!70604 s!2326))))

(assert (=> b!5950250 d!1865570))

(assert (=> d!1865332 d!1865340))

(declare-fun d!1865574 () Bool)

(assert (=> d!1865574 (= (flatMap!1506 lt!2312981 lambda!324608) (dynLambda!25095 lambda!324608 lt!2313004))))

(assert (=> d!1865574 true))

(declare-fun _$13!2747 () Unit!157257)

(assert (=> d!1865574 (= (choose!44834 lt!2312981 lt!2313004 lambda!324608) _$13!2747)))

(declare-fun b_lambda!223617 () Bool)

(assert (=> (not b_lambda!223617) (not d!1865574)))

(declare-fun bs!1409321 () Bool)

(assert (= bs!1409321 d!1865574))

(assert (=> bs!1409321 m!6837626))

(assert (=> bs!1409321 m!6838166))

(assert (=> d!1865332 d!1865574))

(declare-fun e!3640541 () (InoxSet Context!10754))

(declare-fun call!473951 () (InoxSet Context!10754))

(declare-fun b!5950934 () Bool)

(assert (=> b!5950934 (= e!3640541 ((_ map or) call!473951 (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))))) (h!70604 s!2326))))))

(declare-fun b!5950935 () Bool)

(declare-fun e!3640542 () (InoxSet Context!10754))

(assert (=> b!5950935 (= e!3640541 e!3640542)))

(declare-fun c!1058914 () Bool)

(assert (=> b!5950935 (= c!1058914 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))))))

(declare-fun b!5950936 () Bool)

(assert (=> b!5950936 (= e!3640542 call!473951)))

(declare-fun d!1865580 () Bool)

(declare-fun c!1058915 () Bool)

(declare-fun e!3640540 () Bool)

(assert (=> d!1865580 (= c!1058915 e!3640540)))

(declare-fun res!2491150 () Bool)

(assert (=> d!1865580 (=> (not res!2491150) (not e!3640540))))

(assert (=> d!1865580 (= res!2491150 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))))))

(assert (=> d!1865580 (= (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 lt!2313004))) (h!70604 s!2326)) e!3640541)))

(declare-fun bm!473946 () Bool)

(assert (=> bm!473946 (= call!473951 (derivationStepZipperDown!1243 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))) (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))))) (h!70604 s!2326)))))

(declare-fun b!5950937 () Bool)

(assert (=> b!5950937 (= e!3640542 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5950938 () Bool)

(assert (=> b!5950938 (= e!3640540 (nullable!5988 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))))))))

(assert (= (and d!1865580 res!2491150) b!5950938))

(assert (= (and d!1865580 c!1058915) b!5950934))

(assert (= (and d!1865580 (not c!1058915)) b!5950935))

(assert (= (and b!5950935 c!1058914) b!5950936))

(assert (= (and b!5950935 (not c!1058914)) b!5950937))

(assert (= (or b!5950934 b!5950936) bm!473946))

(declare-fun m!6838690 () Bool)

(assert (=> b!5950934 m!6838690))

(declare-fun m!6838692 () Bool)

(assert (=> bm!473946 m!6838692))

(declare-fun m!6838694 () Bool)

(assert (=> b!5950938 m!6838694))

(assert (=> b!5950340 d!1865580))

(declare-fun d!1865582 () Bool)

(assert (=> d!1865582 (= (isEmpty!36036 s!2326) ((_ is Nil!64156) s!2326))))

(assert (=> d!1865348 d!1865582))

(declare-fun bs!1409322 () Bool)

(declare-fun d!1865584 () Bool)

(assert (= bs!1409322 (and d!1865584 d!1865552)))

(declare-fun lambda!324747 () Int)

(assert (=> bs!1409322 (= lambda!324747 lambda!324744)))

(declare-fun bs!1409323 () Bool)

(assert (= bs!1409323 (and d!1865584 b!5949941)))

(assert (=> bs!1409323 (not (= lambda!324747 lambda!324633))))

(declare-fun bs!1409324 () Bool)

(assert (= bs!1409324 (and d!1865584 d!1865262)))

(assert (=> bs!1409324 (= lambda!324747 lambda!324663)))

(declare-fun bs!1409325 () Bool)

(assert (= bs!1409325 (and d!1865584 b!5949946)))

(assert (=> bs!1409325 (not (= lambda!324747 lambda!324635))))

(declare-fun bs!1409326 () Bool)

(assert (= bs!1409326 (and d!1865584 d!1865354)))

(assert (=> bs!1409326 (= lambda!324747 lambda!324704)))

(declare-fun bs!1409327 () Bool)

(assert (= bs!1409327 (and d!1865584 d!1865258)))

(assert (=> bs!1409327 (= lambda!324747 lambda!324662)))

(declare-fun bs!1409328 () Bool)

(assert (= bs!1409328 (and d!1865584 d!1865252)))

(assert (=> bs!1409328 (= lambda!324747 lambda!324657)))

(declare-fun bs!1409329 () Bool)

(assert (= bs!1409329 (and d!1865584 d!1865362)))

(assert (=> bs!1409329 (= lambda!324747 lambda!324707)))

(declare-fun bs!1409330 () Bool)

(assert (= bs!1409330 (and d!1865584 b!5949944)))

(assert (=> bs!1409330 (not (= lambda!324747 lambda!324634))))

(declare-fun bs!1409331 () Bool)

(assert (= bs!1409331 (and d!1865584 d!1865316)))

(assert (=> bs!1409331 (= lambda!324747 lambda!324700)))

(declare-fun bs!1409332 () Bool)

(assert (= bs!1409332 (and d!1865584 b!5949939)))

(assert (=> bs!1409332 (not (= lambda!324747 lambda!324632))))

(declare-fun b!5950939 () Bool)

(declare-fun e!3640547 () Bool)

(declare-fun lt!2313182 () Regex!15993)

(assert (=> b!5950939 (= e!3640547 (= lt!2313182 (head!12528 (t!377687 (unfocusZipperList!1414 zl!343)))))))

(declare-fun b!5950940 () Bool)

(declare-fun e!3640546 () Regex!15993)

(declare-fun e!3640544 () Regex!15993)

(assert (=> b!5950940 (= e!3640546 e!3640544)))

(declare-fun c!1058918 () Bool)

(assert (=> b!5950940 (= c!1058918 ((_ is Cons!64154) (t!377687 (unfocusZipperList!1414 zl!343))))))

(declare-fun b!5950941 () Bool)

(declare-fun e!3640543 () Bool)

(assert (=> b!5950941 (= e!3640543 e!3640547)))

(declare-fun c!1058916 () Bool)

(assert (=> b!5950941 (= c!1058916 (isEmpty!36033 (tail!11613 (t!377687 (unfocusZipperList!1414 zl!343)))))))

(declare-fun e!3640548 () Bool)

(assert (=> d!1865584 e!3640548))

(declare-fun res!2491152 () Bool)

(assert (=> d!1865584 (=> (not res!2491152) (not e!3640548))))

(assert (=> d!1865584 (= res!2491152 (validRegex!7729 lt!2313182))))

(assert (=> d!1865584 (= lt!2313182 e!3640546)))

(declare-fun c!1058917 () Bool)

(declare-fun e!3640545 () Bool)

(assert (=> d!1865584 (= c!1058917 e!3640545)))

(declare-fun res!2491151 () Bool)

(assert (=> d!1865584 (=> (not res!2491151) (not e!3640545))))

(assert (=> d!1865584 (= res!2491151 ((_ is Cons!64154) (t!377687 (unfocusZipperList!1414 zl!343))))))

(assert (=> d!1865584 (forall!15076 (t!377687 (unfocusZipperList!1414 zl!343)) lambda!324747)))

(assert (=> d!1865584 (= (generalisedUnion!1837 (t!377687 (unfocusZipperList!1414 zl!343))) lt!2313182)))

(declare-fun b!5950942 () Bool)

(assert (=> b!5950942 (= e!3640546 (h!70602 (t!377687 (unfocusZipperList!1414 zl!343))))))

(declare-fun b!5950943 () Bool)

(assert (=> b!5950943 (= e!3640544 (Union!15993 (h!70602 (t!377687 (unfocusZipperList!1414 zl!343))) (generalisedUnion!1837 (t!377687 (t!377687 (unfocusZipperList!1414 zl!343))))))))

(declare-fun b!5950944 () Bool)

(assert (=> b!5950944 (= e!3640544 EmptyLang!15993)))

(declare-fun b!5950945 () Bool)

(assert (=> b!5950945 (= e!3640547 (isUnion!860 lt!2313182))))

(declare-fun b!5950946 () Bool)

(assert (=> b!5950946 (= e!3640543 (isEmptyLang!1430 lt!2313182))))

(declare-fun b!5950947 () Bool)

(assert (=> b!5950947 (= e!3640548 e!3640543)))

(declare-fun c!1058919 () Bool)

(assert (=> b!5950947 (= c!1058919 (isEmpty!36033 (t!377687 (unfocusZipperList!1414 zl!343))))))

(declare-fun b!5950948 () Bool)

(assert (=> b!5950948 (= e!3640545 (isEmpty!36033 (t!377687 (t!377687 (unfocusZipperList!1414 zl!343)))))))

(assert (= (and d!1865584 res!2491151) b!5950948))

(assert (= (and d!1865584 c!1058917) b!5950942))

(assert (= (and d!1865584 (not c!1058917)) b!5950940))

(assert (= (and b!5950940 c!1058918) b!5950943))

(assert (= (and b!5950940 (not c!1058918)) b!5950944))

(assert (= (and d!1865584 res!2491152) b!5950947))

(assert (= (and b!5950947 c!1058919) b!5950946))

(assert (= (and b!5950947 (not c!1058919)) b!5950941))

(assert (= (and b!5950941 c!1058916) b!5950939))

(assert (= (and b!5950941 (not c!1058916)) b!5950945))

(declare-fun m!6838696 () Bool)

(assert (=> b!5950948 m!6838696))

(declare-fun m!6838698 () Bool)

(assert (=> b!5950941 m!6838698))

(assert (=> b!5950941 m!6838698))

(declare-fun m!6838700 () Bool)

(assert (=> b!5950941 m!6838700))

(declare-fun m!6838702 () Bool)

(assert (=> b!5950939 m!6838702))

(declare-fun m!6838704 () Bool)

(assert (=> b!5950943 m!6838704))

(declare-fun m!6838706 () Bool)

(assert (=> d!1865584 m!6838706))

(declare-fun m!6838708 () Bool)

(assert (=> d!1865584 m!6838708))

(assert (=> b!5950947 m!6838224))

(declare-fun m!6838710 () Bool)

(assert (=> b!5950946 m!6838710))

(declare-fun m!6838712 () Bool)

(assert (=> b!5950945 m!6838712))

(assert (=> b!5950457 d!1865584))

(assert (=> bs!1409086 d!1865222))

(assert (=> d!1865256 d!1865530))

(declare-fun d!1865586 () Bool)

(declare-fun c!1058920 () Bool)

(assert (=> d!1865586 (= c!1058920 (isEmpty!36036 (tail!11610 s!2326)))))

(declare-fun e!3640549 () Bool)

(assert (=> d!1865586 (= (matchZipper!2029 (derivationStepZipper!1974 lt!2312979 (head!12525 s!2326)) (tail!11610 s!2326)) e!3640549)))

(declare-fun b!5950949 () Bool)

(assert (=> b!5950949 (= e!3640549 (nullableZipper!1799 (derivationStepZipper!1974 lt!2312979 (head!12525 s!2326))))))

(declare-fun b!5950951 () Bool)

(assert (=> b!5950951 (= e!3640549 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312979 (head!12525 s!2326)) (head!12525 (tail!11610 s!2326))) (tail!11610 (tail!11610 s!2326))))))

(assert (= (and d!1865586 c!1058920) b!5950949))

(assert (= (and d!1865586 (not c!1058920)) b!5950951))

(assert (=> d!1865586 m!6838014))

(assert (=> d!1865586 m!6838020))

(assert (=> b!5950949 m!6838212))

(declare-fun m!6838714 () Bool)

(assert (=> b!5950949 m!6838714))

(assert (=> b!5950951 m!6838014))

(declare-fun m!6838716 () Bool)

(assert (=> b!5950951 m!6838716))

(assert (=> b!5950951 m!6838212))

(assert (=> b!5950951 m!6838716))

(declare-fun m!6838718 () Bool)

(assert (=> b!5950951 m!6838718))

(assert (=> b!5950951 m!6838014))

(declare-fun m!6838720 () Bool)

(assert (=> b!5950951 m!6838720))

(assert (=> b!5950951 m!6838718))

(assert (=> b!5950951 m!6838720))

(declare-fun m!6838722 () Bool)

(assert (=> b!5950951 m!6838722))

(assert (=> b!5950389 d!1865586))

(declare-fun bs!1409333 () Bool)

(declare-fun d!1865588 () Bool)

(assert (= bs!1409333 (and d!1865588 b!5949712)))

(declare-fun lambda!324748 () Int)

(assert (=> bs!1409333 (= (= (head!12525 s!2326) (h!70604 s!2326)) (= lambda!324748 lambda!324608))))

(declare-fun bs!1409334 () Bool)

(assert (= bs!1409334 (and d!1865588 d!1865300)))

(assert (=> bs!1409334 (= (= (head!12525 s!2326) (h!70604 s!2326)) (= lambda!324748 lambda!324692))))

(declare-fun bs!1409335 () Bool)

(assert (= bs!1409335 (and d!1865588 d!1865306)))

(assert (=> bs!1409335 (= (= (head!12525 s!2326) (h!70604 s!2326)) (= lambda!324748 lambda!324696))))

(declare-fun bs!1409336 () Bool)

(assert (= bs!1409336 (and d!1865588 d!1865352)))

(assert (=> bs!1409336 (= (= (head!12525 s!2326) (h!70604 s!2326)) (= lambda!324748 lambda!324701))))

(declare-fun bs!1409337 () Bool)

(assert (= bs!1409337 (and d!1865588 d!1865544)))

(assert (=> bs!1409337 (= (= (head!12525 s!2326) (head!12525 (t!377689 s!2326))) (= lambda!324748 lambda!324743))))

(assert (=> d!1865588 true))

(assert (=> d!1865588 (= (derivationStepZipper!1974 lt!2312979 (head!12525 s!2326)) (flatMap!1506 lt!2312979 lambda!324748))))

(declare-fun bs!1409338 () Bool)

(assert (= bs!1409338 d!1865588))

(declare-fun m!6838724 () Bool)

(assert (=> bs!1409338 m!6838724))

(assert (=> b!5950389 d!1865588))

(assert (=> b!5950389 d!1865570))

(declare-fun d!1865590 () Bool)

(assert (=> d!1865590 (= (tail!11610 s!2326) (t!377689 s!2326))))

(assert (=> b!5950389 d!1865590))

(declare-fun d!1865592 () Bool)

(assert (=> d!1865592 (= (isEmpty!36033 (unfocusZipperList!1414 zl!343)) ((_ is Nil!64154) (unfocusZipperList!1414 zl!343)))))

(assert (=> b!5950461 d!1865592))

(declare-fun bs!1409339 () Bool)

(declare-fun d!1865594 () Bool)

(assert (= bs!1409339 (and d!1865594 b!5950034)))

(declare-fun lambda!324751 () Int)

(assert (=> bs!1409339 (not (= lambda!324751 lambda!324650))))

(declare-fun bs!1409340 () Bool)

(assert (= bs!1409340 (and d!1865594 b!5950036)))

(assert (=> bs!1409340 (not (= lambda!324751 lambda!324651))))

(declare-fun bs!1409341 () Bool)

(assert (= bs!1409341 (and d!1865594 b!5950043)))

(assert (=> bs!1409341 (not (= lambda!324751 lambda!324653))))

(declare-fun bs!1409342 () Bool)

(assert (= bs!1409342 (and d!1865594 b!5950045)))

(assert (=> bs!1409342 (not (= lambda!324751 lambda!324654))))

(declare-fun exists!2352 ((InoxSet Context!10754) Int) Bool)

(assert (=> d!1865594 (= (nullableZipper!1799 lt!2312995) (exists!2352 lt!2312995 lambda!324751))))

(declare-fun bs!1409343 () Bool)

(assert (= bs!1409343 d!1865594))

(declare-fun m!6838726 () Bool)

(assert (=> bs!1409343 m!6838726))

(assert (=> b!5949885 d!1865594))

(declare-fun d!1865596 () Bool)

(declare-fun res!2491159 () Bool)

(declare-fun e!3640570 () Bool)

(assert (=> d!1865596 (=> res!2491159 e!3640570)))

(assert (=> d!1865596 (= res!2491159 ((_ is Nil!64154) (exprs!5877 lt!2313004)))))

(assert (=> d!1865596 (= (forall!15076 (exprs!5877 lt!2313004) lambda!324633) e!3640570)))

(declare-fun b!5950985 () Bool)

(declare-fun e!3640571 () Bool)

(assert (=> b!5950985 (= e!3640570 e!3640571)))

(declare-fun res!2491160 () Bool)

(assert (=> b!5950985 (=> (not res!2491160) (not e!3640571))))

(assert (=> b!5950985 (= res!2491160 (dynLambda!25100 lambda!324633 (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun b!5950986 () Bool)

(assert (=> b!5950986 (= e!3640571 (forall!15076 (t!377687 (exprs!5877 lt!2313004)) lambda!324633))))

(assert (= (and d!1865596 (not res!2491159)) b!5950985))

(assert (= (and b!5950985 res!2491160) b!5950986))

(declare-fun b_lambda!223619 () Bool)

(assert (=> (not b_lambda!223619) (not b!5950985)))

(declare-fun m!6838728 () Bool)

(assert (=> b!5950985 m!6838728))

(declare-fun m!6838730 () Bool)

(assert (=> b!5950986 m!6838730))

(assert (=> b!5949941 d!1865596))

(assert (=> bm!473823 d!1865582))

(declare-fun bs!1409344 () Bool)

(declare-fun d!1865598 () Bool)

(assert (= bs!1409344 (and d!1865598 d!1865552)))

(declare-fun lambda!324752 () Int)

(assert (=> bs!1409344 (= lambda!324752 lambda!324744)))

(declare-fun bs!1409345 () Bool)

(assert (= bs!1409345 (and d!1865598 b!5949941)))

(assert (=> bs!1409345 (not (= lambda!324752 lambda!324633))))

(declare-fun bs!1409346 () Bool)

(assert (= bs!1409346 (and d!1865598 d!1865262)))

(assert (=> bs!1409346 (= lambda!324752 lambda!324663)))

(declare-fun bs!1409347 () Bool)

(assert (= bs!1409347 (and d!1865598 b!5949946)))

(assert (=> bs!1409347 (not (= lambda!324752 lambda!324635))))

(declare-fun bs!1409348 () Bool)

(assert (= bs!1409348 (and d!1865598 d!1865354)))

(assert (=> bs!1409348 (= lambda!324752 lambda!324704)))

(declare-fun bs!1409349 () Bool)

(assert (= bs!1409349 (and d!1865598 d!1865258)))

(assert (=> bs!1409349 (= lambda!324752 lambda!324662)))

(declare-fun bs!1409350 () Bool)

(assert (= bs!1409350 (and d!1865598 d!1865252)))

(assert (=> bs!1409350 (= lambda!324752 lambda!324657)))

(declare-fun bs!1409351 () Bool)

(assert (= bs!1409351 (and d!1865598 d!1865584)))

(assert (=> bs!1409351 (= lambda!324752 lambda!324747)))

(declare-fun bs!1409352 () Bool)

(assert (= bs!1409352 (and d!1865598 d!1865362)))

(assert (=> bs!1409352 (= lambda!324752 lambda!324707)))

(declare-fun bs!1409353 () Bool)

(assert (= bs!1409353 (and d!1865598 b!5949944)))

(assert (=> bs!1409353 (not (= lambda!324752 lambda!324634))))

(declare-fun bs!1409354 () Bool)

(assert (= bs!1409354 (and d!1865598 d!1865316)))

(assert (=> bs!1409354 (= lambda!324752 lambda!324700)))

(declare-fun bs!1409355 () Bool)

(assert (= bs!1409355 (and d!1865598 b!5949939)))

(assert (=> bs!1409355 (not (= lambda!324752 lambda!324632))))

(declare-fun b!5950987 () Bool)

(declare-fun e!3640575 () Regex!15993)

(declare-fun e!3640577 () Regex!15993)

(assert (=> b!5950987 (= e!3640575 e!3640577)))

(declare-fun c!1058937 () Bool)

(assert (=> b!5950987 (= c!1058937 ((_ is Cons!64154) (t!377687 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun e!3640576 () Bool)

(assert (=> d!1865598 e!3640576))

(declare-fun res!2491161 () Bool)

(assert (=> d!1865598 (=> (not res!2491161) (not e!3640576))))

(declare-fun lt!2313185 () Regex!15993)

(assert (=> d!1865598 (= res!2491161 (validRegex!7729 lt!2313185))))

(assert (=> d!1865598 (= lt!2313185 e!3640575)))

(declare-fun c!1058938 () Bool)

(declare-fun e!3640573 () Bool)

(assert (=> d!1865598 (= c!1058938 e!3640573)))

(declare-fun res!2491162 () Bool)

(assert (=> d!1865598 (=> (not res!2491162) (not e!3640573))))

(assert (=> d!1865598 (= res!2491162 ((_ is Cons!64154) (t!377687 (exprs!5877 (h!70603 zl!343)))))))

(assert (=> d!1865598 (forall!15076 (t!377687 (exprs!5877 (h!70603 zl!343))) lambda!324752)))

(assert (=> d!1865598 (= (generalisedConcat!1590 (t!377687 (exprs!5877 (h!70603 zl!343)))) lt!2313185)))

(declare-fun b!5950988 () Bool)

(declare-fun e!3640572 () Bool)

(declare-fun e!3640574 () Bool)

(assert (=> b!5950988 (= e!3640572 e!3640574)))

(declare-fun c!1058940 () Bool)

(assert (=> b!5950988 (= c!1058940 (isEmpty!36033 (tail!11613 (t!377687 (exprs!5877 (h!70603 zl!343))))))))

(declare-fun b!5950989 () Bool)

(assert (=> b!5950989 (= e!3640575 (h!70602 (t!377687 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun b!5950990 () Bool)

(assert (=> b!5950990 (= e!3640574 (isConcat!943 lt!2313185))))

(declare-fun b!5950991 () Bool)

(assert (=> b!5950991 (= e!3640572 (isEmptyExpr!1420 lt!2313185))))

(declare-fun b!5950992 () Bool)

(assert (=> b!5950992 (= e!3640573 (isEmpty!36033 (t!377687 (t!377687 (exprs!5877 (h!70603 zl!343))))))))

(declare-fun b!5950993 () Bool)

(assert (=> b!5950993 (= e!3640574 (= lt!2313185 (head!12528 (t!377687 (exprs!5877 (h!70603 zl!343))))))))

(declare-fun b!5950994 () Bool)

(assert (=> b!5950994 (= e!3640577 (Concat!24838 (h!70602 (t!377687 (exprs!5877 (h!70603 zl!343)))) (generalisedConcat!1590 (t!377687 (t!377687 (exprs!5877 (h!70603 zl!343)))))))))

(declare-fun b!5950995 () Bool)

(assert (=> b!5950995 (= e!3640576 e!3640572)))

(declare-fun c!1058939 () Bool)

(assert (=> b!5950995 (= c!1058939 (isEmpty!36033 (t!377687 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun b!5950996 () Bool)

(assert (=> b!5950996 (= e!3640577 EmptyExpr!15993)))

(assert (= (and d!1865598 res!2491162) b!5950992))

(assert (= (and d!1865598 c!1058938) b!5950989))

(assert (= (and d!1865598 (not c!1058938)) b!5950987))

(assert (= (and b!5950987 c!1058937) b!5950994))

(assert (= (and b!5950987 (not c!1058937)) b!5950996))

(assert (= (and d!1865598 res!2491161) b!5950995))

(assert (= (and b!5950995 c!1058939) b!5950991))

(assert (= (and b!5950995 (not c!1058939)) b!5950988))

(assert (= (and b!5950988 c!1058940) b!5950993))

(assert (= (and b!5950988 (not c!1058940)) b!5950990))

(assert (=> b!5950995 m!6837634))

(declare-fun m!6838732 () Bool)

(assert (=> b!5950994 m!6838732))

(declare-fun m!6838734 () Bool)

(assert (=> b!5950992 m!6838734))

(declare-fun m!6838736 () Bool)

(assert (=> b!5950990 m!6838736))

(declare-fun m!6838738 () Bool)

(assert (=> b!5950988 m!6838738))

(assert (=> b!5950988 m!6838738))

(declare-fun m!6838740 () Bool)

(assert (=> b!5950988 m!6838740))

(declare-fun m!6838742 () Bool)

(assert (=> b!5950993 m!6838742))

(declare-fun m!6838744 () Bool)

(assert (=> b!5950991 m!6838744))

(declare-fun m!6838746 () Bool)

(assert (=> d!1865598 m!6838746))

(declare-fun m!6838748 () Bool)

(assert (=> d!1865598 m!6838748))

(assert (=> b!5950114 d!1865598))

(declare-fun d!1865600 () Bool)

(assert (=> d!1865600 (= (isEmpty!36036 (tail!11610 s!2326)) ((_ is Nil!64156) (tail!11610 s!2326)))))

(assert (=> b!5950254 d!1865600))

(assert (=> b!5950254 d!1865590))

(declare-fun d!1865602 () Bool)

(declare-fun c!1058941 () Bool)

(assert (=> d!1865602 (= c!1058941 (and ((_ is ElementMatch!15993) (h!70602 (exprs!5877 lt!2312978))) (= (c!1058556 (h!70602 (exprs!5877 lt!2312978))) (h!70604 s!2326))))))

(declare-fun e!3640581 () (InoxSet Context!10754))

(assert (=> d!1865602 (= (derivationStepZipperDown!1243 (h!70602 (exprs!5877 lt!2312978)) (Context!10755 (t!377687 (exprs!5877 lt!2312978))) (h!70604 s!2326)) e!3640581)))

(declare-fun b!5950997 () Bool)

(declare-fun e!3640583 () Bool)

(assert (=> b!5950997 (= e!3640583 (nullable!5988 (regOne!32498 (h!70602 (exprs!5877 lt!2312978)))))))

(declare-fun bm!473961 () Bool)

(declare-fun call!473968 () List!64278)

(declare-fun call!473971 () List!64278)

(assert (=> bm!473961 (= call!473968 call!473971)))

(declare-fun c!1058944 () Bool)

(declare-fun call!473970 () (InoxSet Context!10754))

(declare-fun c!1058943 () Bool)

(declare-fun bm!473962 () Bool)

(declare-fun c!1058945 () Bool)

(assert (=> bm!473962 (= call!473970 (derivationStepZipperDown!1243 (ite c!1058945 (regTwo!32499 (h!70602 (exprs!5877 lt!2312978))) (ite c!1058943 (regTwo!32498 (h!70602 (exprs!5877 lt!2312978))) (ite c!1058944 (regOne!32498 (h!70602 (exprs!5877 lt!2312978))) (reg!16322 (h!70602 (exprs!5877 lt!2312978)))))) (ite (or c!1058945 c!1058943) (Context!10755 (t!377687 (exprs!5877 lt!2312978))) (Context!10755 call!473968)) (h!70604 s!2326)))))

(declare-fun b!5950998 () Bool)

(declare-fun e!3640580 () (InoxSet Context!10754))

(declare-fun call!473966 () (InoxSet Context!10754))

(assert (=> b!5950998 (= e!3640580 call!473966)))

(declare-fun b!5950999 () Bool)

(declare-fun e!3640578 () (InoxSet Context!10754))

(declare-fun call!473967 () (InoxSet Context!10754))

(declare-fun call!473969 () (InoxSet Context!10754))

(assert (=> b!5950999 (= e!3640578 ((_ map or) call!473967 call!473969))))

(declare-fun b!5951000 () Bool)

(assert (=> b!5951000 (= c!1058943 e!3640583)))

(declare-fun res!2491163 () Bool)

(assert (=> b!5951000 (=> (not res!2491163) (not e!3640583))))

(assert (=> b!5951000 (= res!2491163 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2312978))))))

(declare-fun e!3640579 () (InoxSet Context!10754))

(assert (=> b!5951000 (= e!3640579 e!3640578)))

(declare-fun b!5951001 () Bool)

(assert (=> b!5951001 (= e!3640579 ((_ map or) call!473967 call!473970))))

(declare-fun b!5951002 () Bool)

(assert (=> b!5951002 (= e!3640578 e!3640580)))

(assert (=> b!5951002 (= c!1058944 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2312978))))))

(declare-fun b!5951003 () Bool)

(declare-fun c!1058942 () Bool)

(assert (=> b!5951003 (= c!1058942 ((_ is Star!15993) (h!70602 (exprs!5877 lt!2312978))))))

(declare-fun e!3640582 () (InoxSet Context!10754))

(assert (=> b!5951003 (= e!3640580 e!3640582)))

(declare-fun bm!473963 () Bool)

(assert (=> bm!473963 (= call!473969 call!473970)))

(declare-fun bm!473964 () Bool)

(assert (=> bm!473964 (= call!473967 (derivationStepZipperDown!1243 (ite c!1058945 (regOne!32499 (h!70602 (exprs!5877 lt!2312978))) (regOne!32498 (h!70602 (exprs!5877 lt!2312978)))) (ite c!1058945 (Context!10755 (t!377687 (exprs!5877 lt!2312978))) (Context!10755 call!473971)) (h!70604 s!2326)))))

(declare-fun b!5951004 () Bool)

(assert (=> b!5951004 (= e!3640582 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951005 () Bool)

(assert (=> b!5951005 (= e!3640581 e!3640579)))

(assert (=> b!5951005 (= c!1058945 ((_ is Union!15993) (h!70602 (exprs!5877 lt!2312978))))))

(declare-fun bm!473965 () Bool)

(assert (=> bm!473965 (= call!473966 call!473969)))

(declare-fun b!5951006 () Bool)

(assert (=> b!5951006 (= e!3640581 (store ((as const (Array Context!10754 Bool)) false) (Context!10755 (t!377687 (exprs!5877 lt!2312978))) true))))

(declare-fun bm!473966 () Bool)

(assert (=> bm!473966 (= call!473971 ($colon$colon!1880 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312978)))) (ite (or c!1058943 c!1058944) (regTwo!32498 (h!70602 (exprs!5877 lt!2312978))) (h!70602 (exprs!5877 lt!2312978)))))))

(declare-fun b!5951007 () Bool)

(assert (=> b!5951007 (= e!3640582 call!473966)))

(assert (= (and d!1865602 c!1058941) b!5951006))

(assert (= (and d!1865602 (not c!1058941)) b!5951005))

(assert (= (and b!5951005 c!1058945) b!5951001))

(assert (= (and b!5951005 (not c!1058945)) b!5951000))

(assert (= (and b!5951000 res!2491163) b!5950997))

(assert (= (and b!5951000 c!1058943) b!5950999))

(assert (= (and b!5951000 (not c!1058943)) b!5951002))

(assert (= (and b!5951002 c!1058944) b!5950998))

(assert (= (and b!5951002 (not c!1058944)) b!5951003))

(assert (= (and b!5951003 c!1058942) b!5951007))

(assert (= (and b!5951003 (not c!1058942)) b!5951004))

(assert (= (or b!5950998 b!5951007) bm!473961))

(assert (= (or b!5950998 b!5951007) bm!473965))

(assert (= (or b!5950999 bm!473961) bm!473966))

(assert (= (or b!5950999 bm!473965) bm!473963))

(assert (= (or b!5951001 bm!473963) bm!473962))

(assert (= (or b!5951001 b!5950999) bm!473964))

(declare-fun m!6838750 () Bool)

(assert (=> bm!473962 m!6838750))

(declare-fun m!6838752 () Bool)

(assert (=> b!5950997 m!6838752))

(declare-fun m!6838754 () Bool)

(assert (=> b!5951006 m!6838754))

(declare-fun m!6838756 () Bool)

(assert (=> bm!473966 m!6838756))

(declare-fun m!6838758 () Bool)

(assert (=> bm!473964 m!6838758))

(assert (=> bm!473861 d!1865602))

(declare-fun d!1865604 () Bool)

(declare-fun e!3640600 () Bool)

(assert (=> d!1865604 e!3640600))

(declare-fun c!1058953 () Bool)

(assert (=> d!1865604 (= c!1058953 ((_ is EmptyExpr!15993) (regOne!32498 r!7292)))))

(declare-fun lt!2313187 () Bool)

(declare-fun e!3640599 () Bool)

(assert (=> d!1865604 (= lt!2313187 e!3640599)))

(declare-fun c!1058954 () Bool)

(assert (=> d!1865604 (= c!1058954 (isEmpty!36036 (_1!36275 (get!22102 lt!2313149))))))

(assert (=> d!1865604 (validRegex!7729 (regOne!32498 r!7292))))

(assert (=> d!1865604 (= (matchR!8176 (regOne!32498 r!7292) (_1!36275 (get!22102 lt!2313149))) lt!2313187)))

(declare-fun b!5951025 () Bool)

(declare-fun e!3640598 () Bool)

(declare-fun e!3640596 () Bool)

(assert (=> b!5951025 (= e!3640598 e!3640596)))

(declare-fun res!2491174 () Bool)

(assert (=> b!5951025 (=> (not res!2491174) (not e!3640596))))

(assert (=> b!5951025 (= res!2491174 (not lt!2313187))))

(declare-fun b!5951026 () Bool)

(declare-fun e!3640597 () Bool)

(assert (=> b!5951026 (= e!3640596 e!3640597)))

(declare-fun res!2491173 () Bool)

(assert (=> b!5951026 (=> res!2491173 e!3640597)))

(declare-fun call!473979 () Bool)

(assert (=> b!5951026 (= res!2491173 call!473979)))

(declare-fun b!5951027 () Bool)

(declare-fun e!3640594 () Bool)

(assert (=> b!5951027 (= e!3640594 (= (head!12525 (_1!36275 (get!22102 lt!2313149))) (c!1058556 (regOne!32498 r!7292))))))

(declare-fun b!5951028 () Bool)

(assert (=> b!5951028 (= e!3640599 (nullable!5988 (regOne!32498 r!7292)))))

(declare-fun b!5951029 () Bool)

(declare-fun e!3640595 () Bool)

(assert (=> b!5951029 (= e!3640595 (not lt!2313187))))

(declare-fun b!5951030 () Bool)

(declare-fun res!2491167 () Bool)

(assert (=> b!5951030 (=> res!2491167 e!3640598)))

(assert (=> b!5951030 (= res!2491167 e!3640594)))

(declare-fun res!2491170 () Bool)

(assert (=> b!5951030 (=> (not res!2491170) (not e!3640594))))

(assert (=> b!5951030 (= res!2491170 lt!2313187)))

(declare-fun b!5951031 () Bool)

(assert (=> b!5951031 (= e!3640600 e!3640595)))

(declare-fun c!1058955 () Bool)

(assert (=> b!5951031 (= c!1058955 ((_ is EmptyLang!15993) (regOne!32498 r!7292)))))

(declare-fun bm!473974 () Bool)

(assert (=> bm!473974 (= call!473979 (isEmpty!36036 (_1!36275 (get!22102 lt!2313149))))))

(declare-fun b!5951032 () Bool)

(assert (=> b!5951032 (= e!3640599 (matchR!8176 (derivativeStep!4723 (regOne!32498 r!7292) (head!12525 (_1!36275 (get!22102 lt!2313149)))) (tail!11610 (_1!36275 (get!22102 lt!2313149)))))))

(declare-fun b!5951033 () Bool)

(assert (=> b!5951033 (= e!3640597 (not (= (head!12525 (_1!36275 (get!22102 lt!2313149))) (c!1058556 (regOne!32498 r!7292)))))))

(declare-fun b!5951034 () Bool)

(assert (=> b!5951034 (= e!3640600 (= lt!2313187 call!473979))))

(declare-fun b!5951035 () Bool)

(declare-fun res!2491168 () Bool)

(assert (=> b!5951035 (=> res!2491168 e!3640597)))

(assert (=> b!5951035 (= res!2491168 (not (isEmpty!36036 (tail!11610 (_1!36275 (get!22102 lt!2313149))))))))

(declare-fun b!5951036 () Bool)

(declare-fun res!2491169 () Bool)

(assert (=> b!5951036 (=> res!2491169 e!3640598)))

(assert (=> b!5951036 (= res!2491169 (not ((_ is ElementMatch!15993) (regOne!32498 r!7292))))))

(assert (=> b!5951036 (= e!3640595 e!3640598)))

(declare-fun b!5951037 () Bool)

(declare-fun res!2491171 () Bool)

(assert (=> b!5951037 (=> (not res!2491171) (not e!3640594))))

(assert (=> b!5951037 (= res!2491171 (isEmpty!36036 (tail!11610 (_1!36275 (get!22102 lt!2313149)))))))

(declare-fun b!5951038 () Bool)

(declare-fun res!2491172 () Bool)

(assert (=> b!5951038 (=> (not res!2491172) (not e!3640594))))

(assert (=> b!5951038 (= res!2491172 (not call!473979))))

(assert (= (and d!1865604 c!1058954) b!5951028))

(assert (= (and d!1865604 (not c!1058954)) b!5951032))

(assert (= (and d!1865604 c!1058953) b!5951034))

(assert (= (and d!1865604 (not c!1058953)) b!5951031))

(assert (= (and b!5951031 c!1058955) b!5951029))

(assert (= (and b!5951031 (not c!1058955)) b!5951036))

(assert (= (and b!5951036 (not res!2491169)) b!5951030))

(assert (= (and b!5951030 res!2491170) b!5951038))

(assert (= (and b!5951038 res!2491172) b!5951037))

(assert (= (and b!5951037 res!2491171) b!5951027))

(assert (= (and b!5951030 (not res!2491167)) b!5951025))

(assert (= (and b!5951025 res!2491174) b!5951026))

(assert (= (and b!5951026 (not res!2491173)) b!5951035))

(assert (= (and b!5951035 (not res!2491168)) b!5951033))

(assert (= (or b!5951034 b!5951026 b!5951038) bm!473974))

(declare-fun m!6838770 () Bool)

(assert (=> b!5951033 m!6838770))

(assert (=> b!5951032 m!6838770))

(assert (=> b!5951032 m!6838770))

(declare-fun m!6838772 () Bool)

(assert (=> b!5951032 m!6838772))

(declare-fun m!6838774 () Bool)

(assert (=> b!5951032 m!6838774))

(assert (=> b!5951032 m!6838772))

(assert (=> b!5951032 m!6838774))

(declare-fun m!6838776 () Bool)

(assert (=> b!5951032 m!6838776))

(declare-fun m!6838778 () Bool)

(assert (=> d!1865604 m!6838778))

(assert (=> d!1865604 m!6838262))

(assert (=> b!5951028 m!6837628))

(assert (=> bm!473974 m!6838778))

(assert (=> b!5951027 m!6838770))

(assert (=> b!5951035 m!6838774))

(assert (=> b!5951035 m!6838774))

(declare-fun m!6838780 () Bool)

(assert (=> b!5951035 m!6838780))

(assert (=> b!5951037 m!6838774))

(assert (=> b!5951037 m!6838774))

(assert (=> b!5951037 m!6838780))

(assert (=> b!5950493 d!1865604))

(declare-fun d!1865608 () Bool)

(assert (=> d!1865608 (= (get!22102 lt!2313149) (v!51986 lt!2313149))))

(assert (=> b!5950493 d!1865608))

(declare-fun bs!1409356 () Bool)

(declare-fun b!5951039 () Bool)

(assert (= bs!1409356 (and b!5951039 d!1865368)))

(declare-fun lambda!324753 () Int)

(assert (=> bs!1409356 (not (= lambda!324753 lambda!324715))))

(declare-fun bs!1409357 () Bool)

(assert (= bs!1409357 (and b!5951039 d!1865366)))

(assert (=> bs!1409357 (not (= lambda!324753 lambda!324710))))

(declare-fun bs!1409358 () Bool)

(assert (= bs!1409358 (and b!5951039 b!5949708)))

(assert (=> bs!1409358 (not (= lambda!324753 lambda!324607))))

(assert (=> bs!1409358 (not (= lambda!324753 lambda!324606))))

(declare-fun bs!1409359 () Bool)

(assert (= bs!1409359 (and b!5951039 b!5950188)))

(assert (=> bs!1409359 (not (= lambda!324753 lambda!324673))))

(declare-fun bs!1409360 () Bool)

(assert (= bs!1409360 (and b!5951039 b!5950187)))

(assert (=> bs!1409360 (= (and (= (reg!16322 (regTwo!32499 r!7292)) (reg!16322 r!7292)) (= (regTwo!32499 r!7292) r!7292)) (= lambda!324753 lambda!324672))))

(assert (=> bs!1409356 (not (= lambda!324753 lambda!324716))))

(assert (=> b!5951039 true))

(assert (=> b!5951039 true))

(declare-fun bs!1409367 () Bool)

(declare-fun b!5951040 () Bool)

(assert (= bs!1409367 (and b!5951040 d!1865368)))

(declare-fun lambda!324757 () Int)

(assert (=> bs!1409367 (not (= lambda!324757 lambda!324715))))

(declare-fun bs!1409370 () Bool)

(assert (= bs!1409370 (and b!5951040 d!1865366)))

(assert (=> bs!1409370 (not (= lambda!324757 lambda!324710))))

(declare-fun bs!1409372 () Bool)

(assert (= bs!1409372 (and b!5951040 b!5951039)))

(assert (=> bs!1409372 (not (= lambda!324757 lambda!324753))))

(declare-fun bs!1409375 () Bool)

(assert (= bs!1409375 (and b!5951040 b!5949708)))

(assert (=> bs!1409375 (= (and (= (regOne!32498 (regTwo!32499 r!7292)) (regOne!32498 r!7292)) (= (regTwo!32498 (regTwo!32499 r!7292)) (regTwo!32498 r!7292))) (= lambda!324757 lambda!324607))))

(assert (=> bs!1409375 (not (= lambda!324757 lambda!324606))))

(declare-fun bs!1409379 () Bool)

(assert (= bs!1409379 (and b!5951040 b!5950188)))

(assert (=> bs!1409379 (= (and (= (regOne!32498 (regTwo!32499 r!7292)) (regOne!32498 r!7292)) (= (regTwo!32498 (regTwo!32499 r!7292)) (regTwo!32498 r!7292))) (= lambda!324757 lambda!324673))))

(declare-fun bs!1409382 () Bool)

(assert (= bs!1409382 (and b!5951040 b!5950187)))

(assert (=> bs!1409382 (not (= lambda!324757 lambda!324672))))

(assert (=> bs!1409367 (= (and (= (regOne!32498 (regTwo!32499 r!7292)) (regOne!32498 r!7292)) (= (regTwo!32498 (regTwo!32499 r!7292)) (regTwo!32498 r!7292))) (= lambda!324757 lambda!324716))))

(assert (=> b!5951040 true))

(assert (=> b!5951040 true))

(declare-fun d!1865610 () Bool)

(declare-fun c!1058958 () Bool)

(assert (=> d!1865610 (= c!1058958 ((_ is EmptyExpr!15993) (regTwo!32499 r!7292)))))

(declare-fun e!3640603 () Bool)

(assert (=> d!1865610 (= (matchRSpec!3094 (regTwo!32499 r!7292) s!2326) e!3640603)))

(declare-fun e!3640601 () Bool)

(declare-fun call!473981 () Bool)

(assert (=> b!5951039 (= e!3640601 call!473981)))

(declare-fun e!3640606 () Bool)

(assert (=> b!5951040 (= e!3640606 call!473981)))

(declare-fun bm!473975 () Bool)

(declare-fun call!473980 () Bool)

(assert (=> bm!473975 (= call!473980 (isEmpty!36036 s!2326))))

(declare-fun c!1058956 () Bool)

(declare-fun bm!473976 () Bool)

(assert (=> bm!473976 (= call!473981 (Exists!3063 (ite c!1058956 lambda!324753 lambda!324757)))))

(declare-fun b!5951041 () Bool)

(declare-fun e!3640604 () Bool)

(assert (=> b!5951041 (= e!3640604 e!3640606)))

(assert (=> b!5951041 (= c!1058956 ((_ is Star!15993) (regTwo!32499 r!7292)))))

(declare-fun b!5951042 () Bool)

(declare-fun c!1058957 () Bool)

(assert (=> b!5951042 (= c!1058957 ((_ is ElementMatch!15993) (regTwo!32499 r!7292)))))

(declare-fun e!3640607 () Bool)

(declare-fun e!3640602 () Bool)

(assert (=> b!5951042 (= e!3640607 e!3640602)))

(declare-fun b!5951043 () Bool)

(declare-fun e!3640605 () Bool)

(assert (=> b!5951043 (= e!3640605 (matchRSpec!3094 (regTwo!32499 (regTwo!32499 r!7292)) s!2326))))

(declare-fun b!5951044 () Bool)

(assert (=> b!5951044 (= e!3640602 (= s!2326 (Cons!64156 (c!1058556 (regTwo!32499 r!7292)) Nil!64156)))))

(declare-fun b!5951045 () Bool)

(assert (=> b!5951045 (= e!3640604 e!3640605)))

(declare-fun res!2491177 () Bool)

(assert (=> b!5951045 (= res!2491177 (matchRSpec!3094 (regOne!32499 (regTwo!32499 r!7292)) s!2326))))

(assert (=> b!5951045 (=> res!2491177 e!3640605)))

(declare-fun b!5951046 () Bool)

(assert (=> b!5951046 (= e!3640603 e!3640607)))

(declare-fun res!2491176 () Bool)

(assert (=> b!5951046 (= res!2491176 (not ((_ is EmptyLang!15993) (regTwo!32499 r!7292))))))

(assert (=> b!5951046 (=> (not res!2491176) (not e!3640607))))

(declare-fun b!5951047 () Bool)

(declare-fun res!2491175 () Bool)

(assert (=> b!5951047 (=> res!2491175 e!3640601)))

(assert (=> b!5951047 (= res!2491175 call!473980)))

(assert (=> b!5951047 (= e!3640606 e!3640601)))

(declare-fun b!5951048 () Bool)

(declare-fun c!1058959 () Bool)

(assert (=> b!5951048 (= c!1058959 ((_ is Union!15993) (regTwo!32499 r!7292)))))

(assert (=> b!5951048 (= e!3640602 e!3640604)))

(declare-fun b!5951049 () Bool)

(assert (=> b!5951049 (= e!3640603 call!473980)))

(assert (= (and d!1865610 c!1058958) b!5951049))

(assert (= (and d!1865610 (not c!1058958)) b!5951046))

(assert (= (and b!5951046 res!2491176) b!5951042))

(assert (= (and b!5951042 c!1058957) b!5951044))

(assert (= (and b!5951042 (not c!1058957)) b!5951048))

(assert (= (and b!5951048 c!1058959) b!5951045))

(assert (= (and b!5951048 (not c!1058959)) b!5951041))

(assert (= (and b!5951045 (not res!2491177)) b!5951043))

(assert (= (and b!5951041 c!1058956) b!5951047))

(assert (= (and b!5951041 (not c!1058956)) b!5951040))

(assert (= (and b!5951047 (not res!2491175)) b!5951039))

(assert (= (or b!5951039 b!5951040) bm!473976))

(assert (= (or b!5951049 b!5951047) bm!473975))

(assert (=> bm!473975 m!6837984))

(declare-fun m!6838786 () Bool)

(assert (=> bm!473976 m!6838786))

(declare-fun m!6838788 () Bool)

(assert (=> b!5951043 m!6838788))

(declare-fun m!6838790 () Bool)

(assert (=> b!5951045 m!6838790))

(assert (=> b!5950191 d!1865610))

(declare-fun c!1058964 () Bool)

(declare-fun d!1865614 () Bool)

(assert (=> d!1865614 (= c!1058964 (and ((_ is ElementMatch!15993) (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))) (= (c!1058556 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))) (h!70604 s!2326))))))

(declare-fun e!3640617 () (InoxSet Context!10754))

(assert (=> d!1865614 (= (derivationStepZipperDown!1243 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292)))) (ite (or c!1058746 c!1058744) lt!2312989 (Context!10755 call!473847)) (h!70604 s!2326)) e!3640617)))

(declare-fun e!3640619 () Bool)

(declare-fun b!5951061 () Bool)

(assert (=> b!5951061 (= e!3640619 (nullable!5988 (regOne!32498 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292)))))))))

(declare-fun bm!473977 () Bool)

(declare-fun call!473984 () List!64278)

(declare-fun call!473987 () List!64278)

(assert (=> bm!473977 (= call!473984 call!473987)))

(declare-fun bm!473978 () Bool)

(declare-fun c!1058967 () Bool)

(declare-fun call!473986 () (InoxSet Context!10754))

(declare-fun c!1058968 () Bool)

(declare-fun c!1058966 () Bool)

(assert (=> bm!473978 (= call!473986 (derivationStepZipperDown!1243 (ite c!1058968 (regTwo!32499 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))) (ite c!1058966 (regTwo!32498 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))) (ite c!1058967 (regOne!32498 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))) (reg!16322 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292)))))))) (ite (or c!1058968 c!1058966) (ite (or c!1058746 c!1058744) lt!2312989 (Context!10755 call!473847)) (Context!10755 call!473984)) (h!70604 s!2326)))))

(declare-fun b!5951062 () Bool)

(declare-fun e!3640616 () (InoxSet Context!10754))

(declare-fun call!473982 () (InoxSet Context!10754))

(assert (=> b!5951062 (= e!3640616 call!473982)))

(declare-fun b!5951063 () Bool)

(declare-fun e!3640614 () (InoxSet Context!10754))

(declare-fun call!473983 () (InoxSet Context!10754))

(declare-fun call!473985 () (InoxSet Context!10754))

(assert (=> b!5951063 (= e!3640614 ((_ map or) call!473983 call!473985))))

(declare-fun b!5951064 () Bool)

(assert (=> b!5951064 (= c!1058966 e!3640619)))

(declare-fun res!2491180 () Bool)

(assert (=> b!5951064 (=> (not res!2491180) (not e!3640619))))

(assert (=> b!5951064 (= res!2491180 ((_ is Concat!24838) (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))))))

(declare-fun e!3640615 () (InoxSet Context!10754))

(assert (=> b!5951064 (= e!3640615 e!3640614)))

(declare-fun b!5951065 () Bool)

(assert (=> b!5951065 (= e!3640615 ((_ map or) call!473983 call!473986))))

(declare-fun b!5951066 () Bool)

(assert (=> b!5951066 (= e!3640614 e!3640616)))

(assert (=> b!5951066 (= c!1058967 ((_ is Concat!24838) (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))))))

(declare-fun c!1058965 () Bool)

(declare-fun b!5951067 () Bool)

(assert (=> b!5951067 (= c!1058965 ((_ is Star!15993) (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))))))

(declare-fun e!3640618 () (InoxSet Context!10754))

(assert (=> b!5951067 (= e!3640616 e!3640618)))

(declare-fun bm!473979 () Bool)

(assert (=> bm!473979 (= call!473985 call!473986)))

(declare-fun bm!473980 () Bool)

(assert (=> bm!473980 (= call!473983 (derivationStepZipperDown!1243 (ite c!1058968 (regOne!32499 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))) (regOne!32498 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292)))))) (ite c!1058968 (ite (or c!1058746 c!1058744) lt!2312989 (Context!10755 call!473847)) (Context!10755 call!473987)) (h!70604 s!2326)))))

(declare-fun b!5951068 () Bool)

(assert (=> b!5951068 (= e!3640618 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951069 () Bool)

(assert (=> b!5951069 (= e!3640617 e!3640615)))

(assert (=> b!5951069 (= c!1058968 ((_ is Union!15993) (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))))))

(declare-fun bm!473981 () Bool)

(assert (=> bm!473981 (= call!473982 call!473985)))

(declare-fun b!5951070 () Bool)

(assert (=> b!5951070 (= e!3640617 (store ((as const (Array Context!10754 Bool)) false) (ite (or c!1058746 c!1058744) lt!2312989 (Context!10755 call!473847)) true))))

(declare-fun bm!473982 () Bool)

(assert (=> bm!473982 (= call!473987 ($colon$colon!1880 (exprs!5877 (ite (or c!1058746 c!1058744) lt!2312989 (Context!10755 call!473847))) (ite (or c!1058966 c!1058967) (regTwo!32498 (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292))))) (ite c!1058746 (regTwo!32499 r!7292) (ite c!1058744 (regTwo!32498 r!7292) (ite c!1058745 (regOne!32498 r!7292) (reg!16322 r!7292)))))))))

(declare-fun b!5951071 () Bool)

(assert (=> b!5951071 (= e!3640618 call!473982)))

(assert (= (and d!1865614 c!1058964) b!5951070))

(assert (= (and d!1865614 (not c!1058964)) b!5951069))

(assert (= (and b!5951069 c!1058968) b!5951065))

(assert (= (and b!5951069 (not c!1058968)) b!5951064))

(assert (= (and b!5951064 res!2491180) b!5951061))

(assert (= (and b!5951064 c!1058966) b!5951063))

(assert (= (and b!5951064 (not c!1058966)) b!5951066))

(assert (= (and b!5951066 c!1058967) b!5951062))

(assert (= (and b!5951066 (not c!1058967)) b!5951067))

(assert (= (and b!5951067 c!1058965) b!5951071))

(assert (= (and b!5951067 (not c!1058965)) b!5951068))

(assert (= (or b!5951062 b!5951071) bm!473977))

(assert (= (or b!5951062 b!5951071) bm!473981))

(assert (= (or b!5951063 bm!473977) bm!473982))

(assert (= (or b!5951063 bm!473981) bm!473979))

(assert (= (or b!5951065 bm!473979) bm!473978))

(assert (= (or b!5951065 b!5951063) bm!473980))

(declare-fun m!6838792 () Bool)

(assert (=> bm!473978 m!6838792))

(declare-fun m!6838794 () Bool)

(assert (=> b!5951061 m!6838794))

(declare-fun m!6838796 () Bool)

(assert (=> b!5951070 m!6838796))

(declare-fun m!6838798 () Bool)

(assert (=> bm!473982 m!6838798))

(declare-fun m!6838800 () Bool)

(assert (=> bm!473980 m!6838800))

(assert (=> bm!473841 d!1865614))

(declare-fun d!1865616 () Bool)

(declare-fun c!1058969 () Bool)

(assert (=> d!1865616 (= c!1058969 (isEmpty!36036 (tail!11610 (t!377689 s!2326))))))

(declare-fun e!3640620 () Bool)

(assert (=> d!1865616 (= (matchZipper!2029 (derivationStepZipper!1974 lt!2313001 (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))) e!3640620)))

(declare-fun b!5951072 () Bool)

(assert (=> b!5951072 (= e!3640620 (nullableZipper!1799 (derivationStepZipper!1974 lt!2313001 (head!12525 (t!377689 s!2326)))))))

(declare-fun b!5951073 () Bool)

(assert (=> b!5951073 (= e!3640620 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2313001 (head!12525 (t!377689 s!2326))) (head!12525 (tail!11610 (t!377689 s!2326)))) (tail!11610 (tail!11610 (t!377689 s!2326)))))))

(assert (= (and d!1865616 c!1058969) b!5951072))

(assert (= (and d!1865616 (not c!1058969)) b!5951073))

(assert (=> d!1865616 m!6837750))

(assert (=> d!1865616 m!6838610))

(assert (=> b!5951072 m!6837922))

(declare-fun m!6838820 () Bool)

(assert (=> b!5951072 m!6838820))

(assert (=> b!5951073 m!6837750))

(assert (=> b!5951073 m!6838614))

(assert (=> b!5951073 m!6837922))

(assert (=> b!5951073 m!6838614))

(declare-fun m!6838822 () Bool)

(assert (=> b!5951073 m!6838822))

(assert (=> b!5951073 m!6837750))

(assert (=> b!5951073 m!6838618))

(assert (=> b!5951073 m!6838822))

(assert (=> b!5951073 m!6838618))

(declare-fun m!6838824 () Bool)

(assert (=> b!5951073 m!6838824))

(assert (=> b!5950058 d!1865616))

(declare-fun bs!1409403 () Bool)

(declare-fun d!1865620 () Bool)

(assert (= bs!1409403 (and d!1865620 b!5949712)))

(declare-fun lambda!324759 () Int)

(assert (=> bs!1409403 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324759 lambda!324608))))

(declare-fun bs!1409404 () Bool)

(assert (= bs!1409404 (and d!1865620 d!1865300)))

(assert (=> bs!1409404 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324759 lambda!324692))))

(declare-fun bs!1409405 () Bool)

(assert (= bs!1409405 (and d!1865620 d!1865306)))

(assert (=> bs!1409405 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324759 lambda!324696))))

(declare-fun bs!1409406 () Bool)

(assert (= bs!1409406 (and d!1865620 d!1865352)))

(assert (=> bs!1409406 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324759 lambda!324701))))

(declare-fun bs!1409407 () Bool)

(assert (= bs!1409407 (and d!1865620 d!1865588)))

(assert (=> bs!1409407 (= (= (head!12525 (t!377689 s!2326)) (head!12525 s!2326)) (= lambda!324759 lambda!324748))))

(declare-fun bs!1409409 () Bool)

(assert (= bs!1409409 (and d!1865620 d!1865544)))

(assert (=> bs!1409409 (= lambda!324759 lambda!324743)))

(assert (=> d!1865620 true))

(assert (=> d!1865620 (= (derivationStepZipper!1974 lt!2313001 (head!12525 (t!377689 s!2326))) (flatMap!1506 lt!2313001 lambda!324759))))

(declare-fun bs!1409411 () Bool)

(assert (= bs!1409411 d!1865620))

(declare-fun m!6838832 () Bool)

(assert (=> bs!1409411 m!6838832))

(assert (=> b!5950058 d!1865620))

(assert (=> b!5950058 d!1865548))

(assert (=> b!5950058 d!1865550))

(declare-fun d!1865624 () Bool)

(declare-fun c!1058971 () Bool)

(assert (=> d!1865624 (= c!1058971 (isEmpty!36036 (tail!11610 (t!377689 s!2326))))))

(declare-fun e!3640622 () Bool)

(assert (=> d!1865624 (= (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))) e!3640622)))

(declare-fun b!5951076 () Bool)

(assert (=> b!5951076 (= e!3640622 (nullableZipper!1799 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) (head!12525 (t!377689 s!2326)))))))

(declare-fun b!5951077 () Bool)

(assert (=> b!5951077 (= e!3640622 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) (head!12525 (t!377689 s!2326))) (head!12525 (tail!11610 (t!377689 s!2326)))) (tail!11610 (tail!11610 (t!377689 s!2326)))))))

(assert (= (and d!1865624 c!1058971) b!5951076))

(assert (= (and d!1865624 (not c!1058971)) b!5951077))

(assert (=> d!1865624 m!6837750))

(assert (=> d!1865624 m!6838610))

(assert (=> b!5951076 m!6838088))

(declare-fun m!6838834 () Bool)

(assert (=> b!5951076 m!6838834))

(assert (=> b!5951077 m!6837750))

(assert (=> b!5951077 m!6838614))

(assert (=> b!5951077 m!6838088))

(assert (=> b!5951077 m!6838614))

(declare-fun m!6838838 () Bool)

(assert (=> b!5951077 m!6838838))

(assert (=> b!5951077 m!6837750))

(assert (=> b!5951077 m!6838618))

(assert (=> b!5951077 m!6838838))

(assert (=> b!5951077 m!6838618))

(declare-fun m!6838840 () Bool)

(assert (=> b!5951077 m!6838840))

(assert (=> b!5950322 d!1865624))

(declare-fun bs!1409419 () Bool)

(declare-fun d!1865628 () Bool)

(assert (= bs!1409419 (and d!1865628 b!5949712)))

(declare-fun lambda!324761 () Int)

(assert (=> bs!1409419 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324761 lambda!324608))))

(declare-fun bs!1409420 () Bool)

(assert (= bs!1409420 (and d!1865628 d!1865300)))

(assert (=> bs!1409420 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324761 lambda!324692))))

(declare-fun bs!1409421 () Bool)

(assert (= bs!1409421 (and d!1865628 d!1865306)))

(assert (=> bs!1409421 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324761 lambda!324696))))

(declare-fun bs!1409422 () Bool)

(assert (= bs!1409422 (and d!1865628 d!1865352)))

(assert (=> bs!1409422 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324761 lambda!324701))))

(declare-fun bs!1409423 () Bool)

(assert (= bs!1409423 (and d!1865628 d!1865620)))

(assert (=> bs!1409423 (= lambda!324761 lambda!324759)))

(declare-fun bs!1409424 () Bool)

(assert (= bs!1409424 (and d!1865628 d!1865588)))

(assert (=> bs!1409424 (= (= (head!12525 (t!377689 s!2326)) (head!12525 s!2326)) (= lambda!324761 lambda!324748))))

(declare-fun bs!1409425 () Bool)

(assert (= bs!1409425 (and d!1865628 d!1865544)))

(assert (=> bs!1409425 (= lambda!324761 lambda!324743)))

(assert (=> d!1865628 true))

(assert (=> d!1865628 (= (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) (head!12525 (t!377689 s!2326))) (flatMap!1506 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) lambda!324761))))

(declare-fun bs!1409426 () Bool)

(assert (= bs!1409426 d!1865628))

(assert (=> bs!1409426 m!6837576))

(declare-fun m!6838842 () Bool)

(assert (=> bs!1409426 m!6838842))

(assert (=> b!5950322 d!1865628))

(assert (=> b!5950322 d!1865548))

(assert (=> b!5950322 d!1865550))

(declare-fun bs!1409427 () Bool)

(declare-fun d!1865630 () Bool)

(assert (= bs!1409427 (and d!1865630 b!5950045)))

(declare-fun lambda!324762 () Int)

(assert (=> bs!1409427 (not (= lambda!324762 lambda!324654))))

(declare-fun bs!1409428 () Bool)

(assert (= bs!1409428 (and d!1865630 d!1865594)))

(assert (=> bs!1409428 (= lambda!324762 lambda!324751)))

(declare-fun bs!1409429 () Bool)

(assert (= bs!1409429 (and d!1865630 b!5950036)))

(assert (=> bs!1409429 (not (= lambda!324762 lambda!324651))))

(declare-fun bs!1409430 () Bool)

(assert (= bs!1409430 (and d!1865630 b!5950034)))

(assert (=> bs!1409430 (not (= lambda!324762 lambda!324650))))

(declare-fun bs!1409431 () Bool)

(assert (= bs!1409431 (and d!1865630 b!5950043)))

(assert (=> bs!1409431 (not (= lambda!324762 lambda!324653))))

(assert (=> d!1865630 (= (nullableZipper!1799 lt!2312998) (exists!2352 lt!2312998 lambda!324762))))

(declare-fun bs!1409432 () Bool)

(assert (= bs!1409432 d!1865630))

(declare-fun m!6838844 () Bool)

(assert (=> bs!1409432 m!6838844))

(assert (=> b!5949881 d!1865630))

(declare-fun d!1865632 () Bool)

(assert (=> d!1865632 (= (nullable!5988 (regOne!32498 (regTwo!32498 r!7292))) (nullableFct!1960 (regOne!32498 (regTwo!32498 r!7292))))))

(declare-fun bs!1409433 () Bool)

(assert (= bs!1409433 d!1865632))

(declare-fun m!6838846 () Bool)

(assert (=> bs!1409433 m!6838846))

(assert (=> b!5950356 d!1865632))

(declare-fun c!1058972 () Bool)

(declare-fun d!1865634 () Bool)

(assert (=> d!1865634 (= c!1058972 (and ((_ is ElementMatch!15993) (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))) (= (c!1058556 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))) (h!70604 s!2326))))))

(declare-fun e!3640630 () (InoxSet Context!10754))

(assert (=> d!1865634 (= (derivationStepZipperDown!1243 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292)) (ite c!1058746 lt!2312989 (Context!10755 call!473850)) (h!70604 s!2326)) e!3640630)))

(declare-fun b!5951082 () Bool)

(declare-fun e!3640632 () Bool)

(assert (=> b!5951082 (= e!3640632 (nullable!5988 (regOne!32498 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292)))))))

(declare-fun bm!473983 () Bool)

(declare-fun call!473990 () List!64278)

(declare-fun call!473993 () List!64278)

(assert (=> bm!473983 (= call!473990 call!473993)))

(declare-fun c!1058974 () Bool)

(declare-fun bm!473984 () Bool)

(declare-fun c!1058976 () Bool)

(declare-fun call!473992 () (InoxSet Context!10754))

(declare-fun c!1058975 () Bool)

(assert (=> bm!473984 (= call!473992 (derivationStepZipperDown!1243 (ite c!1058976 (regTwo!32499 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))) (ite c!1058974 (regTwo!32498 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))) (ite c!1058975 (regOne!32498 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))) (reg!16322 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292)))))) (ite (or c!1058976 c!1058974) (ite c!1058746 lt!2312989 (Context!10755 call!473850)) (Context!10755 call!473990)) (h!70604 s!2326)))))

(declare-fun b!5951083 () Bool)

(declare-fun e!3640629 () (InoxSet Context!10754))

(declare-fun call!473988 () (InoxSet Context!10754))

(assert (=> b!5951083 (= e!3640629 call!473988)))

(declare-fun b!5951084 () Bool)

(declare-fun e!3640627 () (InoxSet Context!10754))

(declare-fun call!473989 () (InoxSet Context!10754))

(declare-fun call!473991 () (InoxSet Context!10754))

(assert (=> b!5951084 (= e!3640627 ((_ map or) call!473989 call!473991))))

(declare-fun b!5951085 () Bool)

(assert (=> b!5951085 (= c!1058974 e!3640632)))

(declare-fun res!2491185 () Bool)

(assert (=> b!5951085 (=> (not res!2491185) (not e!3640632))))

(assert (=> b!5951085 (= res!2491185 ((_ is Concat!24838) (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))))))

(declare-fun e!3640628 () (InoxSet Context!10754))

(assert (=> b!5951085 (= e!3640628 e!3640627)))

(declare-fun b!5951086 () Bool)

(assert (=> b!5951086 (= e!3640628 ((_ map or) call!473989 call!473992))))

(declare-fun b!5951087 () Bool)

(assert (=> b!5951087 (= e!3640627 e!3640629)))

(assert (=> b!5951087 (= c!1058975 ((_ is Concat!24838) (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))))))

(declare-fun b!5951088 () Bool)

(declare-fun c!1058973 () Bool)

(assert (=> b!5951088 (= c!1058973 ((_ is Star!15993) (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))))))

(declare-fun e!3640631 () (InoxSet Context!10754))

(assert (=> b!5951088 (= e!3640629 e!3640631)))

(declare-fun bm!473985 () Bool)

(assert (=> bm!473985 (= call!473991 call!473992)))

(declare-fun bm!473986 () Bool)

(assert (=> bm!473986 (= call!473989 (derivationStepZipperDown!1243 (ite c!1058976 (regOne!32499 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))) (regOne!32498 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292)))) (ite c!1058976 (ite c!1058746 lt!2312989 (Context!10755 call!473850)) (Context!10755 call!473993)) (h!70604 s!2326)))))

(declare-fun b!5951089 () Bool)

(assert (=> b!5951089 (= e!3640631 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951090 () Bool)

(assert (=> b!5951090 (= e!3640630 e!3640628)))

(assert (=> b!5951090 (= c!1058976 ((_ is Union!15993) (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))))))

(declare-fun bm!473987 () Bool)

(assert (=> bm!473987 (= call!473988 call!473991)))

(declare-fun b!5951091 () Bool)

(assert (=> b!5951091 (= e!3640630 (store ((as const (Array Context!10754 Bool)) false) (ite c!1058746 lt!2312989 (Context!10755 call!473850)) true))))

(declare-fun bm!473988 () Bool)

(assert (=> bm!473988 (= call!473993 ($colon$colon!1880 (exprs!5877 (ite c!1058746 lt!2312989 (Context!10755 call!473850))) (ite (or c!1058974 c!1058975) (regTwo!32498 (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292))) (ite c!1058746 (regOne!32499 r!7292) (regOne!32498 r!7292)))))))

(declare-fun b!5951092 () Bool)

(assert (=> b!5951092 (= e!3640631 call!473988)))

(assert (= (and d!1865634 c!1058972) b!5951091))

(assert (= (and d!1865634 (not c!1058972)) b!5951090))

(assert (= (and b!5951090 c!1058976) b!5951086))

(assert (= (and b!5951090 (not c!1058976)) b!5951085))

(assert (= (and b!5951085 res!2491185) b!5951082))

(assert (= (and b!5951085 c!1058974) b!5951084))

(assert (= (and b!5951085 (not c!1058974)) b!5951087))

(assert (= (and b!5951087 c!1058975) b!5951083))

(assert (= (and b!5951087 (not c!1058975)) b!5951088))

(assert (= (and b!5951088 c!1058973) b!5951092))

(assert (= (and b!5951088 (not c!1058973)) b!5951089))

(assert (= (or b!5951083 b!5951092) bm!473983))

(assert (= (or b!5951083 b!5951092) bm!473987))

(assert (= (or b!5951084 bm!473983) bm!473988))

(assert (= (or b!5951084 bm!473987) bm!473985))

(assert (= (or b!5951086 bm!473985) bm!473984))

(assert (= (or b!5951086 b!5951084) bm!473986))

(declare-fun m!6838852 () Bool)

(assert (=> bm!473984 m!6838852))

(declare-fun m!6838854 () Bool)

(assert (=> b!5951082 m!6838854))

(declare-fun m!6838856 () Bool)

(assert (=> b!5951091 m!6838856))

(declare-fun m!6838858 () Bool)

(assert (=> bm!473988 m!6838858))

(declare-fun m!6838860 () Bool)

(assert (=> bm!473986 m!6838860))

(assert (=> bm!473843 d!1865634))

(declare-fun b!5951100 () Bool)

(declare-fun e!3640642 () Bool)

(declare-fun e!3640639 () Bool)

(assert (=> b!5951100 (= e!3640642 e!3640639)))

(declare-fun res!2491193 () Bool)

(assert (=> b!5951100 (= res!2491193 (not (nullable!5988 (reg!16322 (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))))))))

(assert (=> b!5951100 (=> (not res!2491193) (not e!3640639))))

(declare-fun call!473995 () Bool)

(declare-fun c!1058977 () Bool)

(declare-fun c!1058978 () Bool)

(declare-fun bm!473989 () Bool)

(assert (=> bm!473989 (= call!473995 (validRegex!7729 (ite c!1058977 (reg!16322 (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))) (ite c!1058978 (regTwo!32499 (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))) (regTwo!32498 (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292)))))))))

(declare-fun b!5951101 () Bool)

(declare-fun e!3640645 () Bool)

(assert (=> b!5951101 (= e!3640645 e!3640642)))

(assert (=> b!5951101 (= c!1058977 ((_ is Star!15993) (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))))))

(declare-fun bm!473990 () Bool)

(declare-fun call!473994 () Bool)

(assert (=> bm!473990 (= call!473994 (validRegex!7729 (ite c!1058978 (regOne!32499 (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))) (regOne!32498 (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))))))))

(declare-fun b!5951102 () Bool)

(declare-fun e!3640644 () Bool)

(declare-fun call!473996 () Bool)

(assert (=> b!5951102 (= e!3640644 call!473996)))

(declare-fun b!5951103 () Bool)

(declare-fun res!2491192 () Bool)

(assert (=> b!5951103 (=> (not res!2491192) (not e!3640644))))

(assert (=> b!5951103 (= res!2491192 call!473994)))

(declare-fun e!3640643 () Bool)

(assert (=> b!5951103 (= e!3640643 e!3640644)))

(declare-fun bm!473991 () Bool)

(assert (=> bm!473991 (= call!473996 call!473995)))

(declare-fun b!5951104 () Bool)

(declare-fun e!3640641 () Bool)

(declare-fun e!3640640 () Bool)

(assert (=> b!5951104 (= e!3640641 e!3640640)))

(declare-fun res!2491190 () Bool)

(assert (=> b!5951104 (=> (not res!2491190) (not e!3640640))))

(assert (=> b!5951104 (= res!2491190 call!473994)))

(declare-fun b!5951105 () Bool)

(assert (=> b!5951105 (= e!3640642 e!3640643)))

(assert (=> b!5951105 (= c!1058978 ((_ is Union!15993) (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))))))

(declare-fun b!5951106 () Bool)

(assert (=> b!5951106 (= e!3640640 call!473996)))

(declare-fun b!5951107 () Bool)

(assert (=> b!5951107 (= e!3640639 call!473995)))

(declare-fun b!5951099 () Bool)

(declare-fun res!2491191 () Bool)

(assert (=> b!5951099 (=> res!2491191 e!3640641)))

(assert (=> b!5951099 (= res!2491191 (not ((_ is Concat!24838) (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292)))))))

(assert (=> b!5951099 (= e!3640643 e!3640641)))

(declare-fun d!1865638 () Bool)

(declare-fun res!2491194 () Bool)

(assert (=> d!1865638 (=> res!2491194 e!3640645)))

(assert (=> d!1865638 (= res!2491194 ((_ is ElementMatch!15993) (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))))))

(assert (=> d!1865638 (= (validRegex!7729 (ite c!1058584 (regOne!32499 r!7292) (regOne!32498 r!7292))) e!3640645)))

(assert (= (and d!1865638 (not res!2491194)) b!5951101))

(assert (= (and b!5951101 c!1058977) b!5951100))

(assert (= (and b!5951101 (not c!1058977)) b!5951105))

(assert (= (and b!5951100 res!2491193) b!5951107))

(assert (= (and b!5951105 c!1058978) b!5951103))

(assert (= (and b!5951105 (not c!1058978)) b!5951099))

(assert (= (and b!5951103 res!2491192) b!5951102))

(assert (= (and b!5951099 (not res!2491191)) b!5951104))

(assert (= (and b!5951104 res!2491190) b!5951106))

(assert (= (or b!5951102 b!5951106) bm!473991))

(assert (= (or b!5951103 b!5951104) bm!473990))

(assert (= (or b!5951107 bm!473991) bm!473989))

(declare-fun m!6838862 () Bool)

(assert (=> b!5951100 m!6838862))

(declare-fun m!6838864 () Bool)

(assert (=> bm!473989 m!6838864))

(declare-fun m!6838866 () Bool)

(assert (=> bm!473990 m!6838866))

(assert (=> bm!473782 d!1865638))

(assert (=> d!1865278 d!1865582))

(assert (=> d!1865278 d!1865196))

(declare-fun d!1865640 () Bool)

(declare-fun c!1058979 () Bool)

(assert (=> d!1865640 (= c!1058979 (and ((_ is ElementMatch!15993) (h!70602 (exprs!5877 lt!2312982))) (= (c!1058556 (h!70602 (exprs!5877 lt!2312982))) (h!70604 s!2326))))))

(declare-fun e!3640651 () (InoxSet Context!10754))

(assert (=> d!1865640 (= (derivationStepZipperDown!1243 (h!70602 (exprs!5877 lt!2312982)) (Context!10755 (t!377687 (exprs!5877 lt!2312982))) (h!70604 s!2326)) e!3640651)))

(declare-fun b!5951110 () Bool)

(declare-fun e!3640653 () Bool)

(assert (=> b!5951110 (= e!3640653 (nullable!5988 (regOne!32498 (h!70602 (exprs!5877 lt!2312982)))))))

(declare-fun bm!473992 () Bool)

(declare-fun call!473999 () List!64278)

(declare-fun call!474002 () List!64278)

(assert (=> bm!473992 (= call!473999 call!474002)))

(declare-fun call!474001 () (InoxSet Context!10754))

(declare-fun c!1058981 () Bool)

(declare-fun bm!473993 () Bool)

(declare-fun c!1058983 () Bool)

(declare-fun c!1058982 () Bool)

(assert (=> bm!473993 (= call!474001 (derivationStepZipperDown!1243 (ite c!1058983 (regTwo!32499 (h!70602 (exprs!5877 lt!2312982))) (ite c!1058981 (regTwo!32498 (h!70602 (exprs!5877 lt!2312982))) (ite c!1058982 (regOne!32498 (h!70602 (exprs!5877 lt!2312982))) (reg!16322 (h!70602 (exprs!5877 lt!2312982)))))) (ite (or c!1058983 c!1058981) (Context!10755 (t!377687 (exprs!5877 lt!2312982))) (Context!10755 call!473999)) (h!70604 s!2326)))))

(declare-fun b!5951111 () Bool)

(declare-fun e!3640650 () (InoxSet Context!10754))

(declare-fun call!473997 () (InoxSet Context!10754))

(assert (=> b!5951111 (= e!3640650 call!473997)))

(declare-fun b!5951112 () Bool)

(declare-fun e!3640648 () (InoxSet Context!10754))

(declare-fun call!473998 () (InoxSet Context!10754))

(declare-fun call!474000 () (InoxSet Context!10754))

(assert (=> b!5951112 (= e!3640648 ((_ map or) call!473998 call!474000))))

(declare-fun b!5951113 () Bool)

(assert (=> b!5951113 (= c!1058981 e!3640653)))

(declare-fun res!2491197 () Bool)

(assert (=> b!5951113 (=> (not res!2491197) (not e!3640653))))

(assert (=> b!5951113 (= res!2491197 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun e!3640649 () (InoxSet Context!10754))

(assert (=> b!5951113 (= e!3640649 e!3640648)))

(declare-fun b!5951114 () Bool)

(assert (=> b!5951114 (= e!3640649 ((_ map or) call!473998 call!474001))))

(declare-fun b!5951115 () Bool)

(assert (=> b!5951115 (= e!3640648 e!3640650)))

(assert (=> b!5951115 (= c!1058982 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun b!5951116 () Bool)

(declare-fun c!1058980 () Bool)

(assert (=> b!5951116 (= c!1058980 ((_ is Star!15993) (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun e!3640652 () (InoxSet Context!10754))

(assert (=> b!5951116 (= e!3640650 e!3640652)))

(declare-fun bm!473994 () Bool)

(assert (=> bm!473994 (= call!474000 call!474001)))

(declare-fun bm!473995 () Bool)

(assert (=> bm!473995 (= call!473998 (derivationStepZipperDown!1243 (ite c!1058983 (regOne!32499 (h!70602 (exprs!5877 lt!2312982))) (regOne!32498 (h!70602 (exprs!5877 lt!2312982)))) (ite c!1058983 (Context!10755 (t!377687 (exprs!5877 lt!2312982))) (Context!10755 call!474002)) (h!70604 s!2326)))))

(declare-fun b!5951117 () Bool)

(assert (=> b!5951117 (= e!3640652 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951118 () Bool)

(assert (=> b!5951118 (= e!3640651 e!3640649)))

(assert (=> b!5951118 (= c!1058983 ((_ is Union!15993) (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun bm!473996 () Bool)

(assert (=> bm!473996 (= call!473997 call!474000)))

(declare-fun b!5951119 () Bool)

(assert (=> b!5951119 (= e!3640651 (store ((as const (Array Context!10754 Bool)) false) (Context!10755 (t!377687 (exprs!5877 lt!2312982))) true))))

(declare-fun bm!473997 () Bool)

(assert (=> bm!473997 (= call!474002 ($colon$colon!1880 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))) (ite (or c!1058981 c!1058982) (regTwo!32498 (h!70602 (exprs!5877 lt!2312982))) (h!70602 (exprs!5877 lt!2312982)))))))

(declare-fun b!5951120 () Bool)

(assert (=> b!5951120 (= e!3640652 call!473997)))

(assert (= (and d!1865640 c!1058979) b!5951119))

(assert (= (and d!1865640 (not c!1058979)) b!5951118))

(assert (= (and b!5951118 c!1058983) b!5951114))

(assert (= (and b!5951118 (not c!1058983)) b!5951113))

(assert (= (and b!5951113 res!2491197) b!5951110))

(assert (= (and b!5951113 c!1058981) b!5951112))

(assert (= (and b!5951113 (not c!1058981)) b!5951115))

(assert (= (and b!5951115 c!1058982) b!5951111))

(assert (= (and b!5951115 (not c!1058982)) b!5951116))

(assert (= (and b!5951116 c!1058980) b!5951120))

(assert (= (and b!5951116 (not c!1058980)) b!5951117))

(assert (= (or b!5951111 b!5951120) bm!473992))

(assert (= (or b!5951111 b!5951120) bm!473996))

(assert (= (or b!5951112 bm!473992) bm!473997))

(assert (= (or b!5951112 bm!473996) bm!473994))

(assert (= (or b!5951114 bm!473994) bm!473993))

(assert (= (or b!5951114 b!5951112) bm!473995))

(declare-fun m!6838874 () Bool)

(assert (=> bm!473993 m!6838874))

(declare-fun m!6838876 () Bool)

(assert (=> b!5951110 m!6838876))

(declare-fun m!6838878 () Bool)

(assert (=> b!5951119 m!6838878))

(declare-fun m!6838882 () Bool)

(assert (=> bm!473997 m!6838882))

(declare-fun m!6838884 () Bool)

(assert (=> bm!473995 m!6838884))

(assert (=> bm!473846 d!1865640))

(declare-fun d!1865644 () Bool)

(declare-fun res!2491206 () Bool)

(declare-fun e!3640664 () Bool)

(assert (=> d!1865644 (=> res!2491206 e!3640664)))

(assert (=> d!1865644 (= res!2491206 ((_ is Nil!64155) (Cons!64155 lt!2313004 Nil!64155)))))

(assert (=> d!1865644 (= (forall!15077 (Cons!64155 lt!2313004 Nil!64155) lambda!324651) e!3640664)))

(declare-fun b!5951132 () Bool)

(declare-fun e!3640665 () Bool)

(assert (=> b!5951132 (= e!3640664 e!3640665)))

(declare-fun res!2491207 () Bool)

(assert (=> b!5951132 (=> (not res!2491207) (not e!3640665))))

(declare-fun dynLambda!25102 (Int Context!10754) Bool)

(assert (=> b!5951132 (= res!2491207 (dynLambda!25102 lambda!324651 (h!70603 (Cons!64155 lt!2313004 Nil!64155))))))

(declare-fun b!5951133 () Bool)

(assert (=> b!5951133 (= e!3640665 (forall!15077 (t!377688 (Cons!64155 lt!2313004 Nil!64155)) lambda!324651))))

(assert (= (and d!1865644 (not res!2491206)) b!5951132))

(assert (= (and b!5951132 res!2491207) b!5951133))

(declare-fun b_lambda!223623 () Bool)

(assert (=> (not b_lambda!223623) (not b!5951132)))

(declare-fun m!6838896 () Bool)

(assert (=> b!5951132 m!6838896))

(declare-fun m!6838898 () Bool)

(assert (=> b!5951133 m!6838898))

(assert (=> b!5950036 d!1865644))

(declare-fun d!1865652 () Bool)

(assert (=> d!1865652 (= (flatMap!1506 lt!2312981 lambda!324696) (choose!44833 lt!2312981 lambda!324696))))

(declare-fun bs!1409444 () Bool)

(assert (= bs!1409444 d!1865652))

(declare-fun m!6838900 () Bool)

(assert (=> bs!1409444 m!6838900))

(assert (=> d!1865306 d!1865652))

(declare-fun b!5951135 () Bool)

(declare-fun e!3640669 () Bool)

(declare-fun e!3640666 () Bool)

(assert (=> b!5951135 (= e!3640669 e!3640666)))

(declare-fun res!2491211 () Bool)

(assert (=> b!5951135 (= res!2491211 (not (nullable!5988 (reg!16322 lt!2313138))))))

(assert (=> b!5951135 (=> (not res!2491211) (not e!3640666))))

(declare-fun call!474004 () Bool)

(declare-fun bm!473998 () Bool)

(declare-fun c!1058986 () Bool)

(declare-fun c!1058985 () Bool)

(assert (=> bm!473998 (= call!474004 (validRegex!7729 (ite c!1058985 (reg!16322 lt!2313138) (ite c!1058986 (regTwo!32499 lt!2313138) (regTwo!32498 lt!2313138)))))))

(declare-fun b!5951136 () Bool)

(declare-fun e!3640672 () Bool)

(assert (=> b!5951136 (= e!3640672 e!3640669)))

(assert (=> b!5951136 (= c!1058985 ((_ is Star!15993) lt!2313138))))

(declare-fun bm!473999 () Bool)

(declare-fun call!474003 () Bool)

(assert (=> bm!473999 (= call!474003 (validRegex!7729 (ite c!1058986 (regOne!32499 lt!2313138) (regOne!32498 lt!2313138))))))

(declare-fun b!5951137 () Bool)

(declare-fun e!3640671 () Bool)

(declare-fun call!474005 () Bool)

(assert (=> b!5951137 (= e!3640671 call!474005)))

(declare-fun b!5951138 () Bool)

(declare-fun res!2491210 () Bool)

(assert (=> b!5951138 (=> (not res!2491210) (not e!3640671))))

(assert (=> b!5951138 (= res!2491210 call!474003)))

(declare-fun e!3640670 () Bool)

(assert (=> b!5951138 (= e!3640670 e!3640671)))

(declare-fun bm!474000 () Bool)

(assert (=> bm!474000 (= call!474005 call!474004)))

(declare-fun b!5951139 () Bool)

(declare-fun e!3640668 () Bool)

(declare-fun e!3640667 () Bool)

(assert (=> b!5951139 (= e!3640668 e!3640667)))

(declare-fun res!2491208 () Bool)

(assert (=> b!5951139 (=> (not res!2491208) (not e!3640667))))

(assert (=> b!5951139 (= res!2491208 call!474003)))

(declare-fun b!5951140 () Bool)

(assert (=> b!5951140 (= e!3640669 e!3640670)))

(assert (=> b!5951140 (= c!1058986 ((_ is Union!15993) lt!2313138))))

(declare-fun b!5951141 () Bool)

(assert (=> b!5951141 (= e!3640667 call!474005)))

(declare-fun b!5951142 () Bool)

(assert (=> b!5951142 (= e!3640666 call!474004)))

(declare-fun b!5951134 () Bool)

(declare-fun res!2491209 () Bool)

(assert (=> b!5951134 (=> res!2491209 e!3640668)))

(assert (=> b!5951134 (= res!2491209 (not ((_ is Concat!24838) lt!2313138)))))

(assert (=> b!5951134 (= e!3640670 e!3640668)))

(declare-fun d!1865654 () Bool)

(declare-fun res!2491212 () Bool)

(assert (=> d!1865654 (=> res!2491212 e!3640672)))

(assert (=> d!1865654 (= res!2491212 ((_ is ElementMatch!15993) lt!2313138))))

(assert (=> d!1865654 (= (validRegex!7729 lt!2313138) e!3640672)))

(assert (= (and d!1865654 (not res!2491212)) b!5951136))

(assert (= (and b!5951136 c!1058985) b!5951135))

(assert (= (and b!5951136 (not c!1058985)) b!5951140))

(assert (= (and b!5951135 res!2491211) b!5951142))

(assert (= (and b!5951140 c!1058986) b!5951138))

(assert (= (and b!5951140 (not c!1058986)) b!5951134))

(assert (= (and b!5951138 res!2491210) b!5951137))

(assert (= (and b!5951134 (not res!2491209)) b!5951139))

(assert (= (and b!5951139 res!2491208) b!5951141))

(assert (= (or b!5951137 b!5951141) bm!474000))

(assert (= (or b!5951138 b!5951139) bm!473999))

(assert (= (or b!5951142 bm!474000) bm!473998))

(declare-fun m!6838902 () Bool)

(assert (=> b!5951135 m!6838902))

(declare-fun m!6838904 () Bool)

(assert (=> bm!473998 m!6838904))

(declare-fun m!6838906 () Bool)

(assert (=> bm!473999 m!6838906))

(assert (=> d!1865354 d!1865654))

(declare-fun d!1865656 () Bool)

(declare-fun res!2491213 () Bool)

(declare-fun e!3640673 () Bool)

(assert (=> d!1865656 (=> res!2491213 e!3640673)))

(assert (=> d!1865656 (= res!2491213 ((_ is Nil!64154) (unfocusZipperList!1414 zl!343)))))

(assert (=> d!1865656 (= (forall!15076 (unfocusZipperList!1414 zl!343) lambda!324704) e!3640673)))

(declare-fun b!5951143 () Bool)

(declare-fun e!3640674 () Bool)

(assert (=> b!5951143 (= e!3640673 e!3640674)))

(declare-fun res!2491214 () Bool)

(assert (=> b!5951143 (=> (not res!2491214) (not e!3640674))))

(assert (=> b!5951143 (= res!2491214 (dynLambda!25100 lambda!324704 (h!70602 (unfocusZipperList!1414 zl!343))))))

(declare-fun b!5951144 () Bool)

(assert (=> b!5951144 (= e!3640674 (forall!15076 (t!377687 (unfocusZipperList!1414 zl!343)) lambda!324704))))

(assert (= (and d!1865656 (not res!2491213)) b!5951143))

(assert (= (and b!5951143 res!2491214) b!5951144))

(declare-fun b_lambda!223625 () Bool)

(assert (=> (not b_lambda!223625) (not b!5951143)))

(declare-fun m!6838908 () Bool)

(assert (=> b!5951143 m!6838908))

(declare-fun m!6838910 () Bool)

(assert (=> b!5951144 m!6838910))

(assert (=> d!1865354 d!1865656))

(declare-fun d!1865658 () Bool)

(declare-fun e!3640681 () Bool)

(assert (=> d!1865658 e!3640681))

(declare-fun c!1058987 () Bool)

(assert (=> d!1865658 (= c!1058987 ((_ is EmptyExpr!15993) (derivativeStep!4723 r!7292 (head!12525 s!2326))))))

(declare-fun lt!2313192 () Bool)

(declare-fun e!3640680 () Bool)

(assert (=> d!1865658 (= lt!2313192 e!3640680)))

(declare-fun c!1058988 () Bool)

(assert (=> d!1865658 (= c!1058988 (isEmpty!36036 (tail!11610 s!2326)))))

(assert (=> d!1865658 (validRegex!7729 (derivativeStep!4723 r!7292 (head!12525 s!2326)))))

(assert (=> d!1865658 (= (matchR!8176 (derivativeStep!4723 r!7292 (head!12525 s!2326)) (tail!11610 s!2326)) lt!2313192)))

(declare-fun b!5951145 () Bool)

(declare-fun e!3640679 () Bool)

(declare-fun e!3640677 () Bool)

(assert (=> b!5951145 (= e!3640679 e!3640677)))

(declare-fun res!2491222 () Bool)

(assert (=> b!5951145 (=> (not res!2491222) (not e!3640677))))

(assert (=> b!5951145 (= res!2491222 (not lt!2313192))))

(declare-fun b!5951146 () Bool)

(declare-fun e!3640678 () Bool)

(assert (=> b!5951146 (= e!3640677 e!3640678)))

(declare-fun res!2491221 () Bool)

(assert (=> b!5951146 (=> res!2491221 e!3640678)))

(declare-fun call!474006 () Bool)

(assert (=> b!5951146 (= res!2491221 call!474006)))

(declare-fun b!5951147 () Bool)

(declare-fun e!3640675 () Bool)

(assert (=> b!5951147 (= e!3640675 (= (head!12525 (tail!11610 s!2326)) (c!1058556 (derivativeStep!4723 r!7292 (head!12525 s!2326)))))))

(declare-fun b!5951148 () Bool)

(assert (=> b!5951148 (= e!3640680 (nullable!5988 (derivativeStep!4723 r!7292 (head!12525 s!2326))))))

(declare-fun b!5951149 () Bool)

(declare-fun e!3640676 () Bool)

(assert (=> b!5951149 (= e!3640676 (not lt!2313192))))

(declare-fun b!5951150 () Bool)

(declare-fun res!2491215 () Bool)

(assert (=> b!5951150 (=> res!2491215 e!3640679)))

(assert (=> b!5951150 (= res!2491215 e!3640675)))

(declare-fun res!2491218 () Bool)

(assert (=> b!5951150 (=> (not res!2491218) (not e!3640675))))

(assert (=> b!5951150 (= res!2491218 lt!2313192)))

(declare-fun b!5951151 () Bool)

(assert (=> b!5951151 (= e!3640681 e!3640676)))

(declare-fun c!1058989 () Bool)

(assert (=> b!5951151 (= c!1058989 ((_ is EmptyLang!15993) (derivativeStep!4723 r!7292 (head!12525 s!2326))))))

(declare-fun bm!474001 () Bool)

(assert (=> bm!474001 (= call!474006 (isEmpty!36036 (tail!11610 s!2326)))))

(declare-fun b!5951152 () Bool)

(assert (=> b!5951152 (= e!3640680 (matchR!8176 (derivativeStep!4723 (derivativeStep!4723 r!7292 (head!12525 s!2326)) (head!12525 (tail!11610 s!2326))) (tail!11610 (tail!11610 s!2326))))))

(declare-fun b!5951153 () Bool)

(assert (=> b!5951153 (= e!3640678 (not (= (head!12525 (tail!11610 s!2326)) (c!1058556 (derivativeStep!4723 r!7292 (head!12525 s!2326))))))))

(declare-fun b!5951154 () Bool)

(assert (=> b!5951154 (= e!3640681 (= lt!2313192 call!474006))))

(declare-fun b!5951155 () Bool)

(declare-fun res!2491216 () Bool)

(assert (=> b!5951155 (=> res!2491216 e!3640678)))

(assert (=> b!5951155 (= res!2491216 (not (isEmpty!36036 (tail!11610 (tail!11610 s!2326)))))))

(declare-fun b!5951156 () Bool)

(declare-fun res!2491217 () Bool)

(assert (=> b!5951156 (=> res!2491217 e!3640679)))

(assert (=> b!5951156 (= res!2491217 (not ((_ is ElementMatch!15993) (derivativeStep!4723 r!7292 (head!12525 s!2326)))))))

(assert (=> b!5951156 (= e!3640676 e!3640679)))

(declare-fun b!5951157 () Bool)

(declare-fun res!2491219 () Bool)

(assert (=> b!5951157 (=> (not res!2491219) (not e!3640675))))

(assert (=> b!5951157 (= res!2491219 (isEmpty!36036 (tail!11610 (tail!11610 s!2326))))))

(declare-fun b!5951158 () Bool)

(declare-fun res!2491220 () Bool)

(assert (=> b!5951158 (=> (not res!2491220) (not e!3640675))))

(assert (=> b!5951158 (= res!2491220 (not call!474006))))

(assert (= (and d!1865658 c!1058988) b!5951148))

(assert (= (and d!1865658 (not c!1058988)) b!5951152))

(assert (= (and d!1865658 c!1058987) b!5951154))

(assert (= (and d!1865658 (not c!1058987)) b!5951151))

(assert (= (and b!5951151 c!1058989) b!5951149))

(assert (= (and b!5951151 (not c!1058989)) b!5951156))

(assert (= (and b!5951156 (not res!2491217)) b!5951150))

(assert (= (and b!5951150 res!2491218) b!5951158))

(assert (= (and b!5951158 res!2491220) b!5951157))

(assert (= (and b!5951157 res!2491219) b!5951147))

(assert (= (and b!5951150 (not res!2491215)) b!5951145))

(assert (= (and b!5951145 res!2491222) b!5951146))

(assert (= (and b!5951146 (not res!2491221)) b!5951155))

(assert (= (and b!5951155 (not res!2491216)) b!5951153))

(assert (= (or b!5951154 b!5951146 b!5951158) bm!474001))

(assert (=> b!5951153 m!6838014))

(assert (=> b!5951153 m!6838716))

(assert (=> b!5951152 m!6838014))

(assert (=> b!5951152 m!6838716))

(assert (=> b!5951152 m!6838012))

(assert (=> b!5951152 m!6838716))

(declare-fun m!6838912 () Bool)

(assert (=> b!5951152 m!6838912))

(assert (=> b!5951152 m!6838014))

(assert (=> b!5951152 m!6838720))

(assert (=> b!5951152 m!6838912))

(assert (=> b!5951152 m!6838720))

(declare-fun m!6838914 () Bool)

(assert (=> b!5951152 m!6838914))

(assert (=> d!1865658 m!6838014))

(assert (=> d!1865658 m!6838020))

(assert (=> d!1865658 m!6838012))

(declare-fun m!6838916 () Bool)

(assert (=> d!1865658 m!6838916))

(assert (=> b!5951148 m!6838012))

(declare-fun m!6838918 () Bool)

(assert (=> b!5951148 m!6838918))

(assert (=> bm!474001 m!6838014))

(assert (=> bm!474001 m!6838020))

(assert (=> b!5951147 m!6838014))

(assert (=> b!5951147 m!6838716))

(assert (=> b!5951155 m!6838014))

(assert (=> b!5951155 m!6838720))

(assert (=> b!5951155 m!6838720))

(declare-fun m!6838920 () Bool)

(assert (=> b!5951155 m!6838920))

(assert (=> b!5951157 m!6838014))

(assert (=> b!5951157 m!6838720))

(assert (=> b!5951157 m!6838720))

(assert (=> b!5951157 m!6838920))

(assert (=> b!5950249 d!1865658))

(declare-fun b!5951210 () Bool)

(declare-fun e!3640714 () Regex!15993)

(declare-fun call!474021 () Regex!15993)

(declare-fun call!474018 () Regex!15993)

(assert (=> b!5951210 (= e!3640714 (Union!15993 call!474021 call!474018))))

(declare-fun bm!474013 () Bool)

(declare-fun call!474020 () Regex!15993)

(declare-fun call!474019 () Regex!15993)

(assert (=> bm!474013 (= call!474020 call!474019)))

(declare-fun c!1059005 () Bool)

(declare-fun bm!474014 () Bool)

(assert (=> bm!474014 (= call!474021 (derivativeStep!4723 (ite c!1059005 (regOne!32499 r!7292) (regOne!32498 r!7292)) (head!12525 s!2326)))))

(declare-fun b!5951212 () Bool)

(declare-fun e!3640713 () Regex!15993)

(declare-fun e!3640711 () Regex!15993)

(assert (=> b!5951212 (= e!3640713 e!3640711)))

(declare-fun c!1059008 () Bool)

(assert (=> b!5951212 (= c!1059008 ((_ is ElementMatch!15993) r!7292))))

(declare-fun b!5951213 () Bool)

(declare-fun e!3640712 () Regex!15993)

(assert (=> b!5951213 (= e!3640712 (Union!15993 (Concat!24838 call!474021 (regTwo!32498 r!7292)) call!474020))))

(declare-fun b!5951214 () Bool)

(assert (=> b!5951214 (= e!3640712 (Union!15993 (Concat!24838 call!474020 (regTwo!32498 r!7292)) EmptyLang!15993))))

(declare-fun b!5951215 () Bool)

(declare-fun e!3640715 () Regex!15993)

(assert (=> b!5951215 (= e!3640715 (Concat!24838 call!474019 r!7292))))

(declare-fun c!1059009 () Bool)

(declare-fun bm!474015 () Bool)

(declare-fun c!1059006 () Bool)

(assert (=> bm!474015 (= call!474018 (derivativeStep!4723 (ite c!1059005 (regTwo!32499 r!7292) (ite c!1059009 (reg!16322 r!7292) (ite c!1059006 (regTwo!32498 r!7292) (regOne!32498 r!7292)))) (head!12525 s!2326)))))

(declare-fun b!5951211 () Bool)

(assert (=> b!5951211 (= e!3640713 EmptyLang!15993)))

(declare-fun d!1865660 () Bool)

(declare-fun lt!2313198 () Regex!15993)

(assert (=> d!1865660 (validRegex!7729 lt!2313198)))

(assert (=> d!1865660 (= lt!2313198 e!3640713)))

(declare-fun c!1059007 () Bool)

(assert (=> d!1865660 (= c!1059007 (or ((_ is EmptyExpr!15993) r!7292) ((_ is EmptyLang!15993) r!7292)))))

(assert (=> d!1865660 (validRegex!7729 r!7292)))

(assert (=> d!1865660 (= (derivativeStep!4723 r!7292 (head!12525 s!2326)) lt!2313198)))

(declare-fun bm!474016 () Bool)

(assert (=> bm!474016 (= call!474019 call!474018)))

(declare-fun b!5951216 () Bool)

(assert (=> b!5951216 (= c!1059005 ((_ is Union!15993) r!7292))))

(assert (=> b!5951216 (= e!3640711 e!3640714)))

(declare-fun b!5951217 () Bool)

(assert (=> b!5951217 (= e!3640714 e!3640715)))

(assert (=> b!5951217 (= c!1059009 ((_ is Star!15993) r!7292))))

(declare-fun b!5951218 () Bool)

(assert (=> b!5951218 (= e!3640711 (ite (= (head!12525 s!2326) (c!1058556 r!7292)) EmptyExpr!15993 EmptyLang!15993))))

(declare-fun b!5951219 () Bool)

(assert (=> b!5951219 (= c!1059006 (nullable!5988 (regOne!32498 r!7292)))))

(assert (=> b!5951219 (= e!3640715 e!3640712)))

(assert (= (and d!1865660 c!1059007) b!5951211))

(assert (= (and d!1865660 (not c!1059007)) b!5951212))

(assert (= (and b!5951212 c!1059008) b!5951218))

(assert (= (and b!5951212 (not c!1059008)) b!5951216))

(assert (= (and b!5951216 c!1059005) b!5951210))

(assert (= (and b!5951216 (not c!1059005)) b!5951217))

(assert (= (and b!5951217 c!1059009) b!5951215))

(assert (= (and b!5951217 (not c!1059009)) b!5951219))

(assert (= (and b!5951219 c!1059006) b!5951213))

(assert (= (and b!5951219 (not c!1059006)) b!5951214))

(assert (= (or b!5951213 b!5951214) bm!474013))

(assert (= (or b!5951215 bm!474013) bm!474016))

(assert (= (or b!5951210 bm!474016) bm!474015))

(assert (= (or b!5951210 b!5951213) bm!474014))

(assert (=> bm!474014 m!6838010))

(declare-fun m!6838950 () Bool)

(assert (=> bm!474014 m!6838950))

(assert (=> bm!474015 m!6838010))

(declare-fun m!6838952 () Bool)

(assert (=> bm!474015 m!6838952))

(declare-fun m!6838954 () Bool)

(assert (=> d!1865660 m!6838954))

(assert (=> d!1865660 m!6837646))

(assert (=> b!5951219 m!6837628))

(assert (=> b!5950249 d!1865660))

(assert (=> b!5950249 d!1865570))

(assert (=> b!5950249 d!1865590))

(declare-fun d!1865672 () Bool)

(declare-fun e!3640722 () Bool)

(assert (=> d!1865672 e!3640722))

(declare-fun c!1059010 () Bool)

(assert (=> d!1865672 (= c!1059010 ((_ is EmptyExpr!15993) (regTwo!32498 r!7292)))))

(declare-fun lt!2313199 () Bool)

(declare-fun e!3640721 () Bool)

(assert (=> d!1865672 (= lt!2313199 e!3640721)))

(declare-fun c!1059011 () Bool)

(assert (=> d!1865672 (= c!1059011 (isEmpty!36036 (_2!36275 (get!22102 lt!2313149))))))

(assert (=> d!1865672 (validRegex!7729 (regTwo!32498 r!7292))))

(assert (=> d!1865672 (= (matchR!8176 (regTwo!32498 r!7292) (_2!36275 (get!22102 lt!2313149))) lt!2313199)))

(declare-fun b!5951220 () Bool)

(declare-fun e!3640720 () Bool)

(declare-fun e!3640718 () Bool)

(assert (=> b!5951220 (= e!3640720 e!3640718)))

(declare-fun res!2491251 () Bool)

(assert (=> b!5951220 (=> (not res!2491251) (not e!3640718))))

(assert (=> b!5951220 (= res!2491251 (not lt!2313199))))

(declare-fun b!5951221 () Bool)

(declare-fun e!3640719 () Bool)

(assert (=> b!5951221 (= e!3640718 e!3640719)))

(declare-fun res!2491250 () Bool)

(assert (=> b!5951221 (=> res!2491250 e!3640719)))

(declare-fun call!474022 () Bool)

(assert (=> b!5951221 (= res!2491250 call!474022)))

(declare-fun b!5951222 () Bool)

(declare-fun e!3640716 () Bool)

(assert (=> b!5951222 (= e!3640716 (= (head!12525 (_2!36275 (get!22102 lt!2313149))) (c!1058556 (regTwo!32498 r!7292))))))

(declare-fun b!5951223 () Bool)

(assert (=> b!5951223 (= e!3640721 (nullable!5988 (regTwo!32498 r!7292)))))

(declare-fun b!5951224 () Bool)

(declare-fun e!3640717 () Bool)

(assert (=> b!5951224 (= e!3640717 (not lt!2313199))))

(declare-fun b!5951225 () Bool)

(declare-fun res!2491244 () Bool)

(assert (=> b!5951225 (=> res!2491244 e!3640720)))

(assert (=> b!5951225 (= res!2491244 e!3640716)))

(declare-fun res!2491247 () Bool)

(assert (=> b!5951225 (=> (not res!2491247) (not e!3640716))))

(assert (=> b!5951225 (= res!2491247 lt!2313199)))

(declare-fun b!5951226 () Bool)

(assert (=> b!5951226 (= e!3640722 e!3640717)))

(declare-fun c!1059012 () Bool)

(assert (=> b!5951226 (= c!1059012 ((_ is EmptyLang!15993) (regTwo!32498 r!7292)))))

(declare-fun bm!474017 () Bool)

(assert (=> bm!474017 (= call!474022 (isEmpty!36036 (_2!36275 (get!22102 lt!2313149))))))

(declare-fun b!5951227 () Bool)

(assert (=> b!5951227 (= e!3640721 (matchR!8176 (derivativeStep!4723 (regTwo!32498 r!7292) (head!12525 (_2!36275 (get!22102 lt!2313149)))) (tail!11610 (_2!36275 (get!22102 lt!2313149)))))))

(declare-fun b!5951228 () Bool)

(assert (=> b!5951228 (= e!3640719 (not (= (head!12525 (_2!36275 (get!22102 lt!2313149))) (c!1058556 (regTwo!32498 r!7292)))))))

(declare-fun b!5951229 () Bool)

(assert (=> b!5951229 (= e!3640722 (= lt!2313199 call!474022))))

(declare-fun b!5951230 () Bool)

(declare-fun res!2491245 () Bool)

(assert (=> b!5951230 (=> res!2491245 e!3640719)))

(assert (=> b!5951230 (= res!2491245 (not (isEmpty!36036 (tail!11610 (_2!36275 (get!22102 lt!2313149))))))))

(declare-fun b!5951231 () Bool)

(declare-fun res!2491246 () Bool)

(assert (=> b!5951231 (=> res!2491246 e!3640720)))

(assert (=> b!5951231 (= res!2491246 (not ((_ is ElementMatch!15993) (regTwo!32498 r!7292))))))

(assert (=> b!5951231 (= e!3640717 e!3640720)))

(declare-fun b!5951232 () Bool)

(declare-fun res!2491248 () Bool)

(assert (=> b!5951232 (=> (not res!2491248) (not e!3640716))))

(assert (=> b!5951232 (= res!2491248 (isEmpty!36036 (tail!11610 (_2!36275 (get!22102 lt!2313149)))))))

(declare-fun b!5951233 () Bool)

(declare-fun res!2491249 () Bool)

(assert (=> b!5951233 (=> (not res!2491249) (not e!3640716))))

(assert (=> b!5951233 (= res!2491249 (not call!474022))))

(assert (= (and d!1865672 c!1059011) b!5951223))

(assert (= (and d!1865672 (not c!1059011)) b!5951227))

(assert (= (and d!1865672 c!1059010) b!5951229))

(assert (= (and d!1865672 (not c!1059010)) b!5951226))

(assert (= (and b!5951226 c!1059012) b!5951224))

(assert (= (and b!5951226 (not c!1059012)) b!5951231))

(assert (= (and b!5951231 (not res!2491246)) b!5951225))

(assert (= (and b!5951225 res!2491247) b!5951233))

(assert (= (and b!5951233 res!2491249) b!5951232))

(assert (= (and b!5951232 res!2491248) b!5951222))

(assert (= (and b!5951225 (not res!2491244)) b!5951220))

(assert (= (and b!5951220 res!2491251) b!5951221))

(assert (= (and b!5951221 (not res!2491250)) b!5951230))

(assert (= (and b!5951230 (not res!2491245)) b!5951228))

(assert (= (or b!5951229 b!5951221 b!5951233) bm!474017))

(declare-fun m!6838956 () Bool)

(assert (=> b!5951228 m!6838956))

(assert (=> b!5951227 m!6838956))

(assert (=> b!5951227 m!6838956))

(declare-fun m!6838958 () Bool)

(assert (=> b!5951227 m!6838958))

(declare-fun m!6838960 () Bool)

(assert (=> b!5951227 m!6838960))

(assert (=> b!5951227 m!6838958))

(assert (=> b!5951227 m!6838960))

(declare-fun m!6838962 () Bool)

(assert (=> b!5951227 m!6838962))

(declare-fun m!6838964 () Bool)

(assert (=> d!1865672 m!6838964))

(declare-fun m!6838966 () Bool)

(assert (=> d!1865672 m!6838966))

(declare-fun m!6838968 () Bool)

(assert (=> b!5951223 m!6838968))

(assert (=> bm!474017 m!6838964))

(assert (=> b!5951222 m!6838956))

(assert (=> b!5951230 m!6838960))

(assert (=> b!5951230 m!6838960))

(declare-fun m!6838970 () Bool)

(assert (=> b!5951230 m!6838970))

(assert (=> b!5951232 m!6838960))

(assert (=> b!5951232 m!6838960))

(assert (=> b!5951232 m!6838970))

(assert (=> b!5950488 d!1865672))

(assert (=> b!5950488 d!1865608))

(declare-fun d!1865674 () Bool)

(declare-fun c!1059015 () Bool)

(assert (=> d!1865674 (= c!1059015 ((_ is Nil!64155) lt!2313126))))

(declare-fun e!3640725 () (InoxSet Context!10754))

(assert (=> d!1865674 (= (content!11840 lt!2313126) e!3640725)))

(declare-fun b!5951238 () Bool)

(assert (=> b!5951238 (= e!3640725 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951239 () Bool)

(assert (=> b!5951239 (= e!3640725 ((_ map or) (store ((as const (Array Context!10754 Bool)) false) (h!70603 lt!2313126) true) (content!11840 (t!377688 lt!2313126))))))

(assert (= (and d!1865674 c!1059015) b!5951238))

(assert (= (and d!1865674 (not c!1059015)) b!5951239))

(declare-fun m!6838976 () Bool)

(assert (=> b!5951239 m!6838976))

(declare-fun m!6838978 () Bool)

(assert (=> b!5951239 m!6838978))

(assert (=> b!5950333 d!1865674))

(declare-fun d!1865678 () Bool)

(assert (=> d!1865678 (= (isEmptyLang!1430 lt!2313138) ((_ is EmptyLang!15993) lt!2313138))))

(assert (=> b!5950460 d!1865678))

(assert (=> bs!1409087 d!1865342))

(assert (=> d!1865198 d!1865530))

(declare-fun d!1865682 () Bool)

(declare-fun c!1059016 () Bool)

(assert (=> d!1865682 (= c!1059016 (and ((_ is ElementMatch!15993) (h!70602 (exprs!5877 lt!2313004))) (= (c!1058556 (h!70602 (exprs!5877 lt!2313004))) (h!70604 s!2326))))))

(declare-fun e!3640729 () (InoxSet Context!10754))

(assert (=> d!1865682 (= (derivationStepZipperDown!1243 (h!70602 (exprs!5877 lt!2313004)) (Context!10755 (t!377687 (exprs!5877 lt!2313004))) (h!70604 s!2326)) e!3640729)))

(declare-fun b!5951240 () Bool)

(declare-fun e!3640731 () Bool)

(assert (=> b!5951240 (= e!3640731 (nullable!5988 (regOne!32498 (h!70602 (exprs!5877 lt!2313004)))))))

(declare-fun bm!474018 () Bool)

(declare-fun call!474025 () List!64278)

(declare-fun call!474028 () List!64278)

(assert (=> bm!474018 (= call!474025 call!474028)))

(declare-fun call!474027 () (InoxSet Context!10754))

(declare-fun c!1059018 () Bool)

(declare-fun c!1059020 () Bool)

(declare-fun bm!474019 () Bool)

(declare-fun c!1059019 () Bool)

(assert (=> bm!474019 (= call!474027 (derivationStepZipperDown!1243 (ite c!1059020 (regTwo!32499 (h!70602 (exprs!5877 lt!2313004))) (ite c!1059018 (regTwo!32498 (h!70602 (exprs!5877 lt!2313004))) (ite c!1059019 (regOne!32498 (h!70602 (exprs!5877 lt!2313004))) (reg!16322 (h!70602 (exprs!5877 lt!2313004)))))) (ite (or c!1059020 c!1059018) (Context!10755 (t!377687 (exprs!5877 lt!2313004))) (Context!10755 call!474025)) (h!70604 s!2326)))))

(declare-fun b!5951241 () Bool)

(declare-fun e!3640728 () (InoxSet Context!10754))

(declare-fun call!474023 () (InoxSet Context!10754))

(assert (=> b!5951241 (= e!3640728 call!474023)))

(declare-fun b!5951242 () Bool)

(declare-fun e!3640726 () (InoxSet Context!10754))

(declare-fun call!474024 () (InoxSet Context!10754))

(declare-fun call!474026 () (InoxSet Context!10754))

(assert (=> b!5951242 (= e!3640726 ((_ map or) call!474024 call!474026))))

(declare-fun b!5951243 () Bool)

(assert (=> b!5951243 (= c!1059018 e!3640731)))

(declare-fun res!2491252 () Bool)

(assert (=> b!5951243 (=> (not res!2491252) (not e!3640731))))

(assert (=> b!5951243 (= res!2491252 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun e!3640727 () (InoxSet Context!10754))

(assert (=> b!5951243 (= e!3640727 e!3640726)))

(declare-fun b!5951244 () Bool)

(assert (=> b!5951244 (= e!3640727 ((_ map or) call!474024 call!474027))))

(declare-fun b!5951245 () Bool)

(assert (=> b!5951245 (= e!3640726 e!3640728)))

(assert (=> b!5951245 (= c!1059019 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun b!5951246 () Bool)

(declare-fun c!1059017 () Bool)

(assert (=> b!5951246 (= c!1059017 ((_ is Star!15993) (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun e!3640730 () (InoxSet Context!10754))

(assert (=> b!5951246 (= e!3640728 e!3640730)))

(declare-fun bm!474020 () Bool)

(assert (=> bm!474020 (= call!474026 call!474027)))

(declare-fun bm!474021 () Bool)

(assert (=> bm!474021 (= call!474024 (derivationStepZipperDown!1243 (ite c!1059020 (regOne!32499 (h!70602 (exprs!5877 lt!2313004))) (regOne!32498 (h!70602 (exprs!5877 lt!2313004)))) (ite c!1059020 (Context!10755 (t!377687 (exprs!5877 lt!2313004))) (Context!10755 call!474028)) (h!70604 s!2326)))))

(declare-fun b!5951247 () Bool)

(assert (=> b!5951247 (= e!3640730 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951248 () Bool)

(assert (=> b!5951248 (= e!3640729 e!3640727)))

(assert (=> b!5951248 (= c!1059020 ((_ is Union!15993) (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun bm!474022 () Bool)

(assert (=> bm!474022 (= call!474023 call!474026)))

(declare-fun b!5951249 () Bool)

(assert (=> b!5951249 (= e!3640729 (store ((as const (Array Context!10754 Bool)) false) (Context!10755 (t!377687 (exprs!5877 lt!2313004))) true))))

(declare-fun bm!474023 () Bool)

(assert (=> bm!474023 (= call!474028 ($colon$colon!1880 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))) (ite (or c!1059018 c!1059019) (regTwo!32498 (h!70602 (exprs!5877 lt!2313004))) (h!70602 (exprs!5877 lt!2313004)))))))

(declare-fun b!5951250 () Bool)

(assert (=> b!5951250 (= e!3640730 call!474023)))

(assert (= (and d!1865682 c!1059016) b!5951249))

(assert (= (and d!1865682 (not c!1059016)) b!5951248))

(assert (= (and b!5951248 c!1059020) b!5951244))

(assert (= (and b!5951248 (not c!1059020)) b!5951243))

(assert (= (and b!5951243 res!2491252) b!5951240))

(assert (= (and b!5951243 c!1059018) b!5951242))

(assert (= (and b!5951243 (not c!1059018)) b!5951245))

(assert (= (and b!5951245 c!1059019) b!5951241))

(assert (= (and b!5951245 (not c!1059019)) b!5951246))

(assert (= (and b!5951246 c!1059017) b!5951250))

(assert (= (and b!5951246 (not c!1059017)) b!5951247))

(assert (= (or b!5951241 b!5951250) bm!474018))

(assert (= (or b!5951241 b!5951250) bm!474022))

(assert (= (or b!5951242 bm!474018) bm!474023))

(assert (= (or b!5951242 bm!474022) bm!474020))

(assert (= (or b!5951244 bm!474020) bm!474019))

(assert (= (or b!5951244 b!5951242) bm!474021))

(declare-fun m!6838980 () Bool)

(assert (=> bm!474019 m!6838980))

(declare-fun m!6838982 () Bool)

(assert (=> b!5951240 m!6838982))

(declare-fun m!6838984 () Bool)

(assert (=> b!5951249 m!6838984))

(declare-fun m!6838986 () Bool)

(assert (=> bm!474023 m!6838986))

(declare-fun m!6838988 () Bool)

(assert (=> bm!474021 m!6838988))

(assert (=> bm!473848 d!1865682))

(declare-fun bs!1409468 () Bool)

(declare-fun d!1865688 () Bool)

(assert (= bs!1409468 (and d!1865688 b!5950045)))

(declare-fun lambda!324771 () Int)

(assert (=> bs!1409468 (not (= lambda!324771 lambda!324654))))

(declare-fun bs!1409471 () Bool)

(assert (= bs!1409471 (and d!1865688 b!5950036)))

(assert (=> bs!1409471 (not (= lambda!324771 lambda!324651))))

(declare-fun bs!1409473 () Bool)

(assert (= bs!1409473 (and d!1865688 b!5950034)))

(assert (=> bs!1409473 (not (= lambda!324771 lambda!324650))))

(declare-fun bs!1409475 () Bool)

(assert (= bs!1409475 (and d!1865688 b!5950043)))

(assert (=> bs!1409475 (not (= lambda!324771 lambda!324653))))

(declare-fun bs!1409477 () Bool)

(assert (= bs!1409477 (and d!1865688 d!1865630)))

(assert (=> bs!1409477 (= lambda!324771 lambda!324762)))

(declare-fun bs!1409479 () Bool)

(assert (= bs!1409479 (and d!1865688 d!1865594)))

(assert (=> bs!1409479 (= lambda!324771 lambda!324751)))

(assert (=> d!1865688 (= (nullableZipper!1799 lt!2312979) (exists!2352 lt!2312979 lambda!324771))))

(declare-fun bs!1409482 () Bool)

(assert (= bs!1409482 d!1865688))

(declare-fun m!6838990 () Bool)

(assert (=> bs!1409482 m!6838990))

(assert (=> b!5950388 d!1865688))

(declare-fun d!1865690 () Bool)

(assert (=> d!1865690 (= ($colon$colon!1880 (exprs!5877 lt!2312978) (ite (or c!1058772 c!1058773) (regTwo!32498 (regOne!32498 r!7292)) (regOne!32498 r!7292))) (Cons!64154 (ite (or c!1058772 c!1058773) (regTwo!32498 (regOne!32498 r!7292)) (regOne!32498 r!7292)) (exprs!5877 lt!2312978)))))

(assert (=> bm!473854 d!1865690))

(assert (=> d!1865302 d!1865582))

(declare-fun d!1865692 () Bool)

(declare-fun e!3640738 () Bool)

(assert (=> d!1865692 e!3640738))

(declare-fun c!1059021 () Bool)

(assert (=> d!1865692 (= c!1059021 ((_ is EmptyExpr!15993) (regTwo!32498 r!7292)))))

(declare-fun lt!2313200 () Bool)

(declare-fun e!3640737 () Bool)

(assert (=> d!1865692 (= lt!2313200 e!3640737)))

(declare-fun c!1059022 () Bool)

(assert (=> d!1865692 (= c!1059022 (isEmpty!36036 s!2326))))

(assert (=> d!1865692 (validRegex!7729 (regTwo!32498 r!7292))))

(assert (=> d!1865692 (= (matchR!8176 (regTwo!32498 r!7292) s!2326) lt!2313200)))

(declare-fun b!5951251 () Bool)

(declare-fun e!3640736 () Bool)

(declare-fun e!3640734 () Bool)

(assert (=> b!5951251 (= e!3640736 e!3640734)))

(declare-fun res!2491260 () Bool)

(assert (=> b!5951251 (=> (not res!2491260) (not e!3640734))))

(assert (=> b!5951251 (= res!2491260 (not lt!2313200))))

(declare-fun b!5951252 () Bool)

(declare-fun e!3640735 () Bool)

(assert (=> b!5951252 (= e!3640734 e!3640735)))

(declare-fun res!2491259 () Bool)

(assert (=> b!5951252 (=> res!2491259 e!3640735)))

(declare-fun call!474029 () Bool)

(assert (=> b!5951252 (= res!2491259 call!474029)))

(declare-fun b!5951253 () Bool)

(declare-fun e!3640732 () Bool)

(assert (=> b!5951253 (= e!3640732 (= (head!12525 s!2326) (c!1058556 (regTwo!32498 r!7292))))))

(declare-fun b!5951254 () Bool)

(assert (=> b!5951254 (= e!3640737 (nullable!5988 (regTwo!32498 r!7292)))))

(declare-fun b!5951255 () Bool)

(declare-fun e!3640733 () Bool)

(assert (=> b!5951255 (= e!3640733 (not lt!2313200))))

(declare-fun b!5951256 () Bool)

(declare-fun res!2491253 () Bool)

(assert (=> b!5951256 (=> res!2491253 e!3640736)))

(assert (=> b!5951256 (= res!2491253 e!3640732)))

(declare-fun res!2491256 () Bool)

(assert (=> b!5951256 (=> (not res!2491256) (not e!3640732))))

(assert (=> b!5951256 (= res!2491256 lt!2313200)))

(declare-fun b!5951257 () Bool)

(assert (=> b!5951257 (= e!3640738 e!3640733)))

(declare-fun c!1059023 () Bool)

(assert (=> b!5951257 (= c!1059023 ((_ is EmptyLang!15993) (regTwo!32498 r!7292)))))

(declare-fun bm!474024 () Bool)

(assert (=> bm!474024 (= call!474029 (isEmpty!36036 s!2326))))

(declare-fun b!5951258 () Bool)

(assert (=> b!5951258 (= e!3640737 (matchR!8176 (derivativeStep!4723 (regTwo!32498 r!7292) (head!12525 s!2326)) (tail!11610 s!2326)))))

(declare-fun b!5951259 () Bool)

(assert (=> b!5951259 (= e!3640735 (not (= (head!12525 s!2326) (c!1058556 (regTwo!32498 r!7292)))))))

(declare-fun b!5951260 () Bool)

(assert (=> b!5951260 (= e!3640738 (= lt!2313200 call!474029))))

(declare-fun b!5951261 () Bool)

(declare-fun res!2491254 () Bool)

(assert (=> b!5951261 (=> res!2491254 e!3640735)))

(assert (=> b!5951261 (= res!2491254 (not (isEmpty!36036 (tail!11610 s!2326))))))

(declare-fun b!5951262 () Bool)

(declare-fun res!2491255 () Bool)

(assert (=> b!5951262 (=> res!2491255 e!3640736)))

(assert (=> b!5951262 (= res!2491255 (not ((_ is ElementMatch!15993) (regTwo!32498 r!7292))))))

(assert (=> b!5951262 (= e!3640733 e!3640736)))

(declare-fun b!5951263 () Bool)

(declare-fun res!2491257 () Bool)

(assert (=> b!5951263 (=> (not res!2491257) (not e!3640732))))

(assert (=> b!5951263 (= res!2491257 (isEmpty!36036 (tail!11610 s!2326)))))

(declare-fun b!5951264 () Bool)

(declare-fun res!2491258 () Bool)

(assert (=> b!5951264 (=> (not res!2491258) (not e!3640732))))

(assert (=> b!5951264 (= res!2491258 (not call!474029))))

(assert (= (and d!1865692 c!1059022) b!5951254))

(assert (= (and d!1865692 (not c!1059022)) b!5951258))

(assert (= (and d!1865692 c!1059021) b!5951260))

(assert (= (and d!1865692 (not c!1059021)) b!5951257))

(assert (= (and b!5951257 c!1059023) b!5951255))

(assert (= (and b!5951257 (not c!1059023)) b!5951262))

(assert (= (and b!5951262 (not res!2491255)) b!5951256))

(assert (= (and b!5951256 res!2491256) b!5951264))

(assert (= (and b!5951264 res!2491258) b!5951263))

(assert (= (and b!5951263 res!2491257) b!5951253))

(assert (= (and b!5951256 (not res!2491253)) b!5951251))

(assert (= (and b!5951251 res!2491260) b!5951252))

(assert (= (and b!5951252 (not res!2491259)) b!5951261))

(assert (= (and b!5951261 (not res!2491254)) b!5951259))

(assert (= (or b!5951260 b!5951252 b!5951264) bm!474024))

(assert (=> b!5951259 m!6838010))

(assert (=> b!5951258 m!6838010))

(assert (=> b!5951258 m!6838010))

(declare-fun m!6839002 () Bool)

(assert (=> b!5951258 m!6839002))

(assert (=> b!5951258 m!6838014))

(assert (=> b!5951258 m!6839002))

(assert (=> b!5951258 m!6838014))

(declare-fun m!6839004 () Bool)

(assert (=> b!5951258 m!6839004))

(assert (=> d!1865692 m!6837984))

(assert (=> d!1865692 m!6838966))

(assert (=> b!5951254 m!6838968))

(assert (=> bm!474024 m!6837984))

(assert (=> b!5951253 m!6838010))

(assert (=> b!5951261 m!6838014))

(assert (=> b!5951261 m!6838014))

(assert (=> b!5951261 m!6838020))

(assert (=> b!5951263 m!6838014))

(assert (=> b!5951263 m!6838014))

(assert (=> b!5951263 m!6838020))

(assert (=> b!5950492 d!1865692))

(declare-fun d!1865700 () Bool)

(assert (=> d!1865700 (= (head!12528 (exprs!5877 (h!70603 zl!343))) (h!70602 (exprs!5877 (h!70603 zl!343))))))

(assert (=> b!5950113 d!1865700))

(declare-fun d!1865702 () Bool)

(declare-fun res!2491261 () Bool)

(declare-fun e!3640740 () Bool)

(assert (=> d!1865702 (=> res!2491261 e!3640740)))

(assert (=> d!1865702 (= res!2491261 ((_ is Nil!64155) (Cons!64155 lt!2312982 Nil!64155)))))

(assert (=> d!1865702 (= (forall!15077 (Cons!64155 lt!2312982 Nil!64155) lambda!324654) e!3640740)))

(declare-fun b!5951267 () Bool)

(declare-fun e!3640741 () Bool)

(assert (=> b!5951267 (= e!3640740 e!3640741)))

(declare-fun res!2491262 () Bool)

(assert (=> b!5951267 (=> (not res!2491262) (not e!3640741))))

(assert (=> b!5951267 (= res!2491262 (dynLambda!25102 lambda!324654 (h!70603 (Cons!64155 lt!2312982 Nil!64155))))))

(declare-fun b!5951268 () Bool)

(assert (=> b!5951268 (= e!3640741 (forall!15077 (t!377688 (Cons!64155 lt!2312982 Nil!64155)) lambda!324654))))

(assert (= (and d!1865702 (not res!2491261)) b!5951267))

(assert (= (and b!5951267 res!2491262) b!5951268))

(declare-fun b_lambda!223631 () Bool)

(assert (=> (not b_lambda!223631) (not b!5951267)))

(declare-fun m!6839006 () Bool)

(assert (=> b!5951267 m!6839006))

(declare-fun m!6839008 () Bool)

(assert (=> b!5951268 m!6839008))

(assert (=> b!5950045 d!1865702))

(assert (=> d!1865238 d!1865220))

(declare-fun d!1865704 () Bool)

(assert (=> d!1865704 (= (flatMap!1506 z!1189 lambda!324608) (dynLambda!25095 lambda!324608 (h!70603 zl!343)))))

(assert (=> d!1865704 true))

(declare-fun _$13!2749 () Unit!157257)

(assert (=> d!1865704 (= (choose!44834 z!1189 (h!70603 zl!343) lambda!324608) _$13!2749)))

(declare-fun b_lambda!223633 () Bool)

(assert (=> (not b_lambda!223633) (not d!1865704)))

(declare-fun bs!1409497 () Bool)

(assert (= bs!1409497 d!1865704))

(assert (=> bs!1409497 m!6837580))

(assert (=> bs!1409497 m!6837875))

(assert (=> d!1865238 d!1865704))

(declare-fun bs!1409498 () Bool)

(declare-fun d!1865708 () Bool)

(assert (= bs!1409498 (and d!1865708 b!5950045)))

(declare-fun lambda!324773 () Int)

(assert (=> bs!1409498 (not (= lambda!324773 lambda!324654))))

(declare-fun bs!1409500 () Bool)

(assert (= bs!1409500 (and d!1865708 d!1865688)))

(assert (=> bs!1409500 (= lambda!324773 lambda!324771)))

(declare-fun bs!1409501 () Bool)

(assert (= bs!1409501 (and d!1865708 b!5950036)))

(assert (=> bs!1409501 (not (= lambda!324773 lambda!324651))))

(declare-fun bs!1409502 () Bool)

(assert (= bs!1409502 (and d!1865708 b!5950034)))

(assert (=> bs!1409502 (not (= lambda!324773 lambda!324650))))

(declare-fun bs!1409503 () Bool)

(assert (= bs!1409503 (and d!1865708 b!5950043)))

(assert (=> bs!1409503 (not (= lambda!324773 lambda!324653))))

(declare-fun bs!1409504 () Bool)

(assert (= bs!1409504 (and d!1865708 d!1865630)))

(assert (=> bs!1409504 (= lambda!324773 lambda!324762)))

(declare-fun bs!1409505 () Bool)

(assert (= bs!1409505 (and d!1865708 d!1865594)))

(assert (=> bs!1409505 (= lambda!324773 lambda!324751)))

(assert (=> d!1865708 (= (nullableZipper!1799 lt!2313001) (exists!2352 lt!2313001 lambda!324773))))

(declare-fun bs!1409506 () Bool)

(assert (= bs!1409506 d!1865708))

(declare-fun m!6839014 () Bool)

(assert (=> bs!1409506 m!6839014))

(assert (=> b!5950057 d!1865708))

(declare-fun d!1865714 () Bool)

(declare-fun res!2491263 () Bool)

(declare-fun e!3640742 () Bool)

(assert (=> d!1865714 (=> res!2491263 e!3640742)))

(assert (=> d!1865714 (= res!2491263 ((_ is Nil!64154) (exprs!5877 lt!2312978)))))

(assert (=> d!1865714 (= (forall!15076 (exprs!5877 lt!2312978) lambda!324700) e!3640742)))

(declare-fun b!5951269 () Bool)

(declare-fun e!3640743 () Bool)

(assert (=> b!5951269 (= e!3640742 e!3640743)))

(declare-fun res!2491264 () Bool)

(assert (=> b!5951269 (=> (not res!2491264) (not e!3640743))))

(assert (=> b!5951269 (= res!2491264 (dynLambda!25100 lambda!324700 (h!70602 (exprs!5877 lt!2312978))))))

(declare-fun b!5951270 () Bool)

(assert (=> b!5951270 (= e!3640743 (forall!15076 (t!377687 (exprs!5877 lt!2312978)) lambda!324700))))

(assert (= (and d!1865714 (not res!2491263)) b!5951269))

(assert (= (and b!5951269 res!2491264) b!5951270))

(declare-fun b_lambda!223635 () Bool)

(assert (=> (not b_lambda!223635) (not b!5951269)))

(declare-fun m!6839016 () Bool)

(assert (=> b!5951269 m!6839016))

(declare-fun m!6839018 () Bool)

(assert (=> b!5951270 m!6839018))

(assert (=> d!1865316 d!1865714))

(declare-fun b!5951272 () Bool)

(declare-fun e!3640747 () Bool)

(declare-fun e!3640744 () Bool)

(assert (=> b!5951272 (= e!3640747 e!3640744)))

(declare-fun res!2491268 () Bool)

(assert (=> b!5951272 (= res!2491268 (not (nullable!5988 (reg!16322 lt!2313135))))))

(assert (=> b!5951272 (=> (not res!2491268) (not e!3640744))))

(declare-fun bm!474025 () Bool)

(declare-fun call!474031 () Bool)

(declare-fun c!1059026 () Bool)

(declare-fun c!1059025 () Bool)

(assert (=> bm!474025 (= call!474031 (validRegex!7729 (ite c!1059025 (reg!16322 lt!2313135) (ite c!1059026 (regTwo!32499 lt!2313135) (regTwo!32498 lt!2313135)))))))

(declare-fun b!5951273 () Bool)

(declare-fun e!3640750 () Bool)

(assert (=> b!5951273 (= e!3640750 e!3640747)))

(assert (=> b!5951273 (= c!1059025 ((_ is Star!15993) lt!2313135))))

(declare-fun bm!474026 () Bool)

(declare-fun call!474030 () Bool)

(assert (=> bm!474026 (= call!474030 (validRegex!7729 (ite c!1059026 (regOne!32499 lt!2313135) (regOne!32498 lt!2313135))))))

(declare-fun b!5951274 () Bool)

(declare-fun e!3640749 () Bool)

(declare-fun call!474032 () Bool)

(assert (=> b!5951274 (= e!3640749 call!474032)))

(declare-fun b!5951275 () Bool)

(declare-fun res!2491267 () Bool)

(assert (=> b!5951275 (=> (not res!2491267) (not e!3640749))))

(assert (=> b!5951275 (= res!2491267 call!474030)))

(declare-fun e!3640748 () Bool)

(assert (=> b!5951275 (= e!3640748 e!3640749)))

(declare-fun bm!474027 () Bool)

(assert (=> bm!474027 (= call!474032 call!474031)))

(declare-fun b!5951276 () Bool)

(declare-fun e!3640746 () Bool)

(declare-fun e!3640745 () Bool)

(assert (=> b!5951276 (= e!3640746 e!3640745)))

(declare-fun res!2491265 () Bool)

(assert (=> b!5951276 (=> (not res!2491265) (not e!3640745))))

(assert (=> b!5951276 (= res!2491265 call!474030)))

(declare-fun b!5951277 () Bool)

(assert (=> b!5951277 (= e!3640747 e!3640748)))

(assert (=> b!5951277 (= c!1059026 ((_ is Union!15993) lt!2313135))))

(declare-fun b!5951278 () Bool)

(assert (=> b!5951278 (= e!3640745 call!474032)))

(declare-fun b!5951279 () Bool)

(assert (=> b!5951279 (= e!3640744 call!474031)))

(declare-fun b!5951271 () Bool)

(declare-fun res!2491266 () Bool)

(assert (=> b!5951271 (=> res!2491266 e!3640746)))

(assert (=> b!5951271 (= res!2491266 (not ((_ is Concat!24838) lt!2313135)))))

(assert (=> b!5951271 (= e!3640748 e!3640746)))

(declare-fun d!1865718 () Bool)

(declare-fun res!2491269 () Bool)

(assert (=> d!1865718 (=> res!2491269 e!3640750)))

(assert (=> d!1865718 (= res!2491269 ((_ is ElementMatch!15993) lt!2313135))))

(assert (=> d!1865718 (= (validRegex!7729 lt!2313135) e!3640750)))

(assert (= (and d!1865718 (not res!2491269)) b!5951273))

(assert (= (and b!5951273 c!1059025) b!5951272))

(assert (= (and b!5951273 (not c!1059025)) b!5951277))

(assert (= (and b!5951272 res!2491268) b!5951279))

(assert (= (and b!5951277 c!1059026) b!5951275))

(assert (= (and b!5951277 (not c!1059026)) b!5951271))

(assert (= (and b!5951275 res!2491267) b!5951274))

(assert (= (and b!5951271 (not res!2491266)) b!5951276))

(assert (= (and b!5951276 res!2491265) b!5951278))

(assert (= (or b!5951274 b!5951278) bm!474027))

(assert (= (or b!5951275 b!5951276) bm!474026))

(assert (= (or b!5951279 bm!474027) bm!474025))

(declare-fun m!6839020 () Bool)

(assert (=> b!5951272 m!6839020))

(declare-fun m!6839022 () Bool)

(assert (=> bm!474025 m!6839022))

(declare-fun m!6839024 () Bool)

(assert (=> bm!474026 m!6839024))

(assert (=> d!1865346 d!1865718))

(assert (=> d!1865346 d!1865354))

(assert (=> d!1865346 d!1865362))

(declare-fun d!1865720 () Bool)

(declare-fun c!1059027 () Bool)

(assert (=> d!1865720 (= c!1059027 (isEmpty!36036 (tail!11610 s!2326)))))

(declare-fun e!3640751 () Bool)

(assert (=> d!1865720 (= (matchZipper!2029 (derivationStepZipper!1974 lt!2312981 (head!12525 s!2326)) (tail!11610 s!2326)) e!3640751)))

(declare-fun b!5951280 () Bool)

(assert (=> b!5951280 (= e!3640751 (nullableZipper!1799 (derivationStepZipper!1974 lt!2312981 (head!12525 s!2326))))))

(declare-fun b!5951281 () Bool)

(assert (=> b!5951281 (= e!3640751 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312981 (head!12525 s!2326)) (head!12525 (tail!11610 s!2326))) (tail!11610 (tail!11610 s!2326))))))

(assert (= (and d!1865720 c!1059027) b!5951280))

(assert (= (and d!1865720 (not c!1059027)) b!5951281))

(assert (=> d!1865720 m!6838014))

(assert (=> d!1865720 m!6838020))

(assert (=> b!5951280 m!6838082))

(declare-fun m!6839030 () Bool)

(assert (=> b!5951280 m!6839030))

(assert (=> b!5951281 m!6838014))

(assert (=> b!5951281 m!6838716))

(assert (=> b!5951281 m!6838082))

(assert (=> b!5951281 m!6838716))

(declare-fun m!6839032 () Bool)

(assert (=> b!5951281 m!6839032))

(assert (=> b!5951281 m!6838014))

(assert (=> b!5951281 m!6838720))

(assert (=> b!5951281 m!6839032))

(assert (=> b!5951281 m!6838720))

(declare-fun m!6839036 () Bool)

(assert (=> b!5951281 m!6839036))

(assert (=> b!5950318 d!1865720))

(declare-fun bs!1409523 () Bool)

(declare-fun d!1865734 () Bool)

(assert (= bs!1409523 (and d!1865734 b!5949712)))

(declare-fun lambda!324775 () Int)

(assert (=> bs!1409523 (= (= (head!12525 s!2326) (h!70604 s!2326)) (= lambda!324775 lambda!324608))))

(declare-fun bs!1409525 () Bool)

(assert (= bs!1409525 (and d!1865734 d!1865300)))

(assert (=> bs!1409525 (= (= (head!12525 s!2326) (h!70604 s!2326)) (= lambda!324775 lambda!324692))))

(declare-fun bs!1409527 () Bool)

(assert (= bs!1409527 (and d!1865734 d!1865306)))

(assert (=> bs!1409527 (= (= (head!12525 s!2326) (h!70604 s!2326)) (= lambda!324775 lambda!324696))))

(declare-fun bs!1409528 () Bool)

(assert (= bs!1409528 (and d!1865734 d!1865628)))

(assert (=> bs!1409528 (= (= (head!12525 s!2326) (head!12525 (t!377689 s!2326))) (= lambda!324775 lambda!324761))))

(declare-fun bs!1409529 () Bool)

(assert (= bs!1409529 (and d!1865734 d!1865352)))

(assert (=> bs!1409529 (= (= (head!12525 s!2326) (h!70604 s!2326)) (= lambda!324775 lambda!324701))))

(declare-fun bs!1409530 () Bool)

(assert (= bs!1409530 (and d!1865734 d!1865620)))

(assert (=> bs!1409530 (= (= (head!12525 s!2326) (head!12525 (t!377689 s!2326))) (= lambda!324775 lambda!324759))))

(declare-fun bs!1409531 () Bool)

(assert (= bs!1409531 (and d!1865734 d!1865588)))

(assert (=> bs!1409531 (= lambda!324775 lambda!324748)))

(declare-fun bs!1409532 () Bool)

(assert (= bs!1409532 (and d!1865734 d!1865544)))

(assert (=> bs!1409532 (= (= (head!12525 s!2326) (head!12525 (t!377689 s!2326))) (= lambda!324775 lambda!324743))))

(assert (=> d!1865734 true))

(assert (=> d!1865734 (= (derivationStepZipper!1974 lt!2312981 (head!12525 s!2326)) (flatMap!1506 lt!2312981 lambda!324775))))

(declare-fun bs!1409533 () Bool)

(assert (= bs!1409533 d!1865734))

(declare-fun m!6839042 () Bool)

(assert (=> bs!1409533 m!6839042))

(assert (=> b!5950318 d!1865734))

(assert (=> b!5950318 d!1865570))

(assert (=> b!5950318 d!1865590))

(declare-fun d!1865742 () Bool)

(assert (=> d!1865742 (= (isDefined!12587 lt!2313149) (not (isEmpty!36038 lt!2313149)))))

(declare-fun bs!1409534 () Bool)

(assert (= bs!1409534 d!1865742))

(declare-fun m!6839044 () Bool)

(assert (=> bs!1409534 m!6839044))

(assert (=> d!1865364 d!1865742))

(declare-fun d!1865744 () Bool)

(declare-fun e!3640758 () Bool)

(assert (=> d!1865744 e!3640758))

(declare-fun c!1059028 () Bool)

(assert (=> d!1865744 (= c!1059028 ((_ is EmptyExpr!15993) (regOne!32498 r!7292)))))

(declare-fun lt!2313201 () Bool)

(declare-fun e!3640757 () Bool)

(assert (=> d!1865744 (= lt!2313201 e!3640757)))

(declare-fun c!1059029 () Bool)

(assert (=> d!1865744 (= c!1059029 (isEmpty!36036 Nil!64156))))

(assert (=> d!1865744 (validRegex!7729 (regOne!32498 r!7292))))

(assert (=> d!1865744 (= (matchR!8176 (regOne!32498 r!7292) Nil!64156) lt!2313201)))

(declare-fun b!5951282 () Bool)

(declare-fun e!3640756 () Bool)

(declare-fun e!3640754 () Bool)

(assert (=> b!5951282 (= e!3640756 e!3640754)))

(declare-fun res!2491277 () Bool)

(assert (=> b!5951282 (=> (not res!2491277) (not e!3640754))))

(assert (=> b!5951282 (= res!2491277 (not lt!2313201))))

(declare-fun b!5951283 () Bool)

(declare-fun e!3640755 () Bool)

(assert (=> b!5951283 (= e!3640754 e!3640755)))

(declare-fun res!2491276 () Bool)

(assert (=> b!5951283 (=> res!2491276 e!3640755)))

(declare-fun call!474033 () Bool)

(assert (=> b!5951283 (= res!2491276 call!474033)))

(declare-fun b!5951284 () Bool)

(declare-fun e!3640752 () Bool)

(assert (=> b!5951284 (= e!3640752 (= (head!12525 Nil!64156) (c!1058556 (regOne!32498 r!7292))))))

(declare-fun b!5951285 () Bool)

(assert (=> b!5951285 (= e!3640757 (nullable!5988 (regOne!32498 r!7292)))))

(declare-fun b!5951286 () Bool)

(declare-fun e!3640753 () Bool)

(assert (=> b!5951286 (= e!3640753 (not lt!2313201))))

(declare-fun b!5951287 () Bool)

(declare-fun res!2491270 () Bool)

(assert (=> b!5951287 (=> res!2491270 e!3640756)))

(assert (=> b!5951287 (= res!2491270 e!3640752)))

(declare-fun res!2491273 () Bool)

(assert (=> b!5951287 (=> (not res!2491273) (not e!3640752))))

(assert (=> b!5951287 (= res!2491273 lt!2313201)))

(declare-fun b!5951288 () Bool)

(assert (=> b!5951288 (= e!3640758 e!3640753)))

(declare-fun c!1059030 () Bool)

(assert (=> b!5951288 (= c!1059030 ((_ is EmptyLang!15993) (regOne!32498 r!7292)))))

(declare-fun bm!474028 () Bool)

(assert (=> bm!474028 (= call!474033 (isEmpty!36036 Nil!64156))))

(declare-fun b!5951289 () Bool)

(assert (=> b!5951289 (= e!3640757 (matchR!8176 (derivativeStep!4723 (regOne!32498 r!7292) (head!12525 Nil!64156)) (tail!11610 Nil!64156)))))

(declare-fun b!5951290 () Bool)

(assert (=> b!5951290 (= e!3640755 (not (= (head!12525 Nil!64156) (c!1058556 (regOne!32498 r!7292)))))))

(declare-fun b!5951291 () Bool)

(assert (=> b!5951291 (= e!3640758 (= lt!2313201 call!474033))))

(declare-fun b!5951292 () Bool)

(declare-fun res!2491271 () Bool)

(assert (=> b!5951292 (=> res!2491271 e!3640755)))

(assert (=> b!5951292 (= res!2491271 (not (isEmpty!36036 (tail!11610 Nil!64156))))))

(declare-fun b!5951293 () Bool)

(declare-fun res!2491272 () Bool)

(assert (=> b!5951293 (=> res!2491272 e!3640756)))

(assert (=> b!5951293 (= res!2491272 (not ((_ is ElementMatch!15993) (regOne!32498 r!7292))))))

(assert (=> b!5951293 (= e!3640753 e!3640756)))

(declare-fun b!5951294 () Bool)

(declare-fun res!2491274 () Bool)

(assert (=> b!5951294 (=> (not res!2491274) (not e!3640752))))

(assert (=> b!5951294 (= res!2491274 (isEmpty!36036 (tail!11610 Nil!64156)))))

(declare-fun b!5951295 () Bool)

(declare-fun res!2491275 () Bool)

(assert (=> b!5951295 (=> (not res!2491275) (not e!3640752))))

(assert (=> b!5951295 (= res!2491275 (not call!474033))))

(assert (= (and d!1865744 c!1059029) b!5951285))

(assert (= (and d!1865744 (not c!1059029)) b!5951289))

(assert (= (and d!1865744 c!1059028) b!5951291))

(assert (= (and d!1865744 (not c!1059028)) b!5951288))

(assert (= (and b!5951288 c!1059030) b!5951286))

(assert (= (and b!5951288 (not c!1059030)) b!5951293))

(assert (= (and b!5951293 (not res!2491272)) b!5951287))

(assert (= (and b!5951287 res!2491273) b!5951295))

(assert (= (and b!5951295 res!2491275) b!5951294))

(assert (= (and b!5951294 res!2491274) b!5951284))

(assert (= (and b!5951287 (not res!2491270)) b!5951282))

(assert (= (and b!5951282 res!2491277) b!5951283))

(assert (= (and b!5951283 (not res!2491276)) b!5951292))

(assert (= (and b!5951292 (not res!2491271)) b!5951290))

(assert (= (or b!5951291 b!5951283 b!5951295) bm!474028))

(declare-fun m!6839046 () Bool)

(assert (=> b!5951290 m!6839046))

(assert (=> b!5951289 m!6839046))

(assert (=> b!5951289 m!6839046))

(declare-fun m!6839048 () Bool)

(assert (=> b!5951289 m!6839048))

(declare-fun m!6839050 () Bool)

(assert (=> b!5951289 m!6839050))

(assert (=> b!5951289 m!6839048))

(assert (=> b!5951289 m!6839050))

(declare-fun m!6839052 () Bool)

(assert (=> b!5951289 m!6839052))

(declare-fun m!6839054 () Bool)

(assert (=> d!1865744 m!6839054))

(assert (=> d!1865744 m!6838262))

(assert (=> b!5951285 m!6837628))

(assert (=> bm!474028 m!6839054))

(assert (=> b!5951284 m!6839046))

(assert (=> b!5951292 m!6839050))

(assert (=> b!5951292 m!6839050))

(declare-fun m!6839056 () Bool)

(assert (=> b!5951292 m!6839056))

(assert (=> b!5951294 m!6839050))

(assert (=> b!5951294 m!6839050))

(assert (=> b!5951294 m!6839056))

(assert (=> d!1865364 d!1865744))

(declare-fun b!5951297 () Bool)

(declare-fun e!3640762 () Bool)

(declare-fun e!3640759 () Bool)

(assert (=> b!5951297 (= e!3640762 e!3640759)))

(declare-fun res!2491281 () Bool)

(assert (=> b!5951297 (= res!2491281 (not (nullable!5988 (reg!16322 (regOne!32498 r!7292)))))))

(assert (=> b!5951297 (=> (not res!2491281) (not e!3640759))))

(declare-fun call!474035 () Bool)

(declare-fun c!1059032 () Bool)

(declare-fun c!1059031 () Bool)

(declare-fun bm!474029 () Bool)

(assert (=> bm!474029 (= call!474035 (validRegex!7729 (ite c!1059031 (reg!16322 (regOne!32498 r!7292)) (ite c!1059032 (regTwo!32499 (regOne!32498 r!7292)) (regTwo!32498 (regOne!32498 r!7292))))))))

(declare-fun b!5951298 () Bool)

(declare-fun e!3640765 () Bool)

(assert (=> b!5951298 (= e!3640765 e!3640762)))

(assert (=> b!5951298 (= c!1059031 ((_ is Star!15993) (regOne!32498 r!7292)))))

(declare-fun bm!474030 () Bool)

(declare-fun call!474034 () Bool)

(assert (=> bm!474030 (= call!474034 (validRegex!7729 (ite c!1059032 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))))))

(declare-fun b!5951299 () Bool)

(declare-fun e!3640764 () Bool)

(declare-fun call!474036 () Bool)

(assert (=> b!5951299 (= e!3640764 call!474036)))

(declare-fun b!5951300 () Bool)

(declare-fun res!2491280 () Bool)

(assert (=> b!5951300 (=> (not res!2491280) (not e!3640764))))

(assert (=> b!5951300 (= res!2491280 call!474034)))

(declare-fun e!3640763 () Bool)

(assert (=> b!5951300 (= e!3640763 e!3640764)))

(declare-fun bm!474031 () Bool)

(assert (=> bm!474031 (= call!474036 call!474035)))

(declare-fun b!5951301 () Bool)

(declare-fun e!3640761 () Bool)

(declare-fun e!3640760 () Bool)

(assert (=> b!5951301 (= e!3640761 e!3640760)))

(declare-fun res!2491278 () Bool)

(assert (=> b!5951301 (=> (not res!2491278) (not e!3640760))))

(assert (=> b!5951301 (= res!2491278 call!474034)))

(declare-fun b!5951302 () Bool)

(assert (=> b!5951302 (= e!3640762 e!3640763)))

(assert (=> b!5951302 (= c!1059032 ((_ is Union!15993) (regOne!32498 r!7292)))))

(declare-fun b!5951303 () Bool)

(assert (=> b!5951303 (= e!3640760 call!474036)))

(declare-fun b!5951304 () Bool)

(assert (=> b!5951304 (= e!3640759 call!474035)))

(declare-fun b!5951296 () Bool)

(declare-fun res!2491279 () Bool)

(assert (=> b!5951296 (=> res!2491279 e!3640761)))

(assert (=> b!5951296 (= res!2491279 (not ((_ is Concat!24838) (regOne!32498 r!7292))))))

(assert (=> b!5951296 (= e!3640763 e!3640761)))

(declare-fun d!1865746 () Bool)

(declare-fun res!2491282 () Bool)

(assert (=> d!1865746 (=> res!2491282 e!3640765)))

(assert (=> d!1865746 (= res!2491282 ((_ is ElementMatch!15993) (regOne!32498 r!7292)))))

(assert (=> d!1865746 (= (validRegex!7729 (regOne!32498 r!7292)) e!3640765)))

(assert (= (and d!1865746 (not res!2491282)) b!5951298))

(assert (= (and b!5951298 c!1059031) b!5951297))

(assert (= (and b!5951298 (not c!1059031)) b!5951302))

(assert (= (and b!5951297 res!2491281) b!5951304))

(assert (= (and b!5951302 c!1059032) b!5951300))

(assert (= (and b!5951302 (not c!1059032)) b!5951296))

(assert (= (and b!5951300 res!2491280) b!5951299))

(assert (= (and b!5951296 (not res!2491279)) b!5951301))

(assert (= (and b!5951301 res!2491278) b!5951303))

(assert (= (or b!5951299 b!5951303) bm!474031))

(assert (= (or b!5951300 b!5951301) bm!474030))

(assert (= (or b!5951304 bm!474031) bm!474029))

(declare-fun m!6839058 () Bool)

(assert (=> b!5951297 m!6839058))

(declare-fun m!6839060 () Bool)

(assert (=> bm!474029 m!6839060))

(declare-fun m!6839062 () Bool)

(assert (=> bm!474030 m!6839062))

(assert (=> d!1865364 d!1865746))

(declare-fun c!1059033 () Bool)

(declare-fun d!1865748 () Bool)

(assert (=> d!1865748 (= c!1059033 (and ((_ is ElementMatch!15993) (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))) (= (c!1058556 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))) (h!70604 s!2326))))))

(declare-fun e!3640769 () (InoxSet Context!10754))

(assert (=> d!1865748 (= (derivationStepZipperDown!1243 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292))))) (ite (or c!1058774 c!1058772) lt!2312978 (Context!10755 call!473856)) (h!70604 s!2326)) e!3640769)))

(declare-fun b!5951305 () Bool)

(declare-fun e!3640771 () Bool)

(assert (=> b!5951305 (= e!3640771 (nullable!5988 (regOne!32498 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292))))))))))

(declare-fun bm!474032 () Bool)

(declare-fun call!474039 () List!64278)

(declare-fun call!474042 () List!64278)

(assert (=> bm!474032 (= call!474039 call!474042)))

(declare-fun c!1059036 () Bool)

(declare-fun bm!474033 () Bool)

(declare-fun call!474041 () (InoxSet Context!10754))

(declare-fun c!1059037 () Bool)

(declare-fun c!1059035 () Bool)

(assert (=> bm!474033 (= call!474041 (derivationStepZipperDown!1243 (ite c!1059037 (regTwo!32499 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))) (ite c!1059035 (regTwo!32498 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))) (ite c!1059036 (regOne!32498 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))) (reg!16322 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292))))))))) (ite (or c!1059037 c!1059035) (ite (or c!1058774 c!1058772) lt!2312978 (Context!10755 call!473856)) (Context!10755 call!474039)) (h!70604 s!2326)))))

(declare-fun b!5951306 () Bool)

(declare-fun e!3640768 () (InoxSet Context!10754))

(declare-fun call!474037 () (InoxSet Context!10754))

(assert (=> b!5951306 (= e!3640768 call!474037)))

(declare-fun b!5951307 () Bool)

(declare-fun e!3640766 () (InoxSet Context!10754))

(declare-fun call!474038 () (InoxSet Context!10754))

(declare-fun call!474040 () (InoxSet Context!10754))

(assert (=> b!5951307 (= e!3640766 ((_ map or) call!474038 call!474040))))

(declare-fun b!5951308 () Bool)

(assert (=> b!5951308 (= c!1059035 e!3640771)))

(declare-fun res!2491283 () Bool)

(assert (=> b!5951308 (=> (not res!2491283) (not e!3640771))))

(assert (=> b!5951308 (= res!2491283 ((_ is Concat!24838) (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))))))

(declare-fun e!3640767 () (InoxSet Context!10754))

(assert (=> b!5951308 (= e!3640767 e!3640766)))

(declare-fun b!5951309 () Bool)

(assert (=> b!5951309 (= e!3640767 ((_ map or) call!474038 call!474041))))

(declare-fun b!5951310 () Bool)

(assert (=> b!5951310 (= e!3640766 e!3640768)))

(assert (=> b!5951310 (= c!1059036 ((_ is Concat!24838) (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))))))

(declare-fun b!5951311 () Bool)

(declare-fun c!1059034 () Bool)

(assert (=> b!5951311 (= c!1059034 ((_ is Star!15993) (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))))))

(declare-fun e!3640770 () (InoxSet Context!10754))

(assert (=> b!5951311 (= e!3640768 e!3640770)))

(declare-fun bm!474034 () Bool)

(assert (=> bm!474034 (= call!474040 call!474041)))

(declare-fun bm!474035 () Bool)

(assert (=> bm!474035 (= call!474038 (derivationStepZipperDown!1243 (ite c!1059037 (regOne!32499 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))) (regOne!32498 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292))))))) (ite c!1059037 (ite (or c!1058774 c!1058772) lt!2312978 (Context!10755 call!473856)) (Context!10755 call!474042)) (h!70604 s!2326)))))

(declare-fun b!5951312 () Bool)

(assert (=> b!5951312 (= e!3640770 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951313 () Bool)

(assert (=> b!5951313 (= e!3640769 e!3640767)))

(assert (=> b!5951313 (= c!1059037 ((_ is Union!15993) (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))))))

(declare-fun bm!474036 () Bool)

(assert (=> bm!474036 (= call!474037 call!474040)))

(declare-fun b!5951314 () Bool)

(assert (=> b!5951314 (= e!3640769 (store ((as const (Array Context!10754 Bool)) false) (ite (or c!1058774 c!1058772) lt!2312978 (Context!10755 call!473856)) true))))

(declare-fun bm!474037 () Bool)

(assert (=> bm!474037 (= call!474042 ($colon$colon!1880 (exprs!5877 (ite (or c!1058774 c!1058772) lt!2312978 (Context!10755 call!473856))) (ite (or c!1059035 c!1059036) (regTwo!32498 (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292)))))) (ite c!1058774 (regTwo!32499 (regOne!32498 r!7292)) (ite c!1058772 (regTwo!32498 (regOne!32498 r!7292)) (ite c!1058773 (regOne!32498 (regOne!32498 r!7292)) (reg!16322 (regOne!32498 r!7292))))))))))

(declare-fun b!5951315 () Bool)

(assert (=> b!5951315 (= e!3640770 call!474037)))

(assert (= (and d!1865748 c!1059033) b!5951314))

(assert (= (and d!1865748 (not c!1059033)) b!5951313))

(assert (= (and b!5951313 c!1059037) b!5951309))

(assert (= (and b!5951313 (not c!1059037)) b!5951308))

(assert (= (and b!5951308 res!2491283) b!5951305))

(assert (= (and b!5951308 c!1059035) b!5951307))

(assert (= (and b!5951308 (not c!1059035)) b!5951310))

(assert (= (and b!5951310 c!1059036) b!5951306))

(assert (= (and b!5951310 (not c!1059036)) b!5951311))

(assert (= (and b!5951311 c!1059034) b!5951315))

(assert (= (and b!5951311 (not c!1059034)) b!5951312))

(assert (= (or b!5951306 b!5951315) bm!474032))

(assert (= (or b!5951306 b!5951315) bm!474036))

(assert (= (or b!5951307 bm!474032) bm!474037))

(assert (= (or b!5951307 bm!474036) bm!474034))

(assert (= (or b!5951309 bm!474034) bm!474033))

(assert (= (or b!5951309 b!5951307) bm!474035))

(declare-fun m!6839064 () Bool)

(assert (=> bm!474033 m!6839064))

(declare-fun m!6839066 () Bool)

(assert (=> b!5951305 m!6839066))

(declare-fun m!6839068 () Bool)

(assert (=> b!5951314 m!6839068))

(declare-fun m!6839070 () Bool)

(assert (=> bm!474037 m!6839070))

(declare-fun m!6839072 () Bool)

(assert (=> bm!474035 m!6839072))

(assert (=> bm!473850 d!1865748))

(assert (=> b!5950467 d!1865258))

(declare-fun bs!1409535 () Bool)

(declare-fun d!1865750 () Bool)

(assert (= bs!1409535 (and d!1865750 b!5949941)))

(declare-fun lambda!324778 () Int)

(assert (=> bs!1409535 (not (= lambda!324778 lambda!324633))))

(declare-fun bs!1409536 () Bool)

(assert (= bs!1409536 (and d!1865750 d!1865262)))

(assert (=> bs!1409536 (= lambda!324778 lambda!324663)))

(declare-fun bs!1409537 () Bool)

(assert (= bs!1409537 (and d!1865750 b!5949946)))

(assert (=> bs!1409537 (not (= lambda!324778 lambda!324635))))

(declare-fun bs!1409538 () Bool)

(assert (= bs!1409538 (and d!1865750 d!1865354)))

(assert (=> bs!1409538 (= lambda!324778 lambda!324704)))

(declare-fun bs!1409539 () Bool)

(assert (= bs!1409539 (and d!1865750 d!1865258)))

(assert (=> bs!1409539 (= lambda!324778 lambda!324662)))

(declare-fun bs!1409540 () Bool)

(assert (= bs!1409540 (and d!1865750 d!1865252)))

(assert (=> bs!1409540 (= lambda!324778 lambda!324657)))

(declare-fun bs!1409541 () Bool)

(assert (= bs!1409541 (and d!1865750 d!1865584)))

(assert (=> bs!1409541 (= lambda!324778 lambda!324747)))

(declare-fun bs!1409542 () Bool)

(assert (= bs!1409542 (and d!1865750 d!1865598)))

(assert (=> bs!1409542 (= lambda!324778 lambda!324752)))

(declare-fun bs!1409543 () Bool)

(assert (= bs!1409543 (and d!1865750 d!1865552)))

(assert (=> bs!1409543 (= lambda!324778 lambda!324744)))

(declare-fun bs!1409544 () Bool)

(assert (= bs!1409544 (and d!1865750 d!1865362)))

(assert (=> bs!1409544 (= lambda!324778 lambda!324707)))

(declare-fun bs!1409545 () Bool)

(assert (= bs!1409545 (and d!1865750 b!5949944)))

(assert (=> bs!1409545 (not (= lambda!324778 lambda!324634))))

(declare-fun bs!1409546 () Bool)

(assert (= bs!1409546 (and d!1865750 d!1865316)))

(assert (=> bs!1409546 (= lambda!324778 lambda!324700)))

(declare-fun bs!1409547 () Bool)

(assert (= bs!1409547 (and d!1865750 b!5949939)))

(assert (=> bs!1409547 (not (= lambda!324778 lambda!324632))))

(declare-fun lt!2313202 () List!64278)

(assert (=> d!1865750 (forall!15076 lt!2313202 lambda!324778)))

(declare-fun e!3640774 () List!64278)

(assert (=> d!1865750 (= lt!2313202 e!3640774)))

(declare-fun c!1059038 () Bool)

(assert (=> d!1865750 (= c!1059038 ((_ is Cons!64155) (t!377688 zl!343)))))

(assert (=> d!1865750 (= (unfocusZipperList!1414 (t!377688 zl!343)) lt!2313202)))

(declare-fun b!5951320 () Bool)

(assert (=> b!5951320 (= e!3640774 (Cons!64154 (generalisedConcat!1590 (exprs!5877 (h!70603 (t!377688 zl!343)))) (unfocusZipperList!1414 (t!377688 (t!377688 zl!343)))))))

(declare-fun b!5951321 () Bool)

(assert (=> b!5951321 (= e!3640774 Nil!64154)))

(assert (= (and d!1865750 c!1059038) b!5951320))

(assert (= (and d!1865750 (not c!1059038)) b!5951321))

(declare-fun m!6839074 () Bool)

(assert (=> d!1865750 m!6839074))

(declare-fun m!6839076 () Bool)

(assert (=> b!5951320 m!6839076))

(declare-fun m!6839078 () Bool)

(assert (=> b!5951320 m!6839078))

(assert (=> b!5950467 d!1865750))

(declare-fun d!1865752 () Bool)

(declare-fun res!2491288 () Bool)

(declare-fun e!3640775 () Bool)

(assert (=> d!1865752 (=> res!2491288 e!3640775)))

(assert (=> d!1865752 (= res!2491288 ((_ is Nil!64154) lt!2313141))))

(assert (=> d!1865752 (= (forall!15076 lt!2313141 lambda!324707) e!3640775)))

(declare-fun b!5951322 () Bool)

(declare-fun e!3640776 () Bool)

(assert (=> b!5951322 (= e!3640775 e!3640776)))

(declare-fun res!2491289 () Bool)

(assert (=> b!5951322 (=> (not res!2491289) (not e!3640776))))

(assert (=> b!5951322 (= res!2491289 (dynLambda!25100 lambda!324707 (h!70602 lt!2313141)))))

(declare-fun b!5951323 () Bool)

(assert (=> b!5951323 (= e!3640776 (forall!15076 (t!377687 lt!2313141) lambda!324707))))

(assert (= (and d!1865752 (not res!2491288)) b!5951322))

(assert (= (and b!5951322 res!2491289) b!5951323))

(declare-fun b_lambda!223639 () Bool)

(assert (=> (not b_lambda!223639) (not b!5951322)))

(declare-fun m!6839080 () Bool)

(assert (=> b!5951322 m!6839080))

(declare-fun m!6839082 () Bool)

(assert (=> b!5951323 m!6839082))

(assert (=> d!1865362 d!1865752))

(assert (=> d!1865366 d!1865364))

(assert (=> d!1865366 d!1865746))

(assert (=> d!1865366 d!1865370))

(declare-fun d!1865754 () Bool)

(assert (=> d!1865754 (= (Exists!3063 lambda!324710) (choose!44842 lambda!324710))))

(declare-fun bs!1409548 () Bool)

(assert (= bs!1409548 d!1865754))

(declare-fun m!6839084 () Bool)

(assert (=> bs!1409548 m!6839084))

(assert (=> d!1865366 d!1865754))

(declare-fun bs!1409583 () Bool)

(declare-fun d!1865756 () Bool)

(assert (= bs!1409583 (and d!1865756 d!1865366)))

(declare-fun lambda!324783 () Int)

(assert (=> bs!1409583 (= lambda!324783 lambda!324710)))

(declare-fun bs!1409586 () Bool)

(assert (= bs!1409586 (and d!1865756 b!5951039)))

(assert (=> bs!1409586 (not (= lambda!324783 lambda!324753))))

(declare-fun bs!1409589 () Bool)

(assert (= bs!1409589 (and d!1865756 b!5949708)))

(assert (=> bs!1409589 (not (= lambda!324783 lambda!324607))))

(assert (=> bs!1409589 (= lambda!324783 lambda!324606)))

(declare-fun bs!1409593 () Bool)

(assert (= bs!1409593 (and d!1865756 b!5950188)))

(assert (=> bs!1409593 (not (= lambda!324783 lambda!324673))))

(declare-fun bs!1409596 () Bool)

(assert (= bs!1409596 (and d!1865756 d!1865368)))

(assert (=> bs!1409596 (= lambda!324783 lambda!324715)))

(declare-fun bs!1409599 () Bool)

(assert (= bs!1409599 (and d!1865756 b!5951040)))

(assert (=> bs!1409599 (not (= lambda!324783 lambda!324757))))

(declare-fun bs!1409602 () Bool)

(assert (= bs!1409602 (and d!1865756 b!5950187)))

(assert (=> bs!1409602 (not (= lambda!324783 lambda!324672))))

(assert (=> bs!1409596 (not (= lambda!324783 lambda!324716))))

(assert (=> d!1865756 true))

(assert (=> d!1865756 true))

(assert (=> d!1865756 true))

(assert (=> d!1865756 (= (isDefined!12587 (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) Nil!64156 s!2326 s!2326)) (Exists!3063 lambda!324783))))

(assert (=> d!1865756 true))

(declare-fun _$89!2020 () Unit!157257)

(assert (=> d!1865756 (= (choose!44840 (regOne!32498 r!7292) (regTwo!32498 r!7292) s!2326) _$89!2020)))

(declare-fun bs!1409609 () Bool)

(assert (= bs!1409609 d!1865756))

(assert (=> bs!1409609 m!6837600))

(assert (=> bs!1409609 m!6837600))

(assert (=> bs!1409609 m!6837602))

(declare-fun m!6839106 () Bool)

(assert (=> bs!1409609 m!6839106))

(assert (=> d!1865366 d!1865756))

(declare-fun bm!474065 () Bool)

(declare-fun call!474071 () Int)

(declare-fun call!474070 () Int)

(assert (=> bm!474065 (= call!474071 call!474070)))

(declare-fun b!5951402 () Bool)

(declare-fun e!3640826 () Bool)

(declare-fun lt!2313216 () Int)

(declare-fun call!474074 () Int)

(assert (=> b!5951402 (= e!3640826 (> lt!2313216 call!474074))))

(declare-fun d!1865768 () Bool)

(declare-fun e!3640834 () Bool)

(assert (=> d!1865768 e!3640834))

(declare-fun res!2491310 () Bool)

(assert (=> d!1865768 (=> (not res!2491310) (not e!3640834))))

(assert (=> d!1865768 (= res!2491310 (> lt!2313216 0))))

(declare-fun e!3640829 () Int)

(assert (=> d!1865768 (= lt!2313216 e!3640829)))

(declare-fun c!1059071 () Bool)

(assert (=> d!1865768 (= c!1059071 ((_ is ElementMatch!15993) (h!70602 (exprs!5877 lt!2312982))))))

(assert (=> d!1865768 (= (regexDepth!249 (h!70602 (exprs!5877 lt!2312982))) lt!2313216)))

(declare-fun b!5951404 () Bool)

(declare-fun e!3640827 () Bool)

(declare-fun e!3640825 () Bool)

(assert (=> b!5951404 (= e!3640827 e!3640825)))

(declare-fun c!1059072 () Bool)

(assert (=> b!5951404 (= c!1059072 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun call!474075 () Int)

(declare-fun call!474076 () Int)

(declare-fun bm!474066 () Bool)

(declare-fun c!1059069 () Bool)

(assert (=> bm!474066 (= call!474075 (maxBigInt!0 (ite c!1059069 call!474076 call!474071) (ite c!1059069 call!474071 call!474076)))))

(declare-fun b!5951407 () Bool)

(declare-fun e!3640832 () Bool)

(declare-fun call!474072 () Int)

(assert (=> b!5951407 (= e!3640832 (> lt!2313216 call!474072))))

(declare-fun bm!474067 () Bool)

(declare-fun call!474073 () Int)

(assert (=> bm!474067 (= call!474074 call!474073)))

(declare-fun b!5951408 () Bool)

(declare-fun e!3640828 () Int)

(assert (=> b!5951408 (= e!3640828 (+ 1 call!474075))))

(declare-fun b!5951409 () Bool)

(declare-fun e!3640824 () Bool)

(assert (=> b!5951409 (= e!3640827 e!3640824)))

(declare-fun res!2491311 () Bool)

(assert (=> b!5951409 (= res!2491311 (> lt!2313216 call!474072))))

(assert (=> b!5951409 (=> (not res!2491311) (not e!3640824))))

(declare-fun b!5951410 () Bool)

(declare-fun e!3640830 () Int)

(assert (=> b!5951410 (= e!3640829 e!3640830)))

(declare-fun c!1059075 () Bool)

(assert (=> b!5951410 (= c!1059075 ((_ is Star!15993) (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun b!5951411 () Bool)

(assert (=> b!5951411 (= c!1059069 ((_ is Union!15993) (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun e!3640835 () Int)

(assert (=> b!5951411 (= e!3640830 e!3640835)))

(declare-fun b!5951412 () Bool)

(assert (=> b!5951412 (= e!3640830 (+ 1 call!474070))))

(declare-fun b!5951413 () Bool)

(declare-fun c!1059068 () Bool)

(assert (=> b!5951413 (= c!1059068 ((_ is Star!15993) (h!70602 (exprs!5877 lt!2312982))))))

(assert (=> b!5951413 (= e!3640825 e!3640826)))

(declare-fun b!5951414 () Bool)

(assert (=> b!5951414 (= e!3640826 (= lt!2313216 1))))

(declare-fun b!5951415 () Bool)

(assert (=> b!5951415 (= e!3640829 1)))

(declare-fun bm!474068 () Bool)

(declare-fun c!1059073 () Bool)

(assert (=> bm!474068 (= call!474073 (regexDepth!249 (ite c!1059073 (regTwo!32499 (h!70602 (exprs!5877 lt!2312982))) (ite c!1059072 (regOne!32498 (h!70602 (exprs!5877 lt!2312982))) (reg!16322 (h!70602 (exprs!5877 lt!2312982)))))))))

(declare-fun b!5951416 () Bool)

(assert (=> b!5951416 (= e!3640828 1)))

(declare-fun b!5951417 () Bool)

(assert (=> b!5951417 (= e!3640835 e!3640828)))

(declare-fun c!1059070 () Bool)

(assert (=> b!5951417 (= c!1059070 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun b!5951418 () Bool)

(assert (=> b!5951418 (= e!3640824 (> lt!2313216 call!474073))))

(declare-fun bm!474069 () Bool)

(assert (=> bm!474069 (= call!474070 (regexDepth!249 (ite c!1059075 (reg!16322 (h!70602 (exprs!5877 lt!2312982))) (ite c!1059069 (regTwo!32499 (h!70602 (exprs!5877 lt!2312982))) (regOne!32498 (h!70602 (exprs!5877 lt!2312982)))))))))

(declare-fun b!5951419 () Bool)

(assert (=> b!5951419 (= e!3640834 e!3640827)))

(assert (=> b!5951419 (= c!1059073 ((_ is Union!15993) (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun b!5951420 () Bool)

(assert (=> b!5951420 (= e!3640835 (+ 1 call!474075))))

(declare-fun bm!474070 () Bool)

(assert (=> bm!474070 (= call!474072 (regexDepth!249 (ite c!1059073 (regOne!32499 (h!70602 (exprs!5877 lt!2312982))) (regTwo!32498 (h!70602 (exprs!5877 lt!2312982))))))))

(declare-fun bm!474071 () Bool)

(assert (=> bm!474071 (= call!474076 (regexDepth!249 (ite c!1059069 (regOne!32499 (h!70602 (exprs!5877 lt!2312982))) (regTwo!32498 (h!70602 (exprs!5877 lt!2312982))))))))

(declare-fun b!5951421 () Bool)

(declare-fun res!2491312 () Bool)

(assert (=> b!5951421 (=> (not res!2491312) (not e!3640832))))

(assert (=> b!5951421 (= res!2491312 (> lt!2313216 call!474074))))

(assert (=> b!5951421 (= e!3640825 e!3640832)))

(assert (= (and d!1865768 c!1059071) b!5951415))

(assert (= (and d!1865768 (not c!1059071)) b!5951410))

(assert (= (and b!5951410 c!1059075) b!5951412))

(assert (= (and b!5951410 (not c!1059075)) b!5951411))

(assert (= (and b!5951411 c!1059069) b!5951420))

(assert (= (and b!5951411 (not c!1059069)) b!5951417))

(assert (= (and b!5951417 c!1059070) b!5951408))

(assert (= (and b!5951417 (not c!1059070)) b!5951416))

(assert (= (or b!5951420 b!5951408) bm!474065))

(assert (= (or b!5951420 b!5951408) bm!474071))

(assert (= (or b!5951420 b!5951408) bm!474066))

(assert (= (or b!5951412 bm!474065) bm!474069))

(assert (= (and d!1865768 res!2491310) b!5951419))

(assert (= (and b!5951419 c!1059073) b!5951409))

(assert (= (and b!5951419 (not c!1059073)) b!5951404))

(assert (= (and b!5951409 res!2491311) b!5951418))

(assert (= (and b!5951404 c!1059072) b!5951421))

(assert (= (and b!5951404 (not c!1059072)) b!5951413))

(assert (= (and b!5951421 res!2491312) b!5951407))

(assert (= (and b!5951413 c!1059068) b!5951402))

(assert (= (and b!5951413 (not c!1059068)) b!5951414))

(assert (= (or b!5951421 b!5951402) bm!474067))

(assert (= (or b!5951418 bm!474067) bm!474068))

(assert (= (or b!5951409 b!5951407) bm!474070))

(declare-fun m!6839160 () Bool)

(assert (=> bm!474071 m!6839160))

(declare-fun m!6839162 () Bool)

(assert (=> bm!474070 m!6839162))

(declare-fun m!6839164 () Bool)

(assert (=> bm!474066 m!6839164))

(declare-fun m!6839166 () Bool)

(assert (=> bm!474069 m!6839166))

(declare-fun m!6839168 () Bool)

(assert (=> bm!474068 m!6839168))

(assert (=> b!5949944 d!1865768))

(declare-fun d!1865788 () Bool)

(assert (=> d!1865788 (= (maxBigInt!0 (regexDepth!249 (h!70602 (exprs!5877 lt!2312982))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))) (ite (>= (regexDepth!249 (h!70602 (exprs!5877 lt!2312982))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))) (regexDepth!249 (h!70602 (exprs!5877 lt!2312982))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))))))

(assert (=> b!5949944 d!1865788))

(declare-fun bs!1409735 () Bool)

(declare-fun d!1865790 () Bool)

(assert (= bs!1409735 (and d!1865790 b!5949941)))

(declare-fun lambda!324795 () Int)

(assert (=> bs!1409735 (= (= lt!2313041 lt!2313039) (= lambda!324795 lambda!324633))))

(declare-fun bs!1409737 () Bool)

(assert (= bs!1409737 (and d!1865790 d!1865262)))

(assert (=> bs!1409737 (not (= lambda!324795 lambda!324663))))

(declare-fun bs!1409740 () Bool)

(assert (= bs!1409740 (and d!1865790 b!5949946)))

(assert (=> bs!1409740 (= (= lt!2313041 lt!2313043) (= lambda!324795 lambda!324635))))

(declare-fun bs!1409742 () Bool)

(assert (= bs!1409742 (and d!1865790 d!1865354)))

(assert (=> bs!1409742 (not (= lambda!324795 lambda!324704))))

(declare-fun bs!1409744 () Bool)

(assert (= bs!1409744 (and d!1865790 d!1865258)))

(assert (=> bs!1409744 (not (= lambda!324795 lambda!324662))))

(declare-fun bs!1409746 () Bool)

(assert (= bs!1409746 (and d!1865790 d!1865750)))

(assert (=> bs!1409746 (not (= lambda!324795 lambda!324778))))

(declare-fun bs!1409748 () Bool)

(assert (= bs!1409748 (and d!1865790 d!1865252)))

(assert (=> bs!1409748 (not (= lambda!324795 lambda!324657))))

(declare-fun bs!1409750 () Bool)

(assert (= bs!1409750 (and d!1865790 d!1865584)))

(assert (=> bs!1409750 (not (= lambda!324795 lambda!324747))))

(declare-fun bs!1409752 () Bool)

(assert (= bs!1409752 (and d!1865790 d!1865598)))

(assert (=> bs!1409752 (not (= lambda!324795 lambda!324752))))

(declare-fun bs!1409754 () Bool)

(assert (= bs!1409754 (and d!1865790 d!1865552)))

(assert (=> bs!1409754 (not (= lambda!324795 lambda!324744))))

(declare-fun bs!1409756 () Bool)

(assert (= bs!1409756 (and d!1865790 d!1865362)))

(assert (=> bs!1409756 (not (= lambda!324795 lambda!324707))))

(declare-fun bs!1409758 () Bool)

(assert (= bs!1409758 (and d!1865790 b!5949944)))

(assert (=> bs!1409758 (= lambda!324795 lambda!324634)))

(declare-fun bs!1409760 () Bool)

(assert (= bs!1409760 (and d!1865790 d!1865316)))

(assert (=> bs!1409760 (not (= lambda!324795 lambda!324700))))

(declare-fun bs!1409763 () Bool)

(assert (= bs!1409763 (and d!1865790 b!5949939)))

(assert (=> bs!1409763 (= (= lt!2313041 lt!2313037) (= lambda!324795 lambda!324632))))

(assert (=> d!1865790 true))

(assert (=> d!1865790 (forall!15076 (t!377687 (exprs!5877 lt!2312982)) lambda!324795)))

(declare-fun lt!2313223 () Unit!157257)

(declare-fun choose!44845 (List!64278 Int Int) Unit!157257)

(assert (=> d!1865790 (= lt!2313223 (choose!44845 (t!377687 (exprs!5877 lt!2312982)) lt!2313041 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))))))

(assert (=> d!1865790 (>= lt!2313041 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))))))

(assert (=> d!1865790 (= (lemmaForallRegexDepthBiggerThanTransitive!41 (t!377687 (exprs!5877 lt!2312982)) lt!2313041 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))) lt!2313223)))

(declare-fun bs!1409766 () Bool)

(assert (= bs!1409766 d!1865790))

(declare-fun m!6839186 () Bool)

(assert (=> bs!1409766 m!6839186))

(assert (=> bs!1409766 m!6837822))

(declare-fun m!6839188 () Bool)

(assert (=> bs!1409766 m!6839188))

(assert (=> b!5949944 d!1865790))

(declare-fun bs!1409767 () Bool)

(declare-fun b!5951425 () Bool)

(assert (= bs!1409767 (and b!5951425 d!1865262)))

(declare-fun lambda!324797 () Int)

(assert (=> bs!1409767 (not (= lambda!324797 lambda!324663))))

(declare-fun bs!1409768 () Bool)

(assert (= bs!1409768 (and b!5951425 b!5949946)))

(declare-fun lt!2313224 () Int)

(assert (=> bs!1409768 (= (= lt!2313224 lt!2313043) (= lambda!324797 lambda!324635))))

(declare-fun bs!1409769 () Bool)

(assert (= bs!1409769 (and b!5951425 d!1865354)))

(assert (=> bs!1409769 (not (= lambda!324797 lambda!324704))))

(declare-fun bs!1409770 () Bool)

(assert (= bs!1409770 (and b!5951425 d!1865258)))

(assert (=> bs!1409770 (not (= lambda!324797 lambda!324662))))

(declare-fun bs!1409771 () Bool)

(assert (= bs!1409771 (and b!5951425 d!1865750)))

(assert (=> bs!1409771 (not (= lambda!324797 lambda!324778))))

(declare-fun bs!1409772 () Bool)

(assert (= bs!1409772 (and b!5951425 d!1865252)))

(assert (=> bs!1409772 (not (= lambda!324797 lambda!324657))))

(declare-fun bs!1409773 () Bool)

(assert (= bs!1409773 (and b!5951425 d!1865584)))

(assert (=> bs!1409773 (not (= lambda!324797 lambda!324747))))

(declare-fun bs!1409774 () Bool)

(assert (= bs!1409774 (and b!5951425 d!1865598)))

(assert (=> bs!1409774 (not (= lambda!324797 lambda!324752))))

(declare-fun bs!1409775 () Bool)

(assert (= bs!1409775 (and b!5951425 d!1865552)))

(assert (=> bs!1409775 (not (= lambda!324797 lambda!324744))))

(declare-fun bs!1409776 () Bool)

(assert (= bs!1409776 (and b!5951425 d!1865362)))

(assert (=> bs!1409776 (not (= lambda!324797 lambda!324707))))

(declare-fun bs!1409777 () Bool)

(assert (= bs!1409777 (and b!5951425 b!5949944)))

(assert (=> bs!1409777 (= (= lt!2313224 lt!2313041) (= lambda!324797 lambda!324634))))

(declare-fun bs!1409778 () Bool)

(assert (= bs!1409778 (and b!5951425 b!5949941)))

(assert (=> bs!1409778 (= (= lt!2313224 lt!2313039) (= lambda!324797 lambda!324633))))

(declare-fun bs!1409779 () Bool)

(assert (= bs!1409779 (and b!5951425 d!1865790)))

(assert (=> bs!1409779 (= (= lt!2313224 lt!2313041) (= lambda!324797 lambda!324795))))

(declare-fun bs!1409780 () Bool)

(assert (= bs!1409780 (and b!5951425 d!1865316)))

(assert (=> bs!1409780 (not (= lambda!324797 lambda!324700))))

(declare-fun bs!1409781 () Bool)

(assert (= bs!1409781 (and b!5951425 b!5949939)))

(assert (=> bs!1409781 (= (= lt!2313224 lt!2313037) (= lambda!324797 lambda!324632))))

(assert (=> b!5951425 true))

(declare-fun bs!1409782 () Bool)

(declare-fun b!5951427 () Bool)

(assert (= bs!1409782 (and b!5951427 d!1865262)))

(declare-fun lambda!324798 () Int)

(assert (=> bs!1409782 (not (= lambda!324798 lambda!324663))))

(declare-fun bs!1409783 () Bool)

(assert (= bs!1409783 (and b!5951427 b!5949946)))

(declare-fun lt!2313226 () Int)

(assert (=> bs!1409783 (= (= lt!2313226 lt!2313043) (= lambda!324798 lambda!324635))))

(declare-fun bs!1409785 () Bool)

(assert (= bs!1409785 (and b!5951427 d!1865354)))

(assert (=> bs!1409785 (not (= lambda!324798 lambda!324704))))

(declare-fun bs!1409786 () Bool)

(assert (= bs!1409786 (and b!5951427 d!1865258)))

(assert (=> bs!1409786 (not (= lambda!324798 lambda!324662))))

(declare-fun bs!1409787 () Bool)

(assert (= bs!1409787 (and b!5951427 d!1865750)))

(assert (=> bs!1409787 (not (= lambda!324798 lambda!324778))))

(declare-fun bs!1409788 () Bool)

(assert (= bs!1409788 (and b!5951427 d!1865252)))

(assert (=> bs!1409788 (not (= lambda!324798 lambda!324657))))

(declare-fun bs!1409789 () Bool)

(assert (= bs!1409789 (and b!5951427 d!1865584)))

(assert (=> bs!1409789 (not (= lambda!324798 lambda!324747))))

(declare-fun bs!1409790 () Bool)

(assert (= bs!1409790 (and b!5951427 d!1865598)))

(assert (=> bs!1409790 (not (= lambda!324798 lambda!324752))))

(declare-fun bs!1409791 () Bool)

(assert (= bs!1409791 (and b!5951427 b!5951425)))

(assert (=> bs!1409791 (= (= lt!2313226 lt!2313224) (= lambda!324798 lambda!324797))))

(declare-fun bs!1409792 () Bool)

(assert (= bs!1409792 (and b!5951427 d!1865552)))

(assert (=> bs!1409792 (not (= lambda!324798 lambda!324744))))

(declare-fun bs!1409793 () Bool)

(assert (= bs!1409793 (and b!5951427 d!1865362)))

(assert (=> bs!1409793 (not (= lambda!324798 lambda!324707))))

(declare-fun bs!1409794 () Bool)

(assert (= bs!1409794 (and b!5951427 b!5949944)))

(assert (=> bs!1409794 (= (= lt!2313226 lt!2313041) (= lambda!324798 lambda!324634))))

(declare-fun bs!1409795 () Bool)

(assert (= bs!1409795 (and b!5951427 b!5949941)))

(assert (=> bs!1409795 (= (= lt!2313226 lt!2313039) (= lambda!324798 lambda!324633))))

(declare-fun bs!1409796 () Bool)

(assert (= bs!1409796 (and b!5951427 d!1865790)))

(assert (=> bs!1409796 (= (= lt!2313226 lt!2313041) (= lambda!324798 lambda!324795))))

(declare-fun bs!1409797 () Bool)

(assert (= bs!1409797 (and b!5951427 d!1865316)))

(assert (=> bs!1409797 (not (= lambda!324798 lambda!324700))))

(declare-fun bs!1409798 () Bool)

(assert (= bs!1409798 (and b!5951427 b!5949939)))

(assert (=> bs!1409798 (= (= lt!2313226 lt!2313037) (= lambda!324798 lambda!324632))))

(assert (=> b!5951427 true))

(declare-fun d!1865800 () Bool)

(declare-fun e!3640838 () Bool)

(assert (=> d!1865800 e!3640838))

(declare-fun res!2491315 () Bool)

(assert (=> d!1865800 (=> (not res!2491315) (not e!3640838))))

(assert (=> d!1865800 (= res!2491315 (>= lt!2313226 0))))

(declare-fun e!3640837 () Int)

(assert (=> d!1865800 (= lt!2313226 e!3640837)))

(declare-fun c!1059076 () Bool)

(assert (=> d!1865800 (= c!1059076 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))))))

(assert (=> d!1865800 (= (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))) lt!2313226)))

(assert (=> b!5951425 (= e!3640837 lt!2313224)))

(assert (=> b!5951425 (= lt!2313224 (maxBigInt!0 (regexDepth!249 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))))))))))

(declare-fun lt!2313227 () Unit!157257)

(assert (=> b!5951425 (= lt!2313227 (lemmaForallRegexDepthBiggerThanTransitive!41 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))) lt!2313224 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))))))))))

(assert (=> b!5951425 (forall!15076 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))) lambda!324797)))

(declare-fun lt!2313225 () Unit!157257)

(assert (=> b!5951425 (= lt!2313225 lt!2313227)))

(declare-fun b!5951426 () Bool)

(assert (=> b!5951426 (= e!3640837 0)))

(assert (=> b!5951427 (= e!3640838 (forall!15076 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))) lambda!324798))))

(assert (= (and d!1865800 c!1059076) b!5951425))

(assert (= (and d!1865800 (not c!1059076)) b!5951426))

(assert (= (and d!1865800 res!2491315) b!5951427))

(declare-fun m!6839230 () Bool)

(assert (=> b!5951425 m!6839230))

(declare-fun m!6839232 () Bool)

(assert (=> b!5951425 m!6839232))

(assert (=> b!5951425 m!6839230))

(declare-fun m!6839234 () Bool)

(assert (=> b!5951425 m!6839234))

(assert (=> b!5951425 m!6839232))

(declare-fun m!6839236 () Bool)

(assert (=> b!5951425 m!6839236))

(assert (=> b!5951425 m!6839230))

(declare-fun m!6839238 () Bool)

(assert (=> b!5951425 m!6839238))

(declare-fun m!6839240 () Bool)

(assert (=> b!5951427 m!6839240))

(assert (=> b!5949944 d!1865800))

(declare-fun d!1865810 () Bool)

(declare-fun res!2491321 () Bool)

(declare-fun e!3640849 () Bool)

(assert (=> d!1865810 (=> res!2491321 e!3640849)))

(assert (=> d!1865810 (= res!2491321 ((_ is Nil!64154) (t!377687 (exprs!5877 lt!2312982))))))

(assert (=> d!1865810 (= (forall!15076 (t!377687 (exprs!5877 lt!2312982)) lambda!324634) e!3640849)))

(declare-fun b!5951447 () Bool)

(declare-fun e!3640850 () Bool)

(assert (=> b!5951447 (= e!3640849 e!3640850)))

(declare-fun res!2491322 () Bool)

(assert (=> b!5951447 (=> (not res!2491322) (not e!3640850))))

(assert (=> b!5951447 (= res!2491322 (dynLambda!25100 lambda!324634 (h!70602 (t!377687 (exprs!5877 lt!2312982)))))))

(declare-fun b!5951448 () Bool)

(assert (=> b!5951448 (= e!3640850 (forall!15076 (t!377687 (t!377687 (exprs!5877 lt!2312982))) lambda!324634))))

(assert (= (and d!1865810 (not res!2491321)) b!5951447))

(assert (= (and b!5951447 res!2491322) b!5951448))

(declare-fun b_lambda!223645 () Bool)

(assert (=> (not b_lambda!223645) (not b!5951447)))

(declare-fun m!6839242 () Bool)

(assert (=> b!5951447 m!6839242))

(declare-fun m!6839244 () Bool)

(assert (=> b!5951448 m!6839244))

(assert (=> b!5949944 d!1865810))

(declare-fun d!1865812 () Bool)

(declare-fun c!1059084 () Bool)

(assert (=> d!1865812 (= c!1059084 (and ((_ is ElementMatch!15993) (h!70602 (exprs!5877 (h!70603 zl!343)))) (= (c!1058556 (h!70602 (exprs!5877 (h!70603 zl!343)))) (h!70604 s!2326))))))

(declare-fun e!3640854 () (InoxSet Context!10754))

(assert (=> d!1865812 (= (derivationStepZipperDown!1243 (h!70602 (exprs!5877 (h!70603 zl!343))) (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))) (h!70604 s!2326)) e!3640854)))

(declare-fun b!5951449 () Bool)

(declare-fun e!3640856 () Bool)

(assert (=> b!5951449 (= e!3640856 (nullable!5988 (regOne!32498 (h!70602 (exprs!5877 (h!70603 zl!343))))))))

(declare-fun bm!474078 () Bool)

(declare-fun call!474085 () List!64278)

(declare-fun call!474088 () List!64278)

(assert (=> bm!474078 (= call!474085 call!474088)))

(declare-fun bm!474079 () Bool)

(declare-fun c!1059086 () Bool)

(declare-fun call!474087 () (InoxSet Context!10754))

(declare-fun c!1059087 () Bool)

(declare-fun c!1059088 () Bool)

(assert (=> bm!474079 (= call!474087 (derivationStepZipperDown!1243 (ite c!1059088 (regTwo!32499 (h!70602 (exprs!5877 (h!70603 zl!343)))) (ite c!1059086 (regTwo!32498 (h!70602 (exprs!5877 (h!70603 zl!343)))) (ite c!1059087 (regOne!32498 (h!70602 (exprs!5877 (h!70603 zl!343)))) (reg!16322 (h!70602 (exprs!5877 (h!70603 zl!343))))))) (ite (or c!1059088 c!1059086) (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))) (Context!10755 call!474085)) (h!70604 s!2326)))))

(declare-fun b!5951450 () Bool)

(declare-fun e!3640853 () (InoxSet Context!10754))

(declare-fun call!474083 () (InoxSet Context!10754))

(assert (=> b!5951450 (= e!3640853 call!474083)))

(declare-fun b!5951451 () Bool)

(declare-fun e!3640851 () (InoxSet Context!10754))

(declare-fun call!474084 () (InoxSet Context!10754))

(declare-fun call!474086 () (InoxSet Context!10754))

(assert (=> b!5951451 (= e!3640851 ((_ map or) call!474084 call!474086))))

(declare-fun b!5951452 () Bool)

(assert (=> b!5951452 (= c!1059086 e!3640856)))

(declare-fun res!2491323 () Bool)

(assert (=> b!5951452 (=> (not res!2491323) (not e!3640856))))

(assert (=> b!5951452 (= res!2491323 ((_ is Concat!24838) (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun e!3640852 () (InoxSet Context!10754))

(assert (=> b!5951452 (= e!3640852 e!3640851)))

(declare-fun b!5951453 () Bool)

(assert (=> b!5951453 (= e!3640852 ((_ map or) call!474084 call!474087))))

(declare-fun b!5951454 () Bool)

(assert (=> b!5951454 (= e!3640851 e!3640853)))

(assert (=> b!5951454 (= c!1059087 ((_ is Concat!24838) (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun b!5951455 () Bool)

(declare-fun c!1059085 () Bool)

(assert (=> b!5951455 (= c!1059085 ((_ is Star!15993) (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun e!3640855 () (InoxSet Context!10754))

(assert (=> b!5951455 (= e!3640853 e!3640855)))

(declare-fun bm!474080 () Bool)

(assert (=> bm!474080 (= call!474086 call!474087)))

(declare-fun bm!474081 () Bool)

(assert (=> bm!474081 (= call!474084 (derivationStepZipperDown!1243 (ite c!1059088 (regOne!32499 (h!70602 (exprs!5877 (h!70603 zl!343)))) (regOne!32498 (h!70602 (exprs!5877 (h!70603 zl!343))))) (ite c!1059088 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))) (Context!10755 call!474088)) (h!70604 s!2326)))))

(declare-fun b!5951456 () Bool)

(assert (=> b!5951456 (= e!3640855 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951457 () Bool)

(assert (=> b!5951457 (= e!3640854 e!3640852)))

(assert (=> b!5951457 (= c!1059088 ((_ is Union!15993) (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun bm!474082 () Bool)

(assert (=> bm!474082 (= call!474083 call!474086)))

(declare-fun b!5951458 () Bool)

(assert (=> b!5951458 (= e!3640854 (store ((as const (Array Context!10754 Bool)) false) (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))) true))))

(declare-fun bm!474083 () Bool)

(assert (=> bm!474083 (= call!474088 ($colon$colon!1880 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343))))) (ite (or c!1059086 c!1059087) (regTwo!32498 (h!70602 (exprs!5877 (h!70603 zl!343)))) (h!70602 (exprs!5877 (h!70603 zl!343))))))))

(declare-fun b!5951459 () Bool)

(assert (=> b!5951459 (= e!3640855 call!474083)))

(assert (= (and d!1865812 c!1059084) b!5951458))

(assert (= (and d!1865812 (not c!1059084)) b!5951457))

(assert (= (and b!5951457 c!1059088) b!5951453))

(assert (= (and b!5951457 (not c!1059088)) b!5951452))

(assert (= (and b!5951452 res!2491323) b!5951449))

(assert (= (and b!5951452 c!1059086) b!5951451))

(assert (= (and b!5951452 (not c!1059086)) b!5951454))

(assert (= (and b!5951454 c!1059087) b!5951450))

(assert (= (and b!5951454 (not c!1059087)) b!5951455))

(assert (= (and b!5951455 c!1059085) b!5951459))

(assert (= (and b!5951455 (not c!1059085)) b!5951456))

(assert (= (or b!5951450 b!5951459) bm!474078))

(assert (= (or b!5951450 b!5951459) bm!474082))

(assert (= (or b!5951451 bm!474078) bm!474083))

(assert (= (or b!5951451 bm!474082) bm!474080))

(assert (= (or b!5951453 bm!474080) bm!474079))

(assert (= (or b!5951453 b!5951451) bm!474081))

(declare-fun m!6839246 () Bool)

(assert (=> bm!474079 m!6839246))

(declare-fun m!6839248 () Bool)

(assert (=> b!5951449 m!6839248))

(declare-fun m!6839250 () Bool)

(assert (=> b!5951458 m!6839250))

(declare-fun m!6839252 () Bool)

(assert (=> bm!474083 m!6839252))

(declare-fun m!6839254 () Bool)

(assert (=> bm!474081 m!6839254))

(assert (=> bm!473807 d!1865812))

(declare-fun d!1865814 () Bool)

(assert (=> d!1865814 (= (nullable!5988 r!7292) (nullableFct!1960 r!7292))))

(declare-fun bs!1409799 () Bool)

(assert (= bs!1409799 d!1865814))

(declare-fun m!6839256 () Bool)

(assert (=> bs!1409799 m!6839256))

(assert (=> b!5950245 d!1865814))

(declare-fun d!1865816 () Bool)

(declare-fun res!2491324 () Bool)

(declare-fun e!3640857 () Bool)

(assert (=> d!1865816 (=> res!2491324 e!3640857)))

(assert (=> d!1865816 (= res!2491324 ((_ is Nil!64154) (exprs!5877 setElem!40431)))))

(assert (=> d!1865816 (= (forall!15076 (exprs!5877 setElem!40431) lambda!324663) e!3640857)))

(declare-fun b!5951460 () Bool)

(declare-fun e!3640858 () Bool)

(assert (=> b!5951460 (= e!3640857 e!3640858)))

(declare-fun res!2491325 () Bool)

(assert (=> b!5951460 (=> (not res!2491325) (not e!3640858))))

(assert (=> b!5951460 (= res!2491325 (dynLambda!25100 lambda!324663 (h!70602 (exprs!5877 setElem!40431))))))

(declare-fun b!5951461 () Bool)

(assert (=> b!5951461 (= e!3640858 (forall!15076 (t!377687 (exprs!5877 setElem!40431)) lambda!324663))))

(assert (= (and d!1865816 (not res!2491324)) b!5951460))

(assert (= (and b!5951460 res!2491325) b!5951461))

(declare-fun b_lambda!223647 () Bool)

(assert (=> (not b_lambda!223647) (not b!5951460)))

(declare-fun m!6839258 () Bool)

(assert (=> b!5951460 m!6839258))

(declare-fun m!6839260 () Bool)

(assert (=> b!5951461 m!6839260))

(assert (=> d!1865262 d!1865816))

(declare-fun d!1865818 () Bool)

(assert (=> d!1865818 (= (isEmpty!36033 (tail!11613 (unfocusZipperList!1414 zl!343))) ((_ is Nil!64154) (tail!11613 (unfocusZipperList!1414 zl!343))))))

(assert (=> b!5950455 d!1865818))

(declare-fun d!1865820 () Bool)

(assert (=> d!1865820 (= (tail!11613 (unfocusZipperList!1414 zl!343)) (t!377687 (unfocusZipperList!1414 zl!343)))))

(assert (=> b!5950455 d!1865820))

(declare-fun c!1059089 () Bool)

(declare-fun d!1865824 () Bool)

(assert (=> d!1865824 (= c!1059089 (and ((_ is ElementMatch!15993) (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))) (= (c!1058556 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))) (h!70604 s!2326))))))

(declare-fun e!3640867 () (InoxSet Context!10754))

(assert (=> d!1865824 (= (derivationStepZipperDown!1243 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292))) (ite c!1058774 lt!2312978 (Context!10755 call!473859)) (h!70604 s!2326)) e!3640867)))

(declare-fun b!5951466 () Bool)

(declare-fun e!3640869 () Bool)

(assert (=> b!5951466 (= e!3640869 (nullable!5988 (regOne!32498 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292))))))))

(declare-fun bm!474084 () Bool)

(declare-fun call!474091 () List!64278)

(declare-fun call!474094 () List!64278)

(assert (=> bm!474084 (= call!474091 call!474094)))

(declare-fun bm!474085 () Bool)

(declare-fun c!1059095 () Bool)

(declare-fun c!1059091 () Bool)

(declare-fun c!1059093 () Bool)

(declare-fun call!474093 () (InoxSet Context!10754))

(assert (=> bm!474085 (= call!474093 (derivationStepZipperDown!1243 (ite c!1059095 (regTwo!32499 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))) (ite c!1059091 (regTwo!32498 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))) (ite c!1059093 (regOne!32498 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))) (reg!16322 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292))))))) (ite (or c!1059095 c!1059091) (ite c!1058774 lt!2312978 (Context!10755 call!473859)) (Context!10755 call!474091)) (h!70604 s!2326)))))

(declare-fun b!5951470 () Bool)

(declare-fun e!3640866 () (InoxSet Context!10754))

(declare-fun call!474089 () (InoxSet Context!10754))

(assert (=> b!5951470 (= e!3640866 call!474089)))

(declare-fun b!5951472 () Bool)

(declare-fun e!3640859 () (InoxSet Context!10754))

(declare-fun call!474090 () (InoxSet Context!10754))

(declare-fun call!474092 () (InoxSet Context!10754))

(assert (=> b!5951472 (= e!3640859 ((_ map or) call!474090 call!474092))))

(declare-fun b!5951474 () Bool)

(assert (=> b!5951474 (= c!1059091 e!3640869)))

(declare-fun res!2491330 () Bool)

(assert (=> b!5951474 (=> (not res!2491330) (not e!3640869))))

(assert (=> b!5951474 (= res!2491330 ((_ is Concat!24838) (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))))))

(declare-fun e!3640862 () (InoxSet Context!10754))

(assert (=> b!5951474 (= e!3640862 e!3640859)))

(declare-fun b!5951475 () Bool)

(assert (=> b!5951475 (= e!3640862 ((_ map or) call!474090 call!474093))))

(declare-fun b!5951476 () Bool)

(assert (=> b!5951476 (= e!3640859 e!3640866)))

(assert (=> b!5951476 (= c!1059093 ((_ is Concat!24838) (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))))))

(declare-fun b!5951477 () Bool)

(declare-fun c!1059090 () Bool)

(assert (=> b!5951477 (= c!1059090 ((_ is Star!15993) (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))))))

(declare-fun e!3640868 () (InoxSet Context!10754))

(assert (=> b!5951477 (= e!3640866 e!3640868)))

(declare-fun bm!474086 () Bool)

(assert (=> bm!474086 (= call!474092 call!474093)))

(declare-fun bm!474087 () Bool)

(assert (=> bm!474087 (= call!474090 (derivationStepZipperDown!1243 (ite c!1059095 (regOne!32499 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))) (regOne!32498 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292))))) (ite c!1059095 (ite c!1058774 lt!2312978 (Context!10755 call!473859)) (Context!10755 call!474094)) (h!70604 s!2326)))))

(declare-fun b!5951478 () Bool)

(assert (=> b!5951478 (= e!3640868 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951479 () Bool)

(assert (=> b!5951479 (= e!3640867 e!3640862)))

(assert (=> b!5951479 (= c!1059095 ((_ is Union!15993) (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))))))

(declare-fun bm!474088 () Bool)

(assert (=> bm!474088 (= call!474089 call!474092)))

(declare-fun b!5951480 () Bool)

(assert (=> b!5951480 (= e!3640867 (store ((as const (Array Context!10754 Bool)) false) (ite c!1058774 lt!2312978 (Context!10755 call!473859)) true))))

(declare-fun bm!474089 () Bool)

(assert (=> bm!474089 (= call!474094 ($colon$colon!1880 (exprs!5877 (ite c!1058774 lt!2312978 (Context!10755 call!473859))) (ite (or c!1059091 c!1059093) (regTwo!32498 (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))) (ite c!1058774 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292))))))))

(declare-fun b!5951481 () Bool)

(assert (=> b!5951481 (= e!3640868 call!474089)))

(assert (= (and d!1865824 c!1059089) b!5951480))

(assert (= (and d!1865824 (not c!1059089)) b!5951479))

(assert (= (and b!5951479 c!1059095) b!5951475))

(assert (= (and b!5951479 (not c!1059095)) b!5951474))

(assert (= (and b!5951474 res!2491330) b!5951466))

(assert (= (and b!5951474 c!1059091) b!5951472))

(assert (= (and b!5951474 (not c!1059091)) b!5951476))

(assert (= (and b!5951476 c!1059093) b!5951470))

(assert (= (and b!5951476 (not c!1059093)) b!5951477))

(assert (= (and b!5951477 c!1059090) b!5951481))

(assert (= (and b!5951477 (not c!1059090)) b!5951478))

(assert (= (or b!5951470 b!5951481) bm!474084))

(assert (= (or b!5951470 b!5951481) bm!474088))

(assert (= (or b!5951472 bm!474084) bm!474089))

(assert (= (or b!5951472 bm!474088) bm!474086))

(assert (= (or b!5951475 bm!474086) bm!474085))

(assert (= (or b!5951475 b!5951472) bm!474087))

(declare-fun m!6839266 () Bool)

(assert (=> bm!474085 m!6839266))

(declare-fun m!6839268 () Bool)

(assert (=> b!5951466 m!6839268))

(declare-fun m!6839270 () Bool)

(assert (=> b!5951480 m!6839270))

(declare-fun m!6839272 () Bool)

(assert (=> bm!474089 m!6839272))

(declare-fun m!6839276 () Bool)

(assert (=> bm!474087 m!6839276))

(assert (=> bm!473852 d!1865824))

(declare-fun b!5951510 () Bool)

(declare-fun res!2491339 () Bool)

(declare-fun e!3640885 () Bool)

(assert (=> b!5951510 (=> (not res!2491339) (not e!3640885))))

(declare-fun lt!2313238 () List!64280)

(declare-fun size!40155 (List!64280) Int)

(assert (=> b!5951510 (= res!2491339 (= (size!40155 lt!2313238) (+ (size!40155 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156))) (size!40155 (t!377689 s!2326)))))))

(declare-fun d!1865826 () Bool)

(assert (=> d!1865826 e!3640885))

(declare-fun res!2491338 () Bool)

(assert (=> d!1865826 (=> (not res!2491338) (not e!3640885))))

(declare-fun content!11841 (List!64280) (InoxSet C!32256))

(assert (=> d!1865826 (= res!2491338 (= (content!11841 lt!2313238) ((_ map or) (content!11841 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156))) (content!11841 (t!377689 s!2326)))))))

(declare-fun e!3640884 () List!64280)

(assert (=> d!1865826 (= lt!2313238 e!3640884)))

(declare-fun c!1059106 () Bool)

(assert (=> d!1865826 (= c!1059106 ((_ is Nil!64156) (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156))))))

(assert (=> d!1865826 (= (++!14090 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) (t!377689 s!2326)) lt!2313238)))

(declare-fun b!5951509 () Bool)

(assert (=> b!5951509 (= e!3640884 (Cons!64156 (h!70604 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156))) (++!14090 (t!377689 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156))) (t!377689 s!2326))))))

(declare-fun b!5951511 () Bool)

(assert (=> b!5951511 (= e!3640885 (or (not (= (t!377689 s!2326) Nil!64156)) (= lt!2313238 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)))))))

(declare-fun b!5951508 () Bool)

(assert (=> b!5951508 (= e!3640884 (t!377689 s!2326))))

(assert (= (and d!1865826 c!1059106) b!5951508))

(assert (= (and d!1865826 (not c!1059106)) b!5951509))

(assert (= (and d!1865826 res!2491338) b!5951510))

(assert (= (and b!5951510 res!2491339) b!5951511))

(declare-fun m!6839320 () Bool)

(assert (=> b!5951510 m!6839320))

(assert (=> b!5951510 m!6838250))

(declare-fun m!6839322 () Bool)

(assert (=> b!5951510 m!6839322))

(declare-fun m!6839324 () Bool)

(assert (=> b!5951510 m!6839324))

(declare-fun m!6839326 () Bool)

(assert (=> d!1865826 m!6839326))

(assert (=> d!1865826 m!6838250))

(declare-fun m!6839328 () Bool)

(assert (=> d!1865826 m!6839328))

(declare-fun m!6839330 () Bool)

(assert (=> d!1865826 m!6839330))

(declare-fun m!6839332 () Bool)

(assert (=> b!5951509 m!6839332))

(assert (=> b!5950487 d!1865826))

(declare-fun b!5951514 () Bool)

(declare-fun res!2491341 () Bool)

(declare-fun e!3640887 () Bool)

(assert (=> b!5951514 (=> (not res!2491341) (not e!3640887))))

(declare-fun lt!2313239 () List!64280)

(assert (=> b!5951514 (= res!2491341 (= (size!40155 lt!2313239) (+ (size!40155 Nil!64156) (size!40155 (Cons!64156 (h!70604 s!2326) Nil!64156)))))))

(declare-fun d!1865836 () Bool)

(assert (=> d!1865836 e!3640887))

(declare-fun res!2491340 () Bool)

(assert (=> d!1865836 (=> (not res!2491340) (not e!3640887))))

(assert (=> d!1865836 (= res!2491340 (= (content!11841 lt!2313239) ((_ map or) (content!11841 Nil!64156) (content!11841 (Cons!64156 (h!70604 s!2326) Nil!64156)))))))

(declare-fun e!3640886 () List!64280)

(assert (=> d!1865836 (= lt!2313239 e!3640886)))

(declare-fun c!1059107 () Bool)

(assert (=> d!1865836 (= c!1059107 ((_ is Nil!64156) Nil!64156))))

(assert (=> d!1865836 (= (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) lt!2313239)))

(declare-fun b!5951513 () Bool)

(assert (=> b!5951513 (= e!3640886 (Cons!64156 (h!70604 Nil!64156) (++!14090 (t!377689 Nil!64156) (Cons!64156 (h!70604 s!2326) Nil!64156))))))

(declare-fun b!5951515 () Bool)

(assert (=> b!5951515 (= e!3640887 (or (not (= (Cons!64156 (h!70604 s!2326) Nil!64156) Nil!64156)) (= lt!2313239 Nil!64156)))))

(declare-fun b!5951512 () Bool)

(assert (=> b!5951512 (= e!3640886 (Cons!64156 (h!70604 s!2326) Nil!64156))))

(assert (= (and d!1865836 c!1059107) b!5951512))

(assert (= (and d!1865836 (not c!1059107)) b!5951513))

(assert (= (and d!1865836 res!2491340) b!5951514))

(assert (= (and b!5951514 res!2491341) b!5951515))

(declare-fun m!6839334 () Bool)

(assert (=> b!5951514 m!6839334))

(declare-fun m!6839336 () Bool)

(assert (=> b!5951514 m!6839336))

(declare-fun m!6839338 () Bool)

(assert (=> b!5951514 m!6839338))

(declare-fun m!6839340 () Bool)

(assert (=> d!1865836 m!6839340))

(declare-fun m!6839342 () Bool)

(assert (=> d!1865836 m!6839342))

(declare-fun m!6839344 () Bool)

(assert (=> d!1865836 m!6839344))

(declare-fun m!6839346 () Bool)

(assert (=> b!5951513 m!6839346))

(assert (=> b!5950487 d!1865836))

(declare-fun d!1865838 () Bool)

(assert (=> d!1865838 (= (++!14090 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) (t!377689 s!2326)) s!2326)))

(declare-fun lt!2313242 () Unit!157257)

(declare-fun choose!44847 (List!64280 C!32256 List!64280 List!64280) Unit!157257)

(assert (=> d!1865838 (= lt!2313242 (choose!44847 Nil!64156 (h!70604 s!2326) (t!377689 s!2326) s!2326))))

(assert (=> d!1865838 (= (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) (t!377689 s!2326))) s!2326)))

(assert (=> d!1865838 (= (lemmaMoveElementToOtherListKeepsConcatEq!2185 Nil!64156 (h!70604 s!2326) (t!377689 s!2326) s!2326) lt!2313242)))

(declare-fun bs!1409801 () Bool)

(assert (= bs!1409801 d!1865838))

(assert (=> bs!1409801 m!6838250))

(assert (=> bs!1409801 m!6838250))

(assert (=> bs!1409801 m!6838252))

(declare-fun m!6839358 () Bool)

(assert (=> bs!1409801 m!6839358))

(declare-fun m!6839360 () Bool)

(assert (=> bs!1409801 m!6839360))

(assert (=> b!5950487 d!1865838))

(declare-fun b!5951530 () Bool)

(declare-fun lt!2313245 () Unit!157257)

(declare-fun lt!2313243 () Unit!157257)

(assert (=> b!5951530 (= lt!2313245 lt!2313243)))

(assert (=> b!5951530 (= (++!14090 (++!14090 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) (Cons!64156 (h!70604 (t!377689 s!2326)) Nil!64156)) (t!377689 (t!377689 s!2326))) s!2326)))

(assert (=> b!5951530 (= lt!2313243 (lemmaMoveElementToOtherListKeepsConcatEq!2185 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) (h!70604 (t!377689 s!2326)) (t!377689 (t!377689 s!2326)) s!2326))))

(declare-fun e!3640901 () Option!15884)

(assert (=> b!5951530 (= e!3640901 (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) (++!14090 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) (Cons!64156 (h!70604 (t!377689 s!2326)) Nil!64156)) (t!377689 (t!377689 s!2326)) s!2326))))

(declare-fun b!5951531 () Bool)

(declare-fun res!2491346 () Bool)

(declare-fun e!3640897 () Bool)

(assert (=> b!5951531 (=> (not res!2491346) (not e!3640897))))

(declare-fun lt!2313244 () Option!15884)

(assert (=> b!5951531 (= res!2491346 (matchR!8176 (regTwo!32498 r!7292) (_2!36275 (get!22102 lt!2313244))))))

(declare-fun b!5951532 () Bool)

(assert (=> b!5951532 (= e!3640901 None!15883)))

(declare-fun d!1865844 () Bool)

(declare-fun e!3640900 () Bool)

(assert (=> d!1865844 e!3640900))

(declare-fun res!2491348 () Bool)

(assert (=> d!1865844 (=> res!2491348 e!3640900)))

(assert (=> d!1865844 (= res!2491348 e!3640897)))

(declare-fun res!2491350 () Bool)

(assert (=> d!1865844 (=> (not res!2491350) (not e!3640897))))

(assert (=> d!1865844 (= res!2491350 (isDefined!12587 lt!2313244))))

(declare-fun e!3640898 () Option!15884)

(assert (=> d!1865844 (= lt!2313244 e!3640898)))

(declare-fun c!1059113 () Bool)

(declare-fun e!3640899 () Bool)

(assert (=> d!1865844 (= c!1059113 e!3640899)))

(declare-fun res!2491349 () Bool)

(assert (=> d!1865844 (=> (not res!2491349) (not e!3640899))))

(assert (=> d!1865844 (= res!2491349 (matchR!8176 (regOne!32498 r!7292) (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156))))))

(assert (=> d!1865844 (validRegex!7729 (regOne!32498 r!7292))))

(assert (=> d!1865844 (= (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) (t!377689 s!2326) s!2326) lt!2313244)))

(declare-fun b!5951533 () Bool)

(assert (=> b!5951533 (= e!3640897 (= (++!14090 (_1!36275 (get!22102 lt!2313244)) (_2!36275 (get!22102 lt!2313244))) s!2326))))

(declare-fun b!5951534 () Bool)

(assert (=> b!5951534 (= e!3640898 e!3640901)))

(declare-fun c!1059114 () Bool)

(assert (=> b!5951534 (= c!1059114 ((_ is Nil!64156) (t!377689 s!2326)))))

(declare-fun b!5951535 () Bool)

(assert (=> b!5951535 (= e!3640899 (matchR!8176 (regTwo!32498 r!7292) (t!377689 s!2326)))))

(declare-fun b!5951536 () Bool)

(declare-fun res!2491347 () Bool)

(assert (=> b!5951536 (=> (not res!2491347) (not e!3640897))))

(assert (=> b!5951536 (= res!2491347 (matchR!8176 (regOne!32498 r!7292) (_1!36275 (get!22102 lt!2313244))))))

(declare-fun b!5951537 () Bool)

(assert (=> b!5951537 (= e!3640898 (Some!15883 (tuple2!65945 (++!14090 Nil!64156 (Cons!64156 (h!70604 s!2326) Nil!64156)) (t!377689 s!2326))))))

(declare-fun b!5951538 () Bool)

(assert (=> b!5951538 (= e!3640900 (not (isDefined!12587 lt!2313244)))))

(assert (= (and d!1865844 res!2491349) b!5951535))

(assert (= (and d!1865844 c!1059113) b!5951537))

(assert (= (and d!1865844 (not c!1059113)) b!5951534))

(assert (= (and b!5951534 c!1059114) b!5951532))

(assert (= (and b!5951534 (not c!1059114)) b!5951530))

(assert (= (and d!1865844 res!2491350) b!5951536))

(assert (= (and b!5951536 res!2491347) b!5951531))

(assert (= (and b!5951531 res!2491346) b!5951533))

(assert (= (and d!1865844 (not res!2491348)) b!5951538))

(declare-fun m!6839362 () Bool)

(assert (=> b!5951535 m!6839362))

(assert (=> b!5951530 m!6838250))

(declare-fun m!6839364 () Bool)

(assert (=> b!5951530 m!6839364))

(assert (=> b!5951530 m!6839364))

(declare-fun m!6839366 () Bool)

(assert (=> b!5951530 m!6839366))

(assert (=> b!5951530 m!6838250))

(declare-fun m!6839368 () Bool)

(assert (=> b!5951530 m!6839368))

(assert (=> b!5951530 m!6839364))

(declare-fun m!6839370 () Bool)

(assert (=> b!5951530 m!6839370))

(declare-fun m!6839372 () Bool)

(assert (=> b!5951538 m!6839372))

(assert (=> d!1865844 m!6839372))

(assert (=> d!1865844 m!6838250))

(declare-fun m!6839374 () Bool)

(assert (=> d!1865844 m!6839374))

(assert (=> d!1865844 m!6838262))

(declare-fun m!6839376 () Bool)

(assert (=> b!5951536 m!6839376))

(declare-fun m!6839378 () Bool)

(assert (=> b!5951536 m!6839378))

(assert (=> b!5951531 m!6839376))

(declare-fun m!6839380 () Bool)

(assert (=> b!5951531 m!6839380))

(assert (=> b!5951533 m!6839376))

(declare-fun m!6839382 () Bool)

(assert (=> b!5951533 m!6839382))

(assert (=> b!5950487 d!1865844))

(declare-fun d!1865850 () Bool)

(declare-fun c!1059115 () Bool)

(assert (=> d!1865850 (= c!1059115 (isEmpty!36036 (tail!11610 (t!377689 s!2326))))))

(declare-fun e!3640902 () Bool)

(assert (=> d!1865850 (= (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))) e!3640902)))

(declare-fun b!5951539 () Bool)

(assert (=> b!5951539 (= e!3640902 (nullableZipper!1799 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) (head!12525 (t!377689 s!2326)))))))

(declare-fun b!5951540 () Bool)

(assert (=> b!5951540 (= e!3640902 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) (head!12525 (t!377689 s!2326))) (head!12525 (tail!11610 (t!377689 s!2326)))) (tail!11610 (tail!11610 (t!377689 s!2326)))))))

(assert (= (and d!1865850 c!1059115) b!5951539))

(assert (= (and d!1865850 (not c!1059115)) b!5951540))

(assert (=> d!1865850 m!6837750))

(assert (=> d!1865850 m!6838610))

(assert (=> b!5951539 m!6838218))

(declare-fun m!6839384 () Bool)

(assert (=> b!5951539 m!6839384))

(assert (=> b!5951540 m!6837750))

(assert (=> b!5951540 m!6838614))

(assert (=> b!5951540 m!6838218))

(assert (=> b!5951540 m!6838614))

(declare-fun m!6839386 () Bool)

(assert (=> b!5951540 m!6839386))

(assert (=> b!5951540 m!6837750))

(assert (=> b!5951540 m!6838618))

(assert (=> b!5951540 m!6839386))

(assert (=> b!5951540 m!6838618))

(declare-fun m!6839388 () Bool)

(assert (=> b!5951540 m!6839388))

(assert (=> b!5950401 d!1865850))

(declare-fun bs!1409817 () Bool)

(declare-fun d!1865852 () Bool)

(assert (= bs!1409817 (and d!1865852 b!5949712)))

(declare-fun lambda!324800 () Int)

(assert (=> bs!1409817 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324800 lambda!324608))))

(declare-fun bs!1409820 () Bool)

(assert (= bs!1409820 (and d!1865852 d!1865300)))

(assert (=> bs!1409820 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324800 lambda!324692))))

(declare-fun bs!1409822 () Bool)

(assert (= bs!1409822 (and d!1865852 d!1865306)))

(assert (=> bs!1409822 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324800 lambda!324696))))

(declare-fun bs!1409823 () Bool)

(assert (= bs!1409823 (and d!1865852 d!1865628)))

(assert (=> bs!1409823 (= lambda!324800 lambda!324761)))

(declare-fun bs!1409825 () Bool)

(assert (= bs!1409825 (and d!1865852 d!1865352)))

(assert (=> bs!1409825 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324800 lambda!324701))))

(declare-fun bs!1409826 () Bool)

(assert (= bs!1409826 (and d!1865852 d!1865620)))

(assert (=> bs!1409826 (= lambda!324800 lambda!324759)))

(declare-fun bs!1409827 () Bool)

(assert (= bs!1409827 (and d!1865852 d!1865588)))

(assert (=> bs!1409827 (= (= (head!12525 (t!377689 s!2326)) (head!12525 s!2326)) (= lambda!324800 lambda!324748))))

(declare-fun bs!1409828 () Bool)

(assert (= bs!1409828 (and d!1865852 d!1865544)))

(assert (=> bs!1409828 (= lambda!324800 lambda!324743)))

(declare-fun bs!1409829 () Bool)

(assert (= bs!1409829 (and d!1865852 d!1865734)))

(assert (=> bs!1409829 (= (= (head!12525 (t!377689 s!2326)) (head!12525 s!2326)) (= lambda!324800 lambda!324775))))

(assert (=> d!1865852 true))

(assert (=> d!1865852 (= (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) (head!12525 (t!377689 s!2326))) (flatMap!1506 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) lambda!324800))))

(declare-fun bs!1409830 () Bool)

(assert (= bs!1409830 d!1865852))

(assert (=> bs!1409830 m!6837640))

(declare-fun m!6839392 () Bool)

(assert (=> bs!1409830 m!6839392))

(assert (=> b!5950401 d!1865852))

(assert (=> b!5950401 d!1865548))

(assert (=> b!5950401 d!1865550))

(declare-fun bs!1409831 () Bool)

(declare-fun b!5951545 () Bool)

(assert (= bs!1409831 (and b!5951545 d!1865262)))

(declare-fun lambda!324801 () Int)

(assert (=> bs!1409831 (not (= lambda!324801 lambda!324663))))

(declare-fun bs!1409832 () Bool)

(assert (= bs!1409832 (and b!5951545 b!5949946)))

(declare-fun lt!2313246 () Int)

(assert (=> bs!1409832 (= (= lt!2313246 lt!2313043) (= lambda!324801 lambda!324635))))

(declare-fun bs!1409833 () Bool)

(assert (= bs!1409833 (and b!5951545 d!1865354)))

(assert (=> bs!1409833 (not (= lambda!324801 lambda!324704))))

(declare-fun bs!1409834 () Bool)

(assert (= bs!1409834 (and b!5951545 d!1865258)))

(assert (=> bs!1409834 (not (= lambda!324801 lambda!324662))))

(declare-fun bs!1409835 () Bool)

(assert (= bs!1409835 (and b!5951545 d!1865750)))

(assert (=> bs!1409835 (not (= lambda!324801 lambda!324778))))

(declare-fun bs!1409836 () Bool)

(assert (= bs!1409836 (and b!5951545 b!5951427)))

(assert (=> bs!1409836 (= (= lt!2313246 lt!2313226) (= lambda!324801 lambda!324798))))

(declare-fun bs!1409837 () Bool)

(assert (= bs!1409837 (and b!5951545 d!1865252)))

(assert (=> bs!1409837 (not (= lambda!324801 lambda!324657))))

(declare-fun bs!1409838 () Bool)

(assert (= bs!1409838 (and b!5951545 d!1865584)))

(assert (=> bs!1409838 (not (= lambda!324801 lambda!324747))))

(declare-fun bs!1409839 () Bool)

(assert (= bs!1409839 (and b!5951545 d!1865598)))

(assert (=> bs!1409839 (not (= lambda!324801 lambda!324752))))

(declare-fun bs!1409840 () Bool)

(assert (= bs!1409840 (and b!5951545 b!5951425)))

(assert (=> bs!1409840 (= (= lt!2313246 lt!2313224) (= lambda!324801 lambda!324797))))

(declare-fun bs!1409841 () Bool)

(assert (= bs!1409841 (and b!5951545 d!1865552)))

(assert (=> bs!1409841 (not (= lambda!324801 lambda!324744))))

(declare-fun bs!1409842 () Bool)

(assert (= bs!1409842 (and b!5951545 d!1865362)))

(assert (=> bs!1409842 (not (= lambda!324801 lambda!324707))))

(declare-fun bs!1409843 () Bool)

(assert (= bs!1409843 (and b!5951545 b!5949944)))

(assert (=> bs!1409843 (= (= lt!2313246 lt!2313041) (= lambda!324801 lambda!324634))))

(declare-fun bs!1409844 () Bool)

(assert (= bs!1409844 (and b!5951545 b!5949941)))

(assert (=> bs!1409844 (= (= lt!2313246 lt!2313039) (= lambda!324801 lambda!324633))))

(declare-fun bs!1409845 () Bool)

(assert (= bs!1409845 (and b!5951545 d!1865790)))

(assert (=> bs!1409845 (= (= lt!2313246 lt!2313041) (= lambda!324801 lambda!324795))))

(declare-fun bs!1409846 () Bool)

(assert (= bs!1409846 (and b!5951545 d!1865316)))

(assert (=> bs!1409846 (not (= lambda!324801 lambda!324700))))

(declare-fun bs!1409847 () Bool)

(assert (= bs!1409847 (and b!5951545 b!5949939)))

(assert (=> bs!1409847 (= (= lt!2313246 lt!2313037) (= lambda!324801 lambda!324632))))

(assert (=> b!5951545 true))

(declare-fun bs!1409848 () Bool)

(declare-fun b!5951547 () Bool)

(assert (= bs!1409848 (and b!5951547 b!5951545)))

(declare-fun lambda!324802 () Int)

(declare-fun lt!2313248 () Int)

(assert (=> bs!1409848 (= (= lt!2313248 lt!2313246) (= lambda!324802 lambda!324801))))

(declare-fun bs!1409849 () Bool)

(assert (= bs!1409849 (and b!5951547 d!1865262)))

(assert (=> bs!1409849 (not (= lambda!324802 lambda!324663))))

(declare-fun bs!1409850 () Bool)

(assert (= bs!1409850 (and b!5951547 b!5949946)))

(assert (=> bs!1409850 (= (= lt!2313248 lt!2313043) (= lambda!324802 lambda!324635))))

(declare-fun bs!1409851 () Bool)

(assert (= bs!1409851 (and b!5951547 d!1865354)))

(assert (=> bs!1409851 (not (= lambda!324802 lambda!324704))))

(declare-fun bs!1409852 () Bool)

(assert (= bs!1409852 (and b!5951547 d!1865258)))

(assert (=> bs!1409852 (not (= lambda!324802 lambda!324662))))

(declare-fun bs!1409853 () Bool)

(assert (= bs!1409853 (and b!5951547 d!1865750)))

(assert (=> bs!1409853 (not (= lambda!324802 lambda!324778))))

(declare-fun bs!1409854 () Bool)

(assert (= bs!1409854 (and b!5951547 b!5951427)))

(assert (=> bs!1409854 (= (= lt!2313248 lt!2313226) (= lambda!324802 lambda!324798))))

(declare-fun bs!1409855 () Bool)

(assert (= bs!1409855 (and b!5951547 d!1865252)))

(assert (=> bs!1409855 (not (= lambda!324802 lambda!324657))))

(declare-fun bs!1409856 () Bool)

(assert (= bs!1409856 (and b!5951547 d!1865584)))

(assert (=> bs!1409856 (not (= lambda!324802 lambda!324747))))

(declare-fun bs!1409857 () Bool)

(assert (= bs!1409857 (and b!5951547 d!1865598)))

(assert (=> bs!1409857 (not (= lambda!324802 lambda!324752))))

(declare-fun bs!1409858 () Bool)

(assert (= bs!1409858 (and b!5951547 b!5951425)))

(assert (=> bs!1409858 (= (= lt!2313248 lt!2313224) (= lambda!324802 lambda!324797))))

(declare-fun bs!1409859 () Bool)

(assert (= bs!1409859 (and b!5951547 d!1865552)))

(assert (=> bs!1409859 (not (= lambda!324802 lambda!324744))))

(declare-fun bs!1409860 () Bool)

(assert (= bs!1409860 (and b!5951547 d!1865362)))

(assert (=> bs!1409860 (not (= lambda!324802 lambda!324707))))

(declare-fun bs!1409861 () Bool)

(assert (= bs!1409861 (and b!5951547 b!5949944)))

(assert (=> bs!1409861 (= (= lt!2313248 lt!2313041) (= lambda!324802 lambda!324634))))

(declare-fun bs!1409862 () Bool)

(assert (= bs!1409862 (and b!5951547 b!5949941)))

(assert (=> bs!1409862 (= (= lt!2313248 lt!2313039) (= lambda!324802 lambda!324633))))

(declare-fun bs!1409863 () Bool)

(assert (= bs!1409863 (and b!5951547 d!1865790)))

(assert (=> bs!1409863 (= (= lt!2313248 lt!2313041) (= lambda!324802 lambda!324795))))

(declare-fun bs!1409864 () Bool)

(assert (= bs!1409864 (and b!5951547 d!1865316)))

(assert (=> bs!1409864 (not (= lambda!324802 lambda!324700))))

(declare-fun bs!1409865 () Bool)

(assert (= bs!1409865 (and b!5951547 b!5949939)))

(assert (=> bs!1409865 (= (= lt!2313248 lt!2313037) (= lambda!324802 lambda!324632))))

(assert (=> b!5951547 true))

(declare-fun d!1865854 () Bool)

(declare-fun e!3640905 () Bool)

(assert (=> d!1865854 e!3640905))

(declare-fun res!2491351 () Bool)

(assert (=> d!1865854 (=> (not res!2491351) (not e!3640905))))

(assert (=> d!1865854 (= res!2491351 (>= lt!2313248 0))))

(declare-fun e!3640904 () Int)

(assert (=> d!1865854 (= lt!2313248 e!3640904)))

(declare-fun c!1059116 () Bool)

(assert (=> d!1865854 (= c!1059116 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))))))

(assert (=> d!1865854 (= (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))) lt!2313248)))

(assert (=> b!5951545 (= e!3640904 lt!2313246)))

(assert (=> b!5951545 (= lt!2313246 (maxBigInt!0 (regexDepth!249 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))))))))))

(declare-fun lt!2313249 () Unit!157257)

(assert (=> b!5951545 (= lt!2313249 (lemmaForallRegexDepthBiggerThanTransitive!41 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))) lt!2313246 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))))))))))

(assert (=> b!5951545 (forall!15076 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))) lambda!324801)))

(declare-fun lt!2313247 () Unit!157257)

(assert (=> b!5951545 (= lt!2313247 lt!2313249)))

(declare-fun b!5951546 () Bool)

(assert (=> b!5951546 (= e!3640904 0)))

(assert (=> b!5951547 (= e!3640905 (forall!15076 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))) lambda!324802))))

(assert (= (and d!1865854 c!1059116) b!5951545))

(assert (= (and d!1865854 (not c!1059116)) b!5951546))

(assert (= (and d!1865854 res!2491351) b!5951547))

(declare-fun m!6839396 () Bool)

(assert (=> b!5951545 m!6839396))

(declare-fun m!6839398 () Bool)

(assert (=> b!5951545 m!6839398))

(assert (=> b!5951545 m!6839396))

(declare-fun m!6839400 () Bool)

(assert (=> b!5951545 m!6839400))

(assert (=> b!5951545 m!6839398))

(declare-fun m!6839402 () Bool)

(assert (=> b!5951545 m!6839402))

(assert (=> b!5951545 m!6839396))

(declare-fun m!6839404 () Bool)

(assert (=> b!5951545 m!6839404))

(declare-fun m!6839406 () Bool)

(assert (=> b!5951547 m!6839406))

(assert (=> b!5949939 d!1865854))

(declare-fun d!1865856 () Bool)

(assert (=> d!1865856 (= (maxBigInt!0 (regexDepth!249 (h!70602 (exprs!5877 lt!2313004))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))) (ite (>= (regexDepth!249 (h!70602 (exprs!5877 lt!2313004))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))) (regexDepth!249 (h!70602 (exprs!5877 lt!2313004))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))))))

(assert (=> b!5949939 d!1865856))

(declare-fun bs!1409866 () Bool)

(declare-fun d!1865858 () Bool)

(assert (= bs!1409866 (and d!1865858 b!5951545)))

(declare-fun lambda!324803 () Int)

(assert (=> bs!1409866 (= (= lt!2313037 lt!2313246) (= lambda!324803 lambda!324801))))

(declare-fun bs!1409867 () Bool)

(assert (= bs!1409867 (and d!1865858 b!5951547)))

(assert (=> bs!1409867 (= (= lt!2313037 lt!2313248) (= lambda!324803 lambda!324802))))

(declare-fun bs!1409868 () Bool)

(assert (= bs!1409868 (and d!1865858 d!1865262)))

(assert (=> bs!1409868 (not (= lambda!324803 lambda!324663))))

(declare-fun bs!1409869 () Bool)

(assert (= bs!1409869 (and d!1865858 b!5949946)))

(assert (=> bs!1409869 (= (= lt!2313037 lt!2313043) (= lambda!324803 lambda!324635))))

(declare-fun bs!1409870 () Bool)

(assert (= bs!1409870 (and d!1865858 d!1865354)))

(assert (=> bs!1409870 (not (= lambda!324803 lambda!324704))))

(declare-fun bs!1409871 () Bool)

(assert (= bs!1409871 (and d!1865858 d!1865258)))

(assert (=> bs!1409871 (not (= lambda!324803 lambda!324662))))

(declare-fun bs!1409872 () Bool)

(assert (= bs!1409872 (and d!1865858 d!1865750)))

(assert (=> bs!1409872 (not (= lambda!324803 lambda!324778))))

(declare-fun bs!1409873 () Bool)

(assert (= bs!1409873 (and d!1865858 b!5951427)))

(assert (=> bs!1409873 (= (= lt!2313037 lt!2313226) (= lambda!324803 lambda!324798))))

(declare-fun bs!1409874 () Bool)

(assert (= bs!1409874 (and d!1865858 d!1865252)))

(assert (=> bs!1409874 (not (= lambda!324803 lambda!324657))))

(declare-fun bs!1409875 () Bool)

(assert (= bs!1409875 (and d!1865858 d!1865584)))

(assert (=> bs!1409875 (not (= lambda!324803 lambda!324747))))

(declare-fun bs!1409876 () Bool)

(assert (= bs!1409876 (and d!1865858 d!1865598)))

(assert (=> bs!1409876 (not (= lambda!324803 lambda!324752))))

(declare-fun bs!1409877 () Bool)

(assert (= bs!1409877 (and d!1865858 b!5951425)))

(assert (=> bs!1409877 (= (= lt!2313037 lt!2313224) (= lambda!324803 lambda!324797))))

(declare-fun bs!1409878 () Bool)

(assert (= bs!1409878 (and d!1865858 d!1865552)))

(assert (=> bs!1409878 (not (= lambda!324803 lambda!324744))))

(declare-fun bs!1409879 () Bool)

(assert (= bs!1409879 (and d!1865858 d!1865362)))

(assert (=> bs!1409879 (not (= lambda!324803 lambda!324707))))

(declare-fun bs!1409880 () Bool)

(assert (= bs!1409880 (and d!1865858 b!5949944)))

(assert (=> bs!1409880 (= (= lt!2313037 lt!2313041) (= lambda!324803 lambda!324634))))

(declare-fun bs!1409881 () Bool)

(assert (= bs!1409881 (and d!1865858 b!5949941)))

(assert (=> bs!1409881 (= (= lt!2313037 lt!2313039) (= lambda!324803 lambda!324633))))

(declare-fun bs!1409882 () Bool)

(assert (= bs!1409882 (and d!1865858 d!1865790)))

(assert (=> bs!1409882 (= (= lt!2313037 lt!2313041) (= lambda!324803 lambda!324795))))

(declare-fun bs!1409883 () Bool)

(assert (= bs!1409883 (and d!1865858 d!1865316)))

(assert (=> bs!1409883 (not (= lambda!324803 lambda!324700))))

(declare-fun bs!1409884 () Bool)

(assert (= bs!1409884 (and d!1865858 b!5949939)))

(assert (=> bs!1409884 (= lambda!324803 lambda!324632)))

(assert (=> d!1865858 true))

(assert (=> d!1865858 (forall!15076 (t!377687 (exprs!5877 lt!2313004)) lambda!324803)))

(declare-fun lt!2313250 () Unit!157257)

(assert (=> d!1865858 (= lt!2313250 (choose!44845 (t!377687 (exprs!5877 lt!2313004)) lt!2313037 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))))))

(assert (=> d!1865858 (>= lt!2313037 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2313004)))))))

(assert (=> d!1865858 (= (lemmaForallRegexDepthBiggerThanTransitive!41 (t!377687 (exprs!5877 lt!2313004)) lt!2313037 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 lt!2313004))))) lt!2313250)))

(declare-fun bs!1409885 () Bool)

(assert (= bs!1409885 d!1865858))

(declare-fun m!6839410 () Bool)

(assert (=> bs!1409885 m!6839410))

(assert (=> bs!1409885 m!6837810))

(declare-fun m!6839412 () Bool)

(assert (=> bs!1409885 m!6839412))

(assert (=> b!5949939 d!1865858))

(declare-fun bm!474103 () Bool)

(declare-fun call!474109 () Int)

(declare-fun call!474108 () Int)

(assert (=> bm!474103 (= call!474109 call!474108)))

(declare-fun b!5951659 () Bool)

(declare-fun e!3640941 () Bool)

(declare-fun lt!2313251 () Int)

(declare-fun call!474112 () Int)

(assert (=> b!5951659 (= e!3640941 (> lt!2313251 call!474112))))

(declare-fun d!1865860 () Bool)

(declare-fun e!3640947 () Bool)

(assert (=> d!1865860 e!3640947))

(declare-fun res!2491352 () Bool)

(assert (=> d!1865860 (=> (not res!2491352) (not e!3640947))))

(assert (=> d!1865860 (= res!2491352 (> lt!2313251 0))))

(declare-fun e!3640944 () Int)

(assert (=> d!1865860 (= lt!2313251 e!3640944)))

(declare-fun c!1059120 () Bool)

(assert (=> d!1865860 (= c!1059120 ((_ is ElementMatch!15993) (h!70602 (exprs!5877 lt!2313004))))))

(assert (=> d!1865860 (= (regexDepth!249 (h!70602 (exprs!5877 lt!2313004))) lt!2313251)))

(declare-fun b!5951660 () Bool)

(declare-fun e!3640942 () Bool)

(declare-fun e!3640940 () Bool)

(assert (=> b!5951660 (= e!3640942 e!3640940)))

(declare-fun c!1059121 () Bool)

(assert (=> b!5951660 (= c!1059121 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun bm!474104 () Bool)

(declare-fun call!474113 () Int)

(declare-fun c!1059118 () Bool)

(declare-fun call!474114 () Int)

(assert (=> bm!474104 (= call!474113 (maxBigInt!0 (ite c!1059118 call!474114 call!474109) (ite c!1059118 call!474109 call!474114)))))

(declare-fun b!5951661 () Bool)

(declare-fun e!3640946 () Bool)

(declare-fun call!474110 () Int)

(assert (=> b!5951661 (= e!3640946 (> lt!2313251 call!474110))))

(declare-fun bm!474105 () Bool)

(declare-fun call!474111 () Int)

(assert (=> bm!474105 (= call!474112 call!474111)))

(declare-fun b!5951662 () Bool)

(declare-fun e!3640943 () Int)

(assert (=> b!5951662 (= e!3640943 (+ 1 call!474113))))

(declare-fun b!5951663 () Bool)

(declare-fun e!3640939 () Bool)

(assert (=> b!5951663 (= e!3640942 e!3640939)))

(declare-fun res!2491353 () Bool)

(assert (=> b!5951663 (= res!2491353 (> lt!2313251 call!474110))))

(assert (=> b!5951663 (=> (not res!2491353) (not e!3640939))))

(declare-fun b!5951664 () Bool)

(declare-fun e!3640945 () Int)

(assert (=> b!5951664 (= e!3640944 e!3640945)))

(declare-fun c!1059123 () Bool)

(assert (=> b!5951664 (= c!1059123 ((_ is Star!15993) (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun b!5951665 () Bool)

(assert (=> b!5951665 (= c!1059118 ((_ is Union!15993) (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun e!3640948 () Int)

(assert (=> b!5951665 (= e!3640945 e!3640948)))

(declare-fun b!5951666 () Bool)

(assert (=> b!5951666 (= e!3640945 (+ 1 call!474108))))

(declare-fun b!5951667 () Bool)

(declare-fun c!1059117 () Bool)

(assert (=> b!5951667 (= c!1059117 ((_ is Star!15993) (h!70602 (exprs!5877 lt!2313004))))))

(assert (=> b!5951667 (= e!3640940 e!3640941)))

(declare-fun b!5951668 () Bool)

(assert (=> b!5951668 (= e!3640941 (= lt!2313251 1))))

(declare-fun b!5951669 () Bool)

(assert (=> b!5951669 (= e!3640944 1)))

(declare-fun bm!474106 () Bool)

(declare-fun c!1059122 () Bool)

(assert (=> bm!474106 (= call!474111 (regexDepth!249 (ite c!1059122 (regTwo!32499 (h!70602 (exprs!5877 lt!2313004))) (ite c!1059121 (regOne!32498 (h!70602 (exprs!5877 lt!2313004))) (reg!16322 (h!70602 (exprs!5877 lt!2313004)))))))))

(declare-fun b!5951670 () Bool)

(assert (=> b!5951670 (= e!3640943 1)))

(declare-fun b!5951671 () Bool)

(assert (=> b!5951671 (= e!3640948 e!3640943)))

(declare-fun c!1059119 () Bool)

(assert (=> b!5951671 (= c!1059119 ((_ is Concat!24838) (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun b!5951672 () Bool)

(assert (=> b!5951672 (= e!3640939 (> lt!2313251 call!474111))))

(declare-fun bm!474107 () Bool)

(assert (=> bm!474107 (= call!474108 (regexDepth!249 (ite c!1059123 (reg!16322 (h!70602 (exprs!5877 lt!2313004))) (ite c!1059118 (regTwo!32499 (h!70602 (exprs!5877 lt!2313004))) (regOne!32498 (h!70602 (exprs!5877 lt!2313004)))))))))

(declare-fun b!5951673 () Bool)

(assert (=> b!5951673 (= e!3640947 e!3640942)))

(assert (=> b!5951673 (= c!1059122 ((_ is Union!15993) (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun b!5951674 () Bool)

(assert (=> b!5951674 (= e!3640948 (+ 1 call!474113))))

(declare-fun bm!474108 () Bool)

(assert (=> bm!474108 (= call!474110 (regexDepth!249 (ite c!1059122 (regOne!32499 (h!70602 (exprs!5877 lt!2313004))) (regTwo!32498 (h!70602 (exprs!5877 lt!2313004))))))))

(declare-fun bm!474109 () Bool)

(assert (=> bm!474109 (= call!474114 (regexDepth!249 (ite c!1059118 (regOne!32499 (h!70602 (exprs!5877 lt!2313004))) (regTwo!32498 (h!70602 (exprs!5877 lt!2313004))))))))

(declare-fun b!5951675 () Bool)

(declare-fun res!2491354 () Bool)

(assert (=> b!5951675 (=> (not res!2491354) (not e!3640946))))

(assert (=> b!5951675 (= res!2491354 (> lt!2313251 call!474112))))

(assert (=> b!5951675 (= e!3640940 e!3640946)))

(assert (= (and d!1865860 c!1059120) b!5951669))

(assert (= (and d!1865860 (not c!1059120)) b!5951664))

(assert (= (and b!5951664 c!1059123) b!5951666))

(assert (= (and b!5951664 (not c!1059123)) b!5951665))

(assert (= (and b!5951665 c!1059118) b!5951674))

(assert (= (and b!5951665 (not c!1059118)) b!5951671))

(assert (= (and b!5951671 c!1059119) b!5951662))

(assert (= (and b!5951671 (not c!1059119)) b!5951670))

(assert (= (or b!5951674 b!5951662) bm!474103))

(assert (= (or b!5951674 b!5951662) bm!474109))

(assert (= (or b!5951674 b!5951662) bm!474104))

(assert (= (or b!5951666 bm!474103) bm!474107))

(assert (= (and d!1865860 res!2491352) b!5951673))

(assert (= (and b!5951673 c!1059122) b!5951663))

(assert (= (and b!5951673 (not c!1059122)) b!5951660))

(assert (= (and b!5951663 res!2491353) b!5951672))

(assert (= (and b!5951660 c!1059121) b!5951675))

(assert (= (and b!5951660 (not c!1059121)) b!5951667))

(assert (= (and b!5951675 res!2491354) b!5951661))

(assert (= (and b!5951667 c!1059117) b!5951659))

(assert (= (and b!5951667 (not c!1059117)) b!5951668))

(assert (= (or b!5951675 b!5951659) bm!474105))

(assert (= (or b!5951672 bm!474105) bm!474106))

(assert (= (or b!5951663 b!5951661) bm!474108))

(declare-fun m!6839416 () Bool)

(assert (=> bm!474109 m!6839416))

(declare-fun m!6839418 () Bool)

(assert (=> bm!474108 m!6839418))

(declare-fun m!6839420 () Bool)

(assert (=> bm!474104 m!6839420))

(declare-fun m!6839424 () Bool)

(assert (=> bm!474107 m!6839424))

(declare-fun m!6839426 () Bool)

(assert (=> bm!474106 m!6839426))

(assert (=> b!5949939 d!1865860))

(declare-fun d!1865870 () Bool)

(declare-fun res!2491355 () Bool)

(declare-fun e!3640950 () Bool)

(assert (=> d!1865870 (=> res!2491355 e!3640950)))

(assert (=> d!1865870 (= res!2491355 ((_ is Nil!64154) (t!377687 (exprs!5877 lt!2313004))))))

(assert (=> d!1865870 (= (forall!15076 (t!377687 (exprs!5877 lt!2313004)) lambda!324632) e!3640950)))

(declare-fun b!5951677 () Bool)

(declare-fun e!3640951 () Bool)

(assert (=> b!5951677 (= e!3640950 e!3640951)))

(declare-fun res!2491356 () Bool)

(assert (=> b!5951677 (=> (not res!2491356) (not e!3640951))))

(assert (=> b!5951677 (= res!2491356 (dynLambda!25100 lambda!324632 (h!70602 (t!377687 (exprs!5877 lt!2313004)))))))

(declare-fun b!5951678 () Bool)

(assert (=> b!5951678 (= e!3640951 (forall!15076 (t!377687 (t!377687 (exprs!5877 lt!2313004))) lambda!324632))))

(assert (= (and d!1865870 (not res!2491355)) b!5951677))

(assert (= (and b!5951677 res!2491356) b!5951678))

(declare-fun b_lambda!223683 () Bool)

(assert (=> (not b_lambda!223683) (not b!5951677)))

(declare-fun m!6839432 () Bool)

(assert (=> b!5951677 m!6839432))

(declare-fun m!6839434 () Bool)

(assert (=> b!5951678 m!6839434))

(assert (=> b!5949939 d!1865870))

(declare-fun d!1865882 () Bool)

(assert (=> d!1865882 (= (isEmpty!36033 (tail!11613 (exprs!5877 (h!70603 zl!343)))) ((_ is Nil!64154) (tail!11613 (exprs!5877 (h!70603 zl!343)))))))

(assert (=> b!5950108 d!1865882))

(declare-fun d!1865886 () Bool)

(assert (=> d!1865886 (= (tail!11613 (exprs!5877 (h!70603 zl!343))) (t!377687 (exprs!5877 (h!70603 zl!343))))))

(assert (=> b!5950108 d!1865886))

(assert (=> bm!473827 d!1865582))

(assert (=> b!5950112 d!1865250))

(assert (=> b!5950252 d!1865600))

(assert (=> b!5950252 d!1865590))

(declare-fun d!1865890 () Bool)

(assert (=> d!1865890 (= (isUnion!860 lt!2313138) ((_ is Union!15993) lt!2313138))))

(assert (=> b!5950459 d!1865890))

(declare-fun b!5951693 () Bool)

(declare-fun e!3640968 () Bool)

(declare-fun e!3640967 () Bool)

(assert (=> b!5951693 (= e!3640968 e!3640967)))

(declare-fun res!2491369 () Bool)

(declare-fun call!474120 () Bool)

(assert (=> b!5951693 (= res!2491369 call!474120)))

(assert (=> b!5951693 (=> (not res!2491369) (not e!3640967))))

(declare-fun b!5951694 () Bool)

(declare-fun e!3640969 () Bool)

(declare-fun call!474119 () Bool)

(assert (=> b!5951694 (= e!3640969 call!474119)))

(declare-fun b!5951695 () Bool)

(assert (=> b!5951695 (= e!3640967 call!474119)))

(declare-fun bm!474114 () Bool)

(declare-fun c!1059126 () Bool)

(assert (=> bm!474114 (= call!474120 (nullable!5988 (ite c!1059126 (regOne!32499 (regOne!32498 r!7292)) (regOne!32498 (regOne!32498 r!7292)))))))

(declare-fun b!5951696 () Bool)

(declare-fun e!3640966 () Bool)

(assert (=> b!5951696 (= e!3640966 e!3640968)))

(assert (=> b!5951696 (= c!1059126 ((_ is Union!15993) (regOne!32498 r!7292)))))

(declare-fun b!5951698 () Bool)

(assert (=> b!5951698 (= e!3640968 e!3640969)))

(declare-fun res!2491371 () Bool)

(assert (=> b!5951698 (= res!2491371 call!474120)))

(assert (=> b!5951698 (=> res!2491371 e!3640969)))

(declare-fun bm!474115 () Bool)

(assert (=> bm!474115 (= call!474119 (nullable!5988 (ite c!1059126 (regTwo!32499 (regOne!32498 r!7292)) (regTwo!32498 (regOne!32498 r!7292)))))))

(declare-fun b!5951699 () Bool)

(declare-fun e!3640965 () Bool)

(assert (=> b!5951699 (= e!3640965 e!3640966)))

(declare-fun res!2491367 () Bool)

(assert (=> b!5951699 (=> res!2491367 e!3640966)))

(assert (=> b!5951699 (= res!2491367 ((_ is Star!15993) (regOne!32498 r!7292)))))

(declare-fun d!1865898 () Bool)

(declare-fun res!2491370 () Bool)

(declare-fun e!3640964 () Bool)

(assert (=> d!1865898 (=> res!2491370 e!3640964)))

(assert (=> d!1865898 (= res!2491370 ((_ is EmptyExpr!15993) (regOne!32498 r!7292)))))

(assert (=> d!1865898 (= (nullableFct!1960 (regOne!32498 r!7292)) e!3640964)))

(declare-fun b!5951697 () Bool)

(assert (=> b!5951697 (= e!3640964 e!3640965)))

(declare-fun res!2491368 () Bool)

(assert (=> b!5951697 (=> (not res!2491368) (not e!3640965))))

(assert (=> b!5951697 (= res!2491368 (and (not ((_ is EmptyLang!15993) (regOne!32498 r!7292))) (not ((_ is ElementMatch!15993) (regOne!32498 r!7292)))))))

(assert (= (and d!1865898 (not res!2491370)) b!5951697))

(assert (= (and b!5951697 res!2491368) b!5951699))

(assert (= (and b!5951699 (not res!2491367)) b!5951696))

(assert (= (and b!5951696 c!1059126) b!5951698))

(assert (= (and b!5951696 (not c!1059126)) b!5951693))

(assert (= (and b!5951698 (not res!2491371)) b!5951694))

(assert (= (and b!5951693 res!2491369) b!5951695))

(assert (= (or b!5951694 b!5951695) bm!474115))

(assert (= (or b!5951698 b!5951693) bm!474114))

(declare-fun m!6839442 () Bool)

(assert (=> bm!474114 m!6839442))

(declare-fun m!6839444 () Bool)

(assert (=> bm!474115 m!6839444))

(assert (=> d!1865322 d!1865898))

(assert (=> b!5949896 d!1865256))

(declare-fun bs!1409900 () Bool)

(declare-fun d!1865900 () Bool)

(assert (= bs!1409900 (and d!1865900 b!5951545)))

(declare-fun lambda!324804 () Int)

(assert (=> bs!1409900 (not (= lambda!324804 lambda!324801))))

(declare-fun bs!1409901 () Bool)

(assert (= bs!1409901 (and d!1865900 b!5951547)))

(assert (=> bs!1409901 (not (= lambda!324804 lambda!324802))))

(declare-fun bs!1409902 () Bool)

(assert (= bs!1409902 (and d!1865900 d!1865262)))

(assert (=> bs!1409902 (= lambda!324804 lambda!324663)))

(declare-fun bs!1409903 () Bool)

(assert (= bs!1409903 (and d!1865900 d!1865858)))

(assert (=> bs!1409903 (not (= lambda!324804 lambda!324803))))

(declare-fun bs!1409904 () Bool)

(assert (= bs!1409904 (and d!1865900 b!5949946)))

(assert (=> bs!1409904 (not (= lambda!324804 lambda!324635))))

(declare-fun bs!1409905 () Bool)

(assert (= bs!1409905 (and d!1865900 d!1865354)))

(assert (=> bs!1409905 (= lambda!324804 lambda!324704)))

(declare-fun bs!1409906 () Bool)

(assert (= bs!1409906 (and d!1865900 d!1865258)))

(assert (=> bs!1409906 (= lambda!324804 lambda!324662)))

(declare-fun bs!1409907 () Bool)

(assert (= bs!1409907 (and d!1865900 d!1865750)))

(assert (=> bs!1409907 (= lambda!324804 lambda!324778)))

(declare-fun bs!1409908 () Bool)

(assert (= bs!1409908 (and d!1865900 b!5951427)))

(assert (=> bs!1409908 (not (= lambda!324804 lambda!324798))))

(declare-fun bs!1409909 () Bool)

(assert (= bs!1409909 (and d!1865900 d!1865252)))

(assert (=> bs!1409909 (= lambda!324804 lambda!324657)))

(declare-fun bs!1409910 () Bool)

(assert (= bs!1409910 (and d!1865900 d!1865584)))

(assert (=> bs!1409910 (= lambda!324804 lambda!324747)))

(declare-fun bs!1409911 () Bool)

(assert (= bs!1409911 (and d!1865900 d!1865598)))

(assert (=> bs!1409911 (= lambda!324804 lambda!324752)))

(declare-fun bs!1409912 () Bool)

(assert (= bs!1409912 (and d!1865900 b!5951425)))

(assert (=> bs!1409912 (not (= lambda!324804 lambda!324797))))

(declare-fun bs!1409913 () Bool)

(assert (= bs!1409913 (and d!1865900 d!1865552)))

(assert (=> bs!1409913 (= lambda!324804 lambda!324744)))

(declare-fun bs!1409914 () Bool)

(assert (= bs!1409914 (and d!1865900 d!1865362)))

(assert (=> bs!1409914 (= lambda!324804 lambda!324707)))

(declare-fun bs!1409915 () Bool)

(assert (= bs!1409915 (and d!1865900 b!5949944)))

(assert (=> bs!1409915 (not (= lambda!324804 lambda!324634))))

(declare-fun bs!1409916 () Bool)

(assert (= bs!1409916 (and d!1865900 b!5949941)))

(assert (=> bs!1409916 (not (= lambda!324804 lambda!324633))))

(declare-fun bs!1409917 () Bool)

(assert (= bs!1409917 (and d!1865900 d!1865790)))

(assert (=> bs!1409917 (not (= lambda!324804 lambda!324795))))

(declare-fun bs!1409918 () Bool)

(assert (= bs!1409918 (and d!1865900 d!1865316)))

(assert (=> bs!1409918 (= lambda!324804 lambda!324700)))

(declare-fun bs!1409919 () Bool)

(assert (= bs!1409919 (and d!1865900 b!5949939)))

(assert (=> bs!1409919 (not (= lambda!324804 lambda!324632))))

(assert (=> d!1865900 (= (inv!83229 setElem!40437) (forall!15076 (exprs!5877 setElem!40437) lambda!324804))))

(declare-fun bs!1409920 () Bool)

(assert (= bs!1409920 d!1865900))

(declare-fun m!6839446 () Bool)

(assert (=> bs!1409920 m!6839446))

(assert (=> setNonEmpty!40437 d!1865900))

(declare-fun d!1865902 () Bool)

(assert (=> d!1865902 (= (Exists!3063 lambda!324715) (choose!44842 lambda!324715))))

(declare-fun bs!1409921 () Bool)

(assert (= bs!1409921 d!1865902))

(declare-fun m!6839448 () Bool)

(assert (=> bs!1409921 m!6839448))

(assert (=> d!1865368 d!1865902))

(declare-fun d!1865904 () Bool)

(assert (=> d!1865904 (= (Exists!3063 lambda!324716) (choose!44842 lambda!324716))))

(declare-fun bs!1409922 () Bool)

(assert (= bs!1409922 d!1865904))

(declare-fun m!6839450 () Bool)

(assert (=> bs!1409922 m!6839450))

(assert (=> d!1865368 d!1865904))

(declare-fun bs!1409923 () Bool)

(declare-fun d!1865906 () Bool)

(assert (= bs!1409923 (and d!1865906 d!1865366)))

(declare-fun lambda!324809 () Int)

(assert (=> bs!1409923 (= lambda!324809 lambda!324710)))

(declare-fun bs!1409924 () Bool)

(assert (= bs!1409924 (and d!1865906 b!5951039)))

(assert (=> bs!1409924 (not (= lambda!324809 lambda!324753))))

(declare-fun bs!1409925 () Bool)

(assert (= bs!1409925 (and d!1865906 b!5949708)))

(assert (=> bs!1409925 (not (= lambda!324809 lambda!324607))))

(assert (=> bs!1409925 (= lambda!324809 lambda!324606)))

(declare-fun bs!1409926 () Bool)

(assert (= bs!1409926 (and d!1865906 b!5950188)))

(assert (=> bs!1409926 (not (= lambda!324809 lambda!324673))))

(declare-fun bs!1409927 () Bool)

(assert (= bs!1409927 (and d!1865906 d!1865756)))

(assert (=> bs!1409927 (= lambda!324809 lambda!324783)))

(declare-fun bs!1409928 () Bool)

(assert (= bs!1409928 (and d!1865906 d!1865368)))

(assert (=> bs!1409928 (= lambda!324809 lambda!324715)))

(declare-fun bs!1409929 () Bool)

(assert (= bs!1409929 (and d!1865906 b!5951040)))

(assert (=> bs!1409929 (not (= lambda!324809 lambda!324757))))

(declare-fun bs!1409930 () Bool)

(assert (= bs!1409930 (and d!1865906 b!5950187)))

(assert (=> bs!1409930 (not (= lambda!324809 lambda!324672))))

(assert (=> bs!1409928 (not (= lambda!324809 lambda!324716))))

(assert (=> d!1865906 true))

(assert (=> d!1865906 true))

(assert (=> d!1865906 true))

(declare-fun lambda!324810 () Int)

(assert (=> bs!1409923 (not (= lambda!324810 lambda!324710))))

(declare-fun bs!1409931 () Bool)

(assert (= bs!1409931 d!1865906))

(assert (=> bs!1409931 (not (= lambda!324810 lambda!324809))))

(assert (=> bs!1409924 (not (= lambda!324810 lambda!324753))))

(assert (=> bs!1409925 (= lambda!324810 lambda!324607)))

(assert (=> bs!1409925 (not (= lambda!324810 lambda!324606))))

(assert (=> bs!1409926 (= lambda!324810 lambda!324673)))

(assert (=> bs!1409927 (not (= lambda!324810 lambda!324783))))

(assert (=> bs!1409928 (not (= lambda!324810 lambda!324715))))

(assert (=> bs!1409929 (= (and (= (regOne!32498 r!7292) (regOne!32498 (regTwo!32499 r!7292))) (= (regTwo!32498 r!7292) (regTwo!32498 (regTwo!32499 r!7292)))) (= lambda!324810 lambda!324757))))

(assert (=> bs!1409930 (not (= lambda!324810 lambda!324672))))

(assert (=> bs!1409928 (= lambda!324810 lambda!324716)))

(assert (=> d!1865906 true))

(assert (=> d!1865906 true))

(assert (=> d!1865906 true))

(assert (=> d!1865906 (= (Exists!3063 lambda!324809) (Exists!3063 lambda!324810))))

(assert (=> d!1865906 true))

(declare-fun _$90!1644 () Unit!157257)

(assert (=> d!1865906 (= (choose!44841 (regOne!32498 r!7292) (regTwo!32498 r!7292) s!2326) _$90!1644)))

(declare-fun m!6839452 () Bool)

(assert (=> bs!1409931 m!6839452))

(declare-fun m!6839454 () Bool)

(assert (=> bs!1409931 m!6839454))

(assert (=> d!1865368 d!1865906))

(assert (=> d!1865368 d!1865746))

(assert (=> d!1865304 d!1865530))

(declare-fun d!1865908 () Bool)

(assert (=> d!1865908 (= (isEmpty!36038 (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) Nil!64156 s!2326 s!2326)) (not ((_ is Some!15883) (findConcatSeparation!2298 (regOne!32498 r!7292) (regTwo!32498 r!7292) Nil!64156 s!2326 s!2326))))))

(assert (=> d!1865370 d!1865908))

(declare-fun bs!1409932 () Bool)

(declare-fun d!1865910 () Bool)

(assert (= bs!1409932 (and d!1865910 b!5950045)))

(declare-fun lambda!324811 () Int)

(assert (=> bs!1409932 (not (= lambda!324811 lambda!324654))))

(declare-fun bs!1409933 () Bool)

(assert (= bs!1409933 (and d!1865910 d!1865688)))

(assert (=> bs!1409933 (= lambda!324811 lambda!324771)))

(declare-fun bs!1409934 () Bool)

(assert (= bs!1409934 (and d!1865910 d!1865708)))

(assert (=> bs!1409934 (= lambda!324811 lambda!324773)))

(declare-fun bs!1409935 () Bool)

(assert (= bs!1409935 (and d!1865910 b!5950036)))

(assert (=> bs!1409935 (not (= lambda!324811 lambda!324651))))

(declare-fun bs!1409936 () Bool)

(assert (= bs!1409936 (and d!1865910 b!5950034)))

(assert (=> bs!1409936 (not (= lambda!324811 lambda!324650))))

(declare-fun bs!1409937 () Bool)

(assert (= bs!1409937 (and d!1865910 b!5950043)))

(assert (=> bs!1409937 (not (= lambda!324811 lambda!324653))))

(declare-fun bs!1409938 () Bool)

(assert (= bs!1409938 (and d!1865910 d!1865630)))

(assert (=> bs!1409938 (= lambda!324811 lambda!324762)))

(declare-fun bs!1409939 () Bool)

(assert (= bs!1409939 (and d!1865910 d!1865594)))

(assert (=> bs!1409939 (= lambda!324811 lambda!324751)))

(assert (=> d!1865910 (= (nullableZipper!1799 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326))) (exists!2352 (derivationStepZipper!1974 lt!2312981 (h!70604 s!2326)) lambda!324811))))

(declare-fun bs!1409940 () Bool)

(assert (= bs!1409940 d!1865910))

(assert (=> bs!1409940 m!6837576))

(declare-fun m!6839456 () Bool)

(assert (=> bs!1409940 m!6839456))

(assert (=> b!5950321 d!1865910))

(assert (=> b!5950495 d!1865742))

(declare-fun bs!1409941 () Bool)

(declare-fun d!1865912 () Bool)

(assert (= bs!1409941 (and d!1865912 d!1865910)))

(declare-fun lambda!324812 () Int)

(assert (=> bs!1409941 (= lambda!324812 lambda!324811)))

(declare-fun bs!1409942 () Bool)

(assert (= bs!1409942 (and d!1865912 b!5950045)))

(assert (=> bs!1409942 (not (= lambda!324812 lambda!324654))))

(declare-fun bs!1409943 () Bool)

(assert (= bs!1409943 (and d!1865912 d!1865688)))

(assert (=> bs!1409943 (= lambda!324812 lambda!324771)))

(declare-fun bs!1409944 () Bool)

(assert (= bs!1409944 (and d!1865912 d!1865708)))

(assert (=> bs!1409944 (= lambda!324812 lambda!324773)))

(declare-fun bs!1409945 () Bool)

(assert (= bs!1409945 (and d!1865912 b!5950036)))

(assert (=> bs!1409945 (not (= lambda!324812 lambda!324651))))

(declare-fun bs!1409946 () Bool)

(assert (= bs!1409946 (and d!1865912 b!5950034)))

(assert (=> bs!1409946 (not (= lambda!324812 lambda!324650))))

(declare-fun bs!1409947 () Bool)

(assert (= bs!1409947 (and d!1865912 b!5950043)))

(assert (=> bs!1409947 (not (= lambda!324812 lambda!324653))))

(declare-fun bs!1409948 () Bool)

(assert (= bs!1409948 (and d!1865912 d!1865630)))

(assert (=> bs!1409948 (= lambda!324812 lambda!324762)))

(declare-fun bs!1409949 () Bool)

(assert (= bs!1409949 (and d!1865912 d!1865594)))

(assert (=> bs!1409949 (= lambda!324812 lambda!324751)))

(assert (=> d!1865912 (= (nullableZipper!1799 lt!2312981) (exists!2352 lt!2312981 lambda!324812))))

(declare-fun bs!1409950 () Bool)

(assert (= bs!1409950 d!1865912))

(declare-fun m!6839458 () Bool)

(assert (=> bs!1409950 m!6839458))

(assert (=> b!5950317 d!1865912))

(declare-fun d!1865914 () Bool)

(assert (=> d!1865914 (= (flatMap!1506 lt!2312979 lambda!324701) (choose!44833 lt!2312979 lambda!324701))))

(declare-fun bs!1409951 () Bool)

(assert (= bs!1409951 d!1865914))

(declare-fun m!6839460 () Bool)

(assert (=> bs!1409951 m!6839460))

(assert (=> d!1865352 d!1865914))

(declare-fun d!1865916 () Bool)

(assert (=> d!1865916 true))

(declare-fun setRes!40446 () Bool)

(assert (=> d!1865916 setRes!40446))

(declare-fun condSetEmpty!40446 () Bool)

(declare-fun res!2491382 () (InoxSet Context!10754))

(assert (=> d!1865916 (= condSetEmpty!40446 (= res!2491382 ((as const (Array Context!10754 Bool)) false)))))

(assert (=> d!1865916 (= (choose!44833 lt!2312979 lambda!324608) res!2491382)))

(declare-fun setIsEmpty!40446 () Bool)

(assert (=> setIsEmpty!40446 setRes!40446))

(declare-fun setNonEmpty!40446 () Bool)

(declare-fun setElem!40446 () Context!10754)

(declare-fun tp!1656016 () Bool)

(declare-fun e!3640976 () Bool)

(assert (=> setNonEmpty!40446 (= setRes!40446 (and tp!1656016 (inv!83229 setElem!40446) e!3640976))))

(declare-fun setRest!40446 () (InoxSet Context!10754))

(assert (=> setNonEmpty!40446 (= res!2491382 ((_ map or) (store ((as const (Array Context!10754 Bool)) false) setElem!40446 true) setRest!40446))))

(declare-fun b!5951710 () Bool)

(declare-fun tp!1656015 () Bool)

(assert (=> b!5951710 (= e!3640976 tp!1656015)))

(assert (= (and d!1865916 condSetEmpty!40446) setIsEmpty!40446))

(assert (= (and d!1865916 (not condSetEmpty!40446)) setNonEmpty!40446))

(assert (= setNonEmpty!40446 b!5951710))

(declare-fun m!6839462 () Bool)

(assert (=> setNonEmpty!40446 m!6839462))

(assert (=> d!1865334 d!1865916))

(assert (=> b!5950290 d!1865322))

(assert (=> d!1865202 d!1865530))

(declare-fun d!1865918 () Bool)

(assert (=> d!1865918 (= (nullable!5988 (h!70602 (exprs!5877 lt!2312978))) (nullableFct!1960 (h!70602 (exprs!5877 lt!2312978))))))

(declare-fun bs!1409952 () Bool)

(assert (= bs!1409952 d!1865918))

(declare-fun m!6839464 () Bool)

(assert (=> bs!1409952 m!6839464))

(assert (=> b!5950373 d!1865918))

(declare-fun d!1865920 () Bool)

(assert (=> d!1865920 (= ($colon$colon!1880 (exprs!5877 lt!2312989) (ite (or c!1058777 c!1058778) (regTwo!32498 (regTwo!32498 r!7292)) (regTwo!32498 r!7292))) (Cons!64154 (ite (or c!1058777 c!1058778) (regTwo!32498 (regTwo!32498 r!7292)) (regTwo!32498 r!7292)) (exprs!5877 lt!2312989)))))

(assert (=> bm!473860 d!1865920))

(declare-fun d!1865922 () Bool)

(declare-fun c!1059127 () Bool)

(assert (=> d!1865922 (= c!1059127 (isEmpty!36036 (tail!11610 (t!377689 s!2326))))))

(declare-fun e!3640977 () Bool)

(assert (=> d!1865922 (= (matchZipper!2029 (derivationStepZipper!1974 lt!2312994 (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))) e!3640977)))

(declare-fun b!5951711 () Bool)

(assert (=> b!5951711 (= e!3640977 (nullableZipper!1799 (derivationStepZipper!1974 lt!2312994 (head!12525 (t!377689 s!2326)))))))

(declare-fun b!5951712 () Bool)

(assert (=> b!5951712 (= e!3640977 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312994 (head!12525 (t!377689 s!2326))) (head!12525 (tail!11610 (t!377689 s!2326)))) (tail!11610 (tail!11610 (t!377689 s!2326)))))))

(assert (= (and d!1865922 c!1059127) b!5951711))

(assert (= (and d!1865922 (not c!1059127)) b!5951712))

(assert (=> d!1865922 m!6837750))

(assert (=> d!1865922 m!6838610))

(assert (=> b!5951711 m!6837756))

(declare-fun m!6839466 () Bool)

(assert (=> b!5951711 m!6839466))

(assert (=> b!5951712 m!6837750))

(assert (=> b!5951712 m!6838614))

(assert (=> b!5951712 m!6837756))

(assert (=> b!5951712 m!6838614))

(declare-fun m!6839468 () Bool)

(assert (=> b!5951712 m!6839468))

(assert (=> b!5951712 m!6837750))

(assert (=> b!5951712 m!6838618))

(assert (=> b!5951712 m!6839468))

(assert (=> b!5951712 m!6838618))

(declare-fun m!6839470 () Bool)

(assert (=> b!5951712 m!6839470))

(assert (=> b!5949884 d!1865922))

(declare-fun bs!1409953 () Bool)

(declare-fun d!1865924 () Bool)

(assert (= bs!1409953 (and d!1865924 b!5949712)))

(declare-fun lambda!324813 () Int)

(assert (=> bs!1409953 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324813 lambda!324608))))

(declare-fun bs!1409954 () Bool)

(assert (= bs!1409954 (and d!1865924 d!1865852)))

(assert (=> bs!1409954 (= lambda!324813 lambda!324800)))

(declare-fun bs!1409955 () Bool)

(assert (= bs!1409955 (and d!1865924 d!1865300)))

(assert (=> bs!1409955 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324813 lambda!324692))))

(declare-fun bs!1409956 () Bool)

(assert (= bs!1409956 (and d!1865924 d!1865306)))

(assert (=> bs!1409956 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324813 lambda!324696))))

(declare-fun bs!1409957 () Bool)

(assert (= bs!1409957 (and d!1865924 d!1865628)))

(assert (=> bs!1409957 (= lambda!324813 lambda!324761)))

(declare-fun bs!1409958 () Bool)

(assert (= bs!1409958 (and d!1865924 d!1865352)))

(assert (=> bs!1409958 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324813 lambda!324701))))

(declare-fun bs!1409959 () Bool)

(assert (= bs!1409959 (and d!1865924 d!1865620)))

(assert (=> bs!1409959 (= lambda!324813 lambda!324759)))

(declare-fun bs!1409960 () Bool)

(assert (= bs!1409960 (and d!1865924 d!1865588)))

(assert (=> bs!1409960 (= (= (head!12525 (t!377689 s!2326)) (head!12525 s!2326)) (= lambda!324813 lambda!324748))))

(declare-fun bs!1409961 () Bool)

(assert (= bs!1409961 (and d!1865924 d!1865544)))

(assert (=> bs!1409961 (= lambda!324813 lambda!324743)))

(declare-fun bs!1409962 () Bool)

(assert (= bs!1409962 (and d!1865924 d!1865734)))

(assert (=> bs!1409962 (= (= (head!12525 (t!377689 s!2326)) (head!12525 s!2326)) (= lambda!324813 lambda!324775))))

(assert (=> d!1865924 true))

(assert (=> d!1865924 (= (derivationStepZipper!1974 lt!2312994 (head!12525 (t!377689 s!2326))) (flatMap!1506 lt!2312994 lambda!324813))))

(declare-fun bs!1409963 () Bool)

(assert (= bs!1409963 d!1865924))

(declare-fun m!6839472 () Bool)

(assert (=> bs!1409963 m!6839472))

(assert (=> b!5949884 d!1865924))

(assert (=> b!5949884 d!1865548))

(assert (=> b!5949884 d!1865550))

(declare-fun bs!1409964 () Bool)

(declare-fun b!5951713 () Bool)

(assert (= bs!1409964 (and b!5951713 d!1865906)))

(declare-fun lambda!324814 () Int)

(assert (=> bs!1409964 (not (= lambda!324814 lambda!324810))))

(declare-fun bs!1409965 () Bool)

(assert (= bs!1409965 (and b!5951713 d!1865366)))

(assert (=> bs!1409965 (not (= lambda!324814 lambda!324710))))

(assert (=> bs!1409964 (not (= lambda!324814 lambda!324809))))

(declare-fun bs!1409966 () Bool)

(assert (= bs!1409966 (and b!5951713 b!5951039)))

(assert (=> bs!1409966 (= (and (= (reg!16322 (regOne!32499 r!7292)) (reg!16322 (regTwo!32499 r!7292))) (= (regOne!32499 r!7292) (regTwo!32499 r!7292))) (= lambda!324814 lambda!324753))))

(declare-fun bs!1409967 () Bool)

(assert (= bs!1409967 (and b!5951713 b!5949708)))

(assert (=> bs!1409967 (not (= lambda!324814 lambda!324607))))

(assert (=> bs!1409967 (not (= lambda!324814 lambda!324606))))

(declare-fun bs!1409968 () Bool)

(assert (= bs!1409968 (and b!5951713 b!5950188)))

(assert (=> bs!1409968 (not (= lambda!324814 lambda!324673))))

(declare-fun bs!1409969 () Bool)

(assert (= bs!1409969 (and b!5951713 d!1865756)))

(assert (=> bs!1409969 (not (= lambda!324814 lambda!324783))))

(declare-fun bs!1409970 () Bool)

(assert (= bs!1409970 (and b!5951713 d!1865368)))

(assert (=> bs!1409970 (not (= lambda!324814 lambda!324715))))

(declare-fun bs!1409971 () Bool)

(assert (= bs!1409971 (and b!5951713 b!5951040)))

(assert (=> bs!1409971 (not (= lambda!324814 lambda!324757))))

(declare-fun bs!1409972 () Bool)

(assert (= bs!1409972 (and b!5951713 b!5950187)))

(assert (=> bs!1409972 (= (and (= (reg!16322 (regOne!32499 r!7292)) (reg!16322 r!7292)) (= (regOne!32499 r!7292) r!7292)) (= lambda!324814 lambda!324672))))

(assert (=> bs!1409970 (not (= lambda!324814 lambda!324716))))

(assert (=> b!5951713 true))

(assert (=> b!5951713 true))

(declare-fun bs!1409973 () Bool)

(declare-fun b!5951714 () Bool)

(assert (= bs!1409973 (and b!5951714 d!1865906)))

(declare-fun lambda!324815 () Int)

(assert (=> bs!1409973 (= (and (= (regOne!32498 (regOne!32499 r!7292)) (regOne!32498 r!7292)) (= (regTwo!32498 (regOne!32499 r!7292)) (regTwo!32498 r!7292))) (= lambda!324815 lambda!324810))))

(declare-fun bs!1409974 () Bool)

(assert (= bs!1409974 (and b!5951714 d!1865366)))

(assert (=> bs!1409974 (not (= lambda!324815 lambda!324710))))

(assert (=> bs!1409973 (not (= lambda!324815 lambda!324809))))

(declare-fun bs!1409975 () Bool)

(assert (= bs!1409975 (and b!5951714 b!5951039)))

(assert (=> bs!1409975 (not (= lambda!324815 lambda!324753))))

(declare-fun bs!1409976 () Bool)

(assert (= bs!1409976 (and b!5951714 b!5949708)))

(assert (=> bs!1409976 (not (= lambda!324815 lambda!324606))))

(declare-fun bs!1409977 () Bool)

(assert (= bs!1409977 (and b!5951714 b!5950188)))

(assert (=> bs!1409977 (= (and (= (regOne!32498 (regOne!32499 r!7292)) (regOne!32498 r!7292)) (= (regTwo!32498 (regOne!32499 r!7292)) (regTwo!32498 r!7292))) (= lambda!324815 lambda!324673))))

(declare-fun bs!1409978 () Bool)

(assert (= bs!1409978 (and b!5951714 d!1865756)))

(assert (=> bs!1409978 (not (= lambda!324815 lambda!324783))))

(declare-fun bs!1409979 () Bool)

(assert (= bs!1409979 (and b!5951714 d!1865368)))

(assert (=> bs!1409979 (not (= lambda!324815 lambda!324715))))

(declare-fun bs!1409980 () Bool)

(assert (= bs!1409980 (and b!5951714 b!5951040)))

(assert (=> bs!1409980 (= (and (= (regOne!32498 (regOne!32499 r!7292)) (regOne!32498 (regTwo!32499 r!7292))) (= (regTwo!32498 (regOne!32499 r!7292)) (regTwo!32498 (regTwo!32499 r!7292)))) (= lambda!324815 lambda!324757))))

(declare-fun bs!1409981 () Bool)

(assert (= bs!1409981 (and b!5951714 b!5950187)))

(assert (=> bs!1409981 (not (= lambda!324815 lambda!324672))))

(assert (=> bs!1409979 (= (and (= (regOne!32498 (regOne!32499 r!7292)) (regOne!32498 r!7292)) (= (regTwo!32498 (regOne!32499 r!7292)) (regTwo!32498 r!7292))) (= lambda!324815 lambda!324716))))

(declare-fun bs!1409982 () Bool)

(assert (= bs!1409982 (and b!5951714 b!5951713)))

(assert (=> bs!1409982 (not (= lambda!324815 lambda!324814))))

(assert (=> bs!1409976 (= (and (= (regOne!32498 (regOne!32499 r!7292)) (regOne!32498 r!7292)) (= (regTwo!32498 (regOne!32499 r!7292)) (regTwo!32498 r!7292))) (= lambda!324815 lambda!324607))))

(assert (=> b!5951714 true))

(assert (=> b!5951714 true))

(declare-fun d!1865926 () Bool)

(declare-fun c!1059130 () Bool)

(assert (=> d!1865926 (= c!1059130 ((_ is EmptyExpr!15993) (regOne!32499 r!7292)))))

(declare-fun e!3640980 () Bool)

(assert (=> d!1865926 (= (matchRSpec!3094 (regOne!32499 r!7292) s!2326) e!3640980)))

(declare-fun e!3640978 () Bool)

(declare-fun call!474122 () Bool)

(assert (=> b!5951713 (= e!3640978 call!474122)))

(declare-fun e!3640983 () Bool)

(assert (=> b!5951714 (= e!3640983 call!474122)))

(declare-fun bm!474116 () Bool)

(declare-fun call!474121 () Bool)

(assert (=> bm!474116 (= call!474121 (isEmpty!36036 s!2326))))

(declare-fun c!1059128 () Bool)

(declare-fun bm!474117 () Bool)

(assert (=> bm!474117 (= call!474122 (Exists!3063 (ite c!1059128 lambda!324814 lambda!324815)))))

(declare-fun b!5951715 () Bool)

(declare-fun e!3640981 () Bool)

(assert (=> b!5951715 (= e!3640981 e!3640983)))

(assert (=> b!5951715 (= c!1059128 ((_ is Star!15993) (regOne!32499 r!7292)))))

(declare-fun b!5951716 () Bool)

(declare-fun c!1059129 () Bool)

(assert (=> b!5951716 (= c!1059129 ((_ is ElementMatch!15993) (regOne!32499 r!7292)))))

(declare-fun e!3640984 () Bool)

(declare-fun e!3640979 () Bool)

(assert (=> b!5951716 (= e!3640984 e!3640979)))

(declare-fun b!5951717 () Bool)

(declare-fun e!3640982 () Bool)

(assert (=> b!5951717 (= e!3640982 (matchRSpec!3094 (regTwo!32499 (regOne!32499 r!7292)) s!2326))))

(declare-fun b!5951718 () Bool)

(assert (=> b!5951718 (= e!3640979 (= s!2326 (Cons!64156 (c!1058556 (regOne!32499 r!7292)) Nil!64156)))))

(declare-fun b!5951719 () Bool)

(assert (=> b!5951719 (= e!3640981 e!3640982)))

(declare-fun res!2491385 () Bool)

(assert (=> b!5951719 (= res!2491385 (matchRSpec!3094 (regOne!32499 (regOne!32499 r!7292)) s!2326))))

(assert (=> b!5951719 (=> res!2491385 e!3640982)))

(declare-fun b!5951720 () Bool)

(assert (=> b!5951720 (= e!3640980 e!3640984)))

(declare-fun res!2491384 () Bool)

(assert (=> b!5951720 (= res!2491384 (not ((_ is EmptyLang!15993) (regOne!32499 r!7292))))))

(assert (=> b!5951720 (=> (not res!2491384) (not e!3640984))))

(declare-fun b!5951721 () Bool)

(declare-fun res!2491383 () Bool)

(assert (=> b!5951721 (=> res!2491383 e!3640978)))

(assert (=> b!5951721 (= res!2491383 call!474121)))

(assert (=> b!5951721 (= e!3640983 e!3640978)))

(declare-fun b!5951722 () Bool)

(declare-fun c!1059131 () Bool)

(assert (=> b!5951722 (= c!1059131 ((_ is Union!15993) (regOne!32499 r!7292)))))

(assert (=> b!5951722 (= e!3640979 e!3640981)))

(declare-fun b!5951723 () Bool)

(assert (=> b!5951723 (= e!3640980 call!474121)))

(assert (= (and d!1865926 c!1059130) b!5951723))

(assert (= (and d!1865926 (not c!1059130)) b!5951720))

(assert (= (and b!5951720 res!2491384) b!5951716))

(assert (= (and b!5951716 c!1059129) b!5951718))

(assert (= (and b!5951716 (not c!1059129)) b!5951722))

(assert (= (and b!5951722 c!1059131) b!5951719))

(assert (= (and b!5951722 (not c!1059131)) b!5951715))

(assert (= (and b!5951719 (not res!2491385)) b!5951717))

(assert (= (and b!5951715 c!1059128) b!5951721))

(assert (= (and b!5951715 (not c!1059128)) b!5951714))

(assert (= (and b!5951721 (not res!2491383)) b!5951713))

(assert (= (or b!5951713 b!5951714) bm!474117))

(assert (= (or b!5951723 b!5951721) bm!474116))

(assert (=> bm!474116 m!6837984))

(declare-fun m!6839474 () Bool)

(assert (=> bm!474117 m!6839474))

(declare-fun m!6839476 () Bool)

(assert (=> b!5951717 m!6839476))

(declare-fun m!6839478 () Bool)

(assert (=> b!5951719 m!6839478))

(assert (=> b!5950193 d!1865926))

(declare-fun b!5951725 () Bool)

(declare-fun e!3640988 () Bool)

(declare-fun e!3640985 () Bool)

(assert (=> b!5951725 (= e!3640988 e!3640985)))

(declare-fun res!2491389 () Bool)

(assert (=> b!5951725 (= res!2491389 (not (nullable!5988 (reg!16322 (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))))))))

(assert (=> b!5951725 (=> (not res!2491389) (not e!3640985))))

(declare-fun c!1059132 () Bool)

(declare-fun bm!474118 () Bool)

(declare-fun call!474124 () Bool)

(declare-fun c!1059133 () Bool)

(assert (=> bm!474118 (= call!474124 (validRegex!7729 (ite c!1059132 (reg!16322 (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))) (ite c!1059133 (regTwo!32499 (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))) (regTwo!32498 (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292))))))))))

(declare-fun b!5951726 () Bool)

(declare-fun e!3640991 () Bool)

(assert (=> b!5951726 (= e!3640991 e!3640988)))

(assert (=> b!5951726 (= c!1059132 ((_ is Star!15993) (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))))))

(declare-fun call!474123 () Bool)

(declare-fun bm!474119 () Bool)

(assert (=> bm!474119 (= call!474123 (validRegex!7729 (ite c!1059133 (regOne!32499 (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))) (regOne!32498 (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))))))))

(declare-fun b!5951727 () Bool)

(declare-fun e!3640990 () Bool)

(declare-fun call!474125 () Bool)

(assert (=> b!5951727 (= e!3640990 call!474125)))

(declare-fun b!5951728 () Bool)

(declare-fun res!2491388 () Bool)

(assert (=> b!5951728 (=> (not res!2491388) (not e!3640990))))

(assert (=> b!5951728 (= res!2491388 call!474123)))

(declare-fun e!3640989 () Bool)

(assert (=> b!5951728 (= e!3640989 e!3640990)))

(declare-fun bm!474120 () Bool)

(assert (=> bm!474120 (= call!474125 call!474124)))

(declare-fun b!5951729 () Bool)

(declare-fun e!3640987 () Bool)

(declare-fun e!3640986 () Bool)

(assert (=> b!5951729 (= e!3640987 e!3640986)))

(declare-fun res!2491386 () Bool)

(assert (=> b!5951729 (=> (not res!2491386) (not e!3640986))))

(assert (=> b!5951729 (= res!2491386 call!474123)))

(declare-fun b!5951730 () Bool)

(assert (=> b!5951730 (= e!3640988 e!3640989)))

(assert (=> b!5951730 (= c!1059133 ((_ is Union!15993) (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))))))

(declare-fun b!5951731 () Bool)

(assert (=> b!5951731 (= e!3640986 call!474125)))

(declare-fun b!5951732 () Bool)

(assert (=> b!5951732 (= e!3640985 call!474124)))

(declare-fun b!5951724 () Bool)

(declare-fun res!2491387 () Bool)

(assert (=> b!5951724 (=> res!2491387 e!3640987)))

(assert (=> b!5951724 (= res!2491387 (not ((_ is Concat!24838) (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292))))))))

(assert (=> b!5951724 (= e!3640989 e!3640987)))

(declare-fun d!1865928 () Bool)

(declare-fun res!2491390 () Bool)

(assert (=> d!1865928 (=> res!2491390 e!3640991)))

(assert (=> d!1865928 (= res!2491390 ((_ is ElementMatch!15993) (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))))))

(assert (=> d!1865928 (= (validRegex!7729 (ite c!1058583 (reg!16322 r!7292) (ite c!1058584 (regTwo!32499 r!7292) (regTwo!32498 r!7292)))) e!3640991)))

(assert (= (and d!1865928 (not res!2491390)) b!5951726))

(assert (= (and b!5951726 c!1059132) b!5951725))

(assert (= (and b!5951726 (not c!1059132)) b!5951730))

(assert (= (and b!5951725 res!2491389) b!5951732))

(assert (= (and b!5951730 c!1059133) b!5951728))

(assert (= (and b!5951730 (not c!1059133)) b!5951724))

(assert (= (and b!5951728 res!2491388) b!5951727))

(assert (= (and b!5951724 (not res!2491387)) b!5951729))

(assert (= (and b!5951729 res!2491386) b!5951731))

(assert (= (or b!5951727 b!5951731) bm!474120))

(assert (= (or b!5951728 b!5951729) bm!474119))

(assert (= (or b!5951732 bm!474120) bm!474118))

(declare-fun m!6839480 () Bool)

(assert (=> b!5951725 m!6839480))

(declare-fun m!6839482 () Bool)

(assert (=> bm!474118 m!6839482))

(declare-fun m!6839484 () Bool)

(assert (=> bm!474119 m!6839484))

(assert (=> bm!473781 d!1865928))

(declare-fun d!1865930 () Bool)

(assert (=> d!1865930 true))

(assert (=> d!1865930 true))

(declare-fun res!2491393 () Bool)

(assert (=> d!1865930 (= (choose!44842 lambda!324606) res!2491393)))

(assert (=> d!1865372 d!1865930))

(declare-fun c!1059134 () Bool)

(declare-fun d!1865932 () Bool)

(assert (=> d!1865932 (= c!1059134 (and ((_ is ElementMatch!15993) (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))) (= (c!1058556 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))) (h!70604 s!2326))))))

(declare-fun e!3640995 () (InoxSet Context!10754))

(assert (=> d!1865932 (= (derivationStepZipperDown!1243 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292))))) (ite (or c!1058779 c!1058777) lt!2312989 (Context!10755 call!473862)) (h!70604 s!2326)) e!3640995)))

(declare-fun b!5951733 () Bool)

(declare-fun e!3640997 () Bool)

(assert (=> b!5951733 (= e!3640997 (nullable!5988 (regOne!32498 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292))))))))))

(declare-fun bm!474121 () Bool)

(declare-fun call!474128 () List!64278)

(declare-fun call!474131 () List!64278)

(assert (=> bm!474121 (= call!474128 call!474131)))

(declare-fun c!1059138 () Bool)

(declare-fun c!1059137 () Bool)

(declare-fun call!474130 () (InoxSet Context!10754))

(declare-fun c!1059136 () Bool)

(declare-fun bm!474122 () Bool)

(assert (=> bm!474122 (= call!474130 (derivationStepZipperDown!1243 (ite c!1059138 (regTwo!32499 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))) (ite c!1059136 (regTwo!32498 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))) (ite c!1059137 (regOne!32498 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))) (reg!16322 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292))))))))) (ite (or c!1059138 c!1059136) (ite (or c!1058779 c!1058777) lt!2312989 (Context!10755 call!473862)) (Context!10755 call!474128)) (h!70604 s!2326)))))

(declare-fun b!5951734 () Bool)

(declare-fun e!3640994 () (InoxSet Context!10754))

(declare-fun call!474126 () (InoxSet Context!10754))

(assert (=> b!5951734 (= e!3640994 call!474126)))

(declare-fun b!5951735 () Bool)

(declare-fun e!3640992 () (InoxSet Context!10754))

(declare-fun call!474127 () (InoxSet Context!10754))

(declare-fun call!474129 () (InoxSet Context!10754))

(assert (=> b!5951735 (= e!3640992 ((_ map or) call!474127 call!474129))))

(declare-fun b!5951736 () Bool)

(assert (=> b!5951736 (= c!1059136 e!3640997)))

(declare-fun res!2491394 () Bool)

(assert (=> b!5951736 (=> (not res!2491394) (not e!3640997))))

(assert (=> b!5951736 (= res!2491394 ((_ is Concat!24838) (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))))))

(declare-fun e!3640993 () (InoxSet Context!10754))

(assert (=> b!5951736 (= e!3640993 e!3640992)))

(declare-fun b!5951737 () Bool)

(assert (=> b!5951737 (= e!3640993 ((_ map or) call!474127 call!474130))))

(declare-fun b!5951738 () Bool)

(assert (=> b!5951738 (= e!3640992 e!3640994)))

(assert (=> b!5951738 (= c!1059137 ((_ is Concat!24838) (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))))))

(declare-fun b!5951739 () Bool)

(declare-fun c!1059135 () Bool)

(assert (=> b!5951739 (= c!1059135 ((_ is Star!15993) (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))))))

(declare-fun e!3640996 () (InoxSet Context!10754))

(assert (=> b!5951739 (= e!3640994 e!3640996)))

(declare-fun bm!474123 () Bool)

(assert (=> bm!474123 (= call!474129 call!474130)))

(declare-fun bm!474124 () Bool)

(assert (=> bm!474124 (= call!474127 (derivationStepZipperDown!1243 (ite c!1059138 (regOne!32499 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))) (regOne!32498 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292))))))) (ite c!1059138 (ite (or c!1058779 c!1058777) lt!2312989 (Context!10755 call!473862)) (Context!10755 call!474131)) (h!70604 s!2326)))))

(declare-fun b!5951740 () Bool)

(assert (=> b!5951740 (= e!3640996 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951741 () Bool)

(assert (=> b!5951741 (= e!3640995 e!3640993)))

(assert (=> b!5951741 (= c!1059138 ((_ is Union!15993) (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))))))

(declare-fun bm!474125 () Bool)

(assert (=> bm!474125 (= call!474126 call!474129)))

(declare-fun b!5951742 () Bool)

(assert (=> b!5951742 (= e!3640995 (store ((as const (Array Context!10754 Bool)) false) (ite (or c!1058779 c!1058777) lt!2312989 (Context!10755 call!473862)) true))))

(declare-fun bm!474126 () Bool)

(assert (=> bm!474126 (= call!474131 ($colon$colon!1880 (exprs!5877 (ite (or c!1058779 c!1058777) lt!2312989 (Context!10755 call!473862))) (ite (or c!1059136 c!1059137) (regTwo!32498 (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292)))))) (ite c!1058779 (regTwo!32499 (regTwo!32498 r!7292)) (ite c!1058777 (regTwo!32498 (regTwo!32498 r!7292)) (ite c!1058778 (regOne!32498 (regTwo!32498 r!7292)) (reg!16322 (regTwo!32498 r!7292))))))))))

(declare-fun b!5951743 () Bool)

(assert (=> b!5951743 (= e!3640996 call!474126)))

(assert (= (and d!1865932 c!1059134) b!5951742))

(assert (= (and d!1865932 (not c!1059134)) b!5951741))

(assert (= (and b!5951741 c!1059138) b!5951737))

(assert (= (and b!5951741 (not c!1059138)) b!5951736))

(assert (= (and b!5951736 res!2491394) b!5951733))

(assert (= (and b!5951736 c!1059136) b!5951735))

(assert (= (and b!5951736 (not c!1059136)) b!5951738))

(assert (= (and b!5951738 c!1059137) b!5951734))

(assert (= (and b!5951738 (not c!1059137)) b!5951739))

(assert (= (and b!5951739 c!1059135) b!5951743))

(assert (= (and b!5951739 (not c!1059135)) b!5951740))

(assert (= (or b!5951734 b!5951743) bm!474121))

(assert (= (or b!5951734 b!5951743) bm!474125))

(assert (= (or b!5951735 bm!474121) bm!474126))

(assert (= (or b!5951735 bm!474125) bm!474123))

(assert (= (or b!5951737 bm!474123) bm!474122))

(assert (= (or b!5951737 b!5951735) bm!474124))

(declare-fun m!6839486 () Bool)

(assert (=> bm!474122 m!6839486))

(declare-fun m!6839488 () Bool)

(assert (=> b!5951733 m!6839488))

(declare-fun m!6839490 () Bool)

(assert (=> b!5951742 m!6839490))

(declare-fun m!6839492 () Bool)

(assert (=> bm!474126 m!6839492))

(declare-fun m!6839494 () Bool)

(assert (=> bm!474124 m!6839494))

(assert (=> bm!473856 d!1865932))

(declare-fun d!1865934 () Bool)

(declare-fun res!2491395 () Bool)

(declare-fun e!3640998 () Bool)

(assert (=> d!1865934 (=> res!2491395 e!3640998)))

(assert (=> d!1865934 (= res!2491395 ((_ is Nil!64155) (t!377688 (Cons!64155 lt!2313004 Nil!64155))))))

(assert (=> d!1865934 (= (forall!15077 (t!377688 (Cons!64155 lt!2313004 Nil!64155)) lambda!324650) e!3640998)))

(declare-fun b!5951744 () Bool)

(declare-fun e!3640999 () Bool)

(assert (=> b!5951744 (= e!3640998 e!3640999)))

(declare-fun res!2491396 () Bool)

(assert (=> b!5951744 (=> (not res!2491396) (not e!3640999))))

(assert (=> b!5951744 (= res!2491396 (dynLambda!25102 lambda!324650 (h!70603 (t!377688 (Cons!64155 lt!2313004 Nil!64155)))))))

(declare-fun b!5951745 () Bool)

(assert (=> b!5951745 (= e!3640999 (forall!15077 (t!377688 (t!377688 (Cons!64155 lt!2313004 Nil!64155))) lambda!324650))))

(assert (= (and d!1865934 (not res!2491395)) b!5951744))

(assert (= (and b!5951744 res!2491396) b!5951745))

(declare-fun b_lambda!223685 () Bool)

(assert (=> (not b_lambda!223685) (not b!5951744)))

(declare-fun m!6839496 () Bool)

(assert (=> b!5951744 m!6839496))

(declare-fun m!6839498 () Bool)

(assert (=> b!5951745 m!6839498))

(assert (=> b!5950034 d!1865934))

(declare-fun bs!1409983 () Bool)

(declare-fun d!1865936 () Bool)

(assert (= bs!1409983 (and d!1865936 d!1865910)))

(declare-fun lambda!324818 () Int)

(assert (=> bs!1409983 (not (= lambda!324818 lambda!324811))))

(declare-fun bs!1409984 () Bool)

(assert (= bs!1409984 (and d!1865936 d!1865912)))

(assert (=> bs!1409984 (not (= lambda!324818 lambda!324812))))

(declare-fun bs!1409985 () Bool)

(assert (= bs!1409985 (and d!1865936 b!5950045)))

(assert (=> bs!1409985 (not (= lambda!324818 lambda!324654))))

(declare-fun bs!1409986 () Bool)

(assert (= bs!1409986 (and d!1865936 d!1865688)))

(assert (=> bs!1409986 (not (= lambda!324818 lambda!324771))))

(declare-fun bs!1409987 () Bool)

(assert (= bs!1409987 (and d!1865936 d!1865708)))

(assert (=> bs!1409987 (not (= lambda!324818 lambda!324773))))

(declare-fun bs!1409988 () Bool)

(assert (= bs!1409988 (and d!1865936 b!5950036)))

(assert (=> bs!1409988 (not (= lambda!324818 lambda!324651))))

(declare-fun bs!1409989 () Bool)

(assert (= bs!1409989 (and d!1865936 b!5950034)))

(assert (=> bs!1409989 (not (= lambda!324818 lambda!324650))))

(declare-fun bs!1409990 () Bool)

(assert (= bs!1409990 (and d!1865936 b!5950043)))

(assert (=> bs!1409990 (not (= lambda!324818 lambda!324653))))

(declare-fun bs!1409991 () Bool)

(assert (= bs!1409991 (and d!1865936 d!1865630)))

(assert (=> bs!1409991 (not (= lambda!324818 lambda!324762))))

(declare-fun bs!1409992 () Bool)

(assert (= bs!1409992 (and d!1865936 d!1865594)))

(assert (=> bs!1409992 (not (= lambda!324818 lambda!324751))))

(assert (=> d!1865936 true))

(assert (=> d!1865936 true))

(declare-fun order!27251 () Int)

(declare-fun order!27249 () Int)

(declare-fun dynLambda!25103 (Int Int) Int)

(declare-fun dynLambda!25104 (Int Int) Int)

(assert (=> d!1865936 (< (dynLambda!25103 order!27249 lambda!324648) (dynLambda!25104 order!27251 lambda!324818))))

(assert (=> d!1865936 (forall!15077 (t!377688 (Cons!64155 lt!2313004 Nil!64155)) lambda!324818)))

(declare-fun lt!2313254 () Unit!157257)

(declare-fun choose!44848 (List!64279 Int Int Int) Unit!157257)

(assert (=> d!1865936 (= lt!2313254 (choose!44848 (t!377688 (Cons!64155 lt!2313004 Nil!64155)) lt!2313064 (zipperDepth!242 (t!377688 (Cons!64155 lt!2313004 Nil!64155))) lambda!324648))))

(assert (=> d!1865936 (>= lt!2313064 (zipperDepth!242 (t!377688 (Cons!64155 lt!2313004 Nil!64155))))))

(assert (=> d!1865936 (= (lemmaForallContextDepthBiggerThanTransitive!126 (t!377688 (Cons!64155 lt!2313004 Nil!64155)) lt!2313064 (zipperDepth!242 (t!377688 (Cons!64155 lt!2313004 Nil!64155))) lambda!324648) lt!2313254)))

(declare-fun bs!1409993 () Bool)

(assert (= bs!1409993 d!1865936))

(declare-fun m!6839500 () Bool)

(assert (=> bs!1409993 m!6839500))

(assert (=> bs!1409993 m!6837894))

(declare-fun m!6839502 () Bool)

(assert (=> bs!1409993 m!6839502))

(assert (=> b!5950034 d!1865936))

(declare-fun bs!1409994 () Bool)

(declare-fun b!5951749 () Bool)

(assert (= bs!1409994 (and b!5951749 b!5951545)))

(declare-fun lt!2313255 () Int)

(declare-fun lambda!324819 () Int)

(assert (=> bs!1409994 (= (= lt!2313255 lt!2313246) (= lambda!324819 lambda!324801))))

(declare-fun bs!1409995 () Bool)

(assert (= bs!1409995 (and b!5951749 b!5951547)))

(assert (=> bs!1409995 (= (= lt!2313255 lt!2313248) (= lambda!324819 lambda!324802))))

(declare-fun bs!1409996 () Bool)

(assert (= bs!1409996 (and b!5951749 d!1865262)))

(assert (=> bs!1409996 (not (= lambda!324819 lambda!324663))))

(declare-fun bs!1409997 () Bool)

(assert (= bs!1409997 (and b!5951749 d!1865858)))

(assert (=> bs!1409997 (= (= lt!2313255 lt!2313037) (= lambda!324819 lambda!324803))))

(declare-fun bs!1409998 () Bool)

(assert (= bs!1409998 (and b!5951749 b!5949946)))

(assert (=> bs!1409998 (= (= lt!2313255 lt!2313043) (= lambda!324819 lambda!324635))))

(declare-fun bs!1409999 () Bool)

(assert (= bs!1409999 (and b!5951749 d!1865354)))

(assert (=> bs!1409999 (not (= lambda!324819 lambda!324704))))

(declare-fun bs!1410000 () Bool)

(assert (= bs!1410000 (and b!5951749 d!1865900)))

(assert (=> bs!1410000 (not (= lambda!324819 lambda!324804))))

(declare-fun bs!1410001 () Bool)

(assert (= bs!1410001 (and b!5951749 d!1865258)))

(assert (=> bs!1410001 (not (= lambda!324819 lambda!324662))))

(declare-fun bs!1410002 () Bool)

(assert (= bs!1410002 (and b!5951749 d!1865750)))

(assert (=> bs!1410002 (not (= lambda!324819 lambda!324778))))

(declare-fun bs!1410003 () Bool)

(assert (= bs!1410003 (and b!5951749 b!5951427)))

(assert (=> bs!1410003 (= (= lt!2313255 lt!2313226) (= lambda!324819 lambda!324798))))

(declare-fun bs!1410004 () Bool)

(assert (= bs!1410004 (and b!5951749 d!1865252)))

(assert (=> bs!1410004 (not (= lambda!324819 lambda!324657))))

(declare-fun bs!1410005 () Bool)

(assert (= bs!1410005 (and b!5951749 d!1865584)))

(assert (=> bs!1410005 (not (= lambda!324819 lambda!324747))))

(declare-fun bs!1410006 () Bool)

(assert (= bs!1410006 (and b!5951749 d!1865598)))

(assert (=> bs!1410006 (not (= lambda!324819 lambda!324752))))

(declare-fun bs!1410007 () Bool)

(assert (= bs!1410007 (and b!5951749 b!5951425)))

(assert (=> bs!1410007 (= (= lt!2313255 lt!2313224) (= lambda!324819 lambda!324797))))

(declare-fun bs!1410008 () Bool)

(assert (= bs!1410008 (and b!5951749 d!1865552)))

(assert (=> bs!1410008 (not (= lambda!324819 lambda!324744))))

(declare-fun bs!1410009 () Bool)

(assert (= bs!1410009 (and b!5951749 d!1865362)))

(assert (=> bs!1410009 (not (= lambda!324819 lambda!324707))))

(declare-fun bs!1410010 () Bool)

(assert (= bs!1410010 (and b!5951749 b!5949944)))

(assert (=> bs!1410010 (= (= lt!2313255 lt!2313041) (= lambda!324819 lambda!324634))))

(declare-fun bs!1410011 () Bool)

(assert (= bs!1410011 (and b!5951749 b!5949941)))

(assert (=> bs!1410011 (= (= lt!2313255 lt!2313039) (= lambda!324819 lambda!324633))))

(declare-fun bs!1410012 () Bool)

(assert (= bs!1410012 (and b!5951749 d!1865790)))

(assert (=> bs!1410012 (= (= lt!2313255 lt!2313041) (= lambda!324819 lambda!324795))))

(declare-fun bs!1410013 () Bool)

(assert (= bs!1410013 (and b!5951749 d!1865316)))

(assert (=> bs!1410013 (not (= lambda!324819 lambda!324700))))

(declare-fun bs!1410014 () Bool)

(assert (= bs!1410014 (and b!5951749 b!5949939)))

(assert (=> bs!1410014 (= (= lt!2313255 lt!2313037) (= lambda!324819 lambda!324632))))

(assert (=> b!5951749 true))

(declare-fun bs!1410015 () Bool)

(declare-fun b!5951751 () Bool)

(assert (= bs!1410015 (and b!5951751 b!5951545)))

(declare-fun lambda!324820 () Int)

(declare-fun lt!2313257 () Int)

(assert (=> bs!1410015 (= (= lt!2313257 lt!2313246) (= lambda!324820 lambda!324801))))

(declare-fun bs!1410016 () Bool)

(assert (= bs!1410016 (and b!5951751 b!5951547)))

(assert (=> bs!1410016 (= (= lt!2313257 lt!2313248) (= lambda!324820 lambda!324802))))

(declare-fun bs!1410017 () Bool)

(assert (= bs!1410017 (and b!5951751 b!5951749)))

(assert (=> bs!1410017 (= (= lt!2313257 lt!2313255) (= lambda!324820 lambda!324819))))

(declare-fun bs!1410018 () Bool)

(assert (= bs!1410018 (and b!5951751 d!1865262)))

(assert (=> bs!1410018 (not (= lambda!324820 lambda!324663))))

(declare-fun bs!1410019 () Bool)

(assert (= bs!1410019 (and b!5951751 d!1865858)))

(assert (=> bs!1410019 (= (= lt!2313257 lt!2313037) (= lambda!324820 lambda!324803))))

(declare-fun bs!1410020 () Bool)

(assert (= bs!1410020 (and b!5951751 b!5949946)))

(assert (=> bs!1410020 (= (= lt!2313257 lt!2313043) (= lambda!324820 lambda!324635))))

(declare-fun bs!1410021 () Bool)

(assert (= bs!1410021 (and b!5951751 d!1865354)))

(assert (=> bs!1410021 (not (= lambda!324820 lambda!324704))))

(declare-fun bs!1410022 () Bool)

(assert (= bs!1410022 (and b!5951751 d!1865900)))

(assert (=> bs!1410022 (not (= lambda!324820 lambda!324804))))

(declare-fun bs!1410023 () Bool)

(assert (= bs!1410023 (and b!5951751 d!1865258)))

(assert (=> bs!1410023 (not (= lambda!324820 lambda!324662))))

(declare-fun bs!1410024 () Bool)

(assert (= bs!1410024 (and b!5951751 d!1865750)))

(assert (=> bs!1410024 (not (= lambda!324820 lambda!324778))))

(declare-fun bs!1410025 () Bool)

(assert (= bs!1410025 (and b!5951751 b!5951427)))

(assert (=> bs!1410025 (= (= lt!2313257 lt!2313226) (= lambda!324820 lambda!324798))))

(declare-fun bs!1410026 () Bool)

(assert (= bs!1410026 (and b!5951751 d!1865252)))

(assert (=> bs!1410026 (not (= lambda!324820 lambda!324657))))

(declare-fun bs!1410027 () Bool)

(assert (= bs!1410027 (and b!5951751 d!1865584)))

(assert (=> bs!1410027 (not (= lambda!324820 lambda!324747))))

(declare-fun bs!1410028 () Bool)

(assert (= bs!1410028 (and b!5951751 d!1865598)))

(assert (=> bs!1410028 (not (= lambda!324820 lambda!324752))))

(declare-fun bs!1410029 () Bool)

(assert (= bs!1410029 (and b!5951751 b!5951425)))

(assert (=> bs!1410029 (= (= lt!2313257 lt!2313224) (= lambda!324820 lambda!324797))))

(declare-fun bs!1410030 () Bool)

(assert (= bs!1410030 (and b!5951751 d!1865552)))

(assert (=> bs!1410030 (not (= lambda!324820 lambda!324744))))

(declare-fun bs!1410031 () Bool)

(assert (= bs!1410031 (and b!5951751 d!1865362)))

(assert (=> bs!1410031 (not (= lambda!324820 lambda!324707))))

(declare-fun bs!1410032 () Bool)

(assert (= bs!1410032 (and b!5951751 b!5949944)))

(assert (=> bs!1410032 (= (= lt!2313257 lt!2313041) (= lambda!324820 lambda!324634))))

(declare-fun bs!1410033 () Bool)

(assert (= bs!1410033 (and b!5951751 b!5949941)))

(assert (=> bs!1410033 (= (= lt!2313257 lt!2313039) (= lambda!324820 lambda!324633))))

(declare-fun bs!1410034 () Bool)

(assert (= bs!1410034 (and b!5951751 d!1865790)))

(assert (=> bs!1410034 (= (= lt!2313257 lt!2313041) (= lambda!324820 lambda!324795))))

(declare-fun bs!1410035 () Bool)

(assert (= bs!1410035 (and b!5951751 d!1865316)))

(assert (=> bs!1410035 (not (= lambda!324820 lambda!324700))))

(declare-fun bs!1410036 () Bool)

(assert (= bs!1410036 (and b!5951751 b!5949939)))

(assert (=> bs!1410036 (= (= lt!2313257 lt!2313037) (= lambda!324820 lambda!324632))))

(assert (=> b!5951751 true))

(declare-fun d!1865938 () Bool)

(declare-fun e!3641001 () Bool)

(assert (=> d!1865938 e!3641001))

(declare-fun res!2491397 () Bool)

(assert (=> d!1865938 (=> (not res!2491397) (not e!3641001))))

(assert (=> d!1865938 (= res!2491397 (>= lt!2313257 0))))

(declare-fun e!3641000 () Int)

(assert (=> d!1865938 (= lt!2313257 e!3641000)))

(declare-fun c!1059141 () Bool)

(assert (=> d!1865938 (= c!1059141 ((_ is Cons!64154) (exprs!5877 (h!70603 (Cons!64155 lt!2313004 Nil!64155)))))))

(assert (=> d!1865938 (= (contextDepth!141 (h!70603 (Cons!64155 lt!2313004 Nil!64155))) lt!2313257)))

(assert (=> b!5951749 (= e!3641000 lt!2313255)))

(assert (=> b!5951749 (= lt!2313255 (maxBigInt!0 (regexDepth!249 (h!70602 (exprs!5877 (h!70603 (Cons!64155 lt!2313004 Nil!64155))))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 (h!70603 (Cons!64155 lt!2313004 Nil!64155))))))))))

(declare-fun lt!2313258 () Unit!157257)

(assert (=> b!5951749 (= lt!2313258 (lemmaForallRegexDepthBiggerThanTransitive!41 (t!377687 (exprs!5877 (h!70603 (Cons!64155 lt!2313004 Nil!64155)))) lt!2313255 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 (h!70603 (Cons!64155 lt!2313004 Nil!64155))))))))))

(assert (=> b!5951749 (forall!15076 (t!377687 (exprs!5877 (h!70603 (Cons!64155 lt!2313004 Nil!64155)))) lambda!324819)))

(declare-fun lt!2313256 () Unit!157257)

(assert (=> b!5951749 (= lt!2313256 lt!2313258)))

(declare-fun b!5951750 () Bool)

(assert (=> b!5951750 (= e!3641000 0)))

(assert (=> b!5951751 (= e!3641001 (forall!15076 (exprs!5877 (h!70603 (Cons!64155 lt!2313004 Nil!64155))) lambda!324820))))

(assert (= (and d!1865938 c!1059141) b!5951749))

(assert (= (and d!1865938 (not c!1059141)) b!5951750))

(assert (= (and d!1865938 res!2491397) b!5951751))

(declare-fun m!6839504 () Bool)

(assert (=> b!5951749 m!6839504))

(declare-fun m!6839506 () Bool)

(assert (=> b!5951749 m!6839506))

(assert (=> b!5951749 m!6839504))

(declare-fun m!6839508 () Bool)

(assert (=> b!5951749 m!6839508))

(assert (=> b!5951749 m!6839506))

(declare-fun m!6839510 () Bool)

(assert (=> b!5951749 m!6839510))

(assert (=> b!5951749 m!6839504))

(declare-fun m!6839512 () Bool)

(assert (=> b!5951749 m!6839512))

(declare-fun m!6839514 () Bool)

(assert (=> b!5951751 m!6839514))

(assert (=> b!5950034 d!1865938))

(declare-fun d!1865940 () Bool)

(assert (=> d!1865940 (= (maxBigInt!0 (contextDepth!141 (h!70603 (Cons!64155 lt!2313004 Nil!64155))) (zipperDepth!242 (t!377688 (Cons!64155 lt!2313004 Nil!64155)))) (ite (>= (contextDepth!141 (h!70603 (Cons!64155 lt!2313004 Nil!64155))) (zipperDepth!242 (t!377688 (Cons!64155 lt!2313004 Nil!64155)))) (contextDepth!141 (h!70603 (Cons!64155 lt!2313004 Nil!64155))) (zipperDepth!242 (t!377688 (Cons!64155 lt!2313004 Nil!64155)))))))

(assert (=> b!5950034 d!1865940))

(declare-fun bs!1410037 () Bool)

(declare-fun b!5951752 () Bool)

(assert (= bs!1410037 (and b!5951752 b!5950034)))

(declare-fun lambda!324821 () Int)

(assert (=> bs!1410037 (= lambda!324821 lambda!324648)))

(declare-fun bs!1410038 () Bool)

(assert (= bs!1410038 (and b!5951752 b!5950043)))

(assert (=> bs!1410038 (= lambda!324821 lambda!324652)))

(declare-fun bs!1410039 () Bool)

(assert (= bs!1410039 (and b!5951752 d!1865910)))

(declare-fun lambda!324822 () Int)

(assert (=> bs!1410039 (not (= lambda!324822 lambda!324811))))

(declare-fun bs!1410040 () Bool)

(assert (= bs!1410040 (and b!5951752 d!1865912)))

(assert (=> bs!1410040 (not (= lambda!324822 lambda!324812))))

(declare-fun bs!1410041 () Bool)

(assert (= bs!1410041 (and b!5951752 b!5950045)))

(declare-fun lt!2313260 () Int)

(assert (=> bs!1410041 (= (= lt!2313260 lt!2313069) (= lambda!324822 lambda!324654))))

(declare-fun bs!1410042 () Bool)

(assert (= bs!1410042 (and b!5951752 d!1865936)))

(assert (=> bs!1410042 (not (= lambda!324822 lambda!324818))))

(declare-fun bs!1410043 () Bool)

(assert (= bs!1410043 (and b!5951752 d!1865688)))

(assert (=> bs!1410043 (not (= lambda!324822 lambda!324771))))

(declare-fun bs!1410044 () Bool)

(assert (= bs!1410044 (and b!5951752 d!1865708)))

(assert (=> bs!1410044 (not (= lambda!324822 lambda!324773))))

(declare-fun bs!1410045 () Bool)

(assert (= bs!1410045 (and b!5951752 b!5950036)))

(assert (=> bs!1410045 (= (= lt!2313260 lt!2313065) (= lambda!324822 lambda!324651))))

(assert (=> bs!1410037 (= (= lt!2313260 lt!2313064) (= lambda!324822 lambda!324650))))

(assert (=> bs!1410038 (= (= lt!2313260 lt!2313068) (= lambda!324822 lambda!324653))))

(declare-fun bs!1410046 () Bool)

(assert (= bs!1410046 (and b!5951752 d!1865630)))

(assert (=> bs!1410046 (not (= lambda!324822 lambda!324762))))

(declare-fun bs!1410047 () Bool)

(assert (= bs!1410047 (and b!5951752 d!1865594)))

(assert (=> bs!1410047 (not (= lambda!324822 lambda!324751))))

(assert (=> b!5951752 true))

(declare-fun bs!1410048 () Bool)

(declare-fun b!5951754 () Bool)

(assert (= bs!1410048 (and b!5951754 d!1865910)))

(declare-fun lambda!324823 () Int)

(assert (=> bs!1410048 (not (= lambda!324823 lambda!324811))))

(declare-fun bs!1410049 () Bool)

(assert (= bs!1410049 (and b!5951754 d!1865912)))

(assert (=> bs!1410049 (not (= lambda!324823 lambda!324812))))

(declare-fun bs!1410050 () Bool)

(assert (= bs!1410050 (and b!5951754 b!5951752)))

(declare-fun lt!2313261 () Int)

(assert (=> bs!1410050 (= (= lt!2313261 lt!2313260) (= lambda!324823 lambda!324822))))

(declare-fun bs!1410051 () Bool)

(assert (= bs!1410051 (and b!5951754 b!5950045)))

(assert (=> bs!1410051 (= (= lt!2313261 lt!2313069) (= lambda!324823 lambda!324654))))

(declare-fun bs!1410052 () Bool)

(assert (= bs!1410052 (and b!5951754 d!1865936)))

(assert (=> bs!1410052 (not (= lambda!324823 lambda!324818))))

(declare-fun bs!1410053 () Bool)

(assert (= bs!1410053 (and b!5951754 d!1865688)))

(assert (=> bs!1410053 (not (= lambda!324823 lambda!324771))))

(declare-fun bs!1410054 () Bool)

(assert (= bs!1410054 (and b!5951754 d!1865708)))

(assert (=> bs!1410054 (not (= lambda!324823 lambda!324773))))

(declare-fun bs!1410055 () Bool)

(assert (= bs!1410055 (and b!5951754 b!5950036)))

(assert (=> bs!1410055 (= (= lt!2313261 lt!2313065) (= lambda!324823 lambda!324651))))

(declare-fun bs!1410056 () Bool)

(assert (= bs!1410056 (and b!5951754 b!5950034)))

(assert (=> bs!1410056 (= (= lt!2313261 lt!2313064) (= lambda!324823 lambda!324650))))

(declare-fun bs!1410057 () Bool)

(assert (= bs!1410057 (and b!5951754 b!5950043)))

(assert (=> bs!1410057 (= (= lt!2313261 lt!2313068) (= lambda!324823 lambda!324653))))

(declare-fun bs!1410058 () Bool)

(assert (= bs!1410058 (and b!5951754 d!1865630)))

(assert (=> bs!1410058 (not (= lambda!324823 lambda!324762))))

(declare-fun bs!1410059 () Bool)

(assert (= bs!1410059 (and b!5951754 d!1865594)))

(assert (=> bs!1410059 (not (= lambda!324823 lambda!324751))))

(assert (=> b!5951754 true))

(declare-fun d!1865942 () Bool)

(declare-fun e!3641003 () Bool)

(assert (=> d!1865942 e!3641003))

(declare-fun res!2491398 () Bool)

(assert (=> d!1865942 (=> (not res!2491398) (not e!3641003))))

(assert (=> d!1865942 (= res!2491398 (>= lt!2313261 0))))

(declare-fun e!3641002 () Int)

(assert (=> d!1865942 (= lt!2313261 e!3641002)))

(declare-fun c!1059142 () Bool)

(assert (=> d!1865942 (= c!1059142 ((_ is Cons!64155) (t!377688 (Cons!64155 lt!2313004 Nil!64155))))))

(assert (=> d!1865942 (= (zipperDepth!242 (t!377688 (Cons!64155 lt!2313004 Nil!64155))) lt!2313261)))

(assert (=> b!5951752 (= e!3641002 lt!2313260)))

(assert (=> b!5951752 (= lt!2313260 (maxBigInt!0 (contextDepth!141 (h!70603 (t!377688 (Cons!64155 lt!2313004 Nil!64155)))) (zipperDepth!242 (t!377688 (t!377688 (Cons!64155 lt!2313004 Nil!64155))))))))

(declare-fun lt!2313262 () Unit!157257)

(assert (=> b!5951752 (= lt!2313262 (lemmaForallContextDepthBiggerThanTransitive!126 (t!377688 (t!377688 (Cons!64155 lt!2313004 Nil!64155))) lt!2313260 (zipperDepth!242 (t!377688 (t!377688 (Cons!64155 lt!2313004 Nil!64155)))) lambda!324821))))

(assert (=> b!5951752 (forall!15077 (t!377688 (t!377688 (Cons!64155 lt!2313004 Nil!64155))) lambda!324822)))

(declare-fun lt!2313259 () Unit!157257)

(assert (=> b!5951752 (= lt!2313259 lt!2313262)))

(declare-fun b!5951753 () Bool)

(assert (=> b!5951753 (= e!3641002 0)))

(assert (=> b!5951754 (= e!3641003 (forall!15077 (t!377688 (Cons!64155 lt!2313004 Nil!64155)) lambda!324823))))

(assert (= (and d!1865942 c!1059142) b!5951752))

(assert (= (and d!1865942 (not c!1059142)) b!5951753))

(assert (= (and d!1865942 res!2491398) b!5951754))

(declare-fun m!6839516 () Bool)

(assert (=> b!5951752 m!6839516))

(declare-fun m!6839518 () Bool)

(assert (=> b!5951752 m!6839518))

(declare-fun m!6839520 () Bool)

(assert (=> b!5951752 m!6839520))

(assert (=> b!5951752 m!6839516))

(declare-fun m!6839522 () Bool)

(assert (=> b!5951752 m!6839522))

(assert (=> b!5951752 m!6839516))

(assert (=> b!5951752 m!6839520))

(declare-fun m!6839524 () Bool)

(assert (=> b!5951752 m!6839524))

(declare-fun m!6839526 () Bool)

(assert (=> b!5951754 m!6839526))

(assert (=> b!5950034 d!1865942))

(assert (=> b!5950244 d!1865570))

(assert (=> d!1865344 d!1865334))

(declare-fun d!1865944 () Bool)

(assert (=> d!1865944 (= (flatMap!1506 lt!2312979 lambda!324608) (dynLambda!25095 lambda!324608 lt!2312978))))

(assert (=> d!1865944 true))

(declare-fun _$13!2751 () Unit!157257)

(assert (=> d!1865944 (= (choose!44834 lt!2312979 lt!2312978 lambda!324608) _$13!2751)))

(declare-fun b_lambda!223687 () Bool)

(assert (=> (not b_lambda!223687) (not d!1865944)))

(declare-fun bs!1410060 () Bool)

(assert (= bs!1410060 d!1865944))

(assert (=> bs!1410060 m!6837630))

(assert (=> bs!1410060 m!6838196))

(assert (=> d!1865344 d!1865944))

(assert (=> bs!1409085 d!1865328))

(assert (=> d!1865204 d!1865530))

(declare-fun d!1865946 () Bool)

(assert (=> d!1865946 (= (nullable!5988 (h!70602 (exprs!5877 (h!70603 zl!343)))) (nullableFct!1960 (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun bs!1410061 () Bool)

(assert (= bs!1410061 d!1865946))

(declare-fun m!6839528 () Bool)

(assert (=> bs!1410061 m!6839528))

(assert (=> b!5949989 d!1865946))

(declare-fun d!1865948 () Bool)

(assert (=> d!1865948 (= (nullable!5988 (h!70602 (exprs!5877 lt!2312982))) (nullableFct!1960 (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun bs!1410062 () Bool)

(assert (= bs!1410062 d!1865948))

(declare-fun m!6839530 () Bool)

(assert (=> bs!1410062 m!6839530))

(assert (=> b!5950309 d!1865948))

(declare-fun bs!1410063 () Bool)

(declare-fun d!1865950 () Bool)

(assert (= bs!1410063 (and d!1865950 d!1865910)))

(declare-fun lambda!324824 () Int)

(assert (=> bs!1410063 (= lambda!324824 lambda!324811)))

(declare-fun bs!1410064 () Bool)

(assert (= bs!1410064 (and d!1865950 d!1865912)))

(assert (=> bs!1410064 (= lambda!324824 lambda!324812)))

(declare-fun bs!1410065 () Bool)

(assert (= bs!1410065 (and d!1865950 b!5951754)))

(assert (=> bs!1410065 (not (= lambda!324824 lambda!324823))))

(declare-fun bs!1410066 () Bool)

(assert (= bs!1410066 (and d!1865950 b!5951752)))

(assert (=> bs!1410066 (not (= lambda!324824 lambda!324822))))

(declare-fun bs!1410067 () Bool)

(assert (= bs!1410067 (and d!1865950 b!5950045)))

(assert (=> bs!1410067 (not (= lambda!324824 lambda!324654))))

(declare-fun bs!1410068 () Bool)

(assert (= bs!1410068 (and d!1865950 d!1865936)))

(assert (=> bs!1410068 (not (= lambda!324824 lambda!324818))))

(declare-fun bs!1410069 () Bool)

(assert (= bs!1410069 (and d!1865950 d!1865688)))

(assert (=> bs!1410069 (= lambda!324824 lambda!324771)))

(declare-fun bs!1410070 () Bool)

(assert (= bs!1410070 (and d!1865950 d!1865708)))

(assert (=> bs!1410070 (= lambda!324824 lambda!324773)))

(declare-fun bs!1410071 () Bool)

(assert (= bs!1410071 (and d!1865950 b!5950036)))

(assert (=> bs!1410071 (not (= lambda!324824 lambda!324651))))

(declare-fun bs!1410072 () Bool)

(assert (= bs!1410072 (and d!1865950 b!5950034)))

(assert (=> bs!1410072 (not (= lambda!324824 lambda!324650))))

(declare-fun bs!1410073 () Bool)

(assert (= bs!1410073 (and d!1865950 b!5950043)))

(assert (=> bs!1410073 (not (= lambda!324824 lambda!324653))))

(declare-fun bs!1410074 () Bool)

(assert (= bs!1410074 (and d!1865950 d!1865630)))

(assert (=> bs!1410074 (= lambda!324824 lambda!324762)))

(declare-fun bs!1410075 () Bool)

(assert (= bs!1410075 (and d!1865950 d!1865594)))

(assert (=> bs!1410075 (= lambda!324824 lambda!324751)))

(assert (=> d!1865950 (= (nullableZipper!1799 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326))) (exists!2352 (derivationStepZipper!1974 lt!2312979 (h!70604 s!2326)) lambda!324824))))

(declare-fun bs!1410076 () Bool)

(assert (= bs!1410076 d!1865950))

(assert (=> bs!1410076 m!6837640))

(declare-fun m!6839532 () Bool)

(assert (=> bs!1410076 m!6839532))

(assert (=> b!5950400 d!1865950))

(declare-fun d!1865952 () Bool)

(assert (=> d!1865952 true))

(assert (=> d!1865952 true))

(declare-fun res!2491399 () Bool)

(assert (=> d!1865952 (= (choose!44842 lambda!324607) res!2491399)))

(assert (=> d!1865374 d!1865952))

(declare-fun c!1059143 () Bool)

(declare-fun d!1865954 () Bool)

(assert (=> d!1865954 (= c!1059143 (and ((_ is ElementMatch!15993) (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))) (= (c!1058556 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))) (h!70604 s!2326))))))

(declare-fun e!3641007 () (InoxSet Context!10754))

(assert (=> d!1865954 (= (derivationStepZipperDown!1243 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292))) (ite c!1058779 lt!2312989 (Context!10755 call!473865)) (h!70604 s!2326)) e!3641007)))

(declare-fun b!5951755 () Bool)

(declare-fun e!3641009 () Bool)

(assert (=> b!5951755 (= e!3641009 (nullable!5988 (regOne!32498 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292))))))))

(declare-fun bm!474127 () Bool)

(declare-fun call!474134 () List!64278)

(declare-fun call!474137 () List!64278)

(assert (=> bm!474127 (= call!474134 call!474137)))

(declare-fun c!1059146 () Bool)

(declare-fun c!1059145 () Bool)

(declare-fun call!474136 () (InoxSet Context!10754))

(declare-fun c!1059147 () Bool)

(declare-fun bm!474128 () Bool)

(assert (=> bm!474128 (= call!474136 (derivationStepZipperDown!1243 (ite c!1059147 (regTwo!32499 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))) (ite c!1059145 (regTwo!32498 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))) (ite c!1059146 (regOne!32498 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))) (reg!16322 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292))))))) (ite (or c!1059147 c!1059145) (ite c!1058779 lt!2312989 (Context!10755 call!473865)) (Context!10755 call!474134)) (h!70604 s!2326)))))

(declare-fun b!5951756 () Bool)

(declare-fun e!3641006 () (InoxSet Context!10754))

(declare-fun call!474132 () (InoxSet Context!10754))

(assert (=> b!5951756 (= e!3641006 call!474132)))

(declare-fun b!5951757 () Bool)

(declare-fun e!3641004 () (InoxSet Context!10754))

(declare-fun call!474133 () (InoxSet Context!10754))

(declare-fun call!474135 () (InoxSet Context!10754))

(assert (=> b!5951757 (= e!3641004 ((_ map or) call!474133 call!474135))))

(declare-fun b!5951758 () Bool)

(assert (=> b!5951758 (= c!1059145 e!3641009)))

(declare-fun res!2491400 () Bool)

(assert (=> b!5951758 (=> (not res!2491400) (not e!3641009))))

(assert (=> b!5951758 (= res!2491400 ((_ is Concat!24838) (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))))))

(declare-fun e!3641005 () (InoxSet Context!10754))

(assert (=> b!5951758 (= e!3641005 e!3641004)))

(declare-fun b!5951759 () Bool)

(assert (=> b!5951759 (= e!3641005 ((_ map or) call!474133 call!474136))))

(declare-fun b!5951760 () Bool)

(assert (=> b!5951760 (= e!3641004 e!3641006)))

(assert (=> b!5951760 (= c!1059146 ((_ is Concat!24838) (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))))))

(declare-fun b!5951761 () Bool)

(declare-fun c!1059144 () Bool)

(assert (=> b!5951761 (= c!1059144 ((_ is Star!15993) (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))))))

(declare-fun e!3641008 () (InoxSet Context!10754))

(assert (=> b!5951761 (= e!3641006 e!3641008)))

(declare-fun bm!474129 () Bool)

(assert (=> bm!474129 (= call!474135 call!474136)))

(declare-fun bm!474130 () Bool)

(assert (=> bm!474130 (= call!474133 (derivationStepZipperDown!1243 (ite c!1059147 (regOne!32499 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))) (regOne!32498 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292))))) (ite c!1059147 (ite c!1058779 lt!2312989 (Context!10755 call!473865)) (Context!10755 call!474137)) (h!70604 s!2326)))))

(declare-fun b!5951762 () Bool)

(assert (=> b!5951762 (= e!3641008 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951763 () Bool)

(assert (=> b!5951763 (= e!3641007 e!3641005)))

(assert (=> b!5951763 (= c!1059147 ((_ is Union!15993) (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))))))

(declare-fun bm!474131 () Bool)

(assert (=> bm!474131 (= call!474132 call!474135)))

(declare-fun b!5951764 () Bool)

(assert (=> b!5951764 (= e!3641007 (store ((as const (Array Context!10754 Bool)) false) (ite c!1058779 lt!2312989 (Context!10755 call!473865)) true))))

(declare-fun bm!474132 () Bool)

(assert (=> bm!474132 (= call!474137 ($colon$colon!1880 (exprs!5877 (ite c!1058779 lt!2312989 (Context!10755 call!473865))) (ite (or c!1059145 c!1059146) (regTwo!32498 (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292)))) (ite c!1058779 (regOne!32499 (regTwo!32498 r!7292)) (regOne!32498 (regTwo!32498 r!7292))))))))

(declare-fun b!5951765 () Bool)

(assert (=> b!5951765 (= e!3641008 call!474132)))

(assert (= (and d!1865954 c!1059143) b!5951764))

(assert (= (and d!1865954 (not c!1059143)) b!5951763))

(assert (= (and b!5951763 c!1059147) b!5951759))

(assert (= (and b!5951763 (not c!1059147)) b!5951758))

(assert (= (and b!5951758 res!2491400) b!5951755))

(assert (= (and b!5951758 c!1059145) b!5951757))

(assert (= (and b!5951758 (not c!1059145)) b!5951760))

(assert (= (and b!5951760 c!1059146) b!5951756))

(assert (= (and b!5951760 (not c!1059146)) b!5951761))

(assert (= (and b!5951761 c!1059144) b!5951765))

(assert (= (and b!5951761 (not c!1059144)) b!5951762))

(assert (= (or b!5951756 b!5951765) bm!474127))

(assert (= (or b!5951756 b!5951765) bm!474131))

(assert (= (or b!5951757 bm!474127) bm!474132))

(assert (= (or b!5951757 bm!474131) bm!474129))

(assert (= (or b!5951759 bm!474129) bm!474128))

(assert (= (or b!5951759 b!5951757) bm!474130))

(declare-fun m!6839534 () Bool)

(assert (=> bm!474128 m!6839534))

(declare-fun m!6839536 () Bool)

(assert (=> b!5951755 m!6839536))

(declare-fun m!6839538 () Bool)

(assert (=> b!5951764 m!6839538))

(declare-fun m!6839540 () Bool)

(assert (=> bm!474132 m!6839540))

(declare-fun m!6839542 () Bool)

(assert (=> bm!474130 m!6839542))

(assert (=> bm!473858 d!1865954))

(declare-fun b!5951768 () Bool)

(declare-fun res!2491402 () Bool)

(declare-fun e!3641011 () Bool)

(assert (=> b!5951768 (=> (not res!2491402) (not e!3641011))))

(declare-fun lt!2313263 () List!64280)

(assert (=> b!5951768 (= res!2491402 (= (size!40155 lt!2313263) (+ (size!40155 (_1!36275 (get!22102 lt!2313149))) (size!40155 (_2!36275 (get!22102 lt!2313149))))))))

(declare-fun d!1865956 () Bool)

(assert (=> d!1865956 e!3641011))

(declare-fun res!2491401 () Bool)

(assert (=> d!1865956 (=> (not res!2491401) (not e!3641011))))

(assert (=> d!1865956 (= res!2491401 (= (content!11841 lt!2313263) ((_ map or) (content!11841 (_1!36275 (get!22102 lt!2313149))) (content!11841 (_2!36275 (get!22102 lt!2313149))))))))

(declare-fun e!3641010 () List!64280)

(assert (=> d!1865956 (= lt!2313263 e!3641010)))

(declare-fun c!1059148 () Bool)

(assert (=> d!1865956 (= c!1059148 ((_ is Nil!64156) (_1!36275 (get!22102 lt!2313149))))))

(assert (=> d!1865956 (= (++!14090 (_1!36275 (get!22102 lt!2313149)) (_2!36275 (get!22102 lt!2313149))) lt!2313263)))

(declare-fun b!5951767 () Bool)

(assert (=> b!5951767 (= e!3641010 (Cons!64156 (h!70604 (_1!36275 (get!22102 lt!2313149))) (++!14090 (t!377689 (_1!36275 (get!22102 lt!2313149))) (_2!36275 (get!22102 lt!2313149)))))))

(declare-fun b!5951769 () Bool)

(assert (=> b!5951769 (= e!3641011 (or (not (= (_2!36275 (get!22102 lt!2313149)) Nil!64156)) (= lt!2313263 (_1!36275 (get!22102 lt!2313149)))))))

(declare-fun b!5951766 () Bool)

(assert (=> b!5951766 (= e!3641010 (_2!36275 (get!22102 lt!2313149)))))

(assert (= (and d!1865956 c!1059148) b!5951766))

(assert (= (and d!1865956 (not c!1059148)) b!5951767))

(assert (= (and d!1865956 res!2491401) b!5951768))

(assert (= (and b!5951768 res!2491402) b!5951769))

(declare-fun m!6839544 () Bool)

(assert (=> b!5951768 m!6839544))

(declare-fun m!6839546 () Bool)

(assert (=> b!5951768 m!6839546))

(declare-fun m!6839548 () Bool)

(assert (=> b!5951768 m!6839548))

(declare-fun m!6839550 () Bool)

(assert (=> d!1865956 m!6839550))

(declare-fun m!6839552 () Bool)

(assert (=> d!1865956 m!6839552))

(declare-fun m!6839554 () Bool)

(assert (=> d!1865956 m!6839554))

(declare-fun m!6839556 () Bool)

(assert (=> b!5951767 m!6839556))

(assert (=> b!5950490 d!1865956))

(assert (=> b!5950490 d!1865608))

(declare-fun d!1865958 () Bool)

(declare-fun c!1059149 () Bool)

(assert (=> d!1865958 (= c!1059149 (isEmpty!36036 (tail!11610 (t!377689 s!2326))))))

(declare-fun e!3641012 () Bool)

(assert (=> d!1865958 (= (matchZipper!2029 (derivationStepZipper!1974 lt!2312995 (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))) e!3641012)))

(declare-fun b!5951770 () Bool)

(assert (=> b!5951770 (= e!3641012 (nullableZipper!1799 (derivationStepZipper!1974 lt!2312995 (head!12525 (t!377689 s!2326)))))))

(declare-fun b!5951771 () Bool)

(assert (=> b!5951771 (= e!3641012 (matchZipper!2029 (derivationStepZipper!1974 (derivationStepZipper!1974 lt!2312995 (head!12525 (t!377689 s!2326))) (head!12525 (tail!11610 (t!377689 s!2326)))) (tail!11610 (tail!11610 (t!377689 s!2326)))))))

(assert (= (and d!1865958 c!1059149) b!5951770))

(assert (= (and d!1865958 (not c!1059149)) b!5951771))

(assert (=> d!1865958 m!6837750))

(assert (=> d!1865958 m!6838610))

(assert (=> b!5951770 m!6837762))

(declare-fun m!6839558 () Bool)

(assert (=> b!5951770 m!6839558))

(assert (=> b!5951771 m!6837750))

(assert (=> b!5951771 m!6838614))

(assert (=> b!5951771 m!6837762))

(assert (=> b!5951771 m!6838614))

(declare-fun m!6839560 () Bool)

(assert (=> b!5951771 m!6839560))

(assert (=> b!5951771 m!6837750))

(assert (=> b!5951771 m!6838618))

(assert (=> b!5951771 m!6839560))

(assert (=> b!5951771 m!6838618))

(declare-fun m!6839562 () Bool)

(assert (=> b!5951771 m!6839562))

(assert (=> b!5949886 d!1865958))

(declare-fun bs!1410077 () Bool)

(declare-fun d!1865960 () Bool)

(assert (= bs!1410077 (and d!1865960 b!5949712)))

(declare-fun lambda!324825 () Int)

(assert (=> bs!1410077 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324825 lambda!324608))))

(declare-fun bs!1410078 () Bool)

(assert (= bs!1410078 (and d!1865960 d!1865852)))

(assert (=> bs!1410078 (= lambda!324825 lambda!324800)))

(declare-fun bs!1410079 () Bool)

(assert (= bs!1410079 (and d!1865960 d!1865300)))

(assert (=> bs!1410079 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324825 lambda!324692))))

(declare-fun bs!1410080 () Bool)

(assert (= bs!1410080 (and d!1865960 d!1865306)))

(assert (=> bs!1410080 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324825 lambda!324696))))

(declare-fun bs!1410081 () Bool)

(assert (= bs!1410081 (and d!1865960 d!1865628)))

(assert (=> bs!1410081 (= lambda!324825 lambda!324761)))

(declare-fun bs!1410082 () Bool)

(assert (= bs!1410082 (and d!1865960 d!1865352)))

(assert (=> bs!1410082 (= (= (head!12525 (t!377689 s!2326)) (h!70604 s!2326)) (= lambda!324825 lambda!324701))))

(declare-fun bs!1410083 () Bool)

(assert (= bs!1410083 (and d!1865960 d!1865620)))

(assert (=> bs!1410083 (= lambda!324825 lambda!324759)))

(declare-fun bs!1410084 () Bool)

(assert (= bs!1410084 (and d!1865960 d!1865588)))

(assert (=> bs!1410084 (= (= (head!12525 (t!377689 s!2326)) (head!12525 s!2326)) (= lambda!324825 lambda!324748))))

(declare-fun bs!1410085 () Bool)

(assert (= bs!1410085 (and d!1865960 d!1865544)))

(assert (=> bs!1410085 (= lambda!324825 lambda!324743)))

(declare-fun bs!1410086 () Bool)

(assert (= bs!1410086 (and d!1865960 d!1865734)))

(assert (=> bs!1410086 (= (= (head!12525 (t!377689 s!2326)) (head!12525 s!2326)) (= lambda!324825 lambda!324775))))

(declare-fun bs!1410087 () Bool)

(assert (= bs!1410087 (and d!1865960 d!1865924)))

(assert (=> bs!1410087 (= lambda!324825 lambda!324813)))

(assert (=> d!1865960 true))

(assert (=> d!1865960 (= (derivationStepZipper!1974 lt!2312995 (head!12525 (t!377689 s!2326))) (flatMap!1506 lt!2312995 lambda!324825))))

(declare-fun bs!1410088 () Bool)

(assert (= bs!1410088 d!1865960))

(declare-fun m!6839564 () Bool)

(assert (=> bs!1410088 m!6839564))

(assert (=> b!5949886 d!1865960))

(assert (=> b!5949886 d!1865548))

(assert (=> b!5949886 d!1865550))

(assert (=> d!1865282 d!1865278))

(assert (=> d!1865282 d!1865264))

(declare-fun d!1865962 () Bool)

(assert (=> d!1865962 (= (matchR!8176 r!7292 s!2326) (matchRSpec!3094 r!7292 s!2326))))

(assert (=> d!1865962 true))

(declare-fun _$88!4458 () Unit!157257)

(assert (=> d!1865962 (= (choose!44837 r!7292 s!2326) _$88!4458)))

(declare-fun bs!1410089 () Bool)

(assert (= bs!1410089 d!1865962))

(assert (=> bs!1410089 m!6837570))

(assert (=> bs!1410089 m!6837568))

(assert (=> d!1865282 d!1865962))

(assert (=> d!1865282 d!1865196))

(declare-fun call!474138 () (InoxSet Context!10754))

(declare-fun e!3641014 () (InoxSet Context!10754))

(declare-fun b!5951772 () Bool)

(assert (=> b!5951772 (= e!3641014 ((_ map or) call!474138 (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312978)))))) (h!70604 s!2326))))))

(declare-fun b!5951773 () Bool)

(declare-fun e!3641015 () (InoxSet Context!10754))

(assert (=> b!5951773 (= e!3641014 e!3641015)))

(declare-fun c!1059150 () Bool)

(assert (=> b!5951773 (= c!1059150 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312978))))))))

(declare-fun b!5951774 () Bool)

(assert (=> b!5951774 (= e!3641015 call!474138)))

(declare-fun d!1865964 () Bool)

(declare-fun c!1059151 () Bool)

(declare-fun e!3641013 () Bool)

(assert (=> d!1865964 (= c!1059151 e!3641013)))

(declare-fun res!2491403 () Bool)

(assert (=> d!1865964 (=> (not res!2491403) (not e!3641013))))

(assert (=> d!1865964 (= res!2491403 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312978))))))))

(assert (=> d!1865964 (= (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 lt!2312978))) (h!70604 s!2326)) e!3641014)))

(declare-fun bm!474133 () Bool)

(assert (=> bm!474133 (= call!474138 (derivationStepZipperDown!1243 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312978))))) (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312978)))))) (h!70604 s!2326)))))

(declare-fun b!5951775 () Bool)

(assert (=> b!5951775 (= e!3641015 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951776 () Bool)

(assert (=> b!5951776 (= e!3641013 (nullable!5988 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312978)))))))))

(assert (= (and d!1865964 res!2491403) b!5951776))

(assert (= (and d!1865964 c!1059151) b!5951772))

(assert (= (and d!1865964 (not c!1059151)) b!5951773))

(assert (= (and b!5951773 c!1059150) b!5951774))

(assert (= (and b!5951773 (not c!1059150)) b!5951775))

(assert (= (or b!5951772 b!5951774) bm!474133))

(declare-fun m!6839566 () Bool)

(assert (=> b!5951772 m!6839566))

(declare-fun m!6839568 () Bool)

(assert (=> bm!474133 m!6839568))

(declare-fun m!6839570 () Bool)

(assert (=> b!5951776 m!6839570))

(assert (=> b!5950369 d!1865964))

(declare-fun d!1865966 () Bool)

(assert (=> d!1865966 (= (isEmptyExpr!1420 lt!2313075) ((_ is EmptyExpr!15993) lt!2313075))))

(assert (=> b!5950111 d!1865966))

(declare-fun bs!1410090 () Bool)

(declare-fun b!5951777 () Bool)

(assert (= bs!1410090 (and b!5951777 b!5950034)))

(declare-fun lambda!324826 () Int)

(assert (=> bs!1410090 (= lambda!324826 lambda!324648)))

(declare-fun bs!1410091 () Bool)

(assert (= bs!1410091 (and b!5951777 b!5950043)))

(assert (=> bs!1410091 (= lambda!324826 lambda!324652)))

(declare-fun bs!1410092 () Bool)

(assert (= bs!1410092 (and b!5951777 b!5951752)))

(assert (=> bs!1410092 (= lambda!324826 lambda!324821)))

(declare-fun bs!1410093 () Bool)

(assert (= bs!1410093 (and b!5951777 d!1865950)))

(declare-fun lambda!324827 () Int)

(assert (=> bs!1410093 (not (= lambda!324827 lambda!324824))))

(declare-fun bs!1410094 () Bool)

(assert (= bs!1410094 (and b!5951777 d!1865910)))

(assert (=> bs!1410094 (not (= lambda!324827 lambda!324811))))

(declare-fun bs!1410095 () Bool)

(assert (= bs!1410095 (and b!5951777 d!1865912)))

(assert (=> bs!1410095 (not (= lambda!324827 lambda!324812))))

(declare-fun bs!1410096 () Bool)

(assert (= bs!1410096 (and b!5951777 b!5951754)))

(declare-fun lt!2313265 () Int)

(assert (=> bs!1410096 (= (= lt!2313265 lt!2313261) (= lambda!324827 lambda!324823))))

(assert (=> bs!1410092 (= (= lt!2313265 lt!2313260) (= lambda!324827 lambda!324822))))

(declare-fun bs!1410097 () Bool)

(assert (= bs!1410097 (and b!5951777 b!5950045)))

(assert (=> bs!1410097 (= (= lt!2313265 lt!2313069) (= lambda!324827 lambda!324654))))

(declare-fun bs!1410098 () Bool)

(assert (= bs!1410098 (and b!5951777 d!1865936)))

(assert (=> bs!1410098 (not (= lambda!324827 lambda!324818))))

(declare-fun bs!1410099 () Bool)

(assert (= bs!1410099 (and b!5951777 d!1865688)))

(assert (=> bs!1410099 (not (= lambda!324827 lambda!324771))))

(declare-fun bs!1410100 () Bool)

(assert (= bs!1410100 (and b!5951777 d!1865708)))

(assert (=> bs!1410100 (not (= lambda!324827 lambda!324773))))

(declare-fun bs!1410101 () Bool)

(assert (= bs!1410101 (and b!5951777 b!5950036)))

(assert (=> bs!1410101 (= (= lt!2313265 lt!2313065) (= lambda!324827 lambda!324651))))

(assert (=> bs!1410090 (= (= lt!2313265 lt!2313064) (= lambda!324827 lambda!324650))))

(assert (=> bs!1410091 (= (= lt!2313265 lt!2313068) (= lambda!324827 lambda!324653))))

(declare-fun bs!1410102 () Bool)

(assert (= bs!1410102 (and b!5951777 d!1865630)))

(assert (=> bs!1410102 (not (= lambda!324827 lambda!324762))))

(declare-fun bs!1410103 () Bool)

(assert (= bs!1410103 (and b!5951777 d!1865594)))

(assert (=> bs!1410103 (not (= lambda!324827 lambda!324751))))

(assert (=> b!5951777 true))

(declare-fun bs!1410104 () Bool)

(declare-fun b!5951779 () Bool)

(assert (= bs!1410104 (and b!5951779 d!1865950)))

(declare-fun lambda!324828 () Int)

(assert (=> bs!1410104 (not (= lambda!324828 lambda!324824))))

(declare-fun bs!1410105 () Bool)

(assert (= bs!1410105 (and b!5951779 d!1865910)))

(assert (=> bs!1410105 (not (= lambda!324828 lambda!324811))))

(declare-fun bs!1410106 () Bool)

(assert (= bs!1410106 (and b!5951779 d!1865912)))

(assert (=> bs!1410106 (not (= lambda!324828 lambda!324812))))

(declare-fun bs!1410107 () Bool)

(assert (= bs!1410107 (and b!5951779 b!5951754)))

(declare-fun lt!2313266 () Int)

(assert (=> bs!1410107 (= (= lt!2313266 lt!2313261) (= lambda!324828 lambda!324823))))

(declare-fun bs!1410108 () Bool)

(assert (= bs!1410108 (and b!5951779 b!5951752)))

(assert (=> bs!1410108 (= (= lt!2313266 lt!2313260) (= lambda!324828 lambda!324822))))

(declare-fun bs!1410109 () Bool)

(assert (= bs!1410109 (and b!5951779 b!5950045)))

(assert (=> bs!1410109 (= (= lt!2313266 lt!2313069) (= lambda!324828 lambda!324654))))

(declare-fun bs!1410110 () Bool)

(assert (= bs!1410110 (and b!5951779 d!1865936)))

(assert (=> bs!1410110 (not (= lambda!324828 lambda!324818))))

(declare-fun bs!1410111 () Bool)

(assert (= bs!1410111 (and b!5951779 d!1865688)))

(assert (=> bs!1410111 (not (= lambda!324828 lambda!324771))))

(declare-fun bs!1410112 () Bool)

(assert (= bs!1410112 (and b!5951779 d!1865708)))

(assert (=> bs!1410112 (not (= lambda!324828 lambda!324773))))

(declare-fun bs!1410113 () Bool)

(assert (= bs!1410113 (and b!5951779 b!5950036)))

(assert (=> bs!1410113 (= (= lt!2313266 lt!2313065) (= lambda!324828 lambda!324651))))

(declare-fun bs!1410114 () Bool)

(assert (= bs!1410114 (and b!5951779 b!5951777)))

(assert (=> bs!1410114 (= (= lt!2313266 lt!2313265) (= lambda!324828 lambda!324827))))

(declare-fun bs!1410115 () Bool)

(assert (= bs!1410115 (and b!5951779 b!5950034)))

(assert (=> bs!1410115 (= (= lt!2313266 lt!2313064) (= lambda!324828 lambda!324650))))

(declare-fun bs!1410116 () Bool)

(assert (= bs!1410116 (and b!5951779 b!5950043)))

(assert (=> bs!1410116 (= (= lt!2313266 lt!2313068) (= lambda!324828 lambda!324653))))

(declare-fun bs!1410117 () Bool)

(assert (= bs!1410117 (and b!5951779 d!1865630)))

(assert (=> bs!1410117 (not (= lambda!324828 lambda!324762))))

(declare-fun bs!1410118 () Bool)

(assert (= bs!1410118 (and b!5951779 d!1865594)))

(assert (=> bs!1410118 (not (= lambda!324828 lambda!324751))))

(assert (=> b!5951779 true))

(declare-fun d!1865968 () Bool)

(declare-fun e!3641017 () Bool)

(assert (=> d!1865968 e!3641017))

(declare-fun res!2491404 () Bool)

(assert (=> d!1865968 (=> (not res!2491404) (not e!3641017))))

(assert (=> d!1865968 (= res!2491404 (>= lt!2313266 0))))

(declare-fun e!3641016 () Int)

(assert (=> d!1865968 (= lt!2313266 e!3641016)))

(declare-fun c!1059152 () Bool)

(assert (=> d!1865968 (= c!1059152 ((_ is Cons!64155) (t!377688 (Cons!64155 lt!2312982 Nil!64155))))))

(assert (=> d!1865968 (= (zipperDepth!242 (t!377688 (Cons!64155 lt!2312982 Nil!64155))) lt!2313266)))

(assert (=> b!5951777 (= e!3641016 lt!2313265)))

(assert (=> b!5951777 (= lt!2313265 (maxBigInt!0 (contextDepth!141 (h!70603 (t!377688 (Cons!64155 lt!2312982 Nil!64155)))) (zipperDepth!242 (t!377688 (t!377688 (Cons!64155 lt!2312982 Nil!64155))))))))

(declare-fun lt!2313267 () Unit!157257)

(assert (=> b!5951777 (= lt!2313267 (lemmaForallContextDepthBiggerThanTransitive!126 (t!377688 (t!377688 (Cons!64155 lt!2312982 Nil!64155))) lt!2313265 (zipperDepth!242 (t!377688 (t!377688 (Cons!64155 lt!2312982 Nil!64155)))) lambda!324826))))

(assert (=> b!5951777 (forall!15077 (t!377688 (t!377688 (Cons!64155 lt!2312982 Nil!64155))) lambda!324827)))

(declare-fun lt!2313264 () Unit!157257)

(assert (=> b!5951777 (= lt!2313264 lt!2313267)))

(declare-fun b!5951778 () Bool)

(assert (=> b!5951778 (= e!3641016 0)))

(assert (=> b!5951779 (= e!3641017 (forall!15077 (t!377688 (Cons!64155 lt!2312982 Nil!64155)) lambda!324828))))

(assert (= (and d!1865968 c!1059152) b!5951777))

(assert (= (and d!1865968 (not c!1059152)) b!5951778))

(assert (= (and d!1865968 res!2491404) b!5951779))

(declare-fun m!6839572 () Bool)

(assert (=> b!5951777 m!6839572))

(declare-fun m!6839574 () Bool)

(assert (=> b!5951777 m!6839574))

(declare-fun m!6839576 () Bool)

(assert (=> b!5951777 m!6839576))

(assert (=> b!5951777 m!6839572))

(declare-fun m!6839578 () Bool)

(assert (=> b!5951777 m!6839578))

(assert (=> b!5951777 m!6839572))

(assert (=> b!5951777 m!6839576))

(declare-fun m!6839580 () Bool)

(assert (=> b!5951777 m!6839580))

(declare-fun m!6839582 () Bool)

(assert (=> b!5951779 m!6839582))

(assert (=> b!5950043 d!1865968))

(declare-fun bs!1410119 () Bool)

(declare-fun d!1865970 () Bool)

(assert (= bs!1410119 (and d!1865970 d!1865950)))

(declare-fun lambda!324829 () Int)

(assert (=> bs!1410119 (not (= lambda!324829 lambda!324824))))

(declare-fun bs!1410120 () Bool)

(assert (= bs!1410120 (and d!1865970 d!1865910)))

(assert (=> bs!1410120 (not (= lambda!324829 lambda!324811))))

(declare-fun bs!1410121 () Bool)

(assert (= bs!1410121 (and d!1865970 d!1865912)))

(assert (=> bs!1410121 (not (= lambda!324829 lambda!324812))))

(declare-fun bs!1410122 () Bool)

(assert (= bs!1410122 (and d!1865970 b!5951754)))

(assert (=> bs!1410122 (not (= lambda!324829 lambda!324823))))

(declare-fun bs!1410123 () Bool)

(assert (= bs!1410123 (and d!1865970 b!5951752)))

(assert (=> bs!1410123 (not (= lambda!324829 lambda!324822))))

(declare-fun bs!1410124 () Bool)

(assert (= bs!1410124 (and d!1865970 b!5950045)))

(assert (=> bs!1410124 (not (= lambda!324829 lambda!324654))))

(declare-fun bs!1410125 () Bool)

(assert (= bs!1410125 (and d!1865970 d!1865936)))

(assert (=> bs!1410125 (= (and (= lt!2313068 lt!2313064) (= lambda!324652 lambda!324648)) (= lambda!324829 lambda!324818))))

(declare-fun bs!1410126 () Bool)

(assert (= bs!1410126 (and d!1865970 d!1865688)))

(assert (=> bs!1410126 (not (= lambda!324829 lambda!324771))))

(declare-fun bs!1410127 () Bool)

(assert (= bs!1410127 (and d!1865970 d!1865708)))

(assert (=> bs!1410127 (not (= lambda!324829 lambda!324773))))

(declare-fun bs!1410128 () Bool)

(assert (= bs!1410128 (and d!1865970 b!5950036)))

(assert (=> bs!1410128 (not (= lambda!324829 lambda!324651))))

(declare-fun bs!1410129 () Bool)

(assert (= bs!1410129 (and d!1865970 b!5951779)))

(assert (=> bs!1410129 (not (= lambda!324829 lambda!324828))))

(declare-fun bs!1410130 () Bool)

(assert (= bs!1410130 (and d!1865970 b!5951777)))

(assert (=> bs!1410130 (not (= lambda!324829 lambda!324827))))

(declare-fun bs!1410131 () Bool)

(assert (= bs!1410131 (and d!1865970 b!5950034)))

(assert (=> bs!1410131 (not (= lambda!324829 lambda!324650))))

(declare-fun bs!1410132 () Bool)

(assert (= bs!1410132 (and d!1865970 b!5950043)))

(assert (=> bs!1410132 (not (= lambda!324829 lambda!324653))))

(declare-fun bs!1410133 () Bool)

(assert (= bs!1410133 (and d!1865970 d!1865630)))

(assert (=> bs!1410133 (not (= lambda!324829 lambda!324762))))

(declare-fun bs!1410134 () Bool)

(assert (= bs!1410134 (and d!1865970 d!1865594)))

(assert (=> bs!1410134 (not (= lambda!324829 lambda!324751))))

(assert (=> d!1865970 true))

(assert (=> d!1865970 true))

(assert (=> d!1865970 (< (dynLambda!25103 order!27249 lambda!324652) (dynLambda!25104 order!27251 lambda!324829))))

(assert (=> d!1865970 (forall!15077 (t!377688 (Cons!64155 lt!2312982 Nil!64155)) lambda!324829)))

(declare-fun lt!2313268 () Unit!157257)

(assert (=> d!1865970 (= lt!2313268 (choose!44848 (t!377688 (Cons!64155 lt!2312982 Nil!64155)) lt!2313068 (zipperDepth!242 (t!377688 (Cons!64155 lt!2312982 Nil!64155))) lambda!324652))))

(assert (=> d!1865970 (>= lt!2313068 (zipperDepth!242 (t!377688 (Cons!64155 lt!2312982 Nil!64155))))))

(assert (=> d!1865970 (= (lemmaForallContextDepthBiggerThanTransitive!126 (t!377688 (Cons!64155 lt!2312982 Nil!64155)) lt!2313068 (zipperDepth!242 (t!377688 (Cons!64155 lt!2312982 Nil!64155))) lambda!324652) lt!2313268)))

(declare-fun bs!1410135 () Bool)

(assert (= bs!1410135 d!1865970))

(declare-fun m!6839584 () Bool)

(assert (=> bs!1410135 m!6839584))

(assert (=> bs!1410135 m!6837906))

(declare-fun m!6839586 () Bool)

(assert (=> bs!1410135 m!6839586))

(assert (=> b!5950043 d!1865970))

(declare-fun d!1865972 () Bool)

(declare-fun res!2491405 () Bool)

(declare-fun e!3641018 () Bool)

(assert (=> d!1865972 (=> res!2491405 e!3641018)))

(assert (=> d!1865972 (= res!2491405 ((_ is Nil!64155) (t!377688 (Cons!64155 lt!2312982 Nil!64155))))))

(assert (=> d!1865972 (= (forall!15077 (t!377688 (Cons!64155 lt!2312982 Nil!64155)) lambda!324653) e!3641018)))

(declare-fun b!5951780 () Bool)

(declare-fun e!3641019 () Bool)

(assert (=> b!5951780 (= e!3641018 e!3641019)))

(declare-fun res!2491406 () Bool)

(assert (=> b!5951780 (=> (not res!2491406) (not e!3641019))))

(assert (=> b!5951780 (= res!2491406 (dynLambda!25102 lambda!324653 (h!70603 (t!377688 (Cons!64155 lt!2312982 Nil!64155)))))))

(declare-fun b!5951781 () Bool)

(assert (=> b!5951781 (= e!3641019 (forall!15077 (t!377688 (t!377688 (Cons!64155 lt!2312982 Nil!64155))) lambda!324653))))

(assert (= (and d!1865972 (not res!2491405)) b!5951780))

(assert (= (and b!5951780 res!2491406) b!5951781))

(declare-fun b_lambda!223689 () Bool)

(assert (=> (not b_lambda!223689) (not b!5951780)))

(declare-fun m!6839588 () Bool)

(assert (=> b!5951780 m!6839588))

(declare-fun m!6839590 () Bool)

(assert (=> b!5951781 m!6839590))

(assert (=> b!5950043 d!1865972))

(declare-fun d!1865974 () Bool)

(assert (=> d!1865974 (= (maxBigInt!0 (contextDepth!141 (h!70603 (Cons!64155 lt!2312982 Nil!64155))) (zipperDepth!242 (t!377688 (Cons!64155 lt!2312982 Nil!64155)))) (ite (>= (contextDepth!141 (h!70603 (Cons!64155 lt!2312982 Nil!64155))) (zipperDepth!242 (t!377688 (Cons!64155 lt!2312982 Nil!64155)))) (contextDepth!141 (h!70603 (Cons!64155 lt!2312982 Nil!64155))) (zipperDepth!242 (t!377688 (Cons!64155 lt!2312982 Nil!64155)))))))

(assert (=> b!5950043 d!1865974))

(declare-fun bs!1410136 () Bool)

(declare-fun b!5951782 () Bool)

(assert (= bs!1410136 (and b!5951782 b!5951545)))

(declare-fun lt!2313269 () Int)

(declare-fun lambda!324830 () Int)

(assert (=> bs!1410136 (= (= lt!2313269 lt!2313246) (= lambda!324830 lambda!324801))))

(declare-fun bs!1410137 () Bool)

(assert (= bs!1410137 (and b!5951782 b!5951547)))

(assert (=> bs!1410137 (= (= lt!2313269 lt!2313248) (= lambda!324830 lambda!324802))))

(declare-fun bs!1410138 () Bool)

(assert (= bs!1410138 (and b!5951782 b!5951749)))

(assert (=> bs!1410138 (= (= lt!2313269 lt!2313255) (= lambda!324830 lambda!324819))))

(declare-fun bs!1410139 () Bool)

(assert (= bs!1410139 (and b!5951782 d!1865262)))

(assert (=> bs!1410139 (not (= lambda!324830 lambda!324663))))

(declare-fun bs!1410140 () Bool)

(assert (= bs!1410140 (and b!5951782 d!1865858)))

(assert (=> bs!1410140 (= (= lt!2313269 lt!2313037) (= lambda!324830 lambda!324803))))

(declare-fun bs!1410141 () Bool)

(assert (= bs!1410141 (and b!5951782 b!5949946)))

(assert (=> bs!1410141 (= (= lt!2313269 lt!2313043) (= lambda!324830 lambda!324635))))

(declare-fun bs!1410142 () Bool)

(assert (= bs!1410142 (and b!5951782 d!1865354)))

(assert (=> bs!1410142 (not (= lambda!324830 lambda!324704))))

(declare-fun bs!1410143 () Bool)

(assert (= bs!1410143 (and b!5951782 d!1865900)))

(assert (=> bs!1410143 (not (= lambda!324830 lambda!324804))))

(declare-fun bs!1410144 () Bool)

(assert (= bs!1410144 (and b!5951782 d!1865258)))

(assert (=> bs!1410144 (not (= lambda!324830 lambda!324662))))

(declare-fun bs!1410145 () Bool)

(assert (= bs!1410145 (and b!5951782 d!1865750)))

(assert (=> bs!1410145 (not (= lambda!324830 lambda!324778))))

(declare-fun bs!1410146 () Bool)

(assert (= bs!1410146 (and b!5951782 b!5951427)))

(assert (=> bs!1410146 (= (= lt!2313269 lt!2313226) (= lambda!324830 lambda!324798))))

(declare-fun bs!1410147 () Bool)

(assert (= bs!1410147 (and b!5951782 d!1865252)))

(assert (=> bs!1410147 (not (= lambda!324830 lambda!324657))))

(declare-fun bs!1410148 () Bool)

(assert (= bs!1410148 (and b!5951782 d!1865584)))

(assert (=> bs!1410148 (not (= lambda!324830 lambda!324747))))

(declare-fun bs!1410149 () Bool)

(assert (= bs!1410149 (and b!5951782 b!5951751)))

(assert (=> bs!1410149 (= (= lt!2313269 lt!2313257) (= lambda!324830 lambda!324820))))

(declare-fun bs!1410150 () Bool)

(assert (= bs!1410150 (and b!5951782 d!1865598)))

(assert (=> bs!1410150 (not (= lambda!324830 lambda!324752))))

(declare-fun bs!1410151 () Bool)

(assert (= bs!1410151 (and b!5951782 b!5951425)))

(assert (=> bs!1410151 (= (= lt!2313269 lt!2313224) (= lambda!324830 lambda!324797))))

(declare-fun bs!1410152 () Bool)

(assert (= bs!1410152 (and b!5951782 d!1865552)))

(assert (=> bs!1410152 (not (= lambda!324830 lambda!324744))))

(declare-fun bs!1410153 () Bool)

(assert (= bs!1410153 (and b!5951782 d!1865362)))

(assert (=> bs!1410153 (not (= lambda!324830 lambda!324707))))

(declare-fun bs!1410154 () Bool)

(assert (= bs!1410154 (and b!5951782 b!5949944)))

(assert (=> bs!1410154 (= (= lt!2313269 lt!2313041) (= lambda!324830 lambda!324634))))

(declare-fun bs!1410155 () Bool)

(assert (= bs!1410155 (and b!5951782 b!5949941)))

(assert (=> bs!1410155 (= (= lt!2313269 lt!2313039) (= lambda!324830 lambda!324633))))

(declare-fun bs!1410156 () Bool)

(assert (= bs!1410156 (and b!5951782 d!1865790)))

(assert (=> bs!1410156 (= (= lt!2313269 lt!2313041) (= lambda!324830 lambda!324795))))

(declare-fun bs!1410157 () Bool)

(assert (= bs!1410157 (and b!5951782 d!1865316)))

(assert (=> bs!1410157 (not (= lambda!324830 lambda!324700))))

(declare-fun bs!1410158 () Bool)

(assert (= bs!1410158 (and b!5951782 b!5949939)))

(assert (=> bs!1410158 (= (= lt!2313269 lt!2313037) (= lambda!324830 lambda!324632))))

(assert (=> b!5951782 true))

(declare-fun bs!1410159 () Bool)

(declare-fun b!5951784 () Bool)

(assert (= bs!1410159 (and b!5951784 b!5951545)))

(declare-fun lt!2313271 () Int)

(declare-fun lambda!324831 () Int)

(assert (=> bs!1410159 (= (= lt!2313271 lt!2313246) (= lambda!324831 lambda!324801))))

(declare-fun bs!1410160 () Bool)

(assert (= bs!1410160 (and b!5951784 b!5951547)))

(assert (=> bs!1410160 (= (= lt!2313271 lt!2313248) (= lambda!324831 lambda!324802))))

(declare-fun bs!1410161 () Bool)

(assert (= bs!1410161 (and b!5951784 b!5951749)))

(assert (=> bs!1410161 (= (= lt!2313271 lt!2313255) (= lambda!324831 lambda!324819))))

(declare-fun bs!1410162 () Bool)

(assert (= bs!1410162 (and b!5951784 b!5951782)))

(assert (=> bs!1410162 (= (= lt!2313271 lt!2313269) (= lambda!324831 lambda!324830))))

(declare-fun bs!1410163 () Bool)

(assert (= bs!1410163 (and b!5951784 d!1865262)))

(assert (=> bs!1410163 (not (= lambda!324831 lambda!324663))))

(declare-fun bs!1410164 () Bool)

(assert (= bs!1410164 (and b!5951784 d!1865858)))

(assert (=> bs!1410164 (= (= lt!2313271 lt!2313037) (= lambda!324831 lambda!324803))))

(declare-fun bs!1410165 () Bool)

(assert (= bs!1410165 (and b!5951784 b!5949946)))

(assert (=> bs!1410165 (= (= lt!2313271 lt!2313043) (= lambda!324831 lambda!324635))))

(declare-fun bs!1410166 () Bool)

(assert (= bs!1410166 (and b!5951784 d!1865354)))

(assert (=> bs!1410166 (not (= lambda!324831 lambda!324704))))

(declare-fun bs!1410167 () Bool)

(assert (= bs!1410167 (and b!5951784 d!1865900)))

(assert (=> bs!1410167 (not (= lambda!324831 lambda!324804))))

(declare-fun bs!1410168 () Bool)

(assert (= bs!1410168 (and b!5951784 d!1865258)))

(assert (=> bs!1410168 (not (= lambda!324831 lambda!324662))))

(declare-fun bs!1410169 () Bool)

(assert (= bs!1410169 (and b!5951784 d!1865750)))

(assert (=> bs!1410169 (not (= lambda!324831 lambda!324778))))

(declare-fun bs!1410170 () Bool)

(assert (= bs!1410170 (and b!5951784 b!5951427)))

(assert (=> bs!1410170 (= (= lt!2313271 lt!2313226) (= lambda!324831 lambda!324798))))

(declare-fun bs!1410171 () Bool)

(assert (= bs!1410171 (and b!5951784 d!1865252)))

(assert (=> bs!1410171 (not (= lambda!324831 lambda!324657))))

(declare-fun bs!1410172 () Bool)

(assert (= bs!1410172 (and b!5951784 d!1865584)))

(assert (=> bs!1410172 (not (= lambda!324831 lambda!324747))))

(declare-fun bs!1410173 () Bool)

(assert (= bs!1410173 (and b!5951784 b!5951751)))

(assert (=> bs!1410173 (= (= lt!2313271 lt!2313257) (= lambda!324831 lambda!324820))))

(declare-fun bs!1410174 () Bool)

(assert (= bs!1410174 (and b!5951784 d!1865598)))

(assert (=> bs!1410174 (not (= lambda!324831 lambda!324752))))

(declare-fun bs!1410175 () Bool)

(assert (= bs!1410175 (and b!5951784 b!5951425)))

(assert (=> bs!1410175 (= (= lt!2313271 lt!2313224) (= lambda!324831 lambda!324797))))

(declare-fun bs!1410176 () Bool)

(assert (= bs!1410176 (and b!5951784 d!1865552)))

(assert (=> bs!1410176 (not (= lambda!324831 lambda!324744))))

(declare-fun bs!1410177 () Bool)

(assert (= bs!1410177 (and b!5951784 d!1865362)))

(assert (=> bs!1410177 (not (= lambda!324831 lambda!324707))))

(declare-fun bs!1410178 () Bool)

(assert (= bs!1410178 (and b!5951784 b!5949944)))

(assert (=> bs!1410178 (= (= lt!2313271 lt!2313041) (= lambda!324831 lambda!324634))))

(declare-fun bs!1410179 () Bool)

(assert (= bs!1410179 (and b!5951784 b!5949941)))

(assert (=> bs!1410179 (= (= lt!2313271 lt!2313039) (= lambda!324831 lambda!324633))))

(declare-fun bs!1410180 () Bool)

(assert (= bs!1410180 (and b!5951784 d!1865790)))

(assert (=> bs!1410180 (= (= lt!2313271 lt!2313041) (= lambda!324831 lambda!324795))))

(declare-fun bs!1410181 () Bool)

(assert (= bs!1410181 (and b!5951784 d!1865316)))

(assert (=> bs!1410181 (not (= lambda!324831 lambda!324700))))

(declare-fun bs!1410182 () Bool)

(assert (= bs!1410182 (and b!5951784 b!5949939)))

(assert (=> bs!1410182 (= (= lt!2313271 lt!2313037) (= lambda!324831 lambda!324632))))

(assert (=> b!5951784 true))

(declare-fun d!1865976 () Bool)

(declare-fun e!3641021 () Bool)

(assert (=> d!1865976 e!3641021))

(declare-fun res!2491407 () Bool)

(assert (=> d!1865976 (=> (not res!2491407) (not e!3641021))))

(assert (=> d!1865976 (= res!2491407 (>= lt!2313271 0))))

(declare-fun e!3641020 () Int)

(assert (=> d!1865976 (= lt!2313271 e!3641020)))

(declare-fun c!1059153 () Bool)

(assert (=> d!1865976 (= c!1059153 ((_ is Cons!64154) (exprs!5877 (h!70603 (Cons!64155 lt!2312982 Nil!64155)))))))

(assert (=> d!1865976 (= (contextDepth!141 (h!70603 (Cons!64155 lt!2312982 Nil!64155))) lt!2313271)))

(assert (=> b!5951782 (= e!3641020 lt!2313269)))

(assert (=> b!5951782 (= lt!2313269 (maxBigInt!0 (regexDepth!249 (h!70602 (exprs!5877 (h!70603 (Cons!64155 lt!2312982 Nil!64155))))) (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 (h!70603 (Cons!64155 lt!2312982 Nil!64155))))))))))

(declare-fun lt!2313272 () Unit!157257)

(assert (=> b!5951782 (= lt!2313272 (lemmaForallRegexDepthBiggerThanTransitive!41 (t!377687 (exprs!5877 (h!70603 (Cons!64155 lt!2312982 Nil!64155)))) lt!2313269 (contextDepth!141 (Context!10755 (t!377687 (exprs!5877 (h!70603 (Cons!64155 lt!2312982 Nil!64155))))))))))

(assert (=> b!5951782 (forall!15076 (t!377687 (exprs!5877 (h!70603 (Cons!64155 lt!2312982 Nil!64155)))) lambda!324830)))

(declare-fun lt!2313270 () Unit!157257)

(assert (=> b!5951782 (= lt!2313270 lt!2313272)))

(declare-fun b!5951783 () Bool)

(assert (=> b!5951783 (= e!3641020 0)))

(assert (=> b!5951784 (= e!3641021 (forall!15076 (exprs!5877 (h!70603 (Cons!64155 lt!2312982 Nil!64155))) lambda!324831))))

(assert (= (and d!1865976 c!1059153) b!5951782))

(assert (= (and d!1865976 (not c!1059153)) b!5951783))

(assert (= (and d!1865976 res!2491407) b!5951784))

(declare-fun m!6839592 () Bool)

(assert (=> b!5951782 m!6839592))

(declare-fun m!6839594 () Bool)

(assert (=> b!5951782 m!6839594))

(assert (=> b!5951782 m!6839592))

(declare-fun m!6839596 () Bool)

(assert (=> b!5951782 m!6839596))

(assert (=> b!5951782 m!6839594))

(declare-fun m!6839598 () Bool)

(assert (=> b!5951782 m!6839598))

(assert (=> b!5951782 m!6839592))

(declare-fun m!6839600 () Bool)

(assert (=> b!5951782 m!6839600))

(declare-fun m!6839602 () Bool)

(assert (=> b!5951784 m!6839602))

(assert (=> b!5950043 d!1865976))

(declare-fun d!1865978 () Bool)

(assert (=> d!1865978 (= (isEmpty!36033 (exprs!5877 (h!70603 zl!343))) ((_ is Nil!64154) (exprs!5877 (h!70603 zl!343))))))

(assert (=> b!5950115 d!1865978))

(declare-fun d!1865980 () Bool)

(assert (=> d!1865980 (= (nullable!5988 (h!70602 (exprs!5877 lt!2313004))) (nullableFct!1960 (h!70602 (exprs!5877 lt!2313004))))))

(declare-fun bs!1410183 () Bool)

(assert (= bs!1410183 d!1865980))

(declare-fun m!6839604 () Bool)

(assert (=> bs!1410183 m!6839604))

(assert (=> b!5950344 d!1865980))

(declare-fun d!1865982 () Bool)

(assert (=> d!1865982 (= (Exists!3063 (ite c!1058708 lambda!324672 lambda!324673)) (choose!44842 (ite c!1058708 lambda!324672 lambda!324673)))))

(declare-fun bs!1410184 () Bool)

(assert (= bs!1410184 d!1865982))

(declare-fun m!6839606 () Bool)

(assert (=> bs!1410184 m!6839606))

(assert (=> bm!473824 d!1865982))

(declare-fun d!1865984 () Bool)

(assert (=> d!1865984 (= (isEmpty!36033 (t!377687 (unfocusZipperList!1414 zl!343))) ((_ is Nil!64154) (t!377687 (unfocusZipperList!1414 zl!343))))))

(assert (=> b!5950462 d!1865984))

(declare-fun bs!1410185 () Bool)

(declare-fun d!1865986 () Bool)

(assert (= bs!1410185 (and d!1865986 d!1865950)))

(declare-fun lambda!324832 () Int)

(assert (=> bs!1410185 (= lambda!324832 lambda!324824)))

(declare-fun bs!1410186 () Bool)

(assert (= bs!1410186 (and d!1865986 d!1865970)))

(assert (=> bs!1410186 (not (= lambda!324832 lambda!324829))))

(declare-fun bs!1410187 () Bool)

(assert (= bs!1410187 (and d!1865986 d!1865910)))

(assert (=> bs!1410187 (= lambda!324832 lambda!324811)))

(declare-fun bs!1410188 () Bool)

(assert (= bs!1410188 (and d!1865986 d!1865912)))

(assert (=> bs!1410188 (= lambda!324832 lambda!324812)))

(declare-fun bs!1410189 () Bool)

(assert (= bs!1410189 (and d!1865986 b!5951754)))

(assert (=> bs!1410189 (not (= lambda!324832 lambda!324823))))

(declare-fun bs!1410190 () Bool)

(assert (= bs!1410190 (and d!1865986 b!5951752)))

(assert (=> bs!1410190 (not (= lambda!324832 lambda!324822))))

(declare-fun bs!1410191 () Bool)

(assert (= bs!1410191 (and d!1865986 b!5950045)))

(assert (=> bs!1410191 (not (= lambda!324832 lambda!324654))))

(declare-fun bs!1410192 () Bool)

(assert (= bs!1410192 (and d!1865986 d!1865936)))

(assert (=> bs!1410192 (not (= lambda!324832 lambda!324818))))

(declare-fun bs!1410193 () Bool)

(assert (= bs!1410193 (and d!1865986 d!1865688)))

(assert (=> bs!1410193 (= lambda!324832 lambda!324771)))

(declare-fun bs!1410194 () Bool)

(assert (= bs!1410194 (and d!1865986 d!1865708)))

(assert (=> bs!1410194 (= lambda!324832 lambda!324773)))

(declare-fun bs!1410195 () Bool)

(assert (= bs!1410195 (and d!1865986 b!5950036)))

(assert (=> bs!1410195 (not (= lambda!324832 lambda!324651))))

(declare-fun bs!1410196 () Bool)

(assert (= bs!1410196 (and d!1865986 b!5951779)))

(assert (=> bs!1410196 (not (= lambda!324832 lambda!324828))))

(declare-fun bs!1410197 () Bool)

(assert (= bs!1410197 (and d!1865986 b!5951777)))

(assert (=> bs!1410197 (not (= lambda!324832 lambda!324827))))

(declare-fun bs!1410198 () Bool)

(assert (= bs!1410198 (and d!1865986 b!5950034)))

(assert (=> bs!1410198 (not (= lambda!324832 lambda!324650))))

(declare-fun bs!1410199 () Bool)

(assert (= bs!1410199 (and d!1865986 b!5950043)))

(assert (=> bs!1410199 (not (= lambda!324832 lambda!324653))))

(declare-fun bs!1410200 () Bool)

(assert (= bs!1410200 (and d!1865986 d!1865630)))

(assert (=> bs!1410200 (= lambda!324832 lambda!324762)))

(declare-fun bs!1410201 () Bool)

(assert (= bs!1410201 (and d!1865986 d!1865594)))

(assert (=> bs!1410201 (= lambda!324832 lambda!324751)))

(assert (=> d!1865986 (= (nullableZipper!1799 lt!2312994) (exists!2352 lt!2312994 lambda!324832))))

(declare-fun bs!1410202 () Bool)

(assert (= bs!1410202 d!1865986))

(declare-fun m!6839608 () Bool)

(assert (=> bs!1410202 m!6839608))

(assert (=> b!5949883 d!1865986))

(declare-fun b!5951785 () Bool)

(declare-fun call!474139 () (InoxSet Context!10754))

(declare-fun e!3641023 () (InoxSet Context!10754))

(assert (=> b!5951785 (= e!3641023 ((_ map or) call!474139 (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343))))))) (h!70604 s!2326))))))

(declare-fun b!5951786 () Bool)

(declare-fun e!3641024 () (InoxSet Context!10754))

(assert (=> b!5951786 (= e!3641023 e!3641024)))

(declare-fun c!1059154 () Bool)

(assert (=> b!5951786 (= c!1059154 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))))))))

(declare-fun b!5951787 () Bool)

(assert (=> b!5951787 (= e!3641024 call!474139)))

(declare-fun d!1865988 () Bool)

(declare-fun c!1059155 () Bool)

(declare-fun e!3641022 () Bool)

(assert (=> d!1865988 (= c!1059155 e!3641022)))

(declare-fun res!2491408 () Bool)

(assert (=> d!1865988 (=> (not res!2491408) (not e!3641022))))

(assert (=> d!1865988 (= res!2491408 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))))))))

(assert (=> d!1865988 (= (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))) (h!70604 s!2326)) e!3641023)))

(declare-fun bm!474134 () Bool)

(assert (=> bm!474134 (= call!474139 (derivationStepZipperDown!1243 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343)))))) (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343))))))) (h!70604 s!2326)))))

(declare-fun b!5951788 () Bool)

(assert (=> b!5951788 (= e!3641024 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951789 () Bool)

(assert (=> b!5951789 (= e!3641022 (nullable!5988 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 (h!70603 zl!343))))))))))

(assert (= (and d!1865988 res!2491408) b!5951789))

(assert (= (and d!1865988 c!1059155) b!5951785))

(assert (= (and d!1865988 (not c!1059155)) b!5951786))

(assert (= (and b!5951786 c!1059154) b!5951787))

(assert (= (and b!5951786 (not c!1059154)) b!5951788))

(assert (= (or b!5951785 b!5951787) bm!474134))

(declare-fun m!6839610 () Bool)

(assert (=> b!5951785 m!6839610))

(declare-fun m!6839612 () Bool)

(assert (=> bm!474134 m!6839612))

(declare-fun m!6839614 () Bool)

(assert (=> b!5951789 m!6839614))

(assert (=> b!5949985 d!1865988))

(declare-fun d!1865990 () Bool)

(assert (=> d!1865990 (= (nullable!5988 (regOne!32498 (regOne!32498 r!7292))) (nullableFct!1960 (regOne!32498 (regOne!32498 r!7292))))))

(declare-fun bs!1410203 () Bool)

(assert (= bs!1410203 d!1865990))

(declare-fun m!6839616 () Bool)

(assert (=> bs!1410203 m!6839616))

(assert (=> b!5950345 d!1865990))

(declare-fun d!1865992 () Bool)

(declare-fun c!1059156 () Bool)

(assert (=> d!1865992 (= c!1059156 (isEmpty!36036 (t!377689 s!2326)))))

(declare-fun e!3641025 () Bool)

(assert (=> d!1865992 (= (matchZipper!2029 ((_ map or) lt!2312995 lt!2313001) (t!377689 s!2326)) e!3641025)))

(declare-fun b!5951790 () Bool)

(assert (=> b!5951790 (= e!3641025 (nullableZipper!1799 ((_ map or) lt!2312995 lt!2313001)))))

(declare-fun b!5951791 () Bool)

(assert (=> b!5951791 (= e!3641025 (matchZipper!2029 (derivationStepZipper!1974 ((_ map or) lt!2312995 lt!2313001) (head!12525 (t!377689 s!2326))) (tail!11610 (t!377689 s!2326))))))

(assert (= (and d!1865992 c!1059156) b!5951790))

(assert (= (and d!1865992 (not c!1059156)) b!5951791))

(assert (=> d!1865992 m!6837742))

(declare-fun m!6839618 () Bool)

(assert (=> b!5951790 m!6839618))

(assert (=> b!5951791 m!6837746))

(assert (=> b!5951791 m!6837746))

(declare-fun m!6839620 () Bool)

(assert (=> b!5951791 m!6839620))

(assert (=> b!5951791 m!6837750))

(assert (=> b!5951791 m!6839620))

(assert (=> b!5951791 m!6837750))

(declare-fun m!6839622 () Bool)

(assert (=> b!5951791 m!6839622))

(assert (=> d!1865206 d!1865992))

(assert (=> d!1865206 d!1865204))

(declare-fun e!3641028 () Bool)

(declare-fun d!1865994 () Bool)

(assert (=> d!1865994 (= (matchZipper!2029 ((_ map or) lt!2312995 lt!2313001) (t!377689 s!2326)) e!3641028)))

(declare-fun res!2491411 () Bool)

(assert (=> d!1865994 (=> res!2491411 e!3641028)))

(assert (=> d!1865994 (= res!2491411 (matchZipper!2029 lt!2312995 (t!377689 s!2326)))))

(assert (=> d!1865994 true))

(declare-fun _$48!1503 () Unit!157257)

(assert (=> d!1865994 (= (choose!44832 lt!2312995 lt!2313001 (t!377689 s!2326)) _$48!1503)))

(declare-fun b!5951794 () Bool)

(assert (=> b!5951794 (= e!3641028 (matchZipper!2029 lt!2313001 (t!377689 s!2326)))))

(assert (= (and d!1865994 (not res!2491411)) b!5951794))

(assert (=> d!1865994 m!6837774))

(assert (=> d!1865994 m!6837668))

(assert (=> b!5951794 m!6837650))

(assert (=> d!1865206 d!1865994))

(declare-fun d!1865996 () Bool)

(assert (=> d!1865996 true))

(declare-fun setRes!40447 () Bool)

(assert (=> d!1865996 setRes!40447))

(declare-fun condSetEmpty!40447 () Bool)

(declare-fun res!2491412 () (InoxSet Context!10754))

(assert (=> d!1865996 (= condSetEmpty!40447 (= res!2491412 ((as const (Array Context!10754 Bool)) false)))))

(assert (=> d!1865996 (= (choose!44833 z!1189 lambda!324608) res!2491412)))

(declare-fun setIsEmpty!40447 () Bool)

(assert (=> setIsEmpty!40447 setRes!40447))

(declare-fun tp!1656018 () Bool)

(declare-fun setNonEmpty!40447 () Bool)

(declare-fun e!3641029 () Bool)

(declare-fun setElem!40447 () Context!10754)

(assert (=> setNonEmpty!40447 (= setRes!40447 (and tp!1656018 (inv!83229 setElem!40447) e!3641029))))

(declare-fun setRest!40447 () (InoxSet Context!10754))

(assert (=> setNonEmpty!40447 (= res!2491412 ((_ map or) (store ((as const (Array Context!10754 Bool)) false) setElem!40447 true) setRest!40447))))

(declare-fun b!5951795 () Bool)

(declare-fun tp!1656017 () Bool)

(assert (=> b!5951795 (= e!3641029 tp!1656017)))

(assert (= (and d!1865996 condSetEmpty!40447) setIsEmpty!40447))

(assert (= (and d!1865996 (not condSetEmpty!40447)) setNonEmpty!40447))

(assert (= setNonEmpty!40447 b!5951795))

(declare-fun m!6839624 () Bool)

(assert (=> setNonEmpty!40447 m!6839624))

(assert (=> d!1865220 d!1865996))

(declare-fun d!1865998 () Bool)

(assert (=> d!1865998 true))

(declare-fun setRes!40448 () Bool)

(assert (=> d!1865998 setRes!40448))

(declare-fun condSetEmpty!40448 () Bool)

(declare-fun res!2491413 () (InoxSet Context!10754))

(assert (=> d!1865998 (= condSetEmpty!40448 (= res!2491413 ((as const (Array Context!10754 Bool)) false)))))

(assert (=> d!1865998 (= (choose!44833 lt!2312981 lambda!324608) res!2491413)))

(declare-fun setIsEmpty!40448 () Bool)

(assert (=> setIsEmpty!40448 setRes!40448))

(declare-fun setElem!40448 () Context!10754)

(declare-fun tp!1656020 () Bool)

(declare-fun e!3641030 () Bool)

(declare-fun setNonEmpty!40448 () Bool)

(assert (=> setNonEmpty!40448 (= setRes!40448 (and tp!1656020 (inv!83229 setElem!40448) e!3641030))))

(declare-fun setRest!40448 () (InoxSet Context!10754))

(assert (=> setNonEmpty!40448 (= res!2491413 ((_ map or) (store ((as const (Array Context!10754 Bool)) false) setElem!40448 true) setRest!40448))))

(declare-fun b!5951796 () Bool)

(declare-fun tp!1656019 () Bool)

(assert (=> b!5951796 (= e!3641030 tp!1656019)))

(assert (= (and d!1865998 condSetEmpty!40448) setIsEmpty!40448))

(assert (= (and d!1865998 (not condSetEmpty!40448)) setNonEmpty!40448))

(assert (= setNonEmpty!40448 b!5951796))

(declare-fun m!6839626 () Bool)

(assert (=> setNonEmpty!40448 m!6839626))

(assert (=> d!1865340 d!1865998))

(declare-fun d!1866000 () Bool)

(declare-fun res!2491414 () Bool)

(declare-fun e!3641031 () Bool)

(assert (=> d!1866000 (=> res!2491414 e!3641031)))

(assert (=> d!1866000 (= res!2491414 ((_ is Nil!64154) (exprs!5877 lt!2312982)))))

(assert (=> d!1866000 (= (forall!15076 (exprs!5877 lt!2312982) lambda!324635) e!3641031)))

(declare-fun b!5951797 () Bool)

(declare-fun e!3641032 () Bool)

(assert (=> b!5951797 (= e!3641031 e!3641032)))

(declare-fun res!2491415 () Bool)

(assert (=> b!5951797 (=> (not res!2491415) (not e!3641032))))

(assert (=> b!5951797 (= res!2491415 (dynLambda!25100 lambda!324635 (h!70602 (exprs!5877 lt!2312982))))))

(declare-fun b!5951798 () Bool)

(assert (=> b!5951798 (= e!3641032 (forall!15076 (t!377687 (exprs!5877 lt!2312982)) lambda!324635))))

(assert (= (and d!1866000 (not res!2491414)) b!5951797))

(assert (= (and b!5951797 res!2491415) b!5951798))

(declare-fun b_lambda!223691 () Bool)

(assert (=> (not b_lambda!223691) (not b!5951797)))

(declare-fun m!6839628 () Bool)

(assert (=> b!5951797 m!6839628))

(declare-fun m!6839630 () Bool)

(assert (=> b!5951798 m!6839630))

(assert (=> b!5949946 d!1866000))

(declare-fun d!1866002 () Bool)

(declare-fun res!2491416 () Bool)

(declare-fun e!3641033 () Bool)

(assert (=> d!1866002 (=> res!2491416 e!3641033)))

(assert (=> d!1866002 (= res!2491416 ((_ is Nil!64154) (exprs!5877 (h!70603 zl!343))))))

(assert (=> d!1866002 (= (forall!15076 (exprs!5877 (h!70603 zl!343)) lambda!324657) e!3641033)))

(declare-fun b!5951799 () Bool)

(declare-fun e!3641034 () Bool)

(assert (=> b!5951799 (= e!3641033 e!3641034)))

(declare-fun res!2491417 () Bool)

(assert (=> b!5951799 (=> (not res!2491417) (not e!3641034))))

(assert (=> b!5951799 (= res!2491417 (dynLambda!25100 lambda!324657 (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun b!5951800 () Bool)

(assert (=> b!5951800 (= e!3641034 (forall!15076 (t!377687 (exprs!5877 (h!70603 zl!343))) lambda!324657))))

(assert (= (and d!1866002 (not res!2491416)) b!5951799))

(assert (= (and b!5951799 res!2491417) b!5951800))

(declare-fun b_lambda!223693 () Bool)

(assert (=> (not b_lambda!223693) (not b!5951799)))

(declare-fun m!6839632 () Bool)

(assert (=> b!5951799 m!6839632))

(declare-fun m!6839634 () Bool)

(assert (=> b!5951800 m!6839634))

(assert (=> d!1865252 d!1866002))

(declare-fun d!1866004 () Bool)

(assert (=> d!1866004 (= (nullable!5988 (reg!16322 r!7292)) (nullableFct!1960 (reg!16322 r!7292)))))

(declare-fun bs!1410204 () Bool)

(assert (= bs!1410204 d!1866004))

(declare-fun m!6839636 () Bool)

(assert (=> bs!1410204 m!6839636))

(assert (=> b!5949848 d!1866004))

(declare-fun d!1866006 () Bool)

(assert (=> d!1866006 (= (flatMap!1506 z!1189 lambda!324692) (choose!44833 z!1189 lambda!324692))))

(declare-fun bs!1410205 () Bool)

(assert (= bs!1410205 d!1866006))

(declare-fun m!6839638 () Bool)

(assert (=> bs!1410205 m!6839638))

(assert (=> d!1865300 d!1866006))

(declare-fun b!5951801 () Bool)

(declare-fun call!474140 () (InoxSet Context!10754))

(declare-fun e!3641036 () (InoxSet Context!10754))

(assert (=> b!5951801 (= e!3641036 ((_ map or) call!474140 (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))))) (h!70604 s!2326))))))

(declare-fun b!5951802 () Bool)

(declare-fun e!3641037 () (InoxSet Context!10754))

(assert (=> b!5951802 (= e!3641036 e!3641037)))

(declare-fun c!1059157 () Bool)

(assert (=> b!5951802 (= c!1059157 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))))))

(declare-fun b!5951803 () Bool)

(assert (=> b!5951803 (= e!3641037 call!474140)))

(declare-fun d!1866008 () Bool)

(declare-fun c!1059158 () Bool)

(declare-fun e!3641035 () Bool)

(assert (=> d!1866008 (= c!1059158 e!3641035)))

(declare-fun res!2491418 () Bool)

(assert (=> d!1866008 (=> (not res!2491418) (not e!3641035))))

(assert (=> d!1866008 (= res!2491418 ((_ is Cons!64154) (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))))))

(assert (=> d!1866008 (= (derivationStepZipperUp!1169 (Context!10755 (t!377687 (exprs!5877 lt!2312982))) (h!70604 s!2326)) e!3641036)))

(declare-fun bm!474135 () Bool)

(assert (=> bm!474135 (= call!474140 (derivationStepZipperDown!1243 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982))))) (Context!10755 (t!377687 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))))) (h!70604 s!2326)))))

(declare-fun b!5951804 () Bool)

(assert (=> b!5951804 (= e!3641037 ((as const (Array Context!10754 Bool)) false))))

(declare-fun b!5951805 () Bool)

(assert (=> b!5951805 (= e!3641035 (nullable!5988 (h!70602 (exprs!5877 (Context!10755 (t!377687 (exprs!5877 lt!2312982)))))))))

(assert (= (and d!1866008 res!2491418) b!5951805))

(assert (= (and d!1866008 c!1059158) b!5951801))

(assert (= (and d!1866008 (not c!1059158)) b!5951802))

(assert (= (and b!5951802 c!1059157) b!5951803))

(assert (= (and b!5951802 (not c!1059157)) b!5951804))

(assert (= (or b!5951801 b!5951803) bm!474135))

(declare-fun m!6839640 () Bool)

(assert (=> b!5951801 m!6839640))

(declare-fun m!6839642 () Bool)

(assert (=> bm!474135 m!6839642))

(declare-fun m!6839644 () Bool)

(assert (=> b!5951805 m!6839644))

(assert (=> b!5950305 d!1866008))

(declare-fun b!5951808 () Bool)

(declare-fun e!3641038 () Bool)

(declare-fun tp!1656021 () Bool)

(assert (=> b!5951808 (= e!3641038 tp!1656021)))

(declare-fun b!5951809 () Bool)

(declare-fun tp!1656025 () Bool)

(declare-fun tp!1656024 () Bool)

(assert (=> b!5951809 (= e!3641038 (and tp!1656025 tp!1656024))))

(declare-fun b!5951807 () Bool)

(declare-fun tp!1656022 () Bool)

(declare-fun tp!1656023 () Bool)

(assert (=> b!5951807 (= e!3641038 (and tp!1656022 tp!1656023))))

(assert (=> b!5950542 (= tp!1655817 e!3641038)))

(declare-fun b!5951806 () Bool)

(assert (=> b!5951806 (= e!3641038 tp_is_empty!41239)))

(assert (= (and b!5950542 ((_ is ElementMatch!15993) (reg!16322 (regTwo!32499 r!7292)))) b!5951806))

(assert (= (and b!5950542 ((_ is Concat!24838) (reg!16322 (regTwo!32499 r!7292)))) b!5951807))

(assert (= (and b!5950542 ((_ is Star!15993) (reg!16322 (regTwo!32499 r!7292)))) b!5951808))

(assert (= (and b!5950542 ((_ is Union!15993) (reg!16322 (regTwo!32499 r!7292)))) b!5951809))

(declare-fun b!5951812 () Bool)

(declare-fun e!3641039 () Bool)

(declare-fun tp!1656026 () Bool)

(assert (=> b!5951812 (= e!3641039 tp!1656026)))

(declare-fun b!5951813 () Bool)

(declare-fun tp!1656030 () Bool)

(declare-fun tp!1656029 () Bool)

(assert (=> b!5951813 (= e!3641039 (and tp!1656030 tp!1656029))))

(declare-fun b!5951811 () Bool)

(declare-fun tp!1656027 () Bool)

(declare-fun tp!1656028 () Bool)

(assert (=> b!5951811 (= e!3641039 (and tp!1656027 tp!1656028))))

(assert (=> b!5950541 (= tp!1655818 e!3641039)))

(declare-fun b!5951810 () Bool)

(assert (=> b!5951810 (= e!3641039 tp_is_empty!41239)))

(assert (= (and b!5950541 ((_ is ElementMatch!15993) (regOne!32498 (regTwo!32499 r!7292)))) b!5951810))

(assert (= (and b!5950541 ((_ is Concat!24838) (regOne!32498 (regTwo!32499 r!7292)))) b!5951811))

(assert (= (and b!5950541 ((_ is Star!15993) (regOne!32498 (regTwo!32499 r!7292)))) b!5951812))

(assert (= (and b!5950541 ((_ is Union!15993) (regOne!32498 (regTwo!32499 r!7292)))) b!5951813))

(declare-fun b!5951816 () Bool)

(declare-fun e!3641040 () Bool)

(declare-fun tp!1656031 () Bool)

(assert (=> b!5951816 (= e!3641040 tp!1656031)))

(declare-fun b!5951817 () Bool)

(declare-fun tp!1656035 () Bool)

(declare-fun tp!1656034 () Bool)

(assert (=> b!5951817 (= e!3641040 (and tp!1656035 tp!1656034))))

(declare-fun b!5951815 () Bool)

(declare-fun tp!1656032 () Bool)

(declare-fun tp!1656033 () Bool)

(assert (=> b!5951815 (= e!3641040 (and tp!1656032 tp!1656033))))

(assert (=> b!5950541 (= tp!1655819 e!3641040)))

(declare-fun b!5951814 () Bool)

(assert (=> b!5951814 (= e!3641040 tp_is_empty!41239)))

(assert (= (and b!5950541 ((_ is ElementMatch!15993) (regTwo!32498 (regTwo!32499 r!7292)))) b!5951814))

(assert (= (and b!5950541 ((_ is Concat!24838) (regTwo!32498 (regTwo!32499 r!7292)))) b!5951815))

(assert (= (and b!5950541 ((_ is Star!15993) (regTwo!32498 (regTwo!32499 r!7292)))) b!5951816))

(assert (= (and b!5950541 ((_ is Union!15993) (regTwo!32498 (regTwo!32499 r!7292)))) b!5951817))

(declare-fun b!5951820 () Bool)

(declare-fun e!3641041 () Bool)

(declare-fun tp!1656036 () Bool)

(assert (=> b!5951820 (= e!3641041 tp!1656036)))

(declare-fun b!5951821 () Bool)

(declare-fun tp!1656040 () Bool)

(declare-fun tp!1656039 () Bool)

(assert (=> b!5951821 (= e!3641041 (and tp!1656040 tp!1656039))))

(declare-fun b!5951819 () Bool)

(declare-fun tp!1656037 () Bool)

(declare-fun tp!1656038 () Bool)

(assert (=> b!5951819 (= e!3641041 (and tp!1656037 tp!1656038))))

(assert (=> b!5950543 (= tp!1655821 e!3641041)))

(declare-fun b!5951818 () Bool)

(assert (=> b!5951818 (= e!3641041 tp_is_empty!41239)))

(assert (= (and b!5950543 ((_ is ElementMatch!15993) (regOne!32499 (regTwo!32499 r!7292)))) b!5951818))

(assert (= (and b!5950543 ((_ is Concat!24838) (regOne!32499 (regTwo!32499 r!7292)))) b!5951819))

(assert (= (and b!5950543 ((_ is Star!15993) (regOne!32499 (regTwo!32499 r!7292)))) b!5951820))

(assert (= (and b!5950543 ((_ is Union!15993) (regOne!32499 (regTwo!32499 r!7292)))) b!5951821))

(declare-fun b!5951824 () Bool)

(declare-fun e!3641042 () Bool)

(declare-fun tp!1656041 () Bool)

(assert (=> b!5951824 (= e!3641042 tp!1656041)))

(declare-fun b!5951825 () Bool)

(declare-fun tp!1656045 () Bool)

(declare-fun tp!1656044 () Bool)

(assert (=> b!5951825 (= e!3641042 (and tp!1656045 tp!1656044))))

(declare-fun b!5951823 () Bool)

(declare-fun tp!1656042 () Bool)

(declare-fun tp!1656043 () Bool)

(assert (=> b!5951823 (= e!3641042 (and tp!1656042 tp!1656043))))

(assert (=> b!5950543 (= tp!1655820 e!3641042)))

(declare-fun b!5951822 () Bool)

(assert (=> b!5951822 (= e!3641042 tp_is_empty!41239)))

(assert (= (and b!5950543 ((_ is ElementMatch!15993) (regTwo!32499 (regTwo!32499 r!7292)))) b!5951822))

(assert (= (and b!5950543 ((_ is Concat!24838) (regTwo!32499 (regTwo!32499 r!7292)))) b!5951823))

(assert (= (and b!5950543 ((_ is Star!15993) (regTwo!32499 (regTwo!32499 r!7292)))) b!5951824))

(assert (= (and b!5950543 ((_ is Union!15993) (regTwo!32499 (regTwo!32499 r!7292)))) b!5951825))

(declare-fun b!5951827 () Bool)

(declare-fun e!3641044 () Bool)

(declare-fun tp!1656046 () Bool)

(assert (=> b!5951827 (= e!3641044 tp!1656046)))

(declare-fun tp!1656047 () Bool)

(declare-fun e!3641043 () Bool)

(declare-fun b!5951826 () Bool)

(assert (=> b!5951826 (= e!3641043 (and (inv!83229 (h!70603 (t!377688 (t!377688 zl!343)))) e!3641044 tp!1656047))))

(assert (=> b!5950550 (= tp!1655827 e!3641043)))

(assert (= b!5951826 b!5951827))

(assert (= (and b!5950550 ((_ is Cons!64155) (t!377688 (t!377688 zl!343)))) b!5951826))

(declare-fun m!6839646 () Bool)

(assert (=> b!5951826 m!6839646))

(declare-fun b!5951828 () Bool)

(declare-fun e!3641045 () Bool)

(declare-fun tp!1656048 () Bool)

(assert (=> b!5951828 (= e!3641045 (and tp_is_empty!41239 tp!1656048))))

(assert (=> b!5950535 (= tp!1655811 e!3641045)))

(assert (= (and b!5950535 ((_ is Cons!64156) (t!377689 (t!377689 s!2326)))) b!5951828))

(declare-fun b!5951829 () Bool)

(declare-fun e!3641046 () Bool)

(declare-fun tp!1656049 () Bool)

(declare-fun tp!1656050 () Bool)

(assert (=> b!5951829 (= e!3641046 (and tp!1656049 tp!1656050))))

(assert (=> b!5950551 (= tp!1655826 e!3641046)))

(assert (= (and b!5950551 ((_ is Cons!64154) (exprs!5877 (h!70603 (t!377688 zl!343))))) b!5951829))

(declare-fun b!5951832 () Bool)

(declare-fun e!3641047 () Bool)

(declare-fun tp!1656051 () Bool)

(assert (=> b!5951832 (= e!3641047 tp!1656051)))

(declare-fun b!5951833 () Bool)

(declare-fun tp!1656055 () Bool)

(declare-fun tp!1656054 () Bool)

(assert (=> b!5951833 (= e!3641047 (and tp!1656055 tp!1656054))))

(declare-fun b!5951831 () Bool)

(declare-fun tp!1656052 () Bool)

(declare-fun tp!1656053 () Bool)

(assert (=> b!5951831 (= e!3641047 (and tp!1656052 tp!1656053))))

(assert (=> b!5950512 (= tp!1655787 e!3641047)))

(declare-fun b!5951830 () Bool)

(assert (=> b!5951830 (= e!3641047 tp_is_empty!41239)))

(assert (= (and b!5950512 ((_ is ElementMatch!15993) (h!70602 (exprs!5877 setElem!40431)))) b!5951830))

(assert (= (and b!5950512 ((_ is Concat!24838) (h!70602 (exprs!5877 setElem!40431)))) b!5951831))

(assert (= (and b!5950512 ((_ is Star!15993) (h!70602 (exprs!5877 setElem!40431)))) b!5951832))

(assert (= (and b!5950512 ((_ is Union!15993) (h!70602 (exprs!5877 setElem!40431)))) b!5951833))

(declare-fun b!5951834 () Bool)

(declare-fun e!3641048 () Bool)

(declare-fun tp!1656056 () Bool)

(declare-fun tp!1656057 () Bool)

(assert (=> b!5951834 (= e!3641048 (and tp!1656056 tp!1656057))))

(assert (=> b!5950512 (= tp!1655788 e!3641048)))

(assert (= (and b!5950512 ((_ is Cons!64154) (t!377687 (exprs!5877 setElem!40431)))) b!5951834))

(declare-fun b!5951837 () Bool)

(declare-fun e!3641049 () Bool)

(declare-fun tp!1656058 () Bool)

(assert (=> b!5951837 (= e!3641049 tp!1656058)))

(declare-fun b!5951838 () Bool)

(declare-fun tp!1656062 () Bool)

(declare-fun tp!1656061 () Bool)

(assert (=> b!5951838 (= e!3641049 (and tp!1656062 tp!1656061))))

(declare-fun b!5951836 () Bool)

(declare-fun tp!1656059 () Bool)

(declare-fun tp!1656060 () Bool)

(assert (=> b!5951836 (= e!3641049 (and tp!1656059 tp!1656060))))

(assert (=> b!5950528 (= tp!1655805 e!3641049)))

(declare-fun b!5951835 () Bool)

(assert (=> b!5951835 (= e!3641049 tp_is_empty!41239)))

(assert (= (and b!5950528 ((_ is ElementMatch!15993) (regOne!32498 (regTwo!32498 r!7292)))) b!5951835))

(assert (= (and b!5950528 ((_ is Concat!24838) (regOne!32498 (regTwo!32498 r!7292)))) b!5951836))

(assert (= (and b!5950528 ((_ is Star!15993) (regOne!32498 (regTwo!32498 r!7292)))) b!5951837))

(assert (= (and b!5950528 ((_ is Union!15993) (regOne!32498 (regTwo!32498 r!7292)))) b!5951838))

(declare-fun b!5951841 () Bool)

(declare-fun e!3641050 () Bool)

(declare-fun tp!1656063 () Bool)

(assert (=> b!5951841 (= e!3641050 tp!1656063)))

(declare-fun b!5951842 () Bool)

(declare-fun tp!1656067 () Bool)

(declare-fun tp!1656066 () Bool)

(assert (=> b!5951842 (= e!3641050 (and tp!1656067 tp!1656066))))

(declare-fun b!5951840 () Bool)

(declare-fun tp!1656064 () Bool)

(declare-fun tp!1656065 () Bool)

(assert (=> b!5951840 (= e!3641050 (and tp!1656064 tp!1656065))))

(assert (=> b!5950528 (= tp!1655806 e!3641050)))

(declare-fun b!5951839 () Bool)

(assert (=> b!5951839 (= e!3641050 tp_is_empty!41239)))

(assert (= (and b!5950528 ((_ is ElementMatch!15993) (regTwo!32498 (regTwo!32498 r!7292)))) b!5951839))

(assert (= (and b!5950528 ((_ is Concat!24838) (regTwo!32498 (regTwo!32498 r!7292)))) b!5951840))

(assert (= (and b!5950528 ((_ is Star!15993) (regTwo!32498 (regTwo!32498 r!7292)))) b!5951841))

(assert (= (and b!5950528 ((_ is Union!15993) (regTwo!32498 (regTwo!32498 r!7292)))) b!5951842))

(declare-fun b!5951845 () Bool)

(declare-fun e!3641051 () Bool)

(declare-fun tp!1656068 () Bool)

(assert (=> b!5951845 (= e!3641051 tp!1656068)))

(declare-fun b!5951846 () Bool)

(declare-fun tp!1656072 () Bool)

(declare-fun tp!1656071 () Bool)

(assert (=> b!5951846 (= e!3641051 (and tp!1656072 tp!1656071))))

(declare-fun b!5951844 () Bool)

(declare-fun tp!1656069 () Bool)

(declare-fun tp!1656070 () Bool)

(assert (=> b!5951844 (= e!3641051 (and tp!1656069 tp!1656070))))

(assert (=> b!5950529 (= tp!1655804 e!3641051)))

(declare-fun b!5951843 () Bool)

(assert (=> b!5951843 (= e!3641051 tp_is_empty!41239)))

(assert (= (and b!5950529 ((_ is ElementMatch!15993) (reg!16322 (regTwo!32498 r!7292)))) b!5951843))

(assert (= (and b!5950529 ((_ is Concat!24838) (reg!16322 (regTwo!32498 r!7292)))) b!5951844))

(assert (= (and b!5950529 ((_ is Star!15993) (reg!16322 (regTwo!32498 r!7292)))) b!5951845))

(assert (= (and b!5950529 ((_ is Union!15993) (reg!16322 (regTwo!32498 r!7292)))) b!5951846))

(declare-fun b!5951849 () Bool)

(declare-fun e!3641052 () Bool)

(declare-fun tp!1656073 () Bool)

(assert (=> b!5951849 (= e!3641052 tp!1656073)))

(declare-fun b!5951850 () Bool)

(declare-fun tp!1656077 () Bool)

(declare-fun tp!1656076 () Bool)

(assert (=> b!5951850 (= e!3641052 (and tp!1656077 tp!1656076))))

(declare-fun b!5951848 () Bool)

(declare-fun tp!1656074 () Bool)

(declare-fun tp!1656075 () Bool)

(assert (=> b!5951848 (= e!3641052 (and tp!1656074 tp!1656075))))

(assert (=> b!5950530 (= tp!1655808 e!3641052)))

(declare-fun b!5951847 () Bool)

(assert (=> b!5951847 (= e!3641052 tp_is_empty!41239)))

(assert (= (and b!5950530 ((_ is ElementMatch!15993) (regOne!32499 (regTwo!32498 r!7292)))) b!5951847))

(assert (= (and b!5950530 ((_ is Concat!24838) (regOne!32499 (regTwo!32498 r!7292)))) b!5951848))

(assert (= (and b!5950530 ((_ is Star!15993) (regOne!32499 (regTwo!32498 r!7292)))) b!5951849))

(assert (= (and b!5950530 ((_ is Union!15993) (regOne!32499 (regTwo!32498 r!7292)))) b!5951850))

(declare-fun b!5951853 () Bool)

(declare-fun e!3641053 () Bool)

(declare-fun tp!1656078 () Bool)

(assert (=> b!5951853 (= e!3641053 tp!1656078)))

(declare-fun b!5951854 () Bool)

(declare-fun tp!1656082 () Bool)

(declare-fun tp!1656081 () Bool)

(assert (=> b!5951854 (= e!3641053 (and tp!1656082 tp!1656081))))

(declare-fun b!5951852 () Bool)

(declare-fun tp!1656079 () Bool)

(declare-fun tp!1656080 () Bool)

(assert (=> b!5951852 (= e!3641053 (and tp!1656079 tp!1656080))))

(assert (=> b!5950530 (= tp!1655807 e!3641053)))

(declare-fun b!5951851 () Bool)

(assert (=> b!5951851 (= e!3641053 tp_is_empty!41239)))

(assert (= (and b!5950530 ((_ is ElementMatch!15993) (regTwo!32499 (regTwo!32498 r!7292)))) b!5951851))

(assert (= (and b!5950530 ((_ is Concat!24838) (regTwo!32499 (regTwo!32498 r!7292)))) b!5951852))

(assert (= (and b!5950530 ((_ is Star!15993) (regTwo!32499 (regTwo!32498 r!7292)))) b!5951853))

(assert (= (and b!5950530 ((_ is Union!15993) (regTwo!32499 (regTwo!32498 r!7292)))) b!5951854))

(declare-fun b!5951857 () Bool)

(declare-fun e!3641054 () Bool)

(declare-fun tp!1656083 () Bool)

(assert (=> b!5951857 (= e!3641054 tp!1656083)))

(declare-fun b!5951858 () Bool)

(declare-fun tp!1656087 () Bool)

(declare-fun tp!1656086 () Bool)

(assert (=> b!5951858 (= e!3641054 (and tp!1656087 tp!1656086))))

(declare-fun b!5951856 () Bool)

(declare-fun tp!1656084 () Bool)

(declare-fun tp!1656085 () Bool)

(assert (=> b!5951856 (= e!3641054 (and tp!1656084 tp!1656085))))

(assert (=> b!5950537 (= tp!1655813 e!3641054)))

(declare-fun b!5951855 () Bool)

(assert (=> b!5951855 (= e!3641054 tp_is_empty!41239)))

(assert (= (and b!5950537 ((_ is ElementMatch!15993) (regOne!32498 (regOne!32499 r!7292)))) b!5951855))

(assert (= (and b!5950537 ((_ is Concat!24838) (regOne!32498 (regOne!32499 r!7292)))) b!5951856))

(assert (= (and b!5950537 ((_ is Star!15993) (regOne!32498 (regOne!32499 r!7292)))) b!5951857))

(assert (= (and b!5950537 ((_ is Union!15993) (regOne!32498 (regOne!32499 r!7292)))) b!5951858))

(declare-fun b!5951861 () Bool)

(declare-fun e!3641055 () Bool)

(declare-fun tp!1656088 () Bool)

(assert (=> b!5951861 (= e!3641055 tp!1656088)))

(declare-fun b!5951862 () Bool)

(declare-fun tp!1656092 () Bool)

(declare-fun tp!1656091 () Bool)

(assert (=> b!5951862 (= e!3641055 (and tp!1656092 tp!1656091))))

(declare-fun b!5951860 () Bool)

(declare-fun tp!1656089 () Bool)

(declare-fun tp!1656090 () Bool)

(assert (=> b!5951860 (= e!3641055 (and tp!1656089 tp!1656090))))

(assert (=> b!5950537 (= tp!1655814 e!3641055)))

(declare-fun b!5951859 () Bool)

(assert (=> b!5951859 (= e!3641055 tp_is_empty!41239)))

(assert (= (and b!5950537 ((_ is ElementMatch!15993) (regTwo!32498 (regOne!32499 r!7292)))) b!5951859))

(assert (= (and b!5950537 ((_ is Concat!24838) (regTwo!32498 (regOne!32499 r!7292)))) b!5951860))

(assert (= (and b!5950537 ((_ is Star!15993) (regTwo!32498 (regOne!32499 r!7292)))) b!5951861))

(assert (= (and b!5950537 ((_ is Union!15993) (regTwo!32498 (regOne!32499 r!7292)))) b!5951862))

(declare-fun b!5951865 () Bool)

(declare-fun e!3641056 () Bool)

(declare-fun tp!1656093 () Bool)

(assert (=> b!5951865 (= e!3641056 tp!1656093)))

(declare-fun b!5951866 () Bool)

(declare-fun tp!1656097 () Bool)

(declare-fun tp!1656096 () Bool)

(assert (=> b!5951866 (= e!3641056 (and tp!1656097 tp!1656096))))

(declare-fun b!5951864 () Bool)

(declare-fun tp!1656094 () Bool)

(declare-fun tp!1656095 () Bool)

(assert (=> b!5951864 (= e!3641056 (and tp!1656094 tp!1656095))))

(assert (=> b!5950552 (= tp!1655828 e!3641056)))

(declare-fun b!5951863 () Bool)

(assert (=> b!5951863 (= e!3641056 tp_is_empty!41239)))

(assert (= (and b!5950552 ((_ is ElementMatch!15993) (h!70602 (exprs!5877 (h!70603 zl!343))))) b!5951863))

(assert (= (and b!5950552 ((_ is Concat!24838) (h!70602 (exprs!5877 (h!70603 zl!343))))) b!5951864))

(assert (= (and b!5950552 ((_ is Star!15993) (h!70602 (exprs!5877 (h!70603 zl!343))))) b!5951865))

(assert (= (and b!5950552 ((_ is Union!15993) (h!70602 (exprs!5877 (h!70603 zl!343))))) b!5951866))

(declare-fun b!5951867 () Bool)

(declare-fun e!3641057 () Bool)

(declare-fun tp!1656098 () Bool)

(declare-fun tp!1656099 () Bool)

(assert (=> b!5951867 (= e!3641057 (and tp!1656098 tp!1656099))))

(assert (=> b!5950552 (= tp!1655829 e!3641057)))

(assert (= (and b!5950552 ((_ is Cons!64154) (t!377687 (exprs!5877 (h!70603 zl!343))))) b!5951867))

(declare-fun condSetEmpty!40449 () Bool)

(assert (=> setNonEmpty!40437 (= condSetEmpty!40449 (= setRest!40437 ((as const (Array Context!10754 Bool)) false)))))

(declare-fun setRes!40449 () Bool)

(assert (=> setNonEmpty!40437 (= tp!1655839 setRes!40449)))

(declare-fun setIsEmpty!40449 () Bool)

(assert (=> setIsEmpty!40449 setRes!40449))

(declare-fun setElem!40449 () Context!10754)

(declare-fun setNonEmpty!40449 () Bool)

(declare-fun tp!1656100 () Bool)

(declare-fun e!3641058 () Bool)

(assert (=> setNonEmpty!40449 (= setRes!40449 (and tp!1656100 (inv!83229 setElem!40449) e!3641058))))

(declare-fun setRest!40449 () (InoxSet Context!10754))

(assert (=> setNonEmpty!40449 (= setRest!40437 ((_ map or) (store ((as const (Array Context!10754 Bool)) false) setElem!40449 true) setRest!40449))))

(declare-fun b!5951868 () Bool)

(declare-fun tp!1656101 () Bool)

(assert (=> b!5951868 (= e!3641058 tp!1656101)))

(assert (= (and setNonEmpty!40437 condSetEmpty!40449) setIsEmpty!40449))

(assert (= (and setNonEmpty!40437 (not condSetEmpty!40449)) setNonEmpty!40449))

(assert (= setNonEmpty!40449 b!5951868))

(declare-fun m!6839648 () Bool)

(assert (=> setNonEmpty!40449 m!6839648))

(declare-fun b!5951871 () Bool)

(declare-fun e!3641059 () Bool)

(declare-fun tp!1656102 () Bool)

(assert (=> b!5951871 (= e!3641059 tp!1656102)))

(declare-fun b!5951872 () Bool)

(declare-fun tp!1656106 () Bool)

(declare-fun tp!1656105 () Bool)

(assert (=> b!5951872 (= e!3641059 (and tp!1656106 tp!1656105))))

(declare-fun b!5951870 () Bool)

(declare-fun tp!1656103 () Bool)

(declare-fun tp!1656104 () Bool)

(assert (=> b!5951870 (= e!3641059 (and tp!1656103 tp!1656104))))

(assert (=> b!5950538 (= tp!1655812 e!3641059)))

(declare-fun b!5951869 () Bool)

(assert (=> b!5951869 (= e!3641059 tp_is_empty!41239)))

(assert (= (and b!5950538 ((_ is ElementMatch!15993) (reg!16322 (regOne!32499 r!7292)))) b!5951869))

(assert (= (and b!5950538 ((_ is Concat!24838) (reg!16322 (regOne!32499 r!7292)))) b!5951870))

(assert (= (and b!5950538 ((_ is Star!15993) (reg!16322 (regOne!32499 r!7292)))) b!5951871))

(assert (= (and b!5950538 ((_ is Union!15993) (reg!16322 (regOne!32499 r!7292)))) b!5951872))

(declare-fun b!5951873 () Bool)

(declare-fun e!3641060 () Bool)

(declare-fun tp!1656107 () Bool)

(declare-fun tp!1656108 () Bool)

(assert (=> b!5951873 (= e!3641060 (and tp!1656107 tp!1656108))))

(assert (=> b!5950561 (= tp!1655840 e!3641060)))

(assert (= (and b!5950561 ((_ is Cons!64154) (exprs!5877 setElem!40437))) b!5951873))

(declare-fun b!5951876 () Bool)

(declare-fun e!3641061 () Bool)

(declare-fun tp!1656109 () Bool)

(assert (=> b!5951876 (= e!3641061 tp!1656109)))

(declare-fun b!5951877 () Bool)

(declare-fun tp!1656113 () Bool)

(declare-fun tp!1656112 () Bool)

(assert (=> b!5951877 (= e!3641061 (and tp!1656113 tp!1656112))))

(declare-fun b!5951875 () Bool)

(declare-fun tp!1656110 () Bool)

(declare-fun tp!1656111 () Bool)

(assert (=> b!5951875 (= e!3641061 (and tp!1656110 tp!1656111))))

(assert (=> b!5950539 (= tp!1655816 e!3641061)))

(declare-fun b!5951874 () Bool)

(assert (=> b!5951874 (= e!3641061 tp_is_empty!41239)))

(assert (= (and b!5950539 ((_ is ElementMatch!15993) (regOne!32499 (regOne!32499 r!7292)))) b!5951874))

(assert (= (and b!5950539 ((_ is Concat!24838) (regOne!32499 (regOne!32499 r!7292)))) b!5951875))

(assert (= (and b!5950539 ((_ is Star!15993) (regOne!32499 (regOne!32499 r!7292)))) b!5951876))

(assert (= (and b!5950539 ((_ is Union!15993) (regOne!32499 (regOne!32499 r!7292)))) b!5951877))

(declare-fun b!5951880 () Bool)

(declare-fun e!3641062 () Bool)

(declare-fun tp!1656114 () Bool)

(assert (=> b!5951880 (= e!3641062 tp!1656114)))

(declare-fun b!5951881 () Bool)

(declare-fun tp!1656118 () Bool)

(declare-fun tp!1656117 () Bool)

(assert (=> b!5951881 (= e!3641062 (and tp!1656118 tp!1656117))))

(declare-fun b!5951879 () Bool)

(declare-fun tp!1656115 () Bool)

(declare-fun tp!1656116 () Bool)

(assert (=> b!5951879 (= e!3641062 (and tp!1656115 tp!1656116))))

(assert (=> b!5950539 (= tp!1655815 e!3641062)))

(declare-fun b!5951878 () Bool)

(assert (=> b!5951878 (= e!3641062 tp_is_empty!41239)))

(assert (= (and b!5950539 ((_ is ElementMatch!15993) (regTwo!32499 (regOne!32499 r!7292)))) b!5951878))

(assert (= (and b!5950539 ((_ is Concat!24838) (regTwo!32499 (regOne!32499 r!7292)))) b!5951879))

(assert (= (and b!5950539 ((_ is Star!15993) (regTwo!32499 (regOne!32499 r!7292)))) b!5951880))

(assert (= (and b!5950539 ((_ is Union!15993) (regTwo!32499 (regOne!32499 r!7292)))) b!5951881))

(declare-fun b!5951884 () Bool)

(declare-fun e!3641063 () Bool)

(declare-fun tp!1656119 () Bool)

(assert (=> b!5951884 (= e!3641063 tp!1656119)))

(declare-fun b!5951885 () Bool)

(declare-fun tp!1656123 () Bool)

(declare-fun tp!1656122 () Bool)

(assert (=> b!5951885 (= e!3641063 (and tp!1656123 tp!1656122))))

(declare-fun b!5951883 () Bool)

(declare-fun tp!1656120 () Bool)

(declare-fun tp!1656121 () Bool)

(assert (=> b!5951883 (= e!3641063 (and tp!1656120 tp!1656121))))

(assert (=> b!5950555 (= tp!1655830 e!3641063)))

(declare-fun b!5951882 () Bool)

(assert (=> b!5951882 (= e!3641063 tp_is_empty!41239)))

(assert (= (and b!5950555 ((_ is ElementMatch!15993) (reg!16322 (reg!16322 r!7292)))) b!5951882))

(assert (= (and b!5950555 ((_ is Concat!24838) (reg!16322 (reg!16322 r!7292)))) b!5951883))

(assert (= (and b!5950555 ((_ is Star!15993) (reg!16322 (reg!16322 r!7292)))) b!5951884))

(assert (= (and b!5950555 ((_ is Union!15993) (reg!16322 (reg!16322 r!7292)))) b!5951885))

(declare-fun b!5951888 () Bool)

(declare-fun e!3641064 () Bool)

(declare-fun tp!1656124 () Bool)

(assert (=> b!5951888 (= e!3641064 tp!1656124)))

(declare-fun b!5951889 () Bool)

(declare-fun tp!1656128 () Bool)

(declare-fun tp!1656127 () Bool)

(assert (=> b!5951889 (= e!3641064 (and tp!1656128 tp!1656127))))

(declare-fun b!5951887 () Bool)

(declare-fun tp!1656125 () Bool)

(declare-fun tp!1656126 () Bool)

(assert (=> b!5951887 (= e!3641064 (and tp!1656125 tp!1656126))))

(assert (=> b!5950524 (= tp!1655800 e!3641064)))

(declare-fun b!5951886 () Bool)

(assert (=> b!5951886 (= e!3641064 tp_is_empty!41239)))

(assert (= (and b!5950524 ((_ is ElementMatch!15993) (regOne!32498 (regOne!32498 r!7292)))) b!5951886))

(assert (= (and b!5950524 ((_ is Concat!24838) (regOne!32498 (regOne!32498 r!7292)))) b!5951887))

(assert (= (and b!5950524 ((_ is Star!15993) (regOne!32498 (regOne!32498 r!7292)))) b!5951888))

(assert (= (and b!5950524 ((_ is Union!15993) (regOne!32498 (regOne!32498 r!7292)))) b!5951889))

(declare-fun b!5951892 () Bool)

(declare-fun e!3641065 () Bool)

(declare-fun tp!1656129 () Bool)

(assert (=> b!5951892 (= e!3641065 tp!1656129)))

(declare-fun b!5951893 () Bool)

(declare-fun tp!1656133 () Bool)

(declare-fun tp!1656132 () Bool)

(assert (=> b!5951893 (= e!3641065 (and tp!1656133 tp!1656132))))

(declare-fun b!5951891 () Bool)

(declare-fun tp!1656130 () Bool)

(declare-fun tp!1656131 () Bool)

(assert (=> b!5951891 (= e!3641065 (and tp!1656130 tp!1656131))))

(assert (=> b!5950524 (= tp!1655801 e!3641065)))

(declare-fun b!5951890 () Bool)

(assert (=> b!5951890 (= e!3641065 tp_is_empty!41239)))

(assert (= (and b!5950524 ((_ is ElementMatch!15993) (regTwo!32498 (regOne!32498 r!7292)))) b!5951890))

(assert (= (and b!5950524 ((_ is Concat!24838) (regTwo!32498 (regOne!32498 r!7292)))) b!5951891))

(assert (= (and b!5950524 ((_ is Star!15993) (regTwo!32498 (regOne!32498 r!7292)))) b!5951892))

(assert (= (and b!5950524 ((_ is Union!15993) (regTwo!32498 (regOne!32498 r!7292)))) b!5951893))

(declare-fun b!5951896 () Bool)

(declare-fun e!3641066 () Bool)

(declare-fun tp!1656134 () Bool)

(assert (=> b!5951896 (= e!3641066 tp!1656134)))

(declare-fun b!5951897 () Bool)

(declare-fun tp!1656138 () Bool)

(declare-fun tp!1656137 () Bool)

(assert (=> b!5951897 (= e!3641066 (and tp!1656138 tp!1656137))))

(declare-fun b!5951895 () Bool)

(declare-fun tp!1656135 () Bool)

(declare-fun tp!1656136 () Bool)

(assert (=> b!5951895 (= e!3641066 (and tp!1656135 tp!1656136))))

(assert (=> b!5950554 (= tp!1655831 e!3641066)))

(declare-fun b!5951894 () Bool)

(assert (=> b!5951894 (= e!3641066 tp_is_empty!41239)))

(assert (= (and b!5950554 ((_ is ElementMatch!15993) (regOne!32498 (reg!16322 r!7292)))) b!5951894))

(assert (= (and b!5950554 ((_ is Concat!24838) (regOne!32498 (reg!16322 r!7292)))) b!5951895))

(assert (= (and b!5950554 ((_ is Star!15993) (regOne!32498 (reg!16322 r!7292)))) b!5951896))

(assert (= (and b!5950554 ((_ is Union!15993) (regOne!32498 (reg!16322 r!7292)))) b!5951897))

(declare-fun b!5951900 () Bool)

(declare-fun e!3641067 () Bool)

(declare-fun tp!1656139 () Bool)

(assert (=> b!5951900 (= e!3641067 tp!1656139)))

(declare-fun b!5951901 () Bool)

(declare-fun tp!1656143 () Bool)

(declare-fun tp!1656142 () Bool)

(assert (=> b!5951901 (= e!3641067 (and tp!1656143 tp!1656142))))

(declare-fun b!5951899 () Bool)

(declare-fun tp!1656140 () Bool)

(declare-fun tp!1656141 () Bool)

(assert (=> b!5951899 (= e!3641067 (and tp!1656140 tp!1656141))))

(assert (=> b!5950554 (= tp!1655832 e!3641067)))

(declare-fun b!5951898 () Bool)

(assert (=> b!5951898 (= e!3641067 tp_is_empty!41239)))

(assert (= (and b!5950554 ((_ is ElementMatch!15993) (regTwo!32498 (reg!16322 r!7292)))) b!5951898))

(assert (= (and b!5950554 ((_ is Concat!24838) (regTwo!32498 (reg!16322 r!7292)))) b!5951899))

(assert (= (and b!5950554 ((_ is Star!15993) (regTwo!32498 (reg!16322 r!7292)))) b!5951900))

(assert (= (and b!5950554 ((_ is Union!15993) (regTwo!32498 (reg!16322 r!7292)))) b!5951901))

(declare-fun b!5951904 () Bool)

(declare-fun e!3641068 () Bool)

(declare-fun tp!1656144 () Bool)

(assert (=> b!5951904 (= e!3641068 tp!1656144)))

(declare-fun b!5951905 () Bool)

(declare-fun tp!1656148 () Bool)

(declare-fun tp!1656147 () Bool)

(assert (=> b!5951905 (= e!3641068 (and tp!1656148 tp!1656147))))

(declare-fun b!5951903 () Bool)

(declare-fun tp!1656145 () Bool)

(declare-fun tp!1656146 () Bool)

(assert (=> b!5951903 (= e!3641068 (and tp!1656145 tp!1656146))))

(assert (=> b!5950526 (= tp!1655803 e!3641068)))

(declare-fun b!5951902 () Bool)

(assert (=> b!5951902 (= e!3641068 tp_is_empty!41239)))

(assert (= (and b!5950526 ((_ is ElementMatch!15993) (regOne!32499 (regOne!32498 r!7292)))) b!5951902))

(assert (= (and b!5950526 ((_ is Concat!24838) (regOne!32499 (regOne!32498 r!7292)))) b!5951903))

(assert (= (and b!5950526 ((_ is Star!15993) (regOne!32499 (regOne!32498 r!7292)))) b!5951904))

(assert (= (and b!5950526 ((_ is Union!15993) (regOne!32499 (regOne!32498 r!7292)))) b!5951905))

(declare-fun b!5951908 () Bool)

(declare-fun e!3641069 () Bool)

(declare-fun tp!1656149 () Bool)

(assert (=> b!5951908 (= e!3641069 tp!1656149)))

(declare-fun b!5951909 () Bool)

(declare-fun tp!1656153 () Bool)

(declare-fun tp!1656152 () Bool)

(assert (=> b!5951909 (= e!3641069 (and tp!1656153 tp!1656152))))

(declare-fun b!5951907 () Bool)

(declare-fun tp!1656150 () Bool)

(declare-fun tp!1656151 () Bool)

(assert (=> b!5951907 (= e!3641069 (and tp!1656150 tp!1656151))))

(assert (=> b!5950526 (= tp!1655802 e!3641069)))

(declare-fun b!5951906 () Bool)

(assert (=> b!5951906 (= e!3641069 tp_is_empty!41239)))

(assert (= (and b!5950526 ((_ is ElementMatch!15993) (regTwo!32499 (regOne!32498 r!7292)))) b!5951906))

(assert (= (and b!5950526 ((_ is Concat!24838) (regTwo!32499 (regOne!32498 r!7292)))) b!5951907))

(assert (= (and b!5950526 ((_ is Star!15993) (regTwo!32499 (regOne!32498 r!7292)))) b!5951908))

(assert (= (and b!5950526 ((_ is Union!15993) (regTwo!32499 (regOne!32498 r!7292)))) b!5951909))

(declare-fun b!5951912 () Bool)

(declare-fun e!3641070 () Bool)

(declare-fun tp!1656154 () Bool)

(assert (=> b!5951912 (= e!3641070 tp!1656154)))

(declare-fun b!5951913 () Bool)

(declare-fun tp!1656158 () Bool)

(declare-fun tp!1656157 () Bool)

(assert (=> b!5951913 (= e!3641070 (and tp!1656158 tp!1656157))))

(declare-fun b!5951911 () Bool)

(declare-fun tp!1656155 () Bool)

(declare-fun tp!1656156 () Bool)

(assert (=> b!5951911 (= e!3641070 (and tp!1656155 tp!1656156))))

(assert (=> b!5950556 (= tp!1655834 e!3641070)))

(declare-fun b!5951910 () Bool)

(assert (=> b!5951910 (= e!3641070 tp_is_empty!41239)))

(assert (= (and b!5950556 ((_ is ElementMatch!15993) (regOne!32499 (reg!16322 r!7292)))) b!5951910))

(assert (= (and b!5950556 ((_ is Concat!24838) (regOne!32499 (reg!16322 r!7292)))) b!5951911))

(assert (= (and b!5950556 ((_ is Star!15993) (regOne!32499 (reg!16322 r!7292)))) b!5951912))

(assert (= (and b!5950556 ((_ is Union!15993) (regOne!32499 (reg!16322 r!7292)))) b!5951913))

(declare-fun b!5951916 () Bool)

(declare-fun e!3641071 () Bool)

(declare-fun tp!1656159 () Bool)

(assert (=> b!5951916 (= e!3641071 tp!1656159)))

(declare-fun b!5951917 () Bool)

(declare-fun tp!1656163 () Bool)

(declare-fun tp!1656162 () Bool)

(assert (=> b!5951917 (= e!3641071 (and tp!1656163 tp!1656162))))

(declare-fun b!5951915 () Bool)

(declare-fun tp!1656160 () Bool)

(declare-fun tp!1656161 () Bool)

(assert (=> b!5951915 (= e!3641071 (and tp!1656160 tp!1656161))))

(assert (=> b!5950556 (= tp!1655833 e!3641071)))

(declare-fun b!5951914 () Bool)

(assert (=> b!5951914 (= e!3641071 tp_is_empty!41239)))

(assert (= (and b!5950556 ((_ is ElementMatch!15993) (regTwo!32499 (reg!16322 r!7292)))) b!5951914))

(assert (= (and b!5950556 ((_ is Concat!24838) (regTwo!32499 (reg!16322 r!7292)))) b!5951915))

(assert (= (and b!5950556 ((_ is Star!15993) (regTwo!32499 (reg!16322 r!7292)))) b!5951916))

(assert (= (and b!5950556 ((_ is Union!15993) (regTwo!32499 (reg!16322 r!7292)))) b!5951917))

(declare-fun b!5951920 () Bool)

(declare-fun e!3641072 () Bool)

(declare-fun tp!1656164 () Bool)

(assert (=> b!5951920 (= e!3641072 tp!1656164)))

(declare-fun b!5951921 () Bool)

(declare-fun tp!1656168 () Bool)

(declare-fun tp!1656167 () Bool)

(assert (=> b!5951921 (= e!3641072 (and tp!1656168 tp!1656167))))

(declare-fun b!5951919 () Bool)

(declare-fun tp!1656165 () Bool)

(declare-fun tp!1656166 () Bool)

(assert (=> b!5951919 (= e!3641072 (and tp!1656165 tp!1656166))))

(assert (=> b!5950525 (= tp!1655799 e!3641072)))

(declare-fun b!5951918 () Bool)

(assert (=> b!5951918 (= e!3641072 tp_is_empty!41239)))

(assert (= (and b!5950525 ((_ is ElementMatch!15993) (reg!16322 (regOne!32498 r!7292)))) b!5951918))

(assert (= (and b!5950525 ((_ is Concat!24838) (reg!16322 (regOne!32498 r!7292)))) b!5951919))

(assert (= (and b!5950525 ((_ is Star!15993) (reg!16322 (regOne!32498 r!7292)))) b!5951920))

(assert (= (and b!5950525 ((_ is Union!15993) (reg!16322 (regOne!32498 r!7292)))) b!5951921))

(declare-fun b_lambda!223695 () Bool)

(assert (= b_lambda!223623 (or b!5950036 b_lambda!223695)))

(declare-fun bs!1410206 () Bool)

(declare-fun d!1866010 () Bool)

(assert (= bs!1410206 (and d!1866010 b!5950036)))

(assert (=> bs!1410206 (= (dynLambda!25102 lambda!324651 (h!70603 (Cons!64155 lt!2313004 Nil!64155))) (>= lt!2313065 (contextDepth!141 (h!70603 (Cons!64155 lt!2313004 Nil!64155)))))))

(assert (=> bs!1410206 m!6837898))

(assert (=> b!5951132 d!1866010))

(declare-fun b_lambda!223697 () Bool)

(assert (= b_lambda!223633 (or b!5949712 b_lambda!223697)))

(assert (=> d!1865704 d!1865378))

(declare-fun b_lambda!223699 () Bool)

(assert (= b_lambda!223689 (or b!5950043 b_lambda!223699)))

(declare-fun bs!1410207 () Bool)

(declare-fun d!1866012 () Bool)

(assert (= bs!1410207 (and d!1866012 b!5950043)))

(assert (=> bs!1410207 (= (dynLambda!25102 lambda!324653 (h!70603 (t!377688 (Cons!64155 lt!2312982 Nil!64155)))) (>= lt!2313068 (contextDepth!141 (h!70603 (t!377688 (Cons!64155 lt!2312982 Nil!64155))))))))

(assert (=> bs!1410207 m!6839576))

(assert (=> b!5951780 d!1866012))

(declare-fun b_lambda!223701 () Bool)

(assert (= b_lambda!223625 (or d!1865354 b_lambda!223701)))

(declare-fun bs!1410208 () Bool)

(declare-fun d!1866014 () Bool)

(assert (= bs!1410208 (and d!1866014 d!1865354)))

(assert (=> bs!1410208 (= (dynLambda!25100 lambda!324704 (h!70602 (unfocusZipperList!1414 zl!343))) (validRegex!7729 (h!70602 (unfocusZipperList!1414 zl!343))))))

(declare-fun m!6839650 () Bool)

(assert (=> bs!1410208 m!6839650))

(assert (=> b!5951143 d!1866014))

(declare-fun b_lambda!223703 () Bool)

(assert (= b_lambda!223617 (or b!5949712 b_lambda!223703)))

(assert (=> d!1865574 d!1865376))

(declare-fun b_lambda!223705 () Bool)

(assert (= b_lambda!223645 (or b!5949944 b_lambda!223705)))

(declare-fun bs!1410209 () Bool)

(declare-fun d!1866016 () Bool)

(assert (= bs!1410209 (and d!1866016 b!5949944)))

(assert (=> bs!1410209 (= (dynLambda!25100 lambda!324634 (h!70602 (t!377687 (exprs!5877 lt!2312982)))) (>= lt!2313041 (regexDepth!249 (h!70602 (t!377687 (exprs!5877 lt!2312982))))))))

(declare-fun m!6839652 () Bool)

(assert (=> bs!1410209 m!6839652))

(assert (=> b!5951447 d!1866016))

(declare-fun b_lambda!223707 () Bool)

(assert (= b_lambda!223619 (or b!5949941 b_lambda!223707)))

(declare-fun bs!1410210 () Bool)

(declare-fun d!1866018 () Bool)

(assert (= bs!1410210 (and d!1866018 b!5949941)))

(assert (=> bs!1410210 (= (dynLambda!25100 lambda!324633 (h!70602 (exprs!5877 lt!2313004))) (>= lt!2313039 (regexDepth!249 (h!70602 (exprs!5877 lt!2313004)))))))

(assert (=> bs!1410210 m!6837812))

(assert (=> b!5950985 d!1866018))

(declare-fun b_lambda!223709 () Bool)

(assert (= b_lambda!223683 (or b!5949939 b_lambda!223709)))

(declare-fun bs!1410211 () Bool)

(declare-fun d!1866020 () Bool)

(assert (= bs!1410211 (and d!1866020 b!5949939)))

(assert (=> bs!1410211 (= (dynLambda!25100 lambda!324632 (h!70602 (t!377687 (exprs!5877 lt!2313004)))) (>= lt!2313037 (regexDepth!249 (h!70602 (t!377687 (exprs!5877 lt!2313004))))))))

(declare-fun m!6839654 () Bool)

(assert (=> bs!1410211 m!6839654))

(assert (=> b!5951677 d!1866020))

(declare-fun b_lambda!223711 () Bool)

(assert (= b_lambda!223691 (or b!5949946 b_lambda!223711)))

(declare-fun bs!1410212 () Bool)

(declare-fun d!1866022 () Bool)

(assert (= bs!1410212 (and d!1866022 b!5949946)))

(assert (=> bs!1410212 (= (dynLambda!25100 lambda!324635 (h!70602 (exprs!5877 lt!2312982))) (>= lt!2313043 (regexDepth!249 (h!70602 (exprs!5877 lt!2312982)))))))

(assert (=> bs!1410212 m!6837824))

(assert (=> b!5951797 d!1866022))

(declare-fun b_lambda!223713 () Bool)

(assert (= b_lambda!223635 (or d!1865316 b_lambda!223713)))

(declare-fun bs!1410213 () Bool)

(declare-fun d!1866024 () Bool)

(assert (= bs!1410213 (and d!1866024 d!1865316)))

(assert (=> bs!1410213 (= (dynLambda!25100 lambda!324700 (h!70602 (exprs!5877 lt!2312978))) (validRegex!7729 (h!70602 (exprs!5877 lt!2312978))))))

(declare-fun m!6839656 () Bool)

(assert (=> bs!1410213 m!6839656))

(assert (=> b!5951269 d!1866024))

(declare-fun b_lambda!223715 () Bool)

(assert (= b_lambda!223693 (or d!1865252 b_lambda!223715)))

(declare-fun bs!1410214 () Bool)

(declare-fun d!1866026 () Bool)

(assert (= bs!1410214 (and d!1866026 d!1865252)))

(assert (=> bs!1410214 (= (dynLambda!25100 lambda!324657 (h!70602 (exprs!5877 (h!70603 zl!343)))) (validRegex!7729 (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(declare-fun m!6839658 () Bool)

(assert (=> bs!1410214 m!6839658))

(assert (=> b!5951799 d!1866026))

(declare-fun b_lambda!223717 () Bool)

(assert (= b_lambda!223687 (or b!5949712 b_lambda!223717)))

(assert (=> d!1865944 d!1865380))

(declare-fun b_lambda!223719 () Bool)

(assert (= b_lambda!223611 (or d!1865258 b_lambda!223719)))

(declare-fun bs!1410215 () Bool)

(declare-fun d!1866028 () Bool)

(assert (= bs!1410215 (and d!1866028 d!1865258)))

(assert (=> bs!1410215 (= (dynLambda!25100 lambda!324662 (h!70602 (exprs!5877 (h!70603 zl!343)))) (validRegex!7729 (h!70602 (exprs!5877 (h!70603 zl!343)))))))

(assert (=> bs!1410215 m!6839658))

(assert (=> b!5950872 d!1866028))

(declare-fun b_lambda!223721 () Bool)

(assert (= b_lambda!223639 (or d!1865362 b_lambda!223721)))

(declare-fun bs!1410216 () Bool)

(declare-fun d!1866030 () Bool)

(assert (= bs!1410216 (and d!1866030 d!1865362)))

(assert (=> bs!1410216 (= (dynLambda!25100 lambda!324707 (h!70602 lt!2313141)) (validRegex!7729 (h!70602 lt!2313141)))))

(declare-fun m!6839660 () Bool)

(assert (=> bs!1410216 m!6839660))

(assert (=> b!5951322 d!1866030))

(declare-fun b_lambda!223723 () Bool)

(assert (= b_lambda!223631 (or b!5950045 b_lambda!223723)))

(declare-fun bs!1410217 () Bool)

(declare-fun d!1866032 () Bool)

(assert (= bs!1410217 (and d!1866032 b!5950045)))

(assert (=> bs!1410217 (= (dynLambda!25102 lambda!324654 (h!70603 (Cons!64155 lt!2312982 Nil!64155))) (>= lt!2313069 (contextDepth!141 (h!70603 (Cons!64155 lt!2312982 Nil!64155)))))))

(assert (=> bs!1410217 m!6837910))

(assert (=> b!5951267 d!1866032))

(declare-fun b_lambda!223725 () Bool)

(assert (= b_lambda!223647 (or d!1865262 b_lambda!223725)))

(declare-fun bs!1410218 () Bool)

(declare-fun d!1866034 () Bool)

(assert (= bs!1410218 (and d!1866034 d!1865262)))

(assert (=> bs!1410218 (= (dynLambda!25100 lambda!324663 (h!70602 (exprs!5877 setElem!40431))) (validRegex!7729 (h!70602 (exprs!5877 setElem!40431))))))

(declare-fun m!6839662 () Bool)

(assert (=> bs!1410218 m!6839662))

(assert (=> b!5951460 d!1866034))

(declare-fun b_lambda!223727 () Bool)

(assert (= b_lambda!223685 (or b!5950034 b_lambda!223727)))

(declare-fun bs!1410219 () Bool)

(declare-fun d!1866036 () Bool)

(assert (= bs!1410219 (and d!1866036 b!5950034)))

(assert (=> bs!1410219 (= (dynLambda!25102 lambda!324650 (h!70603 (t!377688 (Cons!64155 lt!2313004 Nil!64155)))) (>= lt!2313064 (contextDepth!141 (h!70603 (t!377688 (Cons!64155 lt!2313004 Nil!64155))))))))

(assert (=> bs!1410219 m!6839520))

(assert (=> b!5951744 d!1866036))

(check-sat (not b!5951320) (not b!5951903) (not b!5951768) (not bm!474079) (not b!5951222) (not bm!474133) (not b!5951870) (not b!5951514) (not b!5951782) (not d!1865544) (not d!1865994) (not d!1865850) (not b!5951834) (not d!1865756) (not b!5951281) (not b!5951876) (not b!5951268) (not b!5951751) (not b!5951755) (not b!5951891) (not b!5951919) (not b!5951812) (not bm!474068) (not bm!474024) (not bm!474115) (not bm!474017) (not bm!474128) (not b!5951155) (not bm!474019) (not b!5951147) (not b!5951896) (not b!5951813) (not bm!474025) (not bm!474122) (not b!5951232) (not d!1865986) (not d!1865962) (not b!5951800) (not d!1865904) (not b!5951725) (not bm!473975) (not b!5951826) (not b!5950875) (not b!5951531) (not d!1865924) (not d!1865598) (not bm!474132) (not bm!473974) (not b!5951152) (not b!5950919) (not d!1865584) (not bm!474107) (not bm!474134) (not b!5951881) (not b!5951916) (not bs!1410210) (not b!5950992) (not b_lambda!223591) (not bm!474087) (not bs!1410219) (not b!5951781) (not b!5951816) (not b!5951072) (not d!1865688) (not bm!474089) (not d!1865734) (not d!1865914) (not d!1865906) (not b!5951153) (not b!5951809) (not d!1865950) (not b!5951867) (not bm!474071) (not b!5951539) (not d!1865624) (not bm!474066) (not b!5951717) (not bm!474135) (not b!5951148) (not b!5951848) (not bm!474124) (not b!5950945) (not b!5950995) (not b!5950941) (not b_lambda!223719) (not b!5951547) (not bm!474030) (not b!5951749) (not bs!1410208) (not d!1865946) (not d!1865944) (not b!5951912) (not d!1865660) (not b!5951808) (not b!5951829) (not bm!473989) (not b!5951880) (not bm!473990) (not b!5951448) (not b!5950934) (not d!1865750) (not b!5951911) (not b_lambda!223589) (not b!5951908) (not d!1865586) (not b!5951037) (not b_lambda!223695) (not d!1865658) (not d!1865632) (not bm!474106) (not b_lambda!223705) (not b_lambda!223721) (not d!1865604) (not b!5951254) (not setNonEmpty!40449) (not bm!473962) (not bm!473999) (not bs!1410207) (not bs!1410206) (not bm!473980) (not d!1865594) (not b!5951745) (not b_lambda!223723) (not bs!1410209) (not b!5951061) (not b!5951790) (not d!1865652) (not b!5951239) (not b!5951425) (not b!5951875) (not b!5951887) (not b!5951794) (not b!5951535) (not b!5951819) (not b!5951536) (not b!5951253) (not d!1865708) (not b!5950991) (not b!5951538) (not b!5951885) (not b!5951821) (not bm!473984) (not b!5951905) (not b!5951144) (not b!5951710) (not b!5951032) (not b!5951889) (not b!5950946) (not bm!474085) (not bm!474021) (not b!5951779) (not d!1865754) (not bm!473931) (not b!5951294) (not b!5951862) (not b!5950990) (not bs!1410214) (not d!1865672) (not d!1865620) (not b!5951133) (not b!5951815) (not d!1865704) (not d!1865960) (not b!5951035) (not b!5951784) (not bm!474070) (not b!5951913) (not bm!474117) (not d!1865616) (not b!5951110) (not b!5951884) (not bm!474029) (not b!5951272) (not b!5951219) (not b!5951856) (not d!1865980) (not b!5951846) (not bm!474118) (not b!5951777) (not b_lambda!223715) (not b!5951798) (not d!1865948) (not d!1865956) (not b!5951305) (not b_lambda!223711) (not d!1865588) (not bm!474035) (not b!5951289) (not b!5951842) (not d!1865958) (not bm!473946) (not b!5951082) (not b!5951461) (not b!5951837) (not bm!474037) tp_is_empty!41239 (not b!5951043) (not b_lambda!223725) (not b!5951292) (not b!5950874) (not b!5951817) (not bm!474033) (not bm!474023) (not b!5950929) (not b!5950939) (not d!1865628) (not b!5951449) (not b!5951427) (not b!5951077) (not d!1865992) (not bs!1410212) (not b!5951028) (not b!5951921) (not setNonEmpty!40446) (not d!1865692) (not bs!1410211) (not d!1865990) (not b!5951825) (not b!5951904) (not b!5951853) (not d!1865742) (not b!5950938) (not b!5951805) (not d!1865970) (not b_lambda!223709) (not b!5950948) (not b!5951845) (not bm!474130) (not b!5951297) (not b!5951871) (not d!1865902) (not b!5951157) (not d!1865826) (not b!5951864) (not b!5951259) (not b!5950930) (not b_lambda!223587) (not d!1865852) (not bm!473966) (not b!5951033) (not b!5951135) (not d!1865844) (not d!1865982) (not bm!474069) (not bm!474028) (not b!5951711) (not b!5951530) (not b!5951844) (not b!5951840) (not b!5951076) (not bs!1410216) (not b!5951920) (not b!5950951) (not b!5951228) (not b!5951860) (not bm!473997) (not b!5951857) (not b!5951883) (not d!1865836) (not b!5951823) (not b!5951752) (not bm!474083) (not bm!474015) (not b!5951833) (not bm!473988) (not b!5950993) (not b!5951285) (not b!5951827) (not b!5951888) (not b!5950997) (not b!5951873) (not b!5951770) (not b!5951510) (not bs!1410217) (not b!5951824) (not b!5951795) (not b!5951284) (not b!5951832) (not bm!474119) (not bs!1410215) (not bm!473930) (not d!1865922) (not b!5951868) (not b!5951776) (not b!5951895) (not b!5951230) (not setNonEmpty!40447) (not b_lambda!223727) (not d!1865574) (not b!5951261) (not b!5950988) (not d!1865814) (not b!5951678) (not b!5951796) (not d!1865918) (not b!5951227) (not d!1865858) (not b!5951513) (not bm!473964) (not d!1865630) (not b!5951907) (not b!5951767) (not b!5951290) (not d!1865912) (not b!5951915) (not d!1865540) (not bm!474001) (not d!1865744) (not b!5951258) (not b!5951719) (not b!5951712) (not b!5950986) (not b!5951897) (not bm!473978) (not bm!473982) (not bm!473998) (not b!5951850) (not b!5951917) (not b!5951899) (not b!5951811) (not d!1865720) (not d!1865552) (not b!5951831) (not b!5951545) (not bm!474116) (not d!1865936) (not b!5950947) (not bs!1410218) (not b!5951900) (not b!5951771) (not b!5951509) (not b!5951879) (not b!5951280) (not b!5951073) (not b!5951909) (not b!5950860) (not b!5951838) (not b!5951828) (not d!1865838) (not b!5951893) (not setNonEmpty!40448) (not b!5951852) (not bm!474109) (not b!5950931) (not b!5951323) (not b_lambda!223697) (not b!5951466) (not b_lambda!223701) (not b!5951533) (not bm!474108) (not bm!474026) (not b!5950873) (not bm!473986) (not bm!474126) (not b_lambda!223713) (not bm!474104) (not b!5951789) (not b!5951733) (not b!5951892) (not b!5951540) (not bm!474014) (not d!1865790) (not bm!473976) (not b!5951240) (not bm!474081) (not b!5950949) (not b!5951858) (not b_lambda!223703) (not b!5951223) (not bm!473995) (not b!5951270) (not b!5951045) (not b!5951754) (not b_lambda!223699) (not d!1866006) (not d!1866004) (not bm!473993) (not b_lambda!223717) (not bs!1410213) (not b!5951872) (not d!1865900) (not b!5951841) (not b!5951877) (not b!5951807) (not b!5951849) (not b!5951801) (not b_lambda!223707) (not b!5951100) (not b!5951263) (not b!5950943) (not b!5950918) (not b!5951854) (not b!5951861) (not b!5951866) (not b!5951820) (not b!5951836) (not d!1865910) (not d!1865564) (not b!5951785) (not bm!474114) (not b!5951027) (not b!5951772) (not b!5951791) (not b!5951865) (not b!5951901) (not b!5950994))
(check-sat)
