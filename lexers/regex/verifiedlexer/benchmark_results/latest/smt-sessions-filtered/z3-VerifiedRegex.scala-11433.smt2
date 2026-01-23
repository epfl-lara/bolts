; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!616306 () Bool)

(assert start!616306)

(declare-fun b!6173989 () Bool)

(assert (=> b!6173989 true))

(assert (=> b!6173989 true))

(declare-fun lambda!337012 () Int)

(declare-fun lambda!337011 () Int)

(assert (=> b!6173989 (not (= lambda!337012 lambda!337011))))

(assert (=> b!6173989 true))

(assert (=> b!6173989 true))

(declare-fun b!6174001 () Bool)

(assert (=> b!6174001 true))

(declare-fun b!6173976 () Bool)

(declare-datatypes ((Unit!157683 0))(
  ( (Unit!157684) )
))
(declare-fun e!3760834 () Unit!157683)

(declare-fun Unit!157685 () Unit!157683)

(assert (=> b!6173976 (= e!3760834 Unit!157685)))

(declare-datatypes ((C!32496 0))(
  ( (C!32497 (val!25950 Int)) )
))
(declare-datatypes ((List!64638 0))(
  ( (Nil!64514) (Cons!64514 (h!70962 C!32496) (t!378142 List!64638)) )
))
(declare-fun s!2326 () List!64638)

(declare-fun lt!2337698 () Unit!157683)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16113 0))(
  ( (ElementMatch!16113 (c!1112748 C!32496)) (Concat!24958 (regOne!32738 Regex!16113) (regTwo!32738 Regex!16113)) (EmptyExpr!16113) (Star!16113 (reg!16442 Regex!16113)) (EmptyLang!16113) (Union!16113 (regOne!32739 Regex!16113) (regTwo!32739 Regex!16113)) )
))
(declare-datatypes ((List!64639 0))(
  ( (Nil!64515) (Cons!64515 (h!70963 Regex!16113) (t!378143 List!64639)) )
))
(declare-datatypes ((Context!10994 0))(
  ( (Context!10995 (exprs!5997 List!64639)) )
))
(declare-fun lt!2337671 () (InoxSet Context!10994))

(declare-fun lt!2337699 () (InoxSet Context!10994))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!944 ((InoxSet Context!10994) (InoxSet Context!10994) List!64638) Unit!157683)

(assert (=> b!6173976 (= lt!2337698 (lemmaZipperConcatMatchesSameAsBothZippers!944 lt!2337671 lt!2337699 (t!378142 s!2326)))))

(declare-fun res!2555414 () Bool)

(declare-fun matchZipper!2125 ((InoxSet Context!10994) List!64638) Bool)

(assert (=> b!6173976 (= res!2555414 (matchZipper!2125 lt!2337671 (t!378142 s!2326)))))

(declare-fun e!3760828 () Bool)

(assert (=> b!6173976 (=> res!2555414 e!3760828)))

(assert (=> b!6173976 (= (matchZipper!2125 ((_ map or) lt!2337671 lt!2337699) (t!378142 s!2326)) e!3760828)))

(declare-fun b!6173977 () Bool)

(declare-fun res!2555416 () Bool)

(declare-fun e!3760843 () Bool)

(assert (=> b!6173977 (=> res!2555416 e!3760843)))

(declare-fun r!7292 () Regex!16113)

(declare-datatypes ((List!64640 0))(
  ( (Nil!64516) (Cons!64516 (h!70964 Context!10994) (t!378144 List!64640)) )
))
(declare-fun zl!343 () List!64640)

(declare-fun generalisedUnion!1957 (List!64639) Regex!16113)

(declare-fun unfocusZipperList!1534 (List!64640) List!64639)

(assert (=> b!6173977 (= res!2555416 (not (= r!7292 (generalisedUnion!1957 (unfocusZipperList!1534 zl!343)))))))

(declare-fun b!6173978 () Bool)

(declare-fun e!3760847 () Bool)

(declare-fun tp_is_empty!41479 () Bool)

(declare-fun tp!1723749 () Bool)

(assert (=> b!6173978 (= e!3760847 (and tp_is_empty!41479 tp!1723749))))

(declare-fun b!6173979 () Bool)

(declare-fun e!3760848 () Bool)

(declare-fun tp!1723751 () Bool)

(assert (=> b!6173979 (= e!3760848 tp!1723751)))

(declare-fun b!6173980 () Bool)

(declare-fun e!3760836 () Bool)

(declare-fun lt!2337681 () (InoxSet Context!10994))

(assert (=> b!6173980 (= e!3760836 (matchZipper!2125 lt!2337681 s!2326))))

(declare-fun b!6173981 () Bool)

(declare-fun e!3760849 () Bool)

(assert (=> b!6173981 (= e!3760849 true)))

(declare-fun lt!2337672 () Int)

(declare-fun size!40252 (List!64638) Int)

(assert (=> b!6173981 (= lt!2337672 (size!40252 s!2326))))

(declare-fun b!6173982 () Bool)

(declare-fun res!2555415 () Bool)

(declare-fun e!3760832 () Bool)

(assert (=> b!6173982 (=> res!2555415 e!3760832)))

(declare-fun lt!2337696 () Context!10994)

(declare-fun lt!2337684 () Int)

(declare-fun zipperDepthTotal!296 (List!64640) Int)

(assert (=> b!6173982 (= res!2555415 (>= (zipperDepthTotal!296 (Cons!64516 lt!2337696 Nil!64516)) lt!2337684))))

(declare-fun b!6173983 () Bool)

(declare-fun e!3760838 () Bool)

(declare-fun tp!1723754 () Bool)

(declare-fun tp!1723750 () Bool)

(assert (=> b!6173983 (= e!3760838 (and tp!1723754 tp!1723750))))

(declare-fun b!6173984 () Bool)

(declare-fun res!2555426 () Bool)

(assert (=> b!6173984 (=> res!2555426 e!3760849)))

(declare-fun lt!2337677 () (InoxSet Context!10994))

(declare-fun lt!2337703 () List!64640)

(declare-fun toList!9897 ((InoxSet Context!10994)) List!64640)

(assert (=> b!6173984 (= res!2555426 (not (= (toList!9897 lt!2337677) lt!2337703)))))

(declare-fun b!6173985 () Bool)

(declare-fun res!2555425 () Bool)

(assert (=> b!6173985 (=> res!2555425 e!3760843)))

(get-info :version)

(assert (=> b!6173985 (= res!2555425 (not ((_ is Cons!64515) (exprs!5997 (h!70964 zl!343)))))))

(declare-fun b!6173986 () Bool)

(declare-fun e!3760846 () Bool)

(assert (=> b!6173986 (= e!3760846 (matchZipper!2125 lt!2337699 (t!378142 s!2326)))))

(declare-fun b!6173987 () Bool)

(declare-fun e!3760830 () Unit!157683)

(declare-fun Unit!157686 () Unit!157683)

(assert (=> b!6173987 (= e!3760830 Unit!157686)))

(declare-fun e!3760837 () Bool)

(assert (=> b!6173989 (= e!3760843 e!3760837)))

(declare-fun res!2555413 () Bool)

(assert (=> b!6173989 (=> res!2555413 e!3760837)))

(declare-fun lt!2337690 () Bool)

(declare-fun lt!2337691 () Bool)

(assert (=> b!6173989 (= res!2555413 (or (not (= lt!2337690 lt!2337691)) ((_ is Nil!64514) s!2326)))))

(declare-fun Exists!3183 (Int) Bool)

(assert (=> b!6173989 (= (Exists!3183 lambda!337011) (Exists!3183 lambda!337012))))

(declare-fun lt!2337695 () Unit!157683)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1720 (Regex!16113 Regex!16113 List!64638) Unit!157683)

(assert (=> b!6173989 (= lt!2337695 (lemmaExistCutMatchRandMatchRSpecEquivalent!1720 (regOne!32738 r!7292) (regTwo!32738 r!7292) s!2326))))

(assert (=> b!6173989 (= lt!2337691 (Exists!3183 lambda!337011))))

(declare-datatypes ((tuple2!66184 0))(
  ( (tuple2!66185 (_1!36395 List!64638) (_2!36395 List!64638)) )
))
(declare-datatypes ((Option!16004 0))(
  ( (None!16003) (Some!16003 (v!52144 tuple2!66184)) )
))
(declare-fun isDefined!12707 (Option!16004) Bool)

(declare-fun findConcatSeparation!2418 (Regex!16113 Regex!16113 List!64638 List!64638 List!64638) Option!16004)

(assert (=> b!6173989 (= lt!2337691 (isDefined!12707 (findConcatSeparation!2418 (regOne!32738 r!7292) (regTwo!32738 r!7292) Nil!64514 s!2326 s!2326)))))

(declare-fun lt!2337678 () Unit!157683)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2182 (Regex!16113 Regex!16113 List!64638) Unit!157683)

(assert (=> b!6173989 (= lt!2337678 (lemmaFindConcatSeparationEquivalentToExists!2182 (regOne!32738 r!7292) (regTwo!32738 r!7292) s!2326))))

(declare-fun b!6173990 () Bool)

(declare-fun e!3760831 () Unit!157683)

(declare-fun Unit!157687 () Unit!157683)

(assert (=> b!6173990 (= e!3760831 Unit!157687)))

(declare-fun lt!2337697 () Unit!157683)

(declare-fun lt!2337673 () (InoxSet Context!10994))

(assert (=> b!6173990 (= lt!2337697 (lemmaZipperConcatMatchesSameAsBothZippers!944 lt!2337673 lt!2337699 (t!378142 s!2326)))))

(declare-fun res!2555433 () Bool)

(declare-fun lt!2337674 () Bool)

(assert (=> b!6173990 (= res!2555433 lt!2337674)))

(declare-fun e!3760844 () Bool)

(assert (=> b!6173990 (=> res!2555433 e!3760844)))

(assert (=> b!6173990 (= (matchZipper!2125 ((_ map or) lt!2337673 lt!2337699) (t!378142 s!2326)) e!3760844)))

(declare-fun b!6173991 () Bool)

(declare-fun Unit!157688 () Unit!157683)

(assert (=> b!6173991 (= e!3760834 Unit!157688)))

(declare-fun b!6173992 () Bool)

(declare-fun res!2555421 () Bool)

(assert (=> b!6173992 (=> res!2555421 e!3760843)))

(declare-fun generalisedConcat!1710 (List!64639) Regex!16113)

(assert (=> b!6173992 (= res!2555421 (not (= r!7292 (generalisedConcat!1710 (exprs!5997 (h!70964 zl!343))))))))

(declare-fun b!6173993 () Bool)

(declare-fun e!3760840 () Bool)

(assert (=> b!6173993 (= e!3760840 e!3760832)))

(declare-fun res!2555411 () Bool)

(assert (=> b!6173993 (=> res!2555411 e!3760832)))

(declare-fun lt!2337706 () Int)

(assert (=> b!6173993 (= res!2555411 (>= lt!2337706 lt!2337684))))

(assert (=> b!6173993 (= lt!2337684 (zipperDepthTotal!296 zl!343))))

(assert (=> b!6173993 (= lt!2337706 (zipperDepthTotal!296 lt!2337703))))

(declare-fun lt!2337688 () Context!10994)

(assert (=> b!6173993 (= lt!2337703 (Cons!64516 lt!2337688 Nil!64516))))

(declare-fun b!6173994 () Bool)

(declare-fun e!3760850 () Bool)

(assert (=> b!6173994 (= e!3760850 (not e!3760843))))

(declare-fun res!2555424 () Bool)

(assert (=> b!6173994 (=> res!2555424 e!3760843)))

(assert (=> b!6173994 (= res!2555424 (not ((_ is Cons!64516) zl!343)))))

(declare-fun matchRSpec!3214 (Regex!16113 List!64638) Bool)

(assert (=> b!6173994 (= lt!2337690 (matchRSpec!3214 r!7292 s!2326))))

(declare-fun matchR!8296 (Regex!16113 List!64638) Bool)

(assert (=> b!6173994 (= lt!2337690 (matchR!8296 r!7292 s!2326))))

(declare-fun lt!2337675 () Unit!157683)

(declare-fun mainMatchTheorem!3214 (Regex!16113 List!64638) Unit!157683)

(assert (=> b!6173994 (= lt!2337675 (mainMatchTheorem!3214 r!7292 s!2326))))

(declare-fun b!6173995 () Bool)

(declare-fun res!2555430 () Bool)

(assert (=> b!6173995 (=> res!2555430 e!3760837)))

(declare-fun isEmpty!36492 (List!64639) Bool)

(assert (=> b!6173995 (= res!2555430 (isEmpty!36492 (t!378143 (exprs!5997 (h!70964 zl!343)))))))

(declare-fun b!6173996 () Bool)

(declare-fun res!2555412 () Bool)

(assert (=> b!6173996 (=> res!2555412 e!3760843)))

(assert (=> b!6173996 (= res!2555412 (or ((_ is EmptyExpr!16113) r!7292) ((_ is EmptyLang!16113) r!7292) ((_ is ElementMatch!16113) r!7292) ((_ is Union!16113) r!7292) (not ((_ is Concat!24958) r!7292))))))

(declare-fun b!6173997 () Bool)

(declare-fun e!3760845 () Bool)

(declare-fun e!3760839 () Bool)

(assert (=> b!6173997 (= e!3760845 e!3760839)))

(declare-fun res!2555417 () Bool)

(assert (=> b!6173997 (=> res!2555417 e!3760839)))

(declare-fun e!3760842 () Bool)

(assert (=> b!6173997 (= res!2555417 e!3760842)))

(declare-fun res!2555420 () Bool)

(assert (=> b!6173997 (=> (not res!2555420) (not e!3760842))))

(assert (=> b!6173997 (= res!2555420 (not (= (matchZipper!2125 lt!2337671 (t!378142 s!2326)) lt!2337674)))))

(declare-fun lt!2337686 () (InoxSet Context!10994))

(declare-fun e!3760833 () Bool)

(assert (=> b!6173997 (= (matchZipper!2125 lt!2337686 (t!378142 s!2326)) e!3760833)))

(declare-fun res!2555419 () Bool)

(assert (=> b!6173997 (=> res!2555419 e!3760833)))

(assert (=> b!6173997 (= res!2555419 lt!2337674)))

(assert (=> b!6173997 (= lt!2337674 (matchZipper!2125 lt!2337673 (t!378142 s!2326)))))

(declare-fun lt!2337687 () Unit!157683)

(declare-fun lt!2337705 () (InoxSet Context!10994))

(assert (=> b!6173997 (= lt!2337687 (lemmaZipperConcatMatchesSameAsBothZippers!944 lt!2337673 lt!2337705 (t!378142 s!2326)))))

(declare-fun b!6173998 () Bool)

(declare-fun tp!1723757 () Bool)

(assert (=> b!6173998 (= e!3760838 tp!1723757)))

(declare-fun b!6173999 () Bool)

(declare-fun tp!1723756 () Bool)

(declare-fun e!3760835 () Bool)

(declare-fun inv!83529 (Context!10994) Bool)

(assert (=> b!6173999 (= e!3760835 (and (inv!83529 (h!70964 zl!343)) e!3760848 tp!1723756))))

(declare-fun b!6174000 () Bool)

(declare-fun Unit!157689 () Unit!157683)

(assert (=> b!6174000 (= e!3760830 Unit!157689)))

(declare-fun lt!2337685 () Unit!157683)

(assert (=> b!6174000 (= lt!2337685 (lemmaZipperConcatMatchesSameAsBothZippers!944 lt!2337705 lt!2337699 (t!378142 s!2326)))))

(declare-fun res!2555423 () Bool)

(assert (=> b!6174000 (= res!2555423 (matchZipper!2125 lt!2337705 (t!378142 s!2326)))))

(assert (=> b!6174000 (=> res!2555423 e!3760846)))

(assert (=> b!6174000 (= (matchZipper!2125 ((_ map or) lt!2337705 lt!2337699) (t!378142 s!2326)) e!3760846)))

(declare-fun e!3760851 () Bool)

(assert (=> b!6174001 (= e!3760837 e!3760851)))

(declare-fun res!2555410 () Bool)

(assert (=> b!6174001 (=> res!2555410 e!3760851)))

(assert (=> b!6174001 (= res!2555410 (or (and ((_ is ElementMatch!16113) (regOne!32738 r!7292)) (= (c!1112748 (regOne!32738 r!7292)) (h!70962 s!2326))) (not ((_ is Union!16113) (regOne!32738 r!7292)))))))

(declare-fun lt!2337701 () Unit!157683)

(assert (=> b!6174001 (= lt!2337701 e!3760834)))

(declare-fun c!1112746 () Bool)

(declare-fun nullable!6106 (Regex!16113) Bool)

(assert (=> b!6174001 (= c!1112746 (nullable!6106 (h!70963 (exprs!5997 (h!70964 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10994))

(declare-fun lambda!337013 () Int)

(declare-fun flatMap!1618 ((InoxSet Context!10994) Int) (InoxSet Context!10994))

(declare-fun derivationStepZipperUp!1287 (Context!10994 C!32496) (InoxSet Context!10994))

(assert (=> b!6174001 (= (flatMap!1618 z!1189 lambda!337013) (derivationStepZipperUp!1287 (h!70964 zl!343) (h!70962 s!2326)))))

(declare-fun lt!2337689 () Unit!157683)

(declare-fun lemmaFlatMapOnSingletonSet!1144 ((InoxSet Context!10994) Context!10994 Int) Unit!157683)

(assert (=> b!6174001 (= lt!2337689 (lemmaFlatMapOnSingletonSet!1144 z!1189 (h!70964 zl!343) lambda!337013))))

(declare-fun lt!2337692 () Context!10994)

(assert (=> b!6174001 (= lt!2337699 (derivationStepZipperUp!1287 lt!2337692 (h!70962 s!2326)))))

(declare-fun derivationStepZipperDown!1361 (Regex!16113 Context!10994 C!32496) (InoxSet Context!10994))

(assert (=> b!6174001 (= lt!2337671 (derivationStepZipperDown!1361 (h!70963 (exprs!5997 (h!70964 zl!343))) lt!2337692 (h!70962 s!2326)))))

(assert (=> b!6174001 (= lt!2337692 (Context!10995 (t!378143 (exprs!5997 (h!70964 zl!343)))))))

(declare-fun lt!2337680 () (InoxSet Context!10994))

(assert (=> b!6174001 (= lt!2337680 (derivationStepZipperUp!1287 (Context!10995 (Cons!64515 (h!70963 (exprs!5997 (h!70964 zl!343))) (t!378143 (exprs!5997 (h!70964 zl!343))))) (h!70962 s!2326)))))

(declare-fun b!6174002 () Bool)

(declare-fun res!2555422 () Bool)

(assert (=> b!6174002 (=> res!2555422 e!3760849)))

(declare-fun lt!2337700 () Regex!16113)

(declare-fun unfocusZipper!1855 (List!64640) Regex!16113)

(assert (=> b!6174002 (= res!2555422 (not (= lt!2337700 (unfocusZipper!1855 lt!2337703))))))

(declare-fun b!6174003 () Bool)

(assert (=> b!6174003 (= e!3760828 (matchZipper!2125 lt!2337699 (t!378142 s!2326)))))

(declare-fun b!6174004 () Bool)

(declare-fun Unit!157690 () Unit!157683)

(assert (=> b!6174004 (= e!3760831 Unit!157690)))

(declare-fun b!6174005 () Bool)

(declare-fun res!2555428 () Bool)

(assert (=> b!6174005 (=> res!2555428 e!3760843)))

(declare-fun isEmpty!36493 (List!64640) Bool)

(assert (=> b!6174005 (= res!2555428 (not (isEmpty!36493 (t!378144 zl!343))))))

(declare-fun b!6174006 () Bool)

(assert (=> b!6174006 (= e!3760838 tp_is_empty!41479)))

(declare-fun b!6174007 () Bool)

(assert (=> b!6174007 (= e!3760839 e!3760840)))

(declare-fun res!2555431 () Bool)

(assert (=> b!6174007 (=> res!2555431 e!3760840)))

(assert (=> b!6174007 (= res!2555431 (not (= (matchZipper!2125 z!1189 s!2326) e!3760836)))))

(declare-fun res!2555409 () Bool)

(assert (=> b!6174007 (=> res!2555409 e!3760836)))

(assert (=> b!6174007 (= res!2555409 (matchZipper!2125 lt!2337677 s!2326))))

(declare-fun lt!2337704 () Unit!157683)

(assert (=> b!6174007 (= lt!2337704 e!3760830)))

(declare-fun c!1112745 () Bool)

(assert (=> b!6174007 (= c!1112745 (nullable!6106 (regTwo!32739 (regOne!32738 r!7292))))))

(assert (=> b!6174007 (= (flatMap!1618 lt!2337681 lambda!337013) (derivationStepZipperUp!1287 lt!2337696 (h!70962 s!2326)))))

(declare-fun lt!2337683 () Unit!157683)

(assert (=> b!6174007 (= lt!2337683 (lemmaFlatMapOnSingletonSet!1144 lt!2337681 lt!2337696 lambda!337013))))

(declare-fun lt!2337694 () (InoxSet Context!10994))

(assert (=> b!6174007 (= lt!2337694 (derivationStepZipperUp!1287 lt!2337696 (h!70962 s!2326)))))

(declare-fun lt!2337682 () Unit!157683)

(assert (=> b!6174007 (= lt!2337682 e!3760831)))

(declare-fun c!1112747 () Bool)

(assert (=> b!6174007 (= c!1112747 (nullable!6106 (regOne!32739 (regOne!32738 r!7292))))))

(assert (=> b!6174007 (= (flatMap!1618 lt!2337677 lambda!337013) (derivationStepZipperUp!1287 lt!2337688 (h!70962 s!2326)))))

(declare-fun lt!2337702 () Unit!157683)

(assert (=> b!6174007 (= lt!2337702 (lemmaFlatMapOnSingletonSet!1144 lt!2337677 lt!2337688 lambda!337013))))

(declare-fun lt!2337693 () (InoxSet Context!10994))

(assert (=> b!6174007 (= lt!2337693 (derivationStepZipperUp!1287 lt!2337688 (h!70962 s!2326)))))

(assert (=> b!6174007 (= lt!2337681 (store ((as const (Array Context!10994 Bool)) false) lt!2337696 true))))

(assert (=> b!6174007 (= lt!2337696 (Context!10995 (Cons!64515 (regTwo!32739 (regOne!32738 r!7292)) (t!378143 (exprs!5997 (h!70964 zl!343))))))))

(assert (=> b!6174007 (= lt!2337677 (store ((as const (Array Context!10994 Bool)) false) lt!2337688 true))))

(declare-fun lt!2337679 () List!64639)

(assert (=> b!6174007 (= lt!2337688 (Context!10995 lt!2337679))))

(assert (=> b!6174007 (= lt!2337679 (Cons!64515 (regOne!32739 (regOne!32738 r!7292)) (t!378143 (exprs!5997 (h!70964 zl!343)))))))

(declare-fun b!6174008 () Bool)

(declare-fun e!3760841 () Bool)

(assert (=> b!6174008 (= e!3760841 e!3760850)))

(declare-fun res!2555427 () Bool)

(assert (=> b!6174008 (=> (not res!2555427) (not e!3760850))))

(declare-fun lt!2337676 () Regex!16113)

(assert (=> b!6174008 (= res!2555427 (= r!7292 lt!2337676))))

(assert (=> b!6174008 (= lt!2337676 (unfocusZipper!1855 zl!343))))

(declare-fun b!6174009 () Bool)

(declare-fun res!2555432 () Bool)

(assert (=> b!6174009 (=> res!2555432 e!3760840)))

(assert (=> b!6174009 (= res!2555432 (or (not (= lt!2337676 r!7292)) (not (= (exprs!5997 (h!70964 zl!343)) (Cons!64515 (regOne!32738 r!7292) (t!378143 (exprs!5997 (h!70964 zl!343))))))))))

(declare-fun setIsEmpty!41858 () Bool)

(declare-fun setRes!41858 () Bool)

(assert (=> setIsEmpty!41858 setRes!41858))

(declare-fun b!6174010 () Bool)

(assert (=> b!6174010 (= e!3760851 e!3760845)))

(declare-fun res!2555429 () Bool)

(assert (=> b!6174010 (=> res!2555429 e!3760845)))

(assert (=> b!6174010 (= res!2555429 (not (= lt!2337671 lt!2337686)))))

(assert (=> b!6174010 (= lt!2337686 ((_ map or) lt!2337673 lt!2337705))))

(assert (=> b!6174010 (= lt!2337705 (derivationStepZipperDown!1361 (regTwo!32739 (regOne!32738 r!7292)) lt!2337692 (h!70962 s!2326)))))

(assert (=> b!6174010 (= lt!2337673 (derivationStepZipperDown!1361 (regOne!32739 (regOne!32738 r!7292)) lt!2337692 (h!70962 s!2326)))))

(declare-fun b!6174011 () Bool)

(assert (=> b!6174011 (= e!3760844 (matchZipper!2125 lt!2337699 (t!378142 s!2326)))))

(declare-fun setElem!41858 () Context!10994)

(declare-fun setNonEmpty!41858 () Bool)

(declare-fun tp!1723752 () Bool)

(declare-fun e!3760829 () Bool)

(assert (=> setNonEmpty!41858 (= setRes!41858 (and tp!1723752 (inv!83529 setElem!41858) e!3760829))))

(declare-fun setRest!41858 () (InoxSet Context!10994))

(assert (=> setNonEmpty!41858 (= z!1189 ((_ map or) (store ((as const (Array Context!10994 Bool)) false) setElem!41858 true) setRest!41858))))

(declare-fun b!6174012 () Bool)

(assert (=> b!6174012 (= e!3760842 (not (matchZipper!2125 lt!2337705 (t!378142 s!2326))))))

(declare-fun b!6174013 () Bool)

(assert (=> b!6174013 (= e!3760832 e!3760849)))

(declare-fun res!2555418 () Bool)

(assert (=> b!6174013 (=> res!2555418 e!3760849)))

(declare-fun validRegex!7849 (Regex!16113) Bool)

(assert (=> b!6174013 (= res!2555418 (not (validRegex!7849 lt!2337700)))))

(assert (=> b!6174013 (= lt!2337700 (generalisedConcat!1710 lt!2337679))))

(declare-fun b!6174014 () Bool)

(declare-fun tp!1723753 () Bool)

(assert (=> b!6174014 (= e!3760829 tp!1723753)))

(declare-fun b!6174015 () Bool)

(declare-fun tp!1723755 () Bool)

(declare-fun tp!1723758 () Bool)

(assert (=> b!6174015 (= e!3760838 (and tp!1723755 tp!1723758))))

(declare-fun b!6174016 () Bool)

(assert (=> b!6174016 (= e!3760833 (matchZipper!2125 lt!2337705 (t!378142 s!2326)))))

(declare-fun res!2555434 () Bool)

(assert (=> start!616306 (=> (not res!2555434) (not e!3760841))))

(assert (=> start!616306 (= res!2555434 (validRegex!7849 r!7292))))

(assert (=> start!616306 e!3760841))

(assert (=> start!616306 e!3760838))

(declare-fun condSetEmpty!41858 () Bool)

(assert (=> start!616306 (= condSetEmpty!41858 (= z!1189 ((as const (Array Context!10994 Bool)) false)))))

(assert (=> start!616306 setRes!41858))

(assert (=> start!616306 e!3760835))

(assert (=> start!616306 e!3760847))

(declare-fun b!6173988 () Bool)

(declare-fun res!2555435 () Bool)

(assert (=> b!6173988 (=> (not res!2555435) (not e!3760841))))

(assert (=> b!6173988 (= res!2555435 (= (toList!9897 z!1189) zl!343))))

(assert (= (and start!616306 res!2555434) b!6173988))

(assert (= (and b!6173988 res!2555435) b!6174008))

(assert (= (and b!6174008 res!2555427) b!6173994))

(assert (= (and b!6173994 (not res!2555424)) b!6174005))

(assert (= (and b!6174005 (not res!2555428)) b!6173992))

(assert (= (and b!6173992 (not res!2555421)) b!6173985))

(assert (= (and b!6173985 (not res!2555425)) b!6173977))

(assert (= (and b!6173977 (not res!2555416)) b!6173996))

(assert (= (and b!6173996 (not res!2555412)) b!6173989))

(assert (= (and b!6173989 (not res!2555413)) b!6173995))

(assert (= (and b!6173995 (not res!2555430)) b!6174001))

(assert (= (and b!6174001 c!1112746) b!6173976))

(assert (= (and b!6174001 (not c!1112746)) b!6173991))

(assert (= (and b!6173976 (not res!2555414)) b!6174003))

(assert (= (and b!6174001 (not res!2555410)) b!6174010))

(assert (= (and b!6174010 (not res!2555429)) b!6173997))

(assert (= (and b!6173997 (not res!2555419)) b!6174016))

(assert (= (and b!6173997 res!2555420) b!6174012))

(assert (= (and b!6173997 (not res!2555417)) b!6174007))

(assert (= (and b!6174007 c!1112747) b!6173990))

(assert (= (and b!6174007 (not c!1112747)) b!6174004))

(assert (= (and b!6173990 (not res!2555433)) b!6174011))

(assert (= (and b!6174007 c!1112745) b!6174000))

(assert (= (and b!6174007 (not c!1112745)) b!6173987))

(assert (= (and b!6174000 (not res!2555423)) b!6173986))

(assert (= (and b!6174007 (not res!2555409)) b!6173980))

(assert (= (and b!6174007 (not res!2555431)) b!6174009))

(assert (= (and b!6174009 (not res!2555432)) b!6173993))

(assert (= (and b!6173993 (not res!2555411)) b!6173982))

(assert (= (and b!6173982 (not res!2555415)) b!6174013))

(assert (= (and b!6174013 (not res!2555418)) b!6173984))

(assert (= (and b!6173984 (not res!2555426)) b!6174002))

(assert (= (and b!6174002 (not res!2555422)) b!6173981))

(assert (= (and start!616306 ((_ is ElementMatch!16113) r!7292)) b!6174006))

(assert (= (and start!616306 ((_ is Concat!24958) r!7292)) b!6173983))

(assert (= (and start!616306 ((_ is Star!16113) r!7292)) b!6173998))

(assert (= (and start!616306 ((_ is Union!16113) r!7292)) b!6174015))

(assert (= (and start!616306 condSetEmpty!41858) setIsEmpty!41858))

(assert (= (and start!616306 (not condSetEmpty!41858)) setNonEmpty!41858))

(assert (= setNonEmpty!41858 b!6174014))

(assert (= b!6173999 b!6173979))

(assert (= (and start!616306 ((_ is Cons!64516) zl!343)) b!6173999))

(assert (= (and start!616306 ((_ is Cons!64514) s!2326)) b!6173978))

(declare-fun m!7010264 () Bool)

(assert (=> b!6173988 m!7010264))

(declare-fun m!7010266 () Bool)

(assert (=> b!6174002 m!7010266))

(declare-fun m!7010268 () Bool)

(assert (=> b!6173997 m!7010268))

(declare-fun m!7010270 () Bool)

(assert (=> b!6173997 m!7010270))

(declare-fun m!7010272 () Bool)

(assert (=> b!6173997 m!7010272))

(declare-fun m!7010274 () Bool)

(assert (=> b!6173997 m!7010274))

(declare-fun m!7010276 () Bool)

(assert (=> b!6173982 m!7010276))

(declare-fun m!7010278 () Bool)

(assert (=> b!6173989 m!7010278))

(declare-fun m!7010280 () Bool)

(assert (=> b!6173989 m!7010280))

(declare-fun m!7010282 () Bool)

(assert (=> b!6173989 m!7010282))

(assert (=> b!6173989 m!7010278))

(declare-fun m!7010284 () Bool)

(assert (=> b!6173989 m!7010284))

(declare-fun m!7010286 () Bool)

(assert (=> b!6173989 m!7010286))

(assert (=> b!6173989 m!7010280))

(declare-fun m!7010288 () Bool)

(assert (=> b!6173989 m!7010288))

(declare-fun m!7010290 () Bool)

(assert (=> b!6174016 m!7010290))

(declare-fun m!7010292 () Bool)

(assert (=> b!6174008 m!7010292))

(declare-fun m!7010294 () Bool)

(assert (=> b!6174003 m!7010294))

(declare-fun m!7010296 () Bool)

(assert (=> b!6173977 m!7010296))

(assert (=> b!6173977 m!7010296))

(declare-fun m!7010298 () Bool)

(assert (=> b!6173977 m!7010298))

(declare-fun m!7010300 () Bool)

(assert (=> b!6173994 m!7010300))

(declare-fun m!7010302 () Bool)

(assert (=> b!6173994 m!7010302))

(declare-fun m!7010304 () Bool)

(assert (=> b!6173994 m!7010304))

(declare-fun m!7010306 () Bool)

(assert (=> b!6173995 m!7010306))

(declare-fun m!7010308 () Bool)

(assert (=> b!6173984 m!7010308))

(assert (=> b!6174012 m!7010290))

(declare-fun m!7010310 () Bool)

(assert (=> b!6174001 m!7010310))

(declare-fun m!7010312 () Bool)

(assert (=> b!6174001 m!7010312))

(declare-fun m!7010314 () Bool)

(assert (=> b!6174001 m!7010314))

(declare-fun m!7010316 () Bool)

(assert (=> b!6174001 m!7010316))

(declare-fun m!7010318 () Bool)

(assert (=> b!6174001 m!7010318))

(declare-fun m!7010320 () Bool)

(assert (=> b!6174001 m!7010320))

(declare-fun m!7010322 () Bool)

(assert (=> b!6174001 m!7010322))

(declare-fun m!7010324 () Bool)

(assert (=> b!6173976 m!7010324))

(assert (=> b!6173976 m!7010268))

(declare-fun m!7010326 () Bool)

(assert (=> b!6173976 m!7010326))

(declare-fun m!7010328 () Bool)

(assert (=> b!6173980 m!7010328))

(declare-fun m!7010330 () Bool)

(assert (=> b!6174007 m!7010330))

(declare-fun m!7010332 () Bool)

(assert (=> b!6174007 m!7010332))

(declare-fun m!7010334 () Bool)

(assert (=> b!6174007 m!7010334))

(declare-fun m!7010336 () Bool)

(assert (=> b!6174007 m!7010336))

(declare-fun m!7010338 () Bool)

(assert (=> b!6174007 m!7010338))

(declare-fun m!7010340 () Bool)

(assert (=> b!6174007 m!7010340))

(declare-fun m!7010342 () Bool)

(assert (=> b!6174007 m!7010342))

(declare-fun m!7010344 () Bool)

(assert (=> b!6174007 m!7010344))

(declare-fun m!7010346 () Bool)

(assert (=> b!6174007 m!7010346))

(declare-fun m!7010348 () Bool)

(assert (=> b!6174007 m!7010348))

(declare-fun m!7010350 () Bool)

(assert (=> b!6174007 m!7010350))

(declare-fun m!7010352 () Bool)

(assert (=> b!6174007 m!7010352))

(declare-fun m!7010354 () Bool)

(assert (=> b!6174000 m!7010354))

(assert (=> b!6174000 m!7010290))

(declare-fun m!7010356 () Bool)

(assert (=> b!6174000 m!7010356))

(declare-fun m!7010358 () Bool)

(assert (=> b!6174013 m!7010358))

(declare-fun m!7010360 () Bool)

(assert (=> b!6174013 m!7010360))

(declare-fun m!7010362 () Bool)

(assert (=> b!6173990 m!7010362))

(declare-fun m!7010364 () Bool)

(assert (=> b!6173990 m!7010364))

(declare-fun m!7010366 () Bool)

(assert (=> b!6173999 m!7010366))

(declare-fun m!7010368 () Bool)

(assert (=> b!6174005 m!7010368))

(declare-fun m!7010370 () Bool)

(assert (=> b!6173981 m!7010370))

(declare-fun m!7010372 () Bool)

(assert (=> b!6173993 m!7010372))

(declare-fun m!7010374 () Bool)

(assert (=> b!6173993 m!7010374))

(declare-fun m!7010376 () Bool)

(assert (=> start!616306 m!7010376))

(assert (=> b!6174011 m!7010294))

(declare-fun m!7010378 () Bool)

(assert (=> setNonEmpty!41858 m!7010378))

(declare-fun m!7010380 () Bool)

(assert (=> b!6174010 m!7010380))

(declare-fun m!7010382 () Bool)

(assert (=> b!6174010 m!7010382))

(assert (=> b!6173986 m!7010294))

(declare-fun m!7010384 () Bool)

(assert (=> b!6173992 m!7010384))

(check-sat (not b!6174002) (not b!6174003) (not b!6173983) (not b!6173982) (not b!6173986) (not b!6173995) (not b!6174015) (not b!6174011) (not b!6173993) (not b!6173990) (not b!6173988) (not b!6174008) (not b!6173998) (not b!6173994) (not b!6173978) (not b!6173979) (not b!6174000) (not b!6174001) (not b!6174012) (not b!6173984) (not b!6174016) (not b!6173997) (not start!616306) (not b!6173980) (not b!6173976) (not b!6173977) (not b!6174014) (not b!6174010) (not b!6174005) tp_is_empty!41479 (not b!6173989) (not b!6174013) (not b!6173999) (not setNonEmpty!41858) (not b!6173981) (not b!6173992) (not b!6174007))
(check-sat)
