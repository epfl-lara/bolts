; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85544 () Bool)

(assert start!85544)

(declare-fun b!960442 () Bool)

(assert (=> b!960442 true))

(assert (=> b!960442 true))

(declare-fun lambda!33408 () Int)

(declare-fun lambda!33407 () Int)

(assert (=> b!960442 (not (= lambda!33408 lambda!33407))))

(assert (=> b!960442 true))

(assert (=> b!960442 true))

(declare-fun b!960436 () Bool)

(declare-fun e!620433 () Bool)

(declare-fun tp!295318 () Bool)

(declare-fun tp!295314 () Bool)

(assert (=> b!960436 (= e!620433 (and tp!295318 tp!295314))))

(declare-fun b!960437 () Bool)

(declare-fun tp!295313 () Bool)

(assert (=> b!960437 (= e!620433 tp!295313)))

(declare-fun b!960438 () Bool)

(declare-fun e!620435 () Bool)

(declare-fun tp_is_empty!4967 () Bool)

(declare-fun tp!295317 () Bool)

(assert (=> b!960438 (= e!620435 (and tp_is_empty!4967 tp!295317))))

(declare-fun b!960439 () Bool)

(declare-fun tp!295316 () Bool)

(declare-fun tp!295315 () Bool)

(assert (=> b!960439 (= e!620433 (and tp!295316 tp!295315))))

(declare-fun b!960440 () Bool)

(declare-fun e!620434 () Bool)

(declare-datatypes ((C!5894 0))(
  ( (C!5895 (val!3195 Int)) )
))
(declare-datatypes ((List!9892 0))(
  ( (Nil!9876) (Cons!9876 (h!15277 C!5894) (t!100938 List!9892)) )
))
(declare-datatypes ((tuple2!11210 0))(
  ( (tuple2!11211 (_1!6431 List!9892) (_2!6431 List!9892)) )
))
(declare-datatypes ((Option!2247 0))(
  ( (None!2246) (Some!2246 (v!19663 tuple2!11210)) )
))
(declare-fun lt!346527 () Option!2247)

(declare-fun isEmpty!6168 (Option!2247) Bool)

(assert (=> b!960440 (= e!620434 (isEmpty!6168 lt!346527))))

(declare-fun b!960441 () Bool)

(declare-fun e!620436 () Bool)

(declare-fun e!620432 () Bool)

(assert (=> b!960441 (= e!620436 (not e!620432))))

(declare-fun res!436483 () Bool)

(assert (=> b!960441 (=> res!436483 e!620432)))

(declare-fun lt!346530 () Bool)

(declare-datatypes ((Regex!2662 0))(
  ( (ElementMatch!2662 (c!156441 C!5894)) (Concat!4495 (regOne!5836 Regex!2662) (regTwo!5836 Regex!2662)) (EmptyExpr!2662) (Star!2662 (reg!2991 Regex!2662)) (EmptyLang!2662) (Union!2662 (regOne!5837 Regex!2662) (regTwo!5837 Regex!2662)) )
))
(declare-fun r!15766 () Regex!2662)

(assert (=> b!960441 (= res!436483 (or lt!346530 (and (is-Concat!4495 r!15766) (is-EmptyExpr!2662 (regOne!5836 r!15766))) (not (is-Concat!4495 r!15766)) (not (is-EmptyExpr!2662 (regTwo!5836 r!15766)))))))

(declare-fun s!10566 () List!9892)

(declare-fun matchRSpec!463 (Regex!2662 List!9892) Bool)

(assert (=> b!960441 (= lt!346530 (matchRSpec!463 r!15766 s!10566))))

(declare-fun matchR!1200 (Regex!2662 List!9892) Bool)

(assert (=> b!960441 (= lt!346530 (matchR!1200 r!15766 s!10566))))

(declare-datatypes ((Unit!14979 0))(
  ( (Unit!14980) )
))
(declare-fun lt!346528 () Unit!14979)

(declare-fun mainMatchTheorem!463 (Regex!2662 List!9892) Unit!14979)

(assert (=> b!960441 (= lt!346528 (mainMatchTheorem!463 r!15766 s!10566))))

(declare-fun res!436485 () Bool)

(assert (=> start!85544 (=> (not res!436485) (not e!620436))))

(declare-fun validRegex!1131 (Regex!2662) Bool)

(assert (=> start!85544 (= res!436485 (validRegex!1131 r!15766))))

(assert (=> start!85544 e!620436))

(assert (=> start!85544 e!620433))

(assert (=> start!85544 e!620435))

(assert (=> b!960442 (= e!620432 e!620434)))

(declare-fun res!436484 () Bool)

(assert (=> b!960442 (=> res!436484 e!620434)))

(declare-fun isEmpty!6169 (List!9892) Bool)

(assert (=> b!960442 (= res!436484 (isEmpty!6169 s!10566))))

(declare-fun Exists!409 (Int) Bool)

(assert (=> b!960442 (= (Exists!409 lambda!33407) (Exists!409 lambda!33408))))

(declare-fun lt!346526 () Unit!14979)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!205 (Regex!2662 Regex!2662 List!9892) Unit!14979)

(assert (=> b!960442 (= lt!346526 (lemmaExistCutMatchRandMatchRSpecEquivalent!205 (regOne!5836 r!15766) EmptyExpr!2662 s!10566))))

(declare-fun isDefined!1889 (Option!2247) Bool)

(assert (=> b!960442 (= (isDefined!1889 lt!346527) (Exists!409 lambda!33407))))

(declare-fun findConcatSeparation!353 (Regex!2662 Regex!2662 List!9892 List!9892 List!9892) Option!2247)

(assert (=> b!960442 (= lt!346527 (findConcatSeparation!353 (regOne!5836 r!15766) EmptyExpr!2662 Nil!9876 s!10566 s!10566))))

(declare-fun lt!346529 () Unit!14979)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!353 (Regex!2662 Regex!2662 List!9892) Unit!14979)

(assert (=> b!960442 (= lt!346529 (lemmaFindConcatSeparationEquivalentToExists!353 (regOne!5836 r!15766) EmptyExpr!2662 s!10566))))

(declare-fun b!960443 () Bool)

(assert (=> b!960443 (= e!620433 tp_is_empty!4967)))

(assert (= (and start!85544 res!436485) b!960441))

(assert (= (and b!960441 (not res!436483)) b!960442))

(assert (= (and b!960442 (not res!436484)) b!960440))

(assert (= (and start!85544 (is-ElementMatch!2662 r!15766)) b!960443))

(assert (= (and start!85544 (is-Concat!4495 r!15766)) b!960436))

(assert (= (and start!85544 (is-Star!2662 r!15766)) b!960437))

(assert (= (and start!85544 (is-Union!2662 r!15766)) b!960439))

(assert (= (and start!85544 (is-Cons!9876 s!10566)) b!960438))

(declare-fun m!1168861 () Bool)

(assert (=> b!960440 m!1168861))

(declare-fun m!1168863 () Bool)

(assert (=> b!960441 m!1168863))

(declare-fun m!1168865 () Bool)

(assert (=> b!960441 m!1168865))

(declare-fun m!1168867 () Bool)

(assert (=> b!960441 m!1168867))

(declare-fun m!1168869 () Bool)

(assert (=> start!85544 m!1168869))

(declare-fun m!1168871 () Bool)

(assert (=> b!960442 m!1168871))

(declare-fun m!1168873 () Bool)

(assert (=> b!960442 m!1168873))

(declare-fun m!1168875 () Bool)

(assert (=> b!960442 m!1168875))

(declare-fun m!1168877 () Bool)

(assert (=> b!960442 m!1168877))

(assert (=> b!960442 m!1168877))

(declare-fun m!1168879 () Bool)

(assert (=> b!960442 m!1168879))

(declare-fun m!1168881 () Bool)

(assert (=> b!960442 m!1168881))

(declare-fun m!1168883 () Bool)

(assert (=> b!960442 m!1168883))

(push 1)

(assert (not b!960438))

(assert (not start!85544))

(assert (not b!960436))

(assert tp_is_empty!4967)

(assert (not b!960439))

(assert (not b!960442))

(assert (not b!960441))

(assert (not b!960440))

(assert (not b!960437))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!285087 () Bool)

(assert (=> d!285087 (= (isEmpty!6168 lt!346527) (not (is-Some!2246 lt!346527)))))

(assert (=> b!960440 d!285087))

(declare-fun bm!60515 () Bool)

(declare-fun call!60522 () Bool)

(declare-fun call!60521 () Bool)

(assert (=> bm!60515 (= call!60522 call!60521)))

(declare-fun bm!60516 () Bool)

(declare-fun call!60520 () Bool)

(declare-fun c!156447 () Bool)

(assert (=> bm!60516 (= call!60520 (validRegex!1131 (ite c!156447 (regTwo!5837 r!15766) (regTwo!5836 r!15766))))))

(declare-fun b!960506 () Bool)

(declare-fun e!620477 () Bool)

(declare-fun e!620473 () Bool)

(assert (=> b!960506 (= e!620477 e!620473)))

(declare-fun c!156448 () Bool)

(assert (=> b!960506 (= c!156448 (is-Star!2662 r!15766))))

(declare-fun b!960507 () Bool)

(declare-fun e!620478 () Bool)

(assert (=> b!960507 (= e!620473 e!620478)))

(assert (=> b!960507 (= c!156447 (is-Union!2662 r!15766))))

(declare-fun b!960508 () Bool)

(declare-fun res!436521 () Bool)

(declare-fun e!620475 () Bool)

(assert (=> b!960508 (=> (not res!436521) (not e!620475))))

(assert (=> b!960508 (= res!436521 call!60522)))

(assert (=> b!960508 (= e!620478 e!620475)))

(declare-fun bm!60517 () Bool)

(assert (=> bm!60517 (= call!60521 (validRegex!1131 (ite c!156448 (reg!2991 r!15766) (ite c!156447 (regOne!5837 r!15766) (regOne!5836 r!15766)))))))

(declare-fun d!285089 () Bool)

(declare-fun res!436520 () Bool)

(assert (=> d!285089 (=> res!436520 e!620477)))

(assert (=> d!285089 (= res!436520 (is-ElementMatch!2662 r!15766))))

(assert (=> d!285089 (= (validRegex!1131 r!15766) e!620477)))

(declare-fun b!960509 () Bool)

(declare-fun e!620472 () Bool)

(assert (=> b!960509 (= e!620472 call!60520)))

(declare-fun b!960510 () Bool)

(assert (=> b!960510 (= e!620475 call!60520)))

(declare-fun b!960511 () Bool)

(declare-fun e!620476 () Bool)

(assert (=> b!960511 (= e!620476 call!60521)))

(declare-fun b!960512 () Bool)

(declare-fun e!620474 () Bool)

(assert (=> b!960512 (= e!620474 e!620472)))

(declare-fun res!436519 () Bool)

(assert (=> b!960512 (=> (not res!436519) (not e!620472))))

(assert (=> b!960512 (= res!436519 call!60522)))

(declare-fun b!960513 () Bool)

(declare-fun res!436518 () Bool)

(assert (=> b!960513 (=> res!436518 e!620474)))

(assert (=> b!960513 (= res!436518 (not (is-Concat!4495 r!15766)))))

(assert (=> b!960513 (= e!620478 e!620474)))

(declare-fun b!960514 () Bool)

(assert (=> b!960514 (= e!620473 e!620476)))

(declare-fun res!436517 () Bool)

(declare-fun nullable!801 (Regex!2662) Bool)

(assert (=> b!960514 (= res!436517 (not (nullable!801 (reg!2991 r!15766))))))

(assert (=> b!960514 (=> (not res!436517) (not e!620476))))

(assert (= (and d!285089 (not res!436520)) b!960506))

(assert (= (and b!960506 c!156448) b!960514))

(assert (= (and b!960506 (not c!156448)) b!960507))

(assert (= (and b!960514 res!436517) b!960511))

(assert (= (and b!960507 c!156447) b!960508))

(assert (= (and b!960507 (not c!156447)) b!960513))

(assert (= (and b!960508 res!436521) b!960510))

(assert (= (and b!960513 (not res!436518)) b!960512))

(assert (= (and b!960512 res!436519) b!960509))

(assert (= (or b!960510 b!960509) bm!60516))

(assert (= (or b!960508 b!960512) bm!60515))

(assert (= (or b!960511 bm!60515) bm!60517))

(declare-fun m!1168909 () Bool)

(assert (=> bm!60516 m!1168909))

(declare-fun m!1168911 () Bool)

(assert (=> bm!60517 m!1168911))

(declare-fun m!1168913 () Bool)

(assert (=> b!960514 m!1168913))

(assert (=> start!85544 d!285089))

(declare-fun d!285091 () Bool)

(declare-fun choose!6043 (Int) Bool)

(assert (=> d!285091 (= (Exists!409 lambda!33408) (choose!6043 lambda!33408))))

(declare-fun bs!240764 () Bool)

(assert (= bs!240764 d!285091))

(declare-fun m!1168915 () Bool)

(assert (=> bs!240764 m!1168915))

(assert (=> b!960442 d!285091))

(declare-fun b!960551 () Bool)

(declare-fun lt!346552 () Unit!14979)

(declare-fun lt!346553 () Unit!14979)

(assert (=> b!960551 (= lt!346552 lt!346553)))

(declare-fun ++!2659 (List!9892 List!9892) List!9892)

(assert (=> b!960551 (= (++!2659 (++!2659 Nil!9876 (Cons!9876 (h!15277 s!10566) Nil!9876)) (t!100938 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!264 (List!9892 C!5894 List!9892 List!9892) Unit!14979)

(assert (=> b!960551 (= lt!346553 (lemmaMoveElementToOtherListKeepsConcatEq!264 Nil!9876 (h!15277 s!10566) (t!100938 s!10566) s!10566))))

(declare-fun e!620507 () Option!2247)

(assert (=> b!960551 (= e!620507 (findConcatSeparation!353 (regOne!5836 r!15766) EmptyExpr!2662 (++!2659 Nil!9876 (Cons!9876 (h!15277 s!10566) Nil!9876)) (t!100938 s!10566) s!10566))))

(declare-fun b!960552 () Bool)

(declare-fun res!436546 () Bool)

(declare-fun e!620504 () Bool)

(assert (=> b!960552 (=> (not res!436546) (not e!620504))))

(declare-fun lt!346554 () Option!2247)

(declare-fun get!3365 (Option!2247) tuple2!11210)

(assert (=> b!960552 (= res!436546 (matchR!1200 (regOne!5836 r!15766) (_1!6431 (get!3365 lt!346554))))))

(declare-fun b!960553 () Bool)

(declare-fun e!620505 () Option!2247)

(assert (=> b!960553 (= e!620505 (Some!2246 (tuple2!11211 Nil!9876 s!10566)))))

(declare-fun b!960554 () Bool)

(assert (=> b!960554 (= e!620505 e!620507)))

(declare-fun c!156458 () Bool)

(assert (=> b!960554 (= c!156458 (is-Nil!9876 s!10566))))

(declare-fun b!960556 () Bool)

(declare-fun e!620503 () Bool)

(assert (=> b!960556 (= e!620503 (not (isDefined!1889 lt!346554)))))

(declare-fun b!960557 () Bool)

(assert (=> b!960557 (= e!620504 (= (++!2659 (_1!6431 (get!3365 lt!346554)) (_2!6431 (get!3365 lt!346554))) s!10566))))

(declare-fun b!960558 () Bool)

(declare-fun res!436542 () Bool)

(assert (=> b!960558 (=> (not res!436542) (not e!620504))))

(assert (=> b!960558 (= res!436542 (matchR!1200 EmptyExpr!2662 (_2!6431 (get!3365 lt!346554))))))

(declare-fun b!960559 () Bool)

(assert (=> b!960559 (= e!620507 None!2246)))

(declare-fun b!960555 () Bool)

(declare-fun e!620506 () Bool)

(assert (=> b!960555 (= e!620506 (matchR!1200 EmptyExpr!2662 s!10566))))

(declare-fun d!285093 () Bool)

(assert (=> d!285093 e!620503))

(declare-fun res!436545 () Bool)

(assert (=> d!285093 (=> res!436545 e!620503)))

(assert (=> d!285093 (= res!436545 e!620504)))

(declare-fun res!436543 () Bool)

(assert (=> d!285093 (=> (not res!436543) (not e!620504))))

(assert (=> d!285093 (= res!436543 (isDefined!1889 lt!346554))))

(assert (=> d!285093 (= lt!346554 e!620505)))

(declare-fun c!156457 () Bool)

(assert (=> d!285093 (= c!156457 e!620506)))

(declare-fun res!436544 () Bool)

(assert (=> d!285093 (=> (not res!436544) (not e!620506))))

(assert (=> d!285093 (= res!436544 (matchR!1200 (regOne!5836 r!15766) Nil!9876))))

(assert (=> d!285093 (validRegex!1131 (regOne!5836 r!15766))))

(assert (=> d!285093 (= (findConcatSeparation!353 (regOne!5836 r!15766) EmptyExpr!2662 Nil!9876 s!10566 s!10566) lt!346554)))

(assert (= (and d!285093 res!436544) b!960555))

(assert (= (and d!285093 c!156457) b!960553))

(assert (= (and d!285093 (not c!156457)) b!960554))

(assert (= (and b!960554 c!156458) b!960559))

(assert (= (and b!960554 (not c!156458)) b!960551))

(assert (= (and d!285093 res!436543) b!960552))

(assert (= (and b!960552 res!436546) b!960558))

(assert (= (and b!960558 res!436542) b!960557))

(assert (= (and d!285093 (not res!436545)) b!960556))

(declare-fun m!1168917 () Bool)

(assert (=> b!960558 m!1168917))

(declare-fun m!1168919 () Bool)

(assert (=> b!960558 m!1168919))

(declare-fun m!1168921 () Bool)

(assert (=> b!960555 m!1168921))

(assert (=> b!960552 m!1168917))

(declare-fun m!1168923 () Bool)

(assert (=> b!960552 m!1168923))

(declare-fun m!1168925 () Bool)

(assert (=> b!960556 m!1168925))

(assert (=> b!960557 m!1168917))

(declare-fun m!1168927 () Bool)

(assert (=> b!960557 m!1168927))

(assert (=> d!285093 m!1168925))

(declare-fun m!1168929 () Bool)

(assert (=> d!285093 m!1168929))

(declare-fun m!1168931 () Bool)

(assert (=> d!285093 m!1168931))

(declare-fun m!1168933 () Bool)

(assert (=> b!960551 m!1168933))

(assert (=> b!960551 m!1168933))

(declare-fun m!1168935 () Bool)

(assert (=> b!960551 m!1168935))

(declare-fun m!1168937 () Bool)

(assert (=> b!960551 m!1168937))

(assert (=> b!960551 m!1168933))

(declare-fun m!1168939 () Bool)

(assert (=> b!960551 m!1168939))

(assert (=> b!960442 d!285093))

(declare-fun d!285097 () Bool)

(assert (=> d!285097 (= (isEmpty!6169 s!10566) (is-Nil!9876 s!10566))))

(assert (=> b!960442 d!285097))

(declare-fun d!285099 () Bool)

(assert (=> d!285099 (= (Exists!409 lambda!33407) (choose!6043 lambda!33407))))

(declare-fun bs!240765 () Bool)

(assert (= bs!240765 d!285099))

(declare-fun m!1168941 () Bool)

(assert (=> bs!240765 m!1168941))

(assert (=> b!960442 d!285099))

(declare-fun bs!240766 () Bool)

(declare-fun d!285101 () Bool)

(assert (= bs!240766 (and d!285101 b!960442)))

(declare-fun lambda!33419 () Int)

(assert (=> bs!240766 (= lambda!33419 lambda!33407)))

(assert (=> bs!240766 (not (= lambda!33419 lambda!33408))))

(assert (=> d!285101 true))

(assert (=> d!285101 true))

(assert (=> d!285101 true))

(assert (=> d!285101 (= (isDefined!1889 (findConcatSeparation!353 (regOne!5836 r!15766) EmptyExpr!2662 Nil!9876 s!10566 s!10566)) (Exists!409 lambda!33419))))

(declare-fun lt!346557 () Unit!14979)

(declare-fun choose!6044 (Regex!2662 Regex!2662 List!9892) Unit!14979)

(assert (=> d!285101 (= lt!346557 (choose!6044 (regOne!5836 r!15766) EmptyExpr!2662 s!10566))))

(assert (=> d!285101 (validRegex!1131 (regOne!5836 r!15766))))

(assert (=> d!285101 (= (lemmaFindConcatSeparationEquivalentToExists!353 (regOne!5836 r!15766) EmptyExpr!2662 s!10566) lt!346557)))

(declare-fun bs!240767 () Bool)

(assert (= bs!240767 d!285101))

(assert (=> bs!240767 m!1168875))

(declare-fun m!1168949 () Bool)

(assert (=> bs!240767 m!1168949))

(declare-fun m!1168951 () Bool)

(assert (=> bs!240767 m!1168951))

(declare-fun m!1168953 () Bool)

(assert (=> bs!240767 m!1168953))

(assert (=> bs!240767 m!1168931))

(assert (=> bs!240767 m!1168875))

(assert (=> b!960442 d!285101))

(declare-fun d!285105 () Bool)

(assert (=> d!285105 (= (isDefined!1889 lt!346527) (not (isEmpty!6168 lt!346527)))))

(declare-fun bs!240768 () Bool)

(assert (= bs!240768 d!285105))

(assert (=> bs!240768 m!1168861))

(assert (=> b!960442 d!285105))

(declare-fun bs!240769 () Bool)

(declare-fun d!285107 () Bool)

(assert (= bs!240769 (and d!285107 b!960442)))

(declare-fun lambda!33424 () Int)

(assert (=> bs!240769 (= lambda!33424 lambda!33407)))

(assert (=> bs!240769 (not (= lambda!33424 lambda!33408))))

(declare-fun bs!240770 () Bool)

(assert (= bs!240770 (and d!285107 d!285101)))

(assert (=> bs!240770 (= lambda!33424 lambda!33419)))

(assert (=> d!285107 true))

(assert (=> d!285107 true))

(assert (=> d!285107 true))

(declare-fun lambda!33425 () Int)

(assert (=> bs!240769 (not (= lambda!33425 lambda!33407))))

(assert (=> bs!240769 (= lambda!33425 lambda!33408)))

(assert (=> bs!240770 (not (= lambda!33425 lambda!33419))))

(declare-fun bs!240771 () Bool)

(assert (= bs!240771 d!285107))

(assert (=> bs!240771 (not (= lambda!33425 lambda!33424))))

(assert (=> d!285107 true))

(assert (=> d!285107 true))

(assert (=> d!285107 true))

(assert (=> d!285107 (= (Exists!409 lambda!33424) (Exists!409 lambda!33425))))

(declare-fun lt!346560 () Unit!14979)

(declare-fun choose!6045 (Regex!2662 Regex!2662 List!9892) Unit!14979)

(assert (=> d!285107 (= lt!346560 (choose!6045 (regOne!5836 r!15766) EmptyExpr!2662 s!10566))))

(assert (=> d!285107 (validRegex!1131 (regOne!5836 r!15766))))

(assert (=> d!285107 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!205 (regOne!5836 r!15766) EmptyExpr!2662 s!10566) lt!346560)))

(declare-fun m!1168955 () Bool)

(assert (=> bs!240771 m!1168955))

(declare-fun m!1168957 () Bool)

(assert (=> bs!240771 m!1168957))

(declare-fun m!1168959 () Bool)

(assert (=> bs!240771 m!1168959))

(assert (=> bs!240771 m!1168931))

(assert (=> b!960442 d!285107))

(declare-fun bs!240772 () Bool)

(declare-fun b!960648 () Bool)

(assert (= bs!240772 (and b!960648 d!285107)))

(declare-fun lambda!33434 () Int)

(assert (=> bs!240772 (not (= lambda!33434 lambda!33424))))

(declare-fun bs!240773 () Bool)

(assert (= bs!240773 (and b!960648 b!960442)))

(assert (=> bs!240773 (not (= lambda!33434 lambda!33407))))

(assert (=> bs!240772 (not (= lambda!33434 lambda!33425))))

(declare-fun bs!240774 () Bool)

(assert (= bs!240774 (and b!960648 d!285101)))

(assert (=> bs!240774 (not (= lambda!33434 lambda!33419))))

(assert (=> bs!240773 (not (= lambda!33434 lambda!33408))))

(assert (=> b!960648 true))

(assert (=> b!960648 true))

(declare-fun bs!240775 () Bool)

(declare-fun b!960650 () Bool)

(assert (= bs!240775 (and b!960650 d!285107)))

(declare-fun lambda!33435 () Int)

(assert (=> bs!240775 (not (= lambda!33435 lambda!33424))))

(declare-fun bs!240776 () Bool)

(assert (= bs!240776 (and b!960650 b!960648)))

(assert (=> bs!240776 (not (= lambda!33435 lambda!33434))))

(declare-fun bs!240777 () Bool)

(assert (= bs!240777 (and b!960650 b!960442)))

(assert (=> bs!240777 (not (= lambda!33435 lambda!33407))))

(assert (=> bs!240775 (= (= (regTwo!5836 r!15766) EmptyExpr!2662) (= lambda!33435 lambda!33425))))

(declare-fun bs!240778 () Bool)

(assert (= bs!240778 (and b!960650 d!285101)))

(assert (=> bs!240778 (not (= lambda!33435 lambda!33419))))

(assert (=> bs!240777 (= (= (regTwo!5836 r!15766) EmptyExpr!2662) (= lambda!33435 lambda!33408))))

(assert (=> b!960650 true))

(assert (=> b!960650 true))

(declare-fun b!960645 () Bool)

(declare-fun e!620560 () Bool)

(declare-fun call!60540 () Bool)

(assert (=> b!960645 (= e!620560 call!60540)))

(declare-fun b!960646 () Bool)

(declare-fun e!620557 () Bool)

(declare-fun e!620559 () Bool)

(assert (=> b!960646 (= e!620557 e!620559)))

(declare-fun c!156477 () Bool)

(assert (=> b!960646 (= c!156477 (is-Star!2662 r!15766))))

(declare-fun b!960647 () Bool)

(declare-fun res!436597 () Bool)

(declare-fun e!620563 () Bool)

(assert (=> b!960647 (=> res!436597 e!620563)))

(assert (=> b!960647 (= res!436597 call!60540)))

(assert (=> b!960647 (= e!620559 e!620563)))

(declare-fun call!60541 () Bool)

(assert (=> b!960648 (= e!620563 call!60541)))

(declare-fun b!960649 () Bool)

(declare-fun e!620558 () Bool)

(assert (=> b!960649 (= e!620560 e!620558)))

(declare-fun res!436596 () Bool)

(assert (=> b!960649 (= res!436596 (not (is-EmptyLang!2662 r!15766)))))

(assert (=> b!960649 (=> (not res!436596) (not e!620558))))

(assert (=> b!960650 (= e!620559 call!60541)))

(declare-fun b!960651 () Bool)

(declare-fun e!620562 () Bool)

(assert (=> b!960651 (= e!620562 (= s!10566 (Cons!9876 (c!156441 r!15766) Nil!9876)))))

(declare-fun bm!60535 () Bool)

(assert (=> bm!60535 (= call!60541 (Exists!409 (ite c!156477 lambda!33434 lambda!33435)))))

(declare-fun bm!60536 () Bool)

(assert (=> bm!60536 (= call!60540 (isEmpty!6169 s!10566))))

(declare-fun d!285109 () Bool)

(declare-fun c!156480 () Bool)

(assert (=> d!285109 (= c!156480 (is-EmptyExpr!2662 r!15766))))

(assert (=> d!285109 (= (matchRSpec!463 r!15766 s!10566) e!620560)))

(declare-fun b!960652 () Bool)

(declare-fun c!156478 () Bool)

(assert (=> b!960652 (= c!156478 (is-Union!2662 r!15766))))

(assert (=> b!960652 (= e!620562 e!620557)))

(declare-fun b!960653 () Bool)

(declare-fun c!156479 () Bool)

(assert (=> b!960653 (= c!156479 (is-ElementMatch!2662 r!15766))))

(assert (=> b!960653 (= e!620558 e!620562)))

(declare-fun b!960654 () Bool)

(declare-fun e!620561 () Bool)

(assert (=> b!960654 (= e!620561 (matchRSpec!463 (regTwo!5837 r!15766) s!10566))))

(declare-fun b!960655 () Bool)

(assert (=> b!960655 (= e!620557 e!620561)))

(declare-fun res!436598 () Bool)

(assert (=> b!960655 (= res!436598 (matchRSpec!463 (regOne!5837 r!15766) s!10566))))

(assert (=> b!960655 (=> res!436598 e!620561)))

(assert (= (and d!285109 c!156480) b!960645))

(assert (= (and d!285109 (not c!156480)) b!960649))

(assert (= (and b!960649 res!436596) b!960653))

(assert (= (and b!960653 c!156479) b!960651))

(assert (= (and b!960653 (not c!156479)) b!960652))

(assert (= (and b!960652 c!156478) b!960655))

(assert (= (and b!960652 (not c!156478)) b!960646))

(assert (= (and b!960655 (not res!436598)) b!960654))

(assert (= (and b!960646 c!156477) b!960647))

(assert (= (and b!960646 (not c!156477)) b!960650))

(assert (= (and b!960647 (not res!436597)) b!960648))

(assert (= (or b!960648 b!960650) bm!60535))

(assert (= (or b!960645 b!960647) bm!60536))

(declare-fun m!1168961 () Bool)

(assert (=> bm!60535 m!1168961))

(assert (=> bm!60536 m!1168881))

(declare-fun m!1168963 () Bool)

(assert (=> b!960654 m!1168963))

(declare-fun m!1168965 () Bool)

(assert (=> b!960655 m!1168965))

(assert (=> b!960441 d!285109))

(declare-fun b!960695 () Bool)

(declare-fun e!620588 () Bool)

(declare-fun lt!346563 () Bool)

(assert (=> b!960695 (= e!620588 (not lt!346563))))

(declare-fun b!960696 () Bool)

(declare-fun e!620591 () Bool)

(declare-fun e!620587 () Bool)

(assert (=> b!960696 (= e!620591 e!620587)))

(declare-fun res!436618 () Bool)

(assert (=> b!960696 (=> res!436618 e!620587)))

(declare-fun call!60546 () Bool)

(assert (=> b!960696 (= res!436618 call!60546)))

(declare-fun b!960697 () Bool)

(declare-fun e!620589 () Bool)

(assert (=> b!960697 (= e!620589 e!620591)))

(declare-fun res!436624 () Bool)

(assert (=> b!960697 (=> (not res!436624) (not e!620591))))

(assert (=> b!960697 (= res!436624 (not lt!346563))))

(declare-fun b!960698 () Bool)

(declare-fun e!620586 () Bool)

(assert (=> b!960698 (= e!620586 (nullable!801 r!15766))))

(declare-fun b!960699 () Bool)

(declare-fun res!436619 () Bool)

(declare-fun e!620585 () Bool)

(assert (=> b!960699 (=> (not res!436619) (not e!620585))))

(assert (=> b!960699 (= res!436619 (not call!60546))))

(declare-fun b!960700 () Bool)

(declare-fun derivativeStep!609 (Regex!2662 C!5894) Regex!2662)

(declare-fun head!1762 (List!9892) C!5894)

(declare-fun tail!1324 (List!9892) List!9892)

(assert (=> b!960700 (= e!620586 (matchR!1200 (derivativeStep!609 r!15766 (head!1762 s!10566)) (tail!1324 s!10566)))))

(declare-fun b!960701 () Bool)

(declare-fun res!436622 () Bool)

(assert (=> b!960701 (=> res!436622 e!620589)))

(assert (=> b!960701 (= res!436622 (not (is-ElementMatch!2662 r!15766)))))

(assert (=> b!960701 (= e!620588 e!620589)))

(declare-fun d!285111 () Bool)

(declare-fun e!620590 () Bool)

(assert (=> d!285111 e!620590))

(declare-fun c!156491 () Bool)

(assert (=> d!285111 (= c!156491 (is-EmptyExpr!2662 r!15766))))

(assert (=> d!285111 (= lt!346563 e!620586)))

(declare-fun c!156493 () Bool)

(assert (=> d!285111 (= c!156493 (isEmpty!6169 s!10566))))

(assert (=> d!285111 (validRegex!1131 r!15766)))

(assert (=> d!285111 (= (matchR!1200 r!15766 s!10566) lt!346563)))

(declare-fun b!960702 () Bool)

(declare-fun res!436625 () Bool)

(assert (=> b!960702 (=> res!436625 e!620587)))

(assert (=> b!960702 (= res!436625 (not (isEmpty!6169 (tail!1324 s!10566))))))

(declare-fun b!960703 () Bool)

(assert (=> b!960703 (= e!620590 e!620588)))

(declare-fun c!156492 () Bool)

(assert (=> b!960703 (= c!156492 (is-EmptyLang!2662 r!15766))))

(declare-fun b!960704 () Bool)

(assert (=> b!960704 (= e!620587 (not (= (head!1762 s!10566) (c!156441 r!15766))))))

(declare-fun b!960705 () Bool)

(assert (=> b!960705 (= e!620590 (= lt!346563 call!60546))))

(declare-fun b!960706 () Bool)

(declare-fun res!436623 () Bool)

(assert (=> b!960706 (=> (not res!436623) (not e!620585))))

(assert (=> b!960706 (= res!436623 (isEmpty!6169 (tail!1324 s!10566)))))

(declare-fun bm!60541 () Bool)

(assert (=> bm!60541 (= call!60546 (isEmpty!6169 s!10566))))

(declare-fun b!960707 () Bool)

(assert (=> b!960707 (= e!620585 (= (head!1762 s!10566) (c!156441 r!15766)))))

(declare-fun b!960708 () Bool)

(declare-fun res!436620 () Bool)

(assert (=> b!960708 (=> res!436620 e!620589)))

(assert (=> b!960708 (= res!436620 e!620585)))

(declare-fun res!436621 () Bool)

(assert (=> b!960708 (=> (not res!436621) (not e!620585))))

(assert (=> b!960708 (= res!436621 lt!346563)))

(assert (= (and d!285111 c!156493) b!960698))

(assert (= (and d!285111 (not c!156493)) b!960700))

(assert (= (and d!285111 c!156491) b!960705))

(assert (= (and d!285111 (not c!156491)) b!960703))

(assert (= (and b!960703 c!156492) b!960695))

(assert (= (and b!960703 (not c!156492)) b!960701))

(assert (= (and b!960701 (not res!436622)) b!960708))

(assert (= (and b!960708 res!436621) b!960699))

(assert (= (and b!960699 res!436619) b!960706))

(assert (= (and b!960706 res!436623) b!960707))

(assert (= (and b!960708 (not res!436620)) b!960697))

(assert (= (and b!960697 res!436624) b!960696))

(assert (= (and b!960696 (not res!436618)) b!960702))

(assert (= (and b!960702 (not res!436625)) b!960704))

(assert (= (or b!960705 b!960696 b!960699) bm!60541))

(declare-fun m!1168973 () Bool)

(assert (=> b!960706 m!1168973))

(assert (=> b!960706 m!1168973))

(declare-fun m!1168975 () Bool)

(assert (=> b!960706 m!1168975))

(declare-fun m!1168977 () Bool)

(assert (=> b!960704 m!1168977))

(assert (=> d!285111 m!1168881))

(assert (=> d!285111 m!1168869))

(assert (=> b!960707 m!1168977))

(assert (=> b!960702 m!1168973))

(assert (=> b!960702 m!1168973))

(assert (=> b!960702 m!1168975))

(assert (=> bm!60541 m!1168881))

(assert (=> b!960700 m!1168977))

(assert (=> b!960700 m!1168977))

(declare-fun m!1168979 () Bool)

(assert (=> b!960700 m!1168979))

(assert (=> b!960700 m!1168973))

(assert (=> b!960700 m!1168979))

(assert (=> b!960700 m!1168973))

(declare-fun m!1168981 () Bool)

(assert (=> b!960700 m!1168981))

(declare-fun m!1168983 () Bool)

(assert (=> b!960698 m!1168983))

(assert (=> b!960441 d!285111))

(declare-fun d!285115 () Bool)

(assert (=> d!285115 (= (matchR!1200 r!15766 s!10566) (matchRSpec!463 r!15766 s!10566))))

(declare-fun lt!346566 () Unit!14979)

(declare-fun choose!6046 (Regex!2662 List!9892) Unit!14979)

(assert (=> d!285115 (= lt!346566 (choose!6046 r!15766 s!10566))))

(assert (=> d!285115 (validRegex!1131 r!15766)))

(assert (=> d!285115 (= (mainMatchTheorem!463 r!15766 s!10566) lt!346566)))

(declare-fun bs!240782 () Bool)

(assert (= bs!240782 d!285115))

(assert (=> bs!240782 m!1168865))

(assert (=> bs!240782 m!1168863))

(declare-fun m!1168985 () Bool)

(assert (=> bs!240782 m!1168985))

(assert (=> bs!240782 m!1168869))

(assert (=> b!960441 d!285115))

(declare-fun b!960713 () Bool)

(declare-fun e!620594 () Bool)

(declare-fun tp!295339 () Bool)

(assert (=> b!960713 (= e!620594 (and tp_is_empty!4967 tp!295339))))

(assert (=> b!960438 (= tp!295317 e!620594)))

(assert (= (and b!960438 (is-Cons!9876 (t!100938 s!10566))) b!960713))

(declare-fun b!960726 () Bool)

(declare-fun e!620597 () Bool)

(declare-fun tp!295351 () Bool)

(assert (=> b!960726 (= e!620597 tp!295351)))

(declare-fun b!960725 () Bool)

(declare-fun tp!295353 () Bool)

(declare-fun tp!295354 () Bool)

(assert (=> b!960725 (= e!620597 (and tp!295353 tp!295354))))

(declare-fun b!960727 () Bool)

(declare-fun tp!295350 () Bool)

(declare-fun tp!295352 () Bool)

(assert (=> b!960727 (= e!620597 (and tp!295350 tp!295352))))

(assert (=> b!960439 (= tp!295316 e!620597)))

(declare-fun b!960724 () Bool)

(assert (=> b!960724 (= e!620597 tp_is_empty!4967)))

(assert (= (and b!960439 (is-ElementMatch!2662 (regOne!5837 r!15766))) b!960724))

(assert (= (and b!960439 (is-Concat!4495 (regOne!5837 r!15766))) b!960725))

(assert (= (and b!960439 (is-Star!2662 (regOne!5837 r!15766))) b!960726))

(assert (= (and b!960439 (is-Union!2662 (regOne!5837 r!15766))) b!960727))

(declare-fun b!960730 () Bool)

(declare-fun e!620598 () Bool)

(declare-fun tp!295356 () Bool)

(assert (=> b!960730 (= e!620598 tp!295356)))

(declare-fun b!960729 () Bool)

(declare-fun tp!295358 () Bool)

(declare-fun tp!295359 () Bool)

(assert (=> b!960729 (= e!620598 (and tp!295358 tp!295359))))

(declare-fun b!960731 () Bool)

(declare-fun tp!295355 () Bool)

(declare-fun tp!295357 () Bool)

(assert (=> b!960731 (= e!620598 (and tp!295355 tp!295357))))

(assert (=> b!960439 (= tp!295315 e!620598)))

(declare-fun b!960728 () Bool)

(assert (=> b!960728 (= e!620598 tp_is_empty!4967)))

(assert (= (and b!960439 (is-ElementMatch!2662 (regTwo!5837 r!15766))) b!960728))

(assert (= (and b!960439 (is-Concat!4495 (regTwo!5837 r!15766))) b!960729))

(assert (= (and b!960439 (is-Star!2662 (regTwo!5837 r!15766))) b!960730))

(assert (= (and b!960439 (is-Union!2662 (regTwo!5837 r!15766))) b!960731))

(declare-fun b!960734 () Bool)

(declare-fun e!620599 () Bool)

(declare-fun tp!295361 () Bool)

(assert (=> b!960734 (= e!620599 tp!295361)))

(declare-fun b!960733 () Bool)

(declare-fun tp!295363 () Bool)

(declare-fun tp!295364 () Bool)

(assert (=> b!960733 (= e!620599 (and tp!295363 tp!295364))))

(declare-fun b!960735 () Bool)

(declare-fun tp!295360 () Bool)

(declare-fun tp!295362 () Bool)

(assert (=> b!960735 (= e!620599 (and tp!295360 tp!295362))))

(assert (=> b!960437 (= tp!295313 e!620599)))

(declare-fun b!960732 () Bool)

(assert (=> b!960732 (= e!620599 tp_is_empty!4967)))

(assert (= (and b!960437 (is-ElementMatch!2662 (reg!2991 r!15766))) b!960732))

(assert (= (and b!960437 (is-Concat!4495 (reg!2991 r!15766))) b!960733))

(assert (= (and b!960437 (is-Star!2662 (reg!2991 r!15766))) b!960734))

(assert (= (and b!960437 (is-Union!2662 (reg!2991 r!15766))) b!960735))

(declare-fun b!960738 () Bool)

(declare-fun e!620600 () Bool)

(declare-fun tp!295366 () Bool)

(assert (=> b!960738 (= e!620600 tp!295366)))

(declare-fun b!960737 () Bool)

(declare-fun tp!295368 () Bool)

(declare-fun tp!295369 () Bool)

(assert (=> b!960737 (= e!620600 (and tp!295368 tp!295369))))

(declare-fun b!960739 () Bool)

(declare-fun tp!295365 () Bool)

(declare-fun tp!295367 () Bool)

(assert (=> b!960739 (= e!620600 (and tp!295365 tp!295367))))

(assert (=> b!960436 (= tp!295318 e!620600)))

(declare-fun b!960736 () Bool)

(assert (=> b!960736 (= e!620600 tp_is_empty!4967)))

(assert (= (and b!960436 (is-ElementMatch!2662 (regOne!5836 r!15766))) b!960736))

(assert (= (and b!960436 (is-Concat!4495 (regOne!5836 r!15766))) b!960737))

(assert (= (and b!960436 (is-Star!2662 (regOne!5836 r!15766))) b!960738))

(assert (= (and b!960436 (is-Union!2662 (regOne!5836 r!15766))) b!960739))

(declare-fun b!960742 () Bool)

(declare-fun e!620601 () Bool)

(declare-fun tp!295371 () Bool)

(assert (=> b!960742 (= e!620601 tp!295371)))

(declare-fun b!960741 () Bool)

(declare-fun tp!295373 () Bool)

(declare-fun tp!295374 () Bool)

(assert (=> b!960741 (= e!620601 (and tp!295373 tp!295374))))

(declare-fun b!960743 () Bool)

(declare-fun tp!295370 () Bool)

(declare-fun tp!295372 () Bool)

(assert (=> b!960743 (= e!620601 (and tp!295370 tp!295372))))

(assert (=> b!960436 (= tp!295314 e!620601)))

(declare-fun b!960740 () Bool)

(assert (=> b!960740 (= e!620601 tp_is_empty!4967)))

(assert (= (and b!960436 (is-ElementMatch!2662 (regTwo!5836 r!15766))) b!960740))

(assert (= (and b!960436 (is-Concat!4495 (regTwo!5836 r!15766))) b!960741))

(assert (= (and b!960436 (is-Star!2662 (regTwo!5836 r!15766))) b!960742))

(assert (= (and b!960436 (is-Union!2662 (regTwo!5836 r!15766))) b!960743))

(push 1)

(assert (not b!960654))

(assert (not b!960733))

(assert (not b!960552))

(assert (not b!960725))

(assert (not b!960741))

(assert (not d!285101))

(assert (not b!960739))

(assert (not d!285091))

(assert (not d!285111))

(assert (not b!960726))

(assert (not b!960556))

(assert (not b!960706))

(assert (not b!960514))

(assert (not b!960558))

(assert (not b!960737))

(assert (not b!960713))

(assert (not b!960738))

(assert (not b!960730))

(assert (not b!960735))

(assert (not b!960707))

(assert (not b!960734))

(assert (not b!960700))

(assert tp_is_empty!4967)

(assert (not b!960704))

(assert (not b!960731))

(assert (not b!960702))

(assert (not b!960555))

(assert (not d!285107))

(assert (not bm!60541))

(assert (not b!960727))

(assert (not b!960742))

(assert (not d!285093))

(assert (not b!960655))

(assert (not bm!60535))

(assert (not bm!60536))

(assert (not b!960551))

(assert (not bm!60517))

(assert (not d!285099))

(assert (not b!960729))

(assert (not d!285115))

(assert (not b!960743))

(assert (not bm!60516))

(assert (not b!960557))

(assert (not d!285105))

(assert (not b!960698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

