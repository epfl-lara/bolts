; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!651580 () Bool)

(assert start!651580)

(declare-fun b!6718097 () Bool)

(assert (=> b!6718097 true))

(assert (=> b!6718097 true))

(declare-fun lambda!376826 () Int)

(declare-fun lambda!376825 () Int)

(assert (=> b!6718097 (not (= lambda!376826 lambda!376825))))

(assert (=> b!6718097 true))

(assert (=> b!6718097 true))

(declare-fun lambda!376827 () Int)

(assert (=> b!6718097 (not (= lambda!376827 lambda!376825))))

(assert (=> b!6718097 (not (= lambda!376827 lambda!376826))))

(assert (=> b!6718097 true))

(assert (=> b!6718097 true))

(declare-fun res!2749316 () Bool)

(declare-fun e!4059588 () Bool)

(assert (=> start!651580 (=> (not res!2749316) (not e!4059588))))

(declare-datatypes ((C!33364 0))(
  ( (C!33365 (val!26384 Int)) )
))
(declare-datatypes ((Regex!16547 0))(
  ( (ElementMatch!16547 (c!1245533 C!33364)) (Concat!25392 (regOne!33606 Regex!16547) (regTwo!33606 Regex!16547)) (EmptyExpr!16547) (Star!16547 (reg!16876 Regex!16547)) (EmptyLang!16547) (Union!16547 (regOne!33607 Regex!16547) (regTwo!33607 Regex!16547)) )
))
(declare-fun r!7292 () Regex!16547)

(declare-fun validRegex!8283 (Regex!16547) Bool)

(assert (=> start!651580 (= res!2749316 (validRegex!8283 r!7292))))

(assert (=> start!651580 e!4059588))

(declare-fun e!4059591 () Bool)

(assert (=> start!651580 e!4059591))

(declare-fun condSetEmpty!45799 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65940 0))(
  ( (Nil!65816) (Cons!65816 (h!72264 Regex!16547) (t!379617 List!65940)) )
))
(declare-datatypes ((Context!11862 0))(
  ( (Context!11863 (exprs!6431 List!65940)) )
))
(declare-fun z!1189 () (InoxSet Context!11862))

(assert (=> start!651580 (= condSetEmpty!45799 (= z!1189 ((as const (Array Context!11862 Bool)) false)))))

(declare-fun setRes!45799 () Bool)

(assert (=> start!651580 setRes!45799))

(declare-fun e!4059594 () Bool)

(assert (=> start!651580 e!4059594))

(declare-fun e!4059592 () Bool)

(assert (=> start!651580 e!4059592))

(declare-fun b!6718089 () Bool)

(declare-fun res!2749315 () Bool)

(assert (=> b!6718089 (=> (not res!2749315) (not e!4059588))))

(declare-datatypes ((List!65941 0))(
  ( (Nil!65817) (Cons!65817 (h!72265 Context!11862) (t!379618 List!65941)) )
))
(declare-fun zl!343 () List!65941)

(declare-fun unfocusZipper!2289 (List!65941) Regex!16547)

(assert (=> b!6718089 (= res!2749315 (= r!7292 (unfocusZipper!2289 zl!343)))))

(declare-fun b!6718090 () Bool)

(declare-fun tp!1841244 () Bool)

(declare-fun tp!1841240 () Bool)

(assert (=> b!6718090 (= e!4059591 (and tp!1841244 tp!1841240))))

(declare-fun tp!1841245 () Bool)

(declare-fun setNonEmpty!45799 () Bool)

(declare-fun setElem!45799 () Context!11862)

(declare-fun e!4059590 () Bool)

(declare-fun inv!84614 (Context!11862) Bool)

(assert (=> setNonEmpty!45799 (= setRes!45799 (and tp!1841245 (inv!84614 setElem!45799) e!4059590))))

(declare-fun setRest!45799 () (InoxSet Context!11862))

(assert (=> setNonEmpty!45799 (= z!1189 ((_ map or) (store ((as const (Array Context!11862 Bool)) false) setElem!45799 true) setRest!45799))))

(declare-fun b!6718091 () Bool)

(declare-fun tp_is_empty!42347 () Bool)

(assert (=> b!6718091 (= e!4059591 tp_is_empty!42347)))

(declare-fun b!6718092 () Bool)

(declare-fun res!2749311 () Bool)

(declare-fun e!4059596 () Bool)

(assert (=> b!6718092 (=> res!2749311 e!4059596)))

(declare-fun generalisedConcat!2144 (List!65940) Regex!16547)

(assert (=> b!6718092 (= res!2749311 (not (= r!7292 (generalisedConcat!2144 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6718093 () Bool)

(declare-fun e!4059593 () Bool)

(declare-fun tp!1841239 () Bool)

(assert (=> b!6718093 (= e!4059594 (and (inv!84614 (h!72265 zl!343)) e!4059593 tp!1841239))))

(declare-fun b!6718094 () Bool)

(declare-fun res!2749307 () Bool)

(assert (=> b!6718094 (=> res!2749307 e!4059596)))

(get-info :version)

(assert (=> b!6718094 (= res!2749307 (or ((_ is EmptyExpr!16547) r!7292) ((_ is EmptyLang!16547) r!7292) ((_ is ElementMatch!16547) r!7292) ((_ is Union!16547) r!7292) ((_ is Concat!25392) r!7292)))))

(declare-fun setIsEmpty!45799 () Bool)

(assert (=> setIsEmpty!45799 setRes!45799))

(declare-fun b!6718095 () Bool)

(declare-fun res!2749314 () Bool)

(declare-fun e!4059595 () Bool)

(assert (=> b!6718095 (=> res!2749314 e!4059595)))

(declare-datatypes ((List!65942 0))(
  ( (Nil!65818) (Cons!65818 (h!72266 C!33364) (t!379619 List!65942)) )
))
(declare-fun s!2326 () List!65942)

(declare-fun derivationStepZipperUp!1701 (Context!11862 C!33364) (InoxSet Context!11862))

(declare-fun derivationStepZipperDown!1775 (Regex!16547 Context!11862 C!33364) (InoxSet Context!11862))

(assert (=> b!6718095 (= res!2749314 (not (= (derivationStepZipperUp!1701 (Context!11863 (Cons!65816 r!7292 Nil!65816)) (h!72266 s!2326)) (derivationStepZipperDown!1775 r!7292 (Context!11863 Nil!65816) (h!72266 s!2326)))))))

(declare-fun b!6718096 () Bool)

(declare-fun res!2749309 () Bool)

(assert (=> b!6718096 (=> res!2749309 e!4059595)))

(assert (=> b!6718096 (= res!2749309 ((_ is Nil!65818) s!2326))))

(assert (=> b!6718097 (= e!4059596 e!4059595)))

(declare-fun res!2749308 () Bool)

(assert (=> b!6718097 (=> res!2749308 e!4059595)))

(declare-fun lt!2436542 () Bool)

(declare-fun e!4059589 () Bool)

(assert (=> b!6718097 (= res!2749308 (not (= lt!2436542 e!4059589)))))

(declare-fun res!2749312 () Bool)

(assert (=> b!6718097 (=> res!2749312 e!4059589)))

(declare-fun isEmpty!38137 (List!65942) Bool)

(assert (=> b!6718097 (= res!2749312 (isEmpty!38137 s!2326))))

(declare-fun Exists!3615 (Int) Bool)

(assert (=> b!6718097 (= (Exists!3615 lambda!376825) (Exists!3615 lambda!376827))))

(declare-datatypes ((Unit!159785 0))(
  ( (Unit!159786) )
))
(declare-fun lt!2436537 () Unit!159785)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2142 (Regex!16547 Regex!16547 List!65942) Unit!159785)

(assert (=> b!6718097 (= lt!2436537 (lemmaExistCutMatchRandMatchRSpecEquivalent!2142 (reg!16876 r!7292) r!7292 s!2326))))

(assert (=> b!6718097 (= (Exists!3615 lambda!376825) (Exists!3615 lambda!376826))))

(declare-fun lt!2436540 () Unit!159785)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!706 (Regex!16547 List!65942) Unit!159785)

(assert (=> b!6718097 (= lt!2436540 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!706 (reg!16876 r!7292) s!2326))))

(declare-fun lt!2436539 () Bool)

(assert (=> b!6718097 (= lt!2436539 (Exists!3615 lambda!376825))))

(declare-datatypes ((tuple2!67044 0))(
  ( (tuple2!67045 (_1!36825 List!65942) (_2!36825 List!65942)) )
))
(declare-datatypes ((Option!16434 0))(
  ( (None!16433) (Some!16433 (v!52631 tuple2!67044)) )
))
(declare-fun isDefined!13137 (Option!16434) Bool)

(declare-fun findConcatSeparation!2848 (Regex!16547 Regex!16547 List!65942 List!65942 List!65942) Option!16434)

(assert (=> b!6718097 (= lt!2436539 (isDefined!13137 (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 Nil!65818 s!2326 s!2326)))))

(declare-fun lt!2436541 () Unit!159785)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2612 (Regex!16547 Regex!16547 List!65942) Unit!159785)

(assert (=> b!6718097 (= lt!2436541 (lemmaFindConcatSeparationEquivalentToExists!2612 (reg!16876 r!7292) r!7292 s!2326))))

(declare-fun b!6718098 () Bool)

(declare-fun res!2749313 () Bool)

(assert (=> b!6718098 (=> res!2749313 e!4059596)))

(declare-fun generalisedUnion!2391 (List!65940) Regex!16547)

(declare-fun unfocusZipperList!1968 (List!65941) List!65940)

(assert (=> b!6718098 (= res!2749313 (not (= r!7292 (generalisedUnion!2391 (unfocusZipperList!1968 zl!343)))))))

(declare-fun b!6718099 () Bool)

(assert (=> b!6718099 (= e!4059595 (= z!1189 (store ((as const (Array Context!11862 Bool)) false) (h!72265 zl!343) true)))))

(declare-fun b!6718100 () Bool)

(declare-fun tp!1841243 () Bool)

(assert (=> b!6718100 (= e!4059592 (and tp_is_empty!42347 tp!1841243))))

(declare-fun b!6718101 () Bool)

(declare-fun tp!1841236 () Bool)

(assert (=> b!6718101 (= e!4059590 tp!1841236)))

(declare-fun b!6718102 () Bool)

(assert (=> b!6718102 (= e!4059588 (not e!4059596))))

(declare-fun res!2749317 () Bool)

(assert (=> b!6718102 (=> res!2749317 e!4059596)))

(assert (=> b!6718102 (= res!2749317 (not ((_ is Cons!65817) zl!343)))))

(declare-fun matchRSpec!3648 (Regex!16547 List!65942) Bool)

(assert (=> b!6718102 (= lt!2436542 (matchRSpec!3648 r!7292 s!2326))))

(declare-fun matchR!8730 (Regex!16547 List!65942) Bool)

(assert (=> b!6718102 (= lt!2436542 (matchR!8730 r!7292 s!2326))))

(declare-fun lt!2436538 () Unit!159785)

(declare-fun mainMatchTheorem!3648 (Regex!16547 List!65942) Unit!159785)

(assert (=> b!6718102 (= lt!2436538 (mainMatchTheorem!3648 r!7292 s!2326))))

(declare-fun b!6718103 () Bool)

(declare-fun tp!1841242 () Bool)

(assert (=> b!6718103 (= e!4059593 tp!1841242)))

(declare-fun b!6718104 () Bool)

(declare-fun res!2749306 () Bool)

(assert (=> b!6718104 (=> res!2749306 e!4059596)))

(assert (=> b!6718104 (= res!2749306 (not ((_ is Cons!65816) (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6718105 () Bool)

(declare-fun tp!1841237 () Bool)

(declare-fun tp!1841238 () Bool)

(assert (=> b!6718105 (= e!4059591 (and tp!1841237 tp!1841238))))

(declare-fun b!6718106 () Bool)

(declare-fun tp!1841241 () Bool)

(assert (=> b!6718106 (= e!4059591 tp!1841241)))

(declare-fun b!6718107 () Bool)

(declare-fun res!2749318 () Bool)

(assert (=> b!6718107 (=> (not res!2749318) (not e!4059588))))

(declare-fun toList!10331 ((InoxSet Context!11862)) List!65941)

(assert (=> b!6718107 (= res!2749318 (= (toList!10331 z!1189) zl!343))))

(declare-fun b!6718108 () Bool)

(declare-fun res!2749310 () Bool)

(assert (=> b!6718108 (=> res!2749310 e!4059596)))

(declare-fun isEmpty!38138 (List!65941) Bool)

(assert (=> b!6718108 (= res!2749310 (not (isEmpty!38138 (t!379618 zl!343))))))

(declare-fun b!6718109 () Bool)

(assert (=> b!6718109 (= e!4059589 lt!2436539)))

(assert (= (and start!651580 res!2749316) b!6718107))

(assert (= (and b!6718107 res!2749318) b!6718089))

(assert (= (and b!6718089 res!2749315) b!6718102))

(assert (= (and b!6718102 (not res!2749317)) b!6718108))

(assert (= (and b!6718108 (not res!2749310)) b!6718092))

(assert (= (and b!6718092 (not res!2749311)) b!6718104))

(assert (= (and b!6718104 (not res!2749306)) b!6718098))

(assert (= (and b!6718098 (not res!2749313)) b!6718094))

(assert (= (and b!6718094 (not res!2749307)) b!6718097))

(assert (= (and b!6718097 (not res!2749312)) b!6718109))

(assert (= (and b!6718097 (not res!2749308)) b!6718096))

(assert (= (and b!6718096 (not res!2749309)) b!6718095))

(assert (= (and b!6718095 (not res!2749314)) b!6718099))

(assert (= (and start!651580 ((_ is ElementMatch!16547) r!7292)) b!6718091))

(assert (= (and start!651580 ((_ is Concat!25392) r!7292)) b!6718090))

(assert (= (and start!651580 ((_ is Star!16547) r!7292)) b!6718106))

(assert (= (and start!651580 ((_ is Union!16547) r!7292)) b!6718105))

(assert (= (and start!651580 condSetEmpty!45799) setIsEmpty!45799))

(assert (= (and start!651580 (not condSetEmpty!45799)) setNonEmpty!45799))

(assert (= setNonEmpty!45799 b!6718101))

(assert (= b!6718093 b!6718103))

(assert (= (and start!651580 ((_ is Cons!65817) zl!343)) b!6718093))

(assert (= (and start!651580 ((_ is Cons!65818) s!2326)) b!6718100))

(declare-fun m!7480948 () Bool)

(assert (=> b!6718093 m!7480948))

(declare-fun m!7480950 () Bool)

(assert (=> b!6718098 m!7480950))

(assert (=> b!6718098 m!7480950))

(declare-fun m!7480952 () Bool)

(assert (=> b!6718098 m!7480952))

(declare-fun m!7480954 () Bool)

(assert (=> b!6718099 m!7480954))

(declare-fun m!7480956 () Bool)

(assert (=> setNonEmpty!45799 m!7480956))

(declare-fun m!7480958 () Bool)

(assert (=> b!6718095 m!7480958))

(declare-fun m!7480960 () Bool)

(assert (=> b!6718095 m!7480960))

(declare-fun m!7480962 () Bool)

(assert (=> b!6718092 m!7480962))

(declare-fun m!7480964 () Bool)

(assert (=> start!651580 m!7480964))

(declare-fun m!7480966 () Bool)

(assert (=> b!6718089 m!7480966))

(declare-fun m!7480968 () Bool)

(assert (=> b!6718102 m!7480968))

(declare-fun m!7480970 () Bool)

(assert (=> b!6718102 m!7480970))

(declare-fun m!7480972 () Bool)

(assert (=> b!6718102 m!7480972))

(declare-fun m!7480974 () Bool)

(assert (=> b!6718108 m!7480974))

(declare-fun m!7480976 () Bool)

(assert (=> b!6718097 m!7480976))

(declare-fun m!7480978 () Bool)

(assert (=> b!6718097 m!7480978))

(declare-fun m!7480980 () Bool)

(assert (=> b!6718097 m!7480980))

(declare-fun m!7480982 () Bool)

(assert (=> b!6718097 m!7480982))

(declare-fun m!7480984 () Bool)

(assert (=> b!6718097 m!7480984))

(declare-fun m!7480986 () Bool)

(assert (=> b!6718097 m!7480986))

(assert (=> b!6718097 m!7480982))

(declare-fun m!7480988 () Bool)

(assert (=> b!6718097 m!7480988))

(assert (=> b!6718097 m!7480988))

(declare-fun m!7480990 () Bool)

(assert (=> b!6718097 m!7480990))

(assert (=> b!6718097 m!7480982))

(declare-fun m!7480992 () Bool)

(assert (=> b!6718097 m!7480992))

(declare-fun m!7480994 () Bool)

(assert (=> b!6718107 m!7480994))

(check-sat (not b!6718100) (not b!6718107) (not setNonEmpty!45799) (not b!6718105) (not b!6718097) (not b!6718092) (not b!6718108) (not b!6718095) (not b!6718106) (not b!6718098) (not b!6718101) (not b!6718089) (not b!6718090) (not b!6718093) (not start!651580) (not b!6718103) tp_is_empty!42347 (not b!6718102))
(check-sat)
(get-model)

(declare-fun d!2111399 () Bool)

(declare-fun lambda!376836 () Int)

(declare-fun forall!15747 (List!65940 Int) Bool)

(assert (=> d!2111399 (= (inv!84614 setElem!45799) (forall!15747 (exprs!6431 setElem!45799) lambda!376836))))

(declare-fun bs!1787469 () Bool)

(assert (= bs!1787469 d!2111399))

(declare-fun m!7481002 () Bool)

(assert (=> bs!1787469 m!7481002))

(assert (=> setNonEmpty!45799 d!2111399))

(declare-fun bs!1787474 () Bool)

(declare-fun d!2111401 () Bool)

(assert (= bs!1787474 (and d!2111401 d!2111399)))

(declare-fun lambda!376839 () Int)

(assert (=> bs!1787474 (= lambda!376839 lambda!376836)))

(declare-fun b!6718247 () Bool)

(declare-fun e!4059679 () Bool)

(declare-fun lt!2436554 () Regex!16547)

(declare-fun isUnion!1350 (Regex!16547) Bool)

(assert (=> b!6718247 (= e!4059679 (isUnion!1350 lt!2436554))))

(declare-fun b!6718248 () Bool)

(declare-fun e!4059676 () Bool)

(declare-fun isEmptyLang!1920 (Regex!16547) Bool)

(assert (=> b!6718248 (= e!4059676 (isEmptyLang!1920 lt!2436554))))

(declare-fun b!6718249 () Bool)

(assert (=> b!6718249 (= e!4059676 e!4059679)))

(declare-fun c!1245569 () Bool)

(declare-fun isEmpty!38141 (List!65940) Bool)

(declare-fun tail!12606 (List!65940) List!65940)

(assert (=> b!6718249 (= c!1245569 (isEmpty!38141 (tail!12606 (unfocusZipperList!1968 zl!343))))))

(declare-fun b!6718250 () Bool)

(declare-fun e!4059680 () Bool)

(assert (=> b!6718250 (= e!4059680 e!4059676)))

(declare-fun c!1245571 () Bool)

(assert (=> b!6718250 (= c!1245571 (isEmpty!38141 (unfocusZipperList!1968 zl!343)))))

(declare-fun b!6718251 () Bool)

(declare-fun e!4059678 () Regex!16547)

(assert (=> b!6718251 (= e!4059678 EmptyLang!16547)))

(declare-fun b!6718246 () Bool)

(declare-fun e!4059677 () Regex!16547)

(assert (=> b!6718246 (= e!4059677 e!4059678)))

(declare-fun c!1245572 () Bool)

(assert (=> b!6718246 (= c!1245572 ((_ is Cons!65816) (unfocusZipperList!1968 zl!343)))))

(assert (=> d!2111401 e!4059680))

(declare-fun res!2749381 () Bool)

(assert (=> d!2111401 (=> (not res!2749381) (not e!4059680))))

(assert (=> d!2111401 (= res!2749381 (validRegex!8283 lt!2436554))))

(assert (=> d!2111401 (= lt!2436554 e!4059677)))

(declare-fun c!1245570 () Bool)

(declare-fun e!4059681 () Bool)

(assert (=> d!2111401 (= c!1245570 e!4059681)))

(declare-fun res!2749382 () Bool)

(assert (=> d!2111401 (=> (not res!2749382) (not e!4059681))))

(assert (=> d!2111401 (= res!2749382 ((_ is Cons!65816) (unfocusZipperList!1968 zl!343)))))

(assert (=> d!2111401 (forall!15747 (unfocusZipperList!1968 zl!343) lambda!376839)))

(assert (=> d!2111401 (= (generalisedUnion!2391 (unfocusZipperList!1968 zl!343)) lt!2436554)))

(declare-fun b!6718252 () Bool)

(assert (=> b!6718252 (= e!4059678 (Union!16547 (h!72264 (unfocusZipperList!1968 zl!343)) (generalisedUnion!2391 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(declare-fun b!6718253 () Bool)

(assert (=> b!6718253 (= e!4059677 (h!72264 (unfocusZipperList!1968 zl!343)))))

(declare-fun b!6718254 () Bool)

(assert (=> b!6718254 (= e!4059681 (isEmpty!38141 (t!379617 (unfocusZipperList!1968 zl!343))))))

(declare-fun b!6718255 () Bool)

(declare-fun head!13521 (List!65940) Regex!16547)

(assert (=> b!6718255 (= e!4059679 (= lt!2436554 (head!13521 (unfocusZipperList!1968 zl!343))))))

(assert (= (and d!2111401 res!2749382) b!6718254))

(assert (= (and d!2111401 c!1245570) b!6718253))

(assert (= (and d!2111401 (not c!1245570)) b!6718246))

(assert (= (and b!6718246 c!1245572) b!6718252))

(assert (= (and b!6718246 (not c!1245572)) b!6718251))

(assert (= (and d!2111401 res!2749381) b!6718250))

(assert (= (and b!6718250 c!1245571) b!6718248))

(assert (= (and b!6718250 (not c!1245571)) b!6718249))

(assert (= (and b!6718249 c!1245569) b!6718255))

(assert (= (and b!6718249 (not c!1245569)) b!6718247))

(declare-fun m!7481030 () Bool)

(assert (=> d!2111401 m!7481030))

(assert (=> d!2111401 m!7480950))

(declare-fun m!7481032 () Bool)

(assert (=> d!2111401 m!7481032))

(assert (=> b!6718255 m!7480950))

(declare-fun m!7481034 () Bool)

(assert (=> b!6718255 m!7481034))

(assert (=> b!6718249 m!7480950))

(declare-fun m!7481036 () Bool)

(assert (=> b!6718249 m!7481036))

(assert (=> b!6718249 m!7481036))

(declare-fun m!7481038 () Bool)

(assert (=> b!6718249 m!7481038))

(declare-fun m!7481040 () Bool)

(assert (=> b!6718247 m!7481040))

(declare-fun m!7481042 () Bool)

(assert (=> b!6718254 m!7481042))

(assert (=> b!6718250 m!7480950))

(declare-fun m!7481044 () Bool)

(assert (=> b!6718250 m!7481044))

(declare-fun m!7481046 () Bool)

(assert (=> b!6718248 m!7481046))

(declare-fun m!7481048 () Bool)

(assert (=> b!6718252 m!7481048))

(assert (=> b!6718098 d!2111401))

(declare-fun bs!1787479 () Bool)

(declare-fun d!2111417 () Bool)

(assert (= bs!1787479 (and d!2111417 d!2111399)))

(declare-fun lambda!376848 () Int)

(assert (=> bs!1787479 (= lambda!376848 lambda!376836)))

(declare-fun bs!1787480 () Bool)

(assert (= bs!1787480 (and d!2111417 d!2111401)))

(assert (=> bs!1787480 (= lambda!376848 lambda!376839)))

(declare-fun lt!2436560 () List!65940)

(assert (=> d!2111417 (forall!15747 lt!2436560 lambda!376848)))

(declare-fun e!4059688 () List!65940)

(assert (=> d!2111417 (= lt!2436560 e!4059688)))

(declare-fun c!1245575 () Bool)

(assert (=> d!2111417 (= c!1245575 ((_ is Cons!65817) zl!343))))

(assert (=> d!2111417 (= (unfocusZipperList!1968 zl!343) lt!2436560)))

(declare-fun b!6718268 () Bool)

(assert (=> b!6718268 (= e!4059688 (Cons!65816 (generalisedConcat!2144 (exprs!6431 (h!72265 zl!343))) (unfocusZipperList!1968 (t!379618 zl!343))))))

(declare-fun b!6718269 () Bool)

(assert (=> b!6718269 (= e!4059688 Nil!65816)))

(assert (= (and d!2111417 c!1245575) b!6718268))

(assert (= (and d!2111417 (not c!1245575)) b!6718269))

(declare-fun m!7481058 () Bool)

(assert (=> d!2111417 m!7481058))

(assert (=> b!6718268 m!7480962))

(declare-fun m!7481060 () Bool)

(assert (=> b!6718268 m!7481060))

(assert (=> b!6718098 d!2111417))

(declare-fun d!2111421 () Bool)

(declare-fun lt!2436565 () Regex!16547)

(assert (=> d!2111421 (validRegex!8283 lt!2436565)))

(assert (=> d!2111421 (= lt!2436565 (generalisedUnion!2391 (unfocusZipperList!1968 zl!343)))))

(assert (=> d!2111421 (= (unfocusZipper!2289 zl!343) lt!2436565)))

(declare-fun bs!1787481 () Bool)

(assert (= bs!1787481 d!2111421))

(declare-fun m!7481062 () Bool)

(assert (=> bs!1787481 m!7481062))

(assert (=> bs!1787481 m!7480950))

(assert (=> bs!1787481 m!7480950))

(assert (=> bs!1787481 m!7480952))

(assert (=> b!6718089 d!2111421))

(declare-fun bs!1787495 () Bool)

(declare-fun b!6718353 () Bool)

(assert (= bs!1787495 (and b!6718353 b!6718097)))

(declare-fun lambda!376862 () Int)

(assert (=> bs!1787495 (not (= lambda!376862 lambda!376825))))

(assert (=> bs!1787495 (= lambda!376862 lambda!376826)))

(assert (=> bs!1787495 (not (= lambda!376862 lambda!376827))))

(assert (=> b!6718353 true))

(assert (=> b!6718353 true))

(declare-fun bs!1787496 () Bool)

(declare-fun b!6718346 () Bool)

(assert (= bs!1787496 (and b!6718346 b!6718097)))

(declare-fun lambda!376863 () Int)

(assert (=> bs!1787496 (not (= lambda!376863 lambda!376825))))

(assert (=> bs!1787496 (not (= lambda!376863 lambda!376826))))

(assert (=> bs!1787496 (= (and (= (regOne!33606 r!7292) (reg!16876 r!7292)) (= (regTwo!33606 r!7292) r!7292)) (= lambda!376863 lambda!376827))))

(declare-fun bs!1787497 () Bool)

(assert (= bs!1787497 (and b!6718346 b!6718353)))

(assert (=> bs!1787497 (not (= lambda!376863 lambda!376862))))

(assert (=> b!6718346 true))

(assert (=> b!6718346 true))

(declare-fun b!6718343 () Bool)

(declare-fun e!4059734 () Bool)

(declare-fun e!4059732 () Bool)

(assert (=> b!6718343 (= e!4059734 e!4059732)))

(declare-fun res!2749436 () Bool)

(assert (=> b!6718343 (= res!2749436 (matchRSpec!3648 (regOne!33607 r!7292) s!2326))))

(assert (=> b!6718343 (=> res!2749436 e!4059732)))

(declare-fun b!6718344 () Bool)

(declare-fun c!1245590 () Bool)

(assert (=> b!6718344 (= c!1245590 ((_ is Union!16547) r!7292))))

(declare-fun e!4059728 () Bool)

(assert (=> b!6718344 (= e!4059728 e!4059734)))

(declare-fun b!6718345 () Bool)

(assert (=> b!6718345 (= e!4059728 (= s!2326 (Cons!65818 (c!1245533 r!7292) Nil!65818)))))

(declare-fun b!6718347 () Bool)

(declare-fun c!1245591 () Bool)

(assert (=> b!6718347 (= c!1245591 ((_ is ElementMatch!16547) r!7292))))

(declare-fun e!4059729 () Bool)

(assert (=> b!6718347 (= e!4059729 e!4059728)))

(declare-fun b!6718348 () Bool)

(declare-fun res!2749438 () Bool)

(declare-fun e!4059733 () Bool)

(assert (=> b!6718348 (=> res!2749438 e!4059733)))

(declare-fun call!606344 () Bool)

(assert (=> b!6718348 (= res!2749438 call!606344)))

(declare-fun e!4059730 () Bool)

(assert (=> b!6718348 (= e!4059730 e!4059733)))

(declare-fun b!6718349 () Bool)

(declare-fun e!4059731 () Bool)

(assert (=> b!6718349 (= e!4059731 call!606344)))

(declare-fun b!6718350 () Bool)

(assert (=> b!6718350 (= e!4059732 (matchRSpec!3648 (regTwo!33607 r!7292) s!2326))))

(declare-fun bm!606339 () Bool)

(assert (=> bm!606339 (= call!606344 (isEmpty!38137 s!2326))))

(declare-fun b!6718351 () Bool)

(assert (=> b!6718351 (= e!4059731 e!4059729)))

(declare-fun res!2749437 () Bool)

(assert (=> b!6718351 (= res!2749437 (not ((_ is EmptyLang!16547) r!7292)))))

(assert (=> b!6718351 (=> (not res!2749437) (not e!4059729))))

(declare-fun b!6718352 () Bool)

(assert (=> b!6718352 (= e!4059734 e!4059730)))

(declare-fun c!1245593 () Bool)

(assert (=> b!6718352 (= c!1245593 ((_ is Star!16547) r!7292))))

(declare-fun call!606345 () Bool)

(assert (=> b!6718346 (= e!4059730 call!606345)))

(declare-fun d!2111423 () Bool)

(declare-fun c!1245592 () Bool)

(assert (=> d!2111423 (= c!1245592 ((_ is EmptyExpr!16547) r!7292))))

(assert (=> d!2111423 (= (matchRSpec!3648 r!7292 s!2326) e!4059731)))

(assert (=> b!6718353 (= e!4059733 call!606345)))

(declare-fun bm!606340 () Bool)

(assert (=> bm!606340 (= call!606345 (Exists!3615 (ite c!1245593 lambda!376862 lambda!376863)))))

(assert (= (and d!2111423 c!1245592) b!6718349))

(assert (= (and d!2111423 (not c!1245592)) b!6718351))

(assert (= (and b!6718351 res!2749437) b!6718347))

(assert (= (and b!6718347 c!1245591) b!6718345))

(assert (= (and b!6718347 (not c!1245591)) b!6718344))

(assert (= (and b!6718344 c!1245590) b!6718343))

(assert (= (and b!6718344 (not c!1245590)) b!6718352))

(assert (= (and b!6718343 (not res!2749436)) b!6718350))

(assert (= (and b!6718352 c!1245593) b!6718348))

(assert (= (and b!6718352 (not c!1245593)) b!6718346))

(assert (= (and b!6718348 (not res!2749438)) b!6718353))

(assert (= (or b!6718353 b!6718346) bm!606340))

(assert (= (or b!6718349 b!6718348) bm!606339))

(declare-fun m!7481098 () Bool)

(assert (=> b!6718343 m!7481098))

(declare-fun m!7481100 () Bool)

(assert (=> b!6718350 m!7481100))

(assert (=> bm!606339 m!7480976))

(declare-fun m!7481102 () Bool)

(assert (=> bm!606340 m!7481102))

(assert (=> b!6718102 d!2111423))

(declare-fun b!6718460 () Bool)

(declare-fun res!2749468 () Bool)

(declare-fun e!4059794 () Bool)

(assert (=> b!6718460 (=> (not res!2749468) (not e!4059794))))

(declare-fun call!606369 () Bool)

(assert (=> b!6718460 (= res!2749468 (not call!606369))))

(declare-fun b!6718461 () Bool)

(declare-fun e!4059797 () Bool)

(declare-fun e!4059798 () Bool)

(assert (=> b!6718461 (= e!4059797 e!4059798)))

(declare-fun res!2749474 () Bool)

(assert (=> b!6718461 (=> (not res!2749474) (not e!4059798))))

(declare-fun lt!2436584 () Bool)

(assert (=> b!6718461 (= res!2749474 (not lt!2436584))))

(declare-fun b!6718462 () Bool)

(declare-fun e!4059795 () Bool)

(declare-fun derivativeStep!5219 (Regex!16547 C!33364) Regex!16547)

(declare-fun head!13522 (List!65942) C!33364)

(declare-fun tail!12607 (List!65942) List!65942)

(assert (=> b!6718462 (= e!4059795 (matchR!8730 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (tail!12607 s!2326)))))

(declare-fun d!2111437 () Bool)

(declare-fun e!4059799 () Bool)

(assert (=> d!2111437 e!4059799))

(declare-fun c!1245633 () Bool)

(assert (=> d!2111437 (= c!1245633 ((_ is EmptyExpr!16547) r!7292))))

(assert (=> d!2111437 (= lt!2436584 e!4059795)))

(declare-fun c!1245634 () Bool)

(assert (=> d!2111437 (= c!1245634 (isEmpty!38137 s!2326))))

(assert (=> d!2111437 (validRegex!8283 r!7292)))

(assert (=> d!2111437 (= (matchR!8730 r!7292 s!2326) lt!2436584)))

(declare-fun b!6718463 () Bool)

(declare-fun e!4059796 () Bool)

(assert (=> b!6718463 (= e!4059796 (not lt!2436584))))

(declare-fun b!6718464 () Bool)

(declare-fun e!4059800 () Bool)

(assert (=> b!6718464 (= e!4059800 (not (= (head!13522 s!2326) (c!1245533 r!7292))))))

(declare-fun b!6718465 () Bool)

(assert (=> b!6718465 (= e!4059799 (= lt!2436584 call!606369))))

(declare-fun bm!606364 () Bool)

(assert (=> bm!606364 (= call!606369 (isEmpty!38137 s!2326))))

(declare-fun b!6718466 () Bool)

(declare-fun nullable!6534 (Regex!16547) Bool)

(assert (=> b!6718466 (= e!4059795 (nullable!6534 r!7292))))

(declare-fun b!6718467 () Bool)

(assert (=> b!6718467 (= e!4059799 e!4059796)))

(declare-fun c!1245635 () Bool)

(assert (=> b!6718467 (= c!1245635 ((_ is EmptyLang!16547) r!7292))))

(declare-fun b!6718468 () Bool)

(assert (=> b!6718468 (= e!4059794 (= (head!13522 s!2326) (c!1245533 r!7292)))))

(declare-fun b!6718469 () Bool)

(declare-fun res!2749471 () Bool)

(assert (=> b!6718469 (=> res!2749471 e!4059800)))

(assert (=> b!6718469 (= res!2749471 (not (isEmpty!38137 (tail!12607 s!2326))))))

(declare-fun b!6718470 () Bool)

(declare-fun res!2749469 () Bool)

(assert (=> b!6718470 (=> res!2749469 e!4059797)))

(assert (=> b!6718470 (= res!2749469 e!4059794)))

(declare-fun res!2749473 () Bool)

(assert (=> b!6718470 (=> (not res!2749473) (not e!4059794))))

(assert (=> b!6718470 (= res!2749473 lt!2436584)))

(declare-fun b!6718471 () Bool)

(declare-fun res!2749470 () Bool)

(assert (=> b!6718471 (=> res!2749470 e!4059797)))

(assert (=> b!6718471 (= res!2749470 (not ((_ is ElementMatch!16547) r!7292)))))

(assert (=> b!6718471 (= e!4059796 e!4059797)))

(declare-fun b!6718472 () Bool)

(declare-fun res!2749467 () Bool)

(assert (=> b!6718472 (=> (not res!2749467) (not e!4059794))))

(assert (=> b!6718472 (= res!2749467 (isEmpty!38137 (tail!12607 s!2326)))))

(declare-fun b!6718473 () Bool)

(assert (=> b!6718473 (= e!4059798 e!4059800)))

(declare-fun res!2749472 () Bool)

(assert (=> b!6718473 (=> res!2749472 e!4059800)))

(assert (=> b!6718473 (= res!2749472 call!606369)))

(assert (= (and d!2111437 c!1245634) b!6718466))

(assert (= (and d!2111437 (not c!1245634)) b!6718462))

(assert (= (and d!2111437 c!1245633) b!6718465))

(assert (= (and d!2111437 (not c!1245633)) b!6718467))

(assert (= (and b!6718467 c!1245635) b!6718463))

(assert (= (and b!6718467 (not c!1245635)) b!6718471))

(assert (= (and b!6718471 (not res!2749470)) b!6718470))

(assert (= (and b!6718470 res!2749473) b!6718460))

(assert (= (and b!6718460 res!2749468) b!6718472))

(assert (= (and b!6718472 res!2749467) b!6718468))

(assert (= (and b!6718470 (not res!2749469)) b!6718461))

(assert (= (and b!6718461 res!2749474) b!6718473))

(assert (= (and b!6718473 (not res!2749472)) b!6718469))

(assert (= (and b!6718469 (not res!2749471)) b!6718464))

(assert (= (or b!6718465 b!6718460 b!6718473) bm!606364))

(declare-fun m!7481142 () Bool)

(assert (=> b!6718468 m!7481142))

(assert (=> b!6718464 m!7481142))

(assert (=> bm!606364 m!7480976))

(declare-fun m!7481144 () Bool)

(assert (=> b!6718469 m!7481144))

(assert (=> b!6718469 m!7481144))

(declare-fun m!7481146 () Bool)

(assert (=> b!6718469 m!7481146))

(assert (=> d!2111437 m!7480976))

(assert (=> d!2111437 m!7480964))

(assert (=> b!6718472 m!7481144))

(assert (=> b!6718472 m!7481144))

(assert (=> b!6718472 m!7481146))

(assert (=> b!6718462 m!7481142))

(assert (=> b!6718462 m!7481142))

(declare-fun m!7481148 () Bool)

(assert (=> b!6718462 m!7481148))

(assert (=> b!6718462 m!7481144))

(assert (=> b!6718462 m!7481148))

(assert (=> b!6718462 m!7481144))

(declare-fun m!7481150 () Bool)

(assert (=> b!6718462 m!7481150))

(declare-fun m!7481152 () Bool)

(assert (=> b!6718466 m!7481152))

(assert (=> b!6718102 d!2111437))

(declare-fun d!2111447 () Bool)

(assert (=> d!2111447 (= (matchR!8730 r!7292 s!2326) (matchRSpec!3648 r!7292 s!2326))))

(declare-fun lt!2436590 () Unit!159785)

(declare-fun choose!50065 (Regex!16547 List!65942) Unit!159785)

(assert (=> d!2111447 (= lt!2436590 (choose!50065 r!7292 s!2326))))

(assert (=> d!2111447 (validRegex!8283 r!7292)))

(assert (=> d!2111447 (= (mainMatchTheorem!3648 r!7292 s!2326) lt!2436590)))

(declare-fun bs!1787503 () Bool)

(assert (= bs!1787503 d!2111447))

(assert (=> bs!1787503 m!7480970))

(assert (=> bs!1787503 m!7480968))

(declare-fun m!7481162 () Bool)

(assert (=> bs!1787503 m!7481162))

(assert (=> bs!1787503 m!7480964))

(assert (=> b!6718102 d!2111447))

(declare-fun bs!1787511 () Bool)

(declare-fun d!2111453 () Bool)

(assert (= bs!1787511 (and d!2111453 d!2111399)))

(declare-fun lambda!376879 () Int)

(assert (=> bs!1787511 (= lambda!376879 lambda!376836)))

(declare-fun bs!1787512 () Bool)

(assert (= bs!1787512 (and d!2111453 d!2111401)))

(assert (=> bs!1787512 (= lambda!376879 lambda!376839)))

(declare-fun bs!1787513 () Bool)

(assert (= bs!1787513 (and d!2111453 d!2111417)))

(assert (=> bs!1787513 (= lambda!376879 lambda!376848)))

(declare-fun b!6718582 () Bool)

(declare-fun e!4059857 () Bool)

(assert (=> b!6718582 (= e!4059857 (isEmpty!38141 (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6718583 () Bool)

(declare-fun e!4059861 () Regex!16547)

(assert (=> b!6718583 (= e!4059861 EmptyExpr!16547)))

(declare-fun b!6718584 () Bool)

(declare-fun e!4059863 () Bool)

(declare-fun e!4059859 () Bool)

(assert (=> b!6718584 (= e!4059863 e!4059859)))

(declare-fun c!1245662 () Bool)

(assert (=> b!6718584 (= c!1245662 (isEmpty!38141 (tail!12606 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6718585 () Bool)

(declare-fun lt!2436599 () Regex!16547)

(declare-fun isEmptyExpr!1913 (Regex!16547) Bool)

(assert (=> b!6718585 (= e!4059863 (isEmptyExpr!1913 lt!2436599))))

(declare-fun e!4059860 () Bool)

(assert (=> d!2111453 e!4059860))

(declare-fun res!2749489 () Bool)

(assert (=> d!2111453 (=> (not res!2749489) (not e!4059860))))

(assert (=> d!2111453 (= res!2749489 (validRegex!8283 lt!2436599))))

(declare-fun e!4059862 () Regex!16547)

(assert (=> d!2111453 (= lt!2436599 e!4059862)))

(declare-fun c!1245660 () Bool)

(assert (=> d!2111453 (= c!1245660 e!4059857)))

(declare-fun res!2749488 () Bool)

(assert (=> d!2111453 (=> (not res!2749488) (not e!4059857))))

(assert (=> d!2111453 (= res!2749488 ((_ is Cons!65816) (exprs!6431 (h!72265 zl!343))))))

(assert (=> d!2111453 (forall!15747 (exprs!6431 (h!72265 zl!343)) lambda!376879)))

(assert (=> d!2111453 (= (generalisedConcat!2144 (exprs!6431 (h!72265 zl!343))) lt!2436599)))

(declare-fun b!6718586 () Bool)

(assert (=> b!6718586 (= e!4059859 (= lt!2436599 (head!13521 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6718587 () Bool)

(assert (=> b!6718587 (= e!4059862 (h!72264 (exprs!6431 (h!72265 zl!343))))))

(declare-fun b!6718588 () Bool)

(assert (=> b!6718588 (= e!4059860 e!4059863)))

(declare-fun c!1245659 () Bool)

(assert (=> b!6718588 (= c!1245659 (isEmpty!38141 (exprs!6431 (h!72265 zl!343))))))

(declare-fun b!6718589 () Bool)

(assert (=> b!6718589 (= e!4059862 e!4059861)))

(declare-fun c!1245661 () Bool)

(assert (=> b!6718589 (= c!1245661 ((_ is Cons!65816) (exprs!6431 (h!72265 zl!343))))))

(declare-fun b!6718590 () Bool)

(declare-fun isConcat!1436 (Regex!16547) Bool)

(assert (=> b!6718590 (= e!4059859 (isConcat!1436 lt!2436599))))

(declare-fun b!6718591 () Bool)

(assert (=> b!6718591 (= e!4059861 (Concat!25392 (h!72264 (exprs!6431 (h!72265 zl!343))) (generalisedConcat!2144 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(assert (= (and d!2111453 res!2749488) b!6718582))

(assert (= (and d!2111453 c!1245660) b!6718587))

(assert (= (and d!2111453 (not c!1245660)) b!6718589))

(assert (= (and b!6718589 c!1245661) b!6718591))

(assert (= (and b!6718589 (not c!1245661)) b!6718583))

(assert (= (and d!2111453 res!2749489) b!6718588))

(assert (= (and b!6718588 c!1245659) b!6718585))

(assert (= (and b!6718588 (not c!1245659)) b!6718584))

(assert (= (and b!6718584 c!1245662) b!6718586))

(assert (= (and b!6718584 (not c!1245662)) b!6718590))

(declare-fun m!7481192 () Bool)

(assert (=> b!6718590 m!7481192))

(declare-fun m!7481194 () Bool)

(assert (=> b!6718588 m!7481194))

(declare-fun m!7481196 () Bool)

(assert (=> b!6718586 m!7481196))

(declare-fun m!7481198 () Bool)

(assert (=> b!6718582 m!7481198))

(declare-fun m!7481200 () Bool)

(assert (=> b!6718591 m!7481200))

(declare-fun m!7481202 () Bool)

(assert (=> d!2111453 m!7481202))

(declare-fun m!7481204 () Bool)

(assert (=> d!2111453 m!7481204))

(declare-fun m!7481206 () Bool)

(assert (=> b!6718584 m!7481206))

(assert (=> b!6718584 m!7481206))

(declare-fun m!7481208 () Bool)

(assert (=> b!6718584 m!7481208))

(declare-fun m!7481210 () Bool)

(assert (=> b!6718585 m!7481210))

(assert (=> b!6718092 d!2111453))

(declare-fun d!2111457 () Bool)

(declare-fun e!4059868 () Bool)

(assert (=> d!2111457 e!4059868))

(declare-fun res!2749492 () Bool)

(assert (=> d!2111457 (=> (not res!2749492) (not e!4059868))))

(declare-fun lt!2436602 () List!65941)

(declare-fun noDuplicate!2340 (List!65941) Bool)

(assert (=> d!2111457 (= res!2749492 (noDuplicate!2340 lt!2436602))))

(declare-fun choose!50066 ((InoxSet Context!11862)) List!65941)

(assert (=> d!2111457 (= lt!2436602 (choose!50066 z!1189))))

(assert (=> d!2111457 (= (toList!10331 z!1189) lt!2436602)))

(declare-fun b!6718599 () Bool)

(declare-fun content!12763 (List!65941) (InoxSet Context!11862))

(assert (=> b!6718599 (= e!4059868 (= (content!12763 lt!2436602) z!1189))))

(assert (= (and d!2111457 res!2749492) b!6718599))

(declare-fun m!7481212 () Bool)

(assert (=> d!2111457 m!7481212))

(declare-fun m!7481214 () Bool)

(assert (=> d!2111457 m!7481214))

(declare-fun m!7481216 () Bool)

(assert (=> b!6718599 m!7481216))

(assert (=> b!6718107 d!2111457))

(declare-fun b!6718618 () Bool)

(declare-fun e!4059887 () Bool)

(declare-fun call!606376 () Bool)

(assert (=> b!6718618 (= e!4059887 call!606376)))

(declare-fun b!6718619 () Bool)

(declare-fun res!2749505 () Bool)

(declare-fun e!4059885 () Bool)

(assert (=> b!6718619 (=> res!2749505 e!4059885)))

(assert (=> b!6718619 (= res!2749505 (not ((_ is Concat!25392) r!7292)))))

(declare-fun e!4059888 () Bool)

(assert (=> b!6718619 (= e!4059888 e!4059885)))

(declare-fun b!6718620 () Bool)

(declare-fun res!2749507 () Bool)

(assert (=> b!6718620 (=> (not res!2749507) (not e!4059887))))

(declare-fun call!606377 () Bool)

(assert (=> b!6718620 (= res!2749507 call!606377)))

(assert (=> b!6718620 (= e!4059888 e!4059887)))

(declare-fun b!6718621 () Bool)

(declare-fun e!4059883 () Bool)

(assert (=> b!6718621 (= e!4059883 e!4059888)))

(declare-fun c!1245667 () Bool)

(assert (=> b!6718621 (= c!1245667 ((_ is Union!16547) r!7292))))

(declare-fun d!2111459 () Bool)

(declare-fun res!2749503 () Bool)

(declare-fun e!4059889 () Bool)

(assert (=> d!2111459 (=> res!2749503 e!4059889)))

(assert (=> d!2111459 (= res!2749503 ((_ is ElementMatch!16547) r!7292))))

(assert (=> d!2111459 (= (validRegex!8283 r!7292) e!4059889)))

(declare-fun call!606378 () Bool)

(declare-fun bm!606371 () Bool)

(declare-fun c!1245668 () Bool)

(assert (=> bm!606371 (= call!606378 (validRegex!8283 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))

(declare-fun b!6718622 () Bool)

(declare-fun e!4059886 () Bool)

(assert (=> b!6718622 (= e!4059886 call!606378)))

(declare-fun bm!606372 () Bool)

(assert (=> bm!606372 (= call!606376 call!606378)))

(declare-fun b!6718623 () Bool)

(declare-fun e!4059884 () Bool)

(assert (=> b!6718623 (= e!4059884 call!606376)))

(declare-fun b!6718624 () Bool)

(assert (=> b!6718624 (= e!4059883 e!4059886)))

(declare-fun res!2749506 () Bool)

(assert (=> b!6718624 (= res!2749506 (not (nullable!6534 (reg!16876 r!7292))))))

(assert (=> b!6718624 (=> (not res!2749506) (not e!4059886))))

(declare-fun b!6718625 () Bool)

(assert (=> b!6718625 (= e!4059889 e!4059883)))

(assert (=> b!6718625 (= c!1245668 ((_ is Star!16547) r!7292))))

(declare-fun b!6718626 () Bool)

(assert (=> b!6718626 (= e!4059885 e!4059884)))

(declare-fun res!2749504 () Bool)

(assert (=> b!6718626 (=> (not res!2749504) (not e!4059884))))

(assert (=> b!6718626 (= res!2749504 call!606377)))

(declare-fun bm!606373 () Bool)

(assert (=> bm!606373 (= call!606377 (validRegex!8283 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))

(assert (= (and d!2111459 (not res!2749503)) b!6718625))

(assert (= (and b!6718625 c!1245668) b!6718624))

(assert (= (and b!6718625 (not c!1245668)) b!6718621))

(assert (= (and b!6718624 res!2749506) b!6718622))

(assert (= (and b!6718621 c!1245667) b!6718620))

(assert (= (and b!6718621 (not c!1245667)) b!6718619))

(assert (= (and b!6718620 res!2749507) b!6718618))

(assert (= (and b!6718619 (not res!2749505)) b!6718626))

(assert (= (and b!6718626 res!2749504) b!6718623))

(assert (= (or b!6718618 b!6718623) bm!606372))

(assert (= (or b!6718620 b!6718626) bm!606373))

(assert (= (or b!6718622 bm!606372) bm!606371))

(declare-fun m!7481218 () Bool)

(assert (=> bm!606371 m!7481218))

(declare-fun m!7481220 () Bool)

(assert (=> b!6718624 m!7481220))

(declare-fun m!7481222 () Bool)

(assert (=> bm!606373 m!7481222))

(assert (=> start!651580 d!2111459))

(declare-fun bs!1787514 () Bool)

(declare-fun d!2111461 () Bool)

(assert (= bs!1787514 (and d!2111461 d!2111399)))

(declare-fun lambda!376880 () Int)

(assert (=> bs!1787514 (= lambda!376880 lambda!376836)))

(declare-fun bs!1787515 () Bool)

(assert (= bs!1787515 (and d!2111461 d!2111401)))

(assert (=> bs!1787515 (= lambda!376880 lambda!376839)))

(declare-fun bs!1787516 () Bool)

(assert (= bs!1787516 (and d!2111461 d!2111417)))

(assert (=> bs!1787516 (= lambda!376880 lambda!376848)))

(declare-fun bs!1787517 () Bool)

(assert (= bs!1787517 (and d!2111461 d!2111453)))

(assert (=> bs!1787517 (= lambda!376880 lambda!376879)))

(assert (=> d!2111461 (= (inv!84614 (h!72265 zl!343)) (forall!15747 (exprs!6431 (h!72265 zl!343)) lambda!376880))))

(declare-fun bs!1787518 () Bool)

(assert (= bs!1787518 d!2111461))

(declare-fun m!7481224 () Bool)

(assert (=> bs!1787518 m!7481224))

(assert (=> b!6718093 d!2111461))

(declare-fun d!2111463 () Bool)

(assert (=> d!2111463 (= (isEmpty!38138 (t!379618 zl!343)) ((_ is Nil!65817) (t!379618 zl!343)))))

(assert (=> b!6718108 d!2111463))

(declare-fun d!2111465 () Bool)

(declare-fun isEmpty!38142 (Option!16434) Bool)

(assert (=> d!2111465 (= (isDefined!13137 (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 Nil!65818 s!2326 s!2326)) (not (isEmpty!38142 (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 Nil!65818 s!2326 s!2326))))))

(declare-fun bs!1787519 () Bool)

(assert (= bs!1787519 d!2111465))

(assert (=> bs!1787519 m!7480988))

(declare-fun m!7481226 () Bool)

(assert (=> bs!1787519 m!7481226))

(assert (=> b!6718097 d!2111465))

(declare-fun bs!1787520 () Bool)

(declare-fun d!2111467 () Bool)

(assert (= bs!1787520 (and d!2111467 b!6718346)))

(declare-fun lambda!376885 () Int)

(assert (=> bs!1787520 (not (= lambda!376885 lambda!376863))))

(declare-fun bs!1787521 () Bool)

(assert (= bs!1787521 (and d!2111467 b!6718097)))

(assert (=> bs!1787521 (= lambda!376885 lambda!376825)))

(declare-fun bs!1787522 () Bool)

(assert (= bs!1787522 (and d!2111467 b!6718353)))

(assert (=> bs!1787522 (not (= lambda!376885 lambda!376862))))

(assert (=> bs!1787521 (not (= lambda!376885 lambda!376827))))

(assert (=> bs!1787521 (not (= lambda!376885 lambda!376826))))

(assert (=> d!2111467 true))

(assert (=> d!2111467 true))

(assert (=> d!2111467 true))

(declare-fun bs!1787523 () Bool)

(assert (= bs!1787523 d!2111467))

(declare-fun lambda!376886 () Int)

(assert (=> bs!1787523 (not (= lambda!376886 lambda!376885))))

(assert (=> bs!1787520 (= (and (= (reg!16876 r!7292) (regOne!33606 r!7292)) (= r!7292 (regTwo!33606 r!7292))) (= lambda!376886 lambda!376863))))

(assert (=> bs!1787521 (not (= lambda!376886 lambda!376825))))

(assert (=> bs!1787522 (not (= lambda!376886 lambda!376862))))

(assert (=> bs!1787521 (= lambda!376886 lambda!376827)))

(assert (=> bs!1787521 (not (= lambda!376886 lambda!376826))))

(assert (=> d!2111467 true))

(assert (=> d!2111467 true))

(assert (=> d!2111467 true))

(assert (=> d!2111467 (= (Exists!3615 lambda!376885) (Exists!3615 lambda!376886))))

(declare-fun lt!2436605 () Unit!159785)

(declare-fun choose!50067 (Regex!16547 Regex!16547 List!65942) Unit!159785)

(assert (=> d!2111467 (= lt!2436605 (choose!50067 (reg!16876 r!7292) r!7292 s!2326))))

(assert (=> d!2111467 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2111467 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2142 (reg!16876 r!7292) r!7292 s!2326) lt!2436605)))

(declare-fun m!7481228 () Bool)

(assert (=> bs!1787523 m!7481228))

(declare-fun m!7481230 () Bool)

(assert (=> bs!1787523 m!7481230))

(declare-fun m!7481232 () Bool)

(assert (=> bs!1787523 m!7481232))

(declare-fun m!7481234 () Bool)

(assert (=> bs!1787523 m!7481234))

(assert (=> b!6718097 d!2111467))

(declare-fun bs!1787524 () Bool)

(declare-fun d!2111469 () Bool)

(assert (= bs!1787524 (and d!2111469 d!2111467)))

(declare-fun lambda!376891 () Int)

(assert (=> bs!1787524 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376891 lambda!376885))))

(assert (=> bs!1787524 (not (= lambda!376891 lambda!376886))))

(declare-fun bs!1787525 () Bool)

(assert (= bs!1787525 (and d!2111469 b!6718346)))

(assert (=> bs!1787525 (not (= lambda!376891 lambda!376863))))

(declare-fun bs!1787526 () Bool)

(assert (= bs!1787526 (and d!2111469 b!6718097)))

(assert (=> bs!1787526 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376891 lambda!376825))))

(declare-fun bs!1787527 () Bool)

(assert (= bs!1787527 (and d!2111469 b!6718353)))

(assert (=> bs!1787527 (not (= lambda!376891 lambda!376862))))

(assert (=> bs!1787526 (not (= lambda!376891 lambda!376827))))

(assert (=> bs!1787526 (not (= lambda!376891 lambda!376826))))

(assert (=> d!2111469 true))

(assert (=> d!2111469 true))

(declare-fun lambda!376892 () Int)

(assert (=> bs!1787524 (not (= lambda!376892 lambda!376885))))

(assert (=> bs!1787524 (not (= lambda!376892 lambda!376886))))

(assert (=> bs!1787525 (not (= lambda!376892 lambda!376863))))

(assert (=> bs!1787526 (not (= lambda!376892 lambda!376825))))

(assert (=> bs!1787527 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376892 lambda!376862))))

(assert (=> bs!1787526 (not (= lambda!376892 lambda!376827))))

(declare-fun bs!1787528 () Bool)

(assert (= bs!1787528 d!2111469))

(assert (=> bs!1787528 (not (= lambda!376892 lambda!376891))))

(assert (=> bs!1787526 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376892 lambda!376826))))

(assert (=> d!2111469 true))

(assert (=> d!2111469 true))

(assert (=> d!2111469 (= (Exists!3615 lambda!376891) (Exists!3615 lambda!376892))))

(declare-fun lt!2436608 () Unit!159785)

(declare-fun choose!50068 (Regex!16547 List!65942) Unit!159785)

(assert (=> d!2111469 (= lt!2436608 (choose!50068 (reg!16876 r!7292) s!2326))))

(assert (=> d!2111469 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2111469 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!706 (reg!16876 r!7292) s!2326) lt!2436608)))

(declare-fun m!7481236 () Bool)

(assert (=> bs!1787528 m!7481236))

(declare-fun m!7481238 () Bool)

(assert (=> bs!1787528 m!7481238))

(declare-fun m!7481240 () Bool)

(assert (=> bs!1787528 m!7481240))

(assert (=> bs!1787528 m!7481234))

(assert (=> b!6718097 d!2111469))

(declare-fun d!2111471 () Bool)

(assert (=> d!2111471 (= (isEmpty!38137 s!2326) ((_ is Nil!65818) s!2326))))

(assert (=> b!6718097 d!2111471))

(declare-fun d!2111473 () Bool)

(declare-fun choose!50069 (Int) Bool)

(assert (=> d!2111473 (= (Exists!3615 lambda!376826) (choose!50069 lambda!376826))))

(declare-fun bs!1787529 () Bool)

(assert (= bs!1787529 d!2111473))

(declare-fun m!7481242 () Bool)

(assert (=> bs!1787529 m!7481242))

(assert (=> b!6718097 d!2111473))

(declare-fun d!2111475 () Bool)

(assert (=> d!2111475 (= (Exists!3615 lambda!376825) (choose!50069 lambda!376825))))

(declare-fun bs!1787530 () Bool)

(assert (= bs!1787530 d!2111475))

(declare-fun m!7481244 () Bool)

(assert (=> bs!1787530 m!7481244))

(assert (=> b!6718097 d!2111475))

(declare-fun b!6718663 () Bool)

(declare-fun res!2749540 () Bool)

(declare-fun e!4059909 () Bool)

(assert (=> b!6718663 (=> (not res!2749540) (not e!4059909))))

(declare-fun lt!2436617 () Option!16434)

(declare-fun get!22892 (Option!16434) tuple2!67044)

(assert (=> b!6718663 (= res!2749540 (matchR!8730 (reg!16876 r!7292) (_1!36825 (get!22892 lt!2436617))))))

(declare-fun d!2111477 () Bool)

(declare-fun e!4059911 () Bool)

(assert (=> d!2111477 e!4059911))

(declare-fun res!2749537 () Bool)

(assert (=> d!2111477 (=> res!2749537 e!4059911)))

(assert (=> d!2111477 (= res!2749537 e!4059909)))

(declare-fun res!2749539 () Bool)

(assert (=> d!2111477 (=> (not res!2749539) (not e!4059909))))

(assert (=> d!2111477 (= res!2749539 (isDefined!13137 lt!2436617))))

(declare-fun e!4059908 () Option!16434)

(assert (=> d!2111477 (= lt!2436617 e!4059908)))

(declare-fun c!1245673 () Bool)

(declare-fun e!4059912 () Bool)

(assert (=> d!2111477 (= c!1245673 e!4059912)))

(declare-fun res!2749536 () Bool)

(assert (=> d!2111477 (=> (not res!2749536) (not e!4059912))))

(assert (=> d!2111477 (= res!2749536 (matchR!8730 (reg!16876 r!7292) Nil!65818))))

(assert (=> d!2111477 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2111477 (= (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 Nil!65818 s!2326 s!2326) lt!2436617)))

(declare-fun b!6718664 () Bool)

(declare-fun res!2749538 () Bool)

(assert (=> b!6718664 (=> (not res!2749538) (not e!4059909))))

(assert (=> b!6718664 (= res!2749538 (matchR!8730 r!7292 (_2!36825 (get!22892 lt!2436617))))))

(declare-fun b!6718665 () Bool)

(declare-fun e!4059910 () Option!16434)

(assert (=> b!6718665 (= e!4059908 e!4059910)))

(declare-fun c!1245674 () Bool)

(assert (=> b!6718665 (= c!1245674 ((_ is Nil!65818) s!2326))))

(declare-fun b!6718666 () Bool)

(assert (=> b!6718666 (= e!4059911 (not (isDefined!13137 lt!2436617)))))

(declare-fun b!6718667 () Bool)

(assert (=> b!6718667 (= e!4059910 None!16433)))

(declare-fun b!6718668 () Bool)

(assert (=> b!6718668 (= e!4059912 (matchR!8730 r!7292 s!2326))))

(declare-fun b!6718669 () Bool)

(assert (=> b!6718669 (= e!4059908 (Some!16433 (tuple2!67045 Nil!65818 s!2326)))))

(declare-fun b!6718670 () Bool)

(declare-fun lt!2436615 () Unit!159785)

(declare-fun lt!2436616 () Unit!159785)

(assert (=> b!6718670 (= lt!2436615 lt!2436616)))

(declare-fun ++!14703 (List!65942 List!65942) List!65942)

(assert (=> b!6718670 (= (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (t!379619 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2676 (List!65942 C!33364 List!65942 List!65942) Unit!159785)

(assert (=> b!6718670 (= lt!2436616 (lemmaMoveElementToOtherListKeepsConcatEq!2676 Nil!65818 (h!72266 s!2326) (t!379619 s!2326) s!2326))))

(assert (=> b!6718670 (= e!4059910 (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (t!379619 s!2326) s!2326))))

(declare-fun b!6718671 () Bool)

(assert (=> b!6718671 (= e!4059909 (= (++!14703 (_1!36825 (get!22892 lt!2436617)) (_2!36825 (get!22892 lt!2436617))) s!2326))))

(assert (= (and d!2111477 res!2749536) b!6718668))

(assert (= (and d!2111477 c!1245673) b!6718669))

(assert (= (and d!2111477 (not c!1245673)) b!6718665))

(assert (= (and b!6718665 c!1245674) b!6718667))

(assert (= (and b!6718665 (not c!1245674)) b!6718670))

(assert (= (and d!2111477 res!2749539) b!6718663))

(assert (= (and b!6718663 res!2749540) b!6718664))

(assert (= (and b!6718664 res!2749538) b!6718671))

(assert (= (and d!2111477 (not res!2749537)) b!6718666))

(assert (=> b!6718668 m!7480970))

(declare-fun m!7481246 () Bool)

(assert (=> b!6718670 m!7481246))

(assert (=> b!6718670 m!7481246))

(declare-fun m!7481248 () Bool)

(assert (=> b!6718670 m!7481248))

(declare-fun m!7481250 () Bool)

(assert (=> b!6718670 m!7481250))

(assert (=> b!6718670 m!7481246))

(declare-fun m!7481252 () Bool)

(assert (=> b!6718670 m!7481252))

(declare-fun m!7481254 () Bool)

(assert (=> d!2111477 m!7481254))

(declare-fun m!7481256 () Bool)

(assert (=> d!2111477 m!7481256))

(assert (=> d!2111477 m!7481234))

(assert (=> b!6718666 m!7481254))

(declare-fun m!7481258 () Bool)

(assert (=> b!6718671 m!7481258))

(declare-fun m!7481260 () Bool)

(assert (=> b!6718671 m!7481260))

(assert (=> b!6718664 m!7481258))

(declare-fun m!7481262 () Bool)

(assert (=> b!6718664 m!7481262))

(assert (=> b!6718663 m!7481258))

(declare-fun m!7481264 () Bool)

(assert (=> b!6718663 m!7481264))

(assert (=> b!6718097 d!2111477))

(declare-fun d!2111479 () Bool)

(assert (=> d!2111479 (= (Exists!3615 lambda!376827) (choose!50069 lambda!376827))))

(declare-fun bs!1787531 () Bool)

(assert (= bs!1787531 d!2111479))

(declare-fun m!7481266 () Bool)

(assert (=> bs!1787531 m!7481266))

(assert (=> b!6718097 d!2111479))

(declare-fun bs!1787532 () Bool)

(declare-fun d!2111481 () Bool)

(assert (= bs!1787532 (and d!2111481 d!2111467)))

(declare-fun lambda!376895 () Int)

(assert (=> bs!1787532 (= lambda!376895 lambda!376885)))

(assert (=> bs!1787532 (not (= lambda!376895 lambda!376886))))

(declare-fun bs!1787533 () Bool)

(assert (= bs!1787533 (and d!2111481 b!6718346)))

(assert (=> bs!1787533 (not (= lambda!376895 lambda!376863))))

(declare-fun bs!1787534 () Bool)

(assert (= bs!1787534 (and d!2111481 b!6718353)))

(assert (=> bs!1787534 (not (= lambda!376895 lambda!376862))))

(declare-fun bs!1787535 () Bool)

(assert (= bs!1787535 (and d!2111481 b!6718097)))

(assert (=> bs!1787535 (not (= lambda!376895 lambda!376827))))

(declare-fun bs!1787536 () Bool)

(assert (= bs!1787536 (and d!2111481 d!2111469)))

(assert (=> bs!1787536 (= (= r!7292 (Star!16547 (reg!16876 r!7292))) (= lambda!376895 lambda!376891))))

(assert (=> bs!1787535 (not (= lambda!376895 lambda!376826))))

(assert (=> bs!1787536 (not (= lambda!376895 lambda!376892))))

(assert (=> bs!1787535 (= lambda!376895 lambda!376825)))

(assert (=> d!2111481 true))

(assert (=> d!2111481 true))

(assert (=> d!2111481 true))

(assert (=> d!2111481 (= (isDefined!13137 (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 Nil!65818 s!2326 s!2326)) (Exists!3615 lambda!376895))))

(declare-fun lt!2436620 () Unit!159785)

(declare-fun choose!50070 (Regex!16547 Regex!16547 List!65942) Unit!159785)

(assert (=> d!2111481 (= lt!2436620 (choose!50070 (reg!16876 r!7292) r!7292 s!2326))))

(assert (=> d!2111481 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2111481 (= (lemmaFindConcatSeparationEquivalentToExists!2612 (reg!16876 r!7292) r!7292 s!2326) lt!2436620)))

(declare-fun bs!1787537 () Bool)

(assert (= bs!1787537 d!2111481))

(assert (=> bs!1787537 m!7480988))

(declare-fun m!7481268 () Bool)

(assert (=> bs!1787537 m!7481268))

(assert (=> bs!1787537 m!7481234))

(assert (=> bs!1787537 m!7480988))

(assert (=> bs!1787537 m!7480990))

(declare-fun m!7481270 () Bool)

(assert (=> bs!1787537 m!7481270))

(assert (=> b!6718097 d!2111481))

(declare-fun d!2111483 () Bool)

(declare-fun c!1245679 () Bool)

(declare-fun e!4059923 () Bool)

(assert (=> d!2111483 (= c!1245679 e!4059923)))

(declare-fun res!2749547 () Bool)

(assert (=> d!2111483 (=> (not res!2749547) (not e!4059923))))

(assert (=> d!2111483 (= res!2749547 ((_ is Cons!65816) (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))

(declare-fun e!4059921 () (InoxSet Context!11862))

(assert (=> d!2111483 (= (derivationStepZipperUp!1701 (Context!11863 (Cons!65816 r!7292 Nil!65816)) (h!72266 s!2326)) e!4059921)))

(declare-fun call!606381 () (InoxSet Context!11862))

(declare-fun b!6718686 () Bool)

(assert (=> b!6718686 (= e!4059921 ((_ map or) call!606381 (derivationStepZipperUp!1701 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (h!72266 s!2326))))))

(declare-fun b!6718687 () Bool)

(declare-fun e!4059922 () (InoxSet Context!11862))

(assert (=> b!6718687 (= e!4059922 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6718688 () Bool)

(assert (=> b!6718688 (= e!4059923 (nullable!6534 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))

(declare-fun bm!606376 () Bool)

(assert (=> bm!606376 (= call!606381 (derivationStepZipperDown!1775 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (h!72266 s!2326)))))

(declare-fun b!6718689 () Bool)

(assert (=> b!6718689 (= e!4059922 call!606381)))

(declare-fun b!6718690 () Bool)

(assert (=> b!6718690 (= e!4059921 e!4059922)))

(declare-fun c!1245680 () Bool)

(assert (=> b!6718690 (= c!1245680 ((_ is Cons!65816) (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))

(assert (= (and d!2111483 res!2749547) b!6718688))

(assert (= (and d!2111483 c!1245679) b!6718686))

(assert (= (and d!2111483 (not c!1245679)) b!6718690))

(assert (= (and b!6718690 c!1245680) b!6718689))

(assert (= (and b!6718690 (not c!1245680)) b!6718687))

(assert (= (or b!6718686 b!6718689) bm!606376))

(declare-fun m!7481272 () Bool)

(assert (=> b!6718686 m!7481272))

(declare-fun m!7481274 () Bool)

(assert (=> b!6718688 m!7481274))

(declare-fun m!7481276 () Bool)

(assert (=> bm!606376 m!7481276))

(assert (=> b!6718095 d!2111483))

(declare-fun bm!606389 () Bool)

(declare-fun call!606398 () List!65940)

(declare-fun call!606399 () List!65940)

(assert (=> bm!606389 (= call!606398 call!606399)))

(declare-fun b!6718713 () Bool)

(declare-fun e!4059938 () (InoxSet Context!11862))

(assert (=> b!6718713 (= e!4059938 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6718714 () Bool)

(declare-fun call!606394 () (InoxSet Context!11862))

(assert (=> b!6718714 (= e!4059938 call!606394)))

(declare-fun call!606396 () (InoxSet Context!11862))

(declare-fun bm!606390 () Bool)

(declare-fun c!1245694 () Bool)

(assert (=> bm!606390 (= call!606396 (derivationStepZipperDown!1775 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)) (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (h!72266 s!2326)))))

(declare-fun b!6718715 () Bool)

(declare-fun e!4059940 () (InoxSet Context!11862))

(declare-fun call!606395 () (InoxSet Context!11862))

(assert (=> b!6718715 (= e!4059940 ((_ map or) call!606396 call!606395))))

(declare-fun b!6718716 () Bool)

(declare-fun e!4059939 () Bool)

(assert (=> b!6718716 (= e!4059939 (nullable!6534 (regOne!33606 r!7292)))))

(declare-fun b!6718717 () Bool)

(declare-fun e!4059937 () (InoxSet Context!11862))

(assert (=> b!6718717 (= e!4059940 e!4059937)))

(declare-fun c!1245692 () Bool)

(assert (=> b!6718717 (= c!1245692 ((_ is Concat!25392) r!7292))))

(declare-fun b!6718718 () Bool)

(declare-fun e!4059936 () (InoxSet Context!11862))

(assert (=> b!6718718 (= e!4059936 (store ((as const (Array Context!11862 Bool)) false) (Context!11863 Nil!65816) true))))

(declare-fun b!6718719 () Bool)

(declare-fun e!4059941 () (InoxSet Context!11862))

(declare-fun call!606397 () (InoxSet Context!11862))

(assert (=> b!6718719 (= e!4059941 ((_ map or) call!606396 call!606397))))

(declare-fun b!6718720 () Bool)

(assert (=> b!6718720 (= e!4059936 e!4059941)))

(assert (=> b!6718720 (= c!1245694 ((_ is Union!16547) r!7292))))

(declare-fun bm!606392 () Bool)

(assert (=> bm!606392 (= call!606394 call!606395)))

(declare-fun b!6718721 () Bool)

(assert (=> b!6718721 (= e!4059937 call!606394)))

(declare-fun c!1245695 () Bool)

(declare-fun bm!606393 () Bool)

(declare-fun $colon$colon!2364 (List!65940 Regex!16547) List!65940)

(assert (=> bm!606393 (= call!606399 ($colon$colon!2364 (exprs!6431 (Context!11863 Nil!65816)) (ite (or c!1245695 c!1245692) (regTwo!33606 r!7292) r!7292)))))

(declare-fun bm!606394 () Bool)

(assert (=> bm!606394 (= call!606397 (derivationStepZipperDown!1775 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))) (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (h!72266 s!2326)))))

(declare-fun b!6718722 () Bool)

(declare-fun c!1245691 () Bool)

(assert (=> b!6718722 (= c!1245691 ((_ is Star!16547) r!7292))))

(assert (=> b!6718722 (= e!4059937 e!4059938)))

(declare-fun b!6718723 () Bool)

(assert (=> b!6718723 (= c!1245695 e!4059939)))

(declare-fun res!2749550 () Bool)

(assert (=> b!6718723 (=> (not res!2749550) (not e!4059939))))

(assert (=> b!6718723 (= res!2749550 ((_ is Concat!25392) r!7292))))

(assert (=> b!6718723 (= e!4059941 e!4059940)))

(declare-fun d!2111485 () Bool)

(declare-fun c!1245693 () Bool)

(assert (=> d!2111485 (= c!1245693 (and ((_ is ElementMatch!16547) r!7292) (= (c!1245533 r!7292) (h!72266 s!2326))))))

(assert (=> d!2111485 (= (derivationStepZipperDown!1775 r!7292 (Context!11863 Nil!65816) (h!72266 s!2326)) e!4059936)))

(declare-fun bm!606391 () Bool)

(assert (=> bm!606391 (= call!606395 call!606397)))

(assert (= (and d!2111485 c!1245693) b!6718718))

(assert (= (and d!2111485 (not c!1245693)) b!6718720))

(assert (= (and b!6718720 c!1245694) b!6718719))

(assert (= (and b!6718720 (not c!1245694)) b!6718723))

(assert (= (and b!6718723 res!2749550) b!6718716))

(assert (= (and b!6718723 c!1245695) b!6718715))

(assert (= (and b!6718723 (not c!1245695)) b!6718717))

(assert (= (and b!6718717 c!1245692) b!6718721))

(assert (= (and b!6718717 (not c!1245692)) b!6718722))

(assert (= (and b!6718722 c!1245691) b!6718714))

(assert (= (and b!6718722 (not c!1245691)) b!6718713))

(assert (= (or b!6718721 b!6718714) bm!606389))

(assert (= (or b!6718721 b!6718714) bm!606392))

(assert (= (or b!6718715 bm!606389) bm!606393))

(assert (= (or b!6718715 bm!606392) bm!606391))

(assert (= (or b!6718719 bm!606391) bm!606394))

(assert (= (or b!6718719 b!6718715) bm!606390))

(declare-fun m!7481278 () Bool)

(assert (=> bm!606390 m!7481278))

(declare-fun m!7481280 () Bool)

(assert (=> b!6718718 m!7481280))

(declare-fun m!7481282 () Bool)

(assert (=> bm!606394 m!7481282))

(declare-fun m!7481284 () Bool)

(assert (=> b!6718716 m!7481284))

(declare-fun m!7481286 () Bool)

(assert (=> bm!606393 m!7481286))

(assert (=> b!6718095 d!2111485))

(declare-fun b!6718728 () Bool)

(declare-fun e!4059944 () Bool)

(declare-fun tp!1841306 () Bool)

(assert (=> b!6718728 (= e!4059944 (and tp_is_empty!42347 tp!1841306))))

(assert (=> b!6718100 (= tp!1841243 e!4059944)))

(assert (= (and b!6718100 ((_ is Cons!65818) (t!379619 s!2326))) b!6718728))

(declare-fun condSetEmpty!45805 () Bool)

(assert (=> setNonEmpty!45799 (= condSetEmpty!45805 (= setRest!45799 ((as const (Array Context!11862 Bool)) false)))))

(declare-fun setRes!45805 () Bool)

(assert (=> setNonEmpty!45799 (= tp!1841245 setRes!45805)))

(declare-fun setIsEmpty!45805 () Bool)

(assert (=> setIsEmpty!45805 setRes!45805))

(declare-fun setNonEmpty!45805 () Bool)

(declare-fun e!4059947 () Bool)

(declare-fun setElem!45805 () Context!11862)

(declare-fun tp!1841312 () Bool)

(assert (=> setNonEmpty!45805 (= setRes!45805 (and tp!1841312 (inv!84614 setElem!45805) e!4059947))))

(declare-fun setRest!45805 () (InoxSet Context!11862))

(assert (=> setNonEmpty!45805 (= setRest!45799 ((_ map or) (store ((as const (Array Context!11862 Bool)) false) setElem!45805 true) setRest!45805))))

(declare-fun b!6718733 () Bool)

(declare-fun tp!1841311 () Bool)

(assert (=> b!6718733 (= e!4059947 tp!1841311)))

(assert (= (and setNonEmpty!45799 condSetEmpty!45805) setIsEmpty!45805))

(assert (= (and setNonEmpty!45799 (not condSetEmpty!45805)) setNonEmpty!45805))

(assert (= setNonEmpty!45805 b!6718733))

(declare-fun m!7481288 () Bool)

(assert (=> setNonEmpty!45805 m!7481288))

(declare-fun b!6718747 () Bool)

(declare-fun e!4059950 () Bool)

(declare-fun tp!1841323 () Bool)

(declare-fun tp!1841325 () Bool)

(assert (=> b!6718747 (= e!4059950 (and tp!1841323 tp!1841325))))

(declare-fun b!6718746 () Bool)

(declare-fun tp!1841324 () Bool)

(assert (=> b!6718746 (= e!4059950 tp!1841324)))

(declare-fun b!6718745 () Bool)

(declare-fun tp!1841327 () Bool)

(declare-fun tp!1841326 () Bool)

(assert (=> b!6718745 (= e!4059950 (and tp!1841327 tp!1841326))))

(assert (=> b!6718105 (= tp!1841237 e!4059950)))

(declare-fun b!6718744 () Bool)

(assert (=> b!6718744 (= e!4059950 tp_is_empty!42347)))

(assert (= (and b!6718105 ((_ is ElementMatch!16547) (regOne!33607 r!7292))) b!6718744))

(assert (= (and b!6718105 ((_ is Concat!25392) (regOne!33607 r!7292))) b!6718745))

(assert (= (and b!6718105 ((_ is Star!16547) (regOne!33607 r!7292))) b!6718746))

(assert (= (and b!6718105 ((_ is Union!16547) (regOne!33607 r!7292))) b!6718747))

(declare-fun b!6718751 () Bool)

(declare-fun e!4059951 () Bool)

(declare-fun tp!1841328 () Bool)

(declare-fun tp!1841330 () Bool)

(assert (=> b!6718751 (= e!4059951 (and tp!1841328 tp!1841330))))

(declare-fun b!6718750 () Bool)

(declare-fun tp!1841329 () Bool)

(assert (=> b!6718750 (= e!4059951 tp!1841329)))

(declare-fun b!6718749 () Bool)

(declare-fun tp!1841332 () Bool)

(declare-fun tp!1841331 () Bool)

(assert (=> b!6718749 (= e!4059951 (and tp!1841332 tp!1841331))))

(assert (=> b!6718105 (= tp!1841238 e!4059951)))

(declare-fun b!6718748 () Bool)

(assert (=> b!6718748 (= e!4059951 tp_is_empty!42347)))

(assert (= (and b!6718105 ((_ is ElementMatch!16547) (regTwo!33607 r!7292))) b!6718748))

(assert (= (and b!6718105 ((_ is Concat!25392) (regTwo!33607 r!7292))) b!6718749))

(assert (= (and b!6718105 ((_ is Star!16547) (regTwo!33607 r!7292))) b!6718750))

(assert (= (and b!6718105 ((_ is Union!16547) (regTwo!33607 r!7292))) b!6718751))

(declare-fun b!6718756 () Bool)

(declare-fun e!4059954 () Bool)

(declare-fun tp!1841337 () Bool)

(declare-fun tp!1841338 () Bool)

(assert (=> b!6718756 (= e!4059954 (and tp!1841337 tp!1841338))))

(assert (=> b!6718103 (= tp!1841242 e!4059954)))

(assert (= (and b!6718103 ((_ is Cons!65816) (exprs!6431 (h!72265 zl!343)))) b!6718756))

(declare-fun b!6718760 () Bool)

(declare-fun e!4059955 () Bool)

(declare-fun tp!1841339 () Bool)

(declare-fun tp!1841341 () Bool)

(assert (=> b!6718760 (= e!4059955 (and tp!1841339 tp!1841341))))

(declare-fun b!6718759 () Bool)

(declare-fun tp!1841340 () Bool)

(assert (=> b!6718759 (= e!4059955 tp!1841340)))

(declare-fun b!6718758 () Bool)

(declare-fun tp!1841343 () Bool)

(declare-fun tp!1841342 () Bool)

(assert (=> b!6718758 (= e!4059955 (and tp!1841343 tp!1841342))))

(assert (=> b!6718090 (= tp!1841244 e!4059955)))

(declare-fun b!6718757 () Bool)

(assert (=> b!6718757 (= e!4059955 tp_is_empty!42347)))

(assert (= (and b!6718090 ((_ is ElementMatch!16547) (regOne!33606 r!7292))) b!6718757))

(assert (= (and b!6718090 ((_ is Concat!25392) (regOne!33606 r!7292))) b!6718758))

(assert (= (and b!6718090 ((_ is Star!16547) (regOne!33606 r!7292))) b!6718759))

(assert (= (and b!6718090 ((_ is Union!16547) (regOne!33606 r!7292))) b!6718760))

(declare-fun b!6718764 () Bool)

(declare-fun e!4059956 () Bool)

(declare-fun tp!1841344 () Bool)

(declare-fun tp!1841346 () Bool)

(assert (=> b!6718764 (= e!4059956 (and tp!1841344 tp!1841346))))

(declare-fun b!6718763 () Bool)

(declare-fun tp!1841345 () Bool)

(assert (=> b!6718763 (= e!4059956 tp!1841345)))

(declare-fun b!6718762 () Bool)

(declare-fun tp!1841348 () Bool)

(declare-fun tp!1841347 () Bool)

(assert (=> b!6718762 (= e!4059956 (and tp!1841348 tp!1841347))))

(assert (=> b!6718090 (= tp!1841240 e!4059956)))

(declare-fun b!6718761 () Bool)

(assert (=> b!6718761 (= e!4059956 tp_is_empty!42347)))

(assert (= (and b!6718090 ((_ is ElementMatch!16547) (regTwo!33606 r!7292))) b!6718761))

(assert (= (and b!6718090 ((_ is Concat!25392) (regTwo!33606 r!7292))) b!6718762))

(assert (= (and b!6718090 ((_ is Star!16547) (regTwo!33606 r!7292))) b!6718763))

(assert (= (and b!6718090 ((_ is Union!16547) (regTwo!33606 r!7292))) b!6718764))

(declare-fun b!6718772 () Bool)

(declare-fun e!4059962 () Bool)

(declare-fun tp!1841353 () Bool)

(assert (=> b!6718772 (= e!4059962 tp!1841353)))

(declare-fun tp!1841354 () Bool)

(declare-fun e!4059961 () Bool)

(declare-fun b!6718771 () Bool)

(assert (=> b!6718771 (= e!4059961 (and (inv!84614 (h!72265 (t!379618 zl!343))) e!4059962 tp!1841354))))

(assert (=> b!6718093 (= tp!1841239 e!4059961)))

(assert (= b!6718771 b!6718772))

(assert (= (and b!6718093 ((_ is Cons!65817) (t!379618 zl!343))) b!6718771))

(declare-fun m!7481290 () Bool)

(assert (=> b!6718771 m!7481290))

(declare-fun b!6718776 () Bool)

(declare-fun e!4059963 () Bool)

(declare-fun tp!1841355 () Bool)

(declare-fun tp!1841357 () Bool)

(assert (=> b!6718776 (= e!4059963 (and tp!1841355 tp!1841357))))

(declare-fun b!6718775 () Bool)

(declare-fun tp!1841356 () Bool)

(assert (=> b!6718775 (= e!4059963 tp!1841356)))

(declare-fun b!6718774 () Bool)

(declare-fun tp!1841359 () Bool)

(declare-fun tp!1841358 () Bool)

(assert (=> b!6718774 (= e!4059963 (and tp!1841359 tp!1841358))))

(assert (=> b!6718106 (= tp!1841241 e!4059963)))

(declare-fun b!6718773 () Bool)

(assert (=> b!6718773 (= e!4059963 tp_is_empty!42347)))

(assert (= (and b!6718106 ((_ is ElementMatch!16547) (reg!16876 r!7292))) b!6718773))

(assert (= (and b!6718106 ((_ is Concat!25392) (reg!16876 r!7292))) b!6718774))

(assert (= (and b!6718106 ((_ is Star!16547) (reg!16876 r!7292))) b!6718775))

(assert (= (and b!6718106 ((_ is Union!16547) (reg!16876 r!7292))) b!6718776))

(declare-fun b!6718777 () Bool)

(declare-fun e!4059964 () Bool)

(declare-fun tp!1841360 () Bool)

(declare-fun tp!1841361 () Bool)

(assert (=> b!6718777 (= e!4059964 (and tp!1841360 tp!1841361))))

(assert (=> b!6718101 (= tp!1841236 e!4059964)))

(assert (= (and b!6718101 ((_ is Cons!65816) (exprs!6431 setElem!45799))) b!6718777))

(check-sat (not b!6718464) (not d!2111477) (not b!6718772) (not b!6718664) (not setNonEmpty!45805) (not b!6718466) (not b!6718756) (not b!6718582) (not b!6718247) (not b!6718774) (not b!6718758) (not b!6718268) (not bm!606364) (not b!6718688) (not b!6718584) (not b!6718663) (not b!6718716) (not b!6718760) (not b!6718472) (not b!6718777) (not d!2111461) (not b!6718751) (not b!6718728) (not b!6718590) (not b!6718745) (not b!6718469) (not d!2111437) (not d!2111421) (not b!6718350) (not d!2111399) (not b!6718588) (not b!6718733) (not b!6718686) (not b!6718750) (not d!2111467) (not d!2111465) (not d!2111447) (not b!6718252) (not d!2111475) (not b!6718591) (not b!6718343) (not d!2111453) (not b!6718248) (not d!2111473) (not b!6718764) (not b!6718746) (not b!6718666) (not b!6718586) (not b!6718671) tp_is_empty!42347 (not d!2111481) (not bm!606390) (not b!6718585) (not b!6718254) (not b!6718775) (not b!6718771) (not bm!606339) (not b!6718763) (not b!6718468) (not bm!606340) (not bm!606376) (not b!6718776) (not d!2111401) (not d!2111469) (not bm!606393) (not b!6718624) (not bm!606371) (not d!2111457) (not b!6718462) (not b!6718759) (not b!6718668) (not b!6718749) (not b!6718599) (not b!6718249) (not d!2111479) (not b!6718762) (not b!6718250) (not bm!606394) (not b!6718255) (not b!6718747) (not b!6718670) (not d!2111417) (not bm!606373))
(check-sat)
(get-model)

(declare-fun d!2111547 () Bool)

(assert (=> d!2111547 (= (isEmpty!38142 (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 Nil!65818 s!2326 s!2326)) (not ((_ is Some!16433) (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 Nil!65818 s!2326 s!2326))))))

(assert (=> d!2111465 d!2111547))

(declare-fun bs!1787554 () Bool)

(declare-fun d!2111551 () Bool)

(assert (= bs!1787554 (and d!2111551 d!2111417)))

(declare-fun lambda!376900 () Int)

(assert (=> bs!1787554 (= lambda!376900 lambda!376848)))

(declare-fun bs!1787555 () Bool)

(assert (= bs!1787555 (and d!2111551 d!2111453)))

(assert (=> bs!1787555 (= lambda!376900 lambda!376879)))

(declare-fun bs!1787556 () Bool)

(assert (= bs!1787556 (and d!2111551 d!2111399)))

(assert (=> bs!1787556 (= lambda!376900 lambda!376836)))

(declare-fun bs!1787557 () Bool)

(assert (= bs!1787557 (and d!2111551 d!2111461)))

(assert (=> bs!1787557 (= lambda!376900 lambda!376880)))

(declare-fun bs!1787558 () Bool)

(assert (= bs!1787558 (and d!2111551 d!2111401)))

(assert (=> bs!1787558 (= lambda!376900 lambda!376839)))

(declare-fun b!6718859 () Bool)

(declare-fun e!4060027 () Bool)

(declare-fun lt!2436624 () Regex!16547)

(assert (=> b!6718859 (= e!4060027 (isUnion!1350 lt!2436624))))

(declare-fun b!6718860 () Bool)

(declare-fun e!4060024 () Bool)

(assert (=> b!6718860 (= e!4060024 (isEmptyLang!1920 lt!2436624))))

(declare-fun b!6718861 () Bool)

(assert (=> b!6718861 (= e!4060024 e!4060027)))

(declare-fun c!1245712 () Bool)

(assert (=> b!6718861 (= c!1245712 (isEmpty!38141 (tail!12606 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(declare-fun b!6718862 () Bool)

(declare-fun e!4060028 () Bool)

(assert (=> b!6718862 (= e!4060028 e!4060024)))

(declare-fun c!1245714 () Bool)

(assert (=> b!6718862 (= c!1245714 (isEmpty!38141 (t!379617 (unfocusZipperList!1968 zl!343))))))

(declare-fun b!6718863 () Bool)

(declare-fun e!4060026 () Regex!16547)

(assert (=> b!6718863 (= e!4060026 EmptyLang!16547)))

(declare-fun b!6718858 () Bool)

(declare-fun e!4060025 () Regex!16547)

(assert (=> b!6718858 (= e!4060025 e!4060026)))

(declare-fun c!1245715 () Bool)

(assert (=> b!6718858 (= c!1245715 ((_ is Cons!65816) (t!379617 (unfocusZipperList!1968 zl!343))))))

(assert (=> d!2111551 e!4060028))

(declare-fun res!2749601 () Bool)

(assert (=> d!2111551 (=> (not res!2749601) (not e!4060028))))

(assert (=> d!2111551 (= res!2749601 (validRegex!8283 lt!2436624))))

(assert (=> d!2111551 (= lt!2436624 e!4060025)))

(declare-fun c!1245713 () Bool)

(declare-fun e!4060029 () Bool)

(assert (=> d!2111551 (= c!1245713 e!4060029)))

(declare-fun res!2749602 () Bool)

(assert (=> d!2111551 (=> (not res!2749602) (not e!4060029))))

(assert (=> d!2111551 (= res!2749602 ((_ is Cons!65816) (t!379617 (unfocusZipperList!1968 zl!343))))))

(assert (=> d!2111551 (forall!15747 (t!379617 (unfocusZipperList!1968 zl!343)) lambda!376900)))

(assert (=> d!2111551 (= (generalisedUnion!2391 (t!379617 (unfocusZipperList!1968 zl!343))) lt!2436624)))

(declare-fun b!6718864 () Bool)

(assert (=> b!6718864 (= e!4060026 (Union!16547 (h!72264 (t!379617 (unfocusZipperList!1968 zl!343))) (generalisedUnion!2391 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343))))))))

(declare-fun b!6718865 () Bool)

(assert (=> b!6718865 (= e!4060025 (h!72264 (t!379617 (unfocusZipperList!1968 zl!343))))))

(declare-fun b!6718866 () Bool)

(assert (=> b!6718866 (= e!4060029 (isEmpty!38141 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(declare-fun b!6718867 () Bool)

(assert (=> b!6718867 (= e!4060027 (= lt!2436624 (head!13521 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(assert (= (and d!2111551 res!2749602) b!6718866))

(assert (= (and d!2111551 c!1245713) b!6718865))

(assert (= (and d!2111551 (not c!1245713)) b!6718858))

(assert (= (and b!6718858 c!1245715) b!6718864))

(assert (= (and b!6718858 (not c!1245715)) b!6718863))

(assert (= (and d!2111551 res!2749601) b!6718862))

(assert (= (and b!6718862 c!1245714) b!6718860))

(assert (= (and b!6718862 (not c!1245714)) b!6718861))

(assert (= (and b!6718861 c!1245712) b!6718867))

(assert (= (and b!6718861 (not c!1245712)) b!6718859))

(declare-fun m!7481366 () Bool)

(assert (=> d!2111551 m!7481366))

(declare-fun m!7481368 () Bool)

(assert (=> d!2111551 m!7481368))

(declare-fun m!7481370 () Bool)

(assert (=> b!6718867 m!7481370))

(declare-fun m!7481372 () Bool)

(assert (=> b!6718861 m!7481372))

(assert (=> b!6718861 m!7481372))

(declare-fun m!7481374 () Bool)

(assert (=> b!6718861 m!7481374))

(declare-fun m!7481376 () Bool)

(assert (=> b!6718859 m!7481376))

(declare-fun m!7481378 () Bool)

(assert (=> b!6718866 m!7481378))

(assert (=> b!6718862 m!7481042))

(declare-fun m!7481380 () Bool)

(assert (=> b!6718860 m!7481380))

(declare-fun m!7481382 () Bool)

(assert (=> b!6718864 m!7481382))

(assert (=> b!6718252 d!2111551))

(declare-fun d!2111559 () Bool)

(assert (=> d!2111559 (= (isDefined!13137 lt!2436617) (not (isEmpty!38142 lt!2436617)))))

(declare-fun bs!1787561 () Bool)

(assert (= bs!1787561 d!2111559))

(declare-fun m!7481384 () Bool)

(assert (=> bs!1787561 m!7481384))

(assert (=> d!2111477 d!2111559))

(declare-fun b!6718882 () Bool)

(declare-fun res!2749612 () Bool)

(declare-fun e!4060037 () Bool)

(assert (=> b!6718882 (=> (not res!2749612) (not e!4060037))))

(declare-fun call!606417 () Bool)

(assert (=> b!6718882 (= res!2749612 (not call!606417))))

(declare-fun b!6718883 () Bool)

(declare-fun e!4060040 () Bool)

(declare-fun e!4060041 () Bool)

(assert (=> b!6718883 (= e!4060040 e!4060041)))

(declare-fun res!2749618 () Bool)

(assert (=> b!6718883 (=> (not res!2749618) (not e!4060041))))

(declare-fun lt!2436626 () Bool)

(assert (=> b!6718883 (= res!2749618 (not lt!2436626))))

(declare-fun b!6718884 () Bool)

(declare-fun e!4060038 () Bool)

(assert (=> b!6718884 (= e!4060038 (matchR!8730 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 Nil!65818)) (tail!12607 Nil!65818)))))

(declare-fun d!2111561 () Bool)

(declare-fun e!4060042 () Bool)

(assert (=> d!2111561 e!4060042))

(declare-fun c!1245719 () Bool)

(assert (=> d!2111561 (= c!1245719 ((_ is EmptyExpr!16547) (reg!16876 r!7292)))))

(assert (=> d!2111561 (= lt!2436626 e!4060038)))

(declare-fun c!1245720 () Bool)

(assert (=> d!2111561 (= c!1245720 (isEmpty!38137 Nil!65818))))

(assert (=> d!2111561 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2111561 (= (matchR!8730 (reg!16876 r!7292) Nil!65818) lt!2436626)))

(declare-fun b!6718885 () Bool)

(declare-fun e!4060039 () Bool)

(assert (=> b!6718885 (= e!4060039 (not lt!2436626))))

(declare-fun b!6718886 () Bool)

(declare-fun e!4060043 () Bool)

(assert (=> b!6718886 (= e!4060043 (not (= (head!13522 Nil!65818) (c!1245533 (reg!16876 r!7292)))))))

(declare-fun b!6718887 () Bool)

(assert (=> b!6718887 (= e!4060042 (= lt!2436626 call!606417))))

(declare-fun bm!606412 () Bool)

(assert (=> bm!606412 (= call!606417 (isEmpty!38137 Nil!65818))))

(declare-fun b!6718888 () Bool)

(assert (=> b!6718888 (= e!4060038 (nullable!6534 (reg!16876 r!7292)))))

(declare-fun b!6718889 () Bool)

(assert (=> b!6718889 (= e!4060042 e!4060039)))

(declare-fun c!1245721 () Bool)

(assert (=> b!6718889 (= c!1245721 ((_ is EmptyLang!16547) (reg!16876 r!7292)))))

(declare-fun b!6718890 () Bool)

(assert (=> b!6718890 (= e!4060037 (= (head!13522 Nil!65818) (c!1245533 (reg!16876 r!7292))))))

(declare-fun b!6718891 () Bool)

(declare-fun res!2749615 () Bool)

(assert (=> b!6718891 (=> res!2749615 e!4060043)))

(assert (=> b!6718891 (= res!2749615 (not (isEmpty!38137 (tail!12607 Nil!65818))))))

(declare-fun b!6718892 () Bool)

(declare-fun res!2749613 () Bool)

(assert (=> b!6718892 (=> res!2749613 e!4060040)))

(assert (=> b!6718892 (= res!2749613 e!4060037)))

(declare-fun res!2749617 () Bool)

(assert (=> b!6718892 (=> (not res!2749617) (not e!4060037))))

(assert (=> b!6718892 (= res!2749617 lt!2436626)))

(declare-fun b!6718893 () Bool)

(declare-fun res!2749614 () Bool)

(assert (=> b!6718893 (=> res!2749614 e!4060040)))

(assert (=> b!6718893 (= res!2749614 (not ((_ is ElementMatch!16547) (reg!16876 r!7292))))))

(assert (=> b!6718893 (= e!4060039 e!4060040)))

(declare-fun b!6718894 () Bool)

(declare-fun res!2749611 () Bool)

(assert (=> b!6718894 (=> (not res!2749611) (not e!4060037))))

(assert (=> b!6718894 (= res!2749611 (isEmpty!38137 (tail!12607 Nil!65818)))))

(declare-fun b!6718895 () Bool)

(assert (=> b!6718895 (= e!4060041 e!4060043)))

(declare-fun res!2749616 () Bool)

(assert (=> b!6718895 (=> res!2749616 e!4060043)))

(assert (=> b!6718895 (= res!2749616 call!606417)))

(assert (= (and d!2111561 c!1245720) b!6718888))

(assert (= (and d!2111561 (not c!1245720)) b!6718884))

(assert (= (and d!2111561 c!1245719) b!6718887))

(assert (= (and d!2111561 (not c!1245719)) b!6718889))

(assert (= (and b!6718889 c!1245721) b!6718885))

(assert (= (and b!6718889 (not c!1245721)) b!6718893))

(assert (= (and b!6718893 (not res!2749614)) b!6718892))

(assert (= (and b!6718892 res!2749617) b!6718882))

(assert (= (and b!6718882 res!2749612) b!6718894))

(assert (= (and b!6718894 res!2749611) b!6718890))

(assert (= (and b!6718892 (not res!2749613)) b!6718883))

(assert (= (and b!6718883 res!2749618) b!6718895))

(assert (= (and b!6718895 (not res!2749616)) b!6718891))

(assert (= (and b!6718891 (not res!2749615)) b!6718886))

(assert (= (or b!6718887 b!6718882 b!6718895) bm!606412))

(declare-fun m!7481398 () Bool)

(assert (=> b!6718890 m!7481398))

(assert (=> b!6718886 m!7481398))

(declare-fun m!7481400 () Bool)

(assert (=> bm!606412 m!7481400))

(declare-fun m!7481404 () Bool)

(assert (=> b!6718891 m!7481404))

(assert (=> b!6718891 m!7481404))

(declare-fun m!7481406 () Bool)

(assert (=> b!6718891 m!7481406))

(assert (=> d!2111561 m!7481400))

(assert (=> d!2111561 m!7481234))

(assert (=> b!6718894 m!7481404))

(assert (=> b!6718894 m!7481404))

(assert (=> b!6718894 m!7481406))

(assert (=> b!6718884 m!7481398))

(assert (=> b!6718884 m!7481398))

(declare-fun m!7481408 () Bool)

(assert (=> b!6718884 m!7481408))

(assert (=> b!6718884 m!7481404))

(assert (=> b!6718884 m!7481408))

(assert (=> b!6718884 m!7481404))

(declare-fun m!7481410 () Bool)

(assert (=> b!6718884 m!7481410))

(assert (=> b!6718888 m!7481220))

(assert (=> d!2111477 d!2111561))

(declare-fun b!6718896 () Bool)

(declare-fun e!4060048 () Bool)

(declare-fun call!606418 () Bool)

(assert (=> b!6718896 (= e!4060048 call!606418)))

(declare-fun b!6718897 () Bool)

(declare-fun res!2749621 () Bool)

(declare-fun e!4060046 () Bool)

(assert (=> b!6718897 (=> res!2749621 e!4060046)))

(assert (=> b!6718897 (= res!2749621 (not ((_ is Concat!25392) (reg!16876 r!7292))))))

(declare-fun e!4060049 () Bool)

(assert (=> b!6718897 (= e!4060049 e!4060046)))

(declare-fun b!6718898 () Bool)

(declare-fun res!2749623 () Bool)

(assert (=> b!6718898 (=> (not res!2749623) (not e!4060048))))

(declare-fun call!606419 () Bool)

(assert (=> b!6718898 (= res!2749623 call!606419)))

(assert (=> b!6718898 (= e!4060049 e!4060048)))

(declare-fun b!6718899 () Bool)

(declare-fun e!4060044 () Bool)

(assert (=> b!6718899 (= e!4060044 e!4060049)))

(declare-fun c!1245722 () Bool)

(assert (=> b!6718899 (= c!1245722 ((_ is Union!16547) (reg!16876 r!7292)))))

(declare-fun d!2111565 () Bool)

(declare-fun res!2749619 () Bool)

(declare-fun e!4060050 () Bool)

(assert (=> d!2111565 (=> res!2749619 e!4060050)))

(assert (=> d!2111565 (= res!2749619 ((_ is ElementMatch!16547) (reg!16876 r!7292)))))

(assert (=> d!2111565 (= (validRegex!8283 (reg!16876 r!7292)) e!4060050)))

(declare-fun bm!606413 () Bool)

(declare-fun call!606420 () Bool)

(declare-fun c!1245723 () Bool)

(assert (=> bm!606413 (= call!606420 (validRegex!8283 (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))))))

(declare-fun b!6718900 () Bool)

(declare-fun e!4060047 () Bool)

(assert (=> b!6718900 (= e!4060047 call!606420)))

(declare-fun bm!606414 () Bool)

(assert (=> bm!606414 (= call!606418 call!606420)))

(declare-fun b!6718901 () Bool)

(declare-fun e!4060045 () Bool)

(assert (=> b!6718901 (= e!4060045 call!606418)))

(declare-fun b!6718902 () Bool)

(assert (=> b!6718902 (= e!4060044 e!4060047)))

(declare-fun res!2749622 () Bool)

(assert (=> b!6718902 (= res!2749622 (not (nullable!6534 (reg!16876 (reg!16876 r!7292)))))))

(assert (=> b!6718902 (=> (not res!2749622) (not e!4060047))))

(declare-fun b!6718903 () Bool)

(assert (=> b!6718903 (= e!4060050 e!4060044)))

(assert (=> b!6718903 (= c!1245723 ((_ is Star!16547) (reg!16876 r!7292)))))

(declare-fun b!6718904 () Bool)

(assert (=> b!6718904 (= e!4060046 e!4060045)))

(declare-fun res!2749620 () Bool)

(assert (=> b!6718904 (=> (not res!2749620) (not e!4060045))))

(assert (=> b!6718904 (= res!2749620 call!606419)))

(declare-fun bm!606415 () Bool)

(assert (=> bm!606415 (= call!606419 (validRegex!8283 (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))))))

(assert (= (and d!2111565 (not res!2749619)) b!6718903))

(assert (= (and b!6718903 c!1245723) b!6718902))

(assert (= (and b!6718903 (not c!1245723)) b!6718899))

(assert (= (and b!6718902 res!2749622) b!6718900))

(assert (= (and b!6718899 c!1245722) b!6718898))

(assert (= (and b!6718899 (not c!1245722)) b!6718897))

(assert (= (and b!6718898 res!2749623) b!6718896))

(assert (= (and b!6718897 (not res!2749621)) b!6718904))

(assert (= (and b!6718904 res!2749620) b!6718901))

(assert (= (or b!6718896 b!6718901) bm!606414))

(assert (= (or b!6718898 b!6718904) bm!606415))

(assert (= (or b!6718900 bm!606414) bm!606413))

(declare-fun m!7481412 () Bool)

(assert (=> bm!606413 m!7481412))

(declare-fun m!7481414 () Bool)

(assert (=> b!6718902 m!7481414))

(declare-fun m!7481416 () Bool)

(assert (=> bm!606415 m!7481416))

(assert (=> d!2111477 d!2111565))

(declare-fun d!2111567 () Bool)

(assert (=> d!2111567 (= (isEmpty!38141 (unfocusZipperList!1968 zl!343)) ((_ is Nil!65816) (unfocusZipperList!1968 zl!343)))))

(assert (=> b!6718250 d!2111567))

(declare-fun bs!1787562 () Bool)

(declare-fun b!6718915 () Bool)

(assert (= bs!1787562 (and b!6718915 d!2111467)))

(declare-fun lambda!376901 () Int)

(assert (=> bs!1787562 (not (= lambda!376901 lambda!376885))))

(assert (=> bs!1787562 (not (= lambda!376901 lambda!376886))))

(declare-fun bs!1787563 () Bool)

(assert (= bs!1787563 (and b!6718915 b!6718346)))

(assert (=> bs!1787563 (not (= lambda!376901 lambda!376863))))

(declare-fun bs!1787564 () Bool)

(assert (= bs!1787564 (and b!6718915 b!6718353)))

(assert (=> bs!1787564 (= (and (= (reg!16876 (regOne!33607 r!7292)) (reg!16876 r!7292)) (= (regOne!33607 r!7292) r!7292)) (= lambda!376901 lambda!376862))))

(declare-fun bs!1787565 () Bool)

(assert (= bs!1787565 (and b!6718915 b!6718097)))

(assert (=> bs!1787565 (not (= lambda!376901 lambda!376827))))

(declare-fun bs!1787566 () Bool)

(assert (= bs!1787566 (and b!6718915 d!2111469)))

(assert (=> bs!1787566 (not (= lambda!376901 lambda!376891))))

(assert (=> bs!1787565 (= (and (= (reg!16876 (regOne!33607 r!7292)) (reg!16876 r!7292)) (= (regOne!33607 r!7292) r!7292)) (= lambda!376901 lambda!376826))))

(assert (=> bs!1787566 (= (and (= (reg!16876 (regOne!33607 r!7292)) (reg!16876 r!7292)) (= (regOne!33607 r!7292) (Star!16547 (reg!16876 r!7292)))) (= lambda!376901 lambda!376892))))

(assert (=> bs!1787565 (not (= lambda!376901 lambda!376825))))

(declare-fun bs!1787567 () Bool)

(assert (= bs!1787567 (and b!6718915 d!2111481)))

(assert (=> bs!1787567 (not (= lambda!376901 lambda!376895))))

(assert (=> b!6718915 true))

(assert (=> b!6718915 true))

(declare-fun bs!1787568 () Bool)

(declare-fun b!6718908 () Bool)

(assert (= bs!1787568 (and b!6718908 d!2111467)))

(declare-fun lambda!376902 () Int)

(assert (=> bs!1787568 (not (= lambda!376902 lambda!376885))))

(assert (=> bs!1787568 (= (and (= (regOne!33606 (regOne!33607 r!7292)) (reg!16876 r!7292)) (= (regTwo!33606 (regOne!33607 r!7292)) r!7292)) (= lambda!376902 lambda!376886))))

(declare-fun bs!1787569 () Bool)

(assert (= bs!1787569 (and b!6718908 b!6718346)))

(assert (=> bs!1787569 (= (and (= (regOne!33606 (regOne!33607 r!7292)) (regOne!33606 r!7292)) (= (regTwo!33606 (regOne!33607 r!7292)) (regTwo!33606 r!7292))) (= lambda!376902 lambda!376863))))

(declare-fun bs!1787570 () Bool)

(assert (= bs!1787570 (and b!6718908 b!6718353)))

(assert (=> bs!1787570 (not (= lambda!376902 lambda!376862))))

(declare-fun bs!1787571 () Bool)

(assert (= bs!1787571 (and b!6718908 b!6718097)))

(assert (=> bs!1787571 (= (and (= (regOne!33606 (regOne!33607 r!7292)) (reg!16876 r!7292)) (= (regTwo!33606 (regOne!33607 r!7292)) r!7292)) (= lambda!376902 lambda!376827))))

(declare-fun bs!1787572 () Bool)

(assert (= bs!1787572 (and b!6718908 d!2111469)))

(assert (=> bs!1787572 (not (= lambda!376902 lambda!376891))))

(declare-fun bs!1787573 () Bool)

(assert (= bs!1787573 (and b!6718908 b!6718915)))

(assert (=> bs!1787573 (not (= lambda!376902 lambda!376901))))

(assert (=> bs!1787571 (not (= lambda!376902 lambda!376826))))

(assert (=> bs!1787572 (not (= lambda!376902 lambda!376892))))

(assert (=> bs!1787571 (not (= lambda!376902 lambda!376825))))

(declare-fun bs!1787574 () Bool)

(assert (= bs!1787574 (and b!6718908 d!2111481)))

(assert (=> bs!1787574 (not (= lambda!376902 lambda!376895))))

(assert (=> b!6718908 true))

(assert (=> b!6718908 true))

(declare-fun b!6718905 () Bool)

(declare-fun e!4060057 () Bool)

(declare-fun e!4060055 () Bool)

(assert (=> b!6718905 (= e!4060057 e!4060055)))

(declare-fun res!2749624 () Bool)

(assert (=> b!6718905 (= res!2749624 (matchRSpec!3648 (regOne!33607 (regOne!33607 r!7292)) s!2326))))

(assert (=> b!6718905 (=> res!2749624 e!4060055)))

(declare-fun b!6718906 () Bool)

(declare-fun c!1245724 () Bool)

(assert (=> b!6718906 (= c!1245724 ((_ is Union!16547) (regOne!33607 r!7292)))))

(declare-fun e!4060051 () Bool)

(assert (=> b!6718906 (= e!4060051 e!4060057)))

(declare-fun b!6718907 () Bool)

(assert (=> b!6718907 (= e!4060051 (= s!2326 (Cons!65818 (c!1245533 (regOne!33607 r!7292)) Nil!65818)))))

(declare-fun b!6718909 () Bool)

(declare-fun c!1245725 () Bool)

(assert (=> b!6718909 (= c!1245725 ((_ is ElementMatch!16547) (regOne!33607 r!7292)))))

(declare-fun e!4060052 () Bool)

(assert (=> b!6718909 (= e!4060052 e!4060051)))

(declare-fun b!6718910 () Bool)

(declare-fun res!2749626 () Bool)

(declare-fun e!4060056 () Bool)

(assert (=> b!6718910 (=> res!2749626 e!4060056)))

(declare-fun call!606421 () Bool)

(assert (=> b!6718910 (= res!2749626 call!606421)))

(declare-fun e!4060053 () Bool)

(assert (=> b!6718910 (= e!4060053 e!4060056)))

(declare-fun b!6718911 () Bool)

(declare-fun e!4060054 () Bool)

(assert (=> b!6718911 (= e!4060054 call!606421)))

(declare-fun b!6718912 () Bool)

(assert (=> b!6718912 (= e!4060055 (matchRSpec!3648 (regTwo!33607 (regOne!33607 r!7292)) s!2326))))

(declare-fun bm!606416 () Bool)

(assert (=> bm!606416 (= call!606421 (isEmpty!38137 s!2326))))

(declare-fun b!6718913 () Bool)

(assert (=> b!6718913 (= e!4060054 e!4060052)))

(declare-fun res!2749625 () Bool)

(assert (=> b!6718913 (= res!2749625 (not ((_ is EmptyLang!16547) (regOne!33607 r!7292))))))

(assert (=> b!6718913 (=> (not res!2749625) (not e!4060052))))

(declare-fun b!6718914 () Bool)

(assert (=> b!6718914 (= e!4060057 e!4060053)))

(declare-fun c!1245727 () Bool)

(assert (=> b!6718914 (= c!1245727 ((_ is Star!16547) (regOne!33607 r!7292)))))

(declare-fun call!606422 () Bool)

(assert (=> b!6718908 (= e!4060053 call!606422)))

(declare-fun d!2111569 () Bool)

(declare-fun c!1245726 () Bool)

(assert (=> d!2111569 (= c!1245726 ((_ is EmptyExpr!16547) (regOne!33607 r!7292)))))

(assert (=> d!2111569 (= (matchRSpec!3648 (regOne!33607 r!7292) s!2326) e!4060054)))

(assert (=> b!6718915 (= e!4060056 call!606422)))

(declare-fun bm!606417 () Bool)

(assert (=> bm!606417 (= call!606422 (Exists!3615 (ite c!1245727 lambda!376901 lambda!376902)))))

(assert (= (and d!2111569 c!1245726) b!6718911))

(assert (= (and d!2111569 (not c!1245726)) b!6718913))

(assert (= (and b!6718913 res!2749625) b!6718909))

(assert (= (and b!6718909 c!1245725) b!6718907))

(assert (= (and b!6718909 (not c!1245725)) b!6718906))

(assert (= (and b!6718906 c!1245724) b!6718905))

(assert (= (and b!6718906 (not c!1245724)) b!6718914))

(assert (= (and b!6718905 (not res!2749624)) b!6718912))

(assert (= (and b!6718914 c!1245727) b!6718910))

(assert (= (and b!6718914 (not c!1245727)) b!6718908))

(assert (= (and b!6718910 (not res!2749626)) b!6718915))

(assert (= (or b!6718915 b!6718908) bm!606417))

(assert (= (or b!6718911 b!6718910) bm!606416))

(declare-fun m!7481418 () Bool)

(assert (=> b!6718905 m!7481418))

(declare-fun m!7481420 () Bool)

(assert (=> b!6718912 m!7481420))

(assert (=> bm!606416 m!7480976))

(declare-fun m!7481422 () Bool)

(assert (=> bm!606417 m!7481422))

(assert (=> b!6718343 d!2111569))

(declare-fun d!2111571 () Bool)

(assert (=> d!2111571 (= (isEmpty!38141 (t!379617 (unfocusZipperList!1968 zl!343))) ((_ is Nil!65816) (t!379617 (unfocusZipperList!1968 zl!343))))))

(assert (=> b!6718254 d!2111571))

(assert (=> d!2111481 d!2111465))

(declare-fun bs!1787577 () Bool)

(declare-fun d!2111573 () Bool)

(assert (= bs!1787577 (and d!2111573 d!2111467)))

(declare-fun lambda!376905 () Int)

(assert (=> bs!1787577 (= lambda!376905 lambda!376885)))

(assert (=> bs!1787577 (not (= lambda!376905 lambda!376886))))

(declare-fun bs!1787578 () Bool)

(assert (= bs!1787578 (and d!2111573 b!6718346)))

(assert (=> bs!1787578 (not (= lambda!376905 lambda!376863))))

(declare-fun bs!1787579 () Bool)

(assert (= bs!1787579 (and d!2111573 b!6718353)))

(assert (=> bs!1787579 (not (= lambda!376905 lambda!376862))))

(declare-fun bs!1787580 () Bool)

(assert (= bs!1787580 (and d!2111573 b!6718097)))

(assert (=> bs!1787580 (not (= lambda!376905 lambda!376827))))

(declare-fun bs!1787581 () Bool)

(assert (= bs!1787581 (and d!2111573 b!6718908)))

(assert (=> bs!1787581 (not (= lambda!376905 lambda!376902))))

(declare-fun bs!1787582 () Bool)

(assert (= bs!1787582 (and d!2111573 d!2111469)))

(assert (=> bs!1787582 (= (= r!7292 (Star!16547 (reg!16876 r!7292))) (= lambda!376905 lambda!376891))))

(declare-fun bs!1787583 () Bool)

(assert (= bs!1787583 (and d!2111573 b!6718915)))

(assert (=> bs!1787583 (not (= lambda!376905 lambda!376901))))

(assert (=> bs!1787580 (not (= lambda!376905 lambda!376826))))

(assert (=> bs!1787582 (not (= lambda!376905 lambda!376892))))

(assert (=> bs!1787580 (= lambda!376905 lambda!376825)))

(declare-fun bs!1787584 () Bool)

(assert (= bs!1787584 (and d!2111573 d!2111481)))

(assert (=> bs!1787584 (= lambda!376905 lambda!376895)))

(assert (=> d!2111573 true))

(assert (=> d!2111573 true))

(assert (=> d!2111573 true))

(assert (=> d!2111573 (= (isDefined!13137 (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 Nil!65818 s!2326 s!2326)) (Exists!3615 lambda!376905))))

(assert (=> d!2111573 true))

(declare-fun _$89!2920 () Unit!159785)

(assert (=> d!2111573 (= (choose!50070 (reg!16876 r!7292) r!7292 s!2326) _$89!2920)))

(declare-fun bs!1787585 () Bool)

(assert (= bs!1787585 d!2111573))

(assert (=> bs!1787585 m!7480988))

(assert (=> bs!1787585 m!7480988))

(assert (=> bs!1787585 m!7480990))

(declare-fun m!7481434 () Bool)

(assert (=> bs!1787585 m!7481434))

(assert (=> d!2111481 d!2111573))

(declare-fun d!2111581 () Bool)

(assert (=> d!2111581 (= (Exists!3615 lambda!376895) (choose!50069 lambda!376895))))

(declare-fun bs!1787586 () Bool)

(assert (= bs!1787586 d!2111581))

(declare-fun m!7481436 () Bool)

(assert (=> bs!1787586 m!7481436))

(assert (=> d!2111481 d!2111581))

(assert (=> d!2111481 d!2111477))

(assert (=> d!2111481 d!2111565))

(declare-fun b!6718954 () Bool)

(declare-fun e!4060081 () Bool)

(declare-fun call!606435 () Bool)

(assert (=> b!6718954 (= e!4060081 call!606435)))

(declare-fun b!6718955 () Bool)

(declare-fun res!2749637 () Bool)

(declare-fun e!4060079 () Bool)

(assert (=> b!6718955 (=> res!2749637 e!4060079)))

(assert (=> b!6718955 (= res!2749637 (not ((_ is Concat!25392) (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))

(declare-fun e!4060082 () Bool)

(assert (=> b!6718955 (= e!4060082 e!4060079)))

(declare-fun b!6718956 () Bool)

(declare-fun res!2749639 () Bool)

(assert (=> b!6718956 (=> (not res!2749639) (not e!4060081))))

(declare-fun call!606436 () Bool)

(assert (=> b!6718956 (= res!2749639 call!606436)))

(assert (=> b!6718956 (= e!4060082 e!4060081)))

(declare-fun b!6718957 () Bool)

(declare-fun e!4060077 () Bool)

(assert (=> b!6718957 (= e!4060077 e!4060082)))

(declare-fun c!1245743 () Bool)

(assert (=> b!6718957 (= c!1245743 ((_ is Union!16547) (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))

(declare-fun d!2111583 () Bool)

(declare-fun res!2749635 () Bool)

(declare-fun e!4060083 () Bool)

(assert (=> d!2111583 (=> res!2749635 e!4060083)))

(assert (=> d!2111583 (= res!2749635 ((_ is ElementMatch!16547) (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))

(assert (=> d!2111583 (= (validRegex!8283 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) e!4060083)))

(declare-fun c!1245744 () Bool)

(declare-fun call!606437 () Bool)

(declare-fun bm!606430 () Bool)

(assert (=> bm!606430 (= call!606437 (validRegex!8283 (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))

(declare-fun b!6718958 () Bool)

(declare-fun e!4060080 () Bool)

(assert (=> b!6718958 (= e!4060080 call!606437)))

(declare-fun bm!606431 () Bool)

(assert (=> bm!606431 (= call!606435 call!606437)))

(declare-fun b!6718959 () Bool)

(declare-fun e!4060078 () Bool)

(assert (=> b!6718959 (= e!4060078 call!606435)))

(declare-fun b!6718960 () Bool)

(assert (=> b!6718960 (= e!4060077 e!4060080)))

(declare-fun res!2749638 () Bool)

(assert (=> b!6718960 (= res!2749638 (not (nullable!6534 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))

(assert (=> b!6718960 (=> (not res!2749638) (not e!4060080))))

(declare-fun b!6718961 () Bool)

(assert (=> b!6718961 (= e!4060083 e!4060077)))

(assert (=> b!6718961 (= c!1245744 ((_ is Star!16547) (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))

(declare-fun b!6718962 () Bool)

(assert (=> b!6718962 (= e!4060079 e!4060078)))

(declare-fun res!2749636 () Bool)

(assert (=> b!6718962 (=> (not res!2749636) (not e!4060078))))

(assert (=> b!6718962 (= res!2749636 call!606436)))

(declare-fun bm!606432 () Bool)

(assert (=> bm!606432 (= call!606436 (validRegex!8283 (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))

(assert (= (and d!2111583 (not res!2749635)) b!6718961))

(assert (= (and b!6718961 c!1245744) b!6718960))

(assert (= (and b!6718961 (not c!1245744)) b!6718957))

(assert (= (and b!6718960 res!2749638) b!6718958))

(assert (= (and b!6718957 c!1245743) b!6718956))

(assert (= (and b!6718957 (not c!1245743)) b!6718955))

(assert (= (and b!6718956 res!2749639) b!6718954))

(assert (= (and b!6718955 (not res!2749637)) b!6718962))

(assert (= (and b!6718962 res!2749636) b!6718959))

(assert (= (or b!6718954 b!6718959) bm!606431))

(assert (= (or b!6718956 b!6718962) bm!606432))

(assert (= (or b!6718958 bm!606431) bm!606430))

(declare-fun m!7481438 () Bool)

(assert (=> bm!606430 m!7481438))

(declare-fun m!7481440 () Bool)

(assert (=> b!6718960 m!7481440))

(declare-fun m!7481442 () Bool)

(assert (=> bm!606432 m!7481442))

(assert (=> bm!606373 d!2111583))

(declare-fun b!6718977 () Bool)

(declare-fun res!2749648 () Bool)

(declare-fun e!4060090 () Bool)

(assert (=> b!6718977 (=> (not res!2749648) (not e!4060090))))

(declare-fun lt!2436632 () List!65942)

(declare-fun size!40597 (List!65942) Int)

(assert (=> b!6718977 (= res!2749648 (= (size!40597 lt!2436632) (+ (size!40597 (_1!36825 (get!22892 lt!2436617))) (size!40597 (_2!36825 (get!22892 lt!2436617))))))))

(declare-fun d!2111585 () Bool)

(assert (=> d!2111585 e!4060090))

(declare-fun res!2749649 () Bool)

(assert (=> d!2111585 (=> (not res!2749649) (not e!4060090))))

(declare-fun content!12765 (List!65942) (InoxSet C!33364))

(assert (=> d!2111585 (= res!2749649 (= (content!12765 lt!2436632) ((_ map or) (content!12765 (_1!36825 (get!22892 lt!2436617))) (content!12765 (_2!36825 (get!22892 lt!2436617))))))))

(declare-fun e!4060091 () List!65942)

(assert (=> d!2111585 (= lt!2436632 e!4060091)))

(declare-fun c!1245747 () Bool)

(assert (=> d!2111585 (= c!1245747 ((_ is Nil!65818) (_1!36825 (get!22892 lt!2436617))))))

(assert (=> d!2111585 (= (++!14703 (_1!36825 (get!22892 lt!2436617)) (_2!36825 (get!22892 lt!2436617))) lt!2436632)))

(declare-fun b!6718975 () Bool)

(assert (=> b!6718975 (= e!4060091 (_2!36825 (get!22892 lt!2436617)))))

(declare-fun b!6718976 () Bool)

(assert (=> b!6718976 (= e!4060091 (Cons!65818 (h!72266 (_1!36825 (get!22892 lt!2436617))) (++!14703 (t!379619 (_1!36825 (get!22892 lt!2436617))) (_2!36825 (get!22892 lt!2436617)))))))

(declare-fun b!6718978 () Bool)

(assert (=> b!6718978 (= e!4060090 (or (not (= (_2!36825 (get!22892 lt!2436617)) Nil!65818)) (= lt!2436632 (_1!36825 (get!22892 lt!2436617)))))))

(assert (= (and d!2111585 c!1245747) b!6718975))

(assert (= (and d!2111585 (not c!1245747)) b!6718976))

(assert (= (and d!2111585 res!2749649) b!6718977))

(assert (= (and b!6718977 res!2749648) b!6718978))

(declare-fun m!7481444 () Bool)

(assert (=> b!6718977 m!7481444))

(declare-fun m!7481446 () Bool)

(assert (=> b!6718977 m!7481446))

(declare-fun m!7481448 () Bool)

(assert (=> b!6718977 m!7481448))

(declare-fun m!7481450 () Bool)

(assert (=> d!2111585 m!7481450))

(declare-fun m!7481452 () Bool)

(assert (=> d!2111585 m!7481452))

(declare-fun m!7481454 () Bool)

(assert (=> d!2111585 m!7481454))

(declare-fun m!7481456 () Bool)

(assert (=> b!6718976 m!7481456))

(assert (=> b!6718671 d!2111585))

(declare-fun d!2111587 () Bool)

(assert (=> d!2111587 (= (get!22892 lt!2436617) (v!52631 lt!2436617))))

(assert (=> b!6718671 d!2111587))

(declare-fun bs!1787595 () Bool)

(declare-fun d!2111589 () Bool)

(assert (= bs!1787595 (and d!2111589 d!2111417)))

(declare-fun lambda!376912 () Int)

(assert (=> bs!1787595 (= lambda!376912 lambda!376848)))

(declare-fun bs!1787596 () Bool)

(assert (= bs!1787596 (and d!2111589 d!2111453)))

(assert (=> bs!1787596 (= lambda!376912 lambda!376879)))

(declare-fun bs!1787597 () Bool)

(assert (= bs!1787597 (and d!2111589 d!2111399)))

(assert (=> bs!1787597 (= lambda!376912 lambda!376836)))

(declare-fun bs!1787598 () Bool)

(assert (= bs!1787598 (and d!2111589 d!2111401)))

(assert (=> bs!1787598 (= lambda!376912 lambda!376839)))

(declare-fun bs!1787599 () Bool)

(assert (= bs!1787599 (and d!2111589 d!2111551)))

(assert (=> bs!1787599 (= lambda!376912 lambda!376900)))

(declare-fun bs!1787601 () Bool)

(assert (= bs!1787601 (and d!2111589 d!2111461)))

(assert (=> bs!1787601 (= lambda!376912 lambda!376880)))

(assert (=> d!2111589 (= (inv!84614 setElem!45805) (forall!15747 (exprs!6431 setElem!45805) lambda!376912))))

(declare-fun bs!1787602 () Bool)

(assert (= bs!1787602 d!2111589))

(declare-fun m!7481464 () Bool)

(assert (=> bs!1787602 m!7481464))

(assert (=> setNonEmpty!45805 d!2111589))

(declare-fun d!2111595 () Bool)

(assert (=> d!2111595 (= ($colon$colon!2364 (exprs!6431 (Context!11863 Nil!65816)) (ite (or c!1245695 c!1245692) (regTwo!33606 r!7292) r!7292)) (Cons!65816 (ite (or c!1245695 c!1245692) (regTwo!33606 r!7292) r!7292) (exprs!6431 (Context!11863 Nil!65816))))))

(assert (=> bm!606393 d!2111595))

(declare-fun bm!606438 () Bool)

(declare-fun call!606447 () List!65940)

(declare-fun call!606448 () List!65940)

(assert (=> bm!606438 (= call!606447 call!606448)))

(declare-fun b!6719001 () Bool)

(declare-fun e!4060110 () (InoxSet Context!11862))

(assert (=> b!6719001 (= e!4060110 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719002 () Bool)

(declare-fun call!606443 () (InoxSet Context!11862))

(assert (=> b!6719002 (= e!4060110 call!606443)))

(declare-fun c!1245757 () Bool)

(declare-fun bm!606439 () Bool)

(declare-fun call!606445 () (InoxSet Context!11862))

(assert (=> bm!606439 (= call!606445 (derivationStepZipperDown!1775 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))) (ite c!1245757 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606448)) (h!72266 s!2326)))))

(declare-fun b!6719003 () Bool)

(declare-fun e!4060112 () (InoxSet Context!11862))

(declare-fun call!606444 () (InoxSet Context!11862))

(assert (=> b!6719003 (= e!4060112 ((_ map or) call!606445 call!606444))))

(declare-fun b!6719004 () Bool)

(declare-fun e!4060111 () Bool)

(assert (=> b!6719004 (= e!4060111 (nullable!6534 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))

(declare-fun b!6719005 () Bool)

(declare-fun e!4060109 () (InoxSet Context!11862))

(assert (=> b!6719005 (= e!4060112 e!4060109)))

(declare-fun c!1245755 () Bool)

(assert (=> b!6719005 (= c!1245755 ((_ is Concat!25392) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))

(declare-fun b!6719006 () Bool)

(declare-fun e!4060108 () (InoxSet Context!11862))

(assert (=> b!6719006 (= e!4060108 (store ((as const (Array Context!11862 Bool)) false) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) true))))

(declare-fun b!6719007 () Bool)

(declare-fun e!4060113 () (InoxSet Context!11862))

(declare-fun call!606446 () (InoxSet Context!11862))

(assert (=> b!6719007 (= e!4060113 ((_ map or) call!606445 call!606446))))

(declare-fun b!6719008 () Bool)

(assert (=> b!6719008 (= e!4060108 e!4060113)))

(assert (=> b!6719008 (= c!1245757 ((_ is Union!16547) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))

(declare-fun bm!606441 () Bool)

(assert (=> bm!606441 (= call!606443 call!606444)))

(declare-fun b!6719009 () Bool)

(assert (=> b!6719009 (= e!4060109 call!606443)))

(declare-fun bm!606442 () Bool)

(declare-fun c!1245758 () Bool)

(assert (=> bm!606442 (= call!606448 ($colon$colon!2364 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))) (ite (or c!1245758 c!1245755) (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))

(declare-fun bm!606443 () Bool)

(assert (=> bm!606443 (= call!606446 (derivationStepZipperDown!1775 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (ite (or c!1245757 c!1245758) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606447)) (h!72266 s!2326)))))

(declare-fun b!6719010 () Bool)

(declare-fun c!1245754 () Bool)

(assert (=> b!6719010 (= c!1245754 ((_ is Star!16547) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))

(assert (=> b!6719010 (= e!4060109 e!4060110)))

(declare-fun b!6719011 () Bool)

(assert (=> b!6719011 (= c!1245758 e!4060111)))

(declare-fun res!2749660 () Bool)

(assert (=> b!6719011 (=> (not res!2749660) (not e!4060111))))

(assert (=> b!6719011 (= res!2749660 ((_ is Concat!25392) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))

(assert (=> b!6719011 (= e!4060113 e!4060112)))

(declare-fun d!2111603 () Bool)

(declare-fun c!1245756 () Bool)

(assert (=> d!2111603 (= c!1245756 (and ((_ is ElementMatch!16547) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (= (c!1245533 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (h!72266 s!2326))))))

(assert (=> d!2111603 (= (derivationStepZipperDown!1775 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (h!72266 s!2326)) e!4060108)))

(declare-fun bm!606440 () Bool)

(assert (=> bm!606440 (= call!606444 call!606446)))

(assert (= (and d!2111603 c!1245756) b!6719006))

(assert (= (and d!2111603 (not c!1245756)) b!6719008))

(assert (= (and b!6719008 c!1245757) b!6719007))

(assert (= (and b!6719008 (not c!1245757)) b!6719011))

(assert (= (and b!6719011 res!2749660) b!6719004))

(assert (= (and b!6719011 c!1245758) b!6719003))

(assert (= (and b!6719011 (not c!1245758)) b!6719005))

(assert (= (and b!6719005 c!1245755) b!6719009))

(assert (= (and b!6719005 (not c!1245755)) b!6719010))

(assert (= (and b!6719010 c!1245754) b!6719002))

(assert (= (and b!6719010 (not c!1245754)) b!6719001))

(assert (= (or b!6719009 b!6719002) bm!606438))

(assert (= (or b!6719009 b!6719002) bm!606441))

(assert (= (or b!6719003 bm!606438) bm!606442))

(assert (= (or b!6719003 bm!606441) bm!606440))

(assert (= (or b!6719007 bm!606440) bm!606443))

(assert (= (or b!6719007 b!6719003) bm!606439))

(declare-fun m!7481478 () Bool)

(assert (=> bm!606439 m!7481478))

(declare-fun m!7481480 () Bool)

(assert (=> b!6719006 m!7481480))

(declare-fun m!7481482 () Bool)

(assert (=> bm!606443 m!7481482))

(declare-fun m!7481484 () Bool)

(assert (=> b!6719004 m!7481484))

(declare-fun m!7481486 () Bool)

(assert (=> bm!606442 m!7481486))

(assert (=> bm!606376 d!2111603))

(declare-fun d!2111605 () Bool)

(assert (=> d!2111605 (= (isEmptyLang!1920 lt!2436554) ((_ is EmptyLang!16547) lt!2436554))))

(assert (=> b!6718248 d!2111605))

(declare-fun d!2111607 () Bool)

(assert (=> d!2111607 (= (isEmpty!38141 (exprs!6431 (h!72265 zl!343))) ((_ is Nil!65816) (exprs!6431 (h!72265 zl!343))))))

(assert (=> b!6718588 d!2111607))

(declare-fun b!6719012 () Bool)

(declare-fun e!4060118 () Bool)

(declare-fun call!606449 () Bool)

(assert (=> b!6719012 (= e!4060118 call!606449)))

(declare-fun b!6719013 () Bool)

(declare-fun res!2749663 () Bool)

(declare-fun e!4060116 () Bool)

(assert (=> b!6719013 (=> res!2749663 e!4060116)))

(assert (=> b!6719013 (= res!2749663 (not ((_ is Concat!25392) (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))

(declare-fun e!4060119 () Bool)

(assert (=> b!6719013 (= e!4060119 e!4060116)))

(declare-fun b!6719014 () Bool)

(declare-fun res!2749665 () Bool)

(assert (=> b!6719014 (=> (not res!2749665) (not e!4060118))))

(declare-fun call!606450 () Bool)

(assert (=> b!6719014 (= res!2749665 call!606450)))

(assert (=> b!6719014 (= e!4060119 e!4060118)))

(declare-fun b!6719015 () Bool)

(declare-fun e!4060114 () Bool)

(assert (=> b!6719015 (= e!4060114 e!4060119)))

(declare-fun c!1245759 () Bool)

(assert (=> b!6719015 (= c!1245759 ((_ is Union!16547) (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))

(declare-fun d!2111609 () Bool)

(declare-fun res!2749661 () Bool)

(declare-fun e!4060120 () Bool)

(assert (=> d!2111609 (=> res!2749661 e!4060120)))

(assert (=> d!2111609 (= res!2749661 ((_ is ElementMatch!16547) (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))

(assert (=> d!2111609 (= (validRegex!8283 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) e!4060120)))

(declare-fun c!1245760 () Bool)

(declare-fun call!606451 () Bool)

(declare-fun bm!606444 () Bool)

(assert (=> bm!606444 (= call!606451 (validRegex!8283 (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))))

(declare-fun b!6719016 () Bool)

(declare-fun e!4060117 () Bool)

(assert (=> b!6719016 (= e!4060117 call!606451)))

(declare-fun bm!606445 () Bool)

(assert (=> bm!606445 (= call!606449 call!606451)))

(declare-fun b!6719017 () Bool)

(declare-fun e!4060115 () Bool)

(assert (=> b!6719017 (= e!4060115 call!606449)))

(declare-fun b!6719018 () Bool)

(assert (=> b!6719018 (= e!4060114 e!4060117)))

(declare-fun res!2749664 () Bool)

(assert (=> b!6719018 (= res!2749664 (not (nullable!6534 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))))

(assert (=> b!6719018 (=> (not res!2749664) (not e!4060117))))

(declare-fun b!6719019 () Bool)

(assert (=> b!6719019 (= e!4060120 e!4060114)))

(assert (=> b!6719019 (= c!1245760 ((_ is Star!16547) (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))

(declare-fun b!6719020 () Bool)

(assert (=> b!6719020 (= e!4060116 e!4060115)))

(declare-fun res!2749662 () Bool)

(assert (=> b!6719020 (=> (not res!2749662) (not e!4060115))))

(assert (=> b!6719020 (= res!2749662 call!606450)))

(declare-fun bm!606446 () Bool)

(assert (=> bm!606446 (= call!606450 (validRegex!8283 (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))))

(assert (= (and d!2111609 (not res!2749661)) b!6719019))

(assert (= (and b!6719019 c!1245760) b!6719018))

(assert (= (and b!6719019 (not c!1245760)) b!6719015))

(assert (= (and b!6719018 res!2749664) b!6719016))

(assert (= (and b!6719015 c!1245759) b!6719014))

(assert (= (and b!6719015 (not c!1245759)) b!6719013))

(assert (= (and b!6719014 res!2749665) b!6719012))

(assert (= (and b!6719013 (not res!2749663)) b!6719020))

(assert (= (and b!6719020 res!2749662) b!6719017))

(assert (= (or b!6719012 b!6719017) bm!606445))

(assert (= (or b!6719014 b!6719020) bm!606446))

(assert (= (or b!6719016 bm!606445) bm!606444))

(declare-fun m!7481488 () Bool)

(assert (=> bm!606444 m!7481488))

(declare-fun m!7481490 () Bool)

(assert (=> b!6719018 m!7481490))

(declare-fun m!7481492 () Bool)

(assert (=> bm!606446 m!7481492))

(assert (=> bm!606371 d!2111609))

(declare-fun b!6719021 () Bool)

(declare-fun res!2749667 () Bool)

(declare-fun e!4060121 () Bool)

(assert (=> b!6719021 (=> (not res!2749667) (not e!4060121))))

(declare-fun call!606452 () Bool)

(assert (=> b!6719021 (= res!2749667 (not call!606452))))

(declare-fun b!6719022 () Bool)

(declare-fun e!4060124 () Bool)

(declare-fun e!4060125 () Bool)

(assert (=> b!6719022 (= e!4060124 e!4060125)))

(declare-fun res!2749673 () Bool)

(assert (=> b!6719022 (=> (not res!2749673) (not e!4060125))))

(declare-fun lt!2436633 () Bool)

(assert (=> b!6719022 (= res!2749673 (not lt!2436633))))

(declare-fun b!6719023 () Bool)

(declare-fun e!4060122 () Bool)

(assert (=> b!6719023 (= e!4060122 (matchR!8730 (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617)))) (tail!12607 (_2!36825 (get!22892 lt!2436617)))))))

(declare-fun d!2111611 () Bool)

(declare-fun e!4060126 () Bool)

(assert (=> d!2111611 e!4060126))

(declare-fun c!1245761 () Bool)

(assert (=> d!2111611 (= c!1245761 ((_ is EmptyExpr!16547) r!7292))))

(assert (=> d!2111611 (= lt!2436633 e!4060122)))

(declare-fun c!1245762 () Bool)

(assert (=> d!2111611 (= c!1245762 (isEmpty!38137 (_2!36825 (get!22892 lt!2436617))))))

(assert (=> d!2111611 (validRegex!8283 r!7292)))

(assert (=> d!2111611 (= (matchR!8730 r!7292 (_2!36825 (get!22892 lt!2436617))) lt!2436633)))

(declare-fun b!6719024 () Bool)

(declare-fun e!4060123 () Bool)

(assert (=> b!6719024 (= e!4060123 (not lt!2436633))))

(declare-fun b!6719025 () Bool)

(declare-fun e!4060127 () Bool)

(assert (=> b!6719025 (= e!4060127 (not (= (head!13522 (_2!36825 (get!22892 lt!2436617))) (c!1245533 r!7292))))))

(declare-fun b!6719026 () Bool)

(assert (=> b!6719026 (= e!4060126 (= lt!2436633 call!606452))))

(declare-fun bm!606447 () Bool)

(assert (=> bm!606447 (= call!606452 (isEmpty!38137 (_2!36825 (get!22892 lt!2436617))))))

(declare-fun b!6719027 () Bool)

(assert (=> b!6719027 (= e!4060122 (nullable!6534 r!7292))))

(declare-fun b!6719028 () Bool)

(assert (=> b!6719028 (= e!4060126 e!4060123)))

(declare-fun c!1245763 () Bool)

(assert (=> b!6719028 (= c!1245763 ((_ is EmptyLang!16547) r!7292))))

(declare-fun b!6719029 () Bool)

(assert (=> b!6719029 (= e!4060121 (= (head!13522 (_2!36825 (get!22892 lt!2436617))) (c!1245533 r!7292)))))

(declare-fun b!6719030 () Bool)

(declare-fun res!2749670 () Bool)

(assert (=> b!6719030 (=> res!2749670 e!4060127)))

(assert (=> b!6719030 (= res!2749670 (not (isEmpty!38137 (tail!12607 (_2!36825 (get!22892 lt!2436617))))))))

(declare-fun b!6719031 () Bool)

(declare-fun res!2749668 () Bool)

(assert (=> b!6719031 (=> res!2749668 e!4060124)))

(assert (=> b!6719031 (= res!2749668 e!4060121)))

(declare-fun res!2749672 () Bool)

(assert (=> b!6719031 (=> (not res!2749672) (not e!4060121))))

(assert (=> b!6719031 (= res!2749672 lt!2436633)))

(declare-fun b!6719032 () Bool)

(declare-fun res!2749669 () Bool)

(assert (=> b!6719032 (=> res!2749669 e!4060124)))

(assert (=> b!6719032 (= res!2749669 (not ((_ is ElementMatch!16547) r!7292)))))

(assert (=> b!6719032 (= e!4060123 e!4060124)))

(declare-fun b!6719033 () Bool)

(declare-fun res!2749666 () Bool)

(assert (=> b!6719033 (=> (not res!2749666) (not e!4060121))))

(assert (=> b!6719033 (= res!2749666 (isEmpty!38137 (tail!12607 (_2!36825 (get!22892 lt!2436617)))))))

(declare-fun b!6719034 () Bool)

(assert (=> b!6719034 (= e!4060125 e!4060127)))

(declare-fun res!2749671 () Bool)

(assert (=> b!6719034 (=> res!2749671 e!4060127)))

(assert (=> b!6719034 (= res!2749671 call!606452)))

(assert (= (and d!2111611 c!1245762) b!6719027))

(assert (= (and d!2111611 (not c!1245762)) b!6719023))

(assert (= (and d!2111611 c!1245761) b!6719026))

(assert (= (and d!2111611 (not c!1245761)) b!6719028))

(assert (= (and b!6719028 c!1245763) b!6719024))

(assert (= (and b!6719028 (not c!1245763)) b!6719032))

(assert (= (and b!6719032 (not res!2749669)) b!6719031))

(assert (= (and b!6719031 res!2749672) b!6719021))

(assert (= (and b!6719021 res!2749667) b!6719033))

(assert (= (and b!6719033 res!2749666) b!6719029))

(assert (= (and b!6719031 (not res!2749668)) b!6719022))

(assert (= (and b!6719022 res!2749673) b!6719034))

(assert (= (and b!6719034 (not res!2749671)) b!6719030))

(assert (= (and b!6719030 (not res!2749670)) b!6719025))

(assert (= (or b!6719026 b!6719021 b!6719034) bm!606447))

(declare-fun m!7481494 () Bool)

(assert (=> b!6719029 m!7481494))

(assert (=> b!6719025 m!7481494))

(declare-fun m!7481496 () Bool)

(assert (=> bm!606447 m!7481496))

(declare-fun m!7481498 () Bool)

(assert (=> b!6719030 m!7481498))

(assert (=> b!6719030 m!7481498))

(declare-fun m!7481500 () Bool)

(assert (=> b!6719030 m!7481500))

(assert (=> d!2111611 m!7481496))

(assert (=> d!2111611 m!7480964))

(assert (=> b!6719033 m!7481498))

(assert (=> b!6719033 m!7481498))

(assert (=> b!6719033 m!7481500))

(assert (=> b!6719023 m!7481494))

(assert (=> b!6719023 m!7481494))

(declare-fun m!7481502 () Bool)

(assert (=> b!6719023 m!7481502))

(assert (=> b!6719023 m!7481498))

(assert (=> b!6719023 m!7481502))

(assert (=> b!6719023 m!7481498))

(declare-fun m!7481504 () Bool)

(assert (=> b!6719023 m!7481504))

(assert (=> b!6719027 m!7481152))

(assert (=> b!6718664 d!2111611))

(assert (=> b!6718664 d!2111587))

(declare-fun d!2111613 () Bool)

(declare-fun nullableFct!2448 (Regex!16547) Bool)

(assert (=> d!2111613 (= (nullable!6534 (regOne!33606 r!7292)) (nullableFct!2448 (regOne!33606 r!7292)))))

(declare-fun bs!1787621 () Bool)

(assert (= bs!1787621 d!2111613))

(declare-fun m!7481506 () Bool)

(assert (=> bs!1787621 m!7481506))

(assert (=> b!6718716 d!2111613))

(declare-fun d!2111615 () Bool)

(assert (=> d!2111615 (= (Exists!3615 (ite c!1245593 lambda!376862 lambda!376863)) (choose!50069 (ite c!1245593 lambda!376862 lambda!376863)))))

(declare-fun bs!1787622 () Bool)

(assert (= bs!1787622 d!2111615))

(declare-fun m!7481512 () Bool)

(assert (=> bs!1787622 m!7481512))

(assert (=> bm!606340 d!2111615))

(declare-fun d!2111617 () Bool)

(assert (=> d!2111617 (= (nullable!6534 r!7292) (nullableFct!2448 r!7292))))

(declare-fun bs!1787623 () Bool)

(assert (= bs!1787623 d!2111617))

(declare-fun m!7481516 () Bool)

(assert (=> bs!1787623 m!7481516))

(assert (=> b!6718466 d!2111617))

(declare-fun d!2111619 () Bool)

(assert (=> d!2111619 (= (isConcat!1436 lt!2436599) ((_ is Concat!25392) lt!2436599))))

(assert (=> b!6718590 d!2111619))

(assert (=> b!6718666 d!2111559))

(declare-fun d!2111623 () Bool)

(assert (=> d!2111623 (= (nullable!6534 (reg!16876 r!7292)) (nullableFct!2448 (reg!16876 r!7292)))))

(declare-fun bs!1787626 () Bool)

(assert (= bs!1787626 d!2111623))

(declare-fun m!7481518 () Bool)

(assert (=> bs!1787626 m!7481518))

(assert (=> b!6718624 d!2111623))

(assert (=> b!6718668 d!2111437))

(declare-fun d!2111625 () Bool)

(assert (=> d!2111625 (= (head!13522 s!2326) (h!72266 s!2326))))

(assert (=> b!6718468 d!2111625))

(declare-fun d!2111627 () Bool)

(assert (=> d!2111627 (= (Exists!3615 lambda!376891) (choose!50069 lambda!376891))))

(declare-fun bs!1787631 () Bool)

(assert (= bs!1787631 d!2111627))

(declare-fun m!7481520 () Bool)

(assert (=> bs!1787631 m!7481520))

(assert (=> d!2111469 d!2111627))

(declare-fun d!2111629 () Bool)

(assert (=> d!2111629 (= (Exists!3615 lambda!376892) (choose!50069 lambda!376892))))

(declare-fun bs!1787632 () Bool)

(assert (= bs!1787632 d!2111629))

(declare-fun m!7481522 () Bool)

(assert (=> bs!1787632 m!7481522))

(assert (=> d!2111469 d!2111629))

(declare-fun bs!1787656 () Bool)

(declare-fun d!2111631 () Bool)

(assert (= bs!1787656 (and d!2111631 d!2111467)))

(declare-fun lambda!376922 () Int)

(assert (=> bs!1787656 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376922 lambda!376885))))

(assert (=> bs!1787656 (not (= lambda!376922 lambda!376886))))

(declare-fun bs!1787657 () Bool)

(assert (= bs!1787657 (and d!2111631 d!2111573)))

(assert (=> bs!1787657 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376922 lambda!376905))))

(declare-fun bs!1787658 () Bool)

(assert (= bs!1787658 (and d!2111631 b!6718346)))

(assert (=> bs!1787658 (not (= lambda!376922 lambda!376863))))

(declare-fun bs!1787659 () Bool)

(assert (= bs!1787659 (and d!2111631 b!6718353)))

(assert (=> bs!1787659 (not (= lambda!376922 lambda!376862))))

(declare-fun bs!1787660 () Bool)

(assert (= bs!1787660 (and d!2111631 b!6718097)))

(assert (=> bs!1787660 (not (= lambda!376922 lambda!376827))))

(declare-fun bs!1787661 () Bool)

(assert (= bs!1787661 (and d!2111631 b!6718908)))

(assert (=> bs!1787661 (not (= lambda!376922 lambda!376902))))

(declare-fun bs!1787662 () Bool)

(assert (= bs!1787662 (and d!2111631 d!2111469)))

(assert (=> bs!1787662 (= lambda!376922 lambda!376891)))

(declare-fun bs!1787663 () Bool)

(assert (= bs!1787663 (and d!2111631 b!6718915)))

(assert (=> bs!1787663 (not (= lambda!376922 lambda!376901))))

(assert (=> bs!1787660 (not (= lambda!376922 lambda!376826))))

(assert (=> bs!1787662 (not (= lambda!376922 lambda!376892))))

(assert (=> bs!1787660 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376922 lambda!376825))))

(declare-fun bs!1787664 () Bool)

(assert (= bs!1787664 (and d!2111631 d!2111481)))

(assert (=> bs!1787664 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376922 lambda!376895))))

(assert (=> d!2111631 true))

(assert (=> d!2111631 true))

(declare-fun lambda!376923 () Int)

(assert (=> bs!1787656 (not (= lambda!376923 lambda!376885))))

(assert (=> bs!1787656 (not (= lambda!376923 lambda!376886))))

(assert (=> bs!1787657 (not (= lambda!376923 lambda!376905))))

(assert (=> bs!1787658 (not (= lambda!376923 lambda!376863))))

(assert (=> bs!1787659 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376923 lambda!376862))))

(assert (=> bs!1787660 (not (= lambda!376923 lambda!376827))))

(assert (=> bs!1787662 (not (= lambda!376923 lambda!376891))))

(assert (=> bs!1787663 (= (and (= (reg!16876 r!7292) (reg!16876 (regOne!33607 r!7292))) (= (Star!16547 (reg!16876 r!7292)) (regOne!33607 r!7292))) (= lambda!376923 lambda!376901))))

(assert (=> bs!1787660 (= (= (Star!16547 (reg!16876 r!7292)) r!7292) (= lambda!376923 lambda!376826))))

(assert (=> bs!1787662 (= lambda!376923 lambda!376892)))

(assert (=> bs!1787660 (not (= lambda!376923 lambda!376825))))

(assert (=> bs!1787664 (not (= lambda!376923 lambda!376895))))

(declare-fun bs!1787665 () Bool)

(assert (= bs!1787665 d!2111631))

(assert (=> bs!1787665 (not (= lambda!376923 lambda!376922))))

(assert (=> bs!1787661 (not (= lambda!376923 lambda!376902))))

(assert (=> d!2111631 true))

(assert (=> d!2111631 true))

(assert (=> d!2111631 (= (Exists!3615 lambda!376922) (Exists!3615 lambda!376923))))

(assert (=> d!2111631 true))

(declare-fun _$91!659 () Unit!159785)

(assert (=> d!2111631 (= (choose!50068 (reg!16876 r!7292) s!2326) _$91!659)))

(declare-fun m!7481552 () Bool)

(assert (=> bs!1787665 m!7481552))

(declare-fun m!7481554 () Bool)

(assert (=> bs!1787665 m!7481554))

(assert (=> d!2111469 d!2111631))

(assert (=> d!2111469 d!2111565))

(declare-fun d!2111643 () Bool)

(assert (=> d!2111643 (= (isEmpty!38141 (t!379617 (exprs!6431 (h!72265 zl!343)))) ((_ is Nil!65816) (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> b!6718582 d!2111643))

(declare-fun d!2111645 () Bool)

(assert (=> d!2111645 (= (isEmpty!38141 (tail!12606 (exprs!6431 (h!72265 zl!343)))) ((_ is Nil!65816) (tail!12606 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> b!6718584 d!2111645))

(declare-fun d!2111647 () Bool)

(assert (=> d!2111647 (= (tail!12606 (exprs!6431 (h!72265 zl!343))) (t!379617 (exprs!6431 (h!72265 zl!343))))))

(assert (=> b!6718584 d!2111647))

(declare-fun d!2111649 () Bool)

(declare-fun res!2749703 () Bool)

(declare-fun e!4060153 () Bool)

(assert (=> d!2111649 (=> res!2749703 e!4060153)))

(assert (=> d!2111649 (= res!2749703 ((_ is Nil!65816) (exprs!6431 setElem!45799)))))

(assert (=> d!2111649 (= (forall!15747 (exprs!6431 setElem!45799) lambda!376836) e!4060153)))

(declare-fun b!6719080 () Bool)

(declare-fun e!4060154 () Bool)

(assert (=> b!6719080 (= e!4060153 e!4060154)))

(declare-fun res!2749704 () Bool)

(assert (=> b!6719080 (=> (not res!2749704) (not e!4060154))))

(declare-fun dynLambda!26246 (Int Regex!16547) Bool)

(assert (=> b!6719080 (= res!2749704 (dynLambda!26246 lambda!376836 (h!72264 (exprs!6431 setElem!45799))))))

(declare-fun b!6719081 () Bool)

(assert (=> b!6719081 (= e!4060154 (forall!15747 (t!379617 (exprs!6431 setElem!45799)) lambda!376836))))

(assert (= (and d!2111649 (not res!2749703)) b!6719080))

(assert (= (and b!6719080 res!2749704) b!6719081))

(declare-fun b_lambda!252967 () Bool)

(assert (=> (not b_lambda!252967) (not b!6719080)))

(declare-fun m!7481556 () Bool)

(assert (=> b!6719080 m!7481556))

(declare-fun m!7481558 () Bool)

(assert (=> b!6719081 m!7481558))

(assert (=> d!2111399 d!2111649))

(declare-fun d!2111651 () Bool)

(assert (=> d!2111651 (= (Exists!3615 lambda!376885) (choose!50069 lambda!376885))))

(declare-fun bs!1787666 () Bool)

(assert (= bs!1787666 d!2111651))

(declare-fun m!7481560 () Bool)

(assert (=> bs!1787666 m!7481560))

(assert (=> d!2111467 d!2111651))

(declare-fun d!2111653 () Bool)

(assert (=> d!2111653 (= (Exists!3615 lambda!376886) (choose!50069 lambda!376886))))

(declare-fun bs!1787667 () Bool)

(assert (= bs!1787667 d!2111653))

(declare-fun m!7481562 () Bool)

(assert (=> bs!1787667 m!7481562))

(assert (=> d!2111467 d!2111653))

(declare-fun bs!1787681 () Bool)

(declare-fun d!2111655 () Bool)

(assert (= bs!1787681 (and d!2111655 d!2111467)))

(declare-fun lambda!376934 () Int)

(assert (=> bs!1787681 (= lambda!376934 lambda!376885)))

(assert (=> bs!1787681 (not (= lambda!376934 lambda!376886))))

(declare-fun bs!1787682 () Bool)

(assert (= bs!1787682 (and d!2111655 d!2111573)))

(assert (=> bs!1787682 (= lambda!376934 lambda!376905)))

(declare-fun bs!1787683 () Bool)

(assert (= bs!1787683 (and d!2111655 b!6718346)))

(assert (=> bs!1787683 (not (= lambda!376934 lambda!376863))))

(declare-fun bs!1787684 () Bool)

(assert (= bs!1787684 (and d!2111655 d!2111631)))

(assert (=> bs!1787684 (not (= lambda!376934 lambda!376923))))

(declare-fun bs!1787685 () Bool)

(assert (= bs!1787685 (and d!2111655 b!6718353)))

(assert (=> bs!1787685 (not (= lambda!376934 lambda!376862))))

(declare-fun bs!1787686 () Bool)

(assert (= bs!1787686 (and d!2111655 b!6718097)))

(assert (=> bs!1787686 (not (= lambda!376934 lambda!376827))))

(declare-fun bs!1787687 () Bool)

(assert (= bs!1787687 (and d!2111655 d!2111469)))

(assert (=> bs!1787687 (= (= r!7292 (Star!16547 (reg!16876 r!7292))) (= lambda!376934 lambda!376891))))

(declare-fun bs!1787688 () Bool)

(assert (= bs!1787688 (and d!2111655 b!6718915)))

(assert (=> bs!1787688 (not (= lambda!376934 lambda!376901))))

(assert (=> bs!1787686 (not (= lambda!376934 lambda!376826))))

(assert (=> bs!1787687 (not (= lambda!376934 lambda!376892))))

(assert (=> bs!1787686 (= lambda!376934 lambda!376825)))

(declare-fun bs!1787689 () Bool)

(assert (= bs!1787689 (and d!2111655 d!2111481)))

(assert (=> bs!1787689 (= lambda!376934 lambda!376895)))

(assert (=> bs!1787684 (= (= r!7292 (Star!16547 (reg!16876 r!7292))) (= lambda!376934 lambda!376922))))

(declare-fun bs!1787690 () Bool)

(assert (= bs!1787690 (and d!2111655 b!6718908)))

(assert (=> bs!1787690 (not (= lambda!376934 lambda!376902))))

(assert (=> d!2111655 true))

(assert (=> d!2111655 true))

(assert (=> d!2111655 true))

(declare-fun lambda!376935 () Int)

(assert (=> bs!1787681 (not (= lambda!376935 lambda!376885))))

(assert (=> bs!1787681 (= lambda!376935 lambda!376886)))

(assert (=> bs!1787682 (not (= lambda!376935 lambda!376905))))

(assert (=> bs!1787683 (= (and (= (reg!16876 r!7292) (regOne!33606 r!7292)) (= r!7292 (regTwo!33606 r!7292))) (= lambda!376935 lambda!376863))))

(assert (=> bs!1787684 (not (= lambda!376935 lambda!376923))))

(assert (=> bs!1787685 (not (= lambda!376935 lambda!376862))))

(assert (=> bs!1787686 (= lambda!376935 lambda!376827)))

(declare-fun bs!1787691 () Bool)

(assert (= bs!1787691 d!2111655))

(assert (=> bs!1787691 (not (= lambda!376935 lambda!376934))))

(assert (=> bs!1787687 (not (= lambda!376935 lambda!376891))))

(assert (=> bs!1787688 (not (= lambda!376935 lambda!376901))))

(assert (=> bs!1787686 (not (= lambda!376935 lambda!376826))))

(assert (=> bs!1787687 (not (= lambda!376935 lambda!376892))))

(assert (=> bs!1787686 (not (= lambda!376935 lambda!376825))))

(assert (=> bs!1787689 (not (= lambda!376935 lambda!376895))))

(assert (=> bs!1787684 (not (= lambda!376935 lambda!376922))))

(assert (=> bs!1787690 (= (and (= (reg!16876 r!7292) (regOne!33606 (regOne!33607 r!7292))) (= r!7292 (regTwo!33606 (regOne!33607 r!7292)))) (= lambda!376935 lambda!376902))))

(assert (=> d!2111655 true))

(assert (=> d!2111655 true))

(assert (=> d!2111655 true))

(assert (=> d!2111655 (= (Exists!3615 lambda!376934) (Exists!3615 lambda!376935))))

(assert (=> d!2111655 true))

(declare-fun _$90!2542 () Unit!159785)

(assert (=> d!2111655 (= (choose!50067 (reg!16876 r!7292) r!7292 s!2326) _$90!2542)))

(declare-fun m!7481618 () Bool)

(assert (=> bs!1787691 m!7481618))

(declare-fun m!7481620 () Bool)

(assert (=> bs!1787691 m!7481620))

(assert (=> d!2111467 d!2111655))

(assert (=> d!2111467 d!2111565))

(declare-fun d!2111673 () Bool)

(assert (=> d!2111673 true))

(assert (=> d!2111673 true))

(declare-fun res!2749732 () Bool)

(assert (=> d!2111673 (= (choose!50069 lambda!376826) res!2749732)))

(assert (=> d!2111473 d!2111673))

(assert (=> d!2111437 d!2111471))

(assert (=> d!2111437 d!2111459))

(declare-fun d!2111675 () Bool)

(assert (=> d!2111675 (= (head!13521 (exprs!6431 (h!72265 zl!343))) (h!72264 (exprs!6431 (h!72265 zl!343))))))

(assert (=> b!6718586 d!2111675))

(assert (=> bm!606339 d!2111471))

(assert (=> b!6718268 d!2111453))

(declare-fun bs!1787692 () Bool)

(declare-fun d!2111677 () Bool)

(assert (= bs!1787692 (and d!2111677 d!2111417)))

(declare-fun lambda!376936 () Int)

(assert (=> bs!1787692 (= lambda!376936 lambda!376848)))

(declare-fun bs!1787693 () Bool)

(assert (= bs!1787693 (and d!2111677 d!2111453)))

(assert (=> bs!1787693 (= lambda!376936 lambda!376879)))

(declare-fun bs!1787694 () Bool)

(assert (= bs!1787694 (and d!2111677 d!2111399)))

(assert (=> bs!1787694 (= lambda!376936 lambda!376836)))

(declare-fun bs!1787695 () Bool)

(assert (= bs!1787695 (and d!2111677 d!2111401)))

(assert (=> bs!1787695 (= lambda!376936 lambda!376839)))

(declare-fun bs!1787696 () Bool)

(assert (= bs!1787696 (and d!2111677 d!2111589)))

(assert (=> bs!1787696 (= lambda!376936 lambda!376912)))

(declare-fun bs!1787697 () Bool)

(assert (= bs!1787697 (and d!2111677 d!2111551)))

(assert (=> bs!1787697 (= lambda!376936 lambda!376900)))

(declare-fun bs!1787699 () Bool)

(assert (= bs!1787699 (and d!2111677 d!2111461)))

(assert (=> bs!1787699 (= lambda!376936 lambda!376880)))

(declare-fun lt!2436640 () List!65940)

(assert (=> d!2111677 (forall!15747 lt!2436640 lambda!376936)))

(declare-fun e!4060180 () List!65940)

(assert (=> d!2111677 (= lt!2436640 e!4060180)))

(declare-fun c!1245782 () Bool)

(assert (=> d!2111677 (= c!1245782 ((_ is Cons!65817) (t!379618 zl!343)))))

(assert (=> d!2111677 (= (unfocusZipperList!1968 (t!379618 zl!343)) lt!2436640)))

(declare-fun b!6719127 () Bool)

(assert (=> b!6719127 (= e!4060180 (Cons!65816 (generalisedConcat!2144 (exprs!6431 (h!72265 (t!379618 zl!343)))) (unfocusZipperList!1968 (t!379618 (t!379618 zl!343)))))))

(declare-fun b!6719128 () Bool)

(assert (=> b!6719128 (= e!4060180 Nil!65816)))

(assert (= (and d!2111677 c!1245782) b!6719127))

(assert (= (and d!2111677 (not c!1245782)) b!6719128))

(declare-fun m!7481626 () Bool)

(assert (=> d!2111677 m!7481626))

(declare-fun m!7481628 () Bool)

(assert (=> b!6719127 m!7481628))

(declare-fun m!7481630 () Bool)

(assert (=> b!6719127 m!7481630))

(assert (=> b!6718268 d!2111677))

(declare-fun d!2111681 () Bool)

(assert (=> d!2111681 (= (head!13521 (unfocusZipperList!1968 zl!343)) (h!72264 (unfocusZipperList!1968 zl!343)))))

(assert (=> b!6718255 d!2111681))

(assert (=> d!2111447 d!2111437))

(assert (=> d!2111447 d!2111423))

(declare-fun d!2111683 () Bool)

(assert (=> d!2111683 (= (matchR!8730 r!7292 s!2326) (matchRSpec!3648 r!7292 s!2326))))

(assert (=> d!2111683 true))

(declare-fun _$88!5444 () Unit!159785)

(assert (=> d!2111683 (= (choose!50065 r!7292 s!2326) _$88!5444)))

(declare-fun bs!1787700 () Bool)

(assert (= bs!1787700 d!2111683))

(assert (=> bs!1787700 m!7480970))

(assert (=> bs!1787700 m!7480968))

(assert (=> d!2111447 d!2111683))

(assert (=> d!2111447 d!2111459))

(declare-fun d!2111687 () Bool)

(assert (=> d!2111687 true))

(assert (=> d!2111687 true))

(declare-fun res!2749739 () Bool)

(assert (=> d!2111687 (= (choose!50069 lambda!376825) res!2749739)))

(assert (=> d!2111475 d!2111687))

(declare-fun d!2111689 () Bool)

(assert (=> d!2111689 (= (isUnion!1350 lt!2436554) ((_ is Union!16547) lt!2436554))))

(assert (=> b!6718247 d!2111689))

(declare-fun d!2111691 () Bool)

(declare-fun c!1245790 () Bool)

(declare-fun e!4060194 () Bool)

(assert (=> d!2111691 (= c!1245790 e!4060194)))

(declare-fun res!2749740 () Bool)

(assert (=> d!2111691 (=> (not res!2749740) (not e!4060194))))

(assert (=> d!2111691 (= res!2749740 ((_ is Cons!65816) (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(declare-fun e!4060192 () (InoxSet Context!11862))

(assert (=> d!2111691 (= (derivationStepZipperUp!1701 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (h!72266 s!2326)) e!4060192)))

(declare-fun call!606465 () (InoxSet Context!11862))

(declare-fun b!6719149 () Bool)

(assert (=> b!6719149 (= e!4060192 ((_ map or) call!606465 (derivationStepZipperUp!1701 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (h!72266 s!2326))))))

(declare-fun b!6719150 () Bool)

(declare-fun e!4060193 () (InoxSet Context!11862))

(assert (=> b!6719150 (= e!4060193 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719151 () Bool)

(assert (=> b!6719151 (= e!4060194 (nullable!6534 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))

(declare-fun bm!606460 () Bool)

(assert (=> bm!606460 (= call!606465 (derivationStepZipperDown!1775 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (h!72266 s!2326)))))

(declare-fun b!6719152 () Bool)

(assert (=> b!6719152 (= e!4060193 call!606465)))

(declare-fun b!6719153 () Bool)

(assert (=> b!6719153 (= e!4060192 e!4060193)))

(declare-fun c!1245791 () Bool)

(assert (=> b!6719153 (= c!1245791 ((_ is Cons!65816) (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(assert (= (and d!2111691 res!2749740) b!6719151))

(assert (= (and d!2111691 c!1245790) b!6719149))

(assert (= (and d!2111691 (not c!1245790)) b!6719153))

(assert (= (and b!6719153 c!1245791) b!6719152))

(assert (= (and b!6719153 (not c!1245791)) b!6719150))

(assert (= (or b!6719149 b!6719152) bm!606460))

(declare-fun m!7481660 () Bool)

(assert (=> b!6719149 m!7481660))

(declare-fun m!7481662 () Bool)

(assert (=> b!6719151 m!7481662))

(declare-fun m!7481666 () Bool)

(assert (=> bm!606460 m!7481666))

(assert (=> b!6718686 d!2111691))

(declare-fun b!6719156 () Bool)

(declare-fun res!2749741 () Bool)

(declare-fun e!4060195 () Bool)

(assert (=> b!6719156 (=> (not res!2749741) (not e!4060195))))

(declare-fun lt!2436645 () List!65942)

(assert (=> b!6719156 (= res!2749741 (= (size!40597 lt!2436645) (+ (size!40597 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (size!40597 (t!379619 s!2326)))))))

(declare-fun d!2111693 () Bool)

(assert (=> d!2111693 e!4060195))

(declare-fun res!2749742 () Bool)

(assert (=> d!2111693 (=> (not res!2749742) (not e!4060195))))

(assert (=> d!2111693 (= res!2749742 (= (content!12765 lt!2436645) ((_ map or) (content!12765 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (content!12765 (t!379619 s!2326)))))))

(declare-fun e!4060196 () List!65942)

(assert (=> d!2111693 (= lt!2436645 e!4060196)))

(declare-fun c!1245792 () Bool)

(assert (=> d!2111693 (= c!1245792 ((_ is Nil!65818) (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))

(assert (=> d!2111693 (= (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (t!379619 s!2326)) lt!2436645)))

(declare-fun b!6719154 () Bool)

(assert (=> b!6719154 (= e!4060196 (t!379619 s!2326))))

(declare-fun b!6719155 () Bool)

(assert (=> b!6719155 (= e!4060196 (Cons!65818 (h!72266 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (++!14703 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (t!379619 s!2326))))))

(declare-fun b!6719157 () Bool)

(assert (=> b!6719157 (= e!4060195 (or (not (= (t!379619 s!2326) Nil!65818)) (= lt!2436645 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))))))

(assert (= (and d!2111693 c!1245792) b!6719154))

(assert (= (and d!2111693 (not c!1245792)) b!6719155))

(assert (= (and d!2111693 res!2749742) b!6719156))

(assert (= (and b!6719156 res!2749741) b!6719157))

(declare-fun m!7481670 () Bool)

(assert (=> b!6719156 m!7481670))

(assert (=> b!6719156 m!7481246))

(declare-fun m!7481672 () Bool)

(assert (=> b!6719156 m!7481672))

(declare-fun m!7481674 () Bool)

(assert (=> b!6719156 m!7481674))

(declare-fun m!7481676 () Bool)

(assert (=> d!2111693 m!7481676))

(assert (=> d!2111693 m!7481246))

(declare-fun m!7481678 () Bool)

(assert (=> d!2111693 m!7481678))

(declare-fun m!7481680 () Bool)

(assert (=> d!2111693 m!7481680))

(declare-fun m!7481682 () Bool)

(assert (=> b!6719155 m!7481682))

(assert (=> b!6718670 d!2111693))

(declare-fun b!6719169 () Bool)

(declare-fun res!2749748 () Bool)

(declare-fun e!4060204 () Bool)

(assert (=> b!6719169 (=> (not res!2749748) (not e!4060204))))

(declare-fun lt!2436646 () List!65942)

(assert (=> b!6719169 (= res!2749748 (= (size!40597 lt!2436646) (+ (size!40597 Nil!65818) (size!40597 (Cons!65818 (h!72266 s!2326) Nil!65818)))))))

(declare-fun d!2111699 () Bool)

(assert (=> d!2111699 e!4060204))

(declare-fun res!2749749 () Bool)

(assert (=> d!2111699 (=> (not res!2749749) (not e!4060204))))

(assert (=> d!2111699 (= res!2749749 (= (content!12765 lt!2436646) ((_ map or) (content!12765 Nil!65818) (content!12765 (Cons!65818 (h!72266 s!2326) Nil!65818)))))))

(declare-fun e!4060205 () List!65942)

(assert (=> d!2111699 (= lt!2436646 e!4060205)))

(declare-fun c!1245795 () Bool)

(assert (=> d!2111699 (= c!1245795 ((_ is Nil!65818) Nil!65818))))

(assert (=> d!2111699 (= (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) lt!2436646)))

(declare-fun b!6719167 () Bool)

(assert (=> b!6719167 (= e!4060205 (Cons!65818 (h!72266 s!2326) Nil!65818))))

(declare-fun b!6719168 () Bool)

(assert (=> b!6719168 (= e!4060205 (Cons!65818 (h!72266 Nil!65818) (++!14703 (t!379619 Nil!65818) (Cons!65818 (h!72266 s!2326) Nil!65818))))))

(declare-fun b!6719170 () Bool)

(assert (=> b!6719170 (= e!4060204 (or (not (= (Cons!65818 (h!72266 s!2326) Nil!65818) Nil!65818)) (= lt!2436646 Nil!65818)))))

(assert (= (and d!2111699 c!1245795) b!6719167))

(assert (= (and d!2111699 (not c!1245795)) b!6719168))

(assert (= (and d!2111699 res!2749749) b!6719169))

(assert (= (and b!6719169 res!2749748) b!6719170))

(declare-fun m!7481684 () Bool)

(assert (=> b!6719169 m!7481684))

(declare-fun m!7481686 () Bool)

(assert (=> b!6719169 m!7481686))

(declare-fun m!7481688 () Bool)

(assert (=> b!6719169 m!7481688))

(declare-fun m!7481690 () Bool)

(assert (=> d!2111699 m!7481690))

(declare-fun m!7481692 () Bool)

(assert (=> d!2111699 m!7481692))

(declare-fun m!7481694 () Bool)

(assert (=> d!2111699 m!7481694))

(declare-fun m!7481696 () Bool)

(assert (=> b!6719168 m!7481696))

(assert (=> b!6718670 d!2111699))

(declare-fun d!2111701 () Bool)

(assert (=> d!2111701 (= (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (t!379619 s!2326)) s!2326)))

(declare-fun lt!2436650 () Unit!159785)

(declare-fun choose!50071 (List!65942 C!33364 List!65942 List!65942) Unit!159785)

(assert (=> d!2111701 (= lt!2436650 (choose!50071 Nil!65818 (h!72266 s!2326) (t!379619 s!2326) s!2326))))

(assert (=> d!2111701 (= (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) (t!379619 s!2326))) s!2326)))

(assert (=> d!2111701 (= (lemmaMoveElementToOtherListKeepsConcatEq!2676 Nil!65818 (h!72266 s!2326) (t!379619 s!2326) s!2326) lt!2436650)))

(declare-fun bs!1787702 () Bool)

(assert (= bs!1787702 d!2111701))

(assert (=> bs!1787702 m!7481246))

(assert (=> bs!1787702 m!7481246))

(assert (=> bs!1787702 m!7481248))

(declare-fun m!7481726 () Bool)

(assert (=> bs!1787702 m!7481726))

(declare-fun m!7481728 () Bool)

(assert (=> bs!1787702 m!7481728))

(assert (=> b!6718670 d!2111701))

(declare-fun b!6719191 () Bool)

(declare-fun res!2749768 () Bool)

(declare-fun e!4060220 () Bool)

(assert (=> b!6719191 (=> (not res!2749768) (not e!4060220))))

(declare-fun lt!2436653 () Option!16434)

(assert (=> b!6719191 (= res!2749768 (matchR!8730 (reg!16876 r!7292) (_1!36825 (get!22892 lt!2436653))))))

(declare-fun d!2111715 () Bool)

(declare-fun e!4060222 () Bool)

(assert (=> d!2111715 e!4060222))

(declare-fun res!2749765 () Bool)

(assert (=> d!2111715 (=> res!2749765 e!4060222)))

(assert (=> d!2111715 (= res!2749765 e!4060220)))

(declare-fun res!2749767 () Bool)

(assert (=> d!2111715 (=> (not res!2749767) (not e!4060220))))

(assert (=> d!2111715 (= res!2749767 (isDefined!13137 lt!2436653))))

(declare-fun e!4060219 () Option!16434)

(assert (=> d!2111715 (= lt!2436653 e!4060219)))

(declare-fun c!1245799 () Bool)

(declare-fun e!4060223 () Bool)

(assert (=> d!2111715 (= c!1245799 e!4060223)))

(declare-fun res!2749764 () Bool)

(assert (=> d!2111715 (=> (not res!2749764) (not e!4060223))))

(assert (=> d!2111715 (= res!2749764 (matchR!8730 (reg!16876 r!7292) (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))

(assert (=> d!2111715 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2111715 (= (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (t!379619 s!2326) s!2326) lt!2436653)))

(declare-fun b!6719192 () Bool)

(declare-fun res!2749766 () Bool)

(assert (=> b!6719192 (=> (not res!2749766) (not e!4060220))))

(assert (=> b!6719192 (= res!2749766 (matchR!8730 r!7292 (_2!36825 (get!22892 lt!2436653))))))

(declare-fun b!6719193 () Bool)

(declare-fun e!4060221 () Option!16434)

(assert (=> b!6719193 (= e!4060219 e!4060221)))

(declare-fun c!1245800 () Bool)

(assert (=> b!6719193 (= c!1245800 ((_ is Nil!65818) (t!379619 s!2326)))))

(declare-fun b!6719194 () Bool)

(assert (=> b!6719194 (= e!4060222 (not (isDefined!13137 lt!2436653)))))

(declare-fun b!6719195 () Bool)

(assert (=> b!6719195 (= e!4060221 None!16433)))

(declare-fun b!6719196 () Bool)

(assert (=> b!6719196 (= e!4060223 (matchR!8730 r!7292 (t!379619 s!2326)))))

(declare-fun b!6719197 () Bool)

(assert (=> b!6719197 (= e!4060219 (Some!16433 (tuple2!67045 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (t!379619 s!2326))))))

(declare-fun b!6719198 () Bool)

(declare-fun lt!2436651 () Unit!159785)

(declare-fun lt!2436652 () Unit!159785)

(assert (=> b!6719198 (= lt!2436651 lt!2436652)))

(assert (=> b!6719198 (= (++!14703 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) (t!379619 (t!379619 s!2326))) s!2326)))

(assert (=> b!6719198 (= lt!2436652 (lemmaMoveElementToOtherListKeepsConcatEq!2676 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (h!72266 (t!379619 s!2326)) (t!379619 (t!379619 s!2326)) s!2326))))

(assert (=> b!6719198 (= e!4060221 (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) (t!379619 (t!379619 s!2326)) s!2326))))

(declare-fun b!6719199 () Bool)

(assert (=> b!6719199 (= e!4060220 (= (++!14703 (_1!36825 (get!22892 lt!2436653)) (_2!36825 (get!22892 lt!2436653))) s!2326))))

(assert (= (and d!2111715 res!2749764) b!6719196))

(assert (= (and d!2111715 c!1245799) b!6719197))

(assert (= (and d!2111715 (not c!1245799)) b!6719193))

(assert (= (and b!6719193 c!1245800) b!6719195))

(assert (= (and b!6719193 (not c!1245800)) b!6719198))

(assert (= (and d!2111715 res!2749767) b!6719191))

(assert (= (and b!6719191 res!2749768) b!6719192))

(assert (= (and b!6719192 res!2749766) b!6719199))

(assert (= (and d!2111715 (not res!2749765)) b!6719194))

(declare-fun m!7481746 () Bool)

(assert (=> b!6719196 m!7481746))

(assert (=> b!6719198 m!7481246))

(declare-fun m!7481748 () Bool)

(assert (=> b!6719198 m!7481748))

(assert (=> b!6719198 m!7481748))

(declare-fun m!7481750 () Bool)

(assert (=> b!6719198 m!7481750))

(assert (=> b!6719198 m!7481246))

(declare-fun m!7481752 () Bool)

(assert (=> b!6719198 m!7481752))

(assert (=> b!6719198 m!7481748))

(declare-fun m!7481754 () Bool)

(assert (=> b!6719198 m!7481754))

(declare-fun m!7481756 () Bool)

(assert (=> d!2111715 m!7481756))

(assert (=> d!2111715 m!7481246))

(declare-fun m!7481758 () Bool)

(assert (=> d!2111715 m!7481758))

(assert (=> d!2111715 m!7481234))

(assert (=> b!6719194 m!7481756))

(declare-fun m!7481760 () Bool)

(assert (=> b!6719199 m!7481760))

(declare-fun m!7481762 () Bool)

(assert (=> b!6719199 m!7481762))

(assert (=> b!6719192 m!7481760))

(declare-fun m!7481764 () Bool)

(assert (=> b!6719192 m!7481764))

(assert (=> b!6719191 m!7481760))

(declare-fun m!7481766 () Bool)

(assert (=> b!6719191 m!7481766))

(assert (=> b!6718670 d!2111715))

(declare-fun d!2111721 () Bool)

(assert (=> d!2111721 (= (nullable!6534 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (nullableFct!2448 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))

(declare-fun bs!1787703 () Bool)

(assert (= bs!1787703 d!2111721))

(declare-fun m!7481768 () Bool)

(assert (=> bs!1787703 m!7481768))

(assert (=> b!6718688 d!2111721))

(declare-fun d!2111723 () Bool)

(assert (=> d!2111723 (= (isEmpty!38141 (tail!12606 (unfocusZipperList!1968 zl!343))) ((_ is Nil!65816) (tail!12606 (unfocusZipperList!1968 zl!343))))))

(assert (=> b!6718249 d!2111723))

(declare-fun d!2111725 () Bool)

(assert (=> d!2111725 (= (tail!12606 (unfocusZipperList!1968 zl!343)) (t!379617 (unfocusZipperList!1968 zl!343)))))

(assert (=> b!6718249 d!2111725))

(declare-fun bm!606472 () Bool)

(declare-fun call!606481 () List!65940)

(declare-fun call!606482 () List!65940)

(assert (=> bm!606472 (= call!606481 call!606482)))

(declare-fun b!6719225 () Bool)

(declare-fun e!4060239 () (InoxSet Context!11862))

(assert (=> b!6719225 (= e!4060239 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719226 () Bool)

(declare-fun call!606477 () (InoxSet Context!11862))

(assert (=> b!6719226 (= e!4060239 call!606477)))

(declare-fun bm!606473 () Bool)

(declare-fun c!1245812 () Bool)

(declare-fun call!606479 () (InoxSet Context!11862))

(assert (=> bm!606473 (= call!606479 (derivationStepZipperDown!1775 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))) (ite c!1245812 (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606482)) (h!72266 s!2326)))))

(declare-fun b!6719227 () Bool)

(declare-fun e!4060241 () (InoxSet Context!11862))

(declare-fun call!606478 () (InoxSet Context!11862))

(assert (=> b!6719227 (= e!4060241 ((_ map or) call!606479 call!606478))))

(declare-fun e!4060240 () Bool)

(declare-fun b!6719228 () Bool)

(assert (=> b!6719228 (= e!4060240 (nullable!6534 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))

(declare-fun b!6719229 () Bool)

(declare-fun e!4060238 () (InoxSet Context!11862))

(assert (=> b!6719229 (= e!4060241 e!4060238)))

(declare-fun c!1245810 () Bool)

(assert (=> b!6719229 (= c!1245810 ((_ is Concat!25392) (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))

(declare-fun e!4060237 () (InoxSet Context!11862))

(declare-fun b!6719230 () Bool)

(assert (=> b!6719230 (= e!4060237 (store ((as const (Array Context!11862 Bool)) false) (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) true))))

(declare-fun b!6719231 () Bool)

(declare-fun e!4060242 () (InoxSet Context!11862))

(declare-fun call!606480 () (InoxSet Context!11862))

(assert (=> b!6719231 (= e!4060242 ((_ map or) call!606479 call!606480))))

(declare-fun b!6719232 () Bool)

(assert (=> b!6719232 (= e!4060237 e!4060242)))

(assert (=> b!6719232 (= c!1245812 ((_ is Union!16547) (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))

(declare-fun bm!606475 () Bool)

(assert (=> bm!606475 (= call!606477 call!606478)))

(declare-fun b!6719233 () Bool)

(assert (=> b!6719233 (= e!4060238 call!606477)))

(declare-fun c!1245813 () Bool)

(declare-fun bm!606476 () Bool)

(assert (=> bm!606476 (= call!606482 ($colon$colon!2364 (exprs!6431 (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398))) (ite (or c!1245813 c!1245810) (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))

(declare-fun bm!606477 () Bool)

(assert (=> bm!606477 (= call!606480 (derivationStepZipperDown!1775 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))) (ite (or c!1245812 c!1245813) (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606481)) (h!72266 s!2326)))))

(declare-fun b!6719234 () Bool)

(declare-fun c!1245809 () Bool)

(assert (=> b!6719234 (= c!1245809 ((_ is Star!16547) (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))

(assert (=> b!6719234 (= e!4060238 e!4060239)))

(declare-fun b!6719235 () Bool)

(assert (=> b!6719235 (= c!1245813 e!4060240)))

(declare-fun res!2749778 () Bool)

(assert (=> b!6719235 (=> (not res!2749778) (not e!4060240))))

(assert (=> b!6719235 (= res!2749778 ((_ is Concat!25392) (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))

(assert (=> b!6719235 (= e!4060242 e!4060241)))

(declare-fun d!2111727 () Bool)

(declare-fun c!1245811 () Bool)

(assert (=> d!2111727 (= c!1245811 (and ((_ is ElementMatch!16547) (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (= (c!1245533 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (h!72266 s!2326))))))

(assert (=> d!2111727 (= (derivationStepZipperDown!1775 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))) (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (h!72266 s!2326)) e!4060237)))

(declare-fun bm!606474 () Bool)

(assert (=> bm!606474 (= call!606478 call!606480)))

(assert (= (and d!2111727 c!1245811) b!6719230))

(assert (= (and d!2111727 (not c!1245811)) b!6719232))

(assert (= (and b!6719232 c!1245812) b!6719231))

(assert (= (and b!6719232 (not c!1245812)) b!6719235))

(assert (= (and b!6719235 res!2749778) b!6719228))

(assert (= (and b!6719235 c!1245813) b!6719227))

(assert (= (and b!6719235 (not c!1245813)) b!6719229))

(assert (= (and b!6719229 c!1245810) b!6719233))

(assert (= (and b!6719229 (not c!1245810)) b!6719234))

(assert (= (and b!6719234 c!1245809) b!6719226))

(assert (= (and b!6719234 (not c!1245809)) b!6719225))

(assert (= (or b!6719233 b!6719226) bm!606472))

(assert (= (or b!6719233 b!6719226) bm!606475))

(assert (= (or b!6719227 bm!606472) bm!606476))

(assert (= (or b!6719227 bm!606475) bm!606474))

(assert (= (or b!6719231 bm!606474) bm!606477))

(assert (= (or b!6719231 b!6719227) bm!606473))

(declare-fun m!7481780 () Bool)

(assert (=> bm!606473 m!7481780))

(declare-fun m!7481782 () Bool)

(assert (=> b!6719230 m!7481782))

(declare-fun m!7481784 () Bool)

(assert (=> bm!606477 m!7481784))

(declare-fun m!7481786 () Bool)

(assert (=> b!6719228 m!7481786))

(declare-fun m!7481788 () Bool)

(assert (=> bm!606476 m!7481788))

(assert (=> bm!606394 d!2111727))

(declare-fun d!2111731 () Bool)

(assert (=> d!2111731 true))

(assert (=> d!2111731 true))

(declare-fun res!2749781 () Bool)

(assert (=> d!2111731 (= (choose!50069 lambda!376827) res!2749781)))

(assert (=> d!2111479 d!2111731))

(declare-fun d!2111733 () Bool)

(assert (=> d!2111733 (= (isEmpty!38137 (tail!12607 s!2326)) ((_ is Nil!65818) (tail!12607 s!2326)))))

(assert (=> b!6718472 d!2111733))

(declare-fun d!2111735 () Bool)

(assert (=> d!2111735 (= (tail!12607 s!2326) (t!379619 s!2326))))

(assert (=> b!6718472 d!2111735))

(declare-fun bs!1787711 () Bool)

(declare-fun d!2111737 () Bool)

(assert (= bs!1787711 (and d!2111737 d!2111417)))

(declare-fun lambda!376938 () Int)

(assert (=> bs!1787711 (= lambda!376938 lambda!376848)))

(declare-fun bs!1787712 () Bool)

(assert (= bs!1787712 (and d!2111737 d!2111453)))

(assert (=> bs!1787712 (= lambda!376938 lambda!376879)))

(declare-fun bs!1787713 () Bool)

(assert (= bs!1787713 (and d!2111737 d!2111677)))

(assert (=> bs!1787713 (= lambda!376938 lambda!376936)))

(declare-fun bs!1787714 () Bool)

(assert (= bs!1787714 (and d!2111737 d!2111399)))

(assert (=> bs!1787714 (= lambda!376938 lambda!376836)))

(declare-fun bs!1787715 () Bool)

(assert (= bs!1787715 (and d!2111737 d!2111401)))

(assert (=> bs!1787715 (= lambda!376938 lambda!376839)))

(declare-fun bs!1787716 () Bool)

(assert (= bs!1787716 (and d!2111737 d!2111589)))

(assert (=> bs!1787716 (= lambda!376938 lambda!376912)))

(declare-fun bs!1787718 () Bool)

(assert (= bs!1787718 (and d!2111737 d!2111551)))

(assert (=> bs!1787718 (= lambda!376938 lambda!376900)))

(declare-fun bs!1787720 () Bool)

(assert (= bs!1787720 (and d!2111737 d!2111461)))

(assert (=> bs!1787720 (= lambda!376938 lambda!376880)))

(assert (=> d!2111737 (= (inv!84614 (h!72265 (t!379618 zl!343))) (forall!15747 (exprs!6431 (h!72265 (t!379618 zl!343))) lambda!376938))))

(declare-fun bs!1787723 () Bool)

(assert (= bs!1787723 d!2111737))

(declare-fun m!7481808 () Bool)

(assert (=> bs!1787723 m!7481808))

(assert (=> b!6718771 d!2111737))

(assert (=> bm!606364 d!2111471))

(declare-fun b!6719248 () Bool)

(declare-fun e!4060254 () Bool)

(declare-fun call!606483 () Bool)

(assert (=> b!6719248 (= e!4060254 call!606483)))

(declare-fun b!6719249 () Bool)

(declare-fun res!2749784 () Bool)

(declare-fun e!4060252 () Bool)

(assert (=> b!6719249 (=> res!2749784 e!4060252)))

(assert (=> b!6719249 (= res!2749784 (not ((_ is Concat!25392) lt!2436565)))))

(declare-fun e!4060255 () Bool)

(assert (=> b!6719249 (= e!4060255 e!4060252)))

(declare-fun b!6719250 () Bool)

(declare-fun res!2749786 () Bool)

(assert (=> b!6719250 (=> (not res!2749786) (not e!4060254))))

(declare-fun call!606484 () Bool)

(assert (=> b!6719250 (= res!2749786 call!606484)))

(assert (=> b!6719250 (= e!4060255 e!4060254)))

(declare-fun b!6719251 () Bool)

(declare-fun e!4060250 () Bool)

(assert (=> b!6719251 (= e!4060250 e!4060255)))

(declare-fun c!1245819 () Bool)

(assert (=> b!6719251 (= c!1245819 ((_ is Union!16547) lt!2436565))))

(declare-fun d!2111741 () Bool)

(declare-fun res!2749782 () Bool)

(declare-fun e!4060256 () Bool)

(assert (=> d!2111741 (=> res!2749782 e!4060256)))

(assert (=> d!2111741 (= res!2749782 ((_ is ElementMatch!16547) lt!2436565))))

(assert (=> d!2111741 (= (validRegex!8283 lt!2436565) e!4060256)))

(declare-fun bm!606478 () Bool)

(declare-fun c!1245820 () Bool)

(declare-fun call!606485 () Bool)

(assert (=> bm!606478 (= call!606485 (validRegex!8283 (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))))))

(declare-fun b!6719252 () Bool)

(declare-fun e!4060253 () Bool)

(assert (=> b!6719252 (= e!4060253 call!606485)))

(declare-fun bm!606479 () Bool)

(assert (=> bm!606479 (= call!606483 call!606485)))

(declare-fun b!6719253 () Bool)

(declare-fun e!4060251 () Bool)

(assert (=> b!6719253 (= e!4060251 call!606483)))

(declare-fun b!6719254 () Bool)

(assert (=> b!6719254 (= e!4060250 e!4060253)))

(declare-fun res!2749785 () Bool)

(assert (=> b!6719254 (= res!2749785 (not (nullable!6534 (reg!16876 lt!2436565))))))

(assert (=> b!6719254 (=> (not res!2749785) (not e!4060253))))

(declare-fun b!6719255 () Bool)

(assert (=> b!6719255 (= e!4060256 e!4060250)))

(assert (=> b!6719255 (= c!1245820 ((_ is Star!16547) lt!2436565))))

(declare-fun b!6719256 () Bool)

(assert (=> b!6719256 (= e!4060252 e!4060251)))

(declare-fun res!2749783 () Bool)

(assert (=> b!6719256 (=> (not res!2749783) (not e!4060251))))

(assert (=> b!6719256 (= res!2749783 call!606484)))

(declare-fun bm!606480 () Bool)

(assert (=> bm!606480 (= call!606484 (validRegex!8283 (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))))))

(assert (= (and d!2111741 (not res!2749782)) b!6719255))

(assert (= (and b!6719255 c!1245820) b!6719254))

(assert (= (and b!6719255 (not c!1245820)) b!6719251))

(assert (= (and b!6719254 res!2749785) b!6719252))

(assert (= (and b!6719251 c!1245819) b!6719250))

(assert (= (and b!6719251 (not c!1245819)) b!6719249))

(assert (= (and b!6719250 res!2749786) b!6719248))

(assert (= (and b!6719249 (not res!2749784)) b!6719256))

(assert (= (and b!6719256 res!2749783) b!6719253))

(assert (= (or b!6719248 b!6719253) bm!606479))

(assert (= (or b!6719250 b!6719256) bm!606480))

(assert (= (or b!6719252 bm!606479) bm!606478))

(declare-fun m!7481816 () Bool)

(assert (=> bm!606478 m!7481816))

(declare-fun m!7481818 () Bool)

(assert (=> b!6719254 m!7481818))

(declare-fun m!7481820 () Bool)

(assert (=> bm!606480 m!7481820))

(assert (=> d!2111421 d!2111741))

(assert (=> d!2111421 d!2111401))

(assert (=> d!2111421 d!2111417))

(declare-fun b!6719257 () Bool)

(declare-fun e!4060261 () Bool)

(declare-fun call!606486 () Bool)

(assert (=> b!6719257 (= e!4060261 call!606486)))

(declare-fun b!6719258 () Bool)

(declare-fun res!2749789 () Bool)

(declare-fun e!4060259 () Bool)

(assert (=> b!6719258 (=> res!2749789 e!4060259)))

(assert (=> b!6719258 (= res!2749789 (not ((_ is Concat!25392) lt!2436599)))))

(declare-fun e!4060262 () Bool)

(assert (=> b!6719258 (= e!4060262 e!4060259)))

(declare-fun b!6719259 () Bool)

(declare-fun res!2749791 () Bool)

(assert (=> b!6719259 (=> (not res!2749791) (not e!4060261))))

(declare-fun call!606487 () Bool)

(assert (=> b!6719259 (= res!2749791 call!606487)))

(assert (=> b!6719259 (= e!4060262 e!4060261)))

(declare-fun b!6719260 () Bool)

(declare-fun e!4060257 () Bool)

(assert (=> b!6719260 (= e!4060257 e!4060262)))

(declare-fun c!1245821 () Bool)

(assert (=> b!6719260 (= c!1245821 ((_ is Union!16547) lt!2436599))))

(declare-fun d!2111745 () Bool)

(declare-fun res!2749787 () Bool)

(declare-fun e!4060263 () Bool)

(assert (=> d!2111745 (=> res!2749787 e!4060263)))

(assert (=> d!2111745 (= res!2749787 ((_ is ElementMatch!16547) lt!2436599))))

(assert (=> d!2111745 (= (validRegex!8283 lt!2436599) e!4060263)))

(declare-fun bm!606481 () Bool)

(declare-fun call!606488 () Bool)

(declare-fun c!1245822 () Bool)

(assert (=> bm!606481 (= call!606488 (validRegex!8283 (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))))))

(declare-fun b!6719261 () Bool)

(declare-fun e!4060260 () Bool)

(assert (=> b!6719261 (= e!4060260 call!606488)))

(declare-fun bm!606482 () Bool)

(assert (=> bm!606482 (= call!606486 call!606488)))

(declare-fun b!6719262 () Bool)

(declare-fun e!4060258 () Bool)

(assert (=> b!6719262 (= e!4060258 call!606486)))

(declare-fun b!6719263 () Bool)

(assert (=> b!6719263 (= e!4060257 e!4060260)))

(declare-fun res!2749790 () Bool)

(assert (=> b!6719263 (= res!2749790 (not (nullable!6534 (reg!16876 lt!2436599))))))

(assert (=> b!6719263 (=> (not res!2749790) (not e!4060260))))

(declare-fun b!6719264 () Bool)

(assert (=> b!6719264 (= e!4060263 e!4060257)))

(assert (=> b!6719264 (= c!1245822 ((_ is Star!16547) lt!2436599))))

(declare-fun b!6719265 () Bool)

(assert (=> b!6719265 (= e!4060259 e!4060258)))

(declare-fun res!2749788 () Bool)

(assert (=> b!6719265 (=> (not res!2749788) (not e!4060258))))

(assert (=> b!6719265 (= res!2749788 call!606487)))

(declare-fun bm!606483 () Bool)

(assert (=> bm!606483 (= call!606487 (validRegex!8283 (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))))))

(assert (= (and d!2111745 (not res!2749787)) b!6719264))

(assert (= (and b!6719264 c!1245822) b!6719263))

(assert (= (and b!6719264 (not c!1245822)) b!6719260))

(assert (= (and b!6719263 res!2749790) b!6719261))

(assert (= (and b!6719260 c!1245821) b!6719259))

(assert (= (and b!6719260 (not c!1245821)) b!6719258))

(assert (= (and b!6719259 res!2749791) b!6719257))

(assert (= (and b!6719258 (not res!2749789)) b!6719265))

(assert (= (and b!6719265 res!2749788) b!6719262))

(assert (= (or b!6719257 b!6719262) bm!606482))

(assert (= (or b!6719259 b!6719265) bm!606483))

(assert (= (or b!6719261 bm!606482) bm!606481))

(declare-fun m!7481824 () Bool)

(assert (=> bm!606481 m!7481824))

(declare-fun m!7481826 () Bool)

(assert (=> b!6719263 m!7481826))

(declare-fun m!7481828 () Bool)

(assert (=> bm!606483 m!7481828))

(assert (=> d!2111453 d!2111745))

(declare-fun d!2111749 () Bool)

(declare-fun res!2749792 () Bool)

(declare-fun e!4060264 () Bool)

(assert (=> d!2111749 (=> res!2749792 e!4060264)))

(assert (=> d!2111749 (= res!2749792 ((_ is Nil!65816) (exprs!6431 (h!72265 zl!343))))))

(assert (=> d!2111749 (= (forall!15747 (exprs!6431 (h!72265 zl!343)) lambda!376879) e!4060264)))

(declare-fun b!6719266 () Bool)

(declare-fun e!4060265 () Bool)

(assert (=> b!6719266 (= e!4060264 e!4060265)))

(declare-fun res!2749793 () Bool)

(assert (=> b!6719266 (=> (not res!2749793) (not e!4060265))))

(assert (=> b!6719266 (= res!2749793 (dynLambda!26246 lambda!376879 (h!72264 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6719267 () Bool)

(assert (=> b!6719267 (= e!4060265 (forall!15747 (t!379617 (exprs!6431 (h!72265 zl!343))) lambda!376879))))

(assert (= (and d!2111749 (not res!2749792)) b!6719266))

(assert (= (and b!6719266 res!2749793) b!6719267))

(declare-fun b_lambda!252975 () Bool)

(assert (=> (not b_lambda!252975) (not b!6719266)))

(declare-fun m!7481830 () Bool)

(assert (=> b!6719266 m!7481830))

(declare-fun m!7481832 () Bool)

(assert (=> b!6719267 m!7481832))

(assert (=> d!2111453 d!2111749))

(declare-fun d!2111751 () Bool)

(declare-fun res!2749798 () Bool)

(declare-fun e!4060280 () Bool)

(assert (=> d!2111751 (=> res!2749798 e!4060280)))

(assert (=> d!2111751 (= res!2749798 ((_ is Nil!65817) lt!2436602))))

(assert (=> d!2111751 (= (noDuplicate!2340 lt!2436602) e!4060280)))

(declare-fun b!6719303 () Bool)

(declare-fun e!4060281 () Bool)

(assert (=> b!6719303 (= e!4060280 e!4060281)))

(declare-fun res!2749799 () Bool)

(assert (=> b!6719303 (=> (not res!2749799) (not e!4060281))))

(declare-fun contains!20245 (List!65941 Context!11862) Bool)

(assert (=> b!6719303 (= res!2749799 (not (contains!20245 (t!379618 lt!2436602) (h!72265 lt!2436602))))))

(declare-fun b!6719304 () Bool)

(assert (=> b!6719304 (= e!4060281 (noDuplicate!2340 (t!379618 lt!2436602)))))

(assert (= (and d!2111751 (not res!2749798)) b!6719303))

(assert (= (and b!6719303 res!2749799) b!6719304))

(declare-fun m!7481836 () Bool)

(assert (=> b!6719303 m!7481836))

(declare-fun m!7481838 () Bool)

(assert (=> b!6719304 m!7481838))

(assert (=> d!2111457 d!2111751))

(declare-fun d!2111753 () Bool)

(declare-fun e!4060302 () Bool)

(assert (=> d!2111753 e!4060302))

(declare-fun res!2749804 () Bool)

(assert (=> d!2111753 (=> (not res!2749804) (not e!4060302))))

(declare-fun res!2749805 () List!65941)

(assert (=> d!2111753 (= res!2749804 (noDuplicate!2340 res!2749805))))

(declare-fun e!4060303 () Bool)

(assert (=> d!2111753 e!4060303))

(assert (=> d!2111753 (= (choose!50066 z!1189) res!2749805)))

(declare-fun b!6719362 () Bool)

(declare-fun e!4060304 () Bool)

(declare-fun tp!1841474 () Bool)

(assert (=> b!6719362 (= e!4060304 tp!1841474)))

(declare-fun tp!1841475 () Bool)

(declare-fun b!6719361 () Bool)

(assert (=> b!6719361 (= e!4060303 (and (inv!84614 (h!72265 res!2749805)) e!4060304 tp!1841475))))

(declare-fun b!6719363 () Bool)

(assert (=> b!6719363 (= e!4060302 (= (content!12763 res!2749805) z!1189))))

(assert (= b!6719361 b!6719362))

(assert (= (and d!2111753 ((_ is Cons!65817) res!2749805)) b!6719361))

(assert (= (and d!2111753 res!2749804) b!6719363))

(declare-fun m!7481840 () Bool)

(assert (=> d!2111753 m!7481840))

(declare-fun m!7481842 () Bool)

(assert (=> b!6719361 m!7481842))

(declare-fun m!7481844 () Bool)

(assert (=> b!6719363 m!7481844))

(assert (=> d!2111457 d!2111753))

(declare-fun d!2111755 () Bool)

(declare-fun res!2749806 () Bool)

(declare-fun e!4060308 () Bool)

(assert (=> d!2111755 (=> res!2749806 e!4060308)))

(assert (=> d!2111755 (= res!2749806 ((_ is Nil!65816) lt!2436560))))

(assert (=> d!2111755 (= (forall!15747 lt!2436560 lambda!376848) e!4060308)))

(declare-fun b!6719373 () Bool)

(declare-fun e!4060309 () Bool)

(assert (=> b!6719373 (= e!4060308 e!4060309)))

(declare-fun res!2749807 () Bool)

(assert (=> b!6719373 (=> (not res!2749807) (not e!4060309))))

(assert (=> b!6719373 (= res!2749807 (dynLambda!26246 lambda!376848 (h!72264 lt!2436560)))))

(declare-fun b!6719374 () Bool)

(assert (=> b!6719374 (= e!4060309 (forall!15747 (t!379617 lt!2436560) lambda!376848))))

(assert (= (and d!2111755 (not res!2749806)) b!6719373))

(assert (= (and b!6719373 res!2749807) b!6719374))

(declare-fun b_lambda!252977 () Bool)

(assert (=> (not b_lambda!252977) (not b!6719373)))

(declare-fun m!7481846 () Bool)

(assert (=> b!6719373 m!7481846))

(declare-fun m!7481848 () Bool)

(assert (=> b!6719374 m!7481848))

(assert (=> d!2111417 d!2111755))

(declare-fun b!6719383 () Bool)

(declare-fun e!4060316 () Bool)

(declare-fun call!606489 () Bool)

(assert (=> b!6719383 (= e!4060316 call!606489)))

(declare-fun b!6719384 () Bool)

(declare-fun res!2749810 () Bool)

(declare-fun e!4060314 () Bool)

(assert (=> b!6719384 (=> res!2749810 e!4060314)))

(assert (=> b!6719384 (= res!2749810 (not ((_ is Concat!25392) lt!2436554)))))

(declare-fun e!4060317 () Bool)

(assert (=> b!6719384 (= e!4060317 e!4060314)))

(declare-fun b!6719385 () Bool)

(declare-fun res!2749812 () Bool)

(assert (=> b!6719385 (=> (not res!2749812) (not e!4060316))))

(declare-fun call!606490 () Bool)

(assert (=> b!6719385 (= res!2749812 call!606490)))

(assert (=> b!6719385 (= e!4060317 e!4060316)))

(declare-fun b!6719386 () Bool)

(declare-fun e!4060312 () Bool)

(assert (=> b!6719386 (= e!4060312 e!4060317)))

(declare-fun c!1245823 () Bool)

(assert (=> b!6719386 (= c!1245823 ((_ is Union!16547) lt!2436554))))

(declare-fun d!2111757 () Bool)

(declare-fun res!2749808 () Bool)

(declare-fun e!4060318 () Bool)

(assert (=> d!2111757 (=> res!2749808 e!4060318)))

(assert (=> d!2111757 (= res!2749808 ((_ is ElementMatch!16547) lt!2436554))))

(assert (=> d!2111757 (= (validRegex!8283 lt!2436554) e!4060318)))

(declare-fun c!1245824 () Bool)

(declare-fun call!606491 () Bool)

(declare-fun bm!606484 () Bool)

(assert (=> bm!606484 (= call!606491 (validRegex!8283 (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))))))

(declare-fun b!6719387 () Bool)

(declare-fun e!4060315 () Bool)

(assert (=> b!6719387 (= e!4060315 call!606491)))

(declare-fun bm!606485 () Bool)

(assert (=> bm!606485 (= call!606489 call!606491)))

(declare-fun b!6719388 () Bool)

(declare-fun e!4060313 () Bool)

(assert (=> b!6719388 (= e!4060313 call!606489)))

(declare-fun b!6719389 () Bool)

(assert (=> b!6719389 (= e!4060312 e!4060315)))

(declare-fun res!2749811 () Bool)

(assert (=> b!6719389 (= res!2749811 (not (nullable!6534 (reg!16876 lt!2436554))))))

(assert (=> b!6719389 (=> (not res!2749811) (not e!4060315))))

(declare-fun b!6719390 () Bool)

(assert (=> b!6719390 (= e!4060318 e!4060312)))

(assert (=> b!6719390 (= c!1245824 ((_ is Star!16547) lt!2436554))))

(declare-fun b!6719391 () Bool)

(assert (=> b!6719391 (= e!4060314 e!4060313)))

(declare-fun res!2749809 () Bool)

(assert (=> b!6719391 (=> (not res!2749809) (not e!4060313))))

(assert (=> b!6719391 (= res!2749809 call!606490)))

(declare-fun bm!606486 () Bool)

(assert (=> bm!606486 (= call!606490 (validRegex!8283 (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))))))

(assert (= (and d!2111757 (not res!2749808)) b!6719390))

(assert (= (and b!6719390 c!1245824) b!6719389))

(assert (= (and b!6719390 (not c!1245824)) b!6719386))

(assert (= (and b!6719389 res!2749811) b!6719387))

(assert (= (and b!6719386 c!1245823) b!6719385))

(assert (= (and b!6719386 (not c!1245823)) b!6719384))

(assert (= (and b!6719385 res!2749812) b!6719383))

(assert (= (and b!6719384 (not res!2749810)) b!6719391))

(assert (= (and b!6719391 res!2749809) b!6719388))

(assert (= (or b!6719383 b!6719388) bm!606485))

(assert (= (or b!6719385 b!6719391) bm!606486))

(assert (= (or b!6719387 bm!606485) bm!606484))

(declare-fun m!7481850 () Bool)

(assert (=> bm!606484 m!7481850))

(declare-fun m!7481852 () Bool)

(assert (=> b!6719389 m!7481852))

(declare-fun m!7481854 () Bool)

(assert (=> bm!606486 m!7481854))

(assert (=> d!2111401 d!2111757))

(declare-fun d!2111759 () Bool)

(declare-fun res!2749813 () Bool)

(declare-fun e!4060324 () Bool)

(assert (=> d!2111759 (=> res!2749813 e!4060324)))

(assert (=> d!2111759 (= res!2749813 ((_ is Nil!65816) (unfocusZipperList!1968 zl!343)))))

(assert (=> d!2111759 (= (forall!15747 (unfocusZipperList!1968 zl!343) lambda!376839) e!4060324)))

(declare-fun b!6719409 () Bool)

(declare-fun e!4060325 () Bool)

(assert (=> b!6719409 (= e!4060324 e!4060325)))

(declare-fun res!2749814 () Bool)

(assert (=> b!6719409 (=> (not res!2749814) (not e!4060325))))

(assert (=> b!6719409 (= res!2749814 (dynLambda!26246 lambda!376839 (h!72264 (unfocusZipperList!1968 zl!343))))))

(declare-fun b!6719410 () Bool)

(assert (=> b!6719410 (= e!4060325 (forall!15747 (t!379617 (unfocusZipperList!1968 zl!343)) lambda!376839))))

(assert (= (and d!2111759 (not res!2749813)) b!6719409))

(assert (= (and b!6719409 res!2749814) b!6719410))

(declare-fun b_lambda!252979 () Bool)

(assert (=> (not b_lambda!252979) (not b!6719409)))

(declare-fun m!7481856 () Bool)

(assert (=> b!6719409 m!7481856))

(declare-fun m!7481858 () Bool)

(assert (=> b!6719410 m!7481858))

(assert (=> d!2111401 d!2111759))

(assert (=> b!6718469 d!2111733))

(assert (=> b!6718469 d!2111735))

(declare-fun bs!1787739 () Bool)

(declare-fun d!2111761 () Bool)

(assert (= bs!1787739 (and d!2111761 d!2111417)))

(declare-fun lambda!376941 () Int)

(assert (=> bs!1787739 (= lambda!376941 lambda!376848)))

(declare-fun bs!1787740 () Bool)

(assert (= bs!1787740 (and d!2111761 d!2111453)))

(assert (=> bs!1787740 (= lambda!376941 lambda!376879)))

(declare-fun bs!1787742 () Bool)

(assert (= bs!1787742 (and d!2111761 d!2111677)))

(assert (=> bs!1787742 (= lambda!376941 lambda!376936)))

(declare-fun bs!1787744 () Bool)

(assert (= bs!1787744 (and d!2111761 d!2111399)))

(assert (=> bs!1787744 (= lambda!376941 lambda!376836)))

(declare-fun bs!1787746 () Bool)

(assert (= bs!1787746 (and d!2111761 d!2111401)))

(assert (=> bs!1787746 (= lambda!376941 lambda!376839)))

(declare-fun bs!1787747 () Bool)

(assert (= bs!1787747 (and d!2111761 d!2111737)))

(assert (=> bs!1787747 (= lambda!376941 lambda!376938)))

(declare-fun bs!1787749 () Bool)

(assert (= bs!1787749 (and d!2111761 d!2111589)))

(assert (=> bs!1787749 (= lambda!376941 lambda!376912)))

(declare-fun bs!1787750 () Bool)

(assert (= bs!1787750 (and d!2111761 d!2111551)))

(assert (=> bs!1787750 (= lambda!376941 lambda!376900)))

(declare-fun bs!1787751 () Bool)

(assert (= bs!1787751 (and d!2111761 d!2111461)))

(assert (=> bs!1787751 (= lambda!376941 lambda!376880)))

(declare-fun b!6719412 () Bool)

(declare-fun e!4060327 () Bool)

(assert (=> b!6719412 (= e!4060327 (isEmpty!38141 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6719413 () Bool)

(declare-fun e!4060330 () Regex!16547)

(assert (=> b!6719413 (= e!4060330 EmptyExpr!16547)))

(declare-fun b!6719414 () Bool)

(declare-fun e!4060332 () Bool)

(declare-fun e!4060328 () Bool)

(assert (=> b!6719414 (= e!4060332 e!4060328)))

(declare-fun c!1245828 () Bool)

(assert (=> b!6719414 (= c!1245828 (isEmpty!38141 (tail!12606 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6719415 () Bool)

(declare-fun lt!2436657 () Regex!16547)

(assert (=> b!6719415 (= e!4060332 (isEmptyExpr!1913 lt!2436657))))

(declare-fun e!4060329 () Bool)

(assert (=> d!2111761 e!4060329))

(declare-fun res!2749816 () Bool)

(assert (=> d!2111761 (=> (not res!2749816) (not e!4060329))))

(assert (=> d!2111761 (= res!2749816 (validRegex!8283 lt!2436657))))

(declare-fun e!4060331 () Regex!16547)

(assert (=> d!2111761 (= lt!2436657 e!4060331)))

(declare-fun c!1245826 () Bool)

(assert (=> d!2111761 (= c!1245826 e!4060327)))

(declare-fun res!2749815 () Bool)

(assert (=> d!2111761 (=> (not res!2749815) (not e!4060327))))

(assert (=> d!2111761 (= res!2749815 ((_ is Cons!65816) (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> d!2111761 (forall!15747 (t!379617 (exprs!6431 (h!72265 zl!343))) lambda!376941)))

(assert (=> d!2111761 (= (generalisedConcat!2144 (t!379617 (exprs!6431 (h!72265 zl!343)))) lt!2436657)))

(declare-fun b!6719416 () Bool)

(assert (=> b!6719416 (= e!4060328 (= lt!2436657 (head!13521 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6719417 () Bool)

(assert (=> b!6719417 (= e!4060331 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6719418 () Bool)

(assert (=> b!6719418 (= e!4060329 e!4060332)))

(declare-fun c!1245825 () Bool)

(assert (=> b!6719418 (= c!1245825 (isEmpty!38141 (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6719419 () Bool)

(assert (=> b!6719419 (= e!4060331 e!4060330)))

(declare-fun c!1245827 () Bool)

(assert (=> b!6719419 (= c!1245827 ((_ is Cons!65816) (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6719420 () Bool)

(assert (=> b!6719420 (= e!4060328 (isConcat!1436 lt!2436657))))

(declare-fun b!6719421 () Bool)

(assert (=> b!6719421 (= e!4060330 (Concat!25392 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343)))) (generalisedConcat!2144 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))))))))

(assert (= (and d!2111761 res!2749815) b!6719412))

(assert (= (and d!2111761 c!1245826) b!6719417))

(assert (= (and d!2111761 (not c!1245826)) b!6719419))

(assert (= (and b!6719419 c!1245827) b!6719421))

(assert (= (and b!6719419 (not c!1245827)) b!6719413))

(assert (= (and d!2111761 res!2749816) b!6719418))

(assert (= (and b!6719418 c!1245825) b!6719415))

(assert (= (and b!6719418 (not c!1245825)) b!6719414))

(assert (= (and b!6719414 c!1245828) b!6719416))

(assert (= (and b!6719414 (not c!1245828)) b!6719420))

(declare-fun m!7481870 () Bool)

(assert (=> b!6719420 m!7481870))

(assert (=> b!6719418 m!7481198))

(declare-fun m!7481872 () Bool)

(assert (=> b!6719416 m!7481872))

(declare-fun m!7481874 () Bool)

(assert (=> b!6719412 m!7481874))

(declare-fun m!7481876 () Bool)

(assert (=> b!6719421 m!7481876))

(declare-fun m!7481878 () Bool)

(assert (=> d!2111761 m!7481878))

(declare-fun m!7481880 () Bool)

(assert (=> d!2111761 m!7481880))

(declare-fun m!7481882 () Bool)

(assert (=> b!6719414 m!7481882))

(assert (=> b!6719414 m!7481882))

(declare-fun m!7481884 () Bool)

(assert (=> b!6719414 m!7481884))

(declare-fun m!7481886 () Bool)

(assert (=> b!6719415 m!7481886))

(assert (=> b!6718591 d!2111761))

(declare-fun d!2111773 () Bool)

(declare-fun res!2749817 () Bool)

(declare-fun e!4060333 () Bool)

(assert (=> d!2111773 (=> res!2749817 e!4060333)))

(assert (=> d!2111773 (= res!2749817 ((_ is Nil!65816) (exprs!6431 (h!72265 zl!343))))))

(assert (=> d!2111773 (= (forall!15747 (exprs!6431 (h!72265 zl!343)) lambda!376880) e!4060333)))

(declare-fun b!6719422 () Bool)

(declare-fun e!4060334 () Bool)

(assert (=> b!6719422 (= e!4060333 e!4060334)))

(declare-fun res!2749818 () Bool)

(assert (=> b!6719422 (=> (not res!2749818) (not e!4060334))))

(assert (=> b!6719422 (= res!2749818 (dynLambda!26246 lambda!376880 (h!72264 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6719423 () Bool)

(assert (=> b!6719423 (= e!4060334 (forall!15747 (t!379617 (exprs!6431 (h!72265 zl!343))) lambda!376880))))

(assert (= (and d!2111773 (not res!2749817)) b!6719422))

(assert (= (and b!6719422 res!2749818) b!6719423))

(declare-fun b_lambda!252991 () Bool)

(assert (=> (not b_lambda!252991) (not b!6719422)))

(declare-fun m!7481888 () Bool)

(assert (=> b!6719422 m!7481888))

(declare-fun m!7481890 () Bool)

(assert (=> b!6719423 m!7481890))

(assert (=> d!2111461 d!2111773))

(declare-fun d!2111775 () Bool)

(declare-fun c!1245831 () Bool)

(assert (=> d!2111775 (= c!1245831 ((_ is Nil!65817) lt!2436602))))

(declare-fun e!4060337 () (InoxSet Context!11862))

(assert (=> d!2111775 (= (content!12763 lt!2436602) e!4060337)))

(declare-fun b!6719428 () Bool)

(assert (=> b!6719428 (= e!4060337 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719429 () Bool)

(assert (=> b!6719429 (= e!4060337 ((_ map or) (store ((as const (Array Context!11862 Bool)) false) (h!72265 lt!2436602) true) (content!12763 (t!379618 lt!2436602))))))

(assert (= (and d!2111775 c!1245831) b!6719428))

(assert (= (and d!2111775 (not c!1245831)) b!6719429))

(declare-fun m!7481892 () Bool)

(assert (=> b!6719429 m!7481892))

(declare-fun m!7481894 () Bool)

(assert (=> b!6719429 m!7481894))

(assert (=> b!6718599 d!2111775))

(declare-fun b!6719430 () Bool)

(declare-fun res!2749820 () Bool)

(declare-fun e!4060338 () Bool)

(assert (=> b!6719430 (=> (not res!2749820) (not e!4060338))))

(declare-fun call!606492 () Bool)

(assert (=> b!6719430 (= res!2749820 (not call!606492))))

(declare-fun b!6719431 () Bool)

(declare-fun e!4060341 () Bool)

(declare-fun e!4060342 () Bool)

(assert (=> b!6719431 (= e!4060341 e!4060342)))

(declare-fun res!2749826 () Bool)

(assert (=> b!6719431 (=> (not res!2749826) (not e!4060342))))

(declare-fun lt!2436658 () Bool)

(assert (=> b!6719431 (= res!2749826 (not lt!2436658))))

(declare-fun b!6719432 () Bool)

(declare-fun e!4060339 () Bool)

(assert (=> b!6719432 (= e!4060339 (matchR!8730 (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326))) (tail!12607 (tail!12607 s!2326))))))

(declare-fun d!2111777 () Bool)

(declare-fun e!4060343 () Bool)

(assert (=> d!2111777 e!4060343))

(declare-fun c!1245832 () Bool)

(assert (=> d!2111777 (= c!1245832 ((_ is EmptyExpr!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(assert (=> d!2111777 (= lt!2436658 e!4060339)))

(declare-fun c!1245833 () Bool)

(assert (=> d!2111777 (= c!1245833 (isEmpty!38137 (tail!12607 s!2326)))))

(assert (=> d!2111777 (validRegex!8283 (derivativeStep!5219 r!7292 (head!13522 s!2326)))))

(assert (=> d!2111777 (= (matchR!8730 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (tail!12607 s!2326)) lt!2436658)))

(declare-fun b!6719433 () Bool)

(declare-fun e!4060340 () Bool)

(assert (=> b!6719433 (= e!4060340 (not lt!2436658))))

(declare-fun b!6719434 () Bool)

(declare-fun e!4060344 () Bool)

(assert (=> b!6719434 (= e!4060344 (not (= (head!13522 (tail!12607 s!2326)) (c!1245533 (derivativeStep!5219 r!7292 (head!13522 s!2326))))))))

(declare-fun b!6719435 () Bool)

(assert (=> b!6719435 (= e!4060343 (= lt!2436658 call!606492))))

(declare-fun bm!606487 () Bool)

(assert (=> bm!606487 (= call!606492 (isEmpty!38137 (tail!12607 s!2326)))))

(declare-fun b!6719436 () Bool)

(assert (=> b!6719436 (= e!4060339 (nullable!6534 (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(declare-fun b!6719437 () Bool)

(assert (=> b!6719437 (= e!4060343 e!4060340)))

(declare-fun c!1245834 () Bool)

(assert (=> b!6719437 (= c!1245834 ((_ is EmptyLang!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(declare-fun b!6719438 () Bool)

(assert (=> b!6719438 (= e!4060338 (= (head!13522 (tail!12607 s!2326)) (c!1245533 (derivativeStep!5219 r!7292 (head!13522 s!2326)))))))

(declare-fun b!6719439 () Bool)

(declare-fun res!2749823 () Bool)

(assert (=> b!6719439 (=> res!2749823 e!4060344)))

(assert (=> b!6719439 (= res!2749823 (not (isEmpty!38137 (tail!12607 (tail!12607 s!2326)))))))

(declare-fun b!6719440 () Bool)

(declare-fun res!2749821 () Bool)

(assert (=> b!6719440 (=> res!2749821 e!4060341)))

(assert (=> b!6719440 (= res!2749821 e!4060338)))

(declare-fun res!2749825 () Bool)

(assert (=> b!6719440 (=> (not res!2749825) (not e!4060338))))

(assert (=> b!6719440 (= res!2749825 lt!2436658)))

(declare-fun b!6719441 () Bool)

(declare-fun res!2749822 () Bool)

(assert (=> b!6719441 (=> res!2749822 e!4060341)))

(assert (=> b!6719441 (= res!2749822 (not ((_ is ElementMatch!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326)))))))

(assert (=> b!6719441 (= e!4060340 e!4060341)))

(declare-fun b!6719442 () Bool)

(declare-fun res!2749819 () Bool)

(assert (=> b!6719442 (=> (not res!2749819) (not e!4060338))))

(assert (=> b!6719442 (= res!2749819 (isEmpty!38137 (tail!12607 (tail!12607 s!2326))))))

(declare-fun b!6719443 () Bool)

(assert (=> b!6719443 (= e!4060342 e!4060344)))

(declare-fun res!2749824 () Bool)

(assert (=> b!6719443 (=> res!2749824 e!4060344)))

(assert (=> b!6719443 (= res!2749824 call!606492)))

(assert (= (and d!2111777 c!1245833) b!6719436))

(assert (= (and d!2111777 (not c!1245833)) b!6719432))

(assert (= (and d!2111777 c!1245832) b!6719435))

(assert (= (and d!2111777 (not c!1245832)) b!6719437))

(assert (= (and b!6719437 c!1245834) b!6719433))

(assert (= (and b!6719437 (not c!1245834)) b!6719441))

(assert (= (and b!6719441 (not res!2749822)) b!6719440))

(assert (= (and b!6719440 res!2749825) b!6719430))

(assert (= (and b!6719430 res!2749820) b!6719442))

(assert (= (and b!6719442 res!2749819) b!6719438))

(assert (= (and b!6719440 (not res!2749821)) b!6719431))

(assert (= (and b!6719431 res!2749826) b!6719443))

(assert (= (and b!6719443 (not res!2749824)) b!6719439))

(assert (= (and b!6719439 (not res!2749823)) b!6719434))

(assert (= (or b!6719435 b!6719430 b!6719443) bm!606487))

(assert (=> b!6719438 m!7481144))

(declare-fun m!7481896 () Bool)

(assert (=> b!6719438 m!7481896))

(assert (=> b!6719434 m!7481144))

(assert (=> b!6719434 m!7481896))

(assert (=> bm!606487 m!7481144))

(assert (=> bm!606487 m!7481146))

(assert (=> b!6719439 m!7481144))

(declare-fun m!7481898 () Bool)

(assert (=> b!6719439 m!7481898))

(assert (=> b!6719439 m!7481898))

(declare-fun m!7481900 () Bool)

(assert (=> b!6719439 m!7481900))

(assert (=> d!2111777 m!7481144))

(assert (=> d!2111777 m!7481146))

(assert (=> d!2111777 m!7481148))

(declare-fun m!7481902 () Bool)

(assert (=> d!2111777 m!7481902))

(assert (=> b!6719442 m!7481144))

(assert (=> b!6719442 m!7481898))

(assert (=> b!6719442 m!7481898))

(assert (=> b!6719442 m!7481900))

(assert (=> b!6719432 m!7481144))

(assert (=> b!6719432 m!7481896))

(assert (=> b!6719432 m!7481148))

(assert (=> b!6719432 m!7481896))

(declare-fun m!7481904 () Bool)

(assert (=> b!6719432 m!7481904))

(assert (=> b!6719432 m!7481144))

(assert (=> b!6719432 m!7481898))

(assert (=> b!6719432 m!7481904))

(assert (=> b!6719432 m!7481898))

(declare-fun m!7481906 () Bool)

(assert (=> b!6719432 m!7481906))

(assert (=> b!6719436 m!7481148))

(declare-fun m!7481908 () Bool)

(assert (=> b!6719436 m!7481908))

(assert (=> b!6718462 d!2111777))

(declare-fun e!4060358 () Regex!16547)

(declare-fun call!606503 () Regex!16547)

(declare-fun call!606504 () Regex!16547)

(declare-fun b!6719464 () Bool)

(assert (=> b!6719464 (= e!4060358 (Union!16547 (Concat!25392 call!606504 (regTwo!33606 r!7292)) call!606503))))

(declare-fun bm!606496 () Bool)

(declare-fun call!606502 () Regex!16547)

(assert (=> bm!606496 (= call!606504 call!606502)))

(declare-fun bm!606497 () Bool)

(declare-fun c!1245846 () Bool)

(declare-fun c!1245845 () Bool)

(declare-fun call!606501 () Regex!16547)

(assert (=> bm!606497 (= call!606501 (derivativeStep!5219 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292))) (head!13522 s!2326)))))

(declare-fun d!2111779 () Bool)

(declare-fun lt!2436661 () Regex!16547)

(assert (=> d!2111779 (validRegex!8283 lt!2436661)))

(declare-fun e!4060356 () Regex!16547)

(assert (=> d!2111779 (= lt!2436661 e!4060356)))

(declare-fun c!1245847 () Bool)

(assert (=> d!2111779 (= c!1245847 (or ((_ is EmptyExpr!16547) r!7292) ((_ is EmptyLang!16547) r!7292)))))

(assert (=> d!2111779 (validRegex!8283 r!7292)))

(assert (=> d!2111779 (= (derivativeStep!5219 r!7292 (head!13522 s!2326)) lt!2436661)))

(declare-fun b!6719465 () Bool)

(declare-fun e!4060355 () Regex!16547)

(declare-fun e!4060357 () Regex!16547)

(assert (=> b!6719465 (= e!4060355 e!4060357)))

(declare-fun c!1245848 () Bool)

(assert (=> b!6719465 (= c!1245848 ((_ is Star!16547) r!7292))))

(declare-fun b!6719466 () Bool)

(assert (=> b!6719466 (= e!4060355 (Union!16547 call!606501 call!606502))))

(declare-fun b!6719467 () Bool)

(assert (=> b!6719467 (= c!1245846 (nullable!6534 (regOne!33606 r!7292)))))

(assert (=> b!6719467 (= e!4060357 e!4060358)))

(declare-fun b!6719468 () Bool)

(assert (=> b!6719468 (= e!4060357 (Concat!25392 call!606504 r!7292))))

(declare-fun b!6719469 () Bool)

(assert (=> b!6719469 (= c!1245845 ((_ is Union!16547) r!7292))))

(declare-fun e!4060359 () Regex!16547)

(assert (=> b!6719469 (= e!4060359 e!4060355)))

(declare-fun bm!606498 () Bool)

(assert (=> bm!606498 (= call!606503 call!606501)))

(declare-fun b!6719470 () Bool)

(assert (=> b!6719470 (= e!4060356 e!4060359)))

(declare-fun c!1245849 () Bool)

(assert (=> b!6719470 (= c!1245849 ((_ is ElementMatch!16547) r!7292))))

(declare-fun b!6719471 () Bool)

(assert (=> b!6719471 (= e!4060356 EmptyLang!16547)))

(declare-fun b!6719472 () Bool)

(assert (=> b!6719472 (= e!4060359 (ite (= (head!13522 s!2326) (c!1245533 r!7292)) EmptyExpr!16547 EmptyLang!16547))))

(declare-fun b!6719473 () Bool)

(assert (=> b!6719473 (= e!4060358 (Union!16547 (Concat!25392 call!606503 (regTwo!33606 r!7292)) EmptyLang!16547))))

(declare-fun bm!606499 () Bool)

(assert (=> bm!606499 (= call!606502 (derivativeStep!5219 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292))) (head!13522 s!2326)))))

(assert (= (and d!2111779 c!1245847) b!6719471))

(assert (= (and d!2111779 (not c!1245847)) b!6719470))

(assert (= (and b!6719470 c!1245849) b!6719472))

(assert (= (and b!6719470 (not c!1245849)) b!6719469))

(assert (= (and b!6719469 c!1245845) b!6719466))

(assert (= (and b!6719469 (not c!1245845)) b!6719465))

(assert (= (and b!6719465 c!1245848) b!6719468))

(assert (= (and b!6719465 (not c!1245848)) b!6719467))

(assert (= (and b!6719467 c!1245846) b!6719464))

(assert (= (and b!6719467 (not c!1245846)) b!6719473))

(assert (= (or b!6719464 b!6719473) bm!606498))

(assert (= (or b!6719468 b!6719464) bm!606496))

(assert (= (or b!6719466 bm!606496) bm!606499))

(assert (= (or b!6719466 bm!606498) bm!606497))

(assert (=> bm!606497 m!7481142))

(declare-fun m!7481910 () Bool)

(assert (=> bm!606497 m!7481910))

(declare-fun m!7481912 () Bool)

(assert (=> d!2111779 m!7481912))

(assert (=> d!2111779 m!7480964))

(assert (=> b!6719467 m!7481284))

(assert (=> bm!606499 m!7481142))

(declare-fun m!7481914 () Bool)

(assert (=> bm!606499 m!7481914))

(assert (=> b!6718462 d!2111779))

(assert (=> b!6718462 d!2111625))

(assert (=> b!6718462 d!2111735))

(declare-fun bm!606500 () Bool)

(declare-fun call!606509 () List!65940)

(declare-fun call!606510 () List!65940)

(assert (=> bm!606500 (= call!606509 call!606510)))

(declare-fun b!6719474 () Bool)

(declare-fun e!4060362 () (InoxSet Context!11862))

(assert (=> b!6719474 (= e!4060362 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719475 () Bool)

(declare-fun call!606505 () (InoxSet Context!11862))

(assert (=> b!6719475 (= e!4060362 call!606505)))

(declare-fun call!606507 () (InoxSet Context!11862))

(declare-fun c!1245853 () Bool)

(declare-fun bm!606501 () Bool)

(assert (=> bm!606501 (= call!606507 (derivationStepZipperDown!1775 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))) (ite c!1245853 (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606510)) (h!72266 s!2326)))))

(declare-fun b!6719476 () Bool)

(declare-fun e!4060364 () (InoxSet Context!11862))

(declare-fun call!606506 () (InoxSet Context!11862))

(assert (=> b!6719476 (= e!4060364 ((_ map or) call!606507 call!606506))))

(declare-fun b!6719477 () Bool)

(declare-fun e!4060363 () Bool)

(assert (=> b!6719477 (= e!4060363 (nullable!6534 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))

(declare-fun b!6719478 () Bool)

(declare-fun e!4060361 () (InoxSet Context!11862))

(assert (=> b!6719478 (= e!4060364 e!4060361)))

(declare-fun c!1245851 () Bool)

(assert (=> b!6719478 (= c!1245851 ((_ is Concat!25392) (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))

(declare-fun b!6719479 () Bool)

(declare-fun e!4060360 () (InoxSet Context!11862))

(assert (=> b!6719479 (= e!4060360 (store ((as const (Array Context!11862 Bool)) false) (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) true))))

(declare-fun b!6719480 () Bool)

(declare-fun e!4060365 () (InoxSet Context!11862))

(declare-fun call!606508 () (InoxSet Context!11862))

(assert (=> b!6719480 (= e!4060365 ((_ map or) call!606507 call!606508))))

(declare-fun b!6719481 () Bool)

(assert (=> b!6719481 (= e!4060360 e!4060365)))

(assert (=> b!6719481 (= c!1245853 ((_ is Union!16547) (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))

(declare-fun bm!606503 () Bool)

(assert (=> bm!606503 (= call!606505 call!606506)))

(declare-fun b!6719482 () Bool)

(assert (=> b!6719482 (= e!4060361 call!606505)))

(declare-fun bm!606504 () Bool)

(declare-fun c!1245854 () Bool)

(assert (=> bm!606504 (= call!606510 ($colon$colon!2364 (exprs!6431 (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399))) (ite (or c!1245854 c!1245851) (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))

(declare-fun bm!606505 () Bool)

(assert (=> bm!606505 (= call!606508 (derivationStepZipperDown!1775 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))) (ite (or c!1245853 c!1245854) (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606509)) (h!72266 s!2326)))))

(declare-fun b!6719483 () Bool)

(declare-fun c!1245850 () Bool)

(assert (=> b!6719483 (= c!1245850 ((_ is Star!16547) (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))

(assert (=> b!6719483 (= e!4060361 e!4060362)))

(declare-fun b!6719484 () Bool)

(assert (=> b!6719484 (= c!1245854 e!4060363)))

(declare-fun res!2749827 () Bool)

(assert (=> b!6719484 (=> (not res!2749827) (not e!4060363))))

(assert (=> b!6719484 (= res!2749827 ((_ is Concat!25392) (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))

(assert (=> b!6719484 (= e!4060365 e!4060364)))

(declare-fun c!1245852 () Bool)

(declare-fun d!2111781 () Bool)

(assert (=> d!2111781 (= c!1245852 (and ((_ is ElementMatch!16547) (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (= (c!1245533 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (h!72266 s!2326))))))

(assert (=> d!2111781 (= (derivationStepZipperDown!1775 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)) (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (h!72266 s!2326)) e!4060360)))

(declare-fun bm!606502 () Bool)

(assert (=> bm!606502 (= call!606506 call!606508)))

(assert (= (and d!2111781 c!1245852) b!6719479))

(assert (= (and d!2111781 (not c!1245852)) b!6719481))

(assert (= (and b!6719481 c!1245853) b!6719480))

(assert (= (and b!6719481 (not c!1245853)) b!6719484))

(assert (= (and b!6719484 res!2749827) b!6719477))

(assert (= (and b!6719484 c!1245854) b!6719476))

(assert (= (and b!6719484 (not c!1245854)) b!6719478))

(assert (= (and b!6719478 c!1245851) b!6719482))

(assert (= (and b!6719478 (not c!1245851)) b!6719483))

(assert (= (and b!6719483 c!1245850) b!6719475))

(assert (= (and b!6719483 (not c!1245850)) b!6719474))

(assert (= (or b!6719482 b!6719475) bm!606500))

(assert (= (or b!6719482 b!6719475) bm!606503))

(assert (= (or b!6719476 bm!606500) bm!606504))

(assert (= (or b!6719476 bm!606503) bm!606502))

(assert (= (or b!6719480 bm!606502) bm!606505))

(assert (= (or b!6719480 b!6719476) bm!606501))

(declare-fun m!7481916 () Bool)

(assert (=> bm!606501 m!7481916))

(declare-fun m!7481918 () Bool)

(assert (=> b!6719479 m!7481918))

(declare-fun m!7481920 () Bool)

(assert (=> bm!606505 m!7481920))

(declare-fun m!7481922 () Bool)

(assert (=> b!6719477 m!7481922))

(declare-fun m!7481924 () Bool)

(assert (=> bm!606504 m!7481924))

(assert (=> bm!606390 d!2111781))

(declare-fun d!2111783 () Bool)

(assert (=> d!2111783 (= (isEmptyExpr!1913 lt!2436599) ((_ is EmptyExpr!16547) lt!2436599))))

(assert (=> b!6718585 d!2111783))

(declare-fun bs!1787752 () Bool)

(declare-fun b!6719495 () Bool)

(assert (= bs!1787752 (and b!6719495 d!2111467)))

(declare-fun lambda!376942 () Int)

(assert (=> bs!1787752 (not (= lambda!376942 lambda!376886))))

(declare-fun bs!1787753 () Bool)

(assert (= bs!1787753 (and b!6719495 d!2111573)))

(assert (=> bs!1787753 (not (= lambda!376942 lambda!376905))))

(declare-fun bs!1787754 () Bool)

(assert (= bs!1787754 (and b!6719495 b!6718346)))

(assert (=> bs!1787754 (not (= lambda!376942 lambda!376863))))

(declare-fun bs!1787755 () Bool)

(assert (= bs!1787755 (and b!6719495 d!2111631)))

(assert (=> bs!1787755 (= (and (= (reg!16876 (regTwo!33607 r!7292)) (reg!16876 r!7292)) (= (regTwo!33607 r!7292) (Star!16547 (reg!16876 r!7292)))) (= lambda!376942 lambda!376923))))

(declare-fun bs!1787756 () Bool)

(assert (= bs!1787756 (and b!6719495 b!6718353)))

(assert (=> bs!1787756 (= (and (= (reg!16876 (regTwo!33607 r!7292)) (reg!16876 r!7292)) (= (regTwo!33607 r!7292) r!7292)) (= lambda!376942 lambda!376862))))

(declare-fun bs!1787757 () Bool)

(assert (= bs!1787757 (and b!6719495 b!6718097)))

(assert (=> bs!1787757 (not (= lambda!376942 lambda!376827))))

(declare-fun bs!1787758 () Bool)

(assert (= bs!1787758 (and b!6719495 d!2111655)))

(assert (=> bs!1787758 (not (= lambda!376942 lambda!376934))))

(declare-fun bs!1787759 () Bool)

(assert (= bs!1787759 (and b!6719495 d!2111469)))

(assert (=> bs!1787759 (not (= lambda!376942 lambda!376891))))

(declare-fun bs!1787760 () Bool)

(assert (= bs!1787760 (and b!6719495 b!6718915)))

(assert (=> bs!1787760 (= (and (= (reg!16876 (regTwo!33607 r!7292)) (reg!16876 (regOne!33607 r!7292))) (= (regTwo!33607 r!7292) (regOne!33607 r!7292))) (= lambda!376942 lambda!376901))))

(assert (=> bs!1787757 (= (and (= (reg!16876 (regTwo!33607 r!7292)) (reg!16876 r!7292)) (= (regTwo!33607 r!7292) r!7292)) (= lambda!376942 lambda!376826))))

(assert (=> bs!1787758 (not (= lambda!376942 lambda!376935))))

(assert (=> bs!1787752 (not (= lambda!376942 lambda!376885))))

(assert (=> bs!1787759 (= (and (= (reg!16876 (regTwo!33607 r!7292)) (reg!16876 r!7292)) (= (regTwo!33607 r!7292) (Star!16547 (reg!16876 r!7292)))) (= lambda!376942 lambda!376892))))

(assert (=> bs!1787757 (not (= lambda!376942 lambda!376825))))

(declare-fun bs!1787761 () Bool)

(assert (= bs!1787761 (and b!6719495 d!2111481)))

(assert (=> bs!1787761 (not (= lambda!376942 lambda!376895))))

(assert (=> bs!1787755 (not (= lambda!376942 lambda!376922))))

(declare-fun bs!1787762 () Bool)

(assert (= bs!1787762 (and b!6719495 b!6718908)))

(assert (=> bs!1787762 (not (= lambda!376942 lambda!376902))))

(assert (=> b!6719495 true))

(assert (=> b!6719495 true))

(declare-fun bs!1787763 () Bool)

(declare-fun b!6719488 () Bool)

(assert (= bs!1787763 (and b!6719488 d!2111467)))

(declare-fun lambda!376943 () Int)

(assert (=> bs!1787763 (= (and (= (regOne!33606 (regTwo!33607 r!7292)) (reg!16876 r!7292)) (= (regTwo!33606 (regTwo!33607 r!7292)) r!7292)) (= lambda!376943 lambda!376886))))

(declare-fun bs!1787764 () Bool)

(assert (= bs!1787764 (and b!6719488 b!6718346)))

(assert (=> bs!1787764 (= (and (= (regOne!33606 (regTwo!33607 r!7292)) (regOne!33606 r!7292)) (= (regTwo!33606 (regTwo!33607 r!7292)) (regTwo!33606 r!7292))) (= lambda!376943 lambda!376863))))

(declare-fun bs!1787765 () Bool)

(assert (= bs!1787765 (and b!6719488 d!2111631)))

(assert (=> bs!1787765 (not (= lambda!376943 lambda!376923))))

(declare-fun bs!1787766 () Bool)

(assert (= bs!1787766 (and b!6719488 b!6718353)))

(assert (=> bs!1787766 (not (= lambda!376943 lambda!376862))))

(declare-fun bs!1787767 () Bool)

(assert (= bs!1787767 (and b!6719488 b!6718097)))

(assert (=> bs!1787767 (= (and (= (regOne!33606 (regTwo!33607 r!7292)) (reg!16876 r!7292)) (= (regTwo!33606 (regTwo!33607 r!7292)) r!7292)) (= lambda!376943 lambda!376827))))

(declare-fun bs!1787768 () Bool)

(assert (= bs!1787768 (and b!6719488 d!2111655)))

(assert (=> bs!1787768 (not (= lambda!376943 lambda!376934))))

(declare-fun bs!1787769 () Bool)

(assert (= bs!1787769 (and b!6719488 d!2111469)))

(assert (=> bs!1787769 (not (= lambda!376943 lambda!376891))))

(declare-fun bs!1787770 () Bool)

(assert (= bs!1787770 (and b!6719488 b!6718915)))

(assert (=> bs!1787770 (not (= lambda!376943 lambda!376901))))

(assert (=> bs!1787767 (not (= lambda!376943 lambda!376826))))

(assert (=> bs!1787768 (= (and (= (regOne!33606 (regTwo!33607 r!7292)) (reg!16876 r!7292)) (= (regTwo!33606 (regTwo!33607 r!7292)) r!7292)) (= lambda!376943 lambda!376935))))

(assert (=> bs!1787763 (not (= lambda!376943 lambda!376885))))

(declare-fun bs!1787771 () Bool)

(assert (= bs!1787771 (and b!6719488 b!6719495)))

(assert (=> bs!1787771 (not (= lambda!376943 lambda!376942))))

(declare-fun bs!1787772 () Bool)

(assert (= bs!1787772 (and b!6719488 d!2111573)))

(assert (=> bs!1787772 (not (= lambda!376943 lambda!376905))))

(assert (=> bs!1787769 (not (= lambda!376943 lambda!376892))))

(assert (=> bs!1787767 (not (= lambda!376943 lambda!376825))))

(declare-fun bs!1787773 () Bool)

(assert (= bs!1787773 (and b!6719488 d!2111481)))

(assert (=> bs!1787773 (not (= lambda!376943 lambda!376895))))

(assert (=> bs!1787765 (not (= lambda!376943 lambda!376922))))

(declare-fun bs!1787774 () Bool)

(assert (= bs!1787774 (and b!6719488 b!6718908)))

(assert (=> bs!1787774 (= (and (= (regOne!33606 (regTwo!33607 r!7292)) (regOne!33606 (regOne!33607 r!7292))) (= (regTwo!33606 (regTwo!33607 r!7292)) (regTwo!33606 (regOne!33607 r!7292)))) (= lambda!376943 lambda!376902))))

(assert (=> b!6719488 true))

(assert (=> b!6719488 true))

(declare-fun b!6719485 () Bool)

(declare-fun e!4060372 () Bool)

(declare-fun e!4060370 () Bool)

(assert (=> b!6719485 (= e!4060372 e!4060370)))

(declare-fun res!2749828 () Bool)

(assert (=> b!6719485 (= res!2749828 (matchRSpec!3648 (regOne!33607 (regTwo!33607 r!7292)) s!2326))))

(assert (=> b!6719485 (=> res!2749828 e!4060370)))

(declare-fun b!6719486 () Bool)

(declare-fun c!1245855 () Bool)

(assert (=> b!6719486 (= c!1245855 ((_ is Union!16547) (regTwo!33607 r!7292)))))

(declare-fun e!4060366 () Bool)

(assert (=> b!6719486 (= e!4060366 e!4060372)))

(declare-fun b!6719487 () Bool)

(assert (=> b!6719487 (= e!4060366 (= s!2326 (Cons!65818 (c!1245533 (regTwo!33607 r!7292)) Nil!65818)))))

(declare-fun b!6719489 () Bool)

(declare-fun c!1245856 () Bool)

(assert (=> b!6719489 (= c!1245856 ((_ is ElementMatch!16547) (regTwo!33607 r!7292)))))

(declare-fun e!4060367 () Bool)

(assert (=> b!6719489 (= e!4060367 e!4060366)))

(declare-fun b!6719490 () Bool)

(declare-fun res!2749830 () Bool)

(declare-fun e!4060371 () Bool)

(assert (=> b!6719490 (=> res!2749830 e!4060371)))

(declare-fun call!606511 () Bool)

(assert (=> b!6719490 (= res!2749830 call!606511)))

(declare-fun e!4060368 () Bool)

(assert (=> b!6719490 (= e!4060368 e!4060371)))

(declare-fun b!6719491 () Bool)

(declare-fun e!4060369 () Bool)

(assert (=> b!6719491 (= e!4060369 call!606511)))

(declare-fun b!6719492 () Bool)

(assert (=> b!6719492 (= e!4060370 (matchRSpec!3648 (regTwo!33607 (regTwo!33607 r!7292)) s!2326))))

(declare-fun bm!606506 () Bool)

(assert (=> bm!606506 (= call!606511 (isEmpty!38137 s!2326))))

(declare-fun b!6719493 () Bool)

(assert (=> b!6719493 (= e!4060369 e!4060367)))

(declare-fun res!2749829 () Bool)

(assert (=> b!6719493 (= res!2749829 (not ((_ is EmptyLang!16547) (regTwo!33607 r!7292))))))

(assert (=> b!6719493 (=> (not res!2749829) (not e!4060367))))

(declare-fun b!6719494 () Bool)

(assert (=> b!6719494 (= e!4060372 e!4060368)))

(declare-fun c!1245858 () Bool)

(assert (=> b!6719494 (= c!1245858 ((_ is Star!16547) (regTwo!33607 r!7292)))))

(declare-fun call!606512 () Bool)

(assert (=> b!6719488 (= e!4060368 call!606512)))

(declare-fun d!2111785 () Bool)

(declare-fun c!1245857 () Bool)

(assert (=> d!2111785 (= c!1245857 ((_ is EmptyExpr!16547) (regTwo!33607 r!7292)))))

(assert (=> d!2111785 (= (matchRSpec!3648 (regTwo!33607 r!7292) s!2326) e!4060369)))

(assert (=> b!6719495 (= e!4060371 call!606512)))

(declare-fun bm!606507 () Bool)

(assert (=> bm!606507 (= call!606512 (Exists!3615 (ite c!1245858 lambda!376942 lambda!376943)))))

(assert (= (and d!2111785 c!1245857) b!6719491))

(assert (= (and d!2111785 (not c!1245857)) b!6719493))

(assert (= (and b!6719493 res!2749829) b!6719489))

(assert (= (and b!6719489 c!1245856) b!6719487))

(assert (= (and b!6719489 (not c!1245856)) b!6719486))

(assert (= (and b!6719486 c!1245855) b!6719485))

(assert (= (and b!6719486 (not c!1245855)) b!6719494))

(assert (= (and b!6719485 (not res!2749828)) b!6719492))

(assert (= (and b!6719494 c!1245858) b!6719490))

(assert (= (and b!6719494 (not c!1245858)) b!6719488))

(assert (= (and b!6719490 (not res!2749830)) b!6719495))

(assert (= (or b!6719495 b!6719488) bm!606507))

(assert (= (or b!6719491 b!6719490) bm!606506))

(declare-fun m!7481926 () Bool)

(assert (=> b!6719485 m!7481926))

(declare-fun m!7481928 () Bool)

(assert (=> b!6719492 m!7481928))

(assert (=> bm!606506 m!7480976))

(declare-fun m!7481930 () Bool)

(assert (=> bm!606507 m!7481930))

(assert (=> b!6718350 d!2111785))

(declare-fun b!6719496 () Bool)

(declare-fun res!2749832 () Bool)

(declare-fun e!4060373 () Bool)

(assert (=> b!6719496 (=> (not res!2749832) (not e!4060373))))

(declare-fun call!606513 () Bool)

(assert (=> b!6719496 (= res!2749832 (not call!606513))))

(declare-fun b!6719497 () Bool)

(declare-fun e!4060376 () Bool)

(declare-fun e!4060377 () Bool)

(assert (=> b!6719497 (= e!4060376 e!4060377)))

(declare-fun res!2749838 () Bool)

(assert (=> b!6719497 (=> (not res!2749838) (not e!4060377))))

(declare-fun lt!2436662 () Bool)

(assert (=> b!6719497 (= res!2749838 (not lt!2436662))))

(declare-fun b!6719498 () Bool)

(declare-fun e!4060374 () Bool)

(assert (=> b!6719498 (= e!4060374 (matchR!8730 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617)))) (tail!12607 (_1!36825 (get!22892 lt!2436617)))))))

(declare-fun d!2111787 () Bool)

(declare-fun e!4060378 () Bool)

(assert (=> d!2111787 e!4060378))

(declare-fun c!1245859 () Bool)

(assert (=> d!2111787 (= c!1245859 ((_ is EmptyExpr!16547) (reg!16876 r!7292)))))

(assert (=> d!2111787 (= lt!2436662 e!4060374)))

(declare-fun c!1245860 () Bool)

(assert (=> d!2111787 (= c!1245860 (isEmpty!38137 (_1!36825 (get!22892 lt!2436617))))))

(assert (=> d!2111787 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2111787 (= (matchR!8730 (reg!16876 r!7292) (_1!36825 (get!22892 lt!2436617))) lt!2436662)))

(declare-fun b!6719499 () Bool)

(declare-fun e!4060375 () Bool)

(assert (=> b!6719499 (= e!4060375 (not lt!2436662))))

(declare-fun b!6719500 () Bool)

(declare-fun e!4060379 () Bool)

(assert (=> b!6719500 (= e!4060379 (not (= (head!13522 (_1!36825 (get!22892 lt!2436617))) (c!1245533 (reg!16876 r!7292)))))))

(declare-fun b!6719501 () Bool)

(assert (=> b!6719501 (= e!4060378 (= lt!2436662 call!606513))))

(declare-fun bm!606508 () Bool)

(assert (=> bm!606508 (= call!606513 (isEmpty!38137 (_1!36825 (get!22892 lt!2436617))))))

(declare-fun b!6719502 () Bool)

(assert (=> b!6719502 (= e!4060374 (nullable!6534 (reg!16876 r!7292)))))

(declare-fun b!6719503 () Bool)

(assert (=> b!6719503 (= e!4060378 e!4060375)))

(declare-fun c!1245861 () Bool)

(assert (=> b!6719503 (= c!1245861 ((_ is EmptyLang!16547) (reg!16876 r!7292)))))

(declare-fun b!6719504 () Bool)

(assert (=> b!6719504 (= e!4060373 (= (head!13522 (_1!36825 (get!22892 lt!2436617))) (c!1245533 (reg!16876 r!7292))))))

(declare-fun b!6719505 () Bool)

(declare-fun res!2749835 () Bool)

(assert (=> b!6719505 (=> res!2749835 e!4060379)))

(assert (=> b!6719505 (= res!2749835 (not (isEmpty!38137 (tail!12607 (_1!36825 (get!22892 lt!2436617))))))))

(declare-fun b!6719506 () Bool)

(declare-fun res!2749833 () Bool)

(assert (=> b!6719506 (=> res!2749833 e!4060376)))

(assert (=> b!6719506 (= res!2749833 e!4060373)))

(declare-fun res!2749837 () Bool)

(assert (=> b!6719506 (=> (not res!2749837) (not e!4060373))))

(assert (=> b!6719506 (= res!2749837 lt!2436662)))

(declare-fun b!6719507 () Bool)

(declare-fun res!2749834 () Bool)

(assert (=> b!6719507 (=> res!2749834 e!4060376)))

(assert (=> b!6719507 (= res!2749834 (not ((_ is ElementMatch!16547) (reg!16876 r!7292))))))

(assert (=> b!6719507 (= e!4060375 e!4060376)))

(declare-fun b!6719508 () Bool)

(declare-fun res!2749831 () Bool)

(assert (=> b!6719508 (=> (not res!2749831) (not e!4060373))))

(assert (=> b!6719508 (= res!2749831 (isEmpty!38137 (tail!12607 (_1!36825 (get!22892 lt!2436617)))))))

(declare-fun b!6719509 () Bool)

(assert (=> b!6719509 (= e!4060377 e!4060379)))

(declare-fun res!2749836 () Bool)

(assert (=> b!6719509 (=> res!2749836 e!4060379)))

(assert (=> b!6719509 (= res!2749836 call!606513)))

(assert (= (and d!2111787 c!1245860) b!6719502))

(assert (= (and d!2111787 (not c!1245860)) b!6719498))

(assert (= (and d!2111787 c!1245859) b!6719501))

(assert (= (and d!2111787 (not c!1245859)) b!6719503))

(assert (= (and b!6719503 c!1245861) b!6719499))

(assert (= (and b!6719503 (not c!1245861)) b!6719507))

(assert (= (and b!6719507 (not res!2749834)) b!6719506))

(assert (= (and b!6719506 res!2749837) b!6719496))

(assert (= (and b!6719496 res!2749832) b!6719508))

(assert (= (and b!6719508 res!2749831) b!6719504))

(assert (= (and b!6719506 (not res!2749833)) b!6719497))

(assert (= (and b!6719497 res!2749838) b!6719509))

(assert (= (and b!6719509 (not res!2749836)) b!6719505))

(assert (= (and b!6719505 (not res!2749835)) b!6719500))

(assert (= (or b!6719501 b!6719496 b!6719509) bm!606508))

(declare-fun m!7481932 () Bool)

(assert (=> b!6719504 m!7481932))

(assert (=> b!6719500 m!7481932))

(declare-fun m!7481934 () Bool)

(assert (=> bm!606508 m!7481934))

(declare-fun m!7481936 () Bool)

(assert (=> b!6719505 m!7481936))

(assert (=> b!6719505 m!7481936))

(declare-fun m!7481938 () Bool)

(assert (=> b!6719505 m!7481938))

(assert (=> d!2111787 m!7481934))

(assert (=> d!2111787 m!7481234))

(assert (=> b!6719508 m!7481936))

(assert (=> b!6719508 m!7481936))

(assert (=> b!6719508 m!7481938))

(assert (=> b!6719498 m!7481932))

(assert (=> b!6719498 m!7481932))

(declare-fun m!7481940 () Bool)

(assert (=> b!6719498 m!7481940))

(assert (=> b!6719498 m!7481936))

(assert (=> b!6719498 m!7481940))

(assert (=> b!6719498 m!7481936))

(declare-fun m!7481942 () Bool)

(assert (=> b!6719498 m!7481942))

(assert (=> b!6719502 m!7481220))

(assert (=> b!6718663 d!2111787))

(assert (=> b!6718663 d!2111587))

(assert (=> b!6718464 d!2111625))

(declare-fun b!6719513 () Bool)

(declare-fun e!4060380 () Bool)

(declare-fun tp!1841522 () Bool)

(declare-fun tp!1841524 () Bool)

(assert (=> b!6719513 (= e!4060380 (and tp!1841522 tp!1841524))))

(declare-fun b!6719512 () Bool)

(declare-fun tp!1841523 () Bool)

(assert (=> b!6719512 (= e!4060380 tp!1841523)))

(declare-fun b!6719511 () Bool)

(declare-fun tp!1841526 () Bool)

(declare-fun tp!1841525 () Bool)

(assert (=> b!6719511 (= e!4060380 (and tp!1841526 tp!1841525))))

(assert (=> b!6718749 (= tp!1841332 e!4060380)))

(declare-fun b!6719510 () Bool)

(assert (=> b!6719510 (= e!4060380 tp_is_empty!42347)))

(assert (= (and b!6718749 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33607 r!7292)))) b!6719510))

(assert (= (and b!6718749 ((_ is Concat!25392) (regOne!33606 (regTwo!33607 r!7292)))) b!6719511))

(assert (= (and b!6718749 ((_ is Star!16547) (regOne!33606 (regTwo!33607 r!7292)))) b!6719512))

(assert (= (and b!6718749 ((_ is Union!16547) (regOne!33606 (regTwo!33607 r!7292)))) b!6719513))

(declare-fun b!6719517 () Bool)

(declare-fun e!4060381 () Bool)

(declare-fun tp!1841527 () Bool)

(declare-fun tp!1841529 () Bool)

(assert (=> b!6719517 (= e!4060381 (and tp!1841527 tp!1841529))))

(declare-fun b!6719516 () Bool)

(declare-fun tp!1841528 () Bool)

(assert (=> b!6719516 (= e!4060381 tp!1841528)))

(declare-fun b!6719515 () Bool)

(declare-fun tp!1841531 () Bool)

(declare-fun tp!1841530 () Bool)

(assert (=> b!6719515 (= e!4060381 (and tp!1841531 tp!1841530))))

(assert (=> b!6718749 (= tp!1841331 e!4060381)))

(declare-fun b!6719514 () Bool)

(assert (=> b!6719514 (= e!4060381 tp_is_empty!42347)))

(assert (= (and b!6718749 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33607 r!7292)))) b!6719514))

(assert (= (and b!6718749 ((_ is Concat!25392) (regTwo!33606 (regTwo!33607 r!7292)))) b!6719515))

(assert (= (and b!6718749 ((_ is Star!16547) (regTwo!33606 (regTwo!33607 r!7292)))) b!6719516))

(assert (= (and b!6718749 ((_ is Union!16547) (regTwo!33606 (regTwo!33607 r!7292)))) b!6719517))

(declare-fun b!6719518 () Bool)

(declare-fun e!4060382 () Bool)

(declare-fun tp!1841532 () Bool)

(declare-fun tp!1841533 () Bool)

(assert (=> b!6719518 (= e!4060382 (and tp!1841532 tp!1841533))))

(assert (=> b!6718772 (= tp!1841353 e!4060382)))

(assert (= (and b!6718772 ((_ is Cons!65816) (exprs!6431 (h!72265 (t!379618 zl!343))))) b!6719518))

(declare-fun b!6719522 () Bool)

(declare-fun e!4060383 () Bool)

(declare-fun tp!1841534 () Bool)

(declare-fun tp!1841536 () Bool)

(assert (=> b!6719522 (= e!4060383 (and tp!1841534 tp!1841536))))

(declare-fun b!6719521 () Bool)

(declare-fun tp!1841535 () Bool)

(assert (=> b!6719521 (= e!4060383 tp!1841535)))

(declare-fun b!6719520 () Bool)

(declare-fun tp!1841538 () Bool)

(declare-fun tp!1841537 () Bool)

(assert (=> b!6719520 (= e!4060383 (and tp!1841538 tp!1841537))))

(assert (=> b!6718750 (= tp!1841329 e!4060383)))

(declare-fun b!6719519 () Bool)

(assert (=> b!6719519 (= e!4060383 tp_is_empty!42347)))

(assert (= (and b!6718750 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33607 r!7292)))) b!6719519))

(assert (= (and b!6718750 ((_ is Concat!25392) (reg!16876 (regTwo!33607 r!7292)))) b!6719520))

(assert (= (and b!6718750 ((_ is Star!16547) (reg!16876 (regTwo!33607 r!7292)))) b!6719521))

(assert (= (and b!6718750 ((_ is Union!16547) (reg!16876 (regTwo!33607 r!7292)))) b!6719522))

(declare-fun b!6719526 () Bool)

(declare-fun e!4060384 () Bool)

(declare-fun tp!1841539 () Bool)

(declare-fun tp!1841541 () Bool)

(assert (=> b!6719526 (= e!4060384 (and tp!1841539 tp!1841541))))

(declare-fun b!6719525 () Bool)

(declare-fun tp!1841540 () Bool)

(assert (=> b!6719525 (= e!4060384 tp!1841540)))

(declare-fun b!6719524 () Bool)

(declare-fun tp!1841543 () Bool)

(declare-fun tp!1841542 () Bool)

(assert (=> b!6719524 (= e!4060384 (and tp!1841543 tp!1841542))))

(assert (=> b!6718751 (= tp!1841328 e!4060384)))

(declare-fun b!6719523 () Bool)

(assert (=> b!6719523 (= e!4060384 tp_is_empty!42347)))

(assert (= (and b!6718751 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33607 r!7292)))) b!6719523))

(assert (= (and b!6718751 ((_ is Concat!25392) (regOne!33607 (regTwo!33607 r!7292)))) b!6719524))

(assert (= (and b!6718751 ((_ is Star!16547) (regOne!33607 (regTwo!33607 r!7292)))) b!6719525))

(assert (= (and b!6718751 ((_ is Union!16547) (regOne!33607 (regTwo!33607 r!7292)))) b!6719526))

(declare-fun b!6719530 () Bool)

(declare-fun e!4060385 () Bool)

(declare-fun tp!1841544 () Bool)

(declare-fun tp!1841546 () Bool)

(assert (=> b!6719530 (= e!4060385 (and tp!1841544 tp!1841546))))

(declare-fun b!6719529 () Bool)

(declare-fun tp!1841545 () Bool)

(assert (=> b!6719529 (= e!4060385 tp!1841545)))

(declare-fun b!6719528 () Bool)

(declare-fun tp!1841548 () Bool)

(declare-fun tp!1841547 () Bool)

(assert (=> b!6719528 (= e!4060385 (and tp!1841548 tp!1841547))))

(assert (=> b!6718751 (= tp!1841330 e!4060385)))

(declare-fun b!6719527 () Bool)

(assert (=> b!6719527 (= e!4060385 tp_is_empty!42347)))

(assert (= (and b!6718751 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33607 r!7292)))) b!6719527))

(assert (= (and b!6718751 ((_ is Concat!25392) (regTwo!33607 (regTwo!33607 r!7292)))) b!6719528))

(assert (= (and b!6718751 ((_ is Star!16547) (regTwo!33607 (regTwo!33607 r!7292)))) b!6719529))

(assert (= (and b!6718751 ((_ is Union!16547) (regTwo!33607 (regTwo!33607 r!7292)))) b!6719530))

(declare-fun b!6719531 () Bool)

(declare-fun e!4060386 () Bool)

(declare-fun tp!1841549 () Bool)

(assert (=> b!6719531 (= e!4060386 (and tp_is_empty!42347 tp!1841549))))

(assert (=> b!6718728 (= tp!1841306 e!4060386)))

(assert (= (and b!6718728 ((_ is Cons!65818) (t!379619 (t!379619 s!2326)))) b!6719531))

(declare-fun b!6719535 () Bool)

(declare-fun e!4060387 () Bool)

(declare-fun tp!1841550 () Bool)

(declare-fun tp!1841552 () Bool)

(assert (=> b!6719535 (= e!4060387 (and tp!1841550 tp!1841552))))

(declare-fun b!6719534 () Bool)

(declare-fun tp!1841551 () Bool)

(assert (=> b!6719534 (= e!4060387 tp!1841551)))

(declare-fun b!6719533 () Bool)

(declare-fun tp!1841554 () Bool)

(declare-fun tp!1841553 () Bool)

(assert (=> b!6719533 (= e!4060387 (and tp!1841554 tp!1841553))))

(assert (=> b!6718777 (= tp!1841360 e!4060387)))

(declare-fun b!6719532 () Bool)

(assert (=> b!6719532 (= e!4060387 tp_is_empty!42347)))

(assert (= (and b!6718777 ((_ is ElementMatch!16547) (h!72264 (exprs!6431 setElem!45799)))) b!6719532))

(assert (= (and b!6718777 ((_ is Concat!25392) (h!72264 (exprs!6431 setElem!45799)))) b!6719533))

(assert (= (and b!6718777 ((_ is Star!16547) (h!72264 (exprs!6431 setElem!45799)))) b!6719534))

(assert (= (and b!6718777 ((_ is Union!16547) (h!72264 (exprs!6431 setElem!45799)))) b!6719535))

(declare-fun b!6719536 () Bool)

(declare-fun e!4060388 () Bool)

(declare-fun tp!1841555 () Bool)

(declare-fun tp!1841556 () Bool)

(assert (=> b!6719536 (= e!4060388 (and tp!1841555 tp!1841556))))

(assert (=> b!6718777 (= tp!1841361 e!4060388)))

(assert (= (and b!6718777 ((_ is Cons!65816) (t!379617 (exprs!6431 setElem!45799)))) b!6719536))

(declare-fun b!6719540 () Bool)

(declare-fun e!4060389 () Bool)

(declare-fun tp!1841557 () Bool)

(declare-fun tp!1841559 () Bool)

(assert (=> b!6719540 (= e!4060389 (and tp!1841557 tp!1841559))))

(declare-fun b!6719539 () Bool)

(declare-fun tp!1841558 () Bool)

(assert (=> b!6719539 (= e!4060389 tp!1841558)))

(declare-fun b!6719538 () Bool)

(declare-fun tp!1841561 () Bool)

(declare-fun tp!1841560 () Bool)

(assert (=> b!6719538 (= e!4060389 (and tp!1841561 tp!1841560))))

(assert (=> b!6718763 (= tp!1841345 e!4060389)))

(declare-fun b!6719537 () Bool)

(assert (=> b!6719537 (= e!4060389 tp_is_empty!42347)))

(assert (= (and b!6718763 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33606 r!7292)))) b!6719537))

(assert (= (and b!6718763 ((_ is Concat!25392) (reg!16876 (regTwo!33606 r!7292)))) b!6719538))

(assert (= (and b!6718763 ((_ is Star!16547) (reg!16876 (regTwo!33606 r!7292)))) b!6719539))

(assert (= (and b!6718763 ((_ is Union!16547) (reg!16876 (regTwo!33606 r!7292)))) b!6719540))

(declare-fun b!6719544 () Bool)

(declare-fun e!4060390 () Bool)

(declare-fun tp!1841562 () Bool)

(declare-fun tp!1841564 () Bool)

(assert (=> b!6719544 (= e!4060390 (and tp!1841562 tp!1841564))))

(declare-fun b!6719543 () Bool)

(declare-fun tp!1841563 () Bool)

(assert (=> b!6719543 (= e!4060390 tp!1841563)))

(declare-fun b!6719542 () Bool)

(declare-fun tp!1841566 () Bool)

(declare-fun tp!1841565 () Bool)

(assert (=> b!6719542 (= e!4060390 (and tp!1841566 tp!1841565))))

(assert (=> b!6718762 (= tp!1841348 e!4060390)))

(declare-fun b!6719541 () Bool)

(assert (=> b!6719541 (= e!4060390 tp_is_empty!42347)))

(assert (= (and b!6718762 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33606 r!7292)))) b!6719541))

(assert (= (and b!6718762 ((_ is Concat!25392) (regOne!33606 (regTwo!33606 r!7292)))) b!6719542))

(assert (= (and b!6718762 ((_ is Star!16547) (regOne!33606 (regTwo!33606 r!7292)))) b!6719543))

(assert (= (and b!6718762 ((_ is Union!16547) (regOne!33606 (regTwo!33606 r!7292)))) b!6719544))

(declare-fun b!6719548 () Bool)

(declare-fun e!4060391 () Bool)

(declare-fun tp!1841567 () Bool)

(declare-fun tp!1841569 () Bool)

(assert (=> b!6719548 (= e!4060391 (and tp!1841567 tp!1841569))))

(declare-fun b!6719547 () Bool)

(declare-fun tp!1841568 () Bool)

(assert (=> b!6719547 (= e!4060391 tp!1841568)))

(declare-fun b!6719546 () Bool)

(declare-fun tp!1841571 () Bool)

(declare-fun tp!1841570 () Bool)

(assert (=> b!6719546 (= e!4060391 (and tp!1841571 tp!1841570))))

(assert (=> b!6718762 (= tp!1841347 e!4060391)))

(declare-fun b!6719545 () Bool)

(assert (=> b!6719545 (= e!4060391 tp_is_empty!42347)))

(assert (= (and b!6718762 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33606 r!7292)))) b!6719545))

(assert (= (and b!6718762 ((_ is Concat!25392) (regTwo!33606 (regTwo!33606 r!7292)))) b!6719546))

(assert (= (and b!6718762 ((_ is Star!16547) (regTwo!33606 (regTwo!33606 r!7292)))) b!6719547))

(assert (= (and b!6718762 ((_ is Union!16547) (regTwo!33606 (regTwo!33606 r!7292)))) b!6719548))

(declare-fun condSetEmpty!45807 () Bool)

(assert (=> setNonEmpty!45805 (= condSetEmpty!45807 (= setRest!45805 ((as const (Array Context!11862 Bool)) false)))))

(declare-fun setRes!45807 () Bool)

(assert (=> setNonEmpty!45805 (= tp!1841312 setRes!45807)))

(declare-fun setIsEmpty!45807 () Bool)

(assert (=> setIsEmpty!45807 setRes!45807))

(declare-fun tp!1841573 () Bool)

(declare-fun setElem!45807 () Context!11862)

(declare-fun setNonEmpty!45807 () Bool)

(declare-fun e!4060392 () Bool)

(assert (=> setNonEmpty!45807 (= setRes!45807 (and tp!1841573 (inv!84614 setElem!45807) e!4060392))))

(declare-fun setRest!45807 () (InoxSet Context!11862))

(assert (=> setNonEmpty!45807 (= setRest!45805 ((_ map or) (store ((as const (Array Context!11862 Bool)) false) setElem!45807 true) setRest!45807))))

(declare-fun b!6719549 () Bool)

(declare-fun tp!1841572 () Bool)

(assert (=> b!6719549 (= e!4060392 tp!1841572)))

(assert (= (and setNonEmpty!45805 condSetEmpty!45807) setIsEmpty!45807))

(assert (= (and setNonEmpty!45805 (not condSetEmpty!45807)) setNonEmpty!45807))

(assert (= setNonEmpty!45807 b!6719549))

(declare-fun m!7481944 () Bool)

(assert (=> setNonEmpty!45807 m!7481944))

(declare-fun b!6719553 () Bool)

(declare-fun e!4060393 () Bool)

(declare-fun tp!1841574 () Bool)

(declare-fun tp!1841576 () Bool)

(assert (=> b!6719553 (= e!4060393 (and tp!1841574 tp!1841576))))

(declare-fun b!6719552 () Bool)

(declare-fun tp!1841575 () Bool)

(assert (=> b!6719552 (= e!4060393 tp!1841575)))

(declare-fun b!6719551 () Bool)

(declare-fun tp!1841578 () Bool)

(declare-fun tp!1841577 () Bool)

(assert (=> b!6719551 (= e!4060393 (and tp!1841578 tp!1841577))))

(assert (=> b!6718764 (= tp!1841344 e!4060393)))

(declare-fun b!6719550 () Bool)

(assert (=> b!6719550 (= e!4060393 tp_is_empty!42347)))

(assert (= (and b!6718764 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33606 r!7292)))) b!6719550))

(assert (= (and b!6718764 ((_ is Concat!25392) (regOne!33607 (regTwo!33606 r!7292)))) b!6719551))

(assert (= (and b!6718764 ((_ is Star!16547) (regOne!33607 (regTwo!33606 r!7292)))) b!6719552))

(assert (= (and b!6718764 ((_ is Union!16547) (regOne!33607 (regTwo!33606 r!7292)))) b!6719553))

(declare-fun b!6719557 () Bool)

(declare-fun e!4060394 () Bool)

(declare-fun tp!1841579 () Bool)

(declare-fun tp!1841581 () Bool)

(assert (=> b!6719557 (= e!4060394 (and tp!1841579 tp!1841581))))

(declare-fun b!6719556 () Bool)

(declare-fun tp!1841580 () Bool)

(assert (=> b!6719556 (= e!4060394 tp!1841580)))

(declare-fun b!6719555 () Bool)

(declare-fun tp!1841583 () Bool)

(declare-fun tp!1841582 () Bool)

(assert (=> b!6719555 (= e!4060394 (and tp!1841583 tp!1841582))))

(assert (=> b!6718764 (= tp!1841346 e!4060394)))

(declare-fun b!6719554 () Bool)

(assert (=> b!6719554 (= e!4060394 tp_is_empty!42347)))

(assert (= (and b!6718764 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33606 r!7292)))) b!6719554))

(assert (= (and b!6718764 ((_ is Concat!25392) (regTwo!33607 (regTwo!33606 r!7292)))) b!6719555))

(assert (= (and b!6718764 ((_ is Star!16547) (regTwo!33607 (regTwo!33606 r!7292)))) b!6719556))

(assert (= (and b!6718764 ((_ is Union!16547) (regTwo!33607 (regTwo!33606 r!7292)))) b!6719557))

(declare-fun b!6719558 () Bool)

(declare-fun e!4060395 () Bool)

(declare-fun tp!1841584 () Bool)

(declare-fun tp!1841585 () Bool)

(assert (=> b!6719558 (= e!4060395 (and tp!1841584 tp!1841585))))

(assert (=> b!6718733 (= tp!1841311 e!4060395)))

(assert (= (and b!6718733 ((_ is Cons!65816) (exprs!6431 setElem!45805))) b!6719558))

(declare-fun b!6719562 () Bool)

(declare-fun e!4060396 () Bool)

(declare-fun tp!1841586 () Bool)

(declare-fun tp!1841588 () Bool)

(assert (=> b!6719562 (= e!4060396 (and tp!1841586 tp!1841588))))

(declare-fun b!6719561 () Bool)

(declare-fun tp!1841587 () Bool)

(assert (=> b!6719561 (= e!4060396 tp!1841587)))

(declare-fun b!6719560 () Bool)

(declare-fun tp!1841590 () Bool)

(declare-fun tp!1841589 () Bool)

(assert (=> b!6719560 (= e!4060396 (and tp!1841590 tp!1841589))))

(assert (=> b!6718756 (= tp!1841337 e!4060396)))

(declare-fun b!6719559 () Bool)

(assert (=> b!6719559 (= e!4060396 tp_is_empty!42347)))

(assert (= (and b!6718756 ((_ is ElementMatch!16547) (h!72264 (exprs!6431 (h!72265 zl!343))))) b!6719559))

(assert (= (and b!6718756 ((_ is Concat!25392) (h!72264 (exprs!6431 (h!72265 zl!343))))) b!6719560))

(assert (= (and b!6718756 ((_ is Star!16547) (h!72264 (exprs!6431 (h!72265 zl!343))))) b!6719561))

(assert (= (and b!6718756 ((_ is Union!16547) (h!72264 (exprs!6431 (h!72265 zl!343))))) b!6719562))

(declare-fun b!6719563 () Bool)

(declare-fun e!4060397 () Bool)

(declare-fun tp!1841591 () Bool)

(declare-fun tp!1841592 () Bool)

(assert (=> b!6719563 (= e!4060397 (and tp!1841591 tp!1841592))))

(assert (=> b!6718756 (= tp!1841338 e!4060397)))

(assert (= (and b!6718756 ((_ is Cons!65816) (t!379617 (exprs!6431 (h!72265 zl!343))))) b!6719563))

(declare-fun b!6719565 () Bool)

(declare-fun e!4060399 () Bool)

(declare-fun tp!1841593 () Bool)

(assert (=> b!6719565 (= e!4060399 tp!1841593)))

(declare-fun e!4060398 () Bool)

(declare-fun tp!1841594 () Bool)

(declare-fun b!6719564 () Bool)

(assert (=> b!6719564 (= e!4060398 (and (inv!84614 (h!72265 (t!379618 (t!379618 zl!343)))) e!4060399 tp!1841594))))

(assert (=> b!6718771 (= tp!1841354 e!4060398)))

(assert (= b!6719564 b!6719565))

(assert (= (and b!6718771 ((_ is Cons!65817) (t!379618 (t!379618 zl!343)))) b!6719564))

(declare-fun m!7481946 () Bool)

(assert (=> b!6719564 m!7481946))

(declare-fun b!6719569 () Bool)

(declare-fun e!4060400 () Bool)

(declare-fun tp!1841595 () Bool)

(declare-fun tp!1841597 () Bool)

(assert (=> b!6719569 (= e!4060400 (and tp!1841595 tp!1841597))))

(declare-fun b!6719568 () Bool)

(declare-fun tp!1841596 () Bool)

(assert (=> b!6719568 (= e!4060400 tp!1841596)))

(declare-fun b!6719567 () Bool)

(declare-fun tp!1841599 () Bool)

(declare-fun tp!1841598 () Bool)

(assert (=> b!6719567 (= e!4060400 (and tp!1841599 tp!1841598))))

(assert (=> b!6718775 (= tp!1841356 e!4060400)))

(declare-fun b!6719566 () Bool)

(assert (=> b!6719566 (= e!4060400 tp_is_empty!42347)))

(assert (= (and b!6718775 ((_ is ElementMatch!16547) (reg!16876 (reg!16876 r!7292)))) b!6719566))

(assert (= (and b!6718775 ((_ is Concat!25392) (reg!16876 (reg!16876 r!7292)))) b!6719567))

(assert (= (and b!6718775 ((_ is Star!16547) (reg!16876 (reg!16876 r!7292)))) b!6719568))

(assert (= (and b!6718775 ((_ is Union!16547) (reg!16876 (reg!16876 r!7292)))) b!6719569))

(declare-fun b!6719573 () Bool)

(declare-fun e!4060401 () Bool)

(declare-fun tp!1841600 () Bool)

(declare-fun tp!1841602 () Bool)

(assert (=> b!6719573 (= e!4060401 (and tp!1841600 tp!1841602))))

(declare-fun b!6719572 () Bool)

(declare-fun tp!1841601 () Bool)

(assert (=> b!6719572 (= e!4060401 tp!1841601)))

(declare-fun b!6719571 () Bool)

(declare-fun tp!1841604 () Bool)

(declare-fun tp!1841603 () Bool)

(assert (=> b!6719571 (= e!4060401 (and tp!1841604 tp!1841603))))

(assert (=> b!6718774 (= tp!1841359 e!4060401)))

(declare-fun b!6719570 () Bool)

(assert (=> b!6719570 (= e!4060401 tp_is_empty!42347)))

(assert (= (and b!6718774 ((_ is ElementMatch!16547) (regOne!33606 (reg!16876 r!7292)))) b!6719570))

(assert (= (and b!6718774 ((_ is Concat!25392) (regOne!33606 (reg!16876 r!7292)))) b!6719571))

(assert (= (and b!6718774 ((_ is Star!16547) (regOne!33606 (reg!16876 r!7292)))) b!6719572))

(assert (= (and b!6718774 ((_ is Union!16547) (regOne!33606 (reg!16876 r!7292)))) b!6719573))

(declare-fun b!6719577 () Bool)

(declare-fun e!4060402 () Bool)

(declare-fun tp!1841605 () Bool)

(declare-fun tp!1841607 () Bool)

(assert (=> b!6719577 (= e!4060402 (and tp!1841605 tp!1841607))))

(declare-fun b!6719576 () Bool)

(declare-fun tp!1841606 () Bool)

(assert (=> b!6719576 (= e!4060402 tp!1841606)))

(declare-fun b!6719575 () Bool)

(declare-fun tp!1841609 () Bool)

(declare-fun tp!1841608 () Bool)

(assert (=> b!6719575 (= e!4060402 (and tp!1841609 tp!1841608))))

(assert (=> b!6718774 (= tp!1841358 e!4060402)))

(declare-fun b!6719574 () Bool)

(assert (=> b!6719574 (= e!4060402 tp_is_empty!42347)))

(assert (= (and b!6718774 ((_ is ElementMatch!16547) (regTwo!33606 (reg!16876 r!7292)))) b!6719574))

(assert (= (and b!6718774 ((_ is Concat!25392) (regTwo!33606 (reg!16876 r!7292)))) b!6719575))

(assert (= (and b!6718774 ((_ is Star!16547) (regTwo!33606 (reg!16876 r!7292)))) b!6719576))

(assert (= (and b!6718774 ((_ is Union!16547) (regTwo!33606 (reg!16876 r!7292)))) b!6719577))

(declare-fun b!6719581 () Bool)

(declare-fun e!4060403 () Bool)

(declare-fun tp!1841610 () Bool)

(declare-fun tp!1841612 () Bool)

(assert (=> b!6719581 (= e!4060403 (and tp!1841610 tp!1841612))))

(declare-fun b!6719580 () Bool)

(declare-fun tp!1841611 () Bool)

(assert (=> b!6719580 (= e!4060403 tp!1841611)))

(declare-fun b!6719579 () Bool)

(declare-fun tp!1841614 () Bool)

(declare-fun tp!1841613 () Bool)

(assert (=> b!6719579 (= e!4060403 (and tp!1841614 tp!1841613))))

(assert (=> b!6718776 (= tp!1841355 e!4060403)))

(declare-fun b!6719578 () Bool)

(assert (=> b!6719578 (= e!4060403 tp_is_empty!42347)))

(assert (= (and b!6718776 ((_ is ElementMatch!16547) (regOne!33607 (reg!16876 r!7292)))) b!6719578))

(assert (= (and b!6718776 ((_ is Concat!25392) (regOne!33607 (reg!16876 r!7292)))) b!6719579))

(assert (= (and b!6718776 ((_ is Star!16547) (regOne!33607 (reg!16876 r!7292)))) b!6719580))

(assert (= (and b!6718776 ((_ is Union!16547) (regOne!33607 (reg!16876 r!7292)))) b!6719581))

(declare-fun b!6719585 () Bool)

(declare-fun e!4060404 () Bool)

(declare-fun tp!1841615 () Bool)

(declare-fun tp!1841617 () Bool)

(assert (=> b!6719585 (= e!4060404 (and tp!1841615 tp!1841617))))

(declare-fun b!6719584 () Bool)

(declare-fun tp!1841616 () Bool)

(assert (=> b!6719584 (= e!4060404 tp!1841616)))

(declare-fun b!6719583 () Bool)

(declare-fun tp!1841619 () Bool)

(declare-fun tp!1841618 () Bool)

(assert (=> b!6719583 (= e!4060404 (and tp!1841619 tp!1841618))))

(assert (=> b!6718776 (= tp!1841357 e!4060404)))

(declare-fun b!6719582 () Bool)

(assert (=> b!6719582 (= e!4060404 tp_is_empty!42347)))

(assert (= (and b!6718776 ((_ is ElementMatch!16547) (regTwo!33607 (reg!16876 r!7292)))) b!6719582))

(assert (= (and b!6718776 ((_ is Concat!25392) (regTwo!33607 (reg!16876 r!7292)))) b!6719583))

(assert (= (and b!6718776 ((_ is Star!16547) (regTwo!33607 (reg!16876 r!7292)))) b!6719584))

(assert (= (and b!6718776 ((_ is Union!16547) (regTwo!33607 (reg!16876 r!7292)))) b!6719585))

(declare-fun b!6719589 () Bool)

(declare-fun e!4060405 () Bool)

(declare-fun tp!1841620 () Bool)

(declare-fun tp!1841622 () Bool)

(assert (=> b!6719589 (= e!4060405 (and tp!1841620 tp!1841622))))

(declare-fun b!6719588 () Bool)

(declare-fun tp!1841621 () Bool)

(assert (=> b!6719588 (= e!4060405 tp!1841621)))

(declare-fun b!6719587 () Bool)

(declare-fun tp!1841624 () Bool)

(declare-fun tp!1841623 () Bool)

(assert (=> b!6719587 (= e!4060405 (and tp!1841624 tp!1841623))))

(assert (=> b!6718746 (= tp!1841324 e!4060405)))

(declare-fun b!6719586 () Bool)

(assert (=> b!6719586 (= e!4060405 tp_is_empty!42347)))

(assert (= (and b!6718746 ((_ is ElementMatch!16547) (reg!16876 (regOne!33607 r!7292)))) b!6719586))

(assert (= (and b!6718746 ((_ is Concat!25392) (reg!16876 (regOne!33607 r!7292)))) b!6719587))

(assert (= (and b!6718746 ((_ is Star!16547) (reg!16876 (regOne!33607 r!7292)))) b!6719588))

(assert (= (and b!6718746 ((_ is Union!16547) (reg!16876 (regOne!33607 r!7292)))) b!6719589))

(declare-fun b!6719593 () Bool)

(declare-fun e!4060406 () Bool)

(declare-fun tp!1841625 () Bool)

(declare-fun tp!1841627 () Bool)

(assert (=> b!6719593 (= e!4060406 (and tp!1841625 tp!1841627))))

(declare-fun b!6719592 () Bool)

(declare-fun tp!1841626 () Bool)

(assert (=> b!6719592 (= e!4060406 tp!1841626)))

(declare-fun b!6719591 () Bool)

(declare-fun tp!1841629 () Bool)

(declare-fun tp!1841628 () Bool)

(assert (=> b!6719591 (= e!4060406 (and tp!1841629 tp!1841628))))

(assert (=> b!6718745 (= tp!1841327 e!4060406)))

(declare-fun b!6719590 () Bool)

(assert (=> b!6719590 (= e!4060406 tp_is_empty!42347)))

(assert (= (and b!6718745 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33607 r!7292)))) b!6719590))

(assert (= (and b!6718745 ((_ is Concat!25392) (regOne!33606 (regOne!33607 r!7292)))) b!6719591))

(assert (= (and b!6718745 ((_ is Star!16547) (regOne!33606 (regOne!33607 r!7292)))) b!6719592))

(assert (= (and b!6718745 ((_ is Union!16547) (regOne!33606 (regOne!33607 r!7292)))) b!6719593))

(declare-fun b!6719597 () Bool)

(declare-fun e!4060407 () Bool)

(declare-fun tp!1841630 () Bool)

(declare-fun tp!1841632 () Bool)

(assert (=> b!6719597 (= e!4060407 (and tp!1841630 tp!1841632))))

(declare-fun b!6719596 () Bool)

(declare-fun tp!1841631 () Bool)

(assert (=> b!6719596 (= e!4060407 tp!1841631)))

(declare-fun b!6719595 () Bool)

(declare-fun tp!1841634 () Bool)

(declare-fun tp!1841633 () Bool)

(assert (=> b!6719595 (= e!4060407 (and tp!1841634 tp!1841633))))

(assert (=> b!6718745 (= tp!1841326 e!4060407)))

(declare-fun b!6719594 () Bool)

(assert (=> b!6719594 (= e!4060407 tp_is_empty!42347)))

(assert (= (and b!6718745 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33607 r!7292)))) b!6719594))

(assert (= (and b!6718745 ((_ is Concat!25392) (regTwo!33606 (regOne!33607 r!7292)))) b!6719595))

(assert (= (and b!6718745 ((_ is Star!16547) (regTwo!33606 (regOne!33607 r!7292)))) b!6719596))

(assert (= (and b!6718745 ((_ is Union!16547) (regTwo!33606 (regOne!33607 r!7292)))) b!6719597))

(declare-fun b!6719601 () Bool)

(declare-fun e!4060408 () Bool)

(declare-fun tp!1841635 () Bool)

(declare-fun tp!1841637 () Bool)

(assert (=> b!6719601 (= e!4060408 (and tp!1841635 tp!1841637))))

(declare-fun b!6719600 () Bool)

(declare-fun tp!1841636 () Bool)

(assert (=> b!6719600 (= e!4060408 tp!1841636)))

(declare-fun b!6719599 () Bool)

(declare-fun tp!1841639 () Bool)

(declare-fun tp!1841638 () Bool)

(assert (=> b!6719599 (= e!4060408 (and tp!1841639 tp!1841638))))

(assert (=> b!6718747 (= tp!1841323 e!4060408)))

(declare-fun b!6719598 () Bool)

(assert (=> b!6719598 (= e!4060408 tp_is_empty!42347)))

(assert (= (and b!6718747 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33607 r!7292)))) b!6719598))

(assert (= (and b!6718747 ((_ is Concat!25392) (regOne!33607 (regOne!33607 r!7292)))) b!6719599))

(assert (= (and b!6718747 ((_ is Star!16547) (regOne!33607 (regOne!33607 r!7292)))) b!6719600))

(assert (= (and b!6718747 ((_ is Union!16547) (regOne!33607 (regOne!33607 r!7292)))) b!6719601))

(declare-fun b!6719605 () Bool)

(declare-fun e!4060409 () Bool)

(declare-fun tp!1841640 () Bool)

(declare-fun tp!1841642 () Bool)

(assert (=> b!6719605 (= e!4060409 (and tp!1841640 tp!1841642))))

(declare-fun b!6719604 () Bool)

(declare-fun tp!1841641 () Bool)

(assert (=> b!6719604 (= e!4060409 tp!1841641)))

(declare-fun b!6719603 () Bool)

(declare-fun tp!1841644 () Bool)

(declare-fun tp!1841643 () Bool)

(assert (=> b!6719603 (= e!4060409 (and tp!1841644 tp!1841643))))

(assert (=> b!6718747 (= tp!1841325 e!4060409)))

(declare-fun b!6719602 () Bool)

(assert (=> b!6719602 (= e!4060409 tp_is_empty!42347)))

(assert (= (and b!6718747 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33607 r!7292)))) b!6719602))

(assert (= (and b!6718747 ((_ is Concat!25392) (regTwo!33607 (regOne!33607 r!7292)))) b!6719603))

(assert (= (and b!6718747 ((_ is Star!16547) (regTwo!33607 (regOne!33607 r!7292)))) b!6719604))

(assert (= (and b!6718747 ((_ is Union!16547) (regTwo!33607 (regOne!33607 r!7292)))) b!6719605))

(declare-fun b!6719609 () Bool)

(declare-fun e!4060410 () Bool)

(declare-fun tp!1841645 () Bool)

(declare-fun tp!1841647 () Bool)

(assert (=> b!6719609 (= e!4060410 (and tp!1841645 tp!1841647))))

(declare-fun b!6719608 () Bool)

(declare-fun tp!1841646 () Bool)

(assert (=> b!6719608 (= e!4060410 tp!1841646)))

(declare-fun b!6719607 () Bool)

(declare-fun tp!1841649 () Bool)

(declare-fun tp!1841648 () Bool)

(assert (=> b!6719607 (= e!4060410 (and tp!1841649 tp!1841648))))

(assert (=> b!6718758 (= tp!1841343 e!4060410)))

(declare-fun b!6719606 () Bool)

(assert (=> b!6719606 (= e!4060410 tp_is_empty!42347)))

(assert (= (and b!6718758 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33606 r!7292)))) b!6719606))

(assert (= (and b!6718758 ((_ is Concat!25392) (regOne!33606 (regOne!33606 r!7292)))) b!6719607))

(assert (= (and b!6718758 ((_ is Star!16547) (regOne!33606 (regOne!33606 r!7292)))) b!6719608))

(assert (= (and b!6718758 ((_ is Union!16547) (regOne!33606 (regOne!33606 r!7292)))) b!6719609))

(declare-fun b!6719613 () Bool)

(declare-fun e!4060411 () Bool)

(declare-fun tp!1841650 () Bool)

(declare-fun tp!1841652 () Bool)

(assert (=> b!6719613 (= e!4060411 (and tp!1841650 tp!1841652))))

(declare-fun b!6719612 () Bool)

(declare-fun tp!1841651 () Bool)

(assert (=> b!6719612 (= e!4060411 tp!1841651)))

(declare-fun b!6719611 () Bool)

(declare-fun tp!1841654 () Bool)

(declare-fun tp!1841653 () Bool)

(assert (=> b!6719611 (= e!4060411 (and tp!1841654 tp!1841653))))

(assert (=> b!6718758 (= tp!1841342 e!4060411)))

(declare-fun b!6719610 () Bool)

(assert (=> b!6719610 (= e!4060411 tp_is_empty!42347)))

(assert (= (and b!6718758 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33606 r!7292)))) b!6719610))

(assert (= (and b!6718758 ((_ is Concat!25392) (regTwo!33606 (regOne!33606 r!7292)))) b!6719611))

(assert (= (and b!6718758 ((_ is Star!16547) (regTwo!33606 (regOne!33606 r!7292)))) b!6719612))

(assert (= (and b!6718758 ((_ is Union!16547) (regTwo!33606 (regOne!33606 r!7292)))) b!6719613))

(declare-fun b!6719617 () Bool)

(declare-fun e!4060412 () Bool)

(declare-fun tp!1841655 () Bool)

(declare-fun tp!1841657 () Bool)

(assert (=> b!6719617 (= e!4060412 (and tp!1841655 tp!1841657))))

(declare-fun b!6719616 () Bool)

(declare-fun tp!1841656 () Bool)

(assert (=> b!6719616 (= e!4060412 tp!1841656)))

(declare-fun b!6719615 () Bool)

(declare-fun tp!1841659 () Bool)

(declare-fun tp!1841658 () Bool)

(assert (=> b!6719615 (= e!4060412 (and tp!1841659 tp!1841658))))

(assert (=> b!6718759 (= tp!1841340 e!4060412)))

(declare-fun b!6719614 () Bool)

(assert (=> b!6719614 (= e!4060412 tp_is_empty!42347)))

(assert (= (and b!6718759 ((_ is ElementMatch!16547) (reg!16876 (regOne!33606 r!7292)))) b!6719614))

(assert (= (and b!6718759 ((_ is Concat!25392) (reg!16876 (regOne!33606 r!7292)))) b!6719615))

(assert (= (and b!6718759 ((_ is Star!16547) (reg!16876 (regOne!33606 r!7292)))) b!6719616))

(assert (= (and b!6718759 ((_ is Union!16547) (reg!16876 (regOne!33606 r!7292)))) b!6719617))

(declare-fun b!6719621 () Bool)

(declare-fun e!4060413 () Bool)

(declare-fun tp!1841660 () Bool)

(declare-fun tp!1841662 () Bool)

(assert (=> b!6719621 (= e!4060413 (and tp!1841660 tp!1841662))))

(declare-fun b!6719620 () Bool)

(declare-fun tp!1841661 () Bool)

(assert (=> b!6719620 (= e!4060413 tp!1841661)))

(declare-fun b!6719619 () Bool)

(declare-fun tp!1841664 () Bool)

(declare-fun tp!1841663 () Bool)

(assert (=> b!6719619 (= e!4060413 (and tp!1841664 tp!1841663))))

(assert (=> b!6718760 (= tp!1841339 e!4060413)))

(declare-fun b!6719618 () Bool)

(assert (=> b!6719618 (= e!4060413 tp_is_empty!42347)))

(assert (= (and b!6718760 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33606 r!7292)))) b!6719618))

(assert (= (and b!6718760 ((_ is Concat!25392) (regOne!33607 (regOne!33606 r!7292)))) b!6719619))

(assert (= (and b!6718760 ((_ is Star!16547) (regOne!33607 (regOne!33606 r!7292)))) b!6719620))

(assert (= (and b!6718760 ((_ is Union!16547) (regOne!33607 (regOne!33606 r!7292)))) b!6719621))

(declare-fun b!6719625 () Bool)

(declare-fun e!4060414 () Bool)

(declare-fun tp!1841665 () Bool)

(declare-fun tp!1841667 () Bool)

(assert (=> b!6719625 (= e!4060414 (and tp!1841665 tp!1841667))))

(declare-fun b!6719624 () Bool)

(declare-fun tp!1841666 () Bool)

(assert (=> b!6719624 (= e!4060414 tp!1841666)))

(declare-fun b!6719623 () Bool)

(declare-fun tp!1841669 () Bool)

(declare-fun tp!1841668 () Bool)

(assert (=> b!6719623 (= e!4060414 (and tp!1841669 tp!1841668))))

(assert (=> b!6718760 (= tp!1841341 e!4060414)))

(declare-fun b!6719622 () Bool)

(assert (=> b!6719622 (= e!4060414 tp_is_empty!42347)))

(assert (= (and b!6718760 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33606 r!7292)))) b!6719622))

(assert (= (and b!6718760 ((_ is Concat!25392) (regTwo!33607 (regOne!33606 r!7292)))) b!6719623))

(assert (= (and b!6718760 ((_ is Star!16547) (regTwo!33607 (regOne!33606 r!7292)))) b!6719624))

(assert (= (and b!6718760 ((_ is Union!16547) (regTwo!33607 (regOne!33606 r!7292)))) b!6719625))

(declare-fun b_lambda!252993 () Bool)

(assert (= b_lambda!252977 (or d!2111417 b_lambda!252993)))

(declare-fun bs!1787775 () Bool)

(declare-fun d!2111789 () Bool)

(assert (= bs!1787775 (and d!2111789 d!2111417)))

(assert (=> bs!1787775 (= (dynLambda!26246 lambda!376848 (h!72264 lt!2436560)) (validRegex!8283 (h!72264 lt!2436560)))))

(declare-fun m!7481948 () Bool)

(assert (=> bs!1787775 m!7481948))

(assert (=> b!6719373 d!2111789))

(declare-fun b_lambda!252995 () Bool)

(assert (= b_lambda!252975 (or d!2111453 b_lambda!252995)))

(declare-fun bs!1787776 () Bool)

(declare-fun d!2111791 () Bool)

(assert (= bs!1787776 (and d!2111791 d!2111453)))

(assert (=> bs!1787776 (= (dynLambda!26246 lambda!376879 (h!72264 (exprs!6431 (h!72265 zl!343)))) (validRegex!8283 (h!72264 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun m!7481950 () Bool)

(assert (=> bs!1787776 m!7481950))

(assert (=> b!6719266 d!2111791))

(declare-fun b_lambda!252997 () Bool)

(assert (= b_lambda!252991 (or d!2111461 b_lambda!252997)))

(declare-fun bs!1787777 () Bool)

(declare-fun d!2111793 () Bool)

(assert (= bs!1787777 (and d!2111793 d!2111461)))

(assert (=> bs!1787777 (= (dynLambda!26246 lambda!376880 (h!72264 (exprs!6431 (h!72265 zl!343)))) (validRegex!8283 (h!72264 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> bs!1787777 m!7481950))

(assert (=> b!6719422 d!2111793))

(declare-fun b_lambda!252999 () Bool)

(assert (= b_lambda!252979 (or d!2111401 b_lambda!252999)))

(declare-fun bs!1787778 () Bool)

(declare-fun d!2111795 () Bool)

(assert (= bs!1787778 (and d!2111795 d!2111401)))

(assert (=> bs!1787778 (= (dynLambda!26246 lambda!376839 (h!72264 (unfocusZipperList!1968 zl!343))) (validRegex!8283 (h!72264 (unfocusZipperList!1968 zl!343))))))

(declare-fun m!7481952 () Bool)

(assert (=> bs!1787778 m!7481952))

(assert (=> b!6719409 d!2111795))

(declare-fun b_lambda!253001 () Bool)

(assert (= b_lambda!252967 (or d!2111399 b_lambda!253001)))

(declare-fun bs!1787779 () Bool)

(declare-fun d!2111797 () Bool)

(assert (= bs!1787779 (and d!2111797 d!2111399)))

(assert (=> bs!1787779 (= (dynLambda!26246 lambda!376836 (h!72264 (exprs!6431 setElem!45799))) (validRegex!8283 (h!72264 (exprs!6431 setElem!45799))))))

(declare-fun m!7481954 () Bool)

(assert (=> bs!1787779 m!7481954))

(assert (=> b!6719080 d!2111797))

(check-sat (not b!6719198) (not b!6719544) (not bm!606447) (not bm!606501) (not bm!606477) (not b!6718890) (not b!6719560) (not b!6719155) (not b!6719522) (not bm!606415) (not bm!606484) (not b!6718888) (not b!6719613) (not bs!1787778) (not bm!606413) (not b!6719436) (not b!6719191) (not b!6718960) (not b!6719438) (not b!6719030) (not b!6719548) (not b!6719439) (not b!6719169) (not b!6719558) (not bm!606487) (not b!6719561) (not d!2111779) (not b!6719526) (not b!6719512) (not b!6719591) (not b!6719027) (not b!6719498) (not b!6719607) (not b!6719033) (not b!6719374) (not b!6719502) (not b!6719414) (not setNonEmpty!45807) (not d!2111653) (not b!6718864) (not b!6719596) (not d!2111627) (not b!6719625) (not bm!606483) (not b_lambda!252997) (not b!6719604) (not d!2111721) (not b!6718894) (not b!6719572) (not b!6719597) (not b!6719267) (not b!6719593) (not b!6719603) (not b!6719581) (not b!6719601) (not b!6719621) (not b!6719127) (not b!6718912) (not bm!606417) (not b!6719612) (not b!6719423) (not b!6719616) (not b!6719363) (not b!6718886) (not bm!606481) (not bs!1787775) (not bm!606443) (not bm!606480) (not b!6718902) (not b!6719599) (not b!6718861) (not b!6719624) (not b!6719530) (not b!6719563) (not b!6719362) (not d!2111787) (not b!6719412) (not b!6719575) (not d!2111589) (not b!6719303) (not b!6719516) (not bs!1787779) (not b!6719508) (not bm!606446) (not b!6719477) (not b!6719528) (not b!6719535) (not d!2111753) (not d!2111629) (not bs!1787776) (not b!6719415) (not b!6719619) (not d!2111611) (not b!6718884) (not b!6719557) (not b!6719196) (not b!6719542) (not b!6719567) (not b!6719029) (not bm!606504) (not b!6719600) (not b!6719623) (not b!6719555) (not bs!1787777) (not b!6719156) (not b!6719540) (not bm!606444) (not b!6719524) (not b!6719025) (not b!6719416) (not b!6719531) (not bm!606506) (not b!6719589) (not d!2111655) (not b!6719617) (not b!6718905) (not d!2111585) (not b!6719536) (not b!6719517) (not b!6719199) (not bm!606430) (not d!2111715) (not d!2111573) (not d!2111559) (not b!6719585) (not b!6719533) (not b!6719534) (not b!6719573) (not b!6719485) (not bm!606416) (not b!6719254) (not b!6719556) (not b!6719504) (not b!6719004) (not b!6719467) (not b_lambda!253001) (not b!6719611) (not b!6719539) (not d!2111699) (not b!6719434) tp_is_empty!42347 (not b!6719580) (not b!6719081) (not b!6719521) (not bm!606476) (not b!6719547) (not b!6719149) (not d!2111631) (not b!6719492) (not b!6719505) (not bm!606442) (not bm!606439) (not b!6719569) (not b!6719552) (not b!6719595) (not bm!606497) (not b!6719565) (not d!2111551) (not d!2111737) (not b!6719389) (not b!6719615) (not b!6719515) (not b!6719562) (not d!2111581) (not b!6718867) (not b!6719538) (not b!6719361) (not b!6719549) (not bm!606507) (not b!6719418) (not b!6719500) (not b_lambda!252993) (not b!6719609) (not b!6719571) (not b!6719592) (not d!2111561) (not b!6719442) (not bm!606412) (not b!6719568) (not b!6719511) (not d!2111761) (not b!6718891) (not b!6719579) (not d!2111701) (not b!6718866) (not b!6718862) (not d!2111683) (not bm!606508) (not d!2111777) (not bm!606505) (not bm!606432) (not b!6719023) (not b!6719605) (not b_lambda!252995) (not b!6718976) (not b!6719432) (not b!6718977) (not d!2111615) (not b!6718859) (not bm!606473) (not b!6719620) (not bm!606486) (not b!6719520) (not b!6719410) (not d!2111693) (not b!6718860) (not b!6719429) (not b!6719587) (not b!6719192) (not d!2111623) (not b!6719584) (not b!6719168) (not b!6719577) (not b!6719588) (not b!6719518) (not b!6719553) (not b!6719564) (not b!6719543) (not b!6719421) (not d!2111651) (not bm!606499) (not b!6719608) (not d!2111613) (not b!6719151) (not b!6719529) (not d!2111677) (not b!6719546) (not b!6719513) (not b_lambda!252999) (not b!6719576) (not b!6719420) (not b!6719194) (not b!6719551) (not b!6719583) (not d!2111617) (not b!6719228) (not b!6719304) (not b!6719018) (not b!6719525) (not b!6719263) (not bm!606478) (not bm!606460))
(check-sat)
(get-model)

(declare-fun bm!606509 () Bool)

(declare-fun call!606518 () List!65940)

(declare-fun call!606519 () List!65940)

(assert (=> bm!606509 (= call!606518 call!606519)))

(declare-fun b!6719626 () Bool)

(declare-fun e!4060417 () (InoxSet Context!11862))

(assert (=> b!6719626 (= e!4060417 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719627 () Bool)

(declare-fun call!606514 () (InoxSet Context!11862))

(assert (=> b!6719627 (= e!4060417 call!606514)))

(declare-fun c!1245865 () Bool)

(declare-fun bm!606510 () Bool)

(declare-fun call!606516 () (InoxSet Context!11862))

(assert (=> bm!606510 (= call!606516 (derivationStepZipperDown!1775 (ite c!1245865 (regOne!33607 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))) (regOne!33606 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))) (ite c!1245865 (ite (or c!1245812 c!1245813) (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606481)) (Context!11863 call!606519)) (h!72266 s!2326)))))

(declare-fun b!6719628 () Bool)

(declare-fun e!4060419 () (InoxSet Context!11862))

(declare-fun call!606515 () (InoxSet Context!11862))

(assert (=> b!6719628 (= e!4060419 ((_ map or) call!606516 call!606515))))

(declare-fun b!6719629 () Bool)

(declare-fun e!4060418 () Bool)

(assert (=> b!6719629 (= e!4060418 (nullable!6534 (regOne!33606 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))))))

(declare-fun b!6719630 () Bool)

(declare-fun e!4060416 () (InoxSet Context!11862))

(assert (=> b!6719630 (= e!4060419 e!4060416)))

(declare-fun c!1245863 () Bool)

(assert (=> b!6719630 (= c!1245863 ((_ is Concat!25392) (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))))))

(declare-fun e!4060415 () (InoxSet Context!11862))

(declare-fun b!6719631 () Bool)

(assert (=> b!6719631 (= e!4060415 (store ((as const (Array Context!11862 Bool)) false) (ite (or c!1245812 c!1245813) (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606481)) true))))

(declare-fun b!6719632 () Bool)

(declare-fun e!4060420 () (InoxSet Context!11862))

(declare-fun call!606517 () (InoxSet Context!11862))

(assert (=> b!6719632 (= e!4060420 ((_ map or) call!606516 call!606517))))

(declare-fun b!6719633 () Bool)

(assert (=> b!6719633 (= e!4060415 e!4060420)))

(assert (=> b!6719633 (= c!1245865 ((_ is Union!16547) (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))))))

(declare-fun bm!606512 () Bool)

(assert (=> bm!606512 (= call!606514 call!606515)))

(declare-fun b!6719634 () Bool)

(assert (=> b!6719634 (= e!4060416 call!606514)))

(declare-fun bm!606513 () Bool)

(declare-fun c!1245866 () Bool)

(assert (=> bm!606513 (= call!606519 ($colon$colon!2364 (exprs!6431 (ite (or c!1245812 c!1245813) (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606481))) (ite (or c!1245866 c!1245863) (regTwo!33606 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))) (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))))))

(declare-fun bm!606514 () Bool)

(assert (=> bm!606514 (= call!606517 (derivationStepZipperDown!1775 (ite c!1245865 (regTwo!33607 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))) (ite c!1245866 (regTwo!33606 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))) (ite c!1245863 (regOne!33606 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))) (reg!16876 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))))) (ite (or c!1245865 c!1245866) (ite (or c!1245812 c!1245813) (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606481)) (Context!11863 call!606518)) (h!72266 s!2326)))))

(declare-fun b!6719635 () Bool)

(declare-fun c!1245862 () Bool)

(assert (=> b!6719635 (= c!1245862 ((_ is Star!16547) (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))))))

(assert (=> b!6719635 (= e!4060416 e!4060417)))

(declare-fun b!6719636 () Bool)

(assert (=> b!6719636 (= c!1245866 e!4060418)))

(declare-fun res!2749839 () Bool)

(assert (=> b!6719636 (=> (not res!2749839) (not e!4060418))))

(assert (=> b!6719636 (= res!2749839 ((_ is Concat!25392) (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))))))

(assert (=> b!6719636 (= e!4060420 e!4060419)))

(declare-fun c!1245864 () Bool)

(declare-fun d!2111799 () Bool)

(assert (=> d!2111799 (= c!1245864 (and ((_ is ElementMatch!16547) (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))) (= (c!1245533 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))) (h!72266 s!2326))))))

(assert (=> d!2111799 (= (derivationStepZipperDown!1775 (ite c!1245812 (regTwo!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245813 (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245810 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (reg!16876 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))) (ite (or c!1245812 c!1245813) (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606481)) (h!72266 s!2326)) e!4060415)))

(declare-fun bm!606511 () Bool)

(assert (=> bm!606511 (= call!606515 call!606517)))

(assert (= (and d!2111799 c!1245864) b!6719631))

(assert (= (and d!2111799 (not c!1245864)) b!6719633))

(assert (= (and b!6719633 c!1245865) b!6719632))

(assert (= (and b!6719633 (not c!1245865)) b!6719636))

(assert (= (and b!6719636 res!2749839) b!6719629))

(assert (= (and b!6719636 c!1245866) b!6719628))

(assert (= (and b!6719636 (not c!1245866)) b!6719630))

(assert (= (and b!6719630 c!1245863) b!6719634))

(assert (= (and b!6719630 (not c!1245863)) b!6719635))

(assert (= (and b!6719635 c!1245862) b!6719627))

(assert (= (and b!6719635 (not c!1245862)) b!6719626))

(assert (= (or b!6719634 b!6719627) bm!606509))

(assert (= (or b!6719634 b!6719627) bm!606512))

(assert (= (or b!6719628 bm!606509) bm!606513))

(assert (= (or b!6719628 bm!606512) bm!606511))

(assert (= (or b!6719632 bm!606511) bm!606514))

(assert (= (or b!6719632 b!6719628) bm!606510))

(declare-fun m!7481956 () Bool)

(assert (=> bm!606510 m!7481956))

(declare-fun m!7481958 () Bool)

(assert (=> b!6719631 m!7481958))

(declare-fun m!7481960 () Bool)

(assert (=> bm!606514 m!7481960))

(declare-fun m!7481962 () Bool)

(assert (=> b!6719629 m!7481962))

(declare-fun m!7481964 () Bool)

(assert (=> bm!606513 m!7481964))

(assert (=> bm!606477 d!2111799))

(assert (=> b!6718888 d!2111623))

(declare-fun d!2111801 () Bool)

(assert (=> d!2111801 (= (nullable!6534 (reg!16876 (reg!16876 r!7292))) (nullableFct!2448 (reg!16876 (reg!16876 r!7292))))))

(declare-fun bs!1787780 () Bool)

(assert (= bs!1787780 d!2111801))

(declare-fun m!7481966 () Bool)

(assert (=> bs!1787780 m!7481966))

(assert (=> b!6718902 d!2111801))

(declare-fun b!6719651 () Bool)

(declare-fun e!4060433 () Bool)

(declare-fun e!4060437 () Bool)

(assert (=> b!6719651 (= e!4060433 e!4060437)))

(declare-fun c!1245869 () Bool)

(assert (=> b!6719651 (= c!1245869 ((_ is Union!16547) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))

(declare-fun bm!606519 () Bool)

(declare-fun call!606525 () Bool)

(assert (=> bm!606519 (= call!606525 (nullable!6534 (ite c!1245869 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(declare-fun b!6719652 () Bool)

(declare-fun e!4060434 () Bool)

(assert (=> b!6719652 (= e!4060437 e!4060434)))

(declare-fun res!2749854 () Bool)

(assert (=> b!6719652 (= res!2749854 call!606525)))

(assert (=> b!6719652 (=> res!2749854 e!4060434)))

(declare-fun bm!606520 () Bool)

(declare-fun call!606524 () Bool)

(assert (=> bm!606520 (= call!606524 (nullable!6534 (ite c!1245869 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(declare-fun d!2111803 () Bool)

(declare-fun res!2749852 () Bool)

(declare-fun e!4060435 () Bool)

(assert (=> d!2111803 (=> res!2749852 e!4060435)))

(assert (=> d!2111803 (= res!2749852 ((_ is EmptyExpr!16547) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))

(assert (=> d!2111803 (= (nullableFct!2448 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) e!4060435)))

(declare-fun b!6719653 () Bool)

(declare-fun e!4060436 () Bool)

(assert (=> b!6719653 (= e!4060437 e!4060436)))

(declare-fun res!2749853 () Bool)

(assert (=> b!6719653 (= res!2749853 call!606525)))

(assert (=> b!6719653 (=> (not res!2749853) (not e!4060436))))

(declare-fun b!6719654 () Bool)

(declare-fun e!4060438 () Bool)

(assert (=> b!6719654 (= e!4060438 e!4060433)))

(declare-fun res!2749851 () Bool)

(assert (=> b!6719654 (=> res!2749851 e!4060433)))

(assert (=> b!6719654 (= res!2749851 ((_ is Star!16547) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))

(declare-fun b!6719655 () Bool)

(assert (=> b!6719655 (= e!4060435 e!4060438)))

(declare-fun res!2749850 () Bool)

(assert (=> b!6719655 (=> (not res!2749850) (not e!4060438))))

(assert (=> b!6719655 (= res!2749850 (and (not ((_ is EmptyLang!16547) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))) (not ((_ is ElementMatch!16547) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(declare-fun b!6719656 () Bool)

(assert (=> b!6719656 (= e!4060436 call!606524)))

(declare-fun b!6719657 () Bool)

(assert (=> b!6719657 (= e!4060434 call!606524)))

(assert (= (and d!2111803 (not res!2749852)) b!6719655))

(assert (= (and b!6719655 res!2749850) b!6719654))

(assert (= (and b!6719654 (not res!2749851)) b!6719651))

(assert (= (and b!6719651 c!1245869) b!6719652))

(assert (= (and b!6719651 (not c!1245869)) b!6719653))

(assert (= (and b!6719652 (not res!2749854)) b!6719657))

(assert (= (and b!6719653 res!2749853) b!6719656))

(assert (= (or b!6719657 b!6719656) bm!606520))

(assert (= (or b!6719652 b!6719653) bm!606519))

(declare-fun m!7481968 () Bool)

(assert (=> bm!606519 m!7481968))

(declare-fun m!7481970 () Bool)

(assert (=> bm!606520 m!7481970))

(assert (=> d!2111721 d!2111803))

(declare-fun d!2111805 () Bool)

(assert (=> d!2111805 (= (isEmpty!38137 (tail!12607 (_1!36825 (get!22892 lt!2436617)))) ((_ is Nil!65818) (tail!12607 (_1!36825 (get!22892 lt!2436617)))))))

(assert (=> b!6719505 d!2111805))

(declare-fun d!2111807 () Bool)

(assert (=> d!2111807 (= (tail!12607 (_1!36825 (get!22892 lt!2436617))) (t!379619 (_1!36825 (get!22892 lt!2436617))))))

(assert (=> b!6719505 d!2111807))

(declare-fun d!2111809 () Bool)

(assert (=> d!2111809 (= (isEmpty!38137 (tail!12607 (_2!36825 (get!22892 lt!2436617)))) ((_ is Nil!65818) (tail!12607 (_2!36825 (get!22892 lt!2436617)))))))

(assert (=> b!6719033 d!2111809))

(declare-fun d!2111811 () Bool)

(assert (=> d!2111811 (= (tail!12607 (_2!36825 (get!22892 lt!2436617))) (t!379619 (_2!36825 (get!22892 lt!2436617))))))

(assert (=> b!6719033 d!2111811))

(declare-fun b!6719658 () Bool)

(declare-fun e!4060443 () Bool)

(declare-fun call!606526 () Bool)

(assert (=> b!6719658 (= e!4060443 call!606526)))

(declare-fun b!6719659 () Bool)

(declare-fun res!2749857 () Bool)

(declare-fun e!4060441 () Bool)

(assert (=> b!6719659 (=> res!2749857 e!4060441)))

(assert (=> b!6719659 (= res!2749857 (not ((_ is Concat!25392) (h!72264 lt!2436560))))))

(declare-fun e!4060444 () Bool)

(assert (=> b!6719659 (= e!4060444 e!4060441)))

(declare-fun b!6719660 () Bool)

(declare-fun res!2749859 () Bool)

(assert (=> b!6719660 (=> (not res!2749859) (not e!4060443))))

(declare-fun call!606527 () Bool)

(assert (=> b!6719660 (= res!2749859 call!606527)))

(assert (=> b!6719660 (= e!4060444 e!4060443)))

(declare-fun b!6719661 () Bool)

(declare-fun e!4060439 () Bool)

(assert (=> b!6719661 (= e!4060439 e!4060444)))

(declare-fun c!1245870 () Bool)

(assert (=> b!6719661 (= c!1245870 ((_ is Union!16547) (h!72264 lt!2436560)))))

(declare-fun d!2111813 () Bool)

(declare-fun res!2749855 () Bool)

(declare-fun e!4060445 () Bool)

(assert (=> d!2111813 (=> res!2749855 e!4060445)))

(assert (=> d!2111813 (= res!2749855 ((_ is ElementMatch!16547) (h!72264 lt!2436560)))))

(assert (=> d!2111813 (= (validRegex!8283 (h!72264 lt!2436560)) e!4060445)))

(declare-fun bm!606521 () Bool)

(declare-fun c!1245871 () Bool)

(declare-fun call!606528 () Bool)

(assert (=> bm!606521 (= call!606528 (validRegex!8283 (ite c!1245871 (reg!16876 (h!72264 lt!2436560)) (ite c!1245870 (regTwo!33607 (h!72264 lt!2436560)) (regTwo!33606 (h!72264 lt!2436560))))))))

(declare-fun b!6719662 () Bool)

(declare-fun e!4060442 () Bool)

(assert (=> b!6719662 (= e!4060442 call!606528)))

(declare-fun bm!606522 () Bool)

(assert (=> bm!606522 (= call!606526 call!606528)))

(declare-fun b!6719663 () Bool)

(declare-fun e!4060440 () Bool)

(assert (=> b!6719663 (= e!4060440 call!606526)))

(declare-fun b!6719664 () Bool)

(assert (=> b!6719664 (= e!4060439 e!4060442)))

(declare-fun res!2749858 () Bool)

(assert (=> b!6719664 (= res!2749858 (not (nullable!6534 (reg!16876 (h!72264 lt!2436560)))))))

(assert (=> b!6719664 (=> (not res!2749858) (not e!4060442))))

(declare-fun b!6719665 () Bool)

(assert (=> b!6719665 (= e!4060445 e!4060439)))

(assert (=> b!6719665 (= c!1245871 ((_ is Star!16547) (h!72264 lt!2436560)))))

(declare-fun b!6719666 () Bool)

(assert (=> b!6719666 (= e!4060441 e!4060440)))

(declare-fun res!2749856 () Bool)

(assert (=> b!6719666 (=> (not res!2749856) (not e!4060440))))

(assert (=> b!6719666 (= res!2749856 call!606527)))

(declare-fun bm!606523 () Bool)

(assert (=> bm!606523 (= call!606527 (validRegex!8283 (ite c!1245870 (regOne!33607 (h!72264 lt!2436560)) (regOne!33606 (h!72264 lt!2436560)))))))

(assert (= (and d!2111813 (not res!2749855)) b!6719665))

(assert (= (and b!6719665 c!1245871) b!6719664))

(assert (= (and b!6719665 (not c!1245871)) b!6719661))

(assert (= (and b!6719664 res!2749858) b!6719662))

(assert (= (and b!6719661 c!1245870) b!6719660))

(assert (= (and b!6719661 (not c!1245870)) b!6719659))

(assert (= (and b!6719660 res!2749859) b!6719658))

(assert (= (and b!6719659 (not res!2749857)) b!6719666))

(assert (= (and b!6719666 res!2749856) b!6719663))

(assert (= (or b!6719658 b!6719663) bm!606522))

(assert (= (or b!6719660 b!6719666) bm!606523))

(assert (= (or b!6719662 bm!606522) bm!606521))

(declare-fun m!7481972 () Bool)

(assert (=> bm!606521 m!7481972))

(declare-fun m!7481974 () Bool)

(assert (=> b!6719664 m!7481974))

(declare-fun m!7481976 () Bool)

(assert (=> bm!606523 m!7481976))

(assert (=> bs!1787775 d!2111813))

(declare-fun d!2111815 () Bool)

(declare-fun lt!2436665 () Int)

(assert (=> d!2111815 (>= lt!2436665 0)))

(declare-fun e!4060448 () Int)

(assert (=> d!2111815 (= lt!2436665 e!4060448)))

(declare-fun c!1245874 () Bool)

(assert (=> d!2111815 (= c!1245874 ((_ is Nil!65818) lt!2436632))))

(assert (=> d!2111815 (= (size!40597 lt!2436632) lt!2436665)))

(declare-fun b!6719671 () Bool)

(assert (=> b!6719671 (= e!4060448 0)))

(declare-fun b!6719672 () Bool)

(assert (=> b!6719672 (= e!4060448 (+ 1 (size!40597 (t!379619 lt!2436632))))))

(assert (= (and d!2111815 c!1245874) b!6719671))

(assert (= (and d!2111815 (not c!1245874)) b!6719672))

(declare-fun m!7481978 () Bool)

(assert (=> b!6719672 m!7481978))

(assert (=> b!6718977 d!2111815))

(declare-fun d!2111817 () Bool)

(declare-fun lt!2436666 () Int)

(assert (=> d!2111817 (>= lt!2436666 0)))

(declare-fun e!4060449 () Int)

(assert (=> d!2111817 (= lt!2436666 e!4060449)))

(declare-fun c!1245875 () Bool)

(assert (=> d!2111817 (= c!1245875 ((_ is Nil!65818) (_1!36825 (get!22892 lt!2436617))))))

(assert (=> d!2111817 (= (size!40597 (_1!36825 (get!22892 lt!2436617))) lt!2436666)))

(declare-fun b!6719673 () Bool)

(assert (=> b!6719673 (= e!4060449 0)))

(declare-fun b!6719674 () Bool)

(assert (=> b!6719674 (= e!4060449 (+ 1 (size!40597 (t!379619 (_1!36825 (get!22892 lt!2436617))))))))

(assert (= (and d!2111817 c!1245875) b!6719673))

(assert (= (and d!2111817 (not c!1245875)) b!6719674))

(declare-fun m!7481980 () Bool)

(assert (=> b!6719674 m!7481980))

(assert (=> b!6718977 d!2111817))

(declare-fun d!2111819 () Bool)

(declare-fun lt!2436667 () Int)

(assert (=> d!2111819 (>= lt!2436667 0)))

(declare-fun e!4060450 () Int)

(assert (=> d!2111819 (= lt!2436667 e!4060450)))

(declare-fun c!1245876 () Bool)

(assert (=> d!2111819 (= c!1245876 ((_ is Nil!65818) (_2!36825 (get!22892 lt!2436617))))))

(assert (=> d!2111819 (= (size!40597 (_2!36825 (get!22892 lt!2436617))) lt!2436667)))

(declare-fun b!6719675 () Bool)

(assert (=> b!6719675 (= e!4060450 0)))

(declare-fun b!6719676 () Bool)

(assert (=> b!6719676 (= e!4060450 (+ 1 (size!40597 (t!379619 (_2!36825 (get!22892 lt!2436617))))))))

(assert (= (and d!2111819 c!1245876) b!6719675))

(assert (= (and d!2111819 (not c!1245876)) b!6719676))

(declare-fun m!7481982 () Bool)

(assert (=> b!6719676 m!7481982))

(assert (=> b!6718977 d!2111819))

(declare-fun d!2111821 () Bool)

(declare-fun res!2749860 () Bool)

(declare-fun e!4060451 () Bool)

(assert (=> d!2111821 (=> res!2749860 e!4060451)))

(assert (=> d!2111821 (= res!2749860 ((_ is Nil!65816) (exprs!6431 (h!72265 (t!379618 zl!343)))))))

(assert (=> d!2111821 (= (forall!15747 (exprs!6431 (h!72265 (t!379618 zl!343))) lambda!376938) e!4060451)))

(declare-fun b!6719677 () Bool)

(declare-fun e!4060452 () Bool)

(assert (=> b!6719677 (= e!4060451 e!4060452)))

(declare-fun res!2749861 () Bool)

(assert (=> b!6719677 (=> (not res!2749861) (not e!4060452))))

(assert (=> b!6719677 (= res!2749861 (dynLambda!26246 lambda!376938 (h!72264 (exprs!6431 (h!72265 (t!379618 zl!343))))))))

(declare-fun b!6719678 () Bool)

(assert (=> b!6719678 (= e!4060452 (forall!15747 (t!379617 (exprs!6431 (h!72265 (t!379618 zl!343)))) lambda!376938))))

(assert (= (and d!2111821 (not res!2749860)) b!6719677))

(assert (= (and b!6719677 res!2749861) b!6719678))

(declare-fun b_lambda!253003 () Bool)

(assert (=> (not b_lambda!253003) (not b!6719677)))

(declare-fun m!7481984 () Bool)

(assert (=> b!6719677 m!7481984))

(declare-fun m!7481986 () Bool)

(assert (=> b!6719678 m!7481986))

(assert (=> d!2111737 d!2111821))

(declare-fun d!2111823 () Bool)

(assert (=> d!2111823 (= ($colon$colon!2364 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))) (ite (or c!1245758 c!1245755) (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))) (Cons!65816 (ite (or c!1245758 c!1245755) (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(assert (=> bm!606442 d!2111823))

(declare-fun d!2111825 () Bool)

(assert (=> d!2111825 true))

(assert (=> d!2111825 true))

(declare-fun res!2749862 () Bool)

(assert (=> d!2111825 (= (choose!50069 lambda!376885) res!2749862)))

(assert (=> d!2111651 d!2111825))

(declare-fun d!2111827 () Bool)

(declare-fun res!2749863 () Bool)

(declare-fun e!4060453 () Bool)

(assert (=> d!2111827 (=> res!2749863 e!4060453)))

(assert (=> d!2111827 (= res!2749863 ((_ is Nil!65816) (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> d!2111827 (= (forall!15747 (t!379617 (exprs!6431 (h!72265 zl!343))) lambda!376879) e!4060453)))

(declare-fun b!6719679 () Bool)

(declare-fun e!4060454 () Bool)

(assert (=> b!6719679 (= e!4060453 e!4060454)))

(declare-fun res!2749864 () Bool)

(assert (=> b!6719679 (=> (not res!2749864) (not e!4060454))))

(assert (=> b!6719679 (= res!2749864 (dynLambda!26246 lambda!376879 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6719680 () Bool)

(assert (=> b!6719680 (= e!4060454 (forall!15747 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))) lambda!376879))))

(assert (= (and d!2111827 (not res!2749863)) b!6719679))

(assert (= (and b!6719679 res!2749864) b!6719680))

(declare-fun b_lambda!253005 () Bool)

(assert (=> (not b_lambda!253005) (not b!6719679)))

(declare-fun m!7481988 () Bool)

(assert (=> b!6719679 m!7481988))

(declare-fun m!7481990 () Bool)

(assert (=> b!6719680 m!7481990))

(assert (=> b!6719267 d!2111827))

(declare-fun d!2111829 () Bool)

(declare-fun res!2749865 () Bool)

(declare-fun e!4060455 () Bool)

(assert (=> d!2111829 (=> res!2749865 e!4060455)))

(assert (=> d!2111829 (= res!2749865 ((_ is Nil!65816) lt!2436640))))

(assert (=> d!2111829 (= (forall!15747 lt!2436640 lambda!376936) e!4060455)))

(declare-fun b!6719681 () Bool)

(declare-fun e!4060456 () Bool)

(assert (=> b!6719681 (= e!4060455 e!4060456)))

(declare-fun res!2749866 () Bool)

(assert (=> b!6719681 (=> (not res!2749866) (not e!4060456))))

(assert (=> b!6719681 (= res!2749866 (dynLambda!26246 lambda!376936 (h!72264 lt!2436640)))))

(declare-fun b!6719682 () Bool)

(assert (=> b!6719682 (= e!4060456 (forall!15747 (t!379617 lt!2436640) lambda!376936))))

(assert (= (and d!2111829 (not res!2749865)) b!6719681))

(assert (= (and b!6719681 res!2749866) b!6719682))

(declare-fun b_lambda!253007 () Bool)

(assert (=> (not b_lambda!253007) (not b!6719681)))

(declare-fun m!7481992 () Bool)

(assert (=> b!6719681 m!7481992))

(declare-fun m!7481994 () Bool)

(assert (=> b!6719682 m!7481994))

(assert (=> d!2111677 d!2111829))

(declare-fun d!2111831 () Bool)

(assert (=> d!2111831 (= (isEmpty!38137 (_1!36825 (get!22892 lt!2436617))) ((_ is Nil!65818) (_1!36825 (get!22892 lt!2436617))))))

(assert (=> bm!606508 d!2111831))

(declare-fun d!2111833 () Bool)

(assert (=> d!2111833 (= (nullable!6534 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))) (nullableFct!2448 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))

(declare-fun bs!1787781 () Bool)

(assert (= bs!1787781 d!2111833))

(declare-fun m!7481996 () Bool)

(assert (=> bs!1787781 m!7481996))

(assert (=> b!6718960 d!2111833))

(declare-fun b!6719683 () Bool)

(declare-fun e!4060461 () Bool)

(declare-fun call!606529 () Bool)

(assert (=> b!6719683 (= e!4060461 call!606529)))

(declare-fun b!6719684 () Bool)

(declare-fun res!2749869 () Bool)

(declare-fun e!4060459 () Bool)

(assert (=> b!6719684 (=> res!2749869 e!4060459)))

(assert (=> b!6719684 (= res!2749869 (not ((_ is Concat!25392) lt!2436624)))))

(declare-fun e!4060462 () Bool)

(assert (=> b!6719684 (= e!4060462 e!4060459)))

(declare-fun b!6719685 () Bool)

(declare-fun res!2749871 () Bool)

(assert (=> b!6719685 (=> (not res!2749871) (not e!4060461))))

(declare-fun call!606530 () Bool)

(assert (=> b!6719685 (= res!2749871 call!606530)))

(assert (=> b!6719685 (= e!4060462 e!4060461)))

(declare-fun b!6719686 () Bool)

(declare-fun e!4060457 () Bool)

(assert (=> b!6719686 (= e!4060457 e!4060462)))

(declare-fun c!1245877 () Bool)

(assert (=> b!6719686 (= c!1245877 ((_ is Union!16547) lt!2436624))))

(declare-fun d!2111835 () Bool)

(declare-fun res!2749867 () Bool)

(declare-fun e!4060463 () Bool)

(assert (=> d!2111835 (=> res!2749867 e!4060463)))

(assert (=> d!2111835 (= res!2749867 ((_ is ElementMatch!16547) lt!2436624))))

(assert (=> d!2111835 (= (validRegex!8283 lt!2436624) e!4060463)))

(declare-fun c!1245878 () Bool)

(declare-fun call!606531 () Bool)

(declare-fun bm!606524 () Bool)

(assert (=> bm!606524 (= call!606531 (validRegex!8283 (ite c!1245878 (reg!16876 lt!2436624) (ite c!1245877 (regTwo!33607 lt!2436624) (regTwo!33606 lt!2436624)))))))

(declare-fun b!6719687 () Bool)

(declare-fun e!4060460 () Bool)

(assert (=> b!6719687 (= e!4060460 call!606531)))

(declare-fun bm!606525 () Bool)

(assert (=> bm!606525 (= call!606529 call!606531)))

(declare-fun b!6719688 () Bool)

(declare-fun e!4060458 () Bool)

(assert (=> b!6719688 (= e!4060458 call!606529)))

(declare-fun b!6719689 () Bool)

(assert (=> b!6719689 (= e!4060457 e!4060460)))

(declare-fun res!2749870 () Bool)

(assert (=> b!6719689 (= res!2749870 (not (nullable!6534 (reg!16876 lt!2436624))))))

(assert (=> b!6719689 (=> (not res!2749870) (not e!4060460))))

(declare-fun b!6719690 () Bool)

(assert (=> b!6719690 (= e!4060463 e!4060457)))

(assert (=> b!6719690 (= c!1245878 ((_ is Star!16547) lt!2436624))))

(declare-fun b!6719691 () Bool)

(assert (=> b!6719691 (= e!4060459 e!4060458)))

(declare-fun res!2749868 () Bool)

(assert (=> b!6719691 (=> (not res!2749868) (not e!4060458))))

(assert (=> b!6719691 (= res!2749868 call!606530)))

(declare-fun bm!606526 () Bool)

(assert (=> bm!606526 (= call!606530 (validRegex!8283 (ite c!1245877 (regOne!33607 lt!2436624) (regOne!33606 lt!2436624))))))

(assert (= (and d!2111835 (not res!2749867)) b!6719690))

(assert (= (and b!6719690 c!1245878) b!6719689))

(assert (= (and b!6719690 (not c!1245878)) b!6719686))

(assert (= (and b!6719689 res!2749870) b!6719687))

(assert (= (and b!6719686 c!1245877) b!6719685))

(assert (= (and b!6719686 (not c!1245877)) b!6719684))

(assert (= (and b!6719685 res!2749871) b!6719683))

(assert (= (and b!6719684 (not res!2749869)) b!6719691))

(assert (= (and b!6719691 res!2749868) b!6719688))

(assert (= (or b!6719683 b!6719688) bm!606525))

(assert (= (or b!6719685 b!6719691) bm!606526))

(assert (= (or b!6719687 bm!606525) bm!606524))

(declare-fun m!7481998 () Bool)

(assert (=> bm!606524 m!7481998))

(declare-fun m!7482000 () Bool)

(assert (=> b!6719689 m!7482000))

(declare-fun m!7482002 () Bool)

(assert (=> bm!606526 m!7482002))

(assert (=> d!2111551 d!2111835))

(declare-fun d!2111837 () Bool)

(declare-fun res!2749872 () Bool)

(declare-fun e!4060464 () Bool)

(assert (=> d!2111837 (=> res!2749872 e!4060464)))

(assert (=> d!2111837 (= res!2749872 ((_ is Nil!65816) (t!379617 (unfocusZipperList!1968 zl!343))))))

(assert (=> d!2111837 (= (forall!15747 (t!379617 (unfocusZipperList!1968 zl!343)) lambda!376900) e!4060464)))

(declare-fun b!6719692 () Bool)

(declare-fun e!4060465 () Bool)

(assert (=> b!6719692 (= e!4060464 e!4060465)))

(declare-fun res!2749873 () Bool)

(assert (=> b!6719692 (=> (not res!2749873) (not e!4060465))))

(assert (=> b!6719692 (= res!2749873 (dynLambda!26246 lambda!376900 (h!72264 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(declare-fun b!6719693 () Bool)

(assert (=> b!6719693 (= e!4060465 (forall!15747 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343))) lambda!376900))))

(assert (= (and d!2111837 (not res!2749872)) b!6719692))

(assert (= (and b!6719692 res!2749873) b!6719693))

(declare-fun b_lambda!253009 () Bool)

(assert (=> (not b_lambda!253009) (not b!6719692)))

(declare-fun m!7482004 () Bool)

(assert (=> b!6719692 m!7482004))

(declare-fun m!7482006 () Bool)

(assert (=> b!6719693 m!7482006))

(assert (=> d!2111551 d!2111837))

(assert (=> d!2111683 d!2111437))

(assert (=> d!2111683 d!2111423))

(declare-fun b!6719694 () Bool)

(declare-fun e!4060470 () Bool)

(declare-fun call!606532 () Bool)

(assert (=> b!6719694 (= e!4060470 call!606532)))

(declare-fun b!6719695 () Bool)

(declare-fun res!2749876 () Bool)

(declare-fun e!4060468 () Bool)

(assert (=> b!6719695 (=> res!2749876 e!4060468)))

(assert (=> b!6719695 (= res!2749876 (not ((_ is Concat!25392) (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292)))))))))

(declare-fun e!4060471 () Bool)

(assert (=> b!6719695 (= e!4060471 e!4060468)))

(declare-fun b!6719696 () Bool)

(declare-fun res!2749878 () Bool)

(assert (=> b!6719696 (=> (not res!2749878) (not e!4060470))))

(declare-fun call!606533 () Bool)

(assert (=> b!6719696 (= res!2749878 call!606533)))

(assert (=> b!6719696 (= e!4060471 e!4060470)))

(declare-fun b!6719697 () Bool)

(declare-fun e!4060466 () Bool)

(assert (=> b!6719697 (= e!4060466 e!4060471)))

(declare-fun c!1245879 () Bool)

(assert (=> b!6719697 (= c!1245879 ((_ is Union!16547) (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))))))

(declare-fun d!2111839 () Bool)

(declare-fun res!2749874 () Bool)

(declare-fun e!4060472 () Bool)

(assert (=> d!2111839 (=> res!2749874 e!4060472)))

(assert (=> d!2111839 (= res!2749874 ((_ is ElementMatch!16547) (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))))))

(assert (=> d!2111839 (= (validRegex!8283 (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))) e!4060472)))

(declare-fun call!606534 () Bool)

(declare-fun bm!606527 () Bool)

(declare-fun c!1245880 () Bool)

(assert (=> bm!606527 (= call!606534 (validRegex!8283 (ite c!1245880 (reg!16876 (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))) (ite c!1245879 (regTwo!33607 (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))) (regTwo!33606 (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292)))))))))))

(declare-fun b!6719698 () Bool)

(declare-fun e!4060469 () Bool)

(assert (=> b!6719698 (= e!4060469 call!606534)))

(declare-fun bm!606528 () Bool)

(assert (=> bm!606528 (= call!606532 call!606534)))

(declare-fun b!6719699 () Bool)

(declare-fun e!4060467 () Bool)

(assert (=> b!6719699 (= e!4060467 call!606532)))

(declare-fun b!6719700 () Bool)

(assert (=> b!6719700 (= e!4060466 e!4060469)))

(declare-fun res!2749877 () Bool)

(assert (=> b!6719700 (= res!2749877 (not (nullable!6534 (reg!16876 (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))))))))

(assert (=> b!6719700 (=> (not res!2749877) (not e!4060469))))

(declare-fun b!6719701 () Bool)

(assert (=> b!6719701 (= e!4060472 e!4060466)))

(assert (=> b!6719701 (= c!1245880 ((_ is Star!16547) (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))))))

(declare-fun b!6719702 () Bool)

(assert (=> b!6719702 (= e!4060468 e!4060467)))

(declare-fun res!2749875 () Bool)

(assert (=> b!6719702 (=> (not res!2749875) (not e!4060467))))

(assert (=> b!6719702 (= res!2749875 call!606533)))

(declare-fun bm!606529 () Bool)

(assert (=> bm!606529 (= call!606533 (validRegex!8283 (ite c!1245879 (regOne!33607 (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))) (regOne!33606 (ite c!1245723 (reg!16876 (reg!16876 r!7292)) (ite c!1245722 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292))))))))))

(assert (= (and d!2111839 (not res!2749874)) b!6719701))

(assert (= (and b!6719701 c!1245880) b!6719700))

(assert (= (and b!6719701 (not c!1245880)) b!6719697))

(assert (= (and b!6719700 res!2749877) b!6719698))

(assert (= (and b!6719697 c!1245879) b!6719696))

(assert (= (and b!6719697 (not c!1245879)) b!6719695))

(assert (= (and b!6719696 res!2749878) b!6719694))

(assert (= (and b!6719695 (not res!2749876)) b!6719702))

(assert (= (and b!6719702 res!2749875) b!6719699))

(assert (= (or b!6719694 b!6719699) bm!606528))

(assert (= (or b!6719696 b!6719702) bm!606529))

(assert (= (or b!6719698 bm!606528) bm!606527))

(declare-fun m!7482008 () Bool)

(assert (=> bm!606527 m!7482008))

(declare-fun m!7482010 () Bool)

(assert (=> b!6719700 m!7482010))

(declare-fun m!7482012 () Bool)

(assert (=> bm!606529 m!7482012))

(assert (=> bm!606413 d!2111839))

(declare-fun d!2111841 () Bool)

(declare-fun res!2749879 () Bool)

(declare-fun e!4060473 () Bool)

(assert (=> d!2111841 (=> res!2749879 e!4060473)))

(assert (=> d!2111841 (= res!2749879 ((_ is Nil!65816) (t!379617 (exprs!6431 setElem!45799))))))

(assert (=> d!2111841 (= (forall!15747 (t!379617 (exprs!6431 setElem!45799)) lambda!376836) e!4060473)))

(declare-fun b!6719703 () Bool)

(declare-fun e!4060474 () Bool)

(assert (=> b!6719703 (= e!4060473 e!4060474)))

(declare-fun res!2749880 () Bool)

(assert (=> b!6719703 (=> (not res!2749880) (not e!4060474))))

(assert (=> b!6719703 (= res!2749880 (dynLambda!26246 lambda!376836 (h!72264 (t!379617 (exprs!6431 setElem!45799)))))))

(declare-fun b!6719704 () Bool)

(assert (=> b!6719704 (= e!4060474 (forall!15747 (t!379617 (t!379617 (exprs!6431 setElem!45799))) lambda!376836))))

(assert (= (and d!2111841 (not res!2749879)) b!6719703))

(assert (= (and b!6719703 res!2749880) b!6719704))

(declare-fun b_lambda!253011 () Bool)

(assert (=> (not b_lambda!253011) (not b!6719703)))

(declare-fun m!7482014 () Bool)

(assert (=> b!6719703 m!7482014))

(declare-fun m!7482016 () Bool)

(assert (=> b!6719704 m!7482016))

(assert (=> b!6719081 d!2111841))

(declare-fun d!2111843 () Bool)

(assert (=> d!2111843 (= (head!13522 (_2!36825 (get!22892 lt!2436617))) (h!72266 (_2!36825 (get!22892 lt!2436617))))))

(assert (=> b!6719029 d!2111843))

(declare-fun bm!606530 () Bool)

(declare-fun call!606539 () List!65940)

(declare-fun call!606540 () List!65940)

(assert (=> bm!606530 (= call!606539 call!606540)))

(declare-fun b!6719705 () Bool)

(declare-fun e!4060477 () (InoxSet Context!11862))

(assert (=> b!6719705 (= e!4060477 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719706 () Bool)

(declare-fun call!606535 () (InoxSet Context!11862))

(assert (=> b!6719706 (= e!4060477 call!606535)))

(declare-fun call!606537 () (InoxSet Context!11862))

(declare-fun c!1245884 () Bool)

(declare-fun bm!606531 () Bool)

(assert (=> bm!606531 (= call!606537 (derivationStepZipperDown!1775 (ite c!1245884 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))) (ite c!1245884 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (Context!11863 call!606540)) (h!72266 s!2326)))))

(declare-fun b!6719707 () Bool)

(declare-fun e!4060479 () (InoxSet Context!11862))

(declare-fun call!606536 () (InoxSet Context!11862))

(assert (=> b!6719707 (= e!4060479 ((_ map or) call!606537 call!606536))))

(declare-fun b!6719708 () Bool)

(declare-fun e!4060478 () Bool)

(assert (=> b!6719708 (= e!4060478 (nullable!6534 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))))

(declare-fun b!6719709 () Bool)

(declare-fun e!4060476 () (InoxSet Context!11862))

(assert (=> b!6719709 (= e!4060479 e!4060476)))

(declare-fun c!1245882 () Bool)

(assert (=> b!6719709 (= c!1245882 ((_ is Concat!25392) (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))

(declare-fun b!6719710 () Bool)

(declare-fun e!4060475 () (InoxSet Context!11862))

(assert (=> b!6719710 (= e!4060475 (store ((as const (Array Context!11862 Bool)) false) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) true))))

(declare-fun b!6719711 () Bool)

(declare-fun e!4060480 () (InoxSet Context!11862))

(declare-fun call!606538 () (InoxSet Context!11862))

(assert (=> b!6719711 (= e!4060480 ((_ map or) call!606537 call!606538))))

(declare-fun b!6719712 () Bool)

(assert (=> b!6719712 (= e!4060475 e!4060480)))

(assert (=> b!6719712 (= c!1245884 ((_ is Union!16547) (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))

(declare-fun bm!606533 () Bool)

(assert (=> bm!606533 (= call!606535 call!606536)))

(declare-fun b!6719713 () Bool)

(assert (=> b!6719713 (= e!4060476 call!606535)))

(declare-fun c!1245885 () Bool)

(declare-fun bm!606534 () Bool)

(assert (=> bm!606534 (= call!606540 ($colon$colon!2364 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))) (ite (or c!1245885 c!1245882) (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))))

(declare-fun bm!606535 () Bool)

(assert (=> bm!606535 (= call!606538 (derivationStepZipperDown!1775 (ite c!1245884 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (ite c!1245885 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (ite c!1245882 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))) (ite (or c!1245884 c!1245885) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (Context!11863 call!606539)) (h!72266 s!2326)))))

(declare-fun b!6719714 () Bool)

(declare-fun c!1245881 () Bool)

(assert (=> b!6719714 (= c!1245881 ((_ is Star!16547) (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))

(assert (=> b!6719714 (= e!4060476 e!4060477)))

(declare-fun b!6719715 () Bool)

(assert (=> b!6719715 (= c!1245885 e!4060478)))

(declare-fun res!2749881 () Bool)

(assert (=> b!6719715 (=> (not res!2749881) (not e!4060478))))

(assert (=> b!6719715 (= res!2749881 ((_ is Concat!25392) (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))

(assert (=> b!6719715 (= e!4060480 e!4060479)))

(declare-fun d!2111845 () Bool)

(declare-fun c!1245883 () Bool)

(assert (=> d!2111845 (= c!1245883 (and ((_ is ElementMatch!16547) (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (= (c!1245533 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (h!72266 s!2326))))))

(assert (=> d!2111845 (= (derivationStepZipperDown!1775 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (h!72266 s!2326)) e!4060475)))

(declare-fun bm!606532 () Bool)

(assert (=> bm!606532 (= call!606536 call!606538)))

(assert (= (and d!2111845 c!1245883) b!6719710))

(assert (= (and d!2111845 (not c!1245883)) b!6719712))

(assert (= (and b!6719712 c!1245884) b!6719711))

(assert (= (and b!6719712 (not c!1245884)) b!6719715))

(assert (= (and b!6719715 res!2749881) b!6719708))

(assert (= (and b!6719715 c!1245885) b!6719707))

(assert (= (and b!6719715 (not c!1245885)) b!6719709))

(assert (= (and b!6719709 c!1245882) b!6719713))

(assert (= (and b!6719709 (not c!1245882)) b!6719714))

(assert (= (and b!6719714 c!1245881) b!6719706))

(assert (= (and b!6719714 (not c!1245881)) b!6719705))

(assert (= (or b!6719713 b!6719706) bm!606530))

(assert (= (or b!6719713 b!6719706) bm!606533))

(assert (= (or b!6719707 bm!606530) bm!606534))

(assert (= (or b!6719707 bm!606533) bm!606532))

(assert (= (or b!6719711 bm!606532) bm!606535))

(assert (= (or b!6719711 b!6719707) bm!606531))

(declare-fun m!7482018 () Bool)

(assert (=> bm!606531 m!7482018))

(declare-fun m!7482020 () Bool)

(assert (=> b!6719710 m!7482020))

(declare-fun m!7482022 () Bool)

(assert (=> bm!606535 m!7482022))

(declare-fun m!7482024 () Bool)

(assert (=> b!6719708 m!7482024))

(declare-fun m!7482026 () Bool)

(assert (=> bm!606534 m!7482026))

(assert (=> bm!606460 d!2111845))

(declare-fun d!2111847 () Bool)

(declare-fun lt!2436670 () Bool)

(assert (=> d!2111847 (= lt!2436670 (select (content!12763 (t!379618 lt!2436602)) (h!72265 lt!2436602)))))

(declare-fun e!4060486 () Bool)

(assert (=> d!2111847 (= lt!2436670 e!4060486)))

(declare-fun res!2749886 () Bool)

(assert (=> d!2111847 (=> (not res!2749886) (not e!4060486))))

(assert (=> d!2111847 (= res!2749886 ((_ is Cons!65817) (t!379618 lt!2436602)))))

(assert (=> d!2111847 (= (contains!20245 (t!379618 lt!2436602) (h!72265 lt!2436602)) lt!2436670)))

(declare-fun b!6719720 () Bool)

(declare-fun e!4060485 () Bool)

(assert (=> b!6719720 (= e!4060486 e!4060485)))

(declare-fun res!2749887 () Bool)

(assert (=> b!6719720 (=> res!2749887 e!4060485)))

(assert (=> b!6719720 (= res!2749887 (= (h!72265 (t!379618 lt!2436602)) (h!72265 lt!2436602)))))

(declare-fun b!6719721 () Bool)

(assert (=> b!6719721 (= e!4060485 (contains!20245 (t!379618 (t!379618 lt!2436602)) (h!72265 lt!2436602)))))

(assert (= (and d!2111847 res!2749886) b!6719720))

(assert (= (and b!6719720 (not res!2749887)) b!6719721))

(assert (=> d!2111847 m!7481894))

(declare-fun m!7482028 () Bool)

(assert (=> d!2111847 m!7482028))

(declare-fun m!7482030 () Bool)

(assert (=> b!6719721 m!7482030))

(assert (=> b!6719303 d!2111847))

(declare-fun bs!1787782 () Bool)

(declare-fun b!6719732 () Bool)

(assert (= bs!1787782 (and b!6719732 d!2111467)))

(declare-fun lambda!376944 () Int)

(assert (=> bs!1787782 (not (= lambda!376944 lambda!376886))))

(declare-fun bs!1787783 () Bool)

(assert (= bs!1787783 (and b!6719732 b!6718346)))

(assert (=> bs!1787783 (not (= lambda!376944 lambda!376863))))

(declare-fun bs!1787784 () Bool)

(assert (= bs!1787784 (and b!6719732 d!2111631)))

(assert (=> bs!1787784 (= (and (= (reg!16876 (regOne!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regOne!33607 (regOne!33607 r!7292)) (Star!16547 (reg!16876 r!7292)))) (= lambda!376944 lambda!376923))))

(declare-fun bs!1787785 () Bool)

(assert (= bs!1787785 (and b!6719732 b!6718353)))

(assert (=> bs!1787785 (= (and (= (reg!16876 (regOne!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regOne!33607 (regOne!33607 r!7292)) r!7292)) (= lambda!376944 lambda!376862))))

(declare-fun bs!1787786 () Bool)

(assert (= bs!1787786 (and b!6719732 b!6718097)))

(assert (=> bs!1787786 (not (= lambda!376944 lambda!376827))))

(declare-fun bs!1787787 () Bool)

(assert (= bs!1787787 (and b!6719732 d!2111655)))

(assert (=> bs!1787787 (not (= lambda!376944 lambda!376934))))

(declare-fun bs!1787788 () Bool)

(assert (= bs!1787788 (and b!6719732 d!2111469)))

(assert (=> bs!1787788 (not (= lambda!376944 lambda!376891))))

(declare-fun bs!1787789 () Bool)

(assert (= bs!1787789 (and b!6719732 b!6719488)))

(assert (=> bs!1787789 (not (= lambda!376944 lambda!376943))))

(declare-fun bs!1787790 () Bool)

(assert (= bs!1787790 (and b!6719732 b!6718915)))

(assert (=> bs!1787790 (= (and (= (reg!16876 (regOne!33607 (regOne!33607 r!7292))) (reg!16876 (regOne!33607 r!7292))) (= (regOne!33607 (regOne!33607 r!7292)) (regOne!33607 r!7292))) (= lambda!376944 lambda!376901))))

(assert (=> bs!1787786 (= (and (= (reg!16876 (regOne!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regOne!33607 (regOne!33607 r!7292)) r!7292)) (= lambda!376944 lambda!376826))))

(assert (=> bs!1787787 (not (= lambda!376944 lambda!376935))))

(assert (=> bs!1787782 (not (= lambda!376944 lambda!376885))))

(declare-fun bs!1787791 () Bool)

(assert (= bs!1787791 (and b!6719732 b!6719495)))

(assert (=> bs!1787791 (= (and (= (reg!16876 (regOne!33607 (regOne!33607 r!7292))) (reg!16876 (regTwo!33607 r!7292))) (= (regOne!33607 (regOne!33607 r!7292)) (regTwo!33607 r!7292))) (= lambda!376944 lambda!376942))))

(declare-fun bs!1787792 () Bool)

(assert (= bs!1787792 (and b!6719732 d!2111573)))

(assert (=> bs!1787792 (not (= lambda!376944 lambda!376905))))

(assert (=> bs!1787788 (= (and (= (reg!16876 (regOne!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regOne!33607 (regOne!33607 r!7292)) (Star!16547 (reg!16876 r!7292)))) (= lambda!376944 lambda!376892))))

(assert (=> bs!1787786 (not (= lambda!376944 lambda!376825))))

(declare-fun bs!1787793 () Bool)

(assert (= bs!1787793 (and b!6719732 d!2111481)))

(assert (=> bs!1787793 (not (= lambda!376944 lambda!376895))))

(assert (=> bs!1787784 (not (= lambda!376944 lambda!376922))))

(declare-fun bs!1787794 () Bool)

(assert (= bs!1787794 (and b!6719732 b!6718908)))

(assert (=> bs!1787794 (not (= lambda!376944 lambda!376902))))

(assert (=> b!6719732 true))

(assert (=> b!6719732 true))

(declare-fun bs!1787795 () Bool)

(declare-fun b!6719725 () Bool)

(assert (= bs!1787795 (and b!6719725 d!2111467)))

(declare-fun lambda!376945 () Int)

(assert (=> bs!1787795 (= (and (= (regOne!33606 (regOne!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))) r!7292)) (= lambda!376945 lambda!376886))))

(declare-fun bs!1787796 () Bool)

(assert (= bs!1787796 (and b!6719725 b!6718346)))

(assert (=> bs!1787796 (= (and (= (regOne!33606 (regOne!33607 (regOne!33607 r!7292))) (regOne!33606 r!7292)) (= (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))) (regTwo!33606 r!7292))) (= lambda!376945 lambda!376863))))

(declare-fun bs!1787797 () Bool)

(assert (= bs!1787797 (and b!6719725 b!6719732)))

(assert (=> bs!1787797 (not (= lambda!376945 lambda!376944))))

(declare-fun bs!1787798 () Bool)

(assert (= bs!1787798 (and b!6719725 d!2111631)))

(assert (=> bs!1787798 (not (= lambda!376945 lambda!376923))))

(declare-fun bs!1787799 () Bool)

(assert (= bs!1787799 (and b!6719725 b!6718353)))

(assert (=> bs!1787799 (not (= lambda!376945 lambda!376862))))

(declare-fun bs!1787800 () Bool)

(assert (= bs!1787800 (and b!6719725 b!6718097)))

(assert (=> bs!1787800 (= (and (= (regOne!33606 (regOne!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))) r!7292)) (= lambda!376945 lambda!376827))))

(declare-fun bs!1787801 () Bool)

(assert (= bs!1787801 (and b!6719725 d!2111655)))

(assert (=> bs!1787801 (not (= lambda!376945 lambda!376934))))

(declare-fun bs!1787802 () Bool)

(assert (= bs!1787802 (and b!6719725 d!2111469)))

(assert (=> bs!1787802 (not (= lambda!376945 lambda!376891))))

(declare-fun bs!1787803 () Bool)

(assert (= bs!1787803 (and b!6719725 b!6719488)))

(assert (=> bs!1787803 (= (and (= (regOne!33606 (regOne!33607 (regOne!33607 r!7292))) (regOne!33606 (regTwo!33607 r!7292))) (= (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))) (regTwo!33606 (regTwo!33607 r!7292)))) (= lambda!376945 lambda!376943))))

(declare-fun bs!1787804 () Bool)

(assert (= bs!1787804 (and b!6719725 b!6718915)))

(assert (=> bs!1787804 (not (= lambda!376945 lambda!376901))))

(assert (=> bs!1787800 (not (= lambda!376945 lambda!376826))))

(assert (=> bs!1787801 (= (and (= (regOne!33606 (regOne!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))) r!7292)) (= lambda!376945 lambda!376935))))

(assert (=> bs!1787795 (not (= lambda!376945 lambda!376885))))

(declare-fun bs!1787805 () Bool)

(assert (= bs!1787805 (and b!6719725 b!6719495)))

(assert (=> bs!1787805 (not (= lambda!376945 lambda!376942))))

(declare-fun bs!1787806 () Bool)

(assert (= bs!1787806 (and b!6719725 d!2111573)))

(assert (=> bs!1787806 (not (= lambda!376945 lambda!376905))))

(assert (=> bs!1787802 (not (= lambda!376945 lambda!376892))))

(assert (=> bs!1787800 (not (= lambda!376945 lambda!376825))))

(declare-fun bs!1787807 () Bool)

(assert (= bs!1787807 (and b!6719725 d!2111481)))

(assert (=> bs!1787807 (not (= lambda!376945 lambda!376895))))

(assert (=> bs!1787798 (not (= lambda!376945 lambda!376922))))

(declare-fun bs!1787808 () Bool)

(assert (= bs!1787808 (and b!6719725 b!6718908)))

(assert (=> bs!1787808 (= (and (= (regOne!33606 (regOne!33607 (regOne!33607 r!7292))) (regOne!33606 (regOne!33607 r!7292))) (= (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))) (regTwo!33606 (regOne!33607 r!7292)))) (= lambda!376945 lambda!376902))))

(assert (=> b!6719725 true))

(assert (=> b!6719725 true))

(declare-fun b!6719722 () Bool)

(declare-fun e!4060493 () Bool)

(declare-fun e!4060491 () Bool)

(assert (=> b!6719722 (= e!4060493 e!4060491)))

(declare-fun res!2749888 () Bool)

(assert (=> b!6719722 (= res!2749888 (matchRSpec!3648 (regOne!33607 (regOne!33607 (regOne!33607 r!7292))) s!2326))))

(assert (=> b!6719722 (=> res!2749888 e!4060491)))

(declare-fun b!6719723 () Bool)

(declare-fun c!1245886 () Bool)

(assert (=> b!6719723 (= c!1245886 ((_ is Union!16547) (regOne!33607 (regOne!33607 r!7292))))))

(declare-fun e!4060487 () Bool)

(assert (=> b!6719723 (= e!4060487 e!4060493)))

(declare-fun b!6719724 () Bool)

(assert (=> b!6719724 (= e!4060487 (= s!2326 (Cons!65818 (c!1245533 (regOne!33607 (regOne!33607 r!7292))) Nil!65818)))))

(declare-fun b!6719726 () Bool)

(declare-fun c!1245887 () Bool)

(assert (=> b!6719726 (= c!1245887 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33607 r!7292))))))

(declare-fun e!4060488 () Bool)

(assert (=> b!6719726 (= e!4060488 e!4060487)))

(declare-fun b!6719727 () Bool)

(declare-fun res!2749890 () Bool)

(declare-fun e!4060492 () Bool)

(assert (=> b!6719727 (=> res!2749890 e!4060492)))

(declare-fun call!606541 () Bool)

(assert (=> b!6719727 (= res!2749890 call!606541)))

(declare-fun e!4060489 () Bool)

(assert (=> b!6719727 (= e!4060489 e!4060492)))

(declare-fun b!6719728 () Bool)

(declare-fun e!4060490 () Bool)

(assert (=> b!6719728 (= e!4060490 call!606541)))

(declare-fun b!6719729 () Bool)

(assert (=> b!6719729 (= e!4060491 (matchRSpec!3648 (regTwo!33607 (regOne!33607 (regOne!33607 r!7292))) s!2326))))

(declare-fun bm!606536 () Bool)

(assert (=> bm!606536 (= call!606541 (isEmpty!38137 s!2326))))

(declare-fun b!6719730 () Bool)

(assert (=> b!6719730 (= e!4060490 e!4060488)))

(declare-fun res!2749889 () Bool)

(assert (=> b!6719730 (= res!2749889 (not ((_ is EmptyLang!16547) (regOne!33607 (regOne!33607 r!7292)))))))

(assert (=> b!6719730 (=> (not res!2749889) (not e!4060488))))

(declare-fun b!6719731 () Bool)

(assert (=> b!6719731 (= e!4060493 e!4060489)))

(declare-fun c!1245889 () Bool)

(assert (=> b!6719731 (= c!1245889 ((_ is Star!16547) (regOne!33607 (regOne!33607 r!7292))))))

(declare-fun call!606542 () Bool)

(assert (=> b!6719725 (= e!4060489 call!606542)))

(declare-fun d!2111849 () Bool)

(declare-fun c!1245888 () Bool)

(assert (=> d!2111849 (= c!1245888 ((_ is EmptyExpr!16547) (regOne!33607 (regOne!33607 r!7292))))))

(assert (=> d!2111849 (= (matchRSpec!3648 (regOne!33607 (regOne!33607 r!7292)) s!2326) e!4060490)))

(assert (=> b!6719732 (= e!4060492 call!606542)))

(declare-fun bm!606537 () Bool)

(assert (=> bm!606537 (= call!606542 (Exists!3615 (ite c!1245889 lambda!376944 lambda!376945)))))

(assert (= (and d!2111849 c!1245888) b!6719728))

(assert (= (and d!2111849 (not c!1245888)) b!6719730))

(assert (= (and b!6719730 res!2749889) b!6719726))

(assert (= (and b!6719726 c!1245887) b!6719724))

(assert (= (and b!6719726 (not c!1245887)) b!6719723))

(assert (= (and b!6719723 c!1245886) b!6719722))

(assert (= (and b!6719723 (not c!1245886)) b!6719731))

(assert (= (and b!6719722 (not res!2749888)) b!6719729))

(assert (= (and b!6719731 c!1245889) b!6719727))

(assert (= (and b!6719731 (not c!1245889)) b!6719725))

(assert (= (and b!6719727 (not res!2749890)) b!6719732))

(assert (= (or b!6719732 b!6719725) bm!606537))

(assert (= (or b!6719728 b!6719727) bm!606536))

(declare-fun m!7482032 () Bool)

(assert (=> b!6719722 m!7482032))

(declare-fun m!7482034 () Bool)

(assert (=> b!6719729 m!7482034))

(assert (=> bm!606536 m!7480976))

(declare-fun m!7482036 () Bool)

(assert (=> bm!606537 m!7482036))

(assert (=> b!6718905 d!2111849))

(declare-fun b!6719733 () Bool)

(declare-fun e!4060498 () Bool)

(declare-fun call!606543 () Bool)

(assert (=> b!6719733 (= e!4060498 call!606543)))

(declare-fun b!6719734 () Bool)

(declare-fun res!2749893 () Bool)

(declare-fun e!4060496 () Bool)

(assert (=> b!6719734 (=> res!2749893 e!4060496)))

(assert (=> b!6719734 (= res!2749893 (not ((_ is Concat!25392) lt!2436657)))))

(declare-fun e!4060499 () Bool)

(assert (=> b!6719734 (= e!4060499 e!4060496)))

(declare-fun b!6719735 () Bool)

(declare-fun res!2749895 () Bool)

(assert (=> b!6719735 (=> (not res!2749895) (not e!4060498))))

(declare-fun call!606544 () Bool)

(assert (=> b!6719735 (= res!2749895 call!606544)))

(assert (=> b!6719735 (= e!4060499 e!4060498)))

(declare-fun b!6719736 () Bool)

(declare-fun e!4060494 () Bool)

(assert (=> b!6719736 (= e!4060494 e!4060499)))

(declare-fun c!1245890 () Bool)

(assert (=> b!6719736 (= c!1245890 ((_ is Union!16547) lt!2436657))))

(declare-fun d!2111851 () Bool)

(declare-fun res!2749891 () Bool)

(declare-fun e!4060500 () Bool)

(assert (=> d!2111851 (=> res!2749891 e!4060500)))

(assert (=> d!2111851 (= res!2749891 ((_ is ElementMatch!16547) lt!2436657))))

(assert (=> d!2111851 (= (validRegex!8283 lt!2436657) e!4060500)))

(declare-fun bm!606538 () Bool)

(declare-fun call!606545 () Bool)

(declare-fun c!1245891 () Bool)

(assert (=> bm!606538 (= call!606545 (validRegex!8283 (ite c!1245891 (reg!16876 lt!2436657) (ite c!1245890 (regTwo!33607 lt!2436657) (regTwo!33606 lt!2436657)))))))

(declare-fun b!6719737 () Bool)

(declare-fun e!4060497 () Bool)

(assert (=> b!6719737 (= e!4060497 call!606545)))

(declare-fun bm!606539 () Bool)

(assert (=> bm!606539 (= call!606543 call!606545)))

(declare-fun b!6719738 () Bool)

(declare-fun e!4060495 () Bool)

(assert (=> b!6719738 (= e!4060495 call!606543)))

(declare-fun b!6719739 () Bool)

(assert (=> b!6719739 (= e!4060494 e!4060497)))

(declare-fun res!2749894 () Bool)

(assert (=> b!6719739 (= res!2749894 (not (nullable!6534 (reg!16876 lt!2436657))))))

(assert (=> b!6719739 (=> (not res!2749894) (not e!4060497))))

(declare-fun b!6719740 () Bool)

(assert (=> b!6719740 (= e!4060500 e!4060494)))

(assert (=> b!6719740 (= c!1245891 ((_ is Star!16547) lt!2436657))))

(declare-fun b!6719741 () Bool)

(assert (=> b!6719741 (= e!4060496 e!4060495)))

(declare-fun res!2749892 () Bool)

(assert (=> b!6719741 (=> (not res!2749892) (not e!4060495))))

(assert (=> b!6719741 (= res!2749892 call!606544)))

(declare-fun bm!606540 () Bool)

(assert (=> bm!606540 (= call!606544 (validRegex!8283 (ite c!1245890 (regOne!33607 lt!2436657) (regOne!33606 lt!2436657))))))

(assert (= (and d!2111851 (not res!2749891)) b!6719740))

(assert (= (and b!6719740 c!1245891) b!6719739))

(assert (= (and b!6719740 (not c!1245891)) b!6719736))

(assert (= (and b!6719739 res!2749894) b!6719737))

(assert (= (and b!6719736 c!1245890) b!6719735))

(assert (= (and b!6719736 (not c!1245890)) b!6719734))

(assert (= (and b!6719735 res!2749895) b!6719733))

(assert (= (and b!6719734 (not res!2749893)) b!6719741))

(assert (= (and b!6719741 res!2749892) b!6719738))

(assert (= (or b!6719733 b!6719738) bm!606539))

(assert (= (or b!6719735 b!6719741) bm!606540))

(assert (= (or b!6719737 bm!606539) bm!606538))

(declare-fun m!7482038 () Bool)

(assert (=> bm!606538 m!7482038))

(declare-fun m!7482040 () Bool)

(assert (=> b!6719739 m!7482040))

(declare-fun m!7482042 () Bool)

(assert (=> bm!606540 m!7482042))

(assert (=> d!2111761 d!2111851))

(declare-fun d!2111853 () Bool)

(declare-fun res!2749896 () Bool)

(declare-fun e!4060501 () Bool)

(assert (=> d!2111853 (=> res!2749896 e!4060501)))

(assert (=> d!2111853 (= res!2749896 ((_ is Nil!65816) (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> d!2111853 (= (forall!15747 (t!379617 (exprs!6431 (h!72265 zl!343))) lambda!376941) e!4060501)))

(declare-fun b!6719742 () Bool)

(declare-fun e!4060502 () Bool)

(assert (=> b!6719742 (= e!4060501 e!4060502)))

(declare-fun res!2749897 () Bool)

(assert (=> b!6719742 (=> (not res!2749897) (not e!4060502))))

(assert (=> b!6719742 (= res!2749897 (dynLambda!26246 lambda!376941 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6719743 () Bool)

(assert (=> b!6719743 (= e!4060502 (forall!15747 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))) lambda!376941))))

(assert (= (and d!2111853 (not res!2749896)) b!6719742))

(assert (= (and b!6719742 res!2749897) b!6719743))

(declare-fun b_lambda!253013 () Bool)

(assert (=> (not b_lambda!253013) (not b!6719742)))

(declare-fun m!7482044 () Bool)

(assert (=> b!6719742 m!7482044))

(declare-fun m!7482046 () Bool)

(assert (=> b!6719743 m!7482046))

(assert (=> d!2111761 d!2111853))

(declare-fun d!2111855 () Bool)

(assert (=> d!2111855 (= (isEmptyLang!1920 lt!2436624) ((_ is EmptyLang!16547) lt!2436624))))

(assert (=> b!6718860 d!2111855))

(declare-fun bs!1787809 () Bool)

(declare-fun b!6719754 () Bool)

(assert (= bs!1787809 (and b!6719754 d!2111467)))

(declare-fun lambda!376946 () Int)

(assert (=> bs!1787809 (not (= lambda!376946 lambda!376886))))

(declare-fun bs!1787810 () Bool)

(assert (= bs!1787810 (and b!6719754 b!6718346)))

(assert (=> bs!1787810 (not (= lambda!376946 lambda!376863))))

(declare-fun bs!1787811 () Bool)

(assert (= bs!1787811 (and b!6719754 b!6719732)))

(assert (=> bs!1787811 (= (and (= (reg!16876 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 (regOne!33607 (regOne!33607 r!7292)))) (= (regOne!33607 (regTwo!33607 r!7292)) (regOne!33607 (regOne!33607 r!7292)))) (= lambda!376946 lambda!376944))))

(declare-fun bs!1787812 () Bool)

(assert (= bs!1787812 (and b!6719754 b!6719725)))

(assert (=> bs!1787812 (not (= lambda!376946 lambda!376945))))

(declare-fun bs!1787813 () Bool)

(assert (= bs!1787813 (and b!6719754 d!2111631)))

(assert (=> bs!1787813 (= (and (= (reg!16876 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regOne!33607 (regTwo!33607 r!7292)) (Star!16547 (reg!16876 r!7292)))) (= lambda!376946 lambda!376923))))

(declare-fun bs!1787814 () Bool)

(assert (= bs!1787814 (and b!6719754 b!6718353)))

(assert (=> bs!1787814 (= (and (= (reg!16876 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regOne!33607 (regTwo!33607 r!7292)) r!7292)) (= lambda!376946 lambda!376862))))

(declare-fun bs!1787815 () Bool)

(assert (= bs!1787815 (and b!6719754 b!6718097)))

(assert (=> bs!1787815 (not (= lambda!376946 lambda!376827))))

(declare-fun bs!1787816 () Bool)

(assert (= bs!1787816 (and b!6719754 d!2111655)))

(assert (=> bs!1787816 (not (= lambda!376946 lambda!376934))))

(declare-fun bs!1787817 () Bool)

(assert (= bs!1787817 (and b!6719754 d!2111469)))

(assert (=> bs!1787817 (not (= lambda!376946 lambda!376891))))

(declare-fun bs!1787818 () Bool)

(assert (= bs!1787818 (and b!6719754 b!6719488)))

(assert (=> bs!1787818 (not (= lambda!376946 lambda!376943))))

(declare-fun bs!1787819 () Bool)

(assert (= bs!1787819 (and b!6719754 b!6718915)))

(assert (=> bs!1787819 (= (and (= (reg!16876 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 (regOne!33607 r!7292))) (= (regOne!33607 (regTwo!33607 r!7292)) (regOne!33607 r!7292))) (= lambda!376946 lambda!376901))))

(assert (=> bs!1787815 (= (and (= (reg!16876 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regOne!33607 (regTwo!33607 r!7292)) r!7292)) (= lambda!376946 lambda!376826))))

(assert (=> bs!1787816 (not (= lambda!376946 lambda!376935))))

(assert (=> bs!1787809 (not (= lambda!376946 lambda!376885))))

(declare-fun bs!1787820 () Bool)

(assert (= bs!1787820 (and b!6719754 b!6719495)))

(assert (=> bs!1787820 (= (and (= (reg!16876 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 (regTwo!33607 r!7292))) (= (regOne!33607 (regTwo!33607 r!7292)) (regTwo!33607 r!7292))) (= lambda!376946 lambda!376942))))

(declare-fun bs!1787821 () Bool)

(assert (= bs!1787821 (and b!6719754 d!2111573)))

(assert (=> bs!1787821 (not (= lambda!376946 lambda!376905))))

(assert (=> bs!1787817 (= (and (= (reg!16876 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regOne!33607 (regTwo!33607 r!7292)) (Star!16547 (reg!16876 r!7292)))) (= lambda!376946 lambda!376892))))

(assert (=> bs!1787815 (not (= lambda!376946 lambda!376825))))

(declare-fun bs!1787822 () Bool)

(assert (= bs!1787822 (and b!6719754 d!2111481)))

(assert (=> bs!1787822 (not (= lambda!376946 lambda!376895))))

(assert (=> bs!1787813 (not (= lambda!376946 lambda!376922))))

(declare-fun bs!1787823 () Bool)

(assert (= bs!1787823 (and b!6719754 b!6718908)))

(assert (=> bs!1787823 (not (= lambda!376946 lambda!376902))))

(assert (=> b!6719754 true))

(assert (=> b!6719754 true))

(declare-fun bs!1787824 () Bool)

(declare-fun b!6719747 () Bool)

(assert (= bs!1787824 (and b!6719747 d!2111467)))

(declare-fun lambda!376947 () Int)

(assert (=> bs!1787824 (= (and (= (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))) r!7292)) (= lambda!376947 lambda!376886))))

(declare-fun bs!1787825 () Bool)

(assert (= bs!1787825 (and b!6719747 b!6718346)))

(assert (=> bs!1787825 (= (and (= (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))) (regOne!33606 r!7292)) (= (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))) (regTwo!33606 r!7292))) (= lambda!376947 lambda!376863))))

(declare-fun bs!1787826 () Bool)

(assert (= bs!1787826 (and b!6719747 b!6719732)))

(assert (=> bs!1787826 (not (= lambda!376947 lambda!376944))))

(declare-fun bs!1787827 () Bool)

(assert (= bs!1787827 (and b!6719747 b!6719725)))

(assert (=> bs!1787827 (= (and (= (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))) (regOne!33606 (regOne!33607 (regOne!33607 r!7292)))) (= (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))) (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))))) (= lambda!376947 lambda!376945))))

(declare-fun bs!1787828 () Bool)

(assert (= bs!1787828 (and b!6719747 d!2111631)))

(assert (=> bs!1787828 (not (= lambda!376947 lambda!376923))))

(declare-fun bs!1787829 () Bool)

(assert (= bs!1787829 (and b!6719747 b!6718353)))

(assert (=> bs!1787829 (not (= lambda!376947 lambda!376862))))

(declare-fun bs!1787830 () Bool)

(assert (= bs!1787830 (and b!6719747 d!2111655)))

(assert (=> bs!1787830 (not (= lambda!376947 lambda!376934))))

(declare-fun bs!1787831 () Bool)

(assert (= bs!1787831 (and b!6719747 d!2111469)))

(assert (=> bs!1787831 (not (= lambda!376947 lambda!376891))))

(declare-fun bs!1787832 () Bool)

(assert (= bs!1787832 (and b!6719747 b!6719488)))

(assert (=> bs!1787832 (= (and (= (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))) (regOne!33606 (regTwo!33607 r!7292))) (= (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))) (regTwo!33606 (regTwo!33607 r!7292)))) (= lambda!376947 lambda!376943))))

(declare-fun bs!1787833 () Bool)

(assert (= bs!1787833 (and b!6719747 b!6718915)))

(assert (=> bs!1787833 (not (= lambda!376947 lambda!376901))))

(declare-fun bs!1787834 () Bool)

(assert (= bs!1787834 (and b!6719747 b!6718097)))

(assert (=> bs!1787834 (not (= lambda!376947 lambda!376826))))

(assert (=> bs!1787830 (= (and (= (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))) r!7292)) (= lambda!376947 lambda!376935))))

(assert (=> bs!1787824 (not (= lambda!376947 lambda!376885))))

(declare-fun bs!1787835 () Bool)

(assert (= bs!1787835 (and b!6719747 b!6719495)))

(assert (=> bs!1787835 (not (= lambda!376947 lambda!376942))))

(declare-fun bs!1787836 () Bool)

(assert (= bs!1787836 (and b!6719747 d!2111573)))

(assert (=> bs!1787836 (not (= lambda!376947 lambda!376905))))

(assert (=> bs!1787831 (not (= lambda!376947 lambda!376892))))

(assert (=> bs!1787834 (not (= lambda!376947 lambda!376825))))

(declare-fun bs!1787837 () Bool)

(assert (= bs!1787837 (and b!6719747 d!2111481)))

(assert (=> bs!1787837 (not (= lambda!376947 lambda!376895))))

(declare-fun bs!1787838 () Bool)

(assert (= bs!1787838 (and b!6719747 b!6719754)))

(assert (=> bs!1787838 (not (= lambda!376947 lambda!376946))))

(assert (=> bs!1787834 (= (and (= (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))) r!7292)) (= lambda!376947 lambda!376827))))

(assert (=> bs!1787828 (not (= lambda!376947 lambda!376922))))

(declare-fun bs!1787839 () Bool)

(assert (= bs!1787839 (and b!6719747 b!6718908)))

(assert (=> bs!1787839 (= (and (= (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))) (regOne!33606 (regOne!33607 r!7292))) (= (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))) (regTwo!33606 (regOne!33607 r!7292)))) (= lambda!376947 lambda!376902))))

(assert (=> b!6719747 true))

(assert (=> b!6719747 true))

(declare-fun b!6719744 () Bool)

(declare-fun e!4060509 () Bool)

(declare-fun e!4060507 () Bool)

(assert (=> b!6719744 (= e!4060509 e!4060507)))

(declare-fun res!2749898 () Bool)

(assert (=> b!6719744 (= res!2749898 (matchRSpec!3648 (regOne!33607 (regOne!33607 (regTwo!33607 r!7292))) s!2326))))

(assert (=> b!6719744 (=> res!2749898 e!4060507)))

(declare-fun b!6719745 () Bool)

(declare-fun c!1245892 () Bool)

(assert (=> b!6719745 (= c!1245892 ((_ is Union!16547) (regOne!33607 (regTwo!33607 r!7292))))))

(declare-fun e!4060503 () Bool)

(assert (=> b!6719745 (= e!4060503 e!4060509)))

(declare-fun b!6719746 () Bool)

(assert (=> b!6719746 (= e!4060503 (= s!2326 (Cons!65818 (c!1245533 (regOne!33607 (regTwo!33607 r!7292))) Nil!65818)))))

(declare-fun b!6719748 () Bool)

(declare-fun c!1245893 () Bool)

(assert (=> b!6719748 (= c!1245893 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33607 r!7292))))))

(declare-fun e!4060504 () Bool)

(assert (=> b!6719748 (= e!4060504 e!4060503)))

(declare-fun b!6719749 () Bool)

(declare-fun res!2749900 () Bool)

(declare-fun e!4060508 () Bool)

(assert (=> b!6719749 (=> res!2749900 e!4060508)))

(declare-fun call!606546 () Bool)

(assert (=> b!6719749 (= res!2749900 call!606546)))

(declare-fun e!4060505 () Bool)

(assert (=> b!6719749 (= e!4060505 e!4060508)))

(declare-fun b!6719750 () Bool)

(declare-fun e!4060506 () Bool)

(assert (=> b!6719750 (= e!4060506 call!606546)))

(declare-fun b!6719751 () Bool)

(assert (=> b!6719751 (= e!4060507 (matchRSpec!3648 (regTwo!33607 (regOne!33607 (regTwo!33607 r!7292))) s!2326))))

(declare-fun bm!606541 () Bool)

(assert (=> bm!606541 (= call!606546 (isEmpty!38137 s!2326))))

(declare-fun b!6719752 () Bool)

(assert (=> b!6719752 (= e!4060506 e!4060504)))

(declare-fun res!2749899 () Bool)

(assert (=> b!6719752 (= res!2749899 (not ((_ is EmptyLang!16547) (regOne!33607 (regTwo!33607 r!7292)))))))

(assert (=> b!6719752 (=> (not res!2749899) (not e!4060504))))

(declare-fun b!6719753 () Bool)

(assert (=> b!6719753 (= e!4060509 e!4060505)))

(declare-fun c!1245895 () Bool)

(assert (=> b!6719753 (= c!1245895 ((_ is Star!16547) (regOne!33607 (regTwo!33607 r!7292))))))

(declare-fun call!606547 () Bool)

(assert (=> b!6719747 (= e!4060505 call!606547)))

(declare-fun d!2111857 () Bool)

(declare-fun c!1245894 () Bool)

(assert (=> d!2111857 (= c!1245894 ((_ is EmptyExpr!16547) (regOne!33607 (regTwo!33607 r!7292))))))

(assert (=> d!2111857 (= (matchRSpec!3648 (regOne!33607 (regTwo!33607 r!7292)) s!2326) e!4060506)))

(assert (=> b!6719754 (= e!4060508 call!606547)))

(declare-fun bm!606542 () Bool)

(assert (=> bm!606542 (= call!606547 (Exists!3615 (ite c!1245895 lambda!376946 lambda!376947)))))

(assert (= (and d!2111857 c!1245894) b!6719750))

(assert (= (and d!2111857 (not c!1245894)) b!6719752))

(assert (= (and b!6719752 res!2749899) b!6719748))

(assert (= (and b!6719748 c!1245893) b!6719746))

(assert (= (and b!6719748 (not c!1245893)) b!6719745))

(assert (= (and b!6719745 c!1245892) b!6719744))

(assert (= (and b!6719745 (not c!1245892)) b!6719753))

(assert (= (and b!6719744 (not res!2749898)) b!6719751))

(assert (= (and b!6719753 c!1245895) b!6719749))

(assert (= (and b!6719753 (not c!1245895)) b!6719747))

(assert (= (and b!6719749 (not res!2749900)) b!6719754))

(assert (= (or b!6719754 b!6719747) bm!606542))

(assert (= (or b!6719750 b!6719749) bm!606541))

(declare-fun m!7482048 () Bool)

(assert (=> b!6719744 m!7482048))

(declare-fun m!7482050 () Bool)

(assert (=> b!6719751 m!7482050))

(assert (=> bm!606541 m!7480976))

(declare-fun m!7482052 () Bool)

(assert (=> bm!606542 m!7482052))

(assert (=> b!6719485 d!2111857))

(declare-fun b!6719755 () Bool)

(declare-fun call!606550 () Regex!16547)

(declare-fun e!4060513 () Regex!16547)

(declare-fun call!606551 () Regex!16547)

(assert (=> b!6719755 (= e!4060513 (Union!16547 (Concat!25392 call!606551 (regTwo!33606 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292))))) call!606550))))

(declare-fun bm!606543 () Bool)

(declare-fun call!606549 () Regex!16547)

(assert (=> bm!606543 (= call!606551 call!606549)))

(declare-fun bm!606544 () Bool)

(declare-fun call!606548 () Regex!16547)

(declare-fun c!1245897 () Bool)

(declare-fun c!1245896 () Bool)

(assert (=> bm!606544 (= call!606548 (derivativeStep!5219 (ite c!1245896 (regOne!33607 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))) (ite c!1245897 (regTwo!33606 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))) (regOne!33606 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))))) (head!13522 s!2326)))))

(declare-fun d!2111859 () Bool)

(declare-fun lt!2436671 () Regex!16547)

(assert (=> d!2111859 (validRegex!8283 lt!2436671)))

(declare-fun e!4060511 () Regex!16547)

(assert (=> d!2111859 (= lt!2436671 e!4060511)))

(declare-fun c!1245898 () Bool)

(assert (=> d!2111859 (= c!1245898 (or ((_ is EmptyExpr!16547) (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))) ((_ is EmptyLang!16547) (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292))))))))

(assert (=> d!2111859 (validRegex!8283 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292))))))

(assert (=> d!2111859 (= (derivativeStep!5219 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292))) (head!13522 s!2326)) lt!2436671)))

(declare-fun b!6719756 () Bool)

(declare-fun e!4060510 () Regex!16547)

(declare-fun e!4060512 () Regex!16547)

(assert (=> b!6719756 (= e!4060510 e!4060512)))

(declare-fun c!1245899 () Bool)

(assert (=> b!6719756 (= c!1245899 ((_ is Star!16547) (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))))))

(declare-fun b!6719757 () Bool)

(assert (=> b!6719757 (= e!4060510 (Union!16547 call!606548 call!606549))))

(declare-fun b!6719758 () Bool)

(assert (=> b!6719758 (= c!1245897 (nullable!6534 (regOne!33606 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292))))))))

(assert (=> b!6719758 (= e!4060512 e!4060513)))

(declare-fun b!6719759 () Bool)

(assert (=> b!6719759 (= e!4060512 (Concat!25392 call!606551 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))))))

(declare-fun b!6719760 () Bool)

(assert (=> b!6719760 (= c!1245896 ((_ is Union!16547) (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))))))

(declare-fun e!4060514 () Regex!16547)

(assert (=> b!6719760 (= e!4060514 e!4060510)))

(declare-fun bm!606545 () Bool)

(assert (=> bm!606545 (= call!606550 call!606548)))

(declare-fun b!6719761 () Bool)

(assert (=> b!6719761 (= e!4060511 e!4060514)))

(declare-fun c!1245900 () Bool)

(assert (=> b!6719761 (= c!1245900 ((_ is ElementMatch!16547) (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))))))

(declare-fun b!6719762 () Bool)

(assert (=> b!6719762 (= e!4060511 EmptyLang!16547)))

(declare-fun b!6719763 () Bool)

(assert (=> b!6719763 (= e!4060514 (ite (= (head!13522 s!2326) (c!1245533 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292))))) EmptyExpr!16547 EmptyLang!16547))))

(declare-fun b!6719764 () Bool)

(assert (=> b!6719764 (= e!4060513 (Union!16547 (Concat!25392 call!606550 (regTwo!33606 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292))))) EmptyLang!16547))))

(declare-fun bm!606546 () Bool)

(assert (=> bm!606546 (= call!606549 (derivativeStep!5219 (ite c!1245896 (regTwo!33607 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))) (ite c!1245899 (reg!16876 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))) (regOne!33606 (ite c!1245845 (regOne!33607 r!7292) (ite c!1245846 (regTwo!33606 r!7292) (regOne!33606 r!7292)))))) (head!13522 s!2326)))))

(assert (= (and d!2111859 c!1245898) b!6719762))

(assert (= (and d!2111859 (not c!1245898)) b!6719761))

(assert (= (and b!6719761 c!1245900) b!6719763))

(assert (= (and b!6719761 (not c!1245900)) b!6719760))

(assert (= (and b!6719760 c!1245896) b!6719757))

(assert (= (and b!6719760 (not c!1245896)) b!6719756))

(assert (= (and b!6719756 c!1245899) b!6719759))

(assert (= (and b!6719756 (not c!1245899)) b!6719758))

(assert (= (and b!6719758 c!1245897) b!6719755))

(assert (= (and b!6719758 (not c!1245897)) b!6719764))

(assert (= (or b!6719755 b!6719764) bm!606545))

(assert (= (or b!6719759 b!6719755) bm!606543))

(assert (= (or b!6719757 bm!606543) bm!606546))

(assert (= (or b!6719757 bm!606545) bm!606544))

(assert (=> bm!606544 m!7481142))

(declare-fun m!7482054 () Bool)

(assert (=> bm!606544 m!7482054))

(declare-fun m!7482056 () Bool)

(assert (=> d!2111859 m!7482056))

(declare-fun m!7482058 () Bool)

(assert (=> d!2111859 m!7482058))

(declare-fun m!7482060 () Bool)

(assert (=> b!6719758 m!7482060))

(assert (=> bm!606546 m!7481142))

(declare-fun m!7482062 () Bool)

(assert (=> bm!606546 m!7482062))

(assert (=> bm!606497 d!2111859))

(declare-fun bs!1787840 () Bool)

(declare-fun d!2111861 () Bool)

(assert (= bs!1787840 (and d!2111861 d!2111417)))

(declare-fun lambda!376948 () Int)

(assert (=> bs!1787840 (= lambda!376948 lambda!376848)))

(declare-fun bs!1787841 () Bool)

(assert (= bs!1787841 (and d!2111861 d!2111453)))

(assert (=> bs!1787841 (= lambda!376948 lambda!376879)))

(declare-fun bs!1787842 () Bool)

(assert (= bs!1787842 (and d!2111861 d!2111677)))

(assert (=> bs!1787842 (= lambda!376948 lambda!376936)))

(declare-fun bs!1787843 () Bool)

(assert (= bs!1787843 (and d!2111861 d!2111399)))

(assert (=> bs!1787843 (= lambda!376948 lambda!376836)))

(declare-fun bs!1787844 () Bool)

(assert (= bs!1787844 (and d!2111861 d!2111761)))

(assert (=> bs!1787844 (= lambda!376948 lambda!376941)))

(declare-fun bs!1787845 () Bool)

(assert (= bs!1787845 (and d!2111861 d!2111401)))

(assert (=> bs!1787845 (= lambda!376948 lambda!376839)))

(declare-fun bs!1787846 () Bool)

(assert (= bs!1787846 (and d!2111861 d!2111737)))

(assert (=> bs!1787846 (= lambda!376948 lambda!376938)))

(declare-fun bs!1787847 () Bool)

(assert (= bs!1787847 (and d!2111861 d!2111589)))

(assert (=> bs!1787847 (= lambda!376948 lambda!376912)))

(declare-fun bs!1787848 () Bool)

(assert (= bs!1787848 (and d!2111861 d!2111551)))

(assert (=> bs!1787848 (= lambda!376948 lambda!376900)))

(declare-fun bs!1787849 () Bool)

(assert (= bs!1787849 (and d!2111861 d!2111461)))

(assert (=> bs!1787849 (= lambda!376948 lambda!376880)))

(declare-fun b!6719766 () Bool)

(declare-fun e!4060518 () Bool)

(declare-fun lt!2436672 () Regex!16547)

(assert (=> b!6719766 (= e!4060518 (isUnion!1350 lt!2436672))))

(declare-fun b!6719767 () Bool)

(declare-fun e!4060515 () Bool)

(assert (=> b!6719767 (= e!4060515 (isEmptyLang!1920 lt!2436672))))

(declare-fun b!6719768 () Bool)

(assert (=> b!6719768 (= e!4060515 e!4060518)))

(declare-fun c!1245901 () Bool)

(assert (=> b!6719768 (= c!1245901 (isEmpty!38141 (tail!12606 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343))))))))

(declare-fun b!6719769 () Bool)

(declare-fun e!4060519 () Bool)

(assert (=> b!6719769 (= e!4060519 e!4060515)))

(declare-fun c!1245903 () Bool)

(assert (=> b!6719769 (= c!1245903 (isEmpty!38141 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(declare-fun b!6719770 () Bool)

(declare-fun e!4060517 () Regex!16547)

(assert (=> b!6719770 (= e!4060517 EmptyLang!16547)))

(declare-fun b!6719765 () Bool)

(declare-fun e!4060516 () Regex!16547)

(assert (=> b!6719765 (= e!4060516 e!4060517)))

(declare-fun c!1245904 () Bool)

(assert (=> b!6719765 (= c!1245904 ((_ is Cons!65816) (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(assert (=> d!2111861 e!4060519))

(declare-fun res!2749901 () Bool)

(assert (=> d!2111861 (=> (not res!2749901) (not e!4060519))))

(assert (=> d!2111861 (= res!2749901 (validRegex!8283 lt!2436672))))

(assert (=> d!2111861 (= lt!2436672 e!4060516)))

(declare-fun c!1245902 () Bool)

(declare-fun e!4060520 () Bool)

(assert (=> d!2111861 (= c!1245902 e!4060520)))

(declare-fun res!2749902 () Bool)

(assert (=> d!2111861 (=> (not res!2749902) (not e!4060520))))

(assert (=> d!2111861 (= res!2749902 ((_ is Cons!65816) (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(assert (=> d!2111861 (forall!15747 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343))) lambda!376948)))

(assert (=> d!2111861 (= (generalisedUnion!2391 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))) lt!2436672)))

(declare-fun b!6719771 () Bool)

(assert (=> b!6719771 (= e!4060517 (Union!16547 (h!72264 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))) (generalisedUnion!2391 (t!379617 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))))))))

(declare-fun b!6719772 () Bool)

(assert (=> b!6719772 (= e!4060516 (h!72264 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(declare-fun b!6719773 () Bool)

(assert (=> b!6719773 (= e!4060520 (isEmpty!38141 (t!379617 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343))))))))

(declare-fun b!6719774 () Bool)

(assert (=> b!6719774 (= e!4060518 (= lt!2436672 (head!13521 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343))))))))

(assert (= (and d!2111861 res!2749902) b!6719773))

(assert (= (and d!2111861 c!1245902) b!6719772))

(assert (= (and d!2111861 (not c!1245902)) b!6719765))

(assert (= (and b!6719765 c!1245904) b!6719771))

(assert (= (and b!6719765 (not c!1245904)) b!6719770))

(assert (= (and d!2111861 res!2749901) b!6719769))

(assert (= (and b!6719769 c!1245903) b!6719767))

(assert (= (and b!6719769 (not c!1245903)) b!6719768))

(assert (= (and b!6719768 c!1245901) b!6719774))

(assert (= (and b!6719768 (not c!1245901)) b!6719766))

(declare-fun m!7482064 () Bool)

(assert (=> d!2111861 m!7482064))

(declare-fun m!7482066 () Bool)

(assert (=> d!2111861 m!7482066))

(declare-fun m!7482068 () Bool)

(assert (=> b!6719774 m!7482068))

(declare-fun m!7482070 () Bool)

(assert (=> b!6719768 m!7482070))

(assert (=> b!6719768 m!7482070))

(declare-fun m!7482072 () Bool)

(assert (=> b!6719768 m!7482072))

(declare-fun m!7482074 () Bool)

(assert (=> b!6719766 m!7482074))

(declare-fun m!7482076 () Bool)

(assert (=> b!6719773 m!7482076))

(assert (=> b!6719769 m!7481378))

(declare-fun m!7482078 () Bool)

(assert (=> b!6719767 m!7482078))

(declare-fun m!7482080 () Bool)

(assert (=> b!6719771 m!7482080))

(assert (=> b!6718864 d!2111861))

(declare-fun d!2111863 () Bool)

(assert (=> d!2111863 (= (isEmptyExpr!1913 lt!2436657) ((_ is EmptyExpr!16547) lt!2436657))))

(assert (=> b!6719415 d!2111863))

(declare-fun d!2111865 () Bool)

(assert (=> d!2111865 (= (isEmpty!38137 (tail!12607 (tail!12607 s!2326))) ((_ is Nil!65818) (tail!12607 (tail!12607 s!2326))))))

(assert (=> b!6719442 d!2111865))

(declare-fun d!2111867 () Bool)

(assert (=> d!2111867 (= (tail!12607 (tail!12607 s!2326)) (t!379619 (tail!12607 s!2326)))))

(assert (=> b!6719442 d!2111867))

(declare-fun bs!1787850 () Bool)

(declare-fun d!2111869 () Bool)

(assert (= bs!1787850 (and d!2111869 d!2111417)))

(declare-fun lambda!376949 () Int)

(assert (=> bs!1787850 (= lambda!376949 lambda!376848)))

(declare-fun bs!1787851 () Bool)

(assert (= bs!1787851 (and d!2111869 d!2111453)))

(assert (=> bs!1787851 (= lambda!376949 lambda!376879)))

(declare-fun bs!1787852 () Bool)

(assert (= bs!1787852 (and d!2111869 d!2111677)))

(assert (=> bs!1787852 (= lambda!376949 lambda!376936)))

(declare-fun bs!1787853 () Bool)

(assert (= bs!1787853 (and d!2111869 d!2111399)))

(assert (=> bs!1787853 (= lambda!376949 lambda!376836)))

(declare-fun bs!1787854 () Bool)

(assert (= bs!1787854 (and d!2111869 d!2111861)))

(assert (=> bs!1787854 (= lambda!376949 lambda!376948)))

(declare-fun bs!1787855 () Bool)

(assert (= bs!1787855 (and d!2111869 d!2111761)))

(assert (=> bs!1787855 (= lambda!376949 lambda!376941)))

(declare-fun bs!1787856 () Bool)

(assert (= bs!1787856 (and d!2111869 d!2111401)))

(assert (=> bs!1787856 (= lambda!376949 lambda!376839)))

(declare-fun bs!1787857 () Bool)

(assert (= bs!1787857 (and d!2111869 d!2111737)))

(assert (=> bs!1787857 (= lambda!376949 lambda!376938)))

(declare-fun bs!1787858 () Bool)

(assert (= bs!1787858 (and d!2111869 d!2111589)))

(assert (=> bs!1787858 (= lambda!376949 lambda!376912)))

(declare-fun bs!1787859 () Bool)

(assert (= bs!1787859 (and d!2111869 d!2111551)))

(assert (=> bs!1787859 (= lambda!376949 lambda!376900)))

(declare-fun bs!1787860 () Bool)

(assert (= bs!1787860 (and d!2111869 d!2111461)))

(assert (=> bs!1787860 (= lambda!376949 lambda!376880)))

(declare-fun b!6719775 () Bool)

(declare-fun e!4060521 () Bool)

(assert (=> b!6719775 (= e!4060521 (isEmpty!38141 (t!379617 (exprs!6431 (h!72265 (t!379618 zl!343))))))))

(declare-fun b!6719776 () Bool)

(declare-fun e!4060524 () Regex!16547)

(assert (=> b!6719776 (= e!4060524 EmptyExpr!16547)))

(declare-fun b!6719777 () Bool)

(declare-fun e!4060526 () Bool)

(declare-fun e!4060522 () Bool)

(assert (=> b!6719777 (= e!4060526 e!4060522)))

(declare-fun c!1245908 () Bool)

(assert (=> b!6719777 (= c!1245908 (isEmpty!38141 (tail!12606 (exprs!6431 (h!72265 (t!379618 zl!343))))))))

(declare-fun b!6719778 () Bool)

(declare-fun lt!2436673 () Regex!16547)

(assert (=> b!6719778 (= e!4060526 (isEmptyExpr!1913 lt!2436673))))

(declare-fun e!4060523 () Bool)

(assert (=> d!2111869 e!4060523))

(declare-fun res!2749904 () Bool)

(assert (=> d!2111869 (=> (not res!2749904) (not e!4060523))))

(assert (=> d!2111869 (= res!2749904 (validRegex!8283 lt!2436673))))

(declare-fun e!4060525 () Regex!16547)

(assert (=> d!2111869 (= lt!2436673 e!4060525)))

(declare-fun c!1245906 () Bool)

(assert (=> d!2111869 (= c!1245906 e!4060521)))

(declare-fun res!2749903 () Bool)

(assert (=> d!2111869 (=> (not res!2749903) (not e!4060521))))

(assert (=> d!2111869 (= res!2749903 ((_ is Cons!65816) (exprs!6431 (h!72265 (t!379618 zl!343)))))))

(assert (=> d!2111869 (forall!15747 (exprs!6431 (h!72265 (t!379618 zl!343))) lambda!376949)))

(assert (=> d!2111869 (= (generalisedConcat!2144 (exprs!6431 (h!72265 (t!379618 zl!343)))) lt!2436673)))

(declare-fun b!6719779 () Bool)

(assert (=> b!6719779 (= e!4060522 (= lt!2436673 (head!13521 (exprs!6431 (h!72265 (t!379618 zl!343))))))))

(declare-fun b!6719780 () Bool)

(assert (=> b!6719780 (= e!4060525 (h!72264 (exprs!6431 (h!72265 (t!379618 zl!343)))))))

(declare-fun b!6719781 () Bool)

(assert (=> b!6719781 (= e!4060523 e!4060526)))

(declare-fun c!1245905 () Bool)

(assert (=> b!6719781 (= c!1245905 (isEmpty!38141 (exprs!6431 (h!72265 (t!379618 zl!343)))))))

(declare-fun b!6719782 () Bool)

(assert (=> b!6719782 (= e!4060525 e!4060524)))

(declare-fun c!1245907 () Bool)

(assert (=> b!6719782 (= c!1245907 ((_ is Cons!65816) (exprs!6431 (h!72265 (t!379618 zl!343)))))))

(declare-fun b!6719783 () Bool)

(assert (=> b!6719783 (= e!4060522 (isConcat!1436 lt!2436673))))

(declare-fun b!6719784 () Bool)

(assert (=> b!6719784 (= e!4060524 (Concat!25392 (h!72264 (exprs!6431 (h!72265 (t!379618 zl!343)))) (generalisedConcat!2144 (t!379617 (exprs!6431 (h!72265 (t!379618 zl!343)))))))))

(assert (= (and d!2111869 res!2749903) b!6719775))

(assert (= (and d!2111869 c!1245906) b!6719780))

(assert (= (and d!2111869 (not c!1245906)) b!6719782))

(assert (= (and b!6719782 c!1245907) b!6719784))

(assert (= (and b!6719782 (not c!1245907)) b!6719776))

(assert (= (and d!2111869 res!2749904) b!6719781))

(assert (= (and b!6719781 c!1245905) b!6719778))

(assert (= (and b!6719781 (not c!1245905)) b!6719777))

(assert (= (and b!6719777 c!1245908) b!6719779))

(assert (= (and b!6719777 (not c!1245908)) b!6719783))

(declare-fun m!7482082 () Bool)

(assert (=> b!6719783 m!7482082))

(declare-fun m!7482084 () Bool)

(assert (=> b!6719781 m!7482084))

(declare-fun m!7482086 () Bool)

(assert (=> b!6719779 m!7482086))

(declare-fun m!7482088 () Bool)

(assert (=> b!6719775 m!7482088))

(declare-fun m!7482090 () Bool)

(assert (=> b!6719784 m!7482090))

(declare-fun m!7482092 () Bool)

(assert (=> d!2111869 m!7482092))

(declare-fun m!7482094 () Bool)

(assert (=> d!2111869 m!7482094))

(declare-fun m!7482096 () Bool)

(assert (=> b!6719777 m!7482096))

(assert (=> b!6719777 m!7482096))

(declare-fun m!7482098 () Bool)

(assert (=> b!6719777 m!7482098))

(declare-fun m!7482100 () Bool)

(assert (=> b!6719778 m!7482100))

(assert (=> b!6719127 d!2111869))

(declare-fun bs!1787861 () Bool)

(declare-fun d!2111871 () Bool)

(assert (= bs!1787861 (and d!2111871 d!2111417)))

(declare-fun lambda!376950 () Int)

(assert (=> bs!1787861 (= lambda!376950 lambda!376848)))

(declare-fun bs!1787862 () Bool)

(assert (= bs!1787862 (and d!2111871 d!2111453)))

(assert (=> bs!1787862 (= lambda!376950 lambda!376879)))

(declare-fun bs!1787863 () Bool)

(assert (= bs!1787863 (and d!2111871 d!2111677)))

(assert (=> bs!1787863 (= lambda!376950 lambda!376936)))

(declare-fun bs!1787864 () Bool)

(assert (= bs!1787864 (and d!2111871 d!2111399)))

(assert (=> bs!1787864 (= lambda!376950 lambda!376836)))

(declare-fun bs!1787865 () Bool)

(assert (= bs!1787865 (and d!2111871 d!2111861)))

(assert (=> bs!1787865 (= lambda!376950 lambda!376948)))

(declare-fun bs!1787866 () Bool)

(assert (= bs!1787866 (and d!2111871 d!2111761)))

(assert (=> bs!1787866 (= lambda!376950 lambda!376941)))

(declare-fun bs!1787867 () Bool)

(assert (= bs!1787867 (and d!2111871 d!2111401)))

(assert (=> bs!1787867 (= lambda!376950 lambda!376839)))

(declare-fun bs!1787868 () Bool)

(assert (= bs!1787868 (and d!2111871 d!2111869)))

(assert (=> bs!1787868 (= lambda!376950 lambda!376949)))

(declare-fun bs!1787869 () Bool)

(assert (= bs!1787869 (and d!2111871 d!2111737)))

(assert (=> bs!1787869 (= lambda!376950 lambda!376938)))

(declare-fun bs!1787870 () Bool)

(assert (= bs!1787870 (and d!2111871 d!2111589)))

(assert (=> bs!1787870 (= lambda!376950 lambda!376912)))

(declare-fun bs!1787871 () Bool)

(assert (= bs!1787871 (and d!2111871 d!2111551)))

(assert (=> bs!1787871 (= lambda!376950 lambda!376900)))

(declare-fun bs!1787872 () Bool)

(assert (= bs!1787872 (and d!2111871 d!2111461)))

(assert (=> bs!1787872 (= lambda!376950 lambda!376880)))

(declare-fun lt!2436674 () List!65940)

(assert (=> d!2111871 (forall!15747 lt!2436674 lambda!376950)))

(declare-fun e!4060527 () List!65940)

(assert (=> d!2111871 (= lt!2436674 e!4060527)))

(declare-fun c!1245909 () Bool)

(assert (=> d!2111871 (= c!1245909 ((_ is Cons!65817) (t!379618 (t!379618 zl!343))))))

(assert (=> d!2111871 (= (unfocusZipperList!1968 (t!379618 (t!379618 zl!343))) lt!2436674)))

(declare-fun b!6719785 () Bool)

(assert (=> b!6719785 (= e!4060527 (Cons!65816 (generalisedConcat!2144 (exprs!6431 (h!72265 (t!379618 (t!379618 zl!343))))) (unfocusZipperList!1968 (t!379618 (t!379618 (t!379618 zl!343))))))))

(declare-fun b!6719786 () Bool)

(assert (=> b!6719786 (= e!4060527 Nil!65816)))

(assert (= (and d!2111871 c!1245909) b!6719785))

(assert (= (and d!2111871 (not c!1245909)) b!6719786))

(declare-fun m!7482102 () Bool)

(assert (=> d!2111871 m!7482102))

(declare-fun m!7482104 () Bool)

(assert (=> b!6719785 m!7482104))

(declare-fun m!7482106 () Bool)

(assert (=> b!6719785 m!7482106))

(assert (=> b!6719127 d!2111871))

(declare-fun d!2111873 () Bool)

(assert (=> d!2111873 (= (head!13522 (tail!12607 s!2326)) (h!72266 (tail!12607 s!2326)))))

(assert (=> b!6719438 d!2111873))

(declare-fun b!6719787 () Bool)

(declare-fun e!4060532 () Bool)

(declare-fun call!606552 () Bool)

(assert (=> b!6719787 (= e!4060532 call!606552)))

(declare-fun b!6719788 () Bool)

(declare-fun res!2749907 () Bool)

(declare-fun e!4060530 () Bool)

(assert (=> b!6719788 (=> res!2749907 e!4060530)))

(assert (=> b!6719788 (= res!2749907 (not ((_ is Concat!25392) lt!2436661)))))

(declare-fun e!4060533 () Bool)

(assert (=> b!6719788 (= e!4060533 e!4060530)))

(declare-fun b!6719789 () Bool)

(declare-fun res!2749909 () Bool)

(assert (=> b!6719789 (=> (not res!2749909) (not e!4060532))))

(declare-fun call!606553 () Bool)

(assert (=> b!6719789 (= res!2749909 call!606553)))

(assert (=> b!6719789 (= e!4060533 e!4060532)))

(declare-fun b!6719790 () Bool)

(declare-fun e!4060528 () Bool)

(assert (=> b!6719790 (= e!4060528 e!4060533)))

(declare-fun c!1245910 () Bool)

(assert (=> b!6719790 (= c!1245910 ((_ is Union!16547) lt!2436661))))

(declare-fun d!2111875 () Bool)

(declare-fun res!2749905 () Bool)

(declare-fun e!4060534 () Bool)

(assert (=> d!2111875 (=> res!2749905 e!4060534)))

(assert (=> d!2111875 (= res!2749905 ((_ is ElementMatch!16547) lt!2436661))))

(assert (=> d!2111875 (= (validRegex!8283 lt!2436661) e!4060534)))

(declare-fun call!606554 () Bool)

(declare-fun bm!606547 () Bool)

(declare-fun c!1245911 () Bool)

(assert (=> bm!606547 (= call!606554 (validRegex!8283 (ite c!1245911 (reg!16876 lt!2436661) (ite c!1245910 (regTwo!33607 lt!2436661) (regTwo!33606 lt!2436661)))))))

(declare-fun b!6719791 () Bool)

(declare-fun e!4060531 () Bool)

(assert (=> b!6719791 (= e!4060531 call!606554)))

(declare-fun bm!606548 () Bool)

(assert (=> bm!606548 (= call!606552 call!606554)))

(declare-fun b!6719792 () Bool)

(declare-fun e!4060529 () Bool)

(assert (=> b!6719792 (= e!4060529 call!606552)))

(declare-fun b!6719793 () Bool)

(assert (=> b!6719793 (= e!4060528 e!4060531)))

(declare-fun res!2749908 () Bool)

(assert (=> b!6719793 (= res!2749908 (not (nullable!6534 (reg!16876 lt!2436661))))))

(assert (=> b!6719793 (=> (not res!2749908) (not e!4060531))))

(declare-fun b!6719794 () Bool)

(assert (=> b!6719794 (= e!4060534 e!4060528)))

(assert (=> b!6719794 (= c!1245911 ((_ is Star!16547) lt!2436661))))

(declare-fun b!6719795 () Bool)

(assert (=> b!6719795 (= e!4060530 e!4060529)))

(declare-fun res!2749906 () Bool)

(assert (=> b!6719795 (=> (not res!2749906) (not e!4060529))))

(assert (=> b!6719795 (= res!2749906 call!606553)))

(declare-fun bm!606549 () Bool)

(assert (=> bm!606549 (= call!606553 (validRegex!8283 (ite c!1245910 (regOne!33607 lt!2436661) (regOne!33606 lt!2436661))))))

(assert (= (and d!2111875 (not res!2749905)) b!6719794))

(assert (= (and b!6719794 c!1245911) b!6719793))

(assert (= (and b!6719794 (not c!1245911)) b!6719790))

(assert (= (and b!6719793 res!2749908) b!6719791))

(assert (= (and b!6719790 c!1245910) b!6719789))

(assert (= (and b!6719790 (not c!1245910)) b!6719788))

(assert (= (and b!6719789 res!2749909) b!6719787))

(assert (= (and b!6719788 (not res!2749907)) b!6719795))

(assert (= (and b!6719795 res!2749906) b!6719792))

(assert (= (or b!6719787 b!6719792) bm!606548))

(assert (= (or b!6719789 b!6719795) bm!606549))

(assert (= (or b!6719791 bm!606548) bm!606547))

(declare-fun m!7482108 () Bool)

(assert (=> bm!606547 m!7482108))

(declare-fun m!7482110 () Bool)

(assert (=> b!6719793 m!7482110))

(declare-fun m!7482112 () Bool)

(assert (=> bm!606549 m!7482112))

(assert (=> d!2111779 d!2111875))

(assert (=> d!2111779 d!2111459))

(declare-fun b!6719796 () Bool)

(declare-fun e!4060539 () Bool)

(declare-fun call!606555 () Bool)

(assert (=> b!6719796 (= e!4060539 call!606555)))

(declare-fun b!6719797 () Bool)

(declare-fun res!2749912 () Bool)

(declare-fun e!4060537 () Bool)

(assert (=> b!6719797 (=> res!2749912 e!4060537)))

(assert (=> b!6719797 (= res!2749912 (not ((_ is Concat!25392) (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))))

(declare-fun e!4060540 () Bool)

(assert (=> b!6719797 (= e!4060540 e!4060537)))

(declare-fun b!6719798 () Bool)

(declare-fun res!2749914 () Bool)

(assert (=> b!6719798 (=> (not res!2749914) (not e!4060539))))

(declare-fun call!606556 () Bool)

(assert (=> b!6719798 (= res!2749914 call!606556)))

(assert (=> b!6719798 (= e!4060540 e!4060539)))

(declare-fun b!6719799 () Bool)

(declare-fun e!4060535 () Bool)

(assert (=> b!6719799 (= e!4060535 e!4060540)))

(declare-fun c!1245912 () Bool)

(assert (=> b!6719799 (= c!1245912 ((_ is Union!16547) (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))))

(declare-fun d!2111877 () Bool)

(declare-fun res!2749910 () Bool)

(declare-fun e!4060541 () Bool)

(assert (=> d!2111877 (=> res!2749910 e!4060541)))

(assert (=> d!2111877 (= res!2749910 ((_ is ElementMatch!16547) (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))))

(assert (=> d!2111877 (= (validRegex!8283 (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))) e!4060541)))

(declare-fun c!1245913 () Bool)

(declare-fun call!606557 () Bool)

(declare-fun bm!606550 () Bool)

(assert (=> bm!606550 (= call!606557 (validRegex!8283 (ite c!1245913 (reg!16876 (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))) (ite c!1245912 (regTwo!33607 (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))) (regTwo!33606 (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))))))

(declare-fun b!6719800 () Bool)

(declare-fun e!4060538 () Bool)

(assert (=> b!6719800 (= e!4060538 call!606557)))

(declare-fun bm!606551 () Bool)

(assert (=> bm!606551 (= call!606555 call!606557)))

(declare-fun b!6719801 () Bool)

(declare-fun e!4060536 () Bool)

(assert (=> b!6719801 (= e!4060536 call!606555)))

(declare-fun b!6719802 () Bool)

(assert (=> b!6719802 (= e!4060535 e!4060538)))

(declare-fun res!2749913 () Bool)

(assert (=> b!6719802 (= res!2749913 (not (nullable!6534 (reg!16876 (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))))))

(assert (=> b!6719802 (=> (not res!2749913) (not e!4060538))))

(declare-fun b!6719803 () Bool)

(assert (=> b!6719803 (= e!4060541 e!4060535)))

(assert (=> b!6719803 (= c!1245913 ((_ is Star!16547) (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))))

(declare-fun b!6719804 () Bool)

(assert (=> b!6719804 (= e!4060537 e!4060536)))

(declare-fun res!2749911 () Bool)

(assert (=> b!6719804 (=> (not res!2749911) (not e!4060536))))

(assert (=> b!6719804 (= res!2749911 call!606556)))

(declare-fun bm!606552 () Bool)

(assert (=> bm!606552 (= call!606556 (validRegex!8283 (ite c!1245912 (regOne!33607 (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))) (regOne!33606 (ite c!1245759 (regOne!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regOne!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))))))

(assert (= (and d!2111877 (not res!2749910)) b!6719803))

(assert (= (and b!6719803 c!1245913) b!6719802))

(assert (= (and b!6719803 (not c!1245913)) b!6719799))

(assert (= (and b!6719802 res!2749913) b!6719800))

(assert (= (and b!6719799 c!1245912) b!6719798))

(assert (= (and b!6719799 (not c!1245912)) b!6719797))

(assert (= (and b!6719798 res!2749914) b!6719796))

(assert (= (and b!6719797 (not res!2749912)) b!6719804))

(assert (= (and b!6719804 res!2749911) b!6719801))

(assert (= (or b!6719796 b!6719801) bm!606551))

(assert (= (or b!6719798 b!6719804) bm!606552))

(assert (= (or b!6719800 bm!606551) bm!606550))

(declare-fun m!7482114 () Bool)

(assert (=> bm!606550 m!7482114))

(declare-fun m!7482116 () Bool)

(assert (=> b!6719802 m!7482116))

(declare-fun m!7482118 () Bool)

(assert (=> bm!606552 m!7482118))

(assert (=> bm!606446 d!2111877))

(declare-fun bs!1787873 () Bool)

(declare-fun d!2111879 () Bool)

(assert (= bs!1787873 (and d!2111879 d!2111417)))

(declare-fun lambda!376951 () Int)

(assert (=> bs!1787873 (= lambda!376951 lambda!376848)))

(declare-fun bs!1787874 () Bool)

(assert (= bs!1787874 (and d!2111879 d!2111453)))

(assert (=> bs!1787874 (= lambda!376951 lambda!376879)))

(declare-fun bs!1787875 () Bool)

(assert (= bs!1787875 (and d!2111879 d!2111677)))

(assert (=> bs!1787875 (= lambda!376951 lambda!376936)))

(declare-fun bs!1787876 () Bool)

(assert (= bs!1787876 (and d!2111879 d!2111399)))

(assert (=> bs!1787876 (= lambda!376951 lambda!376836)))

(declare-fun bs!1787877 () Bool)

(assert (= bs!1787877 (and d!2111879 d!2111861)))

(assert (=> bs!1787877 (= lambda!376951 lambda!376948)))

(declare-fun bs!1787878 () Bool)

(assert (= bs!1787878 (and d!2111879 d!2111871)))

(assert (=> bs!1787878 (= lambda!376951 lambda!376950)))

(declare-fun bs!1787879 () Bool)

(assert (= bs!1787879 (and d!2111879 d!2111761)))

(assert (=> bs!1787879 (= lambda!376951 lambda!376941)))

(declare-fun bs!1787880 () Bool)

(assert (= bs!1787880 (and d!2111879 d!2111401)))

(assert (=> bs!1787880 (= lambda!376951 lambda!376839)))

(declare-fun bs!1787881 () Bool)

(assert (= bs!1787881 (and d!2111879 d!2111869)))

(assert (=> bs!1787881 (= lambda!376951 lambda!376949)))

(declare-fun bs!1787882 () Bool)

(assert (= bs!1787882 (and d!2111879 d!2111737)))

(assert (=> bs!1787882 (= lambda!376951 lambda!376938)))

(declare-fun bs!1787883 () Bool)

(assert (= bs!1787883 (and d!2111879 d!2111589)))

(assert (=> bs!1787883 (= lambda!376951 lambda!376912)))

(declare-fun bs!1787884 () Bool)

(assert (= bs!1787884 (and d!2111879 d!2111551)))

(assert (=> bs!1787884 (= lambda!376951 lambda!376900)))

(declare-fun bs!1787885 () Bool)

(assert (= bs!1787885 (and d!2111879 d!2111461)))

(assert (=> bs!1787885 (= lambda!376951 lambda!376880)))

(assert (=> d!2111879 (= (inv!84614 setElem!45807) (forall!15747 (exprs!6431 setElem!45807) lambda!376951))))

(declare-fun bs!1787886 () Bool)

(assert (= bs!1787886 d!2111879))

(declare-fun m!7482120 () Bool)

(assert (=> bs!1787886 m!7482120))

(assert (=> setNonEmpty!45807 d!2111879))

(declare-fun b!6719805 () Bool)

(declare-fun e!4060546 () Bool)

(declare-fun call!606558 () Bool)

(assert (=> b!6719805 (= e!4060546 call!606558)))

(declare-fun b!6719806 () Bool)

(declare-fun res!2749917 () Bool)

(declare-fun e!4060544 () Bool)

(assert (=> b!6719806 (=> res!2749917 e!4060544)))

(assert (=> b!6719806 (= res!2749917 (not ((_ is Concat!25392) (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599)))))))

(declare-fun e!4060547 () Bool)

(assert (=> b!6719806 (= e!4060547 e!4060544)))

(declare-fun b!6719807 () Bool)

(declare-fun res!2749919 () Bool)

(assert (=> b!6719807 (=> (not res!2749919) (not e!4060546))))

(declare-fun call!606559 () Bool)

(assert (=> b!6719807 (= res!2749919 call!606559)))

(assert (=> b!6719807 (= e!4060547 e!4060546)))

(declare-fun b!6719808 () Bool)

(declare-fun e!4060542 () Bool)

(assert (=> b!6719808 (= e!4060542 e!4060547)))

(declare-fun c!1245914 () Bool)

(assert (=> b!6719808 (= c!1245914 ((_ is Union!16547) (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))))))

(declare-fun d!2111881 () Bool)

(declare-fun res!2749915 () Bool)

(declare-fun e!4060548 () Bool)

(assert (=> d!2111881 (=> res!2749915 e!4060548)))

(assert (=> d!2111881 (= res!2749915 ((_ is ElementMatch!16547) (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))))))

(assert (=> d!2111881 (= (validRegex!8283 (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))) e!4060548)))

(declare-fun call!606560 () Bool)

(declare-fun bm!606553 () Bool)

(declare-fun c!1245915 () Bool)

(assert (=> bm!606553 (= call!606560 (validRegex!8283 (ite c!1245915 (reg!16876 (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))) (ite c!1245914 (regTwo!33607 (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))) (regTwo!33606 (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599)))))))))

(declare-fun b!6719809 () Bool)

(declare-fun e!4060545 () Bool)

(assert (=> b!6719809 (= e!4060545 call!606560)))

(declare-fun bm!606554 () Bool)

(assert (=> bm!606554 (= call!606558 call!606560)))

(declare-fun b!6719810 () Bool)

(declare-fun e!4060543 () Bool)

(assert (=> b!6719810 (= e!4060543 call!606558)))

(declare-fun b!6719811 () Bool)

(assert (=> b!6719811 (= e!4060542 e!4060545)))

(declare-fun res!2749918 () Bool)

(assert (=> b!6719811 (= res!2749918 (not (nullable!6534 (reg!16876 (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))))))))

(assert (=> b!6719811 (=> (not res!2749918) (not e!4060545))))

(declare-fun b!6719812 () Bool)

(assert (=> b!6719812 (= e!4060548 e!4060542)))

(assert (=> b!6719812 (= c!1245915 ((_ is Star!16547) (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))))))

(declare-fun b!6719813 () Bool)

(assert (=> b!6719813 (= e!4060544 e!4060543)))

(declare-fun res!2749916 () Bool)

(assert (=> b!6719813 (=> (not res!2749916) (not e!4060543))))

(assert (=> b!6719813 (= res!2749916 call!606559)))

(declare-fun bm!606555 () Bool)

(assert (=> bm!606555 (= call!606559 (validRegex!8283 (ite c!1245914 (regOne!33607 (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))) (regOne!33606 (ite c!1245821 (regOne!33607 lt!2436599) (regOne!33606 lt!2436599))))))))

(assert (= (and d!2111881 (not res!2749915)) b!6719812))

(assert (= (and b!6719812 c!1245915) b!6719811))

(assert (= (and b!6719812 (not c!1245915)) b!6719808))

(assert (= (and b!6719811 res!2749918) b!6719809))

(assert (= (and b!6719808 c!1245914) b!6719807))

(assert (= (and b!6719808 (not c!1245914)) b!6719806))

(assert (= (and b!6719807 res!2749919) b!6719805))

(assert (= (and b!6719806 (not res!2749917)) b!6719813))

(assert (= (and b!6719813 res!2749916) b!6719810))

(assert (= (or b!6719805 b!6719810) bm!606554))

(assert (= (or b!6719807 b!6719813) bm!606555))

(assert (= (or b!6719809 bm!606554) bm!606553))

(declare-fun m!7482122 () Bool)

(assert (=> bm!606553 m!7482122))

(declare-fun m!7482124 () Bool)

(assert (=> b!6719811 m!7482124))

(declare-fun m!7482126 () Bool)

(assert (=> bm!606555 m!7482126))

(assert (=> bm!606483 d!2111881))

(declare-fun b!6719814 () Bool)

(declare-fun e!4060549 () Bool)

(declare-fun e!4060553 () Bool)

(assert (=> b!6719814 (= e!4060549 e!4060553)))

(declare-fun c!1245916 () Bool)

(assert (=> b!6719814 (= c!1245916 ((_ is Union!16547) (regOne!33606 r!7292)))))

(declare-fun bm!606556 () Bool)

(declare-fun call!606562 () Bool)

(assert (=> bm!606556 (= call!606562 (nullable!6534 (ite c!1245916 (regOne!33607 (regOne!33606 r!7292)) (regOne!33606 (regOne!33606 r!7292)))))))

(declare-fun b!6719815 () Bool)

(declare-fun e!4060550 () Bool)

(assert (=> b!6719815 (= e!4060553 e!4060550)))

(declare-fun res!2749924 () Bool)

(assert (=> b!6719815 (= res!2749924 call!606562)))

(assert (=> b!6719815 (=> res!2749924 e!4060550)))

(declare-fun bm!606557 () Bool)

(declare-fun call!606561 () Bool)

(assert (=> bm!606557 (= call!606561 (nullable!6534 (ite c!1245916 (regTwo!33607 (regOne!33606 r!7292)) (regTwo!33606 (regOne!33606 r!7292)))))))

(declare-fun d!2111883 () Bool)

(declare-fun res!2749922 () Bool)

(declare-fun e!4060551 () Bool)

(assert (=> d!2111883 (=> res!2749922 e!4060551)))

(assert (=> d!2111883 (= res!2749922 ((_ is EmptyExpr!16547) (regOne!33606 r!7292)))))

(assert (=> d!2111883 (= (nullableFct!2448 (regOne!33606 r!7292)) e!4060551)))

(declare-fun b!6719816 () Bool)

(declare-fun e!4060552 () Bool)

(assert (=> b!6719816 (= e!4060553 e!4060552)))

(declare-fun res!2749923 () Bool)

(assert (=> b!6719816 (= res!2749923 call!606562)))

(assert (=> b!6719816 (=> (not res!2749923) (not e!4060552))))

(declare-fun b!6719817 () Bool)

(declare-fun e!4060554 () Bool)

(assert (=> b!6719817 (= e!4060554 e!4060549)))

(declare-fun res!2749921 () Bool)

(assert (=> b!6719817 (=> res!2749921 e!4060549)))

(assert (=> b!6719817 (= res!2749921 ((_ is Star!16547) (regOne!33606 r!7292)))))

(declare-fun b!6719818 () Bool)

(assert (=> b!6719818 (= e!4060551 e!4060554)))

(declare-fun res!2749920 () Bool)

(assert (=> b!6719818 (=> (not res!2749920) (not e!4060554))))

(assert (=> b!6719818 (= res!2749920 (and (not ((_ is EmptyLang!16547) (regOne!33606 r!7292))) (not ((_ is ElementMatch!16547) (regOne!33606 r!7292)))))))

(declare-fun b!6719819 () Bool)

(assert (=> b!6719819 (= e!4060552 call!606561)))

(declare-fun b!6719820 () Bool)

(assert (=> b!6719820 (= e!4060550 call!606561)))

(assert (= (and d!2111883 (not res!2749922)) b!6719818))

(assert (= (and b!6719818 res!2749920) b!6719817))

(assert (= (and b!6719817 (not res!2749921)) b!6719814))

(assert (= (and b!6719814 c!1245916) b!6719815))

(assert (= (and b!6719814 (not c!1245916)) b!6719816))

(assert (= (and b!6719815 (not res!2749924)) b!6719820))

(assert (= (and b!6719816 res!2749923) b!6719819))

(assert (= (or b!6719820 b!6719819) bm!606557))

(assert (= (or b!6719815 b!6719816) bm!606556))

(declare-fun m!7482128 () Bool)

(assert (=> bm!606556 m!7482128))

(declare-fun m!7482130 () Bool)

(assert (=> bm!606557 m!7482130))

(assert (=> d!2111613 d!2111883))

(declare-fun d!2111885 () Bool)

(declare-fun c!1245917 () Bool)

(assert (=> d!2111885 (= c!1245917 ((_ is Nil!65817) (t!379618 lt!2436602)))))

(declare-fun e!4060555 () (InoxSet Context!11862))

(assert (=> d!2111885 (= (content!12763 (t!379618 lt!2436602)) e!4060555)))

(declare-fun b!6719821 () Bool)

(assert (=> b!6719821 (= e!4060555 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719822 () Bool)

(assert (=> b!6719822 (= e!4060555 ((_ map or) (store ((as const (Array Context!11862 Bool)) false) (h!72265 (t!379618 lt!2436602)) true) (content!12763 (t!379618 (t!379618 lt!2436602)))))))

(assert (= (and d!2111885 c!1245917) b!6719821))

(assert (= (and d!2111885 (not c!1245917)) b!6719822))

(declare-fun m!7482132 () Bool)

(assert (=> b!6719822 m!7482132))

(declare-fun m!7482134 () Bool)

(assert (=> b!6719822 m!7482134))

(assert (=> b!6719429 d!2111885))

(assert (=> b!6719502 d!2111623))

(declare-fun b!6719823 () Bool)

(declare-fun e!4060560 () Bool)

(declare-fun call!606563 () Bool)

(assert (=> b!6719823 (= e!4060560 call!606563)))

(declare-fun b!6719824 () Bool)

(declare-fun res!2749927 () Bool)

(declare-fun e!4060558 () Bool)

(assert (=> b!6719824 (=> res!2749927 e!4060558)))

(assert (=> b!6719824 (= res!2749927 (not ((_ is Concat!25392) (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554)))))))

(declare-fun e!4060561 () Bool)

(assert (=> b!6719824 (= e!4060561 e!4060558)))

(declare-fun b!6719825 () Bool)

(declare-fun res!2749929 () Bool)

(assert (=> b!6719825 (=> (not res!2749929) (not e!4060560))))

(declare-fun call!606564 () Bool)

(assert (=> b!6719825 (= res!2749929 call!606564)))

(assert (=> b!6719825 (= e!4060561 e!4060560)))

(declare-fun b!6719826 () Bool)

(declare-fun e!4060556 () Bool)

(assert (=> b!6719826 (= e!4060556 e!4060561)))

(declare-fun c!1245918 () Bool)

(assert (=> b!6719826 (= c!1245918 ((_ is Union!16547) (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))))))

(declare-fun d!2111887 () Bool)

(declare-fun res!2749925 () Bool)

(declare-fun e!4060562 () Bool)

(assert (=> d!2111887 (=> res!2749925 e!4060562)))

(assert (=> d!2111887 (= res!2749925 ((_ is ElementMatch!16547) (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))))))

(assert (=> d!2111887 (= (validRegex!8283 (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))) e!4060562)))

(declare-fun c!1245919 () Bool)

(declare-fun call!606565 () Bool)

(declare-fun bm!606558 () Bool)

(assert (=> bm!606558 (= call!606565 (validRegex!8283 (ite c!1245919 (reg!16876 (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))) (ite c!1245918 (regTwo!33607 (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))) (regTwo!33606 (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554)))))))))

(declare-fun b!6719827 () Bool)

(declare-fun e!4060559 () Bool)

(assert (=> b!6719827 (= e!4060559 call!606565)))

(declare-fun bm!606559 () Bool)

(assert (=> bm!606559 (= call!606563 call!606565)))

(declare-fun b!6719828 () Bool)

(declare-fun e!4060557 () Bool)

(assert (=> b!6719828 (= e!4060557 call!606563)))

(declare-fun b!6719829 () Bool)

(assert (=> b!6719829 (= e!4060556 e!4060559)))

(declare-fun res!2749928 () Bool)

(assert (=> b!6719829 (= res!2749928 (not (nullable!6534 (reg!16876 (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))))))))

(assert (=> b!6719829 (=> (not res!2749928) (not e!4060559))))

(declare-fun b!6719830 () Bool)

(assert (=> b!6719830 (= e!4060562 e!4060556)))

(assert (=> b!6719830 (= c!1245919 ((_ is Star!16547) (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))))))

(declare-fun b!6719831 () Bool)

(assert (=> b!6719831 (= e!4060558 e!4060557)))

(declare-fun res!2749926 () Bool)

(assert (=> b!6719831 (=> (not res!2749926) (not e!4060557))))

(assert (=> b!6719831 (= res!2749926 call!606564)))

(declare-fun bm!606560 () Bool)

(assert (=> bm!606560 (= call!606564 (validRegex!8283 (ite c!1245918 (regOne!33607 (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))) (regOne!33606 (ite c!1245823 (regOne!33607 lt!2436554) (regOne!33606 lt!2436554))))))))

(assert (= (and d!2111887 (not res!2749925)) b!6719830))

(assert (= (and b!6719830 c!1245919) b!6719829))

(assert (= (and b!6719830 (not c!1245919)) b!6719826))

(assert (= (and b!6719829 res!2749928) b!6719827))

(assert (= (and b!6719826 c!1245918) b!6719825))

(assert (= (and b!6719826 (not c!1245918)) b!6719824))

(assert (= (and b!6719825 res!2749929) b!6719823))

(assert (= (and b!6719824 (not res!2749927)) b!6719831))

(assert (= (and b!6719831 res!2749926) b!6719828))

(assert (= (or b!6719823 b!6719828) bm!606559))

(assert (= (or b!6719825 b!6719831) bm!606560))

(assert (= (or b!6719827 bm!606559) bm!606558))

(declare-fun m!7482136 () Bool)

(assert (=> bm!606558 m!7482136))

(declare-fun m!7482138 () Bool)

(assert (=> b!6719829 m!7482138))

(declare-fun m!7482140 () Bool)

(assert (=> bm!606560 m!7482140))

(assert (=> bm!606486 d!2111887))

(declare-fun d!2111889 () Bool)

(declare-fun res!2749930 () Bool)

(declare-fun e!4060563 () Bool)

(assert (=> d!2111889 (=> res!2749930 e!4060563)))

(assert (=> d!2111889 (= res!2749930 ((_ is Nil!65817) res!2749805))))

(assert (=> d!2111889 (= (noDuplicate!2340 res!2749805) e!4060563)))

(declare-fun b!6719832 () Bool)

(declare-fun e!4060564 () Bool)

(assert (=> b!6719832 (= e!4060563 e!4060564)))

(declare-fun res!2749931 () Bool)

(assert (=> b!6719832 (=> (not res!2749931) (not e!4060564))))

(assert (=> b!6719832 (= res!2749931 (not (contains!20245 (t!379618 res!2749805) (h!72265 res!2749805))))))

(declare-fun b!6719833 () Bool)

(assert (=> b!6719833 (= e!4060564 (noDuplicate!2340 (t!379618 res!2749805)))))

(assert (= (and d!2111889 (not res!2749930)) b!6719832))

(assert (= (and b!6719832 res!2749931) b!6719833))

(declare-fun m!7482142 () Bool)

(assert (=> b!6719832 m!7482142))

(declare-fun m!7482144 () Bool)

(assert (=> b!6719833 m!7482144))

(assert (=> d!2111753 d!2111889))

(declare-fun bm!606561 () Bool)

(declare-fun call!606570 () List!65940)

(declare-fun call!606571 () List!65940)

(assert (=> bm!606561 (= call!606570 call!606571)))

(declare-fun b!6719834 () Bool)

(declare-fun e!4060567 () (InoxSet Context!11862))

(assert (=> b!6719834 (= e!4060567 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719835 () Bool)

(declare-fun call!606566 () (InoxSet Context!11862))

(assert (=> b!6719835 (= e!4060567 call!606566)))

(declare-fun call!606568 () (InoxSet Context!11862))

(declare-fun bm!606562 () Bool)

(declare-fun c!1245923 () Bool)

(assert (=> bm!606562 (= call!606568 (derivationStepZipperDown!1775 (ite c!1245923 (regOne!33607 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))) (regOne!33606 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))) (ite c!1245923 (ite (or c!1245757 c!1245758) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606447)) (Context!11863 call!606571)) (h!72266 s!2326)))))

(declare-fun b!6719836 () Bool)

(declare-fun e!4060569 () (InoxSet Context!11862))

(declare-fun call!606567 () (InoxSet Context!11862))

(assert (=> b!6719836 (= e!4060569 ((_ map or) call!606568 call!606567))))

(declare-fun b!6719837 () Bool)

(declare-fun e!4060568 () Bool)

(assert (=> b!6719837 (= e!4060568 (nullable!6534 (regOne!33606 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))))

(declare-fun b!6719838 () Bool)

(declare-fun e!4060566 () (InoxSet Context!11862))

(assert (=> b!6719838 (= e!4060569 e!4060566)))

(declare-fun c!1245921 () Bool)

(assert (=> b!6719838 (= c!1245921 ((_ is Concat!25392) (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))))

(declare-fun e!4060565 () (InoxSet Context!11862))

(declare-fun b!6719839 () Bool)

(assert (=> b!6719839 (= e!4060565 (store ((as const (Array Context!11862 Bool)) false) (ite (or c!1245757 c!1245758) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606447)) true))))

(declare-fun b!6719840 () Bool)

(declare-fun e!4060570 () (InoxSet Context!11862))

(declare-fun call!606569 () (InoxSet Context!11862))

(assert (=> b!6719840 (= e!4060570 ((_ map or) call!606568 call!606569))))

(declare-fun b!6719841 () Bool)

(assert (=> b!6719841 (= e!4060565 e!4060570)))

(assert (=> b!6719841 (= c!1245923 ((_ is Union!16547) (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))))

(declare-fun bm!606564 () Bool)

(assert (=> bm!606564 (= call!606566 call!606567)))

(declare-fun b!6719842 () Bool)

(assert (=> b!6719842 (= e!4060566 call!606566)))

(declare-fun bm!606565 () Bool)

(declare-fun c!1245924 () Bool)

(assert (=> bm!606565 (= call!606571 ($colon$colon!2364 (exprs!6431 (ite (or c!1245757 c!1245758) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606447))) (ite (or c!1245924 c!1245921) (regTwo!33606 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))) (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))))

(declare-fun bm!606566 () Bool)

(assert (=> bm!606566 (= call!606569 (derivationStepZipperDown!1775 (ite c!1245923 (regTwo!33607 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))) (ite c!1245924 (regTwo!33606 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))) (ite c!1245921 (regOne!33606 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))) (reg!16876 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))) (ite (or c!1245923 c!1245924) (ite (or c!1245757 c!1245758) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606447)) (Context!11863 call!606570)) (h!72266 s!2326)))))

(declare-fun b!6719843 () Bool)

(declare-fun c!1245920 () Bool)

(assert (=> b!6719843 (= c!1245920 ((_ is Star!16547) (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))))

(assert (=> b!6719843 (= e!4060566 e!4060567)))

(declare-fun b!6719844 () Bool)

(assert (=> b!6719844 (= c!1245924 e!4060568)))

(declare-fun res!2749932 () Bool)

(assert (=> b!6719844 (=> (not res!2749932) (not e!4060568))))

(assert (=> b!6719844 (= res!2749932 ((_ is Concat!25392) (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))))

(assert (=> b!6719844 (= e!4060570 e!4060569)))

(declare-fun c!1245922 () Bool)

(declare-fun d!2111891 () Bool)

(assert (=> d!2111891 (= c!1245922 (and ((_ is ElementMatch!16547) (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))) (= (c!1245533 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))) (h!72266 s!2326))))))

(assert (=> d!2111891 (= (derivationStepZipperDown!1775 (ite c!1245757 (regTwo!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245758 (regTwo!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (ite c!1245755 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (reg!16876 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (ite (or c!1245757 c!1245758) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606447)) (h!72266 s!2326)) e!4060565)))

(declare-fun bm!606563 () Bool)

(assert (=> bm!606563 (= call!606567 call!606569)))

(assert (= (and d!2111891 c!1245922) b!6719839))

(assert (= (and d!2111891 (not c!1245922)) b!6719841))

(assert (= (and b!6719841 c!1245923) b!6719840))

(assert (= (and b!6719841 (not c!1245923)) b!6719844))

(assert (= (and b!6719844 res!2749932) b!6719837))

(assert (= (and b!6719844 c!1245924) b!6719836))

(assert (= (and b!6719844 (not c!1245924)) b!6719838))

(assert (= (and b!6719838 c!1245921) b!6719842))

(assert (= (and b!6719838 (not c!1245921)) b!6719843))

(assert (= (and b!6719843 c!1245920) b!6719835))

(assert (= (and b!6719843 (not c!1245920)) b!6719834))

(assert (= (or b!6719842 b!6719835) bm!606561))

(assert (= (or b!6719842 b!6719835) bm!606564))

(assert (= (or b!6719836 bm!606561) bm!606565))

(assert (= (or b!6719836 bm!606564) bm!606563))

(assert (= (or b!6719840 bm!606563) bm!606566))

(assert (= (or b!6719840 b!6719836) bm!606562))

(declare-fun m!7482146 () Bool)

(assert (=> bm!606562 m!7482146))

(declare-fun m!7482148 () Bool)

(assert (=> b!6719839 m!7482148))

(declare-fun m!7482150 () Bool)

(assert (=> bm!606566 m!7482150))

(declare-fun m!7482152 () Bool)

(assert (=> b!6719837 m!7482152))

(declare-fun m!7482154 () Bool)

(assert (=> bm!606565 m!7482154))

(assert (=> bm!606443 d!2111891))

(declare-fun d!2111893 () Bool)

(assert (=> d!2111893 (= (isEmpty!38141 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))) ((_ is Nil!65816) (t!379617 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(assert (=> b!6718866 d!2111893))

(declare-fun d!2111895 () Bool)

(declare-fun c!1245927 () Bool)

(assert (=> d!2111895 (= c!1245927 ((_ is Nil!65818) lt!2436645))))

(declare-fun e!4060573 () (InoxSet C!33364))

(assert (=> d!2111895 (= (content!12765 lt!2436645) e!4060573)))

(declare-fun b!6719849 () Bool)

(assert (=> b!6719849 (= e!4060573 ((as const (Array C!33364 Bool)) false))))

(declare-fun b!6719850 () Bool)

(assert (=> b!6719850 (= e!4060573 ((_ map or) (store ((as const (Array C!33364 Bool)) false) (h!72266 lt!2436645) true) (content!12765 (t!379619 lt!2436645))))))

(assert (= (and d!2111895 c!1245927) b!6719849))

(assert (= (and d!2111895 (not c!1245927)) b!6719850))

(declare-fun m!7482156 () Bool)

(assert (=> b!6719850 m!7482156))

(declare-fun m!7482158 () Bool)

(assert (=> b!6719850 m!7482158))

(assert (=> d!2111693 d!2111895))

(declare-fun d!2111897 () Bool)

(declare-fun c!1245928 () Bool)

(assert (=> d!2111897 (= c!1245928 ((_ is Nil!65818) (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))

(declare-fun e!4060574 () (InoxSet C!33364))

(assert (=> d!2111897 (= (content!12765 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) e!4060574)))

(declare-fun b!6719851 () Bool)

(assert (=> b!6719851 (= e!4060574 ((as const (Array C!33364 Bool)) false))))

(declare-fun b!6719852 () Bool)

(assert (=> b!6719852 (= e!4060574 ((_ map or) (store ((as const (Array C!33364 Bool)) false) (h!72266 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) true) (content!12765 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))))

(assert (= (and d!2111897 c!1245928) b!6719851))

(assert (= (and d!2111897 (not c!1245928)) b!6719852))

(declare-fun m!7482160 () Bool)

(assert (=> b!6719852 m!7482160))

(declare-fun m!7482162 () Bool)

(assert (=> b!6719852 m!7482162))

(assert (=> d!2111693 d!2111897))

(declare-fun d!2111899 () Bool)

(declare-fun c!1245929 () Bool)

(assert (=> d!2111899 (= c!1245929 ((_ is Nil!65818) (t!379619 s!2326)))))

(declare-fun e!4060575 () (InoxSet C!33364))

(assert (=> d!2111899 (= (content!12765 (t!379619 s!2326)) e!4060575)))

(declare-fun b!6719853 () Bool)

(assert (=> b!6719853 (= e!4060575 ((as const (Array C!33364 Bool)) false))))

(declare-fun b!6719854 () Bool)

(assert (=> b!6719854 (= e!4060575 ((_ map or) (store ((as const (Array C!33364 Bool)) false) (h!72266 (t!379619 s!2326)) true) (content!12765 (t!379619 (t!379619 s!2326)))))))

(assert (= (and d!2111899 c!1245929) b!6719853))

(assert (= (and d!2111899 (not c!1245929)) b!6719854))

(declare-fun m!7482164 () Bool)

(assert (=> b!6719854 m!7482164))

(declare-fun m!7482166 () Bool)

(assert (=> b!6719854 m!7482166))

(assert (=> d!2111693 d!2111899))

(declare-fun d!2111901 () Bool)

(declare-fun c!1245930 () Bool)

(declare-fun e!4060578 () Bool)

(assert (=> d!2111901 (= c!1245930 e!4060578)))

(declare-fun res!2749933 () Bool)

(assert (=> d!2111901 (=> (not res!2749933) (not e!4060578))))

(assert (=> d!2111901 (= res!2749933 ((_ is Cons!65816) (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))))

(declare-fun e!4060576 () (InoxSet Context!11862))

(assert (=> d!2111901 (= (derivationStepZipperUp!1701 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (h!72266 s!2326)) e!4060576)))

(declare-fun call!606572 () (InoxSet Context!11862))

(declare-fun b!6719855 () Bool)

(assert (=> b!6719855 (= e!4060576 ((_ map or) call!606572 (derivationStepZipperUp!1701 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))) (h!72266 s!2326))))))

(declare-fun b!6719856 () Bool)

(declare-fun e!4060577 () (InoxSet Context!11862))

(assert (=> b!6719856 (= e!4060577 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6719857 () Bool)

(assert (=> b!6719857 (= e!4060578 (nullable!6534 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))))))

(declare-fun bm!606567 () Bool)

(assert (=> bm!606567 (= call!606572 (derivationStepZipperDown!1775 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))) (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))) (h!72266 s!2326)))))

(declare-fun b!6719858 () Bool)

(assert (=> b!6719858 (= e!4060577 call!606572)))

(declare-fun b!6719859 () Bool)

(assert (=> b!6719859 (= e!4060576 e!4060577)))

(declare-fun c!1245931 () Bool)

(assert (=> b!6719859 (= c!1245931 ((_ is Cons!65816) (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))))

(assert (= (and d!2111901 res!2749933) b!6719857))

(assert (= (and d!2111901 c!1245930) b!6719855))

(assert (= (and d!2111901 (not c!1245930)) b!6719859))

(assert (= (and b!6719859 c!1245931) b!6719858))

(assert (= (and b!6719859 (not c!1245931)) b!6719856))

(assert (= (or b!6719855 b!6719858) bm!606567))

(declare-fun m!7482168 () Bool)

(assert (=> b!6719855 m!7482168))

(declare-fun m!7482170 () Bool)

(assert (=> b!6719857 m!7482170))

(declare-fun m!7482172 () Bool)

(assert (=> bm!606567 m!7482172))

(assert (=> b!6719149 d!2111901))

(declare-fun b!6719860 () Bool)

(declare-fun res!2749935 () Bool)

(declare-fun e!4060579 () Bool)

(assert (=> b!6719860 (=> (not res!2749935) (not e!4060579))))

(declare-fun call!606573 () Bool)

(assert (=> b!6719860 (= res!2749935 (not call!606573))))

(declare-fun b!6719861 () Bool)

(declare-fun e!4060582 () Bool)

(declare-fun e!4060583 () Bool)

(assert (=> b!6719861 (= e!4060582 e!4060583)))

(declare-fun res!2749941 () Bool)

(assert (=> b!6719861 (=> (not res!2749941) (not e!4060583))))

(declare-fun lt!2436675 () Bool)

(assert (=> b!6719861 (= res!2749941 (not lt!2436675))))

(declare-fun b!6719862 () Bool)

(declare-fun e!4060580 () Bool)

(assert (=> b!6719862 (= e!4060580 (matchR!8730 (derivativeStep!5219 (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326))) (head!13522 (tail!12607 (tail!12607 s!2326)))) (tail!12607 (tail!12607 (tail!12607 s!2326)))))))

(declare-fun d!2111903 () Bool)

(declare-fun e!4060584 () Bool)

(assert (=> d!2111903 e!4060584))

(declare-fun c!1245932 () Bool)

(assert (=> d!2111903 (= c!1245932 ((_ is EmptyExpr!16547) (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326)))))))

(assert (=> d!2111903 (= lt!2436675 e!4060580)))

(declare-fun c!1245933 () Bool)

(assert (=> d!2111903 (= c!1245933 (isEmpty!38137 (tail!12607 (tail!12607 s!2326))))))

(assert (=> d!2111903 (validRegex!8283 (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326))))))

(assert (=> d!2111903 (= (matchR!8730 (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326))) (tail!12607 (tail!12607 s!2326))) lt!2436675)))

(declare-fun b!6719863 () Bool)

(declare-fun e!4060581 () Bool)

(assert (=> b!6719863 (= e!4060581 (not lt!2436675))))

(declare-fun b!6719864 () Bool)

(declare-fun e!4060585 () Bool)

(assert (=> b!6719864 (= e!4060585 (not (= (head!13522 (tail!12607 (tail!12607 s!2326))) (c!1245533 (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326)))))))))

(declare-fun b!6719865 () Bool)

(assert (=> b!6719865 (= e!4060584 (= lt!2436675 call!606573))))

(declare-fun bm!606568 () Bool)

(assert (=> bm!606568 (= call!606573 (isEmpty!38137 (tail!12607 (tail!12607 s!2326))))))

(declare-fun b!6719866 () Bool)

(assert (=> b!6719866 (= e!4060580 (nullable!6534 (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326)))))))

(declare-fun b!6719867 () Bool)

(assert (=> b!6719867 (= e!4060584 e!4060581)))

(declare-fun c!1245934 () Bool)

(assert (=> b!6719867 (= c!1245934 ((_ is EmptyLang!16547) (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326)))))))

(declare-fun b!6719868 () Bool)

(assert (=> b!6719868 (= e!4060579 (= (head!13522 (tail!12607 (tail!12607 s!2326))) (c!1245533 (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326))))))))

(declare-fun b!6719869 () Bool)

(declare-fun res!2749938 () Bool)

(assert (=> b!6719869 (=> res!2749938 e!4060585)))

(assert (=> b!6719869 (= res!2749938 (not (isEmpty!38137 (tail!12607 (tail!12607 (tail!12607 s!2326))))))))

(declare-fun b!6719870 () Bool)

(declare-fun res!2749936 () Bool)

(assert (=> b!6719870 (=> res!2749936 e!4060582)))

(assert (=> b!6719870 (= res!2749936 e!4060579)))

(declare-fun res!2749940 () Bool)

(assert (=> b!6719870 (=> (not res!2749940) (not e!4060579))))

(assert (=> b!6719870 (= res!2749940 lt!2436675)))

(declare-fun b!6719871 () Bool)

(declare-fun res!2749937 () Bool)

(assert (=> b!6719871 (=> res!2749937 e!4060582)))

(assert (=> b!6719871 (= res!2749937 (not ((_ is ElementMatch!16547) (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326))))))))

(assert (=> b!6719871 (= e!4060581 e!4060582)))

(declare-fun b!6719872 () Bool)

(declare-fun res!2749934 () Bool)

(assert (=> b!6719872 (=> (not res!2749934) (not e!4060579))))

(assert (=> b!6719872 (= res!2749934 (isEmpty!38137 (tail!12607 (tail!12607 (tail!12607 s!2326)))))))

(declare-fun b!6719873 () Bool)

(assert (=> b!6719873 (= e!4060583 e!4060585)))

(declare-fun res!2749939 () Bool)

(assert (=> b!6719873 (=> res!2749939 e!4060585)))

(assert (=> b!6719873 (= res!2749939 call!606573)))

(assert (= (and d!2111903 c!1245933) b!6719866))

(assert (= (and d!2111903 (not c!1245933)) b!6719862))

(assert (= (and d!2111903 c!1245932) b!6719865))

(assert (= (and d!2111903 (not c!1245932)) b!6719867))

(assert (= (and b!6719867 c!1245934) b!6719863))

(assert (= (and b!6719867 (not c!1245934)) b!6719871))

(assert (= (and b!6719871 (not res!2749937)) b!6719870))

(assert (= (and b!6719870 res!2749940) b!6719860))

(assert (= (and b!6719860 res!2749935) b!6719872))

(assert (= (and b!6719872 res!2749934) b!6719868))

(assert (= (and b!6719870 (not res!2749936)) b!6719861))

(assert (= (and b!6719861 res!2749941) b!6719873))

(assert (= (and b!6719873 (not res!2749939)) b!6719869))

(assert (= (and b!6719869 (not res!2749938)) b!6719864))

(assert (= (or b!6719865 b!6719860 b!6719873) bm!606568))

(assert (=> b!6719868 m!7481898))

(declare-fun m!7482174 () Bool)

(assert (=> b!6719868 m!7482174))

(assert (=> b!6719864 m!7481898))

(assert (=> b!6719864 m!7482174))

(assert (=> bm!606568 m!7481898))

(assert (=> bm!606568 m!7481900))

(assert (=> b!6719869 m!7481898))

(declare-fun m!7482176 () Bool)

(assert (=> b!6719869 m!7482176))

(assert (=> b!6719869 m!7482176))

(declare-fun m!7482178 () Bool)

(assert (=> b!6719869 m!7482178))

(assert (=> d!2111903 m!7481898))

(assert (=> d!2111903 m!7481900))

(assert (=> d!2111903 m!7481904))

(declare-fun m!7482180 () Bool)

(assert (=> d!2111903 m!7482180))

(assert (=> b!6719872 m!7481898))

(assert (=> b!6719872 m!7482176))

(assert (=> b!6719872 m!7482176))

(assert (=> b!6719872 m!7482178))

(assert (=> b!6719862 m!7481898))

(assert (=> b!6719862 m!7482174))

(assert (=> b!6719862 m!7481904))

(assert (=> b!6719862 m!7482174))

(declare-fun m!7482182 () Bool)

(assert (=> b!6719862 m!7482182))

(assert (=> b!6719862 m!7481898))

(assert (=> b!6719862 m!7482176))

(assert (=> b!6719862 m!7482182))

(assert (=> b!6719862 m!7482176))

(declare-fun m!7482184 () Bool)

(assert (=> b!6719862 m!7482184))

(assert (=> b!6719866 m!7481904))

(declare-fun m!7482186 () Bool)

(assert (=> b!6719866 m!7482186))

(assert (=> b!6719432 d!2111903))

(declare-fun call!606577 () Regex!16547)

(declare-fun e!4060589 () Regex!16547)

(declare-fun call!606576 () Regex!16547)

(declare-fun b!6719874 () Bool)

(assert (=> b!6719874 (= e!4060589 (Union!16547 (Concat!25392 call!606577 (regTwo!33606 (derivativeStep!5219 r!7292 (head!13522 s!2326)))) call!606576))))

(declare-fun bm!606569 () Bool)

(declare-fun call!606575 () Regex!16547)

(assert (=> bm!606569 (= call!606577 call!606575)))

(declare-fun c!1245935 () Bool)

(declare-fun call!606574 () Regex!16547)

(declare-fun bm!606570 () Bool)

(declare-fun c!1245936 () Bool)

(assert (=> bm!606570 (= call!606574 (derivativeStep!5219 (ite c!1245935 (regOne!33607 (derivativeStep!5219 r!7292 (head!13522 s!2326))) (ite c!1245936 (regTwo!33606 (derivativeStep!5219 r!7292 (head!13522 s!2326))) (regOne!33606 (derivativeStep!5219 r!7292 (head!13522 s!2326))))) (head!13522 (tail!12607 s!2326))))))

(declare-fun d!2111905 () Bool)

(declare-fun lt!2436676 () Regex!16547)

(assert (=> d!2111905 (validRegex!8283 lt!2436676)))

(declare-fun e!4060587 () Regex!16547)

(assert (=> d!2111905 (= lt!2436676 e!4060587)))

(declare-fun c!1245937 () Bool)

(assert (=> d!2111905 (= c!1245937 (or ((_ is EmptyExpr!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326))) ((_ is EmptyLang!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326)))))))

(assert (=> d!2111905 (validRegex!8283 (derivativeStep!5219 r!7292 (head!13522 s!2326)))))

(assert (=> d!2111905 (= (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 s!2326)) (head!13522 (tail!12607 s!2326))) lt!2436676)))

(declare-fun b!6719875 () Bool)

(declare-fun e!4060586 () Regex!16547)

(declare-fun e!4060588 () Regex!16547)

(assert (=> b!6719875 (= e!4060586 e!4060588)))

(declare-fun c!1245938 () Bool)

(assert (=> b!6719875 (= c!1245938 ((_ is Star!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(declare-fun b!6719876 () Bool)

(assert (=> b!6719876 (= e!4060586 (Union!16547 call!606574 call!606575))))

(declare-fun b!6719877 () Bool)

(assert (=> b!6719877 (= c!1245936 (nullable!6534 (regOne!33606 (derivativeStep!5219 r!7292 (head!13522 s!2326)))))))

(assert (=> b!6719877 (= e!4060588 e!4060589)))

(declare-fun b!6719878 () Bool)

(assert (=> b!6719878 (= e!4060588 (Concat!25392 call!606577 (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(declare-fun b!6719879 () Bool)

(assert (=> b!6719879 (= c!1245935 ((_ is Union!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(declare-fun e!4060590 () Regex!16547)

(assert (=> b!6719879 (= e!4060590 e!4060586)))

(declare-fun bm!606571 () Bool)

(assert (=> bm!606571 (= call!606576 call!606574)))

(declare-fun b!6719880 () Bool)

(assert (=> b!6719880 (= e!4060587 e!4060590)))

(declare-fun c!1245939 () Bool)

(assert (=> b!6719880 (= c!1245939 ((_ is ElementMatch!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(declare-fun b!6719881 () Bool)

(assert (=> b!6719881 (= e!4060587 EmptyLang!16547)))

(declare-fun b!6719882 () Bool)

(assert (=> b!6719882 (= e!4060590 (ite (= (head!13522 (tail!12607 s!2326)) (c!1245533 (derivativeStep!5219 r!7292 (head!13522 s!2326)))) EmptyExpr!16547 EmptyLang!16547))))

(declare-fun b!6719883 () Bool)

(assert (=> b!6719883 (= e!4060589 (Union!16547 (Concat!25392 call!606576 (regTwo!33606 (derivativeStep!5219 r!7292 (head!13522 s!2326)))) EmptyLang!16547))))

(declare-fun bm!606572 () Bool)

(assert (=> bm!606572 (= call!606575 (derivativeStep!5219 (ite c!1245935 (regTwo!33607 (derivativeStep!5219 r!7292 (head!13522 s!2326))) (ite c!1245938 (reg!16876 (derivativeStep!5219 r!7292 (head!13522 s!2326))) (regOne!33606 (derivativeStep!5219 r!7292 (head!13522 s!2326))))) (head!13522 (tail!12607 s!2326))))))

(assert (= (and d!2111905 c!1245937) b!6719881))

(assert (= (and d!2111905 (not c!1245937)) b!6719880))

(assert (= (and b!6719880 c!1245939) b!6719882))

(assert (= (and b!6719880 (not c!1245939)) b!6719879))

(assert (= (and b!6719879 c!1245935) b!6719876))

(assert (= (and b!6719879 (not c!1245935)) b!6719875))

(assert (= (and b!6719875 c!1245938) b!6719878))

(assert (= (and b!6719875 (not c!1245938)) b!6719877))

(assert (= (and b!6719877 c!1245936) b!6719874))

(assert (= (and b!6719877 (not c!1245936)) b!6719883))

(assert (= (or b!6719874 b!6719883) bm!606571))

(assert (= (or b!6719878 b!6719874) bm!606569))

(assert (= (or b!6719876 bm!606569) bm!606572))

(assert (= (or b!6719876 bm!606571) bm!606570))

(assert (=> bm!606570 m!7481896))

(declare-fun m!7482188 () Bool)

(assert (=> bm!606570 m!7482188))

(declare-fun m!7482190 () Bool)

(assert (=> d!2111905 m!7482190))

(assert (=> d!2111905 m!7481148))

(assert (=> d!2111905 m!7481902))

(declare-fun m!7482192 () Bool)

(assert (=> b!6719877 m!7482192))

(assert (=> bm!606572 m!7481896))

(declare-fun m!7482194 () Bool)

(assert (=> bm!606572 m!7482194))

(assert (=> b!6719432 d!2111905))

(assert (=> b!6719432 d!2111873))

(assert (=> b!6719432 d!2111867))

(declare-fun d!2111907 () Bool)

(assert (=> d!2111907 (= (isEmpty!38137 (_2!36825 (get!22892 lt!2436617))) ((_ is Nil!65818) (_2!36825 (get!22892 lt!2436617))))))

(assert (=> bm!606447 d!2111907))

(declare-fun d!2111909 () Bool)

(assert (=> d!2111909 (= (nullable!6534 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))) (nullableFct!2448 (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))

(declare-fun bs!1787887 () Bool)

(assert (= bs!1787887 d!2111909))

(declare-fun m!7482196 () Bool)

(assert (=> bs!1787887 m!7482196))

(assert (=> b!6719004 d!2111909))

(declare-fun b!6719884 () Bool)

(declare-fun e!4060595 () Bool)

(declare-fun call!606578 () Bool)

(assert (=> b!6719884 (= e!4060595 call!606578)))

(declare-fun b!6719885 () Bool)

(declare-fun res!2749944 () Bool)

(declare-fun e!4060593 () Bool)

(assert (=> b!6719885 (=> res!2749944 e!4060593)))

(assert (=> b!6719885 (= res!2749944 (not ((_ is Concat!25392) (h!72264 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun e!4060596 () Bool)

(assert (=> b!6719885 (= e!4060596 e!4060593)))

(declare-fun b!6719886 () Bool)

(declare-fun res!2749946 () Bool)

(assert (=> b!6719886 (=> (not res!2749946) (not e!4060595))))

(declare-fun call!606579 () Bool)

(assert (=> b!6719886 (= res!2749946 call!606579)))

(assert (=> b!6719886 (= e!4060596 e!4060595)))

(declare-fun b!6719887 () Bool)

(declare-fun e!4060591 () Bool)

(assert (=> b!6719887 (= e!4060591 e!4060596)))

(declare-fun c!1245940 () Bool)

(assert (=> b!6719887 (= c!1245940 ((_ is Union!16547) (h!72264 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun d!2111911 () Bool)

(declare-fun res!2749942 () Bool)

(declare-fun e!4060597 () Bool)

(assert (=> d!2111911 (=> res!2749942 e!4060597)))

(assert (=> d!2111911 (= res!2749942 ((_ is ElementMatch!16547) (h!72264 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> d!2111911 (= (validRegex!8283 (h!72264 (exprs!6431 (h!72265 zl!343)))) e!4060597)))

(declare-fun c!1245941 () Bool)

(declare-fun call!606580 () Bool)

(declare-fun bm!606573 () Bool)

(assert (=> bm!606573 (= call!606580 (validRegex!8283 (ite c!1245941 (reg!16876 (h!72264 (exprs!6431 (h!72265 zl!343)))) (ite c!1245940 (regTwo!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))) (regTwo!33606 (h!72264 (exprs!6431 (h!72265 zl!343))))))))))

(declare-fun b!6719888 () Bool)

(declare-fun e!4060594 () Bool)

(assert (=> b!6719888 (= e!4060594 call!606580)))

(declare-fun bm!606574 () Bool)

(assert (=> bm!606574 (= call!606578 call!606580)))

(declare-fun b!6719889 () Bool)

(declare-fun e!4060592 () Bool)

(assert (=> b!6719889 (= e!4060592 call!606578)))

(declare-fun b!6719890 () Bool)

(assert (=> b!6719890 (= e!4060591 e!4060594)))

(declare-fun res!2749945 () Bool)

(assert (=> b!6719890 (= res!2749945 (not (nullable!6534 (reg!16876 (h!72264 (exprs!6431 (h!72265 zl!343)))))))))

(assert (=> b!6719890 (=> (not res!2749945) (not e!4060594))))

(declare-fun b!6719891 () Bool)

(assert (=> b!6719891 (= e!4060597 e!4060591)))

(assert (=> b!6719891 (= c!1245941 ((_ is Star!16547) (h!72264 (exprs!6431 (h!72265 zl!343)))))))

(declare-fun b!6719892 () Bool)

(assert (=> b!6719892 (= e!4060593 e!4060592)))

(declare-fun res!2749943 () Bool)

(assert (=> b!6719892 (=> (not res!2749943) (not e!4060592))))

(assert (=> b!6719892 (= res!2749943 call!606579)))

(declare-fun bm!606575 () Bool)

(assert (=> bm!606575 (= call!606579 (validRegex!8283 (ite c!1245940 (regOne!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))) (regOne!33606 (h!72264 (exprs!6431 (h!72265 zl!343)))))))))

(assert (= (and d!2111911 (not res!2749942)) b!6719891))

(assert (= (and b!6719891 c!1245941) b!6719890))

(assert (= (and b!6719891 (not c!1245941)) b!6719887))

(assert (= (and b!6719890 res!2749945) b!6719888))

(assert (= (and b!6719887 c!1245940) b!6719886))

(assert (= (and b!6719887 (not c!1245940)) b!6719885))

(assert (= (and b!6719886 res!2749946) b!6719884))

(assert (= (and b!6719885 (not res!2749944)) b!6719892))

(assert (= (and b!6719892 res!2749943) b!6719889))

(assert (= (or b!6719884 b!6719889) bm!606574))

(assert (= (or b!6719886 b!6719892) bm!606575))

(assert (= (or b!6719888 bm!606574) bm!606573))

(declare-fun m!7482198 () Bool)

(assert (=> bm!606573 m!7482198))

(declare-fun m!7482200 () Bool)

(assert (=> b!6719890 m!7482200))

(declare-fun m!7482202 () Bool)

(assert (=> bm!606575 m!7482202))

(assert (=> bs!1787776 d!2111911))

(declare-fun d!2111913 () Bool)

(assert (not d!2111913))

(assert (=> b!6718886 d!2111913))

(declare-fun d!2111915 () Bool)

(assert (=> d!2111915 (= (isEmpty!38141 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))) ((_ is Nil!65816) (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(assert (=> b!6719412 d!2111915))

(declare-fun bs!1787888 () Bool)

(declare-fun d!2111917 () Bool)

(assert (= bs!1787888 (and d!2111917 d!2111417)))

(declare-fun lambda!376952 () Int)

(assert (=> bs!1787888 (= lambda!376952 lambda!376848)))

(declare-fun bs!1787889 () Bool)

(assert (= bs!1787889 (and d!2111917 d!2111879)))

(assert (=> bs!1787889 (= lambda!376952 lambda!376951)))

(declare-fun bs!1787890 () Bool)

(assert (= bs!1787890 (and d!2111917 d!2111453)))

(assert (=> bs!1787890 (= lambda!376952 lambda!376879)))

(declare-fun bs!1787891 () Bool)

(assert (= bs!1787891 (and d!2111917 d!2111677)))

(assert (=> bs!1787891 (= lambda!376952 lambda!376936)))

(declare-fun bs!1787892 () Bool)

(assert (= bs!1787892 (and d!2111917 d!2111399)))

(assert (=> bs!1787892 (= lambda!376952 lambda!376836)))

(declare-fun bs!1787893 () Bool)

(assert (= bs!1787893 (and d!2111917 d!2111861)))

(assert (=> bs!1787893 (= lambda!376952 lambda!376948)))

(declare-fun bs!1787894 () Bool)

(assert (= bs!1787894 (and d!2111917 d!2111871)))

(assert (=> bs!1787894 (= lambda!376952 lambda!376950)))

(declare-fun bs!1787895 () Bool)

(assert (= bs!1787895 (and d!2111917 d!2111761)))

(assert (=> bs!1787895 (= lambda!376952 lambda!376941)))

(declare-fun bs!1787896 () Bool)

(assert (= bs!1787896 (and d!2111917 d!2111401)))

(assert (=> bs!1787896 (= lambda!376952 lambda!376839)))

(declare-fun bs!1787897 () Bool)

(assert (= bs!1787897 (and d!2111917 d!2111869)))

(assert (=> bs!1787897 (= lambda!376952 lambda!376949)))

(declare-fun bs!1787898 () Bool)

(assert (= bs!1787898 (and d!2111917 d!2111737)))

(assert (=> bs!1787898 (= lambda!376952 lambda!376938)))

(declare-fun bs!1787899 () Bool)

(assert (= bs!1787899 (and d!2111917 d!2111589)))

(assert (=> bs!1787899 (= lambda!376952 lambda!376912)))

(declare-fun bs!1787900 () Bool)

(assert (= bs!1787900 (and d!2111917 d!2111551)))

(assert (=> bs!1787900 (= lambda!376952 lambda!376900)))

(declare-fun bs!1787901 () Bool)

(assert (= bs!1787901 (and d!2111917 d!2111461)))

(assert (=> bs!1787901 (= lambda!376952 lambda!376880)))

(assert (=> d!2111917 (= (inv!84614 (h!72265 (t!379618 (t!379618 zl!343)))) (forall!15747 (exprs!6431 (h!72265 (t!379618 (t!379618 zl!343)))) lambda!376952))))

(declare-fun bs!1787902 () Bool)

(assert (= bs!1787902 d!2111917))

(declare-fun m!7482204 () Bool)

(assert (=> bs!1787902 m!7482204))

(assert (=> b!6719564 d!2111917))

(declare-fun b!6719893 () Bool)

(declare-fun e!4060598 () Bool)

(declare-fun e!4060602 () Bool)

(assert (=> b!6719893 (= e!4060598 e!4060602)))

(declare-fun c!1245942 () Bool)

(assert (=> b!6719893 (= c!1245942 ((_ is Union!16547) r!7292))))

(declare-fun bm!606576 () Bool)

(declare-fun call!606582 () Bool)

(assert (=> bm!606576 (= call!606582 (nullable!6534 (ite c!1245942 (regOne!33607 r!7292) (regOne!33606 r!7292))))))

(declare-fun b!6719894 () Bool)

(declare-fun e!4060599 () Bool)

(assert (=> b!6719894 (= e!4060602 e!4060599)))

(declare-fun res!2749951 () Bool)

(assert (=> b!6719894 (= res!2749951 call!606582)))

(assert (=> b!6719894 (=> res!2749951 e!4060599)))

(declare-fun bm!606577 () Bool)

(declare-fun call!606581 () Bool)

(assert (=> bm!606577 (= call!606581 (nullable!6534 (ite c!1245942 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))

(declare-fun d!2111919 () Bool)

(declare-fun res!2749949 () Bool)

(declare-fun e!4060600 () Bool)

(assert (=> d!2111919 (=> res!2749949 e!4060600)))

(assert (=> d!2111919 (= res!2749949 ((_ is EmptyExpr!16547) r!7292))))

(assert (=> d!2111919 (= (nullableFct!2448 r!7292) e!4060600)))

(declare-fun b!6719895 () Bool)

(declare-fun e!4060601 () Bool)

(assert (=> b!6719895 (= e!4060602 e!4060601)))

(declare-fun res!2749950 () Bool)

(assert (=> b!6719895 (= res!2749950 call!606582)))

(assert (=> b!6719895 (=> (not res!2749950) (not e!4060601))))

(declare-fun b!6719896 () Bool)

(declare-fun e!4060603 () Bool)

(assert (=> b!6719896 (= e!4060603 e!4060598)))

(declare-fun res!2749948 () Bool)

(assert (=> b!6719896 (=> res!2749948 e!4060598)))

(assert (=> b!6719896 (= res!2749948 ((_ is Star!16547) r!7292))))

(declare-fun b!6719897 () Bool)

(assert (=> b!6719897 (= e!4060600 e!4060603)))

(declare-fun res!2749947 () Bool)

(assert (=> b!6719897 (=> (not res!2749947) (not e!4060603))))

(assert (=> b!6719897 (= res!2749947 (and (not ((_ is EmptyLang!16547) r!7292)) (not ((_ is ElementMatch!16547) r!7292))))))

(declare-fun b!6719898 () Bool)

(assert (=> b!6719898 (= e!4060601 call!606581)))

(declare-fun b!6719899 () Bool)

(assert (=> b!6719899 (= e!4060599 call!606581)))

(assert (= (and d!2111919 (not res!2749949)) b!6719897))

(assert (= (and b!6719897 res!2749947) b!6719896))

(assert (= (and b!6719896 (not res!2749948)) b!6719893))

(assert (= (and b!6719893 c!1245942) b!6719894))

(assert (= (and b!6719893 (not c!1245942)) b!6719895))

(assert (= (and b!6719894 (not res!2749951)) b!6719899))

(assert (= (and b!6719895 res!2749950) b!6719898))

(assert (= (or b!6719899 b!6719898) bm!606577))

(assert (= (or b!6719894 b!6719895) bm!606576))

(declare-fun m!7482206 () Bool)

(assert (=> bm!606576 m!7482206))

(declare-fun m!7482208 () Bool)

(assert (=> bm!606577 m!7482208))

(assert (=> d!2111617 d!2111919))

(assert (=> b!6719030 d!2111809))

(assert (=> b!6719030 d!2111811))

(declare-fun d!2111921 () Bool)

(assert (=> d!2111921 true))

(assert (=> d!2111921 true))

(declare-fun res!2749952 () Bool)

(assert (=> d!2111921 (= (choose!50069 (ite c!1245593 lambda!376862 lambda!376863)) res!2749952)))

(assert (=> d!2111615 d!2111921))

(declare-fun d!2111923 () Bool)

(assert (=> d!2111923 (= (isConcat!1436 lt!2436657) ((_ is Concat!25392) lt!2436657))))

(assert (=> b!6719420 d!2111923))

(declare-fun d!2111925 () Bool)

(assert (=> d!2111925 (= (isEmpty!38142 lt!2436617) (not ((_ is Some!16433) lt!2436617)))))

(assert (=> d!2111559 d!2111925))

(declare-fun b!6719900 () Bool)

(declare-fun res!2749954 () Bool)

(declare-fun e!4060604 () Bool)

(assert (=> b!6719900 (=> (not res!2749954) (not e!4060604))))

(declare-fun call!606583 () Bool)

(assert (=> b!6719900 (= res!2749954 (not call!606583))))

(declare-fun b!6719901 () Bool)

(declare-fun e!4060607 () Bool)

(declare-fun e!4060608 () Bool)

(assert (=> b!6719901 (= e!4060607 e!4060608)))

(declare-fun res!2749960 () Bool)

(assert (=> b!6719901 (=> (not res!2749960) (not e!4060608))))

(declare-fun lt!2436677 () Bool)

(assert (=> b!6719901 (= res!2749960 (not lt!2436677))))

(declare-fun b!6719902 () Bool)

(declare-fun e!4060605 () Bool)

(assert (=> b!6719902 (= e!4060605 (matchR!8730 (derivativeStep!5219 (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617)))) (head!13522 (tail!12607 (_2!36825 (get!22892 lt!2436617))))) (tail!12607 (tail!12607 (_2!36825 (get!22892 lt!2436617))))))))

(declare-fun d!2111927 () Bool)

(declare-fun e!4060609 () Bool)

(assert (=> d!2111927 e!4060609))

(declare-fun c!1245943 () Bool)

(assert (=> d!2111927 (= c!1245943 ((_ is EmptyExpr!16547) (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617))))))))

(assert (=> d!2111927 (= lt!2436677 e!4060605)))

(declare-fun c!1245944 () Bool)

(assert (=> d!2111927 (= c!1245944 (isEmpty!38137 (tail!12607 (_2!36825 (get!22892 lt!2436617)))))))

(assert (=> d!2111927 (validRegex!8283 (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617)))))))

(assert (=> d!2111927 (= (matchR!8730 (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617)))) (tail!12607 (_2!36825 (get!22892 lt!2436617)))) lt!2436677)))

(declare-fun b!6719903 () Bool)

(declare-fun e!4060606 () Bool)

(assert (=> b!6719903 (= e!4060606 (not lt!2436677))))

(declare-fun b!6719904 () Bool)

(declare-fun e!4060610 () Bool)

(assert (=> b!6719904 (= e!4060610 (not (= (head!13522 (tail!12607 (_2!36825 (get!22892 lt!2436617)))) (c!1245533 (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617))))))))))

(declare-fun b!6719905 () Bool)

(assert (=> b!6719905 (= e!4060609 (= lt!2436677 call!606583))))

(declare-fun bm!606578 () Bool)

(assert (=> bm!606578 (= call!606583 (isEmpty!38137 (tail!12607 (_2!36825 (get!22892 lt!2436617)))))))

(declare-fun b!6719906 () Bool)

(assert (=> b!6719906 (= e!4060605 (nullable!6534 (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617))))))))

(declare-fun b!6719907 () Bool)

(assert (=> b!6719907 (= e!4060609 e!4060606)))

(declare-fun c!1245945 () Bool)

(assert (=> b!6719907 (= c!1245945 ((_ is EmptyLang!16547) (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617))))))))

(declare-fun b!6719908 () Bool)

(assert (=> b!6719908 (= e!4060604 (= (head!13522 (tail!12607 (_2!36825 (get!22892 lt!2436617)))) (c!1245533 (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617)))))))))

(declare-fun b!6719909 () Bool)

(declare-fun res!2749957 () Bool)

(assert (=> b!6719909 (=> res!2749957 e!4060610)))

(assert (=> b!6719909 (= res!2749957 (not (isEmpty!38137 (tail!12607 (tail!12607 (_2!36825 (get!22892 lt!2436617)))))))))

(declare-fun b!6719910 () Bool)

(declare-fun res!2749955 () Bool)

(assert (=> b!6719910 (=> res!2749955 e!4060607)))

(assert (=> b!6719910 (= res!2749955 e!4060604)))

(declare-fun res!2749959 () Bool)

(assert (=> b!6719910 (=> (not res!2749959) (not e!4060604))))

(assert (=> b!6719910 (= res!2749959 lt!2436677)))

(declare-fun b!6719911 () Bool)

(declare-fun res!2749956 () Bool)

(assert (=> b!6719911 (=> res!2749956 e!4060607)))

(assert (=> b!6719911 (= res!2749956 (not ((_ is ElementMatch!16547) (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617)))))))))

(assert (=> b!6719911 (= e!4060606 e!4060607)))

(declare-fun b!6719912 () Bool)

(declare-fun res!2749953 () Bool)

(assert (=> b!6719912 (=> (not res!2749953) (not e!4060604))))

(assert (=> b!6719912 (= res!2749953 (isEmpty!38137 (tail!12607 (tail!12607 (_2!36825 (get!22892 lt!2436617))))))))

(declare-fun b!6719913 () Bool)

(assert (=> b!6719913 (= e!4060608 e!4060610)))

(declare-fun res!2749958 () Bool)

(assert (=> b!6719913 (=> res!2749958 e!4060610)))

(assert (=> b!6719913 (= res!2749958 call!606583)))

(assert (= (and d!2111927 c!1245944) b!6719906))

(assert (= (and d!2111927 (not c!1245944)) b!6719902))

(assert (= (and d!2111927 c!1245943) b!6719905))

(assert (= (and d!2111927 (not c!1245943)) b!6719907))

(assert (= (and b!6719907 c!1245945) b!6719903))

(assert (= (and b!6719907 (not c!1245945)) b!6719911))

(assert (= (and b!6719911 (not res!2749956)) b!6719910))

(assert (= (and b!6719910 res!2749959) b!6719900))

(assert (= (and b!6719900 res!2749954) b!6719912))

(assert (= (and b!6719912 res!2749953) b!6719908))

(assert (= (and b!6719910 (not res!2749955)) b!6719901))

(assert (= (and b!6719901 res!2749960) b!6719913))

(assert (= (and b!6719913 (not res!2749958)) b!6719909))

(assert (= (and b!6719909 (not res!2749957)) b!6719904))

(assert (= (or b!6719905 b!6719900 b!6719913) bm!606578))

(assert (=> b!6719908 m!7481498))

(declare-fun m!7482210 () Bool)

(assert (=> b!6719908 m!7482210))

(assert (=> b!6719904 m!7481498))

(assert (=> b!6719904 m!7482210))

(assert (=> bm!606578 m!7481498))

(assert (=> bm!606578 m!7481500))

(assert (=> b!6719909 m!7481498))

(declare-fun m!7482212 () Bool)

(assert (=> b!6719909 m!7482212))

(assert (=> b!6719909 m!7482212))

(declare-fun m!7482214 () Bool)

(assert (=> b!6719909 m!7482214))

(assert (=> d!2111927 m!7481498))

(assert (=> d!2111927 m!7481500))

(assert (=> d!2111927 m!7481502))

(declare-fun m!7482216 () Bool)

(assert (=> d!2111927 m!7482216))

(assert (=> b!6719912 m!7481498))

(assert (=> b!6719912 m!7482212))

(assert (=> b!6719912 m!7482212))

(assert (=> b!6719912 m!7482214))

(assert (=> b!6719902 m!7481498))

(assert (=> b!6719902 m!7482210))

(assert (=> b!6719902 m!7481502))

(assert (=> b!6719902 m!7482210))

(declare-fun m!7482218 () Bool)

(assert (=> b!6719902 m!7482218))

(assert (=> b!6719902 m!7481498))

(assert (=> b!6719902 m!7482212))

(assert (=> b!6719902 m!7482218))

(assert (=> b!6719902 m!7482212))

(declare-fun m!7482220 () Bool)

(assert (=> b!6719902 m!7482220))

(assert (=> b!6719906 m!7481502))

(declare-fun m!7482222 () Bool)

(assert (=> b!6719906 m!7482222))

(assert (=> b!6719023 d!2111927))

(declare-fun e!4060614 () Regex!16547)

(declare-fun call!606586 () Regex!16547)

(declare-fun b!6719914 () Bool)

(declare-fun call!606587 () Regex!16547)

(assert (=> b!6719914 (= e!4060614 (Union!16547 (Concat!25392 call!606587 (regTwo!33606 r!7292)) call!606586))))

(declare-fun bm!606579 () Bool)

(declare-fun call!606585 () Regex!16547)

(assert (=> bm!606579 (= call!606587 call!606585)))

(declare-fun call!606584 () Regex!16547)

(declare-fun c!1245947 () Bool)

(declare-fun bm!606580 () Bool)

(declare-fun c!1245946 () Bool)

(assert (=> bm!606580 (= call!606584 (derivativeStep!5219 (ite c!1245946 (regOne!33607 r!7292) (ite c!1245947 (regTwo!33606 r!7292) (regOne!33606 r!7292))) (head!13522 (_2!36825 (get!22892 lt!2436617)))))))

(declare-fun d!2111929 () Bool)

(declare-fun lt!2436678 () Regex!16547)

(assert (=> d!2111929 (validRegex!8283 lt!2436678)))

(declare-fun e!4060612 () Regex!16547)

(assert (=> d!2111929 (= lt!2436678 e!4060612)))

(declare-fun c!1245948 () Bool)

(assert (=> d!2111929 (= c!1245948 (or ((_ is EmptyExpr!16547) r!7292) ((_ is EmptyLang!16547) r!7292)))))

(assert (=> d!2111929 (validRegex!8283 r!7292)))

(assert (=> d!2111929 (= (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436617)))) lt!2436678)))

(declare-fun b!6719915 () Bool)

(declare-fun e!4060611 () Regex!16547)

(declare-fun e!4060613 () Regex!16547)

(assert (=> b!6719915 (= e!4060611 e!4060613)))

(declare-fun c!1245949 () Bool)

(assert (=> b!6719915 (= c!1245949 ((_ is Star!16547) r!7292))))

(declare-fun b!6719916 () Bool)

(assert (=> b!6719916 (= e!4060611 (Union!16547 call!606584 call!606585))))

(declare-fun b!6719917 () Bool)

(assert (=> b!6719917 (= c!1245947 (nullable!6534 (regOne!33606 r!7292)))))

(assert (=> b!6719917 (= e!4060613 e!4060614)))

(declare-fun b!6719918 () Bool)

(assert (=> b!6719918 (= e!4060613 (Concat!25392 call!606587 r!7292))))

(declare-fun b!6719919 () Bool)

(assert (=> b!6719919 (= c!1245946 ((_ is Union!16547) r!7292))))

(declare-fun e!4060615 () Regex!16547)

(assert (=> b!6719919 (= e!4060615 e!4060611)))

(declare-fun bm!606581 () Bool)

(assert (=> bm!606581 (= call!606586 call!606584)))

(declare-fun b!6719920 () Bool)

(assert (=> b!6719920 (= e!4060612 e!4060615)))

(declare-fun c!1245950 () Bool)

(assert (=> b!6719920 (= c!1245950 ((_ is ElementMatch!16547) r!7292))))

(declare-fun b!6719921 () Bool)

(assert (=> b!6719921 (= e!4060612 EmptyLang!16547)))

(declare-fun b!6719922 () Bool)

(assert (=> b!6719922 (= e!4060615 (ite (= (head!13522 (_2!36825 (get!22892 lt!2436617))) (c!1245533 r!7292)) EmptyExpr!16547 EmptyLang!16547))))

(declare-fun b!6719923 () Bool)

(assert (=> b!6719923 (= e!4060614 (Union!16547 (Concat!25392 call!606586 (regTwo!33606 r!7292)) EmptyLang!16547))))

(declare-fun bm!606582 () Bool)

(assert (=> bm!606582 (= call!606585 (derivativeStep!5219 (ite c!1245946 (regTwo!33607 r!7292) (ite c!1245949 (reg!16876 r!7292) (regOne!33606 r!7292))) (head!13522 (_2!36825 (get!22892 lt!2436617)))))))

(assert (= (and d!2111929 c!1245948) b!6719921))

(assert (= (and d!2111929 (not c!1245948)) b!6719920))

(assert (= (and b!6719920 c!1245950) b!6719922))

(assert (= (and b!6719920 (not c!1245950)) b!6719919))

(assert (= (and b!6719919 c!1245946) b!6719916))

(assert (= (and b!6719919 (not c!1245946)) b!6719915))

(assert (= (and b!6719915 c!1245949) b!6719918))

(assert (= (and b!6719915 (not c!1245949)) b!6719917))

(assert (= (and b!6719917 c!1245947) b!6719914))

(assert (= (and b!6719917 (not c!1245947)) b!6719923))

(assert (= (or b!6719914 b!6719923) bm!606581))

(assert (= (or b!6719918 b!6719914) bm!606579))

(assert (= (or b!6719916 bm!606579) bm!606582))

(assert (= (or b!6719916 bm!606581) bm!606580))

(assert (=> bm!606580 m!7481494))

(declare-fun m!7482224 () Bool)

(assert (=> bm!606580 m!7482224))

(declare-fun m!7482226 () Bool)

(assert (=> d!2111929 m!7482226))

(assert (=> d!2111929 m!7480964))

(assert (=> b!6719917 m!7481284))

(assert (=> bm!606582 m!7481494))

(declare-fun m!7482228 () Bool)

(assert (=> bm!606582 m!7482228))

(assert (=> b!6719023 d!2111929))

(assert (=> b!6719023 d!2111843))

(assert (=> b!6719023 d!2111811))

(declare-fun d!2111931 () Bool)

(declare-fun res!2749961 () Bool)

(declare-fun e!4060616 () Bool)

(assert (=> d!2111931 (=> res!2749961 e!4060616)))

(assert (=> d!2111931 (= res!2749961 ((_ is Nil!65817) (t!379618 lt!2436602)))))

(assert (=> d!2111931 (= (noDuplicate!2340 (t!379618 lt!2436602)) e!4060616)))

(declare-fun b!6719924 () Bool)

(declare-fun e!4060617 () Bool)

(assert (=> b!6719924 (= e!4060616 e!4060617)))

(declare-fun res!2749962 () Bool)

(assert (=> b!6719924 (=> (not res!2749962) (not e!4060617))))

(assert (=> b!6719924 (= res!2749962 (not (contains!20245 (t!379618 (t!379618 lt!2436602)) (h!72265 (t!379618 lt!2436602)))))))

(declare-fun b!6719925 () Bool)

(assert (=> b!6719925 (= e!4060617 (noDuplicate!2340 (t!379618 (t!379618 lt!2436602))))))

(assert (= (and d!2111931 (not res!2749961)) b!6719924))

(assert (= (and b!6719924 res!2749962) b!6719925))

(declare-fun m!7482230 () Bool)

(assert (=> b!6719924 m!7482230))

(declare-fun m!7482232 () Bool)

(assert (=> b!6719925 m!7482232))

(assert (=> b!6719304 d!2111931))

(declare-fun d!2111933 () Bool)

(assert (=> d!2111933 (= (isEmpty!38141 (tail!12606 (t!379617 (unfocusZipperList!1968 zl!343)))) ((_ is Nil!65816) (tail!12606 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(assert (=> b!6718861 d!2111933))

(declare-fun d!2111935 () Bool)

(assert (=> d!2111935 (= (tail!12606 (t!379617 (unfocusZipperList!1968 zl!343))) (t!379617 (t!379617 (unfocusZipperList!1968 zl!343))))))

(assert (=> b!6718861 d!2111935))

(declare-fun b!6719926 () Bool)

(declare-fun e!4060622 () Bool)

(declare-fun call!606588 () Bool)

(assert (=> b!6719926 (= e!4060622 call!606588)))

(declare-fun b!6719927 () Bool)

(declare-fun res!2749965 () Bool)

(declare-fun e!4060620 () Bool)

(assert (=> b!6719927 (=> res!2749965 e!4060620)))

(assert (=> b!6719927 (= res!2749965 (not ((_ is Concat!25392) (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))))

(declare-fun e!4060623 () Bool)

(assert (=> b!6719927 (= e!4060623 e!4060620)))

(declare-fun b!6719928 () Bool)

(declare-fun res!2749967 () Bool)

(assert (=> b!6719928 (=> (not res!2749967) (not e!4060622))))

(declare-fun call!606589 () Bool)

(assert (=> b!6719928 (= res!2749967 call!606589)))

(assert (=> b!6719928 (= e!4060623 e!4060622)))

(declare-fun b!6719929 () Bool)

(declare-fun e!4060618 () Bool)

(assert (=> b!6719929 (= e!4060618 e!4060623)))

(declare-fun c!1245951 () Bool)

(assert (=> b!6719929 (= c!1245951 ((_ is Union!16547) (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))

(declare-fun d!2111937 () Bool)

(declare-fun res!2749963 () Bool)

(declare-fun e!4060624 () Bool)

(assert (=> d!2111937 (=> res!2749963 e!4060624)))

(assert (=> d!2111937 (= res!2749963 ((_ is ElementMatch!16547) (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))

(assert (=> d!2111937 (= (validRegex!8283 (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))) e!4060624)))

(declare-fun call!606590 () Bool)

(declare-fun c!1245952 () Bool)

(declare-fun bm!606583 () Bool)

(assert (=> bm!606583 (= call!606590 (validRegex!8283 (ite c!1245952 (reg!16876 (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))) (ite c!1245951 (regTwo!33607 (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))) (regTwo!33606 (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))))))

(declare-fun b!6719930 () Bool)

(declare-fun e!4060621 () Bool)

(assert (=> b!6719930 (= e!4060621 call!606590)))

(declare-fun bm!606584 () Bool)

(assert (=> bm!606584 (= call!606588 call!606590)))

(declare-fun b!6719931 () Bool)

(declare-fun e!4060619 () Bool)

(assert (=> b!6719931 (= e!4060619 call!606588)))

(declare-fun b!6719932 () Bool)

(assert (=> b!6719932 (= e!4060618 e!4060621)))

(declare-fun res!2749966 () Bool)

(assert (=> b!6719932 (= res!2749966 (not (nullable!6534 (reg!16876 (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))))

(assert (=> b!6719932 (=> (not res!2749966) (not e!4060621))))

(declare-fun b!6719933 () Bool)

(assert (=> b!6719933 (= e!4060624 e!4060618)))

(assert (=> b!6719933 (= c!1245952 ((_ is Star!16547) (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))

(declare-fun b!6719934 () Bool)

(assert (=> b!6719934 (= e!4060620 e!4060619)))

(declare-fun res!2749964 () Bool)

(assert (=> b!6719934 (=> (not res!2749964) (not e!4060619))))

(assert (=> b!6719934 (= res!2749964 call!606589)))

(declare-fun bm!606585 () Bool)

(assert (=> bm!606585 (= call!606589 (validRegex!8283 (ite c!1245951 (regOne!33607 (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))) (regOne!33606 (ite c!1245744 (reg!16876 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245743 (regTwo!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regTwo!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))))

(assert (= (and d!2111937 (not res!2749963)) b!6719933))

(assert (= (and b!6719933 c!1245952) b!6719932))

(assert (= (and b!6719933 (not c!1245952)) b!6719929))

(assert (= (and b!6719932 res!2749966) b!6719930))

(assert (= (and b!6719929 c!1245951) b!6719928))

(assert (= (and b!6719929 (not c!1245951)) b!6719927))

(assert (= (and b!6719928 res!2749967) b!6719926))

(assert (= (and b!6719927 (not res!2749965)) b!6719934))

(assert (= (and b!6719934 res!2749964) b!6719931))

(assert (= (or b!6719926 b!6719931) bm!606584))

(assert (= (or b!6719928 b!6719934) bm!606585))

(assert (= (or b!6719930 bm!606584) bm!606583))

(declare-fun m!7482234 () Bool)

(assert (=> bm!606583 m!7482234))

(declare-fun m!7482236 () Bool)

(assert (=> b!6719932 m!7482236))

(declare-fun m!7482238 () Bool)

(assert (=> bm!606585 m!7482238))

(assert (=> bm!606430 d!2111937))

(assert (=> bm!606487 d!2111733))

(declare-fun d!2111939 () Bool)

(assert (=> d!2111939 (= (nullable!6534 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))) (nullableFct!2448 (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))

(declare-fun bs!1787903 () Bool)

(assert (= bs!1787903 d!2111939))

(declare-fun m!7482240 () Bool)

(assert (=> bs!1787903 m!7482240))

(assert (=> b!6719228 d!2111939))

(declare-fun d!2111941 () Bool)

(assert (=> d!2111941 (= (head!13521 (t!379617 (exprs!6431 (h!72265 zl!343)))) (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> b!6719416 d!2111941))

(declare-fun b!6719935 () Bool)

(declare-fun e!4060629 () Bool)

(declare-fun call!606591 () Bool)

(assert (=> b!6719935 (= e!4060629 call!606591)))

(declare-fun b!6719936 () Bool)

(declare-fun res!2749970 () Bool)

(declare-fun e!4060627 () Bool)

(assert (=> b!6719936 (=> res!2749970 e!4060627)))

(assert (=> b!6719936 (= res!2749970 (not ((_ is Concat!25392) (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565)))))))

(declare-fun e!4060630 () Bool)

(assert (=> b!6719936 (= e!4060630 e!4060627)))

(declare-fun b!6719937 () Bool)

(declare-fun res!2749972 () Bool)

(assert (=> b!6719937 (=> (not res!2749972) (not e!4060629))))

(declare-fun call!606592 () Bool)

(assert (=> b!6719937 (= res!2749972 call!606592)))

(assert (=> b!6719937 (= e!4060630 e!4060629)))

(declare-fun b!6719938 () Bool)

(declare-fun e!4060625 () Bool)

(assert (=> b!6719938 (= e!4060625 e!4060630)))

(declare-fun c!1245953 () Bool)

(assert (=> b!6719938 (= c!1245953 ((_ is Union!16547) (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))))))

(declare-fun d!2111943 () Bool)

(declare-fun res!2749968 () Bool)

(declare-fun e!4060631 () Bool)

(assert (=> d!2111943 (=> res!2749968 e!4060631)))

(assert (=> d!2111943 (= res!2749968 ((_ is ElementMatch!16547) (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))))))

(assert (=> d!2111943 (= (validRegex!8283 (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))) e!4060631)))

(declare-fun c!1245954 () Bool)

(declare-fun bm!606586 () Bool)

(declare-fun call!606593 () Bool)

(assert (=> bm!606586 (= call!606593 (validRegex!8283 (ite c!1245954 (reg!16876 (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))) (ite c!1245953 (regTwo!33607 (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))) (regTwo!33606 (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565)))))))))

(declare-fun b!6719939 () Bool)

(declare-fun e!4060628 () Bool)

(assert (=> b!6719939 (= e!4060628 call!606593)))

(declare-fun bm!606587 () Bool)

(assert (=> bm!606587 (= call!606591 call!606593)))

(declare-fun b!6719940 () Bool)

(declare-fun e!4060626 () Bool)

(assert (=> b!6719940 (= e!4060626 call!606591)))

(declare-fun b!6719941 () Bool)

(assert (=> b!6719941 (= e!4060625 e!4060628)))

(declare-fun res!2749971 () Bool)

(assert (=> b!6719941 (= res!2749971 (not (nullable!6534 (reg!16876 (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))))))))

(assert (=> b!6719941 (=> (not res!2749971) (not e!4060628))))

(declare-fun b!6719942 () Bool)

(assert (=> b!6719942 (= e!4060631 e!4060625)))

(assert (=> b!6719942 (= c!1245954 ((_ is Star!16547) (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))))))

(declare-fun b!6719943 () Bool)

(assert (=> b!6719943 (= e!4060627 e!4060626)))

(declare-fun res!2749969 () Bool)

(assert (=> b!6719943 (=> (not res!2749969) (not e!4060626))))

(assert (=> b!6719943 (= res!2749969 call!606592)))

(declare-fun bm!606588 () Bool)

(assert (=> bm!606588 (= call!606592 (validRegex!8283 (ite c!1245953 (regOne!33607 (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))) (regOne!33606 (ite c!1245819 (regOne!33607 lt!2436565) (regOne!33606 lt!2436565))))))))

(assert (= (and d!2111943 (not res!2749968)) b!6719942))

(assert (= (and b!6719942 c!1245954) b!6719941))

(assert (= (and b!6719942 (not c!1245954)) b!6719938))

(assert (= (and b!6719941 res!2749971) b!6719939))

(assert (= (and b!6719938 c!1245953) b!6719937))

(assert (= (and b!6719938 (not c!1245953)) b!6719936))

(assert (= (and b!6719937 res!2749972) b!6719935))

(assert (= (and b!6719936 (not res!2749970)) b!6719943))

(assert (= (and b!6719943 res!2749969) b!6719940))

(assert (= (or b!6719935 b!6719940) bm!606587))

(assert (= (or b!6719937 b!6719943) bm!606588))

(assert (= (or b!6719939 bm!606587) bm!606586))

(declare-fun m!7482242 () Bool)

(assert (=> bm!606586 m!7482242))

(declare-fun m!7482244 () Bool)

(assert (=> b!6719941 m!7482244))

(declare-fun m!7482246 () Bool)

(assert (=> bm!606588 m!7482246))

(assert (=> bm!606480 d!2111943))

(declare-fun b!6719944 () Bool)

(declare-fun res!2749974 () Bool)

(declare-fun e!4060632 () Bool)

(assert (=> b!6719944 (=> (not res!2749974) (not e!4060632))))

(declare-fun call!606594 () Bool)

(assert (=> b!6719944 (= res!2749974 (not call!606594))))

(declare-fun b!6719945 () Bool)

(declare-fun e!4060635 () Bool)

(declare-fun e!4060636 () Bool)

(assert (=> b!6719945 (= e!4060635 e!4060636)))

(declare-fun res!2749980 () Bool)

(assert (=> b!6719945 (=> (not res!2749980) (not e!4060636))))

(declare-fun lt!2436679 () Bool)

(assert (=> b!6719945 (= res!2749980 (not lt!2436679))))

(declare-fun b!6719946 () Bool)

(declare-fun e!4060633 () Bool)

(assert (=> b!6719946 (= e!4060633 (matchR!8730 (derivativeStep!5219 r!7292 (head!13522 (t!379619 s!2326))) (tail!12607 (t!379619 s!2326))))))

(declare-fun d!2111945 () Bool)

(declare-fun e!4060637 () Bool)

(assert (=> d!2111945 e!4060637))

(declare-fun c!1245955 () Bool)

(assert (=> d!2111945 (= c!1245955 ((_ is EmptyExpr!16547) r!7292))))

(assert (=> d!2111945 (= lt!2436679 e!4060633)))

(declare-fun c!1245956 () Bool)

(assert (=> d!2111945 (= c!1245956 (isEmpty!38137 (t!379619 s!2326)))))

(assert (=> d!2111945 (validRegex!8283 r!7292)))

(assert (=> d!2111945 (= (matchR!8730 r!7292 (t!379619 s!2326)) lt!2436679)))

(declare-fun b!6719947 () Bool)

(declare-fun e!4060634 () Bool)

(assert (=> b!6719947 (= e!4060634 (not lt!2436679))))

(declare-fun b!6719948 () Bool)

(declare-fun e!4060638 () Bool)

(assert (=> b!6719948 (= e!4060638 (not (= (head!13522 (t!379619 s!2326)) (c!1245533 r!7292))))))

(declare-fun b!6719949 () Bool)

(assert (=> b!6719949 (= e!4060637 (= lt!2436679 call!606594))))

(declare-fun bm!606589 () Bool)

(assert (=> bm!606589 (= call!606594 (isEmpty!38137 (t!379619 s!2326)))))

(declare-fun b!6719950 () Bool)

(assert (=> b!6719950 (= e!4060633 (nullable!6534 r!7292))))

(declare-fun b!6719951 () Bool)

(assert (=> b!6719951 (= e!4060637 e!4060634)))

(declare-fun c!1245957 () Bool)

(assert (=> b!6719951 (= c!1245957 ((_ is EmptyLang!16547) r!7292))))

(declare-fun b!6719952 () Bool)

(assert (=> b!6719952 (= e!4060632 (= (head!13522 (t!379619 s!2326)) (c!1245533 r!7292)))))

(declare-fun b!6719953 () Bool)

(declare-fun res!2749977 () Bool)

(assert (=> b!6719953 (=> res!2749977 e!4060638)))

(assert (=> b!6719953 (= res!2749977 (not (isEmpty!38137 (tail!12607 (t!379619 s!2326)))))))

(declare-fun b!6719954 () Bool)

(declare-fun res!2749975 () Bool)

(assert (=> b!6719954 (=> res!2749975 e!4060635)))

(assert (=> b!6719954 (= res!2749975 e!4060632)))

(declare-fun res!2749979 () Bool)

(assert (=> b!6719954 (=> (not res!2749979) (not e!4060632))))

(assert (=> b!6719954 (= res!2749979 lt!2436679)))

(declare-fun b!6719955 () Bool)

(declare-fun res!2749976 () Bool)

(assert (=> b!6719955 (=> res!2749976 e!4060635)))

(assert (=> b!6719955 (= res!2749976 (not ((_ is ElementMatch!16547) r!7292)))))

(assert (=> b!6719955 (= e!4060634 e!4060635)))

(declare-fun b!6719956 () Bool)

(declare-fun res!2749973 () Bool)

(assert (=> b!6719956 (=> (not res!2749973) (not e!4060632))))

(assert (=> b!6719956 (= res!2749973 (isEmpty!38137 (tail!12607 (t!379619 s!2326))))))

(declare-fun b!6719957 () Bool)

(assert (=> b!6719957 (= e!4060636 e!4060638)))

(declare-fun res!2749978 () Bool)

(assert (=> b!6719957 (=> res!2749978 e!4060638)))

(assert (=> b!6719957 (= res!2749978 call!606594)))

(assert (= (and d!2111945 c!1245956) b!6719950))

(assert (= (and d!2111945 (not c!1245956)) b!6719946))

(assert (= (and d!2111945 c!1245955) b!6719949))

(assert (= (and d!2111945 (not c!1245955)) b!6719951))

(assert (= (and b!6719951 c!1245957) b!6719947))

(assert (= (and b!6719951 (not c!1245957)) b!6719955))

(assert (= (and b!6719955 (not res!2749976)) b!6719954))

(assert (= (and b!6719954 res!2749979) b!6719944))

(assert (= (and b!6719944 res!2749974) b!6719956))

(assert (= (and b!6719956 res!2749973) b!6719952))

(assert (= (and b!6719954 (not res!2749975)) b!6719945))

(assert (= (and b!6719945 res!2749980) b!6719957))

(assert (= (and b!6719957 (not res!2749978)) b!6719953))

(assert (= (and b!6719953 (not res!2749977)) b!6719948))

(assert (= (or b!6719949 b!6719944 b!6719957) bm!606589))

(declare-fun m!7482248 () Bool)

(assert (=> b!6719952 m!7482248))

(assert (=> b!6719948 m!7482248))

(declare-fun m!7482250 () Bool)

(assert (=> bm!606589 m!7482250))

(declare-fun m!7482252 () Bool)

(assert (=> b!6719953 m!7482252))

(assert (=> b!6719953 m!7482252))

(declare-fun m!7482254 () Bool)

(assert (=> b!6719953 m!7482254))

(assert (=> d!2111945 m!7482250))

(assert (=> d!2111945 m!7480964))

(assert (=> b!6719956 m!7482252))

(assert (=> b!6719956 m!7482252))

(assert (=> b!6719956 m!7482254))

(assert (=> b!6719946 m!7482248))

(assert (=> b!6719946 m!7482248))

(declare-fun m!7482256 () Bool)

(assert (=> b!6719946 m!7482256))

(assert (=> b!6719946 m!7482252))

(assert (=> b!6719946 m!7482256))

(assert (=> b!6719946 m!7482252))

(declare-fun m!7482258 () Bool)

(assert (=> b!6719946 m!7482258))

(assert (=> b!6719950 m!7481152))

(assert (=> b!6719196 d!2111945))

(declare-fun bs!1787904 () Bool)

(declare-fun d!2111947 () Bool)

(assert (= bs!1787904 (and d!2111947 d!2111417)))

(declare-fun lambda!376953 () Int)

(assert (=> bs!1787904 (= lambda!376953 lambda!376848)))

(declare-fun bs!1787905 () Bool)

(assert (= bs!1787905 (and d!2111947 d!2111879)))

(assert (=> bs!1787905 (= lambda!376953 lambda!376951)))

(declare-fun bs!1787906 () Bool)

(assert (= bs!1787906 (and d!2111947 d!2111453)))

(assert (=> bs!1787906 (= lambda!376953 lambda!376879)))

(declare-fun bs!1787907 () Bool)

(assert (= bs!1787907 (and d!2111947 d!2111677)))

(assert (=> bs!1787907 (= lambda!376953 lambda!376936)))

(declare-fun bs!1787908 () Bool)

(assert (= bs!1787908 (and d!2111947 d!2111917)))

(assert (=> bs!1787908 (= lambda!376953 lambda!376952)))

(declare-fun bs!1787909 () Bool)

(assert (= bs!1787909 (and d!2111947 d!2111399)))

(assert (=> bs!1787909 (= lambda!376953 lambda!376836)))

(declare-fun bs!1787910 () Bool)

(assert (= bs!1787910 (and d!2111947 d!2111861)))

(assert (=> bs!1787910 (= lambda!376953 lambda!376948)))

(declare-fun bs!1787911 () Bool)

(assert (= bs!1787911 (and d!2111947 d!2111871)))

(assert (=> bs!1787911 (= lambda!376953 lambda!376950)))

(declare-fun bs!1787912 () Bool)

(assert (= bs!1787912 (and d!2111947 d!2111761)))

(assert (=> bs!1787912 (= lambda!376953 lambda!376941)))

(declare-fun bs!1787913 () Bool)

(assert (= bs!1787913 (and d!2111947 d!2111401)))

(assert (=> bs!1787913 (= lambda!376953 lambda!376839)))

(declare-fun bs!1787914 () Bool)

(assert (= bs!1787914 (and d!2111947 d!2111869)))

(assert (=> bs!1787914 (= lambda!376953 lambda!376949)))

(declare-fun bs!1787915 () Bool)

(assert (= bs!1787915 (and d!2111947 d!2111737)))

(assert (=> bs!1787915 (= lambda!376953 lambda!376938)))

(declare-fun bs!1787916 () Bool)

(assert (= bs!1787916 (and d!2111947 d!2111589)))

(assert (=> bs!1787916 (= lambda!376953 lambda!376912)))

(declare-fun bs!1787917 () Bool)

(assert (= bs!1787917 (and d!2111947 d!2111551)))

(assert (=> bs!1787917 (= lambda!376953 lambda!376900)))

(declare-fun bs!1787918 () Bool)

(assert (= bs!1787918 (and d!2111947 d!2111461)))

(assert (=> bs!1787918 (= lambda!376953 lambda!376880)))

(assert (=> d!2111947 (= (inv!84614 (h!72265 res!2749805)) (forall!15747 (exprs!6431 (h!72265 res!2749805)) lambda!376953))))

(declare-fun bs!1787919 () Bool)

(assert (= bs!1787919 d!2111947))

(declare-fun m!7482260 () Bool)

(assert (=> bs!1787919 m!7482260))

(assert (=> b!6719361 d!2111947))

(declare-fun b!6719960 () Bool)

(declare-fun res!2749981 () Bool)

(declare-fun e!4060639 () Bool)

(assert (=> b!6719960 (=> (not res!2749981) (not e!4060639))))

(declare-fun lt!2436680 () List!65942)

(assert (=> b!6719960 (= res!2749981 (= (size!40597 lt!2436680) (+ (size!40597 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))) (size!40597 (t!379619 s!2326)))))))

(declare-fun d!2111949 () Bool)

(assert (=> d!2111949 e!4060639))

(declare-fun res!2749982 () Bool)

(assert (=> d!2111949 (=> (not res!2749982) (not e!4060639))))

(assert (=> d!2111949 (= res!2749982 (= (content!12765 lt!2436680) ((_ map or) (content!12765 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))) (content!12765 (t!379619 s!2326)))))))

(declare-fun e!4060640 () List!65942)

(assert (=> d!2111949 (= lt!2436680 e!4060640)))

(declare-fun c!1245958 () Bool)

(assert (=> d!2111949 (= c!1245958 ((_ is Nil!65818) (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))))))

(assert (=> d!2111949 (= (++!14703 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (t!379619 s!2326)) lt!2436680)))

(declare-fun b!6719958 () Bool)

(assert (=> b!6719958 (= e!4060640 (t!379619 s!2326))))

(declare-fun b!6719959 () Bool)

(assert (=> b!6719959 (= e!4060640 (Cons!65818 (h!72266 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))) (++!14703 (t!379619 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))) (t!379619 s!2326))))))

(declare-fun b!6719961 () Bool)

(assert (=> b!6719961 (= e!4060639 (or (not (= (t!379619 s!2326) Nil!65818)) (= lt!2436680 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))))

(assert (= (and d!2111949 c!1245958) b!6719958))

(assert (= (and d!2111949 (not c!1245958)) b!6719959))

(assert (= (and d!2111949 res!2749982) b!6719960))

(assert (= (and b!6719960 res!2749981) b!6719961))

(declare-fun m!7482262 () Bool)

(assert (=> b!6719960 m!7482262))

(declare-fun m!7482264 () Bool)

(assert (=> b!6719960 m!7482264))

(assert (=> b!6719960 m!7481674))

(declare-fun m!7482266 () Bool)

(assert (=> d!2111949 m!7482266))

(assert (=> d!2111949 m!7482162))

(assert (=> d!2111949 m!7481680))

(declare-fun m!7482268 () Bool)

(assert (=> b!6719959 m!7482268))

(assert (=> b!6719155 d!2111949))

(declare-fun d!2111951 () Bool)

(assert (=> d!2111951 (= ($colon$colon!2364 (exprs!6431 (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399))) (ite (or c!1245854 c!1245851) (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))) (Cons!65816 (ite (or c!1245854 c!1245851) (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (exprs!6431 (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)))))))

(assert (=> bm!606504 d!2111951))

(declare-fun b!6719962 () Bool)

(declare-fun res!2749984 () Bool)

(declare-fun e!4060641 () Bool)

(assert (=> b!6719962 (=> (not res!2749984) (not e!4060641))))

(declare-fun call!606595 () Bool)

(assert (=> b!6719962 (= res!2749984 (not call!606595))))

(declare-fun b!6719963 () Bool)

(declare-fun e!4060644 () Bool)

(declare-fun e!4060645 () Bool)

(assert (=> b!6719963 (= e!4060644 e!4060645)))

(declare-fun res!2749990 () Bool)

(assert (=> b!6719963 (=> (not res!2749990) (not e!4060645))))

(declare-fun lt!2436681 () Bool)

(assert (=> b!6719963 (= res!2749990 (not lt!2436681))))

(declare-fun b!6719964 () Bool)

(declare-fun e!4060642 () Bool)

(assert (=> b!6719964 (= e!4060642 (matchR!8730 (derivativeStep!5219 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617)))) (head!13522 (tail!12607 (_1!36825 (get!22892 lt!2436617))))) (tail!12607 (tail!12607 (_1!36825 (get!22892 lt!2436617))))))))

(declare-fun d!2111953 () Bool)

(declare-fun e!4060646 () Bool)

(assert (=> d!2111953 e!4060646))

(declare-fun c!1245959 () Bool)

(assert (=> d!2111953 (= c!1245959 ((_ is EmptyExpr!16547) (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617))))))))

(assert (=> d!2111953 (= lt!2436681 e!4060642)))

(declare-fun c!1245960 () Bool)

(assert (=> d!2111953 (= c!1245960 (isEmpty!38137 (tail!12607 (_1!36825 (get!22892 lt!2436617)))))))

(assert (=> d!2111953 (validRegex!8283 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617)))))))

(assert (=> d!2111953 (= (matchR!8730 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617)))) (tail!12607 (_1!36825 (get!22892 lt!2436617)))) lt!2436681)))

(declare-fun b!6719965 () Bool)

(declare-fun e!4060643 () Bool)

(assert (=> b!6719965 (= e!4060643 (not lt!2436681))))

(declare-fun b!6719966 () Bool)

(declare-fun e!4060647 () Bool)

(assert (=> b!6719966 (= e!4060647 (not (= (head!13522 (tail!12607 (_1!36825 (get!22892 lt!2436617)))) (c!1245533 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617))))))))))

(declare-fun b!6719967 () Bool)

(assert (=> b!6719967 (= e!4060646 (= lt!2436681 call!606595))))

(declare-fun bm!606590 () Bool)

(assert (=> bm!606590 (= call!606595 (isEmpty!38137 (tail!12607 (_1!36825 (get!22892 lt!2436617)))))))

(declare-fun b!6719968 () Bool)

(assert (=> b!6719968 (= e!4060642 (nullable!6534 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617))))))))

(declare-fun b!6719969 () Bool)

(assert (=> b!6719969 (= e!4060646 e!4060643)))

(declare-fun c!1245961 () Bool)

(assert (=> b!6719969 (= c!1245961 ((_ is EmptyLang!16547) (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617))))))))

(declare-fun b!6719970 () Bool)

(assert (=> b!6719970 (= e!4060641 (= (head!13522 (tail!12607 (_1!36825 (get!22892 lt!2436617)))) (c!1245533 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617)))))))))

(declare-fun b!6719971 () Bool)

(declare-fun res!2749987 () Bool)

(assert (=> b!6719971 (=> res!2749987 e!4060647)))

(assert (=> b!6719971 (= res!2749987 (not (isEmpty!38137 (tail!12607 (tail!12607 (_1!36825 (get!22892 lt!2436617)))))))))

(declare-fun b!6719972 () Bool)

(declare-fun res!2749985 () Bool)

(assert (=> b!6719972 (=> res!2749985 e!4060644)))

(assert (=> b!6719972 (= res!2749985 e!4060641)))

(declare-fun res!2749989 () Bool)

(assert (=> b!6719972 (=> (not res!2749989) (not e!4060641))))

(assert (=> b!6719972 (= res!2749989 lt!2436681)))

(declare-fun b!6719973 () Bool)

(declare-fun res!2749986 () Bool)

(assert (=> b!6719973 (=> res!2749986 e!4060644)))

(assert (=> b!6719973 (= res!2749986 (not ((_ is ElementMatch!16547) (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617)))))))))

(assert (=> b!6719973 (= e!4060643 e!4060644)))

(declare-fun b!6719974 () Bool)

(declare-fun res!2749983 () Bool)

(assert (=> b!6719974 (=> (not res!2749983) (not e!4060641))))

(assert (=> b!6719974 (= res!2749983 (isEmpty!38137 (tail!12607 (tail!12607 (_1!36825 (get!22892 lt!2436617))))))))

(declare-fun b!6719975 () Bool)

(assert (=> b!6719975 (= e!4060645 e!4060647)))

(declare-fun res!2749988 () Bool)

(assert (=> b!6719975 (=> res!2749988 e!4060647)))

(assert (=> b!6719975 (= res!2749988 call!606595)))

(assert (= (and d!2111953 c!1245960) b!6719968))

(assert (= (and d!2111953 (not c!1245960)) b!6719964))

(assert (= (and d!2111953 c!1245959) b!6719967))

(assert (= (and d!2111953 (not c!1245959)) b!6719969))

(assert (= (and b!6719969 c!1245961) b!6719965))

(assert (= (and b!6719969 (not c!1245961)) b!6719973))

(assert (= (and b!6719973 (not res!2749986)) b!6719972))

(assert (= (and b!6719972 res!2749989) b!6719962))

(assert (= (and b!6719962 res!2749984) b!6719974))

(assert (= (and b!6719974 res!2749983) b!6719970))

(assert (= (and b!6719972 (not res!2749985)) b!6719963))

(assert (= (and b!6719963 res!2749990) b!6719975))

(assert (= (and b!6719975 (not res!2749988)) b!6719971))

(assert (= (and b!6719971 (not res!2749987)) b!6719966))

(assert (= (or b!6719967 b!6719962 b!6719975) bm!606590))

(assert (=> b!6719970 m!7481936))

(declare-fun m!7482270 () Bool)

(assert (=> b!6719970 m!7482270))

(assert (=> b!6719966 m!7481936))

(assert (=> b!6719966 m!7482270))

(assert (=> bm!606590 m!7481936))

(assert (=> bm!606590 m!7481938))

(assert (=> b!6719971 m!7481936))

(declare-fun m!7482272 () Bool)

(assert (=> b!6719971 m!7482272))

(assert (=> b!6719971 m!7482272))

(declare-fun m!7482274 () Bool)

(assert (=> b!6719971 m!7482274))

(assert (=> d!2111953 m!7481936))

(assert (=> d!2111953 m!7481938))

(assert (=> d!2111953 m!7481940))

(declare-fun m!7482276 () Bool)

(assert (=> d!2111953 m!7482276))

(assert (=> b!6719974 m!7481936))

(assert (=> b!6719974 m!7482272))

(assert (=> b!6719974 m!7482272))

(assert (=> b!6719974 m!7482274))

(assert (=> b!6719964 m!7481936))

(assert (=> b!6719964 m!7482270))

(assert (=> b!6719964 m!7481940))

(assert (=> b!6719964 m!7482270))

(declare-fun m!7482278 () Bool)

(assert (=> b!6719964 m!7482278))

(assert (=> b!6719964 m!7481936))

(assert (=> b!6719964 m!7482272))

(assert (=> b!6719964 m!7482278))

(assert (=> b!6719964 m!7482272))

(declare-fun m!7482280 () Bool)

(assert (=> b!6719964 m!7482280))

(assert (=> b!6719968 m!7481940))

(declare-fun m!7482282 () Bool)

(assert (=> b!6719968 m!7482282))

(assert (=> b!6719498 d!2111953))

(declare-fun call!606599 () Regex!16547)

(declare-fun b!6719976 () Bool)

(declare-fun call!606598 () Regex!16547)

(declare-fun e!4060651 () Regex!16547)

(assert (=> b!6719976 (= e!4060651 (Union!16547 (Concat!25392 call!606599 (regTwo!33606 (reg!16876 r!7292))) call!606598))))

(declare-fun bm!606591 () Bool)

(declare-fun call!606597 () Regex!16547)

(assert (=> bm!606591 (= call!606599 call!606597)))

(declare-fun call!606596 () Regex!16547)

(declare-fun c!1245963 () Bool)

(declare-fun bm!606592 () Bool)

(declare-fun c!1245962 () Bool)

(assert (=> bm!606592 (= call!606596 (derivativeStep!5219 (ite c!1245962 (regOne!33607 (reg!16876 r!7292)) (ite c!1245963 (regTwo!33606 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))) (head!13522 (_1!36825 (get!22892 lt!2436617)))))))

(declare-fun d!2111955 () Bool)

(declare-fun lt!2436682 () Regex!16547)

(assert (=> d!2111955 (validRegex!8283 lt!2436682)))

(declare-fun e!4060649 () Regex!16547)

(assert (=> d!2111955 (= lt!2436682 e!4060649)))

(declare-fun c!1245964 () Bool)

(assert (=> d!2111955 (= c!1245964 (or ((_ is EmptyExpr!16547) (reg!16876 r!7292)) ((_ is EmptyLang!16547) (reg!16876 r!7292))))))

(assert (=> d!2111955 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2111955 (= (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436617)))) lt!2436682)))

(declare-fun b!6719977 () Bool)

(declare-fun e!4060648 () Regex!16547)

(declare-fun e!4060650 () Regex!16547)

(assert (=> b!6719977 (= e!4060648 e!4060650)))

(declare-fun c!1245965 () Bool)

(assert (=> b!6719977 (= c!1245965 ((_ is Star!16547) (reg!16876 r!7292)))))

(declare-fun b!6719978 () Bool)

(assert (=> b!6719978 (= e!4060648 (Union!16547 call!606596 call!606597))))

(declare-fun b!6719979 () Bool)

(assert (=> b!6719979 (= c!1245963 (nullable!6534 (regOne!33606 (reg!16876 r!7292))))))

(assert (=> b!6719979 (= e!4060650 e!4060651)))

(declare-fun b!6719980 () Bool)

(assert (=> b!6719980 (= e!4060650 (Concat!25392 call!606599 (reg!16876 r!7292)))))

(declare-fun b!6719981 () Bool)

(assert (=> b!6719981 (= c!1245962 ((_ is Union!16547) (reg!16876 r!7292)))))

(declare-fun e!4060652 () Regex!16547)

(assert (=> b!6719981 (= e!4060652 e!4060648)))

(declare-fun bm!606593 () Bool)

(assert (=> bm!606593 (= call!606598 call!606596)))

(declare-fun b!6719982 () Bool)

(assert (=> b!6719982 (= e!4060649 e!4060652)))

(declare-fun c!1245966 () Bool)

(assert (=> b!6719982 (= c!1245966 ((_ is ElementMatch!16547) (reg!16876 r!7292)))))

(declare-fun b!6719983 () Bool)

(assert (=> b!6719983 (= e!4060649 EmptyLang!16547)))

(declare-fun b!6719984 () Bool)

(assert (=> b!6719984 (= e!4060652 (ite (= (head!13522 (_1!36825 (get!22892 lt!2436617))) (c!1245533 (reg!16876 r!7292))) EmptyExpr!16547 EmptyLang!16547))))

(declare-fun b!6719985 () Bool)

(assert (=> b!6719985 (= e!4060651 (Union!16547 (Concat!25392 call!606598 (regTwo!33606 (reg!16876 r!7292))) EmptyLang!16547))))

(declare-fun bm!606594 () Bool)

(assert (=> bm!606594 (= call!606597 (derivativeStep!5219 (ite c!1245962 (regTwo!33607 (reg!16876 r!7292)) (ite c!1245965 (reg!16876 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))) (head!13522 (_1!36825 (get!22892 lt!2436617)))))))

(assert (= (and d!2111955 c!1245964) b!6719983))

(assert (= (and d!2111955 (not c!1245964)) b!6719982))

(assert (= (and b!6719982 c!1245966) b!6719984))

(assert (= (and b!6719982 (not c!1245966)) b!6719981))

(assert (= (and b!6719981 c!1245962) b!6719978))

(assert (= (and b!6719981 (not c!1245962)) b!6719977))

(assert (= (and b!6719977 c!1245965) b!6719980))

(assert (= (and b!6719977 (not c!1245965)) b!6719979))

(assert (= (and b!6719979 c!1245963) b!6719976))

(assert (= (and b!6719979 (not c!1245963)) b!6719985))

(assert (= (or b!6719976 b!6719985) bm!606593))

(assert (= (or b!6719980 b!6719976) bm!606591))

(assert (= (or b!6719978 bm!606591) bm!606594))

(assert (= (or b!6719978 bm!606593) bm!606592))

(assert (=> bm!606592 m!7481932))

(declare-fun m!7482284 () Bool)

(assert (=> bm!606592 m!7482284))

(declare-fun m!7482286 () Bool)

(assert (=> d!2111955 m!7482286))

(assert (=> d!2111955 m!7481234))

(declare-fun m!7482288 () Bool)

(assert (=> b!6719979 m!7482288))

(assert (=> bm!606594 m!7481932))

(declare-fun m!7482290 () Bool)

(assert (=> bm!606594 m!7482290))

(assert (=> b!6719498 d!2111955))

(declare-fun d!2111957 () Bool)

(assert (=> d!2111957 (= (head!13522 (_1!36825 (get!22892 lt!2436617))) (h!72266 (_1!36825 (get!22892 lt!2436617))))))

(assert (=> b!6719498 d!2111957))

(assert (=> b!6719498 d!2111807))

(assert (=> b!6719439 d!2111865))

(assert (=> b!6719439 d!2111867))

(declare-fun d!2111959 () Bool)

(declare-fun c!1245967 () Bool)

(assert (=> d!2111959 (= c!1245967 ((_ is Nil!65818) lt!2436632))))

(declare-fun e!4060653 () (InoxSet C!33364))

(assert (=> d!2111959 (= (content!12765 lt!2436632) e!4060653)))

(declare-fun b!6719986 () Bool)

(assert (=> b!6719986 (= e!4060653 ((as const (Array C!33364 Bool)) false))))

(declare-fun b!6719987 () Bool)

(assert (=> b!6719987 (= e!4060653 ((_ map or) (store ((as const (Array C!33364 Bool)) false) (h!72266 lt!2436632) true) (content!12765 (t!379619 lt!2436632))))))

(assert (= (and d!2111959 c!1245967) b!6719986))

(assert (= (and d!2111959 (not c!1245967)) b!6719987))

(declare-fun m!7482292 () Bool)

(assert (=> b!6719987 m!7482292))

(declare-fun m!7482294 () Bool)

(assert (=> b!6719987 m!7482294))

(assert (=> d!2111585 d!2111959))

(declare-fun d!2111961 () Bool)

(declare-fun c!1245968 () Bool)

(assert (=> d!2111961 (= c!1245968 ((_ is Nil!65818) (_1!36825 (get!22892 lt!2436617))))))

(declare-fun e!4060654 () (InoxSet C!33364))

(assert (=> d!2111961 (= (content!12765 (_1!36825 (get!22892 lt!2436617))) e!4060654)))

(declare-fun b!6719988 () Bool)

(assert (=> b!6719988 (= e!4060654 ((as const (Array C!33364 Bool)) false))))

(declare-fun b!6719989 () Bool)

(assert (=> b!6719989 (= e!4060654 ((_ map or) (store ((as const (Array C!33364 Bool)) false) (h!72266 (_1!36825 (get!22892 lt!2436617))) true) (content!12765 (t!379619 (_1!36825 (get!22892 lt!2436617))))))))

(assert (= (and d!2111961 c!1245968) b!6719988))

(assert (= (and d!2111961 (not c!1245968)) b!6719989))

(declare-fun m!7482296 () Bool)

(assert (=> b!6719989 m!7482296))

(declare-fun m!7482298 () Bool)

(assert (=> b!6719989 m!7482298))

(assert (=> d!2111585 d!2111961))

(declare-fun d!2111963 () Bool)

(declare-fun c!1245969 () Bool)

(assert (=> d!2111963 (= c!1245969 ((_ is Nil!65818) (_2!36825 (get!22892 lt!2436617))))))

(declare-fun e!4060655 () (InoxSet C!33364))

(assert (=> d!2111963 (= (content!12765 (_2!36825 (get!22892 lt!2436617))) e!4060655)))

(declare-fun b!6719990 () Bool)

(assert (=> b!6719990 (= e!4060655 ((as const (Array C!33364 Bool)) false))))

(declare-fun b!6719991 () Bool)

(assert (=> b!6719991 (= e!4060655 ((_ map or) (store ((as const (Array C!33364 Bool)) false) (h!72266 (_2!36825 (get!22892 lt!2436617))) true) (content!12765 (t!379619 (_2!36825 (get!22892 lt!2436617))))))))

(assert (= (and d!2111963 c!1245969) b!6719990))

(assert (= (and d!2111963 (not c!1245969)) b!6719991))

(declare-fun m!7482300 () Bool)

(assert (=> b!6719991 m!7482300))

(declare-fun m!7482302 () Bool)

(assert (=> b!6719991 m!7482302))

(assert (=> d!2111585 d!2111963))

(declare-fun d!2111965 () Bool)

(declare-fun res!2749991 () Bool)

(declare-fun e!4060656 () Bool)

(assert (=> d!2111965 (=> res!2749991 e!4060656)))

(assert (=> d!2111965 (= res!2749991 ((_ is Nil!65816) (t!379617 (unfocusZipperList!1968 zl!343))))))

(assert (=> d!2111965 (= (forall!15747 (t!379617 (unfocusZipperList!1968 zl!343)) lambda!376839) e!4060656)))

(declare-fun b!6719992 () Bool)

(declare-fun e!4060657 () Bool)

(assert (=> b!6719992 (= e!4060656 e!4060657)))

(declare-fun res!2749992 () Bool)

(assert (=> b!6719992 (=> (not res!2749992) (not e!4060657))))

(assert (=> b!6719992 (= res!2749992 (dynLambda!26246 lambda!376839 (h!72264 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(declare-fun b!6719993 () Bool)

(assert (=> b!6719993 (= e!4060657 (forall!15747 (t!379617 (t!379617 (unfocusZipperList!1968 zl!343))) lambda!376839))))

(assert (= (and d!2111965 (not res!2749991)) b!6719992))

(assert (= (and b!6719992 res!2749992) b!6719993))

(declare-fun b_lambda!253015 () Bool)

(assert (=> (not b_lambda!253015) (not b!6719992)))

(declare-fun m!7482304 () Bool)

(assert (=> b!6719992 m!7482304))

(declare-fun m!7482306 () Bool)

(assert (=> b!6719993 m!7482306))

(assert (=> b!6719410 d!2111965))

(declare-fun b!6719994 () Bool)

(declare-fun e!4060662 () Bool)

(declare-fun call!606600 () Bool)

(assert (=> b!6719994 (= e!4060662 call!606600)))

(declare-fun b!6719995 () Bool)

(declare-fun res!2749995 () Bool)

(declare-fun e!4060660 () Bool)

(assert (=> b!6719995 (=> res!2749995 e!4060660)))

(assert (=> b!6719995 (= res!2749995 (not ((_ is Concat!25392) (h!72264 (unfocusZipperList!1968 zl!343)))))))

(declare-fun e!4060663 () Bool)

(assert (=> b!6719995 (= e!4060663 e!4060660)))

(declare-fun b!6719996 () Bool)

(declare-fun res!2749997 () Bool)

(assert (=> b!6719996 (=> (not res!2749997) (not e!4060662))))

(declare-fun call!606601 () Bool)

(assert (=> b!6719996 (= res!2749997 call!606601)))

(assert (=> b!6719996 (= e!4060663 e!4060662)))

(declare-fun b!6719997 () Bool)

(declare-fun e!4060658 () Bool)

(assert (=> b!6719997 (= e!4060658 e!4060663)))

(declare-fun c!1245970 () Bool)

(assert (=> b!6719997 (= c!1245970 ((_ is Union!16547) (h!72264 (unfocusZipperList!1968 zl!343))))))

(declare-fun d!2111967 () Bool)

(declare-fun res!2749993 () Bool)

(declare-fun e!4060664 () Bool)

(assert (=> d!2111967 (=> res!2749993 e!4060664)))

(assert (=> d!2111967 (= res!2749993 ((_ is ElementMatch!16547) (h!72264 (unfocusZipperList!1968 zl!343))))))

(assert (=> d!2111967 (= (validRegex!8283 (h!72264 (unfocusZipperList!1968 zl!343))) e!4060664)))

(declare-fun c!1245971 () Bool)

(declare-fun bm!606595 () Bool)

(declare-fun call!606602 () Bool)

(assert (=> bm!606595 (= call!606602 (validRegex!8283 (ite c!1245971 (reg!16876 (h!72264 (unfocusZipperList!1968 zl!343))) (ite c!1245970 (regTwo!33607 (h!72264 (unfocusZipperList!1968 zl!343))) (regTwo!33606 (h!72264 (unfocusZipperList!1968 zl!343)))))))))

(declare-fun b!6719998 () Bool)

(declare-fun e!4060661 () Bool)

(assert (=> b!6719998 (= e!4060661 call!606602)))

(declare-fun bm!606596 () Bool)

(assert (=> bm!606596 (= call!606600 call!606602)))

(declare-fun b!6719999 () Bool)

(declare-fun e!4060659 () Bool)

(assert (=> b!6719999 (= e!4060659 call!606600)))

(declare-fun b!6720000 () Bool)

(assert (=> b!6720000 (= e!4060658 e!4060661)))

(declare-fun res!2749996 () Bool)

(assert (=> b!6720000 (= res!2749996 (not (nullable!6534 (reg!16876 (h!72264 (unfocusZipperList!1968 zl!343))))))))

(assert (=> b!6720000 (=> (not res!2749996) (not e!4060661))))

(declare-fun b!6720001 () Bool)

(assert (=> b!6720001 (= e!4060664 e!4060658)))

(assert (=> b!6720001 (= c!1245971 ((_ is Star!16547) (h!72264 (unfocusZipperList!1968 zl!343))))))

(declare-fun b!6720002 () Bool)

(assert (=> b!6720002 (= e!4060660 e!4060659)))

(declare-fun res!2749994 () Bool)

(assert (=> b!6720002 (=> (not res!2749994) (not e!4060659))))

(assert (=> b!6720002 (= res!2749994 call!606601)))

(declare-fun bm!606597 () Bool)

(assert (=> bm!606597 (= call!606601 (validRegex!8283 (ite c!1245970 (regOne!33607 (h!72264 (unfocusZipperList!1968 zl!343))) (regOne!33606 (h!72264 (unfocusZipperList!1968 zl!343))))))))

(assert (= (and d!2111967 (not res!2749993)) b!6720001))

(assert (= (and b!6720001 c!1245971) b!6720000))

(assert (= (and b!6720001 (not c!1245971)) b!6719997))

(assert (= (and b!6720000 res!2749996) b!6719998))

(assert (= (and b!6719997 c!1245970) b!6719996))

(assert (= (and b!6719997 (not c!1245970)) b!6719995))

(assert (= (and b!6719996 res!2749997) b!6719994))

(assert (= (and b!6719995 (not res!2749995)) b!6720002))

(assert (= (and b!6720002 res!2749994) b!6719999))

(assert (= (or b!6719994 b!6719999) bm!606596))

(assert (= (or b!6719996 b!6720002) bm!606597))

(assert (= (or b!6719998 bm!606596) bm!606595))

(declare-fun m!7482308 () Bool)

(assert (=> bm!606595 m!7482308))

(declare-fun m!7482310 () Bool)

(assert (=> b!6720000 m!7482310))

(declare-fun m!7482312 () Bool)

(assert (=> bm!606597 m!7482312))

(assert (=> bs!1787778 d!2111967))

(declare-fun d!2111969 () Bool)

(assert (=> d!2111969 true))

(assert (=> d!2111969 true))

(declare-fun res!2749998 () Bool)

(assert (=> d!2111969 (= (choose!50069 lambda!376891) res!2749998)))

(assert (=> d!2111627 d!2111969))

(declare-fun d!2111971 () Bool)

(assert (=> d!2111971 true))

(assert (=> d!2111971 true))

(declare-fun res!2749999 () Bool)

(assert (=> d!2111971 (= (choose!50069 lambda!376886) res!2749999)))

(assert (=> d!2111653 d!2111971))

(declare-fun d!2111973 () Bool)

(assert (not d!2111973))

(assert (=> b!6719168 d!2111973))

(assert (=> b!6718890 d!2111913))

(declare-fun d!2111975 () Bool)

(declare-fun res!2750000 () Bool)

(declare-fun e!4060665 () Bool)

(assert (=> d!2111975 (=> res!2750000 e!4060665)))

(assert (=> d!2111975 (= res!2750000 ((_ is Nil!65816) (exprs!6431 setElem!45805)))))

(assert (=> d!2111975 (= (forall!15747 (exprs!6431 setElem!45805) lambda!376912) e!4060665)))

(declare-fun b!6720003 () Bool)

(declare-fun e!4060666 () Bool)

(assert (=> b!6720003 (= e!4060665 e!4060666)))

(declare-fun res!2750001 () Bool)

(assert (=> b!6720003 (=> (not res!2750001) (not e!4060666))))

(assert (=> b!6720003 (= res!2750001 (dynLambda!26246 lambda!376912 (h!72264 (exprs!6431 setElem!45805))))))

(declare-fun b!6720004 () Bool)

(assert (=> b!6720004 (= e!4060666 (forall!15747 (t!379617 (exprs!6431 setElem!45805)) lambda!376912))))

(assert (= (and d!2111975 (not res!2750000)) b!6720003))

(assert (= (and b!6720003 res!2750001) b!6720004))

(declare-fun b_lambda!253017 () Bool)

(assert (=> (not b_lambda!253017) (not b!6720003)))

(declare-fun m!7482314 () Bool)

(assert (=> b!6720003 m!7482314))

(declare-fun m!7482316 () Bool)

(assert (=> b!6720004 m!7482316))

(assert (=> d!2111589 d!2111975))

(assert (=> d!2111573 d!2111465))

(assert (=> d!2111573 d!2111477))

(declare-fun d!2111977 () Bool)

(assert (=> d!2111977 (= (Exists!3615 lambda!376905) (choose!50069 lambda!376905))))

(declare-fun bs!1787920 () Bool)

(assert (= bs!1787920 d!2111977))

(declare-fun m!7482318 () Bool)

(assert (=> bs!1787920 m!7482318))

(assert (=> d!2111573 d!2111977))

(declare-fun b!6720005 () Bool)

(declare-fun call!606606 () Regex!16547)

(declare-fun e!4060670 () Regex!16547)

(declare-fun call!606605 () Regex!16547)

(assert (=> b!6720005 (= e!4060670 (Union!16547 (Concat!25392 call!606606 (regTwo!33606 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292))))) call!606605))))

(declare-fun bm!606598 () Bool)

(declare-fun call!606604 () Regex!16547)

(assert (=> bm!606598 (= call!606606 call!606604)))

(declare-fun call!606603 () Regex!16547)

(declare-fun bm!606599 () Bool)

(declare-fun c!1245972 () Bool)

(declare-fun c!1245973 () Bool)

(assert (=> bm!606599 (= call!606603 (derivativeStep!5219 (ite c!1245972 (regOne!33607 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))) (ite c!1245973 (regTwo!33606 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))) (regOne!33606 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))))) (head!13522 s!2326)))))

(declare-fun d!2111979 () Bool)

(declare-fun lt!2436683 () Regex!16547)

(assert (=> d!2111979 (validRegex!8283 lt!2436683)))

(declare-fun e!4060668 () Regex!16547)

(assert (=> d!2111979 (= lt!2436683 e!4060668)))

(declare-fun c!1245974 () Bool)

(assert (=> d!2111979 (= c!1245974 (or ((_ is EmptyExpr!16547) (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))) ((_ is EmptyLang!16547) (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292))))))))

(assert (=> d!2111979 (validRegex!8283 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292))))))

(assert (=> d!2111979 (= (derivativeStep!5219 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292))) (head!13522 s!2326)) lt!2436683)))

(declare-fun b!6720006 () Bool)

(declare-fun e!4060667 () Regex!16547)

(declare-fun e!4060669 () Regex!16547)

(assert (=> b!6720006 (= e!4060667 e!4060669)))

(declare-fun c!1245975 () Bool)

(assert (=> b!6720006 (= c!1245975 ((_ is Star!16547) (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))))))

(declare-fun b!6720007 () Bool)

(assert (=> b!6720007 (= e!4060667 (Union!16547 call!606603 call!606604))))

(declare-fun b!6720008 () Bool)

(assert (=> b!6720008 (= c!1245973 (nullable!6534 (regOne!33606 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292))))))))

(assert (=> b!6720008 (= e!4060669 e!4060670)))

(declare-fun b!6720009 () Bool)

(assert (=> b!6720009 (= e!4060669 (Concat!25392 call!606606 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))))))

(declare-fun b!6720010 () Bool)

(assert (=> b!6720010 (= c!1245972 ((_ is Union!16547) (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))))))

(declare-fun e!4060671 () Regex!16547)

(assert (=> b!6720010 (= e!4060671 e!4060667)))

(declare-fun bm!606600 () Bool)

(assert (=> bm!606600 (= call!606605 call!606603)))

(declare-fun b!6720011 () Bool)

(assert (=> b!6720011 (= e!4060668 e!4060671)))

(declare-fun c!1245976 () Bool)

(assert (=> b!6720011 (= c!1245976 ((_ is ElementMatch!16547) (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))))))

(declare-fun b!6720012 () Bool)

(assert (=> b!6720012 (= e!4060668 EmptyLang!16547)))

(declare-fun b!6720013 () Bool)

(assert (=> b!6720013 (= e!4060671 (ite (= (head!13522 s!2326) (c!1245533 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292))))) EmptyExpr!16547 EmptyLang!16547))))

(declare-fun b!6720014 () Bool)

(assert (=> b!6720014 (= e!4060670 (Union!16547 (Concat!25392 call!606605 (regTwo!33606 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292))))) EmptyLang!16547))))

(declare-fun bm!606601 () Bool)

(assert (=> bm!606601 (= call!606604 (derivativeStep!5219 (ite c!1245972 (regTwo!33607 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))) (ite c!1245975 (reg!16876 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))) (regOne!33606 (ite c!1245845 (regTwo!33607 r!7292) (ite c!1245848 (reg!16876 r!7292) (regOne!33606 r!7292)))))) (head!13522 s!2326)))))

(assert (= (and d!2111979 c!1245974) b!6720012))

(assert (= (and d!2111979 (not c!1245974)) b!6720011))

(assert (= (and b!6720011 c!1245976) b!6720013))

(assert (= (and b!6720011 (not c!1245976)) b!6720010))

(assert (= (and b!6720010 c!1245972) b!6720007))

(assert (= (and b!6720010 (not c!1245972)) b!6720006))

(assert (= (and b!6720006 c!1245975) b!6720009))

(assert (= (and b!6720006 (not c!1245975)) b!6720008))

(assert (= (and b!6720008 c!1245973) b!6720005))

(assert (= (and b!6720008 (not c!1245973)) b!6720014))

(assert (= (or b!6720005 b!6720014) bm!606600))

(assert (= (or b!6720009 b!6720005) bm!606598))

(assert (= (or b!6720007 bm!606598) bm!606601))

(assert (= (or b!6720007 bm!606600) bm!606599))

(assert (=> bm!606599 m!7481142))

(declare-fun m!7482320 () Bool)

(assert (=> bm!606599 m!7482320))

(declare-fun m!7482322 () Bool)

(assert (=> d!2111979 m!7482322))

(declare-fun m!7482324 () Bool)

(assert (=> d!2111979 m!7482324))

(declare-fun m!7482326 () Bool)

(assert (=> b!6720008 m!7482326))

(assert (=> bm!606601 m!7481142))

(declare-fun m!7482328 () Bool)

(assert (=> bm!606601 m!7482328))

(assert (=> bm!606499 d!2111979))

(declare-fun b!6720015 () Bool)

(declare-fun e!4060672 () Bool)

(declare-fun e!4060676 () Bool)

(assert (=> b!6720015 (= e!4060672 e!4060676)))

(declare-fun c!1245977 () Bool)

(assert (=> b!6720015 (= c!1245977 ((_ is Union!16547) (reg!16876 r!7292)))))

(declare-fun bm!606602 () Bool)

(declare-fun call!606608 () Bool)

(assert (=> bm!606602 (= call!606608 (nullable!6534 (ite c!1245977 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))))))

(declare-fun b!6720016 () Bool)

(declare-fun e!4060673 () Bool)

(assert (=> b!6720016 (= e!4060676 e!4060673)))

(declare-fun res!2750006 () Bool)

(assert (=> b!6720016 (= res!2750006 call!606608)))

(assert (=> b!6720016 (=> res!2750006 e!4060673)))

(declare-fun bm!606603 () Bool)

(declare-fun call!606607 () Bool)

(assert (=> bm!606603 (= call!606607 (nullable!6534 (ite c!1245977 (regTwo!33607 (reg!16876 r!7292)) (regTwo!33606 (reg!16876 r!7292)))))))

(declare-fun d!2111981 () Bool)

(declare-fun res!2750004 () Bool)

(declare-fun e!4060674 () Bool)

(assert (=> d!2111981 (=> res!2750004 e!4060674)))

(assert (=> d!2111981 (= res!2750004 ((_ is EmptyExpr!16547) (reg!16876 r!7292)))))

(assert (=> d!2111981 (= (nullableFct!2448 (reg!16876 r!7292)) e!4060674)))

(declare-fun b!6720017 () Bool)

(declare-fun e!4060675 () Bool)

(assert (=> b!6720017 (= e!4060676 e!4060675)))

(declare-fun res!2750005 () Bool)

(assert (=> b!6720017 (= res!2750005 call!606608)))

(assert (=> b!6720017 (=> (not res!2750005) (not e!4060675))))

(declare-fun b!6720018 () Bool)

(declare-fun e!4060677 () Bool)

(assert (=> b!6720018 (= e!4060677 e!4060672)))

(declare-fun res!2750003 () Bool)

(assert (=> b!6720018 (=> res!2750003 e!4060672)))

(assert (=> b!6720018 (= res!2750003 ((_ is Star!16547) (reg!16876 r!7292)))))

(declare-fun b!6720019 () Bool)

(assert (=> b!6720019 (= e!4060674 e!4060677)))

(declare-fun res!2750002 () Bool)

(assert (=> b!6720019 (=> (not res!2750002) (not e!4060677))))

(assert (=> b!6720019 (= res!2750002 (and (not ((_ is EmptyLang!16547) (reg!16876 r!7292))) (not ((_ is ElementMatch!16547) (reg!16876 r!7292)))))))

(declare-fun b!6720020 () Bool)

(assert (=> b!6720020 (= e!4060675 call!606607)))

(declare-fun b!6720021 () Bool)

(assert (=> b!6720021 (= e!4060673 call!606607)))

(assert (= (and d!2111981 (not res!2750004)) b!6720019))

(assert (= (and b!6720019 res!2750002) b!6720018))

(assert (= (and b!6720018 (not res!2750003)) b!6720015))

(assert (= (and b!6720015 c!1245977) b!6720016))

(assert (= (and b!6720015 (not c!1245977)) b!6720017))

(assert (= (and b!6720016 (not res!2750006)) b!6720021))

(assert (= (and b!6720017 res!2750005) b!6720020))

(assert (= (or b!6720021 b!6720020) bm!606603))

(assert (= (or b!6720016 b!6720017) bm!606602))

(declare-fun m!7482330 () Bool)

(assert (=> bm!606602 m!7482330))

(declare-fun m!7482332 () Bool)

(assert (=> bm!606603 m!7482332))

(assert (=> d!2111623 d!2111981))

(declare-fun b!6720022 () Bool)

(declare-fun e!4060682 () Bool)

(declare-fun call!606609 () Bool)

(assert (=> b!6720022 (= e!4060682 call!606609)))

(declare-fun b!6720023 () Bool)

(declare-fun res!2750009 () Bool)

(declare-fun e!4060680 () Bool)

(assert (=> b!6720023 (=> res!2750009 e!4060680)))

(assert (=> b!6720023 (= res!2750009 (not ((_ is Concat!25392) (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599))))))))

(declare-fun e!4060683 () Bool)

(assert (=> b!6720023 (= e!4060683 e!4060680)))

(declare-fun b!6720024 () Bool)

(declare-fun res!2750011 () Bool)

(assert (=> b!6720024 (=> (not res!2750011) (not e!4060682))))

(declare-fun call!606610 () Bool)

(assert (=> b!6720024 (= res!2750011 call!606610)))

(assert (=> b!6720024 (= e!4060683 e!4060682)))

(declare-fun b!6720025 () Bool)

(declare-fun e!4060678 () Bool)

(assert (=> b!6720025 (= e!4060678 e!4060683)))

(declare-fun c!1245978 () Bool)

(assert (=> b!6720025 (= c!1245978 ((_ is Union!16547) (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))))))

(declare-fun d!2111983 () Bool)

(declare-fun res!2750007 () Bool)

(declare-fun e!4060684 () Bool)

(assert (=> d!2111983 (=> res!2750007 e!4060684)))

(assert (=> d!2111983 (= res!2750007 ((_ is ElementMatch!16547) (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))))))

(assert (=> d!2111983 (= (validRegex!8283 (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))) e!4060684)))

(declare-fun call!606611 () Bool)

(declare-fun c!1245979 () Bool)

(declare-fun bm!606604 () Bool)

(assert (=> bm!606604 (= call!606611 (validRegex!8283 (ite c!1245979 (reg!16876 (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))) (ite c!1245978 (regTwo!33607 (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))) (regTwo!33606 (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599))))))))))

(declare-fun b!6720026 () Bool)

(declare-fun e!4060681 () Bool)

(assert (=> b!6720026 (= e!4060681 call!606611)))

(declare-fun bm!606605 () Bool)

(assert (=> bm!606605 (= call!606609 call!606611)))

(declare-fun b!6720027 () Bool)

(declare-fun e!4060679 () Bool)

(assert (=> b!6720027 (= e!4060679 call!606609)))

(declare-fun b!6720028 () Bool)

(assert (=> b!6720028 (= e!4060678 e!4060681)))

(declare-fun res!2750010 () Bool)

(assert (=> b!6720028 (= res!2750010 (not (nullable!6534 (reg!16876 (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))))))))

(assert (=> b!6720028 (=> (not res!2750010) (not e!4060681))))

(declare-fun b!6720029 () Bool)

(assert (=> b!6720029 (= e!4060684 e!4060678)))

(assert (=> b!6720029 (= c!1245979 ((_ is Star!16547) (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))))))

(declare-fun b!6720030 () Bool)

(assert (=> b!6720030 (= e!4060680 e!4060679)))

(declare-fun res!2750008 () Bool)

(assert (=> b!6720030 (=> (not res!2750008) (not e!4060679))))

(assert (=> b!6720030 (= res!2750008 call!606610)))

(declare-fun bm!606606 () Bool)

(assert (=> bm!606606 (= call!606610 (validRegex!8283 (ite c!1245978 (regOne!33607 (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))) (regOne!33606 (ite c!1245822 (reg!16876 lt!2436599) (ite c!1245821 (regTwo!33607 lt!2436599) (regTwo!33606 lt!2436599)))))))))

(assert (= (and d!2111983 (not res!2750007)) b!6720029))

(assert (= (and b!6720029 c!1245979) b!6720028))

(assert (= (and b!6720029 (not c!1245979)) b!6720025))

(assert (= (and b!6720028 res!2750010) b!6720026))

(assert (= (and b!6720025 c!1245978) b!6720024))

(assert (= (and b!6720025 (not c!1245978)) b!6720023))

(assert (= (and b!6720024 res!2750011) b!6720022))

(assert (= (and b!6720023 (not res!2750009)) b!6720030))

(assert (= (and b!6720030 res!2750008) b!6720027))

(assert (= (or b!6720022 b!6720027) bm!606605))

(assert (= (or b!6720024 b!6720030) bm!606606))

(assert (= (or b!6720026 bm!606605) bm!606604))

(declare-fun m!7482334 () Bool)

(assert (=> bm!606604 m!7482334))

(declare-fun m!7482336 () Bool)

(assert (=> b!6720028 m!7482336))

(declare-fun m!7482338 () Bool)

(assert (=> bm!606606 m!7482338))

(assert (=> bm!606481 d!2111983))

(declare-fun d!2111985 () Bool)

(assert (=> d!2111985 (= (head!13521 (t!379617 (unfocusZipperList!1968 zl!343))) (h!72264 (t!379617 (unfocusZipperList!1968 zl!343))))))

(assert (=> b!6718867 d!2111985))

(assert (=> b!6719027 d!2111617))

(declare-fun b!6720033 () Bool)

(declare-fun res!2750012 () Bool)

(declare-fun e!4060685 () Bool)

(assert (=> b!6720033 (=> (not res!2750012) (not e!4060685))))

(declare-fun lt!2436684 () List!65942)

(assert (=> b!6720033 (= res!2750012 (= (size!40597 lt!2436684) (+ (size!40597 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818))) (size!40597 (t!379619 (t!379619 s!2326))))))))

(declare-fun d!2111987 () Bool)

(assert (=> d!2111987 e!4060685))

(declare-fun res!2750013 () Bool)

(assert (=> d!2111987 (=> (not res!2750013) (not e!4060685))))

(assert (=> d!2111987 (= res!2750013 (= (content!12765 lt!2436684) ((_ map or) (content!12765 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818))) (content!12765 (t!379619 (t!379619 s!2326))))))))

(declare-fun e!4060686 () List!65942)

(assert (=> d!2111987 (= lt!2436684 e!4060686)))

(declare-fun c!1245980 () Bool)

(assert (=> d!2111987 (= c!1245980 ((_ is Nil!65818) (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818))))))

(assert (=> d!2111987 (= (++!14703 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) (t!379619 (t!379619 s!2326))) lt!2436684)))

(declare-fun b!6720031 () Bool)

(assert (=> b!6720031 (= e!4060686 (t!379619 (t!379619 s!2326)))))

(declare-fun b!6720032 () Bool)

(assert (=> b!6720032 (= e!4060686 (Cons!65818 (h!72266 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818))) (++!14703 (t!379619 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818))) (t!379619 (t!379619 s!2326)))))))

(declare-fun b!6720034 () Bool)

(assert (=> b!6720034 (= e!4060685 (or (not (= (t!379619 (t!379619 s!2326)) Nil!65818)) (= lt!2436684 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)))))))

(assert (= (and d!2111987 c!1245980) b!6720031))

(assert (= (and d!2111987 (not c!1245980)) b!6720032))

(assert (= (and d!2111987 res!2750013) b!6720033))

(assert (= (and b!6720033 res!2750012) b!6720034))

(declare-fun m!7482340 () Bool)

(assert (=> b!6720033 m!7482340))

(assert (=> b!6720033 m!7481748))

(declare-fun m!7482342 () Bool)

(assert (=> b!6720033 m!7482342))

(declare-fun m!7482344 () Bool)

(assert (=> b!6720033 m!7482344))

(declare-fun m!7482346 () Bool)

(assert (=> d!2111987 m!7482346))

(assert (=> d!2111987 m!7481748))

(declare-fun m!7482348 () Bool)

(assert (=> d!2111987 m!7482348))

(assert (=> d!2111987 m!7482166))

(declare-fun m!7482350 () Bool)

(assert (=> b!6720032 m!7482350))

(assert (=> b!6719198 d!2111987))

(declare-fun b!6720037 () Bool)

(declare-fun res!2750014 () Bool)

(declare-fun e!4060687 () Bool)

(assert (=> b!6720037 (=> (not res!2750014) (not e!4060687))))

(declare-fun lt!2436685 () List!65942)

(assert (=> b!6720037 (= res!2750014 (= (size!40597 lt!2436685) (+ (size!40597 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (size!40597 (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)))))))

(declare-fun d!2111989 () Bool)

(assert (=> d!2111989 e!4060687))

(declare-fun res!2750015 () Bool)

(assert (=> d!2111989 (=> (not res!2750015) (not e!4060687))))

(assert (=> d!2111989 (= res!2750015 (= (content!12765 lt!2436685) ((_ map or) (content!12765 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (content!12765 (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)))))))

(declare-fun e!4060688 () List!65942)

(assert (=> d!2111989 (= lt!2436685 e!4060688)))

(declare-fun c!1245981 () Bool)

(assert (=> d!2111989 (= c!1245981 ((_ is Nil!65818) (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))

(assert (=> d!2111989 (= (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) lt!2436685)))

(declare-fun b!6720035 () Bool)

(assert (=> b!6720035 (= e!4060688 (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818))))

(declare-fun b!6720036 () Bool)

(assert (=> b!6720036 (= e!4060688 (Cons!65818 (h!72266 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (++!14703 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818))))))

(declare-fun b!6720038 () Bool)

(assert (=> b!6720038 (= e!4060687 (or (not (= (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818) Nil!65818)) (= lt!2436685 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))))))

(assert (= (and d!2111989 c!1245981) b!6720035))

(assert (= (and d!2111989 (not c!1245981)) b!6720036))

(assert (= (and d!2111989 res!2750015) b!6720037))

(assert (= (and b!6720037 res!2750014) b!6720038))

(declare-fun m!7482352 () Bool)

(assert (=> b!6720037 m!7482352))

(assert (=> b!6720037 m!7481246))

(assert (=> b!6720037 m!7481672))

(declare-fun m!7482354 () Bool)

(assert (=> b!6720037 m!7482354))

(declare-fun m!7482356 () Bool)

(assert (=> d!2111989 m!7482356))

(assert (=> d!2111989 m!7481246))

(assert (=> d!2111989 m!7481678))

(declare-fun m!7482358 () Bool)

(assert (=> d!2111989 m!7482358))

(declare-fun m!7482360 () Bool)

(assert (=> b!6720036 m!7482360))

(assert (=> b!6719198 d!2111989))

(declare-fun d!2111991 () Bool)

(assert (=> d!2111991 (= (++!14703 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) (t!379619 (t!379619 s!2326))) s!2326)))

(declare-fun lt!2436686 () Unit!159785)

(assert (=> d!2111991 (= lt!2436686 (choose!50071 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (h!72266 (t!379619 s!2326)) (t!379619 (t!379619 s!2326)) s!2326))))

(assert (=> d!2111991 (= (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) (t!379619 (t!379619 s!2326)))) s!2326)))

(assert (=> d!2111991 (= (lemmaMoveElementToOtherListKeepsConcatEq!2676 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (h!72266 (t!379619 s!2326)) (t!379619 (t!379619 s!2326)) s!2326) lt!2436686)))

(declare-fun bs!1787921 () Bool)

(assert (= bs!1787921 d!2111991))

(assert (=> bs!1787921 m!7481246))

(assert (=> bs!1787921 m!7481748))

(assert (=> bs!1787921 m!7481748))

(assert (=> bs!1787921 m!7481750))

(assert (=> bs!1787921 m!7481246))

(declare-fun m!7482362 () Bool)

(assert (=> bs!1787921 m!7482362))

(assert (=> bs!1787921 m!7481246))

(declare-fun m!7482364 () Bool)

(assert (=> bs!1787921 m!7482364))

(assert (=> b!6719198 d!2111991))

(declare-fun b!6720039 () Bool)

(declare-fun res!2750020 () Bool)

(declare-fun e!4060690 () Bool)

(assert (=> b!6720039 (=> (not res!2750020) (not e!4060690))))

(declare-fun lt!2436689 () Option!16434)

(assert (=> b!6720039 (= res!2750020 (matchR!8730 (reg!16876 r!7292) (_1!36825 (get!22892 lt!2436689))))))

(declare-fun d!2111993 () Bool)

(declare-fun e!4060692 () Bool)

(assert (=> d!2111993 e!4060692))

(declare-fun res!2750017 () Bool)

(assert (=> d!2111993 (=> res!2750017 e!4060692)))

(assert (=> d!2111993 (= res!2750017 e!4060690)))

(declare-fun res!2750019 () Bool)

(assert (=> d!2111993 (=> (not res!2750019) (not e!4060690))))

(assert (=> d!2111993 (= res!2750019 (isDefined!13137 lt!2436689))))

(declare-fun e!4060689 () Option!16434)

(assert (=> d!2111993 (= lt!2436689 e!4060689)))

(declare-fun c!1245982 () Bool)

(declare-fun e!4060693 () Bool)

(assert (=> d!2111993 (= c!1245982 e!4060693)))

(declare-fun res!2750016 () Bool)

(assert (=> d!2111993 (=> (not res!2750016) (not e!4060693))))

(assert (=> d!2111993 (= res!2750016 (matchR!8730 (reg!16876 r!7292) (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818))))))

(assert (=> d!2111993 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2111993 (= (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) (t!379619 (t!379619 s!2326)) s!2326) lt!2436689)))

(declare-fun b!6720040 () Bool)

(declare-fun res!2750018 () Bool)

(assert (=> b!6720040 (=> (not res!2750018) (not e!4060690))))

(assert (=> b!6720040 (= res!2750018 (matchR!8730 r!7292 (_2!36825 (get!22892 lt!2436689))))))

(declare-fun b!6720041 () Bool)

(declare-fun e!4060691 () Option!16434)

(assert (=> b!6720041 (= e!4060689 e!4060691)))

(declare-fun c!1245983 () Bool)

(assert (=> b!6720041 (= c!1245983 ((_ is Nil!65818) (t!379619 (t!379619 s!2326))))))

(declare-fun b!6720042 () Bool)

(assert (=> b!6720042 (= e!4060692 (not (isDefined!13137 lt!2436689)))))

(declare-fun b!6720043 () Bool)

(assert (=> b!6720043 (= e!4060691 None!16433)))

(declare-fun b!6720044 () Bool)

(assert (=> b!6720044 (= e!4060693 (matchR!8730 r!7292 (t!379619 (t!379619 s!2326))))))

(declare-fun b!6720045 () Bool)

(assert (=> b!6720045 (= e!4060689 (Some!16433 (tuple2!67045 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) (t!379619 (t!379619 s!2326)))))))

(declare-fun b!6720046 () Bool)

(declare-fun lt!2436687 () Unit!159785)

(declare-fun lt!2436688 () Unit!159785)

(assert (=> b!6720046 (= lt!2436687 lt!2436688)))

(assert (=> b!6720046 (= (++!14703 (++!14703 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) (Cons!65818 (h!72266 (t!379619 (t!379619 s!2326))) Nil!65818)) (t!379619 (t!379619 (t!379619 s!2326)))) s!2326)))

(assert (=> b!6720046 (= lt!2436688 (lemmaMoveElementToOtherListKeepsConcatEq!2676 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) (h!72266 (t!379619 (t!379619 s!2326))) (t!379619 (t!379619 (t!379619 s!2326))) s!2326))))

(assert (=> b!6720046 (= e!4060691 (findConcatSeparation!2848 (reg!16876 r!7292) r!7292 (++!14703 (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (Cons!65818 (h!72266 (t!379619 s!2326)) Nil!65818)) (Cons!65818 (h!72266 (t!379619 (t!379619 s!2326))) Nil!65818)) (t!379619 (t!379619 (t!379619 s!2326))) s!2326))))

(declare-fun b!6720047 () Bool)

(assert (=> b!6720047 (= e!4060690 (= (++!14703 (_1!36825 (get!22892 lt!2436689)) (_2!36825 (get!22892 lt!2436689))) s!2326))))

(assert (= (and d!2111993 res!2750016) b!6720044))

(assert (= (and d!2111993 c!1245982) b!6720045))

(assert (= (and d!2111993 (not c!1245982)) b!6720041))

(assert (= (and b!6720041 c!1245983) b!6720043))

(assert (= (and b!6720041 (not c!1245983)) b!6720046))

(assert (= (and d!2111993 res!2750019) b!6720039))

(assert (= (and b!6720039 res!2750020) b!6720040))

(assert (= (and b!6720040 res!2750018) b!6720047))

(assert (= (and d!2111993 (not res!2750017)) b!6720042))

(declare-fun m!7482366 () Bool)

(assert (=> b!6720044 m!7482366))

(assert (=> b!6720046 m!7481748))

(declare-fun m!7482368 () Bool)

(assert (=> b!6720046 m!7482368))

(assert (=> b!6720046 m!7482368))

(declare-fun m!7482370 () Bool)

(assert (=> b!6720046 m!7482370))

(assert (=> b!6720046 m!7481748))

(declare-fun m!7482372 () Bool)

(assert (=> b!6720046 m!7482372))

(assert (=> b!6720046 m!7482368))

(declare-fun m!7482374 () Bool)

(assert (=> b!6720046 m!7482374))

(declare-fun m!7482376 () Bool)

(assert (=> d!2111993 m!7482376))

(assert (=> d!2111993 m!7481748))

(declare-fun m!7482378 () Bool)

(assert (=> d!2111993 m!7482378))

(assert (=> d!2111993 m!7481234))

(assert (=> b!6720042 m!7482376))

(declare-fun m!7482380 () Bool)

(assert (=> b!6720047 m!7482380))

(declare-fun m!7482382 () Bool)

(assert (=> b!6720047 m!7482382))

(assert (=> b!6720040 m!7482380))

(declare-fun m!7482384 () Bool)

(assert (=> b!6720040 m!7482384))

(assert (=> b!6720039 m!7482380))

(declare-fun m!7482386 () Bool)

(assert (=> b!6720039 m!7482386))

(assert (=> b!6719198 d!2111993))

(declare-fun d!2111995 () Bool)

(assert (=> d!2111995 (= (nullable!6534 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))) (nullableFct!2448 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))

(declare-fun bs!1787922 () Bool)

(assert (= bs!1787922 d!2111995))

(declare-fun m!7482388 () Bool)

(assert (=> bs!1787922 m!7482388))

(assert (=> b!6719018 d!2111995))

(declare-fun bs!1787923 () Bool)

(declare-fun b!6720058 () Bool)

(assert (= bs!1787923 (and b!6720058 d!2111467)))

(declare-fun lambda!376954 () Int)

(assert (=> bs!1787923 (not (= lambda!376954 lambda!376886))))

(declare-fun bs!1787924 () Bool)

(assert (= bs!1787924 (and b!6720058 b!6718346)))

(assert (=> bs!1787924 (not (= lambda!376954 lambda!376863))))

(declare-fun bs!1787925 () Bool)

(assert (= bs!1787925 (and b!6720058 b!6719732)))

(assert (=> bs!1787925 (= (and (= (reg!16876 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 (regOne!33607 (regOne!33607 r!7292)))) (= (regTwo!33607 (regOne!33607 r!7292)) (regOne!33607 (regOne!33607 r!7292)))) (= lambda!376954 lambda!376944))))

(declare-fun bs!1787926 () Bool)

(assert (= bs!1787926 (and b!6720058 b!6719725)))

(assert (=> bs!1787926 (not (= lambda!376954 lambda!376945))))

(declare-fun bs!1787927 () Bool)

(assert (= bs!1787927 (and b!6720058 d!2111631)))

(assert (=> bs!1787927 (= (and (= (reg!16876 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33607 (regOne!33607 r!7292)) (Star!16547 (reg!16876 r!7292)))) (= lambda!376954 lambda!376923))))

(declare-fun bs!1787928 () Bool)

(assert (= bs!1787928 (and b!6720058 b!6718353)))

(assert (=> bs!1787928 (= (and (= (reg!16876 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33607 (regOne!33607 r!7292)) r!7292)) (= lambda!376954 lambda!376862))))

(declare-fun bs!1787929 () Bool)

(assert (= bs!1787929 (and b!6720058 d!2111655)))

(assert (=> bs!1787929 (not (= lambda!376954 lambda!376934))))

(declare-fun bs!1787930 () Bool)

(assert (= bs!1787930 (and b!6720058 b!6719488)))

(assert (=> bs!1787930 (not (= lambda!376954 lambda!376943))))

(declare-fun bs!1787931 () Bool)

(assert (= bs!1787931 (and b!6720058 b!6718915)))

(assert (=> bs!1787931 (= (and (= (reg!16876 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 (regOne!33607 r!7292))) (= (regTwo!33607 (regOne!33607 r!7292)) (regOne!33607 r!7292))) (= lambda!376954 lambda!376901))))

(declare-fun bs!1787932 () Bool)

(assert (= bs!1787932 (and b!6720058 b!6718097)))

(assert (=> bs!1787932 (= (and (= (reg!16876 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33607 (regOne!33607 r!7292)) r!7292)) (= lambda!376954 lambda!376826))))

(assert (=> bs!1787929 (not (= lambda!376954 lambda!376935))))

(assert (=> bs!1787923 (not (= lambda!376954 lambda!376885))))

(declare-fun bs!1787933 () Bool)

(assert (= bs!1787933 (and b!6720058 b!6719495)))

(assert (=> bs!1787933 (= (and (= (reg!16876 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 (regTwo!33607 r!7292))) (= (regTwo!33607 (regOne!33607 r!7292)) (regTwo!33607 r!7292))) (= lambda!376954 lambda!376942))))

(declare-fun bs!1787934 () Bool)

(assert (= bs!1787934 (and b!6720058 d!2111573)))

(assert (=> bs!1787934 (not (= lambda!376954 lambda!376905))))

(declare-fun bs!1787935 () Bool)

(assert (= bs!1787935 (and b!6720058 d!2111469)))

(assert (=> bs!1787935 (= (and (= (reg!16876 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33607 (regOne!33607 r!7292)) (Star!16547 (reg!16876 r!7292)))) (= lambda!376954 lambda!376892))))

(assert (=> bs!1787932 (not (= lambda!376954 lambda!376825))))

(declare-fun bs!1787936 () Bool)

(assert (= bs!1787936 (and b!6720058 d!2111481)))

(assert (=> bs!1787936 (not (= lambda!376954 lambda!376895))))

(declare-fun bs!1787937 () Bool)

(assert (= bs!1787937 (and b!6720058 b!6719754)))

(assert (=> bs!1787937 (= (and (= (reg!16876 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 (regOne!33607 (regTwo!33607 r!7292)))) (= (regTwo!33607 (regOne!33607 r!7292)) (regOne!33607 (regTwo!33607 r!7292)))) (= lambda!376954 lambda!376946))))

(assert (=> bs!1787932 (not (= lambda!376954 lambda!376827))))

(assert (=> bs!1787927 (not (= lambda!376954 lambda!376922))))

(declare-fun bs!1787938 () Bool)

(assert (= bs!1787938 (and b!6720058 b!6718908)))

(assert (=> bs!1787938 (not (= lambda!376954 lambda!376902))))

(declare-fun bs!1787939 () Bool)

(assert (= bs!1787939 (and b!6720058 b!6719747)))

(assert (=> bs!1787939 (not (= lambda!376954 lambda!376947))))

(assert (=> bs!1787935 (not (= lambda!376954 lambda!376891))))

(assert (=> b!6720058 true))

(assert (=> b!6720058 true))

(declare-fun bs!1787940 () Bool)

(declare-fun b!6720051 () Bool)

(assert (= bs!1787940 (and b!6720051 d!2111467)))

(declare-fun lambda!376955 () Int)

(assert (=> bs!1787940 (= (and (= (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))) r!7292)) (= lambda!376955 lambda!376886))))

(declare-fun bs!1787941 () Bool)

(assert (= bs!1787941 (and b!6720051 b!6718346)))

(assert (=> bs!1787941 (= (and (= (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))) (regOne!33606 r!7292)) (= (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))) (regTwo!33606 r!7292))) (= lambda!376955 lambda!376863))))

(declare-fun bs!1787942 () Bool)

(assert (= bs!1787942 (and b!6720051 b!6719732)))

(assert (=> bs!1787942 (not (= lambda!376955 lambda!376944))))

(declare-fun bs!1787943 () Bool)

(assert (= bs!1787943 (and b!6720051 b!6719725)))

(assert (=> bs!1787943 (= (and (= (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))) (regOne!33606 (regOne!33607 (regOne!33607 r!7292)))) (= (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))) (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))))) (= lambda!376955 lambda!376945))))

(declare-fun bs!1787944 () Bool)

(assert (= bs!1787944 (and b!6720051 d!2111631)))

(assert (=> bs!1787944 (not (= lambda!376955 lambda!376923))))

(declare-fun bs!1787945 () Bool)

(assert (= bs!1787945 (and b!6720051 b!6718353)))

(assert (=> bs!1787945 (not (= lambda!376955 lambda!376862))))

(declare-fun bs!1787946 () Bool)

(assert (= bs!1787946 (and b!6720051 d!2111655)))

(assert (=> bs!1787946 (not (= lambda!376955 lambda!376934))))

(declare-fun bs!1787947 () Bool)

(assert (= bs!1787947 (and b!6720051 b!6719488)))

(assert (=> bs!1787947 (= (and (= (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))) (regOne!33606 (regTwo!33607 r!7292))) (= (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))) (regTwo!33606 (regTwo!33607 r!7292)))) (= lambda!376955 lambda!376943))))

(declare-fun bs!1787948 () Bool)

(assert (= bs!1787948 (and b!6720051 b!6718915)))

(assert (=> bs!1787948 (not (= lambda!376955 lambda!376901))))

(declare-fun bs!1787949 () Bool)

(assert (= bs!1787949 (and b!6720051 b!6718097)))

(assert (=> bs!1787949 (not (= lambda!376955 lambda!376826))))

(assert (=> bs!1787946 (= (and (= (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))) r!7292)) (= lambda!376955 lambda!376935))))

(assert (=> bs!1787940 (not (= lambda!376955 lambda!376885))))

(declare-fun bs!1787950 () Bool)

(assert (= bs!1787950 (and b!6720051 b!6719495)))

(assert (=> bs!1787950 (not (= lambda!376955 lambda!376942))))

(declare-fun bs!1787951 () Bool)

(assert (= bs!1787951 (and b!6720051 d!2111573)))

(assert (=> bs!1787951 (not (= lambda!376955 lambda!376905))))

(declare-fun bs!1787952 () Bool)

(assert (= bs!1787952 (and b!6720051 b!6720058)))

(assert (=> bs!1787952 (not (= lambda!376955 lambda!376954))))

(declare-fun bs!1787953 () Bool)

(assert (= bs!1787953 (and b!6720051 d!2111469)))

(assert (=> bs!1787953 (not (= lambda!376955 lambda!376892))))

(assert (=> bs!1787949 (not (= lambda!376955 lambda!376825))))

(declare-fun bs!1787954 () Bool)

(assert (= bs!1787954 (and b!6720051 d!2111481)))

(assert (=> bs!1787954 (not (= lambda!376955 lambda!376895))))

(declare-fun bs!1787955 () Bool)

(assert (= bs!1787955 (and b!6720051 b!6719754)))

(assert (=> bs!1787955 (not (= lambda!376955 lambda!376946))))

(assert (=> bs!1787949 (= (and (= (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))) r!7292)) (= lambda!376955 lambda!376827))))

(assert (=> bs!1787944 (not (= lambda!376955 lambda!376922))))

(declare-fun bs!1787956 () Bool)

(assert (= bs!1787956 (and b!6720051 b!6718908)))

(assert (=> bs!1787956 (= (and (= (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))) (regOne!33606 (regOne!33607 r!7292))) (= (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))) (regTwo!33606 (regOne!33607 r!7292)))) (= lambda!376955 lambda!376902))))

(declare-fun bs!1787957 () Bool)

(assert (= bs!1787957 (and b!6720051 b!6719747)))

(assert (=> bs!1787957 (= (and (= (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))) (regOne!33606 (regOne!33607 (regTwo!33607 r!7292)))) (= (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))) (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))))) (= lambda!376955 lambda!376947))))

(assert (=> bs!1787953 (not (= lambda!376955 lambda!376891))))

(assert (=> b!6720051 true))

(assert (=> b!6720051 true))

(declare-fun b!6720048 () Bool)

(declare-fun e!4060700 () Bool)

(declare-fun e!4060698 () Bool)

(assert (=> b!6720048 (= e!4060700 e!4060698)))

(declare-fun res!2750021 () Bool)

(assert (=> b!6720048 (= res!2750021 (matchRSpec!3648 (regOne!33607 (regTwo!33607 (regOne!33607 r!7292))) s!2326))))

(assert (=> b!6720048 (=> res!2750021 e!4060698)))

(declare-fun b!6720049 () Bool)

(declare-fun c!1245984 () Bool)

(assert (=> b!6720049 (= c!1245984 ((_ is Union!16547) (regTwo!33607 (regOne!33607 r!7292))))))

(declare-fun e!4060694 () Bool)

(assert (=> b!6720049 (= e!4060694 e!4060700)))

(declare-fun b!6720050 () Bool)

(assert (=> b!6720050 (= e!4060694 (= s!2326 (Cons!65818 (c!1245533 (regTwo!33607 (regOne!33607 r!7292))) Nil!65818)))))

(declare-fun b!6720052 () Bool)

(declare-fun c!1245985 () Bool)

(assert (=> b!6720052 (= c!1245985 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33607 r!7292))))))

(declare-fun e!4060695 () Bool)

(assert (=> b!6720052 (= e!4060695 e!4060694)))

(declare-fun b!6720053 () Bool)

(declare-fun res!2750023 () Bool)

(declare-fun e!4060699 () Bool)

(assert (=> b!6720053 (=> res!2750023 e!4060699)))

(declare-fun call!606612 () Bool)

(assert (=> b!6720053 (= res!2750023 call!606612)))

(declare-fun e!4060696 () Bool)

(assert (=> b!6720053 (= e!4060696 e!4060699)))

(declare-fun b!6720054 () Bool)

(declare-fun e!4060697 () Bool)

(assert (=> b!6720054 (= e!4060697 call!606612)))

(declare-fun b!6720055 () Bool)

(assert (=> b!6720055 (= e!4060698 (matchRSpec!3648 (regTwo!33607 (regTwo!33607 (regOne!33607 r!7292))) s!2326))))

(declare-fun bm!606607 () Bool)

(assert (=> bm!606607 (= call!606612 (isEmpty!38137 s!2326))))

(declare-fun b!6720056 () Bool)

(assert (=> b!6720056 (= e!4060697 e!4060695)))

(declare-fun res!2750022 () Bool)

(assert (=> b!6720056 (= res!2750022 (not ((_ is EmptyLang!16547) (regTwo!33607 (regOne!33607 r!7292)))))))

(assert (=> b!6720056 (=> (not res!2750022) (not e!4060695))))

(declare-fun b!6720057 () Bool)

(assert (=> b!6720057 (= e!4060700 e!4060696)))

(declare-fun c!1245987 () Bool)

(assert (=> b!6720057 (= c!1245987 ((_ is Star!16547) (regTwo!33607 (regOne!33607 r!7292))))))

(declare-fun call!606613 () Bool)

(assert (=> b!6720051 (= e!4060696 call!606613)))

(declare-fun d!2111997 () Bool)

(declare-fun c!1245986 () Bool)

(assert (=> d!2111997 (= c!1245986 ((_ is EmptyExpr!16547) (regTwo!33607 (regOne!33607 r!7292))))))

(assert (=> d!2111997 (= (matchRSpec!3648 (regTwo!33607 (regOne!33607 r!7292)) s!2326) e!4060697)))

(assert (=> b!6720058 (= e!4060699 call!606613)))

(declare-fun bm!606608 () Bool)

(assert (=> bm!606608 (= call!606613 (Exists!3615 (ite c!1245987 lambda!376954 lambda!376955)))))

(assert (= (and d!2111997 c!1245986) b!6720054))

(assert (= (and d!2111997 (not c!1245986)) b!6720056))

(assert (= (and b!6720056 res!2750022) b!6720052))

(assert (= (and b!6720052 c!1245985) b!6720050))

(assert (= (and b!6720052 (not c!1245985)) b!6720049))

(assert (= (and b!6720049 c!1245984) b!6720048))

(assert (= (and b!6720049 (not c!1245984)) b!6720057))

(assert (= (and b!6720048 (not res!2750021)) b!6720055))

(assert (= (and b!6720057 c!1245987) b!6720053))

(assert (= (and b!6720057 (not c!1245987)) b!6720051))

(assert (= (and b!6720053 (not res!2750023)) b!6720058))

(assert (= (or b!6720058 b!6720051) bm!606608))

(assert (= (or b!6720054 b!6720053) bm!606607))

(declare-fun m!7482390 () Bool)

(assert (=> b!6720048 m!7482390))

(declare-fun m!7482392 () Bool)

(assert (=> b!6720055 m!7482392))

(assert (=> bm!606607 m!7480976))

(declare-fun m!7482394 () Bool)

(assert (=> bm!606608 m!7482394))

(assert (=> b!6718912 d!2111997))

(declare-fun d!2111999 () Bool)

(assert (=> d!2111999 (= (Exists!3615 lambda!376922) (choose!50069 lambda!376922))))

(declare-fun bs!1787958 () Bool)

(assert (= bs!1787958 d!2111999))

(declare-fun m!7482396 () Bool)

(assert (=> bs!1787958 m!7482396))

(assert (=> d!2111631 d!2111999))

(declare-fun d!2112001 () Bool)

(assert (=> d!2112001 (= (Exists!3615 lambda!376923) (choose!50069 lambda!376923))))

(declare-fun bs!1787959 () Bool)

(assert (= bs!1787959 d!2112001))

(declare-fun m!7482398 () Bool)

(assert (=> bs!1787959 m!7482398))

(assert (=> d!2111631 d!2112001))

(declare-fun d!2112003 () Bool)

(assert (=> d!2112003 (= (nullable!6534 (reg!16876 lt!2436599)) (nullableFct!2448 (reg!16876 lt!2436599)))))

(declare-fun bs!1787960 () Bool)

(assert (= bs!1787960 d!2112003))

(declare-fun m!7482400 () Bool)

(assert (=> bs!1787960 m!7482400))

(assert (=> b!6719263 d!2112003))

(declare-fun d!2112005 () Bool)

(assert (=> d!2112005 (= (nullable!6534 (derivativeStep!5219 r!7292 (head!13522 s!2326))) (nullableFct!2448 (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(declare-fun bs!1787961 () Bool)

(assert (= bs!1787961 d!2112005))

(assert (=> bs!1787961 m!7481148))

(declare-fun m!7482402 () Bool)

(assert (=> bs!1787961 m!7482402))

(assert (=> b!6719436 d!2112005))

(declare-fun d!2112007 () Bool)

(assert (=> d!2112007 (= (nullable!6534 (reg!16876 lt!2436565)) (nullableFct!2448 (reg!16876 lt!2436565)))))

(declare-fun bs!1787962 () Bool)

(assert (= bs!1787962 d!2112007))

(declare-fun m!7482404 () Bool)

(assert (=> bs!1787962 m!7482404))

(assert (=> b!6719254 d!2112007))

(assert (=> b!6718862 d!2111571))

(assert (=> bs!1787777 d!2111911))

(declare-fun d!2112009 () Bool)

(assert (=> d!2112009 (= (nullable!6534 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))) (nullableFct!2448 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))

(declare-fun bs!1787963 () Bool)

(assert (= bs!1787963 d!2112009))

(declare-fun m!7482406 () Bool)

(assert (=> bs!1787963 m!7482406))

(assert (=> b!6719477 d!2112009))

(declare-fun d!2112011 () Bool)

(assert (=> d!2112011 true))

(assert (=> d!2112011 true))

(declare-fun res!2750024 () Bool)

(assert (=> d!2112011 (= (choose!50069 lambda!376892) res!2750024)))

(assert (=> d!2111629 d!2112011))

(declare-fun d!2112013 () Bool)

(assert (=> d!2112013 (= (Exists!3615 lambda!376934) (choose!50069 lambda!376934))))

(declare-fun bs!1787964 () Bool)

(assert (= bs!1787964 d!2112013))

(declare-fun m!7482408 () Bool)

(assert (=> bs!1787964 m!7482408))

(assert (=> d!2111655 d!2112013))

(declare-fun d!2112015 () Bool)

(assert (=> d!2112015 (= (Exists!3615 lambda!376935) (choose!50069 lambda!376935))))

(declare-fun bs!1787965 () Bool)

(assert (= bs!1787965 d!2112015))

(declare-fun m!7482410 () Bool)

(assert (=> bs!1787965 m!7482410))

(assert (=> d!2111655 d!2112015))

(declare-fun d!2112017 () Bool)

(assert (=> d!2112017 (= (isEmpty!38137 Nil!65818) true)))

(assert (=> d!2111561 d!2112017))

(assert (=> d!2111561 d!2111565))

(declare-fun b!6720059 () Bool)

(declare-fun e!4060705 () Bool)

(declare-fun call!606614 () Bool)

(assert (=> b!6720059 (= e!4060705 call!606614)))

(declare-fun b!6720060 () Bool)

(declare-fun res!2750027 () Bool)

(declare-fun e!4060703 () Bool)

(assert (=> b!6720060 (=> res!2750027 e!4060703)))

(assert (=> b!6720060 (= res!2750027 (not ((_ is Concat!25392) (h!72264 (exprs!6431 setElem!45799)))))))

(declare-fun e!4060706 () Bool)

(assert (=> b!6720060 (= e!4060706 e!4060703)))

(declare-fun b!6720061 () Bool)

(declare-fun res!2750029 () Bool)

(assert (=> b!6720061 (=> (not res!2750029) (not e!4060705))))

(declare-fun call!606615 () Bool)

(assert (=> b!6720061 (= res!2750029 call!606615)))

(assert (=> b!6720061 (= e!4060706 e!4060705)))

(declare-fun b!6720062 () Bool)

(declare-fun e!4060701 () Bool)

(assert (=> b!6720062 (= e!4060701 e!4060706)))

(declare-fun c!1245988 () Bool)

(assert (=> b!6720062 (= c!1245988 ((_ is Union!16547) (h!72264 (exprs!6431 setElem!45799))))))

(declare-fun d!2112019 () Bool)

(declare-fun res!2750025 () Bool)

(declare-fun e!4060707 () Bool)

(assert (=> d!2112019 (=> res!2750025 e!4060707)))

(assert (=> d!2112019 (= res!2750025 ((_ is ElementMatch!16547) (h!72264 (exprs!6431 setElem!45799))))))

(assert (=> d!2112019 (= (validRegex!8283 (h!72264 (exprs!6431 setElem!45799))) e!4060707)))

(declare-fun call!606616 () Bool)

(declare-fun c!1245989 () Bool)

(declare-fun bm!606609 () Bool)

(assert (=> bm!606609 (= call!606616 (validRegex!8283 (ite c!1245989 (reg!16876 (h!72264 (exprs!6431 setElem!45799))) (ite c!1245988 (regTwo!33607 (h!72264 (exprs!6431 setElem!45799))) (regTwo!33606 (h!72264 (exprs!6431 setElem!45799)))))))))

(declare-fun b!6720063 () Bool)

(declare-fun e!4060704 () Bool)

(assert (=> b!6720063 (= e!4060704 call!606616)))

(declare-fun bm!606610 () Bool)

(assert (=> bm!606610 (= call!606614 call!606616)))

(declare-fun b!6720064 () Bool)

(declare-fun e!4060702 () Bool)

(assert (=> b!6720064 (= e!4060702 call!606614)))

(declare-fun b!6720065 () Bool)

(assert (=> b!6720065 (= e!4060701 e!4060704)))

(declare-fun res!2750028 () Bool)

(assert (=> b!6720065 (= res!2750028 (not (nullable!6534 (reg!16876 (h!72264 (exprs!6431 setElem!45799))))))))

(assert (=> b!6720065 (=> (not res!2750028) (not e!4060704))))

(declare-fun b!6720066 () Bool)

(assert (=> b!6720066 (= e!4060707 e!4060701)))

(assert (=> b!6720066 (= c!1245989 ((_ is Star!16547) (h!72264 (exprs!6431 setElem!45799))))))

(declare-fun b!6720067 () Bool)

(assert (=> b!6720067 (= e!4060703 e!4060702)))

(declare-fun res!2750026 () Bool)

(assert (=> b!6720067 (=> (not res!2750026) (not e!4060702))))

(assert (=> b!6720067 (= res!2750026 call!606615)))

(declare-fun bm!606611 () Bool)

(assert (=> bm!606611 (= call!606615 (validRegex!8283 (ite c!1245988 (regOne!33607 (h!72264 (exprs!6431 setElem!45799))) (regOne!33606 (h!72264 (exprs!6431 setElem!45799))))))))

(assert (= (and d!2112019 (not res!2750025)) b!6720066))

(assert (= (and b!6720066 c!1245989) b!6720065))

(assert (= (and b!6720066 (not c!1245989)) b!6720062))

(assert (= (and b!6720065 res!2750028) b!6720063))

(assert (= (and b!6720062 c!1245988) b!6720061))

(assert (= (and b!6720062 (not c!1245988)) b!6720060))

(assert (= (and b!6720061 res!2750029) b!6720059))

(assert (= (and b!6720060 (not res!2750027)) b!6720067))

(assert (= (and b!6720067 res!2750026) b!6720064))

(assert (= (or b!6720059 b!6720064) bm!606610))

(assert (= (or b!6720061 b!6720067) bm!606611))

(assert (= (or b!6720063 bm!606610) bm!606609))

(declare-fun m!7482412 () Bool)

(assert (=> bm!606609 m!7482412))

(declare-fun m!7482414 () Bool)

(assert (=> b!6720065 m!7482414))

(declare-fun m!7482416 () Bool)

(assert (=> bm!606611 m!7482416))

(assert (=> bs!1787779 d!2112019))

(declare-fun bm!606612 () Bool)

(declare-fun call!606621 () List!65940)

(declare-fun call!606622 () List!65940)

(assert (=> bm!606612 (= call!606621 call!606622)))

(declare-fun b!6720068 () Bool)

(declare-fun e!4060710 () (InoxSet Context!11862))

(assert (=> b!6720068 (= e!4060710 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6720069 () Bool)

(declare-fun call!606617 () (InoxSet Context!11862))

(assert (=> b!6720069 (= e!4060710 call!606617)))

(declare-fun c!1245993 () Bool)

(declare-fun call!606619 () (InoxSet Context!11862))

(declare-fun bm!606613 () Bool)

(assert (=> bm!606613 (= call!606619 (derivationStepZipperDown!1775 (ite c!1245993 (regOne!33607 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))) (regOne!33606 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))) (ite c!1245993 (ite (or c!1245853 c!1245854) (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606509)) (Context!11863 call!606622)) (h!72266 s!2326)))))

(declare-fun b!6720070 () Bool)

(declare-fun e!4060712 () (InoxSet Context!11862))

(declare-fun call!606618 () (InoxSet Context!11862))

(assert (=> b!6720070 (= e!4060712 ((_ map or) call!606619 call!606618))))

(declare-fun b!6720071 () Bool)

(declare-fun e!4060711 () Bool)

(assert (=> b!6720071 (= e!4060711 (nullable!6534 (regOne!33606 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))))

(declare-fun b!6720072 () Bool)

(declare-fun e!4060709 () (InoxSet Context!11862))

(assert (=> b!6720072 (= e!4060712 e!4060709)))

(declare-fun c!1245991 () Bool)

(assert (=> b!6720072 (= c!1245991 ((_ is Concat!25392) (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))))

(declare-fun e!4060708 () (InoxSet Context!11862))

(declare-fun b!6720073 () Bool)

(assert (=> b!6720073 (= e!4060708 (store ((as const (Array Context!11862 Bool)) false) (ite (or c!1245853 c!1245854) (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606509)) true))))

(declare-fun b!6720074 () Bool)

(declare-fun e!4060713 () (InoxSet Context!11862))

(declare-fun call!606620 () (InoxSet Context!11862))

(assert (=> b!6720074 (= e!4060713 ((_ map or) call!606619 call!606620))))

(declare-fun b!6720075 () Bool)

(assert (=> b!6720075 (= e!4060708 e!4060713)))

(assert (=> b!6720075 (= c!1245993 ((_ is Union!16547) (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))))

(declare-fun bm!606615 () Bool)

(assert (=> bm!606615 (= call!606617 call!606618)))

(declare-fun b!6720076 () Bool)

(assert (=> b!6720076 (= e!4060709 call!606617)))

(declare-fun bm!606616 () Bool)

(declare-fun c!1245994 () Bool)

(assert (=> bm!606616 (= call!606622 ($colon$colon!2364 (exprs!6431 (ite (or c!1245853 c!1245854) (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606509))) (ite (or c!1245994 c!1245991) (regTwo!33606 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))) (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))))

(declare-fun bm!606617 () Bool)

(assert (=> bm!606617 (= call!606620 (derivationStepZipperDown!1775 (ite c!1245993 (regTwo!33607 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))) (ite c!1245994 (regTwo!33606 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))) (ite c!1245991 (regOne!33606 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))) (reg!16876 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))) (ite (or c!1245993 c!1245994) (ite (or c!1245853 c!1245854) (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606509)) (Context!11863 call!606621)) (h!72266 s!2326)))))

(declare-fun c!1245990 () Bool)

(declare-fun b!6720077 () Bool)

(assert (=> b!6720077 (= c!1245990 ((_ is Star!16547) (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))))

(assert (=> b!6720077 (= e!4060709 e!4060710)))

(declare-fun b!6720078 () Bool)

(assert (=> b!6720078 (= c!1245994 e!4060711)))

(declare-fun res!2750030 () Bool)

(assert (=> b!6720078 (=> (not res!2750030) (not e!4060711))))

(assert (=> b!6720078 (= res!2750030 ((_ is Concat!25392) (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))))

(assert (=> b!6720078 (= e!4060713 e!4060712)))

(declare-fun d!2112021 () Bool)

(declare-fun c!1245992 () Bool)

(assert (=> d!2112021 (= c!1245992 (and ((_ is ElementMatch!16547) (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))) (= (c!1245533 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))) (h!72266 s!2326))))))

(assert (=> d!2112021 (= (derivationStepZipperDown!1775 (ite c!1245853 (regTwo!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245854 (regTwo!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (ite c!1245851 (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (reg!16876 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))) (ite (or c!1245853 c!1245854) (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606509)) (h!72266 s!2326)) e!4060708)))

(declare-fun bm!606614 () Bool)

(assert (=> bm!606614 (= call!606618 call!606620)))

(assert (= (and d!2112021 c!1245992) b!6720073))

(assert (= (and d!2112021 (not c!1245992)) b!6720075))

(assert (= (and b!6720075 c!1245993) b!6720074))

(assert (= (and b!6720075 (not c!1245993)) b!6720078))

(assert (= (and b!6720078 res!2750030) b!6720071))

(assert (= (and b!6720078 c!1245994) b!6720070))

(assert (= (and b!6720078 (not c!1245994)) b!6720072))

(assert (= (and b!6720072 c!1245991) b!6720076))

(assert (= (and b!6720072 (not c!1245991)) b!6720077))

(assert (= (and b!6720077 c!1245990) b!6720069))

(assert (= (and b!6720077 (not c!1245990)) b!6720068))

(assert (= (or b!6720076 b!6720069) bm!606612))

(assert (= (or b!6720076 b!6720069) bm!606615))

(assert (= (or b!6720070 bm!606612) bm!606616))

(assert (= (or b!6720070 bm!606615) bm!606614))

(assert (= (or b!6720074 bm!606614) bm!606617))

(assert (= (or b!6720074 b!6720070) bm!606613))

(declare-fun m!7482418 () Bool)

(assert (=> bm!606613 m!7482418))

(declare-fun m!7482420 () Bool)

(assert (=> b!6720073 m!7482420))

(declare-fun m!7482422 () Bool)

(assert (=> bm!606617 m!7482422))

(declare-fun m!7482424 () Bool)

(assert (=> b!6720071 m!7482424))

(declare-fun m!7482426 () Bool)

(assert (=> bm!606616 m!7482426))

(assert (=> bm!606505 d!2112021))

(declare-fun d!2112023 () Bool)

(assert (not d!2112023))

(assert (=> b!6718894 d!2112023))

(declare-fun d!2112025 () Bool)

(assert (not d!2112025))

(assert (=> b!6718894 d!2112025))

(declare-fun b!6720079 () Bool)

(declare-fun e!4060718 () Bool)

(declare-fun call!606623 () Bool)

(assert (=> b!6720079 (= e!4060718 call!606623)))

(declare-fun b!6720080 () Bool)

(declare-fun res!2750033 () Bool)

(declare-fun e!4060716 () Bool)

(assert (=> b!6720080 (=> res!2750033 e!4060716)))

(assert (=> b!6720080 (= res!2750033 (not ((_ is Concat!25392) (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565))))))))

(declare-fun e!4060719 () Bool)

(assert (=> b!6720080 (= e!4060719 e!4060716)))

(declare-fun b!6720081 () Bool)

(declare-fun res!2750035 () Bool)

(assert (=> b!6720081 (=> (not res!2750035) (not e!4060718))))

(declare-fun call!606624 () Bool)

(assert (=> b!6720081 (= res!2750035 call!606624)))

(assert (=> b!6720081 (= e!4060719 e!4060718)))

(declare-fun b!6720082 () Bool)

(declare-fun e!4060714 () Bool)

(assert (=> b!6720082 (= e!4060714 e!4060719)))

(declare-fun c!1245995 () Bool)

(assert (=> b!6720082 (= c!1245995 ((_ is Union!16547) (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))))))

(declare-fun d!2112027 () Bool)

(declare-fun res!2750031 () Bool)

(declare-fun e!4060720 () Bool)

(assert (=> d!2112027 (=> res!2750031 e!4060720)))

(assert (=> d!2112027 (= res!2750031 ((_ is ElementMatch!16547) (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))))))

(assert (=> d!2112027 (= (validRegex!8283 (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))) e!4060720)))

(declare-fun bm!606618 () Bool)

(declare-fun c!1245996 () Bool)

(declare-fun call!606625 () Bool)

(assert (=> bm!606618 (= call!606625 (validRegex!8283 (ite c!1245996 (reg!16876 (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))) (ite c!1245995 (regTwo!33607 (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))) (regTwo!33606 (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565))))))))))

(declare-fun b!6720083 () Bool)

(declare-fun e!4060717 () Bool)

(assert (=> b!6720083 (= e!4060717 call!606625)))

(declare-fun bm!606619 () Bool)

(assert (=> bm!606619 (= call!606623 call!606625)))

(declare-fun b!6720084 () Bool)

(declare-fun e!4060715 () Bool)

(assert (=> b!6720084 (= e!4060715 call!606623)))

(declare-fun b!6720085 () Bool)

(assert (=> b!6720085 (= e!4060714 e!4060717)))

(declare-fun res!2750034 () Bool)

(assert (=> b!6720085 (= res!2750034 (not (nullable!6534 (reg!16876 (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))))))))

(assert (=> b!6720085 (=> (not res!2750034) (not e!4060717))))

(declare-fun b!6720086 () Bool)

(assert (=> b!6720086 (= e!4060720 e!4060714)))

(assert (=> b!6720086 (= c!1245996 ((_ is Star!16547) (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))))))

(declare-fun b!6720087 () Bool)

(assert (=> b!6720087 (= e!4060716 e!4060715)))

(declare-fun res!2750032 () Bool)

(assert (=> b!6720087 (=> (not res!2750032) (not e!4060715))))

(assert (=> b!6720087 (= res!2750032 call!606624)))

(declare-fun bm!606620 () Bool)

(assert (=> bm!606620 (= call!606624 (validRegex!8283 (ite c!1245995 (regOne!33607 (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))) (regOne!33606 (ite c!1245820 (reg!16876 lt!2436565) (ite c!1245819 (regTwo!33607 lt!2436565) (regTwo!33606 lt!2436565)))))))))

(assert (= (and d!2112027 (not res!2750031)) b!6720086))

(assert (= (and b!6720086 c!1245996) b!6720085))

(assert (= (and b!6720086 (not c!1245996)) b!6720082))

(assert (= (and b!6720085 res!2750034) b!6720083))

(assert (= (and b!6720082 c!1245995) b!6720081))

(assert (= (and b!6720082 (not c!1245995)) b!6720080))

(assert (= (and b!6720081 res!2750035) b!6720079))

(assert (= (and b!6720080 (not res!2750033)) b!6720087))

(assert (= (and b!6720087 res!2750032) b!6720084))

(assert (= (or b!6720079 b!6720084) bm!606619))

(assert (= (or b!6720081 b!6720087) bm!606620))

(assert (= (or b!6720083 bm!606619) bm!606618))

(declare-fun m!7482428 () Bool)

(assert (=> bm!606618 m!7482428))

(declare-fun m!7482430 () Bool)

(assert (=> b!6720085 m!7482430))

(declare-fun m!7482432 () Bool)

(assert (=> bm!606620 m!7482432))

(assert (=> bm!606478 d!2112027))

(declare-fun d!2112029 () Bool)

(declare-fun lt!2436690 () Int)

(assert (=> d!2112029 (>= lt!2436690 0)))

(declare-fun e!4060721 () Int)

(assert (=> d!2112029 (= lt!2436690 e!4060721)))

(declare-fun c!1245997 () Bool)

(assert (=> d!2112029 (= c!1245997 ((_ is Nil!65818) lt!2436645))))

(assert (=> d!2112029 (= (size!40597 lt!2436645) lt!2436690)))

(declare-fun b!6720088 () Bool)

(assert (=> b!6720088 (= e!4060721 0)))

(declare-fun b!6720089 () Bool)

(assert (=> b!6720089 (= e!4060721 (+ 1 (size!40597 (t!379619 lt!2436645))))))

(assert (= (and d!2112029 c!1245997) b!6720088))

(assert (= (and d!2112029 (not c!1245997)) b!6720089))

(declare-fun m!7482434 () Bool)

(assert (=> b!6720089 m!7482434))

(assert (=> b!6719156 d!2112029))

(declare-fun d!2112031 () Bool)

(declare-fun lt!2436691 () Int)

(assert (=> d!2112031 (>= lt!2436691 0)))

(declare-fun e!4060722 () Int)

(assert (=> d!2112031 (= lt!2436691 e!4060722)))

(declare-fun c!1245998 () Bool)

(assert (=> d!2112031 (= c!1245998 ((_ is Nil!65818) (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))

(assert (=> d!2112031 (= (size!40597 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) lt!2436691)))

(declare-fun b!6720090 () Bool)

(assert (=> b!6720090 (= e!4060722 0)))

(declare-fun b!6720091 () Bool)

(assert (=> b!6720091 (= e!4060722 (+ 1 (size!40597 (t!379619 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))))

(assert (= (and d!2112031 c!1245998) b!6720090))

(assert (= (and d!2112031 (not c!1245998)) b!6720091))

(assert (=> b!6720091 m!7482264))

(assert (=> b!6719156 d!2112031))

(declare-fun d!2112033 () Bool)

(declare-fun lt!2436692 () Int)

(assert (=> d!2112033 (>= lt!2436692 0)))

(declare-fun e!4060723 () Int)

(assert (=> d!2112033 (= lt!2436692 e!4060723)))

(declare-fun c!1245999 () Bool)

(assert (=> d!2112033 (= c!1245999 ((_ is Nil!65818) (t!379619 s!2326)))))

(assert (=> d!2112033 (= (size!40597 (t!379619 s!2326)) lt!2436692)))

(declare-fun b!6720092 () Bool)

(assert (=> b!6720092 (= e!4060723 0)))

(declare-fun b!6720093 () Bool)

(assert (=> b!6720093 (= e!4060723 (+ 1 (size!40597 (t!379619 (t!379619 s!2326)))))))

(assert (= (and d!2112033 c!1245999) b!6720092))

(assert (= (and d!2112033 (not c!1245999)) b!6720093))

(assert (=> b!6720093 m!7482344))

(assert (=> b!6719156 d!2112033))

(declare-fun b!6720094 () Bool)

(declare-fun res!2750037 () Bool)

(declare-fun e!4060724 () Bool)

(assert (=> b!6720094 (=> (not res!2750037) (not e!4060724))))

(declare-fun call!606626 () Bool)

(assert (=> b!6720094 (= res!2750037 (not call!606626))))

(declare-fun b!6720095 () Bool)

(declare-fun e!4060727 () Bool)

(declare-fun e!4060728 () Bool)

(assert (=> b!6720095 (= e!4060727 e!4060728)))

(declare-fun res!2750043 () Bool)

(assert (=> b!6720095 (=> (not res!2750043) (not e!4060728))))

(declare-fun lt!2436693 () Bool)

(assert (=> b!6720095 (= res!2750043 (not lt!2436693))))

(declare-fun b!6720096 () Bool)

(declare-fun e!4060725 () Bool)

(assert (=> b!6720096 (= e!4060725 (matchR!8730 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (_1!36825 (get!22892 lt!2436653)))) (tail!12607 (_1!36825 (get!22892 lt!2436653)))))))

(declare-fun d!2112035 () Bool)

(declare-fun e!4060729 () Bool)

(assert (=> d!2112035 e!4060729))

(declare-fun c!1246000 () Bool)

(assert (=> d!2112035 (= c!1246000 ((_ is EmptyExpr!16547) (reg!16876 r!7292)))))

(assert (=> d!2112035 (= lt!2436693 e!4060725)))

(declare-fun c!1246001 () Bool)

(assert (=> d!2112035 (= c!1246001 (isEmpty!38137 (_1!36825 (get!22892 lt!2436653))))))

(assert (=> d!2112035 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2112035 (= (matchR!8730 (reg!16876 r!7292) (_1!36825 (get!22892 lt!2436653))) lt!2436693)))

(declare-fun b!6720097 () Bool)

(declare-fun e!4060726 () Bool)

(assert (=> b!6720097 (= e!4060726 (not lt!2436693))))

(declare-fun b!6720098 () Bool)

(declare-fun e!4060730 () Bool)

(assert (=> b!6720098 (= e!4060730 (not (= (head!13522 (_1!36825 (get!22892 lt!2436653))) (c!1245533 (reg!16876 r!7292)))))))

(declare-fun b!6720099 () Bool)

(assert (=> b!6720099 (= e!4060729 (= lt!2436693 call!606626))))

(declare-fun bm!606621 () Bool)

(assert (=> bm!606621 (= call!606626 (isEmpty!38137 (_1!36825 (get!22892 lt!2436653))))))

(declare-fun b!6720100 () Bool)

(assert (=> b!6720100 (= e!4060725 (nullable!6534 (reg!16876 r!7292)))))

(declare-fun b!6720101 () Bool)

(assert (=> b!6720101 (= e!4060729 e!4060726)))

(declare-fun c!1246002 () Bool)

(assert (=> b!6720101 (= c!1246002 ((_ is EmptyLang!16547) (reg!16876 r!7292)))))

(declare-fun b!6720102 () Bool)

(assert (=> b!6720102 (= e!4060724 (= (head!13522 (_1!36825 (get!22892 lt!2436653))) (c!1245533 (reg!16876 r!7292))))))

(declare-fun b!6720103 () Bool)

(declare-fun res!2750040 () Bool)

(assert (=> b!6720103 (=> res!2750040 e!4060730)))

(assert (=> b!6720103 (= res!2750040 (not (isEmpty!38137 (tail!12607 (_1!36825 (get!22892 lt!2436653))))))))

(declare-fun b!6720104 () Bool)

(declare-fun res!2750038 () Bool)

(assert (=> b!6720104 (=> res!2750038 e!4060727)))

(assert (=> b!6720104 (= res!2750038 e!4060724)))

(declare-fun res!2750042 () Bool)

(assert (=> b!6720104 (=> (not res!2750042) (not e!4060724))))

(assert (=> b!6720104 (= res!2750042 lt!2436693)))

(declare-fun b!6720105 () Bool)

(declare-fun res!2750039 () Bool)

(assert (=> b!6720105 (=> res!2750039 e!4060727)))

(assert (=> b!6720105 (= res!2750039 (not ((_ is ElementMatch!16547) (reg!16876 r!7292))))))

(assert (=> b!6720105 (= e!4060726 e!4060727)))

(declare-fun b!6720106 () Bool)

(declare-fun res!2750036 () Bool)

(assert (=> b!6720106 (=> (not res!2750036) (not e!4060724))))

(assert (=> b!6720106 (= res!2750036 (isEmpty!38137 (tail!12607 (_1!36825 (get!22892 lt!2436653)))))))

(declare-fun b!6720107 () Bool)

(assert (=> b!6720107 (= e!4060728 e!4060730)))

(declare-fun res!2750041 () Bool)

(assert (=> b!6720107 (=> res!2750041 e!4060730)))

(assert (=> b!6720107 (= res!2750041 call!606626)))

(assert (= (and d!2112035 c!1246001) b!6720100))

(assert (= (and d!2112035 (not c!1246001)) b!6720096))

(assert (= (and d!2112035 c!1246000) b!6720099))

(assert (= (and d!2112035 (not c!1246000)) b!6720101))

(assert (= (and b!6720101 c!1246002) b!6720097))

(assert (= (and b!6720101 (not c!1246002)) b!6720105))

(assert (= (and b!6720105 (not res!2750039)) b!6720104))

(assert (= (and b!6720104 res!2750042) b!6720094))

(assert (= (and b!6720094 res!2750037) b!6720106))

(assert (= (and b!6720106 res!2750036) b!6720102))

(assert (= (and b!6720104 (not res!2750038)) b!6720095))

(assert (= (and b!6720095 res!2750043) b!6720107))

(assert (= (and b!6720107 (not res!2750041)) b!6720103))

(assert (= (and b!6720103 (not res!2750040)) b!6720098))

(assert (= (or b!6720099 b!6720094 b!6720107) bm!606621))

(declare-fun m!7482436 () Bool)

(assert (=> b!6720102 m!7482436))

(assert (=> b!6720098 m!7482436))

(declare-fun m!7482438 () Bool)

(assert (=> bm!606621 m!7482438))

(declare-fun m!7482440 () Bool)

(assert (=> b!6720103 m!7482440))

(assert (=> b!6720103 m!7482440))

(declare-fun m!7482442 () Bool)

(assert (=> b!6720103 m!7482442))

(assert (=> d!2112035 m!7482438))

(assert (=> d!2112035 m!7481234))

(assert (=> b!6720106 m!7482440))

(assert (=> b!6720106 m!7482440))

(assert (=> b!6720106 m!7482442))

(assert (=> b!6720096 m!7482436))

(assert (=> b!6720096 m!7482436))

(declare-fun m!7482444 () Bool)

(assert (=> b!6720096 m!7482444))

(assert (=> b!6720096 m!7482440))

(assert (=> b!6720096 m!7482444))

(assert (=> b!6720096 m!7482440))

(declare-fun m!7482446 () Bool)

(assert (=> b!6720096 m!7482446))

(assert (=> b!6720100 m!7481220))

(assert (=> b!6719191 d!2112035))

(declare-fun d!2112037 () Bool)

(assert (=> d!2112037 (= (get!22892 lt!2436653) (v!52631 lt!2436653))))

(assert (=> b!6719191 d!2112037))

(declare-fun bs!1787966 () Bool)

(declare-fun d!2112039 () Bool)

(assert (= bs!1787966 (and d!2112039 d!2111417)))

(declare-fun lambda!376956 () Int)

(assert (=> bs!1787966 (= lambda!376956 lambda!376848)))

(declare-fun bs!1787967 () Bool)

(assert (= bs!1787967 (and d!2112039 d!2111879)))

(assert (=> bs!1787967 (= lambda!376956 lambda!376951)))

(declare-fun bs!1787968 () Bool)

(assert (= bs!1787968 (and d!2112039 d!2111453)))

(assert (=> bs!1787968 (= lambda!376956 lambda!376879)))

(declare-fun bs!1787969 () Bool)

(assert (= bs!1787969 (and d!2112039 d!2111677)))

(assert (=> bs!1787969 (= lambda!376956 lambda!376936)))

(declare-fun bs!1787970 () Bool)

(assert (= bs!1787970 (and d!2112039 d!2111917)))

(assert (=> bs!1787970 (= lambda!376956 lambda!376952)))

(declare-fun bs!1787971 () Bool)

(assert (= bs!1787971 (and d!2112039 d!2111399)))

(assert (=> bs!1787971 (= lambda!376956 lambda!376836)))

(declare-fun bs!1787972 () Bool)

(assert (= bs!1787972 (and d!2112039 d!2111861)))

(assert (=> bs!1787972 (= lambda!376956 lambda!376948)))

(declare-fun bs!1787973 () Bool)

(assert (= bs!1787973 (and d!2112039 d!2111871)))

(assert (=> bs!1787973 (= lambda!376956 lambda!376950)))

(declare-fun bs!1787974 () Bool)

(assert (= bs!1787974 (and d!2112039 d!2111947)))

(assert (=> bs!1787974 (= lambda!376956 lambda!376953)))

(declare-fun bs!1787975 () Bool)

(assert (= bs!1787975 (and d!2112039 d!2111761)))

(assert (=> bs!1787975 (= lambda!376956 lambda!376941)))

(declare-fun bs!1787976 () Bool)

(assert (= bs!1787976 (and d!2112039 d!2111401)))

(assert (=> bs!1787976 (= lambda!376956 lambda!376839)))

(declare-fun bs!1787977 () Bool)

(assert (= bs!1787977 (and d!2112039 d!2111869)))

(assert (=> bs!1787977 (= lambda!376956 lambda!376949)))

(declare-fun bs!1787978 () Bool)

(assert (= bs!1787978 (and d!2112039 d!2111737)))

(assert (=> bs!1787978 (= lambda!376956 lambda!376938)))

(declare-fun bs!1787979 () Bool)

(assert (= bs!1787979 (and d!2112039 d!2111589)))

(assert (=> bs!1787979 (= lambda!376956 lambda!376912)))

(declare-fun bs!1787980 () Bool)

(assert (= bs!1787980 (and d!2112039 d!2111551)))

(assert (=> bs!1787980 (= lambda!376956 lambda!376900)))

(declare-fun bs!1787981 () Bool)

(assert (= bs!1787981 (and d!2112039 d!2111461)))

(assert (=> bs!1787981 (= lambda!376956 lambda!376880)))

(declare-fun b!6720108 () Bool)

(declare-fun e!4060731 () Bool)

(assert (=> b!6720108 (= e!4060731 (isEmpty!38141 (t!379617 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))))))))

(declare-fun b!6720109 () Bool)

(declare-fun e!4060734 () Regex!16547)

(assert (=> b!6720109 (= e!4060734 EmptyExpr!16547)))

(declare-fun b!6720110 () Bool)

(declare-fun e!4060736 () Bool)

(declare-fun e!4060732 () Bool)

(assert (=> b!6720110 (= e!4060736 e!4060732)))

(declare-fun c!1246006 () Bool)

(assert (=> b!6720110 (= c!1246006 (isEmpty!38141 (tail!12606 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))))))))

(declare-fun b!6720111 () Bool)

(declare-fun lt!2436694 () Regex!16547)

(assert (=> b!6720111 (= e!4060736 (isEmptyExpr!1913 lt!2436694))))

(declare-fun e!4060733 () Bool)

(assert (=> d!2112039 e!4060733))

(declare-fun res!2750045 () Bool)

(assert (=> d!2112039 (=> (not res!2750045) (not e!4060733))))

(assert (=> d!2112039 (= res!2750045 (validRegex!8283 lt!2436694))))

(declare-fun e!4060735 () Regex!16547)

(assert (=> d!2112039 (= lt!2436694 e!4060735)))

(declare-fun c!1246004 () Bool)

(assert (=> d!2112039 (= c!1246004 e!4060731)))

(declare-fun res!2750044 () Bool)

(assert (=> d!2112039 (=> (not res!2750044) (not e!4060731))))

(assert (=> d!2112039 (= res!2750044 ((_ is Cons!65816) (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(assert (=> d!2112039 (forall!15747 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))) lambda!376956)))

(assert (=> d!2112039 (= (generalisedConcat!2144 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))) lt!2436694)))

(declare-fun b!6720112 () Bool)

(assert (=> b!6720112 (= e!4060732 (= lt!2436694 (head!13521 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))))))))

(declare-fun b!6720113 () Bool)

(assert (=> b!6720113 (= e!4060735 (h!72264 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6720114 () Bool)

(assert (=> b!6720114 (= e!4060733 e!4060736)))

(declare-fun c!1246003 () Bool)

(assert (=> b!6720114 (= c!1246003 (isEmpty!38141 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6720115 () Bool)

(assert (=> b!6720115 (= e!4060735 e!4060734)))

(declare-fun c!1246005 () Bool)

(assert (=> b!6720115 (= c!1246005 ((_ is Cons!65816) (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6720116 () Bool)

(assert (=> b!6720116 (= e!4060732 (isConcat!1436 lt!2436694))))

(declare-fun b!6720117 () Bool)

(assert (=> b!6720117 (= e!4060734 (Concat!25392 (h!72264 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))) (generalisedConcat!2144 (t!379617 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343))))))))))

(assert (= (and d!2112039 res!2750044) b!6720108))

(assert (= (and d!2112039 c!1246004) b!6720113))

(assert (= (and d!2112039 (not c!1246004)) b!6720115))

(assert (= (and b!6720115 c!1246005) b!6720117))

(assert (= (and b!6720115 (not c!1246005)) b!6720109))

(assert (= (and d!2112039 res!2750045) b!6720114))

(assert (= (and b!6720114 c!1246003) b!6720111))

(assert (= (and b!6720114 (not c!1246003)) b!6720110))

(assert (= (and b!6720110 c!1246006) b!6720112))

(assert (= (and b!6720110 (not c!1246006)) b!6720116))

(declare-fun m!7482448 () Bool)

(assert (=> b!6720116 m!7482448))

(assert (=> b!6720114 m!7481874))

(declare-fun m!7482450 () Bool)

(assert (=> b!6720112 m!7482450))

(declare-fun m!7482452 () Bool)

(assert (=> b!6720108 m!7482452))

(declare-fun m!7482454 () Bool)

(assert (=> b!6720117 m!7482454))

(declare-fun m!7482456 () Bool)

(assert (=> d!2112039 m!7482456))

(declare-fun m!7482458 () Bool)

(assert (=> d!2112039 m!7482458))

(declare-fun m!7482460 () Bool)

(assert (=> b!6720110 m!7482460))

(assert (=> b!6720110 m!7482460))

(declare-fun m!7482462 () Bool)

(assert (=> b!6720110 m!7482462))

(declare-fun m!7482464 () Bool)

(assert (=> b!6720111 m!7482464))

(assert (=> b!6719421 d!2112039))

(declare-fun bm!606622 () Bool)

(declare-fun call!606631 () List!65940)

(declare-fun call!606632 () List!65940)

(assert (=> bm!606622 (= call!606631 call!606632)))

(declare-fun b!6720118 () Bool)

(declare-fun e!4060739 () (InoxSet Context!11862))

(assert (=> b!6720118 (= e!4060739 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6720119 () Bool)

(declare-fun call!606627 () (InoxSet Context!11862))

(assert (=> b!6720119 (= e!4060739 call!606627)))

(declare-fun c!1246010 () Bool)

(declare-fun call!606629 () (InoxSet Context!11862))

(declare-fun bm!606623 () Bool)

(assert (=> bm!606623 (= call!606629 (derivationStepZipperDown!1775 (ite c!1246010 (regOne!33607 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))) (regOne!33606 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))) (ite c!1246010 (ite c!1245812 (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606482)) (Context!11863 call!606632)) (h!72266 s!2326)))))

(declare-fun b!6720120 () Bool)

(declare-fun e!4060741 () (InoxSet Context!11862))

(declare-fun call!606628 () (InoxSet Context!11862))

(assert (=> b!6720120 (= e!4060741 ((_ map or) call!606629 call!606628))))

(declare-fun e!4060740 () Bool)

(declare-fun b!6720121 () Bool)

(assert (=> b!6720121 (= e!4060740 (nullable!6534 (regOne!33606 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))))

(declare-fun b!6720122 () Bool)

(declare-fun e!4060738 () (InoxSet Context!11862))

(assert (=> b!6720122 (= e!4060741 e!4060738)))

(declare-fun c!1246008 () Bool)

(assert (=> b!6720122 (= c!1246008 ((_ is Concat!25392) (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))))

(declare-fun e!4060737 () (InoxSet Context!11862))

(declare-fun b!6720123 () Bool)

(assert (=> b!6720123 (= e!4060737 (store ((as const (Array Context!11862 Bool)) false) (ite c!1245812 (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606482)) true))))

(declare-fun b!6720124 () Bool)

(declare-fun e!4060742 () (InoxSet Context!11862))

(declare-fun call!606630 () (InoxSet Context!11862))

(assert (=> b!6720124 (= e!4060742 ((_ map or) call!606629 call!606630))))

(declare-fun b!6720125 () Bool)

(assert (=> b!6720125 (= e!4060737 e!4060742)))

(assert (=> b!6720125 (= c!1246010 ((_ is Union!16547) (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))))

(declare-fun bm!606625 () Bool)

(assert (=> bm!606625 (= call!606627 call!606628)))

(declare-fun b!6720126 () Bool)

(assert (=> b!6720126 (= e!4060738 call!606627)))

(declare-fun bm!606626 () Bool)

(declare-fun c!1246011 () Bool)

(assert (=> bm!606626 (= call!606632 ($colon$colon!2364 (exprs!6431 (ite c!1245812 (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606482))) (ite (or c!1246011 c!1246008) (regTwo!33606 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))) (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))))

(declare-fun bm!606627 () Bool)

(assert (=> bm!606627 (= call!606630 (derivationStepZipperDown!1775 (ite c!1246010 (regTwo!33607 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))) (ite c!1246011 (regTwo!33606 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))) (ite c!1246008 (regOne!33606 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))) (reg!16876 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))))))) (ite (or c!1246010 c!1246011) (ite c!1245812 (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606482)) (Context!11863 call!606631)) (h!72266 s!2326)))))

(declare-fun c!1246007 () Bool)

(declare-fun b!6720127 () Bool)

(assert (=> b!6720127 (= c!1246007 ((_ is Star!16547) (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))))

(assert (=> b!6720127 (= e!4060738 e!4060739)))

(declare-fun b!6720128 () Bool)

(assert (=> b!6720128 (= c!1246011 e!4060740)))

(declare-fun res!2750046 () Bool)

(assert (=> b!6720128 (=> (not res!2750046) (not e!4060740))))

(assert (=> b!6720128 (= res!2750046 ((_ is Concat!25392) (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))))))

(assert (=> b!6720128 (= e!4060742 e!4060741)))

(declare-fun c!1246009 () Bool)

(declare-fun d!2112041 () Bool)

(assert (=> d!2112041 (= c!1246009 (and ((_ is ElementMatch!16547) (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))) (= (c!1245533 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))))) (h!72266 s!2326))))))

(assert (=> d!2112041 (= (derivationStepZipperDown!1775 (ite c!1245812 (regOne!33607 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (regOne!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))) (ite c!1245812 (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)) (Context!11863 call!606482)) (h!72266 s!2326)) e!4060737)))

(declare-fun bm!606624 () Bool)

(assert (=> bm!606624 (= call!606628 call!606630)))

(assert (= (and d!2112041 c!1246009) b!6720123))

(assert (= (and d!2112041 (not c!1246009)) b!6720125))

(assert (= (and b!6720125 c!1246010) b!6720124))

(assert (= (and b!6720125 (not c!1246010)) b!6720128))

(assert (= (and b!6720128 res!2750046) b!6720121))

(assert (= (and b!6720128 c!1246011) b!6720120))

(assert (= (and b!6720128 (not c!1246011)) b!6720122))

(assert (= (and b!6720122 c!1246008) b!6720126))

(assert (= (and b!6720122 (not c!1246008)) b!6720127))

(assert (= (and b!6720127 c!1246007) b!6720119))

(assert (= (and b!6720127 (not c!1246007)) b!6720118))

(assert (= (or b!6720126 b!6720119) bm!606622))

(assert (= (or b!6720126 b!6720119) bm!606625))

(assert (= (or b!6720120 bm!606622) bm!606626))

(assert (= (or b!6720120 bm!606625) bm!606624))

(assert (= (or b!6720124 bm!606624) bm!606627))

(assert (= (or b!6720124 b!6720120) bm!606623))

(declare-fun m!7482466 () Bool)

(assert (=> bm!606623 m!7482466))

(declare-fun m!7482468 () Bool)

(assert (=> b!6720123 m!7482468))

(declare-fun m!7482470 () Bool)

(assert (=> bm!606627 m!7482470))

(declare-fun m!7482472 () Bool)

(assert (=> b!6720121 m!7482472))

(declare-fun m!7482474 () Bool)

(assert (=> bm!606626 m!7482474))

(assert (=> bm!606473 d!2112041))

(assert (=> bm!606412 d!2112017))

(declare-fun d!2112043 () Bool)

(assert (=> d!2112043 (= (Exists!3615 (ite c!1245858 lambda!376942 lambda!376943)) (choose!50069 (ite c!1245858 lambda!376942 lambda!376943)))))

(declare-fun bs!1787982 () Bool)

(assert (= bs!1787982 d!2112043))

(declare-fun m!7482476 () Bool)

(assert (=> bs!1787982 m!7482476))

(assert (=> bm!606507 d!2112043))

(declare-fun b!6720131 () Bool)

(declare-fun res!2750047 () Bool)

(declare-fun e!4060743 () Bool)

(assert (=> b!6720131 (=> (not res!2750047) (not e!4060743))))

(declare-fun lt!2436695 () List!65942)

(assert (=> b!6720131 (= res!2750047 (= (size!40597 lt!2436695) (+ (size!40597 (t!379619 (_1!36825 (get!22892 lt!2436617)))) (size!40597 (_2!36825 (get!22892 lt!2436617))))))))

(declare-fun d!2112045 () Bool)

(assert (=> d!2112045 e!4060743))

(declare-fun res!2750048 () Bool)

(assert (=> d!2112045 (=> (not res!2750048) (not e!4060743))))

(assert (=> d!2112045 (= res!2750048 (= (content!12765 lt!2436695) ((_ map or) (content!12765 (t!379619 (_1!36825 (get!22892 lt!2436617)))) (content!12765 (_2!36825 (get!22892 lt!2436617))))))))

(declare-fun e!4060744 () List!65942)

(assert (=> d!2112045 (= lt!2436695 e!4060744)))

(declare-fun c!1246012 () Bool)

(assert (=> d!2112045 (= c!1246012 ((_ is Nil!65818) (t!379619 (_1!36825 (get!22892 lt!2436617)))))))

(assert (=> d!2112045 (= (++!14703 (t!379619 (_1!36825 (get!22892 lt!2436617))) (_2!36825 (get!22892 lt!2436617))) lt!2436695)))

(declare-fun b!6720129 () Bool)

(assert (=> b!6720129 (= e!4060744 (_2!36825 (get!22892 lt!2436617)))))

(declare-fun b!6720130 () Bool)

(assert (=> b!6720130 (= e!4060744 (Cons!65818 (h!72266 (t!379619 (_1!36825 (get!22892 lt!2436617)))) (++!14703 (t!379619 (t!379619 (_1!36825 (get!22892 lt!2436617)))) (_2!36825 (get!22892 lt!2436617)))))))

(declare-fun b!6720132 () Bool)

(assert (=> b!6720132 (= e!4060743 (or (not (= (_2!36825 (get!22892 lt!2436617)) Nil!65818)) (= lt!2436695 (t!379619 (_1!36825 (get!22892 lt!2436617))))))))

(assert (= (and d!2112045 c!1246012) b!6720129))

(assert (= (and d!2112045 (not c!1246012)) b!6720130))

(assert (= (and d!2112045 res!2750048) b!6720131))

(assert (= (and b!6720131 res!2750047) b!6720132))

(declare-fun m!7482478 () Bool)

(assert (=> b!6720131 m!7482478))

(assert (=> b!6720131 m!7481980))

(assert (=> b!6720131 m!7481448))

(declare-fun m!7482480 () Bool)

(assert (=> d!2112045 m!7482480))

(assert (=> d!2112045 m!7482298))

(assert (=> d!2112045 m!7481454))

(declare-fun m!7482482 () Bool)

(assert (=> b!6720130 m!7482482))

(assert (=> b!6718976 d!2112045))

(assert (=> b!6719504 d!2111957))

(declare-fun d!2112047 () Bool)

(assert (=> d!2112047 (= (Exists!3615 (ite c!1245727 lambda!376901 lambda!376902)) (choose!50069 (ite c!1245727 lambda!376901 lambda!376902)))))

(declare-fun bs!1787983 () Bool)

(assert (= bs!1787983 d!2112047))

(declare-fun m!7482484 () Bool)

(assert (=> bs!1787983 m!7482484))

(assert (=> bm!606417 d!2112047))

(declare-fun b!6720133 () Bool)

(declare-fun e!4060749 () Bool)

(declare-fun call!606633 () Bool)

(assert (=> b!6720133 (= e!4060749 call!606633)))

(declare-fun b!6720134 () Bool)

(declare-fun res!2750051 () Bool)

(declare-fun e!4060747 () Bool)

(assert (=> b!6720134 (=> res!2750051 e!4060747)))

(assert (=> b!6720134 (= res!2750051 (not ((_ is Concat!25392) (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292))))))))

(declare-fun e!4060750 () Bool)

(assert (=> b!6720134 (= e!4060750 e!4060747)))

(declare-fun b!6720135 () Bool)

(declare-fun res!2750053 () Bool)

(assert (=> b!6720135 (=> (not res!2750053) (not e!4060749))))

(declare-fun call!606634 () Bool)

(assert (=> b!6720135 (= res!2750053 call!606634)))

(assert (=> b!6720135 (= e!4060750 e!4060749)))

(declare-fun b!6720136 () Bool)

(declare-fun e!4060745 () Bool)

(assert (=> b!6720136 (= e!4060745 e!4060750)))

(declare-fun c!1246013 () Bool)

(assert (=> b!6720136 (= c!1246013 ((_ is Union!16547) (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))))))

(declare-fun d!2112049 () Bool)

(declare-fun res!2750049 () Bool)

(declare-fun e!4060751 () Bool)

(assert (=> d!2112049 (=> res!2750049 e!4060751)))

(assert (=> d!2112049 (= res!2750049 ((_ is ElementMatch!16547) (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))))))

(assert (=> d!2112049 (= (validRegex!8283 (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))) e!4060751)))

(declare-fun call!606635 () Bool)

(declare-fun bm!606628 () Bool)

(declare-fun c!1246014 () Bool)

(assert (=> bm!606628 (= call!606635 (validRegex!8283 (ite c!1246014 (reg!16876 (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))) (ite c!1246013 (regTwo!33607 (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))) (regTwo!33606 (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292))))))))))

(declare-fun b!6720137 () Bool)

(declare-fun e!4060748 () Bool)

(assert (=> b!6720137 (= e!4060748 call!606635)))

(declare-fun bm!606629 () Bool)

(assert (=> bm!606629 (= call!606633 call!606635)))

(declare-fun b!6720138 () Bool)

(declare-fun e!4060746 () Bool)

(assert (=> b!6720138 (= e!4060746 call!606633)))

(declare-fun b!6720139 () Bool)

(assert (=> b!6720139 (= e!4060745 e!4060748)))

(declare-fun res!2750052 () Bool)

(assert (=> b!6720139 (= res!2750052 (not (nullable!6534 (reg!16876 (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))))))))

(assert (=> b!6720139 (=> (not res!2750052) (not e!4060748))))

(declare-fun b!6720140 () Bool)

(assert (=> b!6720140 (= e!4060751 e!4060745)))

(assert (=> b!6720140 (= c!1246014 ((_ is Star!16547) (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))))))

(declare-fun b!6720141 () Bool)

(assert (=> b!6720141 (= e!4060747 e!4060746)))

(declare-fun res!2750050 () Bool)

(assert (=> b!6720141 (=> (not res!2750050) (not e!4060746))))

(assert (=> b!6720141 (= res!2750050 call!606634)))

(declare-fun bm!606630 () Bool)

(assert (=> bm!606630 (= call!606634 (validRegex!8283 (ite c!1246013 (regOne!33607 (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))) (regOne!33606 (ite c!1245722 (regOne!33607 (reg!16876 r!7292)) (regOne!33606 (reg!16876 r!7292)))))))))

(assert (= (and d!2112049 (not res!2750049)) b!6720140))

(assert (= (and b!6720140 c!1246014) b!6720139))

(assert (= (and b!6720140 (not c!1246014)) b!6720136))

(assert (= (and b!6720139 res!2750052) b!6720137))

(assert (= (and b!6720136 c!1246013) b!6720135))

(assert (= (and b!6720136 (not c!1246013)) b!6720134))

(assert (= (and b!6720135 res!2750053) b!6720133))

(assert (= (and b!6720134 (not res!2750051)) b!6720141))

(assert (= (and b!6720141 res!2750050) b!6720138))

(assert (= (or b!6720133 b!6720138) bm!606629))

(assert (= (or b!6720135 b!6720141) bm!606630))

(assert (= (or b!6720137 bm!606629) bm!606628))

(declare-fun m!7482486 () Bool)

(assert (=> bm!606628 m!7482486))

(declare-fun m!7482488 () Bool)

(assert (=> b!6720139 m!7482488))

(declare-fun m!7482490 () Bool)

(assert (=> bm!606630 m!7482490))

(assert (=> bm!606415 d!2112049))

(declare-fun d!2112051 () Bool)

(declare-fun lt!2436696 () Int)

(assert (=> d!2112051 (>= lt!2436696 0)))

(declare-fun e!4060752 () Int)

(assert (=> d!2112051 (= lt!2436696 e!4060752)))

(declare-fun c!1246015 () Bool)

(assert (=> d!2112051 (= c!1246015 ((_ is Nil!65818) lt!2436646))))

(assert (=> d!2112051 (= (size!40597 lt!2436646) lt!2436696)))

(declare-fun b!6720142 () Bool)

(assert (=> b!6720142 (= e!4060752 0)))

(declare-fun b!6720143 () Bool)

(assert (=> b!6720143 (= e!4060752 (+ 1 (size!40597 (t!379619 lt!2436646))))))

(assert (= (and d!2112051 c!1246015) b!6720142))

(assert (= (and d!2112051 (not c!1246015)) b!6720143))

(declare-fun m!7482492 () Bool)

(assert (=> b!6720143 m!7482492))

(assert (=> b!6719169 d!2112051))

(declare-fun d!2112053 () Bool)

(declare-fun lt!2436697 () Int)

(assert (=> d!2112053 (>= lt!2436697 0)))

(declare-fun e!4060753 () Int)

(assert (=> d!2112053 (= lt!2436697 e!4060753)))

(declare-fun c!1246016 () Bool)

(assert (=> d!2112053 (= c!1246016 ((_ is Nil!65818) Nil!65818))))

(assert (=> d!2112053 (= (size!40597 Nil!65818) lt!2436697)))

(declare-fun b!6720144 () Bool)

(assert (=> b!6720144 (= e!4060753 0)))

(declare-fun b!6720145 () Bool)

(assert (=> b!6720145 (= e!4060753 (+ 1 (size!40597 (t!379619 Nil!65818))))))

(assert (= (and d!2112053 c!1246016) b!6720144))

(assert (= (and d!2112053 (not c!1246016)) b!6720145))

(declare-fun m!7482494 () Bool)

(assert (=> b!6720145 m!7482494))

(assert (=> b!6719169 d!2112053))

(declare-fun d!2112055 () Bool)

(declare-fun lt!2436698 () Int)

(assert (=> d!2112055 (>= lt!2436698 0)))

(declare-fun e!4060754 () Int)

(assert (=> d!2112055 (= lt!2436698 e!4060754)))

(declare-fun c!1246017 () Bool)

(assert (=> d!2112055 (= c!1246017 ((_ is Nil!65818) (Cons!65818 (h!72266 s!2326) Nil!65818)))))

(assert (=> d!2112055 (= (size!40597 (Cons!65818 (h!72266 s!2326) Nil!65818)) lt!2436698)))

(declare-fun b!6720146 () Bool)

(assert (=> b!6720146 (= e!4060754 0)))

(declare-fun b!6720147 () Bool)

(assert (=> b!6720147 (= e!4060754 (+ 1 (size!40597 (t!379619 (Cons!65818 (h!72266 s!2326) Nil!65818)))))))

(assert (= (and d!2112055 c!1246017) b!6720146))

(assert (= (and d!2112055 (not c!1246017)) b!6720147))

(declare-fun m!7482496 () Bool)

(assert (=> b!6720147 m!7482496))

(assert (=> b!6719169 d!2112055))

(assert (=> b!6718891 d!2112023))

(assert (=> b!6718891 d!2112025))

(assert (=> bm!606506 d!2111471))

(declare-fun d!2112057 () Bool)

(declare-fun res!2750054 () Bool)

(declare-fun e!4060755 () Bool)

(assert (=> d!2112057 (=> res!2750054 e!4060755)))

(assert (=> d!2112057 (= res!2750054 ((_ is Nil!65816) (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> d!2112057 (= (forall!15747 (t!379617 (exprs!6431 (h!72265 zl!343))) lambda!376880) e!4060755)))

(declare-fun b!6720148 () Bool)

(declare-fun e!4060756 () Bool)

(assert (=> b!6720148 (= e!4060755 e!4060756)))

(declare-fun res!2750055 () Bool)

(assert (=> b!6720148 (=> (not res!2750055) (not e!4060756))))

(assert (=> b!6720148 (= res!2750055 (dynLambda!26246 lambda!376880 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun b!6720149 () Bool)

(assert (=> b!6720149 (= e!4060756 (forall!15747 (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))) lambda!376880))))

(assert (= (and d!2112057 (not res!2750054)) b!6720148))

(assert (= (and b!6720148 res!2750055) b!6720149))

(declare-fun b_lambda!253019 () Bool)

(assert (=> (not b_lambda!253019) (not b!6720148)))

(declare-fun m!7482498 () Bool)

(assert (=> b!6720148 m!7482498))

(declare-fun m!7482500 () Bool)

(assert (=> b!6720149 m!7482500))

(assert (=> b!6719423 d!2112057))

(declare-fun d!2112059 () Bool)

(assert (=> d!2112059 (= (isEmpty!38141 (tail!12606 (t!379617 (exprs!6431 (h!72265 zl!343))))) ((_ is Nil!65816) (tail!12606 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(assert (=> b!6719414 d!2112059))

(declare-fun d!2112061 () Bool)

(assert (=> d!2112061 (= (tail!12606 (t!379617 (exprs!6431 (h!72265 zl!343)))) (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))))))

(assert (=> b!6719414 d!2112061))

(declare-fun bm!606631 () Bool)

(declare-fun call!606640 () List!65940)

(declare-fun call!606641 () List!65940)

(assert (=> bm!606631 (= call!606640 call!606641)))

(declare-fun b!6720150 () Bool)

(declare-fun e!4060759 () (InoxSet Context!11862))

(assert (=> b!6720150 (= e!4060759 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6720151 () Bool)

(declare-fun call!606636 () (InoxSet Context!11862))

(assert (=> b!6720151 (= e!4060759 call!606636)))

(declare-fun bm!606632 () Bool)

(declare-fun call!606638 () (InoxSet Context!11862))

(declare-fun c!1246021 () Bool)

(assert (=> bm!606632 (= call!606638 (derivationStepZipperDown!1775 (ite c!1246021 (regOne!33607 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (regOne!33606 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))) (ite c!1246021 (ite c!1245853 (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606510)) (Context!11863 call!606641)) (h!72266 s!2326)))))

(declare-fun b!6720152 () Bool)

(declare-fun e!4060761 () (InoxSet Context!11862))

(declare-fun call!606637 () (InoxSet Context!11862))

(assert (=> b!6720152 (= e!4060761 ((_ map or) call!606638 call!606637))))

(declare-fun e!4060760 () Bool)

(declare-fun b!6720153 () Bool)

(assert (=> b!6720153 (= e!4060760 (nullable!6534 (regOne!33606 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))

(declare-fun b!6720154 () Bool)

(declare-fun e!4060758 () (InoxSet Context!11862))

(assert (=> b!6720154 (= e!4060761 e!4060758)))

(declare-fun c!1246019 () Bool)

(assert (=> b!6720154 (= c!1246019 ((_ is Concat!25392) (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))

(declare-fun e!4060757 () (InoxSet Context!11862))

(declare-fun b!6720155 () Bool)

(assert (=> b!6720155 (= e!4060757 (store ((as const (Array Context!11862 Bool)) false) (ite c!1245853 (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606510)) true))))

(declare-fun b!6720156 () Bool)

(declare-fun e!4060762 () (InoxSet Context!11862))

(declare-fun call!606639 () (InoxSet Context!11862))

(assert (=> b!6720156 (= e!4060762 ((_ map or) call!606638 call!606639))))

(declare-fun b!6720157 () Bool)

(assert (=> b!6720157 (= e!4060757 e!4060762)))

(assert (=> b!6720157 (= c!1246021 ((_ is Union!16547) (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))

(declare-fun bm!606634 () Bool)

(assert (=> bm!606634 (= call!606636 call!606637)))

(declare-fun b!6720158 () Bool)

(assert (=> b!6720158 (= e!4060758 call!606636)))

(declare-fun c!1246022 () Bool)

(declare-fun bm!606635 () Bool)

(assert (=> bm!606635 (= call!606641 ($colon$colon!2364 (exprs!6431 (ite c!1245853 (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606510))) (ite (or c!1246022 c!1246019) (regTwo!33606 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))

(declare-fun bm!606636 () Bool)

(assert (=> bm!606636 (= call!606639 (derivationStepZipperDown!1775 (ite c!1246021 (regTwo!33607 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (ite c!1246022 (regTwo!33606 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (ite c!1246019 (regOne!33606 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (reg!16876 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))) (ite (or c!1246021 c!1246022) (ite c!1245853 (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606510)) (Context!11863 call!606640)) (h!72266 s!2326)))))

(declare-fun c!1246018 () Bool)

(declare-fun b!6720159 () Bool)

(assert (=> b!6720159 (= c!1246018 ((_ is Star!16547) (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))

(assert (=> b!6720159 (= e!4060758 e!4060759)))

(declare-fun b!6720160 () Bool)

(assert (=> b!6720160 (= c!1246022 e!4060760)))

(declare-fun res!2750056 () Bool)

(assert (=> b!6720160 (=> (not res!2750056) (not e!4060760))))

(assert (=> b!6720160 (= res!2750056 ((_ is Concat!25392) (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))

(assert (=> b!6720160 (= e!4060762 e!4060761)))

(declare-fun d!2112063 () Bool)

(declare-fun c!1246020 () Bool)

(assert (=> d!2112063 (= c!1246020 (and ((_ is ElementMatch!16547) (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (= (c!1245533 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (h!72266 s!2326))))))

(assert (=> d!2112063 (= (derivationStepZipperDown!1775 (ite c!1245853 (regOne!33607 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245694 (regOne!33607 r!7292) (regOne!33606 r!7292)))) (ite c!1245853 (ite c!1245694 (Context!11863 Nil!65816) (Context!11863 call!606399)) (Context!11863 call!606510)) (h!72266 s!2326)) e!4060757)))

(declare-fun bm!606633 () Bool)

(assert (=> bm!606633 (= call!606637 call!606639)))

(assert (= (and d!2112063 c!1246020) b!6720155))

(assert (= (and d!2112063 (not c!1246020)) b!6720157))

(assert (= (and b!6720157 c!1246021) b!6720156))

(assert (= (and b!6720157 (not c!1246021)) b!6720160))

(assert (= (and b!6720160 res!2750056) b!6720153))

(assert (= (and b!6720160 c!1246022) b!6720152))

(assert (= (and b!6720160 (not c!1246022)) b!6720154))

(assert (= (and b!6720154 c!1246019) b!6720158))

(assert (= (and b!6720154 (not c!1246019)) b!6720159))

(assert (= (and b!6720159 c!1246018) b!6720151))

(assert (= (and b!6720159 (not c!1246018)) b!6720150))

(assert (= (or b!6720158 b!6720151) bm!606631))

(assert (= (or b!6720158 b!6720151) bm!606634))

(assert (= (or b!6720152 bm!606631) bm!606635))

(assert (= (or b!6720152 bm!606634) bm!606633))

(assert (= (or b!6720156 bm!606633) bm!606636))

(assert (= (or b!6720156 b!6720152) bm!606632))

(declare-fun m!7482502 () Bool)

(assert (=> bm!606632 m!7482502))

(declare-fun m!7482504 () Bool)

(assert (=> b!6720155 m!7482504))

(declare-fun m!7482506 () Bool)

(assert (=> bm!606636 m!7482506))

(declare-fun m!7482508 () Bool)

(assert (=> b!6720153 m!7482508))

(declare-fun m!7482510 () Bool)

(assert (=> bm!606635 m!7482510))

(assert (=> bm!606501 d!2112063))

(declare-fun d!2112065 () Bool)

(assert (not d!2112065))

(assert (=> b!6718884 d!2112065))

(declare-fun d!2112067 () Bool)

(assert (not d!2112067))

(assert (=> b!6718884 d!2112067))

(assert (=> b!6718884 d!2111913))

(assert (=> b!6718884 d!2112025))

(declare-fun d!2112069 () Bool)

(declare-fun res!2750057 () Bool)

(declare-fun e!4060763 () Bool)

(assert (=> d!2112069 (=> res!2750057 e!4060763)))

(assert (=> d!2112069 (= res!2750057 ((_ is Nil!65816) (t!379617 lt!2436560)))))

(assert (=> d!2112069 (= (forall!15747 (t!379617 lt!2436560) lambda!376848) e!4060763)))

(declare-fun b!6720161 () Bool)

(declare-fun e!4060764 () Bool)

(assert (=> b!6720161 (= e!4060763 e!4060764)))

(declare-fun res!2750058 () Bool)

(assert (=> b!6720161 (=> (not res!2750058) (not e!4060764))))

(assert (=> b!6720161 (= res!2750058 (dynLambda!26246 lambda!376848 (h!72264 (t!379617 lt!2436560))))))

(declare-fun b!6720162 () Bool)

(assert (=> b!6720162 (= e!4060764 (forall!15747 (t!379617 (t!379617 lt!2436560)) lambda!376848))))

(assert (= (and d!2112069 (not res!2750057)) b!6720161))

(assert (= (and b!6720161 res!2750058) b!6720162))

(declare-fun b_lambda!253021 () Bool)

(assert (=> (not b_lambda!253021) (not b!6720161)))

(declare-fun m!7482512 () Bool)

(assert (=> b!6720161 m!7482512))

(declare-fun m!7482514 () Bool)

(assert (=> b!6720162 m!7482514))

(assert (=> b!6719374 d!2112069))

(assert (=> d!2111777 d!2111733))

(declare-fun b!6720163 () Bool)

(declare-fun e!4060769 () Bool)

(declare-fun call!606642 () Bool)

(assert (=> b!6720163 (= e!4060769 call!606642)))

(declare-fun b!6720164 () Bool)

(declare-fun res!2750061 () Bool)

(declare-fun e!4060767 () Bool)

(assert (=> b!6720164 (=> res!2750061 e!4060767)))

(assert (=> b!6720164 (= res!2750061 (not ((_ is Concat!25392) (derivativeStep!5219 r!7292 (head!13522 s!2326)))))))

(declare-fun e!4060770 () Bool)

(assert (=> b!6720164 (= e!4060770 e!4060767)))

(declare-fun b!6720165 () Bool)

(declare-fun res!2750063 () Bool)

(assert (=> b!6720165 (=> (not res!2750063) (not e!4060769))))

(declare-fun call!606643 () Bool)

(assert (=> b!6720165 (= res!2750063 call!606643)))

(assert (=> b!6720165 (= e!4060770 e!4060769)))

(declare-fun b!6720166 () Bool)

(declare-fun e!4060765 () Bool)

(assert (=> b!6720166 (= e!4060765 e!4060770)))

(declare-fun c!1246023 () Bool)

(assert (=> b!6720166 (= c!1246023 ((_ is Union!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(declare-fun d!2112071 () Bool)

(declare-fun res!2750059 () Bool)

(declare-fun e!4060771 () Bool)

(assert (=> d!2112071 (=> res!2750059 e!4060771)))

(assert (=> d!2112071 (= res!2750059 ((_ is ElementMatch!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(assert (=> d!2112071 (= (validRegex!8283 (derivativeStep!5219 r!7292 (head!13522 s!2326))) e!4060771)))

(declare-fun bm!606637 () Bool)

(declare-fun call!606644 () Bool)

(declare-fun c!1246024 () Bool)

(assert (=> bm!606637 (= call!606644 (validRegex!8283 (ite c!1246024 (reg!16876 (derivativeStep!5219 r!7292 (head!13522 s!2326))) (ite c!1246023 (regTwo!33607 (derivativeStep!5219 r!7292 (head!13522 s!2326))) (regTwo!33606 (derivativeStep!5219 r!7292 (head!13522 s!2326)))))))))

(declare-fun b!6720167 () Bool)

(declare-fun e!4060768 () Bool)

(assert (=> b!6720167 (= e!4060768 call!606644)))

(declare-fun bm!606638 () Bool)

(assert (=> bm!606638 (= call!606642 call!606644)))

(declare-fun b!6720168 () Bool)

(declare-fun e!4060766 () Bool)

(assert (=> b!6720168 (= e!4060766 call!606642)))

(declare-fun b!6720169 () Bool)

(assert (=> b!6720169 (= e!4060765 e!4060768)))

(declare-fun res!2750062 () Bool)

(assert (=> b!6720169 (= res!2750062 (not (nullable!6534 (reg!16876 (derivativeStep!5219 r!7292 (head!13522 s!2326))))))))

(assert (=> b!6720169 (=> (not res!2750062) (not e!4060768))))

(declare-fun b!6720170 () Bool)

(assert (=> b!6720170 (= e!4060771 e!4060765)))

(assert (=> b!6720170 (= c!1246024 ((_ is Star!16547) (derivativeStep!5219 r!7292 (head!13522 s!2326))))))

(declare-fun b!6720171 () Bool)

(assert (=> b!6720171 (= e!4060767 e!4060766)))

(declare-fun res!2750060 () Bool)

(assert (=> b!6720171 (=> (not res!2750060) (not e!4060766))))

(assert (=> b!6720171 (= res!2750060 call!606643)))

(declare-fun bm!606639 () Bool)

(assert (=> bm!606639 (= call!606643 (validRegex!8283 (ite c!1246023 (regOne!33607 (derivativeStep!5219 r!7292 (head!13522 s!2326))) (regOne!33606 (derivativeStep!5219 r!7292 (head!13522 s!2326))))))))

(assert (= (and d!2112071 (not res!2750059)) b!6720170))

(assert (= (and b!6720170 c!1246024) b!6720169))

(assert (= (and b!6720170 (not c!1246024)) b!6720166))

(assert (= (and b!6720169 res!2750062) b!6720167))

(assert (= (and b!6720166 c!1246023) b!6720165))

(assert (= (and b!6720166 (not c!1246023)) b!6720164))

(assert (= (and b!6720165 res!2750063) b!6720163))

(assert (= (and b!6720164 (not res!2750061)) b!6720171))

(assert (= (and b!6720171 res!2750060) b!6720168))

(assert (= (or b!6720163 b!6720168) bm!606638))

(assert (= (or b!6720165 b!6720171) bm!606639))

(assert (= (or b!6720167 bm!606638) bm!606637))

(declare-fun m!7482516 () Bool)

(assert (=> bm!606637 m!7482516))

(declare-fun m!7482518 () Bool)

(assert (=> b!6720169 m!7482518))

(declare-fun m!7482520 () Bool)

(assert (=> bm!606639 m!7482520))

(assert (=> d!2111777 d!2112071))

(declare-fun b!6720174 () Bool)

(declare-fun res!2750064 () Bool)

(declare-fun e!4060772 () Bool)

(assert (=> b!6720174 (=> (not res!2750064) (not e!4060772))))

(declare-fun lt!2436699 () List!65942)

(assert (=> b!6720174 (= res!2750064 (= (size!40597 lt!2436699) (+ (size!40597 (_1!36825 (get!22892 lt!2436653))) (size!40597 (_2!36825 (get!22892 lt!2436653))))))))

(declare-fun d!2112073 () Bool)

(assert (=> d!2112073 e!4060772))

(declare-fun res!2750065 () Bool)

(assert (=> d!2112073 (=> (not res!2750065) (not e!4060772))))

(assert (=> d!2112073 (= res!2750065 (= (content!12765 lt!2436699) ((_ map or) (content!12765 (_1!36825 (get!22892 lt!2436653))) (content!12765 (_2!36825 (get!22892 lt!2436653))))))))

(declare-fun e!4060773 () List!65942)

(assert (=> d!2112073 (= lt!2436699 e!4060773)))

(declare-fun c!1246025 () Bool)

(assert (=> d!2112073 (= c!1246025 ((_ is Nil!65818) (_1!36825 (get!22892 lt!2436653))))))

(assert (=> d!2112073 (= (++!14703 (_1!36825 (get!22892 lt!2436653)) (_2!36825 (get!22892 lt!2436653))) lt!2436699)))

(declare-fun b!6720172 () Bool)

(assert (=> b!6720172 (= e!4060773 (_2!36825 (get!22892 lt!2436653)))))

(declare-fun b!6720173 () Bool)

(assert (=> b!6720173 (= e!4060773 (Cons!65818 (h!72266 (_1!36825 (get!22892 lt!2436653))) (++!14703 (t!379619 (_1!36825 (get!22892 lt!2436653))) (_2!36825 (get!22892 lt!2436653)))))))

(declare-fun b!6720175 () Bool)

(assert (=> b!6720175 (= e!4060772 (or (not (= (_2!36825 (get!22892 lt!2436653)) Nil!65818)) (= lt!2436699 (_1!36825 (get!22892 lt!2436653)))))))

(assert (= (and d!2112073 c!1246025) b!6720172))

(assert (= (and d!2112073 (not c!1246025)) b!6720173))

(assert (= (and d!2112073 res!2750065) b!6720174))

(assert (= (and b!6720174 res!2750064) b!6720175))

(declare-fun m!7482522 () Bool)

(assert (=> b!6720174 m!7482522))

(declare-fun m!7482524 () Bool)

(assert (=> b!6720174 m!7482524))

(declare-fun m!7482526 () Bool)

(assert (=> b!6720174 m!7482526))

(declare-fun m!7482528 () Bool)

(assert (=> d!2112073 m!7482528))

(declare-fun m!7482530 () Bool)

(assert (=> d!2112073 m!7482530))

(declare-fun m!7482532 () Bool)

(assert (=> d!2112073 m!7482532))

(declare-fun m!7482534 () Bool)

(assert (=> b!6720173 m!7482534))

(assert (=> b!6719199 d!2112073))

(assert (=> b!6719199 d!2112037))

(declare-fun d!2112075 () Bool)

(assert (=> d!2112075 (= (nullable!6534 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (nullableFct!2448 (h!72264 (exprs!6431 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))

(declare-fun bs!1787984 () Bool)

(assert (= bs!1787984 d!2112075))

(declare-fun m!7482536 () Bool)

(assert (=> bs!1787984 m!7482536))

(assert (=> b!6719151 d!2112075))

(assert (=> b!6719508 d!2111805))

(assert (=> b!6719508 d!2111807))

(assert (=> bm!606416 d!2111471))

(declare-fun b!6720176 () Bool)

(declare-fun e!4060778 () Bool)

(declare-fun call!606645 () Bool)

(assert (=> b!6720176 (= e!4060778 call!606645)))

(declare-fun b!6720177 () Bool)

(declare-fun res!2750068 () Bool)

(declare-fun e!4060776 () Bool)

(assert (=> b!6720177 (=> res!2750068 e!4060776)))

(assert (=> b!6720177 (= res!2750068 (not ((_ is Concat!25392) (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))

(declare-fun e!4060779 () Bool)

(assert (=> b!6720177 (= e!4060779 e!4060776)))

(declare-fun b!6720178 () Bool)

(declare-fun res!2750070 () Bool)

(assert (=> b!6720178 (=> (not res!2750070) (not e!4060778))))

(declare-fun call!606646 () Bool)

(assert (=> b!6720178 (= res!2750070 call!606646)))

(assert (=> b!6720178 (= e!4060779 e!4060778)))

(declare-fun b!6720179 () Bool)

(declare-fun e!4060774 () Bool)

(assert (=> b!6720179 (= e!4060774 e!4060779)))

(declare-fun c!1246026 () Bool)

(assert (=> b!6720179 (= c!1246026 ((_ is Union!16547) (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))

(declare-fun d!2112077 () Bool)

(declare-fun res!2750066 () Bool)

(declare-fun e!4060780 () Bool)

(assert (=> d!2112077 (=> res!2750066 e!4060780)))

(assert (=> d!2112077 (= res!2750066 ((_ is ElementMatch!16547) (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))

(assert (=> d!2112077 (= (validRegex!8283 (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))) e!4060780)))

(declare-fun call!606647 () Bool)

(declare-fun bm!606640 () Bool)

(declare-fun c!1246027 () Bool)

(assert (=> bm!606640 (= call!606647 (validRegex!8283 (ite c!1246027 (reg!16876 (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (ite c!1246026 (regTwo!33607 (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (regTwo!33606 (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292)))))))))))

(declare-fun b!6720180 () Bool)

(declare-fun e!4060777 () Bool)

(assert (=> b!6720180 (= e!4060777 call!606647)))

(declare-fun bm!606641 () Bool)

(assert (=> bm!606641 (= call!606645 call!606647)))

(declare-fun b!6720181 () Bool)

(declare-fun e!4060775 () Bool)

(assert (=> b!6720181 (= e!4060775 call!606645)))

(declare-fun b!6720182 () Bool)

(assert (=> b!6720182 (= e!4060774 e!4060777)))

(declare-fun res!2750069 () Bool)

(assert (=> b!6720182 (= res!2750069 (not (nullable!6534 (reg!16876 (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))))

(assert (=> b!6720182 (=> (not res!2750069) (not e!4060777))))

(declare-fun b!6720183 () Bool)

(assert (=> b!6720183 (= e!4060780 e!4060774)))

(assert (=> b!6720183 (= c!1246027 ((_ is Star!16547) (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))

(declare-fun b!6720184 () Bool)

(assert (=> b!6720184 (= e!4060776 e!4060775)))

(declare-fun res!2750067 () Bool)

(assert (=> b!6720184 (=> (not res!2750067) (not e!4060775))))

(assert (=> b!6720184 (= res!2750067 call!606646)))

(declare-fun bm!606642 () Bool)

(assert (=> bm!606642 (= call!606646 (validRegex!8283 (ite c!1246026 (regOne!33607 (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))) (regOne!33606 (ite c!1245743 (regOne!33607 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))) (regOne!33606 (ite c!1245667 (regOne!33607 r!7292) (regOne!33606 r!7292))))))))))

(assert (= (and d!2112077 (not res!2750066)) b!6720183))

(assert (= (and b!6720183 c!1246027) b!6720182))

(assert (= (and b!6720183 (not c!1246027)) b!6720179))

(assert (= (and b!6720182 res!2750069) b!6720180))

(assert (= (and b!6720179 c!1246026) b!6720178))

(assert (= (and b!6720179 (not c!1246026)) b!6720177))

(assert (= (and b!6720178 res!2750070) b!6720176))

(assert (= (and b!6720177 (not res!2750068)) b!6720184))

(assert (= (and b!6720184 res!2750067) b!6720181))

(assert (= (or b!6720176 b!6720181) bm!606641))

(assert (= (or b!6720178 b!6720184) bm!606642))

(assert (= (or b!6720180 bm!606641) bm!606640))

(declare-fun m!7482538 () Bool)

(assert (=> bm!606640 m!7482538))

(declare-fun m!7482540 () Bool)

(assert (=> b!6720182 m!7482540))

(declare-fun m!7482542 () Bool)

(assert (=> bm!606642 m!7482542))

(assert (=> bm!606432 d!2112077))

(declare-fun d!2112079 () Bool)

(assert (=> d!2112079 (= ($colon$colon!2364 (exprs!6431 (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398))) (ite (or c!1245813 c!1245810) (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292)))))) (Cons!65816 (ite (or c!1245813 c!1245810) (regTwo!33606 (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (ite c!1245694 (regTwo!33607 r!7292) (ite c!1245695 (regTwo!33606 r!7292) (ite c!1245692 (regOne!33606 r!7292) (reg!16876 r!7292))))) (exprs!6431 (ite (or c!1245694 c!1245695) (Context!11863 Nil!65816) (Context!11863 call!606398)))))))

(assert (=> bm!606476 d!2112079))

(assert (=> d!2111701 d!2111693))

(assert (=> d!2111701 d!2111699))

(declare-fun d!2112081 () Bool)

(assert (=> d!2112081 (= (++!14703 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)) (t!379619 s!2326)) s!2326)))

(assert (=> d!2112081 true))

(declare-fun _$68!1324 () Unit!159785)

(assert (=> d!2112081 (= (choose!50071 Nil!65818 (h!72266 s!2326) (t!379619 s!2326) s!2326) _$68!1324)))

(declare-fun bs!1787985 () Bool)

(assert (= bs!1787985 d!2112081))

(assert (=> bs!1787985 m!7481246))

(assert (=> bs!1787985 m!7481246))

(assert (=> bs!1787985 m!7481248))

(assert (=> d!2111701 d!2112081))

(declare-fun b!6720187 () Bool)

(declare-fun res!2750071 () Bool)

(declare-fun e!4060781 () Bool)

(assert (=> b!6720187 (=> (not res!2750071) (not e!4060781))))

(declare-fun lt!2436700 () List!65942)

(assert (=> b!6720187 (= res!2750071 (= (size!40597 lt!2436700) (+ (size!40597 Nil!65818) (size!40597 (Cons!65818 (h!72266 s!2326) (t!379619 s!2326))))))))

(declare-fun d!2112083 () Bool)

(assert (=> d!2112083 e!4060781))

(declare-fun res!2750072 () Bool)

(assert (=> d!2112083 (=> (not res!2750072) (not e!4060781))))

(assert (=> d!2112083 (= res!2750072 (= (content!12765 lt!2436700) ((_ map or) (content!12765 Nil!65818) (content!12765 (Cons!65818 (h!72266 s!2326) (t!379619 s!2326))))))))

(declare-fun e!4060782 () List!65942)

(assert (=> d!2112083 (= lt!2436700 e!4060782)))

(declare-fun c!1246028 () Bool)

(assert (=> d!2112083 (= c!1246028 ((_ is Nil!65818) Nil!65818))))

(assert (=> d!2112083 (= (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) (t!379619 s!2326))) lt!2436700)))

(declare-fun b!6720185 () Bool)

(assert (=> b!6720185 (= e!4060782 (Cons!65818 (h!72266 s!2326) (t!379619 s!2326)))))

(declare-fun b!6720186 () Bool)

(assert (=> b!6720186 (= e!4060782 (Cons!65818 (h!72266 Nil!65818) (++!14703 (t!379619 Nil!65818) (Cons!65818 (h!72266 s!2326) (t!379619 s!2326)))))))

(declare-fun b!6720188 () Bool)

(assert (=> b!6720188 (= e!4060781 (or (not (= (Cons!65818 (h!72266 s!2326) (t!379619 s!2326)) Nil!65818)) (= lt!2436700 Nil!65818)))))

(assert (= (and d!2112083 c!1246028) b!6720185))

(assert (= (and d!2112083 (not c!1246028)) b!6720186))

(assert (= (and d!2112083 res!2750072) b!6720187))

(assert (= (and b!6720187 res!2750071) b!6720188))

(declare-fun m!7482544 () Bool)

(assert (=> b!6720187 m!7482544))

(assert (=> b!6720187 m!7481686))

(declare-fun m!7482546 () Bool)

(assert (=> b!6720187 m!7482546))

(declare-fun m!7482548 () Bool)

(assert (=> d!2112083 m!7482548))

(assert (=> d!2112083 m!7481692))

(declare-fun m!7482550 () Bool)

(assert (=> d!2112083 m!7482550))

(declare-fun m!7482552 () Bool)

(assert (=> b!6720186 m!7482552))

(assert (=> d!2111701 d!2112083))

(declare-fun b!6720189 () Bool)

(declare-fun e!4060787 () Bool)

(declare-fun call!606648 () Bool)

(assert (=> b!6720189 (= e!4060787 call!606648)))

(declare-fun b!6720190 () Bool)

(declare-fun res!2750075 () Bool)

(declare-fun e!4060785 () Bool)

(assert (=> b!6720190 (=> res!2750075 e!4060785)))

(assert (=> b!6720190 (= res!2750075 (not ((_ is Concat!25392) (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554))))))))

(declare-fun e!4060788 () Bool)

(assert (=> b!6720190 (= e!4060788 e!4060785)))

(declare-fun b!6720191 () Bool)

(declare-fun res!2750077 () Bool)

(assert (=> b!6720191 (=> (not res!2750077) (not e!4060787))))

(declare-fun call!606649 () Bool)

(assert (=> b!6720191 (= res!2750077 call!606649)))

(assert (=> b!6720191 (= e!4060788 e!4060787)))

(declare-fun b!6720192 () Bool)

(declare-fun e!4060783 () Bool)

(assert (=> b!6720192 (= e!4060783 e!4060788)))

(declare-fun c!1246029 () Bool)

(assert (=> b!6720192 (= c!1246029 ((_ is Union!16547) (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))))))

(declare-fun d!2112085 () Bool)

(declare-fun res!2750073 () Bool)

(declare-fun e!4060789 () Bool)

(assert (=> d!2112085 (=> res!2750073 e!4060789)))

(assert (=> d!2112085 (= res!2750073 ((_ is ElementMatch!16547) (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))))))

(assert (=> d!2112085 (= (validRegex!8283 (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))) e!4060789)))

(declare-fun bm!606643 () Bool)

(declare-fun call!606650 () Bool)

(declare-fun c!1246030 () Bool)

(assert (=> bm!606643 (= call!606650 (validRegex!8283 (ite c!1246030 (reg!16876 (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))) (ite c!1246029 (regTwo!33607 (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))) (regTwo!33606 (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554))))))))))

(declare-fun b!6720193 () Bool)

(declare-fun e!4060786 () Bool)

(assert (=> b!6720193 (= e!4060786 call!606650)))

(declare-fun bm!606644 () Bool)

(assert (=> bm!606644 (= call!606648 call!606650)))

(declare-fun b!6720194 () Bool)

(declare-fun e!4060784 () Bool)

(assert (=> b!6720194 (= e!4060784 call!606648)))

(declare-fun b!6720195 () Bool)

(assert (=> b!6720195 (= e!4060783 e!4060786)))

(declare-fun res!2750076 () Bool)

(assert (=> b!6720195 (= res!2750076 (not (nullable!6534 (reg!16876 (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))))))))

(assert (=> b!6720195 (=> (not res!2750076) (not e!4060786))))

(declare-fun b!6720196 () Bool)

(assert (=> b!6720196 (= e!4060789 e!4060783)))

(assert (=> b!6720196 (= c!1246030 ((_ is Star!16547) (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))))))

(declare-fun b!6720197 () Bool)

(assert (=> b!6720197 (= e!4060785 e!4060784)))

(declare-fun res!2750074 () Bool)

(assert (=> b!6720197 (=> (not res!2750074) (not e!4060784))))

(assert (=> b!6720197 (= res!2750074 call!606649)))

(declare-fun bm!606645 () Bool)

(assert (=> bm!606645 (= call!606649 (validRegex!8283 (ite c!1246029 (regOne!33607 (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))) (regOne!33606 (ite c!1245824 (reg!16876 lt!2436554) (ite c!1245823 (regTwo!33607 lt!2436554) (regTwo!33606 lt!2436554)))))))))

(assert (= (and d!2112085 (not res!2750073)) b!6720196))

(assert (= (and b!6720196 c!1246030) b!6720195))

(assert (= (and b!6720196 (not c!1246030)) b!6720192))

(assert (= (and b!6720195 res!2750076) b!6720193))

(assert (= (and b!6720192 c!1246029) b!6720191))

(assert (= (and b!6720192 (not c!1246029)) b!6720190))

(assert (= (and b!6720191 res!2750077) b!6720189))

(assert (= (and b!6720190 (not res!2750075)) b!6720197))

(assert (= (and b!6720197 res!2750074) b!6720194))

(assert (= (or b!6720189 b!6720194) bm!606644))

(assert (= (or b!6720191 b!6720197) bm!606645))

(assert (= (or b!6720193 bm!606644) bm!606643))

(declare-fun m!7482554 () Bool)

(assert (=> bm!606643 m!7482554))

(declare-fun m!7482556 () Bool)

(assert (=> b!6720195 m!7482556))

(declare-fun m!7482558 () Bool)

(assert (=> bm!606645 m!7482558))

(assert (=> bm!606484 d!2112085))

(assert (=> b!6719467 d!2111613))

(assert (=> b!6719418 d!2111643))

(assert (=> b!6719025 d!2111843))

(declare-fun d!2112087 () Bool)

(assert (=> d!2112087 (= (isDefined!13137 lt!2436653) (not (isEmpty!38142 lt!2436653)))))

(declare-fun bs!1787986 () Bool)

(assert (= bs!1787986 d!2112087))

(declare-fun m!7482560 () Bool)

(assert (=> bs!1787986 m!7482560))

(assert (=> b!6719194 d!2112087))

(declare-fun d!2112089 () Bool)

(declare-fun c!1246031 () Bool)

(assert (=> d!2112089 (= c!1246031 ((_ is Nil!65817) res!2749805))))

(declare-fun e!4060790 () (InoxSet Context!11862))

(assert (=> d!2112089 (= (content!12763 res!2749805) e!4060790)))

(declare-fun b!6720198 () Bool)

(assert (=> b!6720198 (= e!4060790 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6720199 () Bool)

(assert (=> b!6720199 (= e!4060790 ((_ map or) (store ((as const (Array Context!11862 Bool)) false) (h!72265 res!2749805) true) (content!12763 (t!379618 res!2749805))))))

(assert (= (and d!2112089 c!1246031) b!6720198))

(assert (= (and d!2112089 (not c!1246031)) b!6720199))

(declare-fun m!7482562 () Bool)

(assert (=> b!6720199 m!7482562))

(declare-fun m!7482564 () Bool)

(assert (=> b!6720199 m!7482564))

(assert (=> b!6719363 d!2112089))

(declare-fun b!6720200 () Bool)

(declare-fun e!4060795 () Bool)

(declare-fun call!606651 () Bool)

(assert (=> b!6720200 (= e!4060795 call!606651)))

(declare-fun b!6720201 () Bool)

(declare-fun res!2750080 () Bool)

(declare-fun e!4060793 () Bool)

(assert (=> b!6720201 (=> res!2750080 e!4060793)))

(assert (=> b!6720201 (= res!2750080 (not ((_ is Concat!25392) (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))))))

(declare-fun e!4060796 () Bool)

(assert (=> b!6720201 (= e!4060796 e!4060793)))

(declare-fun b!6720202 () Bool)

(declare-fun res!2750082 () Bool)

(assert (=> b!6720202 (=> (not res!2750082) (not e!4060795))))

(declare-fun call!606652 () Bool)

(assert (=> b!6720202 (= res!2750082 call!606652)))

(assert (=> b!6720202 (= e!4060796 e!4060795)))

(declare-fun b!6720203 () Bool)

(declare-fun e!4060791 () Bool)

(assert (=> b!6720203 (= e!4060791 e!4060796)))

(declare-fun c!1246032 () Bool)

(assert (=> b!6720203 (= c!1246032 ((_ is Union!16547) (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))))

(declare-fun d!2112091 () Bool)

(declare-fun res!2750078 () Bool)

(declare-fun e!4060797 () Bool)

(assert (=> d!2112091 (=> res!2750078 e!4060797)))

(assert (=> d!2112091 (= res!2750078 ((_ is ElementMatch!16547) (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))))

(assert (=> d!2112091 (= (validRegex!8283 (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))) e!4060797)))

(declare-fun c!1246033 () Bool)

(declare-fun call!606653 () Bool)

(declare-fun bm!606646 () Bool)

(assert (=> bm!606646 (= call!606653 (validRegex!8283 (ite c!1246033 (reg!16876 (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))) (ite c!1246032 (regTwo!33607 (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))) (regTwo!33606 (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))))))))))))

(declare-fun b!6720204 () Bool)

(declare-fun e!4060794 () Bool)

(assert (=> b!6720204 (= e!4060794 call!606653)))

(declare-fun bm!606647 () Bool)

(assert (=> bm!606647 (= call!606651 call!606653)))

(declare-fun b!6720205 () Bool)

(declare-fun e!4060792 () Bool)

(assert (=> b!6720205 (= e!4060792 call!606651)))

(declare-fun b!6720206 () Bool)

(assert (=> b!6720206 (= e!4060791 e!4060794)))

(declare-fun res!2750081 () Bool)

(assert (=> b!6720206 (= res!2750081 (not (nullable!6534 (reg!16876 (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))))))

(assert (=> b!6720206 (=> (not res!2750081) (not e!4060794))))

(declare-fun b!6720207 () Bool)

(assert (=> b!6720207 (= e!4060797 e!4060791)))

(assert (=> b!6720207 (= c!1246033 ((_ is Star!16547) (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))))

(declare-fun b!6720208 () Bool)

(assert (=> b!6720208 (= e!4060793 e!4060792)))

(declare-fun res!2750079 () Bool)

(assert (=> b!6720208 (=> (not res!2750079) (not e!4060792))))

(assert (=> b!6720208 (= res!2750079 call!606652)))

(declare-fun bm!606648 () Bool)

(assert (=> bm!606648 (= call!606652 (validRegex!8283 (ite c!1246032 (regOne!33607 (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))) (regOne!33606 (ite c!1245760 (reg!16876 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (ite c!1245759 (regTwo!33607 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292)))) (regTwo!33606 (ite c!1245668 (reg!16876 r!7292) (ite c!1245667 (regTwo!33607 r!7292) (regTwo!33606 r!7292))))))))))))

(assert (= (and d!2112091 (not res!2750078)) b!6720207))

(assert (= (and b!6720207 c!1246033) b!6720206))

(assert (= (and b!6720207 (not c!1246033)) b!6720203))

(assert (= (and b!6720206 res!2750081) b!6720204))

(assert (= (and b!6720203 c!1246032) b!6720202))

(assert (= (and b!6720203 (not c!1246032)) b!6720201))

(assert (= (and b!6720202 res!2750082) b!6720200))

(assert (= (and b!6720201 (not res!2750080)) b!6720208))

(assert (= (and b!6720208 res!2750079) b!6720205))

(assert (= (or b!6720200 b!6720205) bm!606647))

(assert (= (or b!6720202 b!6720208) bm!606648))

(assert (= (or b!6720204 bm!606647) bm!606646))

(declare-fun m!7482566 () Bool)

(assert (=> bm!606646 m!7482566))

(declare-fun m!7482568 () Bool)

(assert (=> b!6720206 m!7482568))

(declare-fun m!7482570 () Bool)

(assert (=> bm!606648 m!7482570))

(assert (=> bm!606444 d!2112091))

(assert (=> b!6719434 d!2111873))

(declare-fun bm!606649 () Bool)

(declare-fun call!606658 () List!65940)

(declare-fun call!606659 () List!65940)

(assert (=> bm!606649 (= call!606658 call!606659)))

(declare-fun b!6720209 () Bool)

(declare-fun e!4060800 () (InoxSet Context!11862))

(assert (=> b!6720209 (= e!4060800 ((as const (Array Context!11862 Bool)) false))))

(declare-fun b!6720210 () Bool)

(declare-fun call!606654 () (InoxSet Context!11862))

(assert (=> b!6720210 (= e!4060800 call!606654)))

(declare-fun call!606656 () (InoxSet Context!11862))

(declare-fun bm!606650 () Bool)

(declare-fun c!1246037 () Bool)

(assert (=> bm!606650 (= call!606656 (derivationStepZipperDown!1775 (ite c!1246037 (regOne!33607 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))) (regOne!33606 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))) (ite c!1246037 (ite c!1245757 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606448)) (Context!11863 call!606659)) (h!72266 s!2326)))))

(declare-fun b!6720211 () Bool)

(declare-fun e!4060802 () (InoxSet Context!11862))

(declare-fun call!606655 () (InoxSet Context!11862))

(assert (=> b!6720211 (= e!4060802 ((_ map or) call!606656 call!606655))))

(declare-fun b!6720212 () Bool)

(declare-fun e!4060801 () Bool)

(assert (=> b!6720212 (= e!4060801 (nullable!6534 (regOne!33606 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))

(declare-fun b!6720213 () Bool)

(declare-fun e!4060799 () (InoxSet Context!11862))

(assert (=> b!6720213 (= e!4060802 e!4060799)))

(declare-fun c!1246035 () Bool)

(assert (=> b!6720213 (= c!1246035 ((_ is Concat!25392) (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(declare-fun b!6720214 () Bool)

(declare-fun e!4060798 () (InoxSet Context!11862))

(assert (=> b!6720214 (= e!4060798 (store ((as const (Array Context!11862 Bool)) false) (ite c!1245757 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606448)) true))))

(declare-fun b!6720215 () Bool)

(declare-fun e!4060803 () (InoxSet Context!11862))

(declare-fun call!606657 () (InoxSet Context!11862))

(assert (=> b!6720215 (= e!4060803 ((_ map or) call!606656 call!606657))))

(declare-fun b!6720216 () Bool)

(assert (=> b!6720216 (= e!4060798 e!4060803)))

(assert (=> b!6720216 (= c!1246037 ((_ is Union!16547) (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(declare-fun bm!606652 () Bool)

(assert (=> bm!606652 (= call!606654 call!606655)))

(declare-fun b!6720217 () Bool)

(assert (=> b!6720217 (= e!4060799 call!606654)))

(declare-fun c!1246038 () Bool)

(declare-fun bm!606653 () Bool)

(assert (=> bm!606653 (= call!606659 ($colon$colon!2364 (exprs!6431 (ite c!1245757 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606448))) (ite (or c!1246038 c!1246035) (regTwo!33606 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))) (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))))

(declare-fun bm!606654 () Bool)

(assert (=> bm!606654 (= call!606657 (derivationStepZipperDown!1775 (ite c!1246037 (regTwo!33607 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))) (ite c!1246038 (regTwo!33606 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))) (ite c!1246035 (regOne!33606 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))) (reg!16876 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))))))) (ite (or c!1246037 c!1246038) (ite c!1245757 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606448)) (Context!11863 call!606658)) (h!72266 s!2326)))))

(declare-fun b!6720218 () Bool)

(declare-fun c!1246034 () Bool)

(assert (=> b!6720218 (= c!1246034 ((_ is Star!16547) (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(assert (=> b!6720218 (= e!4060799 e!4060800)))

(declare-fun b!6720219 () Bool)

(assert (=> b!6720219 (= c!1246038 e!4060801)))

(declare-fun res!2750083 () Bool)

(assert (=> b!6720219 (=> (not res!2750083) (not e!4060801))))

(assert (=> b!6720219 (= res!2750083 ((_ is Concat!25392) (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))))))

(assert (=> b!6720219 (= e!4060803 e!4060802)))

(declare-fun d!2112093 () Bool)

(declare-fun c!1246036 () Bool)

(assert (=> d!2112093 (= c!1246036 (and ((_ is ElementMatch!16547) (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))) (= (c!1245533 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))))) (h!72266 s!2326))))))

(assert (=> d!2112093 (= (derivationStepZipperDown!1775 (ite c!1245757 (regOne!33607 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (regOne!33606 (h!72264 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816)))))) (ite c!1245757 (Context!11863 (t!379617 (exprs!6431 (Context!11863 (Cons!65816 r!7292 Nil!65816))))) (Context!11863 call!606448)) (h!72266 s!2326)) e!4060798)))

(declare-fun bm!606651 () Bool)

(assert (=> bm!606651 (= call!606655 call!606657)))

(assert (= (and d!2112093 c!1246036) b!6720214))

(assert (= (and d!2112093 (not c!1246036)) b!6720216))

(assert (= (and b!6720216 c!1246037) b!6720215))

(assert (= (and b!6720216 (not c!1246037)) b!6720219))

(assert (= (and b!6720219 res!2750083) b!6720212))

(assert (= (and b!6720219 c!1246038) b!6720211))

(assert (= (and b!6720219 (not c!1246038)) b!6720213))

(assert (= (and b!6720213 c!1246035) b!6720217))

(assert (= (and b!6720213 (not c!1246035)) b!6720218))

(assert (= (and b!6720218 c!1246034) b!6720210))

(assert (= (and b!6720218 (not c!1246034)) b!6720209))

(assert (= (or b!6720217 b!6720210) bm!606649))

(assert (= (or b!6720217 b!6720210) bm!606652))

(assert (= (or b!6720211 bm!606649) bm!606653))

(assert (= (or b!6720211 bm!606652) bm!606651))

(assert (= (or b!6720215 bm!606651) bm!606654))

(assert (= (or b!6720215 b!6720211) bm!606650))

(declare-fun m!7482572 () Bool)

(assert (=> bm!606650 m!7482572))

(declare-fun m!7482574 () Bool)

(assert (=> b!6720214 m!7482574))

(declare-fun m!7482576 () Bool)

(assert (=> bm!606654 m!7482576))

(declare-fun m!7482578 () Bool)

(assert (=> b!6720212 m!7482578))

(declare-fun m!7482580 () Bool)

(assert (=> bm!606653 m!7482580))

(assert (=> bm!606439 d!2112093))

(declare-fun bs!1787987 () Bool)

(declare-fun b!6720230 () Bool)

(assert (= bs!1787987 (and b!6720230 d!2111467)))

(declare-fun lambda!376957 () Int)

(assert (=> bs!1787987 (not (= lambda!376957 lambda!376886))))

(declare-fun bs!1787988 () Bool)

(assert (= bs!1787988 (and b!6720230 b!6719732)))

(assert (=> bs!1787988 (= (and (= (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 (regOne!33607 (regOne!33607 r!7292)))) (= (regTwo!33607 (regTwo!33607 r!7292)) (regOne!33607 (regOne!33607 r!7292)))) (= lambda!376957 lambda!376944))))

(declare-fun bs!1787989 () Bool)

(assert (= bs!1787989 (and b!6720230 b!6719725)))

(assert (=> bs!1787989 (not (= lambda!376957 lambda!376945))))

(declare-fun bs!1787990 () Bool)

(assert (= bs!1787990 (and b!6720230 d!2111631)))

(assert (=> bs!1787990 (= (and (= (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33607 (regTwo!33607 r!7292)) (Star!16547 (reg!16876 r!7292)))) (= lambda!376957 lambda!376923))))

(declare-fun bs!1787991 () Bool)

(assert (= bs!1787991 (and b!6720230 b!6718353)))

(assert (=> bs!1787991 (= (and (= (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33607 (regTwo!33607 r!7292)) r!7292)) (= lambda!376957 lambda!376862))))

(declare-fun bs!1787992 () Bool)

(assert (= bs!1787992 (and b!6720230 d!2111655)))

(assert (=> bs!1787992 (not (= lambda!376957 lambda!376934))))

(declare-fun bs!1787993 () Bool)

(assert (= bs!1787993 (and b!6720230 b!6719488)))

(assert (=> bs!1787993 (not (= lambda!376957 lambda!376943))))

(declare-fun bs!1787994 () Bool)

(assert (= bs!1787994 (and b!6720230 b!6718915)))

(assert (=> bs!1787994 (= (and (= (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 (regOne!33607 r!7292))) (= (regTwo!33607 (regTwo!33607 r!7292)) (regOne!33607 r!7292))) (= lambda!376957 lambda!376901))))

(declare-fun bs!1787995 () Bool)

(assert (= bs!1787995 (and b!6720230 b!6718097)))

(assert (=> bs!1787995 (= (and (= (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33607 (regTwo!33607 r!7292)) r!7292)) (= lambda!376957 lambda!376826))))

(assert (=> bs!1787992 (not (= lambda!376957 lambda!376935))))

(assert (=> bs!1787987 (not (= lambda!376957 lambda!376885))))

(declare-fun bs!1787996 () Bool)

(assert (= bs!1787996 (and b!6720230 b!6719495)))

(assert (=> bs!1787996 (= (and (= (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 (regTwo!33607 r!7292))) (= (regTwo!33607 (regTwo!33607 r!7292)) (regTwo!33607 r!7292))) (= lambda!376957 lambda!376942))))

(declare-fun bs!1787997 () Bool)

(assert (= bs!1787997 (and b!6720230 d!2111573)))

(assert (=> bs!1787997 (not (= lambda!376957 lambda!376905))))

(declare-fun bs!1787998 () Bool)

(assert (= bs!1787998 (and b!6720230 b!6720051)))

(assert (=> bs!1787998 (not (= lambda!376957 lambda!376955))))

(declare-fun bs!1787999 () Bool)

(assert (= bs!1787999 (and b!6720230 b!6718346)))

(assert (=> bs!1787999 (not (= lambda!376957 lambda!376863))))

(declare-fun bs!1788000 () Bool)

(assert (= bs!1788000 (and b!6720230 b!6720058)))

(assert (=> bs!1788000 (= (and (= (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 (regTwo!33607 (regOne!33607 r!7292)))) (= (regTwo!33607 (regTwo!33607 r!7292)) (regTwo!33607 (regOne!33607 r!7292)))) (= lambda!376957 lambda!376954))))

(declare-fun bs!1788001 () Bool)

(assert (= bs!1788001 (and b!6720230 d!2111469)))

(assert (=> bs!1788001 (= (and (= (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33607 (regTwo!33607 r!7292)) (Star!16547 (reg!16876 r!7292)))) (= lambda!376957 lambda!376892))))

(assert (=> bs!1787995 (not (= lambda!376957 lambda!376825))))

(declare-fun bs!1788002 () Bool)

(assert (= bs!1788002 (and b!6720230 d!2111481)))

(assert (=> bs!1788002 (not (= lambda!376957 lambda!376895))))

(declare-fun bs!1788003 () Bool)

(assert (= bs!1788003 (and b!6720230 b!6719754)))

(assert (=> bs!1788003 (= (and (= (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 (regOne!33607 (regTwo!33607 r!7292)))) (= (regTwo!33607 (regTwo!33607 r!7292)) (regOne!33607 (regTwo!33607 r!7292)))) (= lambda!376957 lambda!376946))))

(assert (=> bs!1787995 (not (= lambda!376957 lambda!376827))))

(assert (=> bs!1787990 (not (= lambda!376957 lambda!376922))))

(declare-fun bs!1788004 () Bool)

(assert (= bs!1788004 (and b!6720230 b!6718908)))

(assert (=> bs!1788004 (not (= lambda!376957 lambda!376902))))

(declare-fun bs!1788005 () Bool)

(assert (= bs!1788005 (and b!6720230 b!6719747)))

(assert (=> bs!1788005 (not (= lambda!376957 lambda!376947))))

(assert (=> bs!1788001 (not (= lambda!376957 lambda!376891))))

(assert (=> b!6720230 true))

(assert (=> b!6720230 true))

(declare-fun bs!1788006 () Bool)

(declare-fun b!6720223 () Bool)

(assert (= bs!1788006 (and b!6720223 d!2111467)))

(declare-fun lambda!376958 () Int)

(assert (=> bs!1788006 (= (and (= (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))) r!7292)) (= lambda!376958 lambda!376886))))

(declare-fun bs!1788007 () Bool)

(assert (= bs!1788007 (and b!6720223 b!6719732)))

(assert (=> bs!1788007 (not (= lambda!376958 lambda!376944))))

(declare-fun bs!1788008 () Bool)

(assert (= bs!1788008 (and b!6720223 b!6719725)))

(assert (=> bs!1788008 (= (and (= (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regOne!33606 (regOne!33607 (regOne!33607 r!7292)))) (= (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))))) (= lambda!376958 lambda!376945))))

(declare-fun bs!1788009 () Bool)

(assert (= bs!1788009 (and b!6720223 d!2111631)))

(assert (=> bs!1788009 (not (= lambda!376958 lambda!376923))))

(declare-fun bs!1788010 () Bool)

(assert (= bs!1788010 (and b!6720223 b!6718353)))

(assert (=> bs!1788010 (not (= lambda!376958 lambda!376862))))

(declare-fun bs!1788011 () Bool)

(assert (= bs!1788011 (and b!6720223 d!2111655)))

(assert (=> bs!1788011 (not (= lambda!376958 lambda!376934))))

(declare-fun bs!1788012 () Bool)

(assert (= bs!1788012 (and b!6720223 b!6719488)))

(assert (=> bs!1788012 (= (and (= (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regOne!33606 (regTwo!33607 r!7292))) (= (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regTwo!33606 (regTwo!33607 r!7292)))) (= lambda!376958 lambda!376943))))

(declare-fun bs!1788013 () Bool)

(assert (= bs!1788013 (and b!6720223 b!6718915)))

(assert (=> bs!1788013 (not (= lambda!376958 lambda!376901))))

(declare-fun bs!1788014 () Bool)

(assert (= bs!1788014 (and b!6720223 b!6718097)))

(assert (=> bs!1788014 (not (= lambda!376958 lambda!376826))))

(declare-fun bs!1788015 () Bool)

(assert (= bs!1788015 (and b!6720223 b!6720230)))

(assert (=> bs!1788015 (not (= lambda!376958 lambda!376957))))

(assert (=> bs!1788011 (= (and (= (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))) r!7292)) (= lambda!376958 lambda!376935))))

(assert (=> bs!1788006 (not (= lambda!376958 lambda!376885))))

(declare-fun bs!1788016 () Bool)

(assert (= bs!1788016 (and b!6720223 b!6719495)))

(assert (=> bs!1788016 (not (= lambda!376958 lambda!376942))))

(declare-fun bs!1788017 () Bool)

(assert (= bs!1788017 (and b!6720223 d!2111573)))

(assert (=> bs!1788017 (not (= lambda!376958 lambda!376905))))

(declare-fun bs!1788018 () Bool)

(assert (= bs!1788018 (and b!6720223 b!6720051)))

(assert (=> bs!1788018 (= (and (= (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regOne!33606 (regTwo!33607 (regOne!33607 r!7292)))) (= (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))))) (= lambda!376958 lambda!376955))))

(declare-fun bs!1788019 () Bool)

(assert (= bs!1788019 (and b!6720223 b!6718346)))

(assert (=> bs!1788019 (= (and (= (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regOne!33606 r!7292)) (= (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regTwo!33606 r!7292))) (= lambda!376958 lambda!376863))))

(declare-fun bs!1788020 () Bool)

(assert (= bs!1788020 (and b!6720223 b!6720058)))

(assert (=> bs!1788020 (not (= lambda!376958 lambda!376954))))

(declare-fun bs!1788021 () Bool)

(assert (= bs!1788021 (and b!6720223 d!2111469)))

(assert (=> bs!1788021 (not (= lambda!376958 lambda!376892))))

(assert (=> bs!1788014 (not (= lambda!376958 lambda!376825))))

(declare-fun bs!1788022 () Bool)

(assert (= bs!1788022 (and b!6720223 d!2111481)))

(assert (=> bs!1788022 (not (= lambda!376958 lambda!376895))))

(declare-fun bs!1788023 () Bool)

(assert (= bs!1788023 (and b!6720223 b!6719754)))

(assert (=> bs!1788023 (not (= lambda!376958 lambda!376946))))

(assert (=> bs!1788014 (= (and (= (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))) (reg!16876 r!7292)) (= (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))) r!7292)) (= lambda!376958 lambda!376827))))

(assert (=> bs!1788009 (not (= lambda!376958 lambda!376922))))

(declare-fun bs!1788024 () Bool)

(assert (= bs!1788024 (and b!6720223 b!6718908)))

(assert (=> bs!1788024 (= (and (= (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regOne!33606 (regOne!33607 r!7292))) (= (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regTwo!33606 (regOne!33607 r!7292)))) (= lambda!376958 lambda!376902))))

(declare-fun bs!1788025 () Bool)

(assert (= bs!1788025 (and b!6720223 b!6719747)))

(assert (=> bs!1788025 (= (and (= (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regOne!33606 (regOne!33607 (regTwo!33607 r!7292)))) (= (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))) (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))))) (= lambda!376958 lambda!376947))))

(assert (=> bs!1788021 (not (= lambda!376958 lambda!376891))))

(assert (=> b!6720223 true))

(assert (=> b!6720223 true))

(declare-fun b!6720220 () Bool)

(declare-fun e!4060810 () Bool)

(declare-fun e!4060808 () Bool)

(assert (=> b!6720220 (= e!4060810 e!4060808)))

(declare-fun res!2750084 () Bool)

(assert (=> b!6720220 (= res!2750084 (matchRSpec!3648 (regOne!33607 (regTwo!33607 (regTwo!33607 r!7292))) s!2326))))

(assert (=> b!6720220 (=> res!2750084 e!4060808)))

(declare-fun b!6720221 () Bool)

(declare-fun c!1246039 () Bool)

(assert (=> b!6720221 (= c!1246039 ((_ is Union!16547) (regTwo!33607 (regTwo!33607 r!7292))))))

(declare-fun e!4060804 () Bool)

(assert (=> b!6720221 (= e!4060804 e!4060810)))

(declare-fun b!6720222 () Bool)

(assert (=> b!6720222 (= e!4060804 (= s!2326 (Cons!65818 (c!1245533 (regTwo!33607 (regTwo!33607 r!7292))) Nil!65818)))))

(declare-fun b!6720224 () Bool)

(declare-fun c!1246040 () Bool)

(assert (=> b!6720224 (= c!1246040 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33607 r!7292))))))

(declare-fun e!4060805 () Bool)

(assert (=> b!6720224 (= e!4060805 e!4060804)))

(declare-fun b!6720225 () Bool)

(declare-fun res!2750086 () Bool)

(declare-fun e!4060809 () Bool)

(assert (=> b!6720225 (=> res!2750086 e!4060809)))

(declare-fun call!606660 () Bool)

(assert (=> b!6720225 (= res!2750086 call!606660)))

(declare-fun e!4060806 () Bool)

(assert (=> b!6720225 (= e!4060806 e!4060809)))

(declare-fun b!6720226 () Bool)

(declare-fun e!4060807 () Bool)

(assert (=> b!6720226 (= e!4060807 call!606660)))

(declare-fun b!6720227 () Bool)

(assert (=> b!6720227 (= e!4060808 (matchRSpec!3648 (regTwo!33607 (regTwo!33607 (regTwo!33607 r!7292))) s!2326))))

(declare-fun bm!606655 () Bool)

(assert (=> bm!606655 (= call!606660 (isEmpty!38137 s!2326))))

(declare-fun b!6720228 () Bool)

(assert (=> b!6720228 (= e!4060807 e!4060805)))

(declare-fun res!2750085 () Bool)

(assert (=> b!6720228 (= res!2750085 (not ((_ is EmptyLang!16547) (regTwo!33607 (regTwo!33607 r!7292)))))))

(assert (=> b!6720228 (=> (not res!2750085) (not e!4060805))))

(declare-fun b!6720229 () Bool)

(assert (=> b!6720229 (= e!4060810 e!4060806)))

(declare-fun c!1246042 () Bool)

(assert (=> b!6720229 (= c!1246042 ((_ is Star!16547) (regTwo!33607 (regTwo!33607 r!7292))))))

(declare-fun call!606661 () Bool)

(assert (=> b!6720223 (= e!4060806 call!606661)))

(declare-fun d!2112095 () Bool)

(declare-fun c!1246041 () Bool)

(assert (=> d!2112095 (= c!1246041 ((_ is EmptyExpr!16547) (regTwo!33607 (regTwo!33607 r!7292))))))

(assert (=> d!2112095 (= (matchRSpec!3648 (regTwo!33607 (regTwo!33607 r!7292)) s!2326) e!4060807)))

(assert (=> b!6720230 (= e!4060809 call!606661)))

(declare-fun bm!606656 () Bool)

(assert (=> bm!606656 (= call!606661 (Exists!3615 (ite c!1246042 lambda!376957 lambda!376958)))))

(assert (= (and d!2112095 c!1246041) b!6720226))

(assert (= (and d!2112095 (not c!1246041)) b!6720228))

(assert (= (and b!6720228 res!2750085) b!6720224))

(assert (= (and b!6720224 c!1246040) b!6720222))

(assert (= (and b!6720224 (not c!1246040)) b!6720221))

(assert (= (and b!6720221 c!1246039) b!6720220))

(assert (= (and b!6720221 (not c!1246039)) b!6720229))

(assert (= (and b!6720220 (not res!2750084)) b!6720227))

(assert (= (and b!6720229 c!1246042) b!6720225))

(assert (= (and b!6720229 (not c!1246042)) b!6720223))

(assert (= (and b!6720225 (not res!2750086)) b!6720230))

(assert (= (or b!6720230 b!6720223) bm!606656))

(assert (= (or b!6720226 b!6720225) bm!606655))

(declare-fun m!7482582 () Bool)

(assert (=> b!6720220 m!7482582))

(declare-fun m!7482584 () Bool)

(assert (=> b!6720227 m!7482584))

(assert (=> bm!606655 m!7480976))

(declare-fun m!7482586 () Bool)

(assert (=> bm!606656 m!7482586))

(assert (=> b!6719492 d!2112095))

(assert (=> b!6719500 d!2111957))

(declare-fun d!2112097 () Bool)

(assert (=> d!2112097 (= (nullable!6534 (reg!16876 lt!2436554)) (nullableFct!2448 (reg!16876 lt!2436554)))))

(declare-fun bs!1788026 () Bool)

(assert (= bs!1788026 d!2112097))

(declare-fun m!7482588 () Bool)

(assert (=> bs!1788026 m!7482588))

(assert (=> b!6719389 d!2112097))

(declare-fun d!2112099 () Bool)

(assert (=> d!2112099 true))

(assert (=> d!2112099 true))

(declare-fun res!2750087 () Bool)

(assert (=> d!2112099 (= (choose!50069 lambda!376895) res!2750087)))

(assert (=> d!2111581 d!2112099))

(declare-fun d!2112101 () Bool)

(declare-fun c!1246043 () Bool)

(assert (=> d!2112101 (= c!1246043 ((_ is Nil!65818) lt!2436646))))

(declare-fun e!4060811 () (InoxSet C!33364))

(assert (=> d!2112101 (= (content!12765 lt!2436646) e!4060811)))

(declare-fun b!6720231 () Bool)

(assert (=> b!6720231 (= e!4060811 ((as const (Array C!33364 Bool)) false))))

(declare-fun b!6720232 () Bool)

(assert (=> b!6720232 (= e!4060811 ((_ map or) (store ((as const (Array C!33364 Bool)) false) (h!72266 lt!2436646) true) (content!12765 (t!379619 lt!2436646))))))

(assert (= (and d!2112101 c!1246043) b!6720231))

(assert (= (and d!2112101 (not c!1246043)) b!6720232))

(declare-fun m!7482590 () Bool)

(assert (=> b!6720232 m!7482590))

(declare-fun m!7482592 () Bool)

(assert (=> b!6720232 m!7482592))

(assert (=> d!2111699 d!2112101))

(declare-fun d!2112103 () Bool)

(assert (=> d!2112103 (= (content!12765 Nil!65818) ((as const (Array C!33364 Bool)) false))))

(assert (=> d!2111699 d!2112103))

(declare-fun d!2112105 () Bool)

(declare-fun c!1246044 () Bool)

(assert (=> d!2112105 (= c!1246044 ((_ is Nil!65818) (Cons!65818 (h!72266 s!2326) Nil!65818)))))

(declare-fun e!4060812 () (InoxSet C!33364))

(assert (=> d!2112105 (= (content!12765 (Cons!65818 (h!72266 s!2326) Nil!65818)) e!4060812)))

(declare-fun b!6720233 () Bool)

(assert (=> b!6720233 (= e!4060812 ((as const (Array C!33364 Bool)) false))))

(declare-fun b!6720234 () Bool)

(assert (=> b!6720234 (= e!4060812 ((_ map or) (store ((as const (Array C!33364 Bool)) false) (h!72266 (Cons!65818 (h!72266 s!2326) Nil!65818)) true) (content!12765 (t!379619 (Cons!65818 (h!72266 s!2326) Nil!65818)))))))

(assert (= (and d!2112105 c!1246044) b!6720233))

(assert (= (and d!2112105 (not c!1246044)) b!6720234))

(declare-fun m!7482594 () Bool)

(assert (=> b!6720234 m!7482594))

(declare-fun m!7482596 () Bool)

(assert (=> b!6720234 m!7482596))

(assert (=> d!2111699 d!2112105))

(declare-fun d!2112107 () Bool)

(assert (=> d!2112107 (= (isUnion!1350 lt!2436624) ((_ is Union!16547) lt!2436624))))

(assert (=> b!6718859 d!2112107))

(declare-fun b!6720235 () Bool)

(declare-fun res!2750089 () Bool)

(declare-fun e!4060813 () Bool)

(assert (=> b!6720235 (=> (not res!2750089) (not e!4060813))))

(declare-fun call!606662 () Bool)

(assert (=> b!6720235 (= res!2750089 (not call!606662))))

(declare-fun b!6720236 () Bool)

(declare-fun e!4060816 () Bool)

(declare-fun e!4060817 () Bool)

(assert (=> b!6720236 (= e!4060816 e!4060817)))

(declare-fun res!2750095 () Bool)

(assert (=> b!6720236 (=> (not res!2750095) (not e!4060817))))

(declare-fun lt!2436701 () Bool)

(assert (=> b!6720236 (= res!2750095 (not lt!2436701))))

(declare-fun b!6720237 () Bool)

(declare-fun e!4060814 () Bool)

(assert (=> b!6720237 (= e!4060814 (matchR!8730 (derivativeStep!5219 r!7292 (head!13522 (_2!36825 (get!22892 lt!2436653)))) (tail!12607 (_2!36825 (get!22892 lt!2436653)))))))

(declare-fun d!2112109 () Bool)

(declare-fun e!4060818 () Bool)

(assert (=> d!2112109 e!4060818))

(declare-fun c!1246045 () Bool)

(assert (=> d!2112109 (= c!1246045 ((_ is EmptyExpr!16547) r!7292))))

(assert (=> d!2112109 (= lt!2436701 e!4060814)))

(declare-fun c!1246046 () Bool)

(assert (=> d!2112109 (= c!1246046 (isEmpty!38137 (_2!36825 (get!22892 lt!2436653))))))

(assert (=> d!2112109 (validRegex!8283 r!7292)))

(assert (=> d!2112109 (= (matchR!8730 r!7292 (_2!36825 (get!22892 lt!2436653))) lt!2436701)))

(declare-fun b!6720238 () Bool)

(declare-fun e!4060815 () Bool)

(assert (=> b!6720238 (= e!4060815 (not lt!2436701))))

(declare-fun b!6720239 () Bool)

(declare-fun e!4060819 () Bool)

(assert (=> b!6720239 (= e!4060819 (not (= (head!13522 (_2!36825 (get!22892 lt!2436653))) (c!1245533 r!7292))))))

(declare-fun b!6720240 () Bool)

(assert (=> b!6720240 (= e!4060818 (= lt!2436701 call!606662))))

(declare-fun bm!606657 () Bool)

(assert (=> bm!606657 (= call!606662 (isEmpty!38137 (_2!36825 (get!22892 lt!2436653))))))

(declare-fun b!6720241 () Bool)

(assert (=> b!6720241 (= e!4060814 (nullable!6534 r!7292))))

(declare-fun b!6720242 () Bool)

(assert (=> b!6720242 (= e!4060818 e!4060815)))

(declare-fun c!1246047 () Bool)

(assert (=> b!6720242 (= c!1246047 ((_ is EmptyLang!16547) r!7292))))

(declare-fun b!6720243 () Bool)

(assert (=> b!6720243 (= e!4060813 (= (head!13522 (_2!36825 (get!22892 lt!2436653))) (c!1245533 r!7292)))))

(declare-fun b!6720244 () Bool)

(declare-fun res!2750092 () Bool)

(assert (=> b!6720244 (=> res!2750092 e!4060819)))

(assert (=> b!6720244 (= res!2750092 (not (isEmpty!38137 (tail!12607 (_2!36825 (get!22892 lt!2436653))))))))

(declare-fun b!6720245 () Bool)

(declare-fun res!2750090 () Bool)

(assert (=> b!6720245 (=> res!2750090 e!4060816)))

(assert (=> b!6720245 (= res!2750090 e!4060813)))

(declare-fun res!2750094 () Bool)

(assert (=> b!6720245 (=> (not res!2750094) (not e!4060813))))

(assert (=> b!6720245 (= res!2750094 lt!2436701)))

(declare-fun b!6720246 () Bool)

(declare-fun res!2750091 () Bool)

(assert (=> b!6720246 (=> res!2750091 e!4060816)))

(assert (=> b!6720246 (= res!2750091 (not ((_ is ElementMatch!16547) r!7292)))))

(assert (=> b!6720246 (= e!4060815 e!4060816)))

(declare-fun b!6720247 () Bool)

(declare-fun res!2750088 () Bool)

(assert (=> b!6720247 (=> (not res!2750088) (not e!4060813))))

(assert (=> b!6720247 (= res!2750088 (isEmpty!38137 (tail!12607 (_2!36825 (get!22892 lt!2436653)))))))

(declare-fun b!6720248 () Bool)

(assert (=> b!6720248 (= e!4060817 e!4060819)))

(declare-fun res!2750093 () Bool)

(assert (=> b!6720248 (=> res!2750093 e!4060819)))

(assert (=> b!6720248 (= res!2750093 call!606662)))

(assert (= (and d!2112109 c!1246046) b!6720241))

(assert (= (and d!2112109 (not c!1246046)) b!6720237))

(assert (= (and d!2112109 c!1246045) b!6720240))

(assert (= (and d!2112109 (not c!1246045)) b!6720242))

(assert (= (and b!6720242 c!1246047) b!6720238))

(assert (= (and b!6720242 (not c!1246047)) b!6720246))

(assert (= (and b!6720246 (not res!2750091)) b!6720245))

(assert (= (and b!6720245 res!2750094) b!6720235))

(assert (= (and b!6720235 res!2750089) b!6720247))

(assert (= (and b!6720247 res!2750088) b!6720243))

(assert (= (and b!6720245 (not res!2750090)) b!6720236))

(assert (= (and b!6720236 res!2750095) b!6720248))

(assert (= (and b!6720248 (not res!2750093)) b!6720244))

(assert (= (and b!6720244 (not res!2750092)) b!6720239))

(assert (= (or b!6720240 b!6720235 b!6720248) bm!606657))

(declare-fun m!7482598 () Bool)

(assert (=> b!6720243 m!7482598))

(assert (=> b!6720239 m!7482598))

(declare-fun m!7482600 () Bool)

(assert (=> bm!606657 m!7482600))

(declare-fun m!7482602 () Bool)

(assert (=> b!6720244 m!7482602))

(assert (=> b!6720244 m!7482602))

(declare-fun m!7482604 () Bool)

(assert (=> b!6720244 m!7482604))

(assert (=> d!2112109 m!7482600))

(assert (=> d!2112109 m!7480964))

(assert (=> b!6720247 m!7482602))

(assert (=> b!6720247 m!7482602))

(assert (=> b!6720247 m!7482604))

(assert (=> b!6720237 m!7482598))

(assert (=> b!6720237 m!7482598))

(declare-fun m!7482606 () Bool)

(assert (=> b!6720237 m!7482606))

(assert (=> b!6720237 m!7482602))

(assert (=> b!6720237 m!7482606))

(assert (=> b!6720237 m!7482602))

(declare-fun m!7482608 () Bool)

(assert (=> b!6720237 m!7482608))

(assert (=> b!6720241 m!7481152))

(assert (=> b!6719192 d!2112109))

(assert (=> b!6719192 d!2112037))

(assert (=> d!2111715 d!2112087))

(declare-fun b!6720249 () Bool)

(declare-fun res!2750097 () Bool)

(declare-fun e!4060820 () Bool)

(assert (=> b!6720249 (=> (not res!2750097) (not e!4060820))))

(declare-fun call!606663 () Bool)

(assert (=> b!6720249 (= res!2750097 (not call!606663))))

(declare-fun b!6720250 () Bool)

(declare-fun e!4060823 () Bool)

(declare-fun e!4060824 () Bool)

(assert (=> b!6720250 (= e!4060823 e!4060824)))

(declare-fun res!2750103 () Bool)

(assert (=> b!6720250 (=> (not res!2750103) (not e!4060824))))

(declare-fun lt!2436702 () Bool)

(assert (=> b!6720250 (= res!2750103 (not lt!2436702))))

(declare-fun b!6720251 () Bool)

(declare-fun e!4060821 () Bool)

(assert (=> b!6720251 (= e!4060821 (matchR!8730 (derivativeStep!5219 (reg!16876 r!7292) (head!13522 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))) (tail!12607 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))))))

(declare-fun d!2112111 () Bool)

(declare-fun e!4060825 () Bool)

(assert (=> d!2112111 e!4060825))

(declare-fun c!1246048 () Bool)

(assert (=> d!2112111 (= c!1246048 ((_ is EmptyExpr!16547) (reg!16876 r!7292)))))

(assert (=> d!2112111 (= lt!2436702 e!4060821)))

(declare-fun c!1246049 () Bool)

(assert (=> d!2112111 (= c!1246049 (isEmpty!38137 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))

(assert (=> d!2112111 (validRegex!8283 (reg!16876 r!7292))))

(assert (=> d!2112111 (= (matchR!8730 (reg!16876 r!7292) (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) lt!2436702)))

(declare-fun b!6720252 () Bool)

(declare-fun e!4060822 () Bool)

(assert (=> b!6720252 (= e!4060822 (not lt!2436702))))

(declare-fun b!6720253 () Bool)

(declare-fun e!4060826 () Bool)

(assert (=> b!6720253 (= e!4060826 (not (= (head!13522 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (c!1245533 (reg!16876 r!7292)))))))

(declare-fun b!6720254 () Bool)

(assert (=> b!6720254 (= e!4060825 (= lt!2436702 call!606663))))

(declare-fun bm!606658 () Bool)

(assert (=> bm!606658 (= call!606663 (isEmpty!38137 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))

(declare-fun b!6720255 () Bool)

(assert (=> b!6720255 (= e!4060821 (nullable!6534 (reg!16876 r!7292)))))

(declare-fun b!6720256 () Bool)

(assert (=> b!6720256 (= e!4060825 e!4060822)))

(declare-fun c!1246050 () Bool)

(assert (=> b!6720256 (= c!1246050 ((_ is EmptyLang!16547) (reg!16876 r!7292)))))

(declare-fun b!6720257 () Bool)

(assert (=> b!6720257 (= e!4060820 (= (head!13522 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))) (c!1245533 (reg!16876 r!7292))))))

(declare-fun b!6720258 () Bool)

(declare-fun res!2750100 () Bool)

(assert (=> b!6720258 (=> res!2750100 e!4060826)))

(assert (=> b!6720258 (= res!2750100 (not (isEmpty!38137 (tail!12607 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818))))))))

(declare-fun b!6720259 () Bool)

(declare-fun res!2750098 () Bool)

(assert (=> b!6720259 (=> res!2750098 e!4060823)))

(assert (=> b!6720259 (= res!2750098 e!4060820)))

(declare-fun res!2750102 () Bool)

(assert (=> b!6720259 (=> (not res!2750102) (not e!4060820))))

(assert (=> b!6720259 (= res!2750102 lt!2436702)))

(declare-fun b!6720260 () Bool)

(declare-fun res!2750099 () Bool)

(assert (=> b!6720260 (=> res!2750099 e!4060823)))

(assert (=> b!6720260 (= res!2750099 (not ((_ is ElementMatch!16547) (reg!16876 r!7292))))))

(assert (=> b!6720260 (= e!4060822 e!4060823)))

(declare-fun b!6720261 () Bool)

(declare-fun res!2750096 () Bool)

(assert (=> b!6720261 (=> (not res!2750096) (not e!4060820))))

(assert (=> b!6720261 (= res!2750096 (isEmpty!38137 (tail!12607 (++!14703 Nil!65818 (Cons!65818 (h!72266 s!2326) Nil!65818)))))))

(declare-fun b!6720262 () Bool)

(assert (=> b!6720262 (= e!4060824 e!4060826)))

(declare-fun res!2750101 () Bool)

(assert (=> b!6720262 (=> res!2750101 e!4060826)))

(assert (=> b!6720262 (= res!2750101 call!606663)))

(assert (= (and d!2112111 c!1246049) b!6720255))

(assert (= (and d!2112111 (not c!1246049)) b!6720251))

(assert (= (and d!2112111 c!1246048) b!6720254))

(assert (= (and d!2112111 (not c!1246048)) b!6720256))

(assert (= (and b!6720256 c!1246050) b!6720252))

(assert (= (and b!6720256 (not c!1246050)) b!6720260))

(assert (= (and b!6720260 (not res!2750099)) b!6720259))

(assert (= (and b!6720259 res!2750102) b!6720249))

(assert (= (and b!6720249 res!2750097) b!6720261))

(assert (= (and b!6720261 res!2750096) b!6720257))

(assert (= (and b!6720259 (not res!2750098)) b!6720250))

(assert (= (and b!6720250 res!2750103) b!6720262))

(assert (= (and b!6720262 (not res!2750101)) b!6720258))

(assert (= (and b!6720258 (not res!2750100)) b!6720253))

(assert (= (or b!6720254 b!6720249 b!6720262) bm!606658))

(assert (=> b!6720257 m!7481246))

(declare-fun m!7482610 () Bool)

(assert (=> b!6720257 m!7482610))

(assert (=> b!6720253 m!7481246))

(assert (=> b!6720253 m!7482610))

(assert (=> bm!606658 m!7481246))

(declare-fun m!7482612 () Bool)

(assert (=> bm!606658 m!7482612))

(assert (=> b!6720258 m!7481246))

(declare-fun m!7482614 () Bool)

(assert (=> b!6720258 m!7482614))

(assert (=> b!6720258 m!7482614))

(declare-fun m!7482616 () Bool)

(assert (=> b!6720258 m!7482616))

(assert (=> d!2112111 m!7481246))

(assert (=> d!2112111 m!7482612))

(assert (=> d!2112111 m!7481234))

(assert (=> b!6720261 m!7481246))

(assert (=> b!6720261 m!7482614))

(assert (=> b!6720261 m!7482614))

(assert (=> b!6720261 m!7482616))

(assert (=> b!6720251 m!7481246))

(assert (=> b!6720251 m!7482610))

(assert (=> b!6720251 m!7482610))

(declare-fun m!7482618 () Bool)

(assert (=> b!6720251 m!7482618))

(assert (=> b!6720251 m!7481246))

(assert (=> b!6720251 m!7482614))

(assert (=> b!6720251 m!7482618))

(assert (=> b!6720251 m!7482614))

(declare-fun m!7482620 () Bool)

(assert (=> b!6720251 m!7482620))

(assert (=> b!6720255 m!7481220))

(assert (=> d!2111715 d!2112111))

(assert (=> d!2111715 d!2111565))

(assert (=> d!2111611 d!2111907))

(assert (=> d!2111611 d!2111459))

(assert (=> d!2111787 d!2111831))

(assert (=> d!2111787 d!2111565))

(declare-fun b!6720266 () Bool)

(declare-fun e!4060827 () Bool)

(declare-fun tp!1841670 () Bool)

(declare-fun tp!1841672 () Bool)

(assert (=> b!6720266 (= e!4060827 (and tp!1841670 tp!1841672))))

(declare-fun b!6720265 () Bool)

(declare-fun tp!1841671 () Bool)

(assert (=> b!6720265 (= e!4060827 tp!1841671)))

(declare-fun b!6720264 () Bool)

(declare-fun tp!1841674 () Bool)

(declare-fun tp!1841673 () Bool)

(assert (=> b!6720264 (= e!4060827 (and tp!1841674 tp!1841673))))

(assert (=> b!6719579 (= tp!1841614 e!4060827)))

(declare-fun b!6720263 () Bool)

(assert (=> b!6720263 (= e!4060827 tp_is_empty!42347)))

(assert (= (and b!6719579 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33607 (reg!16876 r!7292))))) b!6720263))

(assert (= (and b!6719579 ((_ is Concat!25392) (regOne!33606 (regOne!33607 (reg!16876 r!7292))))) b!6720264))

(assert (= (and b!6719579 ((_ is Star!16547) (regOne!33606 (regOne!33607 (reg!16876 r!7292))))) b!6720265))

(assert (= (and b!6719579 ((_ is Union!16547) (regOne!33606 (regOne!33607 (reg!16876 r!7292))))) b!6720266))

(declare-fun b!6720270 () Bool)

(declare-fun e!4060828 () Bool)

(declare-fun tp!1841675 () Bool)

(declare-fun tp!1841677 () Bool)

(assert (=> b!6720270 (= e!4060828 (and tp!1841675 tp!1841677))))

(declare-fun b!6720269 () Bool)

(declare-fun tp!1841676 () Bool)

(assert (=> b!6720269 (= e!4060828 tp!1841676)))

(declare-fun b!6720268 () Bool)

(declare-fun tp!1841679 () Bool)

(declare-fun tp!1841678 () Bool)

(assert (=> b!6720268 (= e!4060828 (and tp!1841679 tp!1841678))))

(assert (=> b!6719579 (= tp!1841613 e!4060828)))

(declare-fun b!6720267 () Bool)

(assert (=> b!6720267 (= e!4060828 tp_is_empty!42347)))

(assert (= (and b!6719579 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33607 (reg!16876 r!7292))))) b!6720267))

(assert (= (and b!6719579 ((_ is Concat!25392) (regTwo!33606 (regOne!33607 (reg!16876 r!7292))))) b!6720268))

(assert (= (and b!6719579 ((_ is Star!16547) (regTwo!33606 (regOne!33607 (reg!16876 r!7292))))) b!6720269))

(assert (= (and b!6719579 ((_ is Union!16547) (regTwo!33606 (regOne!33607 (reg!16876 r!7292))))) b!6720270))

(declare-fun b!6720274 () Bool)

(declare-fun e!4060829 () Bool)

(declare-fun tp!1841680 () Bool)

(declare-fun tp!1841682 () Bool)

(assert (=> b!6720274 (= e!4060829 (and tp!1841680 tp!1841682))))

(declare-fun b!6720273 () Bool)

(declare-fun tp!1841681 () Bool)

(assert (=> b!6720273 (= e!4060829 tp!1841681)))

(declare-fun b!6720272 () Bool)

(declare-fun tp!1841684 () Bool)

(declare-fun tp!1841683 () Bool)

(assert (=> b!6720272 (= e!4060829 (and tp!1841684 tp!1841683))))

(assert (=> b!6719544 (= tp!1841562 e!4060829)))

(declare-fun b!6720271 () Bool)

(assert (=> b!6720271 (= e!4060829 tp_is_empty!42347)))

(assert (= (and b!6719544 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33606 (regTwo!33606 r!7292))))) b!6720271))

(assert (= (and b!6719544 ((_ is Concat!25392) (regOne!33607 (regOne!33606 (regTwo!33606 r!7292))))) b!6720272))

(assert (= (and b!6719544 ((_ is Star!16547) (regOne!33607 (regOne!33606 (regTwo!33606 r!7292))))) b!6720273))

(assert (= (and b!6719544 ((_ is Union!16547) (regOne!33607 (regOne!33606 (regTwo!33606 r!7292))))) b!6720274))

(declare-fun b!6720278 () Bool)

(declare-fun e!4060830 () Bool)

(declare-fun tp!1841685 () Bool)

(declare-fun tp!1841687 () Bool)

(assert (=> b!6720278 (= e!4060830 (and tp!1841685 tp!1841687))))

(declare-fun b!6720277 () Bool)

(declare-fun tp!1841686 () Bool)

(assert (=> b!6720277 (= e!4060830 tp!1841686)))

(declare-fun b!6720276 () Bool)

(declare-fun tp!1841689 () Bool)

(declare-fun tp!1841688 () Bool)

(assert (=> b!6720276 (= e!4060830 (and tp!1841689 tp!1841688))))

(assert (=> b!6719544 (= tp!1841564 e!4060830)))

(declare-fun b!6720275 () Bool)

(assert (=> b!6720275 (= e!4060830 tp_is_empty!42347)))

(assert (= (and b!6719544 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33606 (regTwo!33606 r!7292))))) b!6720275))

(assert (= (and b!6719544 ((_ is Concat!25392) (regTwo!33607 (regOne!33606 (regTwo!33606 r!7292))))) b!6720276))

(assert (= (and b!6719544 ((_ is Star!16547) (regTwo!33607 (regOne!33606 (regTwo!33606 r!7292))))) b!6720277))

(assert (= (and b!6719544 ((_ is Union!16547) (regTwo!33607 (regOne!33606 (regTwo!33606 r!7292))))) b!6720278))

(declare-fun b!6720282 () Bool)

(declare-fun e!4060831 () Bool)

(declare-fun tp!1841690 () Bool)

(declare-fun tp!1841692 () Bool)

(assert (=> b!6720282 (= e!4060831 (and tp!1841690 tp!1841692))))

(declare-fun b!6720281 () Bool)

(declare-fun tp!1841691 () Bool)

(assert (=> b!6720281 (= e!4060831 tp!1841691)))

(declare-fun b!6720280 () Bool)

(declare-fun tp!1841694 () Bool)

(declare-fun tp!1841693 () Bool)

(assert (=> b!6720280 (= e!4060831 (and tp!1841694 tp!1841693))))

(assert (=> b!6719587 (= tp!1841624 e!4060831)))

(declare-fun b!6720279 () Bool)

(assert (=> b!6720279 (= e!4060831 tp_is_empty!42347)))

(assert (= (and b!6719587 ((_ is ElementMatch!16547) (regOne!33606 (reg!16876 (regOne!33607 r!7292))))) b!6720279))

(assert (= (and b!6719587 ((_ is Concat!25392) (regOne!33606 (reg!16876 (regOne!33607 r!7292))))) b!6720280))

(assert (= (and b!6719587 ((_ is Star!16547) (regOne!33606 (reg!16876 (regOne!33607 r!7292))))) b!6720281))

(assert (= (and b!6719587 ((_ is Union!16547) (regOne!33606 (reg!16876 (regOne!33607 r!7292))))) b!6720282))

(declare-fun b!6720286 () Bool)

(declare-fun e!4060832 () Bool)

(declare-fun tp!1841695 () Bool)

(declare-fun tp!1841697 () Bool)

(assert (=> b!6720286 (= e!4060832 (and tp!1841695 tp!1841697))))

(declare-fun b!6720285 () Bool)

(declare-fun tp!1841696 () Bool)

(assert (=> b!6720285 (= e!4060832 tp!1841696)))

(declare-fun b!6720284 () Bool)

(declare-fun tp!1841699 () Bool)

(declare-fun tp!1841698 () Bool)

(assert (=> b!6720284 (= e!4060832 (and tp!1841699 tp!1841698))))

(assert (=> b!6719587 (= tp!1841623 e!4060832)))

(declare-fun b!6720283 () Bool)

(assert (=> b!6720283 (= e!4060832 tp_is_empty!42347)))

(assert (= (and b!6719587 ((_ is ElementMatch!16547) (regTwo!33606 (reg!16876 (regOne!33607 r!7292))))) b!6720283))

(assert (= (and b!6719587 ((_ is Concat!25392) (regTwo!33606 (reg!16876 (regOne!33607 r!7292))))) b!6720284))

(assert (= (and b!6719587 ((_ is Star!16547) (regTwo!33606 (reg!16876 (regOne!33607 r!7292))))) b!6720285))

(assert (= (and b!6719587 ((_ is Union!16547) (regTwo!33606 (reg!16876 (regOne!33607 r!7292))))) b!6720286))

(declare-fun b!6720287 () Bool)

(declare-fun e!4060833 () Bool)

(declare-fun tp!1841700 () Bool)

(declare-fun tp!1841701 () Bool)

(assert (=> b!6720287 (= e!4060833 (and tp!1841700 tp!1841701))))

(assert (=> b!6719549 (= tp!1841572 e!4060833)))

(assert (= (and b!6719549 ((_ is Cons!65816) (exprs!6431 setElem!45807))) b!6720287))

(declare-fun b!6720291 () Bool)

(declare-fun e!4060834 () Bool)

(declare-fun tp!1841702 () Bool)

(declare-fun tp!1841704 () Bool)

(assert (=> b!6720291 (= e!4060834 (and tp!1841702 tp!1841704))))

(declare-fun b!6720290 () Bool)

(declare-fun tp!1841703 () Bool)

(assert (=> b!6720290 (= e!4060834 tp!1841703)))

(declare-fun b!6720289 () Bool)

(declare-fun tp!1841706 () Bool)

(declare-fun tp!1841705 () Bool)

(assert (=> b!6720289 (= e!4060834 (and tp!1841706 tp!1841705))))

(assert (=> b!6719596 (= tp!1841631 e!4060834)))

(declare-fun b!6720288 () Bool)

(assert (=> b!6720288 (= e!4060834 tp_is_empty!42347)))

(assert (= (and b!6719596 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33606 (regOne!33607 r!7292))))) b!6720288))

(assert (= (and b!6719596 ((_ is Concat!25392) (reg!16876 (regTwo!33606 (regOne!33607 r!7292))))) b!6720289))

(assert (= (and b!6719596 ((_ is Star!16547) (reg!16876 (regTwo!33606 (regOne!33607 r!7292))))) b!6720290))

(assert (= (and b!6719596 ((_ is Union!16547) (reg!16876 (regTwo!33606 (regOne!33607 r!7292))))) b!6720291))

(declare-fun b!6720295 () Bool)

(declare-fun e!4060835 () Bool)

(declare-fun tp!1841707 () Bool)

(declare-fun tp!1841709 () Bool)

(assert (=> b!6720295 (= e!4060835 (and tp!1841707 tp!1841709))))

(declare-fun b!6720294 () Bool)

(declare-fun tp!1841708 () Bool)

(assert (=> b!6720294 (= e!4060835 tp!1841708)))

(declare-fun b!6720293 () Bool)

(declare-fun tp!1841711 () Bool)

(declare-fun tp!1841710 () Bool)

(assert (=> b!6720293 (= e!4060835 (and tp!1841711 tp!1841710))))

(assert (=> b!6719556 (= tp!1841580 e!4060835)))

(declare-fun b!6720292 () Bool)

(assert (=> b!6720292 (= e!4060835 tp_is_empty!42347)))

(assert (= (and b!6719556 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720292))

(assert (= (and b!6719556 ((_ is Concat!25392) (reg!16876 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720293))

(assert (= (and b!6719556 ((_ is Star!16547) (reg!16876 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720294))

(assert (= (and b!6719556 ((_ is Union!16547) (reg!16876 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720295))

(declare-fun b!6720299 () Bool)

(declare-fun e!4060836 () Bool)

(declare-fun tp!1841712 () Bool)

(declare-fun tp!1841714 () Bool)

(assert (=> b!6720299 (= e!4060836 (and tp!1841712 tp!1841714))))

(declare-fun b!6720298 () Bool)

(declare-fun tp!1841713 () Bool)

(assert (=> b!6720298 (= e!4060836 tp!1841713)))

(declare-fun b!6720297 () Bool)

(declare-fun tp!1841716 () Bool)

(declare-fun tp!1841715 () Bool)

(assert (=> b!6720297 (= e!4060836 (and tp!1841716 tp!1841715))))

(assert (=> b!6719605 (= tp!1841640 e!4060836)))

(declare-fun b!6720296 () Bool)

(assert (=> b!6720296 (= e!4060836 tp_is_empty!42347)))

(assert (= (and b!6719605 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33607 (regOne!33607 r!7292))))) b!6720296))

(assert (= (and b!6719605 ((_ is Concat!25392) (regOne!33607 (regTwo!33607 (regOne!33607 r!7292))))) b!6720297))

(assert (= (and b!6719605 ((_ is Star!16547) (regOne!33607 (regTwo!33607 (regOne!33607 r!7292))))) b!6720298))

(assert (= (and b!6719605 ((_ is Union!16547) (regOne!33607 (regTwo!33607 (regOne!33607 r!7292))))) b!6720299))

(declare-fun b!6720303 () Bool)

(declare-fun e!4060837 () Bool)

(declare-fun tp!1841717 () Bool)

(declare-fun tp!1841719 () Bool)

(assert (=> b!6720303 (= e!4060837 (and tp!1841717 tp!1841719))))

(declare-fun b!6720302 () Bool)

(declare-fun tp!1841718 () Bool)

(assert (=> b!6720302 (= e!4060837 tp!1841718)))

(declare-fun b!6720301 () Bool)

(declare-fun tp!1841721 () Bool)

(declare-fun tp!1841720 () Bool)

(assert (=> b!6720301 (= e!4060837 (and tp!1841721 tp!1841720))))

(assert (=> b!6719605 (= tp!1841642 e!4060837)))

(declare-fun b!6720300 () Bool)

(assert (=> b!6720300 (= e!4060837 tp_is_empty!42347)))

(assert (= (and b!6719605 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33607 (regOne!33607 r!7292))))) b!6720300))

(assert (= (and b!6719605 ((_ is Concat!25392) (regTwo!33607 (regTwo!33607 (regOne!33607 r!7292))))) b!6720301))

(assert (= (and b!6719605 ((_ is Star!16547) (regTwo!33607 (regTwo!33607 (regOne!33607 r!7292))))) b!6720302))

(assert (= (and b!6719605 ((_ is Union!16547) (regTwo!33607 (regTwo!33607 (regOne!33607 r!7292))))) b!6720303))

(declare-fun b!6720307 () Bool)

(declare-fun e!4060838 () Bool)

(declare-fun tp!1841722 () Bool)

(declare-fun tp!1841724 () Bool)

(assert (=> b!6720307 (= e!4060838 (and tp!1841722 tp!1841724))))

(declare-fun b!6720306 () Bool)

(declare-fun tp!1841723 () Bool)

(assert (=> b!6720306 (= e!4060838 tp!1841723)))

(declare-fun b!6720305 () Bool)

(declare-fun tp!1841726 () Bool)

(declare-fun tp!1841725 () Bool)

(assert (=> b!6720305 (= e!4060838 (and tp!1841726 tp!1841725))))

(assert (=> b!6719542 (= tp!1841566 e!4060838)))

(declare-fun b!6720304 () Bool)

(assert (=> b!6720304 (= e!4060838 tp_is_empty!42347)))

(assert (= (and b!6719542 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33606 (regTwo!33606 r!7292))))) b!6720304))

(assert (= (and b!6719542 ((_ is Concat!25392) (regOne!33606 (regOne!33606 (regTwo!33606 r!7292))))) b!6720305))

(assert (= (and b!6719542 ((_ is Star!16547) (regOne!33606 (regOne!33606 (regTwo!33606 r!7292))))) b!6720306))

(assert (= (and b!6719542 ((_ is Union!16547) (regOne!33606 (regOne!33606 (regTwo!33606 r!7292))))) b!6720307))

(declare-fun b!6720311 () Bool)

(declare-fun e!4060839 () Bool)

(declare-fun tp!1841727 () Bool)

(declare-fun tp!1841729 () Bool)

(assert (=> b!6720311 (= e!4060839 (and tp!1841727 tp!1841729))))

(declare-fun b!6720310 () Bool)

(declare-fun tp!1841728 () Bool)

(assert (=> b!6720310 (= e!4060839 tp!1841728)))

(declare-fun b!6720309 () Bool)

(declare-fun tp!1841731 () Bool)

(declare-fun tp!1841730 () Bool)

(assert (=> b!6720309 (= e!4060839 (and tp!1841731 tp!1841730))))

(assert (=> b!6719542 (= tp!1841565 e!4060839)))

(declare-fun b!6720308 () Bool)

(assert (=> b!6720308 (= e!4060839 tp_is_empty!42347)))

(assert (= (and b!6719542 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33606 (regTwo!33606 r!7292))))) b!6720308))

(assert (= (and b!6719542 ((_ is Concat!25392) (regTwo!33606 (regOne!33606 (regTwo!33606 r!7292))))) b!6720309))

(assert (= (and b!6719542 ((_ is Star!16547) (regTwo!33606 (regOne!33606 (regTwo!33606 r!7292))))) b!6720310))

(assert (= (and b!6719542 ((_ is Union!16547) (regTwo!33606 (regOne!33606 (regTwo!33606 r!7292))))) b!6720311))

(declare-fun b!6720315 () Bool)

(declare-fun e!4060840 () Bool)

(declare-fun tp!1841732 () Bool)

(declare-fun tp!1841734 () Bool)

(assert (=> b!6720315 (= e!4060840 (and tp!1841732 tp!1841734))))

(declare-fun b!6720314 () Bool)

(declare-fun tp!1841733 () Bool)

(assert (=> b!6720314 (= e!4060840 tp!1841733)))

(declare-fun b!6720313 () Bool)

(declare-fun tp!1841736 () Bool)

(declare-fun tp!1841735 () Bool)

(assert (=> b!6720313 (= e!4060840 (and tp!1841736 tp!1841735))))

(assert (=> b!6719603 (= tp!1841644 e!4060840)))

(declare-fun b!6720312 () Bool)

(assert (=> b!6720312 (= e!4060840 tp_is_empty!42347)))

(assert (= (and b!6719603 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))))) b!6720312))

(assert (= (and b!6719603 ((_ is Concat!25392) (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))))) b!6720313))

(assert (= (and b!6719603 ((_ is Star!16547) (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))))) b!6720314))

(assert (= (and b!6719603 ((_ is Union!16547) (regOne!33606 (regTwo!33607 (regOne!33607 r!7292))))) b!6720315))

(declare-fun b!6720319 () Bool)

(declare-fun e!4060841 () Bool)

(declare-fun tp!1841737 () Bool)

(declare-fun tp!1841739 () Bool)

(assert (=> b!6720319 (= e!4060841 (and tp!1841737 tp!1841739))))

(declare-fun b!6720318 () Bool)

(declare-fun tp!1841738 () Bool)

(assert (=> b!6720318 (= e!4060841 tp!1841738)))

(declare-fun b!6720317 () Bool)

(declare-fun tp!1841741 () Bool)

(declare-fun tp!1841740 () Bool)

(assert (=> b!6720317 (= e!4060841 (and tp!1841741 tp!1841740))))

(assert (=> b!6719603 (= tp!1841643 e!4060841)))

(declare-fun b!6720316 () Bool)

(assert (=> b!6720316 (= e!4060841 tp_is_empty!42347)))

(assert (= (and b!6719603 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))))) b!6720316))

(assert (= (and b!6719603 ((_ is Concat!25392) (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))))) b!6720317))

(assert (= (and b!6719603 ((_ is Star!16547) (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))))) b!6720318))

(assert (= (and b!6719603 ((_ is Union!16547) (regTwo!33606 (regTwo!33607 (regOne!33607 r!7292))))) b!6720319))

(declare-fun b!6720323 () Bool)

(declare-fun e!4060842 () Bool)

(declare-fun tp!1841742 () Bool)

(declare-fun tp!1841744 () Bool)

(assert (=> b!6720323 (= e!4060842 (and tp!1841742 tp!1841744))))

(declare-fun b!6720322 () Bool)

(declare-fun tp!1841743 () Bool)

(assert (=> b!6720322 (= e!4060842 tp!1841743)))

(declare-fun b!6720321 () Bool)

(declare-fun tp!1841746 () Bool)

(declare-fun tp!1841745 () Bool)

(assert (=> b!6720321 (= e!4060842 (and tp!1841746 tp!1841745))))

(assert (=> b!6719518 (= tp!1841532 e!4060842)))

(declare-fun b!6720320 () Bool)

(assert (=> b!6720320 (= e!4060842 tp_is_empty!42347)))

(assert (= (and b!6719518 ((_ is ElementMatch!16547) (h!72264 (exprs!6431 (h!72265 (t!379618 zl!343)))))) b!6720320))

(assert (= (and b!6719518 ((_ is Concat!25392) (h!72264 (exprs!6431 (h!72265 (t!379618 zl!343)))))) b!6720321))

(assert (= (and b!6719518 ((_ is Star!16547) (h!72264 (exprs!6431 (h!72265 (t!379618 zl!343)))))) b!6720322))

(assert (= (and b!6719518 ((_ is Union!16547) (h!72264 (exprs!6431 (h!72265 (t!379618 zl!343)))))) b!6720323))

(declare-fun b!6720324 () Bool)

(declare-fun e!4060843 () Bool)

(declare-fun tp!1841747 () Bool)

(declare-fun tp!1841748 () Bool)

(assert (=> b!6720324 (= e!4060843 (and tp!1841747 tp!1841748))))

(assert (=> b!6719518 (= tp!1841533 e!4060843)))

(assert (= (and b!6719518 ((_ is Cons!65816) (t!379617 (exprs!6431 (h!72265 (t!379618 zl!343)))))) b!6720324))

(declare-fun b!6720328 () Bool)

(declare-fun e!4060844 () Bool)

(declare-fun tp!1841749 () Bool)

(declare-fun tp!1841751 () Bool)

(assert (=> b!6720328 (= e!4060844 (and tp!1841749 tp!1841751))))

(declare-fun b!6720327 () Bool)

(declare-fun tp!1841750 () Bool)

(assert (=> b!6720327 (= e!4060844 tp!1841750)))

(declare-fun b!6720326 () Bool)

(declare-fun tp!1841753 () Bool)

(declare-fun tp!1841752 () Bool)

(assert (=> b!6720326 (= e!4060844 (and tp!1841753 tp!1841752))))

(assert (=> b!6719563 (= tp!1841591 e!4060844)))

(declare-fun b!6720325 () Bool)

(assert (=> b!6720325 (= e!4060844 tp_is_empty!42347)))

(assert (= (and b!6719563 ((_ is ElementMatch!16547) (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343)))))) b!6720325))

(assert (= (and b!6719563 ((_ is Concat!25392) (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343)))))) b!6720326))

(assert (= (and b!6719563 ((_ is Star!16547) (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343)))))) b!6720327))

(assert (= (and b!6719563 ((_ is Union!16547) (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343)))))) b!6720328))

(declare-fun b!6720329 () Bool)

(declare-fun e!4060845 () Bool)

(declare-fun tp!1841754 () Bool)

(declare-fun tp!1841755 () Bool)

(assert (=> b!6720329 (= e!4060845 (and tp!1841754 tp!1841755))))

(assert (=> b!6719563 (= tp!1841592 e!4060845)))

(assert (= (and b!6719563 ((_ is Cons!65816) (t!379617 (t!379617 (exprs!6431 (h!72265 zl!343)))))) b!6720329))

(declare-fun b!6720333 () Bool)

(declare-fun e!4060846 () Bool)

(declare-fun tp!1841756 () Bool)

(declare-fun tp!1841758 () Bool)

(assert (=> b!6720333 (= e!4060846 (and tp!1841756 tp!1841758))))

(declare-fun b!6720332 () Bool)

(declare-fun tp!1841757 () Bool)

(assert (=> b!6720332 (= e!4060846 tp!1841757)))

(declare-fun b!6720331 () Bool)

(declare-fun tp!1841760 () Bool)

(declare-fun tp!1841759 () Bool)

(assert (=> b!6720331 (= e!4060846 (and tp!1841760 tp!1841759))))

(assert (=> b!6719612 (= tp!1841651 e!4060846)))

(declare-fun b!6720330 () Bool)

(assert (=> b!6720330 (= e!4060846 tp_is_empty!42347)))

(assert (= (and b!6719612 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33606 (regOne!33606 r!7292))))) b!6720330))

(assert (= (and b!6719612 ((_ is Concat!25392) (reg!16876 (regTwo!33606 (regOne!33606 r!7292))))) b!6720331))

(assert (= (and b!6719612 ((_ is Star!16547) (reg!16876 (regTwo!33606 (regOne!33606 r!7292))))) b!6720332))

(assert (= (and b!6719612 ((_ is Union!16547) (reg!16876 (regTwo!33606 (regOne!33606 r!7292))))) b!6720333))

(declare-fun b!6720337 () Bool)

(declare-fun e!4060847 () Bool)

(declare-fun tp!1841761 () Bool)

(declare-fun tp!1841763 () Bool)

(assert (=> b!6720337 (= e!4060847 (and tp!1841761 tp!1841763))))

(declare-fun b!6720336 () Bool)

(declare-fun tp!1841762 () Bool)

(assert (=> b!6720336 (= e!4060847 tp!1841762)))

(declare-fun b!6720335 () Bool)

(declare-fun tp!1841765 () Bool)

(declare-fun tp!1841764 () Bool)

(assert (=> b!6720335 (= e!4060847 (and tp!1841765 tp!1841764))))

(assert (=> b!6719621 (= tp!1841660 e!4060847)))

(declare-fun b!6720334 () Bool)

(assert (=> b!6720334 (= e!4060847 tp_is_empty!42347)))

(assert (= (and b!6719621 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33607 (regOne!33606 r!7292))))) b!6720334))

(assert (= (and b!6719621 ((_ is Concat!25392) (regOne!33607 (regOne!33607 (regOne!33606 r!7292))))) b!6720335))

(assert (= (and b!6719621 ((_ is Star!16547) (regOne!33607 (regOne!33607 (regOne!33606 r!7292))))) b!6720336))

(assert (= (and b!6719621 ((_ is Union!16547) (regOne!33607 (regOne!33607 (regOne!33606 r!7292))))) b!6720337))

(declare-fun b!6720341 () Bool)

(declare-fun e!4060848 () Bool)

(declare-fun tp!1841766 () Bool)

(declare-fun tp!1841768 () Bool)

(assert (=> b!6720341 (= e!4060848 (and tp!1841766 tp!1841768))))

(declare-fun b!6720340 () Bool)

(declare-fun tp!1841767 () Bool)

(assert (=> b!6720340 (= e!4060848 tp!1841767)))

(declare-fun b!6720339 () Bool)

(declare-fun tp!1841770 () Bool)

(declare-fun tp!1841769 () Bool)

(assert (=> b!6720339 (= e!4060848 (and tp!1841770 tp!1841769))))

(assert (=> b!6719621 (= tp!1841662 e!4060848)))

(declare-fun b!6720338 () Bool)

(assert (=> b!6720338 (= e!4060848 tp_is_empty!42347)))

(assert (= (and b!6719621 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33607 (regOne!33606 r!7292))))) b!6720338))

(assert (= (and b!6719621 ((_ is Concat!25392) (regTwo!33607 (regOne!33607 (regOne!33606 r!7292))))) b!6720339))

(assert (= (and b!6719621 ((_ is Star!16547) (regTwo!33607 (regOne!33607 (regOne!33606 r!7292))))) b!6720340))

(assert (= (and b!6719621 ((_ is Union!16547) (regTwo!33607 (regOne!33607 (regOne!33606 r!7292))))) b!6720341))

(declare-fun b!6720345 () Bool)

(declare-fun e!4060849 () Bool)

(declare-fun tp!1841771 () Bool)

(declare-fun tp!1841773 () Bool)

(assert (=> b!6720345 (= e!4060849 (and tp!1841771 tp!1841773))))

(declare-fun b!6720344 () Bool)

(declare-fun tp!1841772 () Bool)

(assert (=> b!6720344 (= e!4060849 tp!1841772)))

(declare-fun b!6720343 () Bool)

(declare-fun tp!1841775 () Bool)

(declare-fun tp!1841774 () Bool)

(assert (=> b!6720343 (= e!4060849 (and tp!1841775 tp!1841774))))

(assert (=> b!6719534 (= tp!1841551 e!4060849)))

(declare-fun b!6720342 () Bool)

(assert (=> b!6720342 (= e!4060849 tp_is_empty!42347)))

(assert (= (and b!6719534 ((_ is ElementMatch!16547) (reg!16876 (h!72264 (exprs!6431 setElem!45799))))) b!6720342))

(assert (= (and b!6719534 ((_ is Concat!25392) (reg!16876 (h!72264 (exprs!6431 setElem!45799))))) b!6720343))

(assert (= (and b!6719534 ((_ is Star!16547) (reg!16876 (h!72264 (exprs!6431 setElem!45799))))) b!6720344))

(assert (= (and b!6719534 ((_ is Union!16547) (reg!16876 (h!72264 (exprs!6431 setElem!45799))))) b!6720345))

(declare-fun b!6720349 () Bool)

(declare-fun e!4060850 () Bool)

(declare-fun tp!1841776 () Bool)

(declare-fun tp!1841778 () Bool)

(assert (=> b!6720349 (= e!4060850 (and tp!1841776 tp!1841778))))

(declare-fun b!6720348 () Bool)

(declare-fun tp!1841777 () Bool)

(assert (=> b!6720348 (= e!4060850 tp!1841777)))

(declare-fun b!6720347 () Bool)

(declare-fun tp!1841780 () Bool)

(declare-fun tp!1841779 () Bool)

(assert (=> b!6720347 (= e!4060850 (and tp!1841780 tp!1841779))))

(assert (=> b!6719520 (= tp!1841538 e!4060850)))

(declare-fun b!6720346 () Bool)

(assert (=> b!6720346 (= e!4060850 tp_is_empty!42347)))

(assert (= (and b!6719520 ((_ is ElementMatch!16547) (regOne!33606 (reg!16876 (regTwo!33607 r!7292))))) b!6720346))

(assert (= (and b!6719520 ((_ is Concat!25392) (regOne!33606 (reg!16876 (regTwo!33607 r!7292))))) b!6720347))

(assert (= (and b!6719520 ((_ is Star!16547) (regOne!33606 (reg!16876 (regTwo!33607 r!7292))))) b!6720348))

(assert (= (and b!6719520 ((_ is Union!16547) (regOne!33606 (reg!16876 (regTwo!33607 r!7292))))) b!6720349))

(declare-fun b!6720353 () Bool)

(declare-fun e!4060851 () Bool)

(declare-fun tp!1841781 () Bool)

(declare-fun tp!1841783 () Bool)

(assert (=> b!6720353 (= e!4060851 (and tp!1841781 tp!1841783))))

(declare-fun b!6720352 () Bool)

(declare-fun tp!1841782 () Bool)

(assert (=> b!6720352 (= e!4060851 tp!1841782)))

(declare-fun b!6720351 () Bool)

(declare-fun tp!1841785 () Bool)

(declare-fun tp!1841784 () Bool)

(assert (=> b!6720351 (= e!4060851 (and tp!1841785 tp!1841784))))

(assert (=> b!6719520 (= tp!1841537 e!4060851)))

(declare-fun b!6720350 () Bool)

(assert (=> b!6720350 (= e!4060851 tp_is_empty!42347)))

(assert (= (and b!6719520 ((_ is ElementMatch!16547) (regTwo!33606 (reg!16876 (regTwo!33607 r!7292))))) b!6720350))

(assert (= (and b!6719520 ((_ is Concat!25392) (regTwo!33606 (reg!16876 (regTwo!33607 r!7292))))) b!6720351))

(assert (= (and b!6719520 ((_ is Star!16547) (regTwo!33606 (reg!16876 (regTwo!33607 r!7292))))) b!6720352))

(assert (= (and b!6719520 ((_ is Union!16547) (regTwo!33606 (reg!16876 (regTwo!33607 r!7292))))) b!6720353))

(declare-fun b!6720357 () Bool)

(declare-fun e!4060852 () Bool)

(declare-fun tp!1841786 () Bool)

(declare-fun tp!1841788 () Bool)

(assert (=> b!6720357 (= e!4060852 (and tp!1841786 tp!1841788))))

(declare-fun b!6720356 () Bool)

(declare-fun tp!1841787 () Bool)

(assert (=> b!6720356 (= e!4060852 tp!1841787)))

(declare-fun b!6720355 () Bool)

(declare-fun tp!1841790 () Bool)

(declare-fun tp!1841789 () Bool)

(assert (=> b!6720355 (= e!4060852 (and tp!1841790 tp!1841789))))

(assert (=> b!6719529 (= tp!1841545 e!4060852)))

(declare-fun b!6720354 () Bool)

(assert (=> b!6720354 (= e!4060852 tp_is_empty!42347)))

(assert (= (and b!6719529 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720354))

(assert (= (and b!6719529 ((_ is Concat!25392) (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720355))

(assert (= (and b!6719529 ((_ is Star!16547) (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720356))

(assert (= (and b!6719529 ((_ is Union!16547) (reg!16876 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720357))

(declare-fun b!6720361 () Bool)

(declare-fun e!4060853 () Bool)

(declare-fun tp!1841791 () Bool)

(declare-fun tp!1841793 () Bool)

(assert (=> b!6720361 (= e!4060853 (and tp!1841791 tp!1841793))))

(declare-fun b!6720360 () Bool)

(declare-fun tp!1841792 () Bool)

(assert (=> b!6720360 (= e!4060853 tp!1841792)))

(declare-fun b!6720359 () Bool)

(declare-fun tp!1841795 () Bool)

(declare-fun tp!1841794 () Bool)

(assert (=> b!6720359 (= e!4060853 (and tp!1841795 tp!1841794))))

(assert (=> b!6719623 (= tp!1841669 e!4060853)))

(declare-fun b!6720358 () Bool)

(assert (=> b!6720358 (= e!4060853 tp_is_empty!42347)))

(assert (= (and b!6719623 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33607 (regOne!33606 r!7292))))) b!6720358))

(assert (= (and b!6719623 ((_ is Concat!25392) (regOne!33606 (regTwo!33607 (regOne!33606 r!7292))))) b!6720359))

(assert (= (and b!6719623 ((_ is Star!16547) (regOne!33606 (regTwo!33607 (regOne!33606 r!7292))))) b!6720360))

(assert (= (and b!6719623 ((_ is Union!16547) (regOne!33606 (regTwo!33607 (regOne!33606 r!7292))))) b!6720361))

(declare-fun b!6720365 () Bool)

(declare-fun e!4060854 () Bool)

(declare-fun tp!1841796 () Bool)

(declare-fun tp!1841798 () Bool)

(assert (=> b!6720365 (= e!4060854 (and tp!1841796 tp!1841798))))

(declare-fun b!6720364 () Bool)

(declare-fun tp!1841797 () Bool)

(assert (=> b!6720364 (= e!4060854 tp!1841797)))

(declare-fun b!6720363 () Bool)

(declare-fun tp!1841800 () Bool)

(declare-fun tp!1841799 () Bool)

(assert (=> b!6720363 (= e!4060854 (and tp!1841800 tp!1841799))))

(assert (=> b!6719623 (= tp!1841668 e!4060854)))

(declare-fun b!6720362 () Bool)

(assert (=> b!6720362 (= e!4060854 tp_is_empty!42347)))

(assert (= (and b!6719623 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33607 (regOne!33606 r!7292))))) b!6720362))

(assert (= (and b!6719623 ((_ is Concat!25392) (regTwo!33606 (regTwo!33607 (regOne!33606 r!7292))))) b!6720363))

(assert (= (and b!6719623 ((_ is Star!16547) (regTwo!33606 (regTwo!33607 (regOne!33606 r!7292))))) b!6720364))

(assert (= (and b!6719623 ((_ is Union!16547) (regTwo!33606 (regTwo!33607 (regOne!33606 r!7292))))) b!6720365))

(declare-fun b!6720369 () Bool)

(declare-fun e!4060855 () Bool)

(declare-fun tp!1841801 () Bool)

(declare-fun tp!1841803 () Bool)

(assert (=> b!6720369 (= e!4060855 (and tp!1841801 tp!1841803))))

(declare-fun b!6720368 () Bool)

(declare-fun tp!1841802 () Bool)

(assert (=> b!6720368 (= e!4060855 tp!1841802)))

(declare-fun b!6720367 () Bool)

(declare-fun tp!1841805 () Bool)

(declare-fun tp!1841804 () Bool)

(assert (=> b!6720367 (= e!4060855 (and tp!1841805 tp!1841804))))

(assert (=> b!6719512 (= tp!1841523 e!4060855)))

(declare-fun b!6720366 () Bool)

(assert (=> b!6720366 (= e!4060855 tp_is_empty!42347)))

(assert (= (and b!6719512 ((_ is ElementMatch!16547) (reg!16876 (regOne!33606 (regTwo!33607 r!7292))))) b!6720366))

(assert (= (and b!6719512 ((_ is Concat!25392) (reg!16876 (regOne!33606 (regTwo!33607 r!7292))))) b!6720367))

(assert (= (and b!6719512 ((_ is Star!16547) (reg!16876 (regOne!33606 (regTwo!33607 r!7292))))) b!6720368))

(assert (= (and b!6719512 ((_ is Union!16547) (reg!16876 (regOne!33606 (regTwo!33607 r!7292))))) b!6720369))

(declare-fun b!6720370 () Bool)

(declare-fun e!4060856 () Bool)

(declare-fun tp!1841806 () Bool)

(declare-fun tp!1841807 () Bool)

(assert (=> b!6720370 (= e!4060856 (and tp!1841806 tp!1841807))))

(assert (=> b!6719565 (= tp!1841593 e!4060856)))

(assert (= (and b!6719565 ((_ is Cons!65816) (exprs!6431 (h!72265 (t!379618 (t!379618 zl!343)))))) b!6720370))

(declare-fun b!6720374 () Bool)

(declare-fun e!4060857 () Bool)

(declare-fun tp!1841808 () Bool)

(declare-fun tp!1841810 () Bool)

(assert (=> b!6720374 (= e!4060857 (and tp!1841808 tp!1841810))))

(declare-fun b!6720373 () Bool)

(declare-fun tp!1841809 () Bool)

(assert (=> b!6720373 (= e!4060857 tp!1841809)))

(declare-fun b!6720372 () Bool)

(declare-fun tp!1841812 () Bool)

(declare-fun tp!1841811 () Bool)

(assert (=> b!6720372 (= e!4060857 (and tp!1841812 tp!1841811))))

(assert (=> b!6719572 (= tp!1841601 e!4060857)))

(declare-fun b!6720371 () Bool)

(assert (=> b!6720371 (= e!4060857 tp_is_empty!42347)))

(assert (= (and b!6719572 ((_ is ElementMatch!16547) (reg!16876 (regOne!33606 (reg!16876 r!7292))))) b!6720371))

(assert (= (and b!6719572 ((_ is Concat!25392) (reg!16876 (regOne!33606 (reg!16876 r!7292))))) b!6720372))

(assert (= (and b!6719572 ((_ is Star!16547) (reg!16876 (regOne!33606 (reg!16876 r!7292))))) b!6720373))

(assert (= (and b!6719572 ((_ is Union!16547) (reg!16876 (regOne!33606 (reg!16876 r!7292))))) b!6720374))

(declare-fun b!6720378 () Bool)

(declare-fun e!4060858 () Bool)

(declare-fun tp!1841813 () Bool)

(declare-fun tp!1841815 () Bool)

(assert (=> b!6720378 (= e!4060858 (and tp!1841813 tp!1841815))))

(declare-fun b!6720377 () Bool)

(declare-fun tp!1841814 () Bool)

(assert (=> b!6720377 (= e!4060858 tp!1841814)))

(declare-fun b!6720376 () Bool)

(declare-fun tp!1841817 () Bool)

(declare-fun tp!1841816 () Bool)

(assert (=> b!6720376 (= e!4060858 (and tp!1841817 tp!1841816))))

(assert (=> b!6719581 (= tp!1841610 e!4060858)))

(declare-fun b!6720375 () Bool)

(assert (=> b!6720375 (= e!4060858 tp_is_empty!42347)))

(assert (= (and b!6719581 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33607 (reg!16876 r!7292))))) b!6720375))

(assert (= (and b!6719581 ((_ is Concat!25392) (regOne!33607 (regOne!33607 (reg!16876 r!7292))))) b!6720376))

(assert (= (and b!6719581 ((_ is Star!16547) (regOne!33607 (regOne!33607 (reg!16876 r!7292))))) b!6720377))

(assert (= (and b!6719581 ((_ is Union!16547) (regOne!33607 (regOne!33607 (reg!16876 r!7292))))) b!6720378))

(declare-fun b!6720382 () Bool)

(declare-fun e!4060859 () Bool)

(declare-fun tp!1841818 () Bool)

(declare-fun tp!1841820 () Bool)

(assert (=> b!6720382 (= e!4060859 (and tp!1841818 tp!1841820))))

(declare-fun b!6720381 () Bool)

(declare-fun tp!1841819 () Bool)

(assert (=> b!6720381 (= e!4060859 tp!1841819)))

(declare-fun b!6720380 () Bool)

(declare-fun tp!1841822 () Bool)

(declare-fun tp!1841821 () Bool)

(assert (=> b!6720380 (= e!4060859 (and tp!1841822 tp!1841821))))

(assert (=> b!6719581 (= tp!1841612 e!4060859)))

(declare-fun b!6720379 () Bool)

(assert (=> b!6720379 (= e!4060859 tp_is_empty!42347)))

(assert (= (and b!6719581 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33607 (reg!16876 r!7292))))) b!6720379))

(assert (= (and b!6719581 ((_ is Concat!25392) (regTwo!33607 (regOne!33607 (reg!16876 r!7292))))) b!6720380))

(assert (= (and b!6719581 ((_ is Star!16547) (regTwo!33607 (regOne!33607 (reg!16876 r!7292))))) b!6720381))

(assert (= (and b!6719581 ((_ is Union!16547) (regTwo!33607 (regOne!33607 (reg!16876 r!7292))))) b!6720382))

(declare-fun b!6720386 () Bool)

(declare-fun e!4060860 () Bool)

(declare-fun tp!1841823 () Bool)

(declare-fun tp!1841825 () Bool)

(assert (=> b!6720386 (= e!4060860 (and tp!1841823 tp!1841825))))

(declare-fun b!6720385 () Bool)

(declare-fun tp!1841824 () Bool)

(assert (=> b!6720385 (= e!4060860 tp!1841824)))

(declare-fun b!6720384 () Bool)

(declare-fun tp!1841827 () Bool)

(declare-fun tp!1841826 () Bool)

(assert (=> b!6720384 (= e!4060860 (and tp!1841827 tp!1841826))))

(assert (=> b!6719589 (= tp!1841620 e!4060860)))

(declare-fun b!6720383 () Bool)

(assert (=> b!6720383 (= e!4060860 tp_is_empty!42347)))

(assert (= (and b!6719589 ((_ is ElementMatch!16547) (regOne!33607 (reg!16876 (regOne!33607 r!7292))))) b!6720383))

(assert (= (and b!6719589 ((_ is Concat!25392) (regOne!33607 (reg!16876 (regOne!33607 r!7292))))) b!6720384))

(assert (= (and b!6719589 ((_ is Star!16547) (regOne!33607 (reg!16876 (regOne!33607 r!7292))))) b!6720385))

(assert (= (and b!6719589 ((_ is Union!16547) (regOne!33607 (reg!16876 (regOne!33607 r!7292))))) b!6720386))

(declare-fun b!6720390 () Bool)

(declare-fun e!4060861 () Bool)

(declare-fun tp!1841828 () Bool)

(declare-fun tp!1841830 () Bool)

(assert (=> b!6720390 (= e!4060861 (and tp!1841828 tp!1841830))))

(declare-fun b!6720389 () Bool)

(declare-fun tp!1841829 () Bool)

(assert (=> b!6720389 (= e!4060861 tp!1841829)))

(declare-fun b!6720388 () Bool)

(declare-fun tp!1841832 () Bool)

(declare-fun tp!1841831 () Bool)

(assert (=> b!6720388 (= e!4060861 (and tp!1841832 tp!1841831))))

(assert (=> b!6719589 (= tp!1841622 e!4060861)))

(declare-fun b!6720387 () Bool)

(assert (=> b!6720387 (= e!4060861 tp_is_empty!42347)))

(assert (= (and b!6719589 ((_ is ElementMatch!16547) (regTwo!33607 (reg!16876 (regOne!33607 r!7292))))) b!6720387))

(assert (= (and b!6719589 ((_ is Concat!25392) (regTwo!33607 (reg!16876 (regOne!33607 r!7292))))) b!6720388))

(assert (= (and b!6719589 ((_ is Star!16547) (regTwo!33607 (reg!16876 (regOne!33607 r!7292))))) b!6720389))

(assert (= (and b!6719589 ((_ is Union!16547) (regTwo!33607 (reg!16876 (regOne!33607 r!7292))))) b!6720390))

(declare-fun b!6720394 () Bool)

(declare-fun e!4060862 () Bool)

(declare-fun tp!1841833 () Bool)

(declare-fun tp!1841835 () Bool)

(assert (=> b!6720394 (= e!4060862 (and tp!1841833 tp!1841835))))

(declare-fun b!6720393 () Bool)

(declare-fun tp!1841834 () Bool)

(assert (=> b!6720393 (= e!4060862 tp!1841834)))

(declare-fun b!6720392 () Bool)

(declare-fun tp!1841837 () Bool)

(declare-fun tp!1841836 () Bool)

(assert (=> b!6720392 (= e!4060862 (and tp!1841837 tp!1841836))))

(assert (=> b!6719539 (= tp!1841558 e!4060862)))

(declare-fun b!6720391 () Bool)

(assert (=> b!6720391 (= e!4060862 tp_is_empty!42347)))

(assert (= (and b!6719539 ((_ is ElementMatch!16547) (reg!16876 (reg!16876 (regTwo!33606 r!7292))))) b!6720391))

(assert (= (and b!6719539 ((_ is Concat!25392) (reg!16876 (reg!16876 (regTwo!33606 r!7292))))) b!6720392))

(assert (= (and b!6719539 ((_ is Star!16547) (reg!16876 (reg!16876 (regTwo!33606 r!7292))))) b!6720393))

(assert (= (and b!6719539 ((_ is Union!16547) (reg!16876 (reg!16876 (regTwo!33606 r!7292))))) b!6720394))

(declare-fun b!6720398 () Bool)

(declare-fun e!4060863 () Bool)

(declare-fun tp!1841838 () Bool)

(declare-fun tp!1841840 () Bool)

(assert (=> b!6720398 (= e!4060863 (and tp!1841838 tp!1841840))))

(declare-fun b!6720397 () Bool)

(declare-fun tp!1841839 () Bool)

(assert (=> b!6720397 (= e!4060863 tp!1841839)))

(declare-fun b!6720396 () Bool)

(declare-fun tp!1841842 () Bool)

(declare-fun tp!1841841 () Bool)

(assert (=> b!6720396 (= e!4060863 (and tp!1841842 tp!1841841))))

(assert (=> b!6719583 (= tp!1841619 e!4060863)))

(declare-fun b!6720395 () Bool)

(assert (=> b!6720395 (= e!4060863 tp_is_empty!42347)))

(assert (= (and b!6719583 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33607 (reg!16876 r!7292))))) b!6720395))

(assert (= (and b!6719583 ((_ is Concat!25392) (regOne!33606 (regTwo!33607 (reg!16876 r!7292))))) b!6720396))

(assert (= (and b!6719583 ((_ is Star!16547) (regOne!33606 (regTwo!33607 (reg!16876 r!7292))))) b!6720397))

(assert (= (and b!6719583 ((_ is Union!16547) (regOne!33606 (regTwo!33607 (reg!16876 r!7292))))) b!6720398))

(declare-fun b!6720402 () Bool)

(declare-fun e!4060864 () Bool)

(declare-fun tp!1841843 () Bool)

(declare-fun tp!1841845 () Bool)

(assert (=> b!6720402 (= e!4060864 (and tp!1841843 tp!1841845))))

(declare-fun b!6720401 () Bool)

(declare-fun tp!1841844 () Bool)

(assert (=> b!6720401 (= e!4060864 tp!1841844)))

(declare-fun b!6720400 () Bool)

(declare-fun tp!1841847 () Bool)

(declare-fun tp!1841846 () Bool)

(assert (=> b!6720400 (= e!4060864 (and tp!1841847 tp!1841846))))

(assert (=> b!6719583 (= tp!1841618 e!4060864)))

(declare-fun b!6720399 () Bool)

(assert (=> b!6720399 (= e!4060864 tp_is_empty!42347)))

(assert (= (and b!6719583 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33607 (reg!16876 r!7292))))) b!6720399))

(assert (= (and b!6719583 ((_ is Concat!25392) (regTwo!33606 (regTwo!33607 (reg!16876 r!7292))))) b!6720400))

(assert (= (and b!6719583 ((_ is Star!16547) (regTwo!33606 (regTwo!33607 (reg!16876 r!7292))))) b!6720401))

(assert (= (and b!6719583 ((_ is Union!16547) (regTwo!33606 (regTwo!33607 (reg!16876 r!7292))))) b!6720402))

(declare-fun b!6720406 () Bool)

(declare-fun e!4060865 () Bool)

(declare-fun tp!1841848 () Bool)

(declare-fun tp!1841850 () Bool)

(assert (=> b!6720406 (= e!4060865 (and tp!1841848 tp!1841850))))

(declare-fun b!6720405 () Bool)

(declare-fun tp!1841849 () Bool)

(assert (=> b!6720405 (= e!4060865 tp!1841849)))

(declare-fun b!6720404 () Bool)

(declare-fun tp!1841852 () Bool)

(declare-fun tp!1841851 () Bool)

(assert (=> b!6720404 (= e!4060865 (and tp!1841852 tp!1841851))))

(assert (=> b!6719548 (= tp!1841567 e!4060865)))

(declare-fun b!6720403 () Bool)

(assert (=> b!6720403 (= e!4060865 tp_is_empty!42347)))

(assert (= (and b!6719548 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720403))

(assert (= (and b!6719548 ((_ is Concat!25392) (regOne!33607 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720404))

(assert (= (and b!6719548 ((_ is Star!16547) (regOne!33607 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720405))

(assert (= (and b!6719548 ((_ is Union!16547) (regOne!33607 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720406))

(declare-fun b!6720410 () Bool)

(declare-fun e!4060866 () Bool)

(declare-fun tp!1841853 () Bool)

(declare-fun tp!1841855 () Bool)

(assert (=> b!6720410 (= e!4060866 (and tp!1841853 tp!1841855))))

(declare-fun b!6720409 () Bool)

(declare-fun tp!1841854 () Bool)

(assert (=> b!6720409 (= e!4060866 tp!1841854)))

(declare-fun b!6720408 () Bool)

(declare-fun tp!1841857 () Bool)

(declare-fun tp!1841856 () Bool)

(assert (=> b!6720408 (= e!4060866 (and tp!1841857 tp!1841856))))

(assert (=> b!6719548 (= tp!1841569 e!4060866)))

(declare-fun b!6720407 () Bool)

(assert (=> b!6720407 (= e!4060866 tp_is_empty!42347)))

(assert (= (and b!6719548 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720407))

(assert (= (and b!6719548 ((_ is Concat!25392) (regTwo!33607 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720408))

(assert (= (and b!6719548 ((_ is Star!16547) (regTwo!33607 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720409))

(assert (= (and b!6719548 ((_ is Union!16547) (regTwo!33607 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720410))

(declare-fun b!6720414 () Bool)

(declare-fun e!4060867 () Bool)

(declare-fun tp!1841858 () Bool)

(declare-fun tp!1841860 () Bool)

(assert (=> b!6720414 (= e!4060867 (and tp!1841858 tp!1841860))))

(declare-fun b!6720413 () Bool)

(declare-fun tp!1841859 () Bool)

(assert (=> b!6720413 (= e!4060867 tp!1841859)))

(declare-fun b!6720412 () Bool)

(declare-fun tp!1841862 () Bool)

(declare-fun tp!1841861 () Bool)

(assert (=> b!6720412 (= e!4060867 (and tp!1841862 tp!1841861))))

(assert (=> b!6719591 (= tp!1841629 e!4060867)))

(declare-fun b!6720411 () Bool)

(assert (=> b!6720411 (= e!4060867 tp_is_empty!42347)))

(assert (= (and b!6719591 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33606 (regOne!33607 r!7292))))) b!6720411))

(assert (= (and b!6719591 ((_ is Concat!25392) (regOne!33606 (regOne!33606 (regOne!33607 r!7292))))) b!6720412))

(assert (= (and b!6719591 ((_ is Star!16547) (regOne!33606 (regOne!33606 (regOne!33607 r!7292))))) b!6720413))

(assert (= (and b!6719591 ((_ is Union!16547) (regOne!33606 (regOne!33606 (regOne!33607 r!7292))))) b!6720414))

(declare-fun b!6720418 () Bool)

(declare-fun e!4060868 () Bool)

(declare-fun tp!1841863 () Bool)

(declare-fun tp!1841865 () Bool)

(assert (=> b!6720418 (= e!4060868 (and tp!1841863 tp!1841865))))

(declare-fun b!6720417 () Bool)

(declare-fun tp!1841864 () Bool)

(assert (=> b!6720417 (= e!4060868 tp!1841864)))

(declare-fun b!6720416 () Bool)

(declare-fun tp!1841867 () Bool)

(declare-fun tp!1841866 () Bool)

(assert (=> b!6720416 (= e!4060868 (and tp!1841867 tp!1841866))))

(assert (=> b!6719591 (= tp!1841628 e!4060868)))

(declare-fun b!6720415 () Bool)

(assert (=> b!6720415 (= e!4060868 tp_is_empty!42347)))

(assert (= (and b!6719591 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33606 (regOne!33607 r!7292))))) b!6720415))

(assert (= (and b!6719591 ((_ is Concat!25392) (regTwo!33606 (regOne!33606 (regOne!33607 r!7292))))) b!6720416))

(assert (= (and b!6719591 ((_ is Star!16547) (regTwo!33606 (regOne!33606 (regOne!33607 r!7292))))) b!6720417))

(assert (= (and b!6719591 ((_ is Union!16547) (regTwo!33606 (regOne!33606 (regOne!33607 r!7292))))) b!6720418))

(declare-fun b!6720422 () Bool)

(declare-fun e!4060869 () Bool)

(declare-fun tp!1841868 () Bool)

(declare-fun tp!1841870 () Bool)

(assert (=> b!6720422 (= e!4060869 (and tp!1841868 tp!1841870))))

(declare-fun b!6720421 () Bool)

(declare-fun tp!1841869 () Bool)

(assert (=> b!6720421 (= e!4060869 tp!1841869)))

(declare-fun b!6720420 () Bool)

(declare-fun tp!1841872 () Bool)

(declare-fun tp!1841871 () Bool)

(assert (=> b!6720420 (= e!4060869 (and tp!1841872 tp!1841871))))

(assert (=> b!6719551 (= tp!1841578 e!4060869)))

(declare-fun b!6720419 () Bool)

(assert (=> b!6720419 (= e!4060869 tp_is_empty!42347)))

(assert (= (and b!6719551 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33607 (regTwo!33606 r!7292))))) b!6720419))

(assert (= (and b!6719551 ((_ is Concat!25392) (regOne!33606 (regOne!33607 (regTwo!33606 r!7292))))) b!6720420))

(assert (= (and b!6719551 ((_ is Star!16547) (regOne!33606 (regOne!33607 (regTwo!33606 r!7292))))) b!6720421))

(assert (= (and b!6719551 ((_ is Union!16547) (regOne!33606 (regOne!33607 (regTwo!33606 r!7292))))) b!6720422))

(declare-fun b!6720426 () Bool)

(declare-fun e!4060870 () Bool)

(declare-fun tp!1841873 () Bool)

(declare-fun tp!1841875 () Bool)

(assert (=> b!6720426 (= e!4060870 (and tp!1841873 tp!1841875))))

(declare-fun b!6720425 () Bool)

(declare-fun tp!1841874 () Bool)

(assert (=> b!6720425 (= e!4060870 tp!1841874)))

(declare-fun b!6720424 () Bool)

(declare-fun tp!1841877 () Bool)

(declare-fun tp!1841876 () Bool)

(assert (=> b!6720424 (= e!4060870 (and tp!1841877 tp!1841876))))

(assert (=> b!6719551 (= tp!1841577 e!4060870)))

(declare-fun b!6720423 () Bool)

(assert (=> b!6720423 (= e!4060870 tp_is_empty!42347)))

(assert (= (and b!6719551 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33607 (regTwo!33606 r!7292))))) b!6720423))

(assert (= (and b!6719551 ((_ is Concat!25392) (regTwo!33606 (regOne!33607 (regTwo!33606 r!7292))))) b!6720424))

(assert (= (and b!6719551 ((_ is Star!16547) (regTwo!33606 (regOne!33607 (regTwo!33606 r!7292))))) b!6720425))

(assert (= (and b!6719551 ((_ is Union!16547) (regTwo!33606 (regOne!33607 (regTwo!33606 r!7292))))) b!6720426))

(declare-fun b!6720430 () Bool)

(declare-fun e!4060871 () Bool)

(declare-fun tp!1841878 () Bool)

(declare-fun tp!1841880 () Bool)

(assert (=> b!6720430 (= e!4060871 (and tp!1841878 tp!1841880))))

(declare-fun b!6720429 () Bool)

(declare-fun tp!1841879 () Bool)

(assert (=> b!6720429 (= e!4060871 tp!1841879)))

(declare-fun b!6720428 () Bool)

(declare-fun tp!1841882 () Bool)

(declare-fun tp!1841881 () Bool)

(assert (=> b!6720428 (= e!4060871 (and tp!1841882 tp!1841881))))

(assert (=> b!6719600 (= tp!1841636 e!4060871)))

(declare-fun b!6720427 () Bool)

(assert (=> b!6720427 (= e!4060871 tp_is_empty!42347)))

(assert (= (and b!6719600 ((_ is ElementMatch!16547) (reg!16876 (regOne!33607 (regOne!33607 r!7292))))) b!6720427))

(assert (= (and b!6719600 ((_ is Concat!25392) (reg!16876 (regOne!33607 (regOne!33607 r!7292))))) b!6720428))

(assert (= (and b!6719600 ((_ is Star!16547) (reg!16876 (regOne!33607 (regOne!33607 r!7292))))) b!6720429))

(assert (= (and b!6719600 ((_ is Union!16547) (reg!16876 (regOne!33607 (regOne!33607 r!7292))))) b!6720430))

(declare-fun b!6720434 () Bool)

(declare-fun e!4060872 () Bool)

(declare-fun tp!1841883 () Bool)

(declare-fun tp!1841885 () Bool)

(assert (=> b!6720434 (= e!4060872 (and tp!1841883 tp!1841885))))

(declare-fun b!6720433 () Bool)

(declare-fun tp!1841884 () Bool)

(assert (=> b!6720433 (= e!4060872 tp!1841884)))

(declare-fun b!6720432 () Bool)

(declare-fun tp!1841887 () Bool)

(declare-fun tp!1841886 () Bool)

(assert (=> b!6720432 (= e!4060872 (and tp!1841887 tp!1841886))))

(assert (=> b!6719609 (= tp!1841645 e!4060872)))

(declare-fun b!6720431 () Bool)

(assert (=> b!6720431 (= e!4060872 tp_is_empty!42347)))

(assert (= (and b!6719609 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33606 (regOne!33606 r!7292))))) b!6720431))

(assert (= (and b!6719609 ((_ is Concat!25392) (regOne!33607 (regOne!33606 (regOne!33606 r!7292))))) b!6720432))

(assert (= (and b!6719609 ((_ is Star!16547) (regOne!33607 (regOne!33606 (regOne!33606 r!7292))))) b!6720433))

(assert (= (and b!6719609 ((_ is Union!16547) (regOne!33607 (regOne!33606 (regOne!33606 r!7292))))) b!6720434))

(declare-fun b!6720438 () Bool)

(declare-fun e!4060873 () Bool)

(declare-fun tp!1841888 () Bool)

(declare-fun tp!1841890 () Bool)

(assert (=> b!6720438 (= e!4060873 (and tp!1841888 tp!1841890))))

(declare-fun b!6720437 () Bool)

(declare-fun tp!1841889 () Bool)

(assert (=> b!6720437 (= e!4060873 tp!1841889)))

(declare-fun b!6720436 () Bool)

(declare-fun tp!1841892 () Bool)

(declare-fun tp!1841891 () Bool)

(assert (=> b!6720436 (= e!4060873 (and tp!1841892 tp!1841891))))

(assert (=> b!6719609 (= tp!1841647 e!4060873)))

(declare-fun b!6720435 () Bool)

(assert (=> b!6720435 (= e!4060873 tp_is_empty!42347)))

(assert (= (and b!6719609 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33606 (regOne!33606 r!7292))))) b!6720435))

(assert (= (and b!6719609 ((_ is Concat!25392) (regTwo!33607 (regOne!33606 (regOne!33606 r!7292))))) b!6720436))

(assert (= (and b!6719609 ((_ is Star!16547) (regTwo!33607 (regOne!33606 (regOne!33606 r!7292))))) b!6720437))

(assert (= (and b!6719609 ((_ is Union!16547) (regTwo!33607 (regOne!33606 (regOne!33606 r!7292))))) b!6720438))

(declare-fun b!6720439 () Bool)

(declare-fun e!4060874 () Bool)

(declare-fun tp!1841893 () Bool)

(assert (=> b!6720439 (= e!4060874 (and tp_is_empty!42347 tp!1841893))))

(assert (=> b!6719531 (= tp!1841549 e!4060874)))

(assert (= (and b!6719531 ((_ is Cons!65818) (t!379619 (t!379619 (t!379619 s!2326))))) b!6720439))

(declare-fun b!6720443 () Bool)

(declare-fun e!4060875 () Bool)

(declare-fun tp!1841894 () Bool)

(declare-fun tp!1841896 () Bool)

(assert (=> b!6720443 (= e!4060875 (and tp!1841894 tp!1841896))))

(declare-fun b!6720442 () Bool)

(declare-fun tp!1841895 () Bool)

(assert (=> b!6720442 (= e!4060875 tp!1841895)))

(declare-fun b!6720441 () Bool)

(declare-fun tp!1841898 () Bool)

(declare-fun tp!1841897 () Bool)

(assert (=> b!6720441 (= e!4060875 (and tp!1841898 tp!1841897))))

(assert (=> b!6719546 (= tp!1841571 e!4060875)))

(declare-fun b!6720440 () Bool)

(assert (=> b!6720440 (= e!4060875 tp_is_empty!42347)))

(assert (= (and b!6719546 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720440))

(assert (= (and b!6719546 ((_ is Concat!25392) (regOne!33606 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720441))

(assert (= (and b!6719546 ((_ is Star!16547) (regOne!33606 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720442))

(assert (= (and b!6719546 ((_ is Union!16547) (regOne!33606 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720443))

(declare-fun b!6720447 () Bool)

(declare-fun e!4060876 () Bool)

(declare-fun tp!1841899 () Bool)

(declare-fun tp!1841901 () Bool)

(assert (=> b!6720447 (= e!4060876 (and tp!1841899 tp!1841901))))

(declare-fun b!6720446 () Bool)

(declare-fun tp!1841900 () Bool)

(assert (=> b!6720446 (= e!4060876 tp!1841900)))

(declare-fun b!6720445 () Bool)

(declare-fun tp!1841903 () Bool)

(declare-fun tp!1841902 () Bool)

(assert (=> b!6720445 (= e!4060876 (and tp!1841903 tp!1841902))))

(assert (=> b!6719546 (= tp!1841570 e!4060876)))

(declare-fun b!6720444 () Bool)

(assert (=> b!6720444 (= e!4060876 tp_is_empty!42347)))

(assert (= (and b!6719546 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720444))

(assert (= (and b!6719546 ((_ is Concat!25392) (regTwo!33606 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720445))

(assert (= (and b!6719546 ((_ is Star!16547) (regTwo!33606 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720446))

(assert (= (and b!6719546 ((_ is Union!16547) (regTwo!33606 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720447))

(declare-fun b!6720451 () Bool)

(declare-fun e!4060877 () Bool)

(declare-fun tp!1841904 () Bool)

(declare-fun tp!1841906 () Bool)

(assert (=> b!6720451 (= e!4060877 (and tp!1841904 tp!1841906))))

(declare-fun b!6720450 () Bool)

(declare-fun tp!1841905 () Bool)

(assert (=> b!6720450 (= e!4060877 tp!1841905)))

(declare-fun b!6720449 () Bool)

(declare-fun tp!1841908 () Bool)

(declare-fun tp!1841907 () Bool)

(assert (=> b!6720449 (= e!4060877 (and tp!1841908 tp!1841907))))

(assert (=> b!6719607 (= tp!1841649 e!4060877)))

(declare-fun b!6720448 () Bool)

(assert (=> b!6720448 (= e!4060877 tp_is_empty!42347)))

(assert (= (and b!6719607 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33606 (regOne!33606 r!7292))))) b!6720448))

(assert (= (and b!6719607 ((_ is Concat!25392) (regOne!33606 (regOne!33606 (regOne!33606 r!7292))))) b!6720449))

(assert (= (and b!6719607 ((_ is Star!16547) (regOne!33606 (regOne!33606 (regOne!33606 r!7292))))) b!6720450))

(assert (= (and b!6719607 ((_ is Union!16547) (regOne!33606 (regOne!33606 (regOne!33606 r!7292))))) b!6720451))

(declare-fun b!6720455 () Bool)

(declare-fun e!4060878 () Bool)

(declare-fun tp!1841909 () Bool)

(declare-fun tp!1841911 () Bool)

(assert (=> b!6720455 (= e!4060878 (and tp!1841909 tp!1841911))))

(declare-fun b!6720454 () Bool)

(declare-fun tp!1841910 () Bool)

(assert (=> b!6720454 (= e!4060878 tp!1841910)))

(declare-fun b!6720453 () Bool)

(declare-fun tp!1841913 () Bool)

(declare-fun tp!1841912 () Bool)

(assert (=> b!6720453 (= e!4060878 (and tp!1841913 tp!1841912))))

(assert (=> b!6719607 (= tp!1841648 e!4060878)))

(declare-fun b!6720452 () Bool)

(assert (=> b!6720452 (= e!4060878 tp_is_empty!42347)))

(assert (= (and b!6719607 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33606 (regOne!33606 r!7292))))) b!6720452))

(assert (= (and b!6719607 ((_ is Concat!25392) (regTwo!33606 (regOne!33606 (regOne!33606 r!7292))))) b!6720453))

(assert (= (and b!6719607 ((_ is Star!16547) (regTwo!33606 (regOne!33606 (regOne!33606 r!7292))))) b!6720454))

(assert (= (and b!6719607 ((_ is Union!16547) (regTwo!33606 (regOne!33606 (regOne!33606 r!7292))))) b!6720455))

(declare-fun b!6720459 () Bool)

(declare-fun e!4060879 () Bool)

(declare-fun tp!1841914 () Bool)

(declare-fun tp!1841916 () Bool)

(assert (=> b!6720459 (= e!4060879 (and tp!1841914 tp!1841916))))

(declare-fun b!6720458 () Bool)

(declare-fun tp!1841915 () Bool)

(assert (=> b!6720458 (= e!4060879 tp!1841915)))

(declare-fun b!6720457 () Bool)

(declare-fun tp!1841918 () Bool)

(declare-fun tp!1841917 () Bool)

(assert (=> b!6720457 (= e!4060879 (and tp!1841918 tp!1841917))))

(assert (=> b!6719522 (= tp!1841534 e!4060879)))

(declare-fun b!6720456 () Bool)

(assert (=> b!6720456 (= e!4060879 tp_is_empty!42347)))

(assert (= (and b!6719522 ((_ is ElementMatch!16547) (regOne!33607 (reg!16876 (regTwo!33607 r!7292))))) b!6720456))

(assert (= (and b!6719522 ((_ is Concat!25392) (regOne!33607 (reg!16876 (regTwo!33607 r!7292))))) b!6720457))

(assert (= (and b!6719522 ((_ is Star!16547) (regOne!33607 (reg!16876 (regTwo!33607 r!7292))))) b!6720458))

(assert (= (and b!6719522 ((_ is Union!16547) (regOne!33607 (reg!16876 (regTwo!33607 r!7292))))) b!6720459))

(declare-fun b!6720463 () Bool)

(declare-fun e!4060880 () Bool)

(declare-fun tp!1841919 () Bool)

(declare-fun tp!1841921 () Bool)

(assert (=> b!6720463 (= e!4060880 (and tp!1841919 tp!1841921))))

(declare-fun b!6720462 () Bool)

(declare-fun tp!1841920 () Bool)

(assert (=> b!6720462 (= e!4060880 tp!1841920)))

(declare-fun b!6720461 () Bool)

(declare-fun tp!1841923 () Bool)

(declare-fun tp!1841922 () Bool)

(assert (=> b!6720461 (= e!4060880 (and tp!1841923 tp!1841922))))

(assert (=> b!6719522 (= tp!1841536 e!4060880)))

(declare-fun b!6720460 () Bool)

(assert (=> b!6720460 (= e!4060880 tp_is_empty!42347)))

(assert (= (and b!6719522 ((_ is ElementMatch!16547) (regTwo!33607 (reg!16876 (regTwo!33607 r!7292))))) b!6720460))

(assert (= (and b!6719522 ((_ is Concat!25392) (regTwo!33607 (reg!16876 (regTwo!33607 r!7292))))) b!6720461))

(assert (= (and b!6719522 ((_ is Star!16547) (regTwo!33607 (reg!16876 (regTwo!33607 r!7292))))) b!6720462))

(assert (= (and b!6719522 ((_ is Union!16547) (regTwo!33607 (reg!16876 (regTwo!33607 r!7292))))) b!6720463))

(declare-fun b!6720467 () Bool)

(declare-fun e!4060881 () Bool)

(declare-fun tp!1841924 () Bool)

(declare-fun tp!1841926 () Bool)

(assert (=> b!6720467 (= e!4060881 (and tp!1841924 tp!1841926))))

(declare-fun b!6720466 () Bool)

(declare-fun tp!1841925 () Bool)

(assert (=> b!6720466 (= e!4060881 tp!1841925)))

(declare-fun b!6720465 () Bool)

(declare-fun tp!1841928 () Bool)

(declare-fun tp!1841927 () Bool)

(assert (=> b!6720465 (= e!4060881 (and tp!1841928 tp!1841927))))

(assert (=> b!6719616 (= tp!1841656 e!4060881)))

(declare-fun b!6720464 () Bool)

(assert (=> b!6720464 (= e!4060881 tp_is_empty!42347)))

(assert (= (and b!6719616 ((_ is ElementMatch!16547) (reg!16876 (reg!16876 (regOne!33606 r!7292))))) b!6720464))

(assert (= (and b!6719616 ((_ is Concat!25392) (reg!16876 (reg!16876 (regOne!33606 r!7292))))) b!6720465))

(assert (= (and b!6719616 ((_ is Star!16547) (reg!16876 (reg!16876 (regOne!33606 r!7292))))) b!6720466))

(assert (= (and b!6719616 ((_ is Union!16547) (reg!16876 (reg!16876 (regOne!33606 r!7292))))) b!6720467))

(declare-fun b!6720468 () Bool)

(declare-fun e!4060882 () Bool)

(declare-fun tp!1841929 () Bool)

(declare-fun tp!1841930 () Bool)

(assert (=> b!6720468 (= e!4060882 (and tp!1841929 tp!1841930))))

(assert (=> b!6719362 (= tp!1841474 e!4060882)))

(assert (= (and b!6719362 ((_ is Cons!65816) (exprs!6431 (h!72265 res!2749805)))) b!6720468))

(declare-fun b!6720472 () Bool)

(declare-fun e!4060883 () Bool)

(declare-fun tp!1841931 () Bool)

(declare-fun tp!1841933 () Bool)

(assert (=> b!6720472 (= e!4060883 (and tp!1841931 tp!1841933))))

(declare-fun b!6720471 () Bool)

(declare-fun tp!1841932 () Bool)

(assert (=> b!6720471 (= e!4060883 tp!1841932)))

(declare-fun b!6720470 () Bool)

(declare-fun tp!1841935 () Bool)

(declare-fun tp!1841934 () Bool)

(assert (=> b!6720470 (= e!4060883 (and tp!1841935 tp!1841934))))

(assert (=> b!6719625 (= tp!1841665 e!4060883)))

(declare-fun b!6720469 () Bool)

(assert (=> b!6720469 (= e!4060883 tp_is_empty!42347)))

(assert (= (and b!6719625 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33607 (regOne!33606 r!7292))))) b!6720469))

(assert (= (and b!6719625 ((_ is Concat!25392) (regOne!33607 (regTwo!33607 (regOne!33606 r!7292))))) b!6720470))

(assert (= (and b!6719625 ((_ is Star!16547) (regOne!33607 (regTwo!33607 (regOne!33606 r!7292))))) b!6720471))

(assert (= (and b!6719625 ((_ is Union!16547) (regOne!33607 (regTwo!33607 (regOne!33606 r!7292))))) b!6720472))

(declare-fun b!6720476 () Bool)

(declare-fun e!4060884 () Bool)

(declare-fun tp!1841936 () Bool)

(declare-fun tp!1841938 () Bool)

(assert (=> b!6720476 (= e!4060884 (and tp!1841936 tp!1841938))))

(declare-fun b!6720475 () Bool)

(declare-fun tp!1841937 () Bool)

(assert (=> b!6720475 (= e!4060884 tp!1841937)))

(declare-fun b!6720474 () Bool)

(declare-fun tp!1841940 () Bool)

(declare-fun tp!1841939 () Bool)

(assert (=> b!6720474 (= e!4060884 (and tp!1841940 tp!1841939))))

(assert (=> b!6719625 (= tp!1841667 e!4060884)))

(declare-fun b!6720473 () Bool)

(assert (=> b!6720473 (= e!4060884 tp_is_empty!42347)))

(assert (= (and b!6719625 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33607 (regOne!33606 r!7292))))) b!6720473))

(assert (= (and b!6719625 ((_ is Concat!25392) (regTwo!33607 (regTwo!33607 (regOne!33606 r!7292))))) b!6720474))

(assert (= (and b!6719625 ((_ is Star!16547) (regTwo!33607 (regTwo!33607 (regOne!33606 r!7292))))) b!6720475))

(assert (= (and b!6719625 ((_ is Union!16547) (regTwo!33607 (regTwo!33607 (regOne!33606 r!7292))))) b!6720476))

(declare-fun b!6720480 () Bool)

(declare-fun e!4060885 () Bool)

(declare-fun tp!1841941 () Bool)

(declare-fun tp!1841943 () Bool)

(assert (=> b!6720480 (= e!4060885 (and tp!1841941 tp!1841943))))

(declare-fun b!6720479 () Bool)

(declare-fun tp!1841942 () Bool)

(assert (=> b!6720479 (= e!4060885 tp!1841942)))

(declare-fun b!6720478 () Bool)

(declare-fun tp!1841945 () Bool)

(declare-fun tp!1841944 () Bool)

(assert (=> b!6720478 (= e!4060885 (and tp!1841945 tp!1841944))))

(assert (=> b!6719524 (= tp!1841543 e!4060885)))

(declare-fun b!6720477 () Bool)

(assert (=> b!6720477 (= e!4060885 tp_is_empty!42347)))

(assert (= (and b!6719524 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))))) b!6720477))

(assert (= (and b!6719524 ((_ is Concat!25392) (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))))) b!6720478))

(assert (= (and b!6719524 ((_ is Star!16547) (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))))) b!6720479))

(assert (= (and b!6719524 ((_ is Union!16547) (regOne!33606 (regOne!33607 (regTwo!33607 r!7292))))) b!6720480))

(declare-fun b!6720484 () Bool)

(declare-fun e!4060886 () Bool)

(declare-fun tp!1841946 () Bool)

(declare-fun tp!1841948 () Bool)

(assert (=> b!6720484 (= e!4060886 (and tp!1841946 tp!1841948))))

(declare-fun b!6720483 () Bool)

(declare-fun tp!1841947 () Bool)

(assert (=> b!6720483 (= e!4060886 tp!1841947)))

(declare-fun b!6720482 () Bool)

(declare-fun tp!1841950 () Bool)

(declare-fun tp!1841949 () Bool)

(assert (=> b!6720482 (= e!4060886 (and tp!1841950 tp!1841949))))

(assert (=> b!6719524 (= tp!1841542 e!4060886)))

(declare-fun b!6720481 () Bool)

(assert (=> b!6720481 (= e!4060886 tp_is_empty!42347)))

(assert (= (and b!6719524 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))))) b!6720481))

(assert (= (and b!6719524 ((_ is Concat!25392) (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))))) b!6720482))

(assert (= (and b!6719524 ((_ is Star!16547) (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))))) b!6720483))

(assert (= (and b!6719524 ((_ is Union!16547) (regTwo!33606 (regOne!33607 (regTwo!33607 r!7292))))) b!6720484))

(declare-fun b!6720488 () Bool)

(declare-fun e!4060887 () Bool)

(declare-fun tp!1841951 () Bool)

(declare-fun tp!1841953 () Bool)

(assert (=> b!6720488 (= e!4060887 (and tp!1841951 tp!1841953))))

(declare-fun b!6720487 () Bool)

(declare-fun tp!1841952 () Bool)

(assert (=> b!6720487 (= e!4060887 tp!1841952)))

(declare-fun b!6720486 () Bool)

(declare-fun tp!1841955 () Bool)

(declare-fun tp!1841954 () Bool)

(assert (=> b!6720486 (= e!4060887 (and tp!1841955 tp!1841954))))

(assert (=> b!6719569 (= tp!1841595 e!4060887)))

(declare-fun b!6720485 () Bool)

(assert (=> b!6720485 (= e!4060887 tp_is_empty!42347)))

(assert (= (and b!6719569 ((_ is ElementMatch!16547) (regOne!33607 (reg!16876 (reg!16876 r!7292))))) b!6720485))

(assert (= (and b!6719569 ((_ is Concat!25392) (regOne!33607 (reg!16876 (reg!16876 r!7292))))) b!6720486))

(assert (= (and b!6719569 ((_ is Star!16547) (regOne!33607 (reg!16876 (reg!16876 r!7292))))) b!6720487))

(assert (= (and b!6719569 ((_ is Union!16547) (regOne!33607 (reg!16876 (reg!16876 r!7292))))) b!6720488))

(declare-fun b!6720492 () Bool)

(declare-fun e!4060888 () Bool)

(declare-fun tp!1841956 () Bool)

(declare-fun tp!1841958 () Bool)

(assert (=> b!6720492 (= e!4060888 (and tp!1841956 tp!1841958))))

(declare-fun b!6720491 () Bool)

(declare-fun tp!1841957 () Bool)

(assert (=> b!6720491 (= e!4060888 tp!1841957)))

(declare-fun b!6720490 () Bool)

(declare-fun tp!1841960 () Bool)

(declare-fun tp!1841959 () Bool)

(assert (=> b!6720490 (= e!4060888 (and tp!1841960 tp!1841959))))

(assert (=> b!6719569 (= tp!1841597 e!4060888)))

(declare-fun b!6720489 () Bool)

(assert (=> b!6720489 (= e!4060888 tp_is_empty!42347)))

(assert (= (and b!6719569 ((_ is ElementMatch!16547) (regTwo!33607 (reg!16876 (reg!16876 r!7292))))) b!6720489))

(assert (= (and b!6719569 ((_ is Concat!25392) (regTwo!33607 (reg!16876 (reg!16876 r!7292))))) b!6720490))

(assert (= (and b!6719569 ((_ is Star!16547) (regTwo!33607 (reg!16876 (reg!16876 r!7292))))) b!6720491))

(assert (= (and b!6719569 ((_ is Union!16547) (regTwo!33607 (reg!16876 (reg!16876 r!7292))))) b!6720492))

(declare-fun b!6720496 () Bool)

(declare-fun e!4060889 () Bool)

(declare-fun tp!1841961 () Bool)

(declare-fun tp!1841963 () Bool)

(assert (=> b!6720496 (= e!4060889 (and tp!1841961 tp!1841963))))

(declare-fun b!6720495 () Bool)

(declare-fun tp!1841962 () Bool)

(assert (=> b!6720495 (= e!4060889 tp!1841962)))

(declare-fun b!6720494 () Bool)

(declare-fun tp!1841965 () Bool)

(declare-fun tp!1841964 () Bool)

(assert (=> b!6720494 (= e!4060889 (and tp!1841965 tp!1841964))))

(assert (=> b!6719516 (= tp!1841528 e!4060889)))

(declare-fun b!6720493 () Bool)

(assert (=> b!6720493 (= e!4060889 tp_is_empty!42347)))

(assert (= (and b!6719516 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720493))

(assert (= (and b!6719516 ((_ is Concat!25392) (reg!16876 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720494))

(assert (= (and b!6719516 ((_ is Star!16547) (reg!16876 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720495))

(assert (= (and b!6719516 ((_ is Union!16547) (reg!16876 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720496))

(declare-fun b!6720500 () Bool)

(declare-fun e!4060890 () Bool)

(declare-fun tp!1841966 () Bool)

(declare-fun tp!1841968 () Bool)

(assert (=> b!6720500 (= e!4060890 (and tp!1841966 tp!1841968))))

(declare-fun b!6720499 () Bool)

(declare-fun tp!1841967 () Bool)

(assert (=> b!6720499 (= e!4060890 tp!1841967)))

(declare-fun b!6720498 () Bool)

(declare-fun tp!1841970 () Bool)

(declare-fun tp!1841969 () Bool)

(assert (=> b!6720498 (= e!4060890 (and tp!1841970 tp!1841969))))

(assert (=> b!6719561 (= tp!1841587 e!4060890)))

(declare-fun b!6720497 () Bool)

(assert (=> b!6720497 (= e!4060890 tp_is_empty!42347)))

(assert (= (and b!6719561 ((_ is ElementMatch!16547) (reg!16876 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720497))

(assert (= (and b!6719561 ((_ is Concat!25392) (reg!16876 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720498))

(assert (= (and b!6719561 ((_ is Star!16547) (reg!16876 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720499))

(assert (= (and b!6719561 ((_ is Union!16547) (reg!16876 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720500))

(declare-fun b!6720504 () Bool)

(declare-fun e!4060891 () Bool)

(declare-fun tp!1841971 () Bool)

(declare-fun tp!1841973 () Bool)

(assert (=> b!6720504 (= e!4060891 (and tp!1841971 tp!1841973))))

(declare-fun b!6720503 () Bool)

(declare-fun tp!1841972 () Bool)

(assert (=> b!6720503 (= e!4060891 tp!1841972)))

(declare-fun b!6720502 () Bool)

(declare-fun tp!1841975 () Bool)

(declare-fun tp!1841974 () Bool)

(assert (=> b!6720502 (= e!4060891 (and tp!1841975 tp!1841974))))

(assert (=> b!6719567 (= tp!1841599 e!4060891)))

(declare-fun b!6720501 () Bool)

(assert (=> b!6720501 (= e!4060891 tp_is_empty!42347)))

(assert (= (and b!6719567 ((_ is ElementMatch!16547) (regOne!33606 (reg!16876 (reg!16876 r!7292))))) b!6720501))

(assert (= (and b!6719567 ((_ is Concat!25392) (regOne!33606 (reg!16876 (reg!16876 r!7292))))) b!6720502))

(assert (= (and b!6719567 ((_ is Star!16547) (regOne!33606 (reg!16876 (reg!16876 r!7292))))) b!6720503))

(assert (= (and b!6719567 ((_ is Union!16547) (regOne!33606 (reg!16876 (reg!16876 r!7292))))) b!6720504))

(declare-fun b!6720508 () Bool)

(declare-fun e!4060892 () Bool)

(declare-fun tp!1841976 () Bool)

(declare-fun tp!1841978 () Bool)

(assert (=> b!6720508 (= e!4060892 (and tp!1841976 tp!1841978))))

(declare-fun b!6720507 () Bool)

(declare-fun tp!1841977 () Bool)

(assert (=> b!6720507 (= e!4060892 tp!1841977)))

(declare-fun b!6720506 () Bool)

(declare-fun tp!1841980 () Bool)

(declare-fun tp!1841979 () Bool)

(assert (=> b!6720506 (= e!4060892 (and tp!1841980 tp!1841979))))

(assert (=> b!6719567 (= tp!1841598 e!4060892)))

(declare-fun b!6720505 () Bool)

(assert (=> b!6720505 (= e!4060892 tp_is_empty!42347)))

(assert (= (and b!6719567 ((_ is ElementMatch!16547) (regTwo!33606 (reg!16876 (reg!16876 r!7292))))) b!6720505))

(assert (= (and b!6719567 ((_ is Concat!25392) (regTwo!33606 (reg!16876 (reg!16876 r!7292))))) b!6720506))

(assert (= (and b!6719567 ((_ is Star!16547) (regTwo!33606 (reg!16876 (reg!16876 r!7292))))) b!6720507))

(assert (= (and b!6719567 ((_ is Union!16547) (regTwo!33606 (reg!16876 (reg!16876 r!7292))))) b!6720508))

(declare-fun b!6720512 () Bool)

(declare-fun e!4060893 () Bool)

(declare-fun tp!1841981 () Bool)

(declare-fun tp!1841983 () Bool)

(assert (=> b!6720512 (= e!4060893 (and tp!1841981 tp!1841983))))

(declare-fun b!6720511 () Bool)

(declare-fun tp!1841982 () Bool)

(assert (=> b!6720511 (= e!4060893 tp!1841982)))

(declare-fun b!6720510 () Bool)

(declare-fun tp!1841985 () Bool)

(declare-fun tp!1841984 () Bool)

(assert (=> b!6720510 (= e!4060893 (and tp!1841985 tp!1841984))))

(assert (=> b!6719576 (= tp!1841606 e!4060893)))

(declare-fun b!6720509 () Bool)

(assert (=> b!6720509 (= e!4060893 tp_is_empty!42347)))

(assert (= (and b!6719576 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33606 (reg!16876 r!7292))))) b!6720509))

(assert (= (and b!6719576 ((_ is Concat!25392) (reg!16876 (regTwo!33606 (reg!16876 r!7292))))) b!6720510))

(assert (= (and b!6719576 ((_ is Star!16547) (reg!16876 (regTwo!33606 (reg!16876 r!7292))))) b!6720511))

(assert (= (and b!6719576 ((_ is Union!16547) (reg!16876 (regTwo!33606 (reg!16876 r!7292))))) b!6720512))

(declare-fun b!6720516 () Bool)

(declare-fun e!4060894 () Bool)

(declare-fun tp!1841986 () Bool)

(declare-fun tp!1841988 () Bool)

(assert (=> b!6720516 (= e!4060894 (and tp!1841986 tp!1841988))))

(declare-fun b!6720515 () Bool)

(declare-fun tp!1841987 () Bool)

(assert (=> b!6720515 (= e!4060894 tp!1841987)))

(declare-fun b!6720514 () Bool)

(declare-fun tp!1841990 () Bool)

(declare-fun tp!1841989 () Bool)

(assert (=> b!6720514 (= e!4060894 (and tp!1841990 tp!1841989))))

(assert (=> b!6719585 (= tp!1841615 e!4060894)))

(declare-fun b!6720513 () Bool)

(assert (=> b!6720513 (= e!4060894 tp_is_empty!42347)))

(assert (= (and b!6719585 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33607 (reg!16876 r!7292))))) b!6720513))

(assert (= (and b!6719585 ((_ is Concat!25392) (regOne!33607 (regTwo!33607 (reg!16876 r!7292))))) b!6720514))

(assert (= (and b!6719585 ((_ is Star!16547) (regOne!33607 (regTwo!33607 (reg!16876 r!7292))))) b!6720515))

(assert (= (and b!6719585 ((_ is Union!16547) (regOne!33607 (regTwo!33607 (reg!16876 r!7292))))) b!6720516))

(declare-fun b!6720520 () Bool)

(declare-fun e!4060895 () Bool)

(declare-fun tp!1841991 () Bool)

(declare-fun tp!1841993 () Bool)

(assert (=> b!6720520 (= e!4060895 (and tp!1841991 tp!1841993))))

(declare-fun b!6720519 () Bool)

(declare-fun tp!1841992 () Bool)

(assert (=> b!6720519 (= e!4060895 tp!1841992)))

(declare-fun b!6720518 () Bool)

(declare-fun tp!1841995 () Bool)

(declare-fun tp!1841994 () Bool)

(assert (=> b!6720518 (= e!4060895 (and tp!1841995 tp!1841994))))

(assert (=> b!6719585 (= tp!1841617 e!4060895)))

(declare-fun b!6720517 () Bool)

(assert (=> b!6720517 (= e!4060895 tp_is_empty!42347)))

(assert (= (and b!6719585 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33607 (reg!16876 r!7292))))) b!6720517))

(assert (= (and b!6719585 ((_ is Concat!25392) (regTwo!33607 (regTwo!33607 (reg!16876 r!7292))))) b!6720518))

(assert (= (and b!6719585 ((_ is Star!16547) (regTwo!33607 (regTwo!33607 (reg!16876 r!7292))))) b!6720519))

(assert (= (and b!6719585 ((_ is Union!16547) (regTwo!33607 (regTwo!33607 (reg!16876 r!7292))))) b!6720520))

(declare-fun b!6720524 () Bool)

(declare-fun e!4060896 () Bool)

(declare-fun tp!1841996 () Bool)

(declare-fun tp!1841998 () Bool)

(assert (=> b!6720524 (= e!4060896 (and tp!1841996 tp!1841998))))

(declare-fun b!6720523 () Bool)

(declare-fun tp!1841997 () Bool)

(assert (=> b!6720523 (= e!4060896 tp!1841997)))

(declare-fun b!6720522 () Bool)

(declare-fun tp!1842000 () Bool)

(declare-fun tp!1841999 () Bool)

(assert (=> b!6720522 (= e!4060896 (and tp!1842000 tp!1841999))))

(assert (=> b!6719593 (= tp!1841625 e!4060896)))

(declare-fun b!6720521 () Bool)

(assert (=> b!6720521 (= e!4060896 tp_is_empty!42347)))

(assert (= (and b!6719593 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33606 (regOne!33607 r!7292))))) b!6720521))

(assert (= (and b!6719593 ((_ is Concat!25392) (regOne!33607 (regOne!33606 (regOne!33607 r!7292))))) b!6720522))

(assert (= (and b!6719593 ((_ is Star!16547) (regOne!33607 (regOne!33606 (regOne!33607 r!7292))))) b!6720523))

(assert (= (and b!6719593 ((_ is Union!16547) (regOne!33607 (regOne!33606 (regOne!33607 r!7292))))) b!6720524))

(declare-fun b!6720528 () Bool)

(declare-fun e!4060897 () Bool)

(declare-fun tp!1842001 () Bool)

(declare-fun tp!1842003 () Bool)

(assert (=> b!6720528 (= e!4060897 (and tp!1842001 tp!1842003))))

(declare-fun b!6720527 () Bool)

(declare-fun tp!1842002 () Bool)

(assert (=> b!6720527 (= e!4060897 tp!1842002)))

(declare-fun b!6720526 () Bool)

(declare-fun tp!1842005 () Bool)

(declare-fun tp!1842004 () Bool)

(assert (=> b!6720526 (= e!4060897 (and tp!1842005 tp!1842004))))

(assert (=> b!6719593 (= tp!1841627 e!4060897)))

(declare-fun b!6720525 () Bool)

(assert (=> b!6720525 (= e!4060897 tp_is_empty!42347)))

(assert (= (and b!6719593 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33606 (regOne!33607 r!7292))))) b!6720525))

(assert (= (and b!6719593 ((_ is Concat!25392) (regTwo!33607 (regOne!33606 (regOne!33607 r!7292))))) b!6720526))

(assert (= (and b!6719593 ((_ is Star!16547) (regTwo!33607 (regOne!33606 (regOne!33607 r!7292))))) b!6720527))

(assert (= (and b!6719593 ((_ is Union!16547) (regTwo!33607 (regOne!33606 (regOne!33607 r!7292))))) b!6720528))

(declare-fun b!6720532 () Bool)

(declare-fun e!4060898 () Bool)

(declare-fun tp!1842006 () Bool)

(declare-fun tp!1842008 () Bool)

(assert (=> b!6720532 (= e!4060898 (and tp!1842006 tp!1842008))))

(declare-fun b!6720531 () Bool)

(declare-fun tp!1842007 () Bool)

(assert (=> b!6720531 (= e!4060898 tp!1842007)))

(declare-fun b!6720530 () Bool)

(declare-fun tp!1842010 () Bool)

(declare-fun tp!1842009 () Bool)

(assert (=> b!6720530 (= e!4060898 (and tp!1842010 tp!1842009))))

(assert (=> b!6719553 (= tp!1841574 e!4060898)))

(declare-fun b!6720529 () Bool)

(assert (=> b!6720529 (= e!4060898 tp_is_empty!42347)))

(assert (= (and b!6719553 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33607 (regTwo!33606 r!7292))))) b!6720529))

(assert (= (and b!6719553 ((_ is Concat!25392) (regOne!33607 (regOne!33607 (regTwo!33606 r!7292))))) b!6720530))

(assert (= (and b!6719553 ((_ is Star!16547) (regOne!33607 (regOne!33607 (regTwo!33606 r!7292))))) b!6720531))

(assert (= (and b!6719553 ((_ is Union!16547) (regOne!33607 (regOne!33607 (regTwo!33606 r!7292))))) b!6720532))

(declare-fun b!6720536 () Bool)

(declare-fun e!4060899 () Bool)

(declare-fun tp!1842011 () Bool)

(declare-fun tp!1842013 () Bool)

(assert (=> b!6720536 (= e!4060899 (and tp!1842011 tp!1842013))))

(declare-fun b!6720535 () Bool)

(declare-fun tp!1842012 () Bool)

(assert (=> b!6720535 (= e!4060899 tp!1842012)))

(declare-fun b!6720534 () Bool)

(declare-fun tp!1842015 () Bool)

(declare-fun tp!1842014 () Bool)

(assert (=> b!6720534 (= e!4060899 (and tp!1842015 tp!1842014))))

(assert (=> b!6719553 (= tp!1841576 e!4060899)))

(declare-fun b!6720533 () Bool)

(assert (=> b!6720533 (= e!4060899 tp_is_empty!42347)))

(assert (= (and b!6719553 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33607 (regTwo!33606 r!7292))))) b!6720533))

(assert (= (and b!6719553 ((_ is Concat!25392) (regTwo!33607 (regOne!33607 (regTwo!33606 r!7292))))) b!6720534))

(assert (= (and b!6719553 ((_ is Star!16547) (regTwo!33607 (regOne!33607 (regTwo!33606 r!7292))))) b!6720535))

(assert (= (and b!6719553 ((_ is Union!16547) (regTwo!33607 (regOne!33607 (regTwo!33606 r!7292))))) b!6720536))

(declare-fun b!6720540 () Bool)

(declare-fun e!4060900 () Bool)

(declare-fun tp!1842016 () Bool)

(declare-fun tp!1842018 () Bool)

(assert (=> b!6720540 (= e!4060900 (and tp!1842016 tp!1842018))))

(declare-fun b!6720539 () Bool)

(declare-fun tp!1842017 () Bool)

(assert (=> b!6720539 (= e!4060900 tp!1842017)))

(declare-fun b!6720538 () Bool)

(declare-fun tp!1842020 () Bool)

(declare-fun tp!1842019 () Bool)

(assert (=> b!6720538 (= e!4060900 (and tp!1842020 tp!1842019))))

(assert (=> b!6719557 (= tp!1841579 e!4060900)))

(declare-fun b!6720537 () Bool)

(assert (=> b!6720537 (= e!4060900 tp_is_empty!42347)))

(assert (= (and b!6719557 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720537))

(assert (= (and b!6719557 ((_ is Concat!25392) (regOne!33607 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720538))

(assert (= (and b!6719557 ((_ is Star!16547) (regOne!33607 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720539))

(assert (= (and b!6719557 ((_ is Union!16547) (regOne!33607 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720540))

(declare-fun b!6720544 () Bool)

(declare-fun e!4060901 () Bool)

(declare-fun tp!1842021 () Bool)

(declare-fun tp!1842023 () Bool)

(assert (=> b!6720544 (= e!4060901 (and tp!1842021 tp!1842023))))

(declare-fun b!6720543 () Bool)

(declare-fun tp!1842022 () Bool)

(assert (=> b!6720543 (= e!4060901 tp!1842022)))

(declare-fun b!6720542 () Bool)

(declare-fun tp!1842025 () Bool)

(declare-fun tp!1842024 () Bool)

(assert (=> b!6720542 (= e!4060901 (and tp!1842025 tp!1842024))))

(assert (=> b!6719557 (= tp!1841581 e!4060901)))

(declare-fun b!6720541 () Bool)

(assert (=> b!6720541 (= e!4060901 tp_is_empty!42347)))

(assert (= (and b!6719557 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720541))

(assert (= (and b!6719557 ((_ is Concat!25392) (regTwo!33607 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720542))

(assert (= (and b!6719557 ((_ is Star!16547) (regTwo!33607 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720543))

(assert (= (and b!6719557 ((_ is Union!16547) (regTwo!33607 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720544))

(declare-fun b!6720548 () Bool)

(declare-fun e!4060902 () Bool)

(declare-fun tp!1842026 () Bool)

(declare-fun tp!1842028 () Bool)

(assert (=> b!6720548 (= e!4060902 (and tp!1842026 tp!1842028))))

(declare-fun b!6720547 () Bool)

(declare-fun tp!1842027 () Bool)

(assert (=> b!6720547 (= e!4060902 tp!1842027)))

(declare-fun b!6720546 () Bool)

(declare-fun tp!1842030 () Bool)

(declare-fun tp!1842029 () Bool)

(assert (=> b!6720546 (= e!4060902 (and tp!1842030 tp!1842029))))

(assert (=> b!6719543 (= tp!1841563 e!4060902)))

(declare-fun b!6720545 () Bool)

(assert (=> b!6720545 (= e!4060902 tp_is_empty!42347)))

(assert (= (and b!6719543 ((_ is ElementMatch!16547) (reg!16876 (regOne!33606 (regTwo!33606 r!7292))))) b!6720545))

(assert (= (and b!6719543 ((_ is Concat!25392) (reg!16876 (regOne!33606 (regTwo!33606 r!7292))))) b!6720546))

(assert (= (and b!6719543 ((_ is Star!16547) (reg!16876 (regOne!33606 (regTwo!33606 r!7292))))) b!6720547))

(assert (= (and b!6719543 ((_ is Union!16547) (reg!16876 (regOne!33606 (regTwo!33606 r!7292))))) b!6720548))

(declare-fun condSetEmpty!45808 () Bool)

(assert (=> setNonEmpty!45807 (= condSetEmpty!45808 (= setRest!45807 ((as const (Array Context!11862 Bool)) false)))))

(declare-fun setRes!45808 () Bool)

(assert (=> setNonEmpty!45807 (= tp!1841573 setRes!45808)))

(declare-fun setIsEmpty!45808 () Bool)

(assert (=> setIsEmpty!45808 setRes!45808))

(declare-fun tp!1842032 () Bool)

(declare-fun e!4060903 () Bool)

(declare-fun setElem!45808 () Context!11862)

(declare-fun setNonEmpty!45808 () Bool)

(assert (=> setNonEmpty!45808 (= setRes!45808 (and tp!1842032 (inv!84614 setElem!45808) e!4060903))))

(declare-fun setRest!45808 () (InoxSet Context!11862))

(assert (=> setNonEmpty!45808 (= setRest!45807 ((_ map or) (store ((as const (Array Context!11862 Bool)) false) setElem!45808 true) setRest!45808))))

(declare-fun b!6720549 () Bool)

(declare-fun tp!1842031 () Bool)

(assert (=> b!6720549 (= e!4060903 tp!1842031)))

(assert (= (and setNonEmpty!45807 condSetEmpty!45808) setIsEmpty!45808))

(assert (= (and setNonEmpty!45807 (not condSetEmpty!45808)) setNonEmpty!45808))

(assert (= setNonEmpty!45808 b!6720549))

(declare-fun m!7482622 () Bool)

(assert (=> setNonEmpty!45808 m!7482622))

(declare-fun b!6720553 () Bool)

(declare-fun e!4060904 () Bool)

(declare-fun tp!1842033 () Bool)

(declare-fun tp!1842035 () Bool)

(assert (=> b!6720553 (= e!4060904 (and tp!1842033 tp!1842035))))

(declare-fun b!6720552 () Bool)

(declare-fun tp!1842034 () Bool)

(assert (=> b!6720552 (= e!4060904 tp!1842034)))

(declare-fun b!6720551 () Bool)

(declare-fun tp!1842037 () Bool)

(declare-fun tp!1842036 () Bool)

(assert (=> b!6720551 (= e!4060904 (and tp!1842037 tp!1842036))))

(assert (=> b!6719595 (= tp!1841634 e!4060904)))

(declare-fun b!6720550 () Bool)

(assert (=> b!6720550 (= e!4060904 tp_is_empty!42347)))

(assert (= (and b!6719595 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33606 (regOne!33607 r!7292))))) b!6720550))

(assert (= (and b!6719595 ((_ is Concat!25392) (regOne!33606 (regTwo!33606 (regOne!33607 r!7292))))) b!6720551))

(assert (= (and b!6719595 ((_ is Star!16547) (regOne!33606 (regTwo!33606 (regOne!33607 r!7292))))) b!6720552))

(assert (= (and b!6719595 ((_ is Union!16547) (regOne!33606 (regTwo!33606 (regOne!33607 r!7292))))) b!6720553))

(declare-fun b!6720557 () Bool)

(declare-fun e!4060905 () Bool)

(declare-fun tp!1842038 () Bool)

(declare-fun tp!1842040 () Bool)

(assert (=> b!6720557 (= e!4060905 (and tp!1842038 tp!1842040))))

(declare-fun b!6720556 () Bool)

(declare-fun tp!1842039 () Bool)

(assert (=> b!6720556 (= e!4060905 tp!1842039)))

(declare-fun b!6720555 () Bool)

(declare-fun tp!1842042 () Bool)

(declare-fun tp!1842041 () Bool)

(assert (=> b!6720555 (= e!4060905 (and tp!1842042 tp!1842041))))

(assert (=> b!6719595 (= tp!1841633 e!4060905)))

(declare-fun b!6720554 () Bool)

(assert (=> b!6720554 (= e!4060905 tp_is_empty!42347)))

(assert (= (and b!6719595 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33606 (regOne!33607 r!7292))))) b!6720554))

(assert (= (and b!6719595 ((_ is Concat!25392) (regTwo!33606 (regTwo!33606 (regOne!33607 r!7292))))) b!6720555))

(assert (= (and b!6719595 ((_ is Star!16547) (regTwo!33606 (regTwo!33606 (regOne!33607 r!7292))))) b!6720556))

(assert (= (and b!6719595 ((_ is Union!16547) (regTwo!33606 (regTwo!33606 (regOne!33607 r!7292))))) b!6720557))

(declare-fun b!6720561 () Bool)

(declare-fun e!4060906 () Bool)

(declare-fun tp!1842043 () Bool)

(declare-fun tp!1842045 () Bool)

(assert (=> b!6720561 (= e!4060906 (and tp!1842043 tp!1842045))))

(declare-fun b!6720560 () Bool)

(declare-fun tp!1842044 () Bool)

(assert (=> b!6720560 (= e!4060906 tp!1842044)))

(declare-fun b!6720559 () Bool)

(declare-fun tp!1842047 () Bool)

(declare-fun tp!1842046 () Bool)

(assert (=> b!6720559 (= e!4060906 (and tp!1842047 tp!1842046))))

(assert (=> b!6719555 (= tp!1841583 e!4060906)))

(declare-fun b!6720558 () Bool)

(assert (=> b!6720558 (= e!4060906 tp_is_empty!42347)))

(assert (= (and b!6719555 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720558))

(assert (= (and b!6719555 ((_ is Concat!25392) (regOne!33606 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720559))

(assert (= (and b!6719555 ((_ is Star!16547) (regOne!33606 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720560))

(assert (= (and b!6719555 ((_ is Union!16547) (regOne!33606 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720561))

(declare-fun b!6720565 () Bool)

(declare-fun e!4060907 () Bool)

(declare-fun tp!1842048 () Bool)

(declare-fun tp!1842050 () Bool)

(assert (=> b!6720565 (= e!4060907 (and tp!1842048 tp!1842050))))

(declare-fun b!6720564 () Bool)

(declare-fun tp!1842049 () Bool)

(assert (=> b!6720564 (= e!4060907 tp!1842049)))

(declare-fun b!6720563 () Bool)

(declare-fun tp!1842052 () Bool)

(declare-fun tp!1842051 () Bool)

(assert (=> b!6720563 (= e!4060907 (and tp!1842052 tp!1842051))))

(assert (=> b!6719555 (= tp!1841582 e!4060907)))

(declare-fun b!6720562 () Bool)

(assert (=> b!6720562 (= e!4060907 tp_is_empty!42347)))

(assert (= (and b!6719555 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720562))

(assert (= (and b!6719555 ((_ is Concat!25392) (regTwo!33606 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720563))

(assert (= (and b!6719555 ((_ is Star!16547) (regTwo!33606 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720564))

(assert (= (and b!6719555 ((_ is Union!16547) (regTwo!33606 (regTwo!33607 (regTwo!33606 r!7292))))) b!6720565))

(declare-fun b!6720569 () Bool)

(declare-fun e!4060908 () Bool)

(declare-fun tp!1842053 () Bool)

(declare-fun tp!1842055 () Bool)

(assert (=> b!6720569 (= e!4060908 (and tp!1842053 tp!1842055))))

(declare-fun b!6720568 () Bool)

(declare-fun tp!1842054 () Bool)

(assert (=> b!6720568 (= e!4060908 tp!1842054)))

(declare-fun b!6720567 () Bool)

(declare-fun tp!1842057 () Bool)

(declare-fun tp!1842056 () Bool)

(assert (=> b!6720567 (= e!4060908 (and tp!1842057 tp!1842056))))

(assert (=> b!6719604 (= tp!1841641 e!4060908)))

(declare-fun b!6720566 () Bool)

(assert (=> b!6720566 (= e!4060908 tp_is_empty!42347)))

(assert (= (and b!6719604 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33607 (regOne!33607 r!7292))))) b!6720566))

(assert (= (and b!6719604 ((_ is Concat!25392) (reg!16876 (regTwo!33607 (regOne!33607 r!7292))))) b!6720567))

(assert (= (and b!6719604 ((_ is Star!16547) (reg!16876 (regTwo!33607 (regOne!33607 r!7292))))) b!6720568))

(assert (= (and b!6719604 ((_ is Union!16547) (reg!16876 (regTwo!33607 (regOne!33607 r!7292))))) b!6720569))

(declare-fun b!6720573 () Bool)

(declare-fun e!4060909 () Bool)

(declare-fun tp!1842058 () Bool)

(declare-fun tp!1842060 () Bool)

(assert (=> b!6720573 (= e!4060909 (and tp!1842058 tp!1842060))))

(declare-fun b!6720572 () Bool)

(declare-fun tp!1842059 () Bool)

(assert (=> b!6720572 (= e!4060909 tp!1842059)))

(declare-fun b!6720571 () Bool)

(declare-fun tp!1842062 () Bool)

(declare-fun tp!1842061 () Bool)

(assert (=> b!6720571 (= e!4060909 (and tp!1842062 tp!1842061))))

(assert (=> b!6719613 (= tp!1841650 e!4060909)))

(declare-fun b!6720570 () Bool)

(assert (=> b!6720570 (= e!4060909 tp_is_empty!42347)))

(assert (= (and b!6719613 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33606 (regOne!33606 r!7292))))) b!6720570))

(assert (= (and b!6719613 ((_ is Concat!25392) (regOne!33607 (regTwo!33606 (regOne!33606 r!7292))))) b!6720571))

(assert (= (and b!6719613 ((_ is Star!16547) (regOne!33607 (regTwo!33606 (regOne!33606 r!7292))))) b!6720572))

(assert (= (and b!6719613 ((_ is Union!16547) (regOne!33607 (regTwo!33606 (regOne!33606 r!7292))))) b!6720573))

(declare-fun b!6720577 () Bool)

(declare-fun e!4060910 () Bool)

(declare-fun tp!1842063 () Bool)

(declare-fun tp!1842065 () Bool)

(assert (=> b!6720577 (= e!4060910 (and tp!1842063 tp!1842065))))

(declare-fun b!6720576 () Bool)

(declare-fun tp!1842064 () Bool)

(assert (=> b!6720576 (= e!4060910 tp!1842064)))

(declare-fun b!6720575 () Bool)

(declare-fun tp!1842067 () Bool)

(declare-fun tp!1842066 () Bool)

(assert (=> b!6720575 (= e!4060910 (and tp!1842067 tp!1842066))))

(assert (=> b!6719613 (= tp!1841652 e!4060910)))

(declare-fun b!6720574 () Bool)

(assert (=> b!6720574 (= e!4060910 tp_is_empty!42347)))

(assert (= (and b!6719613 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33606 (regOne!33606 r!7292))))) b!6720574))

(assert (= (and b!6719613 ((_ is Concat!25392) (regTwo!33607 (regTwo!33606 (regOne!33606 r!7292))))) b!6720575))

(assert (= (and b!6719613 ((_ is Star!16547) (regTwo!33607 (regTwo!33606 (regOne!33606 r!7292))))) b!6720576))

(assert (= (and b!6719613 ((_ is Union!16547) (regTwo!33607 (regTwo!33606 (regOne!33606 r!7292))))) b!6720577))

(declare-fun b!6720581 () Bool)

(declare-fun e!4060911 () Bool)

(declare-fun tp!1842068 () Bool)

(declare-fun tp!1842070 () Bool)

(assert (=> b!6720581 (= e!4060911 (and tp!1842068 tp!1842070))))

(declare-fun b!6720580 () Bool)

(declare-fun tp!1842069 () Bool)

(assert (=> b!6720580 (= e!4060911 tp!1842069)))

(declare-fun b!6720579 () Bool)

(declare-fun tp!1842072 () Bool)

(declare-fun tp!1842071 () Bool)

(assert (=> b!6720579 (= e!4060911 (and tp!1842072 tp!1842071))))

(assert (=> b!6719535 (= tp!1841550 e!4060911)))

(declare-fun b!6720578 () Bool)

(assert (=> b!6720578 (= e!4060911 tp_is_empty!42347)))

(assert (= (and b!6719535 ((_ is ElementMatch!16547) (regOne!33607 (h!72264 (exprs!6431 setElem!45799))))) b!6720578))

(assert (= (and b!6719535 ((_ is Concat!25392) (regOne!33607 (h!72264 (exprs!6431 setElem!45799))))) b!6720579))

(assert (= (and b!6719535 ((_ is Star!16547) (regOne!33607 (h!72264 (exprs!6431 setElem!45799))))) b!6720580))

(assert (= (and b!6719535 ((_ is Union!16547) (regOne!33607 (h!72264 (exprs!6431 setElem!45799))))) b!6720581))

(declare-fun b!6720585 () Bool)

(declare-fun e!4060912 () Bool)

(declare-fun tp!1842073 () Bool)

(declare-fun tp!1842075 () Bool)

(assert (=> b!6720585 (= e!4060912 (and tp!1842073 tp!1842075))))

(declare-fun b!6720584 () Bool)

(declare-fun tp!1842074 () Bool)

(assert (=> b!6720584 (= e!4060912 tp!1842074)))

(declare-fun b!6720583 () Bool)

(declare-fun tp!1842077 () Bool)

(declare-fun tp!1842076 () Bool)

(assert (=> b!6720583 (= e!4060912 (and tp!1842077 tp!1842076))))

(assert (=> b!6719535 (= tp!1841552 e!4060912)))

(declare-fun b!6720582 () Bool)

(assert (=> b!6720582 (= e!4060912 tp_is_empty!42347)))

(assert (= (and b!6719535 ((_ is ElementMatch!16547) (regTwo!33607 (h!72264 (exprs!6431 setElem!45799))))) b!6720582))

(assert (= (and b!6719535 ((_ is Concat!25392) (regTwo!33607 (h!72264 (exprs!6431 setElem!45799))))) b!6720583))

(assert (= (and b!6719535 ((_ is Star!16547) (regTwo!33607 (h!72264 (exprs!6431 setElem!45799))))) b!6720584))

(assert (= (and b!6719535 ((_ is Union!16547) (regTwo!33607 (h!72264 (exprs!6431 setElem!45799))))) b!6720585))

(declare-fun b!6720589 () Bool)

(declare-fun e!4060913 () Bool)

(declare-fun tp!1842078 () Bool)

(declare-fun tp!1842080 () Bool)

(assert (=> b!6720589 (= e!4060913 (and tp!1842078 tp!1842080))))

(declare-fun b!6720588 () Bool)

(declare-fun tp!1842079 () Bool)

(assert (=> b!6720588 (= e!4060913 tp!1842079)))

(declare-fun b!6720587 () Bool)

(declare-fun tp!1842082 () Bool)

(declare-fun tp!1842081 () Bool)

(assert (=> b!6720587 (= e!4060913 (and tp!1842082 tp!1842081))))

(assert (=> b!6719611 (= tp!1841654 e!4060913)))

(declare-fun b!6720586 () Bool)

(assert (=> b!6720586 (= e!4060913 tp_is_empty!42347)))

(assert (= (and b!6719611 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33606 (regOne!33606 r!7292))))) b!6720586))

(assert (= (and b!6719611 ((_ is Concat!25392) (regOne!33606 (regTwo!33606 (regOne!33606 r!7292))))) b!6720587))

(assert (= (and b!6719611 ((_ is Star!16547) (regOne!33606 (regTwo!33606 (regOne!33606 r!7292))))) b!6720588))

(assert (= (and b!6719611 ((_ is Union!16547) (regOne!33606 (regTwo!33606 (regOne!33606 r!7292))))) b!6720589))

(declare-fun b!6720593 () Bool)

(declare-fun e!4060914 () Bool)

(declare-fun tp!1842083 () Bool)

(declare-fun tp!1842085 () Bool)

(assert (=> b!6720593 (= e!4060914 (and tp!1842083 tp!1842085))))

(declare-fun b!6720592 () Bool)

(declare-fun tp!1842084 () Bool)

(assert (=> b!6720592 (= e!4060914 tp!1842084)))

(declare-fun b!6720591 () Bool)

(declare-fun tp!1842087 () Bool)

(declare-fun tp!1842086 () Bool)

(assert (=> b!6720591 (= e!4060914 (and tp!1842087 tp!1842086))))

(assert (=> b!6719611 (= tp!1841653 e!4060914)))

(declare-fun b!6720590 () Bool)

(assert (=> b!6720590 (= e!4060914 tp_is_empty!42347)))

(assert (= (and b!6719611 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33606 (regOne!33606 r!7292))))) b!6720590))

(assert (= (and b!6719611 ((_ is Concat!25392) (regTwo!33606 (regTwo!33606 (regOne!33606 r!7292))))) b!6720591))

(assert (= (and b!6719611 ((_ is Star!16547) (regTwo!33606 (regTwo!33606 (regOne!33606 r!7292))))) b!6720592))

(assert (= (and b!6719611 ((_ is Union!16547) (regTwo!33606 (regTwo!33606 (regOne!33606 r!7292))))) b!6720593))

(declare-fun b!6720597 () Bool)

(declare-fun e!4060915 () Bool)

(declare-fun tp!1842088 () Bool)

(declare-fun tp!1842090 () Bool)

(assert (=> b!6720597 (= e!4060915 (and tp!1842088 tp!1842090))))

(declare-fun b!6720596 () Bool)

(declare-fun tp!1842089 () Bool)

(assert (=> b!6720596 (= e!4060915 tp!1842089)))

(declare-fun b!6720595 () Bool)

(declare-fun tp!1842092 () Bool)

(declare-fun tp!1842091 () Bool)

(assert (=> b!6720595 (= e!4060915 (and tp!1842092 tp!1842091))))

(assert (=> b!6719526 (= tp!1841539 e!4060915)))

(declare-fun b!6720594 () Bool)

(assert (=> b!6720594 (= e!4060915 tp_is_empty!42347)))

(assert (= (and b!6719526 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33607 (regTwo!33607 r!7292))))) b!6720594))

(assert (= (and b!6719526 ((_ is Concat!25392) (regOne!33607 (regOne!33607 (regTwo!33607 r!7292))))) b!6720595))

(assert (= (and b!6719526 ((_ is Star!16547) (regOne!33607 (regOne!33607 (regTwo!33607 r!7292))))) b!6720596))

(assert (= (and b!6719526 ((_ is Union!16547) (regOne!33607 (regOne!33607 (regTwo!33607 r!7292))))) b!6720597))

(declare-fun b!6720601 () Bool)

(declare-fun e!4060916 () Bool)

(declare-fun tp!1842093 () Bool)

(declare-fun tp!1842095 () Bool)

(assert (=> b!6720601 (= e!4060916 (and tp!1842093 tp!1842095))))

(declare-fun b!6720600 () Bool)

(declare-fun tp!1842094 () Bool)

(assert (=> b!6720600 (= e!4060916 tp!1842094)))

(declare-fun b!6720599 () Bool)

(declare-fun tp!1842097 () Bool)

(declare-fun tp!1842096 () Bool)

(assert (=> b!6720599 (= e!4060916 (and tp!1842097 tp!1842096))))

(assert (=> b!6719526 (= tp!1841541 e!4060916)))

(declare-fun b!6720598 () Bool)

(assert (=> b!6720598 (= e!4060916 tp_is_empty!42347)))

(assert (= (and b!6719526 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33607 (regTwo!33607 r!7292))))) b!6720598))

(assert (= (and b!6719526 ((_ is Concat!25392) (regTwo!33607 (regOne!33607 (regTwo!33607 r!7292))))) b!6720599))

(assert (= (and b!6719526 ((_ is Star!16547) (regTwo!33607 (regOne!33607 (regTwo!33607 r!7292))))) b!6720600))

(assert (= (and b!6719526 ((_ is Union!16547) (regTwo!33607 (regOne!33607 (regTwo!33607 r!7292))))) b!6720601))

(declare-fun b!6720605 () Bool)

(declare-fun e!4060917 () Bool)

(declare-fun tp!1842098 () Bool)

(declare-fun tp!1842100 () Bool)

(assert (=> b!6720605 (= e!4060917 (and tp!1842098 tp!1842100))))

(declare-fun b!6720604 () Bool)

(declare-fun tp!1842099 () Bool)

(assert (=> b!6720604 (= e!4060917 tp!1842099)))

(declare-fun b!6720603 () Bool)

(declare-fun tp!1842102 () Bool)

(declare-fun tp!1842101 () Bool)

(assert (=> b!6720603 (= e!4060917 (and tp!1842102 tp!1842101))))

(assert (=> b!6719620 (= tp!1841661 e!4060917)))

(declare-fun b!6720602 () Bool)

(assert (=> b!6720602 (= e!4060917 tp_is_empty!42347)))

(assert (= (and b!6719620 ((_ is ElementMatch!16547) (reg!16876 (regOne!33607 (regOne!33606 r!7292))))) b!6720602))

(assert (= (and b!6719620 ((_ is Concat!25392) (reg!16876 (regOne!33607 (regOne!33606 r!7292))))) b!6720603))

(assert (= (and b!6719620 ((_ is Star!16547) (reg!16876 (regOne!33607 (regOne!33606 r!7292))))) b!6720604))

(assert (= (and b!6719620 ((_ is Union!16547) (reg!16876 (regOne!33607 (regOne!33606 r!7292))))) b!6720605))

(declare-fun b!6720609 () Bool)

(declare-fun e!4060918 () Bool)

(declare-fun tp!1842103 () Bool)

(declare-fun tp!1842105 () Bool)

(assert (=> b!6720609 (= e!4060918 (and tp!1842103 tp!1842105))))

(declare-fun b!6720608 () Bool)

(declare-fun tp!1842104 () Bool)

(assert (=> b!6720608 (= e!4060918 tp!1842104)))

(declare-fun b!6720607 () Bool)

(declare-fun tp!1842107 () Bool)

(declare-fun tp!1842106 () Bool)

(assert (=> b!6720607 (= e!4060918 (and tp!1842107 tp!1842106))))

(assert (=> b!6719533 (= tp!1841554 e!4060918)))

(declare-fun b!6720606 () Bool)

(assert (=> b!6720606 (= e!4060918 tp_is_empty!42347)))

(assert (= (and b!6719533 ((_ is ElementMatch!16547) (regOne!33606 (h!72264 (exprs!6431 setElem!45799))))) b!6720606))

(assert (= (and b!6719533 ((_ is Concat!25392) (regOne!33606 (h!72264 (exprs!6431 setElem!45799))))) b!6720607))

(assert (= (and b!6719533 ((_ is Star!16547) (regOne!33606 (h!72264 (exprs!6431 setElem!45799))))) b!6720608))

(assert (= (and b!6719533 ((_ is Union!16547) (regOne!33606 (h!72264 (exprs!6431 setElem!45799))))) b!6720609))

(declare-fun b!6720613 () Bool)

(declare-fun e!4060919 () Bool)

(declare-fun tp!1842108 () Bool)

(declare-fun tp!1842110 () Bool)

(assert (=> b!6720613 (= e!4060919 (and tp!1842108 tp!1842110))))

(declare-fun b!6720612 () Bool)

(declare-fun tp!1842109 () Bool)

(assert (=> b!6720612 (= e!4060919 tp!1842109)))

(declare-fun b!6720611 () Bool)

(declare-fun tp!1842112 () Bool)

(declare-fun tp!1842111 () Bool)

(assert (=> b!6720611 (= e!4060919 (and tp!1842112 tp!1842111))))

(assert (=> b!6719533 (= tp!1841553 e!4060919)))

(declare-fun b!6720610 () Bool)

(assert (=> b!6720610 (= e!4060919 tp_is_empty!42347)))

(assert (= (and b!6719533 ((_ is ElementMatch!16547) (regTwo!33606 (h!72264 (exprs!6431 setElem!45799))))) b!6720610))

(assert (= (and b!6719533 ((_ is Concat!25392) (regTwo!33606 (h!72264 (exprs!6431 setElem!45799))))) b!6720611))

(assert (= (and b!6719533 ((_ is Star!16547) (regTwo!33606 (h!72264 (exprs!6431 setElem!45799))))) b!6720612))

(assert (= (and b!6719533 ((_ is Union!16547) (regTwo!33606 (h!72264 (exprs!6431 setElem!45799))))) b!6720613))

(declare-fun b!6720617 () Bool)

(declare-fun e!4060920 () Bool)

(declare-fun tp!1842113 () Bool)

(declare-fun tp!1842115 () Bool)

(assert (=> b!6720617 (= e!4060920 (and tp!1842113 tp!1842115))))

(declare-fun b!6720616 () Bool)

(declare-fun tp!1842114 () Bool)

(assert (=> b!6720616 (= e!4060920 tp!1842114)))

(declare-fun b!6720615 () Bool)

(declare-fun tp!1842117 () Bool)

(declare-fun tp!1842116 () Bool)

(assert (=> b!6720615 (= e!4060920 (and tp!1842117 tp!1842116))))

(assert (=> b!6719530 (= tp!1841544 e!4060920)))

(declare-fun b!6720614 () Bool)

(assert (=> b!6720614 (= e!4060920 tp_is_empty!42347)))

(assert (= (and b!6719530 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720614))

(assert (= (and b!6719530 ((_ is Concat!25392) (regOne!33607 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720615))

(assert (= (and b!6719530 ((_ is Star!16547) (regOne!33607 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720616))

(assert (= (and b!6719530 ((_ is Union!16547) (regOne!33607 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720617))

(declare-fun b!6720621 () Bool)

(declare-fun e!4060921 () Bool)

(declare-fun tp!1842118 () Bool)

(declare-fun tp!1842120 () Bool)

(assert (=> b!6720621 (= e!4060921 (and tp!1842118 tp!1842120))))

(declare-fun b!6720620 () Bool)

(declare-fun tp!1842119 () Bool)

(assert (=> b!6720620 (= e!4060921 tp!1842119)))

(declare-fun b!6720619 () Bool)

(declare-fun tp!1842122 () Bool)

(declare-fun tp!1842121 () Bool)

(assert (=> b!6720619 (= e!4060921 (and tp!1842122 tp!1842121))))

(assert (=> b!6719530 (= tp!1841546 e!4060921)))

(declare-fun b!6720618 () Bool)

(assert (=> b!6720618 (= e!4060921 tp_is_empty!42347)))

(assert (= (and b!6719530 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720618))

(assert (= (and b!6719530 ((_ is Concat!25392) (regTwo!33607 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720619))

(assert (= (and b!6719530 ((_ is Star!16547) (regTwo!33607 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720620))

(assert (= (and b!6719530 ((_ is Union!16547) (regTwo!33607 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720621))

(declare-fun b!6720625 () Bool)

(declare-fun e!4060922 () Bool)

(declare-fun tp!1842123 () Bool)

(declare-fun tp!1842125 () Bool)

(assert (=> b!6720625 (= e!4060922 (and tp!1842123 tp!1842125))))

(declare-fun b!6720624 () Bool)

(declare-fun tp!1842124 () Bool)

(assert (=> b!6720624 (= e!4060922 tp!1842124)))

(declare-fun b!6720623 () Bool)

(declare-fun tp!1842127 () Bool)

(declare-fun tp!1842126 () Bool)

(assert (=> b!6720623 (= e!4060922 (and tp!1842127 tp!1842126))))

(assert (=> b!6719624 (= tp!1841666 e!4060922)))

(declare-fun b!6720622 () Bool)

(assert (=> b!6720622 (= e!4060922 tp_is_empty!42347)))

(assert (= (and b!6719624 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33607 (regOne!33606 r!7292))))) b!6720622))

(assert (= (and b!6719624 ((_ is Concat!25392) (reg!16876 (regTwo!33607 (regOne!33606 r!7292))))) b!6720623))

(assert (= (and b!6719624 ((_ is Star!16547) (reg!16876 (regTwo!33607 (regOne!33606 r!7292))))) b!6720624))

(assert (= (and b!6719624 ((_ is Union!16547) (reg!16876 (regTwo!33607 (regOne!33606 r!7292))))) b!6720625))

(declare-fun b!6720629 () Bool)

(declare-fun e!4060923 () Bool)

(declare-fun tp!1842128 () Bool)

(declare-fun tp!1842130 () Bool)

(assert (=> b!6720629 (= e!4060923 (and tp!1842128 tp!1842130))))

(declare-fun b!6720628 () Bool)

(declare-fun tp!1842129 () Bool)

(assert (=> b!6720628 (= e!4060923 tp!1842129)))

(declare-fun b!6720627 () Bool)

(declare-fun tp!1842132 () Bool)

(declare-fun tp!1842131 () Bool)

(assert (=> b!6720627 (= e!4060923 (and tp!1842132 tp!1842131))))

(assert (=> b!6719513 (= tp!1841522 e!4060923)))

(declare-fun b!6720626 () Bool)

(assert (=> b!6720626 (= e!4060923 tp_is_empty!42347)))

(assert (= (and b!6719513 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33606 (regTwo!33607 r!7292))))) b!6720626))

(assert (= (and b!6719513 ((_ is Concat!25392) (regOne!33607 (regOne!33606 (regTwo!33607 r!7292))))) b!6720627))

(assert (= (and b!6719513 ((_ is Star!16547) (regOne!33607 (regOne!33606 (regTwo!33607 r!7292))))) b!6720628))

(assert (= (and b!6719513 ((_ is Union!16547) (regOne!33607 (regOne!33606 (regTwo!33607 r!7292))))) b!6720629))

(declare-fun b!6720633 () Bool)

(declare-fun e!4060924 () Bool)

(declare-fun tp!1842133 () Bool)

(declare-fun tp!1842135 () Bool)

(assert (=> b!6720633 (= e!4060924 (and tp!1842133 tp!1842135))))

(declare-fun b!6720632 () Bool)

(declare-fun tp!1842134 () Bool)

(assert (=> b!6720632 (= e!4060924 tp!1842134)))

(declare-fun b!6720631 () Bool)

(declare-fun tp!1842137 () Bool)

(declare-fun tp!1842136 () Bool)

(assert (=> b!6720631 (= e!4060924 (and tp!1842137 tp!1842136))))

(assert (=> b!6719513 (= tp!1841524 e!4060924)))

(declare-fun b!6720630 () Bool)

(assert (=> b!6720630 (= e!4060924 tp_is_empty!42347)))

(assert (= (and b!6719513 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33606 (regTwo!33607 r!7292))))) b!6720630))

(assert (= (and b!6719513 ((_ is Concat!25392) (regTwo!33607 (regOne!33606 (regTwo!33607 r!7292))))) b!6720631))

(assert (= (and b!6719513 ((_ is Star!16547) (regTwo!33607 (regOne!33606 (regTwo!33607 r!7292))))) b!6720632))

(assert (= (and b!6719513 ((_ is Union!16547) (regTwo!33607 (regOne!33606 (regTwo!33607 r!7292))))) b!6720633))

(declare-fun b!6720637 () Bool)

(declare-fun e!4060925 () Bool)

(declare-fun tp!1842138 () Bool)

(declare-fun tp!1842140 () Bool)

(assert (=> b!6720637 (= e!4060925 (and tp!1842138 tp!1842140))))

(declare-fun b!6720636 () Bool)

(declare-fun tp!1842139 () Bool)

(assert (=> b!6720636 (= e!4060925 tp!1842139)))

(declare-fun b!6720635 () Bool)

(declare-fun tp!1842142 () Bool)

(declare-fun tp!1842141 () Bool)

(assert (=> b!6720635 (= e!4060925 (and tp!1842142 tp!1842141))))

(assert (=> b!6719558 (= tp!1841584 e!4060925)))

(declare-fun b!6720634 () Bool)

(assert (=> b!6720634 (= e!4060925 tp_is_empty!42347)))

(assert (= (and b!6719558 ((_ is ElementMatch!16547) (h!72264 (exprs!6431 setElem!45805)))) b!6720634))

(assert (= (and b!6719558 ((_ is Concat!25392) (h!72264 (exprs!6431 setElem!45805)))) b!6720635))

(assert (= (and b!6719558 ((_ is Star!16547) (h!72264 (exprs!6431 setElem!45805)))) b!6720636))

(assert (= (and b!6719558 ((_ is Union!16547) (h!72264 (exprs!6431 setElem!45805)))) b!6720637))

(declare-fun b!6720638 () Bool)

(declare-fun e!4060926 () Bool)

(declare-fun tp!1842143 () Bool)

(declare-fun tp!1842144 () Bool)

(assert (=> b!6720638 (= e!4060926 (and tp!1842143 tp!1842144))))

(assert (=> b!6719558 (= tp!1841585 e!4060926)))

(assert (= (and b!6719558 ((_ is Cons!65816) (t!379617 (exprs!6431 setElem!45805)))) b!6720638))

(declare-fun b!6720642 () Bool)

(declare-fun e!4060927 () Bool)

(declare-fun tp!1842145 () Bool)

(declare-fun tp!1842147 () Bool)

(assert (=> b!6720642 (= e!4060927 (and tp!1842145 tp!1842147))))

(declare-fun b!6720641 () Bool)

(declare-fun tp!1842146 () Bool)

(assert (=> b!6720641 (= e!4060927 tp!1842146)))

(declare-fun b!6720640 () Bool)

(declare-fun tp!1842149 () Bool)

(declare-fun tp!1842148 () Bool)

(assert (=> b!6720640 (= e!4060927 (and tp!1842149 tp!1842148))))

(assert (=> b!6719528 (= tp!1841548 e!4060927)))

(declare-fun b!6720639 () Bool)

(assert (=> b!6720639 (= e!4060927 tp_is_empty!42347)))

(assert (= (and b!6719528 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720639))

(assert (= (and b!6719528 ((_ is Concat!25392) (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720640))

(assert (= (and b!6719528 ((_ is Star!16547) (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720641))

(assert (= (and b!6719528 ((_ is Union!16547) (regOne!33606 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720642))

(declare-fun b!6720646 () Bool)

(declare-fun e!4060928 () Bool)

(declare-fun tp!1842150 () Bool)

(declare-fun tp!1842152 () Bool)

(assert (=> b!6720646 (= e!4060928 (and tp!1842150 tp!1842152))))

(declare-fun b!6720645 () Bool)

(declare-fun tp!1842151 () Bool)

(assert (=> b!6720645 (= e!4060928 tp!1842151)))

(declare-fun b!6720644 () Bool)

(declare-fun tp!1842154 () Bool)

(declare-fun tp!1842153 () Bool)

(assert (=> b!6720644 (= e!4060928 (and tp!1842154 tp!1842153))))

(assert (=> b!6719528 (= tp!1841547 e!4060928)))

(declare-fun b!6720643 () Bool)

(assert (=> b!6720643 (= e!4060928 tp_is_empty!42347)))

(assert (= (and b!6719528 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720643))

(assert (= (and b!6719528 ((_ is Concat!25392) (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720644))

(assert (= (and b!6719528 ((_ is Star!16547) (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720645))

(assert (= (and b!6719528 ((_ is Union!16547) (regTwo!33606 (regTwo!33607 (regTwo!33607 r!7292))))) b!6720646))

(declare-fun b!6720650 () Bool)

(declare-fun e!4060929 () Bool)

(declare-fun tp!1842155 () Bool)

(declare-fun tp!1842157 () Bool)

(assert (=> b!6720650 (= e!4060929 (and tp!1842155 tp!1842157))))

(declare-fun b!6720649 () Bool)

(declare-fun tp!1842156 () Bool)

(assert (=> b!6720649 (= e!4060929 tp!1842156)))

(declare-fun b!6720648 () Bool)

(declare-fun tp!1842159 () Bool)

(declare-fun tp!1842158 () Bool)

(assert (=> b!6720648 (= e!4060929 (and tp!1842159 tp!1842158))))

(assert (=> b!6719573 (= tp!1841600 e!4060929)))

(declare-fun b!6720647 () Bool)

(assert (=> b!6720647 (= e!4060929 tp_is_empty!42347)))

(assert (= (and b!6719573 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33606 (reg!16876 r!7292))))) b!6720647))

(assert (= (and b!6719573 ((_ is Concat!25392) (regOne!33607 (regOne!33606 (reg!16876 r!7292))))) b!6720648))

(assert (= (and b!6719573 ((_ is Star!16547) (regOne!33607 (regOne!33606 (reg!16876 r!7292))))) b!6720649))

(assert (= (and b!6719573 ((_ is Union!16547) (regOne!33607 (regOne!33606 (reg!16876 r!7292))))) b!6720650))

(declare-fun b!6720654 () Bool)

(declare-fun e!4060930 () Bool)

(declare-fun tp!1842160 () Bool)

(declare-fun tp!1842162 () Bool)

(assert (=> b!6720654 (= e!4060930 (and tp!1842160 tp!1842162))))

(declare-fun b!6720653 () Bool)

(declare-fun tp!1842161 () Bool)

(assert (=> b!6720653 (= e!4060930 tp!1842161)))

(declare-fun b!6720652 () Bool)

(declare-fun tp!1842164 () Bool)

(declare-fun tp!1842163 () Bool)

(assert (=> b!6720652 (= e!4060930 (and tp!1842164 tp!1842163))))

(assert (=> b!6719573 (= tp!1841602 e!4060930)))

(declare-fun b!6720651 () Bool)

(assert (=> b!6720651 (= e!4060930 tp_is_empty!42347)))

(assert (= (and b!6719573 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33606 (reg!16876 r!7292))))) b!6720651))

(assert (= (and b!6719573 ((_ is Concat!25392) (regTwo!33607 (regOne!33606 (reg!16876 r!7292))))) b!6720652))

(assert (= (and b!6719573 ((_ is Star!16547) (regTwo!33607 (regOne!33606 (reg!16876 r!7292))))) b!6720653))

(assert (= (and b!6719573 ((_ is Union!16547) (regTwo!33607 (regOne!33606 (reg!16876 r!7292))))) b!6720654))

(declare-fun b!6720658 () Bool)

(declare-fun e!4060931 () Bool)

(declare-fun tp!1842165 () Bool)

(declare-fun tp!1842167 () Bool)

(assert (=> b!6720658 (= e!4060931 (and tp!1842165 tp!1842167))))

(declare-fun b!6720657 () Bool)

(declare-fun tp!1842166 () Bool)

(assert (=> b!6720657 (= e!4060931 tp!1842166)))

(declare-fun b!6720656 () Bool)

(declare-fun tp!1842169 () Bool)

(declare-fun tp!1842168 () Bool)

(assert (=> b!6720656 (= e!4060931 (and tp!1842169 tp!1842168))))

(assert (=> b!6719511 (= tp!1841526 e!4060931)))

(declare-fun b!6720655 () Bool)

(assert (=> b!6720655 (= e!4060931 tp_is_empty!42347)))

(assert (= (and b!6719511 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33606 (regTwo!33607 r!7292))))) b!6720655))

(assert (= (and b!6719511 ((_ is Concat!25392) (regOne!33606 (regOne!33606 (regTwo!33607 r!7292))))) b!6720656))

(assert (= (and b!6719511 ((_ is Star!16547) (regOne!33606 (regOne!33606 (regTwo!33607 r!7292))))) b!6720657))

(assert (= (and b!6719511 ((_ is Union!16547) (regOne!33606 (regOne!33606 (regTwo!33607 r!7292))))) b!6720658))

(declare-fun b!6720662 () Bool)

(declare-fun e!4060932 () Bool)

(declare-fun tp!1842170 () Bool)

(declare-fun tp!1842172 () Bool)

(assert (=> b!6720662 (= e!4060932 (and tp!1842170 tp!1842172))))

(declare-fun b!6720661 () Bool)

(declare-fun tp!1842171 () Bool)

(assert (=> b!6720661 (= e!4060932 tp!1842171)))

(declare-fun b!6720660 () Bool)

(declare-fun tp!1842174 () Bool)

(declare-fun tp!1842173 () Bool)

(assert (=> b!6720660 (= e!4060932 (and tp!1842174 tp!1842173))))

(assert (=> b!6719511 (= tp!1841525 e!4060932)))

(declare-fun b!6720659 () Bool)

(assert (=> b!6720659 (= e!4060932 tp_is_empty!42347)))

(assert (= (and b!6719511 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33606 (regTwo!33607 r!7292))))) b!6720659))

(assert (= (and b!6719511 ((_ is Concat!25392) (regTwo!33606 (regOne!33606 (regTwo!33607 r!7292))))) b!6720660))

(assert (= (and b!6719511 ((_ is Star!16547) (regTwo!33606 (regOne!33606 (regTwo!33607 r!7292))))) b!6720661))

(assert (= (and b!6719511 ((_ is Union!16547) (regTwo!33606 (regOne!33606 (regTwo!33607 r!7292))))) b!6720662))

(declare-fun b!6720664 () Bool)

(declare-fun e!4060934 () Bool)

(declare-fun tp!1842175 () Bool)

(assert (=> b!6720664 (= e!4060934 tp!1842175)))

(declare-fun tp!1842176 () Bool)

(declare-fun e!4060933 () Bool)

(declare-fun b!6720663 () Bool)

(assert (=> b!6720663 (= e!4060933 (and (inv!84614 (h!72265 (t!379618 (t!379618 (t!379618 zl!343))))) e!4060934 tp!1842176))))

(assert (=> b!6719564 (= tp!1841594 e!4060933)))

(assert (= b!6720663 b!6720664))

(assert (= (and b!6719564 ((_ is Cons!65817) (t!379618 (t!379618 (t!379618 zl!343))))) b!6720663))

(declare-fun m!7482624 () Bool)

(assert (=> b!6720663 m!7482624))

(declare-fun b!6720668 () Bool)

(declare-fun e!4060935 () Bool)

(declare-fun tp!1842177 () Bool)

(declare-fun tp!1842179 () Bool)

(assert (=> b!6720668 (= e!4060935 (and tp!1842177 tp!1842179))))

(declare-fun b!6720667 () Bool)

(declare-fun tp!1842178 () Bool)

(assert (=> b!6720667 (= e!4060935 tp!1842178)))

(declare-fun b!6720666 () Bool)

(declare-fun tp!1842181 () Bool)

(declare-fun tp!1842180 () Bool)

(assert (=> b!6720666 (= e!4060935 (and tp!1842181 tp!1842180))))

(assert (=> b!6719571 (= tp!1841604 e!4060935)))

(declare-fun b!6720665 () Bool)

(assert (=> b!6720665 (= e!4060935 tp_is_empty!42347)))

(assert (= (and b!6719571 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33606 (reg!16876 r!7292))))) b!6720665))

(assert (= (and b!6719571 ((_ is Concat!25392) (regOne!33606 (regOne!33606 (reg!16876 r!7292))))) b!6720666))

(assert (= (and b!6719571 ((_ is Star!16547) (regOne!33606 (regOne!33606 (reg!16876 r!7292))))) b!6720667))

(assert (= (and b!6719571 ((_ is Union!16547) (regOne!33606 (regOne!33606 (reg!16876 r!7292))))) b!6720668))

(declare-fun b!6720672 () Bool)

(declare-fun e!4060936 () Bool)

(declare-fun tp!1842182 () Bool)

(declare-fun tp!1842184 () Bool)

(assert (=> b!6720672 (= e!4060936 (and tp!1842182 tp!1842184))))

(declare-fun b!6720671 () Bool)

(declare-fun tp!1842183 () Bool)

(assert (=> b!6720671 (= e!4060936 tp!1842183)))

(declare-fun b!6720670 () Bool)

(declare-fun tp!1842186 () Bool)

(declare-fun tp!1842185 () Bool)

(assert (=> b!6720670 (= e!4060936 (and tp!1842186 tp!1842185))))

(assert (=> b!6719571 (= tp!1841603 e!4060936)))

(declare-fun b!6720669 () Bool)

(assert (=> b!6720669 (= e!4060936 tp_is_empty!42347)))

(assert (= (and b!6719571 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33606 (reg!16876 r!7292))))) b!6720669))

(assert (= (and b!6719571 ((_ is Concat!25392) (regTwo!33606 (regOne!33606 (reg!16876 r!7292))))) b!6720670))

(assert (= (and b!6719571 ((_ is Star!16547) (regTwo!33606 (regOne!33606 (reg!16876 r!7292))))) b!6720671))

(assert (= (and b!6719571 ((_ is Union!16547) (regTwo!33606 (regOne!33606 (reg!16876 r!7292))))) b!6720672))

(declare-fun b!6720676 () Bool)

(declare-fun e!4060937 () Bool)

(declare-fun tp!1842187 () Bool)

(declare-fun tp!1842189 () Bool)

(assert (=> b!6720676 (= e!4060937 (and tp!1842187 tp!1842189))))

(declare-fun b!6720675 () Bool)

(declare-fun tp!1842188 () Bool)

(assert (=> b!6720675 (= e!4060937 tp!1842188)))

(declare-fun b!6720674 () Bool)

(declare-fun tp!1842191 () Bool)

(declare-fun tp!1842190 () Bool)

(assert (=> b!6720674 (= e!4060937 (and tp!1842191 tp!1842190))))

(assert (=> b!6719536 (= tp!1841555 e!4060937)))

(declare-fun b!6720673 () Bool)

(assert (=> b!6720673 (= e!4060937 tp_is_empty!42347)))

(assert (= (and b!6719536 ((_ is ElementMatch!16547) (h!72264 (t!379617 (exprs!6431 setElem!45799))))) b!6720673))

(assert (= (and b!6719536 ((_ is Concat!25392) (h!72264 (t!379617 (exprs!6431 setElem!45799))))) b!6720674))

(assert (= (and b!6719536 ((_ is Star!16547) (h!72264 (t!379617 (exprs!6431 setElem!45799))))) b!6720675))

(assert (= (and b!6719536 ((_ is Union!16547) (h!72264 (t!379617 (exprs!6431 setElem!45799))))) b!6720676))

(declare-fun b!6720677 () Bool)

(declare-fun e!4060938 () Bool)

(declare-fun tp!1842192 () Bool)

(declare-fun tp!1842193 () Bool)

(assert (=> b!6720677 (= e!4060938 (and tp!1842192 tp!1842193))))

(assert (=> b!6719536 (= tp!1841556 e!4060938)))

(assert (= (and b!6719536 ((_ is Cons!65816) (t!379617 (t!379617 (exprs!6431 setElem!45799))))) b!6720677))

(declare-fun b!6720681 () Bool)

(declare-fun e!4060939 () Bool)

(declare-fun tp!1842194 () Bool)

(declare-fun tp!1842196 () Bool)

(assert (=> b!6720681 (= e!4060939 (and tp!1842194 tp!1842196))))

(declare-fun b!6720680 () Bool)

(declare-fun tp!1842195 () Bool)

(assert (=> b!6720680 (= e!4060939 tp!1842195)))

(declare-fun b!6720679 () Bool)

(declare-fun tp!1842198 () Bool)

(declare-fun tp!1842197 () Bool)

(assert (=> b!6720679 (= e!4060939 (and tp!1842198 tp!1842197))))

(assert (=> b!6719580 (= tp!1841611 e!4060939)))

(declare-fun b!6720678 () Bool)

(assert (=> b!6720678 (= e!4060939 tp_is_empty!42347)))

(assert (= (and b!6719580 ((_ is ElementMatch!16547) (reg!16876 (regOne!33607 (reg!16876 r!7292))))) b!6720678))

(assert (= (and b!6719580 ((_ is Concat!25392) (reg!16876 (regOne!33607 (reg!16876 r!7292))))) b!6720679))

(assert (= (and b!6719580 ((_ is Star!16547) (reg!16876 (regOne!33607 (reg!16876 r!7292))))) b!6720680))

(assert (= (and b!6719580 ((_ is Union!16547) (reg!16876 (regOne!33607 (reg!16876 r!7292))))) b!6720681))

(declare-fun b!6720685 () Bool)

(declare-fun e!4060940 () Bool)

(declare-fun tp!1842199 () Bool)

(declare-fun tp!1842201 () Bool)

(assert (=> b!6720685 (= e!4060940 (and tp!1842199 tp!1842201))))

(declare-fun b!6720684 () Bool)

(declare-fun tp!1842200 () Bool)

(assert (=> b!6720684 (= e!4060940 tp!1842200)))

(declare-fun b!6720683 () Bool)

(declare-fun tp!1842203 () Bool)

(declare-fun tp!1842202 () Bool)

(assert (=> b!6720683 (= e!4060940 (and tp!1842203 tp!1842202))))

(assert (=> b!6719588 (= tp!1841621 e!4060940)))

(declare-fun b!6720682 () Bool)

(assert (=> b!6720682 (= e!4060940 tp_is_empty!42347)))

(assert (= (and b!6719588 ((_ is ElementMatch!16547) (reg!16876 (reg!16876 (regOne!33607 r!7292))))) b!6720682))

(assert (= (and b!6719588 ((_ is Concat!25392) (reg!16876 (reg!16876 (regOne!33607 r!7292))))) b!6720683))

(assert (= (and b!6719588 ((_ is Star!16547) (reg!16876 (reg!16876 (regOne!33607 r!7292))))) b!6720684))

(assert (= (and b!6719588 ((_ is Union!16547) (reg!16876 (reg!16876 (regOne!33607 r!7292))))) b!6720685))

(declare-fun b!6720689 () Bool)

(declare-fun e!4060941 () Bool)

(declare-fun tp!1842204 () Bool)

(declare-fun tp!1842206 () Bool)

(assert (=> b!6720689 (= e!4060941 (and tp!1842204 tp!1842206))))

(declare-fun b!6720688 () Bool)

(declare-fun tp!1842205 () Bool)

(assert (=> b!6720688 (= e!4060941 tp!1842205)))

(declare-fun b!6720687 () Bool)

(declare-fun tp!1842208 () Bool)

(declare-fun tp!1842207 () Bool)

(assert (=> b!6720687 (= e!4060941 (and tp!1842208 tp!1842207))))

(assert (=> b!6719597 (= tp!1841630 e!4060941)))

(declare-fun b!6720686 () Bool)

(assert (=> b!6720686 (= e!4060941 tp_is_empty!42347)))

(assert (= (and b!6719597 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33606 (regOne!33607 r!7292))))) b!6720686))

(assert (= (and b!6719597 ((_ is Concat!25392) (regOne!33607 (regTwo!33606 (regOne!33607 r!7292))))) b!6720687))

(assert (= (and b!6719597 ((_ is Star!16547) (regOne!33607 (regTwo!33606 (regOne!33607 r!7292))))) b!6720688))

(assert (= (and b!6719597 ((_ is Union!16547) (regOne!33607 (regTwo!33606 (regOne!33607 r!7292))))) b!6720689))

(declare-fun b!6720693 () Bool)

(declare-fun e!4060942 () Bool)

(declare-fun tp!1842209 () Bool)

(declare-fun tp!1842211 () Bool)

(assert (=> b!6720693 (= e!4060942 (and tp!1842209 tp!1842211))))

(declare-fun b!6720692 () Bool)

(declare-fun tp!1842210 () Bool)

(assert (=> b!6720692 (= e!4060942 tp!1842210)))

(declare-fun b!6720691 () Bool)

(declare-fun tp!1842213 () Bool)

(declare-fun tp!1842212 () Bool)

(assert (=> b!6720691 (= e!4060942 (and tp!1842213 tp!1842212))))

(assert (=> b!6719597 (= tp!1841632 e!4060942)))

(declare-fun b!6720690 () Bool)

(assert (=> b!6720690 (= e!4060942 tp_is_empty!42347)))

(assert (= (and b!6719597 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33606 (regOne!33607 r!7292))))) b!6720690))

(assert (= (and b!6719597 ((_ is Concat!25392) (regTwo!33607 (regTwo!33606 (regOne!33607 r!7292))))) b!6720691))

(assert (= (and b!6719597 ((_ is Star!16547) (regTwo!33607 (regTwo!33606 (regOne!33607 r!7292))))) b!6720692))

(assert (= (and b!6719597 ((_ is Union!16547) (regTwo!33607 (regTwo!33606 (regOne!33607 r!7292))))) b!6720693))

(declare-fun b!6720697 () Bool)

(declare-fun e!4060943 () Bool)

(declare-fun tp!1842214 () Bool)

(declare-fun tp!1842216 () Bool)

(assert (=> b!6720697 (= e!4060943 (and tp!1842214 tp!1842216))))

(declare-fun b!6720696 () Bool)

(declare-fun tp!1842215 () Bool)

(assert (=> b!6720696 (= e!4060943 tp!1842215)))

(declare-fun b!6720695 () Bool)

(declare-fun tp!1842218 () Bool)

(declare-fun tp!1842217 () Bool)

(assert (=> b!6720695 (= e!4060943 (and tp!1842218 tp!1842217))))

(assert (=> b!6719592 (= tp!1841626 e!4060943)))

(declare-fun b!6720694 () Bool)

(assert (=> b!6720694 (= e!4060943 tp_is_empty!42347)))

(assert (= (and b!6719592 ((_ is ElementMatch!16547) (reg!16876 (regOne!33606 (regOne!33607 r!7292))))) b!6720694))

(assert (= (and b!6719592 ((_ is Concat!25392) (reg!16876 (regOne!33606 (regOne!33607 r!7292))))) b!6720695))

(assert (= (and b!6719592 ((_ is Star!16547) (reg!16876 (regOne!33606 (regOne!33607 r!7292))))) b!6720696))

(assert (= (and b!6719592 ((_ is Union!16547) (reg!16876 (regOne!33606 (regOne!33607 r!7292))))) b!6720697))

(declare-fun b!6720701 () Bool)

(declare-fun e!4060944 () Bool)

(declare-fun tp!1842219 () Bool)

(declare-fun tp!1842221 () Bool)

(assert (=> b!6720701 (= e!4060944 (and tp!1842219 tp!1842221))))

(declare-fun b!6720700 () Bool)

(declare-fun tp!1842220 () Bool)

(assert (=> b!6720700 (= e!4060944 tp!1842220)))

(declare-fun b!6720699 () Bool)

(declare-fun tp!1842223 () Bool)

(declare-fun tp!1842222 () Bool)

(assert (=> b!6720699 (= e!4060944 (and tp!1842223 tp!1842222))))

(assert (=> b!6719552 (= tp!1841575 e!4060944)))

(declare-fun b!6720698 () Bool)

(assert (=> b!6720698 (= e!4060944 tp_is_empty!42347)))

(assert (= (and b!6719552 ((_ is ElementMatch!16547) (reg!16876 (regOne!33607 (regTwo!33606 r!7292))))) b!6720698))

(assert (= (and b!6719552 ((_ is Concat!25392) (reg!16876 (regOne!33607 (regTwo!33606 r!7292))))) b!6720699))

(assert (= (and b!6719552 ((_ is Star!16547) (reg!16876 (regOne!33607 (regTwo!33606 r!7292))))) b!6720700))

(assert (= (and b!6719552 ((_ is Union!16547) (reg!16876 (regOne!33607 (regTwo!33606 r!7292))))) b!6720701))

(declare-fun b!6720705 () Bool)

(declare-fun e!4060945 () Bool)

(declare-fun tp!1842224 () Bool)

(declare-fun tp!1842226 () Bool)

(assert (=> b!6720705 (= e!4060945 (and tp!1842224 tp!1842226))))

(declare-fun b!6720704 () Bool)

(declare-fun tp!1842225 () Bool)

(assert (=> b!6720704 (= e!4060945 tp!1842225)))

(declare-fun b!6720703 () Bool)

(declare-fun tp!1842228 () Bool)

(declare-fun tp!1842227 () Bool)

(assert (=> b!6720703 (= e!4060945 (and tp!1842228 tp!1842227))))

(assert (=> b!6719601 (= tp!1841635 e!4060945)))

(declare-fun b!6720702 () Bool)

(assert (=> b!6720702 (= e!4060945 tp_is_empty!42347)))

(assert (= (and b!6719601 ((_ is ElementMatch!16547) (regOne!33607 (regOne!33607 (regOne!33607 r!7292))))) b!6720702))

(assert (= (and b!6719601 ((_ is Concat!25392) (regOne!33607 (regOne!33607 (regOne!33607 r!7292))))) b!6720703))

(assert (= (and b!6719601 ((_ is Star!16547) (regOne!33607 (regOne!33607 (regOne!33607 r!7292))))) b!6720704))

(assert (= (and b!6719601 ((_ is Union!16547) (regOne!33607 (regOne!33607 (regOne!33607 r!7292))))) b!6720705))

(declare-fun b!6720709 () Bool)

(declare-fun e!4060946 () Bool)

(declare-fun tp!1842229 () Bool)

(declare-fun tp!1842231 () Bool)

(assert (=> b!6720709 (= e!4060946 (and tp!1842229 tp!1842231))))

(declare-fun b!6720708 () Bool)

(declare-fun tp!1842230 () Bool)

(assert (=> b!6720708 (= e!4060946 tp!1842230)))

(declare-fun b!6720707 () Bool)

(declare-fun tp!1842233 () Bool)

(declare-fun tp!1842232 () Bool)

(assert (=> b!6720707 (= e!4060946 (and tp!1842233 tp!1842232))))

(assert (=> b!6719601 (= tp!1841637 e!4060946)))

(declare-fun b!6720706 () Bool)

(assert (=> b!6720706 (= e!4060946 tp_is_empty!42347)))

(assert (= (and b!6719601 ((_ is ElementMatch!16547) (regTwo!33607 (regOne!33607 (regOne!33607 r!7292))))) b!6720706))

(assert (= (and b!6719601 ((_ is Concat!25392) (regTwo!33607 (regOne!33607 (regOne!33607 r!7292))))) b!6720707))

(assert (= (and b!6719601 ((_ is Star!16547) (regTwo!33607 (regOne!33607 (regOne!33607 r!7292))))) b!6720708))

(assert (= (and b!6719601 ((_ is Union!16547) (regTwo!33607 (regOne!33607 (regOne!33607 r!7292))))) b!6720709))

(declare-fun b!6720713 () Bool)

(declare-fun e!4060947 () Bool)

(declare-fun tp!1842234 () Bool)

(declare-fun tp!1842236 () Bool)

(assert (=> b!6720713 (= e!4060947 (and tp!1842234 tp!1842236))))

(declare-fun b!6720712 () Bool)

(declare-fun tp!1842235 () Bool)

(assert (=> b!6720712 (= e!4060947 tp!1842235)))

(declare-fun b!6720711 () Bool)

(declare-fun tp!1842238 () Bool)

(declare-fun tp!1842237 () Bool)

(assert (=> b!6720711 (= e!4060947 (and tp!1842238 tp!1842237))))

(assert (=> b!6719538 (= tp!1841561 e!4060947)))

(declare-fun b!6720710 () Bool)

(assert (=> b!6720710 (= e!4060947 tp_is_empty!42347)))

(assert (= (and b!6719538 ((_ is ElementMatch!16547) (regOne!33606 (reg!16876 (regTwo!33606 r!7292))))) b!6720710))

(assert (= (and b!6719538 ((_ is Concat!25392) (regOne!33606 (reg!16876 (regTwo!33606 r!7292))))) b!6720711))

(assert (= (and b!6719538 ((_ is Star!16547) (regOne!33606 (reg!16876 (regTwo!33606 r!7292))))) b!6720712))

(assert (= (and b!6719538 ((_ is Union!16547) (regOne!33606 (reg!16876 (regTwo!33606 r!7292))))) b!6720713))

(declare-fun b!6720717 () Bool)

(declare-fun e!4060948 () Bool)

(declare-fun tp!1842239 () Bool)

(declare-fun tp!1842241 () Bool)

(assert (=> b!6720717 (= e!4060948 (and tp!1842239 tp!1842241))))

(declare-fun b!6720716 () Bool)

(declare-fun tp!1842240 () Bool)

(assert (=> b!6720716 (= e!4060948 tp!1842240)))

(declare-fun b!6720715 () Bool)

(declare-fun tp!1842243 () Bool)

(declare-fun tp!1842242 () Bool)

(assert (=> b!6720715 (= e!4060948 (and tp!1842243 tp!1842242))))

(assert (=> b!6719538 (= tp!1841560 e!4060948)))

(declare-fun b!6720714 () Bool)

(assert (=> b!6720714 (= e!4060948 tp_is_empty!42347)))

(assert (= (and b!6719538 ((_ is ElementMatch!16547) (regTwo!33606 (reg!16876 (regTwo!33606 r!7292))))) b!6720714))

(assert (= (and b!6719538 ((_ is Concat!25392) (regTwo!33606 (reg!16876 (regTwo!33606 r!7292))))) b!6720715))

(assert (= (and b!6719538 ((_ is Star!16547) (regTwo!33606 (reg!16876 (regTwo!33606 r!7292))))) b!6720716))

(assert (= (and b!6719538 ((_ is Union!16547) (regTwo!33606 (reg!16876 (regTwo!33606 r!7292))))) b!6720717))

(declare-fun b!6720721 () Bool)

(declare-fun e!4060949 () Bool)

(declare-fun tp!1842244 () Bool)

(declare-fun tp!1842246 () Bool)

(assert (=> b!6720721 (= e!4060949 (and tp!1842244 tp!1842246))))

(declare-fun b!6720720 () Bool)

(declare-fun tp!1842245 () Bool)

(assert (=> b!6720720 (= e!4060949 tp!1842245)))

(declare-fun b!6720719 () Bool)

(declare-fun tp!1842248 () Bool)

(declare-fun tp!1842247 () Bool)

(assert (=> b!6720719 (= e!4060949 (and tp!1842248 tp!1842247))))

(assert (=> b!6719547 (= tp!1841568 e!4060949)))

(declare-fun b!6720718 () Bool)

(assert (=> b!6720718 (= e!4060949 tp_is_empty!42347)))

(assert (= (and b!6719547 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720718))

(assert (= (and b!6719547 ((_ is Concat!25392) (reg!16876 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720719))

(assert (= (and b!6719547 ((_ is Star!16547) (reg!16876 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720720))

(assert (= (and b!6719547 ((_ is Union!16547) (reg!16876 (regTwo!33606 (regTwo!33606 r!7292))))) b!6720721))

(declare-fun b!6720725 () Bool)

(declare-fun e!4060950 () Bool)

(declare-fun tp!1842249 () Bool)

(declare-fun tp!1842251 () Bool)

(assert (=> b!6720725 (= e!4060950 (and tp!1842249 tp!1842251))))

(declare-fun b!6720724 () Bool)

(declare-fun tp!1842250 () Bool)

(assert (=> b!6720724 (= e!4060950 tp!1842250)))

(declare-fun b!6720723 () Bool)

(declare-fun tp!1842253 () Bool)

(declare-fun tp!1842252 () Bool)

(assert (=> b!6720723 (= e!4060950 (and tp!1842253 tp!1842252))))

(assert (=> b!6719599 (= tp!1841639 e!4060950)))

(declare-fun b!6720722 () Bool)

(assert (=> b!6720722 (= e!4060950 tp_is_empty!42347)))

(assert (= (and b!6719599 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33607 (regOne!33607 r!7292))))) b!6720722))

(assert (= (and b!6719599 ((_ is Concat!25392) (regOne!33606 (regOne!33607 (regOne!33607 r!7292))))) b!6720723))

(assert (= (and b!6719599 ((_ is Star!16547) (regOne!33606 (regOne!33607 (regOne!33607 r!7292))))) b!6720724))

(assert (= (and b!6719599 ((_ is Union!16547) (regOne!33606 (regOne!33607 (regOne!33607 r!7292))))) b!6720725))

(declare-fun b!6720729 () Bool)

(declare-fun e!4060951 () Bool)

(declare-fun tp!1842254 () Bool)

(declare-fun tp!1842256 () Bool)

(assert (=> b!6720729 (= e!4060951 (and tp!1842254 tp!1842256))))

(declare-fun b!6720728 () Bool)

(declare-fun tp!1842255 () Bool)

(assert (=> b!6720728 (= e!4060951 tp!1842255)))

(declare-fun b!6720727 () Bool)

(declare-fun tp!1842258 () Bool)

(declare-fun tp!1842257 () Bool)

(assert (=> b!6720727 (= e!4060951 (and tp!1842258 tp!1842257))))

(assert (=> b!6719599 (= tp!1841638 e!4060951)))

(declare-fun b!6720726 () Bool)

(assert (=> b!6720726 (= e!4060951 tp_is_empty!42347)))

(assert (= (and b!6719599 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))))) b!6720726))

(assert (= (and b!6719599 ((_ is Concat!25392) (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))))) b!6720727))

(assert (= (and b!6719599 ((_ is Star!16547) (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))))) b!6720728))

(assert (= (and b!6719599 ((_ is Union!16547) (regTwo!33606 (regOne!33607 (regOne!33607 r!7292))))) b!6720729))

(declare-fun b!6720733 () Bool)

(declare-fun e!4060952 () Bool)

(declare-fun tp!1842259 () Bool)

(declare-fun tp!1842261 () Bool)

(assert (=> b!6720733 (= e!4060952 (and tp!1842259 tp!1842261))))

(declare-fun b!6720732 () Bool)

(declare-fun tp!1842260 () Bool)

(assert (=> b!6720732 (= e!4060952 tp!1842260)))

(declare-fun b!6720731 () Bool)

(declare-fun tp!1842263 () Bool)

(declare-fun tp!1842262 () Bool)

(assert (=> b!6720731 (= e!4060952 (and tp!1842263 tp!1842262))))

(assert (=> b!6719608 (= tp!1841646 e!4060952)))

(declare-fun b!6720730 () Bool)

(assert (=> b!6720730 (= e!4060952 tp_is_empty!42347)))

(assert (= (and b!6719608 ((_ is ElementMatch!16547) (reg!16876 (regOne!33606 (regOne!33606 r!7292))))) b!6720730))

(assert (= (and b!6719608 ((_ is Concat!25392) (reg!16876 (regOne!33606 (regOne!33606 r!7292))))) b!6720731))

(assert (= (and b!6719608 ((_ is Star!16547) (reg!16876 (regOne!33606 (regOne!33606 r!7292))))) b!6720732))

(assert (= (and b!6719608 ((_ is Union!16547) (reg!16876 (regOne!33606 (regOne!33606 r!7292))))) b!6720733))

(declare-fun b!6720737 () Bool)

(declare-fun e!4060953 () Bool)

(declare-fun tp!1842264 () Bool)

(declare-fun tp!1842266 () Bool)

(assert (=> b!6720737 (= e!4060953 (and tp!1842264 tp!1842266))))

(declare-fun b!6720736 () Bool)

(declare-fun tp!1842265 () Bool)

(assert (=> b!6720736 (= e!4060953 tp!1842265)))

(declare-fun b!6720735 () Bool)

(declare-fun tp!1842268 () Bool)

(declare-fun tp!1842267 () Bool)

(assert (=> b!6720735 (= e!4060953 (and tp!1842268 tp!1842267))))

(assert (=> b!6719617 (= tp!1841655 e!4060953)))

(declare-fun b!6720734 () Bool)

(assert (=> b!6720734 (= e!4060953 tp_is_empty!42347)))

(assert (= (and b!6719617 ((_ is ElementMatch!16547) (regOne!33607 (reg!16876 (regOne!33606 r!7292))))) b!6720734))

(assert (= (and b!6719617 ((_ is Concat!25392) (regOne!33607 (reg!16876 (regOne!33606 r!7292))))) b!6720735))

(assert (= (and b!6719617 ((_ is Star!16547) (regOne!33607 (reg!16876 (regOne!33606 r!7292))))) b!6720736))

(assert (= (and b!6719617 ((_ is Union!16547) (regOne!33607 (reg!16876 (regOne!33606 r!7292))))) b!6720737))

(declare-fun b!6720741 () Bool)

(declare-fun e!4060954 () Bool)

(declare-fun tp!1842269 () Bool)

(declare-fun tp!1842271 () Bool)

(assert (=> b!6720741 (= e!4060954 (and tp!1842269 tp!1842271))))

(declare-fun b!6720740 () Bool)

(declare-fun tp!1842270 () Bool)

(assert (=> b!6720740 (= e!4060954 tp!1842270)))

(declare-fun b!6720739 () Bool)

(declare-fun tp!1842273 () Bool)

(declare-fun tp!1842272 () Bool)

(assert (=> b!6720739 (= e!4060954 (and tp!1842273 tp!1842272))))

(assert (=> b!6719617 (= tp!1841657 e!4060954)))

(declare-fun b!6720738 () Bool)

(assert (=> b!6720738 (= e!4060954 tp_is_empty!42347)))

(assert (= (and b!6719617 ((_ is ElementMatch!16547) (regTwo!33607 (reg!16876 (regOne!33606 r!7292))))) b!6720738))

(assert (= (and b!6719617 ((_ is Concat!25392) (regTwo!33607 (reg!16876 (regOne!33606 r!7292))))) b!6720739))

(assert (= (and b!6719617 ((_ is Star!16547) (regTwo!33607 (reg!16876 (regOne!33606 r!7292))))) b!6720740))

(assert (= (and b!6719617 ((_ is Union!16547) (regTwo!33607 (reg!16876 (regOne!33606 r!7292))))) b!6720741))

(declare-fun b!6720745 () Bool)

(declare-fun e!4060955 () Bool)

(declare-fun tp!1842274 () Bool)

(declare-fun tp!1842276 () Bool)

(assert (=> b!6720745 (= e!4060955 (and tp!1842274 tp!1842276))))

(declare-fun b!6720744 () Bool)

(declare-fun tp!1842275 () Bool)

(assert (=> b!6720744 (= e!4060955 tp!1842275)))

(declare-fun b!6720743 () Bool)

(declare-fun tp!1842278 () Bool)

(declare-fun tp!1842277 () Bool)

(assert (=> b!6720743 (= e!4060955 (and tp!1842278 tp!1842277))))

(assert (=> b!6719521 (= tp!1841535 e!4060955)))

(declare-fun b!6720742 () Bool)

(assert (=> b!6720742 (= e!4060955 tp_is_empty!42347)))

(assert (= (and b!6719521 ((_ is ElementMatch!16547) (reg!16876 (reg!16876 (regTwo!33607 r!7292))))) b!6720742))

(assert (= (and b!6719521 ((_ is Concat!25392) (reg!16876 (reg!16876 (regTwo!33607 r!7292))))) b!6720743))

(assert (= (and b!6719521 ((_ is Star!16547) (reg!16876 (reg!16876 (regTwo!33607 r!7292))))) b!6720744))

(assert (= (and b!6719521 ((_ is Union!16547) (reg!16876 (reg!16876 (regTwo!33607 r!7292))))) b!6720745))

(declare-fun b!6720749 () Bool)

(declare-fun e!4060956 () Bool)

(declare-fun tp!1842279 () Bool)

(declare-fun tp!1842281 () Bool)

(assert (=> b!6720749 (= e!4060956 (and tp!1842279 tp!1842281))))

(declare-fun b!6720748 () Bool)

(declare-fun tp!1842280 () Bool)

(assert (=> b!6720748 (= e!4060956 tp!1842280)))

(declare-fun b!6720747 () Bool)

(declare-fun tp!1842283 () Bool)

(declare-fun tp!1842282 () Bool)

(assert (=> b!6720747 (= e!4060956 (and tp!1842283 tp!1842282))))

(assert (=> b!6719615 (= tp!1841659 e!4060956)))

(declare-fun b!6720746 () Bool)

(assert (=> b!6720746 (= e!4060956 tp_is_empty!42347)))

(assert (= (and b!6719615 ((_ is ElementMatch!16547) (regOne!33606 (reg!16876 (regOne!33606 r!7292))))) b!6720746))

(assert (= (and b!6719615 ((_ is Concat!25392) (regOne!33606 (reg!16876 (regOne!33606 r!7292))))) b!6720747))

(assert (= (and b!6719615 ((_ is Star!16547) (regOne!33606 (reg!16876 (regOne!33606 r!7292))))) b!6720748))

(assert (= (and b!6719615 ((_ is Union!16547) (regOne!33606 (reg!16876 (regOne!33606 r!7292))))) b!6720749))

(declare-fun b!6720753 () Bool)

(declare-fun e!4060957 () Bool)

(declare-fun tp!1842284 () Bool)

(declare-fun tp!1842286 () Bool)

(assert (=> b!6720753 (= e!4060957 (and tp!1842284 tp!1842286))))

(declare-fun b!6720752 () Bool)

(declare-fun tp!1842285 () Bool)

(assert (=> b!6720752 (= e!4060957 tp!1842285)))

(declare-fun b!6720751 () Bool)

(declare-fun tp!1842288 () Bool)

(declare-fun tp!1842287 () Bool)

(assert (=> b!6720751 (= e!4060957 (and tp!1842288 tp!1842287))))

(assert (=> b!6719615 (= tp!1841658 e!4060957)))

(declare-fun b!6720750 () Bool)

(assert (=> b!6720750 (= e!4060957 tp_is_empty!42347)))

(assert (= (and b!6719615 ((_ is ElementMatch!16547) (regTwo!33606 (reg!16876 (regOne!33606 r!7292))))) b!6720750))

(assert (= (and b!6719615 ((_ is Concat!25392) (regTwo!33606 (reg!16876 (regOne!33606 r!7292))))) b!6720751))

(assert (= (and b!6719615 ((_ is Star!16547) (regTwo!33606 (reg!16876 (regOne!33606 r!7292))))) b!6720752))

(assert (= (and b!6719615 ((_ is Union!16547) (regTwo!33606 (reg!16876 (regOne!33606 r!7292))))) b!6720753))

(declare-fun b!6720755 () Bool)

(declare-fun e!4060959 () Bool)

(declare-fun tp!1842289 () Bool)

(assert (=> b!6720755 (= e!4060959 tp!1842289)))

(declare-fun tp!1842290 () Bool)

(declare-fun b!6720754 () Bool)

(declare-fun e!4060958 () Bool)

(assert (=> b!6720754 (= e!4060958 (and (inv!84614 (h!72265 (t!379618 res!2749805))) e!4060959 tp!1842290))))

(assert (=> b!6719361 (= tp!1841475 e!4060958)))

(assert (= b!6720754 b!6720755))

(assert (= (and b!6719361 ((_ is Cons!65817) (t!379618 res!2749805))) b!6720754))

(declare-fun m!7482626 () Bool)

(assert (=> b!6720754 m!7482626))

(declare-fun b!6720759 () Bool)

(declare-fun e!4060960 () Bool)

(declare-fun tp!1842291 () Bool)

(declare-fun tp!1842293 () Bool)

(assert (=> b!6720759 (= e!4060960 (and tp!1842291 tp!1842293))))

(declare-fun b!6720758 () Bool)

(declare-fun tp!1842292 () Bool)

(assert (=> b!6720758 (= e!4060960 tp!1842292)))

(declare-fun b!6720757 () Bool)

(declare-fun tp!1842295 () Bool)

(declare-fun tp!1842294 () Bool)

(assert (=> b!6720757 (= e!4060960 (and tp!1842295 tp!1842294))))

(assert (=> b!6719525 (= tp!1841540 e!4060960)))

(declare-fun b!6720756 () Bool)

(assert (=> b!6720756 (= e!4060960 tp_is_empty!42347)))

(assert (= (and b!6719525 ((_ is ElementMatch!16547) (reg!16876 (regOne!33607 (regTwo!33607 r!7292))))) b!6720756))

(assert (= (and b!6719525 ((_ is Concat!25392) (reg!16876 (regOne!33607 (regTwo!33607 r!7292))))) b!6720757))

(assert (= (and b!6719525 ((_ is Star!16547) (reg!16876 (regOne!33607 (regTwo!33607 r!7292))))) b!6720758))

(assert (= (and b!6719525 ((_ is Union!16547) (reg!16876 (regOne!33607 (regTwo!33607 r!7292))))) b!6720759))

(declare-fun b!6720763 () Bool)

(declare-fun e!4060961 () Bool)

(declare-fun tp!1842296 () Bool)

(declare-fun tp!1842298 () Bool)

(assert (=> b!6720763 (= e!4060961 (and tp!1842296 tp!1842298))))

(declare-fun b!6720762 () Bool)

(declare-fun tp!1842297 () Bool)

(assert (=> b!6720762 (= e!4060961 tp!1842297)))

(declare-fun b!6720761 () Bool)

(declare-fun tp!1842300 () Bool)

(declare-fun tp!1842299 () Bool)

(assert (=> b!6720761 (= e!4060961 (and tp!1842300 tp!1842299))))

(assert (=> b!6719619 (= tp!1841664 e!4060961)))

(declare-fun b!6720760 () Bool)

(assert (=> b!6720760 (= e!4060961 tp_is_empty!42347)))

(assert (= (and b!6719619 ((_ is ElementMatch!16547) (regOne!33606 (regOne!33607 (regOne!33606 r!7292))))) b!6720760))

(assert (= (and b!6719619 ((_ is Concat!25392) (regOne!33606 (regOne!33607 (regOne!33606 r!7292))))) b!6720761))

(assert (= (and b!6719619 ((_ is Star!16547) (regOne!33606 (regOne!33607 (regOne!33606 r!7292))))) b!6720762))

(assert (= (and b!6719619 ((_ is Union!16547) (regOne!33606 (regOne!33607 (regOne!33606 r!7292))))) b!6720763))

(declare-fun b!6720767 () Bool)

(declare-fun e!4060962 () Bool)

(declare-fun tp!1842301 () Bool)

(declare-fun tp!1842303 () Bool)

(assert (=> b!6720767 (= e!4060962 (and tp!1842301 tp!1842303))))

(declare-fun b!6720766 () Bool)

(declare-fun tp!1842302 () Bool)

(assert (=> b!6720766 (= e!4060962 tp!1842302)))

(declare-fun b!6720765 () Bool)

(declare-fun tp!1842305 () Bool)

(declare-fun tp!1842304 () Bool)

(assert (=> b!6720765 (= e!4060962 (and tp!1842305 tp!1842304))))

(assert (=> b!6719619 (= tp!1841663 e!4060962)))

(declare-fun b!6720764 () Bool)

(assert (=> b!6720764 (= e!4060962 tp_is_empty!42347)))

(assert (= (and b!6719619 ((_ is ElementMatch!16547) (regTwo!33606 (regOne!33607 (regOne!33606 r!7292))))) b!6720764))

(assert (= (and b!6719619 ((_ is Concat!25392) (regTwo!33606 (regOne!33607 (regOne!33606 r!7292))))) b!6720765))

(assert (= (and b!6719619 ((_ is Star!16547) (regTwo!33606 (regOne!33607 (regOne!33606 r!7292))))) b!6720766))

(assert (= (and b!6719619 ((_ is Union!16547) (regTwo!33606 (regOne!33607 (regOne!33606 r!7292))))) b!6720767))

(declare-fun b!6720771 () Bool)

(declare-fun e!4060963 () Bool)

(declare-fun tp!1842306 () Bool)

(declare-fun tp!1842308 () Bool)

(assert (=> b!6720771 (= e!4060963 (and tp!1842306 tp!1842308))))

(declare-fun b!6720770 () Bool)

(declare-fun tp!1842307 () Bool)

(assert (=> b!6720770 (= e!4060963 tp!1842307)))

(declare-fun b!6720769 () Bool)

(declare-fun tp!1842310 () Bool)

(declare-fun tp!1842309 () Bool)

(assert (=> b!6720769 (= e!4060963 (and tp!1842310 tp!1842309))))

(assert (=> b!6719517 (= tp!1841527 e!4060963)))

(declare-fun b!6720768 () Bool)

(assert (=> b!6720768 (= e!4060963 tp_is_empty!42347)))

(assert (= (and b!6719517 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720768))

(assert (= (and b!6719517 ((_ is Concat!25392) (regOne!33607 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720769))

(assert (= (and b!6719517 ((_ is Star!16547) (regOne!33607 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720770))

(assert (= (and b!6719517 ((_ is Union!16547) (regOne!33607 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720771))

(declare-fun b!6720775 () Bool)

(declare-fun e!4060964 () Bool)

(declare-fun tp!1842311 () Bool)

(declare-fun tp!1842313 () Bool)

(assert (=> b!6720775 (= e!4060964 (and tp!1842311 tp!1842313))))

(declare-fun b!6720774 () Bool)

(declare-fun tp!1842312 () Bool)

(assert (=> b!6720774 (= e!4060964 tp!1842312)))

(declare-fun b!6720773 () Bool)

(declare-fun tp!1842315 () Bool)

(declare-fun tp!1842314 () Bool)

(assert (=> b!6720773 (= e!4060964 (and tp!1842315 tp!1842314))))

(assert (=> b!6719517 (= tp!1841529 e!4060964)))

(declare-fun b!6720772 () Bool)

(assert (=> b!6720772 (= e!4060964 tp_is_empty!42347)))

(assert (= (and b!6719517 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720772))

(assert (= (and b!6719517 ((_ is Concat!25392) (regTwo!33607 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720773))

(assert (= (and b!6719517 ((_ is Star!16547) (regTwo!33607 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720774))

(assert (= (and b!6719517 ((_ is Union!16547) (regTwo!33607 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720775))

(declare-fun b!6720779 () Bool)

(declare-fun e!4060965 () Bool)

(declare-fun tp!1842316 () Bool)

(declare-fun tp!1842318 () Bool)

(assert (=> b!6720779 (= e!4060965 (and tp!1842316 tp!1842318))))

(declare-fun b!6720778 () Bool)

(declare-fun tp!1842317 () Bool)

(assert (=> b!6720778 (= e!4060965 tp!1842317)))

(declare-fun b!6720777 () Bool)

(declare-fun tp!1842320 () Bool)

(declare-fun tp!1842319 () Bool)

(assert (=> b!6720777 (= e!4060965 (and tp!1842320 tp!1842319))))

(assert (=> b!6719562 (= tp!1841586 e!4060965)))

(declare-fun b!6720776 () Bool)

(assert (=> b!6720776 (= e!4060965 tp_is_empty!42347)))

(assert (= (and b!6719562 ((_ is ElementMatch!16547) (regOne!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720776))

(assert (= (and b!6719562 ((_ is Concat!25392) (regOne!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720777))

(assert (= (and b!6719562 ((_ is Star!16547) (regOne!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720778))

(assert (= (and b!6719562 ((_ is Union!16547) (regOne!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720779))

(declare-fun b!6720783 () Bool)

(declare-fun e!4060966 () Bool)

(declare-fun tp!1842321 () Bool)

(declare-fun tp!1842323 () Bool)

(assert (=> b!6720783 (= e!4060966 (and tp!1842321 tp!1842323))))

(declare-fun b!6720782 () Bool)

(declare-fun tp!1842322 () Bool)

(assert (=> b!6720782 (= e!4060966 tp!1842322)))

(declare-fun b!6720781 () Bool)

(declare-fun tp!1842325 () Bool)

(declare-fun tp!1842324 () Bool)

(assert (=> b!6720781 (= e!4060966 (and tp!1842325 tp!1842324))))

(assert (=> b!6719562 (= tp!1841588 e!4060966)))

(declare-fun b!6720780 () Bool)

(assert (=> b!6720780 (= e!4060966 tp_is_empty!42347)))

(assert (= (and b!6719562 ((_ is ElementMatch!16547) (regTwo!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720780))

(assert (= (and b!6719562 ((_ is Concat!25392) (regTwo!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720781))

(assert (= (and b!6719562 ((_ is Star!16547) (regTwo!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720782))

(assert (= (and b!6719562 ((_ is Union!16547) (regTwo!33607 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720783))

(declare-fun b!6720787 () Bool)

(declare-fun e!4060967 () Bool)

(declare-fun tp!1842326 () Bool)

(declare-fun tp!1842328 () Bool)

(assert (=> b!6720787 (= e!4060967 (and tp!1842326 tp!1842328))))

(declare-fun b!6720786 () Bool)

(declare-fun tp!1842327 () Bool)

(assert (=> b!6720786 (= e!4060967 tp!1842327)))

(declare-fun b!6720785 () Bool)

(declare-fun tp!1842330 () Bool)

(declare-fun tp!1842329 () Bool)

(assert (=> b!6720785 (= e!4060967 (and tp!1842330 tp!1842329))))

(assert (=> b!6719568 (= tp!1841596 e!4060967)))

(declare-fun b!6720784 () Bool)

(assert (=> b!6720784 (= e!4060967 tp_is_empty!42347)))

(assert (= (and b!6719568 ((_ is ElementMatch!16547) (reg!16876 (reg!16876 (reg!16876 r!7292))))) b!6720784))

(assert (= (and b!6719568 ((_ is Concat!25392) (reg!16876 (reg!16876 (reg!16876 r!7292))))) b!6720785))

(assert (= (and b!6719568 ((_ is Star!16547) (reg!16876 (reg!16876 (reg!16876 r!7292))))) b!6720786))

(assert (= (and b!6719568 ((_ is Union!16547) (reg!16876 (reg!16876 (reg!16876 r!7292))))) b!6720787))

(declare-fun b!6720791 () Bool)

(declare-fun e!4060968 () Bool)

(declare-fun tp!1842331 () Bool)

(declare-fun tp!1842333 () Bool)

(assert (=> b!6720791 (= e!4060968 (and tp!1842331 tp!1842333))))

(declare-fun b!6720790 () Bool)

(declare-fun tp!1842332 () Bool)

(assert (=> b!6720790 (= e!4060968 tp!1842332)))

(declare-fun b!6720789 () Bool)

(declare-fun tp!1842335 () Bool)

(declare-fun tp!1842334 () Bool)

(assert (=> b!6720789 (= e!4060968 (and tp!1842335 tp!1842334))))

(assert (=> b!6719577 (= tp!1841605 e!4060968)))

(declare-fun b!6720788 () Bool)

(assert (=> b!6720788 (= e!4060968 tp_is_empty!42347)))

(assert (= (and b!6719577 ((_ is ElementMatch!16547) (regOne!33607 (regTwo!33606 (reg!16876 r!7292))))) b!6720788))

(assert (= (and b!6719577 ((_ is Concat!25392) (regOne!33607 (regTwo!33606 (reg!16876 r!7292))))) b!6720789))

(assert (= (and b!6719577 ((_ is Star!16547) (regOne!33607 (regTwo!33606 (reg!16876 r!7292))))) b!6720790))

(assert (= (and b!6719577 ((_ is Union!16547) (regOne!33607 (regTwo!33606 (reg!16876 r!7292))))) b!6720791))

(declare-fun b!6720795 () Bool)

(declare-fun e!4060969 () Bool)

(declare-fun tp!1842336 () Bool)

(declare-fun tp!1842338 () Bool)

(assert (=> b!6720795 (= e!4060969 (and tp!1842336 tp!1842338))))

(declare-fun b!6720794 () Bool)

(declare-fun tp!1842337 () Bool)

(assert (=> b!6720794 (= e!4060969 tp!1842337)))

(declare-fun b!6720793 () Bool)

(declare-fun tp!1842340 () Bool)

(declare-fun tp!1842339 () Bool)

(assert (=> b!6720793 (= e!4060969 (and tp!1842340 tp!1842339))))

(assert (=> b!6719577 (= tp!1841607 e!4060969)))

(declare-fun b!6720792 () Bool)

(assert (=> b!6720792 (= e!4060969 tp_is_empty!42347)))

(assert (= (and b!6719577 ((_ is ElementMatch!16547) (regTwo!33607 (regTwo!33606 (reg!16876 r!7292))))) b!6720792))

(assert (= (and b!6719577 ((_ is Concat!25392) (regTwo!33607 (regTwo!33606 (reg!16876 r!7292))))) b!6720793))

(assert (= (and b!6719577 ((_ is Star!16547) (regTwo!33607 (regTwo!33606 (reg!16876 r!7292))))) b!6720794))

(assert (= (and b!6719577 ((_ is Union!16547) (regTwo!33607 (regTwo!33606 (reg!16876 r!7292))))) b!6720795))

(declare-fun b!6720799 () Bool)

(declare-fun e!4060970 () Bool)

(declare-fun tp!1842341 () Bool)

(declare-fun tp!1842343 () Bool)

(assert (=> b!6720799 (= e!4060970 (and tp!1842341 tp!1842343))))

(declare-fun b!6720798 () Bool)

(declare-fun tp!1842342 () Bool)

(assert (=> b!6720798 (= e!4060970 tp!1842342)))

(declare-fun b!6720797 () Bool)

(declare-fun tp!1842345 () Bool)

(declare-fun tp!1842344 () Bool)

(assert (=> b!6720797 (= e!4060970 (and tp!1842345 tp!1842344))))

(assert (=> b!6719515 (= tp!1841531 e!4060970)))

(declare-fun b!6720796 () Bool)

(assert (=> b!6720796 (= e!4060970 tp_is_empty!42347)))

(assert (= (and b!6719515 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720796))

(assert (= (and b!6719515 ((_ is Concat!25392) (regOne!33606 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720797))

(assert (= (and b!6719515 ((_ is Star!16547) (regOne!33606 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720798))

(assert (= (and b!6719515 ((_ is Union!16547) (regOne!33606 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720799))

(declare-fun b!6720803 () Bool)

(declare-fun e!4060971 () Bool)

(declare-fun tp!1842346 () Bool)

(declare-fun tp!1842348 () Bool)

(assert (=> b!6720803 (= e!4060971 (and tp!1842346 tp!1842348))))

(declare-fun b!6720802 () Bool)

(declare-fun tp!1842347 () Bool)

(assert (=> b!6720802 (= e!4060971 tp!1842347)))

(declare-fun b!6720801 () Bool)

(declare-fun tp!1842350 () Bool)

(declare-fun tp!1842349 () Bool)

(assert (=> b!6720801 (= e!4060971 (and tp!1842350 tp!1842349))))

(assert (=> b!6719515 (= tp!1841530 e!4060971)))

(declare-fun b!6720800 () Bool)

(assert (=> b!6720800 (= e!4060971 tp_is_empty!42347)))

(assert (= (and b!6719515 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720800))

(assert (= (and b!6719515 ((_ is Concat!25392) (regTwo!33606 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720801))

(assert (= (and b!6719515 ((_ is Star!16547) (regTwo!33606 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720802))

(assert (= (and b!6719515 ((_ is Union!16547) (regTwo!33606 (regTwo!33606 (regTwo!33607 r!7292))))) b!6720803))

(declare-fun b!6720807 () Bool)

(declare-fun e!4060972 () Bool)

(declare-fun tp!1842351 () Bool)

(declare-fun tp!1842353 () Bool)

(assert (=> b!6720807 (= e!4060972 (and tp!1842351 tp!1842353))))

(declare-fun b!6720806 () Bool)

(declare-fun tp!1842352 () Bool)

(assert (=> b!6720806 (= e!4060972 tp!1842352)))

(declare-fun b!6720805 () Bool)

(declare-fun tp!1842355 () Bool)

(declare-fun tp!1842354 () Bool)

(assert (=> b!6720805 (= e!4060972 (and tp!1842355 tp!1842354))))

(assert (=> b!6719560 (= tp!1841590 e!4060972)))

(declare-fun b!6720804 () Bool)

(assert (=> b!6720804 (= e!4060972 tp_is_empty!42347)))

(assert (= (and b!6719560 ((_ is ElementMatch!16547) (regOne!33606 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720804))

(assert (= (and b!6719560 ((_ is Concat!25392) (regOne!33606 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720805))

(assert (= (and b!6719560 ((_ is Star!16547) (regOne!33606 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720806))

(assert (= (and b!6719560 ((_ is Union!16547) (regOne!33606 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720807))

(declare-fun b!6720811 () Bool)

(declare-fun e!4060973 () Bool)

(declare-fun tp!1842356 () Bool)

(declare-fun tp!1842358 () Bool)

(assert (=> b!6720811 (= e!4060973 (and tp!1842356 tp!1842358))))

(declare-fun b!6720810 () Bool)

(declare-fun tp!1842357 () Bool)

(assert (=> b!6720810 (= e!4060973 tp!1842357)))

(declare-fun b!6720809 () Bool)

(declare-fun tp!1842360 () Bool)

(declare-fun tp!1842359 () Bool)

(assert (=> b!6720809 (= e!4060973 (and tp!1842360 tp!1842359))))

(assert (=> b!6719560 (= tp!1841589 e!4060973)))

(declare-fun b!6720808 () Bool)

(assert (=> b!6720808 (= e!4060973 tp_is_empty!42347)))

(assert (= (and b!6719560 ((_ is ElementMatch!16547) (regTwo!33606 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720808))

(assert (= (and b!6719560 ((_ is Concat!25392) (regTwo!33606 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720809))

(assert (= (and b!6719560 ((_ is Star!16547) (regTwo!33606 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720810))

(assert (= (and b!6719560 ((_ is Union!16547) (regTwo!33606 (h!72264 (exprs!6431 (h!72265 zl!343)))))) b!6720811))

(declare-fun b!6720815 () Bool)

(declare-fun e!4060974 () Bool)

(declare-fun tp!1842361 () Bool)

(declare-fun tp!1842363 () Bool)

(assert (=> b!6720815 (= e!4060974 (and tp!1842361 tp!1842363))))

(declare-fun b!6720814 () Bool)

(declare-fun tp!1842362 () Bool)

(assert (=> b!6720814 (= e!4060974 tp!1842362)))

(declare-fun b!6720813 () Bool)

(declare-fun tp!1842365 () Bool)

(declare-fun tp!1842364 () Bool)

(assert (=> b!6720813 (= e!4060974 (and tp!1842365 tp!1842364))))

(assert (=> b!6719575 (= tp!1841609 e!4060974)))

(declare-fun b!6720812 () Bool)

(assert (=> b!6720812 (= e!4060974 tp_is_empty!42347)))

(assert (= (and b!6719575 ((_ is ElementMatch!16547) (regOne!33606 (regTwo!33606 (reg!16876 r!7292))))) b!6720812))

(assert (= (and b!6719575 ((_ is Concat!25392) (regOne!33606 (regTwo!33606 (reg!16876 r!7292))))) b!6720813))

(assert (= (and b!6719575 ((_ is Star!16547) (regOne!33606 (regTwo!33606 (reg!16876 r!7292))))) b!6720814))

(assert (= (and b!6719575 ((_ is Union!16547) (regOne!33606 (regTwo!33606 (reg!16876 r!7292))))) b!6720815))

(declare-fun b!6720819 () Bool)

(declare-fun e!4060975 () Bool)

(declare-fun tp!1842366 () Bool)

(declare-fun tp!1842368 () Bool)

(assert (=> b!6720819 (= e!4060975 (and tp!1842366 tp!1842368))))

(declare-fun b!6720818 () Bool)

(declare-fun tp!1842367 () Bool)

(assert (=> b!6720818 (= e!4060975 tp!1842367)))

(declare-fun b!6720817 () Bool)

(declare-fun tp!1842370 () Bool)

(declare-fun tp!1842369 () Bool)

(assert (=> b!6720817 (= e!4060975 (and tp!1842370 tp!1842369))))

(assert (=> b!6719575 (= tp!1841608 e!4060975)))

(declare-fun b!6720816 () Bool)

(assert (=> b!6720816 (= e!4060975 tp_is_empty!42347)))

(assert (= (and b!6719575 ((_ is ElementMatch!16547) (regTwo!33606 (regTwo!33606 (reg!16876 r!7292))))) b!6720816))

(assert (= (and b!6719575 ((_ is Concat!25392) (regTwo!33606 (regTwo!33606 (reg!16876 r!7292))))) b!6720817))

(assert (= (and b!6719575 ((_ is Star!16547) (regTwo!33606 (regTwo!33606 (reg!16876 r!7292))))) b!6720818))

(assert (= (and b!6719575 ((_ is Union!16547) (regTwo!33606 (regTwo!33606 (reg!16876 r!7292))))) b!6720819))

(declare-fun b!6720823 () Bool)

(declare-fun e!4060976 () Bool)

(declare-fun tp!1842371 () Bool)

(declare-fun tp!1842373 () Bool)

(assert (=> b!6720823 (= e!4060976 (and tp!1842371 tp!1842373))))

(declare-fun b!6720822 () Bool)

(declare-fun tp!1842372 () Bool)

(assert (=> b!6720822 (= e!4060976 tp!1842372)))

(declare-fun b!6720821 () Bool)

(declare-fun tp!1842375 () Bool)

(declare-fun tp!1842374 () Bool)

(assert (=> b!6720821 (= e!4060976 (and tp!1842375 tp!1842374))))

(assert (=> b!6719540 (= tp!1841557 e!4060976)))

(declare-fun b!6720820 () Bool)

(assert (=> b!6720820 (= e!4060976 tp_is_empty!42347)))

(assert (= (and b!6719540 ((_ is ElementMatch!16547) (regOne!33607 (reg!16876 (regTwo!33606 r!7292))))) b!6720820))

(assert (= (and b!6719540 ((_ is Concat!25392) (regOne!33607 (reg!16876 (regTwo!33606 r!7292))))) b!6720821))

(assert (= (and b!6719540 ((_ is Star!16547) (regOne!33607 (reg!16876 (regTwo!33606 r!7292))))) b!6720822))

(assert (= (and b!6719540 ((_ is Union!16547) (regOne!33607 (reg!16876 (regTwo!33606 r!7292))))) b!6720823))

(declare-fun b!6720827 () Bool)

(declare-fun e!4060977 () Bool)

(declare-fun tp!1842376 () Bool)

(declare-fun tp!1842378 () Bool)

(assert (=> b!6720827 (= e!4060977 (and tp!1842376 tp!1842378))))

(declare-fun b!6720826 () Bool)

(declare-fun tp!1842377 () Bool)

(assert (=> b!6720826 (= e!4060977 tp!1842377)))

(declare-fun b!6720825 () Bool)

(declare-fun tp!1842380 () Bool)

(declare-fun tp!1842379 () Bool)

(assert (=> b!6720825 (= e!4060977 (and tp!1842380 tp!1842379))))

(assert (=> b!6719540 (= tp!1841559 e!4060977)))

(declare-fun b!6720824 () Bool)

(assert (=> b!6720824 (= e!4060977 tp_is_empty!42347)))

(assert (= (and b!6719540 ((_ is ElementMatch!16547) (regTwo!33607 (reg!16876 (regTwo!33606 r!7292))))) b!6720824))

(assert (= (and b!6719540 ((_ is Concat!25392) (regTwo!33607 (reg!16876 (regTwo!33606 r!7292))))) b!6720825))

(assert (= (and b!6719540 ((_ is Star!16547) (regTwo!33607 (reg!16876 (regTwo!33606 r!7292))))) b!6720826))

(assert (= (and b!6719540 ((_ is Union!16547) (regTwo!33607 (reg!16876 (regTwo!33606 r!7292))))) b!6720827))

(declare-fun b!6720831 () Bool)

(declare-fun e!4060978 () Bool)

(declare-fun tp!1842381 () Bool)

(declare-fun tp!1842383 () Bool)

(assert (=> b!6720831 (= e!4060978 (and tp!1842381 tp!1842383))))

(declare-fun b!6720830 () Bool)

(declare-fun tp!1842382 () Bool)

(assert (=> b!6720830 (= e!4060978 tp!1842382)))

(declare-fun b!6720829 () Bool)

(declare-fun tp!1842385 () Bool)

(declare-fun tp!1842384 () Bool)

(assert (=> b!6720829 (= e!4060978 (and tp!1842385 tp!1842384))))

(assert (=> b!6719584 (= tp!1841616 e!4060978)))

(declare-fun b!6720828 () Bool)

(assert (=> b!6720828 (= e!4060978 tp_is_empty!42347)))

(assert (= (and b!6719584 ((_ is ElementMatch!16547) (reg!16876 (regTwo!33607 (reg!16876 r!7292))))) b!6720828))

(assert (= (and b!6719584 ((_ is Concat!25392) (reg!16876 (regTwo!33607 (reg!16876 r!7292))))) b!6720829))

(assert (= (and b!6719584 ((_ is Star!16547) (reg!16876 (regTwo!33607 (reg!16876 r!7292))))) b!6720830))

(assert (= (and b!6719584 ((_ is Union!16547) (reg!16876 (regTwo!33607 (reg!16876 r!7292))))) b!6720831))

(declare-fun b_lambda!253023 () Bool)

(assert (= b_lambda!253015 (or d!2111401 b_lambda!253023)))

(declare-fun bs!1788027 () Bool)

(declare-fun d!2112113 () Bool)

(assert (= bs!1788027 (and d!2112113 d!2111401)))

(assert (=> bs!1788027 (= (dynLambda!26246 lambda!376839 (h!72264 (t!379617 (unfocusZipperList!1968 zl!343)))) (validRegex!8283 (h!72264 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(declare-fun m!7482628 () Bool)

(assert (=> bs!1788027 m!7482628))

(assert (=> b!6719992 d!2112113))

(declare-fun b_lambda!253025 () Bool)

(assert (= b_lambda!253007 (or d!2111677 b_lambda!253025)))

(declare-fun bs!1788028 () Bool)

(declare-fun d!2112115 () Bool)

(assert (= bs!1788028 (and d!2112115 d!2111677)))

(assert (=> bs!1788028 (= (dynLambda!26246 lambda!376936 (h!72264 lt!2436640)) (validRegex!8283 (h!72264 lt!2436640)))))

(declare-fun m!7482630 () Bool)

(assert (=> bs!1788028 m!7482630))

(assert (=> b!6719681 d!2112115))

(declare-fun b_lambda!253027 () Bool)

(assert (= b_lambda!253005 (or d!2111453 b_lambda!253027)))

(declare-fun bs!1788029 () Bool)

(declare-fun d!2112117 () Bool)

(assert (= bs!1788029 (and d!2112117 d!2111453)))

(assert (=> bs!1788029 (= (dynLambda!26246 lambda!376879 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343))))) (validRegex!8283 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(declare-fun m!7482632 () Bool)

(assert (=> bs!1788029 m!7482632))

(assert (=> b!6719679 d!2112117))

(declare-fun b_lambda!253029 () Bool)

(assert (= b_lambda!253011 (or d!2111399 b_lambda!253029)))

(declare-fun bs!1788030 () Bool)

(declare-fun d!2112119 () Bool)

(assert (= bs!1788030 (and d!2112119 d!2111399)))

(assert (=> bs!1788030 (= (dynLambda!26246 lambda!376836 (h!72264 (t!379617 (exprs!6431 setElem!45799)))) (validRegex!8283 (h!72264 (t!379617 (exprs!6431 setElem!45799)))))))

(declare-fun m!7482634 () Bool)

(assert (=> bs!1788030 m!7482634))

(assert (=> b!6719703 d!2112119))

(declare-fun b_lambda!253031 () Bool)

(assert (= b_lambda!253009 (or d!2111551 b_lambda!253031)))

(declare-fun bs!1788031 () Bool)

(declare-fun d!2112121 () Bool)

(assert (= bs!1788031 (and d!2112121 d!2111551)))

(assert (=> bs!1788031 (= (dynLambda!26246 lambda!376900 (h!72264 (t!379617 (unfocusZipperList!1968 zl!343)))) (validRegex!8283 (h!72264 (t!379617 (unfocusZipperList!1968 zl!343)))))))

(assert (=> bs!1788031 m!7482628))

(assert (=> b!6719692 d!2112121))

(declare-fun b_lambda!253033 () Bool)

(assert (= b_lambda!253003 (or d!2111737 b_lambda!253033)))

(declare-fun bs!1788032 () Bool)

(declare-fun d!2112123 () Bool)

(assert (= bs!1788032 (and d!2112123 d!2111737)))

(assert (=> bs!1788032 (= (dynLambda!26246 lambda!376938 (h!72264 (exprs!6431 (h!72265 (t!379618 zl!343))))) (validRegex!8283 (h!72264 (exprs!6431 (h!72265 (t!379618 zl!343))))))))

(declare-fun m!7482636 () Bool)

(assert (=> bs!1788032 m!7482636))

(assert (=> b!6719677 d!2112123))

(declare-fun b_lambda!253035 () Bool)

(assert (= b_lambda!253013 (or d!2111761 b_lambda!253035)))

(declare-fun bs!1788033 () Bool)

(declare-fun d!2112125 () Bool)

(assert (= bs!1788033 (and d!2112125 d!2111761)))

(assert (=> bs!1788033 (= (dynLambda!26246 lambda!376941 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343))))) (validRegex!8283 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(assert (=> bs!1788033 m!7482632))

(assert (=> b!6719742 d!2112125))

(declare-fun b_lambda!253037 () Bool)

(assert (= b_lambda!253017 (or d!2111589 b_lambda!253037)))

(declare-fun bs!1788034 () Bool)

(declare-fun d!2112127 () Bool)

(assert (= bs!1788034 (and d!2112127 d!2111589)))

(assert (=> bs!1788034 (= (dynLambda!26246 lambda!376912 (h!72264 (exprs!6431 setElem!45805))) (validRegex!8283 (h!72264 (exprs!6431 setElem!45805))))))

(declare-fun m!7482638 () Bool)

(assert (=> bs!1788034 m!7482638))

(assert (=> b!6720003 d!2112127))

(declare-fun b_lambda!253039 () Bool)

(assert (= b_lambda!253019 (or d!2111461 b_lambda!253039)))

(declare-fun bs!1788035 () Bool)

(declare-fun d!2112129 () Bool)

(assert (= bs!1788035 (and d!2112129 d!2111461)))

(assert (=> bs!1788035 (= (dynLambda!26246 lambda!376880 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343))))) (validRegex!8283 (h!72264 (t!379617 (exprs!6431 (h!72265 zl!343))))))))

(assert (=> bs!1788035 m!7482632))

(assert (=> b!6720148 d!2112129))

(declare-fun b_lambda!253041 () Bool)

(assert (= b_lambda!253021 (or d!2111417 b_lambda!253041)))

(declare-fun bs!1788036 () Bool)

(declare-fun d!2112131 () Bool)

(assert (= bs!1788036 (and d!2112131 d!2111417)))

(assert (=> bs!1788036 (= (dynLambda!26246 lambda!376848 (h!72264 (t!379617 lt!2436560))) (validRegex!8283 (h!72264 (t!379617 lt!2436560))))))

(declare-fun m!7482640 () Bool)

(assert (=> bs!1788036 m!7482640))

(assert (=> b!6720161 d!2112131))

(check-sat (not b!6720195) (not b!6720658) (not b!6720581) (not b!6720394) (not b!6720389) (not b!6720451) (not b!6720539) (not b!6720412) (not b!6720438) (not bm!606626) (not b!6720752) (not b!6720335) (not b!6720323) (not b!6720449) (not bm!606589) (not b!6719968) (not b!6720339) (not b!6720596) (not d!2111939) (not b_lambda!253037) (not b!6720174) (not b!6720282) (not bm!606586) (not b!6720398) (not b!6720290) (not b!6720621) (not bm!606657) (not bm!606599) (not b!6720638) (not bm!606568) (not b!6720733) (not b!6720453) (not b!6720568) (not b!6720708) (not b!6720162) (not bm!606544) (not b!6720244) (not b!6720397) (not b!6720479) (not b!6720270) (not b!6720361) (not b!6720627) (not b!6720815) (not bm!606534) (not b!6720400) (not b!6719689) (not b!6720773) (not b!6720809) (not b!6720660) (not b!6720787) (not b!6720715) (not b!6720430) (not bm!606565) (not b!6719664) (not b!6720769) (not d!2112047) (not b!6720794) (not b!6720624) (not b!6720663) (not b!6720487) (not bm!606556) (not b!6720313) (not b!6720404) (not bm!606535) (not b!6720805) (not bm!606519) (not d!2111945) (not b!6720661) (not b!6720232) (not b!6720797) (not b!6720613) (not bm!606648) (not d!2112073) (not b!6720376) (not b!6720488) (not b!6720632) (not b!6720293) (not b!6720785) (not b!6720114) (not d!2112035) (not b!6719866) (not bm!606595) (not b!6719908) (not b!6720455) (not b!6720416) (not b!6720483) (not b!6720786) (not b!6720747) (not b!6720368) (not bm!606570) (not b!6719704) (not b!6720364) (not b!6720607) (not bm!606520) (not b!6720187) (not b!6720810) (not b!6720601) (not b!6719743) (not b!6719924) (not b!6720327) (not b!6720504) (not b!6719970) (not b!6720775) (not b!6720641) (not bm!606576) (not b!6720595) (not b!6720522) (not b!6720560) (not b!6719708) (not d!2112083) (not b!6720774) (not b!6720688) (not b!6720328) (not b!6720492) (not b!6719693) (not d!2112015) (not b!6720314) (not d!2111859) (not bs!1788031) (not b!6720600) (not b!6720781) (not b!6720588) (not b!6720671) (not b!6720347) (not b!6720102) (not b!6720112) (not b!6720587) (not b!6720359) (not b!6720576) (not b!6720321) (not bm!606529) (not b!6720696) (not b!6720751) (not b!6720817) (not b!6720503) (not b!6720763) (not bm!606557) (not b!6720743) (not b!6719837) (not b!6719956) (not bm!606621) (not b!6720603) (not b!6720716) (not b!6720463) (not b!6719744) (not b!6720093) (not b!6720664) (not b!6720732) (not b!6720623) (not b!6720348) (not b!6720599) (not d!2112007) (not b!6720617) (not b!6720701) (not b!6719902) (not b!6720326) (not b!6719852) (not bm!606547) (not bs!1788035) (not b_lambda!252997) (not b!6720548) (not b!6720573) (not bm!606606) (not d!2111871) (not bm!606653) (not b!6719784) (not b!6720046) (not b!6720247) (not b!6720369) (not setNonEmpty!45808) (not b!6720396) (not b!6720535) (not b!6720666) (not b!6719925) (not b!6720355) (not bs!1788029) (not d!2111953) (not b!6719811) (not b!6719890) (not b!6720402) (not b!6720388) (not bm!606618) (not b!6720649) (not b!6719960) (not b!6720241) (not b!6720711) (not b!6719674) (not bm!606553) (not b!6720467) (not b!6720559) (not b!6720332) (not bs!1788032) (not b!6720303) (not b!6720450) (not b!6720749) (not b!6720783) (not b_lambda!253031) (not b!6720000) (not b!6720220) (not bm!606541) (not b!6720378) (not b!6720723) (not b!6720454) (not b!6720609) (not b!6719868) (not bm!606531) (not b!6720823) (not b!6720825) (not b!6720565) (not b!6719909) (not b!6720418) (not b!6720085) (not b!6719991) (not b!6720519) (not b!6720652) (not b!6720470) (not d!2111869) (not d!2111905) (not b!6720345) (not bm!606616) (not b!6720549) (not b!6720691) (not b!6720526) (not b!6720401) (not b!6720408) (not b!6719758) (not b!6719775) (not b!6720731) (not b!6719917) (not b!6720277) (not b!6720008) (not b!6720789) (not b!6719767) (not b!6720098) (not b!6720819) (not b!6720273) (not b!6720033) (not b_lambda!253035) (not b!6720253) (not b!6720071) (not bm!606585) (not d!2111917) (not b!6720475) (not b!6719854) (not d!2111909) (not b!6720635) (not b!6720269) (not bm!606510) (not b!6720653) (not b!6719629) (not b!6720468) (not b!6720737) (not b!6720206) (not b!6719783) (not b!6720672) (not b!6720584) (not b!6719832) (not b!6720351) (not b!6720628) (not b!6720531) (not b!6720551) (not b!6720547) (not b!6720365) (not b!6720727) (not b!6720516) (not b!6720315) (not d!2112043) (not b!6720436) (not bm!606592) (not b!6720608) (not b!6719877) (not d!2112109) (not b!6720363) (not b!6720721) (not b!6720413) (not b!6720806) (not b!6720322) (not b!6720110) (not b!6720381) (not b!6720674) (not b!6720807) (not b!6720037) (not bm!606537) (not d!2111987) (not b!6720424) (not b!6720385) (not b!6720478) (not b!6720311) (not b!6720703) (not d!2111955) (not b!6720143) (not b!6720524) (not b!6719904) (not b!6720278) (not b!6720739) (not b!6720520) (not bs!1788036) (not b!6720826) (not bm!606583) (not b!6720814) (not b!6720377) (not b!6719855) (not b!6720500) (not b!6720542) (not b!6720227) (not bm!606578) (not b!6720802) (not b!6720818) (not b!6720579) (not b!6720433) (not bm!606536) (not b!6720042) (not b!6719987) (not b!6720237) (not b!6720687) (not b!6720048) (not b!6719779) (not b!6720693) (not b!6720414) (not b!6720186) (not bm!606542) (not bm!606567) (not b!6719872) (not b!6720761) (not b!6719993) (not b!6720680) (not b!6720096) (not b!6720491) (not b!6720318) (not b!6720527) (not d!2112075) (not b!6720619) (not b!6720803) (not b!6719721) (not b!6719833) (not b!6720563) (not d!2111947) (not b!6719766) (not b!6719906) (not b!6720625) (not b!6720307) (not b!6720343) (not b!6720360) (not b!6720437) (not b!6720508) (not bm!606575) (not b!6720428) (not b!6720130) (not b!6720561) (not b!6720484) (not b!6720507) (not b!6719912) (not b!6720831) (not b!6720182) (not b!6719946) (not b!6720426) (not b!6720498) (not b!6719971) (not b!6720422) (not b!6719678) (not b!6720569) (not b!6720575) (not bm!606604) (not b!6720370) (not bm!606594) (not bm!606540) (not b_lambda!253027) (not b!6720486) (not b!6720382) (not b!6719778) (not b!6720040) (not b!6720352) (not bm!606566) (not b!6720317) (not b!6719966) (not d!2112003) (not bs!1788028) (not bm!606549) (not b!6720592) (not b!6720490) (not b!6719676) (not b!6719777) (not b!6720640) (not b!6720461) (not b!6720656) (not bm!606636) (not b!6720793) (not bm!606590) (not b!6720644) (not b!6720429) (not b!6720518) (not b!6719771) (not b!6720633) (not bm!606573) (not b!6720457) (not b!6720047) (not b!6720506) (not b!6720108) (not bm!606552) (not b!6720443) (not bm!606635) (not b!6720153) (not b!6720032) (not b!6720386) (not b!6720284) (not bm!606637) (not b!6720465) (not b!6720482) (not b!6720393) (not bm!606608) (not d!2112013) (not bm!606603) (not bs!1788033) (not d!2111989) (not d!2111991) (not b!6720536) (not b!6720811) (not b_lambda!253039) (not bm!606514) (not d!2111999) (not b!6720441) (not b!6720778) (not b!6720367) (not b!6720261) (not b!6720298) (not b!6720591) (not b!6720301) (not b!6719857) (not bm!606643) (not b!6720684) (not b!6720091) (not b!6720255) (not b!6720392) (not b!6720552) (not b!6720530) (not bm!606597) (not b!6720583) (not b!6720329) (not b!6720564) (not bm!606572) (not b!6720065) (not bm!606555) (not b_lambda!253001) (not b!6720766) (not d!2111847) (not b!6720580) (not b_lambda!253041) (not b!6720116) (not b_lambda!253033) (not bm!606538) tp_is_empty!42347 (not bs!1788034) (not b!6720374) (not bm!606562) (not b!6720089) (not b!6720299) (not d!2111861) (not b!6720406) (not b!6719729) (not bm!606588) (not bm!606650) (not b!6720532) (not b!6719950) (not b!6720650) (not b!6720462) (not b!6720612) (not b!6720827) (not d!2111977) (not b!6720779) (not b!6720677) (not b!6720353) (not b!6720543) (not b!6719672) (not b!6719869) (not b!6720728) (not b!6720239) (not b!6719979) (not d!2111995) (not b!6720264) (not b!6720795) (not b!6720675) (not b!6719785) (not b!6720502) (not b!6720380) (not b!6720679) (not b!6720668) (not bm!606550) (not b!6720344) (not b!6720567) (not b!6720145) (not bm!606527) (not bm!606617) (not b!6720281) (not b!6720553) (not b!6720689) (not d!2112087) (not b!6720169) (not b!6720106) (not bm!606623) (not b!6720657) (not b!6720813) (not b!6720631) (not b!6720294) (not b!6720544) (not bm!606558) (not b!6720324) (not b!6720357) (not b!6720799) (not d!2111929) (not b!6720801) (not b!6720676) (not b!6720458) (not b!6720319) (not b!6720117) (not b!6720103) (not b!6720349) (not b!6720556) (not b!6719974) (not b!6720821) (not bm!606609) (not bm!606646) (not b!6719769) (not b!6720745) (not b!6720616) (not b!6720410) (not bm!606523) (not b!6719793) (not b!6720740) (not b!6720111) (not b!6719864) (not d!2111903) (not bm!606526) (not b!6720405) (not b!6720295) (not b!6720039) (not b!6720538) (not b!6720605) (not b!6720767) (not b!6719802) (not b!6720571) (not b_lambda!252993) (not bm!606513) (not bm!606656) (not b!6720373) (not b!6720409) (not b!6720306) (not b!6720243) (not b!6719862) (not bm!606655) (not b!6720285) (not b!6719822) (not b!6720004) (not b!6720589) (not d!2112081) (not b!6720704) (not b!6720471) (not d!2111979) (not b!6720466) (not b!6720446) (not b!6720724) (not b!6720173) (not b!6720667) (not b!6720496) (not d!2111801) (not b!6719680) (not b!6720514) (not b!6719850) (not b!6720432) (not d!2112039) (not b!6720499) (not b!6720286) (not b!6720510) (not b!6719682) (not b!6720735) (not bm!606611) (not b!6720546) (not b!6720287) (not b!6720447) (not d!2111927) (not b!6720289) (not bm!606658) (not b!6720297) (not b!6720420) (not b!6719773) (not b!6720683) (not b!6720782) (not b!6719722) (not bm!606524) (not b!6720147) (not b!6720719) (not bm!606627) (not b!6720700) (not b!6720472) (not b!6720654) (not b!6719829) (not b_lambda!253029) (not b_lambda!252995) (not b!6720305) (not b!6720707) (not b!6720523) (not bm!606628) (not b!6720266) (not bm!606620) (not d!2112009) (not b!6720753) (not b!6720310) (not b!6720417) (not b!6720670) (not b!6719700) (not b!6720615) (not b_lambda!253025) (not b!6720597) (not b!6719932) (not b_lambda!253023) (not b!6720720) (not bm!606602) (not b!6720648) (not b!6720356) (not b!6719952) (not b!6720336) (not b!6720611) (not b!6720771) (not b!6720139) (not b!6720439) (not b!6720434) (not b!6720822) (not b!6720790) (not b!6720384) (not bm!606640) (not d!2112005) (not b!6720421) (not b!6720770) (not bm!606642) (not b!6720333) (not b!6720729) (not b!6720515) (not bs!1788030) (not b!6720662) (not b!6720341) (not b!6720699) (not b!6720272) (not b!6720637) (not b!6720725) (not b!6720681) (not b!6720830) (not b!6719953) (not b!6720280) (not b!6720685) (not b!6719964) (not d!2112111) (not b!6720234) (not bm!606654) (not b!6719751) (not b!6720754) (not b!6719774) (not bm!606613) (not b!6720268) (not b!6720212) (not d!2111833) (not b!6720829) (not b!6720309) (not b!6720251) (not b!6719739) (not b!6720555) (not b!6720494) (not bm!606580) (not b!6720100) (not b!6719781) (not bm!606601) (not b!6720736) (not b!6720636) (not b!6720528) (not bm!606577) (not b!6720572) (not b!6720645) (not b!6720755) (not bm!606630) (not b!6720646) (not b!6720717) (not b!6720302) (not b!6720534) (not b!6720291) (not b!6720425) (not bm!606560) (not b!6720274) (not b!6720337) (not b!6720741) (not b!6720512) (not b!6720712) (not d!2112045) (not d!2112097) (not b!6720459) (not b!6720445) (not b!6720692) (not b!6719959) (not b!6720777) (not b!6720480) (not b!6720593) (not b!6720036) (not b!6720791) (not b!6720257) (not b!6720199) (not b!6720131) (not bm!606582) (not b!6720798) (not b_lambda!252999) (not b!6720620) (not d!2111879) (not b!6720577) (not b!6720044) (not b!6720055) (not b!6720340) (not b!6720758) (not b!6720276) (not b!6720149) (not b!6719941) (not b!6720511) (not b!6720705) (not bs!1788027) (not b!6720495) (not b!6720762) (not b!6720759) (not bm!606607) (not b!6720474) (not b!6720697) (not b!6720765) (not b!6720331) (not b!6719989) (not b!6720121) (not b!6720604) (not b!6720757) (not b!6720695) (not b!6720442) (not b!6720265) (not b!6720476) (not bm!606546) (not b!6720258) (not bm!606639) (not b!6719768) (not b!6720744) (not bm!606645) (not d!2111949) (not d!2111993) (not b!6720709) (not b!6720390) (not b!6720372) (not b!6720028) (not d!2112001) (not b!6720748) (not b!6720713) (not b!6719948) (not b!6720642) (not bm!606521) (not b!6720557) (not b!6720629) (not b!6720585) (not bm!606632) (not b!6720540))
(check-sat)
