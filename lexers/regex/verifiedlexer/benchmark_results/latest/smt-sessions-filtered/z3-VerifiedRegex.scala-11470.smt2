; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!622962 () Bool)

(assert start!622962)

(declare-fun b!6266040 () Bool)

(assert (=> b!6266040 true))

(assert (=> b!6266040 true))

(declare-fun lambda!343068 () Int)

(declare-fun lambda!343067 () Int)

(assert (=> b!6266040 (not (= lambda!343068 lambda!343067))))

(assert (=> b!6266040 true))

(assert (=> b!6266040 true))

(declare-fun b!6266061 () Bool)

(assert (=> b!6266061 true))

(declare-fun setIsEmpty!42608 () Bool)

(declare-fun setRes!42608 () Bool)

(assert (=> setIsEmpty!42608 setRes!42608))

(declare-fun b!6266034 () Bool)

(declare-fun res!2585068 () Bool)

(declare-fun e!3811268 () Bool)

(assert (=> b!6266034 (=> res!2585068 e!3811268)))

(declare-datatypes ((C!32644 0))(
  ( (C!32645 (val!26024 Int)) )
))
(declare-datatypes ((Regex!16187 0))(
  ( (ElementMatch!16187 (c!1135024 C!32644)) (Concat!25032 (regOne!32886 Regex!16187) (regTwo!32886 Regex!16187)) (EmptyExpr!16187) (Star!16187 (reg!16516 Regex!16187)) (EmptyLang!16187) (Union!16187 (regOne!32887 Regex!16187) (regTwo!32887 Regex!16187)) )
))
(declare-datatypes ((List!64860 0))(
  ( (Nil!64736) (Cons!64736 (h!71184 Regex!16187) (t!378414 List!64860)) )
))
(declare-datatypes ((Context!11142 0))(
  ( (Context!11143 (exprs!6071 List!64860)) )
))
(declare-fun lt!2351107 () Context!11142)

(declare-datatypes ((List!64861 0))(
  ( (Nil!64737) (Cons!64737 (h!71185 Context!11142) (t!378415 List!64861)) )
))
(declare-fun zl!343 () List!64861)

(declare-fun contextDepthTotal!310 (Context!11142) Int)

(assert (=> b!6266034 (= res!2585068 (>= (contextDepthTotal!310 lt!2351107) (contextDepthTotal!310 (h!71185 zl!343))))))

(declare-fun b!6266035 () Bool)

(declare-fun e!3811282 () Bool)

(declare-fun e!3811269 () Bool)

(assert (=> b!6266035 (= e!3811282 e!3811269)))

(declare-fun res!2585059 () Bool)

(assert (=> b!6266035 (=> res!2585059 e!3811269)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2351090 () (InoxSet Context!11142))

(declare-fun lt!2351097 () (InoxSet Context!11142))

(assert (=> b!6266035 (= res!2585059 (not (= lt!2351090 lt!2351097)))))

(declare-fun lt!2351102 () (InoxSet Context!11142))

(declare-fun lt!2351110 () (InoxSet Context!11142))

(assert (=> b!6266035 (= lt!2351097 ((_ map or) lt!2351102 lt!2351110))))

(declare-fun r!7292 () Regex!16187)

(declare-datatypes ((List!64862 0))(
  ( (Nil!64738) (Cons!64738 (h!71186 C!32644) (t!378416 List!64862)) )
))
(declare-fun s!2326 () List!64862)

(declare-fun lt!2351103 () Context!11142)

(declare-fun derivationStepZipperDown!1435 (Regex!16187 Context!11142 C!32644) (InoxSet Context!11142))

(assert (=> b!6266035 (= lt!2351110 (derivationStepZipperDown!1435 (regTwo!32886 (regOne!32886 r!7292)) lt!2351103 (h!71186 s!2326)))))

(declare-fun lt!2351109 () Context!11142)

(assert (=> b!6266035 (= lt!2351102 (derivationStepZipperDown!1435 (regOne!32886 (regOne!32886 r!7292)) lt!2351109 (h!71186 s!2326)))))

(declare-fun lt!2351079 () List!64860)

(assert (=> b!6266035 (= lt!2351109 (Context!11143 lt!2351079))))

(assert (=> b!6266035 (= lt!2351079 (Cons!64736 (regTwo!32886 (regOne!32886 r!7292)) (t!378414 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6266036 () Bool)

(declare-fun res!2585074 () Bool)

(declare-fun e!3811285 () Bool)

(assert (=> b!6266036 (=> (not res!2585074) (not e!3811285))))

(declare-fun unfocusZipper!1929 (List!64861) Regex!16187)

(assert (=> b!6266036 (= res!2585074 (= r!7292 (unfocusZipper!1929 zl!343)))))

(declare-fun b!6266037 () Bool)

(declare-fun res!2585072 () Bool)

(assert (=> b!6266037 (=> (not res!2585072) (not e!3811285))))

(declare-fun z!1189 () (InoxSet Context!11142))

(declare-fun toList!9971 ((InoxSet Context!11142)) List!64861)

(assert (=> b!6266037 (= res!2585072 (= (toList!9971 z!1189) zl!343))))

(declare-fun b!6266038 () Bool)

(declare-fun e!3811274 () Bool)

(declare-fun tp!1748067 () Bool)

(assert (=> b!6266038 (= e!3811274 tp!1748067)))

(declare-fun b!6266039 () Bool)

(declare-fun res!2585049 () Bool)

(assert (=> b!6266039 (=> res!2585049 e!3811282)))

(declare-fun nullable!6180 (Regex!16187) Bool)

(assert (=> b!6266039 (= res!2585049 (not (nullable!6180 (regOne!32886 (regOne!32886 r!7292)))))))

(declare-fun e!3811266 () Bool)

(declare-fun e!3811273 () Bool)

(assert (=> b!6266040 (= e!3811266 e!3811273)))

(declare-fun res!2585069 () Bool)

(assert (=> b!6266040 (=> res!2585069 e!3811273)))

(declare-fun lt!2351075 () Bool)

(declare-fun lt!2351088 () Bool)

(get-info :version)

(assert (=> b!6266040 (= res!2585069 (or (not (= lt!2351088 lt!2351075)) ((_ is Nil!64738) s!2326)))))

(declare-fun Exists!3257 (Int) Bool)

(assert (=> b!6266040 (= (Exists!3257 lambda!343067) (Exists!3257 lambda!343068))))

(declare-datatypes ((Unit!158079 0))(
  ( (Unit!158080) )
))
(declare-fun lt!2351085 () Unit!158079)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1794 (Regex!16187 Regex!16187 List!64862) Unit!158079)

(assert (=> b!6266040 (= lt!2351085 (lemmaExistCutMatchRandMatchRSpecEquivalent!1794 (regOne!32886 r!7292) (regTwo!32886 r!7292) s!2326))))

(assert (=> b!6266040 (= lt!2351075 (Exists!3257 lambda!343067))))

(declare-datatypes ((tuple2!66332 0))(
  ( (tuple2!66333 (_1!36469 List!64862) (_2!36469 List!64862)) )
))
(declare-datatypes ((Option!16078 0))(
  ( (None!16077) (Some!16077 (v!52232 tuple2!66332)) )
))
(declare-fun isDefined!12781 (Option!16078) Bool)

(declare-fun findConcatSeparation!2492 (Regex!16187 Regex!16187 List!64862 List!64862 List!64862) Option!16078)

(assert (=> b!6266040 (= lt!2351075 (isDefined!12781 (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) Nil!64738 s!2326 s!2326)))))

(declare-fun lt!2351080 () Unit!158079)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2256 (Regex!16187 Regex!16187 List!64862) Unit!158079)

(assert (=> b!6266040 (= lt!2351080 (lemmaFindConcatSeparationEquivalentToExists!2256 (regOne!32886 r!7292) (regTwo!32886 r!7292) s!2326))))

(declare-fun b!6266041 () Bool)

(declare-fun e!3811267 () Bool)

(declare-fun tp_is_empty!41627 () Bool)

(assert (=> b!6266041 (= e!3811267 tp_is_empty!41627)))

(declare-fun b!6266043 () Bool)

(declare-fun res!2585058 () Bool)

(declare-fun e!3811276 () Bool)

(assert (=> b!6266043 (=> res!2585058 e!3811276)))

(declare-fun lt!2351106 () List!64861)

(declare-fun zipperDepth!312 (List!64861) Int)

(assert (=> b!6266043 (= res!2585058 (> (zipperDepth!312 lt!2351106) (zipperDepth!312 zl!343)))))

(declare-fun b!6266044 () Bool)

(declare-fun res!2585067 () Bool)

(assert (=> b!6266044 (=> res!2585067 e!3811273)))

(declare-fun isEmpty!36766 (List!64860) Bool)

(assert (=> b!6266044 (= res!2585067 (isEmpty!36766 (t!378414 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6266045 () Bool)

(declare-fun tp!1748072 () Bool)

(assert (=> b!6266045 (= e!3811267 tp!1748072)))

(declare-fun b!6266046 () Bool)

(declare-fun res!2585066 () Bool)

(assert (=> b!6266046 (=> res!2585066 e!3811268)))

(assert (=> b!6266046 (= res!2585066 (not (= (exprs!6071 (h!71185 zl!343)) (Cons!64736 (Concat!25032 (regOne!32886 (regOne!32886 r!7292)) (regTwo!32886 (regOne!32886 r!7292))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun b!6266047 () Bool)

(declare-fun e!3811277 () Bool)

(declare-fun matchZipper!2199 ((InoxSet Context!11142) List!64862) Bool)

(assert (=> b!6266047 (= e!3811277 (not (matchZipper!2199 lt!2351110 (t!378416 s!2326))))))

(declare-fun b!6266048 () Bool)

(declare-fun res!2585057 () Bool)

(assert (=> b!6266048 (=> res!2585057 e!3811266)))

(assert (=> b!6266048 (= res!2585057 (or ((_ is EmptyExpr!16187) r!7292) ((_ is EmptyLang!16187) r!7292) ((_ is ElementMatch!16187) r!7292) ((_ is Union!16187) r!7292) (not ((_ is Concat!25032) r!7292))))))

(declare-fun b!6266049 () Bool)

(declare-fun e!3811280 () Bool)

(assert (=> b!6266049 (= e!3811280 e!3811268)))

(declare-fun res!2585052 () Bool)

(assert (=> b!6266049 (=> res!2585052 e!3811268)))

(declare-fun e!3811278 () Bool)

(assert (=> b!6266049 (= res!2585052 e!3811278)))

(declare-fun res!2585050 () Bool)

(assert (=> b!6266049 (=> (not res!2585050) (not e!3811278))))

(declare-fun lt!2351099 () (InoxSet Context!11142))

(declare-fun lt!2351087 () Bool)

(assert (=> b!6266049 (= res!2585050 (not (= lt!2351087 (matchZipper!2199 lt!2351099 (t!378416 s!2326)))))))

(declare-fun lt!2351083 () (InoxSet Context!11142))

(declare-fun e!3811281 () Bool)

(assert (=> b!6266049 (= (matchZipper!2199 lt!2351083 (t!378416 s!2326)) e!3811281)))

(declare-fun res!2585070 () Bool)

(assert (=> b!6266049 (=> res!2585070 e!3811281)))

(declare-fun lt!2351082 () Bool)

(assert (=> b!6266049 (= res!2585070 lt!2351082)))

(declare-fun lt!2351101 () Unit!158079)

(declare-fun lt!2351108 () (InoxSet Context!11142))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1018 ((InoxSet Context!11142) (InoxSet Context!11142) List!64862) Unit!158079)

(assert (=> b!6266049 (= lt!2351101 (lemmaZipperConcatMatchesSameAsBothZippers!1018 lt!2351102 lt!2351108 (t!378416 s!2326)))))

(declare-fun lambda!343069 () Int)

(declare-fun lt!2351105 () (InoxSet Context!11142))

(declare-fun flatMap!1692 ((InoxSet Context!11142) Int) (InoxSet Context!11142))

(declare-fun derivationStepZipperUp!1361 (Context!11142 C!32644) (InoxSet Context!11142))

(assert (=> b!6266049 (= (flatMap!1692 lt!2351105 lambda!343069) (derivationStepZipperUp!1361 lt!2351109 (h!71186 s!2326)))))

(declare-fun lt!2351086 () Unit!158079)

(declare-fun lemmaFlatMapOnSingletonSet!1218 ((InoxSet Context!11142) Context!11142 Int) Unit!158079)

(assert (=> b!6266049 (= lt!2351086 (lemmaFlatMapOnSingletonSet!1218 lt!2351105 lt!2351109 lambda!343069))))

(declare-fun b!6266050 () Bool)

(declare-fun e!3811284 () Bool)

(declare-fun tp!1748074 () Bool)

(assert (=> b!6266050 (= e!3811284 (and tp_is_empty!41627 tp!1748074))))

(declare-fun b!6266051 () Bool)

(assert (=> b!6266051 (= e!3811285 (not e!3811266))))

(declare-fun res!2585055 () Bool)

(assert (=> b!6266051 (=> res!2585055 e!3811266)))

(assert (=> b!6266051 (= res!2585055 (not ((_ is Cons!64737) zl!343)))))

(declare-fun matchRSpec!3288 (Regex!16187 List!64862) Bool)

(assert (=> b!6266051 (= lt!2351088 (matchRSpec!3288 r!7292 s!2326))))

(declare-fun matchR!8370 (Regex!16187 List!64862) Bool)

(assert (=> b!6266051 (= lt!2351088 (matchR!8370 r!7292 s!2326))))

(declare-fun lt!2351089 () Unit!158079)

(declare-fun mainMatchTheorem!3288 (Regex!16187 List!64862) Unit!158079)

(assert (=> b!6266051 (= lt!2351089 (mainMatchTheorem!3288 r!7292 s!2326))))

(declare-fun b!6266042 () Bool)

(declare-fun tp!1748068 () Bool)

(declare-fun tp!1748073 () Bool)

(assert (=> b!6266042 (= e!3811267 (and tp!1748068 tp!1748073))))

(declare-fun res!2585060 () Bool)

(assert (=> start!622962 (=> (not res!2585060) (not e!3811285))))

(declare-fun validRegex!7923 (Regex!16187) Bool)

(assert (=> start!622962 (= res!2585060 (validRegex!7923 r!7292))))

(assert (=> start!622962 e!3811285))

(assert (=> start!622962 e!3811267))

(declare-fun condSetEmpty!42608 () Bool)

(assert (=> start!622962 (= condSetEmpty!42608 (= z!1189 ((as const (Array Context!11142 Bool)) false)))))

(assert (=> start!622962 setRes!42608))

(declare-fun e!3811283 () Bool)

(assert (=> start!622962 e!3811283))

(assert (=> start!622962 e!3811284))

(declare-fun b!6266052 () Bool)

(declare-fun e!3811275 () Unit!158079)

(declare-fun Unit!158081 () Unit!158079)

(assert (=> b!6266052 (= e!3811275 Unit!158081)))

(declare-fun lt!2351081 () Unit!158079)

(declare-fun lt!2351084 () (InoxSet Context!11142))

(assert (=> b!6266052 (= lt!2351081 (lemmaZipperConcatMatchesSameAsBothZippers!1018 lt!2351090 lt!2351084 (t!378416 s!2326)))))

(declare-fun res!2585053 () Bool)

(assert (=> b!6266052 (= res!2585053 (matchZipper!2199 lt!2351090 (t!378416 s!2326)))))

(declare-fun e!3811286 () Bool)

(assert (=> b!6266052 (=> res!2585053 e!3811286)))

(assert (=> b!6266052 (= (matchZipper!2199 ((_ map or) lt!2351090 lt!2351084) (t!378416 s!2326)) e!3811286)))

(declare-fun b!6266053 () Bool)

(declare-fun e!3811270 () Bool)

(assert (=> b!6266053 (= e!3811269 e!3811270)))

(declare-fun res!2585056 () Bool)

(assert (=> b!6266053 (=> res!2585056 e!3811270)))

(assert (=> b!6266053 (= res!2585056 e!3811277)))

(declare-fun res!2585065 () Bool)

(assert (=> b!6266053 (=> (not res!2585065) (not e!3811277))))

(assert (=> b!6266053 (= res!2585065 (not (= lt!2351087 lt!2351082)))))

(assert (=> b!6266053 (= lt!2351087 (matchZipper!2199 lt!2351090 (t!378416 s!2326)))))

(declare-fun e!3811271 () Bool)

(assert (=> b!6266053 (= (matchZipper!2199 lt!2351097 (t!378416 s!2326)) e!3811271)))

(declare-fun res!2585051 () Bool)

(assert (=> b!6266053 (=> res!2585051 e!3811271)))

(assert (=> b!6266053 (= res!2585051 lt!2351082)))

(assert (=> b!6266053 (= lt!2351082 (matchZipper!2199 lt!2351102 (t!378416 s!2326)))))

(declare-fun lt!2351104 () Unit!158079)

(assert (=> b!6266053 (= lt!2351104 (lemmaZipperConcatMatchesSameAsBothZippers!1018 lt!2351102 lt!2351110 (t!378416 s!2326)))))

(declare-fun b!6266054 () Bool)

(declare-fun e!3811279 () Bool)

(declare-fun tp!1748065 () Bool)

(assert (=> b!6266054 (= e!3811279 tp!1748065)))

(declare-fun b!6266055 () Bool)

(declare-fun res!2585047 () Bool)

(declare-fun e!3811272 () Bool)

(assert (=> b!6266055 (=> res!2585047 e!3811272)))

(declare-fun lt!2351094 () List!64861)

(assert (=> b!6266055 (= res!2585047 (not (= (toList!9971 lt!2351105) lt!2351094)))))

(declare-fun b!6266056 () Bool)

(declare-fun res!2585048 () Bool)

(assert (=> b!6266056 (=> res!2585048 e!3811266)))

(assert (=> b!6266056 (= res!2585048 (not ((_ is Cons!64736) (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6266057 () Bool)

(declare-fun res!2585063 () Bool)

(assert (=> b!6266057 (=> res!2585063 e!3811266)))

(declare-fun generalisedConcat!1784 (List!64860) Regex!16187)

(assert (=> b!6266057 (= res!2585063 (not (= r!7292 (generalisedConcat!1784 (exprs!6071 (h!71185 zl!343))))))))

(declare-fun b!6266058 () Bool)

(assert (=> b!6266058 (= e!3811270 e!3811280)))

(declare-fun res!2585061 () Bool)

(assert (=> b!6266058 (=> res!2585061 e!3811280)))

(assert (=> b!6266058 (= res!2585061 (not (= lt!2351099 lt!2351083)))))

(assert (=> b!6266058 (= lt!2351083 ((_ map or) lt!2351102 lt!2351108))))

(assert (=> b!6266058 (= lt!2351108 (derivationStepZipperUp!1361 lt!2351109 (h!71186 s!2326)))))

(declare-fun lt!2351077 () (InoxSet Context!11142))

(assert (=> b!6266058 (= (flatMap!1692 lt!2351077 lambda!343069) (derivationStepZipperUp!1361 lt!2351107 (h!71186 s!2326)))))

(declare-fun lt!2351093 () Unit!158079)

(assert (=> b!6266058 (= lt!2351093 (lemmaFlatMapOnSingletonSet!1218 lt!2351077 lt!2351107 lambda!343069))))

(declare-fun lt!2351076 () (InoxSet Context!11142))

(assert (=> b!6266058 (= lt!2351076 (derivationStepZipperUp!1361 lt!2351107 (h!71186 s!2326)))))

(declare-fun derivationStepZipper!2153 ((InoxSet Context!11142) C!32644) (InoxSet Context!11142))

(assert (=> b!6266058 (= lt!2351099 (derivationStepZipper!2153 lt!2351077 (h!71186 s!2326)))))

(assert (=> b!6266058 (= lt!2351105 (store ((as const (Array Context!11142 Bool)) false) lt!2351109 true))))

(assert (=> b!6266058 (= lt!2351077 (store ((as const (Array Context!11142 Bool)) false) lt!2351107 true))))

(declare-fun lt!2351096 () List!64860)

(assert (=> b!6266058 (= lt!2351107 (Context!11143 lt!2351096))))

(assert (=> b!6266058 (= lt!2351096 (Cons!64736 (regOne!32886 (regOne!32886 r!7292)) lt!2351079))))

(declare-fun b!6266059 () Bool)

(declare-fun tp!1748066 () Bool)

(declare-fun tp!1748070 () Bool)

(assert (=> b!6266059 (= e!3811267 (and tp!1748066 tp!1748070))))

(declare-fun setNonEmpty!42608 () Bool)

(declare-fun tp!1748071 () Bool)

(declare-fun setElem!42608 () Context!11142)

(declare-fun inv!83714 (Context!11142) Bool)

(assert (=> setNonEmpty!42608 (= setRes!42608 (and tp!1748071 (inv!83714 setElem!42608) e!3811274))))

(declare-fun setRest!42608 () (InoxSet Context!11142))

(assert (=> setNonEmpty!42608 (= z!1189 ((_ map or) (store ((as const (Array Context!11142 Bool)) false) setElem!42608 true) setRest!42608))))

(declare-fun b!6266060 () Bool)

(assert (=> b!6266060 (= e!3811278 (not (matchZipper!2199 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) (t!378416 s!2326))))))

(assert (=> b!6266061 (= e!3811273 e!3811282)))

(declare-fun res!2585071 () Bool)

(assert (=> b!6266061 (=> res!2585071 e!3811282)))

(assert (=> b!6266061 (= res!2585071 (or (and ((_ is ElementMatch!16187) (regOne!32886 r!7292)) (= (c!1135024 (regOne!32886 r!7292)) (h!71186 s!2326))) ((_ is Union!16187) (regOne!32886 r!7292)) (not ((_ is Concat!25032) (regOne!32886 r!7292)))))))

(declare-fun lt!2351091 () Unit!158079)

(assert (=> b!6266061 (= lt!2351091 e!3811275)))

(declare-fun c!1135023 () Bool)

(assert (=> b!6266061 (= c!1135023 (nullable!6180 (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(assert (=> b!6266061 (= (flatMap!1692 z!1189 lambda!343069) (derivationStepZipperUp!1361 (h!71185 zl!343) (h!71186 s!2326)))))

(declare-fun lt!2351078 () Unit!158079)

(assert (=> b!6266061 (= lt!2351078 (lemmaFlatMapOnSingletonSet!1218 z!1189 (h!71185 zl!343) lambda!343069))))

(assert (=> b!6266061 (= lt!2351084 (derivationStepZipperUp!1361 lt!2351103 (h!71186 s!2326)))))

(assert (=> b!6266061 (= lt!2351090 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (h!71185 zl!343))) lt!2351103 (h!71186 s!2326)))))

(assert (=> b!6266061 (= lt!2351103 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun lt!2351092 () (InoxSet Context!11142))

(assert (=> b!6266061 (= lt!2351092 (derivationStepZipperUp!1361 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))) (h!71186 s!2326)))))

(declare-fun b!6266062 () Bool)

(declare-fun res!2585073 () Bool)

(assert (=> b!6266062 (=> res!2585073 e!3811266)))

(declare-fun isEmpty!36767 (List!64861) Bool)

(assert (=> b!6266062 (= res!2585073 (not (isEmpty!36767 (t!378415 zl!343))))))

(declare-fun tp!1748069 () Bool)

(declare-fun b!6266063 () Bool)

(assert (=> b!6266063 (= e!3811283 (and (inv!83714 (h!71185 zl!343)) e!3811279 tp!1748069))))

(declare-fun b!6266064 () Bool)

(assert (=> b!6266064 (= e!3811276 e!3811272)))

(declare-fun res!2585054 () Bool)

(assert (=> b!6266064 (=> res!2585054 e!3811272)))

(declare-fun lt!2351095 () Regex!16187)

(assert (=> b!6266064 (= res!2585054 (not (validRegex!7923 lt!2351095)))))

(assert (=> b!6266064 (= lt!2351095 (generalisedConcat!1784 lt!2351079))))

(assert (=> b!6266064 (= lt!2351094 (Cons!64737 lt!2351109 Nil!64737))))

(declare-fun lt!2351098 () Regex!16187)

(assert (=> b!6266064 (= (matchR!8370 lt!2351098 s!2326) (matchZipper!2199 lt!2351077 s!2326))))

(declare-fun lt!2351100 () Unit!158079)

(declare-fun theoremZipperRegexEquiv!757 ((InoxSet Context!11142) List!64861 Regex!16187 List!64862) Unit!158079)

(assert (=> b!6266064 (= lt!2351100 (theoremZipperRegexEquiv!757 lt!2351077 lt!2351106 lt!2351098 s!2326))))

(assert (=> b!6266064 (= lt!2351098 (generalisedConcat!1784 lt!2351096))))

(declare-fun b!6266065 () Bool)

(declare-fun Unit!158082 () Unit!158079)

(assert (=> b!6266065 (= e!3811275 Unit!158082)))

(declare-fun b!6266066 () Bool)

(declare-fun res!2585064 () Bool)

(assert (=> b!6266066 (=> res!2585064 e!3811266)))

(declare-fun generalisedUnion!2031 (List!64860) Regex!16187)

(declare-fun unfocusZipperList!1608 (List!64861) List!64860)

(assert (=> b!6266066 (= res!2585064 (not (= r!7292 (generalisedUnion!2031 (unfocusZipperList!1608 zl!343)))))))

(declare-fun b!6266067 () Bool)

(assert (=> b!6266067 (= e!3811272 (= lt!2351095 (unfocusZipper!1929 lt!2351094)))))

(declare-fun b!6266068 () Bool)

(assert (=> b!6266068 (= e!3811268 e!3811276)))

(declare-fun res!2585062 () Bool)

(assert (=> b!6266068 (=> res!2585062 e!3811276)))

(declare-fun zipperDepthTotal!340 (List!64861) Int)

(assert (=> b!6266068 (= res!2585062 (>= (zipperDepthTotal!340 lt!2351106) (zipperDepthTotal!340 zl!343)))))

(assert (=> b!6266068 (= lt!2351106 (Cons!64737 lt!2351107 Nil!64737))))

(declare-fun b!6266069 () Bool)

(assert (=> b!6266069 (= e!3811281 (matchZipper!2199 lt!2351108 (t!378416 s!2326)))))

(declare-fun b!6266070 () Bool)

(assert (=> b!6266070 (= e!3811286 (matchZipper!2199 lt!2351084 (t!378416 s!2326)))))

(declare-fun b!6266071 () Bool)

(assert (=> b!6266071 (= e!3811271 (matchZipper!2199 lt!2351110 (t!378416 s!2326)))))

(assert (= (and start!622962 res!2585060) b!6266037))

(assert (= (and b!6266037 res!2585072) b!6266036))

(assert (= (and b!6266036 res!2585074) b!6266051))

(assert (= (and b!6266051 (not res!2585055)) b!6266062))

(assert (= (and b!6266062 (not res!2585073)) b!6266057))

(assert (= (and b!6266057 (not res!2585063)) b!6266056))

(assert (= (and b!6266056 (not res!2585048)) b!6266066))

(assert (= (and b!6266066 (not res!2585064)) b!6266048))

(assert (= (and b!6266048 (not res!2585057)) b!6266040))

(assert (= (and b!6266040 (not res!2585069)) b!6266044))

(assert (= (and b!6266044 (not res!2585067)) b!6266061))

(assert (= (and b!6266061 c!1135023) b!6266052))

(assert (= (and b!6266061 (not c!1135023)) b!6266065))

(assert (= (and b!6266052 (not res!2585053)) b!6266070))

(assert (= (and b!6266061 (not res!2585071)) b!6266039))

(assert (= (and b!6266039 (not res!2585049)) b!6266035))

(assert (= (and b!6266035 (not res!2585059)) b!6266053))

(assert (= (and b!6266053 (not res!2585051)) b!6266071))

(assert (= (and b!6266053 res!2585065) b!6266047))

(assert (= (and b!6266053 (not res!2585056)) b!6266058))

(assert (= (and b!6266058 (not res!2585061)) b!6266049))

(assert (= (and b!6266049 (not res!2585070)) b!6266069))

(assert (= (and b!6266049 res!2585050) b!6266060))

(assert (= (and b!6266049 (not res!2585052)) b!6266046))

(assert (= (and b!6266046 (not res!2585066)) b!6266034))

(assert (= (and b!6266034 (not res!2585068)) b!6266068))

(assert (= (and b!6266068 (not res!2585062)) b!6266043))

(assert (= (and b!6266043 (not res!2585058)) b!6266064))

(assert (= (and b!6266064 (not res!2585054)) b!6266055))

(assert (= (and b!6266055 (not res!2585047)) b!6266067))

(assert (= (and start!622962 ((_ is ElementMatch!16187) r!7292)) b!6266041))

(assert (= (and start!622962 ((_ is Concat!25032) r!7292)) b!6266042))

(assert (= (and start!622962 ((_ is Star!16187) r!7292)) b!6266045))

(assert (= (and start!622962 ((_ is Union!16187) r!7292)) b!6266059))

(assert (= (and start!622962 condSetEmpty!42608) setIsEmpty!42608))

(assert (= (and start!622962 (not condSetEmpty!42608)) setNonEmpty!42608))

(assert (= setNonEmpty!42608 b!6266038))

(assert (= b!6266063 b!6266054))

(assert (= (and start!622962 ((_ is Cons!64737) zl!343)) b!6266063))

(assert (= (and start!622962 ((_ is Cons!64738) s!2326)) b!6266050))

(declare-fun m!7087928 () Bool)

(assert (=> b!6266053 m!7087928))

(declare-fun m!7087930 () Bool)

(assert (=> b!6266053 m!7087930))

(declare-fun m!7087932 () Bool)

(assert (=> b!6266053 m!7087932))

(declare-fun m!7087934 () Bool)

(assert (=> b!6266053 m!7087934))

(declare-fun m!7087936 () Bool)

(assert (=> b!6266067 m!7087936))

(declare-fun m!7087938 () Bool)

(assert (=> setNonEmpty!42608 m!7087938))

(declare-fun m!7087940 () Bool)

(assert (=> b!6266061 m!7087940))

(declare-fun m!7087942 () Bool)

(assert (=> b!6266061 m!7087942))

(declare-fun m!7087944 () Bool)

(assert (=> b!6266061 m!7087944))

(declare-fun m!7087946 () Bool)

(assert (=> b!6266061 m!7087946))

(declare-fun m!7087948 () Bool)

(assert (=> b!6266061 m!7087948))

(declare-fun m!7087950 () Bool)

(assert (=> b!6266061 m!7087950))

(declare-fun m!7087952 () Bool)

(assert (=> b!6266061 m!7087952))

(declare-fun m!7087954 () Bool)

(assert (=> b!6266035 m!7087954))

(declare-fun m!7087956 () Bool)

(assert (=> b!6266035 m!7087956))

(declare-fun m!7087958 () Bool)

(assert (=> b!6266039 m!7087958))

(declare-fun m!7087960 () Bool)

(assert (=> b!6266064 m!7087960))

(declare-fun m!7087962 () Bool)

(assert (=> b!6266064 m!7087962))

(declare-fun m!7087964 () Bool)

(assert (=> b!6266064 m!7087964))

(declare-fun m!7087966 () Bool)

(assert (=> b!6266064 m!7087966))

(declare-fun m!7087968 () Bool)

(assert (=> b!6266064 m!7087968))

(declare-fun m!7087970 () Bool)

(assert (=> b!6266064 m!7087970))

(declare-fun m!7087972 () Bool)

(assert (=> start!622962 m!7087972))

(declare-fun m!7087974 () Bool)

(assert (=> b!6266062 m!7087974))

(declare-fun m!7087976 () Bool)

(assert (=> b!6266057 m!7087976))

(declare-fun m!7087978 () Bool)

(assert (=> b!6266043 m!7087978))

(declare-fun m!7087980 () Bool)

(assert (=> b!6266043 m!7087980))

(declare-fun m!7087982 () Bool)

(assert (=> b!6266066 m!7087982))

(assert (=> b!6266066 m!7087982))

(declare-fun m!7087984 () Bool)

(assert (=> b!6266066 m!7087984))

(declare-fun m!7087986 () Bool)

(assert (=> b!6266037 m!7087986))

(declare-fun m!7087988 () Bool)

(assert (=> b!6266049 m!7087988))

(declare-fun m!7087990 () Bool)

(assert (=> b!6266049 m!7087990))

(declare-fun m!7087992 () Bool)

(assert (=> b!6266049 m!7087992))

(declare-fun m!7087994 () Bool)

(assert (=> b!6266049 m!7087994))

(declare-fun m!7087996 () Bool)

(assert (=> b!6266049 m!7087996))

(declare-fun m!7087998 () Bool)

(assert (=> b!6266049 m!7087998))

(declare-fun m!7088000 () Bool)

(assert (=> b!6266063 m!7088000))

(declare-fun m!7088002 () Bool)

(assert (=> b!6266047 m!7088002))

(declare-fun m!7088004 () Bool)

(assert (=> b!6266051 m!7088004))

(declare-fun m!7088006 () Bool)

(assert (=> b!6266051 m!7088006))

(declare-fun m!7088008 () Bool)

(assert (=> b!6266051 m!7088008))

(declare-fun m!7088010 () Bool)

(assert (=> b!6266070 m!7088010))

(declare-fun m!7088012 () Bool)

(assert (=> b!6266058 m!7088012))

(declare-fun m!7088014 () Bool)

(assert (=> b!6266058 m!7088014))

(assert (=> b!6266058 m!7087990))

(declare-fun m!7088016 () Bool)

(assert (=> b!6266058 m!7088016))

(declare-fun m!7088018 () Bool)

(assert (=> b!6266058 m!7088018))

(declare-fun m!7088020 () Bool)

(assert (=> b!6266058 m!7088020))

(declare-fun m!7088022 () Bool)

(assert (=> b!6266058 m!7088022))

(declare-fun m!7088024 () Bool)

(assert (=> b!6266055 m!7088024))

(declare-fun m!7088026 () Bool)

(assert (=> b!6266052 m!7088026))

(assert (=> b!6266052 m!7087928))

(declare-fun m!7088028 () Bool)

(assert (=> b!6266052 m!7088028))

(declare-fun m!7088030 () Bool)

(assert (=> b!6266060 m!7088030))

(assert (=> b!6266060 m!7088030))

(declare-fun m!7088032 () Bool)

(assert (=> b!6266060 m!7088032))

(declare-fun m!7088034 () Bool)

(assert (=> b!6266068 m!7088034))

(declare-fun m!7088036 () Bool)

(assert (=> b!6266068 m!7088036))

(declare-fun m!7088038 () Bool)

(assert (=> b!6266069 m!7088038))

(declare-fun m!7088040 () Bool)

(assert (=> b!6266036 m!7088040))

(declare-fun m!7088042 () Bool)

(assert (=> b!6266040 m!7088042))

(declare-fun m!7088044 () Bool)

(assert (=> b!6266040 m!7088044))

(declare-fun m!7088046 () Bool)

(assert (=> b!6266040 m!7088046))

(assert (=> b!6266040 m!7088046))

(declare-fun m!7088048 () Bool)

(assert (=> b!6266040 m!7088048))

(declare-fun m!7088050 () Bool)

(assert (=> b!6266040 m!7088050))

(assert (=> b!6266040 m!7088042))

(declare-fun m!7088052 () Bool)

(assert (=> b!6266040 m!7088052))

(declare-fun m!7088054 () Bool)

(assert (=> b!6266044 m!7088054))

(declare-fun m!7088056 () Bool)

(assert (=> b!6266034 m!7088056))

(declare-fun m!7088058 () Bool)

(assert (=> b!6266034 m!7088058))

(assert (=> b!6266071 m!7088002))

(check-sat (not b!6266040) (not b!6266036) tp_is_empty!41627 (not b!6266064) (not b!6266060) (not setNonEmpty!42608) (not b!6266061) (not b!6266035) (not b!6266053) (not b!6266071) (not b!6266068) (not b!6266034) (not b!6266058) (not b!6266038) (not b!6266066) (not b!6266047) (not b!6266062) (not b!6266057) (not b!6266051) (not b!6266052) (not b!6266042) (not b!6266050) (not b!6266037) (not b!6266070) (not b!6266055) (not b!6266045) (not b!6266069) (not b!6266063) (not b!6266044) (not b!6266049) (not b!6266067) (not b!6266039) (not start!622962) (not b!6266043) (not b!6266054) (not b!6266059))
(check-sat)
(get-model)

(declare-fun d!1966493 () Bool)

(declare-fun choose!46489 ((InoxSet Context!11142) Int) (InoxSet Context!11142))

(assert (=> d!1966493 (= (flatMap!1692 z!1189 lambda!343069) (choose!46489 z!1189 lambda!343069))))

(declare-fun bs!1564034 () Bool)

(assert (= bs!1564034 d!1966493))

(declare-fun m!7088456 () Bool)

(assert (=> bs!1564034 m!7088456))

(assert (=> b!6266061 d!1966493))

(declare-fun d!1966495 () Bool)

(declare-fun dynLambda!25589 (Int Context!11142) (InoxSet Context!11142))

(assert (=> d!1966495 (= (flatMap!1692 z!1189 lambda!343069) (dynLambda!25589 lambda!343069 (h!71185 zl!343)))))

(declare-fun lt!2351191 () Unit!158079)

(declare-fun choose!46490 ((InoxSet Context!11142) Context!11142 Int) Unit!158079)

(assert (=> d!1966495 (= lt!2351191 (choose!46490 z!1189 (h!71185 zl!343) lambda!343069))))

(assert (=> d!1966495 (= z!1189 (store ((as const (Array Context!11142 Bool)) false) (h!71185 zl!343) true))))

(assert (=> d!1966495 (= (lemmaFlatMapOnSingletonSet!1218 z!1189 (h!71185 zl!343) lambda!343069) lt!2351191)))

(declare-fun b_lambda!238585 () Bool)

(assert (=> (not b_lambda!238585) (not d!1966495)))

(declare-fun bs!1564035 () Bool)

(assert (= bs!1564035 d!1966495))

(assert (=> bs!1564035 m!7087944))

(declare-fun m!7088458 () Bool)

(assert (=> bs!1564035 m!7088458))

(declare-fun m!7088460 () Bool)

(assert (=> bs!1564035 m!7088460))

(declare-fun m!7088462 () Bool)

(assert (=> bs!1564035 m!7088462))

(assert (=> b!6266061 d!1966495))

(declare-fun c!1135182 () Bool)

(declare-fun bm!529659 () Bool)

(declare-fun call!529667 () (InoxSet Context!11142))

(declare-fun call!529669 () List!64860)

(assert (=> bm!529659 (= call!529667 (derivationStepZipperDown!1435 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))) (ite c!1135182 lt!2351103 (Context!11143 call!529669)) (h!71186 s!2326)))))

(declare-fun call!529668 () (InoxSet Context!11142))

(declare-fun call!529664 () List!64860)

(declare-fun c!1135185 () Bool)

(declare-fun bm!529660 () Bool)

(declare-fun c!1135183 () Bool)

(assert (=> bm!529660 (= call!529668 (derivationStepZipperDown!1435 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343))))))) (ite (or c!1135182 c!1135185) lt!2351103 (Context!11143 call!529664)) (h!71186 s!2326)))))

(declare-fun b!6266571 () Bool)

(declare-fun c!1135184 () Bool)

(assert (=> b!6266571 (= c!1135184 ((_ is Star!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun e!3811564 () (InoxSet Context!11142))

(declare-fun e!3811565 () (InoxSet Context!11142))

(assert (=> b!6266571 (= e!3811564 e!3811565)))

(declare-fun bm!529661 () Bool)

(declare-fun call!529665 () (InoxSet Context!11142))

(declare-fun call!529666 () (InoxSet Context!11142))

(assert (=> bm!529661 (= call!529665 call!529666)))

(declare-fun d!1966497 () Bool)

(declare-fun c!1135181 () Bool)

(assert (=> d!1966497 (= c!1135181 (and ((_ is ElementMatch!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))) (= (c!1135024 (h!71184 (exprs!6071 (h!71185 zl!343)))) (h!71186 s!2326))))))

(declare-fun e!3811567 () (InoxSet Context!11142))

(assert (=> d!1966497 (= (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (h!71185 zl!343))) lt!2351103 (h!71186 s!2326)) e!3811567)))

(declare-fun b!6266572 () Bool)

(assert (=> b!6266572 (= e!3811567 (store ((as const (Array Context!11142 Bool)) false) lt!2351103 true))))

(declare-fun b!6266573 () Bool)

(declare-fun e!3811569 () (InoxSet Context!11142))

(assert (=> b!6266573 (= e!3811569 ((_ map or) call!529668 call!529667))))

(declare-fun b!6266574 () Bool)

(assert (=> b!6266574 (= e!3811565 call!529665)))

(declare-fun b!6266575 () Bool)

(assert (=> b!6266575 (= e!3811567 e!3811569)))

(assert (=> b!6266575 (= c!1135182 ((_ is Union!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun bm!529662 () Bool)

(assert (=> bm!529662 (= call!529666 call!529668)))

(declare-fun b!6266576 () Bool)

(declare-fun e!3811566 () (InoxSet Context!11142))

(assert (=> b!6266576 (= e!3811566 ((_ map or) call!529667 call!529666))))

(declare-fun b!6266577 () Bool)

(assert (=> b!6266577 (= e!3811565 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6266578 () Bool)

(declare-fun e!3811568 () Bool)

(assert (=> b!6266578 (= e!3811568 (nullable!6180 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))))))

(declare-fun b!6266579 () Bool)

(assert (=> b!6266579 (= e!3811564 call!529665)))

(declare-fun bm!529663 () Bool)

(assert (=> bm!529663 (= call!529664 call!529669)))

(declare-fun b!6266580 () Bool)

(assert (=> b!6266580 (= e!3811566 e!3811564)))

(assert (=> b!6266580 (= c!1135183 ((_ is Concat!25032) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6266581 () Bool)

(assert (=> b!6266581 (= c!1135185 e!3811568)))

(declare-fun res!2585216 () Bool)

(assert (=> b!6266581 (=> (not res!2585216) (not e!3811568))))

(assert (=> b!6266581 (= res!2585216 ((_ is Concat!25032) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(assert (=> b!6266581 (= e!3811569 e!3811566)))

(declare-fun bm!529664 () Bool)

(declare-fun $colon$colon!2052 (List!64860 Regex!16187) List!64860)

(assert (=> bm!529664 (= call!529669 ($colon$colon!2052 (exprs!6071 lt!2351103) (ite (or c!1135185 c!1135183) (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (h!71184 (exprs!6071 (h!71185 zl!343))))))))

(assert (= (and d!1966497 c!1135181) b!6266572))

(assert (= (and d!1966497 (not c!1135181)) b!6266575))

(assert (= (and b!6266575 c!1135182) b!6266573))

(assert (= (and b!6266575 (not c!1135182)) b!6266581))

(assert (= (and b!6266581 res!2585216) b!6266578))

(assert (= (and b!6266581 c!1135185) b!6266576))

(assert (= (and b!6266581 (not c!1135185)) b!6266580))

(assert (= (and b!6266580 c!1135183) b!6266579))

(assert (= (and b!6266580 (not c!1135183)) b!6266571))

(assert (= (and b!6266571 c!1135184) b!6266574))

(assert (= (and b!6266571 (not c!1135184)) b!6266577))

(assert (= (or b!6266579 b!6266574) bm!529663))

(assert (= (or b!6266579 b!6266574) bm!529661))

(assert (= (or b!6266576 bm!529663) bm!529664))

(assert (= (or b!6266576 bm!529661) bm!529662))

(assert (= (or b!6266573 b!6266576) bm!529659))

(assert (= (or b!6266573 bm!529662) bm!529660))

(declare-fun m!7088464 () Bool)

(assert (=> bm!529659 m!7088464))

(declare-fun m!7088466 () Bool)

(assert (=> bm!529664 m!7088466))

(declare-fun m!7088468 () Bool)

(assert (=> b!6266578 m!7088468))

(declare-fun m!7088470 () Bool)

(assert (=> b!6266572 m!7088470))

(declare-fun m!7088472 () Bool)

(assert (=> bm!529660 m!7088472))

(assert (=> b!6266061 d!1966497))

(declare-fun d!1966499 () Bool)

(declare-fun nullableFct!2132 (Regex!16187) Bool)

(assert (=> d!1966499 (= (nullable!6180 (h!71184 (exprs!6071 (h!71185 zl!343)))) (nullableFct!2132 (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun bs!1564036 () Bool)

(assert (= bs!1564036 d!1966499))

(declare-fun m!7088474 () Bool)

(assert (=> bs!1564036 m!7088474))

(assert (=> b!6266061 d!1966499))

(declare-fun e!3811578 () (InoxSet Context!11142))

(declare-fun b!6266592 () Bool)

(declare-fun call!529672 () (InoxSet Context!11142))

(assert (=> b!6266592 (= e!3811578 ((_ map or) call!529672 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (h!71186 s!2326))))))

(declare-fun b!6266593 () Bool)

(declare-fun e!3811576 () (InoxSet Context!11142))

(assert (=> b!6266593 (= e!3811576 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1966501 () Bool)

(declare-fun c!1135190 () Bool)

(declare-fun e!3811577 () Bool)

(assert (=> d!1966501 (= c!1135190 e!3811577)))

(declare-fun res!2585219 () Bool)

(assert (=> d!1966501 (=> (not res!2585219) (not e!3811577))))

(assert (=> d!1966501 (= res!2585219 ((_ is Cons!64736) (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))))

(assert (=> d!1966501 (= (derivationStepZipperUp!1361 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))) (h!71186 s!2326)) e!3811578)))

(declare-fun bm!529667 () Bool)

(assert (=> bm!529667 (= call!529672 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))) (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (h!71186 s!2326)))))

(declare-fun b!6266594 () Bool)

(assert (=> b!6266594 (= e!3811577 (nullable!6180 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))))

(declare-fun b!6266595 () Bool)

(assert (=> b!6266595 (= e!3811576 call!529672)))

(declare-fun b!6266596 () Bool)

(assert (=> b!6266596 (= e!3811578 e!3811576)))

(declare-fun c!1135191 () Bool)

(assert (=> b!6266596 (= c!1135191 ((_ is Cons!64736) (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))))

(assert (= (and d!1966501 res!2585219) b!6266594))

(assert (= (and d!1966501 c!1135190) b!6266592))

(assert (= (and d!1966501 (not c!1135190)) b!6266596))

(assert (= (and b!6266596 c!1135191) b!6266595))

(assert (= (and b!6266596 (not c!1135191)) b!6266593))

(assert (= (or b!6266592 b!6266595) bm!529667))

(declare-fun m!7088476 () Bool)

(assert (=> b!6266592 m!7088476))

(declare-fun m!7088478 () Bool)

(assert (=> bm!529667 m!7088478))

(declare-fun m!7088480 () Bool)

(assert (=> b!6266594 m!7088480))

(assert (=> b!6266061 d!1966501))

(declare-fun call!529673 () (InoxSet Context!11142))

(declare-fun b!6266597 () Bool)

(declare-fun e!3811581 () (InoxSet Context!11142))

(assert (=> b!6266597 (= e!3811581 ((_ map or) call!529673 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 lt!2351103))) (h!71186 s!2326))))))

(declare-fun b!6266598 () Bool)

(declare-fun e!3811579 () (InoxSet Context!11142))

(assert (=> b!6266598 (= e!3811579 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1966503 () Bool)

(declare-fun c!1135192 () Bool)

(declare-fun e!3811580 () Bool)

(assert (=> d!1966503 (= c!1135192 e!3811580)))

(declare-fun res!2585220 () Bool)

(assert (=> d!1966503 (=> (not res!2585220) (not e!3811580))))

(assert (=> d!1966503 (= res!2585220 ((_ is Cons!64736) (exprs!6071 lt!2351103)))))

(assert (=> d!1966503 (= (derivationStepZipperUp!1361 lt!2351103 (h!71186 s!2326)) e!3811581)))

(declare-fun bm!529668 () Bool)

(assert (=> bm!529668 (= call!529673 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 lt!2351103)) (Context!11143 (t!378414 (exprs!6071 lt!2351103))) (h!71186 s!2326)))))

(declare-fun b!6266599 () Bool)

(assert (=> b!6266599 (= e!3811580 (nullable!6180 (h!71184 (exprs!6071 lt!2351103))))))

(declare-fun b!6266600 () Bool)

(assert (=> b!6266600 (= e!3811579 call!529673)))

(declare-fun b!6266601 () Bool)

(assert (=> b!6266601 (= e!3811581 e!3811579)))

(declare-fun c!1135193 () Bool)

(assert (=> b!6266601 (= c!1135193 ((_ is Cons!64736) (exprs!6071 lt!2351103)))))

(assert (= (and d!1966503 res!2585220) b!6266599))

(assert (= (and d!1966503 c!1135192) b!6266597))

(assert (= (and d!1966503 (not c!1135192)) b!6266601))

(assert (= (and b!6266601 c!1135193) b!6266600))

(assert (= (and b!6266601 (not c!1135193)) b!6266598))

(assert (= (or b!6266597 b!6266600) bm!529668))

(declare-fun m!7088482 () Bool)

(assert (=> b!6266597 m!7088482))

(declare-fun m!7088484 () Bool)

(assert (=> bm!529668 m!7088484))

(declare-fun m!7088486 () Bool)

(assert (=> b!6266599 m!7088486))

(assert (=> b!6266061 d!1966503))

(declare-fun b!6266602 () Bool)

(declare-fun call!529674 () (InoxSet Context!11142))

(declare-fun e!3811584 () (InoxSet Context!11142))

(assert (=> b!6266602 (= e!3811584 ((_ map or) call!529674 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))) (h!71186 s!2326))))))

(declare-fun b!6266603 () Bool)

(declare-fun e!3811582 () (InoxSet Context!11142))

(assert (=> b!6266603 (= e!3811582 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1966505 () Bool)

(declare-fun c!1135194 () Bool)

(declare-fun e!3811583 () Bool)

(assert (=> d!1966505 (= c!1135194 e!3811583)))

(declare-fun res!2585221 () Bool)

(assert (=> d!1966505 (=> (not res!2585221) (not e!3811583))))

(assert (=> d!1966505 (= res!2585221 ((_ is Cons!64736) (exprs!6071 (h!71185 zl!343))))))

(assert (=> d!1966505 (= (derivationStepZipperUp!1361 (h!71185 zl!343) (h!71186 s!2326)) e!3811584)))

(declare-fun bm!529669 () Bool)

(assert (=> bm!529669 (= call!529674 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (h!71185 zl!343))) (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))) (h!71186 s!2326)))))

(declare-fun b!6266604 () Bool)

(assert (=> b!6266604 (= e!3811583 (nullable!6180 (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6266605 () Bool)

(assert (=> b!6266605 (= e!3811582 call!529674)))

(declare-fun b!6266606 () Bool)

(assert (=> b!6266606 (= e!3811584 e!3811582)))

(declare-fun c!1135195 () Bool)

(assert (=> b!6266606 (= c!1135195 ((_ is Cons!64736) (exprs!6071 (h!71185 zl!343))))))

(assert (= (and d!1966505 res!2585221) b!6266604))

(assert (= (and d!1966505 c!1135194) b!6266602))

(assert (= (and d!1966505 (not c!1135194)) b!6266606))

(assert (= (and b!6266606 c!1135195) b!6266605))

(assert (= (and b!6266606 (not c!1135195)) b!6266603))

(assert (= (or b!6266602 b!6266605) bm!529669))

(declare-fun m!7088488 () Bool)

(assert (=> b!6266602 m!7088488))

(declare-fun m!7088490 () Bool)

(assert (=> bm!529669 m!7088490))

(assert (=> b!6266604 m!7087946))

(assert (=> b!6266061 d!1966505))

(declare-fun d!1966507 () Bool)

(declare-fun choose!46492 (Int) Bool)

(assert (=> d!1966507 (= (Exists!3257 lambda!343067) (choose!46492 lambda!343067))))

(declare-fun bs!1564037 () Bool)

(assert (= bs!1564037 d!1966507))

(declare-fun m!7088492 () Bool)

(assert (=> bs!1564037 m!7088492))

(assert (=> b!6266040 d!1966507))

(declare-fun b!6266625 () Bool)

(declare-fun e!3811597 () Option!16078)

(assert (=> b!6266625 (= e!3811597 (Some!16077 (tuple2!66333 Nil!64738 s!2326)))))

(declare-fun b!6266626 () Bool)

(declare-fun lt!2351199 () Unit!158079)

(declare-fun lt!2351200 () Unit!158079)

(assert (=> b!6266626 (= lt!2351199 lt!2351200)))

(declare-fun ++!14261 (List!64862 List!64862) List!64862)

(assert (=> b!6266626 (= (++!14261 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) (t!378416 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2356 (List!64862 C!32644 List!64862 List!64862) Unit!158079)

(assert (=> b!6266626 (= lt!2351200 (lemmaMoveElementToOtherListKeepsConcatEq!2356 Nil!64738 (h!71186 s!2326) (t!378416 s!2326) s!2326))))

(declare-fun e!3811599 () Option!16078)

(assert (=> b!6266626 (= e!3811599 (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) (t!378416 s!2326) s!2326))))

(declare-fun b!6266627 () Bool)

(assert (=> b!6266627 (= e!3811597 e!3811599)))

(declare-fun c!1135201 () Bool)

(assert (=> b!6266627 (= c!1135201 ((_ is Nil!64738) s!2326))))

(declare-fun b!6266628 () Bool)

(declare-fun res!2585233 () Bool)

(declare-fun e!3811595 () Bool)

(assert (=> b!6266628 (=> (not res!2585233) (not e!3811595))))

(declare-fun lt!2351198 () Option!16078)

(declare-fun get!22370 (Option!16078) tuple2!66332)

(assert (=> b!6266628 (= res!2585233 (matchR!8370 (regOne!32886 r!7292) (_1!36469 (get!22370 lt!2351198))))))

(declare-fun b!6266629 () Bool)

(assert (=> b!6266629 (= e!3811599 None!16077)))

(declare-fun b!6266630 () Bool)

(declare-fun res!2585234 () Bool)

(assert (=> b!6266630 (=> (not res!2585234) (not e!3811595))))

(assert (=> b!6266630 (= res!2585234 (matchR!8370 (regTwo!32886 r!7292) (_2!36469 (get!22370 lt!2351198))))))

(declare-fun b!6266631 () Bool)

(declare-fun e!3811598 () Bool)

(assert (=> b!6266631 (= e!3811598 (not (isDefined!12781 lt!2351198)))))

(declare-fun b!6266632 () Bool)

(declare-fun e!3811596 () Bool)

(assert (=> b!6266632 (= e!3811596 (matchR!8370 (regTwo!32886 r!7292) s!2326))))

(declare-fun b!6266633 () Bool)

(assert (=> b!6266633 (= e!3811595 (= (++!14261 (_1!36469 (get!22370 lt!2351198)) (_2!36469 (get!22370 lt!2351198))) s!2326))))

(declare-fun d!1966509 () Bool)

(assert (=> d!1966509 e!3811598))

(declare-fun res!2585235 () Bool)

(assert (=> d!1966509 (=> res!2585235 e!3811598)))

(assert (=> d!1966509 (= res!2585235 e!3811595)))

(declare-fun res!2585232 () Bool)

(assert (=> d!1966509 (=> (not res!2585232) (not e!3811595))))

(assert (=> d!1966509 (= res!2585232 (isDefined!12781 lt!2351198))))

(assert (=> d!1966509 (= lt!2351198 e!3811597)))

(declare-fun c!1135200 () Bool)

(assert (=> d!1966509 (= c!1135200 e!3811596)))

(declare-fun res!2585236 () Bool)

(assert (=> d!1966509 (=> (not res!2585236) (not e!3811596))))

(assert (=> d!1966509 (= res!2585236 (matchR!8370 (regOne!32886 r!7292) Nil!64738))))

(assert (=> d!1966509 (validRegex!7923 (regOne!32886 r!7292))))

(assert (=> d!1966509 (= (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) Nil!64738 s!2326 s!2326) lt!2351198)))

(assert (= (and d!1966509 res!2585236) b!6266632))

(assert (= (and d!1966509 c!1135200) b!6266625))

(assert (= (and d!1966509 (not c!1135200)) b!6266627))

(assert (= (and b!6266627 c!1135201) b!6266629))

(assert (= (and b!6266627 (not c!1135201)) b!6266626))

(assert (= (and d!1966509 res!2585232) b!6266628))

(assert (= (and b!6266628 res!2585233) b!6266630))

(assert (= (and b!6266630 res!2585234) b!6266633))

(assert (= (and d!1966509 (not res!2585235)) b!6266631))

(declare-fun m!7088494 () Bool)

(assert (=> b!6266631 m!7088494))

(assert (=> d!1966509 m!7088494))

(declare-fun m!7088496 () Bool)

(assert (=> d!1966509 m!7088496))

(declare-fun m!7088498 () Bool)

(assert (=> d!1966509 m!7088498))

(declare-fun m!7088500 () Bool)

(assert (=> b!6266632 m!7088500))

(declare-fun m!7088502 () Bool)

(assert (=> b!6266630 m!7088502))

(declare-fun m!7088504 () Bool)

(assert (=> b!6266630 m!7088504))

(assert (=> b!6266633 m!7088502))

(declare-fun m!7088506 () Bool)

(assert (=> b!6266633 m!7088506))

(assert (=> b!6266628 m!7088502))

(declare-fun m!7088508 () Bool)

(assert (=> b!6266628 m!7088508))

(declare-fun m!7088510 () Bool)

(assert (=> b!6266626 m!7088510))

(assert (=> b!6266626 m!7088510))

(declare-fun m!7088512 () Bool)

(assert (=> b!6266626 m!7088512))

(declare-fun m!7088514 () Bool)

(assert (=> b!6266626 m!7088514))

(assert (=> b!6266626 m!7088510))

(declare-fun m!7088516 () Bool)

(assert (=> b!6266626 m!7088516))

(assert (=> b!6266040 d!1966509))

(declare-fun d!1966511 () Bool)

(assert (=> d!1966511 (= (Exists!3257 lambda!343068) (choose!46492 lambda!343068))))

(declare-fun bs!1564038 () Bool)

(assert (= bs!1564038 d!1966511))

(declare-fun m!7088518 () Bool)

(assert (=> bs!1564038 m!7088518))

(assert (=> b!6266040 d!1966511))

(declare-fun bs!1564039 () Bool)

(declare-fun d!1966513 () Bool)

(assert (= bs!1564039 (and d!1966513 b!6266040)))

(declare-fun lambda!343118 () Int)

(assert (=> bs!1564039 (= lambda!343118 lambda!343067)))

(assert (=> bs!1564039 (not (= lambda!343118 lambda!343068))))

(assert (=> d!1966513 true))

(assert (=> d!1966513 true))

(assert (=> d!1966513 true))

(assert (=> d!1966513 (= (isDefined!12781 (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) Nil!64738 s!2326 s!2326)) (Exists!3257 lambda!343118))))

(declare-fun lt!2351203 () Unit!158079)

(declare-fun choose!46494 (Regex!16187 Regex!16187 List!64862) Unit!158079)

(assert (=> d!1966513 (= lt!2351203 (choose!46494 (regOne!32886 r!7292) (regTwo!32886 r!7292) s!2326))))

(assert (=> d!1966513 (validRegex!7923 (regOne!32886 r!7292))))

(assert (=> d!1966513 (= (lemmaFindConcatSeparationEquivalentToExists!2256 (regOne!32886 r!7292) (regTwo!32886 r!7292) s!2326) lt!2351203)))

(declare-fun bs!1564040 () Bool)

(assert (= bs!1564040 d!1966513))

(assert (=> bs!1564040 m!7088498))

(declare-fun m!7088520 () Bool)

(assert (=> bs!1564040 m!7088520))

(assert (=> bs!1564040 m!7088042))

(assert (=> bs!1564040 m!7088044))

(assert (=> bs!1564040 m!7088042))

(declare-fun m!7088522 () Bool)

(assert (=> bs!1564040 m!7088522))

(assert (=> b!6266040 d!1966513))

(declare-fun bs!1564041 () Bool)

(declare-fun d!1966515 () Bool)

(assert (= bs!1564041 (and d!1966515 b!6266040)))

(declare-fun lambda!343123 () Int)

(assert (=> bs!1564041 (= lambda!343123 lambda!343067)))

(assert (=> bs!1564041 (not (= lambda!343123 lambda!343068))))

(declare-fun bs!1564042 () Bool)

(assert (= bs!1564042 (and d!1966515 d!1966513)))

(assert (=> bs!1564042 (= lambda!343123 lambda!343118)))

(assert (=> d!1966515 true))

(assert (=> d!1966515 true))

(assert (=> d!1966515 true))

(declare-fun lambda!343124 () Int)

(assert (=> bs!1564041 (not (= lambda!343124 lambda!343067))))

(assert (=> bs!1564041 (= lambda!343124 lambda!343068)))

(assert (=> bs!1564042 (not (= lambda!343124 lambda!343118))))

(declare-fun bs!1564043 () Bool)

(assert (= bs!1564043 d!1966515))

(assert (=> bs!1564043 (not (= lambda!343124 lambda!343123))))

(assert (=> d!1966515 true))

(assert (=> d!1966515 true))

(assert (=> d!1966515 true))

(assert (=> d!1966515 (= (Exists!3257 lambda!343123) (Exists!3257 lambda!343124))))

(declare-fun lt!2351206 () Unit!158079)

(declare-fun choose!46495 (Regex!16187 Regex!16187 List!64862) Unit!158079)

(assert (=> d!1966515 (= lt!2351206 (choose!46495 (regOne!32886 r!7292) (regTwo!32886 r!7292) s!2326))))

(assert (=> d!1966515 (validRegex!7923 (regOne!32886 r!7292))))

(assert (=> d!1966515 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1794 (regOne!32886 r!7292) (regTwo!32886 r!7292) s!2326) lt!2351206)))

(declare-fun m!7088524 () Bool)

(assert (=> bs!1564043 m!7088524))

(declare-fun m!7088526 () Bool)

(assert (=> bs!1564043 m!7088526))

(declare-fun m!7088528 () Bool)

(assert (=> bs!1564043 m!7088528))

(assert (=> bs!1564043 m!7088498))

(assert (=> b!6266040 d!1966515))

(declare-fun d!1966517 () Bool)

(declare-fun isEmpty!36770 (Option!16078) Bool)

(assert (=> d!1966517 (= (isDefined!12781 (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) Nil!64738 s!2326 s!2326)) (not (isEmpty!36770 (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) Nil!64738 s!2326 s!2326))))))

(declare-fun bs!1564044 () Bool)

(assert (= bs!1564044 d!1966517))

(assert (=> bs!1564044 m!7088042))

(declare-fun m!7088530 () Bool)

(assert (=> bs!1564044 m!7088530))

(assert (=> b!6266040 d!1966517))

(declare-fun d!1966519 () Bool)

(assert (=> d!1966519 (= (isEmpty!36767 (t!378415 zl!343)) ((_ is Nil!64737) (t!378415 zl!343)))))

(assert (=> b!6266062 d!1966519))

(declare-fun d!1966521 () Bool)

(declare-fun c!1135204 () Bool)

(declare-fun isEmpty!36771 (List!64862) Bool)

(assert (=> d!1966521 (= c!1135204 (isEmpty!36771 s!2326))))

(declare-fun e!3811608 () Bool)

(assert (=> d!1966521 (= (matchZipper!2199 lt!2351077 s!2326) e!3811608)))

(declare-fun b!6266650 () Bool)

(declare-fun nullableZipper!1957 ((InoxSet Context!11142)) Bool)

(assert (=> b!6266650 (= e!3811608 (nullableZipper!1957 lt!2351077))))

(declare-fun b!6266651 () Bool)

(declare-fun head!12874 (List!64862) C!32644)

(declare-fun tail!11959 (List!64862) List!64862)

(assert (=> b!6266651 (= e!3811608 (matchZipper!2199 (derivationStepZipper!2153 lt!2351077 (head!12874 s!2326)) (tail!11959 s!2326)))))

(assert (= (and d!1966521 c!1135204) b!6266650))

(assert (= (and d!1966521 (not c!1135204)) b!6266651))

(declare-fun m!7088532 () Bool)

(assert (=> d!1966521 m!7088532))

(declare-fun m!7088534 () Bool)

(assert (=> b!6266650 m!7088534))

(declare-fun m!7088536 () Bool)

(assert (=> b!6266651 m!7088536))

(assert (=> b!6266651 m!7088536))

(declare-fun m!7088538 () Bool)

(assert (=> b!6266651 m!7088538))

(declare-fun m!7088540 () Bool)

(assert (=> b!6266651 m!7088540))

(assert (=> b!6266651 m!7088538))

(assert (=> b!6266651 m!7088540))

(declare-fun m!7088542 () Bool)

(assert (=> b!6266651 m!7088542))

(assert (=> b!6266064 d!1966521))

(declare-fun b!6266670 () Bool)

(declare-fun e!3811623 () Bool)

(declare-fun e!3811627 () Bool)

(assert (=> b!6266670 (= e!3811623 e!3811627)))

(declare-fun res!2585260 () Bool)

(assert (=> b!6266670 (=> (not res!2585260) (not e!3811627))))

(declare-fun call!529683 () Bool)

(assert (=> b!6266670 (= res!2585260 call!529683)))

(declare-fun b!6266671 () Bool)

(declare-fun res!2585262 () Bool)

(assert (=> b!6266671 (=> res!2585262 e!3811623)))

(assert (=> b!6266671 (= res!2585262 (not ((_ is Concat!25032) lt!2351095)))))

(declare-fun e!3811626 () Bool)

(assert (=> b!6266671 (= e!3811626 e!3811623)))

(declare-fun b!6266672 () Bool)

(declare-fun e!3811624 () Bool)

(declare-fun e!3811628 () Bool)

(assert (=> b!6266672 (= e!3811624 e!3811628)))

(declare-fun c!1135209 () Bool)

(assert (=> b!6266672 (= c!1135209 ((_ is Star!16187) lt!2351095))))

(declare-fun d!1966523 () Bool)

(declare-fun res!2585263 () Bool)

(assert (=> d!1966523 (=> res!2585263 e!3811624)))

(assert (=> d!1966523 (= res!2585263 ((_ is ElementMatch!16187) lt!2351095))))

(assert (=> d!1966523 (= (validRegex!7923 lt!2351095) e!3811624)))

(declare-fun b!6266673 () Bool)

(declare-fun e!3811629 () Bool)

(declare-fun call!529682 () Bool)

(assert (=> b!6266673 (= e!3811629 call!529682)))

(declare-fun bm!529676 () Bool)

(declare-fun call!529681 () Bool)

(assert (=> bm!529676 (= call!529683 call!529681)))

(declare-fun b!6266674 () Bool)

(assert (=> b!6266674 (= e!3811628 e!3811626)))

(declare-fun c!1135210 () Bool)

(assert (=> b!6266674 (= c!1135210 ((_ is Union!16187) lt!2351095))))

(declare-fun bm!529677 () Bool)

(assert (=> bm!529677 (= call!529682 (validRegex!7923 (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))))))

(declare-fun bm!529678 () Bool)

(assert (=> bm!529678 (= call!529681 (validRegex!7923 (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))))))

(declare-fun b!6266675 () Bool)

(declare-fun res!2585261 () Bool)

(assert (=> b!6266675 (=> (not res!2585261) (not e!3811629))))

(assert (=> b!6266675 (= res!2585261 call!529683)))

(assert (=> b!6266675 (= e!3811626 e!3811629)))

(declare-fun b!6266676 () Bool)

(assert (=> b!6266676 (= e!3811627 call!529682)))

(declare-fun b!6266677 () Bool)

(declare-fun e!3811625 () Bool)

(assert (=> b!6266677 (= e!3811628 e!3811625)))

(declare-fun res!2585259 () Bool)

(assert (=> b!6266677 (= res!2585259 (not (nullable!6180 (reg!16516 lt!2351095))))))

(assert (=> b!6266677 (=> (not res!2585259) (not e!3811625))))

(declare-fun b!6266678 () Bool)

(assert (=> b!6266678 (= e!3811625 call!529681)))

(assert (= (and d!1966523 (not res!2585263)) b!6266672))

(assert (= (and b!6266672 c!1135209) b!6266677))

(assert (= (and b!6266672 (not c!1135209)) b!6266674))

(assert (= (and b!6266677 res!2585259) b!6266678))

(assert (= (and b!6266674 c!1135210) b!6266675))

(assert (= (and b!6266674 (not c!1135210)) b!6266671))

(assert (= (and b!6266675 res!2585261) b!6266673))

(assert (= (and b!6266671 (not res!2585262)) b!6266670))

(assert (= (and b!6266670 res!2585260) b!6266676))

(assert (= (or b!6266673 b!6266676) bm!529677))

(assert (= (or b!6266675 b!6266670) bm!529676))

(assert (= (or b!6266678 bm!529676) bm!529678))

(declare-fun m!7088544 () Bool)

(assert (=> bm!529677 m!7088544))

(declare-fun m!7088546 () Bool)

(assert (=> bm!529678 m!7088546))

(declare-fun m!7088548 () Bool)

(assert (=> b!6266677 m!7088548))

(assert (=> b!6266064 d!1966523))

(declare-fun b!6266699 () Bool)

(declare-fun e!3811642 () Regex!16187)

(declare-fun e!3811646 () Regex!16187)

(assert (=> b!6266699 (= e!3811642 e!3811646)))

(declare-fun c!1135220 () Bool)

(assert (=> b!6266699 (= c!1135220 ((_ is Cons!64736) lt!2351096))))

(declare-fun b!6266700 () Bool)

(assert (=> b!6266700 (= e!3811646 EmptyExpr!16187)))

(declare-fun b!6266701 () Bool)

(declare-fun e!3811643 () Bool)

(declare-fun lt!2351209 () Regex!16187)

(declare-fun isEmptyExpr!1593 (Regex!16187) Bool)

(assert (=> b!6266701 (= e!3811643 (isEmptyExpr!1593 lt!2351209))))

(declare-fun d!1966525 () Bool)

(declare-fun e!3811645 () Bool)

(assert (=> d!1966525 e!3811645))

(declare-fun res!2585268 () Bool)

(assert (=> d!1966525 (=> (not res!2585268) (not e!3811645))))

(assert (=> d!1966525 (= res!2585268 (validRegex!7923 lt!2351209))))

(assert (=> d!1966525 (= lt!2351209 e!3811642)))

(declare-fun c!1135222 () Bool)

(declare-fun e!3811644 () Bool)

(assert (=> d!1966525 (= c!1135222 e!3811644)))

(declare-fun res!2585269 () Bool)

(assert (=> d!1966525 (=> (not res!2585269) (not e!3811644))))

(assert (=> d!1966525 (= res!2585269 ((_ is Cons!64736) lt!2351096))))

(declare-fun lambda!343127 () Int)

(declare-fun forall!15312 (List!64860 Int) Bool)

(assert (=> d!1966525 (forall!15312 lt!2351096 lambda!343127)))

(assert (=> d!1966525 (= (generalisedConcat!1784 lt!2351096) lt!2351209)))

(declare-fun b!6266702 () Bool)

(assert (=> b!6266702 (= e!3811644 (isEmpty!36766 (t!378414 lt!2351096)))))

(declare-fun b!6266703 () Bool)

(declare-fun e!3811647 () Bool)

(assert (=> b!6266703 (= e!3811643 e!3811647)))

(declare-fun c!1135219 () Bool)

(declare-fun tail!11960 (List!64860) List!64860)

(assert (=> b!6266703 (= c!1135219 (isEmpty!36766 (tail!11960 lt!2351096)))))

(declare-fun b!6266704 () Bool)

(declare-fun isConcat!1116 (Regex!16187) Bool)

(assert (=> b!6266704 (= e!3811647 (isConcat!1116 lt!2351209))))

(declare-fun b!6266705 () Bool)

(declare-fun head!12875 (List!64860) Regex!16187)

(assert (=> b!6266705 (= e!3811647 (= lt!2351209 (head!12875 lt!2351096)))))

(declare-fun b!6266706 () Bool)

(assert (=> b!6266706 (= e!3811642 (h!71184 lt!2351096))))

(declare-fun b!6266707 () Bool)

(assert (=> b!6266707 (= e!3811645 e!3811643)))

(declare-fun c!1135221 () Bool)

(assert (=> b!6266707 (= c!1135221 (isEmpty!36766 lt!2351096))))

(declare-fun b!6266708 () Bool)

(assert (=> b!6266708 (= e!3811646 (Concat!25032 (h!71184 lt!2351096) (generalisedConcat!1784 (t!378414 lt!2351096))))))

(assert (= (and d!1966525 res!2585269) b!6266702))

(assert (= (and d!1966525 c!1135222) b!6266706))

(assert (= (and d!1966525 (not c!1135222)) b!6266699))

(assert (= (and b!6266699 c!1135220) b!6266708))

(assert (= (and b!6266699 (not c!1135220)) b!6266700))

(assert (= (and d!1966525 res!2585268) b!6266707))

(assert (= (and b!6266707 c!1135221) b!6266701))

(assert (= (and b!6266707 (not c!1135221)) b!6266703))

(assert (= (and b!6266703 c!1135219) b!6266705))

(assert (= (and b!6266703 (not c!1135219)) b!6266704))

(declare-fun m!7088550 () Bool)

(assert (=> d!1966525 m!7088550))

(declare-fun m!7088552 () Bool)

(assert (=> d!1966525 m!7088552))

(declare-fun m!7088554 () Bool)

(assert (=> b!6266708 m!7088554))

(declare-fun m!7088556 () Bool)

(assert (=> b!6266704 m!7088556))

(declare-fun m!7088558 () Bool)

(assert (=> b!6266705 m!7088558))

(declare-fun m!7088560 () Bool)

(assert (=> b!6266701 m!7088560))

(declare-fun m!7088562 () Bool)

(assert (=> b!6266703 m!7088562))

(assert (=> b!6266703 m!7088562))

(declare-fun m!7088564 () Bool)

(assert (=> b!6266703 m!7088564))

(declare-fun m!7088566 () Bool)

(assert (=> b!6266707 m!7088566))

(declare-fun m!7088568 () Bool)

(assert (=> b!6266702 m!7088568))

(assert (=> b!6266064 d!1966525))

(declare-fun d!1966527 () Bool)

(assert (=> d!1966527 (= (matchR!8370 lt!2351098 s!2326) (matchZipper!2199 lt!2351077 s!2326))))

(declare-fun lt!2351212 () Unit!158079)

(declare-fun choose!46496 ((InoxSet Context!11142) List!64861 Regex!16187 List!64862) Unit!158079)

(assert (=> d!1966527 (= lt!2351212 (choose!46496 lt!2351077 lt!2351106 lt!2351098 s!2326))))

(assert (=> d!1966527 (validRegex!7923 lt!2351098)))

(assert (=> d!1966527 (= (theoremZipperRegexEquiv!757 lt!2351077 lt!2351106 lt!2351098 s!2326) lt!2351212)))

(declare-fun bs!1564045 () Bool)

(assert (= bs!1564045 d!1966527))

(assert (=> bs!1564045 m!7087964))

(assert (=> bs!1564045 m!7087970))

(declare-fun m!7088570 () Bool)

(assert (=> bs!1564045 m!7088570))

(declare-fun m!7088572 () Bool)

(assert (=> bs!1564045 m!7088572))

(assert (=> b!6266064 d!1966527))

(declare-fun bs!1564046 () Bool)

(declare-fun d!1966529 () Bool)

(assert (= bs!1564046 (and d!1966529 d!1966525)))

(declare-fun lambda!343128 () Int)

(assert (=> bs!1564046 (= lambda!343128 lambda!343127)))

(declare-fun b!6266709 () Bool)

(declare-fun e!3811648 () Regex!16187)

(declare-fun e!3811652 () Regex!16187)

(assert (=> b!6266709 (= e!3811648 e!3811652)))

(declare-fun c!1135224 () Bool)

(assert (=> b!6266709 (= c!1135224 ((_ is Cons!64736) lt!2351079))))

(declare-fun b!6266710 () Bool)

(assert (=> b!6266710 (= e!3811652 EmptyExpr!16187)))

(declare-fun b!6266711 () Bool)

(declare-fun e!3811649 () Bool)

(declare-fun lt!2351213 () Regex!16187)

(assert (=> b!6266711 (= e!3811649 (isEmptyExpr!1593 lt!2351213))))

(declare-fun e!3811651 () Bool)

(assert (=> d!1966529 e!3811651))

(declare-fun res!2585270 () Bool)

(assert (=> d!1966529 (=> (not res!2585270) (not e!3811651))))

(assert (=> d!1966529 (= res!2585270 (validRegex!7923 lt!2351213))))

(assert (=> d!1966529 (= lt!2351213 e!3811648)))

(declare-fun c!1135226 () Bool)

(declare-fun e!3811650 () Bool)

(assert (=> d!1966529 (= c!1135226 e!3811650)))

(declare-fun res!2585271 () Bool)

(assert (=> d!1966529 (=> (not res!2585271) (not e!3811650))))

(assert (=> d!1966529 (= res!2585271 ((_ is Cons!64736) lt!2351079))))

(assert (=> d!1966529 (forall!15312 lt!2351079 lambda!343128)))

(assert (=> d!1966529 (= (generalisedConcat!1784 lt!2351079) lt!2351213)))

(declare-fun b!6266712 () Bool)

(assert (=> b!6266712 (= e!3811650 (isEmpty!36766 (t!378414 lt!2351079)))))

(declare-fun b!6266713 () Bool)

(declare-fun e!3811653 () Bool)

(assert (=> b!6266713 (= e!3811649 e!3811653)))

(declare-fun c!1135223 () Bool)

(assert (=> b!6266713 (= c!1135223 (isEmpty!36766 (tail!11960 lt!2351079)))))

(declare-fun b!6266714 () Bool)

(assert (=> b!6266714 (= e!3811653 (isConcat!1116 lt!2351213))))

(declare-fun b!6266715 () Bool)

(assert (=> b!6266715 (= e!3811653 (= lt!2351213 (head!12875 lt!2351079)))))

(declare-fun b!6266716 () Bool)

(assert (=> b!6266716 (= e!3811648 (h!71184 lt!2351079))))

(declare-fun b!6266717 () Bool)

(assert (=> b!6266717 (= e!3811651 e!3811649)))

(declare-fun c!1135225 () Bool)

(assert (=> b!6266717 (= c!1135225 (isEmpty!36766 lt!2351079))))

(declare-fun b!6266718 () Bool)

(assert (=> b!6266718 (= e!3811652 (Concat!25032 (h!71184 lt!2351079) (generalisedConcat!1784 (t!378414 lt!2351079))))))

(assert (= (and d!1966529 res!2585271) b!6266712))

(assert (= (and d!1966529 c!1135226) b!6266716))

(assert (= (and d!1966529 (not c!1135226)) b!6266709))

(assert (= (and b!6266709 c!1135224) b!6266718))

(assert (= (and b!6266709 (not c!1135224)) b!6266710))

(assert (= (and d!1966529 res!2585270) b!6266717))

(assert (= (and b!6266717 c!1135225) b!6266711))

(assert (= (and b!6266717 (not c!1135225)) b!6266713))

(assert (= (and b!6266713 c!1135223) b!6266715))

(assert (= (and b!6266713 (not c!1135223)) b!6266714))

(declare-fun m!7088574 () Bool)

(assert (=> d!1966529 m!7088574))

(declare-fun m!7088576 () Bool)

(assert (=> d!1966529 m!7088576))

(declare-fun m!7088578 () Bool)

(assert (=> b!6266718 m!7088578))

(declare-fun m!7088580 () Bool)

(assert (=> b!6266714 m!7088580))

(declare-fun m!7088582 () Bool)

(assert (=> b!6266715 m!7088582))

(declare-fun m!7088584 () Bool)

(assert (=> b!6266711 m!7088584))

(declare-fun m!7088586 () Bool)

(assert (=> b!6266713 m!7088586))

(assert (=> b!6266713 m!7088586))

(declare-fun m!7088588 () Bool)

(assert (=> b!6266713 m!7088588))

(declare-fun m!7088590 () Bool)

(assert (=> b!6266717 m!7088590))

(declare-fun m!7088592 () Bool)

(assert (=> b!6266712 m!7088592))

(assert (=> b!6266064 d!1966529))

(declare-fun b!6266747 () Bool)

(declare-fun e!3811673 () Bool)

(declare-fun lt!2351216 () Bool)

(declare-fun call!529686 () Bool)

(assert (=> b!6266747 (= e!3811673 (= lt!2351216 call!529686))))

(declare-fun b!6266748 () Bool)

(declare-fun e!3811669 () Bool)

(assert (=> b!6266748 (= e!3811669 (not lt!2351216))))

(declare-fun b!6266749 () Bool)

(declare-fun res!2585293 () Bool)

(declare-fun e!3811671 () Bool)

(assert (=> b!6266749 (=> res!2585293 e!3811671)))

(assert (=> b!6266749 (= res!2585293 (not ((_ is ElementMatch!16187) lt!2351098)))))

(assert (=> b!6266749 (= e!3811669 e!3811671)))

(declare-fun b!6266750 () Bool)

(declare-fun e!3811670 () Bool)

(assert (=> b!6266750 (= e!3811670 (= (head!12874 s!2326) (c!1135024 lt!2351098)))))

(declare-fun b!6266751 () Bool)

(declare-fun res!2585288 () Bool)

(assert (=> b!6266751 (=> (not res!2585288) (not e!3811670))))

(assert (=> b!6266751 (= res!2585288 (not call!529686))))

(declare-fun b!6266753 () Bool)

(declare-fun res!2585295 () Bool)

(assert (=> b!6266753 (=> (not res!2585295) (not e!3811670))))

(assert (=> b!6266753 (= res!2585295 (isEmpty!36771 (tail!11959 s!2326)))))

(declare-fun b!6266754 () Bool)

(declare-fun e!3811668 () Bool)

(declare-fun e!3811672 () Bool)

(assert (=> b!6266754 (= e!3811668 e!3811672)))

(declare-fun res!2585294 () Bool)

(assert (=> b!6266754 (=> res!2585294 e!3811672)))

(assert (=> b!6266754 (= res!2585294 call!529686)))

(declare-fun b!6266755 () Bool)

(declare-fun e!3811674 () Bool)

(declare-fun derivativeStep!4896 (Regex!16187 C!32644) Regex!16187)

(assert (=> b!6266755 (= e!3811674 (matchR!8370 (derivativeStep!4896 lt!2351098 (head!12874 s!2326)) (tail!11959 s!2326)))))

(declare-fun b!6266756 () Bool)

(assert (=> b!6266756 (= e!3811672 (not (= (head!12874 s!2326) (c!1135024 lt!2351098))))))

(declare-fun b!6266757 () Bool)

(declare-fun res!2585291 () Bool)

(assert (=> b!6266757 (=> res!2585291 e!3811671)))

(assert (=> b!6266757 (= res!2585291 e!3811670)))

(declare-fun res!2585289 () Bool)

(assert (=> b!6266757 (=> (not res!2585289) (not e!3811670))))

(assert (=> b!6266757 (= res!2585289 lt!2351216)))

(declare-fun b!6266758 () Bool)

(declare-fun res!2585292 () Bool)

(assert (=> b!6266758 (=> res!2585292 e!3811672)))

(assert (=> b!6266758 (= res!2585292 (not (isEmpty!36771 (tail!11959 s!2326))))))

(declare-fun b!6266759 () Bool)

(assert (=> b!6266759 (= e!3811674 (nullable!6180 lt!2351098))))

(declare-fun bm!529681 () Bool)

(assert (=> bm!529681 (= call!529686 (isEmpty!36771 s!2326))))

(declare-fun b!6266760 () Bool)

(assert (=> b!6266760 (= e!3811671 e!3811668)))

(declare-fun res!2585290 () Bool)

(assert (=> b!6266760 (=> (not res!2585290) (not e!3811668))))

(assert (=> b!6266760 (= res!2585290 (not lt!2351216))))

(declare-fun d!1966531 () Bool)

(assert (=> d!1966531 e!3811673))

(declare-fun c!1135235 () Bool)

(assert (=> d!1966531 (= c!1135235 ((_ is EmptyExpr!16187) lt!2351098))))

(assert (=> d!1966531 (= lt!2351216 e!3811674)))

(declare-fun c!1135234 () Bool)

(assert (=> d!1966531 (= c!1135234 (isEmpty!36771 s!2326))))

(assert (=> d!1966531 (validRegex!7923 lt!2351098)))

(assert (=> d!1966531 (= (matchR!8370 lt!2351098 s!2326) lt!2351216)))

(declare-fun b!6266752 () Bool)

(assert (=> b!6266752 (= e!3811673 e!3811669)))

(declare-fun c!1135233 () Bool)

(assert (=> b!6266752 (= c!1135233 ((_ is EmptyLang!16187) lt!2351098))))

(assert (= (and d!1966531 c!1135234) b!6266759))

(assert (= (and d!1966531 (not c!1135234)) b!6266755))

(assert (= (and d!1966531 c!1135235) b!6266747))

(assert (= (and d!1966531 (not c!1135235)) b!6266752))

(assert (= (and b!6266752 c!1135233) b!6266748))

(assert (= (and b!6266752 (not c!1135233)) b!6266749))

(assert (= (and b!6266749 (not res!2585293)) b!6266757))

(assert (= (and b!6266757 res!2585289) b!6266751))

(assert (= (and b!6266751 res!2585288) b!6266753))

(assert (= (and b!6266753 res!2585295) b!6266750))

(assert (= (and b!6266757 (not res!2585291)) b!6266760))

(assert (= (and b!6266760 res!2585290) b!6266754))

(assert (= (and b!6266754 (not res!2585294)) b!6266758))

(assert (= (and b!6266758 (not res!2585292)) b!6266756))

(assert (= (or b!6266747 b!6266751 b!6266754) bm!529681))

(assert (=> d!1966531 m!7088532))

(assert (=> d!1966531 m!7088572))

(assert (=> b!6266758 m!7088540))

(assert (=> b!6266758 m!7088540))

(declare-fun m!7088594 () Bool)

(assert (=> b!6266758 m!7088594))

(assert (=> b!6266753 m!7088540))

(assert (=> b!6266753 m!7088540))

(assert (=> b!6266753 m!7088594))

(declare-fun m!7088596 () Bool)

(assert (=> b!6266759 m!7088596))

(assert (=> bm!529681 m!7088532))

(assert (=> b!6266750 m!7088536))

(assert (=> b!6266755 m!7088536))

(assert (=> b!6266755 m!7088536))

(declare-fun m!7088598 () Bool)

(assert (=> b!6266755 m!7088598))

(assert (=> b!6266755 m!7088540))

(assert (=> b!6266755 m!7088598))

(assert (=> b!6266755 m!7088540))

(declare-fun m!7088600 () Bool)

(assert (=> b!6266755 m!7088600))

(assert (=> b!6266756 m!7088536))

(assert (=> b!6266064 d!1966531))

(declare-fun bs!1564047 () Bool)

(declare-fun d!1966533 () Bool)

(assert (= bs!1564047 (and d!1966533 d!1966525)))

(declare-fun lambda!343131 () Int)

(assert (=> bs!1564047 (= lambda!343131 lambda!343127)))

(declare-fun bs!1564048 () Bool)

(assert (= bs!1564048 (and d!1966533 d!1966529)))

(assert (=> bs!1564048 (= lambda!343131 lambda!343128)))

(assert (=> d!1966533 (= (inv!83714 (h!71185 zl!343)) (forall!15312 (exprs!6071 (h!71185 zl!343)) lambda!343131))))

(declare-fun bs!1564049 () Bool)

(assert (= bs!1564049 d!1966533))

(declare-fun m!7088602 () Bool)

(assert (=> bs!1564049 m!7088602))

(assert (=> b!6266063 d!1966533))

(declare-fun b!6266767 () Bool)

(assert (=> b!6266767 true))

(declare-fun bs!1564050 () Bool)

(declare-fun b!6266769 () Bool)

(assert (= bs!1564050 (and b!6266769 b!6266767)))

(declare-fun lt!2351226 () Int)

(declare-fun lt!2351228 () Int)

(declare-fun lambda!343139 () Int)

(declare-fun lambda!343140 () Int)

(assert (=> bs!1564050 (= (= lt!2351228 lt!2351226) (= lambda!343140 lambda!343139))))

(assert (=> b!6266769 true))

(declare-fun d!1966535 () Bool)

(declare-fun e!3811680 () Bool)

(assert (=> d!1966535 e!3811680))

(declare-fun res!2585298 () Bool)

(assert (=> d!1966535 (=> (not res!2585298) (not e!3811680))))

(assert (=> d!1966535 (= res!2585298 (>= lt!2351228 0))))

(declare-fun e!3811679 () Int)

(assert (=> d!1966535 (= lt!2351228 e!3811679)))

(declare-fun c!1135244 () Bool)

(assert (=> d!1966535 (= c!1135244 ((_ is Cons!64737) lt!2351106))))

(assert (=> d!1966535 (= (zipperDepth!312 lt!2351106) lt!2351228)))

(assert (=> b!6266767 (= e!3811679 lt!2351226)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!205 (Context!11142) Int)

(assert (=> b!6266767 (= lt!2351226 (maxBigInt!0 (contextDepth!205 (h!71185 lt!2351106)) (zipperDepth!312 (t!378415 lt!2351106))))))

(declare-fun lt!2351225 () Unit!158079)

(declare-fun lambda!343138 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!189 (List!64861 Int Int Int) Unit!158079)

(assert (=> b!6266767 (= lt!2351225 (lemmaForallContextDepthBiggerThanTransitive!189 (t!378415 lt!2351106) lt!2351226 (zipperDepth!312 (t!378415 lt!2351106)) lambda!343138))))

(declare-fun forall!15313 (List!64861 Int) Bool)

(assert (=> b!6266767 (forall!15313 (t!378415 lt!2351106) lambda!343139)))

(declare-fun lt!2351227 () Unit!158079)

(assert (=> b!6266767 (= lt!2351227 lt!2351225)))

(declare-fun b!6266768 () Bool)

(assert (=> b!6266768 (= e!3811679 0)))

(assert (=> b!6266769 (= e!3811680 (forall!15313 lt!2351106 lambda!343140))))

(assert (= (and d!1966535 c!1135244) b!6266767))

(assert (= (and d!1966535 (not c!1135244)) b!6266768))

(assert (= (and d!1966535 res!2585298) b!6266769))

(declare-fun m!7088604 () Bool)

(assert (=> b!6266767 m!7088604))

(declare-fun m!7088606 () Bool)

(assert (=> b!6266767 m!7088606))

(declare-fun m!7088608 () Bool)

(assert (=> b!6266767 m!7088608))

(assert (=> b!6266767 m!7088608))

(assert (=> b!6266767 m!7088604))

(declare-fun m!7088610 () Bool)

(assert (=> b!6266767 m!7088610))

(declare-fun m!7088612 () Bool)

(assert (=> b!6266767 m!7088612))

(assert (=> b!6266767 m!7088604))

(declare-fun m!7088614 () Bool)

(assert (=> b!6266769 m!7088614))

(assert (=> b!6266043 d!1966535))

(declare-fun bs!1564051 () Bool)

(declare-fun b!6266772 () Bool)

(assert (= bs!1564051 (and b!6266772 b!6266767)))

(declare-fun lambda!343141 () Int)

(assert (=> bs!1564051 (= lambda!343141 lambda!343138)))

(declare-fun lt!2351230 () Int)

(declare-fun lambda!343142 () Int)

(assert (=> bs!1564051 (= (= lt!2351230 lt!2351226) (= lambda!343142 lambda!343139))))

(declare-fun bs!1564052 () Bool)

(assert (= bs!1564052 (and b!6266772 b!6266769)))

(assert (=> bs!1564052 (= (= lt!2351230 lt!2351228) (= lambda!343142 lambda!343140))))

(assert (=> b!6266772 true))

(declare-fun bs!1564053 () Bool)

(declare-fun b!6266774 () Bool)

(assert (= bs!1564053 (and b!6266774 b!6266767)))

(declare-fun lt!2351232 () Int)

(declare-fun lambda!343143 () Int)

(assert (=> bs!1564053 (= (= lt!2351232 lt!2351226) (= lambda!343143 lambda!343139))))

(declare-fun bs!1564054 () Bool)

(assert (= bs!1564054 (and b!6266774 b!6266769)))

(assert (=> bs!1564054 (= (= lt!2351232 lt!2351228) (= lambda!343143 lambda!343140))))

(declare-fun bs!1564055 () Bool)

(assert (= bs!1564055 (and b!6266774 b!6266772)))

(assert (=> bs!1564055 (= (= lt!2351232 lt!2351230) (= lambda!343143 lambda!343142))))

(assert (=> b!6266774 true))

(declare-fun d!1966537 () Bool)

(declare-fun e!3811682 () Bool)

(assert (=> d!1966537 e!3811682))

(declare-fun res!2585299 () Bool)

(assert (=> d!1966537 (=> (not res!2585299) (not e!3811682))))

(assert (=> d!1966537 (= res!2585299 (>= lt!2351232 0))))

(declare-fun e!3811681 () Int)

(assert (=> d!1966537 (= lt!2351232 e!3811681)))

(declare-fun c!1135245 () Bool)

(assert (=> d!1966537 (= c!1135245 ((_ is Cons!64737) zl!343))))

(assert (=> d!1966537 (= (zipperDepth!312 zl!343) lt!2351232)))

(assert (=> b!6266772 (= e!3811681 lt!2351230)))

(assert (=> b!6266772 (= lt!2351230 (maxBigInt!0 (contextDepth!205 (h!71185 zl!343)) (zipperDepth!312 (t!378415 zl!343))))))

(declare-fun lt!2351229 () Unit!158079)

(assert (=> b!6266772 (= lt!2351229 (lemmaForallContextDepthBiggerThanTransitive!189 (t!378415 zl!343) lt!2351230 (zipperDepth!312 (t!378415 zl!343)) lambda!343141))))

(assert (=> b!6266772 (forall!15313 (t!378415 zl!343) lambda!343142)))

(declare-fun lt!2351231 () Unit!158079)

(assert (=> b!6266772 (= lt!2351231 lt!2351229)))

(declare-fun b!6266773 () Bool)

(assert (=> b!6266773 (= e!3811681 0)))

(assert (=> b!6266774 (= e!3811682 (forall!15313 zl!343 lambda!343143))))

(assert (= (and d!1966537 c!1135245) b!6266772))

(assert (= (and d!1966537 (not c!1135245)) b!6266773))

(assert (= (and d!1966537 res!2585299) b!6266774))

(declare-fun m!7088616 () Bool)

(assert (=> b!6266772 m!7088616))

(declare-fun m!7088618 () Bool)

(assert (=> b!6266772 m!7088618))

(declare-fun m!7088620 () Bool)

(assert (=> b!6266772 m!7088620))

(assert (=> b!6266772 m!7088620))

(assert (=> b!6266772 m!7088616))

(declare-fun m!7088622 () Bool)

(assert (=> b!6266772 m!7088622))

(declare-fun m!7088624 () Bool)

(assert (=> b!6266772 m!7088624))

(assert (=> b!6266772 m!7088616))

(declare-fun m!7088626 () Bool)

(assert (=> b!6266774 m!7088626))

(assert (=> b!6266043 d!1966537))

(declare-fun b!6266775 () Bool)

(declare-fun e!3811683 () Bool)

(declare-fun e!3811687 () Bool)

(assert (=> b!6266775 (= e!3811683 e!3811687)))

(declare-fun res!2585301 () Bool)

(assert (=> b!6266775 (=> (not res!2585301) (not e!3811687))))

(declare-fun call!529689 () Bool)

(assert (=> b!6266775 (= res!2585301 call!529689)))

(declare-fun b!6266776 () Bool)

(declare-fun res!2585303 () Bool)

(assert (=> b!6266776 (=> res!2585303 e!3811683)))

(assert (=> b!6266776 (= res!2585303 (not ((_ is Concat!25032) r!7292)))))

(declare-fun e!3811686 () Bool)

(assert (=> b!6266776 (= e!3811686 e!3811683)))

(declare-fun b!6266777 () Bool)

(declare-fun e!3811684 () Bool)

(declare-fun e!3811688 () Bool)

(assert (=> b!6266777 (= e!3811684 e!3811688)))

(declare-fun c!1135246 () Bool)

(assert (=> b!6266777 (= c!1135246 ((_ is Star!16187) r!7292))))

(declare-fun d!1966539 () Bool)

(declare-fun res!2585304 () Bool)

(assert (=> d!1966539 (=> res!2585304 e!3811684)))

(assert (=> d!1966539 (= res!2585304 ((_ is ElementMatch!16187) r!7292))))

(assert (=> d!1966539 (= (validRegex!7923 r!7292) e!3811684)))

(declare-fun b!6266778 () Bool)

(declare-fun e!3811689 () Bool)

(declare-fun call!529688 () Bool)

(assert (=> b!6266778 (= e!3811689 call!529688)))

(declare-fun bm!529682 () Bool)

(declare-fun call!529687 () Bool)

(assert (=> bm!529682 (= call!529689 call!529687)))

(declare-fun b!6266779 () Bool)

(assert (=> b!6266779 (= e!3811688 e!3811686)))

(declare-fun c!1135247 () Bool)

(assert (=> b!6266779 (= c!1135247 ((_ is Union!16187) r!7292))))

(declare-fun bm!529683 () Bool)

(assert (=> bm!529683 (= call!529688 (validRegex!7923 (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))))))

(declare-fun bm!529684 () Bool)

(assert (=> bm!529684 (= call!529687 (validRegex!7923 (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))))))

(declare-fun b!6266780 () Bool)

(declare-fun res!2585302 () Bool)

(assert (=> b!6266780 (=> (not res!2585302) (not e!3811689))))

(assert (=> b!6266780 (= res!2585302 call!529689)))

(assert (=> b!6266780 (= e!3811686 e!3811689)))

(declare-fun b!6266781 () Bool)

(assert (=> b!6266781 (= e!3811687 call!529688)))

(declare-fun b!6266782 () Bool)

(declare-fun e!3811685 () Bool)

(assert (=> b!6266782 (= e!3811688 e!3811685)))

(declare-fun res!2585300 () Bool)

(assert (=> b!6266782 (= res!2585300 (not (nullable!6180 (reg!16516 r!7292))))))

(assert (=> b!6266782 (=> (not res!2585300) (not e!3811685))))

(declare-fun b!6266783 () Bool)

(assert (=> b!6266783 (= e!3811685 call!529687)))

(assert (= (and d!1966539 (not res!2585304)) b!6266777))

(assert (= (and b!6266777 c!1135246) b!6266782))

(assert (= (and b!6266777 (not c!1135246)) b!6266779))

(assert (= (and b!6266782 res!2585300) b!6266783))

(assert (= (and b!6266779 c!1135247) b!6266780))

(assert (= (and b!6266779 (not c!1135247)) b!6266776))

(assert (= (and b!6266780 res!2585302) b!6266778))

(assert (= (and b!6266776 (not res!2585303)) b!6266775))

(assert (= (and b!6266775 res!2585301) b!6266781))

(assert (= (or b!6266778 b!6266781) bm!529683))

(assert (= (or b!6266780 b!6266775) bm!529682))

(assert (= (or b!6266783 bm!529682) bm!529684))

(declare-fun m!7088628 () Bool)

(assert (=> bm!529683 m!7088628))

(declare-fun m!7088630 () Bool)

(assert (=> bm!529684 m!7088630))

(declare-fun m!7088632 () Bool)

(assert (=> b!6266782 m!7088632))

(assert (=> start!622962 d!1966539))

(declare-fun d!1966541 () Bool)

(assert (=> d!1966541 (= (isEmpty!36766 (t!378414 (exprs!6071 (h!71185 zl!343)))) ((_ is Nil!64736) (t!378414 (exprs!6071 (h!71185 zl!343)))))))

(assert (=> b!6266044 d!1966541))

(declare-fun bs!1564056 () Bool)

(declare-fun d!1966543 () Bool)

(assert (= bs!1564056 (and d!1966543 d!1966525)))

(declare-fun lambda!343144 () Int)

(assert (=> bs!1564056 (= lambda!343144 lambda!343127)))

(declare-fun bs!1564057 () Bool)

(assert (= bs!1564057 (and d!1966543 d!1966529)))

(assert (=> bs!1564057 (= lambda!343144 lambda!343128)))

(declare-fun bs!1564058 () Bool)

(assert (= bs!1564058 (and d!1966543 d!1966533)))

(assert (=> bs!1564058 (= lambda!343144 lambda!343131)))

(declare-fun b!6266784 () Bool)

(declare-fun e!3811690 () Regex!16187)

(declare-fun e!3811694 () Regex!16187)

(assert (=> b!6266784 (= e!3811690 e!3811694)))

(declare-fun c!1135249 () Bool)

(assert (=> b!6266784 (= c!1135249 ((_ is Cons!64736) (exprs!6071 (h!71185 zl!343))))))

(declare-fun b!6266785 () Bool)

(assert (=> b!6266785 (= e!3811694 EmptyExpr!16187)))

(declare-fun b!6266786 () Bool)

(declare-fun e!3811691 () Bool)

(declare-fun lt!2351233 () Regex!16187)

(assert (=> b!6266786 (= e!3811691 (isEmptyExpr!1593 lt!2351233))))

(declare-fun e!3811693 () Bool)

(assert (=> d!1966543 e!3811693))

(declare-fun res!2585305 () Bool)

(assert (=> d!1966543 (=> (not res!2585305) (not e!3811693))))

(assert (=> d!1966543 (= res!2585305 (validRegex!7923 lt!2351233))))

(assert (=> d!1966543 (= lt!2351233 e!3811690)))

(declare-fun c!1135251 () Bool)

(declare-fun e!3811692 () Bool)

(assert (=> d!1966543 (= c!1135251 e!3811692)))

(declare-fun res!2585306 () Bool)

(assert (=> d!1966543 (=> (not res!2585306) (not e!3811692))))

(assert (=> d!1966543 (= res!2585306 ((_ is Cons!64736) (exprs!6071 (h!71185 zl!343))))))

(assert (=> d!1966543 (forall!15312 (exprs!6071 (h!71185 zl!343)) lambda!343144)))

(assert (=> d!1966543 (= (generalisedConcat!1784 (exprs!6071 (h!71185 zl!343))) lt!2351233)))

(declare-fun b!6266787 () Bool)

(assert (=> b!6266787 (= e!3811692 (isEmpty!36766 (t!378414 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6266788 () Bool)

(declare-fun e!3811695 () Bool)

(assert (=> b!6266788 (= e!3811691 e!3811695)))

(declare-fun c!1135248 () Bool)

(assert (=> b!6266788 (= c!1135248 (isEmpty!36766 (tail!11960 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6266789 () Bool)

(assert (=> b!6266789 (= e!3811695 (isConcat!1116 lt!2351233))))

(declare-fun b!6266790 () Bool)

(assert (=> b!6266790 (= e!3811695 (= lt!2351233 (head!12875 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6266791 () Bool)

(assert (=> b!6266791 (= e!3811690 (h!71184 (exprs!6071 (h!71185 zl!343))))))

(declare-fun b!6266792 () Bool)

(assert (=> b!6266792 (= e!3811693 e!3811691)))

(declare-fun c!1135250 () Bool)

(assert (=> b!6266792 (= c!1135250 (isEmpty!36766 (exprs!6071 (h!71185 zl!343))))))

(declare-fun b!6266793 () Bool)

(assert (=> b!6266793 (= e!3811694 (Concat!25032 (h!71184 (exprs!6071 (h!71185 zl!343))) (generalisedConcat!1784 (t!378414 (exprs!6071 (h!71185 zl!343))))))))

(assert (= (and d!1966543 res!2585306) b!6266787))

(assert (= (and d!1966543 c!1135251) b!6266791))

(assert (= (and d!1966543 (not c!1135251)) b!6266784))

(assert (= (and b!6266784 c!1135249) b!6266793))

(assert (= (and b!6266784 (not c!1135249)) b!6266785))

(assert (= (and d!1966543 res!2585305) b!6266792))

(assert (= (and b!6266792 c!1135250) b!6266786))

(assert (= (and b!6266792 (not c!1135250)) b!6266788))

(assert (= (and b!6266788 c!1135248) b!6266790))

(assert (= (and b!6266788 (not c!1135248)) b!6266789))

(declare-fun m!7088634 () Bool)

(assert (=> d!1966543 m!7088634))

(declare-fun m!7088636 () Bool)

(assert (=> d!1966543 m!7088636))

(declare-fun m!7088638 () Bool)

(assert (=> b!6266793 m!7088638))

(declare-fun m!7088640 () Bool)

(assert (=> b!6266789 m!7088640))

(declare-fun m!7088642 () Bool)

(assert (=> b!6266790 m!7088642))

(declare-fun m!7088644 () Bool)

(assert (=> b!6266786 m!7088644))

(declare-fun m!7088646 () Bool)

(assert (=> b!6266788 m!7088646))

(assert (=> b!6266788 m!7088646))

(declare-fun m!7088648 () Bool)

(assert (=> b!6266788 m!7088648))

(declare-fun m!7088650 () Bool)

(assert (=> b!6266792 m!7088650))

(assert (=> b!6266787 m!7088054))

(assert (=> b!6266057 d!1966543))

(declare-fun call!529693 () (InoxSet Context!11142))

(declare-fun bm!529685 () Bool)

(declare-fun c!1135253 () Bool)

(declare-fun call!529695 () List!64860)

(assert (=> bm!529685 (= call!529693 (derivationStepZipperDown!1435 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292)))) (ite c!1135253 lt!2351103 (Context!11143 call!529695)) (h!71186 s!2326)))))

(declare-fun bm!529686 () Bool)

(declare-fun c!1135254 () Bool)

(declare-fun call!529694 () (InoxSet Context!11142))

(declare-fun c!1135256 () Bool)

(declare-fun call!529690 () List!64860)

(assert (=> bm!529686 (= call!529694 (derivationStepZipperDown!1435 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292)))))) (ite (or c!1135253 c!1135256) lt!2351103 (Context!11143 call!529690)) (h!71186 s!2326)))))

(declare-fun b!6266794 () Bool)

(declare-fun c!1135255 () Bool)

(assert (=> b!6266794 (= c!1135255 ((_ is Star!16187) (regTwo!32886 (regOne!32886 r!7292))))))

(declare-fun e!3811696 () (InoxSet Context!11142))

(declare-fun e!3811697 () (InoxSet Context!11142))

(assert (=> b!6266794 (= e!3811696 e!3811697)))

(declare-fun bm!529687 () Bool)

(declare-fun call!529691 () (InoxSet Context!11142))

(declare-fun call!529692 () (InoxSet Context!11142))

(assert (=> bm!529687 (= call!529691 call!529692)))

(declare-fun d!1966545 () Bool)

(declare-fun c!1135252 () Bool)

(assert (=> d!1966545 (= c!1135252 (and ((_ is ElementMatch!16187) (regTwo!32886 (regOne!32886 r!7292))) (= (c!1135024 (regTwo!32886 (regOne!32886 r!7292))) (h!71186 s!2326))))))

(declare-fun e!3811699 () (InoxSet Context!11142))

(assert (=> d!1966545 (= (derivationStepZipperDown!1435 (regTwo!32886 (regOne!32886 r!7292)) lt!2351103 (h!71186 s!2326)) e!3811699)))

(declare-fun b!6266795 () Bool)

(assert (=> b!6266795 (= e!3811699 (store ((as const (Array Context!11142 Bool)) false) lt!2351103 true))))

(declare-fun b!6266796 () Bool)

(declare-fun e!3811701 () (InoxSet Context!11142))

(assert (=> b!6266796 (= e!3811701 ((_ map or) call!529694 call!529693))))

(declare-fun b!6266797 () Bool)

(assert (=> b!6266797 (= e!3811697 call!529691)))

(declare-fun b!6266798 () Bool)

(assert (=> b!6266798 (= e!3811699 e!3811701)))

(assert (=> b!6266798 (= c!1135253 ((_ is Union!16187) (regTwo!32886 (regOne!32886 r!7292))))))

(declare-fun bm!529688 () Bool)

(assert (=> bm!529688 (= call!529692 call!529694)))

(declare-fun b!6266799 () Bool)

(declare-fun e!3811698 () (InoxSet Context!11142))

(assert (=> b!6266799 (= e!3811698 ((_ map or) call!529693 call!529692))))

(declare-fun b!6266800 () Bool)

(assert (=> b!6266800 (= e!3811697 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6266801 () Bool)

(declare-fun e!3811700 () Bool)

(assert (=> b!6266801 (= e!3811700 (nullable!6180 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292)))))))

(declare-fun b!6266802 () Bool)

(assert (=> b!6266802 (= e!3811696 call!529691)))

(declare-fun bm!529689 () Bool)

(assert (=> bm!529689 (= call!529690 call!529695)))

(declare-fun b!6266803 () Bool)

(assert (=> b!6266803 (= e!3811698 e!3811696)))

(assert (=> b!6266803 (= c!1135254 ((_ is Concat!25032) (regTwo!32886 (regOne!32886 r!7292))))))

(declare-fun b!6266804 () Bool)

(assert (=> b!6266804 (= c!1135256 e!3811700)))

(declare-fun res!2585307 () Bool)

(assert (=> b!6266804 (=> (not res!2585307) (not e!3811700))))

(assert (=> b!6266804 (= res!2585307 ((_ is Concat!25032) (regTwo!32886 (regOne!32886 r!7292))))))

(assert (=> b!6266804 (= e!3811701 e!3811698)))

(declare-fun bm!529690 () Bool)

(assert (=> bm!529690 (= call!529695 ($colon$colon!2052 (exprs!6071 lt!2351103) (ite (or c!1135256 c!1135254) (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (regTwo!32886 (regOne!32886 r!7292)))))))

(assert (= (and d!1966545 c!1135252) b!6266795))

(assert (= (and d!1966545 (not c!1135252)) b!6266798))

(assert (= (and b!6266798 c!1135253) b!6266796))

(assert (= (and b!6266798 (not c!1135253)) b!6266804))

(assert (= (and b!6266804 res!2585307) b!6266801))

(assert (= (and b!6266804 c!1135256) b!6266799))

(assert (= (and b!6266804 (not c!1135256)) b!6266803))

(assert (= (and b!6266803 c!1135254) b!6266802))

(assert (= (and b!6266803 (not c!1135254)) b!6266794))

(assert (= (and b!6266794 c!1135255) b!6266797))

(assert (= (and b!6266794 (not c!1135255)) b!6266800))

(assert (= (or b!6266802 b!6266797) bm!529689))

(assert (= (or b!6266802 b!6266797) bm!529687))

(assert (= (or b!6266799 bm!529689) bm!529690))

(assert (= (or b!6266799 bm!529687) bm!529688))

(assert (= (or b!6266796 b!6266799) bm!529685))

(assert (= (or b!6266796 bm!529688) bm!529686))

(declare-fun m!7088652 () Bool)

(assert (=> bm!529685 m!7088652))

(declare-fun m!7088654 () Bool)

(assert (=> bm!529690 m!7088654))

(declare-fun m!7088656 () Bool)

(assert (=> b!6266801 m!7088656))

(assert (=> b!6266795 m!7088470))

(declare-fun m!7088658 () Bool)

(assert (=> bm!529686 m!7088658))

(assert (=> b!6266035 d!1966545))

(declare-fun call!529701 () List!64860)

(declare-fun call!529699 () (InoxSet Context!11142))

(declare-fun c!1135258 () Bool)

(declare-fun bm!529691 () Bool)

(assert (=> bm!529691 (= call!529699 (derivationStepZipperDown!1435 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292)))) (ite c!1135258 lt!2351109 (Context!11143 call!529701)) (h!71186 s!2326)))))

(declare-fun call!529700 () (InoxSet Context!11142))

(declare-fun c!1135261 () Bool)

(declare-fun c!1135259 () Bool)

(declare-fun bm!529692 () Bool)

(declare-fun call!529696 () List!64860)

(assert (=> bm!529692 (= call!529700 (derivationStepZipperDown!1435 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292)))))) (ite (or c!1135258 c!1135261) lt!2351109 (Context!11143 call!529696)) (h!71186 s!2326)))))

(declare-fun b!6266805 () Bool)

(declare-fun c!1135260 () Bool)

(assert (=> b!6266805 (= c!1135260 ((_ is Star!16187) (regOne!32886 (regOne!32886 r!7292))))))

(declare-fun e!3811702 () (InoxSet Context!11142))

(declare-fun e!3811703 () (InoxSet Context!11142))

(assert (=> b!6266805 (= e!3811702 e!3811703)))

(declare-fun bm!529693 () Bool)

(declare-fun call!529697 () (InoxSet Context!11142))

(declare-fun call!529698 () (InoxSet Context!11142))

(assert (=> bm!529693 (= call!529697 call!529698)))

(declare-fun d!1966547 () Bool)

(declare-fun c!1135257 () Bool)

(assert (=> d!1966547 (= c!1135257 (and ((_ is ElementMatch!16187) (regOne!32886 (regOne!32886 r!7292))) (= (c!1135024 (regOne!32886 (regOne!32886 r!7292))) (h!71186 s!2326))))))

(declare-fun e!3811705 () (InoxSet Context!11142))

(assert (=> d!1966547 (= (derivationStepZipperDown!1435 (regOne!32886 (regOne!32886 r!7292)) lt!2351109 (h!71186 s!2326)) e!3811705)))

(declare-fun b!6266806 () Bool)

(assert (=> b!6266806 (= e!3811705 (store ((as const (Array Context!11142 Bool)) false) lt!2351109 true))))

(declare-fun b!6266807 () Bool)

(declare-fun e!3811707 () (InoxSet Context!11142))

(assert (=> b!6266807 (= e!3811707 ((_ map or) call!529700 call!529699))))

(declare-fun b!6266808 () Bool)

(assert (=> b!6266808 (= e!3811703 call!529697)))

(declare-fun b!6266809 () Bool)

(assert (=> b!6266809 (= e!3811705 e!3811707)))

(assert (=> b!6266809 (= c!1135258 ((_ is Union!16187) (regOne!32886 (regOne!32886 r!7292))))))

(declare-fun bm!529694 () Bool)

(assert (=> bm!529694 (= call!529698 call!529700)))

(declare-fun b!6266810 () Bool)

(declare-fun e!3811704 () (InoxSet Context!11142))

(assert (=> b!6266810 (= e!3811704 ((_ map or) call!529699 call!529698))))

(declare-fun b!6266811 () Bool)

(assert (=> b!6266811 (= e!3811703 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6266812 () Bool)

(declare-fun e!3811706 () Bool)

(assert (=> b!6266812 (= e!3811706 (nullable!6180 (regOne!32886 (regOne!32886 (regOne!32886 r!7292)))))))

(declare-fun b!6266813 () Bool)

(assert (=> b!6266813 (= e!3811702 call!529697)))

(declare-fun bm!529695 () Bool)

(assert (=> bm!529695 (= call!529696 call!529701)))

(declare-fun b!6266814 () Bool)

(assert (=> b!6266814 (= e!3811704 e!3811702)))

(assert (=> b!6266814 (= c!1135259 ((_ is Concat!25032) (regOne!32886 (regOne!32886 r!7292))))))

(declare-fun b!6266815 () Bool)

(assert (=> b!6266815 (= c!1135261 e!3811706)))

(declare-fun res!2585308 () Bool)

(assert (=> b!6266815 (=> (not res!2585308) (not e!3811706))))

(assert (=> b!6266815 (= res!2585308 ((_ is Concat!25032) (regOne!32886 (regOne!32886 r!7292))))))

(assert (=> b!6266815 (= e!3811707 e!3811704)))

(declare-fun bm!529696 () Bool)

(assert (=> bm!529696 (= call!529701 ($colon$colon!2052 (exprs!6071 lt!2351109) (ite (or c!1135261 c!1135259) (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 r!7292)))))))

(assert (= (and d!1966547 c!1135257) b!6266806))

(assert (= (and d!1966547 (not c!1135257)) b!6266809))

(assert (= (and b!6266809 c!1135258) b!6266807))

(assert (= (and b!6266809 (not c!1135258)) b!6266815))

(assert (= (and b!6266815 res!2585308) b!6266812))

(assert (= (and b!6266815 c!1135261) b!6266810))

(assert (= (and b!6266815 (not c!1135261)) b!6266814))

(assert (= (and b!6266814 c!1135259) b!6266813))

(assert (= (and b!6266814 (not c!1135259)) b!6266805))

(assert (= (and b!6266805 c!1135260) b!6266808))

(assert (= (and b!6266805 (not c!1135260)) b!6266811))

(assert (= (or b!6266813 b!6266808) bm!529695))

(assert (= (or b!6266813 b!6266808) bm!529693))

(assert (= (or b!6266810 bm!529695) bm!529696))

(assert (= (or b!6266810 bm!529693) bm!529694))

(assert (= (or b!6266807 b!6266810) bm!529691))

(assert (= (or b!6266807 bm!529694) bm!529692))

(declare-fun m!7088660 () Bool)

(assert (=> bm!529691 m!7088660))

(declare-fun m!7088662 () Bool)

(assert (=> bm!529696 m!7088662))

(declare-fun m!7088664 () Bool)

(assert (=> b!6266812 m!7088664))

(assert (=> b!6266806 m!7088020))

(declare-fun m!7088666 () Bool)

(assert (=> bm!529692 m!7088666))

(assert (=> b!6266035 d!1966547))

(declare-fun bs!1564059 () Bool)

(declare-fun d!1966549 () Bool)

(assert (= bs!1564059 (and d!1966549 b!6266061)))

(declare-fun lambda!343147 () Int)

(assert (=> bs!1564059 (= lambda!343147 lambda!343069)))

(assert (=> d!1966549 true))

(assert (=> d!1966549 (= (derivationStepZipper!2153 lt!2351077 (h!71186 s!2326)) (flatMap!1692 lt!2351077 lambda!343147))))

(declare-fun bs!1564060 () Bool)

(assert (= bs!1564060 d!1966549))

(declare-fun m!7088668 () Bool)

(assert (=> bs!1564060 m!7088668))

(assert (=> b!6266058 d!1966549))

(declare-fun d!1966551 () Bool)

(assert (=> d!1966551 (= (flatMap!1692 lt!2351077 lambda!343069) (dynLambda!25589 lambda!343069 lt!2351107))))

(declare-fun lt!2351234 () Unit!158079)

(assert (=> d!1966551 (= lt!2351234 (choose!46490 lt!2351077 lt!2351107 lambda!343069))))

(assert (=> d!1966551 (= lt!2351077 (store ((as const (Array Context!11142 Bool)) false) lt!2351107 true))))

(assert (=> d!1966551 (= (lemmaFlatMapOnSingletonSet!1218 lt!2351077 lt!2351107 lambda!343069) lt!2351234)))

(declare-fun b_lambda!238587 () Bool)

(assert (=> (not b_lambda!238587) (not d!1966551)))

(declare-fun bs!1564061 () Bool)

(assert (= bs!1564061 d!1966551))

(assert (=> bs!1564061 m!7088014))

(declare-fun m!7088670 () Bool)

(assert (=> bs!1564061 m!7088670))

(declare-fun m!7088672 () Bool)

(assert (=> bs!1564061 m!7088672))

(assert (=> bs!1564061 m!7088022))

(assert (=> b!6266058 d!1966551))

(declare-fun b!6266818 () Bool)

(declare-fun call!529702 () (InoxSet Context!11142))

(declare-fun e!3811710 () (InoxSet Context!11142))

(assert (=> b!6266818 (= e!3811710 ((_ map or) call!529702 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 lt!2351107))) (h!71186 s!2326))))))

(declare-fun b!6266819 () Bool)

(declare-fun e!3811708 () (InoxSet Context!11142))

(assert (=> b!6266819 (= e!3811708 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1966553 () Bool)

(declare-fun c!1135264 () Bool)

(declare-fun e!3811709 () Bool)

(assert (=> d!1966553 (= c!1135264 e!3811709)))

(declare-fun res!2585309 () Bool)

(assert (=> d!1966553 (=> (not res!2585309) (not e!3811709))))

(assert (=> d!1966553 (= res!2585309 ((_ is Cons!64736) (exprs!6071 lt!2351107)))))

(assert (=> d!1966553 (= (derivationStepZipperUp!1361 lt!2351107 (h!71186 s!2326)) e!3811710)))

(declare-fun bm!529697 () Bool)

(assert (=> bm!529697 (= call!529702 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 lt!2351107)) (Context!11143 (t!378414 (exprs!6071 lt!2351107))) (h!71186 s!2326)))))

(declare-fun b!6266820 () Bool)

(assert (=> b!6266820 (= e!3811709 (nullable!6180 (h!71184 (exprs!6071 lt!2351107))))))

(declare-fun b!6266821 () Bool)

(assert (=> b!6266821 (= e!3811708 call!529702)))

(declare-fun b!6266822 () Bool)

(assert (=> b!6266822 (= e!3811710 e!3811708)))

(declare-fun c!1135265 () Bool)

(assert (=> b!6266822 (= c!1135265 ((_ is Cons!64736) (exprs!6071 lt!2351107)))))

(assert (= (and d!1966553 res!2585309) b!6266820))

(assert (= (and d!1966553 c!1135264) b!6266818))

(assert (= (and d!1966553 (not c!1135264)) b!6266822))

(assert (= (and b!6266822 c!1135265) b!6266821))

(assert (= (and b!6266822 (not c!1135265)) b!6266819))

(assert (= (or b!6266818 b!6266821) bm!529697))

(declare-fun m!7088674 () Bool)

(assert (=> b!6266818 m!7088674))

(declare-fun m!7088676 () Bool)

(assert (=> bm!529697 m!7088676))

(declare-fun m!7088678 () Bool)

(assert (=> b!6266820 m!7088678))

(assert (=> b!6266058 d!1966553))

(declare-fun d!1966555 () Bool)

(assert (=> d!1966555 (= (flatMap!1692 lt!2351077 lambda!343069) (choose!46489 lt!2351077 lambda!343069))))

(declare-fun bs!1564062 () Bool)

(assert (= bs!1564062 d!1966555))

(declare-fun m!7088680 () Bool)

(assert (=> bs!1564062 m!7088680))

(assert (=> b!6266058 d!1966555))

(declare-fun call!529703 () (InoxSet Context!11142))

(declare-fun e!3811713 () (InoxSet Context!11142))

(declare-fun b!6266823 () Bool)

(assert (=> b!6266823 (= e!3811713 ((_ map or) call!529703 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 lt!2351109))) (h!71186 s!2326))))))

(declare-fun b!6266824 () Bool)

(declare-fun e!3811711 () (InoxSet Context!11142))

(assert (=> b!6266824 (= e!3811711 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1966557 () Bool)

(declare-fun c!1135266 () Bool)

(declare-fun e!3811712 () Bool)

(assert (=> d!1966557 (= c!1135266 e!3811712)))

(declare-fun res!2585310 () Bool)

(assert (=> d!1966557 (=> (not res!2585310) (not e!3811712))))

(assert (=> d!1966557 (= res!2585310 ((_ is Cons!64736) (exprs!6071 lt!2351109)))))

(assert (=> d!1966557 (= (derivationStepZipperUp!1361 lt!2351109 (h!71186 s!2326)) e!3811713)))

(declare-fun bm!529698 () Bool)

(assert (=> bm!529698 (= call!529703 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 lt!2351109)) (Context!11143 (t!378414 (exprs!6071 lt!2351109))) (h!71186 s!2326)))))

(declare-fun b!6266825 () Bool)

(assert (=> b!6266825 (= e!3811712 (nullable!6180 (h!71184 (exprs!6071 lt!2351109))))))

(declare-fun b!6266826 () Bool)

(assert (=> b!6266826 (= e!3811711 call!529703)))

(declare-fun b!6266827 () Bool)

(assert (=> b!6266827 (= e!3811713 e!3811711)))

(declare-fun c!1135267 () Bool)

(assert (=> b!6266827 (= c!1135267 ((_ is Cons!64736) (exprs!6071 lt!2351109)))))

(assert (= (and d!1966557 res!2585310) b!6266825))

(assert (= (and d!1966557 c!1135266) b!6266823))

(assert (= (and d!1966557 (not c!1135266)) b!6266827))

(assert (= (and b!6266827 c!1135267) b!6266826))

(assert (= (and b!6266827 (not c!1135267)) b!6266824))

(assert (= (or b!6266823 b!6266826) bm!529698))

(declare-fun m!7088682 () Bool)

(assert (=> b!6266823 m!7088682))

(declare-fun m!7088684 () Bool)

(assert (=> bm!529698 m!7088684))

(declare-fun m!7088686 () Bool)

(assert (=> b!6266825 m!7088686))

(assert (=> b!6266058 d!1966557))

(declare-fun d!1966559 () Bool)

(declare-fun e!3811716 () Bool)

(assert (=> d!1966559 e!3811716))

(declare-fun res!2585313 () Bool)

(assert (=> d!1966559 (=> (not res!2585313) (not e!3811716))))

(declare-fun lt!2351237 () List!64861)

(declare-fun noDuplicate!2021 (List!64861) Bool)

(assert (=> d!1966559 (= res!2585313 (noDuplicate!2021 lt!2351237))))

(declare-fun choose!46497 ((InoxSet Context!11142)) List!64861)

(assert (=> d!1966559 (= lt!2351237 (choose!46497 z!1189))))

(assert (=> d!1966559 (= (toList!9971 z!1189) lt!2351237)))

(declare-fun b!6266830 () Bool)

(declare-fun content!12156 (List!64861) (InoxSet Context!11142))

(assert (=> b!6266830 (= e!3811716 (= (content!12156 lt!2351237) z!1189))))

(assert (= (and d!1966559 res!2585313) b!6266830))

(declare-fun m!7088688 () Bool)

(assert (=> d!1966559 m!7088688))

(declare-fun m!7088690 () Bool)

(assert (=> d!1966559 m!7088690))

(declare-fun m!7088692 () Bool)

(assert (=> b!6266830 m!7088692))

(assert (=> b!6266037 d!1966559))

(declare-fun d!1966561 () Bool)

(declare-fun lt!2351240 () Regex!16187)

(assert (=> d!1966561 (validRegex!7923 lt!2351240)))

(assert (=> d!1966561 (= lt!2351240 (generalisedUnion!2031 (unfocusZipperList!1608 zl!343)))))

(assert (=> d!1966561 (= (unfocusZipper!1929 zl!343) lt!2351240)))

(declare-fun bs!1564063 () Bool)

(assert (= bs!1564063 d!1966561))

(declare-fun m!7088694 () Bool)

(assert (=> bs!1564063 m!7088694))

(assert (=> bs!1564063 m!7087982))

(assert (=> bs!1564063 m!7087982))

(assert (=> bs!1564063 m!7087984))

(assert (=> b!6266036 d!1966561))

(declare-fun d!1966563 () Bool)

(declare-fun c!1135268 () Bool)

(assert (=> d!1966563 (= c!1135268 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811717 () Bool)

(assert (=> d!1966563 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) (t!378416 s!2326)) e!3811717)))

(declare-fun b!6266831 () Bool)

(assert (=> b!6266831 (= e!3811717 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326))))))

(declare-fun b!6266832 () Bool)

(assert (=> b!6266832 (= e!3811717 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966563 c!1135268) b!6266831))

(assert (= (and d!1966563 (not c!1135268)) b!6266832))

(declare-fun m!7088696 () Bool)

(assert (=> d!1966563 m!7088696))

(assert (=> b!6266831 m!7088030))

(declare-fun m!7088698 () Bool)

(assert (=> b!6266831 m!7088698))

(declare-fun m!7088700 () Bool)

(assert (=> b!6266832 m!7088700))

(assert (=> b!6266832 m!7088030))

(assert (=> b!6266832 m!7088700))

(declare-fun m!7088702 () Bool)

(assert (=> b!6266832 m!7088702))

(declare-fun m!7088704 () Bool)

(assert (=> b!6266832 m!7088704))

(assert (=> b!6266832 m!7088702))

(assert (=> b!6266832 m!7088704))

(declare-fun m!7088706 () Bool)

(assert (=> b!6266832 m!7088706))

(assert (=> b!6266060 d!1966563))

(declare-fun bs!1564064 () Bool)

(declare-fun d!1966565 () Bool)

(assert (= bs!1564064 (and d!1966565 b!6266061)))

(declare-fun lambda!343148 () Int)

(assert (=> bs!1564064 (= lambda!343148 lambda!343069)))

(declare-fun bs!1564065 () Bool)

(assert (= bs!1564065 (and d!1966565 d!1966549)))

(assert (=> bs!1564065 (= lambda!343148 lambda!343147)))

(assert (=> d!1966565 true))

(assert (=> d!1966565 (= (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) (flatMap!1692 lt!2351105 lambda!343148))))

(declare-fun bs!1564066 () Bool)

(assert (= bs!1564066 d!1966565))

(declare-fun m!7088708 () Bool)

(assert (=> bs!1564066 m!7088708))

(assert (=> b!6266060 d!1966565))

(declare-fun bs!1564067 () Bool)

(declare-fun d!1966567 () Bool)

(assert (= bs!1564067 (and d!1966567 d!1966525)))

(declare-fun lambda!343149 () Int)

(assert (=> bs!1564067 (= lambda!343149 lambda!343127)))

(declare-fun bs!1564068 () Bool)

(assert (= bs!1564068 (and d!1966567 d!1966529)))

(assert (=> bs!1564068 (= lambda!343149 lambda!343128)))

(declare-fun bs!1564069 () Bool)

(assert (= bs!1564069 (and d!1966567 d!1966533)))

(assert (=> bs!1564069 (= lambda!343149 lambda!343131)))

(declare-fun bs!1564070 () Bool)

(assert (= bs!1564070 (and d!1966567 d!1966543)))

(assert (=> bs!1564070 (= lambda!343149 lambda!343144)))

(assert (=> d!1966567 (= (inv!83714 setElem!42608) (forall!15312 (exprs!6071 setElem!42608) lambda!343149))))

(declare-fun bs!1564071 () Bool)

(assert (= bs!1564071 d!1966567))

(declare-fun m!7088710 () Bool)

(assert (=> bs!1564071 m!7088710))

(assert (=> setNonEmpty!42608 d!1966567))

(declare-fun d!1966569 () Bool)

(assert (=> d!1966569 (= (nullable!6180 (regOne!32886 (regOne!32886 r!7292))) (nullableFct!2132 (regOne!32886 (regOne!32886 r!7292))))))

(declare-fun bs!1564072 () Bool)

(assert (= bs!1564072 d!1966569))

(declare-fun m!7088712 () Bool)

(assert (=> bs!1564072 m!7088712))

(assert (=> b!6266039 d!1966569))

(declare-fun d!1966571 () Bool)

(declare-fun c!1135269 () Bool)

(assert (=> d!1966571 (= c!1135269 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811718 () Bool)

(assert (=> d!1966571 (= (matchZipper!2199 lt!2351110 (t!378416 s!2326)) e!3811718)))

(declare-fun b!6266833 () Bool)

(assert (=> b!6266833 (= e!3811718 (nullableZipper!1957 lt!2351110))))

(declare-fun b!6266834 () Bool)

(assert (=> b!6266834 (= e!3811718 (matchZipper!2199 (derivationStepZipper!2153 lt!2351110 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966571 c!1135269) b!6266833))

(assert (= (and d!1966571 (not c!1135269)) b!6266834))

(assert (=> d!1966571 m!7088696))

(declare-fun m!7088714 () Bool)

(assert (=> b!6266833 m!7088714))

(assert (=> b!6266834 m!7088700))

(assert (=> b!6266834 m!7088700))

(declare-fun m!7088716 () Bool)

(assert (=> b!6266834 m!7088716))

(assert (=> b!6266834 m!7088704))

(assert (=> b!6266834 m!7088716))

(assert (=> b!6266834 m!7088704))

(declare-fun m!7088718 () Bool)

(assert (=> b!6266834 m!7088718))

(assert (=> b!6266071 d!1966571))

(declare-fun bs!1564073 () Bool)

(declare-fun b!6266877 () Bool)

(assert (= bs!1564073 (and b!6266877 b!6266040)))

(declare-fun lambda!343154 () Int)

(assert (=> bs!1564073 (not (= lambda!343154 lambda!343067))))

(declare-fun bs!1564074 () Bool)

(assert (= bs!1564074 (and b!6266877 d!1966515)))

(assert (=> bs!1564074 (not (= lambda!343154 lambda!343124))))

(declare-fun bs!1564075 () Bool)

(assert (= bs!1564075 (and b!6266877 d!1966513)))

(assert (=> bs!1564075 (not (= lambda!343154 lambda!343118))))

(assert (=> bs!1564074 (not (= lambda!343154 lambda!343123))))

(assert (=> bs!1564073 (not (= lambda!343154 lambda!343068))))

(assert (=> b!6266877 true))

(assert (=> b!6266877 true))

(declare-fun bs!1564076 () Bool)

(declare-fun b!6266871 () Bool)

(assert (= bs!1564076 (and b!6266871 b!6266040)))

(declare-fun lambda!343155 () Int)

(assert (=> bs!1564076 (not (= lambda!343155 lambda!343067))))

(declare-fun bs!1564077 () Bool)

(assert (= bs!1564077 (and b!6266871 b!6266877)))

(assert (=> bs!1564077 (not (= lambda!343155 lambda!343154))))

(declare-fun bs!1564078 () Bool)

(assert (= bs!1564078 (and b!6266871 d!1966515)))

(assert (=> bs!1564078 (= lambda!343155 lambda!343124)))

(declare-fun bs!1564079 () Bool)

(assert (= bs!1564079 (and b!6266871 d!1966513)))

(assert (=> bs!1564079 (not (= lambda!343155 lambda!343118))))

(assert (=> bs!1564078 (not (= lambda!343155 lambda!343123))))

(assert (=> bs!1564076 (= lambda!343155 lambda!343068)))

(assert (=> b!6266871 true))

(assert (=> b!6266871 true))

(declare-fun call!529708 () Bool)

(declare-fun c!1135280 () Bool)

(declare-fun bm!529703 () Bool)

(assert (=> bm!529703 (= call!529708 (Exists!3257 (ite c!1135280 lambda!343154 lambda!343155)))))

(declare-fun b!6266867 () Bool)

(declare-fun c!1135278 () Bool)

(assert (=> b!6266867 (= c!1135278 ((_ is ElementMatch!16187) r!7292))))

(declare-fun e!3811738 () Bool)

(declare-fun e!3811740 () Bool)

(assert (=> b!6266867 (= e!3811738 e!3811740)))

(declare-fun b!6266868 () Bool)

(declare-fun e!3811743 () Bool)

(assert (=> b!6266868 (= e!3811743 e!3811738)))

(declare-fun res!2585332 () Bool)

(assert (=> b!6266868 (= res!2585332 (not ((_ is EmptyLang!16187) r!7292)))))

(assert (=> b!6266868 (=> (not res!2585332) (not e!3811738))))

(declare-fun b!6266869 () Bool)

(declare-fun c!1135281 () Bool)

(assert (=> b!6266869 (= c!1135281 ((_ is Union!16187) r!7292))))

(declare-fun e!3811741 () Bool)

(assert (=> b!6266869 (= e!3811740 e!3811741)))

(declare-fun b!6266870 () Bool)

(declare-fun e!3811739 () Bool)

(assert (=> b!6266870 (= e!3811739 (matchRSpec!3288 (regTwo!32887 r!7292) s!2326))))

(declare-fun e!3811737 () Bool)

(assert (=> b!6266871 (= e!3811737 call!529708)))

(declare-fun b!6266872 () Bool)

(declare-fun call!529709 () Bool)

(assert (=> b!6266872 (= e!3811743 call!529709)))

(declare-fun b!6266873 () Bool)

(assert (=> b!6266873 (= e!3811741 e!3811737)))

(assert (=> b!6266873 (= c!1135280 ((_ is Star!16187) r!7292))))

(declare-fun b!6266874 () Bool)

(assert (=> b!6266874 (= e!3811741 e!3811739)))

(declare-fun res!2585331 () Bool)

(assert (=> b!6266874 (= res!2585331 (matchRSpec!3288 (regOne!32887 r!7292) s!2326))))

(assert (=> b!6266874 (=> res!2585331 e!3811739)))

(declare-fun d!1966573 () Bool)

(declare-fun c!1135279 () Bool)

(assert (=> d!1966573 (= c!1135279 ((_ is EmptyExpr!16187) r!7292))))

(assert (=> d!1966573 (= (matchRSpec!3288 r!7292 s!2326) e!3811743)))

(declare-fun b!6266875 () Bool)

(declare-fun res!2585330 () Bool)

(declare-fun e!3811742 () Bool)

(assert (=> b!6266875 (=> res!2585330 e!3811742)))

(assert (=> b!6266875 (= res!2585330 call!529709)))

(assert (=> b!6266875 (= e!3811737 e!3811742)))

(declare-fun b!6266876 () Bool)

(assert (=> b!6266876 (= e!3811740 (= s!2326 (Cons!64738 (c!1135024 r!7292) Nil!64738)))))

(assert (=> b!6266877 (= e!3811742 call!529708)))

(declare-fun bm!529704 () Bool)

(assert (=> bm!529704 (= call!529709 (isEmpty!36771 s!2326))))

(assert (= (and d!1966573 c!1135279) b!6266872))

(assert (= (and d!1966573 (not c!1135279)) b!6266868))

(assert (= (and b!6266868 res!2585332) b!6266867))

(assert (= (and b!6266867 c!1135278) b!6266876))

(assert (= (and b!6266867 (not c!1135278)) b!6266869))

(assert (= (and b!6266869 c!1135281) b!6266874))

(assert (= (and b!6266869 (not c!1135281)) b!6266873))

(assert (= (and b!6266874 (not res!2585331)) b!6266870))

(assert (= (and b!6266873 c!1135280) b!6266875))

(assert (= (and b!6266873 (not c!1135280)) b!6266871))

(assert (= (and b!6266875 (not res!2585330)) b!6266877))

(assert (= (or b!6266877 b!6266871) bm!529703))

(assert (= (or b!6266872 b!6266875) bm!529704))

(declare-fun m!7088720 () Bool)

(assert (=> bm!529703 m!7088720))

(declare-fun m!7088722 () Bool)

(assert (=> b!6266870 m!7088722))

(declare-fun m!7088724 () Bool)

(assert (=> b!6266874 m!7088724))

(assert (=> bm!529704 m!7088532))

(assert (=> b!6266051 d!1966573))

(declare-fun b!6266878 () Bool)

(declare-fun e!3811749 () Bool)

(declare-fun lt!2351241 () Bool)

(declare-fun call!529710 () Bool)

(assert (=> b!6266878 (= e!3811749 (= lt!2351241 call!529710))))

(declare-fun b!6266879 () Bool)

(declare-fun e!3811745 () Bool)

(assert (=> b!6266879 (= e!3811745 (not lt!2351241))))

(declare-fun b!6266880 () Bool)

(declare-fun res!2585338 () Bool)

(declare-fun e!3811747 () Bool)

(assert (=> b!6266880 (=> res!2585338 e!3811747)))

(assert (=> b!6266880 (= res!2585338 (not ((_ is ElementMatch!16187) r!7292)))))

(assert (=> b!6266880 (= e!3811745 e!3811747)))

(declare-fun b!6266881 () Bool)

(declare-fun e!3811746 () Bool)

(assert (=> b!6266881 (= e!3811746 (= (head!12874 s!2326) (c!1135024 r!7292)))))

(declare-fun b!6266882 () Bool)

(declare-fun res!2585333 () Bool)

(assert (=> b!6266882 (=> (not res!2585333) (not e!3811746))))

(assert (=> b!6266882 (= res!2585333 (not call!529710))))

(declare-fun b!6266884 () Bool)

(declare-fun res!2585340 () Bool)

(assert (=> b!6266884 (=> (not res!2585340) (not e!3811746))))

(assert (=> b!6266884 (= res!2585340 (isEmpty!36771 (tail!11959 s!2326)))))

(declare-fun b!6266885 () Bool)

(declare-fun e!3811744 () Bool)

(declare-fun e!3811748 () Bool)

(assert (=> b!6266885 (= e!3811744 e!3811748)))

(declare-fun res!2585339 () Bool)

(assert (=> b!6266885 (=> res!2585339 e!3811748)))

(assert (=> b!6266885 (= res!2585339 call!529710)))

(declare-fun b!6266886 () Bool)

(declare-fun e!3811750 () Bool)

(assert (=> b!6266886 (= e!3811750 (matchR!8370 (derivativeStep!4896 r!7292 (head!12874 s!2326)) (tail!11959 s!2326)))))

(declare-fun b!6266887 () Bool)

(assert (=> b!6266887 (= e!3811748 (not (= (head!12874 s!2326) (c!1135024 r!7292))))))

(declare-fun b!6266888 () Bool)

(declare-fun res!2585336 () Bool)

(assert (=> b!6266888 (=> res!2585336 e!3811747)))

(assert (=> b!6266888 (= res!2585336 e!3811746)))

(declare-fun res!2585334 () Bool)

(assert (=> b!6266888 (=> (not res!2585334) (not e!3811746))))

(assert (=> b!6266888 (= res!2585334 lt!2351241)))

(declare-fun b!6266889 () Bool)

(declare-fun res!2585337 () Bool)

(assert (=> b!6266889 (=> res!2585337 e!3811748)))

(assert (=> b!6266889 (= res!2585337 (not (isEmpty!36771 (tail!11959 s!2326))))))

(declare-fun b!6266890 () Bool)

(assert (=> b!6266890 (= e!3811750 (nullable!6180 r!7292))))

(declare-fun bm!529705 () Bool)

(assert (=> bm!529705 (= call!529710 (isEmpty!36771 s!2326))))

(declare-fun b!6266891 () Bool)

(assert (=> b!6266891 (= e!3811747 e!3811744)))

(declare-fun res!2585335 () Bool)

(assert (=> b!6266891 (=> (not res!2585335) (not e!3811744))))

(assert (=> b!6266891 (= res!2585335 (not lt!2351241))))

(declare-fun d!1966575 () Bool)

(assert (=> d!1966575 e!3811749))

(declare-fun c!1135284 () Bool)

(assert (=> d!1966575 (= c!1135284 ((_ is EmptyExpr!16187) r!7292))))

(assert (=> d!1966575 (= lt!2351241 e!3811750)))

(declare-fun c!1135283 () Bool)

(assert (=> d!1966575 (= c!1135283 (isEmpty!36771 s!2326))))

(assert (=> d!1966575 (validRegex!7923 r!7292)))

(assert (=> d!1966575 (= (matchR!8370 r!7292 s!2326) lt!2351241)))

(declare-fun b!6266883 () Bool)

(assert (=> b!6266883 (= e!3811749 e!3811745)))

(declare-fun c!1135282 () Bool)

(assert (=> b!6266883 (= c!1135282 ((_ is EmptyLang!16187) r!7292))))

(assert (= (and d!1966575 c!1135283) b!6266890))

(assert (= (and d!1966575 (not c!1135283)) b!6266886))

(assert (= (and d!1966575 c!1135284) b!6266878))

(assert (= (and d!1966575 (not c!1135284)) b!6266883))

(assert (= (and b!6266883 c!1135282) b!6266879))

(assert (= (and b!6266883 (not c!1135282)) b!6266880))

(assert (= (and b!6266880 (not res!2585338)) b!6266888))

(assert (= (and b!6266888 res!2585334) b!6266882))

(assert (= (and b!6266882 res!2585333) b!6266884))

(assert (= (and b!6266884 res!2585340) b!6266881))

(assert (= (and b!6266888 (not res!2585336)) b!6266891))

(assert (= (and b!6266891 res!2585335) b!6266885))

(assert (= (and b!6266885 (not res!2585339)) b!6266889))

(assert (= (and b!6266889 (not res!2585337)) b!6266887))

(assert (= (or b!6266878 b!6266882 b!6266885) bm!529705))

(assert (=> d!1966575 m!7088532))

(assert (=> d!1966575 m!7087972))

(assert (=> b!6266889 m!7088540))

(assert (=> b!6266889 m!7088540))

(assert (=> b!6266889 m!7088594))

(assert (=> b!6266884 m!7088540))

(assert (=> b!6266884 m!7088540))

(assert (=> b!6266884 m!7088594))

(declare-fun m!7088726 () Bool)

(assert (=> b!6266890 m!7088726))

(assert (=> bm!529705 m!7088532))

(assert (=> b!6266881 m!7088536))

(assert (=> b!6266886 m!7088536))

(assert (=> b!6266886 m!7088536))

(declare-fun m!7088728 () Bool)

(assert (=> b!6266886 m!7088728))

(assert (=> b!6266886 m!7088540))

(assert (=> b!6266886 m!7088728))

(assert (=> b!6266886 m!7088540))

(declare-fun m!7088730 () Bool)

(assert (=> b!6266886 m!7088730))

(assert (=> b!6266887 m!7088536))

(assert (=> b!6266051 d!1966575))

(declare-fun d!1966577 () Bool)

(assert (=> d!1966577 (= (matchR!8370 r!7292 s!2326) (matchRSpec!3288 r!7292 s!2326))))

(declare-fun lt!2351244 () Unit!158079)

(declare-fun choose!46498 (Regex!16187 List!64862) Unit!158079)

(assert (=> d!1966577 (= lt!2351244 (choose!46498 r!7292 s!2326))))

(assert (=> d!1966577 (validRegex!7923 r!7292)))

(assert (=> d!1966577 (= (mainMatchTheorem!3288 r!7292 s!2326) lt!2351244)))

(declare-fun bs!1564080 () Bool)

(assert (= bs!1564080 d!1966577))

(assert (=> bs!1564080 m!7088006))

(assert (=> bs!1564080 m!7088004))

(declare-fun m!7088732 () Bool)

(assert (=> bs!1564080 m!7088732))

(assert (=> bs!1564080 m!7087972))

(assert (=> b!6266051 d!1966577))

(declare-fun d!1966579 () Bool)

(declare-fun c!1135285 () Bool)

(assert (=> d!1966579 (= c!1135285 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811751 () Bool)

(assert (=> d!1966579 (= (matchZipper!2199 lt!2351090 (t!378416 s!2326)) e!3811751)))

(declare-fun b!6266892 () Bool)

(assert (=> b!6266892 (= e!3811751 (nullableZipper!1957 lt!2351090))))

(declare-fun b!6266893 () Bool)

(assert (=> b!6266893 (= e!3811751 (matchZipper!2199 (derivationStepZipper!2153 lt!2351090 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966579 c!1135285) b!6266892))

(assert (= (and d!1966579 (not c!1135285)) b!6266893))

(assert (=> d!1966579 m!7088696))

(declare-fun m!7088734 () Bool)

(assert (=> b!6266892 m!7088734))

(assert (=> b!6266893 m!7088700))

(assert (=> b!6266893 m!7088700))

(declare-fun m!7088736 () Bool)

(assert (=> b!6266893 m!7088736))

(assert (=> b!6266893 m!7088704))

(assert (=> b!6266893 m!7088736))

(assert (=> b!6266893 m!7088704))

(declare-fun m!7088738 () Bool)

(assert (=> b!6266893 m!7088738))

(assert (=> b!6266053 d!1966579))

(declare-fun d!1966581 () Bool)

(declare-fun c!1135286 () Bool)

(assert (=> d!1966581 (= c!1135286 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811752 () Bool)

(assert (=> d!1966581 (= (matchZipper!2199 lt!2351097 (t!378416 s!2326)) e!3811752)))

(declare-fun b!6266894 () Bool)

(assert (=> b!6266894 (= e!3811752 (nullableZipper!1957 lt!2351097))))

(declare-fun b!6266895 () Bool)

(assert (=> b!6266895 (= e!3811752 (matchZipper!2199 (derivationStepZipper!2153 lt!2351097 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966581 c!1135286) b!6266894))

(assert (= (and d!1966581 (not c!1135286)) b!6266895))

(assert (=> d!1966581 m!7088696))

(declare-fun m!7088740 () Bool)

(assert (=> b!6266894 m!7088740))

(assert (=> b!6266895 m!7088700))

(assert (=> b!6266895 m!7088700))

(declare-fun m!7088742 () Bool)

(assert (=> b!6266895 m!7088742))

(assert (=> b!6266895 m!7088704))

(assert (=> b!6266895 m!7088742))

(assert (=> b!6266895 m!7088704))

(declare-fun m!7088744 () Bool)

(assert (=> b!6266895 m!7088744))

(assert (=> b!6266053 d!1966581))

(declare-fun d!1966583 () Bool)

(declare-fun c!1135287 () Bool)

(assert (=> d!1966583 (= c!1135287 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811753 () Bool)

(assert (=> d!1966583 (= (matchZipper!2199 lt!2351102 (t!378416 s!2326)) e!3811753)))

(declare-fun b!6266896 () Bool)

(assert (=> b!6266896 (= e!3811753 (nullableZipper!1957 lt!2351102))))

(declare-fun b!6266897 () Bool)

(assert (=> b!6266897 (= e!3811753 (matchZipper!2199 (derivationStepZipper!2153 lt!2351102 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966583 c!1135287) b!6266896))

(assert (= (and d!1966583 (not c!1135287)) b!6266897))

(assert (=> d!1966583 m!7088696))

(declare-fun m!7088746 () Bool)

(assert (=> b!6266896 m!7088746))

(assert (=> b!6266897 m!7088700))

(assert (=> b!6266897 m!7088700))

(declare-fun m!7088748 () Bool)

(assert (=> b!6266897 m!7088748))

(assert (=> b!6266897 m!7088704))

(assert (=> b!6266897 m!7088748))

(assert (=> b!6266897 m!7088704))

(declare-fun m!7088750 () Bool)

(assert (=> b!6266897 m!7088750))

(assert (=> b!6266053 d!1966583))

(declare-fun e!3811756 () Bool)

(declare-fun d!1966585 () Bool)

(assert (=> d!1966585 (= (matchZipper!2199 ((_ map or) lt!2351102 lt!2351110) (t!378416 s!2326)) e!3811756)))

(declare-fun res!2585343 () Bool)

(assert (=> d!1966585 (=> res!2585343 e!3811756)))

(assert (=> d!1966585 (= res!2585343 (matchZipper!2199 lt!2351102 (t!378416 s!2326)))))

(declare-fun lt!2351247 () Unit!158079)

(declare-fun choose!46499 ((InoxSet Context!11142) (InoxSet Context!11142) List!64862) Unit!158079)

(assert (=> d!1966585 (= lt!2351247 (choose!46499 lt!2351102 lt!2351110 (t!378416 s!2326)))))

(assert (=> d!1966585 (= (lemmaZipperConcatMatchesSameAsBothZippers!1018 lt!2351102 lt!2351110 (t!378416 s!2326)) lt!2351247)))

(declare-fun b!6266900 () Bool)

(assert (=> b!6266900 (= e!3811756 (matchZipper!2199 lt!2351110 (t!378416 s!2326)))))

(assert (= (and d!1966585 (not res!2585343)) b!6266900))

(declare-fun m!7088752 () Bool)

(assert (=> d!1966585 m!7088752))

(assert (=> d!1966585 m!7087932))

(declare-fun m!7088754 () Bool)

(assert (=> d!1966585 m!7088754))

(assert (=> b!6266900 m!7088002))

(assert (=> b!6266053 d!1966585))

(declare-fun d!1966587 () Bool)

(declare-fun e!3811757 () Bool)

(assert (=> d!1966587 (= (matchZipper!2199 ((_ map or) lt!2351090 lt!2351084) (t!378416 s!2326)) e!3811757)))

(declare-fun res!2585344 () Bool)

(assert (=> d!1966587 (=> res!2585344 e!3811757)))

(assert (=> d!1966587 (= res!2585344 (matchZipper!2199 lt!2351090 (t!378416 s!2326)))))

(declare-fun lt!2351248 () Unit!158079)

(assert (=> d!1966587 (= lt!2351248 (choose!46499 lt!2351090 lt!2351084 (t!378416 s!2326)))))

(assert (=> d!1966587 (= (lemmaZipperConcatMatchesSameAsBothZippers!1018 lt!2351090 lt!2351084 (t!378416 s!2326)) lt!2351248)))

(declare-fun b!6266901 () Bool)

(assert (=> b!6266901 (= e!3811757 (matchZipper!2199 lt!2351084 (t!378416 s!2326)))))

(assert (= (and d!1966587 (not res!2585344)) b!6266901))

(assert (=> d!1966587 m!7088028))

(assert (=> d!1966587 m!7087928))

(declare-fun m!7088756 () Bool)

(assert (=> d!1966587 m!7088756))

(assert (=> b!6266901 m!7088010))

(assert (=> b!6266052 d!1966587))

(assert (=> b!6266052 d!1966579))

(declare-fun d!1966589 () Bool)

(declare-fun c!1135288 () Bool)

(assert (=> d!1966589 (= c!1135288 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811758 () Bool)

(assert (=> d!1966589 (= (matchZipper!2199 ((_ map or) lt!2351090 lt!2351084) (t!378416 s!2326)) e!3811758)))

(declare-fun b!6266902 () Bool)

(assert (=> b!6266902 (= e!3811758 (nullableZipper!1957 ((_ map or) lt!2351090 lt!2351084)))))

(declare-fun b!6266903 () Bool)

(assert (=> b!6266903 (= e!3811758 (matchZipper!2199 (derivationStepZipper!2153 ((_ map or) lt!2351090 lt!2351084) (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966589 c!1135288) b!6266902))

(assert (= (and d!1966589 (not c!1135288)) b!6266903))

(assert (=> d!1966589 m!7088696))

(declare-fun m!7088758 () Bool)

(assert (=> b!6266902 m!7088758))

(assert (=> b!6266903 m!7088700))

(assert (=> b!6266903 m!7088700))

(declare-fun m!7088760 () Bool)

(assert (=> b!6266903 m!7088760))

(assert (=> b!6266903 m!7088704))

(assert (=> b!6266903 m!7088760))

(assert (=> b!6266903 m!7088704))

(declare-fun m!7088762 () Bool)

(assert (=> b!6266903 m!7088762))

(assert (=> b!6266052 d!1966589))

(declare-fun d!1966591 () Bool)

(declare-fun lt!2351251 () Int)

(assert (=> d!1966591 (>= lt!2351251 0)))

(declare-fun e!3811761 () Int)

(assert (=> d!1966591 (= lt!2351251 e!3811761)))

(declare-fun c!1135292 () Bool)

(assert (=> d!1966591 (= c!1135292 ((_ is Cons!64736) (exprs!6071 lt!2351107)))))

(assert (=> d!1966591 (= (contextDepthTotal!310 lt!2351107) lt!2351251)))

(declare-fun b!6266908 () Bool)

(declare-fun regexDepthTotal!163 (Regex!16187) Int)

(assert (=> b!6266908 (= e!3811761 (+ (regexDepthTotal!163 (h!71184 (exprs!6071 lt!2351107))) (contextDepthTotal!310 (Context!11143 (t!378414 (exprs!6071 lt!2351107))))))))

(declare-fun b!6266909 () Bool)

(assert (=> b!6266909 (= e!3811761 1)))

(assert (= (and d!1966591 c!1135292) b!6266908))

(assert (= (and d!1966591 (not c!1135292)) b!6266909))

(declare-fun m!7088764 () Bool)

(assert (=> b!6266908 m!7088764))

(declare-fun m!7088766 () Bool)

(assert (=> b!6266908 m!7088766))

(assert (=> b!6266034 d!1966591))

(declare-fun d!1966593 () Bool)

(declare-fun lt!2351252 () Int)

(assert (=> d!1966593 (>= lt!2351252 0)))

(declare-fun e!3811762 () Int)

(assert (=> d!1966593 (= lt!2351252 e!3811762)))

(declare-fun c!1135293 () Bool)

(assert (=> d!1966593 (= c!1135293 ((_ is Cons!64736) (exprs!6071 (h!71185 zl!343))))))

(assert (=> d!1966593 (= (contextDepthTotal!310 (h!71185 zl!343)) lt!2351252)))

(declare-fun b!6266910 () Bool)

(assert (=> b!6266910 (= e!3811762 (+ (regexDepthTotal!163 (h!71184 (exprs!6071 (h!71185 zl!343)))) (contextDepthTotal!310 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun b!6266911 () Bool)

(assert (=> b!6266911 (= e!3811762 1)))

(assert (= (and d!1966593 c!1135293) b!6266910))

(assert (= (and d!1966593 (not c!1135293)) b!6266911))

(declare-fun m!7088768 () Bool)

(assert (=> b!6266910 m!7088768))

(declare-fun m!7088770 () Bool)

(assert (=> b!6266910 m!7088770))

(assert (=> b!6266034 d!1966593))

(declare-fun d!1966595 () Bool)

(declare-fun e!3811763 () Bool)

(assert (=> d!1966595 e!3811763))

(declare-fun res!2585345 () Bool)

(assert (=> d!1966595 (=> (not res!2585345) (not e!3811763))))

(declare-fun lt!2351253 () List!64861)

(assert (=> d!1966595 (= res!2585345 (noDuplicate!2021 lt!2351253))))

(assert (=> d!1966595 (= lt!2351253 (choose!46497 lt!2351105))))

(assert (=> d!1966595 (= (toList!9971 lt!2351105) lt!2351253)))

(declare-fun b!6266912 () Bool)

(assert (=> b!6266912 (= e!3811763 (= (content!12156 lt!2351253) lt!2351105))))

(assert (= (and d!1966595 res!2585345) b!6266912))

(declare-fun m!7088772 () Bool)

(assert (=> d!1966595 m!7088772))

(declare-fun m!7088774 () Bool)

(assert (=> d!1966595 m!7088774))

(declare-fun m!7088776 () Bool)

(assert (=> b!6266912 m!7088776))

(assert (=> b!6266055 d!1966595))

(declare-fun bs!1564081 () Bool)

(declare-fun d!1966597 () Bool)

(assert (= bs!1564081 (and d!1966597 d!1966533)))

(declare-fun lambda!343158 () Int)

(assert (=> bs!1564081 (= lambda!343158 lambda!343131)))

(declare-fun bs!1564082 () Bool)

(assert (= bs!1564082 (and d!1966597 d!1966567)))

(assert (=> bs!1564082 (= lambda!343158 lambda!343149)))

(declare-fun bs!1564083 () Bool)

(assert (= bs!1564083 (and d!1966597 d!1966543)))

(assert (=> bs!1564083 (= lambda!343158 lambda!343144)))

(declare-fun bs!1564084 () Bool)

(assert (= bs!1564084 (and d!1966597 d!1966529)))

(assert (=> bs!1564084 (= lambda!343158 lambda!343128)))

(declare-fun bs!1564085 () Bool)

(assert (= bs!1564085 (and d!1966597 d!1966525)))

(assert (=> bs!1564085 (= lambda!343158 lambda!343127)))

(declare-fun b!6266933 () Bool)

(declare-fun e!3811779 () Regex!16187)

(assert (=> b!6266933 (= e!3811779 EmptyLang!16187)))

(declare-fun b!6266934 () Bool)

(declare-fun e!3811780 () Bool)

(declare-fun e!3811778 () Bool)

(assert (=> b!6266934 (= e!3811780 e!3811778)))

(declare-fun c!1135302 () Bool)

(assert (=> b!6266934 (= c!1135302 (isEmpty!36766 (unfocusZipperList!1608 zl!343)))))

(declare-fun b!6266935 () Bool)

(declare-fun e!3811777 () Bool)

(assert (=> b!6266935 (= e!3811777 (isEmpty!36766 (t!378414 (unfocusZipperList!1608 zl!343))))))

(declare-fun b!6266936 () Bool)

(declare-fun e!3811781 () Regex!16187)

(assert (=> b!6266936 (= e!3811781 e!3811779)))

(declare-fun c!1135304 () Bool)

(assert (=> b!6266936 (= c!1135304 ((_ is Cons!64736) (unfocusZipperList!1608 zl!343)))))

(assert (=> d!1966597 e!3811780))

(declare-fun res!2585351 () Bool)

(assert (=> d!1966597 (=> (not res!2585351) (not e!3811780))))

(declare-fun lt!2351256 () Regex!16187)

(assert (=> d!1966597 (= res!2585351 (validRegex!7923 lt!2351256))))

(assert (=> d!1966597 (= lt!2351256 e!3811781)))

(declare-fun c!1135303 () Bool)

(assert (=> d!1966597 (= c!1135303 e!3811777)))

(declare-fun res!2585350 () Bool)

(assert (=> d!1966597 (=> (not res!2585350) (not e!3811777))))

(assert (=> d!1966597 (= res!2585350 ((_ is Cons!64736) (unfocusZipperList!1608 zl!343)))))

(assert (=> d!1966597 (forall!15312 (unfocusZipperList!1608 zl!343) lambda!343158)))

(assert (=> d!1966597 (= (generalisedUnion!2031 (unfocusZipperList!1608 zl!343)) lt!2351256)))

(declare-fun b!6266937 () Bool)

(declare-fun e!3811776 () Bool)

(declare-fun isUnion!1032 (Regex!16187) Bool)

(assert (=> b!6266937 (= e!3811776 (isUnion!1032 lt!2351256))))

(declare-fun b!6266938 () Bool)

(assert (=> b!6266938 (= e!3811778 e!3811776)))

(declare-fun c!1135305 () Bool)

(assert (=> b!6266938 (= c!1135305 (isEmpty!36766 (tail!11960 (unfocusZipperList!1608 zl!343))))))

(declare-fun b!6266939 () Bool)

(assert (=> b!6266939 (= e!3811781 (h!71184 (unfocusZipperList!1608 zl!343)))))

(declare-fun b!6266940 () Bool)

(assert (=> b!6266940 (= e!3811776 (= lt!2351256 (head!12875 (unfocusZipperList!1608 zl!343))))))

(declare-fun b!6266941 () Bool)

(declare-fun isEmptyLang!1602 (Regex!16187) Bool)

(assert (=> b!6266941 (= e!3811778 (isEmptyLang!1602 lt!2351256))))

(declare-fun b!6266942 () Bool)

(assert (=> b!6266942 (= e!3811779 (Union!16187 (h!71184 (unfocusZipperList!1608 zl!343)) (generalisedUnion!2031 (t!378414 (unfocusZipperList!1608 zl!343)))))))

(assert (= (and d!1966597 res!2585350) b!6266935))

(assert (= (and d!1966597 c!1135303) b!6266939))

(assert (= (and d!1966597 (not c!1135303)) b!6266936))

(assert (= (and b!6266936 c!1135304) b!6266942))

(assert (= (and b!6266936 (not c!1135304)) b!6266933))

(assert (= (and d!1966597 res!2585351) b!6266934))

(assert (= (and b!6266934 c!1135302) b!6266941))

(assert (= (and b!6266934 (not c!1135302)) b!6266938))

(assert (= (and b!6266938 c!1135305) b!6266940))

(assert (= (and b!6266938 (not c!1135305)) b!6266937))

(declare-fun m!7088778 () Bool)

(assert (=> b!6266937 m!7088778))

(declare-fun m!7088780 () Bool)

(assert (=> b!6266935 m!7088780))

(assert (=> b!6266938 m!7087982))

(declare-fun m!7088782 () Bool)

(assert (=> b!6266938 m!7088782))

(assert (=> b!6266938 m!7088782))

(declare-fun m!7088784 () Bool)

(assert (=> b!6266938 m!7088784))

(declare-fun m!7088786 () Bool)

(assert (=> b!6266941 m!7088786))

(declare-fun m!7088788 () Bool)

(assert (=> b!6266942 m!7088788))

(assert (=> b!6266940 m!7087982))

(declare-fun m!7088790 () Bool)

(assert (=> b!6266940 m!7088790))

(declare-fun m!7088792 () Bool)

(assert (=> d!1966597 m!7088792))

(assert (=> d!1966597 m!7087982))

(declare-fun m!7088794 () Bool)

(assert (=> d!1966597 m!7088794))

(assert (=> b!6266934 m!7087982))

(declare-fun m!7088796 () Bool)

(assert (=> b!6266934 m!7088796))

(assert (=> b!6266066 d!1966597))

(declare-fun bs!1564086 () Bool)

(declare-fun d!1966599 () Bool)

(assert (= bs!1564086 (and d!1966599 d!1966533)))

(declare-fun lambda!343161 () Int)

(assert (=> bs!1564086 (= lambda!343161 lambda!343131)))

(declare-fun bs!1564087 () Bool)

(assert (= bs!1564087 (and d!1966599 d!1966567)))

(assert (=> bs!1564087 (= lambda!343161 lambda!343149)))

(declare-fun bs!1564088 () Bool)

(assert (= bs!1564088 (and d!1966599 d!1966543)))

(assert (=> bs!1564088 (= lambda!343161 lambda!343144)))

(declare-fun bs!1564089 () Bool)

(assert (= bs!1564089 (and d!1966599 d!1966597)))

(assert (=> bs!1564089 (= lambda!343161 lambda!343158)))

(declare-fun bs!1564090 () Bool)

(assert (= bs!1564090 (and d!1966599 d!1966529)))

(assert (=> bs!1564090 (= lambda!343161 lambda!343128)))

(declare-fun bs!1564091 () Bool)

(assert (= bs!1564091 (and d!1966599 d!1966525)))

(assert (=> bs!1564091 (= lambda!343161 lambda!343127)))

(declare-fun lt!2351259 () List!64860)

(assert (=> d!1966599 (forall!15312 lt!2351259 lambda!343161)))

(declare-fun e!3811784 () List!64860)

(assert (=> d!1966599 (= lt!2351259 e!3811784)))

(declare-fun c!1135308 () Bool)

(assert (=> d!1966599 (= c!1135308 ((_ is Cons!64737) zl!343))))

(assert (=> d!1966599 (= (unfocusZipperList!1608 zl!343) lt!2351259)))

(declare-fun b!6266947 () Bool)

(assert (=> b!6266947 (= e!3811784 (Cons!64736 (generalisedConcat!1784 (exprs!6071 (h!71185 zl!343))) (unfocusZipperList!1608 (t!378415 zl!343))))))

(declare-fun b!6266948 () Bool)

(assert (=> b!6266948 (= e!3811784 Nil!64736)))

(assert (= (and d!1966599 c!1135308) b!6266947))

(assert (= (and d!1966599 (not c!1135308)) b!6266948))

(declare-fun m!7088798 () Bool)

(assert (=> d!1966599 m!7088798))

(assert (=> b!6266947 m!7087976))

(declare-fun m!7088800 () Bool)

(assert (=> b!6266947 m!7088800))

(assert (=> b!6266066 d!1966599))

(declare-fun d!1966601 () Bool)

(declare-fun lt!2351262 () Int)

(assert (=> d!1966601 (>= lt!2351262 0)))

(declare-fun e!3811787 () Int)

(assert (=> d!1966601 (= lt!2351262 e!3811787)))

(declare-fun c!1135311 () Bool)

(assert (=> d!1966601 (= c!1135311 ((_ is Cons!64737) lt!2351106))))

(assert (=> d!1966601 (= (zipperDepthTotal!340 lt!2351106) lt!2351262)))

(declare-fun b!6266953 () Bool)

(assert (=> b!6266953 (= e!3811787 (+ (contextDepthTotal!310 (h!71185 lt!2351106)) (zipperDepthTotal!340 (t!378415 lt!2351106))))))

(declare-fun b!6266954 () Bool)

(assert (=> b!6266954 (= e!3811787 0)))

(assert (= (and d!1966601 c!1135311) b!6266953))

(assert (= (and d!1966601 (not c!1135311)) b!6266954))

(declare-fun m!7088802 () Bool)

(assert (=> b!6266953 m!7088802))

(declare-fun m!7088804 () Bool)

(assert (=> b!6266953 m!7088804))

(assert (=> b!6266068 d!1966601))

(declare-fun d!1966603 () Bool)

(declare-fun lt!2351263 () Int)

(assert (=> d!1966603 (>= lt!2351263 0)))

(declare-fun e!3811788 () Int)

(assert (=> d!1966603 (= lt!2351263 e!3811788)))

(declare-fun c!1135312 () Bool)

(assert (=> d!1966603 (= c!1135312 ((_ is Cons!64737) zl!343))))

(assert (=> d!1966603 (= (zipperDepthTotal!340 zl!343) lt!2351263)))

(declare-fun b!6266955 () Bool)

(assert (=> b!6266955 (= e!3811788 (+ (contextDepthTotal!310 (h!71185 zl!343)) (zipperDepthTotal!340 (t!378415 zl!343))))))

(declare-fun b!6266956 () Bool)

(assert (=> b!6266956 (= e!3811788 0)))

(assert (= (and d!1966603 c!1135312) b!6266955))

(assert (= (and d!1966603 (not c!1135312)) b!6266956))

(assert (=> b!6266955 m!7088058))

(declare-fun m!7088806 () Bool)

(assert (=> b!6266955 m!7088806))

(assert (=> b!6266068 d!1966603))

(declare-fun d!1966605 () Bool)

(declare-fun lt!2351264 () Regex!16187)

(assert (=> d!1966605 (validRegex!7923 lt!2351264)))

(assert (=> d!1966605 (= lt!2351264 (generalisedUnion!2031 (unfocusZipperList!1608 lt!2351094)))))

(assert (=> d!1966605 (= (unfocusZipper!1929 lt!2351094) lt!2351264)))

(declare-fun bs!1564092 () Bool)

(assert (= bs!1564092 d!1966605))

(declare-fun m!7088808 () Bool)

(assert (=> bs!1564092 m!7088808))

(declare-fun m!7088810 () Bool)

(assert (=> bs!1564092 m!7088810))

(assert (=> bs!1564092 m!7088810))

(declare-fun m!7088812 () Bool)

(assert (=> bs!1564092 m!7088812))

(assert (=> b!6266067 d!1966605))

(assert (=> b!6266047 d!1966571))

(declare-fun d!1966607 () Bool)

(declare-fun c!1135313 () Bool)

(assert (=> d!1966607 (= c!1135313 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811789 () Bool)

(assert (=> d!1966607 (= (matchZipper!2199 lt!2351108 (t!378416 s!2326)) e!3811789)))

(declare-fun b!6266957 () Bool)

(assert (=> b!6266957 (= e!3811789 (nullableZipper!1957 lt!2351108))))

(declare-fun b!6266958 () Bool)

(assert (=> b!6266958 (= e!3811789 (matchZipper!2199 (derivationStepZipper!2153 lt!2351108 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966607 c!1135313) b!6266957))

(assert (= (and d!1966607 (not c!1135313)) b!6266958))

(assert (=> d!1966607 m!7088696))

(declare-fun m!7088814 () Bool)

(assert (=> b!6266957 m!7088814))

(assert (=> b!6266958 m!7088700))

(assert (=> b!6266958 m!7088700))

(declare-fun m!7088816 () Bool)

(assert (=> b!6266958 m!7088816))

(assert (=> b!6266958 m!7088704))

(assert (=> b!6266958 m!7088816))

(assert (=> b!6266958 m!7088704))

(declare-fun m!7088818 () Bool)

(assert (=> b!6266958 m!7088818))

(assert (=> b!6266069 d!1966607))

(declare-fun d!1966609 () Bool)

(declare-fun c!1135314 () Bool)

(assert (=> d!1966609 (= c!1135314 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811790 () Bool)

(assert (=> d!1966609 (= (matchZipper!2199 lt!2351099 (t!378416 s!2326)) e!3811790)))

(declare-fun b!6266959 () Bool)

(assert (=> b!6266959 (= e!3811790 (nullableZipper!1957 lt!2351099))))

(declare-fun b!6266960 () Bool)

(assert (=> b!6266960 (= e!3811790 (matchZipper!2199 (derivationStepZipper!2153 lt!2351099 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966609 c!1135314) b!6266959))

(assert (= (and d!1966609 (not c!1135314)) b!6266960))

(assert (=> d!1966609 m!7088696))

(declare-fun m!7088820 () Bool)

(assert (=> b!6266959 m!7088820))

(assert (=> b!6266960 m!7088700))

(assert (=> b!6266960 m!7088700))

(declare-fun m!7088822 () Bool)

(assert (=> b!6266960 m!7088822))

(assert (=> b!6266960 m!7088704))

(assert (=> b!6266960 m!7088822))

(assert (=> b!6266960 m!7088704))

(declare-fun m!7088824 () Bool)

(assert (=> b!6266960 m!7088824))

(assert (=> b!6266049 d!1966609))

(declare-fun d!1966611 () Bool)

(assert (=> d!1966611 (= (flatMap!1692 lt!2351105 lambda!343069) (choose!46489 lt!2351105 lambda!343069))))

(declare-fun bs!1564093 () Bool)

(assert (= bs!1564093 d!1966611))

(declare-fun m!7088826 () Bool)

(assert (=> bs!1564093 m!7088826))

(assert (=> b!6266049 d!1966611))

(declare-fun d!1966613 () Bool)

(declare-fun c!1135315 () Bool)

(assert (=> d!1966613 (= c!1135315 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811791 () Bool)

(assert (=> d!1966613 (= (matchZipper!2199 lt!2351083 (t!378416 s!2326)) e!3811791)))

(declare-fun b!6266961 () Bool)

(assert (=> b!6266961 (= e!3811791 (nullableZipper!1957 lt!2351083))))

(declare-fun b!6266962 () Bool)

(assert (=> b!6266962 (= e!3811791 (matchZipper!2199 (derivationStepZipper!2153 lt!2351083 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966613 c!1135315) b!6266961))

(assert (= (and d!1966613 (not c!1135315)) b!6266962))

(assert (=> d!1966613 m!7088696))

(declare-fun m!7088828 () Bool)

(assert (=> b!6266961 m!7088828))

(assert (=> b!6266962 m!7088700))

(assert (=> b!6266962 m!7088700))

(declare-fun m!7088830 () Bool)

(assert (=> b!6266962 m!7088830))

(assert (=> b!6266962 m!7088704))

(assert (=> b!6266962 m!7088830))

(assert (=> b!6266962 m!7088704))

(declare-fun m!7088832 () Bool)

(assert (=> b!6266962 m!7088832))

(assert (=> b!6266049 d!1966613))

(declare-fun d!1966615 () Bool)

(assert (=> d!1966615 (= (flatMap!1692 lt!2351105 lambda!343069) (dynLambda!25589 lambda!343069 lt!2351109))))

(declare-fun lt!2351265 () Unit!158079)

(assert (=> d!1966615 (= lt!2351265 (choose!46490 lt!2351105 lt!2351109 lambda!343069))))

(assert (=> d!1966615 (= lt!2351105 (store ((as const (Array Context!11142 Bool)) false) lt!2351109 true))))

(assert (=> d!1966615 (= (lemmaFlatMapOnSingletonSet!1218 lt!2351105 lt!2351109 lambda!343069) lt!2351265)))

(declare-fun b_lambda!238589 () Bool)

(assert (=> (not b_lambda!238589) (not d!1966615)))

(declare-fun bs!1564094 () Bool)

(assert (= bs!1564094 d!1966615))

(assert (=> bs!1564094 m!7087998))

(declare-fun m!7088834 () Bool)

(assert (=> bs!1564094 m!7088834))

(declare-fun m!7088836 () Bool)

(assert (=> bs!1564094 m!7088836))

(assert (=> bs!1564094 m!7088020))

(assert (=> b!6266049 d!1966615))

(declare-fun e!3811792 () Bool)

(declare-fun d!1966617 () Bool)

(assert (=> d!1966617 (= (matchZipper!2199 ((_ map or) lt!2351102 lt!2351108) (t!378416 s!2326)) e!3811792)))

(declare-fun res!2585352 () Bool)

(assert (=> d!1966617 (=> res!2585352 e!3811792)))

(assert (=> d!1966617 (= res!2585352 (matchZipper!2199 lt!2351102 (t!378416 s!2326)))))

(declare-fun lt!2351266 () Unit!158079)

(assert (=> d!1966617 (= lt!2351266 (choose!46499 lt!2351102 lt!2351108 (t!378416 s!2326)))))

(assert (=> d!1966617 (= (lemmaZipperConcatMatchesSameAsBothZippers!1018 lt!2351102 lt!2351108 (t!378416 s!2326)) lt!2351266)))

(declare-fun b!6266963 () Bool)

(assert (=> b!6266963 (= e!3811792 (matchZipper!2199 lt!2351108 (t!378416 s!2326)))))

(assert (= (and d!1966617 (not res!2585352)) b!6266963))

(declare-fun m!7088838 () Bool)

(assert (=> d!1966617 m!7088838))

(assert (=> d!1966617 m!7087932))

(declare-fun m!7088840 () Bool)

(assert (=> d!1966617 m!7088840))

(assert (=> b!6266963 m!7088038))

(assert (=> b!6266049 d!1966617))

(assert (=> b!6266049 d!1966557))

(declare-fun d!1966619 () Bool)

(declare-fun c!1135316 () Bool)

(assert (=> d!1966619 (= c!1135316 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3811793 () Bool)

(assert (=> d!1966619 (= (matchZipper!2199 lt!2351084 (t!378416 s!2326)) e!3811793)))

(declare-fun b!6266964 () Bool)

(assert (=> b!6266964 (= e!3811793 (nullableZipper!1957 lt!2351084))))

(declare-fun b!6266965 () Bool)

(assert (=> b!6266965 (= e!3811793 (matchZipper!2199 (derivationStepZipper!2153 lt!2351084 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1966619 c!1135316) b!6266964))

(assert (= (and d!1966619 (not c!1135316)) b!6266965))

(assert (=> d!1966619 m!7088696))

(declare-fun m!7088842 () Bool)

(assert (=> b!6266964 m!7088842))

(assert (=> b!6266965 m!7088700))

(assert (=> b!6266965 m!7088700))

(declare-fun m!7088844 () Bool)

(assert (=> b!6266965 m!7088844))

(assert (=> b!6266965 m!7088704))

(assert (=> b!6266965 m!7088844))

(assert (=> b!6266965 m!7088704))

(declare-fun m!7088846 () Bool)

(assert (=> b!6266965 m!7088846))

(assert (=> b!6266070 d!1966619))

(declare-fun b!6266976 () Bool)

(declare-fun e!3811796 () Bool)

(assert (=> b!6266976 (= e!3811796 tp_is_empty!41627)))

(declare-fun b!6266977 () Bool)

(declare-fun tp!1748147 () Bool)

(declare-fun tp!1748144 () Bool)

(assert (=> b!6266977 (= e!3811796 (and tp!1748147 tp!1748144))))

(declare-fun b!6266978 () Bool)

(declare-fun tp!1748146 () Bool)

(assert (=> b!6266978 (= e!3811796 tp!1748146)))

(declare-fun b!6266979 () Bool)

(declare-fun tp!1748145 () Bool)

(declare-fun tp!1748143 () Bool)

(assert (=> b!6266979 (= e!3811796 (and tp!1748145 tp!1748143))))

(assert (=> b!6266042 (= tp!1748068 e!3811796)))

(assert (= (and b!6266042 ((_ is ElementMatch!16187) (regOne!32886 r!7292))) b!6266976))

(assert (= (and b!6266042 ((_ is Concat!25032) (regOne!32886 r!7292))) b!6266977))

(assert (= (and b!6266042 ((_ is Star!16187) (regOne!32886 r!7292))) b!6266978))

(assert (= (and b!6266042 ((_ is Union!16187) (regOne!32886 r!7292))) b!6266979))

(declare-fun b!6266980 () Bool)

(declare-fun e!3811797 () Bool)

(assert (=> b!6266980 (= e!3811797 tp_is_empty!41627)))

(declare-fun b!6266981 () Bool)

(declare-fun tp!1748152 () Bool)

(declare-fun tp!1748149 () Bool)

(assert (=> b!6266981 (= e!3811797 (and tp!1748152 tp!1748149))))

(declare-fun b!6266982 () Bool)

(declare-fun tp!1748151 () Bool)

(assert (=> b!6266982 (= e!3811797 tp!1748151)))

(declare-fun b!6266983 () Bool)

(declare-fun tp!1748150 () Bool)

(declare-fun tp!1748148 () Bool)

(assert (=> b!6266983 (= e!3811797 (and tp!1748150 tp!1748148))))

(assert (=> b!6266042 (= tp!1748073 e!3811797)))

(assert (= (and b!6266042 ((_ is ElementMatch!16187) (regTwo!32886 r!7292))) b!6266980))

(assert (= (and b!6266042 ((_ is Concat!25032) (regTwo!32886 r!7292))) b!6266981))

(assert (= (and b!6266042 ((_ is Star!16187) (regTwo!32886 r!7292))) b!6266982))

(assert (= (and b!6266042 ((_ is Union!16187) (regTwo!32886 r!7292))) b!6266983))

(declare-fun b!6266988 () Bool)

(declare-fun e!3811800 () Bool)

(declare-fun tp!1748157 () Bool)

(declare-fun tp!1748158 () Bool)

(assert (=> b!6266988 (= e!3811800 (and tp!1748157 tp!1748158))))

(assert (=> b!6266038 (= tp!1748067 e!3811800)))

(assert (= (and b!6266038 ((_ is Cons!64736) (exprs!6071 setElem!42608))) b!6266988))

(declare-fun b!6266989 () Bool)

(declare-fun e!3811801 () Bool)

(declare-fun tp!1748159 () Bool)

(declare-fun tp!1748160 () Bool)

(assert (=> b!6266989 (= e!3811801 (and tp!1748159 tp!1748160))))

(assert (=> b!6266054 (= tp!1748065 e!3811801)))

(assert (= (and b!6266054 ((_ is Cons!64736) (exprs!6071 (h!71185 zl!343)))) b!6266989))

(declare-fun b!6266997 () Bool)

(declare-fun e!3811807 () Bool)

(declare-fun tp!1748165 () Bool)

(assert (=> b!6266997 (= e!3811807 tp!1748165)))

(declare-fun e!3811806 () Bool)

(declare-fun tp!1748166 () Bool)

(declare-fun b!6266996 () Bool)

(assert (=> b!6266996 (= e!3811806 (and (inv!83714 (h!71185 (t!378415 zl!343))) e!3811807 tp!1748166))))

(assert (=> b!6266063 (= tp!1748069 e!3811806)))

(assert (= b!6266996 b!6266997))

(assert (= (and b!6266063 ((_ is Cons!64737) (t!378415 zl!343))) b!6266996))

(declare-fun m!7088848 () Bool)

(assert (=> b!6266996 m!7088848))

(declare-fun b!6266998 () Bool)

(declare-fun e!3811808 () Bool)

(assert (=> b!6266998 (= e!3811808 tp_is_empty!41627)))

(declare-fun b!6266999 () Bool)

(declare-fun tp!1748171 () Bool)

(declare-fun tp!1748168 () Bool)

(assert (=> b!6266999 (= e!3811808 (and tp!1748171 tp!1748168))))

(declare-fun b!6267000 () Bool)

(declare-fun tp!1748170 () Bool)

(assert (=> b!6267000 (= e!3811808 tp!1748170)))

(declare-fun b!6267001 () Bool)

(declare-fun tp!1748169 () Bool)

(declare-fun tp!1748167 () Bool)

(assert (=> b!6267001 (= e!3811808 (and tp!1748169 tp!1748167))))

(assert (=> b!6266059 (= tp!1748066 e!3811808)))

(assert (= (and b!6266059 ((_ is ElementMatch!16187) (regOne!32887 r!7292))) b!6266998))

(assert (= (and b!6266059 ((_ is Concat!25032) (regOne!32887 r!7292))) b!6266999))

(assert (= (and b!6266059 ((_ is Star!16187) (regOne!32887 r!7292))) b!6267000))

(assert (= (and b!6266059 ((_ is Union!16187) (regOne!32887 r!7292))) b!6267001))

(declare-fun b!6267002 () Bool)

(declare-fun e!3811809 () Bool)

(assert (=> b!6267002 (= e!3811809 tp_is_empty!41627)))

(declare-fun b!6267003 () Bool)

(declare-fun tp!1748176 () Bool)

(declare-fun tp!1748173 () Bool)

(assert (=> b!6267003 (= e!3811809 (and tp!1748176 tp!1748173))))

(declare-fun b!6267004 () Bool)

(declare-fun tp!1748175 () Bool)

(assert (=> b!6267004 (= e!3811809 tp!1748175)))

(declare-fun b!6267005 () Bool)

(declare-fun tp!1748174 () Bool)

(declare-fun tp!1748172 () Bool)

(assert (=> b!6267005 (= e!3811809 (and tp!1748174 tp!1748172))))

(assert (=> b!6266059 (= tp!1748070 e!3811809)))

(assert (= (and b!6266059 ((_ is ElementMatch!16187) (regTwo!32887 r!7292))) b!6267002))

(assert (= (and b!6266059 ((_ is Concat!25032) (regTwo!32887 r!7292))) b!6267003))

(assert (= (and b!6266059 ((_ is Star!16187) (regTwo!32887 r!7292))) b!6267004))

(assert (= (and b!6266059 ((_ is Union!16187) (regTwo!32887 r!7292))) b!6267005))

(declare-fun b!6267010 () Bool)

(declare-fun e!3811812 () Bool)

(declare-fun tp!1748179 () Bool)

(assert (=> b!6267010 (= e!3811812 (and tp_is_empty!41627 tp!1748179))))

(assert (=> b!6266050 (= tp!1748074 e!3811812)))

(assert (= (and b!6266050 ((_ is Cons!64738) (t!378416 s!2326))) b!6267010))

(declare-fun b!6267011 () Bool)

(declare-fun e!3811813 () Bool)

(assert (=> b!6267011 (= e!3811813 tp_is_empty!41627)))

(declare-fun b!6267012 () Bool)

(declare-fun tp!1748184 () Bool)

(declare-fun tp!1748181 () Bool)

(assert (=> b!6267012 (= e!3811813 (and tp!1748184 tp!1748181))))

(declare-fun b!6267013 () Bool)

(declare-fun tp!1748183 () Bool)

(assert (=> b!6267013 (= e!3811813 tp!1748183)))

(declare-fun b!6267014 () Bool)

(declare-fun tp!1748182 () Bool)

(declare-fun tp!1748180 () Bool)

(assert (=> b!6267014 (= e!3811813 (and tp!1748182 tp!1748180))))

(assert (=> b!6266045 (= tp!1748072 e!3811813)))

(assert (= (and b!6266045 ((_ is ElementMatch!16187) (reg!16516 r!7292))) b!6267011))

(assert (= (and b!6266045 ((_ is Concat!25032) (reg!16516 r!7292))) b!6267012))

(assert (= (and b!6266045 ((_ is Star!16187) (reg!16516 r!7292))) b!6267013))

(assert (= (and b!6266045 ((_ is Union!16187) (reg!16516 r!7292))) b!6267014))

(declare-fun condSetEmpty!42614 () Bool)

(assert (=> setNonEmpty!42608 (= condSetEmpty!42614 (= setRest!42608 ((as const (Array Context!11142 Bool)) false)))))

(declare-fun setRes!42614 () Bool)

(assert (=> setNonEmpty!42608 (= tp!1748071 setRes!42614)))

(declare-fun setIsEmpty!42614 () Bool)

(assert (=> setIsEmpty!42614 setRes!42614))

(declare-fun e!3811816 () Bool)

(declare-fun setElem!42614 () Context!11142)

(declare-fun tp!1748190 () Bool)

(declare-fun setNonEmpty!42614 () Bool)

(assert (=> setNonEmpty!42614 (= setRes!42614 (and tp!1748190 (inv!83714 setElem!42614) e!3811816))))

(declare-fun setRest!42614 () (InoxSet Context!11142))

(assert (=> setNonEmpty!42614 (= setRest!42608 ((_ map or) (store ((as const (Array Context!11142 Bool)) false) setElem!42614 true) setRest!42614))))

(declare-fun b!6267019 () Bool)

(declare-fun tp!1748189 () Bool)

(assert (=> b!6267019 (= e!3811816 tp!1748189)))

(assert (= (and setNonEmpty!42608 condSetEmpty!42614) setIsEmpty!42614))

(assert (= (and setNonEmpty!42608 (not condSetEmpty!42614)) setNonEmpty!42614))

(assert (= setNonEmpty!42614 b!6267019))

(declare-fun m!7088850 () Bool)

(assert (=> setNonEmpty!42614 m!7088850))

(declare-fun b_lambda!238591 () Bool)

(assert (= b_lambda!238589 (or b!6266061 b_lambda!238591)))

(declare-fun bs!1564095 () Bool)

(declare-fun d!1966621 () Bool)

(assert (= bs!1564095 (and d!1966621 b!6266061)))

(assert (=> bs!1564095 (= (dynLambda!25589 lambda!343069 lt!2351109) (derivationStepZipperUp!1361 lt!2351109 (h!71186 s!2326)))))

(assert (=> bs!1564095 m!7087990))

(assert (=> d!1966615 d!1966621))

(declare-fun b_lambda!238593 () Bool)

(assert (= b_lambda!238585 (or b!6266061 b_lambda!238593)))

(declare-fun bs!1564096 () Bool)

(declare-fun d!1966623 () Bool)

(assert (= bs!1564096 (and d!1966623 b!6266061)))

(assert (=> bs!1564096 (= (dynLambda!25589 lambda!343069 (h!71185 zl!343)) (derivationStepZipperUp!1361 (h!71185 zl!343) (h!71186 s!2326)))))

(assert (=> bs!1564096 m!7087942))

(assert (=> d!1966495 d!1966623))

(declare-fun b_lambda!238595 () Bool)

(assert (= b_lambda!238587 (or b!6266061 b_lambda!238595)))

(declare-fun bs!1564097 () Bool)

(declare-fun d!1966625 () Bool)

(assert (= bs!1564097 (and d!1966625 b!6266061)))

(assert (=> bs!1564097 (= (dynLambda!25589 lambda!343069 lt!2351107) (derivationStepZipperUp!1361 lt!2351107 (h!71186 s!2326)))))

(assert (=> bs!1564097 m!7088018))

(assert (=> d!1966551 d!1966625))

(check-sat (not b!6266592) (not b!6266960) (not b!6266894) (not bm!529685) (not b!6266632) (not b!6266890) (not b!6266594) (not b!6266759) (not b!6267004) (not b!6266825) (not b!6266887) (not b_lambda!238595) (not b!6266702) (not b!6266750) (not b!6266959) (not d!1966543) (not b!6266578) (not d!1966571) (not d!1966611) (not d!1966607) (not b!6266786) (not bm!529705) (not d!1966549) (not bm!529698) (not b!6266833) (not b!6266942) (not d!1966563) (not b!6266908) (not b!6266935) (not b!6266789) (not d!1966555) (not b!6266886) (not d!1966569) (not d!1966507) (not b!6266900) (not b!6266881) (not b!6266599) (not bm!529668) (not b!6266792) (not b!6266704) (not b!6266964) tp_is_empty!41627 (not bm!529686) (not b!6266978) (not b!6266938) (not b!6266962) (not bm!529677) (not b!6266705) (not b!6266708) (not d!1966615) (not bm!529692) (not d!1966579) (not b!6266996) (not b!6266602) (not bm!529691) (not d!1966599) (not d!1966609) (not b!6266753) (not b!6266884) (not bs!1564095) (not d!1966597) (not b!6266818) (not d!1966525) (not b!6266711) (not b!6267010) (not b!6266820) (not b_lambda!238591) (not setNonEmpty!42614) (not b!6266793) (not b!6267012) (not b!6266787) (not d!1966533) (not b!6266941) (not b!6266903) (not b!6266650) (not b!6266677) (not b!6266901) (not b!6266874) (not b!6266597) (not d!1966493) (not d!1966583) (not b!6266717) (not b!6266651) (not d!1966495) (not b!6266758) (not b!6266912) (not d!1966619) (not b!6266834) (not b!6266790) (not b!6266832) (not b!6266756) (not b!6267001) (not bs!1564097) (not bm!529669) (not b!6266983) (not b!6266713) (not d!1966499) (not d!1966517) (not b!6266812) (not b!6266831) (not b!6266631) (not bs!1564096) (not b!6266896) (not b!6266979) (not bm!529704) (not d!1966551) (not b!6266999) (not b!6266934) (not d!1966587) (not b!6266788) (not b!6266604) (not d!1966531) (not b!6266626) (not d!1966529) (not b!6267000) (not b!6266628) (not b!6266988) (not bm!529696) (not b!6266940) (not d!1966581) (not b!6266910) (not b!6266718) (not b!6266701) (not b!6266953) (not b!6266947) (not d!1966511) (not b!6266895) (not b!6266989) (not b!6266801) (not bm!529683) (not d!1966521) (not d!1966613) (not b!6266963) (not bm!529681) (not bm!529690) (not b!6267005) (not d!1966527) (not d!1966565) (not d!1966559) (not b!6266830) (not b!6266981) (not d!1966513) (not bm!529667) (not b!6266712) (not b!6266703) (not b_lambda!238593) (not b!6266957) (not b!6266937) (not d!1966585) (not d!1966567) (not d!1966515) (not b!6266707) (not b!6266630) (not b!6266870) (not b!6266997) (not b!6266889) (not d!1966561) (not b!6267019) (not d!1966589) (not b!6266977) (not bm!529659) (not b!6267013) (not bm!529697) (not b!6266767) (not b!6266714) (not b!6267014) (not d!1966605) (not b!6266715) (not b!6266823) (not bm!529678) (not b!6266893) (not b!6266772) (not b!6267003) (not b!6266755) (not b!6266633) (not d!1966617) (not d!1966575) (not d!1966509) (not bm!529660) (not b!6266892) (not b!6266769) (not b!6266897) (not bm!529684) (not b!6266774) (not b!6266961) (not b!6266902) (not d!1966595) (not bm!529703) (not b!6266955) (not bm!529664) (not b!6266782) (not d!1966577) (not b!6266958) (not b!6266982) (not b!6266965))
(check-sat)
(get-model)

(assert (=> bs!1564095 d!1966557))

(declare-fun bs!1564667 () Bool)

(declare-fun d!1967035 () Bool)

(assert (= bs!1564667 (and d!1967035 b!6266767)))

(declare-fun lambda!343228 () Int)

(assert (=> bs!1564667 (not (= lambda!343228 lambda!343139))))

(declare-fun bs!1564668 () Bool)

(assert (= bs!1564668 (and d!1967035 b!6266769)))

(assert (=> bs!1564668 (not (= lambda!343228 lambda!343140))))

(declare-fun bs!1564669 () Bool)

(assert (= bs!1564669 (and d!1967035 b!6266772)))

(assert (=> bs!1564669 (not (= lambda!343228 lambda!343142))))

(declare-fun bs!1564670 () Bool)

(assert (= bs!1564670 (and d!1967035 b!6266774)))

(assert (=> bs!1564670 (not (= lambda!343228 lambda!343143))))

(declare-fun exists!2521 ((InoxSet Context!11142) Int) Bool)

(assert (=> d!1967035 (= (nullableZipper!1957 lt!2351084) (exists!2521 lt!2351084 lambda!343228))))

(declare-fun bs!1564671 () Bool)

(assert (= bs!1564671 d!1967035))

(declare-fun m!7089688 () Bool)

(assert (=> bs!1564671 m!7089688))

(assert (=> b!6266964 d!1967035))

(declare-fun d!1967037 () Bool)

(declare-fun res!2585610 () Bool)

(declare-fun e!3812284 () Bool)

(assert (=> d!1967037 (=> res!2585610 e!3812284)))

(assert (=> d!1967037 (= res!2585610 ((_ is Nil!64737) lt!2351106))))

(assert (=> d!1967037 (= (forall!15313 lt!2351106 lambda!343140) e!3812284)))

(declare-fun b!6267823 () Bool)

(declare-fun e!3812285 () Bool)

(assert (=> b!6267823 (= e!3812284 e!3812285)))

(declare-fun res!2585611 () Bool)

(assert (=> b!6267823 (=> (not res!2585611) (not e!3812285))))

(declare-fun dynLambda!25594 (Int Context!11142) Bool)

(assert (=> b!6267823 (= res!2585611 (dynLambda!25594 lambda!343140 (h!71185 lt!2351106)))))

(declare-fun b!6267824 () Bool)

(assert (=> b!6267824 (= e!3812285 (forall!15313 (t!378415 lt!2351106) lambda!343140))))

(assert (= (and d!1967037 (not res!2585610)) b!6267823))

(assert (= (and b!6267823 res!2585611) b!6267824))

(declare-fun b_lambda!238653 () Bool)

(assert (=> (not b_lambda!238653) (not b!6267823)))

(declare-fun m!7089690 () Bool)

(assert (=> b!6267823 m!7089690))

(declare-fun m!7089692 () Bool)

(assert (=> b!6267824 m!7089692))

(assert (=> b!6266769 d!1967037))

(declare-fun call!529869 () List!64860)

(declare-fun bm!529859 () Bool)

(declare-fun call!529867 () (InoxSet Context!11142))

(declare-fun c!1135537 () Bool)

(assert (=> bm!529859 (= call!529867 (derivationStepZipperDown!1435 (ite c!1135537 (regTwo!32887 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))) (regOne!32886 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343))))))))) (ite c!1135537 (ite (or c!1135182 c!1135185) lt!2351103 (Context!11143 call!529664)) (Context!11143 call!529869)) (h!71186 s!2326)))))

(declare-fun bm!529860 () Bool)

(declare-fun call!529868 () (InoxSet Context!11142))

(declare-fun c!1135540 () Bool)

(declare-fun c!1135538 () Bool)

(declare-fun call!529864 () List!64860)

(assert (=> bm!529860 (= call!529868 (derivationStepZipperDown!1435 (ite c!1135537 (regOne!32887 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))) (ite c!1135540 (regTwo!32886 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))) (ite c!1135538 (regOne!32886 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))) (reg!16516 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343))))))))))) (ite (or c!1135537 c!1135540) (ite (or c!1135182 c!1135185) lt!2351103 (Context!11143 call!529664)) (Context!11143 call!529864)) (h!71186 s!2326)))))

(declare-fun c!1135539 () Bool)

(declare-fun b!6267825 () Bool)

(assert (=> b!6267825 (= c!1135539 ((_ is Star!16187) (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))))

(declare-fun e!3812286 () (InoxSet Context!11142))

(declare-fun e!3812287 () (InoxSet Context!11142))

(assert (=> b!6267825 (= e!3812286 e!3812287)))

(declare-fun bm!529861 () Bool)

(declare-fun call!529865 () (InoxSet Context!11142))

(declare-fun call!529866 () (InoxSet Context!11142))

(assert (=> bm!529861 (= call!529865 call!529866)))

(declare-fun c!1135536 () Bool)

(declare-fun d!1967039 () Bool)

(assert (=> d!1967039 (= c!1135536 (and ((_ is ElementMatch!16187) (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))) (= (c!1135024 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))) (h!71186 s!2326))))))

(declare-fun e!3812289 () (InoxSet Context!11142))

(assert (=> d!1967039 (= (derivationStepZipperDown!1435 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343))))))) (ite (or c!1135182 c!1135185) lt!2351103 (Context!11143 call!529664)) (h!71186 s!2326)) e!3812289)))

(declare-fun b!6267826 () Bool)

(assert (=> b!6267826 (= e!3812289 (store ((as const (Array Context!11142 Bool)) false) (ite (or c!1135182 c!1135185) lt!2351103 (Context!11143 call!529664)) true))))

(declare-fun b!6267827 () Bool)

(declare-fun e!3812291 () (InoxSet Context!11142))

(assert (=> b!6267827 (= e!3812291 ((_ map or) call!529868 call!529867))))

(declare-fun b!6267828 () Bool)

(assert (=> b!6267828 (= e!3812287 call!529865)))

(declare-fun b!6267829 () Bool)

(assert (=> b!6267829 (= e!3812289 e!3812291)))

(assert (=> b!6267829 (= c!1135537 ((_ is Union!16187) (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))))

(declare-fun bm!529862 () Bool)

(assert (=> bm!529862 (= call!529866 call!529868)))

(declare-fun b!6267830 () Bool)

(declare-fun e!3812288 () (InoxSet Context!11142))

(assert (=> b!6267830 (= e!3812288 ((_ map or) call!529867 call!529866))))

(declare-fun b!6267831 () Bool)

(assert (=> b!6267831 (= e!3812287 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6267832 () Bool)

(declare-fun e!3812290 () Bool)

(assert (=> b!6267832 (= e!3812290 (nullable!6180 (regOne!32886 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343))))))))))))

(declare-fun b!6267833 () Bool)

(assert (=> b!6267833 (= e!3812286 call!529865)))

(declare-fun bm!529863 () Bool)

(assert (=> bm!529863 (= call!529864 call!529869)))

(declare-fun b!6267834 () Bool)

(assert (=> b!6267834 (= e!3812288 e!3812286)))

(assert (=> b!6267834 (= c!1135538 ((_ is Concat!25032) (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))))

(declare-fun b!6267835 () Bool)

(assert (=> b!6267835 (= c!1135540 e!3812290)))

(declare-fun res!2585612 () Bool)

(assert (=> b!6267835 (=> (not res!2585612) (not e!3812290))))

(assert (=> b!6267835 (= res!2585612 ((_ is Concat!25032) (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))))

(assert (=> b!6267835 (= e!3812291 e!3812288)))

(declare-fun bm!529864 () Bool)

(assert (=> bm!529864 (= call!529869 ($colon$colon!2052 (exprs!6071 (ite (or c!1135182 c!1135185) lt!2351103 (Context!11143 call!529664))) (ite (or c!1135540 c!1135538) (regTwo!32886 (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))))))) (ite c!1135182 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135185 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135183 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343))))))))))))

(assert (= (and d!1967039 c!1135536) b!6267826))

(assert (= (and d!1967039 (not c!1135536)) b!6267829))

(assert (= (and b!6267829 c!1135537) b!6267827))

(assert (= (and b!6267829 (not c!1135537)) b!6267835))

(assert (= (and b!6267835 res!2585612) b!6267832))

(assert (= (and b!6267835 c!1135540) b!6267830))

(assert (= (and b!6267835 (not c!1135540)) b!6267834))

(assert (= (and b!6267834 c!1135538) b!6267833))

(assert (= (and b!6267834 (not c!1135538)) b!6267825))

(assert (= (and b!6267825 c!1135539) b!6267828))

(assert (= (and b!6267825 (not c!1135539)) b!6267831))

(assert (= (or b!6267833 b!6267828) bm!529863))

(assert (= (or b!6267833 b!6267828) bm!529861))

(assert (= (or b!6267830 bm!529863) bm!529864))

(assert (= (or b!6267830 bm!529861) bm!529862))

(assert (= (or b!6267827 b!6267830) bm!529859))

(assert (= (or b!6267827 bm!529862) bm!529860))

(declare-fun m!7089694 () Bool)

(assert (=> bm!529859 m!7089694))

(declare-fun m!7089696 () Bool)

(assert (=> bm!529864 m!7089696))

(declare-fun m!7089698 () Bool)

(assert (=> b!6267832 m!7089698))

(declare-fun m!7089700 () Bool)

(assert (=> b!6267826 m!7089700))

(declare-fun m!7089702 () Bool)

(assert (=> bm!529860 m!7089702))

(assert (=> bm!529660 d!1967039))

(declare-fun d!1967041 () Bool)

(assert (=> d!1967041 (= (isEmpty!36771 (tail!11959 s!2326)) ((_ is Nil!64738) (tail!11959 s!2326)))))

(assert (=> b!6266884 d!1967041))

(declare-fun d!1967043 () Bool)

(assert (=> d!1967043 (= (tail!11959 s!2326) (t!378416 s!2326))))

(assert (=> b!6266884 d!1967043))

(declare-fun b!6267836 () Bool)

(declare-fun e!3812297 () Bool)

(declare-fun lt!2351332 () Bool)

(declare-fun call!529870 () Bool)

(assert (=> b!6267836 (= e!3812297 (= lt!2351332 call!529870))))

(declare-fun b!6267837 () Bool)

(declare-fun e!3812293 () Bool)

(assert (=> b!6267837 (= e!3812293 (not lt!2351332))))

(declare-fun b!6267838 () Bool)

(declare-fun res!2585618 () Bool)

(declare-fun e!3812295 () Bool)

(assert (=> b!6267838 (=> res!2585618 e!3812295)))

(assert (=> b!6267838 (= res!2585618 (not ((_ is ElementMatch!16187) (regOne!32886 r!7292))))))

(assert (=> b!6267838 (= e!3812293 e!3812295)))

(declare-fun b!6267839 () Bool)

(declare-fun e!3812294 () Bool)

(assert (=> b!6267839 (= e!3812294 (= (head!12874 (_1!36469 (get!22370 lt!2351198))) (c!1135024 (regOne!32886 r!7292))))))

(declare-fun b!6267840 () Bool)

(declare-fun res!2585613 () Bool)

(assert (=> b!6267840 (=> (not res!2585613) (not e!3812294))))

(assert (=> b!6267840 (= res!2585613 (not call!529870))))

(declare-fun b!6267842 () Bool)

(declare-fun res!2585620 () Bool)

(assert (=> b!6267842 (=> (not res!2585620) (not e!3812294))))

(assert (=> b!6267842 (= res!2585620 (isEmpty!36771 (tail!11959 (_1!36469 (get!22370 lt!2351198)))))))

(declare-fun b!6267843 () Bool)

(declare-fun e!3812292 () Bool)

(declare-fun e!3812296 () Bool)

(assert (=> b!6267843 (= e!3812292 e!3812296)))

(declare-fun res!2585619 () Bool)

(assert (=> b!6267843 (=> res!2585619 e!3812296)))

(assert (=> b!6267843 (= res!2585619 call!529870)))

(declare-fun b!6267844 () Bool)

(declare-fun e!3812298 () Bool)

(assert (=> b!6267844 (= e!3812298 (matchR!8370 (derivativeStep!4896 (regOne!32886 r!7292) (head!12874 (_1!36469 (get!22370 lt!2351198)))) (tail!11959 (_1!36469 (get!22370 lt!2351198)))))))

(declare-fun b!6267845 () Bool)

(assert (=> b!6267845 (= e!3812296 (not (= (head!12874 (_1!36469 (get!22370 lt!2351198))) (c!1135024 (regOne!32886 r!7292)))))))

(declare-fun b!6267846 () Bool)

(declare-fun res!2585616 () Bool)

(assert (=> b!6267846 (=> res!2585616 e!3812295)))

(assert (=> b!6267846 (= res!2585616 e!3812294)))

(declare-fun res!2585614 () Bool)

(assert (=> b!6267846 (=> (not res!2585614) (not e!3812294))))

(assert (=> b!6267846 (= res!2585614 lt!2351332)))

(declare-fun b!6267847 () Bool)

(declare-fun res!2585617 () Bool)

(assert (=> b!6267847 (=> res!2585617 e!3812296)))

(assert (=> b!6267847 (= res!2585617 (not (isEmpty!36771 (tail!11959 (_1!36469 (get!22370 lt!2351198))))))))

(declare-fun b!6267848 () Bool)

(assert (=> b!6267848 (= e!3812298 (nullable!6180 (regOne!32886 r!7292)))))

(declare-fun bm!529865 () Bool)

(assert (=> bm!529865 (= call!529870 (isEmpty!36771 (_1!36469 (get!22370 lt!2351198))))))

(declare-fun b!6267849 () Bool)

(assert (=> b!6267849 (= e!3812295 e!3812292)))

(declare-fun res!2585615 () Bool)

(assert (=> b!6267849 (=> (not res!2585615) (not e!3812292))))

(assert (=> b!6267849 (= res!2585615 (not lt!2351332))))

(declare-fun d!1967045 () Bool)

(assert (=> d!1967045 e!3812297))

(declare-fun c!1135543 () Bool)

(assert (=> d!1967045 (= c!1135543 ((_ is EmptyExpr!16187) (regOne!32886 r!7292)))))

(assert (=> d!1967045 (= lt!2351332 e!3812298)))

(declare-fun c!1135542 () Bool)

(assert (=> d!1967045 (= c!1135542 (isEmpty!36771 (_1!36469 (get!22370 lt!2351198))))))

(assert (=> d!1967045 (validRegex!7923 (regOne!32886 r!7292))))

(assert (=> d!1967045 (= (matchR!8370 (regOne!32886 r!7292) (_1!36469 (get!22370 lt!2351198))) lt!2351332)))

(declare-fun b!6267841 () Bool)

(assert (=> b!6267841 (= e!3812297 e!3812293)))

(declare-fun c!1135541 () Bool)

(assert (=> b!6267841 (= c!1135541 ((_ is EmptyLang!16187) (regOne!32886 r!7292)))))

(assert (= (and d!1967045 c!1135542) b!6267848))

(assert (= (and d!1967045 (not c!1135542)) b!6267844))

(assert (= (and d!1967045 c!1135543) b!6267836))

(assert (= (and d!1967045 (not c!1135543)) b!6267841))

(assert (= (and b!6267841 c!1135541) b!6267837))

(assert (= (and b!6267841 (not c!1135541)) b!6267838))

(assert (= (and b!6267838 (not res!2585618)) b!6267846))

(assert (= (and b!6267846 res!2585614) b!6267840))

(assert (= (and b!6267840 res!2585613) b!6267842))

(assert (= (and b!6267842 res!2585620) b!6267839))

(assert (= (and b!6267846 (not res!2585616)) b!6267849))

(assert (= (and b!6267849 res!2585615) b!6267843))

(assert (= (and b!6267843 (not res!2585619)) b!6267847))

(assert (= (and b!6267847 (not res!2585617)) b!6267845))

(assert (= (or b!6267836 b!6267840 b!6267843) bm!529865))

(declare-fun m!7089704 () Bool)

(assert (=> d!1967045 m!7089704))

(assert (=> d!1967045 m!7088498))

(declare-fun m!7089706 () Bool)

(assert (=> b!6267847 m!7089706))

(assert (=> b!6267847 m!7089706))

(declare-fun m!7089708 () Bool)

(assert (=> b!6267847 m!7089708))

(assert (=> b!6267842 m!7089706))

(assert (=> b!6267842 m!7089706))

(assert (=> b!6267842 m!7089708))

(declare-fun m!7089710 () Bool)

(assert (=> b!6267848 m!7089710))

(assert (=> bm!529865 m!7089704))

(declare-fun m!7089712 () Bool)

(assert (=> b!6267839 m!7089712))

(assert (=> b!6267844 m!7089712))

(assert (=> b!6267844 m!7089712))

(declare-fun m!7089714 () Bool)

(assert (=> b!6267844 m!7089714))

(assert (=> b!6267844 m!7089706))

(assert (=> b!6267844 m!7089714))

(assert (=> b!6267844 m!7089706))

(declare-fun m!7089716 () Bool)

(assert (=> b!6267844 m!7089716))

(assert (=> b!6267845 m!7089712))

(assert (=> b!6266628 d!1967045))

(declare-fun d!1967047 () Bool)

(assert (=> d!1967047 (= (get!22370 lt!2351198) (v!52232 lt!2351198))))

(assert (=> b!6266628 d!1967047))

(assert (=> b!6266900 d!1966571))

(declare-fun b!6267850 () Bool)

(declare-fun e!3812299 () Bool)

(declare-fun e!3812303 () Bool)

(assert (=> b!6267850 (= e!3812299 e!3812303)))

(declare-fun res!2585622 () Bool)

(assert (=> b!6267850 (=> (not res!2585622) (not e!3812303))))

(declare-fun call!529873 () Bool)

(assert (=> b!6267850 (= res!2585622 call!529873)))

(declare-fun b!6267851 () Bool)

(declare-fun res!2585624 () Bool)

(assert (=> b!6267851 (=> res!2585624 e!3812299)))

(assert (=> b!6267851 (= res!2585624 (not ((_ is Concat!25032) lt!2351209)))))

(declare-fun e!3812302 () Bool)

(assert (=> b!6267851 (= e!3812302 e!3812299)))

(declare-fun b!6267852 () Bool)

(declare-fun e!3812300 () Bool)

(declare-fun e!3812304 () Bool)

(assert (=> b!6267852 (= e!3812300 e!3812304)))

(declare-fun c!1135544 () Bool)

(assert (=> b!6267852 (= c!1135544 ((_ is Star!16187) lt!2351209))))

(declare-fun d!1967049 () Bool)

(declare-fun res!2585625 () Bool)

(assert (=> d!1967049 (=> res!2585625 e!3812300)))

(assert (=> d!1967049 (= res!2585625 ((_ is ElementMatch!16187) lt!2351209))))

(assert (=> d!1967049 (= (validRegex!7923 lt!2351209) e!3812300)))

(declare-fun b!6267853 () Bool)

(declare-fun e!3812305 () Bool)

(declare-fun call!529872 () Bool)

(assert (=> b!6267853 (= e!3812305 call!529872)))

(declare-fun bm!529866 () Bool)

(declare-fun call!529871 () Bool)

(assert (=> bm!529866 (= call!529873 call!529871)))

(declare-fun b!6267854 () Bool)

(assert (=> b!6267854 (= e!3812304 e!3812302)))

(declare-fun c!1135545 () Bool)

(assert (=> b!6267854 (= c!1135545 ((_ is Union!16187) lt!2351209))))

(declare-fun bm!529867 () Bool)

(assert (=> bm!529867 (= call!529872 (validRegex!7923 (ite c!1135545 (regTwo!32887 lt!2351209) (regTwo!32886 lt!2351209))))))

(declare-fun bm!529868 () Bool)

(assert (=> bm!529868 (= call!529871 (validRegex!7923 (ite c!1135544 (reg!16516 lt!2351209) (ite c!1135545 (regOne!32887 lt!2351209) (regOne!32886 lt!2351209)))))))

(declare-fun b!6267855 () Bool)

(declare-fun res!2585623 () Bool)

(assert (=> b!6267855 (=> (not res!2585623) (not e!3812305))))

(assert (=> b!6267855 (= res!2585623 call!529873)))

(assert (=> b!6267855 (= e!3812302 e!3812305)))

(declare-fun b!6267856 () Bool)

(assert (=> b!6267856 (= e!3812303 call!529872)))

(declare-fun b!6267857 () Bool)

(declare-fun e!3812301 () Bool)

(assert (=> b!6267857 (= e!3812304 e!3812301)))

(declare-fun res!2585621 () Bool)

(assert (=> b!6267857 (= res!2585621 (not (nullable!6180 (reg!16516 lt!2351209))))))

(assert (=> b!6267857 (=> (not res!2585621) (not e!3812301))))

(declare-fun b!6267858 () Bool)

(assert (=> b!6267858 (= e!3812301 call!529871)))

(assert (= (and d!1967049 (not res!2585625)) b!6267852))

(assert (= (and b!6267852 c!1135544) b!6267857))

(assert (= (and b!6267852 (not c!1135544)) b!6267854))

(assert (= (and b!6267857 res!2585621) b!6267858))

(assert (= (and b!6267854 c!1135545) b!6267855))

(assert (= (and b!6267854 (not c!1135545)) b!6267851))

(assert (= (and b!6267855 res!2585623) b!6267853))

(assert (= (and b!6267851 (not res!2585624)) b!6267850))

(assert (= (and b!6267850 res!2585622) b!6267856))

(assert (= (or b!6267853 b!6267856) bm!529867))

(assert (= (or b!6267855 b!6267850) bm!529866))

(assert (= (or b!6267858 bm!529866) bm!529868))

(declare-fun m!7089718 () Bool)

(assert (=> bm!529867 m!7089718))

(declare-fun m!7089720 () Bool)

(assert (=> bm!529868 m!7089720))

(declare-fun m!7089722 () Bool)

(assert (=> b!6267857 m!7089722))

(assert (=> d!1966525 d!1967049))

(declare-fun d!1967051 () Bool)

(declare-fun res!2585630 () Bool)

(declare-fun e!3812310 () Bool)

(assert (=> d!1967051 (=> res!2585630 e!3812310)))

(assert (=> d!1967051 (= res!2585630 ((_ is Nil!64736) lt!2351096))))

(assert (=> d!1967051 (= (forall!15312 lt!2351096 lambda!343127) e!3812310)))

(declare-fun b!6267863 () Bool)

(declare-fun e!3812311 () Bool)

(assert (=> b!6267863 (= e!3812310 e!3812311)))

(declare-fun res!2585631 () Bool)

(assert (=> b!6267863 (=> (not res!2585631) (not e!3812311))))

(declare-fun dynLambda!25595 (Int Regex!16187) Bool)

(assert (=> b!6267863 (= res!2585631 (dynLambda!25595 lambda!343127 (h!71184 lt!2351096)))))

(declare-fun b!6267864 () Bool)

(assert (=> b!6267864 (= e!3812311 (forall!15312 (t!378414 lt!2351096) lambda!343127))))

(assert (= (and d!1967051 (not res!2585630)) b!6267863))

(assert (= (and b!6267863 res!2585631) b!6267864))

(declare-fun b_lambda!238655 () Bool)

(assert (=> (not b_lambda!238655) (not b!6267863)))

(declare-fun m!7089724 () Bool)

(assert (=> b!6267863 m!7089724))

(declare-fun m!7089726 () Bool)

(assert (=> b!6267864 m!7089726))

(assert (=> d!1966525 d!1967051))

(declare-fun d!1967053 () Bool)

(assert (=> d!1967053 true))

(declare-fun setRes!42623 () Bool)

(assert (=> d!1967053 setRes!42623))

(declare-fun condSetEmpty!42623 () Bool)

(declare-fun res!2585634 () (InoxSet Context!11142))

(assert (=> d!1967053 (= condSetEmpty!42623 (= res!2585634 ((as const (Array Context!11142 Bool)) false)))))

(assert (=> d!1967053 (= (choose!46489 z!1189 lambda!343069) res!2585634)))

(declare-fun setIsEmpty!42623 () Bool)

(assert (=> setIsEmpty!42623 setRes!42623))

(declare-fun setElem!42623 () Context!11142)

(declare-fun setNonEmpty!42623 () Bool)

(declare-fun tp!1748362 () Bool)

(declare-fun e!3812314 () Bool)

(assert (=> setNonEmpty!42623 (= setRes!42623 (and tp!1748362 (inv!83714 setElem!42623) e!3812314))))

(declare-fun setRest!42623 () (InoxSet Context!11142))

(assert (=> setNonEmpty!42623 (= res!2585634 ((_ map or) (store ((as const (Array Context!11142 Bool)) false) setElem!42623 true) setRest!42623))))

(declare-fun b!6267867 () Bool)

(declare-fun tp!1748361 () Bool)

(assert (=> b!6267867 (= e!3812314 tp!1748361)))

(assert (= (and d!1967053 condSetEmpty!42623) setIsEmpty!42623))

(assert (= (and d!1967053 (not condSetEmpty!42623)) setNonEmpty!42623))

(assert (= setNonEmpty!42623 b!6267867))

(declare-fun m!7089728 () Bool)

(assert (=> setNonEmpty!42623 m!7089728))

(assert (=> d!1966493 d!1967053))

(declare-fun b!6267868 () Bool)

(declare-fun e!3812315 () Bool)

(declare-fun e!3812319 () Bool)

(assert (=> b!6267868 (= e!3812315 e!3812319)))

(declare-fun res!2585636 () Bool)

(assert (=> b!6267868 (=> (not res!2585636) (not e!3812319))))

(declare-fun call!529876 () Bool)

(assert (=> b!6267868 (= res!2585636 call!529876)))

(declare-fun b!6267869 () Bool)

(declare-fun res!2585638 () Bool)

(assert (=> b!6267869 (=> res!2585638 e!3812315)))

(assert (=> b!6267869 (= res!2585638 (not ((_ is Concat!25032) (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095)))))))

(declare-fun e!3812318 () Bool)

(assert (=> b!6267869 (= e!3812318 e!3812315)))

(declare-fun b!6267870 () Bool)

(declare-fun e!3812316 () Bool)

(declare-fun e!3812320 () Bool)

(assert (=> b!6267870 (= e!3812316 e!3812320)))

(declare-fun c!1135546 () Bool)

(assert (=> b!6267870 (= c!1135546 ((_ is Star!16187) (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))))))

(declare-fun d!1967055 () Bool)

(declare-fun res!2585639 () Bool)

(assert (=> d!1967055 (=> res!2585639 e!3812316)))

(assert (=> d!1967055 (= res!2585639 ((_ is ElementMatch!16187) (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))))))

(assert (=> d!1967055 (= (validRegex!7923 (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))) e!3812316)))

(declare-fun b!6267871 () Bool)

(declare-fun e!3812321 () Bool)

(declare-fun call!529875 () Bool)

(assert (=> b!6267871 (= e!3812321 call!529875)))

(declare-fun bm!529869 () Bool)

(declare-fun call!529874 () Bool)

(assert (=> bm!529869 (= call!529876 call!529874)))

(declare-fun b!6267872 () Bool)

(assert (=> b!6267872 (= e!3812320 e!3812318)))

(declare-fun c!1135547 () Bool)

(assert (=> b!6267872 (= c!1135547 ((_ is Union!16187) (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))))))

(declare-fun bm!529870 () Bool)

(assert (=> bm!529870 (= call!529875 (validRegex!7923 (ite c!1135547 (regTwo!32887 (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))) (regTwo!32886 (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))))))))

(declare-fun bm!529871 () Bool)

(assert (=> bm!529871 (= call!529874 (validRegex!7923 (ite c!1135546 (reg!16516 (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))) (ite c!1135547 (regOne!32887 (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))) (regOne!32886 (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095)))))))))

(declare-fun b!6267873 () Bool)

(declare-fun res!2585637 () Bool)

(assert (=> b!6267873 (=> (not res!2585637) (not e!3812321))))

(assert (=> b!6267873 (= res!2585637 call!529876)))

(assert (=> b!6267873 (= e!3812318 e!3812321)))

(declare-fun b!6267874 () Bool)

(assert (=> b!6267874 (= e!3812319 call!529875)))

(declare-fun b!6267875 () Bool)

(declare-fun e!3812317 () Bool)

(assert (=> b!6267875 (= e!3812320 e!3812317)))

(declare-fun res!2585635 () Bool)

(assert (=> b!6267875 (= res!2585635 (not (nullable!6180 (reg!16516 (ite c!1135210 (regTwo!32887 lt!2351095) (regTwo!32886 lt!2351095))))))))

(assert (=> b!6267875 (=> (not res!2585635) (not e!3812317))))

(declare-fun b!6267876 () Bool)

(assert (=> b!6267876 (= e!3812317 call!529874)))

(assert (= (and d!1967055 (not res!2585639)) b!6267870))

(assert (= (and b!6267870 c!1135546) b!6267875))

(assert (= (and b!6267870 (not c!1135546)) b!6267872))

(assert (= (and b!6267875 res!2585635) b!6267876))

(assert (= (and b!6267872 c!1135547) b!6267873))

(assert (= (and b!6267872 (not c!1135547)) b!6267869))

(assert (= (and b!6267873 res!2585637) b!6267871))

(assert (= (and b!6267869 (not res!2585638)) b!6267868))

(assert (= (and b!6267868 res!2585636) b!6267874))

(assert (= (or b!6267871 b!6267874) bm!529870))

(assert (= (or b!6267873 b!6267868) bm!529869))

(assert (= (or b!6267876 bm!529869) bm!529871))

(declare-fun m!7089730 () Bool)

(assert (=> bm!529870 m!7089730))

(declare-fun m!7089732 () Bool)

(assert (=> bm!529871 m!7089732))

(declare-fun m!7089734 () Bool)

(assert (=> b!6267875 m!7089734))

(assert (=> bm!529677 d!1967055))

(declare-fun d!1967057 () Bool)

(assert (=> d!1967057 (= (isEmpty!36771 (t!378416 s!2326)) ((_ is Nil!64738) (t!378416 s!2326)))))

(assert (=> d!1966571 d!1967057))

(declare-fun d!1967059 () Bool)

(assert (=> d!1967059 (= (nullable!6180 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292)))) (nullableFct!2132 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292)))))))

(declare-fun bs!1564672 () Bool)

(assert (= bs!1564672 d!1967059))

(declare-fun m!7089736 () Bool)

(assert (=> bs!1564672 m!7089736))

(assert (=> b!6266801 d!1967059))

(declare-fun c!1135549 () Bool)

(declare-fun bm!529872 () Bool)

(declare-fun call!529880 () (InoxSet Context!11142))

(declare-fun call!529882 () List!64860)

(assert (=> bm!529872 (= call!529880 (derivationStepZipperDown!1435 (ite c!1135549 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))) (ite c!1135549 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))) (Context!11143 call!529882)) (h!71186 s!2326)))))

(declare-fun c!1135550 () Bool)

(declare-fun c!1135552 () Bool)

(declare-fun call!529877 () List!64860)

(declare-fun call!529881 () (InoxSet Context!11142))

(declare-fun bm!529873 () Bool)

(assert (=> bm!529873 (= call!529881 (derivationStepZipperDown!1435 (ite c!1135549 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135552 (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135550 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343))))))) (ite (or c!1135549 c!1135552) (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))) (Context!11143 call!529877)) (h!71186 s!2326)))))

(declare-fun b!6267877 () Bool)

(declare-fun c!1135551 () Bool)

(assert (=> b!6267877 (= c!1135551 ((_ is Star!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun e!3812322 () (InoxSet Context!11142))

(declare-fun e!3812323 () (InoxSet Context!11142))

(assert (=> b!6267877 (= e!3812322 e!3812323)))

(declare-fun bm!529874 () Bool)

(declare-fun call!529878 () (InoxSet Context!11142))

(declare-fun call!529879 () (InoxSet Context!11142))

(assert (=> bm!529874 (= call!529878 call!529879)))

(declare-fun d!1967061 () Bool)

(declare-fun c!1135548 () Bool)

(assert (=> d!1967061 (= c!1135548 (and ((_ is ElementMatch!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))) (= (c!1135024 (h!71184 (exprs!6071 (h!71185 zl!343)))) (h!71186 s!2326))))))

(declare-fun e!3812325 () (InoxSet Context!11142))

(assert (=> d!1967061 (= (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (h!71185 zl!343))) (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))) (h!71186 s!2326)) e!3812325)))

(declare-fun b!6267878 () Bool)

(assert (=> b!6267878 (= e!3812325 (store ((as const (Array Context!11142 Bool)) false) (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))) true))))

(declare-fun b!6267879 () Bool)

(declare-fun e!3812327 () (InoxSet Context!11142))

(assert (=> b!6267879 (= e!3812327 ((_ map or) call!529881 call!529880))))

(declare-fun b!6267880 () Bool)

(assert (=> b!6267880 (= e!3812323 call!529878)))

(declare-fun b!6267881 () Bool)

(assert (=> b!6267881 (= e!3812325 e!3812327)))

(assert (=> b!6267881 (= c!1135549 ((_ is Union!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun bm!529875 () Bool)

(assert (=> bm!529875 (= call!529879 call!529881)))

(declare-fun b!6267882 () Bool)

(declare-fun e!3812324 () (InoxSet Context!11142))

(assert (=> b!6267882 (= e!3812324 ((_ map or) call!529880 call!529879))))

(declare-fun b!6267883 () Bool)

(assert (=> b!6267883 (= e!3812323 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6267884 () Bool)

(declare-fun e!3812326 () Bool)

(assert (=> b!6267884 (= e!3812326 (nullable!6180 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))))))

(declare-fun b!6267885 () Bool)

(assert (=> b!6267885 (= e!3812322 call!529878)))

(declare-fun bm!529876 () Bool)

(assert (=> bm!529876 (= call!529877 call!529882)))

(declare-fun b!6267886 () Bool)

(assert (=> b!6267886 (= e!3812324 e!3812322)))

(assert (=> b!6267886 (= c!1135550 ((_ is Concat!25032) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6267887 () Bool)

(assert (=> b!6267887 (= c!1135552 e!3812326)))

(declare-fun res!2585640 () Bool)

(assert (=> b!6267887 (=> (not res!2585640) (not e!3812326))))

(assert (=> b!6267887 (= res!2585640 ((_ is Concat!25032) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(assert (=> b!6267887 (= e!3812327 e!3812324)))

(declare-fun bm!529877 () Bool)

(assert (=> bm!529877 (= call!529882 ($colon$colon!2052 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343))))) (ite (or c!1135552 c!1135550) (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (h!71184 (exprs!6071 (h!71185 zl!343))))))))

(assert (= (and d!1967061 c!1135548) b!6267878))

(assert (= (and d!1967061 (not c!1135548)) b!6267881))

(assert (= (and b!6267881 c!1135549) b!6267879))

(assert (= (and b!6267881 (not c!1135549)) b!6267887))

(assert (= (and b!6267887 res!2585640) b!6267884))

(assert (= (and b!6267887 c!1135552) b!6267882))

(assert (= (and b!6267887 (not c!1135552)) b!6267886))

(assert (= (and b!6267886 c!1135550) b!6267885))

(assert (= (and b!6267886 (not c!1135550)) b!6267877))

(assert (= (and b!6267877 c!1135551) b!6267880))

(assert (= (and b!6267877 (not c!1135551)) b!6267883))

(assert (= (or b!6267885 b!6267880) bm!529876))

(assert (= (or b!6267885 b!6267880) bm!529874))

(assert (= (or b!6267882 bm!529876) bm!529877))

(assert (= (or b!6267882 bm!529874) bm!529875))

(assert (= (or b!6267879 b!6267882) bm!529872))

(assert (= (or b!6267879 bm!529875) bm!529873))

(declare-fun m!7089738 () Bool)

(assert (=> bm!529872 m!7089738))

(declare-fun m!7089740 () Bool)

(assert (=> bm!529877 m!7089740))

(assert (=> b!6267884 m!7088468))

(declare-fun m!7089742 () Bool)

(assert (=> b!6267878 m!7089742))

(declare-fun m!7089744 () Bool)

(assert (=> bm!529873 m!7089744))

(assert (=> bm!529669 d!1967061))

(declare-fun bm!529878 () Bool)

(declare-fun call!529888 () List!64860)

(declare-fun c!1135554 () Bool)

(declare-fun call!529886 () (InoxSet Context!11142))

(assert (=> bm!529878 (= call!529886 (derivationStepZipperDown!1435 (ite c!1135554 (regTwo!32887 (h!71184 (exprs!6071 lt!2351103))) (regOne!32886 (h!71184 (exprs!6071 lt!2351103)))) (ite c!1135554 (Context!11143 (t!378414 (exprs!6071 lt!2351103))) (Context!11143 call!529888)) (h!71186 s!2326)))))

(declare-fun c!1135557 () Bool)

(declare-fun c!1135555 () Bool)

(declare-fun call!529887 () (InoxSet Context!11142))

(declare-fun bm!529879 () Bool)

(declare-fun call!529883 () List!64860)

(assert (=> bm!529879 (= call!529887 (derivationStepZipperDown!1435 (ite c!1135554 (regOne!32887 (h!71184 (exprs!6071 lt!2351103))) (ite c!1135557 (regTwo!32886 (h!71184 (exprs!6071 lt!2351103))) (ite c!1135555 (regOne!32886 (h!71184 (exprs!6071 lt!2351103))) (reg!16516 (h!71184 (exprs!6071 lt!2351103)))))) (ite (or c!1135554 c!1135557) (Context!11143 (t!378414 (exprs!6071 lt!2351103))) (Context!11143 call!529883)) (h!71186 s!2326)))))

(declare-fun b!6267888 () Bool)

(declare-fun c!1135556 () Bool)

(assert (=> b!6267888 (= c!1135556 ((_ is Star!16187) (h!71184 (exprs!6071 lt!2351103))))))

(declare-fun e!3812328 () (InoxSet Context!11142))

(declare-fun e!3812329 () (InoxSet Context!11142))

(assert (=> b!6267888 (= e!3812328 e!3812329)))

(declare-fun bm!529880 () Bool)

(declare-fun call!529884 () (InoxSet Context!11142))

(declare-fun call!529885 () (InoxSet Context!11142))

(assert (=> bm!529880 (= call!529884 call!529885)))

(declare-fun d!1967063 () Bool)

(declare-fun c!1135553 () Bool)

(assert (=> d!1967063 (= c!1135553 (and ((_ is ElementMatch!16187) (h!71184 (exprs!6071 lt!2351103))) (= (c!1135024 (h!71184 (exprs!6071 lt!2351103))) (h!71186 s!2326))))))

(declare-fun e!3812331 () (InoxSet Context!11142))

(assert (=> d!1967063 (= (derivationStepZipperDown!1435 (h!71184 (exprs!6071 lt!2351103)) (Context!11143 (t!378414 (exprs!6071 lt!2351103))) (h!71186 s!2326)) e!3812331)))

(declare-fun b!6267889 () Bool)

(assert (=> b!6267889 (= e!3812331 (store ((as const (Array Context!11142 Bool)) false) (Context!11143 (t!378414 (exprs!6071 lt!2351103))) true))))

(declare-fun b!6267890 () Bool)

(declare-fun e!3812333 () (InoxSet Context!11142))

(assert (=> b!6267890 (= e!3812333 ((_ map or) call!529887 call!529886))))

(declare-fun b!6267891 () Bool)

(assert (=> b!6267891 (= e!3812329 call!529884)))

(declare-fun b!6267892 () Bool)

(assert (=> b!6267892 (= e!3812331 e!3812333)))

(assert (=> b!6267892 (= c!1135554 ((_ is Union!16187) (h!71184 (exprs!6071 lt!2351103))))))

(declare-fun bm!529881 () Bool)

(assert (=> bm!529881 (= call!529885 call!529887)))

(declare-fun b!6267893 () Bool)

(declare-fun e!3812330 () (InoxSet Context!11142))

(assert (=> b!6267893 (= e!3812330 ((_ map or) call!529886 call!529885))))

(declare-fun b!6267894 () Bool)

(assert (=> b!6267894 (= e!3812329 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6267895 () Bool)

(declare-fun e!3812332 () Bool)

(assert (=> b!6267895 (= e!3812332 (nullable!6180 (regOne!32886 (h!71184 (exprs!6071 lt!2351103)))))))

(declare-fun b!6267896 () Bool)

(assert (=> b!6267896 (= e!3812328 call!529884)))

(declare-fun bm!529882 () Bool)

(assert (=> bm!529882 (= call!529883 call!529888)))

(declare-fun b!6267897 () Bool)

(assert (=> b!6267897 (= e!3812330 e!3812328)))

(assert (=> b!6267897 (= c!1135555 ((_ is Concat!25032) (h!71184 (exprs!6071 lt!2351103))))))

(declare-fun b!6267898 () Bool)

(assert (=> b!6267898 (= c!1135557 e!3812332)))

(declare-fun res!2585641 () Bool)

(assert (=> b!6267898 (=> (not res!2585641) (not e!3812332))))

(assert (=> b!6267898 (= res!2585641 ((_ is Concat!25032) (h!71184 (exprs!6071 lt!2351103))))))

(assert (=> b!6267898 (= e!3812333 e!3812330)))

(declare-fun bm!529883 () Bool)

(assert (=> bm!529883 (= call!529888 ($colon$colon!2052 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351103)))) (ite (or c!1135557 c!1135555) (regTwo!32886 (h!71184 (exprs!6071 lt!2351103))) (h!71184 (exprs!6071 lt!2351103)))))))

(assert (= (and d!1967063 c!1135553) b!6267889))

(assert (= (and d!1967063 (not c!1135553)) b!6267892))

(assert (= (and b!6267892 c!1135554) b!6267890))

(assert (= (and b!6267892 (not c!1135554)) b!6267898))

(assert (= (and b!6267898 res!2585641) b!6267895))

(assert (= (and b!6267898 c!1135557) b!6267893))

(assert (= (and b!6267898 (not c!1135557)) b!6267897))

(assert (= (and b!6267897 c!1135555) b!6267896))

(assert (= (and b!6267897 (not c!1135555)) b!6267888))

(assert (= (and b!6267888 c!1135556) b!6267891))

(assert (= (and b!6267888 (not c!1135556)) b!6267894))

(assert (= (or b!6267896 b!6267891) bm!529882))

(assert (= (or b!6267896 b!6267891) bm!529880))

(assert (= (or b!6267893 bm!529882) bm!529883))

(assert (= (or b!6267893 bm!529880) bm!529881))

(assert (= (or b!6267890 b!6267893) bm!529878))

(assert (= (or b!6267890 bm!529881) bm!529879))

(declare-fun m!7089746 () Bool)

(assert (=> bm!529878 m!7089746))

(declare-fun m!7089748 () Bool)

(assert (=> bm!529883 m!7089748))

(declare-fun m!7089750 () Bool)

(assert (=> b!6267895 m!7089750))

(declare-fun m!7089752 () Bool)

(assert (=> b!6267889 m!7089752))

(declare-fun m!7089754 () Bool)

(assert (=> bm!529879 m!7089754))

(assert (=> bm!529668 d!1967063))

(declare-fun call!529892 () (InoxSet Context!11142))

(declare-fun c!1135559 () Bool)

(declare-fun call!529894 () List!64860)

(declare-fun bm!529884 () Bool)

(assert (=> bm!529884 (= call!529892 (derivationStepZipperDown!1435 (ite c!1135559 (regTwo!32887 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (regOne!32886 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))) (ite c!1135559 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (Context!11143 call!529894)) (h!71186 s!2326)))))

(declare-fun call!529889 () List!64860)

(declare-fun call!529893 () (InoxSet Context!11142))

(declare-fun c!1135562 () Bool)

(declare-fun bm!529885 () Bool)

(declare-fun c!1135560 () Bool)

(assert (=> bm!529885 (= call!529893 (derivationStepZipperDown!1435 (ite c!1135559 (regOne!32887 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (ite c!1135562 (regTwo!32886 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (ite c!1135560 (regOne!32886 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (reg!16516 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))))) (ite (or c!1135559 c!1135562) (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (Context!11143 call!529889)) (h!71186 s!2326)))))

(declare-fun b!6267899 () Bool)

(declare-fun c!1135561 () Bool)

(assert (=> b!6267899 (= c!1135561 ((_ is Star!16187) (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))))

(declare-fun e!3812334 () (InoxSet Context!11142))

(declare-fun e!3812335 () (InoxSet Context!11142))

(assert (=> b!6267899 (= e!3812334 e!3812335)))

(declare-fun bm!529886 () Bool)

(declare-fun call!529890 () (InoxSet Context!11142))

(declare-fun call!529891 () (InoxSet Context!11142))

(assert (=> bm!529886 (= call!529890 call!529891)))

(declare-fun d!1967065 () Bool)

(declare-fun c!1135558 () Bool)

(assert (=> d!1967065 (= c!1135558 (and ((_ is ElementMatch!16187) (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (= (c!1135024 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (h!71186 s!2326))))))

(declare-fun e!3812337 () (InoxSet Context!11142))

(assert (=> d!1967065 (= (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))) (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (h!71186 s!2326)) e!3812337)))

(declare-fun b!6267900 () Bool)

(assert (=> b!6267900 (= e!3812337 (store ((as const (Array Context!11142 Bool)) false) (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) true))))

(declare-fun b!6267901 () Bool)

(declare-fun e!3812339 () (InoxSet Context!11142))

(assert (=> b!6267901 (= e!3812339 ((_ map or) call!529893 call!529892))))

(declare-fun b!6267902 () Bool)

(assert (=> b!6267902 (= e!3812335 call!529890)))

(declare-fun b!6267903 () Bool)

(assert (=> b!6267903 (= e!3812337 e!3812339)))

(assert (=> b!6267903 (= c!1135559 ((_ is Union!16187) (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))))

(declare-fun bm!529887 () Bool)

(assert (=> bm!529887 (= call!529891 call!529893)))

(declare-fun b!6267904 () Bool)

(declare-fun e!3812336 () (InoxSet Context!11142))

(assert (=> b!6267904 (= e!3812336 ((_ map or) call!529892 call!529891))))

(declare-fun b!6267905 () Bool)

(assert (=> b!6267905 (= e!3812335 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6267906 () Bool)

(declare-fun e!3812338 () Bool)

(assert (=> b!6267906 (= e!3812338 (nullable!6180 (regOne!32886 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))))))

(declare-fun b!6267907 () Bool)

(assert (=> b!6267907 (= e!3812334 call!529890)))

(declare-fun bm!529888 () Bool)

(assert (=> bm!529888 (= call!529889 call!529894)))

(declare-fun b!6267908 () Bool)

(assert (=> b!6267908 (= e!3812336 e!3812334)))

(assert (=> b!6267908 (= c!1135560 ((_ is Concat!25032) (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))))

(declare-fun b!6267909 () Bool)

(assert (=> b!6267909 (= c!1135562 e!3812338)))

(declare-fun res!2585642 () Bool)

(assert (=> b!6267909 (=> (not res!2585642) (not e!3812338))))

(assert (=> b!6267909 (= res!2585642 ((_ is Concat!25032) (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))))

(assert (=> b!6267909 (= e!3812339 e!3812336)))

(declare-fun bm!529889 () Bool)

(assert (=> bm!529889 (= call!529894 ($colon$colon!2052 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))) (ite (or c!1135562 c!1135560) (regTwo!32886 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))))))

(assert (= (and d!1967065 c!1135558) b!6267900))

(assert (= (and d!1967065 (not c!1135558)) b!6267903))

(assert (= (and b!6267903 c!1135559) b!6267901))

(assert (= (and b!6267903 (not c!1135559)) b!6267909))

(assert (= (and b!6267909 res!2585642) b!6267906))

(assert (= (and b!6267909 c!1135562) b!6267904))

(assert (= (and b!6267909 (not c!1135562)) b!6267908))

(assert (= (and b!6267908 c!1135560) b!6267907))

(assert (= (and b!6267908 (not c!1135560)) b!6267899))

(assert (= (and b!6267899 c!1135561) b!6267902))

(assert (= (and b!6267899 (not c!1135561)) b!6267905))

(assert (= (or b!6267907 b!6267902) bm!529888))

(assert (= (or b!6267907 b!6267902) bm!529886))

(assert (= (or b!6267904 bm!529888) bm!529889))

(assert (= (or b!6267904 bm!529886) bm!529887))

(assert (= (or b!6267901 b!6267904) bm!529884))

(assert (= (or b!6267901 bm!529887) bm!529885))

(declare-fun m!7089756 () Bool)

(assert (=> bm!529884 m!7089756))

(declare-fun m!7089758 () Bool)

(assert (=> bm!529889 m!7089758))

(declare-fun m!7089760 () Bool)

(assert (=> b!6267906 m!7089760))

(declare-fun m!7089762 () Bool)

(assert (=> b!6267900 m!7089762))

(declare-fun m!7089764 () Bool)

(assert (=> bm!529885 m!7089764))

(assert (=> bm!529667 d!1967065))

(declare-fun b!6267910 () Bool)

(declare-fun e!3812342 () (InoxSet Context!11142))

(declare-fun call!529895 () (InoxSet Context!11142))

(assert (=> b!6267910 (= e!3812342 ((_ map or) call!529895 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351109)))))) (h!71186 s!2326))))))

(declare-fun b!6267911 () Bool)

(declare-fun e!3812340 () (InoxSet Context!11142))

(assert (=> b!6267911 (= e!3812340 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1967067 () Bool)

(declare-fun c!1135563 () Bool)

(declare-fun e!3812341 () Bool)

(assert (=> d!1967067 (= c!1135563 e!3812341)))

(declare-fun res!2585643 () Bool)

(assert (=> d!1967067 (=> (not res!2585643) (not e!3812341))))

(assert (=> d!1967067 (= res!2585643 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351109))))))))

(assert (=> d!1967067 (= (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 lt!2351109))) (h!71186 s!2326)) e!3812342)))

(declare-fun bm!529890 () Bool)

(assert (=> bm!529890 (= call!529895 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351109))))) (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351109)))))) (h!71186 s!2326)))))

(declare-fun b!6267912 () Bool)

(assert (=> b!6267912 (= e!3812341 (nullable!6180 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351109)))))))))

(declare-fun b!6267913 () Bool)

(assert (=> b!6267913 (= e!3812340 call!529895)))

(declare-fun b!6267914 () Bool)

(assert (=> b!6267914 (= e!3812342 e!3812340)))

(declare-fun c!1135564 () Bool)

(assert (=> b!6267914 (= c!1135564 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351109))))))))

(assert (= (and d!1967067 res!2585643) b!6267912))

(assert (= (and d!1967067 c!1135563) b!6267910))

(assert (= (and d!1967067 (not c!1135563)) b!6267914))

(assert (= (and b!6267914 c!1135564) b!6267913))

(assert (= (and b!6267914 (not c!1135564)) b!6267911))

(assert (= (or b!6267910 b!6267913) bm!529890))

(declare-fun m!7089766 () Bool)

(assert (=> b!6267910 m!7089766))

(declare-fun m!7089768 () Bool)

(assert (=> bm!529890 m!7089768))

(declare-fun m!7089770 () Bool)

(assert (=> b!6267912 m!7089770))

(assert (=> b!6266823 d!1967067))

(declare-fun d!1967069 () Bool)

(assert (=> d!1967069 (= (isEmpty!36766 (tail!11960 lt!2351096)) ((_ is Nil!64736) (tail!11960 lt!2351096)))))

(assert (=> b!6266703 d!1967069))

(declare-fun d!1967071 () Bool)

(assert (=> d!1967071 (= (tail!11960 lt!2351096) (t!378414 lt!2351096))))

(assert (=> b!6266703 d!1967071))

(declare-fun d!1967073 () Bool)

(assert (=> d!1967073 (= ($colon$colon!2052 (exprs!6071 lt!2351109) (ite (or c!1135261 c!1135259) (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 r!7292)))) (Cons!64736 (ite (or c!1135261 c!1135259) (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 r!7292))) (exprs!6071 lt!2351109)))))

(assert (=> bm!529696 d!1967073))

(declare-fun d!1967075 () Bool)

(assert (=> d!1967075 (= (isEmpty!36766 (unfocusZipperList!1608 zl!343)) ((_ is Nil!64736) (unfocusZipperList!1608 zl!343)))))

(assert (=> b!6266934 d!1967075))

(declare-fun bs!1564673 () Bool)

(declare-fun d!1967077 () Bool)

(assert (= bs!1564673 (and d!1967077 b!6266772)))

(declare-fun lambda!343231 () Int)

(assert (=> bs!1564673 (not (= lambda!343231 lambda!343142))))

(declare-fun bs!1564674 () Bool)

(assert (= bs!1564674 (and d!1967077 b!6266769)))

(assert (=> bs!1564674 (not (= lambda!343231 lambda!343140))))

(declare-fun bs!1564675 () Bool)

(assert (= bs!1564675 (and d!1967077 d!1967035)))

(assert (=> bs!1564675 (not (= lambda!343231 lambda!343228))))

(declare-fun bs!1564676 () Bool)

(assert (= bs!1564676 (and d!1967077 b!6266767)))

(assert (=> bs!1564676 (not (= lambda!343231 lambda!343139))))

(declare-fun bs!1564677 () Bool)

(assert (= bs!1564677 (and d!1967077 b!6266774)))

(assert (=> bs!1564677 (not (= lambda!343231 lambda!343143))))

(assert (=> d!1967077 true))

(assert (=> d!1967077 true))

(declare-fun order!27451 () Int)

(declare-fun order!27449 () Int)

(declare-fun dynLambda!25596 (Int Int) Int)

(declare-fun dynLambda!25597 (Int Int) Int)

(assert (=> d!1967077 (< (dynLambda!25596 order!27449 lambda!343141) (dynLambda!25597 order!27451 lambda!343231))))

(assert (=> d!1967077 (forall!15313 (t!378415 zl!343) lambda!343231)))

(declare-fun lt!2351335 () Unit!158079)

(declare-fun choose!46501 (List!64861 Int Int Int) Unit!158079)

(assert (=> d!1967077 (= lt!2351335 (choose!46501 (t!378415 zl!343) lt!2351230 (zipperDepth!312 (t!378415 zl!343)) lambda!343141))))

(assert (=> d!1967077 (>= lt!2351230 (zipperDepth!312 (t!378415 zl!343)))))

(assert (=> d!1967077 (= (lemmaForallContextDepthBiggerThanTransitive!189 (t!378415 zl!343) lt!2351230 (zipperDepth!312 (t!378415 zl!343)) lambda!343141) lt!2351335)))

(declare-fun bs!1564678 () Bool)

(assert (= bs!1564678 d!1967077))

(declare-fun m!7089772 () Bool)

(assert (=> bs!1564678 m!7089772))

(assert (=> bs!1564678 m!7088616))

(declare-fun m!7089774 () Bool)

(assert (=> bs!1564678 m!7089774))

(assert (=> b!6266772 d!1967077))

(declare-fun bs!1564679 () Bool)

(declare-fun b!6267918 () Bool)

(assert (= bs!1564679 (and b!6267918 b!6266767)))

(declare-fun lambda!343232 () Int)

(assert (=> bs!1564679 (= lambda!343232 lambda!343138)))

(declare-fun bs!1564680 () Bool)

(assert (= bs!1564680 (and b!6267918 b!6266772)))

(assert (=> bs!1564680 (= lambda!343232 lambda!343141)))

(declare-fun lambda!343233 () Int)

(declare-fun lt!2351337 () Int)

(assert (=> bs!1564680 (= (= lt!2351337 lt!2351230) (= lambda!343233 lambda!343142))))

(declare-fun bs!1564681 () Bool)

(assert (= bs!1564681 (and b!6267918 b!6266769)))

(assert (=> bs!1564681 (= (= lt!2351337 lt!2351228) (= lambda!343233 lambda!343140))))

(declare-fun bs!1564682 () Bool)

(assert (= bs!1564682 (and b!6267918 d!1967035)))

(assert (=> bs!1564682 (not (= lambda!343233 lambda!343228))))

(declare-fun bs!1564683 () Bool)

(assert (= bs!1564683 (and b!6267918 d!1967077)))

(assert (=> bs!1564683 (not (= lambda!343233 lambda!343231))))

(assert (=> bs!1564679 (= (= lt!2351337 lt!2351226) (= lambda!343233 lambda!343139))))

(declare-fun bs!1564684 () Bool)

(assert (= bs!1564684 (and b!6267918 b!6266774)))

(assert (=> bs!1564684 (= (= lt!2351337 lt!2351232) (= lambda!343233 lambda!343143))))

(assert (=> b!6267918 true))

(declare-fun bs!1564685 () Bool)

(declare-fun b!6267920 () Bool)

(assert (= bs!1564685 (and b!6267920 b!6266772)))

(declare-fun lt!2351339 () Int)

(declare-fun lambda!343234 () Int)

(assert (=> bs!1564685 (= (= lt!2351339 lt!2351230) (= lambda!343234 lambda!343142))))

(declare-fun bs!1564686 () Bool)

(assert (= bs!1564686 (and b!6267920 b!6267918)))

(assert (=> bs!1564686 (= (= lt!2351339 lt!2351337) (= lambda!343234 lambda!343233))))

(declare-fun bs!1564687 () Bool)

(assert (= bs!1564687 (and b!6267920 b!6266769)))

(assert (=> bs!1564687 (= (= lt!2351339 lt!2351228) (= lambda!343234 lambda!343140))))

(declare-fun bs!1564688 () Bool)

(assert (= bs!1564688 (and b!6267920 d!1967035)))

(assert (=> bs!1564688 (not (= lambda!343234 lambda!343228))))

(declare-fun bs!1564689 () Bool)

(assert (= bs!1564689 (and b!6267920 d!1967077)))

(assert (=> bs!1564689 (not (= lambda!343234 lambda!343231))))

(declare-fun bs!1564690 () Bool)

(assert (= bs!1564690 (and b!6267920 b!6266767)))

(assert (=> bs!1564690 (= (= lt!2351339 lt!2351226) (= lambda!343234 lambda!343139))))

(declare-fun bs!1564691 () Bool)

(assert (= bs!1564691 (and b!6267920 b!6266774)))

(assert (=> bs!1564691 (= (= lt!2351339 lt!2351232) (= lambda!343234 lambda!343143))))

(assert (=> b!6267920 true))

(declare-fun d!1967079 () Bool)

(declare-fun e!3812344 () Bool)

(assert (=> d!1967079 e!3812344))

(declare-fun res!2585644 () Bool)

(assert (=> d!1967079 (=> (not res!2585644) (not e!3812344))))

(assert (=> d!1967079 (= res!2585644 (>= lt!2351339 0))))

(declare-fun e!3812343 () Int)

(assert (=> d!1967079 (= lt!2351339 e!3812343)))

(declare-fun c!1135567 () Bool)

(assert (=> d!1967079 (= c!1135567 ((_ is Cons!64737) (t!378415 zl!343)))))

(assert (=> d!1967079 (= (zipperDepth!312 (t!378415 zl!343)) lt!2351339)))

(assert (=> b!6267918 (= e!3812343 lt!2351337)))

(assert (=> b!6267918 (= lt!2351337 (maxBigInt!0 (contextDepth!205 (h!71185 (t!378415 zl!343))) (zipperDepth!312 (t!378415 (t!378415 zl!343)))))))

(declare-fun lt!2351336 () Unit!158079)

(assert (=> b!6267918 (= lt!2351336 (lemmaForallContextDepthBiggerThanTransitive!189 (t!378415 (t!378415 zl!343)) lt!2351337 (zipperDepth!312 (t!378415 (t!378415 zl!343))) lambda!343232))))

(assert (=> b!6267918 (forall!15313 (t!378415 (t!378415 zl!343)) lambda!343233)))

(declare-fun lt!2351338 () Unit!158079)

(assert (=> b!6267918 (= lt!2351338 lt!2351336)))

(declare-fun b!6267919 () Bool)

(assert (=> b!6267919 (= e!3812343 0)))

(assert (=> b!6267920 (= e!3812344 (forall!15313 (t!378415 zl!343) lambda!343234))))

(assert (= (and d!1967079 c!1135567) b!6267918))

(assert (= (and d!1967079 (not c!1135567)) b!6267919))

(assert (= (and d!1967079 res!2585644) b!6267920))

(declare-fun m!7089776 () Bool)

(assert (=> b!6267918 m!7089776))

(declare-fun m!7089778 () Bool)

(assert (=> b!6267918 m!7089778))

(declare-fun m!7089780 () Bool)

(assert (=> b!6267918 m!7089780))

(assert (=> b!6267918 m!7089780))

(assert (=> b!6267918 m!7089776))

(declare-fun m!7089782 () Bool)

(assert (=> b!6267918 m!7089782))

(declare-fun m!7089784 () Bool)

(assert (=> b!6267918 m!7089784))

(assert (=> b!6267918 m!7089776))

(declare-fun m!7089786 () Bool)

(assert (=> b!6267920 m!7089786))

(assert (=> b!6266772 d!1967079))

(declare-fun d!1967081 () Bool)

(assert (=> d!1967081 (= (maxBigInt!0 (contextDepth!205 (h!71185 zl!343)) (zipperDepth!312 (t!378415 zl!343))) (ite (>= (contextDepth!205 (h!71185 zl!343)) (zipperDepth!312 (t!378415 zl!343))) (contextDepth!205 (h!71185 zl!343)) (zipperDepth!312 (t!378415 zl!343))))))

(assert (=> b!6266772 d!1967081))

(declare-fun bs!1564692 () Bool)

(declare-fun b!6267928 () Bool)

(assert (= bs!1564692 (and b!6267928 d!1966533)))

(declare-fun lambda!343239 () Int)

(assert (=> bs!1564692 (not (= lambda!343239 lambda!343131))))

(declare-fun bs!1564693 () Bool)

(assert (= bs!1564693 (and b!6267928 d!1966567)))

(assert (=> bs!1564693 (not (= lambda!343239 lambda!343149))))

(declare-fun bs!1564694 () Bool)

(assert (= bs!1564694 (and b!6267928 d!1966543)))

(assert (=> bs!1564694 (not (= lambda!343239 lambda!343144))))

(declare-fun bs!1564695 () Bool)

(assert (= bs!1564695 (and b!6267928 d!1966597)))

(assert (=> bs!1564695 (not (= lambda!343239 lambda!343158))))

(declare-fun bs!1564696 () Bool)

(assert (= bs!1564696 (and b!6267928 d!1966599)))

(assert (=> bs!1564696 (not (= lambda!343239 lambda!343161))))

(declare-fun bs!1564697 () Bool)

(assert (= bs!1564697 (and b!6267928 d!1966529)))

(assert (=> bs!1564697 (not (= lambda!343239 lambda!343128))))

(declare-fun bs!1564698 () Bool)

(assert (= bs!1564698 (and b!6267928 d!1966525)))

(assert (=> bs!1564698 (not (= lambda!343239 lambda!343127))))

(assert (=> b!6267928 true))

(declare-fun bs!1564699 () Bool)

(declare-fun b!6267930 () Bool)

(assert (= bs!1564699 (and b!6267930 d!1966533)))

(declare-fun lambda!343240 () Int)

(assert (=> bs!1564699 (not (= lambda!343240 lambda!343131))))

(declare-fun bs!1564700 () Bool)

(assert (= bs!1564700 (and b!6267930 b!6267928)))

(declare-fun lt!2351350 () Int)

(declare-fun lt!2351349 () Int)

(assert (=> bs!1564700 (= (= lt!2351350 lt!2351349) (= lambda!343240 lambda!343239))))

(declare-fun bs!1564701 () Bool)

(assert (= bs!1564701 (and b!6267930 d!1966567)))

(assert (=> bs!1564701 (not (= lambda!343240 lambda!343149))))

(declare-fun bs!1564702 () Bool)

(assert (= bs!1564702 (and b!6267930 d!1966543)))

(assert (=> bs!1564702 (not (= lambda!343240 lambda!343144))))

(declare-fun bs!1564703 () Bool)

(assert (= bs!1564703 (and b!6267930 d!1966597)))

(assert (=> bs!1564703 (not (= lambda!343240 lambda!343158))))

(declare-fun bs!1564704 () Bool)

(assert (= bs!1564704 (and b!6267930 d!1966599)))

(assert (=> bs!1564704 (not (= lambda!343240 lambda!343161))))

(declare-fun bs!1564705 () Bool)

(assert (= bs!1564705 (and b!6267930 d!1966529)))

(assert (=> bs!1564705 (not (= lambda!343240 lambda!343128))))

(declare-fun bs!1564706 () Bool)

(assert (= bs!1564706 (and b!6267930 d!1966525)))

(assert (=> bs!1564706 (not (= lambda!343240 lambda!343127))))

(assert (=> b!6267930 true))

(declare-fun d!1967083 () Bool)

(declare-fun e!3812349 () Bool)

(assert (=> d!1967083 e!3812349))

(declare-fun res!2585647 () Bool)

(assert (=> d!1967083 (=> (not res!2585647) (not e!3812349))))

(assert (=> d!1967083 (= res!2585647 (>= lt!2351350 0))))

(declare-fun e!3812350 () Int)

(assert (=> d!1967083 (= lt!2351350 e!3812350)))

(declare-fun c!1135571 () Bool)

(assert (=> d!1967083 (= c!1135571 ((_ is Cons!64736) (exprs!6071 (h!71185 zl!343))))))

(assert (=> d!1967083 (= (contextDepth!205 (h!71185 zl!343)) lt!2351350)))

(assert (=> b!6267928 (= e!3812350 lt!2351349)))

(declare-fun regexDepth!308 (Regex!16187) Int)

(assert (=> b!6267928 (= lt!2351349 (maxBigInt!0 (regexDepth!308 (h!71184 (exprs!6071 (h!71185 zl!343)))) (contextDepth!205 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun lt!2351351 () Unit!158079)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!98 (List!64860 Int Int) Unit!158079)

(assert (=> b!6267928 (= lt!2351351 (lemmaForallRegexDepthBiggerThanTransitive!98 (t!378414 (exprs!6071 (h!71185 zl!343))) lt!2351349 (contextDepth!205 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))))))))

(assert (=> b!6267928 (forall!15312 (t!378414 (exprs!6071 (h!71185 zl!343))) lambda!343239)))

(declare-fun lt!2351348 () Unit!158079)

(assert (=> b!6267928 (= lt!2351348 lt!2351351)))

(declare-fun b!6267929 () Bool)

(assert (=> b!6267929 (= e!3812350 0)))

(assert (=> b!6267930 (= e!3812349 (forall!15312 (exprs!6071 (h!71185 zl!343)) lambda!343240))))

(assert (= (and d!1967083 c!1135571) b!6267928))

(assert (= (and d!1967083 (not c!1135571)) b!6267929))

(assert (= (and d!1967083 res!2585647) b!6267930))

(declare-fun m!7089788 () Bool)

(assert (=> b!6267928 m!7089788))

(declare-fun m!7089790 () Bool)

(assert (=> b!6267928 m!7089790))

(declare-fun m!7089792 () Bool)

(assert (=> b!6267928 m!7089792))

(assert (=> b!6267928 m!7089788))

(assert (=> b!6267928 m!7089790))

(assert (=> b!6267928 m!7089790))

(declare-fun m!7089794 () Bool)

(assert (=> b!6267928 m!7089794))

(declare-fun m!7089796 () Bool)

(assert (=> b!6267928 m!7089796))

(declare-fun m!7089798 () Bool)

(assert (=> b!6267930 m!7089798))

(assert (=> b!6266772 d!1967083))

(declare-fun d!1967085 () Bool)

(declare-fun res!2585648 () Bool)

(declare-fun e!3812351 () Bool)

(assert (=> d!1967085 (=> res!2585648 e!3812351)))

(assert (=> d!1967085 (= res!2585648 ((_ is Nil!64737) (t!378415 zl!343)))))

(assert (=> d!1967085 (= (forall!15313 (t!378415 zl!343) lambda!343142) e!3812351)))

(declare-fun b!6267933 () Bool)

(declare-fun e!3812352 () Bool)

(assert (=> b!6267933 (= e!3812351 e!3812352)))

(declare-fun res!2585649 () Bool)

(assert (=> b!6267933 (=> (not res!2585649) (not e!3812352))))

(assert (=> b!6267933 (= res!2585649 (dynLambda!25594 lambda!343142 (h!71185 (t!378415 zl!343))))))

(declare-fun b!6267934 () Bool)

(assert (=> b!6267934 (= e!3812352 (forall!15313 (t!378415 (t!378415 zl!343)) lambda!343142))))

(assert (= (and d!1967085 (not res!2585648)) b!6267933))

(assert (= (and b!6267933 res!2585649) b!6267934))

(declare-fun b_lambda!238657 () Bool)

(assert (=> (not b_lambda!238657) (not b!6267933)))

(declare-fun m!7089800 () Bool)

(assert (=> b!6267933 m!7089800))

(declare-fun m!7089802 () Bool)

(assert (=> b!6267934 m!7089802))

(assert (=> b!6266772 d!1967085))

(declare-fun d!1967087 () Bool)

(assert (=> d!1967087 (= (isConcat!1116 lt!2351213) ((_ is Concat!25032) lt!2351213))))

(assert (=> b!6266714 d!1967087))

(declare-fun d!1967089 () Bool)

(assert (=> d!1967089 true))

(declare-fun setRes!42624 () Bool)

(assert (=> d!1967089 setRes!42624))

(declare-fun condSetEmpty!42624 () Bool)

(declare-fun res!2585650 () (InoxSet Context!11142))

(assert (=> d!1967089 (= condSetEmpty!42624 (= res!2585650 ((as const (Array Context!11142 Bool)) false)))))

(assert (=> d!1967089 (= (choose!46489 lt!2351077 lambda!343069) res!2585650)))

(declare-fun setIsEmpty!42624 () Bool)

(assert (=> setIsEmpty!42624 setRes!42624))

(declare-fun setNonEmpty!42624 () Bool)

(declare-fun e!3812353 () Bool)

(declare-fun setElem!42624 () Context!11142)

(declare-fun tp!1748364 () Bool)

(assert (=> setNonEmpty!42624 (= setRes!42624 (and tp!1748364 (inv!83714 setElem!42624) e!3812353))))

(declare-fun setRest!42624 () (InoxSet Context!11142))

(assert (=> setNonEmpty!42624 (= res!2585650 ((_ map or) (store ((as const (Array Context!11142 Bool)) false) setElem!42624 true) setRest!42624))))

(declare-fun b!6267935 () Bool)

(declare-fun tp!1748363 () Bool)

(assert (=> b!6267935 (= e!3812353 tp!1748363)))

(assert (= (and d!1967089 condSetEmpty!42624) setIsEmpty!42624))

(assert (= (and d!1967089 (not condSetEmpty!42624)) setNonEmpty!42624))

(assert (= setNonEmpty!42624 b!6267935))

(declare-fun m!7089804 () Bool)

(assert (=> setNonEmpty!42624 m!7089804))

(assert (=> d!1966555 d!1967089))

(declare-fun bs!1564707 () Bool)

(declare-fun d!1967091 () Bool)

(assert (= bs!1564707 (and d!1967091 b!6266772)))

(declare-fun lambda!343241 () Int)

(assert (=> bs!1564707 (not (= lambda!343241 lambda!343142))))

(declare-fun bs!1564708 () Bool)

(assert (= bs!1564708 (and d!1967091 b!6267918)))

(assert (=> bs!1564708 (not (= lambda!343241 lambda!343233))))

(declare-fun bs!1564709 () Bool)

(assert (= bs!1564709 (and d!1967091 b!6266769)))

(assert (=> bs!1564709 (not (= lambda!343241 lambda!343140))))

(declare-fun bs!1564710 () Bool)

(assert (= bs!1564710 (and d!1967091 d!1967035)))

(assert (=> bs!1564710 (= lambda!343241 lambda!343228)))

(declare-fun bs!1564711 () Bool)

(assert (= bs!1564711 (and d!1967091 b!6266767)))

(assert (=> bs!1564711 (not (= lambda!343241 lambda!343139))))

(declare-fun bs!1564712 () Bool)

(assert (= bs!1564712 (and d!1967091 b!6266774)))

(assert (=> bs!1564712 (not (= lambda!343241 lambda!343143))))

(declare-fun bs!1564713 () Bool)

(assert (= bs!1564713 (and d!1967091 b!6267920)))

(assert (=> bs!1564713 (not (= lambda!343241 lambda!343234))))

(declare-fun bs!1564714 () Bool)

(assert (= bs!1564714 (and d!1967091 d!1967077)))

(assert (=> bs!1564714 (not (= lambda!343241 lambda!343231))))

(assert (=> d!1967091 (= (nullableZipper!1957 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326))) (exists!2521 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) lambda!343241))))

(declare-fun bs!1564715 () Bool)

(assert (= bs!1564715 d!1967091))

(assert (=> bs!1564715 m!7088030))

(declare-fun m!7089806 () Bool)

(assert (=> bs!1564715 m!7089806))

(assert (=> b!6266831 d!1967091))

(declare-fun d!1967093 () Bool)

(assert (=> d!1967093 (= (isEmpty!36766 (tail!11960 (exprs!6071 (h!71185 zl!343)))) ((_ is Nil!64736) (tail!11960 (exprs!6071 (h!71185 zl!343)))))))

(assert (=> b!6266788 d!1967093))

(declare-fun d!1967095 () Bool)

(assert (=> d!1967095 (= (tail!11960 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))

(assert (=> b!6266788 d!1967095))

(declare-fun d!1967097 () Bool)

(assert (=> d!1967097 (= (nullable!6180 (reg!16516 lt!2351095)) (nullableFct!2132 (reg!16516 lt!2351095)))))

(declare-fun bs!1564716 () Bool)

(assert (= bs!1564716 d!1967097))

(declare-fun m!7089808 () Bool)

(assert (=> bs!1564716 m!7089808))

(assert (=> b!6266677 d!1967097))

(declare-fun d!1967099 () Bool)

(declare-fun c!1135572 () Bool)

(assert (=> d!1967099 (= c!1135572 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812354 () Bool)

(assert (=> d!1967099 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351110 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812354)))

(declare-fun b!6267936 () Bool)

(assert (=> b!6267936 (= e!3812354 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351110 (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6267937 () Bool)

(assert (=> b!6267937 (= e!3812354 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351110 (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967099 c!1135572) b!6267936))

(assert (= (and d!1967099 (not c!1135572)) b!6267937))

(assert (=> d!1967099 m!7088704))

(declare-fun m!7089810 () Bool)

(assert (=> d!1967099 m!7089810))

(assert (=> b!6267936 m!7088716))

(declare-fun m!7089812 () Bool)

(assert (=> b!6267936 m!7089812))

(assert (=> b!6267937 m!7088704))

(declare-fun m!7089814 () Bool)

(assert (=> b!6267937 m!7089814))

(assert (=> b!6267937 m!7088716))

(assert (=> b!6267937 m!7089814))

(declare-fun m!7089816 () Bool)

(assert (=> b!6267937 m!7089816))

(assert (=> b!6267937 m!7088704))

(declare-fun m!7089818 () Bool)

(assert (=> b!6267937 m!7089818))

(assert (=> b!6267937 m!7089816))

(assert (=> b!6267937 m!7089818))

(declare-fun m!7089820 () Bool)

(assert (=> b!6267937 m!7089820))

(assert (=> b!6266834 d!1967099))

(declare-fun bs!1564717 () Bool)

(declare-fun d!1967101 () Bool)

(assert (= bs!1564717 (and d!1967101 b!6266061)))

(declare-fun lambda!343242 () Int)

(assert (=> bs!1564717 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343242 lambda!343069))))

(declare-fun bs!1564718 () Bool)

(assert (= bs!1564718 (and d!1967101 d!1966549)))

(assert (=> bs!1564718 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343242 lambda!343147))))

(declare-fun bs!1564719 () Bool)

(assert (= bs!1564719 (and d!1967101 d!1966565)))

(assert (=> bs!1564719 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343242 lambda!343148))))

(assert (=> d!1967101 true))

(assert (=> d!1967101 (= (derivationStepZipper!2153 lt!2351110 (head!12874 (t!378416 s!2326))) (flatMap!1692 lt!2351110 lambda!343242))))

(declare-fun bs!1564720 () Bool)

(assert (= bs!1564720 d!1967101))

(declare-fun m!7089822 () Bool)

(assert (=> bs!1564720 m!7089822))

(assert (=> b!6266834 d!1967101))

(declare-fun d!1967103 () Bool)

(assert (=> d!1967103 (= (head!12874 (t!378416 s!2326)) (h!71186 (t!378416 s!2326)))))

(assert (=> b!6266834 d!1967103))

(declare-fun d!1967105 () Bool)

(assert (=> d!1967105 (= (tail!11959 (t!378416 s!2326)) (t!378416 (t!378416 s!2326)))))

(assert (=> b!6266834 d!1967105))

(declare-fun d!1967107 () Bool)

(assert (=> d!1967107 (= (isEmpty!36771 s!2326) ((_ is Nil!64738) s!2326))))

(assert (=> d!1966521 d!1967107))

(declare-fun d!1967109 () Bool)

(assert (=> d!1967109 (= (head!12874 s!2326) (h!71186 s!2326))))

(assert (=> b!6266756 d!1967109))

(declare-fun d!1967111 () Bool)

(declare-fun res!2585655 () Bool)

(declare-fun e!3812359 () Bool)

(assert (=> d!1967111 (=> res!2585655 e!3812359)))

(assert (=> d!1967111 (= res!2585655 ((_ is Nil!64737) lt!2351253))))

(assert (=> d!1967111 (= (noDuplicate!2021 lt!2351253) e!3812359)))

(declare-fun b!6267942 () Bool)

(declare-fun e!3812360 () Bool)

(assert (=> b!6267942 (= e!3812359 e!3812360)))

(declare-fun res!2585656 () Bool)

(assert (=> b!6267942 (=> (not res!2585656) (not e!3812360))))

(declare-fun contains!20119 (List!64861 Context!11142) Bool)

(assert (=> b!6267942 (= res!2585656 (not (contains!20119 (t!378415 lt!2351253) (h!71185 lt!2351253))))))

(declare-fun b!6267943 () Bool)

(assert (=> b!6267943 (= e!3812360 (noDuplicate!2021 (t!378415 lt!2351253)))))

(assert (= (and d!1967111 (not res!2585655)) b!6267942))

(assert (= (and b!6267942 res!2585656) b!6267943))

(declare-fun m!7089824 () Bool)

(assert (=> b!6267942 m!7089824))

(declare-fun m!7089826 () Bool)

(assert (=> b!6267943 m!7089826))

(assert (=> d!1966595 d!1967111))

(declare-fun d!1967113 () Bool)

(declare-fun e!3812368 () Bool)

(assert (=> d!1967113 e!3812368))

(declare-fun res!2585662 () Bool)

(assert (=> d!1967113 (=> (not res!2585662) (not e!3812368))))

(declare-fun res!2585661 () List!64861)

(assert (=> d!1967113 (= res!2585662 (noDuplicate!2021 res!2585661))))

(declare-fun e!3812369 () Bool)

(assert (=> d!1967113 e!3812369))

(assert (=> d!1967113 (= (choose!46497 lt!2351105) res!2585661)))

(declare-fun b!6267951 () Bool)

(declare-fun e!3812367 () Bool)

(declare-fun tp!1748370 () Bool)

(assert (=> b!6267951 (= e!3812367 tp!1748370)))

(declare-fun b!6267950 () Bool)

(declare-fun tp!1748369 () Bool)

(assert (=> b!6267950 (= e!3812369 (and (inv!83714 (h!71185 res!2585661)) e!3812367 tp!1748369))))

(declare-fun b!6267952 () Bool)

(assert (=> b!6267952 (= e!3812368 (= (content!12156 res!2585661) lt!2351105))))

(assert (= b!6267950 b!6267951))

(assert (= (and d!1967113 ((_ is Cons!64737) res!2585661)) b!6267950))

(assert (= (and d!1967113 res!2585662) b!6267952))

(declare-fun m!7089828 () Bool)

(assert (=> d!1967113 m!7089828))

(declare-fun m!7089830 () Bool)

(assert (=> b!6267950 m!7089830))

(declare-fun m!7089832 () Bool)

(assert (=> b!6267952 m!7089832))

(assert (=> d!1966595 d!1967113))

(declare-fun d!1967115 () Bool)

(assert (=> d!1967115 (= (isEmpty!36766 lt!2351096) ((_ is Nil!64736) lt!2351096))))

(assert (=> b!6266707 d!1967115))

(declare-fun d!1967117 () Bool)

(assert (=> d!1967117 (= (isEmpty!36766 (tail!11960 (unfocusZipperList!1608 zl!343))) ((_ is Nil!64736) (tail!11960 (unfocusZipperList!1608 zl!343))))))

(assert (=> b!6266938 d!1967117))

(declare-fun d!1967119 () Bool)

(assert (=> d!1967119 (= (tail!11960 (unfocusZipperList!1608 zl!343)) (t!378414 (unfocusZipperList!1608 zl!343)))))

(assert (=> b!6266938 d!1967119))

(declare-fun b!6267953 () Bool)

(declare-fun e!3812375 () Bool)

(declare-fun lt!2351352 () Bool)

(declare-fun call!529896 () Bool)

(assert (=> b!6267953 (= e!3812375 (= lt!2351352 call!529896))))

(declare-fun b!6267954 () Bool)

(declare-fun e!3812371 () Bool)

(assert (=> b!6267954 (= e!3812371 (not lt!2351352))))

(declare-fun b!6267955 () Bool)

(declare-fun res!2585668 () Bool)

(declare-fun e!3812373 () Bool)

(assert (=> b!6267955 (=> res!2585668 e!3812373)))

(assert (=> b!6267955 (= res!2585668 (not ((_ is ElementMatch!16187) (regTwo!32886 r!7292))))))

(assert (=> b!6267955 (= e!3812371 e!3812373)))

(declare-fun b!6267956 () Bool)

(declare-fun e!3812372 () Bool)

(assert (=> b!6267956 (= e!3812372 (= (head!12874 s!2326) (c!1135024 (regTwo!32886 r!7292))))))

(declare-fun b!6267957 () Bool)

(declare-fun res!2585663 () Bool)

(assert (=> b!6267957 (=> (not res!2585663) (not e!3812372))))

(assert (=> b!6267957 (= res!2585663 (not call!529896))))

(declare-fun b!6267959 () Bool)

(declare-fun res!2585670 () Bool)

(assert (=> b!6267959 (=> (not res!2585670) (not e!3812372))))

(assert (=> b!6267959 (= res!2585670 (isEmpty!36771 (tail!11959 s!2326)))))

(declare-fun b!6267960 () Bool)

(declare-fun e!3812370 () Bool)

(declare-fun e!3812374 () Bool)

(assert (=> b!6267960 (= e!3812370 e!3812374)))

(declare-fun res!2585669 () Bool)

(assert (=> b!6267960 (=> res!2585669 e!3812374)))

(assert (=> b!6267960 (= res!2585669 call!529896)))

(declare-fun b!6267961 () Bool)

(declare-fun e!3812376 () Bool)

(assert (=> b!6267961 (= e!3812376 (matchR!8370 (derivativeStep!4896 (regTwo!32886 r!7292) (head!12874 s!2326)) (tail!11959 s!2326)))))

(declare-fun b!6267962 () Bool)

(assert (=> b!6267962 (= e!3812374 (not (= (head!12874 s!2326) (c!1135024 (regTwo!32886 r!7292)))))))

(declare-fun b!6267963 () Bool)

(declare-fun res!2585666 () Bool)

(assert (=> b!6267963 (=> res!2585666 e!3812373)))

(assert (=> b!6267963 (= res!2585666 e!3812372)))

(declare-fun res!2585664 () Bool)

(assert (=> b!6267963 (=> (not res!2585664) (not e!3812372))))

(assert (=> b!6267963 (= res!2585664 lt!2351352)))

(declare-fun b!6267964 () Bool)

(declare-fun res!2585667 () Bool)

(assert (=> b!6267964 (=> res!2585667 e!3812374)))

(assert (=> b!6267964 (= res!2585667 (not (isEmpty!36771 (tail!11959 s!2326))))))

(declare-fun b!6267965 () Bool)

(assert (=> b!6267965 (= e!3812376 (nullable!6180 (regTwo!32886 r!7292)))))

(declare-fun bm!529891 () Bool)

(assert (=> bm!529891 (= call!529896 (isEmpty!36771 s!2326))))

(declare-fun b!6267966 () Bool)

(assert (=> b!6267966 (= e!3812373 e!3812370)))

(declare-fun res!2585665 () Bool)

(assert (=> b!6267966 (=> (not res!2585665) (not e!3812370))))

(assert (=> b!6267966 (= res!2585665 (not lt!2351352))))

(declare-fun d!1967121 () Bool)

(assert (=> d!1967121 e!3812375))

(declare-fun c!1135575 () Bool)

(assert (=> d!1967121 (= c!1135575 ((_ is EmptyExpr!16187) (regTwo!32886 r!7292)))))

(assert (=> d!1967121 (= lt!2351352 e!3812376)))

(declare-fun c!1135574 () Bool)

(assert (=> d!1967121 (= c!1135574 (isEmpty!36771 s!2326))))

(assert (=> d!1967121 (validRegex!7923 (regTwo!32886 r!7292))))

(assert (=> d!1967121 (= (matchR!8370 (regTwo!32886 r!7292) s!2326) lt!2351352)))

(declare-fun b!6267958 () Bool)

(assert (=> b!6267958 (= e!3812375 e!3812371)))

(declare-fun c!1135573 () Bool)

(assert (=> b!6267958 (= c!1135573 ((_ is EmptyLang!16187) (regTwo!32886 r!7292)))))

(assert (= (and d!1967121 c!1135574) b!6267965))

(assert (= (and d!1967121 (not c!1135574)) b!6267961))

(assert (= (and d!1967121 c!1135575) b!6267953))

(assert (= (and d!1967121 (not c!1135575)) b!6267958))

(assert (= (and b!6267958 c!1135573) b!6267954))

(assert (= (and b!6267958 (not c!1135573)) b!6267955))

(assert (= (and b!6267955 (not res!2585668)) b!6267963))

(assert (= (and b!6267963 res!2585664) b!6267957))

(assert (= (and b!6267957 res!2585663) b!6267959))

(assert (= (and b!6267959 res!2585670) b!6267956))

(assert (= (and b!6267963 (not res!2585666)) b!6267966))

(assert (= (and b!6267966 res!2585665) b!6267960))

(assert (= (and b!6267960 (not res!2585669)) b!6267964))

(assert (= (and b!6267964 (not res!2585667)) b!6267962))

(assert (= (or b!6267953 b!6267957 b!6267960) bm!529891))

(assert (=> d!1967121 m!7088532))

(declare-fun m!7089834 () Bool)

(assert (=> d!1967121 m!7089834))

(assert (=> b!6267964 m!7088540))

(assert (=> b!6267964 m!7088540))

(assert (=> b!6267964 m!7088594))

(assert (=> b!6267959 m!7088540))

(assert (=> b!6267959 m!7088540))

(assert (=> b!6267959 m!7088594))

(declare-fun m!7089836 () Bool)

(assert (=> b!6267965 m!7089836))

(assert (=> bm!529891 m!7088532))

(assert (=> b!6267956 m!7088536))

(assert (=> b!6267961 m!7088536))

(assert (=> b!6267961 m!7088536))

(declare-fun m!7089838 () Bool)

(assert (=> b!6267961 m!7089838))

(assert (=> b!6267961 m!7088540))

(assert (=> b!6267961 m!7089838))

(assert (=> b!6267961 m!7088540))

(declare-fun m!7089840 () Bool)

(assert (=> b!6267961 m!7089840))

(assert (=> b!6267962 m!7088536))

(assert (=> b!6266632 d!1967121))

(declare-fun bs!1564721 () Bool)

(declare-fun d!1967123 () Bool)

(assert (= bs!1564721 (and d!1967123 b!6267928)))

(declare-fun lambda!343243 () Int)

(assert (=> bs!1564721 (not (= lambda!343243 lambda!343239))))

(declare-fun bs!1564722 () Bool)

(assert (= bs!1564722 (and d!1967123 d!1966567)))

(assert (=> bs!1564722 (= lambda!343243 lambda!343149)))

(declare-fun bs!1564723 () Bool)

(assert (= bs!1564723 (and d!1967123 d!1966543)))

(assert (=> bs!1564723 (= lambda!343243 lambda!343144)))

(declare-fun bs!1564724 () Bool)

(assert (= bs!1564724 (and d!1967123 d!1966597)))

(assert (=> bs!1564724 (= lambda!343243 lambda!343158)))

(declare-fun bs!1564725 () Bool)

(assert (= bs!1564725 (and d!1967123 d!1966599)))

(assert (=> bs!1564725 (= lambda!343243 lambda!343161)))

(declare-fun bs!1564726 () Bool)

(assert (= bs!1564726 (and d!1967123 d!1966529)))

(assert (=> bs!1564726 (= lambda!343243 lambda!343128)))

(declare-fun bs!1564727 () Bool)

(assert (= bs!1564727 (and d!1967123 d!1966525)))

(assert (=> bs!1564727 (= lambda!343243 lambda!343127)))

(declare-fun bs!1564728 () Bool)

(assert (= bs!1564728 (and d!1967123 b!6267930)))

(assert (=> bs!1564728 (not (= lambda!343243 lambda!343240))))

(declare-fun bs!1564729 () Bool)

(assert (= bs!1564729 (and d!1967123 d!1966533)))

(assert (=> bs!1564729 (= lambda!343243 lambda!343131)))

(declare-fun b!6267967 () Bool)

(declare-fun e!3812377 () Regex!16187)

(declare-fun e!3812381 () Regex!16187)

(assert (=> b!6267967 (= e!3812377 e!3812381)))

(declare-fun c!1135577 () Bool)

(assert (=> b!6267967 (= c!1135577 ((_ is Cons!64736) (t!378414 lt!2351079)))))

(declare-fun b!6267968 () Bool)

(assert (=> b!6267968 (= e!3812381 EmptyExpr!16187)))

(declare-fun b!6267969 () Bool)

(declare-fun e!3812378 () Bool)

(declare-fun lt!2351353 () Regex!16187)

(assert (=> b!6267969 (= e!3812378 (isEmptyExpr!1593 lt!2351353))))

(declare-fun e!3812380 () Bool)

(assert (=> d!1967123 e!3812380))

(declare-fun res!2585671 () Bool)

(assert (=> d!1967123 (=> (not res!2585671) (not e!3812380))))

(assert (=> d!1967123 (= res!2585671 (validRegex!7923 lt!2351353))))

(assert (=> d!1967123 (= lt!2351353 e!3812377)))

(declare-fun c!1135579 () Bool)

(declare-fun e!3812379 () Bool)

(assert (=> d!1967123 (= c!1135579 e!3812379)))

(declare-fun res!2585672 () Bool)

(assert (=> d!1967123 (=> (not res!2585672) (not e!3812379))))

(assert (=> d!1967123 (= res!2585672 ((_ is Cons!64736) (t!378414 lt!2351079)))))

(assert (=> d!1967123 (forall!15312 (t!378414 lt!2351079) lambda!343243)))

(assert (=> d!1967123 (= (generalisedConcat!1784 (t!378414 lt!2351079)) lt!2351353)))

(declare-fun b!6267970 () Bool)

(assert (=> b!6267970 (= e!3812379 (isEmpty!36766 (t!378414 (t!378414 lt!2351079))))))

(declare-fun b!6267971 () Bool)

(declare-fun e!3812382 () Bool)

(assert (=> b!6267971 (= e!3812378 e!3812382)))

(declare-fun c!1135576 () Bool)

(assert (=> b!6267971 (= c!1135576 (isEmpty!36766 (tail!11960 (t!378414 lt!2351079))))))

(declare-fun b!6267972 () Bool)

(assert (=> b!6267972 (= e!3812382 (isConcat!1116 lt!2351353))))

(declare-fun b!6267973 () Bool)

(assert (=> b!6267973 (= e!3812382 (= lt!2351353 (head!12875 (t!378414 lt!2351079))))))

(declare-fun b!6267974 () Bool)

(assert (=> b!6267974 (= e!3812377 (h!71184 (t!378414 lt!2351079)))))

(declare-fun b!6267975 () Bool)

(assert (=> b!6267975 (= e!3812380 e!3812378)))

(declare-fun c!1135578 () Bool)

(assert (=> b!6267975 (= c!1135578 (isEmpty!36766 (t!378414 lt!2351079)))))

(declare-fun b!6267976 () Bool)

(assert (=> b!6267976 (= e!3812381 (Concat!25032 (h!71184 (t!378414 lt!2351079)) (generalisedConcat!1784 (t!378414 (t!378414 lt!2351079)))))))

(assert (= (and d!1967123 res!2585672) b!6267970))

(assert (= (and d!1967123 c!1135579) b!6267974))

(assert (= (and d!1967123 (not c!1135579)) b!6267967))

(assert (= (and b!6267967 c!1135577) b!6267976))

(assert (= (and b!6267967 (not c!1135577)) b!6267968))

(assert (= (and d!1967123 res!2585671) b!6267975))

(assert (= (and b!6267975 c!1135578) b!6267969))

(assert (= (and b!6267975 (not c!1135578)) b!6267971))

(assert (= (and b!6267971 c!1135576) b!6267973))

(assert (= (and b!6267971 (not c!1135576)) b!6267972))

(declare-fun m!7089842 () Bool)

(assert (=> d!1967123 m!7089842))

(declare-fun m!7089844 () Bool)

(assert (=> d!1967123 m!7089844))

(declare-fun m!7089846 () Bool)

(assert (=> b!6267976 m!7089846))

(declare-fun m!7089848 () Bool)

(assert (=> b!6267972 m!7089848))

(declare-fun m!7089850 () Bool)

(assert (=> b!6267973 m!7089850))

(declare-fun m!7089852 () Bool)

(assert (=> b!6267969 m!7089852))

(declare-fun m!7089854 () Bool)

(assert (=> b!6267971 m!7089854))

(assert (=> b!6267971 m!7089854))

(declare-fun m!7089856 () Bool)

(assert (=> b!6267971 m!7089856))

(assert (=> b!6267975 m!7088592))

(declare-fun m!7089858 () Bool)

(assert (=> b!6267970 m!7089858))

(assert (=> b!6266718 d!1967123))

(assert (=> d!1966577 d!1966575))

(assert (=> d!1966577 d!1966573))

(declare-fun d!1967125 () Bool)

(assert (=> d!1967125 (= (matchR!8370 r!7292 s!2326) (matchRSpec!3288 r!7292 s!2326))))

(assert (=> d!1967125 true))

(declare-fun _$88!4907 () Unit!158079)

(assert (=> d!1967125 (= (choose!46498 r!7292 s!2326) _$88!4907)))

(declare-fun bs!1564730 () Bool)

(assert (= bs!1564730 d!1967125))

(assert (=> bs!1564730 m!7088006))

(assert (=> bs!1564730 m!7088004))

(assert (=> d!1966577 d!1967125))

(assert (=> d!1966577 d!1966539))

(declare-fun d!1967127 () Bool)

(assert (=> d!1967127 (= (isEmpty!36766 (exprs!6071 (h!71185 zl!343))) ((_ is Nil!64736) (exprs!6071 (h!71185 zl!343))))))

(assert (=> b!6266792 d!1967127))

(declare-fun d!1967129 () Bool)

(declare-fun c!1135580 () Bool)

(assert (=> d!1967129 (= c!1135580 (isEmpty!36771 (tail!11959 s!2326)))))

(declare-fun e!3812383 () Bool)

(assert (=> d!1967129 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351077 (head!12874 s!2326)) (tail!11959 s!2326)) e!3812383)))

(declare-fun b!6267977 () Bool)

(assert (=> b!6267977 (= e!3812383 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351077 (head!12874 s!2326))))))

(declare-fun b!6267978 () Bool)

(assert (=> b!6267978 (= e!3812383 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351077 (head!12874 s!2326)) (head!12874 (tail!11959 s!2326))) (tail!11959 (tail!11959 s!2326))))))

(assert (= (and d!1967129 c!1135580) b!6267977))

(assert (= (and d!1967129 (not c!1135580)) b!6267978))

(assert (=> d!1967129 m!7088540))

(assert (=> d!1967129 m!7088594))

(assert (=> b!6267977 m!7088538))

(declare-fun m!7089860 () Bool)

(assert (=> b!6267977 m!7089860))

(assert (=> b!6267978 m!7088540))

(declare-fun m!7089862 () Bool)

(assert (=> b!6267978 m!7089862))

(assert (=> b!6267978 m!7088538))

(assert (=> b!6267978 m!7089862))

(declare-fun m!7089864 () Bool)

(assert (=> b!6267978 m!7089864))

(assert (=> b!6267978 m!7088540))

(declare-fun m!7089866 () Bool)

(assert (=> b!6267978 m!7089866))

(assert (=> b!6267978 m!7089864))

(assert (=> b!6267978 m!7089866))

(declare-fun m!7089868 () Bool)

(assert (=> b!6267978 m!7089868))

(assert (=> b!6266651 d!1967129))

(declare-fun bs!1564731 () Bool)

(declare-fun d!1967131 () Bool)

(assert (= bs!1564731 (and d!1967131 b!6266061)))

(declare-fun lambda!343244 () Int)

(assert (=> bs!1564731 (= (= (head!12874 s!2326) (h!71186 s!2326)) (= lambda!343244 lambda!343069))))

(declare-fun bs!1564732 () Bool)

(assert (= bs!1564732 (and d!1967131 d!1966549)))

(assert (=> bs!1564732 (= (= (head!12874 s!2326) (h!71186 s!2326)) (= lambda!343244 lambda!343147))))

(declare-fun bs!1564733 () Bool)

(assert (= bs!1564733 (and d!1967131 d!1966565)))

(assert (=> bs!1564733 (= (= (head!12874 s!2326) (h!71186 s!2326)) (= lambda!343244 lambda!343148))))

(declare-fun bs!1564734 () Bool)

(assert (= bs!1564734 (and d!1967131 d!1967101)))

(assert (=> bs!1564734 (= (= (head!12874 s!2326) (head!12874 (t!378416 s!2326))) (= lambda!343244 lambda!343242))))

(assert (=> d!1967131 true))

(assert (=> d!1967131 (= (derivationStepZipper!2153 lt!2351077 (head!12874 s!2326)) (flatMap!1692 lt!2351077 lambda!343244))))

(declare-fun bs!1564735 () Bool)

(assert (= bs!1564735 d!1967131))

(declare-fun m!7089870 () Bool)

(assert (=> bs!1564735 m!7089870))

(assert (=> b!6266651 d!1967131))

(assert (=> b!6266651 d!1967109))

(assert (=> b!6266651 d!1967043))

(declare-fun d!1967133 () Bool)

(declare-fun c!1135581 () Bool)

(assert (=> d!1967133 (= c!1135581 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812384 () Bool)

(assert (=> d!1967133 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351084 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812384)))

(declare-fun b!6267979 () Bool)

(assert (=> b!6267979 (= e!3812384 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351084 (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6267980 () Bool)

(assert (=> b!6267980 (= e!3812384 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351084 (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967133 c!1135581) b!6267979))

(assert (= (and d!1967133 (not c!1135581)) b!6267980))

(assert (=> d!1967133 m!7088704))

(assert (=> d!1967133 m!7089810))

(assert (=> b!6267979 m!7088844))

(declare-fun m!7089872 () Bool)

(assert (=> b!6267979 m!7089872))

(assert (=> b!6267980 m!7088704))

(assert (=> b!6267980 m!7089814))

(assert (=> b!6267980 m!7088844))

(assert (=> b!6267980 m!7089814))

(declare-fun m!7089874 () Bool)

(assert (=> b!6267980 m!7089874))

(assert (=> b!6267980 m!7088704))

(assert (=> b!6267980 m!7089818))

(assert (=> b!6267980 m!7089874))

(assert (=> b!6267980 m!7089818))

(declare-fun m!7089876 () Bool)

(assert (=> b!6267980 m!7089876))

(assert (=> b!6266965 d!1967133))

(declare-fun bs!1564736 () Bool)

(declare-fun d!1967135 () Bool)

(assert (= bs!1564736 (and d!1967135 d!1966565)))

(declare-fun lambda!343245 () Int)

(assert (=> bs!1564736 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343245 lambda!343148))))

(declare-fun bs!1564737 () Bool)

(assert (= bs!1564737 (and d!1967135 d!1967131)))

(assert (=> bs!1564737 (= (= (head!12874 (t!378416 s!2326)) (head!12874 s!2326)) (= lambda!343245 lambda!343244))))

(declare-fun bs!1564738 () Bool)

(assert (= bs!1564738 (and d!1967135 b!6266061)))

(assert (=> bs!1564738 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343245 lambda!343069))))

(declare-fun bs!1564739 () Bool)

(assert (= bs!1564739 (and d!1967135 d!1967101)))

(assert (=> bs!1564739 (= lambda!343245 lambda!343242)))

(declare-fun bs!1564740 () Bool)

(assert (= bs!1564740 (and d!1967135 d!1966549)))

(assert (=> bs!1564740 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343245 lambda!343147))))

(assert (=> d!1967135 true))

(assert (=> d!1967135 (= (derivationStepZipper!2153 lt!2351084 (head!12874 (t!378416 s!2326))) (flatMap!1692 lt!2351084 lambda!343245))))

(declare-fun bs!1564741 () Bool)

(assert (= bs!1564741 d!1967135))

(declare-fun m!7089878 () Bool)

(assert (=> bs!1564741 m!7089878))

(assert (=> b!6266965 d!1967135))

(assert (=> b!6266965 d!1967103))

(assert (=> b!6266965 d!1967105))

(declare-fun d!1967137 () Bool)

(assert (=> d!1967137 (= (flatMap!1692 lt!2351077 lambda!343147) (choose!46489 lt!2351077 lambda!343147))))

(declare-fun bs!1564742 () Bool)

(assert (= bs!1564742 d!1967137))

(declare-fun m!7089880 () Bool)

(assert (=> bs!1564742 m!7089880))

(assert (=> d!1966549 d!1967137))

(declare-fun c!1135583 () Bool)

(declare-fun call!529900 () (InoxSet Context!11142))

(declare-fun bm!529892 () Bool)

(declare-fun call!529902 () List!64860)

(assert (=> bm!529892 (= call!529900 (derivationStepZipperDown!1435 (ite c!1135583 (regTwo!32887 (h!71184 (exprs!6071 lt!2351107))) (regOne!32886 (h!71184 (exprs!6071 lt!2351107)))) (ite c!1135583 (Context!11143 (t!378414 (exprs!6071 lt!2351107))) (Context!11143 call!529902)) (h!71186 s!2326)))))

(declare-fun c!1135584 () Bool)

(declare-fun c!1135586 () Bool)

(declare-fun call!529901 () (InoxSet Context!11142))

(declare-fun call!529897 () List!64860)

(declare-fun bm!529893 () Bool)

(assert (=> bm!529893 (= call!529901 (derivationStepZipperDown!1435 (ite c!1135583 (regOne!32887 (h!71184 (exprs!6071 lt!2351107))) (ite c!1135586 (regTwo!32886 (h!71184 (exprs!6071 lt!2351107))) (ite c!1135584 (regOne!32886 (h!71184 (exprs!6071 lt!2351107))) (reg!16516 (h!71184 (exprs!6071 lt!2351107)))))) (ite (or c!1135583 c!1135586) (Context!11143 (t!378414 (exprs!6071 lt!2351107))) (Context!11143 call!529897)) (h!71186 s!2326)))))

(declare-fun b!6267981 () Bool)

(declare-fun c!1135585 () Bool)

(assert (=> b!6267981 (= c!1135585 ((_ is Star!16187) (h!71184 (exprs!6071 lt!2351107))))))

(declare-fun e!3812385 () (InoxSet Context!11142))

(declare-fun e!3812386 () (InoxSet Context!11142))

(assert (=> b!6267981 (= e!3812385 e!3812386)))

(declare-fun bm!529894 () Bool)

(declare-fun call!529898 () (InoxSet Context!11142))

(declare-fun call!529899 () (InoxSet Context!11142))

(assert (=> bm!529894 (= call!529898 call!529899)))

(declare-fun d!1967139 () Bool)

(declare-fun c!1135582 () Bool)

(assert (=> d!1967139 (= c!1135582 (and ((_ is ElementMatch!16187) (h!71184 (exprs!6071 lt!2351107))) (= (c!1135024 (h!71184 (exprs!6071 lt!2351107))) (h!71186 s!2326))))))

(declare-fun e!3812388 () (InoxSet Context!11142))

(assert (=> d!1967139 (= (derivationStepZipperDown!1435 (h!71184 (exprs!6071 lt!2351107)) (Context!11143 (t!378414 (exprs!6071 lt!2351107))) (h!71186 s!2326)) e!3812388)))

(declare-fun b!6267982 () Bool)

(assert (=> b!6267982 (= e!3812388 (store ((as const (Array Context!11142 Bool)) false) (Context!11143 (t!378414 (exprs!6071 lt!2351107))) true))))

(declare-fun b!6267983 () Bool)

(declare-fun e!3812390 () (InoxSet Context!11142))

(assert (=> b!6267983 (= e!3812390 ((_ map or) call!529901 call!529900))))

(declare-fun b!6267984 () Bool)

(assert (=> b!6267984 (= e!3812386 call!529898)))

(declare-fun b!6267985 () Bool)

(assert (=> b!6267985 (= e!3812388 e!3812390)))

(assert (=> b!6267985 (= c!1135583 ((_ is Union!16187) (h!71184 (exprs!6071 lt!2351107))))))

(declare-fun bm!529895 () Bool)

(assert (=> bm!529895 (= call!529899 call!529901)))

(declare-fun b!6267986 () Bool)

(declare-fun e!3812387 () (InoxSet Context!11142))

(assert (=> b!6267986 (= e!3812387 ((_ map or) call!529900 call!529899))))

(declare-fun b!6267987 () Bool)

(assert (=> b!6267987 (= e!3812386 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6267988 () Bool)

(declare-fun e!3812389 () Bool)

(assert (=> b!6267988 (= e!3812389 (nullable!6180 (regOne!32886 (h!71184 (exprs!6071 lt!2351107)))))))

(declare-fun b!6267989 () Bool)

(assert (=> b!6267989 (= e!3812385 call!529898)))

(declare-fun bm!529896 () Bool)

(assert (=> bm!529896 (= call!529897 call!529902)))

(declare-fun b!6267990 () Bool)

(assert (=> b!6267990 (= e!3812387 e!3812385)))

(assert (=> b!6267990 (= c!1135584 ((_ is Concat!25032) (h!71184 (exprs!6071 lt!2351107))))))

(declare-fun b!6267991 () Bool)

(assert (=> b!6267991 (= c!1135586 e!3812389)))

(declare-fun res!2585673 () Bool)

(assert (=> b!6267991 (=> (not res!2585673) (not e!3812389))))

(assert (=> b!6267991 (= res!2585673 ((_ is Concat!25032) (h!71184 (exprs!6071 lt!2351107))))))

(assert (=> b!6267991 (= e!3812390 e!3812387)))

(declare-fun bm!529897 () Bool)

(assert (=> bm!529897 (= call!529902 ($colon$colon!2052 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107)))) (ite (or c!1135586 c!1135584) (regTwo!32886 (h!71184 (exprs!6071 lt!2351107))) (h!71184 (exprs!6071 lt!2351107)))))))

(assert (= (and d!1967139 c!1135582) b!6267982))

(assert (= (and d!1967139 (not c!1135582)) b!6267985))

(assert (= (and b!6267985 c!1135583) b!6267983))

(assert (= (and b!6267985 (not c!1135583)) b!6267991))

(assert (= (and b!6267991 res!2585673) b!6267988))

(assert (= (and b!6267991 c!1135586) b!6267986))

(assert (= (and b!6267991 (not c!1135586)) b!6267990))

(assert (= (and b!6267990 c!1135584) b!6267989))

(assert (= (and b!6267990 (not c!1135584)) b!6267981))

(assert (= (and b!6267981 c!1135585) b!6267984))

(assert (= (and b!6267981 (not c!1135585)) b!6267987))

(assert (= (or b!6267989 b!6267984) bm!529896))

(assert (= (or b!6267989 b!6267984) bm!529894))

(assert (= (or b!6267986 bm!529896) bm!529897))

(assert (= (or b!6267986 bm!529894) bm!529895))

(assert (= (or b!6267983 b!6267986) bm!529892))

(assert (= (or b!6267983 bm!529895) bm!529893))

(declare-fun m!7089882 () Bool)

(assert (=> bm!529892 m!7089882))

(declare-fun m!7089884 () Bool)

(assert (=> bm!529897 m!7089884))

(declare-fun m!7089886 () Bool)

(assert (=> b!6267988 m!7089886))

(declare-fun m!7089888 () Bool)

(assert (=> b!6267982 m!7089888))

(declare-fun m!7089890 () Bool)

(assert (=> bm!529893 m!7089890))

(assert (=> bm!529697 d!1967139))

(declare-fun d!1967141 () Bool)

(assert (=> d!1967141 (= (nullable!6180 (reg!16516 r!7292)) (nullableFct!2132 (reg!16516 r!7292)))))

(declare-fun bs!1564743 () Bool)

(assert (= bs!1564743 d!1967141))

(declare-fun m!7089892 () Bool)

(assert (=> bs!1564743 m!7089892))

(assert (=> b!6266782 d!1967141))

(declare-fun d!1967143 () Bool)

(declare-fun c!1135587 () Bool)

(assert (=> d!1967143 (= c!1135587 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3812391 () Bool)

(assert (=> d!1967143 (= (matchZipper!2199 ((_ map or) lt!2351102 lt!2351110) (t!378416 s!2326)) e!3812391)))

(declare-fun b!6267992 () Bool)

(assert (=> b!6267992 (= e!3812391 (nullableZipper!1957 ((_ map or) lt!2351102 lt!2351110)))))

(declare-fun b!6267993 () Bool)

(assert (=> b!6267993 (= e!3812391 (matchZipper!2199 (derivationStepZipper!2153 ((_ map or) lt!2351102 lt!2351110) (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1967143 c!1135587) b!6267992))

(assert (= (and d!1967143 (not c!1135587)) b!6267993))

(assert (=> d!1967143 m!7088696))

(declare-fun m!7089894 () Bool)

(assert (=> b!6267992 m!7089894))

(assert (=> b!6267993 m!7088700))

(assert (=> b!6267993 m!7088700))

(declare-fun m!7089896 () Bool)

(assert (=> b!6267993 m!7089896))

(assert (=> b!6267993 m!7088704))

(assert (=> b!6267993 m!7089896))

(assert (=> b!6267993 m!7088704))

(declare-fun m!7089898 () Bool)

(assert (=> b!6267993 m!7089898))

(assert (=> d!1966585 d!1967143))

(assert (=> d!1966585 d!1966583))

(declare-fun e!3812394 () Bool)

(declare-fun d!1967145 () Bool)

(assert (=> d!1967145 (= (matchZipper!2199 ((_ map or) lt!2351102 lt!2351110) (t!378416 s!2326)) e!3812394)))

(declare-fun res!2585676 () Bool)

(assert (=> d!1967145 (=> res!2585676 e!3812394)))

(assert (=> d!1967145 (= res!2585676 (matchZipper!2199 lt!2351102 (t!378416 s!2326)))))

(assert (=> d!1967145 true))

(declare-fun _$48!2012 () Unit!158079)

(assert (=> d!1967145 (= (choose!46499 lt!2351102 lt!2351110 (t!378416 s!2326)) _$48!2012)))

(declare-fun b!6267996 () Bool)

(assert (=> b!6267996 (= e!3812394 (matchZipper!2199 lt!2351110 (t!378416 s!2326)))))

(assert (= (and d!1967145 (not res!2585676)) b!6267996))

(assert (=> d!1967145 m!7088752))

(assert (=> d!1967145 m!7087932))

(assert (=> b!6267996 m!7088002))

(assert (=> d!1966585 d!1967145))

(declare-fun bs!1564744 () Bool)

(declare-fun d!1967147 () Bool)

(assert (= bs!1564744 (and d!1967147 b!6266772)))

(declare-fun lambda!343246 () Int)

(assert (=> bs!1564744 (not (= lambda!343246 lambda!343142))))

(declare-fun bs!1564745 () Bool)

(assert (= bs!1564745 (and d!1967147 b!6267918)))

(assert (=> bs!1564745 (not (= lambda!343246 lambda!343233))))

(declare-fun bs!1564746 () Bool)

(assert (= bs!1564746 (and d!1967147 b!6266769)))

(assert (=> bs!1564746 (not (= lambda!343246 lambda!343140))))

(declare-fun bs!1564747 () Bool)

(assert (= bs!1564747 (and d!1967147 d!1967091)))

(assert (=> bs!1564747 (= lambda!343246 lambda!343241)))

(declare-fun bs!1564748 () Bool)

(assert (= bs!1564748 (and d!1967147 d!1967035)))

(assert (=> bs!1564748 (= lambda!343246 lambda!343228)))

(declare-fun bs!1564749 () Bool)

(assert (= bs!1564749 (and d!1967147 b!6266767)))

(assert (=> bs!1564749 (not (= lambda!343246 lambda!343139))))

(declare-fun bs!1564750 () Bool)

(assert (= bs!1564750 (and d!1967147 b!6266774)))

(assert (=> bs!1564750 (not (= lambda!343246 lambda!343143))))

(declare-fun bs!1564751 () Bool)

(assert (= bs!1564751 (and d!1967147 b!6267920)))

(assert (=> bs!1564751 (not (= lambda!343246 lambda!343234))))

(declare-fun bs!1564752 () Bool)

(assert (= bs!1564752 (and d!1967147 d!1967077)))

(assert (=> bs!1564752 (not (= lambda!343246 lambda!343231))))

(assert (=> d!1967147 (= (nullableZipper!1957 lt!2351097) (exists!2521 lt!2351097 lambda!343246))))

(declare-fun bs!1564753 () Bool)

(assert (= bs!1564753 d!1967147))

(declare-fun m!7089900 () Bool)

(assert (=> bs!1564753 m!7089900))

(assert (=> b!6266894 d!1967147))

(assert (=> b!6266758 d!1967041))

(assert (=> b!6266758 d!1967043))

(assert (=> d!1966619 d!1967057))

(declare-fun bm!529898 () Bool)

(declare-fun call!529908 () List!64860)

(declare-fun c!1135589 () Bool)

(declare-fun call!529906 () (InoxSet Context!11142))

(assert (=> bm!529898 (= call!529906 (derivationStepZipperDown!1435 (ite c!1135589 (regTwo!32887 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))) (regOne!32886 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292)))))))) (ite c!1135589 (ite (or c!1135258 c!1135261) lt!2351109 (Context!11143 call!529696)) (Context!11143 call!529908)) (h!71186 s!2326)))))

(declare-fun c!1135590 () Bool)

(declare-fun bm!529899 () Bool)

(declare-fun call!529907 () (InoxSet Context!11142))

(declare-fun c!1135592 () Bool)

(declare-fun call!529903 () List!64860)

(assert (=> bm!529899 (= call!529907 (derivationStepZipperDown!1435 (ite c!1135589 (regOne!32887 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))) (ite c!1135592 (regTwo!32886 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))) (ite c!1135590 (regOne!32886 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))) (reg!16516 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292)))))))))) (ite (or c!1135589 c!1135592) (ite (or c!1135258 c!1135261) lt!2351109 (Context!11143 call!529696)) (Context!11143 call!529903)) (h!71186 s!2326)))))

(declare-fun c!1135591 () Bool)

(declare-fun b!6267997 () Bool)

(assert (=> b!6267997 (= c!1135591 ((_ is Star!16187) (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))))))

(declare-fun e!3812395 () (InoxSet Context!11142))

(declare-fun e!3812396 () (InoxSet Context!11142))

(assert (=> b!6267997 (= e!3812395 e!3812396)))

(declare-fun bm!529900 () Bool)

(declare-fun call!529904 () (InoxSet Context!11142))

(declare-fun call!529905 () (InoxSet Context!11142))

(assert (=> bm!529900 (= call!529904 call!529905)))

(declare-fun d!1967149 () Bool)

(declare-fun c!1135588 () Bool)

(assert (=> d!1967149 (= c!1135588 (and ((_ is ElementMatch!16187) (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))) (= (c!1135024 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))) (h!71186 s!2326))))))

(declare-fun e!3812398 () (InoxSet Context!11142))

(assert (=> d!1967149 (= (derivationStepZipperDown!1435 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292)))))) (ite (or c!1135258 c!1135261) lt!2351109 (Context!11143 call!529696)) (h!71186 s!2326)) e!3812398)))

(declare-fun b!6267998 () Bool)

(assert (=> b!6267998 (= e!3812398 (store ((as const (Array Context!11142 Bool)) false) (ite (or c!1135258 c!1135261) lt!2351109 (Context!11143 call!529696)) true))))

(declare-fun b!6267999 () Bool)

(declare-fun e!3812400 () (InoxSet Context!11142))

(assert (=> b!6267999 (= e!3812400 ((_ map or) call!529907 call!529906))))

(declare-fun b!6268000 () Bool)

(assert (=> b!6268000 (= e!3812396 call!529904)))

(declare-fun b!6268001 () Bool)

(assert (=> b!6268001 (= e!3812398 e!3812400)))

(assert (=> b!6268001 (= c!1135589 ((_ is Union!16187) (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))))))

(declare-fun bm!529901 () Bool)

(assert (=> bm!529901 (= call!529905 call!529907)))

(declare-fun b!6268002 () Bool)

(declare-fun e!3812397 () (InoxSet Context!11142))

(assert (=> b!6268002 (= e!3812397 ((_ map or) call!529906 call!529905))))

(declare-fun b!6268003 () Bool)

(assert (=> b!6268003 (= e!3812396 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6268004 () Bool)

(declare-fun e!3812399 () Bool)

(assert (=> b!6268004 (= e!3812399 (nullable!6180 (regOne!32886 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292)))))))))))

(declare-fun b!6268005 () Bool)

(assert (=> b!6268005 (= e!3812395 call!529904)))

(declare-fun bm!529902 () Bool)

(assert (=> bm!529902 (= call!529903 call!529908)))

(declare-fun b!6268006 () Bool)

(assert (=> b!6268006 (= e!3812397 e!3812395)))

(assert (=> b!6268006 (= c!1135590 ((_ is Concat!25032) (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))))))

(declare-fun b!6268007 () Bool)

(assert (=> b!6268007 (= c!1135592 e!3812399)))

(declare-fun res!2585677 () Bool)

(assert (=> b!6268007 (=> (not res!2585677) (not e!3812399))))

(assert (=> b!6268007 (= res!2585677 ((_ is Concat!25032) (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))))))

(assert (=> b!6268007 (= e!3812400 e!3812397)))

(declare-fun bm!529903 () Bool)

(assert (=> bm!529903 (= call!529908 ($colon$colon!2052 (exprs!6071 (ite (or c!1135258 c!1135261) lt!2351109 (Context!11143 call!529696))) (ite (or c!1135592 c!1135590) (regTwo!32886 (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292))))))) (ite c!1135258 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135261 (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))) (ite c!1135259 (regOne!32886 (regOne!32886 (regOne!32886 r!7292))) (reg!16516 (regOne!32886 (regOne!32886 r!7292)))))))))))

(assert (= (and d!1967149 c!1135588) b!6267998))

(assert (= (and d!1967149 (not c!1135588)) b!6268001))

(assert (= (and b!6268001 c!1135589) b!6267999))

(assert (= (and b!6268001 (not c!1135589)) b!6268007))

(assert (= (and b!6268007 res!2585677) b!6268004))

(assert (= (and b!6268007 c!1135592) b!6268002))

(assert (= (and b!6268007 (not c!1135592)) b!6268006))

(assert (= (and b!6268006 c!1135590) b!6268005))

(assert (= (and b!6268006 (not c!1135590)) b!6267997))

(assert (= (and b!6267997 c!1135591) b!6268000))

(assert (= (and b!6267997 (not c!1135591)) b!6268003))

(assert (= (or b!6268005 b!6268000) bm!529902))

(assert (= (or b!6268005 b!6268000) bm!529900))

(assert (= (or b!6268002 bm!529902) bm!529903))

(assert (= (or b!6268002 bm!529900) bm!529901))

(assert (= (or b!6267999 b!6268002) bm!529898))

(assert (= (or b!6267999 bm!529901) bm!529899))

(declare-fun m!7089902 () Bool)

(assert (=> bm!529898 m!7089902))

(declare-fun m!7089904 () Bool)

(assert (=> bm!529903 m!7089904))

(declare-fun m!7089906 () Bool)

(assert (=> b!6268004 m!7089906))

(declare-fun m!7089908 () Bool)

(assert (=> b!6267998 m!7089908))

(declare-fun m!7089910 () Bool)

(assert (=> bm!529899 m!7089910))

(assert (=> bm!529692 d!1967149))

(assert (=> d!1966615 d!1966611))

(declare-fun d!1967151 () Bool)

(assert (=> d!1967151 (= (flatMap!1692 lt!2351105 lambda!343069) (dynLambda!25589 lambda!343069 lt!2351109))))

(assert (=> d!1967151 true))

(declare-fun _$13!3370 () Unit!158079)

(assert (=> d!1967151 (= (choose!46490 lt!2351105 lt!2351109 lambda!343069) _$13!3370)))

(declare-fun b_lambda!238659 () Bool)

(assert (=> (not b_lambda!238659) (not d!1967151)))

(declare-fun bs!1564754 () Bool)

(assert (= bs!1564754 d!1967151))

(assert (=> bs!1564754 m!7087998))

(assert (=> bs!1564754 m!7088834))

(assert (=> d!1966615 d!1967151))

(declare-fun b!6268008 () Bool)

(declare-fun e!3812401 () Bool)

(declare-fun e!3812405 () Bool)

(assert (=> b!6268008 (= e!3812401 e!3812405)))

(declare-fun res!2585679 () Bool)

(assert (=> b!6268008 (=> (not res!2585679) (not e!3812405))))

(declare-fun call!529911 () Bool)

(assert (=> b!6268008 (= res!2585679 call!529911)))

(declare-fun b!6268009 () Bool)

(declare-fun res!2585681 () Bool)

(assert (=> b!6268009 (=> res!2585681 e!3812401)))

(assert (=> b!6268009 (= res!2585681 (not ((_ is Concat!25032) (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095))))))))

(declare-fun e!3812404 () Bool)

(assert (=> b!6268009 (= e!3812404 e!3812401)))

(declare-fun b!6268010 () Bool)

(declare-fun e!3812402 () Bool)

(declare-fun e!3812406 () Bool)

(assert (=> b!6268010 (= e!3812402 e!3812406)))

(declare-fun c!1135593 () Bool)

(assert (=> b!6268010 (= c!1135593 ((_ is Star!16187) (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))))))

(declare-fun d!1967153 () Bool)

(declare-fun res!2585682 () Bool)

(assert (=> d!1967153 (=> res!2585682 e!3812402)))

(assert (=> d!1967153 (= res!2585682 ((_ is ElementMatch!16187) (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))))))

(assert (=> d!1967153 (= (validRegex!7923 (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))) e!3812402)))

(declare-fun b!6268011 () Bool)

(declare-fun e!3812407 () Bool)

(declare-fun call!529910 () Bool)

(assert (=> b!6268011 (= e!3812407 call!529910)))

(declare-fun bm!529904 () Bool)

(declare-fun call!529909 () Bool)

(assert (=> bm!529904 (= call!529911 call!529909)))

(declare-fun b!6268012 () Bool)

(assert (=> b!6268012 (= e!3812406 e!3812404)))

(declare-fun c!1135594 () Bool)

(assert (=> b!6268012 (= c!1135594 ((_ is Union!16187) (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))))))

(declare-fun bm!529905 () Bool)

(assert (=> bm!529905 (= call!529910 (validRegex!7923 (ite c!1135594 (regTwo!32887 (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))) (regTwo!32886 (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))))))))

(declare-fun bm!529906 () Bool)

(assert (=> bm!529906 (= call!529909 (validRegex!7923 (ite c!1135593 (reg!16516 (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))) (ite c!1135594 (regOne!32887 (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))) (regOne!32886 (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095))))))))))

(declare-fun b!6268013 () Bool)

(declare-fun res!2585680 () Bool)

(assert (=> b!6268013 (=> (not res!2585680) (not e!3812407))))

(assert (=> b!6268013 (= res!2585680 call!529911)))

(assert (=> b!6268013 (= e!3812404 e!3812407)))

(declare-fun b!6268014 () Bool)

(assert (=> b!6268014 (= e!3812405 call!529910)))

(declare-fun b!6268015 () Bool)

(declare-fun e!3812403 () Bool)

(assert (=> b!6268015 (= e!3812406 e!3812403)))

(declare-fun res!2585678 () Bool)

(assert (=> b!6268015 (= res!2585678 (not (nullable!6180 (reg!16516 (ite c!1135209 (reg!16516 lt!2351095) (ite c!1135210 (regOne!32887 lt!2351095) (regOne!32886 lt!2351095)))))))))

(assert (=> b!6268015 (=> (not res!2585678) (not e!3812403))))

(declare-fun b!6268016 () Bool)

(assert (=> b!6268016 (= e!3812403 call!529909)))

(assert (= (and d!1967153 (not res!2585682)) b!6268010))

(assert (= (and b!6268010 c!1135593) b!6268015))

(assert (= (and b!6268010 (not c!1135593)) b!6268012))

(assert (= (and b!6268015 res!2585678) b!6268016))

(assert (= (and b!6268012 c!1135594) b!6268013))

(assert (= (and b!6268012 (not c!1135594)) b!6268009))

(assert (= (and b!6268013 res!2585680) b!6268011))

(assert (= (and b!6268009 (not res!2585681)) b!6268008))

(assert (= (and b!6268008 res!2585679) b!6268014))

(assert (= (or b!6268011 b!6268014) bm!529905))

(assert (= (or b!6268013 b!6268008) bm!529904))

(assert (= (or b!6268016 bm!529904) bm!529906))

(declare-fun m!7089912 () Bool)

(assert (=> bm!529905 m!7089912))

(declare-fun m!7089914 () Bool)

(assert (=> bm!529906 m!7089914))

(declare-fun m!7089916 () Bool)

(assert (=> b!6268015 m!7089916))

(assert (=> bm!529678 d!1967153))

(assert (=> b!6266604 d!1966499))

(assert (=> b!6266889 d!1967041))

(assert (=> b!6266889 d!1967043))

(declare-fun d!1967155 () Bool)

(assert (=> d!1967155 (= (nullable!6180 (h!71184 (exprs!6071 lt!2351103))) (nullableFct!2132 (h!71184 (exprs!6071 lt!2351103))))))

(declare-fun bs!1564755 () Bool)

(assert (= bs!1564755 d!1967155))

(declare-fun m!7089918 () Bool)

(assert (=> bs!1564755 m!7089918))

(assert (=> b!6266599 d!1967155))

(declare-fun d!1967157 () Bool)

(assert (=> d!1967157 (= (nullable!6180 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (nullableFct!2132 (h!71184 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))))

(declare-fun bs!1564756 () Bool)

(assert (= bs!1564756 d!1967157))

(declare-fun m!7089920 () Bool)

(assert (=> bs!1564756 m!7089920))

(assert (=> b!6266594 d!1967157))

(declare-fun d!1967159 () Bool)

(assert (=> d!1967159 true))

(declare-fun setRes!42625 () Bool)

(assert (=> d!1967159 setRes!42625))

(declare-fun condSetEmpty!42625 () Bool)

(declare-fun res!2585683 () (InoxSet Context!11142))

(assert (=> d!1967159 (= condSetEmpty!42625 (= res!2585683 ((as const (Array Context!11142 Bool)) false)))))

(assert (=> d!1967159 (= (choose!46489 lt!2351105 lambda!343069) res!2585683)))

(declare-fun setIsEmpty!42625 () Bool)

(assert (=> setIsEmpty!42625 setRes!42625))

(declare-fun setNonEmpty!42625 () Bool)

(declare-fun tp!1748372 () Bool)

(declare-fun e!3812408 () Bool)

(declare-fun setElem!42625 () Context!11142)

(assert (=> setNonEmpty!42625 (= setRes!42625 (and tp!1748372 (inv!83714 setElem!42625) e!3812408))))

(declare-fun setRest!42625 () (InoxSet Context!11142))

(assert (=> setNonEmpty!42625 (= res!2585683 ((_ map or) (store ((as const (Array Context!11142 Bool)) false) setElem!42625 true) setRest!42625))))

(declare-fun b!6268017 () Bool)

(declare-fun tp!1748371 () Bool)

(assert (=> b!6268017 (= e!3812408 tp!1748371)))

(assert (= (and d!1967159 condSetEmpty!42625) setIsEmpty!42625))

(assert (= (and d!1967159 (not condSetEmpty!42625)) setNonEmpty!42625))

(assert (= setNonEmpty!42625 b!6268017))

(declare-fun m!7089922 () Bool)

(assert (=> setNonEmpty!42625 m!7089922))

(assert (=> d!1966611 d!1967159))

(declare-fun bs!1564757 () Bool)

(declare-fun d!1967161 () Bool)

(assert (= bs!1564757 (and d!1967161 d!1967147)))

(declare-fun lambda!343247 () Int)

(assert (=> bs!1564757 (= lambda!343247 lambda!343246)))

(declare-fun bs!1564758 () Bool)

(assert (= bs!1564758 (and d!1967161 b!6266772)))

(assert (=> bs!1564758 (not (= lambda!343247 lambda!343142))))

(declare-fun bs!1564759 () Bool)

(assert (= bs!1564759 (and d!1967161 b!6267918)))

(assert (=> bs!1564759 (not (= lambda!343247 lambda!343233))))

(declare-fun bs!1564760 () Bool)

(assert (= bs!1564760 (and d!1967161 b!6266769)))

(assert (=> bs!1564760 (not (= lambda!343247 lambda!343140))))

(declare-fun bs!1564761 () Bool)

(assert (= bs!1564761 (and d!1967161 d!1967091)))

(assert (=> bs!1564761 (= lambda!343247 lambda!343241)))

(declare-fun bs!1564762 () Bool)

(assert (= bs!1564762 (and d!1967161 d!1967035)))

(assert (=> bs!1564762 (= lambda!343247 lambda!343228)))

(declare-fun bs!1564763 () Bool)

(assert (= bs!1564763 (and d!1967161 b!6266767)))

(assert (=> bs!1564763 (not (= lambda!343247 lambda!343139))))

(declare-fun bs!1564764 () Bool)

(assert (= bs!1564764 (and d!1967161 b!6266774)))

(assert (=> bs!1564764 (not (= lambda!343247 lambda!343143))))

(declare-fun bs!1564765 () Bool)

(assert (= bs!1564765 (and d!1967161 b!6267920)))

(assert (=> bs!1564765 (not (= lambda!343247 lambda!343234))))

(declare-fun bs!1564766 () Bool)

(assert (= bs!1564766 (and d!1967161 d!1967077)))

(assert (=> bs!1564766 (not (= lambda!343247 lambda!343231))))

(assert (=> d!1967161 (= (nullableZipper!1957 lt!2351108) (exists!2521 lt!2351108 lambda!343247))))

(declare-fun bs!1564767 () Bool)

(assert (= bs!1564767 d!1967161))

(declare-fun m!7089924 () Bool)

(assert (=> bs!1564767 m!7089924))

(assert (=> b!6266957 d!1967161))

(declare-fun d!1967163 () Bool)

(assert (=> d!1967163 (= (head!12875 lt!2351079) (h!71184 lt!2351079))))

(assert (=> b!6266715 d!1967163))

(declare-fun d!1967165 () Bool)

(assert (=> d!1967165 (= (isEmpty!36766 (t!378414 (unfocusZipperList!1608 zl!343))) ((_ is Nil!64736) (t!378414 (unfocusZipperList!1608 zl!343))))))

(assert (=> b!6266935 d!1967165))

(declare-fun d!1967167 () Bool)

(declare-fun c!1135595 () Bool)

(assert (=> d!1967167 (= c!1135595 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812409 () Bool)

(assert (=> d!1967167 (= (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812409)))

(declare-fun b!6268018 () Bool)

(assert (=> b!6268018 (= e!3812409 (nullableZipper!1957 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6268019 () Bool)

(assert (=> b!6268019 (= e!3812409 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967167 c!1135595) b!6268018))

(assert (= (and d!1967167 (not c!1135595)) b!6268019))

(assert (=> d!1967167 m!7088704))

(assert (=> d!1967167 m!7089810))

(assert (=> b!6268018 m!7088702))

(declare-fun m!7089926 () Bool)

(assert (=> b!6268018 m!7089926))

(assert (=> b!6268019 m!7088704))

(assert (=> b!6268019 m!7089814))

(assert (=> b!6268019 m!7088702))

(assert (=> b!6268019 m!7089814))

(declare-fun m!7089928 () Bool)

(assert (=> b!6268019 m!7089928))

(assert (=> b!6268019 m!7088704))

(assert (=> b!6268019 m!7089818))

(assert (=> b!6268019 m!7089928))

(assert (=> b!6268019 m!7089818))

(declare-fun m!7089930 () Bool)

(assert (=> b!6268019 m!7089930))

(assert (=> b!6266832 d!1967167))

(declare-fun bs!1564768 () Bool)

(declare-fun d!1967169 () Bool)

(assert (= bs!1564768 (and d!1967169 d!1966565)))

(declare-fun lambda!343248 () Int)

(assert (=> bs!1564768 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343248 lambda!343148))))

(declare-fun bs!1564769 () Bool)

(assert (= bs!1564769 (and d!1967169 d!1967131)))

(assert (=> bs!1564769 (= (= (head!12874 (t!378416 s!2326)) (head!12874 s!2326)) (= lambda!343248 lambda!343244))))

(declare-fun bs!1564770 () Bool)

(assert (= bs!1564770 (and d!1967169 b!6266061)))

(assert (=> bs!1564770 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343248 lambda!343069))))

(declare-fun bs!1564771 () Bool)

(assert (= bs!1564771 (and d!1967169 d!1967101)))

(assert (=> bs!1564771 (= lambda!343248 lambda!343242)))

(declare-fun bs!1564772 () Bool)

(assert (= bs!1564772 (and d!1967169 d!1966549)))

(assert (=> bs!1564772 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343248 lambda!343147))))

(declare-fun bs!1564773 () Bool)

(assert (= bs!1564773 (and d!1967169 d!1967135)))

(assert (=> bs!1564773 (= lambda!343248 lambda!343245)))

(assert (=> d!1967169 true))

(assert (=> d!1967169 (= (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) (head!12874 (t!378416 s!2326))) (flatMap!1692 (derivationStepZipper!2153 lt!2351105 (h!71186 s!2326)) lambda!343248))))

(declare-fun bs!1564774 () Bool)

(assert (= bs!1564774 d!1967169))

(assert (=> bs!1564774 m!7088030))

(declare-fun m!7089932 () Bool)

(assert (=> bs!1564774 m!7089932))

(assert (=> b!6266832 d!1967169))

(assert (=> b!6266832 d!1967103))

(assert (=> b!6266832 d!1967105))

(declare-fun d!1967171 () Bool)

(assert (=> d!1967171 (= (isConcat!1116 lt!2351233) ((_ is Concat!25032) lt!2351233))))

(assert (=> b!6266789 d!1967171))

(declare-fun b!6268020 () Bool)

(declare-fun e!3812410 () Bool)

(declare-fun e!3812414 () Bool)

(assert (=> b!6268020 (= e!3812410 e!3812414)))

(declare-fun res!2585685 () Bool)

(assert (=> b!6268020 (=> (not res!2585685) (not e!3812414))))

(declare-fun call!529914 () Bool)

(assert (=> b!6268020 (= res!2585685 call!529914)))

(declare-fun b!6268021 () Bool)

(declare-fun res!2585687 () Bool)

(assert (=> b!6268021 (=> res!2585687 e!3812410)))

(assert (=> b!6268021 (= res!2585687 (not ((_ is Concat!25032) lt!2351264)))))

(declare-fun e!3812413 () Bool)

(assert (=> b!6268021 (= e!3812413 e!3812410)))

(declare-fun b!6268022 () Bool)

(declare-fun e!3812411 () Bool)

(declare-fun e!3812415 () Bool)

(assert (=> b!6268022 (= e!3812411 e!3812415)))

(declare-fun c!1135596 () Bool)

(assert (=> b!6268022 (= c!1135596 ((_ is Star!16187) lt!2351264))))

(declare-fun d!1967173 () Bool)

(declare-fun res!2585688 () Bool)

(assert (=> d!1967173 (=> res!2585688 e!3812411)))

(assert (=> d!1967173 (= res!2585688 ((_ is ElementMatch!16187) lt!2351264))))

(assert (=> d!1967173 (= (validRegex!7923 lt!2351264) e!3812411)))

(declare-fun b!6268023 () Bool)

(declare-fun e!3812416 () Bool)

(declare-fun call!529913 () Bool)

(assert (=> b!6268023 (= e!3812416 call!529913)))

(declare-fun bm!529907 () Bool)

(declare-fun call!529912 () Bool)

(assert (=> bm!529907 (= call!529914 call!529912)))

(declare-fun b!6268024 () Bool)

(assert (=> b!6268024 (= e!3812415 e!3812413)))

(declare-fun c!1135597 () Bool)

(assert (=> b!6268024 (= c!1135597 ((_ is Union!16187) lt!2351264))))

(declare-fun bm!529908 () Bool)

(assert (=> bm!529908 (= call!529913 (validRegex!7923 (ite c!1135597 (regTwo!32887 lt!2351264) (regTwo!32886 lt!2351264))))))

(declare-fun bm!529909 () Bool)

(assert (=> bm!529909 (= call!529912 (validRegex!7923 (ite c!1135596 (reg!16516 lt!2351264) (ite c!1135597 (regOne!32887 lt!2351264) (regOne!32886 lt!2351264)))))))

(declare-fun b!6268025 () Bool)

(declare-fun res!2585686 () Bool)

(assert (=> b!6268025 (=> (not res!2585686) (not e!3812416))))

(assert (=> b!6268025 (= res!2585686 call!529914)))

(assert (=> b!6268025 (= e!3812413 e!3812416)))

(declare-fun b!6268026 () Bool)

(assert (=> b!6268026 (= e!3812414 call!529913)))

(declare-fun b!6268027 () Bool)

(declare-fun e!3812412 () Bool)

(assert (=> b!6268027 (= e!3812415 e!3812412)))

(declare-fun res!2585684 () Bool)

(assert (=> b!6268027 (= res!2585684 (not (nullable!6180 (reg!16516 lt!2351264))))))

(assert (=> b!6268027 (=> (not res!2585684) (not e!3812412))))

(declare-fun b!6268028 () Bool)

(assert (=> b!6268028 (= e!3812412 call!529912)))

(assert (= (and d!1967173 (not res!2585688)) b!6268022))

(assert (= (and b!6268022 c!1135596) b!6268027))

(assert (= (and b!6268022 (not c!1135596)) b!6268024))

(assert (= (and b!6268027 res!2585684) b!6268028))

(assert (= (and b!6268024 c!1135597) b!6268025))

(assert (= (and b!6268024 (not c!1135597)) b!6268021))

(assert (= (and b!6268025 res!2585686) b!6268023))

(assert (= (and b!6268021 (not res!2585687)) b!6268020))

(assert (= (and b!6268020 res!2585685) b!6268026))

(assert (= (or b!6268023 b!6268026) bm!529908))

(assert (= (or b!6268025 b!6268020) bm!529907))

(assert (= (or b!6268028 bm!529907) bm!529909))

(declare-fun m!7089934 () Bool)

(assert (=> bm!529908 m!7089934))

(declare-fun m!7089936 () Bool)

(assert (=> bm!529909 m!7089936))

(declare-fun m!7089938 () Bool)

(assert (=> b!6268027 m!7089938))

(assert (=> d!1966605 d!1967173))

(declare-fun bs!1564775 () Bool)

(declare-fun d!1967175 () Bool)

(assert (= bs!1564775 (and d!1967175 b!6267928)))

(declare-fun lambda!343249 () Int)

(assert (=> bs!1564775 (not (= lambda!343249 lambda!343239))))

(declare-fun bs!1564776 () Bool)

(assert (= bs!1564776 (and d!1967175 d!1966567)))

(assert (=> bs!1564776 (= lambda!343249 lambda!343149)))

(declare-fun bs!1564777 () Bool)

(assert (= bs!1564777 (and d!1967175 d!1966543)))

(assert (=> bs!1564777 (= lambda!343249 lambda!343144)))

(declare-fun bs!1564778 () Bool)

(assert (= bs!1564778 (and d!1967175 d!1966597)))

(assert (=> bs!1564778 (= lambda!343249 lambda!343158)))

(declare-fun bs!1564779 () Bool)

(assert (= bs!1564779 (and d!1967175 d!1966599)))

(assert (=> bs!1564779 (= lambda!343249 lambda!343161)))

(declare-fun bs!1564780 () Bool)

(assert (= bs!1564780 (and d!1967175 d!1966525)))

(assert (=> bs!1564780 (= lambda!343249 lambda!343127)))

(declare-fun bs!1564781 () Bool)

(assert (= bs!1564781 (and d!1967175 b!6267930)))

(assert (=> bs!1564781 (not (= lambda!343249 lambda!343240))))

(declare-fun bs!1564782 () Bool)

(assert (= bs!1564782 (and d!1967175 d!1966533)))

(assert (=> bs!1564782 (= lambda!343249 lambda!343131)))

(declare-fun bs!1564783 () Bool)

(assert (= bs!1564783 (and d!1967175 d!1966529)))

(assert (=> bs!1564783 (= lambda!343249 lambda!343128)))

(declare-fun bs!1564784 () Bool)

(assert (= bs!1564784 (and d!1967175 d!1967123)))

(assert (=> bs!1564784 (= lambda!343249 lambda!343243)))

(declare-fun b!6268029 () Bool)

(declare-fun e!3812420 () Regex!16187)

(assert (=> b!6268029 (= e!3812420 EmptyLang!16187)))

(declare-fun b!6268030 () Bool)

(declare-fun e!3812421 () Bool)

(declare-fun e!3812419 () Bool)

(assert (=> b!6268030 (= e!3812421 e!3812419)))

(declare-fun c!1135598 () Bool)

(assert (=> b!6268030 (= c!1135598 (isEmpty!36766 (unfocusZipperList!1608 lt!2351094)))))

(declare-fun b!6268031 () Bool)

(declare-fun e!3812418 () Bool)

(assert (=> b!6268031 (= e!3812418 (isEmpty!36766 (t!378414 (unfocusZipperList!1608 lt!2351094))))))

(declare-fun b!6268032 () Bool)

(declare-fun e!3812422 () Regex!16187)

(assert (=> b!6268032 (= e!3812422 e!3812420)))

(declare-fun c!1135600 () Bool)

(assert (=> b!6268032 (= c!1135600 ((_ is Cons!64736) (unfocusZipperList!1608 lt!2351094)))))

(assert (=> d!1967175 e!3812421))

(declare-fun res!2585690 () Bool)

(assert (=> d!1967175 (=> (not res!2585690) (not e!3812421))))

(declare-fun lt!2351354 () Regex!16187)

(assert (=> d!1967175 (= res!2585690 (validRegex!7923 lt!2351354))))

(assert (=> d!1967175 (= lt!2351354 e!3812422)))

(declare-fun c!1135599 () Bool)

(assert (=> d!1967175 (= c!1135599 e!3812418)))

(declare-fun res!2585689 () Bool)

(assert (=> d!1967175 (=> (not res!2585689) (not e!3812418))))

(assert (=> d!1967175 (= res!2585689 ((_ is Cons!64736) (unfocusZipperList!1608 lt!2351094)))))

(assert (=> d!1967175 (forall!15312 (unfocusZipperList!1608 lt!2351094) lambda!343249)))

(assert (=> d!1967175 (= (generalisedUnion!2031 (unfocusZipperList!1608 lt!2351094)) lt!2351354)))

(declare-fun b!6268033 () Bool)

(declare-fun e!3812417 () Bool)

(assert (=> b!6268033 (= e!3812417 (isUnion!1032 lt!2351354))))

(declare-fun b!6268034 () Bool)

(assert (=> b!6268034 (= e!3812419 e!3812417)))

(declare-fun c!1135601 () Bool)

(assert (=> b!6268034 (= c!1135601 (isEmpty!36766 (tail!11960 (unfocusZipperList!1608 lt!2351094))))))

(declare-fun b!6268035 () Bool)

(assert (=> b!6268035 (= e!3812422 (h!71184 (unfocusZipperList!1608 lt!2351094)))))

(declare-fun b!6268036 () Bool)

(assert (=> b!6268036 (= e!3812417 (= lt!2351354 (head!12875 (unfocusZipperList!1608 lt!2351094))))))

(declare-fun b!6268037 () Bool)

(assert (=> b!6268037 (= e!3812419 (isEmptyLang!1602 lt!2351354))))

(declare-fun b!6268038 () Bool)

(assert (=> b!6268038 (= e!3812420 (Union!16187 (h!71184 (unfocusZipperList!1608 lt!2351094)) (generalisedUnion!2031 (t!378414 (unfocusZipperList!1608 lt!2351094)))))))

(assert (= (and d!1967175 res!2585689) b!6268031))

(assert (= (and d!1967175 c!1135599) b!6268035))

(assert (= (and d!1967175 (not c!1135599)) b!6268032))

(assert (= (and b!6268032 c!1135600) b!6268038))

(assert (= (and b!6268032 (not c!1135600)) b!6268029))

(assert (= (and d!1967175 res!2585690) b!6268030))

(assert (= (and b!6268030 c!1135598) b!6268037))

(assert (= (and b!6268030 (not c!1135598)) b!6268034))

(assert (= (and b!6268034 c!1135601) b!6268036))

(assert (= (and b!6268034 (not c!1135601)) b!6268033))

(declare-fun m!7089940 () Bool)

(assert (=> b!6268033 m!7089940))

(declare-fun m!7089942 () Bool)

(assert (=> b!6268031 m!7089942))

(assert (=> b!6268034 m!7088810))

(declare-fun m!7089944 () Bool)

(assert (=> b!6268034 m!7089944))

(assert (=> b!6268034 m!7089944))

(declare-fun m!7089946 () Bool)

(assert (=> b!6268034 m!7089946))

(declare-fun m!7089948 () Bool)

(assert (=> b!6268037 m!7089948))

(declare-fun m!7089950 () Bool)

(assert (=> b!6268038 m!7089950))

(assert (=> b!6268036 m!7088810))

(declare-fun m!7089952 () Bool)

(assert (=> b!6268036 m!7089952))

(declare-fun m!7089954 () Bool)

(assert (=> d!1967175 m!7089954))

(assert (=> d!1967175 m!7088810))

(declare-fun m!7089956 () Bool)

(assert (=> d!1967175 m!7089956))

(assert (=> b!6268030 m!7088810))

(declare-fun m!7089958 () Bool)

(assert (=> b!6268030 m!7089958))

(assert (=> d!1966605 d!1967175))

(declare-fun bs!1564785 () Bool)

(declare-fun d!1967177 () Bool)

(assert (= bs!1564785 (and d!1967177 b!6267928)))

(declare-fun lambda!343250 () Int)

(assert (=> bs!1564785 (not (= lambda!343250 lambda!343239))))

(declare-fun bs!1564786 () Bool)

(assert (= bs!1564786 (and d!1967177 d!1966567)))

(assert (=> bs!1564786 (= lambda!343250 lambda!343149)))

(declare-fun bs!1564787 () Bool)

(assert (= bs!1564787 (and d!1967177 d!1967175)))

(assert (=> bs!1564787 (= lambda!343250 lambda!343249)))

(declare-fun bs!1564788 () Bool)

(assert (= bs!1564788 (and d!1967177 d!1966543)))

(assert (=> bs!1564788 (= lambda!343250 lambda!343144)))

(declare-fun bs!1564789 () Bool)

(assert (= bs!1564789 (and d!1967177 d!1966597)))

(assert (=> bs!1564789 (= lambda!343250 lambda!343158)))

(declare-fun bs!1564790 () Bool)

(assert (= bs!1564790 (and d!1967177 d!1966599)))

(assert (=> bs!1564790 (= lambda!343250 lambda!343161)))

(declare-fun bs!1564791 () Bool)

(assert (= bs!1564791 (and d!1967177 d!1966525)))

(assert (=> bs!1564791 (= lambda!343250 lambda!343127)))

(declare-fun bs!1564792 () Bool)

(assert (= bs!1564792 (and d!1967177 b!6267930)))

(assert (=> bs!1564792 (not (= lambda!343250 lambda!343240))))

(declare-fun bs!1564793 () Bool)

(assert (= bs!1564793 (and d!1967177 d!1966533)))

(assert (=> bs!1564793 (= lambda!343250 lambda!343131)))

(declare-fun bs!1564794 () Bool)

(assert (= bs!1564794 (and d!1967177 d!1966529)))

(assert (=> bs!1564794 (= lambda!343250 lambda!343128)))

(declare-fun bs!1564795 () Bool)

(assert (= bs!1564795 (and d!1967177 d!1967123)))

(assert (=> bs!1564795 (= lambda!343250 lambda!343243)))

(declare-fun lt!2351355 () List!64860)

(assert (=> d!1967177 (forall!15312 lt!2351355 lambda!343250)))

(declare-fun e!3812423 () List!64860)

(assert (=> d!1967177 (= lt!2351355 e!3812423)))

(declare-fun c!1135602 () Bool)

(assert (=> d!1967177 (= c!1135602 ((_ is Cons!64737) lt!2351094))))

(assert (=> d!1967177 (= (unfocusZipperList!1608 lt!2351094) lt!2351355)))

(declare-fun b!6268039 () Bool)

(assert (=> b!6268039 (= e!3812423 (Cons!64736 (generalisedConcat!1784 (exprs!6071 (h!71185 lt!2351094))) (unfocusZipperList!1608 (t!378415 lt!2351094))))))

(declare-fun b!6268040 () Bool)

(assert (=> b!6268040 (= e!3812423 Nil!64736)))

(assert (= (and d!1967177 c!1135602) b!6268039))

(assert (= (and d!1967177 (not c!1135602)) b!6268040))

(declare-fun m!7089960 () Bool)

(assert (=> d!1967177 m!7089960))

(declare-fun m!7089962 () Bool)

(assert (=> b!6268039 m!7089962))

(declare-fun m!7089964 () Bool)

(assert (=> b!6268039 m!7089964))

(assert (=> d!1966605 d!1967177))

(declare-fun bs!1564796 () Bool)

(declare-fun d!1967179 () Bool)

(assert (= bs!1564796 (and d!1967179 b!6267928)))

(declare-fun lambda!343251 () Int)

(assert (=> bs!1564796 (not (= lambda!343251 lambda!343239))))

(declare-fun bs!1564797 () Bool)

(assert (= bs!1564797 (and d!1967179 d!1966567)))

(assert (=> bs!1564797 (= lambda!343251 lambda!343149)))

(declare-fun bs!1564798 () Bool)

(assert (= bs!1564798 (and d!1967179 d!1967175)))

(assert (=> bs!1564798 (= lambda!343251 lambda!343249)))

(declare-fun bs!1564799 () Bool)

(assert (= bs!1564799 (and d!1967179 d!1967177)))

(assert (=> bs!1564799 (= lambda!343251 lambda!343250)))

(declare-fun bs!1564800 () Bool)

(assert (= bs!1564800 (and d!1967179 d!1966543)))

(assert (=> bs!1564800 (= lambda!343251 lambda!343144)))

(declare-fun bs!1564801 () Bool)

(assert (= bs!1564801 (and d!1967179 d!1966597)))

(assert (=> bs!1564801 (= lambda!343251 lambda!343158)))

(declare-fun bs!1564802 () Bool)

(assert (= bs!1564802 (and d!1967179 d!1966599)))

(assert (=> bs!1564802 (= lambda!343251 lambda!343161)))

(declare-fun bs!1564803 () Bool)

(assert (= bs!1564803 (and d!1967179 d!1966525)))

(assert (=> bs!1564803 (= lambda!343251 lambda!343127)))

(declare-fun bs!1564804 () Bool)

(assert (= bs!1564804 (and d!1967179 b!6267930)))

(assert (=> bs!1564804 (not (= lambda!343251 lambda!343240))))

(declare-fun bs!1564805 () Bool)

(assert (= bs!1564805 (and d!1967179 d!1966533)))

(assert (=> bs!1564805 (= lambda!343251 lambda!343131)))

(declare-fun bs!1564806 () Bool)

(assert (= bs!1564806 (and d!1967179 d!1966529)))

(assert (=> bs!1564806 (= lambda!343251 lambda!343128)))

(declare-fun bs!1564807 () Bool)

(assert (= bs!1564807 (and d!1967179 d!1967123)))

(assert (=> bs!1564807 (= lambda!343251 lambda!343243)))

(assert (=> d!1967179 (= (inv!83714 setElem!42614) (forall!15312 (exprs!6071 setElem!42614) lambda!343251))))

(declare-fun bs!1564808 () Bool)

(assert (= bs!1564808 d!1967179))

(declare-fun m!7089966 () Bool)

(assert (=> bs!1564808 m!7089966))

(assert (=> setNonEmpty!42614 d!1967179))

(declare-fun bs!1564809 () Bool)

(declare-fun d!1967181 () Bool)

(assert (= bs!1564809 (and d!1967181 d!1967147)))

(declare-fun lambda!343252 () Int)

(assert (=> bs!1564809 (= lambda!343252 lambda!343246)))

(declare-fun bs!1564810 () Bool)

(assert (= bs!1564810 (and d!1967181 b!6266772)))

(assert (=> bs!1564810 (not (= lambda!343252 lambda!343142))))

(declare-fun bs!1564811 () Bool)

(assert (= bs!1564811 (and d!1967181 b!6267918)))

(assert (=> bs!1564811 (not (= lambda!343252 lambda!343233))))

(declare-fun bs!1564812 () Bool)

(assert (= bs!1564812 (and d!1967181 d!1967161)))

(assert (=> bs!1564812 (= lambda!343252 lambda!343247)))

(declare-fun bs!1564813 () Bool)

(assert (= bs!1564813 (and d!1967181 b!6266769)))

(assert (=> bs!1564813 (not (= lambda!343252 lambda!343140))))

(declare-fun bs!1564814 () Bool)

(assert (= bs!1564814 (and d!1967181 d!1967091)))

(assert (=> bs!1564814 (= lambda!343252 lambda!343241)))

(declare-fun bs!1564815 () Bool)

(assert (= bs!1564815 (and d!1967181 d!1967035)))

(assert (=> bs!1564815 (= lambda!343252 lambda!343228)))

(declare-fun bs!1564816 () Bool)

(assert (= bs!1564816 (and d!1967181 b!6266767)))

(assert (=> bs!1564816 (not (= lambda!343252 lambda!343139))))

(declare-fun bs!1564817 () Bool)

(assert (= bs!1564817 (and d!1967181 b!6266774)))

(assert (=> bs!1564817 (not (= lambda!343252 lambda!343143))))

(declare-fun bs!1564818 () Bool)

(assert (= bs!1564818 (and d!1967181 b!6267920)))

(assert (=> bs!1564818 (not (= lambda!343252 lambda!343234))))

(declare-fun bs!1564819 () Bool)

(assert (= bs!1564819 (and d!1967181 d!1967077)))

(assert (=> bs!1564819 (not (= lambda!343252 lambda!343231))))

(assert (=> d!1967181 (= (nullableZipper!1957 lt!2351102) (exists!2521 lt!2351102 lambda!343252))))

(declare-fun bs!1564820 () Bool)

(assert (= bs!1564820 d!1967181))

(declare-fun m!7089968 () Bool)

(assert (=> bs!1564820 m!7089968))

(assert (=> b!6266896 d!1967181))

(declare-fun bs!1564821 () Bool)

(declare-fun d!1967183 () Bool)

(assert (= bs!1564821 (and d!1967183 d!1967147)))

(declare-fun lambda!343253 () Int)

(assert (=> bs!1564821 (= lambda!343253 lambda!343246)))

(declare-fun bs!1564822 () Bool)

(assert (= bs!1564822 (and d!1967183 b!6266772)))

(assert (=> bs!1564822 (not (= lambda!343253 lambda!343142))))

(declare-fun bs!1564823 () Bool)

(assert (= bs!1564823 (and d!1967183 b!6267918)))

(assert (=> bs!1564823 (not (= lambda!343253 lambda!343233))))

(declare-fun bs!1564824 () Bool)

(assert (= bs!1564824 (and d!1967183 d!1967161)))

(assert (=> bs!1564824 (= lambda!343253 lambda!343247)))

(declare-fun bs!1564825 () Bool)

(assert (= bs!1564825 (and d!1967183 b!6266769)))

(assert (=> bs!1564825 (not (= lambda!343253 lambda!343140))))

(declare-fun bs!1564826 () Bool)

(assert (= bs!1564826 (and d!1967183 d!1967091)))

(assert (=> bs!1564826 (= lambda!343253 lambda!343241)))

(declare-fun bs!1564827 () Bool)

(assert (= bs!1564827 (and d!1967183 d!1967035)))

(assert (=> bs!1564827 (= lambda!343253 lambda!343228)))

(declare-fun bs!1564828 () Bool)

(assert (= bs!1564828 (and d!1967183 d!1967181)))

(assert (=> bs!1564828 (= lambda!343253 lambda!343252)))

(declare-fun bs!1564829 () Bool)

(assert (= bs!1564829 (and d!1967183 b!6266767)))

(assert (=> bs!1564829 (not (= lambda!343253 lambda!343139))))

(declare-fun bs!1564830 () Bool)

(assert (= bs!1564830 (and d!1967183 b!6266774)))

(assert (=> bs!1564830 (not (= lambda!343253 lambda!343143))))

(declare-fun bs!1564831 () Bool)

(assert (= bs!1564831 (and d!1967183 b!6267920)))

(assert (=> bs!1564831 (not (= lambda!343253 lambda!343234))))

(declare-fun bs!1564832 () Bool)

(assert (= bs!1564832 (and d!1967183 d!1967077)))

(assert (=> bs!1564832 (not (= lambda!343253 lambda!343231))))

(assert (=> d!1967183 (= (nullableZipper!1957 lt!2351083) (exists!2521 lt!2351083 lambda!343253))))

(declare-fun bs!1564833 () Bool)

(assert (= bs!1564833 d!1967183))

(declare-fun m!7089970 () Bool)

(assert (=> bs!1564833 m!7089970))

(assert (=> b!6266961 d!1967183))

(declare-fun d!1967185 () Bool)

(assert (=> d!1967185 (= ($colon$colon!2052 (exprs!6071 lt!2351103) (ite (or c!1135256 c!1135254) (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (regTwo!32886 (regOne!32886 r!7292)))) (Cons!64736 (ite (or c!1135256 c!1135254) (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (regTwo!32886 (regOne!32886 r!7292))) (exprs!6071 lt!2351103)))))

(assert (=> bm!529690 d!1967185))

(declare-fun b!6268057 () Bool)

(declare-fun e!3812435 () Int)

(assert (=> b!6268057 (= e!3812435 1)))

(declare-fun b!6268058 () Bool)

(declare-fun e!3812434 () Int)

(declare-fun e!3812432 () Int)

(assert (=> b!6268058 (= e!3812434 e!3812432)))

(declare-fun c!1135611 () Bool)

(assert (=> b!6268058 (= c!1135611 ((_ is Star!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun bm!529916 () Bool)

(declare-fun call!529923 () Int)

(declare-fun c!1135612 () Bool)

(assert (=> bm!529916 (= call!529923 (regexDepthTotal!163 (ite c!1135611 (reg!16516 (h!71184 (exprs!6071 (h!71185 zl!343)))) (ite c!1135612 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))))))))

(declare-fun bm!529917 () Bool)

(declare-fun call!529921 () Int)

(assert (=> bm!529917 (= call!529921 (regexDepthTotal!163 (ite c!1135612 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun b!6268059 () Bool)

(assert (=> b!6268059 (= c!1135612 ((_ is Union!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun e!3812433 () Int)

(assert (=> b!6268059 (= e!3812432 e!3812433)))

(declare-fun bm!529918 () Bool)

(declare-fun call!529922 () Int)

(assert (=> bm!529918 (= call!529922 call!529923)))

(declare-fun b!6268060 () Bool)

(assert (=> b!6268060 (= e!3812432 (+ 1 call!529923))))

(declare-fun b!6268061 () Bool)

(assert (=> b!6268061 (= e!3812433 e!3812435)))

(declare-fun c!1135614 () Bool)

(assert (=> b!6268061 (= c!1135614 ((_ is Concat!25032) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6268062 () Bool)

(assert (=> b!6268062 (= e!3812434 1)))

(declare-fun d!1967187 () Bool)

(declare-fun lt!2351358 () Int)

(assert (=> d!1967187 (> lt!2351358 0)))

(assert (=> d!1967187 (= lt!2351358 e!3812434)))

(declare-fun c!1135613 () Bool)

(assert (=> d!1967187 (= c!1135613 ((_ is ElementMatch!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(assert (=> d!1967187 (= (regexDepthTotal!163 (h!71184 (exprs!6071 (h!71185 zl!343)))) lt!2351358)))

(declare-fun b!6268063 () Bool)

(assert (=> b!6268063 (= e!3812435 (+ 1 call!529921 call!529922))))

(declare-fun b!6268064 () Bool)

(assert (=> b!6268064 (= e!3812433 (+ 1 call!529921 call!529922))))

(assert (= (and d!1967187 c!1135613) b!6268062))

(assert (= (and d!1967187 (not c!1135613)) b!6268058))

(assert (= (and b!6268058 c!1135611) b!6268060))

(assert (= (and b!6268058 (not c!1135611)) b!6268059))

(assert (= (and b!6268059 c!1135612) b!6268064))

(assert (= (and b!6268059 (not c!1135612)) b!6268061))

(assert (= (and b!6268061 c!1135614) b!6268063))

(assert (= (and b!6268061 (not c!1135614)) b!6268057))

(assert (= (or b!6268064 b!6268063) bm!529918))

(assert (= (or b!6268064 b!6268063) bm!529917))

(assert (= (or b!6268060 bm!529918) bm!529916))

(declare-fun m!7089972 () Bool)

(assert (=> bm!529916 m!7089972))

(declare-fun m!7089974 () Bool)

(assert (=> bm!529917 m!7089974))

(assert (=> b!6266910 d!1967187))

(declare-fun d!1967189 () Bool)

(declare-fun lt!2351359 () Int)

(assert (=> d!1967189 (>= lt!2351359 0)))

(declare-fun e!3812436 () Int)

(assert (=> d!1967189 (= lt!2351359 e!3812436)))

(declare-fun c!1135615 () Bool)

(assert (=> d!1967189 (= c!1135615 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))))))))

(assert (=> d!1967189 (= (contextDepthTotal!310 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343))))) lt!2351359)))

(declare-fun b!6268065 () Bool)

(assert (=> b!6268065 (= e!3812436 (+ (regexDepthTotal!163 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343))))))) (contextDepthTotal!310 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343))))))))))))

(declare-fun b!6268066 () Bool)

(assert (=> b!6268066 (= e!3812436 1)))

(assert (= (and d!1967189 c!1135615) b!6268065))

(assert (= (and d!1967189 (not c!1135615)) b!6268066))

(declare-fun m!7089976 () Bool)

(assert (=> b!6268065 m!7089976))

(declare-fun m!7089978 () Bool)

(assert (=> b!6268065 m!7089978))

(assert (=> b!6266910 d!1967189))

(declare-fun d!1967191 () Bool)

(assert (=> d!1967191 (= (isDefined!12781 lt!2351198) (not (isEmpty!36770 lt!2351198)))))

(declare-fun bs!1564834 () Bool)

(assert (= bs!1564834 d!1967191))

(declare-fun m!7089980 () Bool)

(assert (=> bs!1564834 m!7089980))

(assert (=> d!1966509 d!1967191))

(declare-fun b!6268067 () Bool)

(declare-fun e!3812442 () Bool)

(declare-fun lt!2351360 () Bool)

(declare-fun call!529924 () Bool)

(assert (=> b!6268067 (= e!3812442 (= lt!2351360 call!529924))))

(declare-fun b!6268068 () Bool)

(declare-fun e!3812438 () Bool)

(assert (=> b!6268068 (= e!3812438 (not lt!2351360))))

(declare-fun b!6268069 () Bool)

(declare-fun res!2585696 () Bool)

(declare-fun e!3812440 () Bool)

(assert (=> b!6268069 (=> res!2585696 e!3812440)))

(assert (=> b!6268069 (= res!2585696 (not ((_ is ElementMatch!16187) (regOne!32886 r!7292))))))

(assert (=> b!6268069 (= e!3812438 e!3812440)))

(declare-fun b!6268070 () Bool)

(declare-fun e!3812439 () Bool)

(assert (=> b!6268070 (= e!3812439 (= (head!12874 Nil!64738) (c!1135024 (regOne!32886 r!7292))))))

(declare-fun b!6268071 () Bool)

(declare-fun res!2585691 () Bool)

(assert (=> b!6268071 (=> (not res!2585691) (not e!3812439))))

(assert (=> b!6268071 (= res!2585691 (not call!529924))))

(declare-fun b!6268073 () Bool)

(declare-fun res!2585698 () Bool)

(assert (=> b!6268073 (=> (not res!2585698) (not e!3812439))))

(assert (=> b!6268073 (= res!2585698 (isEmpty!36771 (tail!11959 Nil!64738)))))

(declare-fun b!6268074 () Bool)

(declare-fun e!3812437 () Bool)

(declare-fun e!3812441 () Bool)

(assert (=> b!6268074 (= e!3812437 e!3812441)))

(declare-fun res!2585697 () Bool)

(assert (=> b!6268074 (=> res!2585697 e!3812441)))

(assert (=> b!6268074 (= res!2585697 call!529924)))

(declare-fun b!6268075 () Bool)

(declare-fun e!3812443 () Bool)

(assert (=> b!6268075 (= e!3812443 (matchR!8370 (derivativeStep!4896 (regOne!32886 r!7292) (head!12874 Nil!64738)) (tail!11959 Nil!64738)))))

(declare-fun b!6268076 () Bool)

(assert (=> b!6268076 (= e!3812441 (not (= (head!12874 Nil!64738) (c!1135024 (regOne!32886 r!7292)))))))

(declare-fun b!6268077 () Bool)

(declare-fun res!2585694 () Bool)

(assert (=> b!6268077 (=> res!2585694 e!3812440)))

(assert (=> b!6268077 (= res!2585694 e!3812439)))

(declare-fun res!2585692 () Bool)

(assert (=> b!6268077 (=> (not res!2585692) (not e!3812439))))

(assert (=> b!6268077 (= res!2585692 lt!2351360)))

(declare-fun b!6268078 () Bool)

(declare-fun res!2585695 () Bool)

(assert (=> b!6268078 (=> res!2585695 e!3812441)))

(assert (=> b!6268078 (= res!2585695 (not (isEmpty!36771 (tail!11959 Nil!64738))))))

(declare-fun b!6268079 () Bool)

(assert (=> b!6268079 (= e!3812443 (nullable!6180 (regOne!32886 r!7292)))))

(declare-fun bm!529919 () Bool)

(assert (=> bm!529919 (= call!529924 (isEmpty!36771 Nil!64738))))

(declare-fun b!6268080 () Bool)

(assert (=> b!6268080 (= e!3812440 e!3812437)))

(declare-fun res!2585693 () Bool)

(assert (=> b!6268080 (=> (not res!2585693) (not e!3812437))))

(assert (=> b!6268080 (= res!2585693 (not lt!2351360))))

(declare-fun d!1967193 () Bool)

(assert (=> d!1967193 e!3812442))

(declare-fun c!1135618 () Bool)

(assert (=> d!1967193 (= c!1135618 ((_ is EmptyExpr!16187) (regOne!32886 r!7292)))))

(assert (=> d!1967193 (= lt!2351360 e!3812443)))

(declare-fun c!1135617 () Bool)

(assert (=> d!1967193 (= c!1135617 (isEmpty!36771 Nil!64738))))

(assert (=> d!1967193 (validRegex!7923 (regOne!32886 r!7292))))

(assert (=> d!1967193 (= (matchR!8370 (regOne!32886 r!7292) Nil!64738) lt!2351360)))

(declare-fun b!6268072 () Bool)

(assert (=> b!6268072 (= e!3812442 e!3812438)))

(declare-fun c!1135616 () Bool)

(assert (=> b!6268072 (= c!1135616 ((_ is EmptyLang!16187) (regOne!32886 r!7292)))))

(assert (= (and d!1967193 c!1135617) b!6268079))

(assert (= (and d!1967193 (not c!1135617)) b!6268075))

(assert (= (and d!1967193 c!1135618) b!6268067))

(assert (= (and d!1967193 (not c!1135618)) b!6268072))

(assert (= (and b!6268072 c!1135616) b!6268068))

(assert (= (and b!6268072 (not c!1135616)) b!6268069))

(assert (= (and b!6268069 (not res!2585696)) b!6268077))

(assert (= (and b!6268077 res!2585692) b!6268071))

(assert (= (and b!6268071 res!2585691) b!6268073))

(assert (= (and b!6268073 res!2585698) b!6268070))

(assert (= (and b!6268077 (not res!2585694)) b!6268080))

(assert (= (and b!6268080 res!2585693) b!6268074))

(assert (= (and b!6268074 (not res!2585697)) b!6268078))

(assert (= (and b!6268078 (not res!2585695)) b!6268076))

(assert (= (or b!6268067 b!6268071 b!6268074) bm!529919))

(declare-fun m!7089982 () Bool)

(assert (=> d!1967193 m!7089982))

(assert (=> d!1967193 m!7088498))

(declare-fun m!7089984 () Bool)

(assert (=> b!6268078 m!7089984))

(assert (=> b!6268078 m!7089984))

(declare-fun m!7089986 () Bool)

(assert (=> b!6268078 m!7089986))

(assert (=> b!6268073 m!7089984))

(assert (=> b!6268073 m!7089984))

(assert (=> b!6268073 m!7089986))

(assert (=> b!6268079 m!7089710))

(assert (=> bm!529919 m!7089982))

(declare-fun m!7089988 () Bool)

(assert (=> b!6268070 m!7089988))

(assert (=> b!6268075 m!7089988))

(assert (=> b!6268075 m!7089988))

(declare-fun m!7089990 () Bool)

(assert (=> b!6268075 m!7089990))

(assert (=> b!6268075 m!7089984))

(assert (=> b!6268075 m!7089990))

(assert (=> b!6268075 m!7089984))

(declare-fun m!7089992 () Bool)

(assert (=> b!6268075 m!7089992))

(assert (=> b!6268076 m!7089988))

(assert (=> d!1966509 d!1967193))

(declare-fun b!6268081 () Bool)

(declare-fun e!3812444 () Bool)

(declare-fun e!3812448 () Bool)

(assert (=> b!6268081 (= e!3812444 e!3812448)))

(declare-fun res!2585700 () Bool)

(assert (=> b!6268081 (=> (not res!2585700) (not e!3812448))))

(declare-fun call!529927 () Bool)

(assert (=> b!6268081 (= res!2585700 call!529927)))

(declare-fun b!6268082 () Bool)

(declare-fun res!2585702 () Bool)

(assert (=> b!6268082 (=> res!2585702 e!3812444)))

(assert (=> b!6268082 (= res!2585702 (not ((_ is Concat!25032) (regOne!32886 r!7292))))))

(declare-fun e!3812447 () Bool)

(assert (=> b!6268082 (= e!3812447 e!3812444)))

(declare-fun b!6268083 () Bool)

(declare-fun e!3812445 () Bool)

(declare-fun e!3812449 () Bool)

(assert (=> b!6268083 (= e!3812445 e!3812449)))

(declare-fun c!1135619 () Bool)

(assert (=> b!6268083 (= c!1135619 ((_ is Star!16187) (regOne!32886 r!7292)))))

(declare-fun d!1967195 () Bool)

(declare-fun res!2585703 () Bool)

(assert (=> d!1967195 (=> res!2585703 e!3812445)))

(assert (=> d!1967195 (= res!2585703 ((_ is ElementMatch!16187) (regOne!32886 r!7292)))))

(assert (=> d!1967195 (= (validRegex!7923 (regOne!32886 r!7292)) e!3812445)))

(declare-fun b!6268084 () Bool)

(declare-fun e!3812450 () Bool)

(declare-fun call!529926 () Bool)

(assert (=> b!6268084 (= e!3812450 call!529926)))

(declare-fun bm!529920 () Bool)

(declare-fun call!529925 () Bool)

(assert (=> bm!529920 (= call!529927 call!529925)))

(declare-fun b!6268085 () Bool)

(assert (=> b!6268085 (= e!3812449 e!3812447)))

(declare-fun c!1135620 () Bool)

(assert (=> b!6268085 (= c!1135620 ((_ is Union!16187) (regOne!32886 r!7292)))))

(declare-fun bm!529921 () Bool)

(assert (=> bm!529921 (= call!529926 (validRegex!7923 (ite c!1135620 (regTwo!32887 (regOne!32886 r!7292)) (regTwo!32886 (regOne!32886 r!7292)))))))

(declare-fun bm!529922 () Bool)

(assert (=> bm!529922 (= call!529925 (validRegex!7923 (ite c!1135619 (reg!16516 (regOne!32886 r!7292)) (ite c!1135620 (regOne!32887 (regOne!32886 r!7292)) (regOne!32886 (regOne!32886 r!7292))))))))

(declare-fun b!6268086 () Bool)

(declare-fun res!2585701 () Bool)

(assert (=> b!6268086 (=> (not res!2585701) (not e!3812450))))

(assert (=> b!6268086 (= res!2585701 call!529927)))

(assert (=> b!6268086 (= e!3812447 e!3812450)))

(declare-fun b!6268087 () Bool)

(assert (=> b!6268087 (= e!3812448 call!529926)))

(declare-fun b!6268088 () Bool)

(declare-fun e!3812446 () Bool)

(assert (=> b!6268088 (= e!3812449 e!3812446)))

(declare-fun res!2585699 () Bool)

(assert (=> b!6268088 (= res!2585699 (not (nullable!6180 (reg!16516 (regOne!32886 r!7292)))))))

(assert (=> b!6268088 (=> (not res!2585699) (not e!3812446))))

(declare-fun b!6268089 () Bool)

(assert (=> b!6268089 (= e!3812446 call!529925)))

(assert (= (and d!1967195 (not res!2585703)) b!6268083))

(assert (= (and b!6268083 c!1135619) b!6268088))

(assert (= (and b!6268083 (not c!1135619)) b!6268085))

(assert (= (and b!6268088 res!2585699) b!6268089))

(assert (= (and b!6268085 c!1135620) b!6268086))

(assert (= (and b!6268085 (not c!1135620)) b!6268082))

(assert (= (and b!6268086 res!2585701) b!6268084))

(assert (= (and b!6268082 (not res!2585702)) b!6268081))

(assert (= (and b!6268081 res!2585700) b!6268087))

(assert (= (or b!6268084 b!6268087) bm!529921))

(assert (= (or b!6268086 b!6268081) bm!529920))

(assert (= (or b!6268089 bm!529920) bm!529922))

(declare-fun m!7089994 () Bool)

(assert (=> bm!529921 m!7089994))

(declare-fun m!7089996 () Bool)

(assert (=> bm!529922 m!7089996))

(declare-fun m!7089998 () Bool)

(assert (=> b!6268088 m!7089998))

(assert (=> d!1966509 d!1967195))

(assert (=> d!1966495 d!1966493))

(declare-fun d!1967197 () Bool)

(assert (=> d!1967197 (= (flatMap!1692 z!1189 lambda!343069) (dynLambda!25589 lambda!343069 (h!71185 zl!343)))))

(assert (=> d!1967197 true))

(declare-fun _$13!3371 () Unit!158079)

(assert (=> d!1967197 (= (choose!46490 z!1189 (h!71185 zl!343) lambda!343069) _$13!3371)))

(declare-fun b_lambda!238661 () Bool)

(assert (=> (not b_lambda!238661) (not d!1967197)))

(declare-fun bs!1564835 () Bool)

(assert (= bs!1564835 d!1967197))

(assert (=> bs!1564835 m!7087944))

(assert (=> bs!1564835 m!7088458))

(assert (=> d!1966495 d!1967197))

(declare-fun d!1967199 () Bool)

(assert (=> d!1967199 (= (isEmptyExpr!1593 lt!2351213) ((_ is EmptyExpr!16187) lt!2351213))))

(assert (=> b!6266711 d!1967199))

(assert (=> d!1966563 d!1967057))

(declare-fun call!529933 () List!64860)

(declare-fun bm!529923 () Bool)

(declare-fun call!529931 () (InoxSet Context!11142))

(declare-fun c!1135622 () Bool)

(assert (=> bm!529923 (= call!529931 (derivationStepZipperDown!1435 (ite c!1135622 (regTwo!32887 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))) (regOne!32886 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292)))))) (ite c!1135622 (ite c!1135258 lt!2351109 (Context!11143 call!529701)) (Context!11143 call!529933)) (h!71186 s!2326)))))

(declare-fun call!529932 () (InoxSet Context!11142))

(declare-fun bm!529924 () Bool)

(declare-fun c!1135623 () Bool)

(declare-fun c!1135625 () Bool)

(declare-fun call!529928 () List!64860)

(assert (=> bm!529924 (= call!529932 (derivationStepZipperDown!1435 (ite c!1135622 (regOne!32887 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))) (ite c!1135625 (regTwo!32886 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))) (ite c!1135623 (regOne!32886 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))) (reg!16516 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292)))))))) (ite (or c!1135622 c!1135625) (ite c!1135258 lt!2351109 (Context!11143 call!529701)) (Context!11143 call!529928)) (h!71186 s!2326)))))

(declare-fun b!6268090 () Bool)

(declare-fun c!1135624 () Bool)

(assert (=> b!6268090 (= c!1135624 ((_ is Star!16187) (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))))))

(declare-fun e!3812451 () (InoxSet Context!11142))

(declare-fun e!3812452 () (InoxSet Context!11142))

(assert (=> b!6268090 (= e!3812451 e!3812452)))

(declare-fun bm!529925 () Bool)

(declare-fun call!529929 () (InoxSet Context!11142))

(declare-fun call!529930 () (InoxSet Context!11142))

(assert (=> bm!529925 (= call!529929 call!529930)))

(declare-fun c!1135621 () Bool)

(declare-fun d!1967201 () Bool)

(assert (=> d!1967201 (= c!1135621 (and ((_ is ElementMatch!16187) (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))) (= (c!1135024 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))) (h!71186 s!2326))))))

(declare-fun e!3812454 () (InoxSet Context!11142))

(assert (=> d!1967201 (= (derivationStepZipperDown!1435 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292)))) (ite c!1135258 lt!2351109 (Context!11143 call!529701)) (h!71186 s!2326)) e!3812454)))

(declare-fun b!6268091 () Bool)

(assert (=> b!6268091 (= e!3812454 (store ((as const (Array Context!11142 Bool)) false) (ite c!1135258 lt!2351109 (Context!11143 call!529701)) true))))

(declare-fun b!6268092 () Bool)

(declare-fun e!3812456 () (InoxSet Context!11142))

(assert (=> b!6268092 (= e!3812456 ((_ map or) call!529932 call!529931))))

(declare-fun b!6268093 () Bool)

(assert (=> b!6268093 (= e!3812452 call!529929)))

(declare-fun b!6268094 () Bool)

(assert (=> b!6268094 (= e!3812454 e!3812456)))

(assert (=> b!6268094 (= c!1135622 ((_ is Union!16187) (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))))))

(declare-fun bm!529926 () Bool)

(assert (=> bm!529926 (= call!529930 call!529932)))

(declare-fun b!6268095 () Bool)

(declare-fun e!3812453 () (InoxSet Context!11142))

(assert (=> b!6268095 (= e!3812453 ((_ map or) call!529931 call!529930))))

(declare-fun b!6268096 () Bool)

(assert (=> b!6268096 (= e!3812452 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6268097 () Bool)

(declare-fun e!3812455 () Bool)

(assert (=> b!6268097 (= e!3812455 (nullable!6180 (regOne!32886 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292)))))))))

(declare-fun b!6268098 () Bool)

(assert (=> b!6268098 (= e!3812451 call!529929)))

(declare-fun bm!529927 () Bool)

(assert (=> bm!529927 (= call!529928 call!529933)))

(declare-fun b!6268099 () Bool)

(assert (=> b!6268099 (= e!3812453 e!3812451)))

(assert (=> b!6268099 (= c!1135623 ((_ is Concat!25032) (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))))))

(declare-fun b!6268100 () Bool)

(assert (=> b!6268100 (= c!1135625 e!3812455)))

(declare-fun res!2585704 () Bool)

(assert (=> b!6268100 (=> (not res!2585704) (not e!3812455))))

(assert (=> b!6268100 (= res!2585704 ((_ is Concat!25032) (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))))))

(assert (=> b!6268100 (= e!3812456 e!3812453)))

(declare-fun bm!529928 () Bool)

(assert (=> bm!529928 (= call!529933 ($colon$colon!2052 (exprs!6071 (ite c!1135258 lt!2351109 (Context!11143 call!529701))) (ite (or c!1135625 c!1135623) (regTwo!32886 (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))) (ite c!1135258 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292)))))))))

(assert (= (and d!1967201 c!1135621) b!6268091))

(assert (= (and d!1967201 (not c!1135621)) b!6268094))

(assert (= (and b!6268094 c!1135622) b!6268092))

(assert (= (and b!6268094 (not c!1135622)) b!6268100))

(assert (= (and b!6268100 res!2585704) b!6268097))

(assert (= (and b!6268100 c!1135625) b!6268095))

(assert (= (and b!6268100 (not c!1135625)) b!6268099))

(assert (= (and b!6268099 c!1135623) b!6268098))

(assert (= (and b!6268099 (not c!1135623)) b!6268090))

(assert (= (and b!6268090 c!1135624) b!6268093))

(assert (= (and b!6268090 (not c!1135624)) b!6268096))

(assert (= (or b!6268098 b!6268093) bm!529927))

(assert (= (or b!6268098 b!6268093) bm!529925))

(assert (= (or b!6268095 bm!529927) bm!529928))

(assert (= (or b!6268095 bm!529925) bm!529926))

(assert (= (or b!6268092 b!6268095) bm!529923))

(assert (= (or b!6268092 bm!529926) bm!529924))

(declare-fun m!7090000 () Bool)

(assert (=> bm!529923 m!7090000))

(declare-fun m!7090002 () Bool)

(assert (=> bm!529928 m!7090002))

(declare-fun m!7090004 () Bool)

(assert (=> b!6268097 m!7090004))

(declare-fun m!7090006 () Bool)

(assert (=> b!6268091 m!7090006))

(declare-fun m!7090008 () Bool)

(assert (=> bm!529924 m!7090008))

(assert (=> bm!529691 d!1967201))

(declare-fun bs!1564836 () Bool)

(declare-fun d!1967203 () Bool)

(assert (= bs!1564836 (and d!1967203 b!6267928)))

(declare-fun lambda!343254 () Int)

(assert (=> bs!1564836 (not (= lambda!343254 lambda!343239))))

(declare-fun bs!1564837 () Bool)

(assert (= bs!1564837 (and d!1967203 d!1966567)))

(assert (=> bs!1564837 (= lambda!343254 lambda!343149)))

(declare-fun bs!1564838 () Bool)

(assert (= bs!1564838 (and d!1967203 d!1967175)))

(assert (=> bs!1564838 (= lambda!343254 lambda!343249)))

(declare-fun bs!1564839 () Bool)

(assert (= bs!1564839 (and d!1967203 d!1967177)))

(assert (=> bs!1564839 (= lambda!343254 lambda!343250)))

(declare-fun bs!1564840 () Bool)

(assert (= bs!1564840 (and d!1967203 d!1966543)))

(assert (=> bs!1564840 (= lambda!343254 lambda!343144)))

(declare-fun bs!1564841 () Bool)

(assert (= bs!1564841 (and d!1967203 d!1966597)))

(assert (=> bs!1564841 (= lambda!343254 lambda!343158)))

(declare-fun bs!1564842 () Bool)

(assert (= bs!1564842 (and d!1967203 d!1966599)))

(assert (=> bs!1564842 (= lambda!343254 lambda!343161)))

(declare-fun bs!1564843 () Bool)

(assert (= bs!1564843 (and d!1967203 b!6267930)))

(assert (=> bs!1564843 (not (= lambda!343254 lambda!343240))))

(declare-fun bs!1564844 () Bool)

(assert (= bs!1564844 (and d!1967203 d!1966533)))

(assert (=> bs!1564844 (= lambda!343254 lambda!343131)))

(declare-fun bs!1564845 () Bool)

(assert (= bs!1564845 (and d!1967203 d!1966529)))

(assert (=> bs!1564845 (= lambda!343254 lambda!343128)))

(declare-fun bs!1564846 () Bool)

(assert (= bs!1564846 (and d!1967203 d!1967123)))

(assert (=> bs!1564846 (= lambda!343254 lambda!343243)))

(declare-fun bs!1564847 () Bool)

(assert (= bs!1564847 (and d!1967203 d!1966525)))

(assert (=> bs!1564847 (= lambda!343254 lambda!343127)))

(declare-fun bs!1564848 () Bool)

(assert (= bs!1564848 (and d!1967203 d!1967179)))

(assert (=> bs!1564848 (= lambda!343254 lambda!343251)))

(declare-fun b!6268101 () Bool)

(declare-fun e!3812457 () Regex!16187)

(declare-fun e!3812461 () Regex!16187)

(assert (=> b!6268101 (= e!3812457 e!3812461)))

(declare-fun c!1135627 () Bool)

(assert (=> b!6268101 (= c!1135627 ((_ is Cons!64736) (t!378414 lt!2351096)))))

(declare-fun b!6268102 () Bool)

(assert (=> b!6268102 (= e!3812461 EmptyExpr!16187)))

(declare-fun b!6268103 () Bool)

(declare-fun e!3812458 () Bool)

(declare-fun lt!2351361 () Regex!16187)

(assert (=> b!6268103 (= e!3812458 (isEmptyExpr!1593 lt!2351361))))

(declare-fun e!3812460 () Bool)

(assert (=> d!1967203 e!3812460))

(declare-fun res!2585705 () Bool)

(assert (=> d!1967203 (=> (not res!2585705) (not e!3812460))))

(assert (=> d!1967203 (= res!2585705 (validRegex!7923 lt!2351361))))

(assert (=> d!1967203 (= lt!2351361 e!3812457)))

(declare-fun c!1135629 () Bool)

(declare-fun e!3812459 () Bool)

(assert (=> d!1967203 (= c!1135629 e!3812459)))

(declare-fun res!2585706 () Bool)

(assert (=> d!1967203 (=> (not res!2585706) (not e!3812459))))

(assert (=> d!1967203 (= res!2585706 ((_ is Cons!64736) (t!378414 lt!2351096)))))

(assert (=> d!1967203 (forall!15312 (t!378414 lt!2351096) lambda!343254)))

(assert (=> d!1967203 (= (generalisedConcat!1784 (t!378414 lt!2351096)) lt!2351361)))

(declare-fun b!6268104 () Bool)

(assert (=> b!6268104 (= e!3812459 (isEmpty!36766 (t!378414 (t!378414 lt!2351096))))))

(declare-fun b!6268105 () Bool)

(declare-fun e!3812462 () Bool)

(assert (=> b!6268105 (= e!3812458 e!3812462)))

(declare-fun c!1135626 () Bool)

(assert (=> b!6268105 (= c!1135626 (isEmpty!36766 (tail!11960 (t!378414 lt!2351096))))))

(declare-fun b!6268106 () Bool)

(assert (=> b!6268106 (= e!3812462 (isConcat!1116 lt!2351361))))

(declare-fun b!6268107 () Bool)

(assert (=> b!6268107 (= e!3812462 (= lt!2351361 (head!12875 (t!378414 lt!2351096))))))

(declare-fun b!6268108 () Bool)

(assert (=> b!6268108 (= e!3812457 (h!71184 (t!378414 lt!2351096)))))

(declare-fun b!6268109 () Bool)

(assert (=> b!6268109 (= e!3812460 e!3812458)))

(declare-fun c!1135628 () Bool)

(assert (=> b!6268109 (= c!1135628 (isEmpty!36766 (t!378414 lt!2351096)))))

(declare-fun b!6268110 () Bool)

(assert (=> b!6268110 (= e!3812461 (Concat!25032 (h!71184 (t!378414 lt!2351096)) (generalisedConcat!1784 (t!378414 (t!378414 lt!2351096)))))))

(assert (= (and d!1967203 res!2585706) b!6268104))

(assert (= (and d!1967203 c!1135629) b!6268108))

(assert (= (and d!1967203 (not c!1135629)) b!6268101))

(assert (= (and b!6268101 c!1135627) b!6268110))

(assert (= (and b!6268101 (not c!1135627)) b!6268102))

(assert (= (and d!1967203 res!2585705) b!6268109))

(assert (= (and b!6268109 c!1135628) b!6268103))

(assert (= (and b!6268109 (not c!1135628)) b!6268105))

(assert (= (and b!6268105 c!1135626) b!6268107))

(assert (= (and b!6268105 (not c!1135626)) b!6268106))

(declare-fun m!7090010 () Bool)

(assert (=> d!1967203 m!7090010))

(declare-fun m!7090012 () Bool)

(assert (=> d!1967203 m!7090012))

(declare-fun m!7090014 () Bool)

(assert (=> b!6268110 m!7090014))

(declare-fun m!7090016 () Bool)

(assert (=> b!6268106 m!7090016))

(declare-fun m!7090018 () Bool)

(assert (=> b!6268107 m!7090018))

(declare-fun m!7090020 () Bool)

(assert (=> b!6268103 m!7090020))

(declare-fun m!7090022 () Bool)

(assert (=> b!6268105 m!7090022))

(assert (=> b!6268105 m!7090022))

(declare-fun m!7090024 () Bool)

(assert (=> b!6268105 m!7090024))

(assert (=> b!6268109 m!7088568))

(declare-fun m!7090026 () Bool)

(assert (=> b!6268104 m!7090026))

(assert (=> b!6266708 d!1967203))

(declare-fun d!1967205 () Bool)

(assert (=> d!1967205 true))

(assert (=> d!1967205 true))

(declare-fun res!2585709 () Bool)

(assert (=> d!1967205 (= (choose!46492 lambda!343067) res!2585709)))

(assert (=> d!1966507 d!1967205))

(declare-fun d!1967207 () Bool)

(declare-fun res!2585710 () Bool)

(declare-fun e!3812463 () Bool)

(assert (=> d!1967207 (=> res!2585710 e!3812463)))

(assert (=> d!1967207 (= res!2585710 ((_ is Nil!64737) lt!2351237))))

(assert (=> d!1967207 (= (noDuplicate!2021 lt!2351237) e!3812463)))

(declare-fun b!6268111 () Bool)

(declare-fun e!3812464 () Bool)

(assert (=> b!6268111 (= e!3812463 e!3812464)))

(declare-fun res!2585711 () Bool)

(assert (=> b!6268111 (=> (not res!2585711) (not e!3812464))))

(assert (=> b!6268111 (= res!2585711 (not (contains!20119 (t!378415 lt!2351237) (h!71185 lt!2351237))))))

(declare-fun b!6268112 () Bool)

(assert (=> b!6268112 (= e!3812464 (noDuplicate!2021 (t!378415 lt!2351237)))))

(assert (= (and d!1967207 (not res!2585710)) b!6268111))

(assert (= (and b!6268111 res!2585711) b!6268112))

(declare-fun m!7090028 () Bool)

(assert (=> b!6268111 m!7090028))

(declare-fun m!7090030 () Bool)

(assert (=> b!6268112 m!7090030))

(assert (=> d!1966559 d!1967207))

(declare-fun d!1967209 () Bool)

(declare-fun e!3812466 () Bool)

(assert (=> d!1967209 e!3812466))

(declare-fun res!2585713 () Bool)

(assert (=> d!1967209 (=> (not res!2585713) (not e!3812466))))

(declare-fun res!2585712 () List!64861)

(assert (=> d!1967209 (= res!2585713 (noDuplicate!2021 res!2585712))))

(declare-fun e!3812467 () Bool)

(assert (=> d!1967209 e!3812467))

(assert (=> d!1967209 (= (choose!46497 z!1189) res!2585712)))

(declare-fun b!6268114 () Bool)

(declare-fun e!3812465 () Bool)

(declare-fun tp!1748374 () Bool)

(assert (=> b!6268114 (= e!3812465 tp!1748374)))

(declare-fun tp!1748373 () Bool)

(declare-fun b!6268113 () Bool)

(assert (=> b!6268113 (= e!3812467 (and (inv!83714 (h!71185 res!2585712)) e!3812465 tp!1748373))))

(declare-fun b!6268115 () Bool)

(assert (=> b!6268115 (= e!3812466 (= (content!12156 res!2585712) z!1189))))

(assert (= b!6268113 b!6268114))

(assert (= (and d!1967209 ((_ is Cons!64737) res!2585712)) b!6268113))

(assert (= (and d!1967209 res!2585713) b!6268115))

(declare-fun m!7090032 () Bool)

(assert (=> d!1967209 m!7090032))

(declare-fun m!7090034 () Bool)

(assert (=> b!6268113 m!7090034))

(declare-fun m!7090036 () Bool)

(assert (=> b!6268115 m!7090036))

(assert (=> d!1966559 d!1967209))

(declare-fun bs!1564849 () Bool)

(declare-fun d!1967211 () Bool)

(assert (= bs!1564849 (and d!1967211 b!6267928)))

(declare-fun lambda!343255 () Int)

(assert (=> bs!1564849 (not (= lambda!343255 lambda!343239))))

(declare-fun bs!1564850 () Bool)

(assert (= bs!1564850 (and d!1967211 d!1966567)))

(assert (=> bs!1564850 (= lambda!343255 lambda!343149)))

(declare-fun bs!1564851 () Bool)

(assert (= bs!1564851 (and d!1967211 d!1967175)))

(assert (=> bs!1564851 (= lambda!343255 lambda!343249)))

(declare-fun bs!1564852 () Bool)

(assert (= bs!1564852 (and d!1967211 d!1967177)))

(assert (=> bs!1564852 (= lambda!343255 lambda!343250)))

(declare-fun bs!1564853 () Bool)

(assert (= bs!1564853 (and d!1967211 d!1966543)))

(assert (=> bs!1564853 (= lambda!343255 lambda!343144)))

(declare-fun bs!1564854 () Bool)

(assert (= bs!1564854 (and d!1967211 d!1966597)))

(assert (=> bs!1564854 (= lambda!343255 lambda!343158)))

(declare-fun bs!1564855 () Bool)

(assert (= bs!1564855 (and d!1967211 d!1966599)))

(assert (=> bs!1564855 (= lambda!343255 lambda!343161)))

(declare-fun bs!1564856 () Bool)

(assert (= bs!1564856 (and d!1967211 b!6267930)))

(assert (=> bs!1564856 (not (= lambda!343255 lambda!343240))))

(declare-fun bs!1564857 () Bool)

(assert (= bs!1564857 (and d!1967211 d!1966533)))

(assert (=> bs!1564857 (= lambda!343255 lambda!343131)))

(declare-fun bs!1564858 () Bool)

(assert (= bs!1564858 (and d!1967211 d!1966529)))

(assert (=> bs!1564858 (= lambda!343255 lambda!343128)))

(declare-fun bs!1564859 () Bool)

(assert (= bs!1564859 (and d!1967211 d!1967123)))

(assert (=> bs!1564859 (= lambda!343255 lambda!343243)))

(declare-fun bs!1564860 () Bool)

(assert (= bs!1564860 (and d!1967211 d!1967203)))

(assert (=> bs!1564860 (= lambda!343255 lambda!343254)))

(declare-fun bs!1564861 () Bool)

(assert (= bs!1564861 (and d!1967211 d!1966525)))

(assert (=> bs!1564861 (= lambda!343255 lambda!343127)))

(declare-fun bs!1564862 () Bool)

(assert (= bs!1564862 (and d!1967211 d!1967179)))

(assert (=> bs!1564862 (= lambda!343255 lambda!343251)))

(declare-fun b!6268116 () Bool)

(declare-fun e!3812468 () Regex!16187)

(declare-fun e!3812472 () Regex!16187)

(assert (=> b!6268116 (= e!3812468 e!3812472)))

(declare-fun c!1135631 () Bool)

(assert (=> b!6268116 (= c!1135631 ((_ is Cons!64736) (t!378414 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6268117 () Bool)

(assert (=> b!6268117 (= e!3812472 EmptyExpr!16187)))

(declare-fun b!6268118 () Bool)

(declare-fun e!3812469 () Bool)

(declare-fun lt!2351362 () Regex!16187)

(assert (=> b!6268118 (= e!3812469 (isEmptyExpr!1593 lt!2351362))))

(declare-fun e!3812471 () Bool)

(assert (=> d!1967211 e!3812471))

(declare-fun res!2585714 () Bool)

(assert (=> d!1967211 (=> (not res!2585714) (not e!3812471))))

(assert (=> d!1967211 (= res!2585714 (validRegex!7923 lt!2351362))))

(assert (=> d!1967211 (= lt!2351362 e!3812468)))

(declare-fun c!1135633 () Bool)

(declare-fun e!3812470 () Bool)

(assert (=> d!1967211 (= c!1135633 e!3812470)))

(declare-fun res!2585715 () Bool)

(assert (=> d!1967211 (=> (not res!2585715) (not e!3812470))))

(assert (=> d!1967211 (= res!2585715 ((_ is Cons!64736) (t!378414 (exprs!6071 (h!71185 zl!343)))))))

(assert (=> d!1967211 (forall!15312 (t!378414 (exprs!6071 (h!71185 zl!343))) lambda!343255)))

(assert (=> d!1967211 (= (generalisedConcat!1784 (t!378414 (exprs!6071 (h!71185 zl!343)))) lt!2351362)))

(declare-fun b!6268119 () Bool)

(assert (=> b!6268119 (= e!3812470 (isEmpty!36766 (t!378414 (t!378414 (exprs!6071 (h!71185 zl!343))))))))

(declare-fun b!6268120 () Bool)

(declare-fun e!3812473 () Bool)

(assert (=> b!6268120 (= e!3812469 e!3812473)))

(declare-fun c!1135630 () Bool)

(assert (=> b!6268120 (= c!1135630 (isEmpty!36766 (tail!11960 (t!378414 (exprs!6071 (h!71185 zl!343))))))))

(declare-fun b!6268121 () Bool)

(assert (=> b!6268121 (= e!3812473 (isConcat!1116 lt!2351362))))

(declare-fun b!6268122 () Bool)

(assert (=> b!6268122 (= e!3812473 (= lt!2351362 (head!12875 (t!378414 (exprs!6071 (h!71185 zl!343))))))))

(declare-fun b!6268123 () Bool)

(assert (=> b!6268123 (= e!3812468 (h!71184 (t!378414 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6268124 () Bool)

(assert (=> b!6268124 (= e!3812471 e!3812469)))

(declare-fun c!1135632 () Bool)

(assert (=> b!6268124 (= c!1135632 (isEmpty!36766 (t!378414 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6268125 () Bool)

(assert (=> b!6268125 (= e!3812472 (Concat!25032 (h!71184 (t!378414 (exprs!6071 (h!71185 zl!343)))) (generalisedConcat!1784 (t!378414 (t!378414 (exprs!6071 (h!71185 zl!343)))))))))

(assert (= (and d!1967211 res!2585715) b!6268119))

(assert (= (and d!1967211 c!1135633) b!6268123))

(assert (= (and d!1967211 (not c!1135633)) b!6268116))

(assert (= (and b!6268116 c!1135631) b!6268125))

(assert (= (and b!6268116 (not c!1135631)) b!6268117))

(assert (= (and d!1967211 res!2585714) b!6268124))

(assert (= (and b!6268124 c!1135632) b!6268118))

(assert (= (and b!6268124 (not c!1135632)) b!6268120))

(assert (= (and b!6268120 c!1135630) b!6268122))

(assert (= (and b!6268120 (not c!1135630)) b!6268121))

(declare-fun m!7090038 () Bool)

(assert (=> d!1967211 m!7090038))

(declare-fun m!7090040 () Bool)

(assert (=> d!1967211 m!7090040))

(declare-fun m!7090042 () Bool)

(assert (=> b!6268125 m!7090042))

(declare-fun m!7090044 () Bool)

(assert (=> b!6268121 m!7090044))

(declare-fun m!7090046 () Bool)

(assert (=> b!6268122 m!7090046))

(declare-fun m!7090048 () Bool)

(assert (=> b!6268118 m!7090048))

(declare-fun m!7090050 () Bool)

(assert (=> b!6268120 m!7090050))

(assert (=> b!6268120 m!7090050))

(declare-fun m!7090052 () Bool)

(assert (=> b!6268120 m!7090052))

(assert (=> b!6268124 m!7088054))

(declare-fun m!7090054 () Bool)

(assert (=> b!6268119 m!7090054))

(assert (=> b!6266793 d!1967211))

(declare-fun d!1967213 () Bool)

(declare-fun lt!2351363 () Int)

(assert (=> d!1967213 (>= lt!2351363 0)))

(declare-fun e!3812474 () Int)

(assert (=> d!1967213 (= lt!2351363 e!3812474)))

(declare-fun c!1135634 () Bool)

(assert (=> d!1967213 (= c!1135634 ((_ is Cons!64736) (exprs!6071 (h!71185 lt!2351106))))))

(assert (=> d!1967213 (= (contextDepthTotal!310 (h!71185 lt!2351106)) lt!2351363)))

(declare-fun b!6268126 () Bool)

(assert (=> b!6268126 (= e!3812474 (+ (regexDepthTotal!163 (h!71184 (exprs!6071 (h!71185 lt!2351106)))) (contextDepthTotal!310 (Context!11143 (t!378414 (exprs!6071 (h!71185 lt!2351106)))))))))

(declare-fun b!6268127 () Bool)

(assert (=> b!6268127 (= e!3812474 1)))

(assert (= (and d!1967213 c!1135634) b!6268126))

(assert (= (and d!1967213 (not c!1135634)) b!6268127))

(declare-fun m!7090056 () Bool)

(assert (=> b!6268126 m!7090056))

(declare-fun m!7090058 () Bool)

(assert (=> b!6268126 m!7090058))

(assert (=> b!6266953 d!1967213))

(declare-fun d!1967215 () Bool)

(declare-fun lt!2351364 () Int)

(assert (=> d!1967215 (>= lt!2351364 0)))

(declare-fun e!3812475 () Int)

(assert (=> d!1967215 (= lt!2351364 e!3812475)))

(declare-fun c!1135635 () Bool)

(assert (=> d!1967215 (= c!1135635 ((_ is Cons!64737) (t!378415 lt!2351106)))))

(assert (=> d!1967215 (= (zipperDepthTotal!340 (t!378415 lt!2351106)) lt!2351364)))

(declare-fun b!6268128 () Bool)

(assert (=> b!6268128 (= e!3812475 (+ (contextDepthTotal!310 (h!71185 (t!378415 lt!2351106))) (zipperDepthTotal!340 (t!378415 (t!378415 lt!2351106)))))))

(declare-fun b!6268129 () Bool)

(assert (=> b!6268129 (= e!3812475 0)))

(assert (= (and d!1967215 c!1135635) b!6268128))

(assert (= (and d!1967215 (not c!1135635)) b!6268129))

(declare-fun m!7090060 () Bool)

(assert (=> b!6268128 m!7090060))

(declare-fun m!7090062 () Bool)

(assert (=> b!6268128 m!7090062))

(assert (=> b!6266953 d!1967215))

(declare-fun d!1967217 () Bool)

(declare-fun e!3812480 () Bool)

(assert (=> d!1967217 e!3812480))

(declare-fun res!2585721 () Bool)

(assert (=> d!1967217 (=> (not res!2585721) (not e!3812480))))

(declare-fun lt!2351367 () List!64862)

(declare-fun content!12158 (List!64862) (InoxSet C!32644))

(assert (=> d!1967217 (= res!2585721 (= (content!12158 lt!2351367) ((_ map or) (content!12158 (_1!36469 (get!22370 lt!2351198))) (content!12158 (_2!36469 (get!22370 lt!2351198))))))))

(declare-fun e!3812481 () List!64862)

(assert (=> d!1967217 (= lt!2351367 e!3812481)))

(declare-fun c!1135638 () Bool)

(assert (=> d!1967217 (= c!1135638 ((_ is Nil!64738) (_1!36469 (get!22370 lt!2351198))))))

(assert (=> d!1967217 (= (++!14261 (_1!36469 (get!22370 lt!2351198)) (_2!36469 (get!22370 lt!2351198))) lt!2351367)))

(declare-fun b!6268141 () Bool)

(assert (=> b!6268141 (= e!3812480 (or (not (= (_2!36469 (get!22370 lt!2351198)) Nil!64738)) (= lt!2351367 (_1!36469 (get!22370 lt!2351198)))))))

(declare-fun b!6268140 () Bool)

(declare-fun res!2585720 () Bool)

(assert (=> b!6268140 (=> (not res!2585720) (not e!3812480))))

(declare-fun size!40308 (List!64862) Int)

(assert (=> b!6268140 (= res!2585720 (= (size!40308 lt!2351367) (+ (size!40308 (_1!36469 (get!22370 lt!2351198))) (size!40308 (_2!36469 (get!22370 lt!2351198))))))))

(declare-fun b!6268139 () Bool)

(assert (=> b!6268139 (= e!3812481 (Cons!64738 (h!71186 (_1!36469 (get!22370 lt!2351198))) (++!14261 (t!378416 (_1!36469 (get!22370 lt!2351198))) (_2!36469 (get!22370 lt!2351198)))))))

(declare-fun b!6268138 () Bool)

(assert (=> b!6268138 (= e!3812481 (_2!36469 (get!22370 lt!2351198)))))

(assert (= (and d!1967217 c!1135638) b!6268138))

(assert (= (and d!1967217 (not c!1135638)) b!6268139))

(assert (= (and d!1967217 res!2585721) b!6268140))

(assert (= (and b!6268140 res!2585720) b!6268141))

(declare-fun m!7090064 () Bool)

(assert (=> d!1967217 m!7090064))

(declare-fun m!7090066 () Bool)

(assert (=> d!1967217 m!7090066))

(declare-fun m!7090068 () Bool)

(assert (=> d!1967217 m!7090068))

(declare-fun m!7090070 () Bool)

(assert (=> b!6268140 m!7090070))

(declare-fun m!7090072 () Bool)

(assert (=> b!6268140 m!7090072))

(declare-fun m!7090074 () Bool)

(assert (=> b!6268140 m!7090074))

(declare-fun m!7090076 () Bool)

(assert (=> b!6268139 m!7090076))

(assert (=> b!6266633 d!1967217))

(assert (=> b!6266633 d!1967047))

(assert (=> b!6266753 d!1967041))

(assert (=> b!6266753 d!1967043))

(declare-fun bs!1564863 () Bool)

(declare-fun d!1967219 () Bool)

(assert (= bs!1564863 (and d!1967219 d!1967183)))

(declare-fun lambda!343256 () Int)

(assert (=> bs!1564863 (= lambda!343256 lambda!343253)))

(declare-fun bs!1564864 () Bool)

(assert (= bs!1564864 (and d!1967219 d!1967147)))

(assert (=> bs!1564864 (= lambda!343256 lambda!343246)))

(declare-fun bs!1564865 () Bool)

(assert (= bs!1564865 (and d!1967219 b!6266772)))

(assert (=> bs!1564865 (not (= lambda!343256 lambda!343142))))

(declare-fun bs!1564866 () Bool)

(assert (= bs!1564866 (and d!1967219 b!6267918)))

(assert (=> bs!1564866 (not (= lambda!343256 lambda!343233))))

(declare-fun bs!1564867 () Bool)

(assert (= bs!1564867 (and d!1967219 d!1967161)))

(assert (=> bs!1564867 (= lambda!343256 lambda!343247)))

(declare-fun bs!1564868 () Bool)

(assert (= bs!1564868 (and d!1967219 b!6266769)))

(assert (=> bs!1564868 (not (= lambda!343256 lambda!343140))))

(declare-fun bs!1564869 () Bool)

(assert (= bs!1564869 (and d!1967219 d!1967091)))

(assert (=> bs!1564869 (= lambda!343256 lambda!343241)))

(declare-fun bs!1564870 () Bool)

(assert (= bs!1564870 (and d!1967219 d!1967035)))

(assert (=> bs!1564870 (= lambda!343256 lambda!343228)))

(declare-fun bs!1564871 () Bool)

(assert (= bs!1564871 (and d!1967219 d!1967181)))

(assert (=> bs!1564871 (= lambda!343256 lambda!343252)))

(declare-fun bs!1564872 () Bool)

(assert (= bs!1564872 (and d!1967219 b!6266767)))

(assert (=> bs!1564872 (not (= lambda!343256 lambda!343139))))

(declare-fun bs!1564873 () Bool)

(assert (= bs!1564873 (and d!1967219 b!6266774)))

(assert (=> bs!1564873 (not (= lambda!343256 lambda!343143))))

(declare-fun bs!1564874 () Bool)

(assert (= bs!1564874 (and d!1967219 b!6267920)))

(assert (=> bs!1564874 (not (= lambda!343256 lambda!343234))))

(declare-fun bs!1564875 () Bool)

(assert (= bs!1564875 (and d!1967219 d!1967077)))

(assert (=> bs!1564875 (not (= lambda!343256 lambda!343231))))

(assert (=> d!1967219 (= (nullableZipper!1957 lt!2351099) (exists!2521 lt!2351099 lambda!343256))))

(declare-fun bs!1564876 () Bool)

(assert (= bs!1564876 d!1967219))

(declare-fun m!7090078 () Bool)

(assert (=> bs!1564876 m!7090078))

(assert (=> b!6266959 d!1967219))

(declare-fun bs!1564877 () Bool)

(declare-fun d!1967221 () Bool)

(assert (= bs!1564877 (and d!1967221 d!1967183)))

(declare-fun lambda!343257 () Int)

(assert (=> bs!1564877 (= lambda!343257 lambda!343253)))

(declare-fun bs!1564878 () Bool)

(assert (= bs!1564878 (and d!1967221 d!1967147)))

(assert (=> bs!1564878 (= lambda!343257 lambda!343246)))

(declare-fun bs!1564879 () Bool)

(assert (= bs!1564879 (and d!1967221 b!6266772)))

(assert (=> bs!1564879 (not (= lambda!343257 lambda!343142))))

(declare-fun bs!1564880 () Bool)

(assert (= bs!1564880 (and d!1967221 b!6267918)))

(assert (=> bs!1564880 (not (= lambda!343257 lambda!343233))))

(declare-fun bs!1564881 () Bool)

(assert (= bs!1564881 (and d!1967221 d!1967161)))

(assert (=> bs!1564881 (= lambda!343257 lambda!343247)))

(declare-fun bs!1564882 () Bool)

(assert (= bs!1564882 (and d!1967221 b!6266769)))

(assert (=> bs!1564882 (not (= lambda!343257 lambda!343140))))

(declare-fun bs!1564883 () Bool)

(assert (= bs!1564883 (and d!1967221 d!1967091)))

(assert (=> bs!1564883 (= lambda!343257 lambda!343241)))

(declare-fun bs!1564884 () Bool)

(assert (= bs!1564884 (and d!1967221 d!1967035)))

(assert (=> bs!1564884 (= lambda!343257 lambda!343228)))

(declare-fun bs!1564885 () Bool)

(assert (= bs!1564885 (and d!1967221 d!1967181)))

(assert (=> bs!1564885 (= lambda!343257 lambda!343252)))

(declare-fun bs!1564886 () Bool)

(assert (= bs!1564886 (and d!1967221 b!6266767)))

(assert (=> bs!1564886 (not (= lambda!343257 lambda!343139))))

(declare-fun bs!1564887 () Bool)

(assert (= bs!1564887 (and d!1967221 b!6266774)))

(assert (=> bs!1564887 (not (= lambda!343257 lambda!343143))))

(declare-fun bs!1564888 () Bool)

(assert (= bs!1564888 (and d!1967221 b!6267920)))

(assert (=> bs!1564888 (not (= lambda!343257 lambda!343234))))

(declare-fun bs!1564889 () Bool)

(assert (= bs!1564889 (and d!1967221 d!1967219)))

(assert (=> bs!1564889 (= lambda!343257 lambda!343256)))

(declare-fun bs!1564890 () Bool)

(assert (= bs!1564890 (and d!1967221 d!1967077)))

(assert (=> bs!1564890 (not (= lambda!343257 lambda!343231))))

(assert (=> d!1967221 (= (nullableZipper!1957 ((_ map or) lt!2351090 lt!2351084)) (exists!2521 ((_ map or) lt!2351090 lt!2351084) lambda!343257))))

(declare-fun bs!1564891 () Bool)

(assert (= bs!1564891 d!1967221))

(declare-fun m!7090080 () Bool)

(assert (=> bs!1564891 m!7090080))

(assert (=> b!6266902 d!1967221))

(declare-fun d!1967223 () Bool)

(assert (=> d!1967223 (= (isConcat!1116 lt!2351209) ((_ is Concat!25032) lt!2351209))))

(assert (=> b!6266704 d!1967223))

(assert (=> d!1966551 d!1966555))

(declare-fun d!1967225 () Bool)

(assert (=> d!1967225 (= (flatMap!1692 lt!2351077 lambda!343069) (dynLambda!25589 lambda!343069 lt!2351107))))

(assert (=> d!1967225 true))

(declare-fun _$13!3372 () Unit!158079)

(assert (=> d!1967225 (= (choose!46490 lt!2351077 lt!2351107 lambda!343069) _$13!3372)))

(declare-fun b_lambda!238663 () Bool)

(assert (=> (not b_lambda!238663) (not d!1967225)))

(declare-fun bs!1564892 () Bool)

(assert (= bs!1564892 d!1967225))

(assert (=> bs!1564892 m!7088014))

(assert (=> bs!1564892 m!7088670))

(assert (=> d!1966551 d!1967225))

(declare-fun d!1967227 () Bool)

(assert (=> d!1967227 (= (nullable!6180 (h!71184 (exprs!6071 lt!2351107))) (nullableFct!2132 (h!71184 (exprs!6071 lt!2351107))))))

(declare-fun bs!1564893 () Bool)

(assert (= bs!1564893 d!1967227))

(declare-fun m!7090082 () Bool)

(assert (=> bs!1564893 m!7090082))

(assert (=> b!6266820 d!1967227))

(declare-fun b!6268142 () Bool)

(declare-fun e!3812487 () Bool)

(declare-fun lt!2351368 () Bool)

(declare-fun call!529934 () Bool)

(assert (=> b!6268142 (= e!3812487 (= lt!2351368 call!529934))))

(declare-fun b!6268143 () Bool)

(declare-fun e!3812483 () Bool)

(assert (=> b!6268143 (= e!3812483 (not lt!2351368))))

(declare-fun b!6268144 () Bool)

(declare-fun res!2585727 () Bool)

(declare-fun e!3812485 () Bool)

(assert (=> b!6268144 (=> res!2585727 e!3812485)))

(assert (=> b!6268144 (= res!2585727 (not ((_ is ElementMatch!16187) (derivativeStep!4896 r!7292 (head!12874 s!2326)))))))

(assert (=> b!6268144 (= e!3812483 e!3812485)))

(declare-fun b!6268145 () Bool)

(declare-fun e!3812484 () Bool)

(assert (=> b!6268145 (= e!3812484 (= (head!12874 (tail!11959 s!2326)) (c!1135024 (derivativeStep!4896 r!7292 (head!12874 s!2326)))))))

(declare-fun b!6268146 () Bool)

(declare-fun res!2585722 () Bool)

(assert (=> b!6268146 (=> (not res!2585722) (not e!3812484))))

(assert (=> b!6268146 (= res!2585722 (not call!529934))))

(declare-fun b!6268148 () Bool)

(declare-fun res!2585729 () Bool)

(assert (=> b!6268148 (=> (not res!2585729) (not e!3812484))))

(assert (=> b!6268148 (= res!2585729 (isEmpty!36771 (tail!11959 (tail!11959 s!2326))))))

(declare-fun b!6268149 () Bool)

(declare-fun e!3812482 () Bool)

(declare-fun e!3812486 () Bool)

(assert (=> b!6268149 (= e!3812482 e!3812486)))

(declare-fun res!2585728 () Bool)

(assert (=> b!6268149 (=> res!2585728 e!3812486)))

(assert (=> b!6268149 (= res!2585728 call!529934)))

(declare-fun b!6268150 () Bool)

(declare-fun e!3812488 () Bool)

(assert (=> b!6268150 (= e!3812488 (matchR!8370 (derivativeStep!4896 (derivativeStep!4896 r!7292 (head!12874 s!2326)) (head!12874 (tail!11959 s!2326))) (tail!11959 (tail!11959 s!2326))))))

(declare-fun b!6268151 () Bool)

(assert (=> b!6268151 (= e!3812486 (not (= (head!12874 (tail!11959 s!2326)) (c!1135024 (derivativeStep!4896 r!7292 (head!12874 s!2326))))))))

(declare-fun b!6268152 () Bool)

(declare-fun res!2585725 () Bool)

(assert (=> b!6268152 (=> res!2585725 e!3812485)))

(assert (=> b!6268152 (= res!2585725 e!3812484)))

(declare-fun res!2585723 () Bool)

(assert (=> b!6268152 (=> (not res!2585723) (not e!3812484))))

(assert (=> b!6268152 (= res!2585723 lt!2351368)))

(declare-fun b!6268153 () Bool)

(declare-fun res!2585726 () Bool)

(assert (=> b!6268153 (=> res!2585726 e!3812486)))

(assert (=> b!6268153 (= res!2585726 (not (isEmpty!36771 (tail!11959 (tail!11959 s!2326)))))))

(declare-fun b!6268154 () Bool)

(assert (=> b!6268154 (= e!3812488 (nullable!6180 (derivativeStep!4896 r!7292 (head!12874 s!2326))))))

(declare-fun bm!529929 () Bool)

(assert (=> bm!529929 (= call!529934 (isEmpty!36771 (tail!11959 s!2326)))))

(declare-fun b!6268155 () Bool)

(assert (=> b!6268155 (= e!3812485 e!3812482)))

(declare-fun res!2585724 () Bool)

(assert (=> b!6268155 (=> (not res!2585724) (not e!3812482))))

(assert (=> b!6268155 (= res!2585724 (not lt!2351368))))

(declare-fun d!1967229 () Bool)

(assert (=> d!1967229 e!3812487))

(declare-fun c!1135641 () Bool)

(assert (=> d!1967229 (= c!1135641 ((_ is EmptyExpr!16187) (derivativeStep!4896 r!7292 (head!12874 s!2326))))))

(assert (=> d!1967229 (= lt!2351368 e!3812488)))

(declare-fun c!1135640 () Bool)

(assert (=> d!1967229 (= c!1135640 (isEmpty!36771 (tail!11959 s!2326)))))

(assert (=> d!1967229 (validRegex!7923 (derivativeStep!4896 r!7292 (head!12874 s!2326)))))

(assert (=> d!1967229 (= (matchR!8370 (derivativeStep!4896 r!7292 (head!12874 s!2326)) (tail!11959 s!2326)) lt!2351368)))

(declare-fun b!6268147 () Bool)

(assert (=> b!6268147 (= e!3812487 e!3812483)))

(declare-fun c!1135639 () Bool)

(assert (=> b!6268147 (= c!1135639 ((_ is EmptyLang!16187) (derivativeStep!4896 r!7292 (head!12874 s!2326))))))

(assert (= (and d!1967229 c!1135640) b!6268154))

(assert (= (and d!1967229 (not c!1135640)) b!6268150))

(assert (= (and d!1967229 c!1135641) b!6268142))

(assert (= (and d!1967229 (not c!1135641)) b!6268147))

(assert (= (and b!6268147 c!1135639) b!6268143))

(assert (= (and b!6268147 (not c!1135639)) b!6268144))

(assert (= (and b!6268144 (not res!2585727)) b!6268152))

(assert (= (and b!6268152 res!2585723) b!6268146))

(assert (= (and b!6268146 res!2585722) b!6268148))

(assert (= (and b!6268148 res!2585729) b!6268145))

(assert (= (and b!6268152 (not res!2585725)) b!6268155))

(assert (= (and b!6268155 res!2585724) b!6268149))

(assert (= (and b!6268149 (not res!2585728)) b!6268153))

(assert (= (and b!6268153 (not res!2585726)) b!6268151))

(assert (= (or b!6268142 b!6268146 b!6268149) bm!529929))

(assert (=> d!1967229 m!7088540))

(assert (=> d!1967229 m!7088594))

(assert (=> d!1967229 m!7088728))

(declare-fun m!7090084 () Bool)

(assert (=> d!1967229 m!7090084))

(assert (=> b!6268153 m!7088540))

(assert (=> b!6268153 m!7089866))

(assert (=> b!6268153 m!7089866))

(declare-fun m!7090086 () Bool)

(assert (=> b!6268153 m!7090086))

(assert (=> b!6268148 m!7088540))

(assert (=> b!6268148 m!7089866))

(assert (=> b!6268148 m!7089866))

(assert (=> b!6268148 m!7090086))

(assert (=> b!6268154 m!7088728))

(declare-fun m!7090088 () Bool)

(assert (=> b!6268154 m!7090088))

(assert (=> bm!529929 m!7088540))

(assert (=> bm!529929 m!7088594))

(assert (=> b!6268145 m!7088540))

(assert (=> b!6268145 m!7089862))

(assert (=> b!6268150 m!7088540))

(assert (=> b!6268150 m!7089862))

(assert (=> b!6268150 m!7088728))

(assert (=> b!6268150 m!7089862))

(declare-fun m!7090090 () Bool)

(assert (=> b!6268150 m!7090090))

(assert (=> b!6268150 m!7088540))

(assert (=> b!6268150 m!7089866))

(assert (=> b!6268150 m!7090090))

(assert (=> b!6268150 m!7089866))

(declare-fun m!7090092 () Bool)

(assert (=> b!6268150 m!7090092))

(assert (=> b!6268151 m!7088540))

(assert (=> b!6268151 m!7089862))

(assert (=> b!6266886 d!1967229))

(declare-fun call!529943 () Regex!16187)

(declare-fun call!529946 () Regex!16187)

(declare-fun e!3812503 () Regex!16187)

(declare-fun b!6268176 () Bool)

(assert (=> b!6268176 (= e!3812503 (Union!16187 (Concat!25032 call!529946 (regTwo!32886 r!7292)) call!529943))))

(declare-fun b!6268177 () Bool)

(declare-fun e!3812499 () Regex!16187)

(assert (=> b!6268177 (= e!3812499 EmptyLang!16187)))

(declare-fun b!6268178 () Bool)

(declare-fun e!3812500 () Regex!16187)

(declare-fun call!529944 () Regex!16187)

(assert (=> b!6268178 (= e!3812500 (Union!16187 call!529944 call!529946))))

(declare-fun b!6268179 () Bool)

(declare-fun c!1135652 () Bool)

(assert (=> b!6268179 (= c!1135652 (nullable!6180 (regOne!32886 r!7292)))))

(declare-fun e!3812502 () Regex!16187)

(assert (=> b!6268179 (= e!3812502 e!3812503)))

(declare-fun b!6268180 () Bool)

(declare-fun call!529945 () Regex!16187)

(assert (=> b!6268180 (= e!3812502 (Concat!25032 call!529945 r!7292))))

(declare-fun b!6268181 () Bool)

(declare-fun e!3812501 () Regex!16187)

(assert (=> b!6268181 (= e!3812501 (ite (= (head!12874 s!2326) (c!1135024 r!7292)) EmptyExpr!16187 EmptyLang!16187))))

(declare-fun d!1967231 () Bool)

(declare-fun lt!2351371 () Regex!16187)

(assert (=> d!1967231 (validRegex!7923 lt!2351371)))

(assert (=> d!1967231 (= lt!2351371 e!3812499)))

(declare-fun c!1135655 () Bool)

(assert (=> d!1967231 (= c!1135655 (or ((_ is EmptyExpr!16187) r!7292) ((_ is EmptyLang!16187) r!7292)))))

(assert (=> d!1967231 (validRegex!7923 r!7292)))

(assert (=> d!1967231 (= (derivativeStep!4896 r!7292 (head!12874 s!2326)) lt!2351371)))

(declare-fun b!6268182 () Bool)

(assert (=> b!6268182 (= e!3812503 (Union!16187 (Concat!25032 call!529943 (regTwo!32886 r!7292)) EmptyLang!16187))))

(declare-fun b!6268183 () Bool)

(assert (=> b!6268183 (= e!3812500 e!3812502)))

(declare-fun c!1135653 () Bool)

(assert (=> b!6268183 (= c!1135653 ((_ is Star!16187) r!7292))))

(declare-fun bm!529938 () Bool)

(assert (=> bm!529938 (= call!529943 call!529945)))

(declare-fun bm!529939 () Bool)

(assert (=> bm!529939 (= call!529945 call!529944)))

(declare-fun b!6268184 () Bool)

(declare-fun c!1135654 () Bool)

(assert (=> b!6268184 (= c!1135654 ((_ is Union!16187) r!7292))))

(assert (=> b!6268184 (= e!3812501 e!3812500)))

(declare-fun bm!529940 () Bool)

(assert (=> bm!529940 (= call!529946 (derivativeStep!4896 (ite c!1135654 (regTwo!32887 r!7292) (regOne!32886 r!7292)) (head!12874 s!2326)))))

(declare-fun bm!529941 () Bool)

(assert (=> bm!529941 (= call!529944 (derivativeStep!4896 (ite c!1135654 (regOne!32887 r!7292) (ite c!1135653 (reg!16516 r!7292) (ite c!1135652 (regTwo!32886 r!7292) (regOne!32886 r!7292)))) (head!12874 s!2326)))))

(declare-fun b!6268185 () Bool)

(assert (=> b!6268185 (= e!3812499 e!3812501)))

(declare-fun c!1135656 () Bool)

(assert (=> b!6268185 (= c!1135656 ((_ is ElementMatch!16187) r!7292))))

(assert (= (and d!1967231 c!1135655) b!6268177))

(assert (= (and d!1967231 (not c!1135655)) b!6268185))

(assert (= (and b!6268185 c!1135656) b!6268181))

(assert (= (and b!6268185 (not c!1135656)) b!6268184))

(assert (= (and b!6268184 c!1135654) b!6268178))

(assert (= (and b!6268184 (not c!1135654)) b!6268183))

(assert (= (and b!6268183 c!1135653) b!6268180))

(assert (= (and b!6268183 (not c!1135653)) b!6268179))

(assert (= (and b!6268179 c!1135652) b!6268176))

(assert (= (and b!6268179 (not c!1135652)) b!6268182))

(assert (= (or b!6268176 b!6268182) bm!529938))

(assert (= (or b!6268180 bm!529938) bm!529939))

(assert (= (or b!6268178 b!6268176) bm!529940))

(assert (= (or b!6268178 bm!529939) bm!529941))

(assert (=> b!6268179 m!7089710))

(declare-fun m!7090094 () Bool)

(assert (=> d!1967231 m!7090094))

(assert (=> d!1967231 m!7087972))

(assert (=> bm!529940 m!7088536))

(declare-fun m!7090096 () Bool)

(assert (=> bm!529940 m!7090096))

(assert (=> bm!529941 m!7088536))

(declare-fun m!7090098 () Bool)

(assert (=> bm!529941 m!7090098))

(assert (=> b!6266886 d!1967231))

(assert (=> b!6266886 d!1967109))

(assert (=> b!6266886 d!1967043))

(declare-fun d!1967233 () Bool)

(declare-fun c!1135657 () Bool)

(assert (=> d!1967233 (= c!1135657 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812504 () Bool)

(assert (=> d!1967233 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351097 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812504)))

(declare-fun b!6268186 () Bool)

(assert (=> b!6268186 (= e!3812504 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351097 (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6268187 () Bool)

(assert (=> b!6268187 (= e!3812504 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351097 (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967233 c!1135657) b!6268186))

(assert (= (and d!1967233 (not c!1135657)) b!6268187))

(assert (=> d!1967233 m!7088704))

(assert (=> d!1967233 m!7089810))

(assert (=> b!6268186 m!7088742))

(declare-fun m!7090100 () Bool)

(assert (=> b!6268186 m!7090100))

(assert (=> b!6268187 m!7088704))

(assert (=> b!6268187 m!7089814))

(assert (=> b!6268187 m!7088742))

(assert (=> b!6268187 m!7089814))

(declare-fun m!7090102 () Bool)

(assert (=> b!6268187 m!7090102))

(assert (=> b!6268187 m!7088704))

(assert (=> b!6268187 m!7089818))

(assert (=> b!6268187 m!7090102))

(assert (=> b!6268187 m!7089818))

(declare-fun m!7090104 () Bool)

(assert (=> b!6268187 m!7090104))

(assert (=> b!6266895 d!1967233))

(declare-fun bs!1564894 () Bool)

(declare-fun d!1967235 () Bool)

(assert (= bs!1564894 (and d!1967235 d!1966565)))

(declare-fun lambda!343258 () Int)

(assert (=> bs!1564894 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343258 lambda!343148))))

(declare-fun bs!1564895 () Bool)

(assert (= bs!1564895 (and d!1967235 d!1967131)))

(assert (=> bs!1564895 (= (= (head!12874 (t!378416 s!2326)) (head!12874 s!2326)) (= lambda!343258 lambda!343244))))

(declare-fun bs!1564896 () Bool)

(assert (= bs!1564896 (and d!1967235 d!1967101)))

(assert (=> bs!1564896 (= lambda!343258 lambda!343242)))

(declare-fun bs!1564897 () Bool)

(assert (= bs!1564897 (and d!1967235 d!1966549)))

(assert (=> bs!1564897 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343258 lambda!343147))))

(declare-fun bs!1564898 () Bool)

(assert (= bs!1564898 (and d!1967235 d!1967135)))

(assert (=> bs!1564898 (= lambda!343258 lambda!343245)))

(declare-fun bs!1564899 () Bool)

(assert (= bs!1564899 (and d!1967235 d!1967169)))

(assert (=> bs!1564899 (= lambda!343258 lambda!343248)))

(declare-fun bs!1564900 () Bool)

(assert (= bs!1564900 (and d!1967235 b!6266061)))

(assert (=> bs!1564900 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343258 lambda!343069))))

(assert (=> d!1967235 true))

(assert (=> d!1967235 (= (derivationStepZipper!2153 lt!2351097 (head!12874 (t!378416 s!2326))) (flatMap!1692 lt!2351097 lambda!343258))))

(declare-fun bs!1564901 () Bool)

(assert (= bs!1564901 d!1967235))

(declare-fun m!7090106 () Bool)

(assert (=> bs!1564901 m!7090106))

(assert (=> b!6266895 d!1967235))

(assert (=> b!6266895 d!1967103))

(assert (=> b!6266895 d!1967105))

(declare-fun d!1967237 () Bool)

(declare-fun e!3812505 () Bool)

(assert (=> d!1967237 e!3812505))

(declare-fun res!2585731 () Bool)

(assert (=> d!1967237 (=> (not res!2585731) (not e!3812505))))

(declare-fun lt!2351372 () List!64862)

(assert (=> d!1967237 (= res!2585731 (= (content!12158 lt!2351372) ((_ map or) (content!12158 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738))) (content!12158 (t!378416 s!2326)))))))

(declare-fun e!3812506 () List!64862)

(assert (=> d!1967237 (= lt!2351372 e!3812506)))

(declare-fun c!1135658 () Bool)

(assert (=> d!1967237 (= c!1135658 ((_ is Nil!64738) (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738))))))

(assert (=> d!1967237 (= (++!14261 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) (t!378416 s!2326)) lt!2351372)))

(declare-fun b!6268191 () Bool)

(assert (=> b!6268191 (= e!3812505 (or (not (= (t!378416 s!2326) Nil!64738)) (= lt!2351372 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)))))))

(declare-fun b!6268190 () Bool)

(declare-fun res!2585730 () Bool)

(assert (=> b!6268190 (=> (not res!2585730) (not e!3812505))))

(assert (=> b!6268190 (= res!2585730 (= (size!40308 lt!2351372) (+ (size!40308 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738))) (size!40308 (t!378416 s!2326)))))))

(declare-fun b!6268189 () Bool)

(assert (=> b!6268189 (= e!3812506 (Cons!64738 (h!71186 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738))) (++!14261 (t!378416 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738))) (t!378416 s!2326))))))

(declare-fun b!6268188 () Bool)

(assert (=> b!6268188 (= e!3812506 (t!378416 s!2326))))

(assert (= (and d!1967237 c!1135658) b!6268188))

(assert (= (and d!1967237 (not c!1135658)) b!6268189))

(assert (= (and d!1967237 res!2585731) b!6268190))

(assert (= (and b!6268190 res!2585730) b!6268191))

(declare-fun m!7090108 () Bool)

(assert (=> d!1967237 m!7090108))

(assert (=> d!1967237 m!7088510))

(declare-fun m!7090110 () Bool)

(assert (=> d!1967237 m!7090110))

(declare-fun m!7090112 () Bool)

(assert (=> d!1967237 m!7090112))

(declare-fun m!7090114 () Bool)

(assert (=> b!6268190 m!7090114))

(assert (=> b!6268190 m!7088510))

(declare-fun m!7090116 () Bool)

(assert (=> b!6268190 m!7090116))

(declare-fun m!7090118 () Bool)

(assert (=> b!6268190 m!7090118))

(declare-fun m!7090120 () Bool)

(assert (=> b!6268189 m!7090120))

(assert (=> b!6266626 d!1967237))

(declare-fun d!1967239 () Bool)

(declare-fun e!3812507 () Bool)

(assert (=> d!1967239 e!3812507))

(declare-fun res!2585733 () Bool)

(assert (=> d!1967239 (=> (not res!2585733) (not e!3812507))))

(declare-fun lt!2351373 () List!64862)

(assert (=> d!1967239 (= res!2585733 (= (content!12158 lt!2351373) ((_ map or) (content!12158 Nil!64738) (content!12158 (Cons!64738 (h!71186 s!2326) Nil!64738)))))))

(declare-fun e!3812508 () List!64862)

(assert (=> d!1967239 (= lt!2351373 e!3812508)))

(declare-fun c!1135659 () Bool)

(assert (=> d!1967239 (= c!1135659 ((_ is Nil!64738) Nil!64738))))

(assert (=> d!1967239 (= (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) lt!2351373)))

(declare-fun b!6268195 () Bool)

(assert (=> b!6268195 (= e!3812507 (or (not (= (Cons!64738 (h!71186 s!2326) Nil!64738) Nil!64738)) (= lt!2351373 Nil!64738)))))

(declare-fun b!6268194 () Bool)

(declare-fun res!2585732 () Bool)

(assert (=> b!6268194 (=> (not res!2585732) (not e!3812507))))

(assert (=> b!6268194 (= res!2585732 (= (size!40308 lt!2351373) (+ (size!40308 Nil!64738) (size!40308 (Cons!64738 (h!71186 s!2326) Nil!64738)))))))

(declare-fun b!6268193 () Bool)

(assert (=> b!6268193 (= e!3812508 (Cons!64738 (h!71186 Nil!64738) (++!14261 (t!378416 Nil!64738) (Cons!64738 (h!71186 s!2326) Nil!64738))))))

(declare-fun b!6268192 () Bool)

(assert (=> b!6268192 (= e!3812508 (Cons!64738 (h!71186 s!2326) Nil!64738))))

(assert (= (and d!1967239 c!1135659) b!6268192))

(assert (= (and d!1967239 (not c!1135659)) b!6268193))

(assert (= (and d!1967239 res!2585733) b!6268194))

(assert (= (and b!6268194 res!2585732) b!6268195))

(declare-fun m!7090122 () Bool)

(assert (=> d!1967239 m!7090122))

(declare-fun m!7090124 () Bool)

(assert (=> d!1967239 m!7090124))

(declare-fun m!7090126 () Bool)

(assert (=> d!1967239 m!7090126))

(declare-fun m!7090128 () Bool)

(assert (=> b!6268194 m!7090128))

(declare-fun m!7090130 () Bool)

(assert (=> b!6268194 m!7090130))

(declare-fun m!7090132 () Bool)

(assert (=> b!6268194 m!7090132))

(declare-fun m!7090134 () Bool)

(assert (=> b!6268193 m!7090134))

(assert (=> b!6266626 d!1967239))

(declare-fun d!1967241 () Bool)

(assert (=> d!1967241 (= (++!14261 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) (t!378416 s!2326)) s!2326)))

(declare-fun lt!2351376 () Unit!158079)

(declare-fun choose!46503 (List!64862 C!32644 List!64862 List!64862) Unit!158079)

(assert (=> d!1967241 (= lt!2351376 (choose!46503 Nil!64738 (h!71186 s!2326) (t!378416 s!2326) s!2326))))

(assert (=> d!1967241 (= (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) (t!378416 s!2326))) s!2326)))

(assert (=> d!1967241 (= (lemmaMoveElementToOtherListKeepsConcatEq!2356 Nil!64738 (h!71186 s!2326) (t!378416 s!2326) s!2326) lt!2351376)))

(declare-fun bs!1564902 () Bool)

(assert (= bs!1564902 d!1967241))

(assert (=> bs!1564902 m!7088510))

(assert (=> bs!1564902 m!7088510))

(assert (=> bs!1564902 m!7088512))

(declare-fun m!7090136 () Bool)

(assert (=> bs!1564902 m!7090136))

(declare-fun m!7090138 () Bool)

(assert (=> bs!1564902 m!7090138))

(assert (=> b!6266626 d!1967241))

(declare-fun b!6268196 () Bool)

(declare-fun e!3812511 () Option!16078)

(assert (=> b!6268196 (= e!3812511 (Some!16077 (tuple2!66333 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) (t!378416 s!2326))))))

(declare-fun b!6268197 () Bool)

(declare-fun lt!2351378 () Unit!158079)

(declare-fun lt!2351379 () Unit!158079)

(assert (=> b!6268197 (= lt!2351378 lt!2351379)))

(assert (=> b!6268197 (= (++!14261 (++!14261 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) (Cons!64738 (h!71186 (t!378416 s!2326)) Nil!64738)) (t!378416 (t!378416 s!2326))) s!2326)))

(assert (=> b!6268197 (= lt!2351379 (lemmaMoveElementToOtherListKeepsConcatEq!2356 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) (h!71186 (t!378416 s!2326)) (t!378416 (t!378416 s!2326)) s!2326))))

(declare-fun e!3812513 () Option!16078)

(assert (=> b!6268197 (= e!3812513 (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) (++!14261 (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) (Cons!64738 (h!71186 (t!378416 s!2326)) Nil!64738)) (t!378416 (t!378416 s!2326)) s!2326))))

(declare-fun b!6268198 () Bool)

(assert (=> b!6268198 (= e!3812511 e!3812513)))

(declare-fun c!1135661 () Bool)

(assert (=> b!6268198 (= c!1135661 ((_ is Nil!64738) (t!378416 s!2326)))))

(declare-fun b!6268199 () Bool)

(declare-fun res!2585735 () Bool)

(declare-fun e!3812509 () Bool)

(assert (=> b!6268199 (=> (not res!2585735) (not e!3812509))))

(declare-fun lt!2351377 () Option!16078)

(assert (=> b!6268199 (= res!2585735 (matchR!8370 (regOne!32886 r!7292) (_1!36469 (get!22370 lt!2351377))))))

(declare-fun b!6268200 () Bool)

(assert (=> b!6268200 (= e!3812513 None!16077)))

(declare-fun b!6268201 () Bool)

(declare-fun res!2585736 () Bool)

(assert (=> b!6268201 (=> (not res!2585736) (not e!3812509))))

(assert (=> b!6268201 (= res!2585736 (matchR!8370 (regTwo!32886 r!7292) (_2!36469 (get!22370 lt!2351377))))))

(declare-fun b!6268202 () Bool)

(declare-fun e!3812512 () Bool)

(assert (=> b!6268202 (= e!3812512 (not (isDefined!12781 lt!2351377)))))

(declare-fun b!6268203 () Bool)

(declare-fun e!3812510 () Bool)

(assert (=> b!6268203 (= e!3812510 (matchR!8370 (regTwo!32886 r!7292) (t!378416 s!2326)))))

(declare-fun b!6268204 () Bool)

(assert (=> b!6268204 (= e!3812509 (= (++!14261 (_1!36469 (get!22370 lt!2351377)) (_2!36469 (get!22370 lt!2351377))) s!2326))))

(declare-fun d!1967243 () Bool)

(assert (=> d!1967243 e!3812512))

(declare-fun res!2585737 () Bool)

(assert (=> d!1967243 (=> res!2585737 e!3812512)))

(assert (=> d!1967243 (= res!2585737 e!3812509)))

(declare-fun res!2585734 () Bool)

(assert (=> d!1967243 (=> (not res!2585734) (not e!3812509))))

(assert (=> d!1967243 (= res!2585734 (isDefined!12781 lt!2351377))))

(assert (=> d!1967243 (= lt!2351377 e!3812511)))

(declare-fun c!1135660 () Bool)

(assert (=> d!1967243 (= c!1135660 e!3812510)))

(declare-fun res!2585738 () Bool)

(assert (=> d!1967243 (=> (not res!2585738) (not e!3812510))))

(assert (=> d!1967243 (= res!2585738 (matchR!8370 (regOne!32886 r!7292) (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738))))))

(assert (=> d!1967243 (validRegex!7923 (regOne!32886 r!7292))))

(assert (=> d!1967243 (= (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) (++!14261 Nil!64738 (Cons!64738 (h!71186 s!2326) Nil!64738)) (t!378416 s!2326) s!2326) lt!2351377)))

(assert (= (and d!1967243 res!2585738) b!6268203))

(assert (= (and d!1967243 c!1135660) b!6268196))

(assert (= (and d!1967243 (not c!1135660)) b!6268198))

(assert (= (and b!6268198 c!1135661) b!6268200))

(assert (= (and b!6268198 (not c!1135661)) b!6268197))

(assert (= (and d!1967243 res!2585734) b!6268199))

(assert (= (and b!6268199 res!2585735) b!6268201))

(assert (= (and b!6268201 res!2585736) b!6268204))

(assert (= (and d!1967243 (not res!2585737)) b!6268202))

(declare-fun m!7090140 () Bool)

(assert (=> b!6268202 m!7090140))

(assert (=> d!1967243 m!7090140))

(assert (=> d!1967243 m!7088510))

(declare-fun m!7090142 () Bool)

(assert (=> d!1967243 m!7090142))

(assert (=> d!1967243 m!7088498))

(declare-fun m!7090144 () Bool)

(assert (=> b!6268203 m!7090144))

(declare-fun m!7090146 () Bool)

(assert (=> b!6268201 m!7090146))

(declare-fun m!7090148 () Bool)

(assert (=> b!6268201 m!7090148))

(assert (=> b!6268204 m!7090146))

(declare-fun m!7090150 () Bool)

(assert (=> b!6268204 m!7090150))

(assert (=> b!6268199 m!7090146))

(declare-fun m!7090152 () Bool)

(assert (=> b!6268199 m!7090152))

(assert (=> b!6268197 m!7088510))

(declare-fun m!7090154 () Bool)

(assert (=> b!6268197 m!7090154))

(assert (=> b!6268197 m!7090154))

(declare-fun m!7090156 () Bool)

(assert (=> b!6268197 m!7090156))

(assert (=> b!6268197 m!7088510))

(declare-fun m!7090158 () Bool)

(assert (=> b!6268197 m!7090158))

(assert (=> b!6268197 m!7090154))

(declare-fun m!7090160 () Bool)

(assert (=> b!6268197 m!7090160))

(assert (=> b!6266626 d!1967243))

(assert (=> d!1966607 d!1967057))

(declare-fun d!1967245 () Bool)

(assert (=> d!1967245 (= (nullable!6180 lt!2351098) (nullableFct!2132 lt!2351098))))

(declare-fun bs!1564903 () Bool)

(assert (= bs!1564903 d!1967245))

(declare-fun m!7090162 () Bool)

(assert (=> bs!1564903 m!7090162))

(assert (=> b!6266759 d!1967245))

(declare-fun b!6268205 () Bool)

(declare-fun e!3812517 () Int)

(assert (=> b!6268205 (= e!3812517 1)))

(declare-fun b!6268206 () Bool)

(declare-fun e!3812516 () Int)

(declare-fun e!3812514 () Int)

(assert (=> b!6268206 (= e!3812516 e!3812514)))

(declare-fun c!1135662 () Bool)

(assert (=> b!6268206 (= c!1135662 ((_ is Star!16187) (h!71184 (exprs!6071 lt!2351107))))))

(declare-fun c!1135663 () Bool)

(declare-fun call!529949 () Int)

(declare-fun bm!529942 () Bool)

(assert (=> bm!529942 (= call!529949 (regexDepthTotal!163 (ite c!1135662 (reg!16516 (h!71184 (exprs!6071 lt!2351107))) (ite c!1135663 (regTwo!32887 (h!71184 (exprs!6071 lt!2351107))) (regTwo!32886 (h!71184 (exprs!6071 lt!2351107)))))))))

(declare-fun bm!529943 () Bool)

(declare-fun call!529947 () Int)

(assert (=> bm!529943 (= call!529947 (regexDepthTotal!163 (ite c!1135663 (regOne!32887 (h!71184 (exprs!6071 lt!2351107))) (regOne!32886 (h!71184 (exprs!6071 lt!2351107))))))))

(declare-fun b!6268207 () Bool)

(assert (=> b!6268207 (= c!1135663 ((_ is Union!16187) (h!71184 (exprs!6071 lt!2351107))))))

(declare-fun e!3812515 () Int)

(assert (=> b!6268207 (= e!3812514 e!3812515)))

(declare-fun bm!529944 () Bool)

(declare-fun call!529948 () Int)

(assert (=> bm!529944 (= call!529948 call!529949)))

(declare-fun b!6268208 () Bool)

(assert (=> b!6268208 (= e!3812514 (+ 1 call!529949))))

(declare-fun b!6268209 () Bool)

(assert (=> b!6268209 (= e!3812515 e!3812517)))

(declare-fun c!1135665 () Bool)

(assert (=> b!6268209 (= c!1135665 ((_ is Concat!25032) (h!71184 (exprs!6071 lt!2351107))))))

(declare-fun b!6268210 () Bool)

(assert (=> b!6268210 (= e!3812516 1)))

(declare-fun d!1967247 () Bool)

(declare-fun lt!2351380 () Int)

(assert (=> d!1967247 (> lt!2351380 0)))

(assert (=> d!1967247 (= lt!2351380 e!3812516)))

(declare-fun c!1135664 () Bool)

(assert (=> d!1967247 (= c!1135664 ((_ is ElementMatch!16187) (h!71184 (exprs!6071 lt!2351107))))))

(assert (=> d!1967247 (= (regexDepthTotal!163 (h!71184 (exprs!6071 lt!2351107))) lt!2351380)))

(declare-fun b!6268211 () Bool)

(assert (=> b!6268211 (= e!3812517 (+ 1 call!529947 call!529948))))

(declare-fun b!6268212 () Bool)

(assert (=> b!6268212 (= e!3812515 (+ 1 call!529947 call!529948))))

(assert (= (and d!1967247 c!1135664) b!6268210))

(assert (= (and d!1967247 (not c!1135664)) b!6268206))

(assert (= (and b!6268206 c!1135662) b!6268208))

(assert (= (and b!6268206 (not c!1135662)) b!6268207))

(assert (= (and b!6268207 c!1135663) b!6268212))

(assert (= (and b!6268207 (not c!1135663)) b!6268209))

(assert (= (and b!6268209 c!1135665) b!6268211))

(assert (= (and b!6268209 (not c!1135665)) b!6268205))

(assert (= (or b!6268212 b!6268211) bm!529944))

(assert (= (or b!6268212 b!6268211) bm!529943))

(assert (= (or b!6268208 bm!529944) bm!529942))

(declare-fun m!7090164 () Bool)

(assert (=> bm!529942 m!7090164))

(declare-fun m!7090166 () Bool)

(assert (=> bm!529943 m!7090166))

(assert (=> b!6266908 d!1967247))

(declare-fun d!1967249 () Bool)

(declare-fun lt!2351381 () Int)

(assert (=> d!1967249 (>= lt!2351381 0)))

(declare-fun e!3812518 () Int)

(assert (=> d!1967249 (= lt!2351381 e!3812518)))

(declare-fun c!1135666 () Bool)

(assert (=> d!1967249 (= c!1135666 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107))))))))

(assert (=> d!1967249 (= (contextDepthTotal!310 (Context!11143 (t!378414 (exprs!6071 lt!2351107)))) lt!2351381)))

(declare-fun b!6268213 () Bool)

(assert (=> b!6268213 (= e!3812518 (+ (regexDepthTotal!163 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107)))))) (contextDepthTotal!310 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107)))))))))))

(declare-fun b!6268214 () Bool)

(assert (=> b!6268214 (= e!3812518 1)))

(assert (= (and d!1967249 c!1135666) b!6268213))

(assert (= (and d!1967249 (not c!1135666)) b!6268214))

(declare-fun m!7090168 () Bool)

(assert (=> b!6268213 m!7090168))

(declare-fun m!7090170 () Bool)

(assert (=> b!6268213 m!7090170))

(assert (=> b!6266908 d!1967249))

(declare-fun bs!1564904 () Bool)

(declare-fun d!1967251 () Bool)

(assert (= bs!1564904 (and d!1967251 d!1967183)))

(declare-fun lambda!343259 () Int)

(assert (=> bs!1564904 (not (= lambda!343259 lambda!343253))))

(declare-fun bs!1564905 () Bool)

(assert (= bs!1564905 (and d!1967251 d!1967147)))

(assert (=> bs!1564905 (not (= lambda!343259 lambda!343246))))

(declare-fun bs!1564906 () Bool)

(assert (= bs!1564906 (and d!1967251 b!6266772)))

(assert (=> bs!1564906 (not (= lambda!343259 lambda!343142))))

(declare-fun bs!1564907 () Bool)

(assert (= bs!1564907 (and d!1967251 b!6267918)))

(assert (=> bs!1564907 (not (= lambda!343259 lambda!343233))))

(declare-fun bs!1564908 () Bool)

(assert (= bs!1564908 (and d!1967251 d!1967161)))

(assert (=> bs!1564908 (not (= lambda!343259 lambda!343247))))

(declare-fun bs!1564909 () Bool)

(assert (= bs!1564909 (and d!1967251 b!6266769)))

(assert (=> bs!1564909 (not (= lambda!343259 lambda!343140))))

(declare-fun bs!1564910 () Bool)

(assert (= bs!1564910 (and d!1967251 d!1967091)))

(assert (=> bs!1564910 (not (= lambda!343259 lambda!343241))))

(declare-fun bs!1564911 () Bool)

(assert (= bs!1564911 (and d!1967251 d!1967035)))

(assert (=> bs!1564911 (not (= lambda!343259 lambda!343228))))

(declare-fun bs!1564912 () Bool)

(assert (= bs!1564912 (and d!1967251 d!1967181)))

(assert (=> bs!1564912 (not (= lambda!343259 lambda!343252))))

(declare-fun bs!1564913 () Bool)

(assert (= bs!1564913 (and d!1967251 b!6266767)))

(assert (=> bs!1564913 (not (= lambda!343259 lambda!343139))))

(declare-fun bs!1564914 () Bool)

(assert (= bs!1564914 (and d!1967251 b!6266774)))

(assert (=> bs!1564914 (not (= lambda!343259 lambda!343143))))

(declare-fun bs!1564915 () Bool)

(assert (= bs!1564915 (and d!1967251 d!1967221)))

(assert (=> bs!1564915 (not (= lambda!343259 lambda!343257))))

(declare-fun bs!1564916 () Bool)

(assert (= bs!1564916 (and d!1967251 b!6267920)))

(assert (=> bs!1564916 (not (= lambda!343259 lambda!343234))))

(declare-fun bs!1564917 () Bool)

(assert (= bs!1564917 (and d!1967251 d!1967219)))

(assert (=> bs!1564917 (not (= lambda!343259 lambda!343256))))

(declare-fun bs!1564918 () Bool)

(assert (= bs!1564918 (and d!1967251 d!1967077)))

(assert (=> bs!1564918 (= (and (= lt!2351226 lt!2351230) (= lambda!343138 lambda!343141)) (= lambda!343259 lambda!343231))))

(assert (=> d!1967251 true))

(assert (=> d!1967251 true))

(assert (=> d!1967251 (< (dynLambda!25596 order!27449 lambda!343138) (dynLambda!25597 order!27451 lambda!343259))))

(assert (=> d!1967251 (forall!15313 (t!378415 lt!2351106) lambda!343259)))

(declare-fun lt!2351382 () Unit!158079)

(assert (=> d!1967251 (= lt!2351382 (choose!46501 (t!378415 lt!2351106) lt!2351226 (zipperDepth!312 (t!378415 lt!2351106)) lambda!343138))))

(assert (=> d!1967251 (>= lt!2351226 (zipperDepth!312 (t!378415 lt!2351106)))))

(assert (=> d!1967251 (= (lemmaForallContextDepthBiggerThanTransitive!189 (t!378415 lt!2351106) lt!2351226 (zipperDepth!312 (t!378415 lt!2351106)) lambda!343138) lt!2351382)))

(declare-fun bs!1564919 () Bool)

(assert (= bs!1564919 d!1967251))

(declare-fun m!7090172 () Bool)

(assert (=> bs!1564919 m!7090172))

(assert (=> bs!1564919 m!7088604))

(declare-fun m!7090174 () Bool)

(assert (=> bs!1564919 m!7090174))

(assert (=> b!6266767 d!1967251))

(declare-fun d!1967253 () Bool)

(declare-fun res!2585739 () Bool)

(declare-fun e!3812519 () Bool)

(assert (=> d!1967253 (=> res!2585739 e!3812519)))

(assert (=> d!1967253 (= res!2585739 ((_ is Nil!64737) (t!378415 lt!2351106)))))

(assert (=> d!1967253 (= (forall!15313 (t!378415 lt!2351106) lambda!343139) e!3812519)))

(declare-fun b!6268215 () Bool)

(declare-fun e!3812520 () Bool)

(assert (=> b!6268215 (= e!3812519 e!3812520)))

(declare-fun res!2585740 () Bool)

(assert (=> b!6268215 (=> (not res!2585740) (not e!3812520))))

(assert (=> b!6268215 (= res!2585740 (dynLambda!25594 lambda!343139 (h!71185 (t!378415 lt!2351106))))))

(declare-fun b!6268216 () Bool)

(assert (=> b!6268216 (= e!3812520 (forall!15313 (t!378415 (t!378415 lt!2351106)) lambda!343139))))

(assert (= (and d!1967253 (not res!2585739)) b!6268215))

(assert (= (and b!6268215 res!2585740) b!6268216))

(declare-fun b_lambda!238665 () Bool)

(assert (=> (not b_lambda!238665) (not b!6268215)))

(declare-fun m!7090176 () Bool)

(assert (=> b!6268215 m!7090176))

(declare-fun m!7090178 () Bool)

(assert (=> b!6268216 m!7090178))

(assert (=> b!6266767 d!1967253))

(declare-fun d!1967255 () Bool)

(assert (=> d!1967255 (= (maxBigInt!0 (contextDepth!205 (h!71185 lt!2351106)) (zipperDepth!312 (t!378415 lt!2351106))) (ite (>= (contextDepth!205 (h!71185 lt!2351106)) (zipperDepth!312 (t!378415 lt!2351106))) (contextDepth!205 (h!71185 lt!2351106)) (zipperDepth!312 (t!378415 lt!2351106))))))

(assert (=> b!6266767 d!1967255))

(declare-fun bs!1564920 () Bool)

(declare-fun b!6268217 () Bool)

(assert (= bs!1564920 (and b!6268217 b!6267928)))

(declare-fun lambda!343260 () Int)

(declare-fun lt!2351384 () Int)

(assert (=> bs!1564920 (= (= lt!2351384 lt!2351349) (= lambda!343260 lambda!343239))))

(declare-fun bs!1564921 () Bool)

(assert (= bs!1564921 (and b!6268217 d!1966567)))

(assert (=> bs!1564921 (not (= lambda!343260 lambda!343149))))

(declare-fun bs!1564922 () Bool)

(assert (= bs!1564922 (and b!6268217 d!1967175)))

(assert (=> bs!1564922 (not (= lambda!343260 lambda!343249))))

(declare-fun bs!1564923 () Bool)

(assert (= bs!1564923 (and b!6268217 d!1967177)))

(assert (=> bs!1564923 (not (= lambda!343260 lambda!343250))))

(declare-fun bs!1564924 () Bool)

(assert (= bs!1564924 (and b!6268217 d!1966543)))

(assert (=> bs!1564924 (not (= lambda!343260 lambda!343144))))

(declare-fun bs!1564925 () Bool)

(assert (= bs!1564925 (and b!6268217 d!1967211)))

(assert (=> bs!1564925 (not (= lambda!343260 lambda!343255))))

(declare-fun bs!1564926 () Bool)

(assert (= bs!1564926 (and b!6268217 d!1966597)))

(assert (=> bs!1564926 (not (= lambda!343260 lambda!343158))))

(declare-fun bs!1564927 () Bool)

(assert (= bs!1564927 (and b!6268217 d!1966599)))

(assert (=> bs!1564927 (not (= lambda!343260 lambda!343161))))

(declare-fun bs!1564928 () Bool)

(assert (= bs!1564928 (and b!6268217 b!6267930)))

(assert (=> bs!1564928 (= (= lt!2351384 lt!2351350) (= lambda!343260 lambda!343240))))

(declare-fun bs!1564929 () Bool)

(assert (= bs!1564929 (and b!6268217 d!1966533)))

(assert (=> bs!1564929 (not (= lambda!343260 lambda!343131))))

(declare-fun bs!1564930 () Bool)

(assert (= bs!1564930 (and b!6268217 d!1966529)))

(assert (=> bs!1564930 (not (= lambda!343260 lambda!343128))))

(declare-fun bs!1564931 () Bool)

(assert (= bs!1564931 (and b!6268217 d!1967123)))

(assert (=> bs!1564931 (not (= lambda!343260 lambda!343243))))

(declare-fun bs!1564932 () Bool)

(assert (= bs!1564932 (and b!6268217 d!1967203)))

(assert (=> bs!1564932 (not (= lambda!343260 lambda!343254))))

(declare-fun bs!1564933 () Bool)

(assert (= bs!1564933 (and b!6268217 d!1966525)))

(assert (=> bs!1564933 (not (= lambda!343260 lambda!343127))))

(declare-fun bs!1564934 () Bool)

(assert (= bs!1564934 (and b!6268217 d!1967179)))

(assert (=> bs!1564934 (not (= lambda!343260 lambda!343251))))

(assert (=> b!6268217 true))

(declare-fun bs!1564935 () Bool)

(declare-fun b!6268219 () Bool)

(assert (= bs!1564935 (and b!6268219 b!6268217)))

(declare-fun lt!2351385 () Int)

(declare-fun lambda!343261 () Int)

(assert (=> bs!1564935 (= (= lt!2351385 lt!2351384) (= lambda!343261 lambda!343260))))

(declare-fun bs!1564936 () Bool)

(assert (= bs!1564936 (and b!6268219 b!6267928)))

(assert (=> bs!1564936 (= (= lt!2351385 lt!2351349) (= lambda!343261 lambda!343239))))

(declare-fun bs!1564937 () Bool)

(assert (= bs!1564937 (and b!6268219 d!1966567)))

(assert (=> bs!1564937 (not (= lambda!343261 lambda!343149))))

(declare-fun bs!1564938 () Bool)

(assert (= bs!1564938 (and b!6268219 d!1967175)))

(assert (=> bs!1564938 (not (= lambda!343261 lambda!343249))))

(declare-fun bs!1564939 () Bool)

(assert (= bs!1564939 (and b!6268219 d!1967177)))

(assert (=> bs!1564939 (not (= lambda!343261 lambda!343250))))

(declare-fun bs!1564940 () Bool)

(assert (= bs!1564940 (and b!6268219 d!1966543)))

(assert (=> bs!1564940 (not (= lambda!343261 lambda!343144))))

(declare-fun bs!1564941 () Bool)

(assert (= bs!1564941 (and b!6268219 d!1967211)))

(assert (=> bs!1564941 (not (= lambda!343261 lambda!343255))))

(declare-fun bs!1564942 () Bool)

(assert (= bs!1564942 (and b!6268219 d!1966597)))

(assert (=> bs!1564942 (not (= lambda!343261 lambda!343158))))

(declare-fun bs!1564943 () Bool)

(assert (= bs!1564943 (and b!6268219 d!1966599)))

(assert (=> bs!1564943 (not (= lambda!343261 lambda!343161))))

(declare-fun bs!1564944 () Bool)

(assert (= bs!1564944 (and b!6268219 b!6267930)))

(assert (=> bs!1564944 (= (= lt!2351385 lt!2351350) (= lambda!343261 lambda!343240))))

(declare-fun bs!1564945 () Bool)

(assert (= bs!1564945 (and b!6268219 d!1966533)))

(assert (=> bs!1564945 (not (= lambda!343261 lambda!343131))))

(declare-fun bs!1564946 () Bool)

(assert (= bs!1564946 (and b!6268219 d!1966529)))

(assert (=> bs!1564946 (not (= lambda!343261 lambda!343128))))

(declare-fun bs!1564947 () Bool)

(assert (= bs!1564947 (and b!6268219 d!1967123)))

(assert (=> bs!1564947 (not (= lambda!343261 lambda!343243))))

(declare-fun bs!1564948 () Bool)

(assert (= bs!1564948 (and b!6268219 d!1967203)))

(assert (=> bs!1564948 (not (= lambda!343261 lambda!343254))))

(declare-fun bs!1564949 () Bool)

(assert (= bs!1564949 (and b!6268219 d!1966525)))

(assert (=> bs!1564949 (not (= lambda!343261 lambda!343127))))

(declare-fun bs!1564950 () Bool)

(assert (= bs!1564950 (and b!6268219 d!1967179)))

(assert (=> bs!1564950 (not (= lambda!343261 lambda!343251))))

(assert (=> b!6268219 true))

(declare-fun d!1967257 () Bool)

(declare-fun e!3812521 () Bool)

(assert (=> d!1967257 e!3812521))

(declare-fun res!2585741 () Bool)

(assert (=> d!1967257 (=> (not res!2585741) (not e!3812521))))

(assert (=> d!1967257 (= res!2585741 (>= lt!2351385 0))))

(declare-fun e!3812522 () Int)

(assert (=> d!1967257 (= lt!2351385 e!3812522)))

(declare-fun c!1135667 () Bool)

(assert (=> d!1967257 (= c!1135667 ((_ is Cons!64736) (exprs!6071 (h!71185 lt!2351106))))))

(assert (=> d!1967257 (= (contextDepth!205 (h!71185 lt!2351106)) lt!2351385)))

(assert (=> b!6268217 (= e!3812522 lt!2351384)))

(assert (=> b!6268217 (= lt!2351384 (maxBigInt!0 (regexDepth!308 (h!71184 (exprs!6071 (h!71185 lt!2351106)))) (contextDepth!205 (Context!11143 (t!378414 (exprs!6071 (h!71185 lt!2351106)))))))))

(declare-fun lt!2351386 () Unit!158079)

(assert (=> b!6268217 (= lt!2351386 (lemmaForallRegexDepthBiggerThanTransitive!98 (t!378414 (exprs!6071 (h!71185 lt!2351106))) lt!2351384 (contextDepth!205 (Context!11143 (t!378414 (exprs!6071 (h!71185 lt!2351106)))))))))

(assert (=> b!6268217 (forall!15312 (t!378414 (exprs!6071 (h!71185 lt!2351106))) lambda!343260)))

(declare-fun lt!2351383 () Unit!158079)

(assert (=> b!6268217 (= lt!2351383 lt!2351386)))

(declare-fun b!6268218 () Bool)

(assert (=> b!6268218 (= e!3812522 0)))

(assert (=> b!6268219 (= e!3812521 (forall!15312 (exprs!6071 (h!71185 lt!2351106)) lambda!343261))))

(assert (= (and d!1967257 c!1135667) b!6268217))

(assert (= (and d!1967257 (not c!1135667)) b!6268218))

(assert (= (and d!1967257 res!2585741) b!6268219))

(declare-fun m!7090180 () Bool)

(assert (=> b!6268217 m!7090180))

(declare-fun m!7090182 () Bool)

(assert (=> b!6268217 m!7090182))

(declare-fun m!7090184 () Bool)

(assert (=> b!6268217 m!7090184))

(assert (=> b!6268217 m!7090180))

(assert (=> b!6268217 m!7090182))

(assert (=> b!6268217 m!7090182))

(declare-fun m!7090186 () Bool)

(assert (=> b!6268217 m!7090186))

(declare-fun m!7090188 () Bool)

(assert (=> b!6268217 m!7090188))

(declare-fun m!7090190 () Bool)

(assert (=> b!6268219 m!7090190))

(assert (=> b!6266767 d!1967257))

(declare-fun bs!1564951 () Bool)

(declare-fun b!6268220 () Bool)

(assert (= bs!1564951 (and b!6268220 b!6266767)))

(declare-fun lambda!343262 () Int)

(assert (=> bs!1564951 (= lambda!343262 lambda!343138)))

(declare-fun bs!1564952 () Bool)

(assert (= bs!1564952 (and b!6268220 b!6266772)))

(assert (=> bs!1564952 (= lambda!343262 lambda!343141)))

(declare-fun bs!1564953 () Bool)

(assert (= bs!1564953 (and b!6268220 b!6267918)))

(assert (=> bs!1564953 (= lambda!343262 lambda!343232)))

(declare-fun bs!1564954 () Bool)

(assert (= bs!1564954 (and b!6268220 d!1967183)))

(declare-fun lambda!343263 () Int)

(assert (=> bs!1564954 (not (= lambda!343263 lambda!343253))))

(declare-fun bs!1564955 () Bool)

(assert (= bs!1564955 (and b!6268220 d!1967251)))

(assert (=> bs!1564955 (not (= lambda!343263 lambda!343259))))

(declare-fun bs!1564956 () Bool)

(assert (= bs!1564956 (and b!6268220 d!1967147)))

(assert (=> bs!1564956 (not (= lambda!343263 lambda!343246))))

(declare-fun lt!2351388 () Int)

(assert (=> bs!1564952 (= (= lt!2351388 lt!2351230) (= lambda!343263 lambda!343142))))

(assert (=> bs!1564953 (= (= lt!2351388 lt!2351337) (= lambda!343263 lambda!343233))))

(declare-fun bs!1564957 () Bool)

(assert (= bs!1564957 (and b!6268220 d!1967161)))

(assert (=> bs!1564957 (not (= lambda!343263 lambda!343247))))

(declare-fun bs!1564958 () Bool)

(assert (= bs!1564958 (and b!6268220 b!6266769)))

(assert (=> bs!1564958 (= (= lt!2351388 lt!2351228) (= lambda!343263 lambda!343140))))

(declare-fun bs!1564959 () Bool)

(assert (= bs!1564959 (and b!6268220 d!1967091)))

(assert (=> bs!1564959 (not (= lambda!343263 lambda!343241))))

(declare-fun bs!1564960 () Bool)

(assert (= bs!1564960 (and b!6268220 d!1967035)))

(assert (=> bs!1564960 (not (= lambda!343263 lambda!343228))))

(declare-fun bs!1564961 () Bool)

(assert (= bs!1564961 (and b!6268220 d!1967181)))

(assert (=> bs!1564961 (not (= lambda!343263 lambda!343252))))

(assert (=> bs!1564951 (= (= lt!2351388 lt!2351226) (= lambda!343263 lambda!343139))))

(declare-fun bs!1564962 () Bool)

(assert (= bs!1564962 (and b!6268220 b!6266774)))

(assert (=> bs!1564962 (= (= lt!2351388 lt!2351232) (= lambda!343263 lambda!343143))))

(declare-fun bs!1564963 () Bool)

(assert (= bs!1564963 (and b!6268220 d!1967221)))

(assert (=> bs!1564963 (not (= lambda!343263 lambda!343257))))

(declare-fun bs!1564964 () Bool)

(assert (= bs!1564964 (and b!6268220 b!6267920)))

(assert (=> bs!1564964 (= (= lt!2351388 lt!2351339) (= lambda!343263 lambda!343234))))

(declare-fun bs!1564965 () Bool)

(assert (= bs!1564965 (and b!6268220 d!1967219)))

(assert (=> bs!1564965 (not (= lambda!343263 lambda!343256))))

(declare-fun bs!1564966 () Bool)

(assert (= bs!1564966 (and b!6268220 d!1967077)))

(assert (=> bs!1564966 (not (= lambda!343263 lambda!343231))))

(assert (=> b!6268220 true))

(declare-fun bs!1564967 () Bool)

(declare-fun b!6268222 () Bool)

(assert (= bs!1564967 (and b!6268222 d!1967183)))

(declare-fun lambda!343264 () Int)

(assert (=> bs!1564967 (not (= lambda!343264 lambda!343253))))

(declare-fun bs!1564968 () Bool)

(assert (= bs!1564968 (and b!6268222 d!1967251)))

(assert (=> bs!1564968 (not (= lambda!343264 lambda!343259))))

(declare-fun bs!1564969 () Bool)

(assert (= bs!1564969 (and b!6268222 d!1967147)))

(assert (=> bs!1564969 (not (= lambda!343264 lambda!343246))))

(declare-fun bs!1564970 () Bool)

(assert (= bs!1564970 (and b!6268222 b!6266772)))

(declare-fun lt!2351390 () Int)

(assert (=> bs!1564970 (= (= lt!2351390 lt!2351230) (= lambda!343264 lambda!343142))))

(declare-fun bs!1564971 () Bool)

(assert (= bs!1564971 (and b!6268222 b!6267918)))

(assert (=> bs!1564971 (= (= lt!2351390 lt!2351337) (= lambda!343264 lambda!343233))))

(declare-fun bs!1564972 () Bool)

(assert (= bs!1564972 (and b!6268222 d!1967161)))

(assert (=> bs!1564972 (not (= lambda!343264 lambda!343247))))

(declare-fun bs!1564973 () Bool)

(assert (= bs!1564973 (and b!6268222 b!6266769)))

(assert (=> bs!1564973 (= (= lt!2351390 lt!2351228) (= lambda!343264 lambda!343140))))

(declare-fun bs!1564974 () Bool)

(assert (= bs!1564974 (and b!6268222 d!1967035)))

(assert (=> bs!1564974 (not (= lambda!343264 lambda!343228))))

(declare-fun bs!1564975 () Bool)

(assert (= bs!1564975 (and b!6268222 d!1967181)))

(assert (=> bs!1564975 (not (= lambda!343264 lambda!343252))))

(declare-fun bs!1564976 () Bool)

(assert (= bs!1564976 (and b!6268222 b!6266767)))

(assert (=> bs!1564976 (= (= lt!2351390 lt!2351226) (= lambda!343264 lambda!343139))))

(declare-fun bs!1564977 () Bool)

(assert (= bs!1564977 (and b!6268222 b!6266774)))

(assert (=> bs!1564977 (= (= lt!2351390 lt!2351232) (= lambda!343264 lambda!343143))))

(declare-fun bs!1564978 () Bool)

(assert (= bs!1564978 (and b!6268222 b!6268220)))

(assert (=> bs!1564978 (= (= lt!2351390 lt!2351388) (= lambda!343264 lambda!343263))))

(declare-fun bs!1564979 () Bool)

(assert (= bs!1564979 (and b!6268222 d!1967091)))

(assert (=> bs!1564979 (not (= lambda!343264 lambda!343241))))

(declare-fun bs!1564980 () Bool)

(assert (= bs!1564980 (and b!6268222 d!1967221)))

(assert (=> bs!1564980 (not (= lambda!343264 lambda!343257))))

(declare-fun bs!1564981 () Bool)

(assert (= bs!1564981 (and b!6268222 b!6267920)))

(assert (=> bs!1564981 (= (= lt!2351390 lt!2351339) (= lambda!343264 lambda!343234))))

(declare-fun bs!1564982 () Bool)

(assert (= bs!1564982 (and b!6268222 d!1967219)))

(assert (=> bs!1564982 (not (= lambda!343264 lambda!343256))))

(declare-fun bs!1564983 () Bool)

(assert (= bs!1564983 (and b!6268222 d!1967077)))

(assert (=> bs!1564983 (not (= lambda!343264 lambda!343231))))

(assert (=> b!6268222 true))

(declare-fun d!1967259 () Bool)

(declare-fun e!3812524 () Bool)

(assert (=> d!1967259 e!3812524))

(declare-fun res!2585742 () Bool)

(assert (=> d!1967259 (=> (not res!2585742) (not e!3812524))))

(assert (=> d!1967259 (= res!2585742 (>= lt!2351390 0))))

(declare-fun e!3812523 () Int)

(assert (=> d!1967259 (= lt!2351390 e!3812523)))

(declare-fun c!1135668 () Bool)

(assert (=> d!1967259 (= c!1135668 ((_ is Cons!64737) (t!378415 lt!2351106)))))

(assert (=> d!1967259 (= (zipperDepth!312 (t!378415 lt!2351106)) lt!2351390)))

(assert (=> b!6268220 (= e!3812523 lt!2351388)))

(assert (=> b!6268220 (= lt!2351388 (maxBigInt!0 (contextDepth!205 (h!71185 (t!378415 lt!2351106))) (zipperDepth!312 (t!378415 (t!378415 lt!2351106)))))))

(declare-fun lt!2351387 () Unit!158079)

(assert (=> b!6268220 (= lt!2351387 (lemmaForallContextDepthBiggerThanTransitive!189 (t!378415 (t!378415 lt!2351106)) lt!2351388 (zipperDepth!312 (t!378415 (t!378415 lt!2351106))) lambda!343262))))

(assert (=> b!6268220 (forall!15313 (t!378415 (t!378415 lt!2351106)) lambda!343263)))

(declare-fun lt!2351389 () Unit!158079)

(assert (=> b!6268220 (= lt!2351389 lt!2351387)))

(declare-fun b!6268221 () Bool)

(assert (=> b!6268221 (= e!3812523 0)))

(assert (=> b!6268222 (= e!3812524 (forall!15313 (t!378415 lt!2351106) lambda!343264))))

(assert (= (and d!1967259 c!1135668) b!6268220))

(assert (= (and d!1967259 (not c!1135668)) b!6268221))

(assert (= (and d!1967259 res!2585742) b!6268222))

(declare-fun m!7090192 () Bool)

(assert (=> b!6268220 m!7090192))

(declare-fun m!7090194 () Bool)

(assert (=> b!6268220 m!7090194))

(declare-fun m!7090196 () Bool)

(assert (=> b!6268220 m!7090196))

(assert (=> b!6268220 m!7090196))

(assert (=> b!6268220 m!7090192))

(declare-fun m!7090198 () Bool)

(assert (=> b!6268220 m!7090198))

(declare-fun m!7090200 () Bool)

(assert (=> b!6268220 m!7090200))

(assert (=> b!6268220 m!7090192))

(declare-fun m!7090202 () Bool)

(assert (=> b!6268222 m!7090202))

(assert (=> b!6266767 d!1967259))

(assert (=> d!1966527 d!1966531))

(assert (=> d!1966527 d!1966521))

(declare-fun d!1967261 () Bool)

(assert (=> d!1967261 (= (matchR!8370 lt!2351098 s!2326) (matchZipper!2199 lt!2351077 s!2326))))

(assert (=> d!1967261 true))

(declare-fun _$44!1594 () Unit!158079)

(assert (=> d!1967261 (= (choose!46496 lt!2351077 lt!2351106 lt!2351098 s!2326) _$44!1594)))

(declare-fun bs!1564984 () Bool)

(assert (= bs!1564984 d!1967261))

(assert (=> bs!1564984 m!7087964))

(assert (=> bs!1564984 m!7087970))

(assert (=> d!1966527 d!1967261))

(declare-fun b!6268223 () Bool)

(declare-fun e!3812525 () Bool)

(declare-fun e!3812529 () Bool)

(assert (=> b!6268223 (= e!3812525 e!3812529)))

(declare-fun res!2585744 () Bool)

(assert (=> b!6268223 (=> (not res!2585744) (not e!3812529))))

(declare-fun call!529952 () Bool)

(assert (=> b!6268223 (= res!2585744 call!529952)))

(declare-fun b!6268224 () Bool)

(declare-fun res!2585746 () Bool)

(assert (=> b!6268224 (=> res!2585746 e!3812525)))

(assert (=> b!6268224 (= res!2585746 (not ((_ is Concat!25032) lt!2351098)))))

(declare-fun e!3812528 () Bool)

(assert (=> b!6268224 (= e!3812528 e!3812525)))

(declare-fun b!6268225 () Bool)

(declare-fun e!3812526 () Bool)

(declare-fun e!3812530 () Bool)

(assert (=> b!6268225 (= e!3812526 e!3812530)))

(declare-fun c!1135669 () Bool)

(assert (=> b!6268225 (= c!1135669 ((_ is Star!16187) lt!2351098))))

(declare-fun d!1967263 () Bool)

(declare-fun res!2585747 () Bool)

(assert (=> d!1967263 (=> res!2585747 e!3812526)))

(assert (=> d!1967263 (= res!2585747 ((_ is ElementMatch!16187) lt!2351098))))

(assert (=> d!1967263 (= (validRegex!7923 lt!2351098) e!3812526)))

(declare-fun b!6268226 () Bool)

(declare-fun e!3812531 () Bool)

(declare-fun call!529951 () Bool)

(assert (=> b!6268226 (= e!3812531 call!529951)))

(declare-fun bm!529945 () Bool)

(declare-fun call!529950 () Bool)

(assert (=> bm!529945 (= call!529952 call!529950)))

(declare-fun b!6268227 () Bool)

(assert (=> b!6268227 (= e!3812530 e!3812528)))

(declare-fun c!1135670 () Bool)

(assert (=> b!6268227 (= c!1135670 ((_ is Union!16187) lt!2351098))))

(declare-fun bm!529946 () Bool)

(assert (=> bm!529946 (= call!529951 (validRegex!7923 (ite c!1135670 (regTwo!32887 lt!2351098) (regTwo!32886 lt!2351098))))))

(declare-fun bm!529947 () Bool)

(assert (=> bm!529947 (= call!529950 (validRegex!7923 (ite c!1135669 (reg!16516 lt!2351098) (ite c!1135670 (regOne!32887 lt!2351098) (regOne!32886 lt!2351098)))))))

(declare-fun b!6268228 () Bool)

(declare-fun res!2585745 () Bool)

(assert (=> b!6268228 (=> (not res!2585745) (not e!3812531))))

(assert (=> b!6268228 (= res!2585745 call!529952)))

(assert (=> b!6268228 (= e!3812528 e!3812531)))

(declare-fun b!6268229 () Bool)

(assert (=> b!6268229 (= e!3812529 call!529951)))

(declare-fun b!6268230 () Bool)

(declare-fun e!3812527 () Bool)

(assert (=> b!6268230 (= e!3812530 e!3812527)))

(declare-fun res!2585743 () Bool)

(assert (=> b!6268230 (= res!2585743 (not (nullable!6180 (reg!16516 lt!2351098))))))

(assert (=> b!6268230 (=> (not res!2585743) (not e!3812527))))

(declare-fun b!6268231 () Bool)

(assert (=> b!6268231 (= e!3812527 call!529950)))

(assert (= (and d!1967263 (not res!2585747)) b!6268225))

(assert (= (and b!6268225 c!1135669) b!6268230))

(assert (= (and b!6268225 (not c!1135669)) b!6268227))

(assert (= (and b!6268230 res!2585743) b!6268231))

(assert (= (and b!6268227 c!1135670) b!6268228))

(assert (= (and b!6268227 (not c!1135670)) b!6268224))

(assert (= (and b!6268228 res!2585745) b!6268226))

(assert (= (and b!6268224 (not res!2585746)) b!6268223))

(assert (= (and b!6268223 res!2585744) b!6268229))

(assert (= (or b!6268226 b!6268229) bm!529946))

(assert (= (or b!6268228 b!6268223) bm!529945))

(assert (= (or b!6268231 bm!529945) bm!529947))

(declare-fun m!7090204 () Bool)

(assert (=> bm!529946 m!7090204))

(declare-fun m!7090206 () Bool)

(assert (=> bm!529947 m!7090206))

(declare-fun m!7090208 () Bool)

(assert (=> b!6268230 m!7090208))

(assert (=> d!1966527 d!1967263))

(assert (=> bm!529704 d!1967107))

(assert (=> d!1966531 d!1967107))

(assert (=> d!1966531 d!1967263))

(declare-fun d!1967265 () Bool)

(assert (=> d!1967265 (= (isEmptyLang!1602 lt!2351256) ((_ is EmptyLang!16187) lt!2351256))))

(assert (=> b!6266941 d!1967265))

(declare-fun b!6268232 () Bool)

(declare-fun e!3812534 () (InoxSet Context!11142))

(declare-fun call!529953 () (InoxSet Context!11142))

(assert (=> b!6268232 (= e!3812534 ((_ map or) call!529953 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343))))))) (h!71186 s!2326))))))

(declare-fun b!6268233 () Bool)

(declare-fun e!3812532 () (InoxSet Context!11142))

(assert (=> b!6268233 (= e!3812532 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1967267 () Bool)

(declare-fun c!1135671 () Bool)

(declare-fun e!3812533 () Bool)

(assert (=> d!1967267 (= c!1135671 e!3812533)))

(declare-fun res!2585748 () Bool)

(assert (=> d!1967267 (=> (not res!2585748) (not e!3812533))))

(assert (=> d!1967267 (= res!2585748 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))))))))

(assert (=> d!1967267 (= (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))) (h!71186 s!2326)) e!3812534)))

(declare-fun bm!529948 () Bool)

(assert (=> bm!529948 (= call!529953 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))))) (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343))))))) (h!71186 s!2326)))))

(declare-fun b!6268234 () Bool)

(assert (=> b!6268234 (= e!3812533 (nullable!6180 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343))))))))))

(declare-fun b!6268235 () Bool)

(assert (=> b!6268235 (= e!3812532 call!529953)))

(declare-fun b!6268236 () Bool)

(assert (=> b!6268236 (= e!3812534 e!3812532)))

(declare-fun c!1135672 () Bool)

(assert (=> b!6268236 (= c!1135672 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (h!71185 zl!343)))))))))

(assert (= (and d!1967267 res!2585748) b!6268234))

(assert (= (and d!1967267 c!1135671) b!6268232))

(assert (= (and d!1967267 (not c!1135671)) b!6268236))

(assert (= (and b!6268236 c!1135672) b!6268235))

(assert (= (and b!6268236 (not c!1135672)) b!6268233))

(assert (= (or b!6268232 b!6268235) bm!529948))

(declare-fun m!7090210 () Bool)

(assert (=> b!6268232 m!7090210))

(declare-fun m!7090212 () Bool)

(assert (=> bm!529948 m!7090212))

(declare-fun m!7090214 () Bool)

(assert (=> b!6268234 m!7090214))

(assert (=> b!6266602 d!1967267))

(assert (=> d!1966613 d!1967057))

(declare-fun e!3812537 () (InoxSet Context!11142))

(declare-fun call!529954 () (InoxSet Context!11142))

(declare-fun b!6268237 () Bool)

(assert (=> b!6268237 (= e!3812537 ((_ map or) call!529954 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351103)))))) (h!71186 s!2326))))))

(declare-fun b!6268238 () Bool)

(declare-fun e!3812535 () (InoxSet Context!11142))

(assert (=> b!6268238 (= e!3812535 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1967269 () Bool)

(declare-fun c!1135673 () Bool)

(declare-fun e!3812536 () Bool)

(assert (=> d!1967269 (= c!1135673 e!3812536)))

(declare-fun res!2585749 () Bool)

(assert (=> d!1967269 (=> (not res!2585749) (not e!3812536))))

(assert (=> d!1967269 (= res!2585749 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351103))))))))

(assert (=> d!1967269 (= (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 lt!2351103))) (h!71186 s!2326)) e!3812537)))

(declare-fun bm!529949 () Bool)

(assert (=> bm!529949 (= call!529954 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351103))))) (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351103)))))) (h!71186 s!2326)))))

(declare-fun b!6268239 () Bool)

(assert (=> b!6268239 (= e!3812536 (nullable!6180 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351103)))))))))

(declare-fun b!6268240 () Bool)

(assert (=> b!6268240 (= e!3812535 call!529954)))

(declare-fun b!6268241 () Bool)

(assert (=> b!6268241 (= e!3812537 e!3812535)))

(declare-fun c!1135674 () Bool)

(assert (=> b!6268241 (= c!1135674 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351103))))))))

(assert (= (and d!1967269 res!2585749) b!6268239))

(assert (= (and d!1967269 c!1135673) b!6268237))

(assert (= (and d!1967269 (not c!1135673)) b!6268241))

(assert (= (and b!6268241 c!1135674) b!6268240))

(assert (= (and b!6268241 (not c!1135674)) b!6268238))

(assert (= (or b!6268237 b!6268240) bm!529949))

(declare-fun m!7090216 () Bool)

(assert (=> b!6268237 m!7090216))

(declare-fun m!7090218 () Bool)

(assert (=> bm!529949 m!7090218))

(declare-fun m!7090220 () Bool)

(assert (=> b!6268239 m!7090220))

(assert (=> b!6266597 d!1967269))

(declare-fun e!3812540 () (InoxSet Context!11142))

(declare-fun call!529955 () (InoxSet Context!11142))

(declare-fun b!6268242 () Bool)

(assert (=> b!6268242 (= e!3812540 ((_ map or) call!529955 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))))) (h!71186 s!2326))))))

(declare-fun b!6268243 () Bool)

(declare-fun e!3812538 () (InoxSet Context!11142))

(assert (=> b!6268243 (= e!3812538 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1967271 () Bool)

(declare-fun c!1135675 () Bool)

(declare-fun e!3812539 () Bool)

(assert (=> d!1967271 (= c!1135675 e!3812539)))

(declare-fun res!2585750 () Bool)

(assert (=> d!1967271 (=> (not res!2585750) (not e!3812539))))

(assert (=> d!1967271 (= res!2585750 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))))))

(assert (=> d!1967271 (= (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))) (h!71186 s!2326)) e!3812540)))

(declare-fun bm!529950 () Bool)

(assert (=> bm!529950 (= call!529955 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))) (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))))) (h!71186 s!2326)))))

(declare-fun b!6268244 () Bool)

(assert (=> b!6268244 (= e!3812539 (nullable!6180 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343))))))))))))))

(declare-fun b!6268245 () Bool)

(assert (=> b!6268245 (= e!3812538 call!529955)))

(declare-fun b!6268246 () Bool)

(assert (=> b!6268246 (= e!3812540 e!3812538)))

(declare-fun c!1135676 () Bool)

(assert (=> b!6268246 (= c!1135676 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (Cons!64736 (h!71184 (exprs!6071 (h!71185 zl!343))) (t!378414 (exprs!6071 (h!71185 zl!343)))))))))))))

(assert (= (and d!1967271 res!2585750) b!6268244))

(assert (= (and d!1967271 c!1135675) b!6268242))

(assert (= (and d!1967271 (not c!1135675)) b!6268246))

(assert (= (and b!6268246 c!1135676) b!6268245))

(assert (= (and b!6268246 (not c!1135676)) b!6268243))

(assert (= (or b!6268242 b!6268245) bm!529950))

(declare-fun m!7090222 () Bool)

(assert (=> b!6268242 m!7090222))

(declare-fun m!7090224 () Bool)

(assert (=> bm!529950 m!7090224))

(declare-fun m!7090226 () Bool)

(assert (=> b!6268244 m!7090226))

(assert (=> b!6266592 d!1967271))

(declare-fun d!1967273 () Bool)

(assert (=> d!1967273 (= ($colon$colon!2052 (exprs!6071 lt!2351103) (ite (or c!1135185 c!1135183) (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (h!71184 (exprs!6071 (h!71185 zl!343))))) (Cons!64736 (ite (or c!1135185 c!1135183) (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))) (h!71184 (exprs!6071 (h!71185 zl!343)))) (exprs!6071 lt!2351103)))))

(assert (=> bm!529664 d!1967273))

(declare-fun c!1135678 () Bool)

(declare-fun call!529959 () (InoxSet Context!11142))

(declare-fun bm!529951 () Bool)

(declare-fun call!529961 () List!64860)

(assert (=> bm!529951 (= call!529959 (derivationStepZipperDown!1435 (ite c!1135678 (regTwo!32887 (h!71184 (exprs!6071 lt!2351109))) (regOne!32886 (h!71184 (exprs!6071 lt!2351109)))) (ite c!1135678 (Context!11143 (t!378414 (exprs!6071 lt!2351109))) (Context!11143 call!529961)) (h!71186 s!2326)))))

(declare-fun c!1135679 () Bool)

(declare-fun c!1135681 () Bool)

(declare-fun call!529956 () List!64860)

(declare-fun call!529960 () (InoxSet Context!11142))

(declare-fun bm!529952 () Bool)

(assert (=> bm!529952 (= call!529960 (derivationStepZipperDown!1435 (ite c!1135678 (regOne!32887 (h!71184 (exprs!6071 lt!2351109))) (ite c!1135681 (regTwo!32886 (h!71184 (exprs!6071 lt!2351109))) (ite c!1135679 (regOne!32886 (h!71184 (exprs!6071 lt!2351109))) (reg!16516 (h!71184 (exprs!6071 lt!2351109)))))) (ite (or c!1135678 c!1135681) (Context!11143 (t!378414 (exprs!6071 lt!2351109))) (Context!11143 call!529956)) (h!71186 s!2326)))))

(declare-fun b!6268247 () Bool)

(declare-fun c!1135680 () Bool)

(assert (=> b!6268247 (= c!1135680 ((_ is Star!16187) (h!71184 (exprs!6071 lt!2351109))))))

(declare-fun e!3812541 () (InoxSet Context!11142))

(declare-fun e!3812542 () (InoxSet Context!11142))

(assert (=> b!6268247 (= e!3812541 e!3812542)))

(declare-fun bm!529953 () Bool)

(declare-fun call!529957 () (InoxSet Context!11142))

(declare-fun call!529958 () (InoxSet Context!11142))

(assert (=> bm!529953 (= call!529957 call!529958)))

(declare-fun d!1967275 () Bool)

(declare-fun c!1135677 () Bool)

(assert (=> d!1967275 (= c!1135677 (and ((_ is ElementMatch!16187) (h!71184 (exprs!6071 lt!2351109))) (= (c!1135024 (h!71184 (exprs!6071 lt!2351109))) (h!71186 s!2326))))))

(declare-fun e!3812544 () (InoxSet Context!11142))

(assert (=> d!1967275 (= (derivationStepZipperDown!1435 (h!71184 (exprs!6071 lt!2351109)) (Context!11143 (t!378414 (exprs!6071 lt!2351109))) (h!71186 s!2326)) e!3812544)))

(declare-fun b!6268248 () Bool)

(assert (=> b!6268248 (= e!3812544 (store ((as const (Array Context!11142 Bool)) false) (Context!11143 (t!378414 (exprs!6071 lt!2351109))) true))))

(declare-fun b!6268249 () Bool)

(declare-fun e!3812546 () (InoxSet Context!11142))

(assert (=> b!6268249 (= e!3812546 ((_ map or) call!529960 call!529959))))

(declare-fun b!6268250 () Bool)

(assert (=> b!6268250 (= e!3812542 call!529957)))

(declare-fun b!6268251 () Bool)

(assert (=> b!6268251 (= e!3812544 e!3812546)))

(assert (=> b!6268251 (= c!1135678 ((_ is Union!16187) (h!71184 (exprs!6071 lt!2351109))))))

(declare-fun bm!529954 () Bool)

(assert (=> bm!529954 (= call!529958 call!529960)))

(declare-fun b!6268252 () Bool)

(declare-fun e!3812543 () (InoxSet Context!11142))

(assert (=> b!6268252 (= e!3812543 ((_ map or) call!529959 call!529958))))

(declare-fun b!6268253 () Bool)

(assert (=> b!6268253 (= e!3812542 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6268254 () Bool)

(declare-fun e!3812545 () Bool)

(assert (=> b!6268254 (= e!3812545 (nullable!6180 (regOne!32886 (h!71184 (exprs!6071 lt!2351109)))))))

(declare-fun b!6268255 () Bool)

(assert (=> b!6268255 (= e!3812541 call!529957)))

(declare-fun bm!529955 () Bool)

(assert (=> bm!529955 (= call!529956 call!529961)))

(declare-fun b!6268256 () Bool)

(assert (=> b!6268256 (= e!3812543 e!3812541)))

(assert (=> b!6268256 (= c!1135679 ((_ is Concat!25032) (h!71184 (exprs!6071 lt!2351109))))))

(declare-fun b!6268257 () Bool)

(assert (=> b!6268257 (= c!1135681 e!3812545)))

(declare-fun res!2585751 () Bool)

(assert (=> b!6268257 (=> (not res!2585751) (not e!3812545))))

(assert (=> b!6268257 (= res!2585751 ((_ is Concat!25032) (h!71184 (exprs!6071 lt!2351109))))))

(assert (=> b!6268257 (= e!3812546 e!3812543)))

(declare-fun bm!529956 () Bool)

(assert (=> bm!529956 (= call!529961 ($colon$colon!2052 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351109)))) (ite (or c!1135681 c!1135679) (regTwo!32886 (h!71184 (exprs!6071 lt!2351109))) (h!71184 (exprs!6071 lt!2351109)))))))

(assert (= (and d!1967275 c!1135677) b!6268248))

(assert (= (and d!1967275 (not c!1135677)) b!6268251))

(assert (= (and b!6268251 c!1135678) b!6268249))

(assert (= (and b!6268251 (not c!1135678)) b!6268257))

(assert (= (and b!6268257 res!2585751) b!6268254))

(assert (= (and b!6268257 c!1135681) b!6268252))

(assert (= (and b!6268257 (not c!1135681)) b!6268256))

(assert (= (and b!6268256 c!1135679) b!6268255))

(assert (= (and b!6268256 (not c!1135679)) b!6268247))

(assert (= (and b!6268247 c!1135680) b!6268250))

(assert (= (and b!6268247 (not c!1135680)) b!6268253))

(assert (= (or b!6268255 b!6268250) bm!529955))

(assert (= (or b!6268255 b!6268250) bm!529953))

(assert (= (or b!6268252 bm!529955) bm!529956))

(assert (= (or b!6268252 bm!529953) bm!529954))

(assert (= (or b!6268249 b!6268252) bm!529951))

(assert (= (or b!6268249 bm!529954) bm!529952))

(declare-fun m!7090228 () Bool)

(assert (=> bm!529951 m!7090228))

(declare-fun m!7090230 () Bool)

(assert (=> bm!529956 m!7090230))

(declare-fun m!7090232 () Bool)

(assert (=> b!6268254 m!7090232))

(declare-fun m!7090234 () Bool)

(assert (=> b!6268248 m!7090234))

(declare-fun m!7090236 () Bool)

(assert (=> bm!529952 m!7090236))

(assert (=> bm!529698 d!1967275))

(declare-fun d!1967277 () Bool)

(declare-fun res!2585752 () Bool)

(declare-fun e!3812547 () Bool)

(assert (=> d!1967277 (=> res!2585752 e!3812547)))

(assert (=> d!1967277 (= res!2585752 ((_ is Nil!64736) lt!2351259))))

(assert (=> d!1967277 (= (forall!15312 lt!2351259 lambda!343161) e!3812547)))

(declare-fun b!6268258 () Bool)

(declare-fun e!3812548 () Bool)

(assert (=> b!6268258 (= e!3812547 e!3812548)))

(declare-fun res!2585753 () Bool)

(assert (=> b!6268258 (=> (not res!2585753) (not e!3812548))))

(assert (=> b!6268258 (= res!2585753 (dynLambda!25595 lambda!343161 (h!71184 lt!2351259)))))

(declare-fun b!6268259 () Bool)

(assert (=> b!6268259 (= e!3812548 (forall!15312 (t!378414 lt!2351259) lambda!343161))))

(assert (= (and d!1967277 (not res!2585752)) b!6268258))

(assert (= (and b!6268258 res!2585753) b!6268259))

(declare-fun b_lambda!238667 () Bool)

(assert (=> (not b_lambda!238667) (not b!6268258)))

(declare-fun m!7090238 () Bool)

(assert (=> b!6268258 m!7090238))

(declare-fun m!7090240 () Bool)

(assert (=> b!6268259 m!7090240))

(assert (=> d!1966599 d!1967277))

(assert (=> d!1966513 d!1966509))

(assert (=> d!1966513 d!1967195))

(assert (=> d!1966513 d!1966517))

(declare-fun d!1967279 () Bool)

(assert (=> d!1967279 (= (Exists!3257 lambda!343118) (choose!46492 lambda!343118))))

(declare-fun bs!1564985 () Bool)

(assert (= bs!1564985 d!1967279))

(declare-fun m!7090242 () Bool)

(assert (=> bs!1564985 m!7090242))

(assert (=> d!1966513 d!1967279))

(declare-fun bs!1564986 () Bool)

(declare-fun d!1967281 () Bool)

(assert (= bs!1564986 (and d!1967281 b!6266871)))

(declare-fun lambda!343267 () Int)

(assert (=> bs!1564986 (not (= lambda!343267 lambda!343155))))

(declare-fun bs!1564987 () Bool)

(assert (= bs!1564987 (and d!1967281 b!6266040)))

(assert (=> bs!1564987 (= lambda!343267 lambda!343067)))

(declare-fun bs!1564988 () Bool)

(assert (= bs!1564988 (and d!1967281 b!6266877)))

(assert (=> bs!1564988 (not (= lambda!343267 lambda!343154))))

(declare-fun bs!1564989 () Bool)

(assert (= bs!1564989 (and d!1967281 d!1966515)))

(assert (=> bs!1564989 (not (= lambda!343267 lambda!343124))))

(declare-fun bs!1564990 () Bool)

(assert (= bs!1564990 (and d!1967281 d!1966513)))

(assert (=> bs!1564990 (= lambda!343267 lambda!343118)))

(assert (=> bs!1564989 (= lambda!343267 lambda!343123)))

(assert (=> bs!1564987 (not (= lambda!343267 lambda!343068))))

(assert (=> d!1967281 true))

(assert (=> d!1967281 true))

(assert (=> d!1967281 true))

(assert (=> d!1967281 (= (isDefined!12781 (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) Nil!64738 s!2326 s!2326)) (Exists!3257 lambda!343267))))

(assert (=> d!1967281 true))

(declare-fun _$89!2461 () Unit!158079)

(assert (=> d!1967281 (= (choose!46494 (regOne!32886 r!7292) (regTwo!32886 r!7292) s!2326) _$89!2461)))

(declare-fun bs!1564991 () Bool)

(assert (= bs!1564991 d!1967281))

(assert (=> bs!1564991 m!7088042))

(assert (=> bs!1564991 m!7088042))

(assert (=> bs!1564991 m!7088044))

(declare-fun m!7090244 () Bool)

(assert (=> bs!1564991 m!7090244))

(assert (=> d!1966513 d!1967281))

(declare-fun d!1967283 () Bool)

(assert (=> d!1967283 (= (nullable!6180 r!7292) (nullableFct!2132 r!7292))))

(declare-fun bs!1564992 () Bool)

(assert (= bs!1564992 d!1967283))

(declare-fun m!7090246 () Bool)

(assert (=> bs!1564992 m!7090246))

(assert (=> b!6266890 d!1967283))

(declare-fun d!1967285 () Bool)

(assert (=> d!1967285 (= (flatMap!1692 lt!2351105 lambda!343148) (choose!46489 lt!2351105 lambda!343148))))

(declare-fun bs!1564993 () Bool)

(assert (= bs!1564993 d!1967285))

(declare-fun m!7090248 () Bool)

(assert (=> bs!1564993 m!7090248))

(assert (=> d!1966565 d!1967285))

(declare-fun d!1967287 () Bool)

(declare-fun c!1135682 () Bool)

(assert (=> d!1967287 (= c!1135682 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812551 () Bool)

(assert (=> d!1967287 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351108 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812551)))

(declare-fun b!6268264 () Bool)

(assert (=> b!6268264 (= e!3812551 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351108 (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6268265 () Bool)

(assert (=> b!6268265 (= e!3812551 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351108 (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967287 c!1135682) b!6268264))

(assert (= (and d!1967287 (not c!1135682)) b!6268265))

(assert (=> d!1967287 m!7088704))

(assert (=> d!1967287 m!7089810))

(assert (=> b!6268264 m!7088816))

(declare-fun m!7090250 () Bool)

(assert (=> b!6268264 m!7090250))

(assert (=> b!6268265 m!7088704))

(assert (=> b!6268265 m!7089814))

(assert (=> b!6268265 m!7088816))

(assert (=> b!6268265 m!7089814))

(declare-fun m!7090252 () Bool)

(assert (=> b!6268265 m!7090252))

(assert (=> b!6268265 m!7088704))

(assert (=> b!6268265 m!7089818))

(assert (=> b!6268265 m!7090252))

(assert (=> b!6268265 m!7089818))

(declare-fun m!7090254 () Bool)

(assert (=> b!6268265 m!7090254))

(assert (=> b!6266958 d!1967287))

(declare-fun bs!1564994 () Bool)

(declare-fun d!1967289 () Bool)

(assert (= bs!1564994 (and d!1967289 d!1966565)))

(declare-fun lambda!343268 () Int)

(assert (=> bs!1564994 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343268 lambda!343148))))

(declare-fun bs!1564995 () Bool)

(assert (= bs!1564995 (and d!1967289 d!1967131)))

(assert (=> bs!1564995 (= (= (head!12874 (t!378416 s!2326)) (head!12874 s!2326)) (= lambda!343268 lambda!343244))))

(declare-fun bs!1564996 () Bool)

(assert (= bs!1564996 (and d!1967289 d!1967101)))

(assert (=> bs!1564996 (= lambda!343268 lambda!343242)))

(declare-fun bs!1564997 () Bool)

(assert (= bs!1564997 (and d!1967289 d!1967235)))

(assert (=> bs!1564997 (= lambda!343268 lambda!343258)))

(declare-fun bs!1564998 () Bool)

(assert (= bs!1564998 (and d!1967289 d!1966549)))

(assert (=> bs!1564998 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343268 lambda!343147))))

(declare-fun bs!1564999 () Bool)

(assert (= bs!1564999 (and d!1967289 d!1967135)))

(assert (=> bs!1564999 (= lambda!343268 lambda!343245)))

(declare-fun bs!1565000 () Bool)

(assert (= bs!1565000 (and d!1967289 d!1967169)))

(assert (=> bs!1565000 (= lambda!343268 lambda!343248)))

(declare-fun bs!1565001 () Bool)

(assert (= bs!1565001 (and d!1967289 b!6266061)))

(assert (=> bs!1565001 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343268 lambda!343069))))

(assert (=> d!1967289 true))

(assert (=> d!1967289 (= (derivationStepZipper!2153 lt!2351108 (head!12874 (t!378416 s!2326))) (flatMap!1692 lt!2351108 lambda!343268))))

(declare-fun bs!1565002 () Bool)

(assert (= bs!1565002 d!1967289))

(declare-fun m!7090256 () Bool)

(assert (=> bs!1565002 m!7090256))

(assert (=> b!6266958 d!1967289))

(assert (=> b!6266958 d!1967103))

(assert (=> b!6266958 d!1967105))

(assert (=> d!1966587 d!1966589))

(assert (=> d!1966587 d!1966579))

(declare-fun d!1967291 () Bool)

(declare-fun e!3812552 () Bool)

(assert (=> d!1967291 (= (matchZipper!2199 ((_ map or) lt!2351090 lt!2351084) (t!378416 s!2326)) e!3812552)))

(declare-fun res!2585758 () Bool)

(assert (=> d!1967291 (=> res!2585758 e!3812552)))

(assert (=> d!1967291 (= res!2585758 (matchZipper!2199 lt!2351090 (t!378416 s!2326)))))

(assert (=> d!1967291 true))

(declare-fun _$48!2013 () Unit!158079)

(assert (=> d!1967291 (= (choose!46499 lt!2351090 lt!2351084 (t!378416 s!2326)) _$48!2013)))

(declare-fun b!6268266 () Bool)

(assert (=> b!6268266 (= e!3812552 (matchZipper!2199 lt!2351084 (t!378416 s!2326)))))

(assert (= (and d!1967291 (not res!2585758)) b!6268266))

(assert (=> d!1967291 m!7088028))

(assert (=> d!1967291 m!7087928))

(assert (=> b!6268266 m!7088010))

(assert (=> d!1966587 d!1967291))

(declare-fun d!1967293 () Bool)

(declare-fun c!1135683 () Bool)

(assert (=> d!1967293 (= c!1135683 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812553 () Bool)

(assert (=> d!1967293 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351102 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812553)))

(declare-fun b!6268267 () Bool)

(assert (=> b!6268267 (= e!3812553 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351102 (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6268268 () Bool)

(assert (=> b!6268268 (= e!3812553 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351102 (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967293 c!1135683) b!6268267))

(assert (= (and d!1967293 (not c!1135683)) b!6268268))

(assert (=> d!1967293 m!7088704))

(assert (=> d!1967293 m!7089810))

(assert (=> b!6268267 m!7088748))

(declare-fun m!7090258 () Bool)

(assert (=> b!6268267 m!7090258))

(assert (=> b!6268268 m!7088704))

(assert (=> b!6268268 m!7089814))

(assert (=> b!6268268 m!7088748))

(assert (=> b!6268268 m!7089814))

(declare-fun m!7090260 () Bool)

(assert (=> b!6268268 m!7090260))

(assert (=> b!6268268 m!7088704))

(assert (=> b!6268268 m!7089818))

(assert (=> b!6268268 m!7090260))

(assert (=> b!6268268 m!7089818))

(declare-fun m!7090262 () Bool)

(assert (=> b!6268268 m!7090262))

(assert (=> b!6266897 d!1967293))

(declare-fun bs!1565003 () Bool)

(declare-fun d!1967295 () Bool)

(assert (= bs!1565003 (and d!1967295 d!1966565)))

(declare-fun lambda!343269 () Int)

(assert (=> bs!1565003 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343269 lambda!343148))))

(declare-fun bs!1565004 () Bool)

(assert (= bs!1565004 (and d!1967295 d!1967131)))

(assert (=> bs!1565004 (= (= (head!12874 (t!378416 s!2326)) (head!12874 s!2326)) (= lambda!343269 lambda!343244))))

(declare-fun bs!1565005 () Bool)

(assert (= bs!1565005 (and d!1967295 d!1967101)))

(assert (=> bs!1565005 (= lambda!343269 lambda!343242)))

(declare-fun bs!1565006 () Bool)

(assert (= bs!1565006 (and d!1967295 d!1967235)))

(assert (=> bs!1565006 (= lambda!343269 lambda!343258)))

(declare-fun bs!1565007 () Bool)

(assert (= bs!1565007 (and d!1967295 d!1966549)))

(assert (=> bs!1565007 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343269 lambda!343147))))

(declare-fun bs!1565008 () Bool)

(assert (= bs!1565008 (and d!1967295 d!1967169)))

(assert (=> bs!1565008 (= lambda!343269 lambda!343248)))

(declare-fun bs!1565009 () Bool)

(assert (= bs!1565009 (and d!1967295 b!6266061)))

(assert (=> bs!1565009 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343269 lambda!343069))))

(declare-fun bs!1565010 () Bool)

(assert (= bs!1565010 (and d!1967295 d!1967289)))

(assert (=> bs!1565010 (= lambda!343269 lambda!343268)))

(declare-fun bs!1565011 () Bool)

(assert (= bs!1565011 (and d!1967295 d!1967135)))

(assert (=> bs!1565011 (= lambda!343269 lambda!343245)))

(assert (=> d!1967295 true))

(assert (=> d!1967295 (= (derivationStepZipper!2153 lt!2351102 (head!12874 (t!378416 s!2326))) (flatMap!1692 lt!2351102 lambda!343269))))

(declare-fun bs!1565012 () Bool)

(assert (= bs!1565012 d!1967295))

(declare-fun m!7090264 () Bool)

(assert (=> bs!1565012 m!7090264))

(assert (=> b!6266897 d!1967295))

(assert (=> b!6266897 d!1967103))

(assert (=> b!6266897 d!1967105))

(declare-fun d!1967297 () Bool)

(declare-fun res!2585759 () Bool)

(declare-fun e!3812554 () Bool)

(assert (=> d!1967297 (=> res!2585759 e!3812554)))

(assert (=> d!1967297 (= res!2585759 ((_ is Nil!64736) (exprs!6071 setElem!42608)))))

(assert (=> d!1967297 (= (forall!15312 (exprs!6071 setElem!42608) lambda!343149) e!3812554)))

(declare-fun b!6268269 () Bool)

(declare-fun e!3812555 () Bool)

(assert (=> b!6268269 (= e!3812554 e!3812555)))

(declare-fun res!2585760 () Bool)

(assert (=> b!6268269 (=> (not res!2585760) (not e!3812555))))

(assert (=> b!6268269 (= res!2585760 (dynLambda!25595 lambda!343149 (h!71184 (exprs!6071 setElem!42608))))))

(declare-fun b!6268270 () Bool)

(assert (=> b!6268270 (= e!3812555 (forall!15312 (t!378414 (exprs!6071 setElem!42608)) lambda!343149))))

(assert (= (and d!1967297 (not res!2585759)) b!6268269))

(assert (= (and b!6268269 res!2585760) b!6268270))

(declare-fun b_lambda!238669 () Bool)

(assert (=> (not b_lambda!238669) (not b!6268269)))

(declare-fun m!7090266 () Bool)

(assert (=> b!6268269 m!7090266))

(declare-fun m!7090268 () Bool)

(assert (=> b!6268270 m!7090268))

(assert (=> d!1966567 d!1967297))

(declare-fun d!1967299 () Bool)

(assert (=> d!1967299 (= (head!12875 (exprs!6071 (h!71185 zl!343))) (h!71184 (exprs!6071 (h!71185 zl!343))))))

(assert (=> b!6266790 d!1967299))

(assert (=> d!1966609 d!1967057))

(assert (=> d!1966589 d!1967057))

(assert (=> b!6266750 d!1967109))

(declare-fun d!1967301 () Bool)

(declare-fun c!1135684 () Bool)

(assert (=> d!1967301 (= c!1135684 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812556 () Bool)

(assert (=> d!1967301 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351083 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812556)))

(declare-fun b!6268271 () Bool)

(assert (=> b!6268271 (= e!3812556 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351083 (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6268272 () Bool)

(assert (=> b!6268272 (= e!3812556 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351083 (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967301 c!1135684) b!6268271))

(assert (= (and d!1967301 (not c!1135684)) b!6268272))

(assert (=> d!1967301 m!7088704))

(assert (=> d!1967301 m!7089810))

(assert (=> b!6268271 m!7088830))

(declare-fun m!7090270 () Bool)

(assert (=> b!6268271 m!7090270))

(assert (=> b!6268272 m!7088704))

(assert (=> b!6268272 m!7089814))

(assert (=> b!6268272 m!7088830))

(assert (=> b!6268272 m!7089814))

(declare-fun m!7090272 () Bool)

(assert (=> b!6268272 m!7090272))

(assert (=> b!6268272 m!7088704))

(assert (=> b!6268272 m!7089818))

(assert (=> b!6268272 m!7090272))

(assert (=> b!6268272 m!7089818))

(declare-fun m!7090274 () Bool)

(assert (=> b!6268272 m!7090274))

(assert (=> b!6266962 d!1967301))

(declare-fun bs!1565013 () Bool)

(declare-fun d!1967303 () Bool)

(assert (= bs!1565013 (and d!1967303 d!1966565)))

(declare-fun lambda!343270 () Int)

(assert (=> bs!1565013 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343270 lambda!343148))))

(declare-fun bs!1565014 () Bool)

(assert (= bs!1565014 (and d!1967303 d!1967131)))

(assert (=> bs!1565014 (= (= (head!12874 (t!378416 s!2326)) (head!12874 s!2326)) (= lambda!343270 lambda!343244))))

(declare-fun bs!1565015 () Bool)

(assert (= bs!1565015 (and d!1967303 d!1967101)))

(assert (=> bs!1565015 (= lambda!343270 lambda!343242)))

(declare-fun bs!1565016 () Bool)

(assert (= bs!1565016 (and d!1967303 d!1967235)))

(assert (=> bs!1565016 (= lambda!343270 lambda!343258)))

(declare-fun bs!1565017 () Bool)

(assert (= bs!1565017 (and d!1967303 d!1966549)))

(assert (=> bs!1565017 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343270 lambda!343147))))

(declare-fun bs!1565018 () Bool)

(assert (= bs!1565018 (and d!1967303 d!1967295)))

(assert (=> bs!1565018 (= lambda!343270 lambda!343269)))

(declare-fun bs!1565019 () Bool)

(assert (= bs!1565019 (and d!1967303 d!1967169)))

(assert (=> bs!1565019 (= lambda!343270 lambda!343248)))

(declare-fun bs!1565020 () Bool)

(assert (= bs!1565020 (and d!1967303 b!6266061)))

(assert (=> bs!1565020 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343270 lambda!343069))))

(declare-fun bs!1565021 () Bool)

(assert (= bs!1565021 (and d!1967303 d!1967289)))

(assert (=> bs!1565021 (= lambda!343270 lambda!343268)))

(declare-fun bs!1565022 () Bool)

(assert (= bs!1565022 (and d!1967303 d!1967135)))

(assert (=> bs!1565022 (= lambda!343270 lambda!343245)))

(assert (=> d!1967303 true))

(assert (=> d!1967303 (= (derivationStepZipper!2153 lt!2351083 (head!12874 (t!378416 s!2326))) (flatMap!1692 lt!2351083 lambda!343270))))

(declare-fun bs!1565023 () Bool)

(assert (= bs!1565023 d!1967303))

(declare-fun m!7090276 () Bool)

(assert (=> bs!1565023 m!7090276))

(assert (=> b!6266962 d!1967303))

(assert (=> b!6266962 d!1967103))

(assert (=> b!6266962 d!1967105))

(declare-fun d!1967305 () Bool)

(assert (=> d!1967305 (= (isEmptyExpr!1593 lt!2351209) ((_ is EmptyExpr!16187) lt!2351209))))

(assert (=> b!6266701 d!1967305))

(declare-fun d!1967307 () Bool)

(assert (=> d!1967307 (= (nullable!6180 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))) (nullableFct!2132 (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))))))

(declare-fun bs!1565024 () Bool)

(assert (= bs!1565024 d!1967307))

(declare-fun m!7090278 () Bool)

(assert (=> bs!1565024 m!7090278))

(assert (=> b!6266578 d!1967307))

(declare-fun d!1967309 () Bool)

(assert (=> d!1967309 true))

(assert (=> d!1967309 true))

(declare-fun res!2585761 () Bool)

(assert (=> d!1967309 (= (choose!46492 lambda!343068) res!2585761)))

(assert (=> d!1966511 d!1967309))

(declare-fun d!1967311 () Bool)

(assert (=> d!1967311 (= (isEmpty!36766 (t!378414 lt!2351079)) ((_ is Nil!64736) (t!378414 lt!2351079)))))

(assert (=> b!6266712 d!1967311))

(declare-fun bs!1565025 () Bool)

(declare-fun d!1967313 () Bool)

(assert (= bs!1565025 (and d!1967313 d!1967183)))

(declare-fun lambda!343271 () Int)

(assert (=> bs!1565025 (= lambda!343271 lambda!343253)))

(declare-fun bs!1565026 () Bool)

(assert (= bs!1565026 (and d!1967313 d!1967251)))

(assert (=> bs!1565026 (not (= lambda!343271 lambda!343259))))

(declare-fun bs!1565027 () Bool)

(assert (= bs!1565027 (and d!1967313 d!1967147)))

(assert (=> bs!1565027 (= lambda!343271 lambda!343246)))

(declare-fun bs!1565028 () Bool)

(assert (= bs!1565028 (and d!1967313 b!6266772)))

(assert (=> bs!1565028 (not (= lambda!343271 lambda!343142))))

(declare-fun bs!1565029 () Bool)

(assert (= bs!1565029 (and d!1967313 b!6267918)))

(assert (=> bs!1565029 (not (= lambda!343271 lambda!343233))))

(declare-fun bs!1565030 () Bool)

(assert (= bs!1565030 (and d!1967313 d!1967161)))

(assert (=> bs!1565030 (= lambda!343271 lambda!343247)))

(declare-fun bs!1565031 () Bool)

(assert (= bs!1565031 (and d!1967313 b!6266769)))

(assert (=> bs!1565031 (not (= lambda!343271 lambda!343140))))

(declare-fun bs!1565032 () Bool)

(assert (= bs!1565032 (and d!1967313 d!1967035)))

(assert (=> bs!1565032 (= lambda!343271 lambda!343228)))

(declare-fun bs!1565033 () Bool)

(assert (= bs!1565033 (and d!1967313 d!1967181)))

(assert (=> bs!1565033 (= lambda!343271 lambda!343252)))

(declare-fun bs!1565034 () Bool)

(assert (= bs!1565034 (and d!1967313 b!6268222)))

(assert (=> bs!1565034 (not (= lambda!343271 lambda!343264))))

(declare-fun bs!1565035 () Bool)

(assert (= bs!1565035 (and d!1967313 b!6266767)))

(assert (=> bs!1565035 (not (= lambda!343271 lambda!343139))))

(declare-fun bs!1565036 () Bool)

(assert (= bs!1565036 (and d!1967313 b!6266774)))

(assert (=> bs!1565036 (not (= lambda!343271 lambda!343143))))

(declare-fun bs!1565037 () Bool)

(assert (= bs!1565037 (and d!1967313 b!6268220)))

(assert (=> bs!1565037 (not (= lambda!343271 lambda!343263))))

(declare-fun bs!1565038 () Bool)

(assert (= bs!1565038 (and d!1967313 d!1967091)))

(assert (=> bs!1565038 (= lambda!343271 lambda!343241)))

(declare-fun bs!1565039 () Bool)

(assert (= bs!1565039 (and d!1967313 d!1967221)))

(assert (=> bs!1565039 (= lambda!343271 lambda!343257)))

(declare-fun bs!1565040 () Bool)

(assert (= bs!1565040 (and d!1967313 b!6267920)))

(assert (=> bs!1565040 (not (= lambda!343271 lambda!343234))))

(declare-fun bs!1565041 () Bool)

(assert (= bs!1565041 (and d!1967313 d!1967219)))

(assert (=> bs!1565041 (= lambda!343271 lambda!343256)))

(declare-fun bs!1565042 () Bool)

(assert (= bs!1565042 (and d!1967313 d!1967077)))

(assert (=> bs!1565042 (not (= lambda!343271 lambda!343231))))

(assert (=> d!1967313 (= (nullableZipper!1957 lt!2351090) (exists!2521 lt!2351090 lambda!343271))))

(declare-fun bs!1565043 () Bool)

(assert (= bs!1565043 d!1967313))

(declare-fun m!7090280 () Bool)

(assert (=> bs!1565043 m!7090280))

(assert (=> b!6266892 d!1967313))

(assert (=> d!1966583 d!1967057))

(declare-fun d!1967315 () Bool)

(assert (=> d!1967315 (= (isEmptyExpr!1593 lt!2351233) ((_ is EmptyExpr!16187) lt!2351233))))

(assert (=> b!6266786 d!1967315))

(assert (=> b!6266901 d!1966619))

(assert (=> bs!1564097 d!1966553))

(declare-fun d!1967317 () Bool)

(assert (=> d!1967317 (= (head!12875 (unfocusZipperList!1608 zl!343)) (h!71184 (unfocusZipperList!1608 zl!343)))))

(assert (=> b!6266940 d!1967317))

(declare-fun b!6268273 () Bool)

(declare-fun e!3812562 () Bool)

(declare-fun lt!2351391 () Bool)

(declare-fun call!529962 () Bool)

(assert (=> b!6268273 (= e!3812562 (= lt!2351391 call!529962))))

(declare-fun b!6268274 () Bool)

(declare-fun e!3812558 () Bool)

(assert (=> b!6268274 (= e!3812558 (not lt!2351391))))

(declare-fun b!6268275 () Bool)

(declare-fun res!2585767 () Bool)

(declare-fun e!3812560 () Bool)

(assert (=> b!6268275 (=> res!2585767 e!3812560)))

(assert (=> b!6268275 (= res!2585767 (not ((_ is ElementMatch!16187) (regTwo!32886 r!7292))))))

(assert (=> b!6268275 (= e!3812558 e!3812560)))

(declare-fun b!6268276 () Bool)

(declare-fun e!3812559 () Bool)

(assert (=> b!6268276 (= e!3812559 (= (head!12874 (_2!36469 (get!22370 lt!2351198))) (c!1135024 (regTwo!32886 r!7292))))))

(declare-fun b!6268277 () Bool)

(declare-fun res!2585762 () Bool)

(assert (=> b!6268277 (=> (not res!2585762) (not e!3812559))))

(assert (=> b!6268277 (= res!2585762 (not call!529962))))

(declare-fun b!6268279 () Bool)

(declare-fun res!2585769 () Bool)

(assert (=> b!6268279 (=> (not res!2585769) (not e!3812559))))

(assert (=> b!6268279 (= res!2585769 (isEmpty!36771 (tail!11959 (_2!36469 (get!22370 lt!2351198)))))))

(declare-fun b!6268280 () Bool)

(declare-fun e!3812557 () Bool)

(declare-fun e!3812561 () Bool)

(assert (=> b!6268280 (= e!3812557 e!3812561)))

(declare-fun res!2585768 () Bool)

(assert (=> b!6268280 (=> res!2585768 e!3812561)))

(assert (=> b!6268280 (= res!2585768 call!529962)))

(declare-fun b!6268281 () Bool)

(declare-fun e!3812563 () Bool)

(assert (=> b!6268281 (= e!3812563 (matchR!8370 (derivativeStep!4896 (regTwo!32886 r!7292) (head!12874 (_2!36469 (get!22370 lt!2351198)))) (tail!11959 (_2!36469 (get!22370 lt!2351198)))))))

(declare-fun b!6268282 () Bool)

(assert (=> b!6268282 (= e!3812561 (not (= (head!12874 (_2!36469 (get!22370 lt!2351198))) (c!1135024 (regTwo!32886 r!7292)))))))

(declare-fun b!6268283 () Bool)

(declare-fun res!2585765 () Bool)

(assert (=> b!6268283 (=> res!2585765 e!3812560)))

(assert (=> b!6268283 (= res!2585765 e!3812559)))

(declare-fun res!2585763 () Bool)

(assert (=> b!6268283 (=> (not res!2585763) (not e!3812559))))

(assert (=> b!6268283 (= res!2585763 lt!2351391)))

(declare-fun b!6268284 () Bool)

(declare-fun res!2585766 () Bool)

(assert (=> b!6268284 (=> res!2585766 e!3812561)))

(assert (=> b!6268284 (= res!2585766 (not (isEmpty!36771 (tail!11959 (_2!36469 (get!22370 lt!2351198))))))))

(declare-fun b!6268285 () Bool)

(assert (=> b!6268285 (= e!3812563 (nullable!6180 (regTwo!32886 r!7292)))))

(declare-fun bm!529957 () Bool)

(assert (=> bm!529957 (= call!529962 (isEmpty!36771 (_2!36469 (get!22370 lt!2351198))))))

(declare-fun b!6268286 () Bool)

(assert (=> b!6268286 (= e!3812560 e!3812557)))

(declare-fun res!2585764 () Bool)

(assert (=> b!6268286 (=> (not res!2585764) (not e!3812557))))

(assert (=> b!6268286 (= res!2585764 (not lt!2351391))))

(declare-fun d!1967319 () Bool)

(assert (=> d!1967319 e!3812562))

(declare-fun c!1135687 () Bool)

(assert (=> d!1967319 (= c!1135687 ((_ is EmptyExpr!16187) (regTwo!32886 r!7292)))))

(assert (=> d!1967319 (= lt!2351391 e!3812563)))

(declare-fun c!1135686 () Bool)

(assert (=> d!1967319 (= c!1135686 (isEmpty!36771 (_2!36469 (get!22370 lt!2351198))))))

(assert (=> d!1967319 (validRegex!7923 (regTwo!32886 r!7292))))

(assert (=> d!1967319 (= (matchR!8370 (regTwo!32886 r!7292) (_2!36469 (get!22370 lt!2351198))) lt!2351391)))

(declare-fun b!6268278 () Bool)

(assert (=> b!6268278 (= e!3812562 e!3812558)))

(declare-fun c!1135685 () Bool)

(assert (=> b!6268278 (= c!1135685 ((_ is EmptyLang!16187) (regTwo!32886 r!7292)))))

(assert (= (and d!1967319 c!1135686) b!6268285))

(assert (= (and d!1967319 (not c!1135686)) b!6268281))

(assert (= (and d!1967319 c!1135687) b!6268273))

(assert (= (and d!1967319 (not c!1135687)) b!6268278))

(assert (= (and b!6268278 c!1135685) b!6268274))

(assert (= (and b!6268278 (not c!1135685)) b!6268275))

(assert (= (and b!6268275 (not res!2585767)) b!6268283))

(assert (= (and b!6268283 res!2585763) b!6268277))

(assert (= (and b!6268277 res!2585762) b!6268279))

(assert (= (and b!6268279 res!2585769) b!6268276))

(assert (= (and b!6268283 (not res!2585765)) b!6268286))

(assert (= (and b!6268286 res!2585764) b!6268280))

(assert (= (and b!6268280 (not res!2585768)) b!6268284))

(assert (= (and b!6268284 (not res!2585766)) b!6268282))

(assert (= (or b!6268273 b!6268277 b!6268280) bm!529957))

(declare-fun m!7090282 () Bool)

(assert (=> d!1967319 m!7090282))

(assert (=> d!1967319 m!7089834))

(declare-fun m!7090284 () Bool)

(assert (=> b!6268284 m!7090284))

(assert (=> b!6268284 m!7090284))

(declare-fun m!7090286 () Bool)

(assert (=> b!6268284 m!7090286))

(assert (=> b!6268279 m!7090284))

(assert (=> b!6268279 m!7090284))

(assert (=> b!6268279 m!7090286))

(assert (=> b!6268285 m!7089836))

(assert (=> bm!529957 m!7090282))

(declare-fun m!7090288 () Bool)

(assert (=> b!6268276 m!7090288))

(assert (=> b!6268281 m!7090288))

(assert (=> b!6268281 m!7090288))

(declare-fun m!7090290 () Bool)

(assert (=> b!6268281 m!7090290))

(assert (=> b!6268281 m!7090284))

(assert (=> b!6268281 m!7090290))

(assert (=> b!6268281 m!7090284))

(declare-fun m!7090292 () Bool)

(assert (=> b!6268281 m!7090292))

(assert (=> b!6268282 m!7090288))

(assert (=> b!6266630 d!1967319))

(assert (=> b!6266630 d!1967047))

(assert (=> b!6266881 d!1967109))

(declare-fun b!6268287 () Bool)

(declare-fun e!3812564 () Bool)

(declare-fun e!3812568 () Bool)

(assert (=> b!6268287 (= e!3812564 e!3812568)))

(declare-fun res!2585771 () Bool)

(assert (=> b!6268287 (=> (not res!2585771) (not e!3812568))))

(declare-fun call!529965 () Bool)

(assert (=> b!6268287 (= res!2585771 call!529965)))

(declare-fun b!6268288 () Bool)

(declare-fun res!2585773 () Bool)

(assert (=> b!6268288 (=> res!2585773 e!3812564)))

(assert (=> b!6268288 (= res!2585773 (not ((_ is Concat!25032) (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292)))))))

(declare-fun e!3812567 () Bool)

(assert (=> b!6268288 (= e!3812567 e!3812564)))

(declare-fun b!6268289 () Bool)

(declare-fun e!3812565 () Bool)

(declare-fun e!3812569 () Bool)

(assert (=> b!6268289 (= e!3812565 e!3812569)))

(declare-fun c!1135688 () Bool)

(assert (=> b!6268289 (= c!1135688 ((_ is Star!16187) (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))))))

(declare-fun d!1967321 () Bool)

(declare-fun res!2585774 () Bool)

(assert (=> d!1967321 (=> res!2585774 e!3812565)))

(assert (=> d!1967321 (= res!2585774 ((_ is ElementMatch!16187) (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))))))

(assert (=> d!1967321 (= (validRegex!7923 (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))) e!3812565)))

(declare-fun b!6268290 () Bool)

(declare-fun e!3812570 () Bool)

(declare-fun call!529964 () Bool)

(assert (=> b!6268290 (= e!3812570 call!529964)))

(declare-fun bm!529958 () Bool)

(declare-fun call!529963 () Bool)

(assert (=> bm!529958 (= call!529965 call!529963)))

(declare-fun b!6268291 () Bool)

(assert (=> b!6268291 (= e!3812569 e!3812567)))

(declare-fun c!1135689 () Bool)

(assert (=> b!6268291 (= c!1135689 ((_ is Union!16187) (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))))))

(declare-fun bm!529959 () Bool)

(assert (=> bm!529959 (= call!529964 (validRegex!7923 (ite c!1135689 (regTwo!32887 (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))) (regTwo!32886 (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))))))))

(declare-fun bm!529960 () Bool)

(assert (=> bm!529960 (= call!529963 (validRegex!7923 (ite c!1135688 (reg!16516 (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))) (ite c!1135689 (regOne!32887 (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))) (regOne!32886 (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292)))))))))

(declare-fun b!6268292 () Bool)

(declare-fun res!2585772 () Bool)

(assert (=> b!6268292 (=> (not res!2585772) (not e!3812570))))

(assert (=> b!6268292 (= res!2585772 call!529965)))

(assert (=> b!6268292 (= e!3812567 e!3812570)))

(declare-fun b!6268293 () Bool)

(assert (=> b!6268293 (= e!3812568 call!529964)))

(declare-fun b!6268294 () Bool)

(declare-fun e!3812566 () Bool)

(assert (=> b!6268294 (= e!3812569 e!3812566)))

(declare-fun res!2585770 () Bool)

(assert (=> b!6268294 (= res!2585770 (not (nullable!6180 (reg!16516 (ite c!1135247 (regTwo!32887 r!7292) (regTwo!32886 r!7292))))))))

(assert (=> b!6268294 (=> (not res!2585770) (not e!3812566))))

(declare-fun b!6268295 () Bool)

(assert (=> b!6268295 (= e!3812566 call!529963)))

(assert (= (and d!1967321 (not res!2585774)) b!6268289))

(assert (= (and b!6268289 c!1135688) b!6268294))

(assert (= (and b!6268289 (not c!1135688)) b!6268291))

(assert (= (and b!6268294 res!2585770) b!6268295))

(assert (= (and b!6268291 c!1135689) b!6268292))

(assert (= (and b!6268291 (not c!1135689)) b!6268288))

(assert (= (and b!6268292 res!2585772) b!6268290))

(assert (= (and b!6268288 (not res!2585773)) b!6268287))

(assert (= (and b!6268287 res!2585771) b!6268293))

(assert (= (or b!6268290 b!6268293) bm!529959))

(assert (= (or b!6268292 b!6268287) bm!529958))

(assert (= (or b!6268295 bm!529958) bm!529960))

(declare-fun m!7090294 () Bool)

(assert (=> bm!529959 m!7090294))

(declare-fun m!7090296 () Bool)

(assert (=> bm!529960 m!7090296))

(declare-fun m!7090298 () Bool)

(assert (=> b!6268294 m!7090298))

(assert (=> bm!529683 d!1967321))

(declare-fun d!1967323 () Bool)

(declare-fun c!1135690 () Bool)

(assert (=> d!1967323 (= c!1135690 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812571 () Bool)

(assert (=> d!1967323 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351099 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812571)))

(declare-fun b!6268296 () Bool)

(assert (=> b!6268296 (= e!3812571 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351099 (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6268297 () Bool)

(assert (=> b!6268297 (= e!3812571 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351099 (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967323 c!1135690) b!6268296))

(assert (= (and d!1967323 (not c!1135690)) b!6268297))

(assert (=> d!1967323 m!7088704))

(assert (=> d!1967323 m!7089810))

(assert (=> b!6268296 m!7088822))

(declare-fun m!7090300 () Bool)

(assert (=> b!6268296 m!7090300))

(assert (=> b!6268297 m!7088704))

(assert (=> b!6268297 m!7089814))

(assert (=> b!6268297 m!7088822))

(assert (=> b!6268297 m!7089814))

(declare-fun m!7090302 () Bool)

(assert (=> b!6268297 m!7090302))

(assert (=> b!6268297 m!7088704))

(assert (=> b!6268297 m!7089818))

(assert (=> b!6268297 m!7090302))

(assert (=> b!6268297 m!7089818))

(declare-fun m!7090304 () Bool)

(assert (=> b!6268297 m!7090304))

(assert (=> b!6266960 d!1967323))

(declare-fun bs!1565044 () Bool)

(declare-fun d!1967325 () Bool)

(assert (= bs!1565044 (and d!1967325 d!1966565)))

(declare-fun lambda!343272 () Int)

(assert (=> bs!1565044 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343272 lambda!343148))))

(declare-fun bs!1565045 () Bool)

(assert (= bs!1565045 (and d!1967325 d!1967131)))

(assert (=> bs!1565045 (= (= (head!12874 (t!378416 s!2326)) (head!12874 s!2326)) (= lambda!343272 lambda!343244))))

(declare-fun bs!1565046 () Bool)

(assert (= bs!1565046 (and d!1967325 d!1967303)))

(assert (=> bs!1565046 (= lambda!343272 lambda!343270)))

(declare-fun bs!1565047 () Bool)

(assert (= bs!1565047 (and d!1967325 d!1967101)))

(assert (=> bs!1565047 (= lambda!343272 lambda!343242)))

(declare-fun bs!1565048 () Bool)

(assert (= bs!1565048 (and d!1967325 d!1967235)))

(assert (=> bs!1565048 (= lambda!343272 lambda!343258)))

(declare-fun bs!1565049 () Bool)

(assert (= bs!1565049 (and d!1967325 d!1966549)))

(assert (=> bs!1565049 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343272 lambda!343147))))

(declare-fun bs!1565050 () Bool)

(assert (= bs!1565050 (and d!1967325 d!1967295)))

(assert (=> bs!1565050 (= lambda!343272 lambda!343269)))

(declare-fun bs!1565051 () Bool)

(assert (= bs!1565051 (and d!1967325 d!1967169)))

(assert (=> bs!1565051 (= lambda!343272 lambda!343248)))

(declare-fun bs!1565052 () Bool)

(assert (= bs!1565052 (and d!1967325 b!6266061)))

(assert (=> bs!1565052 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343272 lambda!343069))))

(declare-fun bs!1565053 () Bool)

(assert (= bs!1565053 (and d!1967325 d!1967289)))

(assert (=> bs!1565053 (= lambda!343272 lambda!343268)))

(declare-fun bs!1565054 () Bool)

(assert (= bs!1565054 (and d!1967325 d!1967135)))

(assert (=> bs!1565054 (= lambda!343272 lambda!343245)))

(assert (=> d!1967325 true))

(assert (=> d!1967325 (= (derivationStepZipper!2153 lt!2351099 (head!12874 (t!378416 s!2326))) (flatMap!1692 lt!2351099 lambda!343272))))

(declare-fun bs!1565055 () Bool)

(assert (= bs!1565055 d!1967325))

(declare-fun m!7090306 () Bool)

(assert (=> bs!1565055 m!7090306))

(assert (=> b!6266960 d!1967325))

(assert (=> b!6266960 d!1967103))

(assert (=> b!6266960 d!1967105))

(declare-fun d!1967327 () Bool)

(declare-fun c!1135691 () Bool)

(assert (=> d!1967327 (= c!1135691 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812572 () Bool)

(assert (=> d!1967327 (= (matchZipper!2199 (derivationStepZipper!2153 ((_ map or) lt!2351090 lt!2351084) (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812572)))

(declare-fun b!6268298 () Bool)

(assert (=> b!6268298 (= e!3812572 (nullableZipper!1957 (derivationStepZipper!2153 ((_ map or) lt!2351090 lt!2351084) (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6268299 () Bool)

(assert (=> b!6268299 (= e!3812572 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 ((_ map or) lt!2351090 lt!2351084) (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967327 c!1135691) b!6268298))

(assert (= (and d!1967327 (not c!1135691)) b!6268299))

(assert (=> d!1967327 m!7088704))

(assert (=> d!1967327 m!7089810))

(assert (=> b!6268298 m!7088760))

(declare-fun m!7090308 () Bool)

(assert (=> b!6268298 m!7090308))

(assert (=> b!6268299 m!7088704))

(assert (=> b!6268299 m!7089814))

(assert (=> b!6268299 m!7088760))

(assert (=> b!6268299 m!7089814))

(declare-fun m!7090310 () Bool)

(assert (=> b!6268299 m!7090310))

(assert (=> b!6268299 m!7088704))

(assert (=> b!6268299 m!7089818))

(assert (=> b!6268299 m!7090310))

(assert (=> b!6268299 m!7089818))

(declare-fun m!7090312 () Bool)

(assert (=> b!6268299 m!7090312))

(assert (=> b!6266903 d!1967327))

(declare-fun bs!1565056 () Bool)

(declare-fun d!1967329 () Bool)

(assert (= bs!1565056 (and d!1967329 d!1966565)))

(declare-fun lambda!343273 () Int)

(assert (=> bs!1565056 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343273 lambda!343148))))

(declare-fun bs!1565057 () Bool)

(assert (= bs!1565057 (and d!1967329 d!1967131)))

(assert (=> bs!1565057 (= (= (head!12874 (t!378416 s!2326)) (head!12874 s!2326)) (= lambda!343273 lambda!343244))))

(declare-fun bs!1565058 () Bool)

(assert (= bs!1565058 (and d!1967329 d!1967303)))

(assert (=> bs!1565058 (= lambda!343273 lambda!343270)))

(declare-fun bs!1565059 () Bool)

(assert (= bs!1565059 (and d!1967329 d!1967101)))

(assert (=> bs!1565059 (= lambda!343273 lambda!343242)))

(declare-fun bs!1565060 () Bool)

(assert (= bs!1565060 (and d!1967329 d!1967235)))

(assert (=> bs!1565060 (= lambda!343273 lambda!343258)))

(declare-fun bs!1565061 () Bool)

(assert (= bs!1565061 (and d!1967329 d!1966549)))

(assert (=> bs!1565061 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343273 lambda!343147))))

(declare-fun bs!1565062 () Bool)

(assert (= bs!1565062 (and d!1967329 d!1967169)))

(assert (=> bs!1565062 (= lambda!343273 lambda!343248)))

(declare-fun bs!1565063 () Bool)

(assert (= bs!1565063 (and d!1967329 b!6266061)))

(assert (=> bs!1565063 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343273 lambda!343069))))

(declare-fun bs!1565064 () Bool)

(assert (= bs!1565064 (and d!1967329 d!1967289)))

(assert (=> bs!1565064 (= lambda!343273 lambda!343268)))

(declare-fun bs!1565065 () Bool)

(assert (= bs!1565065 (and d!1967329 d!1967135)))

(assert (=> bs!1565065 (= lambda!343273 lambda!343245)))

(declare-fun bs!1565066 () Bool)

(assert (= bs!1565066 (and d!1967329 d!1967325)))

(assert (=> bs!1565066 (= lambda!343273 lambda!343272)))

(declare-fun bs!1565067 () Bool)

(assert (= bs!1565067 (and d!1967329 d!1967295)))

(assert (=> bs!1565067 (= lambda!343273 lambda!343269)))

(assert (=> d!1967329 true))

(assert (=> d!1967329 (= (derivationStepZipper!2153 ((_ map or) lt!2351090 lt!2351084) (head!12874 (t!378416 s!2326))) (flatMap!1692 ((_ map or) lt!2351090 lt!2351084) lambda!343273))))

(declare-fun bs!1565068 () Bool)

(assert (= bs!1565068 d!1967329))

(declare-fun m!7090314 () Bool)

(assert (=> bs!1565068 m!7090314))

(assert (=> b!6266903 d!1967329))

(assert (=> b!6266903 d!1967103))

(assert (=> b!6266903 d!1967105))

(declare-fun c!1135693 () Bool)

(declare-fun call!529971 () List!64860)

(declare-fun bm!529961 () Bool)

(declare-fun call!529969 () (InoxSet Context!11142))

(assert (=> bm!529961 (= call!529969 (derivationStepZipperDown!1435 (ite c!1135693 (regTwo!32887 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))) (regOne!32886 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292)))))) (ite c!1135693 (ite c!1135253 lt!2351103 (Context!11143 call!529695)) (Context!11143 call!529971)) (h!71186 s!2326)))))

(declare-fun bm!529962 () Bool)

(declare-fun c!1135696 () Bool)

(declare-fun call!529966 () List!64860)

(declare-fun c!1135694 () Bool)

(declare-fun call!529970 () (InoxSet Context!11142))

(assert (=> bm!529962 (= call!529970 (derivationStepZipperDown!1435 (ite c!1135693 (regOne!32887 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))) (ite c!1135696 (regTwo!32886 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))) (ite c!1135694 (regOne!32886 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))) (reg!16516 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292)))))))) (ite (or c!1135693 c!1135696) (ite c!1135253 lt!2351103 (Context!11143 call!529695)) (Context!11143 call!529966)) (h!71186 s!2326)))))

(declare-fun b!6268300 () Bool)

(declare-fun c!1135695 () Bool)

(assert (=> b!6268300 (= c!1135695 ((_ is Star!16187) (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))))))

(declare-fun e!3812573 () (InoxSet Context!11142))

(declare-fun e!3812574 () (InoxSet Context!11142))

(assert (=> b!6268300 (= e!3812573 e!3812574)))

(declare-fun bm!529963 () Bool)

(declare-fun call!529967 () (InoxSet Context!11142))

(declare-fun call!529968 () (InoxSet Context!11142))

(assert (=> bm!529963 (= call!529967 call!529968)))

(declare-fun c!1135692 () Bool)

(declare-fun d!1967331 () Bool)

(assert (=> d!1967331 (= c!1135692 (and ((_ is ElementMatch!16187) (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))) (= (c!1135024 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))) (h!71186 s!2326))))))

(declare-fun e!3812576 () (InoxSet Context!11142))

(assert (=> d!1967331 (= (derivationStepZipperDown!1435 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292)))) (ite c!1135253 lt!2351103 (Context!11143 call!529695)) (h!71186 s!2326)) e!3812576)))

(declare-fun b!6268301 () Bool)

(assert (=> b!6268301 (= e!3812576 (store ((as const (Array Context!11142 Bool)) false) (ite c!1135253 lt!2351103 (Context!11143 call!529695)) true))))

(declare-fun b!6268302 () Bool)

(declare-fun e!3812578 () (InoxSet Context!11142))

(assert (=> b!6268302 (= e!3812578 ((_ map or) call!529970 call!529969))))

(declare-fun b!6268303 () Bool)

(assert (=> b!6268303 (= e!3812574 call!529967)))

(declare-fun b!6268304 () Bool)

(assert (=> b!6268304 (= e!3812576 e!3812578)))

(assert (=> b!6268304 (= c!1135693 ((_ is Union!16187) (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))))))

(declare-fun bm!529964 () Bool)

(assert (=> bm!529964 (= call!529968 call!529970)))

(declare-fun b!6268305 () Bool)

(declare-fun e!3812575 () (InoxSet Context!11142))

(assert (=> b!6268305 (= e!3812575 ((_ map or) call!529969 call!529968))))

(declare-fun b!6268306 () Bool)

(assert (=> b!6268306 (= e!3812574 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6268307 () Bool)

(declare-fun e!3812577 () Bool)

(assert (=> b!6268307 (= e!3812577 (nullable!6180 (regOne!32886 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292)))))))))

(declare-fun b!6268308 () Bool)

(assert (=> b!6268308 (= e!3812573 call!529967)))

(declare-fun bm!529965 () Bool)

(assert (=> bm!529965 (= call!529966 call!529971)))

(declare-fun b!6268309 () Bool)

(assert (=> b!6268309 (= e!3812575 e!3812573)))

(assert (=> b!6268309 (= c!1135694 ((_ is Concat!25032) (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))))))

(declare-fun b!6268310 () Bool)

(assert (=> b!6268310 (= c!1135696 e!3812577)))

(declare-fun res!2585775 () Bool)

(assert (=> b!6268310 (=> (not res!2585775) (not e!3812577))))

(assert (=> b!6268310 (= res!2585775 ((_ is Concat!25032) (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))))))

(assert (=> b!6268310 (= e!3812578 e!3812575)))

(declare-fun bm!529966 () Bool)

(assert (=> bm!529966 (= call!529971 ($colon$colon!2052 (exprs!6071 (ite c!1135253 lt!2351103 (Context!11143 call!529695))) (ite (or c!1135696 c!1135694) (regTwo!32886 (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))))) (ite c!1135253 (regTwo!32887 (regTwo!32886 (regOne!32886 r!7292))) (regOne!32886 (regTwo!32886 (regOne!32886 r!7292)))))))))

(assert (= (and d!1967331 c!1135692) b!6268301))

(assert (= (and d!1967331 (not c!1135692)) b!6268304))

(assert (= (and b!6268304 c!1135693) b!6268302))

(assert (= (and b!6268304 (not c!1135693)) b!6268310))

(assert (= (and b!6268310 res!2585775) b!6268307))

(assert (= (and b!6268310 c!1135696) b!6268305))

(assert (= (and b!6268310 (not c!1135696)) b!6268309))

(assert (= (and b!6268309 c!1135694) b!6268308))

(assert (= (and b!6268309 (not c!1135694)) b!6268300))

(assert (= (and b!6268300 c!1135695) b!6268303))

(assert (= (and b!6268300 (not c!1135695)) b!6268306))

(assert (= (or b!6268308 b!6268303) bm!529965))

(assert (= (or b!6268308 b!6268303) bm!529963))

(assert (= (or b!6268305 bm!529965) bm!529966))

(assert (= (or b!6268305 bm!529963) bm!529964))

(assert (= (or b!6268302 b!6268305) bm!529961))

(assert (= (or b!6268302 bm!529964) bm!529962))

(declare-fun m!7090316 () Bool)

(assert (=> bm!529961 m!7090316))

(declare-fun m!7090318 () Bool)

(assert (=> bm!529966 m!7090318))

(declare-fun m!7090320 () Bool)

(assert (=> b!6268307 m!7090320))

(declare-fun m!7090322 () Bool)

(assert (=> b!6268301 m!7090322))

(declare-fun m!7090324 () Bool)

(assert (=> bm!529962 m!7090324))

(assert (=> bm!529685 d!1967331))

(declare-fun d!1967333 () Bool)

(assert (=> d!1967333 (= (head!12875 lt!2351096) (h!71184 lt!2351096))))

(assert (=> b!6266705 d!1967333))

(declare-fun b!6268311 () Bool)

(declare-fun e!3812579 () Bool)

(declare-fun e!3812583 () Bool)

(assert (=> b!6268311 (= e!3812579 e!3812583)))

(declare-fun res!2585777 () Bool)

(assert (=> b!6268311 (=> (not res!2585777) (not e!3812583))))

(declare-fun call!529974 () Bool)

(assert (=> b!6268311 (= res!2585777 call!529974)))

(declare-fun b!6268312 () Bool)

(declare-fun res!2585779 () Bool)

(assert (=> b!6268312 (=> res!2585779 e!3812579)))

(assert (=> b!6268312 (= res!2585779 (not ((_ is Concat!25032) lt!2351213)))))

(declare-fun e!3812582 () Bool)

(assert (=> b!6268312 (= e!3812582 e!3812579)))

(declare-fun b!6268313 () Bool)

(declare-fun e!3812580 () Bool)

(declare-fun e!3812584 () Bool)

(assert (=> b!6268313 (= e!3812580 e!3812584)))

(declare-fun c!1135697 () Bool)

(assert (=> b!6268313 (= c!1135697 ((_ is Star!16187) lt!2351213))))

(declare-fun d!1967335 () Bool)

(declare-fun res!2585780 () Bool)

(assert (=> d!1967335 (=> res!2585780 e!3812580)))

(assert (=> d!1967335 (= res!2585780 ((_ is ElementMatch!16187) lt!2351213))))

(assert (=> d!1967335 (= (validRegex!7923 lt!2351213) e!3812580)))

(declare-fun b!6268314 () Bool)

(declare-fun e!3812585 () Bool)

(declare-fun call!529973 () Bool)

(assert (=> b!6268314 (= e!3812585 call!529973)))

(declare-fun bm!529967 () Bool)

(declare-fun call!529972 () Bool)

(assert (=> bm!529967 (= call!529974 call!529972)))

(declare-fun b!6268315 () Bool)

(assert (=> b!6268315 (= e!3812584 e!3812582)))

(declare-fun c!1135698 () Bool)

(assert (=> b!6268315 (= c!1135698 ((_ is Union!16187) lt!2351213))))

(declare-fun bm!529968 () Bool)

(assert (=> bm!529968 (= call!529973 (validRegex!7923 (ite c!1135698 (regTwo!32887 lt!2351213) (regTwo!32886 lt!2351213))))))

(declare-fun bm!529969 () Bool)

(assert (=> bm!529969 (= call!529972 (validRegex!7923 (ite c!1135697 (reg!16516 lt!2351213) (ite c!1135698 (regOne!32887 lt!2351213) (regOne!32886 lt!2351213)))))))

(declare-fun b!6268316 () Bool)

(declare-fun res!2585778 () Bool)

(assert (=> b!6268316 (=> (not res!2585778) (not e!3812585))))

(assert (=> b!6268316 (= res!2585778 call!529974)))

(assert (=> b!6268316 (= e!3812582 e!3812585)))

(declare-fun b!6268317 () Bool)

(assert (=> b!6268317 (= e!3812583 call!529973)))

(declare-fun b!6268318 () Bool)

(declare-fun e!3812581 () Bool)

(assert (=> b!6268318 (= e!3812584 e!3812581)))

(declare-fun res!2585776 () Bool)

(assert (=> b!6268318 (= res!2585776 (not (nullable!6180 (reg!16516 lt!2351213))))))

(assert (=> b!6268318 (=> (not res!2585776) (not e!3812581))))

(declare-fun b!6268319 () Bool)

(assert (=> b!6268319 (= e!3812581 call!529972)))

(assert (= (and d!1967335 (not res!2585780)) b!6268313))

(assert (= (and b!6268313 c!1135697) b!6268318))

(assert (= (and b!6268313 (not c!1135697)) b!6268315))

(assert (= (and b!6268318 res!2585776) b!6268319))

(assert (= (and b!6268315 c!1135698) b!6268316))

(assert (= (and b!6268315 (not c!1135698)) b!6268312))

(assert (= (and b!6268316 res!2585778) b!6268314))

(assert (= (and b!6268312 (not res!2585779)) b!6268311))

(assert (= (and b!6268311 res!2585777) b!6268317))

(assert (= (or b!6268314 b!6268317) bm!529968))

(assert (= (or b!6268316 b!6268311) bm!529967))

(assert (= (or b!6268319 bm!529967) bm!529969))

(declare-fun m!7090326 () Bool)

(assert (=> bm!529968 m!7090326))

(declare-fun m!7090328 () Bool)

(assert (=> bm!529969 m!7090328))

(declare-fun m!7090330 () Bool)

(assert (=> b!6268318 m!7090330))

(assert (=> d!1966529 d!1967335))

(declare-fun d!1967337 () Bool)

(declare-fun res!2585781 () Bool)

(declare-fun e!3812586 () Bool)

(assert (=> d!1967337 (=> res!2585781 e!3812586)))

(assert (=> d!1967337 (= res!2585781 ((_ is Nil!64736) lt!2351079))))

(assert (=> d!1967337 (= (forall!15312 lt!2351079 lambda!343128) e!3812586)))

(declare-fun b!6268320 () Bool)

(declare-fun e!3812587 () Bool)

(assert (=> b!6268320 (= e!3812586 e!3812587)))

(declare-fun res!2585782 () Bool)

(assert (=> b!6268320 (=> (not res!2585782) (not e!3812587))))

(assert (=> b!6268320 (= res!2585782 (dynLambda!25595 lambda!343128 (h!71184 lt!2351079)))))

(declare-fun b!6268321 () Bool)

(assert (=> b!6268321 (= e!3812587 (forall!15312 (t!378414 lt!2351079) lambda!343128))))

(assert (= (and d!1967337 (not res!2585781)) b!6268320))

(assert (= (and b!6268320 res!2585782) b!6268321))

(declare-fun b_lambda!238671 () Bool)

(assert (=> (not b_lambda!238671) (not b!6268320)))

(declare-fun m!7090332 () Bool)

(assert (=> b!6268320 m!7090332))

(declare-fun m!7090334 () Bool)

(assert (=> b!6268321 m!7090334))

(assert (=> d!1966529 d!1967337))

(declare-fun d!1967339 () Bool)

(declare-fun res!2585783 () Bool)

(declare-fun e!3812588 () Bool)

(assert (=> d!1967339 (=> res!2585783 e!3812588)))

(assert (=> d!1967339 (= res!2585783 ((_ is Nil!64737) zl!343))))

(assert (=> d!1967339 (= (forall!15313 zl!343 lambda!343143) e!3812588)))

(declare-fun b!6268322 () Bool)

(declare-fun e!3812589 () Bool)

(assert (=> b!6268322 (= e!3812588 e!3812589)))

(declare-fun res!2585784 () Bool)

(assert (=> b!6268322 (=> (not res!2585784) (not e!3812589))))

(assert (=> b!6268322 (= res!2585784 (dynLambda!25594 lambda!343143 (h!71185 zl!343)))))

(declare-fun b!6268323 () Bool)

(assert (=> b!6268323 (= e!3812589 (forall!15313 (t!378415 zl!343) lambda!343143))))

(assert (= (and d!1967339 (not res!2585783)) b!6268322))

(assert (= (and b!6268322 res!2585784) b!6268323))

(declare-fun b_lambda!238673 () Bool)

(assert (=> (not b_lambda!238673) (not b!6268322)))

(declare-fun m!7090336 () Bool)

(assert (=> b!6268322 m!7090336))

(declare-fun m!7090338 () Bool)

(assert (=> b!6268323 m!7090338))

(assert (=> b!6266774 d!1967339))

(declare-fun bs!1565069 () Bool)

(declare-fun d!1967341 () Bool)

(assert (= bs!1565069 (and d!1967341 b!6268217)))

(declare-fun lambda!343274 () Int)

(assert (=> bs!1565069 (not (= lambda!343274 lambda!343260))))

(declare-fun bs!1565070 () Bool)

(assert (= bs!1565070 (and d!1967341 b!6267928)))

(assert (=> bs!1565070 (not (= lambda!343274 lambda!343239))))

(declare-fun bs!1565071 () Bool)

(assert (= bs!1565071 (and d!1967341 d!1966567)))

(assert (=> bs!1565071 (= lambda!343274 lambda!343149)))

(declare-fun bs!1565072 () Bool)

(assert (= bs!1565072 (and d!1967341 d!1967175)))

(assert (=> bs!1565072 (= lambda!343274 lambda!343249)))

(declare-fun bs!1565073 () Bool)

(assert (= bs!1565073 (and d!1967341 d!1967177)))

(assert (=> bs!1565073 (= lambda!343274 lambda!343250)))

(declare-fun bs!1565074 () Bool)

(assert (= bs!1565074 (and d!1967341 b!6268219)))

(assert (=> bs!1565074 (not (= lambda!343274 lambda!343261))))

(declare-fun bs!1565075 () Bool)

(assert (= bs!1565075 (and d!1967341 d!1966543)))

(assert (=> bs!1565075 (= lambda!343274 lambda!343144)))

(declare-fun bs!1565076 () Bool)

(assert (= bs!1565076 (and d!1967341 d!1967211)))

(assert (=> bs!1565076 (= lambda!343274 lambda!343255)))

(declare-fun bs!1565077 () Bool)

(assert (= bs!1565077 (and d!1967341 d!1966597)))

(assert (=> bs!1565077 (= lambda!343274 lambda!343158)))

(declare-fun bs!1565078 () Bool)

(assert (= bs!1565078 (and d!1967341 d!1966599)))

(assert (=> bs!1565078 (= lambda!343274 lambda!343161)))

(declare-fun bs!1565079 () Bool)

(assert (= bs!1565079 (and d!1967341 b!6267930)))

(assert (=> bs!1565079 (not (= lambda!343274 lambda!343240))))

(declare-fun bs!1565080 () Bool)

(assert (= bs!1565080 (and d!1967341 d!1966533)))

(assert (=> bs!1565080 (= lambda!343274 lambda!343131)))

(declare-fun bs!1565081 () Bool)

(assert (= bs!1565081 (and d!1967341 d!1966529)))

(assert (=> bs!1565081 (= lambda!343274 lambda!343128)))

(declare-fun bs!1565082 () Bool)

(assert (= bs!1565082 (and d!1967341 d!1967123)))

(assert (=> bs!1565082 (= lambda!343274 lambda!343243)))

(declare-fun bs!1565083 () Bool)

(assert (= bs!1565083 (and d!1967341 d!1967203)))

(assert (=> bs!1565083 (= lambda!343274 lambda!343254)))

(declare-fun bs!1565084 () Bool)

(assert (= bs!1565084 (and d!1967341 d!1966525)))

(assert (=> bs!1565084 (= lambda!343274 lambda!343127)))

(declare-fun bs!1565085 () Bool)

(assert (= bs!1565085 (and d!1967341 d!1967179)))

(assert (=> bs!1565085 (= lambda!343274 lambda!343251)))

(assert (=> d!1967341 (= (inv!83714 (h!71185 (t!378415 zl!343))) (forall!15312 (exprs!6071 (h!71185 (t!378415 zl!343))) lambda!343274))))

(declare-fun bs!1565086 () Bool)

(assert (= bs!1565086 d!1967341))

(declare-fun m!7090340 () Bool)

(assert (=> bs!1565086 m!7090340))

(assert (=> b!6266996 d!1967341))

(assert (=> b!6266887 d!1967109))

(declare-fun d!1967343 () Bool)

(assert (=> d!1967343 (= (isEmpty!36770 (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) Nil!64738 s!2326 s!2326)) (not ((_ is Some!16077) (findConcatSeparation!2492 (regOne!32886 r!7292) (regTwo!32886 r!7292) Nil!64738 s!2326 s!2326))))))

(assert (=> d!1966517 d!1967343))

(declare-fun b!6268338 () Bool)

(declare-fun e!3812605 () Bool)

(declare-fun e!3812606 () Bool)

(assert (=> b!6268338 (= e!3812605 e!3812606)))

(declare-fun res!2585799 () Bool)

(declare-fun call!529980 () Bool)

(assert (=> b!6268338 (= res!2585799 call!529980)))

(assert (=> b!6268338 (=> (not res!2585799) (not e!3812606))))

(declare-fun b!6268339 () Bool)

(declare-fun e!3812604 () Bool)

(declare-fun e!3812602 () Bool)

(assert (=> b!6268339 (= e!3812604 e!3812602)))

(declare-fun res!2585796 () Bool)

(assert (=> b!6268339 (=> (not res!2585796) (not e!3812602))))

(assert (=> b!6268339 (= res!2585796 (and (not ((_ is EmptyLang!16187) (regOne!32886 (regOne!32886 r!7292)))) (not ((_ is ElementMatch!16187) (regOne!32886 (regOne!32886 r!7292))))))))

(declare-fun b!6268340 () Bool)

(declare-fun e!3812603 () Bool)

(assert (=> b!6268340 (= e!3812603 e!3812605)))

(declare-fun c!1135701 () Bool)

(assert (=> b!6268340 (= c!1135701 ((_ is Union!16187) (regOne!32886 (regOne!32886 r!7292))))))

(declare-fun b!6268341 () Bool)

(declare-fun e!3812607 () Bool)

(declare-fun call!529979 () Bool)

(assert (=> b!6268341 (= e!3812607 call!529979)))

(declare-fun bm!529974 () Bool)

(assert (=> bm!529974 (= call!529979 (nullable!6180 (ite c!1135701 (regTwo!32887 (regOne!32886 (regOne!32886 r!7292))) (regTwo!32886 (regOne!32886 (regOne!32886 r!7292))))))))

(declare-fun b!6268342 () Bool)

(assert (=> b!6268342 (= e!3812605 e!3812607)))

(declare-fun res!2585797 () Bool)

(assert (=> b!6268342 (= res!2585797 call!529980)))

(assert (=> b!6268342 (=> res!2585797 e!3812607)))

(declare-fun b!6268343 () Bool)

(assert (=> b!6268343 (= e!3812602 e!3812603)))

(declare-fun res!2585795 () Bool)

(assert (=> b!6268343 (=> res!2585795 e!3812603)))

(assert (=> b!6268343 (= res!2585795 ((_ is Star!16187) (regOne!32886 (regOne!32886 r!7292))))))

(declare-fun d!1967345 () Bool)

(declare-fun res!2585798 () Bool)

(assert (=> d!1967345 (=> res!2585798 e!3812604)))

(assert (=> d!1967345 (= res!2585798 ((_ is EmptyExpr!16187) (regOne!32886 (regOne!32886 r!7292))))))

(assert (=> d!1967345 (= (nullableFct!2132 (regOne!32886 (regOne!32886 r!7292))) e!3812604)))

(declare-fun bm!529975 () Bool)

(assert (=> bm!529975 (= call!529980 (nullable!6180 (ite c!1135701 (regOne!32887 (regOne!32886 (regOne!32886 r!7292))) (regOne!32886 (regOne!32886 (regOne!32886 r!7292))))))))

(declare-fun b!6268344 () Bool)

(assert (=> b!6268344 (= e!3812606 call!529979)))

(assert (= (and d!1967345 (not res!2585798)) b!6268339))

(assert (= (and b!6268339 res!2585796) b!6268343))

(assert (= (and b!6268343 (not res!2585795)) b!6268340))

(assert (= (and b!6268340 c!1135701) b!6268342))

(assert (= (and b!6268340 (not c!1135701)) b!6268338))

(assert (= (and b!6268342 (not res!2585797)) b!6268341))

(assert (= (and b!6268338 res!2585799) b!6268344))

(assert (= (or b!6268341 b!6268344) bm!529974))

(assert (= (or b!6268342 b!6268338) bm!529975))

(declare-fun m!7090342 () Bool)

(assert (=> bm!529974 m!7090342))

(declare-fun m!7090344 () Bool)

(assert (=> bm!529975 m!7090344))

(assert (=> d!1966569 d!1967345))

(assert (=> bm!529681 d!1967107))

(declare-fun bm!529976 () Bool)

(declare-fun call!529984 () (InoxSet Context!11142))

(declare-fun call!529986 () List!64860)

(declare-fun c!1135703 () Bool)

(assert (=> bm!529976 (= call!529984 (derivationStepZipperDown!1435 (ite c!1135703 (regTwo!32887 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))) (regOne!32886 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))))) (ite c!1135703 (ite c!1135182 lt!2351103 (Context!11143 call!529669)) (Context!11143 call!529986)) (h!71186 s!2326)))))

(declare-fun call!529981 () List!64860)

(declare-fun bm!529977 () Bool)

(declare-fun c!1135706 () Bool)

(declare-fun call!529985 () (InoxSet Context!11142))

(declare-fun c!1135704 () Bool)

(assert (=> bm!529977 (= call!529985 (derivationStepZipperDown!1435 (ite c!1135703 (regOne!32887 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))) (ite c!1135706 (regTwo!32886 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))) (ite c!1135704 (regOne!32886 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))) (reg!16516 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))))))) (ite (or c!1135703 c!1135706) (ite c!1135182 lt!2351103 (Context!11143 call!529669)) (Context!11143 call!529981)) (h!71186 s!2326)))))

(declare-fun b!6268345 () Bool)

(declare-fun c!1135705 () Bool)

(assert (=> b!6268345 (= c!1135705 ((_ is Star!16187) (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun e!3812608 () (InoxSet Context!11142))

(declare-fun e!3812609 () (InoxSet Context!11142))

(assert (=> b!6268345 (= e!3812608 e!3812609)))

(declare-fun bm!529978 () Bool)

(declare-fun call!529982 () (InoxSet Context!11142))

(declare-fun call!529983 () (InoxSet Context!11142))

(assert (=> bm!529978 (= call!529982 call!529983)))

(declare-fun d!1967347 () Bool)

(declare-fun c!1135702 () Bool)

(assert (=> d!1967347 (= c!1135702 (and ((_ is ElementMatch!16187) (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))) (= (c!1135024 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))) (h!71186 s!2326))))))

(declare-fun e!3812611 () (InoxSet Context!11142))

(assert (=> d!1967347 (= (derivationStepZipperDown!1435 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))) (ite c!1135182 lt!2351103 (Context!11143 call!529669)) (h!71186 s!2326)) e!3812611)))

(declare-fun b!6268346 () Bool)

(assert (=> b!6268346 (= e!3812611 (store ((as const (Array Context!11142 Bool)) false) (ite c!1135182 lt!2351103 (Context!11143 call!529669)) true))))

(declare-fun b!6268347 () Bool)

(declare-fun e!3812613 () (InoxSet Context!11142))

(assert (=> b!6268347 (= e!3812613 ((_ map or) call!529985 call!529984))))

(declare-fun b!6268348 () Bool)

(assert (=> b!6268348 (= e!3812609 call!529982)))

(declare-fun b!6268349 () Bool)

(assert (=> b!6268349 (= e!3812611 e!3812613)))

(assert (=> b!6268349 (= c!1135703 ((_ is Union!16187) (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun bm!529979 () Bool)

(assert (=> bm!529979 (= call!529983 call!529985)))

(declare-fun b!6268350 () Bool)

(declare-fun e!3812610 () (InoxSet Context!11142))

(assert (=> b!6268350 (= e!3812610 ((_ map or) call!529984 call!529983))))

(declare-fun b!6268351 () Bool)

(assert (=> b!6268351 (= e!3812609 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6268352 () Bool)

(declare-fun e!3812612 () Bool)

(assert (=> b!6268352 (= e!3812612 (nullable!6180 (regOne!32886 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))))))))

(declare-fun b!6268353 () Bool)

(assert (=> b!6268353 (= e!3812608 call!529982)))

(declare-fun bm!529980 () Bool)

(assert (=> bm!529980 (= call!529981 call!529986)))

(declare-fun b!6268354 () Bool)

(assert (=> b!6268354 (= e!3812610 e!3812608)))

(assert (=> b!6268354 (= c!1135704 ((_ is Concat!25032) (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun b!6268355 () Bool)

(assert (=> b!6268355 (= c!1135706 e!3812612)))

(declare-fun res!2585800 () Bool)

(assert (=> b!6268355 (=> (not res!2585800) (not e!3812612))))

(assert (=> b!6268355 (= res!2585800 ((_ is Concat!25032) (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))

(assert (=> b!6268355 (= e!3812613 e!3812610)))

(declare-fun bm!529981 () Bool)

(assert (=> bm!529981 (= call!529986 ($colon$colon!2052 (exprs!6071 (ite c!1135182 lt!2351103 (Context!11143 call!529669))) (ite (or c!1135706 c!1135704) (regTwo!32886 (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))) (ite c!1135182 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343))))))))))

(assert (= (and d!1967347 c!1135702) b!6268346))

(assert (= (and d!1967347 (not c!1135702)) b!6268349))

(assert (= (and b!6268349 c!1135703) b!6268347))

(assert (= (and b!6268349 (not c!1135703)) b!6268355))

(assert (= (and b!6268355 res!2585800) b!6268352))

(assert (= (and b!6268355 c!1135706) b!6268350))

(assert (= (and b!6268355 (not c!1135706)) b!6268354))

(assert (= (and b!6268354 c!1135704) b!6268353))

(assert (= (and b!6268354 (not c!1135704)) b!6268345))

(assert (= (and b!6268345 c!1135705) b!6268348))

(assert (= (and b!6268345 (not c!1135705)) b!6268351))

(assert (= (or b!6268353 b!6268348) bm!529980))

(assert (= (or b!6268353 b!6268348) bm!529978))

(assert (= (or b!6268350 bm!529980) bm!529981))

(assert (= (or b!6268350 bm!529978) bm!529979))

(assert (= (or b!6268347 b!6268350) bm!529976))

(assert (= (or b!6268347 bm!529979) bm!529977))

(declare-fun m!7090346 () Bool)

(assert (=> bm!529976 m!7090346))

(declare-fun m!7090348 () Bool)

(assert (=> bm!529981 m!7090348))

(declare-fun m!7090350 () Bool)

(assert (=> b!6268352 m!7090350))

(declare-fun m!7090352 () Bool)

(assert (=> b!6268346 m!7090352))

(declare-fun m!7090354 () Bool)

(assert (=> bm!529977 m!7090354))

(assert (=> bm!529659 d!1967347))

(declare-fun d!1967349 () Bool)

(declare-fun c!1135709 () Bool)

(assert (=> d!1967349 (= c!1135709 ((_ is Nil!64737) lt!2351253))))

(declare-fun e!3812616 () (InoxSet Context!11142))

(assert (=> d!1967349 (= (content!12156 lt!2351253) e!3812616)))

(declare-fun b!6268360 () Bool)

(assert (=> b!6268360 (= e!3812616 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6268361 () Bool)

(assert (=> b!6268361 (= e!3812616 ((_ map or) (store ((as const (Array Context!11142 Bool)) false) (h!71185 lt!2351253) true) (content!12156 (t!378415 lt!2351253))))))

(assert (= (and d!1967349 c!1135709) b!6268360))

(assert (= (and d!1967349 (not c!1135709)) b!6268361))

(declare-fun m!7090356 () Bool)

(assert (=> b!6268361 m!7090356))

(declare-fun m!7090358 () Bool)

(assert (=> b!6268361 m!7090358))

(assert (=> b!6266912 d!1967349))

(declare-fun e!3812619 () (InoxSet Context!11142))

(declare-fun call!529987 () (InoxSet Context!11142))

(declare-fun b!6268362 () Bool)

(assert (=> b!6268362 (= e!3812619 ((_ map or) call!529987 (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107)))))) (h!71186 s!2326))))))

(declare-fun b!6268363 () Bool)

(declare-fun e!3812617 () (InoxSet Context!11142))

(assert (=> b!6268363 (= e!3812617 ((as const (Array Context!11142 Bool)) false))))

(declare-fun d!1967351 () Bool)

(declare-fun c!1135710 () Bool)

(declare-fun e!3812618 () Bool)

(assert (=> d!1967351 (= c!1135710 e!3812618)))

(declare-fun res!2585801 () Bool)

(assert (=> d!1967351 (=> (not res!2585801) (not e!3812618))))

(assert (=> d!1967351 (= res!2585801 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107))))))))

(assert (=> d!1967351 (= (derivationStepZipperUp!1361 (Context!11143 (t!378414 (exprs!6071 lt!2351107))) (h!71186 s!2326)) e!3812619)))

(declare-fun bm!529982 () Bool)

(assert (=> bm!529982 (= call!529987 (derivationStepZipperDown!1435 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107))))) (Context!11143 (t!378414 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107)))))) (h!71186 s!2326)))))

(declare-fun b!6268364 () Bool)

(assert (=> b!6268364 (= e!3812618 (nullable!6180 (h!71184 (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107)))))))))

(declare-fun b!6268365 () Bool)

(assert (=> b!6268365 (= e!3812617 call!529987)))

(declare-fun b!6268366 () Bool)

(assert (=> b!6268366 (= e!3812619 e!3812617)))

(declare-fun c!1135711 () Bool)

(assert (=> b!6268366 (= c!1135711 ((_ is Cons!64736) (exprs!6071 (Context!11143 (t!378414 (exprs!6071 lt!2351107))))))))

(assert (= (and d!1967351 res!2585801) b!6268364))

(assert (= (and d!1967351 c!1135710) b!6268362))

(assert (= (and d!1967351 (not c!1135710)) b!6268366))

(assert (= (and b!6268366 c!1135711) b!6268365))

(assert (= (and b!6268366 (not c!1135711)) b!6268363))

(assert (= (or b!6268362 b!6268365) bm!529982))

(declare-fun m!7090360 () Bool)

(assert (=> b!6268362 m!7090360))

(declare-fun m!7090362 () Bool)

(assert (=> bm!529982 m!7090362))

(declare-fun m!7090364 () Bool)

(assert (=> b!6268364 m!7090364))

(assert (=> b!6266818 d!1967351))

(declare-fun bs!1565087 () Bool)

(declare-fun d!1967353 () Bool)

(assert (= bs!1565087 (and d!1967353 b!6268217)))

(declare-fun lambda!343275 () Int)

(assert (=> bs!1565087 (not (= lambda!343275 lambda!343260))))

(declare-fun bs!1565088 () Bool)

(assert (= bs!1565088 (and d!1967353 d!1967341)))

(assert (=> bs!1565088 (= lambda!343275 lambda!343274)))

(declare-fun bs!1565089 () Bool)

(assert (= bs!1565089 (and d!1967353 b!6267928)))

(assert (=> bs!1565089 (not (= lambda!343275 lambda!343239))))

(declare-fun bs!1565090 () Bool)

(assert (= bs!1565090 (and d!1967353 d!1966567)))

(assert (=> bs!1565090 (= lambda!343275 lambda!343149)))

(declare-fun bs!1565091 () Bool)

(assert (= bs!1565091 (and d!1967353 d!1967175)))

(assert (=> bs!1565091 (= lambda!343275 lambda!343249)))

(declare-fun bs!1565092 () Bool)

(assert (= bs!1565092 (and d!1967353 d!1967177)))

(assert (=> bs!1565092 (= lambda!343275 lambda!343250)))

(declare-fun bs!1565093 () Bool)

(assert (= bs!1565093 (and d!1967353 b!6268219)))

(assert (=> bs!1565093 (not (= lambda!343275 lambda!343261))))

(declare-fun bs!1565094 () Bool)

(assert (= bs!1565094 (and d!1967353 d!1966543)))

(assert (=> bs!1565094 (= lambda!343275 lambda!343144)))

(declare-fun bs!1565095 () Bool)

(assert (= bs!1565095 (and d!1967353 d!1967211)))

(assert (=> bs!1565095 (= lambda!343275 lambda!343255)))

(declare-fun bs!1565096 () Bool)

(assert (= bs!1565096 (and d!1967353 d!1966597)))

(assert (=> bs!1565096 (= lambda!343275 lambda!343158)))

(declare-fun bs!1565097 () Bool)

(assert (= bs!1565097 (and d!1967353 d!1966599)))

(assert (=> bs!1565097 (= lambda!343275 lambda!343161)))

(declare-fun bs!1565098 () Bool)

(assert (= bs!1565098 (and d!1967353 b!6267930)))

(assert (=> bs!1565098 (not (= lambda!343275 lambda!343240))))

(declare-fun bs!1565099 () Bool)

(assert (= bs!1565099 (and d!1967353 d!1966533)))

(assert (=> bs!1565099 (= lambda!343275 lambda!343131)))

(declare-fun bs!1565100 () Bool)

(assert (= bs!1565100 (and d!1967353 d!1966529)))

(assert (=> bs!1565100 (= lambda!343275 lambda!343128)))

(declare-fun bs!1565101 () Bool)

(assert (= bs!1565101 (and d!1967353 d!1967123)))

(assert (=> bs!1565101 (= lambda!343275 lambda!343243)))

(declare-fun bs!1565102 () Bool)

(assert (= bs!1565102 (and d!1967353 d!1967203)))

(assert (=> bs!1565102 (= lambda!343275 lambda!343254)))

(declare-fun bs!1565103 () Bool)

(assert (= bs!1565103 (and d!1967353 d!1966525)))

(assert (=> bs!1565103 (= lambda!343275 lambda!343127)))

(declare-fun bs!1565104 () Bool)

(assert (= bs!1565104 (and d!1967353 d!1967179)))

(assert (=> bs!1565104 (= lambda!343275 lambda!343251)))

(declare-fun b!6268367 () Bool)

(declare-fun e!3812623 () Regex!16187)

(assert (=> b!6268367 (= e!3812623 EmptyLang!16187)))

(declare-fun b!6268368 () Bool)

(declare-fun e!3812624 () Bool)

(declare-fun e!3812622 () Bool)

(assert (=> b!6268368 (= e!3812624 e!3812622)))

(declare-fun c!1135712 () Bool)

(assert (=> b!6268368 (= c!1135712 (isEmpty!36766 (t!378414 (unfocusZipperList!1608 zl!343))))))

(declare-fun b!6268369 () Bool)

(declare-fun e!3812621 () Bool)

(assert (=> b!6268369 (= e!3812621 (isEmpty!36766 (t!378414 (t!378414 (unfocusZipperList!1608 zl!343)))))))

(declare-fun b!6268370 () Bool)

(declare-fun e!3812625 () Regex!16187)

(assert (=> b!6268370 (= e!3812625 e!3812623)))

(declare-fun c!1135714 () Bool)

(assert (=> b!6268370 (= c!1135714 ((_ is Cons!64736) (t!378414 (unfocusZipperList!1608 zl!343))))))

(assert (=> d!1967353 e!3812624))

(declare-fun res!2585803 () Bool)

(assert (=> d!1967353 (=> (not res!2585803) (not e!3812624))))

(declare-fun lt!2351392 () Regex!16187)

(assert (=> d!1967353 (= res!2585803 (validRegex!7923 lt!2351392))))

(assert (=> d!1967353 (= lt!2351392 e!3812625)))

(declare-fun c!1135713 () Bool)

(assert (=> d!1967353 (= c!1135713 e!3812621)))

(declare-fun res!2585802 () Bool)

(assert (=> d!1967353 (=> (not res!2585802) (not e!3812621))))

(assert (=> d!1967353 (= res!2585802 ((_ is Cons!64736) (t!378414 (unfocusZipperList!1608 zl!343))))))

(assert (=> d!1967353 (forall!15312 (t!378414 (unfocusZipperList!1608 zl!343)) lambda!343275)))

(assert (=> d!1967353 (= (generalisedUnion!2031 (t!378414 (unfocusZipperList!1608 zl!343))) lt!2351392)))

(declare-fun b!6268371 () Bool)

(declare-fun e!3812620 () Bool)

(assert (=> b!6268371 (= e!3812620 (isUnion!1032 lt!2351392))))

(declare-fun b!6268372 () Bool)

(assert (=> b!6268372 (= e!3812622 e!3812620)))

(declare-fun c!1135715 () Bool)

(assert (=> b!6268372 (= c!1135715 (isEmpty!36766 (tail!11960 (t!378414 (unfocusZipperList!1608 zl!343)))))))

(declare-fun b!6268373 () Bool)

(assert (=> b!6268373 (= e!3812625 (h!71184 (t!378414 (unfocusZipperList!1608 zl!343))))))

(declare-fun b!6268374 () Bool)

(assert (=> b!6268374 (= e!3812620 (= lt!2351392 (head!12875 (t!378414 (unfocusZipperList!1608 zl!343)))))))

(declare-fun b!6268375 () Bool)

(assert (=> b!6268375 (= e!3812622 (isEmptyLang!1602 lt!2351392))))

(declare-fun b!6268376 () Bool)

(assert (=> b!6268376 (= e!3812623 (Union!16187 (h!71184 (t!378414 (unfocusZipperList!1608 zl!343))) (generalisedUnion!2031 (t!378414 (t!378414 (unfocusZipperList!1608 zl!343))))))))

(assert (= (and d!1967353 res!2585802) b!6268369))

(assert (= (and d!1967353 c!1135713) b!6268373))

(assert (= (and d!1967353 (not c!1135713)) b!6268370))

(assert (= (and b!6268370 c!1135714) b!6268376))

(assert (= (and b!6268370 (not c!1135714)) b!6268367))

(assert (= (and d!1967353 res!2585803) b!6268368))

(assert (= (and b!6268368 c!1135712) b!6268375))

(assert (= (and b!6268368 (not c!1135712)) b!6268372))

(assert (= (and b!6268372 c!1135715) b!6268374))

(assert (= (and b!6268372 (not c!1135715)) b!6268371))

(declare-fun m!7090366 () Bool)

(assert (=> b!6268371 m!7090366))

(declare-fun m!7090368 () Bool)

(assert (=> b!6268369 m!7090368))

(declare-fun m!7090370 () Bool)

(assert (=> b!6268372 m!7090370))

(assert (=> b!6268372 m!7090370))

(declare-fun m!7090372 () Bool)

(assert (=> b!6268372 m!7090372))

(declare-fun m!7090374 () Bool)

(assert (=> b!6268375 m!7090374))

(declare-fun m!7090376 () Bool)

(assert (=> b!6268376 m!7090376))

(declare-fun m!7090378 () Bool)

(assert (=> b!6268374 m!7090378))

(declare-fun m!7090380 () Bool)

(assert (=> d!1967353 m!7090380))

(declare-fun m!7090382 () Bool)

(assert (=> d!1967353 m!7090382))

(assert (=> b!6268368 m!7088780))

(assert (=> b!6266942 d!1967353))

(declare-fun d!1967355 () Bool)

(assert (=> d!1967355 (= (Exists!3257 (ite c!1135280 lambda!343154 lambda!343155)) (choose!46492 (ite c!1135280 lambda!343154 lambda!343155)))))

(declare-fun bs!1565105 () Bool)

(assert (= bs!1565105 d!1967355))

(declare-fun m!7090384 () Bool)

(assert (=> bs!1565105 m!7090384))

(assert (=> bm!529703 d!1967355))

(declare-fun d!1967357 () Bool)

(assert (=> d!1967357 (= (nullable!6180 (h!71184 (exprs!6071 lt!2351109))) (nullableFct!2132 (h!71184 (exprs!6071 lt!2351109))))))

(declare-fun bs!1565106 () Bool)

(assert (= bs!1565106 d!1967357))

(declare-fun m!7090386 () Bool)

(assert (=> bs!1565106 m!7090386))

(assert (=> b!6266825 d!1967357))

(assert (=> bm!529705 d!1967107))

(assert (=> b!6266947 d!1966543))

(declare-fun bs!1565107 () Bool)

(declare-fun d!1967359 () Bool)

(assert (= bs!1565107 (and d!1967359 b!6268217)))

(declare-fun lambda!343276 () Int)

(assert (=> bs!1565107 (not (= lambda!343276 lambda!343260))))

(declare-fun bs!1565108 () Bool)

(assert (= bs!1565108 (and d!1967359 d!1967341)))

(assert (=> bs!1565108 (= lambda!343276 lambda!343274)))

(declare-fun bs!1565109 () Bool)

(assert (= bs!1565109 (and d!1967359 b!6267928)))

(assert (=> bs!1565109 (not (= lambda!343276 lambda!343239))))

(declare-fun bs!1565110 () Bool)

(assert (= bs!1565110 (and d!1967359 d!1966567)))

(assert (=> bs!1565110 (= lambda!343276 lambda!343149)))

(declare-fun bs!1565111 () Bool)

(assert (= bs!1565111 (and d!1967359 d!1967175)))

(assert (=> bs!1565111 (= lambda!343276 lambda!343249)))

(declare-fun bs!1565112 () Bool)

(assert (= bs!1565112 (and d!1967359 d!1967177)))

(assert (=> bs!1565112 (= lambda!343276 lambda!343250)))

(declare-fun bs!1565113 () Bool)

(assert (= bs!1565113 (and d!1967359 b!6268219)))

(assert (=> bs!1565113 (not (= lambda!343276 lambda!343261))))

(declare-fun bs!1565114 () Bool)

(assert (= bs!1565114 (and d!1967359 d!1966543)))

(assert (=> bs!1565114 (= lambda!343276 lambda!343144)))

(declare-fun bs!1565115 () Bool)

(assert (= bs!1565115 (and d!1967359 d!1967211)))

(assert (=> bs!1565115 (= lambda!343276 lambda!343255)))

(declare-fun bs!1565116 () Bool)

(assert (= bs!1565116 (and d!1967359 d!1966597)))

(assert (=> bs!1565116 (= lambda!343276 lambda!343158)))

(declare-fun bs!1565117 () Bool)

(assert (= bs!1565117 (and d!1967359 d!1966599)))

(assert (=> bs!1565117 (= lambda!343276 lambda!343161)))

(declare-fun bs!1565118 () Bool)

(assert (= bs!1565118 (and d!1967359 b!6267930)))

(assert (=> bs!1565118 (not (= lambda!343276 lambda!343240))))

(declare-fun bs!1565119 () Bool)

(assert (= bs!1565119 (and d!1967359 d!1967353)))

(assert (=> bs!1565119 (= lambda!343276 lambda!343275)))

(declare-fun bs!1565120 () Bool)

(assert (= bs!1565120 (and d!1967359 d!1966533)))

(assert (=> bs!1565120 (= lambda!343276 lambda!343131)))

(declare-fun bs!1565121 () Bool)

(assert (= bs!1565121 (and d!1967359 d!1966529)))

(assert (=> bs!1565121 (= lambda!343276 lambda!343128)))

(declare-fun bs!1565122 () Bool)

(assert (= bs!1565122 (and d!1967359 d!1967123)))

(assert (=> bs!1565122 (= lambda!343276 lambda!343243)))

(declare-fun bs!1565123 () Bool)

(assert (= bs!1565123 (and d!1967359 d!1967203)))

(assert (=> bs!1565123 (= lambda!343276 lambda!343254)))

(declare-fun bs!1565124 () Bool)

(assert (= bs!1565124 (and d!1967359 d!1966525)))

(assert (=> bs!1565124 (= lambda!343276 lambda!343127)))

(declare-fun bs!1565125 () Bool)

(assert (= bs!1565125 (and d!1967359 d!1967179)))

(assert (=> bs!1565125 (= lambda!343276 lambda!343251)))

(declare-fun lt!2351393 () List!64860)

(assert (=> d!1967359 (forall!15312 lt!2351393 lambda!343276)))

(declare-fun e!3812626 () List!64860)

(assert (=> d!1967359 (= lt!2351393 e!3812626)))

(declare-fun c!1135716 () Bool)

(assert (=> d!1967359 (= c!1135716 ((_ is Cons!64737) (t!378415 zl!343)))))

(assert (=> d!1967359 (= (unfocusZipperList!1608 (t!378415 zl!343)) lt!2351393)))

(declare-fun b!6268377 () Bool)

(assert (=> b!6268377 (= e!3812626 (Cons!64736 (generalisedConcat!1784 (exprs!6071 (h!71185 (t!378415 zl!343)))) (unfocusZipperList!1608 (t!378415 (t!378415 zl!343)))))))

(declare-fun b!6268378 () Bool)

(assert (=> b!6268378 (= e!3812626 Nil!64736)))

(assert (= (and d!1967359 c!1135716) b!6268377))

(assert (= (and d!1967359 (not c!1135716)) b!6268378))

(declare-fun m!7090388 () Bool)

(assert (=> d!1967359 m!7090388))

(declare-fun m!7090390 () Bool)

(assert (=> b!6268377 m!7090390))

(declare-fun m!7090392 () Bool)

(assert (=> b!6268377 m!7090392))

(assert (=> b!6266947 d!1967359))

(assert (=> d!1966579 d!1967057))

(assert (=> b!6266955 d!1966593))

(declare-fun d!1967361 () Bool)

(declare-fun lt!2351394 () Int)

(assert (=> d!1967361 (>= lt!2351394 0)))

(declare-fun e!3812627 () Int)

(assert (=> d!1967361 (= lt!2351394 e!3812627)))

(declare-fun c!1135717 () Bool)

(assert (=> d!1967361 (= c!1135717 ((_ is Cons!64737) (t!378415 zl!343)))))

(assert (=> d!1967361 (= (zipperDepthTotal!340 (t!378415 zl!343)) lt!2351394)))

(declare-fun b!6268379 () Bool)

(assert (=> b!6268379 (= e!3812627 (+ (contextDepthTotal!310 (h!71185 (t!378415 zl!343))) (zipperDepthTotal!340 (t!378415 (t!378415 zl!343)))))))

(declare-fun b!6268380 () Bool)

(assert (=> b!6268380 (= e!3812627 0)))

(assert (= (and d!1967361 c!1135717) b!6268379))

(assert (= (and d!1967361 (not c!1135717)) b!6268380))

(declare-fun m!7090394 () Bool)

(assert (=> b!6268379 m!7090394))

(declare-fun m!7090396 () Bool)

(assert (=> b!6268379 m!7090396))

(assert (=> b!6266955 d!1967361))

(assert (=> bs!1564096 d!1966505))

(declare-fun d!1967363 () Bool)

(declare-fun res!2585804 () Bool)

(declare-fun e!3812628 () Bool)

(assert (=> d!1967363 (=> res!2585804 e!3812628)))

(assert (=> d!1967363 (= res!2585804 ((_ is Nil!64736) (exprs!6071 (h!71185 zl!343))))))

(assert (=> d!1967363 (= (forall!15312 (exprs!6071 (h!71185 zl!343)) lambda!343131) e!3812628)))

(declare-fun b!6268381 () Bool)

(declare-fun e!3812629 () Bool)

(assert (=> b!6268381 (= e!3812628 e!3812629)))

(declare-fun res!2585805 () Bool)

(assert (=> b!6268381 (=> (not res!2585805) (not e!3812629))))

(assert (=> b!6268381 (= res!2585805 (dynLambda!25595 lambda!343131 (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6268382 () Bool)

(assert (=> b!6268382 (= e!3812629 (forall!15312 (t!378414 (exprs!6071 (h!71185 zl!343))) lambda!343131))))

(assert (= (and d!1967363 (not res!2585804)) b!6268381))

(assert (= (and b!6268381 res!2585805) b!6268382))

(declare-fun b_lambda!238675 () Bool)

(assert (=> (not b_lambda!238675) (not b!6268381)))

(declare-fun m!7090398 () Bool)

(assert (=> b!6268381 m!7090398))

(declare-fun m!7090400 () Bool)

(assert (=> b!6268382 m!7090400))

(assert (=> d!1966533 d!1967363))

(declare-fun d!1967365 () Bool)

(assert (=> d!1967365 (= (isEmpty!36766 (t!378414 lt!2351096)) ((_ is Nil!64736) (t!378414 lt!2351096)))))

(assert (=> b!6266702 d!1967365))

(assert (=> b!6266963 d!1966607))

(declare-fun bs!1565126 () Bool)

(declare-fun b!6268393 () Bool)

(assert (= bs!1565126 (and b!6268393 b!6266871)))

(declare-fun lambda!343277 () Int)

(assert (=> bs!1565126 (not (= lambda!343277 lambda!343155))))

(declare-fun bs!1565127 () Bool)

(assert (= bs!1565127 (and b!6268393 b!6266040)))

(assert (=> bs!1565127 (not (= lambda!343277 lambda!343067))))

(declare-fun bs!1565128 () Bool)

(assert (= bs!1565128 (and b!6268393 b!6266877)))

(assert (=> bs!1565128 (= (and (= (reg!16516 (regTwo!32887 r!7292)) (reg!16516 r!7292)) (= (regTwo!32887 r!7292) r!7292)) (= lambda!343277 lambda!343154))))

(declare-fun bs!1565129 () Bool)

(assert (= bs!1565129 (and b!6268393 d!1966513)))

(assert (=> bs!1565129 (not (= lambda!343277 lambda!343118))))

(declare-fun bs!1565130 () Bool)

(assert (= bs!1565130 (and b!6268393 d!1966515)))

(assert (=> bs!1565130 (not (= lambda!343277 lambda!343123))))

(assert (=> bs!1565127 (not (= lambda!343277 lambda!343068))))

(assert (=> bs!1565130 (not (= lambda!343277 lambda!343124))))

(declare-fun bs!1565131 () Bool)

(assert (= bs!1565131 (and b!6268393 d!1967281)))

(assert (=> bs!1565131 (not (= lambda!343277 lambda!343267))))

(assert (=> b!6268393 true))

(assert (=> b!6268393 true))

(declare-fun bs!1565132 () Bool)

(declare-fun b!6268387 () Bool)

(assert (= bs!1565132 (and b!6268387 b!6266871)))

(declare-fun lambda!343278 () Int)

(assert (=> bs!1565132 (= (and (= (regOne!32886 (regTwo!32887 r!7292)) (regOne!32886 r!7292)) (= (regTwo!32886 (regTwo!32887 r!7292)) (regTwo!32886 r!7292))) (= lambda!343278 lambda!343155))))

(declare-fun bs!1565133 () Bool)

(assert (= bs!1565133 (and b!6268387 b!6268393)))

(assert (=> bs!1565133 (not (= lambda!343278 lambda!343277))))

(declare-fun bs!1565134 () Bool)

(assert (= bs!1565134 (and b!6268387 b!6266040)))

(assert (=> bs!1565134 (not (= lambda!343278 lambda!343067))))

(declare-fun bs!1565135 () Bool)

(assert (= bs!1565135 (and b!6268387 b!6266877)))

(assert (=> bs!1565135 (not (= lambda!343278 lambda!343154))))

(declare-fun bs!1565136 () Bool)

(assert (= bs!1565136 (and b!6268387 d!1966513)))

(assert (=> bs!1565136 (not (= lambda!343278 lambda!343118))))

(declare-fun bs!1565137 () Bool)

(assert (= bs!1565137 (and b!6268387 d!1966515)))

(assert (=> bs!1565137 (not (= lambda!343278 lambda!343123))))

(assert (=> bs!1565134 (= (and (= (regOne!32886 (regTwo!32887 r!7292)) (regOne!32886 r!7292)) (= (regTwo!32886 (regTwo!32887 r!7292)) (regTwo!32886 r!7292))) (= lambda!343278 lambda!343068))))

(assert (=> bs!1565137 (= (and (= (regOne!32886 (regTwo!32887 r!7292)) (regOne!32886 r!7292)) (= (regTwo!32886 (regTwo!32887 r!7292)) (regTwo!32886 r!7292))) (= lambda!343278 lambda!343124))))

(declare-fun bs!1565138 () Bool)

(assert (= bs!1565138 (and b!6268387 d!1967281)))

(assert (=> bs!1565138 (not (= lambda!343278 lambda!343267))))

(assert (=> b!6268387 true))

(assert (=> b!6268387 true))

(declare-fun bm!529983 () Bool)

(declare-fun c!1135720 () Bool)

(declare-fun call!529988 () Bool)

(assert (=> bm!529983 (= call!529988 (Exists!3257 (ite c!1135720 lambda!343277 lambda!343278)))))

(declare-fun b!6268383 () Bool)

(declare-fun c!1135718 () Bool)

(assert (=> b!6268383 (= c!1135718 ((_ is ElementMatch!16187) (regTwo!32887 r!7292)))))

(declare-fun e!3812631 () Bool)

(declare-fun e!3812633 () Bool)

(assert (=> b!6268383 (= e!3812631 e!3812633)))

(declare-fun b!6268384 () Bool)

(declare-fun e!3812636 () Bool)

(assert (=> b!6268384 (= e!3812636 e!3812631)))

(declare-fun res!2585808 () Bool)

(assert (=> b!6268384 (= res!2585808 (not ((_ is EmptyLang!16187) (regTwo!32887 r!7292))))))

(assert (=> b!6268384 (=> (not res!2585808) (not e!3812631))))

(declare-fun b!6268385 () Bool)

(declare-fun c!1135721 () Bool)

(assert (=> b!6268385 (= c!1135721 ((_ is Union!16187) (regTwo!32887 r!7292)))))

(declare-fun e!3812634 () Bool)

(assert (=> b!6268385 (= e!3812633 e!3812634)))

(declare-fun b!6268386 () Bool)

(declare-fun e!3812632 () Bool)

(assert (=> b!6268386 (= e!3812632 (matchRSpec!3288 (regTwo!32887 (regTwo!32887 r!7292)) s!2326))))

(declare-fun e!3812630 () Bool)

(assert (=> b!6268387 (= e!3812630 call!529988)))

(declare-fun b!6268388 () Bool)

(declare-fun call!529989 () Bool)

(assert (=> b!6268388 (= e!3812636 call!529989)))

(declare-fun b!6268389 () Bool)

(assert (=> b!6268389 (= e!3812634 e!3812630)))

(assert (=> b!6268389 (= c!1135720 ((_ is Star!16187) (regTwo!32887 r!7292)))))

(declare-fun b!6268390 () Bool)

(assert (=> b!6268390 (= e!3812634 e!3812632)))

(declare-fun res!2585807 () Bool)

(assert (=> b!6268390 (= res!2585807 (matchRSpec!3288 (regOne!32887 (regTwo!32887 r!7292)) s!2326))))

(assert (=> b!6268390 (=> res!2585807 e!3812632)))

(declare-fun d!1967367 () Bool)

(declare-fun c!1135719 () Bool)

(assert (=> d!1967367 (= c!1135719 ((_ is EmptyExpr!16187) (regTwo!32887 r!7292)))))

(assert (=> d!1967367 (= (matchRSpec!3288 (regTwo!32887 r!7292) s!2326) e!3812636)))

(declare-fun b!6268391 () Bool)

(declare-fun res!2585806 () Bool)

(declare-fun e!3812635 () Bool)

(assert (=> b!6268391 (=> res!2585806 e!3812635)))

(assert (=> b!6268391 (= res!2585806 call!529989)))

(assert (=> b!6268391 (= e!3812630 e!3812635)))

(declare-fun b!6268392 () Bool)

(assert (=> b!6268392 (= e!3812633 (= s!2326 (Cons!64738 (c!1135024 (regTwo!32887 r!7292)) Nil!64738)))))

(assert (=> b!6268393 (= e!3812635 call!529988)))

(declare-fun bm!529984 () Bool)

(assert (=> bm!529984 (= call!529989 (isEmpty!36771 s!2326))))

(assert (= (and d!1967367 c!1135719) b!6268388))

(assert (= (and d!1967367 (not c!1135719)) b!6268384))

(assert (= (and b!6268384 res!2585808) b!6268383))

(assert (= (and b!6268383 c!1135718) b!6268392))

(assert (= (and b!6268383 (not c!1135718)) b!6268385))

(assert (= (and b!6268385 c!1135721) b!6268390))

(assert (= (and b!6268385 (not c!1135721)) b!6268389))

(assert (= (and b!6268390 (not res!2585807)) b!6268386))

(assert (= (and b!6268389 c!1135720) b!6268391))

(assert (= (and b!6268389 (not c!1135720)) b!6268387))

(assert (= (and b!6268391 (not res!2585806)) b!6268393))

(assert (= (or b!6268393 b!6268387) bm!529983))

(assert (= (or b!6268388 b!6268391) bm!529984))

(declare-fun m!7090402 () Bool)

(assert (=> bm!529983 m!7090402))

(declare-fun m!7090404 () Bool)

(assert (=> b!6268386 m!7090404))

(declare-fun m!7090406 () Bool)

(assert (=> b!6268390 m!7090406))

(assert (=> bm!529984 m!7088532))

(assert (=> b!6266870 d!1967367))

(declare-fun d!1967369 () Bool)

(assert (=> d!1967369 (= (isEmpty!36766 (tail!11960 lt!2351079)) ((_ is Nil!64736) (tail!11960 lt!2351079)))))

(assert (=> b!6266713 d!1967369))

(declare-fun d!1967371 () Bool)

(assert (=> d!1967371 (= (tail!11960 lt!2351079) (t!378414 lt!2351079))))

(assert (=> b!6266713 d!1967371))

(declare-fun d!1967373 () Bool)

(declare-fun c!1135722 () Bool)

(assert (=> d!1967373 (= c!1135722 ((_ is Nil!64737) lt!2351237))))

(declare-fun e!3812637 () (InoxSet Context!11142))

(assert (=> d!1967373 (= (content!12156 lt!2351237) e!3812637)))

(declare-fun b!6268394 () Bool)

(assert (=> b!6268394 (= e!3812637 ((as const (Array Context!11142 Bool)) false))))

(declare-fun b!6268395 () Bool)

(assert (=> b!6268395 (= e!3812637 ((_ map or) (store ((as const (Array Context!11142 Bool)) false) (h!71185 lt!2351237) true) (content!12156 (t!378415 lt!2351237))))))

(assert (= (and d!1967373 c!1135722) b!6268394))

(assert (= (and d!1967373 (not c!1135722)) b!6268395))

(declare-fun m!7090408 () Bool)

(assert (=> b!6268395 m!7090408))

(declare-fun m!7090410 () Bool)

(assert (=> b!6268395 m!7090410))

(assert (=> b!6266830 d!1967373))

(declare-fun d!1967375 () Bool)

(declare-fun c!1135723 () Bool)

(assert (=> d!1967375 (= c!1135723 (isEmpty!36771 (tail!11959 (t!378416 s!2326))))))

(declare-fun e!3812638 () Bool)

(assert (=> d!1967375 (= (matchZipper!2199 (derivationStepZipper!2153 lt!2351090 (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))) e!3812638)))

(declare-fun b!6268396 () Bool)

(assert (=> b!6268396 (= e!3812638 (nullableZipper!1957 (derivationStepZipper!2153 lt!2351090 (head!12874 (t!378416 s!2326)))))))

(declare-fun b!6268397 () Bool)

(assert (=> b!6268397 (= e!3812638 (matchZipper!2199 (derivationStepZipper!2153 (derivationStepZipper!2153 lt!2351090 (head!12874 (t!378416 s!2326))) (head!12874 (tail!11959 (t!378416 s!2326)))) (tail!11959 (tail!11959 (t!378416 s!2326)))))))

(assert (= (and d!1967375 c!1135723) b!6268396))

(assert (= (and d!1967375 (not c!1135723)) b!6268397))

(assert (=> d!1967375 m!7088704))

(assert (=> d!1967375 m!7089810))

(assert (=> b!6268396 m!7088736))

(declare-fun m!7090412 () Bool)

(assert (=> b!6268396 m!7090412))

(assert (=> b!6268397 m!7088704))

(assert (=> b!6268397 m!7089814))

(assert (=> b!6268397 m!7088736))

(assert (=> b!6268397 m!7089814))

(declare-fun m!7090414 () Bool)

(assert (=> b!6268397 m!7090414))

(assert (=> b!6268397 m!7088704))

(assert (=> b!6268397 m!7089818))

(assert (=> b!6268397 m!7090414))

(assert (=> b!6268397 m!7089818))

(declare-fun m!7090416 () Bool)

(assert (=> b!6268397 m!7090416))

(assert (=> b!6266893 d!1967375))

(declare-fun bs!1565139 () Bool)

(declare-fun d!1967377 () Bool)

(assert (= bs!1565139 (and d!1967377 d!1966565)))

(declare-fun lambda!343279 () Int)

(assert (=> bs!1565139 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343279 lambda!343148))))

(declare-fun bs!1565140 () Bool)

(assert (= bs!1565140 (and d!1967377 d!1967131)))

(assert (=> bs!1565140 (= (= (head!12874 (t!378416 s!2326)) (head!12874 s!2326)) (= lambda!343279 lambda!343244))))

(declare-fun bs!1565141 () Bool)

(assert (= bs!1565141 (and d!1967377 d!1967303)))

(assert (=> bs!1565141 (= lambda!343279 lambda!343270)))

(declare-fun bs!1565142 () Bool)

(assert (= bs!1565142 (and d!1967377 d!1967101)))

(assert (=> bs!1565142 (= lambda!343279 lambda!343242)))

(declare-fun bs!1565143 () Bool)

(assert (= bs!1565143 (and d!1967377 d!1967235)))

(assert (=> bs!1565143 (= lambda!343279 lambda!343258)))

(declare-fun bs!1565144 () Bool)

(assert (= bs!1565144 (and d!1967377 d!1967169)))

(assert (=> bs!1565144 (= lambda!343279 lambda!343248)))

(declare-fun bs!1565145 () Bool)

(assert (= bs!1565145 (and d!1967377 b!6266061)))

(assert (=> bs!1565145 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343279 lambda!343069))))

(declare-fun bs!1565146 () Bool)

(assert (= bs!1565146 (and d!1967377 d!1967329)))

(assert (=> bs!1565146 (= lambda!343279 lambda!343273)))

(declare-fun bs!1565147 () Bool)

(assert (= bs!1565147 (and d!1967377 d!1966549)))

(assert (=> bs!1565147 (= (= (head!12874 (t!378416 s!2326)) (h!71186 s!2326)) (= lambda!343279 lambda!343147))))

(declare-fun bs!1565148 () Bool)

(assert (= bs!1565148 (and d!1967377 d!1967289)))

(assert (=> bs!1565148 (= lambda!343279 lambda!343268)))

(declare-fun bs!1565149 () Bool)

(assert (= bs!1565149 (and d!1967377 d!1967135)))

(assert (=> bs!1565149 (= lambda!343279 lambda!343245)))

(declare-fun bs!1565150 () Bool)

(assert (= bs!1565150 (and d!1967377 d!1967325)))

(assert (=> bs!1565150 (= lambda!343279 lambda!343272)))

(declare-fun bs!1565151 () Bool)

(assert (= bs!1565151 (and d!1967377 d!1967295)))

(assert (=> bs!1565151 (= lambda!343279 lambda!343269)))

(assert (=> d!1967377 true))

(assert (=> d!1967377 (= (derivationStepZipper!2153 lt!2351090 (head!12874 (t!378416 s!2326))) (flatMap!1692 lt!2351090 lambda!343279))))

(declare-fun bs!1565152 () Bool)

(assert (= bs!1565152 d!1967377))

(declare-fun m!7090418 () Bool)

(assert (=> bs!1565152 m!7090418))

(assert (=> b!6266893 d!1967377))

(assert (=> b!6266893 d!1967103))

(assert (=> b!6266893 d!1967105))

(assert (=> b!6266787 d!1966541))

(declare-fun bs!1565153 () Bool)

(declare-fun d!1967379 () Bool)

(assert (= bs!1565153 (and d!1967379 d!1967313)))

(declare-fun lambda!343280 () Int)

(assert (=> bs!1565153 (= lambda!343280 lambda!343271)))

(declare-fun bs!1565154 () Bool)

(assert (= bs!1565154 (and d!1967379 d!1967183)))

(assert (=> bs!1565154 (= lambda!343280 lambda!343253)))

(declare-fun bs!1565155 () Bool)

(assert (= bs!1565155 (and d!1967379 d!1967251)))

(assert (=> bs!1565155 (not (= lambda!343280 lambda!343259))))

(declare-fun bs!1565156 () Bool)

(assert (= bs!1565156 (and d!1967379 d!1967147)))

(assert (=> bs!1565156 (= lambda!343280 lambda!343246)))

(declare-fun bs!1565157 () Bool)

(assert (= bs!1565157 (and d!1967379 b!6266772)))

(assert (=> bs!1565157 (not (= lambda!343280 lambda!343142))))

(declare-fun bs!1565158 () Bool)

(assert (= bs!1565158 (and d!1967379 b!6267918)))

(assert (=> bs!1565158 (not (= lambda!343280 lambda!343233))))

(declare-fun bs!1565159 () Bool)

(assert (= bs!1565159 (and d!1967379 d!1967161)))

(assert (=> bs!1565159 (= lambda!343280 lambda!343247)))

(declare-fun bs!1565160 () Bool)

(assert (= bs!1565160 (and d!1967379 b!6266769)))

(assert (=> bs!1565160 (not (= lambda!343280 lambda!343140))))

(declare-fun bs!1565161 () Bool)

(assert (= bs!1565161 (and d!1967379 d!1967035)))

(assert (=> bs!1565161 (= lambda!343280 lambda!343228)))

(declare-fun bs!1565162 () Bool)

(assert (= bs!1565162 (and d!1967379 d!1967181)))

(assert (=> bs!1565162 (= lambda!343280 lambda!343252)))

(declare-fun bs!1565163 () Bool)

(assert (= bs!1565163 (and d!1967379 b!6268222)))

(assert (=> bs!1565163 (not (= lambda!343280 lambda!343264))))

(declare-fun bs!1565164 () Bool)

(assert (= bs!1565164 (and d!1967379 b!6266767)))

(assert (=> bs!1565164 (not (= lambda!343280 lambda!343139))))

(declare-fun bs!1565165 () Bool)

(assert (= bs!1565165 (and d!1967379 b!6266774)))

(assert (=> bs!1565165 (not (= lambda!343280 lambda!343143))))

(declare-fun bs!1565166 () Bool)

(assert (= bs!1565166 (and d!1967379 b!6268220)))

(assert (=> bs!1565166 (not (= lambda!343280 lambda!343263))))

(declare-fun bs!1565167 () Bool)

(assert (= bs!1565167 (and d!1967379 d!1967091)))

(assert (=> bs!1565167 (= lambda!343280 lambda!343241)))

(declare-fun bs!1565168 () Bool)

(assert (= bs!1565168 (and d!1967379 d!1967221)))

(assert (=> bs!1565168 (= lambda!343280 lambda!343257)))

(declare-fun bs!1565169 () Bool)

(assert (= bs!1565169 (and d!1967379 b!6267920)))

(assert (=> bs!1565169 (not (= lambda!343280 lambda!343234))))

(declare-fun bs!1565170 () Bool)

(assert (= bs!1565170 (and d!1967379 d!1967219)))

(assert (=> bs!1565170 (= lambda!343280 lambda!343256)))

(declare-fun bs!1565171 () Bool)

(assert (= bs!1565171 (and d!1967379 d!1967077)))

(assert (=> bs!1565171 (not (= lambda!343280 lambda!343231))))

(assert (=> d!1967379 (= (nullableZipper!1957 lt!2351110) (exists!2521 lt!2351110 lambda!343280))))

(declare-fun bs!1565172 () Bool)

(assert (= bs!1565172 d!1967379))

(declare-fun m!7090420 () Bool)

(assert (=> bs!1565172 m!7090420))

(assert (=> b!6266833 d!1967379))

(declare-fun b!6268398 () Bool)

(declare-fun e!3812639 () Bool)

(declare-fun e!3812643 () Bool)

(assert (=> b!6268398 (= e!3812639 e!3812643)))

(declare-fun res!2585810 () Bool)

(assert (=> b!6268398 (=> (not res!2585810) (not e!3812643))))

(declare-fun call!529992 () Bool)

(assert (=> b!6268398 (= res!2585810 call!529992)))

(declare-fun b!6268399 () Bool)

(declare-fun res!2585812 () Bool)

(assert (=> b!6268399 (=> res!2585812 e!3812639)))

(assert (=> b!6268399 (= res!2585812 (not ((_ is Concat!25032) lt!2351256)))))

(declare-fun e!3812642 () Bool)

(assert (=> b!6268399 (= e!3812642 e!3812639)))

(declare-fun b!6268400 () Bool)

(declare-fun e!3812640 () Bool)

(declare-fun e!3812644 () Bool)

(assert (=> b!6268400 (= e!3812640 e!3812644)))

(declare-fun c!1135724 () Bool)

(assert (=> b!6268400 (= c!1135724 ((_ is Star!16187) lt!2351256))))

(declare-fun d!1967381 () Bool)

(declare-fun res!2585813 () Bool)

(assert (=> d!1967381 (=> res!2585813 e!3812640)))

(assert (=> d!1967381 (= res!2585813 ((_ is ElementMatch!16187) lt!2351256))))

(assert (=> d!1967381 (= (validRegex!7923 lt!2351256) e!3812640)))

(declare-fun b!6268401 () Bool)

(declare-fun e!3812645 () Bool)

(declare-fun call!529991 () Bool)

(assert (=> b!6268401 (= e!3812645 call!529991)))

(declare-fun bm!529985 () Bool)

(declare-fun call!529990 () Bool)

(assert (=> bm!529985 (= call!529992 call!529990)))

(declare-fun b!6268402 () Bool)

(assert (=> b!6268402 (= e!3812644 e!3812642)))

(declare-fun c!1135725 () Bool)

(assert (=> b!6268402 (= c!1135725 ((_ is Union!16187) lt!2351256))))

(declare-fun bm!529986 () Bool)

(assert (=> bm!529986 (= call!529991 (validRegex!7923 (ite c!1135725 (regTwo!32887 lt!2351256) (regTwo!32886 lt!2351256))))))

(declare-fun bm!529987 () Bool)

(assert (=> bm!529987 (= call!529990 (validRegex!7923 (ite c!1135724 (reg!16516 lt!2351256) (ite c!1135725 (regOne!32887 lt!2351256) (regOne!32886 lt!2351256)))))))

(declare-fun b!6268403 () Bool)

(declare-fun res!2585811 () Bool)

(assert (=> b!6268403 (=> (not res!2585811) (not e!3812645))))

(assert (=> b!6268403 (= res!2585811 call!529992)))

(assert (=> b!6268403 (= e!3812642 e!3812645)))

(declare-fun b!6268404 () Bool)

(assert (=> b!6268404 (= e!3812643 call!529991)))

(declare-fun b!6268405 () Bool)

(declare-fun e!3812641 () Bool)

(assert (=> b!6268405 (= e!3812644 e!3812641)))

(declare-fun res!2585809 () Bool)

(assert (=> b!6268405 (= res!2585809 (not (nullable!6180 (reg!16516 lt!2351256))))))

(assert (=> b!6268405 (=> (not res!2585809) (not e!3812641))))

(declare-fun b!6268406 () Bool)

(assert (=> b!6268406 (= e!3812641 call!529990)))

(assert (= (and d!1967381 (not res!2585813)) b!6268400))

(assert (= (and b!6268400 c!1135724) b!6268405))

(assert (= (and b!6268400 (not c!1135724)) b!6268402))

(assert (= (and b!6268405 res!2585809) b!6268406))

(assert (= (and b!6268402 c!1135725) b!6268403))

(assert (= (and b!6268402 (not c!1135725)) b!6268399))

(assert (= (and b!6268403 res!2585811) b!6268401))

(assert (= (and b!6268399 (not res!2585812)) b!6268398))

(assert (= (and b!6268398 res!2585810) b!6268404))

(assert (= (or b!6268401 b!6268404) bm!529986))

(assert (= (or b!6268403 b!6268398) bm!529985))

(assert (= (or b!6268406 bm!529985) bm!529987))

(declare-fun m!7090422 () Bool)

(assert (=> bm!529986 m!7090422))

(declare-fun m!7090424 () Bool)

(assert (=> bm!529987 m!7090424))

(declare-fun m!7090426 () Bool)

(assert (=> b!6268405 m!7090426))

(assert (=> d!1966597 d!1967381))

(declare-fun d!1967383 () Bool)

(declare-fun res!2585814 () Bool)

(declare-fun e!3812646 () Bool)

(assert (=> d!1967383 (=> res!2585814 e!3812646)))

(assert (=> d!1967383 (= res!2585814 ((_ is Nil!64736) (unfocusZipperList!1608 zl!343)))))

(assert (=> d!1967383 (= (forall!15312 (unfocusZipperList!1608 zl!343) lambda!343158) e!3812646)))

(declare-fun b!6268407 () Bool)

(declare-fun e!3812647 () Bool)

(assert (=> b!6268407 (= e!3812646 e!3812647)))

(declare-fun res!2585815 () Bool)

(assert (=> b!6268407 (=> (not res!2585815) (not e!3812647))))

(assert (=> b!6268407 (= res!2585815 (dynLambda!25595 lambda!343158 (h!71184 (unfocusZipperList!1608 zl!343))))))

(declare-fun b!6268408 () Bool)

(assert (=> b!6268408 (= e!3812647 (forall!15312 (t!378414 (unfocusZipperList!1608 zl!343)) lambda!343158))))

(assert (= (and d!1967383 (not res!2585814)) b!6268407))

(assert (= (and b!6268407 res!2585815) b!6268408))

(declare-fun b_lambda!238677 () Bool)

(assert (=> (not b_lambda!238677) (not b!6268407)))

(declare-fun m!7090428 () Bool)

(assert (=> b!6268407 m!7090428))

(declare-fun m!7090430 () Bool)

(assert (=> b!6268408 m!7090430))

(assert (=> d!1966597 d!1967383))

(declare-fun d!1967385 () Bool)

(assert (=> d!1967385 (= (nullable!6180 (regOne!32886 (regOne!32886 (regOne!32886 r!7292)))) (nullableFct!2132 (regOne!32886 (regOne!32886 (regOne!32886 r!7292)))))))

(declare-fun bs!1565173 () Bool)

(assert (= bs!1565173 d!1967385))

(declare-fun m!7090432 () Bool)

(assert (=> bs!1565173 m!7090432))

(assert (=> b!6266812 d!1967385))

(declare-fun d!1967387 () Bool)

(declare-fun c!1135726 () Bool)

(assert (=> d!1967387 (= c!1135726 (isEmpty!36771 (t!378416 s!2326)))))

(declare-fun e!3812648 () Bool)

(assert (=> d!1967387 (= (matchZipper!2199 ((_ map or) lt!2351102 lt!2351108) (t!378416 s!2326)) e!3812648)))

(declare-fun b!6268409 () Bool)

(assert (=> b!6268409 (= e!3812648 (nullableZipper!1957 ((_ map or) lt!2351102 lt!2351108)))))

(declare-fun b!6268410 () Bool)

(assert (=> b!6268410 (= e!3812648 (matchZipper!2199 (derivationStepZipper!2153 ((_ map or) lt!2351102 lt!2351108) (head!12874 (t!378416 s!2326))) (tail!11959 (t!378416 s!2326))))))

(assert (= (and d!1967387 c!1135726) b!6268409))

(assert (= (and d!1967387 (not c!1135726)) b!6268410))

(assert (=> d!1967387 m!7088696))

(declare-fun m!7090434 () Bool)

(assert (=> b!6268409 m!7090434))

(assert (=> b!6268410 m!7088700))

(assert (=> b!6268410 m!7088700))

(declare-fun m!7090436 () Bool)

(assert (=> b!6268410 m!7090436))

(assert (=> b!6268410 m!7088704))

(assert (=> b!6268410 m!7090436))

(assert (=> b!6268410 m!7088704))

(declare-fun m!7090438 () Bool)

(assert (=> b!6268410 m!7090438))

(assert (=> d!1966617 d!1967387))

(assert (=> d!1966617 d!1966583))

(declare-fun e!3812649 () Bool)

(declare-fun d!1967389 () Bool)

(assert (=> d!1967389 (= (matchZipper!2199 ((_ map or) lt!2351102 lt!2351108) (t!378416 s!2326)) e!3812649)))

(declare-fun res!2585816 () Bool)

(assert (=> d!1967389 (=> res!2585816 e!3812649)))

(assert (=> d!1967389 (= res!2585816 (matchZipper!2199 lt!2351102 (t!378416 s!2326)))))

(assert (=> d!1967389 true))

(declare-fun _$48!2014 () Unit!158079)

(assert (=> d!1967389 (= (choose!46499 lt!2351102 lt!2351108 (t!378416 s!2326)) _$48!2014)))

(declare-fun b!6268411 () Bool)

(assert (=> b!6268411 (= e!3812649 (matchZipper!2199 lt!2351108 (t!378416 s!2326)))))

(assert (= (and d!1967389 (not res!2585816)) b!6268411))

(assert (=> d!1967389 m!7088838))

(assert (=> d!1967389 m!7087932))

(assert (=> b!6268411 m!7088038))

(assert (=> d!1966617 d!1967389))

(declare-fun b!6268412 () Bool)

(declare-fun e!3812650 () Bool)

(declare-fun e!3812654 () Bool)

(assert (=> b!6268412 (= e!3812650 e!3812654)))

(declare-fun res!2585818 () Bool)

(assert (=> b!6268412 (=> (not res!2585818) (not e!3812654))))

(declare-fun call!529995 () Bool)

(assert (=> b!6268412 (= res!2585818 call!529995)))

(declare-fun b!6268413 () Bool)

(declare-fun res!2585820 () Bool)

(assert (=> b!6268413 (=> res!2585820 e!3812650)))

(assert (=> b!6268413 (= res!2585820 (not ((_ is Concat!25032) lt!2351240)))))

(declare-fun e!3812653 () Bool)

(assert (=> b!6268413 (= e!3812653 e!3812650)))

(declare-fun b!6268414 () Bool)

(declare-fun e!3812651 () Bool)

(declare-fun e!3812655 () Bool)

(assert (=> b!6268414 (= e!3812651 e!3812655)))

(declare-fun c!1135727 () Bool)

(assert (=> b!6268414 (= c!1135727 ((_ is Star!16187) lt!2351240))))

(declare-fun d!1967391 () Bool)

(declare-fun res!2585821 () Bool)

(assert (=> d!1967391 (=> res!2585821 e!3812651)))

(assert (=> d!1967391 (= res!2585821 ((_ is ElementMatch!16187) lt!2351240))))

(assert (=> d!1967391 (= (validRegex!7923 lt!2351240) e!3812651)))

(declare-fun b!6268415 () Bool)

(declare-fun e!3812656 () Bool)

(declare-fun call!529994 () Bool)

(assert (=> b!6268415 (= e!3812656 call!529994)))

(declare-fun bm!529988 () Bool)

(declare-fun call!529993 () Bool)

(assert (=> bm!529988 (= call!529995 call!529993)))

(declare-fun b!6268416 () Bool)

(assert (=> b!6268416 (= e!3812655 e!3812653)))

(declare-fun c!1135728 () Bool)

(assert (=> b!6268416 (= c!1135728 ((_ is Union!16187) lt!2351240))))

(declare-fun bm!529989 () Bool)

(assert (=> bm!529989 (= call!529994 (validRegex!7923 (ite c!1135728 (regTwo!32887 lt!2351240) (regTwo!32886 lt!2351240))))))

(declare-fun bm!529990 () Bool)

(assert (=> bm!529990 (= call!529993 (validRegex!7923 (ite c!1135727 (reg!16516 lt!2351240) (ite c!1135728 (regOne!32887 lt!2351240) (regOne!32886 lt!2351240)))))))

(declare-fun b!6268417 () Bool)

(declare-fun res!2585819 () Bool)

(assert (=> b!6268417 (=> (not res!2585819) (not e!3812656))))

(assert (=> b!6268417 (= res!2585819 call!529995)))

(assert (=> b!6268417 (= e!3812653 e!3812656)))

(declare-fun b!6268418 () Bool)

(assert (=> b!6268418 (= e!3812654 call!529994)))

(declare-fun b!6268419 () Bool)

(declare-fun e!3812652 () Bool)

(assert (=> b!6268419 (= e!3812655 e!3812652)))

(declare-fun res!2585817 () Bool)

(assert (=> b!6268419 (= res!2585817 (not (nullable!6180 (reg!16516 lt!2351240))))))

(assert (=> b!6268419 (=> (not res!2585817) (not e!3812652))))

(declare-fun b!6268420 () Bool)

(assert (=> b!6268420 (= e!3812652 call!529993)))

(assert (= (and d!1967391 (not res!2585821)) b!6268414))

(assert (= (and b!6268414 c!1135727) b!6268419))

(assert (= (and b!6268414 (not c!1135727)) b!6268416))

(assert (= (and b!6268419 res!2585817) b!6268420))

(assert (= (and b!6268416 c!1135728) b!6268417))

(assert (= (and b!6268416 (not c!1135728)) b!6268413))

(assert (= (and b!6268417 res!2585819) b!6268415))

(assert (= (and b!6268413 (not res!2585820)) b!6268412))

(assert (= (and b!6268412 res!2585818) b!6268418))

(assert (= (or b!6268415 b!6268418) bm!529989))

(assert (= (or b!6268417 b!6268412) bm!529988))

(assert (= (or b!6268420 bm!529988) bm!529990))

(declare-fun m!7090440 () Bool)

(assert (=> bm!529989 m!7090440))

(declare-fun m!7090442 () Bool)

(assert (=> bm!529990 m!7090442))

(declare-fun m!7090444 () Bool)

(assert (=> b!6268419 m!7090444))

(assert (=> d!1966561 d!1967391))

(assert (=> d!1966561 d!1966597))

(assert (=> d!1966561 d!1966599))

(declare-fun b!6268421 () Bool)

(declare-fun e!3812657 () Bool)

(declare-fun e!3812661 () Bool)

(assert (=> b!6268421 (= e!3812657 e!3812661)))

(declare-fun res!2585823 () Bool)

(assert (=> b!6268421 (=> (not res!2585823) (not e!3812661))))

(declare-fun call!529998 () Bool)

(assert (=> b!6268421 (= res!2585823 call!529998)))

(declare-fun b!6268422 () Bool)

(declare-fun res!2585825 () Bool)

(assert (=> b!6268422 (=> res!2585825 e!3812657)))

(assert (=> b!6268422 (= res!2585825 (not ((_ is Concat!25032) (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292))))))))

(declare-fun e!3812660 () Bool)

(assert (=> b!6268422 (= e!3812660 e!3812657)))

(declare-fun b!6268423 () Bool)

(declare-fun e!3812658 () Bool)

(declare-fun e!3812662 () Bool)

(assert (=> b!6268423 (= e!3812658 e!3812662)))

(declare-fun c!1135729 () Bool)

(assert (=> b!6268423 (= c!1135729 ((_ is Star!16187) (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))))))

(declare-fun d!1967393 () Bool)

(declare-fun res!2585826 () Bool)

(assert (=> d!1967393 (=> res!2585826 e!3812658)))

(assert (=> d!1967393 (= res!2585826 ((_ is ElementMatch!16187) (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))))))

(assert (=> d!1967393 (= (validRegex!7923 (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))) e!3812658)))

(declare-fun b!6268424 () Bool)

(declare-fun e!3812663 () Bool)

(declare-fun call!529997 () Bool)

(assert (=> b!6268424 (= e!3812663 call!529997)))

(declare-fun bm!529991 () Bool)

(declare-fun call!529996 () Bool)

(assert (=> bm!529991 (= call!529998 call!529996)))

(declare-fun b!6268425 () Bool)

(assert (=> b!6268425 (= e!3812662 e!3812660)))

(declare-fun c!1135730 () Bool)

(assert (=> b!6268425 (= c!1135730 ((_ is Union!16187) (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))))))

(declare-fun bm!529992 () Bool)

(assert (=> bm!529992 (= call!529997 (validRegex!7923 (ite c!1135730 (regTwo!32887 (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))) (regTwo!32886 (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))))))))

(declare-fun bm!529993 () Bool)

(assert (=> bm!529993 (= call!529996 (validRegex!7923 (ite c!1135729 (reg!16516 (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))) (ite c!1135730 (regOne!32887 (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))) (regOne!32886 (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292))))))))))

(declare-fun b!6268426 () Bool)

(declare-fun res!2585824 () Bool)

(assert (=> b!6268426 (=> (not res!2585824) (not e!3812663))))

(assert (=> b!6268426 (= res!2585824 call!529998)))

(assert (=> b!6268426 (= e!3812660 e!3812663)))

(declare-fun b!6268427 () Bool)

(assert (=> b!6268427 (= e!3812661 call!529997)))

(declare-fun b!6268428 () Bool)

(declare-fun e!3812659 () Bool)

(assert (=> b!6268428 (= e!3812662 e!3812659)))

(declare-fun res!2585822 () Bool)

(assert (=> b!6268428 (= res!2585822 (not (nullable!6180 (reg!16516 (ite c!1135246 (reg!16516 r!7292) (ite c!1135247 (regOne!32887 r!7292) (regOne!32886 r!7292)))))))))

(assert (=> b!6268428 (=> (not res!2585822) (not e!3812659))))

(declare-fun b!6268429 () Bool)

(assert (=> b!6268429 (= e!3812659 call!529996)))

(assert (= (and d!1967393 (not res!2585826)) b!6268423))

(assert (= (and b!6268423 c!1135729) b!6268428))

(assert (= (and b!6268423 (not c!1135729)) b!6268425))

(assert (= (and b!6268428 res!2585822) b!6268429))

(assert (= (and b!6268425 c!1135730) b!6268426))

(assert (= (and b!6268425 (not c!1135730)) b!6268422))

(assert (= (and b!6268426 res!2585824) b!6268424))

(assert (= (and b!6268422 (not res!2585825)) b!6268421))

(assert (= (and b!6268421 res!2585823) b!6268427))

(assert (= (or b!6268424 b!6268427) bm!529992))

(assert (= (or b!6268426 b!6268421) bm!529991))

(assert (= (or b!6268429 bm!529991) bm!529993))

(declare-fun m!7090446 () Bool)

(assert (=> bm!529992 m!7090446))

(declare-fun m!7090448 () Bool)

(assert (=> bm!529993 m!7090448))

(declare-fun m!7090450 () Bool)

(assert (=> b!6268428 m!7090450))

(assert (=> bm!529684 d!1967393))

(assert (=> d!1966581 d!1967057))

(assert (=> b!6266631 d!1967191))

(declare-fun b!6268430 () Bool)

(declare-fun e!3812669 () Bool)

(declare-fun lt!2351395 () Bool)

(declare-fun call!529999 () Bool)

(assert (=> b!6268430 (= e!3812669 (= lt!2351395 call!529999))))

(declare-fun b!6268431 () Bool)

(declare-fun e!3812665 () Bool)

(assert (=> b!6268431 (= e!3812665 (not lt!2351395))))

(declare-fun b!6268432 () Bool)

(declare-fun res!2585832 () Bool)

(declare-fun e!3812667 () Bool)

(assert (=> b!6268432 (=> res!2585832 e!3812667)))

(assert (=> b!6268432 (= res!2585832 (not ((_ is ElementMatch!16187) (derivativeStep!4896 lt!2351098 (head!12874 s!2326)))))))

(assert (=> b!6268432 (= e!3812665 e!3812667)))

(declare-fun b!6268433 () Bool)

(declare-fun e!3812666 () Bool)

(assert (=> b!6268433 (= e!3812666 (= (head!12874 (tail!11959 s!2326)) (c!1135024 (derivativeStep!4896 lt!2351098 (head!12874 s!2326)))))))

(declare-fun b!6268434 () Bool)

(declare-fun res!2585827 () Bool)

(assert (=> b!6268434 (=> (not res!2585827) (not e!3812666))))

(assert (=> b!6268434 (= res!2585827 (not call!529999))))

(declare-fun b!6268436 () Bool)

(declare-fun res!2585834 () Bool)

(assert (=> b!6268436 (=> (not res!2585834) (not e!3812666))))

(assert (=> b!6268436 (= res!2585834 (isEmpty!36771 (tail!11959 (tail!11959 s!2326))))))

(declare-fun b!6268437 () Bool)

(declare-fun e!3812664 () Bool)

(declare-fun e!3812668 () Bool)

(assert (=> b!6268437 (= e!3812664 e!3812668)))

(declare-fun res!2585833 () Bool)

(assert (=> b!6268437 (=> res!2585833 e!3812668)))

(assert (=> b!6268437 (= res!2585833 call!529999)))

(declare-fun b!6268438 () Bool)

(declare-fun e!3812670 () Bool)

(assert (=> b!6268438 (= e!3812670 (matchR!8370 (derivativeStep!4896 (derivativeStep!4896 lt!2351098 (head!12874 s!2326)) (head!12874 (tail!11959 s!2326))) (tail!11959 (tail!11959 s!2326))))))

(declare-fun b!6268439 () Bool)

(assert (=> b!6268439 (= e!3812668 (not (= (head!12874 (tail!11959 s!2326)) (c!1135024 (derivativeStep!4896 lt!2351098 (head!12874 s!2326))))))))

(declare-fun b!6268440 () Bool)

(declare-fun res!2585830 () Bool)

(assert (=> b!6268440 (=> res!2585830 e!3812667)))

(assert (=> b!6268440 (= res!2585830 e!3812666)))

(declare-fun res!2585828 () Bool)

(assert (=> b!6268440 (=> (not res!2585828) (not e!3812666))))

(assert (=> b!6268440 (= res!2585828 lt!2351395)))

(declare-fun b!6268441 () Bool)

(declare-fun res!2585831 () Bool)

(assert (=> b!6268441 (=> res!2585831 e!3812668)))

(assert (=> b!6268441 (= res!2585831 (not (isEmpty!36771 (tail!11959 (tail!11959 s!2326)))))))

(declare-fun b!6268442 () Bool)

(assert (=> b!6268442 (= e!3812670 (nullable!6180 (derivativeStep!4896 lt!2351098 (head!12874 s!2326))))))

(declare-fun bm!529994 () Bool)

(assert (=> bm!529994 (= call!529999 (isEmpty!36771 (tail!11959 s!2326)))))

(declare-fun b!6268443 () Bool)

(assert (=> b!6268443 (= e!3812667 e!3812664)))

(declare-fun res!2585829 () Bool)

(assert (=> b!6268443 (=> (not res!2585829) (not e!3812664))))

(assert (=> b!6268443 (= res!2585829 (not lt!2351395))))

(declare-fun d!1967395 () Bool)

(assert (=> d!1967395 e!3812669))

(declare-fun c!1135733 () Bool)

(assert (=> d!1967395 (= c!1135733 ((_ is EmptyExpr!16187) (derivativeStep!4896 lt!2351098 (head!12874 s!2326))))))

(assert (=> d!1967395 (= lt!2351395 e!3812670)))

(declare-fun c!1135732 () Bool)

(assert (=> d!1967395 (= c!1135732 (isEmpty!36771 (tail!11959 s!2326)))))

(assert (=> d!1967395 (validRegex!7923 (derivativeStep!4896 lt!2351098 (head!12874 s!2326)))))

(assert (=> d!1967395 (= (matchR!8370 (derivativeStep!4896 lt!2351098 (head!12874 s!2326)) (tail!11959 s!2326)) lt!2351395)))

(declare-fun b!6268435 () Bool)

(assert (=> b!6268435 (= e!3812669 e!3812665)))

(declare-fun c!1135731 () Bool)

(assert (=> b!6268435 (= c!1135731 ((_ is EmptyLang!16187) (derivativeStep!4896 lt!2351098 (head!12874 s!2326))))))

(assert (= (and d!1967395 c!1135732) b!6268442))

(assert (= (and d!1967395 (not c!1135732)) b!6268438))

(assert (= (and d!1967395 c!1135733) b!6268430))

(assert (= (and d!1967395 (not c!1135733)) b!6268435))

(assert (= (and b!6268435 c!1135731) b!6268431))

(assert (= (and b!6268435 (not c!1135731)) b!6268432))

(assert (= (and b!6268432 (not res!2585832)) b!6268440))

(assert (= (and b!6268440 res!2585828) b!6268434))

(assert (= (and b!6268434 res!2585827) b!6268436))

(assert (= (and b!6268436 res!2585834) b!6268433))

(assert (= (and b!6268440 (not res!2585830)) b!6268443))

(assert (= (and b!6268443 res!2585829) b!6268437))

(assert (= (and b!6268437 (not res!2585833)) b!6268441))

(assert (= (and b!6268441 (not res!2585831)) b!6268439))

(assert (= (or b!6268430 b!6268434 b!6268437) bm!529994))

(assert (=> d!1967395 m!7088540))

(assert (=> d!1967395 m!7088594))

(assert (=> d!1967395 m!7088598))

(declare-fun m!7090452 () Bool)

(assert (=> d!1967395 m!7090452))

(assert (=> b!6268441 m!7088540))

(assert (=> b!6268441 m!7089866))

(assert (=> b!6268441 m!7089866))

(assert (=> b!6268441 m!7090086))

(assert (=> b!6268436 m!7088540))

(assert (=> b!6268436 m!7089866))

(assert (=> b!6268436 m!7089866))

(assert (=> b!6268436 m!7090086))

(assert (=> b!6268442 m!7088598))

(declare-fun m!7090454 () Bool)

(assert (=> b!6268442 m!7090454))

(assert (=> bm!529994 m!7088540))

(assert (=> bm!529994 m!7088594))

(assert (=> b!6268433 m!7088540))

(assert (=> b!6268433 m!7089862))

(assert (=> b!6268438 m!7088540))

(assert (=> b!6268438 m!7089862))

(assert (=> b!6268438 m!7088598))

(assert (=> b!6268438 m!7089862))

(declare-fun m!7090456 () Bool)

(assert (=> b!6268438 m!7090456))

(assert (=> b!6268438 m!7088540))

(assert (=> b!6268438 m!7089866))

(assert (=> b!6268438 m!7090456))

(assert (=> b!6268438 m!7089866))

(declare-fun m!7090458 () Bool)

(assert (=> b!6268438 m!7090458))

(assert (=> b!6268439 m!7088540))

(assert (=> b!6268439 m!7089862))

(assert (=> b!6266755 d!1967395))

(declare-fun b!6268444 () Bool)

(declare-fun e!3812675 () Regex!16187)

(declare-fun call!530003 () Regex!16187)

(declare-fun call!530000 () Regex!16187)

(assert (=> b!6268444 (= e!3812675 (Union!16187 (Concat!25032 call!530003 (regTwo!32886 lt!2351098)) call!530000))))

(declare-fun b!6268445 () Bool)

(declare-fun e!3812671 () Regex!16187)

(assert (=> b!6268445 (= e!3812671 EmptyLang!16187)))

(declare-fun b!6268446 () Bool)

(declare-fun e!3812672 () Regex!16187)

(declare-fun call!530001 () Regex!16187)

(assert (=> b!6268446 (= e!3812672 (Union!16187 call!530001 call!530003))))

(declare-fun b!6268447 () Bool)

(declare-fun c!1135734 () Bool)

(assert (=> b!6268447 (= c!1135734 (nullable!6180 (regOne!32886 lt!2351098)))))

(declare-fun e!3812674 () Regex!16187)

(assert (=> b!6268447 (= e!3812674 e!3812675)))

(declare-fun b!6268448 () Bool)

(declare-fun call!530002 () Regex!16187)

(assert (=> b!6268448 (= e!3812674 (Concat!25032 call!530002 lt!2351098))))

(declare-fun b!6268449 () Bool)

(declare-fun e!3812673 () Regex!16187)

(assert (=> b!6268449 (= e!3812673 (ite (= (head!12874 s!2326) (c!1135024 lt!2351098)) EmptyExpr!16187 EmptyLang!16187))))

(declare-fun d!1967397 () Bool)

(declare-fun lt!2351396 () Regex!16187)

(assert (=> d!1967397 (validRegex!7923 lt!2351396)))

(assert (=> d!1967397 (= lt!2351396 e!3812671)))

(declare-fun c!1135737 () Bool)

(assert (=> d!1967397 (= c!1135737 (or ((_ is EmptyExpr!16187) lt!2351098) ((_ is EmptyLang!16187) lt!2351098)))))

(assert (=> d!1967397 (validRegex!7923 lt!2351098)))

(assert (=> d!1967397 (= (derivativeStep!4896 lt!2351098 (head!12874 s!2326)) lt!2351396)))

(declare-fun b!6268450 () Bool)

(assert (=> b!6268450 (= e!3812675 (Union!16187 (Concat!25032 call!530000 (regTwo!32886 lt!2351098)) EmptyLang!16187))))

(declare-fun b!6268451 () Bool)

(assert (=> b!6268451 (= e!3812672 e!3812674)))

(declare-fun c!1135735 () Bool)

(assert (=> b!6268451 (= c!1135735 ((_ is Star!16187) lt!2351098))))

(declare-fun bm!529995 () Bool)

(assert (=> bm!529995 (= call!530000 call!530002)))

(declare-fun bm!529996 () Bool)

(assert (=> bm!529996 (= call!530002 call!530001)))

(declare-fun b!6268452 () Bool)

(declare-fun c!1135736 () Bool)

(assert (=> b!6268452 (= c!1135736 ((_ is Union!16187) lt!2351098))))

(assert (=> b!6268452 (= e!3812673 e!3812672)))

(declare-fun bm!529997 () Bool)

(assert (=> bm!529997 (= call!530003 (derivativeStep!4896 (ite c!1135736 (regTwo!32887 lt!2351098) (regOne!32886 lt!2351098)) (head!12874 s!2326)))))

(declare-fun bm!529998 () Bool)

(assert (=> bm!529998 (= call!530001 (derivativeStep!4896 (ite c!1135736 (regOne!32887 lt!2351098) (ite c!1135735 (reg!16516 lt!2351098) (ite c!1135734 (regTwo!32886 lt!2351098) (regOne!32886 lt!2351098)))) (head!12874 s!2326)))))

(declare-fun b!6268453 () Bool)

(assert (=> b!6268453 (= e!3812671 e!3812673)))

(declare-fun c!1135738 () Bool)

(assert (=> b!6268453 (= c!1135738 ((_ is ElementMatch!16187) lt!2351098))))

(assert (= (and d!1967397 c!1135737) b!6268445))

(assert (= (and d!1967397 (not c!1135737)) b!6268453))

(assert (= (and b!6268453 c!1135738) b!6268449))

(assert (= (and b!6268453 (not c!1135738)) b!6268452))

(assert (= (and b!6268452 c!1135736) b!6268446))

(assert (= (and b!6268452 (not c!1135736)) b!6268451))

(assert (= (and b!6268451 c!1135735) b!6268448))

(assert (= (and b!6268451 (not c!1135735)) b!6268447))

(assert (= (and b!6268447 c!1135734) b!6268444))

(assert (= (and b!6268447 (not c!1135734)) b!6268450))

(assert (= (or b!6268444 b!6268450) bm!529995))

(assert (= (or b!6268448 bm!529995) bm!529996))

(assert (= (or b!6268446 b!6268444) bm!529997))

(assert (= (or b!6268446 bm!529996) bm!529998))

(declare-fun m!7090460 () Bool)

(assert (=> b!6268447 m!7090460))

(declare-fun m!7090462 () Bool)

(assert (=> d!1967397 m!7090462))

(assert (=> d!1967397 m!7088572))

(assert (=> bm!529997 m!7088536))

(declare-fun m!7090464 () Bool)

(assert (=> bm!529997 m!7090464))

(assert (=> bm!529998 m!7088536))

(declare-fun m!7090466 () Bool)

(assert (=> bm!529998 m!7090466))

(assert (=> b!6266755 d!1967397))

(assert (=> b!6266755 d!1967109))

(assert (=> b!6266755 d!1967043))

(declare-fun c!1135740 () Bool)

(declare-fun call!530007 () (InoxSet Context!11142))

(declare-fun bm!529999 () Bool)

(declare-fun call!530009 () List!64860)

(assert (=> bm!529999 (= call!530007 (derivationStepZipperDown!1435 (ite c!1135740 (regTwo!32887 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))) (regOne!32886 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292)))))))) (ite c!1135740 (ite (or c!1135253 c!1135256) lt!2351103 (Context!11143 call!529690)) (Context!11143 call!530009)) (h!71186 s!2326)))))

(declare-fun call!530004 () List!64860)

(declare-fun c!1135741 () Bool)

(declare-fun c!1135743 () Bool)

(declare-fun call!530008 () (InoxSet Context!11142))

(declare-fun bm!530000 () Bool)

(assert (=> bm!530000 (= call!530008 (derivationStepZipperDown!1435 (ite c!1135740 (regOne!32887 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))) (ite c!1135743 (regTwo!32886 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))) (ite c!1135741 (regOne!32886 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))) (reg!16516 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292)))))))))) (ite (or c!1135740 c!1135743) (ite (or c!1135253 c!1135256) lt!2351103 (Context!11143 call!529690)) (Context!11143 call!530004)) (h!71186 s!2326)))))

(declare-fun c!1135742 () Bool)

(declare-fun b!6268454 () Bool)

(assert (=> b!6268454 (= c!1135742 ((_ is Star!16187) (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))))))

(declare-fun e!3812676 () (InoxSet Context!11142))

(declare-fun e!3812677 () (InoxSet Context!11142))

(assert (=> b!6268454 (= e!3812676 e!3812677)))

(declare-fun bm!530001 () Bool)

(declare-fun call!530005 () (InoxSet Context!11142))

(declare-fun call!530006 () (InoxSet Context!11142))

(assert (=> bm!530001 (= call!530005 call!530006)))

(declare-fun c!1135739 () Bool)

(declare-fun d!1967399 () Bool)

(assert (=> d!1967399 (= c!1135739 (and ((_ is ElementMatch!16187) (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))) (= (c!1135024 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))) (h!71186 s!2326))))))

(declare-fun e!3812679 () (InoxSet Context!11142))

(assert (=> d!1967399 (= (derivationStepZipperDown!1435 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292)))))) (ite (or c!1135253 c!1135256) lt!2351103 (Context!11143 call!529690)) (h!71186 s!2326)) e!3812679)))

(declare-fun b!6268455 () Bool)

(assert (=> b!6268455 (= e!3812679 (store ((as const (Array Context!11142 Bool)) false) (ite (or c!1135253 c!1135256) lt!2351103 (Context!11143 call!529690)) true))))

(declare-fun b!6268456 () Bool)

(declare-fun e!3812681 () (InoxSet Context!11142))

(assert (=> b!6268456 (= e!3812681 ((_ map or) call!530008 call!530007))))

(declare-fun b!6268457 () Bool)

(assert (=> b!6268457 (= e!3812677 call!530005)))

(declare-fun b!6268458 () Bool)

(assert (=> b!6268458 (= e!3812679 e!3812681)))

(assert (=> b!6268458 (= c!1135740 ((_ is Union!16187) (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))))))

(declare-fun bm!530002 () Bool)

(assert (=> bm!530002 (= call!530006 call!530008)))

(declare-fun b!6268459 () Bool)

(declare-fun e!3812678 () (InoxSet Context!11142))

(assert (=> b!6268459 (= e!3812678 ((_ map or) call!530007 call!530006))))

(declare-fun b!6268460 () Bool)

(assert (=> b!6268460 (= e!3812677 ((as const (Array Context!11142 Bool)) false))))

(declare-fun e!3812680 () Bool)

(declare-fun b!6268461 () Bool)

(assert (=> b!6268461 (= e!3812680 (nullable!6180 (regOne!32886 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292)))))))))))

(declare-fun b!6268462 () Bool)

(assert (=> b!6268462 (= e!3812676 call!530005)))

(declare-fun bm!530003 () Bool)

(assert (=> bm!530003 (= call!530004 call!530009)))

(declare-fun b!6268463 () Bool)

(assert (=> b!6268463 (= e!3812678 e!3812676)))

(assert (=> b!6268463 (= c!1135741 ((_ is Concat!25032) (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))))))

(declare-fun b!6268464 () Bool)

(assert (=> b!6268464 (= c!1135743 e!3812680)))

(declare-fun res!2585835 () Bool)

(assert (=> b!6268464 (=> (not res!2585835) (not e!3812680))))

(assert (=> b!6268464 (= res!2585835 ((_ is Concat!25032) (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))))))

(assert (=> b!6268464 (= e!3812681 e!3812678)))

(declare-fun bm!530004 () Bool)

(assert (=> bm!530004 (= call!530009 ($colon$colon!2052 (exprs!6071 (ite (or c!1135253 c!1135256) lt!2351103 (Context!11143 call!529690))) (ite (or c!1135743 c!1135741) (regTwo!32886 (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292))))))) (ite c!1135253 (regOne!32887 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135256 (regTwo!32886 (regTwo!32886 (regOne!32886 r!7292))) (ite c!1135254 (regOne!32886 (regTwo!32886 (regOne!32886 r!7292))) (reg!16516 (regTwo!32886 (regOne!32886 r!7292)))))))))))

(assert (= (and d!1967399 c!1135739) b!6268455))

(assert (= (and d!1967399 (not c!1135739)) b!6268458))

(assert (= (and b!6268458 c!1135740) b!6268456))

(assert (= (and b!6268458 (not c!1135740)) b!6268464))

(assert (= (and b!6268464 res!2585835) b!6268461))

(assert (= (and b!6268464 c!1135743) b!6268459))

(assert (= (and b!6268464 (not c!1135743)) b!6268463))

(assert (= (and b!6268463 c!1135741) b!6268462))

(assert (= (and b!6268463 (not c!1135741)) b!6268454))

(assert (= (and b!6268454 c!1135742) b!6268457))

(assert (= (and b!6268454 (not c!1135742)) b!6268460))

(assert (= (or b!6268462 b!6268457) bm!530003))

(assert (= (or b!6268462 b!6268457) bm!530001))

(assert (= (or b!6268459 bm!530003) bm!530004))

(assert (= (or b!6268459 bm!530001) bm!530002))

(assert (= (or b!6268456 b!6268459) bm!529999))

(assert (= (or b!6268456 bm!530002) bm!530000))

(declare-fun m!7090468 () Bool)

(assert (=> bm!529999 m!7090468))

(declare-fun m!7090470 () Bool)

(assert (=> bm!530004 m!7090470))

(declare-fun m!7090472 () Bool)

(assert (=> b!6268461 m!7090472))

(declare-fun m!7090474 () Bool)

(assert (=> b!6268455 m!7090474))

(declare-fun m!7090476 () Bool)

(assert (=> bm!530000 m!7090476))

(assert (=> bm!529686 d!1967399))

(declare-fun bs!1565174 () Bool)

(declare-fun d!1967401 () Bool)

(assert (= bs!1565174 (and d!1967401 d!1967313)))

(declare-fun lambda!343281 () Int)

(assert (=> bs!1565174 (= lambda!343281 lambda!343271)))

(declare-fun bs!1565175 () Bool)

(assert (= bs!1565175 (and d!1967401 d!1967183)))

(assert (=> bs!1565175 (= lambda!343281 lambda!343253)))

(declare-fun bs!1565176 () Bool)

(assert (= bs!1565176 (and d!1967401 d!1967251)))

(assert (=> bs!1565176 (not (= lambda!343281 lambda!343259))))

(declare-fun bs!1565177 () Bool)

(assert (= bs!1565177 (and d!1967401 d!1967147)))

(assert (=> bs!1565177 (= lambda!343281 lambda!343246)))

(declare-fun bs!1565178 () Bool)

(assert (= bs!1565178 (and d!1967401 b!6266772)))

(assert (=> bs!1565178 (not (= lambda!343281 lambda!343142))))

(declare-fun bs!1565179 () Bool)

(assert (= bs!1565179 (and d!1967401 b!6267918)))

(assert (=> bs!1565179 (not (= lambda!343281 lambda!343233))))

(declare-fun bs!1565180 () Bool)

(assert (= bs!1565180 (and d!1967401 d!1967161)))

(assert (=> bs!1565180 (= lambda!343281 lambda!343247)))

(declare-fun bs!1565181 () Bool)

(assert (= bs!1565181 (and d!1967401 b!6266769)))

(assert (=> bs!1565181 (not (= lambda!343281 lambda!343140))))

(declare-fun bs!1565182 () Bool)

(assert (= bs!1565182 (and d!1967401 d!1967379)))

(assert (=> bs!1565182 (= lambda!343281 lambda!343280)))

(declare-fun bs!1565183 () Bool)

(assert (= bs!1565183 (and d!1967401 d!1967035)))

(assert (=> bs!1565183 (= lambda!343281 lambda!343228)))

(declare-fun bs!1565184 () Bool)

(assert (= bs!1565184 (and d!1967401 d!1967181)))

(assert (=> bs!1565184 (= lambda!343281 lambda!343252)))

(declare-fun bs!1565185 () Bool)

(assert (= bs!1565185 (and d!1967401 b!6268222)))

(assert (=> bs!1565185 (not (= lambda!343281 lambda!343264))))

(declare-fun bs!1565186 () Bool)

(assert (= bs!1565186 (and d!1967401 b!6266767)))

(assert (=> bs!1565186 (not (= lambda!343281 lambda!343139))))

(declare-fun bs!1565187 () Bool)

(assert (= bs!1565187 (and d!1967401 b!6266774)))

(assert (=> bs!1565187 (not (= lambda!343281 lambda!343143))))

(declare-fun bs!1565188 () Bool)

(assert (= bs!1565188 (and d!1967401 b!6268220)))

(assert (=> bs!1565188 (not (= lambda!343281 lambda!343263))))

(declare-fun bs!1565189 () Bool)

(assert (= bs!1565189 (and d!1967401 d!1967091)))

(assert (=> bs!1565189 (= lambda!343281 lambda!343241)))

(declare-fun bs!1565190 () Bool)

(assert (= bs!1565190 (and d!1967401 d!1967221)))

(assert (=> bs!1565190 (= lambda!343281 lambda!343257)))

(declare-fun bs!1565191 () Bool)

(assert (= bs!1565191 (and d!1967401 b!6267920)))

(assert (=> bs!1565191 (not (= lambda!343281 lambda!343234))))

(declare-fun bs!1565192 () Bool)

(assert (= bs!1565192 (and d!1967401 d!1967219)))

(assert (=> bs!1565192 (= lambda!343281 lambda!343256)))

(declare-fun bs!1565193 () Bool)

(assert (= bs!1565193 (and d!1967401 d!1967077)))

(assert (=> bs!1565193 (not (= lambda!343281 lambda!343231))))

(assert (=> d!1967401 (= (nullableZipper!1957 lt!2351077) (exists!2521 lt!2351077 lambda!343281))))

(declare-fun bs!1565194 () Bool)

(assert (= bs!1565194 d!1967401))

(declare-fun m!7090478 () Bool)

(assert (=> bs!1565194 m!7090478))

(assert (=> b!6266650 d!1967401))

(declare-fun bs!1565195 () Bool)

(declare-fun b!6268475 () Bool)

(assert (= bs!1565195 (and b!6268475 b!6266871)))

(declare-fun lambda!343282 () Int)

(assert (=> bs!1565195 (not (= lambda!343282 lambda!343155))))

(declare-fun bs!1565196 () Bool)

(assert (= bs!1565196 (and b!6268475 b!6268393)))

(assert (=> bs!1565196 (= (and (= (reg!16516 (regOne!32887 r!7292)) (reg!16516 (regTwo!32887 r!7292))) (= (regOne!32887 r!7292) (regTwo!32887 r!7292))) (= lambda!343282 lambda!343277))))

(declare-fun bs!1565197 () Bool)

(assert (= bs!1565197 (and b!6268475 b!6266040)))

(assert (=> bs!1565197 (not (= lambda!343282 lambda!343067))))

(declare-fun bs!1565198 () Bool)

(assert (= bs!1565198 (and b!6268475 b!6266877)))

(assert (=> bs!1565198 (= (and (= (reg!16516 (regOne!32887 r!7292)) (reg!16516 r!7292)) (= (regOne!32887 r!7292) r!7292)) (= lambda!343282 lambda!343154))))

(declare-fun bs!1565199 () Bool)

(assert (= bs!1565199 (and b!6268475 d!1966513)))

(assert (=> bs!1565199 (not (= lambda!343282 lambda!343118))))

(declare-fun bs!1565200 () Bool)

(assert (= bs!1565200 (and b!6268475 d!1966515)))

(assert (=> bs!1565200 (not (= lambda!343282 lambda!343123))))

(assert (=> bs!1565197 (not (= lambda!343282 lambda!343068))))

(declare-fun bs!1565201 () Bool)

(assert (= bs!1565201 (and b!6268475 b!6268387)))

(assert (=> bs!1565201 (not (= lambda!343282 lambda!343278))))

(assert (=> bs!1565200 (not (= lambda!343282 lambda!343124))))

(declare-fun bs!1565202 () Bool)

(assert (= bs!1565202 (and b!6268475 d!1967281)))

(assert (=> bs!1565202 (not (= lambda!343282 lambda!343267))))

(assert (=> b!6268475 true))

(assert (=> b!6268475 true))

(declare-fun bs!1565203 () Bool)

(declare-fun b!6268469 () Bool)

(assert (= bs!1565203 (and b!6268469 b!6266871)))

(declare-fun lambda!343283 () Int)

(assert (=> bs!1565203 (= (and (= (regOne!32886 (regOne!32887 r!7292)) (regOne!32886 r!7292)) (= (regTwo!32886 (regOne!32887 r!7292)) (regTwo!32886 r!7292))) (= lambda!343283 lambda!343155))))

(declare-fun bs!1565204 () Bool)

(assert (= bs!1565204 (and b!6268469 b!6268393)))

(assert (=> bs!1565204 (not (= lambda!343283 lambda!343277))))

(declare-fun bs!1565205 () Bool)

(assert (= bs!1565205 (and b!6268469 b!6266040)))

(assert (=> bs!1565205 (not (= lambda!343283 lambda!343067))))

(declare-fun bs!1565206 () Bool)

(assert (= bs!1565206 (and b!6268469 d!1966513)))

(assert (=> bs!1565206 (not (= lambda!343283 lambda!343118))))

(declare-fun bs!1565207 () Bool)

(assert (= bs!1565207 (and b!6268469 d!1966515)))

(assert (=> bs!1565207 (not (= lambda!343283 lambda!343123))))

(assert (=> bs!1565205 (= (and (= (regOne!32886 (regOne!32887 r!7292)) (regOne!32886 r!7292)) (= (regTwo!32886 (regOne!32887 r!7292)) (regTwo!32886 r!7292))) (= lambda!343283 lambda!343068))))

(declare-fun bs!1565208 () Bool)

(assert (= bs!1565208 (and b!6268469 b!6268387)))

(assert (=> bs!1565208 (= (and (= (regOne!32886 (regOne!32887 r!7292)) (regOne!32886 (regTwo!32887 r!7292))) (= (regTwo!32886 (regOne!32887 r!7292)) (regTwo!32886 (regTwo!32887 r!7292)))) (= lambda!343283 lambda!343278))))

(declare-fun bs!1565209 () Bool)

(assert (= bs!1565209 (and b!6268469 b!6268475)))

(assert (=> bs!1565209 (not (= lambda!343283 lambda!343282))))

(declare-fun bs!1565210 () Bool)

(assert (= bs!1565210 (and b!6268469 b!6266877)))

(assert (=> bs!1565210 (not (= lambda!343283 lambda!343154))))

(assert (=> bs!1565207 (= (and (= (regOne!32886 (regOne!32887 r!7292)) (regOne!32886 r!7292)) (= (regTwo!32886 (regOne!32887 r!7292)) (regTwo!32886 r!7292))) (= lambda!343283 lambda!343124))))

(declare-fun bs!1565211 () Bool)

(assert (= bs!1565211 (and b!6268469 d!1967281)))

(assert (=> bs!1565211 (not (= lambda!343283 lambda!343267))))

(assert (=> b!6268469 true))

(assert (=> b!6268469 true))

(declare-fun c!1135746 () Bool)

(declare-fun bm!530005 () Bool)

(declare-fun call!530010 () Bool)

(assert (=> bm!530005 (= call!530010 (Exists!3257 (ite c!1135746 lambda!343282 lambda!343283)))))

(declare-fun b!6268465 () Bool)

(declare-fun c!1135744 () Bool)

(assert (=> b!6268465 (= c!1135744 ((_ is ElementMatch!16187) (regOne!32887 r!7292)))))

(declare-fun e!3812683 () Bool)

(declare-fun e!3812685 () Bool)

(assert (=> b!6268465 (= e!3812683 e!3812685)))

(declare-fun b!6268466 () Bool)

(declare-fun e!3812688 () Bool)

(assert (=> b!6268466 (= e!3812688 e!3812683)))

(declare-fun res!2585838 () Bool)

(assert (=> b!6268466 (= res!2585838 (not ((_ is EmptyLang!16187) (regOne!32887 r!7292))))))

(assert (=> b!6268466 (=> (not res!2585838) (not e!3812683))))

(declare-fun b!6268467 () Bool)

(declare-fun c!1135747 () Bool)

(assert (=> b!6268467 (= c!1135747 ((_ is Union!16187) (regOne!32887 r!7292)))))

(declare-fun e!3812686 () Bool)

(assert (=> b!6268467 (= e!3812685 e!3812686)))

(declare-fun b!6268468 () Bool)

(declare-fun e!3812684 () Bool)

(assert (=> b!6268468 (= e!3812684 (matchRSpec!3288 (regTwo!32887 (regOne!32887 r!7292)) s!2326))))

(declare-fun e!3812682 () Bool)

(assert (=> b!6268469 (= e!3812682 call!530010)))

(declare-fun b!6268470 () Bool)

(declare-fun call!530011 () Bool)

(assert (=> b!6268470 (= e!3812688 call!530011)))

(declare-fun b!6268471 () Bool)

(assert (=> b!6268471 (= e!3812686 e!3812682)))

(assert (=> b!6268471 (= c!1135746 ((_ is Star!16187) (regOne!32887 r!7292)))))

(declare-fun b!6268472 () Bool)

(assert (=> b!6268472 (= e!3812686 e!3812684)))

(declare-fun res!2585837 () Bool)

(assert (=> b!6268472 (= res!2585837 (matchRSpec!3288 (regOne!32887 (regOne!32887 r!7292)) s!2326))))

(assert (=> b!6268472 (=> res!2585837 e!3812684)))

(declare-fun d!1967403 () Bool)

(declare-fun c!1135745 () Bool)

(assert (=> d!1967403 (= c!1135745 ((_ is EmptyExpr!16187) (regOne!32887 r!7292)))))

(assert (=> d!1967403 (= (matchRSpec!3288 (regOne!32887 r!7292) s!2326) e!3812688)))

(declare-fun b!6268473 () Bool)

(declare-fun res!2585836 () Bool)

(declare-fun e!3812687 () Bool)

(assert (=> b!6268473 (=> res!2585836 e!3812687)))

(assert (=> b!6268473 (= res!2585836 call!530011)))

(assert (=> b!6268473 (= e!3812682 e!3812687)))

(declare-fun b!6268474 () Bool)

(assert (=> b!6268474 (= e!3812685 (= s!2326 (Cons!64738 (c!1135024 (regOne!32887 r!7292)) Nil!64738)))))

(assert (=> b!6268475 (= e!3812687 call!530010)))

(declare-fun bm!530006 () Bool)

(assert (=> bm!530006 (= call!530011 (isEmpty!36771 s!2326))))

(assert (= (and d!1967403 c!1135745) b!6268470))

(assert (= (and d!1967403 (not c!1135745)) b!6268466))

(assert (= (and b!6268466 res!2585838) b!6268465))

(assert (= (and b!6268465 c!1135744) b!6268474))

(assert (= (and b!6268465 (not c!1135744)) b!6268467))

(assert (= (and b!6268467 c!1135747) b!6268472))

(assert (= (and b!6268467 (not c!1135747)) b!6268471))

(assert (= (and b!6268472 (not res!2585837)) b!6268468))

(assert (= (and b!6268471 c!1135746) b!6268473))

(assert (= (and b!6268471 (not c!1135746)) b!6268469))

(assert (= (and b!6268473 (not res!2585836)) b!6268475))

(assert (= (or b!6268475 b!6268469) bm!530005))

(assert (= (or b!6268470 b!6268473) bm!530006))

(declare-fun m!7090480 () Bool)

(assert (=> bm!530005 m!7090480))

(declare-fun m!7090482 () Bool)

(assert (=> b!6268468 m!7090482))

(declare-fun m!7090484 () Bool)

(assert (=> b!6268472 m!7090484))

(assert (=> bm!530006 m!7088532))

(assert (=> b!6266874 d!1967403))

(declare-fun d!1967405 () Bool)

(assert (=> d!1967405 (= (isEmpty!36766 lt!2351079) ((_ is Nil!64736) lt!2351079))))

(assert (=> b!6266717 d!1967405))

(assert (=> d!1966575 d!1967107))

(assert (=> d!1966575 d!1966539))

(declare-fun d!1967407 () Bool)

(assert (=> d!1967407 (= (isUnion!1032 lt!2351256) ((_ is Union!16187) lt!2351256))))

(assert (=> b!6266937 d!1967407))

(declare-fun d!1967409 () Bool)

(assert (=> d!1967409 (= (Exists!3257 lambda!343123) (choose!46492 lambda!343123))))

(declare-fun bs!1565212 () Bool)

(assert (= bs!1565212 d!1967409))

(declare-fun m!7090486 () Bool)

(assert (=> bs!1565212 m!7090486))

(assert (=> d!1966515 d!1967409))

(declare-fun d!1967411 () Bool)

(assert (=> d!1967411 (= (Exists!3257 lambda!343124) (choose!46492 lambda!343124))))

(declare-fun bs!1565213 () Bool)

(assert (= bs!1565213 d!1967411))

(declare-fun m!7090488 () Bool)

(assert (=> bs!1565213 m!7090488))

(assert (=> d!1966515 d!1967411))

(declare-fun bs!1565214 () Bool)

(declare-fun d!1967413 () Bool)

(assert (= bs!1565214 (and d!1967413 b!6266871)))

(declare-fun lambda!343288 () Int)

(assert (=> bs!1565214 (not (= lambda!343288 lambda!343155))))

(declare-fun bs!1565215 () Bool)

(assert (= bs!1565215 (and d!1967413 b!6268393)))

(assert (=> bs!1565215 (not (= lambda!343288 lambda!343277))))

(declare-fun bs!1565216 () Bool)

(assert (= bs!1565216 (and d!1967413 b!6266040)))

(assert (=> bs!1565216 (= lambda!343288 lambda!343067)))

(declare-fun bs!1565217 () Bool)

(assert (= bs!1565217 (and d!1967413 d!1966513)))

(assert (=> bs!1565217 (= lambda!343288 lambda!343118)))

(declare-fun bs!1565218 () Bool)

(assert (= bs!1565218 (and d!1967413 b!6268469)))

(assert (=> bs!1565218 (not (= lambda!343288 lambda!343283))))

(declare-fun bs!1565219 () Bool)

(assert (= bs!1565219 (and d!1967413 d!1966515)))

(assert (=> bs!1565219 (= lambda!343288 lambda!343123)))

(assert (=> bs!1565216 (not (= lambda!343288 lambda!343068))))

(declare-fun bs!1565220 () Bool)

(assert (= bs!1565220 (and d!1967413 b!6268387)))

(assert (=> bs!1565220 (not (= lambda!343288 lambda!343278))))

(declare-fun bs!1565221 () Bool)

(assert (= bs!1565221 (and d!1967413 b!6268475)))

(assert (=> bs!1565221 (not (= lambda!343288 lambda!343282))))

(declare-fun bs!1565222 () Bool)

(assert (= bs!1565222 (and d!1967413 b!6266877)))

(assert (=> bs!1565222 (not (= lambda!343288 lambda!343154))))

(assert (=> bs!1565219 (not (= lambda!343288 lambda!343124))))

(declare-fun bs!1565223 () Bool)

(assert (= bs!1565223 (and d!1967413 d!1967281)))

(assert (=> bs!1565223 (= lambda!343288 lambda!343267)))

(assert (=> d!1967413 true))

(assert (=> d!1967413 true))

(assert (=> d!1967413 true))

(declare-fun lambda!343289 () Int)

(assert (=> bs!1565214 (= lambda!343289 lambda!343155)))

(assert (=> bs!1565215 (not (= lambda!343289 lambda!343277))))

(declare-fun bs!1565224 () Bool)

(assert (= bs!1565224 d!1967413))

(assert (=> bs!1565224 (not (= lambda!343289 lambda!343288))))

(assert (=> bs!1565216 (not (= lambda!343289 lambda!343067))))

(assert (=> bs!1565217 (not (= lambda!343289 lambda!343118))))

(assert (=> bs!1565218 (= (and (= (regOne!32886 r!7292) (regOne!32886 (regOne!32887 r!7292))) (= (regTwo!32886 r!7292) (regTwo!32886 (regOne!32887 r!7292)))) (= lambda!343289 lambda!343283))))

(assert (=> bs!1565219 (not (= lambda!343289 lambda!343123))))

(assert (=> bs!1565216 (= lambda!343289 lambda!343068)))

(assert (=> bs!1565220 (= (and (= (regOne!32886 r!7292) (regOne!32886 (regTwo!32887 r!7292))) (= (regTwo!32886 r!7292) (regTwo!32886 (regTwo!32887 r!7292)))) (= lambda!343289 lambda!343278))))

(assert (=> bs!1565221 (not (= lambda!343289 lambda!343282))))

(assert (=> bs!1565222 (not (= lambda!343289 lambda!343154))))

(assert (=> bs!1565219 (= lambda!343289 lambda!343124)))

(assert (=> bs!1565223 (not (= lambda!343289 lambda!343267))))

(assert (=> d!1967413 true))

(assert (=> d!1967413 true))

(assert (=> d!1967413 true))

(assert (=> d!1967413 (= (Exists!3257 lambda!343288) (Exists!3257 lambda!343289))))

(assert (=> d!1967413 true))

(declare-fun _$90!2085 () Unit!158079)

(assert (=> d!1967413 (= (choose!46495 (regOne!32886 r!7292) (regTwo!32886 r!7292) s!2326) _$90!2085)))

(declare-fun m!7090490 () Bool)

(assert (=> bs!1565224 m!7090490))

(declare-fun m!7090492 () Bool)

(assert (=> bs!1565224 m!7090492))

(assert (=> d!1966515 d!1967413))

(assert (=> d!1966515 d!1967195))

(declare-fun b!6268484 () Bool)

(declare-fun e!3812696 () Bool)

(declare-fun e!3812697 () Bool)

(assert (=> b!6268484 (= e!3812696 e!3812697)))

(declare-fun res!2585851 () Bool)

(declare-fun call!530013 () Bool)

(assert (=> b!6268484 (= res!2585851 call!530013)))

(assert (=> b!6268484 (=> (not res!2585851) (not e!3812697))))

(declare-fun b!6268485 () Bool)

(declare-fun e!3812695 () Bool)

(declare-fun e!3812693 () Bool)

(assert (=> b!6268485 (= e!3812695 e!3812693)))

(declare-fun res!2585848 () Bool)

(assert (=> b!6268485 (=> (not res!2585848) (not e!3812693))))

(assert (=> b!6268485 (= res!2585848 (and (not ((_ is EmptyLang!16187) (h!71184 (exprs!6071 (h!71185 zl!343))))) (not ((_ is ElementMatch!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun b!6268486 () Bool)

(declare-fun e!3812694 () Bool)

(assert (=> b!6268486 (= e!3812694 e!3812696)))

(declare-fun c!1135748 () Bool)

(assert (=> b!6268486 (= c!1135748 ((_ is Union!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6268487 () Bool)

(declare-fun e!3812698 () Bool)

(declare-fun call!530012 () Bool)

(assert (=> b!6268487 (= e!3812698 call!530012)))

(declare-fun bm!530007 () Bool)

(assert (=> bm!530007 (= call!530012 (nullable!6180 (ite c!1135748 (regTwo!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regTwo!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun b!6268488 () Bool)

(assert (=> b!6268488 (= e!3812696 e!3812698)))

(declare-fun res!2585849 () Bool)

(assert (=> b!6268488 (= res!2585849 call!530013)))

(assert (=> b!6268488 (=> res!2585849 e!3812698)))

(declare-fun b!6268489 () Bool)

(assert (=> b!6268489 (= e!3812693 e!3812694)))

(declare-fun res!2585847 () Bool)

(assert (=> b!6268489 (=> res!2585847 e!3812694)))

(assert (=> b!6268489 (= res!2585847 ((_ is Star!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun d!1967415 () Bool)

(declare-fun res!2585850 () Bool)

(assert (=> d!1967415 (=> res!2585850 e!3812695)))

(assert (=> d!1967415 (= res!2585850 ((_ is EmptyExpr!16187) (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(assert (=> d!1967415 (= (nullableFct!2132 (h!71184 (exprs!6071 (h!71185 zl!343)))) e!3812695)))

(declare-fun bm!530008 () Bool)

(assert (=> bm!530008 (= call!530013 (nullable!6180 (ite c!1135748 (regOne!32887 (h!71184 (exprs!6071 (h!71185 zl!343)))) (regOne!32886 (h!71184 (exprs!6071 (h!71185 zl!343)))))))))

(declare-fun b!6268490 () Bool)

(assert (=> b!6268490 (= e!3812697 call!530012)))

(assert (= (and d!1967415 (not res!2585850)) b!6268485))

(assert (= (and b!6268485 res!2585848) b!6268489))

(assert (= (and b!6268489 (not res!2585847)) b!6268486))

(assert (= (and b!6268486 c!1135748) b!6268488))

(assert (= (and b!6268486 (not c!1135748)) b!6268484))

(assert (= (and b!6268488 (not res!2585849)) b!6268487))

(assert (= (and b!6268484 res!2585851) b!6268490))

(assert (= (or b!6268487 b!6268490) bm!530007))

(assert (= (or b!6268488 b!6268484) bm!530008))

(declare-fun m!7090494 () Bool)

(assert (=> bm!530007 m!7090494))

(declare-fun m!7090496 () Bool)

(assert (=> bm!530008 m!7090496))

(assert (=> d!1966499 d!1967415))

(declare-fun b!6268491 () Bool)

(declare-fun e!3812699 () Bool)

(declare-fun e!3812703 () Bool)

(assert (=> b!6268491 (= e!3812699 e!3812703)))

(declare-fun res!2585853 () Bool)

(assert (=> b!6268491 (=> (not res!2585853) (not e!3812703))))

(declare-fun call!530016 () Bool)

(assert (=> b!6268491 (= res!2585853 call!530016)))

(declare-fun b!6268492 () Bool)

(declare-fun res!2585855 () Bool)

(assert (=> b!6268492 (=> res!2585855 e!3812699)))

(assert (=> b!6268492 (= res!2585855 (not ((_ is Concat!25032) lt!2351233)))))

(declare-fun e!3812702 () Bool)

(assert (=> b!6268492 (= e!3812702 e!3812699)))

(declare-fun b!6268493 () Bool)

(declare-fun e!3812700 () Bool)

(declare-fun e!3812704 () Bool)

(assert (=> b!6268493 (= e!3812700 e!3812704)))

(declare-fun c!1135749 () Bool)

(assert (=> b!6268493 (= c!1135749 ((_ is Star!16187) lt!2351233))))

(declare-fun d!1967417 () Bool)

(declare-fun res!2585856 () Bool)

(assert (=> d!1967417 (=> res!2585856 e!3812700)))

(assert (=> d!1967417 (= res!2585856 ((_ is ElementMatch!16187) lt!2351233))))

(assert (=> d!1967417 (= (validRegex!7923 lt!2351233) e!3812700)))

(declare-fun b!6268494 () Bool)

(declare-fun e!3812705 () Bool)

(declare-fun call!530015 () Bool)

(assert (=> b!6268494 (= e!3812705 call!530015)))

(declare-fun bm!530009 () Bool)

(declare-fun call!530014 () Bool)

(assert (=> bm!530009 (= call!530016 call!530014)))

(declare-fun b!6268495 () Bool)

(assert (=> b!6268495 (= e!3812704 e!3812702)))

(declare-fun c!1135750 () Bool)

(assert (=> b!6268495 (= c!1135750 ((_ is Union!16187) lt!2351233))))

(declare-fun bm!530010 () Bool)

(assert (=> bm!530010 (= call!530015 (validRegex!7923 (ite c!1135750 (regTwo!32887 lt!2351233) (regTwo!32886 lt!2351233))))))

(declare-fun bm!530011 () Bool)

(assert (=> bm!530011 (= call!530014 (validRegex!7923 (ite c!1135749 (reg!16516 lt!2351233) (ite c!1135750 (regOne!32887 lt!2351233) (regOne!32886 lt!2351233)))))))

(declare-fun b!6268496 () Bool)

(declare-fun res!2585854 () Bool)

(assert (=> b!6268496 (=> (not res!2585854) (not e!3812705))))

(assert (=> b!6268496 (= res!2585854 call!530016)))

(assert (=> b!6268496 (= e!3812702 e!3812705)))

(declare-fun b!6268497 () Bool)

(assert (=> b!6268497 (= e!3812703 call!530015)))

(declare-fun b!6268498 () Bool)

(declare-fun e!3812701 () Bool)

(assert (=> b!6268498 (= e!3812704 e!3812701)))

(declare-fun res!2585852 () Bool)

(assert (=> b!6268498 (= res!2585852 (not (nullable!6180 (reg!16516 lt!2351233))))))

(assert (=> b!6268498 (=> (not res!2585852) (not e!3812701))))

(declare-fun b!6268499 () Bool)

(assert (=> b!6268499 (= e!3812701 call!530014)))

(assert (= (and d!1967417 (not res!2585856)) b!6268493))

(assert (= (and b!6268493 c!1135749) b!6268498))

(assert (= (and b!6268493 (not c!1135749)) b!6268495))

(assert (= (and b!6268498 res!2585852) b!6268499))

(assert (= (and b!6268495 c!1135750) b!6268496))

(assert (= (and b!6268495 (not c!1135750)) b!6268492))

(assert (= (and b!6268496 res!2585854) b!6268494))

(assert (= (and b!6268492 (not res!2585855)) b!6268491))

(assert (= (and b!6268491 res!2585853) b!6268497))

(assert (= (or b!6268494 b!6268497) bm!530010))

(assert (= (or b!6268496 b!6268491) bm!530009))

(assert (= (or b!6268499 bm!530009) bm!530011))

(declare-fun m!7090498 () Bool)

(assert (=> bm!530010 m!7090498))

(declare-fun m!7090500 () Bool)

(assert (=> bm!530011 m!7090500))

(declare-fun m!7090502 () Bool)

(assert (=> b!6268498 m!7090502))

(assert (=> d!1966543 d!1967417))

(declare-fun d!1967419 () Bool)

(declare-fun res!2585857 () Bool)

(declare-fun e!3812706 () Bool)

(assert (=> d!1967419 (=> res!2585857 e!3812706)))

(assert (=> d!1967419 (= res!2585857 ((_ is Nil!64736) (exprs!6071 (h!71185 zl!343))))))

(assert (=> d!1967419 (= (forall!15312 (exprs!6071 (h!71185 zl!343)) lambda!343144) e!3812706)))

(declare-fun b!6268500 () Bool)

(declare-fun e!3812707 () Bool)

(assert (=> b!6268500 (= e!3812706 e!3812707)))

(declare-fun res!2585858 () Bool)

(assert (=> b!6268500 (=> (not res!2585858) (not e!3812707))))

(assert (=> b!6268500 (= res!2585858 (dynLambda!25595 lambda!343144 (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun b!6268501 () Bool)

(assert (=> b!6268501 (= e!3812707 (forall!15312 (t!378414 (exprs!6071 (h!71185 zl!343))) lambda!343144))))

(assert (= (and d!1967419 (not res!2585857)) b!6268500))

(assert (= (and b!6268500 res!2585858) b!6268501))

(declare-fun b_lambda!238679 () Bool)

(assert (=> (not b_lambda!238679) (not b!6268500)))

(declare-fun m!7090504 () Bool)

(assert (=> b!6268500 m!7090504))

(declare-fun m!7090506 () Bool)

(assert (=> b!6268501 m!7090506))

(assert (=> d!1966543 d!1967419))

(declare-fun b!6268502 () Bool)

(declare-fun e!3812708 () Bool)

(assert (=> b!6268502 (= e!3812708 tp_is_empty!41627)))

(declare-fun b!6268503 () Bool)

(declare-fun tp!1748379 () Bool)

(declare-fun tp!1748376 () Bool)

(assert (=> b!6268503 (= e!3812708 (and tp!1748379 tp!1748376))))

(declare-fun b!6268504 () Bool)

(declare-fun tp!1748378 () Bool)

(assert (=> b!6268504 (= e!3812708 tp!1748378)))

(declare-fun b!6268505 () Bool)

(declare-fun tp!1748377 () Bool)

(declare-fun tp!1748375 () Bool)

(assert (=> b!6268505 (= e!3812708 (and tp!1748377 tp!1748375))))

(assert (=> b!6266979 (= tp!1748145 e!3812708)))

(assert (= (and b!6266979 ((_ is ElementMatch!16187) (regOne!32887 (regOne!32886 r!7292)))) b!6268502))

(assert (= (and b!6266979 ((_ is Concat!25032) (regOne!32887 (regOne!32886 r!7292)))) b!6268503))

(assert (= (and b!6266979 ((_ is Star!16187) (regOne!32887 (regOne!32886 r!7292)))) b!6268504))

(assert (= (and b!6266979 ((_ is Union!16187) (regOne!32887 (regOne!32886 r!7292)))) b!6268505))

(declare-fun b!6268506 () Bool)

(declare-fun e!3812709 () Bool)

(assert (=> b!6268506 (= e!3812709 tp_is_empty!41627)))

(declare-fun b!6268507 () Bool)

(declare-fun tp!1748384 () Bool)

(declare-fun tp!1748381 () Bool)

(assert (=> b!6268507 (= e!3812709 (and tp!1748384 tp!1748381))))

(declare-fun b!6268508 () Bool)

(declare-fun tp!1748383 () Bool)

(assert (=> b!6268508 (= e!3812709 tp!1748383)))

(declare-fun b!6268509 () Bool)

(declare-fun tp!1748382 () Bool)

(declare-fun tp!1748380 () Bool)

(assert (=> b!6268509 (= e!3812709 (and tp!1748382 tp!1748380))))

(assert (=> b!6266979 (= tp!1748143 e!3812709)))

(assert (= (and b!6266979 ((_ is ElementMatch!16187) (regTwo!32887 (regOne!32886 r!7292)))) b!6268506))

(assert (= (and b!6266979 ((_ is Concat!25032) (regTwo!32887 (regOne!32886 r!7292)))) b!6268507))

(assert (= (and b!6266979 ((_ is Star!16187) (regTwo!32887 (regOne!32886 r!7292)))) b!6268508))

(assert (= (and b!6266979 ((_ is Union!16187) (regTwo!32887 (regOne!32886 r!7292)))) b!6268509))

(declare-fun b!6268510 () Bool)

(declare-fun e!3812710 () Bool)

(assert (=> b!6268510 (= e!3812710 tp_is_empty!41627)))

(declare-fun b!6268511 () Bool)

(declare-fun tp!1748389 () Bool)

(declare-fun tp!1748386 () Bool)

(assert (=> b!6268511 (= e!3812710 (and tp!1748389 tp!1748386))))

(declare-fun b!6268512 () Bool)

(declare-fun tp!1748388 () Bool)

(assert (=> b!6268512 (= e!3812710 tp!1748388)))

(declare-fun b!6268513 () Bool)

(declare-fun tp!1748387 () Bool)

(declare-fun tp!1748385 () Bool)

(assert (=> b!6268513 (= e!3812710 (and tp!1748387 tp!1748385))))

(assert (=> b!6266978 (= tp!1748146 e!3812710)))

(assert (= (and b!6266978 ((_ is ElementMatch!16187) (reg!16516 (regOne!32886 r!7292)))) b!6268510))

(assert (= (and b!6266978 ((_ is Concat!25032) (reg!16516 (regOne!32886 r!7292)))) b!6268511))

(assert (= (and b!6266978 ((_ is Star!16187) (reg!16516 (regOne!32886 r!7292)))) b!6268512))

(assert (= (and b!6266978 ((_ is Union!16187) (reg!16516 (regOne!32886 r!7292)))) b!6268513))

(declare-fun b!6268514 () Bool)

(declare-fun e!3812711 () Bool)

(assert (=> b!6268514 (= e!3812711 tp_is_empty!41627)))

(declare-fun b!6268515 () Bool)

(declare-fun tp!1748394 () Bool)

(declare-fun tp!1748391 () Bool)

(assert (=> b!6268515 (= e!3812711 (and tp!1748394 tp!1748391))))

(declare-fun b!6268516 () Bool)

(declare-fun tp!1748393 () Bool)

(assert (=> b!6268516 (= e!3812711 tp!1748393)))

(declare-fun b!6268517 () Bool)

(declare-fun tp!1748392 () Bool)

(declare-fun tp!1748390 () Bool)

(assert (=> b!6268517 (= e!3812711 (and tp!1748392 tp!1748390))))

(assert (=> b!6266977 (= tp!1748147 e!3812711)))

(assert (= (and b!6266977 ((_ is ElementMatch!16187) (regOne!32886 (regOne!32886 r!7292)))) b!6268514))

(assert (= (and b!6266977 ((_ is Concat!25032) (regOne!32886 (regOne!32886 r!7292)))) b!6268515))

(assert (= (and b!6266977 ((_ is Star!16187) (regOne!32886 (regOne!32886 r!7292)))) b!6268516))

(assert (= (and b!6266977 ((_ is Union!16187) (regOne!32886 (regOne!32886 r!7292)))) b!6268517))

(declare-fun b!6268518 () Bool)

(declare-fun e!3812712 () Bool)

(assert (=> b!6268518 (= e!3812712 tp_is_empty!41627)))

(declare-fun b!6268519 () Bool)

(declare-fun tp!1748399 () Bool)

(declare-fun tp!1748396 () Bool)

(assert (=> b!6268519 (= e!3812712 (and tp!1748399 tp!1748396))))

(declare-fun b!6268520 () Bool)

(declare-fun tp!1748398 () Bool)

(assert (=> b!6268520 (= e!3812712 tp!1748398)))

(declare-fun b!6268521 () Bool)

(declare-fun tp!1748397 () Bool)

(declare-fun tp!1748395 () Bool)

(assert (=> b!6268521 (= e!3812712 (and tp!1748397 tp!1748395))))

(assert (=> b!6266977 (= tp!1748144 e!3812712)))

(assert (= (and b!6266977 ((_ is ElementMatch!16187) (regTwo!32886 (regOne!32886 r!7292)))) b!6268518))

(assert (= (and b!6266977 ((_ is Concat!25032) (regTwo!32886 (regOne!32886 r!7292)))) b!6268519))

(assert (= (and b!6266977 ((_ is Star!16187) (regTwo!32886 (regOne!32886 r!7292)))) b!6268520))

(assert (= (and b!6266977 ((_ is Union!16187) (regTwo!32886 (regOne!32886 r!7292)))) b!6268521))

(declare-fun b!6268522 () Bool)

(declare-fun e!3812713 () Bool)

(assert (=> b!6268522 (= e!3812713 tp_is_empty!41627)))

(declare-fun b!6268523 () Bool)

(declare-fun tp!1748404 () Bool)

(declare-fun tp!1748401 () Bool)

(assert (=> b!6268523 (= e!3812713 (and tp!1748404 tp!1748401))))

(declare-fun b!6268524 () Bool)

(declare-fun tp!1748403 () Bool)

(assert (=> b!6268524 (= e!3812713 tp!1748403)))

(declare-fun b!6268525 () Bool)

(declare-fun tp!1748402 () Bool)

(declare-fun tp!1748400 () Bool)

(assert (=> b!6268525 (= e!3812713 (and tp!1748402 tp!1748400))))

(assert (=> b!6267014 (= tp!1748182 e!3812713)))

(assert (= (and b!6267014 ((_ is ElementMatch!16187) (regOne!32887 (reg!16516 r!7292)))) b!6268522))

(assert (= (and b!6267014 ((_ is Concat!25032) (regOne!32887 (reg!16516 r!7292)))) b!6268523))

(assert (= (and b!6267014 ((_ is Star!16187) (regOne!32887 (reg!16516 r!7292)))) b!6268524))

(assert (= (and b!6267014 ((_ is Union!16187) (regOne!32887 (reg!16516 r!7292)))) b!6268525))

(declare-fun b!6268526 () Bool)

(declare-fun e!3812714 () Bool)

(assert (=> b!6268526 (= e!3812714 tp_is_empty!41627)))

(declare-fun b!6268527 () Bool)

(declare-fun tp!1748409 () Bool)

(declare-fun tp!1748406 () Bool)

(assert (=> b!6268527 (= e!3812714 (and tp!1748409 tp!1748406))))

(declare-fun b!6268528 () Bool)

(declare-fun tp!1748408 () Bool)

(assert (=> b!6268528 (= e!3812714 tp!1748408)))

(declare-fun b!6268529 () Bool)

(declare-fun tp!1748407 () Bool)

(declare-fun tp!1748405 () Bool)

(assert (=> b!6268529 (= e!3812714 (and tp!1748407 tp!1748405))))

(assert (=> b!6267014 (= tp!1748180 e!3812714)))

(assert (= (and b!6267014 ((_ is ElementMatch!16187) (regTwo!32887 (reg!16516 r!7292)))) b!6268526))

(assert (= (and b!6267014 ((_ is Concat!25032) (regTwo!32887 (reg!16516 r!7292)))) b!6268527))

(assert (= (and b!6267014 ((_ is Star!16187) (regTwo!32887 (reg!16516 r!7292)))) b!6268528))

(assert (= (and b!6267014 ((_ is Union!16187) (regTwo!32887 (reg!16516 r!7292)))) b!6268529))

(declare-fun b!6268530 () Bool)

(declare-fun e!3812715 () Bool)

(assert (=> b!6268530 (= e!3812715 tp_is_empty!41627)))

(declare-fun b!6268531 () Bool)

(declare-fun tp!1748414 () Bool)

(declare-fun tp!1748411 () Bool)

(assert (=> b!6268531 (= e!3812715 (and tp!1748414 tp!1748411))))

(declare-fun b!6268532 () Bool)

(declare-fun tp!1748413 () Bool)

(assert (=> b!6268532 (= e!3812715 tp!1748413)))

(declare-fun b!6268533 () Bool)

(declare-fun tp!1748412 () Bool)

(declare-fun tp!1748410 () Bool)

(assert (=> b!6268533 (= e!3812715 (and tp!1748412 tp!1748410))))

(assert (=> b!6267001 (= tp!1748169 e!3812715)))

(assert (= (and b!6267001 ((_ is ElementMatch!16187) (regOne!32887 (regOne!32887 r!7292)))) b!6268530))

(assert (= (and b!6267001 ((_ is Concat!25032) (regOne!32887 (regOne!32887 r!7292)))) b!6268531))

(assert (= (and b!6267001 ((_ is Star!16187) (regOne!32887 (regOne!32887 r!7292)))) b!6268532))

(assert (= (and b!6267001 ((_ is Union!16187) (regOne!32887 (regOne!32887 r!7292)))) b!6268533))

(declare-fun b!6268534 () Bool)

(declare-fun e!3812716 () Bool)

(assert (=> b!6268534 (= e!3812716 tp_is_empty!41627)))

(declare-fun b!6268535 () Bool)

(declare-fun tp!1748419 () Bool)

(declare-fun tp!1748416 () Bool)

(assert (=> b!6268535 (= e!3812716 (and tp!1748419 tp!1748416))))

(declare-fun b!6268536 () Bool)

(declare-fun tp!1748418 () Bool)

(assert (=> b!6268536 (= e!3812716 tp!1748418)))

(declare-fun b!6268537 () Bool)

(declare-fun tp!1748417 () Bool)

(declare-fun tp!1748415 () Bool)

(assert (=> b!6268537 (= e!3812716 (and tp!1748417 tp!1748415))))

(assert (=> b!6267001 (= tp!1748167 e!3812716)))

(assert (= (and b!6267001 ((_ is ElementMatch!16187) (regTwo!32887 (regOne!32887 r!7292)))) b!6268534))

(assert (= (and b!6267001 ((_ is Concat!25032) (regTwo!32887 (regOne!32887 r!7292)))) b!6268535))

(assert (= (and b!6267001 ((_ is Star!16187) (regTwo!32887 (regOne!32887 r!7292)))) b!6268536))

(assert (= (and b!6267001 ((_ is Union!16187) (regTwo!32887 (regOne!32887 r!7292)))) b!6268537))

(declare-fun b!6268538 () Bool)

(declare-fun e!3812717 () Bool)

(assert (=> b!6268538 (= e!3812717 tp_is_empty!41627)))

(declare-fun b!6268539 () Bool)

(declare-fun tp!1748424 () Bool)

(declare-fun tp!1748421 () Bool)

(assert (=> b!6268539 (= e!3812717 (and tp!1748424 tp!1748421))))

(declare-fun b!6268540 () Bool)

(declare-fun tp!1748423 () Bool)

(assert (=> b!6268540 (= e!3812717 tp!1748423)))

(declare-fun b!6268541 () Bool)

(declare-fun tp!1748422 () Bool)

(declare-fun tp!1748420 () Bool)

(assert (=> b!6268541 (= e!3812717 (and tp!1748422 tp!1748420))))

(assert (=> b!6267000 (= tp!1748170 e!3812717)))

(assert (= (and b!6267000 ((_ is ElementMatch!16187) (reg!16516 (regOne!32887 r!7292)))) b!6268538))

(assert (= (and b!6267000 ((_ is Concat!25032) (reg!16516 (regOne!32887 r!7292)))) b!6268539))

(assert (= (and b!6267000 ((_ is Star!16187) (reg!16516 (regOne!32887 r!7292)))) b!6268540))

(assert (= (and b!6267000 ((_ is Union!16187) (reg!16516 (regOne!32887 r!7292)))) b!6268541))

(declare-fun b!6268542 () Bool)

(declare-fun e!3812718 () Bool)

(assert (=> b!6268542 (= e!3812718 tp_is_empty!41627)))

(declare-fun b!6268543 () Bool)

(declare-fun tp!1748429 () Bool)

(declare-fun tp!1748426 () Bool)

(assert (=> b!6268543 (= e!3812718 (and tp!1748429 tp!1748426))))

(declare-fun b!6268544 () Bool)

(declare-fun tp!1748428 () Bool)

(assert (=> b!6268544 (= e!3812718 tp!1748428)))

(declare-fun b!6268545 () Bool)

(declare-fun tp!1748427 () Bool)

(declare-fun tp!1748425 () Bool)

(assert (=> b!6268545 (= e!3812718 (and tp!1748427 tp!1748425))))

(assert (=> b!6266999 (= tp!1748171 e!3812718)))

(assert (= (and b!6266999 ((_ is ElementMatch!16187) (regOne!32886 (regOne!32887 r!7292)))) b!6268542))

(assert (= (and b!6266999 ((_ is Concat!25032) (regOne!32886 (regOne!32887 r!7292)))) b!6268543))

(assert (= (and b!6266999 ((_ is Star!16187) (regOne!32886 (regOne!32887 r!7292)))) b!6268544))

(assert (= (and b!6266999 ((_ is Union!16187) (regOne!32886 (regOne!32887 r!7292)))) b!6268545))

(declare-fun b!6268546 () Bool)

(declare-fun e!3812719 () Bool)

(assert (=> b!6268546 (= e!3812719 tp_is_empty!41627)))

(declare-fun b!6268547 () Bool)

(declare-fun tp!1748434 () Bool)

(declare-fun tp!1748431 () Bool)

(assert (=> b!6268547 (= e!3812719 (and tp!1748434 tp!1748431))))

(declare-fun b!6268548 () Bool)

(declare-fun tp!1748433 () Bool)

(assert (=> b!6268548 (= e!3812719 tp!1748433)))

(declare-fun b!6268549 () Bool)

(declare-fun tp!1748432 () Bool)

(declare-fun tp!1748430 () Bool)

(assert (=> b!6268549 (= e!3812719 (and tp!1748432 tp!1748430))))

(assert (=> b!6266999 (= tp!1748168 e!3812719)))

(assert (= (and b!6266999 ((_ is ElementMatch!16187) (regTwo!32886 (regOne!32887 r!7292)))) b!6268546))

(assert (= (and b!6266999 ((_ is Concat!25032) (regTwo!32886 (regOne!32887 r!7292)))) b!6268547))

(assert (= (and b!6266999 ((_ is Star!16187) (regTwo!32886 (regOne!32887 r!7292)))) b!6268548))

(assert (= (and b!6266999 ((_ is Union!16187) (regTwo!32886 (regOne!32887 r!7292)))) b!6268549))

(declare-fun b!6268550 () Bool)

(declare-fun e!3812720 () Bool)

(assert (=> b!6268550 (= e!3812720 tp_is_empty!41627)))

(declare-fun b!6268551 () Bool)

(declare-fun tp!1748439 () Bool)

(declare-fun tp!1748436 () Bool)

(assert (=> b!6268551 (= e!3812720 (and tp!1748439 tp!1748436))))

(declare-fun b!6268552 () Bool)

(declare-fun tp!1748438 () Bool)

(assert (=> b!6268552 (= e!3812720 tp!1748438)))

(declare-fun b!6268553 () Bool)

(declare-fun tp!1748437 () Bool)

(declare-fun tp!1748435 () Bool)

(assert (=> b!6268553 (= e!3812720 (and tp!1748437 tp!1748435))))

(assert (=> b!6266989 (= tp!1748159 e!3812720)))

(assert (= (and b!6266989 ((_ is ElementMatch!16187) (h!71184 (exprs!6071 (h!71185 zl!343))))) b!6268550))

(assert (= (and b!6266989 ((_ is Concat!25032) (h!71184 (exprs!6071 (h!71185 zl!343))))) b!6268551))

(assert (= (and b!6266989 ((_ is Star!16187) (h!71184 (exprs!6071 (h!71185 zl!343))))) b!6268552))

(assert (= (and b!6266989 ((_ is Union!16187) (h!71184 (exprs!6071 (h!71185 zl!343))))) b!6268553))

(declare-fun b!6268554 () Bool)

(declare-fun e!3812721 () Bool)

(declare-fun tp!1748440 () Bool)

(declare-fun tp!1748441 () Bool)

(assert (=> b!6268554 (= e!3812721 (and tp!1748440 tp!1748441))))

(assert (=> b!6266989 (= tp!1748160 e!3812721)))

(assert (= (and b!6266989 ((_ is Cons!64736) (t!378414 (exprs!6071 (h!71185 zl!343))))) b!6268554))

(declare-fun b!6268555 () Bool)

(declare-fun e!3812722 () Bool)

(declare-fun tp!1748442 () Bool)

(declare-fun tp!1748443 () Bool)

(assert (=> b!6268555 (= e!3812722 (and tp!1748442 tp!1748443))))

(assert (=> b!6267019 (= tp!1748189 e!3812722)))

(assert (= (and b!6267019 ((_ is Cons!64736) (exprs!6071 setElem!42614))) b!6268555))

(declare-fun b!6268556 () Bool)

(declare-fun e!3812723 () Bool)

(assert (=> b!6268556 (= e!3812723 tp_is_empty!41627)))

(declare-fun b!6268557 () Bool)

(declare-fun tp!1748448 () Bool)

(declare-fun tp!1748445 () Bool)

(assert (=> b!6268557 (= e!3812723 (and tp!1748448 tp!1748445))))

(declare-fun b!6268558 () Bool)

(declare-fun tp!1748447 () Bool)

(assert (=> b!6268558 (= e!3812723 tp!1748447)))

(declare-fun b!6268559 () Bool)

(declare-fun tp!1748446 () Bool)

(declare-fun tp!1748444 () Bool)

(assert (=> b!6268559 (= e!3812723 (and tp!1748446 tp!1748444))))

(assert (=> b!6266983 (= tp!1748150 e!3812723)))

(assert (= (and b!6266983 ((_ is ElementMatch!16187) (regOne!32887 (regTwo!32886 r!7292)))) b!6268556))

(assert (= (and b!6266983 ((_ is Concat!25032) (regOne!32887 (regTwo!32886 r!7292)))) b!6268557))

(assert (= (and b!6266983 ((_ is Star!16187) (regOne!32887 (regTwo!32886 r!7292)))) b!6268558))

(assert (= (and b!6266983 ((_ is Union!16187) (regOne!32887 (regTwo!32886 r!7292)))) b!6268559))

(declare-fun b!6268560 () Bool)

(declare-fun e!3812724 () Bool)

(assert (=> b!6268560 (= e!3812724 tp_is_empty!41627)))

(declare-fun b!6268561 () Bool)

(declare-fun tp!1748453 () Bool)

(declare-fun tp!1748450 () Bool)

(assert (=> b!6268561 (= e!3812724 (and tp!1748453 tp!1748450))))

(declare-fun b!6268562 () Bool)

(declare-fun tp!1748452 () Bool)

(assert (=> b!6268562 (= e!3812724 tp!1748452)))

(declare-fun b!6268563 () Bool)

(declare-fun tp!1748451 () Bool)

(declare-fun tp!1748449 () Bool)

(assert (=> b!6268563 (= e!3812724 (and tp!1748451 tp!1748449))))

(assert (=> b!6266983 (= tp!1748148 e!3812724)))

(assert (= (and b!6266983 ((_ is ElementMatch!16187) (regTwo!32887 (regTwo!32886 r!7292)))) b!6268560))

(assert (= (and b!6266983 ((_ is Concat!25032) (regTwo!32887 (regTwo!32886 r!7292)))) b!6268561))

(assert (= (and b!6266983 ((_ is Star!16187) (regTwo!32887 (regTwo!32886 r!7292)))) b!6268562))

(assert (= (and b!6266983 ((_ is Union!16187) (regTwo!32887 (regTwo!32886 r!7292)))) b!6268563))

(declare-fun condSetEmpty!42626 () Bool)

(assert (=> setNonEmpty!42614 (= condSetEmpty!42626 (= setRest!42614 ((as const (Array Context!11142 Bool)) false)))))

(declare-fun setRes!42626 () Bool)

(assert (=> setNonEmpty!42614 (= tp!1748190 setRes!42626)))

(declare-fun setIsEmpty!42626 () Bool)

(assert (=> setIsEmpty!42626 setRes!42626))

(declare-fun e!3812725 () Bool)

(declare-fun tp!1748455 () Bool)

(declare-fun setElem!42626 () Context!11142)

(declare-fun setNonEmpty!42626 () Bool)

(assert (=> setNonEmpty!42626 (= setRes!42626 (and tp!1748455 (inv!83714 setElem!42626) e!3812725))))

(declare-fun setRest!42626 () (InoxSet Context!11142))

(assert (=> setNonEmpty!42626 (= setRest!42614 ((_ map or) (store ((as const (Array Context!11142 Bool)) false) setElem!42626 true) setRest!42626))))

(declare-fun b!6268564 () Bool)

(declare-fun tp!1748454 () Bool)

(assert (=> b!6268564 (= e!3812725 tp!1748454)))

(assert (= (and setNonEmpty!42614 condSetEmpty!42626) setIsEmpty!42626))

(assert (= (and setNonEmpty!42614 (not condSetEmpty!42626)) setNonEmpty!42626))

(assert (= setNonEmpty!42626 b!6268564))

(declare-fun m!7090508 () Bool)

(assert (=> setNonEmpty!42626 m!7090508))

(declare-fun b!6268565 () Bool)

(declare-fun e!3812726 () Bool)

(assert (=> b!6268565 (= e!3812726 tp_is_empty!41627)))

(declare-fun b!6268566 () Bool)

(declare-fun tp!1748460 () Bool)

(declare-fun tp!1748457 () Bool)

(assert (=> b!6268566 (= e!3812726 (and tp!1748460 tp!1748457))))

(declare-fun b!6268567 () Bool)

(declare-fun tp!1748459 () Bool)

(assert (=> b!6268567 (= e!3812726 tp!1748459)))

(declare-fun b!6268568 () Bool)

(declare-fun tp!1748458 () Bool)

(declare-fun tp!1748456 () Bool)

(assert (=> b!6268568 (= e!3812726 (and tp!1748458 tp!1748456))))

(assert (=> b!6266982 (= tp!1748151 e!3812726)))

(assert (= (and b!6266982 ((_ is ElementMatch!16187) (reg!16516 (regTwo!32886 r!7292)))) b!6268565))

(assert (= (and b!6266982 ((_ is Concat!25032) (reg!16516 (regTwo!32886 r!7292)))) b!6268566))

(assert (= (and b!6266982 ((_ is Star!16187) (reg!16516 (regTwo!32886 r!7292)))) b!6268567))

(assert (= (and b!6266982 ((_ is Union!16187) (reg!16516 (regTwo!32886 r!7292)))) b!6268568))

(declare-fun b!6268569 () Bool)

(declare-fun e!3812727 () Bool)

(assert (=> b!6268569 (= e!3812727 tp_is_empty!41627)))

(declare-fun b!6268570 () Bool)

(declare-fun tp!1748465 () Bool)

(declare-fun tp!1748462 () Bool)

(assert (=> b!6268570 (= e!3812727 (and tp!1748465 tp!1748462))))

(declare-fun b!6268571 () Bool)

(declare-fun tp!1748464 () Bool)

(assert (=> b!6268571 (= e!3812727 tp!1748464)))

(declare-fun b!6268572 () Bool)

(declare-fun tp!1748463 () Bool)

(declare-fun tp!1748461 () Bool)

(assert (=> b!6268572 (= e!3812727 (and tp!1748463 tp!1748461))))

(assert (=> b!6266981 (= tp!1748152 e!3812727)))

(assert (= (and b!6266981 ((_ is ElementMatch!16187) (regOne!32886 (regTwo!32886 r!7292)))) b!6268569))

(assert (= (and b!6266981 ((_ is Concat!25032) (regOne!32886 (regTwo!32886 r!7292)))) b!6268570))

(assert (= (and b!6266981 ((_ is Star!16187) (regOne!32886 (regTwo!32886 r!7292)))) b!6268571))

(assert (= (and b!6266981 ((_ is Union!16187) (regOne!32886 (regTwo!32886 r!7292)))) b!6268572))

(declare-fun b!6268573 () Bool)

(declare-fun e!3812728 () Bool)

(assert (=> b!6268573 (= e!3812728 tp_is_empty!41627)))

(declare-fun b!6268574 () Bool)

(declare-fun tp!1748470 () Bool)

(declare-fun tp!1748467 () Bool)

(assert (=> b!6268574 (= e!3812728 (and tp!1748470 tp!1748467))))

(declare-fun b!6268575 () Bool)

(declare-fun tp!1748469 () Bool)

(assert (=> b!6268575 (= e!3812728 tp!1748469)))

(declare-fun b!6268576 () Bool)

(declare-fun tp!1748468 () Bool)

(declare-fun tp!1748466 () Bool)

(assert (=> b!6268576 (= e!3812728 (and tp!1748468 tp!1748466))))

(assert (=> b!6266981 (= tp!1748149 e!3812728)))

(assert (= (and b!6266981 ((_ is ElementMatch!16187) (regTwo!32886 (regTwo!32886 r!7292)))) b!6268573))

(assert (= (and b!6266981 ((_ is Concat!25032) (regTwo!32886 (regTwo!32886 r!7292)))) b!6268574))

(assert (= (and b!6266981 ((_ is Star!16187) (regTwo!32886 (regTwo!32886 r!7292)))) b!6268575))

(assert (= (and b!6266981 ((_ is Union!16187) (regTwo!32886 (regTwo!32886 r!7292)))) b!6268576))

(declare-fun b!6268577 () Bool)

(declare-fun e!3812729 () Bool)

(declare-fun tp!1748471 () Bool)

(assert (=> b!6268577 (= e!3812729 (and tp_is_empty!41627 tp!1748471))))

(assert (=> b!6267010 (= tp!1748179 e!3812729)))

(assert (= (and b!6267010 ((_ is Cons!64738) (t!378416 (t!378416 s!2326)))) b!6268577))

(declare-fun b!6268578 () Bool)

(declare-fun e!3812730 () Bool)

(assert (=> b!6268578 (= e!3812730 tp_is_empty!41627)))

(declare-fun b!6268579 () Bool)

(declare-fun tp!1748476 () Bool)

(declare-fun tp!1748473 () Bool)

(assert (=> b!6268579 (= e!3812730 (and tp!1748476 tp!1748473))))

(declare-fun b!6268580 () Bool)

(declare-fun tp!1748475 () Bool)

(assert (=> b!6268580 (= e!3812730 tp!1748475)))

(declare-fun b!6268581 () Bool)

(declare-fun tp!1748474 () Bool)

(declare-fun tp!1748472 () Bool)

(assert (=> b!6268581 (= e!3812730 (and tp!1748474 tp!1748472))))

(assert (=> b!6266988 (= tp!1748157 e!3812730)))

(assert (= (and b!6266988 ((_ is ElementMatch!16187) (h!71184 (exprs!6071 setElem!42608)))) b!6268578))

(assert (= (and b!6266988 ((_ is Concat!25032) (h!71184 (exprs!6071 setElem!42608)))) b!6268579))

(assert (= (and b!6266988 ((_ is Star!16187) (h!71184 (exprs!6071 setElem!42608)))) b!6268580))

(assert (= (and b!6266988 ((_ is Union!16187) (h!71184 (exprs!6071 setElem!42608)))) b!6268581))

(declare-fun b!6268582 () Bool)

(declare-fun e!3812731 () Bool)

(declare-fun tp!1748477 () Bool)

(declare-fun tp!1748478 () Bool)

(assert (=> b!6268582 (= e!3812731 (and tp!1748477 tp!1748478))))

(assert (=> b!6266988 (= tp!1748158 e!3812731)))

(assert (= (and b!6266988 ((_ is Cons!64736) (t!378414 (exprs!6071 setElem!42608)))) b!6268582))

(declare-fun b!6268583 () Bool)

(declare-fun e!3812732 () Bool)

(assert (=> b!6268583 (= e!3812732 tp_is_empty!41627)))

(declare-fun b!6268584 () Bool)

(declare-fun tp!1748483 () Bool)

(declare-fun tp!1748480 () Bool)

(assert (=> b!6268584 (= e!3812732 (and tp!1748483 tp!1748480))))

(declare-fun b!6268585 () Bool)

(declare-fun tp!1748482 () Bool)

(assert (=> b!6268585 (= e!3812732 tp!1748482)))

(declare-fun b!6268586 () Bool)

(declare-fun tp!1748481 () Bool)

(declare-fun tp!1748479 () Bool)

(assert (=> b!6268586 (= e!3812732 (and tp!1748481 tp!1748479))))

(assert (=> b!6267013 (= tp!1748183 e!3812732)))

(assert (= (and b!6267013 ((_ is ElementMatch!16187) (reg!16516 (reg!16516 r!7292)))) b!6268583))

(assert (= (and b!6267013 ((_ is Concat!25032) (reg!16516 (reg!16516 r!7292)))) b!6268584))

(assert (= (and b!6267013 ((_ is Star!16187) (reg!16516 (reg!16516 r!7292)))) b!6268585))

(assert (= (and b!6267013 ((_ is Union!16187) (reg!16516 (reg!16516 r!7292)))) b!6268586))

(declare-fun b!6268587 () Bool)

(declare-fun e!3812733 () Bool)

(assert (=> b!6268587 (= e!3812733 tp_is_empty!41627)))

(declare-fun b!6268588 () Bool)

(declare-fun tp!1748488 () Bool)

(declare-fun tp!1748485 () Bool)

(assert (=> b!6268588 (= e!3812733 (and tp!1748488 tp!1748485))))

(declare-fun b!6268589 () Bool)

(declare-fun tp!1748487 () Bool)

(assert (=> b!6268589 (= e!3812733 tp!1748487)))

(declare-fun b!6268590 () Bool)

(declare-fun tp!1748486 () Bool)

(declare-fun tp!1748484 () Bool)

(assert (=> b!6268590 (= e!3812733 (and tp!1748486 tp!1748484))))

(assert (=> b!6267012 (= tp!1748184 e!3812733)))

(assert (= (and b!6267012 ((_ is ElementMatch!16187) (regOne!32886 (reg!16516 r!7292)))) b!6268587))

(assert (= (and b!6267012 ((_ is Concat!25032) (regOne!32886 (reg!16516 r!7292)))) b!6268588))

(assert (= (and b!6267012 ((_ is Star!16187) (regOne!32886 (reg!16516 r!7292)))) b!6268589))

(assert (= (and b!6267012 ((_ is Union!16187) (regOne!32886 (reg!16516 r!7292)))) b!6268590))

(declare-fun b!6268591 () Bool)

(declare-fun e!3812734 () Bool)

(assert (=> b!6268591 (= e!3812734 tp_is_empty!41627)))

(declare-fun b!6268592 () Bool)

(declare-fun tp!1748493 () Bool)

(declare-fun tp!1748490 () Bool)

(assert (=> b!6268592 (= e!3812734 (and tp!1748493 tp!1748490))))

(declare-fun b!6268593 () Bool)

(declare-fun tp!1748492 () Bool)

(assert (=> b!6268593 (= e!3812734 tp!1748492)))

(declare-fun b!6268594 () Bool)

(declare-fun tp!1748491 () Bool)

(declare-fun tp!1748489 () Bool)

(assert (=> b!6268594 (= e!3812734 (and tp!1748491 tp!1748489))))

(assert (=> b!6267012 (= tp!1748181 e!3812734)))

(assert (= (and b!6267012 ((_ is ElementMatch!16187) (regTwo!32886 (reg!16516 r!7292)))) b!6268591))

(assert (= (and b!6267012 ((_ is Concat!25032) (regTwo!32886 (reg!16516 r!7292)))) b!6268592))

(assert (= (and b!6267012 ((_ is Star!16187) (regTwo!32886 (reg!16516 r!7292)))) b!6268593))

(assert (= (and b!6267012 ((_ is Union!16187) (regTwo!32886 (reg!16516 r!7292)))) b!6268594))

(declare-fun b!6268595 () Bool)

(declare-fun e!3812735 () Bool)

(assert (=> b!6268595 (= e!3812735 tp_is_empty!41627)))

(declare-fun b!6268596 () Bool)

(declare-fun tp!1748498 () Bool)

(declare-fun tp!1748495 () Bool)

(assert (=> b!6268596 (= e!3812735 (and tp!1748498 tp!1748495))))

(declare-fun b!6268597 () Bool)

(declare-fun tp!1748497 () Bool)

(assert (=> b!6268597 (= e!3812735 tp!1748497)))

(declare-fun b!6268598 () Bool)

(declare-fun tp!1748496 () Bool)

(declare-fun tp!1748494 () Bool)

(assert (=> b!6268598 (= e!3812735 (and tp!1748496 tp!1748494))))

(assert (=> b!6267005 (= tp!1748174 e!3812735)))

(assert (= (and b!6267005 ((_ is ElementMatch!16187) (regOne!32887 (regTwo!32887 r!7292)))) b!6268595))

(assert (= (and b!6267005 ((_ is Concat!25032) (regOne!32887 (regTwo!32887 r!7292)))) b!6268596))

(assert (= (and b!6267005 ((_ is Star!16187) (regOne!32887 (regTwo!32887 r!7292)))) b!6268597))

(assert (= (and b!6267005 ((_ is Union!16187) (regOne!32887 (regTwo!32887 r!7292)))) b!6268598))

(declare-fun b!6268599 () Bool)

(declare-fun e!3812736 () Bool)

(assert (=> b!6268599 (= e!3812736 tp_is_empty!41627)))

(declare-fun b!6268600 () Bool)

(declare-fun tp!1748503 () Bool)

(declare-fun tp!1748500 () Bool)

(assert (=> b!6268600 (= e!3812736 (and tp!1748503 tp!1748500))))

(declare-fun b!6268601 () Bool)

(declare-fun tp!1748502 () Bool)

(assert (=> b!6268601 (= e!3812736 tp!1748502)))

(declare-fun b!6268602 () Bool)

(declare-fun tp!1748501 () Bool)

(declare-fun tp!1748499 () Bool)

(assert (=> b!6268602 (= e!3812736 (and tp!1748501 tp!1748499))))

(assert (=> b!6267005 (= tp!1748172 e!3812736)))

(assert (= (and b!6267005 ((_ is ElementMatch!16187) (regTwo!32887 (regTwo!32887 r!7292)))) b!6268599))

(assert (= (and b!6267005 ((_ is Concat!25032) (regTwo!32887 (regTwo!32887 r!7292)))) b!6268600))

(assert (= (and b!6267005 ((_ is Star!16187) (regTwo!32887 (regTwo!32887 r!7292)))) b!6268601))

(assert (= (and b!6267005 ((_ is Union!16187) (regTwo!32887 (regTwo!32887 r!7292)))) b!6268602))

(declare-fun b!6268603 () Bool)

(declare-fun e!3812737 () Bool)

(declare-fun tp!1748504 () Bool)

(declare-fun tp!1748505 () Bool)

(assert (=> b!6268603 (= e!3812737 (and tp!1748504 tp!1748505))))

(assert (=> b!6266997 (= tp!1748165 e!3812737)))

(assert (= (and b!6266997 ((_ is Cons!64736) (exprs!6071 (h!71185 (t!378415 zl!343))))) b!6268603))

(declare-fun b!6268604 () Bool)

(declare-fun e!3812738 () Bool)

(assert (=> b!6268604 (= e!3812738 tp_is_empty!41627)))

(declare-fun b!6268605 () Bool)

(declare-fun tp!1748510 () Bool)

(declare-fun tp!1748507 () Bool)

(assert (=> b!6268605 (= e!3812738 (and tp!1748510 tp!1748507))))

(declare-fun b!6268606 () Bool)

(declare-fun tp!1748509 () Bool)

(assert (=> b!6268606 (= e!3812738 tp!1748509)))

(declare-fun b!6268607 () Bool)

(declare-fun tp!1748508 () Bool)

(declare-fun tp!1748506 () Bool)

(assert (=> b!6268607 (= e!3812738 (and tp!1748508 tp!1748506))))

(assert (=> b!6267004 (= tp!1748175 e!3812738)))

(assert (= (and b!6267004 ((_ is ElementMatch!16187) (reg!16516 (regTwo!32887 r!7292)))) b!6268604))

(assert (= (and b!6267004 ((_ is Concat!25032) (reg!16516 (regTwo!32887 r!7292)))) b!6268605))

(assert (= (and b!6267004 ((_ is Star!16187) (reg!16516 (regTwo!32887 r!7292)))) b!6268606))

(assert (= (and b!6267004 ((_ is Union!16187) (reg!16516 (regTwo!32887 r!7292)))) b!6268607))

(declare-fun b!6268608 () Bool)

(declare-fun e!3812739 () Bool)

(assert (=> b!6268608 (= e!3812739 tp_is_empty!41627)))

(declare-fun b!6268609 () Bool)

(declare-fun tp!1748515 () Bool)

(declare-fun tp!1748512 () Bool)

(assert (=> b!6268609 (= e!3812739 (and tp!1748515 tp!1748512))))

(declare-fun b!6268610 () Bool)

(declare-fun tp!1748514 () Bool)

(assert (=> b!6268610 (= e!3812739 tp!1748514)))

(declare-fun b!6268611 () Bool)

(declare-fun tp!1748513 () Bool)

(declare-fun tp!1748511 () Bool)

(assert (=> b!6268611 (= e!3812739 (and tp!1748513 tp!1748511))))

(assert (=> b!6267003 (= tp!1748176 e!3812739)))

(assert (= (and b!6267003 ((_ is ElementMatch!16187) (regOne!32886 (regTwo!32887 r!7292)))) b!6268608))

(assert (= (and b!6267003 ((_ is Concat!25032) (regOne!32886 (regTwo!32887 r!7292)))) b!6268609))

(assert (= (and b!6267003 ((_ is Star!16187) (regOne!32886 (regTwo!32887 r!7292)))) b!6268610))

(assert (= (and b!6267003 ((_ is Union!16187) (regOne!32886 (regTwo!32887 r!7292)))) b!6268611))

(declare-fun b!6268612 () Bool)

(declare-fun e!3812740 () Bool)

(assert (=> b!6268612 (= e!3812740 tp_is_empty!41627)))

(declare-fun b!6268613 () Bool)

(declare-fun tp!1748520 () Bool)

(declare-fun tp!1748517 () Bool)

(assert (=> b!6268613 (= e!3812740 (and tp!1748520 tp!1748517))))

(declare-fun b!6268614 () Bool)

(declare-fun tp!1748519 () Bool)

(assert (=> b!6268614 (= e!3812740 tp!1748519)))

(declare-fun b!6268615 () Bool)

(declare-fun tp!1748518 () Bool)

(declare-fun tp!1748516 () Bool)

(assert (=> b!6268615 (= e!3812740 (and tp!1748518 tp!1748516))))

(assert (=> b!6267003 (= tp!1748173 e!3812740)))

(assert (= (and b!6267003 ((_ is ElementMatch!16187) (regTwo!32886 (regTwo!32887 r!7292)))) b!6268612))

(assert (= (and b!6267003 ((_ is Concat!25032) (regTwo!32886 (regTwo!32887 r!7292)))) b!6268613))

(assert (= (and b!6267003 ((_ is Star!16187) (regTwo!32886 (regTwo!32887 r!7292)))) b!6268614))

(assert (= (and b!6267003 ((_ is Union!16187) (regTwo!32886 (regTwo!32887 r!7292)))) b!6268615))

(declare-fun b!6268617 () Bool)

(declare-fun e!3812742 () Bool)

(declare-fun tp!1748521 () Bool)

(assert (=> b!6268617 (= e!3812742 tp!1748521)))

(declare-fun e!3812741 () Bool)

(declare-fun b!6268616 () Bool)

(declare-fun tp!1748522 () Bool)

(assert (=> b!6268616 (= e!3812741 (and (inv!83714 (h!71185 (t!378415 (t!378415 zl!343)))) e!3812742 tp!1748522))))

(assert (=> b!6266996 (= tp!1748166 e!3812741)))

(assert (= b!6268616 b!6268617))

(assert (= (and b!6266996 ((_ is Cons!64737) (t!378415 (t!378415 zl!343)))) b!6268616))

(declare-fun m!7090510 () Bool)

(assert (=> b!6268616 m!7090510))

(declare-fun b_lambda!238681 () Bool)

(assert (= b_lambda!238653 (or b!6266769 b_lambda!238681)))

(declare-fun bs!1565225 () Bool)

(declare-fun d!1967421 () Bool)

(assert (= bs!1565225 (and d!1967421 b!6266769)))

(assert (=> bs!1565225 (= (dynLambda!25594 lambda!343140 (h!71185 lt!2351106)) (>= lt!2351228 (contextDepth!205 (h!71185 lt!2351106))))))

(assert (=> bs!1565225 m!7088608))

(assert (=> b!6267823 d!1967421))

(declare-fun b_lambda!238683 () Bool)

(assert (= b_lambda!238667 (or d!1966599 b_lambda!238683)))

(declare-fun bs!1565226 () Bool)

(declare-fun d!1967423 () Bool)

(assert (= bs!1565226 (and d!1967423 d!1966599)))

(assert (=> bs!1565226 (= (dynLambda!25595 lambda!343161 (h!71184 lt!2351259)) (validRegex!7923 (h!71184 lt!2351259)))))

(declare-fun m!7090512 () Bool)

(assert (=> bs!1565226 m!7090512))

(assert (=> b!6268258 d!1967423))

(declare-fun b_lambda!238685 () Bool)

(assert (= b_lambda!238675 (or d!1966533 b_lambda!238685)))

(declare-fun bs!1565227 () Bool)

(declare-fun d!1967425 () Bool)

(assert (= bs!1565227 (and d!1967425 d!1966533)))

(assert (=> bs!1565227 (= (dynLambda!25595 lambda!343131 (h!71184 (exprs!6071 (h!71185 zl!343)))) (validRegex!7923 (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(declare-fun m!7090514 () Bool)

(assert (=> bs!1565227 m!7090514))

(assert (=> b!6268381 d!1967425))

(declare-fun b_lambda!238687 () Bool)

(assert (= b_lambda!238673 (or b!6266774 b_lambda!238687)))

(declare-fun bs!1565228 () Bool)

(declare-fun d!1967427 () Bool)

(assert (= bs!1565228 (and d!1967427 b!6266774)))

(assert (=> bs!1565228 (= (dynLambda!25594 lambda!343143 (h!71185 zl!343)) (>= lt!2351232 (contextDepth!205 (h!71185 zl!343))))))

(assert (=> bs!1565228 m!7088620))

(assert (=> b!6268322 d!1967427))

(declare-fun b_lambda!238689 () Bool)

(assert (= b_lambda!238659 (or b!6266061 b_lambda!238689)))

(assert (=> d!1967151 d!1966621))

(declare-fun b_lambda!238691 () Bool)

(assert (= b_lambda!238661 (or b!6266061 b_lambda!238691)))

(assert (=> d!1967197 d!1966623))

(declare-fun b_lambda!238693 () Bool)

(assert (= b_lambda!238677 (or d!1966597 b_lambda!238693)))

(declare-fun bs!1565229 () Bool)

(declare-fun d!1967429 () Bool)

(assert (= bs!1565229 (and d!1967429 d!1966597)))

(assert (=> bs!1565229 (= (dynLambda!25595 lambda!343158 (h!71184 (unfocusZipperList!1608 zl!343))) (validRegex!7923 (h!71184 (unfocusZipperList!1608 zl!343))))))

(declare-fun m!7090516 () Bool)

(assert (=> bs!1565229 m!7090516))

(assert (=> b!6268407 d!1967429))

(declare-fun b_lambda!238695 () Bool)

(assert (= b_lambda!238665 (or b!6266767 b_lambda!238695)))

(declare-fun bs!1565230 () Bool)

(declare-fun d!1967431 () Bool)

(assert (= bs!1565230 (and d!1967431 b!6266767)))

(assert (=> bs!1565230 (= (dynLambda!25594 lambda!343139 (h!71185 (t!378415 lt!2351106))) (>= lt!2351226 (contextDepth!205 (h!71185 (t!378415 lt!2351106)))))))

(assert (=> bs!1565230 m!7090196))

(assert (=> b!6268215 d!1967431))

(declare-fun b_lambda!238697 () Bool)

(assert (= b_lambda!238657 (or b!6266772 b_lambda!238697)))

(declare-fun bs!1565231 () Bool)

(declare-fun d!1967433 () Bool)

(assert (= bs!1565231 (and d!1967433 b!6266772)))

(assert (=> bs!1565231 (= (dynLambda!25594 lambda!343142 (h!71185 (t!378415 zl!343))) (>= lt!2351230 (contextDepth!205 (h!71185 (t!378415 zl!343)))))))

(assert (=> bs!1565231 m!7089780))

(assert (=> b!6267933 d!1967433))

(declare-fun b_lambda!238699 () Bool)

(assert (= b_lambda!238679 (or d!1966543 b_lambda!238699)))

(declare-fun bs!1565232 () Bool)

(declare-fun d!1967435 () Bool)

(assert (= bs!1565232 (and d!1967435 d!1966543)))

(assert (=> bs!1565232 (= (dynLambda!25595 lambda!343144 (h!71184 (exprs!6071 (h!71185 zl!343)))) (validRegex!7923 (h!71184 (exprs!6071 (h!71185 zl!343)))))))

(assert (=> bs!1565232 m!7090514))

(assert (=> b!6268500 d!1967435))

(declare-fun b_lambda!238701 () Bool)

(assert (= b_lambda!238671 (or d!1966529 b_lambda!238701)))

(declare-fun bs!1565233 () Bool)

(declare-fun d!1967437 () Bool)

(assert (= bs!1565233 (and d!1967437 d!1966529)))

(assert (=> bs!1565233 (= (dynLambda!25595 lambda!343128 (h!71184 lt!2351079)) (validRegex!7923 (h!71184 lt!2351079)))))

(declare-fun m!7090518 () Bool)

(assert (=> bs!1565233 m!7090518))

(assert (=> b!6268320 d!1967437))

(declare-fun b_lambda!238703 () Bool)

(assert (= b_lambda!238663 (or b!6266061 b_lambda!238703)))

(assert (=> d!1967225 d!1966625))

(declare-fun b_lambda!238705 () Bool)

(assert (= b_lambda!238655 (or d!1966525 b_lambda!238705)))

(declare-fun bs!1565234 () Bool)

(declare-fun d!1967439 () Bool)

(assert (= bs!1565234 (and d!1967439 d!1966525)))

(assert (=> bs!1565234 (= (dynLambda!25595 lambda!343127 (h!71184 lt!2351096)) (validRegex!7923 (h!71184 lt!2351096)))))

(declare-fun m!7090520 () Bool)

(assert (=> bs!1565234 m!7090520))

(assert (=> b!6267863 d!1967439))

(declare-fun b_lambda!238707 () Bool)

(assert (= b_lambda!238669 (or d!1966567 b_lambda!238707)))

(declare-fun bs!1565235 () Bool)

(declare-fun d!1967441 () Bool)

(assert (= bs!1565235 (and d!1967441 d!1966567)))

(assert (=> bs!1565235 (= (dynLambda!25595 lambda!343149 (h!71184 (exprs!6071 setElem!42608))) (validRegex!7923 (h!71184 (exprs!6071 setElem!42608))))))

(declare-fun m!7090522 () Bool)

(assert (=> bs!1565235 m!7090522))

(assert (=> b!6268269 d!1967441))

(check-sat (not bs!1565226) (not setNonEmpty!42626) (not d!1967319) (not b!6268611) (not d!1967209) (not b!6268018) (not b!6268114) (not d!1967395) (not b!6268517) (not b!6268031) (not b!6268606) (not d!1967133) (not bm!529909) (not bm!529976) (not bs!1565232) (not bs!1565233) (not b!6267959) (not d!1967301) (not b!6268361) (not bm!529929) (not b!6268598) (not b!6268154) (not bm!529917) (not b!6268267) (not b!6268615) (not d!1967295) (not d!1967327) (not setNonEmpty!42623) (not b!6268580) (not d!1967113) (not b!6268508) (not b!6268107) (not b!6268507) (not b!6268103) (not b!6267970) (not b!6268531) (not d!1967303) (not b!6267951) (not bm!529924) (not bm!529871) (not b!6268541) (not b!6268372) (not b!6268271) (not b_lambda!238595) (not b_lambda!238691) (not d!1967251) (not b!6268119) (not b!6268523) (not b!6267875) (not b!6268461) (not d!1967167) (not b!6267962) (not b!6268237) (not bm!529989) (not bm!529943) (not b!6268524) (not d!1967125) (not b!6268610) (not bm!529986) (not bm!529868) (not b!6268270) (not b!6268321) (not b!6268592) (not d!1967191) (not bm!529872) (not bm!529905) (not bm!529981) (not b!6268121) (not d!1967183) (not d!1967227) (not b!6268111) (not b!6268575) (not b!6267928) (not bm!529860) (not bm!529884) (not b!6268574) (not d!1967353) (not b!6268088) (not bm!530010) (not b!6268405) (not b!6268368) (not d!1967059) (not b!6267930) (not b!6268268) (not b!6268376) (not b!6268577) (not d!1967193) (not d!1967197) (not bm!529993) (not b!6268097) (not b!6268204) (not bm!529873) (not bm!529908) (not d!1967325) tp_is_empty!41627 (not b!6267918) (not b!6268219) (not b!6268438) (not d!1967293) (not bm!529897) (not bm!529949) (not b!6268558) (not b!6268186) (not b!6268535) (not b!6267943) (not b!6268525) (not b!6268607) (not b!6268568) (not b!6268323) (not b_lambda!238701) (not bm!529983) (not b!6268153) (not bm!529966) (not d!1967099) (not b!6268364) (not b!6268150) (not bm!530006) (not bs!1565228) (not b!6268584) (not b!6267832) (not d!1967221) (not b!6268532) (not b!6268179) (not bm!529923) (not b!6268539) (not d!1967077) (not b!6267934) (not b!6267844) (not b!6268036) (not b!6268498) (not b!6268017) (not b!6268594) (not d!1967135) (not bm!529921) (not b!6268579) (not b_lambda!238693) (not b!6268571) (not b!6268540) (not b!6268408) (not bs!1565235) (not b!6268294) (not b!6268234) (not b!6268112) (not b!6268217) (not d!1967179) (not bm!529984) (not b!6268374) (not d!1967375) (not b!6268547) (not d!1967281) (not bm!530011) (not bm!529893) (not b!6267969) (not b!6268516) (not b!6268105) (not bm!529903) (not b!6268549) (not d!1967035) (not b!6267895) (not b!6268555) (not b_lambda!238591) (not b!6267867) (not d!1967181) (not b!6268298) (not b!6268581) (not b!6268145) (not b!6268563) (not b!6268254) (not bm!529961) (not d!1967389) (not b!6268213) (not d!1967091) (not d!1967169) (not b!6267884) (not d!1967219) (not b!6267847) (not b!6268148) (not bm!529922) (not d!1967239) (not b!6268371) (not b!6268070) (not d!1967097) (not d!1967175) (not b!6268004) (not bm!530004) (not b!6268567) (not b!6267965) (not b!6268075) (not b!6267971) (not b!6268128) (not b!6267977) (not b!6268375) (not setNonEmpty!42625) (not b!6268585) (not b!6268504) (not b!6267935) (not b!6268613) (not b!6268554) (not b!6268239) (not d!1967289) (not d!1967137) (not b!6267950) (not bm!529940) (not d!1967291) (not b!6268588) (not d!1967329) (not d!1967397) (not b!6268572) (not d!1967261) (not b!6268140) (not d!1967409) (not b!6268519) (not setNonEmpty!42624) (not b!6268285) (not b!6268201) (not b!6268582) (not d!1967211) (not d!1967141) (not bm!529919) (not d!1967377) (not d!1967143) (not b!6268125) (not bm!529878) (not b!6268265) (not bm!529867) (not b!6268216) (not b!6267978) (not bm!529962) (not b!6268545) (not bm!529975) (not b!6268369) (not b!6267993) (not d!1967233) (not bm!529864) (not bs!1565230) (not b!6268501) (not b_lambda!238695) (not b!6268377) (not b!6268441) (not b!6268614) (not d!1967413) (not d!1967101) (not b!6267942) (not b!6268276) (not d!1967237) (not b!6268015) (not b!6268079) (not d!1967401) (not b!6267864) (not b!6268536) (not d!1967283) (not b_lambda!238697) (not b!6268397) (not b!6268596) (not b!6267976) (not bm!529982) (not b!6268528) (not b!6268552) (not b!6268439) (not b!6268513) (not bm!529974) (not b!6268034) (not b!6268601) (not bm!529928) (not d!1967385) (not b!6268433) (not b!6268410) (not b!6268352) (not b_lambda!238705) (not b!6267996) (not b!6268520) (not d!1967359) (not b!6268409) (not b!6268284) (not b_lambda!238703) (not b!6267824) (not b!6268151) (not d!1967123) (not b!6268428) (not b!6268411) (not b!6268222) (not d!1967411) (not d!1967279) (not bm!529890) (not b!6268436) (not b_lambda!238689) (not b!6268609) (not b!6268190) (not b!6268220) (not b!6268279) (not b!6268566) (not bs!1565229) (not bm!529883) (not b!6268073) (not b!6268242) (not bs!1565234) (not d!1967045) (not b!6268115) (not b_lambda!238707) (not b!6268570) (not b!6267842) (not b!6267937) (not b!6268379) (not b!6268202) (not bm!529977) (not b!6268244) (not b!6268124) (not d!1967243) (not b!6268442) (not bm!529987) (not d!1967177) (not b!6268617) (not b!6268559) (not b!6268318) (not b!6267961) (not bs!1565225) (not b!6268505) (not b_lambda!238699) (not d!1967157) (not bm!529946) (not b!6267956) (not d!1967161) (not d!1967355) (not b!6268390) (not bm!529898) (not b!6268139) (not b!6268230) (not b!6268203) (not b!6268616) (not b!6268122) (not bm!530008) (not b!6268548) (not b!6268199) (not b!6267972) (not b!6268600) (not b_lambda!238593) (not b!6268126) (not b!6268110) (not b!6268605) (not bm!530000) (not d!1967217) (not b!6268281) (not bm!529879) (not b!6268033) (not b!6268189) (not bm!529998) (not b!6268561) (not bm!529956) (not d!1967121) (not b!6268509) (not bm!529959) (not bm!529941) (not b!6268039) (not b!6267848) (not b!6268543) (not b!6268386) (not b!6268553) (not b!6268106) (not b!6268557) (not bm!529916) (not b!6268232) (not b!6267936) (not b!6267975) (not d!1967131) (not bm!529906) (not d!1967285) (not b!6268576) (not b!6268259) (not d!1967241) (not d!1967313) (not bm!529892) (not b!6268564) (not b!6268511) (not b!6268037) (not d!1967145) (not b!6268529) (not b!6268120) (not b!6268447) (not bm!529942) (not d!1967235) (not bm!529957) (not b!6267988) (not b!6267910) (not b!6268589) (not b!6268512) (not b!6268472) (not d!1967147) (not b!6268194) (not b!6268296) (not b!6268419) (not b!6267839) (not b!6268030) (not b!6268299) (not b!6267973) (not b!6268590) (not d!1967155) (not b!6268027) (not b!6267952) (not bm!529997) (not b!6267979) (not b!6268562) (not d!1967287) (not b!6268515) (not b!6268065) (not b!6268396) (not b!6268109) (not bm!529952) (not bm!529990) (not b!6268104) (not bm!529889) (not d!1967341) (not bm!529999) (not d!1967225) (not d!1967203) (not b!6268551) (not bs!1565231) (not d!1967231) (not b!6267906) (not b!6268078) (not b!6268264) (not d!1967307) (not b!6268113) (not bm!529865) (not bm!529951) (not bm!529950) (not bm!529870) (not b!6268297) (not bm!529885) (not b!6268395) (not bm!529859) (not b!6267992) (not bm!529891) (not d!1967387) (not b!6267845) (not b!6268586) (not d!1967151) (not b!6268197) (not b!6268593) (not b!6268602) (not b!6268362) (not d!1967357) (not b!6268537) (not d!1967229) (not b!6268533) (not b_lambda!238681) (not b!6268019) (not bm!529992) (not b!6268282) (not b_lambda!238687) (not b!6268187) (not d!1967323) (not b!6268266) (not bm!529968) (not bm!530005) (not b!6268503) (not bm!529948) (not bm!529960) (not b!6267964) (not b!6267857) (not bm!529899) (not bm!529969) (not b!6268527) (not b!6268193) (not b!6267920) (not bm!529994) (not b!6268521) (not b!6268307) (not d!1967379) (not bm!529877) (not b!6268597) (not bs!1565227) (not bm!529947) (not b!6268603) (not b_lambda!238683) (not b!6268076) (not b!6267912) (not b!6268382) (not b!6268118) (not b!6267980) (not b_lambda!238685) (not b!6268272) (not b!6268468) (not b!6268544) (not b!6268038) (not bm!530007) (not d!1967129) (not d!1967245))
(check-sat)
