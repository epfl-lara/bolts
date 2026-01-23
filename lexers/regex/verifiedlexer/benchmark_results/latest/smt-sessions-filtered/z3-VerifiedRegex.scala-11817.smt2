; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665070 () Bool)

(assert start!665070)

(declare-fun b!6908332 () Bool)

(assert (=> b!6908332 true))

(assert (=> b!6908332 true))

(assert (=> b!6908332 true))

(declare-fun lambda!392496 () Int)

(declare-fun lambda!392495 () Int)

(assert (=> b!6908332 (not (= lambda!392496 lambda!392495))))

(assert (=> b!6908332 true))

(assert (=> b!6908332 true))

(assert (=> b!6908332 true))

(declare-fun bs!1844337 () Bool)

(declare-fun b!6908311 () Bool)

(assert (= bs!1844337 (and b!6908311 b!6908332)))

(declare-fun lambda!392497 () Int)

(declare-datatypes ((C!34032 0))(
  ( (C!34033 (val!26718 Int)) )
))
(declare-datatypes ((Regex!16881 0))(
  ( (ElementMatch!16881 (c!1283311 C!34032)) (Concat!25726 (regOne!34274 Regex!16881) (regTwo!34274 Regex!16881)) (EmptyExpr!16881) (Star!16881 (reg!17210 Regex!16881)) (EmptyLang!16881) (Union!16881 (regOne!34275 Regex!16881) (regTwo!34275 Regex!16881)) )
))
(declare-fun r1!6342 () Regex!16881)

(declare-datatypes ((List!66638 0))(
  ( (Nil!66514) (Cons!66514 (h!72962 C!34032) (t!380381 List!66638)) )
))
(declare-fun s!14361 () List!66638)

(declare-datatypes ((tuple2!67496 0))(
  ( (tuple2!67497 (_1!37051 List!66638) (_2!37051 List!66638)) )
))
(declare-fun lt!2468032 () tuple2!67496)

(declare-fun r2!6280 () Regex!16881)

(declare-fun r3!135 () Regex!16881)

(declare-fun lt!2468040 () Regex!16881)

(assert (=> bs!1844337 (= (and (= (_1!37051 lt!2468032) s!14361) (= r1!6342 lt!2468040) (= r2!6280 r3!135)) (= lambda!392497 lambda!392495))))

(assert (=> bs!1844337 (not (= lambda!392497 lambda!392496))))

(assert (=> b!6908311 true))

(assert (=> b!6908311 true))

(assert (=> b!6908311 true))

(declare-fun lambda!392498 () Int)

(assert (=> bs!1844337 (not (= lambda!392498 lambda!392495))))

(assert (=> bs!1844337 (= (and (= (_1!37051 lt!2468032) s!14361) (= r1!6342 lt!2468040) (= r2!6280 r3!135)) (= lambda!392498 lambda!392496))))

(assert (=> b!6908311 (not (= lambda!392498 lambda!392497))))

(assert (=> b!6908311 true))

(assert (=> b!6908311 true))

(assert (=> b!6908311 true))

(declare-fun bs!1844338 () Bool)

(declare-fun b!6908319 () Bool)

(assert (= bs!1844338 (and b!6908319 b!6908332)))

(declare-fun lt!2468042 () List!66638)

(declare-fun lambda!392499 () Int)

(assert (=> bs!1844338 (= (and (= lt!2468042 s!14361) (= r2!6280 lt!2468040)) (= lambda!392499 lambda!392495))))

(assert (=> bs!1844338 (not (= lambda!392499 lambda!392496))))

(declare-fun bs!1844339 () Bool)

(assert (= bs!1844339 (and b!6908319 b!6908311)))

(assert (=> bs!1844339 (= (and (= lt!2468042 (_1!37051 lt!2468032)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392499 lambda!392497))))

(assert (=> bs!1844339 (not (= lambda!392499 lambda!392498))))

(assert (=> b!6908319 true))

(assert (=> b!6908319 true))

(assert (=> b!6908319 true))

(declare-fun lambda!392500 () Int)

(assert (=> b!6908319 (not (= lambda!392500 lambda!392499))))

(assert (=> bs!1844338 (= (and (= lt!2468042 s!14361) (= r2!6280 lt!2468040)) (= lambda!392500 lambda!392496))))

(assert (=> bs!1844339 (= (and (= lt!2468042 (_1!37051 lt!2468032)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392500 lambda!392498))))

(assert (=> bs!1844338 (not (= lambda!392500 lambda!392495))))

(assert (=> bs!1844339 (not (= lambda!392500 lambda!392497))))

(assert (=> b!6908319 true))

(assert (=> b!6908319 true))

(assert (=> b!6908319 true))

(declare-fun e!4159567 () Bool)

(declare-fun e!4159563 () Bool)

(assert (=> b!6908311 (= e!4159567 e!4159563)))

(declare-fun res!2817286 () Bool)

(assert (=> b!6908311 (=> res!2817286 e!4159563)))

(declare-fun lt!2468044 () tuple2!67496)

(declare-fun matchR!9026 (Regex!16881 List!66638) Bool)

(assert (=> b!6908311 (= res!2817286 (not (matchR!9026 r1!6342 (_1!37051 lt!2468044))))))

(declare-datatypes ((Option!16660 0))(
  ( (None!16659) (Some!16659 (v!52931 tuple2!67496)) )
))
(declare-fun lt!2468051 () Option!16660)

(declare-fun get!23272 (Option!16660) tuple2!67496)

(assert (=> b!6908311 (= lt!2468044 (get!23272 lt!2468051))))

(declare-fun Exists!3889 (Int) Bool)

(assert (=> b!6908311 (= (Exists!3889 lambda!392497) (Exists!3889 lambda!392498))))

(declare-datatypes ((Unit!160498 0))(
  ( (Unit!160499) )
))
(declare-fun lt!2468036 () Unit!160498)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2362 (Regex!16881 Regex!16881 List!66638) Unit!160498)

(assert (=> b!6908311 (= lt!2468036 (lemmaExistCutMatchRandMatchRSpecEquivalent!2362 r1!6342 r2!6280 (_1!37051 lt!2468032)))))

(declare-fun isDefined!13363 (Option!16660) Bool)

(assert (=> b!6908311 (= (isDefined!13363 lt!2468051) (Exists!3889 lambda!392497))))

(declare-fun findConcatSeparation!3074 (Regex!16881 Regex!16881 List!66638 List!66638 List!66638) Option!16660)

(assert (=> b!6908311 (= lt!2468051 (findConcatSeparation!3074 r1!6342 r2!6280 Nil!66514 (_1!37051 lt!2468032) (_1!37051 lt!2468032)))))

(declare-fun lt!2468049 () Unit!160498)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2836 (Regex!16881 Regex!16881 List!66638) Unit!160498)

(assert (=> b!6908311 (= lt!2468049 (lemmaFindConcatSeparationEquivalentToExists!2836 r1!6342 r2!6280 (_1!37051 lt!2468032)))))

(declare-fun b!6908312 () Bool)

(declare-fun e!4159562 () Bool)

(declare-fun tp_is_empty!42987 () Bool)

(declare-fun tp!1902214 () Bool)

(assert (=> b!6908312 (= e!4159562 (and tp_is_empty!42987 tp!1902214))))

(declare-fun b!6908313 () Bool)

(declare-fun e!4159559 () Bool)

(declare-fun tp!1902209 () Bool)

(declare-fun tp!1902205 () Bool)

(assert (=> b!6908313 (= e!4159559 (and tp!1902209 tp!1902205))))

(declare-fun b!6908314 () Bool)

(declare-fun e!4159564 () Bool)

(declare-fun lt!2468043 () List!66638)

(assert (=> b!6908314 (= e!4159564 (= lt!2468043 s!14361))))

(declare-fun lt!2468055 () List!66638)

(assert (=> b!6908314 (= lt!2468055 lt!2468043)))

(declare-fun ++!14934 (List!66638 List!66638) List!66638)

(assert (=> b!6908314 (= lt!2468043 (++!14934 (_1!37051 lt!2468044) lt!2468042))))

(declare-fun lt!2468034 () Unit!160498)

(declare-fun lemmaConcatAssociativity!3002 (List!66638 List!66638 List!66638) Unit!160498)

(assert (=> b!6908314 (= lt!2468034 (lemmaConcatAssociativity!3002 (_1!37051 lt!2468044) (_2!37051 lt!2468044) (_2!37051 lt!2468032)))))

(declare-fun b!6908315 () Bool)

(assert (=> b!6908315 (= e!4159559 tp_is_empty!42987)))

(declare-fun res!2817292 () Bool)

(declare-fun e!4159566 () Bool)

(assert (=> start!665070 (=> (not res!2817292) (not e!4159566))))

(declare-fun validRegex!8589 (Regex!16881) Bool)

(assert (=> start!665070 (= res!2817292 (validRegex!8589 r1!6342))))

(assert (=> start!665070 e!4159566))

(declare-fun e!4159565 () Bool)

(assert (=> start!665070 e!4159565))

(assert (=> start!665070 e!4159559))

(declare-fun e!4159568 () Bool)

(assert (=> start!665070 e!4159568))

(assert (=> start!665070 e!4159562))

(declare-fun b!6908316 () Bool)

(declare-fun tp!1902201 () Bool)

(declare-fun tp!1902207 () Bool)

(assert (=> b!6908316 (= e!4159568 (and tp!1902201 tp!1902207))))

(declare-fun b!6908317 () Bool)

(declare-fun tp!1902215 () Bool)

(assert (=> b!6908317 (= e!4159568 tp!1902215)))

(declare-fun b!6908318 () Bool)

(assert (=> b!6908318 (= e!4159568 tp_is_empty!42987)))

(declare-fun e!4159561 () Bool)

(assert (=> b!6908319 (= e!4159561 e!4159564)))

(declare-fun res!2817293 () Bool)

(assert (=> b!6908319 (=> res!2817293 e!4159564)))

(declare-fun lt!2468052 () Bool)

(assert (=> b!6908319 (= res!2817293 (not lt!2468052))))

(declare-fun lt!2468031 () Bool)

(assert (=> b!6908319 lt!2468031))

(declare-fun lt!2468033 () Unit!160498)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!72 (Regex!16881 Regex!16881 List!66638 List!66638 List!66638 List!66638 List!66638) Unit!160498)

(assert (=> b!6908319 (= lt!2468033 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!72 r2!6280 r3!135 (_2!37051 lt!2468044) (_2!37051 lt!2468032) lt!2468042 Nil!66514 lt!2468042))))

(assert (=> b!6908319 (= (Exists!3889 lambda!392499) (Exists!3889 lambda!392500))))

(declare-fun lt!2468048 () Unit!160498)

(assert (=> b!6908319 (= lt!2468048 (lemmaExistCutMatchRandMatchRSpecEquivalent!2362 r2!6280 r3!135 lt!2468042))))

(assert (=> b!6908319 (= lt!2468031 (Exists!3889 lambda!392499))))

(assert (=> b!6908319 (= lt!2468031 (isDefined!13363 (findConcatSeparation!3074 r2!6280 r3!135 Nil!66514 lt!2468042 lt!2468042)))))

(declare-fun lt!2468041 () Unit!160498)

(assert (=> b!6908319 (= lt!2468041 (lemmaFindConcatSeparationEquivalentToExists!2836 r2!6280 r3!135 lt!2468042))))

(declare-fun lt!2468047 () Regex!16881)

(declare-fun matchRSpec!3944 (Regex!16881 List!66638) Bool)

(assert (=> b!6908319 (= lt!2468052 (matchRSpec!3944 lt!2468047 lt!2468042))))

(assert (=> b!6908319 (= lt!2468052 (matchR!9026 lt!2468047 lt!2468042))))

(declare-fun lt!2468038 () Unit!160498)

(declare-fun mainMatchTheorem!3944 (Regex!16881 List!66638) Unit!160498)

(assert (=> b!6908319 (= lt!2468038 (mainMatchTheorem!3944 lt!2468047 lt!2468042))))

(assert (=> b!6908319 (= lt!2468042 (++!14934 (_2!37051 lt!2468044) (_2!37051 lt!2468032)))))

(declare-fun b!6908320 () Bool)

(declare-fun tp!1902202 () Bool)

(declare-fun tp!1902200 () Bool)

(assert (=> b!6908320 (= e!4159565 (and tp!1902202 tp!1902200))))

(declare-fun b!6908321 () Bool)

(declare-fun res!2817285 () Bool)

(assert (=> b!6908321 (=> (not res!2817285) (not e!4159566))))

(assert (=> b!6908321 (= res!2817285 (validRegex!8589 r3!135))))

(declare-fun b!6908322 () Bool)

(assert (=> b!6908322 (= e!4159565 tp_is_empty!42987)))

(declare-fun b!6908323 () Bool)

(declare-fun tp!1902203 () Bool)

(declare-fun tp!1902212 () Bool)

(assert (=> b!6908323 (= e!4159568 (and tp!1902203 tp!1902212))))

(declare-fun b!6908324 () Bool)

(declare-fun res!2817291 () Bool)

(assert (=> b!6908324 (=> (not res!2817291) (not e!4159566))))

(assert (=> b!6908324 (= res!2817291 (validRegex!8589 r2!6280))))

(declare-fun b!6908325 () Bool)

(declare-fun tp!1902210 () Bool)

(declare-fun tp!1902211 () Bool)

(assert (=> b!6908325 (= e!4159565 (and tp!1902210 tp!1902211))))

(declare-fun b!6908326 () Bool)

(declare-fun res!2817287 () Bool)

(assert (=> b!6908326 (=> res!2817287 e!4159567)))

(assert (=> b!6908326 (= res!2817287 (not (matchR!9026 r3!135 (_2!37051 lt!2468032))))))

(declare-fun b!6908327 () Bool)

(declare-fun tp!1902208 () Bool)

(assert (=> b!6908327 (= e!4159559 tp!1902208)))

(declare-fun b!6908328 () Bool)

(declare-fun e!4159560 () Bool)

(assert (=> b!6908328 (= e!4159566 (not e!4159560))))

(declare-fun res!2817290 () Bool)

(assert (=> b!6908328 (=> res!2817290 e!4159560)))

(declare-fun lt!2468039 () Bool)

(assert (=> b!6908328 (= res!2817290 (not lt!2468039))))

(declare-fun lt!2468037 () Regex!16881)

(assert (=> b!6908328 (= (matchR!9026 lt!2468037 s!14361) (matchRSpec!3944 lt!2468037 s!14361))))

(declare-fun lt!2468030 () Unit!160498)

(assert (=> b!6908328 (= lt!2468030 (mainMatchTheorem!3944 lt!2468037 s!14361))))

(declare-fun lt!2468057 () Regex!16881)

(assert (=> b!6908328 (= lt!2468039 (matchRSpec!3944 lt!2468057 s!14361))))

(assert (=> b!6908328 (= lt!2468039 (matchR!9026 lt!2468057 s!14361))))

(declare-fun lt!2468053 () Unit!160498)

(assert (=> b!6908328 (= lt!2468053 (mainMatchTheorem!3944 lt!2468057 s!14361))))

(assert (=> b!6908328 (= lt!2468037 (Concat!25726 r1!6342 lt!2468047))))

(assert (=> b!6908328 (= lt!2468047 (Concat!25726 r2!6280 r3!135))))

(assert (=> b!6908328 (= lt!2468057 (Concat!25726 lt!2468040 r3!135))))

(assert (=> b!6908328 (= lt!2468040 (Concat!25726 r1!6342 r2!6280))))

(declare-fun b!6908329 () Bool)

(declare-fun res!2817289 () Bool)

(assert (=> b!6908329 (=> res!2817289 e!4159563)))

(assert (=> b!6908329 (= res!2817289 (not (matchR!9026 r2!6280 (_2!37051 lt!2468044))))))

(declare-fun b!6908330 () Bool)

(declare-fun tp!1902213 () Bool)

(declare-fun tp!1902204 () Bool)

(assert (=> b!6908330 (= e!4159559 (and tp!1902213 tp!1902204))))

(declare-fun b!6908331 () Bool)

(assert (=> b!6908331 (= e!4159563 e!4159561)))

(declare-fun res!2817288 () Bool)

(assert (=> b!6908331 (=> res!2817288 e!4159561)))

(assert (=> b!6908331 (= res!2817288 (not (= lt!2468055 s!14361)))))

(assert (=> b!6908331 (= lt!2468055 (++!14934 (++!14934 (_1!37051 lt!2468044) (_2!37051 lt!2468044)) (_2!37051 lt!2468032)))))

(assert (=> b!6908331 (matchRSpec!3944 r2!6280 (_2!37051 lt!2468044))))

(declare-fun lt!2468045 () Unit!160498)

(assert (=> b!6908331 (= lt!2468045 (mainMatchTheorem!3944 r2!6280 (_2!37051 lt!2468044)))))

(assert (=> b!6908331 (matchRSpec!3944 r1!6342 (_1!37051 lt!2468044))))

(declare-fun lt!2468035 () Unit!160498)

(assert (=> b!6908331 (= lt!2468035 (mainMatchTheorem!3944 r1!6342 (_1!37051 lt!2468044)))))

(assert (=> b!6908332 (= e!4159560 e!4159567)))

(declare-fun res!2817294 () Bool)

(assert (=> b!6908332 (=> res!2817294 e!4159567)))

(declare-fun lt!2468056 () Bool)

(assert (=> b!6908332 (= res!2817294 (not lt!2468056))))

(assert (=> b!6908332 (= lt!2468056 (matchRSpec!3944 lt!2468040 (_1!37051 lt!2468032)))))

(assert (=> b!6908332 (= lt!2468056 (matchR!9026 lt!2468040 (_1!37051 lt!2468032)))))

(declare-fun lt!2468046 () Unit!160498)

(assert (=> b!6908332 (= lt!2468046 (mainMatchTheorem!3944 lt!2468040 (_1!37051 lt!2468032)))))

(declare-fun lt!2468054 () Option!16660)

(assert (=> b!6908332 (= lt!2468032 (get!23272 lt!2468054))))

(assert (=> b!6908332 (= (Exists!3889 lambda!392495) (Exists!3889 lambda!392496))))

(declare-fun lt!2468050 () Unit!160498)

(assert (=> b!6908332 (= lt!2468050 (lemmaExistCutMatchRandMatchRSpecEquivalent!2362 lt!2468040 r3!135 s!14361))))

(assert (=> b!6908332 (= (isDefined!13363 lt!2468054) (Exists!3889 lambda!392495))))

(assert (=> b!6908332 (= lt!2468054 (findConcatSeparation!3074 lt!2468040 r3!135 Nil!66514 s!14361 s!14361))))

(declare-fun lt!2468029 () Unit!160498)

(assert (=> b!6908332 (= lt!2468029 (lemmaFindConcatSeparationEquivalentToExists!2836 lt!2468040 r3!135 s!14361))))

(declare-fun b!6908333 () Bool)

(declare-fun tp!1902206 () Bool)

(assert (=> b!6908333 (= e!4159565 tp!1902206)))

(assert (= (and start!665070 res!2817292) b!6908324))

(assert (= (and b!6908324 res!2817291) b!6908321))

(assert (= (and b!6908321 res!2817285) b!6908328))

(assert (= (and b!6908328 (not res!2817290)) b!6908332))

(assert (= (and b!6908332 (not res!2817294)) b!6908326))

(assert (= (and b!6908326 (not res!2817287)) b!6908311))

(assert (= (and b!6908311 (not res!2817286)) b!6908329))

(assert (= (and b!6908329 (not res!2817289)) b!6908331))

(assert (= (and b!6908331 (not res!2817288)) b!6908319))

(assert (= (and b!6908319 (not res!2817293)) b!6908314))

(get-info :version)

(assert (= (and start!665070 ((_ is ElementMatch!16881) r1!6342)) b!6908322))

(assert (= (and start!665070 ((_ is Concat!25726) r1!6342)) b!6908320))

(assert (= (and start!665070 ((_ is Star!16881) r1!6342)) b!6908333))

(assert (= (and start!665070 ((_ is Union!16881) r1!6342)) b!6908325))

(assert (= (and start!665070 ((_ is ElementMatch!16881) r2!6280)) b!6908315))

(assert (= (and start!665070 ((_ is Concat!25726) r2!6280)) b!6908313))

(assert (= (and start!665070 ((_ is Star!16881) r2!6280)) b!6908327))

(assert (= (and start!665070 ((_ is Union!16881) r2!6280)) b!6908330))

(assert (= (and start!665070 ((_ is ElementMatch!16881) r3!135)) b!6908318))

(assert (= (and start!665070 ((_ is Concat!25726) r3!135)) b!6908316))

(assert (= (and start!665070 ((_ is Star!16881) r3!135)) b!6908317))

(assert (= (and start!665070 ((_ is Union!16881) r3!135)) b!6908323))

(assert (= (and start!665070 ((_ is Cons!66514) s!14361)) b!6908312))

(declare-fun m!7624084 () Bool)

(assert (=> b!6908326 m!7624084))

(declare-fun m!7624086 () Bool)

(assert (=> b!6908331 m!7624086))

(declare-fun m!7624088 () Bool)

(assert (=> b!6908331 m!7624088))

(declare-fun m!7624090 () Bool)

(assert (=> b!6908331 m!7624090))

(assert (=> b!6908331 m!7624090))

(declare-fun m!7624092 () Bool)

(assert (=> b!6908331 m!7624092))

(declare-fun m!7624094 () Bool)

(assert (=> b!6908331 m!7624094))

(declare-fun m!7624096 () Bool)

(assert (=> b!6908331 m!7624096))

(declare-fun m!7624098 () Bool)

(assert (=> b!6908319 m!7624098))

(declare-fun m!7624100 () Bool)

(assert (=> b!6908319 m!7624100))

(declare-fun m!7624102 () Bool)

(assert (=> b!6908319 m!7624102))

(declare-fun m!7624104 () Bool)

(assert (=> b!6908319 m!7624104))

(declare-fun m!7624106 () Bool)

(assert (=> b!6908319 m!7624106))

(declare-fun m!7624108 () Bool)

(assert (=> b!6908319 m!7624108))

(declare-fun m!7624110 () Bool)

(assert (=> b!6908319 m!7624110))

(declare-fun m!7624112 () Bool)

(assert (=> b!6908319 m!7624112))

(declare-fun m!7624114 () Bool)

(assert (=> b!6908319 m!7624114))

(assert (=> b!6908319 m!7624104))

(assert (=> b!6908319 m!7624108))

(declare-fun m!7624116 () Bool)

(assert (=> b!6908319 m!7624116))

(declare-fun m!7624118 () Bool)

(assert (=> b!6908319 m!7624118))

(declare-fun m!7624120 () Bool)

(assert (=> b!6908324 m!7624120))

(declare-fun m!7624122 () Bool)

(assert (=> b!6908321 m!7624122))

(declare-fun m!7624124 () Bool)

(assert (=> b!6908329 m!7624124))

(declare-fun m!7624126 () Bool)

(assert (=> b!6908328 m!7624126))

(declare-fun m!7624128 () Bool)

(assert (=> b!6908328 m!7624128))

(declare-fun m!7624130 () Bool)

(assert (=> b!6908328 m!7624130))

(declare-fun m!7624132 () Bool)

(assert (=> b!6908328 m!7624132))

(declare-fun m!7624134 () Bool)

(assert (=> b!6908328 m!7624134))

(declare-fun m!7624136 () Bool)

(assert (=> b!6908328 m!7624136))

(declare-fun m!7624138 () Bool)

(assert (=> b!6908332 m!7624138))

(declare-fun m!7624140 () Bool)

(assert (=> b!6908332 m!7624140))

(declare-fun m!7624142 () Bool)

(assert (=> b!6908332 m!7624142))

(declare-fun m!7624144 () Bool)

(assert (=> b!6908332 m!7624144))

(declare-fun m!7624146 () Bool)

(assert (=> b!6908332 m!7624146))

(declare-fun m!7624148 () Bool)

(assert (=> b!6908332 m!7624148))

(declare-fun m!7624150 () Bool)

(assert (=> b!6908332 m!7624150))

(declare-fun m!7624152 () Bool)

(assert (=> b!6908332 m!7624152))

(assert (=> b!6908332 m!7624142))

(declare-fun m!7624154 () Bool)

(assert (=> b!6908332 m!7624154))

(declare-fun m!7624156 () Bool)

(assert (=> b!6908332 m!7624156))

(declare-fun m!7624158 () Bool)

(assert (=> start!665070 m!7624158))

(declare-fun m!7624160 () Bool)

(assert (=> b!6908314 m!7624160))

(declare-fun m!7624162 () Bool)

(assert (=> b!6908314 m!7624162))

(declare-fun m!7624164 () Bool)

(assert (=> b!6908311 m!7624164))

(declare-fun m!7624166 () Bool)

(assert (=> b!6908311 m!7624166))

(declare-fun m!7624168 () Bool)

(assert (=> b!6908311 m!7624168))

(declare-fun m!7624170 () Bool)

(assert (=> b!6908311 m!7624170))

(declare-fun m!7624172 () Bool)

(assert (=> b!6908311 m!7624172))

(declare-fun m!7624174 () Bool)

(assert (=> b!6908311 m!7624174))

(declare-fun m!7624176 () Bool)

(assert (=> b!6908311 m!7624176))

(assert (=> b!6908311 m!7624174))

(declare-fun m!7624178 () Bool)

(assert (=> b!6908311 m!7624178))

(check-sat (not b!6908317) (not b!6908324) (not b!6908330) (not b!6908326) (not b!6908329) (not b!6908319) (not b!6908316) (not b!6908327) (not b!6908325) (not b!6908323) (not b!6908328) (not b!6908311) (not start!665070) (not b!6908314) (not b!6908312) (not b!6908321) (not b!6908313) (not b!6908332) (not b!6908333) (not b!6908320) (not b!6908331) tp_is_empty!42987)
(check-sat)
