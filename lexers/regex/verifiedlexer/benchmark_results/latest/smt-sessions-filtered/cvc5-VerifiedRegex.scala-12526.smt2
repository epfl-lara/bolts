; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695938 () Bool)

(assert start!695938)

(declare-fun b!7140257 () Bool)

(assert (=> b!7140257 true))

(declare-fun b!7140250 () Bool)

(declare-fun e!4291093 () Bool)

(declare-fun e!4291096 () Bool)

(assert (=> b!7140250 (= e!4291093 e!4291096)))

(declare-fun res!2913376 () Bool)

(assert (=> b!7140250 (=> (not res!2913376) (not e!4291096))))

(declare-datatypes ((C!36594 0))(
  ( (C!36595 (val!28245 Int)) )
))
(declare-datatypes ((Regex!18160 0))(
  ( (ElementMatch!18160 (c!1331529 C!36594)) (Concat!27005 (regOne!36832 Regex!18160) (regTwo!36832 Regex!18160)) (EmptyExpr!18160) (Star!18160 (reg!18489 Regex!18160)) (EmptyLang!18160) (Union!18160 (regOne!36833 Regex!18160) (regTwo!36833 Regex!18160)) )
))
(declare-fun r!11483 () Regex!18160)

(declare-datatypes ((List!69398 0))(
  ( (Nil!69274) (Cons!69274 (h!75722 Regex!18160) (t!383415 List!69398)) )
))
(declare-datatypes ((Context!14308 0))(
  ( (Context!14309 (exprs!7654 List!69398)) )
))
(declare-datatypes ((List!69399 0))(
  ( (Nil!69275) (Cons!69275 (h!75723 Context!14308) (t!383416 List!69399)) )
))
(declare-fun lt!2567068 () List!69399)

(declare-fun unfocusZipper!2508 (List!69399) Regex!18160)

(assert (=> b!7140250 (= res!2913376 (= r!11483 (unfocusZipper!2508 lt!2567068)))))

(declare-fun z!3189 () (Set Context!14308))

(declare-fun toList!11191 ((Set Context!14308)) List!69399)

(assert (=> b!7140250 (= lt!2567068 (toList!11191 z!3189))))

(declare-fun res!2913379 () Bool)

(assert (=> start!695938 (=> (not res!2913379) (not e!4291093))))

(declare-fun validRegex!9327 (Regex!18160) Bool)

(assert (=> start!695938 (= res!2913379 (validRegex!9327 r!11483))))

(assert (=> start!695938 e!4291093))

(declare-fun e!4291095 () Bool)

(assert (=> start!695938 e!4291095))

(declare-fun condSetEmpty!52522 () Bool)

(assert (=> start!695938 (= condSetEmpty!52522 (= z!3189 (as set.empty (Set Context!14308))))))

(declare-fun setRes!52522 () Bool)

(assert (=> start!695938 setRes!52522))

(declare-fun b!7140251 () Bool)

(declare-fun e!4291098 () Bool)

(assert (=> b!7140251 (= e!4291096 e!4291098)))

(declare-fun res!2913381 () Bool)

(assert (=> b!7140251 (=> (not res!2913381) (not e!4291098))))

(declare-fun lt!2567065 () Regex!18160)

(assert (=> b!7140251 (= res!2913381 (= r!11483 lt!2567065))))

(declare-fun lt!2567067 () List!69398)

(declare-fun generalisedUnion!2665 (List!69398) Regex!18160)

(assert (=> b!7140251 (= lt!2567065 (generalisedUnion!2665 lt!2567067))))

(declare-fun unfocusZipperList!2201 (List!69399) List!69398)

(assert (=> b!7140251 (= lt!2567067 (unfocusZipperList!2201 lt!2567068))))

(declare-fun setIsEmpty!52522 () Bool)

(assert (=> setIsEmpty!52522 setRes!52522))

(declare-fun b!7140252 () Bool)

(declare-fun res!2913378 () Bool)

(declare-fun e!4291097 () Bool)

(assert (=> b!7140252 (=> res!2913378 e!4291097)))

(declare-fun lt!2567064 () Bool)

(assert (=> b!7140252 (= res!2913378 (not lt!2567064))))

(declare-fun b!7140253 () Bool)

(declare-fun res!2913380 () Bool)

(assert (=> b!7140253 (=> res!2913380 e!4291097)))

(declare-fun lambda!434495 () Int)

(declare-fun exists!3936 (List!69398 Int) Bool)

(assert (=> b!7140253 (= res!2913380 (not (exists!3936 lt!2567067 lambda!434495)))))

(declare-fun b!7140254 () Bool)

(declare-fun tp_is_empty!45957 () Bool)

(assert (=> b!7140254 (= e!4291095 tp_is_empty!45957)))

(declare-fun b!7140255 () Bool)

(declare-fun tp!1969166 () Bool)

(declare-fun tp!1969168 () Bool)

(assert (=> b!7140255 (= e!4291095 (and tp!1969166 tp!1969168))))

(declare-fun b!7140256 () Bool)

(declare-fun tp!1969164 () Bool)

(declare-fun tp!1969170 () Bool)

(assert (=> b!7140256 (= e!4291095 (and tp!1969164 tp!1969170))))

(declare-fun e!4291099 () Bool)

(declare-fun e!4291100 () Bool)

(assert (=> b!7140257 (= e!4291099 e!4291100)))

(declare-fun res!2913382 () Bool)

(assert (=> b!7140257 (=> res!2913382 e!4291100)))

(declare-fun lambda!434496 () Int)

(declare-fun exists!3937 ((Set Context!14308) Int) Bool)

(assert (=> b!7140257 (= res!2913382 (not (exists!3937 z!3189 lambda!434496)))))

(declare-fun exists!3938 (List!69399 Int) Bool)

(assert (=> b!7140257 (exists!3938 lt!2567068 lambda!434496)))

(declare-datatypes ((Unit!163181 0))(
  ( (Unit!163182) )
))
(declare-fun lt!2567069 () Unit!163181)

(declare-fun lt!2567066 () Regex!18160)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!19 (List!69399 Regex!18160) Unit!163181)

(assert (=> b!7140257 (= lt!2567069 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!19 lt!2567068 lt!2567066))))

(declare-fun b!7140258 () Bool)

(assert (=> b!7140258 (= e!4291098 (not e!4291097))))

(declare-fun res!2913383 () Bool)

(assert (=> b!7140258 (=> res!2913383 e!4291097)))

(assert (=> b!7140258 (= res!2913383 (not (= lt!2567064 (exists!3936 lt!2567067 lambda!434495))))))

(assert (=> b!7140258 (= lt!2567064 (exists!3936 lt!2567067 lambda!434495))))

(declare-fun nullable!7679 (Regex!18160) Bool)

(assert (=> b!7140258 (= lt!2567064 (nullable!7679 lt!2567065))))

(declare-fun lt!2567063 () Unit!163181)

(declare-fun nullableGenUnionSpec!47 (Regex!18160 List!69398) Unit!163181)

(assert (=> b!7140258 (= lt!2567063 (nullableGenUnionSpec!47 lt!2567065 lt!2567067))))

(declare-fun b!7140259 () Bool)

(declare-fun res!2913377 () Bool)

(assert (=> b!7140259 (=> res!2913377 e!4291099)))

(declare-fun contains!20600 (List!69398 Regex!18160) Bool)

(assert (=> b!7140259 (= res!2913377 (not (contains!20600 lt!2567067 lt!2567066)))))

(declare-fun b!7140260 () Bool)

(assert (=> b!7140260 (= e!4291097 e!4291099)))

(declare-fun res!2913384 () Bool)

(assert (=> b!7140260 (=> res!2913384 e!4291099)))

(assert (=> b!7140260 (= res!2913384 (not (nullable!7679 lt!2567066)))))

(declare-fun getWitness!1920 (List!69398 Int) Regex!18160)

(assert (=> b!7140260 (= lt!2567066 (getWitness!1920 lt!2567067 lambda!434495))))

(declare-fun b!7140261 () Bool)

(declare-fun e!4291094 () Bool)

(declare-fun tp!1969167 () Bool)

(assert (=> b!7140261 (= e!4291094 tp!1969167)))

(declare-fun b!7140262 () Bool)

(declare-fun tp!1969169 () Bool)

(assert (=> b!7140262 (= e!4291095 tp!1969169)))

(declare-fun b!7140263 () Bool)

(declare-fun getWitness!1921 ((Set Context!14308) Int) Context!14308)

(assert (=> b!7140263 (= e!4291100 (set.member (getWitness!1921 z!3189 lambda!434496) z!3189))))

(declare-fun setNonEmpty!52522 () Bool)

(declare-fun setElem!52522 () Context!14308)

(declare-fun tp!1969165 () Bool)

(declare-fun inv!88465 (Context!14308) Bool)

(assert (=> setNonEmpty!52522 (= setRes!52522 (and tp!1969165 (inv!88465 setElem!52522) e!4291094))))

(declare-fun setRest!52522 () (Set Context!14308))

(assert (=> setNonEmpty!52522 (= z!3189 (set.union (set.insert setElem!52522 (as set.empty (Set Context!14308))) setRest!52522))))

(assert (= (and start!695938 res!2913379) b!7140250))

(assert (= (and b!7140250 res!2913376) b!7140251))

(assert (= (and b!7140251 res!2913381) b!7140258))

(assert (= (and b!7140258 (not res!2913383)) b!7140252))

(assert (= (and b!7140252 (not res!2913378)) b!7140253))

(assert (= (and b!7140253 (not res!2913380)) b!7140260))

(assert (= (and b!7140260 (not res!2913384)) b!7140259))

(assert (= (and b!7140259 (not res!2913377)) b!7140257))

(assert (= (and b!7140257 (not res!2913382)) b!7140263))

(assert (= (and start!695938 (is-ElementMatch!18160 r!11483)) b!7140254))

(assert (= (and start!695938 (is-Concat!27005 r!11483)) b!7140256))

(assert (= (and start!695938 (is-Star!18160 r!11483)) b!7140262))

(assert (= (and start!695938 (is-Union!18160 r!11483)) b!7140255))

(assert (= (and start!695938 condSetEmpty!52522) setIsEmpty!52522))

(assert (= (and start!695938 (not condSetEmpty!52522)) setNonEmpty!52522))

(assert (= setNonEmpty!52522 b!7140261))

(declare-fun m!7855166 () Bool)

(assert (=> b!7140250 m!7855166))

(declare-fun m!7855168 () Bool)

(assert (=> b!7140250 m!7855168))

(declare-fun m!7855170 () Bool)

(assert (=> b!7140260 m!7855170))

(declare-fun m!7855172 () Bool)

(assert (=> b!7140260 m!7855172))

(declare-fun m!7855174 () Bool)

(assert (=> b!7140257 m!7855174))

(declare-fun m!7855176 () Bool)

(assert (=> b!7140257 m!7855176))

(declare-fun m!7855178 () Bool)

(assert (=> b!7140257 m!7855178))

(declare-fun m!7855180 () Bool)

(assert (=> start!695938 m!7855180))

(declare-fun m!7855182 () Bool)

(assert (=> setNonEmpty!52522 m!7855182))

(declare-fun m!7855184 () Bool)

(assert (=> b!7140258 m!7855184))

(assert (=> b!7140258 m!7855184))

(declare-fun m!7855186 () Bool)

(assert (=> b!7140258 m!7855186))

(declare-fun m!7855188 () Bool)

(assert (=> b!7140258 m!7855188))

(declare-fun m!7855190 () Bool)

(assert (=> b!7140251 m!7855190))

(declare-fun m!7855192 () Bool)

(assert (=> b!7140251 m!7855192))

(declare-fun m!7855194 () Bool)

(assert (=> b!7140263 m!7855194))

(assert (=> b!7140263 m!7855194))

(declare-fun m!7855196 () Bool)

(assert (=> b!7140263 m!7855196))

(declare-fun m!7855198 () Bool)

(assert (=> b!7140259 m!7855198))

(assert (=> b!7140253 m!7855184))

(push 1)

(assert tp_is_empty!45957)

(assert (not b!7140251))

(assert (not b!7140256))

(assert (not b!7140250))

(assert (not b!7140261))

(assert (not b!7140263))

(assert (not b!7140257))

(assert (not setNonEmpty!52522))

(assert (not b!7140259))

(assert (not b!7140262))

(assert (not b!7140255))

(assert (not b!7140260))

(assert (not b!7140253))

(assert (not b!7140258))

(assert (not start!695938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2227183 () Bool)

(declare-fun e!4291127 () Bool)

(assert (=> d!2227183 e!4291127))

(declare-fun res!2913414 () Bool)

(assert (=> d!2227183 (=> (not res!2913414) (not e!4291127))))

(declare-fun lt!2567093 () Context!14308)

(declare-fun dynLambda!28187 (Int Context!14308) Bool)

(assert (=> d!2227183 (= res!2913414 (dynLambda!28187 lambda!434496 lt!2567093))))

(declare-fun getWitness!1924 (List!69399 Int) Context!14308)

(assert (=> d!2227183 (= lt!2567093 (getWitness!1924 (toList!11191 z!3189) lambda!434496))))

(assert (=> d!2227183 (exists!3937 z!3189 lambda!434496)))

(assert (=> d!2227183 (= (getWitness!1921 z!3189 lambda!434496) lt!2567093)))

(declare-fun b!7140312 () Bool)

(assert (=> b!7140312 (= e!4291127 (set.member lt!2567093 z!3189))))

(assert (= (and d!2227183 res!2913414) b!7140312))

(declare-fun b_lambda!272525 () Bool)

(assert (=> (not b_lambda!272525) (not d!2227183)))

(declare-fun m!7855234 () Bool)

(assert (=> d!2227183 m!7855234))

(assert (=> d!2227183 m!7855168))

(assert (=> d!2227183 m!7855168))

(declare-fun m!7855236 () Bool)

(assert (=> d!2227183 m!7855236))

(assert (=> d!2227183 m!7855174))

(declare-fun m!7855238 () Bool)

(assert (=> b!7140312 m!7855238))

(assert (=> b!7140263 d!2227183))

(declare-fun bm!651156 () Bool)

(declare-fun c!1331542 () Bool)

(declare-fun c!1331541 () Bool)

(declare-fun call!651162 () Bool)

(assert (=> bm!651156 (= call!651162 (validRegex!9327 (ite c!1331541 (reg!18489 r!11483) (ite c!1331542 (regOne!36833 r!11483) (regOne!36832 r!11483)))))))

(declare-fun bm!651157 () Bool)

(declare-fun call!651163 () Bool)

(assert (=> bm!651157 (= call!651163 call!651162)))

(declare-fun bm!651158 () Bool)

(declare-fun call!651161 () Bool)

(assert (=> bm!651158 (= call!651161 (validRegex!9327 (ite c!1331542 (regTwo!36833 r!11483) (regTwo!36832 r!11483))))))

(declare-fun b!7140331 () Bool)

(declare-fun e!4291146 () Bool)

(declare-fun e!4291143 () Bool)

(assert (=> b!7140331 (= e!4291146 e!4291143)))

(assert (=> b!7140331 (= c!1331542 (is-Union!18160 r!11483))))

(declare-fun d!2227185 () Bool)

(declare-fun res!2913427 () Bool)

(declare-fun e!4291144 () Bool)

(assert (=> d!2227185 (=> res!2913427 e!4291144)))

(assert (=> d!2227185 (= res!2913427 (is-ElementMatch!18160 r!11483))))

(assert (=> d!2227185 (= (validRegex!9327 r!11483) e!4291144)))

(declare-fun b!7140332 () Bool)

(declare-fun e!4291145 () Bool)

(assert (=> b!7140332 (= e!4291146 e!4291145)))

(declare-fun res!2913429 () Bool)

(assert (=> b!7140332 (= res!2913429 (not (nullable!7679 (reg!18489 r!11483))))))

(assert (=> b!7140332 (=> (not res!2913429) (not e!4291145))))

(declare-fun b!7140333 () Bool)

(declare-fun res!2913426 () Bool)

(declare-fun e!4291142 () Bool)

(assert (=> b!7140333 (=> (not res!2913426) (not e!4291142))))

(assert (=> b!7140333 (= res!2913426 call!651163)))

(assert (=> b!7140333 (= e!4291143 e!4291142)))

(declare-fun b!7140334 () Bool)

(declare-fun res!2913428 () Bool)

(declare-fun e!4291147 () Bool)

(assert (=> b!7140334 (=> res!2913428 e!4291147)))

(assert (=> b!7140334 (= res!2913428 (not (is-Concat!27005 r!11483)))))

(assert (=> b!7140334 (= e!4291143 e!4291147)))

(declare-fun b!7140335 () Bool)

(declare-fun e!4291148 () Bool)

(assert (=> b!7140335 (= e!4291148 call!651161)))

(declare-fun b!7140336 () Bool)

(assert (=> b!7140336 (= e!4291147 e!4291148)))

(declare-fun res!2913425 () Bool)

(assert (=> b!7140336 (=> (not res!2913425) (not e!4291148))))

(assert (=> b!7140336 (= res!2913425 call!651163)))

(declare-fun b!7140337 () Bool)

(assert (=> b!7140337 (= e!4291145 call!651162)))

(declare-fun b!7140338 () Bool)

(assert (=> b!7140338 (= e!4291142 call!651161)))

(declare-fun b!7140339 () Bool)

(assert (=> b!7140339 (= e!4291144 e!4291146)))

(assert (=> b!7140339 (= c!1331541 (is-Star!18160 r!11483))))

(assert (= (and d!2227185 (not res!2913427)) b!7140339))

(assert (= (and b!7140339 c!1331541) b!7140332))

(assert (= (and b!7140339 (not c!1331541)) b!7140331))

(assert (= (and b!7140332 res!2913429) b!7140337))

(assert (= (and b!7140331 c!1331542) b!7140333))

(assert (= (and b!7140331 (not c!1331542)) b!7140334))

(assert (= (and b!7140333 res!2913426) b!7140338))

(assert (= (and b!7140334 (not res!2913428)) b!7140336))

(assert (= (and b!7140336 res!2913425) b!7140335))

(assert (= (or b!7140338 b!7140335) bm!651158))

(assert (= (or b!7140333 b!7140336) bm!651157))

(assert (= (or b!7140337 bm!651157) bm!651156))

(declare-fun m!7855244 () Bool)

(assert (=> bm!651156 m!7855244))

(declare-fun m!7855246 () Bool)

(assert (=> bm!651158 m!7855246))

(declare-fun m!7855248 () Bool)

(assert (=> b!7140332 m!7855248))

(assert (=> start!695938 d!2227185))

(declare-fun d!2227191 () Bool)

(declare-fun lt!2567099 () Bool)

(assert (=> d!2227191 (= lt!2567099 (exists!3938 (toList!11191 z!3189) lambda!434496))))

(declare-fun choose!55213 ((Set Context!14308) Int) Bool)

(assert (=> d!2227191 (= lt!2567099 (choose!55213 z!3189 lambda!434496))))

(assert (=> d!2227191 (= (exists!3937 z!3189 lambda!434496) lt!2567099)))

(declare-fun bs!1888208 () Bool)

(assert (= bs!1888208 d!2227191))

(assert (=> bs!1888208 m!7855168))

(assert (=> bs!1888208 m!7855168))

(declare-fun m!7855250 () Bool)

(assert (=> bs!1888208 m!7855250))

(declare-fun m!7855252 () Bool)

(assert (=> bs!1888208 m!7855252))

(assert (=> b!7140257 d!2227191))

(declare-fun bs!1888211 () Bool)

(declare-fun d!2227193 () Bool)

(assert (= bs!1888211 (and d!2227193 b!7140257)))

(declare-fun lambda!434518 () Int)

(assert (=> bs!1888211 (not (= lambda!434518 lambda!434496))))

(assert (=> d!2227193 true))

(declare-fun order!28549 () Int)

(declare-fun dynLambda!28188 (Int Int) Int)

(assert (=> d!2227193 (< (dynLambda!28188 order!28549 lambda!434496) (dynLambda!28188 order!28549 lambda!434518))))

(declare-fun forall!16996 (List!69399 Int) Bool)

(assert (=> d!2227193 (= (exists!3938 lt!2567068 lambda!434496) (not (forall!16996 lt!2567068 lambda!434518)))))

(declare-fun bs!1888212 () Bool)

(assert (= bs!1888212 d!2227193))

(declare-fun m!7855256 () Bool)

(assert (=> bs!1888212 m!7855256))

(assert (=> b!7140257 d!2227193))

(declare-fun bs!1888213 () Bool)

(declare-fun d!2227197 () Bool)

(assert (= bs!1888213 (and d!2227197 b!7140257)))

(declare-fun lambda!434521 () Int)

(assert (=> bs!1888213 (= lambda!434521 lambda!434496)))

(declare-fun bs!1888214 () Bool)

(assert (= bs!1888214 (and d!2227197 d!2227193)))

(assert (=> bs!1888214 (not (= lambda!434521 lambda!434518))))

(assert (=> d!2227197 true))

(assert (=> d!2227197 (exists!3938 lt!2567068 lambda!434521)))

(declare-fun lt!2567102 () Unit!163181)

(declare-fun choose!55214 (List!69399 Regex!18160) Unit!163181)

(assert (=> d!2227197 (= lt!2567102 (choose!55214 lt!2567068 lt!2567066))))

(assert (=> d!2227197 (contains!20600 (unfocusZipperList!2201 lt!2567068) lt!2567066)))

(assert (=> d!2227197 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!19 lt!2567068 lt!2567066) lt!2567102)))

(declare-fun bs!1888215 () Bool)

(assert (= bs!1888215 d!2227197))

(declare-fun m!7855258 () Bool)

(assert (=> bs!1888215 m!7855258))

(declare-fun m!7855260 () Bool)

(assert (=> bs!1888215 m!7855260))

(assert (=> bs!1888215 m!7855192))

(assert (=> bs!1888215 m!7855192))

(declare-fun m!7855262 () Bool)

(assert (=> bs!1888215 m!7855262))

(assert (=> b!7140257 d!2227197))

(declare-fun bs!1888216 () Bool)

(declare-fun d!2227199 () Bool)

(assert (= bs!1888216 (and d!2227199 b!7140258)))

(declare-fun lambda!434524 () Int)

(assert (=> bs!1888216 (not (= lambda!434524 lambda!434495))))

(declare-fun forall!16997 (List!69398 Int) Bool)

(assert (=> d!2227199 (= (inv!88465 setElem!52522) (forall!16997 (exprs!7654 setElem!52522) lambda!434524))))

(declare-fun bs!1888217 () Bool)

(assert (= bs!1888217 d!2227199))

(declare-fun m!7855264 () Bool)

(assert (=> bs!1888217 m!7855264))

(assert (=> setNonEmpty!52522 d!2227199))

(declare-fun d!2227201 () Bool)

(declare-fun lt!2567108 () Bool)

(declare-fun content!14194 (List!69398) (Set Regex!18160))

(assert (=> d!2227201 (= lt!2567108 (set.member lt!2567066 (content!14194 lt!2567067)))))

(declare-fun e!4291153 () Bool)

(assert (=> d!2227201 (= lt!2567108 e!4291153)))

(declare-fun res!2913435 () Bool)

(assert (=> d!2227201 (=> (not res!2913435) (not e!4291153))))

(assert (=> d!2227201 (= res!2913435 (is-Cons!69274 lt!2567067))))

(assert (=> d!2227201 (= (contains!20600 lt!2567067 lt!2567066) lt!2567108)))

(declare-fun b!7140348 () Bool)

(declare-fun e!4291154 () Bool)

(assert (=> b!7140348 (= e!4291153 e!4291154)))

(declare-fun res!2913434 () Bool)

(assert (=> b!7140348 (=> res!2913434 e!4291154)))

(assert (=> b!7140348 (= res!2913434 (= (h!75722 lt!2567067) lt!2567066))))

(declare-fun b!7140349 () Bool)

(assert (=> b!7140349 (= e!4291154 (contains!20600 (t!383415 lt!2567067) lt!2567066))))

(assert (= (and d!2227201 res!2913435) b!7140348))

(assert (= (and b!7140348 (not res!2913434)) b!7140349))

(declare-fun m!7855266 () Bool)

(assert (=> d!2227201 m!7855266))

(declare-fun m!7855268 () Bool)

(assert (=> d!2227201 m!7855268))

(declare-fun m!7855270 () Bool)

(assert (=> b!7140349 m!7855270))

(assert (=> b!7140259 d!2227201))

(declare-fun bs!1888221 () Bool)

(declare-fun d!2227203 () Bool)

(assert (= bs!1888221 (and d!2227203 b!7140258)))

(declare-fun lambda!434530 () Int)

(assert (=> bs!1888221 (not (= lambda!434530 lambda!434495))))

(declare-fun bs!1888222 () Bool)

(assert (= bs!1888222 (and d!2227203 d!2227199)))

(assert (=> bs!1888222 (not (= lambda!434530 lambda!434524))))

(assert (=> d!2227203 true))

(declare-fun order!28551 () Int)

(declare-fun dynLambda!28189 (Int Int) Int)

(assert (=> d!2227203 (< (dynLambda!28189 order!28551 lambda!434495) (dynLambda!28189 order!28551 lambda!434530))))

(assert (=> d!2227203 (= (exists!3936 lt!2567067 lambda!434495) (not (forall!16997 lt!2567067 lambda!434530)))))

(declare-fun bs!1888223 () Bool)

(assert (= bs!1888223 d!2227203))

(declare-fun m!7855278 () Bool)

(assert (=> bs!1888223 m!7855278))

(assert (=> b!7140258 d!2227203))

(declare-fun d!2227207 () Bool)

(declare-fun nullableFct!2985 (Regex!18160) Bool)

(assert (=> d!2227207 (= (nullable!7679 lt!2567065) (nullableFct!2985 lt!2567065))))

(declare-fun bs!1888224 () Bool)

(assert (= bs!1888224 d!2227207))

(declare-fun m!7855280 () Bool)

(assert (=> bs!1888224 m!7855280))

(assert (=> b!7140258 d!2227207))

(declare-fun bs!1888227 () Bool)

(declare-fun d!2227209 () Bool)

(assert (= bs!1888227 (and d!2227209 b!7140258)))

(declare-fun lambda!434538 () Int)

(assert (=> bs!1888227 (not (= lambda!434538 lambda!434495))))

(declare-fun bs!1888228 () Bool)

(assert (= bs!1888228 (and d!2227209 d!2227199)))

(assert (=> bs!1888228 (= lambda!434538 lambda!434524)))

(declare-fun bs!1888229 () Bool)

(assert (= bs!1888229 (and d!2227209 d!2227203)))

(assert (=> bs!1888229 (not (= lambda!434538 lambda!434530))))

(declare-fun lambda!434539 () Int)

(assert (=> bs!1888227 (= lambda!434539 lambda!434495)))

(assert (=> bs!1888228 (not (= lambda!434539 lambda!434524))))

(assert (=> bs!1888229 (not (= lambda!434539 lambda!434530))))

(declare-fun bs!1888230 () Bool)

(assert (= bs!1888230 d!2227209))

(assert (=> bs!1888230 (not (= lambda!434539 lambda!434538))))

(assert (=> d!2227209 (= (nullable!7679 lt!2567065) (exists!3936 lt!2567067 lambda!434539))))

(declare-fun lt!2567111 () Unit!163181)

(declare-fun choose!55215 (Regex!18160 List!69398) Unit!163181)

(assert (=> d!2227209 (= lt!2567111 (choose!55215 lt!2567065 lt!2567067))))

(assert (=> d!2227209 (forall!16997 lt!2567067 lambda!434538)))

(assert (=> d!2227209 (= (nullableGenUnionSpec!47 lt!2567065 lt!2567067) lt!2567111)))

(assert (=> bs!1888230 m!7855186))

(declare-fun m!7855284 () Bool)

(assert (=> bs!1888230 m!7855284))

(declare-fun m!7855286 () Bool)

(assert (=> bs!1888230 m!7855286))

(declare-fun m!7855288 () Bool)

(assert (=> bs!1888230 m!7855288))

(assert (=> b!7140258 d!2227209))

(assert (=> b!7140253 d!2227203))

(declare-fun d!2227213 () Bool)

(assert (=> d!2227213 (= (nullable!7679 lt!2567066) (nullableFct!2985 lt!2567066))))

(declare-fun bs!1888231 () Bool)

(assert (= bs!1888231 d!2227213))

(declare-fun m!7855290 () Bool)

(assert (=> bs!1888231 m!7855290))

(assert (=> b!7140260 d!2227213))

(declare-fun b!7140382 () Bool)

(declare-fun e!4291178 () Regex!18160)

(declare-fun e!4291179 () Regex!18160)

(assert (=> b!7140382 (= e!4291178 e!4291179)))

(declare-fun c!1331556 () Bool)

(assert (=> b!7140382 (= c!1331556 (is-Cons!69274 lt!2567067))))

(declare-fun b!7140383 () Bool)

(declare-fun e!4291180 () Bool)

(declare-fun dynLambda!28190 (Int Regex!18160) Bool)

(assert (=> b!7140383 (= e!4291180 (dynLambda!28190 lambda!434495 (h!75722 lt!2567067)))))

(declare-fun b!7140384 () Bool)

(assert (=> b!7140384 (= e!4291179 (getWitness!1920 (t!383415 lt!2567067) lambda!434495))))

(declare-fun d!2227215 () Bool)

(declare-fun e!4291177 () Bool)

(assert (=> d!2227215 e!4291177))

(declare-fun res!2913451 () Bool)

(assert (=> d!2227215 (=> (not res!2913451) (not e!4291177))))

(declare-fun lt!2567116 () Regex!18160)

(assert (=> d!2227215 (= res!2913451 (dynLambda!28190 lambda!434495 lt!2567116))))

(assert (=> d!2227215 (= lt!2567116 e!4291178)))

(declare-fun c!1331555 () Bool)

(assert (=> d!2227215 (= c!1331555 e!4291180)))

(declare-fun res!2913450 () Bool)

(assert (=> d!2227215 (=> (not res!2913450) (not e!4291180))))

(assert (=> d!2227215 (= res!2913450 (is-Cons!69274 lt!2567067))))

(assert (=> d!2227215 (exists!3936 lt!2567067 lambda!434495)))

(assert (=> d!2227215 (= (getWitness!1920 lt!2567067 lambda!434495) lt!2567116)))

(declare-fun b!7140385 () Bool)

(declare-fun lt!2567117 () Unit!163181)

(declare-fun Unit!163185 () Unit!163181)

(assert (=> b!7140385 (= lt!2567117 Unit!163185)))

(assert (=> b!7140385 false))

(declare-fun head!14504 (List!69398) Regex!18160)

(assert (=> b!7140385 (= e!4291179 (head!14504 lt!2567067))))

(declare-fun b!7140386 () Bool)

(assert (=> b!7140386 (= e!4291178 (h!75722 lt!2567067))))

(declare-fun b!7140387 () Bool)

(assert (=> b!7140387 (= e!4291177 (contains!20600 lt!2567067 lt!2567116))))

(assert (= (and d!2227215 res!2913450) b!7140383))

(assert (= (and d!2227215 c!1331555) b!7140386))

(assert (= (and d!2227215 (not c!1331555)) b!7140382))

(assert (= (and b!7140382 c!1331556) b!7140384))

(assert (= (and b!7140382 (not c!1331556)) b!7140385))

(assert (= (and d!2227215 res!2913451) b!7140387))

(declare-fun b_lambda!272527 () Bool)

(assert (=> (not b_lambda!272527) (not b!7140383)))

(declare-fun b_lambda!272529 () Bool)

(assert (=> (not b_lambda!272529) (not d!2227215)))

(declare-fun m!7855292 () Bool)

(assert (=> b!7140385 m!7855292))

(declare-fun m!7855294 () Bool)

(assert (=> d!2227215 m!7855294))

(assert (=> d!2227215 m!7855184))

(declare-fun m!7855296 () Bool)

(assert (=> b!7140384 m!7855296))

(declare-fun m!7855298 () Bool)

(assert (=> b!7140387 m!7855298))

(declare-fun m!7855300 () Bool)

(assert (=> b!7140383 m!7855300))

(assert (=> b!7140260 d!2227215))

(declare-fun d!2227217 () Bool)

(declare-fun lt!2567120 () Regex!18160)

(assert (=> d!2227217 (validRegex!9327 lt!2567120)))

(assert (=> d!2227217 (= lt!2567120 (generalisedUnion!2665 (unfocusZipperList!2201 lt!2567068)))))

(assert (=> d!2227217 (= (unfocusZipper!2508 lt!2567068) lt!2567120)))

(declare-fun bs!1888232 () Bool)

(assert (= bs!1888232 d!2227217))

(declare-fun m!7855302 () Bool)

(assert (=> bs!1888232 m!7855302))

(assert (=> bs!1888232 m!7855192))

(assert (=> bs!1888232 m!7855192))

(declare-fun m!7855304 () Bool)

(assert (=> bs!1888232 m!7855304))

(assert (=> b!7140250 d!2227217))

(declare-fun d!2227219 () Bool)

(declare-fun e!4291183 () Bool)

(assert (=> d!2227219 e!4291183))

(declare-fun res!2913454 () Bool)

(assert (=> d!2227219 (=> (not res!2913454) (not e!4291183))))

(declare-fun lt!2567123 () List!69399)

(declare-fun noDuplicate!2826 (List!69399) Bool)

(assert (=> d!2227219 (= res!2913454 (noDuplicate!2826 lt!2567123))))

(declare-fun choose!55216 ((Set Context!14308)) List!69399)

(assert (=> d!2227219 (= lt!2567123 (choose!55216 z!3189))))

(assert (=> d!2227219 (= (toList!11191 z!3189) lt!2567123)))

(declare-fun b!7140390 () Bool)

(declare-fun content!14195 (List!69399) (Set Context!14308))

(assert (=> b!7140390 (= e!4291183 (= (content!14195 lt!2567123) z!3189))))

(assert (= (and d!2227219 res!2913454) b!7140390))

(declare-fun m!7855306 () Bool)

(assert (=> d!2227219 m!7855306))

(declare-fun m!7855308 () Bool)

(assert (=> d!2227219 m!7855308))

(declare-fun m!7855310 () Bool)

(assert (=> b!7140390 m!7855310))

(assert (=> b!7140250 d!2227219))

(declare-fun bs!1888237 () Bool)

(declare-fun d!2227221 () Bool)

(assert (= bs!1888237 (and d!2227221 d!2227199)))

(declare-fun lambda!434545 () Int)

(assert (=> bs!1888237 (= lambda!434545 lambda!434524)))

(declare-fun bs!1888238 () Bool)

(assert (= bs!1888238 (and d!2227221 d!2227209)))

(assert (=> bs!1888238 (= lambda!434545 lambda!434538)))

(declare-fun bs!1888239 () Bool)

(assert (= bs!1888239 (and d!2227221 b!7140258)))

(assert (=> bs!1888239 (not (= lambda!434545 lambda!434495))))

(assert (=> bs!1888238 (not (= lambda!434545 lambda!434539))))

(declare-fun bs!1888240 () Bool)

(assert (= bs!1888240 (and d!2227221 d!2227203)))

(assert (=> bs!1888240 (not (= lambda!434545 lambda!434530))))

(declare-fun b!7140422 () Bool)

(declare-fun e!4291203 () Regex!18160)

(assert (=> b!7140422 (= e!4291203 (Union!18160 (h!75722 lt!2567067) (generalisedUnion!2665 (t!383415 lt!2567067))))))

(declare-fun b!7140423 () Bool)

(declare-fun e!4291204 () Regex!18160)

(assert (=> b!7140423 (= e!4291204 (h!75722 lt!2567067))))

(declare-fun b!7140424 () Bool)

(assert (=> b!7140424 (= e!4291204 e!4291203)))

(declare-fun c!1331569 () Bool)

(assert (=> b!7140424 (= c!1331569 (is-Cons!69274 lt!2567067))))

(declare-fun b!7140425 () Bool)

(declare-fun e!4291208 () Bool)

(declare-fun lt!2567126 () Regex!18160)

(declare-fun isEmptyLang!2095 (Regex!18160) Bool)

(assert (=> b!7140425 (= e!4291208 (isEmptyLang!2095 lt!2567126))))

(declare-fun b!7140426 () Bool)

(declare-fun e!4291205 () Bool)

(declare-fun isUnion!1522 (Regex!18160) Bool)

(assert (=> b!7140426 (= e!4291205 (isUnion!1522 lt!2567126))))

(declare-fun e!4291207 () Bool)

(assert (=> d!2227221 e!4291207))

(declare-fun res!2913464 () Bool)

(assert (=> d!2227221 (=> (not res!2913464) (not e!4291207))))

(assert (=> d!2227221 (= res!2913464 (validRegex!9327 lt!2567126))))

(assert (=> d!2227221 (= lt!2567126 e!4291204)))

(declare-fun c!1331570 () Bool)

(declare-fun e!4291206 () Bool)

(assert (=> d!2227221 (= c!1331570 e!4291206)))

(declare-fun res!2913465 () Bool)

(assert (=> d!2227221 (=> (not res!2913465) (not e!4291206))))

(assert (=> d!2227221 (= res!2913465 (is-Cons!69274 lt!2567067))))

(assert (=> d!2227221 (forall!16997 lt!2567067 lambda!434545)))

(assert (=> d!2227221 (= (generalisedUnion!2665 lt!2567067) lt!2567126)))

(declare-fun b!7140427 () Bool)

(assert (=> b!7140427 (= e!4291208 e!4291205)))

(declare-fun c!1331568 () Bool)

(declare-fun isEmpty!40063 (List!69398) Bool)

(declare-fun tail!13974 (List!69398) List!69398)

(assert (=> b!7140427 (= c!1331568 (isEmpty!40063 (tail!13974 lt!2567067)))))

(declare-fun b!7140428 () Bool)

(assert (=> b!7140428 (= e!4291205 (= lt!2567126 (head!14504 lt!2567067)))))

(declare-fun b!7140429 () Bool)

(assert (=> b!7140429 (= e!4291203 EmptyLang!18160)))

(declare-fun b!7140430 () Bool)

(assert (=> b!7140430 (= e!4291207 e!4291208)))

(declare-fun c!1331567 () Bool)

(assert (=> b!7140430 (= c!1331567 (isEmpty!40063 lt!2567067))))

(declare-fun b!7140431 () Bool)

(assert (=> b!7140431 (= e!4291206 (isEmpty!40063 (t!383415 lt!2567067)))))

(assert (= (and d!2227221 res!2913465) b!7140431))

(assert (= (and d!2227221 c!1331570) b!7140423))

(assert (= (and d!2227221 (not c!1331570)) b!7140424))

(assert (= (and b!7140424 c!1331569) b!7140422))

(assert (= (and b!7140424 (not c!1331569)) b!7140429))

(assert (= (and d!2227221 res!2913464) b!7140430))

(assert (= (and b!7140430 c!1331567) b!7140425))

(assert (= (and b!7140430 (not c!1331567)) b!7140427))

(assert (= (and b!7140427 c!1331568) b!7140428))

(assert (= (and b!7140427 (not c!1331568)) b!7140426))

(declare-fun m!7855322 () Bool)

(assert (=> b!7140427 m!7855322))

(assert (=> b!7140427 m!7855322))

(declare-fun m!7855324 () Bool)

(assert (=> b!7140427 m!7855324))

(declare-fun m!7855326 () Bool)

(assert (=> b!7140430 m!7855326))

(declare-fun m!7855328 () Bool)

(assert (=> d!2227221 m!7855328))

(declare-fun m!7855330 () Bool)

(assert (=> d!2227221 m!7855330))

(assert (=> b!7140428 m!7855292))

(declare-fun m!7855332 () Bool)

(assert (=> b!7140426 m!7855332))

(declare-fun m!7855334 () Bool)

(assert (=> b!7140425 m!7855334))

(declare-fun m!7855336 () Bool)

(assert (=> b!7140422 m!7855336))

(declare-fun m!7855338 () Bool)

(assert (=> b!7140431 m!7855338))

(assert (=> b!7140251 d!2227221))

(declare-fun bs!1888241 () Bool)

(declare-fun d!2227229 () Bool)

(assert (= bs!1888241 (and d!2227229 d!2227221)))

(declare-fun lambda!434552 () Int)

(assert (=> bs!1888241 (= lambda!434552 lambda!434545)))

(declare-fun bs!1888242 () Bool)

(assert (= bs!1888242 (and d!2227229 d!2227199)))

(assert (=> bs!1888242 (= lambda!434552 lambda!434524)))

(declare-fun bs!1888243 () Bool)

(assert (= bs!1888243 (and d!2227229 d!2227209)))

(assert (=> bs!1888243 (= lambda!434552 lambda!434538)))

(declare-fun bs!1888244 () Bool)

(assert (= bs!1888244 (and d!2227229 b!7140258)))

(assert (=> bs!1888244 (not (= lambda!434552 lambda!434495))))

(assert (=> bs!1888243 (not (= lambda!434552 lambda!434539))))

(declare-fun bs!1888245 () Bool)

(assert (= bs!1888245 (and d!2227229 d!2227203)))

(assert (=> bs!1888245 (not (= lambda!434552 lambda!434530))))

(declare-fun lt!2567131 () List!69398)

(assert (=> d!2227229 (forall!16997 lt!2567131 lambda!434552)))

(declare-fun e!4291211 () List!69398)

(assert (=> d!2227229 (= lt!2567131 e!4291211)))

(declare-fun c!1331573 () Bool)

(assert (=> d!2227229 (= c!1331573 (is-Cons!69275 lt!2567068))))

(assert (=> d!2227229 (= (unfocusZipperList!2201 lt!2567068) lt!2567131)))

(declare-fun b!7140436 () Bool)

(declare-fun generalisedConcat!2344 (List!69398) Regex!18160)

(assert (=> b!7140436 (= e!4291211 (Cons!69274 (generalisedConcat!2344 (exprs!7654 (h!75723 lt!2567068))) (unfocusZipperList!2201 (t!383416 lt!2567068))))))

(declare-fun b!7140437 () Bool)

(assert (=> b!7140437 (= e!4291211 Nil!69274)))

(assert (= (and d!2227229 c!1331573) b!7140436))

(assert (= (and d!2227229 (not c!1331573)) b!7140437))

(declare-fun m!7855340 () Bool)

(assert (=> d!2227229 m!7855340))

(declare-fun m!7855342 () Bool)

(assert (=> b!7140436 m!7855342))

(declare-fun m!7855344 () Bool)

(assert (=> b!7140436 m!7855344))

(assert (=> b!7140251 d!2227229))

(declare-fun b!7140451 () Bool)

(declare-fun e!4291214 () Bool)

(declare-fun tp!1969205 () Bool)

(declare-fun tp!1969206 () Bool)

(assert (=> b!7140451 (= e!4291214 (and tp!1969205 tp!1969206))))

(declare-fun b!7140449 () Bool)

(declare-fun tp!1969202 () Bool)

(declare-fun tp!1969204 () Bool)

(assert (=> b!7140449 (= e!4291214 (and tp!1969202 tp!1969204))))

(declare-fun b!7140450 () Bool)

(declare-fun tp!1969203 () Bool)

(assert (=> b!7140450 (= e!4291214 tp!1969203)))

(assert (=> b!7140262 (= tp!1969169 e!4291214)))

(declare-fun b!7140448 () Bool)

(assert (=> b!7140448 (= e!4291214 tp_is_empty!45957)))

(assert (= (and b!7140262 (is-ElementMatch!18160 (reg!18489 r!11483))) b!7140448))

(assert (= (and b!7140262 (is-Concat!27005 (reg!18489 r!11483))) b!7140449))

(assert (= (and b!7140262 (is-Star!18160 (reg!18489 r!11483))) b!7140450))

(assert (= (and b!7140262 (is-Union!18160 (reg!18489 r!11483))) b!7140451))

(declare-fun condSetEmpty!52528 () Bool)

(assert (=> setNonEmpty!52522 (= condSetEmpty!52528 (= setRest!52522 (as set.empty (Set Context!14308))))))

(declare-fun setRes!52528 () Bool)

(assert (=> setNonEmpty!52522 (= tp!1969165 setRes!52528)))

(declare-fun setIsEmpty!52528 () Bool)

(assert (=> setIsEmpty!52528 setRes!52528))

(declare-fun tp!1969211 () Bool)

(declare-fun setNonEmpty!52528 () Bool)

(declare-fun setElem!52528 () Context!14308)

(declare-fun e!4291217 () Bool)

(assert (=> setNonEmpty!52528 (= setRes!52528 (and tp!1969211 (inv!88465 setElem!52528) e!4291217))))

(declare-fun setRest!52528 () (Set Context!14308))

(assert (=> setNonEmpty!52528 (= setRest!52522 (set.union (set.insert setElem!52528 (as set.empty (Set Context!14308))) setRest!52528))))

(declare-fun b!7140456 () Bool)

(declare-fun tp!1969212 () Bool)

(assert (=> b!7140456 (= e!4291217 tp!1969212)))

(assert (= (and setNonEmpty!52522 condSetEmpty!52528) setIsEmpty!52528))

(assert (= (and setNonEmpty!52522 (not condSetEmpty!52528)) setNonEmpty!52528))

(assert (= setNonEmpty!52528 b!7140456))

(declare-fun m!7855346 () Bool)

(assert (=> setNonEmpty!52528 m!7855346))

(declare-fun b!7140460 () Bool)

(declare-fun e!4291218 () Bool)

(declare-fun tp!1969216 () Bool)

(declare-fun tp!1969217 () Bool)

(assert (=> b!7140460 (= e!4291218 (and tp!1969216 tp!1969217))))

(declare-fun b!7140458 () Bool)

(declare-fun tp!1969213 () Bool)

(declare-fun tp!1969215 () Bool)

(assert (=> b!7140458 (= e!4291218 (and tp!1969213 tp!1969215))))

(declare-fun b!7140459 () Bool)

(declare-fun tp!1969214 () Bool)

(assert (=> b!7140459 (= e!4291218 tp!1969214)))

(assert (=> b!7140255 (= tp!1969166 e!4291218)))

(declare-fun b!7140457 () Bool)

(assert (=> b!7140457 (= e!4291218 tp_is_empty!45957)))

(assert (= (and b!7140255 (is-ElementMatch!18160 (regOne!36833 r!11483))) b!7140457))

(assert (= (and b!7140255 (is-Concat!27005 (regOne!36833 r!11483))) b!7140458))

(assert (= (and b!7140255 (is-Star!18160 (regOne!36833 r!11483))) b!7140459))

(assert (= (and b!7140255 (is-Union!18160 (regOne!36833 r!11483))) b!7140460))

(declare-fun b!7140464 () Bool)

(declare-fun e!4291219 () Bool)

(declare-fun tp!1969221 () Bool)

(declare-fun tp!1969222 () Bool)

(assert (=> b!7140464 (= e!4291219 (and tp!1969221 tp!1969222))))

(declare-fun b!7140462 () Bool)

(declare-fun tp!1969218 () Bool)

(declare-fun tp!1969220 () Bool)

(assert (=> b!7140462 (= e!4291219 (and tp!1969218 tp!1969220))))

(declare-fun b!7140463 () Bool)

(declare-fun tp!1969219 () Bool)

(assert (=> b!7140463 (= e!4291219 tp!1969219)))

(assert (=> b!7140255 (= tp!1969168 e!4291219)))

(declare-fun b!7140461 () Bool)

(assert (=> b!7140461 (= e!4291219 tp_is_empty!45957)))

(assert (= (and b!7140255 (is-ElementMatch!18160 (regTwo!36833 r!11483))) b!7140461))

(assert (= (and b!7140255 (is-Concat!27005 (regTwo!36833 r!11483))) b!7140462))

(assert (= (and b!7140255 (is-Star!18160 (regTwo!36833 r!11483))) b!7140463))

(assert (= (and b!7140255 (is-Union!18160 (regTwo!36833 r!11483))) b!7140464))

(declare-fun b!7140468 () Bool)

(declare-fun e!4291220 () Bool)

(declare-fun tp!1969226 () Bool)

(declare-fun tp!1969227 () Bool)

(assert (=> b!7140468 (= e!4291220 (and tp!1969226 tp!1969227))))

(declare-fun b!7140466 () Bool)

(declare-fun tp!1969223 () Bool)

(declare-fun tp!1969225 () Bool)

(assert (=> b!7140466 (= e!4291220 (and tp!1969223 tp!1969225))))

(declare-fun b!7140467 () Bool)

(declare-fun tp!1969224 () Bool)

(assert (=> b!7140467 (= e!4291220 tp!1969224)))

(assert (=> b!7140256 (= tp!1969164 e!4291220)))

(declare-fun b!7140465 () Bool)

(assert (=> b!7140465 (= e!4291220 tp_is_empty!45957)))

(assert (= (and b!7140256 (is-ElementMatch!18160 (regOne!36832 r!11483))) b!7140465))

(assert (= (and b!7140256 (is-Concat!27005 (regOne!36832 r!11483))) b!7140466))

(assert (= (and b!7140256 (is-Star!18160 (regOne!36832 r!11483))) b!7140467))

(assert (= (and b!7140256 (is-Union!18160 (regOne!36832 r!11483))) b!7140468))

(declare-fun b!7140472 () Bool)

(declare-fun e!4291221 () Bool)

(declare-fun tp!1969231 () Bool)

(declare-fun tp!1969232 () Bool)

(assert (=> b!7140472 (= e!4291221 (and tp!1969231 tp!1969232))))

(declare-fun b!7140470 () Bool)

(declare-fun tp!1969228 () Bool)

(declare-fun tp!1969230 () Bool)

(assert (=> b!7140470 (= e!4291221 (and tp!1969228 tp!1969230))))

(declare-fun b!7140471 () Bool)

(declare-fun tp!1969229 () Bool)

(assert (=> b!7140471 (= e!4291221 tp!1969229)))

(assert (=> b!7140256 (= tp!1969170 e!4291221)))

(declare-fun b!7140469 () Bool)

(assert (=> b!7140469 (= e!4291221 tp_is_empty!45957)))

(assert (= (and b!7140256 (is-ElementMatch!18160 (regTwo!36832 r!11483))) b!7140469))

(assert (= (and b!7140256 (is-Concat!27005 (regTwo!36832 r!11483))) b!7140470))

(assert (= (and b!7140256 (is-Star!18160 (regTwo!36832 r!11483))) b!7140471))

(assert (= (and b!7140256 (is-Union!18160 (regTwo!36832 r!11483))) b!7140472))

(declare-fun b!7140477 () Bool)

(declare-fun e!4291224 () Bool)

(declare-fun tp!1969237 () Bool)

(declare-fun tp!1969238 () Bool)

(assert (=> b!7140477 (= e!4291224 (and tp!1969237 tp!1969238))))

(assert (=> b!7140261 (= tp!1969167 e!4291224)))

(assert (= (and b!7140261 (is-Cons!69274 (exprs!7654 setElem!52522))) b!7140477))

(declare-fun b_lambda!272531 () Bool)

(assert (= b_lambda!272525 (or b!7140257 b_lambda!272531)))

(declare-fun bs!1888251 () Bool)

(declare-fun d!2227235 () Bool)

(assert (= bs!1888251 (and d!2227235 b!7140257)))

(assert (=> bs!1888251 (= (dynLambda!28187 lambda!434496 lt!2567093) (= (generalisedConcat!2344 (exprs!7654 lt!2567093)) lt!2567066))))

(declare-fun m!7855356 () Bool)

(assert (=> bs!1888251 m!7855356))

(assert (=> d!2227183 d!2227235))

(declare-fun b_lambda!272533 () Bool)

(assert (= b_lambda!272529 (or b!7140258 b_lambda!272533)))

(declare-fun bs!1888252 () Bool)

(declare-fun d!2227237 () Bool)

(assert (= bs!1888252 (and d!2227237 b!7140258)))

(assert (=> bs!1888252 (= (dynLambda!28190 lambda!434495 lt!2567116) (nullable!7679 lt!2567116))))

(declare-fun m!7855358 () Bool)

(assert (=> bs!1888252 m!7855358))

(assert (=> d!2227215 d!2227237))

(declare-fun b_lambda!272535 () Bool)

(assert (= b_lambda!272527 (or b!7140258 b_lambda!272535)))

(declare-fun bs!1888253 () Bool)

(declare-fun d!2227239 () Bool)

(assert (= bs!1888253 (and d!2227239 b!7140258)))

(assert (=> bs!1888253 (= (dynLambda!28190 lambda!434495 (h!75722 lt!2567067)) (nullable!7679 (h!75722 lt!2567067)))))

(declare-fun m!7855360 () Bool)

(assert (=> bs!1888253 m!7855360))

(assert (=> b!7140383 d!2227239))

(push 1)

(assert (not bs!1888251))

(assert (not b!7140470))

(assert (not d!2227199))

(assert (not b_lambda!272533))

(assert (not setNonEmpty!52528))

(assert (not d!2227213))

(assert (not b!7140427))

(assert (not b!7140385))

(assert (not d!2227203))

(assert (not b!7140425))

(assert (not b_lambda!272535))

(assert (not b!7140464))

(assert tp_is_empty!45957)

(assert (not b!7140387))

(assert (not b!7140451))

(assert (not d!2227219))

(assert (not bm!651156))

(assert (not b!7140460))

(assert (not d!2227197))

(assert (not b!7140471))

(assert (not b!7140466))

(assert (not b!7140467))

(assert (not bm!651158))

(assert (not b!7140436))

(assert (not d!2227221))

(assert (not b!7140456))

(assert (not b!7140384))

(assert (not b!7140459))

(assert (not d!2227217))

(assert (not b!7140477))

(assert (not b!7140463))

(assert (not bs!1888253))

(assert (not d!2227207))

(assert (not d!2227209))

(assert (not b!7140426))

(assert (not d!2227193))

(assert (not b!7140450))

(assert (not b!7140462))

(assert (not d!2227191))

(assert (not b!7140458))

(assert (not d!2227183))

(assert (not b!7140449))

(assert (not b!7140431))

(assert (not d!2227201))

(assert (not b!7140390))

(assert (not b!7140430))

(assert (not b!7140468))

(assert (not b_lambda!272531))

(assert (not b!7140472))

(assert (not d!2227215))

(assert (not b!7140349))

(assert (not b!7140428))

(assert (not bs!1888252))

(assert (not b!7140332))

(assert (not b!7140422))

(assert (not d!2227229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

