; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!660632 () Bool)

(assert start!660632)

(declare-fun b!6835986 () Bool)

(assert (=> b!6835986 true))

(assert (=> b!6835986 true))

(declare-fun lambda!386543 () Int)

(declare-fun lambda!386542 () Int)

(assert (=> b!6835986 (not (= lambda!386543 lambda!386542))))

(assert (=> b!6835986 true))

(assert (=> b!6835986 true))

(declare-fun lambda!386544 () Int)

(assert (=> b!6835986 (not (= lambda!386544 lambda!386542))))

(assert (=> b!6835986 (not (= lambda!386544 lambda!386543))))

(assert (=> b!6835986 true))

(assert (=> b!6835986 true))

(declare-fun b!6835978 () Bool)

(assert (=> b!6835978 true))

(declare-fun b!6835982 () Bool)

(assert (=> b!6835982 true))

(declare-fun b!6835975 () Bool)

(declare-fun res!2791713 () Bool)

(declare-fun e!4123296 () Bool)

(assert (=> b!6835975 (=> res!2791713 e!4123296)))

(declare-datatypes ((C!33576 0))(
  ( (C!33577 (val!26490 Int)) )
))
(declare-datatypes ((Regex!16653 0))(
  ( (ElementMatch!16653 (c!1272841 C!33576)) (Concat!25498 (regOne!33818 Regex!16653) (regTwo!33818 Regex!16653)) (EmptyExpr!16653) (Star!16653 (reg!16982 Regex!16653)) (EmptyLang!16653) (Union!16653 (regOne!33819 Regex!16653) (regTwo!33819 Regex!16653)) )
))
(declare-fun r!7292 () Regex!16653)

(declare-datatypes ((List!66258 0))(
  ( (Nil!66134) (Cons!66134 (h!72582 Regex!16653) (t!380001 List!66258)) )
))
(declare-datatypes ((Context!12074 0))(
  ( (Context!12075 (exprs!6537 List!66258)) )
))
(declare-datatypes ((List!66259 0))(
  ( (Nil!66135) (Cons!66135 (h!72583 Context!12074) (t!380002 List!66259)) )
))
(declare-fun zl!343 () List!66259)

(declare-fun generalisedConcat!2250 (List!66258) Regex!16653)

(assert (=> b!6835975 (= res!2791713 (not (= r!7292 (generalisedConcat!2250 (exprs!6537 (h!72583 zl!343))))))))

(declare-fun b!6835976 () Bool)

(declare-fun res!2791705 () Bool)

(declare-fun e!4123283 () Bool)

(assert (=> b!6835976 (=> (not res!2791705) (not e!4123283))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12074))

(declare-fun toList!10437 ((InoxSet Context!12074)) List!66259)

(assert (=> b!6835976 (= res!2791705 (= (toList!10437 z!1189) zl!343))))

(declare-fun b!6835977 () Bool)

(declare-fun res!2791708 () Bool)

(assert (=> b!6835977 (=> res!2791708 e!4123296)))

(declare-fun isEmpty!38521 (List!66259) Bool)

(assert (=> b!6835977 (= res!2791708 (not (isEmpty!38521 (t!380002 zl!343))))))

(declare-fun e!4123286 () Bool)

(declare-fun e!4123297 () Bool)

(assert (=> b!6835978 (= e!4123286 e!4123297)))

(declare-fun res!2791707 () Bool)

(assert (=> b!6835978 (=> res!2791707 e!4123297)))

(declare-fun lt!2454863 () (InoxSet Context!12074))

(declare-fun lt!2454840 () (InoxSet Context!12074))

(assert (=> b!6835978 (= res!2791707 (not (= lt!2454863 lt!2454840)))))

(declare-datatypes ((List!66260 0))(
  ( (Nil!66136) (Cons!66136 (h!72584 C!33576) (t!380003 List!66260)) )
))
(declare-fun s!2326 () List!66260)

(declare-fun lambda!386545 () Int)

(declare-fun flatMap!2134 ((InoxSet Context!12074) Int) (InoxSet Context!12074))

(declare-fun derivationStepZipperUp!1807 (Context!12074 C!33576) (InoxSet Context!12074))

(assert (=> b!6835978 (= (flatMap!2134 z!1189 lambda!386545) (derivationStepZipperUp!1807 (h!72583 zl!343) (h!72584 s!2326)))))

(declare-datatypes ((Unit!160003 0))(
  ( (Unit!160004) )
))
(declare-fun lt!2454872 () Unit!160003)

(declare-fun lemmaFlatMapOnSingletonSet!1660 ((InoxSet Context!12074) Context!12074 Int) Unit!160003)

(assert (=> b!6835978 (= lt!2454872 (lemmaFlatMapOnSingletonSet!1660 z!1189 (h!72583 zl!343) lambda!386545))))

(declare-fun b!6835979 () Bool)

(declare-fun e!4123282 () Bool)

(assert (=> b!6835979 (= e!4123282 e!4123286)))

(declare-fun res!2791696 () Bool)

(assert (=> b!6835979 (=> res!2791696 e!4123286)))

(declare-fun lt!2454866 () (InoxSet Context!12074))

(assert (=> b!6835979 (= res!2791696 (not (= lt!2454866 lt!2454840)))))

(declare-fun derivationStepZipperDown!1881 (Regex!16653 Context!12074 C!33576) (InoxSet Context!12074))

(assert (=> b!6835979 (= lt!2454840 (derivationStepZipperDown!1881 r!7292 (Context!12075 Nil!66134) (h!72584 s!2326)))))

(assert (=> b!6835979 (= lt!2454866 (derivationStepZipperUp!1807 (Context!12075 (Cons!66134 r!7292 Nil!66134)) (h!72584 s!2326)))))

(declare-fun derivationStepZipper!2597 ((InoxSet Context!12074) C!33576) (InoxSet Context!12074))

(assert (=> b!6835979 (= lt!2454863 (derivationStepZipper!2597 z!1189 (h!72584 s!2326)))))

(declare-fun b!6835980 () Bool)

(declare-fun e!4123291 () Bool)

(declare-fun e!4123298 () Bool)

(assert (=> b!6835980 (= e!4123291 e!4123298)))

(declare-fun res!2791692 () Bool)

(assert (=> b!6835980 (=> res!2791692 e!4123298)))

(declare-fun lt!2454858 () (InoxSet Context!12074))

(assert (=> b!6835980 (= res!2791692 (not (= lt!2454863 (derivationStepZipper!2597 lt!2454858 (h!72584 s!2326)))))))

(declare-fun lt!2454856 () Context!12074)

(assert (=> b!6835980 (= (flatMap!2134 lt!2454858 lambda!386545) (derivationStepZipperUp!1807 lt!2454856 (h!72584 s!2326)))))

(declare-fun lt!2454845 () Unit!160003)

(assert (=> b!6835980 (= lt!2454845 (lemmaFlatMapOnSingletonSet!1660 lt!2454858 lt!2454856 lambda!386545))))

(declare-fun lt!2454839 () (InoxSet Context!12074))

(declare-fun lt!2454859 () Context!12074)

(assert (=> b!6835980 (= (flatMap!2134 lt!2454839 lambda!386545) (derivationStepZipperUp!1807 lt!2454859 (h!72584 s!2326)))))

(declare-fun lt!2454864 () Unit!160003)

(assert (=> b!6835980 (= lt!2454864 (lemmaFlatMapOnSingletonSet!1660 lt!2454839 lt!2454859 lambda!386545))))

(declare-fun lt!2454852 () (InoxSet Context!12074))

(assert (=> b!6835980 (= lt!2454852 (derivationStepZipperUp!1807 lt!2454856 (h!72584 s!2326)))))

(declare-fun lt!2454869 () (InoxSet Context!12074))

(assert (=> b!6835980 (= lt!2454869 (derivationStepZipperUp!1807 lt!2454859 (h!72584 s!2326)))))

(assert (=> b!6835980 (= lt!2454858 (store ((as const (Array Context!12074 Bool)) false) lt!2454856 true))))

(assert (=> b!6835980 (= lt!2454839 (store ((as const (Array Context!12074 Bool)) false) lt!2454859 true))))

(declare-fun lt!2454838 () List!66258)

(assert (=> b!6835980 (= lt!2454859 (Context!12075 lt!2454838))))

(assert (=> b!6835980 (= lt!2454838 (Cons!66134 (reg!16982 r!7292) Nil!66134))))

(declare-fun b!6835981 () Bool)

(declare-fun e!4123294 () Unit!160003)

(declare-fun Unit!160005 () Unit!160003)

(assert (=> b!6835981 (= e!4123294 Unit!160005)))

(declare-fun Unit!160006 () Unit!160003)

(assert (=> b!6835982 (= e!4123294 Unit!160006)))

(declare-fun lt!2454833 () Unit!160003)

(declare-fun lambda!386546 () Int)

(declare-fun lemmaMapOnSingletonSet!288 ((InoxSet Context!12074) Context!12074 Int) Unit!160003)

(assert (=> b!6835982 (= lt!2454833 (lemmaMapOnSingletonSet!288 lt!2454839 lt!2454859 lambda!386546))))

(declare-fun lt!2454846 () Unit!160003)

(declare-fun lambda!386547 () Int)

(declare-fun lt!2454836 () List!66258)

(declare-fun lemmaConcatPreservesForall!482 (List!66258 List!66258 Int) Unit!160003)

(assert (=> b!6835982 (= lt!2454846 (lemmaConcatPreservesForall!482 lt!2454838 lt!2454836 lambda!386547))))

(declare-fun map!15140 ((InoxSet Context!12074) Int) (InoxSet Context!12074))

(declare-fun ++!14852 (List!66258 List!66258) List!66258)

(assert (=> b!6835982 (= (map!15140 lt!2454839 lambda!386546) (store ((as const (Array Context!12074 Bool)) false) (Context!12075 (++!14852 lt!2454838 lt!2454836)) true))))

(declare-fun lt!2454870 () Unit!160003)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!262 ((InoxSet Context!12074) Context!12074 List!66260) Unit!160003)

(assert (=> b!6835982 (= lt!2454870 (lemmaConcatZipperMatchesStringThenFindConcatDefined!262 lt!2454839 lt!2454856 s!2326))))

(declare-datatypes ((tuple2!67256 0))(
  ( (tuple2!67257 (_1!36931 List!66260) (_2!36931 List!66260)) )
))
(declare-datatypes ((Option!16540 0))(
  ( (None!16539) (Some!16539 (v!52751 tuple2!67256)) )
))
(declare-fun lt!2454841 () Option!16540)

(declare-fun findConcatSeparationZippers!262 ((InoxSet Context!12074) (InoxSet Context!12074) List!66260 List!66260 List!66260) Option!16540)

(assert (=> b!6835982 (= lt!2454841 (findConcatSeparationZippers!262 lt!2454839 lt!2454858 Nil!66136 s!2326 s!2326))))

(declare-fun isDefined!13243 (Option!16540) Bool)

(assert (=> b!6835982 (isDefined!13243 lt!2454841)))

(declare-fun lt!2454843 () tuple2!67256)

(declare-fun get!23049 (Option!16540) tuple2!67256)

(assert (=> b!6835982 (= lt!2454843 (get!23049 lt!2454841))))

(declare-fun lt!2454842 () Unit!160003)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!276 (Context!12074 Context!12074 List!66260 List!66260) Unit!160003)

(assert (=> b!6835982 (= lt!2454842 (lemmaConcatenateContextMatchesConcatOfStrings!276 lt!2454859 lt!2454856 (_1!36931 lt!2454843) (_2!36931 lt!2454843)))))

(declare-fun lt!2454868 () Unit!160003)

(assert (=> b!6835982 (= lt!2454868 (lemmaConcatPreservesForall!482 lt!2454838 lt!2454836 lambda!386547))))

(declare-fun lt!2454867 () List!66258)

(assert (=> b!6835982 (= lt!2454867 (++!14852 lt!2454838 lt!2454836))))

(declare-fun lt!2454855 () List!66260)

(declare-fun ++!14853 (List!66260 List!66260) List!66260)

(assert (=> b!6835982 (= lt!2454855 (++!14853 (_1!36931 lt!2454843) (_2!36931 lt!2454843)))))

(declare-fun matchZipper!2639 ((InoxSet Context!12074) List!66260) Bool)

(assert (=> b!6835982 (matchZipper!2639 (store ((as const (Array Context!12074 Bool)) false) (Context!12075 lt!2454867) true) lt!2454855)))

(declare-fun lt!2454860 () Unit!160003)

(declare-fun lt!2454854 () List!66259)

(declare-fun theoremZipperRegexEquiv!955 ((InoxSet Context!12074) List!66259 Regex!16653 List!66260) Unit!160003)

(assert (=> b!6835982 (= lt!2454860 (theoremZipperRegexEquiv!955 lt!2454839 lt!2454854 (reg!16982 r!7292) (_1!36931 lt!2454843)))))

(declare-fun matchR!8836 (Regex!16653 List!66260) Bool)

(assert (=> b!6835982 (= (matchR!8836 (reg!16982 r!7292) (_1!36931 lt!2454843)) (matchZipper!2639 lt!2454839 (_1!36931 lt!2454843)))))

(declare-fun lt!2454837 () Unit!160003)

(declare-fun lt!2454847 () List!66259)

(assert (=> b!6835982 (= lt!2454837 (theoremZipperRegexEquiv!955 lt!2454858 lt!2454847 r!7292 (_2!36931 lt!2454843)))))

(assert (=> b!6835982 (= (matchR!8836 r!7292 (_2!36931 lt!2454843)) (matchZipper!2639 lt!2454858 (_2!36931 lt!2454843)))))

(declare-fun lt!2454861 () Unit!160003)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!392 (Regex!16653 Regex!16653 List!66260 List!66260) Unit!160003)

(assert (=> b!6835982 (= lt!2454861 (lemmaTwoRegexMatchThenConcatMatchesConcatString!392 (reg!16982 r!7292) r!7292 (_1!36931 lt!2454843) (_2!36931 lt!2454843)))))

(declare-fun res!2791714 () Bool)

(declare-fun lt!2454844 () Regex!16653)

(assert (=> b!6835982 (= res!2791714 (matchR!8836 lt!2454844 lt!2454855))))

(declare-fun e!4123290 () Bool)

(assert (=> b!6835982 (=> (not res!2791714) (not e!4123290))))

(assert (=> b!6835982 e!4123290))

(declare-fun setIsEmpty!46957 () Bool)

(declare-fun setRes!46957 () Bool)

(assert (=> setIsEmpty!46957 setRes!46957))

(declare-fun b!6835983 () Bool)

(declare-fun res!2791702 () Bool)

(assert (=> b!6835983 (=> res!2791702 e!4123296)))

(get-info :version)

(assert (=> b!6835983 (= res!2791702 (not ((_ is Cons!66134) (exprs!6537 (h!72583 zl!343)))))))

(declare-fun b!6835984 () Bool)

(declare-fun e!4123292 () Bool)

(declare-fun e!4123279 () Bool)

(assert (=> b!6835984 (= e!4123292 e!4123279)))

(declare-fun res!2791697 () Bool)

(assert (=> b!6835984 (=> res!2791697 e!4123279)))

(declare-fun lt!2454831 () Bool)

(assert (=> b!6835984 (= res!2791697 lt!2454831)))

(declare-fun matchRSpec!3754 (Regex!16653 List!66260) Bool)

(assert (=> b!6835984 (= lt!2454831 (matchRSpec!3754 lt!2454844 s!2326))))

(assert (=> b!6835984 (= lt!2454831 (matchR!8836 lt!2454844 s!2326))))

(declare-fun lt!2454874 () Unit!160003)

(declare-fun mainMatchTheorem!3754 (Regex!16653 List!66260) Unit!160003)

(assert (=> b!6835984 (= lt!2454874 (mainMatchTheorem!3754 lt!2454844 s!2326))))

(declare-fun b!6835985 () Bool)

(declare-fun e!4123285 () Bool)

(assert (=> b!6835985 (= e!4123283 e!4123285)))

(declare-fun res!2791698 () Bool)

(assert (=> b!6835985 (=> (not res!2791698) (not e!4123285))))

(declare-fun lt!2454865 () Regex!16653)

(assert (=> b!6835985 (= res!2791698 (= r!7292 lt!2454865))))

(declare-fun unfocusZipper!2395 (List!66259) Regex!16653)

(assert (=> b!6835985 (= lt!2454865 (unfocusZipper!2395 zl!343))))

(assert (=> b!6835986 (= e!4123296 e!4123282)))

(declare-fun res!2791695 () Bool)

(assert (=> b!6835986 (=> res!2791695 e!4123282)))

(declare-fun lt!2454832 () Bool)

(declare-fun e!4123288 () Bool)

(assert (=> b!6835986 (= res!2791695 (not (= lt!2454832 e!4123288)))))

(declare-fun res!2791709 () Bool)

(assert (=> b!6835986 (=> res!2791709 e!4123288)))

(declare-fun isEmpty!38522 (List!66260) Bool)

(assert (=> b!6835986 (= res!2791709 (isEmpty!38522 s!2326))))

(declare-fun Exists!3721 (Int) Bool)

(assert (=> b!6835986 (= (Exists!3721 lambda!386542) (Exists!3721 lambda!386544))))

(declare-fun lt!2454873 () Unit!160003)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2248 (Regex!16653 Regex!16653 List!66260) Unit!160003)

(assert (=> b!6835986 (= lt!2454873 (lemmaExistCutMatchRandMatchRSpecEquivalent!2248 (reg!16982 r!7292) r!7292 s!2326))))

(assert (=> b!6835986 (= (Exists!3721 lambda!386542) (Exists!3721 lambda!386543))))

(declare-fun lt!2454857 () Unit!160003)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!812 (Regex!16653 List!66260) Unit!160003)

(assert (=> b!6835986 (= lt!2454857 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!812 (reg!16982 r!7292) s!2326))))

(declare-fun lt!2454835 () Bool)

(assert (=> b!6835986 (= lt!2454835 (Exists!3721 lambda!386542))))

(declare-fun findConcatSeparation!2954 (Regex!16653 Regex!16653 List!66260 List!66260 List!66260) Option!16540)

(assert (=> b!6835986 (= lt!2454835 (isDefined!13243 (findConcatSeparation!2954 (reg!16982 r!7292) r!7292 Nil!66136 s!2326 s!2326)))))

(declare-fun lt!2454851 () Unit!160003)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2718 (Regex!16653 Regex!16653 List!66260) Unit!160003)

(assert (=> b!6835986 (= lt!2454851 (lemmaFindConcatSeparationEquivalentToExists!2718 (reg!16982 r!7292) r!7292 s!2326))))

(declare-fun b!6835987 () Bool)

(assert (=> b!6835987 (= e!4123285 (not e!4123296))))

(declare-fun res!2791694 () Bool)

(assert (=> b!6835987 (=> res!2791694 e!4123296)))

(assert (=> b!6835987 (= res!2791694 (not ((_ is Cons!66135) zl!343)))))

(assert (=> b!6835987 (= lt!2454832 (matchRSpec!3754 r!7292 s!2326))))

(assert (=> b!6835987 (= lt!2454832 (matchR!8836 r!7292 s!2326))))

(declare-fun lt!2454849 () Unit!160003)

(assert (=> b!6835987 (= lt!2454849 (mainMatchTheorem!3754 r!7292 s!2326))))

(declare-fun b!6835988 () Bool)

(declare-fun res!2791703 () Bool)

(declare-fun e!4123287 () Bool)

(assert (=> b!6835988 (=> res!2791703 e!4123287)))

(assert (=> b!6835988 (= res!2791703 (or (not (= lt!2454865 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6835989 () Bool)

(assert (=> b!6835989 (= e!4123287 e!4123291)))

(declare-fun res!2791700 () Bool)

(assert (=> b!6835989 (=> res!2791700 e!4123291)))

(declare-fun lt!2454848 () Context!12074)

(assert (=> b!6835989 (= res!2791700 (not (= (unfocusZipper!2395 (Cons!66135 lt!2454848 Nil!66135)) lt!2454844)))))

(assert (=> b!6835989 (= lt!2454844 (Concat!25498 (reg!16982 r!7292) r!7292))))

(declare-fun b!6835990 () Bool)

(declare-fun e!4123281 () Bool)

(declare-fun tp_is_empty!42559 () Bool)

(declare-fun tp!1870795 () Bool)

(assert (=> b!6835990 (= e!4123281 (and tp_is_empty!42559 tp!1870795))))

(declare-fun b!6835991 () Bool)

(declare-fun e!4123295 () Bool)

(declare-fun tp!1870803 () Bool)

(assert (=> b!6835991 (= e!4123295 tp!1870803)))

(declare-fun b!6835992 () Bool)

(declare-fun res!2791710 () Bool)

(assert (=> b!6835992 (=> res!2791710 e!4123296)))

(assert (=> b!6835992 (= res!2791710 (or ((_ is EmptyExpr!16653) r!7292) ((_ is EmptyLang!16653) r!7292) ((_ is ElementMatch!16653) r!7292) ((_ is Union!16653) r!7292) ((_ is Concat!25498) r!7292)))))

(declare-fun b!6835993 () Bool)

(declare-fun res!2791699 () Bool)

(assert (=> b!6835993 (=> res!2791699 e!4123296)))

(declare-fun generalisedUnion!2497 (List!66258) Regex!16653)

(declare-fun unfocusZipperList!2074 (List!66259) List!66258)

(assert (=> b!6835993 (= res!2791699 (not (= r!7292 (generalisedUnion!2497 (unfocusZipperList!2074 zl!343)))))))

(declare-fun b!6835994 () Bool)

(declare-fun lt!2454853 () Bool)

(assert (=> b!6835994 (= e!4123279 (or lt!2454853 (not lt!2454832)))))

(declare-fun lt!2454871 () Unit!160003)

(assert (=> b!6835994 (= lt!2454871 e!4123294)))

(declare-fun c!1272840 () Bool)

(assert (=> b!6835994 (= c!1272840 lt!2454853)))

(assert (=> b!6835994 (= lt!2454853 (matchZipper!2639 z!1189 s!2326))))

(declare-fun b!6835995 () Bool)

(declare-fun e!4123289 () Bool)

(assert (=> b!6835995 (= e!4123289 tp_is_empty!42559)))

(declare-fun b!6835996 () Bool)

(declare-fun e!4123284 () Bool)

(assert (=> b!6835996 (= e!4123298 e!4123284)))

(declare-fun res!2791704 () Bool)

(assert (=> b!6835996 (=> res!2791704 e!4123284)))

(assert (=> b!6835996 (= res!2791704 (not (= (unfocusZipper!2395 lt!2454854) (reg!16982 r!7292))))))

(assert (=> b!6835996 (= lt!2454854 (Cons!66135 lt!2454859 Nil!66135))))

(declare-fun tp!1870802 () Bool)

(declare-fun e!4123280 () Bool)

(declare-fun setNonEmpty!46957 () Bool)

(declare-fun setElem!46957 () Context!12074)

(declare-fun inv!84879 (Context!12074) Bool)

(assert (=> setNonEmpty!46957 (= setRes!46957 (and tp!1870802 (inv!84879 setElem!46957) e!4123280))))

(declare-fun setRest!46957 () (InoxSet Context!12074))

(assert (=> setNonEmpty!46957 (= z!1189 ((_ map or) (store ((as const (Array Context!12074 Bool)) false) setElem!46957 true) setRest!46957))))

(declare-fun b!6835997 () Bool)

(declare-fun tp!1870794 () Bool)

(assert (=> b!6835997 (= e!4123289 tp!1870794)))

(declare-fun res!2791706 () Bool)

(assert (=> start!660632 (=> (not res!2791706) (not e!4123283))))

(declare-fun validRegex!8389 (Regex!16653) Bool)

(assert (=> start!660632 (= res!2791706 (validRegex!8389 r!7292))))

(assert (=> start!660632 e!4123283))

(assert (=> start!660632 e!4123289))

(declare-fun condSetEmpty!46957 () Bool)

(assert (=> start!660632 (= condSetEmpty!46957 (= z!1189 ((as const (Array Context!12074 Bool)) false)))))

(assert (=> start!660632 setRes!46957))

(declare-fun e!4123293 () Bool)

(assert (=> start!660632 e!4123293))

(assert (=> start!660632 e!4123281))

(declare-fun b!6835998 () Bool)

(declare-fun res!2791701 () Bool)

(assert (=> b!6835998 (=> res!2791701 e!4123282)))

(assert (=> b!6835998 (= res!2791701 ((_ is Nil!66136) s!2326))))

(declare-fun b!6835999 () Bool)

(assert (=> b!6835999 (= e!4123297 e!4123287)))

(declare-fun res!2791693 () Bool)

(assert (=> b!6835999 (=> res!2791693 e!4123287)))

(assert (=> b!6835999 (= res!2791693 (not (= lt!2454863 (derivationStepZipperDown!1881 (reg!16982 r!7292) lt!2454856 (h!72584 s!2326)))))))

(assert (=> b!6835999 (= lt!2454856 (Context!12075 lt!2454836))))

(declare-fun lt!2454862 () (InoxSet Context!12074))

(assert (=> b!6835999 (= (flatMap!2134 lt!2454862 lambda!386545) (derivationStepZipperUp!1807 lt!2454848 (h!72584 s!2326)))))

(declare-fun lt!2454850 () Unit!160003)

(assert (=> b!6835999 (= lt!2454850 (lemmaFlatMapOnSingletonSet!1660 lt!2454862 lt!2454848 lambda!386545))))

(declare-fun lt!2454834 () (InoxSet Context!12074))

(assert (=> b!6835999 (= lt!2454834 (derivationStepZipperUp!1807 lt!2454848 (h!72584 s!2326)))))

(assert (=> b!6835999 (= lt!2454862 (store ((as const (Array Context!12074 Bool)) false) lt!2454848 true))))

(assert (=> b!6835999 (= lt!2454848 (Context!12075 (Cons!66134 (reg!16982 r!7292) lt!2454836)))))

(assert (=> b!6835999 (= lt!2454836 (Cons!66134 r!7292 Nil!66134))))

(declare-fun b!6836000 () Bool)

(declare-fun tp!1870796 () Bool)

(assert (=> b!6836000 (= e!4123280 tp!1870796)))

(declare-fun b!6836001 () Bool)

(declare-fun res!2791711 () Bool)

(assert (=> b!6836001 (=> res!2791711 e!4123287)))

(assert (=> b!6836001 (= res!2791711 (not (= (matchZipper!2639 lt!2454862 s!2326) (matchZipper!2639 (derivationStepZipper!2597 lt!2454862 (h!72584 s!2326)) (t!380003 s!2326)))))))

(declare-fun b!6836002 () Bool)

(assert (=> b!6836002 (= e!4123284 e!4123292)))

(declare-fun res!2791712 () Bool)

(assert (=> b!6836002 (=> res!2791712 e!4123292)))

(assert (=> b!6836002 (= res!2791712 (not (= (unfocusZipper!2395 lt!2454847) r!7292)))))

(assert (=> b!6836002 (= lt!2454847 (Cons!66135 lt!2454856 Nil!66135))))

(declare-fun b!6836003 () Bool)

(assert (=> b!6836003 (= e!4123288 lt!2454835)))

(declare-fun b!6836004 () Bool)

(assert (=> b!6836004 (= e!4123290 false)))

(declare-fun tp!1870799 () Bool)

(declare-fun b!6836005 () Bool)

(assert (=> b!6836005 (= e!4123293 (and (inv!84879 (h!72583 zl!343)) e!4123295 tp!1870799))))

(declare-fun b!6836006 () Bool)

(declare-fun tp!1870798 () Bool)

(declare-fun tp!1870801 () Bool)

(assert (=> b!6836006 (= e!4123289 (and tp!1870798 tp!1870801))))

(declare-fun b!6836007 () Bool)

(declare-fun tp!1870797 () Bool)

(declare-fun tp!1870800 () Bool)

(assert (=> b!6836007 (= e!4123289 (and tp!1870797 tp!1870800))))

(assert (= (and start!660632 res!2791706) b!6835976))

(assert (= (and b!6835976 res!2791705) b!6835985))

(assert (= (and b!6835985 res!2791698) b!6835987))

(assert (= (and b!6835987 (not res!2791694)) b!6835977))

(assert (= (and b!6835977 (not res!2791708)) b!6835975))

(assert (= (and b!6835975 (not res!2791713)) b!6835983))

(assert (= (and b!6835983 (not res!2791702)) b!6835993))

(assert (= (and b!6835993 (not res!2791699)) b!6835992))

(assert (= (and b!6835992 (not res!2791710)) b!6835986))

(assert (= (and b!6835986 (not res!2791709)) b!6836003))

(assert (= (and b!6835986 (not res!2791695)) b!6835998))

(assert (= (and b!6835998 (not res!2791701)) b!6835979))

(assert (= (and b!6835979 (not res!2791696)) b!6835978))

(assert (= (and b!6835978 (not res!2791707)) b!6835999))

(assert (= (and b!6835999 (not res!2791693)) b!6836001))

(assert (= (and b!6836001 (not res!2791711)) b!6835988))

(assert (= (and b!6835988 (not res!2791703)) b!6835989))

(assert (= (and b!6835989 (not res!2791700)) b!6835980))

(assert (= (and b!6835980 (not res!2791692)) b!6835996))

(assert (= (and b!6835996 (not res!2791704)) b!6836002))

(assert (= (and b!6836002 (not res!2791712)) b!6835984))

(assert (= (and b!6835984 (not res!2791697)) b!6835994))

(assert (= (and b!6835994 c!1272840) b!6835982))

(assert (= (and b!6835994 (not c!1272840)) b!6835981))

(assert (= (and b!6835982 res!2791714) b!6836004))

(assert (= (and start!660632 ((_ is ElementMatch!16653) r!7292)) b!6835995))

(assert (= (and start!660632 ((_ is Concat!25498) r!7292)) b!6836007))

(assert (= (and start!660632 ((_ is Star!16653) r!7292)) b!6835997))

(assert (= (and start!660632 ((_ is Union!16653) r!7292)) b!6836006))

(assert (= (and start!660632 condSetEmpty!46957) setIsEmpty!46957))

(assert (= (and start!660632 (not condSetEmpty!46957)) setNonEmpty!46957))

(assert (= setNonEmpty!46957 b!6836000))

(assert (= b!6836005 b!6835991))

(assert (= (and start!660632 ((_ is Cons!66135) zl!343)) b!6836005))

(assert (= (and start!660632 ((_ is Cons!66136) s!2326)) b!6835990))

(declare-fun m!7581396 () Bool)

(assert (=> b!6835993 m!7581396))

(assert (=> b!6835993 m!7581396))

(declare-fun m!7581398 () Bool)

(assert (=> b!6835993 m!7581398))

(declare-fun m!7581400 () Bool)

(assert (=> b!6836005 m!7581400))

(declare-fun m!7581402 () Bool)

(assert (=> b!6835979 m!7581402))

(declare-fun m!7581404 () Bool)

(assert (=> b!6835979 m!7581404))

(declare-fun m!7581406 () Bool)

(assert (=> b!6835979 m!7581406))

(declare-fun m!7581408 () Bool)

(assert (=> b!6835982 m!7581408))

(declare-fun m!7581410 () Bool)

(assert (=> b!6835982 m!7581410))

(declare-fun m!7581412 () Bool)

(assert (=> b!6835982 m!7581412))

(declare-fun m!7581414 () Bool)

(assert (=> b!6835982 m!7581414))

(declare-fun m!7581416 () Bool)

(assert (=> b!6835982 m!7581416))

(declare-fun m!7581418 () Bool)

(assert (=> b!6835982 m!7581418))

(declare-fun m!7581420 () Bool)

(assert (=> b!6835982 m!7581420))

(declare-fun m!7581422 () Bool)

(assert (=> b!6835982 m!7581422))

(declare-fun m!7581424 () Bool)

(assert (=> b!6835982 m!7581424))

(declare-fun m!7581426 () Bool)

(assert (=> b!6835982 m!7581426))

(declare-fun m!7581428 () Bool)

(assert (=> b!6835982 m!7581428))

(declare-fun m!7581430 () Bool)

(assert (=> b!6835982 m!7581430))

(declare-fun m!7581432 () Bool)

(assert (=> b!6835982 m!7581432))

(declare-fun m!7581434 () Bool)

(assert (=> b!6835982 m!7581434))

(declare-fun m!7581436 () Bool)

(assert (=> b!6835982 m!7581436))

(declare-fun m!7581438 () Bool)

(assert (=> b!6835982 m!7581438))

(assert (=> b!6835982 m!7581436))

(assert (=> b!6835982 m!7581414))

(declare-fun m!7581440 () Bool)

(assert (=> b!6835982 m!7581440))

(declare-fun m!7581442 () Bool)

(assert (=> b!6835982 m!7581442))

(declare-fun m!7581444 () Bool)

(assert (=> b!6835982 m!7581444))

(declare-fun m!7581446 () Bool)

(assert (=> b!6835982 m!7581446))

(declare-fun m!7581448 () Bool)

(assert (=> b!6835982 m!7581448))

(declare-fun m!7581450 () Bool)

(assert (=> b!6836001 m!7581450))

(declare-fun m!7581452 () Bool)

(assert (=> b!6836001 m!7581452))

(assert (=> b!6836001 m!7581452))

(declare-fun m!7581454 () Bool)

(assert (=> b!6836001 m!7581454))

(declare-fun m!7581456 () Bool)

(assert (=> b!6835977 m!7581456))

(declare-fun m!7581458 () Bool)

(assert (=> setNonEmpty!46957 m!7581458))

(declare-fun m!7581460 () Bool)

(assert (=> b!6835975 m!7581460))

(declare-fun m!7581462 () Bool)

(assert (=> b!6835978 m!7581462))

(declare-fun m!7581464 () Bool)

(assert (=> b!6835978 m!7581464))

(declare-fun m!7581466 () Bool)

(assert (=> b!6835978 m!7581466))

(declare-fun m!7581468 () Bool)

(assert (=> b!6835989 m!7581468))

(declare-fun m!7581470 () Bool)

(assert (=> b!6836002 m!7581470))

(declare-fun m!7581472 () Bool)

(assert (=> b!6835996 m!7581472))

(declare-fun m!7581474 () Bool)

(assert (=> b!6835984 m!7581474))

(declare-fun m!7581476 () Bool)

(assert (=> b!6835984 m!7581476))

(declare-fun m!7581478 () Bool)

(assert (=> b!6835984 m!7581478))

(declare-fun m!7581480 () Bool)

(assert (=> start!660632 m!7581480))

(declare-fun m!7581482 () Bool)

(assert (=> b!6835985 m!7581482))

(declare-fun m!7581484 () Bool)

(assert (=> b!6835994 m!7581484))

(declare-fun m!7581486 () Bool)

(assert (=> b!6835999 m!7581486))

(declare-fun m!7581488 () Bool)

(assert (=> b!6835999 m!7581488))

(declare-fun m!7581490 () Bool)

(assert (=> b!6835999 m!7581490))

(declare-fun m!7581492 () Bool)

(assert (=> b!6835999 m!7581492))

(declare-fun m!7581494 () Bool)

(assert (=> b!6835999 m!7581494))

(declare-fun m!7581496 () Bool)

(assert (=> b!6835987 m!7581496))

(declare-fun m!7581498 () Bool)

(assert (=> b!6835987 m!7581498))

(declare-fun m!7581500 () Bool)

(assert (=> b!6835987 m!7581500))

(declare-fun m!7581502 () Bool)

(assert (=> b!6835986 m!7581502))

(declare-fun m!7581504 () Bool)

(assert (=> b!6835986 m!7581504))

(declare-fun m!7581506 () Bool)

(assert (=> b!6835986 m!7581506))

(declare-fun m!7581508 () Bool)

(assert (=> b!6835986 m!7581508))

(assert (=> b!6835986 m!7581508))

(declare-fun m!7581510 () Bool)

(assert (=> b!6835986 m!7581510))

(declare-fun m!7581512 () Bool)

(assert (=> b!6835986 m!7581512))

(declare-fun m!7581514 () Bool)

(assert (=> b!6835986 m!7581514))

(assert (=> b!6835986 m!7581508))

(declare-fun m!7581516 () Bool)

(assert (=> b!6835986 m!7581516))

(assert (=> b!6835986 m!7581510))

(declare-fun m!7581518 () Bool)

(assert (=> b!6835986 m!7581518))

(declare-fun m!7581520 () Bool)

(assert (=> b!6835980 m!7581520))

(declare-fun m!7581522 () Bool)

(assert (=> b!6835980 m!7581522))

(declare-fun m!7581524 () Bool)

(assert (=> b!6835980 m!7581524))

(declare-fun m!7581526 () Bool)

(assert (=> b!6835980 m!7581526))

(declare-fun m!7581528 () Bool)

(assert (=> b!6835980 m!7581528))

(declare-fun m!7581530 () Bool)

(assert (=> b!6835980 m!7581530))

(declare-fun m!7581532 () Bool)

(assert (=> b!6835980 m!7581532))

(declare-fun m!7581534 () Bool)

(assert (=> b!6835980 m!7581534))

(declare-fun m!7581536 () Bool)

(assert (=> b!6835980 m!7581536))

(declare-fun m!7581538 () Bool)

(assert (=> b!6835976 m!7581538))

(check-sat (not b!6835976) (not b!6835991) (not b!6835987) (not b!6836002) (not b!6835990) (not b!6835989) (not b!6835978) (not b!6836006) (not b!6835993) (not b!6836001) (not b!6835980) (not b!6835986) (not b!6836000) (not b!6836005) (not start!660632) (not b!6835975) tp_is_empty!42559 (not b!6835996) (not b!6835984) (not b!6835999) (not b!6835979) (not b!6835994) (not b!6835997) (not b!6835982) (not setNonEmpty!46957) (not b!6835985) (not b!6836007) (not b!6835977))
(check-sat)
(get-model)

(declare-fun d!2150178 () Bool)

(declare-fun choose!50974 ((InoxSet Context!12074) Int) (InoxSet Context!12074))

(assert (=> d!2150178 (= (flatMap!2134 z!1189 lambda!386545) (choose!50974 z!1189 lambda!386545))))

(declare-fun bs!1828485 () Bool)

(assert (= bs!1828485 d!2150178))

(declare-fun m!7581664 () Bool)

(assert (=> bs!1828485 m!7581664))

(assert (=> b!6835978 d!2150178))

(declare-fun e!4123356 () (InoxSet Context!12074))

(declare-fun call!622602 () (InoxSet Context!12074))

(declare-fun b!6836119 () Bool)

(assert (=> b!6836119 (= e!4123356 ((_ map or) call!622602 (derivationStepZipperUp!1807 (Context!12075 (t!380001 (exprs!6537 (h!72583 zl!343)))) (h!72584 s!2326))))))

(declare-fun d!2150180 () Bool)

(declare-fun c!1272874 () Bool)

(declare-fun e!4123358 () Bool)

(assert (=> d!2150180 (= c!1272874 e!4123358)))

(declare-fun res!2791760 () Bool)

(assert (=> d!2150180 (=> (not res!2791760) (not e!4123358))))

(assert (=> d!2150180 (= res!2791760 ((_ is Cons!66134) (exprs!6537 (h!72583 zl!343))))))

(assert (=> d!2150180 (= (derivationStepZipperUp!1807 (h!72583 zl!343) (h!72584 s!2326)) e!4123356)))

(declare-fun bm!622597 () Bool)

(assert (=> bm!622597 (= call!622602 (derivationStepZipperDown!1881 (h!72582 (exprs!6537 (h!72583 zl!343))) (Context!12075 (t!380001 (exprs!6537 (h!72583 zl!343)))) (h!72584 s!2326)))))

(declare-fun b!6836120 () Bool)

(declare-fun nullable!6620 (Regex!16653) Bool)

(assert (=> b!6836120 (= e!4123358 (nullable!6620 (h!72582 (exprs!6537 (h!72583 zl!343)))))))

(declare-fun b!6836121 () Bool)

(declare-fun e!4123357 () (InoxSet Context!12074))

(assert (=> b!6836121 (= e!4123357 ((as const (Array Context!12074 Bool)) false))))

(declare-fun b!6836122 () Bool)

(assert (=> b!6836122 (= e!4123357 call!622602)))

(declare-fun b!6836123 () Bool)

(assert (=> b!6836123 (= e!4123356 e!4123357)))

(declare-fun c!1272873 () Bool)

(assert (=> b!6836123 (= c!1272873 ((_ is Cons!66134) (exprs!6537 (h!72583 zl!343))))))

(assert (= (and d!2150180 res!2791760) b!6836120))

(assert (= (and d!2150180 c!1272874) b!6836119))

(assert (= (and d!2150180 (not c!1272874)) b!6836123))

(assert (= (and b!6836123 c!1272873) b!6836122))

(assert (= (and b!6836123 (not c!1272873)) b!6836121))

(assert (= (or b!6836119 b!6836122) bm!622597))

(declare-fun m!7581676 () Bool)

(assert (=> b!6836119 m!7581676))

(declare-fun m!7581680 () Bool)

(assert (=> bm!622597 m!7581680))

(declare-fun m!7581682 () Bool)

(assert (=> b!6836120 m!7581682))

(assert (=> b!6835978 d!2150180))

(declare-fun d!2150186 () Bool)

(declare-fun dynLambda!26424 (Int Context!12074) (InoxSet Context!12074))

(assert (=> d!2150186 (= (flatMap!2134 z!1189 lambda!386545) (dynLambda!26424 lambda!386545 (h!72583 zl!343)))))

(declare-fun lt!2454915 () Unit!160003)

(declare-fun choose!50975 ((InoxSet Context!12074) Context!12074 Int) Unit!160003)

(assert (=> d!2150186 (= lt!2454915 (choose!50975 z!1189 (h!72583 zl!343) lambda!386545))))

(assert (=> d!2150186 (= z!1189 (store ((as const (Array Context!12074 Bool)) false) (h!72583 zl!343) true))))

(assert (=> d!2150186 (= (lemmaFlatMapOnSingletonSet!1660 z!1189 (h!72583 zl!343) lambda!386545) lt!2454915)))

(declare-fun b_lambda!257889 () Bool)

(assert (=> (not b_lambda!257889) (not d!2150186)))

(declare-fun bs!1828489 () Bool)

(assert (= bs!1828489 d!2150186))

(assert (=> bs!1828489 m!7581462))

(declare-fun m!7581726 () Bool)

(assert (=> bs!1828489 m!7581726))

(declare-fun m!7581728 () Bool)

(assert (=> bs!1828489 m!7581728))

(declare-fun m!7581730 () Bool)

(assert (=> bs!1828489 m!7581730))

(assert (=> b!6835978 d!2150186))

(declare-fun b!6836219 () Bool)

(declare-fun c!1272906 () Bool)

(declare-fun e!4123414 () Bool)

(assert (=> b!6836219 (= c!1272906 e!4123414)))

(declare-fun res!2791800 () Bool)

(assert (=> b!6836219 (=> (not res!2791800) (not e!4123414))))

(assert (=> b!6836219 (= res!2791800 ((_ is Concat!25498) r!7292))))

(declare-fun e!4123410 () (InoxSet Context!12074))

(declare-fun e!4123413 () (InoxSet Context!12074))

(assert (=> b!6836219 (= e!4123410 e!4123413)))

(declare-fun call!622620 () List!66258)

(declare-fun c!1272905 () Bool)

(declare-fun bm!622612 () Bool)

(declare-fun $colon$colon!2449 (List!66258 Regex!16653) List!66258)

(assert (=> bm!622612 (= call!622620 ($colon$colon!2449 (exprs!6537 (Context!12075 Nil!66134)) (ite (or c!1272906 c!1272905) (regTwo!33818 r!7292) r!7292)))))

(declare-fun bm!622613 () Bool)

(declare-fun call!622619 () (InoxSet Context!12074))

(declare-fun call!622618 () (InoxSet Context!12074))

(assert (=> bm!622613 (= call!622619 call!622618)))

(declare-fun b!6836220 () Bool)

(declare-fun e!4123409 () (InoxSet Context!12074))

(declare-fun call!622622 () (InoxSet Context!12074))

(assert (=> b!6836220 (= e!4123409 call!622622)))

(declare-fun b!6836221 () Bool)

(declare-fun e!4123412 () (InoxSet Context!12074))

(assert (=> b!6836221 (= e!4123412 (store ((as const (Array Context!12074 Bool)) false) (Context!12075 Nil!66134) true))))

(declare-fun b!6836222 () Bool)

(declare-fun e!4123411 () (InoxSet Context!12074))

(assert (=> b!6836222 (= e!4123411 ((as const (Array Context!12074 Bool)) false))))

(declare-fun b!6836224 () Bool)

(declare-fun c!1272903 () Bool)

(assert (=> b!6836224 (= c!1272903 ((_ is Star!16653) r!7292))))

(assert (=> b!6836224 (= e!4123409 e!4123411)))

(declare-fun b!6836225 () Bool)

(assert (=> b!6836225 (= e!4123413 e!4123409)))

(assert (=> b!6836225 (= c!1272905 ((_ is Concat!25498) r!7292))))

(declare-fun b!6836226 () Bool)

(assert (=> b!6836226 (= e!4123414 (nullable!6620 (regOne!33818 r!7292)))))

(declare-fun b!6836227 () Bool)

(assert (=> b!6836227 (= e!4123412 e!4123410)))

(declare-fun c!1272907 () Bool)

(assert (=> b!6836227 (= c!1272907 ((_ is Union!16653) r!7292))))

(declare-fun b!6836228 () Bool)

(declare-fun call!622621 () (InoxSet Context!12074))

(assert (=> b!6836228 (= e!4123413 ((_ map or) call!622621 call!622619))))

(declare-fun b!6836229 () Bool)

(assert (=> b!6836229 (= e!4123410 ((_ map or) call!622618 call!622621))))

(declare-fun bm!622614 () Bool)

(assert (=> bm!622614 (= call!622621 (derivationStepZipperDown!1881 (ite c!1272907 (regTwo!33819 r!7292) (regOne!33818 r!7292)) (ite c!1272907 (Context!12075 Nil!66134) (Context!12075 call!622620)) (h!72584 s!2326)))))

(declare-fun bm!622615 () Bool)

(assert (=> bm!622615 (= call!622622 call!622619)))

(declare-fun d!2150198 () Bool)

(declare-fun c!1272904 () Bool)

(assert (=> d!2150198 (= c!1272904 (and ((_ is ElementMatch!16653) r!7292) (= (c!1272841 r!7292) (h!72584 s!2326))))))

(assert (=> d!2150198 (= (derivationStepZipperDown!1881 r!7292 (Context!12075 Nil!66134) (h!72584 s!2326)) e!4123412)))

(declare-fun b!6836223 () Bool)

(assert (=> b!6836223 (= e!4123411 call!622622)))

(declare-fun bm!622616 () Bool)

(declare-fun call!622617 () List!66258)

(assert (=> bm!622616 (= call!622617 call!622620)))

(declare-fun bm!622617 () Bool)

(assert (=> bm!622617 (= call!622618 (derivationStepZipperDown!1881 (ite c!1272907 (regOne!33819 r!7292) (ite c!1272906 (regTwo!33818 r!7292) (ite c!1272905 (regOne!33818 r!7292) (reg!16982 r!7292)))) (ite (or c!1272907 c!1272906) (Context!12075 Nil!66134) (Context!12075 call!622617)) (h!72584 s!2326)))))

(assert (= (and d!2150198 c!1272904) b!6836221))

(assert (= (and d!2150198 (not c!1272904)) b!6836227))

(assert (= (and b!6836227 c!1272907) b!6836229))

(assert (= (and b!6836227 (not c!1272907)) b!6836219))

(assert (= (and b!6836219 res!2791800) b!6836226))

(assert (= (and b!6836219 c!1272906) b!6836228))

(assert (= (and b!6836219 (not c!1272906)) b!6836225))

(assert (= (and b!6836225 c!1272905) b!6836220))

(assert (= (and b!6836225 (not c!1272905)) b!6836224))

(assert (= (and b!6836224 c!1272903) b!6836223))

(assert (= (and b!6836224 (not c!1272903)) b!6836222))

(assert (= (or b!6836220 b!6836223) bm!622616))

(assert (= (or b!6836220 b!6836223) bm!622615))

(assert (= (or b!6836228 bm!622616) bm!622612))

(assert (= (or b!6836228 bm!622615) bm!622613))

(assert (= (or b!6836229 b!6836228) bm!622614))

(assert (= (or b!6836229 bm!622613) bm!622617))

(declare-fun m!7581784 () Bool)

(assert (=> b!6836221 m!7581784))

(declare-fun m!7581788 () Bool)

(assert (=> bm!622614 m!7581788))

(declare-fun m!7581790 () Bool)

(assert (=> bm!622612 m!7581790))

(declare-fun m!7581792 () Bool)

(assert (=> b!6836226 m!7581792))

(declare-fun m!7581794 () Bool)

(assert (=> bm!622617 m!7581794))

(assert (=> b!6835979 d!2150198))

(declare-fun e!4123415 () (InoxSet Context!12074))

(declare-fun call!622623 () (InoxSet Context!12074))

(declare-fun b!6836230 () Bool)

(assert (=> b!6836230 (= e!4123415 ((_ map or) call!622623 (derivationStepZipperUp!1807 (Context!12075 (t!380001 (exprs!6537 (Context!12075 (Cons!66134 r!7292 Nil!66134))))) (h!72584 s!2326))))))

(declare-fun d!2150210 () Bool)

(declare-fun c!1272909 () Bool)

(declare-fun e!4123417 () Bool)

(assert (=> d!2150210 (= c!1272909 e!4123417)))

(declare-fun res!2791801 () Bool)

(assert (=> d!2150210 (=> (not res!2791801) (not e!4123417))))

(assert (=> d!2150210 (= res!2791801 ((_ is Cons!66134) (exprs!6537 (Context!12075 (Cons!66134 r!7292 Nil!66134)))))))

(assert (=> d!2150210 (= (derivationStepZipperUp!1807 (Context!12075 (Cons!66134 r!7292 Nil!66134)) (h!72584 s!2326)) e!4123415)))

(declare-fun bm!622618 () Bool)

(assert (=> bm!622618 (= call!622623 (derivationStepZipperDown!1881 (h!72582 (exprs!6537 (Context!12075 (Cons!66134 r!7292 Nil!66134)))) (Context!12075 (t!380001 (exprs!6537 (Context!12075 (Cons!66134 r!7292 Nil!66134))))) (h!72584 s!2326)))))

(declare-fun b!6836231 () Bool)

(assert (=> b!6836231 (= e!4123417 (nullable!6620 (h!72582 (exprs!6537 (Context!12075 (Cons!66134 r!7292 Nil!66134))))))))

(declare-fun b!6836232 () Bool)

(declare-fun e!4123416 () (InoxSet Context!12074))

(assert (=> b!6836232 (= e!4123416 ((as const (Array Context!12074 Bool)) false))))

(declare-fun b!6836233 () Bool)

(assert (=> b!6836233 (= e!4123416 call!622623)))

(declare-fun b!6836234 () Bool)

(assert (=> b!6836234 (= e!4123415 e!4123416)))

(declare-fun c!1272908 () Bool)

(assert (=> b!6836234 (= c!1272908 ((_ is Cons!66134) (exprs!6537 (Context!12075 (Cons!66134 r!7292 Nil!66134)))))))

(assert (= (and d!2150210 res!2791801) b!6836231))

(assert (= (and d!2150210 c!1272909) b!6836230))

(assert (= (and d!2150210 (not c!1272909)) b!6836234))

(assert (= (and b!6836234 c!1272908) b!6836233))

(assert (= (and b!6836234 (not c!1272908)) b!6836232))

(assert (= (or b!6836230 b!6836233) bm!622618))

(declare-fun m!7581796 () Bool)

(assert (=> b!6836230 m!7581796))

(declare-fun m!7581798 () Bool)

(assert (=> bm!622618 m!7581798))

(declare-fun m!7581800 () Bool)

(assert (=> b!6836231 m!7581800))

(assert (=> b!6835979 d!2150210))

(declare-fun bs!1828492 () Bool)

(declare-fun d!2150214 () Bool)

(assert (= bs!1828492 (and d!2150214 b!6835978)))

(declare-fun lambda!386561 () Int)

(assert (=> bs!1828492 (= lambda!386561 lambda!386545)))

(assert (=> d!2150214 true))

(assert (=> d!2150214 (= (derivationStepZipper!2597 z!1189 (h!72584 s!2326)) (flatMap!2134 z!1189 lambda!386561))))

(declare-fun bs!1828493 () Bool)

(assert (= bs!1828493 d!2150214))

(declare-fun m!7581802 () Bool)

(assert (=> bs!1828493 m!7581802))

(assert (=> b!6835979 d!2150214))

(declare-fun d!2150216 () Bool)

(assert (=> d!2150216 (= (isEmpty!38521 (t!380002 zl!343)) ((_ is Nil!66135) (t!380002 zl!343)))))

(assert (=> b!6835977 d!2150216))

(declare-fun bs!1828504 () Bool)

(declare-fun b!6836367 () Bool)

(assert (= bs!1828504 (and b!6836367 b!6835986)))

(declare-fun lambda!386570 () Int)

(assert (=> bs!1828504 (not (= lambda!386570 lambda!386542))))

(assert (=> bs!1828504 (= lambda!386570 lambda!386543)))

(assert (=> bs!1828504 (not (= lambda!386570 lambda!386544))))

(assert (=> b!6836367 true))

(assert (=> b!6836367 true))

(declare-fun bs!1828505 () Bool)

(declare-fun b!6836361 () Bool)

(assert (= bs!1828505 (and b!6836361 b!6835986)))

(declare-fun lambda!386571 () Int)

(assert (=> bs!1828505 (not (= lambda!386571 lambda!386542))))

(assert (=> bs!1828505 (not (= lambda!386571 lambda!386543))))

(assert (=> bs!1828505 (= (and (= (regOne!33818 r!7292) (reg!16982 r!7292)) (= (regTwo!33818 r!7292) r!7292)) (= lambda!386571 lambda!386544))))

(declare-fun bs!1828506 () Bool)

(assert (= bs!1828506 (and b!6836361 b!6836367)))

(assert (=> bs!1828506 (not (= lambda!386571 lambda!386570))))

(assert (=> b!6836361 true))

(assert (=> b!6836361 true))

(declare-fun b!6836357 () Bool)

(declare-fun e!4123493 () Bool)

(declare-fun e!4123490 () Bool)

(assert (=> b!6836357 (= e!4123493 e!4123490)))

(declare-fun res!2791834 () Bool)

(assert (=> b!6836357 (= res!2791834 (not ((_ is EmptyLang!16653) r!7292)))))

(assert (=> b!6836357 (=> (not res!2791834) (not e!4123490))))

(declare-fun b!6836358 () Bool)

(declare-fun e!4123489 () Bool)

(assert (=> b!6836358 (= e!4123489 (matchRSpec!3754 (regTwo!33819 r!7292) s!2326))))

(declare-fun call!622648 () Bool)

(declare-fun c!1272959 () Bool)

(declare-fun bm!622642 () Bool)

(assert (=> bm!622642 (= call!622648 (Exists!3721 (ite c!1272959 lambda!386570 lambda!386571)))))

(declare-fun d!2150218 () Bool)

(declare-fun c!1272957 () Bool)

(assert (=> d!2150218 (= c!1272957 ((_ is EmptyExpr!16653) r!7292))))

(assert (=> d!2150218 (= (matchRSpec!3754 r!7292 s!2326) e!4123493)))

(declare-fun b!6836359 () Bool)

(declare-fun c!1272960 () Bool)

(assert (=> b!6836359 (= c!1272960 ((_ is ElementMatch!16653) r!7292))))

(declare-fun e!4123491 () Bool)

(assert (=> b!6836359 (= e!4123490 e!4123491)))

(declare-fun b!6836360 () Bool)

(declare-fun c!1272958 () Bool)

(assert (=> b!6836360 (= c!1272958 ((_ is Union!16653) r!7292))))

(declare-fun e!4123488 () Bool)

(assert (=> b!6836360 (= e!4123491 e!4123488)))

(declare-fun e!4123487 () Bool)

(assert (=> b!6836361 (= e!4123487 call!622648)))

(declare-fun bm!622643 () Bool)

(declare-fun call!622647 () Bool)

(assert (=> bm!622643 (= call!622647 (isEmpty!38522 s!2326))))

(declare-fun b!6836362 () Bool)

(assert (=> b!6836362 (= e!4123493 call!622647)))

(declare-fun b!6836363 () Bool)

(assert (=> b!6836363 (= e!4123491 (= s!2326 (Cons!66136 (c!1272841 r!7292) Nil!66136)))))

(declare-fun b!6836364 () Bool)

(declare-fun res!2791832 () Bool)

(declare-fun e!4123492 () Bool)

(assert (=> b!6836364 (=> res!2791832 e!4123492)))

(assert (=> b!6836364 (= res!2791832 call!622647)))

(assert (=> b!6836364 (= e!4123487 e!4123492)))

(declare-fun b!6836365 () Bool)

(assert (=> b!6836365 (= e!4123488 e!4123487)))

(assert (=> b!6836365 (= c!1272959 ((_ is Star!16653) r!7292))))

(declare-fun b!6836366 () Bool)

(assert (=> b!6836366 (= e!4123488 e!4123489)))

(declare-fun res!2791833 () Bool)

(assert (=> b!6836366 (= res!2791833 (matchRSpec!3754 (regOne!33819 r!7292) s!2326))))

(assert (=> b!6836366 (=> res!2791833 e!4123489)))

(assert (=> b!6836367 (= e!4123492 call!622648)))

(assert (= (and d!2150218 c!1272957) b!6836362))

(assert (= (and d!2150218 (not c!1272957)) b!6836357))

(assert (= (and b!6836357 res!2791834) b!6836359))

(assert (= (and b!6836359 c!1272960) b!6836363))

(assert (= (and b!6836359 (not c!1272960)) b!6836360))

(assert (= (and b!6836360 c!1272958) b!6836366))

(assert (= (and b!6836360 (not c!1272958)) b!6836365))

(assert (= (and b!6836366 (not res!2791833)) b!6836358))

(assert (= (and b!6836365 c!1272959) b!6836364))

(assert (= (and b!6836365 (not c!1272959)) b!6836361))

(assert (= (and b!6836364 (not res!2791832)) b!6836367))

(assert (= (or b!6836367 b!6836361) bm!622642))

(assert (= (or b!6836362 b!6836364) bm!622643))

(declare-fun m!7581866 () Bool)

(assert (=> b!6836358 m!7581866))

(declare-fun m!7581868 () Bool)

(assert (=> bm!622642 m!7581868))

(assert (=> bm!622643 m!7581504))

(declare-fun m!7581870 () Bool)

(assert (=> b!6836366 m!7581870))

(assert (=> b!6835987 d!2150218))

(declare-fun b!6836420 () Bool)

(declare-fun e!4123527 () Bool)

(declare-fun head!13692 (List!66260) C!33576)

(assert (=> b!6836420 (= e!4123527 (not (= (head!13692 s!2326) (c!1272841 r!7292))))))

(declare-fun d!2150234 () Bool)

(declare-fun e!4123524 () Bool)

(assert (=> d!2150234 e!4123524))

(declare-fun c!1272976 () Bool)

(assert (=> d!2150234 (= c!1272976 ((_ is EmptyExpr!16653) r!7292))))

(declare-fun lt!2454948 () Bool)

(declare-fun e!4123523 () Bool)

(assert (=> d!2150234 (= lt!2454948 e!4123523)))

(declare-fun c!1272974 () Bool)

(assert (=> d!2150234 (= c!1272974 (isEmpty!38522 s!2326))))

(assert (=> d!2150234 (validRegex!8389 r!7292)))

(assert (=> d!2150234 (= (matchR!8836 r!7292 s!2326) lt!2454948)))

(declare-fun b!6836421 () Bool)

(declare-fun e!4123526 () Bool)

(assert (=> b!6836421 (= e!4123526 e!4123527)))

(declare-fun res!2791865 () Bool)

(assert (=> b!6836421 (=> res!2791865 e!4123527)))

(declare-fun call!622651 () Bool)

(assert (=> b!6836421 (= res!2791865 call!622651)))

(declare-fun b!6836422 () Bool)

(declare-fun res!2791864 () Bool)

(declare-fun e!4123522 () Bool)

(assert (=> b!6836422 (=> res!2791864 e!4123522)))

(assert (=> b!6836422 (= res!2791864 (not ((_ is ElementMatch!16653) r!7292)))))

(declare-fun e!4123525 () Bool)

(assert (=> b!6836422 (= e!4123525 e!4123522)))

(declare-fun b!6836423 () Bool)

(assert (=> b!6836423 (= e!4123524 e!4123525)))

(declare-fun c!1272975 () Bool)

(assert (=> b!6836423 (= c!1272975 ((_ is EmptyLang!16653) r!7292))))

(declare-fun b!6836424 () Bool)

(assert (=> b!6836424 (= e!4123525 (not lt!2454948))))

(declare-fun b!6836425 () Bool)

(declare-fun res!2791868 () Bool)

(declare-fun e!4123521 () Bool)

(assert (=> b!6836425 (=> (not res!2791868) (not e!4123521))))

(declare-fun tail!12777 (List!66260) List!66260)

(assert (=> b!6836425 (= res!2791868 (isEmpty!38522 (tail!12777 s!2326)))))

(declare-fun b!6836426 () Bool)

(declare-fun derivativeStep!5305 (Regex!16653 C!33576) Regex!16653)

(assert (=> b!6836426 (= e!4123523 (matchR!8836 (derivativeStep!5305 r!7292 (head!13692 s!2326)) (tail!12777 s!2326)))))

(declare-fun b!6836427 () Bool)

(declare-fun res!2791862 () Bool)

(assert (=> b!6836427 (=> res!2791862 e!4123522)))

(assert (=> b!6836427 (= res!2791862 e!4123521)))

(declare-fun res!2791861 () Bool)

(assert (=> b!6836427 (=> (not res!2791861) (not e!4123521))))

(assert (=> b!6836427 (= res!2791861 lt!2454948)))

(declare-fun bm!622646 () Bool)

(assert (=> bm!622646 (= call!622651 (isEmpty!38522 s!2326))))

(declare-fun b!6836428 () Bool)

(declare-fun res!2791863 () Bool)

(assert (=> b!6836428 (=> res!2791863 e!4123527)))

(assert (=> b!6836428 (= res!2791863 (not (isEmpty!38522 (tail!12777 s!2326))))))

(declare-fun b!6836429 () Bool)

(assert (=> b!6836429 (= e!4123524 (= lt!2454948 call!622651))))

(declare-fun b!6836430 () Bool)

(assert (=> b!6836430 (= e!4123521 (= (head!13692 s!2326) (c!1272841 r!7292)))))

(declare-fun b!6836431 () Bool)

(declare-fun res!2791866 () Bool)

(assert (=> b!6836431 (=> (not res!2791866) (not e!4123521))))

(assert (=> b!6836431 (= res!2791866 (not call!622651))))

(declare-fun b!6836432 () Bool)

(assert (=> b!6836432 (= e!4123523 (nullable!6620 r!7292))))

(declare-fun b!6836433 () Bool)

(assert (=> b!6836433 (= e!4123522 e!4123526)))

(declare-fun res!2791867 () Bool)

(assert (=> b!6836433 (=> (not res!2791867) (not e!4123526))))

(assert (=> b!6836433 (= res!2791867 (not lt!2454948))))

(assert (= (and d!2150234 c!1272974) b!6836432))

(assert (= (and d!2150234 (not c!1272974)) b!6836426))

(assert (= (and d!2150234 c!1272976) b!6836429))

(assert (= (and d!2150234 (not c!1272976)) b!6836423))

(assert (= (and b!6836423 c!1272975) b!6836424))

(assert (= (and b!6836423 (not c!1272975)) b!6836422))

(assert (= (and b!6836422 (not res!2791864)) b!6836427))

(assert (= (and b!6836427 res!2791861) b!6836431))

(assert (= (and b!6836431 res!2791866) b!6836425))

(assert (= (and b!6836425 res!2791868) b!6836430))

(assert (= (and b!6836427 (not res!2791862)) b!6836433))

(assert (= (and b!6836433 res!2791867) b!6836421))

(assert (= (and b!6836421 (not res!2791865)) b!6836428))

(assert (= (and b!6836428 (not res!2791863)) b!6836420))

(assert (= (or b!6836429 b!6836421 b!6836431) bm!622646))

(declare-fun m!7581878 () Bool)

(assert (=> b!6836426 m!7581878))

(assert (=> b!6836426 m!7581878))

(declare-fun m!7581880 () Bool)

(assert (=> b!6836426 m!7581880))

(declare-fun m!7581882 () Bool)

(assert (=> b!6836426 m!7581882))

(assert (=> b!6836426 m!7581880))

(assert (=> b!6836426 m!7581882))

(declare-fun m!7581884 () Bool)

(assert (=> b!6836426 m!7581884))

(assert (=> b!6836430 m!7581878))

(declare-fun m!7581886 () Bool)

(assert (=> b!6836432 m!7581886))

(assert (=> b!6836425 m!7581882))

(assert (=> b!6836425 m!7581882))

(declare-fun m!7581888 () Bool)

(assert (=> b!6836425 m!7581888))

(assert (=> b!6836420 m!7581878))

(assert (=> b!6836428 m!7581882))

(assert (=> b!6836428 m!7581882))

(assert (=> b!6836428 m!7581888))

(assert (=> d!2150234 m!7581504))

(assert (=> d!2150234 m!7581480))

(assert (=> bm!622646 m!7581504))

(assert (=> b!6835987 d!2150234))

(declare-fun d!2150240 () Bool)

(assert (=> d!2150240 (= (matchR!8836 r!7292 s!2326) (matchRSpec!3754 r!7292 s!2326))))

(declare-fun lt!2454951 () Unit!160003)

(declare-fun choose!50978 (Regex!16653 List!66260) Unit!160003)

(assert (=> d!2150240 (= lt!2454951 (choose!50978 r!7292 s!2326))))

(assert (=> d!2150240 (validRegex!8389 r!7292)))

(assert (=> d!2150240 (= (mainMatchTheorem!3754 r!7292 s!2326) lt!2454951)))

(declare-fun bs!1828515 () Bool)

(assert (= bs!1828515 d!2150240))

(assert (=> bs!1828515 m!7581498))

(assert (=> bs!1828515 m!7581496))

(declare-fun m!7581896 () Bool)

(assert (=> bs!1828515 m!7581896))

(assert (=> bs!1828515 m!7581480))

(assert (=> b!6835987 d!2150240))

(declare-fun bs!1828516 () Bool)

(declare-fun d!2150244 () Bool)

(assert (= bs!1828516 (and d!2150244 b!6835982)))

(declare-fun lambda!386583 () Int)

(assert (=> bs!1828516 (= lambda!386583 lambda!386547)))

(declare-fun forall!15833 (List!66258 Int) Bool)

(assert (=> d!2150244 (= (inv!84879 setElem!46957) (forall!15833 (exprs!6537 setElem!46957) lambda!386583))))

(declare-fun bs!1828517 () Bool)

(assert (= bs!1828517 d!2150244))

(declare-fun m!7581898 () Bool)

(assert (=> bs!1828517 m!7581898))

(assert (=> setNonEmpty!46957 d!2150244))

(declare-fun d!2150246 () Bool)

(declare-fun lt!2454956 () Regex!16653)

(assert (=> d!2150246 (validRegex!8389 lt!2454956)))

(assert (=> d!2150246 (= lt!2454956 (generalisedUnion!2497 (unfocusZipperList!2074 zl!343)))))

(assert (=> d!2150246 (= (unfocusZipper!2395 zl!343) lt!2454956)))

(declare-fun bs!1828518 () Bool)

(assert (= bs!1828518 d!2150246))

(declare-fun m!7581900 () Bool)

(assert (=> bs!1828518 m!7581900))

(assert (=> bs!1828518 m!7581396))

(assert (=> bs!1828518 m!7581396))

(assert (=> bs!1828518 m!7581398))

(assert (=> b!6835985 d!2150246))

(declare-fun d!2150248 () Bool)

(declare-fun lt!2454957 () Regex!16653)

(assert (=> d!2150248 (validRegex!8389 lt!2454957)))

(assert (=> d!2150248 (= lt!2454957 (generalisedUnion!2497 (unfocusZipperList!2074 lt!2454854)))))

(assert (=> d!2150248 (= (unfocusZipper!2395 lt!2454854) lt!2454957)))

(declare-fun bs!1828519 () Bool)

(assert (= bs!1828519 d!2150248))

(declare-fun m!7581902 () Bool)

(assert (=> bs!1828519 m!7581902))

(declare-fun m!7581904 () Bool)

(assert (=> bs!1828519 m!7581904))

(assert (=> bs!1828519 m!7581904))

(declare-fun m!7581906 () Bool)

(assert (=> bs!1828519 m!7581906))

(assert (=> b!6835996 d!2150248))

(declare-fun d!2150250 () Bool)

(declare-fun e!4123533 () Bool)

(assert (=> d!2150250 e!4123533))

(declare-fun res!2791875 () Bool)

(assert (=> d!2150250 (=> (not res!2791875) (not e!4123533))))

(declare-fun lt!2454960 () List!66259)

(declare-fun noDuplicate!2426 (List!66259) Bool)

(assert (=> d!2150250 (= res!2791875 (noDuplicate!2426 lt!2454960))))

(declare-fun choose!50979 ((InoxSet Context!12074)) List!66259)

(assert (=> d!2150250 (= lt!2454960 (choose!50979 z!1189))))

(assert (=> d!2150250 (= (toList!10437 z!1189) lt!2454960)))

(declare-fun b!6836440 () Bool)

(declare-fun content!12959 (List!66259) (InoxSet Context!12074))

(assert (=> b!6836440 (= e!4123533 (= (content!12959 lt!2454960) z!1189))))

(assert (= (and d!2150250 res!2791875) b!6836440))

(declare-fun m!7581908 () Bool)

(assert (=> d!2150250 m!7581908))

(declare-fun m!7581910 () Bool)

(assert (=> d!2150250 m!7581910))

(declare-fun m!7581912 () Bool)

(assert (=> b!6836440 m!7581912))

(assert (=> b!6835976 d!2150250))

(declare-fun d!2150252 () Bool)

(declare-fun isEmpty!38525 (Option!16540) Bool)

(assert (=> d!2150252 (= (isDefined!13243 (findConcatSeparation!2954 (reg!16982 r!7292) r!7292 Nil!66136 s!2326 s!2326)) (not (isEmpty!38525 (findConcatSeparation!2954 (reg!16982 r!7292) r!7292 Nil!66136 s!2326 s!2326))))))

(declare-fun bs!1828520 () Bool)

(assert (= bs!1828520 d!2150252))

(assert (=> bs!1828520 m!7581510))

(declare-fun m!7581914 () Bool)

(assert (=> bs!1828520 m!7581914))

(assert (=> b!6835986 d!2150252))

(declare-fun bs!1828526 () Bool)

(declare-fun d!2150254 () Bool)

(assert (= bs!1828526 (and d!2150254 b!6836361)))

(declare-fun lambda!386594 () Int)

(assert (=> bs!1828526 (not (= lambda!386594 lambda!386571))))

(declare-fun bs!1828527 () Bool)

(assert (= bs!1828527 (and d!2150254 b!6836367)))

(assert (=> bs!1828527 (not (= lambda!386594 lambda!386570))))

(declare-fun bs!1828528 () Bool)

(assert (= bs!1828528 (and d!2150254 b!6835986)))

(assert (=> bs!1828528 (not (= lambda!386594 lambda!386544))))

(assert (=> bs!1828528 (= lambda!386594 lambda!386542)))

(assert (=> bs!1828528 (not (= lambda!386594 lambda!386543))))

(assert (=> d!2150254 true))

(assert (=> d!2150254 true))

(assert (=> d!2150254 true))

(declare-fun lambda!386595 () Int)

(assert (=> bs!1828526 (= (and (= (reg!16982 r!7292) (regOne!33818 r!7292)) (= r!7292 (regTwo!33818 r!7292))) (= lambda!386595 lambda!386571))))

(assert (=> bs!1828527 (not (= lambda!386595 lambda!386570))))

(assert (=> bs!1828528 (= lambda!386595 lambda!386544)))

(assert (=> bs!1828528 (not (= lambda!386595 lambda!386542))))

(declare-fun bs!1828529 () Bool)

(assert (= bs!1828529 d!2150254))

(assert (=> bs!1828529 (not (= lambda!386595 lambda!386594))))

(assert (=> bs!1828528 (not (= lambda!386595 lambda!386543))))

(assert (=> d!2150254 true))

(assert (=> d!2150254 true))

(assert (=> d!2150254 true))

(assert (=> d!2150254 (= (Exists!3721 lambda!386594) (Exists!3721 lambda!386595))))

(declare-fun lt!2454964 () Unit!160003)

(declare-fun choose!50980 (Regex!16653 Regex!16653 List!66260) Unit!160003)

(assert (=> d!2150254 (= lt!2454964 (choose!50980 (reg!16982 r!7292) r!7292 s!2326))))

(assert (=> d!2150254 (validRegex!8389 (reg!16982 r!7292))))

(assert (=> d!2150254 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2248 (reg!16982 r!7292) r!7292 s!2326) lt!2454964)))

(declare-fun m!7581926 () Bool)

(assert (=> bs!1828529 m!7581926))

(declare-fun m!7581928 () Bool)

(assert (=> bs!1828529 m!7581928))

(declare-fun m!7581930 () Bool)

(assert (=> bs!1828529 m!7581930))

(declare-fun m!7581932 () Bool)

(assert (=> bs!1828529 m!7581932))

(assert (=> b!6835986 d!2150254))

(declare-fun bs!1828531 () Bool)

(declare-fun d!2150264 () Bool)

(assert (= bs!1828531 (and d!2150264 b!6836361)))

(declare-fun lambda!386600 () Int)

(assert (=> bs!1828531 (not (= lambda!386600 lambda!386571))))

(declare-fun bs!1828532 () Bool)

(assert (= bs!1828532 (and d!2150264 d!2150254)))

(assert (=> bs!1828532 (not (= lambda!386600 lambda!386595))))

(declare-fun bs!1828533 () Bool)

(assert (= bs!1828533 (and d!2150264 b!6836367)))

(assert (=> bs!1828533 (not (= lambda!386600 lambda!386570))))

(declare-fun bs!1828534 () Bool)

(assert (= bs!1828534 (and d!2150264 b!6835986)))

(assert (=> bs!1828534 (not (= lambda!386600 lambda!386544))))

(assert (=> bs!1828534 (= (= (Star!16653 (reg!16982 r!7292)) r!7292) (= lambda!386600 lambda!386542))))

(assert (=> bs!1828532 (= (= (Star!16653 (reg!16982 r!7292)) r!7292) (= lambda!386600 lambda!386594))))

(assert (=> bs!1828534 (not (= lambda!386600 lambda!386543))))

(assert (=> d!2150264 true))

(assert (=> d!2150264 true))

(declare-fun lambda!386601 () Int)

(assert (=> bs!1828531 (not (= lambda!386601 lambda!386571))))

(assert (=> bs!1828532 (not (= lambda!386601 lambda!386595))))

(assert (=> bs!1828533 (= (= (Star!16653 (reg!16982 r!7292)) r!7292) (= lambda!386601 lambda!386570))))

(assert (=> bs!1828534 (not (= lambda!386601 lambda!386544))))

(assert (=> bs!1828534 (not (= lambda!386601 lambda!386542))))

(assert (=> bs!1828532 (not (= lambda!386601 lambda!386594))))

(assert (=> bs!1828534 (= (= (Star!16653 (reg!16982 r!7292)) r!7292) (= lambda!386601 lambda!386543))))

(declare-fun bs!1828535 () Bool)

(assert (= bs!1828535 d!2150264))

(assert (=> bs!1828535 (not (= lambda!386601 lambda!386600))))

(assert (=> d!2150264 true))

(assert (=> d!2150264 true))

(assert (=> d!2150264 (= (Exists!3721 lambda!386600) (Exists!3721 lambda!386601))))

(declare-fun lt!2454976 () Unit!160003)

(declare-fun choose!50981 (Regex!16653 List!66260) Unit!160003)

(assert (=> d!2150264 (= lt!2454976 (choose!50981 (reg!16982 r!7292) s!2326))))

(assert (=> d!2150264 (validRegex!8389 (reg!16982 r!7292))))

(assert (=> d!2150264 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!812 (reg!16982 r!7292) s!2326) lt!2454976)))

(declare-fun m!7581950 () Bool)

(assert (=> bs!1828535 m!7581950))

(declare-fun m!7581952 () Bool)

(assert (=> bs!1828535 m!7581952))

(declare-fun m!7581954 () Bool)

(assert (=> bs!1828535 m!7581954))

(assert (=> bs!1828535 m!7581932))

(assert (=> b!6835986 d!2150264))

(declare-fun d!2150270 () Bool)

(declare-fun choose!50982 (Int) Bool)

(assert (=> d!2150270 (= (Exists!3721 lambda!386543) (choose!50982 lambda!386543))))

(declare-fun bs!1828536 () Bool)

(assert (= bs!1828536 d!2150270))

(declare-fun m!7581956 () Bool)

(assert (=> bs!1828536 m!7581956))

(assert (=> b!6835986 d!2150270))

(declare-fun d!2150272 () Bool)

(assert (=> d!2150272 (= (Exists!3721 lambda!386544) (choose!50982 lambda!386544))))

(declare-fun bs!1828537 () Bool)

(assert (= bs!1828537 d!2150272))

(declare-fun m!7581958 () Bool)

(assert (=> bs!1828537 m!7581958))

(assert (=> b!6835986 d!2150272))

(declare-fun d!2150274 () Bool)

(assert (=> d!2150274 (= (Exists!3721 lambda!386542) (choose!50982 lambda!386542))))

(declare-fun bs!1828538 () Bool)

(assert (= bs!1828538 d!2150274))

(declare-fun m!7581960 () Bool)

(assert (=> bs!1828538 m!7581960))

(assert (=> b!6835986 d!2150274))

(declare-fun d!2150276 () Bool)

(assert (=> d!2150276 (= (isEmpty!38522 s!2326) ((_ is Nil!66136) s!2326))))

(assert (=> b!6835986 d!2150276))

(declare-fun d!2150278 () Bool)

(declare-fun e!4123589 () Bool)

(assert (=> d!2150278 e!4123589))

(declare-fun res!2791947 () Bool)

(assert (=> d!2150278 (=> res!2791947 e!4123589)))

(declare-fun e!4123592 () Bool)

(assert (=> d!2150278 (= res!2791947 e!4123592)))

(declare-fun res!2791945 () Bool)

(assert (=> d!2150278 (=> (not res!2791945) (not e!4123592))))

(declare-fun lt!2454986 () Option!16540)

(assert (=> d!2150278 (= res!2791945 (isDefined!13243 lt!2454986))))

(declare-fun e!4123590 () Option!16540)

(assert (=> d!2150278 (= lt!2454986 e!4123590)))

(declare-fun c!1272996 () Bool)

(declare-fun e!4123591 () Bool)

(assert (=> d!2150278 (= c!1272996 e!4123591)))

(declare-fun res!2791949 () Bool)

(assert (=> d!2150278 (=> (not res!2791949) (not e!4123591))))

(assert (=> d!2150278 (= res!2791949 (matchR!8836 (reg!16982 r!7292) Nil!66136))))

(assert (=> d!2150278 (validRegex!8389 (reg!16982 r!7292))))

(assert (=> d!2150278 (= (findConcatSeparation!2954 (reg!16982 r!7292) r!7292 Nil!66136 s!2326 s!2326) lt!2454986)))

(declare-fun b!6836546 () Bool)

(assert (=> b!6836546 (= e!4123590 (Some!16539 (tuple2!67257 Nil!66136 s!2326)))))

(declare-fun b!6836547 () Bool)

(declare-fun e!4123588 () Option!16540)

(assert (=> b!6836547 (= e!4123588 None!16539)))

(declare-fun b!6836548 () Bool)

(declare-fun res!2791948 () Bool)

(assert (=> b!6836548 (=> (not res!2791948) (not e!4123592))))

(assert (=> b!6836548 (= res!2791948 (matchR!8836 r!7292 (_2!36931 (get!23049 lt!2454986))))))

(declare-fun b!6836549 () Bool)

(assert (=> b!6836549 (= e!4123590 e!4123588)))

(declare-fun c!1272995 () Bool)

(assert (=> b!6836549 (= c!1272995 ((_ is Nil!66136) s!2326))))

(declare-fun b!6836550 () Bool)

(assert (=> b!6836550 (= e!4123591 (matchR!8836 r!7292 s!2326))))

(declare-fun b!6836551 () Bool)

(assert (=> b!6836551 (= e!4123592 (= (++!14853 (_1!36931 (get!23049 lt!2454986)) (_2!36931 (get!23049 lt!2454986))) s!2326))))

(declare-fun b!6836552 () Bool)

(declare-fun lt!2454988 () Unit!160003)

(declare-fun lt!2454987 () Unit!160003)

(assert (=> b!6836552 (= lt!2454988 lt!2454987)))

(assert (=> b!6836552 (= (++!14853 (++!14853 Nil!66136 (Cons!66136 (h!72584 s!2326) Nil!66136)) (t!380003 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2762 (List!66260 C!33576 List!66260 List!66260) Unit!160003)

(assert (=> b!6836552 (= lt!2454987 (lemmaMoveElementToOtherListKeepsConcatEq!2762 Nil!66136 (h!72584 s!2326) (t!380003 s!2326) s!2326))))

(assert (=> b!6836552 (= e!4123588 (findConcatSeparation!2954 (reg!16982 r!7292) r!7292 (++!14853 Nil!66136 (Cons!66136 (h!72584 s!2326) Nil!66136)) (t!380003 s!2326) s!2326))))

(declare-fun b!6836553 () Bool)

(declare-fun res!2791946 () Bool)

(assert (=> b!6836553 (=> (not res!2791946) (not e!4123592))))

(assert (=> b!6836553 (= res!2791946 (matchR!8836 (reg!16982 r!7292) (_1!36931 (get!23049 lt!2454986))))))

(declare-fun b!6836554 () Bool)

(assert (=> b!6836554 (= e!4123589 (not (isDefined!13243 lt!2454986)))))

(assert (= (and d!2150278 res!2791949) b!6836550))

(assert (= (and d!2150278 c!1272996) b!6836546))

(assert (= (and d!2150278 (not c!1272996)) b!6836549))

(assert (= (and b!6836549 c!1272995) b!6836547))

(assert (= (and b!6836549 (not c!1272995)) b!6836552))

(assert (= (and d!2150278 res!2791945) b!6836553))

(assert (= (and b!6836553 res!2791946) b!6836548))

(assert (= (and b!6836548 res!2791948) b!6836551))

(assert (= (and d!2150278 (not res!2791947)) b!6836554))

(declare-fun m!7581966 () Bool)

(assert (=> d!2150278 m!7581966))

(declare-fun m!7581968 () Bool)

(assert (=> d!2150278 m!7581968))

(assert (=> d!2150278 m!7581932))

(assert (=> b!6836550 m!7581498))

(declare-fun m!7581970 () Bool)

(assert (=> b!6836552 m!7581970))

(assert (=> b!6836552 m!7581970))

(declare-fun m!7581972 () Bool)

(assert (=> b!6836552 m!7581972))

(declare-fun m!7581974 () Bool)

(assert (=> b!6836552 m!7581974))

(assert (=> b!6836552 m!7581970))

(declare-fun m!7581976 () Bool)

(assert (=> b!6836552 m!7581976))

(declare-fun m!7581978 () Bool)

(assert (=> b!6836548 m!7581978))

(declare-fun m!7581980 () Bool)

(assert (=> b!6836548 m!7581980))

(assert (=> b!6836551 m!7581978))

(declare-fun m!7581982 () Bool)

(assert (=> b!6836551 m!7581982))

(assert (=> b!6836554 m!7581966))

(assert (=> b!6836553 m!7581978))

(declare-fun m!7581984 () Bool)

(assert (=> b!6836553 m!7581984))

(assert (=> b!6835986 d!2150278))

(declare-fun bs!1828552 () Bool)

(declare-fun d!2150282 () Bool)

(assert (= bs!1828552 (and d!2150282 b!6836361)))

(declare-fun lambda!386613 () Int)

(assert (=> bs!1828552 (not (= lambda!386613 lambda!386571))))

(declare-fun bs!1828553 () Bool)

(assert (= bs!1828553 (and d!2150282 d!2150254)))

(assert (=> bs!1828553 (not (= lambda!386613 lambda!386595))))

(declare-fun bs!1828554 () Bool)

(assert (= bs!1828554 (and d!2150282 b!6836367)))

(assert (=> bs!1828554 (not (= lambda!386613 lambda!386570))))

(declare-fun bs!1828555 () Bool)

(assert (= bs!1828555 (and d!2150282 b!6835986)))

(assert (=> bs!1828555 (not (= lambda!386613 lambda!386544))))

(assert (=> bs!1828555 (= lambda!386613 lambda!386542)))

(declare-fun bs!1828556 () Bool)

(assert (= bs!1828556 (and d!2150282 d!2150264)))

(assert (=> bs!1828556 (not (= lambda!386613 lambda!386601))))

(assert (=> bs!1828553 (= lambda!386613 lambda!386594)))

(assert (=> bs!1828555 (not (= lambda!386613 lambda!386543))))

(assert (=> bs!1828556 (= (= r!7292 (Star!16653 (reg!16982 r!7292))) (= lambda!386613 lambda!386600))))

(assert (=> d!2150282 true))

(assert (=> d!2150282 true))

(assert (=> d!2150282 true))

(assert (=> d!2150282 (= (isDefined!13243 (findConcatSeparation!2954 (reg!16982 r!7292) r!7292 Nil!66136 s!2326 s!2326)) (Exists!3721 lambda!386613))))

(declare-fun lt!2454992 () Unit!160003)

(declare-fun choose!50983 (Regex!16653 Regex!16653 List!66260) Unit!160003)

(assert (=> d!2150282 (= lt!2454992 (choose!50983 (reg!16982 r!7292) r!7292 s!2326))))

(assert (=> d!2150282 (validRegex!8389 (reg!16982 r!7292))))

(assert (=> d!2150282 (= (lemmaFindConcatSeparationEquivalentToExists!2718 (reg!16982 r!7292) r!7292 s!2326) lt!2454992)))

(declare-fun bs!1828558 () Bool)

(assert (= bs!1828558 d!2150282))

(declare-fun m!7582000 () Bool)

(assert (=> bs!1828558 m!7582000))

(assert (=> bs!1828558 m!7581932))

(assert (=> bs!1828558 m!7581510))

(declare-fun m!7582002 () Bool)

(assert (=> bs!1828558 m!7582002))

(assert (=> bs!1828558 m!7581510))

(assert (=> bs!1828558 m!7581512))

(assert (=> b!6835986 d!2150282))

(declare-fun bs!1828559 () Bool)

(declare-fun b!6836594 () Bool)

(assert (= bs!1828559 (and b!6836594 b!6836361)))

(declare-fun lambda!386614 () Int)

(assert (=> bs!1828559 (not (= lambda!386614 lambda!386571))))

(declare-fun bs!1828560 () Bool)

(assert (= bs!1828560 (and b!6836594 d!2150254)))

(assert (=> bs!1828560 (not (= lambda!386614 lambda!386595))))

(declare-fun bs!1828561 () Bool)

(assert (= bs!1828561 (and b!6836594 b!6836367)))

(assert (=> bs!1828561 (= (and (= (reg!16982 lt!2454844) (reg!16982 r!7292)) (= lt!2454844 r!7292)) (= lambda!386614 lambda!386570))))

(declare-fun bs!1828562 () Bool)

(assert (= bs!1828562 (and b!6836594 d!2150282)))

(assert (=> bs!1828562 (not (= lambda!386614 lambda!386613))))

(declare-fun bs!1828563 () Bool)

(assert (= bs!1828563 (and b!6836594 b!6835986)))

(assert (=> bs!1828563 (not (= lambda!386614 lambda!386544))))

(assert (=> bs!1828563 (not (= lambda!386614 lambda!386542))))

(declare-fun bs!1828564 () Bool)

(assert (= bs!1828564 (and b!6836594 d!2150264)))

(assert (=> bs!1828564 (= (and (= (reg!16982 lt!2454844) (reg!16982 r!7292)) (= lt!2454844 (Star!16653 (reg!16982 r!7292)))) (= lambda!386614 lambda!386601))))

(assert (=> bs!1828560 (not (= lambda!386614 lambda!386594))))

(assert (=> bs!1828563 (= (and (= (reg!16982 lt!2454844) (reg!16982 r!7292)) (= lt!2454844 r!7292)) (= lambda!386614 lambda!386543))))

(assert (=> bs!1828564 (not (= lambda!386614 lambda!386600))))

(assert (=> b!6836594 true))

(assert (=> b!6836594 true))

(declare-fun bs!1828565 () Bool)

(declare-fun b!6836588 () Bool)

(assert (= bs!1828565 (and b!6836588 b!6836361)))

(declare-fun lambda!386615 () Int)

(assert (=> bs!1828565 (= (and (= (regOne!33818 lt!2454844) (regOne!33818 r!7292)) (= (regTwo!33818 lt!2454844) (regTwo!33818 r!7292))) (= lambda!386615 lambda!386571))))

(declare-fun bs!1828566 () Bool)

(assert (= bs!1828566 (and b!6836588 d!2150254)))

(assert (=> bs!1828566 (= (and (= (regOne!33818 lt!2454844) (reg!16982 r!7292)) (= (regTwo!33818 lt!2454844) r!7292)) (= lambda!386615 lambda!386595))))

(declare-fun bs!1828567 () Bool)

(assert (= bs!1828567 (and b!6836588 b!6836367)))

(assert (=> bs!1828567 (not (= lambda!386615 lambda!386570))))

(declare-fun bs!1828568 () Bool)

(assert (= bs!1828568 (and b!6836588 b!6836594)))

(assert (=> bs!1828568 (not (= lambda!386615 lambda!386614))))

(declare-fun bs!1828569 () Bool)

(assert (= bs!1828569 (and b!6836588 d!2150282)))

(assert (=> bs!1828569 (not (= lambda!386615 lambda!386613))))

(declare-fun bs!1828570 () Bool)

(assert (= bs!1828570 (and b!6836588 b!6835986)))

(assert (=> bs!1828570 (= (and (= (regOne!33818 lt!2454844) (reg!16982 r!7292)) (= (regTwo!33818 lt!2454844) r!7292)) (= lambda!386615 lambda!386544))))

(assert (=> bs!1828570 (not (= lambda!386615 lambda!386542))))

(declare-fun bs!1828571 () Bool)

(assert (= bs!1828571 (and b!6836588 d!2150264)))

(assert (=> bs!1828571 (not (= lambda!386615 lambda!386601))))

(assert (=> bs!1828566 (not (= lambda!386615 lambda!386594))))

(assert (=> bs!1828570 (not (= lambda!386615 lambda!386543))))

(assert (=> bs!1828571 (not (= lambda!386615 lambda!386600))))

(assert (=> b!6836588 true))

(assert (=> b!6836588 true))

(declare-fun b!6836584 () Bool)

(declare-fun e!4123615 () Bool)

(declare-fun e!4123612 () Bool)

(assert (=> b!6836584 (= e!4123615 e!4123612)))

(declare-fun res!2791967 () Bool)

(assert (=> b!6836584 (= res!2791967 (not ((_ is EmptyLang!16653) lt!2454844)))))

(assert (=> b!6836584 (=> (not res!2791967) (not e!4123612))))

(declare-fun b!6836585 () Bool)

(declare-fun e!4123611 () Bool)

(assert (=> b!6836585 (= e!4123611 (matchRSpec!3754 (regTwo!33819 lt!2454844) s!2326))))

(declare-fun c!1273006 () Bool)

(declare-fun bm!622654 () Bool)

(declare-fun call!622660 () Bool)

(assert (=> bm!622654 (= call!622660 (Exists!3721 (ite c!1273006 lambda!386614 lambda!386615)))))

(declare-fun d!2150290 () Bool)

(declare-fun c!1273004 () Bool)

(assert (=> d!2150290 (= c!1273004 ((_ is EmptyExpr!16653) lt!2454844))))

(assert (=> d!2150290 (= (matchRSpec!3754 lt!2454844 s!2326) e!4123615)))

(declare-fun b!6836586 () Bool)

(declare-fun c!1273007 () Bool)

(assert (=> b!6836586 (= c!1273007 ((_ is ElementMatch!16653) lt!2454844))))

(declare-fun e!4123613 () Bool)

(assert (=> b!6836586 (= e!4123612 e!4123613)))

(declare-fun b!6836587 () Bool)

(declare-fun c!1273005 () Bool)

(assert (=> b!6836587 (= c!1273005 ((_ is Union!16653) lt!2454844))))

(declare-fun e!4123610 () Bool)

(assert (=> b!6836587 (= e!4123613 e!4123610)))

(declare-fun e!4123609 () Bool)

(assert (=> b!6836588 (= e!4123609 call!622660)))

(declare-fun bm!622655 () Bool)

(declare-fun call!622659 () Bool)

(assert (=> bm!622655 (= call!622659 (isEmpty!38522 s!2326))))

(declare-fun b!6836589 () Bool)

(assert (=> b!6836589 (= e!4123615 call!622659)))

(declare-fun b!6836590 () Bool)

(assert (=> b!6836590 (= e!4123613 (= s!2326 (Cons!66136 (c!1272841 lt!2454844) Nil!66136)))))

(declare-fun b!6836591 () Bool)

(declare-fun res!2791965 () Bool)

(declare-fun e!4123614 () Bool)

(assert (=> b!6836591 (=> res!2791965 e!4123614)))

(assert (=> b!6836591 (= res!2791965 call!622659)))

(assert (=> b!6836591 (= e!4123609 e!4123614)))

(declare-fun b!6836592 () Bool)

(assert (=> b!6836592 (= e!4123610 e!4123609)))

(assert (=> b!6836592 (= c!1273006 ((_ is Star!16653) lt!2454844))))

(declare-fun b!6836593 () Bool)

(assert (=> b!6836593 (= e!4123610 e!4123611)))

(declare-fun res!2791966 () Bool)

(assert (=> b!6836593 (= res!2791966 (matchRSpec!3754 (regOne!33819 lt!2454844) s!2326))))

(assert (=> b!6836593 (=> res!2791966 e!4123611)))

(assert (=> b!6836594 (= e!4123614 call!622660)))

(assert (= (and d!2150290 c!1273004) b!6836589))

(assert (= (and d!2150290 (not c!1273004)) b!6836584))

(assert (= (and b!6836584 res!2791967) b!6836586))

(assert (= (and b!6836586 c!1273007) b!6836590))

(assert (= (and b!6836586 (not c!1273007)) b!6836587))

(assert (= (and b!6836587 c!1273005) b!6836593))

(assert (= (and b!6836587 (not c!1273005)) b!6836592))

(assert (= (and b!6836593 (not res!2791966)) b!6836585))

(assert (= (and b!6836592 c!1273006) b!6836591))

(assert (= (and b!6836592 (not c!1273006)) b!6836588))

(assert (= (and b!6836591 (not res!2791965)) b!6836594))

(assert (= (or b!6836594 b!6836588) bm!622654))

(assert (= (or b!6836589 b!6836591) bm!622655))

(declare-fun m!7582004 () Bool)

(assert (=> b!6836585 m!7582004))

(declare-fun m!7582006 () Bool)

(assert (=> bm!622654 m!7582006))

(assert (=> bm!622655 m!7581504))

(declare-fun m!7582008 () Bool)

(assert (=> b!6836593 m!7582008))

(assert (=> b!6835984 d!2150290))

(declare-fun b!6836622 () Bool)

(declare-fun e!4123643 () Bool)

(assert (=> b!6836622 (= e!4123643 (not (= (head!13692 s!2326) (c!1272841 lt!2454844))))))

(declare-fun d!2150292 () Bool)

(declare-fun e!4123640 () Bool)

(assert (=> d!2150292 e!4123640))

(declare-fun c!1273016 () Bool)

(assert (=> d!2150292 (= c!1273016 ((_ is EmptyExpr!16653) lt!2454844))))

(declare-fun lt!2454996 () Bool)

(declare-fun e!4123639 () Bool)

(assert (=> d!2150292 (= lt!2454996 e!4123639)))

(declare-fun c!1273014 () Bool)

(assert (=> d!2150292 (= c!1273014 (isEmpty!38522 s!2326))))

(assert (=> d!2150292 (validRegex!8389 lt!2454844)))

(assert (=> d!2150292 (= (matchR!8836 lt!2454844 s!2326) lt!2454996)))

(declare-fun b!6836623 () Bool)

(declare-fun e!4123642 () Bool)

(assert (=> b!6836623 (= e!4123642 e!4123643)))

(declare-fun res!2791987 () Bool)

(assert (=> b!6836623 (=> res!2791987 e!4123643)))

(declare-fun call!622670 () Bool)

(assert (=> b!6836623 (= res!2791987 call!622670)))

(declare-fun b!6836624 () Bool)

(declare-fun res!2791986 () Bool)

(declare-fun e!4123638 () Bool)

(assert (=> b!6836624 (=> res!2791986 e!4123638)))

(assert (=> b!6836624 (= res!2791986 (not ((_ is ElementMatch!16653) lt!2454844)))))

(declare-fun e!4123641 () Bool)

(assert (=> b!6836624 (= e!4123641 e!4123638)))

(declare-fun b!6836625 () Bool)

(assert (=> b!6836625 (= e!4123640 e!4123641)))

(declare-fun c!1273015 () Bool)

(assert (=> b!6836625 (= c!1273015 ((_ is EmptyLang!16653) lt!2454844))))

(declare-fun b!6836626 () Bool)

(assert (=> b!6836626 (= e!4123641 (not lt!2454996))))

(declare-fun b!6836627 () Bool)

(declare-fun res!2791990 () Bool)

(declare-fun e!4123637 () Bool)

(assert (=> b!6836627 (=> (not res!2791990) (not e!4123637))))

(assert (=> b!6836627 (= res!2791990 (isEmpty!38522 (tail!12777 s!2326)))))

(declare-fun b!6836628 () Bool)

(assert (=> b!6836628 (= e!4123639 (matchR!8836 (derivativeStep!5305 lt!2454844 (head!13692 s!2326)) (tail!12777 s!2326)))))

(declare-fun b!6836629 () Bool)

(declare-fun res!2791984 () Bool)

(assert (=> b!6836629 (=> res!2791984 e!4123638)))

(assert (=> b!6836629 (= res!2791984 e!4123637)))

(declare-fun res!2791983 () Bool)

(assert (=> b!6836629 (=> (not res!2791983) (not e!4123637))))

(assert (=> b!6836629 (= res!2791983 lt!2454996)))

(declare-fun bm!622665 () Bool)

(assert (=> bm!622665 (= call!622670 (isEmpty!38522 s!2326))))

(declare-fun b!6836630 () Bool)

(declare-fun res!2791985 () Bool)

(assert (=> b!6836630 (=> res!2791985 e!4123643)))

(assert (=> b!6836630 (= res!2791985 (not (isEmpty!38522 (tail!12777 s!2326))))))

(declare-fun b!6836631 () Bool)

(assert (=> b!6836631 (= e!4123640 (= lt!2454996 call!622670))))

(declare-fun b!6836632 () Bool)

(assert (=> b!6836632 (= e!4123637 (= (head!13692 s!2326) (c!1272841 lt!2454844)))))

(declare-fun b!6836633 () Bool)

(declare-fun res!2791988 () Bool)

(assert (=> b!6836633 (=> (not res!2791988) (not e!4123637))))

(assert (=> b!6836633 (= res!2791988 (not call!622670))))

(declare-fun b!6836634 () Bool)

(assert (=> b!6836634 (= e!4123639 (nullable!6620 lt!2454844))))

(declare-fun b!6836635 () Bool)

(assert (=> b!6836635 (= e!4123638 e!4123642)))

(declare-fun res!2791989 () Bool)

(assert (=> b!6836635 (=> (not res!2791989) (not e!4123642))))

(assert (=> b!6836635 (= res!2791989 (not lt!2454996))))

(assert (= (and d!2150292 c!1273014) b!6836634))

(assert (= (and d!2150292 (not c!1273014)) b!6836628))

(assert (= (and d!2150292 c!1273016) b!6836631))

(assert (= (and d!2150292 (not c!1273016)) b!6836625))

(assert (= (and b!6836625 c!1273015) b!6836626))

(assert (= (and b!6836625 (not c!1273015)) b!6836624))

(assert (= (and b!6836624 (not res!2791986)) b!6836629))

(assert (= (and b!6836629 res!2791983) b!6836633))

(assert (= (and b!6836633 res!2791988) b!6836627))

(assert (= (and b!6836627 res!2791990) b!6836632))

(assert (= (and b!6836629 (not res!2791984)) b!6836635))

(assert (= (and b!6836635 res!2791989) b!6836623))

(assert (= (and b!6836623 (not res!2791987)) b!6836630))

(assert (= (and b!6836630 (not res!2791985)) b!6836622))

(assert (= (or b!6836631 b!6836623 b!6836633) bm!622665))

(assert (=> b!6836628 m!7581878))

(assert (=> b!6836628 m!7581878))

(declare-fun m!7582026 () Bool)

(assert (=> b!6836628 m!7582026))

(assert (=> b!6836628 m!7581882))

(assert (=> b!6836628 m!7582026))

(assert (=> b!6836628 m!7581882))

(declare-fun m!7582028 () Bool)

(assert (=> b!6836628 m!7582028))

(assert (=> b!6836632 m!7581878))

(declare-fun m!7582030 () Bool)

(assert (=> b!6836634 m!7582030))

(assert (=> b!6836627 m!7581882))

(assert (=> b!6836627 m!7581882))

(assert (=> b!6836627 m!7581888))

(assert (=> b!6836622 m!7581878))

(assert (=> b!6836630 m!7581882))

(assert (=> b!6836630 m!7581882))

(assert (=> b!6836630 m!7581888))

(assert (=> d!2150292 m!7581504))

(declare-fun m!7582038 () Bool)

(assert (=> d!2150292 m!7582038))

(assert (=> bm!622665 m!7581504))

(assert (=> b!6835984 d!2150292))

(declare-fun d!2150300 () Bool)

(assert (=> d!2150300 (= (matchR!8836 lt!2454844 s!2326) (matchRSpec!3754 lt!2454844 s!2326))))

(declare-fun lt!2454998 () Unit!160003)

(assert (=> d!2150300 (= lt!2454998 (choose!50978 lt!2454844 s!2326))))

(assert (=> d!2150300 (validRegex!8389 lt!2454844)))

(assert (=> d!2150300 (= (mainMatchTheorem!3754 lt!2454844 s!2326) lt!2454998)))

(declare-fun bs!1828573 () Bool)

(assert (= bs!1828573 d!2150300))

(assert (=> bs!1828573 m!7581476))

(assert (=> bs!1828573 m!7581474))

(declare-fun m!7582046 () Bool)

(assert (=> bs!1828573 m!7582046))

(assert (=> bs!1828573 m!7582038))

(assert (=> b!6835984 d!2150300))

(declare-fun bs!1828601 () Bool)

(declare-fun d!2150304 () Bool)

(assert (= bs!1828601 (and d!2150304 b!6835982)))

(declare-fun lambda!386623 () Int)

(assert (=> bs!1828601 (= lambda!386623 lambda!386547)))

(declare-fun bs!1828602 () Bool)

(assert (= bs!1828602 (and d!2150304 d!2150244)))

(assert (=> bs!1828602 (= lambda!386623 lambda!386583)))

(declare-fun b!6836687 () Bool)

(declare-fun e!4123674 () Regex!16653)

(declare-fun e!4123676 () Regex!16653)

(assert (=> b!6836687 (= e!4123674 e!4123676)))

(declare-fun c!1273040 () Bool)

(assert (=> b!6836687 (= c!1273040 ((_ is Cons!66134) (exprs!6537 (h!72583 zl!343))))))

(declare-fun b!6836688 () Bool)

(declare-fun e!4123679 () Bool)

(declare-fun lt!2455001 () Regex!16653)

(declare-fun isConcat!1522 (Regex!16653) Bool)

(assert (=> b!6836688 (= e!4123679 (isConcat!1522 lt!2455001))))

(declare-fun b!6836689 () Bool)

(declare-fun e!4123675 () Bool)

(declare-fun e!4123677 () Bool)

(assert (=> b!6836689 (= e!4123675 e!4123677)))

(declare-fun c!1273041 () Bool)

(declare-fun isEmpty!38526 (List!66258) Bool)

(assert (=> b!6836689 (= c!1273041 (isEmpty!38526 (exprs!6537 (h!72583 zl!343))))))

(assert (=> d!2150304 e!4123675))

(declare-fun res!2792000 () Bool)

(assert (=> d!2150304 (=> (not res!2792000) (not e!4123675))))

(assert (=> d!2150304 (= res!2792000 (validRegex!8389 lt!2455001))))

(assert (=> d!2150304 (= lt!2455001 e!4123674)))

(declare-fun c!1273039 () Bool)

(declare-fun e!4123678 () Bool)

(assert (=> d!2150304 (= c!1273039 e!4123678)))

(declare-fun res!2792001 () Bool)

(assert (=> d!2150304 (=> (not res!2792001) (not e!4123678))))

(assert (=> d!2150304 (= res!2792001 ((_ is Cons!66134) (exprs!6537 (h!72583 zl!343))))))

(assert (=> d!2150304 (forall!15833 (exprs!6537 (h!72583 zl!343)) lambda!386623)))

(assert (=> d!2150304 (= (generalisedConcat!2250 (exprs!6537 (h!72583 zl!343))) lt!2455001)))

(declare-fun b!6836690 () Bool)

(assert (=> b!6836690 (= e!4123674 (h!72582 (exprs!6537 (h!72583 zl!343))))))

(declare-fun b!6836691 () Bool)

(declare-fun head!13694 (List!66258) Regex!16653)

(assert (=> b!6836691 (= e!4123679 (= lt!2455001 (head!13694 (exprs!6537 (h!72583 zl!343)))))))

(declare-fun b!6836692 () Bool)

(declare-fun isEmptyExpr!1999 (Regex!16653) Bool)

(assert (=> b!6836692 (= e!4123677 (isEmptyExpr!1999 lt!2455001))))

(declare-fun b!6836693 () Bool)

(assert (=> b!6836693 (= e!4123676 EmptyExpr!16653)))

(declare-fun b!6836694 () Bool)

(assert (=> b!6836694 (= e!4123677 e!4123679)))

(declare-fun c!1273038 () Bool)

(declare-fun tail!12779 (List!66258) List!66258)

(assert (=> b!6836694 (= c!1273038 (isEmpty!38526 (tail!12779 (exprs!6537 (h!72583 zl!343)))))))

(declare-fun b!6836695 () Bool)

(assert (=> b!6836695 (= e!4123676 (Concat!25498 (h!72582 (exprs!6537 (h!72583 zl!343))) (generalisedConcat!2250 (t!380001 (exprs!6537 (h!72583 zl!343))))))))

(declare-fun b!6836696 () Bool)

(assert (=> b!6836696 (= e!4123678 (isEmpty!38526 (t!380001 (exprs!6537 (h!72583 zl!343)))))))

(assert (= (and d!2150304 res!2792001) b!6836696))

(assert (= (and d!2150304 c!1273039) b!6836690))

(assert (= (and d!2150304 (not c!1273039)) b!6836687))

(assert (= (and b!6836687 c!1273040) b!6836695))

(assert (= (and b!6836687 (not c!1273040)) b!6836693))

(assert (= (and d!2150304 res!2792000) b!6836689))

(assert (= (and b!6836689 c!1273041) b!6836692))

(assert (= (and b!6836689 (not c!1273041)) b!6836694))

(assert (= (and b!6836694 c!1273038) b!6836691))

(assert (= (and b!6836694 (not c!1273038)) b!6836688))

(declare-fun m!7582080 () Bool)

(assert (=> b!6836688 m!7582080))

(declare-fun m!7582082 () Bool)

(assert (=> b!6836689 m!7582082))

(declare-fun m!7582084 () Bool)

(assert (=> b!6836691 m!7582084))

(declare-fun m!7582086 () Bool)

(assert (=> b!6836695 m!7582086))

(declare-fun m!7582088 () Bool)

(assert (=> b!6836692 m!7582088))

(declare-fun m!7582090 () Bool)

(assert (=> b!6836696 m!7582090))

(declare-fun m!7582092 () Bool)

(assert (=> d!2150304 m!7582092))

(declare-fun m!7582094 () Bool)

(assert (=> d!2150304 m!7582094))

(declare-fun m!7582096 () Bool)

(assert (=> b!6836694 m!7582096))

(assert (=> b!6836694 m!7582096))

(declare-fun m!7582098 () Bool)

(assert (=> b!6836694 m!7582098))

(assert (=> b!6835975 d!2150304))

(declare-fun bs!1828604 () Bool)

(declare-fun d!2150320 () Bool)

(assert (= bs!1828604 (and d!2150320 b!6835982)))

(declare-fun lambda!386624 () Int)

(assert (=> bs!1828604 (= lambda!386624 lambda!386547)))

(declare-fun bs!1828605 () Bool)

(assert (= bs!1828605 (and d!2150320 d!2150244)))

(assert (=> bs!1828605 (= lambda!386624 lambda!386583)))

(declare-fun bs!1828606 () Bool)

(assert (= bs!1828606 (and d!2150320 d!2150304)))

(assert (=> bs!1828606 (= lambda!386624 lambda!386623)))

(assert (=> d!2150320 (= (inv!84879 (h!72583 zl!343)) (forall!15833 (exprs!6537 (h!72583 zl!343)) lambda!386624))))

(declare-fun bs!1828607 () Bool)

(assert (= bs!1828607 d!2150320))

(declare-fun m!7582102 () Bool)

(assert (=> bs!1828607 m!7582102))

(assert (=> b!6836005 d!2150320))

(declare-fun bs!1828613 () Bool)

(declare-fun d!2150322 () Bool)

(assert (= bs!1828613 (and d!2150322 b!6835982)))

(declare-fun lambda!386627 () Int)

(assert (=> bs!1828613 (= lambda!386627 lambda!386547)))

(declare-fun bs!1828614 () Bool)

(assert (= bs!1828614 (and d!2150322 d!2150244)))

(assert (=> bs!1828614 (= lambda!386627 lambda!386583)))

(declare-fun bs!1828615 () Bool)

(assert (= bs!1828615 (and d!2150322 d!2150304)))

(assert (=> bs!1828615 (= lambda!386627 lambda!386623)))

(declare-fun bs!1828616 () Bool)

(assert (= bs!1828616 (and d!2150322 d!2150320)))

(assert (=> bs!1828616 (= lambda!386627 lambda!386624)))

(declare-fun b!6836785 () Bool)

(declare-fun e!4123724 () Regex!16653)

(assert (=> b!6836785 (= e!4123724 (h!72582 (unfocusZipperList!2074 zl!343)))))

(declare-fun b!6836786 () Bool)

(declare-fun e!4123727 () Bool)

(declare-fun lt!2455007 () Regex!16653)

(assert (=> b!6836786 (= e!4123727 (= lt!2455007 (head!13694 (unfocusZipperList!2074 zl!343))))))

(declare-fun b!6836787 () Bool)

(declare-fun e!4123723 () Bool)

(assert (=> b!6836787 (= e!4123723 (isEmpty!38526 (t!380001 (unfocusZipperList!2074 zl!343))))))

(declare-fun b!6836788 () Bool)

(declare-fun e!4123722 () Bool)

(declare-fun e!4123725 () Bool)

(assert (=> b!6836788 (= e!4123722 e!4123725)))

(declare-fun c!1273053 () Bool)

(assert (=> b!6836788 (= c!1273053 (isEmpty!38526 (unfocusZipperList!2074 zl!343)))))

(declare-fun b!6836789 () Bool)

(declare-fun isUnion!1437 (Regex!16653) Bool)

(assert (=> b!6836789 (= e!4123727 (isUnion!1437 lt!2455007))))

(declare-fun b!6836790 () Bool)

(declare-fun e!4123726 () Regex!16653)

(assert (=> b!6836790 (= e!4123726 (Union!16653 (h!72582 (unfocusZipperList!2074 zl!343)) (generalisedUnion!2497 (t!380001 (unfocusZipperList!2074 zl!343)))))))

(declare-fun b!6836791 () Bool)

(assert (=> b!6836791 (= e!4123726 EmptyLang!16653)))

(assert (=> d!2150322 e!4123722))

(declare-fun res!2792015 () Bool)

(assert (=> d!2150322 (=> (not res!2792015) (not e!4123722))))

(assert (=> d!2150322 (= res!2792015 (validRegex!8389 lt!2455007))))

(assert (=> d!2150322 (= lt!2455007 e!4123724)))

(declare-fun c!1273056 () Bool)

(assert (=> d!2150322 (= c!1273056 e!4123723)))

(declare-fun res!2792014 () Bool)

(assert (=> d!2150322 (=> (not res!2792014) (not e!4123723))))

(assert (=> d!2150322 (= res!2792014 ((_ is Cons!66134) (unfocusZipperList!2074 zl!343)))))

(assert (=> d!2150322 (forall!15833 (unfocusZipperList!2074 zl!343) lambda!386627)))

(assert (=> d!2150322 (= (generalisedUnion!2497 (unfocusZipperList!2074 zl!343)) lt!2455007)))

(declare-fun b!6836792 () Bool)

(assert (=> b!6836792 (= e!4123724 e!4123726)))

(declare-fun c!1273055 () Bool)

(assert (=> b!6836792 (= c!1273055 ((_ is Cons!66134) (unfocusZipperList!2074 zl!343)))))

(declare-fun b!6836793 () Bool)

(declare-fun isEmptyLang!2007 (Regex!16653) Bool)

(assert (=> b!6836793 (= e!4123725 (isEmptyLang!2007 lt!2455007))))

(declare-fun b!6836794 () Bool)

(assert (=> b!6836794 (= e!4123725 e!4123727)))

(declare-fun c!1273054 () Bool)

(assert (=> b!6836794 (= c!1273054 (isEmpty!38526 (tail!12779 (unfocusZipperList!2074 zl!343))))))

(assert (= (and d!2150322 res!2792014) b!6836787))

(assert (= (and d!2150322 c!1273056) b!6836785))

(assert (= (and d!2150322 (not c!1273056)) b!6836792))

(assert (= (and b!6836792 c!1273055) b!6836790))

(assert (= (and b!6836792 (not c!1273055)) b!6836791))

(assert (= (and d!2150322 res!2792015) b!6836788))

(assert (= (and b!6836788 c!1273053) b!6836793))

(assert (= (and b!6836788 (not c!1273053)) b!6836794))

(assert (= (and b!6836794 c!1273054) b!6836786))

(assert (= (and b!6836794 (not c!1273054)) b!6836789))

(assert (=> b!6836794 m!7581396))

(declare-fun m!7582112 () Bool)

(assert (=> b!6836794 m!7582112))

(assert (=> b!6836794 m!7582112))

(declare-fun m!7582114 () Bool)

(assert (=> b!6836794 m!7582114))

(declare-fun m!7582116 () Bool)

(assert (=> d!2150322 m!7582116))

(assert (=> d!2150322 m!7581396))

(declare-fun m!7582118 () Bool)

(assert (=> d!2150322 m!7582118))

(declare-fun m!7582120 () Bool)

(assert (=> b!6836793 m!7582120))

(declare-fun m!7582122 () Bool)

(assert (=> b!6836789 m!7582122))

(assert (=> b!6836786 m!7581396))

(declare-fun m!7582124 () Bool)

(assert (=> b!6836786 m!7582124))

(declare-fun m!7582126 () Bool)

(assert (=> b!6836790 m!7582126))

(declare-fun m!7582128 () Bool)

(assert (=> b!6836787 m!7582128))

(assert (=> b!6836788 m!7581396))

(declare-fun m!7582130 () Bool)

(assert (=> b!6836788 m!7582130))

(assert (=> b!6835993 d!2150322))

(declare-fun bs!1828617 () Bool)

(declare-fun d!2150334 () Bool)

(assert (= bs!1828617 (and d!2150334 b!6835982)))

(declare-fun lambda!386630 () Int)

(assert (=> bs!1828617 (= lambda!386630 lambda!386547)))

(declare-fun bs!1828618 () Bool)

(assert (= bs!1828618 (and d!2150334 d!2150304)))

(assert (=> bs!1828618 (= lambda!386630 lambda!386623)))

(declare-fun bs!1828619 () Bool)

(assert (= bs!1828619 (and d!2150334 d!2150320)))

(assert (=> bs!1828619 (= lambda!386630 lambda!386624)))

(declare-fun bs!1828620 () Bool)

(assert (= bs!1828620 (and d!2150334 d!2150244)))

(assert (=> bs!1828620 (= lambda!386630 lambda!386583)))

(declare-fun bs!1828621 () Bool)

(assert (= bs!1828621 (and d!2150334 d!2150322)))

(assert (=> bs!1828621 (= lambda!386630 lambda!386627)))

(declare-fun lt!2455010 () List!66258)

(assert (=> d!2150334 (forall!15833 lt!2455010 lambda!386630)))

(declare-fun e!4123730 () List!66258)

(assert (=> d!2150334 (= lt!2455010 e!4123730)))

(declare-fun c!1273059 () Bool)

(assert (=> d!2150334 (= c!1273059 ((_ is Cons!66135) zl!343))))

(assert (=> d!2150334 (= (unfocusZipperList!2074 zl!343) lt!2455010)))

(declare-fun b!6836799 () Bool)

(assert (=> b!6836799 (= e!4123730 (Cons!66134 (generalisedConcat!2250 (exprs!6537 (h!72583 zl!343))) (unfocusZipperList!2074 (t!380002 zl!343))))))

(declare-fun b!6836800 () Bool)

(assert (=> b!6836800 (= e!4123730 Nil!66134)))

(assert (= (and d!2150334 c!1273059) b!6836799))

(assert (= (and d!2150334 (not c!1273059)) b!6836800))

(declare-fun m!7582132 () Bool)

(assert (=> d!2150334 m!7582132))

(assert (=> b!6836799 m!7581460))

(declare-fun m!7582134 () Bool)

(assert (=> b!6836799 m!7582134))

(assert (=> b!6835993 d!2150334))

(declare-fun d!2150336 () Bool)

(declare-fun c!1273062 () Bool)

(assert (=> d!2150336 (= c!1273062 (isEmpty!38522 s!2326))))

(declare-fun e!4123733 () Bool)

(assert (=> d!2150336 (= (matchZipper!2639 z!1189 s!2326) e!4123733)))

(declare-fun b!6836805 () Bool)

(declare-fun nullableZipper!2348 ((InoxSet Context!12074)) Bool)

(assert (=> b!6836805 (= e!4123733 (nullableZipper!2348 z!1189))))

(declare-fun b!6836806 () Bool)

(assert (=> b!6836806 (= e!4123733 (matchZipper!2639 (derivationStepZipper!2597 z!1189 (head!13692 s!2326)) (tail!12777 s!2326)))))

(assert (= (and d!2150336 c!1273062) b!6836805))

(assert (= (and d!2150336 (not c!1273062)) b!6836806))

(assert (=> d!2150336 m!7581504))

(declare-fun m!7582136 () Bool)

(assert (=> b!6836805 m!7582136))

(assert (=> b!6836806 m!7581878))

(assert (=> b!6836806 m!7581878))

(declare-fun m!7582138 () Bool)

(assert (=> b!6836806 m!7582138))

(assert (=> b!6836806 m!7581882))

(assert (=> b!6836806 m!7582138))

(assert (=> b!6836806 m!7581882))

(declare-fun m!7582140 () Bool)

(assert (=> b!6836806 m!7582140))

(assert (=> b!6835994 d!2150336))

(declare-fun d!2150338 () Bool)

(declare-fun dynLambda!26426 (Int Context!12074) Context!12074)

(assert (=> d!2150338 (= (map!15140 lt!2454839 lambda!386546) (store ((as const (Array Context!12074 Bool)) false) (dynLambda!26426 lambda!386546 lt!2454859) true))))

(declare-fun lt!2455013 () Unit!160003)

(declare-fun choose!50988 ((InoxSet Context!12074) Context!12074 Int) Unit!160003)

(assert (=> d!2150338 (= lt!2455013 (choose!50988 lt!2454839 lt!2454859 lambda!386546))))

(assert (=> d!2150338 (= lt!2454839 (store ((as const (Array Context!12074 Bool)) false) lt!2454859 true))))

(assert (=> d!2150338 (= (lemmaMapOnSingletonSet!288 lt!2454839 lt!2454859 lambda!386546) lt!2455013)))

(declare-fun b_lambda!257905 () Bool)

(assert (=> (not b_lambda!257905) (not d!2150338)))

(declare-fun bs!1828622 () Bool)

(assert (= bs!1828622 d!2150338))

(declare-fun m!7582142 () Bool)

(assert (=> bs!1828622 m!7582142))

(assert (=> bs!1828622 m!7581536))

(assert (=> bs!1828622 m!7581428))

(declare-fun m!7582144 () Bool)

(assert (=> bs!1828622 m!7582144))

(declare-fun m!7582146 () Bool)

(assert (=> bs!1828622 m!7582146))

(assert (=> bs!1828622 m!7582144))

(assert (=> b!6835982 d!2150338))

(declare-fun d!2150340 () Bool)

(declare-fun c!1273063 () Bool)

(assert (=> d!2150340 (= c!1273063 (isEmpty!38522 (_1!36931 lt!2454843)))))

(declare-fun e!4123734 () Bool)

(assert (=> d!2150340 (= (matchZipper!2639 lt!2454839 (_1!36931 lt!2454843)) e!4123734)))

(declare-fun b!6836807 () Bool)

(assert (=> b!6836807 (= e!4123734 (nullableZipper!2348 lt!2454839))))

(declare-fun b!6836808 () Bool)

(assert (=> b!6836808 (= e!4123734 (matchZipper!2639 (derivationStepZipper!2597 lt!2454839 (head!13692 (_1!36931 lt!2454843))) (tail!12777 (_1!36931 lt!2454843))))))

(assert (= (and d!2150340 c!1273063) b!6836807))

(assert (= (and d!2150340 (not c!1273063)) b!6836808))

(declare-fun m!7582148 () Bool)

(assert (=> d!2150340 m!7582148))

(declare-fun m!7582150 () Bool)

(assert (=> b!6836807 m!7582150))

(declare-fun m!7582152 () Bool)

(assert (=> b!6836808 m!7582152))

(assert (=> b!6836808 m!7582152))

(declare-fun m!7582154 () Bool)

(assert (=> b!6836808 m!7582154))

(declare-fun m!7582156 () Bool)

(assert (=> b!6836808 m!7582156))

(assert (=> b!6836808 m!7582154))

(assert (=> b!6836808 m!7582156))

(declare-fun m!7582158 () Bool)

(assert (=> b!6836808 m!7582158))

(assert (=> b!6835982 d!2150340))

(declare-fun b!6836809 () Bool)

(declare-fun e!4123741 () Bool)

(assert (=> b!6836809 (= e!4123741 (not (= (head!13692 (_1!36931 lt!2454843)) (c!1272841 (reg!16982 r!7292)))))))

(declare-fun d!2150342 () Bool)

(declare-fun e!4123738 () Bool)

(assert (=> d!2150342 e!4123738))

(declare-fun c!1273066 () Bool)

(assert (=> d!2150342 (= c!1273066 ((_ is EmptyExpr!16653) (reg!16982 r!7292)))))

(declare-fun lt!2455014 () Bool)

(declare-fun e!4123737 () Bool)

(assert (=> d!2150342 (= lt!2455014 e!4123737)))

(declare-fun c!1273064 () Bool)

(assert (=> d!2150342 (= c!1273064 (isEmpty!38522 (_1!36931 lt!2454843)))))

(assert (=> d!2150342 (validRegex!8389 (reg!16982 r!7292))))

(assert (=> d!2150342 (= (matchR!8836 (reg!16982 r!7292) (_1!36931 lt!2454843)) lt!2455014)))

(declare-fun b!6836810 () Bool)

(declare-fun e!4123740 () Bool)

(assert (=> b!6836810 (= e!4123740 e!4123741)))

(declare-fun res!2792020 () Bool)

(assert (=> b!6836810 (=> res!2792020 e!4123741)))

(declare-fun call!622681 () Bool)

(assert (=> b!6836810 (= res!2792020 call!622681)))

(declare-fun b!6836811 () Bool)

(declare-fun res!2792019 () Bool)

(declare-fun e!4123736 () Bool)

(assert (=> b!6836811 (=> res!2792019 e!4123736)))

(assert (=> b!6836811 (= res!2792019 (not ((_ is ElementMatch!16653) (reg!16982 r!7292))))))

(declare-fun e!4123739 () Bool)

(assert (=> b!6836811 (= e!4123739 e!4123736)))

(declare-fun b!6836812 () Bool)

(assert (=> b!6836812 (= e!4123738 e!4123739)))

(declare-fun c!1273065 () Bool)

(assert (=> b!6836812 (= c!1273065 ((_ is EmptyLang!16653) (reg!16982 r!7292)))))

(declare-fun b!6836813 () Bool)

(assert (=> b!6836813 (= e!4123739 (not lt!2455014))))

(declare-fun b!6836814 () Bool)

(declare-fun res!2792023 () Bool)

(declare-fun e!4123735 () Bool)

(assert (=> b!6836814 (=> (not res!2792023) (not e!4123735))))

(assert (=> b!6836814 (= res!2792023 (isEmpty!38522 (tail!12777 (_1!36931 lt!2454843))))))

(declare-fun b!6836815 () Bool)

(assert (=> b!6836815 (= e!4123737 (matchR!8836 (derivativeStep!5305 (reg!16982 r!7292) (head!13692 (_1!36931 lt!2454843))) (tail!12777 (_1!36931 lt!2454843))))))

(declare-fun b!6836816 () Bool)

(declare-fun res!2792017 () Bool)

(assert (=> b!6836816 (=> res!2792017 e!4123736)))

(assert (=> b!6836816 (= res!2792017 e!4123735)))

(declare-fun res!2792016 () Bool)

(assert (=> b!6836816 (=> (not res!2792016) (not e!4123735))))

(assert (=> b!6836816 (= res!2792016 lt!2455014)))

(declare-fun bm!622676 () Bool)

(assert (=> bm!622676 (= call!622681 (isEmpty!38522 (_1!36931 lt!2454843)))))

(declare-fun b!6836817 () Bool)

(declare-fun res!2792018 () Bool)

(assert (=> b!6836817 (=> res!2792018 e!4123741)))

(assert (=> b!6836817 (= res!2792018 (not (isEmpty!38522 (tail!12777 (_1!36931 lt!2454843)))))))

(declare-fun b!6836818 () Bool)

(assert (=> b!6836818 (= e!4123738 (= lt!2455014 call!622681))))

(declare-fun b!6836819 () Bool)

(assert (=> b!6836819 (= e!4123735 (= (head!13692 (_1!36931 lt!2454843)) (c!1272841 (reg!16982 r!7292))))))

(declare-fun b!6836820 () Bool)

(declare-fun res!2792021 () Bool)

(assert (=> b!6836820 (=> (not res!2792021) (not e!4123735))))

(assert (=> b!6836820 (= res!2792021 (not call!622681))))

(declare-fun b!6836821 () Bool)

(assert (=> b!6836821 (= e!4123737 (nullable!6620 (reg!16982 r!7292)))))

(declare-fun b!6836822 () Bool)

(assert (=> b!6836822 (= e!4123736 e!4123740)))

(declare-fun res!2792022 () Bool)

(assert (=> b!6836822 (=> (not res!2792022) (not e!4123740))))

(assert (=> b!6836822 (= res!2792022 (not lt!2455014))))

(assert (= (and d!2150342 c!1273064) b!6836821))

(assert (= (and d!2150342 (not c!1273064)) b!6836815))

(assert (= (and d!2150342 c!1273066) b!6836818))

(assert (= (and d!2150342 (not c!1273066)) b!6836812))

(assert (= (and b!6836812 c!1273065) b!6836813))

(assert (= (and b!6836812 (not c!1273065)) b!6836811))

(assert (= (and b!6836811 (not res!2792019)) b!6836816))

(assert (= (and b!6836816 res!2792016) b!6836820))

(assert (= (and b!6836820 res!2792021) b!6836814))

(assert (= (and b!6836814 res!2792023) b!6836819))

(assert (= (and b!6836816 (not res!2792017)) b!6836822))

(assert (= (and b!6836822 res!2792022) b!6836810))

(assert (= (and b!6836810 (not res!2792020)) b!6836817))

(assert (= (and b!6836817 (not res!2792018)) b!6836809))

(assert (= (or b!6836818 b!6836810 b!6836820) bm!622676))

(assert (=> b!6836815 m!7582152))

(assert (=> b!6836815 m!7582152))

(declare-fun m!7582160 () Bool)

(assert (=> b!6836815 m!7582160))

(assert (=> b!6836815 m!7582156))

(assert (=> b!6836815 m!7582160))

(assert (=> b!6836815 m!7582156))

(declare-fun m!7582162 () Bool)

(assert (=> b!6836815 m!7582162))

(assert (=> b!6836819 m!7582152))

(declare-fun m!7582164 () Bool)

(assert (=> b!6836821 m!7582164))

(assert (=> b!6836814 m!7582156))

(assert (=> b!6836814 m!7582156))

(declare-fun m!7582166 () Bool)

(assert (=> b!6836814 m!7582166))

(assert (=> b!6836809 m!7582152))

(assert (=> b!6836817 m!7582156))

(assert (=> b!6836817 m!7582156))

(assert (=> b!6836817 m!7582166))

(assert (=> d!2150342 m!7582148))

(assert (=> d!2150342 m!7581932))

(assert (=> bm!622676 m!7582148))

(assert (=> b!6835982 d!2150342))

(declare-fun d!2150344 () Bool)

(assert (=> d!2150344 (= (matchR!8836 r!7292 (_2!36931 lt!2454843)) (matchZipper!2639 lt!2454858 (_2!36931 lt!2454843)))))

(declare-fun lt!2455017 () Unit!160003)

(declare-fun choose!50990 ((InoxSet Context!12074) List!66259 Regex!16653 List!66260) Unit!160003)

(assert (=> d!2150344 (= lt!2455017 (choose!50990 lt!2454858 lt!2454847 r!7292 (_2!36931 lt!2454843)))))

(assert (=> d!2150344 (validRegex!8389 r!7292)))

(assert (=> d!2150344 (= (theoremZipperRegexEquiv!955 lt!2454858 lt!2454847 r!7292 (_2!36931 lt!2454843)) lt!2455017)))

(declare-fun bs!1828623 () Bool)

(assert (= bs!1828623 d!2150344))

(assert (=> bs!1828623 m!7581408))

(assert (=> bs!1828623 m!7581442))

(declare-fun m!7582168 () Bool)

(assert (=> bs!1828623 m!7582168))

(assert (=> bs!1828623 m!7581480))

(assert (=> b!6835982 d!2150344))

(declare-fun b!6836823 () Bool)

(declare-fun e!4123748 () Bool)

(assert (=> b!6836823 (= e!4123748 (not (= (head!13692 lt!2454855) (c!1272841 lt!2454844))))))

(declare-fun d!2150346 () Bool)

(declare-fun e!4123745 () Bool)

(assert (=> d!2150346 e!4123745))

(declare-fun c!1273069 () Bool)

(assert (=> d!2150346 (= c!1273069 ((_ is EmptyExpr!16653) lt!2454844))))

(declare-fun lt!2455018 () Bool)

(declare-fun e!4123744 () Bool)

(assert (=> d!2150346 (= lt!2455018 e!4123744)))

(declare-fun c!1273067 () Bool)

(assert (=> d!2150346 (= c!1273067 (isEmpty!38522 lt!2454855))))

(assert (=> d!2150346 (validRegex!8389 lt!2454844)))

(assert (=> d!2150346 (= (matchR!8836 lt!2454844 lt!2454855) lt!2455018)))

(declare-fun b!6836824 () Bool)

(declare-fun e!4123747 () Bool)

(assert (=> b!6836824 (= e!4123747 e!4123748)))

(declare-fun res!2792028 () Bool)

(assert (=> b!6836824 (=> res!2792028 e!4123748)))

(declare-fun call!622682 () Bool)

(assert (=> b!6836824 (= res!2792028 call!622682)))

(declare-fun b!6836825 () Bool)

(declare-fun res!2792027 () Bool)

(declare-fun e!4123743 () Bool)

(assert (=> b!6836825 (=> res!2792027 e!4123743)))

(assert (=> b!6836825 (= res!2792027 (not ((_ is ElementMatch!16653) lt!2454844)))))

(declare-fun e!4123746 () Bool)

(assert (=> b!6836825 (= e!4123746 e!4123743)))

(declare-fun b!6836826 () Bool)

(assert (=> b!6836826 (= e!4123745 e!4123746)))

(declare-fun c!1273068 () Bool)

(assert (=> b!6836826 (= c!1273068 ((_ is EmptyLang!16653) lt!2454844))))

(declare-fun b!6836827 () Bool)

(assert (=> b!6836827 (= e!4123746 (not lt!2455018))))

(declare-fun b!6836828 () Bool)

(declare-fun res!2792031 () Bool)

(declare-fun e!4123742 () Bool)

(assert (=> b!6836828 (=> (not res!2792031) (not e!4123742))))

(assert (=> b!6836828 (= res!2792031 (isEmpty!38522 (tail!12777 lt!2454855)))))

(declare-fun b!6836829 () Bool)

(assert (=> b!6836829 (= e!4123744 (matchR!8836 (derivativeStep!5305 lt!2454844 (head!13692 lt!2454855)) (tail!12777 lt!2454855)))))

(declare-fun b!6836830 () Bool)

(declare-fun res!2792025 () Bool)

(assert (=> b!6836830 (=> res!2792025 e!4123743)))

(assert (=> b!6836830 (= res!2792025 e!4123742)))

(declare-fun res!2792024 () Bool)

(assert (=> b!6836830 (=> (not res!2792024) (not e!4123742))))

(assert (=> b!6836830 (= res!2792024 lt!2455018)))

(declare-fun bm!622677 () Bool)

(assert (=> bm!622677 (= call!622682 (isEmpty!38522 lt!2454855))))

(declare-fun b!6836831 () Bool)

(declare-fun res!2792026 () Bool)

(assert (=> b!6836831 (=> res!2792026 e!4123748)))

(assert (=> b!6836831 (= res!2792026 (not (isEmpty!38522 (tail!12777 lt!2454855))))))

(declare-fun b!6836832 () Bool)

(assert (=> b!6836832 (= e!4123745 (= lt!2455018 call!622682))))

(declare-fun b!6836833 () Bool)

(assert (=> b!6836833 (= e!4123742 (= (head!13692 lt!2454855) (c!1272841 lt!2454844)))))

(declare-fun b!6836834 () Bool)

(declare-fun res!2792029 () Bool)

(assert (=> b!6836834 (=> (not res!2792029) (not e!4123742))))

(assert (=> b!6836834 (= res!2792029 (not call!622682))))

(declare-fun b!6836835 () Bool)

(assert (=> b!6836835 (= e!4123744 (nullable!6620 lt!2454844))))

(declare-fun b!6836836 () Bool)

(assert (=> b!6836836 (= e!4123743 e!4123747)))

(declare-fun res!2792030 () Bool)

(assert (=> b!6836836 (=> (not res!2792030) (not e!4123747))))

(assert (=> b!6836836 (= res!2792030 (not lt!2455018))))

(assert (= (and d!2150346 c!1273067) b!6836835))

(assert (= (and d!2150346 (not c!1273067)) b!6836829))

(assert (= (and d!2150346 c!1273069) b!6836832))

(assert (= (and d!2150346 (not c!1273069)) b!6836826))

(assert (= (and b!6836826 c!1273068) b!6836827))

(assert (= (and b!6836826 (not c!1273068)) b!6836825))

(assert (= (and b!6836825 (not res!2792027)) b!6836830))

(assert (= (and b!6836830 res!2792024) b!6836834))

(assert (= (and b!6836834 res!2792029) b!6836828))

(assert (= (and b!6836828 res!2792031) b!6836833))

(assert (= (and b!6836830 (not res!2792025)) b!6836836))

(assert (= (and b!6836836 res!2792030) b!6836824))

(assert (= (and b!6836824 (not res!2792028)) b!6836831))

(assert (= (and b!6836831 (not res!2792026)) b!6836823))

(assert (= (or b!6836832 b!6836824 b!6836834) bm!622677))

(declare-fun m!7582170 () Bool)

(assert (=> b!6836829 m!7582170))

(assert (=> b!6836829 m!7582170))

(declare-fun m!7582172 () Bool)

(assert (=> b!6836829 m!7582172))

(declare-fun m!7582174 () Bool)

(assert (=> b!6836829 m!7582174))

(assert (=> b!6836829 m!7582172))

(assert (=> b!6836829 m!7582174))

(declare-fun m!7582176 () Bool)

(assert (=> b!6836829 m!7582176))

(assert (=> b!6836833 m!7582170))

(assert (=> b!6836835 m!7582030))

(assert (=> b!6836828 m!7582174))

(assert (=> b!6836828 m!7582174))

(declare-fun m!7582178 () Bool)

(assert (=> b!6836828 m!7582178))

(assert (=> b!6836823 m!7582170))

(assert (=> b!6836831 m!7582174))

(assert (=> b!6836831 m!7582174))

(assert (=> b!6836831 m!7582178))

(declare-fun m!7582180 () Bool)

(assert (=> d!2150346 m!7582180))

(assert (=> d!2150346 m!7582038))

(assert (=> bm!622677 m!7582180))

(assert (=> b!6835982 d!2150346))

(declare-fun d!2150348 () Bool)

(assert (=> d!2150348 (= (get!23049 lt!2454841) (v!52751 lt!2454841))))

(assert (=> b!6835982 d!2150348))

(declare-fun d!2150350 () Bool)

(assert (=> d!2150350 (= (isDefined!13243 lt!2454841) (not (isEmpty!38525 lt!2454841)))))

(declare-fun bs!1828624 () Bool)

(assert (= bs!1828624 d!2150350))

(declare-fun m!7582182 () Bool)

(assert (=> bs!1828624 m!7582182))

(assert (=> b!6835982 d!2150350))

(declare-fun d!2150352 () Bool)

(declare-fun c!1273070 () Bool)

(assert (=> d!2150352 (= c!1273070 (isEmpty!38522 (_2!36931 lt!2454843)))))

(declare-fun e!4123749 () Bool)

(assert (=> d!2150352 (= (matchZipper!2639 lt!2454858 (_2!36931 lt!2454843)) e!4123749)))

(declare-fun b!6836837 () Bool)

(assert (=> b!6836837 (= e!4123749 (nullableZipper!2348 lt!2454858))))

(declare-fun b!6836838 () Bool)

(assert (=> b!6836838 (= e!4123749 (matchZipper!2639 (derivationStepZipper!2597 lt!2454858 (head!13692 (_2!36931 lt!2454843))) (tail!12777 (_2!36931 lt!2454843))))))

(assert (= (and d!2150352 c!1273070) b!6836837))

(assert (= (and d!2150352 (not c!1273070)) b!6836838))

(declare-fun m!7582184 () Bool)

(assert (=> d!2150352 m!7582184))

(declare-fun m!7582186 () Bool)

(assert (=> b!6836837 m!7582186))

(declare-fun m!7582188 () Bool)

(assert (=> b!6836838 m!7582188))

(assert (=> b!6836838 m!7582188))

(declare-fun m!7582190 () Bool)

(assert (=> b!6836838 m!7582190))

(declare-fun m!7582192 () Bool)

(assert (=> b!6836838 m!7582192))

(assert (=> b!6836838 m!7582190))

(assert (=> b!6836838 m!7582192))

(declare-fun m!7582194 () Bool)

(assert (=> b!6836838 m!7582194))

(assert (=> b!6835982 d!2150352))

(declare-fun d!2150354 () Bool)

(declare-fun c!1273071 () Bool)

(assert (=> d!2150354 (= c!1273071 (isEmpty!38522 lt!2454855))))

(declare-fun e!4123750 () Bool)

(assert (=> d!2150354 (= (matchZipper!2639 (store ((as const (Array Context!12074 Bool)) false) (Context!12075 lt!2454867) true) lt!2454855) e!4123750)))

(declare-fun b!6836839 () Bool)

(assert (=> b!6836839 (= e!4123750 (nullableZipper!2348 (store ((as const (Array Context!12074 Bool)) false) (Context!12075 lt!2454867) true)))))

(declare-fun b!6836840 () Bool)

(assert (=> b!6836840 (= e!4123750 (matchZipper!2639 (derivationStepZipper!2597 (store ((as const (Array Context!12074 Bool)) false) (Context!12075 lt!2454867) true) (head!13692 lt!2454855)) (tail!12777 lt!2454855)))))

(assert (= (and d!2150354 c!1273071) b!6836839))

(assert (= (and d!2150354 (not c!1273071)) b!6836840))

(assert (=> d!2150354 m!7582180))

(assert (=> b!6836839 m!7581436))

(declare-fun m!7582196 () Bool)

(assert (=> b!6836839 m!7582196))

(assert (=> b!6836840 m!7582170))

(assert (=> b!6836840 m!7581436))

(assert (=> b!6836840 m!7582170))

(declare-fun m!7582198 () Bool)

(assert (=> b!6836840 m!7582198))

(assert (=> b!6836840 m!7582174))

(assert (=> b!6836840 m!7582198))

(assert (=> b!6836840 m!7582174))

(declare-fun m!7582200 () Bool)

(assert (=> b!6836840 m!7582200))

(assert (=> b!6835982 d!2150354))

(declare-fun b!6836859 () Bool)

(declare-fun e!4123763 () Option!16540)

(assert (=> b!6836859 (= e!4123763 (Some!16539 (tuple2!67257 Nil!66136 s!2326)))))

(declare-fun b!6836860 () Bool)

(declare-fun res!2792042 () Bool)

(declare-fun e!4123762 () Bool)

(assert (=> b!6836860 (=> (not res!2792042) (not e!4123762))))

(declare-fun lt!2455025 () Option!16540)

(assert (=> b!6836860 (= res!2792042 (matchZipper!2639 lt!2454858 (_2!36931 (get!23049 lt!2455025))))))

(declare-fun b!6836861 () Bool)

(declare-fun e!4123764 () Bool)

(assert (=> b!6836861 (= e!4123764 (not (isDefined!13243 lt!2455025)))))

(declare-fun b!6836862 () Bool)

(declare-fun e!4123765 () Bool)

(assert (=> b!6836862 (= e!4123765 (matchZipper!2639 lt!2454858 s!2326))))

(declare-fun d!2150356 () Bool)

(assert (=> d!2150356 e!4123764))

(declare-fun res!2792045 () Bool)

(assert (=> d!2150356 (=> res!2792045 e!4123764)))

(assert (=> d!2150356 (= res!2792045 e!4123762)))

(declare-fun res!2792043 () Bool)

(assert (=> d!2150356 (=> (not res!2792043) (not e!4123762))))

(assert (=> d!2150356 (= res!2792043 (isDefined!13243 lt!2455025))))

(assert (=> d!2150356 (= lt!2455025 e!4123763)))

(declare-fun c!1273076 () Bool)

(assert (=> d!2150356 (= c!1273076 e!4123765)))

(declare-fun res!2792044 () Bool)

(assert (=> d!2150356 (=> (not res!2792044) (not e!4123765))))

(assert (=> d!2150356 (= res!2792044 (matchZipper!2639 lt!2454839 Nil!66136))))

(assert (=> d!2150356 (= (++!14853 Nil!66136 s!2326) s!2326)))

(assert (=> d!2150356 (= (findConcatSeparationZippers!262 lt!2454839 lt!2454858 Nil!66136 s!2326 s!2326) lt!2455025)))

(declare-fun b!6836863 () Bool)

(assert (=> b!6836863 (= e!4123762 (= (++!14853 (_1!36931 (get!23049 lt!2455025)) (_2!36931 (get!23049 lt!2455025))) s!2326))))

(declare-fun b!6836864 () Bool)

(declare-fun e!4123761 () Option!16540)

(assert (=> b!6836864 (= e!4123761 None!16539)))

(declare-fun b!6836865 () Bool)

(assert (=> b!6836865 (= e!4123763 e!4123761)))

(declare-fun c!1273077 () Bool)

(assert (=> b!6836865 (= c!1273077 ((_ is Nil!66136) s!2326))))

(declare-fun b!6836866 () Bool)

(declare-fun res!2792046 () Bool)

(assert (=> b!6836866 (=> (not res!2792046) (not e!4123762))))

(assert (=> b!6836866 (= res!2792046 (matchZipper!2639 lt!2454839 (_1!36931 (get!23049 lt!2455025))))))

(declare-fun b!6836867 () Bool)

(declare-fun lt!2455027 () Unit!160003)

(declare-fun lt!2455026 () Unit!160003)

(assert (=> b!6836867 (= lt!2455027 lt!2455026)))

(assert (=> b!6836867 (= (++!14853 (++!14853 Nil!66136 (Cons!66136 (h!72584 s!2326) Nil!66136)) (t!380003 s!2326)) s!2326)))

(assert (=> b!6836867 (= lt!2455026 (lemmaMoveElementToOtherListKeepsConcatEq!2762 Nil!66136 (h!72584 s!2326) (t!380003 s!2326) s!2326))))

(assert (=> b!6836867 (= e!4123761 (findConcatSeparationZippers!262 lt!2454839 lt!2454858 (++!14853 Nil!66136 (Cons!66136 (h!72584 s!2326) Nil!66136)) (t!380003 s!2326) s!2326))))

(assert (= (and d!2150356 res!2792044) b!6836862))

(assert (= (and d!2150356 c!1273076) b!6836859))

(assert (= (and d!2150356 (not c!1273076)) b!6836865))

(assert (= (and b!6836865 c!1273077) b!6836864))

(assert (= (and b!6836865 (not c!1273077)) b!6836867))

(assert (= (and d!2150356 res!2792043) b!6836866))

(assert (= (and b!6836866 res!2792046) b!6836860))

(assert (= (and b!6836860 res!2792042) b!6836863))

(assert (= (and d!2150356 (not res!2792045)) b!6836861))

(declare-fun m!7582202 () Bool)

(assert (=> b!6836862 m!7582202))

(declare-fun m!7582204 () Bool)

(assert (=> d!2150356 m!7582204))

(declare-fun m!7582206 () Bool)

(assert (=> d!2150356 m!7582206))

(declare-fun m!7582208 () Bool)

(assert (=> d!2150356 m!7582208))

(declare-fun m!7582210 () Bool)

(assert (=> b!6836863 m!7582210))

(declare-fun m!7582212 () Bool)

(assert (=> b!6836863 m!7582212))

(assert (=> b!6836867 m!7581970))

(assert (=> b!6836867 m!7581970))

(assert (=> b!6836867 m!7581972))

(assert (=> b!6836867 m!7581974))

(assert (=> b!6836867 m!7581970))

(declare-fun m!7582214 () Bool)

(assert (=> b!6836867 m!7582214))

(assert (=> b!6836866 m!7582210))

(declare-fun m!7582216 () Bool)

(assert (=> b!6836866 m!7582216))

(assert (=> b!6836861 m!7582204))

(assert (=> b!6836860 m!7582210))

(declare-fun m!7582218 () Bool)

(assert (=> b!6836860 m!7582218))

(assert (=> b!6835982 d!2150356))

(declare-fun e!4123770 () Bool)

(declare-fun lt!2455030 () List!66258)

(declare-fun b!6836879 () Bool)

(assert (=> b!6836879 (= e!4123770 (or (not (= lt!2454836 Nil!66134)) (= lt!2455030 lt!2454838)))))

(declare-fun d!2150358 () Bool)

(assert (=> d!2150358 e!4123770))

(declare-fun res!2792052 () Bool)

(assert (=> d!2150358 (=> (not res!2792052) (not e!4123770))))

(declare-fun content!12960 (List!66258) (InoxSet Regex!16653))

(assert (=> d!2150358 (= res!2792052 (= (content!12960 lt!2455030) ((_ map or) (content!12960 lt!2454838) (content!12960 lt!2454836))))))

(declare-fun e!4123771 () List!66258)

(assert (=> d!2150358 (= lt!2455030 e!4123771)))

(declare-fun c!1273080 () Bool)

(assert (=> d!2150358 (= c!1273080 ((_ is Nil!66134) lt!2454838))))

(assert (=> d!2150358 (= (++!14852 lt!2454838 lt!2454836) lt!2455030)))

(declare-fun b!6836878 () Bool)

(declare-fun res!2792051 () Bool)

(assert (=> b!6836878 (=> (not res!2792051) (not e!4123770))))

(declare-fun size!40706 (List!66258) Int)

(assert (=> b!6836878 (= res!2792051 (= (size!40706 lt!2455030) (+ (size!40706 lt!2454838) (size!40706 lt!2454836))))))

(declare-fun b!6836877 () Bool)

(assert (=> b!6836877 (= e!4123771 (Cons!66134 (h!72582 lt!2454838) (++!14852 (t!380001 lt!2454838) lt!2454836)))))

(declare-fun b!6836876 () Bool)

(assert (=> b!6836876 (= e!4123771 lt!2454836)))

(assert (= (and d!2150358 c!1273080) b!6836876))

(assert (= (and d!2150358 (not c!1273080)) b!6836877))

(assert (= (and d!2150358 res!2792052) b!6836878))

(assert (= (and b!6836878 res!2792051) b!6836879))

(declare-fun m!7582220 () Bool)

(assert (=> d!2150358 m!7582220))

(declare-fun m!7582222 () Bool)

(assert (=> d!2150358 m!7582222))

(declare-fun m!7582224 () Bool)

(assert (=> d!2150358 m!7582224))

(declare-fun m!7582226 () Bool)

(assert (=> b!6836878 m!7582226))

(declare-fun m!7582228 () Bool)

(assert (=> b!6836878 m!7582228))

(declare-fun m!7582230 () Bool)

(assert (=> b!6836878 m!7582230))

(declare-fun m!7582232 () Bool)

(assert (=> b!6836877 m!7582232))

(assert (=> b!6835982 d!2150358))

(declare-fun d!2150360 () Bool)

(declare-fun choose!50991 ((InoxSet Context!12074) Int) (InoxSet Context!12074))

(assert (=> d!2150360 (= (map!15140 lt!2454839 lambda!386546) (choose!50991 lt!2454839 lambda!386546))))

(declare-fun bs!1828625 () Bool)

(assert (= bs!1828625 d!2150360))

(declare-fun m!7582234 () Bool)

(assert (=> bs!1828625 m!7582234))

(assert (=> b!6835982 d!2150360))

(declare-fun d!2150362 () Bool)

(assert (=> d!2150362 (isDefined!13243 (findConcatSeparationZippers!262 lt!2454839 (store ((as const (Array Context!12074 Bool)) false) lt!2454856 true) Nil!66136 s!2326 s!2326))))

(declare-fun lt!2455033 () Unit!160003)

(declare-fun choose!50992 ((InoxSet Context!12074) Context!12074 List!66260) Unit!160003)

(assert (=> d!2150362 (= lt!2455033 (choose!50992 lt!2454839 lt!2454856 s!2326))))

(declare-fun appendTo!256 ((InoxSet Context!12074) Context!12074) (InoxSet Context!12074))

(assert (=> d!2150362 (matchZipper!2639 (appendTo!256 lt!2454839 lt!2454856) s!2326)))

(assert (=> d!2150362 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!262 lt!2454839 lt!2454856 s!2326) lt!2455033)))

(declare-fun bs!1828626 () Bool)

(assert (= bs!1828626 d!2150362))

(declare-fun m!7582236 () Bool)

(assert (=> bs!1828626 m!7582236))

(declare-fun m!7582238 () Bool)

(assert (=> bs!1828626 m!7582238))

(declare-fun m!7582240 () Bool)

(assert (=> bs!1828626 m!7582240))

(declare-fun m!7582242 () Bool)

(assert (=> bs!1828626 m!7582242))

(declare-fun m!7582244 () Bool)

(assert (=> bs!1828626 m!7582244))

(assert (=> bs!1828626 m!7582242))

(assert (=> bs!1828626 m!7581530))

(assert (=> bs!1828626 m!7581530))

(assert (=> bs!1828626 m!7582236))

(assert (=> b!6835982 d!2150362))

(declare-fun d!2150364 () Bool)

(assert (=> d!2150364 (forall!15833 (++!14852 lt!2454838 lt!2454836) lambda!386547)))

(declare-fun lt!2455036 () Unit!160003)

(declare-fun choose!50993 (List!66258 List!66258 Int) Unit!160003)

(assert (=> d!2150364 (= lt!2455036 (choose!50993 lt!2454838 lt!2454836 lambda!386547))))

(assert (=> d!2150364 (forall!15833 lt!2454838 lambda!386547)))

(assert (=> d!2150364 (= (lemmaConcatPreservesForall!482 lt!2454838 lt!2454836 lambda!386547) lt!2455036)))

(declare-fun bs!1828627 () Bool)

(assert (= bs!1828627 d!2150364))

(assert (=> bs!1828627 m!7581426))

(assert (=> bs!1828627 m!7581426))

(declare-fun m!7582246 () Bool)

(assert (=> bs!1828627 m!7582246))

(declare-fun m!7582248 () Bool)

(assert (=> bs!1828627 m!7582248))

(declare-fun m!7582250 () Bool)

(assert (=> bs!1828627 m!7582250))

(assert (=> b!6835982 d!2150364))

(declare-fun bs!1828628 () Bool)

(declare-fun d!2150366 () Bool)

(assert (= bs!1828628 (and d!2150366 b!6835982)))

(declare-fun lambda!386633 () Int)

(assert (=> bs!1828628 (= lambda!386633 lambda!386547)))

(declare-fun bs!1828629 () Bool)

(assert (= bs!1828629 (and d!2150366 d!2150304)))

(assert (=> bs!1828629 (= lambda!386633 lambda!386623)))

(declare-fun bs!1828630 () Bool)

(assert (= bs!1828630 (and d!2150366 d!2150320)))

(assert (=> bs!1828630 (= lambda!386633 lambda!386624)))

(declare-fun bs!1828631 () Bool)

(assert (= bs!1828631 (and d!2150366 d!2150244)))

(assert (=> bs!1828631 (= lambda!386633 lambda!386583)))

(declare-fun bs!1828632 () Bool)

(assert (= bs!1828632 (and d!2150366 d!2150334)))

(assert (=> bs!1828632 (= lambda!386633 lambda!386630)))

(declare-fun bs!1828633 () Bool)

(assert (= bs!1828633 (and d!2150366 d!2150322)))

(assert (=> bs!1828633 (= lambda!386633 lambda!386627)))

(assert (=> d!2150366 (matchZipper!2639 (store ((as const (Array Context!12074 Bool)) false) (Context!12075 (++!14852 (exprs!6537 lt!2454859) (exprs!6537 lt!2454856))) true) (++!14853 (_1!36931 lt!2454843) (_2!36931 lt!2454843)))))

(declare-fun lt!2455042 () Unit!160003)

(assert (=> d!2150366 (= lt!2455042 (lemmaConcatPreservesForall!482 (exprs!6537 lt!2454859) (exprs!6537 lt!2454856) lambda!386633))))

(declare-fun lt!2455041 () Unit!160003)

(declare-fun choose!50994 (Context!12074 Context!12074 List!66260 List!66260) Unit!160003)

(assert (=> d!2150366 (= lt!2455041 (choose!50994 lt!2454859 lt!2454856 (_1!36931 lt!2454843) (_2!36931 lt!2454843)))))

(assert (=> d!2150366 (matchZipper!2639 (store ((as const (Array Context!12074 Bool)) false) lt!2454859 true) (_1!36931 lt!2454843))))

(assert (=> d!2150366 (= (lemmaConcatenateContextMatchesConcatOfStrings!276 lt!2454859 lt!2454856 (_1!36931 lt!2454843) (_2!36931 lt!2454843)) lt!2455041)))

(declare-fun bs!1828634 () Bool)

(assert (= bs!1828634 d!2150366))

(declare-fun m!7582252 () Bool)

(assert (=> bs!1828634 m!7582252))

(assert (=> bs!1828634 m!7581416))

(declare-fun m!7582254 () Bool)

(assert (=> bs!1828634 m!7582254))

(assert (=> bs!1828634 m!7581416))

(declare-fun m!7582256 () Bool)

(assert (=> bs!1828634 m!7582256))

(assert (=> bs!1828634 m!7582252))

(assert (=> bs!1828634 m!7581536))

(assert (=> bs!1828634 m!7581536))

(declare-fun m!7582258 () Bool)

(assert (=> bs!1828634 m!7582258))

(declare-fun m!7582260 () Bool)

(assert (=> bs!1828634 m!7582260))

(declare-fun m!7582262 () Bool)

(assert (=> bs!1828634 m!7582262))

(assert (=> b!6835982 d!2150366))

(declare-fun b!6836880 () Bool)

(declare-fun e!4123778 () Bool)

(assert (=> b!6836880 (= e!4123778 (not (= (head!13692 (_2!36931 lt!2454843)) (c!1272841 r!7292))))))

(declare-fun d!2150368 () Bool)

(declare-fun e!4123775 () Bool)

(assert (=> d!2150368 e!4123775))

(declare-fun c!1273083 () Bool)

(assert (=> d!2150368 (= c!1273083 ((_ is EmptyExpr!16653) r!7292))))

(declare-fun lt!2455043 () Bool)

(declare-fun e!4123774 () Bool)

(assert (=> d!2150368 (= lt!2455043 e!4123774)))

(declare-fun c!1273081 () Bool)

(assert (=> d!2150368 (= c!1273081 (isEmpty!38522 (_2!36931 lt!2454843)))))

(assert (=> d!2150368 (validRegex!8389 r!7292)))

(assert (=> d!2150368 (= (matchR!8836 r!7292 (_2!36931 lt!2454843)) lt!2455043)))

(declare-fun b!6836881 () Bool)

(declare-fun e!4123777 () Bool)

(assert (=> b!6836881 (= e!4123777 e!4123778)))

(declare-fun res!2792057 () Bool)

(assert (=> b!6836881 (=> res!2792057 e!4123778)))

(declare-fun call!622683 () Bool)

(assert (=> b!6836881 (= res!2792057 call!622683)))

(declare-fun b!6836882 () Bool)

(declare-fun res!2792056 () Bool)

(declare-fun e!4123773 () Bool)

(assert (=> b!6836882 (=> res!2792056 e!4123773)))

(assert (=> b!6836882 (= res!2792056 (not ((_ is ElementMatch!16653) r!7292)))))

(declare-fun e!4123776 () Bool)

(assert (=> b!6836882 (= e!4123776 e!4123773)))

(declare-fun b!6836883 () Bool)

(assert (=> b!6836883 (= e!4123775 e!4123776)))

(declare-fun c!1273082 () Bool)

(assert (=> b!6836883 (= c!1273082 ((_ is EmptyLang!16653) r!7292))))

(declare-fun b!6836884 () Bool)

(assert (=> b!6836884 (= e!4123776 (not lt!2455043))))

(declare-fun b!6836885 () Bool)

(declare-fun res!2792060 () Bool)

(declare-fun e!4123772 () Bool)

(assert (=> b!6836885 (=> (not res!2792060) (not e!4123772))))

(assert (=> b!6836885 (= res!2792060 (isEmpty!38522 (tail!12777 (_2!36931 lt!2454843))))))

(declare-fun b!6836886 () Bool)

(assert (=> b!6836886 (= e!4123774 (matchR!8836 (derivativeStep!5305 r!7292 (head!13692 (_2!36931 lt!2454843))) (tail!12777 (_2!36931 lt!2454843))))))

(declare-fun b!6836887 () Bool)

(declare-fun res!2792054 () Bool)

(assert (=> b!6836887 (=> res!2792054 e!4123773)))

(assert (=> b!6836887 (= res!2792054 e!4123772)))

(declare-fun res!2792053 () Bool)

(assert (=> b!6836887 (=> (not res!2792053) (not e!4123772))))

(assert (=> b!6836887 (= res!2792053 lt!2455043)))

(declare-fun bm!622678 () Bool)

(assert (=> bm!622678 (= call!622683 (isEmpty!38522 (_2!36931 lt!2454843)))))

(declare-fun b!6836888 () Bool)

(declare-fun res!2792055 () Bool)

(assert (=> b!6836888 (=> res!2792055 e!4123778)))

(assert (=> b!6836888 (= res!2792055 (not (isEmpty!38522 (tail!12777 (_2!36931 lt!2454843)))))))

(declare-fun b!6836889 () Bool)

(assert (=> b!6836889 (= e!4123775 (= lt!2455043 call!622683))))

(declare-fun b!6836890 () Bool)

(assert (=> b!6836890 (= e!4123772 (= (head!13692 (_2!36931 lt!2454843)) (c!1272841 r!7292)))))

(declare-fun b!6836891 () Bool)

(declare-fun res!2792058 () Bool)

(assert (=> b!6836891 (=> (not res!2792058) (not e!4123772))))

(assert (=> b!6836891 (= res!2792058 (not call!622683))))

(declare-fun b!6836892 () Bool)

(assert (=> b!6836892 (= e!4123774 (nullable!6620 r!7292))))

(declare-fun b!6836893 () Bool)

(assert (=> b!6836893 (= e!4123773 e!4123777)))

(declare-fun res!2792059 () Bool)

(assert (=> b!6836893 (=> (not res!2792059) (not e!4123777))))

(assert (=> b!6836893 (= res!2792059 (not lt!2455043))))

(assert (= (and d!2150368 c!1273081) b!6836892))

(assert (= (and d!2150368 (not c!1273081)) b!6836886))

(assert (= (and d!2150368 c!1273083) b!6836889))

(assert (= (and d!2150368 (not c!1273083)) b!6836883))

(assert (= (and b!6836883 c!1273082) b!6836884))

(assert (= (and b!6836883 (not c!1273082)) b!6836882))

(assert (= (and b!6836882 (not res!2792056)) b!6836887))

(assert (= (and b!6836887 res!2792053) b!6836891))

(assert (= (and b!6836891 res!2792058) b!6836885))

(assert (= (and b!6836885 res!2792060) b!6836890))

(assert (= (and b!6836887 (not res!2792054)) b!6836893))

(assert (= (and b!6836893 res!2792059) b!6836881))

(assert (= (and b!6836881 (not res!2792057)) b!6836888))

(assert (= (and b!6836888 (not res!2792055)) b!6836880))

(assert (= (or b!6836889 b!6836881 b!6836891) bm!622678))

(assert (=> b!6836886 m!7582188))

(assert (=> b!6836886 m!7582188))

(declare-fun m!7582264 () Bool)

(assert (=> b!6836886 m!7582264))

(assert (=> b!6836886 m!7582192))

(assert (=> b!6836886 m!7582264))

(assert (=> b!6836886 m!7582192))

(declare-fun m!7582266 () Bool)

(assert (=> b!6836886 m!7582266))

(assert (=> b!6836890 m!7582188))

(assert (=> b!6836892 m!7581886))

(assert (=> b!6836885 m!7582192))

(assert (=> b!6836885 m!7582192))

(declare-fun m!7582268 () Bool)

(assert (=> b!6836885 m!7582268))

(assert (=> b!6836880 m!7582188))

(assert (=> b!6836888 m!7582192))

(assert (=> b!6836888 m!7582192))

(assert (=> b!6836888 m!7582268))

(assert (=> d!2150368 m!7582184))

(assert (=> d!2150368 m!7581480))

(assert (=> bm!622678 m!7582184))

(assert (=> b!6835982 d!2150368))

(declare-fun d!2150370 () Bool)

(assert (=> d!2150370 (= (matchR!8836 (reg!16982 r!7292) (_1!36931 lt!2454843)) (matchZipper!2639 lt!2454839 (_1!36931 lt!2454843)))))

(declare-fun lt!2455044 () Unit!160003)

(assert (=> d!2150370 (= lt!2455044 (choose!50990 lt!2454839 lt!2454854 (reg!16982 r!7292) (_1!36931 lt!2454843)))))

(assert (=> d!2150370 (validRegex!8389 (reg!16982 r!7292))))

(assert (=> d!2150370 (= (theoremZipperRegexEquiv!955 lt!2454839 lt!2454854 (reg!16982 r!7292) (_1!36931 lt!2454843)) lt!2455044)))

(declare-fun bs!1828635 () Bool)

(assert (= bs!1828635 d!2150370))

(assert (=> bs!1828635 m!7581444))

(assert (=> bs!1828635 m!7581448))

(declare-fun m!7582270 () Bool)

(assert (=> bs!1828635 m!7582270))

(assert (=> bs!1828635 m!7581932))

(assert (=> b!6835982 d!2150370))

(declare-fun b!6836904 () Bool)

(declare-fun res!2792066 () Bool)

(declare-fun e!4123784 () Bool)

(assert (=> b!6836904 (=> (not res!2792066) (not e!4123784))))

(declare-fun lt!2455047 () List!66260)

(declare-fun size!40707 (List!66260) Int)

(assert (=> b!6836904 (= res!2792066 (= (size!40707 lt!2455047) (+ (size!40707 (_1!36931 lt!2454843)) (size!40707 (_2!36931 lt!2454843)))))))

(declare-fun b!6836905 () Bool)

(assert (=> b!6836905 (= e!4123784 (or (not (= (_2!36931 lt!2454843) Nil!66136)) (= lt!2455047 (_1!36931 lt!2454843))))))

(declare-fun d!2150372 () Bool)

(assert (=> d!2150372 e!4123784))

(declare-fun res!2792065 () Bool)

(assert (=> d!2150372 (=> (not res!2792065) (not e!4123784))))

(declare-fun content!12961 (List!66260) (InoxSet C!33576))

(assert (=> d!2150372 (= res!2792065 (= (content!12961 lt!2455047) ((_ map or) (content!12961 (_1!36931 lt!2454843)) (content!12961 (_2!36931 lt!2454843)))))))

(declare-fun e!4123783 () List!66260)

(assert (=> d!2150372 (= lt!2455047 e!4123783)))

(declare-fun c!1273086 () Bool)

(assert (=> d!2150372 (= c!1273086 ((_ is Nil!66136) (_1!36931 lt!2454843)))))

(assert (=> d!2150372 (= (++!14853 (_1!36931 lt!2454843) (_2!36931 lt!2454843)) lt!2455047)))

(declare-fun b!6836902 () Bool)

(assert (=> b!6836902 (= e!4123783 (_2!36931 lt!2454843))))

(declare-fun b!6836903 () Bool)

(assert (=> b!6836903 (= e!4123783 (Cons!66136 (h!72584 (_1!36931 lt!2454843)) (++!14853 (t!380003 (_1!36931 lt!2454843)) (_2!36931 lt!2454843))))))

(assert (= (and d!2150372 c!1273086) b!6836902))

(assert (= (and d!2150372 (not c!1273086)) b!6836903))

(assert (= (and d!2150372 res!2792065) b!6836904))

(assert (= (and b!6836904 res!2792066) b!6836905))

(declare-fun m!7582272 () Bool)

(assert (=> b!6836904 m!7582272))

(declare-fun m!7582274 () Bool)

(assert (=> b!6836904 m!7582274))

(declare-fun m!7582276 () Bool)

(assert (=> b!6836904 m!7582276))

(declare-fun m!7582278 () Bool)

(assert (=> d!2150372 m!7582278))

(declare-fun m!7582280 () Bool)

(assert (=> d!2150372 m!7582280))

(declare-fun m!7582282 () Bool)

(assert (=> d!2150372 m!7582282))

(declare-fun m!7582284 () Bool)

(assert (=> b!6836903 m!7582284))

(assert (=> b!6835982 d!2150372))

(declare-fun d!2150374 () Bool)

(assert (=> d!2150374 (matchR!8836 (Concat!25498 (reg!16982 r!7292) r!7292) (++!14853 (_1!36931 lt!2454843) (_2!36931 lt!2454843)))))

(declare-fun lt!2455050 () Unit!160003)

(declare-fun choose!50995 (Regex!16653 Regex!16653 List!66260 List!66260) Unit!160003)

(assert (=> d!2150374 (= lt!2455050 (choose!50995 (reg!16982 r!7292) r!7292 (_1!36931 lt!2454843) (_2!36931 lt!2454843)))))

(declare-fun e!4123787 () Bool)

(assert (=> d!2150374 e!4123787))

(declare-fun res!2792069 () Bool)

(assert (=> d!2150374 (=> (not res!2792069) (not e!4123787))))

(assert (=> d!2150374 (= res!2792069 (validRegex!8389 (reg!16982 r!7292)))))

(assert (=> d!2150374 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!392 (reg!16982 r!7292) r!7292 (_1!36931 lt!2454843) (_2!36931 lt!2454843)) lt!2455050)))

(declare-fun b!6836908 () Bool)

(assert (=> b!6836908 (= e!4123787 (validRegex!8389 r!7292))))

(assert (= (and d!2150374 res!2792069) b!6836908))

(assert (=> d!2150374 m!7581416))

(assert (=> d!2150374 m!7581416))

(declare-fun m!7582286 () Bool)

(assert (=> d!2150374 m!7582286))

(declare-fun m!7582288 () Bool)

(assert (=> d!2150374 m!7582288))

(assert (=> d!2150374 m!7581932))

(assert (=> b!6836908 m!7581480))

(assert (=> b!6835982 d!2150374))

(declare-fun d!2150376 () Bool)

(declare-fun lt!2455051 () Regex!16653)

(assert (=> d!2150376 (validRegex!8389 lt!2455051)))

(assert (=> d!2150376 (= lt!2455051 (generalisedUnion!2497 (unfocusZipperList!2074 lt!2454847)))))

(assert (=> d!2150376 (= (unfocusZipper!2395 lt!2454847) lt!2455051)))

(declare-fun bs!1828636 () Bool)

(assert (= bs!1828636 d!2150376))

(declare-fun m!7582290 () Bool)

(assert (=> bs!1828636 m!7582290))

(declare-fun m!7582292 () Bool)

(assert (=> bs!1828636 m!7582292))

(assert (=> bs!1828636 m!7582292))

(declare-fun m!7582294 () Bool)

(assert (=> bs!1828636 m!7582294))

(assert (=> b!6836002 d!2150376))

(declare-fun d!2150378 () Bool)

(declare-fun res!2792080 () Bool)

(declare-fun e!4123803 () Bool)

(assert (=> d!2150378 (=> res!2792080 e!4123803)))

(assert (=> d!2150378 (= res!2792080 ((_ is ElementMatch!16653) r!7292))))

(assert (=> d!2150378 (= (validRegex!8389 r!7292) e!4123803)))

(declare-fun bm!622685 () Bool)

(declare-fun call!622691 () Bool)

(declare-fun c!1273092 () Bool)

(assert (=> bm!622685 (= call!622691 (validRegex!8389 (ite c!1273092 (regOne!33819 r!7292) (regOne!33818 r!7292))))))

(declare-fun b!6836927 () Bool)

(declare-fun e!4123808 () Bool)

(declare-fun call!622690 () Bool)

(assert (=> b!6836927 (= e!4123808 call!622690)))

(declare-fun b!6836928 () Bool)

(declare-fun e!4123805 () Bool)

(declare-fun call!622692 () Bool)

(assert (=> b!6836928 (= e!4123805 call!622692)))

(declare-fun b!6836929 () Bool)

(declare-fun e!4123807 () Bool)

(assert (=> b!6836929 (= e!4123803 e!4123807)))

(declare-fun c!1273091 () Bool)

(assert (=> b!6836929 (= c!1273091 ((_ is Star!16653) r!7292))))

(declare-fun b!6836930 () Bool)

(declare-fun res!2792083 () Bool)

(assert (=> b!6836930 (=> (not res!2792083) (not e!4123805))))

(assert (=> b!6836930 (= res!2792083 call!622691)))

(declare-fun e!4123802 () Bool)

(assert (=> b!6836930 (= e!4123802 e!4123805)))

(declare-fun bm!622686 () Bool)

(assert (=> bm!622686 (= call!622692 call!622690)))

(declare-fun bm!622687 () Bool)

(assert (=> bm!622687 (= call!622690 (validRegex!8389 (ite c!1273091 (reg!16982 r!7292) (ite c!1273092 (regTwo!33819 r!7292) (regTwo!33818 r!7292)))))))

(declare-fun b!6836931 () Bool)

(declare-fun e!4123804 () Bool)

(assert (=> b!6836931 (= e!4123804 call!622692)))

(declare-fun b!6836932 () Bool)

(assert (=> b!6836932 (= e!4123807 e!4123802)))

(assert (=> b!6836932 (= c!1273092 ((_ is Union!16653) r!7292))))

(declare-fun b!6836933 () Bool)

(declare-fun res!2792081 () Bool)

(declare-fun e!4123806 () Bool)

(assert (=> b!6836933 (=> res!2792081 e!4123806)))

(assert (=> b!6836933 (= res!2792081 (not ((_ is Concat!25498) r!7292)))))

(assert (=> b!6836933 (= e!4123802 e!4123806)))

(declare-fun b!6836934 () Bool)

(assert (=> b!6836934 (= e!4123807 e!4123808)))

(declare-fun res!2792084 () Bool)

(assert (=> b!6836934 (= res!2792084 (not (nullable!6620 (reg!16982 r!7292))))))

(assert (=> b!6836934 (=> (not res!2792084) (not e!4123808))))

(declare-fun b!6836935 () Bool)

(assert (=> b!6836935 (= e!4123806 e!4123804)))

(declare-fun res!2792082 () Bool)

(assert (=> b!6836935 (=> (not res!2792082) (not e!4123804))))

(assert (=> b!6836935 (= res!2792082 call!622691)))

(assert (= (and d!2150378 (not res!2792080)) b!6836929))

(assert (= (and b!6836929 c!1273091) b!6836934))

(assert (= (and b!6836929 (not c!1273091)) b!6836932))

(assert (= (and b!6836934 res!2792084) b!6836927))

(assert (= (and b!6836932 c!1273092) b!6836930))

(assert (= (and b!6836932 (not c!1273092)) b!6836933))

(assert (= (and b!6836930 res!2792083) b!6836928))

(assert (= (and b!6836933 (not res!2792081)) b!6836935))

(assert (= (and b!6836935 res!2792082) b!6836931))

(assert (= (or b!6836928 b!6836931) bm!622686))

(assert (= (or b!6836930 b!6836935) bm!622685))

(assert (= (or b!6836927 bm!622686) bm!622687))

(declare-fun m!7582296 () Bool)

(assert (=> bm!622685 m!7582296))

(declare-fun m!7582298 () Bool)

(assert (=> bm!622687 m!7582298))

(assert (=> b!6836934 m!7582164))

(assert (=> start!660632 d!2150378))

(declare-fun d!2150380 () Bool)

(declare-fun c!1273093 () Bool)

(assert (=> d!2150380 (= c!1273093 (isEmpty!38522 s!2326))))

(declare-fun e!4123809 () Bool)

(assert (=> d!2150380 (= (matchZipper!2639 lt!2454862 s!2326) e!4123809)))

(declare-fun b!6836936 () Bool)

(assert (=> b!6836936 (= e!4123809 (nullableZipper!2348 lt!2454862))))

(declare-fun b!6836937 () Bool)

(assert (=> b!6836937 (= e!4123809 (matchZipper!2639 (derivationStepZipper!2597 lt!2454862 (head!13692 s!2326)) (tail!12777 s!2326)))))

(assert (= (and d!2150380 c!1273093) b!6836936))

(assert (= (and d!2150380 (not c!1273093)) b!6836937))

(assert (=> d!2150380 m!7581504))

(declare-fun m!7582300 () Bool)

(assert (=> b!6836936 m!7582300))

(assert (=> b!6836937 m!7581878))

(assert (=> b!6836937 m!7581878))

(declare-fun m!7582302 () Bool)

(assert (=> b!6836937 m!7582302))

(assert (=> b!6836937 m!7581882))

(assert (=> b!6836937 m!7582302))

(assert (=> b!6836937 m!7581882))

(declare-fun m!7582304 () Bool)

(assert (=> b!6836937 m!7582304))

(assert (=> b!6836001 d!2150380))

(declare-fun d!2150382 () Bool)

(declare-fun c!1273094 () Bool)

(assert (=> d!2150382 (= c!1273094 (isEmpty!38522 (t!380003 s!2326)))))

(declare-fun e!4123810 () Bool)

(assert (=> d!2150382 (= (matchZipper!2639 (derivationStepZipper!2597 lt!2454862 (h!72584 s!2326)) (t!380003 s!2326)) e!4123810)))

(declare-fun b!6836938 () Bool)

(assert (=> b!6836938 (= e!4123810 (nullableZipper!2348 (derivationStepZipper!2597 lt!2454862 (h!72584 s!2326))))))

(declare-fun b!6836939 () Bool)

(assert (=> b!6836939 (= e!4123810 (matchZipper!2639 (derivationStepZipper!2597 (derivationStepZipper!2597 lt!2454862 (h!72584 s!2326)) (head!13692 (t!380003 s!2326))) (tail!12777 (t!380003 s!2326))))))

(assert (= (and d!2150382 c!1273094) b!6836938))

(assert (= (and d!2150382 (not c!1273094)) b!6836939))

(declare-fun m!7582306 () Bool)

(assert (=> d!2150382 m!7582306))

(assert (=> b!6836938 m!7581452))

(declare-fun m!7582308 () Bool)

(assert (=> b!6836938 m!7582308))

(declare-fun m!7582310 () Bool)

(assert (=> b!6836939 m!7582310))

(assert (=> b!6836939 m!7581452))

(assert (=> b!6836939 m!7582310))

(declare-fun m!7582312 () Bool)

(assert (=> b!6836939 m!7582312))

(declare-fun m!7582314 () Bool)

(assert (=> b!6836939 m!7582314))

(assert (=> b!6836939 m!7582312))

(assert (=> b!6836939 m!7582314))

(declare-fun m!7582316 () Bool)

(assert (=> b!6836939 m!7582316))

(assert (=> b!6836001 d!2150382))

(declare-fun bs!1828637 () Bool)

(declare-fun d!2150384 () Bool)

(assert (= bs!1828637 (and d!2150384 b!6835978)))

(declare-fun lambda!386634 () Int)

(assert (=> bs!1828637 (= lambda!386634 lambda!386545)))

(declare-fun bs!1828638 () Bool)

(assert (= bs!1828638 (and d!2150384 d!2150214)))

(assert (=> bs!1828638 (= lambda!386634 lambda!386561)))

(assert (=> d!2150384 true))

(assert (=> d!2150384 (= (derivationStepZipper!2597 lt!2454862 (h!72584 s!2326)) (flatMap!2134 lt!2454862 lambda!386634))))

(declare-fun bs!1828639 () Bool)

(assert (= bs!1828639 d!2150384))

(declare-fun m!7582318 () Bool)

(assert (=> bs!1828639 m!7582318))

(assert (=> b!6836001 d!2150384))

(declare-fun d!2150386 () Bool)

(declare-fun lt!2455052 () Regex!16653)

(assert (=> d!2150386 (validRegex!8389 lt!2455052)))

(assert (=> d!2150386 (= lt!2455052 (generalisedUnion!2497 (unfocusZipperList!2074 (Cons!66135 lt!2454848 Nil!66135))))))

(assert (=> d!2150386 (= (unfocusZipper!2395 (Cons!66135 lt!2454848 Nil!66135)) lt!2455052)))

(declare-fun bs!1828640 () Bool)

(assert (= bs!1828640 d!2150386))

(declare-fun m!7582320 () Bool)

(assert (=> bs!1828640 m!7582320))

(declare-fun m!7582322 () Bool)

(assert (=> bs!1828640 m!7582322))

(assert (=> bs!1828640 m!7582322))

(declare-fun m!7582324 () Bool)

(assert (=> bs!1828640 m!7582324))

(assert (=> b!6835989 d!2150386))

(declare-fun b!6836940 () Bool)

(declare-fun c!1273098 () Bool)

(declare-fun e!4123816 () Bool)

(assert (=> b!6836940 (= c!1273098 e!4123816)))

(declare-fun res!2792085 () Bool)

(assert (=> b!6836940 (=> (not res!2792085) (not e!4123816))))

(assert (=> b!6836940 (= res!2792085 ((_ is Concat!25498) (reg!16982 r!7292)))))

(declare-fun e!4123812 () (InoxSet Context!12074))

(declare-fun e!4123815 () (InoxSet Context!12074))

(assert (=> b!6836940 (= e!4123812 e!4123815)))

(declare-fun c!1273097 () Bool)

(declare-fun call!622696 () List!66258)

(declare-fun bm!622688 () Bool)

(assert (=> bm!622688 (= call!622696 ($colon$colon!2449 (exprs!6537 lt!2454856) (ite (or c!1273098 c!1273097) (regTwo!33818 (reg!16982 r!7292)) (reg!16982 r!7292))))))

(declare-fun bm!622689 () Bool)

(declare-fun call!622695 () (InoxSet Context!12074))

(declare-fun call!622694 () (InoxSet Context!12074))

(assert (=> bm!622689 (= call!622695 call!622694)))

(declare-fun b!6836941 () Bool)

(declare-fun e!4123811 () (InoxSet Context!12074))

(declare-fun call!622698 () (InoxSet Context!12074))

(assert (=> b!6836941 (= e!4123811 call!622698)))

(declare-fun b!6836942 () Bool)

(declare-fun e!4123814 () (InoxSet Context!12074))

(assert (=> b!6836942 (= e!4123814 (store ((as const (Array Context!12074 Bool)) false) lt!2454856 true))))

(declare-fun b!6836943 () Bool)

(declare-fun e!4123813 () (InoxSet Context!12074))

(assert (=> b!6836943 (= e!4123813 ((as const (Array Context!12074 Bool)) false))))

(declare-fun b!6836945 () Bool)

(declare-fun c!1273095 () Bool)

(assert (=> b!6836945 (= c!1273095 ((_ is Star!16653) (reg!16982 r!7292)))))

(assert (=> b!6836945 (= e!4123811 e!4123813)))

(declare-fun b!6836946 () Bool)

(assert (=> b!6836946 (= e!4123815 e!4123811)))

(assert (=> b!6836946 (= c!1273097 ((_ is Concat!25498) (reg!16982 r!7292)))))

(declare-fun b!6836947 () Bool)

(assert (=> b!6836947 (= e!4123816 (nullable!6620 (regOne!33818 (reg!16982 r!7292))))))

(declare-fun b!6836948 () Bool)

(assert (=> b!6836948 (= e!4123814 e!4123812)))

(declare-fun c!1273099 () Bool)

(assert (=> b!6836948 (= c!1273099 ((_ is Union!16653) (reg!16982 r!7292)))))

(declare-fun b!6836949 () Bool)

(declare-fun call!622697 () (InoxSet Context!12074))

(assert (=> b!6836949 (= e!4123815 ((_ map or) call!622697 call!622695))))

(declare-fun b!6836950 () Bool)

(assert (=> b!6836950 (= e!4123812 ((_ map or) call!622694 call!622697))))

(declare-fun bm!622690 () Bool)

(assert (=> bm!622690 (= call!622697 (derivationStepZipperDown!1881 (ite c!1273099 (regTwo!33819 (reg!16982 r!7292)) (regOne!33818 (reg!16982 r!7292))) (ite c!1273099 lt!2454856 (Context!12075 call!622696)) (h!72584 s!2326)))))

(declare-fun bm!622691 () Bool)

(assert (=> bm!622691 (= call!622698 call!622695)))

(declare-fun d!2150388 () Bool)

(declare-fun c!1273096 () Bool)

(assert (=> d!2150388 (= c!1273096 (and ((_ is ElementMatch!16653) (reg!16982 r!7292)) (= (c!1272841 (reg!16982 r!7292)) (h!72584 s!2326))))))

(assert (=> d!2150388 (= (derivationStepZipperDown!1881 (reg!16982 r!7292) lt!2454856 (h!72584 s!2326)) e!4123814)))

(declare-fun b!6836944 () Bool)

(assert (=> b!6836944 (= e!4123813 call!622698)))

(declare-fun bm!622692 () Bool)

(declare-fun call!622693 () List!66258)

(assert (=> bm!622692 (= call!622693 call!622696)))

(declare-fun bm!622693 () Bool)

(assert (=> bm!622693 (= call!622694 (derivationStepZipperDown!1881 (ite c!1273099 (regOne!33819 (reg!16982 r!7292)) (ite c!1273098 (regTwo!33818 (reg!16982 r!7292)) (ite c!1273097 (regOne!33818 (reg!16982 r!7292)) (reg!16982 (reg!16982 r!7292))))) (ite (or c!1273099 c!1273098) lt!2454856 (Context!12075 call!622693)) (h!72584 s!2326)))))

(assert (= (and d!2150388 c!1273096) b!6836942))

(assert (= (and d!2150388 (not c!1273096)) b!6836948))

(assert (= (and b!6836948 c!1273099) b!6836950))

(assert (= (and b!6836948 (not c!1273099)) b!6836940))

(assert (= (and b!6836940 res!2792085) b!6836947))

(assert (= (and b!6836940 c!1273098) b!6836949))

(assert (= (and b!6836940 (not c!1273098)) b!6836946))

(assert (= (and b!6836946 c!1273097) b!6836941))

(assert (= (and b!6836946 (not c!1273097)) b!6836945))

(assert (= (and b!6836945 c!1273095) b!6836944))

(assert (= (and b!6836945 (not c!1273095)) b!6836943))

(assert (= (or b!6836941 b!6836944) bm!622692))

(assert (= (or b!6836941 b!6836944) bm!622691))

(assert (= (or b!6836949 bm!622692) bm!622688))

(assert (= (or b!6836949 bm!622691) bm!622689))

(assert (= (or b!6836950 b!6836949) bm!622690))

(assert (= (or b!6836950 bm!622689) bm!622693))

(assert (=> b!6836942 m!7581530))

(declare-fun m!7582326 () Bool)

(assert (=> bm!622690 m!7582326))

(declare-fun m!7582328 () Bool)

(assert (=> bm!622688 m!7582328))

(declare-fun m!7582330 () Bool)

(assert (=> b!6836947 m!7582330))

(declare-fun m!7582332 () Bool)

(assert (=> bm!622693 m!7582332))

(assert (=> b!6835999 d!2150388))

(declare-fun d!2150390 () Bool)

(assert (=> d!2150390 (= (flatMap!2134 lt!2454862 lambda!386545) (choose!50974 lt!2454862 lambda!386545))))

(declare-fun bs!1828641 () Bool)

(assert (= bs!1828641 d!2150390))

(declare-fun m!7582334 () Bool)

(assert (=> bs!1828641 m!7582334))

(assert (=> b!6835999 d!2150390))

(declare-fun b!6836951 () Bool)

(declare-fun call!622699 () (InoxSet Context!12074))

(declare-fun e!4123817 () (InoxSet Context!12074))

(assert (=> b!6836951 (= e!4123817 ((_ map or) call!622699 (derivationStepZipperUp!1807 (Context!12075 (t!380001 (exprs!6537 lt!2454848))) (h!72584 s!2326))))))

(declare-fun d!2150392 () Bool)

(declare-fun c!1273101 () Bool)

(declare-fun e!4123819 () Bool)

(assert (=> d!2150392 (= c!1273101 e!4123819)))

(declare-fun res!2792086 () Bool)

(assert (=> d!2150392 (=> (not res!2792086) (not e!4123819))))

(assert (=> d!2150392 (= res!2792086 ((_ is Cons!66134) (exprs!6537 lt!2454848)))))

(assert (=> d!2150392 (= (derivationStepZipperUp!1807 lt!2454848 (h!72584 s!2326)) e!4123817)))

(declare-fun bm!622694 () Bool)

(assert (=> bm!622694 (= call!622699 (derivationStepZipperDown!1881 (h!72582 (exprs!6537 lt!2454848)) (Context!12075 (t!380001 (exprs!6537 lt!2454848))) (h!72584 s!2326)))))

(declare-fun b!6836952 () Bool)

(assert (=> b!6836952 (= e!4123819 (nullable!6620 (h!72582 (exprs!6537 lt!2454848))))))

(declare-fun b!6836953 () Bool)

(declare-fun e!4123818 () (InoxSet Context!12074))

(assert (=> b!6836953 (= e!4123818 ((as const (Array Context!12074 Bool)) false))))

(declare-fun b!6836954 () Bool)

(assert (=> b!6836954 (= e!4123818 call!622699)))

(declare-fun b!6836955 () Bool)

(assert (=> b!6836955 (= e!4123817 e!4123818)))

(declare-fun c!1273100 () Bool)

(assert (=> b!6836955 (= c!1273100 ((_ is Cons!66134) (exprs!6537 lt!2454848)))))

(assert (= (and d!2150392 res!2792086) b!6836952))

(assert (= (and d!2150392 c!1273101) b!6836951))

(assert (= (and d!2150392 (not c!1273101)) b!6836955))

(assert (= (and b!6836955 c!1273100) b!6836954))

(assert (= (and b!6836955 (not c!1273100)) b!6836953))

(assert (= (or b!6836951 b!6836954) bm!622694))

(declare-fun m!7582336 () Bool)

(assert (=> b!6836951 m!7582336))

(declare-fun m!7582338 () Bool)

(assert (=> bm!622694 m!7582338))

(declare-fun m!7582340 () Bool)

(assert (=> b!6836952 m!7582340))

(assert (=> b!6835999 d!2150392))

(declare-fun d!2150394 () Bool)

(assert (=> d!2150394 (= (flatMap!2134 lt!2454862 lambda!386545) (dynLambda!26424 lambda!386545 lt!2454848))))

(declare-fun lt!2455053 () Unit!160003)

(assert (=> d!2150394 (= lt!2455053 (choose!50975 lt!2454862 lt!2454848 lambda!386545))))

(assert (=> d!2150394 (= lt!2454862 (store ((as const (Array Context!12074 Bool)) false) lt!2454848 true))))

(assert (=> d!2150394 (= (lemmaFlatMapOnSingletonSet!1660 lt!2454862 lt!2454848 lambda!386545) lt!2455053)))

(declare-fun b_lambda!257907 () Bool)

(assert (=> (not b_lambda!257907) (not d!2150394)))

(declare-fun bs!1828642 () Bool)

(assert (= bs!1828642 d!2150394))

(assert (=> bs!1828642 m!7581490))

(declare-fun m!7582342 () Bool)

(assert (=> bs!1828642 m!7582342))

(declare-fun m!7582344 () Bool)

(assert (=> bs!1828642 m!7582344))

(assert (=> bs!1828642 m!7581486))

(assert (=> b!6835999 d!2150394))

(declare-fun e!4123820 () (InoxSet Context!12074))

(declare-fun call!622700 () (InoxSet Context!12074))

(declare-fun b!6836956 () Bool)

(assert (=> b!6836956 (= e!4123820 ((_ map or) call!622700 (derivationStepZipperUp!1807 (Context!12075 (t!380001 (exprs!6537 lt!2454859))) (h!72584 s!2326))))))

(declare-fun d!2150396 () Bool)

(declare-fun c!1273103 () Bool)

(declare-fun e!4123822 () Bool)

(assert (=> d!2150396 (= c!1273103 e!4123822)))

(declare-fun res!2792087 () Bool)

(assert (=> d!2150396 (=> (not res!2792087) (not e!4123822))))

(assert (=> d!2150396 (= res!2792087 ((_ is Cons!66134) (exprs!6537 lt!2454859)))))

(assert (=> d!2150396 (= (derivationStepZipperUp!1807 lt!2454859 (h!72584 s!2326)) e!4123820)))

(declare-fun bm!622695 () Bool)

(assert (=> bm!622695 (= call!622700 (derivationStepZipperDown!1881 (h!72582 (exprs!6537 lt!2454859)) (Context!12075 (t!380001 (exprs!6537 lt!2454859))) (h!72584 s!2326)))))

(declare-fun b!6836957 () Bool)

(assert (=> b!6836957 (= e!4123822 (nullable!6620 (h!72582 (exprs!6537 lt!2454859))))))

(declare-fun b!6836958 () Bool)

(declare-fun e!4123821 () (InoxSet Context!12074))

(assert (=> b!6836958 (= e!4123821 ((as const (Array Context!12074 Bool)) false))))

(declare-fun b!6836959 () Bool)

(assert (=> b!6836959 (= e!4123821 call!622700)))

(declare-fun b!6836960 () Bool)

(assert (=> b!6836960 (= e!4123820 e!4123821)))

(declare-fun c!1273102 () Bool)

(assert (=> b!6836960 (= c!1273102 ((_ is Cons!66134) (exprs!6537 lt!2454859)))))

(assert (= (and d!2150396 res!2792087) b!6836957))

(assert (= (and d!2150396 c!1273103) b!6836956))

(assert (= (and d!2150396 (not c!1273103)) b!6836960))

(assert (= (and b!6836960 c!1273102) b!6836959))

(assert (= (and b!6836960 (not c!1273102)) b!6836958))

(assert (= (or b!6836956 b!6836959) bm!622695))

(declare-fun m!7582346 () Bool)

(assert (=> b!6836956 m!7582346))

(declare-fun m!7582348 () Bool)

(assert (=> bm!622695 m!7582348))

(declare-fun m!7582350 () Bool)

(assert (=> b!6836957 m!7582350))

(assert (=> b!6835980 d!2150396))

(declare-fun d!2150398 () Bool)

(assert (=> d!2150398 (= (flatMap!2134 lt!2454839 lambda!386545) (choose!50974 lt!2454839 lambda!386545))))

(declare-fun bs!1828643 () Bool)

(assert (= bs!1828643 d!2150398))

(declare-fun m!7582352 () Bool)

(assert (=> bs!1828643 m!7582352))

(assert (=> b!6835980 d!2150398))

(declare-fun d!2150400 () Bool)

(assert (=> d!2150400 (= (flatMap!2134 lt!2454839 lambda!386545) (dynLambda!26424 lambda!386545 lt!2454859))))

(declare-fun lt!2455054 () Unit!160003)

(assert (=> d!2150400 (= lt!2455054 (choose!50975 lt!2454839 lt!2454859 lambda!386545))))

(assert (=> d!2150400 (= lt!2454839 (store ((as const (Array Context!12074 Bool)) false) lt!2454859 true))))

(assert (=> d!2150400 (= (lemmaFlatMapOnSingletonSet!1660 lt!2454839 lt!2454859 lambda!386545) lt!2455054)))

(declare-fun b_lambda!257909 () Bool)

(assert (=> (not b_lambda!257909) (not d!2150400)))

(declare-fun bs!1828644 () Bool)

(assert (= bs!1828644 d!2150400))

(assert (=> bs!1828644 m!7581522))

(declare-fun m!7582354 () Bool)

(assert (=> bs!1828644 m!7582354))

(declare-fun m!7582356 () Bool)

(assert (=> bs!1828644 m!7582356))

(assert (=> bs!1828644 m!7581536))

(assert (=> b!6835980 d!2150400))

(declare-fun d!2150402 () Bool)

(assert (=> d!2150402 (= (flatMap!2134 lt!2454858 lambda!386545) (choose!50974 lt!2454858 lambda!386545))))

(declare-fun bs!1828645 () Bool)

(assert (= bs!1828645 d!2150402))

(declare-fun m!7582358 () Bool)

(assert (=> bs!1828645 m!7582358))

(assert (=> b!6835980 d!2150402))

(declare-fun bs!1828646 () Bool)

(declare-fun d!2150404 () Bool)

(assert (= bs!1828646 (and d!2150404 b!6835978)))

(declare-fun lambda!386635 () Int)

(assert (=> bs!1828646 (= lambda!386635 lambda!386545)))

(declare-fun bs!1828647 () Bool)

(assert (= bs!1828647 (and d!2150404 d!2150214)))

(assert (=> bs!1828647 (= lambda!386635 lambda!386561)))

(declare-fun bs!1828648 () Bool)

(assert (= bs!1828648 (and d!2150404 d!2150384)))

(assert (=> bs!1828648 (= lambda!386635 lambda!386634)))

(assert (=> d!2150404 true))

(assert (=> d!2150404 (= (derivationStepZipper!2597 lt!2454858 (h!72584 s!2326)) (flatMap!2134 lt!2454858 lambda!386635))))

(declare-fun bs!1828649 () Bool)

(assert (= bs!1828649 d!2150404))

(declare-fun m!7582360 () Bool)

(assert (=> bs!1828649 m!7582360))

(assert (=> b!6835980 d!2150404))

(declare-fun d!2150406 () Bool)

(assert (=> d!2150406 (= (flatMap!2134 lt!2454858 lambda!386545) (dynLambda!26424 lambda!386545 lt!2454856))))

(declare-fun lt!2455055 () Unit!160003)

(assert (=> d!2150406 (= lt!2455055 (choose!50975 lt!2454858 lt!2454856 lambda!386545))))

(assert (=> d!2150406 (= lt!2454858 (store ((as const (Array Context!12074 Bool)) false) lt!2454856 true))))

(assert (=> d!2150406 (= (lemmaFlatMapOnSingletonSet!1660 lt!2454858 lt!2454856 lambda!386545) lt!2455055)))

(declare-fun b_lambda!257911 () Bool)

(assert (=> (not b_lambda!257911) (not d!2150406)))

(declare-fun bs!1828650 () Bool)

(assert (= bs!1828650 d!2150406))

(assert (=> bs!1828650 m!7581528))

(declare-fun m!7582362 () Bool)

(assert (=> bs!1828650 m!7582362))

(declare-fun m!7582364 () Bool)

(assert (=> bs!1828650 m!7582364))

(assert (=> bs!1828650 m!7581530))

(assert (=> b!6835980 d!2150406))

(declare-fun e!4123823 () (InoxSet Context!12074))

(declare-fun call!622701 () (InoxSet Context!12074))

(declare-fun b!6836961 () Bool)

(assert (=> b!6836961 (= e!4123823 ((_ map or) call!622701 (derivationStepZipperUp!1807 (Context!12075 (t!380001 (exprs!6537 lt!2454856))) (h!72584 s!2326))))))

(declare-fun d!2150408 () Bool)

(declare-fun c!1273105 () Bool)

(declare-fun e!4123825 () Bool)

(assert (=> d!2150408 (= c!1273105 e!4123825)))

(declare-fun res!2792088 () Bool)

(assert (=> d!2150408 (=> (not res!2792088) (not e!4123825))))

(assert (=> d!2150408 (= res!2792088 ((_ is Cons!66134) (exprs!6537 lt!2454856)))))

(assert (=> d!2150408 (= (derivationStepZipperUp!1807 lt!2454856 (h!72584 s!2326)) e!4123823)))

(declare-fun bm!622696 () Bool)

(assert (=> bm!622696 (= call!622701 (derivationStepZipperDown!1881 (h!72582 (exprs!6537 lt!2454856)) (Context!12075 (t!380001 (exprs!6537 lt!2454856))) (h!72584 s!2326)))))

(declare-fun b!6836962 () Bool)

(assert (=> b!6836962 (= e!4123825 (nullable!6620 (h!72582 (exprs!6537 lt!2454856))))))

(declare-fun b!6836963 () Bool)

(declare-fun e!4123824 () (InoxSet Context!12074))

(assert (=> b!6836963 (= e!4123824 ((as const (Array Context!12074 Bool)) false))))

(declare-fun b!6836964 () Bool)

(assert (=> b!6836964 (= e!4123824 call!622701)))

(declare-fun b!6836965 () Bool)

(assert (=> b!6836965 (= e!4123823 e!4123824)))

(declare-fun c!1273104 () Bool)

(assert (=> b!6836965 (= c!1273104 ((_ is Cons!66134) (exprs!6537 lt!2454856)))))

(assert (= (and d!2150408 res!2792088) b!6836962))

(assert (= (and d!2150408 c!1273105) b!6836961))

(assert (= (and d!2150408 (not c!1273105)) b!6836965))

(assert (= (and b!6836965 c!1273104) b!6836964))

(assert (= (and b!6836965 (not c!1273104)) b!6836963))

(assert (= (or b!6836961 b!6836964) bm!622696))

(declare-fun m!7582366 () Bool)

(assert (=> b!6836961 m!7582366))

(declare-fun m!7582368 () Bool)

(assert (=> bm!622696 m!7582368))

(declare-fun m!7582370 () Bool)

(assert (=> b!6836962 m!7582370))

(assert (=> b!6835980 d!2150408))

(declare-fun b!6836978 () Bool)

(declare-fun e!4123828 () Bool)

(declare-fun tp!1870875 () Bool)

(assert (=> b!6836978 (= e!4123828 tp!1870875)))

(declare-fun b!6836977 () Bool)

(declare-fun tp!1870874 () Bool)

(declare-fun tp!1870873 () Bool)

(assert (=> b!6836977 (= e!4123828 (and tp!1870874 tp!1870873))))

(declare-fun b!6836979 () Bool)

(declare-fun tp!1870872 () Bool)

(declare-fun tp!1870876 () Bool)

(assert (=> b!6836979 (= e!4123828 (and tp!1870872 tp!1870876))))

(declare-fun b!6836976 () Bool)

(assert (=> b!6836976 (= e!4123828 tp_is_empty!42559)))

(assert (=> b!6835997 (= tp!1870794 e!4123828)))

(assert (= (and b!6835997 ((_ is ElementMatch!16653) (reg!16982 r!7292))) b!6836976))

(assert (= (and b!6835997 ((_ is Concat!25498) (reg!16982 r!7292))) b!6836977))

(assert (= (and b!6835997 ((_ is Star!16653) (reg!16982 r!7292))) b!6836978))

(assert (= (and b!6835997 ((_ is Union!16653) (reg!16982 r!7292))) b!6836979))

(declare-fun b!6836982 () Bool)

(declare-fun e!4123829 () Bool)

(declare-fun tp!1870880 () Bool)

(assert (=> b!6836982 (= e!4123829 tp!1870880)))

(declare-fun b!6836981 () Bool)

(declare-fun tp!1870879 () Bool)

(declare-fun tp!1870878 () Bool)

(assert (=> b!6836981 (= e!4123829 (and tp!1870879 tp!1870878))))

(declare-fun b!6836983 () Bool)

(declare-fun tp!1870877 () Bool)

(declare-fun tp!1870881 () Bool)

(assert (=> b!6836983 (= e!4123829 (and tp!1870877 tp!1870881))))

(declare-fun b!6836980 () Bool)

(assert (=> b!6836980 (= e!4123829 tp_is_empty!42559)))

(assert (=> b!6836007 (= tp!1870797 e!4123829)))

(assert (= (and b!6836007 ((_ is ElementMatch!16653) (regOne!33818 r!7292))) b!6836980))

(assert (= (and b!6836007 ((_ is Concat!25498) (regOne!33818 r!7292))) b!6836981))

(assert (= (and b!6836007 ((_ is Star!16653) (regOne!33818 r!7292))) b!6836982))

(assert (= (and b!6836007 ((_ is Union!16653) (regOne!33818 r!7292))) b!6836983))

(declare-fun b!6836986 () Bool)

(declare-fun e!4123830 () Bool)

(declare-fun tp!1870885 () Bool)

(assert (=> b!6836986 (= e!4123830 tp!1870885)))

(declare-fun b!6836985 () Bool)

(declare-fun tp!1870884 () Bool)

(declare-fun tp!1870883 () Bool)

(assert (=> b!6836985 (= e!4123830 (and tp!1870884 tp!1870883))))

(declare-fun b!6836987 () Bool)

(declare-fun tp!1870882 () Bool)

(declare-fun tp!1870886 () Bool)

(assert (=> b!6836987 (= e!4123830 (and tp!1870882 tp!1870886))))

(declare-fun b!6836984 () Bool)

(assert (=> b!6836984 (= e!4123830 tp_is_empty!42559)))

(assert (=> b!6836007 (= tp!1870800 e!4123830)))

(assert (= (and b!6836007 ((_ is ElementMatch!16653) (regTwo!33818 r!7292))) b!6836984))

(assert (= (and b!6836007 ((_ is Concat!25498) (regTwo!33818 r!7292))) b!6836985))

(assert (= (and b!6836007 ((_ is Star!16653) (regTwo!33818 r!7292))) b!6836986))

(assert (= (and b!6836007 ((_ is Union!16653) (regTwo!33818 r!7292))) b!6836987))

(declare-fun condSetEmpty!46963 () Bool)

(assert (=> setNonEmpty!46957 (= condSetEmpty!46963 (= setRest!46957 ((as const (Array Context!12074 Bool)) false)))))

(declare-fun setRes!46963 () Bool)

(assert (=> setNonEmpty!46957 (= tp!1870802 setRes!46963)))

(declare-fun setIsEmpty!46963 () Bool)

(assert (=> setIsEmpty!46963 setRes!46963))

(declare-fun tp!1870892 () Bool)

(declare-fun e!4123833 () Bool)

(declare-fun setElem!46963 () Context!12074)

(declare-fun setNonEmpty!46963 () Bool)

(assert (=> setNonEmpty!46963 (= setRes!46963 (and tp!1870892 (inv!84879 setElem!46963) e!4123833))))

(declare-fun setRest!46963 () (InoxSet Context!12074))

(assert (=> setNonEmpty!46963 (= setRest!46957 ((_ map or) (store ((as const (Array Context!12074 Bool)) false) setElem!46963 true) setRest!46963))))

(declare-fun b!6836992 () Bool)

(declare-fun tp!1870891 () Bool)

(assert (=> b!6836992 (= e!4123833 tp!1870891)))

(assert (= (and setNonEmpty!46957 condSetEmpty!46963) setIsEmpty!46963))

(assert (= (and setNonEmpty!46957 (not condSetEmpty!46963)) setNonEmpty!46963))

(assert (= setNonEmpty!46963 b!6836992))

(declare-fun m!7582372 () Bool)

(assert (=> setNonEmpty!46963 m!7582372))

(declare-fun b!6836997 () Bool)

(declare-fun e!4123836 () Bool)

(declare-fun tp!1870897 () Bool)

(declare-fun tp!1870898 () Bool)

(assert (=> b!6836997 (= e!4123836 (and tp!1870897 tp!1870898))))

(assert (=> b!6836000 (= tp!1870796 e!4123836)))

(assert (= (and b!6836000 ((_ is Cons!66134) (exprs!6537 setElem!46957))) b!6836997))

(declare-fun b!6837000 () Bool)

(declare-fun e!4123837 () Bool)

(declare-fun tp!1870902 () Bool)

(assert (=> b!6837000 (= e!4123837 tp!1870902)))

(declare-fun b!6836999 () Bool)

(declare-fun tp!1870901 () Bool)

(declare-fun tp!1870900 () Bool)

(assert (=> b!6836999 (= e!4123837 (and tp!1870901 tp!1870900))))

(declare-fun b!6837001 () Bool)

(declare-fun tp!1870899 () Bool)

(declare-fun tp!1870903 () Bool)

(assert (=> b!6837001 (= e!4123837 (and tp!1870899 tp!1870903))))

(declare-fun b!6836998 () Bool)

(assert (=> b!6836998 (= e!4123837 tp_is_empty!42559)))

(assert (=> b!6836006 (= tp!1870798 e!4123837)))

(assert (= (and b!6836006 ((_ is ElementMatch!16653) (regOne!33819 r!7292))) b!6836998))

(assert (= (and b!6836006 ((_ is Concat!25498) (regOne!33819 r!7292))) b!6836999))

(assert (= (and b!6836006 ((_ is Star!16653) (regOne!33819 r!7292))) b!6837000))

(assert (= (and b!6836006 ((_ is Union!16653) (regOne!33819 r!7292))) b!6837001))

(declare-fun b!6837004 () Bool)

(declare-fun e!4123838 () Bool)

(declare-fun tp!1870907 () Bool)

(assert (=> b!6837004 (= e!4123838 tp!1870907)))

(declare-fun b!6837003 () Bool)

(declare-fun tp!1870906 () Bool)

(declare-fun tp!1870905 () Bool)

(assert (=> b!6837003 (= e!4123838 (and tp!1870906 tp!1870905))))

(declare-fun b!6837005 () Bool)

(declare-fun tp!1870904 () Bool)

(declare-fun tp!1870908 () Bool)

(assert (=> b!6837005 (= e!4123838 (and tp!1870904 tp!1870908))))

(declare-fun b!6837002 () Bool)

(assert (=> b!6837002 (= e!4123838 tp_is_empty!42559)))

(assert (=> b!6836006 (= tp!1870801 e!4123838)))

(assert (= (and b!6836006 ((_ is ElementMatch!16653) (regTwo!33819 r!7292))) b!6837002))

(assert (= (and b!6836006 ((_ is Concat!25498) (regTwo!33819 r!7292))) b!6837003))

(assert (= (and b!6836006 ((_ is Star!16653) (regTwo!33819 r!7292))) b!6837004))

(assert (= (and b!6836006 ((_ is Union!16653) (regTwo!33819 r!7292))) b!6837005))

(declare-fun b!6837006 () Bool)

(declare-fun e!4123839 () Bool)

(declare-fun tp!1870909 () Bool)

(declare-fun tp!1870910 () Bool)

(assert (=> b!6837006 (= e!4123839 (and tp!1870909 tp!1870910))))

(assert (=> b!6835991 (= tp!1870803 e!4123839)))

(assert (= (and b!6835991 ((_ is Cons!66134) (exprs!6537 (h!72583 zl!343)))) b!6837006))

(declare-fun b!6837014 () Bool)

(declare-fun e!4123845 () Bool)

(declare-fun tp!1870915 () Bool)

(assert (=> b!6837014 (= e!4123845 tp!1870915)))

(declare-fun e!4123844 () Bool)

(declare-fun tp!1870916 () Bool)

(declare-fun b!6837013 () Bool)

(assert (=> b!6837013 (= e!4123844 (and (inv!84879 (h!72583 (t!380002 zl!343))) e!4123845 tp!1870916))))

(assert (=> b!6836005 (= tp!1870799 e!4123844)))

(assert (= b!6837013 b!6837014))

(assert (= (and b!6836005 ((_ is Cons!66135) (t!380002 zl!343))) b!6837013))

(declare-fun m!7582374 () Bool)

(assert (=> b!6837013 m!7582374))

(declare-fun b!6837019 () Bool)

(declare-fun e!4123848 () Bool)

(declare-fun tp!1870919 () Bool)

(assert (=> b!6837019 (= e!4123848 (and tp_is_empty!42559 tp!1870919))))

(assert (=> b!6835990 (= tp!1870795 e!4123848)))

(assert (= (and b!6835990 ((_ is Cons!66136) (t!380003 s!2326))) b!6837019))

(declare-fun b_lambda!257913 () Bool)

(assert (= b_lambda!257889 (or b!6835978 b_lambda!257913)))

(declare-fun bs!1828651 () Bool)

(declare-fun d!2150410 () Bool)

(assert (= bs!1828651 (and d!2150410 b!6835978)))

(assert (=> bs!1828651 (= (dynLambda!26424 lambda!386545 (h!72583 zl!343)) (derivationStepZipperUp!1807 (h!72583 zl!343) (h!72584 s!2326)))))

(assert (=> bs!1828651 m!7581464))

(assert (=> d!2150186 d!2150410))

(declare-fun b_lambda!257915 () Bool)

(assert (= b_lambda!257909 (or b!6835978 b_lambda!257915)))

(declare-fun bs!1828652 () Bool)

(declare-fun d!2150412 () Bool)

(assert (= bs!1828652 (and d!2150412 b!6835978)))

(assert (=> bs!1828652 (= (dynLambda!26424 lambda!386545 lt!2454859) (derivationStepZipperUp!1807 lt!2454859 (h!72584 s!2326)))))

(assert (=> bs!1828652 m!7581534))

(assert (=> d!2150400 d!2150412))

(declare-fun b_lambda!257917 () Bool)

(assert (= b_lambda!257905 (or b!6835982 b_lambda!257917)))

(declare-fun bs!1828653 () Bool)

(declare-fun d!2150414 () Bool)

(assert (= bs!1828653 (and d!2150414 b!6835982)))

(declare-fun lt!2455056 () Unit!160003)

(assert (=> bs!1828653 (= lt!2455056 (lemmaConcatPreservesForall!482 (exprs!6537 lt!2454859) lt!2454836 lambda!386547))))

(assert (=> bs!1828653 (= (dynLambda!26426 lambda!386546 lt!2454859) (Context!12075 (++!14852 (exprs!6537 lt!2454859) lt!2454836)))))

(declare-fun m!7582376 () Bool)

(assert (=> bs!1828653 m!7582376))

(declare-fun m!7582378 () Bool)

(assert (=> bs!1828653 m!7582378))

(assert (=> d!2150338 d!2150414))

(declare-fun b_lambda!257919 () Bool)

(assert (= b_lambda!257911 (or b!6835978 b_lambda!257919)))

(declare-fun bs!1828654 () Bool)

(declare-fun d!2150416 () Bool)

(assert (= bs!1828654 (and d!2150416 b!6835978)))

(assert (=> bs!1828654 (= (dynLambda!26424 lambda!386545 lt!2454856) (derivationStepZipperUp!1807 lt!2454856 (h!72584 s!2326)))))

(assert (=> bs!1828654 m!7581532))

(assert (=> d!2150406 d!2150416))

(declare-fun b_lambda!257921 () Bool)

(assert (= b_lambda!257907 (or b!6835978 b_lambda!257921)))

(declare-fun bs!1828655 () Bool)

(declare-fun d!2150418 () Bool)

(assert (= bs!1828655 (and d!2150418 b!6835978)))

(assert (=> bs!1828655 (= (dynLambda!26424 lambda!386545 lt!2454848) (derivationStepZipperUp!1807 lt!2454848 (h!72584 s!2326)))))

(assert (=> bs!1828655 m!7581492))

(assert (=> d!2150394 d!2150418))

(check-sat (not b_lambda!257921) (not b!6836432) (not d!2150292) (not bm!622655) (not b!6836809) (not d!2150214) (not b!6836428) (not d!2150372) (not d!2150304) (not bm!622677) (not b!6836793) (not d!2150270) (not b!6836786) (not d!2150386) (not d!2150406) (not b!6836694) (not d!2150382) (not d!2150366) (not setNonEmpty!46963) (not b!6836892) (not b!6836440) tp_is_empty!42559 (not d!2150340) (not b!6836987) (not bm!622646) (not d!2150384) (not b!6836805) (not b!6836691) (not d!2150274) (not b!6836688) (not d!2150398) (not b!6836831) (not b!6836985) (not b!6836420) (not b!6836622) (not b!6837019) (not d!2150404) (not b!6836425) (not b!6836962) (not b!6836226) (not bs!1828653) (not b!6836787) (not b!6836863) (not bs!1828655) (not d!2150368) (not b!6836860) (not b!6836999) (not b!6836981) (not bm!622618) (not d!2150364) (not bs!1828654) (not b!6837003) (not bm!622643) (not b!6836632) (not b_lambda!257919) (not b!6836821) (not bm!622617) (not b!6836877) (not b!6836867) (not d!2150358) (not b!6836978) (not d!2150252) (not b!6837000) (not b!6836823) (not b!6836957) (not b!6836794) (not b!6836627) (not b!6836866) (not b!6837004) (not b!6836992) (not b_lambda!257917) (not b!6836979) (not b!6836814) (not b!6836833) (not b!6836934) (not bm!622690) (not b!6836789) (not b!6836366) (not b!6836692) (not d!2150248) (not b!6836790) (not d!2150300) (not d!2150334) (not b!6836630) (not bm!622612) (not b!6836937) (not d!2150178) (not d!2150336) (not b!6836904) (not b!6836938) (not b!6836997) (not b!6837001) (not b!6836358) (not b!6837013) (not b!6837005) (not b!6836550) (not b!6837014) (not d!2150264) (not b!6836828) (not b!6836956) (not b!6836819) (not b!6836430) (not d!2150338) (not d!2150272) (not b!6836947) (not b!6836835) (not d!2150352) (not d!2150250) (not b!6836815) (not d!2150362) (not d!2150254) (not d!2150356) (not b!6836961) (not b!6836548) (not d!2150350) (not b!6836585) (not b!6836840) (not d!2150394) (not b!6836888) (not b!6836983) (not b!6836817) (not bs!1828652) (not b!6836862) (not d!2150354) (not d!2150344) (not b!6836861) (not b!6836839) (not b!6836808) (not d!2150186) (not b!6836837) (not bm!622614) (not b!6836903) (not b!6836120) (not d!2150346) (not b!6836807) (not d!2150322) (not bm!622597) (not bs!1828651) (not b!6836553) (not bm!622687) (not b_lambda!257915) (not b!6836977) (not b!6836986) (not d!2150370) (not d!2150234) (not b!6836426) (not b!6836231) (not bm!622654) (not b!6836838) (not b!6836880) (not d!2150374) (not b!6836908) (not d!2150390) (not bm!622676) (not b_lambda!257913) (not bm!622665) (not d!2150402) (not b!6836885) (not bm!622694) (not b!6836696) (not b!6836634) (not b!6836806) (not bm!622678) (not bm!622693) (not d!2150278) (not b!6836788) (not b!6837006) (not d!2150342) (not b!6836695) (not b!6836552) (not bm!622695) (not b!6836890) (not b!6836939) (not d!2150244) (not d!2150400) (not b!6836551) (not d!2150240) (not bm!622642) (not d!2150360) (not b!6836936) (not b!6836982) (not d!2150320) (not b!6836952) (not d!2150380) (not b!6836829) (not d!2150376) (not b!6836799) (not b!6836593) (not b!6836628) (not bm!622696) (not b!6836119) (not b!6836689) (not d!2150282) (not b!6836951) (not b!6836554) (not bm!622685) (not d!2150246) (not b!6836230) (not b!6836886) (not b!6836878) (not bm!622688))
(check-sat)
