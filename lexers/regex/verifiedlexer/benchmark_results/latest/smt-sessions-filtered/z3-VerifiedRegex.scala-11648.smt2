; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!651228 () Bool)

(assert start!651228)

(declare-fun b!6714965 () Bool)

(assert (=> b!6714965 true))

(assert (=> b!6714965 true))

(declare-fun lambda!376538 () Int)

(declare-fun lambda!376537 () Int)

(assert (=> b!6714965 (not (= lambda!376538 lambda!376537))))

(assert (=> b!6714965 true))

(assert (=> b!6714965 true))

(declare-fun lambda!376539 () Int)

(assert (=> b!6714965 (not (= lambda!376539 lambda!376537))))

(assert (=> b!6714965 (not (= lambda!376539 lambda!376538))))

(assert (=> b!6714965 true))

(assert (=> b!6714965 true))

(declare-fun b!6714946 () Bool)

(declare-fun e!4057932 () Bool)

(declare-fun tp!1840276 () Bool)

(declare-fun tp!1840268 () Bool)

(assert (=> b!6714946 (= e!4057932 (and tp!1840276 tp!1840268))))

(declare-fun b!6714947 () Bool)

(declare-fun res!2748050 () Bool)

(declare-fun e!4057931 () Bool)

(assert (=> b!6714947 (=> res!2748050 e!4057931)))

(declare-datatypes ((C!33356 0))(
  ( (C!33357 (val!26380 Int)) )
))
(declare-datatypes ((List!65928 0))(
  ( (Nil!65804) (Cons!65804 (h!72252 C!33356) (t!379605 List!65928)) )
))
(declare-fun s!2326 () List!65928)

(get-info :version)

(assert (=> b!6714947 (= res!2748050 ((_ is Nil!65804) s!2326))))

(declare-fun b!6714948 () Bool)

(declare-fun res!2748052 () Bool)

(declare-fun e!4057934 () Bool)

(assert (=> b!6714948 (=> res!2748052 e!4057934)))

(declare-datatypes ((Regex!16543 0))(
  ( (ElementMatch!16543 (c!1244979 C!33356)) (Concat!25388 (regOne!33598 Regex!16543) (regTwo!33598 Regex!16543)) (EmptyExpr!16543) (Star!16543 (reg!16872 Regex!16543)) (EmptyLang!16543) (Union!16543 (regOne!33599 Regex!16543) (regTwo!33599 Regex!16543)) )
))
(declare-fun r!7292 () Regex!16543)

(assert (=> b!6714948 (= res!2748052 (or ((_ is EmptyExpr!16543) r!7292) ((_ is EmptyLang!16543) r!7292) ((_ is ElementMatch!16543) r!7292) ((_ is Union!16543) r!7292) ((_ is Concat!25388) r!7292)))))

(declare-fun b!6714949 () Bool)

(declare-fun e!4057933 () Bool)

(declare-datatypes ((List!65929 0))(
  ( (Nil!65805) (Cons!65805 (h!72253 Regex!16543) (t!379606 List!65929)) )
))
(declare-datatypes ((Context!11854 0))(
  ( (Context!11855 (exprs!6427 List!65929)) )
))
(declare-datatypes ((List!65930 0))(
  ( (Nil!65806) (Cons!65806 (h!72254 Context!11854) (t!379607 List!65930)) )
))
(declare-fun zl!343 () List!65930)

(declare-fun tp!1840270 () Bool)

(declare-fun e!4057929 () Bool)

(declare-fun inv!84604 (Context!11854) Bool)

(assert (=> b!6714949 (= e!4057929 (and (inv!84604 (h!72254 zl!343)) e!4057933 tp!1840270))))

(declare-fun b!6714950 () Bool)

(declare-fun res!2748047 () Bool)

(assert (=> b!6714950 (=> res!2748047 e!4057934)))

(declare-fun isEmpty!38121 (List!65930) Bool)

(assert (=> b!6714950 (= res!2748047 (not (isEmpty!38121 (t!379607 zl!343))))))

(declare-fun b!6714951 () Bool)

(declare-fun res!2748053 () Bool)

(declare-fun e!4057936 () Bool)

(assert (=> b!6714951 (=> (not res!2748053) (not e!4057936))))

(declare-fun unfocusZipper!2285 (List!65930) Regex!16543)

(assert (=> b!6714951 (= res!2748053 (= r!7292 (unfocusZipper!2285 zl!343)))))

(declare-fun b!6714952 () Bool)

(declare-fun res!2748048 () Bool)

(assert (=> b!6714952 (=> res!2748048 e!4057934)))

(declare-fun generalisedUnion!2387 (List!65929) Regex!16543)

(declare-fun unfocusZipperList!1964 (List!65930) List!65929)

(assert (=> b!6714952 (= res!2748048 (not (= r!7292 (generalisedUnion!2387 (unfocusZipperList!1964 zl!343)))))))

(declare-fun b!6714953 () Bool)

(declare-fun tp!1840269 () Bool)

(declare-fun tp!1840274 () Bool)

(assert (=> b!6714953 (= e!4057932 (and tp!1840269 tp!1840274))))

(declare-fun b!6714954 () Bool)

(assert (=> b!6714954 (= e!4057936 (not e!4057934))))

(declare-fun res!2748051 () Bool)

(assert (=> b!6714954 (=> res!2748051 e!4057934)))

(assert (=> b!6714954 (= res!2748051 (not ((_ is Cons!65806) zl!343)))))

(declare-fun lt!2436221 () Bool)

(declare-fun matchRSpec!3644 (Regex!16543 List!65928) Bool)

(assert (=> b!6714954 (= lt!2436221 (matchRSpec!3644 r!7292 s!2326))))

(declare-fun matchR!8726 (Regex!16543 List!65928) Bool)

(assert (=> b!6714954 (= lt!2436221 (matchR!8726 r!7292 s!2326))))

(declare-datatypes ((Unit!159777 0))(
  ( (Unit!159778) )
))
(declare-fun lt!2436224 () Unit!159777)

(declare-fun mainMatchTheorem!3644 (Regex!16543 List!65928) Unit!159777)

(assert (=> b!6714954 (= lt!2436224 (mainMatchTheorem!3644 r!7292 s!2326))))

(declare-fun b!6714955 () Bool)

(declare-fun e!4057928 () Bool)

(declare-fun tp_is_empty!42339 () Bool)

(declare-fun tp!1840277 () Bool)

(assert (=> b!6714955 (= e!4057928 (and tp_is_empty!42339 tp!1840277))))

(declare-fun b!6714956 () Bool)

(declare-fun tp!1840272 () Bool)

(assert (=> b!6714956 (= e!4057933 tp!1840272)))

(declare-fun b!6714957 () Bool)

(declare-fun e!4057930 () Bool)

(declare-fun lt!2436219 () Bool)

(assert (=> b!6714957 (= e!4057930 lt!2436219)))

(declare-fun res!2748057 () Bool)

(assert (=> start!651228 (=> (not res!2748057) (not e!4057936))))

(declare-fun validRegex!8279 (Regex!16543) Bool)

(assert (=> start!651228 (= res!2748057 (validRegex!8279 r!7292))))

(assert (=> start!651228 e!4057936))

(assert (=> start!651228 e!4057932))

(declare-fun condSetEmpty!45771 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11854))

(assert (=> start!651228 (= condSetEmpty!45771 (= z!1189 ((as const (Array Context!11854 Bool)) false)))))

(declare-fun setRes!45771 () Bool)

(assert (=> start!651228 setRes!45771))

(assert (=> start!651228 e!4057929))

(assert (=> start!651228 e!4057928))

(declare-fun b!6714958 () Bool)

(declare-fun res!2748058 () Bool)

(assert (=> b!6714958 (=> res!2748058 e!4057934)))

(declare-fun generalisedConcat!2140 (List!65929) Regex!16543)

(assert (=> b!6714958 (= res!2748058 (not (= r!7292 (generalisedConcat!2140 (exprs!6427 (h!72254 zl!343))))))))

(declare-fun b!6714959 () Bool)

(declare-fun res!2748054 () Bool)

(assert (=> b!6714959 (=> (not res!2748054) (not e!4057936))))

(declare-fun toList!10327 ((InoxSet Context!11854)) List!65930)

(assert (=> b!6714959 (= res!2748054 (= (toList!10327 z!1189) zl!343))))

(declare-fun b!6714960 () Bool)

(assert (=> b!6714960 (= e!4057932 tp_is_empty!42339)))

(declare-fun b!6714961 () Bool)

(assert (=> b!6714961 (= e!4057931 (inv!84604 (Context!11855 (Cons!65805 r!7292 Nil!65805))))))

(declare-fun setNonEmpty!45771 () Bool)

(declare-fun tp!1840273 () Bool)

(declare-fun setElem!45771 () Context!11854)

(declare-fun e!4057935 () Bool)

(assert (=> setNonEmpty!45771 (= setRes!45771 (and tp!1840273 (inv!84604 setElem!45771) e!4057935))))

(declare-fun setRest!45771 () (InoxSet Context!11854))

(assert (=> setNonEmpty!45771 (= z!1189 ((_ map or) (store ((as const (Array Context!11854 Bool)) false) setElem!45771 true) setRest!45771))))

(declare-fun b!6714962 () Bool)

(declare-fun tp!1840271 () Bool)

(assert (=> b!6714962 (= e!4057932 tp!1840271)))

(declare-fun setIsEmpty!45771 () Bool)

(assert (=> setIsEmpty!45771 setRes!45771))

(declare-fun b!6714963 () Bool)

(declare-fun tp!1840275 () Bool)

(assert (=> b!6714963 (= e!4057935 tp!1840275)))

(declare-fun b!6714964 () Bool)

(declare-fun res!2748049 () Bool)

(assert (=> b!6714964 (=> res!2748049 e!4057934)))

(assert (=> b!6714964 (= res!2748049 (not ((_ is Cons!65805) (exprs!6427 (h!72254 zl!343)))))))

(assert (=> b!6714965 (= e!4057934 e!4057931)))

(declare-fun res!2748055 () Bool)

(assert (=> b!6714965 (=> res!2748055 e!4057931)))

(assert (=> b!6714965 (= res!2748055 (not (= lt!2436221 e!4057930)))))

(declare-fun res!2748056 () Bool)

(assert (=> b!6714965 (=> res!2748056 e!4057930)))

(declare-fun isEmpty!38122 (List!65928) Bool)

(assert (=> b!6714965 (= res!2748056 (isEmpty!38122 s!2326))))

(declare-fun Exists!3611 (Int) Bool)

(assert (=> b!6714965 (= (Exists!3611 lambda!376537) (Exists!3611 lambda!376539))))

(declare-fun lt!2436222 () Unit!159777)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2138 (Regex!16543 Regex!16543 List!65928) Unit!159777)

(assert (=> b!6714965 (= lt!2436222 (lemmaExistCutMatchRandMatchRSpecEquivalent!2138 (reg!16872 r!7292) r!7292 s!2326))))

(assert (=> b!6714965 (= (Exists!3611 lambda!376537) (Exists!3611 lambda!376538))))

(declare-fun lt!2436220 () Unit!159777)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!702 (Regex!16543 List!65928) Unit!159777)

(assert (=> b!6714965 (= lt!2436220 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!702 (reg!16872 r!7292) s!2326))))

(assert (=> b!6714965 (= lt!2436219 (Exists!3611 lambda!376537))))

(declare-datatypes ((tuple2!67036 0))(
  ( (tuple2!67037 (_1!36821 List!65928) (_2!36821 List!65928)) )
))
(declare-datatypes ((Option!16430 0))(
  ( (None!16429) (Some!16429 (v!52627 tuple2!67036)) )
))
(declare-fun isDefined!13133 (Option!16430) Bool)

(declare-fun findConcatSeparation!2844 (Regex!16543 Regex!16543 List!65928 List!65928 List!65928) Option!16430)

(assert (=> b!6714965 (= lt!2436219 (isDefined!13133 (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 Nil!65804 s!2326 s!2326)))))

(declare-fun lt!2436223 () Unit!159777)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2608 (Regex!16543 Regex!16543 List!65928) Unit!159777)

(assert (=> b!6714965 (= lt!2436223 (lemmaFindConcatSeparationEquivalentToExists!2608 (reg!16872 r!7292) r!7292 s!2326))))

(assert (= (and start!651228 res!2748057) b!6714959))

(assert (= (and b!6714959 res!2748054) b!6714951))

(assert (= (and b!6714951 res!2748053) b!6714954))

(assert (= (and b!6714954 (not res!2748051)) b!6714950))

(assert (= (and b!6714950 (not res!2748047)) b!6714958))

(assert (= (and b!6714958 (not res!2748058)) b!6714964))

(assert (= (and b!6714964 (not res!2748049)) b!6714952))

(assert (= (and b!6714952 (not res!2748048)) b!6714948))

(assert (= (and b!6714948 (not res!2748052)) b!6714965))

(assert (= (and b!6714965 (not res!2748056)) b!6714957))

(assert (= (and b!6714965 (not res!2748055)) b!6714947))

(assert (= (and b!6714947 (not res!2748050)) b!6714961))

(assert (= (and start!651228 ((_ is ElementMatch!16543) r!7292)) b!6714960))

(assert (= (and start!651228 ((_ is Concat!25388) r!7292)) b!6714953))

(assert (= (and start!651228 ((_ is Star!16543) r!7292)) b!6714962))

(assert (= (and start!651228 ((_ is Union!16543) r!7292)) b!6714946))

(assert (= (and start!651228 condSetEmpty!45771) setIsEmpty!45771))

(assert (= (and start!651228 (not condSetEmpty!45771)) setNonEmpty!45771))

(assert (= setNonEmpty!45771 b!6714963))

(assert (= b!6714949 b!6714956))

(assert (= (and start!651228 ((_ is Cons!65806) zl!343)) b!6714949))

(assert (= (and start!651228 ((_ is Cons!65804) s!2326)) b!6714955))

(declare-fun m!7478980 () Bool)

(assert (=> b!6714950 m!7478980))

(declare-fun m!7478982 () Bool)

(assert (=> b!6714952 m!7478982))

(assert (=> b!6714952 m!7478982))

(declare-fun m!7478984 () Bool)

(assert (=> b!6714952 m!7478984))

(declare-fun m!7478986 () Bool)

(assert (=> b!6714949 m!7478986))

(declare-fun m!7478988 () Bool)

(assert (=> start!651228 m!7478988))

(declare-fun m!7478990 () Bool)

(assert (=> setNonEmpty!45771 m!7478990))

(declare-fun m!7478992 () Bool)

(assert (=> b!6714965 m!7478992))

(declare-fun m!7478994 () Bool)

(assert (=> b!6714965 m!7478994))

(declare-fun m!7478996 () Bool)

(assert (=> b!6714965 m!7478996))

(declare-fun m!7478998 () Bool)

(assert (=> b!6714965 m!7478998))

(declare-fun m!7479000 () Bool)

(assert (=> b!6714965 m!7479000))

(declare-fun m!7479002 () Bool)

(assert (=> b!6714965 m!7479002))

(declare-fun m!7479004 () Bool)

(assert (=> b!6714965 m!7479004))

(assert (=> b!6714965 m!7478998))

(assert (=> b!6714965 m!7478998))

(declare-fun m!7479006 () Bool)

(assert (=> b!6714965 m!7479006))

(assert (=> b!6714965 m!7479002))

(declare-fun m!7479008 () Bool)

(assert (=> b!6714965 m!7479008))

(declare-fun m!7479010 () Bool)

(assert (=> b!6714951 m!7479010))

(declare-fun m!7479012 () Bool)

(assert (=> b!6714954 m!7479012))

(declare-fun m!7479014 () Bool)

(assert (=> b!6714954 m!7479014))

(declare-fun m!7479016 () Bool)

(assert (=> b!6714954 m!7479016))

(declare-fun m!7479018 () Bool)

(assert (=> b!6714958 m!7479018))

(declare-fun m!7479020 () Bool)

(assert (=> b!6714959 m!7479020))

(declare-fun m!7479022 () Bool)

(assert (=> b!6714961 m!7479022))

(check-sat (not b!6714961) (not b!6714954) (not b!6714965) (not b!6714949) (not b!6714950) (not setNonEmpty!45771) (not b!6714953) (not b!6714958) (not b!6714946) (not b!6714963) (not b!6714955) (not b!6714962) (not b!6714956) (not start!651228) (not b!6714951) tp_is_empty!42339 (not b!6714959) (not b!6714952))
(check-sat)
(get-model)

(declare-fun d!2110621 () Bool)

(declare-fun lambda!376546 () Int)

(declare-fun forall!15743 (List!65929 Int) Bool)

(assert (=> d!2110621 (= (inv!84604 (h!72254 zl!343)) (forall!15743 (exprs!6427 (h!72254 zl!343)) lambda!376546))))

(declare-fun bs!1786793 () Bool)

(assert (= bs!1786793 d!2110621))

(declare-fun m!7479026 () Bool)

(assert (=> bs!1786793 m!7479026))

(assert (=> b!6714949 d!2110621))

(declare-fun d!2110623 () Bool)

(declare-fun e!4057943 () Bool)

(assert (=> d!2110623 e!4057943))

(declare-fun res!2748069 () Bool)

(assert (=> d!2110623 (=> (not res!2748069) (not e!4057943))))

(declare-fun lt!2436230 () List!65930)

(declare-fun noDuplicate!2335 (List!65930) Bool)

(assert (=> d!2110623 (= res!2748069 (noDuplicate!2335 lt!2436230))))

(declare-fun choose!50035 ((InoxSet Context!11854)) List!65930)

(assert (=> d!2110623 (= lt!2436230 (choose!50035 z!1189))))

(assert (=> d!2110623 (= (toList!10327 z!1189) lt!2436230)))

(declare-fun b!6714980 () Bool)

(declare-fun content!12754 (List!65930) (InoxSet Context!11854))

(assert (=> b!6714980 (= e!4057943 (= (content!12754 lt!2436230) z!1189))))

(assert (= (and d!2110623 res!2748069) b!6714980))

(declare-fun m!7479036 () Bool)

(assert (=> d!2110623 m!7479036))

(declare-fun m!7479038 () Bool)

(assert (=> d!2110623 m!7479038))

(declare-fun m!7479040 () Bool)

(assert (=> b!6714980 m!7479040))

(assert (=> b!6714959 d!2110623))

(declare-fun d!2110627 () Bool)

(assert (=> d!2110627 (= (isEmpty!38121 (t!379607 zl!343)) ((_ is Nil!65806) (t!379607 zl!343)))))

(assert (=> b!6714950 d!2110627))

(declare-fun bs!1786796 () Bool)

(declare-fun d!2110629 () Bool)

(assert (= bs!1786796 (and d!2110629 d!2110621)))

(declare-fun lambda!376549 () Int)

(assert (=> bs!1786796 (= lambda!376549 lambda!376546)))

(assert (=> d!2110629 (= (inv!84604 (Context!11855 (Cons!65805 r!7292 Nil!65805))) (forall!15743 (exprs!6427 (Context!11855 (Cons!65805 r!7292 Nil!65805))) lambda!376549))))

(declare-fun bs!1786797 () Bool)

(assert (= bs!1786797 d!2110629))

(declare-fun m!7479042 () Bool)

(assert (=> bs!1786797 m!7479042))

(assert (=> b!6714961 d!2110629))

(declare-fun b!6715009 () Bool)

(declare-fun res!2748092 () Bool)

(declare-fun e!4057963 () Bool)

(assert (=> b!6715009 (=> res!2748092 e!4057963)))

(assert (=> b!6715009 (= res!2748092 (not ((_ is Concat!25388) r!7292)))))

(declare-fun e!4057967 () Bool)

(assert (=> b!6715009 (= e!4057967 e!4057963)))

(declare-fun bm!606055 () Bool)

(declare-fun call!606061 () Bool)

(declare-fun c!1244984 () Bool)

(assert (=> bm!606055 (= call!606061 (validRegex!8279 (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))))))

(declare-fun b!6715010 () Bool)

(declare-fun e!4057965 () Bool)

(declare-fun e!4057966 () Bool)

(assert (=> b!6715010 (= e!4057965 e!4057966)))

(declare-fun c!1244985 () Bool)

(assert (=> b!6715010 (= c!1244985 ((_ is Star!16543) r!7292))))

(declare-fun b!6715011 () Bool)

(declare-fun e!4057964 () Bool)

(assert (=> b!6715011 (= e!4057964 call!606061)))

(declare-fun b!6715012 () Bool)

(declare-fun res!2748094 () Bool)

(declare-fun e!4057968 () Bool)

(assert (=> b!6715012 (=> (not res!2748094) (not e!4057968))))

(declare-fun call!606060 () Bool)

(assert (=> b!6715012 (= res!2748094 call!606060)))

(assert (=> b!6715012 (= e!4057967 e!4057968)))

(declare-fun b!6715013 () Bool)

(assert (=> b!6715013 (= e!4057966 e!4057967)))

(assert (=> b!6715013 (= c!1244984 ((_ is Union!16543) r!7292))))

(declare-fun b!6715014 () Bool)

(declare-fun e!4057962 () Bool)

(assert (=> b!6715014 (= e!4057966 e!4057962)))

(declare-fun res!2748093 () Bool)

(declare-fun nullable!6530 (Regex!16543) Bool)

(assert (=> b!6715014 (= res!2748093 (not (nullable!6530 (reg!16872 r!7292))))))

(assert (=> b!6715014 (=> (not res!2748093) (not e!4057962))))

(declare-fun d!2110631 () Bool)

(declare-fun res!2748091 () Bool)

(assert (=> d!2110631 (=> res!2748091 e!4057965)))

(assert (=> d!2110631 (= res!2748091 ((_ is ElementMatch!16543) r!7292))))

(assert (=> d!2110631 (= (validRegex!8279 r!7292) e!4057965)))

(declare-fun b!6715015 () Bool)

(assert (=> b!6715015 (= e!4057968 call!606061)))

(declare-fun bm!606056 () Bool)

(declare-fun call!606062 () Bool)

(assert (=> bm!606056 (= call!606060 call!606062)))

(declare-fun b!6715016 () Bool)

(assert (=> b!6715016 (= e!4057962 call!606062)))

(declare-fun b!6715017 () Bool)

(assert (=> b!6715017 (= e!4057963 e!4057964)))

(declare-fun res!2748090 () Bool)

(assert (=> b!6715017 (=> (not res!2748090) (not e!4057964))))

(assert (=> b!6715017 (= res!2748090 call!606060)))

(declare-fun bm!606057 () Bool)

(assert (=> bm!606057 (= call!606062 (validRegex!8279 (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))))))

(assert (= (and d!2110631 (not res!2748091)) b!6715010))

(assert (= (and b!6715010 c!1244985) b!6715014))

(assert (= (and b!6715010 (not c!1244985)) b!6715013))

(assert (= (and b!6715014 res!2748093) b!6715016))

(assert (= (and b!6715013 c!1244984) b!6715012))

(assert (= (and b!6715013 (not c!1244984)) b!6715009))

(assert (= (and b!6715012 res!2748094) b!6715015))

(assert (= (and b!6715009 (not res!2748092)) b!6715017))

(assert (= (and b!6715017 res!2748090) b!6715011))

(assert (= (or b!6715015 b!6715011) bm!606055))

(assert (= (or b!6715012 b!6715017) bm!606056))

(assert (= (or b!6715016 bm!606056) bm!606057))

(declare-fun m!7479056 () Bool)

(assert (=> bm!606055 m!7479056))

(declare-fun m!7479058 () Bool)

(assert (=> b!6715014 m!7479058))

(declare-fun m!7479060 () Bool)

(assert (=> bm!606057 m!7479060))

(assert (=> start!651228 d!2110631))

(declare-fun bs!1786804 () Bool)

(declare-fun d!2110643 () Bool)

(assert (= bs!1786804 (and d!2110643 d!2110621)))

(declare-fun lambda!376556 () Int)

(assert (=> bs!1786804 (= lambda!376556 lambda!376546)))

(declare-fun bs!1786805 () Bool)

(assert (= bs!1786805 (and d!2110643 d!2110629)))

(assert (=> bs!1786805 (= lambda!376556 lambda!376549)))

(assert (=> d!2110643 (= (inv!84604 setElem!45771) (forall!15743 (exprs!6427 setElem!45771) lambda!376556))))

(declare-fun bs!1786806 () Bool)

(assert (= bs!1786806 d!2110643))

(declare-fun m!7479062 () Bool)

(assert (=> bs!1786806 m!7479062))

(assert (=> setNonEmpty!45771 d!2110643))

(declare-fun d!2110645 () Bool)

(declare-fun lt!2436242 () Regex!16543)

(assert (=> d!2110645 (validRegex!8279 lt!2436242)))

(assert (=> d!2110645 (= lt!2436242 (generalisedUnion!2387 (unfocusZipperList!1964 zl!343)))))

(assert (=> d!2110645 (= (unfocusZipper!2285 zl!343) lt!2436242)))

(declare-fun bs!1786807 () Bool)

(assert (= bs!1786807 d!2110645))

(declare-fun m!7479064 () Bool)

(assert (=> bs!1786807 m!7479064))

(assert (=> bs!1786807 m!7478982))

(assert (=> bs!1786807 m!7478982))

(assert (=> bs!1786807 m!7478984))

(assert (=> b!6714951 d!2110645))

(declare-fun bs!1786813 () Bool)

(declare-fun d!2110647 () Bool)

(assert (= bs!1786813 (and d!2110647 d!2110621)))

(declare-fun lambda!376564 () Int)

(assert (=> bs!1786813 (= lambda!376564 lambda!376546)))

(declare-fun bs!1786814 () Bool)

(assert (= bs!1786814 (and d!2110647 d!2110629)))

(assert (=> bs!1786814 (= lambda!376564 lambda!376549)))

(declare-fun bs!1786815 () Bool)

(assert (= bs!1786815 (and d!2110647 d!2110643)))

(assert (=> bs!1786815 (= lambda!376564 lambda!376556)))

(declare-fun b!6715079 () Bool)

(declare-fun e!4058004 () Bool)

(declare-fun isEmpty!38125 (List!65929) Bool)

(assert (=> b!6715079 (= e!4058004 (isEmpty!38125 (t!379606 (unfocusZipperList!1964 zl!343))))))

(declare-fun b!6715080 () Bool)

(declare-fun e!4058008 () Bool)

(declare-fun lt!2436256 () Regex!16543)

(declare-fun head!13513 (List!65929) Regex!16543)

(assert (=> b!6715080 (= e!4058008 (= lt!2436256 (head!13513 (unfocusZipperList!1964 zl!343))))))

(declare-fun b!6715081 () Bool)

(declare-fun e!4058005 () Regex!16543)

(assert (=> b!6715081 (= e!4058005 EmptyLang!16543)))

(declare-fun b!6715082 () Bool)

(assert (=> b!6715082 (= e!4058005 (Union!16543 (h!72253 (unfocusZipperList!1964 zl!343)) (generalisedUnion!2387 (t!379606 (unfocusZipperList!1964 zl!343)))))))

(declare-fun b!6715083 () Bool)

(declare-fun e!4058009 () Bool)

(declare-fun isEmptyLang!1917 (Regex!16543) Bool)

(assert (=> b!6715083 (= e!4058009 (isEmptyLang!1917 lt!2436256))))

(declare-fun b!6715084 () Bool)

(assert (=> b!6715084 (= e!4058009 e!4058008)))

(declare-fun c!1245005 () Bool)

(declare-fun tail!12598 (List!65929) List!65929)

(assert (=> b!6715084 (= c!1245005 (isEmpty!38125 (tail!12598 (unfocusZipperList!1964 zl!343))))))

(declare-fun e!4058007 () Bool)

(assert (=> d!2110647 e!4058007))

(declare-fun res!2748120 () Bool)

(assert (=> d!2110647 (=> (not res!2748120) (not e!4058007))))

(assert (=> d!2110647 (= res!2748120 (validRegex!8279 lt!2436256))))

(declare-fun e!4058006 () Regex!16543)

(assert (=> d!2110647 (= lt!2436256 e!4058006)))

(declare-fun c!1245006 () Bool)

(assert (=> d!2110647 (= c!1245006 e!4058004)))

(declare-fun res!2748121 () Bool)

(assert (=> d!2110647 (=> (not res!2748121) (not e!4058004))))

(assert (=> d!2110647 (= res!2748121 ((_ is Cons!65805) (unfocusZipperList!1964 zl!343)))))

(assert (=> d!2110647 (forall!15743 (unfocusZipperList!1964 zl!343) lambda!376564)))

(assert (=> d!2110647 (= (generalisedUnion!2387 (unfocusZipperList!1964 zl!343)) lt!2436256)))

(declare-fun b!6715085 () Bool)

(declare-fun isUnion!1347 (Regex!16543) Bool)

(assert (=> b!6715085 (= e!4058008 (isUnion!1347 lt!2436256))))

(declare-fun b!6715086 () Bool)

(assert (=> b!6715086 (= e!4058006 (h!72253 (unfocusZipperList!1964 zl!343)))))

(declare-fun b!6715087 () Bool)

(assert (=> b!6715087 (= e!4058007 e!4058009)))

(declare-fun c!1245004 () Bool)

(assert (=> b!6715087 (= c!1245004 (isEmpty!38125 (unfocusZipperList!1964 zl!343)))))

(declare-fun b!6715088 () Bool)

(assert (=> b!6715088 (= e!4058006 e!4058005)))

(declare-fun c!1245007 () Bool)

(assert (=> b!6715088 (= c!1245007 ((_ is Cons!65805) (unfocusZipperList!1964 zl!343)))))

(assert (= (and d!2110647 res!2748121) b!6715079))

(assert (= (and d!2110647 c!1245006) b!6715086))

(assert (= (and d!2110647 (not c!1245006)) b!6715088))

(assert (= (and b!6715088 c!1245007) b!6715082))

(assert (= (and b!6715088 (not c!1245007)) b!6715081))

(assert (= (and d!2110647 res!2748120) b!6715087))

(assert (= (and b!6715087 c!1245004) b!6715083))

(assert (= (and b!6715087 (not c!1245004)) b!6715084))

(assert (= (and b!6715084 c!1245005) b!6715080))

(assert (= (and b!6715084 (not c!1245005)) b!6715085))

(assert (=> b!6715087 m!7478982))

(declare-fun m!7479092 () Bool)

(assert (=> b!6715087 m!7479092))

(declare-fun m!7479094 () Bool)

(assert (=> b!6715082 m!7479094))

(declare-fun m!7479096 () Bool)

(assert (=> d!2110647 m!7479096))

(assert (=> d!2110647 m!7478982))

(declare-fun m!7479098 () Bool)

(assert (=> d!2110647 m!7479098))

(assert (=> b!6715084 m!7478982))

(declare-fun m!7479100 () Bool)

(assert (=> b!6715084 m!7479100))

(assert (=> b!6715084 m!7479100))

(declare-fun m!7479102 () Bool)

(assert (=> b!6715084 m!7479102))

(declare-fun m!7479104 () Bool)

(assert (=> b!6715085 m!7479104))

(declare-fun m!7479106 () Bool)

(assert (=> b!6715079 m!7479106))

(assert (=> b!6715080 m!7478982))

(declare-fun m!7479108 () Bool)

(assert (=> b!6715080 m!7479108))

(declare-fun m!7479110 () Bool)

(assert (=> b!6715083 m!7479110))

(assert (=> b!6714952 d!2110647))

(declare-fun bs!1786817 () Bool)

(declare-fun d!2110655 () Bool)

(assert (= bs!1786817 (and d!2110655 d!2110621)))

(declare-fun lambda!376571 () Int)

(assert (=> bs!1786817 (= lambda!376571 lambda!376546)))

(declare-fun bs!1786818 () Bool)

(assert (= bs!1786818 (and d!2110655 d!2110629)))

(assert (=> bs!1786818 (= lambda!376571 lambda!376549)))

(declare-fun bs!1786819 () Bool)

(assert (= bs!1786819 (and d!2110655 d!2110643)))

(assert (=> bs!1786819 (= lambda!376571 lambda!376556)))

(declare-fun bs!1786820 () Bool)

(assert (= bs!1786820 (and d!2110655 d!2110647)))

(assert (=> bs!1786820 (= lambda!376571 lambda!376564)))

(declare-fun lt!2436262 () List!65929)

(assert (=> d!2110655 (forall!15743 lt!2436262 lambda!376571)))

(declare-fun e!4058036 () List!65929)

(assert (=> d!2110655 (= lt!2436262 e!4058036)))

(declare-fun c!1245026 () Bool)

(assert (=> d!2110655 (= c!1245026 ((_ is Cons!65806) zl!343))))

(assert (=> d!2110655 (= (unfocusZipperList!1964 zl!343) lt!2436262)))

(declare-fun b!6715133 () Bool)

(assert (=> b!6715133 (= e!4058036 (Cons!65805 (generalisedConcat!2140 (exprs!6427 (h!72254 zl!343))) (unfocusZipperList!1964 (t!379607 zl!343))))))

(declare-fun b!6715134 () Bool)

(assert (=> b!6715134 (= e!4058036 Nil!65805)))

(assert (= (and d!2110655 c!1245026) b!6715133))

(assert (= (and d!2110655 (not c!1245026)) b!6715134))

(declare-fun m!7479152 () Bool)

(assert (=> d!2110655 m!7479152))

(assert (=> b!6715133 m!7479018))

(declare-fun m!7479154 () Bool)

(assert (=> b!6715133 m!7479154))

(assert (=> b!6714952 d!2110655))

(declare-fun bs!1786836 () Bool)

(declare-fun b!6715254 () Bool)

(assert (= bs!1786836 (and b!6715254 b!6714965)))

(declare-fun lambda!376588 () Int)

(assert (=> bs!1786836 (not (= lambda!376588 lambda!376537))))

(assert (=> bs!1786836 (= lambda!376588 lambda!376538)))

(assert (=> bs!1786836 (not (= lambda!376588 lambda!376539))))

(assert (=> b!6715254 true))

(assert (=> b!6715254 true))

(declare-fun bs!1786837 () Bool)

(declare-fun b!6715262 () Bool)

(assert (= bs!1786837 (and b!6715262 b!6714965)))

(declare-fun lambda!376589 () Int)

(assert (=> bs!1786837 (not (= lambda!376589 lambda!376537))))

(assert (=> bs!1786837 (not (= lambda!376589 lambda!376538))))

(assert (=> bs!1786837 (= (and (= (regOne!33598 r!7292) (reg!16872 r!7292)) (= (regTwo!33598 r!7292) r!7292)) (= lambda!376589 lambda!376539))))

(declare-fun bs!1786838 () Bool)

(assert (= bs!1786838 (and b!6715262 b!6715254)))

(assert (=> bs!1786838 (not (= lambda!376589 lambda!376588))))

(assert (=> b!6715262 true))

(assert (=> b!6715262 true))

(declare-fun b!6715253 () Bool)

(declare-fun e!4058112 () Bool)

(declare-fun e!4058114 () Bool)

(assert (=> b!6715253 (= e!4058112 e!4058114)))

(declare-fun res!2748183 () Bool)

(assert (=> b!6715253 (= res!2748183 (matchRSpec!3644 (regOne!33599 r!7292) s!2326))))

(assert (=> b!6715253 (=> res!2748183 e!4058114)))

(declare-fun d!2110661 () Bool)

(declare-fun c!1245060 () Bool)

(assert (=> d!2110661 (= c!1245060 ((_ is EmptyExpr!16543) r!7292))))

(declare-fun e!4058111 () Bool)

(assert (=> d!2110661 (= (matchRSpec!3644 r!7292 s!2326) e!4058111)))

(declare-fun e!4058115 () Bool)

(declare-fun call!606082 () Bool)

(assert (=> b!6715254 (= e!4058115 call!606082)))

(declare-fun b!6715255 () Bool)

(declare-fun res!2748182 () Bool)

(assert (=> b!6715255 (=> res!2748182 e!4058115)))

(declare-fun call!606083 () Bool)

(assert (=> b!6715255 (= res!2748182 call!606083)))

(declare-fun e!4058113 () Bool)

(assert (=> b!6715255 (= e!4058113 e!4058115)))

(declare-fun bm!606077 () Bool)

(assert (=> bm!606077 (= call!606083 (isEmpty!38122 s!2326))))

(declare-fun b!6715256 () Bool)

(assert (=> b!6715256 (= e!4058111 call!606083)))

(declare-fun b!6715257 () Bool)

(declare-fun c!1245062 () Bool)

(assert (=> b!6715257 (= c!1245062 ((_ is ElementMatch!16543) r!7292))))

(declare-fun e!4058110 () Bool)

(declare-fun e!4058116 () Bool)

(assert (=> b!6715257 (= e!4058110 e!4058116)))

(declare-fun b!6715258 () Bool)

(declare-fun c!1245063 () Bool)

(assert (=> b!6715258 (= c!1245063 ((_ is Union!16543) r!7292))))

(assert (=> b!6715258 (= e!4058116 e!4058112)))

(declare-fun b!6715259 () Bool)

(assert (=> b!6715259 (= e!4058111 e!4058110)))

(declare-fun res!2748184 () Bool)

(assert (=> b!6715259 (= res!2748184 (not ((_ is EmptyLang!16543) r!7292)))))

(assert (=> b!6715259 (=> (not res!2748184) (not e!4058110))))

(declare-fun b!6715260 () Bool)

(assert (=> b!6715260 (= e!4058114 (matchRSpec!3644 (regTwo!33599 r!7292) s!2326))))

(declare-fun b!6715261 () Bool)

(assert (=> b!6715261 (= e!4058112 e!4058113)))

(declare-fun c!1245061 () Bool)

(assert (=> b!6715261 (= c!1245061 ((_ is Star!16543) r!7292))))

(assert (=> b!6715262 (= e!4058113 call!606082)))

(declare-fun b!6715263 () Bool)

(assert (=> b!6715263 (= e!4058116 (= s!2326 (Cons!65804 (c!1244979 r!7292) Nil!65804)))))

(declare-fun bm!606078 () Bool)

(assert (=> bm!606078 (= call!606082 (Exists!3611 (ite c!1245061 lambda!376588 lambda!376589)))))

(assert (= (and d!2110661 c!1245060) b!6715256))

(assert (= (and d!2110661 (not c!1245060)) b!6715259))

(assert (= (and b!6715259 res!2748184) b!6715257))

(assert (= (and b!6715257 c!1245062) b!6715263))

(assert (= (and b!6715257 (not c!1245062)) b!6715258))

(assert (= (and b!6715258 c!1245063) b!6715253))

(assert (= (and b!6715258 (not c!1245063)) b!6715261))

(assert (= (and b!6715253 (not res!2748183)) b!6715260))

(assert (= (and b!6715261 c!1245061) b!6715255))

(assert (= (and b!6715261 (not c!1245061)) b!6715262))

(assert (= (and b!6715255 (not res!2748182)) b!6715254))

(assert (= (or b!6715254 b!6715262) bm!606078))

(assert (= (or b!6715256 b!6715255) bm!606077))

(declare-fun m!7479174 () Bool)

(assert (=> b!6715253 m!7479174))

(assert (=> bm!606077 m!7478992))

(declare-fun m!7479176 () Bool)

(assert (=> b!6715260 m!7479176))

(declare-fun m!7479178 () Bool)

(assert (=> bm!606078 m!7479178))

(assert (=> b!6714954 d!2110661))

(declare-fun b!6715391 () Bool)

(declare-fun res!2748233 () Bool)

(declare-fun e!4058183 () Bool)

(assert (=> b!6715391 (=> res!2748233 e!4058183)))

(declare-fun tail!12599 (List!65928) List!65928)

(assert (=> b!6715391 (= res!2748233 (not (isEmpty!38122 (tail!12599 s!2326))))))

(declare-fun b!6715392 () Bool)

(declare-fun e!4058184 () Bool)

(declare-fun lt!2436278 () Bool)

(declare-fun call!606089 () Bool)

(assert (=> b!6715392 (= e!4058184 (= lt!2436278 call!606089))))

(declare-fun b!6715393 () Bool)

(declare-fun e!4058178 () Bool)

(assert (=> b!6715393 (= e!4058178 (nullable!6530 r!7292))))

(declare-fun b!6715394 () Bool)

(declare-fun e!4058182 () Bool)

(declare-fun e!4058180 () Bool)

(assert (=> b!6715394 (= e!4058182 e!4058180)))

(declare-fun res!2748230 () Bool)

(assert (=> b!6715394 (=> (not res!2748230) (not e!4058180))))

(assert (=> b!6715394 (= res!2748230 (not lt!2436278))))

(declare-fun b!6715395 () Bool)

(declare-fun derivativeStep!5215 (Regex!16543 C!33356) Regex!16543)

(declare-fun head!13514 (List!65928) C!33356)

(assert (=> b!6715395 (= e!4058178 (matchR!8726 (derivativeStep!5215 r!7292 (head!13514 s!2326)) (tail!12599 s!2326)))))

(declare-fun b!6715396 () Bool)

(declare-fun e!4058181 () Bool)

(assert (=> b!6715396 (= e!4058181 (not lt!2436278))))

(declare-fun b!6715397 () Bool)

(declare-fun res!2748234 () Bool)

(assert (=> b!6715397 (=> res!2748234 e!4058182)))

(assert (=> b!6715397 (= res!2748234 (not ((_ is ElementMatch!16543) r!7292)))))

(assert (=> b!6715397 (= e!4058181 e!4058182)))

(declare-fun b!6715399 () Bool)

(assert (=> b!6715399 (= e!4058183 (not (= (head!13514 s!2326) (c!1244979 r!7292))))))

(declare-fun b!6715400 () Bool)

(declare-fun e!4058179 () Bool)

(assert (=> b!6715400 (= e!4058179 (= (head!13514 s!2326) (c!1244979 r!7292)))))

(declare-fun b!6715401 () Bool)

(declare-fun res!2748232 () Bool)

(assert (=> b!6715401 (=> (not res!2748232) (not e!4058179))))

(assert (=> b!6715401 (= res!2748232 (isEmpty!38122 (tail!12599 s!2326)))))

(declare-fun b!6715402 () Bool)

(declare-fun res!2748231 () Bool)

(assert (=> b!6715402 (=> res!2748231 e!4058182)))

(assert (=> b!6715402 (= res!2748231 e!4058179)))

(declare-fun res!2748228 () Bool)

(assert (=> b!6715402 (=> (not res!2748228) (not e!4058179))))

(assert (=> b!6715402 (= res!2748228 lt!2436278)))

(declare-fun bm!606084 () Bool)

(assert (=> bm!606084 (= call!606089 (isEmpty!38122 s!2326))))

(declare-fun b!6715403 () Bool)

(declare-fun res!2748229 () Bool)

(assert (=> b!6715403 (=> (not res!2748229) (not e!4058179))))

(assert (=> b!6715403 (= res!2748229 (not call!606089))))

(declare-fun b!6715404 () Bool)

(assert (=> b!6715404 (= e!4058184 e!4058181)))

(declare-fun c!1245080 () Bool)

(assert (=> b!6715404 (= c!1245080 ((_ is EmptyLang!16543) r!7292))))

(declare-fun b!6715398 () Bool)

(assert (=> b!6715398 (= e!4058180 e!4058183)))

(declare-fun res!2748235 () Bool)

(assert (=> b!6715398 (=> res!2748235 e!4058183)))

(assert (=> b!6715398 (= res!2748235 call!606089)))

(declare-fun d!2110671 () Bool)

(assert (=> d!2110671 e!4058184))

(declare-fun c!1245079 () Bool)

(assert (=> d!2110671 (= c!1245079 ((_ is EmptyExpr!16543) r!7292))))

(assert (=> d!2110671 (= lt!2436278 e!4058178)))

(declare-fun c!1245081 () Bool)

(assert (=> d!2110671 (= c!1245081 (isEmpty!38122 s!2326))))

(assert (=> d!2110671 (validRegex!8279 r!7292)))

(assert (=> d!2110671 (= (matchR!8726 r!7292 s!2326) lt!2436278)))

(assert (= (and d!2110671 c!1245081) b!6715393))

(assert (= (and d!2110671 (not c!1245081)) b!6715395))

(assert (= (and d!2110671 c!1245079) b!6715392))

(assert (= (and d!2110671 (not c!1245079)) b!6715404))

(assert (= (and b!6715404 c!1245080) b!6715396))

(assert (= (and b!6715404 (not c!1245080)) b!6715397))

(assert (= (and b!6715397 (not res!2748234)) b!6715402))

(assert (= (and b!6715402 res!2748228) b!6715403))

(assert (= (and b!6715403 res!2748229) b!6715401))

(assert (= (and b!6715401 res!2748232) b!6715400))

(assert (= (and b!6715402 (not res!2748231)) b!6715394))

(assert (= (and b!6715394 res!2748230) b!6715398))

(assert (= (and b!6715398 (not res!2748235)) b!6715391))

(assert (= (and b!6715391 (not res!2748233)) b!6715399))

(assert (= (or b!6715392 b!6715398 b!6715403) bm!606084))

(declare-fun m!7479208 () Bool)

(assert (=> b!6715401 m!7479208))

(assert (=> b!6715401 m!7479208))

(declare-fun m!7479210 () Bool)

(assert (=> b!6715401 m!7479210))

(declare-fun m!7479212 () Bool)

(assert (=> b!6715393 m!7479212))

(assert (=> b!6715391 m!7479208))

(assert (=> b!6715391 m!7479208))

(assert (=> b!6715391 m!7479210))

(declare-fun m!7479214 () Bool)

(assert (=> b!6715399 m!7479214))

(assert (=> d!2110671 m!7478992))

(assert (=> d!2110671 m!7478988))

(assert (=> b!6715395 m!7479214))

(assert (=> b!6715395 m!7479214))

(declare-fun m!7479216 () Bool)

(assert (=> b!6715395 m!7479216))

(assert (=> b!6715395 m!7479208))

(assert (=> b!6715395 m!7479216))

(assert (=> b!6715395 m!7479208))

(declare-fun m!7479218 () Bool)

(assert (=> b!6715395 m!7479218))

(assert (=> b!6715400 m!7479214))

(assert (=> bm!606084 m!7478992))

(assert (=> b!6714954 d!2110671))

(declare-fun d!2110683 () Bool)

(assert (=> d!2110683 (= (matchR!8726 r!7292 s!2326) (matchRSpec!3644 r!7292 s!2326))))

(declare-fun lt!2436281 () Unit!159777)

(declare-fun choose!50038 (Regex!16543 List!65928) Unit!159777)

(assert (=> d!2110683 (= lt!2436281 (choose!50038 r!7292 s!2326))))

(assert (=> d!2110683 (validRegex!8279 r!7292)))

(assert (=> d!2110683 (= (mainMatchTheorem!3644 r!7292 s!2326) lt!2436281)))

(declare-fun bs!1786851 () Bool)

(assert (= bs!1786851 d!2110683))

(assert (=> bs!1786851 m!7479014))

(assert (=> bs!1786851 m!7479012))

(declare-fun m!7479220 () Bool)

(assert (=> bs!1786851 m!7479220))

(assert (=> bs!1786851 m!7478988))

(assert (=> b!6714954 d!2110683))

(declare-fun d!2110685 () Bool)

(declare-fun isEmpty!38126 (Option!16430) Bool)

(assert (=> d!2110685 (= (isDefined!13133 (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 Nil!65804 s!2326 s!2326)) (not (isEmpty!38126 (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 Nil!65804 s!2326 s!2326))))))

(declare-fun bs!1786852 () Bool)

(assert (= bs!1786852 d!2110685))

(assert (=> bs!1786852 m!7479002))

(declare-fun m!7479222 () Bool)

(assert (=> bs!1786852 m!7479222))

(assert (=> b!6714965 d!2110685))

(declare-fun d!2110687 () Bool)

(assert (=> d!2110687 (= (isEmpty!38122 s!2326) ((_ is Nil!65804) s!2326))))

(assert (=> b!6714965 d!2110687))

(declare-fun d!2110689 () Bool)

(declare-fun choose!50039 (Int) Bool)

(assert (=> d!2110689 (= (Exists!3611 lambda!376539) (choose!50039 lambda!376539))))

(declare-fun bs!1786853 () Bool)

(assert (= bs!1786853 d!2110689))

(declare-fun m!7479224 () Bool)

(assert (=> bs!1786853 m!7479224))

(assert (=> b!6714965 d!2110689))

(declare-fun bs!1786854 () Bool)

(declare-fun d!2110691 () Bool)

(assert (= bs!1786854 (and d!2110691 b!6714965)))

(declare-fun lambda!376596 () Int)

(assert (=> bs!1786854 (= lambda!376596 lambda!376537)))

(assert (=> bs!1786854 (not (= lambda!376596 lambda!376539))))

(declare-fun bs!1786855 () Bool)

(assert (= bs!1786855 (and d!2110691 b!6715262)))

(assert (=> bs!1786855 (not (= lambda!376596 lambda!376589))))

(declare-fun bs!1786856 () Bool)

(assert (= bs!1786856 (and d!2110691 b!6715254)))

(assert (=> bs!1786856 (not (= lambda!376596 lambda!376588))))

(assert (=> bs!1786854 (not (= lambda!376596 lambda!376538))))

(assert (=> d!2110691 true))

(assert (=> d!2110691 true))

(assert (=> d!2110691 true))

(declare-fun lambda!376597 () Int)

(assert (=> bs!1786854 (not (= lambda!376597 lambda!376537))))

(assert (=> bs!1786854 (= lambda!376597 lambda!376539)))

(assert (=> bs!1786855 (= (and (= (reg!16872 r!7292) (regOne!33598 r!7292)) (= r!7292 (regTwo!33598 r!7292))) (= lambda!376597 lambda!376589))))

(assert (=> bs!1786856 (not (= lambda!376597 lambda!376588))))

(assert (=> bs!1786854 (not (= lambda!376597 lambda!376538))))

(declare-fun bs!1786857 () Bool)

(assert (= bs!1786857 d!2110691))

(assert (=> bs!1786857 (not (= lambda!376597 lambda!376596))))

(assert (=> d!2110691 true))

(assert (=> d!2110691 true))

(assert (=> d!2110691 true))

(assert (=> d!2110691 (= (Exists!3611 lambda!376596) (Exists!3611 lambda!376597))))

(declare-fun lt!2436284 () Unit!159777)

(declare-fun choose!50040 (Regex!16543 Regex!16543 List!65928) Unit!159777)

(assert (=> d!2110691 (= lt!2436284 (choose!50040 (reg!16872 r!7292) r!7292 s!2326))))

(assert (=> d!2110691 (validRegex!8279 (reg!16872 r!7292))))

(assert (=> d!2110691 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2138 (reg!16872 r!7292) r!7292 s!2326) lt!2436284)))

(declare-fun m!7479226 () Bool)

(assert (=> bs!1786857 m!7479226))

(declare-fun m!7479228 () Bool)

(assert (=> bs!1786857 m!7479228))

(declare-fun m!7479230 () Bool)

(assert (=> bs!1786857 m!7479230))

(declare-fun m!7479232 () Bool)

(assert (=> bs!1786857 m!7479232))

(assert (=> b!6714965 d!2110691))

(declare-fun d!2110693 () Bool)

(assert (=> d!2110693 (= (Exists!3611 lambda!376538) (choose!50039 lambda!376538))))

(declare-fun bs!1786858 () Bool)

(assert (= bs!1786858 d!2110693))

(declare-fun m!7479234 () Bool)

(assert (=> bs!1786858 m!7479234))

(assert (=> b!6714965 d!2110693))

(declare-fun d!2110695 () Bool)

(assert (=> d!2110695 (= (Exists!3611 lambda!376537) (choose!50039 lambda!376537))))

(declare-fun bs!1786859 () Bool)

(assert (= bs!1786859 d!2110695))

(declare-fun m!7479236 () Bool)

(assert (=> bs!1786859 m!7479236))

(assert (=> b!6714965 d!2110695))

(declare-fun bs!1786860 () Bool)

(declare-fun d!2110697 () Bool)

(assert (= bs!1786860 (and d!2110697 d!2110691)))

(declare-fun lambda!376602 () Int)

(assert (=> bs!1786860 (not (= lambda!376602 lambda!376597))))

(declare-fun bs!1786861 () Bool)

(assert (= bs!1786861 (and d!2110697 b!6714965)))

(assert (=> bs!1786861 (= (= (Star!16543 (reg!16872 r!7292)) r!7292) (= lambda!376602 lambda!376537))))

(assert (=> bs!1786861 (not (= lambda!376602 lambda!376539))))

(declare-fun bs!1786862 () Bool)

(assert (= bs!1786862 (and d!2110697 b!6715262)))

(assert (=> bs!1786862 (not (= lambda!376602 lambda!376589))))

(declare-fun bs!1786863 () Bool)

(assert (= bs!1786863 (and d!2110697 b!6715254)))

(assert (=> bs!1786863 (not (= lambda!376602 lambda!376588))))

(assert (=> bs!1786861 (not (= lambda!376602 lambda!376538))))

(assert (=> bs!1786860 (= (= (Star!16543 (reg!16872 r!7292)) r!7292) (= lambda!376602 lambda!376596))))

(assert (=> d!2110697 true))

(assert (=> d!2110697 true))

(declare-fun bs!1786864 () Bool)

(assert (= bs!1786864 d!2110697))

(declare-fun lambda!376603 () Int)

(assert (=> bs!1786864 (not (= lambda!376603 lambda!376602))))

(assert (=> bs!1786860 (not (= lambda!376603 lambda!376597))))

(assert (=> bs!1786861 (not (= lambda!376603 lambda!376537))))

(assert (=> bs!1786861 (not (= lambda!376603 lambda!376539))))

(assert (=> bs!1786862 (not (= lambda!376603 lambda!376589))))

(assert (=> bs!1786863 (= (= (Star!16543 (reg!16872 r!7292)) r!7292) (= lambda!376603 lambda!376588))))

(assert (=> bs!1786861 (= (= (Star!16543 (reg!16872 r!7292)) r!7292) (= lambda!376603 lambda!376538))))

(assert (=> bs!1786860 (not (= lambda!376603 lambda!376596))))

(assert (=> d!2110697 true))

(assert (=> d!2110697 true))

(assert (=> d!2110697 (= (Exists!3611 lambda!376602) (Exists!3611 lambda!376603))))

(declare-fun lt!2436287 () Unit!159777)

(declare-fun choose!50041 (Regex!16543 List!65928) Unit!159777)

(assert (=> d!2110697 (= lt!2436287 (choose!50041 (reg!16872 r!7292) s!2326))))

(assert (=> d!2110697 (validRegex!8279 (reg!16872 r!7292))))

(assert (=> d!2110697 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!702 (reg!16872 r!7292) s!2326) lt!2436287)))

(declare-fun m!7479238 () Bool)

(assert (=> bs!1786864 m!7479238))

(declare-fun m!7479240 () Bool)

(assert (=> bs!1786864 m!7479240))

(declare-fun m!7479242 () Bool)

(assert (=> bs!1786864 m!7479242))

(assert (=> bs!1786864 m!7479232))

(assert (=> b!6714965 d!2110697))

(declare-fun b!6715441 () Bool)

(declare-fun res!2748266 () Bool)

(declare-fun e!4058207 () Bool)

(assert (=> b!6715441 (=> (not res!2748266) (not e!4058207))))

(declare-fun lt!2436294 () Option!16430)

(declare-fun get!22886 (Option!16430) tuple2!67036)

(assert (=> b!6715441 (= res!2748266 (matchR!8726 (reg!16872 r!7292) (_1!36821 (get!22886 lt!2436294))))))

(declare-fun b!6715442 () Bool)

(declare-fun res!2748264 () Bool)

(assert (=> b!6715442 (=> (not res!2748264) (not e!4058207))))

(assert (=> b!6715442 (= res!2748264 (matchR!8726 r!7292 (_2!36821 (get!22886 lt!2436294))))))

(declare-fun b!6715443 () Bool)

(declare-fun e!4058206 () Option!16430)

(assert (=> b!6715443 (= e!4058206 None!16429)))

(declare-fun b!6715444 () Bool)

(declare-fun lt!2436296 () Unit!159777)

(declare-fun lt!2436295 () Unit!159777)

(assert (=> b!6715444 (= lt!2436296 lt!2436295)))

(declare-fun ++!14699 (List!65928 List!65928) List!65928)

(assert (=> b!6715444 (= (++!14699 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) (t!379605 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2672 (List!65928 C!33356 List!65928 List!65928) Unit!159777)

(assert (=> b!6715444 (= lt!2436295 (lemmaMoveElementToOtherListKeepsConcatEq!2672 Nil!65804 (h!72252 s!2326) (t!379605 s!2326) s!2326))))

(assert (=> b!6715444 (= e!4058206 (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) (t!379605 s!2326) s!2326))))

(declare-fun b!6715445 () Bool)

(declare-fun e!4058205 () Option!16430)

(assert (=> b!6715445 (= e!4058205 (Some!16429 (tuple2!67037 Nil!65804 s!2326)))))

(declare-fun b!6715446 () Bool)

(assert (=> b!6715446 (= e!4058205 e!4058206)))

(declare-fun c!1245087 () Bool)

(assert (=> b!6715446 (= c!1245087 ((_ is Nil!65804) s!2326))))

(declare-fun d!2110699 () Bool)

(declare-fun e!4058204 () Bool)

(assert (=> d!2110699 e!4058204))

(declare-fun res!2748265 () Bool)

(assert (=> d!2110699 (=> res!2748265 e!4058204)))

(assert (=> d!2110699 (= res!2748265 e!4058207)))

(declare-fun res!2748268 () Bool)

(assert (=> d!2110699 (=> (not res!2748268) (not e!4058207))))

(assert (=> d!2110699 (= res!2748268 (isDefined!13133 lt!2436294))))

(assert (=> d!2110699 (= lt!2436294 e!4058205)))

(declare-fun c!1245086 () Bool)

(declare-fun e!4058203 () Bool)

(assert (=> d!2110699 (= c!1245086 e!4058203)))

(declare-fun res!2748267 () Bool)

(assert (=> d!2110699 (=> (not res!2748267) (not e!4058203))))

(assert (=> d!2110699 (= res!2748267 (matchR!8726 (reg!16872 r!7292) Nil!65804))))

(assert (=> d!2110699 (validRegex!8279 (reg!16872 r!7292))))

(assert (=> d!2110699 (= (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 Nil!65804 s!2326 s!2326) lt!2436294)))

(declare-fun b!6715447 () Bool)

(assert (=> b!6715447 (= e!4058207 (= (++!14699 (_1!36821 (get!22886 lt!2436294)) (_2!36821 (get!22886 lt!2436294))) s!2326))))

(declare-fun b!6715448 () Bool)

(assert (=> b!6715448 (= e!4058204 (not (isDefined!13133 lt!2436294)))))

(declare-fun b!6715449 () Bool)

(assert (=> b!6715449 (= e!4058203 (matchR!8726 r!7292 s!2326))))

(assert (= (and d!2110699 res!2748267) b!6715449))

(assert (= (and d!2110699 c!1245086) b!6715445))

(assert (= (and d!2110699 (not c!1245086)) b!6715446))

(assert (= (and b!6715446 c!1245087) b!6715443))

(assert (= (and b!6715446 (not c!1245087)) b!6715444))

(assert (= (and d!2110699 res!2748268) b!6715441))

(assert (= (and b!6715441 res!2748266) b!6715442))

(assert (= (and b!6715442 res!2748264) b!6715447))

(assert (= (and d!2110699 (not res!2748265)) b!6715448))

(declare-fun m!7479244 () Bool)

(assert (=> b!6715448 m!7479244))

(declare-fun m!7479246 () Bool)

(assert (=> b!6715444 m!7479246))

(assert (=> b!6715444 m!7479246))

(declare-fun m!7479248 () Bool)

(assert (=> b!6715444 m!7479248))

(declare-fun m!7479250 () Bool)

(assert (=> b!6715444 m!7479250))

(assert (=> b!6715444 m!7479246))

(declare-fun m!7479252 () Bool)

(assert (=> b!6715444 m!7479252))

(declare-fun m!7479254 () Bool)

(assert (=> b!6715447 m!7479254))

(declare-fun m!7479256 () Bool)

(assert (=> b!6715447 m!7479256))

(assert (=> b!6715441 m!7479254))

(declare-fun m!7479258 () Bool)

(assert (=> b!6715441 m!7479258))

(assert (=> b!6715442 m!7479254))

(declare-fun m!7479260 () Bool)

(assert (=> b!6715442 m!7479260))

(assert (=> b!6715449 m!7479014))

(assert (=> d!2110699 m!7479244))

(declare-fun m!7479262 () Bool)

(assert (=> d!2110699 m!7479262))

(assert (=> d!2110699 m!7479232))

(assert (=> b!6714965 d!2110699))

(declare-fun bs!1786865 () Bool)

(declare-fun d!2110701 () Bool)

(assert (= bs!1786865 (and d!2110701 d!2110697)))

(declare-fun lambda!376606 () Int)

(assert (=> bs!1786865 (= (= r!7292 (Star!16543 (reg!16872 r!7292))) (= lambda!376606 lambda!376602))))

(declare-fun bs!1786866 () Bool)

(assert (= bs!1786866 (and d!2110701 d!2110691)))

(assert (=> bs!1786866 (not (= lambda!376606 lambda!376597))))

(declare-fun bs!1786867 () Bool)

(assert (= bs!1786867 (and d!2110701 b!6714965)))

(assert (=> bs!1786867 (= lambda!376606 lambda!376537)))

(assert (=> bs!1786867 (not (= lambda!376606 lambda!376539))))

(declare-fun bs!1786868 () Bool)

(assert (= bs!1786868 (and d!2110701 b!6715262)))

(assert (=> bs!1786868 (not (= lambda!376606 lambda!376589))))

(assert (=> bs!1786865 (not (= lambda!376606 lambda!376603))))

(declare-fun bs!1786869 () Bool)

(assert (= bs!1786869 (and d!2110701 b!6715254)))

(assert (=> bs!1786869 (not (= lambda!376606 lambda!376588))))

(assert (=> bs!1786867 (not (= lambda!376606 lambda!376538))))

(assert (=> bs!1786866 (= lambda!376606 lambda!376596)))

(assert (=> d!2110701 true))

(assert (=> d!2110701 true))

(assert (=> d!2110701 true))

(assert (=> d!2110701 (= (isDefined!13133 (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 Nil!65804 s!2326 s!2326)) (Exists!3611 lambda!376606))))

(declare-fun lt!2436299 () Unit!159777)

(declare-fun choose!50042 (Regex!16543 Regex!16543 List!65928) Unit!159777)

(assert (=> d!2110701 (= lt!2436299 (choose!50042 (reg!16872 r!7292) r!7292 s!2326))))

(assert (=> d!2110701 (validRegex!8279 (reg!16872 r!7292))))

(assert (=> d!2110701 (= (lemmaFindConcatSeparationEquivalentToExists!2608 (reg!16872 r!7292) r!7292 s!2326) lt!2436299)))

(declare-fun bs!1786870 () Bool)

(assert (= bs!1786870 d!2110701))

(assert (=> bs!1786870 m!7479002))

(assert (=> bs!1786870 m!7479008))

(declare-fun m!7479264 () Bool)

(assert (=> bs!1786870 m!7479264))

(declare-fun m!7479266 () Bool)

(assert (=> bs!1786870 m!7479266))

(assert (=> bs!1786870 m!7479002))

(assert (=> bs!1786870 m!7479232))

(assert (=> b!6714965 d!2110701))

(declare-fun bs!1786871 () Bool)

(declare-fun d!2110703 () Bool)

(assert (= bs!1786871 (and d!2110703 d!2110655)))

(declare-fun lambda!376609 () Int)

(assert (=> bs!1786871 (= lambda!376609 lambda!376571)))

(declare-fun bs!1786872 () Bool)

(assert (= bs!1786872 (and d!2110703 d!2110647)))

(assert (=> bs!1786872 (= lambda!376609 lambda!376564)))

(declare-fun bs!1786873 () Bool)

(assert (= bs!1786873 (and d!2110703 d!2110621)))

(assert (=> bs!1786873 (= lambda!376609 lambda!376546)))

(declare-fun bs!1786874 () Bool)

(assert (= bs!1786874 (and d!2110703 d!2110643)))

(assert (=> bs!1786874 (= lambda!376609 lambda!376556)))

(declare-fun bs!1786875 () Bool)

(assert (= bs!1786875 (and d!2110703 d!2110629)))

(assert (=> bs!1786875 (= lambda!376609 lambda!376549)))

(declare-fun b!6715474 () Bool)

(declare-fun e!4058222 () Regex!16543)

(assert (=> b!6715474 (= e!4058222 (Concat!25388 (h!72253 (exprs!6427 (h!72254 zl!343))) (generalisedConcat!2140 (t!379606 (exprs!6427 (h!72254 zl!343))))))))

(declare-fun b!6715476 () Bool)

(declare-fun e!4058227 () Regex!16543)

(assert (=> b!6715476 (= e!4058227 e!4058222)))

(declare-fun c!1245099 () Bool)

(assert (=> b!6715476 (= c!1245099 ((_ is Cons!65805) (exprs!6427 (h!72254 zl!343))))))

(declare-fun b!6715477 () Bool)

(declare-fun e!4058224 () Bool)

(assert (=> b!6715477 (= e!4058224 (isEmpty!38125 (t!379606 (exprs!6427 (h!72254 zl!343)))))))

(declare-fun b!6715478 () Bool)

(declare-fun e!4058225 () Bool)

(declare-fun e!4058223 () Bool)

(assert (=> b!6715478 (= e!4058225 e!4058223)))

(declare-fun c!1245098 () Bool)

(assert (=> b!6715478 (= c!1245098 (isEmpty!38125 (exprs!6427 (h!72254 zl!343))))))

(declare-fun b!6715479 () Bool)

(declare-fun e!4058226 () Bool)

(declare-fun lt!2436302 () Regex!16543)

(assert (=> b!6715479 (= e!4058226 (= lt!2436302 (head!13513 (exprs!6427 (h!72254 zl!343)))))))

(declare-fun b!6715480 () Bool)

(declare-fun isConcat!1432 (Regex!16543) Bool)

(assert (=> b!6715480 (= e!4058226 (isConcat!1432 lt!2436302))))

(declare-fun b!6715481 () Bool)

(assert (=> b!6715481 (= e!4058227 (h!72253 (exprs!6427 (h!72254 zl!343))))))

(declare-fun b!6715482 () Bool)

(assert (=> b!6715482 (= e!4058222 EmptyExpr!16543)))

(declare-fun b!6715483 () Bool)

(declare-fun isEmptyExpr!1909 (Regex!16543) Bool)

(assert (=> b!6715483 (= e!4058223 (isEmptyExpr!1909 lt!2436302))))

(declare-fun b!6715475 () Bool)

(assert (=> b!6715475 (= e!4058223 e!4058226)))

(declare-fun c!1245097 () Bool)

(assert (=> b!6715475 (= c!1245097 (isEmpty!38125 (tail!12598 (exprs!6427 (h!72254 zl!343)))))))

(assert (=> d!2110703 e!4058225))

(declare-fun res!2748278 () Bool)

(assert (=> d!2110703 (=> (not res!2748278) (not e!4058225))))

(assert (=> d!2110703 (= res!2748278 (validRegex!8279 lt!2436302))))

(assert (=> d!2110703 (= lt!2436302 e!4058227)))

(declare-fun c!1245096 () Bool)

(assert (=> d!2110703 (= c!1245096 e!4058224)))

(declare-fun res!2748277 () Bool)

(assert (=> d!2110703 (=> (not res!2748277) (not e!4058224))))

(assert (=> d!2110703 (= res!2748277 ((_ is Cons!65805) (exprs!6427 (h!72254 zl!343))))))

(assert (=> d!2110703 (forall!15743 (exprs!6427 (h!72254 zl!343)) lambda!376609)))

(assert (=> d!2110703 (= (generalisedConcat!2140 (exprs!6427 (h!72254 zl!343))) lt!2436302)))

(assert (= (and d!2110703 res!2748277) b!6715477))

(assert (= (and d!2110703 c!1245096) b!6715481))

(assert (= (and d!2110703 (not c!1245096)) b!6715476))

(assert (= (and b!6715476 c!1245099) b!6715474))

(assert (= (and b!6715476 (not c!1245099)) b!6715482))

(assert (= (and d!2110703 res!2748278) b!6715478))

(assert (= (and b!6715478 c!1245098) b!6715483))

(assert (= (and b!6715478 (not c!1245098)) b!6715475))

(assert (= (and b!6715475 c!1245097) b!6715479))

(assert (= (and b!6715475 (not c!1245097)) b!6715480))

(declare-fun m!7479268 () Bool)

(assert (=> b!6715474 m!7479268))

(declare-fun m!7479270 () Bool)

(assert (=> b!6715475 m!7479270))

(assert (=> b!6715475 m!7479270))

(declare-fun m!7479272 () Bool)

(assert (=> b!6715475 m!7479272))

(declare-fun m!7479274 () Bool)

(assert (=> b!6715479 m!7479274))

(declare-fun m!7479276 () Bool)

(assert (=> b!6715483 m!7479276))

(declare-fun m!7479278 () Bool)

(assert (=> b!6715480 m!7479278))

(declare-fun m!7479280 () Bool)

(assert (=> d!2110703 m!7479280))

(declare-fun m!7479282 () Bool)

(assert (=> d!2110703 m!7479282))

(declare-fun m!7479284 () Bool)

(assert (=> b!6715478 m!7479284))

(declare-fun m!7479286 () Bool)

(assert (=> b!6715477 m!7479286))

(assert (=> b!6714958 d!2110703))

(declare-fun b!6715491 () Bool)

(declare-fun e!4058233 () Bool)

(declare-fun tp!1840340 () Bool)

(assert (=> b!6715491 (= e!4058233 tp!1840340)))

(declare-fun e!4058232 () Bool)

(declare-fun tp!1840341 () Bool)

(declare-fun b!6715490 () Bool)

(assert (=> b!6715490 (= e!4058232 (and (inv!84604 (h!72254 (t!379607 zl!343))) e!4058233 tp!1840341))))

(assert (=> b!6714949 (= tp!1840270 e!4058232)))

(assert (= b!6715490 b!6715491))

(assert (= (and b!6714949 ((_ is Cons!65806) (t!379607 zl!343))) b!6715490))

(declare-fun m!7479288 () Bool)

(assert (=> b!6715490 m!7479288))

(declare-fun b!6715496 () Bool)

(declare-fun e!4058236 () Bool)

(declare-fun tp!1840346 () Bool)

(declare-fun tp!1840347 () Bool)

(assert (=> b!6715496 (= e!4058236 (and tp!1840346 tp!1840347))))

(assert (=> b!6714963 (= tp!1840275 e!4058236)))

(assert (= (and b!6714963 ((_ is Cons!65805) (exprs!6427 setElem!45771))) b!6715496))

(declare-fun b!6715501 () Bool)

(declare-fun e!4058239 () Bool)

(declare-fun tp!1840350 () Bool)

(assert (=> b!6715501 (= e!4058239 (and tp_is_empty!42339 tp!1840350))))

(assert (=> b!6714955 (= tp!1840277 e!4058239)))

(assert (= (and b!6714955 ((_ is Cons!65804) (t!379605 s!2326))) b!6715501))

(declare-fun b!6715512 () Bool)

(declare-fun e!4058242 () Bool)

(assert (=> b!6715512 (= e!4058242 tp_is_empty!42339)))

(assert (=> b!6714946 (= tp!1840276 e!4058242)))

(declare-fun b!6715514 () Bool)

(declare-fun tp!1840364 () Bool)

(assert (=> b!6715514 (= e!4058242 tp!1840364)))

(declare-fun b!6715513 () Bool)

(declare-fun tp!1840365 () Bool)

(declare-fun tp!1840362 () Bool)

(assert (=> b!6715513 (= e!4058242 (and tp!1840365 tp!1840362))))

(declare-fun b!6715515 () Bool)

(declare-fun tp!1840363 () Bool)

(declare-fun tp!1840361 () Bool)

(assert (=> b!6715515 (= e!4058242 (and tp!1840363 tp!1840361))))

(assert (= (and b!6714946 ((_ is ElementMatch!16543) (regOne!33599 r!7292))) b!6715512))

(assert (= (and b!6714946 ((_ is Concat!25388) (regOne!33599 r!7292))) b!6715513))

(assert (= (and b!6714946 ((_ is Star!16543) (regOne!33599 r!7292))) b!6715514))

(assert (= (and b!6714946 ((_ is Union!16543) (regOne!33599 r!7292))) b!6715515))

(declare-fun b!6715516 () Bool)

(declare-fun e!4058243 () Bool)

(assert (=> b!6715516 (= e!4058243 tp_is_empty!42339)))

(assert (=> b!6714946 (= tp!1840268 e!4058243)))

(declare-fun b!6715518 () Bool)

(declare-fun tp!1840369 () Bool)

(assert (=> b!6715518 (= e!4058243 tp!1840369)))

(declare-fun b!6715517 () Bool)

(declare-fun tp!1840370 () Bool)

(declare-fun tp!1840367 () Bool)

(assert (=> b!6715517 (= e!4058243 (and tp!1840370 tp!1840367))))

(declare-fun b!6715519 () Bool)

(declare-fun tp!1840368 () Bool)

(declare-fun tp!1840366 () Bool)

(assert (=> b!6715519 (= e!4058243 (and tp!1840368 tp!1840366))))

(assert (= (and b!6714946 ((_ is ElementMatch!16543) (regTwo!33599 r!7292))) b!6715516))

(assert (= (and b!6714946 ((_ is Concat!25388) (regTwo!33599 r!7292))) b!6715517))

(assert (= (and b!6714946 ((_ is Star!16543) (regTwo!33599 r!7292))) b!6715518))

(assert (= (and b!6714946 ((_ is Union!16543) (regTwo!33599 r!7292))) b!6715519))

(declare-fun condSetEmpty!45777 () Bool)

(assert (=> setNonEmpty!45771 (= condSetEmpty!45777 (= setRest!45771 ((as const (Array Context!11854 Bool)) false)))))

(declare-fun setRes!45777 () Bool)

(assert (=> setNonEmpty!45771 (= tp!1840273 setRes!45777)))

(declare-fun setIsEmpty!45777 () Bool)

(assert (=> setIsEmpty!45777 setRes!45777))

(declare-fun setElem!45777 () Context!11854)

(declare-fun e!4058246 () Bool)

(declare-fun tp!1840375 () Bool)

(declare-fun setNonEmpty!45777 () Bool)

(assert (=> setNonEmpty!45777 (= setRes!45777 (and tp!1840375 (inv!84604 setElem!45777) e!4058246))))

(declare-fun setRest!45777 () (InoxSet Context!11854))

(assert (=> setNonEmpty!45777 (= setRest!45771 ((_ map or) (store ((as const (Array Context!11854 Bool)) false) setElem!45777 true) setRest!45777))))

(declare-fun b!6715524 () Bool)

(declare-fun tp!1840376 () Bool)

(assert (=> b!6715524 (= e!4058246 tp!1840376)))

(assert (= (and setNonEmpty!45771 condSetEmpty!45777) setIsEmpty!45777))

(assert (= (and setNonEmpty!45771 (not condSetEmpty!45777)) setNonEmpty!45777))

(assert (= setNonEmpty!45777 b!6715524))

(declare-fun m!7479290 () Bool)

(assert (=> setNonEmpty!45777 m!7479290))

(declare-fun b!6715525 () Bool)

(declare-fun e!4058247 () Bool)

(declare-fun tp!1840377 () Bool)

(declare-fun tp!1840378 () Bool)

(assert (=> b!6715525 (= e!4058247 (and tp!1840377 tp!1840378))))

(assert (=> b!6714956 (= tp!1840272 e!4058247)))

(assert (= (and b!6714956 ((_ is Cons!65805) (exprs!6427 (h!72254 zl!343)))) b!6715525))

(declare-fun b!6715526 () Bool)

(declare-fun e!4058248 () Bool)

(assert (=> b!6715526 (= e!4058248 tp_is_empty!42339)))

(assert (=> b!6714953 (= tp!1840269 e!4058248)))

(declare-fun b!6715528 () Bool)

(declare-fun tp!1840382 () Bool)

(assert (=> b!6715528 (= e!4058248 tp!1840382)))

(declare-fun b!6715527 () Bool)

(declare-fun tp!1840383 () Bool)

(declare-fun tp!1840380 () Bool)

(assert (=> b!6715527 (= e!4058248 (and tp!1840383 tp!1840380))))

(declare-fun b!6715529 () Bool)

(declare-fun tp!1840381 () Bool)

(declare-fun tp!1840379 () Bool)

(assert (=> b!6715529 (= e!4058248 (and tp!1840381 tp!1840379))))

(assert (= (and b!6714953 ((_ is ElementMatch!16543) (regOne!33598 r!7292))) b!6715526))

(assert (= (and b!6714953 ((_ is Concat!25388) (regOne!33598 r!7292))) b!6715527))

(assert (= (and b!6714953 ((_ is Star!16543) (regOne!33598 r!7292))) b!6715528))

(assert (= (and b!6714953 ((_ is Union!16543) (regOne!33598 r!7292))) b!6715529))

(declare-fun b!6715530 () Bool)

(declare-fun e!4058249 () Bool)

(assert (=> b!6715530 (= e!4058249 tp_is_empty!42339)))

(assert (=> b!6714953 (= tp!1840274 e!4058249)))

(declare-fun b!6715532 () Bool)

(declare-fun tp!1840387 () Bool)

(assert (=> b!6715532 (= e!4058249 tp!1840387)))

(declare-fun b!6715531 () Bool)

(declare-fun tp!1840388 () Bool)

(declare-fun tp!1840385 () Bool)

(assert (=> b!6715531 (= e!4058249 (and tp!1840388 tp!1840385))))

(declare-fun b!6715533 () Bool)

(declare-fun tp!1840386 () Bool)

(declare-fun tp!1840384 () Bool)

(assert (=> b!6715533 (= e!4058249 (and tp!1840386 tp!1840384))))

(assert (= (and b!6714953 ((_ is ElementMatch!16543) (regTwo!33598 r!7292))) b!6715530))

(assert (= (and b!6714953 ((_ is Concat!25388) (regTwo!33598 r!7292))) b!6715531))

(assert (= (and b!6714953 ((_ is Star!16543) (regTwo!33598 r!7292))) b!6715532))

(assert (= (and b!6714953 ((_ is Union!16543) (regTwo!33598 r!7292))) b!6715533))

(declare-fun b!6715534 () Bool)

(declare-fun e!4058250 () Bool)

(assert (=> b!6715534 (= e!4058250 tp_is_empty!42339)))

(assert (=> b!6714962 (= tp!1840271 e!4058250)))

(declare-fun b!6715536 () Bool)

(declare-fun tp!1840392 () Bool)

(assert (=> b!6715536 (= e!4058250 tp!1840392)))

(declare-fun b!6715535 () Bool)

(declare-fun tp!1840393 () Bool)

(declare-fun tp!1840390 () Bool)

(assert (=> b!6715535 (= e!4058250 (and tp!1840393 tp!1840390))))

(declare-fun b!6715537 () Bool)

(declare-fun tp!1840391 () Bool)

(declare-fun tp!1840389 () Bool)

(assert (=> b!6715537 (= e!4058250 (and tp!1840391 tp!1840389))))

(assert (= (and b!6714962 ((_ is ElementMatch!16543) (reg!16872 r!7292))) b!6715534))

(assert (= (and b!6714962 ((_ is Concat!25388) (reg!16872 r!7292))) b!6715535))

(assert (= (and b!6714962 ((_ is Star!16543) (reg!16872 r!7292))) b!6715536))

(assert (= (and b!6714962 ((_ is Union!16543) (reg!16872 r!7292))) b!6715537))

(check-sat (not d!2110647) (not d!2110655) (not b!6715400) (not b!6715478) (not d!2110703) (not b!6715441) (not b!6715479) (not b!6715537) (not b!6715490) (not b!6715087) (not b!6715531) (not b!6715532) (not b!6715515) (not b!6715444) (not bm!606078) (not b!6715448) (not b!6715401) (not b!6715535) (not b!6715528) (not b!6715533) (not d!2110685) (not b!6715519) (not b!6715536) (not b!6715496) (not b!6715449) (not b!6715399) (not b!6715525) (not b!6715085) (not b!6714980) (not b!6715529) (not b!6715524) (not b!6715480) (not b!6715483) tp_is_empty!42339 (not bm!606055) (not setNonEmpty!45777) (not bm!606057) (not b!6715475) (not b!6715260) (not b!6715491) (not b!6715080) (not b!6715393) (not d!2110645) (not d!2110643) (not b!6715253) (not b!6715084) (not b!6715513) (not d!2110683) (not d!2110689) (not b!6715082) (not d!2110621) (not b!6715447) (not b!6715442) (not b!6715527) (not b!6715391) (not d!2110691) (not d!2110697) (not b!6715079) (not bm!606077) (not d!2110693) (not b!6715501) (not b!6715014) (not d!2110701) (not b!6715083) (not b!6715517) (not d!2110671) (not bm!606084) (not b!6715133) (not d!2110695) (not b!6715474) (not d!2110699) (not b!6715395) (not b!6715477) (not d!2110629) (not d!2110623) (not b!6715514) (not b!6715518))
(check-sat)
(get-model)

(declare-fun d!2110765 () Bool)

(declare-fun res!2748339 () Bool)

(declare-fun e!4058307 () Bool)

(assert (=> d!2110765 (=> res!2748339 e!4058307)))

(assert (=> d!2110765 (= res!2748339 ((_ is Nil!65805) (exprs!6427 (h!72254 zl!343))))))

(assert (=> d!2110765 (= (forall!15743 (exprs!6427 (h!72254 zl!343)) lambda!376546) e!4058307)))

(declare-fun b!6715627 () Bool)

(declare-fun e!4058308 () Bool)

(assert (=> b!6715627 (= e!4058307 e!4058308)))

(declare-fun res!2748340 () Bool)

(assert (=> b!6715627 (=> (not res!2748340) (not e!4058308))))

(declare-fun dynLambda!26241 (Int Regex!16543) Bool)

(assert (=> b!6715627 (= res!2748340 (dynLambda!26241 lambda!376546 (h!72253 (exprs!6427 (h!72254 zl!343)))))))

(declare-fun b!6715628 () Bool)

(assert (=> b!6715628 (= e!4058308 (forall!15743 (t!379606 (exprs!6427 (h!72254 zl!343))) lambda!376546))))

(assert (= (and d!2110765 (not res!2748339)) b!6715627))

(assert (= (and b!6715627 res!2748340) b!6715628))

(declare-fun b_lambda!252871 () Bool)

(assert (=> (not b_lambda!252871) (not b!6715627)))

(declare-fun m!7479372 () Bool)

(assert (=> b!6715627 m!7479372))

(declare-fun m!7479374 () Bool)

(assert (=> b!6715628 m!7479374))

(assert (=> d!2110621 d!2110765))

(declare-fun d!2110777 () Bool)

(declare-fun e!4058315 () Bool)

(assert (=> d!2110777 e!4058315))

(declare-fun res!2748350 () Bool)

(assert (=> d!2110777 (=> (not res!2748350) (not e!4058315))))

(declare-fun lt!2436307 () List!65928)

(declare-fun content!12756 (List!65928) (InoxSet C!33356))

(assert (=> d!2110777 (= res!2748350 (= (content!12756 lt!2436307) ((_ map or) (content!12756 (_1!36821 (get!22886 lt!2436294))) (content!12756 (_2!36821 (get!22886 lt!2436294))))))))

(declare-fun e!4058316 () List!65928)

(assert (=> d!2110777 (= lt!2436307 e!4058316)))

(declare-fun c!1245119 () Bool)

(assert (=> d!2110777 (= c!1245119 ((_ is Nil!65804) (_1!36821 (get!22886 lt!2436294))))))

(assert (=> d!2110777 (= (++!14699 (_1!36821 (get!22886 lt!2436294)) (_2!36821 (get!22886 lt!2436294))) lt!2436307)))

(declare-fun b!6715642 () Bool)

(assert (=> b!6715642 (= e!4058316 (Cons!65804 (h!72252 (_1!36821 (get!22886 lt!2436294))) (++!14699 (t!379605 (_1!36821 (get!22886 lt!2436294))) (_2!36821 (get!22886 lt!2436294)))))))

(declare-fun b!6715644 () Bool)

(assert (=> b!6715644 (= e!4058315 (or (not (= (_2!36821 (get!22886 lt!2436294)) Nil!65804)) (= lt!2436307 (_1!36821 (get!22886 lt!2436294)))))))

(declare-fun b!6715641 () Bool)

(assert (=> b!6715641 (= e!4058316 (_2!36821 (get!22886 lt!2436294)))))

(declare-fun b!6715643 () Bool)

(declare-fun res!2748349 () Bool)

(assert (=> b!6715643 (=> (not res!2748349) (not e!4058315))))

(declare-fun size!40592 (List!65928) Int)

(assert (=> b!6715643 (= res!2748349 (= (size!40592 lt!2436307) (+ (size!40592 (_1!36821 (get!22886 lt!2436294))) (size!40592 (_2!36821 (get!22886 lt!2436294))))))))

(assert (= (and d!2110777 c!1245119) b!6715641))

(assert (= (and d!2110777 (not c!1245119)) b!6715642))

(assert (= (and d!2110777 res!2748350) b!6715643))

(assert (= (and b!6715643 res!2748349) b!6715644))

(declare-fun m!7479376 () Bool)

(assert (=> d!2110777 m!7479376))

(declare-fun m!7479378 () Bool)

(assert (=> d!2110777 m!7479378))

(declare-fun m!7479380 () Bool)

(assert (=> d!2110777 m!7479380))

(declare-fun m!7479382 () Bool)

(assert (=> b!6715642 m!7479382))

(declare-fun m!7479384 () Bool)

(assert (=> b!6715643 m!7479384))

(declare-fun m!7479386 () Bool)

(assert (=> b!6715643 m!7479386))

(declare-fun m!7479388 () Bool)

(assert (=> b!6715643 m!7479388))

(assert (=> b!6715447 d!2110777))

(declare-fun d!2110779 () Bool)

(assert (=> d!2110779 (= (get!22886 lt!2436294) (v!52627 lt!2436294))))

(assert (=> b!6715447 d!2110779))

(declare-fun d!2110781 () Bool)

(assert (=> d!2110781 (= (isEmpty!38125 (t!379606 (unfocusZipperList!1964 zl!343))) ((_ is Nil!65805) (t!379606 (unfocusZipperList!1964 zl!343))))))

(assert (=> b!6715079 d!2110781))

(declare-fun b!6715649 () Bool)

(declare-fun res!2748357 () Bool)

(declare-fun e!4058320 () Bool)

(assert (=> b!6715649 (=> res!2748357 e!4058320)))

(assert (=> b!6715649 (= res!2748357 (not ((_ is Concat!25388) (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292))))))))

(declare-fun e!4058324 () Bool)

(assert (=> b!6715649 (= e!4058324 e!4058320)))

(declare-fun bm!606095 () Bool)

(declare-fun call!606101 () Bool)

(declare-fun c!1245120 () Bool)

(assert (=> bm!606095 (= call!606101 (validRegex!8279 (ite c!1245120 (regTwo!33599 (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))) (regTwo!33598 (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))))))))

(declare-fun b!6715650 () Bool)

(declare-fun e!4058322 () Bool)

(declare-fun e!4058323 () Bool)

(assert (=> b!6715650 (= e!4058322 e!4058323)))

(declare-fun c!1245121 () Bool)

(assert (=> b!6715650 (= c!1245121 ((_ is Star!16543) (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))))))

(declare-fun b!6715651 () Bool)

(declare-fun e!4058321 () Bool)

(assert (=> b!6715651 (= e!4058321 call!606101)))

(declare-fun b!6715652 () Bool)

(declare-fun res!2748359 () Bool)

(declare-fun e!4058325 () Bool)

(assert (=> b!6715652 (=> (not res!2748359) (not e!4058325))))

(declare-fun call!606100 () Bool)

(assert (=> b!6715652 (= res!2748359 call!606100)))

(assert (=> b!6715652 (= e!4058324 e!4058325)))

(declare-fun b!6715653 () Bool)

(assert (=> b!6715653 (= e!4058323 e!4058324)))

(assert (=> b!6715653 (= c!1245120 ((_ is Union!16543) (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))))))

(declare-fun b!6715654 () Bool)

(declare-fun e!4058319 () Bool)

(assert (=> b!6715654 (= e!4058323 e!4058319)))

(declare-fun res!2748358 () Bool)

(assert (=> b!6715654 (= res!2748358 (not (nullable!6530 (reg!16872 (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))))))))

(assert (=> b!6715654 (=> (not res!2748358) (not e!4058319))))

(declare-fun d!2110783 () Bool)

(declare-fun res!2748356 () Bool)

(assert (=> d!2110783 (=> res!2748356 e!4058322)))

(assert (=> d!2110783 (= res!2748356 ((_ is ElementMatch!16543) (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))))))

(assert (=> d!2110783 (= (validRegex!8279 (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))) e!4058322)))

(declare-fun b!6715655 () Bool)

(assert (=> b!6715655 (= e!4058325 call!606101)))

(declare-fun bm!606096 () Bool)

(declare-fun call!606102 () Bool)

(assert (=> bm!606096 (= call!606100 call!606102)))

(declare-fun b!6715656 () Bool)

(assert (=> b!6715656 (= e!4058319 call!606102)))

(declare-fun b!6715657 () Bool)

(assert (=> b!6715657 (= e!4058320 e!4058321)))

(declare-fun res!2748355 () Bool)

(assert (=> b!6715657 (=> (not res!2748355) (not e!4058321))))

(assert (=> b!6715657 (= res!2748355 call!606100)))

(declare-fun bm!606097 () Bool)

(assert (=> bm!606097 (= call!606102 (validRegex!8279 (ite c!1245121 (reg!16872 (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))) (ite c!1245120 (regOne!33599 (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292)))) (regOne!33598 (ite c!1244985 (reg!16872 r!7292) (ite c!1244984 (regOne!33599 r!7292) (regOne!33598 r!7292))))))))))

(assert (= (and d!2110783 (not res!2748356)) b!6715650))

(assert (= (and b!6715650 c!1245121) b!6715654))

(assert (= (and b!6715650 (not c!1245121)) b!6715653))

(assert (= (and b!6715654 res!2748358) b!6715656))

(assert (= (and b!6715653 c!1245120) b!6715652))

(assert (= (and b!6715653 (not c!1245120)) b!6715649))

(assert (= (and b!6715652 res!2748359) b!6715655))

(assert (= (and b!6715649 (not res!2748357)) b!6715657))

(assert (= (and b!6715657 res!2748355) b!6715651))

(assert (= (or b!6715655 b!6715651) bm!606095))

(assert (= (or b!6715652 b!6715657) bm!606096))

(assert (= (or b!6715656 bm!606096) bm!606097))

(declare-fun m!7479390 () Bool)

(assert (=> bm!606095 m!7479390))

(declare-fun m!7479392 () Bool)

(assert (=> b!6715654 m!7479392))

(declare-fun m!7479394 () Bool)

(assert (=> bm!606097 m!7479394))

(assert (=> bm!606057 d!2110783))

(declare-fun d!2110785 () Bool)

(declare-fun c!1245124 () Bool)

(assert (=> d!2110785 (= c!1245124 ((_ is Nil!65806) lt!2436230))))

(declare-fun e!4058328 () (InoxSet Context!11854))

(assert (=> d!2110785 (= (content!12754 lt!2436230) e!4058328)))

(declare-fun b!6715662 () Bool)

(assert (=> b!6715662 (= e!4058328 ((as const (Array Context!11854 Bool)) false))))

(declare-fun b!6715663 () Bool)

(assert (=> b!6715663 (= e!4058328 ((_ map or) (store ((as const (Array Context!11854 Bool)) false) (h!72254 lt!2436230) true) (content!12754 (t!379607 lt!2436230))))))

(assert (= (and d!2110785 c!1245124) b!6715662))

(assert (= (and d!2110785 (not c!1245124)) b!6715663))

(declare-fun m!7479396 () Bool)

(assert (=> b!6715663 m!7479396))

(declare-fun m!7479398 () Bool)

(assert (=> b!6715663 m!7479398))

(assert (=> b!6714980 d!2110785))

(assert (=> b!6715449 d!2110671))

(declare-fun d!2110787 () Bool)

(assert (=> d!2110787 (= (isEmpty!38125 (tail!12598 (exprs!6427 (h!72254 zl!343)))) ((_ is Nil!65805) (tail!12598 (exprs!6427 (h!72254 zl!343)))))))

(assert (=> b!6715475 d!2110787))

(declare-fun d!2110789 () Bool)

(assert (=> d!2110789 (= (tail!12598 (exprs!6427 (h!72254 zl!343))) (t!379606 (exprs!6427 (h!72254 zl!343))))))

(assert (=> b!6715475 d!2110789))

(declare-fun d!2110791 () Bool)

(assert (=> d!2110791 (= (head!13514 s!2326) (h!72252 s!2326))))

(assert (=> b!6715400 d!2110791))

(declare-fun d!2110793 () Bool)

(assert (=> d!2110793 (= (isEmpty!38125 (t!379606 (exprs!6427 (h!72254 zl!343)))) ((_ is Nil!65805) (t!379606 (exprs!6427 (h!72254 zl!343)))))))

(assert (=> b!6715477 d!2110793))

(declare-fun d!2110795 () Bool)

(assert (=> d!2110795 (= (Exists!3611 lambda!376602) (choose!50039 lambda!376602))))

(declare-fun bs!1786941 () Bool)

(assert (= bs!1786941 d!2110795))

(declare-fun m!7479400 () Bool)

(assert (=> bs!1786941 m!7479400))

(assert (=> d!2110697 d!2110795))

(declare-fun d!2110797 () Bool)

(assert (=> d!2110797 (= (Exists!3611 lambda!376603) (choose!50039 lambda!376603))))

(declare-fun bs!1786942 () Bool)

(assert (= bs!1786942 d!2110797))

(declare-fun m!7479402 () Bool)

(assert (=> bs!1786942 m!7479402))

(assert (=> d!2110697 d!2110797))

(declare-fun bs!1786952 () Bool)

(declare-fun d!2110799 () Bool)

(assert (= bs!1786952 (and d!2110799 d!2110697)))

(declare-fun lambda!376634 () Int)

(assert (=> bs!1786952 (= lambda!376634 lambda!376602)))

(declare-fun bs!1786953 () Bool)

(assert (= bs!1786953 (and d!2110799 d!2110691)))

(assert (=> bs!1786953 (not (= lambda!376634 lambda!376597))))

(declare-fun bs!1786954 () Bool)

(assert (= bs!1786954 (and d!2110799 b!6714965)))

(assert (=> bs!1786954 (= (= (Star!16543 (reg!16872 r!7292)) r!7292) (= lambda!376634 lambda!376537))))

(assert (=> bs!1786954 (not (= lambda!376634 lambda!376539))))

(declare-fun bs!1786955 () Bool)

(assert (= bs!1786955 (and d!2110799 b!6715262)))

(assert (=> bs!1786955 (not (= lambda!376634 lambda!376589))))

(assert (=> bs!1786952 (not (= lambda!376634 lambda!376603))))

(declare-fun bs!1786956 () Bool)

(assert (= bs!1786956 (and d!2110799 d!2110701)))

(assert (=> bs!1786956 (= (= (Star!16543 (reg!16872 r!7292)) r!7292) (= lambda!376634 lambda!376606))))

(declare-fun bs!1786957 () Bool)

(assert (= bs!1786957 (and d!2110799 b!6715254)))

(assert (=> bs!1786957 (not (= lambda!376634 lambda!376588))))

(assert (=> bs!1786954 (not (= lambda!376634 lambda!376538))))

(assert (=> bs!1786953 (= (= (Star!16543 (reg!16872 r!7292)) r!7292) (= lambda!376634 lambda!376596))))

(assert (=> d!2110799 true))

(assert (=> d!2110799 true))

(declare-fun bs!1786967 () Bool)

(assert (= bs!1786967 d!2110799))

(declare-fun lambda!376636 () Int)

(assert (=> bs!1786967 (not (= lambda!376636 lambda!376634))))

(assert (=> bs!1786952 (not (= lambda!376636 lambda!376602))))

(assert (=> bs!1786953 (not (= lambda!376636 lambda!376597))))

(assert (=> bs!1786954 (not (= lambda!376636 lambda!376537))))

(assert (=> bs!1786954 (not (= lambda!376636 lambda!376539))))

(assert (=> bs!1786955 (not (= lambda!376636 lambda!376589))))

(assert (=> bs!1786952 (= lambda!376636 lambda!376603)))

(assert (=> bs!1786956 (not (= lambda!376636 lambda!376606))))

(assert (=> bs!1786957 (= (= (Star!16543 (reg!16872 r!7292)) r!7292) (= lambda!376636 lambda!376588))))

(assert (=> bs!1786954 (= (= (Star!16543 (reg!16872 r!7292)) r!7292) (= lambda!376636 lambda!376538))))

(assert (=> bs!1786953 (not (= lambda!376636 lambda!376596))))

(assert (=> d!2110799 true))

(assert (=> d!2110799 true))

(assert (=> d!2110799 (= (Exists!3611 lambda!376634) (Exists!3611 lambda!376636))))

(assert (=> d!2110799 true))

(declare-fun _$91!650 () Unit!159777)

(assert (=> d!2110799 (= (choose!50041 (reg!16872 r!7292) s!2326) _$91!650)))

(declare-fun m!7479480 () Bool)

(assert (=> bs!1786967 m!7479480))

(declare-fun m!7479482 () Bool)

(assert (=> bs!1786967 m!7479482))

(assert (=> d!2110697 d!2110799))

(declare-fun b!6715738 () Bool)

(declare-fun res!2748405 () Bool)

(declare-fun e!4058380 () Bool)

(assert (=> b!6715738 (=> res!2748405 e!4058380)))

(assert (=> b!6715738 (= res!2748405 (not ((_ is Concat!25388) (reg!16872 r!7292))))))

(declare-fun e!4058384 () Bool)

(assert (=> b!6715738 (= e!4058384 e!4058380)))

(declare-fun bm!606102 () Bool)

(declare-fun call!606108 () Bool)

(declare-fun c!1245139 () Bool)

(assert (=> bm!606102 (= call!606108 (validRegex!8279 (ite c!1245139 (regTwo!33599 (reg!16872 r!7292)) (regTwo!33598 (reg!16872 r!7292)))))))

(declare-fun b!6715739 () Bool)

(declare-fun e!4058382 () Bool)

(declare-fun e!4058383 () Bool)

(assert (=> b!6715739 (= e!4058382 e!4058383)))

(declare-fun c!1245140 () Bool)

(assert (=> b!6715739 (= c!1245140 ((_ is Star!16543) (reg!16872 r!7292)))))

(declare-fun b!6715740 () Bool)

(declare-fun e!4058381 () Bool)

(assert (=> b!6715740 (= e!4058381 call!606108)))

(declare-fun b!6715741 () Bool)

(declare-fun res!2748407 () Bool)

(declare-fun e!4058385 () Bool)

(assert (=> b!6715741 (=> (not res!2748407) (not e!4058385))))

(declare-fun call!606107 () Bool)

(assert (=> b!6715741 (= res!2748407 call!606107)))

(assert (=> b!6715741 (= e!4058384 e!4058385)))

(declare-fun b!6715742 () Bool)

(assert (=> b!6715742 (= e!4058383 e!4058384)))

(assert (=> b!6715742 (= c!1245139 ((_ is Union!16543) (reg!16872 r!7292)))))

(declare-fun b!6715743 () Bool)

(declare-fun e!4058379 () Bool)

(assert (=> b!6715743 (= e!4058383 e!4058379)))

(declare-fun res!2748406 () Bool)

(assert (=> b!6715743 (= res!2748406 (not (nullable!6530 (reg!16872 (reg!16872 r!7292)))))))

(assert (=> b!6715743 (=> (not res!2748406) (not e!4058379))))

(declare-fun d!2110821 () Bool)

(declare-fun res!2748404 () Bool)

(assert (=> d!2110821 (=> res!2748404 e!4058382)))

(assert (=> d!2110821 (= res!2748404 ((_ is ElementMatch!16543) (reg!16872 r!7292)))))

(assert (=> d!2110821 (= (validRegex!8279 (reg!16872 r!7292)) e!4058382)))

(declare-fun b!6715744 () Bool)

(assert (=> b!6715744 (= e!4058385 call!606108)))

(declare-fun bm!606103 () Bool)

(declare-fun call!606109 () Bool)

(assert (=> bm!606103 (= call!606107 call!606109)))

(declare-fun b!6715745 () Bool)

(assert (=> b!6715745 (= e!4058379 call!606109)))

(declare-fun b!6715746 () Bool)

(assert (=> b!6715746 (= e!4058380 e!4058381)))

(declare-fun res!2748403 () Bool)

(assert (=> b!6715746 (=> (not res!2748403) (not e!4058381))))

(assert (=> b!6715746 (= res!2748403 call!606107)))

(declare-fun bm!606104 () Bool)

(assert (=> bm!606104 (= call!606109 (validRegex!8279 (ite c!1245140 (reg!16872 (reg!16872 r!7292)) (ite c!1245139 (regOne!33599 (reg!16872 r!7292)) (regOne!33598 (reg!16872 r!7292))))))))

(assert (= (and d!2110821 (not res!2748404)) b!6715739))

(assert (= (and b!6715739 c!1245140) b!6715743))

(assert (= (and b!6715739 (not c!1245140)) b!6715742))

(assert (= (and b!6715743 res!2748406) b!6715745))

(assert (= (and b!6715742 c!1245139) b!6715741))

(assert (= (and b!6715742 (not c!1245139)) b!6715738))

(assert (= (and b!6715741 res!2748407) b!6715744))

(assert (= (and b!6715738 (not res!2748405)) b!6715746))

(assert (= (and b!6715746 res!2748403) b!6715740))

(assert (= (or b!6715744 b!6715740) bm!606102))

(assert (= (or b!6715741 b!6715746) bm!606103))

(assert (= (or b!6715745 bm!606103) bm!606104))

(declare-fun m!7479490 () Bool)

(assert (=> bm!606102 m!7479490))

(declare-fun m!7479492 () Bool)

(assert (=> b!6715743 m!7479492))

(declare-fun m!7479494 () Bool)

(assert (=> bm!606104 m!7479494))

(assert (=> d!2110697 d!2110821))

(declare-fun d!2110829 () Bool)

(assert (=> d!2110829 (= (isEmptyLang!1917 lt!2436256) ((_ is EmptyLang!16543) lt!2436256))))

(assert (=> b!6715083 d!2110829))

(declare-fun d!2110833 () Bool)

(assert (=> d!2110833 (= (isUnion!1347 lt!2436256) ((_ is Union!16543) lt!2436256))))

(assert (=> b!6715085 d!2110833))

(declare-fun d!2110835 () Bool)

(assert (=> d!2110835 (= (head!13513 (exprs!6427 (h!72254 zl!343))) (h!72253 (exprs!6427 (h!72254 zl!343))))))

(assert (=> b!6715479 d!2110835))

(declare-fun bs!1786978 () Bool)

(declare-fun b!6715748 () Bool)

(assert (= bs!1786978 (and b!6715748 d!2110697)))

(declare-fun lambda!376638 () Int)

(assert (=> bs!1786978 (not (= lambda!376638 lambda!376602))))

(declare-fun bs!1786979 () Bool)

(assert (= bs!1786979 (and b!6715748 d!2110691)))

(assert (=> bs!1786979 (not (= lambda!376638 lambda!376597))))

(declare-fun bs!1786981 () Bool)

(assert (= bs!1786981 (and b!6715748 b!6714965)))

(assert (=> bs!1786981 (not (= lambda!376638 lambda!376537))))

(assert (=> bs!1786981 (not (= lambda!376638 lambda!376539))))

(declare-fun bs!1786982 () Bool)

(assert (= bs!1786982 (and b!6715748 b!6715262)))

(assert (=> bs!1786982 (not (= lambda!376638 lambda!376589))))

(assert (=> bs!1786978 (= (and (= (reg!16872 (regOne!33599 r!7292)) (reg!16872 r!7292)) (= (regOne!33599 r!7292) (Star!16543 (reg!16872 r!7292)))) (= lambda!376638 lambda!376603))))

(declare-fun bs!1786983 () Bool)

(assert (= bs!1786983 (and b!6715748 d!2110799)))

(assert (=> bs!1786983 (= (and (= (reg!16872 (regOne!33599 r!7292)) (reg!16872 r!7292)) (= (regOne!33599 r!7292) (Star!16543 (reg!16872 r!7292)))) (= lambda!376638 lambda!376636))))

(assert (=> bs!1786983 (not (= lambda!376638 lambda!376634))))

(declare-fun bs!1786984 () Bool)

(assert (= bs!1786984 (and b!6715748 d!2110701)))

(assert (=> bs!1786984 (not (= lambda!376638 lambda!376606))))

(declare-fun bs!1786985 () Bool)

(assert (= bs!1786985 (and b!6715748 b!6715254)))

(assert (=> bs!1786985 (= (and (= (reg!16872 (regOne!33599 r!7292)) (reg!16872 r!7292)) (= (regOne!33599 r!7292) r!7292)) (= lambda!376638 lambda!376588))))

(assert (=> bs!1786981 (= (and (= (reg!16872 (regOne!33599 r!7292)) (reg!16872 r!7292)) (= (regOne!33599 r!7292) r!7292)) (= lambda!376638 lambda!376538))))

(assert (=> bs!1786979 (not (= lambda!376638 lambda!376596))))

(assert (=> b!6715748 true))

(assert (=> b!6715748 true))

(declare-fun bs!1786993 () Bool)

(declare-fun b!6715756 () Bool)

(assert (= bs!1786993 (and b!6715756 d!2110697)))

(declare-fun lambda!376640 () Int)

(assert (=> bs!1786993 (not (= lambda!376640 lambda!376602))))

(declare-fun bs!1786994 () Bool)

(assert (= bs!1786994 (and b!6715756 d!2110691)))

(assert (=> bs!1786994 (= (and (= (regOne!33598 (regOne!33599 r!7292)) (reg!16872 r!7292)) (= (regTwo!33598 (regOne!33599 r!7292)) r!7292)) (= lambda!376640 lambda!376597))))

(declare-fun bs!1786995 () Bool)

(assert (= bs!1786995 (and b!6715756 b!6714965)))

(assert (=> bs!1786995 (not (= lambda!376640 lambda!376537))))

(assert (=> bs!1786995 (= (and (= (regOne!33598 (regOne!33599 r!7292)) (reg!16872 r!7292)) (= (regTwo!33598 (regOne!33599 r!7292)) r!7292)) (= lambda!376640 lambda!376539))))

(declare-fun bs!1786997 () Bool)

(assert (= bs!1786997 (and b!6715756 b!6715262)))

(assert (=> bs!1786997 (= (and (= (regOne!33598 (regOne!33599 r!7292)) (regOne!33598 r!7292)) (= (regTwo!33598 (regOne!33599 r!7292)) (regTwo!33598 r!7292))) (= lambda!376640 lambda!376589))))

(assert (=> bs!1786993 (not (= lambda!376640 lambda!376603))))

(declare-fun bs!1787000 () Bool)

(assert (= bs!1787000 (and b!6715756 b!6715748)))

(assert (=> bs!1787000 (not (= lambda!376640 lambda!376638))))

(declare-fun bs!1787001 () Bool)

(assert (= bs!1787001 (and b!6715756 d!2110799)))

(assert (=> bs!1787001 (not (= lambda!376640 lambda!376636))))

(assert (=> bs!1787001 (not (= lambda!376640 lambda!376634))))

(declare-fun bs!1787003 () Bool)

(assert (= bs!1787003 (and b!6715756 d!2110701)))

(assert (=> bs!1787003 (not (= lambda!376640 lambda!376606))))

(declare-fun bs!1787004 () Bool)

(assert (= bs!1787004 (and b!6715756 b!6715254)))

(assert (=> bs!1787004 (not (= lambda!376640 lambda!376588))))

(assert (=> bs!1786995 (not (= lambda!376640 lambda!376538))))

(assert (=> bs!1786994 (not (= lambda!376640 lambda!376596))))

(assert (=> b!6715756 true))

(assert (=> b!6715756 true))

(declare-fun b!6715747 () Bool)

(declare-fun e!4058388 () Bool)

(declare-fun e!4058390 () Bool)

(assert (=> b!6715747 (= e!4058388 e!4058390)))

(declare-fun res!2748409 () Bool)

(assert (=> b!6715747 (= res!2748409 (matchRSpec!3644 (regOne!33599 (regOne!33599 r!7292)) s!2326))))

(assert (=> b!6715747 (=> res!2748409 e!4058390)))

(declare-fun d!2110837 () Bool)

(declare-fun c!1245141 () Bool)

(assert (=> d!2110837 (= c!1245141 ((_ is EmptyExpr!16543) (regOne!33599 r!7292)))))

(declare-fun e!4058387 () Bool)

(assert (=> d!2110837 (= (matchRSpec!3644 (regOne!33599 r!7292) s!2326) e!4058387)))

(declare-fun e!4058391 () Bool)

(declare-fun call!606110 () Bool)

(assert (=> b!6715748 (= e!4058391 call!606110)))

(declare-fun b!6715749 () Bool)

(declare-fun res!2748408 () Bool)

(assert (=> b!6715749 (=> res!2748408 e!4058391)))

(declare-fun call!606111 () Bool)

(assert (=> b!6715749 (= res!2748408 call!606111)))

(declare-fun e!4058389 () Bool)

(assert (=> b!6715749 (= e!4058389 e!4058391)))

(declare-fun bm!606105 () Bool)

(assert (=> bm!606105 (= call!606111 (isEmpty!38122 s!2326))))

(declare-fun b!6715750 () Bool)

(assert (=> b!6715750 (= e!4058387 call!606111)))

(declare-fun b!6715751 () Bool)

(declare-fun c!1245143 () Bool)

(assert (=> b!6715751 (= c!1245143 ((_ is ElementMatch!16543) (regOne!33599 r!7292)))))

(declare-fun e!4058386 () Bool)

(declare-fun e!4058392 () Bool)

(assert (=> b!6715751 (= e!4058386 e!4058392)))

(declare-fun b!6715752 () Bool)

(declare-fun c!1245144 () Bool)

(assert (=> b!6715752 (= c!1245144 ((_ is Union!16543) (regOne!33599 r!7292)))))

(assert (=> b!6715752 (= e!4058392 e!4058388)))

(declare-fun b!6715753 () Bool)

(assert (=> b!6715753 (= e!4058387 e!4058386)))

(declare-fun res!2748410 () Bool)

(assert (=> b!6715753 (= res!2748410 (not ((_ is EmptyLang!16543) (regOne!33599 r!7292))))))

(assert (=> b!6715753 (=> (not res!2748410) (not e!4058386))))

(declare-fun b!6715754 () Bool)

(assert (=> b!6715754 (= e!4058390 (matchRSpec!3644 (regTwo!33599 (regOne!33599 r!7292)) s!2326))))

(declare-fun b!6715755 () Bool)

(assert (=> b!6715755 (= e!4058388 e!4058389)))

(declare-fun c!1245142 () Bool)

(assert (=> b!6715755 (= c!1245142 ((_ is Star!16543) (regOne!33599 r!7292)))))

(assert (=> b!6715756 (= e!4058389 call!606110)))

(declare-fun b!6715757 () Bool)

(assert (=> b!6715757 (= e!4058392 (= s!2326 (Cons!65804 (c!1244979 (regOne!33599 r!7292)) Nil!65804)))))

(declare-fun bm!606106 () Bool)

(assert (=> bm!606106 (= call!606110 (Exists!3611 (ite c!1245142 lambda!376638 lambda!376640)))))

(assert (= (and d!2110837 c!1245141) b!6715750))

(assert (= (and d!2110837 (not c!1245141)) b!6715753))

(assert (= (and b!6715753 res!2748410) b!6715751))

(assert (= (and b!6715751 c!1245143) b!6715757))

(assert (= (and b!6715751 (not c!1245143)) b!6715752))

(assert (= (and b!6715752 c!1245144) b!6715747))

(assert (= (and b!6715752 (not c!1245144)) b!6715755))

(assert (= (and b!6715747 (not res!2748409)) b!6715754))

(assert (= (and b!6715755 c!1245142) b!6715749))

(assert (= (and b!6715755 (not c!1245142)) b!6715756))

(assert (= (and b!6715749 (not res!2748408)) b!6715748))

(assert (= (or b!6715748 b!6715756) bm!606106))

(assert (= (or b!6715750 b!6715749) bm!606105))

(declare-fun m!7479496 () Bool)

(assert (=> b!6715747 m!7479496))

(assert (=> bm!606105 m!7478992))

(declare-fun m!7479498 () Bool)

(assert (=> b!6715754 m!7479498))

(declare-fun m!7479500 () Bool)

(assert (=> bm!606106 m!7479500))

(assert (=> b!6715253 d!2110837))

(declare-fun d!2110841 () Bool)

(assert (=> d!2110841 (= (isDefined!13133 lt!2436294) (not (isEmpty!38126 lt!2436294)))))

(declare-fun bs!1787011 () Bool)

(assert (= bs!1787011 d!2110841))

(declare-fun m!7479502 () Bool)

(assert (=> bs!1787011 m!7479502))

(assert (=> d!2110699 d!2110841))

(declare-fun b!6715769 () Bool)

(declare-fun res!2748419 () Bool)

(declare-fun e!4058405 () Bool)

(assert (=> b!6715769 (=> res!2748419 e!4058405)))

(assert (=> b!6715769 (= res!2748419 (not (isEmpty!38122 (tail!12599 Nil!65804))))))

(declare-fun b!6715770 () Bool)

(declare-fun e!4058406 () Bool)

(declare-fun lt!2436312 () Bool)

(declare-fun call!606114 () Bool)

(assert (=> b!6715770 (= e!4058406 (= lt!2436312 call!606114))))

(declare-fun b!6715771 () Bool)

(declare-fun e!4058400 () Bool)

(assert (=> b!6715771 (= e!4058400 (nullable!6530 (reg!16872 r!7292)))))

(declare-fun b!6715772 () Bool)

(declare-fun e!4058404 () Bool)

(declare-fun e!4058402 () Bool)

(assert (=> b!6715772 (= e!4058404 e!4058402)))

(declare-fun res!2748416 () Bool)

(assert (=> b!6715772 (=> (not res!2748416) (not e!4058402))))

(assert (=> b!6715772 (= res!2748416 (not lt!2436312))))

(declare-fun b!6715773 () Bool)

(assert (=> b!6715773 (= e!4058400 (matchR!8726 (derivativeStep!5215 (reg!16872 r!7292) (head!13514 Nil!65804)) (tail!12599 Nil!65804)))))

(declare-fun b!6715774 () Bool)

(declare-fun e!4058403 () Bool)

(assert (=> b!6715774 (= e!4058403 (not lt!2436312))))

(declare-fun b!6715775 () Bool)

(declare-fun res!2748420 () Bool)

(assert (=> b!6715775 (=> res!2748420 e!4058404)))

(assert (=> b!6715775 (= res!2748420 (not ((_ is ElementMatch!16543) (reg!16872 r!7292))))))

(assert (=> b!6715775 (= e!4058403 e!4058404)))

(declare-fun b!6715777 () Bool)

(assert (=> b!6715777 (= e!4058405 (not (= (head!13514 Nil!65804) (c!1244979 (reg!16872 r!7292)))))))

(declare-fun b!6715778 () Bool)

(declare-fun e!4058401 () Bool)

(assert (=> b!6715778 (= e!4058401 (= (head!13514 Nil!65804) (c!1244979 (reg!16872 r!7292))))))

(declare-fun b!6715779 () Bool)

(declare-fun res!2748418 () Bool)

(assert (=> b!6715779 (=> (not res!2748418) (not e!4058401))))

(assert (=> b!6715779 (= res!2748418 (isEmpty!38122 (tail!12599 Nil!65804)))))

(declare-fun b!6715780 () Bool)

(declare-fun res!2748417 () Bool)

(assert (=> b!6715780 (=> res!2748417 e!4058404)))

(assert (=> b!6715780 (= res!2748417 e!4058401)))

(declare-fun res!2748414 () Bool)

(assert (=> b!6715780 (=> (not res!2748414) (not e!4058401))))

(assert (=> b!6715780 (= res!2748414 lt!2436312)))

(declare-fun bm!606109 () Bool)

(assert (=> bm!606109 (= call!606114 (isEmpty!38122 Nil!65804))))

(declare-fun b!6715781 () Bool)

(declare-fun res!2748415 () Bool)

(assert (=> b!6715781 (=> (not res!2748415) (not e!4058401))))

(assert (=> b!6715781 (= res!2748415 (not call!606114))))

(declare-fun b!6715782 () Bool)

(assert (=> b!6715782 (= e!4058406 e!4058403)))

(declare-fun c!1245150 () Bool)

(assert (=> b!6715782 (= c!1245150 ((_ is EmptyLang!16543) (reg!16872 r!7292)))))

(declare-fun b!6715776 () Bool)

(assert (=> b!6715776 (= e!4058402 e!4058405)))

(declare-fun res!2748421 () Bool)

(assert (=> b!6715776 (=> res!2748421 e!4058405)))

(assert (=> b!6715776 (= res!2748421 call!606114)))

(declare-fun d!2110843 () Bool)

(assert (=> d!2110843 e!4058406))

(declare-fun c!1245149 () Bool)

(assert (=> d!2110843 (= c!1245149 ((_ is EmptyExpr!16543) (reg!16872 r!7292)))))

(assert (=> d!2110843 (= lt!2436312 e!4058400)))

(declare-fun c!1245151 () Bool)

(assert (=> d!2110843 (= c!1245151 (isEmpty!38122 Nil!65804))))

(assert (=> d!2110843 (validRegex!8279 (reg!16872 r!7292))))

(assert (=> d!2110843 (= (matchR!8726 (reg!16872 r!7292) Nil!65804) lt!2436312)))

(assert (= (and d!2110843 c!1245151) b!6715771))

(assert (= (and d!2110843 (not c!1245151)) b!6715773))

(assert (= (and d!2110843 c!1245149) b!6715770))

(assert (= (and d!2110843 (not c!1245149)) b!6715782))

(assert (= (and b!6715782 c!1245150) b!6715774))

(assert (= (and b!6715782 (not c!1245150)) b!6715775))

(assert (= (and b!6715775 (not res!2748420)) b!6715780))

(assert (= (and b!6715780 res!2748414) b!6715781))

(assert (= (and b!6715781 res!2748415) b!6715779))

(assert (= (and b!6715779 res!2748418) b!6715778))

(assert (= (and b!6715780 (not res!2748417)) b!6715772))

(assert (= (and b!6715772 res!2748416) b!6715776))

(assert (= (and b!6715776 (not res!2748421)) b!6715769))

(assert (= (and b!6715769 (not res!2748419)) b!6715777))

(assert (= (or b!6715770 b!6715776 b!6715781) bm!606109))

(declare-fun m!7479504 () Bool)

(assert (=> b!6715779 m!7479504))

(assert (=> b!6715779 m!7479504))

(declare-fun m!7479506 () Bool)

(assert (=> b!6715779 m!7479506))

(assert (=> b!6715771 m!7479058))

(assert (=> b!6715769 m!7479504))

(assert (=> b!6715769 m!7479504))

(assert (=> b!6715769 m!7479506))

(declare-fun m!7479508 () Bool)

(assert (=> b!6715777 m!7479508))

(declare-fun m!7479510 () Bool)

(assert (=> d!2110843 m!7479510))

(assert (=> d!2110843 m!7479232))

(assert (=> b!6715773 m!7479508))

(assert (=> b!6715773 m!7479508))

(declare-fun m!7479512 () Bool)

(assert (=> b!6715773 m!7479512))

(assert (=> b!6715773 m!7479504))

(assert (=> b!6715773 m!7479512))

(assert (=> b!6715773 m!7479504))

(declare-fun m!7479514 () Bool)

(assert (=> b!6715773 m!7479514))

(assert (=> b!6715778 m!7479508))

(assert (=> bm!606109 m!7479510))

(assert (=> d!2110699 d!2110843))

(assert (=> d!2110699 d!2110821))

(declare-fun d!2110845 () Bool)

(assert (=> d!2110845 (= (isEmpty!38125 (unfocusZipperList!1964 zl!343)) ((_ is Nil!65805) (unfocusZipperList!1964 zl!343)))))

(assert (=> b!6715087 d!2110845))

(declare-fun d!2110847 () Bool)

(declare-fun res!2748422 () Bool)

(declare-fun e!4058407 () Bool)

(assert (=> d!2110847 (=> res!2748422 e!4058407)))

(assert (=> d!2110847 (= res!2748422 ((_ is Nil!65805) (exprs!6427 setElem!45771)))))

(assert (=> d!2110847 (= (forall!15743 (exprs!6427 setElem!45771) lambda!376556) e!4058407)))

(declare-fun b!6715783 () Bool)

(declare-fun e!4058408 () Bool)

(assert (=> b!6715783 (= e!4058407 e!4058408)))

(declare-fun res!2748423 () Bool)

(assert (=> b!6715783 (=> (not res!2748423) (not e!4058408))))

(assert (=> b!6715783 (= res!2748423 (dynLambda!26241 lambda!376556 (h!72253 (exprs!6427 setElem!45771))))))

(declare-fun b!6715784 () Bool)

(assert (=> b!6715784 (= e!4058408 (forall!15743 (t!379606 (exprs!6427 setElem!45771)) lambda!376556))))

(assert (= (and d!2110847 (not res!2748422)) b!6715783))

(assert (= (and b!6715783 res!2748423) b!6715784))

(declare-fun b_lambda!252877 () Bool)

(assert (=> (not b_lambda!252877) (not b!6715783)))

(declare-fun m!7479520 () Bool)

(assert (=> b!6715783 m!7479520))

(declare-fun m!7479524 () Bool)

(assert (=> b!6715784 m!7479524))

(assert (=> d!2110643 d!2110847))

(declare-fun b!6715785 () Bool)

(declare-fun res!2748426 () Bool)

(declare-fun e!4058410 () Bool)

(assert (=> b!6715785 (=> res!2748426 e!4058410)))

(assert (=> b!6715785 (= res!2748426 (not ((_ is Concat!25388) (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292)))))))

(declare-fun e!4058414 () Bool)

(assert (=> b!6715785 (= e!4058414 e!4058410)))

(declare-fun bm!606110 () Bool)

(declare-fun c!1245152 () Bool)

(declare-fun call!606116 () Bool)

(assert (=> bm!606110 (= call!606116 (validRegex!8279 (ite c!1245152 (regTwo!33599 (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))) (regTwo!33598 (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))))))))

(declare-fun b!6715786 () Bool)

(declare-fun e!4058412 () Bool)

(declare-fun e!4058413 () Bool)

(assert (=> b!6715786 (= e!4058412 e!4058413)))

(declare-fun c!1245153 () Bool)

(assert (=> b!6715786 (= c!1245153 ((_ is Star!16543) (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))))))

(declare-fun b!6715787 () Bool)

(declare-fun e!4058411 () Bool)

(assert (=> b!6715787 (= e!4058411 call!606116)))

(declare-fun b!6715788 () Bool)

(declare-fun res!2748428 () Bool)

(declare-fun e!4058415 () Bool)

(assert (=> b!6715788 (=> (not res!2748428) (not e!4058415))))

(declare-fun call!606115 () Bool)

(assert (=> b!6715788 (= res!2748428 call!606115)))

(assert (=> b!6715788 (= e!4058414 e!4058415)))

(declare-fun b!6715789 () Bool)

(assert (=> b!6715789 (= e!4058413 e!4058414)))

(assert (=> b!6715789 (= c!1245152 ((_ is Union!16543) (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))))))

(declare-fun b!6715790 () Bool)

(declare-fun e!4058409 () Bool)

(assert (=> b!6715790 (= e!4058413 e!4058409)))

(declare-fun res!2748427 () Bool)

(assert (=> b!6715790 (= res!2748427 (not (nullable!6530 (reg!16872 (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))))))))

(assert (=> b!6715790 (=> (not res!2748427) (not e!4058409))))

(declare-fun d!2110849 () Bool)

(declare-fun res!2748425 () Bool)

(assert (=> d!2110849 (=> res!2748425 e!4058412)))

(assert (=> d!2110849 (= res!2748425 ((_ is ElementMatch!16543) (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))))))

(assert (=> d!2110849 (= (validRegex!8279 (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))) e!4058412)))

(declare-fun b!6715791 () Bool)

(assert (=> b!6715791 (= e!4058415 call!606116)))

(declare-fun bm!606111 () Bool)

(declare-fun call!606117 () Bool)

(assert (=> bm!606111 (= call!606115 call!606117)))

(declare-fun b!6715792 () Bool)

(assert (=> b!6715792 (= e!4058409 call!606117)))

(declare-fun b!6715793 () Bool)

(assert (=> b!6715793 (= e!4058410 e!4058411)))

(declare-fun res!2748424 () Bool)

(assert (=> b!6715793 (=> (not res!2748424) (not e!4058411))))

(assert (=> b!6715793 (= res!2748424 call!606115)))

(declare-fun bm!606112 () Bool)

(assert (=> bm!606112 (= call!606117 (validRegex!8279 (ite c!1245153 (reg!16872 (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))) (ite c!1245152 (regOne!33599 (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292))) (regOne!33598 (ite c!1244984 (regTwo!33599 r!7292) (regTwo!33598 r!7292)))))))))

(assert (= (and d!2110849 (not res!2748425)) b!6715786))

(assert (= (and b!6715786 c!1245153) b!6715790))

(assert (= (and b!6715786 (not c!1245153)) b!6715789))

(assert (= (and b!6715790 res!2748427) b!6715792))

(assert (= (and b!6715789 c!1245152) b!6715788))

(assert (= (and b!6715789 (not c!1245152)) b!6715785))

(assert (= (and b!6715788 res!2748428) b!6715791))

(assert (= (and b!6715785 (not res!2748426)) b!6715793))

(assert (= (and b!6715793 res!2748424) b!6715787))

(assert (= (or b!6715791 b!6715787) bm!606110))

(assert (= (or b!6715788 b!6715793) bm!606111))

(assert (= (or b!6715792 bm!606111) bm!606112))

(declare-fun m!7479528 () Bool)

(assert (=> bm!606110 m!7479528))

(declare-fun m!7479530 () Bool)

(assert (=> b!6715790 m!7479530))

(declare-fun m!7479532 () Bool)

(assert (=> bm!606112 m!7479532))

(assert (=> bm!606055 d!2110849))

(declare-fun d!2110857 () Bool)

(declare-fun res!2748430 () Bool)

(declare-fun e!4058418 () Bool)

(assert (=> d!2110857 (=> res!2748430 e!4058418)))

(assert (=> d!2110857 (= res!2748430 ((_ is Nil!65805) (exprs!6427 (Context!11855 (Cons!65805 r!7292 Nil!65805)))))))

(assert (=> d!2110857 (= (forall!15743 (exprs!6427 (Context!11855 (Cons!65805 r!7292 Nil!65805))) lambda!376549) e!4058418)))

(declare-fun b!6715794 () Bool)

(declare-fun e!4058419 () Bool)

(assert (=> b!6715794 (= e!4058418 e!4058419)))

(declare-fun res!2748432 () Bool)

(assert (=> b!6715794 (=> (not res!2748432) (not e!4058419))))

(assert (=> b!6715794 (= res!2748432 (dynLambda!26241 lambda!376549 (h!72253 (exprs!6427 (Context!11855 (Cons!65805 r!7292 Nil!65805))))))))

(declare-fun b!6715795 () Bool)

(assert (=> b!6715795 (= e!4058419 (forall!15743 (t!379606 (exprs!6427 (Context!11855 (Cons!65805 r!7292 Nil!65805)))) lambda!376549))))

(assert (= (and d!2110857 (not res!2748430)) b!6715794))

(assert (= (and b!6715794 res!2748432) b!6715795))

(declare-fun b_lambda!252879 () Bool)

(assert (=> (not b_lambda!252879) (not b!6715794)))

(declare-fun m!7479534 () Bool)

(assert (=> b!6715794 m!7479534))

(declare-fun m!7479536 () Bool)

(assert (=> b!6715795 m!7479536))

(assert (=> d!2110629 d!2110857))

(declare-fun b!6715805 () Bool)

(declare-fun res!2748441 () Bool)

(declare-fun e!4058430 () Bool)

(assert (=> b!6715805 (=> res!2748441 e!4058430)))

(assert (=> b!6715805 (= res!2748441 (not (isEmpty!38122 (tail!12599 (_1!36821 (get!22886 lt!2436294))))))))

(declare-fun b!6715806 () Bool)

(declare-fun e!4058431 () Bool)

(declare-fun lt!2436313 () Bool)

(declare-fun call!606121 () Bool)

(assert (=> b!6715806 (= e!4058431 (= lt!2436313 call!606121))))

(declare-fun b!6715807 () Bool)

(declare-fun e!4058425 () Bool)

(assert (=> b!6715807 (= e!4058425 (nullable!6530 (reg!16872 r!7292)))))

(declare-fun b!6715808 () Bool)

(declare-fun e!4058429 () Bool)

(declare-fun e!4058427 () Bool)

(assert (=> b!6715808 (= e!4058429 e!4058427)))

(declare-fun res!2748438 () Bool)

(assert (=> b!6715808 (=> (not res!2748438) (not e!4058427))))

(assert (=> b!6715808 (= res!2748438 (not lt!2436313))))

(declare-fun b!6715809 () Bool)

(assert (=> b!6715809 (= e!4058425 (matchR!8726 (derivativeStep!5215 (reg!16872 r!7292) (head!13514 (_1!36821 (get!22886 lt!2436294)))) (tail!12599 (_1!36821 (get!22886 lt!2436294)))))))

(declare-fun b!6715810 () Bool)

(declare-fun e!4058428 () Bool)

(assert (=> b!6715810 (= e!4058428 (not lt!2436313))))

(declare-fun b!6715811 () Bool)

(declare-fun res!2748442 () Bool)

(assert (=> b!6715811 (=> res!2748442 e!4058429)))

(assert (=> b!6715811 (= res!2748442 (not ((_ is ElementMatch!16543) (reg!16872 r!7292))))))

(assert (=> b!6715811 (= e!4058428 e!4058429)))

(declare-fun b!6715813 () Bool)

(assert (=> b!6715813 (= e!4058430 (not (= (head!13514 (_1!36821 (get!22886 lt!2436294))) (c!1244979 (reg!16872 r!7292)))))))

(declare-fun b!6715814 () Bool)

(declare-fun e!4058426 () Bool)

(assert (=> b!6715814 (= e!4058426 (= (head!13514 (_1!36821 (get!22886 lt!2436294))) (c!1244979 (reg!16872 r!7292))))))

(declare-fun b!6715815 () Bool)

(declare-fun res!2748440 () Bool)

(assert (=> b!6715815 (=> (not res!2748440) (not e!4058426))))

(assert (=> b!6715815 (= res!2748440 (isEmpty!38122 (tail!12599 (_1!36821 (get!22886 lt!2436294)))))))

(declare-fun b!6715816 () Bool)

(declare-fun res!2748439 () Bool)

(assert (=> b!6715816 (=> res!2748439 e!4058429)))

(assert (=> b!6715816 (= res!2748439 e!4058426)))

(declare-fun res!2748436 () Bool)

(assert (=> b!6715816 (=> (not res!2748436) (not e!4058426))))

(assert (=> b!6715816 (= res!2748436 lt!2436313)))

(declare-fun bm!606116 () Bool)

(assert (=> bm!606116 (= call!606121 (isEmpty!38122 (_1!36821 (get!22886 lt!2436294))))))

(declare-fun b!6715817 () Bool)

(declare-fun res!2748437 () Bool)

(assert (=> b!6715817 (=> (not res!2748437) (not e!4058426))))

(assert (=> b!6715817 (= res!2748437 (not call!606121))))

(declare-fun b!6715818 () Bool)

(assert (=> b!6715818 (= e!4058431 e!4058428)))

(declare-fun c!1245157 () Bool)

(assert (=> b!6715818 (= c!1245157 ((_ is EmptyLang!16543) (reg!16872 r!7292)))))

(declare-fun b!6715812 () Bool)

(assert (=> b!6715812 (= e!4058427 e!4058430)))

(declare-fun res!2748443 () Bool)

(assert (=> b!6715812 (=> res!2748443 e!4058430)))

(assert (=> b!6715812 (= res!2748443 call!606121)))

(declare-fun d!2110859 () Bool)

(assert (=> d!2110859 e!4058431))

(declare-fun c!1245156 () Bool)

(assert (=> d!2110859 (= c!1245156 ((_ is EmptyExpr!16543) (reg!16872 r!7292)))))

(assert (=> d!2110859 (= lt!2436313 e!4058425)))

(declare-fun c!1245158 () Bool)

(assert (=> d!2110859 (= c!1245158 (isEmpty!38122 (_1!36821 (get!22886 lt!2436294))))))

(assert (=> d!2110859 (validRegex!8279 (reg!16872 r!7292))))

(assert (=> d!2110859 (= (matchR!8726 (reg!16872 r!7292) (_1!36821 (get!22886 lt!2436294))) lt!2436313)))

(assert (= (and d!2110859 c!1245158) b!6715807))

(assert (= (and d!2110859 (not c!1245158)) b!6715809))

(assert (= (and d!2110859 c!1245156) b!6715806))

(assert (= (and d!2110859 (not c!1245156)) b!6715818))

(assert (= (and b!6715818 c!1245157) b!6715810))

(assert (= (and b!6715818 (not c!1245157)) b!6715811))

(assert (= (and b!6715811 (not res!2748442)) b!6715816))

(assert (= (and b!6715816 res!2748436) b!6715817))

(assert (= (and b!6715817 res!2748437) b!6715815))

(assert (= (and b!6715815 res!2748440) b!6715814))

(assert (= (and b!6715816 (not res!2748439)) b!6715808))

(assert (= (and b!6715808 res!2748438) b!6715812))

(assert (= (and b!6715812 (not res!2748443)) b!6715805))

(assert (= (and b!6715805 (not res!2748441)) b!6715813))

(assert (= (or b!6715806 b!6715812 b!6715817) bm!606116))

(declare-fun m!7479544 () Bool)

(assert (=> b!6715815 m!7479544))

(assert (=> b!6715815 m!7479544))

(declare-fun m!7479546 () Bool)

(assert (=> b!6715815 m!7479546))

(assert (=> b!6715807 m!7479058))

(assert (=> b!6715805 m!7479544))

(assert (=> b!6715805 m!7479544))

(assert (=> b!6715805 m!7479546))

(declare-fun m!7479548 () Bool)

(assert (=> b!6715813 m!7479548))

(declare-fun m!7479550 () Bool)

(assert (=> d!2110859 m!7479550))

(assert (=> d!2110859 m!7479232))

(assert (=> b!6715809 m!7479548))

(assert (=> b!6715809 m!7479548))

(declare-fun m!7479552 () Bool)

(assert (=> b!6715809 m!7479552))

(assert (=> b!6715809 m!7479544))

(assert (=> b!6715809 m!7479552))

(assert (=> b!6715809 m!7479544))

(declare-fun m!7479554 () Bool)

(assert (=> b!6715809 m!7479554))

(assert (=> b!6715814 m!7479548))

(assert (=> bm!606116 m!7479550))

(assert (=> b!6715441 d!2110859))

(assert (=> b!6715441 d!2110779))

(declare-fun d!2110865 () Bool)

(assert (=> d!2110865 true))

(assert (=> d!2110865 true))

(declare-fun res!2748446 () Bool)

(assert (=> d!2110865 (= (choose!50039 lambda!376538) res!2748446)))

(assert (=> d!2110693 d!2110865))

(declare-fun d!2110867 () Bool)

(assert (=> d!2110867 (= (Exists!3611 lambda!376596) (choose!50039 lambda!376596))))

(declare-fun bs!1787019 () Bool)

(assert (= bs!1787019 d!2110867))

(declare-fun m!7479556 () Bool)

(assert (=> bs!1787019 m!7479556))

(assert (=> d!2110691 d!2110867))

(declare-fun d!2110869 () Bool)

(assert (=> d!2110869 (= (Exists!3611 lambda!376597) (choose!50039 lambda!376597))))

(declare-fun bs!1787020 () Bool)

(assert (= bs!1787020 d!2110869))

(declare-fun m!7479558 () Bool)

(assert (=> bs!1787020 m!7479558))

(assert (=> d!2110691 d!2110869))

(declare-fun bs!1787021 () Bool)

(declare-fun d!2110871 () Bool)

(assert (= bs!1787021 (and d!2110871 b!6715756)))

(declare-fun lambda!376646 () Int)

(assert (=> bs!1787021 (not (= lambda!376646 lambda!376640))))

(declare-fun bs!1787022 () Bool)

(assert (= bs!1787022 (and d!2110871 d!2110697)))

(assert (=> bs!1787022 (= (= r!7292 (Star!16543 (reg!16872 r!7292))) (= lambda!376646 lambda!376602))))

(declare-fun bs!1787023 () Bool)

(assert (= bs!1787023 (and d!2110871 d!2110691)))

(assert (=> bs!1787023 (not (= lambda!376646 lambda!376597))))

(declare-fun bs!1787024 () Bool)

(assert (= bs!1787024 (and d!2110871 b!6714965)))

(assert (=> bs!1787024 (= lambda!376646 lambda!376537)))

(assert (=> bs!1787024 (not (= lambda!376646 lambda!376539))))

(declare-fun bs!1787025 () Bool)

(assert (= bs!1787025 (and d!2110871 b!6715262)))

(assert (=> bs!1787025 (not (= lambda!376646 lambda!376589))))

(assert (=> bs!1787022 (not (= lambda!376646 lambda!376603))))

(declare-fun bs!1787026 () Bool)

(assert (= bs!1787026 (and d!2110871 b!6715748)))

(assert (=> bs!1787026 (not (= lambda!376646 lambda!376638))))

(declare-fun bs!1787027 () Bool)

(assert (= bs!1787027 (and d!2110871 d!2110799)))

(assert (=> bs!1787027 (not (= lambda!376646 lambda!376636))))

(assert (=> bs!1787027 (= (= r!7292 (Star!16543 (reg!16872 r!7292))) (= lambda!376646 lambda!376634))))

(declare-fun bs!1787028 () Bool)

(assert (= bs!1787028 (and d!2110871 d!2110701)))

(assert (=> bs!1787028 (= lambda!376646 lambda!376606)))

(declare-fun bs!1787029 () Bool)

(assert (= bs!1787029 (and d!2110871 b!6715254)))

(assert (=> bs!1787029 (not (= lambda!376646 lambda!376588))))

(assert (=> bs!1787024 (not (= lambda!376646 lambda!376538))))

(assert (=> bs!1787023 (= lambda!376646 lambda!376596)))

(assert (=> d!2110871 true))

(assert (=> d!2110871 true))

(assert (=> d!2110871 true))

(declare-fun lambda!376647 () Int)

(assert (=> bs!1787021 (= (and (= (reg!16872 r!7292) (regOne!33598 (regOne!33599 r!7292))) (= r!7292 (regTwo!33598 (regOne!33599 r!7292)))) (= lambda!376647 lambda!376640))))

(assert (=> bs!1787022 (not (= lambda!376647 lambda!376602))))

(assert (=> bs!1787023 (= lambda!376647 lambda!376597)))

(assert (=> bs!1787024 (not (= lambda!376647 lambda!376537))))

(assert (=> bs!1787024 (= lambda!376647 lambda!376539)))

(assert (=> bs!1787025 (= (and (= (reg!16872 r!7292) (regOne!33598 r!7292)) (= r!7292 (regTwo!33598 r!7292))) (= lambda!376647 lambda!376589))))

(assert (=> bs!1787022 (not (= lambda!376647 lambda!376603))))

(assert (=> bs!1787026 (not (= lambda!376647 lambda!376638))))

(declare-fun bs!1787030 () Bool)

(assert (= bs!1787030 d!2110871))

(assert (=> bs!1787030 (not (= lambda!376647 lambda!376646))))

(assert (=> bs!1787027 (not (= lambda!376647 lambda!376636))))

(assert (=> bs!1787027 (not (= lambda!376647 lambda!376634))))

(assert (=> bs!1787028 (not (= lambda!376647 lambda!376606))))

(assert (=> bs!1787029 (not (= lambda!376647 lambda!376588))))

(assert (=> bs!1787024 (not (= lambda!376647 lambda!376538))))

(assert (=> bs!1787023 (not (= lambda!376647 lambda!376596))))

(assert (=> d!2110871 true))

(assert (=> d!2110871 true))

(assert (=> d!2110871 true))

(assert (=> d!2110871 (= (Exists!3611 lambda!376646) (Exists!3611 lambda!376647))))

(assert (=> d!2110871 true))

(declare-fun _$90!2530 () Unit!159777)

(assert (=> d!2110871 (= (choose!50040 (reg!16872 r!7292) r!7292 s!2326) _$90!2530)))

(declare-fun m!7479608 () Bool)

(assert (=> bs!1787030 m!7479608))

(declare-fun m!7479610 () Bool)

(assert (=> bs!1787030 m!7479610))

(assert (=> d!2110691 d!2110871))

(assert (=> d!2110691 d!2110821))

(declare-fun b!6715895 () Bool)

(declare-fun res!2748485 () Bool)

(declare-fun e!4058478 () Bool)

(assert (=> b!6715895 (=> res!2748485 e!4058478)))

(assert (=> b!6715895 (= res!2748485 (not ((_ is Concat!25388) lt!2436256)))))

(declare-fun e!4058482 () Bool)

(assert (=> b!6715895 (= e!4058482 e!4058478)))

(declare-fun bm!606124 () Bool)

(declare-fun call!606130 () Bool)

(declare-fun c!1245179 () Bool)

(assert (=> bm!606124 (= call!606130 (validRegex!8279 (ite c!1245179 (regTwo!33599 lt!2436256) (regTwo!33598 lt!2436256))))))

(declare-fun b!6715896 () Bool)

(declare-fun e!4058480 () Bool)

(declare-fun e!4058481 () Bool)

(assert (=> b!6715896 (= e!4058480 e!4058481)))

(declare-fun c!1245180 () Bool)

(assert (=> b!6715896 (= c!1245180 ((_ is Star!16543) lt!2436256))))

(declare-fun b!6715897 () Bool)

(declare-fun e!4058479 () Bool)

(assert (=> b!6715897 (= e!4058479 call!606130)))

(declare-fun b!6715898 () Bool)

(declare-fun res!2748487 () Bool)

(declare-fun e!4058483 () Bool)

(assert (=> b!6715898 (=> (not res!2748487) (not e!4058483))))

(declare-fun call!606129 () Bool)

(assert (=> b!6715898 (= res!2748487 call!606129)))

(assert (=> b!6715898 (= e!4058482 e!4058483)))

(declare-fun b!6715899 () Bool)

(assert (=> b!6715899 (= e!4058481 e!4058482)))

(assert (=> b!6715899 (= c!1245179 ((_ is Union!16543) lt!2436256))))

(declare-fun b!6715900 () Bool)

(declare-fun e!4058477 () Bool)

(assert (=> b!6715900 (= e!4058481 e!4058477)))

(declare-fun res!2748486 () Bool)

(assert (=> b!6715900 (= res!2748486 (not (nullable!6530 (reg!16872 lt!2436256))))))

(assert (=> b!6715900 (=> (not res!2748486) (not e!4058477))))

(declare-fun d!2110887 () Bool)

(declare-fun res!2748484 () Bool)

(assert (=> d!2110887 (=> res!2748484 e!4058480)))

(assert (=> d!2110887 (= res!2748484 ((_ is ElementMatch!16543) lt!2436256))))

(assert (=> d!2110887 (= (validRegex!8279 lt!2436256) e!4058480)))

(declare-fun b!6715901 () Bool)

(assert (=> b!6715901 (= e!4058483 call!606130)))

(declare-fun bm!606125 () Bool)

(declare-fun call!606131 () Bool)

(assert (=> bm!606125 (= call!606129 call!606131)))

(declare-fun b!6715902 () Bool)

(assert (=> b!6715902 (= e!4058477 call!606131)))

(declare-fun b!6715903 () Bool)

(assert (=> b!6715903 (= e!4058478 e!4058479)))

(declare-fun res!2748483 () Bool)

(assert (=> b!6715903 (=> (not res!2748483) (not e!4058479))))

(assert (=> b!6715903 (= res!2748483 call!606129)))

(declare-fun bm!606126 () Bool)

(assert (=> bm!606126 (= call!606131 (validRegex!8279 (ite c!1245180 (reg!16872 lt!2436256) (ite c!1245179 (regOne!33599 lt!2436256) (regOne!33598 lt!2436256)))))))

(assert (= (and d!2110887 (not res!2748484)) b!6715896))

(assert (= (and b!6715896 c!1245180) b!6715900))

(assert (= (and b!6715896 (not c!1245180)) b!6715899))

(assert (= (and b!6715900 res!2748486) b!6715902))

(assert (= (and b!6715899 c!1245179) b!6715898))

(assert (= (and b!6715899 (not c!1245179)) b!6715895))

(assert (= (and b!6715898 res!2748487) b!6715901))

(assert (= (and b!6715895 (not res!2748485)) b!6715903))

(assert (= (and b!6715903 res!2748483) b!6715897))

(assert (= (or b!6715901 b!6715897) bm!606124))

(assert (= (or b!6715898 b!6715903) bm!606125))

(assert (= (or b!6715902 bm!606125) bm!606126))

(declare-fun m!7479612 () Bool)

(assert (=> bm!606124 m!7479612))

(declare-fun m!7479614 () Bool)

(assert (=> b!6715900 m!7479614))

(declare-fun m!7479616 () Bool)

(assert (=> bm!606126 m!7479616))

(assert (=> d!2110647 d!2110887))

(declare-fun d!2110889 () Bool)

(declare-fun res!2748488 () Bool)

(declare-fun e!4058484 () Bool)

(assert (=> d!2110889 (=> res!2748488 e!4058484)))

(assert (=> d!2110889 (= res!2748488 ((_ is Nil!65805) (unfocusZipperList!1964 zl!343)))))

(assert (=> d!2110889 (= (forall!15743 (unfocusZipperList!1964 zl!343) lambda!376564) e!4058484)))

(declare-fun b!6715904 () Bool)

(declare-fun e!4058485 () Bool)

(assert (=> b!6715904 (= e!4058484 e!4058485)))

(declare-fun res!2748489 () Bool)

(assert (=> b!6715904 (=> (not res!2748489) (not e!4058485))))

(assert (=> b!6715904 (= res!2748489 (dynLambda!26241 lambda!376564 (h!72253 (unfocusZipperList!1964 zl!343))))))

(declare-fun b!6715905 () Bool)

(assert (=> b!6715905 (= e!4058485 (forall!15743 (t!379606 (unfocusZipperList!1964 zl!343)) lambda!376564))))

(assert (= (and d!2110889 (not res!2748488)) b!6715904))

(assert (= (and b!6715904 res!2748489) b!6715905))

(declare-fun b_lambda!252885 () Bool)

(assert (=> (not b_lambda!252885) (not b!6715904)))

(declare-fun m!7479618 () Bool)

(assert (=> b!6715904 m!7479618))

(declare-fun m!7479620 () Bool)

(assert (=> b!6715905 m!7479620))

(assert (=> d!2110647 d!2110889))

(declare-fun d!2110891 () Bool)

(assert (=> d!2110891 true))

(assert (=> d!2110891 true))

(declare-fun res!2748490 () Bool)

(assert (=> d!2110891 (= (choose!50039 lambda!376537) res!2748490)))

(assert (=> d!2110695 d!2110891))

(declare-fun b!6715906 () Bool)

(declare-fun res!2748496 () Bool)

(declare-fun e!4058491 () Bool)

(assert (=> b!6715906 (=> res!2748496 e!4058491)))

(assert (=> b!6715906 (= res!2748496 (not (isEmpty!38122 (tail!12599 (tail!12599 s!2326)))))))

(declare-fun b!6715907 () Bool)

(declare-fun e!4058492 () Bool)

(declare-fun lt!2436320 () Bool)

(declare-fun call!606138 () Bool)

(assert (=> b!6715907 (= e!4058492 (= lt!2436320 call!606138))))

(declare-fun b!6715908 () Bool)

(declare-fun e!4058486 () Bool)

(assert (=> b!6715908 (= e!4058486 (nullable!6530 (derivativeStep!5215 r!7292 (head!13514 s!2326))))))

(declare-fun b!6715909 () Bool)

(declare-fun e!4058490 () Bool)

(declare-fun e!4058488 () Bool)

(assert (=> b!6715909 (= e!4058490 e!4058488)))

(declare-fun res!2748493 () Bool)

(assert (=> b!6715909 (=> (not res!2748493) (not e!4058488))))

(assert (=> b!6715909 (= res!2748493 (not lt!2436320))))

(declare-fun b!6715910 () Bool)

(assert (=> b!6715910 (= e!4058486 (matchR!8726 (derivativeStep!5215 (derivativeStep!5215 r!7292 (head!13514 s!2326)) (head!13514 (tail!12599 s!2326))) (tail!12599 (tail!12599 s!2326))))))

(declare-fun b!6715911 () Bool)

(declare-fun e!4058489 () Bool)

(assert (=> b!6715911 (= e!4058489 (not lt!2436320))))

(declare-fun b!6715912 () Bool)

(declare-fun res!2748497 () Bool)

(assert (=> b!6715912 (=> res!2748497 e!4058490)))

(assert (=> b!6715912 (= res!2748497 (not ((_ is ElementMatch!16543) (derivativeStep!5215 r!7292 (head!13514 s!2326)))))))

(assert (=> b!6715912 (= e!4058489 e!4058490)))

(declare-fun b!6715914 () Bool)

(assert (=> b!6715914 (= e!4058491 (not (= (head!13514 (tail!12599 s!2326)) (c!1244979 (derivativeStep!5215 r!7292 (head!13514 s!2326))))))))

(declare-fun b!6715915 () Bool)

(declare-fun e!4058487 () Bool)

(assert (=> b!6715915 (= e!4058487 (= (head!13514 (tail!12599 s!2326)) (c!1244979 (derivativeStep!5215 r!7292 (head!13514 s!2326)))))))

(declare-fun b!6715916 () Bool)

(declare-fun res!2748495 () Bool)

(assert (=> b!6715916 (=> (not res!2748495) (not e!4058487))))

(assert (=> b!6715916 (= res!2748495 (isEmpty!38122 (tail!12599 (tail!12599 s!2326))))))

(declare-fun b!6715917 () Bool)

(declare-fun res!2748494 () Bool)

(assert (=> b!6715917 (=> res!2748494 e!4058490)))

(assert (=> b!6715917 (= res!2748494 e!4058487)))

(declare-fun res!2748491 () Bool)

(assert (=> b!6715917 (=> (not res!2748491) (not e!4058487))))

(assert (=> b!6715917 (= res!2748491 lt!2436320)))

(declare-fun bm!606133 () Bool)

(assert (=> bm!606133 (= call!606138 (isEmpty!38122 (tail!12599 s!2326)))))

(declare-fun b!6715918 () Bool)

(declare-fun res!2748492 () Bool)

(assert (=> b!6715918 (=> (not res!2748492) (not e!4058487))))

(assert (=> b!6715918 (= res!2748492 (not call!606138))))

(declare-fun b!6715919 () Bool)

(assert (=> b!6715919 (= e!4058492 e!4058489)))

(declare-fun c!1245182 () Bool)

(assert (=> b!6715919 (= c!1245182 ((_ is EmptyLang!16543) (derivativeStep!5215 r!7292 (head!13514 s!2326))))))

(declare-fun b!6715913 () Bool)

(assert (=> b!6715913 (= e!4058488 e!4058491)))

(declare-fun res!2748498 () Bool)

(assert (=> b!6715913 (=> res!2748498 e!4058491)))

(assert (=> b!6715913 (= res!2748498 call!606138)))

(declare-fun d!2110893 () Bool)

(assert (=> d!2110893 e!4058492))

(declare-fun c!1245181 () Bool)

(assert (=> d!2110893 (= c!1245181 ((_ is EmptyExpr!16543) (derivativeStep!5215 r!7292 (head!13514 s!2326))))))

(assert (=> d!2110893 (= lt!2436320 e!4058486)))

(declare-fun c!1245183 () Bool)

(assert (=> d!2110893 (= c!1245183 (isEmpty!38122 (tail!12599 s!2326)))))

(assert (=> d!2110893 (validRegex!8279 (derivativeStep!5215 r!7292 (head!13514 s!2326)))))

(assert (=> d!2110893 (= (matchR!8726 (derivativeStep!5215 r!7292 (head!13514 s!2326)) (tail!12599 s!2326)) lt!2436320)))

(assert (= (and d!2110893 c!1245183) b!6715908))

(assert (= (and d!2110893 (not c!1245183)) b!6715910))

(assert (= (and d!2110893 c!1245181) b!6715907))

(assert (= (and d!2110893 (not c!1245181)) b!6715919))

(assert (= (and b!6715919 c!1245182) b!6715911))

(assert (= (and b!6715919 (not c!1245182)) b!6715912))

(assert (= (and b!6715912 (not res!2748497)) b!6715917))

(assert (= (and b!6715917 res!2748491) b!6715918))

(assert (= (and b!6715918 res!2748492) b!6715916))

(assert (= (and b!6715916 res!2748495) b!6715915))

(assert (= (and b!6715917 (not res!2748494)) b!6715909))

(assert (= (and b!6715909 res!2748493) b!6715913))

(assert (= (and b!6715913 (not res!2748498)) b!6715906))

(assert (= (and b!6715906 (not res!2748496)) b!6715914))

(assert (= (or b!6715907 b!6715913 b!6715918) bm!606133))

(assert (=> b!6715916 m!7479208))

(declare-fun m!7479622 () Bool)

(assert (=> b!6715916 m!7479622))

(assert (=> b!6715916 m!7479622))

(declare-fun m!7479624 () Bool)

(assert (=> b!6715916 m!7479624))

(assert (=> b!6715908 m!7479216))

(declare-fun m!7479626 () Bool)

(assert (=> b!6715908 m!7479626))

(assert (=> b!6715906 m!7479208))

(assert (=> b!6715906 m!7479622))

(assert (=> b!6715906 m!7479622))

(assert (=> b!6715906 m!7479624))

(assert (=> b!6715914 m!7479208))

(declare-fun m!7479628 () Bool)

(assert (=> b!6715914 m!7479628))

(assert (=> d!2110893 m!7479208))

(assert (=> d!2110893 m!7479210))

(assert (=> d!2110893 m!7479216))

(declare-fun m!7479630 () Bool)

(assert (=> d!2110893 m!7479630))

(assert (=> b!6715910 m!7479208))

(assert (=> b!6715910 m!7479628))

(assert (=> b!6715910 m!7479216))

(assert (=> b!6715910 m!7479628))

(declare-fun m!7479632 () Bool)

(assert (=> b!6715910 m!7479632))

(assert (=> b!6715910 m!7479208))

(assert (=> b!6715910 m!7479622))

(assert (=> b!6715910 m!7479632))

(assert (=> b!6715910 m!7479622))

(declare-fun m!7479634 () Bool)

(assert (=> b!6715910 m!7479634))

(assert (=> b!6715915 m!7479208))

(assert (=> b!6715915 m!7479628))

(assert (=> bm!606133 m!7479208))

(assert (=> bm!606133 m!7479210))

(assert (=> b!6715395 d!2110893))

(declare-fun call!606154 () Regex!16543)

(declare-fun bm!606148 () Bool)

(declare-fun c!1245204 () Bool)

(assert (=> bm!606148 (= call!606154 (derivativeStep!5215 (ite c!1245204 (regTwo!33599 r!7292) (regOne!33598 r!7292)) (head!13514 s!2326)))))

(declare-fun bm!606149 () Bool)

(declare-fun call!606156 () Regex!16543)

(declare-fun call!606153 () Regex!16543)

(assert (=> bm!606149 (= call!606156 call!606153)))

(declare-fun b!6715967 () Bool)

(declare-fun e!4058520 () Regex!16543)

(declare-fun e!4058519 () Regex!16543)

(assert (=> b!6715967 (= e!4058520 e!4058519)))

(declare-fun c!1245206 () Bool)

(assert (=> b!6715967 (= c!1245206 ((_ is ElementMatch!16543) r!7292))))

(declare-fun b!6715968 () Bool)

(declare-fun e!4058517 () Regex!16543)

(assert (=> b!6715968 (= e!4058517 (Concat!25388 call!606153 r!7292))))

(declare-fun d!2110895 () Bool)

(declare-fun lt!2436332 () Regex!16543)

(assert (=> d!2110895 (validRegex!8279 lt!2436332)))

(assert (=> d!2110895 (= lt!2436332 e!4058520)))

(declare-fun c!1245203 () Bool)

(assert (=> d!2110895 (= c!1245203 (or ((_ is EmptyExpr!16543) r!7292) ((_ is EmptyLang!16543) r!7292)))))

(assert (=> d!2110895 (validRegex!8279 r!7292)))

(assert (=> d!2110895 (= (derivativeStep!5215 r!7292 (head!13514 s!2326)) lt!2436332)))

(declare-fun b!6715969 () Bool)

(declare-fun e!4058521 () Regex!16543)

(assert (=> b!6715969 (= e!4058521 (Union!16543 (Concat!25388 call!606154 (regTwo!33598 r!7292)) call!606156))))

(declare-fun b!6715970 () Bool)

(assert (=> b!6715970 (= e!4058519 (ite (= (head!13514 s!2326) (c!1244979 r!7292)) EmptyExpr!16543 EmptyLang!16543))))

(declare-fun b!6715971 () Bool)

(assert (=> b!6715971 (= c!1245204 ((_ is Union!16543) r!7292))))

(declare-fun e!4058518 () Regex!16543)

(assert (=> b!6715971 (= e!4058519 e!4058518)))

(declare-fun bm!606150 () Bool)

(declare-fun call!606155 () Regex!16543)

(assert (=> bm!606150 (= call!606153 call!606155)))

(declare-fun b!6715972 () Bool)

(assert (=> b!6715972 (= e!4058520 EmptyLang!16543)))

(declare-fun c!1245207 () Bool)

(declare-fun bm!606151 () Bool)

(declare-fun c!1245205 () Bool)

(assert (=> bm!606151 (= call!606155 (derivativeStep!5215 (ite c!1245204 (regOne!33599 r!7292) (ite c!1245205 (reg!16872 r!7292) (ite c!1245207 (regTwo!33598 r!7292) (regOne!33598 r!7292)))) (head!13514 s!2326)))))

(declare-fun b!6715973 () Bool)

(assert (=> b!6715973 (= e!4058521 (Union!16543 (Concat!25388 call!606156 (regTwo!33598 r!7292)) EmptyLang!16543))))

(declare-fun b!6715974 () Bool)

(assert (=> b!6715974 (= e!4058518 (Union!16543 call!606155 call!606154))))

(declare-fun b!6715975 () Bool)

(assert (=> b!6715975 (= c!1245207 (nullable!6530 (regOne!33598 r!7292)))))

(assert (=> b!6715975 (= e!4058517 e!4058521)))

(declare-fun b!6715976 () Bool)

(assert (=> b!6715976 (= e!4058518 e!4058517)))

(assert (=> b!6715976 (= c!1245205 ((_ is Star!16543) r!7292))))

(assert (= (and d!2110895 c!1245203) b!6715972))

(assert (= (and d!2110895 (not c!1245203)) b!6715967))

(assert (= (and b!6715967 c!1245206) b!6715970))

(assert (= (and b!6715967 (not c!1245206)) b!6715971))

(assert (= (and b!6715971 c!1245204) b!6715974))

(assert (= (and b!6715971 (not c!1245204)) b!6715976))

(assert (= (and b!6715976 c!1245205) b!6715968))

(assert (= (and b!6715976 (not c!1245205)) b!6715975))

(assert (= (and b!6715975 c!1245207) b!6715969))

(assert (= (and b!6715975 (not c!1245207)) b!6715973))

(assert (= (or b!6715969 b!6715973) bm!606149))

(assert (= (or b!6715968 bm!606149) bm!606150))

(assert (= (or b!6715974 b!6715969) bm!606148))

(assert (= (or b!6715974 bm!606150) bm!606151))

(assert (=> bm!606148 m!7479214))

(declare-fun m!7479698 () Bool)

(assert (=> bm!606148 m!7479698))

(declare-fun m!7479700 () Bool)

(assert (=> d!2110895 m!7479700))

(assert (=> d!2110895 m!7478988))

(assert (=> bm!606151 m!7479214))

(declare-fun m!7479704 () Bool)

(assert (=> bm!606151 m!7479704))

(declare-fun m!7479706 () Bool)

(assert (=> b!6715975 m!7479706))

(assert (=> b!6715395 d!2110895))

(assert (=> b!6715395 d!2110791))

(declare-fun d!2110907 () Bool)

(assert (=> d!2110907 (= (tail!12599 s!2326) (t!379605 s!2326))))

(assert (=> b!6715395 d!2110907))

(declare-fun d!2110909 () Bool)

(assert (=> d!2110909 (= (head!13513 (unfocusZipperList!1964 zl!343)) (h!72253 (unfocusZipperList!1964 zl!343)))))

(assert (=> b!6715080 d!2110909))

(assert (=> b!6715448 d!2110841))

(declare-fun bs!1787032 () Bool)

(declare-fun d!2110911 () Bool)

(assert (= bs!1787032 (and d!2110911 d!2110655)))

(declare-fun lambda!376648 () Int)

(assert (=> bs!1787032 (= lambda!376648 lambda!376571)))

(declare-fun bs!1787033 () Bool)

(assert (= bs!1787033 (and d!2110911 d!2110647)))

(assert (=> bs!1787033 (= lambda!376648 lambda!376564)))

(declare-fun bs!1787034 () Bool)

(assert (= bs!1787034 (and d!2110911 d!2110621)))

(assert (=> bs!1787034 (= lambda!376648 lambda!376546)))

(declare-fun bs!1787035 () Bool)

(assert (= bs!1787035 (and d!2110911 d!2110703)))

(assert (=> bs!1787035 (= lambda!376648 lambda!376609)))

(declare-fun bs!1787036 () Bool)

(assert (= bs!1787036 (and d!2110911 d!2110643)))

(assert (=> bs!1787036 (= lambda!376648 lambda!376556)))

(declare-fun bs!1787037 () Bool)

(assert (= bs!1787037 (and d!2110911 d!2110629)))

(assert (=> bs!1787037 (= lambda!376648 lambda!376549)))

(declare-fun b!6716003 () Bool)

(declare-fun e!4058530 () Regex!16543)

(assert (=> b!6716003 (= e!4058530 (Concat!25388 (h!72253 (t!379606 (exprs!6427 (h!72254 zl!343)))) (generalisedConcat!2140 (t!379606 (t!379606 (exprs!6427 (h!72254 zl!343)))))))))

(declare-fun b!6716005 () Bool)

(declare-fun e!4058535 () Regex!16543)

(assert (=> b!6716005 (= e!4058535 e!4058530)))

(declare-fun c!1245211 () Bool)

(assert (=> b!6716005 (= c!1245211 ((_ is Cons!65805) (t!379606 (exprs!6427 (h!72254 zl!343)))))))

(declare-fun b!6716006 () Bool)

(declare-fun e!4058532 () Bool)

(assert (=> b!6716006 (= e!4058532 (isEmpty!38125 (t!379606 (t!379606 (exprs!6427 (h!72254 zl!343))))))))

(declare-fun b!6716007 () Bool)

(declare-fun e!4058533 () Bool)

(declare-fun e!4058531 () Bool)

(assert (=> b!6716007 (= e!4058533 e!4058531)))

(declare-fun c!1245210 () Bool)

(assert (=> b!6716007 (= c!1245210 (isEmpty!38125 (t!379606 (exprs!6427 (h!72254 zl!343)))))))

(declare-fun b!6716008 () Bool)

(declare-fun e!4058534 () Bool)

(declare-fun lt!2436333 () Regex!16543)

(assert (=> b!6716008 (= e!4058534 (= lt!2436333 (head!13513 (t!379606 (exprs!6427 (h!72254 zl!343))))))))

(declare-fun b!6716009 () Bool)

(assert (=> b!6716009 (= e!4058534 (isConcat!1432 lt!2436333))))

(declare-fun b!6716010 () Bool)

(assert (=> b!6716010 (= e!4058535 (h!72253 (t!379606 (exprs!6427 (h!72254 zl!343)))))))

(declare-fun b!6716011 () Bool)

(assert (=> b!6716011 (= e!4058530 EmptyExpr!16543)))

(declare-fun b!6716012 () Bool)

(assert (=> b!6716012 (= e!4058531 (isEmptyExpr!1909 lt!2436333))))

(declare-fun b!6716004 () Bool)

(assert (=> b!6716004 (= e!4058531 e!4058534)))

(declare-fun c!1245209 () Bool)

(assert (=> b!6716004 (= c!1245209 (isEmpty!38125 (tail!12598 (t!379606 (exprs!6427 (h!72254 zl!343))))))))

(assert (=> d!2110911 e!4058533))

(declare-fun res!2748509 () Bool)

(assert (=> d!2110911 (=> (not res!2748509) (not e!4058533))))

(assert (=> d!2110911 (= res!2748509 (validRegex!8279 lt!2436333))))

(assert (=> d!2110911 (= lt!2436333 e!4058535)))

(declare-fun c!1245208 () Bool)

(assert (=> d!2110911 (= c!1245208 e!4058532)))

(declare-fun res!2748508 () Bool)

(assert (=> d!2110911 (=> (not res!2748508) (not e!4058532))))

(assert (=> d!2110911 (= res!2748508 ((_ is Cons!65805) (t!379606 (exprs!6427 (h!72254 zl!343)))))))

(assert (=> d!2110911 (forall!15743 (t!379606 (exprs!6427 (h!72254 zl!343))) lambda!376648)))

(assert (=> d!2110911 (= (generalisedConcat!2140 (t!379606 (exprs!6427 (h!72254 zl!343)))) lt!2436333)))

(assert (= (and d!2110911 res!2748508) b!6716006))

(assert (= (and d!2110911 c!1245208) b!6716010))

(assert (= (and d!2110911 (not c!1245208)) b!6716005))

(assert (= (and b!6716005 c!1245211) b!6716003))

(assert (= (and b!6716005 (not c!1245211)) b!6716011))

(assert (= (and d!2110911 res!2748509) b!6716007))

(assert (= (and b!6716007 c!1245210) b!6716012))

(assert (= (and b!6716007 (not c!1245210)) b!6716004))

(assert (= (and b!6716004 c!1245209) b!6716008))

(assert (= (and b!6716004 (not c!1245209)) b!6716009))

(declare-fun m!7479710 () Bool)

(assert (=> b!6716003 m!7479710))

(declare-fun m!7479712 () Bool)

(assert (=> b!6716004 m!7479712))

(assert (=> b!6716004 m!7479712))

(declare-fun m!7479714 () Bool)

(assert (=> b!6716004 m!7479714))

(declare-fun m!7479716 () Bool)

(assert (=> b!6716008 m!7479716))

(declare-fun m!7479718 () Bool)

(assert (=> b!6716012 m!7479718))

(declare-fun m!7479720 () Bool)

(assert (=> b!6716009 m!7479720))

(declare-fun m!7479722 () Bool)

(assert (=> d!2110911 m!7479722))

(declare-fun m!7479724 () Bool)

(assert (=> d!2110911 m!7479724))

(assert (=> b!6716007 m!7479286))

(declare-fun m!7479726 () Bool)

(assert (=> b!6716006 m!7479726))

(assert (=> b!6715474 d!2110911))

(assert (=> d!2110683 d!2110671))

(assert (=> d!2110683 d!2110661))

(declare-fun d!2110913 () Bool)

(assert (=> d!2110913 (= (matchR!8726 r!7292 s!2326) (matchRSpec!3644 r!7292 s!2326))))

(assert (=> d!2110913 true))

(declare-fun _$88!5432 () Unit!159777)

(assert (=> d!2110913 (= (choose!50038 r!7292 s!2326) _$88!5432)))

(declare-fun bs!1787038 () Bool)

(assert (= bs!1787038 d!2110913))

(assert (=> bs!1787038 m!7479014))

(assert (=> bs!1787038 m!7479012))

(assert (=> d!2110683 d!2110913))

(assert (=> d!2110683 d!2110631))

(declare-fun d!2110915 () Bool)

(assert (=> d!2110915 (= (Exists!3611 lambda!376606) (choose!50039 lambda!376606))))

(declare-fun bs!1787039 () Bool)

(assert (= bs!1787039 d!2110915))

(declare-fun m!7479728 () Bool)

(assert (=> bs!1787039 m!7479728))

(assert (=> d!2110701 d!2110915))

(assert (=> d!2110701 d!2110685))

(declare-fun bs!1787046 () Bool)

(declare-fun d!2110917 () Bool)

(assert (= bs!1787046 (and d!2110917 b!6715756)))

(declare-fun lambda!376651 () Int)

(assert (=> bs!1787046 (not (= lambda!376651 lambda!376640))))

(declare-fun bs!1787047 () Bool)

(assert (= bs!1787047 (and d!2110917 d!2110697)))

(assert (=> bs!1787047 (= (= r!7292 (Star!16543 (reg!16872 r!7292))) (= lambda!376651 lambda!376602))))

(declare-fun bs!1787048 () Bool)

(assert (= bs!1787048 (and d!2110917 d!2110691)))

(assert (=> bs!1787048 (not (= lambda!376651 lambda!376597))))

(declare-fun bs!1787049 () Bool)

(assert (= bs!1787049 (and d!2110917 b!6714965)))

(assert (=> bs!1787049 (= lambda!376651 lambda!376537)))

(assert (=> bs!1787049 (not (= lambda!376651 lambda!376539))))

(declare-fun bs!1787050 () Bool)

(assert (= bs!1787050 (and d!2110917 b!6715262)))

(assert (=> bs!1787050 (not (= lambda!376651 lambda!376589))))

(assert (=> bs!1787047 (not (= lambda!376651 lambda!376603))))

(declare-fun bs!1787051 () Bool)

(assert (= bs!1787051 (and d!2110917 b!6715748)))

(assert (=> bs!1787051 (not (= lambda!376651 lambda!376638))))

(declare-fun bs!1787052 () Bool)

(assert (= bs!1787052 (and d!2110917 d!2110871)))

(assert (=> bs!1787052 (not (= lambda!376651 lambda!376647))))

(assert (=> bs!1787052 (= lambda!376651 lambda!376646)))

(declare-fun bs!1787053 () Bool)

(assert (= bs!1787053 (and d!2110917 d!2110799)))

(assert (=> bs!1787053 (not (= lambda!376651 lambda!376636))))

(assert (=> bs!1787053 (= (= r!7292 (Star!16543 (reg!16872 r!7292))) (= lambda!376651 lambda!376634))))

(declare-fun bs!1787054 () Bool)

(assert (= bs!1787054 (and d!2110917 d!2110701)))

(assert (=> bs!1787054 (= lambda!376651 lambda!376606)))

(declare-fun bs!1787055 () Bool)

(assert (= bs!1787055 (and d!2110917 b!6715254)))

(assert (=> bs!1787055 (not (= lambda!376651 lambda!376588))))

(assert (=> bs!1787049 (not (= lambda!376651 lambda!376538))))

(assert (=> bs!1787048 (= lambda!376651 lambda!376596)))

(assert (=> d!2110917 true))

(assert (=> d!2110917 true))

(assert (=> d!2110917 true))

(assert (=> d!2110917 (= (isDefined!13133 (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 Nil!65804 s!2326 s!2326)) (Exists!3611 lambda!376651))))

(assert (=> d!2110917 true))

(declare-fun _$89!2908 () Unit!159777)

(assert (=> d!2110917 (= (choose!50042 (reg!16872 r!7292) r!7292 s!2326) _$89!2908)))

(declare-fun bs!1787056 () Bool)

(assert (= bs!1787056 d!2110917))

(assert (=> bs!1787056 m!7479002))

(assert (=> bs!1787056 m!7479002))

(assert (=> bs!1787056 m!7479008))

(declare-fun m!7479740 () Bool)

(assert (=> bs!1787056 m!7479740))

(assert (=> d!2110701 d!2110917))

(assert (=> d!2110701 d!2110699))

(assert (=> d!2110701 d!2110821))

(declare-fun bs!1787057 () Bool)

(declare-fun d!2110931 () Bool)

(assert (= bs!1787057 (and d!2110931 d!2110655)))

(declare-fun lambda!376652 () Int)

(assert (=> bs!1787057 (= lambda!376652 lambda!376571)))

(declare-fun bs!1787058 () Bool)

(assert (= bs!1787058 (and d!2110931 d!2110647)))

(assert (=> bs!1787058 (= lambda!376652 lambda!376564)))

(declare-fun bs!1787059 () Bool)

(assert (= bs!1787059 (and d!2110931 d!2110621)))

(assert (=> bs!1787059 (= lambda!376652 lambda!376546)))

(declare-fun bs!1787060 () Bool)

(assert (= bs!1787060 (and d!2110931 d!2110703)))

(assert (=> bs!1787060 (= lambda!376652 lambda!376609)))

(declare-fun bs!1787061 () Bool)

(assert (= bs!1787061 (and d!2110931 d!2110911)))

(assert (=> bs!1787061 (= lambda!376652 lambda!376648)))

(declare-fun bs!1787062 () Bool)

(assert (= bs!1787062 (and d!2110931 d!2110643)))

(assert (=> bs!1787062 (= lambda!376652 lambda!376556)))

(declare-fun bs!1787063 () Bool)

(assert (= bs!1787063 (and d!2110931 d!2110629)))

(assert (=> bs!1787063 (= lambda!376652 lambda!376549)))

(declare-fun b!6716107 () Bool)

(declare-fun e!4058565 () Bool)

(assert (=> b!6716107 (= e!4058565 (isEmpty!38125 (t!379606 (t!379606 (unfocusZipperList!1964 zl!343)))))))

(declare-fun b!6716108 () Bool)

(declare-fun e!4058569 () Bool)

(declare-fun lt!2436334 () Regex!16543)

(assert (=> b!6716108 (= e!4058569 (= lt!2436334 (head!13513 (t!379606 (unfocusZipperList!1964 zl!343)))))))

(declare-fun b!6716109 () Bool)

(declare-fun e!4058566 () Regex!16543)

(assert (=> b!6716109 (= e!4058566 EmptyLang!16543)))

(declare-fun b!6716110 () Bool)

(assert (=> b!6716110 (= e!4058566 (Union!16543 (h!72253 (t!379606 (unfocusZipperList!1964 zl!343))) (generalisedUnion!2387 (t!379606 (t!379606 (unfocusZipperList!1964 zl!343))))))))

(declare-fun b!6716111 () Bool)

(declare-fun e!4058570 () Bool)

(assert (=> b!6716111 (= e!4058570 (isEmptyLang!1917 lt!2436334))))

(declare-fun b!6716112 () Bool)

(assert (=> b!6716112 (= e!4058570 e!4058569)))

(declare-fun c!1245213 () Bool)

(assert (=> b!6716112 (= c!1245213 (isEmpty!38125 (tail!12598 (t!379606 (unfocusZipperList!1964 zl!343)))))))

(declare-fun e!4058568 () Bool)

(assert (=> d!2110931 e!4058568))

(declare-fun res!2748514 () Bool)

(assert (=> d!2110931 (=> (not res!2748514) (not e!4058568))))

(assert (=> d!2110931 (= res!2748514 (validRegex!8279 lt!2436334))))

(declare-fun e!4058567 () Regex!16543)

(assert (=> d!2110931 (= lt!2436334 e!4058567)))

(declare-fun c!1245214 () Bool)

(assert (=> d!2110931 (= c!1245214 e!4058565)))

(declare-fun res!2748515 () Bool)

(assert (=> d!2110931 (=> (not res!2748515) (not e!4058565))))

(assert (=> d!2110931 (= res!2748515 ((_ is Cons!65805) (t!379606 (unfocusZipperList!1964 zl!343))))))

(assert (=> d!2110931 (forall!15743 (t!379606 (unfocusZipperList!1964 zl!343)) lambda!376652)))

(assert (=> d!2110931 (= (generalisedUnion!2387 (t!379606 (unfocusZipperList!1964 zl!343))) lt!2436334)))

(declare-fun b!6716113 () Bool)

(assert (=> b!6716113 (= e!4058569 (isUnion!1347 lt!2436334))))

(declare-fun b!6716114 () Bool)

(assert (=> b!6716114 (= e!4058567 (h!72253 (t!379606 (unfocusZipperList!1964 zl!343))))))

(declare-fun b!6716115 () Bool)

(assert (=> b!6716115 (= e!4058568 e!4058570)))

(declare-fun c!1245212 () Bool)

(assert (=> b!6716115 (= c!1245212 (isEmpty!38125 (t!379606 (unfocusZipperList!1964 zl!343))))))

(declare-fun b!6716116 () Bool)

(assert (=> b!6716116 (= e!4058567 e!4058566)))

(declare-fun c!1245215 () Bool)

(assert (=> b!6716116 (= c!1245215 ((_ is Cons!65805) (t!379606 (unfocusZipperList!1964 zl!343))))))

(assert (= (and d!2110931 res!2748515) b!6716107))

(assert (= (and d!2110931 c!1245214) b!6716114))

(assert (= (and d!2110931 (not c!1245214)) b!6716116))

(assert (= (and b!6716116 c!1245215) b!6716110))

(assert (= (and b!6716116 (not c!1245215)) b!6716109))

(assert (= (and d!2110931 res!2748514) b!6716115))

(assert (= (and b!6716115 c!1245212) b!6716111))

(assert (= (and b!6716115 (not c!1245212)) b!6716112))

(assert (= (and b!6716112 c!1245213) b!6716108))

(assert (= (and b!6716112 (not c!1245213)) b!6716113))

(assert (=> b!6716115 m!7479106))

(declare-fun m!7479742 () Bool)

(assert (=> b!6716110 m!7479742))

(declare-fun m!7479744 () Bool)

(assert (=> d!2110931 m!7479744))

(declare-fun m!7479746 () Bool)

(assert (=> d!2110931 m!7479746))

(declare-fun m!7479748 () Bool)

(assert (=> b!6716112 m!7479748))

(assert (=> b!6716112 m!7479748))

(declare-fun m!7479750 () Bool)

(assert (=> b!6716112 m!7479750))

(declare-fun m!7479752 () Bool)

(assert (=> b!6716113 m!7479752))

(declare-fun m!7479754 () Bool)

(assert (=> b!6716107 m!7479754))

(declare-fun m!7479756 () Bool)

(assert (=> b!6716108 m!7479756))

(declare-fun m!7479758 () Bool)

(assert (=> b!6716111 m!7479758))

(assert (=> b!6715082 d!2110931))

(assert (=> b!6715399 d!2110791))

(declare-fun d!2110933 () Bool)

(assert (=> d!2110933 (= (isEmpty!38125 (tail!12598 (unfocusZipperList!1964 zl!343))) ((_ is Nil!65805) (tail!12598 (unfocusZipperList!1964 zl!343))))))

(assert (=> b!6715084 d!2110933))

(declare-fun d!2110935 () Bool)

(assert (=> d!2110935 (= (tail!12598 (unfocusZipperList!1964 zl!343)) (t!379606 (unfocusZipperList!1964 zl!343)))))

(assert (=> b!6715084 d!2110935))

(declare-fun d!2110937 () Bool)

(assert (=> d!2110937 (= (isEmpty!38125 (exprs!6427 (h!72254 zl!343))) ((_ is Nil!65805) (exprs!6427 (h!72254 zl!343))))))

(assert (=> b!6715478 d!2110937))

(declare-fun d!2110939 () Bool)

(assert (=> d!2110939 (= (isEmpty!38122 (tail!12599 s!2326)) ((_ is Nil!65804) (tail!12599 s!2326)))))

(assert (=> b!6715401 d!2110939))

(assert (=> b!6715401 d!2110907))

(assert (=> b!6715133 d!2110703))

(declare-fun bs!1787064 () Bool)

(declare-fun d!2110941 () Bool)

(assert (= bs!1787064 (and d!2110941 d!2110655)))

(declare-fun lambda!376653 () Int)

(assert (=> bs!1787064 (= lambda!376653 lambda!376571)))

(declare-fun bs!1787065 () Bool)

(assert (= bs!1787065 (and d!2110941 d!2110647)))

(assert (=> bs!1787065 (= lambda!376653 lambda!376564)))

(declare-fun bs!1787066 () Bool)

(assert (= bs!1787066 (and d!2110941 d!2110621)))

(assert (=> bs!1787066 (= lambda!376653 lambda!376546)))

(declare-fun bs!1787067 () Bool)

(assert (= bs!1787067 (and d!2110941 d!2110703)))

(assert (=> bs!1787067 (= lambda!376653 lambda!376609)))

(declare-fun bs!1787068 () Bool)

(assert (= bs!1787068 (and d!2110941 d!2110911)))

(assert (=> bs!1787068 (= lambda!376653 lambda!376648)))

(declare-fun bs!1787069 () Bool)

(assert (= bs!1787069 (and d!2110941 d!2110629)))

(assert (=> bs!1787069 (= lambda!376653 lambda!376549)))

(declare-fun bs!1787070 () Bool)

(assert (= bs!1787070 (and d!2110941 d!2110931)))

(assert (=> bs!1787070 (= lambda!376653 lambda!376652)))

(declare-fun bs!1787071 () Bool)

(assert (= bs!1787071 (and d!2110941 d!2110643)))

(assert (=> bs!1787071 (= lambda!376653 lambda!376556)))

(declare-fun lt!2436335 () List!65929)

(assert (=> d!2110941 (forall!15743 lt!2436335 lambda!376653)))

(declare-fun e!4058571 () List!65929)

(assert (=> d!2110941 (= lt!2436335 e!4058571)))

(declare-fun c!1245216 () Bool)

(assert (=> d!2110941 (= c!1245216 ((_ is Cons!65806) (t!379607 zl!343)))))

(assert (=> d!2110941 (= (unfocusZipperList!1964 (t!379607 zl!343)) lt!2436335)))

(declare-fun b!6716117 () Bool)

(assert (=> b!6716117 (= e!4058571 (Cons!65805 (generalisedConcat!2140 (exprs!6427 (h!72254 (t!379607 zl!343)))) (unfocusZipperList!1964 (t!379607 (t!379607 zl!343)))))))

(declare-fun b!6716118 () Bool)

(assert (=> b!6716118 (= e!4058571 Nil!65805)))

(assert (= (and d!2110941 c!1245216) b!6716117))

(assert (= (and d!2110941 (not c!1245216)) b!6716118))

(declare-fun m!7479760 () Bool)

(assert (=> d!2110941 m!7479760))

(declare-fun m!7479762 () Bool)

(assert (=> b!6716117 m!7479762))

(declare-fun m!7479764 () Bool)

(assert (=> b!6716117 m!7479764))

(assert (=> b!6715133 d!2110941))

(declare-fun d!2110943 () Bool)

(assert (=> d!2110943 (= (isConcat!1432 lt!2436302) ((_ is Concat!25388) lt!2436302))))

(assert (=> b!6715480 d!2110943))

(assert (=> bm!606084 d!2110687))

(declare-fun bs!1787072 () Bool)

(declare-fun d!2110945 () Bool)

(assert (= bs!1787072 (and d!2110945 d!2110655)))

(declare-fun lambda!376654 () Int)

(assert (=> bs!1787072 (= lambda!376654 lambda!376571)))

(declare-fun bs!1787073 () Bool)

(assert (= bs!1787073 (and d!2110945 d!2110647)))

(assert (=> bs!1787073 (= lambda!376654 lambda!376564)))

(declare-fun bs!1787074 () Bool)

(assert (= bs!1787074 (and d!2110945 d!2110621)))

(assert (=> bs!1787074 (= lambda!376654 lambda!376546)))

(declare-fun bs!1787075 () Bool)

(assert (= bs!1787075 (and d!2110945 d!2110703)))

(assert (=> bs!1787075 (= lambda!376654 lambda!376609)))

(declare-fun bs!1787076 () Bool)

(assert (= bs!1787076 (and d!2110945 d!2110911)))

(assert (=> bs!1787076 (= lambda!376654 lambda!376648)))

(declare-fun bs!1787077 () Bool)

(assert (= bs!1787077 (and d!2110945 d!2110629)))

(assert (=> bs!1787077 (= lambda!376654 lambda!376549)))

(declare-fun bs!1787078 () Bool)

(assert (= bs!1787078 (and d!2110945 d!2110941)))

(assert (=> bs!1787078 (= lambda!376654 lambda!376653)))

(declare-fun bs!1787079 () Bool)

(assert (= bs!1787079 (and d!2110945 d!2110931)))

(assert (=> bs!1787079 (= lambda!376654 lambda!376652)))

(declare-fun bs!1787080 () Bool)

(assert (= bs!1787080 (and d!2110945 d!2110643)))

(assert (=> bs!1787080 (= lambda!376654 lambda!376556)))

(assert (=> d!2110945 (= (inv!84604 setElem!45777) (forall!15743 (exprs!6427 setElem!45777) lambda!376654))))

(declare-fun bs!1787081 () Bool)

(assert (= bs!1787081 d!2110945))

(declare-fun m!7479766 () Bool)

(assert (=> bs!1787081 m!7479766))

(assert (=> setNonEmpty!45777 d!2110945))

(assert (=> bm!606077 d!2110687))

(declare-fun d!2110947 () Bool)

(assert (=> d!2110947 true))

(assert (=> d!2110947 true))

(declare-fun res!2748516 () Bool)

(assert (=> d!2110947 (= (choose!50039 lambda!376539) res!2748516)))

(assert (=> d!2110689 d!2110947))

(declare-fun d!2110949 () Bool)

(assert (=> d!2110949 (= (isEmptyExpr!1909 lt!2436302) ((_ is EmptyExpr!16543) lt!2436302))))

(assert (=> b!6715483 d!2110949))

(assert (=> d!2110671 d!2110687))

(assert (=> d!2110671 d!2110631))

(declare-fun d!2110951 () Bool)

(declare-fun res!2748521 () Bool)

(declare-fun e!4058576 () Bool)

(assert (=> d!2110951 (=> res!2748521 e!4058576)))

(assert (=> d!2110951 (= res!2748521 ((_ is Nil!65806) lt!2436230))))

(assert (=> d!2110951 (= (noDuplicate!2335 lt!2436230) e!4058576)))

(declare-fun b!6716123 () Bool)

(declare-fun e!4058577 () Bool)

(assert (=> b!6716123 (= e!4058576 e!4058577)))

(declare-fun res!2748522 () Bool)

(assert (=> b!6716123 (=> (not res!2748522) (not e!4058577))))

(declare-fun contains!20241 (List!65930 Context!11854) Bool)

(assert (=> b!6716123 (= res!2748522 (not (contains!20241 (t!379607 lt!2436230) (h!72254 lt!2436230))))))

(declare-fun b!6716124 () Bool)

(assert (=> b!6716124 (= e!4058577 (noDuplicate!2335 (t!379607 lt!2436230)))))

(assert (= (and d!2110951 (not res!2748521)) b!6716123))

(assert (= (and b!6716123 res!2748522) b!6716124))

(declare-fun m!7479768 () Bool)

(assert (=> b!6716123 m!7479768))

(declare-fun m!7479770 () Bool)

(assert (=> b!6716124 m!7479770))

(assert (=> d!2110623 d!2110951))

(declare-fun d!2110953 () Bool)

(declare-fun e!4058584 () Bool)

(assert (=> d!2110953 e!4058584))

(declare-fun res!2748528 () Bool)

(assert (=> d!2110953 (=> (not res!2748528) (not e!4058584))))

(declare-fun res!2748527 () List!65930)

(assert (=> d!2110953 (= res!2748528 (noDuplicate!2335 res!2748527))))

(declare-fun e!4058586 () Bool)

(assert (=> d!2110953 e!4058586))

(assert (=> d!2110953 (= (choose!50035 z!1189) res!2748527)))

(declare-fun b!6716132 () Bool)

(declare-fun e!4058585 () Bool)

(declare-fun tp!1840553 () Bool)

(assert (=> b!6716132 (= e!4058585 tp!1840553)))

(declare-fun tp!1840552 () Bool)

(declare-fun b!6716131 () Bool)

(assert (=> b!6716131 (= e!4058586 (and (inv!84604 (h!72254 res!2748527)) e!4058585 tp!1840552))))

(declare-fun b!6716133 () Bool)

(assert (=> b!6716133 (= e!4058584 (= (content!12754 res!2748527) z!1189))))

(assert (= b!6716131 b!6716132))

(assert (= (and d!2110953 ((_ is Cons!65806) res!2748527)) b!6716131))

(assert (= (and d!2110953 res!2748528) b!6716133))

(declare-fun m!7479772 () Bool)

(assert (=> d!2110953 m!7479772))

(declare-fun m!7479774 () Bool)

(assert (=> b!6716131 m!7479774))

(declare-fun m!7479776 () Bool)

(assert (=> b!6716133 m!7479776))

(assert (=> d!2110623 d!2110953))

(declare-fun bs!1787082 () Bool)

(declare-fun b!6716135 () Bool)

(assert (= bs!1787082 (and b!6716135 b!6715756)))

(declare-fun lambda!376655 () Int)

(assert (=> bs!1787082 (not (= lambda!376655 lambda!376640))))

(declare-fun bs!1787083 () Bool)

(assert (= bs!1787083 (and b!6716135 d!2110697)))

(assert (=> bs!1787083 (not (= lambda!376655 lambda!376602))))

(declare-fun bs!1787084 () Bool)

(assert (= bs!1787084 (and b!6716135 d!2110691)))

(assert (=> bs!1787084 (not (= lambda!376655 lambda!376597))))

(declare-fun bs!1787085 () Bool)

(assert (= bs!1787085 (and b!6716135 d!2110917)))

(assert (=> bs!1787085 (not (= lambda!376655 lambda!376651))))

(declare-fun bs!1787086 () Bool)

(assert (= bs!1787086 (and b!6716135 b!6714965)))

(assert (=> bs!1787086 (not (= lambda!376655 lambda!376537))))

(assert (=> bs!1787086 (not (= lambda!376655 lambda!376539))))

(declare-fun bs!1787087 () Bool)

(assert (= bs!1787087 (and b!6716135 b!6715262)))

(assert (=> bs!1787087 (not (= lambda!376655 lambda!376589))))

(assert (=> bs!1787083 (= (and (= (reg!16872 (regTwo!33599 r!7292)) (reg!16872 r!7292)) (= (regTwo!33599 r!7292) (Star!16543 (reg!16872 r!7292)))) (= lambda!376655 lambda!376603))))

(declare-fun bs!1787088 () Bool)

(assert (= bs!1787088 (and b!6716135 b!6715748)))

(assert (=> bs!1787088 (= (and (= (reg!16872 (regTwo!33599 r!7292)) (reg!16872 (regOne!33599 r!7292))) (= (regTwo!33599 r!7292) (regOne!33599 r!7292))) (= lambda!376655 lambda!376638))))

(declare-fun bs!1787089 () Bool)

(assert (= bs!1787089 (and b!6716135 d!2110871)))

(assert (=> bs!1787089 (not (= lambda!376655 lambda!376647))))

(assert (=> bs!1787089 (not (= lambda!376655 lambda!376646))))

(declare-fun bs!1787090 () Bool)

(assert (= bs!1787090 (and b!6716135 d!2110799)))

(assert (=> bs!1787090 (= (and (= (reg!16872 (regTwo!33599 r!7292)) (reg!16872 r!7292)) (= (regTwo!33599 r!7292) (Star!16543 (reg!16872 r!7292)))) (= lambda!376655 lambda!376636))))

(assert (=> bs!1787090 (not (= lambda!376655 lambda!376634))))

(declare-fun bs!1787091 () Bool)

(assert (= bs!1787091 (and b!6716135 d!2110701)))

(assert (=> bs!1787091 (not (= lambda!376655 lambda!376606))))

(declare-fun bs!1787092 () Bool)

(assert (= bs!1787092 (and b!6716135 b!6715254)))

(assert (=> bs!1787092 (= (and (= (reg!16872 (regTwo!33599 r!7292)) (reg!16872 r!7292)) (= (regTwo!33599 r!7292) r!7292)) (= lambda!376655 lambda!376588))))

(assert (=> bs!1787086 (= (and (= (reg!16872 (regTwo!33599 r!7292)) (reg!16872 r!7292)) (= (regTwo!33599 r!7292) r!7292)) (= lambda!376655 lambda!376538))))

(assert (=> bs!1787084 (not (= lambda!376655 lambda!376596))))

(assert (=> b!6716135 true))

(assert (=> b!6716135 true))

(declare-fun bs!1787093 () Bool)

(declare-fun b!6716143 () Bool)

(assert (= bs!1787093 (and b!6716143 b!6715756)))

(declare-fun lambda!376656 () Int)

(assert (=> bs!1787093 (= (and (= (regOne!33598 (regTwo!33599 r!7292)) (regOne!33598 (regOne!33599 r!7292))) (= (regTwo!33598 (regTwo!33599 r!7292)) (regTwo!33598 (regOne!33599 r!7292)))) (= lambda!376656 lambda!376640))))

(declare-fun bs!1787094 () Bool)

(assert (= bs!1787094 (and b!6716143 d!2110697)))

(assert (=> bs!1787094 (not (= lambda!376656 lambda!376602))))

(declare-fun bs!1787095 () Bool)

(assert (= bs!1787095 (and b!6716143 d!2110691)))

(assert (=> bs!1787095 (= (and (= (regOne!33598 (regTwo!33599 r!7292)) (reg!16872 r!7292)) (= (regTwo!33598 (regTwo!33599 r!7292)) r!7292)) (= lambda!376656 lambda!376597))))

(declare-fun bs!1787096 () Bool)

(assert (= bs!1787096 (and b!6716143 d!2110917)))

(assert (=> bs!1787096 (not (= lambda!376656 lambda!376651))))

(declare-fun bs!1787097 () Bool)

(assert (= bs!1787097 (and b!6716143 b!6714965)))

(assert (=> bs!1787097 (not (= lambda!376656 lambda!376537))))

(assert (=> bs!1787097 (= (and (= (regOne!33598 (regTwo!33599 r!7292)) (reg!16872 r!7292)) (= (regTwo!33598 (regTwo!33599 r!7292)) r!7292)) (= lambda!376656 lambda!376539))))

(declare-fun bs!1787098 () Bool)

(assert (= bs!1787098 (and b!6716143 b!6715262)))

(assert (=> bs!1787098 (= (and (= (regOne!33598 (regTwo!33599 r!7292)) (regOne!33598 r!7292)) (= (regTwo!33598 (regTwo!33599 r!7292)) (regTwo!33598 r!7292))) (= lambda!376656 lambda!376589))))

(assert (=> bs!1787094 (not (= lambda!376656 lambda!376603))))

(declare-fun bs!1787099 () Bool)

(assert (= bs!1787099 (and b!6716143 b!6716135)))

(assert (=> bs!1787099 (not (= lambda!376656 lambda!376655))))

(declare-fun bs!1787100 () Bool)

(assert (= bs!1787100 (and b!6716143 b!6715748)))

(assert (=> bs!1787100 (not (= lambda!376656 lambda!376638))))

(declare-fun bs!1787101 () Bool)

(assert (= bs!1787101 (and b!6716143 d!2110871)))

(assert (=> bs!1787101 (= (and (= (regOne!33598 (regTwo!33599 r!7292)) (reg!16872 r!7292)) (= (regTwo!33598 (regTwo!33599 r!7292)) r!7292)) (= lambda!376656 lambda!376647))))

(assert (=> bs!1787101 (not (= lambda!376656 lambda!376646))))

(declare-fun bs!1787102 () Bool)

(assert (= bs!1787102 (and b!6716143 d!2110799)))

(assert (=> bs!1787102 (not (= lambda!376656 lambda!376636))))

(assert (=> bs!1787102 (not (= lambda!376656 lambda!376634))))

(declare-fun bs!1787103 () Bool)

(assert (= bs!1787103 (and b!6716143 d!2110701)))

(assert (=> bs!1787103 (not (= lambda!376656 lambda!376606))))

(declare-fun bs!1787104 () Bool)

(assert (= bs!1787104 (and b!6716143 b!6715254)))

(assert (=> bs!1787104 (not (= lambda!376656 lambda!376588))))

(assert (=> bs!1787097 (not (= lambda!376656 lambda!376538))))

(assert (=> bs!1787095 (not (= lambda!376656 lambda!376596))))

(assert (=> b!6716143 true))

(assert (=> b!6716143 true))

(declare-fun b!6716134 () Bool)

(declare-fun e!4058589 () Bool)

(declare-fun e!4058591 () Bool)

(assert (=> b!6716134 (= e!4058589 e!4058591)))

(declare-fun res!2748530 () Bool)

(assert (=> b!6716134 (= res!2748530 (matchRSpec!3644 (regOne!33599 (regTwo!33599 r!7292)) s!2326))))

(assert (=> b!6716134 (=> res!2748530 e!4058591)))

(declare-fun d!2110955 () Bool)

(declare-fun c!1245217 () Bool)

(assert (=> d!2110955 (= c!1245217 ((_ is EmptyExpr!16543) (regTwo!33599 r!7292)))))

(declare-fun e!4058588 () Bool)

(assert (=> d!2110955 (= (matchRSpec!3644 (regTwo!33599 r!7292) s!2326) e!4058588)))

(declare-fun e!4058592 () Bool)

(declare-fun call!606157 () Bool)

(assert (=> b!6716135 (= e!4058592 call!606157)))

(declare-fun b!6716136 () Bool)

(declare-fun res!2748529 () Bool)

(assert (=> b!6716136 (=> res!2748529 e!4058592)))

(declare-fun call!606158 () Bool)

(assert (=> b!6716136 (= res!2748529 call!606158)))

(declare-fun e!4058590 () Bool)

(assert (=> b!6716136 (= e!4058590 e!4058592)))

(declare-fun bm!606152 () Bool)

(assert (=> bm!606152 (= call!606158 (isEmpty!38122 s!2326))))

(declare-fun b!6716137 () Bool)

(assert (=> b!6716137 (= e!4058588 call!606158)))

(declare-fun b!6716138 () Bool)

(declare-fun c!1245219 () Bool)

(assert (=> b!6716138 (= c!1245219 ((_ is ElementMatch!16543) (regTwo!33599 r!7292)))))

(declare-fun e!4058587 () Bool)

(declare-fun e!4058593 () Bool)

(assert (=> b!6716138 (= e!4058587 e!4058593)))

(declare-fun b!6716139 () Bool)

(declare-fun c!1245220 () Bool)

(assert (=> b!6716139 (= c!1245220 ((_ is Union!16543) (regTwo!33599 r!7292)))))

(assert (=> b!6716139 (= e!4058593 e!4058589)))

(declare-fun b!6716140 () Bool)

(assert (=> b!6716140 (= e!4058588 e!4058587)))

(declare-fun res!2748531 () Bool)

(assert (=> b!6716140 (= res!2748531 (not ((_ is EmptyLang!16543) (regTwo!33599 r!7292))))))

(assert (=> b!6716140 (=> (not res!2748531) (not e!4058587))))

(declare-fun b!6716141 () Bool)

(assert (=> b!6716141 (= e!4058591 (matchRSpec!3644 (regTwo!33599 (regTwo!33599 r!7292)) s!2326))))

(declare-fun b!6716142 () Bool)

(assert (=> b!6716142 (= e!4058589 e!4058590)))

(declare-fun c!1245218 () Bool)

(assert (=> b!6716142 (= c!1245218 ((_ is Star!16543) (regTwo!33599 r!7292)))))

(assert (=> b!6716143 (= e!4058590 call!606157)))

(declare-fun b!6716144 () Bool)

(assert (=> b!6716144 (= e!4058593 (= s!2326 (Cons!65804 (c!1244979 (regTwo!33599 r!7292)) Nil!65804)))))

(declare-fun bm!606153 () Bool)

(assert (=> bm!606153 (= call!606157 (Exists!3611 (ite c!1245218 lambda!376655 lambda!376656)))))

(assert (= (and d!2110955 c!1245217) b!6716137))

(assert (= (and d!2110955 (not c!1245217)) b!6716140))

(assert (= (and b!6716140 res!2748531) b!6716138))

(assert (= (and b!6716138 c!1245219) b!6716144))

(assert (= (and b!6716138 (not c!1245219)) b!6716139))

(assert (= (and b!6716139 c!1245220) b!6716134))

(assert (= (and b!6716139 (not c!1245220)) b!6716142))

(assert (= (and b!6716134 (not res!2748530)) b!6716141))

(assert (= (and b!6716142 c!1245218) b!6716136))

(assert (= (and b!6716142 (not c!1245218)) b!6716143))

(assert (= (and b!6716136 (not res!2748529)) b!6716135))

(assert (= (or b!6716135 b!6716143) bm!606153))

(assert (= (or b!6716137 b!6716136) bm!606152))

(declare-fun m!7479778 () Bool)

(assert (=> b!6716134 m!7479778))

(assert (=> bm!606152 m!7478992))

(declare-fun m!7479780 () Bool)

(assert (=> b!6716141 m!7479780))

(declare-fun m!7479782 () Bool)

(assert (=> bm!606153 m!7479782))

(assert (=> b!6715260 d!2110955))

(declare-fun d!2110957 () Bool)

(declare-fun nullableFct!2444 (Regex!16543) Bool)

(assert (=> d!2110957 (= (nullable!6530 (reg!16872 r!7292)) (nullableFct!2444 (reg!16872 r!7292)))))

(declare-fun bs!1787105 () Bool)

(assert (= bs!1787105 d!2110957))

(declare-fun m!7479784 () Bool)

(assert (=> bs!1787105 m!7479784))

(assert (=> b!6715014 d!2110957))

(declare-fun d!2110959 () Bool)

(declare-fun res!2748532 () Bool)

(declare-fun e!4058594 () Bool)

(assert (=> d!2110959 (=> res!2748532 e!4058594)))

(assert (=> d!2110959 (= res!2748532 ((_ is Nil!65805) lt!2436262))))

(assert (=> d!2110959 (= (forall!15743 lt!2436262 lambda!376571) e!4058594)))

(declare-fun b!6716145 () Bool)

(declare-fun e!4058595 () Bool)

(assert (=> b!6716145 (= e!4058594 e!4058595)))

(declare-fun res!2748533 () Bool)

(assert (=> b!6716145 (=> (not res!2748533) (not e!4058595))))

(assert (=> b!6716145 (= res!2748533 (dynLambda!26241 lambda!376571 (h!72253 lt!2436262)))))

(declare-fun b!6716146 () Bool)

(assert (=> b!6716146 (= e!4058595 (forall!15743 (t!379606 lt!2436262) lambda!376571))))

(assert (= (and d!2110959 (not res!2748532)) b!6716145))

(assert (= (and b!6716145 res!2748533) b!6716146))

(declare-fun b_lambda!252899 () Bool)

(assert (=> (not b_lambda!252899) (not b!6716145)))

(declare-fun m!7479786 () Bool)

(assert (=> b!6716145 m!7479786))

(declare-fun m!7479788 () Bool)

(assert (=> b!6716146 m!7479788))

(assert (=> d!2110655 d!2110959))

(declare-fun d!2110961 () Bool)

(assert (=> d!2110961 (= (isEmpty!38126 (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 Nil!65804 s!2326 s!2326)) (not ((_ is Some!16429) (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 Nil!65804 s!2326 s!2326))))))

(assert (=> d!2110685 d!2110961))

(declare-fun b!6716147 () Bool)

(declare-fun res!2748539 () Bool)

(declare-fun e!4058601 () Bool)

(assert (=> b!6716147 (=> res!2748539 e!4058601)))

(assert (=> b!6716147 (= res!2748539 (not (isEmpty!38122 (tail!12599 (_2!36821 (get!22886 lt!2436294))))))))

(declare-fun b!6716148 () Bool)

(declare-fun e!4058602 () Bool)

(declare-fun lt!2436336 () Bool)

(declare-fun call!606159 () Bool)

(assert (=> b!6716148 (= e!4058602 (= lt!2436336 call!606159))))

(declare-fun b!6716149 () Bool)

(declare-fun e!4058596 () Bool)

(assert (=> b!6716149 (= e!4058596 (nullable!6530 r!7292))))

(declare-fun b!6716150 () Bool)

(declare-fun e!4058600 () Bool)

(declare-fun e!4058598 () Bool)

(assert (=> b!6716150 (= e!4058600 e!4058598)))

(declare-fun res!2748536 () Bool)

(assert (=> b!6716150 (=> (not res!2748536) (not e!4058598))))

(assert (=> b!6716150 (= res!2748536 (not lt!2436336))))

(declare-fun b!6716151 () Bool)

(assert (=> b!6716151 (= e!4058596 (matchR!8726 (derivativeStep!5215 r!7292 (head!13514 (_2!36821 (get!22886 lt!2436294)))) (tail!12599 (_2!36821 (get!22886 lt!2436294)))))))

(declare-fun b!6716152 () Bool)

(declare-fun e!4058599 () Bool)

(assert (=> b!6716152 (= e!4058599 (not lt!2436336))))

(declare-fun b!6716153 () Bool)

(declare-fun res!2748540 () Bool)

(assert (=> b!6716153 (=> res!2748540 e!4058600)))

(assert (=> b!6716153 (= res!2748540 (not ((_ is ElementMatch!16543) r!7292)))))

(assert (=> b!6716153 (= e!4058599 e!4058600)))

(declare-fun b!6716155 () Bool)

(assert (=> b!6716155 (= e!4058601 (not (= (head!13514 (_2!36821 (get!22886 lt!2436294))) (c!1244979 r!7292))))))

(declare-fun b!6716156 () Bool)

(declare-fun e!4058597 () Bool)

(assert (=> b!6716156 (= e!4058597 (= (head!13514 (_2!36821 (get!22886 lt!2436294))) (c!1244979 r!7292)))))

(declare-fun b!6716157 () Bool)

(declare-fun res!2748538 () Bool)

(assert (=> b!6716157 (=> (not res!2748538) (not e!4058597))))

(assert (=> b!6716157 (= res!2748538 (isEmpty!38122 (tail!12599 (_2!36821 (get!22886 lt!2436294)))))))

(declare-fun b!6716158 () Bool)

(declare-fun res!2748537 () Bool)

(assert (=> b!6716158 (=> res!2748537 e!4058600)))

(assert (=> b!6716158 (= res!2748537 e!4058597)))

(declare-fun res!2748534 () Bool)

(assert (=> b!6716158 (=> (not res!2748534) (not e!4058597))))

(assert (=> b!6716158 (= res!2748534 lt!2436336)))

(declare-fun bm!606154 () Bool)

(assert (=> bm!606154 (= call!606159 (isEmpty!38122 (_2!36821 (get!22886 lt!2436294))))))

(declare-fun b!6716159 () Bool)

(declare-fun res!2748535 () Bool)

(assert (=> b!6716159 (=> (not res!2748535) (not e!4058597))))

(assert (=> b!6716159 (= res!2748535 (not call!606159))))

(declare-fun b!6716160 () Bool)

(assert (=> b!6716160 (= e!4058602 e!4058599)))

(declare-fun c!1245222 () Bool)

(assert (=> b!6716160 (= c!1245222 ((_ is EmptyLang!16543) r!7292))))

(declare-fun b!6716154 () Bool)

(assert (=> b!6716154 (= e!4058598 e!4058601)))

(declare-fun res!2748541 () Bool)

(assert (=> b!6716154 (=> res!2748541 e!4058601)))

(assert (=> b!6716154 (= res!2748541 call!606159)))

(declare-fun d!2110963 () Bool)

(assert (=> d!2110963 e!4058602))

(declare-fun c!1245221 () Bool)

(assert (=> d!2110963 (= c!1245221 ((_ is EmptyExpr!16543) r!7292))))

(assert (=> d!2110963 (= lt!2436336 e!4058596)))

(declare-fun c!1245223 () Bool)

(assert (=> d!2110963 (= c!1245223 (isEmpty!38122 (_2!36821 (get!22886 lt!2436294))))))

(assert (=> d!2110963 (validRegex!8279 r!7292)))

(assert (=> d!2110963 (= (matchR!8726 r!7292 (_2!36821 (get!22886 lt!2436294))) lt!2436336)))

(assert (= (and d!2110963 c!1245223) b!6716149))

(assert (= (and d!2110963 (not c!1245223)) b!6716151))

(assert (= (and d!2110963 c!1245221) b!6716148))

(assert (= (and d!2110963 (not c!1245221)) b!6716160))

(assert (= (and b!6716160 c!1245222) b!6716152))

(assert (= (and b!6716160 (not c!1245222)) b!6716153))

(assert (= (and b!6716153 (not res!2748540)) b!6716158))

(assert (= (and b!6716158 res!2748534) b!6716159))

(assert (= (and b!6716159 res!2748535) b!6716157))

(assert (= (and b!6716157 res!2748538) b!6716156))

(assert (= (and b!6716158 (not res!2748537)) b!6716150))

(assert (= (and b!6716150 res!2748536) b!6716154))

(assert (= (and b!6716154 (not res!2748541)) b!6716147))

(assert (= (and b!6716147 (not res!2748539)) b!6716155))

(assert (= (or b!6716148 b!6716154 b!6716159) bm!606154))

(declare-fun m!7479790 () Bool)

(assert (=> b!6716157 m!7479790))

(assert (=> b!6716157 m!7479790))

(declare-fun m!7479792 () Bool)

(assert (=> b!6716157 m!7479792))

(assert (=> b!6716149 m!7479212))

(assert (=> b!6716147 m!7479790))

(assert (=> b!6716147 m!7479790))

(assert (=> b!6716147 m!7479792))

(declare-fun m!7479794 () Bool)

(assert (=> b!6716155 m!7479794))

(declare-fun m!7479796 () Bool)

(assert (=> d!2110963 m!7479796))

(assert (=> d!2110963 m!7478988))

(assert (=> b!6716151 m!7479794))

(assert (=> b!6716151 m!7479794))

(declare-fun m!7479798 () Bool)

(assert (=> b!6716151 m!7479798))

(assert (=> b!6716151 m!7479790))

(assert (=> b!6716151 m!7479798))

(assert (=> b!6716151 m!7479790))

(declare-fun m!7479800 () Bool)

(assert (=> b!6716151 m!7479800))

(assert (=> b!6716156 m!7479794))

(assert (=> bm!606154 m!7479796))

(assert (=> b!6715442 d!2110963))

(assert (=> b!6715442 d!2110779))

(declare-fun b!6716161 () Bool)

(declare-fun res!2748544 () Bool)

(declare-fun e!4058604 () Bool)

(assert (=> b!6716161 (=> res!2748544 e!4058604)))

(assert (=> b!6716161 (= res!2748544 (not ((_ is Concat!25388) lt!2436242)))))

(declare-fun e!4058608 () Bool)

(assert (=> b!6716161 (= e!4058608 e!4058604)))

(declare-fun bm!606155 () Bool)

(declare-fun call!606161 () Bool)

(declare-fun c!1245224 () Bool)

(assert (=> bm!606155 (= call!606161 (validRegex!8279 (ite c!1245224 (regTwo!33599 lt!2436242) (regTwo!33598 lt!2436242))))))

(declare-fun b!6716162 () Bool)

(declare-fun e!4058606 () Bool)

(declare-fun e!4058607 () Bool)

(assert (=> b!6716162 (= e!4058606 e!4058607)))

(declare-fun c!1245225 () Bool)

(assert (=> b!6716162 (= c!1245225 ((_ is Star!16543) lt!2436242))))

(declare-fun b!6716163 () Bool)

(declare-fun e!4058605 () Bool)

(assert (=> b!6716163 (= e!4058605 call!606161)))

(declare-fun b!6716164 () Bool)

(declare-fun res!2748546 () Bool)

(declare-fun e!4058609 () Bool)

(assert (=> b!6716164 (=> (not res!2748546) (not e!4058609))))

(declare-fun call!606160 () Bool)

(assert (=> b!6716164 (= res!2748546 call!606160)))

(assert (=> b!6716164 (= e!4058608 e!4058609)))

(declare-fun b!6716165 () Bool)

(assert (=> b!6716165 (= e!4058607 e!4058608)))

(assert (=> b!6716165 (= c!1245224 ((_ is Union!16543) lt!2436242))))

(declare-fun b!6716166 () Bool)

(declare-fun e!4058603 () Bool)

(assert (=> b!6716166 (= e!4058607 e!4058603)))

(declare-fun res!2748545 () Bool)

(assert (=> b!6716166 (= res!2748545 (not (nullable!6530 (reg!16872 lt!2436242))))))

(assert (=> b!6716166 (=> (not res!2748545) (not e!4058603))))

(declare-fun d!2110965 () Bool)

(declare-fun res!2748543 () Bool)

(assert (=> d!2110965 (=> res!2748543 e!4058606)))

(assert (=> d!2110965 (= res!2748543 ((_ is ElementMatch!16543) lt!2436242))))

(assert (=> d!2110965 (= (validRegex!8279 lt!2436242) e!4058606)))

(declare-fun b!6716167 () Bool)

(assert (=> b!6716167 (= e!4058609 call!606161)))

(declare-fun bm!606156 () Bool)

(declare-fun call!606162 () Bool)

(assert (=> bm!606156 (= call!606160 call!606162)))

(declare-fun b!6716168 () Bool)

(assert (=> b!6716168 (= e!4058603 call!606162)))

(declare-fun b!6716169 () Bool)

(assert (=> b!6716169 (= e!4058604 e!4058605)))

(declare-fun res!2748542 () Bool)

(assert (=> b!6716169 (=> (not res!2748542) (not e!4058605))))

(assert (=> b!6716169 (= res!2748542 call!606160)))

(declare-fun bm!606157 () Bool)

(assert (=> bm!606157 (= call!606162 (validRegex!8279 (ite c!1245225 (reg!16872 lt!2436242) (ite c!1245224 (regOne!33599 lt!2436242) (regOne!33598 lt!2436242)))))))

(assert (= (and d!2110965 (not res!2748543)) b!6716162))

(assert (= (and b!6716162 c!1245225) b!6716166))

(assert (= (and b!6716162 (not c!1245225)) b!6716165))

(assert (= (and b!6716166 res!2748545) b!6716168))

(assert (= (and b!6716165 c!1245224) b!6716164))

(assert (= (and b!6716165 (not c!1245224)) b!6716161))

(assert (= (and b!6716164 res!2748546) b!6716167))

(assert (= (and b!6716161 (not res!2748544)) b!6716169))

(assert (= (and b!6716169 res!2748542) b!6716163))

(assert (= (or b!6716167 b!6716163) bm!606155))

(assert (= (or b!6716164 b!6716169) bm!606156))

(assert (= (or b!6716168 bm!606156) bm!606157))

(declare-fun m!7479802 () Bool)

(assert (=> bm!606155 m!7479802))

(declare-fun m!7479804 () Bool)

(assert (=> b!6716166 m!7479804))

(declare-fun m!7479806 () Bool)

(assert (=> bm!606157 m!7479806))

(assert (=> d!2110645 d!2110965))

(assert (=> d!2110645 d!2110647))

(assert (=> d!2110645 d!2110655))

(assert (=> b!6715391 d!2110939))

(assert (=> b!6715391 d!2110907))

(declare-fun bs!1787106 () Bool)

(declare-fun d!2110967 () Bool)

(assert (= bs!1787106 (and d!2110967 d!2110655)))

(declare-fun lambda!376657 () Int)

(assert (=> bs!1787106 (= lambda!376657 lambda!376571)))

(declare-fun bs!1787107 () Bool)

(assert (= bs!1787107 (and d!2110967 d!2110647)))

(assert (=> bs!1787107 (= lambda!376657 lambda!376564)))

(declare-fun bs!1787108 () Bool)

(assert (= bs!1787108 (and d!2110967 d!2110945)))

(assert (=> bs!1787108 (= lambda!376657 lambda!376654)))

(declare-fun bs!1787109 () Bool)

(assert (= bs!1787109 (and d!2110967 d!2110621)))

(assert (=> bs!1787109 (= lambda!376657 lambda!376546)))

(declare-fun bs!1787110 () Bool)

(assert (= bs!1787110 (and d!2110967 d!2110703)))

(assert (=> bs!1787110 (= lambda!376657 lambda!376609)))

(declare-fun bs!1787111 () Bool)

(assert (= bs!1787111 (and d!2110967 d!2110911)))

(assert (=> bs!1787111 (= lambda!376657 lambda!376648)))

(declare-fun bs!1787112 () Bool)

(assert (= bs!1787112 (and d!2110967 d!2110629)))

(assert (=> bs!1787112 (= lambda!376657 lambda!376549)))

(declare-fun bs!1787113 () Bool)

(assert (= bs!1787113 (and d!2110967 d!2110941)))

(assert (=> bs!1787113 (= lambda!376657 lambda!376653)))

(declare-fun bs!1787114 () Bool)

(assert (= bs!1787114 (and d!2110967 d!2110931)))

(assert (=> bs!1787114 (= lambda!376657 lambda!376652)))

(declare-fun bs!1787115 () Bool)

(assert (= bs!1787115 (and d!2110967 d!2110643)))

(assert (=> bs!1787115 (= lambda!376657 lambda!376556)))

(assert (=> d!2110967 (= (inv!84604 (h!72254 (t!379607 zl!343))) (forall!15743 (exprs!6427 (h!72254 (t!379607 zl!343))) lambda!376657))))

(declare-fun bs!1787116 () Bool)

(assert (= bs!1787116 d!2110967))

(declare-fun m!7479808 () Bool)

(assert (=> bs!1787116 m!7479808))

(assert (=> b!6715490 d!2110967))

(declare-fun d!2110969 () Bool)

(assert (=> d!2110969 (= (Exists!3611 (ite c!1245061 lambda!376588 lambda!376589)) (choose!50039 (ite c!1245061 lambda!376588 lambda!376589)))))

(declare-fun bs!1787117 () Bool)

(assert (= bs!1787117 d!2110969))

(declare-fun m!7479810 () Bool)

(assert (=> bs!1787117 m!7479810))

(assert (=> bm!606078 d!2110969))

(declare-fun d!2110971 () Bool)

(declare-fun e!4058610 () Bool)

(assert (=> d!2110971 e!4058610))

(declare-fun res!2748548 () Bool)

(assert (=> d!2110971 (=> (not res!2748548) (not e!4058610))))

(declare-fun lt!2436337 () List!65928)

(assert (=> d!2110971 (= res!2748548 (= (content!12756 lt!2436337) ((_ map or) (content!12756 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804))) (content!12756 (t!379605 s!2326)))))))

(declare-fun e!4058611 () List!65928)

(assert (=> d!2110971 (= lt!2436337 e!4058611)))

(declare-fun c!1245226 () Bool)

(assert (=> d!2110971 (= c!1245226 ((_ is Nil!65804) (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804))))))

(assert (=> d!2110971 (= (++!14699 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) (t!379605 s!2326)) lt!2436337)))

(declare-fun b!6716171 () Bool)

(assert (=> b!6716171 (= e!4058611 (Cons!65804 (h!72252 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804))) (++!14699 (t!379605 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804))) (t!379605 s!2326))))))

(declare-fun b!6716173 () Bool)

(assert (=> b!6716173 (= e!4058610 (or (not (= (t!379605 s!2326) Nil!65804)) (= lt!2436337 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)))))))

(declare-fun b!6716170 () Bool)

(assert (=> b!6716170 (= e!4058611 (t!379605 s!2326))))

(declare-fun b!6716172 () Bool)

(declare-fun res!2748547 () Bool)

(assert (=> b!6716172 (=> (not res!2748547) (not e!4058610))))

(assert (=> b!6716172 (= res!2748547 (= (size!40592 lt!2436337) (+ (size!40592 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804))) (size!40592 (t!379605 s!2326)))))))

(assert (= (and d!2110971 c!1245226) b!6716170))

(assert (= (and d!2110971 (not c!1245226)) b!6716171))

(assert (= (and d!2110971 res!2748548) b!6716172))

(assert (= (and b!6716172 res!2748547) b!6716173))

(declare-fun m!7479812 () Bool)

(assert (=> d!2110971 m!7479812))

(assert (=> d!2110971 m!7479246))

(declare-fun m!7479814 () Bool)

(assert (=> d!2110971 m!7479814))

(declare-fun m!7479816 () Bool)

(assert (=> d!2110971 m!7479816))

(declare-fun m!7479818 () Bool)

(assert (=> b!6716171 m!7479818))

(declare-fun m!7479820 () Bool)

(assert (=> b!6716172 m!7479820))

(assert (=> b!6716172 m!7479246))

(declare-fun m!7479822 () Bool)

(assert (=> b!6716172 m!7479822))

(declare-fun m!7479824 () Bool)

(assert (=> b!6716172 m!7479824))

(assert (=> b!6715444 d!2110971))

(declare-fun d!2110973 () Bool)

(declare-fun e!4058612 () Bool)

(assert (=> d!2110973 e!4058612))

(declare-fun res!2748550 () Bool)

(assert (=> d!2110973 (=> (not res!2748550) (not e!4058612))))

(declare-fun lt!2436338 () List!65928)

(assert (=> d!2110973 (= res!2748550 (= (content!12756 lt!2436338) ((_ map or) (content!12756 Nil!65804) (content!12756 (Cons!65804 (h!72252 s!2326) Nil!65804)))))))

(declare-fun e!4058613 () List!65928)

(assert (=> d!2110973 (= lt!2436338 e!4058613)))

(declare-fun c!1245227 () Bool)

(assert (=> d!2110973 (= c!1245227 ((_ is Nil!65804) Nil!65804))))

(assert (=> d!2110973 (= (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) lt!2436338)))

(declare-fun b!6716175 () Bool)

(assert (=> b!6716175 (= e!4058613 (Cons!65804 (h!72252 Nil!65804) (++!14699 (t!379605 Nil!65804) (Cons!65804 (h!72252 s!2326) Nil!65804))))))

(declare-fun b!6716177 () Bool)

(assert (=> b!6716177 (= e!4058612 (or (not (= (Cons!65804 (h!72252 s!2326) Nil!65804) Nil!65804)) (= lt!2436338 Nil!65804)))))

(declare-fun b!6716174 () Bool)

(assert (=> b!6716174 (= e!4058613 (Cons!65804 (h!72252 s!2326) Nil!65804))))

(declare-fun b!6716176 () Bool)

(declare-fun res!2748549 () Bool)

(assert (=> b!6716176 (=> (not res!2748549) (not e!4058612))))

(assert (=> b!6716176 (= res!2748549 (= (size!40592 lt!2436338) (+ (size!40592 Nil!65804) (size!40592 (Cons!65804 (h!72252 s!2326) Nil!65804)))))))

(assert (= (and d!2110973 c!1245227) b!6716174))

(assert (= (and d!2110973 (not c!1245227)) b!6716175))

(assert (= (and d!2110973 res!2748550) b!6716176))

(assert (= (and b!6716176 res!2748549) b!6716177))

(declare-fun m!7479826 () Bool)

(assert (=> d!2110973 m!7479826))

(declare-fun m!7479828 () Bool)

(assert (=> d!2110973 m!7479828))

(declare-fun m!7479830 () Bool)

(assert (=> d!2110973 m!7479830))

(declare-fun m!7479832 () Bool)

(assert (=> b!6716175 m!7479832))

(declare-fun m!7479834 () Bool)

(assert (=> b!6716176 m!7479834))

(declare-fun m!7479836 () Bool)

(assert (=> b!6716176 m!7479836))

(declare-fun m!7479838 () Bool)

(assert (=> b!6716176 m!7479838))

(assert (=> b!6715444 d!2110973))

(declare-fun d!2110975 () Bool)

(assert (=> d!2110975 (= (++!14699 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) (t!379605 s!2326)) s!2326)))

(declare-fun lt!2436341 () Unit!159777)

(declare-fun choose!50044 (List!65928 C!33356 List!65928 List!65928) Unit!159777)

(assert (=> d!2110975 (= lt!2436341 (choose!50044 Nil!65804 (h!72252 s!2326) (t!379605 s!2326) s!2326))))

(assert (=> d!2110975 (= (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) (t!379605 s!2326))) s!2326)))

(assert (=> d!2110975 (= (lemmaMoveElementToOtherListKeepsConcatEq!2672 Nil!65804 (h!72252 s!2326) (t!379605 s!2326) s!2326) lt!2436341)))

(declare-fun bs!1787118 () Bool)

(assert (= bs!1787118 d!2110975))

(assert (=> bs!1787118 m!7479246))

(assert (=> bs!1787118 m!7479246))

(assert (=> bs!1787118 m!7479248))

(declare-fun m!7479840 () Bool)

(assert (=> bs!1787118 m!7479840))

(declare-fun m!7479842 () Bool)

(assert (=> bs!1787118 m!7479842))

(assert (=> b!6715444 d!2110975))

(declare-fun b!6716178 () Bool)

(declare-fun res!2748553 () Bool)

(declare-fun e!4058618 () Bool)

(assert (=> b!6716178 (=> (not res!2748553) (not e!4058618))))

(declare-fun lt!2436342 () Option!16430)

(assert (=> b!6716178 (= res!2748553 (matchR!8726 (reg!16872 r!7292) (_1!36821 (get!22886 lt!2436342))))))

(declare-fun b!6716179 () Bool)

(declare-fun res!2748551 () Bool)

(assert (=> b!6716179 (=> (not res!2748551) (not e!4058618))))

(assert (=> b!6716179 (= res!2748551 (matchR!8726 r!7292 (_2!36821 (get!22886 lt!2436342))))))

(declare-fun b!6716180 () Bool)

(declare-fun e!4058617 () Option!16430)

(assert (=> b!6716180 (= e!4058617 None!16429)))

(declare-fun b!6716181 () Bool)

(declare-fun lt!2436344 () Unit!159777)

(declare-fun lt!2436343 () Unit!159777)

(assert (=> b!6716181 (= lt!2436344 lt!2436343)))

(assert (=> b!6716181 (= (++!14699 (++!14699 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) (Cons!65804 (h!72252 (t!379605 s!2326)) Nil!65804)) (t!379605 (t!379605 s!2326))) s!2326)))

(assert (=> b!6716181 (= lt!2436343 (lemmaMoveElementToOtherListKeepsConcatEq!2672 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) (h!72252 (t!379605 s!2326)) (t!379605 (t!379605 s!2326)) s!2326))))

(assert (=> b!6716181 (= e!4058617 (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 (++!14699 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) (Cons!65804 (h!72252 (t!379605 s!2326)) Nil!65804)) (t!379605 (t!379605 s!2326)) s!2326))))

(declare-fun b!6716182 () Bool)

(declare-fun e!4058616 () Option!16430)

(assert (=> b!6716182 (= e!4058616 (Some!16429 (tuple2!67037 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) (t!379605 s!2326))))))

(declare-fun b!6716183 () Bool)

(assert (=> b!6716183 (= e!4058616 e!4058617)))

(declare-fun c!1245229 () Bool)

(assert (=> b!6716183 (= c!1245229 ((_ is Nil!65804) (t!379605 s!2326)))))

(declare-fun d!2110977 () Bool)

(declare-fun e!4058615 () Bool)

(assert (=> d!2110977 e!4058615))

(declare-fun res!2748552 () Bool)

(assert (=> d!2110977 (=> res!2748552 e!4058615)))

(assert (=> d!2110977 (= res!2748552 e!4058618)))

(declare-fun res!2748555 () Bool)

(assert (=> d!2110977 (=> (not res!2748555) (not e!4058618))))

(assert (=> d!2110977 (= res!2748555 (isDefined!13133 lt!2436342))))

(assert (=> d!2110977 (= lt!2436342 e!4058616)))

(declare-fun c!1245228 () Bool)

(declare-fun e!4058614 () Bool)

(assert (=> d!2110977 (= c!1245228 e!4058614)))

(declare-fun res!2748554 () Bool)

(assert (=> d!2110977 (=> (not res!2748554) (not e!4058614))))

(assert (=> d!2110977 (= res!2748554 (matchR!8726 (reg!16872 r!7292) (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804))))))

(assert (=> d!2110977 (validRegex!8279 (reg!16872 r!7292))))

(assert (=> d!2110977 (= (findConcatSeparation!2844 (reg!16872 r!7292) r!7292 (++!14699 Nil!65804 (Cons!65804 (h!72252 s!2326) Nil!65804)) (t!379605 s!2326) s!2326) lt!2436342)))

(declare-fun b!6716184 () Bool)

(assert (=> b!6716184 (= e!4058618 (= (++!14699 (_1!36821 (get!22886 lt!2436342)) (_2!36821 (get!22886 lt!2436342))) s!2326))))

(declare-fun b!6716185 () Bool)

(assert (=> b!6716185 (= e!4058615 (not (isDefined!13133 lt!2436342)))))

(declare-fun b!6716186 () Bool)

(assert (=> b!6716186 (= e!4058614 (matchR!8726 r!7292 (t!379605 s!2326)))))

(assert (= (and d!2110977 res!2748554) b!6716186))

(assert (= (and d!2110977 c!1245228) b!6716182))

(assert (= (and d!2110977 (not c!1245228)) b!6716183))

(assert (= (and b!6716183 c!1245229) b!6716180))

(assert (= (and b!6716183 (not c!1245229)) b!6716181))

(assert (= (and d!2110977 res!2748555) b!6716178))

(assert (= (and b!6716178 res!2748553) b!6716179))

(assert (= (and b!6716179 res!2748551) b!6716184))

(assert (= (and d!2110977 (not res!2748552)) b!6716185))

(declare-fun m!7479844 () Bool)

(assert (=> b!6716185 m!7479844))

(assert (=> b!6716181 m!7479246))

(declare-fun m!7479846 () Bool)

(assert (=> b!6716181 m!7479846))

(assert (=> b!6716181 m!7479846))

(declare-fun m!7479848 () Bool)

(assert (=> b!6716181 m!7479848))

(assert (=> b!6716181 m!7479246))

(declare-fun m!7479850 () Bool)

(assert (=> b!6716181 m!7479850))

(assert (=> b!6716181 m!7479846))

(declare-fun m!7479852 () Bool)

(assert (=> b!6716181 m!7479852))

(declare-fun m!7479854 () Bool)

(assert (=> b!6716184 m!7479854))

(declare-fun m!7479856 () Bool)

(assert (=> b!6716184 m!7479856))

(assert (=> b!6716178 m!7479854))

(declare-fun m!7479858 () Bool)

(assert (=> b!6716178 m!7479858))

(assert (=> b!6716179 m!7479854))

(declare-fun m!7479860 () Bool)

(assert (=> b!6716179 m!7479860))

(declare-fun m!7479862 () Bool)

(assert (=> b!6716186 m!7479862))

(assert (=> d!2110977 m!7479844))

(assert (=> d!2110977 m!7479246))

(declare-fun m!7479864 () Bool)

(assert (=> d!2110977 m!7479864))

(assert (=> d!2110977 m!7479232))

(assert (=> b!6715444 d!2110977))

(declare-fun d!2110979 () Bool)

(assert (=> d!2110979 (= (nullable!6530 r!7292) (nullableFct!2444 r!7292))))

(declare-fun bs!1787119 () Bool)

(assert (= bs!1787119 d!2110979))

(declare-fun m!7479866 () Bool)

(assert (=> bs!1787119 m!7479866))

(assert (=> b!6715393 d!2110979))

(declare-fun b!6716187 () Bool)

(declare-fun res!2748558 () Bool)

(declare-fun e!4058620 () Bool)

(assert (=> b!6716187 (=> res!2748558 e!4058620)))

(assert (=> b!6716187 (= res!2748558 (not ((_ is Concat!25388) lt!2436302)))))

(declare-fun e!4058624 () Bool)

(assert (=> b!6716187 (= e!4058624 e!4058620)))

(declare-fun bm!606158 () Bool)

(declare-fun call!606164 () Bool)

(declare-fun c!1245230 () Bool)

(assert (=> bm!606158 (= call!606164 (validRegex!8279 (ite c!1245230 (regTwo!33599 lt!2436302) (regTwo!33598 lt!2436302))))))

(declare-fun b!6716188 () Bool)

(declare-fun e!4058622 () Bool)

(declare-fun e!4058623 () Bool)

(assert (=> b!6716188 (= e!4058622 e!4058623)))

(declare-fun c!1245231 () Bool)

(assert (=> b!6716188 (= c!1245231 ((_ is Star!16543) lt!2436302))))

(declare-fun b!6716189 () Bool)

(declare-fun e!4058621 () Bool)

(assert (=> b!6716189 (= e!4058621 call!606164)))

(declare-fun b!6716190 () Bool)

(declare-fun res!2748560 () Bool)

(declare-fun e!4058625 () Bool)

(assert (=> b!6716190 (=> (not res!2748560) (not e!4058625))))

(declare-fun call!606163 () Bool)

(assert (=> b!6716190 (= res!2748560 call!606163)))

(assert (=> b!6716190 (= e!4058624 e!4058625)))

(declare-fun b!6716191 () Bool)

(assert (=> b!6716191 (= e!4058623 e!4058624)))

(assert (=> b!6716191 (= c!1245230 ((_ is Union!16543) lt!2436302))))

(declare-fun b!6716192 () Bool)

(declare-fun e!4058619 () Bool)

(assert (=> b!6716192 (= e!4058623 e!4058619)))

(declare-fun res!2748559 () Bool)

(assert (=> b!6716192 (= res!2748559 (not (nullable!6530 (reg!16872 lt!2436302))))))

(assert (=> b!6716192 (=> (not res!2748559) (not e!4058619))))

(declare-fun d!2110981 () Bool)

(declare-fun res!2748557 () Bool)

(assert (=> d!2110981 (=> res!2748557 e!4058622)))

(assert (=> d!2110981 (= res!2748557 ((_ is ElementMatch!16543) lt!2436302))))

(assert (=> d!2110981 (= (validRegex!8279 lt!2436302) e!4058622)))

(declare-fun b!6716193 () Bool)

(assert (=> b!6716193 (= e!4058625 call!606164)))

(declare-fun bm!606159 () Bool)

(declare-fun call!606165 () Bool)

(assert (=> bm!606159 (= call!606163 call!606165)))

(declare-fun b!6716194 () Bool)

(assert (=> b!6716194 (= e!4058619 call!606165)))

(declare-fun b!6716195 () Bool)

(assert (=> b!6716195 (= e!4058620 e!4058621)))

(declare-fun res!2748556 () Bool)

(assert (=> b!6716195 (=> (not res!2748556) (not e!4058621))))

(assert (=> b!6716195 (= res!2748556 call!606163)))

(declare-fun bm!606160 () Bool)

(assert (=> bm!606160 (= call!606165 (validRegex!8279 (ite c!1245231 (reg!16872 lt!2436302) (ite c!1245230 (regOne!33599 lt!2436302) (regOne!33598 lt!2436302)))))))

(assert (= (and d!2110981 (not res!2748557)) b!6716188))

(assert (= (and b!6716188 c!1245231) b!6716192))

(assert (= (and b!6716188 (not c!1245231)) b!6716191))

(assert (= (and b!6716192 res!2748559) b!6716194))

(assert (= (and b!6716191 c!1245230) b!6716190))

(assert (= (and b!6716191 (not c!1245230)) b!6716187))

(assert (= (and b!6716190 res!2748560) b!6716193))

(assert (= (and b!6716187 (not res!2748558)) b!6716195))

(assert (= (and b!6716195 res!2748556) b!6716189))

(assert (= (or b!6716193 b!6716189) bm!606158))

(assert (= (or b!6716190 b!6716195) bm!606159))

(assert (= (or b!6716194 bm!606159) bm!606160))

(declare-fun m!7479868 () Bool)

(assert (=> bm!606158 m!7479868))

(declare-fun m!7479870 () Bool)

(assert (=> b!6716192 m!7479870))

(declare-fun m!7479872 () Bool)

(assert (=> bm!606160 m!7479872))

(assert (=> d!2110703 d!2110981))

(declare-fun d!2110983 () Bool)

(declare-fun res!2748561 () Bool)

(declare-fun e!4058626 () Bool)

(assert (=> d!2110983 (=> res!2748561 e!4058626)))

(assert (=> d!2110983 (= res!2748561 ((_ is Nil!65805) (exprs!6427 (h!72254 zl!343))))))

(assert (=> d!2110983 (= (forall!15743 (exprs!6427 (h!72254 zl!343)) lambda!376609) e!4058626)))

(declare-fun b!6716196 () Bool)

(declare-fun e!4058627 () Bool)

(assert (=> b!6716196 (= e!4058626 e!4058627)))

(declare-fun res!2748562 () Bool)

(assert (=> b!6716196 (=> (not res!2748562) (not e!4058627))))

(assert (=> b!6716196 (= res!2748562 (dynLambda!26241 lambda!376609 (h!72253 (exprs!6427 (h!72254 zl!343)))))))

(declare-fun b!6716197 () Bool)

(assert (=> b!6716197 (= e!4058627 (forall!15743 (t!379606 (exprs!6427 (h!72254 zl!343))) lambda!376609))))

(assert (= (and d!2110983 (not res!2748561)) b!6716196))

(assert (= (and b!6716196 res!2748562) b!6716197))

(declare-fun b_lambda!252901 () Bool)

(assert (=> (not b_lambda!252901) (not b!6716196)))

(declare-fun m!7479874 () Bool)

(assert (=> b!6716196 m!7479874))

(declare-fun m!7479876 () Bool)

(assert (=> b!6716197 m!7479876))

(assert (=> d!2110703 d!2110983))

(declare-fun b!6716198 () Bool)

(declare-fun e!4058628 () Bool)

(assert (=> b!6716198 (= e!4058628 tp_is_empty!42339)))

(assert (=> b!6715535 (= tp!1840393 e!4058628)))

(declare-fun b!6716200 () Bool)

(declare-fun tp!1840557 () Bool)

(assert (=> b!6716200 (= e!4058628 tp!1840557)))

(declare-fun b!6716199 () Bool)

(declare-fun tp!1840558 () Bool)

(declare-fun tp!1840555 () Bool)

(assert (=> b!6716199 (= e!4058628 (and tp!1840558 tp!1840555))))

(declare-fun b!6716201 () Bool)

(declare-fun tp!1840556 () Bool)

(declare-fun tp!1840554 () Bool)

(assert (=> b!6716201 (= e!4058628 (and tp!1840556 tp!1840554))))

(assert (= (and b!6715535 ((_ is ElementMatch!16543) (regOne!33598 (reg!16872 r!7292)))) b!6716198))

(assert (= (and b!6715535 ((_ is Concat!25388) (regOne!33598 (reg!16872 r!7292)))) b!6716199))

(assert (= (and b!6715535 ((_ is Star!16543) (regOne!33598 (reg!16872 r!7292)))) b!6716200))

(assert (= (and b!6715535 ((_ is Union!16543) (regOne!33598 (reg!16872 r!7292)))) b!6716201))

(declare-fun b!6716202 () Bool)

(declare-fun e!4058629 () Bool)

(assert (=> b!6716202 (= e!4058629 tp_is_empty!42339)))

(assert (=> b!6715535 (= tp!1840390 e!4058629)))

(declare-fun b!6716204 () Bool)

(declare-fun tp!1840562 () Bool)

(assert (=> b!6716204 (= e!4058629 tp!1840562)))

(declare-fun b!6716203 () Bool)

(declare-fun tp!1840563 () Bool)

(declare-fun tp!1840560 () Bool)

(assert (=> b!6716203 (= e!4058629 (and tp!1840563 tp!1840560))))

(declare-fun b!6716205 () Bool)

(declare-fun tp!1840561 () Bool)

(declare-fun tp!1840559 () Bool)

(assert (=> b!6716205 (= e!4058629 (and tp!1840561 tp!1840559))))

(assert (= (and b!6715535 ((_ is ElementMatch!16543) (regTwo!33598 (reg!16872 r!7292)))) b!6716202))

(assert (= (and b!6715535 ((_ is Concat!25388) (regTwo!33598 (reg!16872 r!7292)))) b!6716203))

(assert (= (and b!6715535 ((_ is Star!16543) (regTwo!33598 (reg!16872 r!7292)))) b!6716204))

(assert (= (and b!6715535 ((_ is Union!16543) (regTwo!33598 (reg!16872 r!7292)))) b!6716205))

(declare-fun b!6716206 () Bool)

(declare-fun e!4058630 () Bool)

(assert (=> b!6716206 (= e!4058630 tp_is_empty!42339)))

(assert (=> b!6715536 (= tp!1840392 e!4058630)))

(declare-fun b!6716208 () Bool)

(declare-fun tp!1840567 () Bool)

(assert (=> b!6716208 (= e!4058630 tp!1840567)))

(declare-fun b!6716207 () Bool)

(declare-fun tp!1840568 () Bool)

(declare-fun tp!1840565 () Bool)

(assert (=> b!6716207 (= e!4058630 (and tp!1840568 tp!1840565))))

(declare-fun b!6716209 () Bool)

(declare-fun tp!1840566 () Bool)

(declare-fun tp!1840564 () Bool)

(assert (=> b!6716209 (= e!4058630 (and tp!1840566 tp!1840564))))

(assert (= (and b!6715536 ((_ is ElementMatch!16543) (reg!16872 (reg!16872 r!7292)))) b!6716206))

(assert (= (and b!6715536 ((_ is Concat!25388) (reg!16872 (reg!16872 r!7292)))) b!6716207))

(assert (= (and b!6715536 ((_ is Star!16543) (reg!16872 (reg!16872 r!7292)))) b!6716208))

(assert (= (and b!6715536 ((_ is Union!16543) (reg!16872 (reg!16872 r!7292)))) b!6716209))

(declare-fun b!6716210 () Bool)

(declare-fun e!4058631 () Bool)

(assert (=> b!6716210 (= e!4058631 tp_is_empty!42339)))

(assert (=> b!6715527 (= tp!1840383 e!4058631)))

(declare-fun b!6716212 () Bool)

(declare-fun tp!1840572 () Bool)

(assert (=> b!6716212 (= e!4058631 tp!1840572)))

(declare-fun b!6716211 () Bool)

(declare-fun tp!1840573 () Bool)

(declare-fun tp!1840570 () Bool)

(assert (=> b!6716211 (= e!4058631 (and tp!1840573 tp!1840570))))

(declare-fun b!6716213 () Bool)

(declare-fun tp!1840571 () Bool)

(declare-fun tp!1840569 () Bool)

(assert (=> b!6716213 (= e!4058631 (and tp!1840571 tp!1840569))))

(assert (= (and b!6715527 ((_ is ElementMatch!16543) (regOne!33598 (regOne!33598 r!7292)))) b!6716210))

(assert (= (and b!6715527 ((_ is Concat!25388) (regOne!33598 (regOne!33598 r!7292)))) b!6716211))

(assert (= (and b!6715527 ((_ is Star!16543) (regOne!33598 (regOne!33598 r!7292)))) b!6716212))

(assert (= (and b!6715527 ((_ is Union!16543) (regOne!33598 (regOne!33598 r!7292)))) b!6716213))

(declare-fun b!6716214 () Bool)

(declare-fun e!4058632 () Bool)

(assert (=> b!6716214 (= e!4058632 tp_is_empty!42339)))

(assert (=> b!6715527 (= tp!1840380 e!4058632)))

(declare-fun b!6716216 () Bool)

(declare-fun tp!1840577 () Bool)

(assert (=> b!6716216 (= e!4058632 tp!1840577)))

(declare-fun b!6716215 () Bool)

(declare-fun tp!1840578 () Bool)

(declare-fun tp!1840575 () Bool)

(assert (=> b!6716215 (= e!4058632 (and tp!1840578 tp!1840575))))

(declare-fun b!6716217 () Bool)

(declare-fun tp!1840576 () Bool)

(declare-fun tp!1840574 () Bool)

(assert (=> b!6716217 (= e!4058632 (and tp!1840576 tp!1840574))))

(assert (= (and b!6715527 ((_ is ElementMatch!16543) (regTwo!33598 (regOne!33598 r!7292)))) b!6716214))

(assert (= (and b!6715527 ((_ is Concat!25388) (regTwo!33598 (regOne!33598 r!7292)))) b!6716215))

(assert (= (and b!6715527 ((_ is Star!16543) (regTwo!33598 (regOne!33598 r!7292)))) b!6716216))

(assert (= (and b!6715527 ((_ is Union!16543) (regTwo!33598 (regOne!33598 r!7292)))) b!6716217))

(declare-fun b!6716218 () Bool)

(declare-fun e!4058633 () Bool)

(assert (=> b!6716218 (= e!4058633 tp_is_empty!42339)))

(assert (=> b!6715537 (= tp!1840391 e!4058633)))

(declare-fun b!6716220 () Bool)

(declare-fun tp!1840582 () Bool)

(assert (=> b!6716220 (= e!4058633 tp!1840582)))

(declare-fun b!6716219 () Bool)

(declare-fun tp!1840583 () Bool)

(declare-fun tp!1840580 () Bool)

(assert (=> b!6716219 (= e!4058633 (and tp!1840583 tp!1840580))))

(declare-fun b!6716221 () Bool)

(declare-fun tp!1840581 () Bool)

(declare-fun tp!1840579 () Bool)

(assert (=> b!6716221 (= e!4058633 (and tp!1840581 tp!1840579))))

(assert (= (and b!6715537 ((_ is ElementMatch!16543) (regOne!33599 (reg!16872 r!7292)))) b!6716218))

(assert (= (and b!6715537 ((_ is Concat!25388) (regOne!33599 (reg!16872 r!7292)))) b!6716219))

(assert (= (and b!6715537 ((_ is Star!16543) (regOne!33599 (reg!16872 r!7292)))) b!6716220))

(assert (= (and b!6715537 ((_ is Union!16543) (regOne!33599 (reg!16872 r!7292)))) b!6716221))

(declare-fun b!6716222 () Bool)

(declare-fun e!4058634 () Bool)

(assert (=> b!6716222 (= e!4058634 tp_is_empty!42339)))

(assert (=> b!6715537 (= tp!1840389 e!4058634)))

(declare-fun b!6716224 () Bool)

(declare-fun tp!1840587 () Bool)

(assert (=> b!6716224 (= e!4058634 tp!1840587)))

(declare-fun b!6716223 () Bool)

(declare-fun tp!1840588 () Bool)

(declare-fun tp!1840585 () Bool)

(assert (=> b!6716223 (= e!4058634 (and tp!1840588 tp!1840585))))

(declare-fun b!6716225 () Bool)

(declare-fun tp!1840586 () Bool)

(declare-fun tp!1840584 () Bool)

(assert (=> b!6716225 (= e!4058634 (and tp!1840586 tp!1840584))))

(assert (= (and b!6715537 ((_ is ElementMatch!16543) (regTwo!33599 (reg!16872 r!7292)))) b!6716222))

(assert (= (and b!6715537 ((_ is Concat!25388) (regTwo!33599 (reg!16872 r!7292)))) b!6716223))

(assert (= (and b!6715537 ((_ is Star!16543) (regTwo!33599 (reg!16872 r!7292)))) b!6716224))

(assert (= (and b!6715537 ((_ is Union!16543) (regTwo!33599 (reg!16872 r!7292)))) b!6716225))

(declare-fun b!6716226 () Bool)

(declare-fun e!4058635 () Bool)

(assert (=> b!6716226 (= e!4058635 tp_is_empty!42339)))

(assert (=> b!6715528 (= tp!1840382 e!4058635)))

(declare-fun b!6716228 () Bool)

(declare-fun tp!1840592 () Bool)

(assert (=> b!6716228 (= e!4058635 tp!1840592)))

(declare-fun b!6716227 () Bool)

(declare-fun tp!1840593 () Bool)

(declare-fun tp!1840590 () Bool)

(assert (=> b!6716227 (= e!4058635 (and tp!1840593 tp!1840590))))

(declare-fun b!6716229 () Bool)

(declare-fun tp!1840591 () Bool)

(declare-fun tp!1840589 () Bool)

(assert (=> b!6716229 (= e!4058635 (and tp!1840591 tp!1840589))))

(assert (= (and b!6715528 ((_ is ElementMatch!16543) (reg!16872 (regOne!33598 r!7292)))) b!6716226))

(assert (= (and b!6715528 ((_ is Concat!25388) (reg!16872 (regOne!33598 r!7292)))) b!6716227))

(assert (= (and b!6715528 ((_ is Star!16543) (reg!16872 (regOne!33598 r!7292)))) b!6716228))

(assert (= (and b!6715528 ((_ is Union!16543) (reg!16872 (regOne!33598 r!7292)))) b!6716229))

(declare-fun b!6716230 () Bool)

(declare-fun e!4058636 () Bool)

(assert (=> b!6716230 (= e!4058636 tp_is_empty!42339)))

(assert (=> b!6715513 (= tp!1840365 e!4058636)))

(declare-fun b!6716232 () Bool)

(declare-fun tp!1840597 () Bool)

(assert (=> b!6716232 (= e!4058636 tp!1840597)))

(declare-fun b!6716231 () Bool)

(declare-fun tp!1840598 () Bool)

(declare-fun tp!1840595 () Bool)

(assert (=> b!6716231 (= e!4058636 (and tp!1840598 tp!1840595))))

(declare-fun b!6716233 () Bool)

(declare-fun tp!1840596 () Bool)

(declare-fun tp!1840594 () Bool)

(assert (=> b!6716233 (= e!4058636 (and tp!1840596 tp!1840594))))

(assert (= (and b!6715513 ((_ is ElementMatch!16543) (regOne!33598 (regOne!33599 r!7292)))) b!6716230))

(assert (= (and b!6715513 ((_ is Concat!25388) (regOne!33598 (regOne!33599 r!7292)))) b!6716231))

(assert (= (and b!6715513 ((_ is Star!16543) (regOne!33598 (regOne!33599 r!7292)))) b!6716232))

(assert (= (and b!6715513 ((_ is Union!16543) (regOne!33598 (regOne!33599 r!7292)))) b!6716233))

(declare-fun b!6716234 () Bool)

(declare-fun e!4058637 () Bool)

(assert (=> b!6716234 (= e!4058637 tp_is_empty!42339)))

(assert (=> b!6715513 (= tp!1840362 e!4058637)))

(declare-fun b!6716236 () Bool)

(declare-fun tp!1840602 () Bool)

(assert (=> b!6716236 (= e!4058637 tp!1840602)))

(declare-fun b!6716235 () Bool)

(declare-fun tp!1840603 () Bool)

(declare-fun tp!1840600 () Bool)

(assert (=> b!6716235 (= e!4058637 (and tp!1840603 tp!1840600))))

(declare-fun b!6716237 () Bool)

(declare-fun tp!1840601 () Bool)

(declare-fun tp!1840599 () Bool)

(assert (=> b!6716237 (= e!4058637 (and tp!1840601 tp!1840599))))

(assert (= (and b!6715513 ((_ is ElementMatch!16543) (regTwo!33598 (regOne!33599 r!7292)))) b!6716234))

(assert (= (and b!6715513 ((_ is Concat!25388) (regTwo!33598 (regOne!33599 r!7292)))) b!6716235))

(assert (= (and b!6715513 ((_ is Star!16543) (regTwo!33598 (regOne!33599 r!7292)))) b!6716236))

(assert (= (and b!6715513 ((_ is Union!16543) (regTwo!33598 (regOne!33599 r!7292)))) b!6716237))

(declare-fun b!6716238 () Bool)

(declare-fun e!4058638 () Bool)

(assert (=> b!6716238 (= e!4058638 tp_is_empty!42339)))

(assert (=> b!6715529 (= tp!1840381 e!4058638)))

(declare-fun b!6716240 () Bool)

(declare-fun tp!1840607 () Bool)

(assert (=> b!6716240 (= e!4058638 tp!1840607)))

(declare-fun b!6716239 () Bool)

(declare-fun tp!1840608 () Bool)

(declare-fun tp!1840605 () Bool)

(assert (=> b!6716239 (= e!4058638 (and tp!1840608 tp!1840605))))

(declare-fun b!6716241 () Bool)

(declare-fun tp!1840606 () Bool)

(declare-fun tp!1840604 () Bool)

(assert (=> b!6716241 (= e!4058638 (and tp!1840606 tp!1840604))))

(assert (= (and b!6715529 ((_ is ElementMatch!16543) (regOne!33599 (regOne!33598 r!7292)))) b!6716238))

(assert (= (and b!6715529 ((_ is Concat!25388) (regOne!33599 (regOne!33598 r!7292)))) b!6716239))

(assert (= (and b!6715529 ((_ is Star!16543) (regOne!33599 (regOne!33598 r!7292)))) b!6716240))

(assert (= (and b!6715529 ((_ is Union!16543) (regOne!33599 (regOne!33598 r!7292)))) b!6716241))

(declare-fun b!6716242 () Bool)

(declare-fun e!4058639 () Bool)

(assert (=> b!6716242 (= e!4058639 tp_is_empty!42339)))

(assert (=> b!6715529 (= tp!1840379 e!4058639)))

(declare-fun b!6716244 () Bool)

(declare-fun tp!1840612 () Bool)

(assert (=> b!6716244 (= e!4058639 tp!1840612)))

(declare-fun b!6716243 () Bool)

(declare-fun tp!1840613 () Bool)

(declare-fun tp!1840610 () Bool)

(assert (=> b!6716243 (= e!4058639 (and tp!1840613 tp!1840610))))

(declare-fun b!6716245 () Bool)

(declare-fun tp!1840611 () Bool)

(declare-fun tp!1840609 () Bool)

(assert (=> b!6716245 (= e!4058639 (and tp!1840611 tp!1840609))))

(assert (= (and b!6715529 ((_ is ElementMatch!16543) (regTwo!33599 (regOne!33598 r!7292)))) b!6716242))

(assert (= (and b!6715529 ((_ is Concat!25388) (regTwo!33599 (regOne!33598 r!7292)))) b!6716243))

(assert (= (and b!6715529 ((_ is Star!16543) (regTwo!33599 (regOne!33598 r!7292)))) b!6716244))

(assert (= (and b!6715529 ((_ is Union!16543) (regTwo!33599 (regOne!33598 r!7292)))) b!6716245))

(declare-fun b!6716246 () Bool)

(declare-fun e!4058640 () Bool)

(assert (=> b!6716246 (= e!4058640 tp_is_empty!42339)))

(assert (=> b!6715514 (= tp!1840364 e!4058640)))

(declare-fun b!6716248 () Bool)

(declare-fun tp!1840617 () Bool)

(assert (=> b!6716248 (= e!4058640 tp!1840617)))

(declare-fun b!6716247 () Bool)

(declare-fun tp!1840618 () Bool)

(declare-fun tp!1840615 () Bool)

(assert (=> b!6716247 (= e!4058640 (and tp!1840618 tp!1840615))))

(declare-fun b!6716249 () Bool)

(declare-fun tp!1840616 () Bool)

(declare-fun tp!1840614 () Bool)

(assert (=> b!6716249 (= e!4058640 (and tp!1840616 tp!1840614))))

(assert (= (and b!6715514 ((_ is ElementMatch!16543) (reg!16872 (regOne!33599 r!7292)))) b!6716246))

(assert (= (and b!6715514 ((_ is Concat!25388) (reg!16872 (regOne!33599 r!7292)))) b!6716247))

(assert (= (and b!6715514 ((_ is Star!16543) (reg!16872 (regOne!33599 r!7292)))) b!6716248))

(assert (= (and b!6715514 ((_ is Union!16543) (reg!16872 (regOne!33599 r!7292)))) b!6716249))

(declare-fun b!6716250 () Bool)

(declare-fun e!4058641 () Bool)

(assert (=> b!6716250 (= e!4058641 tp_is_empty!42339)))

(assert (=> b!6715515 (= tp!1840363 e!4058641)))

(declare-fun b!6716252 () Bool)

(declare-fun tp!1840622 () Bool)

(assert (=> b!6716252 (= e!4058641 tp!1840622)))

(declare-fun b!6716251 () Bool)

(declare-fun tp!1840623 () Bool)

(declare-fun tp!1840620 () Bool)

(assert (=> b!6716251 (= e!4058641 (and tp!1840623 tp!1840620))))

(declare-fun b!6716253 () Bool)

(declare-fun tp!1840621 () Bool)

(declare-fun tp!1840619 () Bool)

(assert (=> b!6716253 (= e!4058641 (and tp!1840621 tp!1840619))))

(assert (= (and b!6715515 ((_ is ElementMatch!16543) (regOne!33599 (regOne!33599 r!7292)))) b!6716250))

(assert (= (and b!6715515 ((_ is Concat!25388) (regOne!33599 (regOne!33599 r!7292)))) b!6716251))

(assert (= (and b!6715515 ((_ is Star!16543) (regOne!33599 (regOne!33599 r!7292)))) b!6716252))

(assert (= (and b!6715515 ((_ is Union!16543) (regOne!33599 (regOne!33599 r!7292)))) b!6716253))

(declare-fun b!6716254 () Bool)

(declare-fun e!4058642 () Bool)

(assert (=> b!6716254 (= e!4058642 tp_is_empty!42339)))

(assert (=> b!6715515 (= tp!1840361 e!4058642)))

(declare-fun b!6716256 () Bool)

(declare-fun tp!1840627 () Bool)

(assert (=> b!6716256 (= e!4058642 tp!1840627)))

(declare-fun b!6716255 () Bool)

(declare-fun tp!1840628 () Bool)

(declare-fun tp!1840625 () Bool)

(assert (=> b!6716255 (= e!4058642 (and tp!1840628 tp!1840625))))

(declare-fun b!6716257 () Bool)

(declare-fun tp!1840626 () Bool)

(declare-fun tp!1840624 () Bool)

(assert (=> b!6716257 (= e!4058642 (and tp!1840626 tp!1840624))))

(assert (= (and b!6715515 ((_ is ElementMatch!16543) (regTwo!33599 (regOne!33599 r!7292)))) b!6716254))

(assert (= (and b!6715515 ((_ is Concat!25388) (regTwo!33599 (regOne!33599 r!7292)))) b!6716255))

(assert (= (and b!6715515 ((_ is Star!16543) (regTwo!33599 (regOne!33599 r!7292)))) b!6716256))

(assert (= (and b!6715515 ((_ is Union!16543) (regTwo!33599 (regOne!33599 r!7292)))) b!6716257))

(declare-fun condSetEmpty!45779 () Bool)

(assert (=> setNonEmpty!45777 (= condSetEmpty!45779 (= setRest!45777 ((as const (Array Context!11854 Bool)) false)))))

(declare-fun setRes!45779 () Bool)

(assert (=> setNonEmpty!45777 (= tp!1840375 setRes!45779)))

(declare-fun setIsEmpty!45779 () Bool)

(assert (=> setIsEmpty!45779 setRes!45779))

(declare-fun setNonEmpty!45779 () Bool)

(declare-fun e!4058643 () Bool)

(declare-fun tp!1840629 () Bool)

(declare-fun setElem!45779 () Context!11854)

(assert (=> setNonEmpty!45779 (= setRes!45779 (and tp!1840629 (inv!84604 setElem!45779) e!4058643))))

(declare-fun setRest!45779 () (InoxSet Context!11854))

(assert (=> setNonEmpty!45779 (= setRest!45777 ((_ map or) (store ((as const (Array Context!11854 Bool)) false) setElem!45779 true) setRest!45779))))

(declare-fun b!6716258 () Bool)

(declare-fun tp!1840630 () Bool)

(assert (=> b!6716258 (= e!4058643 tp!1840630)))

(assert (= (and setNonEmpty!45777 condSetEmpty!45779) setIsEmpty!45779))

(assert (= (and setNonEmpty!45777 (not condSetEmpty!45779)) setNonEmpty!45779))

(assert (= setNonEmpty!45779 b!6716258))

(declare-fun m!7479878 () Bool)

(assert (=> setNonEmpty!45779 m!7479878))

(declare-fun b!6716259 () Bool)

(declare-fun e!4058644 () Bool)

(declare-fun tp!1840631 () Bool)

(declare-fun tp!1840632 () Bool)

(assert (=> b!6716259 (= e!4058644 (and tp!1840631 tp!1840632))))

(assert (=> b!6715524 (= tp!1840376 e!4058644)))

(assert (= (and b!6715524 ((_ is Cons!65805) (exprs!6427 setElem!45777))) b!6716259))

(declare-fun b!6716260 () Bool)

(declare-fun e!4058645 () Bool)

(declare-fun tp!1840633 () Bool)

(assert (=> b!6716260 (= e!4058645 (and tp_is_empty!42339 tp!1840633))))

(assert (=> b!6715501 (= tp!1840350 e!4058645)))

(assert (= (and b!6715501 ((_ is Cons!65804) (t!379605 (t!379605 s!2326)))) b!6716260))

(declare-fun b!6716261 () Bool)

(declare-fun e!4058646 () Bool)

(assert (=> b!6716261 (= e!4058646 tp_is_empty!42339)))

(assert (=> b!6715531 (= tp!1840388 e!4058646)))

(declare-fun b!6716263 () Bool)

(declare-fun tp!1840637 () Bool)

(assert (=> b!6716263 (= e!4058646 tp!1840637)))

(declare-fun b!6716262 () Bool)

(declare-fun tp!1840638 () Bool)

(declare-fun tp!1840635 () Bool)

(assert (=> b!6716262 (= e!4058646 (and tp!1840638 tp!1840635))))

(declare-fun b!6716264 () Bool)

(declare-fun tp!1840636 () Bool)

(declare-fun tp!1840634 () Bool)

(assert (=> b!6716264 (= e!4058646 (and tp!1840636 tp!1840634))))

(assert (= (and b!6715531 ((_ is ElementMatch!16543) (regOne!33598 (regTwo!33598 r!7292)))) b!6716261))

(assert (= (and b!6715531 ((_ is Concat!25388) (regOne!33598 (regTwo!33598 r!7292)))) b!6716262))

(assert (= (and b!6715531 ((_ is Star!16543) (regOne!33598 (regTwo!33598 r!7292)))) b!6716263))

(assert (= (and b!6715531 ((_ is Union!16543) (regOne!33598 (regTwo!33598 r!7292)))) b!6716264))

(declare-fun b!6716265 () Bool)

(declare-fun e!4058647 () Bool)

(assert (=> b!6716265 (= e!4058647 tp_is_empty!42339)))

(assert (=> b!6715531 (= tp!1840385 e!4058647)))

(declare-fun b!6716267 () Bool)

(declare-fun tp!1840642 () Bool)

(assert (=> b!6716267 (= e!4058647 tp!1840642)))

(declare-fun b!6716266 () Bool)

(declare-fun tp!1840643 () Bool)

(declare-fun tp!1840640 () Bool)

(assert (=> b!6716266 (= e!4058647 (and tp!1840643 tp!1840640))))

(declare-fun b!6716268 () Bool)

(declare-fun tp!1840641 () Bool)

(declare-fun tp!1840639 () Bool)

(assert (=> b!6716268 (= e!4058647 (and tp!1840641 tp!1840639))))

(assert (= (and b!6715531 ((_ is ElementMatch!16543) (regTwo!33598 (regTwo!33598 r!7292)))) b!6716265))

(assert (= (and b!6715531 ((_ is Concat!25388) (regTwo!33598 (regTwo!33598 r!7292)))) b!6716266))

(assert (= (and b!6715531 ((_ is Star!16543) (regTwo!33598 (regTwo!33598 r!7292)))) b!6716267))

(assert (= (and b!6715531 ((_ is Union!16543) (regTwo!33598 (regTwo!33598 r!7292)))) b!6716268))

(declare-fun b!6716269 () Bool)

(declare-fun e!4058648 () Bool)

(assert (=> b!6716269 (= e!4058648 tp_is_empty!42339)))

(assert (=> b!6715532 (= tp!1840387 e!4058648)))

(declare-fun b!6716271 () Bool)

(declare-fun tp!1840647 () Bool)

(assert (=> b!6716271 (= e!4058648 tp!1840647)))

(declare-fun b!6716270 () Bool)

(declare-fun tp!1840648 () Bool)

(declare-fun tp!1840645 () Bool)

(assert (=> b!6716270 (= e!4058648 (and tp!1840648 tp!1840645))))

(declare-fun b!6716272 () Bool)

(declare-fun tp!1840646 () Bool)

(declare-fun tp!1840644 () Bool)

(assert (=> b!6716272 (= e!4058648 (and tp!1840646 tp!1840644))))

(assert (= (and b!6715532 ((_ is ElementMatch!16543) (reg!16872 (regTwo!33598 r!7292)))) b!6716269))

(assert (= (and b!6715532 ((_ is Concat!25388) (reg!16872 (regTwo!33598 r!7292)))) b!6716270))

(assert (= (and b!6715532 ((_ is Star!16543) (reg!16872 (regTwo!33598 r!7292)))) b!6716271))

(assert (= (and b!6715532 ((_ is Union!16543) (reg!16872 (regTwo!33598 r!7292)))) b!6716272))

(declare-fun b!6716273 () Bool)

(declare-fun e!4058649 () Bool)

(assert (=> b!6716273 (= e!4058649 tp_is_empty!42339)))

(assert (=> b!6715533 (= tp!1840386 e!4058649)))

(declare-fun b!6716275 () Bool)

(declare-fun tp!1840652 () Bool)

(assert (=> b!6716275 (= e!4058649 tp!1840652)))

(declare-fun b!6716274 () Bool)

(declare-fun tp!1840653 () Bool)

(declare-fun tp!1840650 () Bool)

(assert (=> b!6716274 (= e!4058649 (and tp!1840653 tp!1840650))))

(declare-fun b!6716276 () Bool)

(declare-fun tp!1840651 () Bool)

(declare-fun tp!1840649 () Bool)

(assert (=> b!6716276 (= e!4058649 (and tp!1840651 tp!1840649))))

(assert (= (and b!6715533 ((_ is ElementMatch!16543) (regOne!33599 (regTwo!33598 r!7292)))) b!6716273))

(assert (= (and b!6715533 ((_ is Concat!25388) (regOne!33599 (regTwo!33598 r!7292)))) b!6716274))

(assert (= (and b!6715533 ((_ is Star!16543) (regOne!33599 (regTwo!33598 r!7292)))) b!6716275))

(assert (= (and b!6715533 ((_ is Union!16543) (regOne!33599 (regTwo!33598 r!7292)))) b!6716276))

(declare-fun b!6716277 () Bool)

(declare-fun e!4058650 () Bool)

(assert (=> b!6716277 (= e!4058650 tp_is_empty!42339)))

(assert (=> b!6715533 (= tp!1840384 e!4058650)))

(declare-fun b!6716279 () Bool)

(declare-fun tp!1840657 () Bool)

(assert (=> b!6716279 (= e!4058650 tp!1840657)))

(declare-fun b!6716278 () Bool)

(declare-fun tp!1840658 () Bool)

(declare-fun tp!1840655 () Bool)

(assert (=> b!6716278 (= e!4058650 (and tp!1840658 tp!1840655))))

(declare-fun b!6716280 () Bool)

(declare-fun tp!1840656 () Bool)

(declare-fun tp!1840654 () Bool)

(assert (=> b!6716280 (= e!4058650 (and tp!1840656 tp!1840654))))

(assert (= (and b!6715533 ((_ is ElementMatch!16543) (regTwo!33599 (regTwo!33598 r!7292)))) b!6716277))

(assert (= (and b!6715533 ((_ is Concat!25388) (regTwo!33599 (regTwo!33598 r!7292)))) b!6716278))

(assert (= (and b!6715533 ((_ is Star!16543) (regTwo!33599 (regTwo!33598 r!7292)))) b!6716279))

(assert (= (and b!6715533 ((_ is Union!16543) (regTwo!33599 (regTwo!33598 r!7292)))) b!6716280))

(declare-fun b!6716281 () Bool)

(declare-fun e!4058651 () Bool)

(assert (=> b!6716281 (= e!4058651 tp_is_empty!42339)))

(assert (=> b!6715517 (= tp!1840370 e!4058651)))

(declare-fun b!6716283 () Bool)

(declare-fun tp!1840662 () Bool)

(assert (=> b!6716283 (= e!4058651 tp!1840662)))

(declare-fun b!6716282 () Bool)

(declare-fun tp!1840663 () Bool)

(declare-fun tp!1840660 () Bool)

(assert (=> b!6716282 (= e!4058651 (and tp!1840663 tp!1840660))))

(declare-fun b!6716284 () Bool)

(declare-fun tp!1840661 () Bool)

(declare-fun tp!1840659 () Bool)

(assert (=> b!6716284 (= e!4058651 (and tp!1840661 tp!1840659))))

(assert (= (and b!6715517 ((_ is ElementMatch!16543) (regOne!33598 (regTwo!33599 r!7292)))) b!6716281))

(assert (= (and b!6715517 ((_ is Concat!25388) (regOne!33598 (regTwo!33599 r!7292)))) b!6716282))

(assert (= (and b!6715517 ((_ is Star!16543) (regOne!33598 (regTwo!33599 r!7292)))) b!6716283))

(assert (= (and b!6715517 ((_ is Union!16543) (regOne!33598 (regTwo!33599 r!7292)))) b!6716284))

(declare-fun b!6716285 () Bool)

(declare-fun e!4058652 () Bool)

(assert (=> b!6716285 (= e!4058652 tp_is_empty!42339)))

(assert (=> b!6715517 (= tp!1840367 e!4058652)))

(declare-fun b!6716287 () Bool)

(declare-fun tp!1840667 () Bool)

(assert (=> b!6716287 (= e!4058652 tp!1840667)))

(declare-fun b!6716286 () Bool)

(declare-fun tp!1840668 () Bool)

(declare-fun tp!1840665 () Bool)

(assert (=> b!6716286 (= e!4058652 (and tp!1840668 tp!1840665))))

(declare-fun b!6716288 () Bool)

(declare-fun tp!1840666 () Bool)

(declare-fun tp!1840664 () Bool)

(assert (=> b!6716288 (= e!4058652 (and tp!1840666 tp!1840664))))

(assert (= (and b!6715517 ((_ is ElementMatch!16543) (regTwo!33598 (regTwo!33599 r!7292)))) b!6716285))

(assert (= (and b!6715517 ((_ is Concat!25388) (regTwo!33598 (regTwo!33599 r!7292)))) b!6716286))

(assert (= (and b!6715517 ((_ is Star!16543) (regTwo!33598 (regTwo!33599 r!7292)))) b!6716287))

(assert (= (and b!6715517 ((_ is Union!16543) (regTwo!33598 (regTwo!33599 r!7292)))) b!6716288))

(declare-fun b!6716289 () Bool)

(declare-fun e!4058653 () Bool)

(assert (=> b!6716289 (= e!4058653 tp_is_empty!42339)))

(assert (=> b!6715518 (= tp!1840369 e!4058653)))

(declare-fun b!6716291 () Bool)

(declare-fun tp!1840672 () Bool)

(assert (=> b!6716291 (= e!4058653 tp!1840672)))

(declare-fun b!6716290 () Bool)

(declare-fun tp!1840673 () Bool)

(declare-fun tp!1840670 () Bool)

(assert (=> b!6716290 (= e!4058653 (and tp!1840673 tp!1840670))))

(declare-fun b!6716292 () Bool)

(declare-fun tp!1840671 () Bool)

(declare-fun tp!1840669 () Bool)

(assert (=> b!6716292 (= e!4058653 (and tp!1840671 tp!1840669))))

(assert (= (and b!6715518 ((_ is ElementMatch!16543) (reg!16872 (regTwo!33599 r!7292)))) b!6716289))

(assert (= (and b!6715518 ((_ is Concat!25388) (reg!16872 (regTwo!33599 r!7292)))) b!6716290))

(assert (= (and b!6715518 ((_ is Star!16543) (reg!16872 (regTwo!33599 r!7292)))) b!6716291))

(assert (= (and b!6715518 ((_ is Union!16543) (reg!16872 (regTwo!33599 r!7292)))) b!6716292))

(declare-fun b!6716293 () Bool)

(declare-fun e!4058654 () Bool)

(assert (=> b!6716293 (= e!4058654 tp_is_empty!42339)))

(assert (=> b!6715525 (= tp!1840377 e!4058654)))

(declare-fun b!6716295 () Bool)

(declare-fun tp!1840677 () Bool)

(assert (=> b!6716295 (= e!4058654 tp!1840677)))

(declare-fun b!6716294 () Bool)

(declare-fun tp!1840678 () Bool)

(declare-fun tp!1840675 () Bool)

(assert (=> b!6716294 (= e!4058654 (and tp!1840678 tp!1840675))))

(declare-fun b!6716296 () Bool)

(declare-fun tp!1840676 () Bool)

(declare-fun tp!1840674 () Bool)

(assert (=> b!6716296 (= e!4058654 (and tp!1840676 tp!1840674))))

(assert (= (and b!6715525 ((_ is ElementMatch!16543) (h!72253 (exprs!6427 (h!72254 zl!343))))) b!6716293))

(assert (= (and b!6715525 ((_ is Concat!25388) (h!72253 (exprs!6427 (h!72254 zl!343))))) b!6716294))

(assert (= (and b!6715525 ((_ is Star!16543) (h!72253 (exprs!6427 (h!72254 zl!343))))) b!6716295))

(assert (= (and b!6715525 ((_ is Union!16543) (h!72253 (exprs!6427 (h!72254 zl!343))))) b!6716296))

(declare-fun b!6716297 () Bool)

(declare-fun e!4058655 () Bool)

(declare-fun tp!1840679 () Bool)

(declare-fun tp!1840680 () Bool)

(assert (=> b!6716297 (= e!4058655 (and tp!1840679 tp!1840680))))

(assert (=> b!6715525 (= tp!1840378 e!4058655)))

(assert (= (and b!6715525 ((_ is Cons!65805) (t!379606 (exprs!6427 (h!72254 zl!343))))) b!6716297))

(declare-fun b!6716298 () Bool)

(declare-fun e!4058656 () Bool)

(assert (=> b!6716298 (= e!4058656 tp_is_empty!42339)))

(assert (=> b!6715519 (= tp!1840368 e!4058656)))

(declare-fun b!6716300 () Bool)

(declare-fun tp!1840684 () Bool)

(assert (=> b!6716300 (= e!4058656 tp!1840684)))

(declare-fun b!6716299 () Bool)

(declare-fun tp!1840685 () Bool)

(declare-fun tp!1840682 () Bool)

(assert (=> b!6716299 (= e!4058656 (and tp!1840685 tp!1840682))))

(declare-fun b!6716301 () Bool)

(declare-fun tp!1840683 () Bool)

(declare-fun tp!1840681 () Bool)

(assert (=> b!6716301 (= e!4058656 (and tp!1840683 tp!1840681))))

(assert (= (and b!6715519 ((_ is ElementMatch!16543) (regOne!33599 (regTwo!33599 r!7292)))) b!6716298))

(assert (= (and b!6715519 ((_ is Concat!25388) (regOne!33599 (regTwo!33599 r!7292)))) b!6716299))

(assert (= (and b!6715519 ((_ is Star!16543) (regOne!33599 (regTwo!33599 r!7292)))) b!6716300))

(assert (= (and b!6715519 ((_ is Union!16543) (regOne!33599 (regTwo!33599 r!7292)))) b!6716301))

(declare-fun b!6716302 () Bool)

(declare-fun e!4058657 () Bool)

(assert (=> b!6716302 (= e!4058657 tp_is_empty!42339)))

(assert (=> b!6715519 (= tp!1840366 e!4058657)))

(declare-fun b!6716304 () Bool)

(declare-fun tp!1840689 () Bool)

(assert (=> b!6716304 (= e!4058657 tp!1840689)))

(declare-fun b!6716303 () Bool)

(declare-fun tp!1840690 () Bool)

(declare-fun tp!1840687 () Bool)

(assert (=> b!6716303 (= e!4058657 (and tp!1840690 tp!1840687))))

(declare-fun b!6716305 () Bool)

(declare-fun tp!1840688 () Bool)

(declare-fun tp!1840686 () Bool)

(assert (=> b!6716305 (= e!4058657 (and tp!1840688 tp!1840686))))

(assert (= (and b!6715519 ((_ is ElementMatch!16543) (regTwo!33599 (regTwo!33599 r!7292)))) b!6716302))

(assert (= (and b!6715519 ((_ is Concat!25388) (regTwo!33599 (regTwo!33599 r!7292)))) b!6716303))

(assert (= (and b!6715519 ((_ is Star!16543) (regTwo!33599 (regTwo!33599 r!7292)))) b!6716304))

(assert (= (and b!6715519 ((_ is Union!16543) (regTwo!33599 (regTwo!33599 r!7292)))) b!6716305))

(declare-fun b!6716306 () Bool)

(declare-fun e!4058658 () Bool)

(assert (=> b!6716306 (= e!4058658 tp_is_empty!42339)))

(assert (=> b!6715496 (= tp!1840346 e!4058658)))

(declare-fun b!6716308 () Bool)

(declare-fun tp!1840694 () Bool)

(assert (=> b!6716308 (= e!4058658 tp!1840694)))

(declare-fun b!6716307 () Bool)

(declare-fun tp!1840695 () Bool)

(declare-fun tp!1840692 () Bool)

(assert (=> b!6716307 (= e!4058658 (and tp!1840695 tp!1840692))))

(declare-fun b!6716309 () Bool)

(declare-fun tp!1840693 () Bool)

(declare-fun tp!1840691 () Bool)

(assert (=> b!6716309 (= e!4058658 (and tp!1840693 tp!1840691))))

(assert (= (and b!6715496 ((_ is ElementMatch!16543) (h!72253 (exprs!6427 setElem!45771)))) b!6716306))

(assert (= (and b!6715496 ((_ is Concat!25388) (h!72253 (exprs!6427 setElem!45771)))) b!6716307))

(assert (= (and b!6715496 ((_ is Star!16543) (h!72253 (exprs!6427 setElem!45771)))) b!6716308))

(assert (= (and b!6715496 ((_ is Union!16543) (h!72253 (exprs!6427 setElem!45771)))) b!6716309))

(declare-fun b!6716310 () Bool)

(declare-fun e!4058659 () Bool)

(declare-fun tp!1840696 () Bool)

(declare-fun tp!1840697 () Bool)

(assert (=> b!6716310 (= e!4058659 (and tp!1840696 tp!1840697))))

(assert (=> b!6715496 (= tp!1840347 e!4058659)))

(assert (= (and b!6715496 ((_ is Cons!65805) (t!379606 (exprs!6427 setElem!45771)))) b!6716310))

(declare-fun b!6716312 () Bool)

(declare-fun e!4058661 () Bool)

(declare-fun tp!1840698 () Bool)

(assert (=> b!6716312 (= e!4058661 tp!1840698)))

(declare-fun b!6716311 () Bool)

(declare-fun e!4058660 () Bool)

(declare-fun tp!1840699 () Bool)

(assert (=> b!6716311 (= e!4058660 (and (inv!84604 (h!72254 (t!379607 (t!379607 zl!343)))) e!4058661 tp!1840699))))

(assert (=> b!6715490 (= tp!1840341 e!4058660)))

(assert (= b!6716311 b!6716312))

(assert (= (and b!6715490 ((_ is Cons!65806) (t!379607 (t!379607 zl!343)))) b!6716311))

(declare-fun m!7479880 () Bool)

(assert (=> b!6716311 m!7479880))

(declare-fun b!6716313 () Bool)

(declare-fun e!4058662 () Bool)

(declare-fun tp!1840700 () Bool)

(declare-fun tp!1840701 () Bool)

(assert (=> b!6716313 (= e!4058662 (and tp!1840700 tp!1840701))))

(assert (=> b!6715491 (= tp!1840340 e!4058662)))

(assert (= (and b!6715491 ((_ is Cons!65805) (exprs!6427 (h!72254 (t!379607 zl!343))))) b!6716313))

(declare-fun b_lambda!252903 () Bool)

(assert (= b_lambda!252879 (or d!2110629 b_lambda!252903)))

(declare-fun bs!1787120 () Bool)

(declare-fun d!2110985 () Bool)

(assert (= bs!1787120 (and d!2110985 d!2110629)))

(assert (=> bs!1787120 (= (dynLambda!26241 lambda!376549 (h!72253 (exprs!6427 (Context!11855 (Cons!65805 r!7292 Nil!65805))))) (validRegex!8279 (h!72253 (exprs!6427 (Context!11855 (Cons!65805 r!7292 Nil!65805))))))))

(declare-fun m!7479882 () Bool)

(assert (=> bs!1787120 m!7479882))

(assert (=> b!6715794 d!2110985))

(declare-fun b_lambda!252905 () Bool)

(assert (= b_lambda!252899 (or d!2110655 b_lambda!252905)))

(declare-fun bs!1787121 () Bool)

(declare-fun d!2110987 () Bool)

(assert (= bs!1787121 (and d!2110987 d!2110655)))

(assert (=> bs!1787121 (= (dynLambda!26241 lambda!376571 (h!72253 lt!2436262)) (validRegex!8279 (h!72253 lt!2436262)))))

(declare-fun m!7479884 () Bool)

(assert (=> bs!1787121 m!7479884))

(assert (=> b!6716145 d!2110987))

(declare-fun b_lambda!252907 () Bool)

(assert (= b_lambda!252871 (or d!2110621 b_lambda!252907)))

(declare-fun bs!1787122 () Bool)

(declare-fun d!2110989 () Bool)

(assert (= bs!1787122 (and d!2110989 d!2110621)))

(assert (=> bs!1787122 (= (dynLambda!26241 lambda!376546 (h!72253 (exprs!6427 (h!72254 zl!343)))) (validRegex!8279 (h!72253 (exprs!6427 (h!72254 zl!343)))))))

(declare-fun m!7479886 () Bool)

(assert (=> bs!1787122 m!7479886))

(assert (=> b!6715627 d!2110989))

(declare-fun b_lambda!252909 () Bool)

(assert (= b_lambda!252877 (or d!2110643 b_lambda!252909)))

(declare-fun bs!1787123 () Bool)

(declare-fun d!2110991 () Bool)

(assert (= bs!1787123 (and d!2110991 d!2110643)))

(assert (=> bs!1787123 (= (dynLambda!26241 lambda!376556 (h!72253 (exprs!6427 setElem!45771))) (validRegex!8279 (h!72253 (exprs!6427 setElem!45771))))))

(declare-fun m!7479888 () Bool)

(assert (=> bs!1787123 m!7479888))

(assert (=> b!6715783 d!2110991))

(declare-fun b_lambda!252911 () Bool)

(assert (= b_lambda!252885 (or d!2110647 b_lambda!252911)))

(declare-fun bs!1787124 () Bool)

(declare-fun d!2110993 () Bool)

(assert (= bs!1787124 (and d!2110993 d!2110647)))

(assert (=> bs!1787124 (= (dynLambda!26241 lambda!376564 (h!72253 (unfocusZipperList!1964 zl!343))) (validRegex!8279 (h!72253 (unfocusZipperList!1964 zl!343))))))

(declare-fun m!7479890 () Bool)

(assert (=> bs!1787124 m!7479890))

(assert (=> b!6715904 d!2110993))

(declare-fun b_lambda!252913 () Bool)

(assert (= b_lambda!252901 (or d!2110703 b_lambda!252913)))

(declare-fun bs!1787125 () Bool)

(declare-fun d!2110995 () Bool)

(assert (= bs!1787125 (and d!2110995 d!2110703)))

(assert (=> bs!1787125 (= (dynLambda!26241 lambda!376609 (h!72253 (exprs!6427 (h!72254 zl!343)))) (validRegex!8279 (h!72253 (exprs!6427 (h!72254 zl!343)))))))

(assert (=> bs!1787125 m!7479886))

(assert (=> b!6716196 d!2110995))

(check-sat (not b!6716266) (not b!6715642) (not b!6715628) (not b!6715813) (not d!2110973) (not d!2110867) (not bs!1787121) (not b!6716008) (not d!2110967) (not b!6716221) (not b!6715784) (not b!6716241) (not bm!606095) (not bm!606154) (not b!6716197) (not d!2110913) (not b!6716290) (not b!6716007) (not b!6716200) (not b!6716245) (not d!2110915) (not b!6716213) (not d!2110895) (not bm!606097) (not b!6716207) (not b!6716282) (not b!6716133) (not b!6716279) (not b!6716303) (not b!6715900) (not b!6716179) (not b!6716220) (not b!6715769) (not b!6716219) (not d!2110859) (not b!6716292) (not bs!1787122) (not b!6716155) (not b!6716260) (not b!6715809) (not b_lambda!252913) (not b!6716117) (not bm!606152) (not b!6716257) (not b!6716147) (not b!6716113) (not b!6716272) (not b!6716204) (not b!6716199) (not bm!606110) (not b!6716258) (not b!6716141) (not b!6715743) (not b!6716233) (not b!6715777) (not d!2110799) (not b!6715905) (not b!6716215) (not b!6716244) (not b!6716262) (not b!6716274) (not b!6716243) (not b!6715747) (not b!6716123) (not b!6716203) (not b!6716176) (not b!6715814) (not b!6716305) (not bm!606133) (not bm!606158) (not b!6716205) (not b!6716178) (not b!6716175) (not bm!606102) (not b!6715914) (not b!6716208) (not b!6716224) (not b!6716271) (not b!6716267) (not b!6716276) (not d!2110963) (not d!2110911) (not b!6716107) (not b!6716309) (not b!6716228) (not b!6716172) tp_is_empty!42339 (not b!6716299) (not b!6715754) (not b!6716157) (not b!6716263) (not b!6716212) (not d!2110957) (not bs!1787125) (not bs!1787124) (not b!6715643) (not b!6716268) (not b!6716294) (not b!6716216) (not b!6716110) (not b!6716255) (not b!6716151) (not b!6716012) (not b!6716312) (not b!6716237) (not b!6716252) (not d!2110931) (not b!6716256) (not b!6716134) (not b!6716231) (not b!6716270) (not b!6715663) (not bm!606105) (not b!6716249) (not b!6716184) (not b!6716211) (not b!6716295) (not b!6716236) (not b!6716286) (not b!6716240) (not b!6716223) (not d!2110843) (not b!6716201) (not bm!606151) (not b!6715916) (not bm!606155) (not d!2110945) (not b!6716004) (not bm!606124) (not b!6715654) (not b!6716284) (not bm!606106) (not bm!606160) (not d!2110795) (not b!6716108) (not bs!1787123) (not b!6716253) (not b!6716132) (not b!6716171) (not b!6716307) (not d!2110841) (not b!6715795) (not b!6716111) (not b!6716287) (not b!6716313) (not d!2110953) (not b!6716209) (not b!6715773) (not b!6716239) (not d!2110869) (not b!6716248) (not b!6715779) (not b!6716235) (not bm!606109) (not b!6716296) (not b!6716124) (not b!6715906) (not b!6715815) (not d!2110971) (not bm!606153) (not d!2110969) (not b!6716297) (not b!6716304) (not setNonEmpty!45779) (not b!6716146) (not b_lambda!252911) (not b!6716112) (not b!6716229) (not b!6716259) (not b_lambda!252907) (not b!6715805) (not d!2110797) (not b!6716009) (not b_lambda!252903) (not bm!606148) (not bs!1787120) (not bm!606112) (not b_lambda!252905) (not b!6716225) (not b!6715915) (not d!2110871) (not b!6716003) (not b!6716006) (not b!6715910) (not b!6715908) (not b!6716149) (not d!2110975) (not b!6716131) (not b!6715807) (not b!6716185) (not b!6716280) (not b!6716300) (not b!6716264) (not b!6716291) (not b!6715975) (not b!6716186) (not b!6715778) (not b_lambda!252909) (not b!6716217) (not b!6716247) (not bm!606116) (not b!6716311) (not b!6716278) (not bm!606157) (not d!2110777) (not b!6716156) (not b!6716283) (not d!2110917) (not b!6715771) (not b!6715790) (not b!6716227) (not b!6716166) (not d!2110977) (not bm!606104) (not b!6716275) (not b!6716308) (not d!2110941) (not b!6716192) (not b!6716181) (not b!6716301) (not b!6716251) (not b!6716232) (not b!6716310) (not bm!606126) (not d!2110893) (not b!6716288) (not b!6716115) (not d!2110979))
(check-sat)
