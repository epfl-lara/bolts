; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664338 () Bool)

(assert start!664338)

(declare-fun b!6892447 () Bool)

(assert (=> b!6892447 true))

(assert (=> b!6892447 true))

(assert (=> b!6892447 true))

(declare-fun lambda!390690 () Int)

(declare-fun lambda!390689 () Int)

(assert (=> b!6892447 (not (= lambda!390690 lambda!390689))))

(assert (=> b!6892447 true))

(assert (=> b!6892447 true))

(assert (=> b!6892447 true))

(declare-fun b!6892436 () Bool)

(declare-fun res!2810062 () Bool)

(declare-fun e!4151956 () Bool)

(assert (=> b!6892436 (=> res!2810062 e!4151956)))

(declare-datatypes ((C!33908 0))(
  ( (C!33909 (val!26656 Int)) )
))
(declare-datatypes ((Regex!16819 0))(
  ( (ElementMatch!16819 (c!1281353 C!33908)) (Concat!25664 (regOne!34150 Regex!16819) (regTwo!34150 Regex!16819)) (EmptyExpr!16819) (Star!16819 (reg!17148 Regex!16819)) (EmptyLang!16819) (Union!16819 (regOne!34151 Regex!16819) (regTwo!34151 Regex!16819)) )
))
(declare-fun r1!6342 () Regex!16819)

(declare-fun lt!2463140 () Regex!16819)

(declare-datatypes ((List!66576 0))(
  ( (Nil!66452) (Cons!66452 (h!72900 C!33908) (t!380319 List!66576)) )
))
(declare-fun s!14361 () List!66576)

(declare-datatypes ((tuple2!67372 0))(
  ( (tuple2!67373 (_1!36989 List!66576) (_2!36989 List!66576)) )
))
(declare-datatypes ((Option!16598 0))(
  ( (None!16597) (Some!16597 (v!52869 tuple2!67372)) )
))
(declare-fun isDefined!13301 (Option!16598) Bool)

(declare-fun findConcatSeparation!3012 (Regex!16819 Regex!16819 List!66576 List!66576 List!66576) Option!16598)

(assert (=> b!6892436 (= res!2810062 (not (isDefined!13301 (findConcatSeparation!3012 r1!6342 lt!2463140 Nil!66452 s!14361 s!14361))))))

(declare-fun b!6892437 () Bool)

(declare-fun e!4151958 () Bool)

(declare-fun tp!1896767 () Bool)

(declare-fun tp!1896769 () Bool)

(assert (=> b!6892437 (= e!4151958 (and tp!1896767 tp!1896769))))

(declare-fun b!6892438 () Bool)

(declare-fun e!4151955 () Bool)

(assert (=> b!6892438 (= e!4151955 (not e!4151956))))

(declare-fun res!2810063 () Bool)

(assert (=> b!6892438 (=> res!2810063 e!4151956)))

(declare-fun lt!2463144 () Bool)

(assert (=> b!6892438 (= res!2810063 lt!2463144)))

(declare-fun lt!2463143 () Regex!16819)

(declare-fun matchR!8964 (Regex!16819 List!66576) Bool)

(declare-fun matchRSpec!3882 (Regex!16819 List!66576) Bool)

(assert (=> b!6892438 (= (matchR!8964 lt!2463143 s!14361) (matchRSpec!3882 lt!2463143 s!14361))))

(declare-datatypes ((Unit!160358 0))(
  ( (Unit!160359) )
))
(declare-fun lt!2463146 () Unit!160358)

(declare-fun mainMatchTheorem!3882 (Regex!16819 List!66576) Unit!160358)

(assert (=> b!6892438 (= lt!2463146 (mainMatchTheorem!3882 lt!2463143 s!14361))))

(declare-fun lt!2463147 () Regex!16819)

(assert (=> b!6892438 (= lt!2463144 (matchRSpec!3882 lt!2463147 s!14361))))

(assert (=> b!6892438 (= lt!2463144 (matchR!8964 lt!2463147 s!14361))))

(declare-fun lt!2463142 () Unit!160358)

(assert (=> b!6892438 (= lt!2463142 (mainMatchTheorem!3882 lt!2463147 s!14361))))

(assert (=> b!6892438 (= lt!2463143 (Concat!25664 r1!6342 lt!2463140))))

(declare-fun r2!6280 () Regex!16819)

(declare-fun r3!135 () Regex!16819)

(assert (=> b!6892438 (= lt!2463140 (Concat!25664 r2!6280 r3!135))))

(assert (=> b!6892438 (= lt!2463147 (Concat!25664 (Concat!25664 r1!6342 r2!6280) r3!135))))

(declare-fun b!6892439 () Bool)

(declare-fun e!4151957 () Bool)

(declare-fun tp!1896761 () Bool)

(declare-fun tp!1896766 () Bool)

(assert (=> b!6892439 (= e!4151957 (and tp!1896761 tp!1896766))))

(declare-fun b!6892440 () Bool)

(declare-fun e!4151960 () Bool)

(declare-fun tp!1896760 () Bool)

(declare-fun tp!1896770 () Bool)

(assert (=> b!6892440 (= e!4151960 (and tp!1896760 tp!1896770))))

(declare-fun b!6892441 () Bool)

(declare-fun tp_is_empty!42863 () Bool)

(assert (=> b!6892441 (= e!4151957 tp_is_empty!42863)))

(declare-fun b!6892442 () Bool)

(assert (=> b!6892442 (= e!4151960 tp_is_empty!42863)))

(declare-fun res!2810064 () Bool)

(assert (=> start!664338 (=> (not res!2810064) (not e!4151955))))

(declare-fun validRegex!8527 (Regex!16819) Bool)

(assert (=> start!664338 (= res!2810064 (validRegex!8527 r1!6342))))

(assert (=> start!664338 e!4151955))

(assert (=> start!664338 e!4151960))

(assert (=> start!664338 e!4151957))

(assert (=> start!664338 e!4151958))

(declare-fun e!4151959 () Bool)

(assert (=> start!664338 e!4151959))

(declare-fun b!6892443 () Bool)

(declare-fun tp!1896765 () Bool)

(assert (=> b!6892443 (= e!4151957 tp!1896765)))

(declare-fun b!6892444 () Bool)

(declare-fun res!2810065 () Bool)

(assert (=> b!6892444 (=> (not res!2810065) (not e!4151955))))

(assert (=> b!6892444 (= res!2810065 (validRegex!8527 r2!6280))))

(declare-fun b!6892445 () Bool)

(assert (=> b!6892445 (= e!4151958 tp_is_empty!42863)))

(declare-fun b!6892446 () Bool)

(declare-fun tp!1896775 () Bool)

(assert (=> b!6892446 (= e!4151958 tp!1896775)))

(assert (=> b!6892447 (= e!4151956 (validRegex!8527 lt!2463140))))

(declare-fun Exists!3827 (Int) Bool)

(assert (=> b!6892447 (= (Exists!3827 lambda!390689) (Exists!3827 lambda!390690))))

(declare-fun lt!2463141 () Unit!160358)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2300 (Regex!16819 Regex!16819 List!66576) Unit!160358)

(assert (=> b!6892447 (= lt!2463141 (lemmaExistCutMatchRandMatchRSpecEquivalent!2300 r1!6342 lt!2463140 s!14361))))

(assert (=> b!6892447 (Exists!3827 lambda!390689)))

(declare-fun lt!2463145 () Unit!160358)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2774 (Regex!16819 Regex!16819 List!66576) Unit!160358)

(assert (=> b!6892447 (= lt!2463145 (lemmaFindConcatSeparationEquivalentToExists!2774 r1!6342 lt!2463140 s!14361))))

(declare-fun b!6892448 () Bool)

(declare-fun tp!1896763 () Bool)

(assert (=> b!6892448 (= e!4151960 tp!1896763)))

(declare-fun b!6892449 () Bool)

(declare-fun tp!1896764 () Bool)

(declare-fun tp!1896773 () Bool)

(assert (=> b!6892449 (= e!4151958 (and tp!1896764 tp!1896773))))

(declare-fun b!6892450 () Bool)

(declare-fun tp!1896771 () Bool)

(assert (=> b!6892450 (= e!4151959 (and tp_is_empty!42863 tp!1896771))))

(declare-fun b!6892451 () Bool)

(declare-fun res!2810066 () Bool)

(assert (=> b!6892451 (=> (not res!2810066) (not e!4151955))))

(assert (=> b!6892451 (= res!2810066 (validRegex!8527 r3!135))))

(declare-fun b!6892452 () Bool)

(declare-fun tp!1896768 () Bool)

(declare-fun tp!1896774 () Bool)

(assert (=> b!6892452 (= e!4151957 (and tp!1896768 tp!1896774))))

(declare-fun b!6892453 () Bool)

(declare-fun tp!1896762 () Bool)

(declare-fun tp!1896772 () Bool)

(assert (=> b!6892453 (= e!4151960 (and tp!1896762 tp!1896772))))

(assert (= (and start!664338 res!2810064) b!6892444))

(assert (= (and b!6892444 res!2810065) b!6892451))

(assert (= (and b!6892451 res!2810066) b!6892438))

(assert (= (and b!6892438 (not res!2810063)) b!6892436))

(assert (= (and b!6892436 (not res!2810062)) b!6892447))

(get-info :version)

(assert (= (and start!664338 ((_ is ElementMatch!16819) r1!6342)) b!6892442))

(assert (= (and start!664338 ((_ is Concat!25664) r1!6342)) b!6892440))

(assert (= (and start!664338 ((_ is Star!16819) r1!6342)) b!6892448))

(assert (= (and start!664338 ((_ is Union!16819) r1!6342)) b!6892453))

(assert (= (and start!664338 ((_ is ElementMatch!16819) r2!6280)) b!6892441))

(assert (= (and start!664338 ((_ is Concat!25664) r2!6280)) b!6892452))

(assert (= (and start!664338 ((_ is Star!16819) r2!6280)) b!6892443))

(assert (= (and start!664338 ((_ is Union!16819) r2!6280)) b!6892439))

(assert (= (and start!664338 ((_ is ElementMatch!16819) r3!135)) b!6892445))

(assert (= (and start!664338 ((_ is Concat!25664) r3!135)) b!6892437))

(assert (= (and start!664338 ((_ is Star!16819) r3!135)) b!6892446))

(assert (= (and start!664338 ((_ is Union!16819) r3!135)) b!6892449))

(assert (= (and start!664338 ((_ is Cons!66452) s!14361)) b!6892450))

(declare-fun m!7613440 () Bool)

(assert (=> start!664338 m!7613440))

(declare-fun m!7613442 () Bool)

(assert (=> b!6892451 m!7613442))

(declare-fun m!7613444 () Bool)

(assert (=> b!6892436 m!7613444))

(assert (=> b!6892436 m!7613444))

(declare-fun m!7613446 () Bool)

(assert (=> b!6892436 m!7613446))

(declare-fun m!7613448 () Bool)

(assert (=> b!6892447 m!7613448))

(declare-fun m!7613450 () Bool)

(assert (=> b!6892447 m!7613450))

(declare-fun m!7613452 () Bool)

(assert (=> b!6892447 m!7613452))

(assert (=> b!6892447 m!7613450))

(declare-fun m!7613454 () Bool)

(assert (=> b!6892447 m!7613454))

(declare-fun m!7613456 () Bool)

(assert (=> b!6892447 m!7613456))

(declare-fun m!7613458 () Bool)

(assert (=> b!6892444 m!7613458))

(declare-fun m!7613460 () Bool)

(assert (=> b!6892438 m!7613460))

(declare-fun m!7613462 () Bool)

(assert (=> b!6892438 m!7613462))

(declare-fun m!7613464 () Bool)

(assert (=> b!6892438 m!7613464))

(declare-fun m!7613466 () Bool)

(assert (=> b!6892438 m!7613466))

(declare-fun m!7613468 () Bool)

(assert (=> b!6892438 m!7613468))

(declare-fun m!7613470 () Bool)

(assert (=> b!6892438 m!7613470))

(check-sat (not b!6892449) (not b!6892444) (not b!6892448) (not b!6892453) (not b!6892437) (not b!6892436) (not start!664338) (not b!6892452) (not b!6892451) (not b!6892438) (not b!6892439) tp_is_empty!42863 (not b!6892447) (not b!6892446) (not b!6892450) (not b!6892443) (not b!6892440))
(check-sat)
(get-model)

(declare-fun d!2161193 () Bool)

(declare-fun isEmpty!38700 (Option!16598) Bool)

(assert (=> d!2161193 (= (isDefined!13301 (findConcatSeparation!3012 r1!6342 lt!2463140 Nil!66452 s!14361 s!14361)) (not (isEmpty!38700 (findConcatSeparation!3012 r1!6342 lt!2463140 Nil!66452 s!14361 s!14361))))))

(declare-fun bs!1840496 () Bool)

(assert (= bs!1840496 d!2161193))

(assert (=> bs!1840496 m!7613444))

(declare-fun m!7613472 () Bool)

(assert (=> bs!1840496 m!7613472))

(assert (=> b!6892436 d!2161193))

(declare-fun b!6892476 () Bool)

(declare-fun res!2810078 () Bool)

(declare-fun e!4151973 () Bool)

(assert (=> b!6892476 (=> (not res!2810078) (not e!4151973))))

(declare-fun lt!2463158 () Option!16598)

(declare-fun get!23178 (Option!16598) tuple2!67372)

(assert (=> b!6892476 (= res!2810078 (matchR!8964 r1!6342 (_1!36989 (get!23178 lt!2463158))))))

(declare-fun b!6892477 () Bool)

(declare-fun res!2810081 () Bool)

(assert (=> b!6892477 (=> (not res!2810081) (not e!4151973))))

(assert (=> b!6892477 (= res!2810081 (matchR!8964 lt!2463140 (_2!36989 (get!23178 lt!2463158))))))

(declare-fun b!6892478 () Bool)

(declare-fun ++!14887 (List!66576 List!66576) List!66576)

(assert (=> b!6892478 (= e!4151973 (= (++!14887 (_1!36989 (get!23178 lt!2463158)) (_2!36989 (get!23178 lt!2463158))) s!14361))))

(declare-fun b!6892479 () Bool)

(declare-fun e!4151972 () Option!16598)

(declare-fun e!4151975 () Option!16598)

(assert (=> b!6892479 (= e!4151972 e!4151975)))

(declare-fun c!1281359 () Bool)

(assert (=> b!6892479 (= c!1281359 ((_ is Nil!66452) s!14361))))

(declare-fun b!6892480 () Bool)

(declare-fun lt!2463160 () Unit!160358)

(declare-fun lt!2463159 () Unit!160358)

(assert (=> b!6892480 (= lt!2463160 lt!2463159)))

(assert (=> b!6892480 (= (++!14887 (++!14887 Nil!66452 (Cons!66452 (h!72900 s!14361) Nil!66452)) (t!380319 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2780 (List!66576 C!33908 List!66576 List!66576) Unit!160358)

(assert (=> b!6892480 (= lt!2463159 (lemmaMoveElementToOtherListKeepsConcatEq!2780 Nil!66452 (h!72900 s!14361) (t!380319 s!14361) s!14361))))

(assert (=> b!6892480 (= e!4151975 (findConcatSeparation!3012 r1!6342 lt!2463140 (++!14887 Nil!66452 (Cons!66452 (h!72900 s!14361) Nil!66452)) (t!380319 s!14361) s!14361))))

(declare-fun b!6892481 () Bool)

(declare-fun e!4151971 () Bool)

(assert (=> b!6892481 (= e!4151971 (matchR!8964 lt!2463140 s!14361))))

(declare-fun d!2161195 () Bool)

(declare-fun e!4151974 () Bool)

(assert (=> d!2161195 e!4151974))

(declare-fun res!2810080 () Bool)

(assert (=> d!2161195 (=> res!2810080 e!4151974)))

(assert (=> d!2161195 (= res!2810080 e!4151973)))

(declare-fun res!2810079 () Bool)

(assert (=> d!2161195 (=> (not res!2810079) (not e!4151973))))

(assert (=> d!2161195 (= res!2810079 (isDefined!13301 lt!2463158))))

(assert (=> d!2161195 (= lt!2463158 e!4151972)))

(declare-fun c!1281358 () Bool)

(assert (=> d!2161195 (= c!1281358 e!4151971)))

(declare-fun res!2810077 () Bool)

(assert (=> d!2161195 (=> (not res!2810077) (not e!4151971))))

(assert (=> d!2161195 (= res!2810077 (matchR!8964 r1!6342 Nil!66452))))

(assert (=> d!2161195 (validRegex!8527 r1!6342)))

(assert (=> d!2161195 (= (findConcatSeparation!3012 r1!6342 lt!2463140 Nil!66452 s!14361 s!14361) lt!2463158)))

(declare-fun b!6892482 () Bool)

(assert (=> b!6892482 (= e!4151972 (Some!16597 (tuple2!67373 Nil!66452 s!14361)))))

(declare-fun b!6892483 () Bool)

(assert (=> b!6892483 (= e!4151975 None!16597)))

(declare-fun b!6892484 () Bool)

(assert (=> b!6892484 (= e!4151974 (not (isDefined!13301 lt!2463158)))))

(assert (= (and d!2161195 res!2810077) b!6892481))

(assert (= (and d!2161195 c!1281358) b!6892482))

(assert (= (and d!2161195 (not c!1281358)) b!6892479))

(assert (= (and b!6892479 c!1281359) b!6892483))

(assert (= (and b!6892479 (not c!1281359)) b!6892480))

(assert (= (and d!2161195 res!2810079) b!6892476))

(assert (= (and b!6892476 res!2810078) b!6892477))

(assert (= (and b!6892477 res!2810081) b!6892478))

(assert (= (and d!2161195 (not res!2810080)) b!6892484))

(declare-fun m!7613482 () Bool)

(assert (=> b!6892478 m!7613482))

(declare-fun m!7613484 () Bool)

(assert (=> b!6892478 m!7613484))

(assert (=> b!6892477 m!7613482))

(declare-fun m!7613486 () Bool)

(assert (=> b!6892477 m!7613486))

(declare-fun m!7613488 () Bool)

(assert (=> b!6892480 m!7613488))

(assert (=> b!6892480 m!7613488))

(declare-fun m!7613490 () Bool)

(assert (=> b!6892480 m!7613490))

(declare-fun m!7613492 () Bool)

(assert (=> b!6892480 m!7613492))

(assert (=> b!6892480 m!7613488))

(declare-fun m!7613494 () Bool)

(assert (=> b!6892480 m!7613494))

(declare-fun m!7613496 () Bool)

(assert (=> b!6892484 m!7613496))

(assert (=> b!6892476 m!7613482))

(declare-fun m!7613498 () Bool)

(assert (=> b!6892476 m!7613498))

(declare-fun m!7613500 () Bool)

(assert (=> b!6892481 m!7613500))

(assert (=> d!2161195 m!7613496))

(declare-fun m!7613502 () Bool)

(assert (=> d!2161195 m!7613502))

(assert (=> d!2161195 m!7613440))

(assert (=> b!6892436 d!2161195))

(declare-fun d!2161203 () Bool)

(declare-fun choose!51320 (Int) Bool)

(assert (=> d!2161203 (= (Exists!3827 lambda!390690) (choose!51320 lambda!390690))))

(declare-fun bs!1840499 () Bool)

(assert (= bs!1840499 d!2161203))

(declare-fun m!7613504 () Bool)

(assert (=> bs!1840499 m!7613504))

(assert (=> b!6892447 d!2161203))

(declare-fun bs!1840500 () Bool)

(declare-fun d!2161205 () Bool)

(assert (= bs!1840500 (and d!2161205 b!6892447)))

(declare-fun lambda!390697 () Int)

(assert (=> bs!1840500 (= lambda!390697 lambda!390689)))

(assert (=> bs!1840500 (not (= lambda!390697 lambda!390690))))

(assert (=> d!2161205 true))

(assert (=> d!2161205 true))

(assert (=> d!2161205 true))

(assert (=> d!2161205 (= (isDefined!13301 (findConcatSeparation!3012 r1!6342 lt!2463140 Nil!66452 s!14361 s!14361)) (Exists!3827 lambda!390697))))

(declare-fun lt!2463163 () Unit!160358)

(declare-fun choose!51322 (Regex!16819 Regex!16819 List!66576) Unit!160358)

(assert (=> d!2161205 (= lt!2463163 (choose!51322 r1!6342 lt!2463140 s!14361))))

(assert (=> d!2161205 (validRegex!8527 r1!6342)))

(assert (=> d!2161205 (= (lemmaFindConcatSeparationEquivalentToExists!2774 r1!6342 lt!2463140 s!14361) lt!2463163)))

(declare-fun bs!1840501 () Bool)

(assert (= bs!1840501 d!2161205))

(declare-fun m!7613506 () Bool)

(assert (=> bs!1840501 m!7613506))

(assert (=> bs!1840501 m!7613444))

(assert (=> bs!1840501 m!7613446))

(assert (=> bs!1840501 m!7613444))

(declare-fun m!7613508 () Bool)

(assert (=> bs!1840501 m!7613508))

(assert (=> bs!1840501 m!7613440))

(assert (=> b!6892447 d!2161205))

(declare-fun b!6892550 () Bool)

(declare-fun e!4152022 () Bool)

(declare-fun e!4152021 () Bool)

(assert (=> b!6892550 (= e!4152022 e!4152021)))

(declare-fun c!1281376 () Bool)

(assert (=> b!6892550 (= c!1281376 ((_ is Star!16819) lt!2463140))))

(declare-fun b!6892551 () Bool)

(declare-fun e!4152017 () Bool)

(declare-fun call!627135 () Bool)

(assert (=> b!6892551 (= e!4152017 call!627135)))

(declare-fun b!6892552 () Bool)

(declare-fun e!4152019 () Bool)

(declare-fun call!627136 () Bool)

(assert (=> b!6892552 (= e!4152019 call!627136)))

(declare-fun b!6892553 () Bool)

(declare-fun e!4152023 () Bool)

(assert (=> b!6892553 (= e!4152023 e!4152017)))

(declare-fun res!2810116 () Bool)

(assert (=> b!6892553 (=> (not res!2810116) (not e!4152017))))

(declare-fun call!627134 () Bool)

(assert (=> b!6892553 (= res!2810116 call!627134)))

(declare-fun d!2161207 () Bool)

(declare-fun res!2810117 () Bool)

(assert (=> d!2161207 (=> res!2810117 e!4152022)))

(assert (=> d!2161207 (= res!2810117 ((_ is ElementMatch!16819) lt!2463140))))

(assert (=> d!2161207 (= (validRegex!8527 lt!2463140) e!4152022)))

(declare-fun bm!627129 () Bool)

(declare-fun c!1281377 () Bool)

(assert (=> bm!627129 (= call!627135 (validRegex!8527 (ite c!1281377 (regOne!34151 lt!2463140) (regTwo!34150 lt!2463140))))))

(declare-fun b!6892554 () Bool)

(declare-fun res!2810115 () Bool)

(declare-fun e!4152018 () Bool)

(assert (=> b!6892554 (=> (not res!2810115) (not e!4152018))))

(assert (=> b!6892554 (= res!2810115 call!627135)))

(declare-fun e!4152020 () Bool)

(assert (=> b!6892554 (= e!4152020 e!4152018)))

(declare-fun b!6892555 () Bool)

(assert (=> b!6892555 (= e!4152021 e!4152020)))

(assert (=> b!6892555 (= c!1281377 ((_ is Union!16819) lt!2463140))))

(declare-fun bm!627130 () Bool)

(assert (=> bm!627130 (= call!627134 call!627136)))

(declare-fun bm!627131 () Bool)

(assert (=> bm!627131 (= call!627136 (validRegex!8527 (ite c!1281376 (reg!17148 lt!2463140) (ite c!1281377 (regTwo!34151 lt!2463140) (regOne!34150 lt!2463140)))))))

(declare-fun b!6892556 () Bool)

(assert (=> b!6892556 (= e!4152018 call!627134)))

(declare-fun b!6892557 () Bool)

(declare-fun res!2810118 () Bool)

(assert (=> b!6892557 (=> res!2810118 e!4152023)))

(assert (=> b!6892557 (= res!2810118 (not ((_ is Concat!25664) lt!2463140)))))

(assert (=> b!6892557 (= e!4152020 e!4152023)))

(declare-fun b!6892558 () Bool)

(assert (=> b!6892558 (= e!4152021 e!4152019)))

(declare-fun res!2810119 () Bool)

(declare-fun nullable!6693 (Regex!16819) Bool)

(assert (=> b!6892558 (= res!2810119 (not (nullable!6693 (reg!17148 lt!2463140))))))

(assert (=> b!6892558 (=> (not res!2810119) (not e!4152019))))

(assert (= (and d!2161207 (not res!2810117)) b!6892550))

(assert (= (and b!6892550 c!1281376) b!6892558))

(assert (= (and b!6892550 (not c!1281376)) b!6892555))

(assert (= (and b!6892558 res!2810119) b!6892552))

(assert (= (and b!6892555 c!1281377) b!6892554))

(assert (= (and b!6892555 (not c!1281377)) b!6892557))

(assert (= (and b!6892554 res!2810115) b!6892556))

(assert (= (and b!6892557 (not res!2810118)) b!6892553))

(assert (= (and b!6892553 res!2810116) b!6892551))

(assert (= (or b!6892554 b!6892551) bm!627129))

(assert (= (or b!6892556 b!6892553) bm!627130))

(assert (= (or b!6892552 bm!627130) bm!627131))

(declare-fun m!7613518 () Bool)

(assert (=> bm!627129 m!7613518))

(declare-fun m!7613520 () Bool)

(assert (=> bm!627131 m!7613520))

(declare-fun m!7613522 () Bool)

(assert (=> b!6892558 m!7613522))

(assert (=> b!6892447 d!2161207))

(declare-fun bs!1840505 () Bool)

(declare-fun d!2161211 () Bool)

(assert (= bs!1840505 (and d!2161211 b!6892447)))

(declare-fun lambda!390704 () Int)

(assert (=> bs!1840505 (= lambda!390704 lambda!390689)))

(assert (=> bs!1840505 (not (= lambda!390704 lambda!390690))))

(declare-fun bs!1840506 () Bool)

(assert (= bs!1840506 (and d!2161211 d!2161205)))

(assert (=> bs!1840506 (= lambda!390704 lambda!390697)))

(assert (=> d!2161211 true))

(assert (=> d!2161211 true))

(assert (=> d!2161211 true))

(declare-fun lambda!390705 () Int)

(assert (=> bs!1840505 (not (= lambda!390705 lambda!390689))))

(assert (=> bs!1840505 (= lambda!390705 lambda!390690)))

(assert (=> bs!1840506 (not (= lambda!390705 lambda!390697))))

(declare-fun bs!1840507 () Bool)

(assert (= bs!1840507 d!2161211))

(assert (=> bs!1840507 (not (= lambda!390705 lambda!390704))))

(assert (=> d!2161211 true))

(assert (=> d!2161211 true))

(assert (=> d!2161211 true))

(assert (=> d!2161211 (= (Exists!3827 lambda!390704) (Exists!3827 lambda!390705))))

(declare-fun lt!2463169 () Unit!160358)

(declare-fun choose!51323 (Regex!16819 Regex!16819 List!66576) Unit!160358)

(assert (=> d!2161211 (= lt!2463169 (choose!51323 r1!6342 lt!2463140 s!14361))))

(assert (=> d!2161211 (validRegex!8527 r1!6342)))

(assert (=> d!2161211 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2300 r1!6342 lt!2463140 s!14361) lt!2463169)))

(declare-fun m!7613542 () Bool)

(assert (=> bs!1840507 m!7613542))

(declare-fun m!7613544 () Bool)

(assert (=> bs!1840507 m!7613544))

(declare-fun m!7613546 () Bool)

(assert (=> bs!1840507 m!7613546))

(assert (=> bs!1840507 m!7613440))

(assert (=> b!6892447 d!2161211))

(declare-fun d!2161217 () Bool)

(assert (=> d!2161217 (= (Exists!3827 lambda!390689) (choose!51320 lambda!390689))))

(declare-fun bs!1840508 () Bool)

(assert (= bs!1840508 d!2161217))

(declare-fun m!7613548 () Bool)

(assert (=> bs!1840508 m!7613548))

(assert (=> b!6892447 d!2161217))

(declare-fun b!6892634 () Bool)

(declare-fun e!4152068 () Bool)

(declare-fun e!4152067 () Bool)

(assert (=> b!6892634 (= e!4152068 e!4152067)))

(declare-fun c!1281394 () Bool)

(assert (=> b!6892634 (= c!1281394 ((_ is Star!16819) r3!135))))

(declare-fun b!6892635 () Bool)

(declare-fun e!4152063 () Bool)

(declare-fun call!627144 () Bool)

(assert (=> b!6892635 (= e!4152063 call!627144)))

(declare-fun b!6892636 () Bool)

(declare-fun e!4152065 () Bool)

(declare-fun call!627145 () Bool)

(assert (=> b!6892636 (= e!4152065 call!627145)))

(declare-fun b!6892637 () Bool)

(declare-fun e!4152069 () Bool)

(assert (=> b!6892637 (= e!4152069 e!4152063)))

(declare-fun res!2810164 () Bool)

(assert (=> b!6892637 (=> (not res!2810164) (not e!4152063))))

(declare-fun call!627143 () Bool)

(assert (=> b!6892637 (= res!2810164 call!627143)))

(declare-fun d!2161219 () Bool)

(declare-fun res!2810165 () Bool)

(assert (=> d!2161219 (=> res!2810165 e!4152068)))

(assert (=> d!2161219 (= res!2810165 ((_ is ElementMatch!16819) r3!135))))

(assert (=> d!2161219 (= (validRegex!8527 r3!135) e!4152068)))

(declare-fun bm!627138 () Bool)

(declare-fun c!1281395 () Bool)

(assert (=> bm!627138 (= call!627144 (validRegex!8527 (ite c!1281395 (regOne!34151 r3!135) (regTwo!34150 r3!135))))))

(declare-fun b!6892638 () Bool)

(declare-fun res!2810163 () Bool)

(declare-fun e!4152064 () Bool)

(assert (=> b!6892638 (=> (not res!2810163) (not e!4152064))))

(assert (=> b!6892638 (= res!2810163 call!627144)))

(declare-fun e!4152066 () Bool)

(assert (=> b!6892638 (= e!4152066 e!4152064)))

(declare-fun b!6892639 () Bool)

(assert (=> b!6892639 (= e!4152067 e!4152066)))

(assert (=> b!6892639 (= c!1281395 ((_ is Union!16819) r3!135))))

(declare-fun bm!627139 () Bool)

(assert (=> bm!627139 (= call!627143 call!627145)))

(declare-fun bm!627140 () Bool)

(assert (=> bm!627140 (= call!627145 (validRegex!8527 (ite c!1281394 (reg!17148 r3!135) (ite c!1281395 (regTwo!34151 r3!135) (regOne!34150 r3!135)))))))

(declare-fun b!6892640 () Bool)

(assert (=> b!6892640 (= e!4152064 call!627143)))

(declare-fun b!6892641 () Bool)

(declare-fun res!2810166 () Bool)

(assert (=> b!6892641 (=> res!2810166 e!4152069)))

(assert (=> b!6892641 (= res!2810166 (not ((_ is Concat!25664) r3!135)))))

(assert (=> b!6892641 (= e!4152066 e!4152069)))

(declare-fun b!6892642 () Bool)

(assert (=> b!6892642 (= e!4152067 e!4152065)))

(declare-fun res!2810167 () Bool)

(assert (=> b!6892642 (= res!2810167 (not (nullable!6693 (reg!17148 r3!135))))))

(assert (=> b!6892642 (=> (not res!2810167) (not e!4152065))))

(assert (= (and d!2161219 (not res!2810165)) b!6892634))

(assert (= (and b!6892634 c!1281394) b!6892642))

(assert (= (and b!6892634 (not c!1281394)) b!6892639))

(assert (= (and b!6892642 res!2810167) b!6892636))

(assert (= (and b!6892639 c!1281395) b!6892638))

(assert (= (and b!6892639 (not c!1281395)) b!6892641))

(assert (= (and b!6892638 res!2810163) b!6892640))

(assert (= (and b!6892641 (not res!2810166)) b!6892637))

(assert (= (and b!6892637 res!2810164) b!6892635))

(assert (= (or b!6892638 b!6892635) bm!627138))

(assert (= (or b!6892640 b!6892637) bm!627139))

(assert (= (or b!6892636 bm!627139) bm!627140))

(declare-fun m!7613550 () Bool)

(assert (=> bm!627138 m!7613550))

(declare-fun m!7613552 () Bool)

(assert (=> bm!627140 m!7613552))

(declare-fun m!7613554 () Bool)

(assert (=> b!6892642 m!7613554))

(assert (=> b!6892451 d!2161219))

(declare-fun b!6892643 () Bool)

(declare-fun e!4152075 () Bool)

(declare-fun e!4152074 () Bool)

(assert (=> b!6892643 (= e!4152075 e!4152074)))

(declare-fun c!1281396 () Bool)

(assert (=> b!6892643 (= c!1281396 ((_ is Star!16819) r1!6342))))

(declare-fun b!6892644 () Bool)

(declare-fun e!4152070 () Bool)

(declare-fun call!627147 () Bool)

(assert (=> b!6892644 (= e!4152070 call!627147)))

(declare-fun b!6892645 () Bool)

(declare-fun e!4152072 () Bool)

(declare-fun call!627148 () Bool)

(assert (=> b!6892645 (= e!4152072 call!627148)))

(declare-fun b!6892646 () Bool)

(declare-fun e!4152076 () Bool)

(assert (=> b!6892646 (= e!4152076 e!4152070)))

(declare-fun res!2810169 () Bool)

(assert (=> b!6892646 (=> (not res!2810169) (not e!4152070))))

(declare-fun call!627146 () Bool)

(assert (=> b!6892646 (= res!2810169 call!627146)))

(declare-fun d!2161221 () Bool)

(declare-fun res!2810170 () Bool)

(assert (=> d!2161221 (=> res!2810170 e!4152075)))

(assert (=> d!2161221 (= res!2810170 ((_ is ElementMatch!16819) r1!6342))))

(assert (=> d!2161221 (= (validRegex!8527 r1!6342) e!4152075)))

(declare-fun bm!627141 () Bool)

(declare-fun c!1281397 () Bool)

(assert (=> bm!627141 (= call!627147 (validRegex!8527 (ite c!1281397 (regOne!34151 r1!6342) (regTwo!34150 r1!6342))))))

(declare-fun b!6892647 () Bool)

(declare-fun res!2810168 () Bool)

(declare-fun e!4152071 () Bool)

(assert (=> b!6892647 (=> (not res!2810168) (not e!4152071))))

(assert (=> b!6892647 (= res!2810168 call!627147)))

(declare-fun e!4152073 () Bool)

(assert (=> b!6892647 (= e!4152073 e!4152071)))

(declare-fun b!6892648 () Bool)

(assert (=> b!6892648 (= e!4152074 e!4152073)))

(assert (=> b!6892648 (= c!1281397 ((_ is Union!16819) r1!6342))))

(declare-fun bm!627142 () Bool)

(assert (=> bm!627142 (= call!627146 call!627148)))

(declare-fun bm!627143 () Bool)

(assert (=> bm!627143 (= call!627148 (validRegex!8527 (ite c!1281396 (reg!17148 r1!6342) (ite c!1281397 (regTwo!34151 r1!6342) (regOne!34150 r1!6342)))))))

(declare-fun b!6892649 () Bool)

(assert (=> b!6892649 (= e!4152071 call!627146)))

(declare-fun b!6892650 () Bool)

(declare-fun res!2810171 () Bool)

(assert (=> b!6892650 (=> res!2810171 e!4152076)))

(assert (=> b!6892650 (= res!2810171 (not ((_ is Concat!25664) r1!6342)))))

(assert (=> b!6892650 (= e!4152073 e!4152076)))

(declare-fun b!6892651 () Bool)

(assert (=> b!6892651 (= e!4152074 e!4152072)))

(declare-fun res!2810172 () Bool)

(assert (=> b!6892651 (= res!2810172 (not (nullable!6693 (reg!17148 r1!6342))))))

(assert (=> b!6892651 (=> (not res!2810172) (not e!4152072))))

(assert (= (and d!2161221 (not res!2810170)) b!6892643))

(assert (= (and b!6892643 c!1281396) b!6892651))

(assert (= (and b!6892643 (not c!1281396)) b!6892648))

(assert (= (and b!6892651 res!2810172) b!6892645))

(assert (= (and b!6892648 c!1281397) b!6892647))

(assert (= (and b!6892648 (not c!1281397)) b!6892650))

(assert (= (and b!6892647 res!2810168) b!6892649))

(assert (= (and b!6892650 (not res!2810171)) b!6892646))

(assert (= (and b!6892646 res!2810169) b!6892644))

(assert (= (or b!6892647 b!6892644) bm!627141))

(assert (= (or b!6892649 b!6892646) bm!627142))

(assert (= (or b!6892645 bm!627142) bm!627143))

(declare-fun m!7613556 () Bool)

(assert (=> bm!627141 m!7613556))

(declare-fun m!7613558 () Bool)

(assert (=> bm!627143 m!7613558))

(declare-fun m!7613560 () Bool)

(assert (=> b!6892651 m!7613560))

(assert (=> start!664338 d!2161221))

(declare-fun b!6892652 () Bool)

(declare-fun e!4152082 () Bool)

(declare-fun e!4152081 () Bool)

(assert (=> b!6892652 (= e!4152082 e!4152081)))

(declare-fun c!1281398 () Bool)

(assert (=> b!6892652 (= c!1281398 ((_ is Star!16819) r2!6280))))

(declare-fun b!6892653 () Bool)

(declare-fun e!4152077 () Bool)

(declare-fun call!627150 () Bool)

(assert (=> b!6892653 (= e!4152077 call!627150)))

(declare-fun b!6892654 () Bool)

(declare-fun e!4152079 () Bool)

(declare-fun call!627151 () Bool)

(assert (=> b!6892654 (= e!4152079 call!627151)))

(declare-fun b!6892655 () Bool)

(declare-fun e!4152083 () Bool)

(assert (=> b!6892655 (= e!4152083 e!4152077)))

(declare-fun res!2810174 () Bool)

(assert (=> b!6892655 (=> (not res!2810174) (not e!4152077))))

(declare-fun call!627149 () Bool)

(assert (=> b!6892655 (= res!2810174 call!627149)))

(declare-fun d!2161223 () Bool)

(declare-fun res!2810175 () Bool)

(assert (=> d!2161223 (=> res!2810175 e!4152082)))

(assert (=> d!2161223 (= res!2810175 ((_ is ElementMatch!16819) r2!6280))))

(assert (=> d!2161223 (= (validRegex!8527 r2!6280) e!4152082)))

(declare-fun bm!627144 () Bool)

(declare-fun c!1281399 () Bool)

(assert (=> bm!627144 (= call!627150 (validRegex!8527 (ite c!1281399 (regOne!34151 r2!6280) (regTwo!34150 r2!6280))))))

(declare-fun b!6892656 () Bool)

(declare-fun res!2810173 () Bool)

(declare-fun e!4152078 () Bool)

(assert (=> b!6892656 (=> (not res!2810173) (not e!4152078))))

(assert (=> b!6892656 (= res!2810173 call!627150)))

(declare-fun e!4152080 () Bool)

(assert (=> b!6892656 (= e!4152080 e!4152078)))

(declare-fun b!6892657 () Bool)

(assert (=> b!6892657 (= e!4152081 e!4152080)))

(assert (=> b!6892657 (= c!1281399 ((_ is Union!16819) r2!6280))))

(declare-fun bm!627145 () Bool)

(assert (=> bm!627145 (= call!627149 call!627151)))

(declare-fun bm!627146 () Bool)

(assert (=> bm!627146 (= call!627151 (validRegex!8527 (ite c!1281398 (reg!17148 r2!6280) (ite c!1281399 (regTwo!34151 r2!6280) (regOne!34150 r2!6280)))))))

(declare-fun b!6892658 () Bool)

(assert (=> b!6892658 (= e!4152078 call!627149)))

(declare-fun b!6892659 () Bool)

(declare-fun res!2810176 () Bool)

(assert (=> b!6892659 (=> res!2810176 e!4152083)))

(assert (=> b!6892659 (= res!2810176 (not ((_ is Concat!25664) r2!6280)))))

(assert (=> b!6892659 (= e!4152080 e!4152083)))

(declare-fun b!6892660 () Bool)

(assert (=> b!6892660 (= e!4152081 e!4152079)))

(declare-fun res!2810177 () Bool)

(assert (=> b!6892660 (= res!2810177 (not (nullable!6693 (reg!17148 r2!6280))))))

(assert (=> b!6892660 (=> (not res!2810177) (not e!4152079))))

(assert (= (and d!2161223 (not res!2810175)) b!6892652))

(assert (= (and b!6892652 c!1281398) b!6892660))

(assert (= (and b!6892652 (not c!1281398)) b!6892657))

(assert (= (and b!6892660 res!2810177) b!6892654))

(assert (= (and b!6892657 c!1281399) b!6892656))

(assert (= (and b!6892657 (not c!1281399)) b!6892659))

(assert (= (and b!6892656 res!2810173) b!6892658))

(assert (= (and b!6892659 (not res!2810176)) b!6892655))

(assert (= (and b!6892655 res!2810174) b!6892653))

(assert (= (or b!6892656 b!6892653) bm!627144))

(assert (= (or b!6892658 b!6892655) bm!627145))

(assert (= (or b!6892654 bm!627145) bm!627146))

(declare-fun m!7613562 () Bool)

(assert (=> bm!627144 m!7613562))

(declare-fun m!7613564 () Bool)

(assert (=> bm!627146 m!7613564))

(declare-fun m!7613566 () Bool)

(assert (=> b!6892660 m!7613566))

(assert (=> b!6892444 d!2161223))

(declare-fun bs!1840524 () Bool)

(declare-fun b!6892709 () Bool)

(assert (= bs!1840524 (and b!6892709 b!6892447)))

(declare-fun lambda!390718 () Int)

(assert (=> bs!1840524 (not (= lambda!390718 lambda!390690))))

(declare-fun bs!1840525 () Bool)

(assert (= bs!1840525 (and b!6892709 d!2161205)))

(assert (=> bs!1840525 (not (= lambda!390718 lambda!390697))))

(declare-fun bs!1840526 () Bool)

(assert (= bs!1840526 (and b!6892709 d!2161211)))

(assert (=> bs!1840526 (not (= lambda!390718 lambda!390705))))

(assert (=> bs!1840526 (not (= lambda!390718 lambda!390704))))

(assert (=> bs!1840524 (not (= lambda!390718 lambda!390689))))

(assert (=> b!6892709 true))

(assert (=> b!6892709 true))

(declare-fun bs!1840527 () Bool)

(declare-fun b!6892701 () Bool)

(assert (= bs!1840527 (and b!6892701 d!2161205)))

(declare-fun lambda!390719 () Int)

(assert (=> bs!1840527 (not (= lambda!390719 lambda!390697))))

(declare-fun bs!1840528 () Bool)

(assert (= bs!1840528 (and b!6892701 d!2161211)))

(assert (=> bs!1840528 (= (and (= (regOne!34150 lt!2463147) r1!6342) (= (regTwo!34150 lt!2463147) lt!2463140)) (= lambda!390719 lambda!390705))))

(assert (=> bs!1840528 (not (= lambda!390719 lambda!390704))))

(declare-fun bs!1840529 () Bool)

(assert (= bs!1840529 (and b!6892701 b!6892447)))

(assert (=> bs!1840529 (not (= lambda!390719 lambda!390689))))

(assert (=> bs!1840529 (= (and (= (regOne!34150 lt!2463147) r1!6342) (= (regTwo!34150 lt!2463147) lt!2463140)) (= lambda!390719 lambda!390690))))

(declare-fun bs!1840530 () Bool)

(assert (= bs!1840530 (and b!6892701 b!6892709)))

(assert (=> bs!1840530 (not (= lambda!390719 lambda!390718))))

(assert (=> b!6892701 true))

(assert (=> b!6892701 true))

(declare-fun e!4152110 () Bool)

(declare-fun call!627156 () Bool)

(assert (=> b!6892701 (= e!4152110 call!627156)))

(declare-fun bm!627151 () Bool)

(declare-fun c!1281410 () Bool)

(assert (=> bm!627151 (= call!627156 (Exists!3827 (ite c!1281410 lambda!390718 lambda!390719)))))

(declare-fun b!6892702 () Bool)

(declare-fun res!2810202 () Bool)

(declare-fun e!4152112 () Bool)

(assert (=> b!6892702 (=> res!2810202 e!4152112)))

(declare-fun call!627157 () Bool)

(assert (=> b!6892702 (= res!2810202 call!627157)))

(assert (=> b!6892702 (= e!4152110 e!4152112)))

(declare-fun b!6892703 () Bool)

(declare-fun e!4152109 () Bool)

(assert (=> b!6892703 (= e!4152109 (matchRSpec!3882 (regTwo!34151 lt!2463147) s!14361))))

(declare-fun b!6892704 () Bool)

(declare-fun e!4152111 () Bool)

(assert (=> b!6892704 (= e!4152111 e!4152109)))

(declare-fun res!2810204 () Bool)

(assert (=> b!6892704 (= res!2810204 (matchRSpec!3882 (regOne!34151 lt!2463147) s!14361))))

(assert (=> b!6892704 (=> res!2810204 e!4152109)))

(declare-fun b!6892705 () Bool)

(declare-fun c!1281411 () Bool)

(assert (=> b!6892705 (= c!1281411 ((_ is Union!16819) lt!2463147))))

(declare-fun e!4152108 () Bool)

(assert (=> b!6892705 (= e!4152108 e!4152111)))

(declare-fun b!6892706 () Bool)

(assert (=> b!6892706 (= e!4152111 e!4152110)))

(assert (=> b!6892706 (= c!1281410 ((_ is Star!16819) lt!2463147))))

(declare-fun b!6892707 () Bool)

(declare-fun c!1281408 () Bool)

(assert (=> b!6892707 (= c!1281408 ((_ is ElementMatch!16819) lt!2463147))))

(declare-fun e!4152107 () Bool)

(assert (=> b!6892707 (= e!4152107 e!4152108)))

(declare-fun b!6892708 () Bool)

(declare-fun e!4152106 () Bool)

(assert (=> b!6892708 (= e!4152106 e!4152107)))

(declare-fun res!2810203 () Bool)

(assert (=> b!6892708 (= res!2810203 (not ((_ is EmptyLang!16819) lt!2463147)))))

(assert (=> b!6892708 (=> (not res!2810203) (not e!4152107))))

(assert (=> b!6892709 (= e!4152112 call!627156)))

(declare-fun d!2161225 () Bool)

(declare-fun c!1281409 () Bool)

(assert (=> d!2161225 (= c!1281409 ((_ is EmptyExpr!16819) lt!2463147))))

(assert (=> d!2161225 (= (matchRSpec!3882 lt!2463147 s!14361) e!4152106)))

(declare-fun bm!627152 () Bool)

(declare-fun isEmpty!38702 (List!66576) Bool)

(assert (=> bm!627152 (= call!627157 (isEmpty!38702 s!14361))))

(declare-fun b!6892710 () Bool)

(assert (=> b!6892710 (= e!4152108 (= s!14361 (Cons!66452 (c!1281353 lt!2463147) Nil!66452)))))

(declare-fun b!6892711 () Bool)

(assert (=> b!6892711 (= e!4152106 call!627157)))

(assert (= (and d!2161225 c!1281409) b!6892711))

(assert (= (and d!2161225 (not c!1281409)) b!6892708))

(assert (= (and b!6892708 res!2810203) b!6892707))

(assert (= (and b!6892707 c!1281408) b!6892710))

(assert (= (and b!6892707 (not c!1281408)) b!6892705))

(assert (= (and b!6892705 c!1281411) b!6892704))

(assert (= (and b!6892705 (not c!1281411)) b!6892706))

(assert (= (and b!6892704 (not res!2810204)) b!6892703))

(assert (= (and b!6892706 c!1281410) b!6892702))

(assert (= (and b!6892706 (not c!1281410)) b!6892701))

(assert (= (and b!6892702 (not res!2810202)) b!6892709))

(assert (= (or b!6892709 b!6892701) bm!627151))

(assert (= (or b!6892711 b!6892702) bm!627152))

(declare-fun m!7613584 () Bool)

(assert (=> bm!627151 m!7613584))

(declare-fun m!7613586 () Bool)

(assert (=> b!6892703 m!7613586))

(declare-fun m!7613588 () Bool)

(assert (=> b!6892704 m!7613588))

(declare-fun m!7613590 () Bool)

(assert (=> bm!627152 m!7613590))

(assert (=> b!6892438 d!2161225))

(declare-fun d!2161235 () Bool)

(assert (=> d!2161235 (= (matchR!8964 lt!2463147 s!14361) (matchRSpec!3882 lt!2463147 s!14361))))

(declare-fun lt!2463178 () Unit!160358)

(declare-fun choose!51324 (Regex!16819 List!66576) Unit!160358)

(assert (=> d!2161235 (= lt!2463178 (choose!51324 lt!2463147 s!14361))))

(assert (=> d!2161235 (validRegex!8527 lt!2463147)))

(assert (=> d!2161235 (= (mainMatchTheorem!3882 lt!2463147 s!14361) lt!2463178)))

(declare-fun bs!1840531 () Bool)

(assert (= bs!1840531 d!2161235))

(assert (=> bs!1840531 m!7613468))

(assert (=> bs!1840531 m!7613470))

(declare-fun m!7613592 () Bool)

(assert (=> bs!1840531 m!7613592))

(declare-fun m!7613594 () Bool)

(assert (=> bs!1840531 m!7613594))

(assert (=> b!6892438 d!2161235))

(declare-fun b!6892789 () Bool)

(declare-fun res!2810257 () Bool)

(declare-fun e!4152164 () Bool)

(assert (=> b!6892789 (=> (not res!2810257) (not e!4152164))))

(declare-fun call!627175 () Bool)

(assert (=> b!6892789 (= res!2810257 (not call!627175))))

(declare-fun b!6892790 () Bool)

(declare-fun res!2810250 () Bool)

(declare-fun e!4152170 () Bool)

(assert (=> b!6892790 (=> res!2810250 e!4152170)))

(declare-fun tail!12878 (List!66576) List!66576)

(assert (=> b!6892790 (= res!2810250 (not (isEmpty!38702 (tail!12878 s!14361))))))

(declare-fun d!2161237 () Bool)

(declare-fun e!4152166 () Bool)

(assert (=> d!2161237 e!4152166))

(declare-fun c!1281428 () Bool)

(assert (=> d!2161237 (= c!1281428 ((_ is EmptyExpr!16819) lt!2463143))))

(declare-fun lt!2463182 () Bool)

(declare-fun e!4152167 () Bool)

(assert (=> d!2161237 (= lt!2463182 e!4152167)))

(declare-fun c!1281430 () Bool)

(assert (=> d!2161237 (= c!1281430 (isEmpty!38702 s!14361))))

(assert (=> d!2161237 (validRegex!8527 lt!2463143)))

(assert (=> d!2161237 (= (matchR!8964 lt!2463143 s!14361) lt!2463182)))

(declare-fun b!6892791 () Bool)

(declare-fun head!13826 (List!66576) C!33908)

(assert (=> b!6892791 (= e!4152170 (not (= (head!13826 s!14361) (c!1281353 lt!2463143))))))

(declare-fun b!6892792 () Bool)

(declare-fun e!4152168 () Bool)

(assert (=> b!6892792 (= e!4152168 (not lt!2463182))))

(declare-fun bm!627170 () Bool)

(assert (=> bm!627170 (= call!627175 (isEmpty!38702 s!14361))))

(declare-fun b!6892793 () Bool)

(declare-fun res!2810253 () Bool)

(declare-fun e!4152169 () Bool)

(assert (=> b!6892793 (=> res!2810253 e!4152169)))

(assert (=> b!6892793 (= res!2810253 e!4152164)))

(declare-fun res!2810255 () Bool)

(assert (=> b!6892793 (=> (not res!2810255) (not e!4152164))))

(assert (=> b!6892793 (= res!2810255 lt!2463182)))

(declare-fun b!6892794 () Bool)

(assert (=> b!6892794 (= e!4152166 (= lt!2463182 call!627175))))

(declare-fun b!6892795 () Bool)

(declare-fun e!4152165 () Bool)

(assert (=> b!6892795 (= e!4152165 e!4152170)))

(declare-fun res!2810251 () Bool)

(assert (=> b!6892795 (=> res!2810251 e!4152170)))

(assert (=> b!6892795 (= res!2810251 call!627175)))

(declare-fun b!6892796 () Bool)

(assert (=> b!6892796 (= e!4152166 e!4152168)))

(declare-fun c!1281429 () Bool)

(assert (=> b!6892796 (= c!1281429 ((_ is EmptyLang!16819) lt!2463143))))

(declare-fun b!6892797 () Bool)

(declare-fun derivativeStep!5373 (Regex!16819 C!33908) Regex!16819)

(assert (=> b!6892797 (= e!4152167 (matchR!8964 (derivativeStep!5373 lt!2463143 (head!13826 s!14361)) (tail!12878 s!14361)))))

(declare-fun b!6892798 () Bool)

(declare-fun res!2810254 () Bool)

(assert (=> b!6892798 (=> (not res!2810254) (not e!4152164))))

(assert (=> b!6892798 (= res!2810254 (isEmpty!38702 (tail!12878 s!14361)))))

(declare-fun b!6892799 () Bool)

(assert (=> b!6892799 (= e!4152169 e!4152165)))

(declare-fun res!2810252 () Bool)

(assert (=> b!6892799 (=> (not res!2810252) (not e!4152165))))

(assert (=> b!6892799 (= res!2810252 (not lt!2463182))))

(declare-fun b!6892800 () Bool)

(assert (=> b!6892800 (= e!4152164 (= (head!13826 s!14361) (c!1281353 lt!2463143)))))

(declare-fun b!6892801 () Bool)

(assert (=> b!6892801 (= e!4152167 (nullable!6693 lt!2463143))))

(declare-fun b!6892802 () Bool)

(declare-fun res!2810256 () Bool)

(assert (=> b!6892802 (=> res!2810256 e!4152169)))

(assert (=> b!6892802 (= res!2810256 (not ((_ is ElementMatch!16819) lt!2463143)))))

(assert (=> b!6892802 (= e!4152168 e!4152169)))

(assert (= (and d!2161237 c!1281430) b!6892801))

(assert (= (and d!2161237 (not c!1281430)) b!6892797))

(assert (= (and d!2161237 c!1281428) b!6892794))

(assert (= (and d!2161237 (not c!1281428)) b!6892796))

(assert (= (and b!6892796 c!1281429) b!6892792))

(assert (= (and b!6892796 (not c!1281429)) b!6892802))

(assert (= (and b!6892802 (not res!2810256)) b!6892793))

(assert (= (and b!6892793 res!2810255) b!6892789))

(assert (= (and b!6892789 res!2810257) b!6892798))

(assert (= (and b!6892798 res!2810254) b!6892800))

(assert (= (and b!6892793 (not res!2810253)) b!6892799))

(assert (= (and b!6892799 res!2810252) b!6892795))

(assert (= (and b!6892795 (not res!2810251)) b!6892790))

(assert (= (and b!6892790 (not res!2810250)) b!6892791))

(assert (= (or b!6892794 b!6892789 b!6892795) bm!627170))

(declare-fun m!7613620 () Bool)

(assert (=> b!6892791 m!7613620))

(assert (=> b!6892797 m!7613620))

(assert (=> b!6892797 m!7613620))

(declare-fun m!7613622 () Bool)

(assert (=> b!6892797 m!7613622))

(declare-fun m!7613624 () Bool)

(assert (=> b!6892797 m!7613624))

(assert (=> b!6892797 m!7613622))

(assert (=> b!6892797 m!7613624))

(declare-fun m!7613626 () Bool)

(assert (=> b!6892797 m!7613626))

(declare-fun m!7613628 () Bool)

(assert (=> b!6892801 m!7613628))

(assert (=> b!6892800 m!7613620))

(assert (=> bm!627170 m!7613590))

(assert (=> b!6892790 m!7613624))

(assert (=> b!6892790 m!7613624))

(declare-fun m!7613630 () Bool)

(assert (=> b!6892790 m!7613630))

(assert (=> b!6892798 m!7613624))

(assert (=> b!6892798 m!7613624))

(assert (=> b!6892798 m!7613630))

(assert (=> d!2161237 m!7613590))

(declare-fun m!7613632 () Bool)

(assert (=> d!2161237 m!7613632))

(assert (=> b!6892438 d!2161237))

(declare-fun d!2161249 () Bool)

(assert (=> d!2161249 (= (matchR!8964 lt!2463143 s!14361) (matchRSpec!3882 lt!2463143 s!14361))))

(declare-fun lt!2463183 () Unit!160358)

(assert (=> d!2161249 (= lt!2463183 (choose!51324 lt!2463143 s!14361))))

(assert (=> d!2161249 (validRegex!8527 lt!2463143)))

(assert (=> d!2161249 (= (mainMatchTheorem!3882 lt!2463143 s!14361) lt!2463183)))

(declare-fun bs!1840540 () Bool)

(assert (= bs!1840540 d!2161249))

(assert (=> bs!1840540 m!7613466))

(assert (=> bs!1840540 m!7613462))

(declare-fun m!7613634 () Bool)

(assert (=> bs!1840540 m!7613634))

(assert (=> bs!1840540 m!7613632))

(assert (=> b!6892438 d!2161249))

(declare-fun bs!1840541 () Bool)

(declare-fun b!6892811 () Bool)

(assert (= bs!1840541 (and b!6892811 d!2161205)))

(declare-fun lambda!390723 () Int)

(assert (=> bs!1840541 (not (= lambda!390723 lambda!390697))))

(declare-fun bs!1840542 () Bool)

(assert (= bs!1840542 (and b!6892811 d!2161211)))

(assert (=> bs!1840542 (not (= lambda!390723 lambda!390705))))

(assert (=> bs!1840542 (not (= lambda!390723 lambda!390704))))

(declare-fun bs!1840543 () Bool)

(assert (= bs!1840543 (and b!6892811 b!6892447)))

(assert (=> bs!1840543 (not (= lambda!390723 lambda!390689))))

(assert (=> bs!1840543 (not (= lambda!390723 lambda!390690))))

(declare-fun bs!1840544 () Bool)

(assert (= bs!1840544 (and b!6892811 b!6892701)))

(assert (=> bs!1840544 (not (= lambda!390723 lambda!390719))))

(declare-fun bs!1840545 () Bool)

(assert (= bs!1840545 (and b!6892811 b!6892709)))

(assert (=> bs!1840545 (= (and (= (reg!17148 lt!2463143) (reg!17148 lt!2463147)) (= lt!2463143 lt!2463147)) (= lambda!390723 lambda!390718))))

(assert (=> b!6892811 true))

(assert (=> b!6892811 true))

(declare-fun bs!1840546 () Bool)

(declare-fun b!6892803 () Bool)

(assert (= bs!1840546 (and b!6892803 d!2161205)))

(declare-fun lambda!390724 () Int)

(assert (=> bs!1840546 (not (= lambda!390724 lambda!390697))))

(declare-fun bs!1840547 () Bool)

(assert (= bs!1840547 (and b!6892803 d!2161211)))

(assert (=> bs!1840547 (not (= lambda!390724 lambda!390704))))

(declare-fun bs!1840548 () Bool)

(assert (= bs!1840548 (and b!6892803 b!6892447)))

(assert (=> bs!1840548 (not (= lambda!390724 lambda!390689))))

(assert (=> bs!1840548 (= (and (= (regOne!34150 lt!2463143) r1!6342) (= (regTwo!34150 lt!2463143) lt!2463140)) (= lambda!390724 lambda!390690))))

(declare-fun bs!1840549 () Bool)

(assert (= bs!1840549 (and b!6892803 b!6892701)))

(assert (=> bs!1840549 (= (and (= (regOne!34150 lt!2463143) (regOne!34150 lt!2463147)) (= (regTwo!34150 lt!2463143) (regTwo!34150 lt!2463147))) (= lambda!390724 lambda!390719))))

(declare-fun bs!1840550 () Bool)

(assert (= bs!1840550 (and b!6892803 b!6892709)))

(assert (=> bs!1840550 (not (= lambda!390724 lambda!390718))))

(declare-fun bs!1840551 () Bool)

(assert (= bs!1840551 (and b!6892803 b!6892811)))

(assert (=> bs!1840551 (not (= lambda!390724 lambda!390723))))

(assert (=> bs!1840547 (= (and (= (regOne!34150 lt!2463143) r1!6342) (= (regTwo!34150 lt!2463143) lt!2463140)) (= lambda!390724 lambda!390705))))

(assert (=> b!6892803 true))

(assert (=> b!6892803 true))

(declare-fun e!4152175 () Bool)

(declare-fun call!627176 () Bool)

(assert (=> b!6892803 (= e!4152175 call!627176)))

(declare-fun c!1281433 () Bool)

(declare-fun bm!627171 () Bool)

(assert (=> bm!627171 (= call!627176 (Exists!3827 (ite c!1281433 lambda!390723 lambda!390724)))))

(declare-fun b!6892804 () Bool)

(declare-fun res!2810258 () Bool)

(declare-fun e!4152177 () Bool)

(assert (=> b!6892804 (=> res!2810258 e!4152177)))

(declare-fun call!627177 () Bool)

(assert (=> b!6892804 (= res!2810258 call!627177)))

(assert (=> b!6892804 (= e!4152175 e!4152177)))

(declare-fun b!6892805 () Bool)

(declare-fun e!4152174 () Bool)

(assert (=> b!6892805 (= e!4152174 (matchRSpec!3882 (regTwo!34151 lt!2463143) s!14361))))

(declare-fun b!6892806 () Bool)

(declare-fun e!4152176 () Bool)

(assert (=> b!6892806 (= e!4152176 e!4152174)))

(declare-fun res!2810260 () Bool)

(assert (=> b!6892806 (= res!2810260 (matchRSpec!3882 (regOne!34151 lt!2463143) s!14361))))

(assert (=> b!6892806 (=> res!2810260 e!4152174)))

(declare-fun b!6892807 () Bool)

(declare-fun c!1281434 () Bool)

(assert (=> b!6892807 (= c!1281434 ((_ is Union!16819) lt!2463143))))

(declare-fun e!4152173 () Bool)

(assert (=> b!6892807 (= e!4152173 e!4152176)))

(declare-fun b!6892808 () Bool)

(assert (=> b!6892808 (= e!4152176 e!4152175)))

(assert (=> b!6892808 (= c!1281433 ((_ is Star!16819) lt!2463143))))

(declare-fun b!6892809 () Bool)

(declare-fun c!1281431 () Bool)

(assert (=> b!6892809 (= c!1281431 ((_ is ElementMatch!16819) lt!2463143))))

(declare-fun e!4152172 () Bool)

(assert (=> b!6892809 (= e!4152172 e!4152173)))

(declare-fun b!6892810 () Bool)

(declare-fun e!4152171 () Bool)

(assert (=> b!6892810 (= e!4152171 e!4152172)))

(declare-fun res!2810259 () Bool)

(assert (=> b!6892810 (= res!2810259 (not ((_ is EmptyLang!16819) lt!2463143)))))

(assert (=> b!6892810 (=> (not res!2810259) (not e!4152172))))

(assert (=> b!6892811 (= e!4152177 call!627176)))

(declare-fun d!2161251 () Bool)

(declare-fun c!1281432 () Bool)

(assert (=> d!2161251 (= c!1281432 ((_ is EmptyExpr!16819) lt!2463143))))

(assert (=> d!2161251 (= (matchRSpec!3882 lt!2463143 s!14361) e!4152171)))

(declare-fun bm!627172 () Bool)

(assert (=> bm!627172 (= call!627177 (isEmpty!38702 s!14361))))

(declare-fun b!6892812 () Bool)

(assert (=> b!6892812 (= e!4152173 (= s!14361 (Cons!66452 (c!1281353 lt!2463143) Nil!66452)))))

(declare-fun b!6892813 () Bool)

(assert (=> b!6892813 (= e!4152171 call!627177)))

(assert (= (and d!2161251 c!1281432) b!6892813))

(assert (= (and d!2161251 (not c!1281432)) b!6892810))

(assert (= (and b!6892810 res!2810259) b!6892809))

(assert (= (and b!6892809 c!1281431) b!6892812))

(assert (= (and b!6892809 (not c!1281431)) b!6892807))

(assert (= (and b!6892807 c!1281434) b!6892806))

(assert (= (and b!6892807 (not c!1281434)) b!6892808))

(assert (= (and b!6892806 (not res!2810260)) b!6892805))

(assert (= (and b!6892808 c!1281433) b!6892804))

(assert (= (and b!6892808 (not c!1281433)) b!6892803))

(assert (= (and b!6892804 (not res!2810258)) b!6892811))

(assert (= (or b!6892811 b!6892803) bm!627171))

(assert (= (or b!6892813 b!6892804) bm!627172))

(declare-fun m!7613636 () Bool)

(assert (=> bm!627171 m!7613636))

(declare-fun m!7613638 () Bool)

(assert (=> b!6892805 m!7613638))

(declare-fun m!7613640 () Bool)

(assert (=> b!6892806 m!7613640))

(assert (=> bm!627172 m!7613590))

(assert (=> b!6892438 d!2161251))

(declare-fun b!6892814 () Bool)

(declare-fun res!2810268 () Bool)

(declare-fun e!4152178 () Bool)

(assert (=> b!6892814 (=> (not res!2810268) (not e!4152178))))

(declare-fun call!627178 () Bool)

(assert (=> b!6892814 (= res!2810268 (not call!627178))))

(declare-fun b!6892815 () Bool)

(declare-fun res!2810261 () Bool)

(declare-fun e!4152184 () Bool)

(assert (=> b!6892815 (=> res!2810261 e!4152184)))

(assert (=> b!6892815 (= res!2810261 (not (isEmpty!38702 (tail!12878 s!14361))))))

(declare-fun d!2161253 () Bool)

(declare-fun e!4152180 () Bool)

(assert (=> d!2161253 e!4152180))

(declare-fun c!1281435 () Bool)

(assert (=> d!2161253 (= c!1281435 ((_ is EmptyExpr!16819) lt!2463147))))

(declare-fun lt!2463184 () Bool)

(declare-fun e!4152181 () Bool)

(assert (=> d!2161253 (= lt!2463184 e!4152181)))

(declare-fun c!1281437 () Bool)

(assert (=> d!2161253 (= c!1281437 (isEmpty!38702 s!14361))))

(assert (=> d!2161253 (validRegex!8527 lt!2463147)))

(assert (=> d!2161253 (= (matchR!8964 lt!2463147 s!14361) lt!2463184)))

(declare-fun b!6892816 () Bool)

(assert (=> b!6892816 (= e!4152184 (not (= (head!13826 s!14361) (c!1281353 lt!2463147))))))

(declare-fun b!6892817 () Bool)

(declare-fun e!4152182 () Bool)

(assert (=> b!6892817 (= e!4152182 (not lt!2463184))))

(declare-fun bm!627173 () Bool)

(assert (=> bm!627173 (= call!627178 (isEmpty!38702 s!14361))))

(declare-fun b!6892818 () Bool)

(declare-fun res!2810264 () Bool)

(declare-fun e!4152183 () Bool)

(assert (=> b!6892818 (=> res!2810264 e!4152183)))

(assert (=> b!6892818 (= res!2810264 e!4152178)))

(declare-fun res!2810266 () Bool)

(assert (=> b!6892818 (=> (not res!2810266) (not e!4152178))))

(assert (=> b!6892818 (= res!2810266 lt!2463184)))

(declare-fun b!6892819 () Bool)

(assert (=> b!6892819 (= e!4152180 (= lt!2463184 call!627178))))

(declare-fun b!6892820 () Bool)

(declare-fun e!4152179 () Bool)

(assert (=> b!6892820 (= e!4152179 e!4152184)))

(declare-fun res!2810262 () Bool)

(assert (=> b!6892820 (=> res!2810262 e!4152184)))

(assert (=> b!6892820 (= res!2810262 call!627178)))

(declare-fun b!6892821 () Bool)

(assert (=> b!6892821 (= e!4152180 e!4152182)))

(declare-fun c!1281436 () Bool)

(assert (=> b!6892821 (= c!1281436 ((_ is EmptyLang!16819) lt!2463147))))

(declare-fun b!6892822 () Bool)

(assert (=> b!6892822 (= e!4152181 (matchR!8964 (derivativeStep!5373 lt!2463147 (head!13826 s!14361)) (tail!12878 s!14361)))))

(declare-fun b!6892823 () Bool)

(declare-fun res!2810265 () Bool)

(assert (=> b!6892823 (=> (not res!2810265) (not e!4152178))))

(assert (=> b!6892823 (= res!2810265 (isEmpty!38702 (tail!12878 s!14361)))))

(declare-fun b!6892824 () Bool)

(assert (=> b!6892824 (= e!4152183 e!4152179)))

(declare-fun res!2810263 () Bool)

(assert (=> b!6892824 (=> (not res!2810263) (not e!4152179))))

(assert (=> b!6892824 (= res!2810263 (not lt!2463184))))

(declare-fun b!6892825 () Bool)

(assert (=> b!6892825 (= e!4152178 (= (head!13826 s!14361) (c!1281353 lt!2463147)))))

(declare-fun b!6892826 () Bool)

(assert (=> b!6892826 (= e!4152181 (nullable!6693 lt!2463147))))

(declare-fun b!6892827 () Bool)

(declare-fun res!2810267 () Bool)

(assert (=> b!6892827 (=> res!2810267 e!4152183)))

(assert (=> b!6892827 (= res!2810267 (not ((_ is ElementMatch!16819) lt!2463147)))))

(assert (=> b!6892827 (= e!4152182 e!4152183)))

(assert (= (and d!2161253 c!1281437) b!6892826))

(assert (= (and d!2161253 (not c!1281437)) b!6892822))

(assert (= (and d!2161253 c!1281435) b!6892819))

(assert (= (and d!2161253 (not c!1281435)) b!6892821))

(assert (= (and b!6892821 c!1281436) b!6892817))

(assert (= (and b!6892821 (not c!1281436)) b!6892827))

(assert (= (and b!6892827 (not res!2810267)) b!6892818))

(assert (= (and b!6892818 res!2810266) b!6892814))

(assert (= (and b!6892814 res!2810268) b!6892823))

(assert (= (and b!6892823 res!2810265) b!6892825))

(assert (= (and b!6892818 (not res!2810264)) b!6892824))

(assert (= (and b!6892824 res!2810263) b!6892820))

(assert (= (and b!6892820 (not res!2810262)) b!6892815))

(assert (= (and b!6892815 (not res!2810261)) b!6892816))

(assert (= (or b!6892819 b!6892814 b!6892820) bm!627173))

(assert (=> b!6892816 m!7613620))

(assert (=> b!6892822 m!7613620))

(assert (=> b!6892822 m!7613620))

(declare-fun m!7613642 () Bool)

(assert (=> b!6892822 m!7613642))

(assert (=> b!6892822 m!7613624))

(assert (=> b!6892822 m!7613642))

(assert (=> b!6892822 m!7613624))

(declare-fun m!7613644 () Bool)

(assert (=> b!6892822 m!7613644))

(declare-fun m!7613646 () Bool)

(assert (=> b!6892826 m!7613646))

(assert (=> b!6892825 m!7613620))

(assert (=> bm!627173 m!7613590))

(assert (=> b!6892815 m!7613624))

(assert (=> b!6892815 m!7613624))

(assert (=> b!6892815 m!7613630))

(assert (=> b!6892823 m!7613624))

(assert (=> b!6892823 m!7613624))

(assert (=> b!6892823 m!7613630))

(assert (=> d!2161253 m!7613590))

(assert (=> d!2161253 m!7613594))

(assert (=> b!6892438 d!2161253))

(declare-fun b!6892841 () Bool)

(declare-fun e!4152187 () Bool)

(declare-fun tp!1896789 () Bool)

(declare-fun tp!1896787 () Bool)

(assert (=> b!6892841 (= e!4152187 (and tp!1896789 tp!1896787))))

(declare-fun b!6892838 () Bool)

(assert (=> b!6892838 (= e!4152187 tp_is_empty!42863)))

(assert (=> b!6892448 (= tp!1896763 e!4152187)))

(declare-fun b!6892839 () Bool)

(declare-fun tp!1896788 () Bool)

(declare-fun tp!1896790 () Bool)

(assert (=> b!6892839 (= e!4152187 (and tp!1896788 tp!1896790))))

(declare-fun b!6892840 () Bool)

(declare-fun tp!1896786 () Bool)

(assert (=> b!6892840 (= e!4152187 tp!1896786)))

(assert (= (and b!6892448 ((_ is ElementMatch!16819) (reg!17148 r1!6342))) b!6892838))

(assert (= (and b!6892448 ((_ is Concat!25664) (reg!17148 r1!6342))) b!6892839))

(assert (= (and b!6892448 ((_ is Star!16819) (reg!17148 r1!6342))) b!6892840))

(assert (= (and b!6892448 ((_ is Union!16819) (reg!17148 r1!6342))) b!6892841))

(declare-fun b!6892845 () Bool)

(declare-fun e!4152188 () Bool)

(declare-fun tp!1896794 () Bool)

(declare-fun tp!1896792 () Bool)

(assert (=> b!6892845 (= e!4152188 (and tp!1896794 tp!1896792))))

(declare-fun b!6892842 () Bool)

(assert (=> b!6892842 (= e!4152188 tp_is_empty!42863)))

(assert (=> b!6892443 (= tp!1896765 e!4152188)))

(declare-fun b!6892843 () Bool)

(declare-fun tp!1896793 () Bool)

(declare-fun tp!1896795 () Bool)

(assert (=> b!6892843 (= e!4152188 (and tp!1896793 tp!1896795))))

(declare-fun b!6892844 () Bool)

(declare-fun tp!1896791 () Bool)

(assert (=> b!6892844 (= e!4152188 tp!1896791)))

(assert (= (and b!6892443 ((_ is ElementMatch!16819) (reg!17148 r2!6280))) b!6892842))

(assert (= (and b!6892443 ((_ is Concat!25664) (reg!17148 r2!6280))) b!6892843))

(assert (= (and b!6892443 ((_ is Star!16819) (reg!17148 r2!6280))) b!6892844))

(assert (= (and b!6892443 ((_ is Union!16819) (reg!17148 r2!6280))) b!6892845))

(declare-fun b!6892849 () Bool)

(declare-fun e!4152189 () Bool)

(declare-fun tp!1896799 () Bool)

(declare-fun tp!1896797 () Bool)

(assert (=> b!6892849 (= e!4152189 (and tp!1896799 tp!1896797))))

(declare-fun b!6892846 () Bool)

(assert (=> b!6892846 (= e!4152189 tp_is_empty!42863)))

(assert (=> b!6892437 (= tp!1896767 e!4152189)))

(declare-fun b!6892847 () Bool)

(declare-fun tp!1896798 () Bool)

(declare-fun tp!1896800 () Bool)

(assert (=> b!6892847 (= e!4152189 (and tp!1896798 tp!1896800))))

(declare-fun b!6892848 () Bool)

(declare-fun tp!1896796 () Bool)

(assert (=> b!6892848 (= e!4152189 tp!1896796)))

(assert (= (and b!6892437 ((_ is ElementMatch!16819) (regOne!34150 r3!135))) b!6892846))

(assert (= (and b!6892437 ((_ is Concat!25664) (regOne!34150 r3!135))) b!6892847))

(assert (= (and b!6892437 ((_ is Star!16819) (regOne!34150 r3!135))) b!6892848))

(assert (= (and b!6892437 ((_ is Union!16819) (regOne!34150 r3!135))) b!6892849))

(declare-fun b!6892853 () Bool)

(declare-fun e!4152190 () Bool)

(declare-fun tp!1896804 () Bool)

(declare-fun tp!1896802 () Bool)

(assert (=> b!6892853 (= e!4152190 (and tp!1896804 tp!1896802))))

(declare-fun b!6892850 () Bool)

(assert (=> b!6892850 (= e!4152190 tp_is_empty!42863)))

(assert (=> b!6892437 (= tp!1896769 e!4152190)))

(declare-fun b!6892851 () Bool)

(declare-fun tp!1896803 () Bool)

(declare-fun tp!1896805 () Bool)

(assert (=> b!6892851 (= e!4152190 (and tp!1896803 tp!1896805))))

(declare-fun b!6892852 () Bool)

(declare-fun tp!1896801 () Bool)

(assert (=> b!6892852 (= e!4152190 tp!1896801)))

(assert (= (and b!6892437 ((_ is ElementMatch!16819) (regTwo!34150 r3!135))) b!6892850))

(assert (= (and b!6892437 ((_ is Concat!25664) (regTwo!34150 r3!135))) b!6892851))

(assert (= (and b!6892437 ((_ is Star!16819) (regTwo!34150 r3!135))) b!6892852))

(assert (= (and b!6892437 ((_ is Union!16819) (regTwo!34150 r3!135))) b!6892853))

(declare-fun b!6892857 () Bool)

(declare-fun e!4152191 () Bool)

(declare-fun tp!1896809 () Bool)

(declare-fun tp!1896807 () Bool)

(assert (=> b!6892857 (= e!4152191 (and tp!1896809 tp!1896807))))

(declare-fun b!6892854 () Bool)

(assert (=> b!6892854 (= e!4152191 tp_is_empty!42863)))

(assert (=> b!6892453 (= tp!1896762 e!4152191)))

(declare-fun b!6892855 () Bool)

(declare-fun tp!1896808 () Bool)

(declare-fun tp!1896810 () Bool)

(assert (=> b!6892855 (= e!4152191 (and tp!1896808 tp!1896810))))

(declare-fun b!6892856 () Bool)

(declare-fun tp!1896806 () Bool)

(assert (=> b!6892856 (= e!4152191 tp!1896806)))

(assert (= (and b!6892453 ((_ is ElementMatch!16819) (regOne!34151 r1!6342))) b!6892854))

(assert (= (and b!6892453 ((_ is Concat!25664) (regOne!34151 r1!6342))) b!6892855))

(assert (= (and b!6892453 ((_ is Star!16819) (regOne!34151 r1!6342))) b!6892856))

(assert (= (and b!6892453 ((_ is Union!16819) (regOne!34151 r1!6342))) b!6892857))

(declare-fun b!6892861 () Bool)

(declare-fun e!4152192 () Bool)

(declare-fun tp!1896814 () Bool)

(declare-fun tp!1896812 () Bool)

(assert (=> b!6892861 (= e!4152192 (and tp!1896814 tp!1896812))))

(declare-fun b!6892858 () Bool)

(assert (=> b!6892858 (= e!4152192 tp_is_empty!42863)))

(assert (=> b!6892453 (= tp!1896772 e!4152192)))

(declare-fun b!6892859 () Bool)

(declare-fun tp!1896813 () Bool)

(declare-fun tp!1896815 () Bool)

(assert (=> b!6892859 (= e!4152192 (and tp!1896813 tp!1896815))))

(declare-fun b!6892860 () Bool)

(declare-fun tp!1896811 () Bool)

(assert (=> b!6892860 (= e!4152192 tp!1896811)))

(assert (= (and b!6892453 ((_ is ElementMatch!16819) (regTwo!34151 r1!6342))) b!6892858))

(assert (= (and b!6892453 ((_ is Concat!25664) (regTwo!34151 r1!6342))) b!6892859))

(assert (= (and b!6892453 ((_ is Star!16819) (regTwo!34151 r1!6342))) b!6892860))

(assert (= (and b!6892453 ((_ is Union!16819) (regTwo!34151 r1!6342))) b!6892861))

(declare-fun b!6892865 () Bool)

(declare-fun e!4152193 () Bool)

(declare-fun tp!1896819 () Bool)

(declare-fun tp!1896817 () Bool)

(assert (=> b!6892865 (= e!4152193 (and tp!1896819 tp!1896817))))

(declare-fun b!6892862 () Bool)

(assert (=> b!6892862 (= e!4152193 tp_is_empty!42863)))

(assert (=> b!6892452 (= tp!1896768 e!4152193)))

(declare-fun b!6892863 () Bool)

(declare-fun tp!1896818 () Bool)

(declare-fun tp!1896820 () Bool)

(assert (=> b!6892863 (= e!4152193 (and tp!1896818 tp!1896820))))

(declare-fun b!6892864 () Bool)

(declare-fun tp!1896816 () Bool)

(assert (=> b!6892864 (= e!4152193 tp!1896816)))

(assert (= (and b!6892452 ((_ is ElementMatch!16819) (regOne!34150 r2!6280))) b!6892862))

(assert (= (and b!6892452 ((_ is Concat!25664) (regOne!34150 r2!6280))) b!6892863))

(assert (= (and b!6892452 ((_ is Star!16819) (regOne!34150 r2!6280))) b!6892864))

(assert (= (and b!6892452 ((_ is Union!16819) (regOne!34150 r2!6280))) b!6892865))

(declare-fun b!6892869 () Bool)

(declare-fun e!4152194 () Bool)

(declare-fun tp!1896824 () Bool)

(declare-fun tp!1896822 () Bool)

(assert (=> b!6892869 (= e!4152194 (and tp!1896824 tp!1896822))))

(declare-fun b!6892866 () Bool)

(assert (=> b!6892866 (= e!4152194 tp_is_empty!42863)))

(assert (=> b!6892452 (= tp!1896774 e!4152194)))

(declare-fun b!6892867 () Bool)

(declare-fun tp!1896823 () Bool)

(declare-fun tp!1896825 () Bool)

(assert (=> b!6892867 (= e!4152194 (and tp!1896823 tp!1896825))))

(declare-fun b!6892868 () Bool)

(declare-fun tp!1896821 () Bool)

(assert (=> b!6892868 (= e!4152194 tp!1896821)))

(assert (= (and b!6892452 ((_ is ElementMatch!16819) (regTwo!34150 r2!6280))) b!6892866))

(assert (= (and b!6892452 ((_ is Concat!25664) (regTwo!34150 r2!6280))) b!6892867))

(assert (= (and b!6892452 ((_ is Star!16819) (regTwo!34150 r2!6280))) b!6892868))

(assert (= (and b!6892452 ((_ is Union!16819) (regTwo!34150 r2!6280))) b!6892869))

(declare-fun b!6892873 () Bool)

(declare-fun e!4152195 () Bool)

(declare-fun tp!1896829 () Bool)

(declare-fun tp!1896827 () Bool)

(assert (=> b!6892873 (= e!4152195 (and tp!1896829 tp!1896827))))

(declare-fun b!6892870 () Bool)

(assert (=> b!6892870 (= e!4152195 tp_is_empty!42863)))

(assert (=> b!6892446 (= tp!1896775 e!4152195)))

(declare-fun b!6892871 () Bool)

(declare-fun tp!1896828 () Bool)

(declare-fun tp!1896830 () Bool)

(assert (=> b!6892871 (= e!4152195 (and tp!1896828 tp!1896830))))

(declare-fun b!6892872 () Bool)

(declare-fun tp!1896826 () Bool)

(assert (=> b!6892872 (= e!4152195 tp!1896826)))

(assert (= (and b!6892446 ((_ is ElementMatch!16819) (reg!17148 r3!135))) b!6892870))

(assert (= (and b!6892446 ((_ is Concat!25664) (reg!17148 r3!135))) b!6892871))

(assert (= (and b!6892446 ((_ is Star!16819) (reg!17148 r3!135))) b!6892872))

(assert (= (and b!6892446 ((_ is Union!16819) (reg!17148 r3!135))) b!6892873))

(declare-fun b!6892877 () Bool)

(declare-fun e!4152196 () Bool)

(declare-fun tp!1896834 () Bool)

(declare-fun tp!1896832 () Bool)

(assert (=> b!6892877 (= e!4152196 (and tp!1896834 tp!1896832))))

(declare-fun b!6892874 () Bool)

(assert (=> b!6892874 (= e!4152196 tp_is_empty!42863)))

(assert (=> b!6892440 (= tp!1896760 e!4152196)))

(declare-fun b!6892875 () Bool)

(declare-fun tp!1896833 () Bool)

(declare-fun tp!1896835 () Bool)

(assert (=> b!6892875 (= e!4152196 (and tp!1896833 tp!1896835))))

(declare-fun b!6892876 () Bool)

(declare-fun tp!1896831 () Bool)

(assert (=> b!6892876 (= e!4152196 tp!1896831)))

(assert (= (and b!6892440 ((_ is ElementMatch!16819) (regOne!34150 r1!6342))) b!6892874))

(assert (= (and b!6892440 ((_ is Concat!25664) (regOne!34150 r1!6342))) b!6892875))

(assert (= (and b!6892440 ((_ is Star!16819) (regOne!34150 r1!6342))) b!6892876))

(assert (= (and b!6892440 ((_ is Union!16819) (regOne!34150 r1!6342))) b!6892877))

(declare-fun b!6892881 () Bool)

(declare-fun e!4152197 () Bool)

(declare-fun tp!1896839 () Bool)

(declare-fun tp!1896837 () Bool)

(assert (=> b!6892881 (= e!4152197 (and tp!1896839 tp!1896837))))

(declare-fun b!6892878 () Bool)

(assert (=> b!6892878 (= e!4152197 tp_is_empty!42863)))

(assert (=> b!6892440 (= tp!1896770 e!4152197)))

(declare-fun b!6892879 () Bool)

(declare-fun tp!1896838 () Bool)

(declare-fun tp!1896840 () Bool)

(assert (=> b!6892879 (= e!4152197 (and tp!1896838 tp!1896840))))

(declare-fun b!6892880 () Bool)

(declare-fun tp!1896836 () Bool)

(assert (=> b!6892880 (= e!4152197 tp!1896836)))

(assert (= (and b!6892440 ((_ is ElementMatch!16819) (regTwo!34150 r1!6342))) b!6892878))

(assert (= (and b!6892440 ((_ is Concat!25664) (regTwo!34150 r1!6342))) b!6892879))

(assert (= (and b!6892440 ((_ is Star!16819) (regTwo!34150 r1!6342))) b!6892880))

(assert (= (and b!6892440 ((_ is Union!16819) (regTwo!34150 r1!6342))) b!6892881))

(declare-fun b!6892886 () Bool)

(declare-fun e!4152200 () Bool)

(declare-fun tp!1896843 () Bool)

(assert (=> b!6892886 (= e!4152200 (and tp_is_empty!42863 tp!1896843))))

(assert (=> b!6892450 (= tp!1896771 e!4152200)))

(assert (= (and b!6892450 ((_ is Cons!66452) (t!380319 s!14361))) b!6892886))

(declare-fun b!6892892 () Bool)

(declare-fun e!4152201 () Bool)

(declare-fun tp!1896847 () Bool)

(declare-fun tp!1896845 () Bool)

(assert (=> b!6892892 (= e!4152201 (and tp!1896847 tp!1896845))))

(declare-fun b!6892889 () Bool)

(assert (=> b!6892889 (= e!4152201 tp_is_empty!42863)))

(assert (=> b!6892439 (= tp!1896761 e!4152201)))

(declare-fun b!6892890 () Bool)

(declare-fun tp!1896846 () Bool)

(declare-fun tp!1896848 () Bool)

(assert (=> b!6892890 (= e!4152201 (and tp!1896846 tp!1896848))))

(declare-fun b!6892891 () Bool)

(declare-fun tp!1896844 () Bool)

(assert (=> b!6892891 (= e!4152201 tp!1896844)))

(assert (= (and b!6892439 ((_ is ElementMatch!16819) (regOne!34151 r2!6280))) b!6892889))

(assert (= (and b!6892439 ((_ is Concat!25664) (regOne!34151 r2!6280))) b!6892890))

(assert (= (and b!6892439 ((_ is Star!16819) (regOne!34151 r2!6280))) b!6892891))

(assert (= (and b!6892439 ((_ is Union!16819) (regOne!34151 r2!6280))) b!6892892))

(declare-fun b!6892904 () Bool)

(declare-fun e!4152206 () Bool)

(declare-fun tp!1896852 () Bool)

(declare-fun tp!1896850 () Bool)

(assert (=> b!6892904 (= e!4152206 (and tp!1896852 tp!1896850))))

(declare-fun b!6892901 () Bool)

(assert (=> b!6892901 (= e!4152206 tp_is_empty!42863)))

(assert (=> b!6892439 (= tp!1896766 e!4152206)))

(declare-fun b!6892902 () Bool)

(declare-fun tp!1896851 () Bool)

(declare-fun tp!1896853 () Bool)

(assert (=> b!6892902 (= e!4152206 (and tp!1896851 tp!1896853))))

(declare-fun b!6892903 () Bool)

(declare-fun tp!1896849 () Bool)

(assert (=> b!6892903 (= e!4152206 tp!1896849)))

(assert (= (and b!6892439 ((_ is ElementMatch!16819) (regTwo!34151 r2!6280))) b!6892901))

(assert (= (and b!6892439 ((_ is Concat!25664) (regTwo!34151 r2!6280))) b!6892902))

(assert (= (and b!6892439 ((_ is Star!16819) (regTwo!34151 r2!6280))) b!6892903))

(assert (= (and b!6892439 ((_ is Union!16819) (regTwo!34151 r2!6280))) b!6892904))

(declare-fun b!6892908 () Bool)

(declare-fun e!4152209 () Bool)

(declare-fun tp!1896857 () Bool)

(declare-fun tp!1896855 () Bool)

(assert (=> b!6892908 (= e!4152209 (and tp!1896857 tp!1896855))))

(declare-fun b!6892905 () Bool)

(assert (=> b!6892905 (= e!4152209 tp_is_empty!42863)))

(assert (=> b!6892449 (= tp!1896764 e!4152209)))

(declare-fun b!6892906 () Bool)

(declare-fun tp!1896856 () Bool)

(declare-fun tp!1896858 () Bool)

(assert (=> b!6892906 (= e!4152209 (and tp!1896856 tp!1896858))))

(declare-fun b!6892907 () Bool)

(declare-fun tp!1896854 () Bool)

(assert (=> b!6892907 (= e!4152209 tp!1896854)))

(assert (= (and b!6892449 ((_ is ElementMatch!16819) (regOne!34151 r3!135))) b!6892905))

(assert (= (and b!6892449 ((_ is Concat!25664) (regOne!34151 r3!135))) b!6892906))

(assert (= (and b!6892449 ((_ is Star!16819) (regOne!34151 r3!135))) b!6892907))

(assert (= (and b!6892449 ((_ is Union!16819) (regOne!34151 r3!135))) b!6892908))

(declare-fun b!6892912 () Bool)

(declare-fun e!4152210 () Bool)

(declare-fun tp!1896862 () Bool)

(declare-fun tp!1896860 () Bool)

(assert (=> b!6892912 (= e!4152210 (and tp!1896862 tp!1896860))))

(declare-fun b!6892909 () Bool)

(assert (=> b!6892909 (= e!4152210 tp_is_empty!42863)))

(assert (=> b!6892449 (= tp!1896773 e!4152210)))

(declare-fun b!6892910 () Bool)

(declare-fun tp!1896861 () Bool)

(declare-fun tp!1896863 () Bool)

(assert (=> b!6892910 (= e!4152210 (and tp!1896861 tp!1896863))))

(declare-fun b!6892911 () Bool)

(declare-fun tp!1896859 () Bool)

(assert (=> b!6892911 (= e!4152210 tp!1896859)))

(assert (= (and b!6892449 ((_ is ElementMatch!16819) (regTwo!34151 r3!135))) b!6892909))

(assert (= (and b!6892449 ((_ is Concat!25664) (regTwo!34151 r3!135))) b!6892910))

(assert (= (and b!6892449 ((_ is Star!16819) (regTwo!34151 r3!135))) b!6892911))

(assert (= (and b!6892449 ((_ is Union!16819) (regTwo!34151 r3!135))) b!6892912))

(check-sat (not b!6892880) (not b!6892906) (not b!6892791) (not b!6892867) (not b!6892910) (not b!6892816) (not b!6892798) (not b!6892801) (not d!2161217) (not d!2161203) (not b!6892877) (not b!6892864) (not b!6892822) (not b!6892790) (not b!6892860) (not bm!627172) (not bm!627143) (not b!6892480) (not b!6892911) (not bm!627138) (not b!6892851) (not b!6892481) (not b!6892839) (not d!2161235) (not b!6892852) (not b!6892840) (not b!6892908) tp_is_empty!42863 (not b!6892903) (not b!6892859) (not b!6892891) (not d!2161253) (not bm!627152) (not b!6892892) (not bm!627129) (not b!6892855) (not b!6892873) (not b!6892806) (not b!6892651) (not b!6892871) (not d!2161249) (not b!6892826) (not b!6892660) (not b!6892879) (not b!6892805) (not b!6892848) (not b!6892881) (not d!2161211) (not b!6892890) (not b!6892815) (not b!6892857) (not b!6892876) (not b!6892823) (not b!6892869) (not bm!627173) (not b!6892843) (not b!6892476) (not b!6892797) (not d!2161193) (not b!6892704) (not bm!627146) (not b!6892558) (not b!6892845) (not b!6892868) (not b!6892886) (not b!6892902) (not d!2161195) (not b!6892825) (not b!6892907) (not bm!627171) (not bm!627141) (not b!6892861) (not b!6892872) (not b!6892484) (not b!6892865) (not d!2161205) (not bm!627144) (not d!2161237) (not b!6892853) (not bm!627131) (not b!6892875) (not b!6892841) (not b!6892800) (not bm!627151) (not b!6892642) (not b!6892912) (not b!6892856) (not b!6892863) (not b!6892478) (not bm!627170) (not b!6892703) (not b!6892847) (not b!6892904) (not b!6892477) (not bm!627140) (not b!6892844) (not b!6892849))
(check-sat)
