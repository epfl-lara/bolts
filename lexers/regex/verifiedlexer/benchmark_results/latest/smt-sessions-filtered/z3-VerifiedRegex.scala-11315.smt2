; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596816 () Bool)

(assert start!596816)

(declare-fun b!5824959 () Bool)

(declare-fun res!2455835 () Bool)

(declare-fun e!3574503 () Bool)

(assert (=> b!5824959 (=> res!2455835 e!3574503)))

(declare-datatypes ((C!32024 0))(
  ( (C!32025 (val!25714 Int)) )
))
(declare-datatypes ((Regex!15877 0))(
  ( (ElementMatch!15877 (c!1032237 C!32024)) (Concat!24722 (regOne!32266 Regex!15877) (regTwo!32266 Regex!15877)) (EmptyExpr!15877) (Star!15877 (reg!16206 Regex!15877)) (EmptyLang!15877) (Union!15877 (regOne!32267 Regex!15877) (regTwo!32267 Regex!15877)) )
))
(declare-fun r!7292 () Regex!15877)

(declare-datatypes ((List!63930 0))(
  ( (Nil!63806) (Cons!63806 (h!70254 Regex!15877) (t!377285 List!63930)) )
))
(declare-datatypes ((Context!10522 0))(
  ( (Context!10523 (exprs!5761 List!63930)) )
))
(declare-datatypes ((List!63931 0))(
  ( (Nil!63807) (Cons!63807 (h!70255 Context!10522) (t!377286 List!63931)) )
))
(declare-fun zl!343 () List!63931)

(declare-fun generalisedUnion!1721 (List!63930) Regex!15877)

(declare-fun unfocusZipperList!1298 (List!63931) List!63930)

(assert (=> b!5824959 (= res!2455835 (not (= r!7292 (generalisedUnion!1721 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5824960 () Bool)

(declare-fun res!2455831 () Bool)

(declare-fun e!3574497 () Bool)

(assert (=> b!5824960 (=> (not res!2455831) (not e!3574497))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10522))

(declare-fun toList!9661 ((InoxSet Context!10522)) List!63931)

(assert (=> b!5824960 (= res!2455831 (= (toList!9661 z!1189) zl!343))))

(declare-fun b!5824961 () Bool)

(declare-fun e!3574499 () Bool)

(declare-fun tp!1608077 () Bool)

(assert (=> b!5824961 (= e!3574499 tp!1608077)))

(declare-fun b!5824962 () Bool)

(assert (=> b!5824962 (= e!3574497 (not e!3574503))))

(declare-fun res!2455833 () Bool)

(assert (=> b!5824962 (=> res!2455833 e!3574503)))

(get-info :version)

(assert (=> b!5824962 (= res!2455833 (not ((_ is Cons!63807) zl!343)))))

(declare-datatypes ((List!63932 0))(
  ( (Nil!63808) (Cons!63808 (h!70256 C!32024) (t!377287 List!63932)) )
))
(declare-fun s!2326 () List!63932)

(declare-fun matchR!8060 (Regex!15877 List!63932) Bool)

(declare-fun matchRSpec!2978 (Regex!15877 List!63932) Bool)

(assert (=> b!5824962 (= (matchR!8060 r!7292 s!2326) (matchRSpec!2978 r!7292 s!2326))))

(declare-datatypes ((Unit!157025 0))(
  ( (Unit!157026) )
))
(declare-fun lt!2302580 () Unit!157025)

(declare-fun mainMatchTheorem!2978 (Regex!15877 List!63932) Unit!157025)

(assert (=> b!5824962 (= lt!2302580 (mainMatchTheorem!2978 r!7292 s!2326))))

(declare-fun setIsEmpty!39378 () Bool)

(declare-fun setRes!39378 () Bool)

(assert (=> setIsEmpty!39378 setRes!39378))

(declare-fun b!5824963 () Bool)

(declare-fun res!2455838 () Bool)

(assert (=> b!5824963 (=> res!2455838 e!3574503)))

(declare-fun generalisedConcat!1474 (List!63930) Regex!15877)

(assert (=> b!5824963 (= res!2455838 (not (= r!7292 (generalisedConcat!1474 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun res!2455837 () Bool)

(assert (=> start!596816 (=> (not res!2455837) (not e!3574497))))

(declare-fun validRegex!7613 (Regex!15877) Bool)

(assert (=> start!596816 (= res!2455837 (validRegex!7613 r!7292))))

(assert (=> start!596816 e!3574497))

(declare-fun e!3574502 () Bool)

(assert (=> start!596816 e!3574502))

(declare-fun condSetEmpty!39378 () Bool)

(assert (=> start!596816 (= condSetEmpty!39378 (= z!1189 ((as const (Array Context!10522 Bool)) false)))))

(assert (=> start!596816 setRes!39378))

(declare-fun e!3574500 () Bool)

(assert (=> start!596816 e!3574500))

(declare-fun e!3574501 () Bool)

(assert (=> start!596816 e!3574501))

(declare-fun b!5824964 () Bool)

(declare-fun tp!1608076 () Bool)

(declare-fun tp!1608078 () Bool)

(assert (=> b!5824964 (= e!3574502 (and tp!1608076 tp!1608078))))

(declare-fun tp!1608080 () Bool)

(declare-fun b!5824965 () Bool)

(declare-fun inv!82939 (Context!10522) Bool)

(assert (=> b!5824965 (= e!3574500 (and (inv!82939 (h!70255 zl!343)) e!3574499 tp!1608080))))

(declare-fun b!5824966 () Bool)

(declare-fun tp_is_empty!41007 () Bool)

(declare-fun tp!1608082 () Bool)

(assert (=> b!5824966 (= e!3574501 (and tp_is_empty!41007 tp!1608082))))

(declare-fun tp!1608081 () Bool)

(declare-fun setNonEmpty!39378 () Bool)

(declare-fun e!3574498 () Bool)

(declare-fun setElem!39378 () Context!10522)

(assert (=> setNonEmpty!39378 (= setRes!39378 (and tp!1608081 (inv!82939 setElem!39378) e!3574498))))

(declare-fun setRest!39378 () (InoxSet Context!10522))

(assert (=> setNonEmpty!39378 (= z!1189 ((_ map or) (store ((as const (Array Context!10522 Bool)) false) setElem!39378 true) setRest!39378))))

(declare-fun b!5824967 () Bool)

(declare-fun tp!1608079 () Bool)

(declare-fun tp!1608083 () Bool)

(assert (=> b!5824967 (= e!3574502 (and tp!1608079 tp!1608083))))

(declare-fun b!5824968 () Bool)

(assert (=> b!5824968 (= e!3574502 tp_is_empty!41007)))

(declare-fun b!5824969 () Bool)

(declare-fun res!2455836 () Bool)

(assert (=> b!5824969 (=> res!2455836 e!3574503)))

(assert (=> b!5824969 (= res!2455836 (not ((_ is Cons!63806) (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5824970 () Bool)

(declare-fun res!2455832 () Bool)

(assert (=> b!5824970 (=> res!2455832 e!3574503)))

(declare-fun isEmpty!35673 (List!63931) Bool)

(assert (=> b!5824970 (= res!2455832 (not (isEmpty!35673 (t!377286 zl!343))))))

(declare-fun b!5824971 () Bool)

(declare-fun tp!1608075 () Bool)

(assert (=> b!5824971 (= e!3574498 tp!1608075)))

(declare-fun b!5824972 () Bool)

(assert (=> b!5824972 (= e!3574503 (or ((_ is EmptyExpr!15877) r!7292) (not ((_ is EmptyLang!15877) r!7292)) (= z!1189 (store ((as const (Array Context!10522 Bool)) false) (Context!10523 (Cons!63806 r!7292 Nil!63806)) true))))))

(declare-fun b!5824973 () Bool)

(declare-fun tp!1608084 () Bool)

(assert (=> b!5824973 (= e!3574502 tp!1608084)))

(declare-fun b!5824974 () Bool)

(declare-fun res!2455834 () Bool)

(assert (=> b!5824974 (=> (not res!2455834) (not e!3574497))))

(declare-fun unfocusZipper!1619 (List!63931) Regex!15877)

(assert (=> b!5824974 (= res!2455834 (= r!7292 (unfocusZipper!1619 zl!343)))))

(assert (= (and start!596816 res!2455837) b!5824960))

(assert (= (and b!5824960 res!2455831) b!5824974))

(assert (= (and b!5824974 res!2455834) b!5824962))

(assert (= (and b!5824962 (not res!2455833)) b!5824970))

(assert (= (and b!5824970 (not res!2455832)) b!5824963))

(assert (= (and b!5824963 (not res!2455838)) b!5824969))

(assert (= (and b!5824969 (not res!2455836)) b!5824959))

(assert (= (and b!5824959 (not res!2455835)) b!5824972))

(assert (= (and start!596816 ((_ is ElementMatch!15877) r!7292)) b!5824968))

(assert (= (and start!596816 ((_ is Concat!24722) r!7292)) b!5824964))

(assert (= (and start!596816 ((_ is Star!15877) r!7292)) b!5824973))

(assert (= (and start!596816 ((_ is Union!15877) r!7292)) b!5824967))

(assert (= (and start!596816 condSetEmpty!39378) setIsEmpty!39378))

(assert (= (and start!596816 (not condSetEmpty!39378)) setNonEmpty!39378))

(assert (= setNonEmpty!39378 b!5824971))

(assert (= b!5824965 b!5824961))

(assert (= (and start!596816 ((_ is Cons!63807) zl!343)) b!5824965))

(assert (= (and start!596816 ((_ is Cons!63808) s!2326)) b!5824966))

(declare-fun m!6758026 () Bool)

(assert (=> b!5824963 m!6758026))

(declare-fun m!6758028 () Bool)

(assert (=> setNonEmpty!39378 m!6758028))

(declare-fun m!6758030 () Bool)

(assert (=> b!5824972 m!6758030))

(declare-fun m!6758032 () Bool)

(assert (=> b!5824974 m!6758032))

(declare-fun m!6758034 () Bool)

(assert (=> b!5824960 m!6758034))

(declare-fun m!6758036 () Bool)

(assert (=> b!5824970 m!6758036))

(declare-fun m!6758038 () Bool)

(assert (=> b!5824959 m!6758038))

(assert (=> b!5824959 m!6758038))

(declare-fun m!6758040 () Bool)

(assert (=> b!5824959 m!6758040))

(declare-fun m!6758042 () Bool)

(assert (=> b!5824962 m!6758042))

(declare-fun m!6758044 () Bool)

(assert (=> b!5824962 m!6758044))

(declare-fun m!6758046 () Bool)

(assert (=> b!5824962 m!6758046))

(declare-fun m!6758048 () Bool)

(assert (=> b!5824965 m!6758048))

(declare-fun m!6758050 () Bool)

(assert (=> start!596816 m!6758050))

(check-sat (not b!5824959) (not b!5824967) tp_is_empty!41007 (not b!5824963) (not b!5824961) (not b!5824964) (not b!5824965) (not b!5824966) (not b!5824971) (not b!5824974) (not b!5824973) (not setNonEmpty!39378) (not b!5824970) (not start!596816) (not b!5824960) (not b!5824962))
(check-sat)
(get-model)

(declare-fun d!1832568 () Bool)

(declare-fun lambda!318794 () Int)

(declare-fun forall!14968 (List!63930 Int) Bool)

(assert (=> d!1832568 (= (inv!82939 (h!70255 zl!343)) (forall!14968 (exprs!5761 (h!70255 zl!343)) lambda!318794))))

(declare-fun bs!1373941 () Bool)

(assert (= bs!1373941 d!1832568))

(declare-fun m!6758140 () Bool)

(assert (=> bs!1373941 m!6758140))

(assert (=> b!5824965 d!1832568))

(declare-fun d!1832592 () Bool)

(declare-fun e!3574638 () Bool)

(assert (=> d!1832592 e!3574638))

(declare-fun res!2455914 () Bool)

(assert (=> d!1832592 (=> (not res!2455914) (not e!3574638))))

(declare-fun lt!2302604 () List!63931)

(declare-fun noDuplicate!1747 (List!63931) Bool)

(assert (=> d!1832592 (= res!2455914 (noDuplicate!1747 lt!2302604))))

(declare-fun choose!44271 ((InoxSet Context!10522)) List!63931)

(assert (=> d!1832592 (= lt!2302604 (choose!44271 z!1189))))

(assert (=> d!1832592 (= (toList!9661 z!1189) lt!2302604)))

(declare-fun b!5825216 () Bool)

(declare-fun content!11713 (List!63931) (InoxSet Context!10522))

(assert (=> b!5825216 (= e!3574638 (= (content!11713 lt!2302604) z!1189))))

(assert (= (and d!1832592 res!2455914) b!5825216))

(declare-fun m!6758142 () Bool)

(assert (=> d!1832592 m!6758142))

(declare-fun m!6758144 () Bool)

(assert (=> d!1832592 m!6758144))

(declare-fun m!6758146 () Bool)

(assert (=> b!5825216 m!6758146))

(assert (=> b!5824960 d!1832592))

(declare-fun d!1832594 () Bool)

(declare-fun lt!2302607 () Regex!15877)

(assert (=> d!1832594 (validRegex!7613 lt!2302607)))

(assert (=> d!1832594 (= lt!2302607 (generalisedUnion!1721 (unfocusZipperList!1298 zl!343)))))

(assert (=> d!1832594 (= (unfocusZipper!1619 zl!343) lt!2302607)))

(declare-fun bs!1373942 () Bool)

(assert (= bs!1373942 d!1832594))

(declare-fun m!6758148 () Bool)

(assert (=> bs!1373942 m!6758148))

(assert (=> bs!1373942 m!6758038))

(assert (=> bs!1373942 m!6758038))

(assert (=> bs!1373942 m!6758040))

(assert (=> b!5824974 d!1832594))

(declare-fun b!5825245 () Bool)

(declare-fun e!3574658 () Bool)

(declare-fun e!3574659 () Bool)

(assert (=> b!5825245 (= e!3574658 e!3574659)))

(declare-fun c!1032299 () Bool)

(assert (=> b!5825245 (= c!1032299 ((_ is EmptyLang!15877) r!7292))))

(declare-fun b!5825246 () Bool)

(declare-fun e!3574656 () Bool)

(declare-fun head!12317 (List!63932) C!32024)

(assert (=> b!5825246 (= e!3574656 (= (head!12317 s!2326) (c!1032237 r!7292)))))

(declare-fun b!5825247 () Bool)

(declare-fun res!2455933 () Bool)

(assert (=> b!5825247 (=> (not res!2455933) (not e!3574656))))

(declare-fun isEmpty!35676 (List!63932) Bool)

(declare-fun tail!11402 (List!63932) List!63932)

(assert (=> b!5825247 (= res!2455933 (isEmpty!35676 (tail!11402 s!2326)))))

(declare-fun bm!454904 () Bool)

(declare-fun call!454909 () Bool)

(assert (=> bm!454904 (= call!454909 (isEmpty!35676 s!2326))))

(declare-fun b!5825249 () Bool)

(declare-fun e!3574654 () Bool)

(declare-fun e!3574653 () Bool)

(assert (=> b!5825249 (= e!3574654 e!3574653)))

(declare-fun res!2455934 () Bool)

(assert (=> b!5825249 (=> (not res!2455934) (not e!3574653))))

(declare-fun lt!2302610 () Bool)

(assert (=> b!5825249 (= res!2455934 (not lt!2302610))))

(declare-fun b!5825250 () Bool)

(declare-fun res!2455932 () Bool)

(assert (=> b!5825250 (=> res!2455932 e!3574654)))

(assert (=> b!5825250 (= res!2455932 e!3574656)))

(declare-fun res!2455938 () Bool)

(assert (=> b!5825250 (=> (not res!2455938) (not e!3574656))))

(assert (=> b!5825250 (= res!2455938 lt!2302610)))

(declare-fun b!5825251 () Bool)

(assert (=> b!5825251 (= e!3574659 (not lt!2302610))))

(declare-fun b!5825252 () Bool)

(declare-fun e!3574657 () Bool)

(assert (=> b!5825252 (= e!3574657 (not (= (head!12317 s!2326) (c!1032237 r!7292))))))

(declare-fun b!5825253 () Bool)

(assert (=> b!5825253 (= e!3574653 e!3574657)))

(declare-fun res!2455935 () Bool)

(assert (=> b!5825253 (=> res!2455935 e!3574657)))

(assert (=> b!5825253 (= res!2455935 call!454909)))

(declare-fun b!5825254 () Bool)

(declare-fun res!2455931 () Bool)

(assert (=> b!5825254 (=> res!2455931 e!3574654)))

(assert (=> b!5825254 (= res!2455931 (not ((_ is ElementMatch!15877) r!7292)))))

(assert (=> b!5825254 (= e!3574659 e!3574654)))

(declare-fun b!5825255 () Bool)

(declare-fun e!3574655 () Bool)

(declare-fun nullable!5880 (Regex!15877) Bool)

(assert (=> b!5825255 (= e!3574655 (nullable!5880 r!7292))))

(declare-fun b!5825256 () Bool)

(declare-fun derivativeStep!4620 (Regex!15877 C!32024) Regex!15877)

(assert (=> b!5825256 (= e!3574655 (matchR!8060 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (tail!11402 s!2326)))))

(declare-fun b!5825257 () Bool)

(declare-fun res!2455936 () Bool)

(assert (=> b!5825257 (=> (not res!2455936) (not e!3574656))))

(assert (=> b!5825257 (= res!2455936 (not call!454909))))

(declare-fun b!5825258 () Bool)

(assert (=> b!5825258 (= e!3574658 (= lt!2302610 call!454909))))

(declare-fun d!1832596 () Bool)

(assert (=> d!1832596 e!3574658))

(declare-fun c!1032300 () Bool)

(assert (=> d!1832596 (= c!1032300 ((_ is EmptyExpr!15877) r!7292))))

(assert (=> d!1832596 (= lt!2302610 e!3574655)))

(declare-fun c!1032298 () Bool)

(assert (=> d!1832596 (= c!1032298 (isEmpty!35676 s!2326))))

(assert (=> d!1832596 (validRegex!7613 r!7292)))

(assert (=> d!1832596 (= (matchR!8060 r!7292 s!2326) lt!2302610)))

(declare-fun b!5825248 () Bool)

(declare-fun res!2455937 () Bool)

(assert (=> b!5825248 (=> res!2455937 e!3574657)))

(assert (=> b!5825248 (= res!2455937 (not (isEmpty!35676 (tail!11402 s!2326))))))

(assert (= (and d!1832596 c!1032298) b!5825255))

(assert (= (and d!1832596 (not c!1032298)) b!5825256))

(assert (= (and d!1832596 c!1032300) b!5825258))

(assert (= (and d!1832596 (not c!1032300)) b!5825245))

(assert (= (and b!5825245 c!1032299) b!5825251))

(assert (= (and b!5825245 (not c!1032299)) b!5825254))

(assert (= (and b!5825254 (not res!2455931)) b!5825250))

(assert (= (and b!5825250 res!2455938) b!5825257))

(assert (= (and b!5825257 res!2455936) b!5825247))

(assert (= (and b!5825247 res!2455933) b!5825246))

(assert (= (and b!5825250 (not res!2455932)) b!5825249))

(assert (= (and b!5825249 res!2455934) b!5825253))

(assert (= (and b!5825253 (not res!2455935)) b!5825248))

(assert (= (and b!5825248 (not res!2455937)) b!5825252))

(assert (= (or b!5825258 b!5825257 b!5825253) bm!454904))

(declare-fun m!6758150 () Bool)

(assert (=> b!5825247 m!6758150))

(assert (=> b!5825247 m!6758150))

(declare-fun m!6758152 () Bool)

(assert (=> b!5825247 m!6758152))

(declare-fun m!6758154 () Bool)

(assert (=> b!5825252 m!6758154))

(assert (=> b!5825256 m!6758154))

(assert (=> b!5825256 m!6758154))

(declare-fun m!6758156 () Bool)

(assert (=> b!5825256 m!6758156))

(assert (=> b!5825256 m!6758150))

(assert (=> b!5825256 m!6758156))

(assert (=> b!5825256 m!6758150))

(declare-fun m!6758158 () Bool)

(assert (=> b!5825256 m!6758158))

(declare-fun m!6758160 () Bool)

(assert (=> b!5825255 m!6758160))

(declare-fun m!6758162 () Bool)

(assert (=> bm!454904 m!6758162))

(assert (=> d!1832596 m!6758162))

(assert (=> d!1832596 m!6758050))

(assert (=> b!5825246 m!6758154))

(assert (=> b!5825248 m!6758150))

(assert (=> b!5825248 m!6758150))

(assert (=> b!5825248 m!6758152))

(assert (=> b!5824962 d!1832596))

(declare-fun b!5825298 () Bool)

(assert (=> b!5825298 true))

(assert (=> b!5825298 true))

(declare-fun bs!1373943 () Bool)

(declare-fun b!5825301 () Bool)

(assert (= bs!1373943 (and b!5825301 b!5825298)))

(declare-fun lambda!318800 () Int)

(declare-fun lambda!318799 () Int)

(assert (=> bs!1373943 (not (= lambda!318800 lambda!318799))))

(assert (=> b!5825301 true))

(assert (=> b!5825301 true))

(declare-fun b!5825291 () Bool)

(declare-fun e!3574680 () Bool)

(assert (=> b!5825291 (= e!3574680 (matchRSpec!2978 (regTwo!32267 r!7292) s!2326))))

(declare-fun b!5825292 () Bool)

(declare-fun c!1032309 () Bool)

(assert (=> b!5825292 (= c!1032309 ((_ is ElementMatch!15877) r!7292))))

(declare-fun e!3574681 () Bool)

(declare-fun e!3574684 () Bool)

(assert (=> b!5825292 (= e!3574681 e!3574684)))

(declare-fun b!5825293 () Bool)

(declare-fun c!1032312 () Bool)

(assert (=> b!5825293 (= c!1032312 ((_ is Union!15877) r!7292))))

(declare-fun e!3574683 () Bool)

(assert (=> b!5825293 (= e!3574684 e!3574683)))

(declare-fun b!5825294 () Bool)

(declare-fun e!3574679 () Bool)

(declare-fun call!454915 () Bool)

(assert (=> b!5825294 (= e!3574679 call!454915)))

(declare-fun b!5825295 () Bool)

(assert (=> b!5825295 (= e!3574679 e!3574681)))

(declare-fun res!2455957 () Bool)

(assert (=> b!5825295 (= res!2455957 (not ((_ is EmptyLang!15877) r!7292)))))

(assert (=> b!5825295 (=> (not res!2455957) (not e!3574681))))

(declare-fun c!1032310 () Bool)

(declare-fun bm!454909 () Bool)

(declare-fun call!454914 () Bool)

(declare-fun Exists!2955 (Int) Bool)

(assert (=> bm!454909 (= call!454914 (Exists!2955 (ite c!1032310 lambda!318799 lambda!318800)))))

(declare-fun b!5825296 () Bool)

(assert (=> b!5825296 (= e!3574683 e!3574680)))

(declare-fun res!2455956 () Bool)

(assert (=> b!5825296 (= res!2455956 (matchRSpec!2978 (regOne!32267 r!7292) s!2326))))

(assert (=> b!5825296 (=> res!2455956 e!3574680)))

(declare-fun bm!454910 () Bool)

(assert (=> bm!454910 (= call!454915 (isEmpty!35676 s!2326))))

(declare-fun d!1832598 () Bool)

(declare-fun c!1032311 () Bool)

(assert (=> d!1832598 (= c!1032311 ((_ is EmptyExpr!15877) r!7292))))

(assert (=> d!1832598 (= (matchRSpec!2978 r!7292 s!2326) e!3574679)))

(declare-fun b!5825297 () Bool)

(declare-fun e!3574682 () Bool)

(assert (=> b!5825297 (= e!3574683 e!3574682)))

(assert (=> b!5825297 (= c!1032310 ((_ is Star!15877) r!7292))))

(declare-fun e!3574678 () Bool)

(assert (=> b!5825298 (= e!3574678 call!454914)))

(declare-fun b!5825299 () Bool)

(assert (=> b!5825299 (= e!3574684 (= s!2326 (Cons!63808 (c!1032237 r!7292) Nil!63808)))))

(declare-fun b!5825300 () Bool)

(declare-fun res!2455955 () Bool)

(assert (=> b!5825300 (=> res!2455955 e!3574678)))

(assert (=> b!5825300 (= res!2455955 call!454915)))

(assert (=> b!5825300 (= e!3574682 e!3574678)))

(assert (=> b!5825301 (= e!3574682 call!454914)))

(assert (= (and d!1832598 c!1032311) b!5825294))

(assert (= (and d!1832598 (not c!1032311)) b!5825295))

(assert (= (and b!5825295 res!2455957) b!5825292))

(assert (= (and b!5825292 c!1032309) b!5825299))

(assert (= (and b!5825292 (not c!1032309)) b!5825293))

(assert (= (and b!5825293 c!1032312) b!5825296))

(assert (= (and b!5825293 (not c!1032312)) b!5825297))

(assert (= (and b!5825296 (not res!2455956)) b!5825291))

(assert (= (and b!5825297 c!1032310) b!5825300))

(assert (= (and b!5825297 (not c!1032310)) b!5825301))

(assert (= (and b!5825300 (not res!2455955)) b!5825298))

(assert (= (or b!5825298 b!5825301) bm!454909))

(assert (= (or b!5825294 b!5825300) bm!454910))

(declare-fun m!6758164 () Bool)

(assert (=> b!5825291 m!6758164))

(declare-fun m!6758166 () Bool)

(assert (=> bm!454909 m!6758166))

(declare-fun m!6758168 () Bool)

(assert (=> b!5825296 m!6758168))

(assert (=> bm!454910 m!6758162))

(assert (=> b!5824962 d!1832598))

(declare-fun d!1832600 () Bool)

(assert (=> d!1832600 (= (matchR!8060 r!7292 s!2326) (matchRSpec!2978 r!7292 s!2326))))

(declare-fun lt!2302613 () Unit!157025)

(declare-fun choose!44272 (Regex!15877 List!63932) Unit!157025)

(assert (=> d!1832600 (= lt!2302613 (choose!44272 r!7292 s!2326))))

(assert (=> d!1832600 (validRegex!7613 r!7292)))

(assert (=> d!1832600 (= (mainMatchTheorem!2978 r!7292 s!2326) lt!2302613)))

(declare-fun bs!1373944 () Bool)

(assert (= bs!1373944 d!1832600))

(assert (=> bs!1373944 m!6758042))

(assert (=> bs!1373944 m!6758044))

(declare-fun m!6758170 () Bool)

(assert (=> bs!1373944 m!6758170))

(assert (=> bs!1373944 m!6758050))

(assert (=> b!5824962 d!1832600))

(declare-fun d!1832602 () Bool)

(assert (=> d!1832602 (= (isEmpty!35673 (t!377286 zl!343)) ((_ is Nil!63807) (t!377286 zl!343)))))

(assert (=> b!5824970 d!1832602))

(declare-fun b!5825324 () Bool)

(declare-fun e!3574701 () Bool)

(declare-fun e!3574700 () Bool)

(assert (=> b!5825324 (= e!3574701 e!3574700)))

(declare-fun c!1032318 () Bool)

(assert (=> b!5825324 (= c!1032318 ((_ is Union!15877) r!7292))))

(declare-fun b!5825325 () Bool)

(declare-fun e!3574703 () Bool)

(declare-fun call!454924 () Bool)

(assert (=> b!5825325 (= e!3574703 call!454924)))

(declare-fun b!5825326 () Bool)

(declare-fun e!3574704 () Bool)

(declare-fun e!3574702 () Bool)

(assert (=> b!5825326 (= e!3574704 e!3574702)))

(declare-fun res!2455968 () Bool)

(assert (=> b!5825326 (=> (not res!2455968) (not e!3574702))))

(declare-fun call!454922 () Bool)

(assert (=> b!5825326 (= res!2455968 call!454922)))

(declare-fun bm!454917 () Bool)

(assert (=> bm!454917 (= call!454922 call!454924)))

(declare-fun b!5825327 () Bool)

(assert (=> b!5825327 (= e!3574701 e!3574703)))

(declare-fun res!2455969 () Bool)

(assert (=> b!5825327 (= res!2455969 (not (nullable!5880 (reg!16206 r!7292))))))

(assert (=> b!5825327 (=> (not res!2455969) (not e!3574703))))

(declare-fun d!1832604 () Bool)

(declare-fun res!2455972 () Bool)

(declare-fun e!3574699 () Bool)

(assert (=> d!1832604 (=> res!2455972 e!3574699)))

(assert (=> d!1832604 (= res!2455972 ((_ is ElementMatch!15877) r!7292))))

(assert (=> d!1832604 (= (validRegex!7613 r!7292) e!3574699)))

(declare-fun b!5825328 () Bool)

(declare-fun e!3574705 () Bool)

(declare-fun call!454923 () Bool)

(assert (=> b!5825328 (= e!3574705 call!454923)))

(declare-fun bm!454918 () Bool)

(assert (=> bm!454918 (= call!454923 (validRegex!7613 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))

(declare-fun b!5825329 () Bool)

(declare-fun res!2455970 () Bool)

(assert (=> b!5825329 (=> res!2455970 e!3574704)))

(assert (=> b!5825329 (= res!2455970 (not ((_ is Concat!24722) r!7292)))))

(assert (=> b!5825329 (= e!3574700 e!3574704)))

(declare-fun b!5825330 () Bool)

(declare-fun res!2455971 () Bool)

(assert (=> b!5825330 (=> (not res!2455971) (not e!3574705))))

(assert (=> b!5825330 (= res!2455971 call!454922)))

(assert (=> b!5825330 (= e!3574700 e!3574705)))

(declare-fun bm!454919 () Bool)

(declare-fun c!1032317 () Bool)

(assert (=> bm!454919 (= call!454924 (validRegex!7613 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))

(declare-fun b!5825331 () Bool)

(assert (=> b!5825331 (= e!3574699 e!3574701)))

(assert (=> b!5825331 (= c!1032317 ((_ is Star!15877) r!7292))))

(declare-fun b!5825332 () Bool)

(assert (=> b!5825332 (= e!3574702 call!454923)))

(assert (= (and d!1832604 (not res!2455972)) b!5825331))

(assert (= (and b!5825331 c!1032317) b!5825327))

(assert (= (and b!5825331 (not c!1032317)) b!5825324))

(assert (= (and b!5825327 res!2455969) b!5825325))

(assert (= (and b!5825324 c!1032318) b!5825330))

(assert (= (and b!5825324 (not c!1032318)) b!5825329))

(assert (= (and b!5825330 res!2455971) b!5825328))

(assert (= (and b!5825329 (not res!2455970)) b!5825326))

(assert (= (and b!5825326 res!2455968) b!5825332))

(assert (= (or b!5825328 b!5825332) bm!454918))

(assert (= (or b!5825330 b!5825326) bm!454917))

(assert (= (or b!5825325 bm!454917) bm!454919))

(declare-fun m!6758172 () Bool)

(assert (=> b!5825327 m!6758172))

(declare-fun m!6758174 () Bool)

(assert (=> bm!454918 m!6758174))

(declare-fun m!6758176 () Bool)

(assert (=> bm!454919 m!6758176))

(assert (=> start!596816 d!1832604))

(declare-fun bs!1373945 () Bool)

(declare-fun d!1832606 () Bool)

(assert (= bs!1373945 (and d!1832606 d!1832568)))

(declare-fun lambda!318801 () Int)

(assert (=> bs!1373945 (= lambda!318801 lambda!318794)))

(assert (=> d!1832606 (= (inv!82939 setElem!39378) (forall!14968 (exprs!5761 setElem!39378) lambda!318801))))

(declare-fun bs!1373946 () Bool)

(assert (= bs!1373946 d!1832606))

(declare-fun m!6758178 () Bool)

(assert (=> bs!1373946 m!6758178))

(assert (=> setNonEmpty!39378 d!1832606))

(declare-fun bs!1373947 () Bool)

(declare-fun d!1832608 () Bool)

(assert (= bs!1373947 (and d!1832608 d!1832568)))

(declare-fun lambda!318804 () Int)

(assert (=> bs!1373947 (= lambda!318804 lambda!318794)))

(declare-fun bs!1373948 () Bool)

(assert (= bs!1373948 (and d!1832608 d!1832606)))

(assert (=> bs!1373948 (= lambda!318804 lambda!318801)))

(declare-fun b!5825353 () Bool)

(declare-fun e!3574720 () Regex!15877)

(declare-fun e!3574719 () Regex!15877)

(assert (=> b!5825353 (= e!3574720 e!3574719)))

(declare-fun c!1032329 () Bool)

(assert (=> b!5825353 (= c!1032329 ((_ is Cons!63806) (unfocusZipperList!1298 zl!343)))))

(declare-fun b!5825354 () Bool)

(declare-fun e!3574722 () Bool)

(declare-fun isEmpty!35677 (List!63930) Bool)

(assert (=> b!5825354 (= e!3574722 (isEmpty!35677 (t!377285 (unfocusZipperList!1298 zl!343))))))

(declare-fun b!5825355 () Bool)

(assert (=> b!5825355 (= e!3574719 (Union!15877 (h!70254 (unfocusZipperList!1298 zl!343)) (generalisedUnion!1721 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5825356 () Bool)

(declare-fun e!3574723 () Bool)

(declare-fun e!3574718 () Bool)

(assert (=> b!5825356 (= e!3574723 e!3574718)))

(declare-fun c!1032328 () Bool)

(declare-fun tail!11403 (List!63930) List!63930)

(assert (=> b!5825356 (= c!1032328 (isEmpty!35677 (tail!11403 (unfocusZipperList!1298 zl!343))))))

(declare-fun b!5825357 () Bool)

(declare-fun lt!2302616 () Regex!15877)

(declare-fun isUnion!755 (Regex!15877) Bool)

(assert (=> b!5825357 (= e!3574718 (isUnion!755 lt!2302616))))

(declare-fun b!5825358 () Bool)

(assert (=> b!5825358 (= e!3574719 EmptyLang!15877)))

(declare-fun e!3574721 () Bool)

(assert (=> d!1832608 e!3574721))

(declare-fun res!2455977 () Bool)

(assert (=> d!1832608 (=> (not res!2455977) (not e!3574721))))

(assert (=> d!1832608 (= res!2455977 (validRegex!7613 lt!2302616))))

(assert (=> d!1832608 (= lt!2302616 e!3574720)))

(declare-fun c!1032330 () Bool)

(assert (=> d!1832608 (= c!1032330 e!3574722)))

(declare-fun res!2455978 () Bool)

(assert (=> d!1832608 (=> (not res!2455978) (not e!3574722))))

(assert (=> d!1832608 (= res!2455978 ((_ is Cons!63806) (unfocusZipperList!1298 zl!343)))))

(assert (=> d!1832608 (forall!14968 (unfocusZipperList!1298 zl!343) lambda!318804)))

(assert (=> d!1832608 (= (generalisedUnion!1721 (unfocusZipperList!1298 zl!343)) lt!2302616)))

(declare-fun b!5825359 () Bool)

(assert (=> b!5825359 (= e!3574721 e!3574723)))

(declare-fun c!1032327 () Bool)

(assert (=> b!5825359 (= c!1032327 (isEmpty!35677 (unfocusZipperList!1298 zl!343)))))

(declare-fun b!5825360 () Bool)

(declare-fun head!12318 (List!63930) Regex!15877)

(assert (=> b!5825360 (= e!3574718 (= lt!2302616 (head!12318 (unfocusZipperList!1298 zl!343))))))

(declare-fun b!5825361 () Bool)

(assert (=> b!5825361 (= e!3574720 (h!70254 (unfocusZipperList!1298 zl!343)))))

(declare-fun b!5825362 () Bool)

(declare-fun isEmptyLang!1325 (Regex!15877) Bool)

(assert (=> b!5825362 (= e!3574723 (isEmptyLang!1325 lt!2302616))))

(assert (= (and d!1832608 res!2455978) b!5825354))

(assert (= (and d!1832608 c!1032330) b!5825361))

(assert (= (and d!1832608 (not c!1032330)) b!5825353))

(assert (= (and b!5825353 c!1032329) b!5825355))

(assert (= (and b!5825353 (not c!1032329)) b!5825358))

(assert (= (and d!1832608 res!2455977) b!5825359))

(assert (= (and b!5825359 c!1032327) b!5825362))

(assert (= (and b!5825359 (not c!1032327)) b!5825356))

(assert (= (and b!5825356 c!1032328) b!5825360))

(assert (= (and b!5825356 (not c!1032328)) b!5825357))

(assert (=> b!5825356 m!6758038))

(declare-fun m!6758180 () Bool)

(assert (=> b!5825356 m!6758180))

(assert (=> b!5825356 m!6758180))

(declare-fun m!6758182 () Bool)

(assert (=> b!5825356 m!6758182))

(declare-fun m!6758184 () Bool)

(assert (=> d!1832608 m!6758184))

(assert (=> d!1832608 m!6758038))

(declare-fun m!6758186 () Bool)

(assert (=> d!1832608 m!6758186))

(declare-fun m!6758188 () Bool)

(assert (=> b!5825355 m!6758188))

(declare-fun m!6758190 () Bool)

(assert (=> b!5825357 m!6758190))

(declare-fun m!6758192 () Bool)

(assert (=> b!5825362 m!6758192))

(assert (=> b!5825360 m!6758038))

(declare-fun m!6758194 () Bool)

(assert (=> b!5825360 m!6758194))

(declare-fun m!6758196 () Bool)

(assert (=> b!5825354 m!6758196))

(assert (=> b!5825359 m!6758038))

(declare-fun m!6758198 () Bool)

(assert (=> b!5825359 m!6758198))

(assert (=> b!5824959 d!1832608))

(declare-fun bs!1373949 () Bool)

(declare-fun d!1832610 () Bool)

(assert (= bs!1373949 (and d!1832610 d!1832568)))

(declare-fun lambda!318807 () Int)

(assert (=> bs!1373949 (= lambda!318807 lambda!318794)))

(declare-fun bs!1373950 () Bool)

(assert (= bs!1373950 (and d!1832610 d!1832606)))

(assert (=> bs!1373950 (= lambda!318807 lambda!318801)))

(declare-fun bs!1373951 () Bool)

(assert (= bs!1373951 (and d!1832610 d!1832608)))

(assert (=> bs!1373951 (= lambda!318807 lambda!318804)))

(declare-fun lt!2302619 () List!63930)

(assert (=> d!1832610 (forall!14968 lt!2302619 lambda!318807)))

(declare-fun e!3574726 () List!63930)

(assert (=> d!1832610 (= lt!2302619 e!3574726)))

(declare-fun c!1032333 () Bool)

(assert (=> d!1832610 (= c!1032333 ((_ is Cons!63807) zl!343))))

(assert (=> d!1832610 (= (unfocusZipperList!1298 zl!343) lt!2302619)))

(declare-fun b!5825367 () Bool)

(assert (=> b!5825367 (= e!3574726 (Cons!63806 (generalisedConcat!1474 (exprs!5761 (h!70255 zl!343))) (unfocusZipperList!1298 (t!377286 zl!343))))))

(declare-fun b!5825368 () Bool)

(assert (=> b!5825368 (= e!3574726 Nil!63806)))

(assert (= (and d!1832610 c!1032333) b!5825367))

(assert (= (and d!1832610 (not c!1032333)) b!5825368))

(declare-fun m!6758200 () Bool)

(assert (=> d!1832610 m!6758200))

(assert (=> b!5825367 m!6758026))

(declare-fun m!6758202 () Bool)

(assert (=> b!5825367 m!6758202))

(assert (=> b!5824959 d!1832610))

(declare-fun bs!1373952 () Bool)

(declare-fun d!1832612 () Bool)

(assert (= bs!1373952 (and d!1832612 d!1832568)))

(declare-fun lambda!318810 () Int)

(assert (=> bs!1373952 (= lambda!318810 lambda!318794)))

(declare-fun bs!1373953 () Bool)

(assert (= bs!1373953 (and d!1832612 d!1832606)))

(assert (=> bs!1373953 (= lambda!318810 lambda!318801)))

(declare-fun bs!1373954 () Bool)

(assert (= bs!1373954 (and d!1832612 d!1832608)))

(assert (=> bs!1373954 (= lambda!318810 lambda!318804)))

(declare-fun bs!1373955 () Bool)

(assert (= bs!1373955 (and d!1832612 d!1832610)))

(assert (=> bs!1373955 (= lambda!318810 lambda!318807)))

(declare-fun b!5825389 () Bool)

(declare-fun e!3574739 () Bool)

(declare-fun lt!2302622 () Regex!15877)

(declare-fun isEmptyExpr!1316 (Regex!15877) Bool)

(assert (=> b!5825389 (= e!3574739 (isEmptyExpr!1316 lt!2302622))))

(declare-fun b!5825390 () Bool)

(declare-fun e!3574742 () Bool)

(assert (=> b!5825390 (= e!3574742 e!3574739)))

(declare-fun c!1032344 () Bool)

(assert (=> b!5825390 (= c!1032344 (isEmpty!35677 (exprs!5761 (h!70255 zl!343))))))

(declare-fun b!5825391 () Bool)

(declare-fun e!3574744 () Regex!15877)

(assert (=> b!5825391 (= e!3574744 EmptyExpr!15877)))

(assert (=> d!1832612 e!3574742))

(declare-fun res!2455984 () Bool)

(assert (=> d!1832612 (=> (not res!2455984) (not e!3574742))))

(assert (=> d!1832612 (= res!2455984 (validRegex!7613 lt!2302622))))

(declare-fun e!3574741 () Regex!15877)

(assert (=> d!1832612 (= lt!2302622 e!3574741)))

(declare-fun c!1032342 () Bool)

(declare-fun e!3574743 () Bool)

(assert (=> d!1832612 (= c!1032342 e!3574743)))

(declare-fun res!2455983 () Bool)

(assert (=> d!1832612 (=> (not res!2455983) (not e!3574743))))

(assert (=> d!1832612 (= res!2455983 ((_ is Cons!63806) (exprs!5761 (h!70255 zl!343))))))

(assert (=> d!1832612 (forall!14968 (exprs!5761 (h!70255 zl!343)) lambda!318810)))

(assert (=> d!1832612 (= (generalisedConcat!1474 (exprs!5761 (h!70255 zl!343))) lt!2302622)))

(declare-fun b!5825392 () Bool)

(declare-fun e!3574740 () Bool)

(declare-fun isConcat!839 (Regex!15877) Bool)

(assert (=> b!5825392 (= e!3574740 (isConcat!839 lt!2302622))))

(declare-fun b!5825393 () Bool)

(assert (=> b!5825393 (= e!3574741 e!3574744)))

(declare-fun c!1032345 () Bool)

(assert (=> b!5825393 (= c!1032345 ((_ is Cons!63806) (exprs!5761 (h!70255 zl!343))))))

(declare-fun b!5825394 () Bool)

(assert (=> b!5825394 (= e!3574740 (= lt!2302622 (head!12318 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5825395 () Bool)

(assert (=> b!5825395 (= e!3574744 (Concat!24722 (h!70254 (exprs!5761 (h!70255 zl!343))) (generalisedConcat!1474 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun b!5825396 () Bool)

(assert (=> b!5825396 (= e!3574741 (h!70254 (exprs!5761 (h!70255 zl!343))))))

(declare-fun b!5825397 () Bool)

(assert (=> b!5825397 (= e!3574743 (isEmpty!35677 (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5825398 () Bool)

(assert (=> b!5825398 (= e!3574739 e!3574740)))

(declare-fun c!1032343 () Bool)

(assert (=> b!5825398 (= c!1032343 (isEmpty!35677 (tail!11403 (exprs!5761 (h!70255 zl!343)))))))

(assert (= (and d!1832612 res!2455983) b!5825397))

(assert (= (and d!1832612 c!1032342) b!5825396))

(assert (= (and d!1832612 (not c!1032342)) b!5825393))

(assert (= (and b!5825393 c!1032345) b!5825395))

(assert (= (and b!5825393 (not c!1032345)) b!5825391))

(assert (= (and d!1832612 res!2455984) b!5825390))

(assert (= (and b!5825390 c!1032344) b!5825389))

(assert (= (and b!5825390 (not c!1032344)) b!5825398))

(assert (= (and b!5825398 c!1032343) b!5825394))

(assert (= (and b!5825398 (not c!1032343)) b!5825392))

(declare-fun m!6758204 () Bool)

(assert (=> b!5825390 m!6758204))

(declare-fun m!6758206 () Bool)

(assert (=> b!5825389 m!6758206))

(declare-fun m!6758208 () Bool)

(assert (=> b!5825392 m!6758208))

(declare-fun m!6758210 () Bool)

(assert (=> b!5825394 m!6758210))

(declare-fun m!6758212 () Bool)

(assert (=> b!5825397 m!6758212))

(declare-fun m!6758214 () Bool)

(assert (=> b!5825398 m!6758214))

(assert (=> b!5825398 m!6758214))

(declare-fun m!6758216 () Bool)

(assert (=> b!5825398 m!6758216))

(declare-fun m!6758218 () Bool)

(assert (=> d!1832612 m!6758218))

(declare-fun m!6758220 () Bool)

(assert (=> d!1832612 m!6758220))

(declare-fun m!6758222 () Bool)

(assert (=> b!5825395 m!6758222))

(assert (=> b!5824963 d!1832612))

(declare-fun b!5825406 () Bool)

(declare-fun e!3574750 () Bool)

(declare-fun tp!1608147 () Bool)

(assert (=> b!5825406 (= e!3574750 tp!1608147)))

(declare-fun e!3574749 () Bool)

(declare-fun tp!1608148 () Bool)

(declare-fun b!5825405 () Bool)

(assert (=> b!5825405 (= e!3574749 (and (inv!82939 (h!70255 (t!377286 zl!343))) e!3574750 tp!1608148))))

(assert (=> b!5824965 (= tp!1608080 e!3574749)))

(assert (= b!5825405 b!5825406))

(assert (= (and b!5824965 ((_ is Cons!63807) (t!377286 zl!343))) b!5825405))

(declare-fun m!6758224 () Bool)

(assert (=> b!5825405 m!6758224))

(declare-fun b!5825417 () Bool)

(declare-fun e!3574753 () Bool)

(assert (=> b!5825417 (= e!3574753 tp_is_empty!41007)))

(declare-fun b!5825418 () Bool)

(declare-fun tp!1608160 () Bool)

(declare-fun tp!1608162 () Bool)

(assert (=> b!5825418 (= e!3574753 (and tp!1608160 tp!1608162))))

(assert (=> b!5824964 (= tp!1608076 e!3574753)))

(declare-fun b!5825420 () Bool)

(declare-fun tp!1608163 () Bool)

(declare-fun tp!1608161 () Bool)

(assert (=> b!5825420 (= e!3574753 (and tp!1608163 tp!1608161))))

(declare-fun b!5825419 () Bool)

(declare-fun tp!1608159 () Bool)

(assert (=> b!5825419 (= e!3574753 tp!1608159)))

(assert (= (and b!5824964 ((_ is ElementMatch!15877) (regOne!32266 r!7292))) b!5825417))

(assert (= (and b!5824964 ((_ is Concat!24722) (regOne!32266 r!7292))) b!5825418))

(assert (= (and b!5824964 ((_ is Star!15877) (regOne!32266 r!7292))) b!5825419))

(assert (= (and b!5824964 ((_ is Union!15877) (regOne!32266 r!7292))) b!5825420))

(declare-fun b!5825421 () Bool)

(declare-fun e!3574754 () Bool)

(assert (=> b!5825421 (= e!3574754 tp_is_empty!41007)))

(declare-fun b!5825422 () Bool)

(declare-fun tp!1608165 () Bool)

(declare-fun tp!1608167 () Bool)

(assert (=> b!5825422 (= e!3574754 (and tp!1608165 tp!1608167))))

(assert (=> b!5824964 (= tp!1608078 e!3574754)))

(declare-fun b!5825424 () Bool)

(declare-fun tp!1608168 () Bool)

(declare-fun tp!1608166 () Bool)

(assert (=> b!5825424 (= e!3574754 (and tp!1608168 tp!1608166))))

(declare-fun b!5825423 () Bool)

(declare-fun tp!1608164 () Bool)

(assert (=> b!5825423 (= e!3574754 tp!1608164)))

(assert (= (and b!5824964 ((_ is ElementMatch!15877) (regTwo!32266 r!7292))) b!5825421))

(assert (= (and b!5824964 ((_ is Concat!24722) (regTwo!32266 r!7292))) b!5825422))

(assert (= (and b!5824964 ((_ is Star!15877) (regTwo!32266 r!7292))) b!5825423))

(assert (= (and b!5824964 ((_ is Union!15877) (regTwo!32266 r!7292))) b!5825424))

(declare-fun b!5825429 () Bool)

(declare-fun e!3574757 () Bool)

(declare-fun tp!1608171 () Bool)

(assert (=> b!5825429 (= e!3574757 (and tp_is_empty!41007 tp!1608171))))

(assert (=> b!5824966 (= tp!1608082 e!3574757)))

(assert (= (and b!5824966 ((_ is Cons!63808) (t!377287 s!2326))) b!5825429))

(declare-fun b!5825434 () Bool)

(declare-fun e!3574760 () Bool)

(declare-fun tp!1608176 () Bool)

(declare-fun tp!1608177 () Bool)

(assert (=> b!5825434 (= e!3574760 (and tp!1608176 tp!1608177))))

(assert (=> b!5824961 (= tp!1608077 e!3574760)))

(assert (= (and b!5824961 ((_ is Cons!63806) (exprs!5761 (h!70255 zl!343)))) b!5825434))

(declare-fun b!5825435 () Bool)

(declare-fun e!3574761 () Bool)

(declare-fun tp!1608178 () Bool)

(declare-fun tp!1608179 () Bool)

(assert (=> b!5825435 (= e!3574761 (and tp!1608178 tp!1608179))))

(assert (=> b!5824971 (= tp!1608075 e!3574761)))

(assert (= (and b!5824971 ((_ is Cons!63806) (exprs!5761 setElem!39378))) b!5825435))

(declare-fun condSetEmpty!39384 () Bool)

(assert (=> setNonEmpty!39378 (= condSetEmpty!39384 (= setRest!39378 ((as const (Array Context!10522 Bool)) false)))))

(declare-fun setRes!39384 () Bool)

(assert (=> setNonEmpty!39378 (= tp!1608081 setRes!39384)))

(declare-fun setIsEmpty!39384 () Bool)

(assert (=> setIsEmpty!39384 setRes!39384))

(declare-fun tp!1608185 () Bool)

(declare-fun setNonEmpty!39384 () Bool)

(declare-fun setElem!39384 () Context!10522)

(declare-fun e!3574764 () Bool)

(assert (=> setNonEmpty!39384 (= setRes!39384 (and tp!1608185 (inv!82939 setElem!39384) e!3574764))))

(declare-fun setRest!39384 () (InoxSet Context!10522))

(assert (=> setNonEmpty!39384 (= setRest!39378 ((_ map or) (store ((as const (Array Context!10522 Bool)) false) setElem!39384 true) setRest!39384))))

(declare-fun b!5825440 () Bool)

(declare-fun tp!1608184 () Bool)

(assert (=> b!5825440 (= e!3574764 tp!1608184)))

(assert (= (and setNonEmpty!39378 condSetEmpty!39384) setIsEmpty!39384))

(assert (= (and setNonEmpty!39378 (not condSetEmpty!39384)) setNonEmpty!39384))

(assert (= setNonEmpty!39384 b!5825440))

(declare-fun m!6758226 () Bool)

(assert (=> setNonEmpty!39384 m!6758226))

(declare-fun b!5825441 () Bool)

(declare-fun e!3574765 () Bool)

(assert (=> b!5825441 (= e!3574765 tp_is_empty!41007)))

(declare-fun b!5825442 () Bool)

(declare-fun tp!1608187 () Bool)

(declare-fun tp!1608189 () Bool)

(assert (=> b!5825442 (= e!3574765 (and tp!1608187 tp!1608189))))

(assert (=> b!5824973 (= tp!1608084 e!3574765)))

(declare-fun b!5825444 () Bool)

(declare-fun tp!1608190 () Bool)

(declare-fun tp!1608188 () Bool)

(assert (=> b!5825444 (= e!3574765 (and tp!1608190 tp!1608188))))

(declare-fun b!5825443 () Bool)

(declare-fun tp!1608186 () Bool)

(assert (=> b!5825443 (= e!3574765 tp!1608186)))

(assert (= (and b!5824973 ((_ is ElementMatch!15877) (reg!16206 r!7292))) b!5825441))

(assert (= (and b!5824973 ((_ is Concat!24722) (reg!16206 r!7292))) b!5825442))

(assert (= (and b!5824973 ((_ is Star!15877) (reg!16206 r!7292))) b!5825443))

(assert (= (and b!5824973 ((_ is Union!15877) (reg!16206 r!7292))) b!5825444))

(declare-fun b!5825445 () Bool)

(declare-fun e!3574766 () Bool)

(assert (=> b!5825445 (= e!3574766 tp_is_empty!41007)))

(declare-fun b!5825446 () Bool)

(declare-fun tp!1608192 () Bool)

(declare-fun tp!1608194 () Bool)

(assert (=> b!5825446 (= e!3574766 (and tp!1608192 tp!1608194))))

(assert (=> b!5824967 (= tp!1608079 e!3574766)))

(declare-fun b!5825448 () Bool)

(declare-fun tp!1608195 () Bool)

(declare-fun tp!1608193 () Bool)

(assert (=> b!5825448 (= e!3574766 (and tp!1608195 tp!1608193))))

(declare-fun b!5825447 () Bool)

(declare-fun tp!1608191 () Bool)

(assert (=> b!5825447 (= e!3574766 tp!1608191)))

(assert (= (and b!5824967 ((_ is ElementMatch!15877) (regOne!32267 r!7292))) b!5825445))

(assert (= (and b!5824967 ((_ is Concat!24722) (regOne!32267 r!7292))) b!5825446))

(assert (= (and b!5824967 ((_ is Star!15877) (regOne!32267 r!7292))) b!5825447))

(assert (= (and b!5824967 ((_ is Union!15877) (regOne!32267 r!7292))) b!5825448))

(declare-fun b!5825449 () Bool)

(declare-fun e!3574767 () Bool)

(assert (=> b!5825449 (= e!3574767 tp_is_empty!41007)))

(declare-fun b!5825450 () Bool)

(declare-fun tp!1608197 () Bool)

(declare-fun tp!1608199 () Bool)

(assert (=> b!5825450 (= e!3574767 (and tp!1608197 tp!1608199))))

(assert (=> b!5824967 (= tp!1608083 e!3574767)))

(declare-fun b!5825452 () Bool)

(declare-fun tp!1608200 () Bool)

(declare-fun tp!1608198 () Bool)

(assert (=> b!5825452 (= e!3574767 (and tp!1608200 tp!1608198))))

(declare-fun b!5825451 () Bool)

(declare-fun tp!1608196 () Bool)

(assert (=> b!5825451 (= e!3574767 tp!1608196)))

(assert (= (and b!5824967 ((_ is ElementMatch!15877) (regTwo!32267 r!7292))) b!5825449))

(assert (= (and b!5824967 ((_ is Concat!24722) (regTwo!32267 r!7292))) b!5825450))

(assert (= (and b!5824967 ((_ is Star!15877) (regTwo!32267 r!7292))) b!5825451))

(assert (= (and b!5824967 ((_ is Union!15877) (regTwo!32267 r!7292))) b!5825452))

(check-sat (not b!5825423) (not d!1832596) (not b!5825296) (not b!5825291) (not b!5825429) (not b!5825406) (not b!5825447) (not b!5825252) (not d!1832606) (not b!5825450) (not b!5825435) (not b!5825422) (not b!5825446) (not b!5825444) (not setNonEmpty!39384) (not b!5825452) (not b!5825327) (not b!5825362) (not b!5825451) (not b!5825248) (not b!5825354) (not b!5825418) (not d!1832600) (not b!5825443) (not bm!454918) (not d!1832592) (not b!5825246) (not b!5825434) (not bm!454909) (not b!5825389) (not b!5825360) (not d!1832612) (not b!5825357) (not b!5825405) (not bm!454910) (not b!5825394) (not b!5825356) (not b!5825397) (not d!1832594) (not b!5825424) (not b!5825255) (not b!5825420) (not b!5825392) (not b!5825395) tp_is_empty!41007 (not b!5825448) (not b!5825367) (not b!5825216) (not d!1832608) (not b!5825359) (not b!5825390) (not b!5825442) (not bm!454919) (not bm!454904) (not b!5825256) (not d!1832568) (not b!5825247) (not b!5825440) (not b!5825419) (not b!5825398) (not b!5825355) (not d!1832610))
(check-sat)
(get-model)

(declare-fun d!1832712 () Bool)

(assert (=> d!1832712 (= (head!12318 (exprs!5761 (h!70255 zl!343))) (h!70254 (exprs!5761 (h!70255 zl!343))))))

(assert (=> b!5825394 d!1832712))

(declare-fun bs!1374016 () Bool)

(declare-fun d!1832714 () Bool)

(assert (= bs!1374016 (and d!1832714 d!1832568)))

(declare-fun lambda!318820 () Int)

(assert (=> bs!1374016 (= lambda!318820 lambda!318794)))

(declare-fun bs!1374017 () Bool)

(assert (= bs!1374017 (and d!1832714 d!1832610)))

(assert (=> bs!1374017 (= lambda!318820 lambda!318807)))

(declare-fun bs!1374018 () Bool)

(assert (= bs!1374018 (and d!1832714 d!1832612)))

(assert (=> bs!1374018 (= lambda!318820 lambda!318810)))

(declare-fun bs!1374019 () Bool)

(assert (= bs!1374019 (and d!1832714 d!1832606)))

(assert (=> bs!1374019 (= lambda!318820 lambda!318801)))

(declare-fun bs!1374020 () Bool)

(assert (= bs!1374020 (and d!1832714 d!1832608)))

(assert (=> bs!1374020 (= lambda!318820 lambda!318804)))

(declare-fun b!5825737 () Bool)

(declare-fun e!3574919 () Bool)

(declare-fun lt!2302630 () Regex!15877)

(assert (=> b!5825737 (= e!3574919 (isEmptyExpr!1316 lt!2302630))))

(declare-fun b!5825738 () Bool)

(declare-fun e!3574922 () Bool)

(assert (=> b!5825738 (= e!3574922 e!3574919)))

(declare-fun c!1032396 () Bool)

(assert (=> b!5825738 (= c!1032396 (isEmpty!35677 (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5825739 () Bool)

(declare-fun e!3574924 () Regex!15877)

(assert (=> b!5825739 (= e!3574924 EmptyExpr!15877)))

(assert (=> d!1832714 e!3574922))

(declare-fun res!2456055 () Bool)

(assert (=> d!1832714 (=> (not res!2456055) (not e!3574922))))

(assert (=> d!1832714 (= res!2456055 (validRegex!7613 lt!2302630))))

(declare-fun e!3574921 () Regex!15877)

(assert (=> d!1832714 (= lt!2302630 e!3574921)))

(declare-fun c!1032394 () Bool)

(declare-fun e!3574923 () Bool)

(assert (=> d!1832714 (= c!1032394 e!3574923)))

(declare-fun res!2456054 () Bool)

(assert (=> d!1832714 (=> (not res!2456054) (not e!3574923))))

(assert (=> d!1832714 (= res!2456054 ((_ is Cons!63806) (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> d!1832714 (forall!14968 (t!377285 (exprs!5761 (h!70255 zl!343))) lambda!318820)))

(assert (=> d!1832714 (= (generalisedConcat!1474 (t!377285 (exprs!5761 (h!70255 zl!343)))) lt!2302630)))

(declare-fun b!5825740 () Bool)

(declare-fun e!3574920 () Bool)

(assert (=> b!5825740 (= e!3574920 (isConcat!839 lt!2302630))))

(declare-fun b!5825741 () Bool)

(assert (=> b!5825741 (= e!3574921 e!3574924)))

(declare-fun c!1032397 () Bool)

(assert (=> b!5825741 (= c!1032397 ((_ is Cons!63806) (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5825742 () Bool)

(assert (=> b!5825742 (= e!3574920 (= lt!2302630 (head!12318 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun b!5825743 () Bool)

(assert (=> b!5825743 (= e!3574924 (Concat!24722 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343)))) (generalisedConcat!1474 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))))))))

(declare-fun b!5825744 () Bool)

(assert (=> b!5825744 (= e!3574921 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5825745 () Bool)

(assert (=> b!5825745 (= e!3574923 (isEmpty!35677 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun b!5825746 () Bool)

(assert (=> b!5825746 (= e!3574919 e!3574920)))

(declare-fun c!1032395 () Bool)

(assert (=> b!5825746 (= c!1032395 (isEmpty!35677 (tail!11403 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(assert (= (and d!1832714 res!2456054) b!5825745))

(assert (= (and d!1832714 c!1032394) b!5825744))

(assert (= (and d!1832714 (not c!1032394)) b!5825741))

(assert (= (and b!5825741 c!1032397) b!5825743))

(assert (= (and b!5825741 (not c!1032397)) b!5825739))

(assert (= (and d!1832714 res!2456055) b!5825738))

(assert (= (and b!5825738 c!1032396) b!5825737))

(assert (= (and b!5825738 (not c!1032396)) b!5825746))

(assert (= (and b!5825746 c!1032395) b!5825742))

(assert (= (and b!5825746 (not c!1032395)) b!5825740))

(assert (=> b!5825738 m!6758212))

(declare-fun m!6758390 () Bool)

(assert (=> b!5825737 m!6758390))

(declare-fun m!6758392 () Bool)

(assert (=> b!5825740 m!6758392))

(declare-fun m!6758394 () Bool)

(assert (=> b!5825742 m!6758394))

(declare-fun m!6758396 () Bool)

(assert (=> b!5825745 m!6758396))

(declare-fun m!6758398 () Bool)

(assert (=> b!5825746 m!6758398))

(assert (=> b!5825746 m!6758398))

(declare-fun m!6758400 () Bool)

(assert (=> b!5825746 m!6758400))

(declare-fun m!6758402 () Bool)

(assert (=> d!1832714 m!6758402))

(declare-fun m!6758404 () Bool)

(assert (=> d!1832714 m!6758404))

(declare-fun m!6758406 () Bool)

(assert (=> b!5825743 m!6758406))

(assert (=> b!5825395 d!1832714))

(declare-fun d!1832716 () Bool)

(declare-fun choose!44274 (Int) Bool)

(assert (=> d!1832716 (= (Exists!2955 (ite c!1032310 lambda!318799 lambda!318800)) (choose!44274 (ite c!1032310 lambda!318799 lambda!318800)))))

(declare-fun bs!1374021 () Bool)

(assert (= bs!1374021 d!1832716))

(declare-fun m!6758408 () Bool)

(assert (=> bs!1374021 m!6758408))

(assert (=> bm!454909 d!1832716))

(declare-fun d!1832718 () Bool)

(declare-fun res!2456060 () Bool)

(declare-fun e!3574929 () Bool)

(assert (=> d!1832718 (=> res!2456060 e!3574929)))

(assert (=> d!1832718 (= res!2456060 ((_ is Nil!63806) (exprs!5761 setElem!39378)))))

(assert (=> d!1832718 (= (forall!14968 (exprs!5761 setElem!39378) lambda!318801) e!3574929)))

(declare-fun b!5825751 () Bool)

(declare-fun e!3574930 () Bool)

(assert (=> b!5825751 (= e!3574929 e!3574930)))

(declare-fun res!2456061 () Bool)

(assert (=> b!5825751 (=> (not res!2456061) (not e!3574930))))

(declare-fun dynLambda!24970 (Int Regex!15877) Bool)

(assert (=> b!5825751 (= res!2456061 (dynLambda!24970 lambda!318801 (h!70254 (exprs!5761 setElem!39378))))))

(declare-fun b!5825752 () Bool)

(assert (=> b!5825752 (= e!3574930 (forall!14968 (t!377285 (exprs!5761 setElem!39378)) lambda!318801))))

(assert (= (and d!1832718 (not res!2456060)) b!5825751))

(assert (= (and b!5825751 res!2456061) b!5825752))

(declare-fun b_lambda!219601 () Bool)

(assert (=> (not b_lambda!219601) (not b!5825751)))

(declare-fun m!6758410 () Bool)

(assert (=> b!5825751 m!6758410))

(declare-fun m!6758412 () Bool)

(assert (=> b!5825752 m!6758412))

(assert (=> d!1832606 d!1832718))

(declare-fun d!1832720 () Bool)

(assert (=> d!1832720 (= (isEmpty!35676 s!2326) ((_ is Nil!63808) s!2326))))

(assert (=> bm!454904 d!1832720))

(declare-fun d!1832722 () Bool)

(assert (=> d!1832722 (= (head!12318 (unfocusZipperList!1298 zl!343)) (h!70254 (unfocusZipperList!1298 zl!343)))))

(assert (=> b!5825360 d!1832722))

(declare-fun bs!1374022 () Bool)

(declare-fun b!5825760 () Bool)

(assert (= bs!1374022 (and b!5825760 b!5825298)))

(declare-fun lambda!318821 () Int)

(assert (=> bs!1374022 (= (and (= (reg!16206 (regTwo!32267 r!7292)) (reg!16206 r!7292)) (= (regTwo!32267 r!7292) r!7292)) (= lambda!318821 lambda!318799))))

(declare-fun bs!1374023 () Bool)

(assert (= bs!1374023 (and b!5825760 b!5825301)))

(assert (=> bs!1374023 (not (= lambda!318821 lambda!318800))))

(assert (=> b!5825760 true))

(assert (=> b!5825760 true))

(declare-fun bs!1374024 () Bool)

(declare-fun b!5825763 () Bool)

(assert (= bs!1374024 (and b!5825763 b!5825298)))

(declare-fun lambda!318822 () Int)

(assert (=> bs!1374024 (not (= lambda!318822 lambda!318799))))

(declare-fun bs!1374025 () Bool)

(assert (= bs!1374025 (and b!5825763 b!5825301)))

(assert (=> bs!1374025 (= (and (= (regOne!32266 (regTwo!32267 r!7292)) (regOne!32266 r!7292)) (= (regTwo!32266 (regTwo!32267 r!7292)) (regTwo!32266 r!7292))) (= lambda!318822 lambda!318800))))

(declare-fun bs!1374026 () Bool)

(assert (= bs!1374026 (and b!5825763 b!5825760)))

(assert (=> bs!1374026 (not (= lambda!318822 lambda!318821))))

(assert (=> b!5825763 true))

(assert (=> b!5825763 true))

(declare-fun b!5825753 () Bool)

(declare-fun e!3574933 () Bool)

(assert (=> b!5825753 (= e!3574933 (matchRSpec!2978 (regTwo!32267 (regTwo!32267 r!7292)) s!2326))))

(declare-fun b!5825754 () Bool)

(declare-fun c!1032398 () Bool)

(assert (=> b!5825754 (= c!1032398 ((_ is ElementMatch!15877) (regTwo!32267 r!7292)))))

(declare-fun e!3574934 () Bool)

(declare-fun e!3574937 () Bool)

(assert (=> b!5825754 (= e!3574934 e!3574937)))

(declare-fun b!5825755 () Bool)

(declare-fun c!1032401 () Bool)

(assert (=> b!5825755 (= c!1032401 ((_ is Union!15877) (regTwo!32267 r!7292)))))

(declare-fun e!3574936 () Bool)

(assert (=> b!5825755 (= e!3574937 e!3574936)))

(declare-fun b!5825756 () Bool)

(declare-fun e!3574932 () Bool)

(declare-fun call!454958 () Bool)

(assert (=> b!5825756 (= e!3574932 call!454958)))

(declare-fun b!5825757 () Bool)

(assert (=> b!5825757 (= e!3574932 e!3574934)))

(declare-fun res!2456064 () Bool)

(assert (=> b!5825757 (= res!2456064 (not ((_ is EmptyLang!15877) (regTwo!32267 r!7292))))))

(assert (=> b!5825757 (=> (not res!2456064) (not e!3574934))))

(declare-fun bm!454952 () Bool)

(declare-fun call!454957 () Bool)

(declare-fun c!1032399 () Bool)

(assert (=> bm!454952 (= call!454957 (Exists!2955 (ite c!1032399 lambda!318821 lambda!318822)))))

(declare-fun b!5825758 () Bool)

(assert (=> b!5825758 (= e!3574936 e!3574933)))

(declare-fun res!2456063 () Bool)

(assert (=> b!5825758 (= res!2456063 (matchRSpec!2978 (regOne!32267 (regTwo!32267 r!7292)) s!2326))))

(assert (=> b!5825758 (=> res!2456063 e!3574933)))

(declare-fun bm!454953 () Bool)

(assert (=> bm!454953 (= call!454958 (isEmpty!35676 s!2326))))

(declare-fun d!1832724 () Bool)

(declare-fun c!1032400 () Bool)

(assert (=> d!1832724 (= c!1032400 ((_ is EmptyExpr!15877) (regTwo!32267 r!7292)))))

(assert (=> d!1832724 (= (matchRSpec!2978 (regTwo!32267 r!7292) s!2326) e!3574932)))

(declare-fun b!5825759 () Bool)

(declare-fun e!3574935 () Bool)

(assert (=> b!5825759 (= e!3574936 e!3574935)))

(assert (=> b!5825759 (= c!1032399 ((_ is Star!15877) (regTwo!32267 r!7292)))))

(declare-fun e!3574931 () Bool)

(assert (=> b!5825760 (= e!3574931 call!454957)))

(declare-fun b!5825761 () Bool)

(assert (=> b!5825761 (= e!3574937 (= s!2326 (Cons!63808 (c!1032237 (regTwo!32267 r!7292)) Nil!63808)))))

(declare-fun b!5825762 () Bool)

(declare-fun res!2456062 () Bool)

(assert (=> b!5825762 (=> res!2456062 e!3574931)))

(assert (=> b!5825762 (= res!2456062 call!454958)))

(assert (=> b!5825762 (= e!3574935 e!3574931)))

(assert (=> b!5825763 (= e!3574935 call!454957)))

(assert (= (and d!1832724 c!1032400) b!5825756))

(assert (= (and d!1832724 (not c!1032400)) b!5825757))

(assert (= (and b!5825757 res!2456064) b!5825754))

(assert (= (and b!5825754 c!1032398) b!5825761))

(assert (= (and b!5825754 (not c!1032398)) b!5825755))

(assert (= (and b!5825755 c!1032401) b!5825758))

(assert (= (and b!5825755 (not c!1032401)) b!5825759))

(assert (= (and b!5825758 (not res!2456063)) b!5825753))

(assert (= (and b!5825759 c!1032399) b!5825762))

(assert (= (and b!5825759 (not c!1032399)) b!5825763))

(assert (= (and b!5825762 (not res!2456062)) b!5825760))

(assert (= (or b!5825760 b!5825763) bm!454952))

(assert (= (or b!5825756 b!5825762) bm!454953))

(declare-fun m!6758414 () Bool)

(assert (=> b!5825753 m!6758414))

(declare-fun m!6758416 () Bool)

(assert (=> bm!454952 m!6758416))

(declare-fun m!6758418 () Bool)

(assert (=> b!5825758 m!6758418))

(assert (=> bm!454953 m!6758162))

(assert (=> b!5825291 d!1832724))

(declare-fun d!1832726 () Bool)

(assert (=> d!1832726 (= (isEmpty!35676 (tail!11402 s!2326)) ((_ is Nil!63808) (tail!11402 s!2326)))))

(assert (=> b!5825248 d!1832726))

(declare-fun d!1832728 () Bool)

(assert (=> d!1832728 (= (tail!11402 s!2326) (t!377287 s!2326))))

(assert (=> b!5825248 d!1832728))

(declare-fun d!1832730 () Bool)

(assert (=> d!1832730 (= (isConcat!839 lt!2302622) ((_ is Concat!24722) lt!2302622))))

(assert (=> b!5825392 d!1832730))

(declare-fun d!1832732 () Bool)

(assert (=> d!1832732 (= (isEmptyLang!1325 lt!2302616) ((_ is EmptyLang!15877) lt!2302616))))

(assert (=> b!5825362 d!1832732))

(declare-fun d!1832734 () Bool)

(declare-fun nullableFct!1886 (Regex!15877) Bool)

(assert (=> d!1832734 (= (nullable!5880 r!7292) (nullableFct!1886 r!7292))))

(declare-fun bs!1374027 () Bool)

(assert (= bs!1374027 d!1832734))

(declare-fun m!6758420 () Bool)

(assert (=> bs!1374027 m!6758420))

(assert (=> b!5825255 d!1832734))

(assert (=> d!1832596 d!1832720))

(assert (=> d!1832596 d!1832604))

(declare-fun b!5825764 () Bool)

(declare-fun e!3574943 () Bool)

(declare-fun e!3574944 () Bool)

(assert (=> b!5825764 (= e!3574943 e!3574944)))

(declare-fun c!1032403 () Bool)

(assert (=> b!5825764 (= c!1032403 ((_ is EmptyLang!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(declare-fun b!5825765 () Bool)

(declare-fun e!3574941 () Bool)

(assert (=> b!5825765 (= e!3574941 (= (head!12317 (tail!11402 s!2326)) (c!1032237 (derivativeStep!4620 r!7292 (head!12317 s!2326)))))))

(declare-fun b!5825766 () Bool)

(declare-fun res!2456067 () Bool)

(assert (=> b!5825766 (=> (not res!2456067) (not e!3574941))))

(assert (=> b!5825766 (= res!2456067 (isEmpty!35676 (tail!11402 (tail!11402 s!2326))))))

(declare-fun bm!454954 () Bool)

(declare-fun call!454959 () Bool)

(assert (=> bm!454954 (= call!454959 (isEmpty!35676 (tail!11402 s!2326)))))

(declare-fun b!5825768 () Bool)

(declare-fun e!3574939 () Bool)

(declare-fun e!3574938 () Bool)

(assert (=> b!5825768 (= e!3574939 e!3574938)))

(declare-fun res!2456068 () Bool)

(assert (=> b!5825768 (=> (not res!2456068) (not e!3574938))))

(declare-fun lt!2302631 () Bool)

(assert (=> b!5825768 (= res!2456068 (not lt!2302631))))

(declare-fun b!5825769 () Bool)

(declare-fun res!2456066 () Bool)

(assert (=> b!5825769 (=> res!2456066 e!3574939)))

(assert (=> b!5825769 (= res!2456066 e!3574941)))

(declare-fun res!2456072 () Bool)

(assert (=> b!5825769 (=> (not res!2456072) (not e!3574941))))

(assert (=> b!5825769 (= res!2456072 lt!2302631)))

(declare-fun b!5825770 () Bool)

(assert (=> b!5825770 (= e!3574944 (not lt!2302631))))

(declare-fun b!5825771 () Bool)

(declare-fun e!3574942 () Bool)

(assert (=> b!5825771 (= e!3574942 (not (= (head!12317 (tail!11402 s!2326)) (c!1032237 (derivativeStep!4620 r!7292 (head!12317 s!2326))))))))

(declare-fun b!5825772 () Bool)

(assert (=> b!5825772 (= e!3574938 e!3574942)))

(declare-fun res!2456069 () Bool)

(assert (=> b!5825772 (=> res!2456069 e!3574942)))

(assert (=> b!5825772 (= res!2456069 call!454959)))

(declare-fun b!5825773 () Bool)

(declare-fun res!2456065 () Bool)

(assert (=> b!5825773 (=> res!2456065 e!3574939)))

(assert (=> b!5825773 (= res!2456065 (not ((_ is ElementMatch!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326)))))))

(assert (=> b!5825773 (= e!3574944 e!3574939)))

(declare-fun b!5825774 () Bool)

(declare-fun e!3574940 () Bool)

(assert (=> b!5825774 (= e!3574940 (nullable!5880 (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(declare-fun b!5825775 () Bool)

(assert (=> b!5825775 (= e!3574940 (matchR!8060 (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326))) (tail!11402 (tail!11402 s!2326))))))

(declare-fun b!5825776 () Bool)

(declare-fun res!2456070 () Bool)

(assert (=> b!5825776 (=> (not res!2456070) (not e!3574941))))

(assert (=> b!5825776 (= res!2456070 (not call!454959))))

(declare-fun b!5825777 () Bool)

(assert (=> b!5825777 (= e!3574943 (= lt!2302631 call!454959))))

(declare-fun d!1832736 () Bool)

(assert (=> d!1832736 e!3574943))

(declare-fun c!1032404 () Bool)

(assert (=> d!1832736 (= c!1032404 ((_ is EmptyExpr!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(assert (=> d!1832736 (= lt!2302631 e!3574940)))

(declare-fun c!1032402 () Bool)

(assert (=> d!1832736 (= c!1032402 (isEmpty!35676 (tail!11402 s!2326)))))

(assert (=> d!1832736 (validRegex!7613 (derivativeStep!4620 r!7292 (head!12317 s!2326)))))

(assert (=> d!1832736 (= (matchR!8060 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (tail!11402 s!2326)) lt!2302631)))

(declare-fun b!5825767 () Bool)

(declare-fun res!2456071 () Bool)

(assert (=> b!5825767 (=> res!2456071 e!3574942)))

(assert (=> b!5825767 (= res!2456071 (not (isEmpty!35676 (tail!11402 (tail!11402 s!2326)))))))

(assert (= (and d!1832736 c!1032402) b!5825774))

(assert (= (and d!1832736 (not c!1032402)) b!5825775))

(assert (= (and d!1832736 c!1032404) b!5825777))

(assert (= (and d!1832736 (not c!1032404)) b!5825764))

(assert (= (and b!5825764 c!1032403) b!5825770))

(assert (= (and b!5825764 (not c!1032403)) b!5825773))

(assert (= (and b!5825773 (not res!2456065)) b!5825769))

(assert (= (and b!5825769 res!2456072) b!5825776))

(assert (= (and b!5825776 res!2456070) b!5825766))

(assert (= (and b!5825766 res!2456067) b!5825765))

(assert (= (and b!5825769 (not res!2456066)) b!5825768))

(assert (= (and b!5825768 res!2456068) b!5825772))

(assert (= (and b!5825772 (not res!2456069)) b!5825767))

(assert (= (and b!5825767 (not res!2456071)) b!5825771))

(assert (= (or b!5825777 b!5825776 b!5825772) bm!454954))

(assert (=> b!5825766 m!6758150))

(declare-fun m!6758422 () Bool)

(assert (=> b!5825766 m!6758422))

(assert (=> b!5825766 m!6758422))

(declare-fun m!6758424 () Bool)

(assert (=> b!5825766 m!6758424))

(assert (=> b!5825771 m!6758150))

(declare-fun m!6758426 () Bool)

(assert (=> b!5825771 m!6758426))

(assert (=> b!5825775 m!6758150))

(assert (=> b!5825775 m!6758426))

(assert (=> b!5825775 m!6758156))

(assert (=> b!5825775 m!6758426))

(declare-fun m!6758428 () Bool)

(assert (=> b!5825775 m!6758428))

(assert (=> b!5825775 m!6758150))

(assert (=> b!5825775 m!6758422))

(assert (=> b!5825775 m!6758428))

(assert (=> b!5825775 m!6758422))

(declare-fun m!6758430 () Bool)

(assert (=> b!5825775 m!6758430))

(assert (=> b!5825774 m!6758156))

(declare-fun m!6758432 () Bool)

(assert (=> b!5825774 m!6758432))

(assert (=> bm!454954 m!6758150))

(assert (=> bm!454954 m!6758152))

(assert (=> d!1832736 m!6758150))

(assert (=> d!1832736 m!6758152))

(assert (=> d!1832736 m!6758156))

(declare-fun m!6758434 () Bool)

(assert (=> d!1832736 m!6758434))

(assert (=> b!5825765 m!6758150))

(assert (=> b!5825765 m!6758426))

(assert (=> b!5825767 m!6758150))

(assert (=> b!5825767 m!6758422))

(assert (=> b!5825767 m!6758422))

(assert (=> b!5825767 m!6758424))

(assert (=> b!5825256 d!1832736))

(declare-fun call!454970 () Regex!15877)

(declare-fun b!5825798 () Bool)

(declare-fun call!454971 () Regex!15877)

(declare-fun e!3574956 () Regex!15877)

(assert (=> b!5825798 (= e!3574956 (Union!15877 (Concat!24722 call!454971 (regTwo!32266 r!7292)) call!454970))))

(declare-fun bm!454963 () Bool)

(declare-fun c!1032419 () Bool)

(assert (=> bm!454963 (= call!454971 (derivativeStep!4620 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)) (head!12317 s!2326)))))

(declare-fun bm!454964 () Bool)

(declare-fun call!454968 () Regex!15877)

(declare-fun call!454969 () Regex!15877)

(assert (=> bm!454964 (= call!454968 call!454969)))

(declare-fun b!5825799 () Bool)

(assert (=> b!5825799 (= e!3574956 (Union!15877 (Concat!24722 call!454970 (regTwo!32266 r!7292)) EmptyLang!15877))))

(declare-fun b!5825800 () Bool)

(declare-fun c!1032416 () Bool)

(assert (=> b!5825800 (= c!1032416 (nullable!5880 (regOne!32266 r!7292)))))

(declare-fun e!3574959 () Regex!15877)

(assert (=> b!5825800 (= e!3574959 e!3574956)))

(declare-fun d!1832738 () Bool)

(declare-fun lt!2302634 () Regex!15877)

(assert (=> d!1832738 (validRegex!7613 lt!2302634)))

(declare-fun e!3574957 () Regex!15877)

(assert (=> d!1832738 (= lt!2302634 e!3574957)))

(declare-fun c!1032417 () Bool)

(assert (=> d!1832738 (= c!1032417 (or ((_ is EmptyExpr!15877) r!7292) ((_ is EmptyLang!15877) r!7292)))))

(assert (=> d!1832738 (validRegex!7613 r!7292)))

(assert (=> d!1832738 (= (derivativeStep!4620 r!7292 (head!12317 s!2326)) lt!2302634)))

(declare-fun b!5825801 () Bool)

(declare-fun e!3574955 () Regex!15877)

(assert (=> b!5825801 (= e!3574955 (ite (= (head!12317 s!2326) (c!1032237 r!7292)) EmptyExpr!15877 EmptyLang!15877))))

(declare-fun b!5825802 () Bool)

(declare-fun e!3574958 () Regex!15877)

(assert (=> b!5825802 (= e!3574958 e!3574959)))

(declare-fun c!1032415 () Bool)

(assert (=> b!5825802 (= c!1032415 ((_ is Star!15877) r!7292))))

(declare-fun b!5825803 () Bool)

(assert (=> b!5825803 (= e!3574957 EmptyLang!15877)))

(declare-fun b!5825804 () Bool)

(assert (=> b!5825804 (= e!3574959 (Concat!24722 call!454968 r!7292))))

(declare-fun b!5825805 () Bool)

(assert (=> b!5825805 (= e!3574957 e!3574955)))

(declare-fun c!1032418 () Bool)

(assert (=> b!5825805 (= c!1032418 ((_ is ElementMatch!15877) r!7292))))

(declare-fun bm!454965 () Bool)

(assert (=> bm!454965 (= call!454970 call!454968)))

(declare-fun bm!454966 () Bool)

(assert (=> bm!454966 (= call!454969 (derivativeStep!4620 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))) (head!12317 s!2326)))))

(declare-fun b!5825806 () Bool)

(assert (=> b!5825806 (= c!1032419 ((_ is Union!15877) r!7292))))

(assert (=> b!5825806 (= e!3574955 e!3574958)))

(declare-fun b!5825807 () Bool)

(assert (=> b!5825807 (= e!3574958 (Union!15877 call!454971 call!454969))))

(assert (= (and d!1832738 c!1032417) b!5825803))

(assert (= (and d!1832738 (not c!1032417)) b!5825805))

(assert (= (and b!5825805 c!1032418) b!5825801))

(assert (= (and b!5825805 (not c!1032418)) b!5825806))

(assert (= (and b!5825806 c!1032419) b!5825807))

(assert (= (and b!5825806 (not c!1032419)) b!5825802))

(assert (= (and b!5825802 c!1032415) b!5825804))

(assert (= (and b!5825802 (not c!1032415)) b!5825800))

(assert (= (and b!5825800 c!1032416) b!5825798))

(assert (= (and b!5825800 (not c!1032416)) b!5825799))

(assert (= (or b!5825798 b!5825799) bm!454965))

(assert (= (or b!5825804 bm!454965) bm!454964))

(assert (= (or b!5825807 bm!454964) bm!454966))

(assert (= (or b!5825807 b!5825798) bm!454963))

(assert (=> bm!454963 m!6758154))

(declare-fun m!6758436 () Bool)

(assert (=> bm!454963 m!6758436))

(declare-fun m!6758438 () Bool)

(assert (=> b!5825800 m!6758438))

(declare-fun m!6758440 () Bool)

(assert (=> d!1832738 m!6758440))

(assert (=> d!1832738 m!6758050))

(assert (=> bm!454966 m!6758154))

(declare-fun m!6758442 () Bool)

(assert (=> bm!454966 m!6758442))

(assert (=> b!5825256 d!1832738))

(declare-fun d!1832740 () Bool)

(assert (=> d!1832740 (= (head!12317 s!2326) (h!70256 s!2326))))

(assert (=> b!5825256 d!1832740))

(assert (=> b!5825256 d!1832728))

(assert (=> b!5825367 d!1832612))

(declare-fun bs!1374028 () Bool)

(declare-fun d!1832742 () Bool)

(assert (= bs!1374028 (and d!1832742 d!1832568)))

(declare-fun lambda!318823 () Int)

(assert (=> bs!1374028 (= lambda!318823 lambda!318794)))

(declare-fun bs!1374029 () Bool)

(assert (= bs!1374029 (and d!1832742 d!1832610)))

(assert (=> bs!1374029 (= lambda!318823 lambda!318807)))

(declare-fun bs!1374030 () Bool)

(assert (= bs!1374030 (and d!1832742 d!1832612)))

(assert (=> bs!1374030 (= lambda!318823 lambda!318810)))

(declare-fun bs!1374031 () Bool)

(assert (= bs!1374031 (and d!1832742 d!1832606)))

(assert (=> bs!1374031 (= lambda!318823 lambda!318801)))

(declare-fun bs!1374032 () Bool)

(assert (= bs!1374032 (and d!1832742 d!1832714)))

(assert (=> bs!1374032 (= lambda!318823 lambda!318820)))

(declare-fun bs!1374033 () Bool)

(assert (= bs!1374033 (and d!1832742 d!1832608)))

(assert (=> bs!1374033 (= lambda!318823 lambda!318804)))

(declare-fun lt!2302635 () List!63930)

(assert (=> d!1832742 (forall!14968 lt!2302635 lambda!318823)))

(declare-fun e!3574960 () List!63930)

(assert (=> d!1832742 (= lt!2302635 e!3574960)))

(declare-fun c!1032420 () Bool)

(assert (=> d!1832742 (= c!1032420 ((_ is Cons!63807) (t!377286 zl!343)))))

(assert (=> d!1832742 (= (unfocusZipperList!1298 (t!377286 zl!343)) lt!2302635)))

(declare-fun b!5825808 () Bool)

(assert (=> b!5825808 (= e!3574960 (Cons!63806 (generalisedConcat!1474 (exprs!5761 (h!70255 (t!377286 zl!343)))) (unfocusZipperList!1298 (t!377286 (t!377286 zl!343)))))))

(declare-fun b!5825809 () Bool)

(assert (=> b!5825809 (= e!3574960 Nil!63806)))

(assert (= (and d!1832742 c!1032420) b!5825808))

(assert (= (and d!1832742 (not c!1032420)) b!5825809))

(declare-fun m!6758444 () Bool)

(assert (=> d!1832742 m!6758444))

(declare-fun m!6758446 () Bool)

(assert (=> b!5825808 m!6758446))

(declare-fun m!6758448 () Bool)

(assert (=> b!5825808 m!6758448))

(assert (=> b!5825367 d!1832742))

(assert (=> b!5825252 d!1832740))

(declare-fun bs!1374034 () Bool)

(declare-fun d!1832744 () Bool)

(assert (= bs!1374034 (and d!1832744 d!1832568)))

(declare-fun lambda!318824 () Int)

(assert (=> bs!1374034 (= lambda!318824 lambda!318794)))

(declare-fun bs!1374035 () Bool)

(assert (= bs!1374035 (and d!1832744 d!1832610)))

(assert (=> bs!1374035 (= lambda!318824 lambda!318807)))

(declare-fun bs!1374036 () Bool)

(assert (= bs!1374036 (and d!1832744 d!1832612)))

(assert (=> bs!1374036 (= lambda!318824 lambda!318810)))

(declare-fun bs!1374037 () Bool)

(assert (= bs!1374037 (and d!1832744 d!1832742)))

(assert (=> bs!1374037 (= lambda!318824 lambda!318823)))

(declare-fun bs!1374038 () Bool)

(assert (= bs!1374038 (and d!1832744 d!1832606)))

(assert (=> bs!1374038 (= lambda!318824 lambda!318801)))

(declare-fun bs!1374039 () Bool)

(assert (= bs!1374039 (and d!1832744 d!1832714)))

(assert (=> bs!1374039 (= lambda!318824 lambda!318820)))

(declare-fun bs!1374040 () Bool)

(assert (= bs!1374040 (and d!1832744 d!1832608)))

(assert (=> bs!1374040 (= lambda!318824 lambda!318804)))

(assert (=> d!1832744 (= (inv!82939 setElem!39384) (forall!14968 (exprs!5761 setElem!39384) lambda!318824))))

(declare-fun bs!1374041 () Bool)

(assert (= bs!1374041 d!1832744))

(declare-fun m!6758450 () Bool)

(assert (=> bs!1374041 m!6758450))

(assert (=> setNonEmpty!39384 d!1832744))

(declare-fun d!1832746 () Bool)

(assert (=> d!1832746 (= (isEmpty!35677 (t!377285 (exprs!5761 (h!70255 zl!343)))) ((_ is Nil!63806) (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> b!5825397 d!1832746))

(declare-fun d!1832748 () Bool)

(declare-fun res!2456073 () Bool)

(declare-fun e!3574961 () Bool)

(assert (=> d!1832748 (=> res!2456073 e!3574961)))

(assert (=> d!1832748 (= res!2456073 ((_ is Nil!63806) lt!2302619))))

(assert (=> d!1832748 (= (forall!14968 lt!2302619 lambda!318807) e!3574961)))

(declare-fun b!5825810 () Bool)

(declare-fun e!3574962 () Bool)

(assert (=> b!5825810 (= e!3574961 e!3574962)))

(declare-fun res!2456074 () Bool)

(assert (=> b!5825810 (=> (not res!2456074) (not e!3574962))))

(assert (=> b!5825810 (= res!2456074 (dynLambda!24970 lambda!318807 (h!70254 lt!2302619)))))

(declare-fun b!5825811 () Bool)

(assert (=> b!5825811 (= e!3574962 (forall!14968 (t!377285 lt!2302619) lambda!318807))))

(assert (= (and d!1832748 (not res!2456073)) b!5825810))

(assert (= (and b!5825810 res!2456074) b!5825811))

(declare-fun b_lambda!219603 () Bool)

(assert (=> (not b_lambda!219603) (not b!5825810)))

(declare-fun m!6758452 () Bool)

(assert (=> b!5825810 m!6758452))

(declare-fun m!6758454 () Bool)

(assert (=> b!5825811 m!6758454))

(assert (=> d!1832610 d!1832748))

(declare-fun bs!1374042 () Bool)

(declare-fun b!5825819 () Bool)

(assert (= bs!1374042 (and b!5825819 b!5825298)))

(declare-fun lambda!318825 () Int)

(assert (=> bs!1374042 (= (and (= (reg!16206 (regOne!32267 r!7292)) (reg!16206 r!7292)) (= (regOne!32267 r!7292) r!7292)) (= lambda!318825 lambda!318799))))

(declare-fun bs!1374043 () Bool)

(assert (= bs!1374043 (and b!5825819 b!5825301)))

(assert (=> bs!1374043 (not (= lambda!318825 lambda!318800))))

(declare-fun bs!1374044 () Bool)

(assert (= bs!1374044 (and b!5825819 b!5825760)))

(assert (=> bs!1374044 (= (and (= (reg!16206 (regOne!32267 r!7292)) (reg!16206 (regTwo!32267 r!7292))) (= (regOne!32267 r!7292) (regTwo!32267 r!7292))) (= lambda!318825 lambda!318821))))

(declare-fun bs!1374045 () Bool)

(assert (= bs!1374045 (and b!5825819 b!5825763)))

(assert (=> bs!1374045 (not (= lambda!318825 lambda!318822))))

(assert (=> b!5825819 true))

(assert (=> b!5825819 true))

(declare-fun bs!1374046 () Bool)

(declare-fun b!5825822 () Bool)

(assert (= bs!1374046 (and b!5825822 b!5825819)))

(declare-fun lambda!318826 () Int)

(assert (=> bs!1374046 (not (= lambda!318826 lambda!318825))))

(declare-fun bs!1374047 () Bool)

(assert (= bs!1374047 (and b!5825822 b!5825760)))

(assert (=> bs!1374047 (not (= lambda!318826 lambda!318821))))

(declare-fun bs!1374048 () Bool)

(assert (= bs!1374048 (and b!5825822 b!5825301)))

(assert (=> bs!1374048 (= (and (= (regOne!32266 (regOne!32267 r!7292)) (regOne!32266 r!7292)) (= (regTwo!32266 (regOne!32267 r!7292)) (regTwo!32266 r!7292))) (= lambda!318826 lambda!318800))))

(declare-fun bs!1374049 () Bool)

(assert (= bs!1374049 (and b!5825822 b!5825298)))

(assert (=> bs!1374049 (not (= lambda!318826 lambda!318799))))

(declare-fun bs!1374050 () Bool)

(assert (= bs!1374050 (and b!5825822 b!5825763)))

(assert (=> bs!1374050 (= (and (= (regOne!32266 (regOne!32267 r!7292)) (regOne!32266 (regTwo!32267 r!7292))) (= (regTwo!32266 (regOne!32267 r!7292)) (regTwo!32266 (regTwo!32267 r!7292)))) (= lambda!318826 lambda!318822))))

(assert (=> b!5825822 true))

(assert (=> b!5825822 true))

(declare-fun b!5825812 () Bool)

(declare-fun e!3574965 () Bool)

(assert (=> b!5825812 (= e!3574965 (matchRSpec!2978 (regTwo!32267 (regOne!32267 r!7292)) s!2326))))

(declare-fun b!5825813 () Bool)

(declare-fun c!1032421 () Bool)

(assert (=> b!5825813 (= c!1032421 ((_ is ElementMatch!15877) (regOne!32267 r!7292)))))

(declare-fun e!3574966 () Bool)

(declare-fun e!3574969 () Bool)

(assert (=> b!5825813 (= e!3574966 e!3574969)))

(declare-fun b!5825814 () Bool)

(declare-fun c!1032424 () Bool)

(assert (=> b!5825814 (= c!1032424 ((_ is Union!15877) (regOne!32267 r!7292)))))

(declare-fun e!3574968 () Bool)

(assert (=> b!5825814 (= e!3574969 e!3574968)))

(declare-fun b!5825815 () Bool)

(declare-fun e!3574964 () Bool)

(declare-fun call!454973 () Bool)

(assert (=> b!5825815 (= e!3574964 call!454973)))

(declare-fun b!5825816 () Bool)

(assert (=> b!5825816 (= e!3574964 e!3574966)))

(declare-fun res!2456077 () Bool)

(assert (=> b!5825816 (= res!2456077 (not ((_ is EmptyLang!15877) (regOne!32267 r!7292))))))

(assert (=> b!5825816 (=> (not res!2456077) (not e!3574966))))

(declare-fun bm!454967 () Bool)

(declare-fun c!1032422 () Bool)

(declare-fun call!454972 () Bool)

(assert (=> bm!454967 (= call!454972 (Exists!2955 (ite c!1032422 lambda!318825 lambda!318826)))))

(declare-fun b!5825817 () Bool)

(assert (=> b!5825817 (= e!3574968 e!3574965)))

(declare-fun res!2456076 () Bool)

(assert (=> b!5825817 (= res!2456076 (matchRSpec!2978 (regOne!32267 (regOne!32267 r!7292)) s!2326))))

(assert (=> b!5825817 (=> res!2456076 e!3574965)))

(declare-fun bm!454968 () Bool)

(assert (=> bm!454968 (= call!454973 (isEmpty!35676 s!2326))))

(declare-fun d!1832750 () Bool)

(declare-fun c!1032423 () Bool)

(assert (=> d!1832750 (= c!1032423 ((_ is EmptyExpr!15877) (regOne!32267 r!7292)))))

(assert (=> d!1832750 (= (matchRSpec!2978 (regOne!32267 r!7292) s!2326) e!3574964)))

(declare-fun b!5825818 () Bool)

(declare-fun e!3574967 () Bool)

(assert (=> b!5825818 (= e!3574968 e!3574967)))

(assert (=> b!5825818 (= c!1032422 ((_ is Star!15877) (regOne!32267 r!7292)))))

(declare-fun e!3574963 () Bool)

(assert (=> b!5825819 (= e!3574963 call!454972)))

(declare-fun b!5825820 () Bool)

(assert (=> b!5825820 (= e!3574969 (= s!2326 (Cons!63808 (c!1032237 (regOne!32267 r!7292)) Nil!63808)))))

(declare-fun b!5825821 () Bool)

(declare-fun res!2456075 () Bool)

(assert (=> b!5825821 (=> res!2456075 e!3574963)))

(assert (=> b!5825821 (= res!2456075 call!454973)))

(assert (=> b!5825821 (= e!3574967 e!3574963)))

(assert (=> b!5825822 (= e!3574967 call!454972)))

(assert (= (and d!1832750 c!1032423) b!5825815))

(assert (= (and d!1832750 (not c!1032423)) b!5825816))

(assert (= (and b!5825816 res!2456077) b!5825813))

(assert (= (and b!5825813 c!1032421) b!5825820))

(assert (= (and b!5825813 (not c!1032421)) b!5825814))

(assert (= (and b!5825814 c!1032424) b!5825817))

(assert (= (and b!5825814 (not c!1032424)) b!5825818))

(assert (= (and b!5825817 (not res!2456076)) b!5825812))

(assert (= (and b!5825818 c!1032422) b!5825821))

(assert (= (and b!5825818 (not c!1032422)) b!5825822))

(assert (= (and b!5825821 (not res!2456075)) b!5825819))

(assert (= (or b!5825819 b!5825822) bm!454967))

(assert (= (or b!5825815 b!5825821) bm!454968))

(declare-fun m!6758456 () Bool)

(assert (=> b!5825812 m!6758456))

(declare-fun m!6758458 () Bool)

(assert (=> bm!454967 m!6758458))

(declare-fun m!6758460 () Bool)

(assert (=> b!5825817 m!6758460))

(assert (=> bm!454968 m!6758162))

(assert (=> b!5825296 d!1832750))

(assert (=> bm!454910 d!1832720))

(declare-fun d!1832752 () Bool)

(declare-fun c!1032427 () Bool)

(assert (=> d!1832752 (= c!1032427 ((_ is Nil!63807) lt!2302604))))

(declare-fun e!3574972 () (InoxSet Context!10522))

(assert (=> d!1832752 (= (content!11713 lt!2302604) e!3574972)))

(declare-fun b!5825827 () Bool)

(assert (=> b!5825827 (= e!3574972 ((as const (Array Context!10522 Bool)) false))))

(declare-fun b!5825828 () Bool)

(assert (=> b!5825828 (= e!3574972 ((_ map or) (store ((as const (Array Context!10522 Bool)) false) (h!70255 lt!2302604) true) (content!11713 (t!377286 lt!2302604))))))

(assert (= (and d!1832752 c!1032427) b!5825827))

(assert (= (and d!1832752 (not c!1032427)) b!5825828))

(declare-fun m!6758462 () Bool)

(assert (=> b!5825828 m!6758462))

(declare-fun m!6758464 () Bool)

(assert (=> b!5825828 m!6758464))

(assert (=> b!5825216 d!1832752))

(declare-fun d!1832754 () Bool)

(assert (=> d!1832754 (= (isEmpty!35677 (tail!11403 (exprs!5761 (h!70255 zl!343)))) ((_ is Nil!63806) (tail!11403 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> b!5825398 d!1832754))

(declare-fun d!1832756 () Bool)

(assert (=> d!1832756 (= (tail!11403 (exprs!5761 (h!70255 zl!343))) (t!377285 (exprs!5761 (h!70255 zl!343))))))

(assert (=> b!5825398 d!1832756))

(declare-fun d!1832758 () Bool)

(declare-fun res!2456078 () Bool)

(declare-fun e!3574973 () Bool)

(assert (=> d!1832758 (=> res!2456078 e!3574973)))

(assert (=> d!1832758 (= res!2456078 ((_ is Nil!63806) (exprs!5761 (h!70255 zl!343))))))

(assert (=> d!1832758 (= (forall!14968 (exprs!5761 (h!70255 zl!343)) lambda!318794) e!3574973)))

(declare-fun b!5825829 () Bool)

(declare-fun e!3574974 () Bool)

(assert (=> b!5825829 (= e!3574973 e!3574974)))

(declare-fun res!2456079 () Bool)

(assert (=> b!5825829 (=> (not res!2456079) (not e!3574974))))

(assert (=> b!5825829 (= res!2456079 (dynLambda!24970 lambda!318794 (h!70254 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5825830 () Bool)

(assert (=> b!5825830 (= e!3574974 (forall!14968 (t!377285 (exprs!5761 (h!70255 zl!343))) lambda!318794))))

(assert (= (and d!1832758 (not res!2456078)) b!5825829))

(assert (= (and b!5825829 res!2456079) b!5825830))

(declare-fun b_lambda!219605 () Bool)

(assert (=> (not b_lambda!219605) (not b!5825829)))

(declare-fun m!6758466 () Bool)

(assert (=> b!5825829 m!6758466))

(declare-fun m!6758468 () Bool)

(assert (=> b!5825830 m!6758468))

(assert (=> d!1832568 d!1832758))

(declare-fun d!1832760 () Bool)

(assert (=> d!1832760 (= (isEmpty!35677 (t!377285 (unfocusZipperList!1298 zl!343))) ((_ is Nil!63806) (t!377285 (unfocusZipperList!1298 zl!343))))))

(assert (=> b!5825354 d!1832760))

(declare-fun d!1832762 () Bool)

(assert (=> d!1832762 (= (nullable!5880 (reg!16206 r!7292)) (nullableFct!1886 (reg!16206 r!7292)))))

(declare-fun bs!1374051 () Bool)

(assert (= bs!1374051 d!1832762))

(declare-fun m!6758470 () Bool)

(assert (=> bs!1374051 m!6758470))

(assert (=> b!5825327 d!1832762))

(declare-fun d!1832764 () Bool)

(declare-fun res!2456084 () Bool)

(declare-fun e!3574979 () Bool)

(assert (=> d!1832764 (=> res!2456084 e!3574979)))

(assert (=> d!1832764 (= res!2456084 ((_ is Nil!63807) lt!2302604))))

(assert (=> d!1832764 (= (noDuplicate!1747 lt!2302604) e!3574979)))

(declare-fun b!5825835 () Bool)

(declare-fun e!3574980 () Bool)

(assert (=> b!5825835 (= e!3574979 e!3574980)))

(declare-fun res!2456085 () Bool)

(assert (=> b!5825835 (=> (not res!2456085) (not e!3574980))))

(declare-fun contains!19907 (List!63931 Context!10522) Bool)

(assert (=> b!5825835 (= res!2456085 (not (contains!19907 (t!377286 lt!2302604) (h!70255 lt!2302604))))))

(declare-fun b!5825836 () Bool)

(assert (=> b!5825836 (= e!3574980 (noDuplicate!1747 (t!377286 lt!2302604)))))

(assert (= (and d!1832764 (not res!2456084)) b!5825835))

(assert (= (and b!5825835 res!2456085) b!5825836))

(declare-fun m!6758472 () Bool)

(assert (=> b!5825835 m!6758472))

(declare-fun m!6758474 () Bool)

(assert (=> b!5825836 m!6758474))

(assert (=> d!1832592 d!1832764))

(declare-fun d!1832766 () Bool)

(declare-fun e!3574988 () Bool)

(assert (=> d!1832766 e!3574988))

(declare-fun res!2456091 () Bool)

(assert (=> d!1832766 (=> (not res!2456091) (not e!3574988))))

(declare-fun res!2456090 () List!63931)

(assert (=> d!1832766 (= res!2456091 (noDuplicate!1747 res!2456090))))

(declare-fun e!3574989 () Bool)

(assert (=> d!1832766 e!3574989))

(assert (=> d!1832766 (= (choose!44271 z!1189) res!2456090)))

(declare-fun b!5825844 () Bool)

(declare-fun e!3574987 () Bool)

(declare-fun tp!1608360 () Bool)

(assert (=> b!5825844 (= e!3574987 tp!1608360)))

(declare-fun tp!1608359 () Bool)

(declare-fun b!5825843 () Bool)

(assert (=> b!5825843 (= e!3574989 (and (inv!82939 (h!70255 res!2456090)) e!3574987 tp!1608359))))

(declare-fun b!5825845 () Bool)

(assert (=> b!5825845 (= e!3574988 (= (content!11713 res!2456090) z!1189))))

(assert (= b!5825843 b!5825844))

(assert (= (and d!1832766 ((_ is Cons!63807) res!2456090)) b!5825843))

(assert (= (and d!1832766 res!2456091) b!5825845))

(declare-fun m!6758476 () Bool)

(assert (=> d!1832766 m!6758476))

(declare-fun m!6758478 () Bool)

(assert (=> b!5825843 m!6758478))

(declare-fun m!6758480 () Bool)

(assert (=> b!5825845 m!6758480))

(assert (=> d!1832592 d!1832766))

(declare-fun b!5825846 () Bool)

(declare-fun e!3574992 () Bool)

(declare-fun e!3574991 () Bool)

(assert (=> b!5825846 (= e!3574992 e!3574991)))

(declare-fun c!1032429 () Bool)

(assert (=> b!5825846 (= c!1032429 ((_ is Union!15877) lt!2302616))))

(declare-fun b!5825847 () Bool)

(declare-fun e!3574994 () Bool)

(declare-fun call!454976 () Bool)

(assert (=> b!5825847 (= e!3574994 call!454976)))

(declare-fun b!5825848 () Bool)

(declare-fun e!3574995 () Bool)

(declare-fun e!3574993 () Bool)

(assert (=> b!5825848 (= e!3574995 e!3574993)))

(declare-fun res!2456092 () Bool)

(assert (=> b!5825848 (=> (not res!2456092) (not e!3574993))))

(declare-fun call!454974 () Bool)

(assert (=> b!5825848 (= res!2456092 call!454974)))

(declare-fun bm!454969 () Bool)

(assert (=> bm!454969 (= call!454974 call!454976)))

(declare-fun b!5825849 () Bool)

(assert (=> b!5825849 (= e!3574992 e!3574994)))

(declare-fun res!2456093 () Bool)

(assert (=> b!5825849 (= res!2456093 (not (nullable!5880 (reg!16206 lt!2302616))))))

(assert (=> b!5825849 (=> (not res!2456093) (not e!3574994))))

(declare-fun d!1832768 () Bool)

(declare-fun res!2456096 () Bool)

(declare-fun e!3574990 () Bool)

(assert (=> d!1832768 (=> res!2456096 e!3574990)))

(assert (=> d!1832768 (= res!2456096 ((_ is ElementMatch!15877) lt!2302616))))

(assert (=> d!1832768 (= (validRegex!7613 lt!2302616) e!3574990)))

(declare-fun b!5825850 () Bool)

(declare-fun e!3574996 () Bool)

(declare-fun call!454975 () Bool)

(assert (=> b!5825850 (= e!3574996 call!454975)))

(declare-fun bm!454970 () Bool)

(assert (=> bm!454970 (= call!454975 (validRegex!7613 (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))))))

(declare-fun b!5825851 () Bool)

(declare-fun res!2456094 () Bool)

(assert (=> b!5825851 (=> res!2456094 e!3574995)))

(assert (=> b!5825851 (= res!2456094 (not ((_ is Concat!24722) lt!2302616)))))

(assert (=> b!5825851 (= e!3574991 e!3574995)))

(declare-fun b!5825852 () Bool)

(declare-fun res!2456095 () Bool)

(assert (=> b!5825852 (=> (not res!2456095) (not e!3574996))))

(assert (=> b!5825852 (= res!2456095 call!454974)))

(assert (=> b!5825852 (= e!3574991 e!3574996)))

(declare-fun bm!454971 () Bool)

(declare-fun c!1032428 () Bool)

(assert (=> bm!454971 (= call!454976 (validRegex!7613 (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))))))

(declare-fun b!5825853 () Bool)

(assert (=> b!5825853 (= e!3574990 e!3574992)))

(assert (=> b!5825853 (= c!1032428 ((_ is Star!15877) lt!2302616))))

(declare-fun b!5825854 () Bool)

(assert (=> b!5825854 (= e!3574993 call!454975)))

(assert (= (and d!1832768 (not res!2456096)) b!5825853))

(assert (= (and b!5825853 c!1032428) b!5825849))

(assert (= (and b!5825853 (not c!1032428)) b!5825846))

(assert (= (and b!5825849 res!2456093) b!5825847))

(assert (= (and b!5825846 c!1032429) b!5825852))

(assert (= (and b!5825846 (not c!1032429)) b!5825851))

(assert (= (and b!5825852 res!2456095) b!5825850))

(assert (= (and b!5825851 (not res!2456094)) b!5825848))

(assert (= (and b!5825848 res!2456092) b!5825854))

(assert (= (or b!5825850 b!5825854) bm!454970))

(assert (= (or b!5825852 b!5825848) bm!454969))

(assert (= (or b!5825847 bm!454969) bm!454971))

(declare-fun m!6758482 () Bool)

(assert (=> b!5825849 m!6758482))

(declare-fun m!6758484 () Bool)

(assert (=> bm!454970 m!6758484))

(declare-fun m!6758486 () Bool)

(assert (=> bm!454971 m!6758486))

(assert (=> d!1832608 d!1832768))

(declare-fun d!1832770 () Bool)

(declare-fun res!2456097 () Bool)

(declare-fun e!3574997 () Bool)

(assert (=> d!1832770 (=> res!2456097 e!3574997)))

(assert (=> d!1832770 (= res!2456097 ((_ is Nil!63806) (unfocusZipperList!1298 zl!343)))))

(assert (=> d!1832770 (= (forall!14968 (unfocusZipperList!1298 zl!343) lambda!318804) e!3574997)))

(declare-fun b!5825855 () Bool)

(declare-fun e!3574998 () Bool)

(assert (=> b!5825855 (= e!3574997 e!3574998)))

(declare-fun res!2456098 () Bool)

(assert (=> b!5825855 (=> (not res!2456098) (not e!3574998))))

(assert (=> b!5825855 (= res!2456098 (dynLambda!24970 lambda!318804 (h!70254 (unfocusZipperList!1298 zl!343))))))

(declare-fun b!5825856 () Bool)

(assert (=> b!5825856 (= e!3574998 (forall!14968 (t!377285 (unfocusZipperList!1298 zl!343)) lambda!318804))))

(assert (= (and d!1832770 (not res!2456097)) b!5825855))

(assert (= (and b!5825855 res!2456098) b!5825856))

(declare-fun b_lambda!219607 () Bool)

(assert (=> (not b_lambda!219607) (not b!5825855)))

(declare-fun m!6758488 () Bool)

(assert (=> b!5825855 m!6758488))

(declare-fun m!6758490 () Bool)

(assert (=> b!5825856 m!6758490))

(assert (=> d!1832608 d!1832770))

(declare-fun b!5825857 () Bool)

(declare-fun e!3575001 () Bool)

(declare-fun e!3575000 () Bool)

(assert (=> b!5825857 (= e!3575001 e!3575000)))

(declare-fun c!1032431 () Bool)

(assert (=> b!5825857 (= c!1032431 ((_ is Union!15877) (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))

(declare-fun b!5825858 () Bool)

(declare-fun e!3575003 () Bool)

(declare-fun call!454979 () Bool)

(assert (=> b!5825858 (= e!3575003 call!454979)))

(declare-fun b!5825859 () Bool)

(declare-fun e!3575004 () Bool)

(declare-fun e!3575002 () Bool)

(assert (=> b!5825859 (= e!3575004 e!3575002)))

(declare-fun res!2456099 () Bool)

(assert (=> b!5825859 (=> (not res!2456099) (not e!3575002))))

(declare-fun call!454977 () Bool)

(assert (=> b!5825859 (= res!2456099 call!454977)))

(declare-fun bm!454972 () Bool)

(assert (=> bm!454972 (= call!454977 call!454979)))

(declare-fun b!5825860 () Bool)

(assert (=> b!5825860 (= e!3575001 e!3575003)))

(declare-fun res!2456100 () Bool)

(assert (=> b!5825860 (= res!2456100 (not (nullable!5880 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))))

(assert (=> b!5825860 (=> (not res!2456100) (not e!3575003))))

(declare-fun d!1832772 () Bool)

(declare-fun res!2456103 () Bool)

(declare-fun e!3574999 () Bool)

(assert (=> d!1832772 (=> res!2456103 e!3574999)))

(assert (=> d!1832772 (= res!2456103 ((_ is ElementMatch!15877) (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))

(assert (=> d!1832772 (= (validRegex!7613 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) e!3574999)))

(declare-fun b!5825861 () Bool)

(declare-fun e!3575005 () Bool)

(declare-fun call!454978 () Bool)

(assert (=> b!5825861 (= e!3575005 call!454978)))

(declare-fun bm!454973 () Bool)

(assert (=> bm!454973 (= call!454978 (validRegex!7613 (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))))

(declare-fun b!5825862 () Bool)

(declare-fun res!2456101 () Bool)

(assert (=> b!5825862 (=> res!2456101 e!3575004)))

(assert (=> b!5825862 (= res!2456101 (not ((_ is Concat!24722) (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))

(assert (=> b!5825862 (= e!3575000 e!3575004)))

(declare-fun b!5825863 () Bool)

(declare-fun res!2456102 () Bool)

(assert (=> b!5825863 (=> (not res!2456102) (not e!3575005))))

(assert (=> b!5825863 (= res!2456102 call!454977)))

(assert (=> b!5825863 (= e!3575000 e!3575005)))

(declare-fun c!1032430 () Bool)

(declare-fun bm!454974 () Bool)

(assert (=> bm!454974 (= call!454979 (validRegex!7613 (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))))

(declare-fun b!5825864 () Bool)

(assert (=> b!5825864 (= e!3574999 e!3575001)))

(assert (=> b!5825864 (= c!1032430 ((_ is Star!15877) (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))

(declare-fun b!5825865 () Bool)

(assert (=> b!5825865 (= e!3575002 call!454978)))

(assert (= (and d!1832772 (not res!2456103)) b!5825864))

(assert (= (and b!5825864 c!1032430) b!5825860))

(assert (= (and b!5825864 (not c!1032430)) b!5825857))

(assert (= (and b!5825860 res!2456100) b!5825858))

(assert (= (and b!5825857 c!1032431) b!5825863))

(assert (= (and b!5825857 (not c!1032431)) b!5825862))

(assert (= (and b!5825863 res!2456102) b!5825861))

(assert (= (and b!5825862 (not res!2456101)) b!5825859))

(assert (= (and b!5825859 res!2456099) b!5825865))

(assert (= (or b!5825861 b!5825865) bm!454973))

(assert (= (or b!5825863 b!5825859) bm!454972))

(assert (= (or b!5825858 bm!454972) bm!454974))

(declare-fun m!6758492 () Bool)

(assert (=> b!5825860 m!6758492))

(declare-fun m!6758494 () Bool)

(assert (=> bm!454973 m!6758494))

(declare-fun m!6758496 () Bool)

(assert (=> bm!454974 m!6758496))

(assert (=> bm!454918 d!1832772))

(declare-fun bs!1374052 () Bool)

(declare-fun d!1832774 () Bool)

(assert (= bs!1374052 (and d!1832774 d!1832568)))

(declare-fun lambda!318827 () Int)

(assert (=> bs!1374052 (= lambda!318827 lambda!318794)))

(declare-fun bs!1374053 () Bool)

(assert (= bs!1374053 (and d!1832774 d!1832610)))

(assert (=> bs!1374053 (= lambda!318827 lambda!318807)))

(declare-fun bs!1374054 () Bool)

(assert (= bs!1374054 (and d!1832774 d!1832612)))

(assert (=> bs!1374054 (= lambda!318827 lambda!318810)))

(declare-fun bs!1374055 () Bool)

(assert (= bs!1374055 (and d!1832774 d!1832744)))

(assert (=> bs!1374055 (= lambda!318827 lambda!318824)))

(declare-fun bs!1374056 () Bool)

(assert (= bs!1374056 (and d!1832774 d!1832742)))

(assert (=> bs!1374056 (= lambda!318827 lambda!318823)))

(declare-fun bs!1374057 () Bool)

(assert (= bs!1374057 (and d!1832774 d!1832606)))

(assert (=> bs!1374057 (= lambda!318827 lambda!318801)))

(declare-fun bs!1374058 () Bool)

(assert (= bs!1374058 (and d!1832774 d!1832714)))

(assert (=> bs!1374058 (= lambda!318827 lambda!318820)))

(declare-fun bs!1374059 () Bool)

(assert (= bs!1374059 (and d!1832774 d!1832608)))

(assert (=> bs!1374059 (= lambda!318827 lambda!318804)))

(assert (=> d!1832774 (= (inv!82939 (h!70255 (t!377286 zl!343))) (forall!14968 (exprs!5761 (h!70255 (t!377286 zl!343))) lambda!318827))))

(declare-fun bs!1374060 () Bool)

(assert (= bs!1374060 d!1832774))

(declare-fun m!6758498 () Bool)

(assert (=> bs!1374060 m!6758498))

(assert (=> b!5825405 d!1832774))

(declare-fun d!1832776 () Bool)

(assert (=> d!1832776 (= (isUnion!755 lt!2302616) ((_ is Union!15877) lt!2302616))))

(assert (=> b!5825357 d!1832776))

(assert (=> b!5825246 d!1832740))

(declare-fun d!1832778 () Bool)

(assert (=> d!1832778 (= (isEmptyExpr!1316 lt!2302622) ((_ is EmptyExpr!15877) lt!2302622))))

(assert (=> b!5825389 d!1832778))

(assert (=> b!5825247 d!1832726))

(assert (=> b!5825247 d!1832728))

(declare-fun d!1832780 () Bool)

(assert (=> d!1832780 (= (isEmpty!35677 (exprs!5761 (h!70255 zl!343))) ((_ is Nil!63806) (exprs!5761 (h!70255 zl!343))))))

(assert (=> b!5825390 d!1832780))

(declare-fun d!1832782 () Bool)

(assert (=> d!1832782 (= (isEmpty!35677 (unfocusZipperList!1298 zl!343)) ((_ is Nil!63806) (unfocusZipperList!1298 zl!343)))))

(assert (=> b!5825359 d!1832782))

(declare-fun b!5825866 () Bool)

(declare-fun e!3575008 () Bool)

(declare-fun e!3575007 () Bool)

(assert (=> b!5825866 (= e!3575008 e!3575007)))

(declare-fun c!1032433 () Bool)

(assert (=> b!5825866 (= c!1032433 ((_ is Union!15877) lt!2302607))))

(declare-fun b!5825867 () Bool)

(declare-fun e!3575010 () Bool)

(declare-fun call!454982 () Bool)

(assert (=> b!5825867 (= e!3575010 call!454982)))

(declare-fun b!5825868 () Bool)

(declare-fun e!3575011 () Bool)

(declare-fun e!3575009 () Bool)

(assert (=> b!5825868 (= e!3575011 e!3575009)))

(declare-fun res!2456104 () Bool)

(assert (=> b!5825868 (=> (not res!2456104) (not e!3575009))))

(declare-fun call!454980 () Bool)

(assert (=> b!5825868 (= res!2456104 call!454980)))

(declare-fun bm!454975 () Bool)

(assert (=> bm!454975 (= call!454980 call!454982)))

(declare-fun b!5825869 () Bool)

(assert (=> b!5825869 (= e!3575008 e!3575010)))

(declare-fun res!2456105 () Bool)

(assert (=> b!5825869 (= res!2456105 (not (nullable!5880 (reg!16206 lt!2302607))))))

(assert (=> b!5825869 (=> (not res!2456105) (not e!3575010))))

(declare-fun d!1832784 () Bool)

(declare-fun res!2456108 () Bool)

(declare-fun e!3575006 () Bool)

(assert (=> d!1832784 (=> res!2456108 e!3575006)))

(assert (=> d!1832784 (= res!2456108 ((_ is ElementMatch!15877) lt!2302607))))

(assert (=> d!1832784 (= (validRegex!7613 lt!2302607) e!3575006)))

(declare-fun b!5825870 () Bool)

(declare-fun e!3575012 () Bool)

(declare-fun call!454981 () Bool)

(assert (=> b!5825870 (= e!3575012 call!454981)))

(declare-fun bm!454976 () Bool)

(assert (=> bm!454976 (= call!454981 (validRegex!7613 (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))))))

(declare-fun b!5825871 () Bool)

(declare-fun res!2456106 () Bool)

(assert (=> b!5825871 (=> res!2456106 e!3575011)))

(assert (=> b!5825871 (= res!2456106 (not ((_ is Concat!24722) lt!2302607)))))

(assert (=> b!5825871 (= e!3575007 e!3575011)))

(declare-fun b!5825872 () Bool)

(declare-fun res!2456107 () Bool)

(assert (=> b!5825872 (=> (not res!2456107) (not e!3575012))))

(assert (=> b!5825872 (= res!2456107 call!454980)))

(assert (=> b!5825872 (= e!3575007 e!3575012)))

(declare-fun c!1032432 () Bool)

(declare-fun bm!454977 () Bool)

(assert (=> bm!454977 (= call!454982 (validRegex!7613 (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))))))

(declare-fun b!5825873 () Bool)

(assert (=> b!5825873 (= e!3575006 e!3575008)))

(assert (=> b!5825873 (= c!1032432 ((_ is Star!15877) lt!2302607))))

(declare-fun b!5825874 () Bool)

(assert (=> b!5825874 (= e!3575009 call!454981)))

(assert (= (and d!1832784 (not res!2456108)) b!5825873))

(assert (= (and b!5825873 c!1032432) b!5825869))

(assert (= (and b!5825873 (not c!1032432)) b!5825866))

(assert (= (and b!5825869 res!2456105) b!5825867))

(assert (= (and b!5825866 c!1032433) b!5825872))

(assert (= (and b!5825866 (not c!1032433)) b!5825871))

(assert (= (and b!5825872 res!2456107) b!5825870))

(assert (= (and b!5825871 (not res!2456106)) b!5825868))

(assert (= (and b!5825868 res!2456104) b!5825874))

(assert (= (or b!5825870 b!5825874) bm!454976))

(assert (= (or b!5825872 b!5825868) bm!454975))

(assert (= (or b!5825867 bm!454975) bm!454977))

(declare-fun m!6758500 () Bool)

(assert (=> b!5825869 m!6758500))

(declare-fun m!6758502 () Bool)

(assert (=> bm!454976 m!6758502))

(declare-fun m!6758504 () Bool)

(assert (=> bm!454977 m!6758504))

(assert (=> d!1832594 d!1832784))

(assert (=> d!1832594 d!1832608))

(assert (=> d!1832594 d!1832610))

(declare-fun b!5825875 () Bool)

(declare-fun e!3575015 () Bool)

(declare-fun e!3575014 () Bool)

(assert (=> b!5825875 (= e!3575015 e!3575014)))

(declare-fun c!1032435 () Bool)

(assert (=> b!5825875 (= c!1032435 ((_ is Union!15877) (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))

(declare-fun b!5825876 () Bool)

(declare-fun e!3575017 () Bool)

(declare-fun call!454985 () Bool)

(assert (=> b!5825876 (= e!3575017 call!454985)))

(declare-fun b!5825877 () Bool)

(declare-fun e!3575018 () Bool)

(declare-fun e!3575016 () Bool)

(assert (=> b!5825877 (= e!3575018 e!3575016)))

(declare-fun res!2456109 () Bool)

(assert (=> b!5825877 (=> (not res!2456109) (not e!3575016))))

(declare-fun call!454983 () Bool)

(assert (=> b!5825877 (= res!2456109 call!454983)))

(declare-fun bm!454978 () Bool)

(assert (=> bm!454978 (= call!454983 call!454985)))

(declare-fun b!5825878 () Bool)

(assert (=> b!5825878 (= e!3575015 e!3575017)))

(declare-fun res!2456110 () Bool)

(assert (=> b!5825878 (= res!2456110 (not (nullable!5880 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))))

(assert (=> b!5825878 (=> (not res!2456110) (not e!3575017))))

(declare-fun d!1832786 () Bool)

(declare-fun res!2456113 () Bool)

(declare-fun e!3575013 () Bool)

(assert (=> d!1832786 (=> res!2456113 e!3575013)))

(assert (=> d!1832786 (= res!2456113 ((_ is ElementMatch!15877) (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))

(assert (=> d!1832786 (= (validRegex!7613 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) e!3575013)))

(declare-fun b!5825879 () Bool)

(declare-fun e!3575019 () Bool)

(declare-fun call!454984 () Bool)

(assert (=> b!5825879 (= e!3575019 call!454984)))

(declare-fun bm!454979 () Bool)

(assert (=> bm!454979 (= call!454984 (validRegex!7613 (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))))

(declare-fun b!5825880 () Bool)

(declare-fun res!2456111 () Bool)

(assert (=> b!5825880 (=> res!2456111 e!3575018)))

(assert (=> b!5825880 (= res!2456111 (not ((_ is Concat!24722) (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))

(assert (=> b!5825880 (= e!3575014 e!3575018)))

(declare-fun b!5825881 () Bool)

(declare-fun res!2456112 () Bool)

(assert (=> b!5825881 (=> (not res!2456112) (not e!3575019))))

(assert (=> b!5825881 (= res!2456112 call!454983)))

(assert (=> b!5825881 (= e!3575014 e!3575019)))

(declare-fun c!1032434 () Bool)

(declare-fun bm!454980 () Bool)

(assert (=> bm!454980 (= call!454985 (validRegex!7613 (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))))

(declare-fun b!5825882 () Bool)

(assert (=> b!5825882 (= e!3575013 e!3575015)))

(assert (=> b!5825882 (= c!1032434 ((_ is Star!15877) (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))

(declare-fun b!5825883 () Bool)

(assert (=> b!5825883 (= e!3575016 call!454984)))

(assert (= (and d!1832786 (not res!2456113)) b!5825882))

(assert (= (and b!5825882 c!1032434) b!5825878))

(assert (= (and b!5825882 (not c!1032434)) b!5825875))

(assert (= (and b!5825878 res!2456110) b!5825876))

(assert (= (and b!5825875 c!1032435) b!5825881))

(assert (= (and b!5825875 (not c!1032435)) b!5825880))

(assert (= (and b!5825881 res!2456112) b!5825879))

(assert (= (and b!5825880 (not res!2456111)) b!5825877))

(assert (= (and b!5825877 res!2456109) b!5825883))

(assert (= (or b!5825879 b!5825883) bm!454979))

(assert (= (or b!5825881 b!5825877) bm!454978))

(assert (= (or b!5825876 bm!454978) bm!454980))

(declare-fun m!6758506 () Bool)

(assert (=> b!5825878 m!6758506))

(declare-fun m!6758508 () Bool)

(assert (=> bm!454979 m!6758508))

(declare-fun m!6758510 () Bool)

(assert (=> bm!454980 m!6758510))

(assert (=> bm!454919 d!1832786))

(declare-fun b!5825884 () Bool)

(declare-fun e!3575022 () Bool)

(declare-fun e!3575021 () Bool)

(assert (=> b!5825884 (= e!3575022 e!3575021)))

(declare-fun c!1032437 () Bool)

(assert (=> b!5825884 (= c!1032437 ((_ is Union!15877) lt!2302622))))

(declare-fun b!5825885 () Bool)

(declare-fun e!3575024 () Bool)

(declare-fun call!454988 () Bool)

(assert (=> b!5825885 (= e!3575024 call!454988)))

(declare-fun b!5825886 () Bool)

(declare-fun e!3575025 () Bool)

(declare-fun e!3575023 () Bool)

(assert (=> b!5825886 (= e!3575025 e!3575023)))

(declare-fun res!2456114 () Bool)

(assert (=> b!5825886 (=> (not res!2456114) (not e!3575023))))

(declare-fun call!454986 () Bool)

(assert (=> b!5825886 (= res!2456114 call!454986)))

(declare-fun bm!454981 () Bool)

(assert (=> bm!454981 (= call!454986 call!454988)))

(declare-fun b!5825887 () Bool)

(assert (=> b!5825887 (= e!3575022 e!3575024)))

(declare-fun res!2456115 () Bool)

(assert (=> b!5825887 (= res!2456115 (not (nullable!5880 (reg!16206 lt!2302622))))))

(assert (=> b!5825887 (=> (not res!2456115) (not e!3575024))))

(declare-fun d!1832788 () Bool)

(declare-fun res!2456118 () Bool)

(declare-fun e!3575020 () Bool)

(assert (=> d!1832788 (=> res!2456118 e!3575020)))

(assert (=> d!1832788 (= res!2456118 ((_ is ElementMatch!15877) lt!2302622))))

(assert (=> d!1832788 (= (validRegex!7613 lt!2302622) e!3575020)))

(declare-fun b!5825888 () Bool)

(declare-fun e!3575026 () Bool)

(declare-fun call!454987 () Bool)

(assert (=> b!5825888 (= e!3575026 call!454987)))

(declare-fun bm!454982 () Bool)

(assert (=> bm!454982 (= call!454987 (validRegex!7613 (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))))))

(declare-fun b!5825889 () Bool)

(declare-fun res!2456116 () Bool)

(assert (=> b!5825889 (=> res!2456116 e!3575025)))

(assert (=> b!5825889 (= res!2456116 (not ((_ is Concat!24722) lt!2302622)))))

(assert (=> b!5825889 (= e!3575021 e!3575025)))

(declare-fun b!5825890 () Bool)

(declare-fun res!2456117 () Bool)

(assert (=> b!5825890 (=> (not res!2456117) (not e!3575026))))

(assert (=> b!5825890 (= res!2456117 call!454986)))

(assert (=> b!5825890 (= e!3575021 e!3575026)))

(declare-fun c!1032436 () Bool)

(declare-fun bm!454983 () Bool)

(assert (=> bm!454983 (= call!454988 (validRegex!7613 (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))))))

(declare-fun b!5825891 () Bool)

(assert (=> b!5825891 (= e!3575020 e!3575022)))

(assert (=> b!5825891 (= c!1032436 ((_ is Star!15877) lt!2302622))))

(declare-fun b!5825892 () Bool)

(assert (=> b!5825892 (= e!3575023 call!454987)))

(assert (= (and d!1832788 (not res!2456118)) b!5825891))

(assert (= (and b!5825891 c!1032436) b!5825887))

(assert (= (and b!5825891 (not c!1032436)) b!5825884))

(assert (= (and b!5825887 res!2456115) b!5825885))

(assert (= (and b!5825884 c!1032437) b!5825890))

(assert (= (and b!5825884 (not c!1032437)) b!5825889))

(assert (= (and b!5825890 res!2456117) b!5825888))

(assert (= (and b!5825889 (not res!2456116)) b!5825886))

(assert (= (and b!5825886 res!2456114) b!5825892))

(assert (= (or b!5825888 b!5825892) bm!454982))

(assert (= (or b!5825890 b!5825886) bm!454981))

(assert (= (or b!5825885 bm!454981) bm!454983))

(declare-fun m!6758512 () Bool)

(assert (=> b!5825887 m!6758512))

(declare-fun m!6758514 () Bool)

(assert (=> bm!454982 m!6758514))

(declare-fun m!6758516 () Bool)

(assert (=> bm!454983 m!6758516))

(assert (=> d!1832612 d!1832788))

(declare-fun d!1832790 () Bool)

(declare-fun res!2456119 () Bool)

(declare-fun e!3575027 () Bool)

(assert (=> d!1832790 (=> res!2456119 e!3575027)))

(assert (=> d!1832790 (= res!2456119 ((_ is Nil!63806) (exprs!5761 (h!70255 zl!343))))))

(assert (=> d!1832790 (= (forall!14968 (exprs!5761 (h!70255 zl!343)) lambda!318810) e!3575027)))

(declare-fun b!5825893 () Bool)

(declare-fun e!3575028 () Bool)

(assert (=> b!5825893 (= e!3575027 e!3575028)))

(declare-fun res!2456120 () Bool)

(assert (=> b!5825893 (=> (not res!2456120) (not e!3575028))))

(assert (=> b!5825893 (= res!2456120 (dynLambda!24970 lambda!318810 (h!70254 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5825894 () Bool)

(assert (=> b!5825894 (= e!3575028 (forall!14968 (t!377285 (exprs!5761 (h!70255 zl!343))) lambda!318810))))

(assert (= (and d!1832790 (not res!2456119)) b!5825893))

(assert (= (and b!5825893 res!2456120) b!5825894))

(declare-fun b_lambda!219609 () Bool)

(assert (=> (not b_lambda!219609) (not b!5825893)))

(declare-fun m!6758518 () Bool)

(assert (=> b!5825893 m!6758518))

(declare-fun m!6758520 () Bool)

(assert (=> b!5825894 m!6758520))

(assert (=> d!1832612 d!1832790))

(declare-fun bs!1374061 () Bool)

(declare-fun d!1832792 () Bool)

(assert (= bs!1374061 (and d!1832792 d!1832568)))

(declare-fun lambda!318828 () Int)

(assert (=> bs!1374061 (= lambda!318828 lambda!318794)))

(declare-fun bs!1374062 () Bool)

(assert (= bs!1374062 (and d!1832792 d!1832610)))

(assert (=> bs!1374062 (= lambda!318828 lambda!318807)))

(declare-fun bs!1374063 () Bool)

(assert (= bs!1374063 (and d!1832792 d!1832612)))

(assert (=> bs!1374063 (= lambda!318828 lambda!318810)))

(declare-fun bs!1374064 () Bool)

(assert (= bs!1374064 (and d!1832792 d!1832774)))

(assert (=> bs!1374064 (= lambda!318828 lambda!318827)))

(declare-fun bs!1374065 () Bool)

(assert (= bs!1374065 (and d!1832792 d!1832744)))

(assert (=> bs!1374065 (= lambda!318828 lambda!318824)))

(declare-fun bs!1374066 () Bool)

(assert (= bs!1374066 (and d!1832792 d!1832742)))

(assert (=> bs!1374066 (= lambda!318828 lambda!318823)))

(declare-fun bs!1374067 () Bool)

(assert (= bs!1374067 (and d!1832792 d!1832606)))

(assert (=> bs!1374067 (= lambda!318828 lambda!318801)))

(declare-fun bs!1374068 () Bool)

(assert (= bs!1374068 (and d!1832792 d!1832714)))

(assert (=> bs!1374068 (= lambda!318828 lambda!318820)))

(declare-fun bs!1374069 () Bool)

(assert (= bs!1374069 (and d!1832792 d!1832608)))

(assert (=> bs!1374069 (= lambda!318828 lambda!318804)))

(declare-fun b!5825895 () Bool)

(declare-fun e!3575031 () Regex!15877)

(declare-fun e!3575030 () Regex!15877)

(assert (=> b!5825895 (= e!3575031 e!3575030)))

(declare-fun c!1032440 () Bool)

(assert (=> b!5825895 (= c!1032440 ((_ is Cons!63806) (t!377285 (unfocusZipperList!1298 zl!343))))))

(declare-fun b!5825896 () Bool)

(declare-fun e!3575033 () Bool)

(assert (=> b!5825896 (= e!3575033 (isEmpty!35677 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5825897 () Bool)

(assert (=> b!5825897 (= e!3575030 (Union!15877 (h!70254 (t!377285 (unfocusZipperList!1298 zl!343))) (generalisedUnion!1721 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343))))))))

(declare-fun b!5825898 () Bool)

(declare-fun e!3575034 () Bool)

(declare-fun e!3575029 () Bool)

(assert (=> b!5825898 (= e!3575034 e!3575029)))

(declare-fun c!1032439 () Bool)

(assert (=> b!5825898 (= c!1032439 (isEmpty!35677 (tail!11403 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5825899 () Bool)

(declare-fun lt!2302636 () Regex!15877)

(assert (=> b!5825899 (= e!3575029 (isUnion!755 lt!2302636))))

(declare-fun b!5825900 () Bool)

(assert (=> b!5825900 (= e!3575030 EmptyLang!15877)))

(declare-fun e!3575032 () Bool)

(assert (=> d!1832792 e!3575032))

(declare-fun res!2456121 () Bool)

(assert (=> d!1832792 (=> (not res!2456121) (not e!3575032))))

(assert (=> d!1832792 (= res!2456121 (validRegex!7613 lt!2302636))))

(assert (=> d!1832792 (= lt!2302636 e!3575031)))

(declare-fun c!1032441 () Bool)

(assert (=> d!1832792 (= c!1032441 e!3575033)))

(declare-fun res!2456122 () Bool)

(assert (=> d!1832792 (=> (not res!2456122) (not e!3575033))))

(assert (=> d!1832792 (= res!2456122 ((_ is Cons!63806) (t!377285 (unfocusZipperList!1298 zl!343))))))

(assert (=> d!1832792 (forall!14968 (t!377285 (unfocusZipperList!1298 zl!343)) lambda!318828)))

(assert (=> d!1832792 (= (generalisedUnion!1721 (t!377285 (unfocusZipperList!1298 zl!343))) lt!2302636)))

(declare-fun b!5825901 () Bool)

(assert (=> b!5825901 (= e!3575032 e!3575034)))

(declare-fun c!1032438 () Bool)

(assert (=> b!5825901 (= c!1032438 (isEmpty!35677 (t!377285 (unfocusZipperList!1298 zl!343))))))

(declare-fun b!5825902 () Bool)

(assert (=> b!5825902 (= e!3575029 (= lt!2302636 (head!12318 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5825903 () Bool)

(assert (=> b!5825903 (= e!3575031 (h!70254 (t!377285 (unfocusZipperList!1298 zl!343))))))

(declare-fun b!5825904 () Bool)

(assert (=> b!5825904 (= e!3575034 (isEmptyLang!1325 lt!2302636))))

(assert (= (and d!1832792 res!2456122) b!5825896))

(assert (= (and d!1832792 c!1032441) b!5825903))

(assert (= (and d!1832792 (not c!1032441)) b!5825895))

(assert (= (and b!5825895 c!1032440) b!5825897))

(assert (= (and b!5825895 (not c!1032440)) b!5825900))

(assert (= (and d!1832792 res!2456121) b!5825901))

(assert (= (and b!5825901 c!1032438) b!5825904))

(assert (= (and b!5825901 (not c!1032438)) b!5825898))

(assert (= (and b!5825898 c!1032439) b!5825902))

(assert (= (and b!5825898 (not c!1032439)) b!5825899))

(declare-fun m!6758522 () Bool)

(assert (=> b!5825898 m!6758522))

(assert (=> b!5825898 m!6758522))

(declare-fun m!6758524 () Bool)

(assert (=> b!5825898 m!6758524))

(declare-fun m!6758526 () Bool)

(assert (=> d!1832792 m!6758526))

(declare-fun m!6758528 () Bool)

(assert (=> d!1832792 m!6758528))

(declare-fun m!6758530 () Bool)

(assert (=> b!5825897 m!6758530))

(declare-fun m!6758532 () Bool)

(assert (=> b!5825899 m!6758532))

(declare-fun m!6758534 () Bool)

(assert (=> b!5825904 m!6758534))

(declare-fun m!6758536 () Bool)

(assert (=> b!5825902 m!6758536))

(declare-fun m!6758538 () Bool)

(assert (=> b!5825896 m!6758538))

(assert (=> b!5825901 m!6758196))

(assert (=> b!5825355 d!1832792))

(declare-fun d!1832794 () Bool)

(assert (=> d!1832794 (= (isEmpty!35677 (tail!11403 (unfocusZipperList!1298 zl!343))) ((_ is Nil!63806) (tail!11403 (unfocusZipperList!1298 zl!343))))))

(assert (=> b!5825356 d!1832794))

(declare-fun d!1832796 () Bool)

(assert (=> d!1832796 (= (tail!11403 (unfocusZipperList!1298 zl!343)) (t!377285 (unfocusZipperList!1298 zl!343)))))

(assert (=> b!5825356 d!1832796))

(assert (=> d!1832600 d!1832596))

(assert (=> d!1832600 d!1832598))

(declare-fun d!1832798 () Bool)

(assert (=> d!1832798 (= (matchR!8060 r!7292 s!2326) (matchRSpec!2978 r!7292 s!2326))))

(assert (=> d!1832798 true))

(declare-fun _$88!4168 () Unit!157025)

(assert (=> d!1832798 (= (choose!44272 r!7292 s!2326) _$88!4168)))

(declare-fun bs!1374070 () Bool)

(assert (= bs!1374070 d!1832798))

(assert (=> bs!1374070 m!6758042))

(assert (=> bs!1374070 m!6758044))

(assert (=> d!1832600 d!1832798))

(assert (=> d!1832600 d!1832604))

(declare-fun b!5825905 () Bool)

(declare-fun e!3575035 () Bool)

(assert (=> b!5825905 (= e!3575035 tp_is_empty!41007)))

(declare-fun b!5825906 () Bool)

(declare-fun tp!1608362 () Bool)

(declare-fun tp!1608364 () Bool)

(assert (=> b!5825906 (= e!3575035 (and tp!1608362 tp!1608364))))

(assert (=> b!5825419 (= tp!1608159 e!3575035)))

(declare-fun b!5825908 () Bool)

(declare-fun tp!1608365 () Bool)

(declare-fun tp!1608363 () Bool)

(assert (=> b!5825908 (= e!3575035 (and tp!1608365 tp!1608363))))

(declare-fun b!5825907 () Bool)

(declare-fun tp!1608361 () Bool)

(assert (=> b!5825907 (= e!3575035 tp!1608361)))

(assert (= (and b!5825419 ((_ is ElementMatch!15877) (reg!16206 (regOne!32266 r!7292)))) b!5825905))

(assert (= (and b!5825419 ((_ is Concat!24722) (reg!16206 (regOne!32266 r!7292)))) b!5825906))

(assert (= (and b!5825419 ((_ is Star!15877) (reg!16206 (regOne!32266 r!7292)))) b!5825907))

(assert (= (and b!5825419 ((_ is Union!15877) (reg!16206 (regOne!32266 r!7292)))) b!5825908))

(declare-fun b!5825909 () Bool)

(declare-fun e!3575036 () Bool)

(assert (=> b!5825909 (= e!3575036 tp_is_empty!41007)))

(declare-fun b!5825910 () Bool)

(declare-fun tp!1608367 () Bool)

(declare-fun tp!1608369 () Bool)

(assert (=> b!5825910 (= e!3575036 (and tp!1608367 tp!1608369))))

(assert (=> b!5825420 (= tp!1608163 e!3575036)))

(declare-fun b!5825912 () Bool)

(declare-fun tp!1608370 () Bool)

(declare-fun tp!1608368 () Bool)

(assert (=> b!5825912 (= e!3575036 (and tp!1608370 tp!1608368))))

(declare-fun b!5825911 () Bool)

(declare-fun tp!1608366 () Bool)

(assert (=> b!5825911 (= e!3575036 tp!1608366)))

(assert (= (and b!5825420 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32266 r!7292)))) b!5825909))

(assert (= (and b!5825420 ((_ is Concat!24722) (regOne!32267 (regOne!32266 r!7292)))) b!5825910))

(assert (= (and b!5825420 ((_ is Star!15877) (regOne!32267 (regOne!32266 r!7292)))) b!5825911))

(assert (= (and b!5825420 ((_ is Union!15877) (regOne!32267 (regOne!32266 r!7292)))) b!5825912))

(declare-fun b!5825913 () Bool)

(declare-fun e!3575037 () Bool)

(assert (=> b!5825913 (= e!3575037 tp_is_empty!41007)))

(declare-fun b!5825914 () Bool)

(declare-fun tp!1608372 () Bool)

(declare-fun tp!1608374 () Bool)

(assert (=> b!5825914 (= e!3575037 (and tp!1608372 tp!1608374))))

(assert (=> b!5825420 (= tp!1608161 e!3575037)))

(declare-fun b!5825916 () Bool)

(declare-fun tp!1608375 () Bool)

(declare-fun tp!1608373 () Bool)

(assert (=> b!5825916 (= e!3575037 (and tp!1608375 tp!1608373))))

(declare-fun b!5825915 () Bool)

(declare-fun tp!1608371 () Bool)

(assert (=> b!5825915 (= e!3575037 tp!1608371)))

(assert (= (and b!5825420 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32266 r!7292)))) b!5825913))

(assert (= (and b!5825420 ((_ is Concat!24722) (regTwo!32267 (regOne!32266 r!7292)))) b!5825914))

(assert (= (and b!5825420 ((_ is Star!15877) (regTwo!32267 (regOne!32266 r!7292)))) b!5825915))

(assert (= (and b!5825420 ((_ is Union!15877) (regTwo!32267 (regOne!32266 r!7292)))) b!5825916))

(declare-fun b!5825917 () Bool)

(declare-fun e!3575038 () Bool)

(assert (=> b!5825917 (= e!3575038 tp_is_empty!41007)))

(declare-fun b!5825918 () Bool)

(declare-fun tp!1608377 () Bool)

(declare-fun tp!1608379 () Bool)

(assert (=> b!5825918 (= e!3575038 (and tp!1608377 tp!1608379))))

(assert (=> b!5825434 (= tp!1608176 e!3575038)))

(declare-fun b!5825920 () Bool)

(declare-fun tp!1608380 () Bool)

(declare-fun tp!1608378 () Bool)

(assert (=> b!5825920 (= e!3575038 (and tp!1608380 tp!1608378))))

(declare-fun b!5825919 () Bool)

(declare-fun tp!1608376 () Bool)

(assert (=> b!5825919 (= e!3575038 tp!1608376)))

(assert (= (and b!5825434 ((_ is ElementMatch!15877) (h!70254 (exprs!5761 (h!70255 zl!343))))) b!5825917))

(assert (= (and b!5825434 ((_ is Concat!24722) (h!70254 (exprs!5761 (h!70255 zl!343))))) b!5825918))

(assert (= (and b!5825434 ((_ is Star!15877) (h!70254 (exprs!5761 (h!70255 zl!343))))) b!5825919))

(assert (= (and b!5825434 ((_ is Union!15877) (h!70254 (exprs!5761 (h!70255 zl!343))))) b!5825920))

(declare-fun b!5825921 () Bool)

(declare-fun e!3575039 () Bool)

(declare-fun tp!1608381 () Bool)

(declare-fun tp!1608382 () Bool)

(assert (=> b!5825921 (= e!3575039 (and tp!1608381 tp!1608382))))

(assert (=> b!5825434 (= tp!1608177 e!3575039)))

(assert (= (and b!5825434 ((_ is Cons!63806) (t!377285 (exprs!5761 (h!70255 zl!343))))) b!5825921))

(declare-fun b!5825922 () Bool)

(declare-fun e!3575040 () Bool)

(assert (=> b!5825922 (= e!3575040 tp_is_empty!41007)))

(declare-fun b!5825923 () Bool)

(declare-fun tp!1608384 () Bool)

(declare-fun tp!1608386 () Bool)

(assert (=> b!5825923 (= e!3575040 (and tp!1608384 tp!1608386))))

(assert (=> b!5825446 (= tp!1608192 e!3575040)))

(declare-fun b!5825925 () Bool)

(declare-fun tp!1608387 () Bool)

(declare-fun tp!1608385 () Bool)

(assert (=> b!5825925 (= e!3575040 (and tp!1608387 tp!1608385))))

(declare-fun b!5825924 () Bool)

(declare-fun tp!1608383 () Bool)

(assert (=> b!5825924 (= e!3575040 tp!1608383)))

(assert (= (and b!5825446 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32267 r!7292)))) b!5825922))

(assert (= (and b!5825446 ((_ is Concat!24722) (regOne!32266 (regOne!32267 r!7292)))) b!5825923))

(assert (= (and b!5825446 ((_ is Star!15877) (regOne!32266 (regOne!32267 r!7292)))) b!5825924))

(assert (= (and b!5825446 ((_ is Union!15877) (regOne!32266 (regOne!32267 r!7292)))) b!5825925))

(declare-fun b!5825926 () Bool)

(declare-fun e!3575041 () Bool)

(assert (=> b!5825926 (= e!3575041 tp_is_empty!41007)))

(declare-fun b!5825927 () Bool)

(declare-fun tp!1608389 () Bool)

(declare-fun tp!1608391 () Bool)

(assert (=> b!5825927 (= e!3575041 (and tp!1608389 tp!1608391))))

(assert (=> b!5825446 (= tp!1608194 e!3575041)))

(declare-fun b!5825929 () Bool)

(declare-fun tp!1608392 () Bool)

(declare-fun tp!1608390 () Bool)

(assert (=> b!5825929 (= e!3575041 (and tp!1608392 tp!1608390))))

(declare-fun b!5825928 () Bool)

(declare-fun tp!1608388 () Bool)

(assert (=> b!5825928 (= e!3575041 tp!1608388)))

(assert (= (and b!5825446 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32267 r!7292)))) b!5825926))

(assert (= (and b!5825446 ((_ is Concat!24722) (regTwo!32266 (regOne!32267 r!7292)))) b!5825927))

(assert (= (and b!5825446 ((_ is Star!15877) (regTwo!32266 (regOne!32267 r!7292)))) b!5825928))

(assert (= (and b!5825446 ((_ is Union!15877) (regTwo!32266 (regOne!32267 r!7292)))) b!5825929))

(declare-fun condSetEmpty!39386 () Bool)

(assert (=> setNonEmpty!39384 (= condSetEmpty!39386 (= setRest!39384 ((as const (Array Context!10522 Bool)) false)))))

(declare-fun setRes!39386 () Bool)

(assert (=> setNonEmpty!39384 (= tp!1608185 setRes!39386)))

(declare-fun setIsEmpty!39386 () Bool)

(assert (=> setIsEmpty!39386 setRes!39386))

(declare-fun e!3575042 () Bool)

(declare-fun setElem!39386 () Context!10522)

(declare-fun setNonEmpty!39386 () Bool)

(declare-fun tp!1608394 () Bool)

(assert (=> setNonEmpty!39386 (= setRes!39386 (and tp!1608394 (inv!82939 setElem!39386) e!3575042))))

(declare-fun setRest!39386 () (InoxSet Context!10522))

(assert (=> setNonEmpty!39386 (= setRest!39384 ((_ map or) (store ((as const (Array Context!10522 Bool)) false) setElem!39386 true) setRest!39386))))

(declare-fun b!5825930 () Bool)

(declare-fun tp!1608393 () Bool)

(assert (=> b!5825930 (= e!3575042 tp!1608393)))

(assert (= (and setNonEmpty!39384 condSetEmpty!39386) setIsEmpty!39386))

(assert (= (and setNonEmpty!39384 (not condSetEmpty!39386)) setNonEmpty!39386))

(assert (= setNonEmpty!39386 b!5825930))

(declare-fun m!6758540 () Bool)

(assert (=> setNonEmpty!39386 m!6758540))

(declare-fun b!5825931 () Bool)

(declare-fun e!3575043 () Bool)

(assert (=> b!5825931 (= e!3575043 tp_is_empty!41007)))

(declare-fun b!5825932 () Bool)

(declare-fun tp!1608396 () Bool)

(declare-fun tp!1608398 () Bool)

(assert (=> b!5825932 (= e!3575043 (and tp!1608396 tp!1608398))))

(assert (=> b!5825447 (= tp!1608191 e!3575043)))

(declare-fun b!5825934 () Bool)

(declare-fun tp!1608399 () Bool)

(declare-fun tp!1608397 () Bool)

(assert (=> b!5825934 (= e!3575043 (and tp!1608399 tp!1608397))))

(declare-fun b!5825933 () Bool)

(declare-fun tp!1608395 () Bool)

(assert (=> b!5825933 (= e!3575043 tp!1608395)))

(assert (= (and b!5825447 ((_ is ElementMatch!15877) (reg!16206 (regOne!32267 r!7292)))) b!5825931))

(assert (= (and b!5825447 ((_ is Concat!24722) (reg!16206 (regOne!32267 r!7292)))) b!5825932))

(assert (= (and b!5825447 ((_ is Star!15877) (reg!16206 (regOne!32267 r!7292)))) b!5825933))

(assert (= (and b!5825447 ((_ is Union!15877) (reg!16206 (regOne!32267 r!7292)))) b!5825934))

(declare-fun b!5825935 () Bool)

(declare-fun e!3575044 () Bool)

(declare-fun tp!1608400 () Bool)

(declare-fun tp!1608401 () Bool)

(assert (=> b!5825935 (= e!3575044 (and tp!1608400 tp!1608401))))

(assert (=> b!5825440 (= tp!1608184 e!3575044)))

(assert (= (and b!5825440 ((_ is Cons!63806) (exprs!5761 setElem!39384))) b!5825935))

(declare-fun b!5825936 () Bool)

(declare-fun e!3575045 () Bool)

(assert (=> b!5825936 (= e!3575045 tp_is_empty!41007)))

(declare-fun b!5825937 () Bool)

(declare-fun tp!1608403 () Bool)

(declare-fun tp!1608405 () Bool)

(assert (=> b!5825937 (= e!3575045 (and tp!1608403 tp!1608405))))

(assert (=> b!5825418 (= tp!1608160 e!3575045)))

(declare-fun b!5825939 () Bool)

(declare-fun tp!1608406 () Bool)

(declare-fun tp!1608404 () Bool)

(assert (=> b!5825939 (= e!3575045 (and tp!1608406 tp!1608404))))

(declare-fun b!5825938 () Bool)

(declare-fun tp!1608402 () Bool)

(assert (=> b!5825938 (= e!3575045 tp!1608402)))

(assert (= (and b!5825418 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32266 r!7292)))) b!5825936))

(assert (= (and b!5825418 ((_ is Concat!24722) (regOne!32266 (regOne!32266 r!7292)))) b!5825937))

(assert (= (and b!5825418 ((_ is Star!15877) (regOne!32266 (regOne!32266 r!7292)))) b!5825938))

(assert (= (and b!5825418 ((_ is Union!15877) (regOne!32266 (regOne!32266 r!7292)))) b!5825939))

(declare-fun b!5825940 () Bool)

(declare-fun e!3575046 () Bool)

(assert (=> b!5825940 (= e!3575046 tp_is_empty!41007)))

(declare-fun b!5825941 () Bool)

(declare-fun tp!1608408 () Bool)

(declare-fun tp!1608410 () Bool)

(assert (=> b!5825941 (= e!3575046 (and tp!1608408 tp!1608410))))

(assert (=> b!5825418 (= tp!1608162 e!3575046)))

(declare-fun b!5825943 () Bool)

(declare-fun tp!1608411 () Bool)

(declare-fun tp!1608409 () Bool)

(assert (=> b!5825943 (= e!3575046 (and tp!1608411 tp!1608409))))

(declare-fun b!5825942 () Bool)

(declare-fun tp!1608407 () Bool)

(assert (=> b!5825942 (= e!3575046 tp!1608407)))

(assert (= (and b!5825418 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32266 r!7292)))) b!5825940))

(assert (= (and b!5825418 ((_ is Concat!24722) (regTwo!32266 (regOne!32266 r!7292)))) b!5825941))

(assert (= (and b!5825418 ((_ is Star!15877) (regTwo!32266 (regOne!32266 r!7292)))) b!5825942))

(assert (= (and b!5825418 ((_ is Union!15877) (regTwo!32266 (regOne!32266 r!7292)))) b!5825943))

(declare-fun b!5825944 () Bool)

(declare-fun e!3575047 () Bool)

(assert (=> b!5825944 (= e!3575047 tp_is_empty!41007)))

(declare-fun b!5825945 () Bool)

(declare-fun tp!1608413 () Bool)

(declare-fun tp!1608415 () Bool)

(assert (=> b!5825945 (= e!3575047 (and tp!1608413 tp!1608415))))

(assert (=> b!5825448 (= tp!1608195 e!3575047)))

(declare-fun b!5825947 () Bool)

(declare-fun tp!1608416 () Bool)

(declare-fun tp!1608414 () Bool)

(assert (=> b!5825947 (= e!3575047 (and tp!1608416 tp!1608414))))

(declare-fun b!5825946 () Bool)

(declare-fun tp!1608412 () Bool)

(assert (=> b!5825946 (= e!3575047 tp!1608412)))

(assert (= (and b!5825448 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32267 r!7292)))) b!5825944))

(assert (= (and b!5825448 ((_ is Concat!24722) (regOne!32267 (regOne!32267 r!7292)))) b!5825945))

(assert (= (and b!5825448 ((_ is Star!15877) (regOne!32267 (regOne!32267 r!7292)))) b!5825946))

(assert (= (and b!5825448 ((_ is Union!15877) (regOne!32267 (regOne!32267 r!7292)))) b!5825947))

(declare-fun b!5825948 () Bool)

(declare-fun e!3575048 () Bool)

(assert (=> b!5825948 (= e!3575048 tp_is_empty!41007)))

(declare-fun b!5825949 () Bool)

(declare-fun tp!1608418 () Bool)

(declare-fun tp!1608420 () Bool)

(assert (=> b!5825949 (= e!3575048 (and tp!1608418 tp!1608420))))

(assert (=> b!5825448 (= tp!1608193 e!3575048)))

(declare-fun b!5825951 () Bool)

(declare-fun tp!1608421 () Bool)

(declare-fun tp!1608419 () Bool)

(assert (=> b!5825951 (= e!3575048 (and tp!1608421 tp!1608419))))

(declare-fun b!5825950 () Bool)

(declare-fun tp!1608417 () Bool)

(assert (=> b!5825950 (= e!3575048 tp!1608417)))

(assert (= (and b!5825448 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32267 r!7292)))) b!5825948))

(assert (= (and b!5825448 ((_ is Concat!24722) (regTwo!32267 (regOne!32267 r!7292)))) b!5825949))

(assert (= (and b!5825448 ((_ is Star!15877) (regTwo!32267 (regOne!32267 r!7292)))) b!5825950))

(assert (= (and b!5825448 ((_ is Union!15877) (regTwo!32267 (regOne!32267 r!7292)))) b!5825951))

(declare-fun b!5825952 () Bool)

(declare-fun e!3575049 () Bool)

(assert (=> b!5825952 (= e!3575049 tp_is_empty!41007)))

(declare-fun b!5825953 () Bool)

(declare-fun tp!1608423 () Bool)

(declare-fun tp!1608425 () Bool)

(assert (=> b!5825953 (= e!3575049 (and tp!1608423 tp!1608425))))

(assert (=> b!5825435 (= tp!1608178 e!3575049)))

(declare-fun b!5825955 () Bool)

(declare-fun tp!1608426 () Bool)

(declare-fun tp!1608424 () Bool)

(assert (=> b!5825955 (= e!3575049 (and tp!1608426 tp!1608424))))

(declare-fun b!5825954 () Bool)

(declare-fun tp!1608422 () Bool)

(assert (=> b!5825954 (= e!3575049 tp!1608422)))

(assert (= (and b!5825435 ((_ is ElementMatch!15877) (h!70254 (exprs!5761 setElem!39378)))) b!5825952))

(assert (= (and b!5825435 ((_ is Concat!24722) (h!70254 (exprs!5761 setElem!39378)))) b!5825953))

(assert (= (and b!5825435 ((_ is Star!15877) (h!70254 (exprs!5761 setElem!39378)))) b!5825954))

(assert (= (and b!5825435 ((_ is Union!15877) (h!70254 (exprs!5761 setElem!39378)))) b!5825955))

(declare-fun b!5825956 () Bool)

(declare-fun e!3575050 () Bool)

(declare-fun tp!1608427 () Bool)

(declare-fun tp!1608428 () Bool)

(assert (=> b!5825956 (= e!3575050 (and tp!1608427 tp!1608428))))

(assert (=> b!5825435 (= tp!1608179 e!3575050)))

(assert (= (and b!5825435 ((_ is Cons!63806) (t!377285 (exprs!5761 setElem!39378)))) b!5825956))

(declare-fun b!5825957 () Bool)

(declare-fun e!3575051 () Bool)

(declare-fun tp!1608429 () Bool)

(declare-fun tp!1608430 () Bool)

(assert (=> b!5825957 (= e!3575051 (and tp!1608429 tp!1608430))))

(assert (=> b!5825406 (= tp!1608147 e!3575051)))

(assert (= (and b!5825406 ((_ is Cons!63806) (exprs!5761 (h!70255 (t!377286 zl!343))))) b!5825957))

(declare-fun b!5825958 () Bool)

(declare-fun e!3575052 () Bool)

(assert (=> b!5825958 (= e!3575052 tp_is_empty!41007)))

(declare-fun b!5825959 () Bool)

(declare-fun tp!1608432 () Bool)

(declare-fun tp!1608434 () Bool)

(assert (=> b!5825959 (= e!3575052 (and tp!1608432 tp!1608434))))

(assert (=> b!5825450 (= tp!1608197 e!3575052)))

(declare-fun b!5825961 () Bool)

(declare-fun tp!1608435 () Bool)

(declare-fun tp!1608433 () Bool)

(assert (=> b!5825961 (= e!3575052 (and tp!1608435 tp!1608433))))

(declare-fun b!5825960 () Bool)

(declare-fun tp!1608431 () Bool)

(assert (=> b!5825960 (= e!3575052 tp!1608431)))

(assert (= (and b!5825450 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32267 r!7292)))) b!5825958))

(assert (= (and b!5825450 ((_ is Concat!24722) (regOne!32266 (regTwo!32267 r!7292)))) b!5825959))

(assert (= (and b!5825450 ((_ is Star!15877) (regOne!32266 (regTwo!32267 r!7292)))) b!5825960))

(assert (= (and b!5825450 ((_ is Union!15877) (regOne!32266 (regTwo!32267 r!7292)))) b!5825961))

(declare-fun b!5825962 () Bool)

(declare-fun e!3575053 () Bool)

(assert (=> b!5825962 (= e!3575053 tp_is_empty!41007)))

(declare-fun b!5825963 () Bool)

(declare-fun tp!1608437 () Bool)

(declare-fun tp!1608439 () Bool)

(assert (=> b!5825963 (= e!3575053 (and tp!1608437 tp!1608439))))

(assert (=> b!5825450 (= tp!1608199 e!3575053)))

(declare-fun b!5825965 () Bool)

(declare-fun tp!1608440 () Bool)

(declare-fun tp!1608438 () Bool)

(assert (=> b!5825965 (= e!3575053 (and tp!1608440 tp!1608438))))

(declare-fun b!5825964 () Bool)

(declare-fun tp!1608436 () Bool)

(assert (=> b!5825964 (= e!3575053 tp!1608436)))

(assert (= (and b!5825450 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32267 r!7292)))) b!5825962))

(assert (= (and b!5825450 ((_ is Concat!24722) (regTwo!32266 (regTwo!32267 r!7292)))) b!5825963))

(assert (= (and b!5825450 ((_ is Star!15877) (regTwo!32266 (regTwo!32267 r!7292)))) b!5825964))

(assert (= (and b!5825450 ((_ is Union!15877) (regTwo!32266 (regTwo!32267 r!7292)))) b!5825965))

(declare-fun b!5825966 () Bool)

(declare-fun e!3575054 () Bool)

(declare-fun tp!1608441 () Bool)

(assert (=> b!5825966 (= e!3575054 (and tp_is_empty!41007 tp!1608441))))

(assert (=> b!5825429 (= tp!1608171 e!3575054)))

(assert (= (and b!5825429 ((_ is Cons!63808) (t!377287 (t!377287 s!2326)))) b!5825966))

(declare-fun b!5825968 () Bool)

(declare-fun e!3575056 () Bool)

(declare-fun tp!1608442 () Bool)

(assert (=> b!5825968 (= e!3575056 tp!1608442)))

(declare-fun e!3575055 () Bool)

(declare-fun b!5825967 () Bool)

(declare-fun tp!1608443 () Bool)

(assert (=> b!5825967 (= e!3575055 (and (inv!82939 (h!70255 (t!377286 (t!377286 zl!343)))) e!3575056 tp!1608443))))

(assert (=> b!5825405 (= tp!1608148 e!3575055)))

(assert (= b!5825967 b!5825968))

(assert (= (and b!5825405 ((_ is Cons!63807) (t!377286 (t!377286 zl!343)))) b!5825967))

(declare-fun m!6758542 () Bool)

(assert (=> b!5825967 m!6758542))

(declare-fun b!5825969 () Bool)

(declare-fun e!3575057 () Bool)

(assert (=> b!5825969 (= e!3575057 tp_is_empty!41007)))

(declare-fun b!5825970 () Bool)

(declare-fun tp!1608445 () Bool)

(declare-fun tp!1608447 () Bool)

(assert (=> b!5825970 (= e!3575057 (and tp!1608445 tp!1608447))))

(assert (=> b!5825444 (= tp!1608190 e!3575057)))

(declare-fun b!5825972 () Bool)

(declare-fun tp!1608448 () Bool)

(declare-fun tp!1608446 () Bool)

(assert (=> b!5825972 (= e!3575057 (and tp!1608448 tp!1608446))))

(declare-fun b!5825971 () Bool)

(declare-fun tp!1608444 () Bool)

(assert (=> b!5825971 (= e!3575057 tp!1608444)))

(assert (= (and b!5825444 ((_ is ElementMatch!15877) (regOne!32267 (reg!16206 r!7292)))) b!5825969))

(assert (= (and b!5825444 ((_ is Concat!24722) (regOne!32267 (reg!16206 r!7292)))) b!5825970))

(assert (= (and b!5825444 ((_ is Star!15877) (regOne!32267 (reg!16206 r!7292)))) b!5825971))

(assert (= (and b!5825444 ((_ is Union!15877) (regOne!32267 (reg!16206 r!7292)))) b!5825972))

(declare-fun b!5825973 () Bool)

(declare-fun e!3575058 () Bool)

(assert (=> b!5825973 (= e!3575058 tp_is_empty!41007)))

(declare-fun b!5825974 () Bool)

(declare-fun tp!1608450 () Bool)

(declare-fun tp!1608452 () Bool)

(assert (=> b!5825974 (= e!3575058 (and tp!1608450 tp!1608452))))

(assert (=> b!5825444 (= tp!1608188 e!3575058)))

(declare-fun b!5825976 () Bool)

(declare-fun tp!1608453 () Bool)

(declare-fun tp!1608451 () Bool)

(assert (=> b!5825976 (= e!3575058 (and tp!1608453 tp!1608451))))

(declare-fun b!5825975 () Bool)

(declare-fun tp!1608449 () Bool)

(assert (=> b!5825975 (= e!3575058 tp!1608449)))

(assert (= (and b!5825444 ((_ is ElementMatch!15877) (regTwo!32267 (reg!16206 r!7292)))) b!5825973))

(assert (= (and b!5825444 ((_ is Concat!24722) (regTwo!32267 (reg!16206 r!7292)))) b!5825974))

(assert (= (and b!5825444 ((_ is Star!15877) (regTwo!32267 (reg!16206 r!7292)))) b!5825975))

(assert (= (and b!5825444 ((_ is Union!15877) (regTwo!32267 (reg!16206 r!7292)))) b!5825976))

(declare-fun b!5825977 () Bool)

(declare-fun e!3575059 () Bool)

(assert (=> b!5825977 (= e!3575059 tp_is_empty!41007)))

(declare-fun b!5825978 () Bool)

(declare-fun tp!1608455 () Bool)

(declare-fun tp!1608457 () Bool)

(assert (=> b!5825978 (= e!3575059 (and tp!1608455 tp!1608457))))

(assert (=> b!5825424 (= tp!1608168 e!3575059)))

(declare-fun b!5825980 () Bool)

(declare-fun tp!1608458 () Bool)

(declare-fun tp!1608456 () Bool)

(assert (=> b!5825980 (= e!3575059 (and tp!1608458 tp!1608456))))

(declare-fun b!5825979 () Bool)

(declare-fun tp!1608454 () Bool)

(assert (=> b!5825979 (= e!3575059 tp!1608454)))

(assert (= (and b!5825424 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32266 r!7292)))) b!5825977))

(assert (= (and b!5825424 ((_ is Concat!24722) (regOne!32267 (regTwo!32266 r!7292)))) b!5825978))

(assert (= (and b!5825424 ((_ is Star!15877) (regOne!32267 (regTwo!32266 r!7292)))) b!5825979))

(assert (= (and b!5825424 ((_ is Union!15877) (regOne!32267 (regTwo!32266 r!7292)))) b!5825980))

(declare-fun b!5825981 () Bool)

(declare-fun e!3575060 () Bool)

(assert (=> b!5825981 (= e!3575060 tp_is_empty!41007)))

(declare-fun b!5825982 () Bool)

(declare-fun tp!1608460 () Bool)

(declare-fun tp!1608462 () Bool)

(assert (=> b!5825982 (= e!3575060 (and tp!1608460 tp!1608462))))

(assert (=> b!5825424 (= tp!1608166 e!3575060)))

(declare-fun b!5825984 () Bool)

(declare-fun tp!1608463 () Bool)

(declare-fun tp!1608461 () Bool)

(assert (=> b!5825984 (= e!3575060 (and tp!1608463 tp!1608461))))

(declare-fun b!5825983 () Bool)

(declare-fun tp!1608459 () Bool)

(assert (=> b!5825983 (= e!3575060 tp!1608459)))

(assert (= (and b!5825424 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32266 r!7292)))) b!5825981))

(assert (= (and b!5825424 ((_ is Concat!24722) (regTwo!32267 (regTwo!32266 r!7292)))) b!5825982))

(assert (= (and b!5825424 ((_ is Star!15877) (regTwo!32267 (regTwo!32266 r!7292)))) b!5825983))

(assert (= (and b!5825424 ((_ is Union!15877) (regTwo!32267 (regTwo!32266 r!7292)))) b!5825984))

(declare-fun b!5825985 () Bool)

(declare-fun e!3575061 () Bool)

(assert (=> b!5825985 (= e!3575061 tp_is_empty!41007)))

(declare-fun b!5825986 () Bool)

(declare-fun tp!1608465 () Bool)

(declare-fun tp!1608467 () Bool)

(assert (=> b!5825986 (= e!3575061 (and tp!1608465 tp!1608467))))

(assert (=> b!5825451 (= tp!1608196 e!3575061)))

(declare-fun b!5825988 () Bool)

(declare-fun tp!1608468 () Bool)

(declare-fun tp!1608466 () Bool)

(assert (=> b!5825988 (= e!3575061 (and tp!1608468 tp!1608466))))

(declare-fun b!5825987 () Bool)

(declare-fun tp!1608464 () Bool)

(assert (=> b!5825987 (= e!3575061 tp!1608464)))

(assert (= (and b!5825451 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32267 r!7292)))) b!5825985))

(assert (= (and b!5825451 ((_ is Concat!24722) (reg!16206 (regTwo!32267 r!7292)))) b!5825986))

(assert (= (and b!5825451 ((_ is Star!15877) (reg!16206 (regTwo!32267 r!7292)))) b!5825987))

(assert (= (and b!5825451 ((_ is Union!15877) (reg!16206 (regTwo!32267 r!7292)))) b!5825988))

(declare-fun b!5825989 () Bool)

(declare-fun e!3575062 () Bool)

(assert (=> b!5825989 (= e!3575062 tp_is_empty!41007)))

(declare-fun b!5825990 () Bool)

(declare-fun tp!1608470 () Bool)

(declare-fun tp!1608472 () Bool)

(assert (=> b!5825990 (= e!3575062 (and tp!1608470 tp!1608472))))

(assert (=> b!5825442 (= tp!1608187 e!3575062)))

(declare-fun b!5825992 () Bool)

(declare-fun tp!1608473 () Bool)

(declare-fun tp!1608471 () Bool)

(assert (=> b!5825992 (= e!3575062 (and tp!1608473 tp!1608471))))

(declare-fun b!5825991 () Bool)

(declare-fun tp!1608469 () Bool)

(assert (=> b!5825991 (= e!3575062 tp!1608469)))

(assert (= (and b!5825442 ((_ is ElementMatch!15877) (regOne!32266 (reg!16206 r!7292)))) b!5825989))

(assert (= (and b!5825442 ((_ is Concat!24722) (regOne!32266 (reg!16206 r!7292)))) b!5825990))

(assert (= (and b!5825442 ((_ is Star!15877) (regOne!32266 (reg!16206 r!7292)))) b!5825991))

(assert (= (and b!5825442 ((_ is Union!15877) (regOne!32266 (reg!16206 r!7292)))) b!5825992))

(declare-fun b!5825993 () Bool)

(declare-fun e!3575063 () Bool)

(assert (=> b!5825993 (= e!3575063 tp_is_empty!41007)))

(declare-fun b!5825994 () Bool)

(declare-fun tp!1608475 () Bool)

(declare-fun tp!1608477 () Bool)

(assert (=> b!5825994 (= e!3575063 (and tp!1608475 tp!1608477))))

(assert (=> b!5825442 (= tp!1608189 e!3575063)))

(declare-fun b!5825996 () Bool)

(declare-fun tp!1608478 () Bool)

(declare-fun tp!1608476 () Bool)

(assert (=> b!5825996 (= e!3575063 (and tp!1608478 tp!1608476))))

(declare-fun b!5825995 () Bool)

(declare-fun tp!1608474 () Bool)

(assert (=> b!5825995 (= e!3575063 tp!1608474)))

(assert (= (and b!5825442 ((_ is ElementMatch!15877) (regTwo!32266 (reg!16206 r!7292)))) b!5825993))

(assert (= (and b!5825442 ((_ is Concat!24722) (regTwo!32266 (reg!16206 r!7292)))) b!5825994))

(assert (= (and b!5825442 ((_ is Star!15877) (regTwo!32266 (reg!16206 r!7292)))) b!5825995))

(assert (= (and b!5825442 ((_ is Union!15877) (regTwo!32266 (reg!16206 r!7292)))) b!5825996))

(declare-fun b!5825997 () Bool)

(declare-fun e!3575064 () Bool)

(assert (=> b!5825997 (= e!3575064 tp_is_empty!41007)))

(declare-fun b!5825998 () Bool)

(declare-fun tp!1608480 () Bool)

(declare-fun tp!1608482 () Bool)

(assert (=> b!5825998 (= e!3575064 (and tp!1608480 tp!1608482))))

(assert (=> b!5825422 (= tp!1608165 e!3575064)))

(declare-fun b!5826000 () Bool)

(declare-fun tp!1608483 () Bool)

(declare-fun tp!1608481 () Bool)

(assert (=> b!5826000 (= e!3575064 (and tp!1608483 tp!1608481))))

(declare-fun b!5825999 () Bool)

(declare-fun tp!1608479 () Bool)

(assert (=> b!5825999 (= e!3575064 tp!1608479)))

(assert (= (and b!5825422 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32266 r!7292)))) b!5825997))

(assert (= (and b!5825422 ((_ is Concat!24722) (regOne!32266 (regTwo!32266 r!7292)))) b!5825998))

(assert (= (and b!5825422 ((_ is Star!15877) (regOne!32266 (regTwo!32266 r!7292)))) b!5825999))

(assert (= (and b!5825422 ((_ is Union!15877) (regOne!32266 (regTwo!32266 r!7292)))) b!5826000))

(declare-fun b!5826001 () Bool)

(declare-fun e!3575065 () Bool)

(assert (=> b!5826001 (= e!3575065 tp_is_empty!41007)))

(declare-fun b!5826002 () Bool)

(declare-fun tp!1608485 () Bool)

(declare-fun tp!1608487 () Bool)

(assert (=> b!5826002 (= e!3575065 (and tp!1608485 tp!1608487))))

(assert (=> b!5825422 (= tp!1608167 e!3575065)))

(declare-fun b!5826004 () Bool)

(declare-fun tp!1608488 () Bool)

(declare-fun tp!1608486 () Bool)

(assert (=> b!5826004 (= e!3575065 (and tp!1608488 tp!1608486))))

(declare-fun b!5826003 () Bool)

(declare-fun tp!1608484 () Bool)

(assert (=> b!5826003 (= e!3575065 tp!1608484)))

(assert (= (and b!5825422 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32266 r!7292)))) b!5826001))

(assert (= (and b!5825422 ((_ is Concat!24722) (regTwo!32266 (regTwo!32266 r!7292)))) b!5826002))

(assert (= (and b!5825422 ((_ is Star!15877) (regTwo!32266 (regTwo!32266 r!7292)))) b!5826003))

(assert (= (and b!5825422 ((_ is Union!15877) (regTwo!32266 (regTwo!32266 r!7292)))) b!5826004))

(declare-fun b!5826005 () Bool)

(declare-fun e!3575066 () Bool)

(assert (=> b!5826005 (= e!3575066 tp_is_empty!41007)))

(declare-fun b!5826006 () Bool)

(declare-fun tp!1608490 () Bool)

(declare-fun tp!1608492 () Bool)

(assert (=> b!5826006 (= e!3575066 (and tp!1608490 tp!1608492))))

(assert (=> b!5825452 (= tp!1608200 e!3575066)))

(declare-fun b!5826008 () Bool)

(declare-fun tp!1608493 () Bool)

(declare-fun tp!1608491 () Bool)

(assert (=> b!5826008 (= e!3575066 (and tp!1608493 tp!1608491))))

(declare-fun b!5826007 () Bool)

(declare-fun tp!1608489 () Bool)

(assert (=> b!5826007 (= e!3575066 tp!1608489)))

(assert (= (and b!5825452 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32267 r!7292)))) b!5826005))

(assert (= (and b!5825452 ((_ is Concat!24722) (regOne!32267 (regTwo!32267 r!7292)))) b!5826006))

(assert (= (and b!5825452 ((_ is Star!15877) (regOne!32267 (regTwo!32267 r!7292)))) b!5826007))

(assert (= (and b!5825452 ((_ is Union!15877) (regOne!32267 (regTwo!32267 r!7292)))) b!5826008))

(declare-fun b!5826009 () Bool)

(declare-fun e!3575067 () Bool)

(assert (=> b!5826009 (= e!3575067 tp_is_empty!41007)))

(declare-fun b!5826010 () Bool)

(declare-fun tp!1608495 () Bool)

(declare-fun tp!1608497 () Bool)

(assert (=> b!5826010 (= e!3575067 (and tp!1608495 tp!1608497))))

(assert (=> b!5825452 (= tp!1608198 e!3575067)))

(declare-fun b!5826012 () Bool)

(declare-fun tp!1608498 () Bool)

(declare-fun tp!1608496 () Bool)

(assert (=> b!5826012 (= e!3575067 (and tp!1608498 tp!1608496))))

(declare-fun b!5826011 () Bool)

(declare-fun tp!1608494 () Bool)

(assert (=> b!5826011 (= e!3575067 tp!1608494)))

(assert (= (and b!5825452 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32267 r!7292)))) b!5826009))

(assert (= (and b!5825452 ((_ is Concat!24722) (regTwo!32267 (regTwo!32267 r!7292)))) b!5826010))

(assert (= (and b!5825452 ((_ is Star!15877) (regTwo!32267 (regTwo!32267 r!7292)))) b!5826011))

(assert (= (and b!5825452 ((_ is Union!15877) (regTwo!32267 (regTwo!32267 r!7292)))) b!5826012))

(declare-fun b!5826013 () Bool)

(declare-fun e!3575068 () Bool)

(assert (=> b!5826013 (= e!3575068 tp_is_empty!41007)))

(declare-fun b!5826014 () Bool)

(declare-fun tp!1608500 () Bool)

(declare-fun tp!1608502 () Bool)

(assert (=> b!5826014 (= e!3575068 (and tp!1608500 tp!1608502))))

(assert (=> b!5825443 (= tp!1608186 e!3575068)))

(declare-fun b!5826016 () Bool)

(declare-fun tp!1608503 () Bool)

(declare-fun tp!1608501 () Bool)

(assert (=> b!5826016 (= e!3575068 (and tp!1608503 tp!1608501))))

(declare-fun b!5826015 () Bool)

(declare-fun tp!1608499 () Bool)

(assert (=> b!5826015 (= e!3575068 tp!1608499)))

(assert (= (and b!5825443 ((_ is ElementMatch!15877) (reg!16206 (reg!16206 r!7292)))) b!5826013))

(assert (= (and b!5825443 ((_ is Concat!24722) (reg!16206 (reg!16206 r!7292)))) b!5826014))

(assert (= (and b!5825443 ((_ is Star!15877) (reg!16206 (reg!16206 r!7292)))) b!5826015))

(assert (= (and b!5825443 ((_ is Union!15877) (reg!16206 (reg!16206 r!7292)))) b!5826016))

(declare-fun b!5826017 () Bool)

(declare-fun e!3575069 () Bool)

(assert (=> b!5826017 (= e!3575069 tp_is_empty!41007)))

(declare-fun b!5826018 () Bool)

(declare-fun tp!1608505 () Bool)

(declare-fun tp!1608507 () Bool)

(assert (=> b!5826018 (= e!3575069 (and tp!1608505 tp!1608507))))

(assert (=> b!5825423 (= tp!1608164 e!3575069)))

(declare-fun b!5826020 () Bool)

(declare-fun tp!1608508 () Bool)

(declare-fun tp!1608506 () Bool)

(assert (=> b!5826020 (= e!3575069 (and tp!1608508 tp!1608506))))

(declare-fun b!5826019 () Bool)

(declare-fun tp!1608504 () Bool)

(assert (=> b!5826019 (= e!3575069 tp!1608504)))

(assert (= (and b!5825423 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32266 r!7292)))) b!5826017))

(assert (= (and b!5825423 ((_ is Concat!24722) (reg!16206 (regTwo!32266 r!7292)))) b!5826018))

(assert (= (and b!5825423 ((_ is Star!15877) (reg!16206 (regTwo!32266 r!7292)))) b!5826019))

(assert (= (and b!5825423 ((_ is Union!15877) (reg!16206 (regTwo!32266 r!7292)))) b!5826020))

(declare-fun b_lambda!219611 () Bool)

(assert (= b_lambda!219603 (or d!1832610 b_lambda!219611)))

(declare-fun bs!1374071 () Bool)

(declare-fun d!1832800 () Bool)

(assert (= bs!1374071 (and d!1832800 d!1832610)))

(assert (=> bs!1374071 (= (dynLambda!24970 lambda!318807 (h!70254 lt!2302619)) (validRegex!7613 (h!70254 lt!2302619)))))

(declare-fun m!6758544 () Bool)

(assert (=> bs!1374071 m!6758544))

(assert (=> b!5825810 d!1832800))

(declare-fun b_lambda!219613 () Bool)

(assert (= b_lambda!219601 (or d!1832606 b_lambda!219613)))

(declare-fun bs!1374072 () Bool)

(declare-fun d!1832802 () Bool)

(assert (= bs!1374072 (and d!1832802 d!1832606)))

(assert (=> bs!1374072 (= (dynLambda!24970 lambda!318801 (h!70254 (exprs!5761 setElem!39378))) (validRegex!7613 (h!70254 (exprs!5761 setElem!39378))))))

(declare-fun m!6758546 () Bool)

(assert (=> bs!1374072 m!6758546))

(assert (=> b!5825751 d!1832802))

(declare-fun b_lambda!219615 () Bool)

(assert (= b_lambda!219609 (or d!1832612 b_lambda!219615)))

(declare-fun bs!1374073 () Bool)

(declare-fun d!1832804 () Bool)

(assert (= bs!1374073 (and d!1832804 d!1832612)))

(assert (=> bs!1374073 (= (dynLambda!24970 lambda!318810 (h!70254 (exprs!5761 (h!70255 zl!343)))) (validRegex!7613 (h!70254 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun m!6758548 () Bool)

(assert (=> bs!1374073 m!6758548))

(assert (=> b!5825893 d!1832804))

(declare-fun b_lambda!219617 () Bool)

(assert (= b_lambda!219605 (or d!1832568 b_lambda!219617)))

(declare-fun bs!1374074 () Bool)

(declare-fun d!1832806 () Bool)

(assert (= bs!1374074 (and d!1832806 d!1832568)))

(assert (=> bs!1374074 (= (dynLambda!24970 lambda!318794 (h!70254 (exprs!5761 (h!70255 zl!343)))) (validRegex!7613 (h!70254 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> bs!1374074 m!6758548))

(assert (=> b!5825829 d!1832806))

(declare-fun b_lambda!219619 () Bool)

(assert (= b_lambda!219607 (or d!1832608 b_lambda!219619)))

(declare-fun bs!1374075 () Bool)

(declare-fun d!1832808 () Bool)

(assert (= bs!1374075 (and d!1832808 d!1832608)))

(assert (=> bs!1374075 (= (dynLambda!24970 lambda!318804 (h!70254 (unfocusZipperList!1298 zl!343))) (validRegex!7613 (h!70254 (unfocusZipperList!1298 zl!343))))))

(declare-fun m!6758550 () Bool)

(assert (=> bs!1374075 m!6758550))

(assert (=> b!5825855 d!1832808))

(check-sat (not b!5825976) (not b!5825923) (not b!5826019) (not b!5825856) (not b!5825767) (not bm!454973) (not bs!1374073) (not b!5825992) (not b!5825956) (not d!1832798) (not b!5825975) (not b!5825933) (not b!5826020) (not b!5825898) (not b!5826011) (not b!5825949) (not b!5825901) (not b!5825743) (not b!5825899) (not b_lambda!219615) (not bm!454954) (not b!5825835) (not b!5825941) (not b!5825914) (not b!5825897) (not b!5825775) (not bs!1374074) (not b!5825808) (not b!5825938) (not bm!454953) (not b!5825932) (not b!5825971) (not b!5825774) (not b!5825951) (not b!5825924) (not b!5825982) (not bm!454967) (not b!5825955) (not b!5825959) (not bm!454968) (not b!5825765) (not b!5825954) (not b!5825987) (not b!5826008) (not bs!1374072) (not bm!454970) (not b!5825878) (not bm!454976) (not b!5825964) (not b!5826014) (not b!5826012) (not b!5825896) (not b!5825911) (not b!5825919) (not b!5825972) (not b!5825910) (not b!5825934) (not b!5825845) (not b!5825991) (not bm!454983) (not b!5825906) (not bm!454971) (not b!5825970) (not b!5825811) (not d!1832738) (not b!5826004) (not b!5825953) (not b!5825894) (not b!5825930) (not b!5825995) (not b!5825817) (not b!5825869) (not d!1832774) (not d!1832714) (not b!5825935) (not b!5826018) (not b!5825928) (not b!5825961) (not b!5826002) (not b!5825990) (not b!5825830) (not b!5825907) (not b!5825963) (not bm!454977) (not b!5825745) (not b!5825957) (not b!5826006) (not b!5825912) (not b!5825737) (not b!5825974) (not bs!1374071) (not b!5825752) (not d!1832766) (not bm!454963) (not b!5825902) (not b!5826016) (not b!5825927) (not b!5825986) (not b!5825978) (not b!5825937) (not b!5825771) (not b!5825950) (not b!5826010) (not b!5825967) (not bm!454974) (not setNonEmpty!39386) (not b!5825966) (not bm!454966) (not b!5825738) (not b_lambda!219619) (not bm!454952) (not b!5825836) (not bm!454979) (not b!5825925) (not b!5825947) (not b!5825742) (not b!5825758) (not b!5825996) (not b!5825946) tp_is_empty!41007 (not b!5825945) (not b!5825740) (not b!5825980) (not b!5825746) (not b!5825860) (not b!5825920) (not d!1832744) (not b!5825921) (not b!5825904) (not b!5825968) (not b!5825812) (not d!1832716) (not d!1832734) (not b!5825844) (not b!5825942) (not b!5825800) (not b!5825915) (not b!5825960) (not b!5825766) (not b!5825979) (not b!5825998) (not b!5825984) (not b!5825918) (not b!5825828) (not d!1832742) (not b!5825983) (not b!5825943) (not b!5825916) (not bm!454980) (not b!5825849) (not b_lambda!219617) (not d!1832792) (not b!5825929) (not b!5825887) (not b!5825939) (not b!5826000) (not b!5825999) (not b_lambda!219613) (not b!5825965) (not b!5825908) (not bs!1374075) (not b!5825988) (not b!5825994) (not d!1832762) (not b_lambda!219611) (not b!5825843) (not b!5825753) (not b!5826015) (not b!5826003) (not b!5826007) (not bm!454982) (not d!1832736))
(check-sat)
(get-model)

(declare-fun b!5826934 () Bool)

(declare-fun e!3575475 () Bool)

(declare-fun e!3575474 () Bool)

(assert (=> b!5826934 (= e!3575475 e!3575474)))

(declare-fun c!1032532 () Bool)

(assert (=> b!5826934 (= c!1032532 ((_ is Union!15877) lt!2302630))))

(declare-fun b!5826935 () Bool)

(declare-fun e!3575477 () Bool)

(declare-fun call!455074 () Bool)

(assert (=> b!5826935 (= e!3575477 call!455074)))

(declare-fun b!5826936 () Bool)

(declare-fun e!3575478 () Bool)

(declare-fun e!3575476 () Bool)

(assert (=> b!5826936 (= e!3575478 e!3575476)))

(declare-fun res!2456292 () Bool)

(assert (=> b!5826936 (=> (not res!2456292) (not e!3575476))))

(declare-fun call!455072 () Bool)

(assert (=> b!5826936 (= res!2456292 call!455072)))

(declare-fun bm!455067 () Bool)

(assert (=> bm!455067 (= call!455072 call!455074)))

(declare-fun b!5826937 () Bool)

(assert (=> b!5826937 (= e!3575475 e!3575477)))

(declare-fun res!2456293 () Bool)

(assert (=> b!5826937 (= res!2456293 (not (nullable!5880 (reg!16206 lt!2302630))))))

(assert (=> b!5826937 (=> (not res!2456293) (not e!3575477))))

(declare-fun d!1832980 () Bool)

(declare-fun res!2456296 () Bool)

(declare-fun e!3575473 () Bool)

(assert (=> d!1832980 (=> res!2456296 e!3575473)))

(assert (=> d!1832980 (= res!2456296 ((_ is ElementMatch!15877) lt!2302630))))

(assert (=> d!1832980 (= (validRegex!7613 lt!2302630) e!3575473)))

(declare-fun b!5826938 () Bool)

(declare-fun e!3575479 () Bool)

(declare-fun call!455073 () Bool)

(assert (=> b!5826938 (= e!3575479 call!455073)))

(declare-fun bm!455068 () Bool)

(assert (=> bm!455068 (= call!455073 (validRegex!7613 (ite c!1032532 (regTwo!32267 lt!2302630) (regTwo!32266 lt!2302630))))))

(declare-fun b!5826939 () Bool)

(declare-fun res!2456294 () Bool)

(assert (=> b!5826939 (=> res!2456294 e!3575478)))

(assert (=> b!5826939 (= res!2456294 (not ((_ is Concat!24722) lt!2302630)))))

(assert (=> b!5826939 (= e!3575474 e!3575478)))

(declare-fun b!5826940 () Bool)

(declare-fun res!2456295 () Bool)

(assert (=> b!5826940 (=> (not res!2456295) (not e!3575479))))

(assert (=> b!5826940 (= res!2456295 call!455072)))

(assert (=> b!5826940 (= e!3575474 e!3575479)))

(declare-fun c!1032531 () Bool)

(declare-fun bm!455069 () Bool)

(assert (=> bm!455069 (= call!455074 (validRegex!7613 (ite c!1032531 (reg!16206 lt!2302630) (ite c!1032532 (regOne!32267 lt!2302630) (regOne!32266 lt!2302630)))))))

(declare-fun b!5826941 () Bool)

(assert (=> b!5826941 (= e!3575473 e!3575475)))

(assert (=> b!5826941 (= c!1032531 ((_ is Star!15877) lt!2302630))))

(declare-fun b!5826942 () Bool)

(assert (=> b!5826942 (= e!3575476 call!455073)))

(assert (= (and d!1832980 (not res!2456296)) b!5826941))

(assert (= (and b!5826941 c!1032531) b!5826937))

(assert (= (and b!5826941 (not c!1032531)) b!5826934))

(assert (= (and b!5826937 res!2456293) b!5826935))

(assert (= (and b!5826934 c!1032532) b!5826940))

(assert (= (and b!5826934 (not c!1032532)) b!5826939))

(assert (= (and b!5826940 res!2456295) b!5826938))

(assert (= (and b!5826939 (not res!2456294)) b!5826936))

(assert (= (and b!5826936 res!2456292) b!5826942))

(assert (= (or b!5826938 b!5826942) bm!455068))

(assert (= (or b!5826940 b!5826936) bm!455067))

(assert (= (or b!5826935 bm!455067) bm!455069))

(declare-fun m!6758900 () Bool)

(assert (=> b!5826937 m!6758900))

(declare-fun m!6758902 () Bool)

(assert (=> bm!455068 m!6758902))

(declare-fun m!6758904 () Bool)

(assert (=> bm!455069 m!6758904))

(assert (=> d!1832714 d!1832980))

(declare-fun d!1832982 () Bool)

(declare-fun res!2456297 () Bool)

(declare-fun e!3575480 () Bool)

(assert (=> d!1832982 (=> res!2456297 e!3575480)))

(assert (=> d!1832982 (= res!2456297 ((_ is Nil!63806) (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> d!1832982 (= (forall!14968 (t!377285 (exprs!5761 (h!70255 zl!343))) lambda!318820) e!3575480)))

(declare-fun b!5826943 () Bool)

(declare-fun e!3575481 () Bool)

(assert (=> b!5826943 (= e!3575480 e!3575481)))

(declare-fun res!2456298 () Bool)

(assert (=> b!5826943 (=> (not res!2456298) (not e!3575481))))

(assert (=> b!5826943 (= res!2456298 (dynLambda!24970 lambda!318820 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun b!5826944 () Bool)

(assert (=> b!5826944 (= e!3575481 (forall!14968 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))) lambda!318820))))

(assert (= (and d!1832982 (not res!2456297)) b!5826943))

(assert (= (and b!5826943 res!2456298) b!5826944))

(declare-fun b_lambda!219661 () Bool)

(assert (=> (not b_lambda!219661) (not b!5826943)))

(declare-fun m!6758906 () Bool)

(assert (=> b!5826943 m!6758906))

(declare-fun m!6758908 () Bool)

(assert (=> b!5826944 m!6758908))

(assert (=> d!1832714 d!1832982))

(declare-fun d!1832984 () Bool)

(declare-fun res!2456299 () Bool)

(declare-fun e!3575482 () Bool)

(assert (=> d!1832984 (=> res!2456299 e!3575482)))

(assert (=> d!1832984 (= res!2456299 ((_ is Nil!63806) (exprs!5761 setElem!39384)))))

(assert (=> d!1832984 (= (forall!14968 (exprs!5761 setElem!39384) lambda!318824) e!3575482)))

(declare-fun b!5826945 () Bool)

(declare-fun e!3575483 () Bool)

(assert (=> b!5826945 (= e!3575482 e!3575483)))

(declare-fun res!2456300 () Bool)

(assert (=> b!5826945 (=> (not res!2456300) (not e!3575483))))

(assert (=> b!5826945 (= res!2456300 (dynLambda!24970 lambda!318824 (h!70254 (exprs!5761 setElem!39384))))))

(declare-fun b!5826946 () Bool)

(assert (=> b!5826946 (= e!3575483 (forall!14968 (t!377285 (exprs!5761 setElem!39384)) lambda!318824))))

(assert (= (and d!1832984 (not res!2456299)) b!5826945))

(assert (= (and b!5826945 res!2456300) b!5826946))

(declare-fun b_lambda!219663 () Bool)

(assert (=> (not b_lambda!219663) (not b!5826945)))

(declare-fun m!6758910 () Bool)

(assert (=> b!5826945 m!6758910))

(declare-fun m!6758912 () Bool)

(assert (=> b!5826946 m!6758912))

(assert (=> d!1832744 d!1832984))

(declare-fun d!1832986 () Bool)

(declare-fun lt!2302650 () Bool)

(assert (=> d!1832986 (= lt!2302650 (select (content!11713 (t!377286 lt!2302604)) (h!70255 lt!2302604)))))

(declare-fun e!3575488 () Bool)

(assert (=> d!1832986 (= lt!2302650 e!3575488)))

(declare-fun res!2456305 () Bool)

(assert (=> d!1832986 (=> (not res!2456305) (not e!3575488))))

(assert (=> d!1832986 (= res!2456305 ((_ is Cons!63807) (t!377286 lt!2302604)))))

(assert (=> d!1832986 (= (contains!19907 (t!377286 lt!2302604) (h!70255 lt!2302604)) lt!2302650)))

(declare-fun b!5826951 () Bool)

(declare-fun e!3575489 () Bool)

(assert (=> b!5826951 (= e!3575488 e!3575489)))

(declare-fun res!2456306 () Bool)

(assert (=> b!5826951 (=> res!2456306 e!3575489)))

(assert (=> b!5826951 (= res!2456306 (= (h!70255 (t!377286 lt!2302604)) (h!70255 lt!2302604)))))

(declare-fun b!5826952 () Bool)

(assert (=> b!5826952 (= e!3575489 (contains!19907 (t!377286 (t!377286 lt!2302604)) (h!70255 lt!2302604)))))

(assert (= (and d!1832986 res!2456305) b!5826951))

(assert (= (and b!5826951 (not res!2456306)) b!5826952))

(assert (=> d!1832986 m!6758464))

(declare-fun m!6758914 () Bool)

(assert (=> d!1832986 m!6758914))

(declare-fun m!6758916 () Bool)

(assert (=> b!5826952 m!6758916))

(assert (=> b!5825835 d!1832986))

(declare-fun d!1832988 () Bool)

(assert (=> d!1832988 (= (head!12318 (t!377285 (exprs!5761 (h!70255 zl!343)))) (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> b!5825742 d!1832988))

(declare-fun d!1832990 () Bool)

(assert (=> d!1832990 (= (nullable!5880 (reg!16206 lt!2302622)) (nullableFct!1886 (reg!16206 lt!2302622)))))

(declare-fun bs!1374265 () Bool)

(assert (= bs!1374265 d!1832990))

(declare-fun m!6758918 () Bool)

(assert (=> bs!1374265 m!6758918))

(assert (=> b!5825887 d!1832990))

(declare-fun b!5826953 () Bool)

(declare-fun e!3575492 () Bool)

(declare-fun e!3575491 () Bool)

(assert (=> b!5826953 (= e!3575492 e!3575491)))

(declare-fun c!1032534 () Bool)

(assert (=> b!5826953 (= c!1032534 ((_ is Union!15877) (h!70254 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5826954 () Bool)

(declare-fun e!3575494 () Bool)

(declare-fun call!455077 () Bool)

(assert (=> b!5826954 (= e!3575494 call!455077)))

(declare-fun b!5826955 () Bool)

(declare-fun e!3575495 () Bool)

(declare-fun e!3575493 () Bool)

(assert (=> b!5826955 (= e!3575495 e!3575493)))

(declare-fun res!2456307 () Bool)

(assert (=> b!5826955 (=> (not res!2456307) (not e!3575493))))

(declare-fun call!455075 () Bool)

(assert (=> b!5826955 (= res!2456307 call!455075)))

(declare-fun bm!455070 () Bool)

(assert (=> bm!455070 (= call!455075 call!455077)))

(declare-fun b!5826956 () Bool)

(assert (=> b!5826956 (= e!3575492 e!3575494)))

(declare-fun res!2456308 () Bool)

(assert (=> b!5826956 (= res!2456308 (not (nullable!5880 (reg!16206 (h!70254 (exprs!5761 (h!70255 zl!343)))))))))

(assert (=> b!5826956 (=> (not res!2456308) (not e!3575494))))

(declare-fun d!1832992 () Bool)

(declare-fun res!2456311 () Bool)

(declare-fun e!3575490 () Bool)

(assert (=> d!1832992 (=> res!2456311 e!3575490)))

(assert (=> d!1832992 (= res!2456311 ((_ is ElementMatch!15877) (h!70254 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> d!1832992 (= (validRegex!7613 (h!70254 (exprs!5761 (h!70255 zl!343)))) e!3575490)))

(declare-fun b!5826957 () Bool)

(declare-fun e!3575496 () Bool)

(declare-fun call!455076 () Bool)

(assert (=> b!5826957 (= e!3575496 call!455076)))

(declare-fun bm!455071 () Bool)

(assert (=> bm!455071 (= call!455076 (validRegex!7613 (ite c!1032534 (regTwo!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))) (regTwo!32266 (h!70254 (exprs!5761 (h!70255 zl!343)))))))))

(declare-fun b!5826958 () Bool)

(declare-fun res!2456309 () Bool)

(assert (=> b!5826958 (=> res!2456309 e!3575495)))

(assert (=> b!5826958 (= res!2456309 (not ((_ is Concat!24722) (h!70254 (exprs!5761 (h!70255 zl!343))))))))

(assert (=> b!5826958 (= e!3575491 e!3575495)))

(declare-fun b!5826959 () Bool)

(declare-fun res!2456310 () Bool)

(assert (=> b!5826959 (=> (not res!2456310) (not e!3575496))))

(assert (=> b!5826959 (= res!2456310 call!455075)))

(assert (=> b!5826959 (= e!3575491 e!3575496)))

(declare-fun bm!455072 () Bool)

(declare-fun c!1032533 () Bool)

(assert (=> bm!455072 (= call!455077 (validRegex!7613 (ite c!1032533 (reg!16206 (h!70254 (exprs!5761 (h!70255 zl!343)))) (ite c!1032534 (regOne!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))) (regOne!32266 (h!70254 (exprs!5761 (h!70255 zl!343))))))))))

(declare-fun b!5826960 () Bool)

(assert (=> b!5826960 (= e!3575490 e!3575492)))

(assert (=> b!5826960 (= c!1032533 ((_ is Star!15877) (h!70254 (exprs!5761 (h!70255 zl!343)))))))

(declare-fun b!5826961 () Bool)

(assert (=> b!5826961 (= e!3575493 call!455076)))

(assert (= (and d!1832992 (not res!2456311)) b!5826960))

(assert (= (and b!5826960 c!1032533) b!5826956))

(assert (= (and b!5826960 (not c!1032533)) b!5826953))

(assert (= (and b!5826956 res!2456308) b!5826954))

(assert (= (and b!5826953 c!1032534) b!5826959))

(assert (= (and b!5826953 (not c!1032534)) b!5826958))

(assert (= (and b!5826959 res!2456310) b!5826957))

(assert (= (and b!5826958 (not res!2456309)) b!5826955))

(assert (= (and b!5826955 res!2456307) b!5826961))

(assert (= (or b!5826957 b!5826961) bm!455071))

(assert (= (or b!5826959 b!5826955) bm!455070))

(assert (= (or b!5826954 bm!455070) bm!455072))

(declare-fun m!6758920 () Bool)

(assert (=> b!5826956 m!6758920))

(declare-fun m!6758922 () Bool)

(assert (=> bm!455071 m!6758922))

(declare-fun m!6758924 () Bool)

(assert (=> bm!455072 m!6758924))

(assert (=> bs!1374073 d!1832992))

(declare-fun d!1832994 () Bool)

(assert (=> d!1832994 (= (isEmpty!35677 (tail!11403 (t!377285 (exprs!5761 (h!70255 zl!343))))) ((_ is Nil!63806) (tail!11403 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(assert (=> b!5825746 d!1832994))

(declare-fun d!1832996 () Bool)

(assert (=> d!1832996 (= (tail!11403 (t!377285 (exprs!5761 (h!70255 zl!343)))) (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> b!5825746 d!1832996))

(declare-fun d!1832998 () Bool)

(declare-fun res!2456312 () Bool)

(declare-fun e!3575497 () Bool)

(assert (=> d!1832998 (=> res!2456312 e!3575497)))

(assert (=> d!1832998 (= res!2456312 ((_ is Nil!63806) (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> d!1832998 (= (forall!14968 (t!377285 (exprs!5761 (h!70255 zl!343))) lambda!318810) e!3575497)))

(declare-fun b!5826962 () Bool)

(declare-fun e!3575498 () Bool)

(assert (=> b!5826962 (= e!3575497 e!3575498)))

(declare-fun res!2456313 () Bool)

(assert (=> b!5826962 (=> (not res!2456313) (not e!3575498))))

(assert (=> b!5826962 (= res!2456313 (dynLambda!24970 lambda!318810 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun b!5826963 () Bool)

(assert (=> b!5826963 (= e!3575498 (forall!14968 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))) lambda!318810))))

(assert (= (and d!1832998 (not res!2456312)) b!5826962))

(assert (= (and b!5826962 res!2456313) b!5826963))

(declare-fun b_lambda!219665 () Bool)

(assert (=> (not b_lambda!219665) (not b!5826962)))

(declare-fun m!6758926 () Bool)

(assert (=> b!5826962 m!6758926))

(declare-fun m!6758928 () Bool)

(assert (=> b!5826963 m!6758928))

(assert (=> b!5825894 d!1832998))

(declare-fun b!5826964 () Bool)

(declare-fun e!3575501 () Bool)

(declare-fun e!3575500 () Bool)

(assert (=> b!5826964 (= e!3575501 e!3575500)))

(declare-fun c!1032536 () Bool)

(assert (=> b!5826964 (= c!1032536 ((_ is Union!15877) lt!2302634))))

(declare-fun b!5826965 () Bool)

(declare-fun e!3575503 () Bool)

(declare-fun call!455080 () Bool)

(assert (=> b!5826965 (= e!3575503 call!455080)))

(declare-fun b!5826966 () Bool)

(declare-fun e!3575504 () Bool)

(declare-fun e!3575502 () Bool)

(assert (=> b!5826966 (= e!3575504 e!3575502)))

(declare-fun res!2456314 () Bool)

(assert (=> b!5826966 (=> (not res!2456314) (not e!3575502))))

(declare-fun call!455078 () Bool)

(assert (=> b!5826966 (= res!2456314 call!455078)))

(declare-fun bm!455073 () Bool)

(assert (=> bm!455073 (= call!455078 call!455080)))

(declare-fun b!5826967 () Bool)

(assert (=> b!5826967 (= e!3575501 e!3575503)))

(declare-fun res!2456315 () Bool)

(assert (=> b!5826967 (= res!2456315 (not (nullable!5880 (reg!16206 lt!2302634))))))

(assert (=> b!5826967 (=> (not res!2456315) (not e!3575503))))

(declare-fun d!1833000 () Bool)

(declare-fun res!2456318 () Bool)

(declare-fun e!3575499 () Bool)

(assert (=> d!1833000 (=> res!2456318 e!3575499)))

(assert (=> d!1833000 (= res!2456318 ((_ is ElementMatch!15877) lt!2302634))))

(assert (=> d!1833000 (= (validRegex!7613 lt!2302634) e!3575499)))

(declare-fun b!5826968 () Bool)

(declare-fun e!3575505 () Bool)

(declare-fun call!455079 () Bool)

(assert (=> b!5826968 (= e!3575505 call!455079)))

(declare-fun bm!455074 () Bool)

(assert (=> bm!455074 (= call!455079 (validRegex!7613 (ite c!1032536 (regTwo!32267 lt!2302634) (regTwo!32266 lt!2302634))))))

(declare-fun b!5826969 () Bool)

(declare-fun res!2456316 () Bool)

(assert (=> b!5826969 (=> res!2456316 e!3575504)))

(assert (=> b!5826969 (= res!2456316 (not ((_ is Concat!24722) lt!2302634)))))

(assert (=> b!5826969 (= e!3575500 e!3575504)))

(declare-fun b!5826970 () Bool)

(declare-fun res!2456317 () Bool)

(assert (=> b!5826970 (=> (not res!2456317) (not e!3575505))))

(assert (=> b!5826970 (= res!2456317 call!455078)))

(assert (=> b!5826970 (= e!3575500 e!3575505)))

(declare-fun c!1032535 () Bool)

(declare-fun bm!455075 () Bool)

(assert (=> bm!455075 (= call!455080 (validRegex!7613 (ite c!1032535 (reg!16206 lt!2302634) (ite c!1032536 (regOne!32267 lt!2302634) (regOne!32266 lt!2302634)))))))

(declare-fun b!5826971 () Bool)

(assert (=> b!5826971 (= e!3575499 e!3575501)))

(assert (=> b!5826971 (= c!1032535 ((_ is Star!15877) lt!2302634))))

(declare-fun b!5826972 () Bool)

(assert (=> b!5826972 (= e!3575502 call!455079)))

(assert (= (and d!1833000 (not res!2456318)) b!5826971))

(assert (= (and b!5826971 c!1032535) b!5826967))

(assert (= (and b!5826971 (not c!1032535)) b!5826964))

(assert (= (and b!5826967 res!2456315) b!5826965))

(assert (= (and b!5826964 c!1032536) b!5826970))

(assert (= (and b!5826964 (not c!1032536)) b!5826969))

(assert (= (and b!5826970 res!2456317) b!5826968))

(assert (= (and b!5826969 (not res!2456316)) b!5826966))

(assert (= (and b!5826966 res!2456314) b!5826972))

(assert (= (or b!5826968 b!5826972) bm!455074))

(assert (= (or b!5826970 b!5826966) bm!455073))

(assert (= (or b!5826965 bm!455073) bm!455075))

(declare-fun m!6758930 () Bool)

(assert (=> b!5826967 m!6758930))

(declare-fun m!6758932 () Bool)

(assert (=> bm!455074 m!6758932))

(declare-fun m!6758934 () Bool)

(assert (=> bm!455075 m!6758934))

(assert (=> d!1832738 d!1833000))

(assert (=> d!1832738 d!1832604))

(declare-fun b!5826973 () Bool)

(declare-fun e!3575508 () Bool)

(declare-fun e!3575507 () Bool)

(assert (=> b!5826973 (= e!3575508 e!3575507)))

(declare-fun c!1032538 () Bool)

(assert (=> b!5826973 (= c!1032538 ((_ is Union!15877) (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))))))

(declare-fun b!5826974 () Bool)

(declare-fun e!3575510 () Bool)

(declare-fun call!455083 () Bool)

(assert (=> b!5826974 (= e!3575510 call!455083)))

(declare-fun b!5826975 () Bool)

(declare-fun e!3575511 () Bool)

(declare-fun e!3575509 () Bool)

(assert (=> b!5826975 (= e!3575511 e!3575509)))

(declare-fun res!2456319 () Bool)

(assert (=> b!5826975 (=> (not res!2456319) (not e!3575509))))

(declare-fun call!455081 () Bool)

(assert (=> b!5826975 (= res!2456319 call!455081)))

(declare-fun bm!455076 () Bool)

(assert (=> bm!455076 (= call!455081 call!455083)))

(declare-fun b!5826976 () Bool)

(assert (=> b!5826976 (= e!3575508 e!3575510)))

(declare-fun res!2456320 () Bool)

(assert (=> b!5826976 (= res!2456320 (not (nullable!5880 (reg!16206 (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))))))))

(assert (=> b!5826976 (=> (not res!2456320) (not e!3575510))))

(declare-fun d!1833002 () Bool)

(declare-fun res!2456323 () Bool)

(declare-fun e!3575506 () Bool)

(assert (=> d!1833002 (=> res!2456323 e!3575506)))

(assert (=> d!1833002 (= res!2456323 ((_ is ElementMatch!15877) (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))))))

(assert (=> d!1833002 (= (validRegex!7613 (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))) e!3575506)))

(declare-fun b!5826977 () Bool)

(declare-fun e!3575512 () Bool)

(declare-fun call!455082 () Bool)

(assert (=> b!5826977 (= e!3575512 call!455082)))

(declare-fun bm!455077 () Bool)

(assert (=> bm!455077 (= call!455082 (validRegex!7613 (ite c!1032538 (regTwo!32267 (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))) (regTwo!32266 (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))))))))

(declare-fun b!5826978 () Bool)

(declare-fun res!2456321 () Bool)

(assert (=> b!5826978 (=> res!2456321 e!3575511)))

(assert (=> b!5826978 (= res!2456321 (not ((_ is Concat!24722) (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622)))))))

(assert (=> b!5826978 (= e!3575507 e!3575511)))

(declare-fun b!5826979 () Bool)

(declare-fun res!2456322 () Bool)

(assert (=> b!5826979 (=> (not res!2456322) (not e!3575512))))

(assert (=> b!5826979 (= res!2456322 call!455081)))

(assert (=> b!5826979 (= e!3575507 e!3575512)))

(declare-fun bm!455078 () Bool)

(declare-fun c!1032537 () Bool)

(assert (=> bm!455078 (= call!455083 (validRegex!7613 (ite c!1032537 (reg!16206 (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))) (ite c!1032538 (regOne!32267 (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))) (regOne!32266 (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622)))))))))

(declare-fun b!5826980 () Bool)

(assert (=> b!5826980 (= e!3575506 e!3575508)))

(assert (=> b!5826980 (= c!1032537 ((_ is Star!15877) (ite c!1032437 (regTwo!32267 lt!2302622) (regTwo!32266 lt!2302622))))))

(declare-fun b!5826981 () Bool)

(assert (=> b!5826981 (= e!3575509 call!455082)))

(assert (= (and d!1833002 (not res!2456323)) b!5826980))

(assert (= (and b!5826980 c!1032537) b!5826976))

(assert (= (and b!5826980 (not c!1032537)) b!5826973))

(assert (= (and b!5826976 res!2456320) b!5826974))

(assert (= (and b!5826973 c!1032538) b!5826979))

(assert (= (and b!5826973 (not c!1032538)) b!5826978))

(assert (= (and b!5826979 res!2456322) b!5826977))

(assert (= (and b!5826978 (not res!2456321)) b!5826975))

(assert (= (and b!5826975 res!2456319) b!5826981))

(assert (= (or b!5826977 b!5826981) bm!455077))

(assert (= (or b!5826979 b!5826975) bm!455076))

(assert (= (or b!5826974 bm!455076) bm!455078))

(declare-fun m!6758936 () Bool)

(assert (=> b!5826976 m!6758936))

(declare-fun m!6758938 () Bool)

(assert (=> bm!455077 m!6758938))

(declare-fun m!6758940 () Bool)

(assert (=> bm!455078 m!6758940))

(assert (=> bm!454982 d!1833002))

(declare-fun bs!1374266 () Bool)

(declare-fun b!5826989 () Bool)

(assert (= bs!1374266 (and b!5826989 b!5825822)))

(declare-fun lambda!318844 () Int)

(assert (=> bs!1374266 (not (= lambda!318844 lambda!318826))))

(declare-fun bs!1374267 () Bool)

(assert (= bs!1374267 (and b!5826989 b!5825819)))

(assert (=> bs!1374267 (= (and (= (reg!16206 (regTwo!32267 (regTwo!32267 r!7292))) (reg!16206 (regOne!32267 r!7292))) (= (regTwo!32267 (regTwo!32267 r!7292)) (regOne!32267 r!7292))) (= lambda!318844 lambda!318825))))

(declare-fun bs!1374268 () Bool)

(assert (= bs!1374268 (and b!5826989 b!5825760)))

(assert (=> bs!1374268 (= (and (= (reg!16206 (regTwo!32267 (regTwo!32267 r!7292))) (reg!16206 (regTwo!32267 r!7292))) (= (regTwo!32267 (regTwo!32267 r!7292)) (regTwo!32267 r!7292))) (= lambda!318844 lambda!318821))))

(declare-fun bs!1374269 () Bool)

(assert (= bs!1374269 (and b!5826989 b!5825301)))

(assert (=> bs!1374269 (not (= lambda!318844 lambda!318800))))

(declare-fun bs!1374270 () Bool)

(assert (= bs!1374270 (and b!5826989 b!5825298)))

(assert (=> bs!1374270 (= (and (= (reg!16206 (regTwo!32267 (regTwo!32267 r!7292))) (reg!16206 r!7292)) (= (regTwo!32267 (regTwo!32267 r!7292)) r!7292)) (= lambda!318844 lambda!318799))))

(declare-fun bs!1374271 () Bool)

(assert (= bs!1374271 (and b!5826989 b!5825763)))

(assert (=> bs!1374271 (not (= lambda!318844 lambda!318822))))

(assert (=> b!5826989 true))

(assert (=> b!5826989 true))

(declare-fun bs!1374272 () Bool)

(declare-fun b!5826992 () Bool)

(assert (= bs!1374272 (and b!5826992 b!5825822)))

(declare-fun lambda!318845 () Int)

(assert (=> bs!1374272 (= (and (= (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292))) (regOne!32266 (regOne!32267 r!7292))) (= (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))) (regTwo!32266 (regOne!32267 r!7292)))) (= lambda!318845 lambda!318826))))

(declare-fun bs!1374273 () Bool)

(assert (= bs!1374273 (and b!5826992 b!5825819)))

(assert (=> bs!1374273 (not (= lambda!318845 lambda!318825))))

(declare-fun bs!1374274 () Bool)

(assert (= bs!1374274 (and b!5826992 b!5826989)))

(assert (=> bs!1374274 (not (= lambda!318845 lambda!318844))))

(declare-fun bs!1374275 () Bool)

(assert (= bs!1374275 (and b!5826992 b!5825760)))

(assert (=> bs!1374275 (not (= lambda!318845 lambda!318821))))

(declare-fun bs!1374276 () Bool)

(assert (= bs!1374276 (and b!5826992 b!5825301)))

(assert (=> bs!1374276 (= (and (= (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292))) (regOne!32266 r!7292)) (= (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))) (regTwo!32266 r!7292))) (= lambda!318845 lambda!318800))))

(declare-fun bs!1374277 () Bool)

(assert (= bs!1374277 (and b!5826992 b!5825298)))

(assert (=> bs!1374277 (not (= lambda!318845 lambda!318799))))

(declare-fun bs!1374278 () Bool)

(assert (= bs!1374278 (and b!5826992 b!5825763)))

(assert (=> bs!1374278 (= (and (= (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292))) (regOne!32266 (regTwo!32267 r!7292))) (= (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))) (regTwo!32266 (regTwo!32267 r!7292)))) (= lambda!318845 lambda!318822))))

(assert (=> b!5826992 true))

(assert (=> b!5826992 true))

(declare-fun b!5826982 () Bool)

(declare-fun e!3575515 () Bool)

(assert (=> b!5826982 (= e!3575515 (matchRSpec!2978 (regTwo!32267 (regTwo!32267 (regTwo!32267 r!7292))) s!2326))))

(declare-fun b!5826983 () Bool)

(declare-fun c!1032539 () Bool)

(assert (=> b!5826983 (= c!1032539 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32267 r!7292))))))

(declare-fun e!3575516 () Bool)

(declare-fun e!3575519 () Bool)

(assert (=> b!5826983 (= e!3575516 e!3575519)))

(declare-fun b!5826984 () Bool)

(declare-fun c!1032542 () Bool)

(assert (=> b!5826984 (= c!1032542 ((_ is Union!15877) (regTwo!32267 (regTwo!32267 r!7292))))))

(declare-fun e!3575518 () Bool)

(assert (=> b!5826984 (= e!3575519 e!3575518)))

(declare-fun b!5826985 () Bool)

(declare-fun e!3575514 () Bool)

(declare-fun call!455085 () Bool)

(assert (=> b!5826985 (= e!3575514 call!455085)))

(declare-fun b!5826986 () Bool)

(assert (=> b!5826986 (= e!3575514 e!3575516)))

(declare-fun res!2456326 () Bool)

(assert (=> b!5826986 (= res!2456326 (not ((_ is EmptyLang!15877) (regTwo!32267 (regTwo!32267 r!7292)))))))

(assert (=> b!5826986 (=> (not res!2456326) (not e!3575516))))

(declare-fun call!455084 () Bool)

(declare-fun bm!455079 () Bool)

(declare-fun c!1032540 () Bool)

(assert (=> bm!455079 (= call!455084 (Exists!2955 (ite c!1032540 lambda!318844 lambda!318845)))))

(declare-fun b!5826987 () Bool)

(assert (=> b!5826987 (= e!3575518 e!3575515)))

(declare-fun res!2456325 () Bool)

(assert (=> b!5826987 (= res!2456325 (matchRSpec!2978 (regOne!32267 (regTwo!32267 (regTwo!32267 r!7292))) s!2326))))

(assert (=> b!5826987 (=> res!2456325 e!3575515)))

(declare-fun bm!455080 () Bool)

(assert (=> bm!455080 (= call!455085 (isEmpty!35676 s!2326))))

(declare-fun d!1833004 () Bool)

(declare-fun c!1032541 () Bool)

(assert (=> d!1833004 (= c!1032541 ((_ is EmptyExpr!15877) (regTwo!32267 (regTwo!32267 r!7292))))))

(assert (=> d!1833004 (= (matchRSpec!2978 (regTwo!32267 (regTwo!32267 r!7292)) s!2326) e!3575514)))

(declare-fun b!5826988 () Bool)

(declare-fun e!3575517 () Bool)

(assert (=> b!5826988 (= e!3575518 e!3575517)))

(assert (=> b!5826988 (= c!1032540 ((_ is Star!15877) (regTwo!32267 (regTwo!32267 r!7292))))))

(declare-fun e!3575513 () Bool)

(assert (=> b!5826989 (= e!3575513 call!455084)))

(declare-fun b!5826990 () Bool)

(assert (=> b!5826990 (= e!3575519 (= s!2326 (Cons!63808 (c!1032237 (regTwo!32267 (regTwo!32267 r!7292))) Nil!63808)))))

(declare-fun b!5826991 () Bool)

(declare-fun res!2456324 () Bool)

(assert (=> b!5826991 (=> res!2456324 e!3575513)))

(assert (=> b!5826991 (= res!2456324 call!455085)))

(assert (=> b!5826991 (= e!3575517 e!3575513)))

(assert (=> b!5826992 (= e!3575517 call!455084)))

(assert (= (and d!1833004 c!1032541) b!5826985))

(assert (= (and d!1833004 (not c!1032541)) b!5826986))

(assert (= (and b!5826986 res!2456326) b!5826983))

(assert (= (and b!5826983 c!1032539) b!5826990))

(assert (= (and b!5826983 (not c!1032539)) b!5826984))

(assert (= (and b!5826984 c!1032542) b!5826987))

(assert (= (and b!5826984 (not c!1032542)) b!5826988))

(assert (= (and b!5826987 (not res!2456325)) b!5826982))

(assert (= (and b!5826988 c!1032540) b!5826991))

(assert (= (and b!5826988 (not c!1032540)) b!5826992))

(assert (= (and b!5826991 (not res!2456324)) b!5826989))

(assert (= (or b!5826989 b!5826992) bm!455079))

(assert (= (or b!5826985 b!5826991) bm!455080))

(declare-fun m!6758942 () Bool)

(assert (=> b!5826982 m!6758942))

(declare-fun m!6758944 () Bool)

(assert (=> bm!455079 m!6758944))

(declare-fun m!6758946 () Bool)

(assert (=> b!5826987 m!6758946))

(assert (=> bm!455080 m!6758162))

(assert (=> b!5825753 d!1833004))

(declare-fun d!1833006 () Bool)

(assert (=> d!1833006 (= (isEmpty!35677 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))) ((_ is Nil!63806) (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(assert (=> b!5825896 d!1833006))

(assert (=> d!1832798 d!1832596))

(assert (=> d!1832798 d!1832598))

(declare-fun d!1833008 () Bool)

(assert (=> d!1833008 (= (nullable!5880 (derivativeStep!4620 r!7292 (head!12317 s!2326))) (nullableFct!1886 (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(declare-fun bs!1374279 () Bool)

(assert (= bs!1374279 d!1833008))

(assert (=> bs!1374279 m!6758156))

(declare-fun m!6758948 () Bool)

(assert (=> bs!1374279 m!6758948))

(assert (=> b!5825774 d!1833008))

(declare-fun d!1833010 () Bool)

(declare-fun res!2456327 () Bool)

(declare-fun e!3575520 () Bool)

(assert (=> d!1833010 (=> res!2456327 e!3575520)))

(assert (=> d!1833010 (= res!2456327 ((_ is Nil!63806) (exprs!5761 (h!70255 (t!377286 zl!343)))))))

(assert (=> d!1833010 (= (forall!14968 (exprs!5761 (h!70255 (t!377286 zl!343))) lambda!318827) e!3575520)))

(declare-fun b!5826993 () Bool)

(declare-fun e!3575521 () Bool)

(assert (=> b!5826993 (= e!3575520 e!3575521)))

(declare-fun res!2456328 () Bool)

(assert (=> b!5826993 (=> (not res!2456328) (not e!3575521))))

(assert (=> b!5826993 (= res!2456328 (dynLambda!24970 lambda!318827 (h!70254 (exprs!5761 (h!70255 (t!377286 zl!343))))))))

(declare-fun b!5826994 () Bool)

(assert (=> b!5826994 (= e!3575521 (forall!14968 (t!377285 (exprs!5761 (h!70255 (t!377286 zl!343)))) lambda!318827))))

(assert (= (and d!1833010 (not res!2456327)) b!5826993))

(assert (= (and b!5826993 res!2456328) b!5826994))

(declare-fun b_lambda!219667 () Bool)

(assert (=> (not b_lambda!219667) (not b!5826993)))

(declare-fun m!6758950 () Bool)

(assert (=> b!5826993 m!6758950))

(declare-fun m!6758952 () Bool)

(assert (=> b!5826994 m!6758952))

(assert (=> d!1832774 d!1833010))

(declare-fun d!1833012 () Bool)

(assert (=> d!1833012 (= (isEmpty!35677 (tail!11403 (t!377285 (unfocusZipperList!1298 zl!343)))) ((_ is Nil!63806) (tail!11403 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(assert (=> b!5825898 d!1833012))

(declare-fun d!1833014 () Bool)

(assert (=> d!1833014 (= (tail!11403 (t!377285 (unfocusZipperList!1298 zl!343))) (t!377285 (t!377285 (unfocusZipperList!1298 zl!343))))))

(assert (=> b!5825898 d!1833014))

(declare-fun b!5827009 () Bool)

(declare-fun e!3575535 () Bool)

(declare-fun e!3575537 () Bool)

(assert (=> b!5827009 (= e!3575535 e!3575537)))

(declare-fun res!2456343 () Bool)

(assert (=> b!5827009 (=> (not res!2456343) (not e!3575537))))

(assert (=> b!5827009 (= res!2456343 (and (not ((_ is EmptyLang!15877) r!7292)) (not ((_ is ElementMatch!15877) r!7292))))))

(declare-fun bm!455085 () Bool)

(declare-fun call!455090 () Bool)

(declare-fun c!1032545 () Bool)

(assert (=> bm!455085 (= call!455090 (nullable!5880 (ite c!1032545 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))

(declare-fun b!5827010 () Bool)

(declare-fun e!3575539 () Bool)

(declare-fun e!3575538 () Bool)

(assert (=> b!5827010 (= e!3575539 e!3575538)))

(declare-fun res!2456341 () Bool)

(declare-fun call!455091 () Bool)

(assert (=> b!5827010 (= res!2456341 call!455091)))

(assert (=> b!5827010 (=> res!2456341 e!3575538)))

(declare-fun b!5827011 () Bool)

(assert (=> b!5827011 (= e!3575538 call!455090)))

(declare-fun d!1833016 () Bool)

(declare-fun res!2456339 () Bool)

(assert (=> d!1833016 (=> res!2456339 e!3575535)))

(assert (=> d!1833016 (= res!2456339 ((_ is EmptyExpr!15877) r!7292))))

(assert (=> d!1833016 (= (nullableFct!1886 r!7292) e!3575535)))

(declare-fun b!5827012 () Bool)

(declare-fun e!3575536 () Bool)

(assert (=> b!5827012 (= e!3575537 e!3575536)))

(declare-fun res!2456342 () Bool)

(assert (=> b!5827012 (=> res!2456342 e!3575536)))

(assert (=> b!5827012 (= res!2456342 ((_ is Star!15877) r!7292))))

(declare-fun b!5827013 () Bool)

(declare-fun e!3575534 () Bool)

(assert (=> b!5827013 (= e!3575539 e!3575534)))

(declare-fun res!2456340 () Bool)

(assert (=> b!5827013 (= res!2456340 call!455091)))

(assert (=> b!5827013 (=> (not res!2456340) (not e!3575534))))

(declare-fun b!5827014 () Bool)

(assert (=> b!5827014 (= e!3575536 e!3575539)))

(assert (=> b!5827014 (= c!1032545 ((_ is Union!15877) r!7292))))

(declare-fun bm!455086 () Bool)

(assert (=> bm!455086 (= call!455091 (nullable!5880 (ite c!1032545 (regOne!32267 r!7292) (regOne!32266 r!7292))))))

(declare-fun b!5827015 () Bool)

(assert (=> b!5827015 (= e!3575534 call!455090)))

(assert (= (and d!1833016 (not res!2456339)) b!5827009))

(assert (= (and b!5827009 res!2456343) b!5827012))

(assert (= (and b!5827012 (not res!2456342)) b!5827014))

(assert (= (and b!5827014 c!1032545) b!5827010))

(assert (= (and b!5827014 (not c!1032545)) b!5827013))

(assert (= (and b!5827010 (not res!2456341)) b!5827011))

(assert (= (and b!5827013 res!2456340) b!5827015))

(assert (= (or b!5827011 b!5827015) bm!455085))

(assert (= (or b!5827010 b!5827013) bm!455086))

(declare-fun m!6758954 () Bool)

(assert (=> bm!455085 m!6758954))

(declare-fun m!6758956 () Bool)

(assert (=> bm!455086 m!6758956))

(assert (=> d!1832734 d!1833016))

(declare-fun bs!1374280 () Bool)

(declare-fun b!5827023 () Bool)

(assert (= bs!1374280 (and b!5827023 b!5825822)))

(declare-fun lambda!318846 () Int)

(assert (=> bs!1374280 (not (= lambda!318846 lambda!318826))))

(declare-fun bs!1374281 () Bool)

(assert (= bs!1374281 (and b!5827023 b!5825819)))

(assert (=> bs!1374281 (= (and (= (reg!16206 (regOne!32267 (regTwo!32267 r!7292))) (reg!16206 (regOne!32267 r!7292))) (= (regOne!32267 (regTwo!32267 r!7292)) (regOne!32267 r!7292))) (= lambda!318846 lambda!318825))))

(declare-fun bs!1374282 () Bool)

(assert (= bs!1374282 (and b!5827023 b!5826989)))

(assert (=> bs!1374282 (= (and (= (reg!16206 (regOne!32267 (regTwo!32267 r!7292))) (reg!16206 (regTwo!32267 (regTwo!32267 r!7292)))) (= (regOne!32267 (regTwo!32267 r!7292)) (regTwo!32267 (regTwo!32267 r!7292)))) (= lambda!318846 lambda!318844))))

(declare-fun bs!1374283 () Bool)

(assert (= bs!1374283 (and b!5827023 b!5825760)))

(assert (=> bs!1374283 (= (and (= (reg!16206 (regOne!32267 (regTwo!32267 r!7292))) (reg!16206 (regTwo!32267 r!7292))) (= (regOne!32267 (regTwo!32267 r!7292)) (regTwo!32267 r!7292))) (= lambda!318846 lambda!318821))))

(declare-fun bs!1374284 () Bool)

(assert (= bs!1374284 (and b!5827023 b!5825298)))

(assert (=> bs!1374284 (= (and (= (reg!16206 (regOne!32267 (regTwo!32267 r!7292))) (reg!16206 r!7292)) (= (regOne!32267 (regTwo!32267 r!7292)) r!7292)) (= lambda!318846 lambda!318799))))

(declare-fun bs!1374285 () Bool)

(assert (= bs!1374285 (and b!5827023 b!5825763)))

(assert (=> bs!1374285 (not (= lambda!318846 lambda!318822))))

(declare-fun bs!1374286 () Bool)

(assert (= bs!1374286 (and b!5827023 b!5825301)))

(assert (=> bs!1374286 (not (= lambda!318846 lambda!318800))))

(declare-fun bs!1374287 () Bool)

(assert (= bs!1374287 (and b!5827023 b!5826992)))

(assert (=> bs!1374287 (not (= lambda!318846 lambda!318845))))

(assert (=> b!5827023 true))

(assert (=> b!5827023 true))

(declare-fun bs!1374288 () Bool)

(declare-fun b!5827026 () Bool)

(assert (= bs!1374288 (and b!5827026 b!5825822)))

(declare-fun lambda!318847 () Int)

(assert (=> bs!1374288 (= (and (= (regOne!32266 (regOne!32267 (regTwo!32267 r!7292))) (regOne!32266 (regOne!32267 r!7292))) (= (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))) (regTwo!32266 (regOne!32267 r!7292)))) (= lambda!318847 lambda!318826))))

(declare-fun bs!1374289 () Bool)

(assert (= bs!1374289 (and b!5827026 b!5825819)))

(assert (=> bs!1374289 (not (= lambda!318847 lambda!318825))))

(declare-fun bs!1374290 () Bool)

(assert (= bs!1374290 (and b!5827026 b!5826989)))

(assert (=> bs!1374290 (not (= lambda!318847 lambda!318844))))

(declare-fun bs!1374291 () Bool)

(assert (= bs!1374291 (and b!5827026 b!5825760)))

(assert (=> bs!1374291 (not (= lambda!318847 lambda!318821))))

(declare-fun bs!1374292 () Bool)

(assert (= bs!1374292 (and b!5827026 b!5825298)))

(assert (=> bs!1374292 (not (= lambda!318847 lambda!318799))))

(declare-fun bs!1374293 () Bool)

(assert (= bs!1374293 (and b!5827026 b!5825763)))

(assert (=> bs!1374293 (= (and (= (regOne!32266 (regOne!32267 (regTwo!32267 r!7292))) (regOne!32266 (regTwo!32267 r!7292))) (= (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))) (regTwo!32266 (regTwo!32267 r!7292)))) (= lambda!318847 lambda!318822))))

(declare-fun bs!1374294 () Bool)

(assert (= bs!1374294 (and b!5827026 b!5827023)))

(assert (=> bs!1374294 (not (= lambda!318847 lambda!318846))))

(declare-fun bs!1374295 () Bool)

(assert (= bs!1374295 (and b!5827026 b!5825301)))

(assert (=> bs!1374295 (= (and (= (regOne!32266 (regOne!32267 (regTwo!32267 r!7292))) (regOne!32266 r!7292)) (= (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))) (regTwo!32266 r!7292))) (= lambda!318847 lambda!318800))))

(declare-fun bs!1374296 () Bool)

(assert (= bs!1374296 (and b!5827026 b!5826992)))

(assert (=> bs!1374296 (= (and (= (regOne!32266 (regOne!32267 (regTwo!32267 r!7292))) (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292)))) (= (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))) (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))))) (= lambda!318847 lambda!318845))))

(assert (=> b!5827026 true))

(assert (=> b!5827026 true))

(declare-fun b!5827016 () Bool)

(declare-fun e!3575542 () Bool)

(assert (=> b!5827016 (= e!3575542 (matchRSpec!2978 (regTwo!32267 (regOne!32267 (regTwo!32267 r!7292))) s!2326))))

(declare-fun b!5827017 () Bool)

(declare-fun c!1032546 () Bool)

(assert (=> b!5827017 (= c!1032546 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32267 r!7292))))))

(declare-fun e!3575543 () Bool)

(declare-fun e!3575546 () Bool)

(assert (=> b!5827017 (= e!3575543 e!3575546)))

(declare-fun b!5827018 () Bool)

(declare-fun c!1032549 () Bool)

(assert (=> b!5827018 (= c!1032549 ((_ is Union!15877) (regOne!32267 (regTwo!32267 r!7292))))))

(declare-fun e!3575545 () Bool)

(assert (=> b!5827018 (= e!3575546 e!3575545)))

(declare-fun b!5827019 () Bool)

(declare-fun e!3575541 () Bool)

(declare-fun call!455093 () Bool)

(assert (=> b!5827019 (= e!3575541 call!455093)))

(declare-fun b!5827020 () Bool)

(assert (=> b!5827020 (= e!3575541 e!3575543)))

(declare-fun res!2456346 () Bool)

(assert (=> b!5827020 (= res!2456346 (not ((_ is EmptyLang!15877) (regOne!32267 (regTwo!32267 r!7292)))))))

(assert (=> b!5827020 (=> (not res!2456346) (not e!3575543))))

(declare-fun bm!455087 () Bool)

(declare-fun c!1032547 () Bool)

(declare-fun call!455092 () Bool)

(assert (=> bm!455087 (= call!455092 (Exists!2955 (ite c!1032547 lambda!318846 lambda!318847)))))

(declare-fun b!5827021 () Bool)

(assert (=> b!5827021 (= e!3575545 e!3575542)))

(declare-fun res!2456345 () Bool)

(assert (=> b!5827021 (= res!2456345 (matchRSpec!2978 (regOne!32267 (regOne!32267 (regTwo!32267 r!7292))) s!2326))))

(assert (=> b!5827021 (=> res!2456345 e!3575542)))

(declare-fun bm!455088 () Bool)

(assert (=> bm!455088 (= call!455093 (isEmpty!35676 s!2326))))

(declare-fun d!1833018 () Bool)

(declare-fun c!1032548 () Bool)

(assert (=> d!1833018 (= c!1032548 ((_ is EmptyExpr!15877) (regOne!32267 (regTwo!32267 r!7292))))))

(assert (=> d!1833018 (= (matchRSpec!2978 (regOne!32267 (regTwo!32267 r!7292)) s!2326) e!3575541)))

(declare-fun b!5827022 () Bool)

(declare-fun e!3575544 () Bool)

(assert (=> b!5827022 (= e!3575545 e!3575544)))

(assert (=> b!5827022 (= c!1032547 ((_ is Star!15877) (regOne!32267 (regTwo!32267 r!7292))))))

(declare-fun e!3575540 () Bool)

(assert (=> b!5827023 (= e!3575540 call!455092)))

(declare-fun b!5827024 () Bool)

(assert (=> b!5827024 (= e!3575546 (= s!2326 (Cons!63808 (c!1032237 (regOne!32267 (regTwo!32267 r!7292))) Nil!63808)))))

(declare-fun b!5827025 () Bool)

(declare-fun res!2456344 () Bool)

(assert (=> b!5827025 (=> res!2456344 e!3575540)))

(assert (=> b!5827025 (= res!2456344 call!455093)))

(assert (=> b!5827025 (= e!3575544 e!3575540)))

(assert (=> b!5827026 (= e!3575544 call!455092)))

(assert (= (and d!1833018 c!1032548) b!5827019))

(assert (= (and d!1833018 (not c!1032548)) b!5827020))

(assert (= (and b!5827020 res!2456346) b!5827017))

(assert (= (and b!5827017 c!1032546) b!5827024))

(assert (= (and b!5827017 (not c!1032546)) b!5827018))

(assert (= (and b!5827018 c!1032549) b!5827021))

(assert (= (and b!5827018 (not c!1032549)) b!5827022))

(assert (= (and b!5827021 (not res!2456345)) b!5827016))

(assert (= (and b!5827022 c!1032547) b!5827025))

(assert (= (and b!5827022 (not c!1032547)) b!5827026))

(assert (= (and b!5827025 (not res!2456344)) b!5827023))

(assert (= (or b!5827023 b!5827026) bm!455087))

(assert (= (or b!5827019 b!5827025) bm!455088))

(declare-fun m!6758958 () Bool)

(assert (=> b!5827016 m!6758958))

(declare-fun m!6758960 () Bool)

(assert (=> bm!455087 m!6758960))

(declare-fun m!6758962 () Bool)

(assert (=> b!5827021 m!6758962))

(assert (=> bm!455088 m!6758162))

(assert (=> b!5825758 d!1833018))

(declare-fun d!1833020 () Bool)

(assert (=> d!1833020 (= (Exists!2955 (ite c!1032422 lambda!318825 lambda!318826)) (choose!44274 (ite c!1032422 lambda!318825 lambda!318826)))))

(declare-fun bs!1374297 () Bool)

(assert (= bs!1374297 d!1833020))

(declare-fun m!6758964 () Bool)

(assert (=> bs!1374297 m!6758964))

(assert (=> bm!454967 d!1833020))

(declare-fun b!5827027 () Bool)

(declare-fun e!3575549 () Bool)

(declare-fun e!3575548 () Bool)

(assert (=> b!5827027 (= e!3575549 e!3575548)))

(declare-fun c!1032551 () Bool)

(assert (=> b!5827027 (= c!1032551 ((_ is Union!15877) (h!70254 (unfocusZipperList!1298 zl!343))))))

(declare-fun b!5827028 () Bool)

(declare-fun e!3575551 () Bool)

(declare-fun call!455096 () Bool)

(assert (=> b!5827028 (= e!3575551 call!455096)))

(declare-fun b!5827029 () Bool)

(declare-fun e!3575552 () Bool)

(declare-fun e!3575550 () Bool)

(assert (=> b!5827029 (= e!3575552 e!3575550)))

(declare-fun res!2456347 () Bool)

(assert (=> b!5827029 (=> (not res!2456347) (not e!3575550))))

(declare-fun call!455094 () Bool)

(assert (=> b!5827029 (= res!2456347 call!455094)))

(declare-fun bm!455089 () Bool)

(assert (=> bm!455089 (= call!455094 call!455096)))

(declare-fun b!5827030 () Bool)

(assert (=> b!5827030 (= e!3575549 e!3575551)))

(declare-fun res!2456348 () Bool)

(assert (=> b!5827030 (= res!2456348 (not (nullable!5880 (reg!16206 (h!70254 (unfocusZipperList!1298 zl!343))))))))

(assert (=> b!5827030 (=> (not res!2456348) (not e!3575551))))

(declare-fun d!1833022 () Bool)

(declare-fun res!2456351 () Bool)

(declare-fun e!3575547 () Bool)

(assert (=> d!1833022 (=> res!2456351 e!3575547)))

(assert (=> d!1833022 (= res!2456351 ((_ is ElementMatch!15877) (h!70254 (unfocusZipperList!1298 zl!343))))))

(assert (=> d!1833022 (= (validRegex!7613 (h!70254 (unfocusZipperList!1298 zl!343))) e!3575547)))

(declare-fun b!5827031 () Bool)

(declare-fun e!3575553 () Bool)

(declare-fun call!455095 () Bool)

(assert (=> b!5827031 (= e!3575553 call!455095)))

(declare-fun bm!455090 () Bool)

(assert (=> bm!455090 (= call!455095 (validRegex!7613 (ite c!1032551 (regTwo!32267 (h!70254 (unfocusZipperList!1298 zl!343))) (regTwo!32266 (h!70254 (unfocusZipperList!1298 zl!343))))))))

(declare-fun b!5827032 () Bool)

(declare-fun res!2456349 () Bool)

(assert (=> b!5827032 (=> res!2456349 e!3575552)))

(assert (=> b!5827032 (= res!2456349 (not ((_ is Concat!24722) (h!70254 (unfocusZipperList!1298 zl!343)))))))

(assert (=> b!5827032 (= e!3575548 e!3575552)))

(declare-fun b!5827033 () Bool)

(declare-fun res!2456350 () Bool)

(assert (=> b!5827033 (=> (not res!2456350) (not e!3575553))))

(assert (=> b!5827033 (= res!2456350 call!455094)))

(assert (=> b!5827033 (= e!3575548 e!3575553)))

(declare-fun bm!455091 () Bool)

(declare-fun c!1032550 () Bool)

(assert (=> bm!455091 (= call!455096 (validRegex!7613 (ite c!1032550 (reg!16206 (h!70254 (unfocusZipperList!1298 zl!343))) (ite c!1032551 (regOne!32267 (h!70254 (unfocusZipperList!1298 zl!343))) (regOne!32266 (h!70254 (unfocusZipperList!1298 zl!343)))))))))

(declare-fun b!5827034 () Bool)

(assert (=> b!5827034 (= e!3575547 e!3575549)))

(assert (=> b!5827034 (= c!1032550 ((_ is Star!15877) (h!70254 (unfocusZipperList!1298 zl!343))))))

(declare-fun b!5827035 () Bool)

(assert (=> b!5827035 (= e!3575550 call!455095)))

(assert (= (and d!1833022 (not res!2456351)) b!5827034))

(assert (= (and b!5827034 c!1032550) b!5827030))

(assert (= (and b!5827034 (not c!1032550)) b!5827027))

(assert (= (and b!5827030 res!2456348) b!5827028))

(assert (= (and b!5827027 c!1032551) b!5827033))

(assert (= (and b!5827027 (not c!1032551)) b!5827032))

(assert (= (and b!5827033 res!2456350) b!5827031))

(assert (= (and b!5827032 (not res!2456349)) b!5827029))

(assert (= (and b!5827029 res!2456347) b!5827035))

(assert (= (or b!5827031 b!5827035) bm!455090))

(assert (= (or b!5827033 b!5827029) bm!455089))

(assert (= (or b!5827028 bm!455089) bm!455091))

(declare-fun m!6758966 () Bool)

(assert (=> b!5827030 m!6758966))

(declare-fun m!6758968 () Bool)

(assert (=> bm!455090 m!6758968))

(declare-fun m!6758970 () Bool)

(assert (=> bm!455091 m!6758970))

(assert (=> bs!1374075 d!1833022))

(declare-fun d!1833024 () Bool)

(assert (=> d!1833024 (= (head!12318 (t!377285 (unfocusZipperList!1298 zl!343))) (h!70254 (t!377285 (unfocusZipperList!1298 zl!343))))))

(assert (=> b!5825902 d!1833024))

(declare-fun b!5827036 () Bool)

(declare-fun e!3575556 () Bool)

(declare-fun e!3575555 () Bool)

(assert (=> b!5827036 (= e!3575556 e!3575555)))

(declare-fun c!1032553 () Bool)

(assert (=> b!5827036 (= c!1032553 ((_ is Union!15877) lt!2302636))))

(declare-fun b!5827037 () Bool)

(declare-fun e!3575558 () Bool)

(declare-fun call!455099 () Bool)

(assert (=> b!5827037 (= e!3575558 call!455099)))

(declare-fun b!5827038 () Bool)

(declare-fun e!3575559 () Bool)

(declare-fun e!3575557 () Bool)

(assert (=> b!5827038 (= e!3575559 e!3575557)))

(declare-fun res!2456352 () Bool)

(assert (=> b!5827038 (=> (not res!2456352) (not e!3575557))))

(declare-fun call!455097 () Bool)

(assert (=> b!5827038 (= res!2456352 call!455097)))

(declare-fun bm!455092 () Bool)

(assert (=> bm!455092 (= call!455097 call!455099)))

(declare-fun b!5827039 () Bool)

(assert (=> b!5827039 (= e!3575556 e!3575558)))

(declare-fun res!2456353 () Bool)

(assert (=> b!5827039 (= res!2456353 (not (nullable!5880 (reg!16206 lt!2302636))))))

(assert (=> b!5827039 (=> (not res!2456353) (not e!3575558))))

(declare-fun d!1833026 () Bool)

(declare-fun res!2456356 () Bool)

(declare-fun e!3575554 () Bool)

(assert (=> d!1833026 (=> res!2456356 e!3575554)))

(assert (=> d!1833026 (= res!2456356 ((_ is ElementMatch!15877) lt!2302636))))

(assert (=> d!1833026 (= (validRegex!7613 lt!2302636) e!3575554)))

(declare-fun b!5827040 () Bool)

(declare-fun e!3575560 () Bool)

(declare-fun call!455098 () Bool)

(assert (=> b!5827040 (= e!3575560 call!455098)))

(declare-fun bm!455093 () Bool)

(assert (=> bm!455093 (= call!455098 (validRegex!7613 (ite c!1032553 (regTwo!32267 lt!2302636) (regTwo!32266 lt!2302636))))))

(declare-fun b!5827041 () Bool)

(declare-fun res!2456354 () Bool)

(assert (=> b!5827041 (=> res!2456354 e!3575559)))

(assert (=> b!5827041 (= res!2456354 (not ((_ is Concat!24722) lt!2302636)))))

(assert (=> b!5827041 (= e!3575555 e!3575559)))

(declare-fun b!5827042 () Bool)

(declare-fun res!2456355 () Bool)

(assert (=> b!5827042 (=> (not res!2456355) (not e!3575560))))

(assert (=> b!5827042 (= res!2456355 call!455097)))

(assert (=> b!5827042 (= e!3575555 e!3575560)))

(declare-fun bm!455094 () Bool)

(declare-fun c!1032552 () Bool)

(assert (=> bm!455094 (= call!455099 (validRegex!7613 (ite c!1032552 (reg!16206 lt!2302636) (ite c!1032553 (regOne!32267 lt!2302636) (regOne!32266 lt!2302636)))))))

(declare-fun b!5827043 () Bool)

(assert (=> b!5827043 (= e!3575554 e!3575556)))

(assert (=> b!5827043 (= c!1032552 ((_ is Star!15877) lt!2302636))))

(declare-fun b!5827044 () Bool)

(assert (=> b!5827044 (= e!3575557 call!455098)))

(assert (= (and d!1833026 (not res!2456356)) b!5827043))

(assert (= (and b!5827043 c!1032552) b!5827039))

(assert (= (and b!5827043 (not c!1032552)) b!5827036))

(assert (= (and b!5827039 res!2456353) b!5827037))

(assert (= (and b!5827036 c!1032553) b!5827042))

(assert (= (and b!5827036 (not c!1032553)) b!5827041))

(assert (= (and b!5827042 res!2456355) b!5827040))

(assert (= (and b!5827041 (not res!2456354)) b!5827038))

(assert (= (and b!5827038 res!2456352) b!5827044))

(assert (= (or b!5827040 b!5827044) bm!455093))

(assert (= (or b!5827042 b!5827038) bm!455092))

(assert (= (or b!5827037 bm!455092) bm!455094))

(declare-fun m!6758972 () Bool)

(assert (=> b!5827039 m!6758972))

(declare-fun m!6758974 () Bool)

(assert (=> bm!455093 m!6758974))

(declare-fun m!6758976 () Bool)

(assert (=> bm!455094 m!6758976))

(assert (=> d!1832792 d!1833026))

(declare-fun d!1833028 () Bool)

(declare-fun res!2456357 () Bool)

(declare-fun e!3575561 () Bool)

(assert (=> d!1833028 (=> res!2456357 e!3575561)))

(assert (=> d!1833028 (= res!2456357 ((_ is Nil!63806) (t!377285 (unfocusZipperList!1298 zl!343))))))

(assert (=> d!1833028 (= (forall!14968 (t!377285 (unfocusZipperList!1298 zl!343)) lambda!318828) e!3575561)))

(declare-fun b!5827045 () Bool)

(declare-fun e!3575562 () Bool)

(assert (=> b!5827045 (= e!3575561 e!3575562)))

(declare-fun res!2456358 () Bool)

(assert (=> b!5827045 (=> (not res!2456358) (not e!3575562))))

(assert (=> b!5827045 (= res!2456358 (dynLambda!24970 lambda!318828 (h!70254 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5827046 () Bool)

(assert (=> b!5827046 (= e!3575562 (forall!14968 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343))) lambda!318828))))

(assert (= (and d!1833028 (not res!2456357)) b!5827045))

(assert (= (and b!5827045 res!2456358) b!5827046))

(declare-fun b_lambda!219669 () Bool)

(assert (=> (not b_lambda!219669) (not b!5827045)))

(declare-fun m!6758978 () Bool)

(assert (=> b!5827045 m!6758978))

(declare-fun m!6758980 () Bool)

(assert (=> b!5827046 m!6758980))

(assert (=> d!1832792 d!1833028))

(declare-fun b!5827047 () Bool)

(declare-fun e!3575565 () Bool)

(declare-fun e!3575564 () Bool)

(assert (=> b!5827047 (= e!3575565 e!3575564)))

(declare-fun c!1032555 () Bool)

(assert (=> b!5827047 (= c!1032555 ((_ is Union!15877) (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))))))

(declare-fun b!5827048 () Bool)

(declare-fun e!3575567 () Bool)

(declare-fun call!455102 () Bool)

(assert (=> b!5827048 (= e!3575567 call!455102)))

(declare-fun b!5827049 () Bool)

(declare-fun e!3575568 () Bool)

(declare-fun e!3575566 () Bool)

(assert (=> b!5827049 (= e!3575568 e!3575566)))

(declare-fun res!2456359 () Bool)

(assert (=> b!5827049 (=> (not res!2456359) (not e!3575566))))

(declare-fun call!455100 () Bool)

(assert (=> b!5827049 (= res!2456359 call!455100)))

(declare-fun bm!455095 () Bool)

(assert (=> bm!455095 (= call!455100 call!455102)))

(declare-fun b!5827050 () Bool)

(assert (=> b!5827050 (= e!3575565 e!3575567)))

(declare-fun res!2456360 () Bool)

(assert (=> b!5827050 (= res!2456360 (not (nullable!5880 (reg!16206 (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))))))))

(assert (=> b!5827050 (=> (not res!2456360) (not e!3575567))))

(declare-fun d!1833030 () Bool)

(declare-fun res!2456363 () Bool)

(declare-fun e!3575563 () Bool)

(assert (=> d!1833030 (=> res!2456363 e!3575563)))

(assert (=> d!1833030 (= res!2456363 ((_ is ElementMatch!15877) (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))))))

(assert (=> d!1833030 (= (validRegex!7613 (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))) e!3575563)))

(declare-fun b!5827051 () Bool)

(declare-fun e!3575569 () Bool)

(declare-fun call!455101 () Bool)

(assert (=> b!5827051 (= e!3575569 call!455101)))

(declare-fun bm!455096 () Bool)

(assert (=> bm!455096 (= call!455101 (validRegex!7613 (ite c!1032555 (regTwo!32267 (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))) (regTwo!32266 (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))))))))

(declare-fun b!5827052 () Bool)

(declare-fun res!2456361 () Bool)

(assert (=> b!5827052 (=> res!2456361 e!3575568)))

(assert (=> b!5827052 (= res!2456361 (not ((_ is Concat!24722) (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616))))))))

(assert (=> b!5827052 (= e!3575564 e!3575568)))

(declare-fun b!5827053 () Bool)

(declare-fun res!2456362 () Bool)

(assert (=> b!5827053 (=> (not res!2456362) (not e!3575569))))

(assert (=> b!5827053 (= res!2456362 call!455100)))

(assert (=> b!5827053 (= e!3575564 e!3575569)))

(declare-fun c!1032554 () Bool)

(declare-fun bm!455097 () Bool)

(assert (=> bm!455097 (= call!455102 (validRegex!7613 (ite c!1032554 (reg!16206 (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))) (ite c!1032555 (regOne!32267 (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))) (regOne!32266 (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616))))))))))

(declare-fun b!5827054 () Bool)

(assert (=> b!5827054 (= e!3575563 e!3575565)))

(assert (=> b!5827054 (= c!1032554 ((_ is Star!15877) (ite c!1032428 (reg!16206 lt!2302616) (ite c!1032429 (regOne!32267 lt!2302616) (regOne!32266 lt!2302616)))))))

(declare-fun b!5827055 () Bool)

(assert (=> b!5827055 (= e!3575566 call!455101)))

(assert (= (and d!1833030 (not res!2456363)) b!5827054))

(assert (= (and b!5827054 c!1032554) b!5827050))

(assert (= (and b!5827054 (not c!1032554)) b!5827047))

(assert (= (and b!5827050 res!2456360) b!5827048))

(assert (= (and b!5827047 c!1032555) b!5827053))

(assert (= (and b!5827047 (not c!1032555)) b!5827052))

(assert (= (and b!5827053 res!2456362) b!5827051))

(assert (= (and b!5827052 (not res!2456361)) b!5827049))

(assert (= (and b!5827049 res!2456359) b!5827055))

(assert (= (or b!5827051 b!5827055) bm!455096))

(assert (= (or b!5827053 b!5827049) bm!455095))

(assert (= (or b!5827048 bm!455095) bm!455097))

(declare-fun m!6758982 () Bool)

(assert (=> b!5827050 m!6758982))

(declare-fun m!6758984 () Bool)

(assert (=> bm!455096 m!6758984))

(declare-fun m!6758986 () Bool)

(assert (=> bm!455097 m!6758986))

(assert (=> bm!454971 d!1833030))

(declare-fun b!5827056 () Bool)

(declare-fun e!3575572 () Bool)

(declare-fun e!3575571 () Bool)

(assert (=> b!5827056 (= e!3575572 e!3575571)))

(declare-fun c!1032557 () Bool)

(assert (=> b!5827056 (= c!1032557 ((_ is Union!15877) (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))))

(declare-fun b!5827057 () Bool)

(declare-fun e!3575574 () Bool)

(declare-fun call!455105 () Bool)

(assert (=> b!5827057 (= e!3575574 call!455105)))

(declare-fun b!5827058 () Bool)

(declare-fun e!3575575 () Bool)

(declare-fun e!3575573 () Bool)

(assert (=> b!5827058 (= e!3575575 e!3575573)))

(declare-fun res!2456364 () Bool)

(assert (=> b!5827058 (=> (not res!2456364) (not e!3575573))))

(declare-fun call!455103 () Bool)

(assert (=> b!5827058 (= res!2456364 call!455103)))

(declare-fun bm!455098 () Bool)

(assert (=> bm!455098 (= call!455103 call!455105)))

(declare-fun b!5827059 () Bool)

(assert (=> b!5827059 (= e!3575572 e!3575574)))

(declare-fun res!2456365 () Bool)

(assert (=> b!5827059 (= res!2456365 (not (nullable!5880 (reg!16206 (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))))))

(assert (=> b!5827059 (=> (not res!2456365) (not e!3575574))))

(declare-fun d!1833032 () Bool)

(declare-fun res!2456368 () Bool)

(declare-fun e!3575570 () Bool)

(assert (=> d!1833032 (=> res!2456368 e!3575570)))

(assert (=> d!1833032 (= res!2456368 ((_ is ElementMatch!15877) (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))))

(assert (=> d!1833032 (= (validRegex!7613 (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))) e!3575570)))

(declare-fun b!5827060 () Bool)

(declare-fun e!3575576 () Bool)

(declare-fun call!455104 () Bool)

(assert (=> b!5827060 (= e!3575576 call!455104)))

(declare-fun bm!455099 () Bool)

(assert (=> bm!455099 (= call!455104 (validRegex!7613 (ite c!1032557 (regTwo!32267 (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))) (regTwo!32266 (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))))))

(declare-fun b!5827061 () Bool)

(declare-fun res!2456366 () Bool)

(assert (=> b!5827061 (=> res!2456366 e!3575575)))

(assert (=> b!5827061 (= res!2456366 (not ((_ is Concat!24722) (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))))))

(assert (=> b!5827061 (= e!3575571 e!3575575)))

(declare-fun b!5827062 () Bool)

(declare-fun res!2456367 () Bool)

(assert (=> b!5827062 (=> (not res!2456367) (not e!3575576))))

(assert (=> b!5827062 (= res!2456367 call!455103)))

(assert (=> b!5827062 (= e!3575571 e!3575576)))

(declare-fun bm!455100 () Bool)

(declare-fun c!1032556 () Bool)

(assert (=> bm!455100 (= call!455105 (validRegex!7613 (ite c!1032556 (reg!16206 (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))) (ite c!1032557 (regOne!32267 (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))) (regOne!32266 (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))))))))

(declare-fun b!5827063 () Bool)

(assert (=> b!5827063 (= e!3575570 e!3575572)))

(assert (=> b!5827063 (= c!1032556 ((_ is Star!15877) (ite c!1032434 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (ite c!1032435 (regOne!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regOne!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))))

(declare-fun b!5827064 () Bool)

(assert (=> b!5827064 (= e!3575573 call!455104)))

(assert (= (and d!1833032 (not res!2456368)) b!5827063))

(assert (= (and b!5827063 c!1032556) b!5827059))

(assert (= (and b!5827063 (not c!1032556)) b!5827056))

(assert (= (and b!5827059 res!2456365) b!5827057))

(assert (= (and b!5827056 c!1032557) b!5827062))

(assert (= (and b!5827056 (not c!1032557)) b!5827061))

(assert (= (and b!5827062 res!2456367) b!5827060))

(assert (= (and b!5827061 (not res!2456366)) b!5827058))

(assert (= (and b!5827058 res!2456364) b!5827064))

(assert (= (or b!5827060 b!5827064) bm!455099))

(assert (= (or b!5827062 b!5827058) bm!455098))

(assert (= (or b!5827057 bm!455098) bm!455100))

(declare-fun m!6758988 () Bool)

(assert (=> b!5827059 m!6758988))

(declare-fun m!6758990 () Bool)

(assert (=> bm!455099 m!6758990))

(declare-fun m!6758992 () Bool)

(assert (=> bm!455100 m!6758992))

(assert (=> bm!454980 d!1833032))

(declare-fun d!1833034 () Bool)

(assert (=> d!1833034 (= (nullable!5880 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))) (nullableFct!1886 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))

(declare-fun bs!1374298 () Bool)

(assert (= bs!1374298 d!1833034))

(declare-fun m!6758994 () Bool)

(assert (=> bs!1374298 m!6758994))

(assert (=> b!5825860 d!1833034))

(assert (=> bm!454968 d!1832720))

(declare-fun d!1833036 () Bool)

(assert (=> d!1833036 (= (isEmptyLang!1325 lt!2302636) ((_ is EmptyLang!15877) lt!2302636))))

(assert (=> b!5825904 d!1833036))

(declare-fun b!5827065 () Bool)

(declare-fun e!3575579 () Bool)

(declare-fun e!3575578 () Bool)

(assert (=> b!5827065 (= e!3575579 e!3575578)))

(declare-fun c!1032559 () Bool)

(assert (=> b!5827065 (= c!1032559 ((_ is Union!15877) (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))))))

(declare-fun b!5827066 () Bool)

(declare-fun e!3575581 () Bool)

(declare-fun call!455108 () Bool)

(assert (=> b!5827066 (= e!3575581 call!455108)))

(declare-fun b!5827067 () Bool)

(declare-fun e!3575582 () Bool)

(declare-fun e!3575580 () Bool)

(assert (=> b!5827067 (= e!3575582 e!3575580)))

(declare-fun res!2456369 () Bool)

(assert (=> b!5827067 (=> (not res!2456369) (not e!3575580))))

(declare-fun call!455106 () Bool)

(assert (=> b!5827067 (= res!2456369 call!455106)))

(declare-fun bm!455101 () Bool)

(assert (=> bm!455101 (= call!455106 call!455108)))

(declare-fun b!5827068 () Bool)

(assert (=> b!5827068 (= e!3575579 e!3575581)))

(declare-fun res!2456370 () Bool)

(assert (=> b!5827068 (= res!2456370 (not (nullable!5880 (reg!16206 (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))))))))

(assert (=> b!5827068 (=> (not res!2456370) (not e!3575581))))

(declare-fun d!1833038 () Bool)

(declare-fun res!2456373 () Bool)

(declare-fun e!3575577 () Bool)

(assert (=> d!1833038 (=> res!2456373 e!3575577)))

(assert (=> d!1833038 (= res!2456373 ((_ is ElementMatch!15877) (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))))))

(assert (=> d!1833038 (= (validRegex!7613 (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))) e!3575577)))

(declare-fun b!5827069 () Bool)

(declare-fun e!3575583 () Bool)

(declare-fun call!455107 () Bool)

(assert (=> b!5827069 (= e!3575583 call!455107)))

(declare-fun bm!455102 () Bool)

(assert (=> bm!455102 (= call!455107 (validRegex!7613 (ite c!1032559 (regTwo!32267 (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))) (regTwo!32266 (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))))))))

(declare-fun b!5827070 () Bool)

(declare-fun res!2456371 () Bool)

(assert (=> b!5827070 (=> res!2456371 e!3575582)))

(assert (=> b!5827070 (= res!2456371 (not ((_ is Concat!24722) (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607)))))))

(assert (=> b!5827070 (= e!3575578 e!3575582)))

(declare-fun b!5827071 () Bool)

(declare-fun res!2456372 () Bool)

(assert (=> b!5827071 (=> (not res!2456372) (not e!3575583))))

(assert (=> b!5827071 (= res!2456372 call!455106)))

(assert (=> b!5827071 (= e!3575578 e!3575583)))

(declare-fun bm!455103 () Bool)

(declare-fun c!1032558 () Bool)

(assert (=> bm!455103 (= call!455108 (validRegex!7613 (ite c!1032558 (reg!16206 (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))) (ite c!1032559 (regOne!32267 (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))) (regOne!32266 (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607)))))))))

(declare-fun b!5827072 () Bool)

(assert (=> b!5827072 (= e!3575577 e!3575579)))

(assert (=> b!5827072 (= c!1032558 ((_ is Star!15877) (ite c!1032433 (regTwo!32267 lt!2302607) (regTwo!32266 lt!2302607))))))

(declare-fun b!5827073 () Bool)

(assert (=> b!5827073 (= e!3575580 call!455107)))

(assert (= (and d!1833038 (not res!2456373)) b!5827072))

(assert (= (and b!5827072 c!1032558) b!5827068))

(assert (= (and b!5827072 (not c!1032558)) b!5827065))

(assert (= (and b!5827068 res!2456370) b!5827066))

(assert (= (and b!5827065 c!1032559) b!5827071))

(assert (= (and b!5827065 (not c!1032559)) b!5827070))

(assert (= (and b!5827071 res!2456372) b!5827069))

(assert (= (and b!5827070 (not res!2456371)) b!5827067))

(assert (= (and b!5827067 res!2456369) b!5827073))

(assert (= (or b!5827069 b!5827073) bm!455102))

(assert (= (or b!5827071 b!5827067) bm!455101))

(assert (= (or b!5827066 bm!455101) bm!455103))

(declare-fun m!6758996 () Bool)

(assert (=> b!5827068 m!6758996))

(declare-fun m!6758998 () Bool)

(assert (=> bm!455102 m!6758998))

(declare-fun m!6759000 () Bool)

(assert (=> bm!455103 m!6759000))

(assert (=> bm!454976 d!1833038))

(declare-fun b!5827074 () Bool)

(declare-fun call!455111 () Regex!15877)

(declare-fun call!455112 () Regex!15877)

(declare-fun e!3575585 () Regex!15877)

(assert (=> b!5827074 (= e!3575585 (Union!15877 (Concat!24722 call!455112 (regTwo!32266 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)))) call!455111))))

(declare-fun c!1032564 () Bool)

(declare-fun bm!455104 () Bool)

(assert (=> bm!455104 (= call!455112 (derivativeStep!4620 (ite c!1032564 (regOne!32267 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292))) (regOne!32266 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (head!12317 s!2326)))))

(declare-fun bm!455105 () Bool)

(declare-fun call!455109 () Regex!15877)

(declare-fun call!455110 () Regex!15877)

(assert (=> bm!455105 (= call!455109 call!455110)))

(declare-fun b!5827075 () Bool)

(assert (=> b!5827075 (= e!3575585 (Union!15877 (Concat!24722 call!455111 (regTwo!32266 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)))) EmptyLang!15877))))

(declare-fun b!5827076 () Bool)

(declare-fun c!1032561 () Bool)

(assert (=> b!5827076 (= c!1032561 (nullable!5880 (regOne!32266 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))

(declare-fun e!3575588 () Regex!15877)

(assert (=> b!5827076 (= e!3575588 e!3575585)))

(declare-fun d!1833040 () Bool)

(declare-fun lt!2302651 () Regex!15877)

(assert (=> d!1833040 (validRegex!7613 lt!2302651)))

(declare-fun e!3575586 () Regex!15877)

(assert (=> d!1833040 (= lt!2302651 e!3575586)))

(declare-fun c!1032562 () Bool)

(assert (=> d!1833040 (= c!1032562 (or ((_ is EmptyExpr!15877) (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292))) ((_ is EmptyLang!15877) (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))

(assert (=> d!1833040 (validRegex!7613 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)))))

(assert (=> d!1833040 (= (derivativeStep!4620 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)) (head!12317 s!2326)) lt!2302651)))

(declare-fun e!3575584 () Regex!15877)

(declare-fun b!5827077 () Bool)

(assert (=> b!5827077 (= e!3575584 (ite (= (head!12317 s!2326) (c!1032237 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)))) EmptyExpr!15877 EmptyLang!15877))))

(declare-fun b!5827078 () Bool)

(declare-fun e!3575587 () Regex!15877)

(assert (=> b!5827078 (= e!3575587 e!3575588)))

(declare-fun c!1032560 () Bool)

(assert (=> b!5827078 (= c!1032560 ((_ is Star!15877) (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292))))))

(declare-fun b!5827079 () Bool)

(assert (=> b!5827079 (= e!3575586 EmptyLang!15877)))

(declare-fun b!5827080 () Bool)

(assert (=> b!5827080 (= e!3575588 (Concat!24722 call!455109 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292))))))

(declare-fun b!5827081 () Bool)

(assert (=> b!5827081 (= e!3575586 e!3575584)))

(declare-fun c!1032563 () Bool)

(assert (=> b!5827081 (= c!1032563 ((_ is ElementMatch!15877) (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292))))))

(declare-fun bm!455106 () Bool)

(assert (=> bm!455106 (= call!455111 call!455109)))

(declare-fun bm!455107 () Bool)

(assert (=> bm!455107 (= call!455110 (derivativeStep!4620 (ite c!1032564 (regTwo!32267 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292))) (ite c!1032560 (reg!16206 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292))) (ite c!1032561 (regTwo!32266 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292))) (regOne!32266 (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292)))))) (head!12317 s!2326)))))

(declare-fun b!5827082 () Bool)

(assert (=> b!5827082 (= c!1032564 ((_ is Union!15877) (ite c!1032419 (regOne!32267 r!7292) (regOne!32266 r!7292))))))

(assert (=> b!5827082 (= e!3575584 e!3575587)))

(declare-fun b!5827083 () Bool)

(assert (=> b!5827083 (= e!3575587 (Union!15877 call!455112 call!455110))))

(assert (= (and d!1833040 c!1032562) b!5827079))

(assert (= (and d!1833040 (not c!1032562)) b!5827081))

(assert (= (and b!5827081 c!1032563) b!5827077))

(assert (= (and b!5827081 (not c!1032563)) b!5827082))

(assert (= (and b!5827082 c!1032564) b!5827083))

(assert (= (and b!5827082 (not c!1032564)) b!5827078))

(assert (= (and b!5827078 c!1032560) b!5827080))

(assert (= (and b!5827078 (not c!1032560)) b!5827076))

(assert (= (and b!5827076 c!1032561) b!5827074))

(assert (= (and b!5827076 (not c!1032561)) b!5827075))

(assert (= (or b!5827074 b!5827075) bm!455106))

(assert (= (or b!5827080 bm!455106) bm!455105))

(assert (= (or b!5827083 bm!455105) bm!455107))

(assert (= (or b!5827083 b!5827074) bm!455104))

(assert (=> bm!455104 m!6758154))

(declare-fun m!6759002 () Bool)

(assert (=> bm!455104 m!6759002))

(declare-fun m!6759004 () Bool)

(assert (=> b!5827076 m!6759004))

(declare-fun m!6759006 () Bool)

(assert (=> d!1833040 m!6759006))

(declare-fun m!6759008 () Bool)

(assert (=> d!1833040 m!6759008))

(assert (=> bm!455107 m!6758154))

(declare-fun m!6759010 () Bool)

(assert (=> bm!455107 m!6759010))

(assert (=> bm!454963 d!1833040))

(declare-fun d!1833042 () Bool)

(assert (=> d!1833042 (= (isEmpty!35676 (tail!11402 (tail!11402 s!2326))) ((_ is Nil!63808) (tail!11402 (tail!11402 s!2326))))))

(assert (=> b!5825766 d!1833042))

(declare-fun d!1833044 () Bool)

(assert (=> d!1833044 (= (tail!11402 (tail!11402 s!2326)) (t!377287 (tail!11402 s!2326)))))

(assert (=> b!5825766 d!1833044))

(declare-fun d!1833046 () Bool)

(declare-fun res!2456374 () Bool)

(declare-fun e!3575589 () Bool)

(assert (=> d!1833046 (=> res!2456374 e!3575589)))

(assert (=> d!1833046 (= res!2456374 ((_ is Nil!63806) (t!377285 (exprs!5761 setElem!39378))))))

(assert (=> d!1833046 (= (forall!14968 (t!377285 (exprs!5761 setElem!39378)) lambda!318801) e!3575589)))

(declare-fun b!5827084 () Bool)

(declare-fun e!3575590 () Bool)

(assert (=> b!5827084 (= e!3575589 e!3575590)))

(declare-fun res!2456375 () Bool)

(assert (=> b!5827084 (=> (not res!2456375) (not e!3575590))))

(assert (=> b!5827084 (= res!2456375 (dynLambda!24970 lambda!318801 (h!70254 (t!377285 (exprs!5761 setElem!39378)))))))

(declare-fun b!5827085 () Bool)

(assert (=> b!5827085 (= e!3575590 (forall!14968 (t!377285 (t!377285 (exprs!5761 setElem!39378))) lambda!318801))))

(assert (= (and d!1833046 (not res!2456374)) b!5827084))

(assert (= (and b!5827084 res!2456375) b!5827085))

(declare-fun b_lambda!219671 () Bool)

(assert (=> (not b_lambda!219671) (not b!5827084)))

(declare-fun m!6759012 () Bool)

(assert (=> b!5827084 m!6759012))

(declare-fun m!6759014 () Bool)

(assert (=> b!5827085 m!6759014))

(assert (=> b!5825752 d!1833046))

(declare-fun b!5827086 () Bool)

(declare-fun e!3575593 () Bool)

(declare-fun e!3575592 () Bool)

(assert (=> b!5827086 (= e!3575593 e!3575592)))

(declare-fun c!1032566 () Bool)

(assert (=> b!5827086 (= c!1032566 ((_ is Union!15877) (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))))

(declare-fun b!5827087 () Bool)

(declare-fun e!3575595 () Bool)

(declare-fun call!455115 () Bool)

(assert (=> b!5827087 (= e!3575595 call!455115)))

(declare-fun b!5827088 () Bool)

(declare-fun e!3575596 () Bool)

(declare-fun e!3575594 () Bool)

(assert (=> b!5827088 (= e!3575596 e!3575594)))

(declare-fun res!2456376 () Bool)

(assert (=> b!5827088 (=> (not res!2456376) (not e!3575594))))

(declare-fun call!455113 () Bool)

(assert (=> b!5827088 (= res!2456376 call!455113)))

(declare-fun bm!455108 () Bool)

(assert (=> bm!455108 (= call!455113 call!455115)))

(declare-fun b!5827089 () Bool)

(assert (=> b!5827089 (= e!3575593 e!3575595)))

(declare-fun res!2456377 () Bool)

(assert (=> b!5827089 (= res!2456377 (not (nullable!5880 (reg!16206 (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))))))

(assert (=> b!5827089 (=> (not res!2456377) (not e!3575595))))

(declare-fun d!1833048 () Bool)

(declare-fun res!2456380 () Bool)

(declare-fun e!3575591 () Bool)

(assert (=> d!1833048 (=> res!2456380 e!3575591)))

(assert (=> d!1833048 (= res!2456380 ((_ is ElementMatch!15877) (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))))

(assert (=> d!1833048 (= (validRegex!7613 (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))) e!3575591)))

(declare-fun b!5827090 () Bool)

(declare-fun e!3575597 () Bool)

(declare-fun call!455114 () Bool)

(assert (=> b!5827090 (= e!3575597 call!455114)))

(declare-fun bm!455109 () Bool)

(assert (=> bm!455109 (= call!455114 (validRegex!7613 (ite c!1032566 (regTwo!32267 (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))) (regTwo!32266 (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))))))

(declare-fun b!5827091 () Bool)

(declare-fun res!2456378 () Bool)

(assert (=> b!5827091 (=> res!2456378 e!3575596)))

(assert (=> b!5827091 (= res!2456378 (not ((_ is Concat!24722) (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))))

(assert (=> b!5827091 (= e!3575592 e!3575596)))

(declare-fun b!5827092 () Bool)

(declare-fun res!2456379 () Bool)

(assert (=> b!5827092 (=> (not res!2456379) (not e!3575597))))

(assert (=> b!5827092 (= res!2456379 call!455113)))

(assert (=> b!5827092 (= e!3575592 e!3575597)))

(declare-fun bm!455110 () Bool)

(declare-fun c!1032565 () Bool)

(assert (=> bm!455110 (= call!455115 (validRegex!7613 (ite c!1032565 (reg!16206 (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))) (ite c!1032566 (regOne!32267 (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))) (regOne!32266 (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))))))

(declare-fun b!5827093 () Bool)

(assert (=> b!5827093 (= e!3575591 e!3575593)))

(assert (=> b!5827093 (= c!1032565 ((_ is Star!15877) (ite c!1032431 (regTwo!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regTwo!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))))

(declare-fun b!5827094 () Bool)

(assert (=> b!5827094 (= e!3575594 call!455114)))

(assert (= (and d!1833048 (not res!2456380)) b!5827093))

(assert (= (and b!5827093 c!1032565) b!5827089))

(assert (= (and b!5827093 (not c!1032565)) b!5827086))

(assert (= (and b!5827089 res!2456377) b!5827087))

(assert (= (and b!5827086 c!1032566) b!5827092))

(assert (= (and b!5827086 (not c!1032566)) b!5827091))

(assert (= (and b!5827092 res!2456379) b!5827090))

(assert (= (and b!5827091 (not res!2456378)) b!5827088))

(assert (= (and b!5827088 res!2456376) b!5827094))

(assert (= (or b!5827090 b!5827094) bm!455109))

(assert (= (or b!5827092 b!5827088) bm!455108))

(assert (= (or b!5827087 bm!455108) bm!455110))

(declare-fun m!6759016 () Bool)

(assert (=> b!5827089 m!6759016))

(declare-fun m!6759018 () Bool)

(assert (=> bm!455109 m!6759018))

(declare-fun m!6759020 () Bool)

(assert (=> bm!455110 m!6759020))

(assert (=> bm!454973 d!1833048))

(declare-fun d!1833050 () Bool)

(assert (=> d!1833050 (= (isEmptyExpr!1316 lt!2302630) ((_ is EmptyExpr!15877) lt!2302630))))

(assert (=> b!5825737 d!1833050))

(assert (=> d!1832736 d!1832726))

(declare-fun b!5827095 () Bool)

(declare-fun e!3575600 () Bool)

(declare-fun e!3575599 () Bool)

(assert (=> b!5827095 (= e!3575600 e!3575599)))

(declare-fun c!1032568 () Bool)

(assert (=> b!5827095 (= c!1032568 ((_ is Union!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(declare-fun b!5827096 () Bool)

(declare-fun e!3575602 () Bool)

(declare-fun call!455118 () Bool)

(assert (=> b!5827096 (= e!3575602 call!455118)))

(declare-fun b!5827097 () Bool)

(declare-fun e!3575603 () Bool)

(declare-fun e!3575601 () Bool)

(assert (=> b!5827097 (= e!3575603 e!3575601)))

(declare-fun res!2456381 () Bool)

(assert (=> b!5827097 (=> (not res!2456381) (not e!3575601))))

(declare-fun call!455116 () Bool)

(assert (=> b!5827097 (= res!2456381 call!455116)))

(declare-fun bm!455111 () Bool)

(assert (=> bm!455111 (= call!455116 call!455118)))

(declare-fun b!5827098 () Bool)

(assert (=> b!5827098 (= e!3575600 e!3575602)))

(declare-fun res!2456382 () Bool)

(assert (=> b!5827098 (= res!2456382 (not (nullable!5880 (reg!16206 (derivativeStep!4620 r!7292 (head!12317 s!2326))))))))

(assert (=> b!5827098 (=> (not res!2456382) (not e!3575602))))

(declare-fun d!1833052 () Bool)

(declare-fun res!2456385 () Bool)

(declare-fun e!3575598 () Bool)

(assert (=> d!1833052 (=> res!2456385 e!3575598)))

(assert (=> d!1833052 (= res!2456385 ((_ is ElementMatch!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(assert (=> d!1833052 (= (validRegex!7613 (derivativeStep!4620 r!7292 (head!12317 s!2326))) e!3575598)))

(declare-fun b!5827099 () Bool)

(declare-fun e!3575604 () Bool)

(declare-fun call!455117 () Bool)

(assert (=> b!5827099 (= e!3575604 call!455117)))

(declare-fun bm!455112 () Bool)

(assert (=> bm!455112 (= call!455117 (validRegex!7613 (ite c!1032568 (regTwo!32267 (derivativeStep!4620 r!7292 (head!12317 s!2326))) (regTwo!32266 (derivativeStep!4620 r!7292 (head!12317 s!2326))))))))

(declare-fun b!5827100 () Bool)

(declare-fun res!2456383 () Bool)

(assert (=> b!5827100 (=> res!2456383 e!3575603)))

(assert (=> b!5827100 (= res!2456383 (not ((_ is Concat!24722) (derivativeStep!4620 r!7292 (head!12317 s!2326)))))))

(assert (=> b!5827100 (= e!3575599 e!3575603)))

(declare-fun b!5827101 () Bool)

(declare-fun res!2456384 () Bool)

(assert (=> b!5827101 (=> (not res!2456384) (not e!3575604))))

(assert (=> b!5827101 (= res!2456384 call!455116)))

(assert (=> b!5827101 (= e!3575599 e!3575604)))

(declare-fun bm!455113 () Bool)

(declare-fun c!1032567 () Bool)

(assert (=> bm!455113 (= call!455118 (validRegex!7613 (ite c!1032567 (reg!16206 (derivativeStep!4620 r!7292 (head!12317 s!2326))) (ite c!1032568 (regOne!32267 (derivativeStep!4620 r!7292 (head!12317 s!2326))) (regOne!32266 (derivativeStep!4620 r!7292 (head!12317 s!2326)))))))))

(declare-fun b!5827102 () Bool)

(assert (=> b!5827102 (= e!3575598 e!3575600)))

(assert (=> b!5827102 (= c!1032567 ((_ is Star!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(declare-fun b!5827103 () Bool)

(assert (=> b!5827103 (= e!3575601 call!455117)))

(assert (= (and d!1833052 (not res!2456385)) b!5827102))

(assert (= (and b!5827102 c!1032567) b!5827098))

(assert (= (and b!5827102 (not c!1032567)) b!5827095))

(assert (= (and b!5827098 res!2456382) b!5827096))

(assert (= (and b!5827095 c!1032568) b!5827101))

(assert (= (and b!5827095 (not c!1032568)) b!5827100))

(assert (= (and b!5827101 res!2456384) b!5827099))

(assert (= (and b!5827100 (not res!2456383)) b!5827097))

(assert (= (and b!5827097 res!2456381) b!5827103))

(assert (= (or b!5827099 b!5827103) bm!455112))

(assert (= (or b!5827101 b!5827097) bm!455111))

(assert (= (or b!5827096 bm!455111) bm!455113))

(declare-fun m!6759022 () Bool)

(assert (=> b!5827098 m!6759022))

(declare-fun m!6759024 () Bool)

(assert (=> bm!455112 m!6759024))

(declare-fun m!6759026 () Bool)

(assert (=> bm!455113 m!6759026))

(assert (=> d!1832736 d!1833052))

(declare-fun d!1833054 () Bool)

(assert (=> d!1833054 (= (nullable!5880 (reg!16206 lt!2302607)) (nullableFct!1886 (reg!16206 lt!2302607)))))

(declare-fun bs!1374299 () Bool)

(assert (= bs!1374299 d!1833054))

(declare-fun m!6759028 () Bool)

(assert (=> bs!1374299 m!6759028))

(assert (=> b!5825869 d!1833054))

(declare-fun b!5827104 () Bool)

(declare-fun e!3575607 () Bool)

(declare-fun e!3575606 () Bool)

(assert (=> b!5827104 (= e!3575607 e!3575606)))

(declare-fun c!1032570 () Bool)

(assert (=> b!5827104 (= c!1032570 ((_ is Union!15877) (h!70254 (exprs!5761 setElem!39378))))))

(declare-fun b!5827105 () Bool)

(declare-fun e!3575609 () Bool)

(declare-fun call!455121 () Bool)

(assert (=> b!5827105 (= e!3575609 call!455121)))

(declare-fun b!5827106 () Bool)

(declare-fun e!3575610 () Bool)

(declare-fun e!3575608 () Bool)

(assert (=> b!5827106 (= e!3575610 e!3575608)))

(declare-fun res!2456386 () Bool)

(assert (=> b!5827106 (=> (not res!2456386) (not e!3575608))))

(declare-fun call!455119 () Bool)

(assert (=> b!5827106 (= res!2456386 call!455119)))

(declare-fun bm!455114 () Bool)

(assert (=> bm!455114 (= call!455119 call!455121)))

(declare-fun b!5827107 () Bool)

(assert (=> b!5827107 (= e!3575607 e!3575609)))

(declare-fun res!2456387 () Bool)

(assert (=> b!5827107 (= res!2456387 (not (nullable!5880 (reg!16206 (h!70254 (exprs!5761 setElem!39378))))))))

(assert (=> b!5827107 (=> (not res!2456387) (not e!3575609))))

(declare-fun d!1833056 () Bool)

(declare-fun res!2456390 () Bool)

(declare-fun e!3575605 () Bool)

(assert (=> d!1833056 (=> res!2456390 e!3575605)))

(assert (=> d!1833056 (= res!2456390 ((_ is ElementMatch!15877) (h!70254 (exprs!5761 setElem!39378))))))

(assert (=> d!1833056 (= (validRegex!7613 (h!70254 (exprs!5761 setElem!39378))) e!3575605)))

(declare-fun b!5827108 () Bool)

(declare-fun e!3575611 () Bool)

(declare-fun call!455120 () Bool)

(assert (=> b!5827108 (= e!3575611 call!455120)))

(declare-fun bm!455115 () Bool)

(assert (=> bm!455115 (= call!455120 (validRegex!7613 (ite c!1032570 (regTwo!32267 (h!70254 (exprs!5761 setElem!39378))) (regTwo!32266 (h!70254 (exprs!5761 setElem!39378))))))))

(declare-fun b!5827109 () Bool)

(declare-fun res!2456388 () Bool)

(assert (=> b!5827109 (=> res!2456388 e!3575610)))

(assert (=> b!5827109 (= res!2456388 (not ((_ is Concat!24722) (h!70254 (exprs!5761 setElem!39378)))))))

(assert (=> b!5827109 (= e!3575606 e!3575610)))

(declare-fun b!5827110 () Bool)

(declare-fun res!2456389 () Bool)

(assert (=> b!5827110 (=> (not res!2456389) (not e!3575611))))

(assert (=> b!5827110 (= res!2456389 call!455119)))

(assert (=> b!5827110 (= e!3575606 e!3575611)))

(declare-fun bm!455116 () Bool)

(declare-fun c!1032569 () Bool)

(assert (=> bm!455116 (= call!455121 (validRegex!7613 (ite c!1032569 (reg!16206 (h!70254 (exprs!5761 setElem!39378))) (ite c!1032570 (regOne!32267 (h!70254 (exprs!5761 setElem!39378))) (regOne!32266 (h!70254 (exprs!5761 setElem!39378)))))))))

(declare-fun b!5827111 () Bool)

(assert (=> b!5827111 (= e!3575605 e!3575607)))

(assert (=> b!5827111 (= c!1032569 ((_ is Star!15877) (h!70254 (exprs!5761 setElem!39378))))))

(declare-fun b!5827112 () Bool)

(assert (=> b!5827112 (= e!3575608 call!455120)))

(assert (= (and d!1833056 (not res!2456390)) b!5827111))

(assert (= (and b!5827111 c!1032569) b!5827107))

(assert (= (and b!5827111 (not c!1032569)) b!5827104))

(assert (= (and b!5827107 res!2456387) b!5827105))

(assert (= (and b!5827104 c!1032570) b!5827110))

(assert (= (and b!5827104 (not c!1032570)) b!5827109))

(assert (= (and b!5827110 res!2456389) b!5827108))

(assert (= (and b!5827109 (not res!2456388)) b!5827106))

(assert (= (and b!5827106 res!2456386) b!5827112))

(assert (= (or b!5827108 b!5827112) bm!455115))

(assert (= (or b!5827110 b!5827106) bm!455114))

(assert (= (or b!5827105 bm!455114) bm!455116))

(declare-fun m!6759030 () Bool)

(assert (=> b!5827107 m!6759030))

(declare-fun m!6759032 () Bool)

(assert (=> bm!455115 m!6759032))

(declare-fun m!6759034 () Bool)

(assert (=> bm!455116 m!6759034))

(assert (=> bs!1374072 d!1833056))

(assert (=> b!5825767 d!1833042))

(assert (=> b!5825767 d!1833044))

(declare-fun bs!1374300 () Bool)

(declare-fun d!1833058 () Bool)

(assert (= bs!1374300 (and d!1833058 d!1832568)))

(declare-fun lambda!318848 () Int)

(assert (=> bs!1374300 (= lambda!318848 lambda!318794)))

(declare-fun bs!1374301 () Bool)

(assert (= bs!1374301 (and d!1833058 d!1832610)))

(assert (=> bs!1374301 (= lambda!318848 lambda!318807)))

(declare-fun bs!1374302 () Bool)

(assert (= bs!1374302 (and d!1833058 d!1832612)))

(assert (=> bs!1374302 (= lambda!318848 lambda!318810)))

(declare-fun bs!1374303 () Bool)

(assert (= bs!1374303 (and d!1833058 d!1832774)))

(assert (=> bs!1374303 (= lambda!318848 lambda!318827)))

(declare-fun bs!1374304 () Bool)

(assert (= bs!1374304 (and d!1833058 d!1832744)))

(assert (=> bs!1374304 (= lambda!318848 lambda!318824)))

(declare-fun bs!1374305 () Bool)

(assert (= bs!1374305 (and d!1833058 d!1832742)))

(assert (=> bs!1374305 (= lambda!318848 lambda!318823)))

(declare-fun bs!1374306 () Bool)

(assert (= bs!1374306 (and d!1833058 d!1832792)))

(assert (=> bs!1374306 (= lambda!318848 lambda!318828)))

(declare-fun bs!1374307 () Bool)

(assert (= bs!1374307 (and d!1833058 d!1832606)))

(assert (=> bs!1374307 (= lambda!318848 lambda!318801)))

(declare-fun bs!1374308 () Bool)

(assert (= bs!1374308 (and d!1833058 d!1832714)))

(assert (=> bs!1374308 (= lambda!318848 lambda!318820)))

(declare-fun bs!1374309 () Bool)

(assert (= bs!1374309 (and d!1833058 d!1832608)))

(assert (=> bs!1374309 (= lambda!318848 lambda!318804)))

(assert (=> d!1833058 (= (inv!82939 (h!70255 (t!377286 (t!377286 zl!343)))) (forall!14968 (exprs!5761 (h!70255 (t!377286 (t!377286 zl!343)))) lambda!318848))))

(declare-fun bs!1374310 () Bool)

(assert (= bs!1374310 d!1833058))

(declare-fun m!6759036 () Bool)

(assert (=> bs!1374310 m!6759036))

(assert (=> b!5825967 d!1833058))

(declare-fun d!1833060 () Bool)

(declare-fun res!2456391 () Bool)

(declare-fun e!3575612 () Bool)

(assert (=> d!1833060 (=> res!2456391 e!3575612)))

(assert (=> d!1833060 (= res!2456391 ((_ is Nil!63806) lt!2302635))))

(assert (=> d!1833060 (= (forall!14968 lt!2302635 lambda!318823) e!3575612)))

(declare-fun b!5827113 () Bool)

(declare-fun e!3575613 () Bool)

(assert (=> b!5827113 (= e!3575612 e!3575613)))

(declare-fun res!2456392 () Bool)

(assert (=> b!5827113 (=> (not res!2456392) (not e!3575613))))

(assert (=> b!5827113 (= res!2456392 (dynLambda!24970 lambda!318823 (h!70254 lt!2302635)))))

(declare-fun b!5827114 () Bool)

(assert (=> b!5827114 (= e!3575613 (forall!14968 (t!377285 lt!2302635) lambda!318823))))

(assert (= (and d!1833060 (not res!2456391)) b!5827113))

(assert (= (and b!5827113 res!2456392) b!5827114))

(declare-fun b_lambda!219673 () Bool)

(assert (=> (not b_lambda!219673) (not b!5827113)))

(declare-fun m!6759038 () Bool)

(assert (=> b!5827113 m!6759038))

(declare-fun m!6759040 () Bool)

(assert (=> b!5827114 m!6759040))

(assert (=> d!1832742 d!1833060))

(declare-fun d!1833062 () Bool)

(assert (=> d!1833062 (= (head!12317 (tail!11402 s!2326)) (h!70256 (tail!11402 s!2326)))))

(assert (=> b!5825771 d!1833062))

(declare-fun d!1833064 () Bool)

(declare-fun res!2456393 () Bool)

(declare-fun e!3575614 () Bool)

(assert (=> d!1833064 (=> res!2456393 e!3575614)))

(assert (=> d!1833064 (= res!2456393 ((_ is Nil!63807) (t!377286 lt!2302604)))))

(assert (=> d!1833064 (= (noDuplicate!1747 (t!377286 lt!2302604)) e!3575614)))

(declare-fun b!5827115 () Bool)

(declare-fun e!3575615 () Bool)

(assert (=> b!5827115 (= e!3575614 e!3575615)))

(declare-fun res!2456394 () Bool)

(assert (=> b!5827115 (=> (not res!2456394) (not e!3575615))))

(assert (=> b!5827115 (= res!2456394 (not (contains!19907 (t!377286 (t!377286 lt!2302604)) (h!70255 (t!377286 lt!2302604)))))))

(declare-fun b!5827116 () Bool)

(assert (=> b!5827116 (= e!3575615 (noDuplicate!1747 (t!377286 (t!377286 lt!2302604))))))

(assert (= (and d!1833064 (not res!2456393)) b!5827115))

(assert (= (and b!5827115 res!2456394) b!5827116))

(declare-fun m!6759042 () Bool)

(assert (=> b!5827115 m!6759042))

(declare-fun m!6759044 () Bool)

(assert (=> b!5827116 m!6759044))

(assert (=> b!5825836 d!1833064))

(declare-fun bs!1374311 () Bool)

(declare-fun d!1833066 () Bool)

(assert (= bs!1374311 (and d!1833066 d!1832568)))

(declare-fun lambda!318849 () Int)

(assert (=> bs!1374311 (= lambda!318849 lambda!318794)))

(declare-fun bs!1374312 () Bool)

(assert (= bs!1374312 (and d!1833066 d!1832610)))

(assert (=> bs!1374312 (= lambda!318849 lambda!318807)))

(declare-fun bs!1374313 () Bool)

(assert (= bs!1374313 (and d!1833066 d!1833058)))

(assert (=> bs!1374313 (= lambda!318849 lambda!318848)))

(declare-fun bs!1374314 () Bool)

(assert (= bs!1374314 (and d!1833066 d!1832612)))

(assert (=> bs!1374314 (= lambda!318849 lambda!318810)))

(declare-fun bs!1374315 () Bool)

(assert (= bs!1374315 (and d!1833066 d!1832774)))

(assert (=> bs!1374315 (= lambda!318849 lambda!318827)))

(declare-fun bs!1374316 () Bool)

(assert (= bs!1374316 (and d!1833066 d!1832744)))

(assert (=> bs!1374316 (= lambda!318849 lambda!318824)))

(declare-fun bs!1374317 () Bool)

(assert (= bs!1374317 (and d!1833066 d!1832742)))

(assert (=> bs!1374317 (= lambda!318849 lambda!318823)))

(declare-fun bs!1374318 () Bool)

(assert (= bs!1374318 (and d!1833066 d!1832792)))

(assert (=> bs!1374318 (= lambda!318849 lambda!318828)))

(declare-fun bs!1374319 () Bool)

(assert (= bs!1374319 (and d!1833066 d!1832606)))

(assert (=> bs!1374319 (= lambda!318849 lambda!318801)))

(declare-fun bs!1374320 () Bool)

(assert (= bs!1374320 (and d!1833066 d!1832714)))

(assert (=> bs!1374320 (= lambda!318849 lambda!318820)))

(declare-fun bs!1374321 () Bool)

(assert (= bs!1374321 (and d!1833066 d!1832608)))

(assert (=> bs!1374321 (= lambda!318849 lambda!318804)))

(declare-fun b!5827117 () Bool)

(declare-fun e!3575616 () Bool)

(declare-fun lt!2302652 () Regex!15877)

(assert (=> b!5827117 (= e!3575616 (isEmptyExpr!1316 lt!2302652))))

(declare-fun b!5827118 () Bool)

(declare-fun e!3575619 () Bool)

(assert (=> b!5827118 (= e!3575619 e!3575616)))

(declare-fun c!1032573 () Bool)

(assert (=> b!5827118 (= c!1032573 (isEmpty!35677 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun b!5827119 () Bool)

(declare-fun e!3575621 () Regex!15877)

(assert (=> b!5827119 (= e!3575621 EmptyExpr!15877)))

(assert (=> d!1833066 e!3575619))

(declare-fun res!2456396 () Bool)

(assert (=> d!1833066 (=> (not res!2456396) (not e!3575619))))

(assert (=> d!1833066 (= res!2456396 (validRegex!7613 lt!2302652))))

(declare-fun e!3575618 () Regex!15877)

(assert (=> d!1833066 (= lt!2302652 e!3575618)))

(declare-fun c!1032571 () Bool)

(declare-fun e!3575620 () Bool)

(assert (=> d!1833066 (= c!1032571 e!3575620)))

(declare-fun res!2456395 () Bool)

(assert (=> d!1833066 (=> (not res!2456395) (not e!3575620))))

(assert (=> d!1833066 (= res!2456395 ((_ is Cons!63806) (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(assert (=> d!1833066 (forall!14968 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))) lambda!318849)))

(assert (=> d!1833066 (= (generalisedConcat!1474 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))) lt!2302652)))

(declare-fun b!5827120 () Bool)

(declare-fun e!3575617 () Bool)

(assert (=> b!5827120 (= e!3575617 (isConcat!839 lt!2302652))))

(declare-fun b!5827121 () Bool)

(assert (=> b!5827121 (= e!3575618 e!3575621)))

(declare-fun c!1032574 () Bool)

(assert (=> b!5827121 (= c!1032574 ((_ is Cons!63806) (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun b!5827122 () Bool)

(assert (=> b!5827122 (= e!3575617 (= lt!2302652 (head!12318 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))))))))

(declare-fun b!5827123 () Bool)

(assert (=> b!5827123 (= e!3575621 (Concat!24722 (h!70254 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))) (generalisedConcat!1474 (t!377285 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))))))))

(declare-fun b!5827124 () Bool)

(assert (=> b!5827124 (= e!3575618 (h!70254 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun b!5827125 () Bool)

(assert (=> b!5827125 (= e!3575620 (isEmpty!35677 (t!377285 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))))))))

(declare-fun b!5827126 () Bool)

(assert (=> b!5827126 (= e!3575616 e!3575617)))

(declare-fun c!1032572 () Bool)

(assert (=> b!5827126 (= c!1032572 (isEmpty!35677 (tail!11403 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))))))))

(assert (= (and d!1833066 res!2456395) b!5827125))

(assert (= (and d!1833066 c!1032571) b!5827124))

(assert (= (and d!1833066 (not c!1032571)) b!5827121))

(assert (= (and b!5827121 c!1032574) b!5827123))

(assert (= (and b!5827121 (not c!1032574)) b!5827119))

(assert (= (and d!1833066 res!2456396) b!5827118))

(assert (= (and b!5827118 c!1032573) b!5827117))

(assert (= (and b!5827118 (not c!1032573)) b!5827126))

(assert (= (and b!5827126 c!1032572) b!5827122))

(assert (= (and b!5827126 (not c!1032572)) b!5827120))

(assert (=> b!5827118 m!6758396))

(declare-fun m!6759046 () Bool)

(assert (=> b!5827117 m!6759046))

(declare-fun m!6759048 () Bool)

(assert (=> b!5827120 m!6759048))

(declare-fun m!6759050 () Bool)

(assert (=> b!5827122 m!6759050))

(declare-fun m!6759052 () Bool)

(assert (=> b!5827125 m!6759052))

(declare-fun m!6759054 () Bool)

(assert (=> b!5827126 m!6759054))

(assert (=> b!5827126 m!6759054))

(declare-fun m!6759056 () Bool)

(assert (=> b!5827126 m!6759056))

(declare-fun m!6759058 () Bool)

(assert (=> d!1833066 m!6759058))

(declare-fun m!6759060 () Bool)

(assert (=> d!1833066 m!6759060))

(declare-fun m!6759062 () Bool)

(assert (=> b!5827123 m!6759062))

(assert (=> b!5825743 d!1833066))

(declare-fun bs!1374322 () Bool)

(declare-fun d!1833068 () Bool)

(assert (= bs!1374322 (and d!1833068 d!1832568)))

(declare-fun lambda!318850 () Int)

(assert (=> bs!1374322 (= lambda!318850 lambda!318794)))

(declare-fun bs!1374323 () Bool)

(assert (= bs!1374323 (and d!1833068 d!1832610)))

(assert (=> bs!1374323 (= lambda!318850 lambda!318807)))

(declare-fun bs!1374324 () Bool)

(assert (= bs!1374324 (and d!1833068 d!1833066)))

(assert (=> bs!1374324 (= lambda!318850 lambda!318849)))

(declare-fun bs!1374325 () Bool)

(assert (= bs!1374325 (and d!1833068 d!1833058)))

(assert (=> bs!1374325 (= lambda!318850 lambda!318848)))

(declare-fun bs!1374326 () Bool)

(assert (= bs!1374326 (and d!1833068 d!1832612)))

(assert (=> bs!1374326 (= lambda!318850 lambda!318810)))

(declare-fun bs!1374327 () Bool)

(assert (= bs!1374327 (and d!1833068 d!1832774)))

(assert (=> bs!1374327 (= lambda!318850 lambda!318827)))

(declare-fun bs!1374328 () Bool)

(assert (= bs!1374328 (and d!1833068 d!1832744)))

(assert (=> bs!1374328 (= lambda!318850 lambda!318824)))

(declare-fun bs!1374329 () Bool)

(assert (= bs!1374329 (and d!1833068 d!1832742)))

(assert (=> bs!1374329 (= lambda!318850 lambda!318823)))

(declare-fun bs!1374330 () Bool)

(assert (= bs!1374330 (and d!1833068 d!1832792)))

(assert (=> bs!1374330 (= lambda!318850 lambda!318828)))

(declare-fun bs!1374331 () Bool)

(assert (= bs!1374331 (and d!1833068 d!1832606)))

(assert (=> bs!1374331 (= lambda!318850 lambda!318801)))

(declare-fun bs!1374332 () Bool)

(assert (= bs!1374332 (and d!1833068 d!1832714)))

(assert (=> bs!1374332 (= lambda!318850 lambda!318820)))

(declare-fun bs!1374333 () Bool)

(assert (= bs!1374333 (and d!1833068 d!1832608)))

(assert (=> bs!1374333 (= lambda!318850 lambda!318804)))

(assert (=> d!1833068 (= (inv!82939 setElem!39386) (forall!14968 (exprs!5761 setElem!39386) lambda!318850))))

(declare-fun bs!1374334 () Bool)

(assert (= bs!1374334 d!1833068))

(declare-fun m!6759064 () Bool)

(assert (=> bs!1374334 m!6759064))

(assert (=> setNonEmpty!39386 d!1833068))

(declare-fun d!1833070 () Bool)

(declare-fun res!2456397 () Bool)

(declare-fun e!3575622 () Bool)

(assert (=> d!1833070 (=> res!2456397 e!3575622)))

(assert (=> d!1833070 (= res!2456397 ((_ is Nil!63806) (t!377285 lt!2302619)))))

(assert (=> d!1833070 (= (forall!14968 (t!377285 lt!2302619) lambda!318807) e!3575622)))

(declare-fun b!5827127 () Bool)

(declare-fun e!3575623 () Bool)

(assert (=> b!5827127 (= e!3575622 e!3575623)))

(declare-fun res!2456398 () Bool)

(assert (=> b!5827127 (=> (not res!2456398) (not e!3575623))))

(assert (=> b!5827127 (= res!2456398 (dynLambda!24970 lambda!318807 (h!70254 (t!377285 lt!2302619))))))

(declare-fun b!5827128 () Bool)

(assert (=> b!5827128 (= e!3575623 (forall!14968 (t!377285 (t!377285 lt!2302619)) lambda!318807))))

(assert (= (and d!1833070 (not res!2456397)) b!5827127))

(assert (= (and b!5827127 res!2456398) b!5827128))

(declare-fun b_lambda!219675 () Bool)

(assert (=> (not b_lambda!219675) (not b!5827127)))

(declare-fun m!6759066 () Bool)

(assert (=> b!5827127 m!6759066))

(declare-fun m!6759068 () Bool)

(assert (=> b!5827128 m!6759068))

(assert (=> b!5825811 d!1833070))

(declare-fun d!1833072 () Bool)

(assert (=> d!1833072 (= (isEmpty!35677 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))) ((_ is Nil!63806) (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(assert (=> b!5825745 d!1833072))

(declare-fun d!1833074 () Bool)

(declare-fun res!2456399 () Bool)

(declare-fun e!3575624 () Bool)

(assert (=> d!1833074 (=> res!2456399 e!3575624)))

(assert (=> d!1833074 (= res!2456399 ((_ is Nil!63807) res!2456090))))

(assert (=> d!1833074 (= (noDuplicate!1747 res!2456090) e!3575624)))

(declare-fun b!5827129 () Bool)

(declare-fun e!3575625 () Bool)

(assert (=> b!5827129 (= e!3575624 e!3575625)))

(declare-fun res!2456400 () Bool)

(assert (=> b!5827129 (=> (not res!2456400) (not e!3575625))))

(assert (=> b!5827129 (= res!2456400 (not (contains!19907 (t!377286 res!2456090) (h!70255 res!2456090))))))

(declare-fun b!5827130 () Bool)

(assert (=> b!5827130 (= e!3575625 (noDuplicate!1747 (t!377286 res!2456090)))))

(assert (= (and d!1833074 (not res!2456399)) b!5827129))

(assert (= (and b!5827129 res!2456400) b!5827130))

(declare-fun m!6759070 () Bool)

(assert (=> b!5827129 m!6759070))

(declare-fun m!6759072 () Bool)

(assert (=> b!5827130 m!6759072))

(assert (=> d!1832766 d!1833074))

(declare-fun bs!1374335 () Bool)

(declare-fun b!5827138 () Bool)

(assert (= bs!1374335 (and b!5827138 b!5825822)))

(declare-fun lambda!318851 () Int)

(assert (=> bs!1374335 (not (= lambda!318851 lambda!318826))))

(declare-fun bs!1374336 () Bool)

(assert (= bs!1374336 (and b!5827138 b!5825819)))

(assert (=> bs!1374336 (= (and (= (reg!16206 (regTwo!32267 (regOne!32267 r!7292))) (reg!16206 (regOne!32267 r!7292))) (= (regTwo!32267 (regOne!32267 r!7292)) (regOne!32267 r!7292))) (= lambda!318851 lambda!318825))))

(declare-fun bs!1374337 () Bool)

(assert (= bs!1374337 (and b!5827138 b!5826989)))

(assert (=> bs!1374337 (= (and (= (reg!16206 (regTwo!32267 (regOne!32267 r!7292))) (reg!16206 (regTwo!32267 (regTwo!32267 r!7292)))) (= (regTwo!32267 (regOne!32267 r!7292)) (regTwo!32267 (regTwo!32267 r!7292)))) (= lambda!318851 lambda!318844))))

(declare-fun bs!1374338 () Bool)

(assert (= bs!1374338 (and b!5827138 b!5825760)))

(assert (=> bs!1374338 (= (and (= (reg!16206 (regTwo!32267 (regOne!32267 r!7292))) (reg!16206 (regTwo!32267 r!7292))) (= (regTwo!32267 (regOne!32267 r!7292)) (regTwo!32267 r!7292))) (= lambda!318851 lambda!318821))))

(declare-fun bs!1374339 () Bool)

(assert (= bs!1374339 (and b!5827138 b!5827026)))

(assert (=> bs!1374339 (not (= lambda!318851 lambda!318847))))

(declare-fun bs!1374340 () Bool)

(assert (= bs!1374340 (and b!5827138 b!5825298)))

(assert (=> bs!1374340 (= (and (= (reg!16206 (regTwo!32267 (regOne!32267 r!7292))) (reg!16206 r!7292)) (= (regTwo!32267 (regOne!32267 r!7292)) r!7292)) (= lambda!318851 lambda!318799))))

(declare-fun bs!1374341 () Bool)

(assert (= bs!1374341 (and b!5827138 b!5825763)))

(assert (=> bs!1374341 (not (= lambda!318851 lambda!318822))))

(declare-fun bs!1374342 () Bool)

(assert (= bs!1374342 (and b!5827138 b!5827023)))

(assert (=> bs!1374342 (= (and (= (reg!16206 (regTwo!32267 (regOne!32267 r!7292))) (reg!16206 (regOne!32267 (regTwo!32267 r!7292)))) (= (regTwo!32267 (regOne!32267 r!7292)) (regOne!32267 (regTwo!32267 r!7292)))) (= lambda!318851 lambda!318846))))

(declare-fun bs!1374343 () Bool)

(assert (= bs!1374343 (and b!5827138 b!5825301)))

(assert (=> bs!1374343 (not (= lambda!318851 lambda!318800))))

(declare-fun bs!1374344 () Bool)

(assert (= bs!1374344 (and b!5827138 b!5826992)))

(assert (=> bs!1374344 (not (= lambda!318851 lambda!318845))))

(assert (=> b!5827138 true))

(assert (=> b!5827138 true))

(declare-fun bs!1374345 () Bool)

(declare-fun b!5827141 () Bool)

(assert (= bs!1374345 (and b!5827141 b!5825822)))

(declare-fun lambda!318852 () Int)

(assert (=> bs!1374345 (= (and (= (regOne!32266 (regTwo!32267 (regOne!32267 r!7292))) (regOne!32266 (regOne!32267 r!7292))) (= (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))) (regTwo!32266 (regOne!32267 r!7292)))) (= lambda!318852 lambda!318826))))

(declare-fun bs!1374346 () Bool)

(assert (= bs!1374346 (and b!5827141 b!5825819)))

(assert (=> bs!1374346 (not (= lambda!318852 lambda!318825))))

(declare-fun bs!1374347 () Bool)

(assert (= bs!1374347 (and b!5827141 b!5826989)))

(assert (=> bs!1374347 (not (= lambda!318852 lambda!318844))))

(declare-fun bs!1374348 () Bool)

(assert (= bs!1374348 (and b!5827141 b!5825760)))

(assert (=> bs!1374348 (not (= lambda!318852 lambda!318821))))

(declare-fun bs!1374349 () Bool)

(assert (= bs!1374349 (and b!5827141 b!5827026)))

(assert (=> bs!1374349 (= (and (= (regOne!32266 (regTwo!32267 (regOne!32267 r!7292))) (regOne!32266 (regOne!32267 (regTwo!32267 r!7292)))) (= (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))) (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))))) (= lambda!318852 lambda!318847))))

(declare-fun bs!1374350 () Bool)

(assert (= bs!1374350 (and b!5827141 b!5827138)))

(assert (=> bs!1374350 (not (= lambda!318852 lambda!318851))))

(declare-fun bs!1374351 () Bool)

(assert (= bs!1374351 (and b!5827141 b!5825298)))

(assert (=> bs!1374351 (not (= lambda!318852 lambda!318799))))

(declare-fun bs!1374352 () Bool)

(assert (= bs!1374352 (and b!5827141 b!5825763)))

(assert (=> bs!1374352 (= (and (= (regOne!32266 (regTwo!32267 (regOne!32267 r!7292))) (regOne!32266 (regTwo!32267 r!7292))) (= (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))) (regTwo!32266 (regTwo!32267 r!7292)))) (= lambda!318852 lambda!318822))))

(declare-fun bs!1374353 () Bool)

(assert (= bs!1374353 (and b!5827141 b!5827023)))

(assert (=> bs!1374353 (not (= lambda!318852 lambda!318846))))

(declare-fun bs!1374354 () Bool)

(assert (= bs!1374354 (and b!5827141 b!5825301)))

(assert (=> bs!1374354 (= (and (= (regOne!32266 (regTwo!32267 (regOne!32267 r!7292))) (regOne!32266 r!7292)) (= (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))) (regTwo!32266 r!7292))) (= lambda!318852 lambda!318800))))

(declare-fun bs!1374355 () Bool)

(assert (= bs!1374355 (and b!5827141 b!5826992)))

(assert (=> bs!1374355 (= (and (= (regOne!32266 (regTwo!32267 (regOne!32267 r!7292))) (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292)))) (= (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))) (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))))) (= lambda!318852 lambda!318845))))

(assert (=> b!5827141 true))

(assert (=> b!5827141 true))

(declare-fun b!5827131 () Bool)

(declare-fun e!3575628 () Bool)

(assert (=> b!5827131 (= e!3575628 (matchRSpec!2978 (regTwo!32267 (regTwo!32267 (regOne!32267 r!7292))) s!2326))))

(declare-fun b!5827132 () Bool)

(declare-fun c!1032575 () Bool)

(assert (=> b!5827132 (= c!1032575 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32267 r!7292))))))

(declare-fun e!3575629 () Bool)

(declare-fun e!3575632 () Bool)

(assert (=> b!5827132 (= e!3575629 e!3575632)))

(declare-fun b!5827133 () Bool)

(declare-fun c!1032578 () Bool)

(assert (=> b!5827133 (= c!1032578 ((_ is Union!15877) (regTwo!32267 (regOne!32267 r!7292))))))

(declare-fun e!3575631 () Bool)

(assert (=> b!5827133 (= e!3575632 e!3575631)))

(declare-fun b!5827134 () Bool)

(declare-fun e!3575627 () Bool)

(declare-fun call!455123 () Bool)

(assert (=> b!5827134 (= e!3575627 call!455123)))

(declare-fun b!5827135 () Bool)

(assert (=> b!5827135 (= e!3575627 e!3575629)))

(declare-fun res!2456403 () Bool)

(assert (=> b!5827135 (= res!2456403 (not ((_ is EmptyLang!15877) (regTwo!32267 (regOne!32267 r!7292)))))))

(assert (=> b!5827135 (=> (not res!2456403) (not e!3575629))))

(declare-fun bm!455117 () Bool)

(declare-fun c!1032576 () Bool)

(declare-fun call!455122 () Bool)

(assert (=> bm!455117 (= call!455122 (Exists!2955 (ite c!1032576 lambda!318851 lambda!318852)))))

(declare-fun b!5827136 () Bool)

(assert (=> b!5827136 (= e!3575631 e!3575628)))

(declare-fun res!2456402 () Bool)

(assert (=> b!5827136 (= res!2456402 (matchRSpec!2978 (regOne!32267 (regTwo!32267 (regOne!32267 r!7292))) s!2326))))

(assert (=> b!5827136 (=> res!2456402 e!3575628)))

(declare-fun bm!455118 () Bool)

(assert (=> bm!455118 (= call!455123 (isEmpty!35676 s!2326))))

(declare-fun d!1833076 () Bool)

(declare-fun c!1032577 () Bool)

(assert (=> d!1833076 (= c!1032577 ((_ is EmptyExpr!15877) (regTwo!32267 (regOne!32267 r!7292))))))

(assert (=> d!1833076 (= (matchRSpec!2978 (regTwo!32267 (regOne!32267 r!7292)) s!2326) e!3575627)))

(declare-fun b!5827137 () Bool)

(declare-fun e!3575630 () Bool)

(assert (=> b!5827137 (= e!3575631 e!3575630)))

(assert (=> b!5827137 (= c!1032576 ((_ is Star!15877) (regTwo!32267 (regOne!32267 r!7292))))))

(declare-fun e!3575626 () Bool)

(assert (=> b!5827138 (= e!3575626 call!455122)))

(declare-fun b!5827139 () Bool)

(assert (=> b!5827139 (= e!3575632 (= s!2326 (Cons!63808 (c!1032237 (regTwo!32267 (regOne!32267 r!7292))) Nil!63808)))))

(declare-fun b!5827140 () Bool)

(declare-fun res!2456401 () Bool)

(assert (=> b!5827140 (=> res!2456401 e!3575626)))

(assert (=> b!5827140 (= res!2456401 call!455123)))

(assert (=> b!5827140 (= e!3575630 e!3575626)))

(assert (=> b!5827141 (= e!3575630 call!455122)))

(assert (= (and d!1833076 c!1032577) b!5827134))

(assert (= (and d!1833076 (not c!1032577)) b!5827135))

(assert (= (and b!5827135 res!2456403) b!5827132))

(assert (= (and b!5827132 c!1032575) b!5827139))

(assert (= (and b!5827132 (not c!1032575)) b!5827133))

(assert (= (and b!5827133 c!1032578) b!5827136))

(assert (= (and b!5827133 (not c!1032578)) b!5827137))

(assert (= (and b!5827136 (not res!2456402)) b!5827131))

(assert (= (and b!5827137 c!1032576) b!5827140))

(assert (= (and b!5827137 (not c!1032576)) b!5827141))

(assert (= (and b!5827140 (not res!2456401)) b!5827138))

(assert (= (or b!5827138 b!5827141) bm!455117))

(assert (= (or b!5827134 b!5827140) bm!455118))

(declare-fun m!6759074 () Bool)

(assert (=> b!5827131 m!6759074))

(declare-fun m!6759076 () Bool)

(assert (=> bm!455117 m!6759076))

(declare-fun m!6759078 () Bool)

(assert (=> b!5827136 m!6759078))

(assert (=> bm!455118 m!6758162))

(assert (=> b!5825812 d!1833076))

(declare-fun d!1833078 () Bool)

(assert (=> d!1833078 (= (nullable!5880 (reg!16206 lt!2302616)) (nullableFct!1886 (reg!16206 lt!2302616)))))

(declare-fun bs!1374356 () Bool)

(assert (= bs!1374356 d!1833078))

(declare-fun m!6759080 () Bool)

(assert (=> bs!1374356 m!6759080))

(assert (=> b!5825849 d!1833078))

(declare-fun call!455126 () Regex!15877)

(declare-fun e!3575634 () Regex!15877)

(declare-fun b!5827142 () Bool)

(declare-fun call!455127 () Regex!15877)

(assert (=> b!5827142 (= e!3575634 (Union!15877 (Concat!24722 call!455127 (regTwo!32266 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))))) call!455126))))

(declare-fun c!1032583 () Bool)

(declare-fun bm!455119 () Bool)

(assert (=> bm!455119 (= call!455127 (derivativeStep!4620 (ite c!1032583 (regOne!32267 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292))))) (regOne!32266 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))))) (head!12317 s!2326)))))

(declare-fun bm!455120 () Bool)

(declare-fun call!455124 () Regex!15877)

(declare-fun call!455125 () Regex!15877)

(assert (=> bm!455120 (= call!455124 call!455125)))

(declare-fun b!5827143 () Bool)

(assert (=> b!5827143 (= e!3575634 (Union!15877 (Concat!24722 call!455126 (regTwo!32266 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))))) EmptyLang!15877))))

(declare-fun c!1032580 () Bool)

(declare-fun b!5827144 () Bool)

(assert (=> b!5827144 (= c!1032580 (nullable!5880 (regOne!32266 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))))))))

(declare-fun e!3575637 () Regex!15877)

(assert (=> b!5827144 (= e!3575637 e!3575634)))

(declare-fun d!1833080 () Bool)

(declare-fun lt!2302653 () Regex!15877)

(assert (=> d!1833080 (validRegex!7613 lt!2302653)))

(declare-fun e!3575635 () Regex!15877)

(assert (=> d!1833080 (= lt!2302653 e!3575635)))

(declare-fun c!1032581 () Bool)

(assert (=> d!1833080 (= c!1032581 (or ((_ is EmptyExpr!15877) (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292))))) ((_ is EmptyLang!15877) (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))))))))

(assert (=> d!1833080 (validRegex!7613 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))))))

(assert (=> d!1833080 (= (derivativeStep!4620 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))) (head!12317 s!2326)) lt!2302653)))

(declare-fun e!3575633 () Regex!15877)

(declare-fun b!5827145 () Bool)

(assert (=> b!5827145 (= e!3575633 (ite (= (head!12317 s!2326) (c!1032237 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))))) EmptyExpr!15877 EmptyLang!15877))))

(declare-fun b!5827146 () Bool)

(declare-fun e!3575636 () Regex!15877)

(assert (=> b!5827146 (= e!3575636 e!3575637)))

(declare-fun c!1032579 () Bool)

(assert (=> b!5827146 (= c!1032579 ((_ is Star!15877) (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292))))))))

(declare-fun b!5827147 () Bool)

(assert (=> b!5827147 (= e!3575635 EmptyLang!15877)))

(declare-fun b!5827148 () Bool)

(assert (=> b!5827148 (= e!3575637 (Concat!24722 call!455124 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292))))))))

(declare-fun b!5827149 () Bool)

(assert (=> b!5827149 (= e!3575635 e!3575633)))

(declare-fun c!1032582 () Bool)

(assert (=> b!5827149 (= c!1032582 ((_ is ElementMatch!15877) (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292))))))))

(declare-fun bm!455121 () Bool)

(assert (=> bm!455121 (= call!455126 call!455124)))

(declare-fun bm!455122 () Bool)

(assert (=> bm!455122 (= call!455125 (derivativeStep!4620 (ite c!1032583 (regTwo!32267 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292))))) (ite c!1032579 (reg!16206 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292))))) (ite c!1032580 (regTwo!32266 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292))))) (regOne!32266 (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292)))))))) (head!12317 s!2326)))))

(declare-fun b!5827150 () Bool)

(assert (=> b!5827150 (= c!1032583 ((_ is Union!15877) (ite c!1032419 (regTwo!32267 r!7292) (ite c!1032415 (reg!16206 r!7292) (ite c!1032416 (regTwo!32266 r!7292) (regOne!32266 r!7292))))))))

(assert (=> b!5827150 (= e!3575633 e!3575636)))

(declare-fun b!5827151 () Bool)

(assert (=> b!5827151 (= e!3575636 (Union!15877 call!455127 call!455125))))

(assert (= (and d!1833080 c!1032581) b!5827147))

(assert (= (and d!1833080 (not c!1032581)) b!5827149))

(assert (= (and b!5827149 c!1032582) b!5827145))

(assert (= (and b!5827149 (not c!1032582)) b!5827150))

(assert (= (and b!5827150 c!1032583) b!5827151))

(assert (= (and b!5827150 (not c!1032583)) b!5827146))

(assert (= (and b!5827146 c!1032579) b!5827148))

(assert (= (and b!5827146 (not c!1032579)) b!5827144))

(assert (= (and b!5827144 c!1032580) b!5827142))

(assert (= (and b!5827144 (not c!1032580)) b!5827143))

(assert (= (or b!5827142 b!5827143) bm!455121))

(assert (= (or b!5827148 bm!455121) bm!455120))

(assert (= (or b!5827151 bm!455120) bm!455122))

(assert (= (or b!5827151 b!5827142) bm!455119))

(assert (=> bm!455119 m!6758154))

(declare-fun m!6759082 () Bool)

(assert (=> bm!455119 m!6759082))

(declare-fun m!6759084 () Bool)

(assert (=> b!5827144 m!6759084))

(declare-fun m!6759086 () Bool)

(assert (=> d!1833080 m!6759086))

(declare-fun m!6759088 () Bool)

(assert (=> d!1833080 m!6759088))

(assert (=> bm!455122 m!6758154))

(declare-fun m!6759090 () Bool)

(assert (=> bm!455122 m!6759090))

(assert (=> bm!454966 d!1833080))

(declare-fun bs!1374357 () Bool)

(declare-fun d!1833082 () Bool)

(assert (= bs!1374357 (and d!1833082 d!1832568)))

(declare-fun lambda!318853 () Int)

(assert (=> bs!1374357 (= lambda!318853 lambda!318794)))

(declare-fun bs!1374358 () Bool)

(assert (= bs!1374358 (and d!1833082 d!1832610)))

(assert (=> bs!1374358 (= lambda!318853 lambda!318807)))

(declare-fun bs!1374359 () Bool)

(assert (= bs!1374359 (and d!1833082 d!1833066)))

(assert (=> bs!1374359 (= lambda!318853 lambda!318849)))

(declare-fun bs!1374360 () Bool)

(assert (= bs!1374360 (and d!1833082 d!1833058)))

(assert (=> bs!1374360 (= lambda!318853 lambda!318848)))

(declare-fun bs!1374361 () Bool)

(assert (= bs!1374361 (and d!1833082 d!1832612)))

(assert (=> bs!1374361 (= lambda!318853 lambda!318810)))

(declare-fun bs!1374362 () Bool)

(assert (= bs!1374362 (and d!1833082 d!1832774)))

(assert (=> bs!1374362 (= lambda!318853 lambda!318827)))

(declare-fun bs!1374363 () Bool)

(assert (= bs!1374363 (and d!1833082 d!1832744)))

(assert (=> bs!1374363 (= lambda!318853 lambda!318824)))

(declare-fun bs!1374364 () Bool)

(assert (= bs!1374364 (and d!1833082 d!1832742)))

(assert (=> bs!1374364 (= lambda!318853 lambda!318823)))

(declare-fun bs!1374365 () Bool)

(assert (= bs!1374365 (and d!1833082 d!1832792)))

(assert (=> bs!1374365 (= lambda!318853 lambda!318828)))

(declare-fun bs!1374366 () Bool)

(assert (= bs!1374366 (and d!1833082 d!1832606)))

(assert (=> bs!1374366 (= lambda!318853 lambda!318801)))

(declare-fun bs!1374367 () Bool)

(assert (= bs!1374367 (and d!1833082 d!1833068)))

(assert (=> bs!1374367 (= lambda!318853 lambda!318850)))

(declare-fun bs!1374368 () Bool)

(assert (= bs!1374368 (and d!1833082 d!1832714)))

(assert (=> bs!1374368 (= lambda!318853 lambda!318820)))

(declare-fun bs!1374369 () Bool)

(assert (= bs!1374369 (and d!1833082 d!1832608)))

(assert (=> bs!1374369 (= lambda!318853 lambda!318804)))

(declare-fun b!5827152 () Bool)

(declare-fun e!3575640 () Regex!15877)

(declare-fun e!3575639 () Regex!15877)

(assert (=> b!5827152 (= e!3575640 e!3575639)))

(declare-fun c!1032586 () Bool)

(assert (=> b!5827152 (= c!1032586 ((_ is Cons!63806) (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5827153 () Bool)

(declare-fun e!3575642 () Bool)

(assert (=> b!5827153 (= e!3575642 (isEmpty!35677 (t!377285 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343))))))))

(declare-fun b!5827154 () Bool)

(assert (=> b!5827154 (= e!3575639 (Union!15877 (h!70254 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))) (generalisedUnion!1721 (t!377285 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))))))))

(declare-fun b!5827155 () Bool)

(declare-fun e!3575643 () Bool)

(declare-fun e!3575638 () Bool)

(assert (=> b!5827155 (= e!3575643 e!3575638)))

(declare-fun c!1032585 () Bool)

(assert (=> b!5827155 (= c!1032585 (isEmpty!35677 (tail!11403 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343))))))))

(declare-fun b!5827156 () Bool)

(declare-fun lt!2302654 () Regex!15877)

(assert (=> b!5827156 (= e!3575638 (isUnion!755 lt!2302654))))

(declare-fun b!5827157 () Bool)

(assert (=> b!5827157 (= e!3575639 EmptyLang!15877)))

(declare-fun e!3575641 () Bool)

(assert (=> d!1833082 e!3575641))

(declare-fun res!2456404 () Bool)

(assert (=> d!1833082 (=> (not res!2456404) (not e!3575641))))

(assert (=> d!1833082 (= res!2456404 (validRegex!7613 lt!2302654))))

(assert (=> d!1833082 (= lt!2302654 e!3575640)))

(declare-fun c!1032587 () Bool)

(assert (=> d!1833082 (= c!1032587 e!3575642)))

(declare-fun res!2456405 () Bool)

(assert (=> d!1833082 (=> (not res!2456405) (not e!3575642))))

(assert (=> d!1833082 (= res!2456405 ((_ is Cons!63806) (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(assert (=> d!1833082 (forall!14968 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343))) lambda!318853)))

(assert (=> d!1833082 (= (generalisedUnion!1721 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))) lt!2302654)))

(declare-fun b!5827158 () Bool)

(assert (=> b!5827158 (= e!3575641 e!3575643)))

(declare-fun c!1032584 () Bool)

(assert (=> b!5827158 (= c!1032584 (isEmpty!35677 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5827159 () Bool)

(assert (=> b!5827159 (= e!3575638 (= lt!2302654 (head!12318 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343))))))))

(declare-fun b!5827160 () Bool)

(assert (=> b!5827160 (= e!3575640 (h!70254 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5827161 () Bool)

(assert (=> b!5827161 (= e!3575643 (isEmptyLang!1325 lt!2302654))))

(assert (= (and d!1833082 res!2456405) b!5827153))

(assert (= (and d!1833082 c!1032587) b!5827160))

(assert (= (and d!1833082 (not c!1032587)) b!5827152))

(assert (= (and b!5827152 c!1032586) b!5827154))

(assert (= (and b!5827152 (not c!1032586)) b!5827157))

(assert (= (and d!1833082 res!2456404) b!5827158))

(assert (= (and b!5827158 c!1032584) b!5827161))

(assert (= (and b!5827158 (not c!1032584)) b!5827155))

(assert (= (and b!5827155 c!1032585) b!5827159))

(assert (= (and b!5827155 (not c!1032585)) b!5827156))

(declare-fun m!6759092 () Bool)

(assert (=> b!5827155 m!6759092))

(assert (=> b!5827155 m!6759092))

(declare-fun m!6759094 () Bool)

(assert (=> b!5827155 m!6759094))

(declare-fun m!6759096 () Bool)

(assert (=> d!1833082 m!6759096))

(declare-fun m!6759098 () Bool)

(assert (=> d!1833082 m!6759098))

(declare-fun m!6759100 () Bool)

(assert (=> b!5827154 m!6759100))

(declare-fun m!6759102 () Bool)

(assert (=> b!5827156 m!6759102))

(declare-fun m!6759104 () Bool)

(assert (=> b!5827161 m!6759104))

(declare-fun m!6759106 () Bool)

(assert (=> b!5827159 m!6759106))

(declare-fun m!6759108 () Bool)

(assert (=> b!5827153 m!6759108))

(assert (=> b!5827158 m!6758538))

(assert (=> b!5825897 d!1833082))

(declare-fun d!1833084 () Bool)

(declare-fun res!2456406 () Bool)

(declare-fun e!3575644 () Bool)

(assert (=> d!1833084 (=> res!2456406 e!3575644)))

(assert (=> d!1833084 (= res!2456406 ((_ is Nil!63806) (t!377285 (unfocusZipperList!1298 zl!343))))))

(assert (=> d!1833084 (= (forall!14968 (t!377285 (unfocusZipperList!1298 zl!343)) lambda!318804) e!3575644)))

(declare-fun b!5827162 () Bool)

(declare-fun e!3575645 () Bool)

(assert (=> b!5827162 (= e!3575644 e!3575645)))

(declare-fun res!2456407 () Bool)

(assert (=> b!5827162 (=> (not res!2456407) (not e!3575645))))

(assert (=> b!5827162 (= res!2456407 (dynLambda!24970 lambda!318804 (h!70254 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun b!5827163 () Bool)

(assert (=> b!5827163 (= e!3575645 (forall!14968 (t!377285 (t!377285 (unfocusZipperList!1298 zl!343))) lambda!318804))))

(assert (= (and d!1833084 (not res!2456406)) b!5827162))

(assert (= (and b!5827162 res!2456407) b!5827163))

(declare-fun b_lambda!219677 () Bool)

(assert (=> (not b_lambda!219677) (not b!5827162)))

(declare-fun m!6759110 () Bool)

(assert (=> b!5827162 m!6759110))

(declare-fun m!6759112 () Bool)

(assert (=> b!5827163 m!6759112))

(assert (=> b!5825856 d!1833084))

(declare-fun bs!1374370 () Bool)

(declare-fun d!1833086 () Bool)

(assert (= bs!1374370 (and d!1833086 d!1832568)))

(declare-fun lambda!318854 () Int)

(assert (=> bs!1374370 (= lambda!318854 lambda!318794)))

(declare-fun bs!1374371 () Bool)

(assert (= bs!1374371 (and d!1833086 d!1832610)))

(assert (=> bs!1374371 (= lambda!318854 lambda!318807)))

(declare-fun bs!1374372 () Bool)

(assert (= bs!1374372 (and d!1833086 d!1833066)))

(assert (=> bs!1374372 (= lambda!318854 lambda!318849)))

(declare-fun bs!1374373 () Bool)

(assert (= bs!1374373 (and d!1833086 d!1833058)))

(assert (=> bs!1374373 (= lambda!318854 lambda!318848)))

(declare-fun bs!1374374 () Bool)

(assert (= bs!1374374 (and d!1833086 d!1832612)))

(assert (=> bs!1374374 (= lambda!318854 lambda!318810)))

(declare-fun bs!1374375 () Bool)

(assert (= bs!1374375 (and d!1833086 d!1832774)))

(assert (=> bs!1374375 (= lambda!318854 lambda!318827)))

(declare-fun bs!1374376 () Bool)

(assert (= bs!1374376 (and d!1833086 d!1832744)))

(assert (=> bs!1374376 (= lambda!318854 lambda!318824)))

(declare-fun bs!1374377 () Bool)

(assert (= bs!1374377 (and d!1833086 d!1832742)))

(assert (=> bs!1374377 (= lambda!318854 lambda!318823)))

(declare-fun bs!1374378 () Bool)

(assert (= bs!1374378 (and d!1833086 d!1832792)))

(assert (=> bs!1374378 (= lambda!318854 lambda!318828)))

(declare-fun bs!1374379 () Bool)

(assert (= bs!1374379 (and d!1833086 d!1832606)))

(assert (=> bs!1374379 (= lambda!318854 lambda!318801)))

(declare-fun bs!1374380 () Bool)

(assert (= bs!1374380 (and d!1833086 d!1833068)))

(assert (=> bs!1374380 (= lambda!318854 lambda!318850)))

(declare-fun bs!1374381 () Bool)

(assert (= bs!1374381 (and d!1833086 d!1833082)))

(assert (=> bs!1374381 (= lambda!318854 lambda!318853)))

(declare-fun bs!1374382 () Bool)

(assert (= bs!1374382 (and d!1833086 d!1832714)))

(assert (=> bs!1374382 (= lambda!318854 lambda!318820)))

(declare-fun bs!1374383 () Bool)

(assert (= bs!1374383 (and d!1833086 d!1832608)))

(assert (=> bs!1374383 (= lambda!318854 lambda!318804)))

(declare-fun b!5827164 () Bool)

(declare-fun e!3575646 () Bool)

(declare-fun lt!2302655 () Regex!15877)

(assert (=> b!5827164 (= e!3575646 (isEmptyExpr!1316 lt!2302655))))

(declare-fun b!5827165 () Bool)

(declare-fun e!3575649 () Bool)

(assert (=> b!5827165 (= e!3575649 e!3575646)))

(declare-fun c!1032590 () Bool)

(assert (=> b!5827165 (= c!1032590 (isEmpty!35677 (exprs!5761 (h!70255 (t!377286 zl!343)))))))

(declare-fun b!5827166 () Bool)

(declare-fun e!3575651 () Regex!15877)

(assert (=> b!5827166 (= e!3575651 EmptyExpr!15877)))

(assert (=> d!1833086 e!3575649))

(declare-fun res!2456409 () Bool)

(assert (=> d!1833086 (=> (not res!2456409) (not e!3575649))))

(assert (=> d!1833086 (= res!2456409 (validRegex!7613 lt!2302655))))

(declare-fun e!3575648 () Regex!15877)

(assert (=> d!1833086 (= lt!2302655 e!3575648)))

(declare-fun c!1032588 () Bool)

(declare-fun e!3575650 () Bool)

(assert (=> d!1833086 (= c!1032588 e!3575650)))

(declare-fun res!2456408 () Bool)

(assert (=> d!1833086 (=> (not res!2456408) (not e!3575650))))

(assert (=> d!1833086 (= res!2456408 ((_ is Cons!63806) (exprs!5761 (h!70255 (t!377286 zl!343)))))))

(assert (=> d!1833086 (forall!14968 (exprs!5761 (h!70255 (t!377286 zl!343))) lambda!318854)))

(assert (=> d!1833086 (= (generalisedConcat!1474 (exprs!5761 (h!70255 (t!377286 zl!343)))) lt!2302655)))

(declare-fun b!5827167 () Bool)

(declare-fun e!3575647 () Bool)

(assert (=> b!5827167 (= e!3575647 (isConcat!839 lt!2302655))))

(declare-fun b!5827168 () Bool)

(assert (=> b!5827168 (= e!3575648 e!3575651)))

(declare-fun c!1032591 () Bool)

(assert (=> b!5827168 (= c!1032591 ((_ is Cons!63806) (exprs!5761 (h!70255 (t!377286 zl!343)))))))

(declare-fun b!5827169 () Bool)

(assert (=> b!5827169 (= e!3575647 (= lt!2302655 (head!12318 (exprs!5761 (h!70255 (t!377286 zl!343))))))))

(declare-fun b!5827170 () Bool)

(assert (=> b!5827170 (= e!3575651 (Concat!24722 (h!70254 (exprs!5761 (h!70255 (t!377286 zl!343)))) (generalisedConcat!1474 (t!377285 (exprs!5761 (h!70255 (t!377286 zl!343)))))))))

(declare-fun b!5827171 () Bool)

(assert (=> b!5827171 (= e!3575648 (h!70254 (exprs!5761 (h!70255 (t!377286 zl!343)))))))

(declare-fun b!5827172 () Bool)

(assert (=> b!5827172 (= e!3575650 (isEmpty!35677 (t!377285 (exprs!5761 (h!70255 (t!377286 zl!343))))))))

(declare-fun b!5827173 () Bool)

(assert (=> b!5827173 (= e!3575646 e!3575647)))

(declare-fun c!1032589 () Bool)

(assert (=> b!5827173 (= c!1032589 (isEmpty!35677 (tail!11403 (exprs!5761 (h!70255 (t!377286 zl!343))))))))

(assert (= (and d!1833086 res!2456408) b!5827172))

(assert (= (and d!1833086 c!1032588) b!5827171))

(assert (= (and d!1833086 (not c!1032588)) b!5827168))

(assert (= (and b!5827168 c!1032591) b!5827170))

(assert (= (and b!5827168 (not c!1032591)) b!5827166))

(assert (= (and d!1833086 res!2456409) b!5827165))

(assert (= (and b!5827165 c!1032590) b!5827164))

(assert (= (and b!5827165 (not c!1032590)) b!5827173))

(assert (= (and b!5827173 c!1032589) b!5827169))

(assert (= (and b!5827173 (not c!1032589)) b!5827167))

(declare-fun m!6759114 () Bool)

(assert (=> b!5827165 m!6759114))

(declare-fun m!6759116 () Bool)

(assert (=> b!5827164 m!6759116))

(declare-fun m!6759118 () Bool)

(assert (=> b!5827167 m!6759118))

(declare-fun m!6759120 () Bool)

(assert (=> b!5827169 m!6759120))

(declare-fun m!6759122 () Bool)

(assert (=> b!5827172 m!6759122))

(declare-fun m!6759124 () Bool)

(assert (=> b!5827173 m!6759124))

(assert (=> b!5827173 m!6759124))

(declare-fun m!6759126 () Bool)

(assert (=> b!5827173 m!6759126))

(declare-fun m!6759128 () Bool)

(assert (=> d!1833086 m!6759128))

(declare-fun m!6759130 () Bool)

(assert (=> d!1833086 m!6759130))

(declare-fun m!6759132 () Bool)

(assert (=> b!5827170 m!6759132))

(assert (=> b!5825808 d!1833086))

(declare-fun bs!1374384 () Bool)

(declare-fun d!1833088 () Bool)

(assert (= bs!1374384 (and d!1833088 d!1832568)))

(declare-fun lambda!318855 () Int)

(assert (=> bs!1374384 (= lambda!318855 lambda!318794)))

(declare-fun bs!1374385 () Bool)

(assert (= bs!1374385 (and d!1833088 d!1832610)))

(assert (=> bs!1374385 (= lambda!318855 lambda!318807)))

(declare-fun bs!1374386 () Bool)

(assert (= bs!1374386 (and d!1833088 d!1833066)))

(assert (=> bs!1374386 (= lambda!318855 lambda!318849)))

(declare-fun bs!1374387 () Bool)

(assert (= bs!1374387 (and d!1833088 d!1833058)))

(assert (=> bs!1374387 (= lambda!318855 lambda!318848)))

(declare-fun bs!1374388 () Bool)

(assert (= bs!1374388 (and d!1833088 d!1833086)))

(assert (=> bs!1374388 (= lambda!318855 lambda!318854)))

(declare-fun bs!1374389 () Bool)

(assert (= bs!1374389 (and d!1833088 d!1832612)))

(assert (=> bs!1374389 (= lambda!318855 lambda!318810)))

(declare-fun bs!1374390 () Bool)

(assert (= bs!1374390 (and d!1833088 d!1832774)))

(assert (=> bs!1374390 (= lambda!318855 lambda!318827)))

(declare-fun bs!1374391 () Bool)

(assert (= bs!1374391 (and d!1833088 d!1832744)))

(assert (=> bs!1374391 (= lambda!318855 lambda!318824)))

(declare-fun bs!1374392 () Bool)

(assert (= bs!1374392 (and d!1833088 d!1832742)))

(assert (=> bs!1374392 (= lambda!318855 lambda!318823)))

(declare-fun bs!1374393 () Bool)

(assert (= bs!1374393 (and d!1833088 d!1832792)))

(assert (=> bs!1374393 (= lambda!318855 lambda!318828)))

(declare-fun bs!1374394 () Bool)

(assert (= bs!1374394 (and d!1833088 d!1832606)))

(assert (=> bs!1374394 (= lambda!318855 lambda!318801)))

(declare-fun bs!1374395 () Bool)

(assert (= bs!1374395 (and d!1833088 d!1833068)))

(assert (=> bs!1374395 (= lambda!318855 lambda!318850)))

(declare-fun bs!1374396 () Bool)

(assert (= bs!1374396 (and d!1833088 d!1833082)))

(assert (=> bs!1374396 (= lambda!318855 lambda!318853)))

(declare-fun bs!1374397 () Bool)

(assert (= bs!1374397 (and d!1833088 d!1832714)))

(assert (=> bs!1374397 (= lambda!318855 lambda!318820)))

(declare-fun bs!1374398 () Bool)

(assert (= bs!1374398 (and d!1833088 d!1832608)))

(assert (=> bs!1374398 (= lambda!318855 lambda!318804)))

(declare-fun lt!2302656 () List!63930)

(assert (=> d!1833088 (forall!14968 lt!2302656 lambda!318855)))

(declare-fun e!3575652 () List!63930)

(assert (=> d!1833088 (= lt!2302656 e!3575652)))

(declare-fun c!1032592 () Bool)

(assert (=> d!1833088 (= c!1032592 ((_ is Cons!63807) (t!377286 (t!377286 zl!343))))))

(assert (=> d!1833088 (= (unfocusZipperList!1298 (t!377286 (t!377286 zl!343))) lt!2302656)))

(declare-fun b!5827174 () Bool)

(assert (=> b!5827174 (= e!3575652 (Cons!63806 (generalisedConcat!1474 (exprs!5761 (h!70255 (t!377286 (t!377286 zl!343))))) (unfocusZipperList!1298 (t!377286 (t!377286 (t!377286 zl!343))))))))

(declare-fun b!5827175 () Bool)

(assert (=> b!5827175 (= e!3575652 Nil!63806)))

(assert (= (and d!1833088 c!1032592) b!5827174))

(assert (= (and d!1833088 (not c!1032592)) b!5827175))

(declare-fun m!6759134 () Bool)

(assert (=> d!1833088 m!6759134))

(declare-fun m!6759136 () Bool)

(assert (=> b!5827174 m!6759136))

(declare-fun m!6759138 () Bool)

(assert (=> b!5827174 m!6759138))

(assert (=> b!5825808 d!1833088))

(declare-fun b!5827176 () Bool)

(declare-fun e!3575658 () Bool)

(declare-fun e!3575659 () Bool)

(assert (=> b!5827176 (= e!3575658 e!3575659)))

(declare-fun c!1032594 () Bool)

(assert (=> b!5827176 (= c!1032594 ((_ is EmptyLang!15877) (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326)))))))

(declare-fun b!5827177 () Bool)

(declare-fun e!3575656 () Bool)

(assert (=> b!5827177 (= e!3575656 (= (head!12317 (tail!11402 (tail!11402 s!2326))) (c!1032237 (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326))))))))

(declare-fun b!5827178 () Bool)

(declare-fun res!2456412 () Bool)

(assert (=> b!5827178 (=> (not res!2456412) (not e!3575656))))

(assert (=> b!5827178 (= res!2456412 (isEmpty!35676 (tail!11402 (tail!11402 (tail!11402 s!2326)))))))

(declare-fun bm!455123 () Bool)

(declare-fun call!455128 () Bool)

(assert (=> bm!455123 (= call!455128 (isEmpty!35676 (tail!11402 (tail!11402 s!2326))))))

(declare-fun b!5827180 () Bool)

(declare-fun e!3575654 () Bool)

(declare-fun e!3575653 () Bool)

(assert (=> b!5827180 (= e!3575654 e!3575653)))

(declare-fun res!2456413 () Bool)

(assert (=> b!5827180 (=> (not res!2456413) (not e!3575653))))

(declare-fun lt!2302657 () Bool)

(assert (=> b!5827180 (= res!2456413 (not lt!2302657))))

(declare-fun b!5827181 () Bool)

(declare-fun res!2456411 () Bool)

(assert (=> b!5827181 (=> res!2456411 e!3575654)))

(assert (=> b!5827181 (= res!2456411 e!3575656)))

(declare-fun res!2456417 () Bool)

(assert (=> b!5827181 (=> (not res!2456417) (not e!3575656))))

(assert (=> b!5827181 (= res!2456417 lt!2302657)))

(declare-fun b!5827182 () Bool)

(assert (=> b!5827182 (= e!3575659 (not lt!2302657))))

(declare-fun b!5827183 () Bool)

(declare-fun e!3575657 () Bool)

(assert (=> b!5827183 (= e!3575657 (not (= (head!12317 (tail!11402 (tail!11402 s!2326))) (c!1032237 (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326)))))))))

(declare-fun b!5827184 () Bool)

(assert (=> b!5827184 (= e!3575653 e!3575657)))

(declare-fun res!2456414 () Bool)

(assert (=> b!5827184 (=> res!2456414 e!3575657)))

(assert (=> b!5827184 (= res!2456414 call!455128)))

(declare-fun b!5827185 () Bool)

(declare-fun res!2456410 () Bool)

(assert (=> b!5827185 (=> res!2456410 e!3575654)))

(assert (=> b!5827185 (= res!2456410 (not ((_ is ElementMatch!15877) (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326))))))))

(assert (=> b!5827185 (= e!3575659 e!3575654)))

(declare-fun b!5827186 () Bool)

(declare-fun e!3575655 () Bool)

(assert (=> b!5827186 (= e!3575655 (nullable!5880 (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326)))))))

(declare-fun b!5827187 () Bool)

(assert (=> b!5827187 (= e!3575655 (matchR!8060 (derivativeStep!4620 (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326))) (head!12317 (tail!11402 (tail!11402 s!2326)))) (tail!11402 (tail!11402 (tail!11402 s!2326)))))))

(declare-fun b!5827188 () Bool)

(declare-fun res!2456415 () Bool)

(assert (=> b!5827188 (=> (not res!2456415) (not e!3575656))))

(assert (=> b!5827188 (= res!2456415 (not call!455128))))

(declare-fun b!5827189 () Bool)

(assert (=> b!5827189 (= e!3575658 (= lt!2302657 call!455128))))

(declare-fun d!1833090 () Bool)

(assert (=> d!1833090 e!3575658))

(declare-fun c!1032595 () Bool)

(assert (=> d!1833090 (= c!1032595 ((_ is EmptyExpr!15877) (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326)))))))

(assert (=> d!1833090 (= lt!2302657 e!3575655)))

(declare-fun c!1032593 () Bool)

(assert (=> d!1833090 (= c!1032593 (isEmpty!35676 (tail!11402 (tail!11402 s!2326))))))

(assert (=> d!1833090 (validRegex!7613 (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326))))))

(assert (=> d!1833090 (= (matchR!8060 (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326))) (tail!11402 (tail!11402 s!2326))) lt!2302657)))

(declare-fun b!5827179 () Bool)

(declare-fun res!2456416 () Bool)

(assert (=> b!5827179 (=> res!2456416 e!3575657)))

(assert (=> b!5827179 (= res!2456416 (not (isEmpty!35676 (tail!11402 (tail!11402 (tail!11402 s!2326))))))))

(assert (= (and d!1833090 c!1032593) b!5827186))

(assert (= (and d!1833090 (not c!1032593)) b!5827187))

(assert (= (and d!1833090 c!1032595) b!5827189))

(assert (= (and d!1833090 (not c!1032595)) b!5827176))

(assert (= (and b!5827176 c!1032594) b!5827182))

(assert (= (and b!5827176 (not c!1032594)) b!5827185))

(assert (= (and b!5827185 (not res!2456410)) b!5827181))

(assert (= (and b!5827181 res!2456417) b!5827188))

(assert (= (and b!5827188 res!2456415) b!5827178))

(assert (= (and b!5827178 res!2456412) b!5827177))

(assert (= (and b!5827181 (not res!2456411)) b!5827180))

(assert (= (and b!5827180 res!2456413) b!5827184))

(assert (= (and b!5827184 (not res!2456414)) b!5827179))

(assert (= (and b!5827179 (not res!2456416)) b!5827183))

(assert (= (or b!5827189 b!5827188 b!5827184) bm!455123))

(assert (=> b!5827178 m!6758422))

(declare-fun m!6759140 () Bool)

(assert (=> b!5827178 m!6759140))

(assert (=> b!5827178 m!6759140))

(declare-fun m!6759142 () Bool)

(assert (=> b!5827178 m!6759142))

(assert (=> b!5827183 m!6758422))

(declare-fun m!6759144 () Bool)

(assert (=> b!5827183 m!6759144))

(assert (=> b!5827187 m!6758422))

(assert (=> b!5827187 m!6759144))

(assert (=> b!5827187 m!6758428))

(assert (=> b!5827187 m!6759144))

(declare-fun m!6759146 () Bool)

(assert (=> b!5827187 m!6759146))

(assert (=> b!5827187 m!6758422))

(assert (=> b!5827187 m!6759140))

(assert (=> b!5827187 m!6759146))

(assert (=> b!5827187 m!6759140))

(declare-fun m!6759148 () Bool)

(assert (=> b!5827187 m!6759148))

(assert (=> b!5827186 m!6758428))

(declare-fun m!6759150 () Bool)

(assert (=> b!5827186 m!6759150))

(assert (=> bm!455123 m!6758422))

(assert (=> bm!455123 m!6758424))

(assert (=> d!1833090 m!6758422))

(assert (=> d!1833090 m!6758424))

(assert (=> d!1833090 m!6758428))

(declare-fun m!6759152 () Bool)

(assert (=> d!1833090 m!6759152))

(assert (=> b!5827177 m!6758422))

(assert (=> b!5827177 m!6759144))

(assert (=> b!5827179 m!6758422))

(assert (=> b!5827179 m!6759140))

(assert (=> b!5827179 m!6759140))

(assert (=> b!5827179 m!6759142))

(assert (=> b!5825775 d!1833090))

(declare-fun call!455132 () Regex!15877)

(declare-fun call!455131 () Regex!15877)

(declare-fun b!5827190 () Bool)

(declare-fun e!3575661 () Regex!15877)

(assert (=> b!5827190 (= e!3575661 (Union!15877 (Concat!24722 call!455132 (regTwo!32266 (derivativeStep!4620 r!7292 (head!12317 s!2326)))) call!455131))))

(declare-fun bm!455124 () Bool)

(declare-fun c!1032600 () Bool)

(assert (=> bm!455124 (= call!455132 (derivativeStep!4620 (ite c!1032600 (regOne!32267 (derivativeStep!4620 r!7292 (head!12317 s!2326))) (regOne!32266 (derivativeStep!4620 r!7292 (head!12317 s!2326)))) (head!12317 (tail!11402 s!2326))))))

(declare-fun bm!455125 () Bool)

(declare-fun call!455129 () Regex!15877)

(declare-fun call!455130 () Regex!15877)

(assert (=> bm!455125 (= call!455129 call!455130)))

(declare-fun b!5827191 () Bool)

(assert (=> b!5827191 (= e!3575661 (Union!15877 (Concat!24722 call!455131 (regTwo!32266 (derivativeStep!4620 r!7292 (head!12317 s!2326)))) EmptyLang!15877))))

(declare-fun b!5827192 () Bool)

(declare-fun c!1032597 () Bool)

(assert (=> b!5827192 (= c!1032597 (nullable!5880 (regOne!32266 (derivativeStep!4620 r!7292 (head!12317 s!2326)))))))

(declare-fun e!3575664 () Regex!15877)

(assert (=> b!5827192 (= e!3575664 e!3575661)))

(declare-fun d!1833092 () Bool)

(declare-fun lt!2302658 () Regex!15877)

(assert (=> d!1833092 (validRegex!7613 lt!2302658)))

(declare-fun e!3575662 () Regex!15877)

(assert (=> d!1833092 (= lt!2302658 e!3575662)))

(declare-fun c!1032598 () Bool)

(assert (=> d!1833092 (= c!1032598 (or ((_ is EmptyExpr!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326))) ((_ is EmptyLang!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326)))))))

(assert (=> d!1833092 (validRegex!7613 (derivativeStep!4620 r!7292 (head!12317 s!2326)))))

(assert (=> d!1833092 (= (derivativeStep!4620 (derivativeStep!4620 r!7292 (head!12317 s!2326)) (head!12317 (tail!11402 s!2326))) lt!2302658)))

(declare-fun b!5827193 () Bool)

(declare-fun e!3575660 () Regex!15877)

(assert (=> b!5827193 (= e!3575660 (ite (= (head!12317 (tail!11402 s!2326)) (c!1032237 (derivativeStep!4620 r!7292 (head!12317 s!2326)))) EmptyExpr!15877 EmptyLang!15877))))

(declare-fun b!5827194 () Bool)

(declare-fun e!3575663 () Regex!15877)

(assert (=> b!5827194 (= e!3575663 e!3575664)))

(declare-fun c!1032596 () Bool)

(assert (=> b!5827194 (= c!1032596 ((_ is Star!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(declare-fun b!5827195 () Bool)

(assert (=> b!5827195 (= e!3575662 EmptyLang!15877)))

(declare-fun b!5827196 () Bool)

(assert (=> b!5827196 (= e!3575664 (Concat!24722 call!455129 (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(declare-fun b!5827197 () Bool)

(assert (=> b!5827197 (= e!3575662 e!3575660)))

(declare-fun c!1032599 () Bool)

(assert (=> b!5827197 (= c!1032599 ((_ is ElementMatch!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(declare-fun bm!455126 () Bool)

(assert (=> bm!455126 (= call!455131 call!455129)))

(declare-fun bm!455127 () Bool)

(assert (=> bm!455127 (= call!455130 (derivativeStep!4620 (ite c!1032600 (regTwo!32267 (derivativeStep!4620 r!7292 (head!12317 s!2326))) (ite c!1032596 (reg!16206 (derivativeStep!4620 r!7292 (head!12317 s!2326))) (ite c!1032597 (regTwo!32266 (derivativeStep!4620 r!7292 (head!12317 s!2326))) (regOne!32266 (derivativeStep!4620 r!7292 (head!12317 s!2326)))))) (head!12317 (tail!11402 s!2326))))))

(declare-fun b!5827198 () Bool)

(assert (=> b!5827198 (= c!1032600 ((_ is Union!15877) (derivativeStep!4620 r!7292 (head!12317 s!2326))))))

(assert (=> b!5827198 (= e!3575660 e!3575663)))

(declare-fun b!5827199 () Bool)

(assert (=> b!5827199 (= e!3575663 (Union!15877 call!455132 call!455130))))

(assert (= (and d!1833092 c!1032598) b!5827195))

(assert (= (and d!1833092 (not c!1032598)) b!5827197))

(assert (= (and b!5827197 c!1032599) b!5827193))

(assert (= (and b!5827197 (not c!1032599)) b!5827198))

(assert (= (and b!5827198 c!1032600) b!5827199))

(assert (= (and b!5827198 (not c!1032600)) b!5827194))

(assert (= (and b!5827194 c!1032596) b!5827196))

(assert (= (and b!5827194 (not c!1032596)) b!5827192))

(assert (= (and b!5827192 c!1032597) b!5827190))

(assert (= (and b!5827192 (not c!1032597)) b!5827191))

(assert (= (or b!5827190 b!5827191) bm!455126))

(assert (= (or b!5827196 bm!455126) bm!455125))

(assert (= (or b!5827199 bm!455125) bm!455127))

(assert (= (or b!5827199 b!5827190) bm!455124))

(assert (=> bm!455124 m!6758426))

(declare-fun m!6759154 () Bool)

(assert (=> bm!455124 m!6759154))

(declare-fun m!6759156 () Bool)

(assert (=> b!5827192 m!6759156))

(declare-fun m!6759158 () Bool)

(assert (=> d!1833092 m!6759158))

(assert (=> d!1833092 m!6758156))

(assert (=> d!1833092 m!6758434))

(assert (=> bm!455127 m!6758426))

(declare-fun m!6759160 () Bool)

(assert (=> bm!455127 m!6759160))

(assert (=> b!5825775 d!1833092))

(assert (=> b!5825775 d!1833062))

(assert (=> b!5825775 d!1833044))

(declare-fun d!1833094 () Bool)

(assert (=> d!1833094 (= (nullable!5880 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))) (nullableFct!1886 (reg!16206 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))

(declare-fun bs!1374399 () Bool)

(assert (= bs!1374399 d!1833094))

(declare-fun m!6759162 () Bool)

(assert (=> bs!1374399 m!6759162))

(assert (=> b!5825878 d!1833094))

(declare-fun b!5827200 () Bool)

(declare-fun e!3575667 () Bool)

(declare-fun e!3575666 () Bool)

(assert (=> b!5827200 (= e!3575667 e!3575666)))

(declare-fun c!1032602 () Bool)

(assert (=> b!5827200 (= c!1032602 ((_ is Union!15877) (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))))))

(declare-fun b!5827201 () Bool)

(declare-fun e!3575669 () Bool)

(declare-fun call!455135 () Bool)

(assert (=> b!5827201 (= e!3575669 call!455135)))

(declare-fun b!5827202 () Bool)

(declare-fun e!3575670 () Bool)

(declare-fun e!3575668 () Bool)

(assert (=> b!5827202 (= e!3575670 e!3575668)))

(declare-fun res!2456418 () Bool)

(assert (=> b!5827202 (=> (not res!2456418) (not e!3575668))))

(declare-fun call!455133 () Bool)

(assert (=> b!5827202 (= res!2456418 call!455133)))

(declare-fun bm!455128 () Bool)

(assert (=> bm!455128 (= call!455133 call!455135)))

(declare-fun b!5827203 () Bool)

(assert (=> b!5827203 (= e!3575667 e!3575669)))

(declare-fun res!2456419 () Bool)

(assert (=> b!5827203 (= res!2456419 (not (nullable!5880 (reg!16206 (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))))))))

(assert (=> b!5827203 (=> (not res!2456419) (not e!3575669))))

(declare-fun d!1833096 () Bool)

(declare-fun res!2456422 () Bool)

(declare-fun e!3575665 () Bool)

(assert (=> d!1833096 (=> res!2456422 e!3575665)))

(assert (=> d!1833096 (= res!2456422 ((_ is ElementMatch!15877) (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))))))

(assert (=> d!1833096 (= (validRegex!7613 (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))) e!3575665)))

(declare-fun b!5827204 () Bool)

(declare-fun e!3575671 () Bool)

(declare-fun call!455134 () Bool)

(assert (=> b!5827204 (= e!3575671 call!455134)))

(declare-fun bm!455129 () Bool)

(assert (=> bm!455129 (= call!455134 (validRegex!7613 (ite c!1032602 (regTwo!32267 (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))) (regTwo!32266 (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))))))))

(declare-fun b!5827205 () Bool)

(declare-fun res!2456420 () Bool)

(assert (=> b!5827205 (=> res!2456420 e!3575670)))

(assert (=> b!5827205 (= res!2456420 (not ((_ is Concat!24722) (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622))))))))

(assert (=> b!5827205 (= e!3575666 e!3575670)))

(declare-fun b!5827206 () Bool)

(declare-fun res!2456421 () Bool)

(assert (=> b!5827206 (=> (not res!2456421) (not e!3575671))))

(assert (=> b!5827206 (= res!2456421 call!455133)))

(assert (=> b!5827206 (= e!3575666 e!3575671)))

(declare-fun c!1032601 () Bool)

(declare-fun bm!455130 () Bool)

(assert (=> bm!455130 (= call!455135 (validRegex!7613 (ite c!1032601 (reg!16206 (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))) (ite c!1032602 (regOne!32267 (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))) (regOne!32266 (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622))))))))))

(declare-fun b!5827207 () Bool)

(assert (=> b!5827207 (= e!3575665 e!3575667)))

(assert (=> b!5827207 (= c!1032601 ((_ is Star!15877) (ite c!1032436 (reg!16206 lt!2302622) (ite c!1032437 (regOne!32267 lt!2302622) (regOne!32266 lt!2302622)))))))

(declare-fun b!5827208 () Bool)

(assert (=> b!5827208 (= e!3575668 call!455134)))

(assert (= (and d!1833096 (not res!2456422)) b!5827207))

(assert (= (and b!5827207 c!1032601) b!5827203))

(assert (= (and b!5827207 (not c!1032601)) b!5827200))

(assert (= (and b!5827203 res!2456419) b!5827201))

(assert (= (and b!5827200 c!1032602) b!5827206))

(assert (= (and b!5827200 (not c!1032602)) b!5827205))

(assert (= (and b!5827206 res!2456421) b!5827204))

(assert (= (and b!5827205 (not res!2456420)) b!5827202))

(assert (= (and b!5827202 res!2456418) b!5827208))

(assert (= (or b!5827204 b!5827208) bm!455129))

(assert (= (or b!5827206 b!5827202) bm!455128))

(assert (= (or b!5827201 bm!455128) bm!455130))

(declare-fun m!6759164 () Bool)

(assert (=> b!5827203 m!6759164))

(declare-fun m!6759166 () Bool)

(assert (=> bm!455129 m!6759166))

(declare-fun m!6759168 () Bool)

(assert (=> bm!455130 m!6759168))

(assert (=> bm!454983 d!1833096))

(declare-fun d!1833098 () Bool)

(assert (=> d!1833098 true))

(assert (=> d!1833098 true))

(declare-fun res!2456425 () Bool)

(assert (=> d!1833098 (= (choose!44274 (ite c!1032310 lambda!318799 lambda!318800)) res!2456425)))

(assert (=> d!1832716 d!1833098))

(declare-fun b!5827209 () Bool)

(declare-fun e!3575674 () Bool)

(declare-fun e!3575673 () Bool)

(assert (=> b!5827209 (= e!3575674 e!3575673)))

(declare-fun c!1032604 () Bool)

(assert (=> b!5827209 (= c!1032604 ((_ is Union!15877) (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))))))

(declare-fun b!5827210 () Bool)

(declare-fun e!3575676 () Bool)

(declare-fun call!455138 () Bool)

(assert (=> b!5827210 (= e!3575676 call!455138)))

(declare-fun b!5827211 () Bool)

(declare-fun e!3575677 () Bool)

(declare-fun e!3575675 () Bool)

(assert (=> b!5827211 (= e!3575677 e!3575675)))

(declare-fun res!2456426 () Bool)

(assert (=> b!5827211 (=> (not res!2456426) (not e!3575675))))

(declare-fun call!455136 () Bool)

(assert (=> b!5827211 (= res!2456426 call!455136)))

(declare-fun bm!455131 () Bool)

(assert (=> bm!455131 (= call!455136 call!455138)))

(declare-fun b!5827212 () Bool)

(assert (=> b!5827212 (= e!3575674 e!3575676)))

(declare-fun res!2456427 () Bool)

(assert (=> b!5827212 (= res!2456427 (not (nullable!5880 (reg!16206 (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))))))))

(assert (=> b!5827212 (=> (not res!2456427) (not e!3575676))))

(declare-fun d!1833100 () Bool)

(declare-fun res!2456430 () Bool)

(declare-fun e!3575672 () Bool)

(assert (=> d!1833100 (=> res!2456430 e!3575672)))

(assert (=> d!1833100 (= res!2456430 ((_ is ElementMatch!15877) (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))))))

(assert (=> d!1833100 (= (validRegex!7613 (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))) e!3575672)))

(declare-fun b!5827213 () Bool)

(declare-fun e!3575678 () Bool)

(declare-fun call!455137 () Bool)

(assert (=> b!5827213 (= e!3575678 call!455137)))

(declare-fun bm!455132 () Bool)

(assert (=> bm!455132 (= call!455137 (validRegex!7613 (ite c!1032604 (regTwo!32267 (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))) (regTwo!32266 (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))))))))

(declare-fun b!5827214 () Bool)

(declare-fun res!2456428 () Bool)

(assert (=> b!5827214 (=> res!2456428 e!3575677)))

(assert (=> b!5827214 (= res!2456428 (not ((_ is Concat!24722) (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616)))))))

(assert (=> b!5827214 (= e!3575673 e!3575677)))

(declare-fun b!5827215 () Bool)

(declare-fun res!2456429 () Bool)

(assert (=> b!5827215 (=> (not res!2456429) (not e!3575678))))

(assert (=> b!5827215 (= res!2456429 call!455136)))

(assert (=> b!5827215 (= e!3575673 e!3575678)))

(declare-fun c!1032603 () Bool)

(declare-fun bm!455133 () Bool)

(assert (=> bm!455133 (= call!455138 (validRegex!7613 (ite c!1032603 (reg!16206 (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))) (ite c!1032604 (regOne!32267 (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))) (regOne!32266 (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616)))))))))

(declare-fun b!5827216 () Bool)

(assert (=> b!5827216 (= e!3575672 e!3575674)))

(assert (=> b!5827216 (= c!1032603 ((_ is Star!15877) (ite c!1032429 (regTwo!32267 lt!2302616) (regTwo!32266 lt!2302616))))))

(declare-fun b!5827217 () Bool)

(assert (=> b!5827217 (= e!3575675 call!455137)))

(assert (= (and d!1833100 (not res!2456430)) b!5827216))

(assert (= (and b!5827216 c!1032603) b!5827212))

(assert (= (and b!5827216 (not c!1032603)) b!5827209))

(assert (= (and b!5827212 res!2456427) b!5827210))

(assert (= (and b!5827209 c!1032604) b!5827215))

(assert (= (and b!5827209 (not c!1032604)) b!5827214))

(assert (= (and b!5827215 res!2456429) b!5827213))

(assert (= (and b!5827214 (not res!2456428)) b!5827211))

(assert (= (and b!5827211 res!2456426) b!5827217))

(assert (= (or b!5827213 b!5827217) bm!455132))

(assert (= (or b!5827215 b!5827211) bm!455131))

(assert (= (or b!5827210 bm!455131) bm!455133))

(declare-fun m!6759170 () Bool)

(assert (=> b!5827212 m!6759170))

(declare-fun m!6759172 () Bool)

(assert (=> bm!455132 m!6759172))

(declare-fun m!6759174 () Bool)

(assert (=> bm!455133 m!6759174))

(assert (=> bm!454970 d!1833100))

(assert (=> bs!1374074 d!1832992))

(declare-fun d!1833102 () Bool)

(assert (=> d!1833102 (= (isUnion!755 lt!2302636) ((_ is Union!15877) lt!2302636))))

(assert (=> b!5825899 d!1833102))

(declare-fun d!1833104 () Bool)

(declare-fun res!2456431 () Bool)

(declare-fun e!3575679 () Bool)

(assert (=> d!1833104 (=> res!2456431 e!3575679)))

(assert (=> d!1833104 (= res!2456431 ((_ is Nil!63806) (t!377285 (exprs!5761 (h!70255 zl!343)))))))

(assert (=> d!1833104 (= (forall!14968 (t!377285 (exprs!5761 (h!70255 zl!343))) lambda!318794) e!3575679)))

(declare-fun b!5827218 () Bool)

(declare-fun e!3575680 () Bool)

(assert (=> b!5827218 (= e!3575679 e!3575680)))

(declare-fun res!2456432 () Bool)

(assert (=> b!5827218 (=> (not res!2456432) (not e!3575680))))

(assert (=> b!5827218 (= res!2456432 (dynLambda!24970 lambda!318794 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun b!5827219 () Bool)

(assert (=> b!5827219 (= e!3575680 (forall!14968 (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))) lambda!318794))))

(assert (= (and d!1833104 (not res!2456431)) b!5827218))

(assert (= (and b!5827218 res!2456432) b!5827219))

(declare-fun b_lambda!219679 () Bool)

(assert (=> (not b_lambda!219679) (not b!5827218)))

(declare-fun m!6759176 () Bool)

(assert (=> b!5827218 m!6759176))

(declare-fun m!6759178 () Bool)

(assert (=> b!5827219 m!6759178))

(assert (=> b!5825830 d!1833104))

(declare-fun b!5827220 () Bool)

(declare-fun e!3575683 () Bool)

(declare-fun e!3575682 () Bool)

(assert (=> b!5827220 (= e!3575683 e!3575682)))

(declare-fun c!1032606 () Bool)

(assert (=> b!5827220 (= c!1032606 ((_ is Union!15877) (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))))

(declare-fun b!5827221 () Bool)

(declare-fun e!3575685 () Bool)

(declare-fun call!455141 () Bool)

(assert (=> b!5827221 (= e!3575685 call!455141)))

(declare-fun b!5827222 () Bool)

(declare-fun e!3575686 () Bool)

(declare-fun e!3575684 () Bool)

(assert (=> b!5827222 (= e!3575686 e!3575684)))

(declare-fun res!2456433 () Bool)

(assert (=> b!5827222 (=> (not res!2456433) (not e!3575684))))

(declare-fun call!455139 () Bool)

(assert (=> b!5827222 (= res!2456433 call!455139)))

(declare-fun bm!455134 () Bool)

(assert (=> bm!455134 (= call!455139 call!455141)))

(declare-fun b!5827223 () Bool)

(assert (=> b!5827223 (= e!3575683 e!3575685)))

(declare-fun res!2456434 () Bool)

(assert (=> b!5827223 (= res!2456434 (not (nullable!5880 (reg!16206 (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))))))

(assert (=> b!5827223 (=> (not res!2456434) (not e!3575685))))

(declare-fun d!1833106 () Bool)

(declare-fun res!2456437 () Bool)

(declare-fun e!3575681 () Bool)

(assert (=> d!1833106 (=> res!2456437 e!3575681)))

(assert (=> d!1833106 (= res!2456437 ((_ is ElementMatch!15877) (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))))

(assert (=> d!1833106 (= (validRegex!7613 (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))) e!3575681)))

(declare-fun b!5827224 () Bool)

(declare-fun e!3575687 () Bool)

(declare-fun call!455140 () Bool)

(assert (=> b!5827224 (= e!3575687 call!455140)))

(declare-fun bm!455135 () Bool)

(assert (=> bm!455135 (= call!455140 (validRegex!7613 (ite c!1032606 (regTwo!32267 (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))) (regTwo!32266 (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))))))

(declare-fun b!5827225 () Bool)

(declare-fun res!2456435 () Bool)

(assert (=> b!5827225 (=> res!2456435 e!3575686)))

(assert (=> b!5827225 (= res!2456435 (not ((_ is Concat!24722) (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))))

(assert (=> b!5827225 (= e!3575682 e!3575686)))

(declare-fun b!5827226 () Bool)

(declare-fun res!2456436 () Bool)

(assert (=> b!5827226 (=> (not res!2456436) (not e!3575687))))

(assert (=> b!5827226 (= res!2456436 call!455139)))

(assert (=> b!5827226 (= e!3575682 e!3575687)))

(declare-fun bm!455136 () Bool)

(declare-fun c!1032605 () Bool)

(assert (=> bm!455136 (= call!455141 (validRegex!7613 (ite c!1032605 (reg!16206 (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))) (ite c!1032606 (regOne!32267 (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))) (regOne!32266 (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292))))))))))))

(declare-fun b!5827227 () Bool)

(assert (=> b!5827227 (= e!3575681 e!3575683)))

(assert (=> b!5827227 (= c!1032605 ((_ is Star!15877) (ite c!1032435 (regTwo!32267 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))) (regTwo!32266 (ite c!1032317 (reg!16206 r!7292) (ite c!1032318 (regOne!32267 r!7292) (regOne!32266 r!7292)))))))))

(declare-fun b!5827228 () Bool)

(assert (=> b!5827228 (= e!3575684 call!455140)))

(assert (= (and d!1833106 (not res!2456437)) b!5827227))

(assert (= (and b!5827227 c!1032605) b!5827223))

(assert (= (and b!5827227 (not c!1032605)) b!5827220))

(assert (= (and b!5827223 res!2456434) b!5827221))

(assert (= (and b!5827220 c!1032606) b!5827226))

(assert (= (and b!5827220 (not c!1032606)) b!5827225))

(assert (= (and b!5827226 res!2456436) b!5827224))

(assert (= (and b!5827225 (not res!2456435)) b!5827222))

(assert (= (and b!5827222 res!2456433) b!5827228))

(assert (= (or b!5827224 b!5827228) bm!455135))

(assert (= (or b!5827226 b!5827222) bm!455134))

(assert (= (or b!5827221 bm!455134) bm!455136))

(declare-fun m!6759180 () Bool)

(assert (=> b!5827223 m!6759180))

(declare-fun m!6759182 () Bool)

(assert (=> bm!455135 m!6759182))

(declare-fun m!6759184 () Bool)

(assert (=> bm!455136 m!6759184))

(assert (=> bm!454979 d!1833106))

(declare-fun d!1833108 () Bool)

(assert (=> d!1833108 (= (Exists!2955 (ite c!1032399 lambda!318821 lambda!318822)) (choose!44274 (ite c!1032399 lambda!318821 lambda!318822)))))

(declare-fun bs!1374400 () Bool)

(assert (= bs!1374400 d!1833108))

(declare-fun m!6759186 () Bool)

(assert (=> bs!1374400 m!6759186))

(assert (=> bm!454952 d!1833108))

(declare-fun d!1833110 () Bool)

(declare-fun c!1032607 () Bool)

(assert (=> d!1833110 (= c!1032607 ((_ is Nil!63807) (t!377286 lt!2302604)))))

(declare-fun e!3575688 () (InoxSet Context!10522))

(assert (=> d!1833110 (= (content!11713 (t!377286 lt!2302604)) e!3575688)))

(declare-fun b!5827229 () Bool)

(assert (=> b!5827229 (= e!3575688 ((as const (Array Context!10522 Bool)) false))))

(declare-fun b!5827230 () Bool)

(assert (=> b!5827230 (= e!3575688 ((_ map or) (store ((as const (Array Context!10522 Bool)) false) (h!70255 (t!377286 lt!2302604)) true) (content!11713 (t!377286 (t!377286 lt!2302604)))))))

(assert (= (and d!1833110 c!1032607) b!5827229))

(assert (= (and d!1833110 (not c!1032607)) b!5827230))

(declare-fun m!6759188 () Bool)

(assert (=> b!5827230 m!6759188))

(declare-fun m!6759190 () Bool)

(assert (=> b!5827230 m!6759190))

(assert (=> b!5825828 d!1833110))

(assert (=> b!5825901 d!1832760))

(declare-fun b!5827231 () Bool)

(declare-fun e!3575691 () Bool)

(declare-fun e!3575690 () Bool)

(assert (=> b!5827231 (= e!3575691 e!3575690)))

(declare-fun c!1032609 () Bool)

(assert (=> b!5827231 (= c!1032609 ((_ is Union!15877) (h!70254 lt!2302619)))))

(declare-fun b!5827232 () Bool)

(declare-fun e!3575693 () Bool)

(declare-fun call!455144 () Bool)

(assert (=> b!5827232 (= e!3575693 call!455144)))

(declare-fun b!5827233 () Bool)

(declare-fun e!3575694 () Bool)

(declare-fun e!3575692 () Bool)

(assert (=> b!5827233 (= e!3575694 e!3575692)))

(declare-fun res!2456438 () Bool)

(assert (=> b!5827233 (=> (not res!2456438) (not e!3575692))))

(declare-fun call!455142 () Bool)

(assert (=> b!5827233 (= res!2456438 call!455142)))

(declare-fun bm!455137 () Bool)

(assert (=> bm!455137 (= call!455142 call!455144)))

(declare-fun b!5827234 () Bool)

(assert (=> b!5827234 (= e!3575691 e!3575693)))

(declare-fun res!2456439 () Bool)

(assert (=> b!5827234 (= res!2456439 (not (nullable!5880 (reg!16206 (h!70254 lt!2302619)))))))

(assert (=> b!5827234 (=> (not res!2456439) (not e!3575693))))

(declare-fun d!1833112 () Bool)

(declare-fun res!2456442 () Bool)

(declare-fun e!3575689 () Bool)

(assert (=> d!1833112 (=> res!2456442 e!3575689)))

(assert (=> d!1833112 (= res!2456442 ((_ is ElementMatch!15877) (h!70254 lt!2302619)))))

(assert (=> d!1833112 (= (validRegex!7613 (h!70254 lt!2302619)) e!3575689)))

(declare-fun b!5827235 () Bool)

(declare-fun e!3575695 () Bool)

(declare-fun call!455143 () Bool)

(assert (=> b!5827235 (= e!3575695 call!455143)))

(declare-fun bm!455138 () Bool)

(assert (=> bm!455138 (= call!455143 (validRegex!7613 (ite c!1032609 (regTwo!32267 (h!70254 lt!2302619)) (regTwo!32266 (h!70254 lt!2302619)))))))

(declare-fun b!5827236 () Bool)

(declare-fun res!2456440 () Bool)

(assert (=> b!5827236 (=> res!2456440 e!3575694)))

(assert (=> b!5827236 (= res!2456440 (not ((_ is Concat!24722) (h!70254 lt!2302619))))))

(assert (=> b!5827236 (= e!3575690 e!3575694)))

(declare-fun b!5827237 () Bool)

(declare-fun res!2456441 () Bool)

(assert (=> b!5827237 (=> (not res!2456441) (not e!3575695))))

(assert (=> b!5827237 (= res!2456441 call!455142)))

(assert (=> b!5827237 (= e!3575690 e!3575695)))

(declare-fun c!1032608 () Bool)

(declare-fun bm!455139 () Bool)

(assert (=> bm!455139 (= call!455144 (validRegex!7613 (ite c!1032608 (reg!16206 (h!70254 lt!2302619)) (ite c!1032609 (regOne!32267 (h!70254 lt!2302619)) (regOne!32266 (h!70254 lt!2302619))))))))

(declare-fun b!5827238 () Bool)

(assert (=> b!5827238 (= e!3575689 e!3575691)))

(assert (=> b!5827238 (= c!1032608 ((_ is Star!15877) (h!70254 lt!2302619)))))

(declare-fun b!5827239 () Bool)

(assert (=> b!5827239 (= e!3575692 call!455143)))

(assert (= (and d!1833112 (not res!2456442)) b!5827238))

(assert (= (and b!5827238 c!1032608) b!5827234))

(assert (= (and b!5827238 (not c!1032608)) b!5827231))

(assert (= (and b!5827234 res!2456439) b!5827232))

(assert (= (and b!5827231 c!1032609) b!5827237))

(assert (= (and b!5827231 (not c!1032609)) b!5827236))

(assert (= (and b!5827237 res!2456441) b!5827235))

(assert (= (and b!5827236 (not res!2456440)) b!5827233))

(assert (= (and b!5827233 res!2456438) b!5827239))

(assert (= (or b!5827235 b!5827239) bm!455138))

(assert (= (or b!5827237 b!5827233) bm!455137))

(assert (= (or b!5827232 bm!455137) bm!455139))

(declare-fun m!6759192 () Bool)

(assert (=> b!5827234 m!6759192))

(declare-fun m!6759194 () Bool)

(assert (=> bm!455138 m!6759194))

(declare-fun m!6759196 () Bool)

(assert (=> bm!455139 m!6759196))

(assert (=> bs!1374071 d!1833112))

(assert (=> bm!454953 d!1832720))

(declare-fun bs!1374401 () Bool)

(declare-fun b!5827247 () Bool)

(assert (= bs!1374401 (and b!5827247 b!5825819)))

(declare-fun lambda!318856 () Int)

(assert (=> bs!1374401 (= (and (= (reg!16206 (regOne!32267 (regOne!32267 r!7292))) (reg!16206 (regOne!32267 r!7292))) (= (regOne!32267 (regOne!32267 r!7292)) (regOne!32267 r!7292))) (= lambda!318856 lambda!318825))))

(declare-fun bs!1374402 () Bool)

(assert (= bs!1374402 (and b!5827247 b!5826989)))

(assert (=> bs!1374402 (= (and (= (reg!16206 (regOne!32267 (regOne!32267 r!7292))) (reg!16206 (regTwo!32267 (regTwo!32267 r!7292)))) (= (regOne!32267 (regOne!32267 r!7292)) (regTwo!32267 (regTwo!32267 r!7292)))) (= lambda!318856 lambda!318844))))

(declare-fun bs!1374403 () Bool)

(assert (= bs!1374403 (and b!5827247 b!5825760)))

(assert (=> bs!1374403 (= (and (= (reg!16206 (regOne!32267 (regOne!32267 r!7292))) (reg!16206 (regTwo!32267 r!7292))) (= (regOne!32267 (regOne!32267 r!7292)) (regTwo!32267 r!7292))) (= lambda!318856 lambda!318821))))

(declare-fun bs!1374404 () Bool)

(assert (= bs!1374404 (and b!5827247 b!5827026)))

(assert (=> bs!1374404 (not (= lambda!318856 lambda!318847))))

(declare-fun bs!1374405 () Bool)

(assert (= bs!1374405 (and b!5827247 b!5827138)))

(assert (=> bs!1374405 (= (and (= (reg!16206 (regOne!32267 (regOne!32267 r!7292))) (reg!16206 (regTwo!32267 (regOne!32267 r!7292)))) (= (regOne!32267 (regOne!32267 r!7292)) (regTwo!32267 (regOne!32267 r!7292)))) (= lambda!318856 lambda!318851))))

(declare-fun bs!1374406 () Bool)

(assert (= bs!1374406 (and b!5827247 b!5825298)))

(assert (=> bs!1374406 (= (and (= (reg!16206 (regOne!32267 (regOne!32267 r!7292))) (reg!16206 r!7292)) (= (regOne!32267 (regOne!32267 r!7292)) r!7292)) (= lambda!318856 lambda!318799))))

(declare-fun bs!1374407 () Bool)

(assert (= bs!1374407 (and b!5827247 b!5825763)))

(assert (=> bs!1374407 (not (= lambda!318856 lambda!318822))))

(declare-fun bs!1374408 () Bool)

(assert (= bs!1374408 (and b!5827247 b!5827023)))

(assert (=> bs!1374408 (= (and (= (reg!16206 (regOne!32267 (regOne!32267 r!7292))) (reg!16206 (regOne!32267 (regTwo!32267 r!7292)))) (= (regOne!32267 (regOne!32267 r!7292)) (regOne!32267 (regTwo!32267 r!7292)))) (= lambda!318856 lambda!318846))))

(declare-fun bs!1374409 () Bool)

(assert (= bs!1374409 (and b!5827247 b!5827141)))

(assert (=> bs!1374409 (not (= lambda!318856 lambda!318852))))

(declare-fun bs!1374410 () Bool)

(assert (= bs!1374410 (and b!5827247 b!5825822)))

(assert (=> bs!1374410 (not (= lambda!318856 lambda!318826))))

(declare-fun bs!1374411 () Bool)

(assert (= bs!1374411 (and b!5827247 b!5825301)))

(assert (=> bs!1374411 (not (= lambda!318856 lambda!318800))))

(declare-fun bs!1374412 () Bool)

(assert (= bs!1374412 (and b!5827247 b!5826992)))

(assert (=> bs!1374412 (not (= lambda!318856 lambda!318845))))

(assert (=> b!5827247 true))

(assert (=> b!5827247 true))

(declare-fun bs!1374413 () Bool)

(declare-fun b!5827250 () Bool)

(assert (= bs!1374413 (and b!5827250 b!5827247)))

(declare-fun lambda!318857 () Int)

(assert (=> bs!1374413 (not (= lambda!318857 lambda!318856))))

(declare-fun bs!1374414 () Bool)

(assert (= bs!1374414 (and b!5827250 b!5825819)))

(assert (=> bs!1374414 (not (= lambda!318857 lambda!318825))))

(declare-fun bs!1374415 () Bool)

(assert (= bs!1374415 (and b!5827250 b!5826989)))

(assert (=> bs!1374415 (not (= lambda!318857 lambda!318844))))

(declare-fun bs!1374416 () Bool)

(assert (= bs!1374416 (and b!5827250 b!5825760)))

(assert (=> bs!1374416 (not (= lambda!318857 lambda!318821))))

(declare-fun bs!1374417 () Bool)

(assert (= bs!1374417 (and b!5827250 b!5827026)))

(assert (=> bs!1374417 (= (and (= (regOne!32266 (regOne!32267 (regOne!32267 r!7292))) (regOne!32266 (regOne!32267 (regTwo!32267 r!7292)))) (= (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))) (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))))) (= lambda!318857 lambda!318847))))

(declare-fun bs!1374418 () Bool)

(assert (= bs!1374418 (and b!5827250 b!5827138)))

(assert (=> bs!1374418 (not (= lambda!318857 lambda!318851))))

(declare-fun bs!1374419 () Bool)

(assert (= bs!1374419 (and b!5827250 b!5825298)))

(assert (=> bs!1374419 (not (= lambda!318857 lambda!318799))))

(declare-fun bs!1374420 () Bool)

(assert (= bs!1374420 (and b!5827250 b!5825763)))

(assert (=> bs!1374420 (= (and (= (regOne!32266 (regOne!32267 (regOne!32267 r!7292))) (regOne!32266 (regTwo!32267 r!7292))) (= (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))) (regTwo!32266 (regTwo!32267 r!7292)))) (= lambda!318857 lambda!318822))))

(declare-fun bs!1374421 () Bool)

(assert (= bs!1374421 (and b!5827250 b!5827023)))

(assert (=> bs!1374421 (not (= lambda!318857 lambda!318846))))

(declare-fun bs!1374422 () Bool)

(assert (= bs!1374422 (and b!5827250 b!5827141)))

(assert (=> bs!1374422 (= (and (= (regOne!32266 (regOne!32267 (regOne!32267 r!7292))) (regOne!32266 (regTwo!32267 (regOne!32267 r!7292)))) (= (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))) (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))))) (= lambda!318857 lambda!318852))))

(declare-fun bs!1374423 () Bool)

(assert (= bs!1374423 (and b!5827250 b!5825822)))

(assert (=> bs!1374423 (= (and (= (regOne!32266 (regOne!32267 (regOne!32267 r!7292))) (regOne!32266 (regOne!32267 r!7292))) (= (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))) (regTwo!32266 (regOne!32267 r!7292)))) (= lambda!318857 lambda!318826))))

(declare-fun bs!1374424 () Bool)

(assert (= bs!1374424 (and b!5827250 b!5825301)))

(assert (=> bs!1374424 (= (and (= (regOne!32266 (regOne!32267 (regOne!32267 r!7292))) (regOne!32266 r!7292)) (= (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))) (regTwo!32266 r!7292))) (= lambda!318857 lambda!318800))))

(declare-fun bs!1374425 () Bool)

(assert (= bs!1374425 (and b!5827250 b!5826992)))

(assert (=> bs!1374425 (= (and (= (regOne!32266 (regOne!32267 (regOne!32267 r!7292))) (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292)))) (= (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))) (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))))) (= lambda!318857 lambda!318845))))

(assert (=> b!5827250 true))

(assert (=> b!5827250 true))

(declare-fun b!5827240 () Bool)

(declare-fun e!3575698 () Bool)

(assert (=> b!5827240 (= e!3575698 (matchRSpec!2978 (regTwo!32267 (regOne!32267 (regOne!32267 r!7292))) s!2326))))

(declare-fun b!5827241 () Bool)

(declare-fun c!1032610 () Bool)

(assert (=> b!5827241 (= c!1032610 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32267 r!7292))))))

(declare-fun e!3575699 () Bool)

(declare-fun e!3575702 () Bool)

(assert (=> b!5827241 (= e!3575699 e!3575702)))

(declare-fun b!5827242 () Bool)

(declare-fun c!1032613 () Bool)

(assert (=> b!5827242 (= c!1032613 ((_ is Union!15877) (regOne!32267 (regOne!32267 r!7292))))))

(declare-fun e!3575701 () Bool)

(assert (=> b!5827242 (= e!3575702 e!3575701)))

(declare-fun b!5827243 () Bool)

(declare-fun e!3575697 () Bool)

(declare-fun call!455146 () Bool)

(assert (=> b!5827243 (= e!3575697 call!455146)))

(declare-fun b!5827244 () Bool)

(assert (=> b!5827244 (= e!3575697 e!3575699)))

(declare-fun res!2456445 () Bool)

(assert (=> b!5827244 (= res!2456445 (not ((_ is EmptyLang!15877) (regOne!32267 (regOne!32267 r!7292)))))))

(assert (=> b!5827244 (=> (not res!2456445) (not e!3575699))))

(declare-fun c!1032611 () Bool)

(declare-fun bm!455140 () Bool)

(declare-fun call!455145 () Bool)

(assert (=> bm!455140 (= call!455145 (Exists!2955 (ite c!1032611 lambda!318856 lambda!318857)))))

(declare-fun b!5827245 () Bool)

(assert (=> b!5827245 (= e!3575701 e!3575698)))

(declare-fun res!2456444 () Bool)

(assert (=> b!5827245 (= res!2456444 (matchRSpec!2978 (regOne!32267 (regOne!32267 (regOne!32267 r!7292))) s!2326))))

(assert (=> b!5827245 (=> res!2456444 e!3575698)))

(declare-fun bm!455141 () Bool)

(assert (=> bm!455141 (= call!455146 (isEmpty!35676 s!2326))))

(declare-fun d!1833114 () Bool)

(declare-fun c!1032612 () Bool)

(assert (=> d!1833114 (= c!1032612 ((_ is EmptyExpr!15877) (regOne!32267 (regOne!32267 r!7292))))))

(assert (=> d!1833114 (= (matchRSpec!2978 (regOne!32267 (regOne!32267 r!7292)) s!2326) e!3575697)))

(declare-fun b!5827246 () Bool)

(declare-fun e!3575700 () Bool)

(assert (=> b!5827246 (= e!3575701 e!3575700)))

(assert (=> b!5827246 (= c!1032611 ((_ is Star!15877) (regOne!32267 (regOne!32267 r!7292))))))

(declare-fun e!3575696 () Bool)

(assert (=> b!5827247 (= e!3575696 call!455145)))

(declare-fun b!5827248 () Bool)

(assert (=> b!5827248 (= e!3575702 (= s!2326 (Cons!63808 (c!1032237 (regOne!32267 (regOne!32267 r!7292))) Nil!63808)))))

(declare-fun b!5827249 () Bool)

(declare-fun res!2456443 () Bool)

(assert (=> b!5827249 (=> res!2456443 e!3575696)))

(assert (=> b!5827249 (= res!2456443 call!455146)))

(assert (=> b!5827249 (= e!3575700 e!3575696)))

(assert (=> b!5827250 (= e!3575700 call!455145)))

(assert (= (and d!1833114 c!1032612) b!5827243))

(assert (= (and d!1833114 (not c!1032612)) b!5827244))

(assert (= (and b!5827244 res!2456445) b!5827241))

(assert (= (and b!5827241 c!1032610) b!5827248))

(assert (= (and b!5827241 (not c!1032610)) b!5827242))

(assert (= (and b!5827242 c!1032613) b!5827245))

(assert (= (and b!5827242 (not c!1032613)) b!5827246))

(assert (= (and b!5827245 (not res!2456444)) b!5827240))

(assert (= (and b!5827246 c!1032611) b!5827249))

(assert (= (and b!5827246 (not c!1032611)) b!5827250))

(assert (= (and b!5827249 (not res!2456443)) b!5827247))

(assert (= (or b!5827247 b!5827250) bm!455140))

(assert (= (or b!5827243 b!5827249) bm!455141))

(declare-fun m!6759198 () Bool)

(assert (=> b!5827240 m!6759198))

(declare-fun m!6759200 () Bool)

(assert (=> bm!455140 m!6759200))

(declare-fun m!6759202 () Bool)

(assert (=> b!5827245 m!6759202))

(assert (=> bm!455141 m!6758162))

(assert (=> b!5825817 d!1833114))

(declare-fun b!5827251 () Bool)

(declare-fun e!3575704 () Bool)

(declare-fun e!3575706 () Bool)

(assert (=> b!5827251 (= e!3575704 e!3575706)))

(declare-fun res!2456450 () Bool)

(assert (=> b!5827251 (=> (not res!2456450) (not e!3575706))))

(assert (=> b!5827251 (= res!2456450 (and (not ((_ is EmptyLang!15877) (reg!16206 r!7292))) (not ((_ is ElementMatch!15877) (reg!16206 r!7292)))))))

(declare-fun bm!455142 () Bool)

(declare-fun call!455147 () Bool)

(declare-fun c!1032614 () Bool)

(assert (=> bm!455142 (= call!455147 (nullable!5880 (ite c!1032614 (regTwo!32267 (reg!16206 r!7292)) (regTwo!32266 (reg!16206 r!7292)))))))

(declare-fun b!5827252 () Bool)

(declare-fun e!3575708 () Bool)

(declare-fun e!3575707 () Bool)

(assert (=> b!5827252 (= e!3575708 e!3575707)))

(declare-fun res!2456448 () Bool)

(declare-fun call!455148 () Bool)

(assert (=> b!5827252 (= res!2456448 call!455148)))

(assert (=> b!5827252 (=> res!2456448 e!3575707)))

(declare-fun b!5827253 () Bool)

(assert (=> b!5827253 (= e!3575707 call!455147)))

(declare-fun d!1833116 () Bool)

(declare-fun res!2456446 () Bool)

(assert (=> d!1833116 (=> res!2456446 e!3575704)))

(assert (=> d!1833116 (= res!2456446 ((_ is EmptyExpr!15877) (reg!16206 r!7292)))))

(assert (=> d!1833116 (= (nullableFct!1886 (reg!16206 r!7292)) e!3575704)))

(declare-fun b!5827254 () Bool)

(declare-fun e!3575705 () Bool)

(assert (=> b!5827254 (= e!3575706 e!3575705)))

(declare-fun res!2456449 () Bool)

(assert (=> b!5827254 (=> res!2456449 e!3575705)))

(assert (=> b!5827254 (= res!2456449 ((_ is Star!15877) (reg!16206 r!7292)))))

(declare-fun b!5827255 () Bool)

(declare-fun e!3575703 () Bool)

(assert (=> b!5827255 (= e!3575708 e!3575703)))

(declare-fun res!2456447 () Bool)

(assert (=> b!5827255 (= res!2456447 call!455148)))

(assert (=> b!5827255 (=> (not res!2456447) (not e!3575703))))

(declare-fun b!5827256 () Bool)

(assert (=> b!5827256 (= e!3575705 e!3575708)))

(assert (=> b!5827256 (= c!1032614 ((_ is Union!15877) (reg!16206 r!7292)))))

(declare-fun bm!455143 () Bool)

(assert (=> bm!455143 (= call!455148 (nullable!5880 (ite c!1032614 (regOne!32267 (reg!16206 r!7292)) (regOne!32266 (reg!16206 r!7292)))))))

(declare-fun b!5827257 () Bool)

(assert (=> b!5827257 (= e!3575703 call!455147)))

(assert (= (and d!1833116 (not res!2456446)) b!5827251))

(assert (= (and b!5827251 res!2456450) b!5827254))

(assert (= (and b!5827254 (not res!2456449)) b!5827256))

(assert (= (and b!5827256 c!1032614) b!5827252))

(assert (= (and b!5827256 (not c!1032614)) b!5827255))

(assert (= (and b!5827252 (not res!2456448)) b!5827253))

(assert (= (and b!5827255 res!2456447) b!5827257))

(assert (= (or b!5827253 b!5827257) bm!455142))

(assert (= (or b!5827252 b!5827255) bm!455143))

(declare-fun m!6759204 () Bool)

(assert (=> bm!455142 m!6759204))

(declare-fun m!6759206 () Bool)

(assert (=> bm!455143 m!6759206))

(assert (=> d!1832762 d!1833116))

(assert (=> b!5825738 d!1832746))

(declare-fun bs!1374426 () Bool)

(declare-fun d!1833118 () Bool)

(assert (= bs!1374426 (and d!1833118 d!1833088)))

(declare-fun lambda!318858 () Int)

(assert (=> bs!1374426 (= lambda!318858 lambda!318855)))

(declare-fun bs!1374427 () Bool)

(assert (= bs!1374427 (and d!1833118 d!1832568)))

(assert (=> bs!1374427 (= lambda!318858 lambda!318794)))

(declare-fun bs!1374428 () Bool)

(assert (= bs!1374428 (and d!1833118 d!1832610)))

(assert (=> bs!1374428 (= lambda!318858 lambda!318807)))

(declare-fun bs!1374429 () Bool)

(assert (= bs!1374429 (and d!1833118 d!1833066)))

(assert (=> bs!1374429 (= lambda!318858 lambda!318849)))

(declare-fun bs!1374430 () Bool)

(assert (= bs!1374430 (and d!1833118 d!1833058)))

(assert (=> bs!1374430 (= lambda!318858 lambda!318848)))

(declare-fun bs!1374431 () Bool)

(assert (= bs!1374431 (and d!1833118 d!1833086)))

(assert (=> bs!1374431 (= lambda!318858 lambda!318854)))

(declare-fun bs!1374432 () Bool)

(assert (= bs!1374432 (and d!1833118 d!1832612)))

(assert (=> bs!1374432 (= lambda!318858 lambda!318810)))

(declare-fun bs!1374433 () Bool)

(assert (= bs!1374433 (and d!1833118 d!1832774)))

(assert (=> bs!1374433 (= lambda!318858 lambda!318827)))

(declare-fun bs!1374434 () Bool)

(assert (= bs!1374434 (and d!1833118 d!1832744)))

(assert (=> bs!1374434 (= lambda!318858 lambda!318824)))

(declare-fun bs!1374435 () Bool)

(assert (= bs!1374435 (and d!1833118 d!1832742)))

(assert (=> bs!1374435 (= lambda!318858 lambda!318823)))

(declare-fun bs!1374436 () Bool)

(assert (= bs!1374436 (and d!1833118 d!1832792)))

(assert (=> bs!1374436 (= lambda!318858 lambda!318828)))

(declare-fun bs!1374437 () Bool)

(assert (= bs!1374437 (and d!1833118 d!1832606)))

(assert (=> bs!1374437 (= lambda!318858 lambda!318801)))

(declare-fun bs!1374438 () Bool)

(assert (= bs!1374438 (and d!1833118 d!1833068)))

(assert (=> bs!1374438 (= lambda!318858 lambda!318850)))

(declare-fun bs!1374439 () Bool)

(assert (= bs!1374439 (and d!1833118 d!1833082)))

(assert (=> bs!1374439 (= lambda!318858 lambda!318853)))

(declare-fun bs!1374440 () Bool)

(assert (= bs!1374440 (and d!1833118 d!1832714)))

(assert (=> bs!1374440 (= lambda!318858 lambda!318820)))

(declare-fun bs!1374441 () Bool)

(assert (= bs!1374441 (and d!1833118 d!1832608)))

(assert (=> bs!1374441 (= lambda!318858 lambda!318804)))

(assert (=> d!1833118 (= (inv!82939 (h!70255 res!2456090)) (forall!14968 (exprs!5761 (h!70255 res!2456090)) lambda!318858))))

(declare-fun bs!1374442 () Bool)

(assert (= bs!1374442 d!1833118))

(declare-fun m!6759208 () Bool)

(assert (=> bs!1374442 m!6759208))

(assert (=> b!5825843 d!1833118))

(assert (=> b!5825765 d!1833062))

(declare-fun b!5827258 () Bool)

(declare-fun e!3575711 () Bool)

(declare-fun e!3575710 () Bool)

(assert (=> b!5827258 (= e!3575711 e!3575710)))

(declare-fun c!1032616 () Bool)

(assert (=> b!5827258 (= c!1032616 ((_ is Union!15877) (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))))))

(declare-fun b!5827259 () Bool)

(declare-fun e!3575713 () Bool)

(declare-fun call!455151 () Bool)

(assert (=> b!5827259 (= e!3575713 call!455151)))

(declare-fun b!5827260 () Bool)

(declare-fun e!3575714 () Bool)

(declare-fun e!3575712 () Bool)

(assert (=> b!5827260 (= e!3575714 e!3575712)))

(declare-fun res!2456451 () Bool)

(assert (=> b!5827260 (=> (not res!2456451) (not e!3575712))))

(declare-fun call!455149 () Bool)

(assert (=> b!5827260 (= res!2456451 call!455149)))

(declare-fun bm!455144 () Bool)

(assert (=> bm!455144 (= call!455149 call!455151)))

(declare-fun b!5827261 () Bool)

(assert (=> b!5827261 (= e!3575711 e!3575713)))

(declare-fun res!2456452 () Bool)

(assert (=> b!5827261 (= res!2456452 (not (nullable!5880 (reg!16206 (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))))))))

(assert (=> b!5827261 (=> (not res!2456452) (not e!3575713))))

(declare-fun d!1833120 () Bool)

(declare-fun res!2456455 () Bool)

(declare-fun e!3575709 () Bool)

(assert (=> d!1833120 (=> res!2456455 e!3575709)))

(assert (=> d!1833120 (= res!2456455 ((_ is ElementMatch!15877) (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))))))

(assert (=> d!1833120 (= (validRegex!7613 (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))) e!3575709)))

(declare-fun b!5827262 () Bool)

(declare-fun e!3575715 () Bool)

(declare-fun call!455150 () Bool)

(assert (=> b!5827262 (= e!3575715 call!455150)))

(declare-fun bm!455145 () Bool)

(assert (=> bm!455145 (= call!455150 (validRegex!7613 (ite c!1032616 (regTwo!32267 (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))) (regTwo!32266 (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))))))))

(declare-fun b!5827263 () Bool)

(declare-fun res!2456453 () Bool)

(assert (=> b!5827263 (=> res!2456453 e!3575714)))

(assert (=> b!5827263 (= res!2456453 (not ((_ is Concat!24722) (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607))))))))

(assert (=> b!5827263 (= e!3575710 e!3575714)))

(declare-fun b!5827264 () Bool)

(declare-fun res!2456454 () Bool)

(assert (=> b!5827264 (=> (not res!2456454) (not e!3575715))))

(assert (=> b!5827264 (= res!2456454 call!455149)))

(assert (=> b!5827264 (= e!3575710 e!3575715)))

(declare-fun c!1032615 () Bool)

(declare-fun bm!455146 () Bool)

(assert (=> bm!455146 (= call!455151 (validRegex!7613 (ite c!1032615 (reg!16206 (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))) (ite c!1032616 (regOne!32267 (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))) (regOne!32266 (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607))))))))))

(declare-fun b!5827265 () Bool)

(assert (=> b!5827265 (= e!3575709 e!3575711)))

(assert (=> b!5827265 (= c!1032615 ((_ is Star!15877) (ite c!1032432 (reg!16206 lt!2302607) (ite c!1032433 (regOne!32267 lt!2302607) (regOne!32266 lt!2302607)))))))

(declare-fun b!5827266 () Bool)

(assert (=> b!5827266 (= e!3575712 call!455150)))

(assert (= (and d!1833120 (not res!2456455)) b!5827265))

(assert (= (and b!5827265 c!1032615) b!5827261))

(assert (= (and b!5827265 (not c!1032615)) b!5827258))

(assert (= (and b!5827261 res!2456452) b!5827259))

(assert (= (and b!5827258 c!1032616) b!5827264))

(assert (= (and b!5827258 (not c!1032616)) b!5827263))

(assert (= (and b!5827264 res!2456454) b!5827262))

(assert (= (and b!5827263 (not res!2456453)) b!5827260))

(assert (= (and b!5827260 res!2456451) b!5827266))

(assert (= (or b!5827262 b!5827266) bm!455145))

(assert (= (or b!5827264 b!5827260) bm!455144))

(assert (= (or b!5827259 bm!455144) bm!455146))

(declare-fun m!6759210 () Bool)

(assert (=> b!5827261 m!6759210))

(declare-fun m!6759212 () Bool)

(assert (=> bm!455145 m!6759212))

(declare-fun m!6759214 () Bool)

(assert (=> bm!455146 m!6759214))

(assert (=> bm!454977 d!1833120))

(declare-fun d!1833122 () Bool)

(assert (=> d!1833122 (= (nullable!5880 (regOne!32266 r!7292)) (nullableFct!1886 (regOne!32266 r!7292)))))

(declare-fun bs!1374443 () Bool)

(assert (= bs!1374443 d!1833122))

(declare-fun m!6759216 () Bool)

(assert (=> bs!1374443 m!6759216))

(assert (=> b!5825800 d!1833122))

(declare-fun b!5827267 () Bool)

(declare-fun e!3575718 () Bool)

(declare-fun e!3575717 () Bool)

(assert (=> b!5827267 (= e!3575718 e!3575717)))

(declare-fun c!1032618 () Bool)

(assert (=> b!5827267 (= c!1032618 ((_ is Union!15877) (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))))

(declare-fun b!5827268 () Bool)

(declare-fun e!3575720 () Bool)

(declare-fun call!455154 () Bool)

(assert (=> b!5827268 (= e!3575720 call!455154)))

(declare-fun b!5827269 () Bool)

(declare-fun e!3575721 () Bool)

(declare-fun e!3575719 () Bool)

(assert (=> b!5827269 (= e!3575721 e!3575719)))

(declare-fun res!2456456 () Bool)

(assert (=> b!5827269 (=> (not res!2456456) (not e!3575719))))

(declare-fun call!455152 () Bool)

(assert (=> b!5827269 (= res!2456456 call!455152)))

(declare-fun bm!455147 () Bool)

(assert (=> bm!455147 (= call!455152 call!455154)))

(declare-fun b!5827270 () Bool)

(assert (=> b!5827270 (= e!3575718 e!3575720)))

(declare-fun res!2456457 () Bool)

(assert (=> b!5827270 (= res!2456457 (not (nullable!5880 (reg!16206 (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))))))

(assert (=> b!5827270 (=> (not res!2456457) (not e!3575720))))

(declare-fun d!1833124 () Bool)

(declare-fun res!2456460 () Bool)

(declare-fun e!3575716 () Bool)

(assert (=> d!1833124 (=> res!2456460 e!3575716)))

(assert (=> d!1833124 (= res!2456460 ((_ is ElementMatch!15877) (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))))

(assert (=> d!1833124 (= (validRegex!7613 (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))) e!3575716)))

(declare-fun b!5827271 () Bool)

(declare-fun e!3575722 () Bool)

(declare-fun call!455153 () Bool)

(assert (=> b!5827271 (= e!3575722 call!455153)))

(declare-fun bm!455148 () Bool)

(assert (=> bm!455148 (= call!455153 (validRegex!7613 (ite c!1032618 (regTwo!32267 (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))) (regTwo!32266 (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))))))

(declare-fun b!5827272 () Bool)

(declare-fun res!2456458 () Bool)

(assert (=> b!5827272 (=> res!2456458 e!3575721)))

(assert (=> b!5827272 (= res!2456458 (not ((_ is Concat!24722) (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))))))

(assert (=> b!5827272 (= e!3575717 e!3575721)))

(declare-fun b!5827273 () Bool)

(declare-fun res!2456459 () Bool)

(assert (=> b!5827273 (=> (not res!2456459) (not e!3575722))))

(assert (=> b!5827273 (= res!2456459 call!455152)))

(assert (=> b!5827273 (= e!3575717 e!3575722)))

(declare-fun bm!455149 () Bool)

(declare-fun c!1032617 () Bool)

(assert (=> bm!455149 (= call!455154 (validRegex!7613 (ite c!1032617 (reg!16206 (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))) (ite c!1032618 (regOne!32267 (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))) (regOne!32266 (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))))))))))))

(declare-fun b!5827274 () Bool)

(assert (=> b!5827274 (= e!3575716 e!3575718)))

(assert (=> b!5827274 (= c!1032617 ((_ is Star!15877) (ite c!1032430 (reg!16206 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (ite c!1032431 (regOne!32267 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292))) (regOne!32266 (ite c!1032318 (regTwo!32267 r!7292) (regTwo!32266 r!7292)))))))))

(declare-fun b!5827275 () Bool)

(assert (=> b!5827275 (= e!3575719 call!455153)))

(assert (= (and d!1833124 (not res!2456460)) b!5827274))

(assert (= (and b!5827274 c!1032617) b!5827270))

(assert (= (and b!5827274 (not c!1032617)) b!5827267))

(assert (= (and b!5827270 res!2456457) b!5827268))

(assert (= (and b!5827267 c!1032618) b!5827273))

(assert (= (and b!5827267 (not c!1032618)) b!5827272))

(assert (= (and b!5827273 res!2456459) b!5827271))

(assert (= (and b!5827272 (not res!2456458)) b!5827269))

(assert (= (and b!5827269 res!2456456) b!5827275))

(assert (= (or b!5827271 b!5827275) bm!455148))

(assert (= (or b!5827273 b!5827269) bm!455147))

(assert (= (or b!5827268 bm!455147) bm!455149))

(declare-fun m!6759218 () Bool)

(assert (=> b!5827270 m!6759218))

(declare-fun m!6759220 () Bool)

(assert (=> bm!455148 m!6759220))

(declare-fun m!6759222 () Bool)

(assert (=> bm!455149 m!6759222))

(assert (=> bm!454974 d!1833124))

(declare-fun d!1833126 () Bool)

(assert (=> d!1833126 (= (isConcat!839 lt!2302630) ((_ is Concat!24722) lt!2302630))))

(assert (=> b!5825740 d!1833126))

(declare-fun d!1833128 () Bool)

(declare-fun c!1032619 () Bool)

(assert (=> d!1833128 (= c!1032619 ((_ is Nil!63807) res!2456090))))

(declare-fun e!3575723 () (InoxSet Context!10522))

(assert (=> d!1833128 (= (content!11713 res!2456090) e!3575723)))

(declare-fun b!5827276 () Bool)

(assert (=> b!5827276 (= e!3575723 ((as const (Array Context!10522 Bool)) false))))

(declare-fun b!5827277 () Bool)

(assert (=> b!5827277 (= e!3575723 ((_ map or) (store ((as const (Array Context!10522 Bool)) false) (h!70255 res!2456090) true) (content!11713 (t!377286 res!2456090))))))

(assert (= (and d!1833128 c!1032619) b!5827276))

(assert (= (and d!1833128 (not c!1032619)) b!5827277))

(declare-fun m!6759224 () Bool)

(assert (=> b!5827277 m!6759224))

(declare-fun m!6759226 () Bool)

(assert (=> b!5827277 m!6759226))

(assert (=> b!5825845 d!1833128))

(assert (=> bm!454954 d!1832726))

(declare-fun b!5827278 () Bool)

(declare-fun e!3575724 () Bool)

(declare-fun tp!1609225 () Bool)

(declare-fun tp!1609226 () Bool)

(assert (=> b!5827278 (= e!3575724 (and tp!1609225 tp!1609226))))

(assert (=> b!5825930 (= tp!1608393 e!3575724)))

(assert (= (and b!5825930 ((_ is Cons!63806) (exprs!5761 setElem!39386))) b!5827278))

(declare-fun b!5827279 () Bool)

(declare-fun e!3575725 () Bool)

(assert (=> b!5827279 (= e!3575725 tp_is_empty!41007)))

(declare-fun b!5827280 () Bool)

(declare-fun tp!1609228 () Bool)

(declare-fun tp!1609230 () Bool)

(assert (=> b!5827280 (= e!3575725 (and tp!1609228 tp!1609230))))

(assert (=> b!5826020 (= tp!1608508 e!3575725)))

(declare-fun b!5827282 () Bool)

(declare-fun tp!1609231 () Bool)

(declare-fun tp!1609229 () Bool)

(assert (=> b!5827282 (= e!3575725 (and tp!1609231 tp!1609229))))

(declare-fun b!5827281 () Bool)

(declare-fun tp!1609227 () Bool)

(assert (=> b!5827281 (= e!3575725 tp!1609227)))

(assert (= (and b!5826020 ((_ is ElementMatch!15877) (regOne!32267 (reg!16206 (regTwo!32266 r!7292))))) b!5827279))

(assert (= (and b!5826020 ((_ is Concat!24722) (regOne!32267 (reg!16206 (regTwo!32266 r!7292))))) b!5827280))

(assert (= (and b!5826020 ((_ is Star!15877) (regOne!32267 (reg!16206 (regTwo!32266 r!7292))))) b!5827281))

(assert (= (and b!5826020 ((_ is Union!15877) (regOne!32267 (reg!16206 (regTwo!32266 r!7292))))) b!5827282))

(declare-fun b!5827283 () Bool)

(declare-fun e!3575726 () Bool)

(assert (=> b!5827283 (= e!3575726 tp_is_empty!41007)))

(declare-fun b!5827284 () Bool)

(declare-fun tp!1609233 () Bool)

(declare-fun tp!1609235 () Bool)

(assert (=> b!5827284 (= e!3575726 (and tp!1609233 tp!1609235))))

(assert (=> b!5826020 (= tp!1608506 e!3575726)))

(declare-fun b!5827286 () Bool)

(declare-fun tp!1609236 () Bool)

(declare-fun tp!1609234 () Bool)

(assert (=> b!5827286 (= e!3575726 (and tp!1609236 tp!1609234))))

(declare-fun b!5827285 () Bool)

(declare-fun tp!1609232 () Bool)

(assert (=> b!5827285 (= e!3575726 tp!1609232)))

(assert (= (and b!5826020 ((_ is ElementMatch!15877) (regTwo!32267 (reg!16206 (regTwo!32266 r!7292))))) b!5827283))

(assert (= (and b!5826020 ((_ is Concat!24722) (regTwo!32267 (reg!16206 (regTwo!32266 r!7292))))) b!5827284))

(assert (= (and b!5826020 ((_ is Star!15877) (regTwo!32267 (reg!16206 (regTwo!32266 r!7292))))) b!5827285))

(assert (= (and b!5826020 ((_ is Union!15877) (regTwo!32267 (reg!16206 (regTwo!32266 r!7292))))) b!5827286))

(declare-fun b!5827287 () Bool)

(declare-fun e!3575727 () Bool)

(assert (=> b!5827287 (= e!3575727 tp_is_empty!41007)))

(declare-fun b!5827288 () Bool)

(declare-fun tp!1609238 () Bool)

(declare-fun tp!1609240 () Bool)

(assert (=> b!5827288 (= e!3575727 (and tp!1609238 tp!1609240))))

(assert (=> b!5825924 (= tp!1608383 e!3575727)))

(declare-fun b!5827290 () Bool)

(declare-fun tp!1609241 () Bool)

(declare-fun tp!1609239 () Bool)

(assert (=> b!5827290 (= e!3575727 (and tp!1609241 tp!1609239))))

(declare-fun b!5827289 () Bool)

(declare-fun tp!1609237 () Bool)

(assert (=> b!5827289 (= e!3575727 tp!1609237)))

(assert (= (and b!5825924 ((_ is ElementMatch!15877) (reg!16206 (regOne!32266 (regOne!32267 r!7292))))) b!5827287))

(assert (= (and b!5825924 ((_ is Concat!24722) (reg!16206 (regOne!32266 (regOne!32267 r!7292))))) b!5827288))

(assert (= (and b!5825924 ((_ is Star!15877) (reg!16206 (regOne!32266 (regOne!32267 r!7292))))) b!5827289))

(assert (= (and b!5825924 ((_ is Union!15877) (reg!16206 (regOne!32266 (regOne!32267 r!7292))))) b!5827290))

(declare-fun b!5827291 () Bool)

(declare-fun e!3575728 () Bool)

(assert (=> b!5827291 (= e!3575728 tp_is_empty!41007)))

(declare-fun b!5827292 () Bool)

(declare-fun tp!1609243 () Bool)

(declare-fun tp!1609245 () Bool)

(assert (=> b!5827292 (= e!3575728 (and tp!1609243 tp!1609245))))

(assert (=> b!5825961 (= tp!1608435 e!3575728)))

(declare-fun b!5827294 () Bool)

(declare-fun tp!1609246 () Bool)

(declare-fun tp!1609244 () Bool)

(assert (=> b!5827294 (= e!3575728 (and tp!1609246 tp!1609244))))

(declare-fun b!5827293 () Bool)

(declare-fun tp!1609242 () Bool)

(assert (=> b!5827293 (= e!3575728 tp!1609242)))

(assert (= (and b!5825961 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32266 (regTwo!32267 r!7292))))) b!5827291))

(assert (= (and b!5825961 ((_ is Concat!24722) (regOne!32267 (regOne!32266 (regTwo!32267 r!7292))))) b!5827292))

(assert (= (and b!5825961 ((_ is Star!15877) (regOne!32267 (regOne!32266 (regTwo!32267 r!7292))))) b!5827293))

(assert (= (and b!5825961 ((_ is Union!15877) (regOne!32267 (regOne!32266 (regTwo!32267 r!7292))))) b!5827294))

(declare-fun b!5827295 () Bool)

(declare-fun e!3575729 () Bool)

(assert (=> b!5827295 (= e!3575729 tp_is_empty!41007)))

(declare-fun b!5827296 () Bool)

(declare-fun tp!1609248 () Bool)

(declare-fun tp!1609250 () Bool)

(assert (=> b!5827296 (= e!3575729 (and tp!1609248 tp!1609250))))

(assert (=> b!5825961 (= tp!1608433 e!3575729)))

(declare-fun b!5827298 () Bool)

(declare-fun tp!1609251 () Bool)

(declare-fun tp!1609249 () Bool)

(assert (=> b!5827298 (= e!3575729 (and tp!1609251 tp!1609249))))

(declare-fun b!5827297 () Bool)

(declare-fun tp!1609247 () Bool)

(assert (=> b!5827297 (= e!3575729 tp!1609247)))

(assert (= (and b!5825961 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32266 (regTwo!32267 r!7292))))) b!5827295))

(assert (= (and b!5825961 ((_ is Concat!24722) (regTwo!32267 (regOne!32266 (regTwo!32267 r!7292))))) b!5827296))

(assert (= (and b!5825961 ((_ is Star!15877) (regTwo!32267 (regOne!32266 (regTwo!32267 r!7292))))) b!5827297))

(assert (= (and b!5825961 ((_ is Union!15877) (regTwo!32267 (regOne!32266 (regTwo!32267 r!7292))))) b!5827298))

(declare-fun b!5827299 () Bool)

(declare-fun e!3575730 () Bool)

(assert (=> b!5827299 (= e!3575730 tp_is_empty!41007)))

(declare-fun b!5827300 () Bool)

(declare-fun tp!1609253 () Bool)

(declare-fun tp!1609255 () Bool)

(assert (=> b!5827300 (= e!3575730 (and tp!1609253 tp!1609255))))

(assert (=> b!5825916 (= tp!1608375 e!3575730)))

(declare-fun b!5827302 () Bool)

(declare-fun tp!1609256 () Bool)

(declare-fun tp!1609254 () Bool)

(assert (=> b!5827302 (= e!3575730 (and tp!1609256 tp!1609254))))

(declare-fun b!5827301 () Bool)

(declare-fun tp!1609252 () Bool)

(assert (=> b!5827301 (= e!3575730 tp!1609252)))

(assert (= (and b!5825916 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32267 (regOne!32266 r!7292))))) b!5827299))

(assert (= (and b!5825916 ((_ is Concat!24722) (regOne!32267 (regTwo!32267 (regOne!32266 r!7292))))) b!5827300))

(assert (= (and b!5825916 ((_ is Star!15877) (regOne!32267 (regTwo!32267 (regOne!32266 r!7292))))) b!5827301))

(assert (= (and b!5825916 ((_ is Union!15877) (regOne!32267 (regTwo!32267 (regOne!32266 r!7292))))) b!5827302))

(declare-fun b!5827303 () Bool)

(declare-fun e!3575731 () Bool)

(assert (=> b!5827303 (= e!3575731 tp_is_empty!41007)))

(declare-fun b!5827304 () Bool)

(declare-fun tp!1609258 () Bool)

(declare-fun tp!1609260 () Bool)

(assert (=> b!5827304 (= e!3575731 (and tp!1609258 tp!1609260))))

(assert (=> b!5825916 (= tp!1608373 e!3575731)))

(declare-fun b!5827306 () Bool)

(declare-fun tp!1609261 () Bool)

(declare-fun tp!1609259 () Bool)

(assert (=> b!5827306 (= e!3575731 (and tp!1609261 tp!1609259))))

(declare-fun b!5827305 () Bool)

(declare-fun tp!1609257 () Bool)

(assert (=> b!5827305 (= e!3575731 tp!1609257)))

(assert (= (and b!5825916 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32267 (regOne!32266 r!7292))))) b!5827303))

(assert (= (and b!5825916 ((_ is Concat!24722) (regTwo!32267 (regTwo!32267 (regOne!32266 r!7292))))) b!5827304))

(assert (= (and b!5825916 ((_ is Star!15877) (regTwo!32267 (regTwo!32267 (regOne!32266 r!7292))))) b!5827305))

(assert (= (and b!5825916 ((_ is Union!15877) (regTwo!32267 (regTwo!32267 (regOne!32266 r!7292))))) b!5827306))

(declare-fun b!5827307 () Bool)

(declare-fun e!3575732 () Bool)

(assert (=> b!5827307 (= e!3575732 tp_is_empty!41007)))

(declare-fun b!5827308 () Bool)

(declare-fun tp!1609263 () Bool)

(declare-fun tp!1609265 () Bool)

(assert (=> b!5827308 (= e!3575732 (and tp!1609263 tp!1609265))))

(assert (=> b!5825907 (= tp!1608361 e!3575732)))

(declare-fun b!5827310 () Bool)

(declare-fun tp!1609266 () Bool)

(declare-fun tp!1609264 () Bool)

(assert (=> b!5827310 (= e!3575732 (and tp!1609266 tp!1609264))))

(declare-fun b!5827309 () Bool)

(declare-fun tp!1609262 () Bool)

(assert (=> b!5827309 (= e!3575732 tp!1609262)))

(assert (= (and b!5825907 ((_ is ElementMatch!15877) (reg!16206 (reg!16206 (regOne!32266 r!7292))))) b!5827307))

(assert (= (and b!5825907 ((_ is Concat!24722) (reg!16206 (reg!16206 (regOne!32266 r!7292))))) b!5827308))

(assert (= (and b!5825907 ((_ is Star!15877) (reg!16206 (reg!16206 (regOne!32266 r!7292))))) b!5827309))

(assert (= (and b!5825907 ((_ is Union!15877) (reg!16206 (reg!16206 (regOne!32266 r!7292))))) b!5827310))

(declare-fun b!5827311 () Bool)

(declare-fun e!3575733 () Bool)

(assert (=> b!5827311 (= e!3575733 tp_is_empty!41007)))

(declare-fun b!5827312 () Bool)

(declare-fun tp!1609268 () Bool)

(declare-fun tp!1609270 () Bool)

(assert (=> b!5827312 (= e!3575733 (and tp!1609268 tp!1609270))))

(assert (=> b!5826018 (= tp!1608505 e!3575733)))

(declare-fun b!5827314 () Bool)

(declare-fun tp!1609271 () Bool)

(declare-fun tp!1609269 () Bool)

(assert (=> b!5827314 (= e!3575733 (and tp!1609271 tp!1609269))))

(declare-fun b!5827313 () Bool)

(declare-fun tp!1609267 () Bool)

(assert (=> b!5827313 (= e!3575733 tp!1609267)))

(assert (= (and b!5826018 ((_ is ElementMatch!15877) (regOne!32266 (reg!16206 (regTwo!32266 r!7292))))) b!5827311))

(assert (= (and b!5826018 ((_ is Concat!24722) (regOne!32266 (reg!16206 (regTwo!32266 r!7292))))) b!5827312))

(assert (= (and b!5826018 ((_ is Star!15877) (regOne!32266 (reg!16206 (regTwo!32266 r!7292))))) b!5827313))

(assert (= (and b!5826018 ((_ is Union!15877) (regOne!32266 (reg!16206 (regTwo!32266 r!7292))))) b!5827314))

(declare-fun b!5827315 () Bool)

(declare-fun e!3575734 () Bool)

(assert (=> b!5827315 (= e!3575734 tp_is_empty!41007)))

(declare-fun b!5827316 () Bool)

(declare-fun tp!1609273 () Bool)

(declare-fun tp!1609275 () Bool)

(assert (=> b!5827316 (= e!3575734 (and tp!1609273 tp!1609275))))

(assert (=> b!5826018 (= tp!1608507 e!3575734)))

(declare-fun b!5827318 () Bool)

(declare-fun tp!1609276 () Bool)

(declare-fun tp!1609274 () Bool)

(assert (=> b!5827318 (= e!3575734 (and tp!1609276 tp!1609274))))

(declare-fun b!5827317 () Bool)

(declare-fun tp!1609272 () Bool)

(assert (=> b!5827317 (= e!3575734 tp!1609272)))

(assert (= (and b!5826018 ((_ is ElementMatch!15877) (regTwo!32266 (reg!16206 (regTwo!32266 r!7292))))) b!5827315))

(assert (= (and b!5826018 ((_ is Concat!24722) (regTwo!32266 (reg!16206 (regTwo!32266 r!7292))))) b!5827316))

(assert (= (and b!5826018 ((_ is Star!15877) (regTwo!32266 (reg!16206 (regTwo!32266 r!7292))))) b!5827317))

(assert (= (and b!5826018 ((_ is Union!15877) (regTwo!32266 (reg!16206 (regTwo!32266 r!7292))))) b!5827318))

(declare-fun b!5827319 () Bool)

(declare-fun e!3575735 () Bool)

(assert (=> b!5827319 (= e!3575735 tp_is_empty!41007)))

(declare-fun b!5827320 () Bool)

(declare-fun tp!1609278 () Bool)

(declare-fun tp!1609280 () Bool)

(assert (=> b!5827320 (= e!3575735 (and tp!1609278 tp!1609280))))

(assert (=> b!5826004 (= tp!1608488 e!3575735)))

(declare-fun b!5827322 () Bool)

(declare-fun tp!1609281 () Bool)

(declare-fun tp!1609279 () Bool)

(assert (=> b!5827322 (= e!3575735 (and tp!1609281 tp!1609279))))

(declare-fun b!5827321 () Bool)

(declare-fun tp!1609277 () Bool)

(assert (=> b!5827321 (= e!3575735 tp!1609277)))

(assert (= (and b!5826004 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827319))

(assert (= (and b!5826004 ((_ is Concat!24722) (regOne!32267 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827320))

(assert (= (and b!5826004 ((_ is Star!15877) (regOne!32267 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827321))

(assert (= (and b!5826004 ((_ is Union!15877) (regOne!32267 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827322))

(declare-fun b!5827323 () Bool)

(declare-fun e!3575736 () Bool)

(assert (=> b!5827323 (= e!3575736 tp_is_empty!41007)))

(declare-fun b!5827324 () Bool)

(declare-fun tp!1609283 () Bool)

(declare-fun tp!1609285 () Bool)

(assert (=> b!5827324 (= e!3575736 (and tp!1609283 tp!1609285))))

(assert (=> b!5826004 (= tp!1608486 e!3575736)))

(declare-fun b!5827326 () Bool)

(declare-fun tp!1609286 () Bool)

(declare-fun tp!1609284 () Bool)

(assert (=> b!5827326 (= e!3575736 (and tp!1609286 tp!1609284))))

(declare-fun b!5827325 () Bool)

(declare-fun tp!1609282 () Bool)

(assert (=> b!5827325 (= e!3575736 tp!1609282)))

(assert (= (and b!5826004 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827323))

(assert (= (and b!5826004 ((_ is Concat!24722) (regTwo!32267 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827324))

(assert (= (and b!5826004 ((_ is Star!15877) (regTwo!32267 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827325))

(assert (= (and b!5826004 ((_ is Union!15877) (regTwo!32267 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827326))

(declare-fun b!5827327 () Bool)

(declare-fun e!3575737 () Bool)

(assert (=> b!5827327 (= e!3575737 tp_is_empty!41007)))

(declare-fun b!5827328 () Bool)

(declare-fun tp!1609288 () Bool)

(declare-fun tp!1609290 () Bool)

(assert (=> b!5827328 (= e!3575737 (and tp!1609288 tp!1609290))))

(assert (=> b!5825945 (= tp!1608413 e!3575737)))

(declare-fun b!5827330 () Bool)

(declare-fun tp!1609291 () Bool)

(declare-fun tp!1609289 () Bool)

(assert (=> b!5827330 (= e!3575737 (and tp!1609291 tp!1609289))))

(declare-fun b!5827329 () Bool)

(declare-fun tp!1609287 () Bool)

(assert (=> b!5827329 (= e!3575737 tp!1609287)))

(assert (= (and b!5825945 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32267 (regOne!32267 r!7292))))) b!5827327))

(assert (= (and b!5825945 ((_ is Concat!24722) (regOne!32266 (regOne!32267 (regOne!32267 r!7292))))) b!5827328))

(assert (= (and b!5825945 ((_ is Star!15877) (regOne!32266 (regOne!32267 (regOne!32267 r!7292))))) b!5827329))

(assert (= (and b!5825945 ((_ is Union!15877) (regOne!32266 (regOne!32267 (regOne!32267 r!7292))))) b!5827330))

(declare-fun b!5827331 () Bool)

(declare-fun e!3575738 () Bool)

(assert (=> b!5827331 (= e!3575738 tp_is_empty!41007)))

(declare-fun b!5827332 () Bool)

(declare-fun tp!1609293 () Bool)

(declare-fun tp!1609295 () Bool)

(assert (=> b!5827332 (= e!3575738 (and tp!1609293 tp!1609295))))

(assert (=> b!5825945 (= tp!1608415 e!3575738)))

(declare-fun b!5827334 () Bool)

(declare-fun tp!1609296 () Bool)

(declare-fun tp!1609294 () Bool)

(assert (=> b!5827334 (= e!3575738 (and tp!1609296 tp!1609294))))

(declare-fun b!5827333 () Bool)

(declare-fun tp!1609292 () Bool)

(assert (=> b!5827333 (= e!3575738 tp!1609292)))

(assert (= (and b!5825945 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))))) b!5827331))

(assert (= (and b!5825945 ((_ is Concat!24722) (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))))) b!5827332))

(assert (= (and b!5825945 ((_ is Star!15877) (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))))) b!5827333))

(assert (= (and b!5825945 ((_ is Union!15877) (regTwo!32266 (regOne!32267 (regOne!32267 r!7292))))) b!5827334))

(declare-fun b!5827335 () Bool)

(declare-fun e!3575739 () Bool)

(assert (=> b!5827335 (= e!3575739 tp_is_empty!41007)))

(declare-fun b!5827336 () Bool)

(declare-fun tp!1609298 () Bool)

(declare-fun tp!1609300 () Bool)

(assert (=> b!5827336 (= e!3575739 (and tp!1609298 tp!1609300))))

(assert (=> b!5826011 (= tp!1608494 e!3575739)))

(declare-fun b!5827338 () Bool)

(declare-fun tp!1609301 () Bool)

(declare-fun tp!1609299 () Bool)

(assert (=> b!5827338 (= e!3575739 (and tp!1609301 tp!1609299))))

(declare-fun b!5827337 () Bool)

(declare-fun tp!1609297 () Bool)

(assert (=> b!5827337 (= e!3575739 tp!1609297)))

(assert (= (and b!5826011 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827335))

(assert (= (and b!5826011 ((_ is Concat!24722) (reg!16206 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827336))

(assert (= (and b!5826011 ((_ is Star!15877) (reg!16206 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827337))

(assert (= (and b!5826011 ((_ is Union!15877) (reg!16206 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827338))

(declare-fun b!5827339 () Bool)

(declare-fun e!3575740 () Bool)

(assert (=> b!5827339 (= e!3575740 tp_is_empty!41007)))

(declare-fun b!5827340 () Bool)

(declare-fun tp!1609303 () Bool)

(declare-fun tp!1609305 () Bool)

(assert (=> b!5827340 (= e!3575740 (and tp!1609303 tp!1609305))))

(assert (=> b!5826002 (= tp!1608485 e!3575740)))

(declare-fun b!5827342 () Bool)

(declare-fun tp!1609306 () Bool)

(declare-fun tp!1609304 () Bool)

(assert (=> b!5827342 (= e!3575740 (and tp!1609306 tp!1609304))))

(declare-fun b!5827341 () Bool)

(declare-fun tp!1609302 () Bool)

(assert (=> b!5827341 (= e!3575740 tp!1609302)))

(assert (= (and b!5826002 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827339))

(assert (= (and b!5826002 ((_ is Concat!24722) (regOne!32266 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827340))

(assert (= (and b!5826002 ((_ is Star!15877) (regOne!32266 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827341))

(assert (= (and b!5826002 ((_ is Union!15877) (regOne!32266 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827342))

(declare-fun b!5827343 () Bool)

(declare-fun e!3575741 () Bool)

(assert (=> b!5827343 (= e!3575741 tp_is_empty!41007)))

(declare-fun b!5827344 () Bool)

(declare-fun tp!1609308 () Bool)

(declare-fun tp!1609310 () Bool)

(assert (=> b!5827344 (= e!3575741 (and tp!1609308 tp!1609310))))

(assert (=> b!5826002 (= tp!1608487 e!3575741)))

(declare-fun b!5827346 () Bool)

(declare-fun tp!1609311 () Bool)

(declare-fun tp!1609309 () Bool)

(assert (=> b!5827346 (= e!3575741 (and tp!1609311 tp!1609309))))

(declare-fun b!5827345 () Bool)

(declare-fun tp!1609307 () Bool)

(assert (=> b!5827345 (= e!3575741 tp!1609307)))

(assert (= (and b!5826002 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827343))

(assert (= (and b!5826002 ((_ is Concat!24722) (regTwo!32266 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827344))

(assert (= (and b!5826002 ((_ is Star!15877) (regTwo!32266 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827345))

(assert (= (and b!5826002 ((_ is Union!15877) (regTwo!32266 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827346))

(declare-fun b!5827347 () Bool)

(declare-fun e!3575742 () Bool)

(assert (=> b!5827347 (= e!3575742 tp_is_empty!41007)))

(declare-fun b!5827348 () Bool)

(declare-fun tp!1609313 () Bool)

(declare-fun tp!1609315 () Bool)

(assert (=> b!5827348 (= e!3575742 (and tp!1609313 tp!1609315))))

(assert (=> b!5825954 (= tp!1608422 e!3575742)))

(declare-fun b!5827350 () Bool)

(declare-fun tp!1609316 () Bool)

(declare-fun tp!1609314 () Bool)

(assert (=> b!5827350 (= e!3575742 (and tp!1609316 tp!1609314))))

(declare-fun b!5827349 () Bool)

(declare-fun tp!1609312 () Bool)

(assert (=> b!5827349 (= e!3575742 tp!1609312)))

(assert (= (and b!5825954 ((_ is ElementMatch!15877) (reg!16206 (h!70254 (exprs!5761 setElem!39378))))) b!5827347))

(assert (= (and b!5825954 ((_ is Concat!24722) (reg!16206 (h!70254 (exprs!5761 setElem!39378))))) b!5827348))

(assert (= (and b!5825954 ((_ is Star!15877) (reg!16206 (h!70254 (exprs!5761 setElem!39378))))) b!5827349))

(assert (= (and b!5825954 ((_ is Union!15877) (reg!16206 (h!70254 (exprs!5761 setElem!39378))))) b!5827350))

(declare-fun b!5827351 () Bool)

(declare-fun e!3575743 () Bool)

(assert (=> b!5827351 (= e!3575743 tp_is_empty!41007)))

(declare-fun b!5827352 () Bool)

(declare-fun tp!1609318 () Bool)

(declare-fun tp!1609320 () Bool)

(assert (=> b!5827352 (= e!3575743 (and tp!1609318 tp!1609320))))

(assert (=> b!5825988 (= tp!1608468 e!3575743)))

(declare-fun b!5827354 () Bool)

(declare-fun tp!1609321 () Bool)

(declare-fun tp!1609319 () Bool)

(assert (=> b!5827354 (= e!3575743 (and tp!1609321 tp!1609319))))

(declare-fun b!5827353 () Bool)

(declare-fun tp!1609317 () Bool)

(assert (=> b!5827353 (= e!3575743 tp!1609317)))

(assert (= (and b!5825988 ((_ is ElementMatch!15877) (regOne!32267 (reg!16206 (regTwo!32267 r!7292))))) b!5827351))

(assert (= (and b!5825988 ((_ is Concat!24722) (regOne!32267 (reg!16206 (regTwo!32267 r!7292))))) b!5827352))

(assert (= (and b!5825988 ((_ is Star!15877) (regOne!32267 (reg!16206 (regTwo!32267 r!7292))))) b!5827353))

(assert (= (and b!5825988 ((_ is Union!15877) (regOne!32267 (reg!16206 (regTwo!32267 r!7292))))) b!5827354))

(declare-fun b!5827355 () Bool)

(declare-fun e!3575744 () Bool)

(assert (=> b!5827355 (= e!3575744 tp_is_empty!41007)))

(declare-fun b!5827356 () Bool)

(declare-fun tp!1609323 () Bool)

(declare-fun tp!1609325 () Bool)

(assert (=> b!5827356 (= e!3575744 (and tp!1609323 tp!1609325))))

(assert (=> b!5825988 (= tp!1608466 e!3575744)))

(declare-fun b!5827358 () Bool)

(declare-fun tp!1609326 () Bool)

(declare-fun tp!1609324 () Bool)

(assert (=> b!5827358 (= e!3575744 (and tp!1609326 tp!1609324))))

(declare-fun b!5827357 () Bool)

(declare-fun tp!1609322 () Bool)

(assert (=> b!5827357 (= e!3575744 tp!1609322)))

(assert (= (and b!5825988 ((_ is ElementMatch!15877) (regTwo!32267 (reg!16206 (regTwo!32267 r!7292))))) b!5827355))

(assert (= (and b!5825988 ((_ is Concat!24722) (regTwo!32267 (reg!16206 (regTwo!32267 r!7292))))) b!5827356))

(assert (= (and b!5825988 ((_ is Star!15877) (regTwo!32267 (reg!16206 (regTwo!32267 r!7292))))) b!5827357))

(assert (= (and b!5825988 ((_ is Union!15877) (regTwo!32267 (reg!16206 (regTwo!32267 r!7292))))) b!5827358))

(declare-fun b!5827359 () Bool)

(declare-fun e!3575745 () Bool)

(assert (=> b!5827359 (= e!3575745 tp_is_empty!41007)))

(declare-fun b!5827360 () Bool)

(declare-fun tp!1609328 () Bool)

(declare-fun tp!1609330 () Bool)

(assert (=> b!5827360 (= e!3575745 (and tp!1609328 tp!1609330))))

(assert (=> b!5825995 (= tp!1608474 e!3575745)))

(declare-fun b!5827362 () Bool)

(declare-fun tp!1609331 () Bool)

(declare-fun tp!1609329 () Bool)

(assert (=> b!5827362 (= e!3575745 (and tp!1609331 tp!1609329))))

(declare-fun b!5827361 () Bool)

(declare-fun tp!1609327 () Bool)

(assert (=> b!5827361 (= e!3575745 tp!1609327)))

(assert (= (and b!5825995 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32266 (reg!16206 r!7292))))) b!5827359))

(assert (= (and b!5825995 ((_ is Concat!24722) (reg!16206 (regTwo!32266 (reg!16206 r!7292))))) b!5827360))

(assert (= (and b!5825995 ((_ is Star!15877) (reg!16206 (regTwo!32266 (reg!16206 r!7292))))) b!5827361))

(assert (= (and b!5825995 ((_ is Union!15877) (reg!16206 (regTwo!32266 (reg!16206 r!7292))))) b!5827362))

(declare-fun b!5827363 () Bool)

(declare-fun e!3575746 () Bool)

(assert (=> b!5827363 (= e!3575746 tp_is_empty!41007)))

(declare-fun b!5827364 () Bool)

(declare-fun tp!1609333 () Bool)

(declare-fun tp!1609335 () Bool)

(assert (=> b!5827364 (= e!3575746 (and tp!1609333 tp!1609335))))

(assert (=> b!5825947 (= tp!1608416 e!3575746)))

(declare-fun b!5827366 () Bool)

(declare-fun tp!1609336 () Bool)

(declare-fun tp!1609334 () Bool)

(assert (=> b!5827366 (= e!3575746 (and tp!1609336 tp!1609334))))

(declare-fun b!5827365 () Bool)

(declare-fun tp!1609332 () Bool)

(assert (=> b!5827365 (= e!3575746 tp!1609332)))

(assert (= (and b!5825947 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32267 (regOne!32267 r!7292))))) b!5827363))

(assert (= (and b!5825947 ((_ is Concat!24722) (regOne!32267 (regOne!32267 (regOne!32267 r!7292))))) b!5827364))

(assert (= (and b!5825947 ((_ is Star!15877) (regOne!32267 (regOne!32267 (regOne!32267 r!7292))))) b!5827365))

(assert (= (and b!5825947 ((_ is Union!15877) (regOne!32267 (regOne!32267 (regOne!32267 r!7292))))) b!5827366))

(declare-fun b!5827367 () Bool)

(declare-fun e!3575747 () Bool)

(assert (=> b!5827367 (= e!3575747 tp_is_empty!41007)))

(declare-fun b!5827368 () Bool)

(declare-fun tp!1609338 () Bool)

(declare-fun tp!1609340 () Bool)

(assert (=> b!5827368 (= e!3575747 (and tp!1609338 tp!1609340))))

(assert (=> b!5825947 (= tp!1608414 e!3575747)))

(declare-fun b!5827370 () Bool)

(declare-fun tp!1609341 () Bool)

(declare-fun tp!1609339 () Bool)

(assert (=> b!5827370 (= e!3575747 (and tp!1609341 tp!1609339))))

(declare-fun b!5827369 () Bool)

(declare-fun tp!1609337 () Bool)

(assert (=> b!5827369 (= e!3575747 tp!1609337)))

(assert (= (and b!5825947 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32267 (regOne!32267 r!7292))))) b!5827367))

(assert (= (and b!5825947 ((_ is Concat!24722) (regTwo!32267 (regOne!32267 (regOne!32267 r!7292))))) b!5827368))

(assert (= (and b!5825947 ((_ is Star!15877) (regTwo!32267 (regOne!32267 (regOne!32267 r!7292))))) b!5827369))

(assert (= (and b!5825947 ((_ is Union!15877) (regTwo!32267 (regOne!32267 (regOne!32267 r!7292))))) b!5827370))

(declare-fun b!5827371 () Bool)

(declare-fun e!3575748 () Bool)

(assert (=> b!5827371 (= e!3575748 tp_is_empty!41007)))

(declare-fun b!5827372 () Bool)

(declare-fun tp!1609343 () Bool)

(declare-fun tp!1609345 () Bool)

(assert (=> b!5827372 (= e!3575748 (and tp!1609343 tp!1609345))))

(assert (=> b!5825986 (= tp!1608465 e!3575748)))

(declare-fun b!5827374 () Bool)

(declare-fun tp!1609346 () Bool)

(declare-fun tp!1609344 () Bool)

(assert (=> b!5827374 (= e!3575748 (and tp!1609346 tp!1609344))))

(declare-fun b!5827373 () Bool)

(declare-fun tp!1609342 () Bool)

(assert (=> b!5827373 (= e!3575748 tp!1609342)))

(assert (= (and b!5825986 ((_ is ElementMatch!15877) (regOne!32266 (reg!16206 (regTwo!32267 r!7292))))) b!5827371))

(assert (= (and b!5825986 ((_ is Concat!24722) (regOne!32266 (reg!16206 (regTwo!32267 r!7292))))) b!5827372))

(assert (= (and b!5825986 ((_ is Star!15877) (regOne!32266 (reg!16206 (regTwo!32267 r!7292))))) b!5827373))

(assert (= (and b!5825986 ((_ is Union!15877) (regOne!32266 (reg!16206 (regTwo!32267 r!7292))))) b!5827374))

(declare-fun b!5827375 () Bool)

(declare-fun e!3575749 () Bool)

(assert (=> b!5827375 (= e!3575749 tp_is_empty!41007)))

(declare-fun b!5827376 () Bool)

(declare-fun tp!1609348 () Bool)

(declare-fun tp!1609350 () Bool)

(assert (=> b!5827376 (= e!3575749 (and tp!1609348 tp!1609350))))

(assert (=> b!5825986 (= tp!1608467 e!3575749)))

(declare-fun b!5827378 () Bool)

(declare-fun tp!1609351 () Bool)

(declare-fun tp!1609349 () Bool)

(assert (=> b!5827378 (= e!3575749 (and tp!1609351 tp!1609349))))

(declare-fun b!5827377 () Bool)

(declare-fun tp!1609347 () Bool)

(assert (=> b!5827377 (= e!3575749 tp!1609347)))

(assert (= (and b!5825986 ((_ is ElementMatch!15877) (regTwo!32266 (reg!16206 (regTwo!32267 r!7292))))) b!5827375))

(assert (= (and b!5825986 ((_ is Concat!24722) (regTwo!32266 (reg!16206 (regTwo!32267 r!7292))))) b!5827376))

(assert (= (and b!5825986 ((_ is Star!15877) (regTwo!32266 (reg!16206 (regTwo!32267 r!7292))))) b!5827377))

(assert (= (and b!5825986 ((_ is Union!15877) (regTwo!32266 (reg!16206 (regTwo!32267 r!7292))))) b!5827378))

(declare-fun b!5827379 () Bool)

(declare-fun e!3575750 () Bool)

(assert (=> b!5827379 (= e!3575750 tp_is_empty!41007)))

(declare-fun b!5827380 () Bool)

(declare-fun tp!1609353 () Bool)

(declare-fun tp!1609355 () Bool)

(assert (=> b!5827380 (= e!3575750 (and tp!1609353 tp!1609355))))

(assert (=> b!5825938 (= tp!1608402 e!3575750)))

(declare-fun b!5827382 () Bool)

(declare-fun tp!1609356 () Bool)

(declare-fun tp!1609354 () Bool)

(assert (=> b!5827382 (= e!3575750 (and tp!1609356 tp!1609354))))

(declare-fun b!5827381 () Bool)

(declare-fun tp!1609352 () Bool)

(assert (=> b!5827381 (= e!3575750 tp!1609352)))

(assert (= (and b!5825938 ((_ is ElementMatch!15877) (reg!16206 (regOne!32266 (regOne!32266 r!7292))))) b!5827379))

(assert (= (and b!5825938 ((_ is Concat!24722) (reg!16206 (regOne!32266 (regOne!32266 r!7292))))) b!5827380))

(assert (= (and b!5825938 ((_ is Star!15877) (reg!16206 (regOne!32266 (regOne!32266 r!7292))))) b!5827381))

(assert (= (and b!5825938 ((_ is Union!15877) (reg!16206 (regOne!32266 (regOne!32266 r!7292))))) b!5827382))

(declare-fun b!5827383 () Bool)

(declare-fun e!3575751 () Bool)

(assert (=> b!5827383 (= e!3575751 tp_is_empty!41007)))

(declare-fun b!5827384 () Bool)

(declare-fun tp!1609358 () Bool)

(declare-fun tp!1609360 () Bool)

(assert (=> b!5827384 (= e!3575751 (and tp!1609358 tp!1609360))))

(assert (=> b!5825972 (= tp!1608448 e!3575751)))

(declare-fun b!5827386 () Bool)

(declare-fun tp!1609361 () Bool)

(declare-fun tp!1609359 () Bool)

(assert (=> b!5827386 (= e!3575751 (and tp!1609361 tp!1609359))))

(declare-fun b!5827385 () Bool)

(declare-fun tp!1609357 () Bool)

(assert (=> b!5827385 (= e!3575751 tp!1609357)))

(assert (= (and b!5825972 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32267 (reg!16206 r!7292))))) b!5827383))

(assert (= (and b!5825972 ((_ is Concat!24722) (regOne!32267 (regOne!32267 (reg!16206 r!7292))))) b!5827384))

(assert (= (and b!5825972 ((_ is Star!15877) (regOne!32267 (regOne!32267 (reg!16206 r!7292))))) b!5827385))

(assert (= (and b!5825972 ((_ is Union!15877) (regOne!32267 (regOne!32267 (reg!16206 r!7292))))) b!5827386))

(declare-fun b!5827387 () Bool)

(declare-fun e!3575752 () Bool)

(assert (=> b!5827387 (= e!3575752 tp_is_empty!41007)))

(declare-fun b!5827388 () Bool)

(declare-fun tp!1609363 () Bool)

(declare-fun tp!1609365 () Bool)

(assert (=> b!5827388 (= e!3575752 (and tp!1609363 tp!1609365))))

(assert (=> b!5825972 (= tp!1608446 e!3575752)))

(declare-fun b!5827390 () Bool)

(declare-fun tp!1609366 () Bool)

(declare-fun tp!1609364 () Bool)

(assert (=> b!5827390 (= e!3575752 (and tp!1609366 tp!1609364))))

(declare-fun b!5827389 () Bool)

(declare-fun tp!1609362 () Bool)

(assert (=> b!5827389 (= e!3575752 tp!1609362)))

(assert (= (and b!5825972 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32267 (reg!16206 r!7292))))) b!5827387))

(assert (= (and b!5825972 ((_ is Concat!24722) (regTwo!32267 (regOne!32267 (reg!16206 r!7292))))) b!5827388))

(assert (= (and b!5825972 ((_ is Star!15877) (regTwo!32267 (regOne!32267 (reg!16206 r!7292))))) b!5827389))

(assert (= (and b!5825972 ((_ is Union!15877) (regTwo!32267 (regOne!32267 (reg!16206 r!7292))))) b!5827390))

(declare-fun b!5827391 () Bool)

(declare-fun e!3575753 () Bool)

(assert (=> b!5827391 (= e!3575753 tp_is_empty!41007)))

(declare-fun b!5827392 () Bool)

(declare-fun tp!1609368 () Bool)

(declare-fun tp!1609370 () Bool)

(assert (=> b!5827392 (= e!3575753 (and tp!1609368 tp!1609370))))

(assert (=> b!5825963 (= tp!1608437 e!3575753)))

(declare-fun b!5827394 () Bool)

(declare-fun tp!1609371 () Bool)

(declare-fun tp!1609369 () Bool)

(assert (=> b!5827394 (= e!3575753 (and tp!1609371 tp!1609369))))

(declare-fun b!5827393 () Bool)

(declare-fun tp!1609367 () Bool)

(assert (=> b!5827393 (= e!3575753 tp!1609367)))

(assert (= (and b!5825963 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827391))

(assert (= (and b!5825963 ((_ is Concat!24722) (regOne!32266 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827392))

(assert (= (and b!5825963 ((_ is Star!15877) (regOne!32266 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827393))

(assert (= (and b!5825963 ((_ is Union!15877) (regOne!32266 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827394))

(declare-fun b!5827395 () Bool)

(declare-fun e!3575754 () Bool)

(assert (=> b!5827395 (= e!3575754 tp_is_empty!41007)))

(declare-fun b!5827396 () Bool)

(declare-fun tp!1609373 () Bool)

(declare-fun tp!1609375 () Bool)

(assert (=> b!5827396 (= e!3575754 (and tp!1609373 tp!1609375))))

(assert (=> b!5825963 (= tp!1608439 e!3575754)))

(declare-fun b!5827398 () Bool)

(declare-fun tp!1609376 () Bool)

(declare-fun tp!1609374 () Bool)

(assert (=> b!5827398 (= e!3575754 (and tp!1609376 tp!1609374))))

(declare-fun b!5827397 () Bool)

(declare-fun tp!1609372 () Bool)

(assert (=> b!5827397 (= e!3575754 tp!1609372)))

(assert (= (and b!5825963 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827395))

(assert (= (and b!5825963 ((_ is Concat!24722) (regTwo!32266 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827396))

(assert (= (and b!5825963 ((_ is Star!15877) (regTwo!32266 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827397))

(assert (= (and b!5825963 ((_ is Union!15877) (regTwo!32266 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827398))

(declare-fun b!5827399 () Bool)

(declare-fun e!3575755 () Bool)

(assert (=> b!5827399 (= e!3575755 tp_is_empty!41007)))

(declare-fun b!5827400 () Bool)

(declare-fun tp!1609378 () Bool)

(declare-fun tp!1609380 () Bool)

(assert (=> b!5827400 (= e!3575755 (and tp!1609378 tp!1609380))))

(assert (=> b!5825918 (= tp!1608377 e!3575755)))

(declare-fun b!5827402 () Bool)

(declare-fun tp!1609381 () Bool)

(declare-fun tp!1609379 () Bool)

(assert (=> b!5827402 (= e!3575755 (and tp!1609381 tp!1609379))))

(declare-fun b!5827401 () Bool)

(declare-fun tp!1609377 () Bool)

(assert (=> b!5827401 (= e!3575755 tp!1609377)))

(assert (= (and b!5825918 ((_ is ElementMatch!15877) (regOne!32266 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827399))

(assert (= (and b!5825918 ((_ is Concat!24722) (regOne!32266 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827400))

(assert (= (and b!5825918 ((_ is Star!15877) (regOne!32266 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827401))

(assert (= (and b!5825918 ((_ is Union!15877) (regOne!32266 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827402))

(declare-fun b!5827403 () Bool)

(declare-fun e!3575756 () Bool)

(assert (=> b!5827403 (= e!3575756 tp_is_empty!41007)))

(declare-fun b!5827404 () Bool)

(declare-fun tp!1609383 () Bool)

(declare-fun tp!1609385 () Bool)

(assert (=> b!5827404 (= e!3575756 (and tp!1609383 tp!1609385))))

(assert (=> b!5825918 (= tp!1608379 e!3575756)))

(declare-fun b!5827406 () Bool)

(declare-fun tp!1609386 () Bool)

(declare-fun tp!1609384 () Bool)

(assert (=> b!5827406 (= e!3575756 (and tp!1609386 tp!1609384))))

(declare-fun b!5827405 () Bool)

(declare-fun tp!1609382 () Bool)

(assert (=> b!5827405 (= e!3575756 tp!1609382)))

(assert (= (and b!5825918 ((_ is ElementMatch!15877) (regTwo!32266 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827403))

(assert (= (and b!5825918 ((_ is Concat!24722) (regTwo!32266 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827404))

(assert (= (and b!5825918 ((_ is Star!15877) (regTwo!32266 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827405))

(assert (= (and b!5825918 ((_ is Union!15877) (regTwo!32266 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827406))

(declare-fun b!5827407 () Bool)

(declare-fun e!3575757 () Bool)

(assert (=> b!5827407 (= e!3575757 tp_is_empty!41007)))

(declare-fun b!5827408 () Bool)

(declare-fun tp!1609388 () Bool)

(declare-fun tp!1609390 () Bool)

(assert (=> b!5827408 (= e!3575757 (and tp!1609388 tp!1609390))))

(assert (=> b!5825979 (= tp!1608454 e!3575757)))

(declare-fun b!5827410 () Bool)

(declare-fun tp!1609391 () Bool)

(declare-fun tp!1609389 () Bool)

(assert (=> b!5827410 (= e!3575757 (and tp!1609391 tp!1609389))))

(declare-fun b!5827409 () Bool)

(declare-fun tp!1609387 () Bool)

(assert (=> b!5827409 (= e!3575757 tp!1609387)))

(assert (= (and b!5825979 ((_ is ElementMatch!15877) (reg!16206 (regOne!32267 (regTwo!32266 r!7292))))) b!5827407))

(assert (= (and b!5825979 ((_ is Concat!24722) (reg!16206 (regOne!32267 (regTwo!32266 r!7292))))) b!5827408))

(assert (= (and b!5825979 ((_ is Star!15877) (reg!16206 (regOne!32267 (regTwo!32266 r!7292))))) b!5827409))

(assert (= (and b!5825979 ((_ is Union!15877) (reg!16206 (regOne!32267 (regTwo!32266 r!7292))))) b!5827410))

(declare-fun b!5827411 () Bool)

(declare-fun e!3575758 () Bool)

(assert (=> b!5827411 (= e!3575758 tp_is_empty!41007)))

(declare-fun b!5827412 () Bool)

(declare-fun tp!1609393 () Bool)

(declare-fun tp!1609395 () Bool)

(assert (=> b!5827412 (= e!3575758 (and tp!1609393 tp!1609395))))

(assert (=> b!5825970 (= tp!1608445 e!3575758)))

(declare-fun b!5827414 () Bool)

(declare-fun tp!1609396 () Bool)

(declare-fun tp!1609394 () Bool)

(assert (=> b!5827414 (= e!3575758 (and tp!1609396 tp!1609394))))

(declare-fun b!5827413 () Bool)

(declare-fun tp!1609392 () Bool)

(assert (=> b!5827413 (= e!3575758 tp!1609392)))

(assert (= (and b!5825970 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32267 (reg!16206 r!7292))))) b!5827411))

(assert (= (and b!5825970 ((_ is Concat!24722) (regOne!32266 (regOne!32267 (reg!16206 r!7292))))) b!5827412))

(assert (= (and b!5825970 ((_ is Star!15877) (regOne!32266 (regOne!32267 (reg!16206 r!7292))))) b!5827413))

(assert (= (and b!5825970 ((_ is Union!15877) (regOne!32266 (regOne!32267 (reg!16206 r!7292))))) b!5827414))

(declare-fun b!5827415 () Bool)

(declare-fun e!3575759 () Bool)

(assert (=> b!5827415 (= e!3575759 tp_is_empty!41007)))

(declare-fun b!5827416 () Bool)

(declare-fun tp!1609398 () Bool)

(declare-fun tp!1609400 () Bool)

(assert (=> b!5827416 (= e!3575759 (and tp!1609398 tp!1609400))))

(assert (=> b!5825970 (= tp!1608447 e!3575759)))

(declare-fun b!5827418 () Bool)

(declare-fun tp!1609401 () Bool)

(declare-fun tp!1609399 () Bool)

(assert (=> b!5827418 (= e!3575759 (and tp!1609401 tp!1609399))))

(declare-fun b!5827417 () Bool)

(declare-fun tp!1609397 () Bool)

(assert (=> b!5827417 (= e!3575759 tp!1609397)))

(assert (= (and b!5825970 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32267 (reg!16206 r!7292))))) b!5827415))

(assert (= (and b!5825970 ((_ is Concat!24722) (regTwo!32266 (regOne!32267 (reg!16206 r!7292))))) b!5827416))

(assert (= (and b!5825970 ((_ is Star!15877) (regTwo!32266 (regOne!32267 (reg!16206 r!7292))))) b!5827417))

(assert (= (and b!5825970 ((_ is Union!15877) (regTwo!32266 (regOne!32267 (reg!16206 r!7292))))) b!5827418))

(declare-fun b!5827419 () Bool)

(declare-fun e!3575760 () Bool)

(assert (=> b!5827419 (= e!3575760 tp_is_empty!41007)))

(declare-fun b!5827420 () Bool)

(declare-fun tp!1609403 () Bool)

(declare-fun tp!1609405 () Bool)

(assert (=> b!5827420 (= e!3575760 (and tp!1609403 tp!1609405))))

(assert (=> b!5826015 (= tp!1608499 e!3575760)))

(declare-fun b!5827422 () Bool)

(declare-fun tp!1609406 () Bool)

(declare-fun tp!1609404 () Bool)

(assert (=> b!5827422 (= e!3575760 (and tp!1609406 tp!1609404))))

(declare-fun b!5827421 () Bool)

(declare-fun tp!1609402 () Bool)

(assert (=> b!5827421 (= e!3575760 tp!1609402)))

(assert (= (and b!5826015 ((_ is ElementMatch!15877) (reg!16206 (reg!16206 (reg!16206 r!7292))))) b!5827419))

(assert (= (and b!5826015 ((_ is Concat!24722) (reg!16206 (reg!16206 (reg!16206 r!7292))))) b!5827420))

(assert (= (and b!5826015 ((_ is Star!15877) (reg!16206 (reg!16206 (reg!16206 r!7292))))) b!5827421))

(assert (= (and b!5826015 ((_ is Union!15877) (reg!16206 (reg!16206 (reg!16206 r!7292))))) b!5827422))

(declare-fun b!5827423 () Bool)

(declare-fun e!3575761 () Bool)

(assert (=> b!5827423 (= e!3575761 tp_is_empty!41007)))

(declare-fun b!5827424 () Bool)

(declare-fun tp!1609408 () Bool)

(declare-fun tp!1609410 () Bool)

(assert (=> b!5827424 (= e!3575761 (and tp!1609408 tp!1609410))))

(assert (=> b!5826006 (= tp!1608490 e!3575761)))

(declare-fun b!5827426 () Bool)

(declare-fun tp!1609411 () Bool)

(declare-fun tp!1609409 () Bool)

(assert (=> b!5827426 (= e!3575761 (and tp!1609411 tp!1609409))))

(declare-fun b!5827425 () Bool)

(declare-fun tp!1609407 () Bool)

(assert (=> b!5827425 (= e!3575761 tp!1609407)))

(assert (= (and b!5826006 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32267 (regTwo!32267 r!7292))))) b!5827423))

(assert (= (and b!5826006 ((_ is Concat!24722) (regOne!32266 (regOne!32267 (regTwo!32267 r!7292))))) b!5827424))

(assert (= (and b!5826006 ((_ is Star!15877) (regOne!32266 (regOne!32267 (regTwo!32267 r!7292))))) b!5827425))

(assert (= (and b!5826006 ((_ is Union!15877) (regOne!32266 (regOne!32267 (regTwo!32267 r!7292))))) b!5827426))

(declare-fun b!5827427 () Bool)

(declare-fun e!3575762 () Bool)

(assert (=> b!5827427 (= e!3575762 tp_is_empty!41007)))

(declare-fun b!5827428 () Bool)

(declare-fun tp!1609413 () Bool)

(declare-fun tp!1609415 () Bool)

(assert (=> b!5827428 (= e!3575762 (and tp!1609413 tp!1609415))))

(assert (=> b!5826006 (= tp!1608492 e!3575762)))

(declare-fun b!5827430 () Bool)

(declare-fun tp!1609416 () Bool)

(declare-fun tp!1609414 () Bool)

(assert (=> b!5827430 (= e!3575762 (and tp!1609416 tp!1609414))))

(declare-fun b!5827429 () Bool)

(declare-fun tp!1609412 () Bool)

(assert (=> b!5827429 (= e!3575762 tp!1609412)))

(assert (= (and b!5826006 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))))) b!5827427))

(assert (= (and b!5826006 ((_ is Concat!24722) (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))))) b!5827428))

(assert (= (and b!5826006 ((_ is Star!15877) (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))))) b!5827429))

(assert (= (and b!5826006 ((_ is Union!15877) (regTwo!32266 (regOne!32267 (regTwo!32267 r!7292))))) b!5827430))

(declare-fun b!5827431 () Bool)

(declare-fun e!3575763 () Bool)

(assert (=> b!5827431 (= e!3575763 tp_is_empty!41007)))

(declare-fun b!5827432 () Bool)

(declare-fun tp!1609418 () Bool)

(declare-fun tp!1609420 () Bool)

(assert (=> b!5827432 (= e!3575763 (and tp!1609418 tp!1609420))))

(assert (=> b!5825932 (= tp!1608396 e!3575763)))

(declare-fun b!5827434 () Bool)

(declare-fun tp!1609421 () Bool)

(declare-fun tp!1609419 () Bool)

(assert (=> b!5827434 (= e!3575763 (and tp!1609421 tp!1609419))))

(declare-fun b!5827433 () Bool)

(declare-fun tp!1609417 () Bool)

(assert (=> b!5827433 (= e!3575763 tp!1609417)))

(assert (= (and b!5825932 ((_ is ElementMatch!15877) (regOne!32266 (reg!16206 (regOne!32267 r!7292))))) b!5827431))

(assert (= (and b!5825932 ((_ is Concat!24722) (regOne!32266 (reg!16206 (regOne!32267 r!7292))))) b!5827432))

(assert (= (and b!5825932 ((_ is Star!15877) (regOne!32266 (reg!16206 (regOne!32267 r!7292))))) b!5827433))

(assert (= (and b!5825932 ((_ is Union!15877) (regOne!32266 (reg!16206 (regOne!32267 r!7292))))) b!5827434))

(declare-fun b!5827435 () Bool)

(declare-fun e!3575764 () Bool)

(assert (=> b!5827435 (= e!3575764 tp_is_empty!41007)))

(declare-fun b!5827436 () Bool)

(declare-fun tp!1609423 () Bool)

(declare-fun tp!1609425 () Bool)

(assert (=> b!5827436 (= e!3575764 (and tp!1609423 tp!1609425))))

(assert (=> b!5825932 (= tp!1608398 e!3575764)))

(declare-fun b!5827438 () Bool)

(declare-fun tp!1609426 () Bool)

(declare-fun tp!1609424 () Bool)

(assert (=> b!5827438 (= e!3575764 (and tp!1609426 tp!1609424))))

(declare-fun b!5827437 () Bool)

(declare-fun tp!1609422 () Bool)

(assert (=> b!5827437 (= e!3575764 tp!1609422)))

(assert (= (and b!5825932 ((_ is ElementMatch!15877) (regTwo!32266 (reg!16206 (regOne!32267 r!7292))))) b!5827435))

(assert (= (and b!5825932 ((_ is Concat!24722) (regTwo!32266 (reg!16206 (regOne!32267 r!7292))))) b!5827436))

(assert (= (and b!5825932 ((_ is Star!15877) (regTwo!32266 (reg!16206 (regOne!32267 r!7292))))) b!5827437))

(assert (= (and b!5825932 ((_ is Union!15877) (regTwo!32266 (reg!16206 (regOne!32267 r!7292))))) b!5827438))

(declare-fun b!5827439 () Bool)

(declare-fun e!3575765 () Bool)

(assert (=> b!5827439 (= e!3575765 tp_is_empty!41007)))

(declare-fun b!5827440 () Bool)

(declare-fun tp!1609428 () Bool)

(declare-fun tp!1609430 () Bool)

(assert (=> b!5827440 (= e!3575765 (and tp!1609428 tp!1609430))))

(assert (=> b!5825928 (= tp!1608388 e!3575765)))

(declare-fun b!5827442 () Bool)

(declare-fun tp!1609431 () Bool)

(declare-fun tp!1609429 () Bool)

(assert (=> b!5827442 (= e!3575765 (and tp!1609431 tp!1609429))))

(declare-fun b!5827441 () Bool)

(declare-fun tp!1609427 () Bool)

(assert (=> b!5827441 (= e!3575765 tp!1609427)))

(assert (= (and b!5825928 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32266 (regOne!32267 r!7292))))) b!5827439))

(assert (= (and b!5825928 ((_ is Concat!24722) (reg!16206 (regTwo!32266 (regOne!32267 r!7292))))) b!5827440))

(assert (= (and b!5825928 ((_ is Star!15877) (reg!16206 (regTwo!32266 (regOne!32267 r!7292))))) b!5827441))

(assert (= (and b!5825928 ((_ is Union!15877) (reg!16206 (regTwo!32266 (regOne!32267 r!7292))))) b!5827442))

(declare-fun b!5827443 () Bool)

(declare-fun e!3575766 () Bool)

(assert (=> b!5827443 (= e!3575766 tp_is_empty!41007)))

(declare-fun b!5827444 () Bool)

(declare-fun tp!1609433 () Bool)

(declare-fun tp!1609435 () Bool)

(assert (=> b!5827444 (= e!3575766 (and tp!1609433 tp!1609435))))

(assert (=> b!5825965 (= tp!1608440 e!3575766)))

(declare-fun b!5827446 () Bool)

(declare-fun tp!1609436 () Bool)

(declare-fun tp!1609434 () Bool)

(assert (=> b!5827446 (= e!3575766 (and tp!1609436 tp!1609434))))

(declare-fun b!5827445 () Bool)

(declare-fun tp!1609432 () Bool)

(assert (=> b!5827445 (= e!3575766 tp!1609432)))

(assert (= (and b!5825965 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827443))

(assert (= (and b!5825965 ((_ is Concat!24722) (regOne!32267 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827444))

(assert (= (and b!5825965 ((_ is Star!15877) (regOne!32267 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827445))

(assert (= (and b!5825965 ((_ is Union!15877) (regOne!32267 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827446))

(declare-fun b!5827447 () Bool)

(declare-fun e!3575767 () Bool)

(assert (=> b!5827447 (= e!3575767 tp_is_empty!41007)))

(declare-fun b!5827448 () Bool)

(declare-fun tp!1609438 () Bool)

(declare-fun tp!1609440 () Bool)

(assert (=> b!5827448 (= e!3575767 (and tp!1609438 tp!1609440))))

(assert (=> b!5825965 (= tp!1608438 e!3575767)))

(declare-fun b!5827450 () Bool)

(declare-fun tp!1609441 () Bool)

(declare-fun tp!1609439 () Bool)

(assert (=> b!5827450 (= e!3575767 (and tp!1609441 tp!1609439))))

(declare-fun b!5827449 () Bool)

(declare-fun tp!1609437 () Bool)

(assert (=> b!5827449 (= e!3575767 tp!1609437)))

(assert (= (and b!5825965 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827447))

(assert (= (and b!5825965 ((_ is Concat!24722) (regTwo!32267 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827448))

(assert (= (and b!5825965 ((_ is Star!15877) (regTwo!32267 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827449))

(assert (= (and b!5825965 ((_ is Union!15877) (regTwo!32267 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827450))

(declare-fun b!5827451 () Bool)

(declare-fun e!3575768 () Bool)

(assert (=> b!5827451 (= e!3575768 tp_is_empty!41007)))

(declare-fun b!5827452 () Bool)

(declare-fun tp!1609443 () Bool)

(declare-fun tp!1609445 () Bool)

(assert (=> b!5827452 (= e!3575768 (and tp!1609443 tp!1609445))))

(assert (=> b!5825920 (= tp!1608380 e!3575768)))

(declare-fun b!5827454 () Bool)

(declare-fun tp!1609446 () Bool)

(declare-fun tp!1609444 () Bool)

(assert (=> b!5827454 (= e!3575768 (and tp!1609446 tp!1609444))))

(declare-fun b!5827453 () Bool)

(declare-fun tp!1609442 () Bool)

(assert (=> b!5827453 (= e!3575768 tp!1609442)))

(assert (= (and b!5825920 ((_ is ElementMatch!15877) (regOne!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827451))

(assert (= (and b!5825920 ((_ is Concat!24722) (regOne!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827452))

(assert (= (and b!5825920 ((_ is Star!15877) (regOne!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827453))

(assert (= (and b!5825920 ((_ is Union!15877) (regOne!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827454))

(declare-fun b!5827455 () Bool)

(declare-fun e!3575769 () Bool)

(assert (=> b!5827455 (= e!3575769 tp_is_empty!41007)))

(declare-fun b!5827456 () Bool)

(declare-fun tp!1609448 () Bool)

(declare-fun tp!1609450 () Bool)

(assert (=> b!5827456 (= e!3575769 (and tp!1609448 tp!1609450))))

(assert (=> b!5825920 (= tp!1608378 e!3575769)))

(declare-fun b!5827458 () Bool)

(declare-fun tp!1609451 () Bool)

(declare-fun tp!1609449 () Bool)

(assert (=> b!5827458 (= e!3575769 (and tp!1609451 tp!1609449))))

(declare-fun b!5827457 () Bool)

(declare-fun tp!1609447 () Bool)

(assert (=> b!5827457 (= e!3575769 tp!1609447)))

(assert (= (and b!5825920 ((_ is ElementMatch!15877) (regTwo!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827455))

(assert (= (and b!5825920 ((_ is Concat!24722) (regTwo!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827456))

(assert (= (and b!5825920 ((_ is Star!15877) (regTwo!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827457))

(assert (= (and b!5825920 ((_ is Union!15877) (regTwo!32267 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827458))

(declare-fun b!5827459 () Bool)

(declare-fun e!3575770 () Bool)

(assert (=> b!5827459 (= e!3575770 tp_is_empty!41007)))

(declare-fun b!5827460 () Bool)

(declare-fun tp!1609453 () Bool)

(declare-fun tp!1609455 () Bool)

(assert (=> b!5827460 (= e!3575770 (and tp!1609453 tp!1609455))))

(assert (=> b!5825911 (= tp!1608366 e!3575770)))

(declare-fun b!5827462 () Bool)

(declare-fun tp!1609456 () Bool)

(declare-fun tp!1609454 () Bool)

(assert (=> b!5827462 (= e!3575770 (and tp!1609456 tp!1609454))))

(declare-fun b!5827461 () Bool)

(declare-fun tp!1609452 () Bool)

(assert (=> b!5827461 (= e!3575770 tp!1609452)))

(assert (= (and b!5825911 ((_ is ElementMatch!15877) (reg!16206 (regOne!32267 (regOne!32266 r!7292))))) b!5827459))

(assert (= (and b!5825911 ((_ is Concat!24722) (reg!16206 (regOne!32267 (regOne!32266 r!7292))))) b!5827460))

(assert (= (and b!5825911 ((_ is Star!15877) (reg!16206 (regOne!32267 (regOne!32266 r!7292))))) b!5827461))

(assert (= (and b!5825911 ((_ is Union!15877) (reg!16206 (regOne!32267 (regOne!32266 r!7292))))) b!5827462))

(declare-fun b!5827463 () Bool)

(declare-fun e!3575771 () Bool)

(assert (=> b!5827463 (= e!3575771 tp_is_empty!41007)))

(declare-fun b!5827464 () Bool)

(declare-fun tp!1609458 () Bool)

(declare-fun tp!1609460 () Bool)

(assert (=> b!5827464 (= e!3575771 (and tp!1609458 tp!1609460))))

(assert (=> b!5825999 (= tp!1608479 e!3575771)))

(declare-fun b!5827466 () Bool)

(declare-fun tp!1609461 () Bool)

(declare-fun tp!1609459 () Bool)

(assert (=> b!5827466 (= e!3575771 (and tp!1609461 tp!1609459))))

(declare-fun b!5827465 () Bool)

(declare-fun tp!1609457 () Bool)

(assert (=> b!5827465 (= e!3575771 tp!1609457)))

(assert (= (and b!5825999 ((_ is ElementMatch!15877) (reg!16206 (regOne!32266 (regTwo!32266 r!7292))))) b!5827463))

(assert (= (and b!5825999 ((_ is Concat!24722) (reg!16206 (regOne!32266 (regTwo!32266 r!7292))))) b!5827464))

(assert (= (and b!5825999 ((_ is Star!15877) (reg!16206 (regOne!32266 (regTwo!32266 r!7292))))) b!5827465))

(assert (= (and b!5825999 ((_ is Union!15877) (reg!16206 (regOne!32266 (regTwo!32266 r!7292))))) b!5827466))

(declare-fun b!5827467 () Bool)

(declare-fun e!3575772 () Bool)

(assert (=> b!5827467 (= e!3575772 tp_is_empty!41007)))

(declare-fun b!5827468 () Bool)

(declare-fun tp!1609463 () Bool)

(declare-fun tp!1609465 () Bool)

(assert (=> b!5827468 (= e!3575772 (and tp!1609463 tp!1609465))))

(assert (=> b!5825951 (= tp!1608421 e!3575772)))

(declare-fun b!5827470 () Bool)

(declare-fun tp!1609466 () Bool)

(declare-fun tp!1609464 () Bool)

(assert (=> b!5827470 (= e!3575772 (and tp!1609466 tp!1609464))))

(declare-fun b!5827469 () Bool)

(declare-fun tp!1609462 () Bool)

(assert (=> b!5827469 (= e!3575772 tp!1609462)))

(assert (= (and b!5825951 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32267 (regOne!32267 r!7292))))) b!5827467))

(assert (= (and b!5825951 ((_ is Concat!24722) (regOne!32267 (regTwo!32267 (regOne!32267 r!7292))))) b!5827468))

(assert (= (and b!5825951 ((_ is Star!15877) (regOne!32267 (regTwo!32267 (regOne!32267 r!7292))))) b!5827469))

(assert (= (and b!5825951 ((_ is Union!15877) (regOne!32267 (regTwo!32267 (regOne!32267 r!7292))))) b!5827470))

(declare-fun b!5827471 () Bool)

(declare-fun e!3575773 () Bool)

(assert (=> b!5827471 (= e!3575773 tp_is_empty!41007)))

(declare-fun b!5827472 () Bool)

(declare-fun tp!1609468 () Bool)

(declare-fun tp!1609470 () Bool)

(assert (=> b!5827472 (= e!3575773 (and tp!1609468 tp!1609470))))

(assert (=> b!5825951 (= tp!1608419 e!3575773)))

(declare-fun b!5827474 () Bool)

(declare-fun tp!1609471 () Bool)

(declare-fun tp!1609469 () Bool)

(assert (=> b!5827474 (= e!3575773 (and tp!1609471 tp!1609469))))

(declare-fun b!5827473 () Bool)

(declare-fun tp!1609467 () Bool)

(assert (=> b!5827473 (= e!3575773 tp!1609467)))

(assert (= (and b!5825951 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32267 (regOne!32267 r!7292))))) b!5827471))

(assert (= (and b!5825951 ((_ is Concat!24722) (regTwo!32267 (regTwo!32267 (regOne!32267 r!7292))))) b!5827472))

(assert (= (and b!5825951 ((_ is Star!15877) (regTwo!32267 (regTwo!32267 (regOne!32267 r!7292))))) b!5827473))

(assert (= (and b!5825951 ((_ is Union!15877) (regTwo!32267 (regTwo!32267 (regOne!32267 r!7292))))) b!5827474))

(declare-fun b!5827475 () Bool)

(declare-fun e!3575774 () Bool)

(assert (=> b!5827475 (= e!3575774 tp_is_empty!41007)))

(declare-fun b!5827476 () Bool)

(declare-fun tp!1609473 () Bool)

(declare-fun tp!1609475 () Bool)

(assert (=> b!5827476 (= e!3575774 (and tp!1609473 tp!1609475))))

(assert (=> b!5825990 (= tp!1608470 e!3575774)))

(declare-fun b!5827478 () Bool)

(declare-fun tp!1609476 () Bool)

(declare-fun tp!1609474 () Bool)

(assert (=> b!5827478 (= e!3575774 (and tp!1609476 tp!1609474))))

(declare-fun b!5827477 () Bool)

(declare-fun tp!1609472 () Bool)

(assert (=> b!5827477 (= e!3575774 tp!1609472)))

(assert (= (and b!5825990 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32266 (reg!16206 r!7292))))) b!5827475))

(assert (= (and b!5825990 ((_ is Concat!24722) (regOne!32266 (regOne!32266 (reg!16206 r!7292))))) b!5827476))

(assert (= (and b!5825990 ((_ is Star!15877) (regOne!32266 (regOne!32266 (reg!16206 r!7292))))) b!5827477))

(assert (= (and b!5825990 ((_ is Union!15877) (regOne!32266 (regOne!32266 (reg!16206 r!7292))))) b!5827478))

(declare-fun b!5827479 () Bool)

(declare-fun e!3575775 () Bool)

(assert (=> b!5827479 (= e!3575775 tp_is_empty!41007)))

(declare-fun b!5827480 () Bool)

(declare-fun tp!1609478 () Bool)

(declare-fun tp!1609480 () Bool)

(assert (=> b!5827480 (= e!3575775 (and tp!1609478 tp!1609480))))

(assert (=> b!5825990 (= tp!1608472 e!3575775)))

(declare-fun b!5827482 () Bool)

(declare-fun tp!1609481 () Bool)

(declare-fun tp!1609479 () Bool)

(assert (=> b!5827482 (= e!3575775 (and tp!1609481 tp!1609479))))

(declare-fun b!5827481 () Bool)

(declare-fun tp!1609477 () Bool)

(assert (=> b!5827481 (= e!3575775 tp!1609477)))

(assert (= (and b!5825990 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32266 (reg!16206 r!7292))))) b!5827479))

(assert (= (and b!5825990 ((_ is Concat!24722) (regTwo!32266 (regOne!32266 (reg!16206 r!7292))))) b!5827480))

(assert (= (and b!5825990 ((_ is Star!15877) (regTwo!32266 (regOne!32266 (reg!16206 r!7292))))) b!5827481))

(assert (= (and b!5825990 ((_ is Union!15877) (regTwo!32266 (regOne!32266 (reg!16206 r!7292))))) b!5827482))

(declare-fun b!5827483 () Bool)

(declare-fun e!3575776 () Bool)

(assert (=> b!5827483 (= e!3575776 tp_is_empty!41007)))

(declare-fun b!5827484 () Bool)

(declare-fun tp!1609483 () Bool)

(declare-fun tp!1609485 () Bool)

(assert (=> b!5827484 (= e!3575776 (and tp!1609483 tp!1609485))))

(assert (=> b!5825942 (= tp!1608407 e!3575776)))

(declare-fun b!5827486 () Bool)

(declare-fun tp!1609486 () Bool)

(declare-fun tp!1609484 () Bool)

(assert (=> b!5827486 (= e!3575776 (and tp!1609486 tp!1609484))))

(declare-fun b!5827485 () Bool)

(declare-fun tp!1609482 () Bool)

(assert (=> b!5827485 (= e!3575776 tp!1609482)))

(assert (= (and b!5825942 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32266 (regOne!32266 r!7292))))) b!5827483))

(assert (= (and b!5825942 ((_ is Concat!24722) (reg!16206 (regTwo!32266 (regOne!32266 r!7292))))) b!5827484))

(assert (= (and b!5825942 ((_ is Star!15877) (reg!16206 (regTwo!32266 (regOne!32266 r!7292))))) b!5827485))

(assert (= (and b!5825942 ((_ is Union!15877) (reg!16206 (regTwo!32266 (regOne!32266 r!7292))))) b!5827486))

(declare-fun b!5827487 () Bool)

(declare-fun e!3575777 () Bool)

(assert (=> b!5827487 (= e!3575777 tp_is_empty!41007)))

(declare-fun b!5827488 () Bool)

(declare-fun tp!1609488 () Bool)

(declare-fun tp!1609490 () Bool)

(assert (=> b!5827488 (= e!3575777 (and tp!1609488 tp!1609490))))

(assert (=> b!5825921 (= tp!1608381 e!3575777)))

(declare-fun b!5827490 () Bool)

(declare-fun tp!1609491 () Bool)

(declare-fun tp!1609489 () Bool)

(assert (=> b!5827490 (= e!3575777 (and tp!1609491 tp!1609489))))

(declare-fun b!5827489 () Bool)

(declare-fun tp!1609487 () Bool)

(assert (=> b!5827489 (= e!3575777 tp!1609487)))

(assert (= (and b!5825921 ((_ is ElementMatch!15877) (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343)))))) b!5827487))

(assert (= (and b!5825921 ((_ is Concat!24722) (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343)))))) b!5827488))

(assert (= (and b!5825921 ((_ is Star!15877) (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343)))))) b!5827489))

(assert (= (and b!5825921 ((_ is Union!15877) (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343)))))) b!5827490))

(declare-fun b!5827491 () Bool)

(declare-fun e!3575778 () Bool)

(declare-fun tp!1609492 () Bool)

(declare-fun tp!1609493 () Bool)

(assert (=> b!5827491 (= e!3575778 (and tp!1609492 tp!1609493))))

(assert (=> b!5825921 (= tp!1608382 e!3575778)))

(assert (= (and b!5825921 ((_ is Cons!63806) (t!377285 (t!377285 (exprs!5761 (h!70255 zl!343)))))) b!5827491))

(declare-fun b!5827492 () Bool)

(declare-fun e!3575779 () Bool)

(assert (=> b!5827492 (= e!3575779 tp_is_empty!41007)))

(declare-fun b!5827493 () Bool)

(declare-fun tp!1609495 () Bool)

(declare-fun tp!1609497 () Bool)

(assert (=> b!5827493 (= e!3575779 (and tp!1609495 tp!1609497))))

(assert (=> b!5826008 (= tp!1608493 e!3575779)))

(declare-fun b!5827495 () Bool)

(declare-fun tp!1609498 () Bool)

(declare-fun tp!1609496 () Bool)

(assert (=> b!5827495 (= e!3575779 (and tp!1609498 tp!1609496))))

(declare-fun b!5827494 () Bool)

(declare-fun tp!1609494 () Bool)

(assert (=> b!5827494 (= e!3575779 tp!1609494)))

(assert (= (and b!5826008 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32267 (regTwo!32267 r!7292))))) b!5827492))

(assert (= (and b!5826008 ((_ is Concat!24722) (regOne!32267 (regOne!32267 (regTwo!32267 r!7292))))) b!5827493))

(assert (= (and b!5826008 ((_ is Star!15877) (regOne!32267 (regOne!32267 (regTwo!32267 r!7292))))) b!5827494))

(assert (= (and b!5826008 ((_ is Union!15877) (regOne!32267 (regOne!32267 (regTwo!32267 r!7292))))) b!5827495))

(declare-fun b!5827496 () Bool)

(declare-fun e!3575780 () Bool)

(assert (=> b!5827496 (= e!3575780 tp_is_empty!41007)))

(declare-fun b!5827497 () Bool)

(declare-fun tp!1609500 () Bool)

(declare-fun tp!1609502 () Bool)

(assert (=> b!5827497 (= e!3575780 (and tp!1609500 tp!1609502))))

(assert (=> b!5826008 (= tp!1608491 e!3575780)))

(declare-fun b!5827499 () Bool)

(declare-fun tp!1609503 () Bool)

(declare-fun tp!1609501 () Bool)

(assert (=> b!5827499 (= e!3575780 (and tp!1609503 tp!1609501))))

(declare-fun b!5827498 () Bool)

(declare-fun tp!1609499 () Bool)

(assert (=> b!5827498 (= e!3575780 tp!1609499)))

(assert (= (and b!5826008 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32267 (regTwo!32267 r!7292))))) b!5827496))

(assert (= (and b!5826008 ((_ is Concat!24722) (regTwo!32267 (regOne!32267 (regTwo!32267 r!7292))))) b!5827497))

(assert (= (and b!5826008 ((_ is Star!15877) (regTwo!32267 (regOne!32267 (regTwo!32267 r!7292))))) b!5827498))

(assert (= (and b!5826008 ((_ is Union!15877) (regTwo!32267 (regOne!32267 (regTwo!32267 r!7292))))) b!5827499))

(declare-fun b!5827500 () Bool)

(declare-fun e!3575781 () Bool)

(assert (=> b!5827500 (= e!3575781 tp_is_empty!41007)))

(declare-fun b!5827501 () Bool)

(declare-fun tp!1609505 () Bool)

(declare-fun tp!1609507 () Bool)

(assert (=> b!5827501 (= e!3575781 (and tp!1609505 tp!1609507))))

(assert (=> b!5825934 (= tp!1608399 e!3575781)))

(declare-fun b!5827503 () Bool)

(declare-fun tp!1609508 () Bool)

(declare-fun tp!1609506 () Bool)

(assert (=> b!5827503 (= e!3575781 (and tp!1609508 tp!1609506))))

(declare-fun b!5827502 () Bool)

(declare-fun tp!1609504 () Bool)

(assert (=> b!5827502 (= e!3575781 tp!1609504)))

(assert (= (and b!5825934 ((_ is ElementMatch!15877) (regOne!32267 (reg!16206 (regOne!32267 r!7292))))) b!5827500))

(assert (= (and b!5825934 ((_ is Concat!24722) (regOne!32267 (reg!16206 (regOne!32267 r!7292))))) b!5827501))

(assert (= (and b!5825934 ((_ is Star!15877) (regOne!32267 (reg!16206 (regOne!32267 r!7292))))) b!5827502))

(assert (= (and b!5825934 ((_ is Union!15877) (regOne!32267 (reg!16206 (regOne!32267 r!7292))))) b!5827503))

(declare-fun b!5827504 () Bool)

(declare-fun e!3575782 () Bool)

(assert (=> b!5827504 (= e!3575782 tp_is_empty!41007)))

(declare-fun b!5827505 () Bool)

(declare-fun tp!1609510 () Bool)

(declare-fun tp!1609512 () Bool)

(assert (=> b!5827505 (= e!3575782 (and tp!1609510 tp!1609512))))

(assert (=> b!5825934 (= tp!1608397 e!3575782)))

(declare-fun b!5827507 () Bool)

(declare-fun tp!1609513 () Bool)

(declare-fun tp!1609511 () Bool)

(assert (=> b!5827507 (= e!3575782 (and tp!1609513 tp!1609511))))

(declare-fun b!5827506 () Bool)

(declare-fun tp!1609509 () Bool)

(assert (=> b!5827506 (= e!3575782 tp!1609509)))

(assert (= (and b!5825934 ((_ is ElementMatch!15877) (regTwo!32267 (reg!16206 (regOne!32267 r!7292))))) b!5827504))

(assert (= (and b!5825934 ((_ is Concat!24722) (regTwo!32267 (reg!16206 (regOne!32267 r!7292))))) b!5827505))

(assert (= (and b!5825934 ((_ is Star!15877) (regTwo!32267 (reg!16206 (regOne!32267 r!7292))))) b!5827506))

(assert (= (and b!5825934 ((_ is Union!15877) (regTwo!32267 (reg!16206 (regOne!32267 r!7292))))) b!5827507))

(declare-fun b!5827508 () Bool)

(declare-fun e!3575783 () Bool)

(assert (=> b!5827508 (= e!3575783 tp_is_empty!41007)))

(declare-fun b!5827509 () Bool)

(declare-fun tp!1609515 () Bool)

(declare-fun tp!1609517 () Bool)

(assert (=> b!5827509 (= e!3575783 (and tp!1609515 tp!1609517))))

(assert (=> b!5825949 (= tp!1608418 e!3575783)))

(declare-fun b!5827511 () Bool)

(declare-fun tp!1609518 () Bool)

(declare-fun tp!1609516 () Bool)

(assert (=> b!5827511 (= e!3575783 (and tp!1609518 tp!1609516))))

(declare-fun b!5827510 () Bool)

(declare-fun tp!1609514 () Bool)

(assert (=> b!5827510 (= e!3575783 tp!1609514)))

(assert (= (and b!5825949 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32267 (regOne!32267 r!7292))))) b!5827508))

(assert (= (and b!5825949 ((_ is Concat!24722) (regOne!32266 (regTwo!32267 (regOne!32267 r!7292))))) b!5827509))

(assert (= (and b!5825949 ((_ is Star!15877) (regOne!32266 (regTwo!32267 (regOne!32267 r!7292))))) b!5827510))

(assert (= (and b!5825949 ((_ is Union!15877) (regOne!32266 (regTwo!32267 (regOne!32267 r!7292))))) b!5827511))

(declare-fun b!5827512 () Bool)

(declare-fun e!3575784 () Bool)

(assert (=> b!5827512 (= e!3575784 tp_is_empty!41007)))

(declare-fun b!5827513 () Bool)

(declare-fun tp!1609520 () Bool)

(declare-fun tp!1609522 () Bool)

(assert (=> b!5827513 (= e!3575784 (and tp!1609520 tp!1609522))))

(assert (=> b!5825949 (= tp!1608420 e!3575784)))

(declare-fun b!5827515 () Bool)

(declare-fun tp!1609523 () Bool)

(declare-fun tp!1609521 () Bool)

(assert (=> b!5827515 (= e!3575784 (and tp!1609523 tp!1609521))))

(declare-fun b!5827514 () Bool)

(declare-fun tp!1609519 () Bool)

(assert (=> b!5827514 (= e!3575784 tp!1609519)))

(assert (= (and b!5825949 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))))) b!5827512))

(assert (= (and b!5825949 ((_ is Concat!24722) (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))))) b!5827513))

(assert (= (and b!5825949 ((_ is Star!15877) (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))))) b!5827514))

(assert (= (and b!5825949 ((_ is Union!15877) (regTwo!32266 (regTwo!32267 (regOne!32267 r!7292))))) b!5827515))

(declare-fun b!5827516 () Bool)

(declare-fun e!3575785 () Bool)

(declare-fun tp!1609524 () Bool)

(declare-fun tp!1609525 () Bool)

(assert (=> b!5827516 (= e!3575785 (and tp!1609524 tp!1609525))))

(assert (=> b!5825844 (= tp!1608360 e!3575785)))

(assert (= (and b!5825844 ((_ is Cons!63806) (exprs!5761 (h!70255 res!2456090)))) b!5827516))

(declare-fun b!5827517 () Bool)

(declare-fun e!3575786 () Bool)

(assert (=> b!5827517 (= e!3575786 tp_is_empty!41007)))

(declare-fun b!5827518 () Bool)

(declare-fun tp!1609527 () Bool)

(declare-fun tp!1609529 () Bool)

(assert (=> b!5827518 (= e!3575786 (and tp!1609527 tp!1609529))))

(assert (=> b!5825983 (= tp!1608459 e!3575786)))

(declare-fun b!5827520 () Bool)

(declare-fun tp!1609530 () Bool)

(declare-fun tp!1609528 () Bool)

(assert (=> b!5827520 (= e!3575786 (and tp!1609530 tp!1609528))))

(declare-fun b!5827519 () Bool)

(declare-fun tp!1609526 () Bool)

(assert (=> b!5827519 (= e!3575786 tp!1609526)))

(assert (= (and b!5825983 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827517))

(assert (= (and b!5825983 ((_ is Concat!24722) (reg!16206 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827518))

(assert (= (and b!5825983 ((_ is Star!15877) (reg!16206 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827519))

(assert (= (and b!5825983 ((_ is Union!15877) (reg!16206 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827520))

(declare-fun b!5827521 () Bool)

(declare-fun e!3575787 () Bool)

(assert (=> b!5827521 (= e!3575787 tp_is_empty!41007)))

(declare-fun b!5827522 () Bool)

(declare-fun tp!1609532 () Bool)

(declare-fun tp!1609534 () Bool)

(assert (=> b!5827522 (= e!3575787 (and tp!1609532 tp!1609534))))

(assert (=> b!5825935 (= tp!1608400 e!3575787)))

(declare-fun b!5827524 () Bool)

(declare-fun tp!1609535 () Bool)

(declare-fun tp!1609533 () Bool)

(assert (=> b!5827524 (= e!3575787 (and tp!1609535 tp!1609533))))

(declare-fun b!5827523 () Bool)

(declare-fun tp!1609531 () Bool)

(assert (=> b!5827523 (= e!3575787 tp!1609531)))

(assert (= (and b!5825935 ((_ is ElementMatch!15877) (h!70254 (exprs!5761 setElem!39384)))) b!5827521))

(assert (= (and b!5825935 ((_ is Concat!24722) (h!70254 (exprs!5761 setElem!39384)))) b!5827522))

(assert (= (and b!5825935 ((_ is Star!15877) (h!70254 (exprs!5761 setElem!39384)))) b!5827523))

(assert (= (and b!5825935 ((_ is Union!15877) (h!70254 (exprs!5761 setElem!39384)))) b!5827524))

(declare-fun b!5827525 () Bool)

(declare-fun e!3575788 () Bool)

(declare-fun tp!1609536 () Bool)

(declare-fun tp!1609537 () Bool)

(assert (=> b!5827525 (= e!3575788 (and tp!1609536 tp!1609537))))

(assert (=> b!5825935 (= tp!1608401 e!3575788)))

(assert (= (and b!5825935 ((_ is Cons!63806) (t!377285 (exprs!5761 setElem!39384)))) b!5827525))

(declare-fun b!5827526 () Bool)

(declare-fun e!3575789 () Bool)

(assert (=> b!5827526 (= e!3575789 tp_is_empty!41007)))

(declare-fun b!5827527 () Bool)

(declare-fun tp!1609539 () Bool)

(declare-fun tp!1609541 () Bool)

(assert (=> b!5827527 (= e!3575789 (and tp!1609539 tp!1609541))))

(assert (=> b!5825974 (= tp!1608450 e!3575789)))

(declare-fun b!5827529 () Bool)

(declare-fun tp!1609542 () Bool)

(declare-fun tp!1609540 () Bool)

(assert (=> b!5827529 (= e!3575789 (and tp!1609542 tp!1609540))))

(declare-fun b!5827528 () Bool)

(declare-fun tp!1609538 () Bool)

(assert (=> b!5827528 (= e!3575789 tp!1609538)))

(assert (= (and b!5825974 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32267 (reg!16206 r!7292))))) b!5827526))

(assert (= (and b!5825974 ((_ is Concat!24722) (regOne!32266 (regTwo!32267 (reg!16206 r!7292))))) b!5827527))

(assert (= (and b!5825974 ((_ is Star!15877) (regOne!32266 (regTwo!32267 (reg!16206 r!7292))))) b!5827528))

(assert (= (and b!5825974 ((_ is Union!15877) (regOne!32266 (regTwo!32267 (reg!16206 r!7292))))) b!5827529))

(declare-fun b!5827530 () Bool)

(declare-fun e!3575790 () Bool)

(assert (=> b!5827530 (= e!3575790 tp_is_empty!41007)))

(declare-fun b!5827531 () Bool)

(declare-fun tp!1609544 () Bool)

(declare-fun tp!1609546 () Bool)

(assert (=> b!5827531 (= e!3575790 (and tp!1609544 tp!1609546))))

(assert (=> b!5825974 (= tp!1608452 e!3575790)))

(declare-fun b!5827533 () Bool)

(declare-fun tp!1609547 () Bool)

(declare-fun tp!1609545 () Bool)

(assert (=> b!5827533 (= e!3575790 (and tp!1609547 tp!1609545))))

(declare-fun b!5827532 () Bool)

(declare-fun tp!1609543 () Bool)

(assert (=> b!5827532 (= e!3575790 tp!1609543)))

(assert (= (and b!5825974 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32267 (reg!16206 r!7292))))) b!5827530))

(assert (= (and b!5825974 ((_ is Concat!24722) (regTwo!32266 (regTwo!32267 (reg!16206 r!7292))))) b!5827531))

(assert (= (and b!5825974 ((_ is Star!15877) (regTwo!32266 (regTwo!32267 (reg!16206 r!7292))))) b!5827532))

(assert (= (and b!5825974 ((_ is Union!15877) (regTwo!32266 (regTwo!32267 (reg!16206 r!7292))))) b!5827533))

(declare-fun b!5827534 () Bool)

(declare-fun e!3575791 () Bool)

(assert (=> b!5827534 (= e!3575791 tp_is_empty!41007)))

(declare-fun b!5827535 () Bool)

(declare-fun tp!1609549 () Bool)

(declare-fun tp!1609551 () Bool)

(assert (=> b!5827535 (= e!3575791 (and tp!1609549 tp!1609551))))

(assert (=> b!5825992 (= tp!1608473 e!3575791)))

(declare-fun b!5827537 () Bool)

(declare-fun tp!1609552 () Bool)

(declare-fun tp!1609550 () Bool)

(assert (=> b!5827537 (= e!3575791 (and tp!1609552 tp!1609550))))

(declare-fun b!5827536 () Bool)

(declare-fun tp!1609548 () Bool)

(assert (=> b!5827536 (= e!3575791 tp!1609548)))

(assert (= (and b!5825992 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32266 (reg!16206 r!7292))))) b!5827534))

(assert (= (and b!5825992 ((_ is Concat!24722) (regOne!32267 (regOne!32266 (reg!16206 r!7292))))) b!5827535))

(assert (= (and b!5825992 ((_ is Star!15877) (regOne!32267 (regOne!32266 (reg!16206 r!7292))))) b!5827536))

(assert (= (and b!5825992 ((_ is Union!15877) (regOne!32267 (regOne!32266 (reg!16206 r!7292))))) b!5827537))

(declare-fun b!5827538 () Bool)

(declare-fun e!3575792 () Bool)

(assert (=> b!5827538 (= e!3575792 tp_is_empty!41007)))

(declare-fun b!5827539 () Bool)

(declare-fun tp!1609554 () Bool)

(declare-fun tp!1609556 () Bool)

(assert (=> b!5827539 (= e!3575792 (and tp!1609554 tp!1609556))))

(assert (=> b!5825992 (= tp!1608471 e!3575792)))

(declare-fun b!5827541 () Bool)

(declare-fun tp!1609557 () Bool)

(declare-fun tp!1609555 () Bool)

(assert (=> b!5827541 (= e!3575792 (and tp!1609557 tp!1609555))))

(declare-fun b!5827540 () Bool)

(declare-fun tp!1609553 () Bool)

(assert (=> b!5827540 (= e!3575792 tp!1609553)))

(assert (= (and b!5825992 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32266 (reg!16206 r!7292))))) b!5827538))

(assert (= (and b!5825992 ((_ is Concat!24722) (regTwo!32267 (regOne!32266 (reg!16206 r!7292))))) b!5827539))

(assert (= (and b!5825992 ((_ is Star!15877) (regTwo!32267 (regOne!32266 (reg!16206 r!7292))))) b!5827540))

(assert (= (and b!5825992 ((_ is Union!15877) (regTwo!32267 (regOne!32266 (reg!16206 r!7292))))) b!5827541))

(declare-fun b!5827542 () Bool)

(declare-fun e!3575793 () Bool)

(assert (=> b!5827542 (= e!3575793 tp_is_empty!41007)))

(declare-fun b!5827543 () Bool)

(declare-fun tp!1609559 () Bool)

(declare-fun tp!1609561 () Bool)

(assert (=> b!5827543 (= e!3575793 (and tp!1609559 tp!1609561))))

(assert (=> b!5825960 (= tp!1608431 e!3575793)))

(declare-fun b!5827545 () Bool)

(declare-fun tp!1609562 () Bool)

(declare-fun tp!1609560 () Bool)

(assert (=> b!5827545 (= e!3575793 (and tp!1609562 tp!1609560))))

(declare-fun b!5827544 () Bool)

(declare-fun tp!1609558 () Bool)

(assert (=> b!5827544 (= e!3575793 tp!1609558)))

(assert (= (and b!5825960 ((_ is ElementMatch!15877) (reg!16206 (regOne!32266 (regTwo!32267 r!7292))))) b!5827542))

(assert (= (and b!5825960 ((_ is Concat!24722) (reg!16206 (regOne!32266 (regTwo!32267 r!7292))))) b!5827543))

(assert (= (and b!5825960 ((_ is Star!15877) (reg!16206 (regOne!32266 (regTwo!32267 r!7292))))) b!5827544))

(assert (= (and b!5825960 ((_ is Union!15877) (reg!16206 (regOne!32266 (regTwo!32267 r!7292))))) b!5827545))

(declare-fun b!5827546 () Bool)

(declare-fun e!3575794 () Bool)

(assert (=> b!5827546 (= e!3575794 tp_is_empty!41007)))

(declare-fun b!5827547 () Bool)

(declare-fun tp!1609564 () Bool)

(declare-fun tp!1609566 () Bool)

(assert (=> b!5827547 (= e!3575794 (and tp!1609564 tp!1609566))))

(assert (=> b!5825915 (= tp!1608371 e!3575794)))

(declare-fun b!5827549 () Bool)

(declare-fun tp!1609567 () Bool)

(declare-fun tp!1609565 () Bool)

(assert (=> b!5827549 (= e!3575794 (and tp!1609567 tp!1609565))))

(declare-fun b!5827548 () Bool)

(declare-fun tp!1609563 () Bool)

(assert (=> b!5827548 (= e!3575794 tp!1609563)))

(assert (= (and b!5825915 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32267 (regOne!32266 r!7292))))) b!5827546))

(assert (= (and b!5825915 ((_ is Concat!24722) (reg!16206 (regTwo!32267 (regOne!32266 r!7292))))) b!5827547))

(assert (= (and b!5825915 ((_ is Star!15877) (reg!16206 (regTwo!32267 (regOne!32266 r!7292))))) b!5827548))

(assert (= (and b!5825915 ((_ is Union!15877) (reg!16206 (regTwo!32267 (regOne!32266 r!7292))))) b!5827549))

(declare-fun b!5827550 () Bool)

(declare-fun e!3575795 () Bool)

(assert (=> b!5827550 (= e!3575795 tp_is_empty!41007)))

(declare-fun b!5827551 () Bool)

(declare-fun tp!1609569 () Bool)

(declare-fun tp!1609571 () Bool)

(assert (=> b!5827551 (= e!3575795 (and tp!1609569 tp!1609571))))

(assert (=> b!5825976 (= tp!1608453 e!3575795)))

(declare-fun b!5827553 () Bool)

(declare-fun tp!1609572 () Bool)

(declare-fun tp!1609570 () Bool)

(assert (=> b!5827553 (= e!3575795 (and tp!1609572 tp!1609570))))

(declare-fun b!5827552 () Bool)

(declare-fun tp!1609568 () Bool)

(assert (=> b!5827552 (= e!3575795 tp!1609568)))

(assert (= (and b!5825976 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32267 (reg!16206 r!7292))))) b!5827550))

(assert (= (and b!5825976 ((_ is Concat!24722) (regOne!32267 (regTwo!32267 (reg!16206 r!7292))))) b!5827551))

(assert (= (and b!5825976 ((_ is Star!15877) (regOne!32267 (regTwo!32267 (reg!16206 r!7292))))) b!5827552))

(assert (= (and b!5825976 ((_ is Union!15877) (regOne!32267 (regTwo!32267 (reg!16206 r!7292))))) b!5827553))

(declare-fun b!5827554 () Bool)

(declare-fun e!3575796 () Bool)

(assert (=> b!5827554 (= e!3575796 tp_is_empty!41007)))

(declare-fun b!5827555 () Bool)

(declare-fun tp!1609574 () Bool)

(declare-fun tp!1609576 () Bool)

(assert (=> b!5827555 (= e!3575796 (and tp!1609574 tp!1609576))))

(assert (=> b!5825976 (= tp!1608451 e!3575796)))

(declare-fun b!5827557 () Bool)

(declare-fun tp!1609577 () Bool)

(declare-fun tp!1609575 () Bool)

(assert (=> b!5827557 (= e!3575796 (and tp!1609577 tp!1609575))))

(declare-fun b!5827556 () Bool)

(declare-fun tp!1609573 () Bool)

(assert (=> b!5827556 (= e!3575796 tp!1609573)))

(assert (= (and b!5825976 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32267 (reg!16206 r!7292))))) b!5827554))

(assert (= (and b!5825976 ((_ is Concat!24722) (regTwo!32267 (regTwo!32267 (reg!16206 r!7292))))) b!5827555))

(assert (= (and b!5825976 ((_ is Star!15877) (regTwo!32267 (regTwo!32267 (reg!16206 r!7292))))) b!5827556))

(assert (= (and b!5825976 ((_ is Union!15877) (regTwo!32267 (regTwo!32267 (reg!16206 r!7292))))) b!5827557))

(declare-fun b!5827559 () Bool)

(declare-fun e!3575798 () Bool)

(declare-fun tp!1609578 () Bool)

(assert (=> b!5827559 (= e!3575798 tp!1609578)))

(declare-fun b!5827558 () Bool)

(declare-fun e!3575797 () Bool)

(declare-fun tp!1609579 () Bool)

(assert (=> b!5827558 (= e!3575797 (and (inv!82939 (h!70255 (t!377286 (t!377286 (t!377286 zl!343))))) e!3575798 tp!1609579))))

(assert (=> b!5825967 (= tp!1608443 e!3575797)))

(assert (= b!5827558 b!5827559))

(assert (= (and b!5825967 ((_ is Cons!63807) (t!377286 (t!377286 (t!377286 zl!343))))) b!5827558))

(declare-fun m!6759228 () Bool)

(assert (=> b!5827558 m!6759228))

(declare-fun b!5827560 () Bool)

(declare-fun e!3575799 () Bool)

(assert (=> b!5827560 (= e!3575799 tp_is_empty!41007)))

(declare-fun b!5827561 () Bool)

(declare-fun tp!1609581 () Bool)

(declare-fun tp!1609583 () Bool)

(assert (=> b!5827561 (= e!3575799 (and tp!1609581 tp!1609583))))

(assert (=> b!5825953 (= tp!1608423 e!3575799)))

(declare-fun b!5827563 () Bool)

(declare-fun tp!1609584 () Bool)

(declare-fun tp!1609582 () Bool)

(assert (=> b!5827563 (= e!3575799 (and tp!1609584 tp!1609582))))

(declare-fun b!5827562 () Bool)

(declare-fun tp!1609580 () Bool)

(assert (=> b!5827562 (= e!3575799 tp!1609580)))

(assert (= (and b!5825953 ((_ is ElementMatch!15877) (regOne!32266 (h!70254 (exprs!5761 setElem!39378))))) b!5827560))

(assert (= (and b!5825953 ((_ is Concat!24722) (regOne!32266 (h!70254 (exprs!5761 setElem!39378))))) b!5827561))

(assert (= (and b!5825953 ((_ is Star!15877) (regOne!32266 (h!70254 (exprs!5761 setElem!39378))))) b!5827562))

(assert (= (and b!5825953 ((_ is Union!15877) (regOne!32266 (h!70254 (exprs!5761 setElem!39378))))) b!5827563))

(declare-fun b!5827564 () Bool)

(declare-fun e!3575800 () Bool)

(assert (=> b!5827564 (= e!3575800 tp_is_empty!41007)))

(declare-fun b!5827565 () Bool)

(declare-fun tp!1609586 () Bool)

(declare-fun tp!1609588 () Bool)

(assert (=> b!5827565 (= e!3575800 (and tp!1609586 tp!1609588))))

(assert (=> b!5825953 (= tp!1608425 e!3575800)))

(declare-fun b!5827567 () Bool)

(declare-fun tp!1609589 () Bool)

(declare-fun tp!1609587 () Bool)

(assert (=> b!5827567 (= e!3575800 (and tp!1609589 tp!1609587))))

(declare-fun b!5827566 () Bool)

(declare-fun tp!1609585 () Bool)

(assert (=> b!5827566 (= e!3575800 tp!1609585)))

(assert (= (and b!5825953 ((_ is ElementMatch!15877) (regTwo!32266 (h!70254 (exprs!5761 setElem!39378))))) b!5827564))

(assert (= (and b!5825953 ((_ is Concat!24722) (regTwo!32266 (h!70254 (exprs!5761 setElem!39378))))) b!5827565))

(assert (= (and b!5825953 ((_ is Star!15877) (regTwo!32266 (h!70254 (exprs!5761 setElem!39378))))) b!5827566))

(assert (= (and b!5825953 ((_ is Union!15877) (regTwo!32266 (h!70254 (exprs!5761 setElem!39378))))) b!5827567))

(declare-fun b!5827568 () Bool)

(declare-fun e!3575801 () Bool)

(assert (=> b!5827568 (= e!3575801 tp_is_empty!41007)))

(declare-fun b!5827569 () Bool)

(declare-fun tp!1609591 () Bool)

(declare-fun tp!1609593 () Bool)

(assert (=> b!5827569 (= e!3575801 (and tp!1609591 tp!1609593))))

(assert (=> b!5825908 (= tp!1608365 e!3575801)))

(declare-fun b!5827571 () Bool)

(declare-fun tp!1609594 () Bool)

(declare-fun tp!1609592 () Bool)

(assert (=> b!5827571 (= e!3575801 (and tp!1609594 tp!1609592))))

(declare-fun b!5827570 () Bool)

(declare-fun tp!1609590 () Bool)

(assert (=> b!5827570 (= e!3575801 tp!1609590)))

(assert (= (and b!5825908 ((_ is ElementMatch!15877) (regOne!32267 (reg!16206 (regOne!32266 r!7292))))) b!5827568))

(assert (= (and b!5825908 ((_ is Concat!24722) (regOne!32267 (reg!16206 (regOne!32266 r!7292))))) b!5827569))

(assert (= (and b!5825908 ((_ is Star!15877) (regOne!32267 (reg!16206 (regOne!32266 r!7292))))) b!5827570))

(assert (= (and b!5825908 ((_ is Union!15877) (regOne!32267 (reg!16206 (regOne!32266 r!7292))))) b!5827571))

(declare-fun b!5827572 () Bool)

(declare-fun e!3575802 () Bool)

(assert (=> b!5827572 (= e!3575802 tp_is_empty!41007)))

(declare-fun b!5827573 () Bool)

(declare-fun tp!1609596 () Bool)

(declare-fun tp!1609598 () Bool)

(assert (=> b!5827573 (= e!3575802 (and tp!1609596 tp!1609598))))

(assert (=> b!5825908 (= tp!1608363 e!3575802)))

(declare-fun b!5827575 () Bool)

(declare-fun tp!1609599 () Bool)

(declare-fun tp!1609597 () Bool)

(assert (=> b!5827575 (= e!3575802 (and tp!1609599 tp!1609597))))

(declare-fun b!5827574 () Bool)

(declare-fun tp!1609595 () Bool)

(assert (=> b!5827574 (= e!3575802 tp!1609595)))

(assert (= (and b!5825908 ((_ is ElementMatch!15877) (regTwo!32267 (reg!16206 (regOne!32266 r!7292))))) b!5827572))

(assert (= (and b!5825908 ((_ is Concat!24722) (regTwo!32267 (reg!16206 (regOne!32266 r!7292))))) b!5827573))

(assert (= (and b!5825908 ((_ is Star!15877) (regTwo!32267 (reg!16206 (regOne!32266 r!7292))))) b!5827574))

(assert (= (and b!5825908 ((_ is Union!15877) (regTwo!32267 (reg!16206 (regOne!32266 r!7292))))) b!5827575))

(declare-fun b!5827576 () Bool)

(declare-fun e!3575803 () Bool)

(assert (=> b!5827576 (= e!3575803 tp_is_empty!41007)))

(declare-fun b!5827577 () Bool)

(declare-fun tp!1609601 () Bool)

(declare-fun tp!1609603 () Bool)

(assert (=> b!5827577 (= e!3575803 (and tp!1609601 tp!1609603))))

(assert (=> b!5826019 (= tp!1608504 e!3575803)))

(declare-fun b!5827579 () Bool)

(declare-fun tp!1609604 () Bool)

(declare-fun tp!1609602 () Bool)

(assert (=> b!5827579 (= e!3575803 (and tp!1609604 tp!1609602))))

(declare-fun b!5827578 () Bool)

(declare-fun tp!1609600 () Bool)

(assert (=> b!5827578 (= e!3575803 tp!1609600)))

(assert (= (and b!5826019 ((_ is ElementMatch!15877) (reg!16206 (reg!16206 (regTwo!32266 r!7292))))) b!5827576))

(assert (= (and b!5826019 ((_ is Concat!24722) (reg!16206 (reg!16206 (regTwo!32266 r!7292))))) b!5827577))

(assert (= (and b!5826019 ((_ is Star!15877) (reg!16206 (reg!16206 (regTwo!32266 r!7292))))) b!5827578))

(assert (= (and b!5826019 ((_ is Union!15877) (reg!16206 (reg!16206 (regTwo!32266 r!7292))))) b!5827579))

(declare-fun b!5827580 () Bool)

(declare-fun e!3575804 () Bool)

(assert (=> b!5827580 (= e!3575804 tp_is_empty!41007)))

(declare-fun b!5827581 () Bool)

(declare-fun tp!1609606 () Bool)

(declare-fun tp!1609608 () Bool)

(assert (=> b!5827581 (= e!3575804 (and tp!1609606 tp!1609608))))

(assert (=> b!5825923 (= tp!1608384 e!3575804)))

(declare-fun b!5827583 () Bool)

(declare-fun tp!1609609 () Bool)

(declare-fun tp!1609607 () Bool)

(assert (=> b!5827583 (= e!3575804 (and tp!1609609 tp!1609607))))

(declare-fun b!5827582 () Bool)

(declare-fun tp!1609605 () Bool)

(assert (=> b!5827582 (= e!3575804 tp!1609605)))

(assert (= (and b!5825923 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32266 (regOne!32267 r!7292))))) b!5827580))

(assert (= (and b!5825923 ((_ is Concat!24722) (regOne!32266 (regOne!32266 (regOne!32267 r!7292))))) b!5827581))

(assert (= (and b!5825923 ((_ is Star!15877) (regOne!32266 (regOne!32266 (regOne!32267 r!7292))))) b!5827582))

(assert (= (and b!5825923 ((_ is Union!15877) (regOne!32266 (regOne!32266 (regOne!32267 r!7292))))) b!5827583))

(declare-fun b!5827584 () Bool)

(declare-fun e!3575805 () Bool)

(assert (=> b!5827584 (= e!3575805 tp_is_empty!41007)))

(declare-fun b!5827585 () Bool)

(declare-fun tp!1609611 () Bool)

(declare-fun tp!1609613 () Bool)

(assert (=> b!5827585 (= e!3575805 (and tp!1609611 tp!1609613))))

(assert (=> b!5825923 (= tp!1608386 e!3575805)))

(declare-fun b!5827587 () Bool)

(declare-fun tp!1609614 () Bool)

(declare-fun tp!1609612 () Bool)

(assert (=> b!5827587 (= e!3575805 (and tp!1609614 tp!1609612))))

(declare-fun b!5827586 () Bool)

(declare-fun tp!1609610 () Bool)

(assert (=> b!5827586 (= e!3575805 tp!1609610)))

(assert (= (and b!5825923 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32266 (regOne!32267 r!7292))))) b!5827584))

(assert (= (and b!5825923 ((_ is Concat!24722) (regTwo!32266 (regOne!32266 (regOne!32267 r!7292))))) b!5827585))

(assert (= (and b!5825923 ((_ is Star!15877) (regTwo!32266 (regOne!32266 (regOne!32267 r!7292))))) b!5827586))

(assert (= (and b!5825923 ((_ is Union!15877) (regTwo!32266 (regOne!32266 (regOne!32267 r!7292))))) b!5827587))

(declare-fun b!5827588 () Bool)

(declare-fun e!3575806 () Bool)

(assert (=> b!5827588 (= e!3575806 tp_is_empty!41007)))

(declare-fun b!5827589 () Bool)

(declare-fun tp!1609616 () Bool)

(declare-fun tp!1609618 () Bool)

(assert (=> b!5827589 (= e!3575806 (and tp!1609616 tp!1609618))))

(assert (=> b!5826010 (= tp!1608495 e!3575806)))

(declare-fun b!5827591 () Bool)

(declare-fun tp!1609619 () Bool)

(declare-fun tp!1609617 () Bool)

(assert (=> b!5827591 (= e!3575806 (and tp!1609619 tp!1609617))))

(declare-fun b!5827590 () Bool)

(declare-fun tp!1609615 () Bool)

(assert (=> b!5827590 (= e!3575806 tp!1609615)))

(assert (= (and b!5826010 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827588))

(assert (= (and b!5826010 ((_ is Concat!24722) (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827589))

(assert (= (and b!5826010 ((_ is Star!15877) (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827590))

(assert (= (and b!5826010 ((_ is Union!15877) (regOne!32266 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827591))

(declare-fun b!5827592 () Bool)

(declare-fun e!3575807 () Bool)

(assert (=> b!5827592 (= e!3575807 tp_is_empty!41007)))

(declare-fun b!5827593 () Bool)

(declare-fun tp!1609621 () Bool)

(declare-fun tp!1609623 () Bool)

(assert (=> b!5827593 (= e!3575807 (and tp!1609621 tp!1609623))))

(assert (=> b!5826010 (= tp!1608497 e!3575807)))

(declare-fun b!5827595 () Bool)

(declare-fun tp!1609624 () Bool)

(declare-fun tp!1609622 () Bool)

(assert (=> b!5827595 (= e!3575807 (and tp!1609624 tp!1609622))))

(declare-fun b!5827594 () Bool)

(declare-fun tp!1609620 () Bool)

(assert (=> b!5827594 (= e!3575807 tp!1609620)))

(assert (= (and b!5826010 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827592))

(assert (= (and b!5826010 ((_ is Concat!24722) (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827593))

(assert (= (and b!5826010 ((_ is Star!15877) (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827594))

(assert (= (and b!5826010 ((_ is Union!15877) (regTwo!32266 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827595))

(declare-fun condSetEmpty!39388 () Bool)

(assert (=> setNonEmpty!39386 (= condSetEmpty!39388 (= setRest!39386 ((as const (Array Context!10522 Bool)) false)))))

(declare-fun setRes!39388 () Bool)

(assert (=> setNonEmpty!39386 (= tp!1608394 setRes!39388)))

(declare-fun setIsEmpty!39388 () Bool)

(assert (=> setIsEmpty!39388 setRes!39388))

(declare-fun setElem!39388 () Context!10522)

(declare-fun tp!1609626 () Bool)

(declare-fun e!3575808 () Bool)

(declare-fun setNonEmpty!39388 () Bool)

(assert (=> setNonEmpty!39388 (= setRes!39388 (and tp!1609626 (inv!82939 setElem!39388) e!3575808))))

(declare-fun setRest!39388 () (InoxSet Context!10522))

(assert (=> setNonEmpty!39388 (= setRest!39386 ((_ map or) (store ((as const (Array Context!10522 Bool)) false) setElem!39388 true) setRest!39388))))

(declare-fun b!5827596 () Bool)

(declare-fun tp!1609625 () Bool)

(assert (=> b!5827596 (= e!3575808 tp!1609625)))

(assert (= (and setNonEmpty!39386 condSetEmpty!39388) setIsEmpty!39388))

(assert (= (and setNonEmpty!39386 (not condSetEmpty!39388)) setNonEmpty!39388))

(assert (= setNonEmpty!39388 b!5827596))

(declare-fun m!6759230 () Bool)

(assert (=> setNonEmpty!39388 m!6759230))

(declare-fun b!5827597 () Bool)

(declare-fun e!3575809 () Bool)

(assert (=> b!5827597 (= e!3575809 tp_is_empty!41007)))

(declare-fun b!5827598 () Bool)

(declare-fun tp!1609628 () Bool)

(declare-fun tp!1609630 () Bool)

(assert (=> b!5827598 (= e!3575809 (and tp!1609628 tp!1609630))))

(assert (=> b!5825906 (= tp!1608362 e!3575809)))

(declare-fun b!5827600 () Bool)

(declare-fun tp!1609631 () Bool)

(declare-fun tp!1609629 () Bool)

(assert (=> b!5827600 (= e!3575809 (and tp!1609631 tp!1609629))))

(declare-fun b!5827599 () Bool)

(declare-fun tp!1609627 () Bool)

(assert (=> b!5827599 (= e!3575809 tp!1609627)))

(assert (= (and b!5825906 ((_ is ElementMatch!15877) (regOne!32266 (reg!16206 (regOne!32266 r!7292))))) b!5827597))

(assert (= (and b!5825906 ((_ is Concat!24722) (regOne!32266 (reg!16206 (regOne!32266 r!7292))))) b!5827598))

(assert (= (and b!5825906 ((_ is Star!15877) (regOne!32266 (reg!16206 (regOne!32266 r!7292))))) b!5827599))

(assert (= (and b!5825906 ((_ is Union!15877) (regOne!32266 (reg!16206 (regOne!32266 r!7292))))) b!5827600))

(declare-fun b!5827601 () Bool)

(declare-fun e!3575810 () Bool)

(assert (=> b!5827601 (= e!3575810 tp_is_empty!41007)))

(declare-fun b!5827602 () Bool)

(declare-fun tp!1609633 () Bool)

(declare-fun tp!1609635 () Bool)

(assert (=> b!5827602 (= e!3575810 (and tp!1609633 tp!1609635))))

(assert (=> b!5825906 (= tp!1608364 e!3575810)))

(declare-fun b!5827604 () Bool)

(declare-fun tp!1609636 () Bool)

(declare-fun tp!1609634 () Bool)

(assert (=> b!5827604 (= e!3575810 (and tp!1609636 tp!1609634))))

(declare-fun b!5827603 () Bool)

(declare-fun tp!1609632 () Bool)

(assert (=> b!5827603 (= e!3575810 tp!1609632)))

(assert (= (and b!5825906 ((_ is ElementMatch!15877) (regTwo!32266 (reg!16206 (regOne!32266 r!7292))))) b!5827601))

(assert (= (and b!5825906 ((_ is Concat!24722) (regTwo!32266 (reg!16206 (regOne!32266 r!7292))))) b!5827602))

(assert (= (and b!5825906 ((_ is Star!15877) (regTwo!32266 (reg!16206 (regOne!32266 r!7292))))) b!5827603))

(assert (= (and b!5825906 ((_ is Union!15877) (regTwo!32266 (reg!16206 (regOne!32266 r!7292))))) b!5827604))

(declare-fun b!5827605 () Bool)

(declare-fun e!3575811 () Bool)

(assert (=> b!5827605 (= e!3575811 tp_is_empty!41007)))

(declare-fun b!5827606 () Bool)

(declare-fun tp!1609638 () Bool)

(declare-fun tp!1609640 () Bool)

(assert (=> b!5827606 (= e!3575811 (and tp!1609638 tp!1609640))))

(assert (=> b!5825937 (= tp!1608403 e!3575811)))

(declare-fun b!5827608 () Bool)

(declare-fun tp!1609641 () Bool)

(declare-fun tp!1609639 () Bool)

(assert (=> b!5827608 (= e!3575811 (and tp!1609641 tp!1609639))))

(declare-fun b!5827607 () Bool)

(declare-fun tp!1609637 () Bool)

(assert (=> b!5827607 (= e!3575811 tp!1609637)))

(assert (= (and b!5825937 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32266 (regOne!32266 r!7292))))) b!5827605))

(assert (= (and b!5825937 ((_ is Concat!24722) (regOne!32266 (regOne!32266 (regOne!32266 r!7292))))) b!5827606))

(assert (= (and b!5825937 ((_ is Star!15877) (regOne!32266 (regOne!32266 (regOne!32266 r!7292))))) b!5827607))

(assert (= (and b!5825937 ((_ is Union!15877) (regOne!32266 (regOne!32266 (regOne!32266 r!7292))))) b!5827608))

(declare-fun b!5827609 () Bool)

(declare-fun e!3575812 () Bool)

(assert (=> b!5827609 (= e!3575812 tp_is_empty!41007)))

(declare-fun b!5827610 () Bool)

(declare-fun tp!1609643 () Bool)

(declare-fun tp!1609645 () Bool)

(assert (=> b!5827610 (= e!3575812 (and tp!1609643 tp!1609645))))

(assert (=> b!5825937 (= tp!1608405 e!3575812)))

(declare-fun b!5827612 () Bool)

(declare-fun tp!1609646 () Bool)

(declare-fun tp!1609644 () Bool)

(assert (=> b!5827612 (= e!3575812 (and tp!1609646 tp!1609644))))

(declare-fun b!5827611 () Bool)

(declare-fun tp!1609642 () Bool)

(assert (=> b!5827611 (= e!3575812 tp!1609642)))

(assert (= (and b!5825937 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32266 (regOne!32266 r!7292))))) b!5827609))

(assert (= (and b!5825937 ((_ is Concat!24722) (regTwo!32266 (regOne!32266 (regOne!32266 r!7292))))) b!5827610))

(assert (= (and b!5825937 ((_ is Star!15877) (regTwo!32266 (regOne!32266 (regOne!32266 r!7292))))) b!5827611))

(assert (= (and b!5825937 ((_ is Union!15877) (regTwo!32266 (regOne!32266 (regOne!32266 r!7292))))) b!5827612))

(declare-fun b!5827613 () Bool)

(declare-fun e!3575813 () Bool)

(assert (=> b!5827613 (= e!3575813 tp_is_empty!41007)))

(declare-fun b!5827614 () Bool)

(declare-fun tp!1609648 () Bool)

(declare-fun tp!1609650 () Bool)

(assert (=> b!5827614 (= e!3575813 (and tp!1609648 tp!1609650))))

(assert (=> b!5826003 (= tp!1608484 e!3575813)))

(declare-fun b!5827616 () Bool)

(declare-fun tp!1609651 () Bool)

(declare-fun tp!1609649 () Bool)

(assert (=> b!5827616 (= e!3575813 (and tp!1609651 tp!1609649))))

(declare-fun b!5827615 () Bool)

(declare-fun tp!1609647 () Bool)

(assert (=> b!5827615 (= e!3575813 tp!1609647)))

(assert (= (and b!5826003 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827613))

(assert (= (and b!5826003 ((_ is Concat!24722) (reg!16206 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827614))

(assert (= (and b!5826003 ((_ is Star!15877) (reg!16206 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827615))

(assert (= (and b!5826003 ((_ is Union!15877) (reg!16206 (regTwo!32266 (regTwo!32266 r!7292))))) b!5827616))

(declare-fun b!5827617 () Bool)

(declare-fun e!3575814 () Bool)

(assert (=> b!5827617 (= e!3575814 tp_is_empty!41007)))

(declare-fun b!5827618 () Bool)

(declare-fun tp!1609653 () Bool)

(declare-fun tp!1609655 () Bool)

(assert (=> b!5827618 (= e!3575814 (and tp!1609653 tp!1609655))))

(assert (=> b!5825955 (= tp!1608426 e!3575814)))

(declare-fun b!5827620 () Bool)

(declare-fun tp!1609656 () Bool)

(declare-fun tp!1609654 () Bool)

(assert (=> b!5827620 (= e!3575814 (and tp!1609656 tp!1609654))))

(declare-fun b!5827619 () Bool)

(declare-fun tp!1609652 () Bool)

(assert (=> b!5827619 (= e!3575814 tp!1609652)))

(assert (= (and b!5825955 ((_ is ElementMatch!15877) (regOne!32267 (h!70254 (exprs!5761 setElem!39378))))) b!5827617))

(assert (= (and b!5825955 ((_ is Concat!24722) (regOne!32267 (h!70254 (exprs!5761 setElem!39378))))) b!5827618))

(assert (= (and b!5825955 ((_ is Star!15877) (regOne!32267 (h!70254 (exprs!5761 setElem!39378))))) b!5827619))

(assert (= (and b!5825955 ((_ is Union!15877) (regOne!32267 (h!70254 (exprs!5761 setElem!39378))))) b!5827620))

(declare-fun b!5827621 () Bool)

(declare-fun e!3575815 () Bool)

(assert (=> b!5827621 (= e!3575815 tp_is_empty!41007)))

(declare-fun b!5827622 () Bool)

(declare-fun tp!1609658 () Bool)

(declare-fun tp!1609660 () Bool)

(assert (=> b!5827622 (= e!3575815 (and tp!1609658 tp!1609660))))

(assert (=> b!5825955 (= tp!1608424 e!3575815)))

(declare-fun b!5827624 () Bool)

(declare-fun tp!1609661 () Bool)

(declare-fun tp!1609659 () Bool)

(assert (=> b!5827624 (= e!3575815 (and tp!1609661 tp!1609659))))

(declare-fun b!5827623 () Bool)

(declare-fun tp!1609657 () Bool)

(assert (=> b!5827623 (= e!3575815 tp!1609657)))

(assert (= (and b!5825955 ((_ is ElementMatch!15877) (regTwo!32267 (h!70254 (exprs!5761 setElem!39378))))) b!5827621))

(assert (= (and b!5825955 ((_ is Concat!24722) (regTwo!32267 (h!70254 (exprs!5761 setElem!39378))))) b!5827622))

(assert (= (and b!5825955 ((_ is Star!15877) (regTwo!32267 (h!70254 (exprs!5761 setElem!39378))))) b!5827623))

(assert (= (and b!5825955 ((_ is Union!15877) (regTwo!32267 (h!70254 (exprs!5761 setElem!39378))))) b!5827624))

(declare-fun b!5827625 () Bool)

(declare-fun e!3575816 () Bool)

(assert (=> b!5827625 (= e!3575816 tp_is_empty!41007)))

(declare-fun b!5827626 () Bool)

(declare-fun tp!1609663 () Bool)

(declare-fun tp!1609665 () Bool)

(assert (=> b!5827626 (= e!3575816 (and tp!1609663 tp!1609665))))

(assert (=> b!5825994 (= tp!1608475 e!3575816)))

(declare-fun b!5827628 () Bool)

(declare-fun tp!1609666 () Bool)

(declare-fun tp!1609664 () Bool)

(assert (=> b!5827628 (= e!3575816 (and tp!1609666 tp!1609664))))

(declare-fun b!5827627 () Bool)

(declare-fun tp!1609662 () Bool)

(assert (=> b!5827627 (= e!3575816 tp!1609662)))

(assert (= (and b!5825994 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32266 (reg!16206 r!7292))))) b!5827625))

(assert (= (and b!5825994 ((_ is Concat!24722) (regOne!32266 (regTwo!32266 (reg!16206 r!7292))))) b!5827626))

(assert (= (and b!5825994 ((_ is Star!15877) (regOne!32266 (regTwo!32266 (reg!16206 r!7292))))) b!5827627))

(assert (= (and b!5825994 ((_ is Union!15877) (regOne!32266 (regTwo!32266 (reg!16206 r!7292))))) b!5827628))

(declare-fun b!5827629 () Bool)

(declare-fun e!3575817 () Bool)

(assert (=> b!5827629 (= e!3575817 tp_is_empty!41007)))

(declare-fun b!5827630 () Bool)

(declare-fun tp!1609668 () Bool)

(declare-fun tp!1609670 () Bool)

(assert (=> b!5827630 (= e!3575817 (and tp!1609668 tp!1609670))))

(assert (=> b!5825994 (= tp!1608477 e!3575817)))

(declare-fun b!5827632 () Bool)

(declare-fun tp!1609671 () Bool)

(declare-fun tp!1609669 () Bool)

(assert (=> b!5827632 (= e!3575817 (and tp!1609671 tp!1609669))))

(declare-fun b!5827631 () Bool)

(declare-fun tp!1609667 () Bool)

(assert (=> b!5827631 (= e!3575817 tp!1609667)))

(assert (= (and b!5825994 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32266 (reg!16206 r!7292))))) b!5827629))

(assert (= (and b!5825994 ((_ is Concat!24722) (regTwo!32266 (regTwo!32266 (reg!16206 r!7292))))) b!5827630))

(assert (= (and b!5825994 ((_ is Star!15877) (regTwo!32266 (regTwo!32266 (reg!16206 r!7292))))) b!5827631))

(assert (= (and b!5825994 ((_ is Union!15877) (regTwo!32266 (regTwo!32266 (reg!16206 r!7292))))) b!5827632))

(declare-fun b!5827633 () Bool)

(declare-fun e!3575818 () Bool)

(assert (=> b!5827633 (= e!3575818 tp_is_empty!41007)))

(declare-fun b!5827634 () Bool)

(declare-fun tp!1609673 () Bool)

(declare-fun tp!1609675 () Bool)

(assert (=> b!5827634 (= e!3575818 (and tp!1609673 tp!1609675))))

(assert (=> b!5825946 (= tp!1608412 e!3575818)))

(declare-fun b!5827636 () Bool)

(declare-fun tp!1609676 () Bool)

(declare-fun tp!1609674 () Bool)

(assert (=> b!5827636 (= e!3575818 (and tp!1609676 tp!1609674))))

(declare-fun b!5827635 () Bool)

(declare-fun tp!1609672 () Bool)

(assert (=> b!5827635 (= e!3575818 tp!1609672)))

(assert (= (and b!5825946 ((_ is ElementMatch!15877) (reg!16206 (regOne!32267 (regOne!32267 r!7292))))) b!5827633))

(assert (= (and b!5825946 ((_ is Concat!24722) (reg!16206 (regOne!32267 (regOne!32267 r!7292))))) b!5827634))

(assert (= (and b!5825946 ((_ is Star!15877) (reg!16206 (regOne!32267 (regOne!32267 r!7292))))) b!5827635))

(assert (= (and b!5825946 ((_ is Union!15877) (reg!16206 (regOne!32267 (regOne!32267 r!7292))))) b!5827636))

(declare-fun b!5827637 () Bool)

(declare-fun e!3575819 () Bool)

(assert (=> b!5827637 (= e!3575819 tp_is_empty!41007)))

(declare-fun b!5827638 () Bool)

(declare-fun tp!1609678 () Bool)

(declare-fun tp!1609680 () Bool)

(assert (=> b!5827638 (= e!3575819 (and tp!1609678 tp!1609680))))

(assert (=> b!5825925 (= tp!1608387 e!3575819)))

(declare-fun b!5827640 () Bool)

(declare-fun tp!1609681 () Bool)

(declare-fun tp!1609679 () Bool)

(assert (=> b!5827640 (= e!3575819 (and tp!1609681 tp!1609679))))

(declare-fun b!5827639 () Bool)

(declare-fun tp!1609677 () Bool)

(assert (=> b!5827639 (= e!3575819 tp!1609677)))

(assert (= (and b!5825925 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32266 (regOne!32267 r!7292))))) b!5827637))

(assert (= (and b!5825925 ((_ is Concat!24722) (regOne!32267 (regOne!32266 (regOne!32267 r!7292))))) b!5827638))

(assert (= (and b!5825925 ((_ is Star!15877) (regOne!32267 (regOne!32266 (regOne!32267 r!7292))))) b!5827639))

(assert (= (and b!5825925 ((_ is Union!15877) (regOne!32267 (regOne!32266 (regOne!32267 r!7292))))) b!5827640))

(declare-fun b!5827641 () Bool)

(declare-fun e!3575820 () Bool)

(assert (=> b!5827641 (= e!3575820 tp_is_empty!41007)))

(declare-fun b!5827642 () Bool)

(declare-fun tp!1609683 () Bool)

(declare-fun tp!1609685 () Bool)

(assert (=> b!5827642 (= e!3575820 (and tp!1609683 tp!1609685))))

(assert (=> b!5825925 (= tp!1608385 e!3575820)))

(declare-fun b!5827644 () Bool)

(declare-fun tp!1609686 () Bool)

(declare-fun tp!1609684 () Bool)

(assert (=> b!5827644 (= e!3575820 (and tp!1609686 tp!1609684))))

(declare-fun b!5827643 () Bool)

(declare-fun tp!1609682 () Bool)

(assert (=> b!5827643 (= e!3575820 tp!1609682)))

(assert (= (and b!5825925 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32266 (regOne!32267 r!7292))))) b!5827641))

(assert (= (and b!5825925 ((_ is Concat!24722) (regTwo!32267 (regOne!32266 (regOne!32267 r!7292))))) b!5827642))

(assert (= (and b!5825925 ((_ is Star!15877) (regTwo!32267 (regOne!32266 (regOne!32267 r!7292))))) b!5827643))

(assert (= (and b!5825925 ((_ is Union!15877) (regTwo!32267 (regOne!32266 (regOne!32267 r!7292))))) b!5827644))

(declare-fun b!5827645 () Bool)

(declare-fun e!3575821 () Bool)

(assert (=> b!5827645 (= e!3575821 tp_is_empty!41007)))

(declare-fun b!5827646 () Bool)

(declare-fun tp!1609688 () Bool)

(declare-fun tp!1609690 () Bool)

(assert (=> b!5827646 (= e!3575821 (and tp!1609688 tp!1609690))))

(assert (=> b!5826012 (= tp!1608498 e!3575821)))

(declare-fun b!5827648 () Bool)

(declare-fun tp!1609691 () Bool)

(declare-fun tp!1609689 () Bool)

(assert (=> b!5827648 (= e!3575821 (and tp!1609691 tp!1609689))))

(declare-fun b!5827647 () Bool)

(declare-fun tp!1609687 () Bool)

(assert (=> b!5827647 (= e!3575821 tp!1609687)))

(assert (= (and b!5826012 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827645))

(assert (= (and b!5826012 ((_ is Concat!24722) (regOne!32267 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827646))

(assert (= (and b!5826012 ((_ is Star!15877) (regOne!32267 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827647))

(assert (= (and b!5826012 ((_ is Union!15877) (regOne!32267 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827648))

(declare-fun b!5827649 () Bool)

(declare-fun e!3575822 () Bool)

(assert (=> b!5827649 (= e!3575822 tp_is_empty!41007)))

(declare-fun b!5827650 () Bool)

(declare-fun tp!1609693 () Bool)

(declare-fun tp!1609695 () Bool)

(assert (=> b!5827650 (= e!3575822 (and tp!1609693 tp!1609695))))

(assert (=> b!5826012 (= tp!1608496 e!3575822)))

(declare-fun b!5827652 () Bool)

(declare-fun tp!1609696 () Bool)

(declare-fun tp!1609694 () Bool)

(assert (=> b!5827652 (= e!3575822 (and tp!1609696 tp!1609694))))

(declare-fun b!5827651 () Bool)

(declare-fun tp!1609692 () Bool)

(assert (=> b!5827651 (= e!3575822 tp!1609692)))

(assert (= (and b!5826012 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827649))

(assert (= (and b!5826012 ((_ is Concat!24722) (regTwo!32267 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827650))

(assert (= (and b!5826012 ((_ is Star!15877) (regTwo!32267 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827651))

(assert (= (and b!5826012 ((_ is Union!15877) (regTwo!32267 (regTwo!32267 (regTwo!32267 r!7292))))) b!5827652))

(declare-fun b!5827653 () Bool)

(declare-fun e!3575823 () Bool)

(assert (=> b!5827653 (= e!3575823 tp_is_empty!41007)))

(declare-fun b!5827654 () Bool)

(declare-fun tp!1609698 () Bool)

(declare-fun tp!1609700 () Bool)

(assert (=> b!5827654 (= e!3575823 (and tp!1609698 tp!1609700))))

(assert (=> b!5825987 (= tp!1608464 e!3575823)))

(declare-fun b!5827656 () Bool)

(declare-fun tp!1609701 () Bool)

(declare-fun tp!1609699 () Bool)

(assert (=> b!5827656 (= e!3575823 (and tp!1609701 tp!1609699))))

(declare-fun b!5827655 () Bool)

(declare-fun tp!1609697 () Bool)

(assert (=> b!5827655 (= e!3575823 tp!1609697)))

(assert (= (and b!5825987 ((_ is ElementMatch!15877) (reg!16206 (reg!16206 (regTwo!32267 r!7292))))) b!5827653))

(assert (= (and b!5825987 ((_ is Concat!24722) (reg!16206 (reg!16206 (regTwo!32267 r!7292))))) b!5827654))

(assert (= (and b!5825987 ((_ is Star!15877) (reg!16206 (reg!16206 (regTwo!32267 r!7292))))) b!5827655))

(assert (= (and b!5825987 ((_ is Union!15877) (reg!16206 (reg!16206 (regTwo!32267 r!7292))))) b!5827656))

(declare-fun b!5827657 () Bool)

(declare-fun e!3575824 () Bool)

(assert (=> b!5827657 (= e!3575824 tp_is_empty!41007)))

(declare-fun b!5827658 () Bool)

(declare-fun tp!1609703 () Bool)

(declare-fun tp!1609705 () Bool)

(assert (=> b!5827658 (= e!3575824 (and tp!1609703 tp!1609705))))

(assert (=> b!5825939 (= tp!1608406 e!3575824)))

(declare-fun b!5827660 () Bool)

(declare-fun tp!1609706 () Bool)

(declare-fun tp!1609704 () Bool)

(assert (=> b!5827660 (= e!3575824 (and tp!1609706 tp!1609704))))

(declare-fun b!5827659 () Bool)

(declare-fun tp!1609702 () Bool)

(assert (=> b!5827659 (= e!3575824 tp!1609702)))

(assert (= (and b!5825939 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32266 (regOne!32266 r!7292))))) b!5827657))

(assert (= (and b!5825939 ((_ is Concat!24722) (regOne!32267 (regOne!32266 (regOne!32266 r!7292))))) b!5827658))

(assert (= (and b!5825939 ((_ is Star!15877) (regOne!32267 (regOne!32266 (regOne!32266 r!7292))))) b!5827659))

(assert (= (and b!5825939 ((_ is Union!15877) (regOne!32267 (regOne!32266 (regOne!32266 r!7292))))) b!5827660))

(declare-fun b!5827661 () Bool)

(declare-fun e!3575825 () Bool)

(assert (=> b!5827661 (= e!3575825 tp_is_empty!41007)))

(declare-fun b!5827662 () Bool)

(declare-fun tp!1609708 () Bool)

(declare-fun tp!1609710 () Bool)

(assert (=> b!5827662 (= e!3575825 (and tp!1609708 tp!1609710))))

(assert (=> b!5825939 (= tp!1608404 e!3575825)))

(declare-fun b!5827664 () Bool)

(declare-fun tp!1609711 () Bool)

(declare-fun tp!1609709 () Bool)

(assert (=> b!5827664 (= e!3575825 (and tp!1609711 tp!1609709))))

(declare-fun b!5827663 () Bool)

(declare-fun tp!1609707 () Bool)

(assert (=> b!5827663 (= e!3575825 tp!1609707)))

(assert (= (and b!5825939 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32266 (regOne!32266 r!7292))))) b!5827661))

(assert (= (and b!5825939 ((_ is Concat!24722) (regTwo!32267 (regOne!32266 (regOne!32266 r!7292))))) b!5827662))

(assert (= (and b!5825939 ((_ is Star!15877) (regTwo!32267 (regOne!32266 (regOne!32266 r!7292))))) b!5827663))

(assert (= (and b!5825939 ((_ is Union!15877) (regTwo!32267 (regOne!32266 (regOne!32266 r!7292))))) b!5827664))

(declare-fun b!5827665 () Bool)

(declare-fun e!3575826 () Bool)

(assert (=> b!5827665 (= e!3575826 tp_is_empty!41007)))

(declare-fun b!5827666 () Bool)

(declare-fun tp!1609713 () Bool)

(declare-fun tp!1609715 () Bool)

(assert (=> b!5827666 (= e!3575826 (and tp!1609713 tp!1609715))))

(assert (=> b!5825978 (= tp!1608455 e!3575826)))

(declare-fun b!5827668 () Bool)

(declare-fun tp!1609716 () Bool)

(declare-fun tp!1609714 () Bool)

(assert (=> b!5827668 (= e!3575826 (and tp!1609716 tp!1609714))))

(declare-fun b!5827667 () Bool)

(declare-fun tp!1609712 () Bool)

(assert (=> b!5827667 (= e!3575826 tp!1609712)))

(assert (= (and b!5825978 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32267 (regTwo!32266 r!7292))))) b!5827665))

(assert (= (and b!5825978 ((_ is Concat!24722) (regOne!32266 (regOne!32267 (regTwo!32266 r!7292))))) b!5827666))

(assert (= (and b!5825978 ((_ is Star!15877) (regOne!32266 (regOne!32267 (regTwo!32266 r!7292))))) b!5827667))

(assert (= (and b!5825978 ((_ is Union!15877) (regOne!32266 (regOne!32267 (regTwo!32266 r!7292))))) b!5827668))

(declare-fun b!5827669 () Bool)

(declare-fun e!3575827 () Bool)

(assert (=> b!5827669 (= e!3575827 tp_is_empty!41007)))

(declare-fun b!5827670 () Bool)

(declare-fun tp!1609718 () Bool)

(declare-fun tp!1609720 () Bool)

(assert (=> b!5827670 (= e!3575827 (and tp!1609718 tp!1609720))))

(assert (=> b!5825978 (= tp!1608457 e!3575827)))

(declare-fun b!5827672 () Bool)

(declare-fun tp!1609721 () Bool)

(declare-fun tp!1609719 () Bool)

(assert (=> b!5827672 (= e!3575827 (and tp!1609721 tp!1609719))))

(declare-fun b!5827671 () Bool)

(declare-fun tp!1609717 () Bool)

(assert (=> b!5827671 (= e!3575827 tp!1609717)))

(assert (= (and b!5825978 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32267 (regTwo!32266 r!7292))))) b!5827669))

(assert (= (and b!5825978 ((_ is Concat!24722) (regTwo!32266 (regOne!32267 (regTwo!32266 r!7292))))) b!5827670))

(assert (= (and b!5825978 ((_ is Star!15877) (regTwo!32266 (regOne!32267 (regTwo!32266 r!7292))))) b!5827671))

(assert (= (and b!5825978 ((_ is Union!15877) (regTwo!32266 (regOne!32267 (regTwo!32266 r!7292))))) b!5827672))

(declare-fun b!5827673 () Bool)

(declare-fun e!3575828 () Bool)

(assert (=> b!5827673 (= e!3575828 tp_is_empty!41007)))

(declare-fun b!5827674 () Bool)

(declare-fun tp!1609723 () Bool)

(declare-fun tp!1609725 () Bool)

(assert (=> b!5827674 (= e!3575828 (and tp!1609723 tp!1609725))))

(assert (=> b!5825996 (= tp!1608478 e!3575828)))

(declare-fun b!5827676 () Bool)

(declare-fun tp!1609726 () Bool)

(declare-fun tp!1609724 () Bool)

(assert (=> b!5827676 (= e!3575828 (and tp!1609726 tp!1609724))))

(declare-fun b!5827675 () Bool)

(declare-fun tp!1609722 () Bool)

(assert (=> b!5827675 (= e!3575828 tp!1609722)))

(assert (= (and b!5825996 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32266 (reg!16206 r!7292))))) b!5827673))

(assert (= (and b!5825996 ((_ is Concat!24722) (regOne!32267 (regTwo!32266 (reg!16206 r!7292))))) b!5827674))

(assert (= (and b!5825996 ((_ is Star!15877) (regOne!32267 (regTwo!32266 (reg!16206 r!7292))))) b!5827675))

(assert (= (and b!5825996 ((_ is Union!15877) (regOne!32267 (regTwo!32266 (reg!16206 r!7292))))) b!5827676))

(declare-fun b!5827677 () Bool)

(declare-fun e!3575829 () Bool)

(assert (=> b!5827677 (= e!3575829 tp_is_empty!41007)))

(declare-fun b!5827678 () Bool)

(declare-fun tp!1609728 () Bool)

(declare-fun tp!1609730 () Bool)

(assert (=> b!5827678 (= e!3575829 (and tp!1609728 tp!1609730))))

(assert (=> b!5825996 (= tp!1608476 e!3575829)))

(declare-fun b!5827680 () Bool)

(declare-fun tp!1609731 () Bool)

(declare-fun tp!1609729 () Bool)

(assert (=> b!5827680 (= e!3575829 (and tp!1609731 tp!1609729))))

(declare-fun b!5827679 () Bool)

(declare-fun tp!1609727 () Bool)

(assert (=> b!5827679 (= e!3575829 tp!1609727)))

(assert (= (and b!5825996 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32266 (reg!16206 r!7292))))) b!5827677))

(assert (= (and b!5825996 ((_ is Concat!24722) (regTwo!32267 (regTwo!32266 (reg!16206 r!7292))))) b!5827678))

(assert (= (and b!5825996 ((_ is Star!15877) (regTwo!32267 (regTwo!32266 (reg!16206 r!7292))))) b!5827679))

(assert (= (and b!5825996 ((_ is Union!15877) (regTwo!32267 (regTwo!32266 (reg!16206 r!7292))))) b!5827680))

(declare-fun b!5827681 () Bool)

(declare-fun e!3575830 () Bool)

(assert (=> b!5827681 (= e!3575830 tp_is_empty!41007)))

(declare-fun b!5827682 () Bool)

(declare-fun tp!1609733 () Bool)

(declare-fun tp!1609735 () Bool)

(assert (=> b!5827682 (= e!3575830 (and tp!1609733 tp!1609735))))

(assert (=> b!5825910 (= tp!1608367 e!3575830)))

(declare-fun b!5827684 () Bool)

(declare-fun tp!1609736 () Bool)

(declare-fun tp!1609734 () Bool)

(assert (=> b!5827684 (= e!3575830 (and tp!1609736 tp!1609734))))

(declare-fun b!5827683 () Bool)

(declare-fun tp!1609732 () Bool)

(assert (=> b!5827683 (= e!3575830 tp!1609732)))

(assert (= (and b!5825910 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32267 (regOne!32266 r!7292))))) b!5827681))

(assert (= (and b!5825910 ((_ is Concat!24722) (regOne!32266 (regOne!32267 (regOne!32266 r!7292))))) b!5827682))

(assert (= (and b!5825910 ((_ is Star!15877) (regOne!32266 (regOne!32267 (regOne!32266 r!7292))))) b!5827683))

(assert (= (and b!5825910 ((_ is Union!15877) (regOne!32266 (regOne!32267 (regOne!32266 r!7292))))) b!5827684))

(declare-fun b!5827685 () Bool)

(declare-fun e!3575831 () Bool)

(assert (=> b!5827685 (= e!3575831 tp_is_empty!41007)))

(declare-fun b!5827686 () Bool)

(declare-fun tp!1609738 () Bool)

(declare-fun tp!1609740 () Bool)

(assert (=> b!5827686 (= e!3575831 (and tp!1609738 tp!1609740))))

(assert (=> b!5825910 (= tp!1608369 e!3575831)))

(declare-fun b!5827688 () Bool)

(declare-fun tp!1609741 () Bool)

(declare-fun tp!1609739 () Bool)

(assert (=> b!5827688 (= e!3575831 (and tp!1609741 tp!1609739))))

(declare-fun b!5827687 () Bool)

(declare-fun tp!1609737 () Bool)

(assert (=> b!5827687 (= e!3575831 tp!1609737)))

(assert (= (and b!5825910 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32267 (regOne!32266 r!7292))))) b!5827685))

(assert (= (and b!5825910 ((_ is Concat!24722) (regTwo!32266 (regOne!32267 (regOne!32266 r!7292))))) b!5827686))

(assert (= (and b!5825910 ((_ is Star!15877) (regTwo!32266 (regOne!32267 (regOne!32266 r!7292))))) b!5827687))

(assert (= (and b!5825910 ((_ is Union!15877) (regTwo!32266 (regOne!32267 (regOne!32266 r!7292))))) b!5827688))

(declare-fun b!5827689 () Bool)

(declare-fun e!3575832 () Bool)

(assert (=> b!5827689 (= e!3575832 tp_is_empty!41007)))

(declare-fun b!5827690 () Bool)

(declare-fun tp!1609743 () Bool)

(declare-fun tp!1609745 () Bool)

(assert (=> b!5827690 (= e!3575832 (and tp!1609743 tp!1609745))))

(assert (=> b!5825971 (= tp!1608444 e!3575832)))

(declare-fun b!5827692 () Bool)

(declare-fun tp!1609746 () Bool)

(declare-fun tp!1609744 () Bool)

(assert (=> b!5827692 (= e!3575832 (and tp!1609746 tp!1609744))))

(declare-fun b!5827691 () Bool)

(declare-fun tp!1609742 () Bool)

(assert (=> b!5827691 (= e!3575832 tp!1609742)))

(assert (= (and b!5825971 ((_ is ElementMatch!15877) (reg!16206 (regOne!32267 (reg!16206 r!7292))))) b!5827689))

(assert (= (and b!5825971 ((_ is Concat!24722) (reg!16206 (regOne!32267 (reg!16206 r!7292))))) b!5827690))

(assert (= (and b!5825971 ((_ is Star!15877) (reg!16206 (regOne!32267 (reg!16206 r!7292))))) b!5827691))

(assert (= (and b!5825971 ((_ is Union!15877) (reg!16206 (regOne!32267 (reg!16206 r!7292))))) b!5827692))

(declare-fun b!5827693 () Bool)

(declare-fun e!3575833 () Bool)

(assert (=> b!5827693 (= e!3575833 tp_is_empty!41007)))

(declare-fun b!5827694 () Bool)

(declare-fun tp!1609748 () Bool)

(declare-fun tp!1609750 () Bool)

(assert (=> b!5827694 (= e!3575833 (and tp!1609748 tp!1609750))))

(assert (=> b!5825964 (= tp!1608436 e!3575833)))

(declare-fun b!5827696 () Bool)

(declare-fun tp!1609751 () Bool)

(declare-fun tp!1609749 () Bool)

(assert (=> b!5827696 (= e!3575833 (and tp!1609751 tp!1609749))))

(declare-fun b!5827695 () Bool)

(declare-fun tp!1609747 () Bool)

(assert (=> b!5827695 (= e!3575833 tp!1609747)))

(assert (= (and b!5825964 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827693))

(assert (= (and b!5825964 ((_ is Concat!24722) (reg!16206 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827694))

(assert (= (and b!5825964 ((_ is Star!15877) (reg!16206 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827695))

(assert (= (and b!5825964 ((_ is Union!15877) (reg!16206 (regTwo!32266 (regTwo!32267 r!7292))))) b!5827696))

(declare-fun b!5827697 () Bool)

(declare-fun e!3575834 () Bool)

(assert (=> b!5827697 (= e!3575834 tp_is_empty!41007)))

(declare-fun b!5827698 () Bool)

(declare-fun tp!1609753 () Bool)

(declare-fun tp!1609755 () Bool)

(assert (=> b!5827698 (= e!3575834 (and tp!1609753 tp!1609755))))

(assert (=> b!5825919 (= tp!1608376 e!3575834)))

(declare-fun b!5827700 () Bool)

(declare-fun tp!1609756 () Bool)

(declare-fun tp!1609754 () Bool)

(assert (=> b!5827700 (= e!3575834 (and tp!1609756 tp!1609754))))

(declare-fun b!5827699 () Bool)

(declare-fun tp!1609752 () Bool)

(assert (=> b!5827699 (= e!3575834 tp!1609752)))

(assert (= (and b!5825919 ((_ is ElementMatch!15877) (reg!16206 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827697))

(assert (= (and b!5825919 ((_ is Concat!24722) (reg!16206 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827698))

(assert (= (and b!5825919 ((_ is Star!15877) (reg!16206 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827699))

(assert (= (and b!5825919 ((_ is Union!15877) (reg!16206 (h!70254 (exprs!5761 (h!70255 zl!343)))))) b!5827700))

(declare-fun b!5827701 () Bool)

(declare-fun e!3575835 () Bool)

(assert (=> b!5827701 (= e!3575835 tp_is_empty!41007)))

(declare-fun b!5827702 () Bool)

(declare-fun tp!1609758 () Bool)

(declare-fun tp!1609760 () Bool)

(assert (=> b!5827702 (= e!3575835 (and tp!1609758 tp!1609760))))

(assert (=> b!5825980 (= tp!1608458 e!3575835)))

(declare-fun b!5827704 () Bool)

(declare-fun tp!1609761 () Bool)

(declare-fun tp!1609759 () Bool)

(assert (=> b!5827704 (= e!3575835 (and tp!1609761 tp!1609759))))

(declare-fun b!5827703 () Bool)

(declare-fun tp!1609757 () Bool)

(assert (=> b!5827703 (= e!3575835 tp!1609757)))

(assert (= (and b!5825980 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32267 (regTwo!32266 r!7292))))) b!5827701))

(assert (= (and b!5825980 ((_ is Concat!24722) (regOne!32267 (regOne!32267 (regTwo!32266 r!7292))))) b!5827702))

(assert (= (and b!5825980 ((_ is Star!15877) (regOne!32267 (regOne!32267 (regTwo!32266 r!7292))))) b!5827703))

(assert (= (and b!5825980 ((_ is Union!15877) (regOne!32267 (regOne!32267 (regTwo!32266 r!7292))))) b!5827704))

(declare-fun b!5827705 () Bool)

(declare-fun e!3575836 () Bool)

(assert (=> b!5827705 (= e!3575836 tp_is_empty!41007)))

(declare-fun b!5827706 () Bool)

(declare-fun tp!1609763 () Bool)

(declare-fun tp!1609765 () Bool)

(assert (=> b!5827706 (= e!3575836 (and tp!1609763 tp!1609765))))

(assert (=> b!5825980 (= tp!1608456 e!3575836)))

(declare-fun b!5827708 () Bool)

(declare-fun tp!1609766 () Bool)

(declare-fun tp!1609764 () Bool)

(assert (=> b!5827708 (= e!3575836 (and tp!1609766 tp!1609764))))

(declare-fun b!5827707 () Bool)

(declare-fun tp!1609762 () Bool)

(assert (=> b!5827707 (= e!3575836 tp!1609762)))

(assert (= (and b!5825980 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32267 (regTwo!32266 r!7292))))) b!5827705))

(assert (= (and b!5825980 ((_ is Concat!24722) (regTwo!32267 (regOne!32267 (regTwo!32266 r!7292))))) b!5827706))

(assert (= (and b!5825980 ((_ is Star!15877) (regTwo!32267 (regOne!32267 (regTwo!32266 r!7292))))) b!5827707))

(assert (= (and b!5825980 ((_ is Union!15877) (regTwo!32267 (regOne!32267 (regTwo!32266 r!7292))))) b!5827708))

(declare-fun b!5827709 () Bool)

(declare-fun e!3575837 () Bool)

(assert (=> b!5827709 (= e!3575837 tp_is_empty!41007)))

(declare-fun b!5827710 () Bool)

(declare-fun tp!1609768 () Bool)

(declare-fun tp!1609770 () Bool)

(assert (=> b!5827710 (= e!3575837 (and tp!1609768 tp!1609770))))

(assert (=> b!5825956 (= tp!1608427 e!3575837)))

(declare-fun b!5827712 () Bool)

(declare-fun tp!1609771 () Bool)

(declare-fun tp!1609769 () Bool)

(assert (=> b!5827712 (= e!3575837 (and tp!1609771 tp!1609769))))

(declare-fun b!5827711 () Bool)

(declare-fun tp!1609767 () Bool)

(assert (=> b!5827711 (= e!3575837 tp!1609767)))

(assert (= (and b!5825956 ((_ is ElementMatch!15877) (h!70254 (t!377285 (exprs!5761 setElem!39378))))) b!5827709))

(assert (= (and b!5825956 ((_ is Concat!24722) (h!70254 (t!377285 (exprs!5761 setElem!39378))))) b!5827710))

(assert (= (and b!5825956 ((_ is Star!15877) (h!70254 (t!377285 (exprs!5761 setElem!39378))))) b!5827711))

(assert (= (and b!5825956 ((_ is Union!15877) (h!70254 (t!377285 (exprs!5761 setElem!39378))))) b!5827712))

(declare-fun b!5827713 () Bool)

(declare-fun e!3575838 () Bool)

(declare-fun tp!1609772 () Bool)

(declare-fun tp!1609773 () Bool)

(assert (=> b!5827713 (= e!3575838 (and tp!1609772 tp!1609773))))

(assert (=> b!5825956 (= tp!1608428 e!3575838)))

(assert (= (and b!5825956 ((_ is Cons!63806) (t!377285 (t!377285 (exprs!5761 setElem!39378))))) b!5827713))

(declare-fun b!5827714 () Bool)

(declare-fun e!3575839 () Bool)

(assert (=> b!5827714 (= e!3575839 tp_is_empty!41007)))

(declare-fun b!5827715 () Bool)

(declare-fun tp!1609775 () Bool)

(declare-fun tp!1609777 () Bool)

(assert (=> b!5827715 (= e!3575839 (and tp!1609775 tp!1609777))))

(assert (=> b!5825933 (= tp!1608395 e!3575839)))

(declare-fun b!5827717 () Bool)

(declare-fun tp!1609778 () Bool)

(declare-fun tp!1609776 () Bool)

(assert (=> b!5827717 (= e!3575839 (and tp!1609778 tp!1609776))))

(declare-fun b!5827716 () Bool)

(declare-fun tp!1609774 () Bool)

(assert (=> b!5827716 (= e!3575839 tp!1609774)))

(assert (= (and b!5825933 ((_ is ElementMatch!15877) (reg!16206 (reg!16206 (regOne!32267 r!7292))))) b!5827714))

(assert (= (and b!5825933 ((_ is Concat!24722) (reg!16206 (reg!16206 (regOne!32267 r!7292))))) b!5827715))

(assert (= (and b!5825933 ((_ is Star!15877) (reg!16206 (reg!16206 (regOne!32267 r!7292))))) b!5827716))

(assert (= (and b!5825933 ((_ is Union!15877) (reg!16206 (reg!16206 (regOne!32267 r!7292))))) b!5827717))

(declare-fun b!5827718 () Bool)

(declare-fun e!3575840 () Bool)

(assert (=> b!5827718 (= e!3575840 tp_is_empty!41007)))

(declare-fun b!5827719 () Bool)

(declare-fun tp!1609780 () Bool)

(declare-fun tp!1609782 () Bool)

(assert (=> b!5827719 (= e!3575840 (and tp!1609780 tp!1609782))))

(assert (=> b!5825957 (= tp!1608429 e!3575840)))

(declare-fun b!5827721 () Bool)

(declare-fun tp!1609783 () Bool)

(declare-fun tp!1609781 () Bool)

(assert (=> b!5827721 (= e!3575840 (and tp!1609783 tp!1609781))))

(declare-fun b!5827720 () Bool)

(declare-fun tp!1609779 () Bool)

(assert (=> b!5827720 (= e!3575840 tp!1609779)))

(assert (= (and b!5825957 ((_ is ElementMatch!15877) (h!70254 (exprs!5761 (h!70255 (t!377286 zl!343)))))) b!5827718))

(assert (= (and b!5825957 ((_ is Concat!24722) (h!70254 (exprs!5761 (h!70255 (t!377286 zl!343)))))) b!5827719))

(assert (= (and b!5825957 ((_ is Star!15877) (h!70254 (exprs!5761 (h!70255 (t!377286 zl!343)))))) b!5827720))

(assert (= (and b!5825957 ((_ is Union!15877) (h!70254 (exprs!5761 (h!70255 (t!377286 zl!343)))))) b!5827721))

(declare-fun b!5827722 () Bool)

(declare-fun e!3575841 () Bool)

(declare-fun tp!1609784 () Bool)

(declare-fun tp!1609785 () Bool)

(assert (=> b!5827722 (= e!3575841 (and tp!1609784 tp!1609785))))

(assert (=> b!5825957 (= tp!1608430 e!3575841)))

(assert (= (and b!5825957 ((_ is Cons!63806) (t!377285 (exprs!5761 (h!70255 (t!377286 zl!343)))))) b!5827722))

(declare-fun b!5827723 () Bool)

(declare-fun e!3575842 () Bool)

(assert (=> b!5827723 (= e!3575842 tp_is_empty!41007)))

(declare-fun b!5827724 () Bool)

(declare-fun tp!1609787 () Bool)

(declare-fun tp!1609789 () Bool)

(assert (=> b!5827724 (= e!3575842 (and tp!1609787 tp!1609789))))

(assert (=> b!5825912 (= tp!1608370 e!3575842)))

(declare-fun b!5827726 () Bool)

(declare-fun tp!1609790 () Bool)

(declare-fun tp!1609788 () Bool)

(assert (=> b!5827726 (= e!3575842 (and tp!1609790 tp!1609788))))

(declare-fun b!5827725 () Bool)

(declare-fun tp!1609786 () Bool)

(assert (=> b!5827725 (= e!3575842 tp!1609786)))

(assert (= (and b!5825912 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32267 (regOne!32266 r!7292))))) b!5827723))

(assert (= (and b!5825912 ((_ is Concat!24722) (regOne!32267 (regOne!32267 (regOne!32266 r!7292))))) b!5827724))

(assert (= (and b!5825912 ((_ is Star!15877) (regOne!32267 (regOne!32267 (regOne!32266 r!7292))))) b!5827725))

(assert (= (and b!5825912 ((_ is Union!15877) (regOne!32267 (regOne!32267 (regOne!32266 r!7292))))) b!5827726))

(declare-fun b!5827727 () Bool)

(declare-fun e!3575843 () Bool)

(assert (=> b!5827727 (= e!3575843 tp_is_empty!41007)))

(declare-fun b!5827728 () Bool)

(declare-fun tp!1609792 () Bool)

(declare-fun tp!1609794 () Bool)

(assert (=> b!5827728 (= e!3575843 (and tp!1609792 tp!1609794))))

(assert (=> b!5825912 (= tp!1608368 e!3575843)))

(declare-fun b!5827730 () Bool)

(declare-fun tp!1609795 () Bool)

(declare-fun tp!1609793 () Bool)

(assert (=> b!5827730 (= e!3575843 (and tp!1609795 tp!1609793))))

(declare-fun b!5827729 () Bool)

(declare-fun tp!1609791 () Bool)

(assert (=> b!5827729 (= e!3575843 tp!1609791)))

(assert (= (and b!5825912 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32267 (regOne!32266 r!7292))))) b!5827727))

(assert (= (and b!5825912 ((_ is Concat!24722) (regTwo!32267 (regOne!32267 (regOne!32266 r!7292))))) b!5827728))

(assert (= (and b!5825912 ((_ is Star!15877) (regTwo!32267 (regOne!32267 (regOne!32266 r!7292))))) b!5827729))

(assert (= (and b!5825912 ((_ is Union!15877) (regTwo!32267 (regOne!32267 (regOne!32266 r!7292))))) b!5827730))

(declare-fun b!5827731 () Bool)

(declare-fun e!3575844 () Bool)

(assert (=> b!5827731 (= e!3575844 tp_is_empty!41007)))

(declare-fun b!5827732 () Bool)

(declare-fun tp!1609797 () Bool)

(declare-fun tp!1609799 () Bool)

(assert (=> b!5827732 (= e!3575844 (and tp!1609797 tp!1609799))))

(assert (=> b!5825927 (= tp!1608389 e!3575844)))

(declare-fun b!5827734 () Bool)

(declare-fun tp!1609800 () Bool)

(declare-fun tp!1609798 () Bool)

(assert (=> b!5827734 (= e!3575844 (and tp!1609800 tp!1609798))))

(declare-fun b!5827733 () Bool)

(declare-fun tp!1609796 () Bool)

(assert (=> b!5827733 (= e!3575844 tp!1609796)))

(assert (= (and b!5825927 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32266 (regOne!32267 r!7292))))) b!5827731))

(assert (= (and b!5825927 ((_ is Concat!24722) (regOne!32266 (regTwo!32266 (regOne!32267 r!7292))))) b!5827732))

(assert (= (and b!5825927 ((_ is Star!15877) (regOne!32266 (regTwo!32266 (regOne!32267 r!7292))))) b!5827733))

(assert (= (and b!5825927 ((_ is Union!15877) (regOne!32266 (regTwo!32266 (regOne!32267 r!7292))))) b!5827734))

(declare-fun b!5827735 () Bool)

(declare-fun e!3575845 () Bool)

(assert (=> b!5827735 (= e!3575845 tp_is_empty!41007)))

(declare-fun b!5827736 () Bool)

(declare-fun tp!1609802 () Bool)

(declare-fun tp!1609804 () Bool)

(assert (=> b!5827736 (= e!3575845 (and tp!1609802 tp!1609804))))

(assert (=> b!5825927 (= tp!1608391 e!3575845)))

(declare-fun b!5827738 () Bool)

(declare-fun tp!1609805 () Bool)

(declare-fun tp!1609803 () Bool)

(assert (=> b!5827738 (= e!3575845 (and tp!1609805 tp!1609803))))

(declare-fun b!5827737 () Bool)

(declare-fun tp!1609801 () Bool)

(assert (=> b!5827737 (= e!3575845 tp!1609801)))

(assert (= (and b!5825927 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32266 (regOne!32267 r!7292))))) b!5827735))

(assert (= (and b!5825927 ((_ is Concat!24722) (regTwo!32266 (regTwo!32266 (regOne!32267 r!7292))))) b!5827736))

(assert (= (and b!5825927 ((_ is Star!15877) (regTwo!32266 (regTwo!32266 (regOne!32267 r!7292))))) b!5827737))

(assert (= (and b!5825927 ((_ is Union!15877) (regTwo!32266 (regTwo!32266 (regOne!32267 r!7292))))) b!5827738))

(declare-fun b!5827739 () Bool)

(declare-fun e!3575846 () Bool)

(assert (=> b!5827739 (= e!3575846 tp_is_empty!41007)))

(declare-fun b!5827740 () Bool)

(declare-fun tp!1609807 () Bool)

(declare-fun tp!1609809 () Bool)

(assert (=> b!5827740 (= e!3575846 (and tp!1609807 tp!1609809))))

(assert (=> b!5826014 (= tp!1608500 e!3575846)))

(declare-fun b!5827742 () Bool)

(declare-fun tp!1609810 () Bool)

(declare-fun tp!1609808 () Bool)

(assert (=> b!5827742 (= e!3575846 (and tp!1609810 tp!1609808))))

(declare-fun b!5827741 () Bool)

(declare-fun tp!1609806 () Bool)

(assert (=> b!5827741 (= e!3575846 tp!1609806)))

(assert (= (and b!5826014 ((_ is ElementMatch!15877) (regOne!32266 (reg!16206 (reg!16206 r!7292))))) b!5827739))

(assert (= (and b!5826014 ((_ is Concat!24722) (regOne!32266 (reg!16206 (reg!16206 r!7292))))) b!5827740))

(assert (= (and b!5826014 ((_ is Star!15877) (regOne!32266 (reg!16206 (reg!16206 r!7292))))) b!5827741))

(assert (= (and b!5826014 ((_ is Union!15877) (regOne!32266 (reg!16206 (reg!16206 r!7292))))) b!5827742))

(declare-fun b!5827743 () Bool)

(declare-fun e!3575847 () Bool)

(assert (=> b!5827743 (= e!3575847 tp_is_empty!41007)))

(declare-fun b!5827744 () Bool)

(declare-fun tp!1609812 () Bool)

(declare-fun tp!1609814 () Bool)

(assert (=> b!5827744 (= e!3575847 (and tp!1609812 tp!1609814))))

(assert (=> b!5826014 (= tp!1608502 e!3575847)))

(declare-fun b!5827746 () Bool)

(declare-fun tp!1609815 () Bool)

(declare-fun tp!1609813 () Bool)

(assert (=> b!5827746 (= e!3575847 (and tp!1609815 tp!1609813))))

(declare-fun b!5827745 () Bool)

(declare-fun tp!1609811 () Bool)

(assert (=> b!5827745 (= e!3575847 tp!1609811)))

(assert (= (and b!5826014 ((_ is ElementMatch!15877) (regTwo!32266 (reg!16206 (reg!16206 r!7292))))) b!5827743))

(assert (= (and b!5826014 ((_ is Concat!24722) (regTwo!32266 (reg!16206 (reg!16206 r!7292))))) b!5827744))

(assert (= (and b!5826014 ((_ is Star!15877) (regTwo!32266 (reg!16206 (reg!16206 r!7292))))) b!5827745))

(assert (= (and b!5826014 ((_ is Union!15877) (regTwo!32266 (reg!16206 (reg!16206 r!7292))))) b!5827746))

(declare-fun b!5827747 () Bool)

(declare-fun e!3575848 () Bool)

(assert (=> b!5827747 (= e!3575848 tp_is_empty!41007)))

(declare-fun b!5827748 () Bool)

(declare-fun tp!1609817 () Bool)

(declare-fun tp!1609819 () Bool)

(assert (=> b!5827748 (= e!3575848 (and tp!1609817 tp!1609819))))

(assert (=> b!5825941 (= tp!1608408 e!3575848)))

(declare-fun b!5827750 () Bool)

(declare-fun tp!1609820 () Bool)

(declare-fun tp!1609818 () Bool)

(assert (=> b!5827750 (= e!3575848 (and tp!1609820 tp!1609818))))

(declare-fun b!5827749 () Bool)

(declare-fun tp!1609816 () Bool)

(assert (=> b!5827749 (= e!3575848 tp!1609816)))

(assert (= (and b!5825941 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32266 (regOne!32266 r!7292))))) b!5827747))

(assert (= (and b!5825941 ((_ is Concat!24722) (regOne!32266 (regTwo!32266 (regOne!32266 r!7292))))) b!5827748))

(assert (= (and b!5825941 ((_ is Star!15877) (regOne!32266 (regTwo!32266 (regOne!32266 r!7292))))) b!5827749))

(assert (= (and b!5825941 ((_ is Union!15877) (regOne!32266 (regTwo!32266 (regOne!32266 r!7292))))) b!5827750))

(declare-fun b!5827751 () Bool)

(declare-fun e!3575849 () Bool)

(assert (=> b!5827751 (= e!3575849 tp_is_empty!41007)))

(declare-fun b!5827752 () Bool)

(declare-fun tp!1609822 () Bool)

(declare-fun tp!1609824 () Bool)

(assert (=> b!5827752 (= e!3575849 (and tp!1609822 tp!1609824))))

(assert (=> b!5825941 (= tp!1608410 e!3575849)))

(declare-fun b!5827754 () Bool)

(declare-fun tp!1609825 () Bool)

(declare-fun tp!1609823 () Bool)

(assert (=> b!5827754 (= e!3575849 (and tp!1609825 tp!1609823))))

(declare-fun b!5827753 () Bool)

(declare-fun tp!1609821 () Bool)

(assert (=> b!5827753 (= e!3575849 tp!1609821)))

(assert (= (and b!5825941 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32266 (regOne!32266 r!7292))))) b!5827751))

(assert (= (and b!5825941 ((_ is Concat!24722) (regTwo!32266 (regTwo!32266 (regOne!32266 r!7292))))) b!5827752))

(assert (= (and b!5825941 ((_ is Star!15877) (regTwo!32266 (regTwo!32266 (regOne!32266 r!7292))))) b!5827753))

(assert (= (and b!5825941 ((_ is Union!15877) (regTwo!32266 (regTwo!32266 (regOne!32266 r!7292))))) b!5827754))

(declare-fun b!5827755 () Bool)

(declare-fun e!3575850 () Bool)

(assert (=> b!5827755 (= e!3575850 tp_is_empty!41007)))

(declare-fun b!5827756 () Bool)

(declare-fun tp!1609827 () Bool)

(declare-fun tp!1609829 () Bool)

(assert (=> b!5827756 (= e!3575850 (and tp!1609827 tp!1609829))))

(assert (=> b!5826007 (= tp!1608489 e!3575850)))

(declare-fun b!5827758 () Bool)

(declare-fun tp!1609830 () Bool)

(declare-fun tp!1609828 () Bool)

(assert (=> b!5827758 (= e!3575850 (and tp!1609830 tp!1609828))))

(declare-fun b!5827757 () Bool)

(declare-fun tp!1609826 () Bool)

(assert (=> b!5827757 (= e!3575850 tp!1609826)))

(assert (= (and b!5826007 ((_ is ElementMatch!15877) (reg!16206 (regOne!32267 (regTwo!32267 r!7292))))) b!5827755))

(assert (= (and b!5826007 ((_ is Concat!24722) (reg!16206 (regOne!32267 (regTwo!32267 r!7292))))) b!5827756))

(assert (= (and b!5826007 ((_ is Star!15877) (reg!16206 (regOne!32267 (regTwo!32267 r!7292))))) b!5827757))

(assert (= (and b!5826007 ((_ is Union!15877) (reg!16206 (regOne!32267 (regTwo!32267 r!7292))))) b!5827758))

(declare-fun b!5827759 () Bool)

(declare-fun e!3575851 () Bool)

(assert (=> b!5827759 (= e!3575851 tp_is_empty!41007)))

(declare-fun b!5827760 () Bool)

(declare-fun tp!1609832 () Bool)

(declare-fun tp!1609834 () Bool)

(assert (=> b!5827760 (= e!3575851 (and tp!1609832 tp!1609834))))

(assert (=> b!5825998 (= tp!1608480 e!3575851)))

(declare-fun b!5827762 () Bool)

(declare-fun tp!1609835 () Bool)

(declare-fun tp!1609833 () Bool)

(assert (=> b!5827762 (= e!3575851 (and tp!1609835 tp!1609833))))

(declare-fun b!5827761 () Bool)

(declare-fun tp!1609831 () Bool)

(assert (=> b!5827761 (= e!3575851 tp!1609831)))

(assert (= (and b!5825998 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32266 (regTwo!32266 r!7292))))) b!5827759))

(assert (= (and b!5825998 ((_ is Concat!24722) (regOne!32266 (regOne!32266 (regTwo!32266 r!7292))))) b!5827760))

(assert (= (and b!5825998 ((_ is Star!15877) (regOne!32266 (regOne!32266 (regTwo!32266 r!7292))))) b!5827761))

(assert (= (and b!5825998 ((_ is Union!15877) (regOne!32266 (regOne!32266 (regTwo!32266 r!7292))))) b!5827762))

(declare-fun b!5827763 () Bool)

(declare-fun e!3575852 () Bool)

(assert (=> b!5827763 (= e!3575852 tp_is_empty!41007)))

(declare-fun b!5827764 () Bool)

(declare-fun tp!1609837 () Bool)

(declare-fun tp!1609839 () Bool)

(assert (=> b!5827764 (= e!3575852 (and tp!1609837 tp!1609839))))

(assert (=> b!5825998 (= tp!1608482 e!3575852)))

(declare-fun b!5827766 () Bool)

(declare-fun tp!1609840 () Bool)

(declare-fun tp!1609838 () Bool)

(assert (=> b!5827766 (= e!3575852 (and tp!1609840 tp!1609838))))

(declare-fun b!5827765 () Bool)

(declare-fun tp!1609836 () Bool)

(assert (=> b!5827765 (= e!3575852 tp!1609836)))

(assert (= (and b!5825998 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32266 (regTwo!32266 r!7292))))) b!5827763))

(assert (= (and b!5825998 ((_ is Concat!24722) (regTwo!32266 (regOne!32266 (regTwo!32266 r!7292))))) b!5827764))

(assert (= (and b!5825998 ((_ is Star!15877) (regTwo!32266 (regOne!32266 (regTwo!32266 r!7292))))) b!5827765))

(assert (= (and b!5825998 ((_ is Union!15877) (regTwo!32266 (regOne!32266 (regTwo!32266 r!7292))))) b!5827766))

(declare-fun b!5827767 () Bool)

(declare-fun e!3575853 () Bool)

(assert (=> b!5827767 (= e!3575853 tp_is_empty!41007)))

(declare-fun b!5827768 () Bool)

(declare-fun tp!1609842 () Bool)

(declare-fun tp!1609844 () Bool)

(assert (=> b!5827768 (= e!3575853 (and tp!1609842 tp!1609844))))

(assert (=> b!5825950 (= tp!1608417 e!3575853)))

(declare-fun b!5827770 () Bool)

(declare-fun tp!1609845 () Bool)

(declare-fun tp!1609843 () Bool)

(assert (=> b!5827770 (= e!3575853 (and tp!1609845 tp!1609843))))

(declare-fun b!5827769 () Bool)

(declare-fun tp!1609841 () Bool)

(assert (=> b!5827769 (= e!3575853 tp!1609841)))

(assert (= (and b!5825950 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32267 (regOne!32267 r!7292))))) b!5827767))

(assert (= (and b!5825950 ((_ is Concat!24722) (reg!16206 (regTwo!32267 (regOne!32267 r!7292))))) b!5827768))

(assert (= (and b!5825950 ((_ is Star!15877) (reg!16206 (regTwo!32267 (regOne!32267 r!7292))))) b!5827769))

(assert (= (and b!5825950 ((_ is Union!15877) (reg!16206 (regTwo!32267 (regOne!32267 r!7292))))) b!5827770))

(declare-fun b!5827771 () Bool)

(declare-fun e!3575854 () Bool)

(assert (=> b!5827771 (= e!3575854 tp_is_empty!41007)))

(declare-fun b!5827772 () Bool)

(declare-fun tp!1609847 () Bool)

(declare-fun tp!1609849 () Bool)

(assert (=> b!5827772 (= e!3575854 (and tp!1609847 tp!1609849))))

(assert (=> b!5825929 (= tp!1608392 e!3575854)))

(declare-fun b!5827774 () Bool)

(declare-fun tp!1609850 () Bool)

(declare-fun tp!1609848 () Bool)

(assert (=> b!5827774 (= e!3575854 (and tp!1609850 tp!1609848))))

(declare-fun b!5827773 () Bool)

(declare-fun tp!1609846 () Bool)

(assert (=> b!5827773 (= e!3575854 tp!1609846)))

(assert (= (and b!5825929 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32266 (regOne!32267 r!7292))))) b!5827771))

(assert (= (and b!5825929 ((_ is Concat!24722) (regOne!32267 (regTwo!32266 (regOne!32267 r!7292))))) b!5827772))

(assert (= (and b!5825929 ((_ is Star!15877) (regOne!32267 (regTwo!32266 (regOne!32267 r!7292))))) b!5827773))

(assert (= (and b!5825929 ((_ is Union!15877) (regOne!32267 (regTwo!32266 (regOne!32267 r!7292))))) b!5827774))

(declare-fun b!5827775 () Bool)

(declare-fun e!3575855 () Bool)

(assert (=> b!5827775 (= e!3575855 tp_is_empty!41007)))

(declare-fun b!5827776 () Bool)

(declare-fun tp!1609852 () Bool)

(declare-fun tp!1609854 () Bool)

(assert (=> b!5827776 (= e!3575855 (and tp!1609852 tp!1609854))))

(assert (=> b!5825929 (= tp!1608390 e!3575855)))

(declare-fun b!5827778 () Bool)

(declare-fun tp!1609855 () Bool)

(declare-fun tp!1609853 () Bool)

(assert (=> b!5827778 (= e!3575855 (and tp!1609855 tp!1609853))))

(declare-fun b!5827777 () Bool)

(declare-fun tp!1609851 () Bool)

(assert (=> b!5827777 (= e!3575855 tp!1609851)))

(assert (= (and b!5825929 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32266 (regOne!32267 r!7292))))) b!5827775))

(assert (= (and b!5825929 ((_ is Concat!24722) (regTwo!32267 (regTwo!32266 (regOne!32267 r!7292))))) b!5827776))

(assert (= (and b!5825929 ((_ is Star!15877) (regTwo!32267 (regTwo!32266 (regOne!32267 r!7292))))) b!5827777))

(assert (= (and b!5825929 ((_ is Union!15877) (regTwo!32267 (regTwo!32266 (regOne!32267 r!7292))))) b!5827778))

(declare-fun b!5827779 () Bool)

(declare-fun e!3575856 () Bool)

(assert (=> b!5827779 (= e!3575856 tp_is_empty!41007)))

(declare-fun b!5827780 () Bool)

(declare-fun tp!1609857 () Bool)

(declare-fun tp!1609859 () Bool)

(assert (=> b!5827780 (= e!3575856 (and tp!1609857 tp!1609859))))

(assert (=> b!5826016 (= tp!1608503 e!3575856)))

(declare-fun b!5827782 () Bool)

(declare-fun tp!1609860 () Bool)

(declare-fun tp!1609858 () Bool)

(assert (=> b!5827782 (= e!3575856 (and tp!1609860 tp!1609858))))

(declare-fun b!5827781 () Bool)

(declare-fun tp!1609856 () Bool)

(assert (=> b!5827781 (= e!3575856 tp!1609856)))

(assert (= (and b!5826016 ((_ is ElementMatch!15877) (regOne!32267 (reg!16206 (reg!16206 r!7292))))) b!5827779))

(assert (= (and b!5826016 ((_ is Concat!24722) (regOne!32267 (reg!16206 (reg!16206 r!7292))))) b!5827780))

(assert (= (and b!5826016 ((_ is Star!15877) (regOne!32267 (reg!16206 (reg!16206 r!7292))))) b!5827781))

(assert (= (and b!5826016 ((_ is Union!15877) (regOne!32267 (reg!16206 (reg!16206 r!7292))))) b!5827782))

(declare-fun b!5827783 () Bool)

(declare-fun e!3575857 () Bool)

(assert (=> b!5827783 (= e!3575857 tp_is_empty!41007)))

(declare-fun b!5827784 () Bool)

(declare-fun tp!1609862 () Bool)

(declare-fun tp!1609864 () Bool)

(assert (=> b!5827784 (= e!3575857 (and tp!1609862 tp!1609864))))

(assert (=> b!5826016 (= tp!1608501 e!3575857)))

(declare-fun b!5827786 () Bool)

(declare-fun tp!1609865 () Bool)

(declare-fun tp!1609863 () Bool)

(assert (=> b!5827786 (= e!3575857 (and tp!1609865 tp!1609863))))

(declare-fun b!5827785 () Bool)

(declare-fun tp!1609861 () Bool)

(assert (=> b!5827785 (= e!3575857 tp!1609861)))

(assert (= (and b!5826016 ((_ is ElementMatch!15877) (regTwo!32267 (reg!16206 (reg!16206 r!7292))))) b!5827783))

(assert (= (and b!5826016 ((_ is Concat!24722) (regTwo!32267 (reg!16206 (reg!16206 r!7292))))) b!5827784))

(assert (= (and b!5826016 ((_ is Star!15877) (regTwo!32267 (reg!16206 (reg!16206 r!7292))))) b!5827785))

(assert (= (and b!5826016 ((_ is Union!15877) (regTwo!32267 (reg!16206 (reg!16206 r!7292))))) b!5827786))

(declare-fun b!5827787 () Bool)

(declare-fun e!3575858 () Bool)

(declare-fun tp!1609866 () Bool)

(assert (=> b!5827787 (= e!3575858 (and tp_is_empty!41007 tp!1609866))))

(assert (=> b!5825966 (= tp!1608441 e!3575858)))

(assert (= (and b!5825966 ((_ is Cons!63808) (t!377287 (t!377287 (t!377287 s!2326))))) b!5827787))

(declare-fun b!5827789 () Bool)

(declare-fun e!3575860 () Bool)

(declare-fun tp!1609867 () Bool)

(assert (=> b!5827789 (= e!3575860 tp!1609867)))

(declare-fun e!3575859 () Bool)

(declare-fun tp!1609868 () Bool)

(declare-fun b!5827788 () Bool)

(assert (=> b!5827788 (= e!3575859 (and (inv!82939 (h!70255 (t!377286 res!2456090))) e!3575860 tp!1609868))))

(assert (=> b!5825843 (= tp!1608359 e!3575859)))

(assert (= b!5827788 b!5827789))

(assert (= (and b!5825843 ((_ is Cons!63807) (t!377286 res!2456090))) b!5827788))

(declare-fun m!6759232 () Bool)

(assert (=> b!5827788 m!6759232))

(declare-fun b!5827790 () Bool)

(declare-fun e!3575861 () Bool)

(assert (=> b!5827790 (= e!3575861 tp_is_empty!41007)))

(declare-fun b!5827791 () Bool)

(declare-fun tp!1609870 () Bool)

(declare-fun tp!1609872 () Bool)

(assert (=> b!5827791 (= e!3575861 (and tp!1609870 tp!1609872))))

(assert (=> b!5825991 (= tp!1608469 e!3575861)))

(declare-fun b!5827793 () Bool)

(declare-fun tp!1609873 () Bool)

(declare-fun tp!1609871 () Bool)

(assert (=> b!5827793 (= e!3575861 (and tp!1609873 tp!1609871))))

(declare-fun b!5827792 () Bool)

(declare-fun tp!1609869 () Bool)

(assert (=> b!5827792 (= e!3575861 tp!1609869)))

(assert (= (and b!5825991 ((_ is ElementMatch!15877) (reg!16206 (regOne!32266 (reg!16206 r!7292))))) b!5827790))

(assert (= (and b!5825991 ((_ is Concat!24722) (reg!16206 (regOne!32266 (reg!16206 r!7292))))) b!5827791))

(assert (= (and b!5825991 ((_ is Star!15877) (reg!16206 (regOne!32266 (reg!16206 r!7292))))) b!5827792))

(assert (= (and b!5825991 ((_ is Union!15877) (reg!16206 (regOne!32266 (reg!16206 r!7292))))) b!5827793))

(declare-fun b!5827794 () Bool)

(declare-fun e!3575862 () Bool)

(assert (=> b!5827794 (= e!3575862 tp_is_empty!41007)))

(declare-fun b!5827795 () Bool)

(declare-fun tp!1609875 () Bool)

(declare-fun tp!1609877 () Bool)

(assert (=> b!5827795 (= e!3575862 (and tp!1609875 tp!1609877))))

(assert (=> b!5825943 (= tp!1608411 e!3575862)))

(declare-fun b!5827797 () Bool)

(declare-fun tp!1609878 () Bool)

(declare-fun tp!1609876 () Bool)

(assert (=> b!5827797 (= e!3575862 (and tp!1609878 tp!1609876))))

(declare-fun b!5827796 () Bool)

(declare-fun tp!1609874 () Bool)

(assert (=> b!5827796 (= e!3575862 tp!1609874)))

(assert (= (and b!5825943 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32266 (regOne!32266 r!7292))))) b!5827794))

(assert (= (and b!5825943 ((_ is Concat!24722) (regOne!32267 (regTwo!32266 (regOne!32266 r!7292))))) b!5827795))

(assert (= (and b!5825943 ((_ is Star!15877) (regOne!32267 (regTwo!32266 (regOne!32266 r!7292))))) b!5827796))

(assert (= (and b!5825943 ((_ is Union!15877) (regOne!32267 (regTwo!32266 (regOne!32266 r!7292))))) b!5827797))

(declare-fun b!5827798 () Bool)

(declare-fun e!3575863 () Bool)

(assert (=> b!5827798 (= e!3575863 tp_is_empty!41007)))

(declare-fun b!5827799 () Bool)

(declare-fun tp!1609880 () Bool)

(declare-fun tp!1609882 () Bool)

(assert (=> b!5827799 (= e!3575863 (and tp!1609880 tp!1609882))))

(assert (=> b!5825943 (= tp!1608409 e!3575863)))

(declare-fun b!5827801 () Bool)

(declare-fun tp!1609883 () Bool)

(declare-fun tp!1609881 () Bool)

(assert (=> b!5827801 (= e!3575863 (and tp!1609883 tp!1609881))))

(declare-fun b!5827800 () Bool)

(declare-fun tp!1609879 () Bool)

(assert (=> b!5827800 (= e!3575863 tp!1609879)))

(assert (= (and b!5825943 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32266 (regOne!32266 r!7292))))) b!5827798))

(assert (= (and b!5825943 ((_ is Concat!24722) (regTwo!32267 (regTwo!32266 (regOne!32266 r!7292))))) b!5827799))

(assert (= (and b!5825943 ((_ is Star!15877) (regTwo!32267 (regTwo!32266 (regOne!32266 r!7292))))) b!5827800))

(assert (= (and b!5825943 ((_ is Union!15877) (regTwo!32267 (regTwo!32266 (regOne!32266 r!7292))))) b!5827801))

(declare-fun b!5827802 () Bool)

(declare-fun e!3575864 () Bool)

(assert (=> b!5827802 (= e!3575864 tp_is_empty!41007)))

(declare-fun b!5827803 () Bool)

(declare-fun tp!1609885 () Bool)

(declare-fun tp!1609887 () Bool)

(assert (=> b!5827803 (= e!3575864 (and tp!1609885 tp!1609887))))

(assert (=> b!5825982 (= tp!1608460 e!3575864)))

(declare-fun b!5827805 () Bool)

(declare-fun tp!1609888 () Bool)

(declare-fun tp!1609886 () Bool)

(assert (=> b!5827805 (= e!3575864 (and tp!1609888 tp!1609886))))

(declare-fun b!5827804 () Bool)

(declare-fun tp!1609884 () Bool)

(assert (=> b!5827804 (= e!3575864 tp!1609884)))

(assert (= (and b!5825982 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827802))

(assert (= (and b!5825982 ((_ is Concat!24722) (regOne!32266 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827803))

(assert (= (and b!5825982 ((_ is Star!15877) (regOne!32266 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827804))

(assert (= (and b!5825982 ((_ is Union!15877) (regOne!32266 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827805))

(declare-fun b!5827806 () Bool)

(declare-fun e!3575865 () Bool)

(assert (=> b!5827806 (= e!3575865 tp_is_empty!41007)))

(declare-fun b!5827807 () Bool)

(declare-fun tp!1609890 () Bool)

(declare-fun tp!1609892 () Bool)

(assert (=> b!5827807 (= e!3575865 (and tp!1609890 tp!1609892))))

(assert (=> b!5825982 (= tp!1608462 e!3575865)))

(declare-fun b!5827809 () Bool)

(declare-fun tp!1609893 () Bool)

(declare-fun tp!1609891 () Bool)

(assert (=> b!5827809 (= e!3575865 (and tp!1609893 tp!1609891))))

(declare-fun b!5827808 () Bool)

(declare-fun tp!1609889 () Bool)

(assert (=> b!5827808 (= e!3575865 tp!1609889)))

(assert (= (and b!5825982 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827806))

(assert (= (and b!5825982 ((_ is Concat!24722) (regTwo!32266 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827807))

(assert (= (and b!5825982 ((_ is Star!15877) (regTwo!32266 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827808))

(assert (= (and b!5825982 ((_ is Union!15877) (regTwo!32266 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827809))

(declare-fun b!5827810 () Bool)

(declare-fun e!3575866 () Bool)

(assert (=> b!5827810 (= e!3575866 tp_is_empty!41007)))

(declare-fun b!5827811 () Bool)

(declare-fun tp!1609895 () Bool)

(declare-fun tp!1609897 () Bool)

(assert (=> b!5827811 (= e!3575866 (and tp!1609895 tp!1609897))))

(assert (=> b!5826000 (= tp!1608483 e!3575866)))

(declare-fun b!5827813 () Bool)

(declare-fun tp!1609898 () Bool)

(declare-fun tp!1609896 () Bool)

(assert (=> b!5827813 (= e!3575866 (and tp!1609898 tp!1609896))))

(declare-fun b!5827812 () Bool)

(declare-fun tp!1609894 () Bool)

(assert (=> b!5827812 (= e!3575866 tp!1609894)))

(assert (= (and b!5826000 ((_ is ElementMatch!15877) (regOne!32267 (regOne!32266 (regTwo!32266 r!7292))))) b!5827810))

(assert (= (and b!5826000 ((_ is Concat!24722) (regOne!32267 (regOne!32266 (regTwo!32266 r!7292))))) b!5827811))

(assert (= (and b!5826000 ((_ is Star!15877) (regOne!32267 (regOne!32266 (regTwo!32266 r!7292))))) b!5827812))

(assert (= (and b!5826000 ((_ is Union!15877) (regOne!32267 (regOne!32266 (regTwo!32266 r!7292))))) b!5827813))

(declare-fun b!5827814 () Bool)

(declare-fun e!3575867 () Bool)

(assert (=> b!5827814 (= e!3575867 tp_is_empty!41007)))

(declare-fun b!5827815 () Bool)

(declare-fun tp!1609900 () Bool)

(declare-fun tp!1609902 () Bool)

(assert (=> b!5827815 (= e!3575867 (and tp!1609900 tp!1609902))))

(assert (=> b!5826000 (= tp!1608481 e!3575867)))

(declare-fun b!5827817 () Bool)

(declare-fun tp!1609903 () Bool)

(declare-fun tp!1609901 () Bool)

(assert (=> b!5827817 (= e!3575867 (and tp!1609903 tp!1609901))))

(declare-fun b!5827816 () Bool)

(declare-fun tp!1609899 () Bool)

(assert (=> b!5827816 (= e!3575867 tp!1609899)))

(assert (= (and b!5826000 ((_ is ElementMatch!15877) (regTwo!32267 (regOne!32266 (regTwo!32266 r!7292))))) b!5827814))

(assert (= (and b!5826000 ((_ is Concat!24722) (regTwo!32267 (regOne!32266 (regTwo!32266 r!7292))))) b!5827815))

(assert (= (and b!5826000 ((_ is Star!15877) (regTwo!32267 (regOne!32266 (regTwo!32266 r!7292))))) b!5827816))

(assert (= (and b!5826000 ((_ is Union!15877) (regTwo!32267 (regOne!32266 (regTwo!32266 r!7292))))) b!5827817))

(declare-fun b!5827818 () Bool)

(declare-fun e!3575868 () Bool)

(assert (=> b!5827818 (= e!3575868 tp_is_empty!41007)))

(declare-fun b!5827819 () Bool)

(declare-fun tp!1609905 () Bool)

(declare-fun tp!1609907 () Bool)

(assert (=> b!5827819 (= e!3575868 (and tp!1609905 tp!1609907))))

(assert (=> b!5825959 (= tp!1608432 e!3575868)))

(declare-fun b!5827821 () Bool)

(declare-fun tp!1609908 () Bool)

(declare-fun tp!1609906 () Bool)

(assert (=> b!5827821 (= e!3575868 (and tp!1609908 tp!1609906))))

(declare-fun b!5827820 () Bool)

(declare-fun tp!1609904 () Bool)

(assert (=> b!5827820 (= e!3575868 tp!1609904)))

(assert (= (and b!5825959 ((_ is ElementMatch!15877) (regOne!32266 (regOne!32266 (regTwo!32267 r!7292))))) b!5827818))

(assert (= (and b!5825959 ((_ is Concat!24722) (regOne!32266 (regOne!32266 (regTwo!32267 r!7292))))) b!5827819))

(assert (= (and b!5825959 ((_ is Star!15877) (regOne!32266 (regOne!32266 (regTwo!32267 r!7292))))) b!5827820))

(assert (= (and b!5825959 ((_ is Union!15877) (regOne!32266 (regOne!32266 (regTwo!32267 r!7292))))) b!5827821))

(declare-fun b!5827822 () Bool)

(declare-fun e!3575869 () Bool)

(assert (=> b!5827822 (= e!3575869 tp_is_empty!41007)))

(declare-fun b!5827823 () Bool)

(declare-fun tp!1609910 () Bool)

(declare-fun tp!1609912 () Bool)

(assert (=> b!5827823 (= e!3575869 (and tp!1609910 tp!1609912))))

(assert (=> b!5825959 (= tp!1608434 e!3575869)))

(declare-fun b!5827825 () Bool)

(declare-fun tp!1609913 () Bool)

(declare-fun tp!1609911 () Bool)

(assert (=> b!5827825 (= e!3575869 (and tp!1609913 tp!1609911))))

(declare-fun b!5827824 () Bool)

(declare-fun tp!1609909 () Bool)

(assert (=> b!5827824 (= e!3575869 tp!1609909)))

(assert (= (and b!5825959 ((_ is ElementMatch!15877) (regTwo!32266 (regOne!32266 (regTwo!32267 r!7292))))) b!5827822))

(assert (= (and b!5825959 ((_ is Concat!24722) (regTwo!32266 (regOne!32266 (regTwo!32267 r!7292))))) b!5827823))

(assert (= (and b!5825959 ((_ is Star!15877) (regTwo!32266 (regOne!32266 (regTwo!32267 r!7292))))) b!5827824))

(assert (= (and b!5825959 ((_ is Union!15877) (regTwo!32266 (regOne!32266 (regTwo!32267 r!7292))))) b!5827825))

(declare-fun b!5827826 () Bool)

(declare-fun e!3575870 () Bool)

(assert (=> b!5827826 (= e!3575870 tp_is_empty!41007)))

(declare-fun b!5827827 () Bool)

(declare-fun tp!1609915 () Bool)

(declare-fun tp!1609917 () Bool)

(assert (=> b!5827827 (= e!3575870 (and tp!1609915 tp!1609917))))

(assert (=> b!5825914 (= tp!1608372 e!3575870)))

(declare-fun b!5827829 () Bool)

(declare-fun tp!1609918 () Bool)

(declare-fun tp!1609916 () Bool)

(assert (=> b!5827829 (= e!3575870 (and tp!1609918 tp!1609916))))

(declare-fun b!5827828 () Bool)

(declare-fun tp!1609914 () Bool)

(assert (=> b!5827828 (= e!3575870 tp!1609914)))

(assert (= (and b!5825914 ((_ is ElementMatch!15877) (regOne!32266 (regTwo!32267 (regOne!32266 r!7292))))) b!5827826))

(assert (= (and b!5825914 ((_ is Concat!24722) (regOne!32266 (regTwo!32267 (regOne!32266 r!7292))))) b!5827827))

(assert (= (and b!5825914 ((_ is Star!15877) (regOne!32266 (regTwo!32267 (regOne!32266 r!7292))))) b!5827828))

(assert (= (and b!5825914 ((_ is Union!15877) (regOne!32266 (regTwo!32267 (regOne!32266 r!7292))))) b!5827829))

(declare-fun b!5827830 () Bool)

(declare-fun e!3575871 () Bool)

(assert (=> b!5827830 (= e!3575871 tp_is_empty!41007)))

(declare-fun b!5827831 () Bool)

(declare-fun tp!1609920 () Bool)

(declare-fun tp!1609922 () Bool)

(assert (=> b!5827831 (= e!3575871 (and tp!1609920 tp!1609922))))

(assert (=> b!5825914 (= tp!1608374 e!3575871)))

(declare-fun b!5827833 () Bool)

(declare-fun tp!1609923 () Bool)

(declare-fun tp!1609921 () Bool)

(assert (=> b!5827833 (= e!3575871 (and tp!1609923 tp!1609921))))

(declare-fun b!5827832 () Bool)

(declare-fun tp!1609919 () Bool)

(assert (=> b!5827832 (= e!3575871 tp!1609919)))

(assert (= (and b!5825914 ((_ is ElementMatch!15877) (regTwo!32266 (regTwo!32267 (regOne!32266 r!7292))))) b!5827830))

(assert (= (and b!5825914 ((_ is Concat!24722) (regTwo!32266 (regTwo!32267 (regOne!32266 r!7292))))) b!5827831))

(assert (= (and b!5825914 ((_ is Star!15877) (regTwo!32266 (regTwo!32267 (regOne!32266 r!7292))))) b!5827832))

(assert (= (and b!5825914 ((_ is Union!15877) (regTwo!32266 (regTwo!32267 (regOne!32266 r!7292))))) b!5827833))

(declare-fun b!5827834 () Bool)

(declare-fun e!3575872 () Bool)

(assert (=> b!5827834 (= e!3575872 tp_is_empty!41007)))

(declare-fun b!5827835 () Bool)

(declare-fun tp!1609925 () Bool)

(declare-fun tp!1609927 () Bool)

(assert (=> b!5827835 (= e!3575872 (and tp!1609925 tp!1609927))))

(assert (=> b!5825975 (= tp!1608449 e!3575872)))

(declare-fun b!5827837 () Bool)

(declare-fun tp!1609928 () Bool)

(declare-fun tp!1609926 () Bool)

(assert (=> b!5827837 (= e!3575872 (and tp!1609928 tp!1609926))))

(declare-fun b!5827836 () Bool)

(declare-fun tp!1609924 () Bool)

(assert (=> b!5827836 (= e!3575872 tp!1609924)))

(assert (= (and b!5825975 ((_ is ElementMatch!15877) (reg!16206 (regTwo!32267 (reg!16206 r!7292))))) b!5827834))

(assert (= (and b!5825975 ((_ is Concat!24722) (reg!16206 (regTwo!32267 (reg!16206 r!7292))))) b!5827835))

(assert (= (and b!5825975 ((_ is Star!15877) (reg!16206 (regTwo!32267 (reg!16206 r!7292))))) b!5827836))

(assert (= (and b!5825975 ((_ is Union!15877) (reg!16206 (regTwo!32267 (reg!16206 r!7292))))) b!5827837))

(declare-fun b!5827838 () Bool)

(declare-fun e!3575873 () Bool)

(declare-fun tp!1609929 () Bool)

(declare-fun tp!1609930 () Bool)

(assert (=> b!5827838 (= e!3575873 (and tp!1609929 tp!1609930))))

(assert (=> b!5825968 (= tp!1608442 e!3575873)))

(assert (= (and b!5825968 ((_ is Cons!63806) (exprs!5761 (h!70255 (t!377286 (t!377286 zl!343)))))) b!5827838))

(declare-fun b!5827839 () Bool)

(declare-fun e!3575874 () Bool)

(assert (=> b!5827839 (= e!3575874 tp_is_empty!41007)))

(declare-fun b!5827840 () Bool)

(declare-fun tp!1609932 () Bool)

(declare-fun tp!1609934 () Bool)

(assert (=> b!5827840 (= e!3575874 (and tp!1609932 tp!1609934))))

(assert (=> b!5825984 (= tp!1608463 e!3575874)))

(declare-fun b!5827842 () Bool)

(declare-fun tp!1609935 () Bool)

(declare-fun tp!1609933 () Bool)

(assert (=> b!5827842 (= e!3575874 (and tp!1609935 tp!1609933))))

(declare-fun b!5827841 () Bool)

(declare-fun tp!1609931 () Bool)

(assert (=> b!5827841 (= e!3575874 tp!1609931)))

(assert (= (and b!5825984 ((_ is ElementMatch!15877) (regOne!32267 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827839))

(assert (= (and b!5825984 ((_ is Concat!24722) (regOne!32267 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827840))

(assert (= (and b!5825984 ((_ is Star!15877) (regOne!32267 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827841))

(assert (= (and b!5825984 ((_ is Union!15877) (regOne!32267 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827842))

(declare-fun b!5827843 () Bool)

(declare-fun e!3575875 () Bool)

(assert (=> b!5827843 (= e!3575875 tp_is_empty!41007)))

(declare-fun b!5827844 () Bool)

(declare-fun tp!1609937 () Bool)

(declare-fun tp!1609939 () Bool)

(assert (=> b!5827844 (= e!3575875 (and tp!1609937 tp!1609939))))

(assert (=> b!5825984 (= tp!1608461 e!3575875)))

(declare-fun b!5827846 () Bool)

(declare-fun tp!1609940 () Bool)

(declare-fun tp!1609938 () Bool)

(assert (=> b!5827846 (= e!3575875 (and tp!1609940 tp!1609938))))

(declare-fun b!5827845 () Bool)

(declare-fun tp!1609936 () Bool)

(assert (=> b!5827845 (= e!3575875 tp!1609936)))

(assert (= (and b!5825984 ((_ is ElementMatch!15877) (regTwo!32267 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827843))

(assert (= (and b!5825984 ((_ is Concat!24722) (regTwo!32267 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827844))

(assert (= (and b!5825984 ((_ is Star!15877) (regTwo!32267 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827845))

(assert (= (and b!5825984 ((_ is Union!15877) (regTwo!32267 (regTwo!32267 (regTwo!32266 r!7292))))) b!5827846))

(declare-fun b_lambda!219681 () Bool)

(assert (= b_lambda!219677 (or d!1832608 b_lambda!219681)))

(declare-fun bs!1374444 () Bool)

(declare-fun d!1833130 () Bool)

(assert (= bs!1374444 (and d!1833130 d!1832608)))

(assert (=> bs!1374444 (= (dynLambda!24970 lambda!318804 (h!70254 (t!377285 (unfocusZipperList!1298 zl!343)))) (validRegex!7613 (h!70254 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(declare-fun m!6759234 () Bool)

(assert (=> bs!1374444 m!6759234))

(assert (=> b!5827162 d!1833130))

(declare-fun b_lambda!219683 () Bool)

(assert (= b_lambda!219661 (or d!1832714 b_lambda!219683)))

(declare-fun bs!1374445 () Bool)

(declare-fun d!1833132 () Bool)

(assert (= bs!1374445 (and d!1833132 d!1832714)))

(assert (=> bs!1374445 (= (dynLambda!24970 lambda!318820 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343))))) (validRegex!7613 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(declare-fun m!6759236 () Bool)

(assert (=> bs!1374445 m!6759236))

(assert (=> b!5826943 d!1833132))

(declare-fun b_lambda!219685 () Bool)

(assert (= b_lambda!219663 (or d!1832744 b_lambda!219685)))

(declare-fun bs!1374446 () Bool)

(declare-fun d!1833134 () Bool)

(assert (= bs!1374446 (and d!1833134 d!1832744)))

(assert (=> bs!1374446 (= (dynLambda!24970 lambda!318824 (h!70254 (exprs!5761 setElem!39384))) (validRegex!7613 (h!70254 (exprs!5761 setElem!39384))))))

(declare-fun m!6759238 () Bool)

(assert (=> bs!1374446 m!6759238))

(assert (=> b!5826945 d!1833134))

(declare-fun b_lambda!219687 () Bool)

(assert (= b_lambda!219679 (or d!1832568 b_lambda!219687)))

(declare-fun bs!1374447 () Bool)

(declare-fun d!1833136 () Bool)

(assert (= bs!1374447 (and d!1833136 d!1832568)))

(assert (=> bs!1374447 (= (dynLambda!24970 lambda!318794 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343))))) (validRegex!7613 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(assert (=> bs!1374447 m!6759236))

(assert (=> b!5827218 d!1833136))

(declare-fun b_lambda!219689 () Bool)

(assert (= b_lambda!219671 (or d!1832606 b_lambda!219689)))

(declare-fun bs!1374448 () Bool)

(declare-fun d!1833138 () Bool)

(assert (= bs!1374448 (and d!1833138 d!1832606)))

(assert (=> bs!1374448 (= (dynLambda!24970 lambda!318801 (h!70254 (t!377285 (exprs!5761 setElem!39378)))) (validRegex!7613 (h!70254 (t!377285 (exprs!5761 setElem!39378)))))))

(declare-fun m!6759240 () Bool)

(assert (=> bs!1374448 m!6759240))

(assert (=> b!5827084 d!1833138))

(declare-fun b_lambda!219691 () Bool)

(assert (= b_lambda!219665 (or d!1832612 b_lambda!219691)))

(declare-fun bs!1374449 () Bool)

(declare-fun d!1833140 () Bool)

(assert (= bs!1374449 (and d!1833140 d!1832612)))

(assert (=> bs!1374449 (= (dynLambda!24970 lambda!318810 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343))))) (validRegex!7613 (h!70254 (t!377285 (exprs!5761 (h!70255 zl!343))))))))

(assert (=> bs!1374449 m!6759236))

(assert (=> b!5826962 d!1833140))

(declare-fun b_lambda!219693 () Bool)

(assert (= b_lambda!219669 (or d!1832792 b_lambda!219693)))

(declare-fun bs!1374450 () Bool)

(declare-fun d!1833142 () Bool)

(assert (= bs!1374450 (and d!1833142 d!1832792)))

(assert (=> bs!1374450 (= (dynLambda!24970 lambda!318828 (h!70254 (t!377285 (unfocusZipperList!1298 zl!343)))) (validRegex!7613 (h!70254 (t!377285 (unfocusZipperList!1298 zl!343)))))))

(assert (=> bs!1374450 m!6759234))

(assert (=> b!5827045 d!1833142))

(declare-fun b_lambda!219695 () Bool)

(assert (= b_lambda!219675 (or d!1832610 b_lambda!219695)))

(declare-fun bs!1374451 () Bool)

(declare-fun d!1833144 () Bool)

(assert (= bs!1374451 (and d!1833144 d!1832610)))

(assert (=> bs!1374451 (= (dynLambda!24970 lambda!318807 (h!70254 (t!377285 lt!2302619))) (validRegex!7613 (h!70254 (t!377285 lt!2302619))))))

(declare-fun m!6759242 () Bool)

(assert (=> bs!1374451 m!6759242))

(assert (=> b!5827127 d!1833144))

(declare-fun b_lambda!219697 () Bool)

(assert (= b_lambda!219667 (or d!1832774 b_lambda!219697)))

(declare-fun bs!1374452 () Bool)

(declare-fun d!1833146 () Bool)

(assert (= bs!1374452 (and d!1833146 d!1832774)))

(assert (=> bs!1374452 (= (dynLambda!24970 lambda!318827 (h!70254 (exprs!5761 (h!70255 (t!377286 zl!343))))) (validRegex!7613 (h!70254 (exprs!5761 (h!70255 (t!377286 zl!343))))))))

(declare-fun m!6759244 () Bool)

(assert (=> bs!1374452 m!6759244))

(assert (=> b!5826993 d!1833146))

(declare-fun b_lambda!219699 () Bool)

(assert (= b_lambda!219673 (or d!1832742 b_lambda!219699)))

(declare-fun bs!1374453 () Bool)

(declare-fun d!1833148 () Bool)

(assert (= bs!1374453 (and d!1833148 d!1832742)))

(assert (=> bs!1374453 (= (dynLambda!24970 lambda!318823 (h!70254 lt!2302635)) (validRegex!7613 (h!70254 lt!2302635)))))

(declare-fun m!6759246 () Bool)

(assert (=> bs!1374453 m!6759246))

(assert (=> b!5827113 d!1833148))

(check-sat (not b!5827807) (not b!5827338) (not b!5827129) (not b!5827474) (not bs!1374446) (not b!5827234) (not b!5827486) (not b!5827833) (not b!5826946) (not b!5826937) (not b!5827638) (not b!5827107) (not b!5827741) (not bm!455136) (not b!5827333) (not b!5827281) (not d!1833118) (not b!5827520) (not d!1833078) (not b!5827438) (not b!5827803) (not bm!455097) (not b!5827289) (not b!5827555) (not b!5827712) (not bm!455139) (not b!5826982) (not bm!455148) (not b!5827158) (not b!5827838) (not b!5827837) (not b!5827650) (not b!5827297) (not b!5827420) (not b!5827153) (not b_lambda!219697) (not b!5827753) (not b!5827384) (not b!5827178) (not b!5827332) (not b!5827440) (not b_lambda!219615) (not b!5827692) (not bm!455124) (not d!1833034) (not b!5827660) (not b!5827827) (not d!1833094) (not b!5827732) (not b!5826963) (not b!5827488) (not b!5827536) (not b!5827117) (not b!5827781) (not bm!455090) (not b!5827754) (not b!5827766) (not b!5827618) (not b!5827631) (not b!5827680) (not b!5827480) (not b!5827514) (not b!5827756) (not b!5827782) (not bs!1374449) (not b!5827607) (not b!5827477) (not b!5827835) (not b!5827750) (not b!5827598) (not b!5827632) (not b!5827821) (not b!5827309) (not b!5827046) (not d!1833008) (not b!5827393) (not b!5827590) (not b!5827277) (not bm!455099) (not bs!1374451) (not b!5827481) (not b!5827136) (not b!5827313) (not b!5827585) (not b!5827643) (not b!5827170) (not b!5827400) (not d!1833086) (not b!5827365) (not b!5827499) (not b!5827505) (not b!5827528) (not b!5827394) (not b!5827579) (not b!5827409) (not b!5827780) (not b!5827310) (not b!5827719) (not bm!455133) (not b!5827356) (not b!5827350) (not bm!455143) (not b!5827654) (not b!5827410) (not b!5827308) (not b!5827240) (not b!5827125) (not b!5827369) (not b!5827300) (not b!5827346) (not b!5827326) (not b!5827292) (not b!5827639) (not b!5827825) (not b!5827336) (not b!5827511) (not b!5827776) (not b!5827823) (not b!5827543) (not b!5827322) (not b!5827169) (not bm!455138) (not b!5827144) (not bm!455142) (not b!5827800) (not b!5827624) (not b!5827278) (not b!5827417) (not b!5827120) (not b!5827752) (not b!5827696) (not bm!455149) (not b!5827567) (not b!5827304) (not b_lambda!219693) (not b!5827686) (not b!5827713) (not b!5827298) (not b!5827302) (not b!5827524) (not b!5827548) (not b!5827174) (not b!5827506) (not b!5827510) (not b!5827348) (not b!5827324) (not bm!455093) (not bm!455118) (not b!5827651) (not b!5827493) (not b!5827695) (not b!5827736) (not b!5827635) (not b!5827390) (not bm!455116) (not d!1833040) (not b!5827354) (not b!5827600) (not b!5827334) (not b_lambda!219689) (not bm!455077) (not b!5827778) (not b!5827690) (not b!5827465) (not b!5827610) (not bs!1374452) (not b!5827382) (not b!5827203) (not bs!1374453) (not b!5827516) (not b!5827533) (not b!5827503) (not b!5827703) (not b!5827578) (not bm!455127) (not b!5827389) (not b!5827284) (not b!5827710) (not b!5827717) (not b!5827418) (not b!5827366) (not b!5827699) (not b!5827406) (not d!1833090) (not b!5827698) (not b!5827706) (not b!5827824) (not b!5827786) (not b!5827470) (not b!5827192) (not b!5827559) (not b!5827522) (not b_lambda!219687) (not b!5827341) (not b!5827245) (not b!5827640) (not b!5827412) (not b!5827186) (not bm!455107) (not b!5827494) (not bs!1374445) (not bm!455146) (not b!5827392) (not b!5827815) (not b!5827179) (not b!5827290) (not b!5827799) (not b!5827708) (not b!5827587) (not b!5827525) (not b!5827642) (not b!5827682) (not b!5827596) (not b!5827742) (not b!5827563) (not b!5827154) (not b!5827484) (not bm!455103) (not b!5827361) (not b!5827362) (not bm!455102) (not b!5827678) (not b!5827672) (not d!1833108) (not b!5827583) (not b!5827402) (not b!5827785) (not b!5827156) (not b!5827489) (not b!5827647) (not bm!455123) (not b!5827405) (not b_lambda!219695) (not b!5827725) (not b!5827828) (not d!1833122) (not b!5827340) (not b!5827801) (not b!5827434) (not b!5827547) (not b!5827187) (not bm!455091) (not b!5827098) (not bm!455122) (not b!5827612) (not b_lambda!219681) (not b!5827765) (not b!5827523) (not bm!455141) (not b!5827535) (not b!5827328) (not b!5827432) (not b!5827748) (not b!5827659) (not b!5827122) (not b!5827288) (not b!5827183) (not bm!455096) (not b!5827694) (not b!5827811) (not b!5827606) (not b!5827490) (not b!5827330) (not b!5827602) (not b!5827820) (not b!5827165) (not b!5827385) (not b!5827360) (not b!5827448) (not b_lambda!219683) (not bm!455109) (not b!5827679) (not bm!455129) (not b!5827545) (not d!1833092) (not b!5827358) (not b!5827502) (not b!5827456) (not b!5827667) (not b!5827561) (not b!5827707) (not b!5827469) (not b!5827711) (not b!5827364) (not b!5827774) (not b!5827594) (not b!5827842) (not b!5827372) (not b!5827636) (not b!5827441) (not bm!455145) (not b!5827604) (not bm!455104) (not d!1833020) (not b!5827076) (not b!5827733) (not b_lambda!219699) (not b!5827813) (not b!5827325) (not b!5827337) (not b!5827687) (not b!5827620) (not b!5826956) (not b!5826944) (not b!5827421) (not b!5827314) (not b!5827513) (not b!5827294) (not b!5827623) (not b!5827541) (not b!5827509) (not bs!1374444) (not d!1832990) (not b!5827551) (not b!5827581) (not b!5827764) (not b!5827212) (not b!5827589) (not d!1833080) (not b!5827485) (not b!5827566) (not b!5827726) (not b!5827468) (not bm!455085) (not bm!455094) (not b!5827173) (not b!5827749) (not bs!1374448) (not b!5827321) (not b!5827591) (not b!5827634) (not b!5827762) (not b!5827700) (not b!5827845) (not b!5827556) (not b!5827626) (not b!5827126) (not b!5827772) (not b!5827329) (not b!5827722) (not d!1833054) (not b!5827374) (not b!5827437) (not b!5827430) (not b!5827664) (not b!5827768) (not b!5827769) (not b!5827670) (not b!5827381) (not b!5827808) (not bm!455110) (not b!5827809) (not bs!1374450) (not b!5827454) (not b!5827416) (not b!5827476) (not b!5827644) (not b!5827829) (not b!5827453) (not b!5827422) (not b!5827788) (not bm!455069) (not b!5827219) (not b!5827452) (not b!5827464) (not bm!455100) (not b!5827270) (not b!5827688) (not b!5827159) (not b!5827130) (not b!5827721) (not b!5827797) (not b!5827380) (not b!5826967) (not b!5827342) (not b!5827293) (not b!5827312) (not d!1832986) (not b!5827429) (not b!5827085) (not b!5827720) (not b!5827368) (not b!5827433) (not b!5827059) (not bm!455086) (not b!5827846) (not b!5827461) (not bm!455080) (not b!5827123) (not b!5827131) (not b!5827497) (not b!5827030) (not b_lambda!219619) (not b!5827789) (not b!5827611) (not bm!455130) (not b!5827819) (not bm!455117) (not b!5827466) (not b!5827445) (not b!5827627) (not b!5827674) (not b!5827816) (not b!5827413) (not b!5827791) (not b!5827478) (not bm!455078) (not b!5827128) (not b!5827676) (not b!5827021) (not b!5827552) (not b!5827442) (not bm!455140) (not b!5827656) (not b!5827616) (not b!5827805) (not b!5827760) (not b!5827436) (not b!5827704) (not bm!455132) (not b!5827730) (not b!5827675) tp_is_empty!41007 (not b!5827378) (not bm!455075) (not b!5827646) (not setNonEmpty!39388) (not b!5827491) (not b!5827658) (not b!5827301) (not bm!455079) (not b!5827777) (not b!5827549) (not b!5827352) (not b!5827571) (not b!5827177) (not b!5827577) (not b!5827663) (not b_lambda!219691) (not b!5827373) (not b!5827296) (not b!5827570) (not b!5827565) (not b!5827495) (not bm!455088) (not b!5827305) (not b!5827738) (not b!5827285) (not b!5827831) (not b!5827648) (not b!5827595) (not b!5827573) (not b!5827574) (not b!5827457) (not b!5827428) (not d!1833088) (not b!5827662) (not bm!455072) (not b!5827462) (not b!5827050) (not b!5827734) (not b!5827458) (not b!5827593) (not b!5827761) (not bm!455135) (not d!1833058) (not d!1833082) (not b!5827586) (not bm!455068) (not b!5827619) (not b!5827569) (not b!5826952) (not b!5827544) (not b!5826987) (not b!5827172) (not b!5827740) (not b!5827396) (not b!5827114) (not b!5827728) (not b!5826994) (not b_lambda!219685) (not b!5827716) (not b!5827537) (not b!5827652) (not b!5827386) (not b!5827724) (not b!5827792) (not b!5827796) (not b!5827404) (not b!5827784) (not b!5827770) (not b!5827426) (not b!5827089) (not b!5827757) (not b!5827787) (not d!1833066) (not b!5827370) (not b!5827320) (not b!5827844) (not b!5827068) (not bm!455112) (not b!5827401) (not b!5827539) (not b!5827450) (not b!5827444) (not b!5827424) (not b!5827628) (not b!5827527) (not b!5827531) (not b!5827557) (not b!5827282) (not b!5827155) (not bm!455087) (not b!5827582) (not b!5827630) (not b!5827116) (not b!5827812) (not b!5827841) (not b!5827615) (not b!5827804) (not d!1833068) (not b!5827553) (not b!5827498) (not b!5827318) (not b!5827519) (not b!5827344) (not b!5827622) (not b!5827793) (not b!5827832) (not b!5827529) (not b!5827817) (not b!5827316) (not b!5827261) (not b!5827758) (not b!5826976) (not b!5827306) (not b!5827164) (not b!5827558) (not b!5827408) (not b!5827286) (not b!5827118) (not b!5827540) (not b!5827446) (not b!5827317) (not b_lambda!219617) (not bm!455113) (not b!5827603) (not b!5827377) (not b!5827745) (not b!5827115) (not b!5827016) (not b!5827684) (not b!5827482) (not b!5827357) (not b!5827608) (not bs!1374447) (not b!5827501) (not b!5827507) (not b!5827230) (not b!5827376) (not b!5827715) (not bm!455115) (not bm!455071) (not b!5827397) (not b!5827388) (not b!5827515) (not b!5827702) (not bm!455119) (not b!5827614) (not b!5827691) (not b!5827223) (not b!5827746) (not b!5827562) (not b!5827532) (not b!5827167) (not b!5827666) (not b!5827683) (not b!5827353) (not b!5827161) (not b_lambda!219613) (not b!5827449) (not b!5827163) (not b!5827472) (not b_lambda!219611) (not b!5827398) (not b!5827575) (not b!5827425) (not b!5827473) (not b!5827039) (not b!5827744) (not b!5827280) (not b!5827460) (not b!5827655) (not b!5827836) (not b!5827773) (not b!5827840) (not b!5827518) (not b!5827599) (not bm!455074) (not b!5827729) (not b!5827737) (not b!5827345) (not b!5827671) (not b!5827349) (not b!5827668) (not b!5827795) (not b!5827414))
(check-sat)
