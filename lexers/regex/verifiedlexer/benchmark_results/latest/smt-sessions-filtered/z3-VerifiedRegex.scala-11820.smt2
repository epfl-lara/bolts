; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665162 () Bool)

(assert start!665162)

(declare-fun b!6909984 () Bool)

(assert (=> b!6909984 true))

(assert (=> b!6909984 true))

(assert (=> b!6909984 true))

(declare-fun lambda!392638 () Int)

(declare-fun lambda!392637 () Int)

(assert (=> b!6909984 (not (= lambda!392638 lambda!392637))))

(assert (=> b!6909984 true))

(assert (=> b!6909984 true))

(assert (=> b!6909984 true))

(declare-fun bs!1844523 () Bool)

(declare-fun b!6909987 () Bool)

(assert (= bs!1844523 (and b!6909987 b!6909984)))

(declare-datatypes ((C!34044 0))(
  ( (C!34045 (val!26724 Int)) )
))
(declare-datatypes ((List!66644 0))(
  ( (Nil!66520) (Cons!66520 (h!72968 C!34044) (t!380387 List!66644)) )
))
(declare-datatypes ((tuple2!67508 0))(
  ( (tuple2!67509 (_1!37057 List!66644) (_2!37057 List!66644)) )
))
(declare-fun lt!2468388 () tuple2!67508)

(declare-fun lambda!392639 () Int)

(declare-datatypes ((Regex!16887 0))(
  ( (ElementMatch!16887 (c!1283527 C!34044)) (Concat!25732 (regOne!34286 Regex!16887) (regTwo!34286 Regex!16887)) (EmptyExpr!16887) (Star!16887 (reg!17216 Regex!16887)) (EmptyLang!16887) (Union!16887 (regOne!34287 Regex!16887) (regTwo!34287 Regex!16887)) )
))
(declare-fun r1!6342 () Regex!16887)

(declare-fun s!14361 () List!66644)

(declare-fun r2!6280 () Regex!16887)

(declare-fun r3!135 () Regex!16887)

(declare-fun lt!2468398 () Regex!16887)

(assert (=> bs!1844523 (= (and (= (_2!37057 lt!2468388) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468398)) (= lambda!392639 lambda!392637))))

(assert (=> bs!1844523 (not (= lambda!392639 lambda!392638))))

(assert (=> b!6909987 true))

(assert (=> b!6909987 true))

(assert (=> b!6909987 true))

(declare-fun lambda!392640 () Int)

(assert (=> bs!1844523 (not (= lambda!392640 lambda!392637))))

(assert (=> bs!1844523 (= (and (= (_2!37057 lt!2468388) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468398)) (= lambda!392640 lambda!392638))))

(assert (=> b!6909987 (not (= lambda!392640 lambda!392639))))

(assert (=> b!6909987 true))

(assert (=> b!6909987 true))

(assert (=> b!6909987 true))

(declare-fun e!4160368 () Bool)

(declare-fun e!4160362 () Bool)

(assert (=> b!6909984 (= e!4160368 e!4160362)))

(declare-fun res!2817980 () Bool)

(assert (=> b!6909984 (=> res!2817980 e!4160362)))

(declare-fun lt!2468397 () Bool)

(assert (=> b!6909984 (= res!2817980 (not lt!2468397))))

(declare-fun matchRSpec!3950 (Regex!16887 List!66644) Bool)

(assert (=> b!6909984 (= lt!2468397 (matchRSpec!3950 r1!6342 (_1!37057 lt!2468388)))))

(declare-fun matchR!9032 (Regex!16887 List!66644) Bool)

(assert (=> b!6909984 (= lt!2468397 (matchR!9032 r1!6342 (_1!37057 lt!2468388)))))

(declare-datatypes ((Unit!160510 0))(
  ( (Unit!160511) )
))
(declare-fun lt!2468386 () Unit!160510)

(declare-fun mainMatchTheorem!3950 (Regex!16887 List!66644) Unit!160510)

(assert (=> b!6909984 (= lt!2468386 (mainMatchTheorem!3950 r1!6342 (_1!37057 lt!2468388)))))

(declare-datatypes ((Option!16666 0))(
  ( (None!16665) (Some!16665 (v!52937 tuple2!67508)) )
))
(declare-fun lt!2468389 () Option!16666)

(declare-fun get!23281 (Option!16666) tuple2!67508)

(assert (=> b!6909984 (= lt!2468388 (get!23281 lt!2468389))))

(declare-fun Exists!3895 (Int) Bool)

(assert (=> b!6909984 (= (Exists!3895 lambda!392637) (Exists!3895 lambda!392638))))

(declare-fun lt!2468395 () Unit!160510)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2368 (Regex!16887 Regex!16887 List!66644) Unit!160510)

(assert (=> b!6909984 (= lt!2468395 (lemmaExistCutMatchRandMatchRSpecEquivalent!2368 r1!6342 lt!2468398 s!14361))))

(assert (=> b!6909984 (Exists!3895 lambda!392637)))

(declare-fun lt!2468394 () Unit!160510)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2842 (Regex!16887 Regex!16887 List!66644) Unit!160510)

(assert (=> b!6909984 (= lt!2468394 (lemmaFindConcatSeparationEquivalentToExists!2842 r1!6342 lt!2468398 s!14361))))

(declare-fun b!6909985 () Bool)

(declare-fun e!4160364 () Bool)

(declare-fun tp_is_empty!42999 () Bool)

(assert (=> b!6909985 (= e!4160364 tp_is_empty!42999)))

(declare-fun b!6909986 () Bool)

(declare-fun res!2817981 () Bool)

(declare-fun e!4160361 () Bool)

(assert (=> b!6909986 (=> (not res!2817981) (not e!4160361))))

(declare-fun validRegex!8595 (Regex!16887) Bool)

(assert (=> b!6909986 (= res!2817981 (validRegex!8595 r2!6280))))

(declare-fun lt!2468391 () Option!16666)

(assert (=> b!6909987 (= e!4160362 (matchR!9032 r2!6280 (_1!37057 (get!23281 lt!2468391))))))

(assert (=> b!6909987 (= (Exists!3895 lambda!392639) (Exists!3895 lambda!392640))))

(declare-fun lt!2468385 () Unit!160510)

(assert (=> b!6909987 (= lt!2468385 (lemmaExistCutMatchRandMatchRSpecEquivalent!2368 r2!6280 r3!135 (_2!37057 lt!2468388)))))

(declare-fun isDefined!13369 (Option!16666) Bool)

(assert (=> b!6909987 (= (isDefined!13369 lt!2468391) (Exists!3895 lambda!392639))))

(declare-fun findConcatSeparation!3080 (Regex!16887 Regex!16887 List!66644 List!66644 List!66644) Option!16666)

(assert (=> b!6909987 (= lt!2468391 (findConcatSeparation!3080 r2!6280 r3!135 Nil!66520 (_2!37057 lt!2468388) (_2!37057 lt!2468388)))))

(declare-fun lt!2468390 () Unit!160510)

(assert (=> b!6909987 (= lt!2468390 (lemmaFindConcatSeparationEquivalentToExists!2842 r2!6280 r3!135 (_2!37057 lt!2468388)))))

(assert (=> b!6909987 (matchRSpec!3950 lt!2468398 (_2!37057 lt!2468388))))

(declare-fun lt!2468399 () Unit!160510)

(assert (=> b!6909987 (= lt!2468399 (mainMatchTheorem!3950 lt!2468398 (_2!37057 lt!2468388)))))

(declare-fun b!6909988 () Bool)

(declare-fun e!4160365 () Bool)

(assert (=> b!6909988 (= e!4160365 e!4160368)))

(declare-fun res!2817982 () Bool)

(assert (=> b!6909988 (=> res!2817982 e!4160368)))

(assert (=> b!6909988 (= res!2817982 (not (isDefined!13369 lt!2468389)))))

(assert (=> b!6909988 (= lt!2468389 (findConcatSeparation!3080 r1!6342 lt!2468398 Nil!66520 s!14361 s!14361))))

(declare-fun b!6909989 () Bool)

(declare-fun e!4160366 () Bool)

(declare-fun tp!1902841 () Bool)

(declare-fun tp!1902849 () Bool)

(assert (=> b!6909989 (= e!4160366 (and tp!1902841 tp!1902849))))

(declare-fun b!6909990 () Bool)

(declare-fun e!4160363 () Bool)

(assert (=> b!6909990 (= e!4160363 tp_is_empty!42999)))

(declare-fun b!6909991 () Bool)

(declare-fun tp!1902843 () Bool)

(declare-fun tp!1902851 () Bool)

(assert (=> b!6909991 (= e!4160364 (and tp!1902843 tp!1902851))))

(declare-fun b!6909992 () Bool)

(assert (=> b!6909992 (= e!4160366 tp_is_empty!42999)))

(declare-fun b!6909993 () Bool)

(declare-fun res!2817978 () Bool)

(assert (=> b!6909993 (=> (not res!2817978) (not e!4160361))))

(assert (=> b!6909993 (= res!2817978 (validRegex!8595 r3!135))))

(declare-fun res!2817977 () Bool)

(assert (=> start!665162 (=> (not res!2817977) (not e!4160361))))

(assert (=> start!665162 (= res!2817977 (validRegex!8595 r1!6342))))

(assert (=> start!665162 e!4160361))

(assert (=> start!665162 e!4160364))

(assert (=> start!665162 e!4160366))

(assert (=> start!665162 e!4160363))

(declare-fun e!4160367 () Bool)

(assert (=> start!665162 e!4160367))

(declare-fun b!6909994 () Bool)

(declare-fun tp!1902845 () Bool)

(declare-fun tp!1902847 () Bool)

(assert (=> b!6909994 (= e!4160363 (and tp!1902845 tp!1902847))))

(declare-fun b!6909995 () Bool)

(assert (=> b!6909995 (= e!4160361 (not e!4160365))))

(declare-fun res!2817979 () Bool)

(assert (=> b!6909995 (=> res!2817979 e!4160365)))

(declare-fun lt!2468393 () Bool)

(assert (=> b!6909995 (= res!2817979 lt!2468393)))

(declare-fun lt!2468387 () Regex!16887)

(assert (=> b!6909995 (= (matchR!9032 lt!2468387 s!14361) (matchRSpec!3950 lt!2468387 s!14361))))

(declare-fun lt!2468384 () Unit!160510)

(assert (=> b!6909995 (= lt!2468384 (mainMatchTheorem!3950 lt!2468387 s!14361))))

(declare-fun lt!2468396 () Regex!16887)

(assert (=> b!6909995 (= lt!2468393 (matchRSpec!3950 lt!2468396 s!14361))))

(assert (=> b!6909995 (= lt!2468393 (matchR!9032 lt!2468396 s!14361))))

(declare-fun lt!2468392 () Unit!160510)

(assert (=> b!6909995 (= lt!2468392 (mainMatchTheorem!3950 lt!2468396 s!14361))))

(assert (=> b!6909995 (= lt!2468387 (Concat!25732 r1!6342 lt!2468398))))

(assert (=> b!6909995 (= lt!2468398 (Concat!25732 r2!6280 r3!135))))

(assert (=> b!6909995 (= lt!2468396 (Concat!25732 (Concat!25732 r1!6342 r2!6280) r3!135))))

(declare-fun b!6909996 () Bool)

(declare-fun tp!1902853 () Bool)

(assert (=> b!6909996 (= e!4160366 tp!1902853)))

(declare-fun b!6909997 () Bool)

(declare-fun tp!1902842 () Bool)

(assert (=> b!6909997 (= e!4160367 (and tp_is_empty!42999 tp!1902842))))

(declare-fun b!6909998 () Bool)

(declare-fun res!2817976 () Bool)

(assert (=> b!6909998 (=> res!2817976 e!4160362)))

(assert (=> b!6909998 (= res!2817976 (not (matchR!9032 lt!2468398 (_2!37057 lt!2468388))))))

(declare-fun b!6909999 () Bool)

(declare-fun tp!1902840 () Bool)

(assert (=> b!6909999 (= e!4160363 tp!1902840)))

(declare-fun b!6910000 () Bool)

(declare-fun tp!1902848 () Bool)

(declare-fun tp!1902852 () Bool)

(assert (=> b!6910000 (= e!4160366 (and tp!1902848 tp!1902852))))

(declare-fun b!6910001 () Bool)

(declare-fun tp!1902850 () Bool)

(declare-fun tp!1902855 () Bool)

(assert (=> b!6910001 (= e!4160364 (and tp!1902850 tp!1902855))))

(declare-fun b!6910002 () Bool)

(declare-fun tp!1902846 () Bool)

(declare-fun tp!1902844 () Bool)

(assert (=> b!6910002 (= e!4160363 (and tp!1902846 tp!1902844))))

(declare-fun b!6910003 () Bool)

(declare-fun tp!1902854 () Bool)

(assert (=> b!6910003 (= e!4160364 tp!1902854)))

(assert (= (and start!665162 res!2817977) b!6909986))

(assert (= (and b!6909986 res!2817981) b!6909993))

(assert (= (and b!6909993 res!2817978) b!6909995))

(assert (= (and b!6909995 (not res!2817979)) b!6909988))

(assert (= (and b!6909988 (not res!2817982)) b!6909984))

(assert (= (and b!6909984 (not res!2817980)) b!6909998))

(assert (= (and b!6909998 (not res!2817976)) b!6909987))

(get-info :version)

(assert (= (and start!665162 ((_ is ElementMatch!16887) r1!6342)) b!6909985))

(assert (= (and start!665162 ((_ is Concat!25732) r1!6342)) b!6910001))

(assert (= (and start!665162 ((_ is Star!16887) r1!6342)) b!6910003))

(assert (= (and start!665162 ((_ is Union!16887) r1!6342)) b!6909991))

(assert (= (and start!665162 ((_ is ElementMatch!16887) r2!6280)) b!6909992))

(assert (= (and start!665162 ((_ is Concat!25732) r2!6280)) b!6910000))

(assert (= (and start!665162 ((_ is Star!16887) r2!6280)) b!6909996))

(assert (= (and start!665162 ((_ is Union!16887) r2!6280)) b!6909989))

(assert (= (and start!665162 ((_ is ElementMatch!16887) r3!135)) b!6909990))

(assert (= (and start!665162 ((_ is Concat!25732) r3!135)) b!6910002))

(assert (= (and start!665162 ((_ is Star!16887) r3!135)) b!6909999))

(assert (= (and start!665162 ((_ is Union!16887) r3!135)) b!6909994))

(assert (= (and start!665162 ((_ is Cons!66520) s!14361)) b!6909997))

(declare-fun m!7624908 () Bool)

(assert (=> start!665162 m!7624908))

(declare-fun m!7624910 () Bool)

(assert (=> b!6909988 m!7624910))

(declare-fun m!7624912 () Bool)

(assert (=> b!6909988 m!7624912))

(declare-fun m!7624914 () Bool)

(assert (=> b!6909986 m!7624914))

(declare-fun m!7624916 () Bool)

(assert (=> b!6909998 m!7624916))

(declare-fun m!7624918 () Bool)

(assert (=> b!6909987 m!7624918))

(declare-fun m!7624920 () Bool)

(assert (=> b!6909987 m!7624920))

(declare-fun m!7624922 () Bool)

(assert (=> b!6909987 m!7624922))

(assert (=> b!6909987 m!7624920))

(declare-fun m!7624924 () Bool)

(assert (=> b!6909987 m!7624924))

(declare-fun m!7624926 () Bool)

(assert (=> b!6909987 m!7624926))

(declare-fun m!7624928 () Bool)

(assert (=> b!6909987 m!7624928))

(declare-fun m!7624930 () Bool)

(assert (=> b!6909987 m!7624930))

(declare-fun m!7624932 () Bool)

(assert (=> b!6909987 m!7624932))

(declare-fun m!7624934 () Bool)

(assert (=> b!6909987 m!7624934))

(declare-fun m!7624936 () Bool)

(assert (=> b!6909987 m!7624936))

(declare-fun m!7624938 () Bool)

(assert (=> b!6909995 m!7624938))

(declare-fun m!7624940 () Bool)

(assert (=> b!6909995 m!7624940))

(declare-fun m!7624942 () Bool)

(assert (=> b!6909995 m!7624942))

(declare-fun m!7624944 () Bool)

(assert (=> b!6909995 m!7624944))

(declare-fun m!7624946 () Bool)

(assert (=> b!6909995 m!7624946))

(declare-fun m!7624948 () Bool)

(assert (=> b!6909995 m!7624948))

(declare-fun m!7624950 () Bool)

(assert (=> b!6909993 m!7624950))

(declare-fun m!7624952 () Bool)

(assert (=> b!6909984 m!7624952))

(declare-fun m!7624954 () Bool)

(assert (=> b!6909984 m!7624954))

(declare-fun m!7624956 () Bool)

(assert (=> b!6909984 m!7624956))

(declare-fun m!7624958 () Bool)

(assert (=> b!6909984 m!7624958))

(declare-fun m!7624960 () Bool)

(assert (=> b!6909984 m!7624960))

(declare-fun m!7624962 () Bool)

(assert (=> b!6909984 m!7624962))

(declare-fun m!7624964 () Bool)

(assert (=> b!6909984 m!7624964))

(declare-fun m!7624966 () Bool)

(assert (=> b!6909984 m!7624966))

(assert (=> b!6909984 m!7624954))

(check-sat (not b!6909993) (not b!6909995) (not b!6909994) (not b!6909999) (not b!6909997) (not start!665162) (not b!6909988) (not b!6909987) (not b!6909989) (not b!6909986) (not b!6910002) (not b!6909996) (not b!6909998) (not b!6909984) (not b!6910003) (not b!6909991) (not b!6910001) (not b!6910000) tp_is_empty!42999)
(check-sat)
(get-model)

(declare-fun b!6910134 () Bool)

(declare-fun e!4160440 () Bool)

(declare-fun head!13858 (List!66644) C!34044)

(assert (=> b!6910134 (= e!4160440 (= (head!13858 s!14361) (c!1283527 lt!2468387)))))

(declare-fun b!6910135 () Bool)

(declare-fun e!4160444 () Bool)

(declare-fun e!4160442 () Bool)

(assert (=> b!6910135 (= e!4160444 e!4160442)))

(declare-fun res!2818053 () Bool)

(assert (=> b!6910135 (=> (not res!2818053) (not e!4160442))))

(declare-fun lt!2468414 () Bool)

(assert (=> b!6910135 (= res!2818053 (not lt!2468414))))

(declare-fun b!6910136 () Bool)

(declare-fun res!2818056 () Bool)

(assert (=> b!6910136 (=> res!2818056 e!4160444)))

(assert (=> b!6910136 (= res!2818056 (not ((_ is ElementMatch!16887) lt!2468387)))))

(declare-fun e!4160441 () Bool)

(assert (=> b!6910136 (= e!4160441 e!4160444)))

(declare-fun b!6910137 () Bool)

(declare-fun res!2818059 () Bool)

(assert (=> b!6910137 (=> (not res!2818059) (not e!4160440))))

(declare-fun call!628264 () Bool)

(assert (=> b!6910137 (= res!2818059 (not call!628264))))

(declare-fun b!6910138 () Bool)

(declare-fun e!4160443 () Bool)

(assert (=> b!6910138 (= e!4160443 e!4160441)))

(declare-fun c!1283557 () Bool)

(assert (=> b!6910138 (= c!1283557 ((_ is EmptyLang!16887) lt!2468387))))

(declare-fun b!6910139 () Bool)

(declare-fun res!2818060 () Bool)

(assert (=> b!6910139 (=> res!2818060 e!4160444)))

(assert (=> b!6910139 (= res!2818060 e!4160440)))

(declare-fun res!2818054 () Bool)

(assert (=> b!6910139 (=> (not res!2818054) (not e!4160440))))

(assert (=> b!6910139 (= res!2818054 lt!2468414)))

(declare-fun b!6910140 () Bool)

(declare-fun e!4160445 () Bool)

(declare-fun nullable!6726 (Regex!16887) Bool)

(assert (=> b!6910140 (= e!4160445 (nullable!6726 lt!2468387))))

(declare-fun b!6910141 () Bool)

(declare-fun res!2818055 () Bool)

(assert (=> b!6910141 (=> (not res!2818055) (not e!4160440))))

(declare-fun isEmpty!38766 (List!66644) Bool)

(declare-fun tail!12910 (List!66644) List!66644)

(assert (=> b!6910141 (= res!2818055 (isEmpty!38766 (tail!12910 s!14361)))))

(declare-fun b!6910142 () Bool)

(declare-fun res!2818057 () Bool)

(declare-fun e!4160446 () Bool)

(assert (=> b!6910142 (=> res!2818057 e!4160446)))

(assert (=> b!6910142 (= res!2818057 (not (isEmpty!38766 (tail!12910 s!14361))))))

(declare-fun b!6910143 () Bool)

(declare-fun derivativeStep!5405 (Regex!16887 C!34044) Regex!16887)

(assert (=> b!6910143 (= e!4160445 (matchR!9032 (derivativeStep!5405 lt!2468387 (head!13858 s!14361)) (tail!12910 s!14361)))))

(declare-fun d!2163219 () Bool)

(assert (=> d!2163219 e!4160443))

(declare-fun c!1283555 () Bool)

(assert (=> d!2163219 (= c!1283555 ((_ is EmptyExpr!16887) lt!2468387))))

(assert (=> d!2163219 (= lt!2468414 e!4160445)))

(declare-fun c!1283556 () Bool)

(assert (=> d!2163219 (= c!1283556 (isEmpty!38766 s!14361))))

(assert (=> d!2163219 (validRegex!8595 lt!2468387)))

(assert (=> d!2163219 (= (matchR!9032 lt!2468387 s!14361) lt!2468414)))

(declare-fun b!6910144 () Bool)

(assert (=> b!6910144 (= e!4160441 (not lt!2468414))))

(declare-fun b!6910145 () Bool)

(assert (=> b!6910145 (= e!4160446 (not (= (head!13858 s!14361) (c!1283527 lt!2468387))))))

(declare-fun b!6910146 () Bool)

(assert (=> b!6910146 (= e!4160442 e!4160446)))

(declare-fun res!2818058 () Bool)

(assert (=> b!6910146 (=> res!2818058 e!4160446)))

(assert (=> b!6910146 (= res!2818058 call!628264)))

(declare-fun b!6910147 () Bool)

(assert (=> b!6910147 (= e!4160443 (= lt!2468414 call!628264))))

(declare-fun bm!628259 () Bool)

(assert (=> bm!628259 (= call!628264 (isEmpty!38766 s!14361))))

(assert (= (and d!2163219 c!1283556) b!6910140))

(assert (= (and d!2163219 (not c!1283556)) b!6910143))

(assert (= (and d!2163219 c!1283555) b!6910147))

(assert (= (and d!2163219 (not c!1283555)) b!6910138))

(assert (= (and b!6910138 c!1283557) b!6910144))

(assert (= (and b!6910138 (not c!1283557)) b!6910136))

(assert (= (and b!6910136 (not res!2818056)) b!6910139))

(assert (= (and b!6910139 res!2818054) b!6910137))

(assert (= (and b!6910137 res!2818059) b!6910141))

(assert (= (and b!6910141 res!2818055) b!6910134))

(assert (= (and b!6910139 (not res!2818060)) b!6910135))

(assert (= (and b!6910135 res!2818053) b!6910146))

(assert (= (and b!6910146 (not res!2818058)) b!6910142))

(assert (= (and b!6910142 (not res!2818057)) b!6910145))

(assert (= (or b!6910147 b!6910137 b!6910146) bm!628259))

(declare-fun m!7625010 () Bool)

(assert (=> d!2163219 m!7625010))

(declare-fun m!7625012 () Bool)

(assert (=> d!2163219 m!7625012))

(declare-fun m!7625014 () Bool)

(assert (=> b!6910134 m!7625014))

(assert (=> bm!628259 m!7625010))

(declare-fun m!7625016 () Bool)

(assert (=> b!6910142 m!7625016))

(assert (=> b!6910142 m!7625016))

(declare-fun m!7625018 () Bool)

(assert (=> b!6910142 m!7625018))

(assert (=> b!6910141 m!7625016))

(assert (=> b!6910141 m!7625016))

(assert (=> b!6910141 m!7625018))

(assert (=> b!6910143 m!7625014))

(assert (=> b!6910143 m!7625014))

(declare-fun m!7625020 () Bool)

(assert (=> b!6910143 m!7625020))

(assert (=> b!6910143 m!7625016))

(assert (=> b!6910143 m!7625020))

(assert (=> b!6910143 m!7625016))

(declare-fun m!7625022 () Bool)

(assert (=> b!6910143 m!7625022))

(declare-fun m!7625024 () Bool)

(assert (=> b!6910140 m!7625024))

(assert (=> b!6910145 m!7625014))

(assert (=> b!6909995 d!2163219))

(declare-fun bs!1844537 () Bool)

(declare-fun b!6910231 () Bool)

(assert (= bs!1844537 (and b!6910231 b!6909984)))

(declare-fun lambda!392658 () Int)

(assert (=> bs!1844537 (not (= lambda!392658 lambda!392637))))

(assert (=> bs!1844537 (not (= lambda!392658 lambda!392638))))

(declare-fun bs!1844538 () Bool)

(assert (= bs!1844538 (and b!6910231 b!6909987)))

(assert (=> bs!1844538 (not (= lambda!392658 lambda!392639))))

(assert (=> bs!1844538 (not (= lambda!392658 lambda!392640))))

(assert (=> b!6910231 true))

(assert (=> b!6910231 true))

(declare-fun bs!1844545 () Bool)

(declare-fun b!6910234 () Bool)

(assert (= bs!1844545 (and b!6910234 b!6909987)))

(declare-fun lambda!392660 () Int)

(assert (=> bs!1844545 (not (= lambda!392660 lambda!392639))))

(declare-fun bs!1844546 () Bool)

(assert (= bs!1844546 (and b!6910234 b!6909984)))

(assert (=> bs!1844546 (not (= lambda!392660 lambda!392637))))

(declare-fun bs!1844547 () Bool)

(assert (= bs!1844547 (and b!6910234 b!6910231)))

(assert (=> bs!1844547 (not (= lambda!392660 lambda!392658))))

(assert (=> bs!1844545 (= (and (= s!14361 (_2!37057 lt!2468388)) (= (regOne!34286 lt!2468396) r2!6280) (= (regTwo!34286 lt!2468396) r3!135)) (= lambda!392660 lambda!392640))))

(assert (=> bs!1844546 (= (and (= (regOne!34286 lt!2468396) r1!6342) (= (regTwo!34286 lt!2468396) lt!2468398)) (= lambda!392660 lambda!392638))))

(assert (=> b!6910234 true))

(assert (=> b!6910234 true))

(declare-fun e!4160495 () Bool)

(declare-fun call!628276 () Bool)

(assert (=> b!6910231 (= e!4160495 call!628276)))

(declare-fun b!6910232 () Bool)

(declare-fun c!1283581 () Bool)

(assert (=> b!6910232 (= c!1283581 ((_ is ElementMatch!16887) lt!2468396))))

(declare-fun e!4160499 () Bool)

(declare-fun e!4160496 () Bool)

(assert (=> b!6910232 (= e!4160499 e!4160496)))

(declare-fun b!6910233 () Bool)

(assert (=> b!6910233 (= e!4160496 (= s!14361 (Cons!66520 (c!1283527 lt!2468396) Nil!66520)))))

(declare-fun e!4160497 () Bool)

(assert (=> b!6910234 (= e!4160497 call!628276)))

(declare-fun b!6910235 () Bool)

(declare-fun e!4160498 () Bool)

(declare-fun call!628275 () Bool)

(assert (=> b!6910235 (= e!4160498 call!628275)))

(declare-fun c!1283579 () Bool)

(declare-fun bm!628270 () Bool)

(assert (=> bm!628270 (= call!628276 (Exists!3895 (ite c!1283579 lambda!392658 lambda!392660)))))

(declare-fun b!6910236 () Bool)

(declare-fun c!1283578 () Bool)

(assert (=> b!6910236 (= c!1283578 ((_ is Union!16887) lt!2468396))))

(declare-fun e!4160494 () Bool)

(assert (=> b!6910236 (= e!4160496 e!4160494)))

(declare-fun b!6910237 () Bool)

(assert (=> b!6910237 (= e!4160494 e!4160497)))

(assert (=> b!6910237 (= c!1283579 ((_ is Star!16887) lt!2468396))))

(declare-fun b!6910238 () Bool)

(assert (=> b!6910238 (= e!4160498 e!4160499)))

(declare-fun res!2818104 () Bool)

(assert (=> b!6910238 (= res!2818104 (not ((_ is EmptyLang!16887) lt!2468396)))))

(assert (=> b!6910238 (=> (not res!2818104) (not e!4160499))))

(declare-fun b!6910239 () Bool)

(declare-fun e!4160500 () Bool)

(assert (=> b!6910239 (= e!4160500 (matchRSpec!3950 (regTwo!34287 lt!2468396) s!14361))))

(declare-fun d!2163225 () Bool)

(declare-fun c!1283580 () Bool)

(assert (=> d!2163225 (= c!1283580 ((_ is EmptyExpr!16887) lt!2468396))))

(assert (=> d!2163225 (= (matchRSpec!3950 lt!2468396 s!14361) e!4160498)))

(declare-fun b!6910240 () Bool)

(assert (=> b!6910240 (= e!4160494 e!4160500)))

(declare-fun res!2818106 () Bool)

(assert (=> b!6910240 (= res!2818106 (matchRSpec!3950 (regOne!34287 lt!2468396) s!14361))))

(assert (=> b!6910240 (=> res!2818106 e!4160500)))

(declare-fun b!6910241 () Bool)

(declare-fun res!2818105 () Bool)

(assert (=> b!6910241 (=> res!2818105 e!4160495)))

(assert (=> b!6910241 (= res!2818105 call!628275)))

(assert (=> b!6910241 (= e!4160497 e!4160495)))

(declare-fun bm!628271 () Bool)

(assert (=> bm!628271 (= call!628275 (isEmpty!38766 s!14361))))

(assert (= (and d!2163225 c!1283580) b!6910235))

(assert (= (and d!2163225 (not c!1283580)) b!6910238))

(assert (= (and b!6910238 res!2818104) b!6910232))

(assert (= (and b!6910232 c!1283581) b!6910233))

(assert (= (and b!6910232 (not c!1283581)) b!6910236))

(assert (= (and b!6910236 c!1283578) b!6910240))

(assert (= (and b!6910236 (not c!1283578)) b!6910237))

(assert (= (and b!6910240 (not res!2818106)) b!6910239))

(assert (= (and b!6910237 c!1283579) b!6910241))

(assert (= (and b!6910237 (not c!1283579)) b!6910234))

(assert (= (and b!6910241 (not res!2818105)) b!6910231))

(assert (= (or b!6910231 b!6910234) bm!628270))

(assert (= (or b!6910235 b!6910241) bm!628271))

(declare-fun m!7625056 () Bool)

(assert (=> bm!628270 m!7625056))

(declare-fun m!7625058 () Bool)

(assert (=> b!6910239 m!7625058))

(declare-fun m!7625066 () Bool)

(assert (=> b!6910240 m!7625066))

(assert (=> bm!628271 m!7625010))

(assert (=> b!6909995 d!2163225))

(declare-fun d!2163243 () Bool)

(assert (=> d!2163243 (= (matchR!9032 lt!2468387 s!14361) (matchRSpec!3950 lt!2468387 s!14361))))

(declare-fun lt!2468430 () Unit!160510)

(declare-fun choose!51466 (Regex!16887 List!66644) Unit!160510)

(assert (=> d!2163243 (= lt!2468430 (choose!51466 lt!2468387 s!14361))))

(assert (=> d!2163243 (validRegex!8595 lt!2468387)))

(assert (=> d!2163243 (= (mainMatchTheorem!3950 lt!2468387 s!14361) lt!2468430)))

(declare-fun bs!1844567 () Bool)

(assert (= bs!1844567 d!2163243))

(assert (=> bs!1844567 m!7624944))

(assert (=> bs!1844567 m!7624946))

(declare-fun m!7625096 () Bool)

(assert (=> bs!1844567 m!7625096))

(assert (=> bs!1844567 m!7625012))

(assert (=> b!6909995 d!2163243))

(declare-fun b!6910296 () Bool)

(declare-fun e!4160531 () Bool)

(assert (=> b!6910296 (= e!4160531 (= (head!13858 s!14361) (c!1283527 lt!2468396)))))

(declare-fun b!6910297 () Bool)

(declare-fun e!4160535 () Bool)

(declare-fun e!4160533 () Bool)

(assert (=> b!6910297 (= e!4160535 e!4160533)))

(declare-fun res!2818133 () Bool)

(assert (=> b!6910297 (=> (not res!2818133) (not e!4160533))))

(declare-fun lt!2468431 () Bool)

(assert (=> b!6910297 (= res!2818133 (not lt!2468431))))

(declare-fun b!6910298 () Bool)

(declare-fun res!2818136 () Bool)

(assert (=> b!6910298 (=> res!2818136 e!4160535)))

(assert (=> b!6910298 (= res!2818136 (not ((_ is ElementMatch!16887) lt!2468396)))))

(declare-fun e!4160532 () Bool)

(assert (=> b!6910298 (= e!4160532 e!4160535)))

(declare-fun b!6910299 () Bool)

(declare-fun res!2818139 () Bool)

(assert (=> b!6910299 (=> (not res!2818139) (not e!4160531))))

(declare-fun call!628283 () Bool)

(assert (=> b!6910299 (= res!2818139 (not call!628283))))

(declare-fun b!6910300 () Bool)

(declare-fun e!4160534 () Bool)

(assert (=> b!6910300 (= e!4160534 e!4160532)))

(declare-fun c!1283598 () Bool)

(assert (=> b!6910300 (= c!1283598 ((_ is EmptyLang!16887) lt!2468396))))

(declare-fun b!6910301 () Bool)

(declare-fun res!2818140 () Bool)

(assert (=> b!6910301 (=> res!2818140 e!4160535)))

(assert (=> b!6910301 (= res!2818140 e!4160531)))

(declare-fun res!2818134 () Bool)

(assert (=> b!6910301 (=> (not res!2818134) (not e!4160531))))

(assert (=> b!6910301 (= res!2818134 lt!2468431)))

(declare-fun b!6910302 () Bool)

(declare-fun e!4160536 () Bool)

(assert (=> b!6910302 (= e!4160536 (nullable!6726 lt!2468396))))

(declare-fun b!6910303 () Bool)

(declare-fun res!2818135 () Bool)

(assert (=> b!6910303 (=> (not res!2818135) (not e!4160531))))

(assert (=> b!6910303 (= res!2818135 (isEmpty!38766 (tail!12910 s!14361)))))

(declare-fun b!6910304 () Bool)

(declare-fun res!2818137 () Bool)

(declare-fun e!4160537 () Bool)

(assert (=> b!6910304 (=> res!2818137 e!4160537)))

(assert (=> b!6910304 (= res!2818137 (not (isEmpty!38766 (tail!12910 s!14361))))))

(declare-fun b!6910305 () Bool)

(assert (=> b!6910305 (= e!4160536 (matchR!9032 (derivativeStep!5405 lt!2468396 (head!13858 s!14361)) (tail!12910 s!14361)))))

(declare-fun d!2163255 () Bool)

(assert (=> d!2163255 e!4160534))

(declare-fun c!1283596 () Bool)

(assert (=> d!2163255 (= c!1283596 ((_ is EmptyExpr!16887) lt!2468396))))

(assert (=> d!2163255 (= lt!2468431 e!4160536)))

(declare-fun c!1283597 () Bool)

(assert (=> d!2163255 (= c!1283597 (isEmpty!38766 s!14361))))

(assert (=> d!2163255 (validRegex!8595 lt!2468396)))

(assert (=> d!2163255 (= (matchR!9032 lt!2468396 s!14361) lt!2468431)))

(declare-fun b!6910306 () Bool)

(assert (=> b!6910306 (= e!4160532 (not lt!2468431))))

(declare-fun b!6910307 () Bool)

(assert (=> b!6910307 (= e!4160537 (not (= (head!13858 s!14361) (c!1283527 lt!2468396))))))

(declare-fun b!6910308 () Bool)

(assert (=> b!6910308 (= e!4160533 e!4160537)))

(declare-fun res!2818138 () Bool)

(assert (=> b!6910308 (=> res!2818138 e!4160537)))

(assert (=> b!6910308 (= res!2818138 call!628283)))

(declare-fun b!6910309 () Bool)

(assert (=> b!6910309 (= e!4160534 (= lt!2468431 call!628283))))

(declare-fun bm!628278 () Bool)

(assert (=> bm!628278 (= call!628283 (isEmpty!38766 s!14361))))

(assert (= (and d!2163255 c!1283597) b!6910302))

(assert (= (and d!2163255 (not c!1283597)) b!6910305))

(assert (= (and d!2163255 c!1283596) b!6910309))

(assert (= (and d!2163255 (not c!1283596)) b!6910300))

(assert (= (and b!6910300 c!1283598) b!6910306))

(assert (= (and b!6910300 (not c!1283598)) b!6910298))

(assert (= (and b!6910298 (not res!2818136)) b!6910301))

(assert (= (and b!6910301 res!2818134) b!6910299))

(assert (= (and b!6910299 res!2818139) b!6910303))

(assert (= (and b!6910303 res!2818135) b!6910296))

(assert (= (and b!6910301 (not res!2818140)) b!6910297))

(assert (= (and b!6910297 res!2818133) b!6910308))

(assert (= (and b!6910308 (not res!2818138)) b!6910304))

(assert (= (and b!6910304 (not res!2818137)) b!6910307))

(assert (= (or b!6910309 b!6910299 b!6910308) bm!628278))

(assert (=> d!2163255 m!7625010))

(declare-fun m!7625098 () Bool)

(assert (=> d!2163255 m!7625098))

(assert (=> b!6910296 m!7625014))

(assert (=> bm!628278 m!7625010))

(assert (=> b!6910304 m!7625016))

(assert (=> b!6910304 m!7625016))

(assert (=> b!6910304 m!7625018))

(assert (=> b!6910303 m!7625016))

(assert (=> b!6910303 m!7625016))

(assert (=> b!6910303 m!7625018))

(assert (=> b!6910305 m!7625014))

(assert (=> b!6910305 m!7625014))

(declare-fun m!7625100 () Bool)

(assert (=> b!6910305 m!7625100))

(assert (=> b!6910305 m!7625016))

(assert (=> b!6910305 m!7625100))

(assert (=> b!6910305 m!7625016))

(declare-fun m!7625102 () Bool)

(assert (=> b!6910305 m!7625102))

(declare-fun m!7625104 () Bool)

(assert (=> b!6910302 m!7625104))

(assert (=> b!6910307 m!7625014))

(assert (=> b!6909995 d!2163255))

(declare-fun bs!1844583 () Bool)

(declare-fun b!6910310 () Bool)

(assert (= bs!1844583 (and b!6910310 b!6909987)))

(declare-fun lambda!392666 () Int)

(assert (=> bs!1844583 (not (= lambda!392666 lambda!392639))))

(declare-fun bs!1844584 () Bool)

(assert (= bs!1844584 (and b!6910310 b!6909984)))

(assert (=> bs!1844584 (not (= lambda!392666 lambda!392637))))

(declare-fun bs!1844585 () Bool)

(assert (= bs!1844585 (and b!6910310 b!6910234)))

(assert (=> bs!1844585 (not (= lambda!392666 lambda!392660))))

(declare-fun bs!1844586 () Bool)

(assert (= bs!1844586 (and b!6910310 b!6910231)))

(assert (=> bs!1844586 (= (and (= (reg!17216 lt!2468387) (reg!17216 lt!2468396)) (= lt!2468387 lt!2468396)) (= lambda!392666 lambda!392658))))

(assert (=> bs!1844583 (not (= lambda!392666 lambda!392640))))

(assert (=> bs!1844584 (not (= lambda!392666 lambda!392638))))

(assert (=> b!6910310 true))

(assert (=> b!6910310 true))

(declare-fun bs!1844594 () Bool)

(declare-fun b!6910313 () Bool)

(assert (= bs!1844594 (and b!6910313 b!6909987)))

(declare-fun lambda!392668 () Int)

(assert (=> bs!1844594 (not (= lambda!392668 lambda!392639))))

(declare-fun bs!1844597 () Bool)

(assert (= bs!1844597 (and b!6910313 b!6909984)))

(assert (=> bs!1844597 (not (= lambda!392668 lambda!392637))))

(declare-fun bs!1844600 () Bool)

(assert (= bs!1844600 (and b!6910313 b!6910234)))

(assert (=> bs!1844600 (= (and (= (regOne!34286 lt!2468387) (regOne!34286 lt!2468396)) (= (regTwo!34286 lt!2468387) (regTwo!34286 lt!2468396))) (= lambda!392668 lambda!392660))))

(declare-fun bs!1844601 () Bool)

(assert (= bs!1844601 (and b!6910313 b!6910231)))

(assert (=> bs!1844601 (not (= lambda!392668 lambda!392658))))

(assert (=> bs!1844594 (= (and (= s!14361 (_2!37057 lt!2468388)) (= (regOne!34286 lt!2468387) r2!6280) (= (regTwo!34286 lt!2468387) r3!135)) (= lambda!392668 lambda!392640))))

(assert (=> bs!1844597 (= (and (= (regOne!34286 lt!2468387) r1!6342) (= (regTwo!34286 lt!2468387) lt!2468398)) (= lambda!392668 lambda!392638))))

(declare-fun bs!1844604 () Bool)

(assert (= bs!1844604 (and b!6910313 b!6910310)))

(assert (=> bs!1844604 (not (= lambda!392668 lambda!392666))))

(assert (=> b!6910313 true))

(assert (=> b!6910313 true))

(declare-fun e!4160539 () Bool)

(declare-fun call!628285 () Bool)

(assert (=> b!6910310 (= e!4160539 call!628285)))

(declare-fun b!6910311 () Bool)

(declare-fun c!1283602 () Bool)

(assert (=> b!6910311 (= c!1283602 ((_ is ElementMatch!16887) lt!2468387))))

(declare-fun e!4160543 () Bool)

(declare-fun e!4160540 () Bool)

(assert (=> b!6910311 (= e!4160543 e!4160540)))

(declare-fun b!6910312 () Bool)

(assert (=> b!6910312 (= e!4160540 (= s!14361 (Cons!66520 (c!1283527 lt!2468387) Nil!66520)))))

(declare-fun e!4160541 () Bool)

(assert (=> b!6910313 (= e!4160541 call!628285)))

(declare-fun b!6910314 () Bool)

(declare-fun e!4160542 () Bool)

(declare-fun call!628284 () Bool)

(assert (=> b!6910314 (= e!4160542 call!628284)))

(declare-fun bm!628279 () Bool)

(declare-fun c!1283600 () Bool)

(assert (=> bm!628279 (= call!628285 (Exists!3895 (ite c!1283600 lambda!392666 lambda!392668)))))

(declare-fun b!6910315 () Bool)

(declare-fun c!1283599 () Bool)

(assert (=> b!6910315 (= c!1283599 ((_ is Union!16887) lt!2468387))))

(declare-fun e!4160538 () Bool)

(assert (=> b!6910315 (= e!4160540 e!4160538)))

(declare-fun b!6910316 () Bool)

(assert (=> b!6910316 (= e!4160538 e!4160541)))

(assert (=> b!6910316 (= c!1283600 ((_ is Star!16887) lt!2468387))))

(declare-fun b!6910317 () Bool)

(assert (=> b!6910317 (= e!4160542 e!4160543)))

(declare-fun res!2818141 () Bool)

(assert (=> b!6910317 (= res!2818141 (not ((_ is EmptyLang!16887) lt!2468387)))))

(assert (=> b!6910317 (=> (not res!2818141) (not e!4160543))))

(declare-fun b!6910318 () Bool)

(declare-fun e!4160544 () Bool)

(assert (=> b!6910318 (= e!4160544 (matchRSpec!3950 (regTwo!34287 lt!2468387) s!14361))))

(declare-fun d!2163257 () Bool)

(declare-fun c!1283601 () Bool)

(assert (=> d!2163257 (= c!1283601 ((_ is EmptyExpr!16887) lt!2468387))))

(assert (=> d!2163257 (= (matchRSpec!3950 lt!2468387 s!14361) e!4160542)))

(declare-fun b!6910319 () Bool)

(assert (=> b!6910319 (= e!4160538 e!4160544)))

(declare-fun res!2818143 () Bool)

(assert (=> b!6910319 (= res!2818143 (matchRSpec!3950 (regOne!34287 lt!2468387) s!14361))))

(assert (=> b!6910319 (=> res!2818143 e!4160544)))

(declare-fun b!6910320 () Bool)

(declare-fun res!2818142 () Bool)

(assert (=> b!6910320 (=> res!2818142 e!4160539)))

(assert (=> b!6910320 (= res!2818142 call!628284)))

(assert (=> b!6910320 (= e!4160541 e!4160539)))

(declare-fun bm!628280 () Bool)

(assert (=> bm!628280 (= call!628284 (isEmpty!38766 s!14361))))

(assert (= (and d!2163257 c!1283601) b!6910314))

(assert (= (and d!2163257 (not c!1283601)) b!6910317))

(assert (= (and b!6910317 res!2818141) b!6910311))

(assert (= (and b!6910311 c!1283602) b!6910312))

(assert (= (and b!6910311 (not c!1283602)) b!6910315))

(assert (= (and b!6910315 c!1283599) b!6910319))

(assert (= (and b!6910315 (not c!1283599)) b!6910316))

(assert (= (and b!6910319 (not res!2818143)) b!6910318))

(assert (= (and b!6910316 c!1283600) b!6910320))

(assert (= (and b!6910316 (not c!1283600)) b!6910313))

(assert (= (and b!6910320 (not res!2818142)) b!6910310))

(assert (= (or b!6910310 b!6910313) bm!628279))

(assert (= (or b!6910314 b!6910320) bm!628280))

(declare-fun m!7625168 () Bool)

(assert (=> bm!628279 m!7625168))

(declare-fun m!7625170 () Bool)

(assert (=> b!6910318 m!7625170))

(declare-fun m!7625172 () Bool)

(assert (=> b!6910319 m!7625172))

(assert (=> bm!628280 m!7625010))

(assert (=> b!6909995 d!2163257))

(declare-fun d!2163277 () Bool)

(assert (=> d!2163277 (= (matchR!9032 lt!2468396 s!14361) (matchRSpec!3950 lt!2468396 s!14361))))

(declare-fun lt!2468438 () Unit!160510)

(assert (=> d!2163277 (= lt!2468438 (choose!51466 lt!2468396 s!14361))))

(assert (=> d!2163277 (validRegex!8595 lt!2468396)))

(assert (=> d!2163277 (= (mainMatchTheorem!3950 lt!2468396 s!14361) lt!2468438)))

(declare-fun bs!1844609 () Bool)

(assert (= bs!1844609 d!2163277))

(assert (=> bs!1844609 m!7624938))

(assert (=> bs!1844609 m!7624940))

(declare-fun m!7625174 () Bool)

(assert (=> bs!1844609 m!7625174))

(assert (=> bs!1844609 m!7625098))

(assert (=> b!6909995 d!2163277))

(declare-fun bm!628297 () Bool)

(declare-fun call!628303 () Bool)

(declare-fun call!628302 () Bool)

(assert (=> bm!628297 (= call!628303 call!628302)))

(declare-fun b!6910427 () Bool)

(declare-fun e!4160607 () Bool)

(declare-fun call!628304 () Bool)

(assert (=> b!6910427 (= e!4160607 call!628304)))

(declare-fun b!6910428 () Bool)

(declare-fun e!4160609 () Bool)

(declare-fun e!4160606 () Bool)

(assert (=> b!6910428 (= e!4160609 e!4160606)))

(declare-fun c!1283624 () Bool)

(assert (=> b!6910428 (= c!1283624 ((_ is Union!16887) r2!6280))))

(declare-fun d!2163279 () Bool)

(declare-fun res!2818188 () Bool)

(declare-fun e!4160605 () Bool)

(assert (=> d!2163279 (=> res!2818188 e!4160605)))

(assert (=> d!2163279 (= res!2818188 ((_ is ElementMatch!16887) r2!6280))))

(assert (=> d!2163279 (= (validRegex!8595 r2!6280) e!4160605)))

(declare-fun b!6910429 () Bool)

(declare-fun res!2818190 () Bool)

(assert (=> b!6910429 (=> (not res!2818190) (not e!4160607))))

(assert (=> b!6910429 (= res!2818190 call!628303)))

(assert (=> b!6910429 (= e!4160606 e!4160607)))

(declare-fun c!1283623 () Bool)

(declare-fun bm!628298 () Bool)

(assert (=> bm!628298 (= call!628302 (validRegex!8595 (ite c!1283623 (reg!17216 r2!6280) (ite c!1283624 (regOne!34287 r2!6280) (regTwo!34286 r2!6280)))))))

(declare-fun b!6910430 () Bool)

(declare-fun e!4160608 () Bool)

(assert (=> b!6910430 (= e!4160608 call!628302)))

(declare-fun b!6910431 () Bool)

(assert (=> b!6910431 (= e!4160605 e!4160609)))

(assert (=> b!6910431 (= c!1283623 ((_ is Star!16887) r2!6280))))

(declare-fun bm!628299 () Bool)

(assert (=> bm!628299 (= call!628304 (validRegex!8595 (ite c!1283624 (regTwo!34287 r2!6280) (regOne!34286 r2!6280))))))

(declare-fun b!6910432 () Bool)

(assert (=> b!6910432 (= e!4160609 e!4160608)))

(declare-fun res!2818192 () Bool)

(assert (=> b!6910432 (= res!2818192 (not (nullable!6726 (reg!17216 r2!6280))))))

(assert (=> b!6910432 (=> (not res!2818192) (not e!4160608))))

(declare-fun b!6910433 () Bool)

(declare-fun res!2818191 () Bool)

(declare-fun e!4160610 () Bool)

(assert (=> b!6910433 (=> res!2818191 e!4160610)))

(assert (=> b!6910433 (= res!2818191 (not ((_ is Concat!25732) r2!6280)))))

(assert (=> b!6910433 (= e!4160606 e!4160610)))

(declare-fun b!6910434 () Bool)

(declare-fun e!4160611 () Bool)

(assert (=> b!6910434 (= e!4160611 call!628303)))

(declare-fun b!6910435 () Bool)

(assert (=> b!6910435 (= e!4160610 e!4160611)))

(declare-fun res!2818189 () Bool)

(assert (=> b!6910435 (=> (not res!2818189) (not e!4160611))))

(assert (=> b!6910435 (= res!2818189 call!628304)))

(assert (= (and d!2163279 (not res!2818188)) b!6910431))

(assert (= (and b!6910431 c!1283623) b!6910432))

(assert (= (and b!6910431 (not c!1283623)) b!6910428))

(assert (= (and b!6910432 res!2818192) b!6910430))

(assert (= (and b!6910428 c!1283624) b!6910429))

(assert (= (and b!6910428 (not c!1283624)) b!6910433))

(assert (= (and b!6910429 res!2818190) b!6910427))

(assert (= (and b!6910433 (not res!2818191)) b!6910435))

(assert (= (and b!6910435 res!2818189) b!6910434))

(assert (= (or b!6910429 b!6910434) bm!628297))

(assert (= (or b!6910427 b!6910435) bm!628299))

(assert (= (or b!6910430 bm!628297) bm!628298))

(declare-fun m!7625206 () Bool)

(assert (=> bm!628298 m!7625206))

(declare-fun m!7625208 () Bool)

(assert (=> bm!628299 m!7625208))

(declare-fun m!7625210 () Bool)

(assert (=> b!6910432 m!7625210))

(assert (=> b!6909986 d!2163279))

(declare-fun bm!628300 () Bool)

(declare-fun call!628306 () Bool)

(declare-fun call!628305 () Bool)

(assert (=> bm!628300 (= call!628306 call!628305)))

(declare-fun b!6910469 () Bool)

(declare-fun e!4160622 () Bool)

(declare-fun call!628307 () Bool)

(assert (=> b!6910469 (= e!4160622 call!628307)))

(declare-fun b!6910470 () Bool)

(declare-fun e!4160625 () Bool)

(declare-fun e!4160621 () Bool)

(assert (=> b!6910470 (= e!4160625 e!4160621)))

(declare-fun c!1283626 () Bool)

(assert (=> b!6910470 (= c!1283626 ((_ is Union!16887) r1!6342))))

(declare-fun d!2163289 () Bool)

(declare-fun res!2818193 () Bool)

(declare-fun e!4160620 () Bool)

(assert (=> d!2163289 (=> res!2818193 e!4160620)))

(assert (=> d!2163289 (= res!2818193 ((_ is ElementMatch!16887) r1!6342))))

(assert (=> d!2163289 (= (validRegex!8595 r1!6342) e!4160620)))

(declare-fun b!6910471 () Bool)

(declare-fun res!2818195 () Bool)

(assert (=> b!6910471 (=> (not res!2818195) (not e!4160622))))

(assert (=> b!6910471 (= res!2818195 call!628306)))

(assert (=> b!6910471 (= e!4160621 e!4160622)))

(declare-fun bm!628301 () Bool)

(declare-fun c!1283625 () Bool)

(assert (=> bm!628301 (= call!628305 (validRegex!8595 (ite c!1283625 (reg!17216 r1!6342) (ite c!1283626 (regOne!34287 r1!6342) (regTwo!34286 r1!6342)))))))

(declare-fun b!6910472 () Bool)

(declare-fun e!4160623 () Bool)

(assert (=> b!6910472 (= e!4160623 call!628305)))

(declare-fun b!6910473 () Bool)

(assert (=> b!6910473 (= e!4160620 e!4160625)))

(assert (=> b!6910473 (= c!1283625 ((_ is Star!16887) r1!6342))))

(declare-fun bm!628302 () Bool)

(assert (=> bm!628302 (= call!628307 (validRegex!8595 (ite c!1283626 (regTwo!34287 r1!6342) (regOne!34286 r1!6342))))))

(declare-fun b!6910474 () Bool)

(assert (=> b!6910474 (= e!4160625 e!4160623)))

(declare-fun res!2818197 () Bool)

(assert (=> b!6910474 (= res!2818197 (not (nullable!6726 (reg!17216 r1!6342))))))

(assert (=> b!6910474 (=> (not res!2818197) (not e!4160623))))

(declare-fun b!6910475 () Bool)

(declare-fun res!2818196 () Bool)

(declare-fun e!4160626 () Bool)

(assert (=> b!6910475 (=> res!2818196 e!4160626)))

(assert (=> b!6910475 (= res!2818196 (not ((_ is Concat!25732) r1!6342)))))

(assert (=> b!6910475 (= e!4160621 e!4160626)))

(declare-fun b!6910476 () Bool)

(declare-fun e!4160627 () Bool)

(assert (=> b!6910476 (= e!4160627 call!628306)))

(declare-fun b!6910477 () Bool)

(assert (=> b!6910477 (= e!4160626 e!4160627)))

(declare-fun res!2818194 () Bool)

(assert (=> b!6910477 (=> (not res!2818194) (not e!4160627))))

(assert (=> b!6910477 (= res!2818194 call!628307)))

(assert (= (and d!2163289 (not res!2818193)) b!6910473))

(assert (= (and b!6910473 c!1283625) b!6910474))

(assert (= (and b!6910473 (not c!1283625)) b!6910470))

(assert (= (and b!6910474 res!2818197) b!6910472))

(assert (= (and b!6910470 c!1283626) b!6910471))

(assert (= (and b!6910470 (not c!1283626)) b!6910475))

(assert (= (and b!6910471 res!2818195) b!6910469))

(assert (= (and b!6910475 (not res!2818196)) b!6910477))

(assert (= (and b!6910477 res!2818194) b!6910476))

(assert (= (or b!6910471 b!6910476) bm!628300))

(assert (= (or b!6910469 b!6910477) bm!628302))

(assert (= (or b!6910472 bm!628300) bm!628301))

(declare-fun m!7625212 () Bool)

(assert (=> bm!628301 m!7625212))

(declare-fun m!7625214 () Bool)

(assert (=> bm!628302 m!7625214))

(declare-fun m!7625216 () Bool)

(assert (=> b!6910474 m!7625216))

(assert (=> start!665162 d!2163289))

(declare-fun b!6910498 () Bool)

(declare-fun e!4160633 () Bool)

(assert (=> b!6910498 (= e!4160633 (= (head!13858 (_1!37057 (get!23281 lt!2468391))) (c!1283527 r2!6280)))))

(declare-fun b!6910499 () Bool)

(declare-fun e!4160637 () Bool)

(declare-fun e!4160635 () Bool)

(assert (=> b!6910499 (= e!4160637 e!4160635)))

(declare-fun res!2818198 () Bool)

(assert (=> b!6910499 (=> (not res!2818198) (not e!4160635))))

(declare-fun lt!2468441 () Bool)

(assert (=> b!6910499 (= res!2818198 (not lt!2468441))))

(declare-fun b!6910500 () Bool)

(declare-fun res!2818201 () Bool)

(assert (=> b!6910500 (=> res!2818201 e!4160637)))

(assert (=> b!6910500 (= res!2818201 (not ((_ is ElementMatch!16887) r2!6280)))))

(declare-fun e!4160634 () Bool)

(assert (=> b!6910500 (= e!4160634 e!4160637)))

(declare-fun b!6910501 () Bool)

(declare-fun res!2818204 () Bool)

(assert (=> b!6910501 (=> (not res!2818204) (not e!4160633))))

(declare-fun call!628308 () Bool)

(assert (=> b!6910501 (= res!2818204 (not call!628308))))

(declare-fun b!6910502 () Bool)

(declare-fun e!4160636 () Bool)

(assert (=> b!6910502 (= e!4160636 e!4160634)))

(declare-fun c!1283629 () Bool)

(assert (=> b!6910502 (= c!1283629 ((_ is EmptyLang!16887) r2!6280))))

(declare-fun b!6910503 () Bool)

(declare-fun res!2818205 () Bool)

(assert (=> b!6910503 (=> res!2818205 e!4160637)))

(assert (=> b!6910503 (= res!2818205 e!4160633)))

(declare-fun res!2818199 () Bool)

(assert (=> b!6910503 (=> (not res!2818199) (not e!4160633))))

(assert (=> b!6910503 (= res!2818199 lt!2468441)))

(declare-fun b!6910504 () Bool)

(declare-fun e!4160638 () Bool)

(assert (=> b!6910504 (= e!4160638 (nullable!6726 r2!6280))))

(declare-fun b!6910505 () Bool)

(declare-fun res!2818200 () Bool)

(assert (=> b!6910505 (=> (not res!2818200) (not e!4160633))))

(assert (=> b!6910505 (= res!2818200 (isEmpty!38766 (tail!12910 (_1!37057 (get!23281 lt!2468391)))))))

(declare-fun b!6910506 () Bool)

(declare-fun res!2818202 () Bool)

(declare-fun e!4160639 () Bool)

(assert (=> b!6910506 (=> res!2818202 e!4160639)))

(assert (=> b!6910506 (= res!2818202 (not (isEmpty!38766 (tail!12910 (_1!37057 (get!23281 lt!2468391))))))))

(declare-fun b!6910507 () Bool)

(assert (=> b!6910507 (= e!4160638 (matchR!9032 (derivativeStep!5405 r2!6280 (head!13858 (_1!37057 (get!23281 lt!2468391)))) (tail!12910 (_1!37057 (get!23281 lt!2468391)))))))

(declare-fun d!2163291 () Bool)

(assert (=> d!2163291 e!4160636))

(declare-fun c!1283627 () Bool)

(assert (=> d!2163291 (= c!1283627 ((_ is EmptyExpr!16887) r2!6280))))

(assert (=> d!2163291 (= lt!2468441 e!4160638)))

(declare-fun c!1283628 () Bool)

(assert (=> d!2163291 (= c!1283628 (isEmpty!38766 (_1!37057 (get!23281 lt!2468391))))))

(assert (=> d!2163291 (validRegex!8595 r2!6280)))

(assert (=> d!2163291 (= (matchR!9032 r2!6280 (_1!37057 (get!23281 lt!2468391))) lt!2468441)))

(declare-fun b!6910508 () Bool)

(assert (=> b!6910508 (= e!4160634 (not lt!2468441))))

(declare-fun b!6910509 () Bool)

(assert (=> b!6910509 (= e!4160639 (not (= (head!13858 (_1!37057 (get!23281 lt!2468391))) (c!1283527 r2!6280))))))

(declare-fun b!6910510 () Bool)

(assert (=> b!6910510 (= e!4160635 e!4160639)))

(declare-fun res!2818203 () Bool)

(assert (=> b!6910510 (=> res!2818203 e!4160639)))

(assert (=> b!6910510 (= res!2818203 call!628308)))

(declare-fun b!6910511 () Bool)

(assert (=> b!6910511 (= e!4160636 (= lt!2468441 call!628308))))

(declare-fun bm!628303 () Bool)

(assert (=> bm!628303 (= call!628308 (isEmpty!38766 (_1!37057 (get!23281 lt!2468391))))))

(assert (= (and d!2163291 c!1283628) b!6910504))

(assert (= (and d!2163291 (not c!1283628)) b!6910507))

(assert (= (and d!2163291 c!1283627) b!6910511))

(assert (= (and d!2163291 (not c!1283627)) b!6910502))

(assert (= (and b!6910502 c!1283629) b!6910508))

(assert (= (and b!6910502 (not c!1283629)) b!6910500))

(assert (= (and b!6910500 (not res!2818201)) b!6910503))

(assert (= (and b!6910503 res!2818199) b!6910501))

(assert (= (and b!6910501 res!2818204) b!6910505))

(assert (= (and b!6910505 res!2818200) b!6910498))

(assert (= (and b!6910503 (not res!2818205)) b!6910499))

(assert (= (and b!6910499 res!2818198) b!6910510))

(assert (= (and b!6910510 (not res!2818203)) b!6910506))

(assert (= (and b!6910506 (not res!2818202)) b!6910509))

(assert (= (or b!6910511 b!6910501 b!6910510) bm!628303))

(declare-fun m!7625218 () Bool)

(assert (=> d!2163291 m!7625218))

(assert (=> d!2163291 m!7624914))

(declare-fun m!7625220 () Bool)

(assert (=> b!6910498 m!7625220))

(assert (=> bm!628303 m!7625218))

(declare-fun m!7625222 () Bool)

(assert (=> b!6910506 m!7625222))

(assert (=> b!6910506 m!7625222))

(declare-fun m!7625224 () Bool)

(assert (=> b!6910506 m!7625224))

(assert (=> b!6910505 m!7625222))

(assert (=> b!6910505 m!7625222))

(assert (=> b!6910505 m!7625224))

(assert (=> b!6910507 m!7625220))

(assert (=> b!6910507 m!7625220))

(declare-fun m!7625226 () Bool)

(assert (=> b!6910507 m!7625226))

(assert (=> b!6910507 m!7625222))

(assert (=> b!6910507 m!7625226))

(assert (=> b!6910507 m!7625222))

(declare-fun m!7625228 () Bool)

(assert (=> b!6910507 m!7625228))

(declare-fun m!7625230 () Bool)

(assert (=> b!6910504 m!7625230))

(assert (=> b!6910509 m!7625220))

(assert (=> b!6909987 d!2163291))

(declare-fun d!2163293 () Bool)

(declare-fun isEmpty!38767 (Option!16666) Bool)

(assert (=> d!2163293 (= (isDefined!13369 lt!2468391) (not (isEmpty!38767 lt!2468391)))))

(declare-fun bs!1844644 () Bool)

(assert (= bs!1844644 d!2163293))

(declare-fun m!7625232 () Bool)

(assert (=> bs!1844644 m!7625232))

(assert (=> b!6909987 d!2163293))

(declare-fun bs!1844645 () Bool)

(declare-fun d!2163295 () Bool)

(assert (= bs!1844645 (and d!2163295 b!6909987)))

(declare-fun lambda!392677 () Int)

(assert (=> bs!1844645 (= lambda!392677 lambda!392639)))

(declare-fun bs!1844646 () Bool)

(assert (= bs!1844646 (and d!2163295 b!6909984)))

(assert (=> bs!1844646 (= (and (= (_2!37057 lt!2468388) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468398)) (= lambda!392677 lambda!392637))))

(declare-fun bs!1844647 () Bool)

(assert (= bs!1844647 (and d!2163295 b!6910234)))

(assert (=> bs!1844647 (not (= lambda!392677 lambda!392660))))

(declare-fun bs!1844648 () Bool)

(assert (= bs!1844648 (and d!2163295 b!6910231)))

(assert (=> bs!1844648 (not (= lambda!392677 lambda!392658))))

(assert (=> bs!1844645 (not (= lambda!392677 lambda!392640))))

(assert (=> bs!1844646 (not (= lambda!392677 lambda!392638))))

(declare-fun bs!1844649 () Bool)

(assert (= bs!1844649 (and d!2163295 b!6910313)))

(assert (=> bs!1844649 (not (= lambda!392677 lambda!392668))))

(declare-fun bs!1844650 () Bool)

(assert (= bs!1844650 (and d!2163295 b!6910310)))

(assert (=> bs!1844650 (not (= lambda!392677 lambda!392666))))

(assert (=> d!2163295 true))

(assert (=> d!2163295 true))

(assert (=> d!2163295 true))

(declare-fun lambda!392678 () Int)

(assert (=> bs!1844645 (not (= lambda!392678 lambda!392639))))

(assert (=> bs!1844646 (not (= lambda!392678 lambda!392637))))

(assert (=> bs!1844647 (= (and (= (_2!37057 lt!2468388) s!14361) (= r2!6280 (regOne!34286 lt!2468396)) (= r3!135 (regTwo!34286 lt!2468396))) (= lambda!392678 lambda!392660))))

(assert (=> bs!1844648 (not (= lambda!392678 lambda!392658))))

(assert (=> bs!1844645 (= lambda!392678 lambda!392640)))

(assert (=> bs!1844646 (= (and (= (_2!37057 lt!2468388) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468398)) (= lambda!392678 lambda!392638))))

(declare-fun bs!1844651 () Bool)

(assert (= bs!1844651 d!2163295))

(assert (=> bs!1844651 (not (= lambda!392678 lambda!392677))))

(assert (=> bs!1844649 (= (and (= (_2!37057 lt!2468388) s!14361) (= r2!6280 (regOne!34286 lt!2468387)) (= r3!135 (regTwo!34286 lt!2468387))) (= lambda!392678 lambda!392668))))

(assert (=> bs!1844650 (not (= lambda!392678 lambda!392666))))

(assert (=> d!2163295 true))

(assert (=> d!2163295 true))

(assert (=> d!2163295 true))

(assert (=> d!2163295 (= (Exists!3895 lambda!392677) (Exists!3895 lambda!392678))))

(declare-fun lt!2468444 () Unit!160510)

(declare-fun choose!51467 (Regex!16887 Regex!16887 List!66644) Unit!160510)

(assert (=> d!2163295 (= lt!2468444 (choose!51467 r2!6280 r3!135 (_2!37057 lt!2468388)))))

(assert (=> d!2163295 (validRegex!8595 r2!6280)))

(assert (=> d!2163295 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2368 r2!6280 r3!135 (_2!37057 lt!2468388)) lt!2468444)))

(declare-fun m!7625234 () Bool)

(assert (=> bs!1844651 m!7625234))

(declare-fun m!7625236 () Bool)

(assert (=> bs!1844651 m!7625236))

(declare-fun m!7625238 () Bool)

(assert (=> bs!1844651 m!7625238))

(assert (=> bs!1844651 m!7624914))

(assert (=> b!6909987 d!2163295))

(declare-fun b!6910538 () Bool)

(declare-fun e!4160658 () Bool)

(assert (=> b!6910538 (= e!4160658 (matchR!9032 r3!135 (_2!37057 lt!2468388)))))

(declare-fun b!6910539 () Bool)

(declare-fun res!2818225 () Bool)

(declare-fun e!4160657 () Bool)

(assert (=> b!6910539 (=> (not res!2818225) (not e!4160657))))

(declare-fun lt!2468451 () Option!16666)

(assert (=> b!6910539 (= res!2818225 (matchR!9032 r2!6280 (_1!37057 (get!23281 lt!2468451))))))

(declare-fun b!6910540 () Bool)

(declare-fun lt!2468453 () Unit!160510)

(declare-fun lt!2468452 () Unit!160510)

(assert (=> b!6910540 (= lt!2468453 lt!2468452)))

(declare-fun ++!14940 (List!66644 List!66644) List!66644)

(assert (=> b!6910540 (= (++!14940 (++!14940 Nil!66520 (Cons!66520 (h!72968 (_2!37057 lt!2468388)) Nil!66520)) (t!380387 (_2!37057 lt!2468388))) (_2!37057 lt!2468388))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2813 (List!66644 C!34044 List!66644 List!66644) Unit!160510)

(assert (=> b!6910540 (= lt!2468452 (lemmaMoveElementToOtherListKeepsConcatEq!2813 Nil!66520 (h!72968 (_2!37057 lt!2468388)) (t!380387 (_2!37057 lt!2468388)) (_2!37057 lt!2468388)))))

(declare-fun e!4160656 () Option!16666)

(assert (=> b!6910540 (= e!4160656 (findConcatSeparation!3080 r2!6280 r3!135 (++!14940 Nil!66520 (Cons!66520 (h!72968 (_2!37057 lt!2468388)) Nil!66520)) (t!380387 (_2!37057 lt!2468388)) (_2!37057 lt!2468388)))))

(declare-fun b!6910541 () Bool)

(declare-fun e!4160655 () Bool)

(assert (=> b!6910541 (= e!4160655 (not (isDefined!13369 lt!2468451)))))

(declare-fun b!6910542 () Bool)

(assert (=> b!6910542 (= e!4160656 None!16665)))

(declare-fun b!6910543 () Bool)

(declare-fun e!4160654 () Option!16666)

(assert (=> b!6910543 (= e!4160654 e!4160656)))

(declare-fun c!1283635 () Bool)

(assert (=> b!6910543 (= c!1283635 ((_ is Nil!66520) (_2!37057 lt!2468388)))))

(declare-fun d!2163297 () Bool)

(assert (=> d!2163297 e!4160655))

(declare-fun res!2818224 () Bool)

(assert (=> d!2163297 (=> res!2818224 e!4160655)))

(assert (=> d!2163297 (= res!2818224 e!4160657)))

(declare-fun res!2818227 () Bool)

(assert (=> d!2163297 (=> (not res!2818227) (not e!4160657))))

(assert (=> d!2163297 (= res!2818227 (isDefined!13369 lt!2468451))))

(assert (=> d!2163297 (= lt!2468451 e!4160654)))

(declare-fun c!1283634 () Bool)

(assert (=> d!2163297 (= c!1283634 e!4160658)))

(declare-fun res!2818226 () Bool)

(assert (=> d!2163297 (=> (not res!2818226) (not e!4160658))))

(assert (=> d!2163297 (= res!2818226 (matchR!9032 r2!6280 Nil!66520))))

(assert (=> d!2163297 (validRegex!8595 r2!6280)))

(assert (=> d!2163297 (= (findConcatSeparation!3080 r2!6280 r3!135 Nil!66520 (_2!37057 lt!2468388) (_2!37057 lt!2468388)) lt!2468451)))

(declare-fun b!6910544 () Bool)

(assert (=> b!6910544 (= e!4160657 (= (++!14940 (_1!37057 (get!23281 lt!2468451)) (_2!37057 (get!23281 lt!2468451))) (_2!37057 lt!2468388)))))

(declare-fun b!6910545 () Bool)

(declare-fun res!2818228 () Bool)

(assert (=> b!6910545 (=> (not res!2818228) (not e!4160657))))

(assert (=> b!6910545 (= res!2818228 (matchR!9032 r3!135 (_2!37057 (get!23281 lt!2468451))))))

(declare-fun b!6910546 () Bool)

(assert (=> b!6910546 (= e!4160654 (Some!16665 (tuple2!67509 Nil!66520 (_2!37057 lt!2468388))))))

(assert (= (and d!2163297 res!2818226) b!6910538))

(assert (= (and d!2163297 c!1283634) b!6910546))

(assert (= (and d!2163297 (not c!1283634)) b!6910543))

(assert (= (and b!6910543 c!1283635) b!6910542))

(assert (= (and b!6910543 (not c!1283635)) b!6910540))

(assert (= (and d!2163297 res!2818227) b!6910539))

(assert (= (and b!6910539 res!2818225) b!6910545))

(assert (= (and b!6910545 res!2818228) b!6910544))

(assert (= (and d!2163297 (not res!2818224)) b!6910541))

(declare-fun m!7625240 () Bool)

(assert (=> b!6910544 m!7625240))

(declare-fun m!7625242 () Bool)

(assert (=> b!6910544 m!7625242))

(declare-fun m!7625244 () Bool)

(assert (=> b!6910541 m!7625244))

(assert (=> b!6910539 m!7625240))

(declare-fun m!7625246 () Bool)

(assert (=> b!6910539 m!7625246))

(assert (=> d!2163297 m!7625244))

(declare-fun m!7625248 () Bool)

(assert (=> d!2163297 m!7625248))

(assert (=> d!2163297 m!7624914))

(assert (=> b!6910545 m!7625240))

(declare-fun m!7625250 () Bool)

(assert (=> b!6910545 m!7625250))

(declare-fun m!7625252 () Bool)

(assert (=> b!6910540 m!7625252))

(assert (=> b!6910540 m!7625252))

(declare-fun m!7625254 () Bool)

(assert (=> b!6910540 m!7625254))

(declare-fun m!7625256 () Bool)

(assert (=> b!6910540 m!7625256))

(assert (=> b!6910540 m!7625252))

(declare-fun m!7625258 () Bool)

(assert (=> b!6910540 m!7625258))

(declare-fun m!7625260 () Bool)

(assert (=> b!6910538 m!7625260))

(assert (=> b!6909987 d!2163297))

(declare-fun d!2163299 () Bool)

(assert (=> d!2163299 (= (get!23281 lt!2468391) (v!52937 lt!2468391))))

(assert (=> b!6909987 d!2163299))

(declare-fun d!2163301 () Bool)

(declare-fun choose!51468 (Int) Bool)

(assert (=> d!2163301 (= (Exists!3895 lambda!392639) (choose!51468 lambda!392639))))

(declare-fun bs!1844652 () Bool)

(assert (= bs!1844652 d!2163301))

(declare-fun m!7625262 () Bool)

(assert (=> bs!1844652 m!7625262))

(assert (=> b!6909987 d!2163301))

(declare-fun bs!1844653 () Bool)

(declare-fun d!2163303 () Bool)

(assert (= bs!1844653 (and d!2163303 b!6909987)))

(declare-fun lambda!392681 () Int)

(assert (=> bs!1844653 (= lambda!392681 lambda!392639)))

(declare-fun bs!1844654 () Bool)

(assert (= bs!1844654 (and d!2163303 b!6909984)))

(assert (=> bs!1844654 (= (and (= (_2!37057 lt!2468388) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468398)) (= lambda!392681 lambda!392637))))

(declare-fun bs!1844655 () Bool)

(assert (= bs!1844655 (and d!2163303 b!6910234)))

(assert (=> bs!1844655 (not (= lambda!392681 lambda!392660))))

(declare-fun bs!1844656 () Bool)

(assert (= bs!1844656 (and d!2163303 b!6910231)))

(assert (=> bs!1844656 (not (= lambda!392681 lambda!392658))))

(declare-fun bs!1844657 () Bool)

(assert (= bs!1844657 (and d!2163303 d!2163295)))

(assert (=> bs!1844657 (not (= lambda!392681 lambda!392678))))

(assert (=> bs!1844653 (not (= lambda!392681 lambda!392640))))

(assert (=> bs!1844654 (not (= lambda!392681 lambda!392638))))

(assert (=> bs!1844657 (= lambda!392681 lambda!392677)))

(declare-fun bs!1844658 () Bool)

(assert (= bs!1844658 (and d!2163303 b!6910313)))

(assert (=> bs!1844658 (not (= lambda!392681 lambda!392668))))

(declare-fun bs!1844659 () Bool)

(assert (= bs!1844659 (and d!2163303 b!6910310)))

(assert (=> bs!1844659 (not (= lambda!392681 lambda!392666))))

(assert (=> d!2163303 true))

(assert (=> d!2163303 true))

(assert (=> d!2163303 true))

(assert (=> d!2163303 (= (isDefined!13369 (findConcatSeparation!3080 r2!6280 r3!135 Nil!66520 (_2!37057 lt!2468388) (_2!37057 lt!2468388))) (Exists!3895 lambda!392681))))

(declare-fun lt!2468456 () Unit!160510)

(declare-fun choose!51469 (Regex!16887 Regex!16887 List!66644) Unit!160510)

(assert (=> d!2163303 (= lt!2468456 (choose!51469 r2!6280 r3!135 (_2!37057 lt!2468388)))))

(assert (=> d!2163303 (validRegex!8595 r2!6280)))

(assert (=> d!2163303 (= (lemmaFindConcatSeparationEquivalentToExists!2842 r2!6280 r3!135 (_2!37057 lt!2468388)) lt!2468456)))

(declare-fun bs!1844660 () Bool)

(assert (= bs!1844660 d!2163303))

(declare-fun m!7625264 () Bool)

(assert (=> bs!1844660 m!7625264))

(assert (=> bs!1844660 m!7624936))

(declare-fun m!7625266 () Bool)

(assert (=> bs!1844660 m!7625266))

(assert (=> bs!1844660 m!7624936))

(assert (=> bs!1844660 m!7624914))

(declare-fun m!7625268 () Bool)

(assert (=> bs!1844660 m!7625268))

(assert (=> b!6909987 d!2163303))

(declare-fun bs!1844661 () Bool)

(declare-fun b!6910551 () Bool)

(assert (= bs!1844661 (and b!6910551 b!6909987)))

(declare-fun lambda!392682 () Int)

(assert (=> bs!1844661 (not (= lambda!392682 lambda!392639))))

(declare-fun bs!1844662 () Bool)

(assert (= bs!1844662 (and b!6910551 b!6909984)))

(assert (=> bs!1844662 (not (= lambda!392682 lambda!392637))))

(declare-fun bs!1844663 () Bool)

(assert (= bs!1844663 (and b!6910551 b!6910234)))

(assert (=> bs!1844663 (not (= lambda!392682 lambda!392660))))

(declare-fun bs!1844664 () Bool)

(assert (= bs!1844664 (and b!6910551 d!2163303)))

(assert (=> bs!1844664 (not (= lambda!392682 lambda!392681))))

(declare-fun bs!1844665 () Bool)

(assert (= bs!1844665 (and b!6910551 b!6910231)))

(assert (=> bs!1844665 (= (and (= (_2!37057 lt!2468388) s!14361) (= (reg!17216 lt!2468398) (reg!17216 lt!2468396)) (= lt!2468398 lt!2468396)) (= lambda!392682 lambda!392658))))

(declare-fun bs!1844666 () Bool)

(assert (= bs!1844666 (and b!6910551 d!2163295)))

(assert (=> bs!1844666 (not (= lambda!392682 lambda!392678))))

(assert (=> bs!1844661 (not (= lambda!392682 lambda!392640))))

(assert (=> bs!1844662 (not (= lambda!392682 lambda!392638))))

(assert (=> bs!1844666 (not (= lambda!392682 lambda!392677))))

(declare-fun bs!1844667 () Bool)

(assert (= bs!1844667 (and b!6910551 b!6910313)))

(assert (=> bs!1844667 (not (= lambda!392682 lambda!392668))))

(declare-fun bs!1844668 () Bool)

(assert (= bs!1844668 (and b!6910551 b!6910310)))

(assert (=> bs!1844668 (= (and (= (_2!37057 lt!2468388) s!14361) (= (reg!17216 lt!2468398) (reg!17216 lt!2468387)) (= lt!2468398 lt!2468387)) (= lambda!392682 lambda!392666))))

(assert (=> b!6910551 true))

(assert (=> b!6910551 true))

(declare-fun bs!1844669 () Bool)

(declare-fun b!6910554 () Bool)

(assert (= bs!1844669 (and b!6910554 b!6910551)))

(declare-fun lambda!392683 () Int)

(assert (=> bs!1844669 (not (= lambda!392683 lambda!392682))))

(declare-fun bs!1844670 () Bool)

(assert (= bs!1844670 (and b!6910554 b!6909987)))

(assert (=> bs!1844670 (not (= lambda!392683 lambda!392639))))

(declare-fun bs!1844671 () Bool)

(assert (= bs!1844671 (and b!6910554 b!6909984)))

(assert (=> bs!1844671 (not (= lambda!392683 lambda!392637))))

(declare-fun bs!1844672 () Bool)

(assert (= bs!1844672 (and b!6910554 b!6910234)))

(assert (=> bs!1844672 (= (and (= (_2!37057 lt!2468388) s!14361) (= (regOne!34286 lt!2468398) (regOne!34286 lt!2468396)) (= (regTwo!34286 lt!2468398) (regTwo!34286 lt!2468396))) (= lambda!392683 lambda!392660))))

(declare-fun bs!1844673 () Bool)

(assert (= bs!1844673 (and b!6910554 d!2163303)))

(assert (=> bs!1844673 (not (= lambda!392683 lambda!392681))))

(declare-fun bs!1844674 () Bool)

(assert (= bs!1844674 (and b!6910554 b!6910231)))

(assert (=> bs!1844674 (not (= lambda!392683 lambda!392658))))

(declare-fun bs!1844675 () Bool)

(assert (= bs!1844675 (and b!6910554 d!2163295)))

(assert (=> bs!1844675 (= (and (= (regOne!34286 lt!2468398) r2!6280) (= (regTwo!34286 lt!2468398) r3!135)) (= lambda!392683 lambda!392678))))

(assert (=> bs!1844670 (= (and (= (regOne!34286 lt!2468398) r2!6280) (= (regTwo!34286 lt!2468398) r3!135)) (= lambda!392683 lambda!392640))))

(assert (=> bs!1844671 (= (and (= (_2!37057 lt!2468388) s!14361) (= (regOne!34286 lt!2468398) r1!6342) (= (regTwo!34286 lt!2468398) lt!2468398)) (= lambda!392683 lambda!392638))))

(assert (=> bs!1844675 (not (= lambda!392683 lambda!392677))))

(declare-fun bs!1844676 () Bool)

(assert (= bs!1844676 (and b!6910554 b!6910313)))

(assert (=> bs!1844676 (= (and (= (_2!37057 lt!2468388) s!14361) (= (regOne!34286 lt!2468398) (regOne!34286 lt!2468387)) (= (regTwo!34286 lt!2468398) (regTwo!34286 lt!2468387))) (= lambda!392683 lambda!392668))))

(declare-fun bs!1844677 () Bool)

(assert (= bs!1844677 (and b!6910554 b!6910310)))

(assert (=> bs!1844677 (not (= lambda!392683 lambda!392666))))

(assert (=> b!6910554 true))

(assert (=> b!6910554 true))

(declare-fun e!4160662 () Bool)

(declare-fun call!628310 () Bool)

(assert (=> b!6910551 (= e!4160662 call!628310)))

(declare-fun b!6910552 () Bool)

(declare-fun c!1283639 () Bool)

(assert (=> b!6910552 (= c!1283639 ((_ is ElementMatch!16887) lt!2468398))))

(declare-fun e!4160666 () Bool)

(declare-fun e!4160663 () Bool)

(assert (=> b!6910552 (= e!4160666 e!4160663)))

(declare-fun b!6910553 () Bool)

(assert (=> b!6910553 (= e!4160663 (= (_2!37057 lt!2468388) (Cons!66520 (c!1283527 lt!2468398) Nil!66520)))))

(declare-fun e!4160664 () Bool)

(assert (=> b!6910554 (= e!4160664 call!628310)))

(declare-fun b!6910555 () Bool)

(declare-fun e!4160665 () Bool)

(declare-fun call!628309 () Bool)

(assert (=> b!6910555 (= e!4160665 call!628309)))

(declare-fun c!1283637 () Bool)

(declare-fun bm!628304 () Bool)

(assert (=> bm!628304 (= call!628310 (Exists!3895 (ite c!1283637 lambda!392682 lambda!392683)))))

(declare-fun b!6910556 () Bool)

(declare-fun c!1283636 () Bool)

(assert (=> b!6910556 (= c!1283636 ((_ is Union!16887) lt!2468398))))

(declare-fun e!4160661 () Bool)

(assert (=> b!6910556 (= e!4160663 e!4160661)))

(declare-fun b!6910557 () Bool)

(assert (=> b!6910557 (= e!4160661 e!4160664)))

(assert (=> b!6910557 (= c!1283637 ((_ is Star!16887) lt!2468398))))

(declare-fun b!6910558 () Bool)

(assert (=> b!6910558 (= e!4160665 e!4160666)))

(declare-fun res!2818233 () Bool)

(assert (=> b!6910558 (= res!2818233 (not ((_ is EmptyLang!16887) lt!2468398)))))

(assert (=> b!6910558 (=> (not res!2818233) (not e!4160666))))

(declare-fun b!6910559 () Bool)

(declare-fun e!4160667 () Bool)

(assert (=> b!6910559 (= e!4160667 (matchRSpec!3950 (regTwo!34287 lt!2468398) (_2!37057 lt!2468388)))))

(declare-fun d!2163305 () Bool)

(declare-fun c!1283638 () Bool)

(assert (=> d!2163305 (= c!1283638 ((_ is EmptyExpr!16887) lt!2468398))))

(assert (=> d!2163305 (= (matchRSpec!3950 lt!2468398 (_2!37057 lt!2468388)) e!4160665)))

(declare-fun b!6910560 () Bool)

(assert (=> b!6910560 (= e!4160661 e!4160667)))

(declare-fun res!2818235 () Bool)

(assert (=> b!6910560 (= res!2818235 (matchRSpec!3950 (regOne!34287 lt!2468398) (_2!37057 lt!2468388)))))

(assert (=> b!6910560 (=> res!2818235 e!4160667)))

(declare-fun b!6910561 () Bool)

(declare-fun res!2818234 () Bool)

(assert (=> b!6910561 (=> res!2818234 e!4160662)))

(assert (=> b!6910561 (= res!2818234 call!628309)))

(assert (=> b!6910561 (= e!4160664 e!4160662)))

(declare-fun bm!628305 () Bool)

(assert (=> bm!628305 (= call!628309 (isEmpty!38766 (_2!37057 lt!2468388)))))

(assert (= (and d!2163305 c!1283638) b!6910555))

(assert (= (and d!2163305 (not c!1283638)) b!6910558))

(assert (= (and b!6910558 res!2818233) b!6910552))

(assert (= (and b!6910552 c!1283639) b!6910553))

(assert (= (and b!6910552 (not c!1283639)) b!6910556))

(assert (= (and b!6910556 c!1283636) b!6910560))

(assert (= (and b!6910556 (not c!1283636)) b!6910557))

(assert (= (and b!6910560 (not res!2818235)) b!6910559))

(assert (= (and b!6910557 c!1283637) b!6910561))

(assert (= (and b!6910557 (not c!1283637)) b!6910554))

(assert (= (and b!6910561 (not res!2818234)) b!6910551))

(assert (= (or b!6910551 b!6910554) bm!628304))

(assert (= (or b!6910555 b!6910561) bm!628305))

(declare-fun m!7625270 () Bool)

(assert (=> bm!628304 m!7625270))

(declare-fun m!7625272 () Bool)

(assert (=> b!6910559 m!7625272))

(declare-fun m!7625274 () Bool)

(assert (=> b!6910560 m!7625274))

(declare-fun m!7625276 () Bool)

(assert (=> bm!628305 m!7625276))

(assert (=> b!6909987 d!2163305))

(declare-fun d!2163307 () Bool)

(assert (=> d!2163307 (= (matchR!9032 lt!2468398 (_2!37057 lt!2468388)) (matchRSpec!3950 lt!2468398 (_2!37057 lt!2468388)))))

(declare-fun lt!2468457 () Unit!160510)

(assert (=> d!2163307 (= lt!2468457 (choose!51466 lt!2468398 (_2!37057 lt!2468388)))))

(assert (=> d!2163307 (validRegex!8595 lt!2468398)))

(assert (=> d!2163307 (= (mainMatchTheorem!3950 lt!2468398 (_2!37057 lt!2468388)) lt!2468457)))

(declare-fun bs!1844678 () Bool)

(assert (= bs!1844678 d!2163307))

(assert (=> bs!1844678 m!7624916))

(assert (=> bs!1844678 m!7624930))

(declare-fun m!7625278 () Bool)

(assert (=> bs!1844678 m!7625278))

(declare-fun m!7625280 () Bool)

(assert (=> bs!1844678 m!7625280))

(assert (=> b!6909987 d!2163307))

(declare-fun d!2163309 () Bool)

(assert (=> d!2163309 (= (Exists!3895 lambda!392640) (choose!51468 lambda!392640))))

(declare-fun bs!1844679 () Bool)

(assert (= bs!1844679 d!2163309))

(declare-fun m!7625282 () Bool)

(assert (=> bs!1844679 m!7625282))

(assert (=> b!6909987 d!2163309))

(declare-fun b!6910562 () Bool)

(declare-fun e!4160668 () Bool)

(assert (=> b!6910562 (= e!4160668 (= (head!13858 (_2!37057 lt!2468388)) (c!1283527 lt!2468398)))))

(declare-fun b!6910563 () Bool)

(declare-fun e!4160672 () Bool)

(declare-fun e!4160670 () Bool)

(assert (=> b!6910563 (= e!4160672 e!4160670)))

(declare-fun res!2818236 () Bool)

(assert (=> b!6910563 (=> (not res!2818236) (not e!4160670))))

(declare-fun lt!2468458 () Bool)

(assert (=> b!6910563 (= res!2818236 (not lt!2468458))))

(declare-fun b!6910564 () Bool)

(declare-fun res!2818239 () Bool)

(assert (=> b!6910564 (=> res!2818239 e!4160672)))

(assert (=> b!6910564 (= res!2818239 (not ((_ is ElementMatch!16887) lt!2468398)))))

(declare-fun e!4160669 () Bool)

(assert (=> b!6910564 (= e!4160669 e!4160672)))

(declare-fun b!6910565 () Bool)

(declare-fun res!2818242 () Bool)

(assert (=> b!6910565 (=> (not res!2818242) (not e!4160668))))

(declare-fun call!628311 () Bool)

(assert (=> b!6910565 (= res!2818242 (not call!628311))))

(declare-fun b!6910566 () Bool)

(declare-fun e!4160671 () Bool)

(assert (=> b!6910566 (= e!4160671 e!4160669)))

(declare-fun c!1283642 () Bool)

(assert (=> b!6910566 (= c!1283642 ((_ is EmptyLang!16887) lt!2468398))))

(declare-fun b!6910567 () Bool)

(declare-fun res!2818243 () Bool)

(assert (=> b!6910567 (=> res!2818243 e!4160672)))

(assert (=> b!6910567 (= res!2818243 e!4160668)))

(declare-fun res!2818237 () Bool)

(assert (=> b!6910567 (=> (not res!2818237) (not e!4160668))))

(assert (=> b!6910567 (= res!2818237 lt!2468458)))

(declare-fun b!6910568 () Bool)

(declare-fun e!4160673 () Bool)

(assert (=> b!6910568 (= e!4160673 (nullable!6726 lt!2468398))))

(declare-fun b!6910569 () Bool)

(declare-fun res!2818238 () Bool)

(assert (=> b!6910569 (=> (not res!2818238) (not e!4160668))))

(assert (=> b!6910569 (= res!2818238 (isEmpty!38766 (tail!12910 (_2!37057 lt!2468388))))))

(declare-fun b!6910570 () Bool)

(declare-fun res!2818240 () Bool)

(declare-fun e!4160674 () Bool)

(assert (=> b!6910570 (=> res!2818240 e!4160674)))

(assert (=> b!6910570 (= res!2818240 (not (isEmpty!38766 (tail!12910 (_2!37057 lt!2468388)))))))

(declare-fun b!6910571 () Bool)

(assert (=> b!6910571 (= e!4160673 (matchR!9032 (derivativeStep!5405 lt!2468398 (head!13858 (_2!37057 lt!2468388))) (tail!12910 (_2!37057 lt!2468388))))))

(declare-fun d!2163311 () Bool)

(assert (=> d!2163311 e!4160671))

(declare-fun c!1283640 () Bool)

(assert (=> d!2163311 (= c!1283640 ((_ is EmptyExpr!16887) lt!2468398))))

(assert (=> d!2163311 (= lt!2468458 e!4160673)))

(declare-fun c!1283641 () Bool)

(assert (=> d!2163311 (= c!1283641 (isEmpty!38766 (_2!37057 lt!2468388)))))

(assert (=> d!2163311 (validRegex!8595 lt!2468398)))

(assert (=> d!2163311 (= (matchR!9032 lt!2468398 (_2!37057 lt!2468388)) lt!2468458)))

(declare-fun b!6910572 () Bool)

(assert (=> b!6910572 (= e!4160669 (not lt!2468458))))

(declare-fun b!6910573 () Bool)

(assert (=> b!6910573 (= e!4160674 (not (= (head!13858 (_2!37057 lt!2468388)) (c!1283527 lt!2468398))))))

(declare-fun b!6910574 () Bool)

(assert (=> b!6910574 (= e!4160670 e!4160674)))

(declare-fun res!2818241 () Bool)

(assert (=> b!6910574 (=> res!2818241 e!4160674)))

(assert (=> b!6910574 (= res!2818241 call!628311)))

(declare-fun b!6910575 () Bool)

(assert (=> b!6910575 (= e!4160671 (= lt!2468458 call!628311))))

(declare-fun bm!628306 () Bool)

(assert (=> bm!628306 (= call!628311 (isEmpty!38766 (_2!37057 lt!2468388)))))

(assert (= (and d!2163311 c!1283641) b!6910568))

(assert (= (and d!2163311 (not c!1283641)) b!6910571))

(assert (= (and d!2163311 c!1283640) b!6910575))

(assert (= (and d!2163311 (not c!1283640)) b!6910566))

(assert (= (and b!6910566 c!1283642) b!6910572))

(assert (= (and b!6910566 (not c!1283642)) b!6910564))

(assert (= (and b!6910564 (not res!2818239)) b!6910567))

(assert (= (and b!6910567 res!2818237) b!6910565))

(assert (= (and b!6910565 res!2818242) b!6910569))

(assert (= (and b!6910569 res!2818238) b!6910562))

(assert (= (and b!6910567 (not res!2818243)) b!6910563))

(assert (= (and b!6910563 res!2818236) b!6910574))

(assert (= (and b!6910574 (not res!2818241)) b!6910570))

(assert (= (and b!6910570 (not res!2818240)) b!6910573))

(assert (= (or b!6910575 b!6910565 b!6910574) bm!628306))

(assert (=> d!2163311 m!7625276))

(assert (=> d!2163311 m!7625280))

(declare-fun m!7625284 () Bool)

(assert (=> b!6910562 m!7625284))

(assert (=> bm!628306 m!7625276))

(declare-fun m!7625286 () Bool)

(assert (=> b!6910570 m!7625286))

(assert (=> b!6910570 m!7625286))

(declare-fun m!7625288 () Bool)

(assert (=> b!6910570 m!7625288))

(assert (=> b!6910569 m!7625286))

(assert (=> b!6910569 m!7625286))

(assert (=> b!6910569 m!7625288))

(assert (=> b!6910571 m!7625284))

(assert (=> b!6910571 m!7625284))

(declare-fun m!7625290 () Bool)

(assert (=> b!6910571 m!7625290))

(assert (=> b!6910571 m!7625286))

(assert (=> b!6910571 m!7625290))

(assert (=> b!6910571 m!7625286))

(declare-fun m!7625292 () Bool)

(assert (=> b!6910571 m!7625292))

(declare-fun m!7625294 () Bool)

(assert (=> b!6910568 m!7625294))

(assert (=> b!6910573 m!7625284))

(assert (=> b!6909998 d!2163311))

(declare-fun bm!628307 () Bool)

(declare-fun call!628313 () Bool)

(declare-fun call!628312 () Bool)

(assert (=> bm!628307 (= call!628313 call!628312)))

(declare-fun b!6910576 () Bool)

(declare-fun e!4160677 () Bool)

(declare-fun call!628314 () Bool)

(assert (=> b!6910576 (= e!4160677 call!628314)))

(declare-fun b!6910577 () Bool)

(declare-fun e!4160679 () Bool)

(declare-fun e!4160676 () Bool)

(assert (=> b!6910577 (= e!4160679 e!4160676)))

(declare-fun c!1283644 () Bool)

(assert (=> b!6910577 (= c!1283644 ((_ is Union!16887) r3!135))))

(declare-fun d!2163313 () Bool)

(declare-fun res!2818244 () Bool)

(declare-fun e!4160675 () Bool)

(assert (=> d!2163313 (=> res!2818244 e!4160675)))

(assert (=> d!2163313 (= res!2818244 ((_ is ElementMatch!16887) r3!135))))

(assert (=> d!2163313 (= (validRegex!8595 r3!135) e!4160675)))

(declare-fun b!6910578 () Bool)

(declare-fun res!2818246 () Bool)

(assert (=> b!6910578 (=> (not res!2818246) (not e!4160677))))

(assert (=> b!6910578 (= res!2818246 call!628313)))

(assert (=> b!6910578 (= e!4160676 e!4160677)))

(declare-fun c!1283643 () Bool)

(declare-fun bm!628308 () Bool)

(assert (=> bm!628308 (= call!628312 (validRegex!8595 (ite c!1283643 (reg!17216 r3!135) (ite c!1283644 (regOne!34287 r3!135) (regTwo!34286 r3!135)))))))

(declare-fun b!6910579 () Bool)

(declare-fun e!4160678 () Bool)

(assert (=> b!6910579 (= e!4160678 call!628312)))

(declare-fun b!6910580 () Bool)

(assert (=> b!6910580 (= e!4160675 e!4160679)))

(assert (=> b!6910580 (= c!1283643 ((_ is Star!16887) r3!135))))

(declare-fun bm!628309 () Bool)

(assert (=> bm!628309 (= call!628314 (validRegex!8595 (ite c!1283644 (regTwo!34287 r3!135) (regOne!34286 r3!135))))))

(declare-fun b!6910581 () Bool)

(assert (=> b!6910581 (= e!4160679 e!4160678)))

(declare-fun res!2818248 () Bool)

(assert (=> b!6910581 (= res!2818248 (not (nullable!6726 (reg!17216 r3!135))))))

(assert (=> b!6910581 (=> (not res!2818248) (not e!4160678))))

(declare-fun b!6910582 () Bool)

(declare-fun res!2818247 () Bool)

(declare-fun e!4160680 () Bool)

(assert (=> b!6910582 (=> res!2818247 e!4160680)))

(assert (=> b!6910582 (= res!2818247 (not ((_ is Concat!25732) r3!135)))))

(assert (=> b!6910582 (= e!4160676 e!4160680)))

(declare-fun b!6910583 () Bool)

(declare-fun e!4160681 () Bool)

(assert (=> b!6910583 (= e!4160681 call!628313)))

(declare-fun b!6910584 () Bool)

(assert (=> b!6910584 (= e!4160680 e!4160681)))

(declare-fun res!2818245 () Bool)

(assert (=> b!6910584 (=> (not res!2818245) (not e!4160681))))

(assert (=> b!6910584 (= res!2818245 call!628314)))

(assert (= (and d!2163313 (not res!2818244)) b!6910580))

(assert (= (and b!6910580 c!1283643) b!6910581))

(assert (= (and b!6910580 (not c!1283643)) b!6910577))

(assert (= (and b!6910581 res!2818248) b!6910579))

(assert (= (and b!6910577 c!1283644) b!6910578))

(assert (= (and b!6910577 (not c!1283644)) b!6910582))

(assert (= (and b!6910578 res!2818246) b!6910576))

(assert (= (and b!6910582 (not res!2818247)) b!6910584))

(assert (= (and b!6910584 res!2818245) b!6910583))

(assert (= (or b!6910578 b!6910583) bm!628307))

(assert (= (or b!6910576 b!6910584) bm!628309))

(assert (= (or b!6910579 bm!628307) bm!628308))

(declare-fun m!7625296 () Bool)

(assert (=> bm!628308 m!7625296))

(declare-fun m!7625298 () Bool)

(assert (=> bm!628309 m!7625298))

(declare-fun m!7625300 () Bool)

(assert (=> b!6910581 m!7625300))

(assert (=> b!6909993 d!2163313))

(declare-fun d!2163315 () Bool)

(assert (=> d!2163315 (= (isDefined!13369 lt!2468389) (not (isEmpty!38767 lt!2468389)))))

(declare-fun bs!1844680 () Bool)

(assert (= bs!1844680 d!2163315))

(declare-fun m!7625302 () Bool)

(assert (=> bs!1844680 m!7625302))

(assert (=> b!6909988 d!2163315))

(declare-fun b!6910585 () Bool)

(declare-fun e!4160686 () Bool)

(assert (=> b!6910585 (= e!4160686 (matchR!9032 lt!2468398 s!14361))))

(declare-fun b!6910586 () Bool)

(declare-fun res!2818250 () Bool)

(declare-fun e!4160685 () Bool)

(assert (=> b!6910586 (=> (not res!2818250) (not e!4160685))))

(declare-fun lt!2468459 () Option!16666)

(assert (=> b!6910586 (= res!2818250 (matchR!9032 r1!6342 (_1!37057 (get!23281 lt!2468459))))))

(declare-fun b!6910587 () Bool)

(declare-fun lt!2468461 () Unit!160510)

(declare-fun lt!2468460 () Unit!160510)

(assert (=> b!6910587 (= lt!2468461 lt!2468460)))

(assert (=> b!6910587 (= (++!14940 (++!14940 Nil!66520 (Cons!66520 (h!72968 s!14361) Nil!66520)) (t!380387 s!14361)) s!14361)))

(assert (=> b!6910587 (= lt!2468460 (lemmaMoveElementToOtherListKeepsConcatEq!2813 Nil!66520 (h!72968 s!14361) (t!380387 s!14361) s!14361))))

(declare-fun e!4160684 () Option!16666)

(assert (=> b!6910587 (= e!4160684 (findConcatSeparation!3080 r1!6342 lt!2468398 (++!14940 Nil!66520 (Cons!66520 (h!72968 s!14361) Nil!66520)) (t!380387 s!14361) s!14361))))

(declare-fun b!6910588 () Bool)

(declare-fun e!4160683 () Bool)

(assert (=> b!6910588 (= e!4160683 (not (isDefined!13369 lt!2468459)))))

(declare-fun b!6910589 () Bool)

(assert (=> b!6910589 (= e!4160684 None!16665)))

(declare-fun b!6910590 () Bool)

(declare-fun e!4160682 () Option!16666)

(assert (=> b!6910590 (= e!4160682 e!4160684)))

(declare-fun c!1283646 () Bool)

(assert (=> b!6910590 (= c!1283646 ((_ is Nil!66520) s!14361))))

(declare-fun d!2163317 () Bool)

(assert (=> d!2163317 e!4160683))

(declare-fun res!2818249 () Bool)

(assert (=> d!2163317 (=> res!2818249 e!4160683)))

(assert (=> d!2163317 (= res!2818249 e!4160685)))

(declare-fun res!2818252 () Bool)

(assert (=> d!2163317 (=> (not res!2818252) (not e!4160685))))

(assert (=> d!2163317 (= res!2818252 (isDefined!13369 lt!2468459))))

(assert (=> d!2163317 (= lt!2468459 e!4160682)))

(declare-fun c!1283645 () Bool)

(assert (=> d!2163317 (= c!1283645 e!4160686)))

(declare-fun res!2818251 () Bool)

(assert (=> d!2163317 (=> (not res!2818251) (not e!4160686))))

(assert (=> d!2163317 (= res!2818251 (matchR!9032 r1!6342 Nil!66520))))

(assert (=> d!2163317 (validRegex!8595 r1!6342)))

(assert (=> d!2163317 (= (findConcatSeparation!3080 r1!6342 lt!2468398 Nil!66520 s!14361 s!14361) lt!2468459)))

(declare-fun b!6910591 () Bool)

(assert (=> b!6910591 (= e!4160685 (= (++!14940 (_1!37057 (get!23281 lt!2468459)) (_2!37057 (get!23281 lt!2468459))) s!14361))))

(declare-fun b!6910592 () Bool)

(declare-fun res!2818253 () Bool)

(assert (=> b!6910592 (=> (not res!2818253) (not e!4160685))))

(assert (=> b!6910592 (= res!2818253 (matchR!9032 lt!2468398 (_2!37057 (get!23281 lt!2468459))))))

(declare-fun b!6910593 () Bool)

(assert (=> b!6910593 (= e!4160682 (Some!16665 (tuple2!67509 Nil!66520 s!14361)))))

(assert (= (and d!2163317 res!2818251) b!6910585))

(assert (= (and d!2163317 c!1283645) b!6910593))

(assert (= (and d!2163317 (not c!1283645)) b!6910590))

(assert (= (and b!6910590 c!1283646) b!6910589))

(assert (= (and b!6910590 (not c!1283646)) b!6910587))

(assert (= (and d!2163317 res!2818252) b!6910586))

(assert (= (and b!6910586 res!2818250) b!6910592))

(assert (= (and b!6910592 res!2818253) b!6910591))

(assert (= (and d!2163317 (not res!2818249)) b!6910588))

(declare-fun m!7625304 () Bool)

(assert (=> b!6910591 m!7625304))

(declare-fun m!7625306 () Bool)

(assert (=> b!6910591 m!7625306))

(declare-fun m!7625308 () Bool)

(assert (=> b!6910588 m!7625308))

(assert (=> b!6910586 m!7625304))

(declare-fun m!7625310 () Bool)

(assert (=> b!6910586 m!7625310))

(assert (=> d!2163317 m!7625308))

(declare-fun m!7625312 () Bool)

(assert (=> d!2163317 m!7625312))

(assert (=> d!2163317 m!7624908))

(assert (=> b!6910592 m!7625304))

(declare-fun m!7625314 () Bool)

(assert (=> b!6910592 m!7625314))

(declare-fun m!7625316 () Bool)

(assert (=> b!6910587 m!7625316))

(assert (=> b!6910587 m!7625316))

(declare-fun m!7625318 () Bool)

(assert (=> b!6910587 m!7625318))

(declare-fun m!7625320 () Bool)

(assert (=> b!6910587 m!7625320))

(assert (=> b!6910587 m!7625316))

(declare-fun m!7625322 () Bool)

(assert (=> b!6910587 m!7625322))

(declare-fun m!7625324 () Bool)

(assert (=> b!6910585 m!7625324))

(assert (=> b!6909988 d!2163317))

(declare-fun bs!1844681 () Bool)

(declare-fun b!6910594 () Bool)

(assert (= bs!1844681 (and b!6910594 b!6910551)))

(declare-fun lambda!392684 () Int)

(assert (=> bs!1844681 (= (and (= (_1!37057 lt!2468388) (_2!37057 lt!2468388)) (= (reg!17216 r1!6342) (reg!17216 lt!2468398)) (= r1!6342 lt!2468398)) (= lambda!392684 lambda!392682))))

(declare-fun bs!1844682 () Bool)

(assert (= bs!1844682 (and b!6910594 b!6909987)))

(assert (=> bs!1844682 (not (= lambda!392684 lambda!392639))))

(declare-fun bs!1844683 () Bool)

(assert (= bs!1844683 (and b!6910594 b!6909984)))

(assert (=> bs!1844683 (not (= lambda!392684 lambda!392637))))

(declare-fun bs!1844684 () Bool)

(assert (= bs!1844684 (and b!6910594 b!6910234)))

(assert (=> bs!1844684 (not (= lambda!392684 lambda!392660))))

(declare-fun bs!1844685 () Bool)

(assert (= bs!1844685 (and b!6910594 d!2163303)))

(assert (=> bs!1844685 (not (= lambda!392684 lambda!392681))))

(declare-fun bs!1844686 () Bool)

(assert (= bs!1844686 (and b!6910594 d!2163295)))

(assert (=> bs!1844686 (not (= lambda!392684 lambda!392678))))

(assert (=> bs!1844682 (not (= lambda!392684 lambda!392640))))

(assert (=> bs!1844683 (not (= lambda!392684 lambda!392638))))

(assert (=> bs!1844686 (not (= lambda!392684 lambda!392677))))

(declare-fun bs!1844687 () Bool)

(assert (= bs!1844687 (and b!6910594 b!6910313)))

(assert (=> bs!1844687 (not (= lambda!392684 lambda!392668))))

(declare-fun bs!1844688 () Bool)

(assert (= bs!1844688 (and b!6910594 b!6910310)))

(assert (=> bs!1844688 (= (and (= (_1!37057 lt!2468388) s!14361) (= (reg!17216 r1!6342) (reg!17216 lt!2468387)) (= r1!6342 lt!2468387)) (= lambda!392684 lambda!392666))))

(declare-fun bs!1844689 () Bool)

(assert (= bs!1844689 (and b!6910594 b!6910231)))

(assert (=> bs!1844689 (= (and (= (_1!37057 lt!2468388) s!14361) (= (reg!17216 r1!6342) (reg!17216 lt!2468396)) (= r1!6342 lt!2468396)) (= lambda!392684 lambda!392658))))

(declare-fun bs!1844690 () Bool)

(assert (= bs!1844690 (and b!6910594 b!6910554)))

(assert (=> bs!1844690 (not (= lambda!392684 lambda!392683))))

(assert (=> b!6910594 true))

(assert (=> b!6910594 true))

(declare-fun bs!1844691 () Bool)

(declare-fun b!6910597 () Bool)

(assert (= bs!1844691 (and b!6910597 b!6910551)))

(declare-fun lambda!392685 () Int)

(assert (=> bs!1844691 (not (= lambda!392685 lambda!392682))))

(declare-fun bs!1844692 () Bool)

(assert (= bs!1844692 (and b!6910597 b!6909987)))

(assert (=> bs!1844692 (not (= lambda!392685 lambda!392639))))

(declare-fun bs!1844693 () Bool)

(assert (= bs!1844693 (and b!6910597 b!6909984)))

(assert (=> bs!1844693 (not (= lambda!392685 lambda!392637))))

(declare-fun bs!1844694 () Bool)

(assert (= bs!1844694 (and b!6910597 b!6910234)))

(assert (=> bs!1844694 (= (and (= (_1!37057 lt!2468388) s!14361) (= (regOne!34286 r1!6342) (regOne!34286 lt!2468396)) (= (regTwo!34286 r1!6342) (regTwo!34286 lt!2468396))) (= lambda!392685 lambda!392660))))

(declare-fun bs!1844695 () Bool)

(assert (= bs!1844695 (and b!6910597 d!2163303)))

(assert (=> bs!1844695 (not (= lambda!392685 lambda!392681))))

(declare-fun bs!1844696 () Bool)

(assert (= bs!1844696 (and b!6910597 b!6910594)))

(assert (=> bs!1844696 (not (= lambda!392685 lambda!392684))))

(declare-fun bs!1844697 () Bool)

(assert (= bs!1844697 (and b!6910597 d!2163295)))

(assert (=> bs!1844697 (= (and (= (_1!37057 lt!2468388) (_2!37057 lt!2468388)) (= (regOne!34286 r1!6342) r2!6280) (= (regTwo!34286 r1!6342) r3!135)) (= lambda!392685 lambda!392678))))

(assert (=> bs!1844692 (= (and (= (_1!37057 lt!2468388) (_2!37057 lt!2468388)) (= (regOne!34286 r1!6342) r2!6280) (= (regTwo!34286 r1!6342) r3!135)) (= lambda!392685 lambda!392640))))

(assert (=> bs!1844693 (= (and (= (_1!37057 lt!2468388) s!14361) (= (regOne!34286 r1!6342) r1!6342) (= (regTwo!34286 r1!6342) lt!2468398)) (= lambda!392685 lambda!392638))))

(assert (=> bs!1844697 (not (= lambda!392685 lambda!392677))))

(declare-fun bs!1844698 () Bool)

(assert (= bs!1844698 (and b!6910597 b!6910313)))

(assert (=> bs!1844698 (= (and (= (_1!37057 lt!2468388) s!14361) (= (regOne!34286 r1!6342) (regOne!34286 lt!2468387)) (= (regTwo!34286 r1!6342) (regTwo!34286 lt!2468387))) (= lambda!392685 lambda!392668))))

(declare-fun bs!1844699 () Bool)

(assert (= bs!1844699 (and b!6910597 b!6910310)))

(assert (=> bs!1844699 (not (= lambda!392685 lambda!392666))))

(declare-fun bs!1844700 () Bool)

(assert (= bs!1844700 (and b!6910597 b!6910231)))

(assert (=> bs!1844700 (not (= lambda!392685 lambda!392658))))

(declare-fun bs!1844701 () Bool)

(assert (= bs!1844701 (and b!6910597 b!6910554)))

(assert (=> bs!1844701 (= (and (= (_1!37057 lt!2468388) (_2!37057 lt!2468388)) (= (regOne!34286 r1!6342) (regOne!34286 lt!2468398)) (= (regTwo!34286 r1!6342) (regTwo!34286 lt!2468398))) (= lambda!392685 lambda!392683))))

(assert (=> b!6910597 true))

(assert (=> b!6910597 true))

(declare-fun e!4160688 () Bool)

(declare-fun call!628316 () Bool)

(assert (=> b!6910594 (= e!4160688 call!628316)))

(declare-fun b!6910595 () Bool)

(declare-fun c!1283650 () Bool)

(assert (=> b!6910595 (= c!1283650 ((_ is ElementMatch!16887) r1!6342))))

(declare-fun e!4160692 () Bool)

(declare-fun e!4160689 () Bool)

(assert (=> b!6910595 (= e!4160692 e!4160689)))

(declare-fun b!6910596 () Bool)

(assert (=> b!6910596 (= e!4160689 (= (_1!37057 lt!2468388) (Cons!66520 (c!1283527 r1!6342) Nil!66520)))))

(declare-fun e!4160690 () Bool)

(assert (=> b!6910597 (= e!4160690 call!628316)))

(declare-fun b!6910598 () Bool)

(declare-fun e!4160691 () Bool)

(declare-fun call!628315 () Bool)

(assert (=> b!6910598 (= e!4160691 call!628315)))

(declare-fun bm!628310 () Bool)

(declare-fun c!1283648 () Bool)

(assert (=> bm!628310 (= call!628316 (Exists!3895 (ite c!1283648 lambda!392684 lambda!392685)))))

(declare-fun b!6910599 () Bool)

(declare-fun c!1283647 () Bool)

(assert (=> b!6910599 (= c!1283647 ((_ is Union!16887) r1!6342))))

(declare-fun e!4160687 () Bool)

(assert (=> b!6910599 (= e!4160689 e!4160687)))

(declare-fun b!6910600 () Bool)

(assert (=> b!6910600 (= e!4160687 e!4160690)))

(assert (=> b!6910600 (= c!1283648 ((_ is Star!16887) r1!6342))))

(declare-fun b!6910601 () Bool)

(assert (=> b!6910601 (= e!4160691 e!4160692)))

(declare-fun res!2818254 () Bool)

(assert (=> b!6910601 (= res!2818254 (not ((_ is EmptyLang!16887) r1!6342)))))

(assert (=> b!6910601 (=> (not res!2818254) (not e!4160692))))

(declare-fun b!6910602 () Bool)

(declare-fun e!4160693 () Bool)

(assert (=> b!6910602 (= e!4160693 (matchRSpec!3950 (regTwo!34287 r1!6342) (_1!37057 lt!2468388)))))

(declare-fun d!2163319 () Bool)

(declare-fun c!1283649 () Bool)

(assert (=> d!2163319 (= c!1283649 ((_ is EmptyExpr!16887) r1!6342))))

(assert (=> d!2163319 (= (matchRSpec!3950 r1!6342 (_1!37057 lt!2468388)) e!4160691)))

(declare-fun b!6910603 () Bool)

(assert (=> b!6910603 (= e!4160687 e!4160693)))

(declare-fun res!2818256 () Bool)

(assert (=> b!6910603 (= res!2818256 (matchRSpec!3950 (regOne!34287 r1!6342) (_1!37057 lt!2468388)))))

(assert (=> b!6910603 (=> res!2818256 e!4160693)))

(declare-fun b!6910604 () Bool)

(declare-fun res!2818255 () Bool)

(assert (=> b!6910604 (=> res!2818255 e!4160688)))

(assert (=> b!6910604 (= res!2818255 call!628315)))

(assert (=> b!6910604 (= e!4160690 e!4160688)))

(declare-fun bm!628311 () Bool)

(assert (=> bm!628311 (= call!628315 (isEmpty!38766 (_1!37057 lt!2468388)))))

(assert (= (and d!2163319 c!1283649) b!6910598))

(assert (= (and d!2163319 (not c!1283649)) b!6910601))

(assert (= (and b!6910601 res!2818254) b!6910595))

(assert (= (and b!6910595 c!1283650) b!6910596))

(assert (= (and b!6910595 (not c!1283650)) b!6910599))

(assert (= (and b!6910599 c!1283647) b!6910603))

(assert (= (and b!6910599 (not c!1283647)) b!6910600))

(assert (= (and b!6910603 (not res!2818256)) b!6910602))

(assert (= (and b!6910600 c!1283648) b!6910604))

(assert (= (and b!6910600 (not c!1283648)) b!6910597))

(assert (= (and b!6910604 (not res!2818255)) b!6910594))

(assert (= (or b!6910594 b!6910597) bm!628310))

(assert (= (or b!6910598 b!6910604) bm!628311))

(declare-fun m!7625326 () Bool)

(assert (=> bm!628310 m!7625326))

(declare-fun m!7625328 () Bool)

(assert (=> b!6910602 m!7625328))

(declare-fun m!7625330 () Bool)

(assert (=> b!6910603 m!7625330))

(declare-fun m!7625332 () Bool)

(assert (=> bm!628311 m!7625332))

(assert (=> b!6909984 d!2163319))

(declare-fun d!2163321 () Bool)

(assert (=> d!2163321 (= (matchR!9032 r1!6342 (_1!37057 lt!2468388)) (matchRSpec!3950 r1!6342 (_1!37057 lt!2468388)))))

(declare-fun lt!2468462 () Unit!160510)

(assert (=> d!2163321 (= lt!2468462 (choose!51466 r1!6342 (_1!37057 lt!2468388)))))

(assert (=> d!2163321 (validRegex!8595 r1!6342)))

(assert (=> d!2163321 (= (mainMatchTheorem!3950 r1!6342 (_1!37057 lt!2468388)) lt!2468462)))

(declare-fun bs!1844702 () Bool)

(assert (= bs!1844702 d!2163321))

(assert (=> bs!1844702 m!7624966))

(assert (=> bs!1844702 m!7624964))

(declare-fun m!7625334 () Bool)

(assert (=> bs!1844702 m!7625334))

(assert (=> bs!1844702 m!7624908))

(assert (=> b!6909984 d!2163321))

(declare-fun bs!1844703 () Bool)

(declare-fun d!2163323 () Bool)

(assert (= bs!1844703 (and d!2163323 b!6910551)))

(declare-fun lambda!392686 () Int)

(assert (=> bs!1844703 (not (= lambda!392686 lambda!392682))))

(declare-fun bs!1844704 () Bool)

(assert (= bs!1844704 (and d!2163323 b!6909987)))

(assert (=> bs!1844704 (= (and (= s!14361 (_2!37057 lt!2468388)) (= r1!6342 r2!6280) (= lt!2468398 r3!135)) (= lambda!392686 lambda!392639))))

(declare-fun bs!1844705 () Bool)

(assert (= bs!1844705 (and d!2163323 b!6909984)))

(assert (=> bs!1844705 (= lambda!392686 lambda!392637)))

(declare-fun bs!1844706 () Bool)

(assert (= bs!1844706 (and d!2163323 b!6910234)))

(assert (=> bs!1844706 (not (= lambda!392686 lambda!392660))))

(declare-fun bs!1844707 () Bool)

(assert (= bs!1844707 (and d!2163323 d!2163303)))

(assert (=> bs!1844707 (= (and (= s!14361 (_2!37057 lt!2468388)) (= r1!6342 r2!6280) (= lt!2468398 r3!135)) (= lambda!392686 lambda!392681))))

(declare-fun bs!1844708 () Bool)

(assert (= bs!1844708 (and d!2163323 b!6910594)))

(assert (=> bs!1844708 (not (= lambda!392686 lambda!392684))))

(declare-fun bs!1844709 () Bool)

(assert (= bs!1844709 (and d!2163323 d!2163295)))

(assert (=> bs!1844709 (not (= lambda!392686 lambda!392678))))

(assert (=> bs!1844704 (not (= lambda!392686 lambda!392640))))

(assert (=> bs!1844705 (not (= lambda!392686 lambda!392638))))

(assert (=> bs!1844709 (= (and (= s!14361 (_2!37057 lt!2468388)) (= r1!6342 r2!6280) (= lt!2468398 r3!135)) (= lambda!392686 lambda!392677))))

(declare-fun bs!1844710 () Bool)

(assert (= bs!1844710 (and d!2163323 b!6910313)))

(assert (=> bs!1844710 (not (= lambda!392686 lambda!392668))))

(declare-fun bs!1844711 () Bool)

(assert (= bs!1844711 (and d!2163323 b!6910310)))

(assert (=> bs!1844711 (not (= lambda!392686 lambda!392666))))

(declare-fun bs!1844712 () Bool)

(assert (= bs!1844712 (and d!2163323 b!6910231)))

(assert (=> bs!1844712 (not (= lambda!392686 lambda!392658))))

(declare-fun bs!1844713 () Bool)

(assert (= bs!1844713 (and d!2163323 b!6910554)))

(assert (=> bs!1844713 (not (= lambda!392686 lambda!392683))))

(declare-fun bs!1844714 () Bool)

(assert (= bs!1844714 (and d!2163323 b!6910597)))

(assert (=> bs!1844714 (not (= lambda!392686 lambda!392685))))

(assert (=> d!2163323 true))

(assert (=> d!2163323 true))

(assert (=> d!2163323 true))

(assert (=> d!2163323 (= (isDefined!13369 (findConcatSeparation!3080 r1!6342 lt!2468398 Nil!66520 s!14361 s!14361)) (Exists!3895 lambda!392686))))

(declare-fun lt!2468463 () Unit!160510)

(assert (=> d!2163323 (= lt!2468463 (choose!51469 r1!6342 lt!2468398 s!14361))))

(assert (=> d!2163323 (validRegex!8595 r1!6342)))

(assert (=> d!2163323 (= (lemmaFindConcatSeparationEquivalentToExists!2842 r1!6342 lt!2468398 s!14361) lt!2468463)))

(declare-fun bs!1844715 () Bool)

(assert (= bs!1844715 d!2163323))

(declare-fun m!7625336 () Bool)

(assert (=> bs!1844715 m!7625336))

(assert (=> bs!1844715 m!7624912))

(declare-fun m!7625338 () Bool)

(assert (=> bs!1844715 m!7625338))

(assert (=> bs!1844715 m!7624912))

(assert (=> bs!1844715 m!7624908))

(declare-fun m!7625340 () Bool)

(assert (=> bs!1844715 m!7625340))

(assert (=> b!6909984 d!2163323))

(declare-fun d!2163325 () Bool)

(assert (=> d!2163325 (= (get!23281 lt!2468389) (v!52937 lt!2468389))))

(assert (=> b!6909984 d!2163325))

(declare-fun b!6910605 () Bool)

(declare-fun e!4160694 () Bool)

(assert (=> b!6910605 (= e!4160694 (= (head!13858 (_1!37057 lt!2468388)) (c!1283527 r1!6342)))))

(declare-fun b!6910606 () Bool)

(declare-fun e!4160698 () Bool)

(declare-fun e!4160696 () Bool)

(assert (=> b!6910606 (= e!4160698 e!4160696)))

(declare-fun res!2818257 () Bool)

(assert (=> b!6910606 (=> (not res!2818257) (not e!4160696))))

(declare-fun lt!2468464 () Bool)

(assert (=> b!6910606 (= res!2818257 (not lt!2468464))))

(declare-fun b!6910607 () Bool)

(declare-fun res!2818260 () Bool)

(assert (=> b!6910607 (=> res!2818260 e!4160698)))

(assert (=> b!6910607 (= res!2818260 (not ((_ is ElementMatch!16887) r1!6342)))))

(declare-fun e!4160695 () Bool)

(assert (=> b!6910607 (= e!4160695 e!4160698)))

(declare-fun b!6910608 () Bool)

(declare-fun res!2818263 () Bool)

(assert (=> b!6910608 (=> (not res!2818263) (not e!4160694))))

(declare-fun call!628317 () Bool)

(assert (=> b!6910608 (= res!2818263 (not call!628317))))

(declare-fun b!6910609 () Bool)

(declare-fun e!4160697 () Bool)

(assert (=> b!6910609 (= e!4160697 e!4160695)))

(declare-fun c!1283653 () Bool)

(assert (=> b!6910609 (= c!1283653 ((_ is EmptyLang!16887) r1!6342))))

(declare-fun b!6910610 () Bool)

(declare-fun res!2818264 () Bool)

(assert (=> b!6910610 (=> res!2818264 e!4160698)))

(assert (=> b!6910610 (= res!2818264 e!4160694)))

(declare-fun res!2818258 () Bool)

(assert (=> b!6910610 (=> (not res!2818258) (not e!4160694))))

(assert (=> b!6910610 (= res!2818258 lt!2468464)))

(declare-fun b!6910611 () Bool)

(declare-fun e!4160699 () Bool)

(assert (=> b!6910611 (= e!4160699 (nullable!6726 r1!6342))))

(declare-fun b!6910612 () Bool)

(declare-fun res!2818259 () Bool)

(assert (=> b!6910612 (=> (not res!2818259) (not e!4160694))))

(assert (=> b!6910612 (= res!2818259 (isEmpty!38766 (tail!12910 (_1!37057 lt!2468388))))))

(declare-fun b!6910613 () Bool)

(declare-fun res!2818261 () Bool)

(declare-fun e!4160700 () Bool)

(assert (=> b!6910613 (=> res!2818261 e!4160700)))

(assert (=> b!6910613 (= res!2818261 (not (isEmpty!38766 (tail!12910 (_1!37057 lt!2468388)))))))

(declare-fun b!6910614 () Bool)

(assert (=> b!6910614 (= e!4160699 (matchR!9032 (derivativeStep!5405 r1!6342 (head!13858 (_1!37057 lt!2468388))) (tail!12910 (_1!37057 lt!2468388))))))

(declare-fun d!2163327 () Bool)

(assert (=> d!2163327 e!4160697))

(declare-fun c!1283651 () Bool)

(assert (=> d!2163327 (= c!1283651 ((_ is EmptyExpr!16887) r1!6342))))

(assert (=> d!2163327 (= lt!2468464 e!4160699)))

(declare-fun c!1283652 () Bool)

(assert (=> d!2163327 (= c!1283652 (isEmpty!38766 (_1!37057 lt!2468388)))))

(assert (=> d!2163327 (validRegex!8595 r1!6342)))

(assert (=> d!2163327 (= (matchR!9032 r1!6342 (_1!37057 lt!2468388)) lt!2468464)))

(declare-fun b!6910615 () Bool)

(assert (=> b!6910615 (= e!4160695 (not lt!2468464))))

(declare-fun b!6910616 () Bool)

(assert (=> b!6910616 (= e!4160700 (not (= (head!13858 (_1!37057 lt!2468388)) (c!1283527 r1!6342))))))

(declare-fun b!6910617 () Bool)

(assert (=> b!6910617 (= e!4160696 e!4160700)))

(declare-fun res!2818262 () Bool)

(assert (=> b!6910617 (=> res!2818262 e!4160700)))

(assert (=> b!6910617 (= res!2818262 call!628317)))

(declare-fun b!6910618 () Bool)

(assert (=> b!6910618 (= e!4160697 (= lt!2468464 call!628317))))

(declare-fun bm!628312 () Bool)

(assert (=> bm!628312 (= call!628317 (isEmpty!38766 (_1!37057 lt!2468388)))))

(assert (= (and d!2163327 c!1283652) b!6910611))

(assert (= (and d!2163327 (not c!1283652)) b!6910614))

(assert (= (and d!2163327 c!1283651) b!6910618))

(assert (= (and d!2163327 (not c!1283651)) b!6910609))

(assert (= (and b!6910609 c!1283653) b!6910615))

(assert (= (and b!6910609 (not c!1283653)) b!6910607))

(assert (= (and b!6910607 (not res!2818260)) b!6910610))

(assert (= (and b!6910610 res!2818258) b!6910608))

(assert (= (and b!6910608 res!2818263) b!6910612))

(assert (= (and b!6910612 res!2818259) b!6910605))

(assert (= (and b!6910610 (not res!2818264)) b!6910606))

(assert (= (and b!6910606 res!2818257) b!6910617))

(assert (= (and b!6910617 (not res!2818262)) b!6910613))

(assert (= (and b!6910613 (not res!2818261)) b!6910616))

(assert (= (or b!6910618 b!6910608 b!6910617) bm!628312))

(assert (=> d!2163327 m!7625332))

(assert (=> d!2163327 m!7624908))

(declare-fun m!7625342 () Bool)

(assert (=> b!6910605 m!7625342))

(assert (=> bm!628312 m!7625332))

(declare-fun m!7625344 () Bool)

(assert (=> b!6910613 m!7625344))

(assert (=> b!6910613 m!7625344))

(declare-fun m!7625346 () Bool)

(assert (=> b!6910613 m!7625346))

(assert (=> b!6910612 m!7625344))

(assert (=> b!6910612 m!7625344))

(assert (=> b!6910612 m!7625346))

(assert (=> b!6910614 m!7625342))

(assert (=> b!6910614 m!7625342))

(declare-fun m!7625348 () Bool)

(assert (=> b!6910614 m!7625348))

(assert (=> b!6910614 m!7625344))

(assert (=> b!6910614 m!7625348))

(assert (=> b!6910614 m!7625344))

(declare-fun m!7625350 () Bool)

(assert (=> b!6910614 m!7625350))

(declare-fun m!7625352 () Bool)

(assert (=> b!6910611 m!7625352))

(assert (=> b!6910616 m!7625342))

(assert (=> b!6909984 d!2163327))

(declare-fun d!2163329 () Bool)

(assert (=> d!2163329 (= (Exists!3895 lambda!392637) (choose!51468 lambda!392637))))

(declare-fun bs!1844716 () Bool)

(assert (= bs!1844716 d!2163329))

(declare-fun m!7625354 () Bool)

(assert (=> bs!1844716 m!7625354))

(assert (=> b!6909984 d!2163329))

(declare-fun bs!1844717 () Bool)

(declare-fun d!2163331 () Bool)

(assert (= bs!1844717 (and d!2163331 b!6910551)))

(declare-fun lambda!392687 () Int)

(assert (=> bs!1844717 (not (= lambda!392687 lambda!392682))))

(declare-fun bs!1844718 () Bool)

(assert (= bs!1844718 (and d!2163331 b!6909987)))

(assert (=> bs!1844718 (= (and (= s!14361 (_2!37057 lt!2468388)) (= r1!6342 r2!6280) (= lt!2468398 r3!135)) (= lambda!392687 lambda!392639))))

(declare-fun bs!1844719 () Bool)

(assert (= bs!1844719 (and d!2163331 b!6910234)))

(assert (=> bs!1844719 (not (= lambda!392687 lambda!392660))))

(declare-fun bs!1844720 () Bool)

(assert (= bs!1844720 (and d!2163331 d!2163303)))

(assert (=> bs!1844720 (= (and (= s!14361 (_2!37057 lt!2468388)) (= r1!6342 r2!6280) (= lt!2468398 r3!135)) (= lambda!392687 lambda!392681))))

(declare-fun bs!1844721 () Bool)

(assert (= bs!1844721 (and d!2163331 b!6910594)))

(assert (=> bs!1844721 (not (= lambda!392687 lambda!392684))))

(declare-fun bs!1844722 () Bool)

(assert (= bs!1844722 (and d!2163331 d!2163295)))

(assert (=> bs!1844722 (not (= lambda!392687 lambda!392678))))

(assert (=> bs!1844718 (not (= lambda!392687 lambda!392640))))

(declare-fun bs!1844723 () Bool)

(assert (= bs!1844723 (and d!2163331 b!6909984)))

(assert (=> bs!1844723 (not (= lambda!392687 lambda!392638))))

(assert (=> bs!1844722 (= (and (= s!14361 (_2!37057 lt!2468388)) (= r1!6342 r2!6280) (= lt!2468398 r3!135)) (= lambda!392687 lambda!392677))))

(declare-fun bs!1844724 () Bool)

(assert (= bs!1844724 (and d!2163331 b!6910313)))

(assert (=> bs!1844724 (not (= lambda!392687 lambda!392668))))

(declare-fun bs!1844725 () Bool)

(assert (= bs!1844725 (and d!2163331 b!6910310)))

(assert (=> bs!1844725 (not (= lambda!392687 lambda!392666))))

(assert (=> bs!1844723 (= lambda!392687 lambda!392637)))

(declare-fun bs!1844726 () Bool)

(assert (= bs!1844726 (and d!2163331 d!2163323)))

(assert (=> bs!1844726 (= lambda!392687 lambda!392686)))

(declare-fun bs!1844727 () Bool)

(assert (= bs!1844727 (and d!2163331 b!6910231)))

(assert (=> bs!1844727 (not (= lambda!392687 lambda!392658))))

(declare-fun bs!1844728 () Bool)

(assert (= bs!1844728 (and d!2163331 b!6910554)))

(assert (=> bs!1844728 (not (= lambda!392687 lambda!392683))))

(declare-fun bs!1844729 () Bool)

(assert (= bs!1844729 (and d!2163331 b!6910597)))

(assert (=> bs!1844729 (not (= lambda!392687 lambda!392685))))

(assert (=> d!2163331 true))

(assert (=> d!2163331 true))

(assert (=> d!2163331 true))

(declare-fun lambda!392688 () Int)

(assert (=> bs!1844717 (not (= lambda!392688 lambda!392682))))

(assert (=> bs!1844718 (not (= lambda!392688 lambda!392639))))

(assert (=> bs!1844719 (= (and (= r1!6342 (regOne!34286 lt!2468396)) (= lt!2468398 (regTwo!34286 lt!2468396))) (= lambda!392688 lambda!392660))))

(assert (=> bs!1844720 (not (= lambda!392688 lambda!392681))))

(assert (=> bs!1844721 (not (= lambda!392688 lambda!392684))))

(assert (=> bs!1844722 (= (and (= s!14361 (_2!37057 lt!2468388)) (= r1!6342 r2!6280) (= lt!2468398 r3!135)) (= lambda!392688 lambda!392678))))

(assert (=> bs!1844718 (= (and (= s!14361 (_2!37057 lt!2468388)) (= r1!6342 r2!6280) (= lt!2468398 r3!135)) (= lambda!392688 lambda!392640))))

(assert (=> bs!1844723 (= lambda!392688 lambda!392638)))

(assert (=> bs!1844722 (not (= lambda!392688 lambda!392677))))

(assert (=> bs!1844724 (= (and (= r1!6342 (regOne!34286 lt!2468387)) (= lt!2468398 (regTwo!34286 lt!2468387))) (= lambda!392688 lambda!392668))))

(assert (=> bs!1844725 (not (= lambda!392688 lambda!392666))))

(declare-fun bs!1844730 () Bool)

(assert (= bs!1844730 d!2163331))

(assert (=> bs!1844730 (not (= lambda!392688 lambda!392687))))

(assert (=> bs!1844723 (not (= lambda!392688 lambda!392637))))

(assert (=> bs!1844726 (not (= lambda!392688 lambda!392686))))

(assert (=> bs!1844727 (not (= lambda!392688 lambda!392658))))

(assert (=> bs!1844728 (= (and (= s!14361 (_2!37057 lt!2468388)) (= r1!6342 (regOne!34286 lt!2468398)) (= lt!2468398 (regTwo!34286 lt!2468398))) (= lambda!392688 lambda!392683))))

(assert (=> bs!1844729 (= (and (= s!14361 (_1!37057 lt!2468388)) (= r1!6342 (regOne!34286 r1!6342)) (= lt!2468398 (regTwo!34286 r1!6342))) (= lambda!392688 lambda!392685))))

(assert (=> d!2163331 true))

(assert (=> d!2163331 true))

(assert (=> d!2163331 true))

(assert (=> d!2163331 (= (Exists!3895 lambda!392687) (Exists!3895 lambda!392688))))

(declare-fun lt!2468465 () Unit!160510)

(assert (=> d!2163331 (= lt!2468465 (choose!51467 r1!6342 lt!2468398 s!14361))))

(assert (=> d!2163331 (validRegex!8595 r1!6342)))

(assert (=> d!2163331 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2368 r1!6342 lt!2468398 s!14361) lt!2468465)))

(declare-fun m!7625356 () Bool)

(assert (=> bs!1844730 m!7625356))

(declare-fun m!7625358 () Bool)

(assert (=> bs!1844730 m!7625358))

(declare-fun m!7625360 () Bool)

(assert (=> bs!1844730 m!7625360))

(assert (=> bs!1844730 m!7624908))

(assert (=> b!6909984 d!2163331))

(declare-fun d!2163333 () Bool)

(assert (=> d!2163333 (= (Exists!3895 lambda!392638) (choose!51468 lambda!392638))))

(declare-fun bs!1844731 () Bool)

(assert (= bs!1844731 d!2163333))

(declare-fun m!7625362 () Bool)

(assert (=> bs!1844731 m!7625362))

(assert (=> b!6909984 d!2163333))

(declare-fun b!6910631 () Bool)

(declare-fun e!4160703 () Bool)

(declare-fun tp!1902957 () Bool)

(assert (=> b!6910631 (= e!4160703 tp!1902957)))

(declare-fun b!6910632 () Bool)

(declare-fun tp!1902958 () Bool)

(declare-fun tp!1902956 () Bool)

(assert (=> b!6910632 (= e!4160703 (and tp!1902958 tp!1902956))))

(declare-fun b!6910629 () Bool)

(assert (=> b!6910629 (= e!4160703 tp_is_empty!42999)))

(assert (=> b!6910001 (= tp!1902850 e!4160703)))

(declare-fun b!6910630 () Bool)

(declare-fun tp!1902954 () Bool)

(declare-fun tp!1902955 () Bool)

(assert (=> b!6910630 (= e!4160703 (and tp!1902954 tp!1902955))))

(assert (= (and b!6910001 ((_ is ElementMatch!16887) (regOne!34286 r1!6342))) b!6910629))

(assert (= (and b!6910001 ((_ is Concat!25732) (regOne!34286 r1!6342))) b!6910630))

(assert (= (and b!6910001 ((_ is Star!16887) (regOne!34286 r1!6342))) b!6910631))

(assert (= (and b!6910001 ((_ is Union!16887) (regOne!34286 r1!6342))) b!6910632))

(declare-fun b!6910635 () Bool)

(declare-fun e!4160704 () Bool)

(declare-fun tp!1902962 () Bool)

(assert (=> b!6910635 (= e!4160704 tp!1902962)))

(declare-fun b!6910636 () Bool)

(declare-fun tp!1902963 () Bool)

(declare-fun tp!1902961 () Bool)

(assert (=> b!6910636 (= e!4160704 (and tp!1902963 tp!1902961))))

(declare-fun b!6910633 () Bool)

(assert (=> b!6910633 (= e!4160704 tp_is_empty!42999)))

(assert (=> b!6910001 (= tp!1902855 e!4160704)))

(declare-fun b!6910634 () Bool)

(declare-fun tp!1902959 () Bool)

(declare-fun tp!1902960 () Bool)

(assert (=> b!6910634 (= e!4160704 (and tp!1902959 tp!1902960))))

(assert (= (and b!6910001 ((_ is ElementMatch!16887) (regTwo!34286 r1!6342))) b!6910633))

(assert (= (and b!6910001 ((_ is Concat!25732) (regTwo!34286 r1!6342))) b!6910634))

(assert (= (and b!6910001 ((_ is Star!16887) (regTwo!34286 r1!6342))) b!6910635))

(assert (= (and b!6910001 ((_ is Union!16887) (regTwo!34286 r1!6342))) b!6910636))

(declare-fun b!6910639 () Bool)

(declare-fun e!4160705 () Bool)

(declare-fun tp!1902967 () Bool)

(assert (=> b!6910639 (= e!4160705 tp!1902967)))

(declare-fun b!6910640 () Bool)

(declare-fun tp!1902968 () Bool)

(declare-fun tp!1902966 () Bool)

(assert (=> b!6910640 (= e!4160705 (and tp!1902968 tp!1902966))))

(declare-fun b!6910637 () Bool)

(assert (=> b!6910637 (= e!4160705 tp_is_empty!42999)))

(assert (=> b!6909996 (= tp!1902853 e!4160705)))

(declare-fun b!6910638 () Bool)

(declare-fun tp!1902964 () Bool)

(declare-fun tp!1902965 () Bool)

(assert (=> b!6910638 (= e!4160705 (and tp!1902964 tp!1902965))))

(assert (= (and b!6909996 ((_ is ElementMatch!16887) (reg!17216 r2!6280))) b!6910637))

(assert (= (and b!6909996 ((_ is Concat!25732) (reg!17216 r2!6280))) b!6910638))

(assert (= (and b!6909996 ((_ is Star!16887) (reg!17216 r2!6280))) b!6910639))

(assert (= (and b!6909996 ((_ is Union!16887) (reg!17216 r2!6280))) b!6910640))

(declare-fun b!6910643 () Bool)

(declare-fun e!4160706 () Bool)

(declare-fun tp!1902972 () Bool)

(assert (=> b!6910643 (= e!4160706 tp!1902972)))

(declare-fun b!6910644 () Bool)

(declare-fun tp!1902973 () Bool)

(declare-fun tp!1902971 () Bool)

(assert (=> b!6910644 (= e!4160706 (and tp!1902973 tp!1902971))))

(declare-fun b!6910641 () Bool)

(assert (=> b!6910641 (= e!4160706 tp_is_empty!42999)))

(assert (=> b!6909991 (= tp!1902843 e!4160706)))

(declare-fun b!6910642 () Bool)

(declare-fun tp!1902969 () Bool)

(declare-fun tp!1902970 () Bool)

(assert (=> b!6910642 (= e!4160706 (and tp!1902969 tp!1902970))))

(assert (= (and b!6909991 ((_ is ElementMatch!16887) (regOne!34287 r1!6342))) b!6910641))

(assert (= (and b!6909991 ((_ is Concat!25732) (regOne!34287 r1!6342))) b!6910642))

(assert (= (and b!6909991 ((_ is Star!16887) (regOne!34287 r1!6342))) b!6910643))

(assert (= (and b!6909991 ((_ is Union!16887) (regOne!34287 r1!6342))) b!6910644))

(declare-fun b!6910647 () Bool)

(declare-fun e!4160707 () Bool)

(declare-fun tp!1902977 () Bool)

(assert (=> b!6910647 (= e!4160707 tp!1902977)))

(declare-fun b!6910648 () Bool)

(declare-fun tp!1902978 () Bool)

(declare-fun tp!1902976 () Bool)

(assert (=> b!6910648 (= e!4160707 (and tp!1902978 tp!1902976))))

(declare-fun b!6910645 () Bool)

(assert (=> b!6910645 (= e!4160707 tp_is_empty!42999)))

(assert (=> b!6909991 (= tp!1902851 e!4160707)))

(declare-fun b!6910646 () Bool)

(declare-fun tp!1902974 () Bool)

(declare-fun tp!1902975 () Bool)

(assert (=> b!6910646 (= e!4160707 (and tp!1902974 tp!1902975))))

(assert (= (and b!6909991 ((_ is ElementMatch!16887) (regTwo!34287 r1!6342))) b!6910645))

(assert (= (and b!6909991 ((_ is Concat!25732) (regTwo!34287 r1!6342))) b!6910646))

(assert (= (and b!6909991 ((_ is Star!16887) (regTwo!34287 r1!6342))) b!6910647))

(assert (= (and b!6909991 ((_ is Union!16887) (regTwo!34287 r1!6342))) b!6910648))

(declare-fun b!6910651 () Bool)

(declare-fun e!4160708 () Bool)

(declare-fun tp!1902982 () Bool)

(assert (=> b!6910651 (= e!4160708 tp!1902982)))

(declare-fun b!6910652 () Bool)

(declare-fun tp!1902983 () Bool)

(declare-fun tp!1902981 () Bool)

(assert (=> b!6910652 (= e!4160708 (and tp!1902983 tp!1902981))))

(declare-fun b!6910649 () Bool)

(assert (=> b!6910649 (= e!4160708 tp_is_empty!42999)))

(assert (=> b!6910002 (= tp!1902846 e!4160708)))

(declare-fun b!6910650 () Bool)

(declare-fun tp!1902979 () Bool)

(declare-fun tp!1902980 () Bool)

(assert (=> b!6910650 (= e!4160708 (and tp!1902979 tp!1902980))))

(assert (= (and b!6910002 ((_ is ElementMatch!16887) (regOne!34286 r3!135))) b!6910649))

(assert (= (and b!6910002 ((_ is Concat!25732) (regOne!34286 r3!135))) b!6910650))

(assert (= (and b!6910002 ((_ is Star!16887) (regOne!34286 r3!135))) b!6910651))

(assert (= (and b!6910002 ((_ is Union!16887) (regOne!34286 r3!135))) b!6910652))

(declare-fun b!6910655 () Bool)

(declare-fun e!4160709 () Bool)

(declare-fun tp!1902987 () Bool)

(assert (=> b!6910655 (= e!4160709 tp!1902987)))

(declare-fun b!6910656 () Bool)

(declare-fun tp!1902988 () Bool)

(declare-fun tp!1902986 () Bool)

(assert (=> b!6910656 (= e!4160709 (and tp!1902988 tp!1902986))))

(declare-fun b!6910653 () Bool)

(assert (=> b!6910653 (= e!4160709 tp_is_empty!42999)))

(assert (=> b!6910002 (= tp!1902844 e!4160709)))

(declare-fun b!6910654 () Bool)

(declare-fun tp!1902984 () Bool)

(declare-fun tp!1902985 () Bool)

(assert (=> b!6910654 (= e!4160709 (and tp!1902984 tp!1902985))))

(assert (= (and b!6910002 ((_ is ElementMatch!16887) (regTwo!34286 r3!135))) b!6910653))

(assert (= (and b!6910002 ((_ is Concat!25732) (regTwo!34286 r3!135))) b!6910654))

(assert (= (and b!6910002 ((_ is Star!16887) (regTwo!34286 r3!135))) b!6910655))

(assert (= (and b!6910002 ((_ is Union!16887) (regTwo!34286 r3!135))) b!6910656))

(declare-fun b!6910661 () Bool)

(declare-fun e!4160712 () Bool)

(declare-fun tp!1902991 () Bool)

(assert (=> b!6910661 (= e!4160712 (and tp_is_empty!42999 tp!1902991))))

(assert (=> b!6909997 (= tp!1902842 e!4160712)))

(assert (= (and b!6909997 ((_ is Cons!66520) (t!380387 s!14361))) b!6910661))

(declare-fun b!6910664 () Bool)

(declare-fun e!4160713 () Bool)

(declare-fun tp!1902995 () Bool)

(assert (=> b!6910664 (= e!4160713 tp!1902995)))

(declare-fun b!6910665 () Bool)

(declare-fun tp!1902996 () Bool)

(declare-fun tp!1902994 () Bool)

(assert (=> b!6910665 (= e!4160713 (and tp!1902996 tp!1902994))))

(declare-fun b!6910662 () Bool)

(assert (=> b!6910662 (= e!4160713 tp_is_empty!42999)))

(assert (=> b!6910003 (= tp!1902854 e!4160713)))

(declare-fun b!6910663 () Bool)

(declare-fun tp!1902992 () Bool)

(declare-fun tp!1902993 () Bool)

(assert (=> b!6910663 (= e!4160713 (and tp!1902992 tp!1902993))))

(assert (= (and b!6910003 ((_ is ElementMatch!16887) (reg!17216 r1!6342))) b!6910662))

(assert (= (and b!6910003 ((_ is Concat!25732) (reg!17216 r1!6342))) b!6910663))

(assert (= (and b!6910003 ((_ is Star!16887) (reg!17216 r1!6342))) b!6910664))

(assert (= (and b!6910003 ((_ is Union!16887) (reg!17216 r1!6342))) b!6910665))

(declare-fun b!6910668 () Bool)

(declare-fun e!4160714 () Bool)

(declare-fun tp!1903000 () Bool)

(assert (=> b!6910668 (= e!4160714 tp!1903000)))

(declare-fun b!6910669 () Bool)

(declare-fun tp!1903001 () Bool)

(declare-fun tp!1902999 () Bool)

(assert (=> b!6910669 (= e!4160714 (and tp!1903001 tp!1902999))))

(declare-fun b!6910666 () Bool)

(assert (=> b!6910666 (= e!4160714 tp_is_empty!42999)))

(assert (=> b!6909999 (= tp!1902840 e!4160714)))

(declare-fun b!6910667 () Bool)

(declare-fun tp!1902997 () Bool)

(declare-fun tp!1902998 () Bool)

(assert (=> b!6910667 (= e!4160714 (and tp!1902997 tp!1902998))))

(assert (= (and b!6909999 ((_ is ElementMatch!16887) (reg!17216 r3!135))) b!6910666))

(assert (= (and b!6909999 ((_ is Concat!25732) (reg!17216 r3!135))) b!6910667))

(assert (= (and b!6909999 ((_ is Star!16887) (reg!17216 r3!135))) b!6910668))

(assert (= (and b!6909999 ((_ is Union!16887) (reg!17216 r3!135))) b!6910669))

(declare-fun b!6910672 () Bool)

(declare-fun e!4160715 () Bool)

(declare-fun tp!1903005 () Bool)

(assert (=> b!6910672 (= e!4160715 tp!1903005)))

(declare-fun b!6910673 () Bool)

(declare-fun tp!1903006 () Bool)

(declare-fun tp!1903004 () Bool)

(assert (=> b!6910673 (= e!4160715 (and tp!1903006 tp!1903004))))

(declare-fun b!6910670 () Bool)

(assert (=> b!6910670 (= e!4160715 tp_is_empty!42999)))

(assert (=> b!6909994 (= tp!1902845 e!4160715)))

(declare-fun b!6910671 () Bool)

(declare-fun tp!1903002 () Bool)

(declare-fun tp!1903003 () Bool)

(assert (=> b!6910671 (= e!4160715 (and tp!1903002 tp!1903003))))

(assert (= (and b!6909994 ((_ is ElementMatch!16887) (regOne!34287 r3!135))) b!6910670))

(assert (= (and b!6909994 ((_ is Concat!25732) (regOne!34287 r3!135))) b!6910671))

(assert (= (and b!6909994 ((_ is Star!16887) (regOne!34287 r3!135))) b!6910672))

(assert (= (and b!6909994 ((_ is Union!16887) (regOne!34287 r3!135))) b!6910673))

(declare-fun b!6910676 () Bool)

(declare-fun e!4160716 () Bool)

(declare-fun tp!1903010 () Bool)

(assert (=> b!6910676 (= e!4160716 tp!1903010)))

(declare-fun b!6910677 () Bool)

(declare-fun tp!1903011 () Bool)

(declare-fun tp!1903009 () Bool)

(assert (=> b!6910677 (= e!4160716 (and tp!1903011 tp!1903009))))

(declare-fun b!6910674 () Bool)

(assert (=> b!6910674 (= e!4160716 tp_is_empty!42999)))

(assert (=> b!6909994 (= tp!1902847 e!4160716)))

(declare-fun b!6910675 () Bool)

(declare-fun tp!1903007 () Bool)

(declare-fun tp!1903008 () Bool)

(assert (=> b!6910675 (= e!4160716 (and tp!1903007 tp!1903008))))

(assert (= (and b!6909994 ((_ is ElementMatch!16887) (regTwo!34287 r3!135))) b!6910674))

(assert (= (and b!6909994 ((_ is Concat!25732) (regTwo!34287 r3!135))) b!6910675))

(assert (= (and b!6909994 ((_ is Star!16887) (regTwo!34287 r3!135))) b!6910676))

(assert (= (and b!6909994 ((_ is Union!16887) (regTwo!34287 r3!135))) b!6910677))

(declare-fun b!6910680 () Bool)

(declare-fun e!4160717 () Bool)

(declare-fun tp!1903015 () Bool)

(assert (=> b!6910680 (= e!4160717 tp!1903015)))

(declare-fun b!6910681 () Bool)

(declare-fun tp!1903016 () Bool)

(declare-fun tp!1903014 () Bool)

(assert (=> b!6910681 (= e!4160717 (and tp!1903016 tp!1903014))))

(declare-fun b!6910678 () Bool)

(assert (=> b!6910678 (= e!4160717 tp_is_empty!42999)))

(assert (=> b!6909989 (= tp!1902841 e!4160717)))

(declare-fun b!6910679 () Bool)

(declare-fun tp!1903012 () Bool)

(declare-fun tp!1903013 () Bool)

(assert (=> b!6910679 (= e!4160717 (and tp!1903012 tp!1903013))))

(assert (= (and b!6909989 ((_ is ElementMatch!16887) (regOne!34287 r2!6280))) b!6910678))

(assert (= (and b!6909989 ((_ is Concat!25732) (regOne!34287 r2!6280))) b!6910679))

(assert (= (and b!6909989 ((_ is Star!16887) (regOne!34287 r2!6280))) b!6910680))

(assert (= (and b!6909989 ((_ is Union!16887) (regOne!34287 r2!6280))) b!6910681))

(declare-fun b!6910684 () Bool)

(declare-fun e!4160718 () Bool)

(declare-fun tp!1903020 () Bool)

(assert (=> b!6910684 (= e!4160718 tp!1903020)))

(declare-fun b!6910685 () Bool)

(declare-fun tp!1903021 () Bool)

(declare-fun tp!1903019 () Bool)

(assert (=> b!6910685 (= e!4160718 (and tp!1903021 tp!1903019))))

(declare-fun b!6910682 () Bool)

(assert (=> b!6910682 (= e!4160718 tp_is_empty!42999)))

(assert (=> b!6909989 (= tp!1902849 e!4160718)))

(declare-fun b!6910683 () Bool)

(declare-fun tp!1903017 () Bool)

(declare-fun tp!1903018 () Bool)

(assert (=> b!6910683 (= e!4160718 (and tp!1903017 tp!1903018))))

(assert (= (and b!6909989 ((_ is ElementMatch!16887) (regTwo!34287 r2!6280))) b!6910682))

(assert (= (and b!6909989 ((_ is Concat!25732) (regTwo!34287 r2!6280))) b!6910683))

(assert (= (and b!6909989 ((_ is Star!16887) (regTwo!34287 r2!6280))) b!6910684))

(assert (= (and b!6909989 ((_ is Union!16887) (regTwo!34287 r2!6280))) b!6910685))

(declare-fun b!6910688 () Bool)

(declare-fun e!4160719 () Bool)

(declare-fun tp!1903025 () Bool)

(assert (=> b!6910688 (= e!4160719 tp!1903025)))

(declare-fun b!6910689 () Bool)

(declare-fun tp!1903026 () Bool)

(declare-fun tp!1903024 () Bool)

(assert (=> b!6910689 (= e!4160719 (and tp!1903026 tp!1903024))))

(declare-fun b!6910686 () Bool)

(assert (=> b!6910686 (= e!4160719 tp_is_empty!42999)))

(assert (=> b!6910000 (= tp!1902848 e!4160719)))

(declare-fun b!6910687 () Bool)

(declare-fun tp!1903022 () Bool)

(declare-fun tp!1903023 () Bool)

(assert (=> b!6910687 (= e!4160719 (and tp!1903022 tp!1903023))))

(assert (= (and b!6910000 ((_ is ElementMatch!16887) (regOne!34286 r2!6280))) b!6910686))

(assert (= (and b!6910000 ((_ is Concat!25732) (regOne!34286 r2!6280))) b!6910687))

(assert (= (and b!6910000 ((_ is Star!16887) (regOne!34286 r2!6280))) b!6910688))

(assert (= (and b!6910000 ((_ is Union!16887) (regOne!34286 r2!6280))) b!6910689))

(declare-fun b!6910692 () Bool)

(declare-fun e!4160720 () Bool)

(declare-fun tp!1903030 () Bool)

(assert (=> b!6910692 (= e!4160720 tp!1903030)))

(declare-fun b!6910693 () Bool)

(declare-fun tp!1903031 () Bool)

(declare-fun tp!1903029 () Bool)

(assert (=> b!6910693 (= e!4160720 (and tp!1903031 tp!1903029))))

(declare-fun b!6910690 () Bool)

(assert (=> b!6910690 (= e!4160720 tp_is_empty!42999)))

(assert (=> b!6910000 (= tp!1902852 e!4160720)))

(declare-fun b!6910691 () Bool)

(declare-fun tp!1903027 () Bool)

(declare-fun tp!1903028 () Bool)

(assert (=> b!6910691 (= e!4160720 (and tp!1903027 tp!1903028))))

(assert (= (and b!6910000 ((_ is ElementMatch!16887) (regTwo!34286 r2!6280))) b!6910690))

(assert (= (and b!6910000 ((_ is Concat!25732) (regTwo!34286 r2!6280))) b!6910691))

(assert (= (and b!6910000 ((_ is Star!16887) (regTwo!34286 r2!6280))) b!6910692))

(assert (= (and b!6910000 ((_ is Union!16887) (regTwo!34286 r2!6280))) b!6910693))

(check-sat (not b!6910638) (not b!6910663) (not b!6910506) (not b!6910640) (not bm!628270) (not d!2163309) (not b!6910616) (not b!6910432) (not d!2163293) (not bm!628298) (not bm!628301) (not b!6910302) (not b!6910588) (not b!6910676) (not d!2163329) (not bm!628278) (not b!6910681) (not d!2163323) (not b!6910677) (not d!2163303) (not b!6910687) (not b!6910507) (not b!6910654) (not d!2163297) (not b!6910504) (not b!6910592) (not b!6910581) (not b!6910538) (not b!6910307) (not b!6910586) (not b!6910569) (not bm!628271) (not bm!628302) (not b!6910303) (not bm!628312) (not b!6910688) (not d!2163301) (not b!6910304) (not b!6910319) (not d!2163321) (not b!6910509) (not b!6910570) (not b!6910646) (not d!2163333) (not b!6910630) (not b!6910541) (not b!6910568) (not b!6910671) (not b!6910691) (not b!6910664) (not bm!628299) (not d!2163315) (not bm!628280) (not d!2163331) (not b!6910642) (not b!6910573) (not bm!628309) (not b!6910644) (not b!6910635) (not b!6910239) (not b!6910648) (not d!2163295) (not b!6910587) (not b!6910650) (not b!6910683) (not b!6910655) (not b!6910636) (not b!6910545) (not b!6910634) (not b!6910665) (not bm!628304) (not b!6910602) (not b!6910647) (not b!6910296) (not b!6910612) (not b!6910689) (not b!6910145) (not bm!628279) (not d!2163255) (not b!6910661) (not b!6910631) (not b!6910675) (not bm!628306) (not b!6910613) (not b!6910603) (not d!2163219) (not b!6910571) (not b!6910141) (not b!6910614) (not bm!628303) (not bm!628259) (not b!6910498) (not d!2163311) (not b!6910639) (not d!2163327) (not d!2163243) (not b!6910611) (not b!6910562) (not b!6910591) (not b!6910240) (not b!6910669) (not b!6910656) (not b!6910672) (not b!6910651) (not b!6910632) (not b!6910679) (not b!6910668) (not bm!628310) tp_is_empty!42999 (not bm!628311) (not d!2163277) (not b!6910143) (not b!6910680) (not b!6910560) (not b!6910540) (not d!2163307) (not b!6910685) (not b!6910673) (not b!6910140) (not b!6910134) (not b!6910544) (not bm!628305) (not b!6910684) (not b!6910505) (not b!6910318) (not b!6910693) (not b!6910692) (not b!6910539) (not b!6910559) (not b!6910474) (not b!6910667) (not b!6910142) (not d!2163291) (not bm!628308) (not d!2163317) (not b!6910605) (not b!6910643) (not b!6910305) (not b!6910652) (not b!6910585))
(check-sat)
