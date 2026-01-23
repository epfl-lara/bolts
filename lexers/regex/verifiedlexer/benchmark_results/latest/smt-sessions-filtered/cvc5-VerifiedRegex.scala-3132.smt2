; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184524 () Bool)

(assert start!184524)

(declare-fun b!1848981 () Bool)

(assert (=> b!1848981 true))

(assert (=> b!1848981 true))

(declare-fun e!1181363 () Bool)

(declare-fun e!1181364 () Bool)

(assert (=> b!1848981 (= e!1181363 (not e!1181364))))

(declare-fun res!830195 () Bool)

(assert (=> b!1848981 (=> res!830195 e!1181364)))

(declare-fun lambda!73115 () Int)

(declare-fun Exists!970 (Int) Bool)

(assert (=> b!1848981 (= res!830195 (not (Exists!970 lambda!73115)))))

(assert (=> b!1848981 (Exists!970 lambda!73115)))

(declare-datatypes ((Unit!35107 0))(
  ( (Unit!35108) )
))
(declare-fun lt!715299 () Unit!35107)

(declare-datatypes ((C!10182 0))(
  ( (C!10183 (val!5817 Int)) )
))
(declare-datatypes ((Regex!5016 0))(
  ( (ElementMatch!5016 (c!301829 C!10182)) (Concat!8794 (regOne!10544 Regex!5016) (regTwo!10544 Regex!5016)) (EmptyExpr!5016) (Star!5016 (reg!5345 Regex!5016)) (EmptyLang!5016) (Union!5016 (regOne!10545 Regex!5016) (regTwo!10545 Regex!5016)) )
))
(declare-fun r!26091 () Regex!5016)

(declare-datatypes ((List!20497 0))(
  ( (Nil!20425) (Cons!20425 (h!25826 C!10182) (t!172270 List!20497)) )
))
(declare-fun prefix!1614 () List!20497)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!288 (Regex!5016 List!20497) Unit!35107)

(assert (=> b!1848981 (= lt!715299 (lemmaPrefixMatchThenExistsStringThatMatches!288 r!26091 prefix!1614))))

(declare-fun b!1848982 () Bool)

(declare-fun e!1181366 () Bool)

(declare-fun tp!522845 () Bool)

(declare-fun tp!522848 () Bool)

(assert (=> b!1848982 (= e!1181366 (and tp!522845 tp!522848))))

(declare-fun b!1848983 () Bool)

(declare-fun e!1181362 () Bool)

(declare-fun lt!715300 () List!20497)

(declare-fun ++!5541 (List!20497 List!20497) List!20497)

(declare-fun getSuffix!993 (List!20497 List!20497) List!20497)

(assert (=> b!1848983 (= e!1181362 (= lt!715300 (++!5541 prefix!1614 (getSuffix!993 lt!715300 prefix!1614))))))

(declare-fun b!1848984 () Bool)

(declare-fun tp!522846 () Bool)

(declare-fun tp!522849 () Bool)

(assert (=> b!1848984 (= e!1181366 (and tp!522846 tp!522849))))

(declare-fun b!1848985 () Bool)

(declare-fun res!830191 () Bool)

(assert (=> b!1848985 (=> (not res!830191) (not e!1181363))))

(declare-fun c!13459 () C!10182)

(declare-fun contains!3781 (List!20497 C!10182) Bool)

(declare-fun usedCharacters!321 (Regex!5016) List!20497)

(assert (=> b!1848985 (= res!830191 (not (contains!3781 (usedCharacters!321 r!26091) c!13459)))))

(declare-fun b!1848986 () Bool)

(assert (=> b!1848986 (= e!1181364 e!1181362)))

(declare-fun res!830194 () Bool)

(assert (=> b!1848986 (=> res!830194 e!1181362)))

(declare-fun matchR!2453 (Regex!5016 List!20497) Bool)

(assert (=> b!1848986 (= res!830194 (not (matchR!2453 r!26091 lt!715300)))))

(declare-fun pickWitness!267 (Int) List!20497)

(assert (=> b!1848986 (= lt!715300 (pickWitness!267 lambda!73115))))

(declare-fun b!1848987 () Bool)

(declare-fun res!830197 () Bool)

(assert (=> b!1848987 (=> (not res!830197) (not e!1181363))))

(assert (=> b!1848987 (= res!830197 (contains!3781 prefix!1614 c!13459))))

(declare-fun b!1848988 () Bool)

(declare-fun e!1181365 () Bool)

(declare-fun tp_is_empty!8481 () Bool)

(declare-fun tp!522844 () Bool)

(assert (=> b!1848988 (= e!1181365 (and tp_is_empty!8481 tp!522844))))

(declare-fun res!830192 () Bool)

(assert (=> start!184524 (=> (not res!830192) (not e!1181363))))

(declare-fun validRegex!2060 (Regex!5016) Bool)

(assert (=> start!184524 (= res!830192 (validRegex!2060 r!26091))))

(assert (=> start!184524 e!1181363))

(assert (=> start!184524 e!1181366))

(assert (=> start!184524 e!1181365))

(assert (=> start!184524 tp_is_empty!8481))

(declare-fun b!1848989 () Bool)

(declare-fun res!830193 () Bool)

(assert (=> b!1848989 (=> res!830193 e!1181362)))

(declare-fun isPrefix!1889 (List!20497 List!20497) Bool)

(assert (=> b!1848989 (= res!830193 (not (isPrefix!1889 prefix!1614 lt!715300)))))

(declare-fun b!1848990 () Bool)

(declare-fun res!830196 () Bool)

(assert (=> b!1848990 (=> (not res!830196) (not e!1181363))))

(declare-fun prefixMatch!793 (Regex!5016 List!20497) Bool)

(assert (=> b!1848990 (= res!830196 (prefixMatch!793 r!26091 prefix!1614))))

(declare-fun b!1848991 () Bool)

(declare-fun tp!522847 () Bool)

(assert (=> b!1848991 (= e!1181366 tp!522847)))

(declare-fun b!1848992 () Bool)

(assert (=> b!1848992 (= e!1181366 tp_is_empty!8481)))

(assert (= (and start!184524 res!830192) b!1848987))

(assert (= (and b!1848987 res!830197) b!1848985))

(assert (= (and b!1848985 res!830191) b!1848990))

(assert (= (and b!1848990 res!830196) b!1848981))

(assert (= (and b!1848981 (not res!830195)) b!1848986))

(assert (= (and b!1848986 (not res!830194)) b!1848989))

(assert (= (and b!1848989 (not res!830193)) b!1848983))

(assert (= (and start!184524 (is-ElementMatch!5016 r!26091)) b!1848992))

(assert (= (and start!184524 (is-Concat!8794 r!26091)) b!1848984))

(assert (= (and start!184524 (is-Star!5016 r!26091)) b!1848991))

(assert (= (and start!184524 (is-Union!5016 r!26091)) b!1848982))

(assert (= (and start!184524 (is-Cons!20425 prefix!1614)) b!1848988))

(declare-fun m!2276373 () Bool)

(assert (=> b!1848987 m!2276373))

(declare-fun m!2276375 () Bool)

(assert (=> b!1848990 m!2276375))

(declare-fun m!2276377 () Bool)

(assert (=> b!1848985 m!2276377))

(assert (=> b!1848985 m!2276377))

(declare-fun m!2276379 () Bool)

(assert (=> b!1848985 m!2276379))

(declare-fun m!2276381 () Bool)

(assert (=> b!1848989 m!2276381))

(declare-fun m!2276383 () Bool)

(assert (=> b!1848981 m!2276383))

(assert (=> b!1848981 m!2276383))

(declare-fun m!2276385 () Bool)

(assert (=> b!1848981 m!2276385))

(declare-fun m!2276387 () Bool)

(assert (=> b!1848983 m!2276387))

(assert (=> b!1848983 m!2276387))

(declare-fun m!2276389 () Bool)

(assert (=> b!1848983 m!2276389))

(declare-fun m!2276391 () Bool)

(assert (=> start!184524 m!2276391))

(declare-fun m!2276393 () Bool)

(assert (=> b!1848986 m!2276393))

(declare-fun m!2276395 () Bool)

(assert (=> b!1848986 m!2276395))

(push 1)

(assert (not b!1848988))

(assert (not b!1848986))

(assert (not start!184524))

(assert (not b!1848990))

(assert (not b!1848982))

(assert (not b!1848991))

(assert (not b!1848985))

(assert (not b!1848981))

(assert tp_is_empty!8481)

(assert (not b!1848983))

(assert (not b!1848987))

(assert (not b!1848984))

(assert (not b!1848989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1849071 () Bool)

(declare-fun e!1181403 () Bool)

(declare-fun head!4328 (List!20497) C!10182)

(assert (=> b!1849071 (= e!1181403 (not (= (head!4328 lt!715300) (c!301829 r!26091))))))

(declare-fun b!1849072 () Bool)

(declare-fun e!1181407 () Bool)

(declare-fun e!1181408 () Bool)

(assert (=> b!1849072 (= e!1181407 e!1181408)))

(declare-fun res!830243 () Bool)

(assert (=> b!1849072 (=> (not res!830243) (not e!1181408))))

(declare-fun lt!715309 () Bool)

(assert (=> b!1849072 (= res!830243 (not lt!715309))))

(declare-fun b!1849073 () Bool)

(declare-fun e!1181402 () Bool)

(declare-fun nullable!1560 (Regex!5016) Bool)

(assert (=> b!1849073 (= e!1181402 (nullable!1560 r!26091))))

(declare-fun b!1849074 () Bool)

(declare-fun derivativeStep!1324 (Regex!5016 C!10182) Regex!5016)

(declare-fun tail!2791 (List!20497) List!20497)

(assert (=> b!1849074 (= e!1181402 (matchR!2453 (derivativeStep!1324 r!26091 (head!4328 lt!715300)) (tail!2791 lt!715300)))))

(declare-fun b!1849075 () Bool)

(declare-fun e!1181406 () Bool)

(declare-fun call!115277 () Bool)

(assert (=> b!1849075 (= e!1181406 (= lt!715309 call!115277))))

(declare-fun b!1849076 () Bool)

(declare-fun e!1181405 () Bool)

(assert (=> b!1849076 (= e!1181405 (= (head!4328 lt!715300) (c!301829 r!26091)))))

(declare-fun b!1849077 () Bool)

(assert (=> b!1849077 (= e!1181408 e!1181403)))

(declare-fun res!830248 () Bool)

(assert (=> b!1849077 (=> res!830248 e!1181403)))

(assert (=> b!1849077 (= res!830248 call!115277)))

(declare-fun b!1849078 () Bool)

(declare-fun res!830247 () Bool)

(assert (=> b!1849078 (=> res!830247 e!1181403)))

(declare-fun isEmpty!12777 (List!20497) Bool)

(assert (=> b!1849078 (= res!830247 (not (isEmpty!12777 (tail!2791 lt!715300))))))

(declare-fun b!1849079 () Bool)

(declare-fun res!830242 () Bool)

(assert (=> b!1849079 (=> res!830242 e!1181407)))

(assert (=> b!1849079 (= res!830242 e!1181405)))

(declare-fun res!830244 () Bool)

(assert (=> b!1849079 (=> (not res!830244) (not e!1181405))))

(assert (=> b!1849079 (= res!830244 lt!715309)))

(declare-fun b!1849080 () Bool)

(declare-fun e!1181404 () Bool)

(assert (=> b!1849080 (= e!1181404 (not lt!715309))))

(declare-fun d!565589 () Bool)

(assert (=> d!565589 e!1181406))

(declare-fun c!301838 () Bool)

(assert (=> d!565589 (= c!301838 (is-EmptyExpr!5016 r!26091))))

(assert (=> d!565589 (= lt!715309 e!1181402)))

(declare-fun c!301839 () Bool)

(assert (=> d!565589 (= c!301839 (isEmpty!12777 lt!715300))))

(assert (=> d!565589 (validRegex!2060 r!26091)))

(assert (=> d!565589 (= (matchR!2453 r!26091 lt!715300) lt!715309)))

(declare-fun b!1849081 () Bool)

(declare-fun res!830241 () Bool)

(assert (=> b!1849081 (=> (not res!830241) (not e!1181405))))

(assert (=> b!1849081 (= res!830241 (not call!115277))))

(declare-fun b!1849082 () Bool)

(assert (=> b!1849082 (= e!1181406 e!1181404)))

(declare-fun c!301837 () Bool)

(assert (=> b!1849082 (= c!301837 (is-EmptyLang!5016 r!26091))))

(declare-fun bm!115272 () Bool)

(assert (=> bm!115272 (= call!115277 (isEmpty!12777 lt!715300))))

(declare-fun b!1849083 () Bool)

(declare-fun res!830245 () Bool)

(assert (=> b!1849083 (=> (not res!830245) (not e!1181405))))

(assert (=> b!1849083 (= res!830245 (isEmpty!12777 (tail!2791 lt!715300)))))

(declare-fun b!1849084 () Bool)

(declare-fun res!830246 () Bool)

(assert (=> b!1849084 (=> res!830246 e!1181407)))

(assert (=> b!1849084 (= res!830246 (not (is-ElementMatch!5016 r!26091)))))

(assert (=> b!1849084 (= e!1181404 e!1181407)))

(assert (= (and d!565589 c!301839) b!1849073))

(assert (= (and d!565589 (not c!301839)) b!1849074))

(assert (= (and d!565589 c!301838) b!1849075))

(assert (= (and d!565589 (not c!301838)) b!1849082))

(assert (= (and b!1849082 c!301837) b!1849080))

(assert (= (and b!1849082 (not c!301837)) b!1849084))

(assert (= (and b!1849084 (not res!830246)) b!1849079))

(assert (= (and b!1849079 res!830244) b!1849081))

(assert (= (and b!1849081 res!830241) b!1849083))

(assert (= (and b!1849083 res!830245) b!1849076))

(assert (= (and b!1849079 (not res!830242)) b!1849072))

(assert (= (and b!1849072 res!830243) b!1849077))

(assert (= (and b!1849077 (not res!830248)) b!1849078))

(assert (= (and b!1849078 (not res!830247)) b!1849071))

(assert (= (or b!1849075 b!1849077 b!1849081) bm!115272))

(declare-fun m!2276421 () Bool)

(assert (=> b!1849083 m!2276421))

(assert (=> b!1849083 m!2276421))

(declare-fun m!2276423 () Bool)

(assert (=> b!1849083 m!2276423))

(declare-fun m!2276425 () Bool)

(assert (=> b!1849076 m!2276425))

(assert (=> b!1849074 m!2276425))

(assert (=> b!1849074 m!2276425))

(declare-fun m!2276427 () Bool)

(assert (=> b!1849074 m!2276427))

(assert (=> b!1849074 m!2276421))

(assert (=> b!1849074 m!2276427))

(assert (=> b!1849074 m!2276421))

(declare-fun m!2276429 () Bool)

(assert (=> b!1849074 m!2276429))

(declare-fun m!2276431 () Bool)

(assert (=> b!1849073 m!2276431))

(assert (=> b!1849078 m!2276421))

(assert (=> b!1849078 m!2276421))

(assert (=> b!1849078 m!2276423))

(assert (=> b!1849071 m!2276425))

(declare-fun m!2276433 () Bool)

(assert (=> bm!115272 m!2276433))

(assert (=> d!565589 m!2276433))

(assert (=> d!565589 m!2276391))

(assert (=> b!1848986 d!565589))

(declare-fun d!565593 () Bool)

(declare-fun lt!715312 () List!20497)

(declare-fun dynLambda!10155 (Int List!20497) Bool)

(assert (=> d!565593 (dynLambda!10155 lambda!73115 lt!715312)))

(declare-fun choose!11636 (Int) List!20497)

(assert (=> d!565593 (= lt!715312 (choose!11636 lambda!73115))))

(assert (=> d!565593 (Exists!970 lambda!73115)))

(assert (=> d!565593 (= (pickWitness!267 lambda!73115) lt!715312)))

(declare-fun b_lambda!61405 () Bool)

(assert (=> (not b_lambda!61405) (not d!565593)))

(declare-fun bs!409762 () Bool)

(assert (= bs!409762 d!565593))

(declare-fun m!2276435 () Bool)

(assert (=> bs!409762 m!2276435))

(declare-fun m!2276437 () Bool)

(assert (=> bs!409762 m!2276437))

(assert (=> bs!409762 m!2276383))

(assert (=> b!1848986 d!565593))

(declare-fun d!565595 () Bool)

(declare-fun choose!11637 (Int) Bool)

(assert (=> d!565595 (= (Exists!970 lambda!73115) (choose!11637 lambda!73115))))

(declare-fun bs!409763 () Bool)

(assert (= bs!409763 d!565595))

(declare-fun m!2276439 () Bool)

(assert (=> bs!409763 m!2276439))

(assert (=> b!1848981 d!565595))

(declare-fun bs!409764 () Bool)

(declare-fun d!565597 () Bool)

(assert (= bs!409764 (and d!565597 b!1848981)))

(declare-fun lambda!73125 () Int)

(assert (=> bs!409764 (= lambda!73125 lambda!73115)))

(assert (=> d!565597 true))

(assert (=> d!565597 true))

(assert (=> d!565597 (Exists!970 lambda!73125)))

(declare-fun lt!715315 () Unit!35107)

(declare-fun choose!11638 (Regex!5016 List!20497) Unit!35107)

(assert (=> d!565597 (= lt!715315 (choose!11638 r!26091 prefix!1614))))

(assert (=> d!565597 (validRegex!2060 r!26091)))

(assert (=> d!565597 (= (lemmaPrefixMatchThenExistsStringThatMatches!288 r!26091 prefix!1614) lt!715315)))

(declare-fun bs!409765 () Bool)

(assert (= bs!409765 d!565597))

(declare-fun m!2276441 () Bool)

(assert (=> bs!409765 m!2276441))

(declare-fun m!2276443 () Bool)

(assert (=> bs!409765 m!2276443))

(assert (=> bs!409765 m!2276391))

(assert (=> b!1848981 d!565597))

(declare-fun d!565599 () Bool)

(declare-fun lt!715320 () Bool)

(declare-fun content!3046 (List!20497) (Set C!10182))

(assert (=> d!565599 (= lt!715320 (set.member c!13459 (content!3046 prefix!1614)))))

(declare-fun e!1181430 () Bool)

(assert (=> d!565599 (= lt!715320 e!1181430)))

(declare-fun res!830270 () Bool)

(assert (=> d!565599 (=> (not res!830270) (not e!1181430))))

(assert (=> d!565599 (= res!830270 (is-Cons!20425 prefix!1614))))

(assert (=> d!565599 (= (contains!3781 prefix!1614 c!13459) lt!715320)))

(declare-fun b!1849117 () Bool)

(declare-fun e!1181429 () Bool)

(assert (=> b!1849117 (= e!1181430 e!1181429)))

(declare-fun res!830269 () Bool)

(assert (=> b!1849117 (=> res!830269 e!1181429)))

(assert (=> b!1849117 (= res!830269 (= (h!25826 prefix!1614) c!13459))))

(declare-fun b!1849118 () Bool)

(assert (=> b!1849118 (= e!1181429 (contains!3781 (t!172270 prefix!1614) c!13459))))

(assert (= (and d!565599 res!830270) b!1849117))

(assert (= (and b!1849117 (not res!830269)) b!1849118))

(declare-fun m!2276445 () Bool)

(assert (=> d!565599 m!2276445))

(declare-fun m!2276447 () Bool)

(assert (=> d!565599 m!2276447))

(declare-fun m!2276449 () Bool)

(assert (=> b!1849118 m!2276449))

(assert (=> b!1848987 d!565599))

(declare-fun d!565601 () Bool)

(declare-fun c!301848 () Bool)

(assert (=> d!565601 (= c!301848 (isEmpty!12777 prefix!1614))))

(declare-fun e!1181433 () Bool)

(assert (=> d!565601 (= (prefixMatch!793 r!26091 prefix!1614) e!1181433)))

(declare-fun b!1849125 () Bool)

(declare-fun lostCause!632 (Regex!5016) Bool)

(assert (=> b!1849125 (= e!1181433 (not (lostCause!632 r!26091)))))

(declare-fun b!1849126 () Bool)

(assert (=> b!1849126 (= e!1181433 (prefixMatch!793 (derivativeStep!1324 r!26091 (head!4328 prefix!1614)) (tail!2791 prefix!1614)))))

(assert (= (and d!565601 c!301848) b!1849125))

(assert (= (and d!565601 (not c!301848)) b!1849126))

(declare-fun m!2276451 () Bool)

(assert (=> d!565601 m!2276451))

(declare-fun m!2276453 () Bool)

(assert (=> b!1849125 m!2276453))

(declare-fun m!2276455 () Bool)

(assert (=> b!1849126 m!2276455))

(assert (=> b!1849126 m!2276455))

(declare-fun m!2276457 () Bool)

(assert (=> b!1849126 m!2276457))

(declare-fun m!2276459 () Bool)

(assert (=> b!1849126 m!2276459))

(assert (=> b!1849126 m!2276457))

(assert (=> b!1849126 m!2276459))

(declare-fun m!2276461 () Bool)

(assert (=> b!1849126 m!2276461))

(assert (=> b!1848990 d!565601))

(declare-fun d!565603 () Bool)

(declare-fun lt!715321 () Bool)

(assert (=> d!565603 (= lt!715321 (set.member c!13459 (content!3046 (usedCharacters!321 r!26091))))))

(declare-fun e!1181435 () Bool)

(assert (=> d!565603 (= lt!715321 e!1181435)))

(declare-fun res!830274 () Bool)

(assert (=> d!565603 (=> (not res!830274) (not e!1181435))))

(assert (=> d!565603 (= res!830274 (is-Cons!20425 (usedCharacters!321 r!26091)))))

(assert (=> d!565603 (= (contains!3781 (usedCharacters!321 r!26091) c!13459) lt!715321)))

(declare-fun b!1849127 () Bool)

(declare-fun e!1181434 () Bool)

(assert (=> b!1849127 (= e!1181435 e!1181434)))

(declare-fun res!830273 () Bool)

(assert (=> b!1849127 (=> res!830273 e!1181434)))

(assert (=> b!1849127 (= res!830273 (= (h!25826 (usedCharacters!321 r!26091)) c!13459))))

(declare-fun b!1849128 () Bool)

(assert (=> b!1849128 (= e!1181434 (contains!3781 (t!172270 (usedCharacters!321 r!26091)) c!13459))))

(assert (= (and d!565603 res!830274) b!1849127))

(assert (= (and b!1849127 (not res!830273)) b!1849128))

(assert (=> d!565603 m!2276377))

(declare-fun m!2276463 () Bool)

(assert (=> d!565603 m!2276463))

(declare-fun m!2276465 () Bool)

(assert (=> d!565603 m!2276465))

(declare-fun m!2276467 () Bool)

(assert (=> b!1849128 m!2276467))

(assert (=> b!1848985 d!565603))

(declare-fun b!1849145 () Bool)

(declare-fun e!1181447 () List!20497)

(declare-fun call!115291 () List!20497)

(assert (=> b!1849145 (= e!1181447 call!115291)))

(declare-fun b!1849146 () Bool)

(declare-fun c!301857 () Bool)

(assert (=> b!1849146 (= c!301857 (is-Star!5016 r!26091))))

(declare-fun e!1181444 () List!20497)

(declare-fun e!1181445 () List!20497)

(assert (=> b!1849146 (= e!1181444 e!1181445)))

(declare-fun b!1849147 () Bool)

(declare-fun e!1181446 () List!20497)

(assert (=> b!1849147 (= e!1181446 Nil!20425)))

(declare-fun b!1849148 () Bool)

(declare-fun call!115290 () List!20497)

(assert (=> b!1849148 (= e!1181445 call!115290)))

(declare-fun d!565605 () Bool)

(declare-fun c!301859 () Bool)

(assert (=> d!565605 (= c!301859 (or (is-EmptyExpr!5016 r!26091) (is-EmptyLang!5016 r!26091)))))

(assert (=> d!565605 (= (usedCharacters!321 r!26091) e!1181446)))

(declare-fun b!1849149 () Bool)

(assert (=> b!1849149 (= e!1181446 e!1181444)))

(declare-fun c!301860 () Bool)

(assert (=> b!1849149 (= c!301860 (is-ElementMatch!5016 r!26091))))

(declare-fun b!1849150 () Bool)

(assert (=> b!1849150 (= e!1181445 e!1181447)))

(declare-fun c!301858 () Bool)

(assert (=> b!1849150 (= c!301858 (is-Union!5016 r!26091))))

(declare-fun bm!115283 () Bool)

(assert (=> bm!115283 (= call!115290 (usedCharacters!321 (ite c!301857 (reg!5345 r!26091) (ite c!301858 (regOne!10545 r!26091) (regTwo!10544 r!26091)))))))

(declare-fun b!1849151 () Bool)

(assert (=> b!1849151 (= e!1181447 call!115291)))

(declare-fun b!1849152 () Bool)

(assert (=> b!1849152 (= e!1181444 (Cons!20425 (c!301829 r!26091) Nil!20425))))

(declare-fun bm!115284 () Bool)

(declare-fun call!115288 () List!20497)

(assert (=> bm!115284 (= call!115288 call!115290)))

(declare-fun bm!115285 () Bool)

(declare-fun call!115289 () List!20497)

(assert (=> bm!115285 (= call!115289 (usedCharacters!321 (ite c!301858 (regTwo!10545 r!26091) (regOne!10544 r!26091))))))

(declare-fun bm!115286 () Bool)

(assert (=> bm!115286 (= call!115291 (++!5541 (ite c!301858 call!115288 call!115289) (ite c!301858 call!115289 call!115288)))))

(assert (= (and d!565605 c!301859) b!1849147))

(assert (= (and d!565605 (not c!301859)) b!1849149))

(assert (= (and b!1849149 c!301860) b!1849152))

(assert (= (and b!1849149 (not c!301860)) b!1849146))

(assert (= (and b!1849146 c!301857) b!1849148))

(assert (= (and b!1849146 (not c!301857)) b!1849150))

(assert (= (and b!1849150 c!301858) b!1849145))

(assert (= (and b!1849150 (not c!301858)) b!1849151))

(assert (= (or b!1849145 b!1849151) bm!115285))

(assert (= (or b!1849145 b!1849151) bm!115284))

(assert (= (or b!1849145 b!1849151) bm!115286))

(assert (= (or b!1849148 bm!115284) bm!115283))

(declare-fun m!2276469 () Bool)

(assert (=> bm!115283 m!2276469))

(declare-fun m!2276471 () Bool)

(assert (=> bm!115285 m!2276471))

(declare-fun m!2276473 () Bool)

(assert (=> bm!115286 m!2276473))

(assert (=> b!1848985 d!565605))

(declare-fun b!1849178 () Bool)

(declare-fun e!1181461 () Bool)

(declare-fun size!16143 (List!20497) Int)

(assert (=> b!1849178 (= e!1181461 (>= (size!16143 lt!715300) (size!16143 prefix!1614)))))

(declare-fun b!1849177 () Bool)

(declare-fun e!1181463 () Bool)

(assert (=> b!1849177 (= e!1181463 (isPrefix!1889 (tail!2791 prefix!1614) (tail!2791 lt!715300)))))

(declare-fun d!565607 () Bool)

(assert (=> d!565607 e!1181461))

(declare-fun res!830291 () Bool)

(assert (=> d!565607 (=> res!830291 e!1181461)))

(declare-fun lt!715325 () Bool)

(assert (=> d!565607 (= res!830291 (not lt!715325))))

(declare-fun e!1181462 () Bool)

(assert (=> d!565607 (= lt!715325 e!1181462)))

(declare-fun res!830294 () Bool)

(assert (=> d!565607 (=> res!830294 e!1181462)))

(assert (=> d!565607 (= res!830294 (is-Nil!20425 prefix!1614))))

(assert (=> d!565607 (= (isPrefix!1889 prefix!1614 lt!715300) lt!715325)))

(declare-fun b!1849176 () Bool)

(declare-fun res!830293 () Bool)

(assert (=> b!1849176 (=> (not res!830293) (not e!1181463))))

(assert (=> b!1849176 (= res!830293 (= (head!4328 prefix!1614) (head!4328 lt!715300)))))

(declare-fun b!1849175 () Bool)

(assert (=> b!1849175 (= e!1181462 e!1181463)))

(declare-fun res!830292 () Bool)

(assert (=> b!1849175 (=> (not res!830292) (not e!1181463))))

(assert (=> b!1849175 (= res!830292 (not (is-Nil!20425 lt!715300)))))

(assert (= (and d!565607 (not res!830294)) b!1849175))

(assert (= (and b!1849175 res!830292) b!1849176))

(assert (= (and b!1849176 res!830293) b!1849177))

(assert (= (and d!565607 (not res!830291)) b!1849178))

(declare-fun m!2276489 () Bool)

(assert (=> b!1849178 m!2276489))

(declare-fun m!2276491 () Bool)

(assert (=> b!1849178 m!2276491))

(assert (=> b!1849177 m!2276459))

(assert (=> b!1849177 m!2276421))

(assert (=> b!1849177 m!2276459))

(assert (=> b!1849177 m!2276421))

(declare-fun m!2276493 () Bool)

(assert (=> b!1849177 m!2276493))

(assert (=> b!1849176 m!2276455))

(assert (=> b!1849176 m!2276425))

(assert (=> b!1848989 d!565607))

(declare-fun d!565611 () Bool)

(declare-fun res!830308 () Bool)

(declare-fun e!1181483 () Bool)

(assert (=> d!565611 (=> res!830308 e!1181483)))

(assert (=> d!565611 (= res!830308 (is-ElementMatch!5016 r!26091))))

(assert (=> d!565611 (= (validRegex!2060 r!26091) e!1181483)))

(declare-fun b!1849197 () Bool)

(declare-fun e!1181479 () Bool)

(declare-fun e!1181482 () Bool)

(assert (=> b!1849197 (= e!1181479 e!1181482)))

(declare-fun res!830307 () Bool)

(assert (=> b!1849197 (=> (not res!830307) (not e!1181482))))

(declare-fun call!115300 () Bool)

(assert (=> b!1849197 (= res!830307 call!115300)))

(declare-fun bm!115294 () Bool)

(declare-fun call!115301 () Bool)

(assert (=> bm!115294 (= call!115300 call!115301)))

(declare-fun b!1849198 () Bool)

(declare-fun e!1181478 () Bool)

(declare-fun e!1181481 () Bool)

(assert (=> b!1849198 (= e!1181478 e!1181481)))

(declare-fun res!830306 () Bool)

(assert (=> b!1849198 (= res!830306 (not (nullable!1560 (reg!5345 r!26091))))))

(assert (=> b!1849198 (=> (not res!830306) (not e!1181481))))

(declare-fun b!1849199 () Bool)

(declare-fun e!1181484 () Bool)

(declare-fun call!115299 () Bool)

(assert (=> b!1849199 (= e!1181484 call!115299)))

(declare-fun bm!115295 () Bool)

(declare-fun c!301869 () Bool)

(assert (=> bm!115295 (= call!115299 (validRegex!2060 (ite c!301869 (regTwo!10545 r!26091) (regTwo!10544 r!26091))))))

(declare-fun b!1849200 () Bool)

(assert (=> b!1849200 (= e!1181483 e!1181478)))

(declare-fun c!301868 () Bool)

(assert (=> b!1849200 (= c!301868 (is-Star!5016 r!26091))))

(declare-fun b!1849201 () Bool)

(declare-fun e!1181480 () Bool)

(assert (=> b!1849201 (= e!1181478 e!1181480)))

(assert (=> b!1849201 (= c!301869 (is-Union!5016 r!26091))))

(declare-fun b!1849202 () Bool)

(assert (=> b!1849202 (= e!1181482 call!115299)))

(declare-fun b!1849203 () Bool)

(assert (=> b!1849203 (= e!1181481 call!115301)))

(declare-fun b!1849204 () Bool)

(declare-fun res!830305 () Bool)

(assert (=> b!1849204 (=> (not res!830305) (not e!1181484))))

(assert (=> b!1849204 (= res!830305 call!115300)))

(assert (=> b!1849204 (= e!1181480 e!1181484)))

(declare-fun bm!115296 () Bool)

(assert (=> bm!115296 (= call!115301 (validRegex!2060 (ite c!301868 (reg!5345 r!26091) (ite c!301869 (regOne!10545 r!26091) (regOne!10544 r!26091)))))))

(declare-fun b!1849205 () Bool)

(declare-fun res!830309 () Bool)

(assert (=> b!1849205 (=> res!830309 e!1181479)))

(assert (=> b!1849205 (= res!830309 (not (is-Concat!8794 r!26091)))))

(assert (=> b!1849205 (= e!1181480 e!1181479)))

(assert (= (and d!565611 (not res!830308)) b!1849200))

(assert (= (and b!1849200 c!301868) b!1849198))

(assert (= (and b!1849200 (not c!301868)) b!1849201))

(assert (= (and b!1849198 res!830306) b!1849203))

(assert (= (and b!1849201 c!301869) b!1849204))

(assert (= (and b!1849201 (not c!301869)) b!1849205))

(assert (= (and b!1849204 res!830305) b!1849199))

(assert (= (and b!1849205 (not res!830309)) b!1849197))

(assert (= (and b!1849197 res!830307) b!1849202))

(assert (= (or b!1849199 b!1849202) bm!115295))

(assert (= (or b!1849204 b!1849197) bm!115294))

(assert (= (or b!1849203 bm!115294) bm!115296))

(declare-fun m!2276499 () Bool)

(assert (=> b!1849198 m!2276499))

(declare-fun m!2276501 () Bool)

(assert (=> bm!115295 m!2276501))

(declare-fun m!2276503 () Bool)

(assert (=> bm!115296 m!2276503))

(assert (=> start!184524 d!565611))

(declare-fun lt!715333 () List!20497)

(declare-fun e!1181495 () Bool)

(declare-fun b!1849225 () Bool)

(assert (=> b!1849225 (= e!1181495 (or (not (= (getSuffix!993 lt!715300 prefix!1614) Nil!20425)) (= lt!715333 prefix!1614)))))

(declare-fun b!1849224 () Bool)

(declare-fun res!830323 () Bool)

(assert (=> b!1849224 (=> (not res!830323) (not e!1181495))))

(assert (=> b!1849224 (= res!830323 (= (size!16143 lt!715333) (+ (size!16143 prefix!1614) (size!16143 (getSuffix!993 lt!715300 prefix!1614)))))))

(declare-fun b!1849222 () Bool)

(declare-fun e!1181496 () List!20497)

(assert (=> b!1849222 (= e!1181496 (getSuffix!993 lt!715300 prefix!1614))))

(declare-fun b!1849223 () Bool)

(assert (=> b!1849223 (= e!1181496 (Cons!20425 (h!25826 prefix!1614) (++!5541 (t!172270 prefix!1614) (getSuffix!993 lt!715300 prefix!1614))))))

(declare-fun d!565615 () Bool)

(assert (=> d!565615 e!1181495))

(declare-fun res!830322 () Bool)

(assert (=> d!565615 (=> (not res!830322) (not e!1181495))))

(assert (=> d!565615 (= res!830322 (= (content!3046 lt!715333) (set.union (content!3046 prefix!1614) (content!3046 (getSuffix!993 lt!715300 prefix!1614)))))))

(assert (=> d!565615 (= lt!715333 e!1181496)))

(declare-fun c!301872 () Bool)

(assert (=> d!565615 (= c!301872 (is-Nil!20425 prefix!1614))))

(assert (=> d!565615 (= (++!5541 prefix!1614 (getSuffix!993 lt!715300 prefix!1614)) lt!715333)))

(assert (= (and d!565615 c!301872) b!1849222))

(assert (= (and d!565615 (not c!301872)) b!1849223))

(assert (= (and d!565615 res!830322) b!1849224))

(assert (= (and b!1849224 res!830323) b!1849225))

(declare-fun m!2276505 () Bool)

(assert (=> b!1849224 m!2276505))

(assert (=> b!1849224 m!2276491))

(assert (=> b!1849224 m!2276387))

(declare-fun m!2276507 () Bool)

(assert (=> b!1849224 m!2276507))

(assert (=> b!1849223 m!2276387))

(declare-fun m!2276509 () Bool)

(assert (=> b!1849223 m!2276509))

(declare-fun m!2276511 () Bool)

(assert (=> d!565615 m!2276511))

(assert (=> d!565615 m!2276445))

(assert (=> d!565615 m!2276387))

(declare-fun m!2276513 () Bool)

(assert (=> d!565615 m!2276513))

(assert (=> b!1848983 d!565615))

(declare-fun d!565617 () Bool)

(declare-fun lt!715337 () List!20497)

(assert (=> d!565617 (= (++!5541 prefix!1614 lt!715337) lt!715300)))

(declare-fun e!1181502 () List!20497)

(assert (=> d!565617 (= lt!715337 e!1181502)))

(declare-fun c!301875 () Bool)

(assert (=> d!565617 (= c!301875 (is-Cons!20425 prefix!1614))))

(assert (=> d!565617 (>= (size!16143 lt!715300) (size!16143 prefix!1614))))

(assert (=> d!565617 (= (getSuffix!993 lt!715300 prefix!1614) lt!715337)))

(declare-fun b!1849234 () Bool)

(assert (=> b!1849234 (= e!1181502 (getSuffix!993 (tail!2791 lt!715300) (t!172270 prefix!1614)))))

(declare-fun b!1849235 () Bool)

(assert (=> b!1849235 (= e!1181502 lt!715300)))

(assert (= (and d!565617 c!301875) b!1849234))

(assert (= (and d!565617 (not c!301875)) b!1849235))

(declare-fun m!2276525 () Bool)

(assert (=> d!565617 m!2276525))

(assert (=> d!565617 m!2276489))

(assert (=> d!565617 m!2276491))

(assert (=> b!1849234 m!2276421))

(assert (=> b!1849234 m!2276421))

(declare-fun m!2276527 () Bool)

(assert (=> b!1849234 m!2276527))

(assert (=> b!1848983 d!565617))

(declare-fun b!1849249 () Bool)

(declare-fun e!1181509 () Bool)

(declare-fun tp!522882 () Bool)

(declare-fun tp!522879 () Bool)

(assert (=> b!1849249 (= e!1181509 (and tp!522882 tp!522879))))

(assert (=> b!1848991 (= tp!522847 e!1181509)))

(declare-fun b!1849251 () Bool)

(declare-fun tp!522878 () Bool)

(declare-fun tp!522880 () Bool)

(assert (=> b!1849251 (= e!1181509 (and tp!522878 tp!522880))))

(declare-fun b!1849248 () Bool)

(assert (=> b!1849248 (= e!1181509 tp_is_empty!8481)))

(declare-fun b!1849250 () Bool)

(declare-fun tp!522881 () Bool)

(assert (=> b!1849250 (= e!1181509 tp!522881)))

(assert (= (and b!1848991 (is-ElementMatch!5016 (reg!5345 r!26091))) b!1849248))

(assert (= (and b!1848991 (is-Concat!8794 (reg!5345 r!26091))) b!1849249))

(assert (= (and b!1848991 (is-Star!5016 (reg!5345 r!26091))) b!1849250))

(assert (= (and b!1848991 (is-Union!5016 (reg!5345 r!26091))) b!1849251))

(declare-fun b!1849255 () Bool)

(declare-fun e!1181510 () Bool)

(declare-fun tp!522887 () Bool)

(declare-fun tp!522884 () Bool)

(assert (=> b!1849255 (= e!1181510 (and tp!522887 tp!522884))))

(assert (=> b!1848984 (= tp!522846 e!1181510)))

(declare-fun b!1849257 () Bool)

(declare-fun tp!522883 () Bool)

(declare-fun tp!522885 () Bool)

(assert (=> b!1849257 (= e!1181510 (and tp!522883 tp!522885))))

(declare-fun b!1849254 () Bool)

(assert (=> b!1849254 (= e!1181510 tp_is_empty!8481)))

(declare-fun b!1849256 () Bool)

(declare-fun tp!522886 () Bool)

(assert (=> b!1849256 (= e!1181510 tp!522886)))

(assert (= (and b!1848984 (is-ElementMatch!5016 (regOne!10544 r!26091))) b!1849254))

(assert (= (and b!1848984 (is-Concat!8794 (regOne!10544 r!26091))) b!1849255))

(assert (= (and b!1848984 (is-Star!5016 (regOne!10544 r!26091))) b!1849256))

(assert (= (and b!1848984 (is-Union!5016 (regOne!10544 r!26091))) b!1849257))

(declare-fun b!1849259 () Bool)

(declare-fun e!1181511 () Bool)

(declare-fun tp!522892 () Bool)

(declare-fun tp!522889 () Bool)

(assert (=> b!1849259 (= e!1181511 (and tp!522892 tp!522889))))

(assert (=> b!1848984 (= tp!522849 e!1181511)))

(declare-fun b!1849261 () Bool)

(declare-fun tp!522888 () Bool)

(declare-fun tp!522890 () Bool)

(assert (=> b!1849261 (= e!1181511 (and tp!522888 tp!522890))))

(declare-fun b!1849258 () Bool)

(assert (=> b!1849258 (= e!1181511 tp_is_empty!8481)))

(declare-fun b!1849260 () Bool)

(declare-fun tp!522891 () Bool)

(assert (=> b!1849260 (= e!1181511 tp!522891)))

(assert (= (and b!1848984 (is-ElementMatch!5016 (regTwo!10544 r!26091))) b!1849258))

(assert (= (and b!1848984 (is-Concat!8794 (regTwo!10544 r!26091))) b!1849259))

(assert (= (and b!1848984 (is-Star!5016 (regTwo!10544 r!26091))) b!1849260))

(assert (= (and b!1848984 (is-Union!5016 (regTwo!10544 r!26091))) b!1849261))

(declare-fun b!1849263 () Bool)

(declare-fun e!1181512 () Bool)

(declare-fun tp!522897 () Bool)

(declare-fun tp!522894 () Bool)

(assert (=> b!1849263 (= e!1181512 (and tp!522897 tp!522894))))

(assert (=> b!1848982 (= tp!522845 e!1181512)))

(declare-fun b!1849265 () Bool)

(declare-fun tp!522893 () Bool)

(declare-fun tp!522895 () Bool)

(assert (=> b!1849265 (= e!1181512 (and tp!522893 tp!522895))))

(declare-fun b!1849262 () Bool)

(assert (=> b!1849262 (= e!1181512 tp_is_empty!8481)))

(declare-fun b!1849264 () Bool)

(declare-fun tp!522896 () Bool)

(assert (=> b!1849264 (= e!1181512 tp!522896)))

(assert (= (and b!1848982 (is-ElementMatch!5016 (regOne!10545 r!26091))) b!1849262))

(assert (= (and b!1848982 (is-Concat!8794 (regOne!10545 r!26091))) b!1849263))

(assert (= (and b!1848982 (is-Star!5016 (regOne!10545 r!26091))) b!1849264))

(assert (= (and b!1848982 (is-Union!5016 (regOne!10545 r!26091))) b!1849265))

(declare-fun b!1849267 () Bool)

(declare-fun e!1181513 () Bool)

(declare-fun tp!522902 () Bool)

(declare-fun tp!522899 () Bool)

(assert (=> b!1849267 (= e!1181513 (and tp!522902 tp!522899))))

(assert (=> b!1848982 (= tp!522848 e!1181513)))

(declare-fun b!1849269 () Bool)

(declare-fun tp!522898 () Bool)

(declare-fun tp!522900 () Bool)

(assert (=> b!1849269 (= e!1181513 (and tp!522898 tp!522900))))

(declare-fun b!1849266 () Bool)

(assert (=> b!1849266 (= e!1181513 tp_is_empty!8481)))

(declare-fun b!1849268 () Bool)

(declare-fun tp!522901 () Bool)

(assert (=> b!1849268 (= e!1181513 tp!522901)))

(assert (= (and b!1848982 (is-ElementMatch!5016 (regTwo!10545 r!26091))) b!1849266))

(assert (= (and b!1848982 (is-Concat!8794 (regTwo!10545 r!26091))) b!1849267))

(assert (= (and b!1848982 (is-Star!5016 (regTwo!10545 r!26091))) b!1849268))

(assert (= (and b!1848982 (is-Union!5016 (regTwo!10545 r!26091))) b!1849269))

(declare-fun b!1849274 () Bool)

(declare-fun e!1181516 () Bool)

(declare-fun tp!522905 () Bool)

(assert (=> b!1849274 (= e!1181516 (and tp_is_empty!8481 tp!522905))))

(assert (=> b!1848988 (= tp!522844 e!1181516)))

(assert (= (and b!1848988 (is-Cons!20425 (t!172270 prefix!1614))) b!1849274))

(declare-fun b_lambda!61409 () Bool)

(assert (= b_lambda!61405 (or b!1848981 b_lambda!61409)))

(declare-fun bs!409767 () Bool)

(declare-fun d!565621 () Bool)

(assert (= bs!409767 (and d!565621 b!1848981)))

(declare-fun res!830332 () Bool)

(declare-fun e!1181517 () Bool)

(assert (=> bs!409767 (=> (not res!830332) (not e!1181517))))

(assert (=> bs!409767 (= res!830332 (matchR!2453 r!26091 lt!715312))))

(assert (=> bs!409767 (= (dynLambda!10155 lambda!73115 lt!715312) e!1181517)))

(declare-fun b!1849275 () Bool)

(assert (=> b!1849275 (= e!1181517 (isPrefix!1889 prefix!1614 lt!715312))))

(assert (= (and bs!409767 res!830332) b!1849275))

(declare-fun m!2276529 () Bool)

(assert (=> bs!409767 m!2276529))

(declare-fun m!2276531 () Bool)

(assert (=> b!1849275 m!2276531))

(assert (=> d!565593 d!565621))

(push 1)

(assert (not b!1849256))

(assert (not b!1849071))

(assert (not b!1849083))

(assert (not d!565595))

(assert (not bm!115296))

(assert (not b_lambda!61409))

(assert (not b!1849267))

(assert (not b!1849250))

(assert tp_is_empty!8481)

(assert (not b!1849260))

(assert (not d!565599))

(assert (not b!1849269))

(assert (not b!1849074))

(assert (not b!1849263))

(assert (not b!1849078))

(assert (not b!1849255))

(assert (not b!1849128))

(assert (not bs!409767))

(assert (not b!1849251))

(assert (not b!1849076))

(assert (not b!1849249))

(assert (not b!1849118))

(assert (not d!565597))

(assert (not bm!115295))

(assert (not b!1849178))

(assert (not d!565615))

(assert (not d!565601))

(assert (not b!1849198))

(assert (not b!1849234))

(assert (not b!1849177))

(assert (not d!565603))

(assert (not b!1849261))

(assert (not b!1849176))

(assert (not d!565589))

(assert (not b!1849125))

(assert (not bm!115285))

(assert (not b!1849073))

(assert (not b!1849268))

(assert (not b!1849126))

(assert (not d!565617))

(assert (not b!1849274))

(assert (not b!1849223))

(assert (not b!1849264))

(assert (not bm!115286))

(assert (not b!1849275))

(assert (not bm!115272))

(assert (not bm!115283))

(assert (not b!1849265))

(assert (not b!1849224))

(assert (not b!1849257))

(assert (not b!1849259))

(assert (not d!565593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

