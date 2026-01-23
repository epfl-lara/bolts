; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!651054 () Bool)

(assert start!651054)

(declare-fun b!6712895 () Bool)

(assert (=> b!6712895 true))

(assert (=> b!6712895 true))

(declare-fun lambda!376281 () Int)

(declare-fun lambda!376280 () Int)

(assert (=> b!6712895 (not (= lambda!376281 lambda!376280))))

(assert (=> b!6712895 true))

(assert (=> b!6712895 true))

(declare-fun b!6712886 () Bool)

(declare-fun res!2747018 () Bool)

(declare-fun e!4056895 () Bool)

(assert (=> b!6712886 (=> res!2747018 e!4056895)))

(declare-datatypes ((C!33334 0))(
  ( (C!33335 (val!26369 Int)) )
))
(declare-datatypes ((Regex!16532 0))(
  ( (ElementMatch!16532 (c!1244714 C!33334)) (Concat!25377 (regOne!33576 Regex!16532) (regTwo!33576 Regex!16532)) (EmptyExpr!16532) (Star!16532 (reg!16861 Regex!16532)) (EmptyLang!16532) (Union!16532 (regOne!33577 Regex!16532) (regTwo!33577 Regex!16532)) )
))
(declare-fun r!7292 () Regex!16532)

(assert (=> b!6712886 (= res!2747018 (or (is-EmptyExpr!16532 r!7292) (is-EmptyLang!16532 r!7292) (is-ElementMatch!16532 r!7292) (is-Union!16532 r!7292) (is-Concat!25377 r!7292)))))

(declare-fun b!6712887 () Bool)

(declare-fun e!4056889 () Bool)

(declare-fun tp_is_empty!42317 () Bool)

(assert (=> b!6712887 (= e!4056889 tp_is_empty!42317)))

(declare-fun b!6712888 () Bool)

(declare-fun e!4056890 () Bool)

(declare-fun tp!1839714 () Bool)

(assert (=> b!6712888 (= e!4056890 tp!1839714)))

(declare-fun b!6712889 () Bool)

(declare-fun res!2747013 () Bool)

(assert (=> b!6712889 (=> res!2747013 e!4056895)))

(declare-datatypes ((List!65895 0))(
  ( (Nil!65771) (Cons!65771 (h!72219 Regex!16532) (t!379572 List!65895)) )
))
(declare-datatypes ((Context!11832 0))(
  ( (Context!11833 (exprs!6416 List!65895)) )
))
(declare-datatypes ((List!65896 0))(
  ( (Nil!65772) (Cons!65772 (h!72220 Context!11832) (t!379573 List!65896)) )
))
(declare-fun zl!343 () List!65896)

(declare-fun generalisedUnion!2376 (List!65895) Regex!16532)

(declare-fun unfocusZipperList!1953 (List!65896) List!65895)

(assert (=> b!6712889 (= res!2747013 (not (= r!7292 (generalisedUnion!2376 (unfocusZipperList!1953 zl!343)))))))

(declare-fun b!6712890 () Bool)

(declare-fun res!2747011 () Bool)

(assert (=> b!6712890 (=> res!2747011 e!4056895)))

(assert (=> b!6712890 (= res!2747011 (not (is-Cons!65771 (exprs!6416 (h!72220 zl!343)))))))

(declare-fun b!6712891 () Bool)

(declare-fun res!2747015 () Bool)

(assert (=> b!6712891 (=> res!2747015 e!4056895)))

(declare-fun isEmpty!38093 (List!65896) Bool)

(assert (=> b!6712891 (= res!2747015 (not (isEmpty!38093 (t!379573 zl!343))))))

(declare-fun b!6712893 () Bool)

(declare-fun e!4056892 () Bool)

(declare-fun tp!1839715 () Bool)

(assert (=> b!6712893 (= e!4056892 (and tp_is_empty!42317 tp!1839715))))

(declare-fun b!6712894 () Bool)

(declare-fun tp!1839713 () Bool)

(assert (=> b!6712894 (= e!4056889 tp!1839713)))

(declare-fun validRegex!8268 (Regex!16532) Bool)

(assert (=> b!6712895 (= e!4056895 (validRegex!8268 (reg!16861 r!7292)))))

(declare-fun Exists!3600 (Int) Bool)

(assert (=> b!6712895 (= (Exists!3600 lambda!376280) (Exists!3600 lambda!376281))))

(declare-datatypes ((Unit!159755 0))(
  ( (Unit!159756) )
))
(declare-fun lt!2435848 () Unit!159755)

(declare-datatypes ((List!65897 0))(
  ( (Nil!65773) (Cons!65773 (h!72221 C!33334) (t!379574 List!65897)) )
))
(declare-fun s!2326 () List!65897)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!691 (Regex!16532 List!65897) Unit!159755)

(assert (=> b!6712895 (= lt!2435848 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!691 (reg!16861 r!7292) s!2326))))

(declare-datatypes ((tuple2!67014 0))(
  ( (tuple2!67015 (_1!36810 List!65897) (_2!36810 List!65897)) )
))
(declare-datatypes ((Option!16419 0))(
  ( (None!16418) (Some!16418 (v!52616 tuple2!67014)) )
))
(declare-fun isDefined!13122 (Option!16419) Bool)

(declare-fun findConcatSeparation!2833 (Regex!16532 Regex!16532 List!65897 List!65897 List!65897) Option!16419)

(assert (=> b!6712895 (= (isDefined!13122 (findConcatSeparation!2833 (reg!16861 r!7292) r!7292 Nil!65773 s!2326 s!2326)) (Exists!3600 lambda!376280))))

(declare-fun lt!2435847 () Unit!159755)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2597 (Regex!16532 Regex!16532 List!65897) Unit!159755)

(assert (=> b!6712895 (= lt!2435847 (lemmaFindConcatSeparationEquivalentToExists!2597 (reg!16861 r!7292) r!7292 s!2326))))

(declare-fun setNonEmpty!45726 () Bool)

(declare-fun setElem!45726 () Context!11832)

(declare-fun e!4056891 () Bool)

(declare-fun tp!1839710 () Bool)

(declare-fun setRes!45726 () Bool)

(declare-fun inv!84578 (Context!11832) Bool)

(assert (=> setNonEmpty!45726 (= setRes!45726 (and tp!1839710 (inv!84578 setElem!45726) e!4056891))))

(declare-fun z!1189 () (Set Context!11832))

(declare-fun setRest!45726 () (Set Context!11832))

(assert (=> setNonEmpty!45726 (= z!1189 (set.union (set.insert setElem!45726 (as set.empty (Set Context!11832))) setRest!45726))))

(declare-fun b!6712896 () Bool)

(declare-fun tp!1839707 () Bool)

(assert (=> b!6712896 (= e!4056891 tp!1839707)))

(declare-fun b!6712897 () Bool)

(declare-fun e!4056894 () Bool)

(assert (=> b!6712897 (= e!4056894 (not e!4056895))))

(declare-fun res!2747017 () Bool)

(assert (=> b!6712897 (=> res!2747017 e!4056895)))

(assert (=> b!6712897 (= res!2747017 (not (is-Cons!65772 zl!343)))))

(declare-fun matchR!8715 (Regex!16532 List!65897) Bool)

(declare-fun matchRSpec!3633 (Regex!16532 List!65897) Bool)

(assert (=> b!6712897 (= (matchR!8715 r!7292 s!2326) (matchRSpec!3633 r!7292 s!2326))))

(declare-fun lt!2435849 () Unit!159755)

(declare-fun mainMatchTheorem!3633 (Regex!16532 List!65897) Unit!159755)

(assert (=> b!6712897 (= lt!2435849 (mainMatchTheorem!3633 r!7292 s!2326))))

(declare-fun b!6712898 () Bool)

(declare-fun res!2747014 () Bool)

(assert (=> b!6712898 (=> (not res!2747014) (not e!4056894))))

(declare-fun unfocusZipper!2274 (List!65896) Regex!16532)

(assert (=> b!6712898 (= res!2747014 (= r!7292 (unfocusZipper!2274 zl!343)))))

(declare-fun b!6712899 () Bool)

(declare-fun tp!1839706 () Bool)

(declare-fun e!4056893 () Bool)

(assert (=> b!6712899 (= e!4056893 (and (inv!84578 (h!72220 zl!343)) e!4056890 tp!1839706))))

(declare-fun b!6712900 () Bool)

(declare-fun res!2747016 () Bool)

(assert (=> b!6712900 (=> (not res!2747016) (not e!4056894))))

(declare-fun toList!10316 ((Set Context!11832)) List!65896)

(assert (=> b!6712900 (= res!2747016 (= (toList!10316 z!1189) zl!343))))

(declare-fun b!6712901 () Bool)

(declare-fun tp!1839711 () Bool)

(declare-fun tp!1839708 () Bool)

(assert (=> b!6712901 (= e!4056889 (and tp!1839711 tp!1839708))))

(declare-fun b!6712892 () Bool)

(declare-fun res!2747019 () Bool)

(assert (=> b!6712892 (=> res!2747019 e!4056895)))

(declare-fun generalisedConcat!2129 (List!65895) Regex!16532)

(assert (=> b!6712892 (= res!2747019 (not (= r!7292 (generalisedConcat!2129 (exprs!6416 (h!72220 zl!343))))))))

(declare-fun res!2747012 () Bool)

(assert (=> start!651054 (=> (not res!2747012) (not e!4056894))))

(assert (=> start!651054 (= res!2747012 (validRegex!8268 r!7292))))

(assert (=> start!651054 e!4056894))

(assert (=> start!651054 e!4056889))

(declare-fun condSetEmpty!45726 () Bool)

(assert (=> start!651054 (= condSetEmpty!45726 (= z!1189 (as set.empty (Set Context!11832))))))

(assert (=> start!651054 setRes!45726))

(assert (=> start!651054 e!4056893))

(assert (=> start!651054 e!4056892))

(declare-fun setIsEmpty!45726 () Bool)

(assert (=> setIsEmpty!45726 setRes!45726))

(declare-fun b!6712902 () Bool)

(declare-fun tp!1839712 () Bool)

(declare-fun tp!1839709 () Bool)

(assert (=> b!6712902 (= e!4056889 (and tp!1839712 tp!1839709))))

(assert (= (and start!651054 res!2747012) b!6712900))

(assert (= (and b!6712900 res!2747016) b!6712898))

(assert (= (and b!6712898 res!2747014) b!6712897))

(assert (= (and b!6712897 (not res!2747017)) b!6712891))

(assert (= (and b!6712891 (not res!2747015)) b!6712892))

(assert (= (and b!6712892 (not res!2747019)) b!6712890))

(assert (= (and b!6712890 (not res!2747011)) b!6712889))

(assert (= (and b!6712889 (not res!2747013)) b!6712886))

(assert (= (and b!6712886 (not res!2747018)) b!6712895))

(assert (= (and start!651054 (is-ElementMatch!16532 r!7292)) b!6712887))

(assert (= (and start!651054 (is-Concat!25377 r!7292)) b!6712902))

(assert (= (and start!651054 (is-Star!16532 r!7292)) b!6712894))

(assert (= (and start!651054 (is-Union!16532 r!7292)) b!6712901))

(assert (= (and start!651054 condSetEmpty!45726) setIsEmpty!45726))

(assert (= (and start!651054 (not condSetEmpty!45726)) setNonEmpty!45726))

(assert (= setNonEmpty!45726 b!6712896))

(assert (= b!6712899 b!6712888))

(assert (= (and start!651054 (is-Cons!65772 zl!343)) b!6712899))

(assert (= (and start!651054 (is-Cons!65773 s!2326)) b!6712893))

(declare-fun m!7477956 () Bool)

(assert (=> b!6712889 m!7477956))

(assert (=> b!6712889 m!7477956))

(declare-fun m!7477958 () Bool)

(assert (=> b!6712889 m!7477958))

(declare-fun m!7477960 () Bool)

(assert (=> b!6712899 m!7477960))

(declare-fun m!7477962 () Bool)

(assert (=> b!6712892 m!7477962))

(declare-fun m!7477964 () Bool)

(assert (=> b!6712898 m!7477964))

(declare-fun m!7477966 () Bool)

(assert (=> b!6712900 m!7477966))

(declare-fun m!7477968 () Bool)

(assert (=> b!6712891 m!7477968))

(declare-fun m!7477970 () Bool)

(assert (=> start!651054 m!7477970))

(declare-fun m!7477972 () Bool)

(assert (=> b!6712897 m!7477972))

(declare-fun m!7477974 () Bool)

(assert (=> b!6712897 m!7477974))

(declare-fun m!7477976 () Bool)

(assert (=> b!6712897 m!7477976))

(declare-fun m!7477978 () Bool)

(assert (=> b!6712895 m!7477978))

(declare-fun m!7477980 () Bool)

(assert (=> b!6712895 m!7477980))

(declare-fun m!7477982 () Bool)

(assert (=> b!6712895 m!7477982))

(declare-fun m!7477984 () Bool)

(assert (=> b!6712895 m!7477984))

(declare-fun m!7477986 () Bool)

(assert (=> b!6712895 m!7477986))

(assert (=> b!6712895 m!7477984))

(assert (=> b!6712895 m!7477986))

(declare-fun m!7477988 () Bool)

(assert (=> b!6712895 m!7477988))

(declare-fun m!7477990 () Bool)

(assert (=> b!6712895 m!7477990))

(declare-fun m!7477992 () Bool)

(assert (=> setNonEmpty!45726 m!7477992))

(push 1)

(assert (not b!6712892))

(assert (not b!6712893))

(assert (not b!6712891))

(assert (not b!6712894))

(assert (not b!6712900))

(assert (not b!6712897))

(assert (not setNonEmpty!45726))

(assert (not start!651054))

(assert (not b!6712895))

(assert (not b!6712902))

(assert (not b!6712896))

(assert (not b!6712899))

(assert (not b!6712898))

(assert tp_is_empty!42317)

(assert (not b!6712901))

(assert (not b!6712888))

(assert (not b!6712889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2110436 () Bool)

(declare-fun e!4056925 () Bool)

(assert (=> d!2110436 e!4056925))

(declare-fun res!2747063 () Bool)

(assert (=> d!2110436 (=> (not res!2747063) (not e!4056925))))

(declare-fun lt!2435861 () List!65896)

(declare-fun noDuplicate!2331 (List!65896) Bool)

(assert (=> d!2110436 (= res!2747063 (noDuplicate!2331 lt!2435861))))

(declare-fun choose!50007 ((Set Context!11832)) List!65896)

(assert (=> d!2110436 (= lt!2435861 (choose!50007 z!1189))))

(assert (=> d!2110436 (= (toList!10316 z!1189) lt!2435861)))

(declare-fun b!6712978 () Bool)

(declare-fun content!12750 (List!65896) (Set Context!11832))

(assert (=> b!6712978 (= e!4056925 (= (content!12750 lt!2435861) z!1189))))

(assert (= (and d!2110436 res!2747063) b!6712978))

(declare-fun m!7478032 () Bool)

(assert (=> d!2110436 m!7478032))

(declare-fun m!7478034 () Bool)

(assert (=> d!2110436 m!7478034))

(declare-fun m!7478036 () Bool)

(assert (=> b!6712978 m!7478036))

(assert (=> b!6712900 d!2110436))

(declare-fun b!6712997 () Bool)

(declare-fun e!4056946 () Bool)

(declare-fun e!4056941 () Bool)

(assert (=> b!6712997 (= e!4056946 e!4056941)))

(declare-fun res!2747074 () Bool)

(declare-fun nullable!6523 (Regex!16532) Bool)

(assert (=> b!6712997 (= res!2747074 (not (nullable!6523 (reg!16861 r!7292))))))

(assert (=> b!6712997 (=> (not res!2747074) (not e!4056941))))

(declare-fun b!6712998 () Bool)

(declare-fun e!4056944 () Bool)

(assert (=> b!6712998 (= e!4056946 e!4056944)))

(declare-fun c!1244721 () Bool)

(assert (=> b!6712998 (= c!1244721 (is-Union!16532 r!7292))))

(declare-fun b!6712999 () Bool)

(declare-fun e!4056945 () Bool)

(declare-fun e!4056943 () Bool)

(assert (=> b!6712999 (= e!4056945 e!4056943)))

(declare-fun res!2747075 () Bool)

(assert (=> b!6712999 (=> (not res!2747075) (not e!4056943))))

(declare-fun call!605983 () Bool)

(assert (=> b!6712999 (= res!2747075 call!605983)))

(declare-fun bm!605977 () Bool)

(declare-fun c!1244720 () Bool)

(declare-fun call!605984 () Bool)

(assert (=> bm!605977 (= call!605984 (validRegex!8268 (ite c!1244720 (reg!16861 r!7292) (ite c!1244721 (regOne!33577 r!7292) (regOne!33576 r!7292)))))))

(declare-fun d!2110438 () Bool)

(declare-fun res!2747077 () Bool)

(declare-fun e!4056942 () Bool)

(assert (=> d!2110438 (=> res!2747077 e!4056942)))

(assert (=> d!2110438 (= res!2747077 (is-ElementMatch!16532 r!7292))))

(assert (=> d!2110438 (= (validRegex!8268 r!7292) e!4056942)))

(declare-fun b!6713000 () Bool)

(declare-fun res!2747078 () Bool)

(assert (=> b!6713000 (=> res!2747078 e!4056945)))

(assert (=> b!6713000 (= res!2747078 (not (is-Concat!25377 r!7292)))))

(assert (=> b!6713000 (= e!4056944 e!4056945)))

(declare-fun bm!605978 () Bool)

(assert (=> bm!605978 (= call!605983 call!605984)))

(declare-fun b!6713001 () Bool)

(assert (=> b!6713001 (= e!4056941 call!605984)))

(declare-fun b!6713002 () Bool)

(assert (=> b!6713002 (= e!4056942 e!4056946)))

(assert (=> b!6713002 (= c!1244720 (is-Star!16532 r!7292))))

(declare-fun b!6713003 () Bool)

(declare-fun e!4056940 () Bool)

(declare-fun call!605982 () Bool)

(assert (=> b!6713003 (= e!4056940 call!605982)))

(declare-fun b!6713004 () Bool)

(declare-fun res!2747076 () Bool)

(assert (=> b!6713004 (=> (not res!2747076) (not e!4056940))))

(assert (=> b!6713004 (= res!2747076 call!605983)))

(assert (=> b!6713004 (= e!4056944 e!4056940)))

(declare-fun bm!605979 () Bool)

(assert (=> bm!605979 (= call!605982 (validRegex!8268 (ite c!1244721 (regTwo!33577 r!7292) (regTwo!33576 r!7292))))))

(declare-fun b!6713005 () Bool)

(assert (=> b!6713005 (= e!4056943 call!605982)))

(assert (= (and d!2110438 (not res!2747077)) b!6713002))

(assert (= (and b!6713002 c!1244720) b!6712997))

(assert (= (and b!6713002 (not c!1244720)) b!6712998))

(assert (= (and b!6712997 res!2747074) b!6713001))

(assert (= (and b!6712998 c!1244721) b!6713004))

(assert (= (and b!6712998 (not c!1244721)) b!6713000))

(assert (= (and b!6713004 res!2747076) b!6713003))

(assert (= (and b!6713000 (not res!2747078)) b!6712999))

(assert (= (and b!6712999 res!2747075) b!6713005))

(assert (= (or b!6713003 b!6713005) bm!605979))

(assert (= (or b!6713004 b!6712999) bm!605978))

(assert (= (or b!6713001 bm!605978) bm!605977))

(declare-fun m!7478038 () Bool)

(assert (=> b!6712997 m!7478038))

(declare-fun m!7478040 () Bool)

(assert (=> bm!605977 m!7478040))

(declare-fun m!7478042 () Bool)

(assert (=> bm!605979 m!7478042))

(assert (=> start!651054 d!2110438))

(declare-fun d!2110440 () Bool)

(declare-fun isEmpty!38095 (Option!16419) Bool)

(assert (=> d!2110440 (= (isDefined!13122 (findConcatSeparation!2833 (reg!16861 r!7292) r!7292 Nil!65773 s!2326 s!2326)) (not (isEmpty!38095 (findConcatSeparation!2833 (reg!16861 r!7292) r!7292 Nil!65773 s!2326 s!2326))))))

(declare-fun bs!1786646 () Bool)

(assert (= bs!1786646 d!2110440))

(assert (=> bs!1786646 m!7477986))

(declare-fun m!7478044 () Bool)

(assert (=> bs!1786646 m!7478044))

(assert (=> b!6712895 d!2110440))

(declare-fun bs!1786648 () Bool)

(declare-fun d!2110442 () Bool)

(assert (= bs!1786648 (and d!2110442 b!6712895)))

(declare-fun lambda!376294 () Int)

(assert (=> bs!1786648 (= (= (Star!16532 (reg!16861 r!7292)) r!7292) (= lambda!376294 lambda!376280))))

(assert (=> bs!1786648 (not (= lambda!376294 lambda!376281))))

(assert (=> d!2110442 true))

(assert (=> d!2110442 true))

(declare-fun lambda!376295 () Int)

(assert (=> bs!1786648 (not (= lambda!376295 lambda!376280))))

(assert (=> bs!1786648 (= (= (Star!16532 (reg!16861 r!7292)) r!7292) (= lambda!376295 lambda!376281))))

(declare-fun bs!1786649 () Bool)

(assert (= bs!1786649 d!2110442))

(assert (=> bs!1786649 (not (= lambda!376295 lambda!376294))))

(assert (=> d!2110442 true))

(assert (=> d!2110442 true))

(assert (=> d!2110442 (= (Exists!3600 lambda!376294) (Exists!3600 lambda!376295))))

(declare-fun lt!2435867 () Unit!159755)

(declare-fun choose!50008 (Regex!16532 List!65897) Unit!159755)

(assert (=> d!2110442 (= lt!2435867 (choose!50008 (reg!16861 r!7292) s!2326))))

(assert (=> d!2110442 (validRegex!8268 (reg!16861 r!7292))))

(assert (=> d!2110442 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!691 (reg!16861 r!7292) s!2326) lt!2435867)))

(declare-fun m!7478054 () Bool)

(assert (=> bs!1786649 m!7478054))

(declare-fun m!7478056 () Bool)

(assert (=> bs!1786649 m!7478056))

(declare-fun m!7478058 () Bool)

(assert (=> bs!1786649 m!7478058))

(assert (=> bs!1786649 m!7477982))

(assert (=> b!6712895 d!2110442))

(declare-fun b!6713019 () Bool)

(declare-fun e!4056960 () Bool)

(declare-fun e!4056955 () Bool)

(assert (=> b!6713019 (= e!4056960 e!4056955)))

(declare-fun res!2747092 () Bool)

(assert (=> b!6713019 (= res!2747092 (not (nullable!6523 (reg!16861 (reg!16861 r!7292)))))))

(assert (=> b!6713019 (=> (not res!2747092) (not e!4056955))))

(declare-fun b!6713020 () Bool)

(declare-fun e!4056958 () Bool)

(assert (=> b!6713020 (= e!4056960 e!4056958)))

(declare-fun c!1244723 () Bool)

(assert (=> b!6713020 (= c!1244723 (is-Union!16532 (reg!16861 r!7292)))))

(declare-fun b!6713021 () Bool)

(declare-fun e!4056959 () Bool)

(declare-fun e!4056957 () Bool)

(assert (=> b!6713021 (= e!4056959 e!4056957)))

(declare-fun res!2747093 () Bool)

(assert (=> b!6713021 (=> (not res!2747093) (not e!4056957))))

(declare-fun call!605986 () Bool)

(assert (=> b!6713021 (= res!2747093 call!605986)))

(declare-fun call!605987 () Bool)

(declare-fun bm!605980 () Bool)

(declare-fun c!1244722 () Bool)

(assert (=> bm!605980 (= call!605987 (validRegex!8268 (ite c!1244722 (reg!16861 (reg!16861 r!7292)) (ite c!1244723 (regOne!33577 (reg!16861 r!7292)) (regOne!33576 (reg!16861 r!7292))))))))

(declare-fun d!2110450 () Bool)

(declare-fun res!2747095 () Bool)

(declare-fun e!4056956 () Bool)

(assert (=> d!2110450 (=> res!2747095 e!4056956)))

(assert (=> d!2110450 (= res!2747095 (is-ElementMatch!16532 (reg!16861 r!7292)))))

(assert (=> d!2110450 (= (validRegex!8268 (reg!16861 r!7292)) e!4056956)))

(declare-fun b!6713022 () Bool)

(declare-fun res!2747096 () Bool)

(assert (=> b!6713022 (=> res!2747096 e!4056959)))

(assert (=> b!6713022 (= res!2747096 (not (is-Concat!25377 (reg!16861 r!7292))))))

(assert (=> b!6713022 (= e!4056958 e!4056959)))

(declare-fun bm!605981 () Bool)

(assert (=> bm!605981 (= call!605986 call!605987)))

(declare-fun b!6713023 () Bool)

(assert (=> b!6713023 (= e!4056955 call!605987)))

(declare-fun b!6713024 () Bool)

(assert (=> b!6713024 (= e!4056956 e!4056960)))

(assert (=> b!6713024 (= c!1244722 (is-Star!16532 (reg!16861 r!7292)))))

(declare-fun b!6713025 () Bool)

(declare-fun e!4056954 () Bool)

(declare-fun call!605985 () Bool)

(assert (=> b!6713025 (= e!4056954 call!605985)))

(declare-fun b!6713026 () Bool)

(declare-fun res!2747094 () Bool)

(assert (=> b!6713026 (=> (not res!2747094) (not e!4056954))))

(assert (=> b!6713026 (= res!2747094 call!605986)))

(assert (=> b!6713026 (= e!4056958 e!4056954)))

(declare-fun bm!605982 () Bool)

(assert (=> bm!605982 (= call!605985 (validRegex!8268 (ite c!1244723 (regTwo!33577 (reg!16861 r!7292)) (regTwo!33576 (reg!16861 r!7292)))))))

(declare-fun b!6713027 () Bool)

(assert (=> b!6713027 (= e!4056957 call!605985)))

(assert (= (and d!2110450 (not res!2747095)) b!6713024))

(assert (= (and b!6713024 c!1244722) b!6713019))

(assert (= (and b!6713024 (not c!1244722)) b!6713020))

(assert (= (and b!6713019 res!2747092) b!6713023))

(assert (= (and b!6713020 c!1244723) b!6713026))

(assert (= (and b!6713020 (not c!1244723)) b!6713022))

(assert (= (and b!6713026 res!2747094) b!6713025))

(assert (= (and b!6713022 (not res!2747096)) b!6713021))

(assert (= (and b!6713021 res!2747093) b!6713027))

(assert (= (or b!6713025 b!6713027) bm!605982))

(assert (= (or b!6713026 b!6713021) bm!605981))

(assert (= (or b!6713023 bm!605981) bm!605980))

(declare-fun m!7478060 () Bool)

(assert (=> b!6713019 m!7478060))

(declare-fun m!7478062 () Bool)

(assert (=> bm!605980 m!7478062))

(declare-fun m!7478064 () Bool)

(assert (=> bm!605982 m!7478064))

(assert (=> b!6712895 d!2110450))

(declare-fun d!2110452 () Bool)

(declare-fun choose!50009 (Int) Bool)

(assert (=> d!2110452 (= (Exists!3600 lambda!376281) (choose!50009 lambda!376281))))

(declare-fun bs!1786650 () Bool)

(assert (= bs!1786650 d!2110452))

(declare-fun m!7478066 () Bool)

(assert (=> bs!1786650 m!7478066))

(assert (=> b!6712895 d!2110452))

(declare-fun d!2110454 () Bool)

(assert (=> d!2110454 (= (Exists!3600 lambda!376280) (choose!50009 lambda!376280))))

(declare-fun bs!1786651 () Bool)

(assert (= bs!1786651 d!2110454))

(declare-fun m!7478068 () Bool)

(assert (=> bs!1786651 m!7478068))

(assert (=> b!6712895 d!2110454))

(declare-fun b!6713050 () Bool)

(declare-fun res!2747113 () Bool)

(declare-fun e!4056977 () Bool)

(assert (=> b!6713050 (=> (not res!2747113) (not e!4056977))))

(declare-fun lt!2435878 () Option!16419)

(declare-fun get!22876 (Option!16419) tuple2!67014)

(assert (=> b!6713050 (= res!2747113 (matchR!8715 r!7292 (_2!36810 (get!22876 lt!2435878))))))

(declare-fun b!6713051 () Bool)

(declare-fun e!4056974 () Option!16419)

(assert (=> b!6713051 (= e!4056974 None!16418)))

(declare-fun d!2110456 () Bool)

(declare-fun e!4056975 () Bool)

(assert (=> d!2110456 e!4056975))

(declare-fun res!2747114 () Bool)

(assert (=> d!2110456 (=> res!2747114 e!4056975)))

(assert (=> d!2110456 (= res!2747114 e!4056977)))

(declare-fun res!2747111 () Bool)

(assert (=> d!2110456 (=> (not res!2747111) (not e!4056977))))

(assert (=> d!2110456 (= res!2747111 (isDefined!13122 lt!2435878))))

(declare-fun e!4056973 () Option!16419)

(assert (=> d!2110456 (= lt!2435878 e!4056973)))

(declare-fun c!1244728 () Bool)

(declare-fun e!4056976 () Bool)

(assert (=> d!2110456 (= c!1244728 e!4056976)))

(declare-fun res!2747112 () Bool)

(assert (=> d!2110456 (=> (not res!2747112) (not e!4056976))))

(assert (=> d!2110456 (= res!2747112 (matchR!8715 (reg!16861 r!7292) Nil!65773))))

(assert (=> d!2110456 (validRegex!8268 (reg!16861 r!7292))))

(assert (=> d!2110456 (= (findConcatSeparation!2833 (reg!16861 r!7292) r!7292 Nil!65773 s!2326 s!2326) lt!2435878)))

(declare-fun b!6713052 () Bool)

(assert (=> b!6713052 (= e!4056973 (Some!16418 (tuple2!67015 Nil!65773 s!2326)))))

(declare-fun b!6713053 () Bool)

(assert (=> b!6713053 (= e!4056976 (matchR!8715 r!7292 s!2326))))

(declare-fun b!6713054 () Bool)

(declare-fun res!2747115 () Bool)

(assert (=> b!6713054 (=> (not res!2747115) (not e!4056977))))

(assert (=> b!6713054 (= res!2747115 (matchR!8715 (reg!16861 r!7292) (_1!36810 (get!22876 lt!2435878))))))

(declare-fun b!6713055 () Bool)

(declare-fun lt!2435877 () Unit!159755)

(declare-fun lt!2435876 () Unit!159755)

(assert (=> b!6713055 (= lt!2435877 lt!2435876)))

(declare-fun ++!14694 (List!65897 List!65897) List!65897)

(assert (=> b!6713055 (= (++!14694 (++!14694 Nil!65773 (Cons!65773 (h!72221 s!2326) Nil!65773)) (t!379574 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2667 (List!65897 C!33334 List!65897 List!65897) Unit!159755)

(assert (=> b!6713055 (= lt!2435876 (lemmaMoveElementToOtherListKeepsConcatEq!2667 Nil!65773 (h!72221 s!2326) (t!379574 s!2326) s!2326))))

(assert (=> b!6713055 (= e!4056974 (findConcatSeparation!2833 (reg!16861 r!7292) r!7292 (++!14694 Nil!65773 (Cons!65773 (h!72221 s!2326) Nil!65773)) (t!379574 s!2326) s!2326))))

(declare-fun b!6713056 () Bool)

(assert (=> b!6713056 (= e!4056973 e!4056974)))

(declare-fun c!1244729 () Bool)

(assert (=> b!6713056 (= c!1244729 (is-Nil!65773 s!2326))))

(declare-fun b!6713057 () Bool)

(assert (=> b!6713057 (= e!4056977 (= (++!14694 (_1!36810 (get!22876 lt!2435878)) (_2!36810 (get!22876 lt!2435878))) s!2326))))

(declare-fun b!6713058 () Bool)

(assert (=> b!6713058 (= e!4056975 (not (isDefined!13122 lt!2435878)))))

(assert (= (and d!2110456 res!2747112) b!6713053))

(assert (= (and d!2110456 c!1244728) b!6713052))

(assert (= (and d!2110456 (not c!1244728)) b!6713056))

(assert (= (and b!6713056 c!1244729) b!6713051))

(assert (= (and b!6713056 (not c!1244729)) b!6713055))

(assert (= (and d!2110456 res!2747111) b!6713054))

(assert (= (and b!6713054 res!2747115) b!6713050))

(assert (= (and b!6713050 res!2747113) b!6713057))

(assert (= (and d!2110456 (not res!2747114)) b!6713058))

(declare-fun m!7478070 () Bool)

(assert (=> b!6713057 m!7478070))

(declare-fun m!7478072 () Bool)

(assert (=> b!6713057 m!7478072))

(declare-fun m!7478074 () Bool)

(assert (=> d!2110456 m!7478074))

(declare-fun m!7478076 () Bool)

(assert (=> d!2110456 m!7478076))

(assert (=> d!2110456 m!7477982))

(declare-fun m!7478078 () Bool)

(assert (=> b!6713055 m!7478078))

(assert (=> b!6713055 m!7478078))

(declare-fun m!7478080 () Bool)

(assert (=> b!6713055 m!7478080))

(declare-fun m!7478082 () Bool)

(assert (=> b!6713055 m!7478082))

(assert (=> b!6713055 m!7478078))

(declare-fun m!7478084 () Bool)

(assert (=> b!6713055 m!7478084))

(assert (=> b!6713058 m!7478074))

(assert (=> b!6713050 m!7478070))

(declare-fun m!7478086 () Bool)

(assert (=> b!6713050 m!7478086))

(assert (=> b!6713054 m!7478070))

(declare-fun m!7478088 () Bool)

(assert (=> b!6713054 m!7478088))

(assert (=> b!6713053 m!7477972))

(assert (=> b!6712895 d!2110456))

(declare-fun bs!1786653 () Bool)

(declare-fun d!2110458 () Bool)

(assert (= bs!1786653 (and d!2110458 b!6712895)))

(declare-fun lambda!376303 () Int)

(assert (=> bs!1786653 (= lambda!376303 lambda!376280)))

(assert (=> bs!1786653 (not (= lambda!376303 lambda!376281))))

(declare-fun bs!1786654 () Bool)

(assert (= bs!1786654 (and d!2110458 d!2110442)))

(assert (=> bs!1786654 (= (= r!7292 (Star!16532 (reg!16861 r!7292))) (= lambda!376303 lambda!376294))))

(assert (=> bs!1786654 (not (= lambda!376303 lambda!376295))))

(assert (=> d!2110458 true))

(assert (=> d!2110458 true))

(assert (=> d!2110458 true))

(assert (=> d!2110458 (= (isDefined!13122 (findConcatSeparation!2833 (reg!16861 r!7292) r!7292 Nil!65773 s!2326 s!2326)) (Exists!3600 lambda!376303))))

(declare-fun lt!2435882 () Unit!159755)

(declare-fun choose!50010 (Regex!16532 Regex!16532 List!65897) Unit!159755)

(assert (=> d!2110458 (= lt!2435882 (choose!50010 (reg!16861 r!7292) r!7292 s!2326))))

(assert (=> d!2110458 (validRegex!8268 (reg!16861 r!7292))))

(assert (=> d!2110458 (= (lemmaFindConcatSeparationEquivalentToExists!2597 (reg!16861 r!7292) r!7292 s!2326) lt!2435882)))

(declare-fun bs!1786655 () Bool)

(assert (= bs!1786655 d!2110458))

(assert (=> bs!1786655 m!7477986))

(assert (=> bs!1786655 m!7477986))

(assert (=> bs!1786655 m!7477988))

(declare-fun m!7478090 () Bool)

(assert (=> bs!1786655 m!7478090))

(assert (=> bs!1786655 m!7477982))

(declare-fun m!7478092 () Bool)

(assert (=> bs!1786655 m!7478092))

(assert (=> b!6712895 d!2110458))

(declare-fun d!2110460 () Bool)

(declare-fun lambda!376307 () Int)

(declare-fun forall!15738 (List!65895 Int) Bool)

(assert (=> d!2110460 (= (inv!84578 (h!72220 zl!343)) (forall!15738 (exprs!6416 (h!72220 zl!343)) lambda!376307))))

(declare-fun bs!1786657 () Bool)

(assert (= bs!1786657 d!2110460))

(declare-fun m!7478100 () Bool)

(assert (=> bs!1786657 m!7478100))

(assert (=> b!6712899 d!2110460))

(declare-fun d!2110464 () Bool)

(assert (=> d!2110464 (= (isEmpty!38093 (t!379573 zl!343)) (is-Nil!65772 (t!379573 zl!343)))))

(assert (=> b!6712891 d!2110464))

(declare-fun bs!1786658 () Bool)

(declare-fun d!2110466 () Bool)

(assert (= bs!1786658 (and d!2110466 d!2110460)))

(declare-fun lambda!376308 () Int)

(assert (=> bs!1786658 (= lambda!376308 lambda!376307)))

(assert (=> d!2110466 (= (inv!84578 setElem!45726) (forall!15738 (exprs!6416 setElem!45726) lambda!376308))))

(declare-fun bs!1786659 () Bool)

(assert (= bs!1786659 d!2110466))

(declare-fun m!7478102 () Bool)

(assert (=> bs!1786659 m!7478102))

(assert (=> setNonEmpty!45726 d!2110466))

(declare-fun b!6713115 () Bool)

(declare-fun e!4057015 () Bool)

(declare-fun head!13503 (List!65897) C!33334)

(assert (=> b!6713115 (= e!4057015 (not (= (head!13503 s!2326) (c!1244714 r!7292))))))

(declare-fun b!6713116 () Bool)

(declare-fun e!4057014 () Bool)

(declare-fun lt!2435885 () Bool)

(declare-fun call!605996 () Bool)

(assert (=> b!6713116 (= e!4057014 (= lt!2435885 call!605996))))

(declare-fun b!6713117 () Bool)

(declare-fun res!2747158 () Bool)

(assert (=> b!6713117 (=> res!2747158 e!4057015)))

(declare-fun isEmpty!38096 (List!65897) Bool)

(declare-fun tail!12588 (List!65897) List!65897)

(assert (=> b!6713117 (= res!2747158 (not (isEmpty!38096 (tail!12588 s!2326))))))

(declare-fun b!6713119 () Bool)

(declare-fun res!2747159 () Bool)

(declare-fun e!4057011 () Bool)

(assert (=> b!6713119 (=> (not res!2747159) (not e!4057011))))

(assert (=> b!6713119 (= res!2747159 (isEmpty!38096 (tail!12588 s!2326)))))

(declare-fun b!6713120 () Bool)

(declare-fun res!2747152 () Bool)

(declare-fun e!4057016 () Bool)

(assert (=> b!6713120 (=> res!2747152 e!4057016)))

(assert (=> b!6713120 (= res!2747152 e!4057011)))

(declare-fun res!2747155 () Bool)

(assert (=> b!6713120 (=> (not res!2747155) (not e!4057011))))

(assert (=> b!6713120 (= res!2747155 lt!2435885)))

(declare-fun b!6713121 () Bool)

(declare-fun e!4057010 () Bool)

(declare-fun derivativeStep!5210 (Regex!16532 C!33334) Regex!16532)

(assert (=> b!6713121 (= e!4057010 (matchR!8715 (derivativeStep!5210 r!7292 (head!13503 s!2326)) (tail!12588 s!2326)))))

(declare-fun b!6713122 () Bool)

(declare-fun e!4057013 () Bool)

(assert (=> b!6713122 (= e!4057013 (not lt!2435885))))

(declare-fun b!6713123 () Bool)

(declare-fun e!4057012 () Bool)

(assert (=> b!6713123 (= e!4057016 e!4057012)))

(declare-fun res!2747157 () Bool)

(assert (=> b!6713123 (=> (not res!2747157) (not e!4057012))))

(assert (=> b!6713123 (= res!2747157 (not lt!2435885))))

(declare-fun b!6713124 () Bool)

(declare-fun res!2747156 () Bool)

(assert (=> b!6713124 (=> (not res!2747156) (not e!4057011))))

(assert (=> b!6713124 (= res!2747156 (not call!605996))))

(declare-fun d!2110468 () Bool)

(assert (=> d!2110468 e!4057014))

(declare-fun c!1244741 () Bool)

(assert (=> d!2110468 (= c!1244741 (is-EmptyExpr!16532 r!7292))))

(assert (=> d!2110468 (= lt!2435885 e!4057010)))

(declare-fun c!1244740 () Bool)

(assert (=> d!2110468 (= c!1244740 (isEmpty!38096 s!2326))))

(assert (=> d!2110468 (validRegex!8268 r!7292)))

(assert (=> d!2110468 (= (matchR!8715 r!7292 s!2326) lt!2435885)))

(declare-fun b!6713118 () Bool)

(declare-fun res!2747154 () Bool)

(assert (=> b!6713118 (=> res!2747154 e!4057016)))

(assert (=> b!6713118 (= res!2747154 (not (is-ElementMatch!16532 r!7292)))))

(assert (=> b!6713118 (= e!4057013 e!4057016)))

(declare-fun bm!605991 () Bool)

(assert (=> bm!605991 (= call!605996 (isEmpty!38096 s!2326))))

(declare-fun b!6713125 () Bool)

(assert (=> b!6713125 (= e!4057010 (nullable!6523 r!7292))))

(declare-fun b!6713126 () Bool)

(assert (=> b!6713126 (= e!4057011 (= (head!13503 s!2326) (c!1244714 r!7292)))))

(declare-fun b!6713127 () Bool)

(assert (=> b!6713127 (= e!4057014 e!4057013)))

(declare-fun c!1244742 () Bool)

(assert (=> b!6713127 (= c!1244742 (is-EmptyLang!16532 r!7292))))

(declare-fun b!6713128 () Bool)

(assert (=> b!6713128 (= e!4057012 e!4057015)))

(declare-fun res!2747153 () Bool)

(assert (=> b!6713128 (=> res!2747153 e!4057015)))

(assert (=> b!6713128 (= res!2747153 call!605996)))

(assert (= (and d!2110468 c!1244740) b!6713125))

(assert (= (and d!2110468 (not c!1244740)) b!6713121))

(assert (= (and d!2110468 c!1244741) b!6713116))

(assert (= (and d!2110468 (not c!1244741)) b!6713127))

(assert (= (and b!6713127 c!1244742) b!6713122))

(assert (= (and b!6713127 (not c!1244742)) b!6713118))

(assert (= (and b!6713118 (not res!2747154)) b!6713120))

(assert (= (and b!6713120 res!2747155) b!6713124))

(assert (= (and b!6713124 res!2747156) b!6713119))

(assert (= (and b!6713119 res!2747159) b!6713126))

(assert (= (and b!6713120 (not res!2747152)) b!6713123))

(assert (= (and b!6713123 res!2747157) b!6713128))

(assert (= (and b!6713128 (not res!2747153)) b!6713117))

(assert (= (and b!6713117 (not res!2747158)) b!6713115))

(assert (= (or b!6713116 b!6713124 b!6713128) bm!605991))

(declare-fun m!7478108 () Bool)

(assert (=> d!2110468 m!7478108))

(assert (=> d!2110468 m!7477970))

(declare-fun m!7478110 () Bool)

(assert (=> b!6713117 m!7478110))

(assert (=> b!6713117 m!7478110))

(declare-fun m!7478112 () Bool)

(assert (=> b!6713117 m!7478112))

(declare-fun m!7478114 () Bool)

(assert (=> b!6713125 m!7478114))

(declare-fun m!7478116 () Bool)

(assert (=> b!6713126 m!7478116))

(assert (=> b!6713115 m!7478116))

(assert (=> b!6713119 m!7478110))

(assert (=> b!6713119 m!7478110))

(assert (=> b!6713119 m!7478112))

(assert (=> b!6713121 m!7478116))

(assert (=> b!6713121 m!7478116))

(declare-fun m!7478118 () Bool)

(assert (=> b!6713121 m!7478118))

(assert (=> b!6713121 m!7478110))

(assert (=> b!6713121 m!7478118))

(assert (=> b!6713121 m!7478110))

(declare-fun m!7478120 () Bool)

(assert (=> b!6713121 m!7478120))

(assert (=> bm!605991 m!7478108))

(assert (=> b!6712897 d!2110468))

(declare-fun bs!1786662 () Bool)

(declare-fun b!6713170 () Bool)

(assert (= bs!1786662 (and b!6713170 b!6712895)))

(declare-fun lambda!376313 () Int)

(assert (=> bs!1786662 (= lambda!376313 lambda!376281)))

(assert (=> bs!1786662 (not (= lambda!376313 lambda!376280))))

(declare-fun bs!1786663 () Bool)

(assert (= bs!1786663 (and b!6713170 d!2110458)))

(assert (=> bs!1786663 (not (= lambda!376313 lambda!376303))))

(declare-fun bs!1786664 () Bool)

(assert (= bs!1786664 (and b!6713170 d!2110442)))

(assert (=> bs!1786664 (not (= lambda!376313 lambda!376294))))

(assert (=> bs!1786664 (= (= r!7292 (Star!16532 (reg!16861 r!7292))) (= lambda!376313 lambda!376295))))

(assert (=> b!6713170 true))

(assert (=> b!6713170 true))

(declare-fun bs!1786665 () Bool)

(declare-fun b!6713175 () Bool)

(assert (= bs!1786665 (and b!6713175 b!6712895)))

(declare-fun lambda!376314 () Int)

(assert (=> bs!1786665 (not (= lambda!376314 lambda!376281))))

(assert (=> bs!1786665 (not (= lambda!376314 lambda!376280))))

(declare-fun bs!1786666 () Bool)

(assert (= bs!1786666 (and b!6713175 b!6713170)))

(assert (=> bs!1786666 (not (= lambda!376314 lambda!376313))))

(declare-fun bs!1786667 () Bool)

(assert (= bs!1786667 (and b!6713175 d!2110458)))

(assert (=> bs!1786667 (not (= lambda!376314 lambda!376303))))

(declare-fun bs!1786668 () Bool)

(assert (= bs!1786668 (and b!6713175 d!2110442)))

(assert (=> bs!1786668 (not (= lambda!376314 lambda!376294))))

(assert (=> bs!1786668 (not (= lambda!376314 lambda!376295))))

(assert (=> b!6713175 true))

(assert (=> b!6713175 true))

(declare-fun e!4057045 () Bool)

(declare-fun call!606005 () Bool)

(assert (=> b!6713170 (= e!4057045 call!606005)))

(declare-fun b!6713172 () Bool)

(declare-fun e!4057044 () Bool)

(assert (=> b!6713172 (= e!4057044 (matchRSpec!3633 (regTwo!33577 r!7292) s!2326))))

(declare-fun b!6713173 () Bool)

(declare-fun e!4057048 () Bool)

(assert (=> b!6713173 (= e!4057048 e!4057044)))

(declare-fun res!2747181 () Bool)

(assert (=> b!6713173 (= res!2747181 (matchRSpec!3633 (regOne!33577 r!7292) s!2326))))

(assert (=> b!6713173 (=> res!2747181 e!4057044)))

(declare-fun b!6713174 () Bool)

(declare-fun e!4057042 () Bool)

(declare-fun e!4057043 () Bool)

(assert (=> b!6713174 (= e!4057042 e!4057043)))

(declare-fun res!2747182 () Bool)

(assert (=> b!6713174 (= res!2747182 (not (is-EmptyLang!16532 r!7292)))))

(assert (=> b!6713174 (=> (not res!2747182) (not e!4057043))))

(declare-fun bm!605999 () Bool)

(declare-fun c!1244753 () Bool)

(assert (=> bm!605999 (= call!606005 (Exists!3600 (ite c!1244753 lambda!376313 lambda!376314)))))

(declare-fun e!4057046 () Bool)

(assert (=> b!6713175 (= e!4057046 call!606005)))

(declare-fun bm!606000 () Bool)

(declare-fun call!606004 () Bool)

(assert (=> bm!606000 (= call!606004 (isEmpty!38096 s!2326))))

(declare-fun d!2110474 () Bool)

(declare-fun c!1244755 () Bool)

(assert (=> d!2110474 (= c!1244755 (is-EmptyExpr!16532 r!7292))))

(assert (=> d!2110474 (= (matchRSpec!3633 r!7292 s!2326) e!4057042)))

(declare-fun b!6713171 () Bool)

(declare-fun e!4057047 () Bool)

(assert (=> b!6713171 (= e!4057047 (= s!2326 (Cons!65773 (c!1244714 r!7292) Nil!65773)))))

(declare-fun b!6713176 () Bool)

(declare-fun res!2747183 () Bool)

(assert (=> b!6713176 (=> res!2747183 e!4057045)))

(assert (=> b!6713176 (= res!2747183 call!606004)))

(assert (=> b!6713176 (= e!4057046 e!4057045)))

(declare-fun b!6713177 () Bool)

(declare-fun c!1244754 () Bool)

(assert (=> b!6713177 (= c!1244754 (is-Union!16532 r!7292))))

(assert (=> b!6713177 (= e!4057047 e!4057048)))

(declare-fun b!6713178 () Bool)

(assert (=> b!6713178 (= e!4057048 e!4057046)))

(assert (=> b!6713178 (= c!1244753 (is-Star!16532 r!7292))))

(declare-fun b!6713179 () Bool)

(assert (=> b!6713179 (= e!4057042 call!606004)))

(declare-fun b!6713180 () Bool)

(declare-fun c!1244756 () Bool)

(assert (=> b!6713180 (= c!1244756 (is-ElementMatch!16532 r!7292))))

(assert (=> b!6713180 (= e!4057043 e!4057047)))

(assert (= (and d!2110474 c!1244755) b!6713179))

(assert (= (and d!2110474 (not c!1244755)) b!6713174))

(assert (= (and b!6713174 res!2747182) b!6713180))

(assert (= (and b!6713180 c!1244756) b!6713171))

(assert (= (and b!6713180 (not c!1244756)) b!6713177))

(assert (= (and b!6713177 c!1244754) b!6713173))

(assert (= (and b!6713177 (not c!1244754)) b!6713178))

(assert (= (and b!6713173 (not res!2747181)) b!6713172))

(assert (= (and b!6713178 c!1244753) b!6713176))

(assert (= (and b!6713178 (not c!1244753)) b!6713175))

(assert (= (and b!6713176 (not res!2747183)) b!6713170))

(assert (= (or b!6713170 b!6713175) bm!605999))

(assert (= (or b!6713179 b!6713176) bm!606000))

(declare-fun m!7478128 () Bool)

(assert (=> b!6713172 m!7478128))

(declare-fun m!7478130 () Bool)

(assert (=> b!6713173 m!7478130))

(declare-fun m!7478132 () Bool)

(assert (=> bm!605999 m!7478132))

(assert (=> bm!606000 m!7478108))

(assert (=> b!6712897 d!2110474))

(declare-fun d!2110478 () Bool)

(assert (=> d!2110478 (= (matchR!8715 r!7292 s!2326) (matchRSpec!3633 r!7292 s!2326))))

(declare-fun lt!2435888 () Unit!159755)

(declare-fun choose!50011 (Regex!16532 List!65897) Unit!159755)

(assert (=> d!2110478 (= lt!2435888 (choose!50011 r!7292 s!2326))))

(assert (=> d!2110478 (validRegex!8268 r!7292)))

(assert (=> d!2110478 (= (mainMatchTheorem!3633 r!7292 s!2326) lt!2435888)))

(declare-fun bs!1786669 () Bool)

(assert (= bs!1786669 d!2110478))

(assert (=> bs!1786669 m!7477972))

(assert (=> bs!1786669 m!7477974))

(declare-fun m!7478134 () Bool)

(assert (=> bs!1786669 m!7478134))

(assert (=> bs!1786669 m!7477970))

(assert (=> b!6712897 d!2110478))

(declare-fun bs!1786670 () Bool)

(declare-fun d!2110480 () Bool)

(assert (= bs!1786670 (and d!2110480 d!2110460)))

(declare-fun lambda!376317 () Int)

(assert (=> bs!1786670 (= lambda!376317 lambda!376307)))

(declare-fun bs!1786671 () Bool)

(assert (= bs!1786671 (and d!2110480 d!2110466)))

(assert (=> bs!1786671 (= lambda!376317 lambda!376308)))

(declare-fun b!6713211 () Bool)

(declare-fun e!4057068 () Regex!16532)

(declare-fun e!4057067 () Regex!16532)

(assert (=> b!6713211 (= e!4057068 e!4057067)))

(declare-fun c!1244769 () Bool)

(assert (=> b!6713211 (= c!1244769 (is-Cons!65771 (exprs!6416 (h!72220 zl!343))))))

(declare-fun b!6713212 () Bool)

(declare-fun e!4057070 () Bool)

(declare-fun isEmpty!38097 (List!65895) Bool)

(assert (=> b!6713212 (= e!4057070 (isEmpty!38097 (t!379572 (exprs!6416 (h!72220 zl!343)))))))

(declare-fun b!6713213 () Bool)

(assert (=> b!6713213 (= e!4057068 (h!72219 (exprs!6416 (h!72220 zl!343))))))

(declare-fun b!6713214 () Bool)

(declare-fun e!4057069 () Bool)

(declare-fun e!4057071 () Bool)

(assert (=> b!6713214 (= e!4057069 e!4057071)))

(declare-fun c!1244772 () Bool)

(assert (=> b!6713214 (= c!1244772 (isEmpty!38097 (exprs!6416 (h!72220 zl!343))))))

(assert (=> d!2110480 e!4057069))

(declare-fun res!2747190 () Bool)

(assert (=> d!2110480 (=> (not res!2747190) (not e!4057069))))

(declare-fun lt!2435897 () Regex!16532)

(assert (=> d!2110480 (= res!2747190 (validRegex!8268 lt!2435897))))

(assert (=> d!2110480 (= lt!2435897 e!4057068)))

(declare-fun c!1244771 () Bool)

(assert (=> d!2110480 (= c!1244771 e!4057070)))

(declare-fun res!2747191 () Bool)

(assert (=> d!2110480 (=> (not res!2747191) (not e!4057070))))

(assert (=> d!2110480 (= res!2747191 (is-Cons!65771 (exprs!6416 (h!72220 zl!343))))))

(assert (=> d!2110480 (forall!15738 (exprs!6416 (h!72220 zl!343)) lambda!376317)))

(assert (=> d!2110480 (= (generalisedConcat!2129 (exprs!6416 (h!72220 zl!343))) lt!2435897)))

(declare-fun b!6713215 () Bool)

(declare-fun e!4057072 () Bool)

(declare-fun isConcat!1427 (Regex!16532) Bool)

(assert (=> b!6713215 (= e!4057072 (isConcat!1427 lt!2435897))))

(declare-fun b!6713216 () Bool)

(declare-fun head!13504 (List!65895) Regex!16532)

(assert (=> b!6713216 (= e!4057072 (= lt!2435897 (head!13504 (exprs!6416 (h!72220 zl!343)))))))

(declare-fun b!6713217 () Bool)

(assert (=> b!6713217 (= e!4057067 (Concat!25377 (h!72219 (exprs!6416 (h!72220 zl!343))) (generalisedConcat!2129 (t!379572 (exprs!6416 (h!72220 zl!343))))))))

(declare-fun b!6713218 () Bool)

(declare-fun isEmptyExpr!1904 (Regex!16532) Bool)

(assert (=> b!6713218 (= e!4057071 (isEmptyExpr!1904 lt!2435897))))

(declare-fun b!6713219 () Bool)

(assert (=> b!6713219 (= e!4057067 EmptyExpr!16532)))

(declare-fun b!6713220 () Bool)

(assert (=> b!6713220 (= e!4057071 e!4057072)))

(declare-fun c!1244770 () Bool)

(declare-fun tail!12589 (List!65895) List!65895)

(assert (=> b!6713220 (= c!1244770 (isEmpty!38097 (tail!12589 (exprs!6416 (h!72220 zl!343)))))))

(assert (= (and d!2110480 res!2747191) b!6713212))

(assert (= (and d!2110480 c!1244771) b!6713213))

(assert (= (and d!2110480 (not c!1244771)) b!6713211))

(assert (= (and b!6713211 c!1244769) b!6713217))

(assert (= (and b!6713211 (not c!1244769)) b!6713219))

(assert (= (and d!2110480 res!2747190) b!6713214))

(assert (= (and b!6713214 c!1244772) b!6713218))

(assert (= (and b!6713214 (not c!1244772)) b!6713220))

(assert (= (and b!6713220 c!1244770) b!6713216))

(assert (= (and b!6713220 (not c!1244770)) b!6713215))

(declare-fun m!7478136 () Bool)

(assert (=> d!2110480 m!7478136))

(declare-fun m!7478138 () Bool)

(assert (=> d!2110480 m!7478138))

(declare-fun m!7478140 () Bool)

(assert (=> b!6713217 m!7478140))

(declare-fun m!7478142 () Bool)

(assert (=> b!6713220 m!7478142))

(assert (=> b!6713220 m!7478142))

(declare-fun m!7478144 () Bool)

(assert (=> b!6713220 m!7478144))

(declare-fun m!7478146 () Bool)

(assert (=> b!6713216 m!7478146))

(declare-fun m!7478148 () Bool)

(assert (=> b!6713212 m!7478148))

(declare-fun m!7478150 () Bool)

(assert (=> b!6713215 m!7478150))

(declare-fun m!7478152 () Bool)

(assert (=> b!6713218 m!7478152))

(declare-fun m!7478154 () Bool)

(assert (=> b!6713214 m!7478154))

(assert (=> b!6712892 d!2110480))

(declare-fun bs!1786672 () Bool)

(declare-fun d!2110482 () Bool)

(assert (= bs!1786672 (and d!2110482 d!2110460)))

(declare-fun lambda!376320 () Int)

(assert (=> bs!1786672 (= lambda!376320 lambda!376307)))

(declare-fun bs!1786673 () Bool)

(assert (= bs!1786673 (and d!2110482 d!2110466)))

(assert (=> bs!1786673 (= lambda!376320 lambda!376308)))

(declare-fun bs!1786674 () Bool)

(assert (= bs!1786674 (and d!2110482 d!2110480)))

(assert (=> bs!1786674 (= lambda!376320 lambda!376317)))

(declare-fun b!6713249 () Bool)

(declare-fun e!4057092 () Bool)

(declare-fun e!4057093 () Bool)

(assert (=> b!6713249 (= e!4057092 e!4057093)))

(declare-fun c!1244782 () Bool)

(assert (=> b!6713249 (= c!1244782 (isEmpty!38097 (unfocusZipperList!1953 zl!343)))))

(declare-fun b!6713250 () Bool)

(declare-fun e!4057090 () Regex!16532)

(assert (=> b!6713250 (= e!4057090 (h!72219 (unfocusZipperList!1953 zl!343)))))

(declare-fun b!6713251 () Bool)

(declare-fun e!4057091 () Bool)

(declare-fun lt!2435900 () Regex!16532)

(declare-fun isUnion!1342 (Regex!16532) Bool)

(assert (=> b!6713251 (= e!4057091 (isUnion!1342 lt!2435900))))

(declare-fun b!6713252 () Bool)

(declare-fun e!4057094 () Regex!16532)

(assert (=> b!6713252 (= e!4057090 e!4057094)))

(declare-fun c!1244784 () Bool)

(assert (=> b!6713252 (= c!1244784 (is-Cons!65771 (unfocusZipperList!1953 zl!343)))))

(assert (=> d!2110482 e!4057092))

(declare-fun res!2747204 () Bool)

(assert (=> d!2110482 (=> (not res!2747204) (not e!4057092))))

(assert (=> d!2110482 (= res!2747204 (validRegex!8268 lt!2435900))))

(assert (=> d!2110482 (= lt!2435900 e!4057090)))

(declare-fun c!1244781 () Bool)

(declare-fun e!4057089 () Bool)

(assert (=> d!2110482 (= c!1244781 e!4057089)))

(declare-fun res!2747205 () Bool)

(assert (=> d!2110482 (=> (not res!2747205) (not e!4057089))))

(assert (=> d!2110482 (= res!2747205 (is-Cons!65771 (unfocusZipperList!1953 zl!343)))))

(assert (=> d!2110482 (forall!15738 (unfocusZipperList!1953 zl!343) lambda!376320)))

(assert (=> d!2110482 (= (generalisedUnion!2376 (unfocusZipperList!1953 zl!343)) lt!2435900)))

(declare-fun b!6713253 () Bool)

(assert (=> b!6713253 (= e!4057089 (isEmpty!38097 (t!379572 (unfocusZipperList!1953 zl!343))))))

(declare-fun b!6713254 () Bool)

(assert (=> b!6713254 (= e!4057091 (= lt!2435900 (head!13504 (unfocusZipperList!1953 zl!343))))))

(declare-fun b!6713255 () Bool)

(assert (=> b!6713255 (= e!4057094 (Union!16532 (h!72219 (unfocusZipperList!1953 zl!343)) (generalisedUnion!2376 (t!379572 (unfocusZipperList!1953 zl!343)))))))

(declare-fun b!6713256 () Bool)

(declare-fun isEmptyLang!1912 (Regex!16532) Bool)

(assert (=> b!6713256 (= e!4057093 (isEmptyLang!1912 lt!2435900))))

(declare-fun b!6713257 () Bool)

(assert (=> b!6713257 (= e!4057093 e!4057091)))

(declare-fun c!1244783 () Bool)

(assert (=> b!6713257 (= c!1244783 (isEmpty!38097 (tail!12589 (unfocusZipperList!1953 zl!343))))))

(declare-fun b!6713258 () Bool)

(assert (=> b!6713258 (= e!4057094 EmptyLang!16532)))

(assert (= (and d!2110482 res!2747205) b!6713253))

(assert (= (and d!2110482 c!1244781) b!6713250))

(assert (= (and d!2110482 (not c!1244781)) b!6713252))

(assert (= (and b!6713252 c!1244784) b!6713255))

(assert (= (and b!6713252 (not c!1244784)) b!6713258))

(assert (= (and d!2110482 res!2747204) b!6713249))

(assert (= (and b!6713249 c!1244782) b!6713256))

(assert (= (and b!6713249 (not c!1244782)) b!6713257))

(assert (= (and b!6713257 c!1244783) b!6713254))

(assert (= (and b!6713257 (not c!1244783)) b!6713251))

(declare-fun m!7478156 () Bool)

(assert (=> b!6713256 m!7478156))

(assert (=> b!6713249 m!7477956))

(declare-fun m!7478158 () Bool)

(assert (=> b!6713249 m!7478158))

(assert (=> b!6713257 m!7477956))

(declare-fun m!7478160 () Bool)

(assert (=> b!6713257 m!7478160))

(assert (=> b!6713257 m!7478160))

(declare-fun m!7478162 () Bool)

(assert (=> b!6713257 m!7478162))

(declare-fun m!7478164 () Bool)

(assert (=> d!2110482 m!7478164))

(assert (=> d!2110482 m!7477956))

(declare-fun m!7478166 () Bool)

(assert (=> d!2110482 m!7478166))

(assert (=> b!6713254 m!7477956))

(declare-fun m!7478168 () Bool)

(assert (=> b!6713254 m!7478168))

(declare-fun m!7478170 () Bool)

(assert (=> b!6713251 m!7478170))

(declare-fun m!7478172 () Bool)

(assert (=> b!6713253 m!7478172))

(declare-fun m!7478174 () Bool)

(assert (=> b!6713255 m!7478174))

(assert (=> b!6712889 d!2110482))

(declare-fun bs!1786675 () Bool)

(declare-fun d!2110484 () Bool)

(assert (= bs!1786675 (and d!2110484 d!2110460)))

(declare-fun lambda!376323 () Int)

(assert (=> bs!1786675 (= lambda!376323 lambda!376307)))

(declare-fun bs!1786676 () Bool)

(assert (= bs!1786676 (and d!2110484 d!2110466)))

(assert (=> bs!1786676 (= lambda!376323 lambda!376308)))

(declare-fun bs!1786677 () Bool)

(assert (= bs!1786677 (and d!2110484 d!2110480)))

(assert (=> bs!1786677 (= lambda!376323 lambda!376317)))

(declare-fun bs!1786678 () Bool)

(assert (= bs!1786678 (and d!2110484 d!2110482)))

(assert (=> bs!1786678 (= lambda!376323 lambda!376320)))

(declare-fun lt!2435906 () List!65895)

(assert (=> d!2110484 (forall!15738 lt!2435906 lambda!376323)))

(declare-fun e!4057102 () List!65895)

(assert (=> d!2110484 (= lt!2435906 e!4057102)))

(declare-fun c!1244789 () Bool)

(assert (=> d!2110484 (= c!1244789 (is-Cons!65772 zl!343))))

(assert (=> d!2110484 (= (unfocusZipperList!1953 zl!343) lt!2435906)))

(declare-fun b!6713272 () Bool)

(assert (=> b!6713272 (= e!4057102 (Cons!65771 (generalisedConcat!2129 (exprs!6416 (h!72220 zl!343))) (unfocusZipperList!1953 (t!379573 zl!343))))))

(declare-fun b!6713273 () Bool)

(assert (=> b!6713273 (= e!4057102 Nil!65771)))

(assert (= (and d!2110484 c!1244789) b!6713272))

(assert (= (and d!2110484 (not c!1244789)) b!6713273))

(declare-fun m!7478196 () Bool)

(assert (=> d!2110484 m!7478196))

(assert (=> b!6713272 m!7477962))

(declare-fun m!7478198 () Bool)

(assert (=> b!6713272 m!7478198))

(assert (=> b!6712889 d!2110484))

(declare-fun d!2110488 () Bool)

(declare-fun lt!2435909 () Regex!16532)

(assert (=> d!2110488 (validRegex!8268 lt!2435909)))

(assert (=> d!2110488 (= lt!2435909 (generalisedUnion!2376 (unfocusZipperList!1953 zl!343)))))

(assert (=> d!2110488 (= (unfocusZipper!2274 zl!343) lt!2435909)))

(declare-fun bs!1786679 () Bool)

(assert (= bs!1786679 d!2110488))

(declare-fun m!7478200 () Bool)

(assert (=> bs!1786679 m!7478200))

(assert (=> bs!1786679 m!7477956))

(assert (=> bs!1786679 m!7477956))

(assert (=> bs!1786679 m!7477958))

(assert (=> b!6712898 d!2110488))

(declare-fun b!6713281 () Bool)

(declare-fun e!4057108 () Bool)

(declare-fun tp!1839750 () Bool)

(assert (=> b!6713281 (= e!4057108 tp!1839750)))

(declare-fun b!6713280 () Bool)

(declare-fun e!4057107 () Bool)

(declare-fun tp!1839751 () Bool)

(assert (=> b!6713280 (= e!4057107 (and (inv!84578 (h!72220 (t!379573 zl!343))) e!4057108 tp!1839751))))

(assert (=> b!6712899 (= tp!1839706 e!4057107)))

(assert (= b!6713280 b!6713281))

(assert (= (and b!6712899 (is-Cons!65772 (t!379573 zl!343))) b!6713280))

(declare-fun m!7478202 () Bool)

(assert (=> b!6713280 m!7478202))

(declare-fun b!6713286 () Bool)

(declare-fun e!4057111 () Bool)

(declare-fun tp!1839756 () Bool)

(declare-fun tp!1839757 () Bool)

(assert (=> b!6713286 (= e!4057111 (and tp!1839756 tp!1839757))))

(assert (=> b!6712896 (= tp!1839707 e!4057111)))

(assert (= (and b!6712896 (is-Cons!65771 (exprs!6416 setElem!45726))) b!6713286))

(declare-fun b!6713299 () Bool)

(declare-fun e!4057114 () Bool)

(declare-fun tp!1839771 () Bool)

(assert (=> b!6713299 (= e!4057114 tp!1839771)))

(declare-fun b!6713298 () Bool)

(declare-fun tp!1839772 () Bool)

(declare-fun tp!1839769 () Bool)

(assert (=> b!6713298 (= e!4057114 (and tp!1839772 tp!1839769))))

(assert (=> b!6712901 (= tp!1839711 e!4057114)))

(declare-fun b!6713300 () Bool)

(declare-fun tp!1839768 () Bool)

(declare-fun tp!1839770 () Bool)

(assert (=> b!6713300 (= e!4057114 (and tp!1839768 tp!1839770))))

(declare-fun b!6713297 () Bool)

(assert (=> b!6713297 (= e!4057114 tp_is_empty!42317)))

(assert (= (and b!6712901 (is-ElementMatch!16532 (regOne!33577 r!7292))) b!6713297))

(assert (= (and b!6712901 (is-Concat!25377 (regOne!33577 r!7292))) b!6713298))

(assert (= (and b!6712901 (is-Star!16532 (regOne!33577 r!7292))) b!6713299))

(assert (= (and b!6712901 (is-Union!16532 (regOne!33577 r!7292))) b!6713300))

(declare-fun b!6713303 () Bool)

(declare-fun e!4057115 () Bool)

(declare-fun tp!1839776 () Bool)

(assert (=> b!6713303 (= e!4057115 tp!1839776)))

(declare-fun b!6713302 () Bool)

(declare-fun tp!1839777 () Bool)

(declare-fun tp!1839774 () Bool)

(assert (=> b!6713302 (= e!4057115 (and tp!1839777 tp!1839774))))

(assert (=> b!6712901 (= tp!1839708 e!4057115)))

(declare-fun b!6713304 () Bool)

(declare-fun tp!1839773 () Bool)

(declare-fun tp!1839775 () Bool)

(assert (=> b!6713304 (= e!4057115 (and tp!1839773 tp!1839775))))

(declare-fun b!6713301 () Bool)

(assert (=> b!6713301 (= e!4057115 tp_is_empty!42317)))

(assert (= (and b!6712901 (is-ElementMatch!16532 (regTwo!33577 r!7292))) b!6713301))

(assert (= (and b!6712901 (is-Concat!25377 (regTwo!33577 r!7292))) b!6713302))

(assert (= (and b!6712901 (is-Star!16532 (regTwo!33577 r!7292))) b!6713303))

(assert (= (and b!6712901 (is-Union!16532 (regTwo!33577 r!7292))) b!6713304))

(declare-fun condSetEmpty!45732 () Bool)

(assert (=> setNonEmpty!45726 (= condSetEmpty!45732 (= setRest!45726 (as set.empty (Set Context!11832))))))

(declare-fun setRes!45732 () Bool)

(assert (=> setNonEmpty!45726 (= tp!1839710 setRes!45732)))

(declare-fun setIsEmpty!45732 () Bool)

(assert (=> setIsEmpty!45732 setRes!45732))

(declare-fun e!4057118 () Bool)

(declare-fun tp!1839782 () Bool)

(declare-fun setNonEmpty!45732 () Bool)

(declare-fun setElem!45732 () Context!11832)

(assert (=> setNonEmpty!45732 (= setRes!45732 (and tp!1839782 (inv!84578 setElem!45732) e!4057118))))

(declare-fun setRest!45732 () (Set Context!11832))

(assert (=> setNonEmpty!45732 (= setRest!45726 (set.union (set.insert setElem!45732 (as set.empty (Set Context!11832))) setRest!45732))))

(declare-fun b!6713309 () Bool)

(declare-fun tp!1839783 () Bool)

(assert (=> b!6713309 (= e!4057118 tp!1839783)))

(assert (= (and setNonEmpty!45726 condSetEmpty!45732) setIsEmpty!45732))

(assert (= (and setNonEmpty!45726 (not condSetEmpty!45732)) setNonEmpty!45732))

(assert (= setNonEmpty!45732 b!6713309))

(declare-fun m!7478204 () Bool)

(assert (=> setNonEmpty!45732 m!7478204))

(declare-fun b!6713314 () Bool)

(declare-fun e!4057121 () Bool)

(declare-fun tp!1839786 () Bool)

(assert (=> b!6713314 (= e!4057121 (and tp_is_empty!42317 tp!1839786))))

(assert (=> b!6712893 (= tp!1839715 e!4057121)))

(assert (= (and b!6712893 (is-Cons!65773 (t!379574 s!2326))) b!6713314))

(declare-fun b!6713317 () Bool)

(declare-fun e!4057122 () Bool)

(declare-fun tp!1839790 () Bool)

(assert (=> b!6713317 (= e!4057122 tp!1839790)))

(declare-fun b!6713316 () Bool)

(declare-fun tp!1839791 () Bool)

(declare-fun tp!1839788 () Bool)

(assert (=> b!6713316 (= e!4057122 (and tp!1839791 tp!1839788))))

(assert (=> b!6712894 (= tp!1839713 e!4057122)))

(declare-fun b!6713318 () Bool)

(declare-fun tp!1839787 () Bool)

(declare-fun tp!1839789 () Bool)

(assert (=> b!6713318 (= e!4057122 (and tp!1839787 tp!1839789))))

(declare-fun b!6713315 () Bool)

(assert (=> b!6713315 (= e!4057122 tp_is_empty!42317)))

(assert (= (and b!6712894 (is-ElementMatch!16532 (reg!16861 r!7292))) b!6713315))

(assert (= (and b!6712894 (is-Concat!25377 (reg!16861 r!7292))) b!6713316))

(assert (= (and b!6712894 (is-Star!16532 (reg!16861 r!7292))) b!6713317))

(assert (= (and b!6712894 (is-Union!16532 (reg!16861 r!7292))) b!6713318))

(declare-fun b!6713319 () Bool)

(declare-fun e!4057123 () Bool)

(declare-fun tp!1839792 () Bool)

(declare-fun tp!1839793 () Bool)

(assert (=> b!6713319 (= e!4057123 (and tp!1839792 tp!1839793))))

(assert (=> b!6712888 (= tp!1839714 e!4057123)))

(assert (= (and b!6712888 (is-Cons!65771 (exprs!6416 (h!72220 zl!343)))) b!6713319))

(declare-fun b!6713322 () Bool)

(declare-fun e!4057124 () Bool)

(declare-fun tp!1839797 () Bool)

(assert (=> b!6713322 (= e!4057124 tp!1839797)))

(declare-fun b!6713321 () Bool)

(declare-fun tp!1839798 () Bool)

(declare-fun tp!1839795 () Bool)

(assert (=> b!6713321 (= e!4057124 (and tp!1839798 tp!1839795))))

(assert (=> b!6712902 (= tp!1839712 e!4057124)))

(declare-fun b!6713323 () Bool)

(declare-fun tp!1839794 () Bool)

(declare-fun tp!1839796 () Bool)

(assert (=> b!6713323 (= e!4057124 (and tp!1839794 tp!1839796))))

(declare-fun b!6713320 () Bool)

(assert (=> b!6713320 (= e!4057124 tp_is_empty!42317)))

(assert (= (and b!6712902 (is-ElementMatch!16532 (regOne!33576 r!7292))) b!6713320))

(assert (= (and b!6712902 (is-Concat!25377 (regOne!33576 r!7292))) b!6713321))

(assert (= (and b!6712902 (is-Star!16532 (regOne!33576 r!7292))) b!6713322))

(assert (= (and b!6712902 (is-Union!16532 (regOne!33576 r!7292))) b!6713323))

(declare-fun b!6713326 () Bool)

(declare-fun e!4057125 () Bool)

(declare-fun tp!1839802 () Bool)

(assert (=> b!6713326 (= e!4057125 tp!1839802)))

(declare-fun b!6713325 () Bool)

(declare-fun tp!1839803 () Bool)

(declare-fun tp!1839800 () Bool)

(assert (=> b!6713325 (= e!4057125 (and tp!1839803 tp!1839800))))

(assert (=> b!6712902 (= tp!1839709 e!4057125)))

(declare-fun b!6713327 () Bool)

(declare-fun tp!1839799 () Bool)

(declare-fun tp!1839801 () Bool)

(assert (=> b!6713327 (= e!4057125 (and tp!1839799 tp!1839801))))

(declare-fun b!6713324 () Bool)

(assert (=> b!6713324 (= e!4057125 tp_is_empty!42317)))

(assert (= (and b!6712902 (is-ElementMatch!16532 (regTwo!33576 r!7292))) b!6713324))

(assert (= (and b!6712902 (is-Concat!25377 (regTwo!33576 r!7292))) b!6713325))

(assert (= (and b!6712902 (is-Star!16532 (regTwo!33576 r!7292))) b!6713326))

(assert (= (and b!6712902 (is-Union!16532 (regTwo!33576 r!7292))) b!6713327))

(push 1)

(assert (not b!6713220))

(assert (not setNonEmpty!45732))

(assert (not b!6713057))

(assert (not b!6713323))

(assert (not d!2110456))

(assert (not bm!605982))

(assert (not b!6713327))

(assert (not b!6713019))

(assert (not b!6713317))

(assert (not b!6713214))

(assert (not d!2110460))

(assert (not b!6713280))

(assert (not b!6713055))

(assert (not b!6713058))

(assert (not b!6713173))

(assert (not d!2110442))

(assert (not b!6713316))

(assert (not b!6713314))

(assert (not d!2110458))

(assert (not bm!606000))

(assert (not b!6713125))

(assert (not b!6713255))

(assert (not b!6713257))

(assert (not b!6713309))

(assert (not b!6713253))

(assert (not b!6713121))

(assert (not bm!605977))

(assert (not b!6713249))

(assert (not bm!605991))

(assert (not b!6713319))

(assert (not b!6713298))

(assert (not d!2110452))

(assert (not bm!605980))

(assert (not b!6713254))

(assert (not b!6713119))

(assert (not b!6713318))

(assert (not b!6713117))

(assert (not d!2110466))

(assert (not b!6713053))

(assert (not b!6713256))

(assert (not d!2110482))

(assert (not d!2110436))

(assert (not d!2110454))

(assert (not b!6713321))

(assert (not b!6713272))

(assert (not b!6713050))

(assert (not b!6713286))

(assert (not b!6712978))

(assert (not bm!605979))

(assert (not b!6713299))

(assert (not d!2110478))

(assert (not b!6713304))

(assert (not b!6713322))

(assert (not b!6713218))

(assert (not b!6713300))

(assert (not b!6713251))

(assert (not d!2110484))

(assert (not b!6713212))

(assert (not b!6713325))

(assert (not b!6713172))

(assert (not bm!605999))

(assert (not b!6713303))

(assert (not b!6713217))

(assert (not b!6713215))

(assert (not b!6713115))

(assert (not d!2110440))

(assert (not b!6713302))

(assert (not b!6713126))

(assert (not d!2110488))

(assert (not d!2110480))

(assert (not b!6713216))

(assert (not b!6713326))

(assert (not d!2110468))

(assert tp_is_empty!42317)

(assert (not b!6713054))

(assert (not b!6713281))

(assert (not b!6712997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

