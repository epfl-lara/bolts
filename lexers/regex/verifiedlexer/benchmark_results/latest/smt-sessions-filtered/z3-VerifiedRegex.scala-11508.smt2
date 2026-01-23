; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!629586 () Bool)

(assert start!629586)

(declare-fun b!6354940 () Bool)

(assert (=> b!6354940 true))

(assert (=> b!6354940 true))

(declare-fun lambda!349826 () Int)

(declare-fun lambda!349825 () Int)

(assert (=> b!6354940 (not (= lambda!349826 lambda!349825))))

(assert (=> b!6354940 true))

(assert (=> b!6354940 true))

(declare-fun b!6354959 () Bool)

(assert (=> b!6354959 true))

(declare-fun bs!1591651 () Bool)

(declare-fun b!6354957 () Bool)

(assert (= bs!1591651 (and b!6354957 b!6354940)))

(declare-fun lambda!349828 () Int)

(declare-datatypes ((C!32796 0))(
  ( (C!32797 (val!26100 Int)) )
))
(declare-datatypes ((Regex!16263 0))(
  ( (ElementMatch!16263 (c!1156378 C!32796)) (Concat!25108 (regOne!33038 Regex!16263) (regTwo!33038 Regex!16263)) (EmptyExpr!16263) (Star!16263 (reg!16592 Regex!16263)) (EmptyLang!16263) (Union!16263 (regOne!33039 Regex!16263) (regTwo!33039 Regex!16263)) )
))
(declare-fun lt!2365770 () Regex!16263)

(declare-fun r!7292 () Regex!16263)

(assert (=> bs!1591651 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349828 lambda!349825))))

(assert (=> bs!1591651 (not (= lambda!349828 lambda!349826))))

(assert (=> b!6354957 true))

(assert (=> b!6354957 true))

(assert (=> b!6354957 true))

(declare-fun lambda!349829 () Int)

(assert (=> bs!1591651 (not (= lambda!349829 lambda!349825))))

(assert (=> bs!1591651 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349829 lambda!349826))))

(assert (=> b!6354957 (not (= lambda!349829 lambda!349828))))

(assert (=> b!6354957 true))

(assert (=> b!6354957 true))

(assert (=> b!6354957 true))

(declare-fun lt!2365779 () Regex!16263)

(declare-fun lambda!349830 () Int)

(assert (=> bs!1591651 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349830 lambda!349825))))

(assert (=> bs!1591651 (not (= lambda!349830 lambda!349826))))

(assert (=> b!6354957 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 (regOne!33038 r!7292))) (= lt!2365779 lt!2365770)) (= lambda!349830 lambda!349828))))

(assert (=> b!6354957 (not (= lambda!349830 lambda!349829))))

(assert (=> b!6354957 true))

(assert (=> b!6354957 true))

(assert (=> b!6354957 true))

(declare-fun lambda!349831 () Int)

(assert (=> b!6354957 (not (= lambda!349831 lambda!349828))))

(assert (=> bs!1591651 (not (= lambda!349831 lambda!349825))))

(assert (=> bs!1591651 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349831 lambda!349826))))

(assert (=> b!6354957 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 (regOne!33038 r!7292))) (= lt!2365779 lt!2365770)) (= lambda!349831 lambda!349829))))

(assert (=> b!6354957 (not (= lambda!349831 lambda!349830))))

(assert (=> b!6354957 true))

(assert (=> b!6354957 true))

(assert (=> b!6354957 true))

(declare-fun res!2614927 () Bool)

(declare-fun e!3859176 () Bool)

(assert (=> start!629586 (=> (not res!2614927) (not e!3859176))))

(declare-fun validRegex!7999 (Regex!16263) Bool)

(assert (=> start!629586 (= res!2614927 (validRegex!7999 r!7292))))

(assert (=> start!629586 e!3859176))

(declare-fun e!3859177 () Bool)

(assert (=> start!629586 e!3859177))

(declare-fun condSetEmpty!43282 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65088 0))(
  ( (Nil!64964) (Cons!64964 (h!71412 Regex!16263) (t!378678 List!65088)) )
))
(declare-datatypes ((Context!11294 0))(
  ( (Context!11295 (exprs!6147 List!65088)) )
))
(declare-fun z!1189 () (InoxSet Context!11294))

(assert (=> start!629586 (= condSetEmpty!43282 (= z!1189 ((as const (Array Context!11294 Bool)) false)))))

(declare-fun setRes!43282 () Bool)

(assert (=> start!629586 setRes!43282))

(declare-fun e!3859182 () Bool)

(assert (=> start!629586 e!3859182))

(declare-fun e!3859174 () Bool)

(assert (=> start!629586 e!3859174))

(declare-fun e!3859179 () Bool)

(declare-datatypes ((List!65089 0))(
  ( (Nil!64965) (Cons!64965 (h!71413 Context!11294) (t!378679 List!65089)) )
))
(declare-fun zl!343 () List!65089)

(declare-fun b!6354920 () Bool)

(declare-fun tp!1770528 () Bool)

(declare-fun inv!83904 (Context!11294) Bool)

(assert (=> b!6354920 (= e!3859182 (and (inv!83904 (h!71413 zl!343)) e!3859179 tp!1770528))))

(declare-fun tp!1770524 () Bool)

(declare-fun e!3859175 () Bool)

(declare-fun setElem!43282 () Context!11294)

(declare-fun setNonEmpty!43282 () Bool)

(assert (=> setNonEmpty!43282 (= setRes!43282 (and tp!1770524 (inv!83904 setElem!43282) e!3859175))))

(declare-fun setRest!43282 () (InoxSet Context!11294))

(assert (=> setNonEmpty!43282 (= z!1189 ((_ map or) (store ((as const (Array Context!11294 Bool)) false) setElem!43282 true) setRest!43282))))

(declare-fun b!6354921 () Bool)

(declare-fun res!2614942 () Bool)

(declare-fun e!3859171 () Bool)

(assert (=> b!6354921 (=> res!2614942 e!3859171)))

(declare-datatypes ((List!65090 0))(
  ( (Nil!64966) (Cons!64966 (h!71414 C!32796) (t!378680 List!65090)) )
))
(declare-fun s!2326 () List!65090)

(declare-fun lt!2365782 () Bool)

(declare-fun lt!2365781 () Regex!16263)

(declare-fun matchR!8446 (Regex!16263 List!65090) Bool)

(assert (=> b!6354921 (= res!2614942 (not (= lt!2365782 (matchR!8446 (Concat!25108 lt!2365781 lt!2365779) s!2326))))))

(declare-fun b!6354922 () Bool)

(declare-fun res!2614944 () Bool)

(declare-fun e!3859183 () Bool)

(assert (=> b!6354922 (=> res!2614944 e!3859183)))

(declare-fun lt!2365772 () List!65089)

(declare-fun zipperDepth!370 (List!65089) Int)

(assert (=> b!6354922 (= res!2614944 (> (zipperDepth!370 lt!2365772) (zipperDepth!370 zl!343)))))

(declare-fun b!6354923 () Bool)

(declare-fun e!3859169 () Bool)

(declare-fun e!3859180 () Bool)

(assert (=> b!6354923 (= e!3859169 e!3859180)))

(declare-fun res!2614947 () Bool)

(assert (=> b!6354923 (=> res!2614947 e!3859180)))

(assert (=> b!6354923 (= res!2614947 (not (= (exprs!6147 (h!71413 zl!343)) (Cons!64964 lt!2365781 (t!378678 (exprs!6147 (h!71413 zl!343)))))))))

(assert (=> b!6354923 (= lt!2365781 (Concat!25108 (regOne!33038 (regOne!33038 r!7292)) (regTwo!33038 (regOne!33038 r!7292))))))

(declare-fun b!6354924 () Bool)

(declare-fun e!3859181 () Bool)

(assert (=> b!6354924 (= e!3859181 (validRegex!7999 lt!2365779))))

(declare-fun b!6354925 () Bool)

(declare-datatypes ((Unit!158383 0))(
  ( (Unit!158384) )
))
(declare-fun e!3859168 () Unit!158383)

(declare-fun Unit!158385 () Unit!158383)

(assert (=> b!6354925 (= e!3859168 Unit!158385)))

(declare-fun b!6354926 () Bool)

(declare-fun res!2614922 () Bool)

(declare-fun e!3859186 () Bool)

(assert (=> b!6354926 (=> res!2614922 e!3859186)))

(get-info :version)

(assert (=> b!6354926 (= res!2614922 (not ((_ is Cons!64964) (exprs!6147 (h!71413 zl!343)))))))

(declare-fun b!6354927 () Bool)

(declare-fun res!2614933 () Bool)

(assert (=> b!6354927 (=> res!2614933 e!3859171)))

(assert (=> b!6354927 (= res!2614933 (not (= lt!2365782 (matchR!8446 (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292)) s!2326))))))

(declare-fun b!6354928 () Bool)

(declare-fun res!2614938 () Bool)

(assert (=> b!6354928 (=> (not res!2614938) (not e!3859176))))

(declare-fun toList!10047 ((InoxSet Context!11294)) List!65089)

(assert (=> b!6354928 (= res!2614938 (= (toList!10047 z!1189) zl!343))))

(declare-fun b!6354929 () Bool)

(assert (=> b!6354929 (= e!3859176 (not e!3859186))))

(declare-fun res!2614925 () Bool)

(assert (=> b!6354929 (=> res!2614925 e!3859186)))

(assert (=> b!6354929 (= res!2614925 (not ((_ is Cons!64965) zl!343)))))

(declare-fun matchRSpec!3364 (Regex!16263 List!65090) Bool)

(assert (=> b!6354929 (= lt!2365782 (matchRSpec!3364 r!7292 s!2326))))

(assert (=> b!6354929 (= lt!2365782 (matchR!8446 r!7292 s!2326))))

(declare-fun lt!2365771 () Unit!158383)

(declare-fun mainMatchTheorem!3364 (Regex!16263 List!65090) Unit!158383)

(assert (=> b!6354929 (= lt!2365771 (mainMatchTheorem!3364 r!7292 s!2326))))

(declare-fun setIsEmpty!43282 () Bool)

(assert (=> setIsEmpty!43282 setRes!43282))

(declare-fun b!6354930 () Bool)

(declare-fun res!2614937 () Bool)

(assert (=> b!6354930 (=> res!2614937 e!3859186)))

(declare-fun generalisedUnion!2107 (List!65088) Regex!16263)

(declare-fun unfocusZipperList!1684 (List!65089) List!65088)

(assert (=> b!6354930 (= res!2614937 (not (= r!7292 (generalisedUnion!2107 (unfocusZipperList!1684 zl!343)))))))

(declare-fun b!6354931 () Bool)

(declare-fun res!2614936 () Bool)

(assert (=> b!6354931 (=> res!2614936 e!3859186)))

(declare-fun isEmpty!37061 (List!65089) Bool)

(assert (=> b!6354931 (= res!2614936 (not (isEmpty!37061 (t!378679 zl!343))))))

(declare-fun b!6354932 () Bool)

(declare-fun res!2614945 () Bool)

(assert (=> b!6354932 (=> res!2614945 e!3859169)))

(declare-fun lt!2365780 () (InoxSet Context!11294))

(declare-fun lt!2365786 () Bool)

(declare-fun matchZipper!2275 ((InoxSet Context!11294) List!65090) Bool)

(assert (=> b!6354932 (= res!2614945 (not (= lt!2365786 (matchZipper!2275 lt!2365780 (t!378680 s!2326)))))))

(declare-fun b!6354933 () Bool)

(declare-fun tp!1770530 () Bool)

(declare-fun tp!1770523 () Bool)

(assert (=> b!6354933 (= e!3859177 (and tp!1770530 tp!1770523))))

(declare-fun b!6354934 () Bool)

(declare-fun e!3859172 () Bool)

(assert (=> b!6354934 (= e!3859172 e!3859169)))

(declare-fun res!2614928 () Bool)

(assert (=> b!6354934 (=> res!2614928 e!3859169)))

(declare-fun lt!2365767 () (InoxSet Context!11294))

(assert (=> b!6354934 (= res!2614928 (not (= lt!2365780 lt!2365767)))))

(declare-fun lt!2365783 () Context!11294)

(declare-fun lt!2365773 () (InoxSet Context!11294))

(declare-fun lambda!349827 () Int)

(declare-fun flatMap!1768 ((InoxSet Context!11294) Int) (InoxSet Context!11294))

(declare-fun derivationStepZipperUp!1437 (Context!11294 C!32796) (InoxSet Context!11294))

(assert (=> b!6354934 (= (flatMap!1768 lt!2365773 lambda!349827) (derivationStepZipperUp!1437 lt!2365783 (h!71414 s!2326)))))

(declare-fun lt!2365755 () Unit!158383)

(declare-fun lemmaFlatMapOnSingletonSet!1294 ((InoxSet Context!11294) Context!11294 Int) Unit!158383)

(assert (=> b!6354934 (= lt!2365755 (lemmaFlatMapOnSingletonSet!1294 lt!2365773 lt!2365783 lambda!349827))))

(declare-fun lt!2365763 () (InoxSet Context!11294))

(assert (=> b!6354934 (= lt!2365763 (derivationStepZipperUp!1437 lt!2365783 (h!71414 s!2326)))))

(declare-fun derivationStepZipper!2229 ((InoxSet Context!11294) C!32796) (InoxSet Context!11294))

(assert (=> b!6354934 (= lt!2365780 (derivationStepZipper!2229 lt!2365773 (h!71414 s!2326)))))

(assert (=> b!6354934 (= lt!2365773 (store ((as const (Array Context!11294 Bool)) false) lt!2365783 true))))

(declare-fun lt!2365769 () List!65088)

(assert (=> b!6354934 (= lt!2365783 (Context!11295 lt!2365769))))

(declare-fun lt!2365777 () List!65088)

(assert (=> b!6354934 (= lt!2365769 (Cons!64964 (regOne!33038 (regOne!33038 r!7292)) lt!2365777))))

(declare-fun b!6354935 () Bool)

(declare-fun res!2614943 () Bool)

(declare-fun e!3859178 () Bool)

(assert (=> b!6354935 (=> res!2614943 e!3859178)))

(declare-fun e!3859185 () Bool)

(assert (=> b!6354935 (= res!2614943 e!3859185)))

(declare-fun res!2614930 () Bool)

(assert (=> b!6354935 (=> (not res!2614930) (not e!3859185))))

(assert (=> b!6354935 (= res!2614930 ((_ is Concat!25108) (regOne!33038 r!7292)))))

(declare-fun b!6354936 () Bool)

(declare-fun res!2614935 () Bool)

(assert (=> b!6354936 (=> res!2614935 e!3859180)))

(declare-fun contextDepthTotal!372 (Context!11294) Int)

(assert (=> b!6354936 (= res!2614935 (>= (contextDepthTotal!372 lt!2365783) (contextDepthTotal!372 (h!71413 zl!343))))))

(declare-fun b!6354937 () Bool)

(declare-fun tp!1770529 () Bool)

(assert (=> b!6354937 (= e!3859175 tp!1770529)))

(declare-fun b!6354938 () Bool)

(declare-fun tp!1770526 () Bool)

(declare-fun tp!1770525 () Bool)

(assert (=> b!6354938 (= e!3859177 (and tp!1770526 tp!1770525))))

(declare-fun b!6354939 () Bool)

(declare-fun e!3859170 () Bool)

(assert (=> b!6354939 (= e!3859178 e!3859170)))

(declare-fun res!2614941 () Bool)

(assert (=> b!6354939 (=> res!2614941 e!3859170)))

(declare-fun lt!2365760 () (InoxSet Context!11294))

(assert (=> b!6354939 (= res!2614941 (not (= lt!2365760 lt!2365767)))))

(declare-fun derivationStepZipperDown!1511 (Regex!16263 Context!11294 C!32796) (InoxSet Context!11294))

(assert (=> b!6354939 (= lt!2365767 (derivationStepZipperDown!1511 (regOne!33038 (regOne!33038 r!7292)) (Context!11295 lt!2365777) (h!71414 s!2326)))))

(assert (=> b!6354939 (= lt!2365777 (Cons!64964 (regTwo!33038 (regOne!33038 r!7292)) (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun e!3859173 () Bool)

(assert (=> b!6354940 (= e!3859186 e!3859173)))

(declare-fun res!2614923 () Bool)

(assert (=> b!6354940 (=> res!2614923 e!3859173)))

(declare-fun lt!2365757 () Bool)

(assert (=> b!6354940 (= res!2614923 (or (not (= lt!2365782 lt!2365757)) ((_ is Nil!64966) s!2326)))))

(declare-fun Exists!3333 (Int) Bool)

(assert (=> b!6354940 (= (Exists!3333 lambda!349825) (Exists!3333 lambda!349826))))

(declare-fun lt!2365774 () Unit!158383)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1870 (Regex!16263 Regex!16263 List!65090) Unit!158383)

(assert (=> b!6354940 (= lt!2365774 (lemmaExistCutMatchRandMatchRSpecEquivalent!1870 (regOne!33038 r!7292) (regTwo!33038 r!7292) s!2326))))

(assert (=> b!6354940 (= lt!2365757 (Exists!3333 lambda!349825))))

(declare-datatypes ((tuple2!66484 0))(
  ( (tuple2!66485 (_1!36545 List!65090) (_2!36545 List!65090)) )
))
(declare-datatypes ((Option!16154 0))(
  ( (None!16153) (Some!16153 (v!52322 tuple2!66484)) )
))
(declare-fun isDefined!12857 (Option!16154) Bool)

(declare-fun findConcatSeparation!2568 (Regex!16263 Regex!16263 List!65090 List!65090 List!65090) Option!16154)

(assert (=> b!6354940 (= lt!2365757 (isDefined!12857 (findConcatSeparation!2568 (regOne!33038 r!7292) (regTwo!33038 r!7292) Nil!64966 s!2326 s!2326)))))

(declare-fun lt!2365768 () Unit!158383)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2332 (Regex!16263 Regex!16263 List!65090) Unit!158383)

(assert (=> b!6354940 (= lt!2365768 (lemmaFindConcatSeparationEquivalentToExists!2332 (regOne!33038 r!7292) (regTwo!33038 r!7292) s!2326))))

(declare-fun b!6354941 () Bool)

(declare-fun nullable!6256 (Regex!16263) Bool)

(assert (=> b!6354941 (= e!3859185 (nullable!6256 (regOne!33038 (regOne!33038 r!7292))))))

(declare-fun b!6354942 () Bool)

(declare-fun res!2614921 () Bool)

(assert (=> b!6354942 (=> res!2614921 e!3859186)))

(assert (=> b!6354942 (= res!2614921 (or ((_ is EmptyExpr!16263) r!7292) ((_ is EmptyLang!16263) r!7292) ((_ is ElementMatch!16263) r!7292) ((_ is Union!16263) r!7292) (not ((_ is Concat!25108) r!7292))))))

(declare-fun b!6354943 () Bool)

(declare-fun res!2614950 () Bool)

(assert (=> b!6354943 (=> res!2614950 e!3859186)))

(declare-fun generalisedConcat!1860 (List!65088) Regex!16263)

(assert (=> b!6354943 (= res!2614950 (not (= r!7292 (generalisedConcat!1860 (exprs!6147 (h!71413 zl!343))))))))

(declare-fun b!6354944 () Bool)

(declare-fun tp_is_empty!41779 () Bool)

(assert (=> b!6354944 (= e!3859177 tp_is_empty!41779)))

(declare-fun b!6354945 () Bool)

(declare-fun res!2614932 () Bool)

(assert (=> b!6354945 (=> (not res!2614932) (not e!3859176))))

(declare-fun unfocusZipper!2005 (List!65089) Regex!16263)

(assert (=> b!6354945 (= res!2614932 (= r!7292 (unfocusZipper!2005 zl!343)))))

(declare-fun b!6354946 () Bool)

(assert (=> b!6354946 (= e!3859170 e!3859172)))

(declare-fun res!2614940 () Bool)

(assert (=> b!6354946 (=> res!2614940 e!3859172)))

(assert (=> b!6354946 (= res!2614940 (not (= lt!2365786 (matchZipper!2275 lt!2365767 (t!378680 s!2326)))))))

(assert (=> b!6354946 (= lt!2365786 (matchZipper!2275 lt!2365760 (t!378680 s!2326)))))

(declare-fun b!6354947 () Bool)

(declare-fun res!2614931 () Bool)

(assert (=> b!6354947 (=> (not res!2614931) (not e!3859181))))

(assert (=> b!6354947 (= res!2614931 (validRegex!7999 (regTwo!33038 (regOne!33038 r!7292))))))

(declare-fun b!6354948 () Bool)

(declare-fun res!2614926 () Bool)

(assert (=> b!6354948 (=> res!2614926 e!3859178)))

(assert (=> b!6354948 (= res!2614926 (not ((_ is Concat!25108) (regOne!33038 r!7292))))))

(declare-fun b!6354949 () Bool)

(declare-fun Unit!158386 () Unit!158383)

(assert (=> b!6354949 (= e!3859168 Unit!158386)))

(declare-fun lt!2365761 () (InoxSet Context!11294))

(declare-fun lt!2365787 () Unit!158383)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1094 ((InoxSet Context!11294) (InoxSet Context!11294) List!65090) Unit!158383)

(assert (=> b!6354949 (= lt!2365787 (lemmaZipperConcatMatchesSameAsBothZippers!1094 lt!2365760 lt!2365761 (t!378680 s!2326)))))

(declare-fun res!2614939 () Bool)

(assert (=> b!6354949 (= res!2614939 (matchZipper!2275 lt!2365760 (t!378680 s!2326)))))

(declare-fun e!3859184 () Bool)

(assert (=> b!6354949 (=> res!2614939 e!3859184)))

(assert (=> b!6354949 (= (matchZipper!2275 ((_ map or) lt!2365760 lt!2365761) (t!378680 s!2326)) e!3859184)))

(declare-fun b!6354950 () Bool)

(declare-fun res!2614948 () Bool)

(assert (=> b!6354950 (=> res!2614948 e!3859173)))

(declare-fun isEmpty!37062 (List!65088) Bool)

(assert (=> b!6354950 (= res!2614948 (isEmpty!37062 (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun b!6354951 () Bool)

(assert (=> b!6354951 (= e!3859184 (matchZipper!2275 lt!2365761 (t!378680 s!2326)))))

(declare-fun b!6354952 () Bool)

(declare-fun tp!1770527 () Bool)

(assert (=> b!6354952 (= e!3859179 tp!1770527)))

(declare-fun b!6354953 () Bool)

(declare-fun res!2614946 () Bool)

(assert (=> b!6354953 (=> res!2614946 e!3859171)))

(assert (=> b!6354953 (= res!2614946 (not (= lt!2365782 (matchR!8446 (Concat!25108 lt!2365781 (regTwo!33038 r!7292)) s!2326))))))

(declare-fun b!6354954 () Bool)

(assert (=> b!6354954 (= e!3859171 e!3859181)))

(declare-fun res!2614949 () Bool)

(assert (=> b!6354954 (=> (not res!2614949) (not e!3859181))))

(assert (=> b!6354954 (= res!2614949 (validRegex!7999 (regOne!33038 (regOne!33038 r!7292))))))

(declare-fun b!6354955 () Bool)

(declare-fun tp!1770522 () Bool)

(assert (=> b!6354955 (= e!3859177 tp!1770522)))

(declare-fun b!6354956 () Bool)

(declare-fun tp!1770521 () Bool)

(assert (=> b!6354956 (= e!3859174 (and tp_is_empty!41779 tp!1770521))))

(assert (=> b!6354957 (= e!3859183 e!3859171)))

(declare-fun res!2614934 () Bool)

(assert (=> b!6354957 (=> res!2614934 e!3859171)))

(declare-fun lt!2365775 () Bool)

(declare-fun lt!2365785 () Bool)

(declare-fun lt!2365754 () Bool)

(assert (=> b!6354957 (= res!2614934 (or (not (= lt!2365754 lt!2365775)) (not (= lt!2365754 lt!2365785))))))

(assert (=> b!6354957 (= lt!2365754 (matchZipper!2275 z!1189 s!2326))))

(assert (=> b!6354957 (= (Exists!3333 lambda!349830) (Exists!3333 lambda!349831))))

(declare-fun lt!2365784 () Unit!158383)

(assert (=> b!6354957 (= lt!2365784 (lemmaExistCutMatchRandMatchRSpecEquivalent!1870 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 s!2326))))

(assert (=> b!6354957 (= (isDefined!12857 (findConcatSeparation!2568 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 Nil!64966 s!2326 s!2326)) (Exists!3333 lambda!349830))))

(declare-fun lt!2365764 () Unit!158383)

(assert (=> b!6354957 (= lt!2365764 (lemmaFindConcatSeparationEquivalentToExists!2332 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 s!2326))))

(assert (=> b!6354957 (= lt!2365779 (generalisedConcat!1860 (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(assert (=> b!6354957 (= (matchR!8446 lt!2365770 s!2326) (matchRSpec!3364 lt!2365770 s!2326))))

(declare-fun lt!2365766 () Unit!158383)

(assert (=> b!6354957 (= lt!2365766 (mainMatchTheorem!3364 lt!2365770 s!2326))))

(assert (=> b!6354957 (= (Exists!3333 lambda!349828) (Exists!3333 lambda!349829))))

(declare-fun lt!2365756 () Unit!158383)

(assert (=> b!6354957 (= lt!2365756 (lemmaExistCutMatchRandMatchRSpecEquivalent!1870 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 s!2326))))

(assert (=> b!6354957 (= (isDefined!12857 (findConcatSeparation!2568 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 Nil!64966 s!2326 s!2326)) (Exists!3333 lambda!349828))))

(declare-fun lt!2365778 () Unit!158383)

(assert (=> b!6354957 (= lt!2365778 (lemmaFindConcatSeparationEquivalentToExists!2332 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 s!2326))))

(assert (=> b!6354957 (= lt!2365770 (generalisedConcat!1860 lt!2365777))))

(declare-fun lt!2365765 () Regex!16263)

(assert (=> b!6354957 (= lt!2365785 (matchRSpec!3364 lt!2365765 s!2326))))

(declare-fun lt!2365788 () Unit!158383)

(assert (=> b!6354957 (= lt!2365788 (mainMatchTheorem!3364 lt!2365765 s!2326))))

(assert (=> b!6354957 (= lt!2365785 lt!2365775)))

(assert (=> b!6354957 (= lt!2365775 (matchZipper!2275 lt!2365773 s!2326))))

(assert (=> b!6354957 (= lt!2365785 (matchR!8446 lt!2365765 s!2326))))

(declare-fun lt!2365776 () Unit!158383)

(declare-fun theoremZipperRegexEquiv!805 ((InoxSet Context!11294) List!65089 Regex!16263 List!65090) Unit!158383)

(assert (=> b!6354957 (= lt!2365776 (theoremZipperRegexEquiv!805 lt!2365773 lt!2365772 lt!2365765 s!2326))))

(assert (=> b!6354957 (= lt!2365765 (generalisedConcat!1860 lt!2365769))))

(declare-fun b!6354958 () Bool)

(assert (=> b!6354958 (= e!3859180 e!3859183)))

(declare-fun res!2614924 () Bool)

(assert (=> b!6354958 (=> res!2614924 e!3859183)))

(declare-fun zipperDepthTotal!400 (List!65089) Int)

(assert (=> b!6354958 (= res!2614924 (>= (zipperDepthTotal!400 lt!2365772) (zipperDepthTotal!400 zl!343)))))

(assert (=> b!6354958 (= lt!2365772 (Cons!64965 lt!2365783 Nil!64965))))

(assert (=> b!6354959 (= e!3859173 e!3859178)))

(declare-fun res!2614929 () Bool)

(assert (=> b!6354959 (=> res!2614929 e!3859178)))

(assert (=> b!6354959 (= res!2614929 (or (and ((_ is ElementMatch!16263) (regOne!33038 r!7292)) (= (c!1156378 (regOne!33038 r!7292)) (h!71414 s!2326))) ((_ is Union!16263) (regOne!33038 r!7292))))))

(declare-fun lt!2365758 () Unit!158383)

(assert (=> b!6354959 (= lt!2365758 e!3859168)))

(declare-fun c!1156377 () Bool)

(assert (=> b!6354959 (= c!1156377 (nullable!6256 (h!71412 (exprs!6147 (h!71413 zl!343)))))))

(assert (=> b!6354959 (= (flatMap!1768 z!1189 lambda!349827) (derivationStepZipperUp!1437 (h!71413 zl!343) (h!71414 s!2326)))))

(declare-fun lt!2365759 () Unit!158383)

(assert (=> b!6354959 (= lt!2365759 (lemmaFlatMapOnSingletonSet!1294 z!1189 (h!71413 zl!343) lambda!349827))))

(declare-fun lt!2365762 () Context!11294)

(assert (=> b!6354959 (= lt!2365761 (derivationStepZipperUp!1437 lt!2365762 (h!71414 s!2326)))))

(assert (=> b!6354959 (= lt!2365760 (derivationStepZipperDown!1511 (h!71412 (exprs!6147 (h!71413 zl!343))) lt!2365762 (h!71414 s!2326)))))

(assert (=> b!6354959 (= lt!2365762 (Context!11295 (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun lt!2365753 () (InoxSet Context!11294))

(assert (=> b!6354959 (= lt!2365753 (derivationStepZipperUp!1437 (Context!11295 (Cons!64964 (h!71412 (exprs!6147 (h!71413 zl!343))) (t!378678 (exprs!6147 (h!71413 zl!343))))) (h!71414 s!2326)))))

(assert (= (and start!629586 res!2614927) b!6354928))

(assert (= (and b!6354928 res!2614938) b!6354945))

(assert (= (and b!6354945 res!2614932) b!6354929))

(assert (= (and b!6354929 (not res!2614925)) b!6354931))

(assert (= (and b!6354931 (not res!2614936)) b!6354943))

(assert (= (and b!6354943 (not res!2614950)) b!6354926))

(assert (= (and b!6354926 (not res!2614922)) b!6354930))

(assert (= (and b!6354930 (not res!2614937)) b!6354942))

(assert (= (and b!6354942 (not res!2614921)) b!6354940))

(assert (= (and b!6354940 (not res!2614923)) b!6354950))

(assert (= (and b!6354950 (not res!2614948)) b!6354959))

(assert (= (and b!6354959 c!1156377) b!6354949))

(assert (= (and b!6354959 (not c!1156377)) b!6354925))

(assert (= (and b!6354949 (not res!2614939)) b!6354951))

(assert (= (and b!6354959 (not res!2614929)) b!6354935))

(assert (= (and b!6354935 res!2614930) b!6354941))

(assert (= (and b!6354935 (not res!2614943)) b!6354948))

(assert (= (and b!6354948 (not res!2614926)) b!6354939))

(assert (= (and b!6354939 (not res!2614941)) b!6354946))

(assert (= (and b!6354946 (not res!2614940)) b!6354934))

(assert (= (and b!6354934 (not res!2614928)) b!6354932))

(assert (= (and b!6354932 (not res!2614945)) b!6354923))

(assert (= (and b!6354923 (not res!2614947)) b!6354936))

(assert (= (and b!6354936 (not res!2614935)) b!6354958))

(assert (= (and b!6354958 (not res!2614924)) b!6354922))

(assert (= (and b!6354922 (not res!2614944)) b!6354957))

(assert (= (and b!6354957 (not res!2614934)) b!6354927))

(assert (= (and b!6354927 (not res!2614933)) b!6354953))

(assert (= (and b!6354953 (not res!2614946)) b!6354921))

(assert (= (and b!6354921 (not res!2614942)) b!6354954))

(assert (= (and b!6354954 res!2614949) b!6354947))

(assert (= (and b!6354947 res!2614931) b!6354924))

(assert (= (and start!629586 ((_ is ElementMatch!16263) r!7292)) b!6354944))

(assert (= (and start!629586 ((_ is Concat!25108) r!7292)) b!6354933))

(assert (= (and start!629586 ((_ is Star!16263) r!7292)) b!6354955))

(assert (= (and start!629586 ((_ is Union!16263) r!7292)) b!6354938))

(assert (= (and start!629586 condSetEmpty!43282) setIsEmpty!43282))

(assert (= (and start!629586 (not condSetEmpty!43282)) setNonEmpty!43282))

(assert (= setNonEmpty!43282 b!6354937))

(assert (= b!6354920 b!6354952))

(assert (= (and start!629586 ((_ is Cons!64965) zl!343)) b!6354920))

(assert (= (and start!629586 ((_ is Cons!64966) s!2326)) b!6354956))

(declare-fun m!7161282 () Bool)

(assert (=> b!6354957 m!7161282))

(declare-fun m!7161284 () Bool)

(assert (=> b!6354957 m!7161284))

(declare-fun m!7161286 () Bool)

(assert (=> b!6354957 m!7161286))

(declare-fun m!7161288 () Bool)

(assert (=> b!6354957 m!7161288))

(declare-fun m!7161290 () Bool)

(assert (=> b!6354957 m!7161290))

(assert (=> b!6354957 m!7161286))

(declare-fun m!7161292 () Bool)

(assert (=> b!6354957 m!7161292))

(declare-fun m!7161294 () Bool)

(assert (=> b!6354957 m!7161294))

(declare-fun m!7161296 () Bool)

(assert (=> b!6354957 m!7161296))

(declare-fun m!7161298 () Bool)

(assert (=> b!6354957 m!7161298))

(declare-fun m!7161300 () Bool)

(assert (=> b!6354957 m!7161300))

(assert (=> b!6354957 m!7161284))

(declare-fun m!7161302 () Bool)

(assert (=> b!6354957 m!7161302))

(assert (=> b!6354957 m!7161300))

(declare-fun m!7161304 () Bool)

(assert (=> b!6354957 m!7161304))

(declare-fun m!7161306 () Bool)

(assert (=> b!6354957 m!7161306))

(declare-fun m!7161308 () Bool)

(assert (=> b!6354957 m!7161308))

(declare-fun m!7161310 () Bool)

(assert (=> b!6354957 m!7161310))

(declare-fun m!7161312 () Bool)

(assert (=> b!6354957 m!7161312))

(assert (=> b!6354957 m!7161306))

(declare-fun m!7161314 () Bool)

(assert (=> b!6354957 m!7161314))

(declare-fun m!7161316 () Bool)

(assert (=> b!6354957 m!7161316))

(declare-fun m!7161318 () Bool)

(assert (=> b!6354957 m!7161318))

(declare-fun m!7161320 () Bool)

(assert (=> b!6354957 m!7161320))

(declare-fun m!7161322 () Bool)

(assert (=> b!6354957 m!7161322))

(declare-fun m!7161324 () Bool)

(assert (=> b!6354957 m!7161324))

(declare-fun m!7161326 () Bool)

(assert (=> b!6354957 m!7161326))

(declare-fun m!7161328 () Bool)

(assert (=> b!6354957 m!7161328))

(declare-fun m!7161330 () Bool)

(assert (=> b!6354936 m!7161330))

(declare-fun m!7161332 () Bool)

(assert (=> b!6354936 m!7161332))

(declare-fun m!7161334 () Bool)

(assert (=> b!6354939 m!7161334))

(declare-fun m!7161336 () Bool)

(assert (=> b!6354958 m!7161336))

(declare-fun m!7161338 () Bool)

(assert (=> b!6354958 m!7161338))

(declare-fun m!7161340 () Bool)

(assert (=> b!6354945 m!7161340))

(declare-fun m!7161342 () Bool)

(assert (=> b!6354954 m!7161342))

(declare-fun m!7161344 () Bool)

(assert (=> b!6354934 m!7161344))

(declare-fun m!7161346 () Bool)

(assert (=> b!6354934 m!7161346))

(declare-fun m!7161348 () Bool)

(assert (=> b!6354934 m!7161348))

(declare-fun m!7161350 () Bool)

(assert (=> b!6354934 m!7161350))

(declare-fun m!7161352 () Bool)

(assert (=> b!6354934 m!7161352))

(declare-fun m!7161354 () Bool)

(assert (=> b!6354932 m!7161354))

(declare-fun m!7161356 () Bool)

(assert (=> b!6354947 m!7161356))

(declare-fun m!7161358 () Bool)

(assert (=> b!6354959 m!7161358))

(declare-fun m!7161360 () Bool)

(assert (=> b!6354959 m!7161360))

(declare-fun m!7161362 () Bool)

(assert (=> b!6354959 m!7161362))

(declare-fun m!7161364 () Bool)

(assert (=> b!6354959 m!7161364))

(declare-fun m!7161366 () Bool)

(assert (=> b!6354959 m!7161366))

(declare-fun m!7161368 () Bool)

(assert (=> b!6354959 m!7161368))

(declare-fun m!7161370 () Bool)

(assert (=> b!6354959 m!7161370))

(declare-fun m!7161372 () Bool)

(assert (=> b!6354950 m!7161372))

(declare-fun m!7161374 () Bool)

(assert (=> b!6354931 m!7161374))

(declare-fun m!7161376 () Bool)

(assert (=> b!6354921 m!7161376))

(declare-fun m!7161378 () Bool)

(assert (=> b!6354922 m!7161378))

(declare-fun m!7161380 () Bool)

(assert (=> b!6354922 m!7161380))

(declare-fun m!7161382 () Bool)

(assert (=> b!6354928 m!7161382))

(declare-fun m!7161384 () Bool)

(assert (=> b!6354946 m!7161384))

(declare-fun m!7161386 () Bool)

(assert (=> b!6354946 m!7161386))

(declare-fun m!7161388 () Bool)

(assert (=> start!629586 m!7161388))

(declare-fun m!7161390 () Bool)

(assert (=> b!6354929 m!7161390))

(declare-fun m!7161392 () Bool)

(assert (=> b!6354929 m!7161392))

(declare-fun m!7161394 () Bool)

(assert (=> b!6354929 m!7161394))

(declare-fun m!7161396 () Bool)

(assert (=> setNonEmpty!43282 m!7161396))

(declare-fun m!7161398 () Bool)

(assert (=> b!6354940 m!7161398))

(declare-fun m!7161400 () Bool)

(assert (=> b!6354940 m!7161400))

(declare-fun m!7161402 () Bool)

(assert (=> b!6354940 m!7161402))

(declare-fun m!7161404 () Bool)

(assert (=> b!6354940 m!7161404))

(assert (=> b!6354940 m!7161404))

(declare-fun m!7161406 () Bool)

(assert (=> b!6354940 m!7161406))

(assert (=> b!6354940 m!7161398))

(declare-fun m!7161408 () Bool)

(assert (=> b!6354940 m!7161408))

(declare-fun m!7161410 () Bool)

(assert (=> b!6354953 m!7161410))

(declare-fun m!7161412 () Bool)

(assert (=> b!6354949 m!7161412))

(assert (=> b!6354949 m!7161386))

(declare-fun m!7161414 () Bool)

(assert (=> b!6354949 m!7161414))

(declare-fun m!7161416 () Bool)

(assert (=> b!6354941 m!7161416))

(declare-fun m!7161418 () Bool)

(assert (=> b!6354951 m!7161418))

(declare-fun m!7161420 () Bool)

(assert (=> b!6354930 m!7161420))

(assert (=> b!6354930 m!7161420))

(declare-fun m!7161422 () Bool)

(assert (=> b!6354930 m!7161422))

(declare-fun m!7161424 () Bool)

(assert (=> b!6354924 m!7161424))

(declare-fun m!7161426 () Bool)

(assert (=> b!6354943 m!7161426))

(declare-fun m!7161428 () Bool)

(assert (=> b!6354927 m!7161428))

(declare-fun m!7161430 () Bool)

(assert (=> b!6354920 m!7161430))

(check-sat (not b!6354929) (not b!6354941) (not b!6354932) (not b!6354956) (not b!6354946) (not b!6354952) (not b!6354930) (not setNonEmpty!43282) (not b!6354922) (not b!6354931) (not b!6354955) (not start!629586) (not b!6354927) (not b!6354945) (not b!6354951) (not b!6354938) (not b!6354920) (not b!6354937) (not b!6354949) (not b!6354957) (not b!6354924) (not b!6354939) (not b!6354933) tp_is_empty!41779 (not b!6354934) (not b!6354943) (not b!6354928) (not b!6354921) (not b!6354940) (not b!6354959) (not b!6354954) (not b!6354947) (not b!6354936) (not b!6354950) (not b!6354953) (not b!6354958))
(check-sat)
(get-model)

(declare-fun d!1993737 () Bool)

(declare-fun e!3859339 () Bool)

(assert (=> d!1993737 e!3859339))

(declare-fun c!1156460 () Bool)

(assert (=> d!1993737 (= c!1156460 ((_ is EmptyExpr!16263) (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292))))))

(declare-fun lt!2365810 () Bool)

(declare-fun e!3859342 () Bool)

(assert (=> d!1993737 (= lt!2365810 e!3859342)))

(declare-fun c!1156461 () Bool)

(declare-fun isEmpty!37064 (List!65090) Bool)

(assert (=> d!1993737 (= c!1156461 (isEmpty!37064 s!2326))))

(assert (=> d!1993737 (validRegex!7999 (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292)))))

(assert (=> d!1993737 (= (matchR!8446 (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292)) s!2326) lt!2365810)))

(declare-fun bm!541956 () Bool)

(declare-fun call!541961 () Bool)

(assert (=> bm!541956 (= call!541961 (isEmpty!37064 s!2326))))

(declare-fun b!6355227 () Bool)

(assert (=> b!6355227 (= e!3859342 (nullable!6256 (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292))))))

(declare-fun b!6355228 () Bool)

(declare-fun res!2615057 () Bool)

(declare-fun e!3859338 () Bool)

(assert (=> b!6355228 (=> res!2615057 e!3859338)))

(assert (=> b!6355228 (= res!2615057 (not ((_ is ElementMatch!16263) (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292)))))))

(declare-fun e!3859343 () Bool)

(assert (=> b!6355228 (= e!3859343 e!3859338)))

(declare-fun b!6355229 () Bool)

(declare-fun e!3859337 () Bool)

(declare-fun head!13018 (List!65090) C!32796)

(assert (=> b!6355229 (= e!3859337 (= (head!13018 s!2326) (c!1156378 (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292)))))))

(declare-fun b!6355230 () Bool)

(assert (=> b!6355230 (= e!3859343 (not lt!2365810))))

(declare-fun b!6355231 () Bool)

(declare-fun e!3859340 () Bool)

(assert (=> b!6355231 (= e!3859340 (not (= (head!13018 s!2326) (c!1156378 (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292))))))))

(declare-fun b!6355232 () Bool)

(declare-fun res!2615051 () Bool)

(assert (=> b!6355232 (=> (not res!2615051) (not e!3859337))))

(assert (=> b!6355232 (= res!2615051 (not call!541961))))

(declare-fun b!6355233 () Bool)

(declare-fun res!2615054 () Bool)

(assert (=> b!6355233 (=> res!2615054 e!3859340)))

(declare-fun tail!12103 (List!65090) List!65090)

(assert (=> b!6355233 (= res!2615054 (not (isEmpty!37064 (tail!12103 s!2326))))))

(declare-fun b!6355234 () Bool)

(declare-fun e!3859341 () Bool)

(assert (=> b!6355234 (= e!3859341 e!3859340)))

(declare-fun res!2615056 () Bool)

(assert (=> b!6355234 (=> res!2615056 e!3859340)))

(assert (=> b!6355234 (= res!2615056 call!541961)))

(declare-fun b!6355235 () Bool)

(declare-fun res!2615053 () Bool)

(assert (=> b!6355235 (=> (not res!2615053) (not e!3859337))))

(assert (=> b!6355235 (= res!2615053 (isEmpty!37064 (tail!12103 s!2326)))))

(declare-fun b!6355236 () Bool)

(declare-fun res!2615055 () Bool)

(assert (=> b!6355236 (=> res!2615055 e!3859338)))

(assert (=> b!6355236 (= res!2615055 e!3859337)))

(declare-fun res!2615050 () Bool)

(assert (=> b!6355236 (=> (not res!2615050) (not e!3859337))))

(assert (=> b!6355236 (= res!2615050 lt!2365810)))

(declare-fun b!6355237 () Bool)

(assert (=> b!6355237 (= e!3859338 e!3859341)))

(declare-fun res!2615052 () Bool)

(assert (=> b!6355237 (=> (not res!2615052) (not e!3859341))))

(assert (=> b!6355237 (= res!2615052 (not lt!2365810))))

(declare-fun b!6355238 () Bool)

(assert (=> b!6355238 (= e!3859339 e!3859343)))

(declare-fun c!1156462 () Bool)

(assert (=> b!6355238 (= c!1156462 ((_ is EmptyLang!16263) (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292))))))

(declare-fun b!6355239 () Bool)

(assert (=> b!6355239 (= e!3859339 (= lt!2365810 call!541961))))

(declare-fun b!6355240 () Bool)

(declare-fun derivativeStep!4968 (Regex!16263 C!32796) Regex!16263)

(assert (=> b!6355240 (= e!3859342 (matchR!8446 (derivativeStep!4968 (Concat!25108 (regOne!33038 r!7292) (regTwo!33038 r!7292)) (head!13018 s!2326)) (tail!12103 s!2326)))))

(assert (= (and d!1993737 c!1156461) b!6355227))

(assert (= (and d!1993737 (not c!1156461)) b!6355240))

(assert (= (and d!1993737 c!1156460) b!6355239))

(assert (= (and d!1993737 (not c!1156460)) b!6355238))

(assert (= (and b!6355238 c!1156462) b!6355230))

(assert (= (and b!6355238 (not c!1156462)) b!6355228))

(assert (= (and b!6355228 (not res!2615057)) b!6355236))

(assert (= (and b!6355236 res!2615050) b!6355232))

(assert (= (and b!6355232 res!2615051) b!6355235))

(assert (= (and b!6355235 res!2615053) b!6355229))

(assert (= (and b!6355236 (not res!2615055)) b!6355237))

(assert (= (and b!6355237 res!2615052) b!6355234))

(assert (= (and b!6355234 (not res!2615056)) b!6355233))

(assert (= (and b!6355233 (not res!2615054)) b!6355231))

(assert (= (or b!6355239 b!6355232 b!6355234) bm!541956))

(declare-fun m!7161556 () Bool)

(assert (=> b!6355231 m!7161556))

(assert (=> b!6355240 m!7161556))

(assert (=> b!6355240 m!7161556))

(declare-fun m!7161558 () Bool)

(assert (=> b!6355240 m!7161558))

(declare-fun m!7161560 () Bool)

(assert (=> b!6355240 m!7161560))

(assert (=> b!6355240 m!7161558))

(assert (=> b!6355240 m!7161560))

(declare-fun m!7161562 () Bool)

(assert (=> b!6355240 m!7161562))

(assert (=> b!6355229 m!7161556))

(assert (=> b!6355233 m!7161560))

(assert (=> b!6355233 m!7161560))

(declare-fun m!7161564 () Bool)

(assert (=> b!6355233 m!7161564))

(assert (=> b!6355235 m!7161560))

(assert (=> b!6355235 m!7161560))

(assert (=> b!6355235 m!7161564))

(declare-fun m!7161566 () Bool)

(assert (=> b!6355227 m!7161566))

(declare-fun m!7161568 () Bool)

(assert (=> d!1993737 m!7161568))

(declare-fun m!7161570 () Bool)

(assert (=> d!1993737 m!7161570))

(assert (=> bm!541956 m!7161568))

(assert (=> b!6354927 d!1993737))

(declare-fun d!1993759 () Bool)

(declare-fun res!2615080 () Bool)

(declare-fun e!3859369 () Bool)

(assert (=> d!1993759 (=> res!2615080 e!3859369)))

(assert (=> d!1993759 (= res!2615080 ((_ is ElementMatch!16263) (regTwo!33038 (regOne!33038 r!7292))))))

(assert (=> d!1993759 (= (validRegex!7999 (regTwo!33038 (regOne!33038 r!7292))) e!3859369)))

(declare-fun b!6355277 () Bool)

(declare-fun e!3859370 () Bool)

(declare-fun e!3859372 () Bool)

(assert (=> b!6355277 (= e!3859370 e!3859372)))

(declare-fun res!2615082 () Bool)

(assert (=> b!6355277 (= res!2615082 (not (nullable!6256 (reg!16592 (regTwo!33038 (regOne!33038 r!7292))))))))

(assert (=> b!6355277 (=> (not res!2615082) (not e!3859372))))

(declare-fun bm!541963 () Bool)

(declare-fun call!541969 () Bool)

(declare-fun c!1156472 () Bool)

(assert (=> bm!541963 (= call!541969 (validRegex!7999 (ite c!1156472 (regTwo!33039 (regTwo!33038 (regOne!33038 r!7292))) (regTwo!33038 (regTwo!33038 (regOne!33038 r!7292))))))))

(declare-fun b!6355278 () Bool)

(declare-fun e!3859373 () Bool)

(assert (=> b!6355278 (= e!3859373 call!541969)))

(declare-fun b!6355279 () Bool)

(declare-fun call!541968 () Bool)

(assert (=> b!6355279 (= e!3859372 call!541968)))

(declare-fun b!6355280 () Bool)

(declare-fun res!2615081 () Bool)

(declare-fun e!3859368 () Bool)

(assert (=> b!6355280 (=> res!2615081 e!3859368)))

(assert (=> b!6355280 (= res!2615081 (not ((_ is Concat!25108) (regTwo!33038 (regOne!33038 r!7292)))))))

(declare-fun e!3859371 () Bool)

(assert (=> b!6355280 (= e!3859371 e!3859368)))

(declare-fun b!6355281 () Bool)

(declare-fun res!2615078 () Bool)

(declare-fun e!3859374 () Bool)

(assert (=> b!6355281 (=> (not res!2615078) (not e!3859374))))

(declare-fun call!541970 () Bool)

(assert (=> b!6355281 (= res!2615078 call!541970)))

(assert (=> b!6355281 (= e!3859371 e!3859374)))

(declare-fun b!6355282 () Bool)

(assert (=> b!6355282 (= e!3859374 call!541969)))

(declare-fun c!1156471 () Bool)

(declare-fun bm!541964 () Bool)

(assert (=> bm!541964 (= call!541968 (validRegex!7999 (ite c!1156471 (reg!16592 (regTwo!33038 (regOne!33038 r!7292))) (ite c!1156472 (regOne!33039 (regTwo!33038 (regOne!33038 r!7292))) (regOne!33038 (regTwo!33038 (regOne!33038 r!7292)))))))))

(declare-fun b!6355283 () Bool)

(assert (=> b!6355283 (= e!3859369 e!3859370)))

(assert (=> b!6355283 (= c!1156471 ((_ is Star!16263) (regTwo!33038 (regOne!33038 r!7292))))))

(declare-fun b!6355284 () Bool)

(assert (=> b!6355284 (= e!3859370 e!3859371)))

(assert (=> b!6355284 (= c!1156472 ((_ is Union!16263) (regTwo!33038 (regOne!33038 r!7292))))))

(declare-fun bm!541965 () Bool)

(assert (=> bm!541965 (= call!541970 call!541968)))

(declare-fun b!6355285 () Bool)

(assert (=> b!6355285 (= e!3859368 e!3859373)))

(declare-fun res!2615079 () Bool)

(assert (=> b!6355285 (=> (not res!2615079) (not e!3859373))))

(assert (=> b!6355285 (= res!2615079 call!541970)))

(assert (= (and d!1993759 (not res!2615080)) b!6355283))

(assert (= (and b!6355283 c!1156471) b!6355277))

(assert (= (and b!6355283 (not c!1156471)) b!6355284))

(assert (= (and b!6355277 res!2615082) b!6355279))

(assert (= (and b!6355284 c!1156472) b!6355281))

(assert (= (and b!6355284 (not c!1156472)) b!6355280))

(assert (= (and b!6355281 res!2615078) b!6355282))

(assert (= (and b!6355280 (not res!2615081)) b!6355285))

(assert (= (and b!6355285 res!2615079) b!6355278))

(assert (= (or b!6355282 b!6355278) bm!541963))

(assert (= (or b!6355281 b!6355285) bm!541965))

(assert (= (or b!6355279 bm!541965) bm!541964))

(declare-fun m!7161572 () Bool)

(assert (=> b!6355277 m!7161572))

(declare-fun m!7161574 () Bool)

(assert (=> bm!541963 m!7161574))

(declare-fun m!7161580 () Bool)

(assert (=> bm!541964 m!7161580))

(assert (=> b!6354947 d!1993759))

(declare-fun d!1993761 () Bool)

(declare-fun c!1156477 () Bool)

(assert (=> d!1993761 (= c!1156477 (isEmpty!37064 (t!378680 s!2326)))))

(declare-fun e!3859382 () Bool)

(assert (=> d!1993761 (= (matchZipper!2275 lt!2365767 (t!378680 s!2326)) e!3859382)))

(declare-fun b!6355299 () Bool)

(declare-fun nullableZipper!2029 ((InoxSet Context!11294)) Bool)

(assert (=> b!6355299 (= e!3859382 (nullableZipper!2029 lt!2365767))))

(declare-fun b!6355300 () Bool)

(assert (=> b!6355300 (= e!3859382 (matchZipper!2275 (derivationStepZipper!2229 lt!2365767 (head!13018 (t!378680 s!2326))) (tail!12103 (t!378680 s!2326))))))

(assert (= (and d!1993761 c!1156477) b!6355299))

(assert (= (and d!1993761 (not c!1156477)) b!6355300))

(declare-fun m!7161604 () Bool)

(assert (=> d!1993761 m!7161604))

(declare-fun m!7161606 () Bool)

(assert (=> b!6355299 m!7161606))

(declare-fun m!7161608 () Bool)

(assert (=> b!6355300 m!7161608))

(assert (=> b!6355300 m!7161608))

(declare-fun m!7161610 () Bool)

(assert (=> b!6355300 m!7161610))

(declare-fun m!7161612 () Bool)

(assert (=> b!6355300 m!7161612))

(assert (=> b!6355300 m!7161610))

(assert (=> b!6355300 m!7161612))

(declare-fun m!7161614 () Bool)

(assert (=> b!6355300 m!7161614))

(assert (=> b!6354946 d!1993761))

(declare-fun d!1993767 () Bool)

(declare-fun c!1156478 () Bool)

(assert (=> d!1993767 (= c!1156478 (isEmpty!37064 (t!378680 s!2326)))))

(declare-fun e!3859385 () Bool)

(assert (=> d!1993767 (= (matchZipper!2275 lt!2365760 (t!378680 s!2326)) e!3859385)))

(declare-fun b!6355301 () Bool)

(assert (=> b!6355301 (= e!3859385 (nullableZipper!2029 lt!2365760))))

(declare-fun b!6355302 () Bool)

(assert (=> b!6355302 (= e!3859385 (matchZipper!2275 (derivationStepZipper!2229 lt!2365760 (head!13018 (t!378680 s!2326))) (tail!12103 (t!378680 s!2326))))))

(assert (= (and d!1993767 c!1156478) b!6355301))

(assert (= (and d!1993767 (not c!1156478)) b!6355302))

(assert (=> d!1993767 m!7161604))

(declare-fun m!7161616 () Bool)

(assert (=> b!6355301 m!7161616))

(assert (=> b!6355302 m!7161608))

(assert (=> b!6355302 m!7161608))

(declare-fun m!7161618 () Bool)

(assert (=> b!6355302 m!7161618))

(assert (=> b!6355302 m!7161612))

(assert (=> b!6355302 m!7161618))

(assert (=> b!6355302 m!7161612))

(declare-fun m!7161620 () Bool)

(assert (=> b!6355302 m!7161620))

(assert (=> b!6354946 d!1993767))

(declare-fun d!1993769 () Bool)

(declare-fun lt!2365825 () Regex!16263)

(assert (=> d!1993769 (validRegex!7999 lt!2365825)))

(assert (=> d!1993769 (= lt!2365825 (generalisedUnion!2107 (unfocusZipperList!1684 zl!343)))))

(assert (=> d!1993769 (= (unfocusZipper!2005 zl!343) lt!2365825)))

(declare-fun bs!1591667 () Bool)

(assert (= bs!1591667 d!1993769))

(declare-fun m!7161622 () Bool)

(assert (=> bs!1591667 m!7161622))

(assert (=> bs!1591667 m!7161420))

(assert (=> bs!1591667 m!7161420))

(assert (=> bs!1591667 m!7161422))

(assert (=> b!6354945 d!1993769))

(declare-fun d!1993771 () Bool)

(declare-fun res!2615098 () Bool)

(declare-fun e!3859389 () Bool)

(assert (=> d!1993771 (=> res!2615098 e!3859389)))

(assert (=> d!1993771 (= res!2615098 ((_ is ElementMatch!16263) lt!2365779))))

(assert (=> d!1993771 (= (validRegex!7999 lt!2365779) e!3859389)))

(declare-fun b!6355311 () Bool)

(declare-fun e!3859390 () Bool)

(declare-fun e!3859392 () Bool)

(assert (=> b!6355311 (= e!3859390 e!3859392)))

(declare-fun res!2615100 () Bool)

(assert (=> b!6355311 (= res!2615100 (not (nullable!6256 (reg!16592 lt!2365779))))))

(assert (=> b!6355311 (=> (not res!2615100) (not e!3859392))))

(declare-fun bm!541966 () Bool)

(declare-fun call!541972 () Bool)

(declare-fun c!1156480 () Bool)

(assert (=> bm!541966 (= call!541972 (validRegex!7999 (ite c!1156480 (regTwo!33039 lt!2365779) (regTwo!33038 lt!2365779))))))

(declare-fun b!6355312 () Bool)

(declare-fun e!3859393 () Bool)

(assert (=> b!6355312 (= e!3859393 call!541972)))

(declare-fun b!6355313 () Bool)

(declare-fun call!541971 () Bool)

(assert (=> b!6355313 (= e!3859392 call!541971)))

(declare-fun b!6355314 () Bool)

(declare-fun res!2615099 () Bool)

(declare-fun e!3859388 () Bool)

(assert (=> b!6355314 (=> res!2615099 e!3859388)))

(assert (=> b!6355314 (= res!2615099 (not ((_ is Concat!25108) lt!2365779)))))

(declare-fun e!3859391 () Bool)

(assert (=> b!6355314 (= e!3859391 e!3859388)))

(declare-fun b!6355315 () Bool)

(declare-fun res!2615096 () Bool)

(declare-fun e!3859394 () Bool)

(assert (=> b!6355315 (=> (not res!2615096) (not e!3859394))))

(declare-fun call!541973 () Bool)

(assert (=> b!6355315 (= res!2615096 call!541973)))

(assert (=> b!6355315 (= e!3859391 e!3859394)))

(declare-fun b!6355316 () Bool)

(assert (=> b!6355316 (= e!3859394 call!541972)))

(declare-fun bm!541967 () Bool)

(declare-fun c!1156479 () Bool)

(assert (=> bm!541967 (= call!541971 (validRegex!7999 (ite c!1156479 (reg!16592 lt!2365779) (ite c!1156480 (regOne!33039 lt!2365779) (regOne!33038 lt!2365779)))))))

(declare-fun b!6355317 () Bool)

(assert (=> b!6355317 (= e!3859389 e!3859390)))

(assert (=> b!6355317 (= c!1156479 ((_ is Star!16263) lt!2365779))))

(declare-fun b!6355318 () Bool)

(assert (=> b!6355318 (= e!3859390 e!3859391)))

(assert (=> b!6355318 (= c!1156480 ((_ is Union!16263) lt!2365779))))

(declare-fun bm!541968 () Bool)

(assert (=> bm!541968 (= call!541973 call!541971)))

(declare-fun b!6355319 () Bool)

(assert (=> b!6355319 (= e!3859388 e!3859393)))

(declare-fun res!2615097 () Bool)

(assert (=> b!6355319 (=> (not res!2615097) (not e!3859393))))

(assert (=> b!6355319 (= res!2615097 call!541973)))

(assert (= (and d!1993771 (not res!2615098)) b!6355317))

(assert (= (and b!6355317 c!1156479) b!6355311))

(assert (= (and b!6355317 (not c!1156479)) b!6355318))

(assert (= (and b!6355311 res!2615100) b!6355313))

(assert (= (and b!6355318 c!1156480) b!6355315))

(assert (= (and b!6355318 (not c!1156480)) b!6355314))

(assert (= (and b!6355315 res!2615096) b!6355316))

(assert (= (and b!6355314 (not res!2615099)) b!6355319))

(assert (= (and b!6355319 res!2615097) b!6355312))

(assert (= (or b!6355316 b!6355312) bm!541966))

(assert (= (or b!6355315 b!6355319) bm!541968))

(assert (= (or b!6355313 bm!541968) bm!541967))

(declare-fun m!7161624 () Bool)

(assert (=> b!6355311 m!7161624))

(declare-fun m!7161626 () Bool)

(assert (=> bm!541966 m!7161626))

(declare-fun m!7161628 () Bool)

(assert (=> bm!541967 m!7161628))

(assert (=> b!6354924 d!1993771))

(declare-fun b!6355357 () Bool)

(declare-fun e!3859421 () Bool)

(declare-fun lt!2365833 () Regex!16263)

(declare-fun isConcat!1187 (Regex!16263) Bool)

(assert (=> b!6355357 (= e!3859421 (isConcat!1187 lt!2365833))))

(declare-fun b!6355358 () Bool)

(declare-fun e!3859419 () Bool)

(assert (=> b!6355358 (= e!3859419 e!3859421)))

(declare-fun c!1156493 () Bool)

(declare-fun tail!12104 (List!65088) List!65088)

(assert (=> b!6355358 (= c!1156493 (isEmpty!37062 (tail!12104 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun b!6355359 () Bool)

(declare-fun e!3859418 () Regex!16263)

(assert (=> b!6355359 (= e!3859418 (Concat!25108 (h!71412 (exprs!6147 (h!71413 zl!343))) (generalisedConcat!1860 (t!378678 (exprs!6147 (h!71413 zl!343))))))))

(declare-fun d!1993773 () Bool)

(declare-fun e!3859420 () Bool)

(assert (=> d!1993773 e!3859420))

(declare-fun res!2615114 () Bool)

(assert (=> d!1993773 (=> (not res!2615114) (not e!3859420))))

(assert (=> d!1993773 (= res!2615114 (validRegex!7999 lt!2365833))))

(declare-fun e!3859422 () Regex!16263)

(assert (=> d!1993773 (= lt!2365833 e!3859422)))

(declare-fun c!1156496 () Bool)

(declare-fun e!3859423 () Bool)

(assert (=> d!1993773 (= c!1156496 e!3859423)))

(declare-fun res!2615115 () Bool)

(assert (=> d!1993773 (=> (not res!2615115) (not e!3859423))))

(assert (=> d!1993773 (= res!2615115 ((_ is Cons!64964) (exprs!6147 (h!71413 zl!343))))))

(declare-fun lambda!349858 () Int)

(declare-fun forall!15437 (List!65088 Int) Bool)

(assert (=> d!1993773 (forall!15437 (exprs!6147 (h!71413 zl!343)) lambda!349858)))

(assert (=> d!1993773 (= (generalisedConcat!1860 (exprs!6147 (h!71413 zl!343))) lt!2365833)))

(declare-fun b!6355360 () Bool)

(assert (=> b!6355360 (= e!3859420 e!3859419)))

(declare-fun c!1156495 () Bool)

(assert (=> b!6355360 (= c!1156495 (isEmpty!37062 (exprs!6147 (h!71413 zl!343))))))

(declare-fun b!6355361 () Bool)

(declare-fun head!13019 (List!65088) Regex!16263)

(assert (=> b!6355361 (= e!3859421 (= lt!2365833 (head!13019 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun b!6355362 () Bool)

(declare-fun isEmptyExpr!1664 (Regex!16263) Bool)

(assert (=> b!6355362 (= e!3859419 (isEmptyExpr!1664 lt!2365833))))

(declare-fun b!6355363 () Bool)

(assert (=> b!6355363 (= e!3859422 (h!71412 (exprs!6147 (h!71413 zl!343))))))

(declare-fun b!6355364 () Bool)

(assert (=> b!6355364 (= e!3859423 (isEmpty!37062 (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun b!6355365 () Bool)

(assert (=> b!6355365 (= e!3859418 EmptyExpr!16263)))

(declare-fun b!6355366 () Bool)

(assert (=> b!6355366 (= e!3859422 e!3859418)))

(declare-fun c!1156494 () Bool)

(assert (=> b!6355366 (= c!1156494 ((_ is Cons!64964) (exprs!6147 (h!71413 zl!343))))))

(assert (= (and d!1993773 res!2615115) b!6355364))

(assert (= (and d!1993773 c!1156496) b!6355363))

(assert (= (and d!1993773 (not c!1156496)) b!6355366))

(assert (= (and b!6355366 c!1156494) b!6355359))

(assert (= (and b!6355366 (not c!1156494)) b!6355365))

(assert (= (and d!1993773 res!2615114) b!6355360))

(assert (= (and b!6355360 c!1156495) b!6355362))

(assert (= (and b!6355360 (not c!1156495)) b!6355358))

(assert (= (and b!6355358 c!1156493) b!6355361))

(assert (= (and b!6355358 (not c!1156493)) b!6355357))

(declare-fun m!7161656 () Bool)

(assert (=> b!6355358 m!7161656))

(assert (=> b!6355358 m!7161656))

(declare-fun m!7161658 () Bool)

(assert (=> b!6355358 m!7161658))

(assert (=> b!6355364 m!7161372))

(declare-fun m!7161660 () Bool)

(assert (=> b!6355362 m!7161660))

(assert (=> b!6355359 m!7161320))

(declare-fun m!7161662 () Bool)

(assert (=> b!6355361 m!7161662))

(declare-fun m!7161664 () Bool)

(assert (=> b!6355360 m!7161664))

(declare-fun m!7161666 () Bool)

(assert (=> d!1993773 m!7161666))

(declare-fun m!7161668 () Bool)

(assert (=> d!1993773 m!7161668))

(declare-fun m!7161670 () Bool)

(assert (=> b!6355357 m!7161670))

(assert (=> b!6354943 d!1993773))

(declare-fun b!6355445 () Bool)

(assert (=> b!6355445 true))

(declare-fun bs!1591702 () Bool)

(declare-fun b!6355447 () Bool)

(assert (= bs!1591702 (and b!6355447 b!6355445)))

(declare-fun lt!2365850 () Int)

(declare-fun lt!2365852 () Int)

(declare-fun lambda!349873 () Int)

(declare-fun lambda!349874 () Int)

(assert (=> bs!1591702 (= (= lt!2365850 lt!2365852) (= lambda!349874 lambda!349873))))

(assert (=> b!6355447 true))

(declare-fun d!1993789 () Bool)

(declare-fun e!3859471 () Bool)

(assert (=> d!1993789 e!3859471))

(declare-fun res!2615138 () Bool)

(assert (=> d!1993789 (=> (not res!2615138) (not e!3859471))))

(assert (=> d!1993789 (= res!2615138 (>= lt!2365850 0))))

(declare-fun e!3859470 () Int)

(assert (=> d!1993789 (= lt!2365850 e!3859470)))

(declare-fun c!1156531 () Bool)

(assert (=> d!1993789 (= c!1156531 ((_ is Cons!64965) lt!2365772))))

(assert (=> d!1993789 (= (zipperDepth!370 lt!2365772) lt!2365850)))

(assert (=> b!6355445 (= e!3859470 lt!2365852)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!258 (Context!11294) Int)

(assert (=> b!6355445 (= lt!2365852 (maxBigInt!0 (contextDepth!258 (h!71413 lt!2365772)) (zipperDepth!370 (t!378679 lt!2365772))))))

(declare-fun lambda!349871 () Int)

(declare-fun lt!2365851 () Unit!158383)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!242 (List!65089 Int Int Int) Unit!158383)

(assert (=> b!6355445 (= lt!2365851 (lemmaForallContextDepthBiggerThanTransitive!242 (t!378679 lt!2365772) lt!2365852 (zipperDepth!370 (t!378679 lt!2365772)) lambda!349871))))

(declare-fun forall!15438 (List!65089 Int) Bool)

(assert (=> b!6355445 (forall!15438 (t!378679 lt!2365772) lambda!349873)))

(declare-fun lt!2365849 () Unit!158383)

(assert (=> b!6355445 (= lt!2365849 lt!2365851)))

(declare-fun b!6355446 () Bool)

(assert (=> b!6355446 (= e!3859470 0)))

(assert (=> b!6355447 (= e!3859471 (forall!15438 lt!2365772 lambda!349874))))

(assert (= (and d!1993789 c!1156531) b!6355445))

(assert (= (and d!1993789 (not c!1156531)) b!6355446))

(assert (= (and d!1993789 res!2615138) b!6355447))

(declare-fun m!7161756 () Bool)

(assert (=> b!6355445 m!7161756))

(declare-fun m!7161758 () Bool)

(assert (=> b!6355445 m!7161758))

(declare-fun m!7161760 () Bool)

(assert (=> b!6355445 m!7161760))

(declare-fun m!7161762 () Bool)

(assert (=> b!6355445 m!7161762))

(assert (=> b!6355445 m!7161758))

(assert (=> b!6355445 m!7161758))

(declare-fun m!7161764 () Bool)

(assert (=> b!6355445 m!7161764))

(assert (=> b!6355445 m!7161756))

(declare-fun m!7161766 () Bool)

(assert (=> b!6355447 m!7161766))

(assert (=> b!6354922 d!1993789))

(declare-fun bs!1591703 () Bool)

(declare-fun b!6355469 () Bool)

(assert (= bs!1591703 (and b!6355469 b!6355445)))

(declare-fun lambda!349875 () Int)

(assert (=> bs!1591703 (= lambda!349875 lambda!349871)))

(declare-fun lambda!349876 () Int)

(declare-fun lt!2365860 () Int)

(assert (=> bs!1591703 (= (= lt!2365860 lt!2365852) (= lambda!349876 lambda!349873))))

(declare-fun bs!1591704 () Bool)

(assert (= bs!1591704 (and b!6355469 b!6355447)))

(assert (=> bs!1591704 (= (= lt!2365860 lt!2365850) (= lambda!349876 lambda!349874))))

(assert (=> b!6355469 true))

(declare-fun bs!1591705 () Bool)

(declare-fun b!6355471 () Bool)

(assert (= bs!1591705 (and b!6355471 b!6355445)))

(declare-fun lambda!349877 () Int)

(declare-fun lt!2365858 () Int)

(assert (=> bs!1591705 (= (= lt!2365858 lt!2365852) (= lambda!349877 lambda!349873))))

(declare-fun bs!1591706 () Bool)

(assert (= bs!1591706 (and b!6355471 b!6355447)))

(assert (=> bs!1591706 (= (= lt!2365858 lt!2365850) (= lambda!349877 lambda!349874))))

(declare-fun bs!1591708 () Bool)

(assert (= bs!1591708 (and b!6355471 b!6355469)))

(assert (=> bs!1591708 (= (= lt!2365858 lt!2365860) (= lambda!349877 lambda!349876))))

(assert (=> b!6355471 true))

(declare-fun d!1993815 () Bool)

(declare-fun e!3859484 () Bool)

(assert (=> d!1993815 e!3859484))

(declare-fun res!2615146 () Bool)

(assert (=> d!1993815 (=> (not res!2615146) (not e!3859484))))

(assert (=> d!1993815 (= res!2615146 (>= lt!2365858 0))))

(declare-fun e!3859483 () Int)

(assert (=> d!1993815 (= lt!2365858 e!3859483)))

(declare-fun c!1156538 () Bool)

(assert (=> d!1993815 (= c!1156538 ((_ is Cons!64965) zl!343))))

(assert (=> d!1993815 (= (zipperDepth!370 zl!343) lt!2365858)))

(assert (=> b!6355469 (= e!3859483 lt!2365860)))

(assert (=> b!6355469 (= lt!2365860 (maxBigInt!0 (contextDepth!258 (h!71413 zl!343)) (zipperDepth!370 (t!378679 zl!343))))))

(declare-fun lt!2365859 () Unit!158383)

(assert (=> b!6355469 (= lt!2365859 (lemmaForallContextDepthBiggerThanTransitive!242 (t!378679 zl!343) lt!2365860 (zipperDepth!370 (t!378679 zl!343)) lambda!349875))))

(assert (=> b!6355469 (forall!15438 (t!378679 zl!343) lambda!349876)))

(declare-fun lt!2365857 () Unit!158383)

(assert (=> b!6355469 (= lt!2365857 lt!2365859)))

(declare-fun b!6355470 () Bool)

(assert (=> b!6355470 (= e!3859483 0)))

(assert (=> b!6355471 (= e!3859484 (forall!15438 zl!343 lambda!349877))))

(assert (= (and d!1993815 c!1156538) b!6355469))

(assert (= (and d!1993815 (not c!1156538)) b!6355470))

(assert (= (and d!1993815 res!2615146) b!6355471))

(declare-fun m!7161784 () Bool)

(assert (=> b!6355469 m!7161784))

(declare-fun m!7161786 () Bool)

(assert (=> b!6355469 m!7161786))

(declare-fun m!7161788 () Bool)

(assert (=> b!6355469 m!7161788))

(declare-fun m!7161790 () Bool)

(assert (=> b!6355469 m!7161790))

(assert (=> b!6355469 m!7161786))

(assert (=> b!6355469 m!7161786))

(declare-fun m!7161792 () Bool)

(assert (=> b!6355469 m!7161792))

(assert (=> b!6355469 m!7161784))

(declare-fun m!7161794 () Bool)

(assert (=> b!6355471 m!7161794))

(assert (=> b!6354922 d!1993815))

(declare-fun d!1993819 () Bool)

(declare-fun e!3859487 () Bool)

(assert (=> d!1993819 e!3859487))

(declare-fun c!1156539 () Bool)

(assert (=> d!1993819 (= c!1156539 ((_ is EmptyExpr!16263) (Concat!25108 lt!2365781 lt!2365779)))))

(declare-fun lt!2365862 () Bool)

(declare-fun e!3859490 () Bool)

(assert (=> d!1993819 (= lt!2365862 e!3859490)))

(declare-fun c!1156540 () Bool)

(assert (=> d!1993819 (= c!1156540 (isEmpty!37064 s!2326))))

(assert (=> d!1993819 (validRegex!7999 (Concat!25108 lt!2365781 lt!2365779))))

(assert (=> d!1993819 (= (matchR!8446 (Concat!25108 lt!2365781 lt!2365779) s!2326) lt!2365862)))

(declare-fun bm!541982 () Bool)

(declare-fun call!541987 () Bool)

(assert (=> bm!541982 (= call!541987 (isEmpty!37064 s!2326))))

(declare-fun b!6355472 () Bool)

(assert (=> b!6355472 (= e!3859490 (nullable!6256 (Concat!25108 lt!2365781 lt!2365779)))))

(declare-fun b!6355473 () Bool)

(declare-fun res!2615154 () Bool)

(declare-fun e!3859486 () Bool)

(assert (=> b!6355473 (=> res!2615154 e!3859486)))

(assert (=> b!6355473 (= res!2615154 (not ((_ is ElementMatch!16263) (Concat!25108 lt!2365781 lt!2365779))))))

(declare-fun e!3859491 () Bool)

(assert (=> b!6355473 (= e!3859491 e!3859486)))

(declare-fun b!6355474 () Bool)

(declare-fun e!3859485 () Bool)

(assert (=> b!6355474 (= e!3859485 (= (head!13018 s!2326) (c!1156378 (Concat!25108 lt!2365781 lt!2365779))))))

(declare-fun b!6355475 () Bool)

(assert (=> b!6355475 (= e!3859491 (not lt!2365862))))

(declare-fun e!3859488 () Bool)

(declare-fun b!6355476 () Bool)

(assert (=> b!6355476 (= e!3859488 (not (= (head!13018 s!2326) (c!1156378 (Concat!25108 lt!2365781 lt!2365779)))))))

(declare-fun b!6355477 () Bool)

(declare-fun res!2615148 () Bool)

(assert (=> b!6355477 (=> (not res!2615148) (not e!3859485))))

(assert (=> b!6355477 (= res!2615148 (not call!541987))))

(declare-fun b!6355478 () Bool)

(declare-fun res!2615151 () Bool)

(assert (=> b!6355478 (=> res!2615151 e!3859488)))

(assert (=> b!6355478 (= res!2615151 (not (isEmpty!37064 (tail!12103 s!2326))))))

(declare-fun b!6355479 () Bool)

(declare-fun e!3859489 () Bool)

(assert (=> b!6355479 (= e!3859489 e!3859488)))

(declare-fun res!2615153 () Bool)

(assert (=> b!6355479 (=> res!2615153 e!3859488)))

(assert (=> b!6355479 (= res!2615153 call!541987)))

(declare-fun b!6355480 () Bool)

(declare-fun res!2615150 () Bool)

(assert (=> b!6355480 (=> (not res!2615150) (not e!3859485))))

(assert (=> b!6355480 (= res!2615150 (isEmpty!37064 (tail!12103 s!2326)))))

(declare-fun b!6355481 () Bool)

(declare-fun res!2615152 () Bool)

(assert (=> b!6355481 (=> res!2615152 e!3859486)))

(assert (=> b!6355481 (= res!2615152 e!3859485)))

(declare-fun res!2615147 () Bool)

(assert (=> b!6355481 (=> (not res!2615147) (not e!3859485))))

(assert (=> b!6355481 (= res!2615147 lt!2365862)))

(declare-fun b!6355482 () Bool)

(assert (=> b!6355482 (= e!3859486 e!3859489)))

(declare-fun res!2615149 () Bool)

(assert (=> b!6355482 (=> (not res!2615149) (not e!3859489))))

(assert (=> b!6355482 (= res!2615149 (not lt!2365862))))

(declare-fun b!6355483 () Bool)

(assert (=> b!6355483 (= e!3859487 e!3859491)))

(declare-fun c!1156541 () Bool)

(assert (=> b!6355483 (= c!1156541 ((_ is EmptyLang!16263) (Concat!25108 lt!2365781 lt!2365779)))))

(declare-fun b!6355484 () Bool)

(assert (=> b!6355484 (= e!3859487 (= lt!2365862 call!541987))))

(declare-fun b!6355485 () Bool)

(assert (=> b!6355485 (= e!3859490 (matchR!8446 (derivativeStep!4968 (Concat!25108 lt!2365781 lt!2365779) (head!13018 s!2326)) (tail!12103 s!2326)))))

(assert (= (and d!1993819 c!1156540) b!6355472))

(assert (= (and d!1993819 (not c!1156540)) b!6355485))

(assert (= (and d!1993819 c!1156539) b!6355484))

(assert (= (and d!1993819 (not c!1156539)) b!6355483))

(assert (= (and b!6355483 c!1156541) b!6355475))

(assert (= (and b!6355483 (not c!1156541)) b!6355473))

(assert (= (and b!6355473 (not res!2615154)) b!6355481))

(assert (= (and b!6355481 res!2615147) b!6355477))

(assert (= (and b!6355477 res!2615148) b!6355480))

(assert (= (and b!6355480 res!2615150) b!6355474))

(assert (= (and b!6355481 (not res!2615152)) b!6355482))

(assert (= (and b!6355482 res!2615149) b!6355479))

(assert (= (and b!6355479 (not res!2615153)) b!6355478))

(assert (= (and b!6355478 (not res!2615151)) b!6355476))

(assert (= (or b!6355484 b!6355477 b!6355479) bm!541982))

(assert (=> b!6355476 m!7161556))

(assert (=> b!6355485 m!7161556))

(assert (=> b!6355485 m!7161556))

(declare-fun m!7161800 () Bool)

(assert (=> b!6355485 m!7161800))

(assert (=> b!6355485 m!7161560))

(assert (=> b!6355485 m!7161800))

(assert (=> b!6355485 m!7161560))

(declare-fun m!7161802 () Bool)

(assert (=> b!6355485 m!7161802))

(assert (=> b!6355474 m!7161556))

(assert (=> b!6355478 m!7161560))

(assert (=> b!6355478 m!7161560))

(assert (=> b!6355478 m!7161564))

(assert (=> b!6355480 m!7161560))

(assert (=> b!6355480 m!7161560))

(assert (=> b!6355480 m!7161564))

(declare-fun m!7161804 () Bool)

(assert (=> b!6355472 m!7161804))

(assert (=> d!1993819 m!7161568))

(declare-fun m!7161806 () Bool)

(assert (=> d!1993819 m!7161806))

(assert (=> bm!541982 m!7161568))

(assert (=> b!6354921 d!1993819))

(declare-fun d!1993823 () Bool)

(declare-fun nullableFct!2203 (Regex!16263) Bool)

(assert (=> d!1993823 (= (nullable!6256 (regOne!33038 (regOne!33038 r!7292))) (nullableFct!2203 (regOne!33038 (regOne!33038 r!7292))))))

(declare-fun bs!1591717 () Bool)

(assert (= bs!1591717 d!1993823))

(declare-fun m!7161818 () Bool)

(assert (=> bs!1591717 m!7161818))

(assert (=> b!6354941 d!1993823))

(declare-fun bs!1591726 () Bool)

(declare-fun d!1993829 () Bool)

(assert (= bs!1591726 (and d!1993829 d!1993773)))

(declare-fun lambda!349882 () Int)

(assert (=> bs!1591726 (= lambda!349882 lambda!349858)))

(assert (=> d!1993829 (= (inv!83904 setElem!43282) (forall!15437 (exprs!6147 setElem!43282) lambda!349882))))

(declare-fun bs!1591727 () Bool)

(assert (= bs!1591727 d!1993829))

(declare-fun m!7161820 () Bool)

(assert (=> bs!1591727 m!7161820))

(assert (=> setNonEmpty!43282 d!1993829))

(declare-fun b!6355558 () Bool)

(declare-fun e!3859536 () Option!16154)

(assert (=> b!6355558 (= e!3859536 (Some!16153 (tuple2!66485 Nil!64966 s!2326)))))

(declare-fun b!6355559 () Bool)

(declare-fun e!3859535 () Bool)

(declare-fun lt!2365880 () Option!16154)

(assert (=> b!6355559 (= e!3859535 (not (isDefined!12857 lt!2365880)))))

(declare-fun b!6355560 () Bool)

(declare-fun e!3859537 () Bool)

(assert (=> b!6355560 (= e!3859537 (matchR!8446 (regTwo!33038 r!7292) s!2326))))

(declare-fun b!6355561 () Bool)

(declare-fun res!2615185 () Bool)

(declare-fun e!3859533 () Bool)

(assert (=> b!6355561 (=> (not res!2615185) (not e!3859533))))

(declare-fun get!22479 (Option!16154) tuple2!66484)

(assert (=> b!6355561 (= res!2615185 (matchR!8446 (regOne!33038 r!7292) (_1!36545 (get!22479 lt!2365880))))))

(declare-fun b!6355562 () Bool)

(declare-fun res!2615189 () Bool)

(assert (=> b!6355562 (=> (not res!2615189) (not e!3859533))))

(assert (=> b!6355562 (= res!2615189 (matchR!8446 (regTwo!33038 r!7292) (_2!36545 (get!22479 lt!2365880))))))

(declare-fun b!6355563 () Bool)

(declare-fun ++!14332 (List!65090 List!65090) List!65090)

(assert (=> b!6355563 (= e!3859533 (= (++!14332 (_1!36545 (get!22479 lt!2365880)) (_2!36545 (get!22479 lt!2365880))) s!2326))))

(declare-fun b!6355564 () Bool)

(declare-fun e!3859534 () Option!16154)

(assert (=> b!6355564 (= e!3859534 None!16153)))

(declare-fun d!1993831 () Bool)

(assert (=> d!1993831 e!3859535))

(declare-fun res!2615187 () Bool)

(assert (=> d!1993831 (=> res!2615187 e!3859535)))

(assert (=> d!1993831 (= res!2615187 e!3859533)))

(declare-fun res!2615188 () Bool)

(assert (=> d!1993831 (=> (not res!2615188) (not e!3859533))))

(assert (=> d!1993831 (= res!2615188 (isDefined!12857 lt!2365880))))

(assert (=> d!1993831 (= lt!2365880 e!3859536)))

(declare-fun c!1156563 () Bool)

(assert (=> d!1993831 (= c!1156563 e!3859537)))

(declare-fun res!2615186 () Bool)

(assert (=> d!1993831 (=> (not res!2615186) (not e!3859537))))

(assert (=> d!1993831 (= res!2615186 (matchR!8446 (regOne!33038 r!7292) Nil!64966))))

(assert (=> d!1993831 (validRegex!7999 (regOne!33038 r!7292))))

(assert (=> d!1993831 (= (findConcatSeparation!2568 (regOne!33038 r!7292) (regTwo!33038 r!7292) Nil!64966 s!2326 s!2326) lt!2365880)))

(declare-fun b!6355565 () Bool)

(assert (=> b!6355565 (= e!3859536 e!3859534)))

(declare-fun c!1156564 () Bool)

(assert (=> b!6355565 (= c!1156564 ((_ is Nil!64966) s!2326))))

(declare-fun b!6355566 () Bool)

(declare-fun lt!2365879 () Unit!158383)

(declare-fun lt!2365881 () Unit!158383)

(assert (=> b!6355566 (= lt!2365879 lt!2365881)))

(assert (=> b!6355566 (= (++!14332 (++!14332 Nil!64966 (Cons!64966 (h!71414 s!2326) Nil!64966)) (t!378680 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2427 (List!65090 C!32796 List!65090 List!65090) Unit!158383)

(assert (=> b!6355566 (= lt!2365881 (lemmaMoveElementToOtherListKeepsConcatEq!2427 Nil!64966 (h!71414 s!2326) (t!378680 s!2326) s!2326))))

(assert (=> b!6355566 (= e!3859534 (findConcatSeparation!2568 (regOne!33038 r!7292) (regTwo!33038 r!7292) (++!14332 Nil!64966 (Cons!64966 (h!71414 s!2326) Nil!64966)) (t!378680 s!2326) s!2326))))

(assert (= (and d!1993831 res!2615186) b!6355560))

(assert (= (and d!1993831 c!1156563) b!6355558))

(assert (= (and d!1993831 (not c!1156563)) b!6355565))

(assert (= (and b!6355565 c!1156564) b!6355564))

(assert (= (and b!6355565 (not c!1156564)) b!6355566))

(assert (= (and d!1993831 res!2615188) b!6355561))

(assert (= (and b!6355561 res!2615185) b!6355562))

(assert (= (and b!6355562 res!2615189) b!6355563))

(assert (= (and d!1993831 (not res!2615187)) b!6355559))

(declare-fun m!7161894 () Bool)

(assert (=> b!6355561 m!7161894))

(declare-fun m!7161896 () Bool)

(assert (=> b!6355561 m!7161896))

(declare-fun m!7161898 () Bool)

(assert (=> d!1993831 m!7161898))

(declare-fun m!7161900 () Bool)

(assert (=> d!1993831 m!7161900))

(declare-fun m!7161902 () Bool)

(assert (=> d!1993831 m!7161902))

(assert (=> b!6355559 m!7161898))

(declare-fun m!7161904 () Bool)

(assert (=> b!6355566 m!7161904))

(assert (=> b!6355566 m!7161904))

(declare-fun m!7161906 () Bool)

(assert (=> b!6355566 m!7161906))

(declare-fun m!7161908 () Bool)

(assert (=> b!6355566 m!7161908))

(assert (=> b!6355566 m!7161904))

(declare-fun m!7161910 () Bool)

(assert (=> b!6355566 m!7161910))

(assert (=> b!6355562 m!7161894))

(declare-fun m!7161912 () Bool)

(assert (=> b!6355562 m!7161912))

(declare-fun m!7161914 () Bool)

(assert (=> b!6355560 m!7161914))

(assert (=> b!6355563 m!7161894))

(declare-fun m!7161916 () Bool)

(assert (=> b!6355563 m!7161916))

(assert (=> b!6354940 d!1993831))

(declare-fun d!1993853 () Bool)

(declare-fun choose!47184 (Int) Bool)

(assert (=> d!1993853 (= (Exists!3333 lambda!349825) (choose!47184 lambda!349825))))

(declare-fun bs!1591778 () Bool)

(assert (= bs!1591778 d!1993853))

(declare-fun m!7161918 () Bool)

(assert (=> bs!1591778 m!7161918))

(assert (=> b!6354940 d!1993853))

(declare-fun d!1993855 () Bool)

(assert (=> d!1993855 (= (Exists!3333 lambda!349826) (choose!47184 lambda!349826))))

(declare-fun bs!1591779 () Bool)

(assert (= bs!1591779 d!1993855))

(declare-fun m!7161920 () Bool)

(assert (=> bs!1591779 m!7161920))

(assert (=> b!6354940 d!1993855))

(declare-fun bs!1591791 () Bool)

(declare-fun d!1993857 () Bool)

(assert (= bs!1591791 (and d!1993857 b!6354957)))

(declare-fun lambda!349892 () Int)

(assert (=> bs!1591791 (= (and (= (regOne!33038 r!7292) (regOne!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365770)) (= lambda!349892 lambda!349828))))

(declare-fun bs!1591792 () Bool)

(assert (= bs!1591792 (and d!1993857 b!6354940)))

(assert (=> bs!1591792 (= lambda!349892 lambda!349825)))

(assert (=> bs!1591791 (not (= lambda!349892 lambda!349831))))

(assert (=> bs!1591792 (not (= lambda!349892 lambda!349826))))

(assert (=> bs!1591791 (not (= lambda!349892 lambda!349829))))

(assert (=> bs!1591791 (= (and (= (regOne!33038 r!7292) (regTwo!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365779)) (= lambda!349892 lambda!349830))))

(assert (=> d!1993857 true))

(assert (=> d!1993857 true))

(assert (=> d!1993857 true))

(assert (=> d!1993857 (= (isDefined!12857 (findConcatSeparation!2568 (regOne!33038 r!7292) (regTwo!33038 r!7292) Nil!64966 s!2326 s!2326)) (Exists!3333 lambda!349892))))

(declare-fun lt!2365887 () Unit!158383)

(declare-fun choose!47185 (Regex!16263 Regex!16263 List!65090) Unit!158383)

(assert (=> d!1993857 (= lt!2365887 (choose!47185 (regOne!33038 r!7292) (regTwo!33038 r!7292) s!2326))))

(assert (=> d!1993857 (validRegex!7999 (regOne!33038 r!7292))))

(assert (=> d!1993857 (= (lemmaFindConcatSeparationEquivalentToExists!2332 (regOne!33038 r!7292) (regTwo!33038 r!7292) s!2326) lt!2365887)))

(declare-fun bs!1591795 () Bool)

(assert (= bs!1591795 d!1993857))

(assert (=> bs!1591795 m!7161902))

(declare-fun m!7161930 () Bool)

(assert (=> bs!1591795 m!7161930))

(assert (=> bs!1591795 m!7161398))

(assert (=> bs!1591795 m!7161398))

(assert (=> bs!1591795 m!7161400))

(declare-fun m!7161932 () Bool)

(assert (=> bs!1591795 m!7161932))

(assert (=> b!6354940 d!1993857))

(declare-fun bs!1591812 () Bool)

(declare-fun d!1993863 () Bool)

(assert (= bs!1591812 (and d!1993863 d!1993857)))

(declare-fun lambda!349898 () Int)

(assert (=> bs!1591812 (= lambda!349898 lambda!349892)))

(declare-fun bs!1591813 () Bool)

(assert (= bs!1591813 (and d!1993863 b!6354957)))

(assert (=> bs!1591813 (= (and (= (regOne!33038 r!7292) (regOne!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365770)) (= lambda!349898 lambda!349828))))

(declare-fun bs!1591814 () Bool)

(assert (= bs!1591814 (and d!1993863 b!6354940)))

(assert (=> bs!1591814 (= lambda!349898 lambda!349825)))

(assert (=> bs!1591813 (not (= lambda!349898 lambda!349831))))

(assert (=> bs!1591814 (not (= lambda!349898 lambda!349826))))

(assert (=> bs!1591813 (not (= lambda!349898 lambda!349829))))

(assert (=> bs!1591813 (= (and (= (regOne!33038 r!7292) (regTwo!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365779)) (= lambda!349898 lambda!349830))))

(assert (=> d!1993863 true))

(assert (=> d!1993863 true))

(assert (=> d!1993863 true))

(declare-fun bs!1591815 () Bool)

(assert (= bs!1591815 d!1993863))

(declare-fun lambda!349901 () Int)

(assert (=> bs!1591815 (not (= lambda!349901 lambda!349898))))

(assert (=> bs!1591812 (not (= lambda!349901 lambda!349892))))

(assert (=> bs!1591813 (not (= lambda!349901 lambda!349828))))

(assert (=> bs!1591814 (not (= lambda!349901 lambda!349825))))

(assert (=> bs!1591813 (= (and (= (regOne!33038 r!7292) (regTwo!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365779)) (= lambda!349901 lambda!349831))))

(assert (=> bs!1591814 (= lambda!349901 lambda!349826)))

(assert (=> bs!1591813 (= (and (= (regOne!33038 r!7292) (regOne!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365770)) (= lambda!349901 lambda!349829))))

(assert (=> bs!1591813 (not (= lambda!349901 lambda!349830))))

(assert (=> d!1993863 true))

(assert (=> d!1993863 true))

(assert (=> d!1993863 true))

(assert (=> d!1993863 (= (Exists!3333 lambda!349898) (Exists!3333 lambda!349901))))

(declare-fun lt!2365895 () Unit!158383)

(declare-fun choose!47186 (Regex!16263 Regex!16263 List!65090) Unit!158383)

(assert (=> d!1993863 (= lt!2365895 (choose!47186 (regOne!33038 r!7292) (regTwo!33038 r!7292) s!2326))))

(assert (=> d!1993863 (validRegex!7999 (regOne!33038 r!7292))))

(assert (=> d!1993863 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1870 (regOne!33038 r!7292) (regTwo!33038 r!7292) s!2326) lt!2365895)))

(declare-fun m!7161982 () Bool)

(assert (=> bs!1591815 m!7161982))

(declare-fun m!7161984 () Bool)

(assert (=> bs!1591815 m!7161984))

(declare-fun m!7161986 () Bool)

(assert (=> bs!1591815 m!7161986))

(assert (=> bs!1591815 m!7161902))

(assert (=> b!6354940 d!1993863))

(declare-fun d!1993885 () Bool)

(declare-fun isEmpty!37066 (Option!16154) Bool)

(assert (=> d!1993885 (= (isDefined!12857 (findConcatSeparation!2568 (regOne!33038 r!7292) (regTwo!33038 r!7292) Nil!64966 s!2326 s!2326)) (not (isEmpty!37066 (findConcatSeparation!2568 (regOne!33038 r!7292) (regTwo!33038 r!7292) Nil!64966 s!2326 s!2326))))))

(declare-fun bs!1591818 () Bool)

(assert (= bs!1591818 d!1993885))

(assert (=> bs!1591818 m!7161398))

(declare-fun m!7161996 () Bool)

(assert (=> bs!1591818 m!7161996))

(assert (=> b!6354940 d!1993885))

(declare-fun bs!1591819 () Bool)

(declare-fun d!1993887 () Bool)

(assert (= bs!1591819 (and d!1993887 d!1993773)))

(declare-fun lambda!349903 () Int)

(assert (=> bs!1591819 (= lambda!349903 lambda!349858)))

(declare-fun bs!1591820 () Bool)

(assert (= bs!1591820 (and d!1993887 d!1993829)))

(assert (=> bs!1591820 (= lambda!349903 lambda!349882)))

(assert (=> d!1993887 (= (inv!83904 (h!71413 zl!343)) (forall!15437 (exprs!6147 (h!71413 zl!343)) lambda!349903))))

(declare-fun bs!1591821 () Bool)

(assert (= bs!1591821 d!1993887))

(declare-fun m!7162002 () Bool)

(assert (=> bs!1591821 m!7162002))

(assert (=> b!6354920 d!1993887))

(declare-fun b!6355674 () Bool)

(declare-fun e!3859600 () (InoxSet Context!11294))

(declare-fun call!542015 () (InoxSet Context!11294))

(declare-fun call!542012 () (InoxSet Context!11294))

(assert (=> b!6355674 (= e!3859600 ((_ map or) call!542015 call!542012))))

(declare-fun b!6355675 () Bool)

(declare-fun e!3859601 () Bool)

(assert (=> b!6355675 (= e!3859601 (nullable!6256 (regOne!33038 (regOne!33038 (regOne!33038 r!7292)))))))

(declare-fun bm!542006 () Bool)

(declare-fun c!1156603 () Bool)

(declare-fun call!542014 () List!65088)

(assert (=> bm!542006 (= call!542012 (derivationStepZipperDown!1511 (ite c!1156603 (regTwo!33039 (regOne!33038 (regOne!33038 r!7292))) (regOne!33038 (regOne!33038 (regOne!33038 r!7292)))) (ite c!1156603 (Context!11295 lt!2365777) (Context!11295 call!542014)) (h!71414 s!2326)))))

(declare-fun b!6355678 () Bool)

(declare-fun c!1156604 () Bool)

(assert (=> b!6355678 (= c!1156604 ((_ is Star!16263) (regOne!33038 (regOne!33038 r!7292))))))

(declare-fun e!3859603 () (InoxSet Context!11294))

(declare-fun e!3859599 () (InoxSet Context!11294))

(assert (=> b!6355678 (= e!3859603 e!3859599)))

(declare-fun b!6355679 () Bool)

(declare-fun e!3859602 () (InoxSet Context!11294))

(assert (=> b!6355679 (= e!3859602 e!3859600)))

(assert (=> b!6355679 (= c!1156603 ((_ is Union!16263) (regOne!33038 (regOne!33038 r!7292))))))

(declare-fun bm!542007 () Bool)

(declare-fun call!542013 () List!65088)

(assert (=> bm!542007 (= call!542013 call!542014)))

(declare-fun d!1993893 () Bool)

(declare-fun c!1156605 () Bool)

(assert (=> d!1993893 (= c!1156605 (and ((_ is ElementMatch!16263) (regOne!33038 (regOne!33038 r!7292))) (= (c!1156378 (regOne!33038 (regOne!33038 r!7292))) (h!71414 s!2326))))))

(assert (=> d!1993893 (= (derivationStepZipperDown!1511 (regOne!33038 (regOne!33038 r!7292)) (Context!11295 lt!2365777) (h!71414 s!2326)) e!3859602)))

(declare-fun b!6355680 () Bool)

(declare-fun e!3859598 () (InoxSet Context!11294))

(assert (=> b!6355680 (= e!3859598 e!3859603)))

(declare-fun c!1156606 () Bool)

(assert (=> b!6355680 (= c!1156606 ((_ is Concat!25108) (regOne!33038 (regOne!33038 r!7292))))))

(declare-fun b!6355681 () Bool)

(assert (=> b!6355681 (= e!3859602 (store ((as const (Array Context!11294 Bool)) false) (Context!11295 lt!2365777) true))))

(declare-fun bm!542008 () Bool)

(declare-fun call!542016 () (InoxSet Context!11294))

(assert (=> bm!542008 (= call!542016 call!542015)))

(declare-fun b!6355682 () Bool)

(declare-fun c!1156602 () Bool)

(assert (=> b!6355682 (= c!1156602 e!3859601)))

(declare-fun res!2615235 () Bool)

(assert (=> b!6355682 (=> (not res!2615235) (not e!3859601))))

(assert (=> b!6355682 (= res!2615235 ((_ is Concat!25108) (regOne!33038 (regOne!33038 r!7292))))))

(assert (=> b!6355682 (= e!3859600 e!3859598)))

(declare-fun bm!542009 () Bool)

(assert (=> bm!542009 (= call!542015 (derivationStepZipperDown!1511 (ite c!1156603 (regOne!33039 (regOne!33038 (regOne!33038 r!7292))) (ite c!1156602 (regTwo!33038 (regOne!33038 (regOne!33038 r!7292))) (ite c!1156606 (regOne!33038 (regOne!33038 (regOne!33038 r!7292))) (reg!16592 (regOne!33038 (regOne!33038 r!7292)))))) (ite (or c!1156603 c!1156602) (Context!11295 lt!2365777) (Context!11295 call!542013)) (h!71414 s!2326)))))

(declare-fun b!6355684 () Bool)

(declare-fun call!542011 () (InoxSet Context!11294))

(assert (=> b!6355684 (= e!3859603 call!542011)))

(declare-fun b!6355685 () Bool)

(assert (=> b!6355685 (= e!3859599 ((as const (Array Context!11294 Bool)) false))))

(declare-fun b!6355686 () Bool)

(assert (=> b!6355686 (= e!3859599 call!542011)))

(declare-fun bm!542010 () Bool)

(assert (=> bm!542010 (= call!542011 call!542016)))

(declare-fun bm!542011 () Bool)

(declare-fun $colon$colon!2124 (List!65088 Regex!16263) List!65088)

(assert (=> bm!542011 (= call!542014 ($colon$colon!2124 (exprs!6147 (Context!11295 lt!2365777)) (ite (or c!1156602 c!1156606) (regTwo!33038 (regOne!33038 (regOne!33038 r!7292))) (regOne!33038 (regOne!33038 r!7292)))))))

(declare-fun b!6355687 () Bool)

(assert (=> b!6355687 (= e!3859598 ((_ map or) call!542012 call!542016))))

(assert (= (and d!1993893 c!1156605) b!6355681))

(assert (= (and d!1993893 (not c!1156605)) b!6355679))

(assert (= (and b!6355679 c!1156603) b!6355674))

(assert (= (and b!6355679 (not c!1156603)) b!6355682))

(assert (= (and b!6355682 res!2615235) b!6355675))

(assert (= (and b!6355682 c!1156602) b!6355687))

(assert (= (and b!6355682 (not c!1156602)) b!6355680))

(assert (= (and b!6355680 c!1156606) b!6355684))

(assert (= (and b!6355680 (not c!1156606)) b!6355678))

(assert (= (and b!6355678 c!1156604) b!6355686))

(assert (= (and b!6355678 (not c!1156604)) b!6355685))

(assert (= (or b!6355684 b!6355686) bm!542007))

(assert (= (or b!6355684 b!6355686) bm!542010))

(assert (= (or b!6355687 bm!542007) bm!542011))

(assert (= (or b!6355687 bm!542010) bm!542008))

(assert (= (or b!6355674 b!6355687) bm!542006))

(assert (= (or b!6355674 bm!542008) bm!542009))

(declare-fun m!7162018 () Bool)

(assert (=> bm!542011 m!7162018))

(declare-fun m!7162020 () Bool)

(assert (=> bm!542009 m!7162020))

(declare-fun m!7162022 () Bool)

(assert (=> bm!542006 m!7162022))

(declare-fun m!7162024 () Bool)

(assert (=> b!6355675 m!7162024))

(declare-fun m!7162026 () Bool)

(assert (=> b!6355681 m!7162026))

(assert (=> b!6354939 d!1993893))

(declare-fun b!6355706 () Bool)

(declare-fun e!3859616 () (InoxSet Context!11294))

(declare-fun call!542019 () (InoxSet Context!11294))

(assert (=> b!6355706 (= e!3859616 call!542019)))

(declare-fun b!6355707 () Bool)

(assert (=> b!6355707 (= e!3859616 ((as const (Array Context!11294 Bool)) false))))

(declare-fun b!6355708 () Bool)

(declare-fun e!3859617 () (InoxSet Context!11294))

(assert (=> b!6355708 (= e!3859617 e!3859616)))

(declare-fun c!1156618 () Bool)

(assert (=> b!6355708 (= c!1156618 ((_ is Cons!64964) (exprs!6147 (Context!11295 (Cons!64964 (h!71412 (exprs!6147 (h!71413 zl!343))) (t!378678 (exprs!6147 (h!71413 zl!343))))))))))

(declare-fun b!6355709 () Bool)

(assert (=> b!6355709 (= e!3859617 ((_ map or) call!542019 (derivationStepZipperUp!1437 (Context!11295 (t!378678 (exprs!6147 (Context!11295 (Cons!64964 (h!71412 (exprs!6147 (h!71413 zl!343))) (t!378678 (exprs!6147 (h!71413 zl!343)))))))) (h!71414 s!2326))))))

(declare-fun b!6355710 () Bool)

(declare-fun e!3859618 () Bool)

(assert (=> b!6355710 (= e!3859618 (nullable!6256 (h!71412 (exprs!6147 (Context!11295 (Cons!64964 (h!71412 (exprs!6147 (h!71413 zl!343))) (t!378678 (exprs!6147 (h!71413 zl!343)))))))))))

(declare-fun d!1993897 () Bool)

(declare-fun c!1156617 () Bool)

(assert (=> d!1993897 (= c!1156617 e!3859618)))

(declare-fun res!2615239 () Bool)

(assert (=> d!1993897 (=> (not res!2615239) (not e!3859618))))

(assert (=> d!1993897 (= res!2615239 ((_ is Cons!64964) (exprs!6147 (Context!11295 (Cons!64964 (h!71412 (exprs!6147 (h!71413 zl!343))) (t!378678 (exprs!6147 (h!71413 zl!343))))))))))

(assert (=> d!1993897 (= (derivationStepZipperUp!1437 (Context!11295 (Cons!64964 (h!71412 (exprs!6147 (h!71413 zl!343))) (t!378678 (exprs!6147 (h!71413 zl!343))))) (h!71414 s!2326)) e!3859617)))

(declare-fun bm!542014 () Bool)

(assert (=> bm!542014 (= call!542019 (derivationStepZipperDown!1511 (h!71412 (exprs!6147 (Context!11295 (Cons!64964 (h!71412 (exprs!6147 (h!71413 zl!343))) (t!378678 (exprs!6147 (h!71413 zl!343))))))) (Context!11295 (t!378678 (exprs!6147 (Context!11295 (Cons!64964 (h!71412 (exprs!6147 (h!71413 zl!343))) (t!378678 (exprs!6147 (h!71413 zl!343)))))))) (h!71414 s!2326)))))

(assert (= (and d!1993897 res!2615239) b!6355710))

(assert (= (and d!1993897 c!1156617) b!6355709))

(assert (= (and d!1993897 (not c!1156617)) b!6355708))

(assert (= (and b!6355708 c!1156618) b!6355706))

(assert (= (and b!6355708 (not c!1156618)) b!6355707))

(assert (= (or b!6355709 b!6355706) bm!542014))

(declare-fun m!7162048 () Bool)

(assert (=> b!6355709 m!7162048))

(declare-fun m!7162050 () Bool)

(assert (=> b!6355710 m!7162050))

(declare-fun m!7162052 () Bool)

(assert (=> bm!542014 m!7162052))

(assert (=> b!6354959 d!1993897))

(declare-fun b!6355711 () Bool)

(declare-fun e!3859619 () (InoxSet Context!11294))

(declare-fun call!542020 () (InoxSet Context!11294))

(assert (=> b!6355711 (= e!3859619 call!542020)))

(declare-fun b!6355712 () Bool)

(assert (=> b!6355712 (= e!3859619 ((as const (Array Context!11294 Bool)) false))))

(declare-fun b!6355713 () Bool)

(declare-fun e!3859620 () (InoxSet Context!11294))

(assert (=> b!6355713 (= e!3859620 e!3859619)))

(declare-fun c!1156620 () Bool)

(assert (=> b!6355713 (= c!1156620 ((_ is Cons!64964) (exprs!6147 (h!71413 zl!343))))))

(declare-fun b!6355714 () Bool)

(assert (=> b!6355714 (= e!3859620 ((_ map or) call!542020 (derivationStepZipperUp!1437 (Context!11295 (t!378678 (exprs!6147 (h!71413 zl!343)))) (h!71414 s!2326))))))

(declare-fun b!6355715 () Bool)

(declare-fun e!3859621 () Bool)

(assert (=> b!6355715 (= e!3859621 (nullable!6256 (h!71412 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun d!1993907 () Bool)

(declare-fun c!1156619 () Bool)

(assert (=> d!1993907 (= c!1156619 e!3859621)))

(declare-fun res!2615240 () Bool)

(assert (=> d!1993907 (=> (not res!2615240) (not e!3859621))))

(assert (=> d!1993907 (= res!2615240 ((_ is Cons!64964) (exprs!6147 (h!71413 zl!343))))))

(assert (=> d!1993907 (= (derivationStepZipperUp!1437 (h!71413 zl!343) (h!71414 s!2326)) e!3859620)))

(declare-fun bm!542015 () Bool)

(assert (=> bm!542015 (= call!542020 (derivationStepZipperDown!1511 (h!71412 (exprs!6147 (h!71413 zl!343))) (Context!11295 (t!378678 (exprs!6147 (h!71413 zl!343)))) (h!71414 s!2326)))))

(assert (= (and d!1993907 res!2615240) b!6355715))

(assert (= (and d!1993907 c!1156619) b!6355714))

(assert (= (and d!1993907 (not c!1156619)) b!6355713))

(assert (= (and b!6355713 c!1156620) b!6355711))

(assert (= (and b!6355713 (not c!1156620)) b!6355712))

(assert (= (or b!6355714 b!6355711) bm!542015))

(declare-fun m!7162054 () Bool)

(assert (=> b!6355714 m!7162054))

(assert (=> b!6355715 m!7161360))

(declare-fun m!7162056 () Bool)

(assert (=> bm!542015 m!7162056))

(assert (=> b!6354959 d!1993907))

(declare-fun b!6355716 () Bool)

(declare-fun e!3859622 () (InoxSet Context!11294))

(declare-fun call!542021 () (InoxSet Context!11294))

(assert (=> b!6355716 (= e!3859622 call!542021)))

(declare-fun b!6355717 () Bool)

(assert (=> b!6355717 (= e!3859622 ((as const (Array Context!11294 Bool)) false))))

(declare-fun b!6355718 () Bool)

(declare-fun e!3859623 () (InoxSet Context!11294))

(assert (=> b!6355718 (= e!3859623 e!3859622)))

(declare-fun c!1156622 () Bool)

(assert (=> b!6355718 (= c!1156622 ((_ is Cons!64964) (exprs!6147 lt!2365762)))))

(declare-fun b!6355719 () Bool)

(assert (=> b!6355719 (= e!3859623 ((_ map or) call!542021 (derivationStepZipperUp!1437 (Context!11295 (t!378678 (exprs!6147 lt!2365762))) (h!71414 s!2326))))))

(declare-fun b!6355720 () Bool)

(declare-fun e!3859624 () Bool)

(assert (=> b!6355720 (= e!3859624 (nullable!6256 (h!71412 (exprs!6147 lt!2365762))))))

(declare-fun d!1993909 () Bool)

(declare-fun c!1156621 () Bool)

(assert (=> d!1993909 (= c!1156621 e!3859624)))

(declare-fun res!2615241 () Bool)

(assert (=> d!1993909 (=> (not res!2615241) (not e!3859624))))

(assert (=> d!1993909 (= res!2615241 ((_ is Cons!64964) (exprs!6147 lt!2365762)))))

(assert (=> d!1993909 (= (derivationStepZipperUp!1437 lt!2365762 (h!71414 s!2326)) e!3859623)))

(declare-fun bm!542016 () Bool)

(assert (=> bm!542016 (= call!542021 (derivationStepZipperDown!1511 (h!71412 (exprs!6147 lt!2365762)) (Context!11295 (t!378678 (exprs!6147 lt!2365762))) (h!71414 s!2326)))))

(assert (= (and d!1993909 res!2615241) b!6355720))

(assert (= (and d!1993909 c!1156621) b!6355719))

(assert (= (and d!1993909 (not c!1156621)) b!6355718))

(assert (= (and b!6355718 c!1156622) b!6355716))

(assert (= (and b!6355718 (not c!1156622)) b!6355717))

(assert (= (or b!6355719 b!6355716) bm!542016))

(declare-fun m!7162058 () Bool)

(assert (=> b!6355719 m!7162058))

(declare-fun m!7162060 () Bool)

(assert (=> b!6355720 m!7162060))

(declare-fun m!7162062 () Bool)

(assert (=> bm!542016 m!7162062))

(assert (=> b!6354959 d!1993909))

(declare-fun d!1993911 () Bool)

(declare-fun choose!47187 ((InoxSet Context!11294) Int) (InoxSet Context!11294))

(assert (=> d!1993911 (= (flatMap!1768 z!1189 lambda!349827) (choose!47187 z!1189 lambda!349827))))

(declare-fun bs!1591829 () Bool)

(assert (= bs!1591829 d!1993911))

(declare-fun m!7162066 () Bool)

(assert (=> bs!1591829 m!7162066))

(assert (=> b!6354959 d!1993911))

(declare-fun d!1993913 () Bool)

(declare-fun dynLambda!25761 (Int Context!11294) (InoxSet Context!11294))

(assert (=> d!1993913 (= (flatMap!1768 z!1189 lambda!349827) (dynLambda!25761 lambda!349827 (h!71413 zl!343)))))

(declare-fun lt!2365922 () Unit!158383)

(declare-fun choose!47188 ((InoxSet Context!11294) Context!11294 Int) Unit!158383)

(assert (=> d!1993913 (= lt!2365922 (choose!47188 z!1189 (h!71413 zl!343) lambda!349827))))

(assert (=> d!1993913 (= z!1189 (store ((as const (Array Context!11294 Bool)) false) (h!71413 zl!343) true))))

(assert (=> d!1993913 (= (lemmaFlatMapOnSingletonSet!1294 z!1189 (h!71413 zl!343) lambda!349827) lt!2365922)))

(declare-fun b_lambda!241657 () Bool)

(assert (=> (not b_lambda!241657) (not d!1993913)))

(declare-fun bs!1591830 () Bool)

(assert (= bs!1591830 d!1993913))

(assert (=> bs!1591830 m!7161368))

(declare-fun m!7162070 () Bool)

(assert (=> bs!1591830 m!7162070))

(declare-fun m!7162072 () Bool)

(assert (=> bs!1591830 m!7162072))

(declare-fun m!7162074 () Bool)

(assert (=> bs!1591830 m!7162074))

(assert (=> b!6354959 d!1993913))

(declare-fun d!1993915 () Bool)

(assert (=> d!1993915 (= (nullable!6256 (h!71412 (exprs!6147 (h!71413 zl!343)))) (nullableFct!2203 (h!71412 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun bs!1591831 () Bool)

(assert (= bs!1591831 d!1993915))

(declare-fun m!7162076 () Bool)

(assert (=> bs!1591831 m!7162076))

(assert (=> b!6354959 d!1993915))

(declare-fun b!6355744 () Bool)

(declare-fun e!3859634 () (InoxSet Context!11294))

(declare-fun call!542026 () (InoxSet Context!11294))

(declare-fun call!542023 () (InoxSet Context!11294))

(assert (=> b!6355744 (= e!3859634 ((_ map or) call!542026 call!542023))))

(declare-fun b!6355745 () Bool)

(declare-fun e!3859635 () Bool)

(assert (=> b!6355745 (= e!3859635 (nullable!6256 (regOne!33038 (h!71412 (exprs!6147 (h!71413 zl!343))))))))

(declare-fun c!1156624 () Bool)

(declare-fun bm!542017 () Bool)

(declare-fun call!542025 () List!65088)

(assert (=> bm!542017 (= call!542023 (derivationStepZipperDown!1511 (ite c!1156624 (regTwo!33039 (h!71412 (exprs!6147 (h!71413 zl!343)))) (regOne!33038 (h!71412 (exprs!6147 (h!71413 zl!343))))) (ite c!1156624 lt!2365762 (Context!11295 call!542025)) (h!71414 s!2326)))))

(declare-fun b!6355746 () Bool)

(declare-fun c!1156625 () Bool)

(assert (=> b!6355746 (= c!1156625 ((_ is Star!16263) (h!71412 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun e!3859637 () (InoxSet Context!11294))

(declare-fun e!3859633 () (InoxSet Context!11294))

(assert (=> b!6355746 (= e!3859637 e!3859633)))

(declare-fun b!6355747 () Bool)

(declare-fun e!3859636 () (InoxSet Context!11294))

(assert (=> b!6355747 (= e!3859636 e!3859634)))

(assert (=> b!6355747 (= c!1156624 ((_ is Union!16263) (h!71412 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun bm!542018 () Bool)

(declare-fun call!542024 () List!65088)

(assert (=> bm!542018 (= call!542024 call!542025)))

(declare-fun d!1993917 () Bool)

(declare-fun c!1156626 () Bool)

(assert (=> d!1993917 (= c!1156626 (and ((_ is ElementMatch!16263) (h!71412 (exprs!6147 (h!71413 zl!343)))) (= (c!1156378 (h!71412 (exprs!6147 (h!71413 zl!343)))) (h!71414 s!2326))))))

(assert (=> d!1993917 (= (derivationStepZipperDown!1511 (h!71412 (exprs!6147 (h!71413 zl!343))) lt!2365762 (h!71414 s!2326)) e!3859636)))

(declare-fun b!6355748 () Bool)

(declare-fun e!3859632 () (InoxSet Context!11294))

(assert (=> b!6355748 (= e!3859632 e!3859637)))

(declare-fun c!1156627 () Bool)

(assert (=> b!6355748 (= c!1156627 ((_ is Concat!25108) (h!71412 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun b!6355749 () Bool)

(assert (=> b!6355749 (= e!3859636 (store ((as const (Array Context!11294 Bool)) false) lt!2365762 true))))

(declare-fun bm!542019 () Bool)

(declare-fun call!542027 () (InoxSet Context!11294))

(assert (=> bm!542019 (= call!542027 call!542026)))

(declare-fun b!6355750 () Bool)

(declare-fun c!1156623 () Bool)

(assert (=> b!6355750 (= c!1156623 e!3859635)))

(declare-fun res!2615242 () Bool)

(assert (=> b!6355750 (=> (not res!2615242) (not e!3859635))))

(assert (=> b!6355750 (= res!2615242 ((_ is Concat!25108) (h!71412 (exprs!6147 (h!71413 zl!343)))))))

(assert (=> b!6355750 (= e!3859634 e!3859632)))

(declare-fun bm!542020 () Bool)

(assert (=> bm!542020 (= call!542026 (derivationStepZipperDown!1511 (ite c!1156624 (regOne!33039 (h!71412 (exprs!6147 (h!71413 zl!343)))) (ite c!1156623 (regTwo!33038 (h!71412 (exprs!6147 (h!71413 zl!343)))) (ite c!1156627 (regOne!33038 (h!71412 (exprs!6147 (h!71413 zl!343)))) (reg!16592 (h!71412 (exprs!6147 (h!71413 zl!343))))))) (ite (or c!1156624 c!1156623) lt!2365762 (Context!11295 call!542024)) (h!71414 s!2326)))))

(declare-fun b!6355751 () Bool)

(declare-fun call!542022 () (InoxSet Context!11294))

(assert (=> b!6355751 (= e!3859637 call!542022)))

(declare-fun b!6355752 () Bool)

(assert (=> b!6355752 (= e!3859633 ((as const (Array Context!11294 Bool)) false))))

(declare-fun b!6355753 () Bool)

(assert (=> b!6355753 (= e!3859633 call!542022)))

(declare-fun bm!542021 () Bool)

(assert (=> bm!542021 (= call!542022 call!542027)))

(declare-fun bm!542022 () Bool)

(assert (=> bm!542022 (= call!542025 ($colon$colon!2124 (exprs!6147 lt!2365762) (ite (or c!1156623 c!1156627) (regTwo!33038 (h!71412 (exprs!6147 (h!71413 zl!343)))) (h!71412 (exprs!6147 (h!71413 zl!343))))))))

(declare-fun b!6355754 () Bool)

(assert (=> b!6355754 (= e!3859632 ((_ map or) call!542023 call!542027))))

(assert (= (and d!1993917 c!1156626) b!6355749))

(assert (= (and d!1993917 (not c!1156626)) b!6355747))

(assert (= (and b!6355747 c!1156624) b!6355744))

(assert (= (and b!6355747 (not c!1156624)) b!6355750))

(assert (= (and b!6355750 res!2615242) b!6355745))

(assert (= (and b!6355750 c!1156623) b!6355754))

(assert (= (and b!6355750 (not c!1156623)) b!6355748))

(assert (= (and b!6355748 c!1156627) b!6355751))

(assert (= (and b!6355748 (not c!1156627)) b!6355746))

(assert (= (and b!6355746 c!1156625) b!6355753))

(assert (= (and b!6355746 (not c!1156625)) b!6355752))

(assert (= (or b!6355751 b!6355753) bm!542018))

(assert (= (or b!6355751 b!6355753) bm!542021))

(assert (= (or b!6355754 bm!542018) bm!542022))

(assert (= (or b!6355754 bm!542021) bm!542019))

(assert (= (or b!6355744 b!6355754) bm!542017))

(assert (= (or b!6355744 bm!542019) bm!542020))

(declare-fun m!7162080 () Bool)

(assert (=> bm!542022 m!7162080))

(declare-fun m!7162082 () Bool)

(assert (=> bm!542020 m!7162082))

(declare-fun m!7162084 () Bool)

(assert (=> bm!542017 m!7162084))

(declare-fun m!7162086 () Bool)

(assert (=> b!6355745 m!7162086))

(declare-fun m!7162088 () Bool)

(assert (=> b!6355749 m!7162088))

(assert (=> b!6354959 d!1993917))

(declare-fun d!1993919 () Bool)

(declare-fun lt!2365925 () Int)

(assert (=> d!1993919 (>= lt!2365925 0)))

(declare-fun e!3859656 () Int)

(assert (=> d!1993919 (= lt!2365925 e!3859656)))

(declare-fun c!1156630 () Bool)

(assert (=> d!1993919 (= c!1156630 ((_ is Cons!64965) lt!2365772))))

(assert (=> d!1993919 (= (zipperDepthTotal!400 lt!2365772) lt!2365925)))

(declare-fun b!6355790 () Bool)

(assert (=> b!6355790 (= e!3859656 (+ (contextDepthTotal!372 (h!71413 lt!2365772)) (zipperDepthTotal!400 (t!378679 lt!2365772))))))

(declare-fun b!6355791 () Bool)

(assert (=> b!6355791 (= e!3859656 0)))

(assert (= (and d!1993919 c!1156630) b!6355790))

(assert (= (and d!1993919 (not c!1156630)) b!6355791))

(declare-fun m!7162090 () Bool)

(assert (=> b!6355790 m!7162090))

(declare-fun m!7162092 () Bool)

(assert (=> b!6355790 m!7162092))

(assert (=> b!6354958 d!1993919))

(declare-fun d!1993925 () Bool)

(declare-fun lt!2365926 () Int)

(assert (=> d!1993925 (>= lt!2365926 0)))

(declare-fun e!3859657 () Int)

(assert (=> d!1993925 (= lt!2365926 e!3859657)))

(declare-fun c!1156631 () Bool)

(assert (=> d!1993925 (= c!1156631 ((_ is Cons!64965) zl!343))))

(assert (=> d!1993925 (= (zipperDepthTotal!400 zl!343) lt!2365926)))

(declare-fun b!6355792 () Bool)

(assert (=> b!6355792 (= e!3859657 (+ (contextDepthTotal!372 (h!71413 zl!343)) (zipperDepthTotal!400 (t!378679 zl!343))))))

(declare-fun b!6355793 () Bool)

(assert (=> b!6355793 (= e!3859657 0)))

(assert (= (and d!1993925 c!1156631) b!6355792))

(assert (= (and d!1993925 (not c!1156631)) b!6355793))

(assert (=> b!6355792 m!7161332))

(declare-fun m!7162094 () Bool)

(assert (=> b!6355792 m!7162094))

(assert (=> b!6354958 d!1993925))

(declare-fun d!1993927 () Bool)

(declare-fun lt!2365929 () Int)

(assert (=> d!1993927 (>= lt!2365929 0)))

(declare-fun e!3859660 () Int)

(assert (=> d!1993927 (= lt!2365929 e!3859660)))

(declare-fun c!1156635 () Bool)

(assert (=> d!1993927 (= c!1156635 ((_ is Cons!64964) (exprs!6147 lt!2365783)))))

(assert (=> d!1993927 (= (contextDepthTotal!372 lt!2365783) lt!2365929)))

(declare-fun b!6355798 () Bool)

(declare-fun regexDepthTotal!220 (Regex!16263) Int)

(assert (=> b!6355798 (= e!3859660 (+ (regexDepthTotal!220 (h!71412 (exprs!6147 lt!2365783))) (contextDepthTotal!372 (Context!11295 (t!378678 (exprs!6147 lt!2365783))))))))

(declare-fun b!6355799 () Bool)

(assert (=> b!6355799 (= e!3859660 1)))

(assert (= (and d!1993927 c!1156635) b!6355798))

(assert (= (and d!1993927 (not c!1156635)) b!6355799))

(declare-fun m!7162096 () Bool)

(assert (=> b!6355798 m!7162096))

(declare-fun m!7162098 () Bool)

(assert (=> b!6355798 m!7162098))

(assert (=> b!6354936 d!1993927))

(declare-fun d!1993929 () Bool)

(declare-fun lt!2365930 () Int)

(assert (=> d!1993929 (>= lt!2365930 0)))

(declare-fun e!3859661 () Int)

(assert (=> d!1993929 (= lt!2365930 e!3859661)))

(declare-fun c!1156636 () Bool)

(assert (=> d!1993929 (= c!1156636 ((_ is Cons!64964) (exprs!6147 (h!71413 zl!343))))))

(assert (=> d!1993929 (= (contextDepthTotal!372 (h!71413 zl!343)) lt!2365930)))

(declare-fun b!6355800 () Bool)

(assert (=> b!6355800 (= e!3859661 (+ (regexDepthTotal!220 (h!71412 (exprs!6147 (h!71413 zl!343)))) (contextDepthTotal!372 (Context!11295 (t!378678 (exprs!6147 (h!71413 zl!343)))))))))

(declare-fun b!6355801 () Bool)

(assert (=> b!6355801 (= e!3859661 1)))

(assert (= (and d!1993929 c!1156636) b!6355800))

(assert (= (and d!1993929 (not c!1156636)) b!6355801))

(declare-fun m!7162100 () Bool)

(assert (=> b!6355800 m!7162100))

(declare-fun m!7162102 () Bool)

(assert (=> b!6355800 m!7162102))

(assert (=> b!6354936 d!1993929))

(declare-fun d!1993931 () Bool)

(declare-fun c!1156637 () Bool)

(assert (=> d!1993931 (= c!1156637 (isEmpty!37064 s!2326))))

(declare-fun e!3859662 () Bool)

(assert (=> d!1993931 (= (matchZipper!2275 lt!2365773 s!2326) e!3859662)))

(declare-fun b!6355802 () Bool)

(assert (=> b!6355802 (= e!3859662 (nullableZipper!2029 lt!2365773))))

(declare-fun b!6355803 () Bool)

(assert (=> b!6355803 (= e!3859662 (matchZipper!2275 (derivationStepZipper!2229 lt!2365773 (head!13018 s!2326)) (tail!12103 s!2326)))))

(assert (= (and d!1993931 c!1156637) b!6355802))

(assert (= (and d!1993931 (not c!1156637)) b!6355803))

(assert (=> d!1993931 m!7161568))

(declare-fun m!7162104 () Bool)

(assert (=> b!6355802 m!7162104))

(assert (=> b!6355803 m!7161556))

(assert (=> b!6355803 m!7161556))

(declare-fun m!7162106 () Bool)

(assert (=> b!6355803 m!7162106))

(assert (=> b!6355803 m!7161560))

(assert (=> b!6355803 m!7162106))

(assert (=> b!6355803 m!7161560))

(declare-fun m!7162108 () Bool)

(assert (=> b!6355803 m!7162108))

(assert (=> b!6354957 d!1993931))

(declare-fun d!1993933 () Bool)

(assert (=> d!1993933 (= (isDefined!12857 (findConcatSeparation!2568 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 Nil!64966 s!2326 s!2326)) (not (isEmpty!37066 (findConcatSeparation!2568 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 Nil!64966 s!2326 s!2326))))))

(declare-fun bs!1591834 () Bool)

(assert (= bs!1591834 d!1993933))

(assert (=> bs!1591834 m!7161284))

(declare-fun m!7162110 () Bool)

(assert (=> bs!1591834 m!7162110))

(assert (=> b!6354957 d!1993933))

(declare-fun bs!1591835 () Bool)

(declare-fun d!1993935 () Bool)

(assert (= bs!1591835 (and d!1993935 d!1993863)))

(declare-fun lambda!349916 () Int)

(assert (=> bs!1591835 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349916 lambda!349898))))

(declare-fun bs!1591836 () Bool)

(assert (= bs!1591836 (and d!1993935 d!1993857)))

(assert (=> bs!1591836 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349916 lambda!349892))))

(declare-fun bs!1591837 () Bool)

(assert (= bs!1591837 (and d!1993935 b!6354957)))

(assert (=> bs!1591837 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 (regOne!33038 r!7292))) (= lt!2365779 lt!2365770)) (= lambda!349916 lambda!349828))))

(declare-fun bs!1591838 () Bool)

(assert (= bs!1591838 (and d!1993935 b!6354940)))

(assert (=> bs!1591838 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349916 lambda!349825))))

(assert (=> bs!1591838 (not (= lambda!349916 lambda!349826))))

(assert (=> bs!1591837 (not (= lambda!349916 lambda!349829))))

(assert (=> bs!1591837 (= lambda!349916 lambda!349830)))

(assert (=> bs!1591837 (not (= lambda!349916 lambda!349831))))

(assert (=> bs!1591835 (not (= lambda!349916 lambda!349901))))

(assert (=> d!1993935 true))

(assert (=> d!1993935 true))

(assert (=> d!1993935 true))

(assert (=> d!1993935 (= (isDefined!12857 (findConcatSeparation!2568 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 Nil!64966 s!2326 s!2326)) (Exists!3333 lambda!349916))))

(declare-fun lt!2365931 () Unit!158383)

(assert (=> d!1993935 (= lt!2365931 (choose!47185 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 s!2326))))

(assert (=> d!1993935 (validRegex!7999 (regTwo!33038 (regOne!33038 r!7292)))))

(assert (=> d!1993935 (= (lemmaFindConcatSeparationEquivalentToExists!2332 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 s!2326) lt!2365931)))

(declare-fun bs!1591839 () Bool)

(assert (= bs!1591839 d!1993935))

(assert (=> bs!1591839 m!7161356))

(declare-fun m!7162112 () Bool)

(assert (=> bs!1591839 m!7162112))

(assert (=> bs!1591839 m!7161306))

(assert (=> bs!1591839 m!7161306))

(assert (=> bs!1591839 m!7161314))

(declare-fun m!7162114 () Bool)

(assert (=> bs!1591839 m!7162114))

(assert (=> b!6354957 d!1993935))

(declare-fun d!1993937 () Bool)

(assert (=> d!1993937 (= (Exists!3333 lambda!349828) (choose!47184 lambda!349828))))

(declare-fun bs!1591840 () Bool)

(assert (= bs!1591840 d!1993937))

(declare-fun m!7162116 () Bool)

(assert (=> bs!1591840 m!7162116))

(assert (=> b!6354957 d!1993937))

(declare-fun d!1993939 () Bool)

(assert (=> d!1993939 (= (Exists!3333 lambda!349830) (choose!47184 lambda!349830))))

(declare-fun bs!1591841 () Bool)

(assert (= bs!1591841 d!1993939))

(declare-fun m!7162118 () Bool)

(assert (=> bs!1591841 m!7162118))

(assert (=> b!6354957 d!1993939))

(declare-fun d!1993941 () Bool)

(declare-fun e!3859665 () Bool)

(assert (=> d!1993941 e!3859665))

(declare-fun c!1156638 () Bool)

(assert (=> d!1993941 (= c!1156638 ((_ is EmptyExpr!16263) lt!2365770))))

(declare-fun lt!2365932 () Bool)

(declare-fun e!3859668 () Bool)

(assert (=> d!1993941 (= lt!2365932 e!3859668)))

(declare-fun c!1156639 () Bool)

(assert (=> d!1993941 (= c!1156639 (isEmpty!37064 s!2326))))

(assert (=> d!1993941 (validRegex!7999 lt!2365770)))

(assert (=> d!1993941 (= (matchR!8446 lt!2365770 s!2326) lt!2365932)))

(declare-fun bm!542023 () Bool)

(declare-fun call!542028 () Bool)

(assert (=> bm!542023 (= call!542028 (isEmpty!37064 s!2326))))

(declare-fun b!6355804 () Bool)

(assert (=> b!6355804 (= e!3859668 (nullable!6256 lt!2365770))))

(declare-fun b!6355805 () Bool)

(declare-fun res!2615250 () Bool)

(declare-fun e!3859664 () Bool)

(assert (=> b!6355805 (=> res!2615250 e!3859664)))

(assert (=> b!6355805 (= res!2615250 (not ((_ is ElementMatch!16263) lt!2365770)))))

(declare-fun e!3859669 () Bool)

(assert (=> b!6355805 (= e!3859669 e!3859664)))

(declare-fun b!6355806 () Bool)

(declare-fun e!3859663 () Bool)

(assert (=> b!6355806 (= e!3859663 (= (head!13018 s!2326) (c!1156378 lt!2365770)))))

(declare-fun b!6355807 () Bool)

(assert (=> b!6355807 (= e!3859669 (not lt!2365932))))

(declare-fun b!6355808 () Bool)

(declare-fun e!3859666 () Bool)

(assert (=> b!6355808 (= e!3859666 (not (= (head!13018 s!2326) (c!1156378 lt!2365770))))))

(declare-fun b!6355809 () Bool)

(declare-fun res!2615244 () Bool)

(assert (=> b!6355809 (=> (not res!2615244) (not e!3859663))))

(assert (=> b!6355809 (= res!2615244 (not call!542028))))

(declare-fun b!6355810 () Bool)

(declare-fun res!2615247 () Bool)

(assert (=> b!6355810 (=> res!2615247 e!3859666)))

(assert (=> b!6355810 (= res!2615247 (not (isEmpty!37064 (tail!12103 s!2326))))))

(declare-fun b!6355811 () Bool)

(declare-fun e!3859667 () Bool)

(assert (=> b!6355811 (= e!3859667 e!3859666)))

(declare-fun res!2615249 () Bool)

(assert (=> b!6355811 (=> res!2615249 e!3859666)))

(assert (=> b!6355811 (= res!2615249 call!542028)))

(declare-fun b!6355812 () Bool)

(declare-fun res!2615246 () Bool)

(assert (=> b!6355812 (=> (not res!2615246) (not e!3859663))))

(assert (=> b!6355812 (= res!2615246 (isEmpty!37064 (tail!12103 s!2326)))))

(declare-fun b!6355813 () Bool)

(declare-fun res!2615248 () Bool)

(assert (=> b!6355813 (=> res!2615248 e!3859664)))

(assert (=> b!6355813 (= res!2615248 e!3859663)))

(declare-fun res!2615243 () Bool)

(assert (=> b!6355813 (=> (not res!2615243) (not e!3859663))))

(assert (=> b!6355813 (= res!2615243 lt!2365932)))

(declare-fun b!6355814 () Bool)

(assert (=> b!6355814 (= e!3859664 e!3859667)))

(declare-fun res!2615245 () Bool)

(assert (=> b!6355814 (=> (not res!2615245) (not e!3859667))))

(assert (=> b!6355814 (= res!2615245 (not lt!2365932))))

(declare-fun b!6355815 () Bool)

(assert (=> b!6355815 (= e!3859665 e!3859669)))

(declare-fun c!1156640 () Bool)

(assert (=> b!6355815 (= c!1156640 ((_ is EmptyLang!16263) lt!2365770))))

(declare-fun b!6355816 () Bool)

(assert (=> b!6355816 (= e!3859665 (= lt!2365932 call!542028))))

(declare-fun b!6355817 () Bool)

(assert (=> b!6355817 (= e!3859668 (matchR!8446 (derivativeStep!4968 lt!2365770 (head!13018 s!2326)) (tail!12103 s!2326)))))

(assert (= (and d!1993941 c!1156639) b!6355804))

(assert (= (and d!1993941 (not c!1156639)) b!6355817))

(assert (= (and d!1993941 c!1156638) b!6355816))

(assert (= (and d!1993941 (not c!1156638)) b!6355815))

(assert (= (and b!6355815 c!1156640) b!6355807))

(assert (= (and b!6355815 (not c!1156640)) b!6355805))

(assert (= (and b!6355805 (not res!2615250)) b!6355813))

(assert (= (and b!6355813 res!2615243) b!6355809))

(assert (= (and b!6355809 res!2615244) b!6355812))

(assert (= (and b!6355812 res!2615246) b!6355806))

(assert (= (and b!6355813 (not res!2615248)) b!6355814))

(assert (= (and b!6355814 res!2615245) b!6355811))

(assert (= (and b!6355811 (not res!2615249)) b!6355810))

(assert (= (and b!6355810 (not res!2615247)) b!6355808))

(assert (= (or b!6355816 b!6355809 b!6355811) bm!542023))

(assert (=> b!6355808 m!7161556))

(assert (=> b!6355817 m!7161556))

(assert (=> b!6355817 m!7161556))

(declare-fun m!7162120 () Bool)

(assert (=> b!6355817 m!7162120))

(assert (=> b!6355817 m!7161560))

(assert (=> b!6355817 m!7162120))

(assert (=> b!6355817 m!7161560))

(declare-fun m!7162122 () Bool)

(assert (=> b!6355817 m!7162122))

(assert (=> b!6355806 m!7161556))

(assert (=> b!6355810 m!7161560))

(assert (=> b!6355810 m!7161560))

(assert (=> b!6355810 m!7161564))

(assert (=> b!6355812 m!7161560))

(assert (=> b!6355812 m!7161560))

(assert (=> b!6355812 m!7161564))

(declare-fun m!7162124 () Bool)

(assert (=> b!6355804 m!7162124))

(assert (=> d!1993941 m!7161568))

(declare-fun m!7162126 () Bool)

(assert (=> d!1993941 m!7162126))

(assert (=> bm!542023 m!7161568))

(assert (=> b!6354957 d!1993941))

(declare-fun d!1993943 () Bool)

(assert (=> d!1993943 (= (matchR!8446 lt!2365765 s!2326) (matchZipper!2275 lt!2365773 s!2326))))

(declare-fun lt!2365935 () Unit!158383)

(declare-fun choose!47189 ((InoxSet Context!11294) List!65089 Regex!16263 List!65090) Unit!158383)

(assert (=> d!1993943 (= lt!2365935 (choose!47189 lt!2365773 lt!2365772 lt!2365765 s!2326))))

(assert (=> d!1993943 (validRegex!7999 lt!2365765)))

(assert (=> d!1993943 (= (theoremZipperRegexEquiv!805 lt!2365773 lt!2365772 lt!2365765 s!2326) lt!2365935)))

(declare-fun bs!1591842 () Bool)

(assert (= bs!1591842 d!1993943))

(assert (=> bs!1591842 m!7161324))

(assert (=> bs!1591842 m!7161290))

(declare-fun m!7162128 () Bool)

(assert (=> bs!1591842 m!7162128))

(declare-fun m!7162130 () Bool)

(assert (=> bs!1591842 m!7162130))

(assert (=> b!6354957 d!1993943))

(declare-fun bs!1591843 () Bool)

(declare-fun d!1993945 () Bool)

(assert (= bs!1591843 (and d!1993945 d!1993863)))

(declare-fun lambda!349917 () Int)

(assert (=> bs!1591843 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349917 lambda!349898))))

(declare-fun bs!1591844 () Bool)

(assert (= bs!1591844 (and d!1993945 d!1993857)))

(assert (=> bs!1591844 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349917 lambda!349892))))

(declare-fun bs!1591845 () Bool)

(assert (= bs!1591845 (and d!1993945 b!6354957)))

(assert (=> bs!1591845 (= lambda!349917 lambda!349828)))

(declare-fun bs!1591846 () Bool)

(assert (= bs!1591846 (and d!1993945 b!6354940)))

(assert (=> bs!1591846 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349917 lambda!349825))))

(declare-fun bs!1591847 () Bool)

(assert (= bs!1591847 (and d!1993945 d!1993935)))

(assert (=> bs!1591847 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regTwo!33038 (regOne!33038 r!7292))) (= lt!2365770 lt!2365779)) (= lambda!349917 lambda!349916))))

(assert (=> bs!1591846 (not (= lambda!349917 lambda!349826))))

(assert (=> bs!1591845 (not (= lambda!349917 lambda!349829))))

(assert (=> bs!1591845 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regTwo!33038 (regOne!33038 r!7292))) (= lt!2365770 lt!2365779)) (= lambda!349917 lambda!349830))))

(assert (=> bs!1591845 (not (= lambda!349917 lambda!349831))))

(assert (=> bs!1591843 (not (= lambda!349917 lambda!349901))))

(assert (=> d!1993945 true))

(assert (=> d!1993945 true))

(assert (=> d!1993945 true))

(assert (=> d!1993945 (= (isDefined!12857 (findConcatSeparation!2568 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 Nil!64966 s!2326 s!2326)) (Exists!3333 lambda!349917))))

(declare-fun lt!2365936 () Unit!158383)

(assert (=> d!1993945 (= lt!2365936 (choose!47185 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 s!2326))))

(assert (=> d!1993945 (validRegex!7999 (regOne!33038 (regOne!33038 r!7292)))))

(assert (=> d!1993945 (= (lemmaFindConcatSeparationEquivalentToExists!2332 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 s!2326) lt!2365936)))

(declare-fun bs!1591848 () Bool)

(assert (= bs!1591848 d!1993945))

(assert (=> bs!1591848 m!7161342))

(declare-fun m!7162132 () Bool)

(assert (=> bs!1591848 m!7162132))

(assert (=> bs!1591848 m!7161284))

(assert (=> bs!1591848 m!7161284))

(assert (=> bs!1591848 m!7161302))

(declare-fun m!7162134 () Bool)

(assert (=> bs!1591848 m!7162134))

(assert (=> b!6354957 d!1993945))

(declare-fun bs!1591849 () Bool)

(declare-fun b!6355854 () Bool)

(assert (= bs!1591849 (and b!6355854 d!1993863)))

(declare-fun lambda!349922 () Int)

(assert (=> bs!1591849 (not (= lambda!349922 lambda!349898))))

(declare-fun bs!1591850 () Bool)

(assert (= bs!1591850 (and b!6355854 b!6354957)))

(assert (=> bs!1591850 (not (= lambda!349922 lambda!349828))))

(declare-fun bs!1591851 () Bool)

(assert (= bs!1591851 (and b!6355854 b!6354940)))

(assert (=> bs!1591851 (not (= lambda!349922 lambda!349825))))

(declare-fun bs!1591852 () Bool)

(assert (= bs!1591852 (and b!6355854 d!1993935)))

(assert (=> bs!1591852 (not (= lambda!349922 lambda!349916))))

(assert (=> bs!1591851 (not (= lambda!349922 lambda!349826))))

(declare-fun bs!1591853 () Bool)

(assert (= bs!1591853 (and b!6355854 d!1993857)))

(assert (=> bs!1591853 (not (= lambda!349922 lambda!349892))))

(declare-fun bs!1591854 () Bool)

(assert (= bs!1591854 (and b!6355854 d!1993945)))

(assert (=> bs!1591854 (not (= lambda!349922 lambda!349917))))

(assert (=> bs!1591850 (not (= lambda!349922 lambda!349829))))

(assert (=> bs!1591850 (not (= lambda!349922 lambda!349830))))

(assert (=> bs!1591850 (not (= lambda!349922 lambda!349831))))

(assert (=> bs!1591849 (not (= lambda!349922 lambda!349901))))

(assert (=> b!6355854 true))

(assert (=> b!6355854 true))

(declare-fun bs!1591855 () Bool)

(declare-fun b!6355855 () Bool)

(assert (= bs!1591855 (and b!6355855 d!1993863)))

(declare-fun lambda!349923 () Int)

(assert (=> bs!1591855 (not (= lambda!349923 lambda!349898))))

(declare-fun bs!1591856 () Bool)

(assert (= bs!1591856 (and b!6355855 b!6354957)))

(assert (=> bs!1591856 (not (= lambda!349923 lambda!349828))))

(declare-fun bs!1591857 () Bool)

(assert (= bs!1591857 (and b!6355855 b!6354940)))

(assert (=> bs!1591857 (not (= lambda!349923 lambda!349825))))

(declare-fun bs!1591858 () Bool)

(assert (= bs!1591858 (and b!6355855 d!1993935)))

(assert (=> bs!1591858 (not (= lambda!349923 lambda!349916))))

(assert (=> bs!1591857 (= (and (= (regOne!33038 lt!2365770) (regOne!33038 r!7292)) (= (regTwo!33038 lt!2365770) (regTwo!33038 r!7292))) (= lambda!349923 lambda!349826))))

(declare-fun bs!1591859 () Bool)

(assert (= bs!1591859 (and b!6355855 b!6355854)))

(assert (=> bs!1591859 (not (= lambda!349923 lambda!349922))))

(declare-fun bs!1591860 () Bool)

(assert (= bs!1591860 (and b!6355855 d!1993857)))

(assert (=> bs!1591860 (not (= lambda!349923 lambda!349892))))

(declare-fun bs!1591861 () Bool)

(assert (= bs!1591861 (and b!6355855 d!1993945)))

(assert (=> bs!1591861 (not (= lambda!349923 lambda!349917))))

(assert (=> bs!1591856 (= (and (= (regOne!33038 lt!2365770) (regOne!33038 (regOne!33038 r!7292))) (= (regTwo!33038 lt!2365770) lt!2365770)) (= lambda!349923 lambda!349829))))

(assert (=> bs!1591856 (not (= lambda!349923 lambda!349830))))

(assert (=> bs!1591856 (= (and (= (regOne!33038 lt!2365770) (regTwo!33038 (regOne!33038 r!7292))) (= (regTwo!33038 lt!2365770) lt!2365779)) (= lambda!349923 lambda!349831))))

(assert (=> bs!1591855 (= (and (= (regOne!33038 lt!2365770) (regOne!33038 r!7292)) (= (regTwo!33038 lt!2365770) (regTwo!33038 r!7292))) (= lambda!349923 lambda!349901))))

(assert (=> b!6355855 true))

(assert (=> b!6355855 true))

(declare-fun b!6355850 () Bool)

(declare-fun res!2615269 () Bool)

(declare-fun e!3859691 () Bool)

(assert (=> b!6355850 (=> res!2615269 e!3859691)))

(declare-fun call!542033 () Bool)

(assert (=> b!6355850 (= res!2615269 call!542033)))

(declare-fun e!3859693 () Bool)

(assert (=> b!6355850 (= e!3859693 e!3859691)))

(declare-fun b!6355851 () Bool)

(declare-fun e!3859689 () Bool)

(assert (=> b!6355851 (= e!3859689 (matchRSpec!3364 (regTwo!33039 lt!2365770) s!2326))))

(declare-fun b!6355852 () Bool)

(declare-fun c!1156652 () Bool)

(assert (=> b!6355852 (= c!1156652 ((_ is Union!16263) lt!2365770))))

(declare-fun e!3859694 () Bool)

(declare-fun e!3859690 () Bool)

(assert (=> b!6355852 (= e!3859694 e!3859690)))

(declare-fun call!542034 () Bool)

(declare-fun c!1156651 () Bool)

(declare-fun bm!542028 () Bool)

(assert (=> bm!542028 (= call!542034 (Exists!3333 (ite c!1156651 lambda!349922 lambda!349923)))))

(declare-fun bm!542029 () Bool)

(assert (=> bm!542029 (= call!542033 (isEmpty!37064 s!2326))))

(declare-fun b!6355853 () Bool)

(declare-fun c!1156649 () Bool)

(assert (=> b!6355853 (= c!1156649 ((_ is ElementMatch!16263) lt!2365770))))

(declare-fun e!3859688 () Bool)

(assert (=> b!6355853 (= e!3859688 e!3859694)))

(assert (=> b!6355854 (= e!3859691 call!542034)))

(assert (=> b!6355855 (= e!3859693 call!542034)))

(declare-fun d!1993947 () Bool)

(declare-fun c!1156650 () Bool)

(assert (=> d!1993947 (= c!1156650 ((_ is EmptyExpr!16263) lt!2365770))))

(declare-fun e!3859692 () Bool)

(assert (=> d!1993947 (= (matchRSpec!3364 lt!2365770 s!2326) e!3859692)))

(declare-fun b!6355856 () Bool)

(assert (=> b!6355856 (= e!3859690 e!3859689)))

(declare-fun res!2615267 () Bool)

(assert (=> b!6355856 (= res!2615267 (matchRSpec!3364 (regOne!33039 lt!2365770) s!2326))))

(assert (=> b!6355856 (=> res!2615267 e!3859689)))

(declare-fun b!6355857 () Bool)

(assert (=> b!6355857 (= e!3859692 e!3859688)))

(declare-fun res!2615268 () Bool)

(assert (=> b!6355857 (= res!2615268 (not ((_ is EmptyLang!16263) lt!2365770)))))

(assert (=> b!6355857 (=> (not res!2615268) (not e!3859688))))

(declare-fun b!6355858 () Bool)

(assert (=> b!6355858 (= e!3859694 (= s!2326 (Cons!64966 (c!1156378 lt!2365770) Nil!64966)))))

(declare-fun b!6355859 () Bool)

(assert (=> b!6355859 (= e!3859690 e!3859693)))

(assert (=> b!6355859 (= c!1156651 ((_ is Star!16263) lt!2365770))))

(declare-fun b!6355860 () Bool)

(assert (=> b!6355860 (= e!3859692 call!542033)))

(assert (= (and d!1993947 c!1156650) b!6355860))

(assert (= (and d!1993947 (not c!1156650)) b!6355857))

(assert (= (and b!6355857 res!2615268) b!6355853))

(assert (= (and b!6355853 c!1156649) b!6355858))

(assert (= (and b!6355853 (not c!1156649)) b!6355852))

(assert (= (and b!6355852 c!1156652) b!6355856))

(assert (= (and b!6355852 (not c!1156652)) b!6355859))

(assert (= (and b!6355856 (not res!2615267)) b!6355851))

(assert (= (and b!6355859 c!1156651) b!6355850))

(assert (= (and b!6355859 (not c!1156651)) b!6355855))

(assert (= (and b!6355850 (not res!2615269)) b!6355854))

(assert (= (or b!6355854 b!6355855) bm!542028))

(assert (= (or b!6355860 b!6355850) bm!542029))

(declare-fun m!7162136 () Bool)

(assert (=> b!6355851 m!7162136))

(declare-fun m!7162138 () Bool)

(assert (=> bm!542028 m!7162138))

(assert (=> bm!542029 m!7161568))

(declare-fun m!7162140 () Bool)

(assert (=> b!6355856 m!7162140))

(assert (=> b!6354957 d!1993947))

(declare-fun b!6355861 () Bool)

(declare-fun e!3859698 () Option!16154)

(assert (=> b!6355861 (= e!3859698 (Some!16153 (tuple2!66485 Nil!64966 s!2326)))))

(declare-fun b!6355862 () Bool)

(declare-fun e!3859697 () Bool)

(declare-fun lt!2365938 () Option!16154)

(assert (=> b!6355862 (= e!3859697 (not (isDefined!12857 lt!2365938)))))

(declare-fun b!6355863 () Bool)

(declare-fun e!3859699 () Bool)

(assert (=> b!6355863 (= e!3859699 (matchR!8446 lt!2365779 s!2326))))

(declare-fun b!6355864 () Bool)

(declare-fun res!2615270 () Bool)

(declare-fun e!3859695 () Bool)

(assert (=> b!6355864 (=> (not res!2615270) (not e!3859695))))

(assert (=> b!6355864 (= res!2615270 (matchR!8446 (regTwo!33038 (regOne!33038 r!7292)) (_1!36545 (get!22479 lt!2365938))))))

(declare-fun b!6355865 () Bool)

(declare-fun res!2615274 () Bool)

(assert (=> b!6355865 (=> (not res!2615274) (not e!3859695))))

(assert (=> b!6355865 (= res!2615274 (matchR!8446 lt!2365779 (_2!36545 (get!22479 lt!2365938))))))

(declare-fun b!6355866 () Bool)

(assert (=> b!6355866 (= e!3859695 (= (++!14332 (_1!36545 (get!22479 lt!2365938)) (_2!36545 (get!22479 lt!2365938))) s!2326))))

(declare-fun b!6355867 () Bool)

(declare-fun e!3859696 () Option!16154)

(assert (=> b!6355867 (= e!3859696 None!16153)))

(declare-fun d!1993949 () Bool)

(assert (=> d!1993949 e!3859697))

(declare-fun res!2615272 () Bool)

(assert (=> d!1993949 (=> res!2615272 e!3859697)))

(assert (=> d!1993949 (= res!2615272 e!3859695)))

(declare-fun res!2615273 () Bool)

(assert (=> d!1993949 (=> (not res!2615273) (not e!3859695))))

(assert (=> d!1993949 (= res!2615273 (isDefined!12857 lt!2365938))))

(assert (=> d!1993949 (= lt!2365938 e!3859698)))

(declare-fun c!1156653 () Bool)

(assert (=> d!1993949 (= c!1156653 e!3859699)))

(declare-fun res!2615271 () Bool)

(assert (=> d!1993949 (=> (not res!2615271) (not e!3859699))))

(assert (=> d!1993949 (= res!2615271 (matchR!8446 (regTwo!33038 (regOne!33038 r!7292)) Nil!64966))))

(assert (=> d!1993949 (validRegex!7999 (regTwo!33038 (regOne!33038 r!7292)))))

(assert (=> d!1993949 (= (findConcatSeparation!2568 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 Nil!64966 s!2326 s!2326) lt!2365938)))

(declare-fun b!6355868 () Bool)

(assert (=> b!6355868 (= e!3859698 e!3859696)))

(declare-fun c!1156654 () Bool)

(assert (=> b!6355868 (= c!1156654 ((_ is Nil!64966) s!2326))))

(declare-fun b!6355869 () Bool)

(declare-fun lt!2365937 () Unit!158383)

(declare-fun lt!2365939 () Unit!158383)

(assert (=> b!6355869 (= lt!2365937 lt!2365939)))

(assert (=> b!6355869 (= (++!14332 (++!14332 Nil!64966 (Cons!64966 (h!71414 s!2326) Nil!64966)) (t!378680 s!2326)) s!2326)))

(assert (=> b!6355869 (= lt!2365939 (lemmaMoveElementToOtherListKeepsConcatEq!2427 Nil!64966 (h!71414 s!2326) (t!378680 s!2326) s!2326))))

(assert (=> b!6355869 (= e!3859696 (findConcatSeparation!2568 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 (++!14332 Nil!64966 (Cons!64966 (h!71414 s!2326) Nil!64966)) (t!378680 s!2326) s!2326))))

(assert (= (and d!1993949 res!2615271) b!6355863))

(assert (= (and d!1993949 c!1156653) b!6355861))

(assert (= (and d!1993949 (not c!1156653)) b!6355868))

(assert (= (and b!6355868 c!1156654) b!6355867))

(assert (= (and b!6355868 (not c!1156654)) b!6355869))

(assert (= (and d!1993949 res!2615273) b!6355864))

(assert (= (and b!6355864 res!2615270) b!6355865))

(assert (= (and b!6355865 res!2615274) b!6355866))

(assert (= (and d!1993949 (not res!2615272)) b!6355862))

(declare-fun m!7162142 () Bool)

(assert (=> b!6355864 m!7162142))

(declare-fun m!7162144 () Bool)

(assert (=> b!6355864 m!7162144))

(declare-fun m!7162146 () Bool)

(assert (=> d!1993949 m!7162146))

(declare-fun m!7162148 () Bool)

(assert (=> d!1993949 m!7162148))

(assert (=> d!1993949 m!7161356))

(assert (=> b!6355862 m!7162146))

(assert (=> b!6355869 m!7161904))

(assert (=> b!6355869 m!7161904))

(assert (=> b!6355869 m!7161906))

(assert (=> b!6355869 m!7161908))

(assert (=> b!6355869 m!7161904))

(declare-fun m!7162150 () Bool)

(assert (=> b!6355869 m!7162150))

(assert (=> b!6355865 m!7162142))

(declare-fun m!7162152 () Bool)

(assert (=> b!6355865 m!7162152))

(declare-fun m!7162154 () Bool)

(assert (=> b!6355863 m!7162154))

(assert (=> b!6355866 m!7162142))

(declare-fun m!7162156 () Bool)

(assert (=> b!6355866 m!7162156))

(assert (=> b!6354957 d!1993949))

(declare-fun d!1993951 () Bool)

(assert (=> d!1993951 (= (Exists!3333 lambda!349829) (choose!47184 lambda!349829))))

(declare-fun bs!1591862 () Bool)

(assert (= bs!1591862 d!1993951))

(declare-fun m!7162158 () Bool)

(assert (=> bs!1591862 m!7162158))

(assert (=> b!6354957 d!1993951))

(declare-fun bs!1591863 () Bool)

(declare-fun d!1993953 () Bool)

(assert (= bs!1591863 (and d!1993953 d!1993863)))

(declare-fun lambda!349924 () Int)

(assert (=> bs!1591863 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349924 lambda!349898))))

(declare-fun bs!1591864 () Bool)

(assert (= bs!1591864 (and d!1993953 b!6354957)))

(assert (=> bs!1591864 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 (regOne!33038 r!7292))) (= lt!2365779 lt!2365770)) (= lambda!349924 lambda!349828))))

(declare-fun bs!1591865 () Bool)

(assert (= bs!1591865 (and d!1993953 b!6354940)))

(assert (=> bs!1591865 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349924 lambda!349825))))

(declare-fun bs!1591866 () Bool)

(assert (= bs!1591866 (and d!1993953 d!1993935)))

(assert (=> bs!1591866 (= lambda!349924 lambda!349916)))

(assert (=> bs!1591865 (not (= lambda!349924 lambda!349826))))

(declare-fun bs!1591867 () Bool)

(assert (= bs!1591867 (and d!1993953 b!6355854)))

(assert (=> bs!1591867 (not (= lambda!349924 lambda!349922))))

(declare-fun bs!1591868 () Bool)

(assert (= bs!1591868 (and d!1993953 b!6355855)))

(assert (=> bs!1591868 (not (= lambda!349924 lambda!349923))))

(declare-fun bs!1591869 () Bool)

(assert (= bs!1591869 (and d!1993953 d!1993857)))

(assert (=> bs!1591869 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349924 lambda!349892))))

(declare-fun bs!1591870 () Bool)

(assert (= bs!1591870 (and d!1993953 d!1993945)))

(assert (=> bs!1591870 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 (regOne!33038 r!7292))) (= lt!2365779 lt!2365770)) (= lambda!349924 lambda!349917))))

(assert (=> bs!1591864 (not (= lambda!349924 lambda!349829))))

(assert (=> bs!1591864 (= lambda!349924 lambda!349830)))

(assert (=> bs!1591864 (not (= lambda!349924 lambda!349831))))

(assert (=> bs!1591863 (not (= lambda!349924 lambda!349901))))

(assert (=> d!1993953 true))

(assert (=> d!1993953 true))

(assert (=> d!1993953 true))

(declare-fun bs!1591871 () Bool)

(assert (= bs!1591871 d!1993953))

(declare-fun lambda!349925 () Int)

(assert (=> bs!1591871 (not (= lambda!349925 lambda!349924))))

(assert (=> bs!1591863 (not (= lambda!349925 lambda!349898))))

(assert (=> bs!1591864 (not (= lambda!349925 lambda!349828))))

(assert (=> bs!1591865 (not (= lambda!349925 lambda!349825))))

(assert (=> bs!1591866 (not (= lambda!349925 lambda!349916))))

(assert (=> bs!1591865 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349925 lambda!349826))))

(assert (=> bs!1591867 (not (= lambda!349925 lambda!349922))))

(assert (=> bs!1591868 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 lt!2365770)) (= lt!2365779 (regTwo!33038 lt!2365770))) (= lambda!349925 lambda!349923))))

(assert (=> bs!1591869 (not (= lambda!349925 lambda!349892))))

(assert (=> bs!1591870 (not (= lambda!349925 lambda!349917))))

(assert (=> bs!1591864 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 (regOne!33038 r!7292))) (= lt!2365779 lt!2365770)) (= lambda!349925 lambda!349829))))

(assert (=> bs!1591864 (not (= lambda!349925 lambda!349830))))

(assert (=> bs!1591864 (= lambda!349925 lambda!349831)))

(assert (=> bs!1591863 (= (and (= (regTwo!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365779 (regTwo!33038 r!7292))) (= lambda!349925 lambda!349901))))

(assert (=> d!1993953 true))

(assert (=> d!1993953 true))

(assert (=> d!1993953 true))

(assert (=> d!1993953 (= (Exists!3333 lambda!349924) (Exists!3333 lambda!349925))))

(declare-fun lt!2365940 () Unit!158383)

(assert (=> d!1993953 (= lt!2365940 (choose!47186 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 s!2326))))

(assert (=> d!1993953 (validRegex!7999 (regTwo!33038 (regOne!33038 r!7292)))))

(assert (=> d!1993953 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1870 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 s!2326) lt!2365940)))

(declare-fun m!7162160 () Bool)

(assert (=> bs!1591871 m!7162160))

(declare-fun m!7162162 () Bool)

(assert (=> bs!1591871 m!7162162))

(declare-fun m!7162164 () Bool)

(assert (=> bs!1591871 m!7162164))

(assert (=> bs!1591871 m!7161356))

(assert (=> b!6354957 d!1993953))

(declare-fun bs!1591872 () Bool)

(declare-fun d!1993955 () Bool)

(assert (= bs!1591872 (and d!1993955 d!1993773)))

(declare-fun lambda!349926 () Int)

(assert (=> bs!1591872 (= lambda!349926 lambda!349858)))

(declare-fun bs!1591873 () Bool)

(assert (= bs!1591873 (and d!1993955 d!1993829)))

(assert (=> bs!1591873 (= lambda!349926 lambda!349882)))

(declare-fun bs!1591874 () Bool)

(assert (= bs!1591874 (and d!1993955 d!1993887)))

(assert (=> bs!1591874 (= lambda!349926 lambda!349903)))

(declare-fun b!6355870 () Bool)

(declare-fun e!3859703 () Bool)

(declare-fun lt!2365941 () Regex!16263)

(assert (=> b!6355870 (= e!3859703 (isConcat!1187 lt!2365941))))

(declare-fun b!6355871 () Bool)

(declare-fun e!3859701 () Bool)

(assert (=> b!6355871 (= e!3859701 e!3859703)))

(declare-fun c!1156655 () Bool)

(assert (=> b!6355871 (= c!1156655 (isEmpty!37062 (tail!12104 (t!378678 (exprs!6147 (h!71413 zl!343))))))))

(declare-fun b!6355872 () Bool)

(declare-fun e!3859700 () Regex!16263)

(assert (=> b!6355872 (= e!3859700 (Concat!25108 (h!71412 (t!378678 (exprs!6147 (h!71413 zl!343)))) (generalisedConcat!1860 (t!378678 (t!378678 (exprs!6147 (h!71413 zl!343)))))))))

(declare-fun e!3859702 () Bool)

(assert (=> d!1993955 e!3859702))

(declare-fun res!2615275 () Bool)

(assert (=> d!1993955 (=> (not res!2615275) (not e!3859702))))

(assert (=> d!1993955 (= res!2615275 (validRegex!7999 lt!2365941))))

(declare-fun e!3859704 () Regex!16263)

(assert (=> d!1993955 (= lt!2365941 e!3859704)))

(declare-fun c!1156658 () Bool)

(declare-fun e!3859705 () Bool)

(assert (=> d!1993955 (= c!1156658 e!3859705)))

(declare-fun res!2615276 () Bool)

(assert (=> d!1993955 (=> (not res!2615276) (not e!3859705))))

(assert (=> d!1993955 (= res!2615276 ((_ is Cons!64964) (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(assert (=> d!1993955 (forall!15437 (t!378678 (exprs!6147 (h!71413 zl!343))) lambda!349926)))

(assert (=> d!1993955 (= (generalisedConcat!1860 (t!378678 (exprs!6147 (h!71413 zl!343)))) lt!2365941)))

(declare-fun b!6355873 () Bool)

(assert (=> b!6355873 (= e!3859702 e!3859701)))

(declare-fun c!1156657 () Bool)

(assert (=> b!6355873 (= c!1156657 (isEmpty!37062 (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun b!6355874 () Bool)

(assert (=> b!6355874 (= e!3859703 (= lt!2365941 (head!13019 (t!378678 (exprs!6147 (h!71413 zl!343))))))))

(declare-fun b!6355875 () Bool)

(assert (=> b!6355875 (= e!3859701 (isEmptyExpr!1664 lt!2365941))))

(declare-fun b!6355876 () Bool)

(assert (=> b!6355876 (= e!3859704 (h!71412 (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(declare-fun b!6355877 () Bool)

(assert (=> b!6355877 (= e!3859705 (isEmpty!37062 (t!378678 (t!378678 (exprs!6147 (h!71413 zl!343))))))))

(declare-fun b!6355878 () Bool)

(assert (=> b!6355878 (= e!3859700 EmptyExpr!16263)))

(declare-fun b!6355879 () Bool)

(assert (=> b!6355879 (= e!3859704 e!3859700)))

(declare-fun c!1156656 () Bool)

(assert (=> b!6355879 (= c!1156656 ((_ is Cons!64964) (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(assert (= (and d!1993955 res!2615276) b!6355877))

(assert (= (and d!1993955 c!1156658) b!6355876))

(assert (= (and d!1993955 (not c!1156658)) b!6355879))

(assert (= (and b!6355879 c!1156656) b!6355872))

(assert (= (and b!6355879 (not c!1156656)) b!6355878))

(assert (= (and d!1993955 res!2615275) b!6355873))

(assert (= (and b!6355873 c!1156657) b!6355875))

(assert (= (and b!6355873 (not c!1156657)) b!6355871))

(assert (= (and b!6355871 c!1156655) b!6355874))

(assert (= (and b!6355871 (not c!1156655)) b!6355870))

(declare-fun m!7162166 () Bool)

(assert (=> b!6355871 m!7162166))

(assert (=> b!6355871 m!7162166))

(declare-fun m!7162168 () Bool)

(assert (=> b!6355871 m!7162168))

(declare-fun m!7162170 () Bool)

(assert (=> b!6355877 m!7162170))

(declare-fun m!7162172 () Bool)

(assert (=> b!6355875 m!7162172))

(declare-fun m!7162174 () Bool)

(assert (=> b!6355872 m!7162174))

(declare-fun m!7162176 () Bool)

(assert (=> b!6355874 m!7162176))

(assert (=> b!6355873 m!7161372))

(declare-fun m!7162178 () Bool)

(assert (=> d!1993955 m!7162178))

(declare-fun m!7162180 () Bool)

(assert (=> d!1993955 m!7162180))

(declare-fun m!7162182 () Bool)

(assert (=> b!6355870 m!7162182))

(assert (=> b!6354957 d!1993955))

(declare-fun bs!1591875 () Bool)

(declare-fun b!6355884 () Bool)

(assert (= bs!1591875 (and b!6355884 d!1993953)))

(declare-fun lambda!349927 () Int)

(assert (=> bs!1591875 (not (= lambda!349927 lambda!349924))))

(declare-fun bs!1591876 () Bool)

(assert (= bs!1591876 (and b!6355884 d!1993863)))

(assert (=> bs!1591876 (not (= lambda!349927 lambda!349898))))

(declare-fun bs!1591877 () Bool)

(assert (= bs!1591877 (and b!6355884 b!6354957)))

(assert (=> bs!1591877 (not (= lambda!349927 lambda!349828))))

(declare-fun bs!1591878 () Bool)

(assert (= bs!1591878 (and b!6355884 b!6354940)))

(assert (=> bs!1591878 (not (= lambda!349927 lambda!349825))))

(declare-fun bs!1591879 () Bool)

(assert (= bs!1591879 (and b!6355884 d!1993935)))

(assert (=> bs!1591879 (not (= lambda!349927 lambda!349916))))

(assert (=> bs!1591878 (not (= lambda!349927 lambda!349826))))

(assert (=> bs!1591875 (not (= lambda!349927 lambda!349925))))

(declare-fun bs!1591880 () Bool)

(assert (= bs!1591880 (and b!6355884 b!6355854)))

(assert (=> bs!1591880 (= (and (= (reg!16592 lt!2365765) (reg!16592 lt!2365770)) (= lt!2365765 lt!2365770)) (= lambda!349927 lambda!349922))))

(declare-fun bs!1591881 () Bool)

(assert (= bs!1591881 (and b!6355884 b!6355855)))

(assert (=> bs!1591881 (not (= lambda!349927 lambda!349923))))

(declare-fun bs!1591882 () Bool)

(assert (= bs!1591882 (and b!6355884 d!1993857)))

(assert (=> bs!1591882 (not (= lambda!349927 lambda!349892))))

(declare-fun bs!1591883 () Bool)

(assert (= bs!1591883 (and b!6355884 d!1993945)))

(assert (=> bs!1591883 (not (= lambda!349927 lambda!349917))))

(assert (=> bs!1591877 (not (= lambda!349927 lambda!349829))))

(assert (=> bs!1591877 (not (= lambda!349927 lambda!349830))))

(assert (=> bs!1591877 (not (= lambda!349927 lambda!349831))))

(assert (=> bs!1591876 (not (= lambda!349927 lambda!349901))))

(assert (=> b!6355884 true))

(assert (=> b!6355884 true))

(declare-fun bs!1591884 () Bool)

(declare-fun b!6355885 () Bool)

(assert (= bs!1591884 (and b!6355885 d!1993953)))

(declare-fun lambda!349928 () Int)

(assert (=> bs!1591884 (not (= lambda!349928 lambda!349924))))

(declare-fun bs!1591885 () Bool)

(assert (= bs!1591885 (and b!6355885 d!1993863)))

(assert (=> bs!1591885 (not (= lambda!349928 lambda!349898))))

(declare-fun bs!1591886 () Bool)

(assert (= bs!1591886 (and b!6355885 b!6354957)))

(assert (=> bs!1591886 (not (= lambda!349928 lambda!349828))))

(declare-fun bs!1591887 () Bool)

(assert (= bs!1591887 (and b!6355885 b!6355884)))

(assert (=> bs!1591887 (not (= lambda!349928 lambda!349927))))

(declare-fun bs!1591888 () Bool)

(assert (= bs!1591888 (and b!6355885 b!6354940)))

(assert (=> bs!1591888 (not (= lambda!349928 lambda!349825))))

(declare-fun bs!1591889 () Bool)

(assert (= bs!1591889 (and b!6355885 d!1993935)))

(assert (=> bs!1591889 (not (= lambda!349928 lambda!349916))))

(assert (=> bs!1591888 (= (and (= (regOne!33038 lt!2365765) (regOne!33038 r!7292)) (= (regTwo!33038 lt!2365765) (regTwo!33038 r!7292))) (= lambda!349928 lambda!349826))))

(assert (=> bs!1591884 (= (and (= (regOne!33038 lt!2365765) (regTwo!33038 (regOne!33038 r!7292))) (= (regTwo!33038 lt!2365765) lt!2365779)) (= lambda!349928 lambda!349925))))

(declare-fun bs!1591890 () Bool)

(assert (= bs!1591890 (and b!6355885 b!6355854)))

(assert (=> bs!1591890 (not (= lambda!349928 lambda!349922))))

(declare-fun bs!1591891 () Bool)

(assert (= bs!1591891 (and b!6355885 b!6355855)))

(assert (=> bs!1591891 (= (and (= (regOne!33038 lt!2365765) (regOne!33038 lt!2365770)) (= (regTwo!33038 lt!2365765) (regTwo!33038 lt!2365770))) (= lambda!349928 lambda!349923))))

(declare-fun bs!1591892 () Bool)

(assert (= bs!1591892 (and b!6355885 d!1993857)))

(assert (=> bs!1591892 (not (= lambda!349928 lambda!349892))))

(declare-fun bs!1591893 () Bool)

(assert (= bs!1591893 (and b!6355885 d!1993945)))

(assert (=> bs!1591893 (not (= lambda!349928 lambda!349917))))

(assert (=> bs!1591886 (= (and (= (regOne!33038 lt!2365765) (regOne!33038 (regOne!33038 r!7292))) (= (regTwo!33038 lt!2365765) lt!2365770)) (= lambda!349928 lambda!349829))))

(assert (=> bs!1591886 (not (= lambda!349928 lambda!349830))))

(assert (=> bs!1591886 (= (and (= (regOne!33038 lt!2365765) (regTwo!33038 (regOne!33038 r!7292))) (= (regTwo!33038 lt!2365765) lt!2365779)) (= lambda!349928 lambda!349831))))

(assert (=> bs!1591885 (= (and (= (regOne!33038 lt!2365765) (regOne!33038 r!7292)) (= (regTwo!33038 lt!2365765) (regTwo!33038 r!7292))) (= lambda!349928 lambda!349901))))

(assert (=> b!6355885 true))

(assert (=> b!6355885 true))

(declare-fun b!6355880 () Bool)

(declare-fun res!2615279 () Bool)

(declare-fun e!3859709 () Bool)

(assert (=> b!6355880 (=> res!2615279 e!3859709)))

(declare-fun call!542035 () Bool)

(assert (=> b!6355880 (= res!2615279 call!542035)))

(declare-fun e!3859711 () Bool)

(assert (=> b!6355880 (= e!3859711 e!3859709)))

(declare-fun b!6355881 () Bool)

(declare-fun e!3859707 () Bool)

(assert (=> b!6355881 (= e!3859707 (matchRSpec!3364 (regTwo!33039 lt!2365765) s!2326))))

(declare-fun b!6355882 () Bool)

(declare-fun c!1156662 () Bool)

(assert (=> b!6355882 (= c!1156662 ((_ is Union!16263) lt!2365765))))

(declare-fun e!3859712 () Bool)

(declare-fun e!3859708 () Bool)

(assert (=> b!6355882 (= e!3859712 e!3859708)))

(declare-fun c!1156661 () Bool)

(declare-fun call!542036 () Bool)

(declare-fun bm!542030 () Bool)

(assert (=> bm!542030 (= call!542036 (Exists!3333 (ite c!1156661 lambda!349927 lambda!349928)))))

(declare-fun bm!542031 () Bool)

(assert (=> bm!542031 (= call!542035 (isEmpty!37064 s!2326))))

(declare-fun b!6355883 () Bool)

(declare-fun c!1156659 () Bool)

(assert (=> b!6355883 (= c!1156659 ((_ is ElementMatch!16263) lt!2365765))))

(declare-fun e!3859706 () Bool)

(assert (=> b!6355883 (= e!3859706 e!3859712)))

(assert (=> b!6355884 (= e!3859709 call!542036)))

(assert (=> b!6355885 (= e!3859711 call!542036)))

(declare-fun d!1993957 () Bool)

(declare-fun c!1156660 () Bool)

(assert (=> d!1993957 (= c!1156660 ((_ is EmptyExpr!16263) lt!2365765))))

(declare-fun e!3859710 () Bool)

(assert (=> d!1993957 (= (matchRSpec!3364 lt!2365765 s!2326) e!3859710)))

(declare-fun b!6355886 () Bool)

(assert (=> b!6355886 (= e!3859708 e!3859707)))

(declare-fun res!2615277 () Bool)

(assert (=> b!6355886 (= res!2615277 (matchRSpec!3364 (regOne!33039 lt!2365765) s!2326))))

(assert (=> b!6355886 (=> res!2615277 e!3859707)))

(declare-fun b!6355887 () Bool)

(assert (=> b!6355887 (= e!3859710 e!3859706)))

(declare-fun res!2615278 () Bool)

(assert (=> b!6355887 (= res!2615278 (not ((_ is EmptyLang!16263) lt!2365765)))))

(assert (=> b!6355887 (=> (not res!2615278) (not e!3859706))))

(declare-fun b!6355888 () Bool)

(assert (=> b!6355888 (= e!3859712 (= s!2326 (Cons!64966 (c!1156378 lt!2365765) Nil!64966)))))

(declare-fun b!6355889 () Bool)

(assert (=> b!6355889 (= e!3859708 e!3859711)))

(assert (=> b!6355889 (= c!1156661 ((_ is Star!16263) lt!2365765))))

(declare-fun b!6355890 () Bool)

(assert (=> b!6355890 (= e!3859710 call!542035)))

(assert (= (and d!1993957 c!1156660) b!6355890))

(assert (= (and d!1993957 (not c!1156660)) b!6355887))

(assert (= (and b!6355887 res!2615278) b!6355883))

(assert (= (and b!6355883 c!1156659) b!6355888))

(assert (= (and b!6355883 (not c!1156659)) b!6355882))

(assert (= (and b!6355882 c!1156662) b!6355886))

(assert (= (and b!6355882 (not c!1156662)) b!6355889))

(assert (= (and b!6355886 (not res!2615277)) b!6355881))

(assert (= (and b!6355889 c!1156661) b!6355880))

(assert (= (and b!6355889 (not c!1156661)) b!6355885))

(assert (= (and b!6355880 (not res!2615279)) b!6355884))

(assert (= (or b!6355884 b!6355885) bm!542030))

(assert (= (or b!6355890 b!6355880) bm!542031))

(declare-fun m!7162184 () Bool)

(assert (=> b!6355881 m!7162184))

(declare-fun m!7162186 () Bool)

(assert (=> bm!542030 m!7162186))

(assert (=> bm!542031 m!7161568))

(declare-fun m!7162188 () Bool)

(assert (=> b!6355886 m!7162188))

(assert (=> b!6354957 d!1993957))

(declare-fun d!1993959 () Bool)

(declare-fun c!1156663 () Bool)

(assert (=> d!1993959 (= c!1156663 (isEmpty!37064 s!2326))))

(declare-fun e!3859713 () Bool)

(assert (=> d!1993959 (= (matchZipper!2275 z!1189 s!2326) e!3859713)))

(declare-fun b!6355891 () Bool)

(assert (=> b!6355891 (= e!3859713 (nullableZipper!2029 z!1189))))

(declare-fun b!6355892 () Bool)

(assert (=> b!6355892 (= e!3859713 (matchZipper!2275 (derivationStepZipper!2229 z!1189 (head!13018 s!2326)) (tail!12103 s!2326)))))

(assert (= (and d!1993959 c!1156663) b!6355891))

(assert (= (and d!1993959 (not c!1156663)) b!6355892))

(assert (=> d!1993959 m!7161568))

(declare-fun m!7162190 () Bool)

(assert (=> b!6355891 m!7162190))

(assert (=> b!6355892 m!7161556))

(assert (=> b!6355892 m!7161556))

(declare-fun m!7162192 () Bool)

(assert (=> b!6355892 m!7162192))

(assert (=> b!6355892 m!7161560))

(assert (=> b!6355892 m!7162192))

(assert (=> b!6355892 m!7161560))

(declare-fun m!7162194 () Bool)

(assert (=> b!6355892 m!7162194))

(assert (=> b!6354957 d!1993959))

(declare-fun d!1993961 () Bool)

(declare-fun e!3859716 () Bool)

(assert (=> d!1993961 e!3859716))

(declare-fun c!1156664 () Bool)

(assert (=> d!1993961 (= c!1156664 ((_ is EmptyExpr!16263) lt!2365765))))

(declare-fun lt!2365942 () Bool)

(declare-fun e!3859719 () Bool)

(assert (=> d!1993961 (= lt!2365942 e!3859719)))

(declare-fun c!1156665 () Bool)

(assert (=> d!1993961 (= c!1156665 (isEmpty!37064 s!2326))))

(assert (=> d!1993961 (validRegex!7999 lt!2365765)))

(assert (=> d!1993961 (= (matchR!8446 lt!2365765 s!2326) lt!2365942)))

(declare-fun bm!542032 () Bool)

(declare-fun call!542037 () Bool)

(assert (=> bm!542032 (= call!542037 (isEmpty!37064 s!2326))))

(declare-fun b!6355893 () Bool)

(assert (=> b!6355893 (= e!3859719 (nullable!6256 lt!2365765))))

(declare-fun b!6355894 () Bool)

(declare-fun res!2615287 () Bool)

(declare-fun e!3859715 () Bool)

(assert (=> b!6355894 (=> res!2615287 e!3859715)))

(assert (=> b!6355894 (= res!2615287 (not ((_ is ElementMatch!16263) lt!2365765)))))

(declare-fun e!3859720 () Bool)

(assert (=> b!6355894 (= e!3859720 e!3859715)))

(declare-fun b!6355895 () Bool)

(declare-fun e!3859714 () Bool)

(assert (=> b!6355895 (= e!3859714 (= (head!13018 s!2326) (c!1156378 lt!2365765)))))

(declare-fun b!6355896 () Bool)

(assert (=> b!6355896 (= e!3859720 (not lt!2365942))))

(declare-fun b!6355897 () Bool)

(declare-fun e!3859717 () Bool)

(assert (=> b!6355897 (= e!3859717 (not (= (head!13018 s!2326) (c!1156378 lt!2365765))))))

(declare-fun b!6355898 () Bool)

(declare-fun res!2615281 () Bool)

(assert (=> b!6355898 (=> (not res!2615281) (not e!3859714))))

(assert (=> b!6355898 (= res!2615281 (not call!542037))))

(declare-fun b!6355899 () Bool)

(declare-fun res!2615284 () Bool)

(assert (=> b!6355899 (=> res!2615284 e!3859717)))

(assert (=> b!6355899 (= res!2615284 (not (isEmpty!37064 (tail!12103 s!2326))))))

(declare-fun b!6355900 () Bool)

(declare-fun e!3859718 () Bool)

(assert (=> b!6355900 (= e!3859718 e!3859717)))

(declare-fun res!2615286 () Bool)

(assert (=> b!6355900 (=> res!2615286 e!3859717)))

(assert (=> b!6355900 (= res!2615286 call!542037)))

(declare-fun b!6355901 () Bool)

(declare-fun res!2615283 () Bool)

(assert (=> b!6355901 (=> (not res!2615283) (not e!3859714))))

(assert (=> b!6355901 (= res!2615283 (isEmpty!37064 (tail!12103 s!2326)))))

(declare-fun b!6355902 () Bool)

(declare-fun res!2615285 () Bool)

(assert (=> b!6355902 (=> res!2615285 e!3859715)))

(assert (=> b!6355902 (= res!2615285 e!3859714)))

(declare-fun res!2615280 () Bool)

(assert (=> b!6355902 (=> (not res!2615280) (not e!3859714))))

(assert (=> b!6355902 (= res!2615280 lt!2365942)))

(declare-fun b!6355903 () Bool)

(assert (=> b!6355903 (= e!3859715 e!3859718)))

(declare-fun res!2615282 () Bool)

(assert (=> b!6355903 (=> (not res!2615282) (not e!3859718))))

(assert (=> b!6355903 (= res!2615282 (not lt!2365942))))

(declare-fun b!6355904 () Bool)

(assert (=> b!6355904 (= e!3859716 e!3859720)))

(declare-fun c!1156666 () Bool)

(assert (=> b!6355904 (= c!1156666 ((_ is EmptyLang!16263) lt!2365765))))

(declare-fun b!6355905 () Bool)

(assert (=> b!6355905 (= e!3859716 (= lt!2365942 call!542037))))

(declare-fun b!6355906 () Bool)

(assert (=> b!6355906 (= e!3859719 (matchR!8446 (derivativeStep!4968 lt!2365765 (head!13018 s!2326)) (tail!12103 s!2326)))))

(assert (= (and d!1993961 c!1156665) b!6355893))

(assert (= (and d!1993961 (not c!1156665)) b!6355906))

(assert (= (and d!1993961 c!1156664) b!6355905))

(assert (= (and d!1993961 (not c!1156664)) b!6355904))

(assert (= (and b!6355904 c!1156666) b!6355896))

(assert (= (and b!6355904 (not c!1156666)) b!6355894))

(assert (= (and b!6355894 (not res!2615287)) b!6355902))

(assert (= (and b!6355902 res!2615280) b!6355898))

(assert (= (and b!6355898 res!2615281) b!6355901))

(assert (= (and b!6355901 res!2615283) b!6355895))

(assert (= (and b!6355902 (not res!2615285)) b!6355903))

(assert (= (and b!6355903 res!2615282) b!6355900))

(assert (= (and b!6355900 (not res!2615286)) b!6355899))

(assert (= (and b!6355899 (not res!2615284)) b!6355897))

(assert (= (or b!6355905 b!6355898 b!6355900) bm!542032))

(assert (=> b!6355897 m!7161556))

(assert (=> b!6355906 m!7161556))

(assert (=> b!6355906 m!7161556))

(declare-fun m!7162196 () Bool)

(assert (=> b!6355906 m!7162196))

(assert (=> b!6355906 m!7161560))

(assert (=> b!6355906 m!7162196))

(assert (=> b!6355906 m!7161560))

(declare-fun m!7162198 () Bool)

(assert (=> b!6355906 m!7162198))

(assert (=> b!6355895 m!7161556))

(assert (=> b!6355899 m!7161560))

(assert (=> b!6355899 m!7161560))

(assert (=> b!6355899 m!7161564))

(assert (=> b!6355901 m!7161560))

(assert (=> b!6355901 m!7161560))

(assert (=> b!6355901 m!7161564))

(declare-fun m!7162200 () Bool)

(assert (=> b!6355893 m!7162200))

(assert (=> d!1993961 m!7161568))

(assert (=> d!1993961 m!7162130))

(assert (=> bm!542032 m!7161568))

(assert (=> b!6354957 d!1993961))

(declare-fun d!1993963 () Bool)

(assert (=> d!1993963 (= (isDefined!12857 (findConcatSeparation!2568 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 Nil!64966 s!2326 s!2326)) (not (isEmpty!37066 (findConcatSeparation!2568 (regTwo!33038 (regOne!33038 r!7292)) lt!2365779 Nil!64966 s!2326 s!2326))))))

(declare-fun bs!1591894 () Bool)

(assert (= bs!1591894 d!1993963))

(assert (=> bs!1591894 m!7161306))

(declare-fun m!7162202 () Bool)

(assert (=> bs!1591894 m!7162202))

(assert (=> b!6354957 d!1993963))

(declare-fun d!1993965 () Bool)

(assert (=> d!1993965 (= (matchR!8446 lt!2365765 s!2326) (matchRSpec!3364 lt!2365765 s!2326))))

(declare-fun lt!2365945 () Unit!158383)

(declare-fun choose!47191 (Regex!16263 List!65090) Unit!158383)

(assert (=> d!1993965 (= lt!2365945 (choose!47191 lt!2365765 s!2326))))

(assert (=> d!1993965 (validRegex!7999 lt!2365765)))

(assert (=> d!1993965 (= (mainMatchTheorem!3364 lt!2365765 s!2326) lt!2365945)))

(declare-fun bs!1591895 () Bool)

(assert (= bs!1591895 d!1993965))

(assert (=> bs!1591895 m!7161324))

(assert (=> bs!1591895 m!7161294))

(declare-fun m!7162204 () Bool)

(assert (=> bs!1591895 m!7162204))

(assert (=> bs!1591895 m!7162130))

(assert (=> b!6354957 d!1993965))

(declare-fun d!1993967 () Bool)

(assert (=> d!1993967 (= (Exists!3333 lambda!349831) (choose!47184 lambda!349831))))

(declare-fun bs!1591896 () Bool)

(assert (= bs!1591896 d!1993967))

(declare-fun m!7162206 () Bool)

(assert (=> bs!1591896 m!7162206))

(assert (=> b!6354957 d!1993967))

(declare-fun bs!1591897 () Bool)

(declare-fun d!1993969 () Bool)

(assert (= bs!1591897 (and d!1993969 d!1993773)))

(declare-fun lambda!349929 () Int)

(assert (=> bs!1591897 (= lambda!349929 lambda!349858)))

(declare-fun bs!1591898 () Bool)

(assert (= bs!1591898 (and d!1993969 d!1993829)))

(assert (=> bs!1591898 (= lambda!349929 lambda!349882)))

(declare-fun bs!1591899 () Bool)

(assert (= bs!1591899 (and d!1993969 d!1993887)))

(assert (=> bs!1591899 (= lambda!349929 lambda!349903)))

(declare-fun bs!1591900 () Bool)

(assert (= bs!1591900 (and d!1993969 d!1993955)))

(assert (=> bs!1591900 (= lambda!349929 lambda!349926)))

(declare-fun b!6355907 () Bool)

(declare-fun e!3859724 () Bool)

(declare-fun lt!2365946 () Regex!16263)

(assert (=> b!6355907 (= e!3859724 (isConcat!1187 lt!2365946))))

(declare-fun b!6355908 () Bool)

(declare-fun e!3859722 () Bool)

(assert (=> b!6355908 (= e!3859722 e!3859724)))

(declare-fun c!1156667 () Bool)

(assert (=> b!6355908 (= c!1156667 (isEmpty!37062 (tail!12104 lt!2365777)))))

(declare-fun b!6355909 () Bool)

(declare-fun e!3859721 () Regex!16263)

(assert (=> b!6355909 (= e!3859721 (Concat!25108 (h!71412 lt!2365777) (generalisedConcat!1860 (t!378678 lt!2365777))))))

(declare-fun e!3859723 () Bool)

(assert (=> d!1993969 e!3859723))

(declare-fun res!2615288 () Bool)

(assert (=> d!1993969 (=> (not res!2615288) (not e!3859723))))

(assert (=> d!1993969 (= res!2615288 (validRegex!7999 lt!2365946))))

(declare-fun e!3859725 () Regex!16263)

(assert (=> d!1993969 (= lt!2365946 e!3859725)))

(declare-fun c!1156670 () Bool)

(declare-fun e!3859726 () Bool)

(assert (=> d!1993969 (= c!1156670 e!3859726)))

(declare-fun res!2615289 () Bool)

(assert (=> d!1993969 (=> (not res!2615289) (not e!3859726))))

(assert (=> d!1993969 (= res!2615289 ((_ is Cons!64964) lt!2365777))))

(assert (=> d!1993969 (forall!15437 lt!2365777 lambda!349929)))

(assert (=> d!1993969 (= (generalisedConcat!1860 lt!2365777) lt!2365946)))

(declare-fun b!6355910 () Bool)

(assert (=> b!6355910 (= e!3859723 e!3859722)))

(declare-fun c!1156669 () Bool)

(assert (=> b!6355910 (= c!1156669 (isEmpty!37062 lt!2365777))))

(declare-fun b!6355911 () Bool)

(assert (=> b!6355911 (= e!3859724 (= lt!2365946 (head!13019 lt!2365777)))))

(declare-fun b!6355912 () Bool)

(assert (=> b!6355912 (= e!3859722 (isEmptyExpr!1664 lt!2365946))))

(declare-fun b!6355913 () Bool)

(assert (=> b!6355913 (= e!3859725 (h!71412 lt!2365777))))

(declare-fun b!6355914 () Bool)

(assert (=> b!6355914 (= e!3859726 (isEmpty!37062 (t!378678 lt!2365777)))))

(declare-fun b!6355915 () Bool)

(assert (=> b!6355915 (= e!3859721 EmptyExpr!16263)))

(declare-fun b!6355916 () Bool)

(assert (=> b!6355916 (= e!3859725 e!3859721)))

(declare-fun c!1156668 () Bool)

(assert (=> b!6355916 (= c!1156668 ((_ is Cons!64964) lt!2365777))))

(assert (= (and d!1993969 res!2615289) b!6355914))

(assert (= (and d!1993969 c!1156670) b!6355913))

(assert (= (and d!1993969 (not c!1156670)) b!6355916))

(assert (= (and b!6355916 c!1156668) b!6355909))

(assert (= (and b!6355916 (not c!1156668)) b!6355915))

(assert (= (and d!1993969 res!2615288) b!6355910))

(assert (= (and b!6355910 c!1156669) b!6355912))

(assert (= (and b!6355910 (not c!1156669)) b!6355908))

(assert (= (and b!6355908 c!1156667) b!6355911))

(assert (= (and b!6355908 (not c!1156667)) b!6355907))

(declare-fun m!7162208 () Bool)

(assert (=> b!6355908 m!7162208))

(assert (=> b!6355908 m!7162208))

(declare-fun m!7162210 () Bool)

(assert (=> b!6355908 m!7162210))

(declare-fun m!7162212 () Bool)

(assert (=> b!6355914 m!7162212))

(declare-fun m!7162214 () Bool)

(assert (=> b!6355912 m!7162214))

(declare-fun m!7162216 () Bool)

(assert (=> b!6355909 m!7162216))

(declare-fun m!7162218 () Bool)

(assert (=> b!6355911 m!7162218))

(declare-fun m!7162220 () Bool)

(assert (=> b!6355910 m!7162220))

(declare-fun m!7162222 () Bool)

(assert (=> d!1993969 m!7162222))

(declare-fun m!7162224 () Bool)

(assert (=> d!1993969 m!7162224))

(declare-fun m!7162226 () Bool)

(assert (=> b!6355907 m!7162226))

(assert (=> b!6354957 d!1993969))

(declare-fun d!1993971 () Bool)

(assert (=> d!1993971 (= (matchR!8446 lt!2365770 s!2326) (matchRSpec!3364 lt!2365770 s!2326))))

(declare-fun lt!2365947 () Unit!158383)

(assert (=> d!1993971 (= lt!2365947 (choose!47191 lt!2365770 s!2326))))

(assert (=> d!1993971 (validRegex!7999 lt!2365770)))

(assert (=> d!1993971 (= (mainMatchTheorem!3364 lt!2365770 s!2326) lt!2365947)))

(declare-fun bs!1591901 () Bool)

(assert (= bs!1591901 d!1993971))

(assert (=> bs!1591901 m!7161308))

(assert (=> bs!1591901 m!7161296))

(declare-fun m!7162228 () Bool)

(assert (=> bs!1591901 m!7162228))

(assert (=> bs!1591901 m!7162126))

(assert (=> b!6354957 d!1993971))

(declare-fun bs!1591902 () Bool)

(declare-fun d!1993973 () Bool)

(assert (= bs!1591902 (and d!1993973 d!1993953)))

(declare-fun lambda!349930 () Int)

(assert (=> bs!1591902 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regTwo!33038 (regOne!33038 r!7292))) (= lt!2365770 lt!2365779)) (= lambda!349930 lambda!349924))))

(declare-fun bs!1591903 () Bool)

(assert (= bs!1591903 (and d!1993973 d!1993863)))

(assert (=> bs!1591903 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349930 lambda!349898))))

(declare-fun bs!1591904 () Bool)

(assert (= bs!1591904 (and d!1993973 b!6354957)))

(assert (=> bs!1591904 (= lambda!349930 lambda!349828)))

(declare-fun bs!1591905 () Bool)

(assert (= bs!1591905 (and d!1993973 b!6355884)))

(assert (=> bs!1591905 (not (= lambda!349930 lambda!349927))))

(declare-fun bs!1591906 () Bool)

(assert (= bs!1591906 (and d!1993973 b!6354940)))

(assert (=> bs!1591906 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349930 lambda!349825))))

(declare-fun bs!1591907 () Bool)

(assert (= bs!1591907 (and d!1993973 d!1993935)))

(assert (=> bs!1591907 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regTwo!33038 (regOne!33038 r!7292))) (= lt!2365770 lt!2365779)) (= lambda!349930 lambda!349916))))

(assert (=> bs!1591906 (not (= lambda!349930 lambda!349826))))

(assert (=> bs!1591902 (not (= lambda!349930 lambda!349925))))

(declare-fun bs!1591908 () Bool)

(assert (= bs!1591908 (and d!1993973 b!6355854)))

(assert (=> bs!1591908 (not (= lambda!349930 lambda!349922))))

(declare-fun bs!1591909 () Bool)

(assert (= bs!1591909 (and d!1993973 b!6355885)))

(assert (=> bs!1591909 (not (= lambda!349930 lambda!349928))))

(declare-fun bs!1591910 () Bool)

(assert (= bs!1591910 (and d!1993973 b!6355855)))

(assert (=> bs!1591910 (not (= lambda!349930 lambda!349923))))

(declare-fun bs!1591911 () Bool)

(assert (= bs!1591911 (and d!1993973 d!1993857)))

(assert (=> bs!1591911 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349930 lambda!349892))))

(declare-fun bs!1591912 () Bool)

(assert (= bs!1591912 (and d!1993973 d!1993945)))

(assert (=> bs!1591912 (= lambda!349930 lambda!349917)))

(assert (=> bs!1591904 (not (= lambda!349930 lambda!349829))))

(assert (=> bs!1591904 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regTwo!33038 (regOne!33038 r!7292))) (= lt!2365770 lt!2365779)) (= lambda!349930 lambda!349830))))

(assert (=> bs!1591904 (not (= lambda!349930 lambda!349831))))

(assert (=> bs!1591903 (not (= lambda!349930 lambda!349901))))

(assert (=> d!1993973 true))

(assert (=> d!1993973 true))

(assert (=> d!1993973 true))

(declare-fun lambda!349931 () Int)

(assert (=> bs!1591902 (not (= lambda!349931 lambda!349924))))

(assert (=> bs!1591903 (not (= lambda!349931 lambda!349898))))

(assert (=> bs!1591904 (not (= lambda!349931 lambda!349828))))

(assert (=> bs!1591905 (not (= lambda!349931 lambda!349927))))

(assert (=> bs!1591906 (not (= lambda!349931 lambda!349825))))

(assert (=> bs!1591907 (not (= lambda!349931 lambda!349916))))

(assert (=> bs!1591902 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regTwo!33038 (regOne!33038 r!7292))) (= lt!2365770 lt!2365779)) (= lambda!349931 lambda!349925))))

(assert (=> bs!1591908 (not (= lambda!349931 lambda!349922))))

(assert (=> bs!1591909 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 lt!2365765)) (= lt!2365770 (regTwo!33038 lt!2365765))) (= lambda!349931 lambda!349928))))

(assert (=> bs!1591910 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 lt!2365770)) (= lt!2365770 (regTwo!33038 lt!2365770))) (= lambda!349931 lambda!349923))))

(assert (=> bs!1591911 (not (= lambda!349931 lambda!349892))))

(assert (=> bs!1591912 (not (= lambda!349931 lambda!349917))))

(assert (=> bs!1591904 (= lambda!349931 lambda!349829)))

(assert (=> bs!1591904 (not (= lambda!349931 lambda!349830))))

(assert (=> bs!1591904 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regTwo!33038 (regOne!33038 r!7292))) (= lt!2365770 lt!2365779)) (= lambda!349931 lambda!349831))))

(assert (=> bs!1591903 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349931 lambda!349901))))

(declare-fun bs!1591913 () Bool)

(assert (= bs!1591913 d!1993973))

(assert (=> bs!1591913 (not (= lambda!349931 lambda!349930))))

(assert (=> bs!1591906 (= (and (= (regOne!33038 (regOne!33038 r!7292)) (regOne!33038 r!7292)) (= lt!2365770 (regTwo!33038 r!7292))) (= lambda!349931 lambda!349826))))

(assert (=> d!1993973 true))

(assert (=> d!1993973 true))

(assert (=> d!1993973 true))

(assert (=> d!1993973 (= (Exists!3333 lambda!349930) (Exists!3333 lambda!349931))))

(declare-fun lt!2365948 () Unit!158383)

(assert (=> d!1993973 (= lt!2365948 (choose!47186 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 s!2326))))

(assert (=> d!1993973 (validRegex!7999 (regOne!33038 (regOne!33038 r!7292)))))

(assert (=> d!1993973 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1870 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 s!2326) lt!2365948)))

(declare-fun m!7162230 () Bool)

(assert (=> bs!1591913 m!7162230))

(declare-fun m!7162232 () Bool)

(assert (=> bs!1591913 m!7162232))

(declare-fun m!7162234 () Bool)

(assert (=> bs!1591913 m!7162234))

(assert (=> bs!1591913 m!7161342))

(assert (=> b!6354957 d!1993973))

(declare-fun b!6355917 () Bool)

(declare-fun e!3859730 () Option!16154)

(assert (=> b!6355917 (= e!3859730 (Some!16153 (tuple2!66485 Nil!64966 s!2326)))))

(declare-fun b!6355918 () Bool)

(declare-fun e!3859729 () Bool)

(declare-fun lt!2365950 () Option!16154)

(assert (=> b!6355918 (= e!3859729 (not (isDefined!12857 lt!2365950)))))

(declare-fun b!6355919 () Bool)

(declare-fun e!3859731 () Bool)

(assert (=> b!6355919 (= e!3859731 (matchR!8446 lt!2365770 s!2326))))

(declare-fun b!6355920 () Bool)

(declare-fun res!2615290 () Bool)

(declare-fun e!3859727 () Bool)

(assert (=> b!6355920 (=> (not res!2615290) (not e!3859727))))

(assert (=> b!6355920 (= res!2615290 (matchR!8446 (regOne!33038 (regOne!33038 r!7292)) (_1!36545 (get!22479 lt!2365950))))))

(declare-fun b!6355921 () Bool)

(declare-fun res!2615294 () Bool)

(assert (=> b!6355921 (=> (not res!2615294) (not e!3859727))))

(assert (=> b!6355921 (= res!2615294 (matchR!8446 lt!2365770 (_2!36545 (get!22479 lt!2365950))))))

(declare-fun b!6355922 () Bool)

(assert (=> b!6355922 (= e!3859727 (= (++!14332 (_1!36545 (get!22479 lt!2365950)) (_2!36545 (get!22479 lt!2365950))) s!2326))))

(declare-fun b!6355923 () Bool)

(declare-fun e!3859728 () Option!16154)

(assert (=> b!6355923 (= e!3859728 None!16153)))

(declare-fun d!1993975 () Bool)

(assert (=> d!1993975 e!3859729))

(declare-fun res!2615292 () Bool)

(assert (=> d!1993975 (=> res!2615292 e!3859729)))

(assert (=> d!1993975 (= res!2615292 e!3859727)))

(declare-fun res!2615293 () Bool)

(assert (=> d!1993975 (=> (not res!2615293) (not e!3859727))))

(assert (=> d!1993975 (= res!2615293 (isDefined!12857 lt!2365950))))

(assert (=> d!1993975 (= lt!2365950 e!3859730)))

(declare-fun c!1156671 () Bool)

(assert (=> d!1993975 (= c!1156671 e!3859731)))

(declare-fun res!2615291 () Bool)

(assert (=> d!1993975 (=> (not res!2615291) (not e!3859731))))

(assert (=> d!1993975 (= res!2615291 (matchR!8446 (regOne!33038 (regOne!33038 r!7292)) Nil!64966))))

(assert (=> d!1993975 (validRegex!7999 (regOne!33038 (regOne!33038 r!7292)))))

(assert (=> d!1993975 (= (findConcatSeparation!2568 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 Nil!64966 s!2326 s!2326) lt!2365950)))

(declare-fun b!6355924 () Bool)

(assert (=> b!6355924 (= e!3859730 e!3859728)))

(declare-fun c!1156672 () Bool)

(assert (=> b!6355924 (= c!1156672 ((_ is Nil!64966) s!2326))))

(declare-fun b!6355925 () Bool)

(declare-fun lt!2365949 () Unit!158383)

(declare-fun lt!2365951 () Unit!158383)

(assert (=> b!6355925 (= lt!2365949 lt!2365951)))

(assert (=> b!6355925 (= (++!14332 (++!14332 Nil!64966 (Cons!64966 (h!71414 s!2326) Nil!64966)) (t!378680 s!2326)) s!2326)))

(assert (=> b!6355925 (= lt!2365951 (lemmaMoveElementToOtherListKeepsConcatEq!2427 Nil!64966 (h!71414 s!2326) (t!378680 s!2326) s!2326))))

(assert (=> b!6355925 (= e!3859728 (findConcatSeparation!2568 (regOne!33038 (regOne!33038 r!7292)) lt!2365770 (++!14332 Nil!64966 (Cons!64966 (h!71414 s!2326) Nil!64966)) (t!378680 s!2326) s!2326))))

(assert (= (and d!1993975 res!2615291) b!6355919))

(assert (= (and d!1993975 c!1156671) b!6355917))

(assert (= (and d!1993975 (not c!1156671)) b!6355924))

(assert (= (and b!6355924 c!1156672) b!6355923))

(assert (= (and b!6355924 (not c!1156672)) b!6355925))

(assert (= (and d!1993975 res!2615293) b!6355920))

(assert (= (and b!6355920 res!2615290) b!6355921))

(assert (= (and b!6355921 res!2615294) b!6355922))

(assert (= (and d!1993975 (not res!2615292)) b!6355918))

(declare-fun m!7162236 () Bool)

(assert (=> b!6355920 m!7162236))

(declare-fun m!7162238 () Bool)

(assert (=> b!6355920 m!7162238))

(declare-fun m!7162240 () Bool)

(assert (=> d!1993975 m!7162240))

(declare-fun m!7162242 () Bool)

(assert (=> d!1993975 m!7162242))

(assert (=> d!1993975 m!7161342))

(assert (=> b!6355918 m!7162240))

(assert (=> b!6355925 m!7161904))

(assert (=> b!6355925 m!7161904))

(assert (=> b!6355925 m!7161906))

(assert (=> b!6355925 m!7161908))

(assert (=> b!6355925 m!7161904))

(declare-fun m!7162244 () Bool)

(assert (=> b!6355925 m!7162244))

(assert (=> b!6355921 m!7162236))

(declare-fun m!7162246 () Bool)

(assert (=> b!6355921 m!7162246))

(assert (=> b!6355919 m!7161308))

(assert (=> b!6355922 m!7162236))

(declare-fun m!7162248 () Bool)

(assert (=> b!6355922 m!7162248))

(assert (=> b!6354957 d!1993975))

(declare-fun bs!1591914 () Bool)

(declare-fun d!1993977 () Bool)

(assert (= bs!1591914 (and d!1993977 d!1993969)))

(declare-fun lambda!349932 () Int)

(assert (=> bs!1591914 (= lambda!349932 lambda!349929)))

(declare-fun bs!1591915 () Bool)

(assert (= bs!1591915 (and d!1993977 d!1993887)))

(assert (=> bs!1591915 (= lambda!349932 lambda!349903)))

(declare-fun bs!1591916 () Bool)

(assert (= bs!1591916 (and d!1993977 d!1993955)))

(assert (=> bs!1591916 (= lambda!349932 lambda!349926)))

(declare-fun bs!1591917 () Bool)

(assert (= bs!1591917 (and d!1993977 d!1993773)))

(assert (=> bs!1591917 (= lambda!349932 lambda!349858)))

(declare-fun bs!1591918 () Bool)

(assert (= bs!1591918 (and d!1993977 d!1993829)))

(assert (=> bs!1591918 (= lambda!349932 lambda!349882)))

(declare-fun b!6355926 () Bool)

(declare-fun e!3859735 () Bool)

(declare-fun lt!2365952 () Regex!16263)

(assert (=> b!6355926 (= e!3859735 (isConcat!1187 lt!2365952))))

(declare-fun b!6355927 () Bool)

(declare-fun e!3859733 () Bool)

(assert (=> b!6355927 (= e!3859733 e!3859735)))

(declare-fun c!1156673 () Bool)

(assert (=> b!6355927 (= c!1156673 (isEmpty!37062 (tail!12104 lt!2365769)))))

(declare-fun b!6355928 () Bool)

(declare-fun e!3859732 () Regex!16263)

(assert (=> b!6355928 (= e!3859732 (Concat!25108 (h!71412 lt!2365769) (generalisedConcat!1860 (t!378678 lt!2365769))))))

(declare-fun e!3859734 () Bool)

(assert (=> d!1993977 e!3859734))

(declare-fun res!2615295 () Bool)

(assert (=> d!1993977 (=> (not res!2615295) (not e!3859734))))

(assert (=> d!1993977 (= res!2615295 (validRegex!7999 lt!2365952))))

(declare-fun e!3859736 () Regex!16263)

(assert (=> d!1993977 (= lt!2365952 e!3859736)))

(declare-fun c!1156676 () Bool)

(declare-fun e!3859737 () Bool)

(assert (=> d!1993977 (= c!1156676 e!3859737)))

(declare-fun res!2615296 () Bool)

(assert (=> d!1993977 (=> (not res!2615296) (not e!3859737))))

(assert (=> d!1993977 (= res!2615296 ((_ is Cons!64964) lt!2365769))))

(assert (=> d!1993977 (forall!15437 lt!2365769 lambda!349932)))

(assert (=> d!1993977 (= (generalisedConcat!1860 lt!2365769) lt!2365952)))

(declare-fun b!6355929 () Bool)

(assert (=> b!6355929 (= e!3859734 e!3859733)))

(declare-fun c!1156675 () Bool)

(assert (=> b!6355929 (= c!1156675 (isEmpty!37062 lt!2365769))))

(declare-fun b!6355930 () Bool)

(assert (=> b!6355930 (= e!3859735 (= lt!2365952 (head!13019 lt!2365769)))))

(declare-fun b!6355931 () Bool)

(assert (=> b!6355931 (= e!3859733 (isEmptyExpr!1664 lt!2365952))))

(declare-fun b!6355932 () Bool)

(assert (=> b!6355932 (= e!3859736 (h!71412 lt!2365769))))

(declare-fun b!6355933 () Bool)

(assert (=> b!6355933 (= e!3859737 (isEmpty!37062 (t!378678 lt!2365769)))))

(declare-fun b!6355934 () Bool)

(assert (=> b!6355934 (= e!3859732 EmptyExpr!16263)))

(declare-fun b!6355935 () Bool)

(assert (=> b!6355935 (= e!3859736 e!3859732)))

(declare-fun c!1156674 () Bool)

(assert (=> b!6355935 (= c!1156674 ((_ is Cons!64964) lt!2365769))))

(assert (= (and d!1993977 res!2615296) b!6355933))

(assert (= (and d!1993977 c!1156676) b!6355932))

(assert (= (and d!1993977 (not c!1156676)) b!6355935))

(assert (= (and b!6355935 c!1156674) b!6355928))

(assert (= (and b!6355935 (not c!1156674)) b!6355934))

(assert (= (and d!1993977 res!2615295) b!6355929))

(assert (= (and b!6355929 c!1156675) b!6355931))

(assert (= (and b!6355929 (not c!1156675)) b!6355927))

(assert (= (and b!6355927 c!1156673) b!6355930))

(assert (= (and b!6355927 (not c!1156673)) b!6355926))

(declare-fun m!7162250 () Bool)

(assert (=> b!6355927 m!7162250))

(assert (=> b!6355927 m!7162250))

(declare-fun m!7162252 () Bool)

(assert (=> b!6355927 m!7162252))

(declare-fun m!7162254 () Bool)

(assert (=> b!6355933 m!7162254))

(declare-fun m!7162256 () Bool)

(assert (=> b!6355931 m!7162256))

(declare-fun m!7162258 () Bool)

(assert (=> b!6355928 m!7162258))

(declare-fun m!7162260 () Bool)

(assert (=> b!6355930 m!7162260))

(declare-fun m!7162262 () Bool)

(assert (=> b!6355929 m!7162262))

(declare-fun m!7162264 () Bool)

(assert (=> d!1993977 m!7162264))

(declare-fun m!7162266 () Bool)

(assert (=> d!1993977 m!7162266))

(declare-fun m!7162268 () Bool)

(assert (=> b!6355926 m!7162268))

(assert (=> b!6354957 d!1993977))

(declare-fun d!1993979 () Bool)

(declare-fun res!2615299 () Bool)

(declare-fun e!3859739 () Bool)

(assert (=> d!1993979 (=> res!2615299 e!3859739)))

(assert (=> d!1993979 (= res!2615299 ((_ is ElementMatch!16263) r!7292))))

(assert (=> d!1993979 (= (validRegex!7999 r!7292) e!3859739)))

(declare-fun b!6355936 () Bool)

(declare-fun e!3859740 () Bool)

(declare-fun e!3859742 () Bool)

(assert (=> b!6355936 (= e!3859740 e!3859742)))

(declare-fun res!2615301 () Bool)

(assert (=> b!6355936 (= res!2615301 (not (nullable!6256 (reg!16592 r!7292))))))

(assert (=> b!6355936 (=> (not res!2615301) (not e!3859742))))

(declare-fun bm!542033 () Bool)

(declare-fun call!542039 () Bool)

(declare-fun c!1156678 () Bool)

(assert (=> bm!542033 (= call!542039 (validRegex!7999 (ite c!1156678 (regTwo!33039 r!7292) (regTwo!33038 r!7292))))))

(declare-fun b!6355937 () Bool)

(declare-fun e!3859743 () Bool)

(assert (=> b!6355937 (= e!3859743 call!542039)))

(declare-fun b!6355938 () Bool)

(declare-fun call!542038 () Bool)

(assert (=> b!6355938 (= e!3859742 call!542038)))

(declare-fun b!6355939 () Bool)

(declare-fun res!2615300 () Bool)

(declare-fun e!3859738 () Bool)

(assert (=> b!6355939 (=> res!2615300 e!3859738)))

(assert (=> b!6355939 (= res!2615300 (not ((_ is Concat!25108) r!7292)))))

(declare-fun e!3859741 () Bool)

(assert (=> b!6355939 (= e!3859741 e!3859738)))

(declare-fun b!6355940 () Bool)

(declare-fun res!2615297 () Bool)

(declare-fun e!3859744 () Bool)

(assert (=> b!6355940 (=> (not res!2615297) (not e!3859744))))

(declare-fun call!542040 () Bool)

(assert (=> b!6355940 (= res!2615297 call!542040)))

(assert (=> b!6355940 (= e!3859741 e!3859744)))

(declare-fun b!6355941 () Bool)

(assert (=> b!6355941 (= e!3859744 call!542039)))

(declare-fun bm!542034 () Bool)

(declare-fun c!1156677 () Bool)

(assert (=> bm!542034 (= call!542038 (validRegex!7999 (ite c!1156677 (reg!16592 r!7292) (ite c!1156678 (regOne!33039 r!7292) (regOne!33038 r!7292)))))))

(declare-fun b!6355942 () Bool)

(assert (=> b!6355942 (= e!3859739 e!3859740)))

(assert (=> b!6355942 (= c!1156677 ((_ is Star!16263) r!7292))))

(declare-fun b!6355943 () Bool)

(assert (=> b!6355943 (= e!3859740 e!3859741)))

(assert (=> b!6355943 (= c!1156678 ((_ is Union!16263) r!7292))))

(declare-fun bm!542035 () Bool)

(assert (=> bm!542035 (= call!542040 call!542038)))

(declare-fun b!6355944 () Bool)

(assert (=> b!6355944 (= e!3859738 e!3859743)))

(declare-fun res!2615298 () Bool)

(assert (=> b!6355944 (=> (not res!2615298) (not e!3859743))))

(assert (=> b!6355944 (= res!2615298 call!542040)))

(assert (= (and d!1993979 (not res!2615299)) b!6355942))

(assert (= (and b!6355942 c!1156677) b!6355936))

(assert (= (and b!6355942 (not c!1156677)) b!6355943))

(assert (= (and b!6355936 res!2615301) b!6355938))

(assert (= (and b!6355943 c!1156678) b!6355940))

(assert (= (and b!6355943 (not c!1156678)) b!6355939))

(assert (= (and b!6355940 res!2615297) b!6355941))

(assert (= (and b!6355939 (not res!2615300)) b!6355944))

(assert (= (and b!6355944 res!2615298) b!6355937))

(assert (= (or b!6355941 b!6355937) bm!542033))

(assert (= (or b!6355940 b!6355944) bm!542035))

(assert (= (or b!6355938 bm!542035) bm!542034))

(declare-fun m!7162270 () Bool)

(assert (=> b!6355936 m!7162270))

(declare-fun m!7162272 () Bool)

(assert (=> bm!542033 m!7162272))

(declare-fun m!7162274 () Bool)

(assert (=> bm!542034 m!7162274))

(assert (=> start!629586 d!1993979))

(declare-fun d!1993981 () Bool)

(assert (=> d!1993981 (= (flatMap!1768 lt!2365773 lambda!349827) (choose!47187 lt!2365773 lambda!349827))))

(declare-fun bs!1591919 () Bool)

(assert (= bs!1591919 d!1993981))

(declare-fun m!7162276 () Bool)

(assert (=> bs!1591919 m!7162276))

(assert (=> b!6354934 d!1993981))

(declare-fun b!6355945 () Bool)

(declare-fun e!3859745 () (InoxSet Context!11294))

(declare-fun call!542041 () (InoxSet Context!11294))

(assert (=> b!6355945 (= e!3859745 call!542041)))

(declare-fun b!6355946 () Bool)

(assert (=> b!6355946 (= e!3859745 ((as const (Array Context!11294 Bool)) false))))

(declare-fun b!6355947 () Bool)

(declare-fun e!3859746 () (InoxSet Context!11294))

(assert (=> b!6355947 (= e!3859746 e!3859745)))

(declare-fun c!1156680 () Bool)

(assert (=> b!6355947 (= c!1156680 ((_ is Cons!64964) (exprs!6147 lt!2365783)))))

(declare-fun b!6355948 () Bool)

(assert (=> b!6355948 (= e!3859746 ((_ map or) call!542041 (derivationStepZipperUp!1437 (Context!11295 (t!378678 (exprs!6147 lt!2365783))) (h!71414 s!2326))))))

(declare-fun b!6355949 () Bool)

(declare-fun e!3859747 () Bool)

(assert (=> b!6355949 (= e!3859747 (nullable!6256 (h!71412 (exprs!6147 lt!2365783))))))

(declare-fun d!1993983 () Bool)

(declare-fun c!1156679 () Bool)

(assert (=> d!1993983 (= c!1156679 e!3859747)))

(declare-fun res!2615302 () Bool)

(assert (=> d!1993983 (=> (not res!2615302) (not e!3859747))))

(assert (=> d!1993983 (= res!2615302 ((_ is Cons!64964) (exprs!6147 lt!2365783)))))

(assert (=> d!1993983 (= (derivationStepZipperUp!1437 lt!2365783 (h!71414 s!2326)) e!3859746)))

(declare-fun bm!542036 () Bool)

(assert (=> bm!542036 (= call!542041 (derivationStepZipperDown!1511 (h!71412 (exprs!6147 lt!2365783)) (Context!11295 (t!378678 (exprs!6147 lt!2365783))) (h!71414 s!2326)))))

(assert (= (and d!1993983 res!2615302) b!6355949))

(assert (= (and d!1993983 c!1156679) b!6355948))

(assert (= (and d!1993983 (not c!1156679)) b!6355947))

(assert (= (and b!6355947 c!1156680) b!6355945))

(assert (= (and b!6355947 (not c!1156680)) b!6355946))

(assert (= (or b!6355948 b!6355945) bm!542036))

(declare-fun m!7162278 () Bool)

(assert (=> b!6355948 m!7162278))

(declare-fun m!7162280 () Bool)

(assert (=> b!6355949 m!7162280))

(declare-fun m!7162282 () Bool)

(assert (=> bm!542036 m!7162282))

(assert (=> b!6354934 d!1993983))

(declare-fun d!1993985 () Bool)

(assert (=> d!1993985 (= (flatMap!1768 lt!2365773 lambda!349827) (dynLambda!25761 lambda!349827 lt!2365783))))

(declare-fun lt!2365953 () Unit!158383)

(assert (=> d!1993985 (= lt!2365953 (choose!47188 lt!2365773 lt!2365783 lambda!349827))))

(assert (=> d!1993985 (= lt!2365773 (store ((as const (Array Context!11294 Bool)) false) lt!2365783 true))))

(assert (=> d!1993985 (= (lemmaFlatMapOnSingletonSet!1294 lt!2365773 lt!2365783 lambda!349827) lt!2365953)))

(declare-fun b_lambda!241663 () Bool)

(assert (=> (not b_lambda!241663) (not d!1993985)))

(declare-fun bs!1591920 () Bool)

(assert (= bs!1591920 d!1993985))

(assert (=> bs!1591920 m!7161344))

(declare-fun m!7162284 () Bool)

(assert (=> bs!1591920 m!7162284))

(declare-fun m!7162286 () Bool)

(assert (=> bs!1591920 m!7162286))

(assert (=> bs!1591920 m!7161346))

(assert (=> b!6354934 d!1993985))

(declare-fun bs!1591921 () Bool)

(declare-fun d!1993987 () Bool)

(assert (= bs!1591921 (and d!1993987 b!6354959)))

(declare-fun lambda!349935 () Int)

(assert (=> bs!1591921 (= lambda!349935 lambda!349827)))

(assert (=> d!1993987 true))

(assert (=> d!1993987 (= (derivationStepZipper!2229 lt!2365773 (h!71414 s!2326)) (flatMap!1768 lt!2365773 lambda!349935))))

(declare-fun bs!1591922 () Bool)

(assert (= bs!1591922 d!1993987))

(declare-fun m!7162288 () Bool)

(assert (=> bs!1591922 m!7162288))

(assert (=> b!6354934 d!1993987))

(declare-fun d!1993989 () Bool)

(declare-fun res!2615305 () Bool)

(declare-fun e!3859749 () Bool)

(assert (=> d!1993989 (=> res!2615305 e!3859749)))

(assert (=> d!1993989 (= res!2615305 ((_ is ElementMatch!16263) (regOne!33038 (regOne!33038 r!7292))))))

(assert (=> d!1993989 (= (validRegex!7999 (regOne!33038 (regOne!33038 r!7292))) e!3859749)))

(declare-fun b!6355952 () Bool)

(declare-fun e!3859750 () Bool)

(declare-fun e!3859752 () Bool)

(assert (=> b!6355952 (= e!3859750 e!3859752)))

(declare-fun res!2615307 () Bool)

(assert (=> b!6355952 (= res!2615307 (not (nullable!6256 (reg!16592 (regOne!33038 (regOne!33038 r!7292))))))))

(assert (=> b!6355952 (=> (not res!2615307) (not e!3859752))))

(declare-fun bm!542037 () Bool)

(declare-fun call!542043 () Bool)

(declare-fun c!1156684 () Bool)

(assert (=> bm!542037 (= call!542043 (validRegex!7999 (ite c!1156684 (regTwo!33039 (regOne!33038 (regOne!33038 r!7292))) (regTwo!33038 (regOne!33038 (regOne!33038 r!7292))))))))

(declare-fun b!6355953 () Bool)

(declare-fun e!3859753 () Bool)

(assert (=> b!6355953 (= e!3859753 call!542043)))

(declare-fun b!6355954 () Bool)

(declare-fun call!542042 () Bool)

(assert (=> b!6355954 (= e!3859752 call!542042)))

(declare-fun b!6355955 () Bool)

(declare-fun res!2615306 () Bool)

(declare-fun e!3859748 () Bool)

(assert (=> b!6355955 (=> res!2615306 e!3859748)))

(assert (=> b!6355955 (= res!2615306 (not ((_ is Concat!25108) (regOne!33038 (regOne!33038 r!7292)))))))

(declare-fun e!3859751 () Bool)

(assert (=> b!6355955 (= e!3859751 e!3859748)))

(declare-fun b!6355956 () Bool)

(declare-fun res!2615303 () Bool)

(declare-fun e!3859754 () Bool)

(assert (=> b!6355956 (=> (not res!2615303) (not e!3859754))))

(declare-fun call!542044 () Bool)

(assert (=> b!6355956 (= res!2615303 call!542044)))

(assert (=> b!6355956 (= e!3859751 e!3859754)))

(declare-fun b!6355957 () Bool)

(assert (=> b!6355957 (= e!3859754 call!542043)))

(declare-fun c!1156683 () Bool)

(declare-fun bm!542038 () Bool)

(assert (=> bm!542038 (= call!542042 (validRegex!7999 (ite c!1156683 (reg!16592 (regOne!33038 (regOne!33038 r!7292))) (ite c!1156684 (regOne!33039 (regOne!33038 (regOne!33038 r!7292))) (regOne!33038 (regOne!33038 (regOne!33038 r!7292)))))))))

(declare-fun b!6355958 () Bool)

(assert (=> b!6355958 (= e!3859749 e!3859750)))

(assert (=> b!6355958 (= c!1156683 ((_ is Star!16263) (regOne!33038 (regOne!33038 r!7292))))))

(declare-fun b!6355959 () Bool)

(assert (=> b!6355959 (= e!3859750 e!3859751)))

(assert (=> b!6355959 (= c!1156684 ((_ is Union!16263) (regOne!33038 (regOne!33038 r!7292))))))

(declare-fun bm!542039 () Bool)

(assert (=> bm!542039 (= call!542044 call!542042)))

(declare-fun b!6355960 () Bool)

(assert (=> b!6355960 (= e!3859748 e!3859753)))

(declare-fun res!2615304 () Bool)

(assert (=> b!6355960 (=> (not res!2615304) (not e!3859753))))

(assert (=> b!6355960 (= res!2615304 call!542044)))

(assert (= (and d!1993989 (not res!2615305)) b!6355958))

(assert (= (and b!6355958 c!1156683) b!6355952))

(assert (= (and b!6355958 (not c!1156683)) b!6355959))

(assert (= (and b!6355952 res!2615307) b!6355954))

(assert (= (and b!6355959 c!1156684) b!6355956))

(assert (= (and b!6355959 (not c!1156684)) b!6355955))

(assert (= (and b!6355956 res!2615303) b!6355957))

(assert (= (and b!6355955 (not res!2615306)) b!6355960))

(assert (= (and b!6355960 res!2615304) b!6355953))

(assert (= (or b!6355957 b!6355953) bm!542037))

(assert (= (or b!6355956 b!6355960) bm!542039))

(assert (= (or b!6355954 bm!542039) bm!542038))

(declare-fun m!7162290 () Bool)

(assert (=> b!6355952 m!7162290))

(declare-fun m!7162292 () Bool)

(assert (=> bm!542037 m!7162292))

(declare-fun m!7162294 () Bool)

(assert (=> bm!542038 m!7162294))

(assert (=> b!6354954 d!1993989))

(declare-fun d!1993991 () Bool)

(declare-fun c!1156685 () Bool)

(assert (=> d!1993991 (= c!1156685 (isEmpty!37064 (t!378680 s!2326)))))

(declare-fun e!3859755 () Bool)

(assert (=> d!1993991 (= (matchZipper!2275 lt!2365780 (t!378680 s!2326)) e!3859755)))

(declare-fun b!6355961 () Bool)

(assert (=> b!6355961 (= e!3859755 (nullableZipper!2029 lt!2365780))))

(declare-fun b!6355962 () Bool)

(assert (=> b!6355962 (= e!3859755 (matchZipper!2275 (derivationStepZipper!2229 lt!2365780 (head!13018 (t!378680 s!2326))) (tail!12103 (t!378680 s!2326))))))

(assert (= (and d!1993991 c!1156685) b!6355961))

(assert (= (and d!1993991 (not c!1156685)) b!6355962))

(assert (=> d!1993991 m!7161604))

(declare-fun m!7162296 () Bool)

(assert (=> b!6355961 m!7162296))

(assert (=> b!6355962 m!7161608))

(assert (=> b!6355962 m!7161608))

(declare-fun m!7162298 () Bool)

(assert (=> b!6355962 m!7162298))

(assert (=> b!6355962 m!7161612))

(assert (=> b!6355962 m!7162298))

(assert (=> b!6355962 m!7161612))

(declare-fun m!7162300 () Bool)

(assert (=> b!6355962 m!7162300))

(assert (=> b!6354932 d!1993991))

(declare-fun d!1993993 () Bool)

(declare-fun e!3859758 () Bool)

(assert (=> d!1993993 e!3859758))

(declare-fun c!1156686 () Bool)

(assert (=> d!1993993 (= c!1156686 ((_ is EmptyExpr!16263) (Concat!25108 lt!2365781 (regTwo!33038 r!7292))))))

(declare-fun lt!2365954 () Bool)

(declare-fun e!3859761 () Bool)

(assert (=> d!1993993 (= lt!2365954 e!3859761)))

(declare-fun c!1156687 () Bool)

(assert (=> d!1993993 (= c!1156687 (isEmpty!37064 s!2326))))

(assert (=> d!1993993 (validRegex!7999 (Concat!25108 lt!2365781 (regTwo!33038 r!7292)))))

(assert (=> d!1993993 (= (matchR!8446 (Concat!25108 lt!2365781 (regTwo!33038 r!7292)) s!2326) lt!2365954)))

(declare-fun bm!542040 () Bool)

(declare-fun call!542045 () Bool)

(assert (=> bm!542040 (= call!542045 (isEmpty!37064 s!2326))))

(declare-fun b!6355963 () Bool)

(assert (=> b!6355963 (= e!3859761 (nullable!6256 (Concat!25108 lt!2365781 (regTwo!33038 r!7292))))))

(declare-fun b!6355964 () Bool)

(declare-fun res!2615315 () Bool)

(declare-fun e!3859757 () Bool)

(assert (=> b!6355964 (=> res!2615315 e!3859757)))

(assert (=> b!6355964 (= res!2615315 (not ((_ is ElementMatch!16263) (Concat!25108 lt!2365781 (regTwo!33038 r!7292)))))))

(declare-fun e!3859762 () Bool)

(assert (=> b!6355964 (= e!3859762 e!3859757)))

(declare-fun e!3859756 () Bool)

(declare-fun b!6355965 () Bool)

(assert (=> b!6355965 (= e!3859756 (= (head!13018 s!2326) (c!1156378 (Concat!25108 lt!2365781 (regTwo!33038 r!7292)))))))

(declare-fun b!6355966 () Bool)

(assert (=> b!6355966 (= e!3859762 (not lt!2365954))))

(declare-fun e!3859759 () Bool)

(declare-fun b!6355967 () Bool)

(assert (=> b!6355967 (= e!3859759 (not (= (head!13018 s!2326) (c!1156378 (Concat!25108 lt!2365781 (regTwo!33038 r!7292))))))))

(declare-fun b!6355968 () Bool)

(declare-fun res!2615309 () Bool)

(assert (=> b!6355968 (=> (not res!2615309) (not e!3859756))))

(assert (=> b!6355968 (= res!2615309 (not call!542045))))

(declare-fun b!6355969 () Bool)

(declare-fun res!2615312 () Bool)

(assert (=> b!6355969 (=> res!2615312 e!3859759)))

(assert (=> b!6355969 (= res!2615312 (not (isEmpty!37064 (tail!12103 s!2326))))))

(declare-fun b!6355970 () Bool)

(declare-fun e!3859760 () Bool)

(assert (=> b!6355970 (= e!3859760 e!3859759)))

(declare-fun res!2615314 () Bool)

(assert (=> b!6355970 (=> res!2615314 e!3859759)))

(assert (=> b!6355970 (= res!2615314 call!542045)))

(declare-fun b!6355971 () Bool)

(declare-fun res!2615311 () Bool)

(assert (=> b!6355971 (=> (not res!2615311) (not e!3859756))))

(assert (=> b!6355971 (= res!2615311 (isEmpty!37064 (tail!12103 s!2326)))))

(declare-fun b!6355972 () Bool)

(declare-fun res!2615313 () Bool)

(assert (=> b!6355972 (=> res!2615313 e!3859757)))

(assert (=> b!6355972 (= res!2615313 e!3859756)))

(declare-fun res!2615308 () Bool)

(assert (=> b!6355972 (=> (not res!2615308) (not e!3859756))))

(assert (=> b!6355972 (= res!2615308 lt!2365954)))

(declare-fun b!6355973 () Bool)

(assert (=> b!6355973 (= e!3859757 e!3859760)))

(declare-fun res!2615310 () Bool)

(assert (=> b!6355973 (=> (not res!2615310) (not e!3859760))))

(assert (=> b!6355973 (= res!2615310 (not lt!2365954))))

(declare-fun b!6355974 () Bool)

(assert (=> b!6355974 (= e!3859758 e!3859762)))

(declare-fun c!1156688 () Bool)

(assert (=> b!6355974 (= c!1156688 ((_ is EmptyLang!16263) (Concat!25108 lt!2365781 (regTwo!33038 r!7292))))))

(declare-fun b!6355975 () Bool)

(assert (=> b!6355975 (= e!3859758 (= lt!2365954 call!542045))))

(declare-fun b!6355976 () Bool)

(assert (=> b!6355976 (= e!3859761 (matchR!8446 (derivativeStep!4968 (Concat!25108 lt!2365781 (regTwo!33038 r!7292)) (head!13018 s!2326)) (tail!12103 s!2326)))))

(assert (= (and d!1993993 c!1156687) b!6355963))

(assert (= (and d!1993993 (not c!1156687)) b!6355976))

(assert (= (and d!1993993 c!1156686) b!6355975))

(assert (= (and d!1993993 (not c!1156686)) b!6355974))

(assert (= (and b!6355974 c!1156688) b!6355966))

(assert (= (and b!6355974 (not c!1156688)) b!6355964))

(assert (= (and b!6355964 (not res!2615315)) b!6355972))

(assert (= (and b!6355972 res!2615308) b!6355968))

(assert (= (and b!6355968 res!2615309) b!6355971))

(assert (= (and b!6355971 res!2615311) b!6355965))

(assert (= (and b!6355972 (not res!2615313)) b!6355973))

(assert (= (and b!6355973 res!2615310) b!6355970))

(assert (= (and b!6355970 (not res!2615314)) b!6355969))

(assert (= (and b!6355969 (not res!2615312)) b!6355967))

(assert (= (or b!6355975 b!6355968 b!6355970) bm!542040))

(assert (=> b!6355967 m!7161556))

(assert (=> b!6355976 m!7161556))

(assert (=> b!6355976 m!7161556))

(declare-fun m!7162302 () Bool)

(assert (=> b!6355976 m!7162302))

(assert (=> b!6355976 m!7161560))

(assert (=> b!6355976 m!7162302))

(assert (=> b!6355976 m!7161560))

(declare-fun m!7162304 () Bool)

(assert (=> b!6355976 m!7162304))

(assert (=> b!6355965 m!7161556))

(assert (=> b!6355969 m!7161560))

(assert (=> b!6355969 m!7161560))

(assert (=> b!6355969 m!7161564))

(assert (=> b!6355971 m!7161560))

(assert (=> b!6355971 m!7161560))

(assert (=> b!6355971 m!7161564))

(declare-fun m!7162306 () Bool)

(assert (=> b!6355963 m!7162306))

(assert (=> d!1993993 m!7161568))

(declare-fun m!7162308 () Bool)

(assert (=> d!1993993 m!7162308))

(assert (=> bm!542040 m!7161568))

(assert (=> b!6354953 d!1993993))

(declare-fun d!1993995 () Bool)

(assert (=> d!1993995 (= (isEmpty!37061 (t!378679 zl!343)) ((_ is Nil!64965) (t!378679 zl!343)))))

(assert (=> b!6354931 d!1993995))

(declare-fun bs!1591923 () Bool)

(declare-fun d!1993997 () Bool)

(assert (= bs!1591923 (and d!1993997 d!1993977)))

(declare-fun lambda!349938 () Int)

(assert (=> bs!1591923 (= lambda!349938 lambda!349932)))

(declare-fun bs!1591924 () Bool)

(assert (= bs!1591924 (and d!1993997 d!1993969)))

(assert (=> bs!1591924 (= lambda!349938 lambda!349929)))

(declare-fun bs!1591925 () Bool)

(assert (= bs!1591925 (and d!1993997 d!1993887)))

(assert (=> bs!1591925 (= lambda!349938 lambda!349903)))

(declare-fun bs!1591926 () Bool)

(assert (= bs!1591926 (and d!1993997 d!1993955)))

(assert (=> bs!1591926 (= lambda!349938 lambda!349926)))

(declare-fun bs!1591927 () Bool)

(assert (= bs!1591927 (and d!1993997 d!1993773)))

(assert (=> bs!1591927 (= lambda!349938 lambda!349858)))

(declare-fun bs!1591928 () Bool)

(assert (= bs!1591928 (and d!1993997 d!1993829)))

(assert (=> bs!1591928 (= lambda!349938 lambda!349882)))

(declare-fun b!6355997 () Bool)

(declare-fun e!3859778 () Bool)

(declare-fun lt!2365957 () Regex!16263)

(assert (=> b!6355997 (= e!3859778 (= lt!2365957 (head!13019 (unfocusZipperList!1684 zl!343))))))

(declare-fun b!6355998 () Bool)

(declare-fun e!3859776 () Regex!16263)

(assert (=> b!6355998 (= e!3859776 (Union!16263 (h!71412 (unfocusZipperList!1684 zl!343)) (generalisedUnion!2107 (t!378678 (unfocusZipperList!1684 zl!343)))))))

(declare-fun b!6355999 () Bool)

(assert (=> b!6355999 (= e!3859776 EmptyLang!16263)))

(declare-fun b!6356000 () Bool)

(declare-fun isUnion!1102 (Regex!16263) Bool)

(assert (=> b!6356000 (= e!3859778 (isUnion!1102 lt!2365957))))

(declare-fun b!6356001 () Bool)

(declare-fun e!3859775 () Bool)

(declare-fun isEmptyLang!1672 (Regex!16263) Bool)

(assert (=> b!6356001 (= e!3859775 (isEmptyLang!1672 lt!2365957))))

(declare-fun b!6356002 () Bool)

(declare-fun e!3859779 () Bool)

(assert (=> b!6356002 (= e!3859779 e!3859775)))

(declare-fun c!1156698 () Bool)

(assert (=> b!6356002 (= c!1156698 (isEmpty!37062 (unfocusZipperList!1684 zl!343)))))

(declare-fun b!6356003 () Bool)

(declare-fun e!3859780 () Bool)

(assert (=> b!6356003 (= e!3859780 (isEmpty!37062 (t!378678 (unfocusZipperList!1684 zl!343))))))

(declare-fun b!6356004 () Bool)

(declare-fun e!3859777 () Regex!16263)

(assert (=> b!6356004 (= e!3859777 (h!71412 (unfocusZipperList!1684 zl!343)))))

(assert (=> d!1993997 e!3859779))

(declare-fun res!2615321 () Bool)

(assert (=> d!1993997 (=> (not res!2615321) (not e!3859779))))

(assert (=> d!1993997 (= res!2615321 (validRegex!7999 lt!2365957))))

(assert (=> d!1993997 (= lt!2365957 e!3859777)))

(declare-fun c!1156699 () Bool)

(assert (=> d!1993997 (= c!1156699 e!3859780)))

(declare-fun res!2615320 () Bool)

(assert (=> d!1993997 (=> (not res!2615320) (not e!3859780))))

(assert (=> d!1993997 (= res!2615320 ((_ is Cons!64964) (unfocusZipperList!1684 zl!343)))))

(assert (=> d!1993997 (forall!15437 (unfocusZipperList!1684 zl!343) lambda!349938)))

(assert (=> d!1993997 (= (generalisedUnion!2107 (unfocusZipperList!1684 zl!343)) lt!2365957)))

(declare-fun b!6356005 () Bool)

(assert (=> b!6356005 (= e!3859777 e!3859776)))

(declare-fun c!1156700 () Bool)

(assert (=> b!6356005 (= c!1156700 ((_ is Cons!64964) (unfocusZipperList!1684 zl!343)))))

(declare-fun b!6356006 () Bool)

(assert (=> b!6356006 (= e!3859775 e!3859778)))

(declare-fun c!1156697 () Bool)

(assert (=> b!6356006 (= c!1156697 (isEmpty!37062 (tail!12104 (unfocusZipperList!1684 zl!343))))))

(assert (= (and d!1993997 res!2615320) b!6356003))

(assert (= (and d!1993997 c!1156699) b!6356004))

(assert (= (and d!1993997 (not c!1156699)) b!6356005))

(assert (= (and b!6356005 c!1156700) b!6355998))

(assert (= (and b!6356005 (not c!1156700)) b!6355999))

(assert (= (and d!1993997 res!2615321) b!6356002))

(assert (= (and b!6356002 c!1156698) b!6356001))

(assert (= (and b!6356002 (not c!1156698)) b!6356006))

(assert (= (and b!6356006 c!1156697) b!6355997))

(assert (= (and b!6356006 (not c!1156697)) b!6356000))

(assert (=> b!6356002 m!7161420))

(declare-fun m!7162310 () Bool)

(assert (=> b!6356002 m!7162310))

(declare-fun m!7162312 () Bool)

(assert (=> d!1993997 m!7162312))

(assert (=> d!1993997 m!7161420))

(declare-fun m!7162314 () Bool)

(assert (=> d!1993997 m!7162314))

(declare-fun m!7162316 () Bool)

(assert (=> b!6356000 m!7162316))

(declare-fun m!7162318 () Bool)

(assert (=> b!6356003 m!7162318))

(declare-fun m!7162320 () Bool)

(assert (=> b!6355998 m!7162320))

(declare-fun m!7162322 () Bool)

(assert (=> b!6356001 m!7162322))

(assert (=> b!6356006 m!7161420))

(declare-fun m!7162324 () Bool)

(assert (=> b!6356006 m!7162324))

(assert (=> b!6356006 m!7162324))

(declare-fun m!7162326 () Bool)

(assert (=> b!6356006 m!7162326))

(assert (=> b!6355997 m!7161420))

(declare-fun m!7162328 () Bool)

(assert (=> b!6355997 m!7162328))

(assert (=> b!6354930 d!1993997))

(declare-fun bs!1591929 () Bool)

(declare-fun d!1993999 () Bool)

(assert (= bs!1591929 (and d!1993999 d!1993977)))

(declare-fun lambda!349941 () Int)

(assert (=> bs!1591929 (= lambda!349941 lambda!349932)))

(declare-fun bs!1591930 () Bool)

(assert (= bs!1591930 (and d!1993999 d!1993969)))

(assert (=> bs!1591930 (= lambda!349941 lambda!349929)))

(declare-fun bs!1591931 () Bool)

(assert (= bs!1591931 (and d!1993999 d!1993887)))

(assert (=> bs!1591931 (= lambda!349941 lambda!349903)))

(declare-fun bs!1591932 () Bool)

(assert (= bs!1591932 (and d!1993999 d!1993955)))

(assert (=> bs!1591932 (= lambda!349941 lambda!349926)))

(declare-fun bs!1591933 () Bool)

(assert (= bs!1591933 (and d!1993999 d!1993997)))

(assert (=> bs!1591933 (= lambda!349941 lambda!349938)))

(declare-fun bs!1591934 () Bool)

(assert (= bs!1591934 (and d!1993999 d!1993773)))

(assert (=> bs!1591934 (= lambda!349941 lambda!349858)))

(declare-fun bs!1591935 () Bool)

(assert (= bs!1591935 (and d!1993999 d!1993829)))

(assert (=> bs!1591935 (= lambda!349941 lambda!349882)))

(declare-fun lt!2365960 () List!65088)

(assert (=> d!1993999 (forall!15437 lt!2365960 lambda!349941)))

(declare-fun e!3859783 () List!65088)

(assert (=> d!1993999 (= lt!2365960 e!3859783)))

(declare-fun c!1156703 () Bool)

(assert (=> d!1993999 (= c!1156703 ((_ is Cons!64965) zl!343))))

(assert (=> d!1993999 (= (unfocusZipperList!1684 zl!343) lt!2365960)))

(declare-fun b!6356011 () Bool)

(assert (=> b!6356011 (= e!3859783 (Cons!64964 (generalisedConcat!1860 (exprs!6147 (h!71413 zl!343))) (unfocusZipperList!1684 (t!378679 zl!343))))))

(declare-fun b!6356012 () Bool)

(assert (=> b!6356012 (= e!3859783 Nil!64964)))

(assert (= (and d!1993999 c!1156703) b!6356011))

(assert (= (and d!1993999 (not c!1156703)) b!6356012))

(declare-fun m!7162330 () Bool)

(assert (=> d!1993999 m!7162330))

(assert (=> b!6356011 m!7161426))

(declare-fun m!7162332 () Bool)

(assert (=> b!6356011 m!7162332))

(assert (=> b!6354930 d!1993999))

(declare-fun d!1994001 () Bool)

(declare-fun c!1156704 () Bool)

(assert (=> d!1994001 (= c!1156704 (isEmpty!37064 (t!378680 s!2326)))))

(declare-fun e!3859784 () Bool)

(assert (=> d!1994001 (= (matchZipper!2275 lt!2365761 (t!378680 s!2326)) e!3859784)))

(declare-fun b!6356013 () Bool)

(assert (=> b!6356013 (= e!3859784 (nullableZipper!2029 lt!2365761))))

(declare-fun b!6356014 () Bool)

(assert (=> b!6356014 (= e!3859784 (matchZipper!2275 (derivationStepZipper!2229 lt!2365761 (head!13018 (t!378680 s!2326))) (tail!12103 (t!378680 s!2326))))))

(assert (= (and d!1994001 c!1156704) b!6356013))

(assert (= (and d!1994001 (not c!1156704)) b!6356014))

(assert (=> d!1994001 m!7161604))

(declare-fun m!7162334 () Bool)

(assert (=> b!6356013 m!7162334))

(assert (=> b!6356014 m!7161608))

(assert (=> b!6356014 m!7161608))

(declare-fun m!7162336 () Bool)

(assert (=> b!6356014 m!7162336))

(assert (=> b!6356014 m!7161612))

(assert (=> b!6356014 m!7162336))

(assert (=> b!6356014 m!7161612))

(declare-fun m!7162338 () Bool)

(assert (=> b!6356014 m!7162338))

(assert (=> b!6354951 d!1994001))

(declare-fun d!1994003 () Bool)

(assert (=> d!1994003 (= (isEmpty!37062 (t!378678 (exprs!6147 (h!71413 zl!343)))) ((_ is Nil!64964) (t!378678 (exprs!6147 (h!71413 zl!343)))))))

(assert (=> b!6354950 d!1994003))

(declare-fun bs!1591936 () Bool)

(declare-fun b!6356019 () Bool)

(assert (= bs!1591936 (and b!6356019 d!1993953)))

(declare-fun lambda!349942 () Int)

(assert (=> bs!1591936 (not (= lambda!349942 lambda!349924))))

(declare-fun bs!1591937 () Bool)

(assert (= bs!1591937 (and b!6356019 d!1993863)))

(assert (=> bs!1591937 (not (= lambda!349942 lambda!349898))))

(declare-fun bs!1591938 () Bool)

(assert (= bs!1591938 (and b!6356019 d!1993973)))

(assert (=> bs!1591938 (not (= lambda!349942 lambda!349931))))

(declare-fun bs!1591939 () Bool)

(assert (= bs!1591939 (and b!6356019 b!6354957)))

(assert (=> bs!1591939 (not (= lambda!349942 lambda!349828))))

(declare-fun bs!1591940 () Bool)

(assert (= bs!1591940 (and b!6356019 b!6355884)))

(assert (=> bs!1591940 (= (and (= (reg!16592 r!7292) (reg!16592 lt!2365765)) (= r!7292 lt!2365765)) (= lambda!349942 lambda!349927))))

(declare-fun bs!1591941 () Bool)

(assert (= bs!1591941 (and b!6356019 b!6354940)))

(assert (=> bs!1591941 (not (= lambda!349942 lambda!349825))))

(declare-fun bs!1591942 () Bool)

(assert (= bs!1591942 (and b!6356019 d!1993935)))

(assert (=> bs!1591942 (not (= lambda!349942 lambda!349916))))

(assert (=> bs!1591936 (not (= lambda!349942 lambda!349925))))

(declare-fun bs!1591943 () Bool)

(assert (= bs!1591943 (and b!6356019 b!6355854)))

(assert (=> bs!1591943 (= (and (= (reg!16592 r!7292) (reg!16592 lt!2365770)) (= r!7292 lt!2365770)) (= lambda!349942 lambda!349922))))

(declare-fun bs!1591944 () Bool)

(assert (= bs!1591944 (and b!6356019 b!6355885)))

(assert (=> bs!1591944 (not (= lambda!349942 lambda!349928))))

(declare-fun bs!1591945 () Bool)

(assert (= bs!1591945 (and b!6356019 b!6355855)))

(assert (=> bs!1591945 (not (= lambda!349942 lambda!349923))))

(declare-fun bs!1591946 () Bool)

(assert (= bs!1591946 (and b!6356019 d!1993857)))

(assert (=> bs!1591946 (not (= lambda!349942 lambda!349892))))

(declare-fun bs!1591947 () Bool)

(assert (= bs!1591947 (and b!6356019 d!1993945)))

(assert (=> bs!1591947 (not (= lambda!349942 lambda!349917))))

(assert (=> bs!1591939 (not (= lambda!349942 lambda!349829))))

(assert (=> bs!1591939 (not (= lambda!349942 lambda!349830))))

(assert (=> bs!1591939 (not (= lambda!349942 lambda!349831))))

(assert (=> bs!1591937 (not (= lambda!349942 lambda!349901))))

(assert (=> bs!1591938 (not (= lambda!349942 lambda!349930))))

(assert (=> bs!1591941 (not (= lambda!349942 lambda!349826))))

(assert (=> b!6356019 true))

(assert (=> b!6356019 true))

(declare-fun bs!1591948 () Bool)

(declare-fun b!6356020 () Bool)

(assert (= bs!1591948 (and b!6356020 d!1993953)))

(declare-fun lambda!349943 () Int)

(assert (=> bs!1591948 (not (= lambda!349943 lambda!349924))))

(declare-fun bs!1591949 () Bool)

(assert (= bs!1591949 (and b!6356020 d!1993863)))

(assert (=> bs!1591949 (not (= lambda!349943 lambda!349898))))

(declare-fun bs!1591950 () Bool)

(assert (= bs!1591950 (and b!6356020 b!6354957)))

(assert (=> bs!1591950 (not (= lambda!349943 lambda!349828))))

(declare-fun bs!1591951 () Bool)

(assert (= bs!1591951 (and b!6356020 b!6355884)))

(assert (=> bs!1591951 (not (= lambda!349943 lambda!349927))))

(declare-fun bs!1591952 () Bool)

(assert (= bs!1591952 (and b!6356020 b!6354940)))

(assert (=> bs!1591952 (not (= lambda!349943 lambda!349825))))

(declare-fun bs!1591953 () Bool)

(assert (= bs!1591953 (and b!6356020 d!1993935)))

(assert (=> bs!1591953 (not (= lambda!349943 lambda!349916))))

(assert (=> bs!1591948 (= (and (= (regOne!33038 r!7292) (regTwo!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365779)) (= lambda!349943 lambda!349925))))

(declare-fun bs!1591954 () Bool)

(assert (= bs!1591954 (and b!6356020 b!6355854)))

(assert (=> bs!1591954 (not (= lambda!349943 lambda!349922))))

(declare-fun bs!1591955 () Bool)

(assert (= bs!1591955 (and b!6356020 b!6355885)))

(assert (=> bs!1591955 (= (and (= (regOne!33038 r!7292) (regOne!33038 lt!2365765)) (= (regTwo!33038 r!7292) (regTwo!33038 lt!2365765))) (= lambda!349943 lambda!349928))))

(declare-fun bs!1591956 () Bool)

(assert (= bs!1591956 (and b!6356020 b!6355855)))

(assert (=> bs!1591956 (= (and (= (regOne!33038 r!7292) (regOne!33038 lt!2365770)) (= (regTwo!33038 r!7292) (regTwo!33038 lt!2365770))) (= lambda!349943 lambda!349923))))

(declare-fun bs!1591957 () Bool)

(assert (= bs!1591957 (and b!6356020 d!1993857)))

(assert (=> bs!1591957 (not (= lambda!349943 lambda!349892))))

(declare-fun bs!1591958 () Bool)

(assert (= bs!1591958 (and b!6356020 d!1993945)))

(assert (=> bs!1591958 (not (= lambda!349943 lambda!349917))))

(declare-fun bs!1591959 () Bool)

(assert (= bs!1591959 (and b!6356020 d!1993973)))

(assert (=> bs!1591959 (= (and (= (regOne!33038 r!7292) (regOne!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365770)) (= lambda!349943 lambda!349931))))

(declare-fun bs!1591960 () Bool)

(assert (= bs!1591960 (and b!6356020 b!6356019)))

(assert (=> bs!1591960 (not (= lambda!349943 lambda!349942))))

(assert (=> bs!1591950 (= (and (= (regOne!33038 r!7292) (regOne!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365770)) (= lambda!349943 lambda!349829))))

(assert (=> bs!1591950 (not (= lambda!349943 lambda!349830))))

(assert (=> bs!1591950 (= (and (= (regOne!33038 r!7292) (regTwo!33038 (regOne!33038 r!7292))) (= (regTwo!33038 r!7292) lt!2365779)) (= lambda!349943 lambda!349831))))

(assert (=> bs!1591949 (= lambda!349943 lambda!349901)))

(assert (=> bs!1591959 (not (= lambda!349943 lambda!349930))))

(assert (=> bs!1591952 (= lambda!349943 lambda!349826)))

(assert (=> b!6356020 true))

(assert (=> b!6356020 true))

(declare-fun b!6356015 () Bool)

(declare-fun res!2615324 () Bool)

(declare-fun e!3859788 () Bool)

(assert (=> b!6356015 (=> res!2615324 e!3859788)))

(declare-fun call!542046 () Bool)

(assert (=> b!6356015 (= res!2615324 call!542046)))

(declare-fun e!3859790 () Bool)

(assert (=> b!6356015 (= e!3859790 e!3859788)))

(declare-fun b!6356016 () Bool)

(declare-fun e!3859786 () Bool)

(assert (=> b!6356016 (= e!3859786 (matchRSpec!3364 (regTwo!33039 r!7292) s!2326))))

(declare-fun b!6356017 () Bool)

(declare-fun c!1156708 () Bool)

(assert (=> b!6356017 (= c!1156708 ((_ is Union!16263) r!7292))))

(declare-fun e!3859791 () Bool)

(declare-fun e!3859787 () Bool)

(assert (=> b!6356017 (= e!3859791 e!3859787)))

(declare-fun bm!542041 () Bool)

(declare-fun call!542047 () Bool)

(declare-fun c!1156707 () Bool)

(assert (=> bm!542041 (= call!542047 (Exists!3333 (ite c!1156707 lambda!349942 lambda!349943)))))

(declare-fun bm!542042 () Bool)

(assert (=> bm!542042 (= call!542046 (isEmpty!37064 s!2326))))

(declare-fun b!6356018 () Bool)

(declare-fun c!1156705 () Bool)

(assert (=> b!6356018 (= c!1156705 ((_ is ElementMatch!16263) r!7292))))

(declare-fun e!3859785 () Bool)

(assert (=> b!6356018 (= e!3859785 e!3859791)))

(assert (=> b!6356019 (= e!3859788 call!542047)))

(assert (=> b!6356020 (= e!3859790 call!542047)))

(declare-fun d!1994005 () Bool)

(declare-fun c!1156706 () Bool)

(assert (=> d!1994005 (= c!1156706 ((_ is EmptyExpr!16263) r!7292))))

(declare-fun e!3859789 () Bool)

(assert (=> d!1994005 (= (matchRSpec!3364 r!7292 s!2326) e!3859789)))

(declare-fun b!6356021 () Bool)

(assert (=> b!6356021 (= e!3859787 e!3859786)))

(declare-fun res!2615322 () Bool)

(assert (=> b!6356021 (= res!2615322 (matchRSpec!3364 (regOne!33039 r!7292) s!2326))))

(assert (=> b!6356021 (=> res!2615322 e!3859786)))

(declare-fun b!6356022 () Bool)

(assert (=> b!6356022 (= e!3859789 e!3859785)))

(declare-fun res!2615323 () Bool)

(assert (=> b!6356022 (= res!2615323 (not ((_ is EmptyLang!16263) r!7292)))))

(assert (=> b!6356022 (=> (not res!2615323) (not e!3859785))))

(declare-fun b!6356023 () Bool)

(assert (=> b!6356023 (= e!3859791 (= s!2326 (Cons!64966 (c!1156378 r!7292) Nil!64966)))))

(declare-fun b!6356024 () Bool)

(assert (=> b!6356024 (= e!3859787 e!3859790)))

(assert (=> b!6356024 (= c!1156707 ((_ is Star!16263) r!7292))))

(declare-fun b!6356025 () Bool)

(assert (=> b!6356025 (= e!3859789 call!542046)))

(assert (= (and d!1994005 c!1156706) b!6356025))

(assert (= (and d!1994005 (not c!1156706)) b!6356022))

(assert (= (and b!6356022 res!2615323) b!6356018))

(assert (= (and b!6356018 c!1156705) b!6356023))

(assert (= (and b!6356018 (not c!1156705)) b!6356017))

(assert (= (and b!6356017 c!1156708) b!6356021))

(assert (= (and b!6356017 (not c!1156708)) b!6356024))

(assert (= (and b!6356021 (not res!2615322)) b!6356016))

(assert (= (and b!6356024 c!1156707) b!6356015))

(assert (= (and b!6356024 (not c!1156707)) b!6356020))

(assert (= (and b!6356015 (not res!2615324)) b!6356019))

(assert (= (or b!6356019 b!6356020) bm!542041))

(assert (= (or b!6356025 b!6356015) bm!542042))

(declare-fun m!7162340 () Bool)

(assert (=> b!6356016 m!7162340))

(declare-fun m!7162342 () Bool)

(assert (=> bm!542041 m!7162342))

(assert (=> bm!542042 m!7161568))

(declare-fun m!7162344 () Bool)

(assert (=> b!6356021 m!7162344))

(assert (=> b!6354929 d!1994005))

(declare-fun d!1994007 () Bool)

(declare-fun e!3859794 () Bool)

(assert (=> d!1994007 e!3859794))

(declare-fun c!1156709 () Bool)

(assert (=> d!1994007 (= c!1156709 ((_ is EmptyExpr!16263) r!7292))))

(declare-fun lt!2365961 () Bool)

(declare-fun e!3859797 () Bool)

(assert (=> d!1994007 (= lt!2365961 e!3859797)))

(declare-fun c!1156710 () Bool)

(assert (=> d!1994007 (= c!1156710 (isEmpty!37064 s!2326))))

(assert (=> d!1994007 (validRegex!7999 r!7292)))

(assert (=> d!1994007 (= (matchR!8446 r!7292 s!2326) lt!2365961)))

(declare-fun bm!542043 () Bool)

(declare-fun call!542048 () Bool)

(assert (=> bm!542043 (= call!542048 (isEmpty!37064 s!2326))))

(declare-fun b!6356026 () Bool)

(assert (=> b!6356026 (= e!3859797 (nullable!6256 r!7292))))

(declare-fun b!6356027 () Bool)

(declare-fun res!2615332 () Bool)

(declare-fun e!3859793 () Bool)

(assert (=> b!6356027 (=> res!2615332 e!3859793)))

(assert (=> b!6356027 (= res!2615332 (not ((_ is ElementMatch!16263) r!7292)))))

(declare-fun e!3859798 () Bool)

(assert (=> b!6356027 (= e!3859798 e!3859793)))

(declare-fun b!6356028 () Bool)

(declare-fun e!3859792 () Bool)

(assert (=> b!6356028 (= e!3859792 (= (head!13018 s!2326) (c!1156378 r!7292)))))

(declare-fun b!6356029 () Bool)

(assert (=> b!6356029 (= e!3859798 (not lt!2365961))))

(declare-fun b!6356030 () Bool)

(declare-fun e!3859795 () Bool)

(assert (=> b!6356030 (= e!3859795 (not (= (head!13018 s!2326) (c!1156378 r!7292))))))

(declare-fun b!6356031 () Bool)

(declare-fun res!2615326 () Bool)

(assert (=> b!6356031 (=> (not res!2615326) (not e!3859792))))

(assert (=> b!6356031 (= res!2615326 (not call!542048))))

(declare-fun b!6356032 () Bool)

(declare-fun res!2615329 () Bool)

(assert (=> b!6356032 (=> res!2615329 e!3859795)))

(assert (=> b!6356032 (= res!2615329 (not (isEmpty!37064 (tail!12103 s!2326))))))

(declare-fun b!6356033 () Bool)

(declare-fun e!3859796 () Bool)

(assert (=> b!6356033 (= e!3859796 e!3859795)))

(declare-fun res!2615331 () Bool)

(assert (=> b!6356033 (=> res!2615331 e!3859795)))

(assert (=> b!6356033 (= res!2615331 call!542048)))

(declare-fun b!6356034 () Bool)

(declare-fun res!2615328 () Bool)

(assert (=> b!6356034 (=> (not res!2615328) (not e!3859792))))

(assert (=> b!6356034 (= res!2615328 (isEmpty!37064 (tail!12103 s!2326)))))

(declare-fun b!6356035 () Bool)

(declare-fun res!2615330 () Bool)

(assert (=> b!6356035 (=> res!2615330 e!3859793)))

(assert (=> b!6356035 (= res!2615330 e!3859792)))

(declare-fun res!2615325 () Bool)

(assert (=> b!6356035 (=> (not res!2615325) (not e!3859792))))

(assert (=> b!6356035 (= res!2615325 lt!2365961)))

(declare-fun b!6356036 () Bool)

(assert (=> b!6356036 (= e!3859793 e!3859796)))

(declare-fun res!2615327 () Bool)

(assert (=> b!6356036 (=> (not res!2615327) (not e!3859796))))

(assert (=> b!6356036 (= res!2615327 (not lt!2365961))))

(declare-fun b!6356037 () Bool)

(assert (=> b!6356037 (= e!3859794 e!3859798)))

(declare-fun c!1156711 () Bool)

(assert (=> b!6356037 (= c!1156711 ((_ is EmptyLang!16263) r!7292))))

(declare-fun b!6356038 () Bool)

(assert (=> b!6356038 (= e!3859794 (= lt!2365961 call!542048))))

(declare-fun b!6356039 () Bool)

(assert (=> b!6356039 (= e!3859797 (matchR!8446 (derivativeStep!4968 r!7292 (head!13018 s!2326)) (tail!12103 s!2326)))))

(assert (= (and d!1994007 c!1156710) b!6356026))

(assert (= (and d!1994007 (not c!1156710)) b!6356039))

(assert (= (and d!1994007 c!1156709) b!6356038))

(assert (= (and d!1994007 (not c!1156709)) b!6356037))

(assert (= (and b!6356037 c!1156711) b!6356029))

(assert (= (and b!6356037 (not c!1156711)) b!6356027))

(assert (= (and b!6356027 (not res!2615332)) b!6356035))

(assert (= (and b!6356035 res!2615325) b!6356031))

(assert (= (and b!6356031 res!2615326) b!6356034))

(assert (= (and b!6356034 res!2615328) b!6356028))

(assert (= (and b!6356035 (not res!2615330)) b!6356036))

(assert (= (and b!6356036 res!2615327) b!6356033))

(assert (= (and b!6356033 (not res!2615331)) b!6356032))

(assert (= (and b!6356032 (not res!2615329)) b!6356030))

(assert (= (or b!6356038 b!6356031 b!6356033) bm!542043))

(assert (=> b!6356030 m!7161556))

(assert (=> b!6356039 m!7161556))

(assert (=> b!6356039 m!7161556))

(declare-fun m!7162346 () Bool)

(assert (=> b!6356039 m!7162346))

(assert (=> b!6356039 m!7161560))

(assert (=> b!6356039 m!7162346))

(assert (=> b!6356039 m!7161560))

(declare-fun m!7162348 () Bool)

(assert (=> b!6356039 m!7162348))

(assert (=> b!6356028 m!7161556))

(assert (=> b!6356032 m!7161560))

(assert (=> b!6356032 m!7161560))

(assert (=> b!6356032 m!7161564))

(assert (=> b!6356034 m!7161560))

(assert (=> b!6356034 m!7161560))

(assert (=> b!6356034 m!7161564))

(declare-fun m!7162350 () Bool)

(assert (=> b!6356026 m!7162350))

(assert (=> d!1994007 m!7161568))

(assert (=> d!1994007 m!7161388))

(assert (=> bm!542043 m!7161568))

(assert (=> b!6354929 d!1994007))

(declare-fun d!1994009 () Bool)

(assert (=> d!1994009 (= (matchR!8446 r!7292 s!2326) (matchRSpec!3364 r!7292 s!2326))))

(declare-fun lt!2365962 () Unit!158383)

(assert (=> d!1994009 (= lt!2365962 (choose!47191 r!7292 s!2326))))

(assert (=> d!1994009 (validRegex!7999 r!7292)))

(assert (=> d!1994009 (= (mainMatchTheorem!3364 r!7292 s!2326) lt!2365962)))

(declare-fun bs!1591961 () Bool)

(assert (= bs!1591961 d!1994009))

(assert (=> bs!1591961 m!7161392))

(assert (=> bs!1591961 m!7161390))

(declare-fun m!7162352 () Bool)

(assert (=> bs!1591961 m!7162352))

(assert (=> bs!1591961 m!7161388))

(assert (=> b!6354929 d!1994009))

(declare-fun d!1994011 () Bool)

(declare-fun e!3859801 () Bool)

(assert (=> d!1994011 (= (matchZipper!2275 ((_ map or) lt!2365760 lt!2365761) (t!378680 s!2326)) e!3859801)))

(declare-fun res!2615335 () Bool)

(assert (=> d!1994011 (=> res!2615335 e!3859801)))

(assert (=> d!1994011 (= res!2615335 (matchZipper!2275 lt!2365760 (t!378680 s!2326)))))

(declare-fun lt!2365965 () Unit!158383)

(declare-fun choose!47193 ((InoxSet Context!11294) (InoxSet Context!11294) List!65090) Unit!158383)

(assert (=> d!1994011 (= lt!2365965 (choose!47193 lt!2365760 lt!2365761 (t!378680 s!2326)))))

(assert (=> d!1994011 (= (lemmaZipperConcatMatchesSameAsBothZippers!1094 lt!2365760 lt!2365761 (t!378680 s!2326)) lt!2365965)))

(declare-fun b!6356042 () Bool)

(assert (=> b!6356042 (= e!3859801 (matchZipper!2275 lt!2365761 (t!378680 s!2326)))))

(assert (= (and d!1994011 (not res!2615335)) b!6356042))

(assert (=> d!1994011 m!7161414))

(assert (=> d!1994011 m!7161386))

(declare-fun m!7162354 () Bool)

(assert (=> d!1994011 m!7162354))

(assert (=> b!6356042 m!7161418))

(assert (=> b!6354949 d!1994011))

(assert (=> b!6354949 d!1993767))

(declare-fun d!1994013 () Bool)

(declare-fun c!1156712 () Bool)

(assert (=> d!1994013 (= c!1156712 (isEmpty!37064 (t!378680 s!2326)))))

(declare-fun e!3859802 () Bool)

(assert (=> d!1994013 (= (matchZipper!2275 ((_ map or) lt!2365760 lt!2365761) (t!378680 s!2326)) e!3859802)))

(declare-fun b!6356043 () Bool)

(assert (=> b!6356043 (= e!3859802 (nullableZipper!2029 ((_ map or) lt!2365760 lt!2365761)))))

(declare-fun b!6356044 () Bool)

(assert (=> b!6356044 (= e!3859802 (matchZipper!2275 (derivationStepZipper!2229 ((_ map or) lt!2365760 lt!2365761) (head!13018 (t!378680 s!2326))) (tail!12103 (t!378680 s!2326))))))

(assert (= (and d!1994013 c!1156712) b!6356043))

(assert (= (and d!1994013 (not c!1156712)) b!6356044))

(assert (=> d!1994013 m!7161604))

(declare-fun m!7162356 () Bool)

(assert (=> b!6356043 m!7162356))

(assert (=> b!6356044 m!7161608))

(assert (=> b!6356044 m!7161608))

(declare-fun m!7162358 () Bool)

(assert (=> b!6356044 m!7162358))

(assert (=> b!6356044 m!7161612))

(assert (=> b!6356044 m!7162358))

(assert (=> b!6356044 m!7161612))

(declare-fun m!7162360 () Bool)

(assert (=> b!6356044 m!7162360))

(assert (=> b!6354949 d!1994013))

(declare-fun d!1994015 () Bool)

(declare-fun e!3859805 () Bool)

(assert (=> d!1994015 e!3859805))

(declare-fun res!2615338 () Bool)

(assert (=> d!1994015 (=> (not res!2615338) (not e!3859805))))

(declare-fun lt!2365968 () List!65089)

(declare-fun noDuplicate!2093 (List!65089) Bool)

(assert (=> d!1994015 (= res!2615338 (noDuplicate!2093 lt!2365968))))

(declare-fun choose!47194 ((InoxSet Context!11294)) List!65089)

(assert (=> d!1994015 (= lt!2365968 (choose!47194 z!1189))))

(assert (=> d!1994015 (= (toList!10047 z!1189) lt!2365968)))

(declare-fun b!6356047 () Bool)

(declare-fun content!12264 (List!65089) (InoxSet Context!11294))

(assert (=> b!6356047 (= e!3859805 (= (content!12264 lt!2365968) z!1189))))

(assert (= (and d!1994015 res!2615338) b!6356047))

(declare-fun m!7162362 () Bool)

(assert (=> d!1994015 m!7162362))

(declare-fun m!7162364 () Bool)

(assert (=> d!1994015 m!7162364))

(declare-fun m!7162366 () Bool)

(assert (=> b!6356047 m!7162366))

(assert (=> b!6354928 d!1994015))

(declare-fun b!6356052 () Bool)

(declare-fun e!3859808 () Bool)

(declare-fun tp!1770593 () Bool)

(declare-fun tp!1770594 () Bool)

(assert (=> b!6356052 (= e!3859808 (and tp!1770593 tp!1770594))))

(assert (=> b!6354937 (= tp!1770529 e!3859808)))

(assert (= (and b!6354937 ((_ is Cons!64964) (exprs!6147 setElem!43282))) b!6356052))

(declare-fun b!6356053 () Bool)

(declare-fun e!3859809 () Bool)

(declare-fun tp!1770595 () Bool)

(declare-fun tp!1770596 () Bool)

(assert (=> b!6356053 (= e!3859809 (and tp!1770595 tp!1770596))))

(assert (=> b!6354952 (= tp!1770527 e!3859809)))

(assert (= (and b!6354952 ((_ is Cons!64964) (exprs!6147 (h!71413 zl!343)))) b!6356053))

(declare-fun condSetEmpty!43288 () Bool)

(assert (=> setNonEmpty!43282 (= condSetEmpty!43288 (= setRest!43282 ((as const (Array Context!11294 Bool)) false)))))

(declare-fun setRes!43288 () Bool)

(assert (=> setNonEmpty!43282 (= tp!1770524 setRes!43288)))

(declare-fun setIsEmpty!43288 () Bool)

(assert (=> setIsEmpty!43288 setRes!43288))

(declare-fun tp!1770602 () Bool)

(declare-fun setNonEmpty!43288 () Bool)

(declare-fun setElem!43288 () Context!11294)

(declare-fun e!3859812 () Bool)

(assert (=> setNonEmpty!43288 (= setRes!43288 (and tp!1770602 (inv!83904 setElem!43288) e!3859812))))

(declare-fun setRest!43288 () (InoxSet Context!11294))

(assert (=> setNonEmpty!43288 (= setRest!43282 ((_ map or) (store ((as const (Array Context!11294 Bool)) false) setElem!43288 true) setRest!43288))))

(declare-fun b!6356058 () Bool)

(declare-fun tp!1770601 () Bool)

(assert (=> b!6356058 (= e!3859812 tp!1770601)))

(assert (= (and setNonEmpty!43282 condSetEmpty!43288) setIsEmpty!43288))

(assert (= (and setNonEmpty!43282 (not condSetEmpty!43288)) setNonEmpty!43288))

(assert (= setNonEmpty!43288 b!6356058))

(declare-fun m!7162368 () Bool)

(assert (=> setNonEmpty!43288 m!7162368))

(declare-fun b!6356063 () Bool)

(declare-fun e!3859815 () Bool)

(declare-fun tp!1770605 () Bool)

(assert (=> b!6356063 (= e!3859815 (and tp_is_empty!41779 tp!1770605))))

(assert (=> b!6354956 (= tp!1770521 e!3859815)))

(assert (= (and b!6354956 ((_ is Cons!64966) (t!378680 s!2326))) b!6356063))

(declare-fun b!6356071 () Bool)

(declare-fun e!3859821 () Bool)

(declare-fun tp!1770610 () Bool)

(assert (=> b!6356071 (= e!3859821 tp!1770610)))

(declare-fun b!6356070 () Bool)

(declare-fun e!3859820 () Bool)

(declare-fun tp!1770611 () Bool)

(assert (=> b!6356070 (= e!3859820 (and (inv!83904 (h!71413 (t!378679 zl!343))) e!3859821 tp!1770611))))

(assert (=> b!6354920 (= tp!1770528 e!3859820)))

(assert (= b!6356070 b!6356071))

(assert (= (and b!6354920 ((_ is Cons!64965) (t!378679 zl!343))) b!6356070))

(declare-fun m!7162370 () Bool)

(assert (=> b!6356070 m!7162370))

(declare-fun b!6356084 () Bool)

(declare-fun e!3859824 () Bool)

(declare-fun tp!1770624 () Bool)

(assert (=> b!6356084 (= e!3859824 tp!1770624)))

(declare-fun b!6356083 () Bool)

(declare-fun tp!1770626 () Bool)

(declare-fun tp!1770623 () Bool)

(assert (=> b!6356083 (= e!3859824 (and tp!1770626 tp!1770623))))

(declare-fun b!6356082 () Bool)

(assert (=> b!6356082 (= e!3859824 tp_is_empty!41779)))

(assert (=> b!6354955 (= tp!1770522 e!3859824)))

(declare-fun b!6356085 () Bool)

(declare-fun tp!1770625 () Bool)

(declare-fun tp!1770622 () Bool)

(assert (=> b!6356085 (= e!3859824 (and tp!1770625 tp!1770622))))

(assert (= (and b!6354955 ((_ is ElementMatch!16263) (reg!16592 r!7292))) b!6356082))

(assert (= (and b!6354955 ((_ is Concat!25108) (reg!16592 r!7292))) b!6356083))

(assert (= (and b!6354955 ((_ is Star!16263) (reg!16592 r!7292))) b!6356084))

(assert (= (and b!6354955 ((_ is Union!16263) (reg!16592 r!7292))) b!6356085))

(declare-fun b!6356088 () Bool)

(declare-fun e!3859825 () Bool)

(declare-fun tp!1770629 () Bool)

(assert (=> b!6356088 (= e!3859825 tp!1770629)))

(declare-fun b!6356087 () Bool)

(declare-fun tp!1770631 () Bool)

(declare-fun tp!1770628 () Bool)

(assert (=> b!6356087 (= e!3859825 (and tp!1770631 tp!1770628))))

(declare-fun b!6356086 () Bool)

(assert (=> b!6356086 (= e!3859825 tp_is_empty!41779)))

(assert (=> b!6354933 (= tp!1770530 e!3859825)))

(declare-fun b!6356089 () Bool)

(declare-fun tp!1770630 () Bool)

(declare-fun tp!1770627 () Bool)

(assert (=> b!6356089 (= e!3859825 (and tp!1770630 tp!1770627))))

(assert (= (and b!6354933 ((_ is ElementMatch!16263) (regOne!33038 r!7292))) b!6356086))

(assert (= (and b!6354933 ((_ is Concat!25108) (regOne!33038 r!7292))) b!6356087))

(assert (= (and b!6354933 ((_ is Star!16263) (regOne!33038 r!7292))) b!6356088))

(assert (= (and b!6354933 ((_ is Union!16263) (regOne!33038 r!7292))) b!6356089))

(declare-fun b!6356092 () Bool)

(declare-fun e!3859826 () Bool)

(declare-fun tp!1770634 () Bool)

(assert (=> b!6356092 (= e!3859826 tp!1770634)))

(declare-fun b!6356091 () Bool)

(declare-fun tp!1770636 () Bool)

(declare-fun tp!1770633 () Bool)

(assert (=> b!6356091 (= e!3859826 (and tp!1770636 tp!1770633))))

(declare-fun b!6356090 () Bool)

(assert (=> b!6356090 (= e!3859826 tp_is_empty!41779)))

(assert (=> b!6354933 (= tp!1770523 e!3859826)))

(declare-fun b!6356093 () Bool)

(declare-fun tp!1770635 () Bool)

(declare-fun tp!1770632 () Bool)

(assert (=> b!6356093 (= e!3859826 (and tp!1770635 tp!1770632))))

(assert (= (and b!6354933 ((_ is ElementMatch!16263) (regTwo!33038 r!7292))) b!6356090))

(assert (= (and b!6354933 ((_ is Concat!25108) (regTwo!33038 r!7292))) b!6356091))

(assert (= (and b!6354933 ((_ is Star!16263) (regTwo!33038 r!7292))) b!6356092))

(assert (= (and b!6354933 ((_ is Union!16263) (regTwo!33038 r!7292))) b!6356093))

(declare-fun b!6356096 () Bool)

(declare-fun e!3859827 () Bool)

(declare-fun tp!1770639 () Bool)

(assert (=> b!6356096 (= e!3859827 tp!1770639)))

(declare-fun b!6356095 () Bool)

(declare-fun tp!1770641 () Bool)

(declare-fun tp!1770638 () Bool)

(assert (=> b!6356095 (= e!3859827 (and tp!1770641 tp!1770638))))

(declare-fun b!6356094 () Bool)

(assert (=> b!6356094 (= e!3859827 tp_is_empty!41779)))

(assert (=> b!6354938 (= tp!1770526 e!3859827)))

(declare-fun b!6356097 () Bool)

(declare-fun tp!1770640 () Bool)

(declare-fun tp!1770637 () Bool)

(assert (=> b!6356097 (= e!3859827 (and tp!1770640 tp!1770637))))

(assert (= (and b!6354938 ((_ is ElementMatch!16263) (regOne!33039 r!7292))) b!6356094))

(assert (= (and b!6354938 ((_ is Concat!25108) (regOne!33039 r!7292))) b!6356095))

(assert (= (and b!6354938 ((_ is Star!16263) (regOne!33039 r!7292))) b!6356096))

(assert (= (and b!6354938 ((_ is Union!16263) (regOne!33039 r!7292))) b!6356097))

(declare-fun b!6356100 () Bool)

(declare-fun e!3859828 () Bool)

(declare-fun tp!1770644 () Bool)

(assert (=> b!6356100 (= e!3859828 tp!1770644)))

(declare-fun b!6356099 () Bool)

(declare-fun tp!1770646 () Bool)

(declare-fun tp!1770643 () Bool)

(assert (=> b!6356099 (= e!3859828 (and tp!1770646 tp!1770643))))

(declare-fun b!6356098 () Bool)

(assert (=> b!6356098 (= e!3859828 tp_is_empty!41779)))

(assert (=> b!6354938 (= tp!1770525 e!3859828)))

(declare-fun b!6356101 () Bool)

(declare-fun tp!1770645 () Bool)

(declare-fun tp!1770642 () Bool)

(assert (=> b!6356101 (= e!3859828 (and tp!1770645 tp!1770642))))

(assert (= (and b!6354938 ((_ is ElementMatch!16263) (regTwo!33039 r!7292))) b!6356098))

(assert (= (and b!6354938 ((_ is Concat!25108) (regTwo!33039 r!7292))) b!6356099))

(assert (= (and b!6354938 ((_ is Star!16263) (regTwo!33039 r!7292))) b!6356100))

(assert (= (and b!6354938 ((_ is Union!16263) (regTwo!33039 r!7292))) b!6356101))

(declare-fun b_lambda!241665 () Bool)

(assert (= b_lambda!241657 (or b!6354959 b_lambda!241665)))

(declare-fun bs!1591962 () Bool)

(declare-fun d!1994017 () Bool)

(assert (= bs!1591962 (and d!1994017 b!6354959)))

(assert (=> bs!1591962 (= (dynLambda!25761 lambda!349827 (h!71413 zl!343)) (derivationStepZipperUp!1437 (h!71413 zl!343) (h!71414 s!2326)))))

(assert (=> bs!1591962 m!7161358))

(assert (=> d!1993913 d!1994017))

(declare-fun b_lambda!241667 () Bool)

(assert (= b_lambda!241663 (or b!6354959 b_lambda!241667)))

(declare-fun bs!1591963 () Bool)

(declare-fun d!1994019 () Bool)

(assert (= bs!1591963 (and d!1994019 b!6354959)))

(assert (=> bs!1591963 (= (dynLambda!25761 lambda!349827 lt!2365783) (derivationStepZipperUp!1437 lt!2365783 (h!71414 s!2326)))))

(assert (=> bs!1591963 m!7161350))

(assert (=> d!1993985 d!1994019))

(check-sat (not b!6355364) (not b!6355562) (not b!6356028) (not bm!542038) (not b!6355976) (not b!6355881) (not b!6356039) (not b!6356089) (not b!6355865) (not b!6355910) (not b!6355961) (not b!6356096) (not b!6355675) (not b!6355907) (not b!6355909) (not b!6355952) (not b!6355300) (not b!6355358) (not d!1993767) (not d!1993737) (not bm!541967) (not b!6355277) (not b!6355478) (not d!1993977) (not d!1993943) (not d!1993997) (not b!6356095) (not b!6355301) (not d!1993933) (not b!6356000) (not b!6355856) (not b!6355862) (not b!6355227) (not b!6355873) (not b!6355808) (not b!6355920) (not b!6356053) (not b!6356084) (not bm!542023) (not b!6355931) (not d!1993823) (not d!1993819) (not d!1993993) (not bm!542030) (not d!1993975) (not b!6356021) (not d!1993937) (not bm!542040) (not d!1993911) (not b!6356058) (not b!6355800) (not b!6355918) (not b!6355235) (not d!1993857) (not bm!541966) (not b!6355927) (not b!6356043) (not b!6356071) (not b!6355893) (not b!6355886) (not b!6355929) (not d!1994001) (not b!6355803) (not bm!542037) (not b!6356099) (not b!6355864) (not b!6356034) (not b!6356013) (not b!6355240) (not bm!542041) (not b!6356070) (not bm!542011) (not d!1993959) (not b!6355921) (not b!6355474) (not d!1993831) (not b!6356026) (not b!6355863) (not d!1993969) (not b!6355719) (not bm!542042) (not b!6355469) (not b!6355949) (not b!6355710) (not b!6355560) (not b!6356100) (not d!1994009) (not d!1993949) (not b!6355359) (not b!6355720) (not b!6355806) (not d!1993913) (not b!6355895) (not b!6355874) (not b!6356047) (not b!6355798) (not d!1993965) tp_is_empty!41779 (not d!1993941) (not b!6356030) (not b!6355871) (not b!6356063) (not b!6355936) (not b!6355928) (not b!6356032) (not bm!542014) (not b!6355360) (not b!6355566) (not b!6355892) (not b!6356101) (not bs!1591962) (not b!6355472) (not b!6355870) (not b!6356091) (not b!6355908) (not bm!541982) (not d!1993987) (not b!6355471) (not b!6355231) (not b!6355971) (not b!6355869) (not d!1993945) (not d!1993953) (not b!6355790) (not d!1993915) (not b!6356001) (not b!6355817) (not b!6355445) (not d!1993951) (not b!6356052) (not bm!542020) (not bm!542031) (not d!1993961) (not b!6355233) (not b!6355866) (not bm!542032) (not b!6356003) (not bm!541964) (not bm!542016) (not bm!542034) (not d!1994015) (not b!6355229) (not b!6356087) (not b!6356097) (not b!6355911) (not d!1993985) (not b!6355962) (not bm!542006) (not b!6355447) (not d!1993769) (not b!6355299) (not b!6356014) (not bm!541956) (not d!1993935) (not d!1993939) (not d!1993931) (not d!1993855) (not b!6355311) (not b!6356093) (not b!6356016) (not b!6355709) (not b!6355485) (not d!1993853) (not bm!542022) (not b!6356006) (not b!6356002) (not b!6355906) (not d!1993967) (not b!6355963) (not d!1993863) (not d!1993887) (not b!6355997) (not b!6356011) (not b!6355875) (not b!6355926) (not b_lambda!241665) (not setNonEmpty!43288) (not b!6355922) (not b!6356085) (not b!6355948) (not b!6355563) (not b_lambda!241667) (not b!6356088) (not b!6355897) (not bm!542028) (not bm!542033) (not b!6355812) (not bm!541963) (not b!6355891) (not b!6356092) (not b!6355899) (not b!6356044) (not b!6355872) (not d!1993955) (not bm!542015) (not d!1993991) (not d!1993829) (not d!1993973) (not b!6355914) (not d!1993761) (not b!6355361) (not b!6355745) (not b!6355357) (not b!6355810) (not bm!542043) (not b!6355877) (not b!6355969) (not b!6355925) (not b!6355362) (not b!6355967) (not b!6355919) (not b!6355930) (not d!1993885) (not b!6355965) (not d!1993999) (not d!1994013) (not b!6355912) (not d!1993963) (not b!6356083) (not b!6355559) (not b!6355476) (not d!1994007) (not b!6355561) (not bs!1591963) (not b!6355802) (not b!6355901) (not bm!542017) (not b!6355933) (not b!6355302) (not d!1993981) (not bm!542009) (not b!6355792) (not b!6355714) (not b!6356042) (not d!1994011) (not b!6355480) (not b!6355715) (not bm!542036) (not d!1993971) (not b!6355851) (not d!1993773) (not bm!542029) (not b!6355998) (not b!6355804))
(check-sat)
