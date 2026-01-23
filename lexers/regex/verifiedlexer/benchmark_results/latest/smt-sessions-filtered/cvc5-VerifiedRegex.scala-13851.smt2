; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736278 () Bool)

(assert start!736278)

(declare-fun b!7667902 () Bool)

(assert (=> b!7667902 true))

(assert (=> b!7667902 true))

(declare-fun b!7667898 () Bool)

(declare-fun res!3066968 () Bool)

(declare-fun e!4554180 () Bool)

(assert (=> b!7667898 (=> (not res!3066968) (not e!4554180))))

(declare-datatypes ((C!41318 0))(
  ( (C!41319 (val!31099 Int)) )
))
(declare-datatypes ((List!73347 0))(
  ( (Nil!73223) (Cons!73223 (h!79671 C!41318) (t!388082 List!73347)) )
))
(declare-fun s!9605 () List!73347)

(declare-fun isEmpty!41857 (List!73347) Bool)

(assert (=> b!7667898 (= res!3066968 (not (isEmpty!41857 s!9605)))))

(declare-fun b!7667900 () Bool)

(declare-fun e!4554182 () Bool)

(declare-fun tp_is_empty!51347 () Bool)

(assert (=> b!7667900 (= e!4554182 tp_is_empty!51347)))

(declare-fun b!7667901 () Bool)

(declare-fun e!4554178 () Bool)

(declare-fun e!4554179 () Bool)

(assert (=> b!7667901 (= e!4554178 e!4554179)))

(declare-fun res!3066969 () Bool)

(assert (=> b!7667901 (=> res!3066969 e!4554179)))

(declare-datatypes ((Regex!20496 0))(
  ( (ElementMatch!20496 (c!1412197 C!41318)) (Concat!29341 (regOne!41504 Regex!20496) (regTwo!41504 Regex!20496)) (EmptyExpr!20496) (Star!20496 (reg!20825 Regex!20496)) (EmptyLang!20496) (Union!20496 (regOne!41505 Regex!20496) (regTwo!41505 Regex!20496)) )
))
(declare-fun r!14126 () Regex!20496)

(declare-fun matchR!9992 (Regex!20496 List!73347) Bool)

(assert (=> b!7667901 (= res!3066969 (matchR!9992 r!14126 s!9605))))

(declare-datatypes ((tuple2!69454 0))(
  ( (tuple2!69455 (_1!38030 List!73347) (_2!38030 List!73347)) )
))
(declare-fun lt!2662329 () tuple2!69454)

(declare-fun matchRSpec!4597 (Regex!20496 List!73347) Bool)

(assert (=> b!7667901 (= (matchR!9992 r!14126 (_2!38030 lt!2662329)) (matchRSpec!4597 r!14126 (_2!38030 lt!2662329)))))

(declare-datatypes ((Unit!168004 0))(
  ( (Unit!168005) )
))
(declare-fun lt!2662328 () Unit!168004)

(declare-fun mainMatchTheorem!4575 (Regex!20496 List!73347) Unit!168004)

(assert (=> b!7667901 (= lt!2662328 (mainMatchTheorem!4575 r!14126 (_2!38030 lt!2662329)))))

(declare-fun lt!2662326 () Bool)

(assert (=> b!7667901 (= lt!2662326 (matchRSpec!4597 (reg!20825 r!14126) (_1!38030 lt!2662329)))))

(assert (=> b!7667901 (= lt!2662326 (matchR!9992 (reg!20825 r!14126) (_1!38030 lt!2662329)))))

(declare-fun lt!2662327 () Unit!168004)

(assert (=> b!7667901 (= lt!2662327 (mainMatchTheorem!4575 (reg!20825 r!14126) (_1!38030 lt!2662329)))))

(declare-datatypes ((Option!17521 0))(
  ( (None!17520) (Some!17520 (v!54655 tuple2!69454)) )
))
(declare-fun lt!2662330 () Option!17521)

(declare-fun get!25956 (Option!17521) tuple2!69454)

(assert (=> b!7667901 (= lt!2662329 (get!25956 lt!2662330))))

(assert (=> b!7667902 (= e!4554180 (not e!4554178))))

(declare-fun res!3066972 () Bool)

(assert (=> b!7667902 (=> res!3066972 e!4554178)))

(declare-fun lt!2662325 () Bool)

(assert (=> b!7667902 (= res!3066972 (not lt!2662325))))

(declare-fun lambda!469970 () Int)

(declare-fun Exists!4621 (Int) Bool)

(assert (=> b!7667902 (= lt!2662325 (Exists!4621 lambda!469970))))

(declare-fun isDefined!14137 (Option!17521) Bool)

(assert (=> b!7667902 (= lt!2662325 (isDefined!14137 lt!2662330))))

(declare-fun findConcatSeparation!3551 (Regex!20496 Regex!20496 List!73347 List!73347 List!73347) Option!17521)

(assert (=> b!7667902 (= lt!2662330 (findConcatSeparation!3551 (reg!20825 r!14126) r!14126 Nil!73223 s!9605 s!9605))))

(declare-fun lt!2662332 () Unit!168004)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3309 (Regex!20496 Regex!20496 List!73347) Unit!168004)

(assert (=> b!7667902 (= lt!2662332 (lemmaFindConcatSeparationEquivalentToExists!3309 (reg!20825 r!14126) r!14126 s!9605))))

(declare-fun b!7667903 () Bool)

(declare-fun res!3066971 () Bool)

(assert (=> b!7667903 (=> (not res!3066971) (not e!4554180))))

(assert (=> b!7667903 (= res!3066971 (and (not (is-EmptyExpr!20496 r!14126)) (not (is-EmptyLang!20496 r!14126)) (not (is-ElementMatch!20496 r!14126)) (not (is-Union!20496 r!14126)) (is-Star!20496 r!14126)))))

(declare-fun b!7667904 () Bool)

(declare-fun e!4554181 () Bool)

(declare-fun tp!2243867 () Bool)

(assert (=> b!7667904 (= e!4554181 (and tp_is_empty!51347 tp!2243867))))

(declare-fun b!7667905 () Bool)

(declare-fun e!4554183 () Bool)

(assert (=> b!7667905 (= e!4554179 e!4554183)))

(declare-fun res!3066970 () Bool)

(assert (=> b!7667905 (=> res!3066970 e!4554183)))

(declare-fun validRegex!10914 (Regex!20496) Bool)

(assert (=> b!7667905 (= res!3066970 (not (validRegex!10914 r!14126)))))

(declare-fun ++!17718 (List!73347 List!73347) List!73347)

(assert (=> b!7667905 (matchR!9992 (Concat!29341 (reg!20825 r!14126) r!14126) (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329)))))

(declare-fun lt!2662331 () Unit!168004)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!183 (Regex!20496 Regex!20496 List!73347 List!73347 List!73347) Unit!168004)

(assert (=> b!7667905 (= lt!2662331 (lemmaFindSeparationIsDefinedThenConcatMatches!183 (reg!20825 r!14126) r!14126 (_1!38030 lt!2662329) (_2!38030 lt!2662329) s!9605))))

(declare-fun b!7667906 () Bool)

(assert (=> b!7667906 (= e!4554183 lt!2662326)))

(declare-fun b!7667899 () Bool)

(declare-fun tp!2243865 () Bool)

(declare-fun tp!2243864 () Bool)

(assert (=> b!7667899 (= e!4554182 (and tp!2243865 tp!2243864))))

(declare-fun res!3066967 () Bool)

(assert (=> start!736278 (=> (not res!3066967) (not e!4554180))))

(assert (=> start!736278 (= res!3066967 (validRegex!10914 r!14126))))

(assert (=> start!736278 e!4554180))

(assert (=> start!736278 e!4554182))

(assert (=> start!736278 e!4554181))

(declare-fun b!7667907 () Bool)

(declare-fun tp!2243863 () Bool)

(declare-fun tp!2243862 () Bool)

(assert (=> b!7667907 (= e!4554182 (and tp!2243863 tp!2243862))))

(declare-fun b!7667908 () Bool)

(declare-fun tp!2243866 () Bool)

(assert (=> b!7667908 (= e!4554182 tp!2243866)))

(assert (= (and start!736278 res!3066967) b!7667903))

(assert (= (and b!7667903 res!3066971) b!7667898))

(assert (= (and b!7667898 res!3066968) b!7667902))

(assert (= (and b!7667902 (not res!3066972)) b!7667901))

(assert (= (and b!7667901 (not res!3066969)) b!7667905))

(assert (= (and b!7667905 (not res!3066970)) b!7667906))

(assert (= (and start!736278 (is-ElementMatch!20496 r!14126)) b!7667900))

(assert (= (and start!736278 (is-Concat!29341 r!14126)) b!7667907))

(assert (= (and start!736278 (is-Star!20496 r!14126)) b!7667908))

(assert (= (and start!736278 (is-Union!20496 r!14126)) b!7667899))

(assert (= (and start!736278 (is-Cons!73223 s!9605)) b!7667904))

(declare-fun m!8173058 () Bool)

(assert (=> b!7667905 m!8173058))

(declare-fun m!8173060 () Bool)

(assert (=> b!7667905 m!8173060))

(assert (=> b!7667905 m!8173060))

(declare-fun m!8173062 () Bool)

(assert (=> b!7667905 m!8173062))

(declare-fun m!8173064 () Bool)

(assert (=> b!7667905 m!8173064))

(declare-fun m!8173066 () Bool)

(assert (=> b!7667898 m!8173066))

(assert (=> start!736278 m!8173058))

(declare-fun m!8173068 () Bool)

(assert (=> b!7667902 m!8173068))

(declare-fun m!8173070 () Bool)

(assert (=> b!7667902 m!8173070))

(declare-fun m!8173072 () Bool)

(assert (=> b!7667902 m!8173072))

(declare-fun m!8173074 () Bool)

(assert (=> b!7667902 m!8173074))

(declare-fun m!8173076 () Bool)

(assert (=> b!7667901 m!8173076))

(declare-fun m!8173078 () Bool)

(assert (=> b!7667901 m!8173078))

(declare-fun m!8173080 () Bool)

(assert (=> b!7667901 m!8173080))

(declare-fun m!8173082 () Bool)

(assert (=> b!7667901 m!8173082))

(declare-fun m!8173084 () Bool)

(assert (=> b!7667901 m!8173084))

(declare-fun m!8173086 () Bool)

(assert (=> b!7667901 m!8173086))

(declare-fun m!8173088 () Bool)

(assert (=> b!7667901 m!8173088))

(declare-fun m!8173090 () Bool)

(assert (=> b!7667901 m!8173090))

(push 1)

(assert tp_is_empty!51347)

(assert (not b!7667907))

(assert (not start!736278))

(assert (not b!7667898))

(assert (not b!7667904))

(assert (not b!7667899))

(assert (not b!7667905))

(assert (not b!7667902))

(assert (not b!7667908))

(assert (not b!7667901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7667983 () Bool)

(declare-fun e!4554218 () Bool)

(declare-fun e!4554220 () Bool)

(assert (=> b!7667983 (= e!4554218 e!4554220)))

(declare-fun c!1412207 () Bool)

(assert (=> b!7667983 (= c!1412207 (is-EmptyLang!20496 r!14126))))

(declare-fun b!7667984 () Bool)

(declare-fun res!3067016 () Bool)

(declare-fun e!4554221 () Bool)

(assert (=> b!7667984 (=> (not res!3067016) (not e!4554221))))

(declare-fun tail!15293 (List!73347) List!73347)

(assert (=> b!7667984 (= res!3067016 (isEmpty!41857 (tail!15293 s!9605)))))

(declare-fun b!7667985 () Bool)

(declare-fun e!4554222 () Bool)

(declare-fun e!4554224 () Bool)

(assert (=> b!7667985 (= e!4554222 e!4554224)))

(declare-fun res!3067014 () Bool)

(assert (=> b!7667985 (=> res!3067014 e!4554224)))

(declare-fun call!705105 () Bool)

(assert (=> b!7667985 (= res!3067014 call!705105)))

(declare-fun b!7667986 () Bool)

(declare-fun res!3067017 () Bool)

(assert (=> b!7667986 (=> (not res!3067017) (not e!4554221))))

(assert (=> b!7667986 (= res!3067017 (not call!705105))))

(declare-fun b!7667987 () Bool)

(declare-fun e!4554223 () Bool)

(declare-fun nullable!8987 (Regex!20496) Bool)

(assert (=> b!7667987 (= e!4554223 (nullable!8987 r!14126))))

(declare-fun b!7667988 () Bool)

(declare-fun res!3067011 () Bool)

(declare-fun e!4554219 () Bool)

(assert (=> b!7667988 (=> res!3067011 e!4554219)))

(assert (=> b!7667988 (= res!3067011 (not (is-ElementMatch!20496 r!14126)))))

(assert (=> b!7667988 (= e!4554220 e!4554219)))

(declare-fun b!7667989 () Bool)

(declare-fun res!3067015 () Bool)

(assert (=> b!7667989 (=> res!3067015 e!4554224)))

(assert (=> b!7667989 (= res!3067015 (not (isEmpty!41857 (tail!15293 s!9605))))))

(declare-fun b!7667990 () Bool)

(declare-fun lt!2662359 () Bool)

(assert (=> b!7667990 (= e!4554220 (not lt!2662359))))

(declare-fun b!7667982 () Bool)

(declare-fun head!15753 (List!73347) C!41318)

(assert (=> b!7667982 (= e!4554221 (= (head!15753 s!9605) (c!1412197 r!14126)))))

(declare-fun d!2328388 () Bool)

(assert (=> d!2328388 e!4554218))

(declare-fun c!1412206 () Bool)

(assert (=> d!2328388 (= c!1412206 (is-EmptyExpr!20496 r!14126))))

(assert (=> d!2328388 (= lt!2662359 e!4554223)))

(declare-fun c!1412205 () Bool)

(assert (=> d!2328388 (= c!1412205 (isEmpty!41857 s!9605))))

(assert (=> d!2328388 (validRegex!10914 r!14126)))

(assert (=> d!2328388 (= (matchR!9992 r!14126 s!9605) lt!2662359)))

(declare-fun b!7667991 () Bool)

(declare-fun res!3067012 () Bool)

(assert (=> b!7667991 (=> res!3067012 e!4554219)))

(assert (=> b!7667991 (= res!3067012 e!4554221)))

(declare-fun res!3067018 () Bool)

(assert (=> b!7667991 (=> (not res!3067018) (not e!4554221))))

(assert (=> b!7667991 (= res!3067018 lt!2662359)))

(declare-fun bm!705100 () Bool)

(assert (=> bm!705100 (= call!705105 (isEmpty!41857 s!9605))))

(declare-fun b!7667992 () Bool)

(assert (=> b!7667992 (= e!4554218 (= lt!2662359 call!705105))))

(declare-fun b!7667993 () Bool)

(assert (=> b!7667993 (= e!4554224 (not (= (head!15753 s!9605) (c!1412197 r!14126))))))

(declare-fun b!7667994 () Bool)

(declare-fun derivativeStep!5953 (Regex!20496 C!41318) Regex!20496)

(assert (=> b!7667994 (= e!4554223 (matchR!9992 (derivativeStep!5953 r!14126 (head!15753 s!9605)) (tail!15293 s!9605)))))

(declare-fun b!7667995 () Bool)

(assert (=> b!7667995 (= e!4554219 e!4554222)))

(declare-fun res!3067013 () Bool)

(assert (=> b!7667995 (=> (not res!3067013) (not e!4554222))))

(assert (=> b!7667995 (= res!3067013 (not lt!2662359))))

(assert (= (and d!2328388 c!1412205) b!7667987))

(assert (= (and d!2328388 (not c!1412205)) b!7667994))

(assert (= (and d!2328388 c!1412206) b!7667992))

(assert (= (and d!2328388 (not c!1412206)) b!7667983))

(assert (= (and b!7667983 c!1412207) b!7667990))

(assert (= (and b!7667983 (not c!1412207)) b!7667988))

(assert (= (and b!7667988 (not res!3067011)) b!7667991))

(assert (= (and b!7667991 res!3067018) b!7667986))

(assert (= (and b!7667986 res!3067017) b!7667984))

(assert (= (and b!7667984 res!3067016) b!7667982))

(assert (= (and b!7667991 (not res!3067012)) b!7667995))

(assert (= (and b!7667995 res!3067013) b!7667985))

(assert (= (and b!7667985 (not res!3067014)) b!7667989))

(assert (= (and b!7667989 (not res!3067015)) b!7667993))

(assert (= (or b!7667992 b!7667985 b!7667986) bm!705100))

(declare-fun m!8173126 () Bool)

(assert (=> b!7667987 m!8173126))

(declare-fun m!8173128 () Bool)

(assert (=> b!7667982 m!8173128))

(assert (=> b!7667994 m!8173128))

(assert (=> b!7667994 m!8173128))

(declare-fun m!8173130 () Bool)

(assert (=> b!7667994 m!8173130))

(declare-fun m!8173132 () Bool)

(assert (=> b!7667994 m!8173132))

(assert (=> b!7667994 m!8173130))

(assert (=> b!7667994 m!8173132))

(declare-fun m!8173134 () Bool)

(assert (=> b!7667994 m!8173134))

(assert (=> b!7667993 m!8173128))

(assert (=> bm!705100 m!8173066))

(assert (=> b!7667989 m!8173132))

(assert (=> b!7667989 m!8173132))

(declare-fun m!8173136 () Bool)

(assert (=> b!7667989 m!8173136))

(assert (=> d!2328388 m!8173066))

(assert (=> d!2328388 m!8173058))

(assert (=> b!7667984 m!8173132))

(assert (=> b!7667984 m!8173132))

(assert (=> b!7667984 m!8173136))

(assert (=> b!7667901 d!2328388))

(declare-fun d!2328392 () Bool)

(assert (=> d!2328392 (= (matchR!9992 r!14126 (_2!38030 lt!2662329)) (matchRSpec!4597 r!14126 (_2!38030 lt!2662329)))))

(declare-fun lt!2662362 () Unit!168004)

(declare-fun choose!59078 (Regex!20496 List!73347) Unit!168004)

(assert (=> d!2328392 (= lt!2662362 (choose!59078 r!14126 (_2!38030 lt!2662329)))))

(assert (=> d!2328392 (validRegex!10914 r!14126)))

(assert (=> d!2328392 (= (mainMatchTheorem!4575 r!14126 (_2!38030 lt!2662329)) lt!2662362)))

(declare-fun bs!1946355 () Bool)

(assert (= bs!1946355 d!2328392))

(assert (=> bs!1946355 m!8173078))

(assert (=> bs!1946355 m!8173086))

(declare-fun m!8173138 () Bool)

(assert (=> bs!1946355 m!8173138))

(assert (=> bs!1946355 m!8173058))

(assert (=> b!7667901 d!2328392))

(declare-fun bs!1946356 () Bool)

(declare-fun b!7668064 () Bool)

(assert (= bs!1946356 (and b!7668064 b!7667902)))

(declare-fun lambda!469978 () Int)

(assert (=> bs!1946356 (not (= lambda!469978 lambda!469970))))

(assert (=> b!7668064 true))

(assert (=> b!7668064 true))

(declare-fun bs!1946357 () Bool)

(declare-fun b!7668063 () Bool)

(assert (= bs!1946357 (and b!7668063 b!7667902)))

(declare-fun lambda!469979 () Int)

(assert (=> bs!1946357 (not (= lambda!469979 lambda!469970))))

(declare-fun bs!1946358 () Bool)

(assert (= bs!1946358 (and b!7668063 b!7668064)))

(assert (=> bs!1946358 (not (= lambda!469979 lambda!469978))))

(assert (=> b!7668063 true))

(assert (=> b!7668063 true))

(declare-fun b!7668055 () Bool)

(declare-fun e!4554270 () Bool)

(declare-fun e!4554268 () Bool)

(assert (=> b!7668055 (= e!4554270 e!4554268)))

(declare-fun res!3067050 () Bool)

(assert (=> b!7668055 (= res!3067050 (not (is-EmptyLang!20496 r!14126)))))

(assert (=> b!7668055 (=> (not res!3067050) (not e!4554268))))

(declare-fun b!7668056 () Bool)

(declare-fun e!4554269 () Bool)

(assert (=> b!7668056 (= e!4554269 (matchRSpec!4597 (regTwo!41505 r!14126) (_2!38030 lt!2662329)))))

(declare-fun d!2328394 () Bool)

(declare-fun c!1412224 () Bool)

(assert (=> d!2328394 (= c!1412224 (is-EmptyExpr!20496 r!14126))))

(assert (=> d!2328394 (= (matchRSpec!4597 r!14126 (_2!38030 lt!2662329)) e!4554270)))

(declare-fun call!705119 () Bool)

(declare-fun bm!705114 () Bool)

(declare-fun c!1412225 () Bool)

(assert (=> bm!705114 (= call!705119 (Exists!4621 (ite c!1412225 lambda!469978 lambda!469979)))))

(declare-fun b!7668057 () Bool)

(declare-fun e!4554264 () Bool)

(declare-fun e!4554265 () Bool)

(assert (=> b!7668057 (= e!4554264 e!4554265)))

(assert (=> b!7668057 (= c!1412225 (is-Star!20496 r!14126))))

(declare-fun bm!705115 () Bool)

(declare-fun call!705120 () Bool)

(assert (=> bm!705115 (= call!705120 (isEmpty!41857 (_2!38030 lt!2662329)))))

(declare-fun b!7668058 () Bool)

(declare-fun res!3067052 () Bool)

(declare-fun e!4554267 () Bool)

(assert (=> b!7668058 (=> res!3067052 e!4554267)))

(assert (=> b!7668058 (= res!3067052 call!705120)))

(assert (=> b!7668058 (= e!4554265 e!4554267)))

(declare-fun b!7668059 () Bool)

(assert (=> b!7668059 (= e!4554270 call!705120)))

(declare-fun b!7668060 () Bool)

(declare-fun c!1412223 () Bool)

(assert (=> b!7668060 (= c!1412223 (is-ElementMatch!20496 r!14126))))

(declare-fun e!4554266 () Bool)

(assert (=> b!7668060 (= e!4554268 e!4554266)))

(declare-fun b!7668061 () Bool)

(declare-fun c!1412222 () Bool)

(assert (=> b!7668061 (= c!1412222 (is-Union!20496 r!14126))))

(assert (=> b!7668061 (= e!4554266 e!4554264)))

(declare-fun b!7668062 () Bool)

(assert (=> b!7668062 (= e!4554266 (= (_2!38030 lt!2662329) (Cons!73223 (c!1412197 r!14126) Nil!73223)))))

(assert (=> b!7668063 (= e!4554265 call!705119)))

(assert (=> b!7668064 (= e!4554267 call!705119)))

(declare-fun b!7668065 () Bool)

(assert (=> b!7668065 (= e!4554264 e!4554269)))

(declare-fun res!3067051 () Bool)

(assert (=> b!7668065 (= res!3067051 (matchRSpec!4597 (regOne!41505 r!14126) (_2!38030 lt!2662329)))))

(assert (=> b!7668065 (=> res!3067051 e!4554269)))

(assert (= (and d!2328394 c!1412224) b!7668059))

(assert (= (and d!2328394 (not c!1412224)) b!7668055))

(assert (= (and b!7668055 res!3067050) b!7668060))

(assert (= (and b!7668060 c!1412223) b!7668062))

(assert (= (and b!7668060 (not c!1412223)) b!7668061))

(assert (= (and b!7668061 c!1412222) b!7668065))

(assert (= (and b!7668061 (not c!1412222)) b!7668057))

(assert (= (and b!7668065 (not res!3067051)) b!7668056))

(assert (= (and b!7668057 c!1412225) b!7668058))

(assert (= (and b!7668057 (not c!1412225)) b!7668063))

(assert (= (and b!7668058 (not res!3067052)) b!7668064))

(assert (= (or b!7668064 b!7668063) bm!705114))

(assert (= (or b!7668059 b!7668058) bm!705115))

(declare-fun m!8173146 () Bool)

(assert (=> b!7668056 m!8173146))

(declare-fun m!8173148 () Bool)

(assert (=> bm!705114 m!8173148))

(declare-fun m!8173150 () Bool)

(assert (=> bm!705115 m!8173150))

(declare-fun m!8173152 () Bool)

(assert (=> b!7668065 m!8173152))

(assert (=> b!7667901 d!2328394))

(declare-fun b!7668067 () Bool)

(declare-fun e!4554271 () Bool)

(declare-fun e!4554273 () Bool)

(assert (=> b!7668067 (= e!4554271 e!4554273)))

(declare-fun c!1412228 () Bool)

(assert (=> b!7668067 (= c!1412228 (is-EmptyLang!20496 (reg!20825 r!14126)))))

(declare-fun b!7668068 () Bool)

(declare-fun res!3067058 () Bool)

(declare-fun e!4554274 () Bool)

(assert (=> b!7668068 (=> (not res!3067058) (not e!4554274))))

(assert (=> b!7668068 (= res!3067058 (isEmpty!41857 (tail!15293 (_1!38030 lt!2662329))))))

(declare-fun b!7668069 () Bool)

(declare-fun e!4554275 () Bool)

(declare-fun e!4554277 () Bool)

(assert (=> b!7668069 (= e!4554275 e!4554277)))

(declare-fun res!3067056 () Bool)

(assert (=> b!7668069 (=> res!3067056 e!4554277)))

(declare-fun call!705121 () Bool)

(assert (=> b!7668069 (= res!3067056 call!705121)))

(declare-fun b!7668070 () Bool)

(declare-fun res!3067059 () Bool)

(assert (=> b!7668070 (=> (not res!3067059) (not e!4554274))))

(assert (=> b!7668070 (= res!3067059 (not call!705121))))

(declare-fun b!7668071 () Bool)

(declare-fun e!4554276 () Bool)

(assert (=> b!7668071 (= e!4554276 (nullable!8987 (reg!20825 r!14126)))))

(declare-fun b!7668072 () Bool)

(declare-fun res!3067053 () Bool)

(declare-fun e!4554272 () Bool)

(assert (=> b!7668072 (=> res!3067053 e!4554272)))

(assert (=> b!7668072 (= res!3067053 (not (is-ElementMatch!20496 (reg!20825 r!14126))))))

(assert (=> b!7668072 (= e!4554273 e!4554272)))

(declare-fun b!7668073 () Bool)

(declare-fun res!3067057 () Bool)

(assert (=> b!7668073 (=> res!3067057 e!4554277)))

(assert (=> b!7668073 (= res!3067057 (not (isEmpty!41857 (tail!15293 (_1!38030 lt!2662329)))))))

(declare-fun b!7668074 () Bool)

(declare-fun lt!2662363 () Bool)

(assert (=> b!7668074 (= e!4554273 (not lt!2662363))))

(declare-fun b!7668066 () Bool)

(assert (=> b!7668066 (= e!4554274 (= (head!15753 (_1!38030 lt!2662329)) (c!1412197 (reg!20825 r!14126))))))

(declare-fun d!2328398 () Bool)

(assert (=> d!2328398 e!4554271))

(declare-fun c!1412227 () Bool)

(assert (=> d!2328398 (= c!1412227 (is-EmptyExpr!20496 (reg!20825 r!14126)))))

(assert (=> d!2328398 (= lt!2662363 e!4554276)))

(declare-fun c!1412226 () Bool)

(assert (=> d!2328398 (= c!1412226 (isEmpty!41857 (_1!38030 lt!2662329)))))

(assert (=> d!2328398 (validRegex!10914 (reg!20825 r!14126))))

(assert (=> d!2328398 (= (matchR!9992 (reg!20825 r!14126) (_1!38030 lt!2662329)) lt!2662363)))

(declare-fun b!7668075 () Bool)

(declare-fun res!3067054 () Bool)

(assert (=> b!7668075 (=> res!3067054 e!4554272)))

(assert (=> b!7668075 (= res!3067054 e!4554274)))

(declare-fun res!3067060 () Bool)

(assert (=> b!7668075 (=> (not res!3067060) (not e!4554274))))

(assert (=> b!7668075 (= res!3067060 lt!2662363)))

(declare-fun bm!705116 () Bool)

(assert (=> bm!705116 (= call!705121 (isEmpty!41857 (_1!38030 lt!2662329)))))

(declare-fun b!7668076 () Bool)

(assert (=> b!7668076 (= e!4554271 (= lt!2662363 call!705121))))

(declare-fun b!7668077 () Bool)

(assert (=> b!7668077 (= e!4554277 (not (= (head!15753 (_1!38030 lt!2662329)) (c!1412197 (reg!20825 r!14126)))))))

(declare-fun b!7668078 () Bool)

(assert (=> b!7668078 (= e!4554276 (matchR!9992 (derivativeStep!5953 (reg!20825 r!14126) (head!15753 (_1!38030 lt!2662329))) (tail!15293 (_1!38030 lt!2662329))))))

(declare-fun b!7668079 () Bool)

(assert (=> b!7668079 (= e!4554272 e!4554275)))

(declare-fun res!3067055 () Bool)

(assert (=> b!7668079 (=> (not res!3067055) (not e!4554275))))

(assert (=> b!7668079 (= res!3067055 (not lt!2662363))))

(assert (= (and d!2328398 c!1412226) b!7668071))

(assert (= (and d!2328398 (not c!1412226)) b!7668078))

(assert (= (and d!2328398 c!1412227) b!7668076))

(assert (= (and d!2328398 (not c!1412227)) b!7668067))

(assert (= (and b!7668067 c!1412228) b!7668074))

(assert (= (and b!7668067 (not c!1412228)) b!7668072))

(assert (= (and b!7668072 (not res!3067053)) b!7668075))

(assert (= (and b!7668075 res!3067060) b!7668070))

(assert (= (and b!7668070 res!3067059) b!7668068))

(assert (= (and b!7668068 res!3067058) b!7668066))

(assert (= (and b!7668075 (not res!3067054)) b!7668079))

(assert (= (and b!7668079 res!3067055) b!7668069))

(assert (= (and b!7668069 (not res!3067056)) b!7668073))

(assert (= (and b!7668073 (not res!3067057)) b!7668077))

(assert (= (or b!7668076 b!7668069 b!7668070) bm!705116))

(declare-fun m!8173154 () Bool)

(assert (=> b!7668071 m!8173154))

(declare-fun m!8173156 () Bool)

(assert (=> b!7668066 m!8173156))

(assert (=> b!7668078 m!8173156))

(assert (=> b!7668078 m!8173156))

(declare-fun m!8173158 () Bool)

(assert (=> b!7668078 m!8173158))

(declare-fun m!8173160 () Bool)

(assert (=> b!7668078 m!8173160))

(assert (=> b!7668078 m!8173158))

(assert (=> b!7668078 m!8173160))

(declare-fun m!8173162 () Bool)

(assert (=> b!7668078 m!8173162))

(assert (=> b!7668077 m!8173156))

(declare-fun m!8173164 () Bool)

(assert (=> bm!705116 m!8173164))

(assert (=> b!7668073 m!8173160))

(assert (=> b!7668073 m!8173160))

(declare-fun m!8173166 () Bool)

(assert (=> b!7668073 m!8173166))

(assert (=> d!2328398 m!8173164))

(declare-fun m!8173168 () Bool)

(assert (=> d!2328398 m!8173168))

(assert (=> b!7668068 m!8173160))

(assert (=> b!7668068 m!8173160))

(assert (=> b!7668068 m!8173166))

(assert (=> b!7667901 d!2328398))

(declare-fun d!2328400 () Bool)

(assert (=> d!2328400 (= (matchR!9992 (reg!20825 r!14126) (_1!38030 lt!2662329)) (matchRSpec!4597 (reg!20825 r!14126) (_1!38030 lt!2662329)))))

(declare-fun lt!2662364 () Unit!168004)

(assert (=> d!2328400 (= lt!2662364 (choose!59078 (reg!20825 r!14126) (_1!38030 lt!2662329)))))

(assert (=> d!2328400 (validRegex!10914 (reg!20825 r!14126))))

(assert (=> d!2328400 (= (mainMatchTheorem!4575 (reg!20825 r!14126) (_1!38030 lt!2662329)) lt!2662364)))

(declare-fun bs!1946359 () Bool)

(assert (= bs!1946359 d!2328400))

(assert (=> bs!1946359 m!8173076))

(assert (=> bs!1946359 m!8173082))

(declare-fun m!8173170 () Bool)

(assert (=> bs!1946359 m!8173170))

(assert (=> bs!1946359 m!8173168))

(assert (=> b!7667901 d!2328400))

(declare-fun d!2328402 () Bool)

(assert (=> d!2328402 (= (get!25956 lt!2662330) (v!54655 lt!2662330))))

(assert (=> b!7667901 d!2328402))

(declare-fun bs!1946360 () Bool)

(declare-fun b!7668089 () Bool)

(assert (= bs!1946360 (and b!7668089 b!7667902)))

(declare-fun lambda!469980 () Int)

(assert (=> bs!1946360 (not (= lambda!469980 lambda!469970))))

(declare-fun bs!1946361 () Bool)

(assert (= bs!1946361 (and b!7668089 b!7668064)))

(assert (=> bs!1946361 (= (and (= (_1!38030 lt!2662329) (_2!38030 lt!2662329)) (= (reg!20825 (reg!20825 r!14126)) (reg!20825 r!14126)) (= (reg!20825 r!14126) r!14126)) (= lambda!469980 lambda!469978))))

(declare-fun bs!1946362 () Bool)

(assert (= bs!1946362 (and b!7668089 b!7668063)))

(assert (=> bs!1946362 (not (= lambda!469980 lambda!469979))))

(assert (=> b!7668089 true))

(assert (=> b!7668089 true))

(declare-fun bs!1946363 () Bool)

(declare-fun b!7668088 () Bool)

(assert (= bs!1946363 (and b!7668088 b!7667902)))

(declare-fun lambda!469981 () Int)

(assert (=> bs!1946363 (not (= lambda!469981 lambda!469970))))

(declare-fun bs!1946364 () Bool)

(assert (= bs!1946364 (and b!7668088 b!7668064)))

(assert (=> bs!1946364 (not (= lambda!469981 lambda!469978))))

(declare-fun bs!1946365 () Bool)

(assert (= bs!1946365 (and b!7668088 b!7668063)))

(assert (=> bs!1946365 (= (and (= (_1!38030 lt!2662329) (_2!38030 lt!2662329)) (= (regOne!41504 (reg!20825 r!14126)) (regOne!41504 r!14126)) (= (regTwo!41504 (reg!20825 r!14126)) (regTwo!41504 r!14126))) (= lambda!469981 lambda!469979))))

(declare-fun bs!1946366 () Bool)

(assert (= bs!1946366 (and b!7668088 b!7668089)))

(assert (=> bs!1946366 (not (= lambda!469981 lambda!469980))))

(assert (=> b!7668088 true))

(assert (=> b!7668088 true))

(declare-fun b!7668080 () Bool)

(declare-fun e!4554284 () Bool)

(declare-fun e!4554282 () Bool)

(assert (=> b!7668080 (= e!4554284 e!4554282)))

(declare-fun res!3067061 () Bool)

(assert (=> b!7668080 (= res!3067061 (not (is-EmptyLang!20496 (reg!20825 r!14126))))))

(assert (=> b!7668080 (=> (not res!3067061) (not e!4554282))))

(declare-fun b!7668081 () Bool)

(declare-fun e!4554283 () Bool)

(assert (=> b!7668081 (= e!4554283 (matchRSpec!4597 (regTwo!41505 (reg!20825 r!14126)) (_1!38030 lt!2662329)))))

(declare-fun d!2328404 () Bool)

(declare-fun c!1412231 () Bool)

(assert (=> d!2328404 (= c!1412231 (is-EmptyExpr!20496 (reg!20825 r!14126)))))

(assert (=> d!2328404 (= (matchRSpec!4597 (reg!20825 r!14126) (_1!38030 lt!2662329)) e!4554284)))

(declare-fun call!705122 () Bool)

(declare-fun bm!705117 () Bool)

(declare-fun c!1412232 () Bool)

(assert (=> bm!705117 (= call!705122 (Exists!4621 (ite c!1412232 lambda!469980 lambda!469981)))))

(declare-fun b!7668082 () Bool)

(declare-fun e!4554278 () Bool)

(declare-fun e!4554279 () Bool)

(assert (=> b!7668082 (= e!4554278 e!4554279)))

(assert (=> b!7668082 (= c!1412232 (is-Star!20496 (reg!20825 r!14126)))))

(declare-fun bm!705118 () Bool)

(declare-fun call!705123 () Bool)

(assert (=> bm!705118 (= call!705123 (isEmpty!41857 (_1!38030 lt!2662329)))))

(declare-fun b!7668083 () Bool)

(declare-fun res!3067063 () Bool)

(declare-fun e!4554281 () Bool)

(assert (=> b!7668083 (=> res!3067063 e!4554281)))

(assert (=> b!7668083 (= res!3067063 call!705123)))

(assert (=> b!7668083 (= e!4554279 e!4554281)))

(declare-fun b!7668084 () Bool)

(assert (=> b!7668084 (= e!4554284 call!705123)))

(declare-fun b!7668085 () Bool)

(declare-fun c!1412230 () Bool)

(assert (=> b!7668085 (= c!1412230 (is-ElementMatch!20496 (reg!20825 r!14126)))))

(declare-fun e!4554280 () Bool)

(assert (=> b!7668085 (= e!4554282 e!4554280)))

(declare-fun b!7668086 () Bool)

(declare-fun c!1412229 () Bool)

(assert (=> b!7668086 (= c!1412229 (is-Union!20496 (reg!20825 r!14126)))))

(assert (=> b!7668086 (= e!4554280 e!4554278)))

(declare-fun b!7668087 () Bool)

(assert (=> b!7668087 (= e!4554280 (= (_1!38030 lt!2662329) (Cons!73223 (c!1412197 (reg!20825 r!14126)) Nil!73223)))))

(assert (=> b!7668088 (= e!4554279 call!705122)))

(assert (=> b!7668089 (= e!4554281 call!705122)))

(declare-fun b!7668090 () Bool)

(assert (=> b!7668090 (= e!4554278 e!4554283)))

(declare-fun res!3067062 () Bool)

(assert (=> b!7668090 (= res!3067062 (matchRSpec!4597 (regOne!41505 (reg!20825 r!14126)) (_1!38030 lt!2662329)))))

(assert (=> b!7668090 (=> res!3067062 e!4554283)))

(assert (= (and d!2328404 c!1412231) b!7668084))

(assert (= (and d!2328404 (not c!1412231)) b!7668080))

(assert (= (and b!7668080 res!3067061) b!7668085))

(assert (= (and b!7668085 c!1412230) b!7668087))

(assert (= (and b!7668085 (not c!1412230)) b!7668086))

(assert (= (and b!7668086 c!1412229) b!7668090))

(assert (= (and b!7668086 (not c!1412229)) b!7668082))

(assert (= (and b!7668090 (not res!3067062)) b!7668081))

(assert (= (and b!7668082 c!1412232) b!7668083))

(assert (= (and b!7668082 (not c!1412232)) b!7668088))

(assert (= (and b!7668083 (not res!3067063)) b!7668089))

(assert (= (or b!7668089 b!7668088) bm!705117))

(assert (= (or b!7668084 b!7668083) bm!705118))

(declare-fun m!8173172 () Bool)

(assert (=> b!7668081 m!8173172))

(declare-fun m!8173174 () Bool)

(assert (=> bm!705117 m!8173174))

(assert (=> bm!705118 m!8173164))

(declare-fun m!8173176 () Bool)

(assert (=> b!7668090 m!8173176))

(assert (=> b!7667901 d!2328404))

(declare-fun b!7668092 () Bool)

(declare-fun e!4554285 () Bool)

(declare-fun e!4554287 () Bool)

(assert (=> b!7668092 (= e!4554285 e!4554287)))

(declare-fun c!1412235 () Bool)

(assert (=> b!7668092 (= c!1412235 (is-EmptyLang!20496 r!14126))))

(declare-fun b!7668093 () Bool)

(declare-fun res!3067069 () Bool)

(declare-fun e!4554288 () Bool)

(assert (=> b!7668093 (=> (not res!3067069) (not e!4554288))))

(assert (=> b!7668093 (= res!3067069 (isEmpty!41857 (tail!15293 (_2!38030 lt!2662329))))))

(declare-fun b!7668094 () Bool)

(declare-fun e!4554289 () Bool)

(declare-fun e!4554291 () Bool)

(assert (=> b!7668094 (= e!4554289 e!4554291)))

(declare-fun res!3067067 () Bool)

(assert (=> b!7668094 (=> res!3067067 e!4554291)))

(declare-fun call!705124 () Bool)

(assert (=> b!7668094 (= res!3067067 call!705124)))

(declare-fun b!7668095 () Bool)

(declare-fun res!3067070 () Bool)

(assert (=> b!7668095 (=> (not res!3067070) (not e!4554288))))

(assert (=> b!7668095 (= res!3067070 (not call!705124))))

(declare-fun b!7668096 () Bool)

(declare-fun e!4554290 () Bool)

(assert (=> b!7668096 (= e!4554290 (nullable!8987 r!14126))))

(declare-fun b!7668097 () Bool)

(declare-fun res!3067064 () Bool)

(declare-fun e!4554286 () Bool)

(assert (=> b!7668097 (=> res!3067064 e!4554286)))

(assert (=> b!7668097 (= res!3067064 (not (is-ElementMatch!20496 r!14126)))))

(assert (=> b!7668097 (= e!4554287 e!4554286)))

(declare-fun b!7668098 () Bool)

(declare-fun res!3067068 () Bool)

(assert (=> b!7668098 (=> res!3067068 e!4554291)))

(assert (=> b!7668098 (= res!3067068 (not (isEmpty!41857 (tail!15293 (_2!38030 lt!2662329)))))))

(declare-fun b!7668099 () Bool)

(declare-fun lt!2662365 () Bool)

(assert (=> b!7668099 (= e!4554287 (not lt!2662365))))

(declare-fun b!7668091 () Bool)

(assert (=> b!7668091 (= e!4554288 (= (head!15753 (_2!38030 lt!2662329)) (c!1412197 r!14126)))))

(declare-fun d!2328406 () Bool)

(assert (=> d!2328406 e!4554285))

(declare-fun c!1412234 () Bool)

(assert (=> d!2328406 (= c!1412234 (is-EmptyExpr!20496 r!14126))))

(assert (=> d!2328406 (= lt!2662365 e!4554290)))

(declare-fun c!1412233 () Bool)

(assert (=> d!2328406 (= c!1412233 (isEmpty!41857 (_2!38030 lt!2662329)))))

(assert (=> d!2328406 (validRegex!10914 r!14126)))

(assert (=> d!2328406 (= (matchR!9992 r!14126 (_2!38030 lt!2662329)) lt!2662365)))

(declare-fun b!7668100 () Bool)

(declare-fun res!3067065 () Bool)

(assert (=> b!7668100 (=> res!3067065 e!4554286)))

(assert (=> b!7668100 (= res!3067065 e!4554288)))

(declare-fun res!3067071 () Bool)

(assert (=> b!7668100 (=> (not res!3067071) (not e!4554288))))

(assert (=> b!7668100 (= res!3067071 lt!2662365)))

(declare-fun bm!705119 () Bool)

(assert (=> bm!705119 (= call!705124 (isEmpty!41857 (_2!38030 lt!2662329)))))

(declare-fun b!7668101 () Bool)

(assert (=> b!7668101 (= e!4554285 (= lt!2662365 call!705124))))

(declare-fun b!7668102 () Bool)

(assert (=> b!7668102 (= e!4554291 (not (= (head!15753 (_2!38030 lt!2662329)) (c!1412197 r!14126))))))

(declare-fun b!7668103 () Bool)

(assert (=> b!7668103 (= e!4554290 (matchR!9992 (derivativeStep!5953 r!14126 (head!15753 (_2!38030 lt!2662329))) (tail!15293 (_2!38030 lt!2662329))))))

(declare-fun b!7668104 () Bool)

(assert (=> b!7668104 (= e!4554286 e!4554289)))

(declare-fun res!3067066 () Bool)

(assert (=> b!7668104 (=> (not res!3067066) (not e!4554289))))

(assert (=> b!7668104 (= res!3067066 (not lt!2662365))))

(assert (= (and d!2328406 c!1412233) b!7668096))

(assert (= (and d!2328406 (not c!1412233)) b!7668103))

(assert (= (and d!2328406 c!1412234) b!7668101))

(assert (= (and d!2328406 (not c!1412234)) b!7668092))

(assert (= (and b!7668092 c!1412235) b!7668099))

(assert (= (and b!7668092 (not c!1412235)) b!7668097))

(assert (= (and b!7668097 (not res!3067064)) b!7668100))

(assert (= (and b!7668100 res!3067071) b!7668095))

(assert (= (and b!7668095 res!3067070) b!7668093))

(assert (= (and b!7668093 res!3067069) b!7668091))

(assert (= (and b!7668100 (not res!3067065)) b!7668104))

(assert (= (and b!7668104 res!3067066) b!7668094))

(assert (= (and b!7668094 (not res!3067067)) b!7668098))

(assert (= (and b!7668098 (not res!3067068)) b!7668102))

(assert (= (or b!7668101 b!7668094 b!7668095) bm!705119))

(assert (=> b!7668096 m!8173126))

(declare-fun m!8173178 () Bool)

(assert (=> b!7668091 m!8173178))

(assert (=> b!7668103 m!8173178))

(assert (=> b!7668103 m!8173178))

(declare-fun m!8173180 () Bool)

(assert (=> b!7668103 m!8173180))

(declare-fun m!8173182 () Bool)

(assert (=> b!7668103 m!8173182))

(assert (=> b!7668103 m!8173180))

(assert (=> b!7668103 m!8173182))

(declare-fun m!8173184 () Bool)

(assert (=> b!7668103 m!8173184))

(assert (=> b!7668102 m!8173178))

(assert (=> bm!705119 m!8173150))

(assert (=> b!7668098 m!8173182))

(assert (=> b!7668098 m!8173182))

(declare-fun m!8173186 () Bool)

(assert (=> b!7668098 m!8173186))

(assert (=> d!2328406 m!8173150))

(assert (=> d!2328406 m!8173058))

(assert (=> b!7668093 m!8173182))

(assert (=> b!7668093 m!8173182))

(assert (=> b!7668093 m!8173186))

(assert (=> b!7667901 d!2328406))

(declare-fun d!2328408 () Bool)

(declare-fun choose!59079 (Int) Bool)

(assert (=> d!2328408 (= (Exists!4621 lambda!469970) (choose!59079 lambda!469970))))

(declare-fun bs!1946367 () Bool)

(assert (= bs!1946367 d!2328408))

(declare-fun m!8173188 () Bool)

(assert (=> bs!1946367 m!8173188))

(assert (=> b!7667902 d!2328408))

(declare-fun d!2328410 () Bool)

(declare-fun isEmpty!41859 (Option!17521) Bool)

(assert (=> d!2328410 (= (isDefined!14137 lt!2662330) (not (isEmpty!41859 lt!2662330)))))

(declare-fun bs!1946368 () Bool)

(assert (= bs!1946368 d!2328410))

(declare-fun m!8173190 () Bool)

(assert (=> bs!1946368 m!8173190))

(assert (=> b!7667902 d!2328410))

(declare-fun b!7668165 () Bool)

(declare-fun res!3067106 () Bool)

(declare-fun e!4554325 () Bool)

(assert (=> b!7668165 (=> (not res!3067106) (not e!4554325))))

(declare-fun lt!2662375 () Option!17521)

(assert (=> b!7668165 (= res!3067106 (matchR!9992 r!14126 (_2!38030 (get!25956 lt!2662375))))))

(declare-fun b!7668166 () Bool)

(declare-fun e!4554324 () Option!17521)

(declare-fun e!4554323 () Option!17521)

(assert (=> b!7668166 (= e!4554324 e!4554323)))

(declare-fun c!1412249 () Bool)

(assert (=> b!7668166 (= c!1412249 (is-Nil!73223 s!9605))))

(declare-fun b!7668167 () Bool)

(assert (=> b!7668167 (= e!4554324 (Some!17520 (tuple2!69455 Nil!73223 s!9605)))))

(declare-fun b!7668168 () Bool)

(declare-fun e!4554326 () Bool)

(assert (=> b!7668168 (= e!4554326 (matchR!9992 r!14126 s!9605))))

(declare-fun d!2328412 () Bool)

(declare-fun e!4554327 () Bool)

(assert (=> d!2328412 e!4554327))

(declare-fun res!3067110 () Bool)

(assert (=> d!2328412 (=> res!3067110 e!4554327)))

(assert (=> d!2328412 (= res!3067110 e!4554325)))

(declare-fun res!3067107 () Bool)

(assert (=> d!2328412 (=> (not res!3067107) (not e!4554325))))

(assert (=> d!2328412 (= res!3067107 (isDefined!14137 lt!2662375))))

(assert (=> d!2328412 (= lt!2662375 e!4554324)))

(declare-fun c!1412250 () Bool)

(assert (=> d!2328412 (= c!1412250 e!4554326)))

(declare-fun res!3067109 () Bool)

(assert (=> d!2328412 (=> (not res!3067109) (not e!4554326))))

(assert (=> d!2328412 (= res!3067109 (matchR!9992 (reg!20825 r!14126) Nil!73223))))

(assert (=> d!2328412 (validRegex!10914 (reg!20825 r!14126))))

(assert (=> d!2328412 (= (findConcatSeparation!3551 (reg!20825 r!14126) r!14126 Nil!73223 s!9605 s!9605) lt!2662375)))

(declare-fun b!7668169 () Bool)

(declare-fun lt!2662376 () Unit!168004)

(declare-fun lt!2662377 () Unit!168004)

(assert (=> b!7668169 (= lt!2662376 lt!2662377)))

(assert (=> b!7668169 (= (++!17718 (++!17718 Nil!73223 (Cons!73223 (h!79671 s!9605) Nil!73223)) (t!388082 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3272 (List!73347 C!41318 List!73347 List!73347) Unit!168004)

(assert (=> b!7668169 (= lt!2662377 (lemmaMoveElementToOtherListKeepsConcatEq!3272 Nil!73223 (h!79671 s!9605) (t!388082 s!9605) s!9605))))

(assert (=> b!7668169 (= e!4554323 (findConcatSeparation!3551 (reg!20825 r!14126) r!14126 (++!17718 Nil!73223 (Cons!73223 (h!79671 s!9605) Nil!73223)) (t!388082 s!9605) s!9605))))

(declare-fun b!7668170 () Bool)

(assert (=> b!7668170 (= e!4554325 (= (++!17718 (_1!38030 (get!25956 lt!2662375)) (_2!38030 (get!25956 lt!2662375))) s!9605))))

(declare-fun b!7668171 () Bool)

(declare-fun res!3067108 () Bool)

(assert (=> b!7668171 (=> (not res!3067108) (not e!4554325))))

(assert (=> b!7668171 (= res!3067108 (matchR!9992 (reg!20825 r!14126) (_1!38030 (get!25956 lt!2662375))))))

(declare-fun b!7668172 () Bool)

(assert (=> b!7668172 (= e!4554323 None!17520)))

(declare-fun b!7668173 () Bool)

(assert (=> b!7668173 (= e!4554327 (not (isDefined!14137 lt!2662375)))))

(assert (= (and d!2328412 res!3067109) b!7668168))

(assert (= (and d!2328412 c!1412250) b!7668167))

(assert (= (and d!2328412 (not c!1412250)) b!7668166))

(assert (= (and b!7668166 c!1412249) b!7668172))

(assert (= (and b!7668166 (not c!1412249)) b!7668169))

(assert (= (and d!2328412 res!3067107) b!7668171))

(assert (= (and b!7668171 res!3067108) b!7668165))

(assert (= (and b!7668165 res!3067106) b!7668170))

(assert (= (and d!2328412 (not res!3067110)) b!7668173))

(declare-fun m!8173208 () Bool)

(assert (=> b!7668171 m!8173208))

(declare-fun m!8173210 () Bool)

(assert (=> b!7668171 m!8173210))

(declare-fun m!8173212 () Bool)

(assert (=> b!7668173 m!8173212))

(declare-fun m!8173214 () Bool)

(assert (=> b!7668169 m!8173214))

(assert (=> b!7668169 m!8173214))

(declare-fun m!8173216 () Bool)

(assert (=> b!7668169 m!8173216))

(declare-fun m!8173218 () Bool)

(assert (=> b!7668169 m!8173218))

(assert (=> b!7668169 m!8173214))

(declare-fun m!8173220 () Bool)

(assert (=> b!7668169 m!8173220))

(assert (=> b!7668165 m!8173208))

(declare-fun m!8173222 () Bool)

(assert (=> b!7668165 m!8173222))

(assert (=> b!7668168 m!8173080))

(assert (=> d!2328412 m!8173212))

(declare-fun m!8173224 () Bool)

(assert (=> d!2328412 m!8173224))

(assert (=> d!2328412 m!8173168))

(assert (=> b!7668170 m!8173208))

(declare-fun m!8173226 () Bool)

(assert (=> b!7668170 m!8173226))

(assert (=> b!7667902 d!2328412))

(declare-fun bs!1946369 () Bool)

(declare-fun d!2328416 () Bool)

(assert (= bs!1946369 (and d!2328416 b!7668088)))

(declare-fun lambda!469984 () Int)

(assert (=> bs!1946369 (not (= lambda!469984 lambda!469981))))

(declare-fun bs!1946370 () Bool)

(assert (= bs!1946370 (and d!2328416 b!7667902)))

(assert (=> bs!1946370 (= lambda!469984 lambda!469970)))

(declare-fun bs!1946371 () Bool)

(assert (= bs!1946371 (and d!2328416 b!7668063)))

(assert (=> bs!1946371 (not (= lambda!469984 lambda!469979))))

(declare-fun bs!1946372 () Bool)

(assert (= bs!1946372 (and d!2328416 b!7668064)))

(assert (=> bs!1946372 (not (= lambda!469984 lambda!469978))))

(declare-fun bs!1946373 () Bool)

(assert (= bs!1946373 (and d!2328416 b!7668089)))

(assert (=> bs!1946373 (not (= lambda!469984 lambda!469980))))

(assert (=> d!2328416 true))

(assert (=> d!2328416 true))

(assert (=> d!2328416 true))

(assert (=> d!2328416 (= (isDefined!14137 (findConcatSeparation!3551 (reg!20825 r!14126) r!14126 Nil!73223 s!9605 s!9605)) (Exists!4621 lambda!469984))))

(declare-fun lt!2662382 () Unit!168004)

(declare-fun choose!59080 (Regex!20496 Regex!20496 List!73347) Unit!168004)

(assert (=> d!2328416 (= lt!2662382 (choose!59080 (reg!20825 r!14126) r!14126 s!9605))))

(assert (=> d!2328416 (validRegex!10914 (reg!20825 r!14126))))

(assert (=> d!2328416 (= (lemmaFindConcatSeparationEquivalentToExists!3309 (reg!20825 r!14126) r!14126 s!9605) lt!2662382)))

(declare-fun bs!1946374 () Bool)

(assert (= bs!1946374 d!2328416))

(declare-fun m!8173228 () Bool)

(assert (=> bs!1946374 m!8173228))

(assert (=> bs!1946374 m!8173072))

(declare-fun m!8173230 () Bool)

(assert (=> bs!1946374 m!8173230))

(assert (=> bs!1946374 m!8173168))

(declare-fun m!8173232 () Bool)

(assert (=> bs!1946374 m!8173232))

(assert (=> bs!1946374 m!8173072))

(assert (=> b!7667902 d!2328416))

(declare-fun b!7668208 () Bool)

(declare-fun e!4554350 () Bool)

(declare-fun e!4554352 () Bool)

(assert (=> b!7668208 (= e!4554350 e!4554352)))

(declare-fun c!1412258 () Bool)

(assert (=> b!7668208 (= c!1412258 (is-Union!20496 r!14126))))

(declare-fun b!7668209 () Bool)

(declare-fun e!4554354 () Bool)

(declare-fun call!705136 () Bool)

(assert (=> b!7668209 (= e!4554354 call!705136)))

(declare-fun b!7668210 () Bool)

(declare-fun e!4554356 () Bool)

(assert (=> b!7668210 (= e!4554356 e!4554350)))

(declare-fun c!1412259 () Bool)

(assert (=> b!7668210 (= c!1412259 (is-Star!20496 r!14126))))

(declare-fun bm!705129 () Bool)

(declare-fun call!705134 () Bool)

(declare-fun call!705135 () Bool)

(assert (=> bm!705129 (= call!705134 call!705135)))

(declare-fun b!7668211 () Bool)

(declare-fun e!4554351 () Bool)

(assert (=> b!7668211 (= e!4554351 call!705135)))

(declare-fun b!7668212 () Bool)

(declare-fun res!3067131 () Bool)

(declare-fun e!4554353 () Bool)

(assert (=> b!7668212 (=> (not res!3067131) (not e!4554353))))

(assert (=> b!7668212 (= res!3067131 call!705134)))

(assert (=> b!7668212 (= e!4554352 e!4554353)))

(declare-fun b!7668213 () Bool)

(assert (=> b!7668213 (= e!4554350 e!4554351)))

(declare-fun res!3067134 () Bool)

(assert (=> b!7668213 (= res!3067134 (not (nullable!8987 (reg!20825 r!14126))))))

(assert (=> b!7668213 (=> (not res!3067134) (not e!4554351))))

(declare-fun d!2328418 () Bool)

(declare-fun res!3067135 () Bool)

(assert (=> d!2328418 (=> res!3067135 e!4554356)))

(assert (=> d!2328418 (= res!3067135 (is-ElementMatch!20496 r!14126))))

(assert (=> d!2328418 (= (validRegex!10914 r!14126) e!4554356)))

(declare-fun b!7668214 () Bool)

(assert (=> b!7668214 (= e!4554353 call!705136)))

(declare-fun bm!705130 () Bool)

(assert (=> bm!705130 (= call!705136 (validRegex!10914 (ite c!1412258 (regTwo!41505 r!14126) (regTwo!41504 r!14126))))))

(declare-fun b!7668215 () Bool)

(declare-fun e!4554355 () Bool)

(assert (=> b!7668215 (= e!4554355 e!4554354)))

(declare-fun res!3067132 () Bool)

(assert (=> b!7668215 (=> (not res!3067132) (not e!4554354))))

(assert (=> b!7668215 (= res!3067132 call!705134)))

(declare-fun b!7668216 () Bool)

(declare-fun res!3067133 () Bool)

(assert (=> b!7668216 (=> res!3067133 e!4554355)))

(assert (=> b!7668216 (= res!3067133 (not (is-Concat!29341 r!14126)))))

(assert (=> b!7668216 (= e!4554352 e!4554355)))

(declare-fun bm!705131 () Bool)

(assert (=> bm!705131 (= call!705135 (validRegex!10914 (ite c!1412259 (reg!20825 r!14126) (ite c!1412258 (regOne!41505 r!14126) (regOne!41504 r!14126)))))))

(assert (= (and d!2328418 (not res!3067135)) b!7668210))

(assert (= (and b!7668210 c!1412259) b!7668213))

(assert (= (and b!7668210 (not c!1412259)) b!7668208))

(assert (= (and b!7668213 res!3067134) b!7668211))

(assert (= (and b!7668208 c!1412258) b!7668212))

(assert (= (and b!7668208 (not c!1412258)) b!7668216))

(assert (= (and b!7668212 res!3067131) b!7668214))

(assert (= (and b!7668216 (not res!3067133)) b!7668215))

(assert (= (and b!7668215 res!3067132) b!7668209))

(assert (= (or b!7668212 b!7668215) bm!705129))

(assert (= (or b!7668214 b!7668209) bm!705130))

(assert (= (or b!7668211 bm!705129) bm!705131))

(assert (=> b!7668213 m!8173154))

(declare-fun m!8173248 () Bool)

(assert (=> bm!705130 m!8173248))

(declare-fun m!8173250 () Bool)

(assert (=> bm!705131 m!8173250))

(assert (=> start!736278 d!2328418))

(declare-fun d!2328422 () Bool)

(assert (=> d!2328422 (= (isEmpty!41857 s!9605) (is-Nil!73223 s!9605))))

(assert (=> b!7667898 d!2328422))

(assert (=> b!7667905 d!2328418))

(declare-fun b!7668218 () Bool)

(declare-fun e!4554357 () Bool)

(declare-fun e!4554359 () Bool)

(assert (=> b!7668218 (= e!4554357 e!4554359)))

(declare-fun c!1412262 () Bool)

(assert (=> b!7668218 (= c!1412262 (is-EmptyLang!20496 (Concat!29341 (reg!20825 r!14126) r!14126)))))

(declare-fun b!7668219 () Bool)

(declare-fun res!3067141 () Bool)

(declare-fun e!4554360 () Bool)

(assert (=> b!7668219 (=> (not res!3067141) (not e!4554360))))

(assert (=> b!7668219 (= res!3067141 (isEmpty!41857 (tail!15293 (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329)))))))

(declare-fun b!7668220 () Bool)

(declare-fun e!4554361 () Bool)

(declare-fun e!4554363 () Bool)

(assert (=> b!7668220 (= e!4554361 e!4554363)))

(declare-fun res!3067139 () Bool)

(assert (=> b!7668220 (=> res!3067139 e!4554363)))

(declare-fun call!705137 () Bool)

(assert (=> b!7668220 (= res!3067139 call!705137)))

(declare-fun b!7668221 () Bool)

(declare-fun res!3067142 () Bool)

(assert (=> b!7668221 (=> (not res!3067142) (not e!4554360))))

(assert (=> b!7668221 (= res!3067142 (not call!705137))))

(declare-fun b!7668222 () Bool)

(declare-fun e!4554362 () Bool)

(assert (=> b!7668222 (= e!4554362 (nullable!8987 (Concat!29341 (reg!20825 r!14126) r!14126)))))

(declare-fun b!7668223 () Bool)

(declare-fun res!3067136 () Bool)

(declare-fun e!4554358 () Bool)

(assert (=> b!7668223 (=> res!3067136 e!4554358)))

(assert (=> b!7668223 (= res!3067136 (not (is-ElementMatch!20496 (Concat!29341 (reg!20825 r!14126) r!14126))))))

(assert (=> b!7668223 (= e!4554359 e!4554358)))

(declare-fun b!7668224 () Bool)

(declare-fun res!3067140 () Bool)

(assert (=> b!7668224 (=> res!3067140 e!4554363)))

(assert (=> b!7668224 (= res!3067140 (not (isEmpty!41857 (tail!15293 (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329))))))))

(declare-fun b!7668225 () Bool)

(declare-fun lt!2662384 () Bool)

(assert (=> b!7668225 (= e!4554359 (not lt!2662384))))

(declare-fun b!7668217 () Bool)

(assert (=> b!7668217 (= e!4554360 (= (head!15753 (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329))) (c!1412197 (Concat!29341 (reg!20825 r!14126) r!14126))))))

(declare-fun d!2328424 () Bool)

(assert (=> d!2328424 e!4554357))

(declare-fun c!1412261 () Bool)

(assert (=> d!2328424 (= c!1412261 (is-EmptyExpr!20496 (Concat!29341 (reg!20825 r!14126) r!14126)))))

(assert (=> d!2328424 (= lt!2662384 e!4554362)))

(declare-fun c!1412260 () Bool)

(assert (=> d!2328424 (= c!1412260 (isEmpty!41857 (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329))))))

(assert (=> d!2328424 (validRegex!10914 (Concat!29341 (reg!20825 r!14126) r!14126))))

(assert (=> d!2328424 (= (matchR!9992 (Concat!29341 (reg!20825 r!14126) r!14126) (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329))) lt!2662384)))

(declare-fun b!7668226 () Bool)

(declare-fun res!3067137 () Bool)

(assert (=> b!7668226 (=> res!3067137 e!4554358)))

(assert (=> b!7668226 (= res!3067137 e!4554360)))

(declare-fun res!3067143 () Bool)

(assert (=> b!7668226 (=> (not res!3067143) (not e!4554360))))

(assert (=> b!7668226 (= res!3067143 lt!2662384)))

(declare-fun bm!705132 () Bool)

(assert (=> bm!705132 (= call!705137 (isEmpty!41857 (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329))))))

(declare-fun b!7668227 () Bool)

(assert (=> b!7668227 (= e!4554357 (= lt!2662384 call!705137))))

(declare-fun b!7668228 () Bool)

(assert (=> b!7668228 (= e!4554363 (not (= (head!15753 (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329))) (c!1412197 (Concat!29341 (reg!20825 r!14126) r!14126)))))))

(declare-fun b!7668229 () Bool)

(assert (=> b!7668229 (= e!4554362 (matchR!9992 (derivativeStep!5953 (Concat!29341 (reg!20825 r!14126) r!14126) (head!15753 (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329)))) (tail!15293 (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329)))))))

(declare-fun b!7668230 () Bool)

(assert (=> b!7668230 (= e!4554358 e!4554361)))

(declare-fun res!3067138 () Bool)

(assert (=> b!7668230 (=> (not res!3067138) (not e!4554361))))

(assert (=> b!7668230 (= res!3067138 (not lt!2662384))))

(assert (= (and d!2328424 c!1412260) b!7668222))

(assert (= (and d!2328424 (not c!1412260)) b!7668229))

(assert (= (and d!2328424 c!1412261) b!7668227))

(assert (= (and d!2328424 (not c!1412261)) b!7668218))

(assert (= (and b!7668218 c!1412262) b!7668225))

(assert (= (and b!7668218 (not c!1412262)) b!7668223))

(assert (= (and b!7668223 (not res!3067136)) b!7668226))

(assert (= (and b!7668226 res!3067143) b!7668221))

(assert (= (and b!7668221 res!3067142) b!7668219))

(assert (= (and b!7668219 res!3067141) b!7668217))

(assert (= (and b!7668226 (not res!3067137)) b!7668230))

(assert (= (and b!7668230 res!3067138) b!7668220))

(assert (= (and b!7668220 (not res!3067139)) b!7668224))

(assert (= (and b!7668224 (not res!3067140)) b!7668228))

(assert (= (or b!7668227 b!7668220 b!7668221) bm!705132))

(declare-fun m!8173252 () Bool)

(assert (=> b!7668222 m!8173252))

(assert (=> b!7668217 m!8173060))

(declare-fun m!8173254 () Bool)

(assert (=> b!7668217 m!8173254))

(assert (=> b!7668229 m!8173060))

(assert (=> b!7668229 m!8173254))

(assert (=> b!7668229 m!8173254))

(declare-fun m!8173256 () Bool)

(assert (=> b!7668229 m!8173256))

(assert (=> b!7668229 m!8173060))

(declare-fun m!8173258 () Bool)

(assert (=> b!7668229 m!8173258))

(assert (=> b!7668229 m!8173256))

(assert (=> b!7668229 m!8173258))

(declare-fun m!8173260 () Bool)

(assert (=> b!7668229 m!8173260))

(assert (=> b!7668228 m!8173060))

(assert (=> b!7668228 m!8173254))

(assert (=> bm!705132 m!8173060))

(declare-fun m!8173262 () Bool)

(assert (=> bm!705132 m!8173262))

(assert (=> b!7668224 m!8173060))

(assert (=> b!7668224 m!8173258))

(assert (=> b!7668224 m!8173258))

(declare-fun m!8173264 () Bool)

(assert (=> b!7668224 m!8173264))

(assert (=> d!2328424 m!8173060))

(assert (=> d!2328424 m!8173262))

(declare-fun m!8173266 () Bool)

(assert (=> d!2328424 m!8173266))

(assert (=> b!7668219 m!8173060))

(assert (=> b!7668219 m!8173258))

(assert (=> b!7668219 m!8173258))

(assert (=> b!7668219 m!8173264))

(assert (=> b!7667905 d!2328424))

(declare-fun d!2328426 () Bool)

(declare-fun e!4554376 () Bool)

(assert (=> d!2328426 e!4554376))

(declare-fun res!3067157 () Bool)

(assert (=> d!2328426 (=> (not res!3067157) (not e!4554376))))

(declare-fun lt!2662391 () List!73347)

(declare-fun content!15497 (List!73347) (Set C!41318))

(assert (=> d!2328426 (= res!3067157 (= (content!15497 lt!2662391) (set.union (content!15497 (_1!38030 lt!2662329)) (content!15497 (_2!38030 lt!2662329)))))))

(declare-fun e!4554375 () List!73347)

(assert (=> d!2328426 (= lt!2662391 e!4554375)))

(declare-fun c!1412268 () Bool)

(assert (=> d!2328426 (= c!1412268 (is-Nil!73223 (_1!38030 lt!2662329)))))

(assert (=> d!2328426 (= (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329)) lt!2662391)))

(declare-fun b!7668255 () Bool)

(declare-fun res!3067156 () Bool)

(assert (=> b!7668255 (=> (not res!3067156) (not e!4554376))))

(declare-fun size!42600 (List!73347) Int)

(assert (=> b!7668255 (= res!3067156 (= (size!42600 lt!2662391) (+ (size!42600 (_1!38030 lt!2662329)) (size!42600 (_2!38030 lt!2662329)))))))

(declare-fun b!7668253 () Bool)

(assert (=> b!7668253 (= e!4554375 (_2!38030 lt!2662329))))

(declare-fun b!7668254 () Bool)

(assert (=> b!7668254 (= e!4554375 (Cons!73223 (h!79671 (_1!38030 lt!2662329)) (++!17718 (t!388082 (_1!38030 lt!2662329)) (_2!38030 lt!2662329))))))

(declare-fun b!7668256 () Bool)

(assert (=> b!7668256 (= e!4554376 (or (not (= (_2!38030 lt!2662329) Nil!73223)) (= lt!2662391 (_1!38030 lt!2662329))))))

(assert (= (and d!2328426 c!1412268) b!7668253))

(assert (= (and d!2328426 (not c!1412268)) b!7668254))

(assert (= (and d!2328426 res!3067157) b!7668255))

(assert (= (and b!7668255 res!3067156) b!7668256))

(declare-fun m!8173284 () Bool)

(assert (=> d!2328426 m!8173284))

(declare-fun m!8173286 () Bool)

(assert (=> d!2328426 m!8173286))

(declare-fun m!8173288 () Bool)

(assert (=> d!2328426 m!8173288))

(declare-fun m!8173290 () Bool)

(assert (=> b!7668255 m!8173290))

(declare-fun m!8173292 () Bool)

(assert (=> b!7668255 m!8173292))

(declare-fun m!8173294 () Bool)

(assert (=> b!7668255 m!8173294))

(declare-fun m!8173296 () Bool)

(assert (=> b!7668254 m!8173296))

(assert (=> b!7667905 d!2328426))

(declare-fun d!2328432 () Bool)

(assert (=> d!2328432 (matchR!9992 (Concat!29341 (reg!20825 r!14126) r!14126) (++!17718 (_1!38030 lt!2662329) (_2!38030 lt!2662329)))))

(declare-fun lt!2662395 () Unit!168004)

(declare-fun choose!59081 (Regex!20496 Regex!20496 List!73347 List!73347 List!73347) Unit!168004)

(assert (=> d!2328432 (= lt!2662395 (choose!59081 (reg!20825 r!14126) r!14126 (_1!38030 lt!2662329) (_2!38030 lt!2662329) s!9605))))

(assert (=> d!2328432 (validRegex!10914 (reg!20825 r!14126))))

(assert (=> d!2328432 (= (lemmaFindSeparationIsDefinedThenConcatMatches!183 (reg!20825 r!14126) r!14126 (_1!38030 lt!2662329) (_2!38030 lt!2662329) s!9605) lt!2662395)))

(declare-fun bs!1946376 () Bool)

(assert (= bs!1946376 d!2328432))

(assert (=> bs!1946376 m!8173060))

(assert (=> bs!1946376 m!8173060))

(assert (=> bs!1946376 m!8173062))

(declare-fun m!8173310 () Bool)

(assert (=> bs!1946376 m!8173310))

(assert (=> bs!1946376 m!8173168))

(assert (=> b!7667905 d!2328432))

(declare-fun e!4554386 () Bool)

(assert (=> b!7667907 (= tp!2243863 e!4554386)))

(declare-fun b!7668281 () Bool)

(assert (=> b!7668281 (= e!4554386 tp_is_empty!51347)))

(declare-fun b!7668284 () Bool)

(declare-fun tp!2243898 () Bool)

(declare-fun tp!2243896 () Bool)

(assert (=> b!7668284 (= e!4554386 (and tp!2243898 tp!2243896))))

(declare-fun b!7668282 () Bool)

(declare-fun tp!2243900 () Bool)

(declare-fun tp!2243897 () Bool)

(assert (=> b!7668282 (= e!4554386 (and tp!2243900 tp!2243897))))

(declare-fun b!7668283 () Bool)

(declare-fun tp!2243899 () Bool)

(assert (=> b!7668283 (= e!4554386 tp!2243899)))

(assert (= (and b!7667907 (is-ElementMatch!20496 (regOne!41504 r!14126))) b!7668281))

(assert (= (and b!7667907 (is-Concat!29341 (regOne!41504 r!14126))) b!7668282))

(assert (= (and b!7667907 (is-Star!20496 (regOne!41504 r!14126))) b!7668283))

(assert (= (and b!7667907 (is-Union!20496 (regOne!41504 r!14126))) b!7668284))

(declare-fun e!4554387 () Bool)

(assert (=> b!7667907 (= tp!2243862 e!4554387)))

(declare-fun b!7668285 () Bool)

(assert (=> b!7668285 (= e!4554387 tp_is_empty!51347)))

(declare-fun b!7668288 () Bool)

(declare-fun tp!2243903 () Bool)

(declare-fun tp!2243901 () Bool)

(assert (=> b!7668288 (= e!4554387 (and tp!2243903 tp!2243901))))

(declare-fun b!7668286 () Bool)

(declare-fun tp!2243905 () Bool)

(declare-fun tp!2243902 () Bool)

(assert (=> b!7668286 (= e!4554387 (and tp!2243905 tp!2243902))))

(declare-fun b!7668287 () Bool)

(declare-fun tp!2243904 () Bool)

(assert (=> b!7668287 (= e!4554387 tp!2243904)))

(assert (= (and b!7667907 (is-ElementMatch!20496 (regTwo!41504 r!14126))) b!7668285))

(assert (= (and b!7667907 (is-Concat!29341 (regTwo!41504 r!14126))) b!7668286))

(assert (= (and b!7667907 (is-Star!20496 (regTwo!41504 r!14126))) b!7668287))

(assert (= (and b!7667907 (is-Union!20496 (regTwo!41504 r!14126))) b!7668288))

(declare-fun e!4554388 () Bool)

(assert (=> b!7667908 (= tp!2243866 e!4554388)))

(declare-fun b!7668289 () Bool)

(assert (=> b!7668289 (= e!4554388 tp_is_empty!51347)))

(declare-fun b!7668292 () Bool)

(declare-fun tp!2243908 () Bool)

(declare-fun tp!2243906 () Bool)

(assert (=> b!7668292 (= e!4554388 (and tp!2243908 tp!2243906))))

(declare-fun b!7668290 () Bool)

(declare-fun tp!2243910 () Bool)

(declare-fun tp!2243907 () Bool)

(assert (=> b!7668290 (= e!4554388 (and tp!2243910 tp!2243907))))

(declare-fun b!7668291 () Bool)

(declare-fun tp!2243909 () Bool)

(assert (=> b!7668291 (= e!4554388 tp!2243909)))

(assert (= (and b!7667908 (is-ElementMatch!20496 (reg!20825 r!14126))) b!7668289))

(assert (= (and b!7667908 (is-Concat!29341 (reg!20825 r!14126))) b!7668290))

(assert (= (and b!7667908 (is-Star!20496 (reg!20825 r!14126))) b!7668291))

(assert (= (and b!7667908 (is-Union!20496 (reg!20825 r!14126))) b!7668292))

(declare-fun e!4554389 () Bool)

(assert (=> b!7667899 (= tp!2243865 e!4554389)))

(declare-fun b!7668293 () Bool)

(assert (=> b!7668293 (= e!4554389 tp_is_empty!51347)))

(declare-fun b!7668296 () Bool)

(declare-fun tp!2243913 () Bool)

(declare-fun tp!2243911 () Bool)

(assert (=> b!7668296 (= e!4554389 (and tp!2243913 tp!2243911))))

(declare-fun b!7668294 () Bool)

(declare-fun tp!2243915 () Bool)

(declare-fun tp!2243912 () Bool)

(assert (=> b!7668294 (= e!4554389 (and tp!2243915 tp!2243912))))

(declare-fun b!7668295 () Bool)

(declare-fun tp!2243914 () Bool)

(assert (=> b!7668295 (= e!4554389 tp!2243914)))

(assert (= (and b!7667899 (is-ElementMatch!20496 (regOne!41505 r!14126))) b!7668293))

(assert (= (and b!7667899 (is-Concat!29341 (regOne!41505 r!14126))) b!7668294))

(assert (= (and b!7667899 (is-Star!20496 (regOne!41505 r!14126))) b!7668295))

(assert (= (and b!7667899 (is-Union!20496 (regOne!41505 r!14126))) b!7668296))

(declare-fun e!4554390 () Bool)

(assert (=> b!7667899 (= tp!2243864 e!4554390)))

(declare-fun b!7668297 () Bool)

(assert (=> b!7668297 (= e!4554390 tp_is_empty!51347)))

(declare-fun b!7668300 () Bool)

(declare-fun tp!2243918 () Bool)

(declare-fun tp!2243916 () Bool)

(assert (=> b!7668300 (= e!4554390 (and tp!2243918 tp!2243916))))

(declare-fun b!7668298 () Bool)

(declare-fun tp!2243920 () Bool)

(declare-fun tp!2243917 () Bool)

(assert (=> b!7668298 (= e!4554390 (and tp!2243920 tp!2243917))))

(declare-fun b!7668299 () Bool)

(declare-fun tp!2243919 () Bool)

(assert (=> b!7668299 (= e!4554390 tp!2243919)))

(assert (= (and b!7667899 (is-ElementMatch!20496 (regTwo!41505 r!14126))) b!7668297))

(assert (= (and b!7667899 (is-Concat!29341 (regTwo!41505 r!14126))) b!7668298))

(assert (= (and b!7667899 (is-Star!20496 (regTwo!41505 r!14126))) b!7668299))

(assert (= (and b!7667899 (is-Union!20496 (regTwo!41505 r!14126))) b!7668300))

(declare-fun b!7668305 () Bool)

(declare-fun e!4554393 () Bool)

(declare-fun tp!2243923 () Bool)

(assert (=> b!7668305 (= e!4554393 (and tp_is_empty!51347 tp!2243923))))

(assert (=> b!7667904 (= tp!2243867 e!4554393)))

(assert (= (and b!7667904 (is-Cons!73223 (t!388082 s!9605))) b!7668305))

(push 1)

(assert (not b!7668098))

(assert (not b!7668290))

(assert (not b!7668103))

(assert (not b!7668295))

(assert (not b!7668093))

(assert (not d!2328412))

(assert (not b!7668171))

(assert (not b!7668291))

(assert (not b!7668294))

(assert (not b!7668090))

(assert (not b!7668222))

(assert (not d!2328392))

(assert (not d!2328406))

(assert tp_is_empty!51347)

(assert (not bm!705132))

(assert (not b!7668229))

(assert (not b!7668284))

(assert (not b!7668071))

(assert (not d!2328400))

(assert (not b!7668091))

(assert (not b!7668298))

(assert (not b!7668300))

(assert (not b!7667993))

(assert (not b!7667982))

(assert (not b!7668228))

(assert (not b!7668169))

(assert (not b!7668102))

(assert (not b!7668305))

(assert (not b!7668224))

(assert (not d!2328426))

(assert (not d!2328410))

(assert (not bm!705118))

(assert (not b!7668066))

(assert (not b!7668173))

(assert (not bm!705130))

(assert (not bm!705131))

(assert (not d!2328388))

(assert (not b!7668299))

(assert (not b!7668286))

(assert (not b!7668296))

(assert (not b!7668170))

(assert (not b!7668287))

(assert (not b!7667987))

(assert (not b!7668217))

(assert (not b!7668065))

(assert (not d!2328432))

(assert (not b!7668068))

(assert (not bm!705119))

(assert (not b!7667994))

(assert (not bm!705115))

(assert (not b!7668282))

(assert (not b!7668288))

(assert (not b!7668255))

(assert (not b!7668078))

(assert (not b!7668073))

(assert (not b!7668056))

(assert (not d!2328408))

(assert (not bm!705116))

(assert (not b!7668168))

(assert (not b!7668283))

(assert (not bm!705100))

(assert (not b!7667984))

(assert (not b!7668081))

(assert (not bm!705117))

(assert (not b!7668292))

(assert (not b!7668165))

(assert (not b!7668213))

(assert (not bm!705114))

(assert (not b!7668096))

(assert (not b!7668254))

(assert (not d!2328398))

(assert (not d!2328416))

(assert (not d!2328424))

(assert (not b!7668219))

(assert (not b!7667989))

(assert (not b!7668077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

