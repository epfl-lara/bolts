; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750308 () Bool)

(assert start!750308)

(declare-fun b!7951162 () Bool)

(declare-fun e!4690344 () Bool)

(declare-fun tp!2366500 () Bool)

(declare-fun tp!2366495 () Bool)

(assert (=> b!7951162 (= e!4690344 (and tp!2366500 tp!2366495))))

(declare-fun b!7951163 () Bool)

(declare-fun res!3153044 () Bool)

(declare-fun e!4690343 () Bool)

(assert (=> b!7951163 (=> (not res!3153044) (not e!4690343))))

(declare-datatypes ((C!43284 0))(
  ( (C!43285 (val!32190 Int)) )
))
(declare-datatypes ((List!74702 0))(
  ( (Nil!74578) (Cons!74578 (h!81026 C!43284) (t!390445 List!74702)) )
))
(declare-fun testedP!447 () List!74702)

(declare-fun input!7927 () List!74702)

(declare-fun isPrefix!6573 (List!74702 List!74702) Bool)

(assert (=> b!7951163 (= res!3153044 (isPrefix!6573 testedP!447 input!7927))))

(declare-fun b!7951164 () Bool)

(declare-fun e!4690349 () Bool)

(declare-fun tp!2366497 () Bool)

(assert (=> b!7951164 (= e!4690349 tp!2366497)))

(declare-fun b!7951165 () Bool)

(declare-datatypes ((Unit!169856 0))(
  ( (Unit!169857) )
))
(declare-fun e!4690350 () Unit!169856)

(declare-fun Unit!169858 () Unit!169856)

(assert (=> b!7951165 (= e!4690350 Unit!169858)))

(declare-fun lt!2700240 () Unit!169856)

(declare-fun lemmaIsPrefixRefl!4041 (List!74702 List!74702) Unit!169856)

(assert (=> b!7951165 (= lt!2700240 (lemmaIsPrefixRefl!4041 input!7927 input!7927))))

(assert (=> b!7951165 (isPrefix!6573 input!7927 input!7927)))

(declare-fun lt!2700243 () Unit!169856)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1621 (List!74702 List!74702 List!74702) Unit!169856)

(assert (=> b!7951165 (= lt!2700243 (lemmaIsPrefixSameLengthThenSameList!1621 input!7927 testedP!447 input!7927))))

(assert (=> b!7951165 false))

(declare-fun b!7951166 () Bool)

(declare-fun e!4690347 () Bool)

(declare-fun tp_is_empty!53489 () Bool)

(declare-fun tp!2366498 () Bool)

(assert (=> b!7951166 (= e!4690347 (and tp_is_empty!53489 tp!2366498))))

(declare-fun b!7951167 () Bool)

(declare-fun tp!2366496 () Bool)

(assert (=> b!7951167 (= e!4690344 tp!2366496)))

(declare-fun b!7951168 () Bool)

(declare-fun tp!2366499 () Bool)

(declare-fun tp!2366502 () Bool)

(assert (=> b!7951168 (= e!4690349 (and tp!2366499 tp!2366502))))

(declare-fun b!7951169 () Bool)

(assert (=> b!7951169 (= e!4690349 tp_is_empty!53489)))

(declare-fun b!7951170 () Bool)

(declare-fun Unit!169859 () Unit!169856)

(assert (=> b!7951170 (= e!4690350 Unit!169859)))

(declare-fun b!7951171 () Bool)

(declare-fun e!4690348 () Bool)

(declare-fun tp!2366492 () Bool)

(assert (=> b!7951171 (= e!4690348 (and tp_is_empty!53489 tp!2366492))))

(declare-fun b!7951172 () Bool)

(declare-fun res!3153047 () Bool)

(declare-fun e!4690345 () Bool)

(assert (=> b!7951172 (=> (not res!3153047) (not e!4690345))))

(assert (=> b!7951172 (= res!3153047 (not (= testedP!447 input!7927)))))

(declare-fun b!7951173 () Bool)

(declare-fun e!4690346 () Bool)

(declare-fun e!4690351 () Bool)

(assert (=> b!7951173 (= e!4690346 e!4690351)))

(declare-fun res!3153048 () Bool)

(assert (=> b!7951173 (=> res!3153048 e!4690351)))

(declare-datatypes ((Regex!21473 0))(
  ( (ElementMatch!21473 (c!1460392 C!43284)) (Concat!30472 (regOne!43458 Regex!21473) (regTwo!43458 Regex!21473)) (EmptyExpr!21473) (Star!21473 (reg!21802 Regex!21473)) (EmptyLang!21473) (Union!21473 (regOne!43459 Regex!21473) (regTwo!43459 Regex!21473)) )
))
(declare-fun r!24602 () Regex!21473)

(declare-fun nullable!9574 (Regex!21473) Bool)

(assert (=> b!7951173 (= res!3153048 (not (nullable!9574 r!24602)))))

(declare-fun lt!2700248 () List!74702)

(assert (=> b!7951173 (isPrefix!6573 lt!2700248 input!7927)))

(declare-fun lt!2700246 () Unit!169856)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1300 (List!74702 List!74702) Unit!169856)

(assert (=> b!7951173 (= lt!2700246 (lemmaAddHeadSuffixToPrefixStillPrefix!1300 testedP!447 input!7927))))

(declare-fun lt!2700242 () C!43284)

(declare-fun ++!18343 (List!74702 List!74702) List!74702)

(assert (=> b!7951173 (= lt!2700248 (++!18343 testedP!447 (Cons!74578 lt!2700242 Nil!74578)))))

(declare-fun lt!2700249 () List!74702)

(declare-fun head!16225 (List!74702) C!43284)

(assert (=> b!7951173 (= lt!2700242 (head!16225 lt!2700249))))

(declare-fun res!3153046 () Bool)

(assert (=> start!750308 (=> (not res!3153046) (not e!4690343))))

(declare-fun baseR!116 () Regex!21473)

(declare-fun validRegex!11777 (Regex!21473) Bool)

(assert (=> start!750308 (= res!3153046 (validRegex!11777 baseR!116))))

(assert (=> start!750308 e!4690343))

(assert (=> start!750308 e!4690349))

(assert (=> start!750308 e!4690348))

(assert (=> start!750308 e!4690347))

(assert (=> start!750308 e!4690344))

(declare-fun b!7951174 () Bool)

(declare-fun tp!2366493 () Bool)

(declare-fun tp!2366501 () Bool)

(assert (=> b!7951174 (= e!4690344 (and tp!2366493 tp!2366501))))

(declare-fun b!7951175 () Bool)

(declare-fun res!3153042 () Bool)

(assert (=> b!7951175 (=> (not res!3153042) (not e!4690343))))

(declare-fun derivative!659 (Regex!21473 List!74702) Regex!21473)

(assert (=> b!7951175 (= res!3153042 (= (derivative!659 baseR!116 testedP!447) r!24602))))

(declare-fun b!7951176 () Bool)

(declare-fun tp!2366494 () Bool)

(declare-fun tp!2366491 () Bool)

(assert (=> b!7951176 (= e!4690349 (and tp!2366494 tp!2366491))))

(declare-fun b!7951177 () Bool)

(assert (=> b!7951177 (= e!4690351 (not (= lt!2700249 Nil!74578)))))

(declare-fun lt!2700239 () Regex!21473)

(declare-fun derivativeStep!6501 (Regex!21473 C!43284) Regex!21473)

(assert (=> b!7951177 (= lt!2700239 (derivativeStep!6501 r!24602 lt!2700242))))

(declare-fun b!7951178 () Bool)

(assert (=> b!7951178 (= e!4690344 tp_is_empty!53489)))

(declare-fun b!7951179 () Bool)

(assert (=> b!7951179 (= e!4690345 (not e!4690346))))

(declare-fun res!3153043 () Bool)

(assert (=> b!7951179 (=> res!3153043 e!4690346)))

(declare-fun lt!2700244 () Int)

(declare-fun lt!2700247 () Int)

(assert (=> b!7951179 (= res!3153043 (>= lt!2700244 lt!2700247))))

(declare-fun lt!2700241 () Unit!169856)

(assert (=> b!7951179 (= lt!2700241 e!4690350)))

(declare-fun c!1460391 () Bool)

(assert (=> b!7951179 (= c!1460391 (= lt!2700244 lt!2700247))))

(assert (=> b!7951179 (<= lt!2700244 lt!2700247)))

(declare-fun lt!2700245 () Unit!169856)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1090 (List!74702 List!74702) Unit!169856)

(assert (=> b!7951179 (= lt!2700245 (lemmaIsPrefixThenSmallerEqSize!1090 testedP!447 input!7927))))

(declare-fun b!7951180 () Bool)

(assert (=> b!7951180 (= e!4690343 e!4690345)))

(declare-fun res!3153045 () Bool)

(assert (=> b!7951180 (=> (not res!3153045) (not e!4690345))))

(declare-fun isEmpty!42877 (List!74702) Bool)

(declare-datatypes ((tuple2!70608 0))(
  ( (tuple2!70609 (_1!38607 List!74702) (_2!38607 List!74702)) )
))
(declare-fun findLongestMatchInner!2254 (Regex!21473 List!74702 Int List!74702 List!74702 Int) tuple2!70608)

(assert (=> b!7951180 (= res!3153045 (not (isEmpty!42877 (_1!38607 (findLongestMatchInner!2254 r!24602 testedP!447 lt!2700244 lt!2700249 input!7927 lt!2700247)))))))

(declare-fun size!43409 (List!74702) Int)

(assert (=> b!7951180 (= lt!2700247 (size!43409 input!7927))))

(declare-fun getSuffix!3776 (List!74702 List!74702) List!74702)

(assert (=> b!7951180 (= lt!2700249 (getSuffix!3776 input!7927 testedP!447))))

(assert (=> b!7951180 (= lt!2700244 (size!43409 testedP!447))))

(assert (= (and start!750308 res!3153046) b!7951163))

(assert (= (and b!7951163 res!3153044) b!7951175))

(assert (= (and b!7951175 res!3153042) b!7951180))

(assert (= (and b!7951180 res!3153045) b!7951172))

(assert (= (and b!7951172 res!3153047) b!7951179))

(assert (= (and b!7951179 c!1460391) b!7951165))

(assert (= (and b!7951179 (not c!1460391)) b!7951170))

(assert (= (and b!7951179 (not res!3153043)) b!7951173))

(assert (= (and b!7951173 (not res!3153048)) b!7951177))

(get-info :version)

(assert (= (and start!750308 ((_ is ElementMatch!21473) baseR!116)) b!7951169))

(assert (= (and start!750308 ((_ is Concat!30472) baseR!116)) b!7951168))

(assert (= (and start!750308 ((_ is Star!21473) baseR!116)) b!7951164))

(assert (= (and start!750308 ((_ is Union!21473) baseR!116)) b!7951176))

(assert (= (and start!750308 ((_ is Cons!74578) testedP!447)) b!7951171))

(assert (= (and start!750308 ((_ is Cons!74578) input!7927)) b!7951166))

(assert (= (and start!750308 ((_ is ElementMatch!21473) r!24602)) b!7951178))

(assert (= (and start!750308 ((_ is Concat!30472) r!24602)) b!7951162))

(assert (= (and start!750308 ((_ is Star!21473) r!24602)) b!7951167))

(assert (= (and start!750308 ((_ is Union!21473) r!24602)) b!7951174))

(declare-fun m!8335294 () Bool)

(assert (=> b!7951175 m!8335294))

(declare-fun m!8335296 () Bool)

(assert (=> b!7951163 m!8335296))

(declare-fun m!8335298 () Bool)

(assert (=> b!7951173 m!8335298))

(declare-fun m!8335300 () Bool)

(assert (=> b!7951173 m!8335300))

(declare-fun m!8335302 () Bool)

(assert (=> b!7951173 m!8335302))

(declare-fun m!8335304 () Bool)

(assert (=> b!7951173 m!8335304))

(declare-fun m!8335306 () Bool)

(assert (=> b!7951173 m!8335306))

(declare-fun m!8335308 () Bool)

(assert (=> start!750308 m!8335308))

(declare-fun m!8335310 () Bool)

(assert (=> b!7951165 m!8335310))

(declare-fun m!8335312 () Bool)

(assert (=> b!7951165 m!8335312))

(declare-fun m!8335314 () Bool)

(assert (=> b!7951165 m!8335314))

(declare-fun m!8335316 () Bool)

(assert (=> b!7951179 m!8335316))

(declare-fun m!8335318 () Bool)

(assert (=> b!7951180 m!8335318))

(declare-fun m!8335320 () Bool)

(assert (=> b!7951180 m!8335320))

(declare-fun m!8335322 () Bool)

(assert (=> b!7951180 m!8335322))

(declare-fun m!8335324 () Bool)

(assert (=> b!7951180 m!8335324))

(declare-fun m!8335326 () Bool)

(assert (=> b!7951180 m!8335326))

(declare-fun m!8335328 () Bool)

(assert (=> b!7951177 m!8335328))

(check-sat (not b!7951171) (not b!7951179) (not b!7951162) tp_is_empty!53489 (not b!7951175) (not b!7951167) (not b!7951176) (not b!7951165) (not b!7951164) (not b!7951163) (not b!7951173) (not start!750308) (not b!7951177) (not b!7951174) (not b!7951168) (not b!7951166) (not b!7951180))
(check-sat)
(get-model)

(declare-fun b!7951199 () Bool)

(declare-fun e!4690369 () Bool)

(declare-fun call!737023 () Bool)

(assert (=> b!7951199 (= e!4690369 call!737023)))

(declare-fun b!7951200 () Bool)

(declare-fun e!4690367 () Bool)

(declare-fun e!4690368 () Bool)

(assert (=> b!7951200 (= e!4690367 e!4690368)))

(declare-fun res!3153059 () Bool)

(assert (=> b!7951200 (= res!3153059 (not (nullable!9574 (reg!21802 baseR!116))))))

(assert (=> b!7951200 (=> (not res!3153059) (not e!4690368))))

(declare-fun b!7951201 () Bool)

(declare-fun e!4690371 () Bool)

(assert (=> b!7951201 (= e!4690371 e!4690369)))

(declare-fun res!3153062 () Bool)

(assert (=> b!7951201 (=> (not res!3153062) (not e!4690369))))

(declare-fun call!737024 () Bool)

(assert (=> b!7951201 (= res!3153062 call!737024)))

(declare-fun bm!737018 () Bool)

(declare-fun call!737025 () Bool)

(assert (=> bm!737018 (= call!737024 call!737025)))

(declare-fun b!7951203 () Bool)

(declare-fun e!4690372 () Bool)

(assert (=> b!7951203 (= e!4690372 e!4690367)))

(declare-fun c!1460398 () Bool)

(assert (=> b!7951203 (= c!1460398 ((_ is Star!21473) baseR!116))))

(declare-fun b!7951204 () Bool)

(assert (=> b!7951204 (= e!4690368 call!737025)))

(declare-fun b!7951205 () Bool)

(declare-fun e!4690366 () Bool)

(assert (=> b!7951205 (= e!4690366 call!737023)))

(declare-fun bm!737019 () Bool)

(declare-fun c!1460397 () Bool)

(assert (=> bm!737019 (= call!737025 (validRegex!11777 (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))))))

(declare-fun bm!737020 () Bool)

(assert (=> bm!737020 (= call!737023 (validRegex!11777 (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))))))

(declare-fun b!7951206 () Bool)

(declare-fun res!3153063 () Bool)

(assert (=> b!7951206 (=> res!3153063 e!4690371)))

(assert (=> b!7951206 (= res!3153063 (not ((_ is Concat!30472) baseR!116)))))

(declare-fun e!4690370 () Bool)

(assert (=> b!7951206 (= e!4690370 e!4690371)))

(declare-fun b!7951207 () Bool)

(assert (=> b!7951207 (= e!4690367 e!4690370)))

(assert (=> b!7951207 (= c!1460397 ((_ is Union!21473) baseR!116))))

(declare-fun b!7951202 () Bool)

(declare-fun res!3153061 () Bool)

(assert (=> b!7951202 (=> (not res!3153061) (not e!4690366))))

(assert (=> b!7951202 (= res!3153061 call!737024)))

(assert (=> b!7951202 (= e!4690370 e!4690366)))

(declare-fun d!2376149 () Bool)

(declare-fun res!3153060 () Bool)

(assert (=> d!2376149 (=> res!3153060 e!4690372)))

(assert (=> d!2376149 (= res!3153060 ((_ is ElementMatch!21473) baseR!116))))

(assert (=> d!2376149 (= (validRegex!11777 baseR!116) e!4690372)))

(assert (= (and d!2376149 (not res!3153060)) b!7951203))

(assert (= (and b!7951203 c!1460398) b!7951200))

(assert (= (and b!7951203 (not c!1460398)) b!7951207))

(assert (= (and b!7951200 res!3153059) b!7951204))

(assert (= (and b!7951207 c!1460397) b!7951202))

(assert (= (and b!7951207 (not c!1460397)) b!7951206))

(assert (= (and b!7951202 res!3153061) b!7951205))

(assert (= (and b!7951206 (not res!3153063)) b!7951201))

(assert (= (and b!7951201 res!3153062) b!7951199))

(assert (= (or b!7951205 b!7951199) bm!737020))

(assert (= (or b!7951202 b!7951201) bm!737018))

(assert (= (or b!7951204 bm!737018) bm!737019))

(declare-fun m!8335330 () Bool)

(assert (=> b!7951200 m!8335330))

(declare-fun m!8335332 () Bool)

(assert (=> bm!737019 m!8335332))

(declare-fun m!8335334 () Bool)

(assert (=> bm!737020 m!8335334))

(assert (=> start!750308 d!2376149))

(declare-fun bm!737029 () Bool)

(declare-fun call!737034 () Regex!21473)

(declare-fun call!737036 () Regex!21473)

(assert (=> bm!737029 (= call!737034 call!737036)))

(declare-fun b!7951228 () Bool)

(declare-fun c!1460412 () Bool)

(assert (=> b!7951228 (= c!1460412 (nullable!9574 (regOne!43458 r!24602)))))

(declare-fun e!4690386 () Regex!21473)

(declare-fun e!4690383 () Regex!21473)

(assert (=> b!7951228 (= e!4690386 e!4690383)))

(declare-fun c!1460410 () Bool)

(declare-fun c!1460413 () Bool)

(declare-fun bm!737030 () Bool)

(declare-fun call!737037 () Regex!21473)

(assert (=> bm!737030 (= call!737037 (derivativeStep!6501 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))) lt!2700242))))

(declare-fun b!7951229 () Bool)

(declare-fun e!4690384 () Regex!21473)

(assert (=> b!7951229 (= e!4690384 (ite (= lt!2700242 (c!1460392 r!24602)) EmptyExpr!21473 EmptyLang!21473))))

(declare-fun b!7951230 () Bool)

(assert (=> b!7951230 (= c!1460410 ((_ is Union!21473) r!24602))))

(declare-fun e!4690385 () Regex!21473)

(assert (=> b!7951230 (= e!4690384 e!4690385)))

(declare-fun b!7951231 () Bool)

(declare-fun call!737035 () Regex!21473)

(assert (=> b!7951231 (= e!4690385 (Union!21473 call!737035 call!737037))))

(declare-fun b!7951232 () Bool)

(assert (=> b!7951232 (= e!4690383 (Union!21473 (Concat!30472 call!737034 (regTwo!43458 r!24602)) EmptyLang!21473))))

(declare-fun b!7951233 () Bool)

(assert (=> b!7951233 (= e!4690383 (Union!21473 (Concat!30472 call!737035 (regTwo!43458 r!24602)) call!737034))))

(declare-fun b!7951234 () Bool)

(assert (=> b!7951234 (= e!4690386 (Concat!30472 call!737036 r!24602))))

(declare-fun d!2376151 () Bool)

(declare-fun lt!2700252 () Regex!21473)

(assert (=> d!2376151 (validRegex!11777 lt!2700252)))

(declare-fun e!4690387 () Regex!21473)

(assert (=> d!2376151 (= lt!2700252 e!4690387)))

(declare-fun c!1460409 () Bool)

(assert (=> d!2376151 (= c!1460409 (or ((_ is EmptyExpr!21473) r!24602) ((_ is EmptyLang!21473) r!24602)))))

(assert (=> d!2376151 (validRegex!11777 r!24602)))

(assert (=> d!2376151 (= (derivativeStep!6501 r!24602 lt!2700242) lt!2700252)))

(declare-fun b!7951235 () Bool)

(assert (=> b!7951235 (= e!4690385 e!4690386)))

(assert (=> b!7951235 (= c!1460413 ((_ is Star!21473) r!24602))))

(declare-fun bm!737031 () Bool)

(assert (=> bm!737031 (= call!737035 (derivativeStep!6501 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)) lt!2700242))))

(declare-fun bm!737032 () Bool)

(assert (=> bm!737032 (= call!737036 call!737037)))

(declare-fun b!7951236 () Bool)

(assert (=> b!7951236 (= e!4690387 e!4690384)))

(declare-fun c!1460411 () Bool)

(assert (=> b!7951236 (= c!1460411 ((_ is ElementMatch!21473) r!24602))))

(declare-fun b!7951237 () Bool)

(assert (=> b!7951237 (= e!4690387 EmptyLang!21473)))

(assert (= (and d!2376151 c!1460409) b!7951237))

(assert (= (and d!2376151 (not c!1460409)) b!7951236))

(assert (= (and b!7951236 c!1460411) b!7951229))

(assert (= (and b!7951236 (not c!1460411)) b!7951230))

(assert (= (and b!7951230 c!1460410) b!7951231))

(assert (= (and b!7951230 (not c!1460410)) b!7951235))

(assert (= (and b!7951235 c!1460413) b!7951234))

(assert (= (and b!7951235 (not c!1460413)) b!7951228))

(assert (= (and b!7951228 c!1460412) b!7951233))

(assert (= (and b!7951228 (not c!1460412)) b!7951232))

(assert (= (or b!7951233 b!7951232) bm!737029))

(assert (= (or b!7951234 bm!737029) bm!737032))

(assert (= (or b!7951231 bm!737032) bm!737030))

(assert (= (or b!7951231 b!7951233) bm!737031))

(declare-fun m!8335336 () Bool)

(assert (=> b!7951228 m!8335336))

(declare-fun m!8335338 () Bool)

(assert (=> bm!737030 m!8335338))

(declare-fun m!8335340 () Bool)

(assert (=> d!2376151 m!8335340))

(declare-fun m!8335342 () Bool)

(assert (=> d!2376151 m!8335342))

(declare-fun m!8335344 () Bool)

(assert (=> bm!737031 m!8335344))

(assert (=> b!7951177 d!2376151))

(declare-fun d!2376155 () Bool)

(assert (=> d!2376155 (isPrefix!6573 (++!18343 testedP!447 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578)) input!7927)))

(declare-fun lt!2700255 () Unit!169856)

(declare-fun choose!59916 (List!74702 List!74702) Unit!169856)

(assert (=> d!2376155 (= lt!2700255 (choose!59916 testedP!447 input!7927))))

(assert (=> d!2376155 (isPrefix!6573 testedP!447 input!7927)))

(assert (=> d!2376155 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1300 testedP!447 input!7927) lt!2700255)))

(declare-fun bs!1969545 () Bool)

(assert (= bs!1969545 d!2376155))

(declare-fun m!8335346 () Bool)

(assert (=> bs!1969545 m!8335346))

(assert (=> bs!1969545 m!8335322))

(declare-fun m!8335348 () Bool)

(assert (=> bs!1969545 m!8335348))

(assert (=> bs!1969545 m!8335296))

(declare-fun m!8335350 () Bool)

(assert (=> bs!1969545 m!8335350))

(assert (=> bs!1969545 m!8335322))

(assert (=> bs!1969545 m!8335350))

(declare-fun m!8335352 () Bool)

(assert (=> bs!1969545 m!8335352))

(assert (=> b!7951173 d!2376155))

(declare-fun b!7951265 () Bool)

(declare-fun e!4690406 () List!74702)

(assert (=> b!7951265 (= e!4690406 (Cons!74578 (h!81026 testedP!447) (++!18343 (t!390445 testedP!447) (Cons!74578 lt!2700242 Nil!74578))))))

(declare-fun b!7951267 () Bool)

(declare-fun e!4690407 () Bool)

(declare-fun lt!2700258 () List!74702)

(assert (=> b!7951267 (= e!4690407 (or (not (= (Cons!74578 lt!2700242 Nil!74578) Nil!74578)) (= lt!2700258 testedP!447)))))

(declare-fun b!7951264 () Bool)

(assert (=> b!7951264 (= e!4690406 (Cons!74578 lt!2700242 Nil!74578))))

(declare-fun d!2376157 () Bool)

(assert (=> d!2376157 e!4690407))

(declare-fun res!3153079 () Bool)

(assert (=> d!2376157 (=> (not res!3153079) (not e!4690407))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15829 (List!74702) (InoxSet C!43284))

(assert (=> d!2376157 (= res!3153079 (= (content!15829 lt!2700258) ((_ map or) (content!15829 testedP!447) (content!15829 (Cons!74578 lt!2700242 Nil!74578)))))))

(assert (=> d!2376157 (= lt!2700258 e!4690406)))

(declare-fun c!1460420 () Bool)

(assert (=> d!2376157 (= c!1460420 ((_ is Nil!74578) testedP!447))))

(assert (=> d!2376157 (= (++!18343 testedP!447 (Cons!74578 lt!2700242 Nil!74578)) lt!2700258)))

(declare-fun b!7951266 () Bool)

(declare-fun res!3153078 () Bool)

(assert (=> b!7951266 (=> (not res!3153078) (not e!4690407))))

(assert (=> b!7951266 (= res!3153078 (= (size!43409 lt!2700258) (+ (size!43409 testedP!447) (size!43409 (Cons!74578 lt!2700242 Nil!74578)))))))

(assert (= (and d!2376157 c!1460420) b!7951264))

(assert (= (and d!2376157 (not c!1460420)) b!7951265))

(assert (= (and d!2376157 res!3153079) b!7951266))

(assert (= (and b!7951266 res!3153078) b!7951267))

(declare-fun m!8335354 () Bool)

(assert (=> b!7951265 m!8335354))

(declare-fun m!8335356 () Bool)

(assert (=> d!2376157 m!8335356))

(declare-fun m!8335358 () Bool)

(assert (=> d!2376157 m!8335358))

(declare-fun m!8335360 () Bool)

(assert (=> d!2376157 m!8335360))

(declare-fun m!8335362 () Bool)

(assert (=> b!7951266 m!8335362))

(assert (=> b!7951266 m!8335326))

(declare-fun m!8335364 () Bool)

(assert (=> b!7951266 m!8335364))

(assert (=> b!7951173 d!2376157))

(declare-fun d!2376159 () Bool)

(declare-fun nullableFct!3771 (Regex!21473) Bool)

(assert (=> d!2376159 (= (nullable!9574 r!24602) (nullableFct!3771 r!24602))))

(declare-fun bs!1969546 () Bool)

(assert (= bs!1969546 d!2376159))

(declare-fun m!8335366 () Bool)

(assert (=> bs!1969546 m!8335366))

(assert (=> b!7951173 d!2376159))

(declare-fun b!7951276 () Bool)

(declare-fun e!4690415 () Bool)

(declare-fun e!4690416 () Bool)

(assert (=> b!7951276 (= e!4690415 e!4690416)))

(declare-fun res!3153091 () Bool)

(assert (=> b!7951276 (=> (not res!3153091) (not e!4690416))))

(assert (=> b!7951276 (= res!3153091 (not ((_ is Nil!74578) input!7927)))))

(declare-fun b!7951278 () Bool)

(declare-fun tail!15761 (List!74702) List!74702)

(assert (=> b!7951278 (= e!4690416 (isPrefix!6573 (tail!15761 lt!2700248) (tail!15761 input!7927)))))

(declare-fun d!2376161 () Bool)

(declare-fun e!4690414 () Bool)

(assert (=> d!2376161 e!4690414))

(declare-fun res!3153089 () Bool)

(assert (=> d!2376161 (=> res!3153089 e!4690414)))

(declare-fun lt!2700261 () Bool)

(assert (=> d!2376161 (= res!3153089 (not lt!2700261))))

(assert (=> d!2376161 (= lt!2700261 e!4690415)))

(declare-fun res!3153088 () Bool)

(assert (=> d!2376161 (=> res!3153088 e!4690415)))

(assert (=> d!2376161 (= res!3153088 ((_ is Nil!74578) lt!2700248))))

(assert (=> d!2376161 (= (isPrefix!6573 lt!2700248 input!7927) lt!2700261)))

(declare-fun b!7951277 () Bool)

(declare-fun res!3153090 () Bool)

(assert (=> b!7951277 (=> (not res!3153090) (not e!4690416))))

(assert (=> b!7951277 (= res!3153090 (= (head!16225 lt!2700248) (head!16225 input!7927)))))

(declare-fun b!7951279 () Bool)

(assert (=> b!7951279 (= e!4690414 (>= (size!43409 input!7927) (size!43409 lt!2700248)))))

(assert (= (and d!2376161 (not res!3153088)) b!7951276))

(assert (= (and b!7951276 res!3153091) b!7951277))

(assert (= (and b!7951277 res!3153090) b!7951278))

(assert (= (and d!2376161 (not res!3153089)) b!7951279))

(declare-fun m!8335368 () Bool)

(assert (=> b!7951278 m!8335368))

(declare-fun m!8335370 () Bool)

(assert (=> b!7951278 m!8335370))

(assert (=> b!7951278 m!8335368))

(assert (=> b!7951278 m!8335370))

(declare-fun m!8335372 () Bool)

(assert (=> b!7951278 m!8335372))

(declare-fun m!8335374 () Bool)

(assert (=> b!7951277 m!8335374))

(declare-fun m!8335376 () Bool)

(assert (=> b!7951277 m!8335376))

(assert (=> b!7951279 m!8335318))

(declare-fun m!8335378 () Bool)

(assert (=> b!7951279 m!8335378))

(assert (=> b!7951173 d!2376161))

(declare-fun d!2376163 () Bool)

(assert (=> d!2376163 (= (head!16225 lt!2700249) (h!81026 lt!2700249))))

(assert (=> b!7951173 d!2376163))

(declare-fun d!2376165 () Bool)

(assert (=> d!2376165 (<= (size!43409 testedP!447) (size!43409 input!7927))))

(declare-fun lt!2700264 () Unit!169856)

(declare-fun choose!59917 (List!74702 List!74702) Unit!169856)

(assert (=> d!2376165 (= lt!2700264 (choose!59917 testedP!447 input!7927))))

(assert (=> d!2376165 (isPrefix!6573 testedP!447 input!7927)))

(assert (=> d!2376165 (= (lemmaIsPrefixThenSmallerEqSize!1090 testedP!447 input!7927) lt!2700264)))

(declare-fun bs!1969547 () Bool)

(assert (= bs!1969547 d!2376165))

(assert (=> bs!1969547 m!8335326))

(assert (=> bs!1969547 m!8335318))

(declare-fun m!8335386 () Bool)

(assert (=> bs!1969547 m!8335386))

(assert (=> bs!1969547 m!8335296))

(assert (=> b!7951179 d!2376165))

(declare-fun b!7951289 () Bool)

(declare-fun e!4690425 () Bool)

(declare-fun e!4690426 () Bool)

(assert (=> b!7951289 (= e!4690425 e!4690426)))

(declare-fun res!3153100 () Bool)

(assert (=> b!7951289 (=> (not res!3153100) (not e!4690426))))

(assert (=> b!7951289 (= res!3153100 (not ((_ is Nil!74578) input!7927)))))

(declare-fun b!7951291 () Bool)

(assert (=> b!7951291 (= e!4690426 (isPrefix!6573 (tail!15761 testedP!447) (tail!15761 input!7927)))))

(declare-fun d!2376169 () Bool)

(declare-fun e!4690424 () Bool)

(assert (=> d!2376169 e!4690424))

(declare-fun res!3153098 () Bool)

(assert (=> d!2376169 (=> res!3153098 e!4690424)))

(declare-fun lt!2700265 () Bool)

(assert (=> d!2376169 (= res!3153098 (not lt!2700265))))

(assert (=> d!2376169 (= lt!2700265 e!4690425)))

(declare-fun res!3153097 () Bool)

(assert (=> d!2376169 (=> res!3153097 e!4690425)))

(assert (=> d!2376169 (= res!3153097 ((_ is Nil!74578) testedP!447))))

(assert (=> d!2376169 (= (isPrefix!6573 testedP!447 input!7927) lt!2700265)))

(declare-fun b!7951290 () Bool)

(declare-fun res!3153099 () Bool)

(assert (=> b!7951290 (=> (not res!3153099) (not e!4690426))))

(assert (=> b!7951290 (= res!3153099 (= (head!16225 testedP!447) (head!16225 input!7927)))))

(declare-fun b!7951292 () Bool)

(assert (=> b!7951292 (= e!4690424 (>= (size!43409 input!7927) (size!43409 testedP!447)))))

(assert (= (and d!2376169 (not res!3153097)) b!7951289))

(assert (= (and b!7951289 res!3153100) b!7951290))

(assert (= (and b!7951290 res!3153099) b!7951291))

(assert (= (and d!2376169 (not res!3153098)) b!7951292))

(declare-fun m!8335388 () Bool)

(assert (=> b!7951291 m!8335388))

(assert (=> b!7951291 m!8335370))

(assert (=> b!7951291 m!8335388))

(assert (=> b!7951291 m!8335370))

(declare-fun m!8335390 () Bool)

(assert (=> b!7951291 m!8335390))

(declare-fun m!8335392 () Bool)

(assert (=> b!7951290 m!8335392))

(assert (=> b!7951290 m!8335376))

(assert (=> b!7951292 m!8335318))

(assert (=> b!7951292 m!8335326))

(assert (=> b!7951163 d!2376169))

(declare-fun d!2376171 () Bool)

(declare-fun lt!2700268 () Int)

(assert (=> d!2376171 (>= lt!2700268 0)))

(declare-fun e!4690429 () Int)

(assert (=> d!2376171 (= lt!2700268 e!4690429)))

(declare-fun c!1460425 () Bool)

(assert (=> d!2376171 (= c!1460425 ((_ is Nil!74578) input!7927))))

(assert (=> d!2376171 (= (size!43409 input!7927) lt!2700268)))

(declare-fun b!7951297 () Bool)

(assert (=> b!7951297 (= e!4690429 0)))

(declare-fun b!7951298 () Bool)

(assert (=> b!7951298 (= e!4690429 (+ 1 (size!43409 (t!390445 input!7927))))))

(assert (= (and d!2376171 c!1460425) b!7951297))

(assert (= (and d!2376171 (not c!1460425)) b!7951298))

(declare-fun m!8335394 () Bool)

(assert (=> b!7951298 m!8335394))

(assert (=> b!7951180 d!2376171))

(declare-fun b!7951403 () Bool)

(declare-fun c!1460470 () Bool)

(declare-fun call!737076 () Bool)

(assert (=> b!7951403 (= c!1460470 call!737076)))

(declare-fun lt!2700356 () Unit!169856)

(declare-fun lt!2700372 () Unit!169856)

(assert (=> b!7951403 (= lt!2700356 lt!2700372)))

(assert (=> b!7951403 (= input!7927 testedP!447)))

(declare-fun call!737081 () Unit!169856)

(assert (=> b!7951403 (= lt!2700372 call!737081)))

(declare-fun lt!2700363 () Unit!169856)

(declare-fun lt!2700358 () Unit!169856)

(assert (=> b!7951403 (= lt!2700363 lt!2700358)))

(declare-fun call!737075 () Bool)

(assert (=> b!7951403 call!737075))

(declare-fun call!737082 () Unit!169856)

(assert (=> b!7951403 (= lt!2700358 call!737082)))

(declare-fun e!4690491 () tuple2!70608)

(declare-fun e!4690492 () tuple2!70608)

(assert (=> b!7951403 (= e!4690491 e!4690492)))

(declare-fun b!7951404 () Bool)

(declare-fun e!4690488 () Bool)

(declare-fun e!4690495 () Bool)

(assert (=> b!7951404 (= e!4690488 e!4690495)))

(declare-fun res!3153128 () Bool)

(assert (=> b!7951404 (=> res!3153128 e!4690495)))

(declare-fun lt!2700361 () tuple2!70608)

(assert (=> b!7951404 (= res!3153128 (isEmpty!42877 (_1!38607 lt!2700361)))))

(declare-fun bm!737070 () Bool)

(assert (=> bm!737070 (= call!737081 (lemmaIsPrefixSameLengthThenSameList!1621 input!7927 testedP!447 input!7927))))

(declare-fun b!7951405 () Bool)

(declare-fun e!4690489 () tuple2!70608)

(assert (=> b!7951405 (= e!4690489 (tuple2!70609 Nil!74578 input!7927))))

(declare-fun bm!737071 () Bool)

(declare-fun call!737078 () List!74702)

(assert (=> bm!737071 (= call!737078 (tail!15761 lt!2700249))))

(declare-fun bm!737072 () Bool)

(assert (=> bm!737072 (= call!737075 (isPrefix!6573 input!7927 input!7927))))

(declare-fun lt!2700364 () List!74702)

(declare-fun call!737079 () Regex!21473)

(declare-fun bm!737073 () Bool)

(declare-fun call!737077 () tuple2!70608)

(assert (=> bm!737073 (= call!737077 (findLongestMatchInner!2254 call!737079 lt!2700364 (+ lt!2700244 1) call!737078 input!7927 lt!2700247))))

(declare-fun b!7951407 () Bool)

(assert (=> b!7951407 (= e!4690489 e!4690491)))

(declare-fun c!1460466 () Bool)

(assert (=> b!7951407 (= c!1460466 (= lt!2700244 lt!2700247))))

(declare-fun bm!737074 () Bool)

(assert (=> bm!737074 (= call!737076 (nullable!9574 r!24602))))

(declare-fun b!7951408 () Bool)

(declare-fun e!4690493 () tuple2!70608)

(declare-fun lt!2700371 () tuple2!70608)

(assert (=> b!7951408 (= e!4690493 lt!2700371)))

(declare-fun b!7951409 () Bool)

(declare-fun c!1460469 () Bool)

(assert (=> b!7951409 (= c!1460469 call!737076)))

(declare-fun lt!2700351 () Unit!169856)

(declare-fun lt!2700349 () Unit!169856)

(assert (=> b!7951409 (= lt!2700351 lt!2700349)))

(declare-fun lt!2700350 () C!43284)

(declare-fun lt!2700370 () List!74702)

(assert (=> b!7951409 (= (++!18343 (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578)) lt!2700370) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3517 (List!74702 C!43284 List!74702 List!74702) Unit!169856)

(assert (=> b!7951409 (= lt!2700349 (lemmaMoveElementToOtherListKeepsConcatEq!3517 testedP!447 lt!2700350 lt!2700370 input!7927))))

(assert (=> b!7951409 (= lt!2700370 (tail!15761 lt!2700249))))

(assert (=> b!7951409 (= lt!2700350 (head!16225 lt!2700249))))

(declare-fun lt!2700367 () Unit!169856)

(declare-fun lt!2700374 () Unit!169856)

(assert (=> b!7951409 (= lt!2700367 lt!2700374)))

(assert (=> b!7951409 (isPrefix!6573 (++!18343 testedP!447 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578)) input!7927)))

(assert (=> b!7951409 (= lt!2700374 (lemmaAddHeadSuffixToPrefixStillPrefix!1300 testedP!447 input!7927))))

(declare-fun lt!2700368 () Unit!169856)

(declare-fun lt!2700359 () Unit!169856)

(assert (=> b!7951409 (= lt!2700368 lt!2700359)))

(assert (=> b!7951409 (= lt!2700359 (lemmaAddHeadSuffixToPrefixStillPrefix!1300 testedP!447 input!7927))))

(assert (=> b!7951409 (= lt!2700364 (++!18343 testedP!447 (Cons!74578 (head!16225 lt!2700249) Nil!74578)))))

(declare-fun lt!2700355 () Unit!169856)

(declare-fun e!4690494 () Unit!169856)

(assert (=> b!7951409 (= lt!2700355 e!4690494)))

(declare-fun c!1460465 () Bool)

(assert (=> b!7951409 (= c!1460465 (= (size!43409 testedP!447) (size!43409 input!7927)))))

(declare-fun lt!2700362 () Unit!169856)

(declare-fun lt!2700357 () Unit!169856)

(assert (=> b!7951409 (= lt!2700362 lt!2700357)))

(assert (=> b!7951409 (<= (size!43409 testedP!447) (size!43409 input!7927))))

(assert (=> b!7951409 (= lt!2700357 (lemmaIsPrefixThenSmallerEqSize!1090 testedP!447 input!7927))))

(declare-fun e!4690490 () tuple2!70608)

(assert (=> b!7951409 (= e!4690491 e!4690490)))

(declare-fun b!7951410 () Bool)

(assert (=> b!7951410 (= e!4690493 (tuple2!70609 testedP!447 lt!2700249))))

(declare-fun b!7951411 () Bool)

(assert (=> b!7951411 (= e!4690490 call!737077)))

(declare-fun bm!737075 () Bool)

(declare-fun call!737080 () C!43284)

(assert (=> bm!737075 (= call!737080 (head!16225 lt!2700249))))

(declare-fun b!7951412 () Bool)

(declare-fun Unit!169860 () Unit!169856)

(assert (=> b!7951412 (= e!4690494 Unit!169860)))

(declare-fun lt!2700352 () Unit!169856)

(assert (=> b!7951412 (= lt!2700352 call!737082)))

(assert (=> b!7951412 call!737075))

(declare-fun lt!2700353 () Unit!169856)

(assert (=> b!7951412 (= lt!2700353 lt!2700352)))

(declare-fun lt!2700369 () Unit!169856)

(assert (=> b!7951412 (= lt!2700369 call!737081)))

(assert (=> b!7951412 (= input!7927 testedP!447)))

(declare-fun lt!2700366 () Unit!169856)

(assert (=> b!7951412 (= lt!2700366 lt!2700369)))

(assert (=> b!7951412 false))

(declare-fun bm!737076 () Bool)

(assert (=> bm!737076 (= call!737082 (lemmaIsPrefixRefl!4041 input!7927 input!7927))))

(declare-fun b!7951413 () Bool)

(assert (=> b!7951413 (= e!4690492 (tuple2!70609 testedP!447 Nil!74578))))

(declare-fun b!7951406 () Bool)

(assert (=> b!7951406 (= e!4690495 (>= (size!43409 (_1!38607 lt!2700361)) (size!43409 testedP!447)))))

(declare-fun d!2376173 () Bool)

(assert (=> d!2376173 e!4690488))

(declare-fun res!3153127 () Bool)

(assert (=> d!2376173 (=> (not res!3153127) (not e!4690488))))

(assert (=> d!2376173 (= res!3153127 (= (++!18343 (_1!38607 lt!2700361) (_2!38607 lt!2700361)) input!7927))))

(assert (=> d!2376173 (= lt!2700361 e!4690489)))

(declare-fun c!1460467 () Bool)

(declare-fun lostCause!1961 (Regex!21473) Bool)

(assert (=> d!2376173 (= c!1460467 (lostCause!1961 r!24602))))

(declare-fun lt!2700347 () Unit!169856)

(declare-fun Unit!169861 () Unit!169856)

(assert (=> d!2376173 (= lt!2700347 Unit!169861)))

(assert (=> d!2376173 (= (getSuffix!3776 input!7927 testedP!447) lt!2700249)))

(declare-fun lt!2700348 () Unit!169856)

(declare-fun lt!2700354 () Unit!169856)

(assert (=> d!2376173 (= lt!2700348 lt!2700354)))

(declare-fun lt!2700373 () List!74702)

(assert (=> d!2376173 (= lt!2700249 lt!2700373)))

(declare-fun lemmaSamePrefixThenSameSuffix!2977 (List!74702 List!74702 List!74702 List!74702 List!74702) Unit!169856)

(assert (=> d!2376173 (= lt!2700354 (lemmaSamePrefixThenSameSuffix!2977 testedP!447 lt!2700249 testedP!447 lt!2700373 input!7927))))

(assert (=> d!2376173 (= lt!2700373 (getSuffix!3776 input!7927 testedP!447))))

(declare-fun lt!2700360 () Unit!169856)

(declare-fun lt!2700365 () Unit!169856)

(assert (=> d!2376173 (= lt!2700360 lt!2700365)))

(assert (=> d!2376173 (isPrefix!6573 testedP!447 (++!18343 testedP!447 lt!2700249))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3839 (List!74702 List!74702) Unit!169856)

(assert (=> d!2376173 (= lt!2700365 (lemmaConcatTwoListThenFirstIsPrefix!3839 testedP!447 lt!2700249))))

(assert (=> d!2376173 (validRegex!11777 r!24602)))

(assert (=> d!2376173 (= (findLongestMatchInner!2254 r!24602 testedP!447 lt!2700244 lt!2700249 input!7927 lt!2700247) lt!2700361)))

(declare-fun b!7951414 () Bool)

(assert (=> b!7951414 (= e!4690492 (tuple2!70609 Nil!74578 input!7927))))

(declare-fun bm!737077 () Bool)

(assert (=> bm!737077 (= call!737079 (derivativeStep!6501 r!24602 call!737080))))

(declare-fun b!7951415 () Bool)

(assert (=> b!7951415 (= e!4690490 e!4690493)))

(assert (=> b!7951415 (= lt!2700371 call!737077)))

(declare-fun c!1460468 () Bool)

(assert (=> b!7951415 (= c!1460468 (isEmpty!42877 (_1!38607 lt!2700371)))))

(declare-fun b!7951416 () Bool)

(declare-fun Unit!169862 () Unit!169856)

(assert (=> b!7951416 (= e!4690494 Unit!169862)))

(assert (= (and d!2376173 c!1460467) b!7951405))

(assert (= (and d!2376173 (not c!1460467)) b!7951407))

(assert (= (and b!7951407 c!1460466) b!7951403))

(assert (= (and b!7951407 (not c!1460466)) b!7951409))

(assert (= (and b!7951403 c!1460470) b!7951413))

(assert (= (and b!7951403 (not c!1460470)) b!7951414))

(assert (= (and b!7951409 c!1460465) b!7951412))

(assert (= (and b!7951409 (not c!1460465)) b!7951416))

(assert (= (and b!7951409 c!1460469) b!7951415))

(assert (= (and b!7951409 (not c!1460469)) b!7951411))

(assert (= (and b!7951415 c!1460468) b!7951410))

(assert (= (and b!7951415 (not c!1460468)) b!7951408))

(assert (= (or b!7951415 b!7951411) bm!737075))

(assert (= (or b!7951415 b!7951411) bm!737071))

(assert (= (or b!7951415 b!7951411) bm!737077))

(assert (= (or b!7951415 b!7951411) bm!737073))

(assert (= (or b!7951403 b!7951409) bm!737074))

(assert (= (or b!7951403 b!7951412) bm!737070))

(assert (= (or b!7951403 b!7951412) bm!737076))

(assert (= (or b!7951403 b!7951412) bm!737072))

(assert (= (and d!2376173 res!3153127) b!7951404))

(assert (= (and b!7951404 (not res!3153128)) b!7951406))

(assert (=> bm!737075 m!8335304))

(declare-fun m!8335458 () Bool)

(assert (=> b!7951409 m!8335458))

(assert (=> b!7951409 m!8335458))

(declare-fun m!8335460 () Bool)

(assert (=> b!7951409 m!8335460))

(assert (=> b!7951409 m!8335316))

(assert (=> b!7951409 m!8335326))

(assert (=> b!7951409 m!8335322))

(assert (=> b!7951409 m!8335348))

(assert (=> b!7951409 m!8335304))

(declare-fun m!8335462 () Bool)

(assert (=> b!7951409 m!8335462))

(assert (=> b!7951409 m!8335306))

(assert (=> b!7951409 m!8335322))

(declare-fun m!8335464 () Bool)

(assert (=> b!7951409 m!8335464))

(assert (=> b!7951409 m!8335350))

(assert (=> b!7951409 m!8335352))

(assert (=> b!7951409 m!8335318))

(assert (=> b!7951409 m!8335350))

(declare-fun m!8335466 () Bool)

(assert (=> b!7951409 m!8335466))

(assert (=> d!2376173 m!8335322))

(declare-fun m!8335468 () Bool)

(assert (=> d!2376173 m!8335468))

(declare-fun m!8335470 () Bool)

(assert (=> d!2376173 m!8335470))

(declare-fun m!8335472 () Bool)

(assert (=> d!2376173 m!8335472))

(declare-fun m!8335474 () Bool)

(assert (=> d!2376173 m!8335474))

(declare-fun m!8335476 () Bool)

(assert (=> d!2376173 m!8335476))

(assert (=> d!2376173 m!8335342))

(assert (=> d!2376173 m!8335470))

(declare-fun m!8335478 () Bool)

(assert (=> d!2376173 m!8335478))

(declare-fun m!8335480 () Bool)

(assert (=> b!7951404 m!8335480))

(declare-fun m!8335482 () Bool)

(assert (=> b!7951415 m!8335482))

(declare-fun m!8335484 () Bool)

(assert (=> b!7951406 m!8335484))

(assert (=> b!7951406 m!8335326))

(assert (=> bm!737076 m!8335310))

(assert (=> bm!737074 m!8335300))

(assert (=> bm!737072 m!8335312))

(assert (=> bm!737070 m!8335314))

(declare-fun m!8335486 () Bool)

(assert (=> bm!737073 m!8335486))

(assert (=> bm!737071 m!8335464))

(declare-fun m!8335488 () Bool)

(assert (=> bm!737077 m!8335488))

(assert (=> b!7951180 d!2376173))

(declare-fun d!2376197 () Bool)

(declare-fun lt!2700377 () List!74702)

(assert (=> d!2376197 (= (++!18343 testedP!447 lt!2700377) input!7927)))

(declare-fun e!4690498 () List!74702)

(assert (=> d!2376197 (= lt!2700377 e!4690498)))

(declare-fun c!1460473 () Bool)

(assert (=> d!2376197 (= c!1460473 ((_ is Cons!74578) testedP!447))))

(assert (=> d!2376197 (>= (size!43409 input!7927) (size!43409 testedP!447))))

(assert (=> d!2376197 (= (getSuffix!3776 input!7927 testedP!447) lt!2700377)))

(declare-fun b!7951421 () Bool)

(assert (=> b!7951421 (= e!4690498 (getSuffix!3776 (tail!15761 input!7927) (t!390445 testedP!447)))))

(declare-fun b!7951422 () Bool)

(assert (=> b!7951422 (= e!4690498 input!7927)))

(assert (= (and d!2376197 c!1460473) b!7951421))

(assert (= (and d!2376197 (not c!1460473)) b!7951422))

(declare-fun m!8335490 () Bool)

(assert (=> d!2376197 m!8335490))

(assert (=> d!2376197 m!8335318))

(assert (=> d!2376197 m!8335326))

(assert (=> b!7951421 m!8335370))

(assert (=> b!7951421 m!8335370))

(declare-fun m!8335492 () Bool)

(assert (=> b!7951421 m!8335492))

(assert (=> b!7951180 d!2376197))

(declare-fun d!2376199 () Bool)

(declare-fun lt!2700378 () Int)

(assert (=> d!2376199 (>= lt!2700378 0)))

(declare-fun e!4690499 () Int)

(assert (=> d!2376199 (= lt!2700378 e!4690499)))

(declare-fun c!1460474 () Bool)

(assert (=> d!2376199 (= c!1460474 ((_ is Nil!74578) testedP!447))))

(assert (=> d!2376199 (= (size!43409 testedP!447) lt!2700378)))

(declare-fun b!7951423 () Bool)

(assert (=> b!7951423 (= e!4690499 0)))

(declare-fun b!7951424 () Bool)

(assert (=> b!7951424 (= e!4690499 (+ 1 (size!43409 (t!390445 testedP!447))))))

(assert (= (and d!2376199 c!1460474) b!7951423))

(assert (= (and d!2376199 (not c!1460474)) b!7951424))

(declare-fun m!8335494 () Bool)

(assert (=> b!7951424 m!8335494))

(assert (=> b!7951180 d!2376199))

(declare-fun d!2376201 () Bool)

(assert (=> d!2376201 (= (isEmpty!42877 (_1!38607 (findLongestMatchInner!2254 r!24602 testedP!447 lt!2700244 lt!2700249 input!7927 lt!2700247))) ((_ is Nil!74578) (_1!38607 (findLongestMatchInner!2254 r!24602 testedP!447 lt!2700244 lt!2700249 input!7927 lt!2700247))))))

(assert (=> b!7951180 d!2376201))

(declare-fun d!2376203 () Bool)

(declare-fun lt!2700381 () Regex!21473)

(assert (=> d!2376203 (validRegex!11777 lt!2700381)))

(declare-fun e!4690502 () Regex!21473)

(assert (=> d!2376203 (= lt!2700381 e!4690502)))

(declare-fun c!1460477 () Bool)

(assert (=> d!2376203 (= c!1460477 ((_ is Cons!74578) testedP!447))))

(assert (=> d!2376203 (validRegex!11777 baseR!116)))

(assert (=> d!2376203 (= (derivative!659 baseR!116 testedP!447) lt!2700381)))

(declare-fun b!7951429 () Bool)

(assert (=> b!7951429 (= e!4690502 (derivative!659 (derivativeStep!6501 baseR!116 (h!81026 testedP!447)) (t!390445 testedP!447)))))

(declare-fun b!7951430 () Bool)

(assert (=> b!7951430 (= e!4690502 baseR!116)))

(assert (= (and d!2376203 c!1460477) b!7951429))

(assert (= (and d!2376203 (not c!1460477)) b!7951430))

(declare-fun m!8335496 () Bool)

(assert (=> d!2376203 m!8335496))

(assert (=> d!2376203 m!8335308))

(declare-fun m!8335498 () Bool)

(assert (=> b!7951429 m!8335498))

(assert (=> b!7951429 m!8335498))

(declare-fun m!8335500 () Bool)

(assert (=> b!7951429 m!8335500))

(assert (=> b!7951175 d!2376203))

(declare-fun d!2376205 () Bool)

(assert (=> d!2376205 (isPrefix!6573 input!7927 input!7927)))

(declare-fun lt!2700384 () Unit!169856)

(declare-fun choose!59919 (List!74702 List!74702) Unit!169856)

(assert (=> d!2376205 (= lt!2700384 (choose!59919 input!7927 input!7927))))

(assert (=> d!2376205 (= (lemmaIsPrefixRefl!4041 input!7927 input!7927) lt!2700384)))

(declare-fun bs!1969550 () Bool)

(assert (= bs!1969550 d!2376205))

(assert (=> bs!1969550 m!8335312))

(declare-fun m!8335502 () Bool)

(assert (=> bs!1969550 m!8335502))

(assert (=> b!7951165 d!2376205))

(declare-fun b!7951431 () Bool)

(declare-fun e!4690504 () Bool)

(declare-fun e!4690505 () Bool)

(assert (=> b!7951431 (= e!4690504 e!4690505)))

(declare-fun res!3153132 () Bool)

(assert (=> b!7951431 (=> (not res!3153132) (not e!4690505))))

(assert (=> b!7951431 (= res!3153132 (not ((_ is Nil!74578) input!7927)))))

(declare-fun b!7951433 () Bool)

(assert (=> b!7951433 (= e!4690505 (isPrefix!6573 (tail!15761 input!7927) (tail!15761 input!7927)))))

(declare-fun d!2376207 () Bool)

(declare-fun e!4690503 () Bool)

(assert (=> d!2376207 e!4690503))

(declare-fun res!3153130 () Bool)

(assert (=> d!2376207 (=> res!3153130 e!4690503)))

(declare-fun lt!2700385 () Bool)

(assert (=> d!2376207 (= res!3153130 (not lt!2700385))))

(assert (=> d!2376207 (= lt!2700385 e!4690504)))

(declare-fun res!3153129 () Bool)

(assert (=> d!2376207 (=> res!3153129 e!4690504)))

(assert (=> d!2376207 (= res!3153129 ((_ is Nil!74578) input!7927))))

(assert (=> d!2376207 (= (isPrefix!6573 input!7927 input!7927) lt!2700385)))

(declare-fun b!7951432 () Bool)

(declare-fun res!3153131 () Bool)

(assert (=> b!7951432 (=> (not res!3153131) (not e!4690505))))

(assert (=> b!7951432 (= res!3153131 (= (head!16225 input!7927) (head!16225 input!7927)))))

(declare-fun b!7951434 () Bool)

(assert (=> b!7951434 (= e!4690503 (>= (size!43409 input!7927) (size!43409 input!7927)))))

(assert (= (and d!2376207 (not res!3153129)) b!7951431))

(assert (= (and b!7951431 res!3153132) b!7951432))

(assert (= (and b!7951432 res!3153131) b!7951433))

(assert (= (and d!2376207 (not res!3153130)) b!7951434))

(assert (=> b!7951433 m!8335370))

(assert (=> b!7951433 m!8335370))

(assert (=> b!7951433 m!8335370))

(assert (=> b!7951433 m!8335370))

(declare-fun m!8335504 () Bool)

(assert (=> b!7951433 m!8335504))

(assert (=> b!7951432 m!8335376))

(assert (=> b!7951432 m!8335376))

(assert (=> b!7951434 m!8335318))

(assert (=> b!7951434 m!8335318))

(assert (=> b!7951165 d!2376207))

(declare-fun d!2376209 () Bool)

(assert (=> d!2376209 (= input!7927 testedP!447)))

(declare-fun lt!2700388 () Unit!169856)

(declare-fun choose!59920 (List!74702 List!74702 List!74702) Unit!169856)

(assert (=> d!2376209 (= lt!2700388 (choose!59920 input!7927 testedP!447 input!7927))))

(assert (=> d!2376209 (isPrefix!6573 input!7927 input!7927)))

(assert (=> d!2376209 (= (lemmaIsPrefixSameLengthThenSameList!1621 input!7927 testedP!447 input!7927) lt!2700388)))

(declare-fun bs!1969551 () Bool)

(assert (= bs!1969551 d!2376209))

(declare-fun m!8335506 () Bool)

(assert (=> bs!1969551 m!8335506))

(assert (=> bs!1969551 m!8335312))

(assert (=> b!7951165 d!2376209))

(declare-fun e!4690508 () Bool)

(assert (=> b!7951162 (= tp!2366500 e!4690508)))

(declare-fun b!7951448 () Bool)

(declare-fun tp!2366516 () Bool)

(declare-fun tp!2366517 () Bool)

(assert (=> b!7951448 (= e!4690508 (and tp!2366516 tp!2366517))))

(declare-fun b!7951445 () Bool)

(assert (=> b!7951445 (= e!4690508 tp_is_empty!53489)))

(declare-fun b!7951447 () Bool)

(declare-fun tp!2366514 () Bool)

(assert (=> b!7951447 (= e!4690508 tp!2366514)))

(declare-fun b!7951446 () Bool)

(declare-fun tp!2366513 () Bool)

(declare-fun tp!2366515 () Bool)

(assert (=> b!7951446 (= e!4690508 (and tp!2366513 tp!2366515))))

(assert (= (and b!7951162 ((_ is ElementMatch!21473) (regOne!43458 r!24602))) b!7951445))

(assert (= (and b!7951162 ((_ is Concat!30472) (regOne!43458 r!24602))) b!7951446))

(assert (= (and b!7951162 ((_ is Star!21473) (regOne!43458 r!24602))) b!7951447))

(assert (= (and b!7951162 ((_ is Union!21473) (regOne!43458 r!24602))) b!7951448))

(declare-fun e!4690509 () Bool)

(assert (=> b!7951162 (= tp!2366495 e!4690509)))

(declare-fun b!7951452 () Bool)

(declare-fun tp!2366521 () Bool)

(declare-fun tp!2366522 () Bool)

(assert (=> b!7951452 (= e!4690509 (and tp!2366521 tp!2366522))))

(declare-fun b!7951449 () Bool)

(assert (=> b!7951449 (= e!4690509 tp_is_empty!53489)))

(declare-fun b!7951451 () Bool)

(declare-fun tp!2366519 () Bool)

(assert (=> b!7951451 (= e!4690509 tp!2366519)))

(declare-fun b!7951450 () Bool)

(declare-fun tp!2366518 () Bool)

(declare-fun tp!2366520 () Bool)

(assert (=> b!7951450 (= e!4690509 (and tp!2366518 tp!2366520))))

(assert (= (and b!7951162 ((_ is ElementMatch!21473) (regTwo!43458 r!24602))) b!7951449))

(assert (= (and b!7951162 ((_ is Concat!30472) (regTwo!43458 r!24602))) b!7951450))

(assert (= (and b!7951162 ((_ is Star!21473) (regTwo!43458 r!24602))) b!7951451))

(assert (= (and b!7951162 ((_ is Union!21473) (regTwo!43458 r!24602))) b!7951452))

(declare-fun e!4690510 () Bool)

(assert (=> b!7951167 (= tp!2366496 e!4690510)))

(declare-fun b!7951456 () Bool)

(declare-fun tp!2366526 () Bool)

(declare-fun tp!2366527 () Bool)

(assert (=> b!7951456 (= e!4690510 (and tp!2366526 tp!2366527))))

(declare-fun b!7951453 () Bool)

(assert (=> b!7951453 (= e!4690510 tp_is_empty!53489)))

(declare-fun b!7951455 () Bool)

(declare-fun tp!2366524 () Bool)

(assert (=> b!7951455 (= e!4690510 tp!2366524)))

(declare-fun b!7951454 () Bool)

(declare-fun tp!2366523 () Bool)

(declare-fun tp!2366525 () Bool)

(assert (=> b!7951454 (= e!4690510 (and tp!2366523 tp!2366525))))

(assert (= (and b!7951167 ((_ is ElementMatch!21473) (reg!21802 r!24602))) b!7951453))

(assert (= (and b!7951167 ((_ is Concat!30472) (reg!21802 r!24602))) b!7951454))

(assert (= (and b!7951167 ((_ is Star!21473) (reg!21802 r!24602))) b!7951455))

(assert (= (and b!7951167 ((_ is Union!21473) (reg!21802 r!24602))) b!7951456))

(declare-fun e!4690511 () Bool)

(assert (=> b!7951168 (= tp!2366499 e!4690511)))

(declare-fun b!7951460 () Bool)

(declare-fun tp!2366531 () Bool)

(declare-fun tp!2366532 () Bool)

(assert (=> b!7951460 (= e!4690511 (and tp!2366531 tp!2366532))))

(declare-fun b!7951457 () Bool)

(assert (=> b!7951457 (= e!4690511 tp_is_empty!53489)))

(declare-fun b!7951459 () Bool)

(declare-fun tp!2366529 () Bool)

(assert (=> b!7951459 (= e!4690511 tp!2366529)))

(declare-fun b!7951458 () Bool)

(declare-fun tp!2366528 () Bool)

(declare-fun tp!2366530 () Bool)

(assert (=> b!7951458 (= e!4690511 (and tp!2366528 tp!2366530))))

(assert (= (and b!7951168 ((_ is ElementMatch!21473) (regOne!43458 baseR!116))) b!7951457))

(assert (= (and b!7951168 ((_ is Concat!30472) (regOne!43458 baseR!116))) b!7951458))

(assert (= (and b!7951168 ((_ is Star!21473) (regOne!43458 baseR!116))) b!7951459))

(assert (= (and b!7951168 ((_ is Union!21473) (regOne!43458 baseR!116))) b!7951460))

(declare-fun e!4690512 () Bool)

(assert (=> b!7951168 (= tp!2366502 e!4690512)))

(declare-fun b!7951464 () Bool)

(declare-fun tp!2366536 () Bool)

(declare-fun tp!2366537 () Bool)

(assert (=> b!7951464 (= e!4690512 (and tp!2366536 tp!2366537))))

(declare-fun b!7951461 () Bool)

(assert (=> b!7951461 (= e!4690512 tp_is_empty!53489)))

(declare-fun b!7951463 () Bool)

(declare-fun tp!2366534 () Bool)

(assert (=> b!7951463 (= e!4690512 tp!2366534)))

(declare-fun b!7951462 () Bool)

(declare-fun tp!2366533 () Bool)

(declare-fun tp!2366535 () Bool)

(assert (=> b!7951462 (= e!4690512 (and tp!2366533 tp!2366535))))

(assert (= (and b!7951168 ((_ is ElementMatch!21473) (regTwo!43458 baseR!116))) b!7951461))

(assert (= (and b!7951168 ((_ is Concat!30472) (regTwo!43458 baseR!116))) b!7951462))

(assert (= (and b!7951168 ((_ is Star!21473) (regTwo!43458 baseR!116))) b!7951463))

(assert (= (and b!7951168 ((_ is Union!21473) (regTwo!43458 baseR!116))) b!7951464))

(declare-fun e!4690513 () Bool)

(assert (=> b!7951174 (= tp!2366493 e!4690513)))

(declare-fun b!7951468 () Bool)

(declare-fun tp!2366541 () Bool)

(declare-fun tp!2366542 () Bool)

(assert (=> b!7951468 (= e!4690513 (and tp!2366541 tp!2366542))))

(declare-fun b!7951465 () Bool)

(assert (=> b!7951465 (= e!4690513 tp_is_empty!53489)))

(declare-fun b!7951467 () Bool)

(declare-fun tp!2366539 () Bool)

(assert (=> b!7951467 (= e!4690513 tp!2366539)))

(declare-fun b!7951466 () Bool)

(declare-fun tp!2366538 () Bool)

(declare-fun tp!2366540 () Bool)

(assert (=> b!7951466 (= e!4690513 (and tp!2366538 tp!2366540))))

(assert (= (and b!7951174 ((_ is ElementMatch!21473) (regOne!43459 r!24602))) b!7951465))

(assert (= (and b!7951174 ((_ is Concat!30472) (regOne!43459 r!24602))) b!7951466))

(assert (= (and b!7951174 ((_ is Star!21473) (regOne!43459 r!24602))) b!7951467))

(assert (= (and b!7951174 ((_ is Union!21473) (regOne!43459 r!24602))) b!7951468))

(declare-fun e!4690514 () Bool)

(assert (=> b!7951174 (= tp!2366501 e!4690514)))

(declare-fun b!7951472 () Bool)

(declare-fun tp!2366546 () Bool)

(declare-fun tp!2366547 () Bool)

(assert (=> b!7951472 (= e!4690514 (and tp!2366546 tp!2366547))))

(declare-fun b!7951469 () Bool)

(assert (=> b!7951469 (= e!4690514 tp_is_empty!53489)))

(declare-fun b!7951471 () Bool)

(declare-fun tp!2366544 () Bool)

(assert (=> b!7951471 (= e!4690514 tp!2366544)))

(declare-fun b!7951470 () Bool)

(declare-fun tp!2366543 () Bool)

(declare-fun tp!2366545 () Bool)

(assert (=> b!7951470 (= e!4690514 (and tp!2366543 tp!2366545))))

(assert (= (and b!7951174 ((_ is ElementMatch!21473) (regTwo!43459 r!24602))) b!7951469))

(assert (= (and b!7951174 ((_ is Concat!30472) (regTwo!43459 r!24602))) b!7951470))

(assert (= (and b!7951174 ((_ is Star!21473) (regTwo!43459 r!24602))) b!7951471))

(assert (= (and b!7951174 ((_ is Union!21473) (regTwo!43459 r!24602))) b!7951472))

(declare-fun e!4690515 () Bool)

(assert (=> b!7951164 (= tp!2366497 e!4690515)))

(declare-fun b!7951476 () Bool)

(declare-fun tp!2366551 () Bool)

(declare-fun tp!2366552 () Bool)

(assert (=> b!7951476 (= e!4690515 (and tp!2366551 tp!2366552))))

(declare-fun b!7951473 () Bool)

(assert (=> b!7951473 (= e!4690515 tp_is_empty!53489)))

(declare-fun b!7951475 () Bool)

(declare-fun tp!2366549 () Bool)

(assert (=> b!7951475 (= e!4690515 tp!2366549)))

(declare-fun b!7951474 () Bool)

(declare-fun tp!2366548 () Bool)

(declare-fun tp!2366550 () Bool)

(assert (=> b!7951474 (= e!4690515 (and tp!2366548 tp!2366550))))

(assert (= (and b!7951164 ((_ is ElementMatch!21473) (reg!21802 baseR!116))) b!7951473))

(assert (= (and b!7951164 ((_ is Concat!30472) (reg!21802 baseR!116))) b!7951474))

(assert (= (and b!7951164 ((_ is Star!21473) (reg!21802 baseR!116))) b!7951475))

(assert (= (and b!7951164 ((_ is Union!21473) (reg!21802 baseR!116))) b!7951476))

(declare-fun e!4690516 () Bool)

(assert (=> b!7951176 (= tp!2366494 e!4690516)))

(declare-fun b!7951480 () Bool)

(declare-fun tp!2366556 () Bool)

(declare-fun tp!2366557 () Bool)

(assert (=> b!7951480 (= e!4690516 (and tp!2366556 tp!2366557))))

(declare-fun b!7951477 () Bool)

(assert (=> b!7951477 (= e!4690516 tp_is_empty!53489)))

(declare-fun b!7951479 () Bool)

(declare-fun tp!2366554 () Bool)

(assert (=> b!7951479 (= e!4690516 tp!2366554)))

(declare-fun b!7951478 () Bool)

(declare-fun tp!2366553 () Bool)

(declare-fun tp!2366555 () Bool)

(assert (=> b!7951478 (= e!4690516 (and tp!2366553 tp!2366555))))

(assert (= (and b!7951176 ((_ is ElementMatch!21473) (regOne!43459 baseR!116))) b!7951477))

(assert (= (and b!7951176 ((_ is Concat!30472) (regOne!43459 baseR!116))) b!7951478))

(assert (= (and b!7951176 ((_ is Star!21473) (regOne!43459 baseR!116))) b!7951479))

(assert (= (and b!7951176 ((_ is Union!21473) (regOne!43459 baseR!116))) b!7951480))

(declare-fun e!4690517 () Bool)

(assert (=> b!7951176 (= tp!2366491 e!4690517)))

(declare-fun b!7951484 () Bool)

(declare-fun tp!2366561 () Bool)

(declare-fun tp!2366562 () Bool)

(assert (=> b!7951484 (= e!4690517 (and tp!2366561 tp!2366562))))

(declare-fun b!7951481 () Bool)

(assert (=> b!7951481 (= e!4690517 tp_is_empty!53489)))

(declare-fun b!7951483 () Bool)

(declare-fun tp!2366559 () Bool)

(assert (=> b!7951483 (= e!4690517 tp!2366559)))

(declare-fun b!7951482 () Bool)

(declare-fun tp!2366558 () Bool)

(declare-fun tp!2366560 () Bool)

(assert (=> b!7951482 (= e!4690517 (and tp!2366558 tp!2366560))))

(assert (= (and b!7951176 ((_ is ElementMatch!21473) (regTwo!43459 baseR!116))) b!7951481))

(assert (= (and b!7951176 ((_ is Concat!30472) (regTwo!43459 baseR!116))) b!7951482))

(assert (= (and b!7951176 ((_ is Star!21473) (regTwo!43459 baseR!116))) b!7951483))

(assert (= (and b!7951176 ((_ is Union!21473) (regTwo!43459 baseR!116))) b!7951484))

(declare-fun b!7951489 () Bool)

(declare-fun e!4690520 () Bool)

(declare-fun tp!2366565 () Bool)

(assert (=> b!7951489 (= e!4690520 (and tp_is_empty!53489 tp!2366565))))

(assert (=> b!7951166 (= tp!2366498 e!4690520)))

(assert (= (and b!7951166 ((_ is Cons!74578) (t!390445 input!7927))) b!7951489))

(declare-fun b!7951490 () Bool)

(declare-fun e!4690521 () Bool)

(declare-fun tp!2366566 () Bool)

(assert (=> b!7951490 (= e!4690521 (and tp_is_empty!53489 tp!2366566))))

(assert (=> b!7951171 (= tp!2366492 e!4690521)))

(assert (= (and b!7951171 ((_ is Cons!74578) (t!390445 testedP!447))) b!7951490))

(check-sat (not bm!737074) (not b!7951489) (not b!7951452) (not b!7951475) (not d!2376155) (not bm!737071) (not bm!737073) (not b!7951278) (not b!7951404) (not b!7951433) (not b!7951464) (not d!2376205) (not b!7951458) (not d!2376173) (not b!7951448) (not b!7951467) (not b!7951462) (not b!7951460) (not b!7951480) (not bm!737019) (not d!2376203) (not b!7951298) (not bm!737076) (not b!7951466) (not b!7951455) (not b!7951421) (not b!7951476) tp_is_empty!53489 (not b!7951228) (not bm!737075) (not b!7951415) (not b!7951279) (not b!7951472) (not b!7951432) (not b!7951454) (not b!7951434) (not b!7951490) (not b!7951459) (not b!7951471) (not b!7951450) (not b!7951265) (not b!7951406) (not b!7951484) (not b!7951429) (not bm!737077) (not bm!737020) (not d!2376197) (not bm!737070) (not d!2376157) (not b!7951468) (not d!2376165) (not b!7951266) (not b!7951277) (not b!7951463) (not bm!737072) (not b!7951447) (not b!7951474) (not b!7951470) (not bm!737031) (not b!7951424) (not bm!737030) (not b!7951456) (not d!2376159) (not b!7951451) (not b!7951483) (not b!7951292) (not d!2376209) (not b!7951409) (not d!2376151) (not b!7951482) (not b!7951200) (not b!7951446) (not b!7951291) (not b!7951478) (not b!7951479) (not b!7951290))
(check-sat)
(get-model)

(assert (=> bm!737075 d!2376163))

(assert (=> d!2376205 d!2376207))

(declare-fun d!2376221 () Bool)

(assert (=> d!2376221 (isPrefix!6573 input!7927 input!7927)))

(assert (=> d!2376221 true))

(declare-fun _$45!2458 () Unit!169856)

(assert (=> d!2376221 (= (choose!59919 input!7927 input!7927) _$45!2458)))

(declare-fun bs!1969555 () Bool)

(assert (= bs!1969555 d!2376221))

(assert (=> bs!1969555 m!8335312))

(assert (=> d!2376205 d!2376221))

(declare-fun d!2376223 () Bool)

(assert (=> d!2376223 (= (head!16225 input!7927) (h!81026 input!7927))))

(assert (=> b!7951432 d!2376223))

(declare-fun b!7951595 () Bool)

(declare-fun e!4690569 () Bool)

(declare-fun call!737107 () Bool)

(assert (=> b!7951595 (= e!4690569 call!737107)))

(declare-fun b!7951596 () Bool)

(declare-fun e!4690567 () Bool)

(declare-fun e!4690568 () Bool)

(assert (=> b!7951596 (= e!4690567 e!4690568)))

(declare-fun res!3153143 () Bool)

(assert (=> b!7951596 (= res!3153143 (not (nullable!9574 (reg!21802 (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))))))))

(assert (=> b!7951596 (=> (not res!3153143) (not e!4690568))))

(declare-fun b!7951597 () Bool)

(declare-fun e!4690571 () Bool)

(assert (=> b!7951597 (= e!4690571 e!4690569)))

(declare-fun res!3153146 () Bool)

(assert (=> b!7951597 (=> (not res!3153146) (not e!4690569))))

(declare-fun call!737108 () Bool)

(assert (=> b!7951597 (= res!3153146 call!737108)))

(declare-fun bm!737102 () Bool)

(declare-fun call!737109 () Bool)

(assert (=> bm!737102 (= call!737108 call!737109)))

(declare-fun b!7951599 () Bool)

(declare-fun e!4690572 () Bool)

(assert (=> b!7951599 (= e!4690572 e!4690567)))

(declare-fun c!1460498 () Bool)

(assert (=> b!7951599 (= c!1460498 ((_ is Star!21473) (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))))))

(declare-fun b!7951600 () Bool)

(assert (=> b!7951600 (= e!4690568 call!737109)))

(declare-fun b!7951601 () Bool)

(declare-fun e!4690566 () Bool)

(assert (=> b!7951601 (= e!4690566 call!737107)))

(declare-fun bm!737103 () Bool)

(declare-fun c!1460497 () Bool)

(assert (=> bm!737103 (= call!737109 (validRegex!11777 (ite c!1460498 (reg!21802 (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))) (ite c!1460497 (regOne!43459 (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))) (regOne!43458 (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116))))))))))

(declare-fun bm!737104 () Bool)

(assert (=> bm!737104 (= call!737107 (validRegex!11777 (ite c!1460497 (regTwo!43459 (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))) (regTwo!43458 (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))))))))

(declare-fun b!7951602 () Bool)

(declare-fun res!3153147 () Bool)

(assert (=> b!7951602 (=> res!3153147 e!4690571)))

(assert (=> b!7951602 (= res!3153147 (not ((_ is Concat!30472) (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116))))))))

(declare-fun e!4690570 () Bool)

(assert (=> b!7951602 (= e!4690570 e!4690571)))

(declare-fun b!7951603 () Bool)

(assert (=> b!7951603 (= e!4690567 e!4690570)))

(assert (=> b!7951603 (= c!1460497 ((_ is Union!21473) (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))))))

(declare-fun b!7951598 () Bool)

(declare-fun res!3153145 () Bool)

(assert (=> b!7951598 (=> (not res!3153145) (not e!4690566))))

(assert (=> b!7951598 (= res!3153145 call!737108)))

(assert (=> b!7951598 (= e!4690570 e!4690566)))

(declare-fun d!2376225 () Bool)

(declare-fun res!3153144 () Bool)

(assert (=> d!2376225 (=> res!3153144 e!4690572)))

(assert (=> d!2376225 (= res!3153144 ((_ is ElementMatch!21473) (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))))))

(assert (=> d!2376225 (= (validRegex!11777 (ite c!1460398 (reg!21802 baseR!116) (ite c!1460397 (regOne!43459 baseR!116) (regOne!43458 baseR!116)))) e!4690572)))

(assert (= (and d!2376225 (not res!3153144)) b!7951599))

(assert (= (and b!7951599 c!1460498) b!7951596))

(assert (= (and b!7951599 (not c!1460498)) b!7951603))

(assert (= (and b!7951596 res!3153143) b!7951600))

(assert (= (and b!7951603 c!1460497) b!7951598))

(assert (= (and b!7951603 (not c!1460497)) b!7951602))

(assert (= (and b!7951598 res!3153145) b!7951601))

(assert (= (and b!7951602 (not res!3153147)) b!7951597))

(assert (= (and b!7951597 res!3153146) b!7951595))

(assert (= (or b!7951601 b!7951595) bm!737104))

(assert (= (or b!7951598 b!7951597) bm!737102))

(assert (= (or b!7951600 bm!737102) bm!737103))

(declare-fun m!8335550 () Bool)

(assert (=> b!7951596 m!8335550))

(declare-fun m!8335552 () Bool)

(assert (=> bm!737103 m!8335552))

(declare-fun m!8335554 () Bool)

(assert (=> bm!737104 m!8335554))

(assert (=> bm!737019 d!2376225))

(declare-fun b!7951604 () Bool)

(declare-fun e!4690576 () Bool)

(declare-fun call!737110 () Bool)

(assert (=> b!7951604 (= e!4690576 call!737110)))

(declare-fun b!7951605 () Bool)

(declare-fun e!4690574 () Bool)

(declare-fun e!4690575 () Bool)

(assert (=> b!7951605 (= e!4690574 e!4690575)))

(declare-fun res!3153148 () Bool)

(assert (=> b!7951605 (= res!3153148 (not (nullable!9574 (reg!21802 (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))))))))

(assert (=> b!7951605 (=> (not res!3153148) (not e!4690575))))

(declare-fun b!7951606 () Bool)

(declare-fun e!4690578 () Bool)

(assert (=> b!7951606 (= e!4690578 e!4690576)))

(declare-fun res!3153151 () Bool)

(assert (=> b!7951606 (=> (not res!3153151) (not e!4690576))))

(declare-fun call!737111 () Bool)

(assert (=> b!7951606 (= res!3153151 call!737111)))

(declare-fun bm!737105 () Bool)

(declare-fun call!737112 () Bool)

(assert (=> bm!737105 (= call!737111 call!737112)))

(declare-fun b!7951608 () Bool)

(declare-fun e!4690579 () Bool)

(assert (=> b!7951608 (= e!4690579 e!4690574)))

(declare-fun c!1460500 () Bool)

(assert (=> b!7951608 (= c!1460500 ((_ is Star!21473) (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))))))

(declare-fun b!7951609 () Bool)

(assert (=> b!7951609 (= e!4690575 call!737112)))

(declare-fun b!7951610 () Bool)

(declare-fun e!4690573 () Bool)

(assert (=> b!7951610 (= e!4690573 call!737110)))

(declare-fun bm!737106 () Bool)

(declare-fun c!1460499 () Bool)

(assert (=> bm!737106 (= call!737112 (validRegex!11777 (ite c!1460500 (reg!21802 (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))) (ite c!1460499 (regOne!43459 (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))) (regOne!43458 (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116)))))))))

(declare-fun bm!737107 () Bool)

(assert (=> bm!737107 (= call!737110 (validRegex!11777 (ite c!1460499 (regTwo!43459 (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))) (regTwo!43458 (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))))))))

(declare-fun b!7951611 () Bool)

(declare-fun res!3153152 () Bool)

(assert (=> b!7951611 (=> res!3153152 e!4690578)))

(assert (=> b!7951611 (= res!3153152 (not ((_ is Concat!30472) (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116)))))))

(declare-fun e!4690577 () Bool)

(assert (=> b!7951611 (= e!4690577 e!4690578)))

(declare-fun b!7951612 () Bool)

(assert (=> b!7951612 (= e!4690574 e!4690577)))

(assert (=> b!7951612 (= c!1460499 ((_ is Union!21473) (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))))))

(declare-fun b!7951607 () Bool)

(declare-fun res!3153150 () Bool)

(assert (=> b!7951607 (=> (not res!3153150) (not e!4690573))))

(assert (=> b!7951607 (= res!3153150 call!737111)))

(assert (=> b!7951607 (= e!4690577 e!4690573)))

(declare-fun d!2376227 () Bool)

(declare-fun res!3153149 () Bool)

(assert (=> d!2376227 (=> res!3153149 e!4690579)))

(assert (=> d!2376227 (= res!3153149 ((_ is ElementMatch!21473) (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))))))

(assert (=> d!2376227 (= (validRegex!11777 (ite c!1460397 (regTwo!43459 baseR!116) (regTwo!43458 baseR!116))) e!4690579)))

(assert (= (and d!2376227 (not res!3153149)) b!7951608))

(assert (= (and b!7951608 c!1460500) b!7951605))

(assert (= (and b!7951608 (not c!1460500)) b!7951612))

(assert (= (and b!7951605 res!3153148) b!7951609))

(assert (= (and b!7951612 c!1460499) b!7951607))

(assert (= (and b!7951612 (not c!1460499)) b!7951611))

(assert (= (and b!7951607 res!3153150) b!7951610))

(assert (= (and b!7951611 (not res!3153152)) b!7951606))

(assert (= (and b!7951606 res!3153151) b!7951604))

(assert (= (or b!7951610 b!7951604) bm!737107))

(assert (= (or b!7951607 b!7951606) bm!737105))

(assert (= (or b!7951609 bm!737105) bm!737106))

(declare-fun m!8335556 () Bool)

(assert (=> b!7951605 m!8335556))

(declare-fun m!8335558 () Bool)

(assert (=> bm!737106 m!8335558))

(declare-fun m!8335560 () Bool)

(assert (=> bm!737107 m!8335560))

(assert (=> bm!737020 d!2376227))

(assert (=> bm!737076 d!2376205))

(declare-fun b!7951613 () Bool)

(declare-fun e!4690581 () Bool)

(declare-fun e!4690582 () Bool)

(assert (=> b!7951613 (= e!4690581 e!4690582)))

(declare-fun res!3153156 () Bool)

(assert (=> b!7951613 (=> (not res!3153156) (not e!4690582))))

(assert (=> b!7951613 (= res!3153156 (not ((_ is Nil!74578) (tail!15761 input!7927))))))

(declare-fun b!7951615 () Bool)

(assert (=> b!7951615 (= e!4690582 (isPrefix!6573 (tail!15761 (tail!15761 input!7927)) (tail!15761 (tail!15761 input!7927))))))

(declare-fun d!2376229 () Bool)

(declare-fun e!4690580 () Bool)

(assert (=> d!2376229 e!4690580))

(declare-fun res!3153154 () Bool)

(assert (=> d!2376229 (=> res!3153154 e!4690580)))

(declare-fun lt!2700484 () Bool)

(assert (=> d!2376229 (= res!3153154 (not lt!2700484))))

(assert (=> d!2376229 (= lt!2700484 e!4690581)))

(declare-fun res!3153153 () Bool)

(assert (=> d!2376229 (=> res!3153153 e!4690581)))

(assert (=> d!2376229 (= res!3153153 ((_ is Nil!74578) (tail!15761 input!7927)))))

(assert (=> d!2376229 (= (isPrefix!6573 (tail!15761 input!7927) (tail!15761 input!7927)) lt!2700484)))

(declare-fun b!7951614 () Bool)

(declare-fun res!3153155 () Bool)

(assert (=> b!7951614 (=> (not res!3153155) (not e!4690582))))

(assert (=> b!7951614 (= res!3153155 (= (head!16225 (tail!15761 input!7927)) (head!16225 (tail!15761 input!7927))))))

(declare-fun b!7951616 () Bool)

(assert (=> b!7951616 (= e!4690580 (>= (size!43409 (tail!15761 input!7927)) (size!43409 (tail!15761 input!7927))))))

(assert (= (and d!2376229 (not res!3153153)) b!7951613))

(assert (= (and b!7951613 res!3153156) b!7951614))

(assert (= (and b!7951614 res!3153155) b!7951615))

(assert (= (and d!2376229 (not res!3153154)) b!7951616))

(assert (=> b!7951615 m!8335370))

(declare-fun m!8335562 () Bool)

(assert (=> b!7951615 m!8335562))

(assert (=> b!7951615 m!8335370))

(assert (=> b!7951615 m!8335562))

(assert (=> b!7951615 m!8335562))

(assert (=> b!7951615 m!8335562))

(declare-fun m!8335564 () Bool)

(assert (=> b!7951615 m!8335564))

(assert (=> b!7951614 m!8335370))

(declare-fun m!8335566 () Bool)

(assert (=> b!7951614 m!8335566))

(assert (=> b!7951614 m!8335370))

(assert (=> b!7951614 m!8335566))

(assert (=> b!7951616 m!8335370))

(declare-fun m!8335568 () Bool)

(assert (=> b!7951616 m!8335568))

(assert (=> b!7951616 m!8335370))

(assert (=> b!7951616 m!8335568))

(assert (=> b!7951433 d!2376229))

(declare-fun d!2376231 () Bool)

(assert (=> d!2376231 (= (tail!15761 input!7927) (t!390445 input!7927))))

(assert (=> b!7951433 d!2376231))

(assert (=> b!7951434 d!2376171))

(declare-fun d!2376233 () Bool)

(declare-fun lt!2700485 () Int)

(assert (=> d!2376233 (>= lt!2700485 0)))

(declare-fun e!4690583 () Int)

(assert (=> d!2376233 (= lt!2700485 e!4690583)))

(declare-fun c!1460501 () Bool)

(assert (=> d!2376233 (= c!1460501 ((_ is Nil!74578) lt!2700258))))

(assert (=> d!2376233 (= (size!43409 lt!2700258) lt!2700485)))

(declare-fun b!7951617 () Bool)

(assert (=> b!7951617 (= e!4690583 0)))

(declare-fun b!7951618 () Bool)

(assert (=> b!7951618 (= e!4690583 (+ 1 (size!43409 (t!390445 lt!2700258))))))

(assert (= (and d!2376233 c!1460501) b!7951617))

(assert (= (and d!2376233 (not c!1460501)) b!7951618))

(declare-fun m!8335570 () Bool)

(assert (=> b!7951618 m!8335570))

(assert (=> b!7951266 d!2376233))

(assert (=> b!7951266 d!2376199))

(declare-fun d!2376235 () Bool)

(declare-fun lt!2700486 () Int)

(assert (=> d!2376235 (>= lt!2700486 0)))

(declare-fun e!4690584 () Int)

(assert (=> d!2376235 (= lt!2700486 e!4690584)))

(declare-fun c!1460502 () Bool)

(assert (=> d!2376235 (= c!1460502 ((_ is Nil!74578) (Cons!74578 lt!2700242 Nil!74578)))))

(assert (=> d!2376235 (= (size!43409 (Cons!74578 lt!2700242 Nil!74578)) lt!2700486)))

(declare-fun b!7951619 () Bool)

(assert (=> b!7951619 (= e!4690584 0)))

(declare-fun b!7951620 () Bool)

(assert (=> b!7951620 (= e!4690584 (+ 1 (size!43409 (t!390445 (Cons!74578 lt!2700242 Nil!74578)))))))

(assert (= (and d!2376235 c!1460502) b!7951619))

(assert (= (and d!2376235 (not c!1460502)) b!7951620))

(declare-fun m!8335572 () Bool)

(assert (=> b!7951620 m!8335572))

(assert (=> b!7951266 d!2376235))

(declare-fun b!7951621 () Bool)

(declare-fun e!4690588 () Bool)

(declare-fun call!737113 () Bool)

(assert (=> b!7951621 (= e!4690588 call!737113)))

(declare-fun b!7951622 () Bool)

(declare-fun e!4690586 () Bool)

(declare-fun e!4690587 () Bool)

(assert (=> b!7951622 (= e!4690586 e!4690587)))

(declare-fun res!3153157 () Bool)

(assert (=> b!7951622 (= res!3153157 (not (nullable!9574 (reg!21802 lt!2700381))))))

(assert (=> b!7951622 (=> (not res!3153157) (not e!4690587))))

(declare-fun b!7951623 () Bool)

(declare-fun e!4690590 () Bool)

(assert (=> b!7951623 (= e!4690590 e!4690588)))

(declare-fun res!3153160 () Bool)

(assert (=> b!7951623 (=> (not res!3153160) (not e!4690588))))

(declare-fun call!737114 () Bool)

(assert (=> b!7951623 (= res!3153160 call!737114)))

(declare-fun bm!737108 () Bool)

(declare-fun call!737115 () Bool)

(assert (=> bm!737108 (= call!737114 call!737115)))

(declare-fun b!7951625 () Bool)

(declare-fun e!4690591 () Bool)

(assert (=> b!7951625 (= e!4690591 e!4690586)))

(declare-fun c!1460504 () Bool)

(assert (=> b!7951625 (= c!1460504 ((_ is Star!21473) lt!2700381))))

(declare-fun b!7951626 () Bool)

(assert (=> b!7951626 (= e!4690587 call!737115)))

(declare-fun b!7951627 () Bool)

(declare-fun e!4690585 () Bool)

(assert (=> b!7951627 (= e!4690585 call!737113)))

(declare-fun c!1460503 () Bool)

(declare-fun bm!737109 () Bool)

(assert (=> bm!737109 (= call!737115 (validRegex!11777 (ite c!1460504 (reg!21802 lt!2700381) (ite c!1460503 (regOne!43459 lt!2700381) (regOne!43458 lt!2700381)))))))

(declare-fun bm!737110 () Bool)

(assert (=> bm!737110 (= call!737113 (validRegex!11777 (ite c!1460503 (regTwo!43459 lt!2700381) (regTwo!43458 lt!2700381))))))

(declare-fun b!7951628 () Bool)

(declare-fun res!3153161 () Bool)

(assert (=> b!7951628 (=> res!3153161 e!4690590)))

(assert (=> b!7951628 (= res!3153161 (not ((_ is Concat!30472) lt!2700381)))))

(declare-fun e!4690589 () Bool)

(assert (=> b!7951628 (= e!4690589 e!4690590)))

(declare-fun b!7951629 () Bool)

(assert (=> b!7951629 (= e!4690586 e!4690589)))

(assert (=> b!7951629 (= c!1460503 ((_ is Union!21473) lt!2700381))))

(declare-fun b!7951624 () Bool)

(declare-fun res!3153159 () Bool)

(assert (=> b!7951624 (=> (not res!3153159) (not e!4690585))))

(assert (=> b!7951624 (= res!3153159 call!737114)))

(assert (=> b!7951624 (= e!4690589 e!4690585)))

(declare-fun d!2376237 () Bool)

(declare-fun res!3153158 () Bool)

(assert (=> d!2376237 (=> res!3153158 e!4690591)))

(assert (=> d!2376237 (= res!3153158 ((_ is ElementMatch!21473) lt!2700381))))

(assert (=> d!2376237 (= (validRegex!11777 lt!2700381) e!4690591)))

(assert (= (and d!2376237 (not res!3153158)) b!7951625))

(assert (= (and b!7951625 c!1460504) b!7951622))

(assert (= (and b!7951625 (not c!1460504)) b!7951629))

(assert (= (and b!7951622 res!3153157) b!7951626))

(assert (= (and b!7951629 c!1460503) b!7951624))

(assert (= (and b!7951629 (not c!1460503)) b!7951628))

(assert (= (and b!7951624 res!3153159) b!7951627))

(assert (= (and b!7951628 (not res!3153161)) b!7951623))

(assert (= (and b!7951623 res!3153160) b!7951621))

(assert (= (or b!7951627 b!7951621) bm!737110))

(assert (= (or b!7951624 b!7951623) bm!737108))

(assert (= (or b!7951626 bm!737108) bm!737109))

(declare-fun m!8335574 () Bool)

(assert (=> b!7951622 m!8335574))

(declare-fun m!8335576 () Bool)

(assert (=> bm!737109 m!8335576))

(declare-fun m!8335578 () Bool)

(assert (=> bm!737110 m!8335578))

(assert (=> d!2376203 d!2376237))

(assert (=> d!2376203 d!2376149))

(declare-fun bm!737111 () Bool)

(declare-fun call!737116 () Regex!21473)

(declare-fun call!737118 () Regex!21473)

(assert (=> bm!737111 (= call!737116 call!737118)))

(declare-fun b!7951630 () Bool)

(declare-fun c!1460508 () Bool)

(assert (=> b!7951630 (= c!1460508 (nullable!9574 (regOne!43458 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)))))))

(declare-fun e!4690595 () Regex!21473)

(declare-fun e!4690592 () Regex!21473)

(assert (=> b!7951630 (= e!4690595 e!4690592)))

(declare-fun call!737119 () Regex!21473)

(declare-fun c!1460509 () Bool)

(declare-fun c!1460506 () Bool)

(declare-fun bm!737112 () Bool)

(assert (=> bm!737112 (= call!737119 (derivativeStep!6501 (ite c!1460506 (regTwo!43459 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602))) (ite c!1460509 (reg!21802 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602))) (ite c!1460508 (regTwo!43458 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602))) (regOne!43458 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)))))) lt!2700242))))

(declare-fun b!7951631 () Bool)

(declare-fun e!4690593 () Regex!21473)

(assert (=> b!7951631 (= e!4690593 (ite (= lt!2700242 (c!1460392 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)))) EmptyExpr!21473 EmptyLang!21473))))

(declare-fun b!7951632 () Bool)

(assert (=> b!7951632 (= c!1460506 ((_ is Union!21473) (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602))))))

(declare-fun e!4690594 () Regex!21473)

(assert (=> b!7951632 (= e!4690593 e!4690594)))

(declare-fun b!7951633 () Bool)

(declare-fun call!737117 () Regex!21473)

(assert (=> b!7951633 (= e!4690594 (Union!21473 call!737117 call!737119))))

(declare-fun b!7951634 () Bool)

(assert (=> b!7951634 (= e!4690592 (Union!21473 (Concat!30472 call!737116 (regTwo!43458 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)))) EmptyLang!21473))))

(declare-fun b!7951635 () Bool)

(assert (=> b!7951635 (= e!4690592 (Union!21473 (Concat!30472 call!737117 (regTwo!43458 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)))) call!737116))))

(declare-fun b!7951636 () Bool)

(assert (=> b!7951636 (= e!4690595 (Concat!30472 call!737118 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602))))))

(declare-fun d!2376239 () Bool)

(declare-fun lt!2700487 () Regex!21473)

(assert (=> d!2376239 (validRegex!11777 lt!2700487)))

(declare-fun e!4690596 () Regex!21473)

(assert (=> d!2376239 (= lt!2700487 e!4690596)))

(declare-fun c!1460505 () Bool)

(assert (=> d!2376239 (= c!1460505 (or ((_ is EmptyExpr!21473) (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602))) ((_ is EmptyLang!21473) (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)))))))

(assert (=> d!2376239 (validRegex!11777 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)))))

(assert (=> d!2376239 (= (derivativeStep!6501 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)) lt!2700242) lt!2700487)))

(declare-fun b!7951637 () Bool)

(assert (=> b!7951637 (= e!4690594 e!4690595)))

(assert (=> b!7951637 (= c!1460509 ((_ is Star!21473) (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602))))))

(declare-fun bm!737113 () Bool)

(assert (=> bm!737113 (= call!737117 (derivativeStep!6501 (ite c!1460506 (regOne!43459 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602))) (regOne!43458 (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602)))) lt!2700242))))

(declare-fun bm!737114 () Bool)

(assert (=> bm!737114 (= call!737118 call!737119)))

(declare-fun b!7951638 () Bool)

(assert (=> b!7951638 (= e!4690596 e!4690593)))

(declare-fun c!1460507 () Bool)

(assert (=> b!7951638 (= c!1460507 ((_ is ElementMatch!21473) (ite c!1460410 (regOne!43459 r!24602) (regOne!43458 r!24602))))))

(declare-fun b!7951639 () Bool)

(assert (=> b!7951639 (= e!4690596 EmptyLang!21473)))

(assert (= (and d!2376239 c!1460505) b!7951639))

(assert (= (and d!2376239 (not c!1460505)) b!7951638))

(assert (= (and b!7951638 c!1460507) b!7951631))

(assert (= (and b!7951638 (not c!1460507)) b!7951632))

(assert (= (and b!7951632 c!1460506) b!7951633))

(assert (= (and b!7951632 (not c!1460506)) b!7951637))

(assert (= (and b!7951637 c!1460509) b!7951636))

(assert (= (and b!7951637 (not c!1460509)) b!7951630))

(assert (= (and b!7951630 c!1460508) b!7951635))

(assert (= (and b!7951630 (not c!1460508)) b!7951634))

(assert (= (or b!7951635 b!7951634) bm!737111))

(assert (= (or b!7951636 bm!737111) bm!737114))

(assert (= (or b!7951633 bm!737114) bm!737112))

(assert (= (or b!7951633 b!7951635) bm!737113))

(declare-fun m!8335580 () Bool)

(assert (=> b!7951630 m!8335580))

(declare-fun m!8335582 () Bool)

(assert (=> bm!737112 m!8335582))

(declare-fun m!8335584 () Bool)

(assert (=> d!2376239 m!8335584))

(declare-fun m!8335586 () Bool)

(assert (=> d!2376239 m!8335586))

(declare-fun m!8335588 () Bool)

(assert (=> bm!737113 m!8335588))

(assert (=> bm!737031 d!2376239))

(declare-fun d!2376241 () Bool)

(declare-fun lt!2700488 () List!74702)

(assert (=> d!2376241 (= (++!18343 (t!390445 testedP!447) lt!2700488) (tail!15761 input!7927))))

(declare-fun e!4690597 () List!74702)

(assert (=> d!2376241 (= lt!2700488 e!4690597)))

(declare-fun c!1460510 () Bool)

(assert (=> d!2376241 (= c!1460510 ((_ is Cons!74578) (t!390445 testedP!447)))))

(assert (=> d!2376241 (>= (size!43409 (tail!15761 input!7927)) (size!43409 (t!390445 testedP!447)))))

(assert (=> d!2376241 (= (getSuffix!3776 (tail!15761 input!7927) (t!390445 testedP!447)) lt!2700488)))

(declare-fun b!7951640 () Bool)

(assert (=> b!7951640 (= e!4690597 (getSuffix!3776 (tail!15761 (tail!15761 input!7927)) (t!390445 (t!390445 testedP!447))))))

(declare-fun b!7951641 () Bool)

(assert (=> b!7951641 (= e!4690597 (tail!15761 input!7927))))

(assert (= (and d!2376241 c!1460510) b!7951640))

(assert (= (and d!2376241 (not c!1460510)) b!7951641))

(declare-fun m!8335590 () Bool)

(assert (=> d!2376241 m!8335590))

(assert (=> d!2376241 m!8335370))

(assert (=> d!2376241 m!8335568))

(assert (=> d!2376241 m!8335494))

(assert (=> b!7951640 m!8335370))

(assert (=> b!7951640 m!8335562))

(assert (=> b!7951640 m!8335562))

(declare-fun m!8335592 () Bool)

(assert (=> b!7951640 m!8335592))

(assert (=> b!7951421 d!2376241))

(assert (=> b!7951421 d!2376231))

(assert (=> bm!737074 d!2376159))

(declare-fun b!7951642 () Bool)

(declare-fun e!4690599 () Bool)

(declare-fun e!4690600 () Bool)

(assert (=> b!7951642 (= e!4690599 e!4690600)))

(declare-fun res!3153165 () Bool)

(assert (=> b!7951642 (=> (not res!3153165) (not e!4690600))))

(assert (=> b!7951642 (= res!3153165 (not ((_ is Nil!74578) (tail!15761 input!7927))))))

(declare-fun b!7951644 () Bool)

(assert (=> b!7951644 (= e!4690600 (isPrefix!6573 (tail!15761 (tail!15761 lt!2700248)) (tail!15761 (tail!15761 input!7927))))))

(declare-fun d!2376243 () Bool)

(declare-fun e!4690598 () Bool)

(assert (=> d!2376243 e!4690598))

(declare-fun res!3153163 () Bool)

(assert (=> d!2376243 (=> res!3153163 e!4690598)))

(declare-fun lt!2700489 () Bool)

(assert (=> d!2376243 (= res!3153163 (not lt!2700489))))

(assert (=> d!2376243 (= lt!2700489 e!4690599)))

(declare-fun res!3153162 () Bool)

(assert (=> d!2376243 (=> res!3153162 e!4690599)))

(assert (=> d!2376243 (= res!3153162 ((_ is Nil!74578) (tail!15761 lt!2700248)))))

(assert (=> d!2376243 (= (isPrefix!6573 (tail!15761 lt!2700248) (tail!15761 input!7927)) lt!2700489)))

(declare-fun b!7951643 () Bool)

(declare-fun res!3153164 () Bool)

(assert (=> b!7951643 (=> (not res!3153164) (not e!4690600))))

(assert (=> b!7951643 (= res!3153164 (= (head!16225 (tail!15761 lt!2700248)) (head!16225 (tail!15761 input!7927))))))

(declare-fun b!7951645 () Bool)

(assert (=> b!7951645 (= e!4690598 (>= (size!43409 (tail!15761 input!7927)) (size!43409 (tail!15761 lt!2700248))))))

(assert (= (and d!2376243 (not res!3153162)) b!7951642))

(assert (= (and b!7951642 res!3153165) b!7951643))

(assert (= (and b!7951643 res!3153164) b!7951644))

(assert (= (and d!2376243 (not res!3153163)) b!7951645))

(assert (=> b!7951644 m!8335368))

(declare-fun m!8335594 () Bool)

(assert (=> b!7951644 m!8335594))

(assert (=> b!7951644 m!8335370))

(assert (=> b!7951644 m!8335562))

(assert (=> b!7951644 m!8335594))

(assert (=> b!7951644 m!8335562))

(declare-fun m!8335596 () Bool)

(assert (=> b!7951644 m!8335596))

(assert (=> b!7951643 m!8335368))

(declare-fun m!8335598 () Bool)

(assert (=> b!7951643 m!8335598))

(assert (=> b!7951643 m!8335370))

(assert (=> b!7951643 m!8335566))

(assert (=> b!7951645 m!8335370))

(assert (=> b!7951645 m!8335568))

(assert (=> b!7951645 m!8335368))

(declare-fun m!8335600 () Bool)

(assert (=> b!7951645 m!8335600))

(assert (=> b!7951278 d!2376243))

(declare-fun d!2376245 () Bool)

(assert (=> d!2376245 (= (tail!15761 lt!2700248) (t!390445 lt!2700248))))

(assert (=> b!7951278 d!2376245))

(assert (=> b!7951278 d!2376231))

(declare-fun b!7951647 () Bool)

(declare-fun e!4690601 () List!74702)

(assert (=> b!7951647 (= e!4690601 (Cons!74578 (h!81026 testedP!447) (++!18343 (t!390445 testedP!447) lt!2700249)))))

(declare-fun e!4690602 () Bool)

(declare-fun b!7951649 () Bool)

(declare-fun lt!2700490 () List!74702)

(assert (=> b!7951649 (= e!4690602 (or (not (= lt!2700249 Nil!74578)) (= lt!2700490 testedP!447)))))

(declare-fun b!7951646 () Bool)

(assert (=> b!7951646 (= e!4690601 lt!2700249)))

(declare-fun d!2376247 () Bool)

(assert (=> d!2376247 e!4690602))

(declare-fun res!3153167 () Bool)

(assert (=> d!2376247 (=> (not res!3153167) (not e!4690602))))

(assert (=> d!2376247 (= res!3153167 (= (content!15829 lt!2700490) ((_ map or) (content!15829 testedP!447) (content!15829 lt!2700249))))))

(assert (=> d!2376247 (= lt!2700490 e!4690601)))

(declare-fun c!1460511 () Bool)

(assert (=> d!2376247 (= c!1460511 ((_ is Nil!74578) testedP!447))))

(assert (=> d!2376247 (= (++!18343 testedP!447 lt!2700249) lt!2700490)))

(declare-fun b!7951648 () Bool)

(declare-fun res!3153166 () Bool)

(assert (=> b!7951648 (=> (not res!3153166) (not e!4690602))))

(assert (=> b!7951648 (= res!3153166 (= (size!43409 lt!2700490) (+ (size!43409 testedP!447) (size!43409 lt!2700249))))))

(assert (= (and d!2376247 c!1460511) b!7951646))

(assert (= (and d!2376247 (not c!1460511)) b!7951647))

(assert (= (and d!2376247 res!3153167) b!7951648))

(assert (= (and b!7951648 res!3153166) b!7951649))

(declare-fun m!8335602 () Bool)

(assert (=> b!7951647 m!8335602))

(declare-fun m!8335604 () Bool)

(assert (=> d!2376247 m!8335604))

(assert (=> d!2376247 m!8335358))

(declare-fun m!8335606 () Bool)

(assert (=> d!2376247 m!8335606))

(declare-fun m!8335608 () Bool)

(assert (=> b!7951648 m!8335608))

(assert (=> b!7951648 m!8335326))

(declare-fun m!8335610 () Bool)

(assert (=> b!7951648 m!8335610))

(assert (=> d!2376173 d!2376247))

(assert (=> d!2376173 d!2376197))

(declare-fun d!2376249 () Bool)

(assert (=> d!2376249 (isPrefix!6573 testedP!447 (++!18343 testedP!447 lt!2700249))))

(declare-fun lt!2700493 () Unit!169856)

(declare-fun choose!59924 (List!74702 List!74702) Unit!169856)

(assert (=> d!2376249 (= lt!2700493 (choose!59924 testedP!447 lt!2700249))))

(assert (=> d!2376249 (= (lemmaConcatTwoListThenFirstIsPrefix!3839 testedP!447 lt!2700249) lt!2700493)))

(declare-fun bs!1969556 () Bool)

(assert (= bs!1969556 d!2376249))

(assert (=> bs!1969556 m!8335470))

(assert (=> bs!1969556 m!8335470))

(assert (=> bs!1969556 m!8335472))

(declare-fun m!8335612 () Bool)

(assert (=> bs!1969556 m!8335612))

(assert (=> d!2376173 d!2376249))

(declare-fun b!7951650 () Bool)

(declare-fun e!4690606 () Bool)

(declare-fun call!737120 () Bool)

(assert (=> b!7951650 (= e!4690606 call!737120)))

(declare-fun b!7951651 () Bool)

(declare-fun e!4690604 () Bool)

(declare-fun e!4690605 () Bool)

(assert (=> b!7951651 (= e!4690604 e!4690605)))

(declare-fun res!3153168 () Bool)

(assert (=> b!7951651 (= res!3153168 (not (nullable!9574 (reg!21802 r!24602))))))

(assert (=> b!7951651 (=> (not res!3153168) (not e!4690605))))

(declare-fun b!7951652 () Bool)

(declare-fun e!4690608 () Bool)

(assert (=> b!7951652 (= e!4690608 e!4690606)))

(declare-fun res!3153171 () Bool)

(assert (=> b!7951652 (=> (not res!3153171) (not e!4690606))))

(declare-fun call!737121 () Bool)

(assert (=> b!7951652 (= res!3153171 call!737121)))

(declare-fun bm!737115 () Bool)

(declare-fun call!737122 () Bool)

(assert (=> bm!737115 (= call!737121 call!737122)))

(declare-fun b!7951654 () Bool)

(declare-fun e!4690609 () Bool)

(assert (=> b!7951654 (= e!4690609 e!4690604)))

(declare-fun c!1460513 () Bool)

(assert (=> b!7951654 (= c!1460513 ((_ is Star!21473) r!24602))))

(declare-fun b!7951655 () Bool)

(assert (=> b!7951655 (= e!4690605 call!737122)))

(declare-fun b!7951656 () Bool)

(declare-fun e!4690603 () Bool)

(assert (=> b!7951656 (= e!4690603 call!737120)))

(declare-fun bm!737116 () Bool)

(declare-fun c!1460512 () Bool)

(assert (=> bm!737116 (= call!737122 (validRegex!11777 (ite c!1460513 (reg!21802 r!24602) (ite c!1460512 (regOne!43459 r!24602) (regOne!43458 r!24602)))))))

(declare-fun bm!737117 () Bool)

(assert (=> bm!737117 (= call!737120 (validRegex!11777 (ite c!1460512 (regTwo!43459 r!24602) (regTwo!43458 r!24602))))))

(declare-fun b!7951657 () Bool)

(declare-fun res!3153172 () Bool)

(assert (=> b!7951657 (=> res!3153172 e!4690608)))

(assert (=> b!7951657 (= res!3153172 (not ((_ is Concat!30472) r!24602)))))

(declare-fun e!4690607 () Bool)

(assert (=> b!7951657 (= e!4690607 e!4690608)))

(declare-fun b!7951658 () Bool)

(assert (=> b!7951658 (= e!4690604 e!4690607)))

(assert (=> b!7951658 (= c!1460512 ((_ is Union!21473) r!24602))))

(declare-fun b!7951653 () Bool)

(declare-fun res!3153170 () Bool)

(assert (=> b!7951653 (=> (not res!3153170) (not e!4690603))))

(assert (=> b!7951653 (= res!3153170 call!737121)))

(assert (=> b!7951653 (= e!4690607 e!4690603)))

(declare-fun d!2376251 () Bool)

(declare-fun res!3153169 () Bool)

(assert (=> d!2376251 (=> res!3153169 e!4690609)))

(assert (=> d!2376251 (= res!3153169 ((_ is ElementMatch!21473) r!24602))))

(assert (=> d!2376251 (= (validRegex!11777 r!24602) e!4690609)))

(assert (= (and d!2376251 (not res!3153169)) b!7951654))

(assert (= (and b!7951654 c!1460513) b!7951651))

(assert (= (and b!7951654 (not c!1460513)) b!7951658))

(assert (= (and b!7951651 res!3153168) b!7951655))

(assert (= (and b!7951658 c!1460512) b!7951653))

(assert (= (and b!7951658 (not c!1460512)) b!7951657))

(assert (= (and b!7951653 res!3153170) b!7951656))

(assert (= (and b!7951657 (not res!3153172)) b!7951652))

(assert (= (and b!7951652 res!3153171) b!7951650))

(assert (= (or b!7951656 b!7951650) bm!737117))

(assert (= (or b!7951653 b!7951652) bm!737115))

(assert (= (or b!7951655 bm!737115) bm!737116))

(declare-fun m!8335614 () Bool)

(assert (=> b!7951651 m!8335614))

(declare-fun m!8335616 () Bool)

(assert (=> bm!737116 m!8335616))

(declare-fun m!8335618 () Bool)

(assert (=> bm!737117 m!8335618))

(assert (=> d!2376173 d!2376251))

(declare-fun d!2376253 () Bool)

(assert (=> d!2376253 (= lt!2700249 lt!2700373)))

(declare-fun lt!2700496 () Unit!169856)

(declare-fun choose!59925 (List!74702 List!74702 List!74702 List!74702 List!74702) Unit!169856)

(assert (=> d!2376253 (= lt!2700496 (choose!59925 testedP!447 lt!2700249 testedP!447 lt!2700373 input!7927))))

(assert (=> d!2376253 (isPrefix!6573 testedP!447 input!7927)))

(assert (=> d!2376253 (= (lemmaSamePrefixThenSameSuffix!2977 testedP!447 lt!2700249 testedP!447 lt!2700373 input!7927) lt!2700496)))

(declare-fun bs!1969557 () Bool)

(assert (= bs!1969557 d!2376253))

(declare-fun m!8335620 () Bool)

(assert (=> bs!1969557 m!8335620))

(assert (=> bs!1969557 m!8335296))

(assert (=> d!2376173 d!2376253))

(declare-fun d!2376255 () Bool)

(declare-fun lostCauseFct!565 (Regex!21473) Bool)

(assert (=> d!2376255 (= (lostCause!1961 r!24602) (lostCauseFct!565 r!24602))))

(declare-fun bs!1969558 () Bool)

(assert (= bs!1969558 d!2376255))

(declare-fun m!8335622 () Bool)

(assert (=> bs!1969558 m!8335622))

(assert (=> d!2376173 d!2376255))

(declare-fun b!7951659 () Bool)

(declare-fun e!4690611 () Bool)

(declare-fun e!4690612 () Bool)

(assert (=> b!7951659 (= e!4690611 e!4690612)))

(declare-fun res!3153176 () Bool)

(assert (=> b!7951659 (=> (not res!3153176) (not e!4690612))))

(assert (=> b!7951659 (= res!3153176 (not ((_ is Nil!74578) (++!18343 testedP!447 lt!2700249))))))

(declare-fun b!7951661 () Bool)

(assert (=> b!7951661 (= e!4690612 (isPrefix!6573 (tail!15761 testedP!447) (tail!15761 (++!18343 testedP!447 lt!2700249))))))

(declare-fun d!2376257 () Bool)

(declare-fun e!4690610 () Bool)

(assert (=> d!2376257 e!4690610))

(declare-fun res!3153174 () Bool)

(assert (=> d!2376257 (=> res!3153174 e!4690610)))

(declare-fun lt!2700497 () Bool)

(assert (=> d!2376257 (= res!3153174 (not lt!2700497))))

(assert (=> d!2376257 (= lt!2700497 e!4690611)))

(declare-fun res!3153173 () Bool)

(assert (=> d!2376257 (=> res!3153173 e!4690611)))

(assert (=> d!2376257 (= res!3153173 ((_ is Nil!74578) testedP!447))))

(assert (=> d!2376257 (= (isPrefix!6573 testedP!447 (++!18343 testedP!447 lt!2700249)) lt!2700497)))

(declare-fun b!7951660 () Bool)

(declare-fun res!3153175 () Bool)

(assert (=> b!7951660 (=> (not res!3153175) (not e!4690612))))

(assert (=> b!7951660 (= res!3153175 (= (head!16225 testedP!447) (head!16225 (++!18343 testedP!447 lt!2700249))))))

(declare-fun b!7951662 () Bool)

(assert (=> b!7951662 (= e!4690610 (>= (size!43409 (++!18343 testedP!447 lt!2700249)) (size!43409 testedP!447)))))

(assert (= (and d!2376257 (not res!3153173)) b!7951659))

(assert (= (and b!7951659 res!3153176) b!7951660))

(assert (= (and b!7951660 res!3153175) b!7951661))

(assert (= (and d!2376257 (not res!3153174)) b!7951662))

(assert (=> b!7951661 m!8335388))

(assert (=> b!7951661 m!8335470))

(declare-fun m!8335624 () Bool)

(assert (=> b!7951661 m!8335624))

(assert (=> b!7951661 m!8335388))

(assert (=> b!7951661 m!8335624))

(declare-fun m!8335626 () Bool)

(assert (=> b!7951661 m!8335626))

(assert (=> b!7951660 m!8335392))

(assert (=> b!7951660 m!8335470))

(declare-fun m!8335628 () Bool)

(assert (=> b!7951660 m!8335628))

(assert (=> b!7951662 m!8335470))

(declare-fun m!8335630 () Bool)

(assert (=> b!7951662 m!8335630))

(assert (=> b!7951662 m!8335326))

(assert (=> d!2376173 d!2376257))

(declare-fun b!7951664 () Bool)

(declare-fun e!4690613 () List!74702)

(assert (=> b!7951664 (= e!4690613 (Cons!74578 (h!81026 (_1!38607 lt!2700361)) (++!18343 (t!390445 (_1!38607 lt!2700361)) (_2!38607 lt!2700361))))))

(declare-fun b!7951666 () Bool)

(declare-fun e!4690614 () Bool)

(declare-fun lt!2700498 () List!74702)

(assert (=> b!7951666 (= e!4690614 (or (not (= (_2!38607 lt!2700361) Nil!74578)) (= lt!2700498 (_1!38607 lt!2700361))))))

(declare-fun b!7951663 () Bool)

(assert (=> b!7951663 (= e!4690613 (_2!38607 lt!2700361))))

(declare-fun d!2376259 () Bool)

(assert (=> d!2376259 e!4690614))

(declare-fun res!3153178 () Bool)

(assert (=> d!2376259 (=> (not res!3153178) (not e!4690614))))

(assert (=> d!2376259 (= res!3153178 (= (content!15829 lt!2700498) ((_ map or) (content!15829 (_1!38607 lt!2700361)) (content!15829 (_2!38607 lt!2700361)))))))

(assert (=> d!2376259 (= lt!2700498 e!4690613)))

(declare-fun c!1460514 () Bool)

(assert (=> d!2376259 (= c!1460514 ((_ is Nil!74578) (_1!38607 lt!2700361)))))

(assert (=> d!2376259 (= (++!18343 (_1!38607 lt!2700361) (_2!38607 lt!2700361)) lt!2700498)))

(declare-fun b!7951665 () Bool)

(declare-fun res!3153177 () Bool)

(assert (=> b!7951665 (=> (not res!3153177) (not e!4690614))))

(assert (=> b!7951665 (= res!3153177 (= (size!43409 lt!2700498) (+ (size!43409 (_1!38607 lt!2700361)) (size!43409 (_2!38607 lt!2700361)))))))

(assert (= (and d!2376259 c!1460514) b!7951663))

(assert (= (and d!2376259 (not c!1460514)) b!7951664))

(assert (= (and d!2376259 res!3153178) b!7951665))

(assert (= (and b!7951665 res!3153177) b!7951666))

(declare-fun m!8335632 () Bool)

(assert (=> b!7951664 m!8335632))

(declare-fun m!8335634 () Bool)

(assert (=> d!2376259 m!8335634))

(declare-fun m!8335636 () Bool)

(assert (=> d!2376259 m!8335636))

(declare-fun m!8335638 () Bool)

(assert (=> d!2376259 m!8335638))

(declare-fun m!8335640 () Bool)

(assert (=> b!7951665 m!8335640))

(assert (=> b!7951665 m!8335484))

(declare-fun m!8335642 () Bool)

(assert (=> b!7951665 m!8335642))

(assert (=> d!2376173 d!2376259))

(assert (=> b!7951409 d!2376171))

(declare-fun d!2376261 () Bool)

(assert (=> d!2376261 (= (tail!15761 lt!2700249) (t!390445 lt!2700249))))

(assert (=> b!7951409 d!2376261))

(assert (=> b!7951409 d!2376155))

(declare-fun d!2376263 () Bool)

(assert (=> d!2376263 (= (head!16225 (getSuffix!3776 input!7927 testedP!447)) (h!81026 (getSuffix!3776 input!7927 testedP!447)))))

(assert (=> b!7951409 d!2376263))

(declare-fun d!2376265 () Bool)

(assert (=> d!2376265 (= (++!18343 (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578)) lt!2700370) input!7927)))

(declare-fun lt!2700501 () Unit!169856)

(declare-fun choose!59926 (List!74702 C!43284 List!74702 List!74702) Unit!169856)

(assert (=> d!2376265 (= lt!2700501 (choose!59926 testedP!447 lt!2700350 lt!2700370 input!7927))))

(assert (=> d!2376265 (= (++!18343 testedP!447 (Cons!74578 lt!2700350 lt!2700370)) input!7927)))

(assert (=> d!2376265 (= (lemmaMoveElementToOtherListKeepsConcatEq!3517 testedP!447 lt!2700350 lt!2700370 input!7927) lt!2700501)))

(declare-fun bs!1969559 () Bool)

(assert (= bs!1969559 d!2376265))

(assert (=> bs!1969559 m!8335458))

(assert (=> bs!1969559 m!8335458))

(assert (=> bs!1969559 m!8335460))

(declare-fun m!8335644 () Bool)

(assert (=> bs!1969559 m!8335644))

(declare-fun m!8335646 () Bool)

(assert (=> bs!1969559 m!8335646))

(assert (=> b!7951409 d!2376265))

(declare-fun b!7951667 () Bool)

(declare-fun e!4690616 () Bool)

(declare-fun e!4690617 () Bool)

(assert (=> b!7951667 (= e!4690616 e!4690617)))

(declare-fun res!3153182 () Bool)

(assert (=> b!7951667 (=> (not res!3153182) (not e!4690617))))

(assert (=> b!7951667 (= res!3153182 (not ((_ is Nil!74578) input!7927)))))

(declare-fun b!7951669 () Bool)

(assert (=> b!7951669 (= e!4690617 (isPrefix!6573 (tail!15761 (++!18343 testedP!447 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578))) (tail!15761 input!7927)))))

(declare-fun d!2376267 () Bool)

(declare-fun e!4690615 () Bool)

(assert (=> d!2376267 e!4690615))

(declare-fun res!3153180 () Bool)

(assert (=> d!2376267 (=> res!3153180 e!4690615)))

(declare-fun lt!2700502 () Bool)

(assert (=> d!2376267 (= res!3153180 (not lt!2700502))))

(assert (=> d!2376267 (= lt!2700502 e!4690616)))

(declare-fun res!3153179 () Bool)

(assert (=> d!2376267 (=> res!3153179 e!4690616)))

(assert (=> d!2376267 (= res!3153179 ((_ is Nil!74578) (++!18343 testedP!447 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578))))))

(assert (=> d!2376267 (= (isPrefix!6573 (++!18343 testedP!447 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578)) input!7927) lt!2700502)))

(declare-fun b!7951668 () Bool)

(declare-fun res!3153181 () Bool)

(assert (=> b!7951668 (=> (not res!3153181) (not e!4690617))))

(assert (=> b!7951668 (= res!3153181 (= (head!16225 (++!18343 testedP!447 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578))) (head!16225 input!7927)))))

(declare-fun b!7951670 () Bool)

(assert (=> b!7951670 (= e!4690615 (>= (size!43409 input!7927) (size!43409 (++!18343 testedP!447 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578)))))))

(assert (= (and d!2376267 (not res!3153179)) b!7951667))

(assert (= (and b!7951667 res!3153182) b!7951668))

(assert (= (and b!7951668 res!3153181) b!7951669))

(assert (= (and d!2376267 (not res!3153180)) b!7951670))

(assert (=> b!7951669 m!8335350))

(declare-fun m!8335648 () Bool)

(assert (=> b!7951669 m!8335648))

(assert (=> b!7951669 m!8335370))

(assert (=> b!7951669 m!8335648))

(assert (=> b!7951669 m!8335370))

(declare-fun m!8335650 () Bool)

(assert (=> b!7951669 m!8335650))

(assert (=> b!7951668 m!8335350))

(declare-fun m!8335652 () Bool)

(assert (=> b!7951668 m!8335652))

(assert (=> b!7951668 m!8335376))

(assert (=> b!7951670 m!8335318))

(assert (=> b!7951670 m!8335350))

(declare-fun m!8335654 () Bool)

(assert (=> b!7951670 m!8335654))

(assert (=> b!7951409 d!2376267))

(declare-fun b!7951672 () Bool)

(declare-fun e!4690618 () List!74702)

(assert (=> b!7951672 (= e!4690618 (Cons!74578 (h!81026 testedP!447) (++!18343 (t!390445 testedP!447) (Cons!74578 (head!16225 lt!2700249) Nil!74578))))))

(declare-fun b!7951674 () Bool)

(declare-fun lt!2700503 () List!74702)

(declare-fun e!4690619 () Bool)

(assert (=> b!7951674 (= e!4690619 (or (not (= (Cons!74578 (head!16225 lt!2700249) Nil!74578) Nil!74578)) (= lt!2700503 testedP!447)))))

(declare-fun b!7951671 () Bool)

(assert (=> b!7951671 (= e!4690618 (Cons!74578 (head!16225 lt!2700249) Nil!74578))))

(declare-fun d!2376269 () Bool)

(assert (=> d!2376269 e!4690619))

(declare-fun res!3153184 () Bool)

(assert (=> d!2376269 (=> (not res!3153184) (not e!4690619))))

(assert (=> d!2376269 (= res!3153184 (= (content!15829 lt!2700503) ((_ map or) (content!15829 testedP!447) (content!15829 (Cons!74578 (head!16225 lt!2700249) Nil!74578)))))))

(assert (=> d!2376269 (= lt!2700503 e!4690618)))

(declare-fun c!1460515 () Bool)

(assert (=> d!2376269 (= c!1460515 ((_ is Nil!74578) testedP!447))))

(assert (=> d!2376269 (= (++!18343 testedP!447 (Cons!74578 (head!16225 lt!2700249) Nil!74578)) lt!2700503)))

(declare-fun b!7951673 () Bool)

(declare-fun res!3153183 () Bool)

(assert (=> b!7951673 (=> (not res!3153183) (not e!4690619))))

(assert (=> b!7951673 (= res!3153183 (= (size!43409 lt!2700503) (+ (size!43409 testedP!447) (size!43409 (Cons!74578 (head!16225 lt!2700249) Nil!74578)))))))

(assert (= (and d!2376269 c!1460515) b!7951671))

(assert (= (and d!2376269 (not c!1460515)) b!7951672))

(assert (= (and d!2376269 res!3153184) b!7951673))

(assert (= (and b!7951673 res!3153183) b!7951674))

(declare-fun m!8335656 () Bool)

(assert (=> b!7951672 m!8335656))

(declare-fun m!8335658 () Bool)

(assert (=> d!2376269 m!8335658))

(assert (=> d!2376269 m!8335358))

(declare-fun m!8335660 () Bool)

(assert (=> d!2376269 m!8335660))

(declare-fun m!8335662 () Bool)

(assert (=> b!7951673 m!8335662))

(assert (=> b!7951673 m!8335326))

(declare-fun m!8335664 () Bool)

(assert (=> b!7951673 m!8335664))

(assert (=> b!7951409 d!2376269))

(declare-fun b!7951676 () Bool)

(declare-fun e!4690620 () List!74702)

(assert (=> b!7951676 (= e!4690620 (Cons!74578 (h!81026 testedP!447) (++!18343 (t!390445 testedP!447) (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578))))))

(declare-fun b!7951678 () Bool)

(declare-fun e!4690621 () Bool)

(declare-fun lt!2700504 () List!74702)

(assert (=> b!7951678 (= e!4690621 (or (not (= (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578) Nil!74578)) (= lt!2700504 testedP!447)))))

(declare-fun b!7951675 () Bool)

(assert (=> b!7951675 (= e!4690620 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578))))

(declare-fun d!2376271 () Bool)

(assert (=> d!2376271 e!4690621))

(declare-fun res!3153186 () Bool)

(assert (=> d!2376271 (=> (not res!3153186) (not e!4690621))))

(assert (=> d!2376271 (= res!3153186 (= (content!15829 lt!2700504) ((_ map or) (content!15829 testedP!447) (content!15829 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578)))))))

(assert (=> d!2376271 (= lt!2700504 e!4690620)))

(declare-fun c!1460516 () Bool)

(assert (=> d!2376271 (= c!1460516 ((_ is Nil!74578) testedP!447))))

(assert (=> d!2376271 (= (++!18343 testedP!447 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578)) lt!2700504)))

(declare-fun b!7951677 () Bool)

(declare-fun res!3153185 () Bool)

(assert (=> b!7951677 (=> (not res!3153185) (not e!4690621))))

(assert (=> b!7951677 (= res!3153185 (= (size!43409 lt!2700504) (+ (size!43409 testedP!447) (size!43409 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578)))))))

(assert (= (and d!2376271 c!1460516) b!7951675))

(assert (= (and d!2376271 (not c!1460516)) b!7951676))

(assert (= (and d!2376271 res!3153186) b!7951677))

(assert (= (and b!7951677 res!3153185) b!7951678))

(declare-fun m!8335666 () Bool)

(assert (=> b!7951676 m!8335666))

(declare-fun m!8335668 () Bool)

(assert (=> d!2376271 m!8335668))

(assert (=> d!2376271 m!8335358))

(declare-fun m!8335670 () Bool)

(assert (=> d!2376271 m!8335670))

(declare-fun m!8335672 () Bool)

(assert (=> b!7951677 m!8335672))

(assert (=> b!7951677 m!8335326))

(declare-fun m!8335674 () Bool)

(assert (=> b!7951677 m!8335674))

(assert (=> b!7951409 d!2376271))

(declare-fun b!7951680 () Bool)

(declare-fun e!4690622 () List!74702)

(assert (=> b!7951680 (= e!4690622 (Cons!74578 (h!81026 (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578))) (++!18343 (t!390445 (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578))) lt!2700370)))))

(declare-fun e!4690623 () Bool)

(declare-fun lt!2700505 () List!74702)

(declare-fun b!7951682 () Bool)

(assert (=> b!7951682 (= e!4690623 (or (not (= lt!2700370 Nil!74578)) (= lt!2700505 (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578)))))))

(declare-fun b!7951679 () Bool)

(assert (=> b!7951679 (= e!4690622 lt!2700370)))

(declare-fun d!2376273 () Bool)

(assert (=> d!2376273 e!4690623))

(declare-fun res!3153188 () Bool)

(assert (=> d!2376273 (=> (not res!3153188) (not e!4690623))))

(assert (=> d!2376273 (= res!3153188 (= (content!15829 lt!2700505) ((_ map or) (content!15829 (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578))) (content!15829 lt!2700370))))))

(assert (=> d!2376273 (= lt!2700505 e!4690622)))

(declare-fun c!1460517 () Bool)

(assert (=> d!2376273 (= c!1460517 ((_ is Nil!74578) (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578))))))

(assert (=> d!2376273 (= (++!18343 (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578)) lt!2700370) lt!2700505)))

(declare-fun b!7951681 () Bool)

(declare-fun res!3153187 () Bool)

(assert (=> b!7951681 (=> (not res!3153187) (not e!4690623))))

(assert (=> b!7951681 (= res!3153187 (= (size!43409 lt!2700505) (+ (size!43409 (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578))) (size!43409 lt!2700370))))))

(assert (= (and d!2376273 c!1460517) b!7951679))

(assert (= (and d!2376273 (not c!1460517)) b!7951680))

(assert (= (and d!2376273 res!3153188) b!7951681))

(assert (= (and b!7951681 res!3153187) b!7951682))

(declare-fun m!8335676 () Bool)

(assert (=> b!7951680 m!8335676))

(declare-fun m!8335678 () Bool)

(assert (=> d!2376273 m!8335678))

(assert (=> d!2376273 m!8335458))

(declare-fun m!8335680 () Bool)

(assert (=> d!2376273 m!8335680))

(declare-fun m!8335682 () Bool)

(assert (=> d!2376273 m!8335682))

(declare-fun m!8335684 () Bool)

(assert (=> b!7951681 m!8335684))

(assert (=> b!7951681 m!8335458))

(declare-fun m!8335686 () Bool)

(assert (=> b!7951681 m!8335686))

(declare-fun m!8335688 () Bool)

(assert (=> b!7951681 m!8335688))

(assert (=> b!7951409 d!2376273))

(assert (=> b!7951409 d!2376197))

(assert (=> b!7951409 d!2376165))

(assert (=> b!7951409 d!2376163))

(assert (=> b!7951409 d!2376199))

(declare-fun b!7951684 () Bool)

(declare-fun e!4690624 () List!74702)

(assert (=> b!7951684 (= e!4690624 (Cons!74578 (h!81026 testedP!447) (++!18343 (t!390445 testedP!447) (Cons!74578 lt!2700350 Nil!74578))))))

(declare-fun e!4690625 () Bool)

(declare-fun b!7951686 () Bool)

(declare-fun lt!2700506 () List!74702)

(assert (=> b!7951686 (= e!4690625 (or (not (= (Cons!74578 lt!2700350 Nil!74578) Nil!74578)) (= lt!2700506 testedP!447)))))

(declare-fun b!7951683 () Bool)

(assert (=> b!7951683 (= e!4690624 (Cons!74578 lt!2700350 Nil!74578))))

(declare-fun d!2376275 () Bool)

(assert (=> d!2376275 e!4690625))

(declare-fun res!3153190 () Bool)

(assert (=> d!2376275 (=> (not res!3153190) (not e!4690625))))

(assert (=> d!2376275 (= res!3153190 (= (content!15829 lt!2700506) ((_ map or) (content!15829 testedP!447) (content!15829 (Cons!74578 lt!2700350 Nil!74578)))))))

(assert (=> d!2376275 (= lt!2700506 e!4690624)))

(declare-fun c!1460518 () Bool)

(assert (=> d!2376275 (= c!1460518 ((_ is Nil!74578) testedP!447))))

(assert (=> d!2376275 (= (++!18343 testedP!447 (Cons!74578 lt!2700350 Nil!74578)) lt!2700506)))

(declare-fun b!7951685 () Bool)

(declare-fun res!3153189 () Bool)

(assert (=> b!7951685 (=> (not res!3153189) (not e!4690625))))

(assert (=> b!7951685 (= res!3153189 (= (size!43409 lt!2700506) (+ (size!43409 testedP!447) (size!43409 (Cons!74578 lt!2700350 Nil!74578)))))))

(assert (= (and d!2376275 c!1460518) b!7951683))

(assert (= (and d!2376275 (not c!1460518)) b!7951684))

(assert (= (and d!2376275 res!3153190) b!7951685))

(assert (= (and b!7951685 res!3153189) b!7951686))

(declare-fun m!8335690 () Bool)

(assert (=> b!7951684 m!8335690))

(declare-fun m!8335692 () Bool)

(assert (=> d!2376275 m!8335692))

(assert (=> d!2376275 m!8335358))

(declare-fun m!8335694 () Bool)

(assert (=> d!2376275 m!8335694))

(declare-fun m!8335696 () Bool)

(assert (=> b!7951685 m!8335696))

(assert (=> b!7951685 m!8335326))

(declare-fun m!8335698 () Bool)

(assert (=> b!7951685 m!8335698))

(assert (=> b!7951409 d!2376275))

(assert (=> b!7951279 d!2376171))

(declare-fun d!2376277 () Bool)

(declare-fun lt!2700507 () Int)

(assert (=> d!2376277 (>= lt!2700507 0)))

(declare-fun e!4690626 () Int)

(assert (=> d!2376277 (= lt!2700507 e!4690626)))

(declare-fun c!1460519 () Bool)

(assert (=> d!2376277 (= c!1460519 ((_ is Nil!74578) lt!2700248))))

(assert (=> d!2376277 (= (size!43409 lt!2700248) lt!2700507)))

(declare-fun b!7951687 () Bool)

(assert (=> b!7951687 (= e!4690626 0)))

(declare-fun b!7951688 () Bool)

(assert (=> b!7951688 (= e!4690626 (+ 1 (size!43409 (t!390445 lt!2700248))))))

(assert (= (and d!2376277 c!1460519) b!7951687))

(assert (= (and d!2376277 (not c!1460519)) b!7951688))

(declare-fun m!8335700 () Bool)

(assert (=> b!7951688 m!8335700))

(assert (=> b!7951279 d!2376277))

(declare-fun b!7951690 () Bool)

(declare-fun e!4690627 () List!74702)

(assert (=> b!7951690 (= e!4690627 (Cons!74578 (h!81026 testedP!447) (++!18343 (t!390445 testedP!447) lt!2700377)))))

(declare-fun e!4690628 () Bool)

(declare-fun lt!2700508 () List!74702)

(declare-fun b!7951692 () Bool)

(assert (=> b!7951692 (= e!4690628 (or (not (= lt!2700377 Nil!74578)) (= lt!2700508 testedP!447)))))

(declare-fun b!7951689 () Bool)

(assert (=> b!7951689 (= e!4690627 lt!2700377)))

(declare-fun d!2376279 () Bool)

(assert (=> d!2376279 e!4690628))

(declare-fun res!3153192 () Bool)

(assert (=> d!2376279 (=> (not res!3153192) (not e!4690628))))

(assert (=> d!2376279 (= res!3153192 (= (content!15829 lt!2700508) ((_ map or) (content!15829 testedP!447) (content!15829 lt!2700377))))))

(assert (=> d!2376279 (= lt!2700508 e!4690627)))

(declare-fun c!1460520 () Bool)

(assert (=> d!2376279 (= c!1460520 ((_ is Nil!74578) testedP!447))))

(assert (=> d!2376279 (= (++!18343 testedP!447 lt!2700377) lt!2700508)))

(declare-fun b!7951691 () Bool)

(declare-fun res!3153191 () Bool)

(assert (=> b!7951691 (=> (not res!3153191) (not e!4690628))))

(assert (=> b!7951691 (= res!3153191 (= (size!43409 lt!2700508) (+ (size!43409 testedP!447) (size!43409 lt!2700377))))))

(assert (= (and d!2376279 c!1460520) b!7951689))

(assert (= (and d!2376279 (not c!1460520)) b!7951690))

(assert (= (and d!2376279 res!3153192) b!7951691))

(assert (= (and b!7951691 res!3153191) b!7951692))

(declare-fun m!8335702 () Bool)

(assert (=> b!7951690 m!8335702))

(declare-fun m!8335704 () Bool)

(assert (=> d!2376279 m!8335704))

(assert (=> d!2376279 m!8335358))

(declare-fun m!8335706 () Bool)

(assert (=> d!2376279 m!8335706))

(declare-fun m!8335708 () Bool)

(assert (=> b!7951691 m!8335708))

(assert (=> b!7951691 m!8335326))

(declare-fun m!8335710 () Bool)

(assert (=> b!7951691 m!8335710))

(assert (=> d!2376197 d!2376279))

(assert (=> d!2376197 d!2376171))

(assert (=> d!2376197 d!2376199))

(assert (=> d!2376165 d!2376199))

(assert (=> d!2376165 d!2376171))

(declare-fun d!2376281 () Bool)

(assert (=> d!2376281 (<= (size!43409 testedP!447) (size!43409 input!7927))))

(assert (=> d!2376281 true))

(declare-fun _$64!904 () Unit!169856)

(assert (=> d!2376281 (= (choose!59917 testedP!447 input!7927) _$64!904)))

(declare-fun bs!1969560 () Bool)

(assert (= bs!1969560 d!2376281))

(assert (=> bs!1969560 m!8335326))

(assert (=> bs!1969560 m!8335318))

(assert (=> d!2376165 d!2376281))

(assert (=> d!2376165 d!2376169))

(assert (=> d!2376155 d!2376263))

(declare-fun d!2376283 () Bool)

(assert (=> d!2376283 (isPrefix!6573 (++!18343 testedP!447 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 testedP!447)) Nil!74578)) input!7927)))

(assert (=> d!2376283 true))

(declare-fun _$65!1931 () Unit!169856)

(assert (=> d!2376283 (= (choose!59916 testedP!447 input!7927) _$65!1931)))

(declare-fun bs!1969561 () Bool)

(assert (= bs!1969561 d!2376283))

(assert (=> bs!1969561 m!8335322))

(assert (=> bs!1969561 m!8335322))

(assert (=> bs!1969561 m!8335348))

(assert (=> bs!1969561 m!8335350))

(assert (=> bs!1969561 m!8335350))

(assert (=> bs!1969561 m!8335352))

(assert (=> d!2376155 d!2376283))

(assert (=> d!2376155 d!2376271))

(assert (=> d!2376155 d!2376267))

(assert (=> d!2376155 d!2376169))

(assert (=> d!2376155 d!2376197))

(assert (=> bm!737071 d!2376261))

(declare-fun b!7951693 () Bool)

(declare-fun e!4690632 () Bool)

(declare-fun call!737123 () Bool)

(assert (=> b!7951693 (= e!4690632 call!737123)))

(declare-fun b!7951694 () Bool)

(declare-fun e!4690630 () Bool)

(declare-fun e!4690631 () Bool)

(assert (=> b!7951694 (= e!4690630 e!4690631)))

(declare-fun res!3153193 () Bool)

(assert (=> b!7951694 (= res!3153193 (not (nullable!9574 (reg!21802 lt!2700252))))))

(assert (=> b!7951694 (=> (not res!3153193) (not e!4690631))))

(declare-fun b!7951695 () Bool)

(declare-fun e!4690634 () Bool)

(assert (=> b!7951695 (= e!4690634 e!4690632)))

(declare-fun res!3153196 () Bool)

(assert (=> b!7951695 (=> (not res!3153196) (not e!4690632))))

(declare-fun call!737124 () Bool)

(assert (=> b!7951695 (= res!3153196 call!737124)))

(declare-fun bm!737118 () Bool)

(declare-fun call!737125 () Bool)

(assert (=> bm!737118 (= call!737124 call!737125)))

(declare-fun b!7951697 () Bool)

(declare-fun e!4690635 () Bool)

(assert (=> b!7951697 (= e!4690635 e!4690630)))

(declare-fun c!1460522 () Bool)

(assert (=> b!7951697 (= c!1460522 ((_ is Star!21473) lt!2700252))))

(declare-fun b!7951698 () Bool)

(assert (=> b!7951698 (= e!4690631 call!737125)))

(declare-fun b!7951699 () Bool)

(declare-fun e!4690629 () Bool)

(assert (=> b!7951699 (= e!4690629 call!737123)))

(declare-fun bm!737119 () Bool)

(declare-fun c!1460521 () Bool)

(assert (=> bm!737119 (= call!737125 (validRegex!11777 (ite c!1460522 (reg!21802 lt!2700252) (ite c!1460521 (regOne!43459 lt!2700252) (regOne!43458 lt!2700252)))))))

(declare-fun bm!737120 () Bool)

(assert (=> bm!737120 (= call!737123 (validRegex!11777 (ite c!1460521 (regTwo!43459 lt!2700252) (regTwo!43458 lt!2700252))))))

(declare-fun b!7951700 () Bool)

(declare-fun res!3153197 () Bool)

(assert (=> b!7951700 (=> res!3153197 e!4690634)))

(assert (=> b!7951700 (= res!3153197 (not ((_ is Concat!30472) lt!2700252)))))

(declare-fun e!4690633 () Bool)

(assert (=> b!7951700 (= e!4690633 e!4690634)))

(declare-fun b!7951701 () Bool)

(assert (=> b!7951701 (= e!4690630 e!4690633)))

(assert (=> b!7951701 (= c!1460521 ((_ is Union!21473) lt!2700252))))

(declare-fun b!7951696 () Bool)

(declare-fun res!3153195 () Bool)

(assert (=> b!7951696 (=> (not res!3153195) (not e!4690629))))

(assert (=> b!7951696 (= res!3153195 call!737124)))

(assert (=> b!7951696 (= e!4690633 e!4690629)))

(declare-fun d!2376285 () Bool)

(declare-fun res!3153194 () Bool)

(assert (=> d!2376285 (=> res!3153194 e!4690635)))

(assert (=> d!2376285 (= res!3153194 ((_ is ElementMatch!21473) lt!2700252))))

(assert (=> d!2376285 (= (validRegex!11777 lt!2700252) e!4690635)))

(assert (= (and d!2376285 (not res!3153194)) b!7951697))

(assert (= (and b!7951697 c!1460522) b!7951694))

(assert (= (and b!7951697 (not c!1460522)) b!7951701))

(assert (= (and b!7951694 res!3153193) b!7951698))

(assert (= (and b!7951701 c!1460521) b!7951696))

(assert (= (and b!7951701 (not c!1460521)) b!7951700))

(assert (= (and b!7951696 res!3153195) b!7951699))

(assert (= (and b!7951700 (not res!3153197)) b!7951695))

(assert (= (and b!7951695 res!3153196) b!7951693))

(assert (= (or b!7951699 b!7951693) bm!737120))

(assert (= (or b!7951696 b!7951695) bm!737118))

(assert (= (or b!7951698 bm!737118) bm!737119))

(declare-fun m!8335712 () Bool)

(assert (=> b!7951694 m!8335712))

(declare-fun m!8335714 () Bool)

(assert (=> bm!737119 m!8335714))

(declare-fun m!8335716 () Bool)

(assert (=> bm!737120 m!8335716))

(assert (=> d!2376151 d!2376285))

(assert (=> d!2376151 d!2376251))

(declare-fun d!2376287 () Bool)

(declare-fun lt!2700509 () Int)

(assert (=> d!2376287 (>= lt!2700509 0)))

(declare-fun e!4690636 () Int)

(assert (=> d!2376287 (= lt!2700509 e!4690636)))

(declare-fun c!1460523 () Bool)

(assert (=> d!2376287 (= c!1460523 ((_ is Nil!74578) (_1!38607 lt!2700361)))))

(assert (=> d!2376287 (= (size!43409 (_1!38607 lt!2700361)) lt!2700509)))

(declare-fun b!7951702 () Bool)

(assert (=> b!7951702 (= e!4690636 0)))

(declare-fun b!7951703 () Bool)

(assert (=> b!7951703 (= e!4690636 (+ 1 (size!43409 (t!390445 (_1!38607 lt!2700361)))))))

(assert (= (and d!2376287 c!1460523) b!7951702))

(assert (= (and d!2376287 (not c!1460523)) b!7951703))

(declare-fun m!8335718 () Bool)

(assert (=> b!7951703 m!8335718))

(assert (=> b!7951406 d!2376287))

(assert (=> b!7951406 d!2376199))

(declare-fun d!2376289 () Bool)

(declare-fun lt!2700510 () Regex!21473)

(assert (=> d!2376289 (validRegex!11777 lt!2700510)))

(declare-fun e!4690637 () Regex!21473)

(assert (=> d!2376289 (= lt!2700510 e!4690637)))

(declare-fun c!1460524 () Bool)

(assert (=> d!2376289 (= c!1460524 ((_ is Cons!74578) (t!390445 testedP!447)))))

(assert (=> d!2376289 (validRegex!11777 (derivativeStep!6501 baseR!116 (h!81026 testedP!447)))))

(assert (=> d!2376289 (= (derivative!659 (derivativeStep!6501 baseR!116 (h!81026 testedP!447)) (t!390445 testedP!447)) lt!2700510)))

(declare-fun b!7951704 () Bool)

(assert (=> b!7951704 (= e!4690637 (derivative!659 (derivativeStep!6501 (derivativeStep!6501 baseR!116 (h!81026 testedP!447)) (h!81026 (t!390445 testedP!447))) (t!390445 (t!390445 testedP!447))))))

(declare-fun b!7951705 () Bool)

(assert (=> b!7951705 (= e!4690637 (derivativeStep!6501 baseR!116 (h!81026 testedP!447)))))

(assert (= (and d!2376289 c!1460524) b!7951704))

(assert (= (and d!2376289 (not c!1460524)) b!7951705))

(declare-fun m!8335720 () Bool)

(assert (=> d!2376289 m!8335720))

(assert (=> d!2376289 m!8335498))

(declare-fun m!8335722 () Bool)

(assert (=> d!2376289 m!8335722))

(assert (=> b!7951704 m!8335498))

(declare-fun m!8335724 () Bool)

(assert (=> b!7951704 m!8335724))

(assert (=> b!7951704 m!8335724))

(declare-fun m!8335726 () Bool)

(assert (=> b!7951704 m!8335726))

(assert (=> b!7951429 d!2376289))

(declare-fun bm!737121 () Bool)

(declare-fun call!737126 () Regex!21473)

(declare-fun call!737128 () Regex!21473)

(assert (=> bm!737121 (= call!737126 call!737128)))

(declare-fun b!7951706 () Bool)

(declare-fun c!1460528 () Bool)

(assert (=> b!7951706 (= c!1460528 (nullable!9574 (regOne!43458 baseR!116)))))

(declare-fun e!4690641 () Regex!21473)

(declare-fun e!4690638 () Regex!21473)

(assert (=> b!7951706 (= e!4690641 e!4690638)))

(declare-fun c!1460526 () Bool)

(declare-fun c!1460529 () Bool)

(declare-fun bm!737122 () Bool)

(declare-fun call!737129 () Regex!21473)

(assert (=> bm!737122 (= call!737129 (derivativeStep!6501 (ite c!1460526 (regTwo!43459 baseR!116) (ite c!1460529 (reg!21802 baseR!116) (ite c!1460528 (regTwo!43458 baseR!116) (regOne!43458 baseR!116)))) (h!81026 testedP!447)))))

(declare-fun b!7951707 () Bool)

(declare-fun e!4690639 () Regex!21473)

(assert (=> b!7951707 (= e!4690639 (ite (= (h!81026 testedP!447) (c!1460392 baseR!116)) EmptyExpr!21473 EmptyLang!21473))))

(declare-fun b!7951708 () Bool)

(assert (=> b!7951708 (= c!1460526 ((_ is Union!21473) baseR!116))))

(declare-fun e!4690640 () Regex!21473)

(assert (=> b!7951708 (= e!4690639 e!4690640)))

(declare-fun b!7951709 () Bool)

(declare-fun call!737127 () Regex!21473)

(assert (=> b!7951709 (= e!4690640 (Union!21473 call!737127 call!737129))))

(declare-fun b!7951710 () Bool)

(assert (=> b!7951710 (= e!4690638 (Union!21473 (Concat!30472 call!737126 (regTwo!43458 baseR!116)) EmptyLang!21473))))

(declare-fun b!7951711 () Bool)

(assert (=> b!7951711 (= e!4690638 (Union!21473 (Concat!30472 call!737127 (regTwo!43458 baseR!116)) call!737126))))

(declare-fun b!7951712 () Bool)

(assert (=> b!7951712 (= e!4690641 (Concat!30472 call!737128 baseR!116))))

(declare-fun d!2376291 () Bool)

(declare-fun lt!2700511 () Regex!21473)

(assert (=> d!2376291 (validRegex!11777 lt!2700511)))

(declare-fun e!4690642 () Regex!21473)

(assert (=> d!2376291 (= lt!2700511 e!4690642)))

(declare-fun c!1460525 () Bool)

(assert (=> d!2376291 (= c!1460525 (or ((_ is EmptyExpr!21473) baseR!116) ((_ is EmptyLang!21473) baseR!116)))))

(assert (=> d!2376291 (validRegex!11777 baseR!116)))

(assert (=> d!2376291 (= (derivativeStep!6501 baseR!116 (h!81026 testedP!447)) lt!2700511)))

(declare-fun b!7951713 () Bool)

(assert (=> b!7951713 (= e!4690640 e!4690641)))

(assert (=> b!7951713 (= c!1460529 ((_ is Star!21473) baseR!116))))

(declare-fun bm!737123 () Bool)

(assert (=> bm!737123 (= call!737127 (derivativeStep!6501 (ite c!1460526 (regOne!43459 baseR!116) (regOne!43458 baseR!116)) (h!81026 testedP!447)))))

(declare-fun bm!737124 () Bool)

(assert (=> bm!737124 (= call!737128 call!737129)))

(declare-fun b!7951714 () Bool)

(assert (=> b!7951714 (= e!4690642 e!4690639)))

(declare-fun c!1460527 () Bool)

(assert (=> b!7951714 (= c!1460527 ((_ is ElementMatch!21473) baseR!116))))

(declare-fun b!7951715 () Bool)

(assert (=> b!7951715 (= e!4690642 EmptyLang!21473)))

(assert (= (and d!2376291 c!1460525) b!7951715))

(assert (= (and d!2376291 (not c!1460525)) b!7951714))

(assert (= (and b!7951714 c!1460527) b!7951707))

(assert (= (and b!7951714 (not c!1460527)) b!7951708))

(assert (= (and b!7951708 c!1460526) b!7951709))

(assert (= (and b!7951708 (not c!1460526)) b!7951713))

(assert (= (and b!7951713 c!1460529) b!7951712))

(assert (= (and b!7951713 (not c!1460529)) b!7951706))

(assert (= (and b!7951706 c!1460528) b!7951711))

(assert (= (and b!7951706 (not c!1460528)) b!7951710))

(assert (= (or b!7951711 b!7951710) bm!737121))

(assert (= (or b!7951712 bm!737121) bm!737124))

(assert (= (or b!7951709 bm!737124) bm!737122))

(assert (= (or b!7951709 b!7951711) bm!737123))

(declare-fun m!8335728 () Bool)

(assert (=> b!7951706 m!8335728))

(declare-fun m!8335730 () Bool)

(assert (=> bm!737122 m!8335730))

(declare-fun m!8335732 () Bool)

(assert (=> d!2376291 m!8335732))

(assert (=> d!2376291 m!8335308))

(declare-fun m!8335734 () Bool)

(assert (=> bm!737123 m!8335734))

(assert (=> b!7951429 d!2376291))

(assert (=> bm!737072 d!2376207))

(declare-fun d!2376293 () Bool)

(declare-fun lt!2700512 () Int)

(assert (=> d!2376293 (>= lt!2700512 0)))

(declare-fun e!4690643 () Int)

(assert (=> d!2376293 (= lt!2700512 e!4690643)))

(declare-fun c!1460530 () Bool)

(assert (=> d!2376293 (= c!1460530 ((_ is Nil!74578) (t!390445 input!7927)))))

(assert (=> d!2376293 (= (size!43409 (t!390445 input!7927)) lt!2700512)))

(declare-fun b!7951716 () Bool)

(assert (=> b!7951716 (= e!4690643 0)))

(declare-fun b!7951717 () Bool)

(assert (=> b!7951717 (= e!4690643 (+ 1 (size!43409 (t!390445 (t!390445 input!7927)))))))

(assert (= (and d!2376293 c!1460530) b!7951716))

(assert (= (and d!2376293 (not c!1460530)) b!7951717))

(declare-fun m!8335736 () Bool)

(assert (=> b!7951717 m!8335736))

(assert (=> b!7951298 d!2376293))

(declare-fun b!7951718 () Bool)

(declare-fun c!1460536 () Bool)

(declare-fun call!737131 () Bool)

(assert (=> b!7951718 (= c!1460536 call!737131)))

(declare-fun lt!2700522 () Unit!169856)

(declare-fun lt!2700538 () Unit!169856)

(assert (=> b!7951718 (= lt!2700522 lt!2700538)))

(assert (=> b!7951718 (= input!7927 lt!2700364)))

(declare-fun call!737136 () Unit!169856)

(assert (=> b!7951718 (= lt!2700538 call!737136)))

(declare-fun lt!2700529 () Unit!169856)

(declare-fun lt!2700524 () Unit!169856)

(assert (=> b!7951718 (= lt!2700529 lt!2700524)))

(declare-fun call!737130 () Bool)

(assert (=> b!7951718 call!737130))

(declare-fun call!737137 () Unit!169856)

(assert (=> b!7951718 (= lt!2700524 call!737137)))

(declare-fun e!4690647 () tuple2!70608)

(declare-fun e!4690648 () tuple2!70608)

(assert (=> b!7951718 (= e!4690647 e!4690648)))

(declare-fun b!7951719 () Bool)

(declare-fun e!4690644 () Bool)

(declare-fun e!4690651 () Bool)

(assert (=> b!7951719 (= e!4690644 e!4690651)))

(declare-fun res!3153199 () Bool)

(assert (=> b!7951719 (=> res!3153199 e!4690651)))

(declare-fun lt!2700527 () tuple2!70608)

(assert (=> b!7951719 (= res!3153199 (isEmpty!42877 (_1!38607 lt!2700527)))))

(declare-fun bm!737125 () Bool)

(assert (=> bm!737125 (= call!737136 (lemmaIsPrefixSameLengthThenSameList!1621 input!7927 lt!2700364 input!7927))))

(declare-fun b!7951720 () Bool)

(declare-fun e!4690645 () tuple2!70608)

(assert (=> b!7951720 (= e!4690645 (tuple2!70609 Nil!74578 input!7927))))

(declare-fun bm!737126 () Bool)

(declare-fun call!737133 () List!74702)

(assert (=> bm!737126 (= call!737133 (tail!15761 call!737078))))

(declare-fun bm!737127 () Bool)

(assert (=> bm!737127 (= call!737130 (isPrefix!6573 input!7927 input!7927))))

(declare-fun call!737134 () Regex!21473)

(declare-fun bm!737128 () Bool)

(declare-fun call!737132 () tuple2!70608)

(declare-fun lt!2700530 () List!74702)

(assert (=> bm!737128 (= call!737132 (findLongestMatchInner!2254 call!737134 lt!2700530 (+ lt!2700244 1 1) call!737133 input!7927 lt!2700247))))

(declare-fun b!7951722 () Bool)

(assert (=> b!7951722 (= e!4690645 e!4690647)))

(declare-fun c!1460532 () Bool)

(assert (=> b!7951722 (= c!1460532 (= (+ lt!2700244 1) lt!2700247))))

(declare-fun bm!737129 () Bool)

(assert (=> bm!737129 (= call!737131 (nullable!9574 call!737079))))

(declare-fun b!7951723 () Bool)

(declare-fun e!4690649 () tuple2!70608)

(declare-fun lt!2700537 () tuple2!70608)

(assert (=> b!7951723 (= e!4690649 lt!2700537)))

(declare-fun b!7951724 () Bool)

(declare-fun c!1460535 () Bool)

(assert (=> b!7951724 (= c!1460535 call!737131)))

(declare-fun lt!2700517 () Unit!169856)

(declare-fun lt!2700515 () Unit!169856)

(assert (=> b!7951724 (= lt!2700517 lt!2700515)))

(declare-fun lt!2700516 () C!43284)

(declare-fun lt!2700536 () List!74702)

(assert (=> b!7951724 (= (++!18343 (++!18343 lt!2700364 (Cons!74578 lt!2700516 Nil!74578)) lt!2700536) input!7927)))

(assert (=> b!7951724 (= lt!2700515 (lemmaMoveElementToOtherListKeepsConcatEq!3517 lt!2700364 lt!2700516 lt!2700536 input!7927))))

(assert (=> b!7951724 (= lt!2700536 (tail!15761 call!737078))))

(assert (=> b!7951724 (= lt!2700516 (head!16225 call!737078))))

(declare-fun lt!2700533 () Unit!169856)

(declare-fun lt!2700540 () Unit!169856)

(assert (=> b!7951724 (= lt!2700533 lt!2700540)))

(assert (=> b!7951724 (isPrefix!6573 (++!18343 lt!2700364 (Cons!74578 (head!16225 (getSuffix!3776 input!7927 lt!2700364)) Nil!74578)) input!7927)))

(assert (=> b!7951724 (= lt!2700540 (lemmaAddHeadSuffixToPrefixStillPrefix!1300 lt!2700364 input!7927))))

(declare-fun lt!2700534 () Unit!169856)

(declare-fun lt!2700525 () Unit!169856)

(assert (=> b!7951724 (= lt!2700534 lt!2700525)))

(assert (=> b!7951724 (= lt!2700525 (lemmaAddHeadSuffixToPrefixStillPrefix!1300 lt!2700364 input!7927))))

(assert (=> b!7951724 (= lt!2700530 (++!18343 lt!2700364 (Cons!74578 (head!16225 call!737078) Nil!74578)))))

(declare-fun lt!2700521 () Unit!169856)

(declare-fun e!4690650 () Unit!169856)

(assert (=> b!7951724 (= lt!2700521 e!4690650)))

(declare-fun c!1460531 () Bool)

(assert (=> b!7951724 (= c!1460531 (= (size!43409 lt!2700364) (size!43409 input!7927)))))

(declare-fun lt!2700528 () Unit!169856)

(declare-fun lt!2700523 () Unit!169856)

(assert (=> b!7951724 (= lt!2700528 lt!2700523)))

(assert (=> b!7951724 (<= (size!43409 lt!2700364) (size!43409 input!7927))))

(assert (=> b!7951724 (= lt!2700523 (lemmaIsPrefixThenSmallerEqSize!1090 lt!2700364 input!7927))))

(declare-fun e!4690646 () tuple2!70608)

(assert (=> b!7951724 (= e!4690647 e!4690646)))

(declare-fun b!7951725 () Bool)

(assert (=> b!7951725 (= e!4690649 (tuple2!70609 lt!2700364 call!737078))))

(declare-fun b!7951726 () Bool)

(assert (=> b!7951726 (= e!4690646 call!737132)))

(declare-fun bm!737130 () Bool)

(declare-fun call!737135 () C!43284)

(assert (=> bm!737130 (= call!737135 (head!16225 call!737078))))

(declare-fun b!7951727 () Bool)

(declare-fun Unit!169866 () Unit!169856)

(assert (=> b!7951727 (= e!4690650 Unit!169866)))

(declare-fun lt!2700518 () Unit!169856)

(assert (=> b!7951727 (= lt!2700518 call!737137)))

(assert (=> b!7951727 call!737130))

(declare-fun lt!2700519 () Unit!169856)

(assert (=> b!7951727 (= lt!2700519 lt!2700518)))

(declare-fun lt!2700535 () Unit!169856)

(assert (=> b!7951727 (= lt!2700535 call!737136)))

(assert (=> b!7951727 (= input!7927 lt!2700364)))

(declare-fun lt!2700532 () Unit!169856)

(assert (=> b!7951727 (= lt!2700532 lt!2700535)))

(assert (=> b!7951727 false))

(declare-fun bm!737131 () Bool)

(assert (=> bm!737131 (= call!737137 (lemmaIsPrefixRefl!4041 input!7927 input!7927))))

(declare-fun b!7951728 () Bool)

(assert (=> b!7951728 (= e!4690648 (tuple2!70609 lt!2700364 Nil!74578))))

(declare-fun b!7951721 () Bool)

(assert (=> b!7951721 (= e!4690651 (>= (size!43409 (_1!38607 lt!2700527)) (size!43409 lt!2700364)))))

(declare-fun d!2376295 () Bool)

(assert (=> d!2376295 e!4690644))

(declare-fun res!3153198 () Bool)

(assert (=> d!2376295 (=> (not res!3153198) (not e!4690644))))

(assert (=> d!2376295 (= res!3153198 (= (++!18343 (_1!38607 lt!2700527) (_2!38607 lt!2700527)) input!7927))))

(assert (=> d!2376295 (= lt!2700527 e!4690645)))

(declare-fun c!1460533 () Bool)

(assert (=> d!2376295 (= c!1460533 (lostCause!1961 call!737079))))

(declare-fun lt!2700513 () Unit!169856)

(declare-fun Unit!169867 () Unit!169856)

(assert (=> d!2376295 (= lt!2700513 Unit!169867)))

(assert (=> d!2376295 (= (getSuffix!3776 input!7927 lt!2700364) call!737078)))

(declare-fun lt!2700514 () Unit!169856)

(declare-fun lt!2700520 () Unit!169856)

(assert (=> d!2376295 (= lt!2700514 lt!2700520)))

(declare-fun lt!2700539 () List!74702)

(assert (=> d!2376295 (= call!737078 lt!2700539)))

(assert (=> d!2376295 (= lt!2700520 (lemmaSamePrefixThenSameSuffix!2977 lt!2700364 call!737078 lt!2700364 lt!2700539 input!7927))))

(assert (=> d!2376295 (= lt!2700539 (getSuffix!3776 input!7927 lt!2700364))))

(declare-fun lt!2700526 () Unit!169856)

(declare-fun lt!2700531 () Unit!169856)

(assert (=> d!2376295 (= lt!2700526 lt!2700531)))

(assert (=> d!2376295 (isPrefix!6573 lt!2700364 (++!18343 lt!2700364 call!737078))))

(assert (=> d!2376295 (= lt!2700531 (lemmaConcatTwoListThenFirstIsPrefix!3839 lt!2700364 call!737078))))

(assert (=> d!2376295 (validRegex!11777 call!737079)))

(assert (=> d!2376295 (= (findLongestMatchInner!2254 call!737079 lt!2700364 (+ lt!2700244 1) call!737078 input!7927 lt!2700247) lt!2700527)))

(declare-fun b!7951729 () Bool)

(assert (=> b!7951729 (= e!4690648 (tuple2!70609 Nil!74578 input!7927))))

(declare-fun bm!737132 () Bool)

(assert (=> bm!737132 (= call!737134 (derivativeStep!6501 call!737079 call!737135))))

(declare-fun b!7951730 () Bool)

(assert (=> b!7951730 (= e!4690646 e!4690649)))

(assert (=> b!7951730 (= lt!2700537 call!737132)))

(declare-fun c!1460534 () Bool)

(assert (=> b!7951730 (= c!1460534 (isEmpty!42877 (_1!38607 lt!2700537)))))

(declare-fun b!7951731 () Bool)

(declare-fun Unit!169868 () Unit!169856)

(assert (=> b!7951731 (= e!4690650 Unit!169868)))

(assert (= (and d!2376295 c!1460533) b!7951720))

(assert (= (and d!2376295 (not c!1460533)) b!7951722))

(assert (= (and b!7951722 c!1460532) b!7951718))

(assert (= (and b!7951722 (not c!1460532)) b!7951724))

(assert (= (and b!7951718 c!1460536) b!7951728))

(assert (= (and b!7951718 (not c!1460536)) b!7951729))

(assert (= (and b!7951724 c!1460531) b!7951727))

(assert (= (and b!7951724 (not c!1460531)) b!7951731))

(assert (= (and b!7951724 c!1460535) b!7951730))

(assert (= (and b!7951724 (not c!1460535)) b!7951726))

(assert (= (and b!7951730 c!1460534) b!7951725))

(assert (= (and b!7951730 (not c!1460534)) b!7951723))

(assert (= (or b!7951730 b!7951726) bm!737130))

(assert (= (or b!7951730 b!7951726) bm!737126))

(assert (= (or b!7951730 b!7951726) bm!737132))

(assert (= (or b!7951730 b!7951726) bm!737128))

(assert (= (or b!7951718 b!7951724) bm!737129))

(assert (= (or b!7951718 b!7951727) bm!737125))

(assert (= (or b!7951718 b!7951727) bm!737131))

(assert (= (or b!7951718 b!7951727) bm!737127))

(assert (= (and d!2376295 res!3153198) b!7951719))

(assert (= (and b!7951719 (not res!3153199)) b!7951721))

(declare-fun m!8335738 () Bool)

(assert (=> bm!737130 m!8335738))

(declare-fun m!8335740 () Bool)

(assert (=> b!7951724 m!8335740))

(assert (=> b!7951724 m!8335740))

(declare-fun m!8335742 () Bool)

(assert (=> b!7951724 m!8335742))

(declare-fun m!8335744 () Bool)

(assert (=> b!7951724 m!8335744))

(declare-fun m!8335746 () Bool)

(assert (=> b!7951724 m!8335746))

(declare-fun m!8335748 () Bool)

(assert (=> b!7951724 m!8335748))

(declare-fun m!8335750 () Bool)

(assert (=> b!7951724 m!8335750))

(assert (=> b!7951724 m!8335738))

(declare-fun m!8335752 () Bool)

(assert (=> b!7951724 m!8335752))

(declare-fun m!8335754 () Bool)

(assert (=> b!7951724 m!8335754))

(assert (=> b!7951724 m!8335748))

(declare-fun m!8335756 () Bool)

(assert (=> b!7951724 m!8335756))

(declare-fun m!8335758 () Bool)

(assert (=> b!7951724 m!8335758))

(declare-fun m!8335760 () Bool)

(assert (=> b!7951724 m!8335760))

(assert (=> b!7951724 m!8335318))

(assert (=> b!7951724 m!8335758))

(declare-fun m!8335762 () Bool)

(assert (=> b!7951724 m!8335762))

(assert (=> d!2376295 m!8335748))

(declare-fun m!8335764 () Bool)

(assert (=> d!2376295 m!8335764))

(declare-fun m!8335766 () Bool)

(assert (=> d!2376295 m!8335766))

(declare-fun m!8335768 () Bool)

(assert (=> d!2376295 m!8335768))

(declare-fun m!8335770 () Bool)

(assert (=> d!2376295 m!8335770))

(declare-fun m!8335772 () Bool)

(assert (=> d!2376295 m!8335772))

(declare-fun m!8335774 () Bool)

(assert (=> d!2376295 m!8335774))

(assert (=> d!2376295 m!8335766))

(declare-fun m!8335776 () Bool)

(assert (=> d!2376295 m!8335776))

(declare-fun m!8335778 () Bool)

(assert (=> b!7951719 m!8335778))

(declare-fun m!8335780 () Bool)

(assert (=> b!7951730 m!8335780))

(declare-fun m!8335782 () Bool)

(assert (=> b!7951721 m!8335782))

(assert (=> b!7951721 m!8335746))

(assert (=> bm!737131 m!8335310))

(declare-fun m!8335784 () Bool)

(assert (=> bm!737129 m!8335784))

(assert (=> bm!737127 m!8335312))

(declare-fun m!8335786 () Bool)

(assert (=> bm!737125 m!8335786))

(declare-fun m!8335788 () Bool)

(assert (=> bm!737128 m!8335788))

(assert (=> bm!737126 m!8335756))

(declare-fun m!8335790 () Bool)

(assert (=> bm!737132 m!8335790))

(assert (=> bm!737073 d!2376295))

(declare-fun b!7951733 () Bool)

(declare-fun e!4690652 () List!74702)

(assert (=> b!7951733 (= e!4690652 (Cons!74578 (h!81026 (t!390445 testedP!447)) (++!18343 (t!390445 (t!390445 testedP!447)) (Cons!74578 lt!2700242 Nil!74578))))))

(declare-fun lt!2700541 () List!74702)

(declare-fun e!4690653 () Bool)

(declare-fun b!7951735 () Bool)

(assert (=> b!7951735 (= e!4690653 (or (not (= (Cons!74578 lt!2700242 Nil!74578) Nil!74578)) (= lt!2700541 (t!390445 testedP!447))))))

(declare-fun b!7951732 () Bool)

(assert (=> b!7951732 (= e!4690652 (Cons!74578 lt!2700242 Nil!74578))))

(declare-fun d!2376297 () Bool)

(assert (=> d!2376297 e!4690653))

(declare-fun res!3153201 () Bool)

(assert (=> d!2376297 (=> (not res!3153201) (not e!4690653))))

(assert (=> d!2376297 (= res!3153201 (= (content!15829 lt!2700541) ((_ map or) (content!15829 (t!390445 testedP!447)) (content!15829 (Cons!74578 lt!2700242 Nil!74578)))))))

(assert (=> d!2376297 (= lt!2700541 e!4690652)))

(declare-fun c!1460537 () Bool)

(assert (=> d!2376297 (= c!1460537 ((_ is Nil!74578) (t!390445 testedP!447)))))

(assert (=> d!2376297 (= (++!18343 (t!390445 testedP!447) (Cons!74578 lt!2700242 Nil!74578)) lt!2700541)))

(declare-fun b!7951734 () Bool)

(declare-fun res!3153200 () Bool)

(assert (=> b!7951734 (=> (not res!3153200) (not e!4690653))))

(assert (=> b!7951734 (= res!3153200 (= (size!43409 lt!2700541) (+ (size!43409 (t!390445 testedP!447)) (size!43409 (Cons!74578 lt!2700242 Nil!74578)))))))

(assert (= (and d!2376297 c!1460537) b!7951732))

(assert (= (and d!2376297 (not c!1460537)) b!7951733))

(assert (= (and d!2376297 res!3153201) b!7951734))

(assert (= (and b!7951734 res!3153200) b!7951735))

(declare-fun m!8335792 () Bool)

(assert (=> b!7951733 m!8335792))

(declare-fun m!8335794 () Bool)

(assert (=> d!2376297 m!8335794))

(declare-fun m!8335796 () Bool)

(assert (=> d!2376297 m!8335796))

(assert (=> d!2376297 m!8335360))

(declare-fun m!8335798 () Bool)

(assert (=> b!7951734 m!8335798))

(assert (=> b!7951734 m!8335494))

(assert (=> b!7951734 m!8335364))

(assert (=> b!7951265 d!2376297))

(declare-fun d!2376299 () Bool)

(assert (=> d!2376299 (= (head!16225 lt!2700248) (h!81026 lt!2700248))))

(assert (=> b!7951277 d!2376299))

(assert (=> b!7951277 d!2376223))

(declare-fun d!2376301 () Bool)

(assert (=> d!2376301 (= (nullable!9574 (reg!21802 baseR!116)) (nullableFct!3771 (reg!21802 baseR!116)))))

(declare-fun bs!1969562 () Bool)

(assert (= bs!1969562 d!2376301))

(declare-fun m!8335800 () Bool)

(assert (=> bs!1969562 m!8335800))

(assert (=> b!7951200 d!2376301))

(declare-fun bm!737133 () Bool)

(declare-fun call!737138 () Regex!21473)

(declare-fun call!737140 () Regex!21473)

(assert (=> bm!737133 (= call!737138 call!737140)))

(declare-fun b!7951736 () Bool)

(declare-fun c!1460541 () Bool)

(assert (=> b!7951736 (= c!1460541 (nullable!9574 (regOne!43458 r!24602)))))

(declare-fun e!4690657 () Regex!21473)

(declare-fun e!4690654 () Regex!21473)

(assert (=> b!7951736 (= e!4690657 e!4690654)))

(declare-fun call!737141 () Regex!21473)

(declare-fun bm!737134 () Bool)

(declare-fun c!1460542 () Bool)

(declare-fun c!1460539 () Bool)

(assert (=> bm!737134 (= call!737141 (derivativeStep!6501 (ite c!1460539 (regTwo!43459 r!24602) (ite c!1460542 (reg!21802 r!24602) (ite c!1460541 (regTwo!43458 r!24602) (regOne!43458 r!24602)))) call!737080))))

(declare-fun b!7951737 () Bool)

(declare-fun e!4690655 () Regex!21473)

(assert (=> b!7951737 (= e!4690655 (ite (= call!737080 (c!1460392 r!24602)) EmptyExpr!21473 EmptyLang!21473))))

(declare-fun b!7951738 () Bool)

(assert (=> b!7951738 (= c!1460539 ((_ is Union!21473) r!24602))))

(declare-fun e!4690656 () Regex!21473)

(assert (=> b!7951738 (= e!4690655 e!4690656)))

(declare-fun b!7951739 () Bool)

(declare-fun call!737139 () Regex!21473)

(assert (=> b!7951739 (= e!4690656 (Union!21473 call!737139 call!737141))))

(declare-fun b!7951740 () Bool)

(assert (=> b!7951740 (= e!4690654 (Union!21473 (Concat!30472 call!737138 (regTwo!43458 r!24602)) EmptyLang!21473))))

(declare-fun b!7951741 () Bool)

(assert (=> b!7951741 (= e!4690654 (Union!21473 (Concat!30472 call!737139 (regTwo!43458 r!24602)) call!737138))))

(declare-fun b!7951742 () Bool)

(assert (=> b!7951742 (= e!4690657 (Concat!30472 call!737140 r!24602))))

(declare-fun d!2376303 () Bool)

(declare-fun lt!2700542 () Regex!21473)

(assert (=> d!2376303 (validRegex!11777 lt!2700542)))

(declare-fun e!4690658 () Regex!21473)

(assert (=> d!2376303 (= lt!2700542 e!4690658)))

(declare-fun c!1460538 () Bool)

(assert (=> d!2376303 (= c!1460538 (or ((_ is EmptyExpr!21473) r!24602) ((_ is EmptyLang!21473) r!24602)))))

(assert (=> d!2376303 (validRegex!11777 r!24602)))

(assert (=> d!2376303 (= (derivativeStep!6501 r!24602 call!737080) lt!2700542)))

(declare-fun b!7951743 () Bool)

(assert (=> b!7951743 (= e!4690656 e!4690657)))

(assert (=> b!7951743 (= c!1460542 ((_ is Star!21473) r!24602))))

(declare-fun bm!737135 () Bool)

(assert (=> bm!737135 (= call!737139 (derivativeStep!6501 (ite c!1460539 (regOne!43459 r!24602) (regOne!43458 r!24602)) call!737080))))

(declare-fun bm!737136 () Bool)

(assert (=> bm!737136 (= call!737140 call!737141)))

(declare-fun b!7951744 () Bool)

(assert (=> b!7951744 (= e!4690658 e!4690655)))

(declare-fun c!1460540 () Bool)

(assert (=> b!7951744 (= c!1460540 ((_ is ElementMatch!21473) r!24602))))

(declare-fun b!7951745 () Bool)

(assert (=> b!7951745 (= e!4690658 EmptyLang!21473)))

(assert (= (and d!2376303 c!1460538) b!7951745))

(assert (= (and d!2376303 (not c!1460538)) b!7951744))

(assert (= (and b!7951744 c!1460540) b!7951737))

(assert (= (and b!7951744 (not c!1460540)) b!7951738))

(assert (= (and b!7951738 c!1460539) b!7951739))

(assert (= (and b!7951738 (not c!1460539)) b!7951743))

(assert (= (and b!7951743 c!1460542) b!7951742))

(assert (= (and b!7951743 (not c!1460542)) b!7951736))

(assert (= (and b!7951736 c!1460541) b!7951741))

(assert (= (and b!7951736 (not c!1460541)) b!7951740))

(assert (= (or b!7951741 b!7951740) bm!737133))

(assert (= (or b!7951742 bm!737133) bm!737136))

(assert (= (or b!7951739 bm!737136) bm!737134))

(assert (= (or b!7951739 b!7951741) bm!737135))

(assert (=> b!7951736 m!8335336))

(declare-fun m!8335802 () Bool)

(assert (=> bm!737134 m!8335802))

(declare-fun m!8335804 () Bool)

(assert (=> d!2376303 m!8335804))

(assert (=> d!2376303 m!8335342))

(declare-fun m!8335806 () Bool)

(assert (=> bm!737135 m!8335806))

(assert (=> bm!737077 d!2376303))

(declare-fun d!2376305 () Bool)

(assert (=> d!2376305 (= (isEmpty!42877 (_1!38607 lt!2700371)) ((_ is Nil!74578) (_1!38607 lt!2700371)))))

(assert (=> b!7951415 d!2376305))

(declare-fun d!2376307 () Bool)

(declare-fun lt!2700543 () Int)

(assert (=> d!2376307 (>= lt!2700543 0)))

(declare-fun e!4690659 () Int)

(assert (=> d!2376307 (= lt!2700543 e!4690659)))

(declare-fun c!1460543 () Bool)

(assert (=> d!2376307 (= c!1460543 ((_ is Nil!74578) (t!390445 testedP!447)))))

(assert (=> d!2376307 (= (size!43409 (t!390445 testedP!447)) lt!2700543)))

(declare-fun b!7951746 () Bool)

(assert (=> b!7951746 (= e!4690659 0)))

(declare-fun b!7951747 () Bool)

(assert (=> b!7951747 (= e!4690659 (+ 1 (size!43409 (t!390445 (t!390445 testedP!447)))))))

(assert (= (and d!2376307 c!1460543) b!7951746))

(assert (= (and d!2376307 (not c!1460543)) b!7951747))

(declare-fun m!8335808 () Bool)

(assert (=> b!7951747 m!8335808))

(assert (=> b!7951424 d!2376307))

(declare-fun d!2376309 () Bool)

(assert (=> d!2376309 (= input!7927 testedP!447)))

(assert (=> d!2376309 true))

(declare-fun _$60!1318 () Unit!169856)

(assert (=> d!2376309 (= (choose!59920 input!7927 testedP!447 input!7927) _$60!1318)))

(assert (=> d!2376209 d!2376309))

(assert (=> d!2376209 d!2376207))

(declare-fun d!2376311 () Bool)

(assert (=> d!2376311 (= (head!16225 testedP!447) (h!81026 testedP!447))))

(assert (=> b!7951290 d!2376311))

(assert (=> b!7951290 d!2376223))

(declare-fun d!2376313 () Bool)

(assert (=> d!2376313 (= (nullable!9574 (regOne!43458 r!24602)) (nullableFct!3771 (regOne!43458 r!24602)))))

(declare-fun bs!1969563 () Bool)

(assert (= bs!1969563 d!2376313))

(declare-fun m!8335810 () Bool)

(assert (=> bs!1969563 m!8335810))

(assert (=> b!7951228 d!2376313))

(declare-fun bm!737137 () Bool)

(declare-fun call!737142 () Regex!21473)

(declare-fun call!737144 () Regex!21473)

(assert (=> bm!737137 (= call!737142 call!737144)))

(declare-fun c!1460547 () Bool)

(declare-fun b!7951748 () Bool)

(assert (=> b!7951748 (= c!1460547 (nullable!9574 (regOne!43458 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))))))))

(declare-fun e!4690663 () Regex!21473)

(declare-fun e!4690660 () Regex!21473)

(assert (=> b!7951748 (= e!4690663 e!4690660)))

(declare-fun c!1460548 () Bool)

(declare-fun c!1460545 () Bool)

(declare-fun call!737145 () Regex!21473)

(declare-fun bm!737138 () Bool)

(assert (=> bm!737138 (= call!737145 (derivativeStep!6501 (ite c!1460545 (regTwo!43459 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602))))) (ite c!1460548 (reg!21802 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602))))) (ite c!1460547 (regTwo!43458 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602))))) (regOne!43458 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))))))) lt!2700242))))

(declare-fun e!4690661 () Regex!21473)

(declare-fun b!7951749 () Bool)

(assert (=> b!7951749 (= e!4690661 (ite (= lt!2700242 (c!1460392 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))))) EmptyExpr!21473 EmptyLang!21473))))

(declare-fun b!7951750 () Bool)

(assert (=> b!7951750 (= c!1460545 ((_ is Union!21473) (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602))))))))

(declare-fun e!4690662 () Regex!21473)

(assert (=> b!7951750 (= e!4690661 e!4690662)))

(declare-fun b!7951751 () Bool)

(declare-fun call!737143 () Regex!21473)

(assert (=> b!7951751 (= e!4690662 (Union!21473 call!737143 call!737145))))

(declare-fun b!7951752 () Bool)

(assert (=> b!7951752 (= e!4690660 (Union!21473 (Concat!30472 call!737142 (regTwo!43458 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))))) EmptyLang!21473))))

(declare-fun b!7951753 () Bool)

(assert (=> b!7951753 (= e!4690660 (Union!21473 (Concat!30472 call!737143 (regTwo!43458 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))))) call!737142))))

(declare-fun b!7951754 () Bool)

(assert (=> b!7951754 (= e!4690663 (Concat!30472 call!737144 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602))))))))

(declare-fun d!2376315 () Bool)

(declare-fun lt!2700544 () Regex!21473)

(assert (=> d!2376315 (validRegex!11777 lt!2700544)))

(declare-fun e!4690664 () Regex!21473)

(assert (=> d!2376315 (= lt!2700544 e!4690664)))

(declare-fun c!1460544 () Bool)

(assert (=> d!2376315 (= c!1460544 (or ((_ is EmptyExpr!21473) (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602))))) ((_ is EmptyLang!21473) (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))))))))

(assert (=> d!2376315 (validRegex!11777 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))))))

(assert (=> d!2376315 (= (derivativeStep!6501 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))) lt!2700242) lt!2700544)))

(declare-fun b!7951755 () Bool)

(assert (=> b!7951755 (= e!4690662 e!4690663)))

(assert (=> b!7951755 (= c!1460548 ((_ is Star!21473) (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602))))))))

(declare-fun bm!737139 () Bool)

(assert (=> bm!737139 (= call!737143 (derivativeStep!6501 (ite c!1460545 (regOne!43459 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602))))) (regOne!43458 (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602)))))) lt!2700242))))

(declare-fun bm!737140 () Bool)

(assert (=> bm!737140 (= call!737144 call!737145)))

(declare-fun b!7951756 () Bool)

(assert (=> b!7951756 (= e!4690664 e!4690661)))

(declare-fun c!1460546 () Bool)

(assert (=> b!7951756 (= c!1460546 ((_ is ElementMatch!21473) (ite c!1460410 (regTwo!43459 r!24602) (ite c!1460413 (reg!21802 r!24602) (ite c!1460412 (regTwo!43458 r!24602) (regOne!43458 r!24602))))))))

(declare-fun b!7951757 () Bool)

(assert (=> b!7951757 (= e!4690664 EmptyLang!21473)))

(assert (= (and d!2376315 c!1460544) b!7951757))

(assert (= (and d!2376315 (not c!1460544)) b!7951756))

(assert (= (and b!7951756 c!1460546) b!7951749))

(assert (= (and b!7951756 (not c!1460546)) b!7951750))

(assert (= (and b!7951750 c!1460545) b!7951751))

(assert (= (and b!7951750 (not c!1460545)) b!7951755))

(assert (= (and b!7951755 c!1460548) b!7951754))

(assert (= (and b!7951755 (not c!1460548)) b!7951748))

(assert (= (and b!7951748 c!1460547) b!7951753))

(assert (= (and b!7951748 (not c!1460547)) b!7951752))

(assert (= (or b!7951753 b!7951752) bm!737137))

(assert (= (or b!7951754 bm!737137) bm!737140))

(assert (= (or b!7951751 bm!737140) bm!737138))

(assert (= (or b!7951751 b!7951753) bm!737139))

(declare-fun m!8335812 () Bool)

(assert (=> b!7951748 m!8335812))

(declare-fun m!8335814 () Bool)

(assert (=> bm!737138 m!8335814))

(declare-fun m!8335816 () Bool)

(assert (=> d!2376315 m!8335816))

(declare-fun m!8335818 () Bool)

(assert (=> d!2376315 m!8335818))

(declare-fun m!8335820 () Bool)

(assert (=> bm!737139 m!8335820))

(assert (=> bm!737030 d!2376315))

(declare-fun d!2376317 () Bool)

(assert (=> d!2376317 (= (isEmpty!42877 (_1!38607 lt!2700361)) ((_ is Nil!74578) (_1!38607 lt!2700361)))))

(assert (=> b!7951404 d!2376317))

(declare-fun b!7951758 () Bool)

(declare-fun e!4690666 () Bool)

(declare-fun e!4690667 () Bool)

(assert (=> b!7951758 (= e!4690666 e!4690667)))

(declare-fun res!3153205 () Bool)

(assert (=> b!7951758 (=> (not res!3153205) (not e!4690667))))

(assert (=> b!7951758 (= res!3153205 (not ((_ is Nil!74578) (tail!15761 input!7927))))))

(declare-fun b!7951760 () Bool)

(assert (=> b!7951760 (= e!4690667 (isPrefix!6573 (tail!15761 (tail!15761 testedP!447)) (tail!15761 (tail!15761 input!7927))))))

(declare-fun d!2376319 () Bool)

(declare-fun e!4690665 () Bool)

(assert (=> d!2376319 e!4690665))

(declare-fun res!3153203 () Bool)

(assert (=> d!2376319 (=> res!3153203 e!4690665)))

(declare-fun lt!2700545 () Bool)

(assert (=> d!2376319 (= res!3153203 (not lt!2700545))))

(assert (=> d!2376319 (= lt!2700545 e!4690666)))

(declare-fun res!3153202 () Bool)

(assert (=> d!2376319 (=> res!3153202 e!4690666)))

(assert (=> d!2376319 (= res!3153202 ((_ is Nil!74578) (tail!15761 testedP!447)))))

(assert (=> d!2376319 (= (isPrefix!6573 (tail!15761 testedP!447) (tail!15761 input!7927)) lt!2700545)))

(declare-fun b!7951759 () Bool)

(declare-fun res!3153204 () Bool)

(assert (=> b!7951759 (=> (not res!3153204) (not e!4690667))))

(assert (=> b!7951759 (= res!3153204 (= (head!16225 (tail!15761 testedP!447)) (head!16225 (tail!15761 input!7927))))))

(declare-fun b!7951761 () Bool)

(assert (=> b!7951761 (= e!4690665 (>= (size!43409 (tail!15761 input!7927)) (size!43409 (tail!15761 testedP!447))))))

(assert (= (and d!2376319 (not res!3153202)) b!7951758))

(assert (= (and b!7951758 res!3153205) b!7951759))

(assert (= (and b!7951759 res!3153204) b!7951760))

(assert (= (and d!2376319 (not res!3153203)) b!7951761))

(assert (=> b!7951760 m!8335388))

(declare-fun m!8335822 () Bool)

(assert (=> b!7951760 m!8335822))

(assert (=> b!7951760 m!8335370))

(assert (=> b!7951760 m!8335562))

(assert (=> b!7951760 m!8335822))

(assert (=> b!7951760 m!8335562))

(declare-fun m!8335824 () Bool)

(assert (=> b!7951760 m!8335824))

(assert (=> b!7951759 m!8335388))

(declare-fun m!8335826 () Bool)

(assert (=> b!7951759 m!8335826))

(assert (=> b!7951759 m!8335370))

(assert (=> b!7951759 m!8335566))

(assert (=> b!7951761 m!8335370))

(assert (=> b!7951761 m!8335568))

(assert (=> b!7951761 m!8335388))

(declare-fun m!8335828 () Bool)

(assert (=> b!7951761 m!8335828))

(assert (=> b!7951291 d!2376319))

(declare-fun d!2376321 () Bool)

(assert (=> d!2376321 (= (tail!15761 testedP!447) (t!390445 testedP!447))))

(assert (=> b!7951291 d!2376321))

(assert (=> b!7951291 d!2376231))

(assert (=> bm!737070 d!2376209))

(declare-fun b!7951776 () Bool)

(declare-fun e!4690685 () Bool)

(declare-fun e!4690681 () Bool)

(assert (=> b!7951776 (= e!4690685 e!4690681)))

(declare-fun res!3153219 () Bool)

(declare-fun call!737150 () Bool)

(assert (=> b!7951776 (= res!3153219 call!737150)))

(assert (=> b!7951776 (=> res!3153219 e!4690681)))

(declare-fun b!7951777 () Bool)

(declare-fun call!737151 () Bool)

(assert (=> b!7951777 (= e!4690681 call!737151)))

(declare-fun bm!737145 () Bool)

(declare-fun c!1460551 () Bool)

(assert (=> bm!737145 (= call!737150 (nullable!9574 (ite c!1460551 (regOne!43459 r!24602) (regTwo!43458 r!24602))))))

(declare-fun b!7951778 () Bool)

(declare-fun e!4690682 () Bool)

(assert (=> b!7951778 (= e!4690685 e!4690682)))

(declare-fun res!3153216 () Bool)

(assert (=> b!7951778 (= res!3153216 call!737151)))

(assert (=> b!7951778 (=> (not res!3153216) (not e!4690682))))

(declare-fun b!7951779 () Bool)

(declare-fun e!4690683 () Bool)

(declare-fun e!4690684 () Bool)

(assert (=> b!7951779 (= e!4690683 e!4690684)))

(declare-fun res!3153218 () Bool)

(assert (=> b!7951779 (=> (not res!3153218) (not e!4690684))))

(assert (=> b!7951779 (= res!3153218 (and (not ((_ is EmptyLang!21473) r!24602)) (not ((_ is ElementMatch!21473) r!24602))))))

(declare-fun bm!737146 () Bool)

(assert (=> bm!737146 (= call!737151 (nullable!9574 (ite c!1460551 (regTwo!43459 r!24602) (regOne!43458 r!24602))))))

(declare-fun b!7951780 () Bool)

(assert (=> b!7951780 (= e!4690682 call!737150)))

(declare-fun d!2376323 () Bool)

(declare-fun res!3153220 () Bool)

(assert (=> d!2376323 (=> res!3153220 e!4690683)))

(assert (=> d!2376323 (= res!3153220 ((_ is EmptyExpr!21473) r!24602))))

(assert (=> d!2376323 (= (nullableFct!3771 r!24602) e!4690683)))

(declare-fun b!7951781 () Bool)

(declare-fun e!4690680 () Bool)

(assert (=> b!7951781 (= e!4690684 e!4690680)))

(declare-fun res!3153217 () Bool)

(assert (=> b!7951781 (=> res!3153217 e!4690680)))

(assert (=> b!7951781 (= res!3153217 ((_ is Star!21473) r!24602))))

(declare-fun b!7951782 () Bool)

(assert (=> b!7951782 (= e!4690680 e!4690685)))

(assert (=> b!7951782 (= c!1460551 ((_ is Union!21473) r!24602))))

(assert (= (and d!2376323 (not res!3153220)) b!7951779))

(assert (= (and b!7951779 res!3153218) b!7951781))

(assert (= (and b!7951781 (not res!3153217)) b!7951782))

(assert (= (and b!7951782 c!1460551) b!7951776))

(assert (= (and b!7951782 (not c!1460551)) b!7951778))

(assert (= (and b!7951776 (not res!3153219)) b!7951777))

(assert (= (and b!7951778 res!3153216) b!7951780))

(assert (= (or b!7951776 b!7951780) bm!737145))

(assert (= (or b!7951777 b!7951778) bm!737146))

(declare-fun m!8335830 () Bool)

(assert (=> bm!737145 m!8335830))

(declare-fun m!8335832 () Bool)

(assert (=> bm!737146 m!8335832))

(assert (=> d!2376159 d!2376323))

(assert (=> b!7951292 d!2376171))

(assert (=> b!7951292 d!2376199))

(declare-fun d!2376325 () Bool)

(declare-fun c!1460554 () Bool)

(assert (=> d!2376325 (= c!1460554 ((_ is Nil!74578) lt!2700258))))

(declare-fun e!4690688 () (InoxSet C!43284))

(assert (=> d!2376325 (= (content!15829 lt!2700258) e!4690688)))

(declare-fun b!7951787 () Bool)

(assert (=> b!7951787 (= e!4690688 ((as const (Array C!43284 Bool)) false))))

(declare-fun b!7951788 () Bool)

(assert (=> b!7951788 (= e!4690688 ((_ map or) (store ((as const (Array C!43284 Bool)) false) (h!81026 lt!2700258) true) (content!15829 (t!390445 lt!2700258))))))

(assert (= (and d!2376325 c!1460554) b!7951787))

(assert (= (and d!2376325 (not c!1460554)) b!7951788))

(declare-fun m!8335834 () Bool)

(assert (=> b!7951788 m!8335834))

(declare-fun m!8335836 () Bool)

(assert (=> b!7951788 m!8335836))

(assert (=> d!2376157 d!2376325))

(declare-fun d!2376327 () Bool)

(declare-fun c!1460555 () Bool)

(assert (=> d!2376327 (= c!1460555 ((_ is Nil!74578) testedP!447))))

(declare-fun e!4690689 () (InoxSet C!43284))

(assert (=> d!2376327 (= (content!15829 testedP!447) e!4690689)))

(declare-fun b!7951789 () Bool)

(assert (=> b!7951789 (= e!4690689 ((as const (Array C!43284 Bool)) false))))

(declare-fun b!7951790 () Bool)

(assert (=> b!7951790 (= e!4690689 ((_ map or) (store ((as const (Array C!43284 Bool)) false) (h!81026 testedP!447) true) (content!15829 (t!390445 testedP!447))))))

(assert (= (and d!2376327 c!1460555) b!7951789))

(assert (= (and d!2376327 (not c!1460555)) b!7951790))

(declare-fun m!8335838 () Bool)

(assert (=> b!7951790 m!8335838))

(assert (=> b!7951790 m!8335796))

(assert (=> d!2376157 d!2376327))

(declare-fun d!2376329 () Bool)

(declare-fun c!1460556 () Bool)

(assert (=> d!2376329 (= c!1460556 ((_ is Nil!74578) (Cons!74578 lt!2700242 Nil!74578)))))

(declare-fun e!4690690 () (InoxSet C!43284))

(assert (=> d!2376329 (= (content!15829 (Cons!74578 lt!2700242 Nil!74578)) e!4690690)))

(declare-fun b!7951791 () Bool)

(assert (=> b!7951791 (= e!4690690 ((as const (Array C!43284 Bool)) false))))

(declare-fun b!7951792 () Bool)

(assert (=> b!7951792 (= e!4690690 ((_ map or) (store ((as const (Array C!43284 Bool)) false) (h!81026 (Cons!74578 lt!2700242 Nil!74578)) true) (content!15829 (t!390445 (Cons!74578 lt!2700242 Nil!74578)))))))

(assert (= (and d!2376329 c!1460556) b!7951791))

(assert (= (and d!2376329 (not c!1460556)) b!7951792))

(declare-fun m!8335840 () Bool)

(assert (=> b!7951792 m!8335840))

(declare-fun m!8335842 () Bool)

(assert (=> b!7951792 m!8335842))

(assert (=> d!2376157 d!2376329))

(declare-fun e!4690691 () Bool)

(assert (=> b!7951452 (= tp!2366521 e!4690691)))

(declare-fun b!7951796 () Bool)

(declare-fun tp!2366634 () Bool)

(declare-fun tp!2366635 () Bool)

(assert (=> b!7951796 (= e!4690691 (and tp!2366634 tp!2366635))))

(declare-fun b!7951793 () Bool)

(assert (=> b!7951793 (= e!4690691 tp_is_empty!53489)))

(declare-fun b!7951795 () Bool)

(declare-fun tp!2366632 () Bool)

(assert (=> b!7951795 (= e!4690691 tp!2366632)))

(declare-fun b!7951794 () Bool)

(declare-fun tp!2366631 () Bool)

(declare-fun tp!2366633 () Bool)

(assert (=> b!7951794 (= e!4690691 (and tp!2366631 tp!2366633))))

(assert (= (and b!7951452 ((_ is ElementMatch!21473) (regOne!43459 (regTwo!43458 r!24602)))) b!7951793))

(assert (= (and b!7951452 ((_ is Concat!30472) (regOne!43459 (regTwo!43458 r!24602)))) b!7951794))

(assert (= (and b!7951452 ((_ is Star!21473) (regOne!43459 (regTwo!43458 r!24602)))) b!7951795))

(assert (= (and b!7951452 ((_ is Union!21473) (regOne!43459 (regTwo!43458 r!24602)))) b!7951796))

(declare-fun e!4690692 () Bool)

(assert (=> b!7951452 (= tp!2366522 e!4690692)))

(declare-fun b!7951800 () Bool)

(declare-fun tp!2366639 () Bool)

(declare-fun tp!2366640 () Bool)

(assert (=> b!7951800 (= e!4690692 (and tp!2366639 tp!2366640))))

(declare-fun b!7951797 () Bool)

(assert (=> b!7951797 (= e!4690692 tp_is_empty!53489)))

(declare-fun b!7951799 () Bool)

(declare-fun tp!2366637 () Bool)

(assert (=> b!7951799 (= e!4690692 tp!2366637)))

(declare-fun b!7951798 () Bool)

(declare-fun tp!2366636 () Bool)

(declare-fun tp!2366638 () Bool)

(assert (=> b!7951798 (= e!4690692 (and tp!2366636 tp!2366638))))

(assert (= (and b!7951452 ((_ is ElementMatch!21473) (regTwo!43459 (regTwo!43458 r!24602)))) b!7951797))

(assert (= (and b!7951452 ((_ is Concat!30472) (regTwo!43459 (regTwo!43458 r!24602)))) b!7951798))

(assert (= (and b!7951452 ((_ is Star!21473) (regTwo!43459 (regTwo!43458 r!24602)))) b!7951799))

(assert (= (and b!7951452 ((_ is Union!21473) (regTwo!43459 (regTwo!43458 r!24602)))) b!7951800))

(declare-fun e!4690693 () Bool)

(assert (=> b!7951476 (= tp!2366551 e!4690693)))

(declare-fun b!7951804 () Bool)

(declare-fun tp!2366644 () Bool)

(declare-fun tp!2366645 () Bool)

(assert (=> b!7951804 (= e!4690693 (and tp!2366644 tp!2366645))))

(declare-fun b!7951801 () Bool)

(assert (=> b!7951801 (= e!4690693 tp_is_empty!53489)))

(declare-fun b!7951803 () Bool)

(declare-fun tp!2366642 () Bool)

(assert (=> b!7951803 (= e!4690693 tp!2366642)))

(declare-fun b!7951802 () Bool)

(declare-fun tp!2366641 () Bool)

(declare-fun tp!2366643 () Bool)

(assert (=> b!7951802 (= e!4690693 (and tp!2366641 tp!2366643))))

(assert (= (and b!7951476 ((_ is ElementMatch!21473) (regOne!43459 (reg!21802 baseR!116)))) b!7951801))

(assert (= (and b!7951476 ((_ is Concat!30472) (regOne!43459 (reg!21802 baseR!116)))) b!7951802))

(assert (= (and b!7951476 ((_ is Star!21473) (regOne!43459 (reg!21802 baseR!116)))) b!7951803))

(assert (= (and b!7951476 ((_ is Union!21473) (regOne!43459 (reg!21802 baseR!116)))) b!7951804))

(declare-fun e!4690694 () Bool)

(assert (=> b!7951476 (= tp!2366552 e!4690694)))

(declare-fun b!7951808 () Bool)

(declare-fun tp!2366649 () Bool)

(declare-fun tp!2366650 () Bool)

(assert (=> b!7951808 (= e!4690694 (and tp!2366649 tp!2366650))))

(declare-fun b!7951805 () Bool)

(assert (=> b!7951805 (= e!4690694 tp_is_empty!53489)))

(declare-fun b!7951807 () Bool)

(declare-fun tp!2366647 () Bool)

(assert (=> b!7951807 (= e!4690694 tp!2366647)))

(declare-fun b!7951806 () Bool)

(declare-fun tp!2366646 () Bool)

(declare-fun tp!2366648 () Bool)

(assert (=> b!7951806 (= e!4690694 (and tp!2366646 tp!2366648))))

(assert (= (and b!7951476 ((_ is ElementMatch!21473) (regTwo!43459 (reg!21802 baseR!116)))) b!7951805))

(assert (= (and b!7951476 ((_ is Concat!30472) (regTwo!43459 (reg!21802 baseR!116)))) b!7951806))

(assert (= (and b!7951476 ((_ is Star!21473) (regTwo!43459 (reg!21802 baseR!116)))) b!7951807))

(assert (= (and b!7951476 ((_ is Union!21473) (regTwo!43459 (reg!21802 baseR!116)))) b!7951808))

(declare-fun e!4690695 () Bool)

(assert (=> b!7951475 (= tp!2366549 e!4690695)))

(declare-fun b!7951812 () Bool)

(declare-fun tp!2366654 () Bool)

(declare-fun tp!2366655 () Bool)

(assert (=> b!7951812 (= e!4690695 (and tp!2366654 tp!2366655))))

(declare-fun b!7951809 () Bool)

(assert (=> b!7951809 (= e!4690695 tp_is_empty!53489)))

(declare-fun b!7951811 () Bool)

(declare-fun tp!2366652 () Bool)

(assert (=> b!7951811 (= e!4690695 tp!2366652)))

(declare-fun b!7951810 () Bool)

(declare-fun tp!2366651 () Bool)

(declare-fun tp!2366653 () Bool)

(assert (=> b!7951810 (= e!4690695 (and tp!2366651 tp!2366653))))

(assert (= (and b!7951475 ((_ is ElementMatch!21473) (reg!21802 (reg!21802 baseR!116)))) b!7951809))

(assert (= (and b!7951475 ((_ is Concat!30472) (reg!21802 (reg!21802 baseR!116)))) b!7951810))

(assert (= (and b!7951475 ((_ is Star!21473) (reg!21802 (reg!21802 baseR!116)))) b!7951811))

(assert (= (and b!7951475 ((_ is Union!21473) (reg!21802 (reg!21802 baseR!116)))) b!7951812))

(declare-fun e!4690696 () Bool)

(assert (=> b!7951484 (= tp!2366561 e!4690696)))

(declare-fun b!7951816 () Bool)

(declare-fun tp!2366659 () Bool)

(declare-fun tp!2366660 () Bool)

(assert (=> b!7951816 (= e!4690696 (and tp!2366659 tp!2366660))))

(declare-fun b!7951813 () Bool)

(assert (=> b!7951813 (= e!4690696 tp_is_empty!53489)))

(declare-fun b!7951815 () Bool)

(declare-fun tp!2366657 () Bool)

(assert (=> b!7951815 (= e!4690696 tp!2366657)))

(declare-fun b!7951814 () Bool)

(declare-fun tp!2366656 () Bool)

(declare-fun tp!2366658 () Bool)

(assert (=> b!7951814 (= e!4690696 (and tp!2366656 tp!2366658))))

(assert (= (and b!7951484 ((_ is ElementMatch!21473) (regOne!43459 (regTwo!43459 baseR!116)))) b!7951813))

(assert (= (and b!7951484 ((_ is Concat!30472) (regOne!43459 (regTwo!43459 baseR!116)))) b!7951814))

(assert (= (and b!7951484 ((_ is Star!21473) (regOne!43459 (regTwo!43459 baseR!116)))) b!7951815))

(assert (= (and b!7951484 ((_ is Union!21473) (regOne!43459 (regTwo!43459 baseR!116)))) b!7951816))

(declare-fun e!4690697 () Bool)

(assert (=> b!7951484 (= tp!2366562 e!4690697)))

(declare-fun b!7951820 () Bool)

(declare-fun tp!2366664 () Bool)

(declare-fun tp!2366665 () Bool)

(assert (=> b!7951820 (= e!4690697 (and tp!2366664 tp!2366665))))

(declare-fun b!7951817 () Bool)

(assert (=> b!7951817 (= e!4690697 tp_is_empty!53489)))

(declare-fun b!7951819 () Bool)

(declare-fun tp!2366662 () Bool)

(assert (=> b!7951819 (= e!4690697 tp!2366662)))

(declare-fun b!7951818 () Bool)

(declare-fun tp!2366661 () Bool)

(declare-fun tp!2366663 () Bool)

(assert (=> b!7951818 (= e!4690697 (and tp!2366661 tp!2366663))))

(assert (= (and b!7951484 ((_ is ElementMatch!21473) (regTwo!43459 (regTwo!43459 baseR!116)))) b!7951817))

(assert (= (and b!7951484 ((_ is Concat!30472) (regTwo!43459 (regTwo!43459 baseR!116)))) b!7951818))

(assert (= (and b!7951484 ((_ is Star!21473) (regTwo!43459 (regTwo!43459 baseR!116)))) b!7951819))

(assert (= (and b!7951484 ((_ is Union!21473) (regTwo!43459 (regTwo!43459 baseR!116)))) b!7951820))

(declare-fun e!4690698 () Bool)

(assert (=> b!7951478 (= tp!2366553 e!4690698)))

(declare-fun b!7951824 () Bool)

(declare-fun tp!2366669 () Bool)

(declare-fun tp!2366670 () Bool)

(assert (=> b!7951824 (= e!4690698 (and tp!2366669 tp!2366670))))

(declare-fun b!7951821 () Bool)

(assert (=> b!7951821 (= e!4690698 tp_is_empty!53489)))

(declare-fun b!7951823 () Bool)

(declare-fun tp!2366667 () Bool)

(assert (=> b!7951823 (= e!4690698 tp!2366667)))

(declare-fun b!7951822 () Bool)

(declare-fun tp!2366666 () Bool)

(declare-fun tp!2366668 () Bool)

(assert (=> b!7951822 (= e!4690698 (and tp!2366666 tp!2366668))))

(assert (= (and b!7951478 ((_ is ElementMatch!21473) (regOne!43458 (regOne!43459 baseR!116)))) b!7951821))

(assert (= (and b!7951478 ((_ is Concat!30472) (regOne!43458 (regOne!43459 baseR!116)))) b!7951822))

(assert (= (and b!7951478 ((_ is Star!21473) (regOne!43458 (regOne!43459 baseR!116)))) b!7951823))

(assert (= (and b!7951478 ((_ is Union!21473) (regOne!43458 (regOne!43459 baseR!116)))) b!7951824))

(declare-fun e!4690699 () Bool)

(assert (=> b!7951478 (= tp!2366555 e!4690699)))

(declare-fun b!7951828 () Bool)

(declare-fun tp!2366674 () Bool)

(declare-fun tp!2366675 () Bool)

(assert (=> b!7951828 (= e!4690699 (and tp!2366674 tp!2366675))))

(declare-fun b!7951825 () Bool)

(assert (=> b!7951825 (= e!4690699 tp_is_empty!53489)))

(declare-fun b!7951827 () Bool)

(declare-fun tp!2366672 () Bool)

(assert (=> b!7951827 (= e!4690699 tp!2366672)))

(declare-fun b!7951826 () Bool)

(declare-fun tp!2366671 () Bool)

(declare-fun tp!2366673 () Bool)

(assert (=> b!7951826 (= e!4690699 (and tp!2366671 tp!2366673))))

(assert (= (and b!7951478 ((_ is ElementMatch!21473) (regTwo!43458 (regOne!43459 baseR!116)))) b!7951825))

(assert (= (and b!7951478 ((_ is Concat!30472) (regTwo!43458 (regOne!43459 baseR!116)))) b!7951826))

(assert (= (and b!7951478 ((_ is Star!21473) (regTwo!43458 (regOne!43459 baseR!116)))) b!7951827))

(assert (= (and b!7951478 ((_ is Union!21473) (regTwo!43458 (regOne!43459 baseR!116)))) b!7951828))

(declare-fun e!4690700 () Bool)

(assert (=> b!7951466 (= tp!2366538 e!4690700)))

(declare-fun b!7951832 () Bool)

(declare-fun tp!2366679 () Bool)

(declare-fun tp!2366680 () Bool)

(assert (=> b!7951832 (= e!4690700 (and tp!2366679 tp!2366680))))

(declare-fun b!7951829 () Bool)

(assert (=> b!7951829 (= e!4690700 tp_is_empty!53489)))

(declare-fun b!7951831 () Bool)

(declare-fun tp!2366677 () Bool)

(assert (=> b!7951831 (= e!4690700 tp!2366677)))

(declare-fun b!7951830 () Bool)

(declare-fun tp!2366676 () Bool)

(declare-fun tp!2366678 () Bool)

(assert (=> b!7951830 (= e!4690700 (and tp!2366676 tp!2366678))))

(assert (= (and b!7951466 ((_ is ElementMatch!21473) (regOne!43458 (regOne!43459 r!24602)))) b!7951829))

(assert (= (and b!7951466 ((_ is Concat!30472) (regOne!43458 (regOne!43459 r!24602)))) b!7951830))

(assert (= (and b!7951466 ((_ is Star!21473) (regOne!43458 (regOne!43459 r!24602)))) b!7951831))

(assert (= (and b!7951466 ((_ is Union!21473) (regOne!43458 (regOne!43459 r!24602)))) b!7951832))

(declare-fun e!4690701 () Bool)

(assert (=> b!7951466 (= tp!2366540 e!4690701)))

(declare-fun b!7951836 () Bool)

(declare-fun tp!2366684 () Bool)

(declare-fun tp!2366685 () Bool)

(assert (=> b!7951836 (= e!4690701 (and tp!2366684 tp!2366685))))

(declare-fun b!7951833 () Bool)

(assert (=> b!7951833 (= e!4690701 tp_is_empty!53489)))

(declare-fun b!7951835 () Bool)

(declare-fun tp!2366682 () Bool)

(assert (=> b!7951835 (= e!4690701 tp!2366682)))

(declare-fun b!7951834 () Bool)

(declare-fun tp!2366681 () Bool)

(declare-fun tp!2366683 () Bool)

(assert (=> b!7951834 (= e!4690701 (and tp!2366681 tp!2366683))))

(assert (= (and b!7951466 ((_ is ElementMatch!21473) (regTwo!43458 (regOne!43459 r!24602)))) b!7951833))

(assert (= (and b!7951466 ((_ is Concat!30472) (regTwo!43458 (regOne!43459 r!24602)))) b!7951834))

(assert (= (and b!7951466 ((_ is Star!21473) (regTwo!43458 (regOne!43459 r!24602)))) b!7951835))

(assert (= (and b!7951466 ((_ is Union!21473) (regTwo!43458 (regOne!43459 r!24602)))) b!7951836))

(declare-fun e!4690702 () Bool)

(assert (=> b!7951467 (= tp!2366539 e!4690702)))

(declare-fun b!7951840 () Bool)

(declare-fun tp!2366689 () Bool)

(declare-fun tp!2366690 () Bool)

(assert (=> b!7951840 (= e!4690702 (and tp!2366689 tp!2366690))))

(declare-fun b!7951837 () Bool)

(assert (=> b!7951837 (= e!4690702 tp_is_empty!53489)))

(declare-fun b!7951839 () Bool)

(declare-fun tp!2366687 () Bool)

(assert (=> b!7951839 (= e!4690702 tp!2366687)))

(declare-fun b!7951838 () Bool)

(declare-fun tp!2366686 () Bool)

(declare-fun tp!2366688 () Bool)

(assert (=> b!7951838 (= e!4690702 (and tp!2366686 tp!2366688))))

(assert (= (and b!7951467 ((_ is ElementMatch!21473) (reg!21802 (regOne!43459 r!24602)))) b!7951837))

(assert (= (and b!7951467 ((_ is Concat!30472) (reg!21802 (regOne!43459 r!24602)))) b!7951838))

(assert (= (and b!7951467 ((_ is Star!21473) (reg!21802 (regOne!43459 r!24602)))) b!7951839))

(assert (= (and b!7951467 ((_ is Union!21473) (reg!21802 (regOne!43459 r!24602)))) b!7951840))

(declare-fun e!4690703 () Bool)

(assert (=> b!7951458 (= tp!2366528 e!4690703)))

(declare-fun b!7951844 () Bool)

(declare-fun tp!2366694 () Bool)

(declare-fun tp!2366695 () Bool)

(assert (=> b!7951844 (= e!4690703 (and tp!2366694 tp!2366695))))

(declare-fun b!7951841 () Bool)

(assert (=> b!7951841 (= e!4690703 tp_is_empty!53489)))

(declare-fun b!7951843 () Bool)

(declare-fun tp!2366692 () Bool)

(assert (=> b!7951843 (= e!4690703 tp!2366692)))

(declare-fun b!7951842 () Bool)

(declare-fun tp!2366691 () Bool)

(declare-fun tp!2366693 () Bool)

(assert (=> b!7951842 (= e!4690703 (and tp!2366691 tp!2366693))))

(assert (= (and b!7951458 ((_ is ElementMatch!21473) (regOne!43458 (regOne!43458 baseR!116)))) b!7951841))

(assert (= (and b!7951458 ((_ is Concat!30472) (regOne!43458 (regOne!43458 baseR!116)))) b!7951842))

(assert (= (and b!7951458 ((_ is Star!21473) (regOne!43458 (regOne!43458 baseR!116)))) b!7951843))

(assert (= (and b!7951458 ((_ is Union!21473) (regOne!43458 (regOne!43458 baseR!116)))) b!7951844))

(declare-fun e!4690704 () Bool)

(assert (=> b!7951458 (= tp!2366530 e!4690704)))

(declare-fun b!7951848 () Bool)

(declare-fun tp!2366699 () Bool)

(declare-fun tp!2366700 () Bool)

(assert (=> b!7951848 (= e!4690704 (and tp!2366699 tp!2366700))))

(declare-fun b!7951845 () Bool)

(assert (=> b!7951845 (= e!4690704 tp_is_empty!53489)))

(declare-fun b!7951847 () Bool)

(declare-fun tp!2366697 () Bool)

(assert (=> b!7951847 (= e!4690704 tp!2366697)))

(declare-fun b!7951846 () Bool)

(declare-fun tp!2366696 () Bool)

(declare-fun tp!2366698 () Bool)

(assert (=> b!7951846 (= e!4690704 (and tp!2366696 tp!2366698))))

(assert (= (and b!7951458 ((_ is ElementMatch!21473) (regTwo!43458 (regOne!43458 baseR!116)))) b!7951845))

(assert (= (and b!7951458 ((_ is Concat!30472) (regTwo!43458 (regOne!43458 baseR!116)))) b!7951846))

(assert (= (and b!7951458 ((_ is Star!21473) (regTwo!43458 (regOne!43458 baseR!116)))) b!7951847))

(assert (= (and b!7951458 ((_ is Union!21473) (regTwo!43458 (regOne!43458 baseR!116)))) b!7951848))

(declare-fun e!4690705 () Bool)

(assert (=> b!7951468 (= tp!2366541 e!4690705)))

(declare-fun b!7951852 () Bool)

(declare-fun tp!2366704 () Bool)

(declare-fun tp!2366705 () Bool)

(assert (=> b!7951852 (= e!4690705 (and tp!2366704 tp!2366705))))

(declare-fun b!7951849 () Bool)

(assert (=> b!7951849 (= e!4690705 tp_is_empty!53489)))

(declare-fun b!7951851 () Bool)

(declare-fun tp!2366702 () Bool)

(assert (=> b!7951851 (= e!4690705 tp!2366702)))

(declare-fun b!7951850 () Bool)

(declare-fun tp!2366701 () Bool)

(declare-fun tp!2366703 () Bool)

(assert (=> b!7951850 (= e!4690705 (and tp!2366701 tp!2366703))))

(assert (= (and b!7951468 ((_ is ElementMatch!21473) (regOne!43459 (regOne!43459 r!24602)))) b!7951849))

(assert (= (and b!7951468 ((_ is Concat!30472) (regOne!43459 (regOne!43459 r!24602)))) b!7951850))

(assert (= (and b!7951468 ((_ is Star!21473) (regOne!43459 (regOne!43459 r!24602)))) b!7951851))

(assert (= (and b!7951468 ((_ is Union!21473) (regOne!43459 (regOne!43459 r!24602)))) b!7951852))

(declare-fun e!4690706 () Bool)

(assert (=> b!7951468 (= tp!2366542 e!4690706)))

(declare-fun b!7951856 () Bool)

(declare-fun tp!2366709 () Bool)

(declare-fun tp!2366710 () Bool)

(assert (=> b!7951856 (= e!4690706 (and tp!2366709 tp!2366710))))

(declare-fun b!7951853 () Bool)

(assert (=> b!7951853 (= e!4690706 tp_is_empty!53489)))

(declare-fun b!7951855 () Bool)

(declare-fun tp!2366707 () Bool)

(assert (=> b!7951855 (= e!4690706 tp!2366707)))

(declare-fun b!7951854 () Bool)

(declare-fun tp!2366706 () Bool)

(declare-fun tp!2366708 () Bool)

(assert (=> b!7951854 (= e!4690706 (and tp!2366706 tp!2366708))))

(assert (= (and b!7951468 ((_ is ElementMatch!21473) (regTwo!43459 (regOne!43459 r!24602)))) b!7951853))

(assert (= (and b!7951468 ((_ is Concat!30472) (regTwo!43459 (regOne!43459 r!24602)))) b!7951854))

(assert (= (and b!7951468 ((_ is Star!21473) (regTwo!43459 (regOne!43459 r!24602)))) b!7951855))

(assert (= (and b!7951468 ((_ is Union!21473) (regTwo!43459 (regOne!43459 r!24602)))) b!7951856))

(declare-fun e!4690707 () Bool)

(assert (=> b!7951459 (= tp!2366529 e!4690707)))

(declare-fun b!7951860 () Bool)

(declare-fun tp!2366714 () Bool)

(declare-fun tp!2366715 () Bool)

(assert (=> b!7951860 (= e!4690707 (and tp!2366714 tp!2366715))))

(declare-fun b!7951857 () Bool)

(assert (=> b!7951857 (= e!4690707 tp_is_empty!53489)))

(declare-fun b!7951859 () Bool)

(declare-fun tp!2366712 () Bool)

(assert (=> b!7951859 (= e!4690707 tp!2366712)))

(declare-fun b!7951858 () Bool)

(declare-fun tp!2366711 () Bool)

(declare-fun tp!2366713 () Bool)

(assert (=> b!7951858 (= e!4690707 (and tp!2366711 tp!2366713))))

(assert (= (and b!7951459 ((_ is ElementMatch!21473) (reg!21802 (regOne!43458 baseR!116)))) b!7951857))

(assert (= (and b!7951459 ((_ is Concat!30472) (reg!21802 (regOne!43458 baseR!116)))) b!7951858))

(assert (= (and b!7951459 ((_ is Star!21473) (reg!21802 (regOne!43458 baseR!116)))) b!7951859))

(assert (= (and b!7951459 ((_ is Union!21473) (reg!21802 (regOne!43458 baseR!116)))) b!7951860))

(declare-fun e!4690708 () Bool)

(assert (=> b!7951450 (= tp!2366518 e!4690708)))

(declare-fun b!7951864 () Bool)

(declare-fun tp!2366719 () Bool)

(declare-fun tp!2366720 () Bool)

(assert (=> b!7951864 (= e!4690708 (and tp!2366719 tp!2366720))))

(declare-fun b!7951861 () Bool)

(assert (=> b!7951861 (= e!4690708 tp_is_empty!53489)))

(declare-fun b!7951863 () Bool)

(declare-fun tp!2366717 () Bool)

(assert (=> b!7951863 (= e!4690708 tp!2366717)))

(declare-fun b!7951862 () Bool)

(declare-fun tp!2366716 () Bool)

(declare-fun tp!2366718 () Bool)

(assert (=> b!7951862 (= e!4690708 (and tp!2366716 tp!2366718))))

(assert (= (and b!7951450 ((_ is ElementMatch!21473) (regOne!43458 (regTwo!43458 r!24602)))) b!7951861))

(assert (= (and b!7951450 ((_ is Concat!30472) (regOne!43458 (regTwo!43458 r!24602)))) b!7951862))

(assert (= (and b!7951450 ((_ is Star!21473) (regOne!43458 (regTwo!43458 r!24602)))) b!7951863))

(assert (= (and b!7951450 ((_ is Union!21473) (regOne!43458 (regTwo!43458 r!24602)))) b!7951864))

(declare-fun e!4690709 () Bool)

(assert (=> b!7951450 (= tp!2366520 e!4690709)))

(declare-fun b!7951868 () Bool)

(declare-fun tp!2366724 () Bool)

(declare-fun tp!2366725 () Bool)

(assert (=> b!7951868 (= e!4690709 (and tp!2366724 tp!2366725))))

(declare-fun b!7951865 () Bool)

(assert (=> b!7951865 (= e!4690709 tp_is_empty!53489)))

(declare-fun b!7951867 () Bool)

(declare-fun tp!2366722 () Bool)

(assert (=> b!7951867 (= e!4690709 tp!2366722)))

(declare-fun b!7951866 () Bool)

(declare-fun tp!2366721 () Bool)

(declare-fun tp!2366723 () Bool)

(assert (=> b!7951866 (= e!4690709 (and tp!2366721 tp!2366723))))

(assert (= (and b!7951450 ((_ is ElementMatch!21473) (regTwo!43458 (regTwo!43458 r!24602)))) b!7951865))

(assert (= (and b!7951450 ((_ is Concat!30472) (regTwo!43458 (regTwo!43458 r!24602)))) b!7951866))

(assert (= (and b!7951450 ((_ is Star!21473) (regTwo!43458 (regTwo!43458 r!24602)))) b!7951867))

(assert (= (and b!7951450 ((_ is Union!21473) (regTwo!43458 (regTwo!43458 r!24602)))) b!7951868))

(declare-fun e!4690710 () Bool)

(assert (=> b!7951460 (= tp!2366531 e!4690710)))

(declare-fun b!7951872 () Bool)

(declare-fun tp!2366729 () Bool)

(declare-fun tp!2366730 () Bool)

(assert (=> b!7951872 (= e!4690710 (and tp!2366729 tp!2366730))))

(declare-fun b!7951869 () Bool)

(assert (=> b!7951869 (= e!4690710 tp_is_empty!53489)))

(declare-fun b!7951871 () Bool)

(declare-fun tp!2366727 () Bool)

(assert (=> b!7951871 (= e!4690710 tp!2366727)))

(declare-fun b!7951870 () Bool)

(declare-fun tp!2366726 () Bool)

(declare-fun tp!2366728 () Bool)

(assert (=> b!7951870 (= e!4690710 (and tp!2366726 tp!2366728))))

(assert (= (and b!7951460 ((_ is ElementMatch!21473) (regOne!43459 (regOne!43458 baseR!116)))) b!7951869))

(assert (= (and b!7951460 ((_ is Concat!30472) (regOne!43459 (regOne!43458 baseR!116)))) b!7951870))

(assert (= (and b!7951460 ((_ is Star!21473) (regOne!43459 (regOne!43458 baseR!116)))) b!7951871))

(assert (= (and b!7951460 ((_ is Union!21473) (regOne!43459 (regOne!43458 baseR!116)))) b!7951872))

(declare-fun e!4690711 () Bool)

(assert (=> b!7951460 (= tp!2366532 e!4690711)))

(declare-fun b!7951876 () Bool)

(declare-fun tp!2366734 () Bool)

(declare-fun tp!2366735 () Bool)

(assert (=> b!7951876 (= e!4690711 (and tp!2366734 tp!2366735))))

(declare-fun b!7951873 () Bool)

(assert (=> b!7951873 (= e!4690711 tp_is_empty!53489)))

(declare-fun b!7951875 () Bool)

(declare-fun tp!2366732 () Bool)

(assert (=> b!7951875 (= e!4690711 tp!2366732)))

(declare-fun b!7951874 () Bool)

(declare-fun tp!2366731 () Bool)

(declare-fun tp!2366733 () Bool)

(assert (=> b!7951874 (= e!4690711 (and tp!2366731 tp!2366733))))

(assert (= (and b!7951460 ((_ is ElementMatch!21473) (regTwo!43459 (regOne!43458 baseR!116)))) b!7951873))

(assert (= (and b!7951460 ((_ is Concat!30472) (regTwo!43459 (regOne!43458 baseR!116)))) b!7951874))

(assert (= (and b!7951460 ((_ is Star!21473) (regTwo!43459 (regOne!43458 baseR!116)))) b!7951875))

(assert (= (and b!7951460 ((_ is Union!21473) (regTwo!43459 (regOne!43458 baseR!116)))) b!7951876))

(declare-fun e!4690712 () Bool)

(assert (=> b!7951451 (= tp!2366519 e!4690712)))

(declare-fun b!7951880 () Bool)

(declare-fun tp!2366739 () Bool)

(declare-fun tp!2366740 () Bool)

(assert (=> b!7951880 (= e!4690712 (and tp!2366739 tp!2366740))))

(declare-fun b!7951877 () Bool)

(assert (=> b!7951877 (= e!4690712 tp_is_empty!53489)))

(declare-fun b!7951879 () Bool)

(declare-fun tp!2366737 () Bool)

(assert (=> b!7951879 (= e!4690712 tp!2366737)))

(declare-fun b!7951878 () Bool)

(declare-fun tp!2366736 () Bool)

(declare-fun tp!2366738 () Bool)

(assert (=> b!7951878 (= e!4690712 (and tp!2366736 tp!2366738))))

(assert (= (and b!7951451 ((_ is ElementMatch!21473) (reg!21802 (regTwo!43458 r!24602)))) b!7951877))

(assert (= (and b!7951451 ((_ is Concat!30472) (reg!21802 (regTwo!43458 r!24602)))) b!7951878))

(assert (= (and b!7951451 ((_ is Star!21473) (reg!21802 (regTwo!43458 r!24602)))) b!7951879))

(assert (= (and b!7951451 ((_ is Union!21473) (reg!21802 (regTwo!43458 r!24602)))) b!7951880))

(declare-fun e!4690713 () Bool)

(assert (=> b!7951447 (= tp!2366514 e!4690713)))

(declare-fun b!7951884 () Bool)

(declare-fun tp!2366744 () Bool)

(declare-fun tp!2366745 () Bool)

(assert (=> b!7951884 (= e!4690713 (and tp!2366744 tp!2366745))))

(declare-fun b!7951881 () Bool)

(assert (=> b!7951881 (= e!4690713 tp_is_empty!53489)))

(declare-fun b!7951883 () Bool)

(declare-fun tp!2366742 () Bool)

(assert (=> b!7951883 (= e!4690713 tp!2366742)))

(declare-fun b!7951882 () Bool)

(declare-fun tp!2366741 () Bool)

(declare-fun tp!2366743 () Bool)

(assert (=> b!7951882 (= e!4690713 (and tp!2366741 tp!2366743))))

(assert (= (and b!7951447 ((_ is ElementMatch!21473) (reg!21802 (regOne!43458 r!24602)))) b!7951881))

(assert (= (and b!7951447 ((_ is Concat!30472) (reg!21802 (regOne!43458 r!24602)))) b!7951882))

(assert (= (and b!7951447 ((_ is Star!21473) (reg!21802 (regOne!43458 r!24602)))) b!7951883))

(assert (= (and b!7951447 ((_ is Union!21473) (reg!21802 (regOne!43458 r!24602)))) b!7951884))

(declare-fun b!7951885 () Bool)

(declare-fun e!4690714 () Bool)

(declare-fun tp!2366746 () Bool)

(assert (=> b!7951885 (= e!4690714 (and tp_is_empty!53489 tp!2366746))))

(assert (=> b!7951489 (= tp!2366565 e!4690714)))

(assert (= (and b!7951489 ((_ is Cons!74578) (t!390445 (t!390445 input!7927)))) b!7951885))

(declare-fun e!4690715 () Bool)

(assert (=> b!7951448 (= tp!2366516 e!4690715)))

(declare-fun b!7951889 () Bool)

(declare-fun tp!2366750 () Bool)

(declare-fun tp!2366751 () Bool)

(assert (=> b!7951889 (= e!4690715 (and tp!2366750 tp!2366751))))

(declare-fun b!7951886 () Bool)

(assert (=> b!7951886 (= e!4690715 tp_is_empty!53489)))

(declare-fun b!7951888 () Bool)

(declare-fun tp!2366748 () Bool)

(assert (=> b!7951888 (= e!4690715 tp!2366748)))

(declare-fun b!7951887 () Bool)

(declare-fun tp!2366747 () Bool)

(declare-fun tp!2366749 () Bool)

(assert (=> b!7951887 (= e!4690715 (and tp!2366747 tp!2366749))))

(assert (= (and b!7951448 ((_ is ElementMatch!21473) (regOne!43459 (regOne!43458 r!24602)))) b!7951886))

(assert (= (and b!7951448 ((_ is Concat!30472) (regOne!43459 (regOne!43458 r!24602)))) b!7951887))

(assert (= (and b!7951448 ((_ is Star!21473) (regOne!43459 (regOne!43458 r!24602)))) b!7951888))

(assert (= (and b!7951448 ((_ is Union!21473) (regOne!43459 (regOne!43458 r!24602)))) b!7951889))

(declare-fun e!4690716 () Bool)

(assert (=> b!7951448 (= tp!2366517 e!4690716)))

(declare-fun b!7951893 () Bool)

(declare-fun tp!2366755 () Bool)

(declare-fun tp!2366756 () Bool)

(assert (=> b!7951893 (= e!4690716 (and tp!2366755 tp!2366756))))

(declare-fun b!7951890 () Bool)

(assert (=> b!7951890 (= e!4690716 tp_is_empty!53489)))

(declare-fun b!7951892 () Bool)

(declare-fun tp!2366753 () Bool)

(assert (=> b!7951892 (= e!4690716 tp!2366753)))

(declare-fun b!7951891 () Bool)

(declare-fun tp!2366752 () Bool)

(declare-fun tp!2366754 () Bool)

(assert (=> b!7951891 (= e!4690716 (and tp!2366752 tp!2366754))))

(assert (= (and b!7951448 ((_ is ElementMatch!21473) (regTwo!43459 (regOne!43458 r!24602)))) b!7951890))

(assert (= (and b!7951448 ((_ is Concat!30472) (regTwo!43459 (regOne!43458 r!24602)))) b!7951891))

(assert (= (and b!7951448 ((_ is Star!21473) (regTwo!43459 (regOne!43458 r!24602)))) b!7951892))

(assert (= (and b!7951448 ((_ is Union!21473) (regTwo!43459 (regOne!43458 r!24602)))) b!7951893))

(declare-fun e!4690717 () Bool)

(assert (=> b!7951472 (= tp!2366546 e!4690717)))

(declare-fun b!7951897 () Bool)

(declare-fun tp!2366760 () Bool)

(declare-fun tp!2366761 () Bool)

(assert (=> b!7951897 (= e!4690717 (and tp!2366760 tp!2366761))))

(declare-fun b!7951894 () Bool)

(assert (=> b!7951894 (= e!4690717 tp_is_empty!53489)))

(declare-fun b!7951896 () Bool)

(declare-fun tp!2366758 () Bool)

(assert (=> b!7951896 (= e!4690717 tp!2366758)))

(declare-fun b!7951895 () Bool)

(declare-fun tp!2366757 () Bool)

(declare-fun tp!2366759 () Bool)

(assert (=> b!7951895 (= e!4690717 (and tp!2366757 tp!2366759))))

(assert (= (and b!7951472 ((_ is ElementMatch!21473) (regOne!43459 (regTwo!43459 r!24602)))) b!7951894))

(assert (= (and b!7951472 ((_ is Concat!30472) (regOne!43459 (regTwo!43459 r!24602)))) b!7951895))

(assert (= (and b!7951472 ((_ is Star!21473) (regOne!43459 (regTwo!43459 r!24602)))) b!7951896))

(assert (= (and b!7951472 ((_ is Union!21473) (regOne!43459 (regTwo!43459 r!24602)))) b!7951897))

(declare-fun e!4690718 () Bool)

(assert (=> b!7951472 (= tp!2366547 e!4690718)))

(declare-fun b!7951901 () Bool)

(declare-fun tp!2366765 () Bool)

(declare-fun tp!2366766 () Bool)

(assert (=> b!7951901 (= e!4690718 (and tp!2366765 tp!2366766))))

(declare-fun b!7951898 () Bool)

(assert (=> b!7951898 (= e!4690718 tp_is_empty!53489)))

(declare-fun b!7951900 () Bool)

(declare-fun tp!2366763 () Bool)

(assert (=> b!7951900 (= e!4690718 tp!2366763)))

(declare-fun b!7951899 () Bool)

(declare-fun tp!2366762 () Bool)

(declare-fun tp!2366764 () Bool)

(assert (=> b!7951899 (= e!4690718 (and tp!2366762 tp!2366764))))

(assert (= (and b!7951472 ((_ is ElementMatch!21473) (regTwo!43459 (regTwo!43459 r!24602)))) b!7951898))

(assert (= (and b!7951472 ((_ is Concat!30472) (regTwo!43459 (regTwo!43459 r!24602)))) b!7951899))

(assert (= (and b!7951472 ((_ is Star!21473) (regTwo!43459 (regTwo!43459 r!24602)))) b!7951900))

(assert (= (and b!7951472 ((_ is Union!21473) (regTwo!43459 (regTwo!43459 r!24602)))) b!7951901))

(declare-fun e!4690719 () Bool)

(assert (=> b!7951471 (= tp!2366544 e!4690719)))

(declare-fun b!7951905 () Bool)

(declare-fun tp!2366770 () Bool)

(declare-fun tp!2366771 () Bool)

(assert (=> b!7951905 (= e!4690719 (and tp!2366770 tp!2366771))))

(declare-fun b!7951902 () Bool)

(assert (=> b!7951902 (= e!4690719 tp_is_empty!53489)))

(declare-fun b!7951904 () Bool)

(declare-fun tp!2366768 () Bool)

(assert (=> b!7951904 (= e!4690719 tp!2366768)))

(declare-fun b!7951903 () Bool)

(declare-fun tp!2366767 () Bool)

(declare-fun tp!2366769 () Bool)

(assert (=> b!7951903 (= e!4690719 (and tp!2366767 tp!2366769))))

(assert (= (and b!7951471 ((_ is ElementMatch!21473) (reg!21802 (regTwo!43459 r!24602)))) b!7951902))

(assert (= (and b!7951471 ((_ is Concat!30472) (reg!21802 (regTwo!43459 r!24602)))) b!7951903))

(assert (= (and b!7951471 ((_ is Star!21473) (reg!21802 (regTwo!43459 r!24602)))) b!7951904))

(assert (= (and b!7951471 ((_ is Union!21473) (reg!21802 (regTwo!43459 r!24602)))) b!7951905))

(declare-fun e!4690720 () Bool)

(assert (=> b!7951480 (= tp!2366556 e!4690720)))

(declare-fun b!7951909 () Bool)

(declare-fun tp!2366775 () Bool)

(declare-fun tp!2366776 () Bool)

(assert (=> b!7951909 (= e!4690720 (and tp!2366775 tp!2366776))))

(declare-fun b!7951906 () Bool)

(assert (=> b!7951906 (= e!4690720 tp_is_empty!53489)))

(declare-fun b!7951908 () Bool)

(declare-fun tp!2366773 () Bool)

(assert (=> b!7951908 (= e!4690720 tp!2366773)))

(declare-fun b!7951907 () Bool)

(declare-fun tp!2366772 () Bool)

(declare-fun tp!2366774 () Bool)

(assert (=> b!7951907 (= e!4690720 (and tp!2366772 tp!2366774))))

(assert (= (and b!7951480 ((_ is ElementMatch!21473) (regOne!43459 (regOne!43459 baseR!116)))) b!7951906))

(assert (= (and b!7951480 ((_ is Concat!30472) (regOne!43459 (regOne!43459 baseR!116)))) b!7951907))

(assert (= (and b!7951480 ((_ is Star!21473) (regOne!43459 (regOne!43459 baseR!116)))) b!7951908))

(assert (= (and b!7951480 ((_ is Union!21473) (regOne!43459 (regOne!43459 baseR!116)))) b!7951909))

(declare-fun e!4690721 () Bool)

(assert (=> b!7951480 (= tp!2366557 e!4690721)))

(declare-fun b!7951913 () Bool)

(declare-fun tp!2366780 () Bool)

(declare-fun tp!2366781 () Bool)

(assert (=> b!7951913 (= e!4690721 (and tp!2366780 tp!2366781))))

(declare-fun b!7951910 () Bool)

(assert (=> b!7951910 (= e!4690721 tp_is_empty!53489)))

(declare-fun b!7951912 () Bool)

(declare-fun tp!2366778 () Bool)

(assert (=> b!7951912 (= e!4690721 tp!2366778)))

(declare-fun b!7951911 () Bool)

(declare-fun tp!2366777 () Bool)

(declare-fun tp!2366779 () Bool)

(assert (=> b!7951911 (= e!4690721 (and tp!2366777 tp!2366779))))

(assert (= (and b!7951480 ((_ is ElementMatch!21473) (regTwo!43459 (regOne!43459 baseR!116)))) b!7951910))

(assert (= (and b!7951480 ((_ is Concat!30472) (regTwo!43459 (regOne!43459 baseR!116)))) b!7951911))

(assert (= (and b!7951480 ((_ is Star!21473) (regTwo!43459 (regOne!43459 baseR!116)))) b!7951912))

(assert (= (and b!7951480 ((_ is Union!21473) (regTwo!43459 (regOne!43459 baseR!116)))) b!7951913))

(declare-fun e!4690722 () Bool)

(assert (=> b!7951470 (= tp!2366543 e!4690722)))

(declare-fun b!7951917 () Bool)

(declare-fun tp!2366785 () Bool)

(declare-fun tp!2366786 () Bool)

(assert (=> b!7951917 (= e!4690722 (and tp!2366785 tp!2366786))))

(declare-fun b!7951914 () Bool)

(assert (=> b!7951914 (= e!4690722 tp_is_empty!53489)))

(declare-fun b!7951916 () Bool)

(declare-fun tp!2366783 () Bool)

(assert (=> b!7951916 (= e!4690722 tp!2366783)))

(declare-fun b!7951915 () Bool)

(declare-fun tp!2366782 () Bool)

(declare-fun tp!2366784 () Bool)

(assert (=> b!7951915 (= e!4690722 (and tp!2366782 tp!2366784))))

(assert (= (and b!7951470 ((_ is ElementMatch!21473) (regOne!43458 (regTwo!43459 r!24602)))) b!7951914))

(assert (= (and b!7951470 ((_ is Concat!30472) (regOne!43458 (regTwo!43459 r!24602)))) b!7951915))

(assert (= (and b!7951470 ((_ is Star!21473) (regOne!43458 (regTwo!43459 r!24602)))) b!7951916))

(assert (= (and b!7951470 ((_ is Union!21473) (regOne!43458 (regTwo!43459 r!24602)))) b!7951917))

(declare-fun e!4690723 () Bool)

(assert (=> b!7951470 (= tp!2366545 e!4690723)))

(declare-fun b!7951921 () Bool)

(declare-fun tp!2366790 () Bool)

(declare-fun tp!2366791 () Bool)

(assert (=> b!7951921 (= e!4690723 (and tp!2366790 tp!2366791))))

(declare-fun b!7951918 () Bool)

(assert (=> b!7951918 (= e!4690723 tp_is_empty!53489)))

(declare-fun b!7951920 () Bool)

(declare-fun tp!2366788 () Bool)

(assert (=> b!7951920 (= e!4690723 tp!2366788)))

(declare-fun b!7951919 () Bool)

(declare-fun tp!2366787 () Bool)

(declare-fun tp!2366789 () Bool)

(assert (=> b!7951919 (= e!4690723 (and tp!2366787 tp!2366789))))

(assert (= (and b!7951470 ((_ is ElementMatch!21473) (regTwo!43458 (regTwo!43459 r!24602)))) b!7951918))

(assert (= (and b!7951470 ((_ is Concat!30472) (regTwo!43458 (regTwo!43459 r!24602)))) b!7951919))

(assert (= (and b!7951470 ((_ is Star!21473) (regTwo!43458 (regTwo!43459 r!24602)))) b!7951920))

(assert (= (and b!7951470 ((_ is Union!21473) (regTwo!43458 (regTwo!43459 r!24602)))) b!7951921))

(declare-fun e!4690724 () Bool)

(assert (=> b!7951479 (= tp!2366554 e!4690724)))

(declare-fun b!7951925 () Bool)

(declare-fun tp!2366795 () Bool)

(declare-fun tp!2366796 () Bool)

(assert (=> b!7951925 (= e!4690724 (and tp!2366795 tp!2366796))))

(declare-fun b!7951922 () Bool)

(assert (=> b!7951922 (= e!4690724 tp_is_empty!53489)))

(declare-fun b!7951924 () Bool)

(declare-fun tp!2366793 () Bool)

(assert (=> b!7951924 (= e!4690724 tp!2366793)))

(declare-fun b!7951923 () Bool)

(declare-fun tp!2366792 () Bool)

(declare-fun tp!2366794 () Bool)

(assert (=> b!7951923 (= e!4690724 (and tp!2366792 tp!2366794))))

(assert (= (and b!7951479 ((_ is ElementMatch!21473) (reg!21802 (regOne!43459 baseR!116)))) b!7951922))

(assert (= (and b!7951479 ((_ is Concat!30472) (reg!21802 (regOne!43459 baseR!116)))) b!7951923))

(assert (= (and b!7951479 ((_ is Star!21473) (reg!21802 (regOne!43459 baseR!116)))) b!7951924))

(assert (= (and b!7951479 ((_ is Union!21473) (reg!21802 (regOne!43459 baseR!116)))) b!7951925))

(declare-fun e!4690725 () Bool)

(assert (=> b!7951474 (= tp!2366548 e!4690725)))

(declare-fun b!7951929 () Bool)

(declare-fun tp!2366800 () Bool)

(declare-fun tp!2366801 () Bool)

(assert (=> b!7951929 (= e!4690725 (and tp!2366800 tp!2366801))))

(declare-fun b!7951926 () Bool)

(assert (=> b!7951926 (= e!4690725 tp_is_empty!53489)))

(declare-fun b!7951928 () Bool)

(declare-fun tp!2366798 () Bool)

(assert (=> b!7951928 (= e!4690725 tp!2366798)))

(declare-fun b!7951927 () Bool)

(declare-fun tp!2366797 () Bool)

(declare-fun tp!2366799 () Bool)

(assert (=> b!7951927 (= e!4690725 (and tp!2366797 tp!2366799))))

(assert (= (and b!7951474 ((_ is ElementMatch!21473) (regOne!43458 (reg!21802 baseR!116)))) b!7951926))

(assert (= (and b!7951474 ((_ is Concat!30472) (regOne!43458 (reg!21802 baseR!116)))) b!7951927))

(assert (= (and b!7951474 ((_ is Star!21473) (regOne!43458 (reg!21802 baseR!116)))) b!7951928))

(assert (= (and b!7951474 ((_ is Union!21473) (regOne!43458 (reg!21802 baseR!116)))) b!7951929))

(declare-fun e!4690726 () Bool)

(assert (=> b!7951474 (= tp!2366550 e!4690726)))

(declare-fun b!7951933 () Bool)

(declare-fun tp!2366805 () Bool)

(declare-fun tp!2366806 () Bool)

(assert (=> b!7951933 (= e!4690726 (and tp!2366805 tp!2366806))))

(declare-fun b!7951930 () Bool)

(assert (=> b!7951930 (= e!4690726 tp_is_empty!53489)))

(declare-fun b!7951932 () Bool)

(declare-fun tp!2366803 () Bool)

(assert (=> b!7951932 (= e!4690726 tp!2366803)))

(declare-fun b!7951931 () Bool)

(declare-fun tp!2366802 () Bool)

(declare-fun tp!2366804 () Bool)

(assert (=> b!7951931 (= e!4690726 (and tp!2366802 tp!2366804))))

(assert (= (and b!7951474 ((_ is ElementMatch!21473) (regTwo!43458 (reg!21802 baseR!116)))) b!7951930))

(assert (= (and b!7951474 ((_ is Concat!30472) (regTwo!43458 (reg!21802 baseR!116)))) b!7951931))

(assert (= (and b!7951474 ((_ is Star!21473) (regTwo!43458 (reg!21802 baseR!116)))) b!7951932))

(assert (= (and b!7951474 ((_ is Union!21473) (regTwo!43458 (reg!21802 baseR!116)))) b!7951933))

(declare-fun e!4690727 () Bool)

(assert (=> b!7951483 (= tp!2366559 e!4690727)))

(declare-fun b!7951937 () Bool)

(declare-fun tp!2366810 () Bool)

(declare-fun tp!2366811 () Bool)

(assert (=> b!7951937 (= e!4690727 (and tp!2366810 tp!2366811))))

(declare-fun b!7951934 () Bool)

(assert (=> b!7951934 (= e!4690727 tp_is_empty!53489)))

(declare-fun b!7951936 () Bool)

(declare-fun tp!2366808 () Bool)

(assert (=> b!7951936 (= e!4690727 tp!2366808)))

(declare-fun b!7951935 () Bool)

(declare-fun tp!2366807 () Bool)

(declare-fun tp!2366809 () Bool)

(assert (=> b!7951935 (= e!4690727 (and tp!2366807 tp!2366809))))

(assert (= (and b!7951483 ((_ is ElementMatch!21473) (reg!21802 (regTwo!43459 baseR!116)))) b!7951934))

(assert (= (and b!7951483 ((_ is Concat!30472) (reg!21802 (regTwo!43459 baseR!116)))) b!7951935))

(assert (= (and b!7951483 ((_ is Star!21473) (reg!21802 (regTwo!43459 baseR!116)))) b!7951936))

(assert (= (and b!7951483 ((_ is Union!21473) (reg!21802 (regTwo!43459 baseR!116)))) b!7951937))

(declare-fun e!4690728 () Bool)

(assert (=> b!7951482 (= tp!2366558 e!4690728)))

(declare-fun b!7951941 () Bool)

(declare-fun tp!2366815 () Bool)

(declare-fun tp!2366816 () Bool)

(assert (=> b!7951941 (= e!4690728 (and tp!2366815 tp!2366816))))

(declare-fun b!7951938 () Bool)

(assert (=> b!7951938 (= e!4690728 tp_is_empty!53489)))

(declare-fun b!7951940 () Bool)

(declare-fun tp!2366813 () Bool)

(assert (=> b!7951940 (= e!4690728 tp!2366813)))

(declare-fun b!7951939 () Bool)

(declare-fun tp!2366812 () Bool)

(declare-fun tp!2366814 () Bool)

(assert (=> b!7951939 (= e!4690728 (and tp!2366812 tp!2366814))))

(assert (= (and b!7951482 ((_ is ElementMatch!21473) (regOne!43458 (regTwo!43459 baseR!116)))) b!7951938))

(assert (= (and b!7951482 ((_ is Concat!30472) (regOne!43458 (regTwo!43459 baseR!116)))) b!7951939))

(assert (= (and b!7951482 ((_ is Star!21473) (regOne!43458 (regTwo!43459 baseR!116)))) b!7951940))

(assert (= (and b!7951482 ((_ is Union!21473) (regOne!43458 (regTwo!43459 baseR!116)))) b!7951941))

(declare-fun e!4690729 () Bool)

(assert (=> b!7951482 (= tp!2366560 e!4690729)))

(declare-fun b!7951945 () Bool)

(declare-fun tp!2366820 () Bool)

(declare-fun tp!2366821 () Bool)

(assert (=> b!7951945 (= e!4690729 (and tp!2366820 tp!2366821))))

(declare-fun b!7951942 () Bool)

(assert (=> b!7951942 (= e!4690729 tp_is_empty!53489)))

(declare-fun b!7951944 () Bool)

(declare-fun tp!2366818 () Bool)

(assert (=> b!7951944 (= e!4690729 tp!2366818)))

(declare-fun b!7951943 () Bool)

(declare-fun tp!2366817 () Bool)

(declare-fun tp!2366819 () Bool)

(assert (=> b!7951943 (= e!4690729 (and tp!2366817 tp!2366819))))

(assert (= (and b!7951482 ((_ is ElementMatch!21473) (regTwo!43458 (regTwo!43459 baseR!116)))) b!7951942))

(assert (= (and b!7951482 ((_ is Concat!30472) (regTwo!43458 (regTwo!43459 baseR!116)))) b!7951943))

(assert (= (and b!7951482 ((_ is Star!21473) (regTwo!43458 (regTwo!43459 baseR!116)))) b!7951944))

(assert (= (and b!7951482 ((_ is Union!21473) (regTwo!43458 (regTwo!43459 baseR!116)))) b!7951945))

(declare-fun e!4690730 () Bool)

(assert (=> b!7951462 (= tp!2366533 e!4690730)))

(declare-fun b!7951949 () Bool)

(declare-fun tp!2366825 () Bool)

(declare-fun tp!2366826 () Bool)

(assert (=> b!7951949 (= e!4690730 (and tp!2366825 tp!2366826))))

(declare-fun b!7951946 () Bool)

(assert (=> b!7951946 (= e!4690730 tp_is_empty!53489)))

(declare-fun b!7951948 () Bool)

(declare-fun tp!2366823 () Bool)

(assert (=> b!7951948 (= e!4690730 tp!2366823)))

(declare-fun b!7951947 () Bool)

(declare-fun tp!2366822 () Bool)

(declare-fun tp!2366824 () Bool)

(assert (=> b!7951947 (= e!4690730 (and tp!2366822 tp!2366824))))

(assert (= (and b!7951462 ((_ is ElementMatch!21473) (regOne!43458 (regTwo!43458 baseR!116)))) b!7951946))

(assert (= (and b!7951462 ((_ is Concat!30472) (regOne!43458 (regTwo!43458 baseR!116)))) b!7951947))

(assert (= (and b!7951462 ((_ is Star!21473) (regOne!43458 (regTwo!43458 baseR!116)))) b!7951948))

(assert (= (and b!7951462 ((_ is Union!21473) (regOne!43458 (regTwo!43458 baseR!116)))) b!7951949))

(declare-fun e!4690731 () Bool)

(assert (=> b!7951462 (= tp!2366535 e!4690731)))

(declare-fun b!7951953 () Bool)

(declare-fun tp!2366830 () Bool)

(declare-fun tp!2366831 () Bool)

(assert (=> b!7951953 (= e!4690731 (and tp!2366830 tp!2366831))))

(declare-fun b!7951950 () Bool)

(assert (=> b!7951950 (= e!4690731 tp_is_empty!53489)))

(declare-fun b!7951952 () Bool)

(declare-fun tp!2366828 () Bool)

(assert (=> b!7951952 (= e!4690731 tp!2366828)))

(declare-fun b!7951951 () Bool)

(declare-fun tp!2366827 () Bool)

(declare-fun tp!2366829 () Bool)

(assert (=> b!7951951 (= e!4690731 (and tp!2366827 tp!2366829))))

(assert (= (and b!7951462 ((_ is ElementMatch!21473) (regTwo!43458 (regTwo!43458 baseR!116)))) b!7951950))

(assert (= (and b!7951462 ((_ is Concat!30472) (regTwo!43458 (regTwo!43458 baseR!116)))) b!7951951))

(assert (= (and b!7951462 ((_ is Star!21473) (regTwo!43458 (regTwo!43458 baseR!116)))) b!7951952))

(assert (= (and b!7951462 ((_ is Union!21473) (regTwo!43458 (regTwo!43458 baseR!116)))) b!7951953))

(declare-fun e!4690732 () Bool)

(assert (=> b!7951463 (= tp!2366534 e!4690732)))

(declare-fun b!7951957 () Bool)

(declare-fun tp!2366835 () Bool)

(declare-fun tp!2366836 () Bool)

(assert (=> b!7951957 (= e!4690732 (and tp!2366835 tp!2366836))))

(declare-fun b!7951954 () Bool)

(assert (=> b!7951954 (= e!4690732 tp_is_empty!53489)))

(declare-fun b!7951956 () Bool)

(declare-fun tp!2366833 () Bool)

(assert (=> b!7951956 (= e!4690732 tp!2366833)))

(declare-fun b!7951955 () Bool)

(declare-fun tp!2366832 () Bool)

(declare-fun tp!2366834 () Bool)

(assert (=> b!7951955 (= e!4690732 (and tp!2366832 tp!2366834))))

(assert (= (and b!7951463 ((_ is ElementMatch!21473) (reg!21802 (regTwo!43458 baseR!116)))) b!7951954))

(assert (= (and b!7951463 ((_ is Concat!30472) (reg!21802 (regTwo!43458 baseR!116)))) b!7951955))

(assert (= (and b!7951463 ((_ is Star!21473) (reg!21802 (regTwo!43458 baseR!116)))) b!7951956))

(assert (= (and b!7951463 ((_ is Union!21473) (reg!21802 (regTwo!43458 baseR!116)))) b!7951957))

(declare-fun b!7951958 () Bool)

(declare-fun e!4690733 () Bool)

(declare-fun tp!2366837 () Bool)

(assert (=> b!7951958 (= e!4690733 (and tp_is_empty!53489 tp!2366837))))

(assert (=> b!7951490 (= tp!2366566 e!4690733)))

(assert (= (and b!7951490 ((_ is Cons!74578) (t!390445 (t!390445 testedP!447)))) b!7951958))

(declare-fun e!4690734 () Bool)

(assert (=> b!7951454 (= tp!2366523 e!4690734)))

(declare-fun b!7951962 () Bool)

(declare-fun tp!2366841 () Bool)

(declare-fun tp!2366842 () Bool)

(assert (=> b!7951962 (= e!4690734 (and tp!2366841 tp!2366842))))

(declare-fun b!7951959 () Bool)

(assert (=> b!7951959 (= e!4690734 tp_is_empty!53489)))

(declare-fun b!7951961 () Bool)

(declare-fun tp!2366839 () Bool)

(assert (=> b!7951961 (= e!4690734 tp!2366839)))

(declare-fun b!7951960 () Bool)

(declare-fun tp!2366838 () Bool)

(declare-fun tp!2366840 () Bool)

(assert (=> b!7951960 (= e!4690734 (and tp!2366838 tp!2366840))))

(assert (= (and b!7951454 ((_ is ElementMatch!21473) (regOne!43458 (reg!21802 r!24602)))) b!7951959))

(assert (= (and b!7951454 ((_ is Concat!30472) (regOne!43458 (reg!21802 r!24602)))) b!7951960))

(assert (= (and b!7951454 ((_ is Star!21473) (regOne!43458 (reg!21802 r!24602)))) b!7951961))

(assert (= (and b!7951454 ((_ is Union!21473) (regOne!43458 (reg!21802 r!24602)))) b!7951962))

(declare-fun e!4690735 () Bool)

(assert (=> b!7951454 (= tp!2366525 e!4690735)))

(declare-fun b!7951966 () Bool)

(declare-fun tp!2366846 () Bool)

(declare-fun tp!2366847 () Bool)

(assert (=> b!7951966 (= e!4690735 (and tp!2366846 tp!2366847))))

(declare-fun b!7951963 () Bool)

(assert (=> b!7951963 (= e!4690735 tp_is_empty!53489)))

(declare-fun b!7951965 () Bool)

(declare-fun tp!2366844 () Bool)

(assert (=> b!7951965 (= e!4690735 tp!2366844)))

(declare-fun b!7951964 () Bool)

(declare-fun tp!2366843 () Bool)

(declare-fun tp!2366845 () Bool)

(assert (=> b!7951964 (= e!4690735 (and tp!2366843 tp!2366845))))

(assert (= (and b!7951454 ((_ is ElementMatch!21473) (regTwo!43458 (reg!21802 r!24602)))) b!7951963))

(assert (= (and b!7951454 ((_ is Concat!30472) (regTwo!43458 (reg!21802 r!24602)))) b!7951964))

(assert (= (and b!7951454 ((_ is Star!21473) (regTwo!43458 (reg!21802 r!24602)))) b!7951965))

(assert (= (and b!7951454 ((_ is Union!21473) (regTwo!43458 (reg!21802 r!24602)))) b!7951966))

(declare-fun e!4690736 () Bool)

(assert (=> b!7951464 (= tp!2366536 e!4690736)))

(declare-fun b!7951970 () Bool)

(declare-fun tp!2366851 () Bool)

(declare-fun tp!2366852 () Bool)

(assert (=> b!7951970 (= e!4690736 (and tp!2366851 tp!2366852))))

(declare-fun b!7951967 () Bool)

(assert (=> b!7951967 (= e!4690736 tp_is_empty!53489)))

(declare-fun b!7951969 () Bool)

(declare-fun tp!2366849 () Bool)

(assert (=> b!7951969 (= e!4690736 tp!2366849)))

(declare-fun b!7951968 () Bool)

(declare-fun tp!2366848 () Bool)

(declare-fun tp!2366850 () Bool)

(assert (=> b!7951968 (= e!4690736 (and tp!2366848 tp!2366850))))

(assert (= (and b!7951464 ((_ is ElementMatch!21473) (regOne!43459 (regTwo!43458 baseR!116)))) b!7951967))

(assert (= (and b!7951464 ((_ is Concat!30472) (regOne!43459 (regTwo!43458 baseR!116)))) b!7951968))

(assert (= (and b!7951464 ((_ is Star!21473) (regOne!43459 (regTwo!43458 baseR!116)))) b!7951969))

(assert (= (and b!7951464 ((_ is Union!21473) (regOne!43459 (regTwo!43458 baseR!116)))) b!7951970))

(declare-fun e!4690737 () Bool)

(assert (=> b!7951464 (= tp!2366537 e!4690737)))

(declare-fun b!7951974 () Bool)

(declare-fun tp!2366856 () Bool)

(declare-fun tp!2366857 () Bool)

(assert (=> b!7951974 (= e!4690737 (and tp!2366856 tp!2366857))))

(declare-fun b!7951971 () Bool)

(assert (=> b!7951971 (= e!4690737 tp_is_empty!53489)))

(declare-fun b!7951973 () Bool)

(declare-fun tp!2366854 () Bool)

(assert (=> b!7951973 (= e!4690737 tp!2366854)))

(declare-fun b!7951972 () Bool)

(declare-fun tp!2366853 () Bool)

(declare-fun tp!2366855 () Bool)

(assert (=> b!7951972 (= e!4690737 (and tp!2366853 tp!2366855))))

(assert (= (and b!7951464 ((_ is ElementMatch!21473) (regTwo!43459 (regTwo!43458 baseR!116)))) b!7951971))

(assert (= (and b!7951464 ((_ is Concat!30472) (regTwo!43459 (regTwo!43458 baseR!116)))) b!7951972))

(assert (= (and b!7951464 ((_ is Star!21473) (regTwo!43459 (regTwo!43458 baseR!116)))) b!7951973))

(assert (= (and b!7951464 ((_ is Union!21473) (regTwo!43459 (regTwo!43458 baseR!116)))) b!7951974))

(declare-fun e!4690738 () Bool)

(assert (=> b!7951455 (= tp!2366524 e!4690738)))

(declare-fun b!7951978 () Bool)

(declare-fun tp!2366861 () Bool)

(declare-fun tp!2366862 () Bool)

(assert (=> b!7951978 (= e!4690738 (and tp!2366861 tp!2366862))))

(declare-fun b!7951975 () Bool)

(assert (=> b!7951975 (= e!4690738 tp_is_empty!53489)))

(declare-fun b!7951977 () Bool)

(declare-fun tp!2366859 () Bool)

(assert (=> b!7951977 (= e!4690738 tp!2366859)))

(declare-fun b!7951976 () Bool)

(declare-fun tp!2366858 () Bool)

(declare-fun tp!2366860 () Bool)

(assert (=> b!7951976 (= e!4690738 (and tp!2366858 tp!2366860))))

(assert (= (and b!7951455 ((_ is ElementMatch!21473) (reg!21802 (reg!21802 r!24602)))) b!7951975))

(assert (= (and b!7951455 ((_ is Concat!30472) (reg!21802 (reg!21802 r!24602)))) b!7951976))

(assert (= (and b!7951455 ((_ is Star!21473) (reg!21802 (reg!21802 r!24602)))) b!7951977))

(assert (= (and b!7951455 ((_ is Union!21473) (reg!21802 (reg!21802 r!24602)))) b!7951978))

(declare-fun e!4690739 () Bool)

(assert (=> b!7951446 (= tp!2366513 e!4690739)))

(declare-fun b!7951982 () Bool)

(declare-fun tp!2366866 () Bool)

(declare-fun tp!2366867 () Bool)

(assert (=> b!7951982 (= e!4690739 (and tp!2366866 tp!2366867))))

(declare-fun b!7951979 () Bool)

(assert (=> b!7951979 (= e!4690739 tp_is_empty!53489)))

(declare-fun b!7951981 () Bool)

(declare-fun tp!2366864 () Bool)

(assert (=> b!7951981 (= e!4690739 tp!2366864)))

(declare-fun b!7951980 () Bool)

(declare-fun tp!2366863 () Bool)

(declare-fun tp!2366865 () Bool)

(assert (=> b!7951980 (= e!4690739 (and tp!2366863 tp!2366865))))

(assert (= (and b!7951446 ((_ is ElementMatch!21473) (regOne!43458 (regOne!43458 r!24602)))) b!7951979))

(assert (= (and b!7951446 ((_ is Concat!30472) (regOne!43458 (regOne!43458 r!24602)))) b!7951980))

(assert (= (and b!7951446 ((_ is Star!21473) (regOne!43458 (regOne!43458 r!24602)))) b!7951981))

(assert (= (and b!7951446 ((_ is Union!21473) (regOne!43458 (regOne!43458 r!24602)))) b!7951982))

(declare-fun e!4690740 () Bool)

(assert (=> b!7951446 (= tp!2366515 e!4690740)))

(declare-fun b!7951986 () Bool)

(declare-fun tp!2366871 () Bool)

(declare-fun tp!2366872 () Bool)

(assert (=> b!7951986 (= e!4690740 (and tp!2366871 tp!2366872))))

(declare-fun b!7951983 () Bool)

(assert (=> b!7951983 (= e!4690740 tp_is_empty!53489)))

(declare-fun b!7951985 () Bool)

(declare-fun tp!2366869 () Bool)

(assert (=> b!7951985 (= e!4690740 tp!2366869)))

(declare-fun b!7951984 () Bool)

(declare-fun tp!2366868 () Bool)

(declare-fun tp!2366870 () Bool)

(assert (=> b!7951984 (= e!4690740 (and tp!2366868 tp!2366870))))

(assert (= (and b!7951446 ((_ is ElementMatch!21473) (regTwo!43458 (regOne!43458 r!24602)))) b!7951983))

(assert (= (and b!7951446 ((_ is Concat!30472) (regTwo!43458 (regOne!43458 r!24602)))) b!7951984))

(assert (= (and b!7951446 ((_ is Star!21473) (regTwo!43458 (regOne!43458 r!24602)))) b!7951985))

(assert (= (and b!7951446 ((_ is Union!21473) (regTwo!43458 (regOne!43458 r!24602)))) b!7951986))

(declare-fun e!4690741 () Bool)

(assert (=> b!7951456 (= tp!2366526 e!4690741)))

(declare-fun b!7951990 () Bool)

(declare-fun tp!2366876 () Bool)

(declare-fun tp!2366877 () Bool)

(assert (=> b!7951990 (= e!4690741 (and tp!2366876 tp!2366877))))

(declare-fun b!7951987 () Bool)

(assert (=> b!7951987 (= e!4690741 tp_is_empty!53489)))

(declare-fun b!7951989 () Bool)

(declare-fun tp!2366874 () Bool)

(assert (=> b!7951989 (= e!4690741 tp!2366874)))

(declare-fun b!7951988 () Bool)

(declare-fun tp!2366873 () Bool)

(declare-fun tp!2366875 () Bool)

(assert (=> b!7951988 (= e!4690741 (and tp!2366873 tp!2366875))))

(assert (= (and b!7951456 ((_ is ElementMatch!21473) (regOne!43459 (reg!21802 r!24602)))) b!7951987))

(assert (= (and b!7951456 ((_ is Concat!30472) (regOne!43459 (reg!21802 r!24602)))) b!7951988))

(assert (= (and b!7951456 ((_ is Star!21473) (regOne!43459 (reg!21802 r!24602)))) b!7951989))

(assert (= (and b!7951456 ((_ is Union!21473) (regOne!43459 (reg!21802 r!24602)))) b!7951990))

(declare-fun e!4690742 () Bool)

(assert (=> b!7951456 (= tp!2366527 e!4690742)))

(declare-fun b!7951994 () Bool)

(declare-fun tp!2366881 () Bool)

(declare-fun tp!2366882 () Bool)

(assert (=> b!7951994 (= e!4690742 (and tp!2366881 tp!2366882))))

(declare-fun b!7951991 () Bool)

(assert (=> b!7951991 (= e!4690742 tp_is_empty!53489)))

(declare-fun b!7951993 () Bool)

(declare-fun tp!2366879 () Bool)

(assert (=> b!7951993 (= e!4690742 tp!2366879)))

(declare-fun b!7951992 () Bool)

(declare-fun tp!2366878 () Bool)

(declare-fun tp!2366880 () Bool)

(assert (=> b!7951992 (= e!4690742 (and tp!2366878 tp!2366880))))

(assert (= (and b!7951456 ((_ is ElementMatch!21473) (regTwo!43459 (reg!21802 r!24602)))) b!7951991))

(assert (= (and b!7951456 ((_ is Concat!30472) (regTwo!43459 (reg!21802 r!24602)))) b!7951992))

(assert (= (and b!7951456 ((_ is Star!21473) (regTwo!43459 (reg!21802 r!24602)))) b!7951993))

(assert (= (and b!7951456 ((_ is Union!21473) (regTwo!43459 (reg!21802 r!24602)))) b!7951994))

(check-sat (not b!7951647) (not d!2376281) (not bm!737138) (not b!7951660) (not d!2376241) (not b!7951843) (not b!7951703) (not bm!737104) (not b!7951960) (not bm!737125) (not b!7951788) (not d!2376291) (not b!7951704) (not b!7951866) (not b!7951862) (not b!7951852) (not b!7951974) (not b!7951847) (not d!2376259) (not b!7951876) (not bm!737126) (not b!7951855) (not b!7951933) (not b!7951690) (not b!7951878) (not b!7951730) (not d!2376221) (not b!7951870) (not b!7951814) (not b!7951839) (not b!7951734) (not b!7951811) (not b!7951790) (not b!7951736) (not b!7951721) (not b!7951992) (not b!7951798) (not b!7951761) (not b!7951990) (not bm!737132) (not bm!737116) (not bm!737103) (not b!7951977) (not b!7951854) (not bm!737128) (not b!7951884) (not b!7951937) (not b!7951944) (not b!7951794) (not bm!737131) (not b!7951973) (not b!7951810) (not bm!737130) (not b!7951694) (not b!7951596) (not b!7951838) (not b!7951880) (not b!7951896) (not bm!737139) (not b!7951962) (not b!7951874) (not b!7951901) (not b!7951905) (not d!2376283) (not b!7951989) (not b!7951806) (not b!7951875) (not b!7951643) (not b!7951980) (not d!2376255) (not b!7951927) (not bm!737109) (not b!7951802) (not b!7951835) (not bm!737120) (not bm!737113) (not b!7951872) (not b!7951897) (not d!2376303) (not b!7951864) (not b!7951871) (not b!7951812) (not b!7951911) (not b!7951622) (not bm!737107) (not d!2376265) (not b!7951858) (not b!7951907) (not b!7951630) (not b!7951952) (not bm!737127) (not b!7951665) (not b!7951964) (not b!7951985) (not d!2376275) (not b!7951859) tp_is_empty!53489 (not b!7951816) (not b!7951940) (not b!7951832) (not b!7951868) (not b!7951961) (not b!7951822) (not b!7951605) (not bm!737134) (not b!7951848) (not d!2376315) (not d!2376271) (not b!7951645) (not b!7951956) (not bm!737145) (not d!2376289) (not b!7951676) (not b!7951684) (not d!2376313) (not b!7951909) (not b!7951677) (not b!7951759) (not b!7951885) (not b!7951648) (not b!7951846) (not b!7951820) (not b!7951919) (not bm!737117) (not b!7951978) (not bm!737119) (not d!2376273) (not b!7951691) (not b!7951640) (not bm!737146) (not b!7951955) (not b!7951943) (not b!7951936) (not b!7951892) (not b!7951823) (not b!7951912) (not b!7951807) (not b!7951850) (not b!7951748) (not b!7951856) (not b!7951618) (not b!7951921) (not b!7951986) (not b!7951925) (not d!2376253) (not b!7951924) (not bm!737122) (not b!7951929) (not b!7951808) (not d!2376249) (not b!7951834) (not b!7951651) (not b!7951799) (not b!7951879) (not b!7951826) (not b!7951828) (not bm!737112) (not d!2376295) (not b!7951615) (not b!7951824) (not b!7951941) (not b!7951939) (not b!7951928) (not b!7951913) (not b!7951972) (not b!7951668) (not bm!737106) (not b!7951951) (not b!7951949) (not b!7951965) (not b!7951984) (not b!7951947) (not b!7951719) (not b!7951662) (not b!7951908) (not b!7951796) (not b!7951672) (not b!7951830) (not b!7951803) (not b!7951661) (not b!7951831) (not b!7951681) (not b!7951904) (not b!7951644) (not b!7951968) (not b!7951851) (not b!7951616) (not b!7951685) (not d!2376301) (not b!7951993) (not b!7951760) (not b!7951981) (not b!7951669) (not bm!737129) (not b!7951945) (not b!7951969) (not d!2376279) (not b!7951815) (not b!7951920) (not b!7951792) (not b!7951935) (not b!7951882) (not b!7951982) (not bm!737135) (not b!7951883) (not b!7951614) (not b!7951842) (not b!7951970) (not b!7951932) (not b!7951673) (not b!7951747) (not b!7951923) (not b!7951863) (not bm!737110) (not b!7951948) (not b!7951899) (not b!7951688) (not d!2376247) (not b!7951664) (not b!7951840) (not b!7951867) (not b!7951915) (not b!7951889) (not b!7951680) (not b!7951893) (not b!7951966) (not b!7951988) (not b!7951670) (not d!2376269) (not b!7951860) (not b!7951804) (not b!7951706) (not b!7951724) (not b!7951917) (not b!7951958) (not b!7951931) (not b!7951887) (not b!7951827) (not b!7951888) (not b!7951836) (not d!2376297) (not d!2376239) (not b!7951994) (not b!7951957) (not b!7951895) (not b!7951819) (not b!7951953) (not b!7951916) (not b!7951800) (not b!7951717) (not b!7951795) (not b!7951903) (not b!7951976) (not b!7951733) (not b!7951844) (not bm!737123) (not b!7951900) (not b!7951620) (not b!7951891) (not b!7951818))
(check-sat)
