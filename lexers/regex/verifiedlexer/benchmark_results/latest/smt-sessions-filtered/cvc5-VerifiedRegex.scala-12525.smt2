; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695878 () Bool)

(assert start!695878)

(declare-fun b!7139900 () Bool)

(assert (=> b!7139900 true))

(declare-fun b!7139898 () Bool)

(declare-fun e!4290901 () Bool)

(declare-fun e!4290900 () Bool)

(assert (=> b!7139898 (= e!4290901 (not e!4290900))))

(declare-fun res!2913261 () Bool)

(assert (=> b!7139898 (=> res!2913261 e!4290900)))

(declare-fun lt!2566967 () Bool)

(declare-datatypes ((C!36590 0))(
  ( (C!36591 (val!28243 Int)) )
))
(declare-datatypes ((Regex!18158 0))(
  ( (ElementMatch!18158 (c!1331459 C!36590)) (Concat!27003 (regOne!36828 Regex!18158) (regTwo!36828 Regex!18158)) (EmptyExpr!18158) (Star!18158 (reg!18487 Regex!18158)) (EmptyLang!18158) (Union!18158 (regOne!36829 Regex!18158) (regTwo!36829 Regex!18158)) )
))
(declare-datatypes ((List!69394 0))(
  ( (Nil!69270) (Cons!69270 (h!75718 Regex!18158) (t!383411 List!69394)) )
))
(declare-fun lt!2566964 () List!69394)

(declare-fun lambda!434417 () Int)

(declare-fun exists!3930 (List!69394 Int) Bool)

(assert (=> b!7139898 (= res!2913261 (not (= lt!2566967 (exists!3930 lt!2566964 lambda!434417))))))

(assert (=> b!7139898 (= lt!2566967 (exists!3930 lt!2566964 lambda!434417))))

(declare-fun lt!2566965 () Regex!18158)

(declare-fun nullable!7677 (Regex!18158) Bool)

(assert (=> b!7139898 (= lt!2566967 (nullable!7677 lt!2566965))))

(declare-datatypes ((Unit!163175 0))(
  ( (Unit!163176) )
))
(declare-fun lt!2566962 () Unit!163175)

(declare-fun nullableGenUnionSpec!45 (Regex!18158 List!69394) Unit!163175)

(assert (=> b!7139898 (= lt!2566962 (nullableGenUnionSpec!45 lt!2566965 lt!2566964))))

(declare-fun b!7139899 () Bool)

(declare-fun e!4290903 () Bool)

(declare-fun tp_is_empty!45953 () Bool)

(assert (=> b!7139899 (= e!4290903 tp_is_empty!45953)))

(declare-datatypes ((Context!14304 0))(
  ( (Context!14305 (exprs!7652 List!69394)) )
))
(declare-fun setElem!52510 () Context!14304)

(declare-fun setRes!52510 () Bool)

(declare-fun tp!1969030 () Bool)

(declare-fun e!4290899 () Bool)

(declare-fun setNonEmpty!52510 () Bool)

(declare-fun inv!88460 (Context!14304) Bool)

(assert (=> setNonEmpty!52510 (= setRes!52510 (and tp!1969030 (inv!88460 setElem!52510) e!4290899))))

(declare-fun z!3189 () (Set Context!14304))

(declare-fun setRest!52510 () (Set Context!14304))

(assert (=> setNonEmpty!52510 (= z!3189 (set.union (set.insert setElem!52510 (as set.empty (Set Context!14304))) setRest!52510))))

(declare-fun e!4290898 () Bool)

(declare-fun lambda!434418 () Int)

(declare-fun exists!3931 ((Set Context!14304) Int) Bool)

(assert (=> b!7139900 (= e!4290898 (exists!3931 z!3189 lambda!434418))))

(declare-datatypes ((List!69395 0))(
  ( (Nil!69271) (Cons!69271 (h!75719 Context!14304) (t!383412 List!69395)) )
))
(declare-fun lt!2566963 () List!69395)

(declare-fun exists!3932 (List!69395 Int) Bool)

(assert (=> b!7139900 (exists!3932 lt!2566963 lambda!434418)))

(declare-fun lt!2566961 () Unit!163175)

(declare-fun lt!2566966 () Regex!18158)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!17 (List!69395 Regex!18158) Unit!163175)

(assert (=> b!7139900 (= lt!2566961 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!17 lt!2566963 lt!2566966))))

(declare-fun b!7139901 () Bool)

(declare-fun e!4290902 () Bool)

(assert (=> b!7139901 (= e!4290902 e!4290901)))

(declare-fun res!2913255 () Bool)

(assert (=> b!7139901 (=> (not res!2913255) (not e!4290901))))

(declare-fun r!11483 () Regex!18158)

(assert (=> b!7139901 (= res!2913255 (= r!11483 lt!2566965))))

(declare-fun generalisedUnion!2663 (List!69394) Regex!18158)

(assert (=> b!7139901 (= lt!2566965 (generalisedUnion!2663 lt!2566964))))

(declare-fun unfocusZipperList!2199 (List!69395) List!69394)

(assert (=> b!7139901 (= lt!2566964 (unfocusZipperList!2199 lt!2566963))))

(declare-fun b!7139902 () Bool)

(declare-fun e!4290897 () Bool)

(assert (=> b!7139902 (= e!4290897 e!4290902)))

(declare-fun res!2913260 () Bool)

(assert (=> b!7139902 (=> (not res!2913260) (not e!4290902))))

(declare-fun unfocusZipper!2506 (List!69395) Regex!18158)

(assert (=> b!7139902 (= res!2913260 (= r!11483 (unfocusZipper!2506 lt!2566963)))))

(declare-fun toList!11189 ((Set Context!14304)) List!69395)

(assert (=> b!7139902 (= lt!2566963 (toList!11189 z!3189))))

(declare-fun res!2913254 () Bool)

(assert (=> start!695878 (=> (not res!2913254) (not e!4290897))))

(declare-fun validRegex!9325 (Regex!18158) Bool)

(assert (=> start!695878 (= res!2913254 (validRegex!9325 r!11483))))

(assert (=> start!695878 e!4290897))

(assert (=> start!695878 e!4290903))

(declare-fun condSetEmpty!52510 () Bool)

(assert (=> start!695878 (= condSetEmpty!52510 (= z!3189 (as set.empty (Set Context!14304))))))

(assert (=> start!695878 setRes!52510))

(declare-fun b!7139903 () Bool)

(declare-fun tp!1969029 () Bool)

(assert (=> b!7139903 (= e!4290899 tp!1969029)))

(declare-fun b!7139904 () Bool)

(declare-fun tp!1969031 () Bool)

(declare-fun tp!1969033 () Bool)

(assert (=> b!7139904 (= e!4290903 (and tp!1969031 tp!1969033))))

(declare-fun b!7139905 () Bool)

(declare-fun res!2913256 () Bool)

(assert (=> b!7139905 (=> res!2913256 e!4290898)))

(declare-fun contains!20598 (List!69394 Regex!18158) Bool)

(assert (=> b!7139905 (= res!2913256 (not (contains!20598 lt!2566964 lt!2566966)))))

(declare-fun b!7139906 () Bool)

(declare-fun tp!1969032 () Bool)

(assert (=> b!7139906 (= e!4290903 tp!1969032)))

(declare-fun b!7139907 () Bool)

(declare-fun tp!1969034 () Bool)

(declare-fun tp!1969028 () Bool)

(assert (=> b!7139907 (= e!4290903 (and tp!1969034 tp!1969028))))

(declare-fun b!7139908 () Bool)

(assert (=> b!7139908 (= e!4290900 e!4290898)))

(declare-fun res!2913259 () Bool)

(assert (=> b!7139908 (=> res!2913259 e!4290898)))

(assert (=> b!7139908 (= res!2913259 (not (nullable!7677 lt!2566966)))))

(declare-fun getWitness!1918 (List!69394 Int) Regex!18158)

(assert (=> b!7139908 (= lt!2566966 (getWitness!1918 lt!2566964 lambda!434417))))

(declare-fun setIsEmpty!52510 () Bool)

(assert (=> setIsEmpty!52510 setRes!52510))

(declare-fun b!7139909 () Bool)

(declare-fun res!2913257 () Bool)

(assert (=> b!7139909 (=> res!2913257 e!4290900)))

(assert (=> b!7139909 (= res!2913257 (not (exists!3930 lt!2566964 lambda!434417)))))

(declare-fun b!7139910 () Bool)

(declare-fun res!2913258 () Bool)

(assert (=> b!7139910 (=> res!2913258 e!4290900)))

(assert (=> b!7139910 (= res!2913258 (not lt!2566967))))

(assert (= (and start!695878 res!2913254) b!7139902))

(assert (= (and b!7139902 res!2913260) b!7139901))

(assert (= (and b!7139901 res!2913255) b!7139898))

(assert (= (and b!7139898 (not res!2913261)) b!7139910))

(assert (= (and b!7139910 (not res!2913258)) b!7139909))

(assert (= (and b!7139909 (not res!2913257)) b!7139908))

(assert (= (and b!7139908 (not res!2913259)) b!7139905))

(assert (= (and b!7139905 (not res!2913256)) b!7139900))

(assert (= (and start!695878 (is-ElementMatch!18158 r!11483)) b!7139899))

(assert (= (and start!695878 (is-Concat!27003 r!11483)) b!7139907))

(assert (= (and start!695878 (is-Star!18158 r!11483)) b!7139906))

(assert (= (and start!695878 (is-Union!18158 r!11483)) b!7139904))

(assert (= (and start!695878 condSetEmpty!52510) setIsEmpty!52510))

(assert (= (and start!695878 (not condSetEmpty!52510)) setNonEmpty!52510))

(assert (= setNonEmpty!52510 b!7139903))

(declare-fun m!7854930 () Bool)

(assert (=> start!695878 m!7854930))

(declare-fun m!7854932 () Bool)

(assert (=> b!7139908 m!7854932))

(declare-fun m!7854934 () Bool)

(assert (=> b!7139908 m!7854934))

(declare-fun m!7854936 () Bool)

(assert (=> b!7139900 m!7854936))

(declare-fun m!7854938 () Bool)

(assert (=> b!7139900 m!7854938))

(declare-fun m!7854940 () Bool)

(assert (=> b!7139900 m!7854940))

(declare-fun m!7854942 () Bool)

(assert (=> b!7139902 m!7854942))

(declare-fun m!7854944 () Bool)

(assert (=> b!7139902 m!7854944))

(declare-fun m!7854946 () Bool)

(assert (=> setNonEmpty!52510 m!7854946))

(declare-fun m!7854948 () Bool)

(assert (=> b!7139905 m!7854948))

(declare-fun m!7854950 () Bool)

(assert (=> b!7139901 m!7854950))

(declare-fun m!7854952 () Bool)

(assert (=> b!7139901 m!7854952))

(declare-fun m!7854954 () Bool)

(assert (=> b!7139898 m!7854954))

(assert (=> b!7139898 m!7854954))

(declare-fun m!7854956 () Bool)

(assert (=> b!7139898 m!7854956))

(declare-fun m!7854958 () Bool)

(assert (=> b!7139898 m!7854958))

(assert (=> b!7139909 m!7854954))

(push 1)

(assert (not b!7139898))

(assert (not start!695878))

(assert (not setNonEmpty!52510))

(assert (not b!7139902))

(assert (not b!7139903))

(assert (not b!7139909))

(assert (not b!7139908))

(assert tp_is_empty!45953)

(assert (not b!7139907))

(assert (not b!7139905))

(assert (not b!7139901))

(assert (not b!7139906))

(assert (not b!7139900))

(assert (not b!7139904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7139972 () Bool)

(declare-fun res!2913296 () Bool)

(declare-fun e!4290942 () Bool)

(assert (=> b!7139972 (=> res!2913296 e!4290942)))

(assert (=> b!7139972 (= res!2913296 (not (is-Concat!27003 r!11483)))))

(declare-fun e!4290944 () Bool)

(assert (=> b!7139972 (= e!4290944 e!4290942)))

(declare-fun d!2227114 () Bool)

(declare-fun res!2913299 () Bool)

(declare-fun e!4290945 () Bool)

(assert (=> d!2227114 (=> res!2913299 e!4290945)))

(assert (=> d!2227114 (= res!2913299 (is-ElementMatch!18158 r!11483))))

(assert (=> d!2227114 (= (validRegex!9325 r!11483) e!4290945)))

(declare-fun c!1331470 () Bool)

(declare-fun c!1331469 () Bool)

(declare-fun call!651143 () Bool)

(declare-fun bm!651138 () Bool)

(assert (=> bm!651138 (= call!651143 (validRegex!9325 (ite c!1331470 (reg!18487 r!11483) (ite c!1331469 (regOne!36829 r!11483) (regOne!36828 r!11483)))))))

(declare-fun b!7139973 () Bool)

(declare-fun e!4290943 () Bool)

(assert (=> b!7139973 (= e!4290945 e!4290943)))

(assert (=> b!7139973 (= c!1331470 (is-Star!18158 r!11483))))

(declare-fun b!7139974 () Bool)

(declare-fun e!4290940 () Bool)

(declare-fun call!651145 () Bool)

(assert (=> b!7139974 (= e!4290940 call!651145)))

(declare-fun bm!651139 () Bool)

(declare-fun call!651144 () Bool)

(assert (=> bm!651139 (= call!651144 call!651143)))

(declare-fun b!7139975 () Bool)

(declare-fun e!4290941 () Bool)

(assert (=> b!7139975 (= e!4290941 call!651145)))

(declare-fun b!7139976 () Bool)

(declare-fun e!4290939 () Bool)

(assert (=> b!7139976 (= e!4290943 e!4290939)))

(declare-fun res!2913297 () Bool)

(assert (=> b!7139976 (= res!2913297 (not (nullable!7677 (reg!18487 r!11483))))))

(assert (=> b!7139976 (=> (not res!2913297) (not e!4290939))))

(declare-fun bm!651140 () Bool)

(assert (=> bm!651140 (= call!651145 (validRegex!9325 (ite c!1331469 (regTwo!36829 r!11483) (regTwo!36828 r!11483))))))

(declare-fun b!7139977 () Bool)

(assert (=> b!7139977 (= e!4290942 e!4290940)))

(declare-fun res!2913300 () Bool)

(assert (=> b!7139977 (=> (not res!2913300) (not e!4290940))))

(assert (=> b!7139977 (= res!2913300 call!651144)))

(declare-fun b!7139978 () Bool)

(assert (=> b!7139978 (= e!4290939 call!651143)))

(declare-fun b!7139979 () Bool)

(declare-fun res!2913298 () Bool)

(assert (=> b!7139979 (=> (not res!2913298) (not e!4290941))))

(assert (=> b!7139979 (= res!2913298 call!651144)))

(assert (=> b!7139979 (= e!4290944 e!4290941)))

(declare-fun b!7139980 () Bool)

(assert (=> b!7139980 (= e!4290943 e!4290944)))

(assert (=> b!7139980 (= c!1331469 (is-Union!18158 r!11483))))

(assert (= (and d!2227114 (not res!2913299)) b!7139973))

(assert (= (and b!7139973 c!1331470) b!7139976))

(assert (= (and b!7139973 (not c!1331470)) b!7139980))

(assert (= (and b!7139976 res!2913297) b!7139978))

(assert (= (and b!7139980 c!1331469) b!7139979))

(assert (= (and b!7139980 (not c!1331469)) b!7139972))

(assert (= (and b!7139979 res!2913298) b!7139975))

(assert (= (and b!7139972 (not res!2913296)) b!7139977))

(assert (= (and b!7139977 res!2913300) b!7139974))

(assert (= (or b!7139975 b!7139974) bm!651140))

(assert (= (or b!7139979 b!7139977) bm!651139))

(assert (= (or b!7139978 bm!651139) bm!651138))

(declare-fun m!7854990 () Bool)

(assert (=> bm!651138 m!7854990))

(declare-fun m!7854992 () Bool)

(assert (=> b!7139976 m!7854992))

(declare-fun m!7854994 () Bool)

(assert (=> bm!651140 m!7854994))

(assert (=> start!695878 d!2227114))

(declare-fun d!2227118 () Bool)

(declare-fun lt!2566994 () Regex!18158)

(assert (=> d!2227118 (validRegex!9325 lt!2566994)))

(assert (=> d!2227118 (= lt!2566994 (generalisedUnion!2663 (unfocusZipperList!2199 lt!2566963)))))

(assert (=> d!2227118 (= (unfocusZipper!2506 lt!2566963) lt!2566994)))

(declare-fun bs!1888148 () Bool)

(assert (= bs!1888148 d!2227118))

(declare-fun m!7855000 () Bool)

(assert (=> bs!1888148 m!7855000))

(assert (=> bs!1888148 m!7854952))

(assert (=> bs!1888148 m!7854952))

(declare-fun m!7855002 () Bool)

(assert (=> bs!1888148 m!7855002))

(assert (=> b!7139902 d!2227118))

(declare-fun d!2227122 () Bool)

(declare-fun e!4290948 () Bool)

(assert (=> d!2227122 e!4290948))

(declare-fun res!2913303 () Bool)

(assert (=> d!2227122 (=> (not res!2913303) (not e!4290948))))

(declare-fun lt!2566997 () List!69395)

(declare-fun noDuplicate!2824 (List!69395) Bool)

(assert (=> d!2227122 (= res!2913303 (noDuplicate!2824 lt!2566997))))

(declare-fun choose!55205 ((Set Context!14304)) List!69395)

(assert (=> d!2227122 (= lt!2566997 (choose!55205 z!3189))))

(assert (=> d!2227122 (= (toList!11189 z!3189) lt!2566997)))

(declare-fun b!7139983 () Bool)

(declare-fun content!14190 (List!69395) (Set Context!14304))

(assert (=> b!7139983 (= e!4290948 (= (content!14190 lt!2566997) z!3189))))

(assert (= (and d!2227122 res!2913303) b!7139983))

(declare-fun m!7855004 () Bool)

(assert (=> d!2227122 m!7855004))

(declare-fun m!7855006 () Bool)

(assert (=> d!2227122 m!7855006))

(declare-fun m!7855008 () Bool)

(assert (=> b!7139983 m!7855008))

(assert (=> b!7139902 d!2227122))

(declare-fun bs!1888149 () Bool)

(declare-fun d!2227124 () Bool)

(assert (= bs!1888149 (and d!2227124 b!7139898)))

(declare-fun lambda!434435 () Int)

(assert (=> bs!1888149 (not (= lambda!434435 lambda!434417))))

(assert (=> d!2227124 true))

(declare-fun order!28539 () Int)

(declare-fun dynLambda!28181 (Int Int) Int)

(assert (=> d!2227124 (< (dynLambda!28181 order!28539 lambda!434417) (dynLambda!28181 order!28539 lambda!434435))))

(declare-fun forall!16992 (List!69394 Int) Bool)

(assert (=> d!2227124 (= (exists!3930 lt!2566964 lambda!434417) (not (forall!16992 lt!2566964 lambda!434435)))))

(declare-fun bs!1888150 () Bool)

(assert (= bs!1888150 d!2227124))

(declare-fun m!7855010 () Bool)

(assert (=> bs!1888150 m!7855010))

(assert (=> b!7139898 d!2227124))

(declare-fun d!2227126 () Bool)

(declare-fun nullableFct!2983 (Regex!18158) Bool)

(assert (=> d!2227126 (= (nullable!7677 lt!2566965) (nullableFct!2983 lt!2566965))))

(declare-fun bs!1888151 () Bool)

(assert (= bs!1888151 d!2227126))

(declare-fun m!7855018 () Bool)

(assert (=> bs!1888151 m!7855018))

(assert (=> b!7139898 d!2227126))

(declare-fun bs!1888152 () Bool)

(declare-fun d!2227130 () Bool)

(assert (= bs!1888152 (and d!2227130 b!7139898)))

(declare-fun lambda!434442 () Int)

(assert (=> bs!1888152 (not (= lambda!434442 lambda!434417))))

(declare-fun bs!1888153 () Bool)

(assert (= bs!1888153 (and d!2227130 d!2227124)))

(assert (=> bs!1888153 (not (= lambda!434442 lambda!434435))))

(declare-fun lambda!434444 () Int)

(assert (=> bs!1888152 (= lambda!434444 lambda!434417)))

(assert (=> bs!1888153 (not (= lambda!434444 lambda!434435))))

(declare-fun bs!1888154 () Bool)

(assert (= bs!1888154 d!2227130))

(assert (=> bs!1888154 (not (= lambda!434444 lambda!434442))))

(assert (=> d!2227130 (= (nullable!7677 lt!2566965) (exists!3930 lt!2566964 lambda!434444))))

(declare-fun lt!2567003 () Unit!163175)

(declare-fun choose!55206 (Regex!18158 List!69394) Unit!163175)

(assert (=> d!2227130 (= lt!2567003 (choose!55206 lt!2566965 lt!2566964))))

(assert (=> d!2227130 (forall!16992 lt!2566964 lambda!434442)))

(assert (=> d!2227130 (= (nullableGenUnionSpec!45 lt!2566965 lt!2566964) lt!2567003)))

(assert (=> bs!1888154 m!7854956))

(declare-fun m!7855020 () Bool)

(assert (=> bs!1888154 m!7855020))

(declare-fun m!7855022 () Bool)

(assert (=> bs!1888154 m!7855022))

(declare-fun m!7855024 () Bool)

(assert (=> bs!1888154 m!7855024))

(assert (=> b!7139898 d!2227130))

(declare-fun d!2227132 () Bool)

(declare-fun lt!2567006 () Bool)

(assert (=> d!2227132 (= lt!2567006 (exists!3932 (toList!11189 z!3189) lambda!434418))))

(declare-fun choose!55207 ((Set Context!14304) Int) Bool)

(assert (=> d!2227132 (= lt!2567006 (choose!55207 z!3189 lambda!434418))))

(assert (=> d!2227132 (= (exists!3931 z!3189 lambda!434418) lt!2567006)))

(declare-fun bs!1888158 () Bool)

(assert (= bs!1888158 d!2227132))

(assert (=> bs!1888158 m!7854944))

(assert (=> bs!1888158 m!7854944))

(declare-fun m!7855030 () Bool)

(assert (=> bs!1888158 m!7855030))

(declare-fun m!7855032 () Bool)

(assert (=> bs!1888158 m!7855032))

(assert (=> b!7139900 d!2227132))

(declare-fun bs!1888159 () Bool)

(declare-fun d!2227138 () Bool)

(assert (= bs!1888159 (and d!2227138 b!7139900)))

(declare-fun lambda!434447 () Int)

(assert (=> bs!1888159 (not (= lambda!434447 lambda!434418))))

(assert (=> d!2227138 true))

(declare-fun order!28543 () Int)

(declare-fun dynLambda!28182 (Int Int) Int)

(assert (=> d!2227138 (< (dynLambda!28182 order!28543 lambda!434418) (dynLambda!28182 order!28543 lambda!434447))))

(declare-fun forall!16993 (List!69395 Int) Bool)

(assert (=> d!2227138 (= (exists!3932 lt!2566963 lambda!434418) (not (forall!16993 lt!2566963 lambda!434447)))))

(declare-fun bs!1888160 () Bool)

(assert (= bs!1888160 d!2227138))

(declare-fun m!7855034 () Bool)

(assert (=> bs!1888160 m!7855034))

(assert (=> b!7139900 d!2227138))

(declare-fun bs!1888161 () Bool)

(declare-fun d!2227140 () Bool)

(assert (= bs!1888161 (and d!2227140 b!7139900)))

(declare-fun lambda!434454 () Int)

(assert (=> bs!1888161 (= lambda!434454 lambda!434418)))

(declare-fun bs!1888162 () Bool)

(assert (= bs!1888162 (and d!2227140 d!2227138)))

(assert (=> bs!1888162 (not (= lambda!434454 lambda!434447))))

(assert (=> d!2227140 true))

(assert (=> d!2227140 (exists!3932 lt!2566963 lambda!434454)))

(declare-fun lt!2567011 () Unit!163175)

(declare-fun choose!55208 (List!69395 Regex!18158) Unit!163175)

(assert (=> d!2227140 (= lt!2567011 (choose!55208 lt!2566963 lt!2566966))))

(assert (=> d!2227140 (contains!20598 (unfocusZipperList!2199 lt!2566963) lt!2566966)))

(assert (=> d!2227140 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!17 lt!2566963 lt!2566966) lt!2567011)))

(declare-fun bs!1888163 () Bool)

(assert (= bs!1888163 d!2227140))

(declare-fun m!7855036 () Bool)

(assert (=> bs!1888163 m!7855036))

(declare-fun m!7855038 () Bool)

(assert (=> bs!1888163 m!7855038))

(assert (=> bs!1888163 m!7854952))

(assert (=> bs!1888163 m!7854952))

(declare-fun m!7855040 () Bool)

(assert (=> bs!1888163 m!7855040))

(assert (=> b!7139900 d!2227140))

(declare-fun bs!1888167 () Bool)

(declare-fun d!2227142 () Bool)

(assert (= bs!1888167 (and d!2227142 b!7139898)))

(declare-fun lambda!434459 () Int)

(assert (=> bs!1888167 (not (= lambda!434459 lambda!434417))))

(declare-fun bs!1888168 () Bool)

(assert (= bs!1888168 (and d!2227142 d!2227124)))

(assert (=> bs!1888168 (not (= lambda!434459 lambda!434435))))

(declare-fun bs!1888169 () Bool)

(assert (= bs!1888169 (and d!2227142 d!2227130)))

(assert (=> bs!1888169 (= lambda!434459 lambda!434442)))

(assert (=> bs!1888169 (not (= lambda!434459 lambda!434444))))

(declare-fun b!7140019 () Bool)

(declare-fun e!4290973 () Bool)

(declare-fun lt!2567018 () Regex!18158)

(declare-fun isUnion!1521 (Regex!18158) Bool)

(assert (=> b!7140019 (= e!4290973 (isUnion!1521 lt!2567018))))

(declare-fun b!7140020 () Bool)

(declare-fun e!4290975 () Bool)

(declare-fun e!4290974 () Bool)

(assert (=> b!7140020 (= e!4290975 e!4290974)))

(declare-fun c!1331483 () Bool)

(declare-fun isEmpty!40061 (List!69394) Bool)

(assert (=> b!7140020 (= c!1331483 (isEmpty!40061 lt!2566964))))

(declare-fun b!7140021 () Bool)

(declare-fun e!4290972 () Bool)

(assert (=> b!7140021 (= e!4290972 (isEmpty!40061 (t!383411 lt!2566964)))))

(declare-fun b!7140022 () Bool)

(declare-fun e!4290971 () Regex!18158)

(assert (=> b!7140022 (= e!4290971 EmptyLang!18158)))

(declare-fun b!7140023 () Bool)

(declare-fun head!14502 (List!69394) Regex!18158)

(assert (=> b!7140023 (= e!4290973 (= lt!2567018 (head!14502 lt!2566964)))))

(declare-fun b!7140024 () Bool)

(assert (=> b!7140024 (= e!4290974 e!4290973)))

(declare-fun c!1331481 () Bool)

(declare-fun tail!13972 (List!69394) List!69394)

(assert (=> b!7140024 (= c!1331481 (isEmpty!40061 (tail!13972 lt!2566964)))))

(declare-fun b!7140025 () Bool)

(declare-fun e!4290970 () Regex!18158)

(assert (=> b!7140025 (= e!4290970 e!4290971)))

(declare-fun c!1331482 () Bool)

(assert (=> b!7140025 (= c!1331482 (is-Cons!69270 lt!2566964))))

(declare-fun b!7140026 () Bool)

(declare-fun isEmptyLang!2093 (Regex!18158) Bool)

(assert (=> b!7140026 (= e!4290974 (isEmptyLang!2093 lt!2567018))))

(declare-fun b!7140027 () Bool)

(assert (=> b!7140027 (= e!4290970 (h!75718 lt!2566964))))

(declare-fun b!7140028 () Bool)

(assert (=> b!7140028 (= e!4290971 (Union!18158 (h!75718 lt!2566964) (generalisedUnion!2663 (t!383411 lt!2566964))))))

(assert (=> d!2227142 e!4290975))

(declare-fun res!2913318 () Bool)

(assert (=> d!2227142 (=> (not res!2913318) (not e!4290975))))

(assert (=> d!2227142 (= res!2913318 (validRegex!9325 lt!2567018))))

(assert (=> d!2227142 (= lt!2567018 e!4290970)))

(declare-fun c!1331484 () Bool)

(assert (=> d!2227142 (= c!1331484 e!4290972)))

(declare-fun res!2913317 () Bool)

(assert (=> d!2227142 (=> (not res!2913317) (not e!4290972))))

(assert (=> d!2227142 (= res!2913317 (is-Cons!69270 lt!2566964))))

(assert (=> d!2227142 (forall!16992 lt!2566964 lambda!434459)))

(assert (=> d!2227142 (= (generalisedUnion!2663 lt!2566964) lt!2567018)))

(assert (= (and d!2227142 res!2913317) b!7140021))

(assert (= (and d!2227142 c!1331484) b!7140027))

(assert (= (and d!2227142 (not c!1331484)) b!7140025))

(assert (= (and b!7140025 c!1331482) b!7140028))

(assert (= (and b!7140025 (not c!1331482)) b!7140022))

(assert (= (and d!2227142 res!2913318) b!7140020))

(assert (= (and b!7140020 c!1331483) b!7140026))

(assert (= (and b!7140020 (not c!1331483)) b!7140024))

(assert (= (and b!7140024 c!1331481) b!7140023))

(assert (= (and b!7140024 (not c!1331481)) b!7140019))

(declare-fun m!7855054 () Bool)

(assert (=> d!2227142 m!7855054))

(declare-fun m!7855056 () Bool)

(assert (=> d!2227142 m!7855056))

(declare-fun m!7855058 () Bool)

(assert (=> b!7140023 m!7855058))

(declare-fun m!7855060 () Bool)

(assert (=> b!7140021 m!7855060))

(declare-fun m!7855062 () Bool)

(assert (=> b!7140020 m!7855062))

(declare-fun m!7855064 () Bool)

(assert (=> b!7140024 m!7855064))

(assert (=> b!7140024 m!7855064))

(declare-fun m!7855066 () Bool)

(assert (=> b!7140024 m!7855066))

(declare-fun m!7855068 () Bool)

(assert (=> b!7140026 m!7855068))

(declare-fun m!7855070 () Bool)

(assert (=> b!7140028 m!7855070))

(declare-fun m!7855072 () Bool)

(assert (=> b!7140019 m!7855072))

(assert (=> b!7139901 d!2227142))

(declare-fun bs!1888170 () Bool)

(declare-fun d!2227148 () Bool)

(assert (= bs!1888170 (and d!2227148 d!2227130)))

(declare-fun lambda!434462 () Int)

(assert (=> bs!1888170 (not (= lambda!434462 lambda!434444))))

(declare-fun bs!1888171 () Bool)

(assert (= bs!1888171 (and d!2227148 d!2227142)))

(assert (=> bs!1888171 (= lambda!434462 lambda!434459)))

(declare-fun bs!1888172 () Bool)

(assert (= bs!1888172 (and d!2227148 d!2227124)))

(assert (=> bs!1888172 (not (= lambda!434462 lambda!434435))))

(declare-fun bs!1888173 () Bool)

(assert (= bs!1888173 (and d!2227148 b!7139898)))

(assert (=> bs!1888173 (not (= lambda!434462 lambda!434417))))

(assert (=> bs!1888170 (= lambda!434462 lambda!434442)))

(declare-fun lt!2567021 () List!69394)

(assert (=> d!2227148 (forall!16992 lt!2567021 lambda!434462)))

(declare-fun e!4290980 () List!69394)

(assert (=> d!2227148 (= lt!2567021 e!4290980)))

(declare-fun c!1331487 () Bool)

(assert (=> d!2227148 (= c!1331487 (is-Cons!69271 lt!2566963))))

(assert (=> d!2227148 (= (unfocusZipperList!2199 lt!2566963) lt!2567021)))

(declare-fun b!7140037 () Bool)

(declare-fun generalisedConcat!2343 (List!69394) Regex!18158)

(assert (=> b!7140037 (= e!4290980 (Cons!69270 (generalisedConcat!2343 (exprs!7652 (h!75719 lt!2566963))) (unfocusZipperList!2199 (t!383412 lt!2566963))))))

(declare-fun b!7140038 () Bool)

(assert (=> b!7140038 (= e!4290980 Nil!69270)))

(assert (= (and d!2227148 c!1331487) b!7140037))

(assert (= (and d!2227148 (not c!1331487)) b!7140038))

(declare-fun m!7855074 () Bool)

(assert (=> d!2227148 m!7855074))

(declare-fun m!7855076 () Bool)

(assert (=> b!7140037 m!7855076))

(declare-fun m!7855078 () Bool)

(assert (=> b!7140037 m!7855078))

(assert (=> b!7139901 d!2227148))

(declare-fun bs!1888174 () Bool)

(declare-fun d!2227150 () Bool)

(assert (= bs!1888174 (and d!2227150 d!2227130)))

(declare-fun lambda!434465 () Int)

(assert (=> bs!1888174 (not (= lambda!434465 lambda!434444))))

(declare-fun bs!1888175 () Bool)

(assert (= bs!1888175 (and d!2227150 d!2227142)))

(assert (=> bs!1888175 (= lambda!434465 lambda!434459)))

(declare-fun bs!1888176 () Bool)

(assert (= bs!1888176 (and d!2227150 d!2227124)))

(assert (=> bs!1888176 (not (= lambda!434465 lambda!434435))))

(declare-fun bs!1888177 () Bool)

(assert (= bs!1888177 (and d!2227150 b!7139898)))

(assert (=> bs!1888177 (not (= lambda!434465 lambda!434417))))

(declare-fun bs!1888178 () Bool)

(assert (= bs!1888178 (and d!2227150 d!2227148)))

(assert (=> bs!1888178 (= lambda!434465 lambda!434462)))

(assert (=> bs!1888174 (= lambda!434465 lambda!434442)))

(assert (=> d!2227150 (= (inv!88460 setElem!52510) (forall!16992 (exprs!7652 setElem!52510) lambda!434465))))

(declare-fun bs!1888179 () Bool)

(assert (= bs!1888179 d!2227150))

(declare-fun m!7855080 () Bool)

(assert (=> bs!1888179 m!7855080))

(assert (=> setNonEmpty!52510 d!2227150))

(assert (=> b!7139909 d!2227124))

(declare-fun d!2227152 () Bool)

(declare-fun lt!2567024 () Bool)

(declare-fun content!14191 (List!69394) (Set Regex!18158))

(assert (=> d!2227152 (= lt!2567024 (set.member lt!2566966 (content!14191 lt!2566964)))))

(declare-fun e!4290997 () Bool)

(assert (=> d!2227152 (= lt!2567024 e!4290997)))

(declare-fun res!2913334 () Bool)

(assert (=> d!2227152 (=> (not res!2913334) (not e!4290997))))

(assert (=> d!2227152 (= res!2913334 (is-Cons!69270 lt!2566964))))

(assert (=> d!2227152 (= (contains!20598 lt!2566964 lt!2566966) lt!2567024)))

(declare-fun b!7140057 () Bool)

(declare-fun e!4290998 () Bool)

(assert (=> b!7140057 (= e!4290997 e!4290998)))

(declare-fun res!2913333 () Bool)

(assert (=> b!7140057 (=> res!2913333 e!4290998)))

(assert (=> b!7140057 (= res!2913333 (= (h!75718 lt!2566964) lt!2566966))))

(declare-fun b!7140058 () Bool)

(assert (=> b!7140058 (= e!4290998 (contains!20598 (t!383411 lt!2566964) lt!2566966))))

(assert (= (and d!2227152 res!2913334) b!7140057))

(assert (= (and b!7140057 (not res!2913333)) b!7140058))

(declare-fun m!7855082 () Bool)

(assert (=> d!2227152 m!7855082))

(declare-fun m!7855084 () Bool)

(assert (=> d!2227152 m!7855084))

(declare-fun m!7855086 () Bool)

(assert (=> b!7140058 m!7855086))

(assert (=> b!7139905 d!2227152))

(declare-fun d!2227154 () Bool)

(assert (=> d!2227154 (= (nullable!7677 lt!2566966) (nullableFct!2983 lt!2566966))))

(declare-fun bs!1888180 () Bool)

(assert (= bs!1888180 d!2227154))

(declare-fun m!7855088 () Bool)

(assert (=> bs!1888180 m!7855088))

(assert (=> b!7139908 d!2227154))

(declare-fun b!7140080 () Bool)

(declare-fun e!4291016 () Regex!18158)

(assert (=> b!7140080 (= e!4291016 (h!75718 lt!2566964))))

(declare-fun b!7140081 () Bool)

(declare-fun lt!2567030 () Unit!163175)

(declare-fun Unit!163179 () Unit!163175)

(assert (=> b!7140081 (= lt!2567030 Unit!163179)))

(assert (=> b!7140081 false))

(declare-fun e!4291014 () Regex!18158)

(assert (=> b!7140081 (= e!4291014 (head!14502 lt!2566964))))

(declare-fun b!7140082 () Bool)

(declare-fun e!4291015 () Bool)

(declare-fun lt!2567029 () Regex!18158)

(assert (=> b!7140082 (= e!4291015 (contains!20598 lt!2566964 lt!2567029))))

(declare-fun d!2227156 () Bool)

(assert (=> d!2227156 e!4291015))

(declare-fun res!2913344 () Bool)

(assert (=> d!2227156 (=> (not res!2913344) (not e!4291015))))

(declare-fun dynLambda!28183 (Int Regex!18158) Bool)

(assert (=> d!2227156 (= res!2913344 (dynLambda!28183 lambda!434417 lt!2567029))))

(assert (=> d!2227156 (= lt!2567029 e!4291016)))

(declare-fun c!1331499 () Bool)

(declare-fun e!4291017 () Bool)

(assert (=> d!2227156 (= c!1331499 e!4291017)))

(declare-fun res!2913345 () Bool)

(assert (=> d!2227156 (=> (not res!2913345) (not e!4291017))))

(assert (=> d!2227156 (= res!2913345 (is-Cons!69270 lt!2566964))))

(assert (=> d!2227156 (exists!3930 lt!2566964 lambda!434417)))

(assert (=> d!2227156 (= (getWitness!1918 lt!2566964 lambda!434417) lt!2567029)))

(declare-fun b!7140083 () Bool)

(assert (=> b!7140083 (= e!4291016 e!4291014)))

(declare-fun c!1331498 () Bool)

(assert (=> b!7140083 (= c!1331498 (is-Cons!69270 lt!2566964))))

(declare-fun b!7140084 () Bool)

(assert (=> b!7140084 (= e!4291017 (dynLambda!28183 lambda!434417 (h!75718 lt!2566964)))))

(declare-fun b!7140085 () Bool)

(assert (=> b!7140085 (= e!4291014 (getWitness!1918 (t!383411 lt!2566964) lambda!434417))))

(assert (= (and d!2227156 res!2913345) b!7140084))

(assert (= (and d!2227156 c!1331499) b!7140080))

(assert (= (and d!2227156 (not c!1331499)) b!7140083))

(assert (= (and b!7140083 c!1331498) b!7140085))

(assert (= (and b!7140083 (not c!1331498)) b!7140081))

(assert (= (and d!2227156 res!2913344) b!7140082))

(declare-fun b_lambda!272509 () Bool)

(assert (=> (not b_lambda!272509) (not d!2227156)))

(declare-fun b_lambda!272511 () Bool)

(assert (=> (not b_lambda!272511) (not b!7140084)))

(declare-fun m!7855096 () Bool)

(assert (=> b!7140085 m!7855096))

(declare-fun m!7855098 () Bool)

(assert (=> b!7140084 m!7855098))

(declare-fun m!7855100 () Bool)

(assert (=> d!2227156 m!7855100))

(assert (=> d!2227156 m!7854954))

(assert (=> b!7140081 m!7855058))

(declare-fun m!7855102 () Bool)

(assert (=> b!7140082 m!7855102))

(assert (=> b!7139908 d!2227156))

(declare-fun b!7140099 () Bool)

(declare-fun e!4291020 () Bool)

(declare-fun tp!1969069 () Bool)

(declare-fun tp!1969066 () Bool)

(assert (=> b!7140099 (= e!4291020 (and tp!1969069 tp!1969066))))

(declare-fun b!7140098 () Bool)

(declare-fun tp!1969067 () Bool)

(assert (=> b!7140098 (= e!4291020 tp!1969067)))

(assert (=> b!7139907 (= tp!1969034 e!4291020)))

(declare-fun b!7140096 () Bool)

(assert (=> b!7140096 (= e!4291020 tp_is_empty!45953)))

(declare-fun b!7140097 () Bool)

(declare-fun tp!1969068 () Bool)

(declare-fun tp!1969070 () Bool)

(assert (=> b!7140097 (= e!4291020 (and tp!1969068 tp!1969070))))

(assert (= (and b!7139907 (is-ElementMatch!18158 (regOne!36828 r!11483))) b!7140096))

(assert (= (and b!7139907 (is-Concat!27003 (regOne!36828 r!11483))) b!7140097))

(assert (= (and b!7139907 (is-Star!18158 (regOne!36828 r!11483))) b!7140098))

(assert (= (and b!7139907 (is-Union!18158 (regOne!36828 r!11483))) b!7140099))

(declare-fun b!7140103 () Bool)

(declare-fun e!4291021 () Bool)

(declare-fun tp!1969074 () Bool)

(declare-fun tp!1969071 () Bool)

(assert (=> b!7140103 (= e!4291021 (and tp!1969074 tp!1969071))))

(declare-fun b!7140102 () Bool)

(declare-fun tp!1969072 () Bool)

(assert (=> b!7140102 (= e!4291021 tp!1969072)))

(assert (=> b!7139907 (= tp!1969028 e!4291021)))

(declare-fun b!7140100 () Bool)

(assert (=> b!7140100 (= e!4291021 tp_is_empty!45953)))

(declare-fun b!7140101 () Bool)

(declare-fun tp!1969073 () Bool)

(declare-fun tp!1969075 () Bool)

(assert (=> b!7140101 (= e!4291021 (and tp!1969073 tp!1969075))))

(assert (= (and b!7139907 (is-ElementMatch!18158 (regTwo!36828 r!11483))) b!7140100))

(assert (= (and b!7139907 (is-Concat!27003 (regTwo!36828 r!11483))) b!7140101))

(assert (= (and b!7139907 (is-Star!18158 (regTwo!36828 r!11483))) b!7140102))

(assert (= (and b!7139907 (is-Union!18158 (regTwo!36828 r!11483))) b!7140103))

(declare-fun b!7140107 () Bool)

(declare-fun e!4291022 () Bool)

(declare-fun tp!1969079 () Bool)

(declare-fun tp!1969076 () Bool)

(assert (=> b!7140107 (= e!4291022 (and tp!1969079 tp!1969076))))

(declare-fun b!7140106 () Bool)

(declare-fun tp!1969077 () Bool)

(assert (=> b!7140106 (= e!4291022 tp!1969077)))

(assert (=> b!7139906 (= tp!1969032 e!4291022)))

(declare-fun b!7140104 () Bool)

(assert (=> b!7140104 (= e!4291022 tp_is_empty!45953)))

(declare-fun b!7140105 () Bool)

(declare-fun tp!1969078 () Bool)

(declare-fun tp!1969080 () Bool)

(assert (=> b!7140105 (= e!4291022 (and tp!1969078 tp!1969080))))

(assert (= (and b!7139906 (is-ElementMatch!18158 (reg!18487 r!11483))) b!7140104))

(assert (= (and b!7139906 (is-Concat!27003 (reg!18487 r!11483))) b!7140105))

(assert (= (and b!7139906 (is-Star!18158 (reg!18487 r!11483))) b!7140106))

(assert (= (and b!7139906 (is-Union!18158 (reg!18487 r!11483))) b!7140107))

(declare-fun b!7140111 () Bool)

(declare-fun e!4291023 () Bool)

(declare-fun tp!1969084 () Bool)

(declare-fun tp!1969081 () Bool)

(assert (=> b!7140111 (= e!4291023 (and tp!1969084 tp!1969081))))

(declare-fun b!7140110 () Bool)

(declare-fun tp!1969082 () Bool)

(assert (=> b!7140110 (= e!4291023 tp!1969082)))

(assert (=> b!7139904 (= tp!1969031 e!4291023)))

(declare-fun b!7140108 () Bool)

(assert (=> b!7140108 (= e!4291023 tp_is_empty!45953)))

(declare-fun b!7140109 () Bool)

(declare-fun tp!1969083 () Bool)

(declare-fun tp!1969085 () Bool)

(assert (=> b!7140109 (= e!4291023 (and tp!1969083 tp!1969085))))

(assert (= (and b!7139904 (is-ElementMatch!18158 (regOne!36829 r!11483))) b!7140108))

(assert (= (and b!7139904 (is-Concat!27003 (regOne!36829 r!11483))) b!7140109))

(assert (= (and b!7139904 (is-Star!18158 (regOne!36829 r!11483))) b!7140110))

(assert (= (and b!7139904 (is-Union!18158 (regOne!36829 r!11483))) b!7140111))

(declare-fun b!7140115 () Bool)

(declare-fun e!4291024 () Bool)

(declare-fun tp!1969089 () Bool)

(declare-fun tp!1969086 () Bool)

(assert (=> b!7140115 (= e!4291024 (and tp!1969089 tp!1969086))))

(declare-fun b!7140114 () Bool)

(declare-fun tp!1969087 () Bool)

(assert (=> b!7140114 (= e!4291024 tp!1969087)))

(assert (=> b!7139904 (= tp!1969033 e!4291024)))

(declare-fun b!7140112 () Bool)

(assert (=> b!7140112 (= e!4291024 tp_is_empty!45953)))

(declare-fun b!7140113 () Bool)

(declare-fun tp!1969088 () Bool)

(declare-fun tp!1969090 () Bool)

(assert (=> b!7140113 (= e!4291024 (and tp!1969088 tp!1969090))))

(assert (= (and b!7139904 (is-ElementMatch!18158 (regTwo!36829 r!11483))) b!7140112))

(assert (= (and b!7139904 (is-Concat!27003 (regTwo!36829 r!11483))) b!7140113))

(assert (= (and b!7139904 (is-Star!18158 (regTwo!36829 r!11483))) b!7140114))

(assert (= (and b!7139904 (is-Union!18158 (regTwo!36829 r!11483))) b!7140115))

(declare-fun condSetEmpty!52516 () Bool)

(assert (=> setNonEmpty!52510 (= condSetEmpty!52516 (= setRest!52510 (as set.empty (Set Context!14304))))))

(declare-fun setRes!52516 () Bool)

(assert (=> setNonEmpty!52510 (= tp!1969030 setRes!52516)))

(declare-fun setIsEmpty!52516 () Bool)

(assert (=> setIsEmpty!52516 setRes!52516))

(declare-fun setElem!52516 () Context!14304)

(declare-fun setNonEmpty!52516 () Bool)

(declare-fun tp!1969095 () Bool)

(declare-fun e!4291027 () Bool)

(assert (=> setNonEmpty!52516 (= setRes!52516 (and tp!1969095 (inv!88460 setElem!52516) e!4291027))))

(declare-fun setRest!52516 () (Set Context!14304))

(assert (=> setNonEmpty!52516 (= setRest!52510 (set.union (set.insert setElem!52516 (as set.empty (Set Context!14304))) setRest!52516))))

(declare-fun b!7140120 () Bool)

(declare-fun tp!1969096 () Bool)

(assert (=> b!7140120 (= e!4291027 tp!1969096)))

(assert (= (and setNonEmpty!52510 condSetEmpty!52516) setIsEmpty!52516))

(assert (= (and setNonEmpty!52510 (not condSetEmpty!52516)) setNonEmpty!52516))

(assert (= setNonEmpty!52516 b!7140120))

(declare-fun m!7855108 () Bool)

(assert (=> setNonEmpty!52516 m!7855108))

(declare-fun b!7140125 () Bool)

(declare-fun e!4291030 () Bool)

(declare-fun tp!1969101 () Bool)

(declare-fun tp!1969102 () Bool)

(assert (=> b!7140125 (= e!4291030 (and tp!1969101 tp!1969102))))

(assert (=> b!7139903 (= tp!1969029 e!4291030)))

(assert (= (and b!7139903 (is-Cons!69270 (exprs!7652 setElem!52510))) b!7140125))

(declare-fun b_lambda!272513 () Bool)

(assert (= b_lambda!272509 (or b!7139898 b_lambda!272513)))

(declare-fun bs!1888182 () Bool)

(declare-fun d!2227162 () Bool)

(assert (= bs!1888182 (and d!2227162 b!7139898)))

(assert (=> bs!1888182 (= (dynLambda!28183 lambda!434417 lt!2567029) (nullable!7677 lt!2567029))))

(declare-fun m!7855110 () Bool)

(assert (=> bs!1888182 m!7855110))

(assert (=> d!2227156 d!2227162))

(declare-fun b_lambda!272515 () Bool)

(assert (= b_lambda!272511 (or b!7139898 b_lambda!272515)))

(declare-fun bs!1888183 () Bool)

(declare-fun d!2227164 () Bool)

(assert (= bs!1888183 (and d!2227164 b!7139898)))

(assert (=> bs!1888183 (= (dynLambda!28183 lambda!434417 (h!75718 lt!2566964)) (nullable!7677 (h!75718 lt!2566964)))))

(declare-fun m!7855112 () Bool)

(assert (=> bs!1888183 m!7855112))

(assert (=> b!7140084 d!2227164))

(push 1)

(assert (not b!7140026))

(assert (not b!7140102))

(assert (not b!7140021))

(assert (not b!7140019))

(assert (not bs!1888183))

(assert (not b!7140115))

(assert (not b!7140125))

(assert (not b!7140105))

(assert (not b!7139983))

(assert (not b!7140081))

(assert (not b_lambda!272513))

(assert (not bm!651140))

(assert (not setNonEmpty!52516))

(assert (not d!2227152))

(assert (not bs!1888182))

(assert (not b!7140107))

(assert (not b!7140101))

(assert (not d!2227148))

(assert (not b!7140037))

(assert (not b!7140082))

(assert (not bm!651138))

(assert (not d!2227150))

(assert (not b!7140020))

(assert (not d!2227130))

(assert (not d!2227156))

(assert (not d!2227122))

(assert (not d!2227124))

(assert (not b!7140110))

(assert (not b!7140098))

(assert (not b!7140024))

(assert (not d!2227118))

(assert (not d!2227140))

(assert (not b!7140114))

(assert tp_is_empty!45953)

(assert (not d!2227154))

(assert (not b!7140028))

(assert (not b!7140111))

(assert (not b!7140058))

(assert (not b_lambda!272515))

(assert (not b!7140113))

(assert (not d!2227142))

(assert (not b!7140085))

(assert (not b!7140099))

(assert (not b!7140120))

(assert (not b!7140103))

(assert (not d!2227138))

(assert (not b!7140106))

(assert (not b!7139976))

(assert (not b!7140097))

(assert (not d!2227132))

(assert (not b!7140023))

(assert (not b!7140109))

(assert (not d!2227126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

