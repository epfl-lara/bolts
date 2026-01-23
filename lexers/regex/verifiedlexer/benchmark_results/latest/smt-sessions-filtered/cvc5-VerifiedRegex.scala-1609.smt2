; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82692 () Bool)

(assert start!82692)

(declare-fun b!920762 () Bool)

(assert (=> b!920762 true))

(assert (=> b!920762 true))

(declare-fun lambda!29968 () Int)

(declare-fun lambda!29967 () Int)

(assert (=> b!920762 (not (= lambda!29968 lambda!29967))))

(assert (=> b!920762 true))

(assert (=> b!920762 true))

(declare-fun bs!236720 () Bool)

(declare-fun b!920764 () Bool)

(assert (= bs!236720 (and b!920764 b!920762)))

(declare-datatypes ((C!5522 0))(
  ( (C!5523 (val!3009 Int)) )
))
(declare-datatypes ((Regex!2476 0))(
  ( (ElementMatch!2476 (c!149371 C!5522)) (Concat!4309 (regOne!5464 Regex!2476) (regTwo!5464 Regex!2476)) (EmptyExpr!2476) (Star!2476 (reg!2805 Regex!2476)) (EmptyLang!2476) (Union!2476 (regOne!5465 Regex!2476) (regTwo!5465 Regex!2476)) )
))
(declare-fun r!15766 () Regex!2476)

(declare-fun lt!338400 () Regex!2476)

(declare-fun lambda!29969 () Int)

(declare-fun lt!338393 () Regex!2476)

(assert (=> bs!236720 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!29969 lambda!29967))))

(assert (=> bs!236720 (not (= lambda!29969 lambda!29968))))

(assert (=> b!920764 true))

(assert (=> b!920764 true))

(assert (=> b!920764 true))

(declare-fun lambda!29970 () Int)

(assert (=> bs!236720 (not (= lambda!29970 lambda!29967))))

(assert (=> bs!236720 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!29970 lambda!29968))))

(assert (=> b!920764 (not (= lambda!29970 lambda!29969))))

(assert (=> b!920764 true))

(assert (=> b!920764 true))

(assert (=> b!920764 true))

(declare-fun b!920760 () Bool)

(declare-fun e!599529 () Bool)

(declare-fun tp_is_empty!4595 () Bool)

(declare-fun tp!286879 () Bool)

(assert (=> b!920760 (= e!599529 (and tp_is_empty!4595 tp!286879))))

(declare-fun b!920761 () Bool)

(declare-fun e!599527 () Bool)

(declare-fun tp!286877 () Bool)

(declare-fun tp!286881 () Bool)

(assert (=> b!920761 (= e!599527 (and tp!286877 tp!286881))))

(declare-fun e!599526 () Bool)

(declare-fun e!599530 () Bool)

(assert (=> b!920762 (= e!599526 e!599530)))

(declare-fun res!418585 () Bool)

(assert (=> b!920762 (=> res!418585 e!599530)))

(declare-datatypes ((List!9706 0))(
  ( (Nil!9690) (Cons!9690 (h!15091 C!5522) (t!100752 List!9706)) )
))
(declare-fun s!10566 () List!9706)

(declare-fun isEmpty!5933 (List!9706) Bool)

(assert (=> b!920762 (= res!418585 (isEmpty!5933 s!10566))))

(declare-fun Exists!247 (Int) Bool)

(assert (=> b!920762 (= (Exists!247 lambda!29967) (Exists!247 lambda!29968))))

(declare-datatypes ((Unit!14571 0))(
  ( (Unit!14572) )
))
(declare-fun lt!338401 () Unit!14571)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!159 (Regex!2476 Regex!2476 List!9706) Unit!14571)

(assert (=> b!920762 (= lt!338401 (lemmaExistCutMatchRandMatchRSpecEquivalent!159 (regOne!5464 r!15766) (regTwo!5464 r!15766) s!10566))))

(declare-datatypes ((tuple2!10938 0))(
  ( (tuple2!10939 (_1!6295 List!9706) (_2!6295 List!9706)) )
))
(declare-datatypes ((Option!2111 0))(
  ( (None!2110) (Some!2110 (v!19527 tuple2!10938)) )
))
(declare-fun isDefined!1753 (Option!2111) Bool)

(declare-fun findConcatSeparation!217 (Regex!2476 Regex!2476 List!9706 List!9706 List!9706) Option!2111)

(assert (=> b!920762 (= (isDefined!1753 (findConcatSeparation!217 (regOne!5464 r!15766) (regTwo!5464 r!15766) Nil!9690 s!10566 s!10566)) (Exists!247 lambda!29967))))

(declare-fun lt!338396 () Unit!14571)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!217 (Regex!2476 Regex!2476 List!9706) Unit!14571)

(assert (=> b!920762 (= lt!338396 (lemmaFindConcatSeparationEquivalentToExists!217 (regOne!5464 r!15766) (regTwo!5464 r!15766) s!10566))))

(declare-fun b!920763 () Bool)

(declare-fun e!599525 () Bool)

(declare-fun validRegex!945 (Regex!2476) Bool)

(assert (=> b!920763 (= e!599525 (validRegex!945 lt!338400))))

(declare-fun e!599524 () Bool)

(assert (=> b!920764 (= e!599524 e!599525)))

(declare-fun res!418586 () Bool)

(assert (=> b!920764 (=> res!418586 e!599525)))

(assert (=> b!920764 (= res!418586 (not (validRegex!945 lt!338393)))))

(assert (=> b!920764 (= (Exists!247 lambda!29969) (Exists!247 lambda!29970))))

(declare-fun lt!338394 () Unit!14571)

(assert (=> b!920764 (= lt!338394 (lemmaExistCutMatchRandMatchRSpecEquivalent!159 lt!338393 lt!338400 s!10566))))

(assert (=> b!920764 (= (isDefined!1753 (findConcatSeparation!217 lt!338393 lt!338400 Nil!9690 s!10566 s!10566)) (Exists!247 lambda!29969))))

(declare-fun lt!338397 () Unit!14571)

(assert (=> b!920764 (= lt!338397 (lemmaFindConcatSeparationEquivalentToExists!217 lt!338393 lt!338400 s!10566))))

(declare-fun lt!338398 () Regex!2476)

(declare-fun matchRSpec!277 (Regex!2476 List!9706) Bool)

(assert (=> b!920764 (matchRSpec!277 lt!338398 s!10566)))

(declare-fun lt!338395 () Unit!14571)

(declare-fun mainMatchTheorem!277 (Regex!2476 List!9706) Unit!14571)

(assert (=> b!920764 (= lt!338395 (mainMatchTheorem!277 lt!338398 s!10566))))

(declare-fun res!418589 () Bool)

(declare-fun e!599528 () Bool)

(assert (=> start!82692 (=> (not res!418589) (not e!599528))))

(assert (=> start!82692 (= res!418589 (validRegex!945 r!15766))))

(assert (=> start!82692 e!599528))

(assert (=> start!82692 e!599527))

(assert (=> start!82692 e!599529))

(declare-fun b!920765 () Bool)

(assert (=> b!920765 (= e!599530 e!599524)))

(declare-fun res!418588 () Bool)

(assert (=> b!920765 (=> res!418588 e!599524)))

(declare-fun matchR!1014 (Regex!2476 List!9706) Bool)

(assert (=> b!920765 (= res!418588 (not (matchR!1014 lt!338398 s!10566)))))

(assert (=> b!920765 (= lt!338398 (Concat!4309 lt!338393 lt!338400))))

(declare-fun removeUselessConcat!153 (Regex!2476) Regex!2476)

(assert (=> b!920765 (= lt!338400 (removeUselessConcat!153 (regTwo!5464 r!15766)))))

(assert (=> b!920765 (= lt!338393 (removeUselessConcat!153 (regOne!5464 r!15766)))))

(declare-fun b!920766 () Bool)

(declare-fun tp!286882 () Bool)

(declare-fun tp!286880 () Bool)

(assert (=> b!920766 (= e!599527 (and tp!286882 tp!286880))))

(declare-fun b!920767 () Bool)

(declare-fun tp!286878 () Bool)

(assert (=> b!920767 (= e!599527 tp!286878)))

(declare-fun b!920768 () Bool)

(assert (=> b!920768 (= e!599528 (not e!599526))))

(declare-fun res!418587 () Bool)

(assert (=> b!920768 (=> res!418587 e!599526)))

(declare-fun lt!338399 () Bool)

(assert (=> b!920768 (= res!418587 (or lt!338399 (and (is-Concat!4309 r!15766) (is-EmptyExpr!2476 (regOne!5464 r!15766))) (and (is-Concat!4309 r!15766) (is-EmptyExpr!2476 (regTwo!5464 r!15766))) (not (is-Concat!4309 r!15766))))))

(assert (=> b!920768 (= lt!338399 (matchRSpec!277 r!15766 s!10566))))

(assert (=> b!920768 (= lt!338399 (matchR!1014 r!15766 s!10566))))

(declare-fun lt!338392 () Unit!14571)

(assert (=> b!920768 (= lt!338392 (mainMatchTheorem!277 r!15766 s!10566))))

(declare-fun b!920769 () Bool)

(assert (=> b!920769 (= e!599527 tp_is_empty!4595)))

(assert (= (and start!82692 res!418589) b!920768))

(assert (= (and b!920768 (not res!418587)) b!920762))

(assert (= (and b!920762 (not res!418585)) b!920765))

(assert (= (and b!920765 (not res!418588)) b!920764))

(assert (= (and b!920764 (not res!418586)) b!920763))

(assert (= (and start!82692 (is-ElementMatch!2476 r!15766)) b!920769))

(assert (= (and start!82692 (is-Concat!4309 r!15766)) b!920761))

(assert (= (and start!82692 (is-Star!2476 r!15766)) b!920767))

(assert (= (and start!82692 (is-Union!2476 r!15766)) b!920766))

(assert (= (and start!82692 (is-Cons!9690 s!10566)) b!920760))

(declare-fun m!1148081 () Bool)

(assert (=> b!920764 m!1148081))

(declare-fun m!1148083 () Bool)

(assert (=> b!920764 m!1148083))

(declare-fun m!1148085 () Bool)

(assert (=> b!920764 m!1148085))

(declare-fun m!1148087 () Bool)

(assert (=> b!920764 m!1148087))

(declare-fun m!1148089 () Bool)

(assert (=> b!920764 m!1148089))

(declare-fun m!1148091 () Bool)

(assert (=> b!920764 m!1148091))

(declare-fun m!1148093 () Bool)

(assert (=> b!920764 m!1148093))

(assert (=> b!920764 m!1148087))

(declare-fun m!1148095 () Bool)

(assert (=> b!920764 m!1148095))

(declare-fun m!1148097 () Bool)

(assert (=> b!920764 m!1148097))

(assert (=> b!920764 m!1148093))

(declare-fun m!1148099 () Bool)

(assert (=> b!920762 m!1148099))

(assert (=> b!920762 m!1148099))

(declare-fun m!1148101 () Bool)

(assert (=> b!920762 m!1148101))

(declare-fun m!1148103 () Bool)

(assert (=> b!920762 m!1148103))

(declare-fun m!1148105 () Bool)

(assert (=> b!920762 m!1148105))

(declare-fun m!1148107 () Bool)

(assert (=> b!920762 m!1148107))

(declare-fun m!1148109 () Bool)

(assert (=> b!920762 m!1148109))

(declare-fun m!1148111 () Bool)

(assert (=> b!920762 m!1148111))

(assert (=> b!920762 m!1148103))

(declare-fun m!1148113 () Bool)

(assert (=> b!920768 m!1148113))

(declare-fun m!1148115 () Bool)

(assert (=> b!920768 m!1148115))

(declare-fun m!1148117 () Bool)

(assert (=> b!920768 m!1148117))

(declare-fun m!1148119 () Bool)

(assert (=> start!82692 m!1148119))

(declare-fun m!1148121 () Bool)

(assert (=> b!920763 m!1148121))

(declare-fun m!1148123 () Bool)

(assert (=> b!920765 m!1148123))

(declare-fun m!1148125 () Bool)

(assert (=> b!920765 m!1148125))

(declare-fun m!1148127 () Bool)

(assert (=> b!920765 m!1148127))

(push 1)

(assert (not b!920765))

(assert (not b!920761))

(assert (not b!920766))

(assert (not start!82692))

(assert (not b!920768))

(assert (not b!920763))

(assert tp_is_empty!4595)

(assert (not b!920760))

(assert (not b!920762))

(assert (not b!920767))

(assert (not b!920764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!280390 () Bool)

(declare-fun e!599579 () Bool)

(assert (=> d!280390 e!599579))

(declare-fun c!149380 () Bool)

(assert (=> d!280390 (= c!149380 (is-EmptyExpr!2476 lt!338398))))

(declare-fun lt!338434 () Bool)

(declare-fun e!599584 () Bool)

(assert (=> d!280390 (= lt!338434 e!599584)))

(declare-fun c!149379 () Bool)

(assert (=> d!280390 (= c!149379 (isEmpty!5933 s!10566))))

(assert (=> d!280390 (validRegex!945 lt!338398)))

(assert (=> d!280390 (= (matchR!1014 lt!338398 s!10566) lt!338434)))

(declare-fun b!920860 () Bool)

(declare-fun e!599581 () Bool)

(declare-fun head!1651 (List!9706) C!5522)

(assert (=> b!920860 (= e!599581 (not (= (head!1651 s!10566) (c!149371 lt!338398))))))

(declare-fun b!920861 () Bool)

(declare-fun res!418646 () Bool)

(declare-fun e!599583 () Bool)

(assert (=> b!920861 (=> (not res!418646) (not e!599583))))

(declare-fun tail!1213 (List!9706) List!9706)

(assert (=> b!920861 (= res!418646 (isEmpty!5933 (tail!1213 s!10566)))))

(declare-fun b!920862 () Bool)

(declare-fun res!418645 () Bool)

(declare-fun e!599582 () Bool)

(assert (=> b!920862 (=> res!418645 e!599582)))

(assert (=> b!920862 (= res!418645 (not (is-ElementMatch!2476 lt!338398)))))

(declare-fun e!599580 () Bool)

(assert (=> b!920862 (= e!599580 e!599582)))

(declare-fun bm!55975 () Bool)

(declare-fun call!55980 () Bool)

(assert (=> bm!55975 (= call!55980 (isEmpty!5933 s!10566))))

(declare-fun b!920863 () Bool)

(declare-fun derivativeStep!498 (Regex!2476 C!5522) Regex!2476)

(assert (=> b!920863 (= e!599584 (matchR!1014 (derivativeStep!498 lt!338398 (head!1651 s!10566)) (tail!1213 s!10566)))))

(declare-fun b!920864 () Bool)

(declare-fun e!599578 () Bool)

(assert (=> b!920864 (= e!599582 e!599578)))

(declare-fun res!418649 () Bool)

(assert (=> b!920864 (=> (not res!418649) (not e!599578))))

(assert (=> b!920864 (= res!418649 (not lt!338434))))

(declare-fun b!920865 () Bool)

(assert (=> b!920865 (= e!599579 (= lt!338434 call!55980))))

(declare-fun b!920866 () Bool)

(declare-fun res!418652 () Bool)

(assert (=> b!920866 (=> res!418652 e!599582)))

(assert (=> b!920866 (= res!418652 e!599583)))

(declare-fun res!418648 () Bool)

(assert (=> b!920866 (=> (not res!418648) (not e!599583))))

(assert (=> b!920866 (= res!418648 lt!338434)))

(declare-fun b!920867 () Bool)

(assert (=> b!920867 (= e!599578 e!599581)))

(declare-fun res!418647 () Bool)

(assert (=> b!920867 (=> res!418647 e!599581)))

(assert (=> b!920867 (= res!418647 call!55980)))

(declare-fun b!920868 () Bool)

(assert (=> b!920868 (= e!599579 e!599580)))

(declare-fun c!149381 () Bool)

(assert (=> b!920868 (= c!149381 (is-EmptyLang!2476 lt!338398))))

(declare-fun b!920869 () Bool)

(declare-fun res!418651 () Bool)

(assert (=> b!920869 (=> res!418651 e!599581)))

(assert (=> b!920869 (= res!418651 (not (isEmpty!5933 (tail!1213 s!10566))))))

(declare-fun b!920870 () Bool)

(declare-fun res!418650 () Bool)

(assert (=> b!920870 (=> (not res!418650) (not e!599583))))

(assert (=> b!920870 (= res!418650 (not call!55980))))

(declare-fun b!920871 () Bool)

(assert (=> b!920871 (= e!599583 (= (head!1651 s!10566) (c!149371 lt!338398)))))

(declare-fun b!920872 () Bool)

(declare-fun nullable!688 (Regex!2476) Bool)

(assert (=> b!920872 (= e!599584 (nullable!688 lt!338398))))

(declare-fun b!920873 () Bool)

(assert (=> b!920873 (= e!599580 (not lt!338434))))

(assert (= (and d!280390 c!149379) b!920872))

(assert (= (and d!280390 (not c!149379)) b!920863))

(assert (= (and d!280390 c!149380) b!920865))

(assert (= (and d!280390 (not c!149380)) b!920868))

(assert (= (and b!920868 c!149381) b!920873))

(assert (= (and b!920868 (not c!149381)) b!920862))

(assert (= (and b!920862 (not res!418645)) b!920866))

(assert (= (and b!920866 res!418648) b!920870))

(assert (= (and b!920870 res!418650) b!920861))

(assert (= (and b!920861 res!418646) b!920871))

(assert (= (and b!920866 (not res!418652)) b!920864))

(assert (= (and b!920864 res!418649) b!920867))

(assert (= (and b!920867 (not res!418647)) b!920869))

(assert (= (and b!920869 (not res!418651)) b!920860))

(assert (= (or b!920865 b!920867 b!920870) bm!55975))

(declare-fun m!1148177 () Bool)

(assert (=> b!920863 m!1148177))

(assert (=> b!920863 m!1148177))

(declare-fun m!1148179 () Bool)

(assert (=> b!920863 m!1148179))

(declare-fun m!1148181 () Bool)

(assert (=> b!920863 m!1148181))

(assert (=> b!920863 m!1148179))

(assert (=> b!920863 m!1148181))

(declare-fun m!1148183 () Bool)

(assert (=> b!920863 m!1148183))

(assert (=> d!280390 m!1148109))

(declare-fun m!1148185 () Bool)

(assert (=> d!280390 m!1148185))

(assert (=> b!920860 m!1148177))

(declare-fun m!1148187 () Bool)

(assert (=> b!920872 m!1148187))

(assert (=> bm!55975 m!1148109))

(assert (=> b!920869 m!1148181))

(assert (=> b!920869 m!1148181))

(declare-fun m!1148189 () Bool)

(assert (=> b!920869 m!1148189))

(assert (=> b!920861 m!1148181))

(assert (=> b!920861 m!1148181))

(assert (=> b!920861 m!1148189))

(assert (=> b!920871 m!1148177))

(assert (=> b!920765 d!280390))

(declare-fun b!920896 () Bool)

(declare-fun c!149393 () Bool)

(assert (=> b!920896 (= c!149393 (is-Star!2476 (regTwo!5464 r!15766)))))

(declare-fun e!599599 () Regex!2476)

(declare-fun e!599601 () Regex!2476)

(assert (=> b!920896 (= e!599599 e!599601)))

(declare-fun bm!55986 () Bool)

(declare-fun call!55994 () Regex!2476)

(declare-fun call!55993 () Regex!2476)

(assert (=> bm!55986 (= call!55994 call!55993)))

(declare-fun bm!55987 () Bool)

(declare-fun call!55992 () Regex!2476)

(declare-fun call!55991 () Regex!2476)

(assert (=> bm!55987 (= call!55992 call!55991)))

(declare-fun b!920897 () Bool)

(assert (=> b!920897 (= e!599601 (regTwo!5464 r!15766))))

(declare-fun b!920898 () Bool)

(declare-fun e!599598 () Regex!2476)

(assert (=> b!920898 (= e!599598 (Concat!4309 call!55992 call!55994))))

(declare-fun b!920899 () Bool)

(declare-fun e!599602 () Regex!2476)

(declare-fun e!599597 () Regex!2476)

(assert (=> b!920899 (= e!599602 e!599597)))

(declare-fun c!149394 () Bool)

(assert (=> b!920899 (= c!149394 (and (is-Concat!4309 (regTwo!5464 r!15766)) (is-EmptyExpr!2476 (regTwo!5464 (regTwo!5464 r!15766)))))))

(declare-fun b!920900 () Bool)

(assert (=> b!920900 (= e!599598 e!599599)))

(declare-fun c!149395 () Bool)

(assert (=> b!920900 (= c!149395 (is-Union!2476 (regTwo!5464 r!15766)))))

(declare-fun b!920901 () Bool)

(assert (=> b!920901 (= e!599602 call!55993)))

(declare-fun bm!55988 () Bool)

(declare-fun call!55995 () Regex!2476)

(assert (=> bm!55988 (= call!55995 call!55992)))

(declare-fun bm!55989 () Bool)

(declare-fun c!149392 () Bool)

(assert (=> bm!55989 (= call!55991 (removeUselessConcat!153 (ite (or c!149394 c!149392) (regOne!5464 (regTwo!5464 r!15766)) (ite c!149395 (regTwo!5465 (regTwo!5464 r!15766)) (reg!2805 (regTwo!5464 r!15766))))))))

(declare-fun b!920902 () Bool)

(assert (=> b!920902 (= e!599599 (Union!2476 call!55994 call!55995))))

(declare-fun b!920903 () Bool)

(assert (=> b!920903 (= c!149392 (is-Concat!4309 (regTwo!5464 r!15766)))))

(assert (=> b!920903 (= e!599597 e!599598)))

(declare-fun bm!55990 () Bool)

(declare-fun c!149396 () Bool)

(assert (=> bm!55990 (= call!55993 (removeUselessConcat!153 (ite (or c!149396 c!149392) (regTwo!5464 (regTwo!5464 r!15766)) (regOne!5465 (regTwo!5464 r!15766)))))))

(declare-fun b!920904 () Bool)

(assert (=> b!920904 (= e!599597 call!55991)))

(declare-fun b!920906 () Bool)

(declare-fun e!599600 () Bool)

(declare-fun lt!338437 () Regex!2476)

(assert (=> b!920906 (= e!599600 (= (nullable!688 lt!338437) (nullable!688 (regTwo!5464 r!15766))))))

(declare-fun d!280392 () Bool)

(assert (=> d!280392 e!599600))

(declare-fun res!418655 () Bool)

(assert (=> d!280392 (=> (not res!418655) (not e!599600))))

(assert (=> d!280392 (= res!418655 (validRegex!945 lt!338437))))

(assert (=> d!280392 (= lt!338437 e!599602)))

(assert (=> d!280392 (= c!149396 (and (is-Concat!4309 (regTwo!5464 r!15766)) (is-EmptyExpr!2476 (regOne!5464 (regTwo!5464 r!15766)))))))

(assert (=> d!280392 (validRegex!945 (regTwo!5464 r!15766))))

(assert (=> d!280392 (= (removeUselessConcat!153 (regTwo!5464 r!15766)) lt!338437)))

(declare-fun b!920905 () Bool)

(assert (=> b!920905 (= e!599601 (Star!2476 call!55995))))

(assert (= (and d!280392 c!149396) b!920901))

(assert (= (and d!280392 (not c!149396)) b!920899))

(assert (= (and b!920899 c!149394) b!920904))

(assert (= (and b!920899 (not c!149394)) b!920903))

(assert (= (and b!920903 c!149392) b!920898))

(assert (= (and b!920903 (not c!149392)) b!920900))

(assert (= (and b!920900 c!149395) b!920902))

(assert (= (and b!920900 (not c!149395)) b!920896))

(assert (= (and b!920896 c!149393) b!920905))

(assert (= (and b!920896 (not c!149393)) b!920897))

(assert (= (or b!920902 b!920905) bm!55988))

(assert (= (or b!920898 b!920902) bm!55986))

(assert (= (or b!920898 bm!55988) bm!55987))

(assert (= (or b!920904 bm!55987) bm!55989))

(assert (= (or b!920901 bm!55986) bm!55990))

(assert (= (and d!280392 res!418655) b!920906))

(declare-fun m!1148191 () Bool)

(assert (=> bm!55989 m!1148191))

(declare-fun m!1148193 () Bool)

(assert (=> bm!55990 m!1148193))

(declare-fun m!1148195 () Bool)

(assert (=> b!920906 m!1148195))

(declare-fun m!1148197 () Bool)

(assert (=> b!920906 m!1148197))

(declare-fun m!1148199 () Bool)

(assert (=> d!280392 m!1148199))

(declare-fun m!1148201 () Bool)

(assert (=> d!280392 m!1148201))

(assert (=> b!920765 d!280392))

(declare-fun b!920907 () Bool)

(declare-fun c!149398 () Bool)

(assert (=> b!920907 (= c!149398 (is-Star!2476 (regOne!5464 r!15766)))))

(declare-fun e!599605 () Regex!2476)

(declare-fun e!599607 () Regex!2476)

(assert (=> b!920907 (= e!599605 e!599607)))

(declare-fun bm!55991 () Bool)

(declare-fun call!55999 () Regex!2476)

(declare-fun call!55998 () Regex!2476)

(assert (=> bm!55991 (= call!55999 call!55998)))

(declare-fun bm!55992 () Bool)

(declare-fun call!55997 () Regex!2476)

(declare-fun call!55996 () Regex!2476)

(assert (=> bm!55992 (= call!55997 call!55996)))

(declare-fun b!920908 () Bool)

(assert (=> b!920908 (= e!599607 (regOne!5464 r!15766))))

(declare-fun b!920909 () Bool)

(declare-fun e!599604 () Regex!2476)

(assert (=> b!920909 (= e!599604 (Concat!4309 call!55997 call!55999))))

(declare-fun b!920910 () Bool)

(declare-fun e!599608 () Regex!2476)

(declare-fun e!599603 () Regex!2476)

(assert (=> b!920910 (= e!599608 e!599603)))

(declare-fun c!149399 () Bool)

(assert (=> b!920910 (= c!149399 (and (is-Concat!4309 (regOne!5464 r!15766)) (is-EmptyExpr!2476 (regTwo!5464 (regOne!5464 r!15766)))))))

(declare-fun b!920911 () Bool)

(assert (=> b!920911 (= e!599604 e!599605)))

(declare-fun c!149400 () Bool)

(assert (=> b!920911 (= c!149400 (is-Union!2476 (regOne!5464 r!15766)))))

(declare-fun b!920912 () Bool)

(assert (=> b!920912 (= e!599608 call!55998)))

(declare-fun bm!55993 () Bool)

(declare-fun call!56000 () Regex!2476)

(assert (=> bm!55993 (= call!56000 call!55997)))

(declare-fun bm!55994 () Bool)

(declare-fun c!149397 () Bool)

(assert (=> bm!55994 (= call!55996 (removeUselessConcat!153 (ite (or c!149399 c!149397) (regOne!5464 (regOne!5464 r!15766)) (ite c!149400 (regTwo!5465 (regOne!5464 r!15766)) (reg!2805 (regOne!5464 r!15766))))))))

(declare-fun b!920913 () Bool)

(assert (=> b!920913 (= e!599605 (Union!2476 call!55999 call!56000))))

(declare-fun b!920914 () Bool)

(assert (=> b!920914 (= c!149397 (is-Concat!4309 (regOne!5464 r!15766)))))

(assert (=> b!920914 (= e!599603 e!599604)))

(declare-fun bm!55995 () Bool)

(declare-fun c!149401 () Bool)

(assert (=> bm!55995 (= call!55998 (removeUselessConcat!153 (ite (or c!149401 c!149397) (regTwo!5464 (regOne!5464 r!15766)) (regOne!5465 (regOne!5464 r!15766)))))))

(declare-fun b!920915 () Bool)

(assert (=> b!920915 (= e!599603 call!55996)))

(declare-fun b!920917 () Bool)

(declare-fun e!599606 () Bool)

(declare-fun lt!338438 () Regex!2476)

(assert (=> b!920917 (= e!599606 (= (nullable!688 lt!338438) (nullable!688 (regOne!5464 r!15766))))))

(declare-fun d!280396 () Bool)

(assert (=> d!280396 e!599606))

(declare-fun res!418656 () Bool)

(assert (=> d!280396 (=> (not res!418656) (not e!599606))))

(assert (=> d!280396 (= res!418656 (validRegex!945 lt!338438))))

(assert (=> d!280396 (= lt!338438 e!599608)))

(assert (=> d!280396 (= c!149401 (and (is-Concat!4309 (regOne!5464 r!15766)) (is-EmptyExpr!2476 (regOne!5464 (regOne!5464 r!15766)))))))

(assert (=> d!280396 (validRegex!945 (regOne!5464 r!15766))))

(assert (=> d!280396 (= (removeUselessConcat!153 (regOne!5464 r!15766)) lt!338438)))

(declare-fun b!920916 () Bool)

(assert (=> b!920916 (= e!599607 (Star!2476 call!56000))))

(assert (= (and d!280396 c!149401) b!920912))

(assert (= (and d!280396 (not c!149401)) b!920910))

(assert (= (and b!920910 c!149399) b!920915))

(assert (= (and b!920910 (not c!149399)) b!920914))

(assert (= (and b!920914 c!149397) b!920909))

(assert (= (and b!920914 (not c!149397)) b!920911))

(assert (= (and b!920911 c!149400) b!920913))

(assert (= (and b!920911 (not c!149400)) b!920907))

(assert (= (and b!920907 c!149398) b!920916))

(assert (= (and b!920907 (not c!149398)) b!920908))

(assert (= (or b!920913 b!920916) bm!55993))

(assert (= (or b!920909 b!920913) bm!55991))

(assert (= (or b!920909 bm!55993) bm!55992))

(assert (= (or b!920915 bm!55992) bm!55994))

(assert (= (or b!920912 bm!55991) bm!55995))

(assert (= (and d!280396 res!418656) b!920917))

(declare-fun m!1148203 () Bool)

(assert (=> bm!55994 m!1148203))

(declare-fun m!1148205 () Bool)

(assert (=> bm!55995 m!1148205))

(declare-fun m!1148207 () Bool)

(assert (=> b!920917 m!1148207))

(declare-fun m!1148209 () Bool)

(assert (=> b!920917 m!1148209))

(declare-fun m!1148211 () Bool)

(assert (=> d!280396 m!1148211))

(declare-fun m!1148213 () Bool)

(assert (=> d!280396 m!1148213))

(assert (=> b!920765 d!280396))

(declare-fun b!920954 () Bool)

(declare-fun e!599640 () Bool)

(declare-fun e!599639 () Bool)

(assert (=> b!920954 (= e!599640 e!599639)))

(declare-fun c!149411 () Bool)

(assert (=> b!920954 (= c!149411 (is-Union!2476 r!15766))))

(declare-fun bm!56008 () Bool)

(declare-fun call!56015 () Bool)

(declare-fun call!56013 () Bool)

(assert (=> bm!56008 (= call!56015 call!56013)))

(declare-fun b!920955 () Bool)

(declare-fun e!599643 () Bool)

(assert (=> b!920955 (= e!599643 call!56015)))

(declare-fun b!920956 () Bool)

(declare-fun e!599641 () Bool)

(assert (=> b!920956 (= e!599641 e!599640)))

(declare-fun c!149410 () Bool)

(assert (=> b!920956 (= c!149410 (is-Star!2476 r!15766))))

(declare-fun bm!56009 () Bool)

(declare-fun call!56014 () Bool)

(assert (=> bm!56009 (= call!56014 (validRegex!945 (ite c!149411 (regOne!5465 r!15766) (regOne!5464 r!15766))))))

(declare-fun d!280398 () Bool)

(declare-fun res!418681 () Bool)

(assert (=> d!280398 (=> res!418681 e!599641)))

(assert (=> d!280398 (= res!418681 (is-ElementMatch!2476 r!15766))))

(assert (=> d!280398 (= (validRegex!945 r!15766) e!599641)))

(declare-fun b!920957 () Bool)

(declare-fun res!418679 () Bool)

(declare-fun e!599638 () Bool)

(assert (=> b!920957 (=> res!418679 e!599638)))

(assert (=> b!920957 (= res!418679 (not (is-Concat!4309 r!15766)))))

(assert (=> b!920957 (= e!599639 e!599638)))

(declare-fun b!920958 () Bool)

(declare-fun res!418677 () Bool)

(assert (=> b!920958 (=> (not res!418677) (not e!599643))))

(assert (=> b!920958 (= res!418677 call!56014)))

(assert (=> b!920958 (= e!599639 e!599643)))

(declare-fun b!920959 () Bool)

(declare-fun e!599637 () Bool)

(assert (=> b!920959 (= e!599637 call!56013)))

(declare-fun b!920960 () Bool)

(assert (=> b!920960 (= e!599640 e!599637)))

(declare-fun res!418680 () Bool)

(assert (=> b!920960 (= res!418680 (not (nullable!688 (reg!2805 r!15766))))))

(assert (=> b!920960 (=> (not res!418680) (not e!599637))))

(declare-fun bm!56010 () Bool)

(assert (=> bm!56010 (= call!56013 (validRegex!945 (ite c!149410 (reg!2805 r!15766) (ite c!149411 (regTwo!5465 r!15766) (regTwo!5464 r!15766)))))))

(declare-fun b!920961 () Bool)

(declare-fun e!599642 () Bool)

(assert (=> b!920961 (= e!599638 e!599642)))

(declare-fun res!418678 () Bool)

(assert (=> b!920961 (=> (not res!418678) (not e!599642))))

(assert (=> b!920961 (= res!418678 call!56014)))

(declare-fun b!920962 () Bool)

(assert (=> b!920962 (= e!599642 call!56015)))

(assert (= (and d!280398 (not res!418681)) b!920956))

(assert (= (and b!920956 c!149410) b!920960))

(assert (= (and b!920956 (not c!149410)) b!920954))

(assert (= (and b!920960 res!418680) b!920959))

(assert (= (and b!920954 c!149411) b!920958))

(assert (= (and b!920954 (not c!149411)) b!920957))

(assert (= (and b!920958 res!418677) b!920955))

(assert (= (and b!920957 (not res!418679)) b!920961))

(assert (= (and b!920961 res!418678) b!920962))

(assert (= (or b!920955 b!920962) bm!56008))

(assert (= (or b!920958 b!920961) bm!56009))

(assert (= (or b!920959 bm!56008) bm!56010))

(declare-fun m!1148215 () Bool)

(assert (=> bm!56009 m!1148215))

(declare-fun m!1148217 () Bool)

(assert (=> b!920960 m!1148217))

(declare-fun m!1148219 () Bool)

(assert (=> bm!56010 m!1148219))

(assert (=> start!82692 d!280398))

(declare-fun d!280400 () Bool)

(assert (=> d!280400 (= (isEmpty!5933 s!10566) (is-Nil!9690 s!10566))))

(assert (=> b!920762 d!280400))

(declare-fun d!280402 () Bool)

(declare-fun isEmpty!5935 (Option!2111) Bool)

(assert (=> d!280402 (= (isDefined!1753 (findConcatSeparation!217 (regOne!5464 r!15766) (regTwo!5464 r!15766) Nil!9690 s!10566 s!10566)) (not (isEmpty!5935 (findConcatSeparation!217 (regOne!5464 r!15766) (regTwo!5464 r!15766) Nil!9690 s!10566 s!10566))))))

(declare-fun bs!236722 () Bool)

(assert (= bs!236722 d!280402))

(assert (=> bs!236722 m!1148103))

(declare-fun m!1148221 () Bool)

(assert (=> bs!236722 m!1148221))

(assert (=> b!920762 d!280402))

(declare-fun bs!236723 () Bool)

(declare-fun d!280404 () Bool)

(assert (= bs!236723 (and d!280404 b!920762)))

(declare-fun lambda!29989 () Int)

(assert (=> bs!236723 (= lambda!29989 lambda!29967)))

(assert (=> bs!236723 (not (= lambda!29989 lambda!29968))))

(declare-fun bs!236724 () Bool)

(assert (= bs!236724 (and d!280404 b!920764)))

(assert (=> bs!236724 (= (and (= (regOne!5464 r!15766) lt!338393) (= (regTwo!5464 r!15766) lt!338400)) (= lambda!29989 lambda!29969))))

(assert (=> bs!236724 (not (= lambda!29989 lambda!29970))))

(assert (=> d!280404 true))

(assert (=> d!280404 true))

(assert (=> d!280404 true))

(assert (=> d!280404 (= (isDefined!1753 (findConcatSeparation!217 (regOne!5464 r!15766) (regTwo!5464 r!15766) Nil!9690 s!10566 s!10566)) (Exists!247 lambda!29989))))

(declare-fun lt!338441 () Unit!14571)

(declare-fun choose!5640 (Regex!2476 Regex!2476 List!9706) Unit!14571)

(assert (=> d!280404 (= lt!338441 (choose!5640 (regOne!5464 r!15766) (regTwo!5464 r!15766) s!10566))))

(assert (=> d!280404 (validRegex!945 (regOne!5464 r!15766))))

(assert (=> d!280404 (= (lemmaFindConcatSeparationEquivalentToExists!217 (regOne!5464 r!15766) (regTwo!5464 r!15766) s!10566) lt!338441)))

(declare-fun bs!236725 () Bool)

(assert (= bs!236725 d!280404))

(assert (=> bs!236725 m!1148103))

(assert (=> bs!236725 m!1148213))

(declare-fun m!1148229 () Bool)

(assert (=> bs!236725 m!1148229))

(assert (=> bs!236725 m!1148103))

(assert (=> bs!236725 m!1148105))

(declare-fun m!1148231 () Bool)

(assert (=> bs!236725 m!1148231))

(assert (=> b!920762 d!280404))

(declare-fun d!280408 () Bool)

(declare-fun choose!5641 (Int) Bool)

(assert (=> d!280408 (= (Exists!247 lambda!29968) (choose!5641 lambda!29968))))

(declare-fun bs!236726 () Bool)

(assert (= bs!236726 d!280408))

(declare-fun m!1148233 () Bool)

(assert (=> bs!236726 m!1148233))

(assert (=> b!920762 d!280408))

(declare-fun bs!236727 () Bool)

(declare-fun d!280410 () Bool)

(assert (= bs!236727 (and d!280410 b!920764)))

(declare-fun lambda!29994 () Int)

(assert (=> bs!236727 (= (and (= (regOne!5464 r!15766) lt!338393) (= (regTwo!5464 r!15766) lt!338400)) (= lambda!29994 lambda!29969))))

(declare-fun bs!236728 () Bool)

(assert (= bs!236728 (and d!280410 b!920762)))

(assert (=> bs!236728 (= lambda!29994 lambda!29967)))

(assert (=> bs!236727 (not (= lambda!29994 lambda!29970))))

(assert (=> bs!236728 (not (= lambda!29994 lambda!29968))))

(declare-fun bs!236729 () Bool)

(assert (= bs!236729 (and d!280410 d!280404)))

(assert (=> bs!236729 (= lambda!29994 lambda!29989)))

(assert (=> d!280410 true))

(assert (=> d!280410 true))

(assert (=> d!280410 true))

(declare-fun lambda!29995 () Int)

(assert (=> bs!236727 (not (= lambda!29995 lambda!29969))))

(assert (=> bs!236728 (not (= lambda!29995 lambda!29967))))

(assert (=> bs!236727 (= (and (= (regOne!5464 r!15766) lt!338393) (= (regTwo!5464 r!15766) lt!338400)) (= lambda!29995 lambda!29970))))

(assert (=> bs!236728 (= lambda!29995 lambda!29968)))

(declare-fun bs!236730 () Bool)

(assert (= bs!236730 d!280410))

(assert (=> bs!236730 (not (= lambda!29995 lambda!29994))))

(assert (=> bs!236729 (not (= lambda!29995 lambda!29989))))

(assert (=> d!280410 true))

(assert (=> d!280410 true))

(assert (=> d!280410 true))

(assert (=> d!280410 (= (Exists!247 lambda!29994) (Exists!247 lambda!29995))))

(declare-fun lt!338446 () Unit!14571)

(declare-fun choose!5642 (Regex!2476 Regex!2476 List!9706) Unit!14571)

(assert (=> d!280410 (= lt!338446 (choose!5642 (regOne!5464 r!15766) (regTwo!5464 r!15766) s!10566))))

(assert (=> d!280410 (validRegex!945 (regOne!5464 r!15766))))

(assert (=> d!280410 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!159 (regOne!5464 r!15766) (regTwo!5464 r!15766) s!10566) lt!338446)))

(declare-fun m!1148235 () Bool)

(assert (=> bs!236730 m!1148235))

(declare-fun m!1148237 () Bool)

(assert (=> bs!236730 m!1148237))

(declare-fun m!1148239 () Bool)

(assert (=> bs!236730 m!1148239))

(assert (=> bs!236730 m!1148213))

(assert (=> b!920762 d!280410))

(declare-fun d!280412 () Bool)

(assert (=> d!280412 (= (Exists!247 lambda!29967) (choose!5641 lambda!29967))))

(declare-fun bs!236731 () Bool)

(assert (= bs!236731 d!280412))

(declare-fun m!1148241 () Bool)

(assert (=> bs!236731 m!1148241))

(assert (=> b!920762 d!280412))

(declare-fun d!280414 () Bool)

(declare-fun e!599691 () Bool)

(assert (=> d!280414 e!599691))

(declare-fun res!418737 () Bool)

(assert (=> d!280414 (=> res!418737 e!599691)))

(declare-fun e!599690 () Bool)

(assert (=> d!280414 (= res!418737 e!599690)))

(declare-fun res!418733 () Bool)

(assert (=> d!280414 (=> (not res!418733) (not e!599690))))

(declare-fun lt!338454 () Option!2111)

(assert (=> d!280414 (= res!418733 (isDefined!1753 lt!338454))))

(declare-fun e!599692 () Option!2111)

(assert (=> d!280414 (= lt!338454 e!599692)))

(declare-fun c!149428 () Bool)

(declare-fun e!599689 () Bool)

(assert (=> d!280414 (= c!149428 e!599689)))

(declare-fun res!418735 () Bool)

(assert (=> d!280414 (=> (not res!418735) (not e!599689))))

(assert (=> d!280414 (= res!418735 (matchR!1014 (regOne!5464 r!15766) Nil!9690))))

(assert (=> d!280414 (validRegex!945 (regOne!5464 r!15766))))

(assert (=> d!280414 (= (findConcatSeparation!217 (regOne!5464 r!15766) (regTwo!5464 r!15766) Nil!9690 s!10566 s!10566) lt!338454)))

(declare-fun b!921044 () Bool)

(assert (=> b!921044 (= e!599692 (Some!2110 (tuple2!10939 Nil!9690 s!10566)))))

(declare-fun b!921045 () Bool)

(assert (=> b!921045 (= e!599691 (not (isDefined!1753 lt!338454)))))

(declare-fun b!921046 () Bool)

(declare-fun res!418734 () Bool)

(assert (=> b!921046 (=> (not res!418734) (not e!599690))))

(declare-fun get!3158 (Option!2111) tuple2!10938)

(assert (=> b!921046 (= res!418734 (matchR!1014 (regOne!5464 r!15766) (_1!6295 (get!3158 lt!338454))))))

(declare-fun b!921047 () Bool)

(declare-fun lt!338455 () Unit!14571)

(declare-fun lt!338456 () Unit!14571)

(assert (=> b!921047 (= lt!338455 lt!338456)))

(declare-fun ++!2564 (List!9706 List!9706) List!9706)

(assert (=> b!921047 (= (++!2564 (++!2564 Nil!9690 (Cons!9690 (h!15091 s!10566) Nil!9690)) (t!100752 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!179 (List!9706 C!5522 List!9706 List!9706) Unit!14571)

(assert (=> b!921047 (= lt!338456 (lemmaMoveElementToOtherListKeepsConcatEq!179 Nil!9690 (h!15091 s!10566) (t!100752 s!10566) s!10566))))

(declare-fun e!599688 () Option!2111)

(assert (=> b!921047 (= e!599688 (findConcatSeparation!217 (regOne!5464 r!15766) (regTwo!5464 r!15766) (++!2564 Nil!9690 (Cons!9690 (h!15091 s!10566) Nil!9690)) (t!100752 s!10566) s!10566))))

(declare-fun b!921048 () Bool)

(assert (=> b!921048 (= e!599689 (matchR!1014 (regTwo!5464 r!15766) s!10566))))

(declare-fun b!921049 () Bool)

(assert (=> b!921049 (= e!599688 None!2110)))

(declare-fun b!921050 () Bool)

(declare-fun res!418736 () Bool)

(assert (=> b!921050 (=> (not res!418736) (not e!599690))))

(assert (=> b!921050 (= res!418736 (matchR!1014 (regTwo!5464 r!15766) (_2!6295 (get!3158 lt!338454))))))

(declare-fun b!921051 () Bool)

(assert (=> b!921051 (= e!599690 (= (++!2564 (_1!6295 (get!3158 lt!338454)) (_2!6295 (get!3158 lt!338454))) s!10566))))

(declare-fun b!921052 () Bool)

(assert (=> b!921052 (= e!599692 e!599688)))

(declare-fun c!149427 () Bool)

(assert (=> b!921052 (= c!149427 (is-Nil!9690 s!10566))))

(assert (= (and d!280414 res!418735) b!921048))

(assert (= (and d!280414 c!149428) b!921044))

(assert (= (and d!280414 (not c!149428)) b!921052))

(assert (= (and b!921052 c!149427) b!921049))

(assert (= (and b!921052 (not c!149427)) b!921047))

(assert (= (and d!280414 res!418733) b!921046))

(assert (= (and b!921046 res!418734) b!921050))

(assert (= (and b!921050 res!418736) b!921051))

(assert (= (and d!280414 (not res!418737)) b!921045))

(declare-fun m!1148257 () Bool)

(assert (=> b!921047 m!1148257))

(assert (=> b!921047 m!1148257))

(declare-fun m!1148259 () Bool)

(assert (=> b!921047 m!1148259))

(declare-fun m!1148261 () Bool)

(assert (=> b!921047 m!1148261))

(assert (=> b!921047 m!1148257))

(declare-fun m!1148263 () Bool)

(assert (=> b!921047 m!1148263))

(declare-fun m!1148265 () Bool)

(assert (=> b!921051 m!1148265))

(declare-fun m!1148267 () Bool)

(assert (=> b!921051 m!1148267))

(declare-fun m!1148269 () Bool)

(assert (=> b!921048 m!1148269))

(assert (=> b!921050 m!1148265))

(declare-fun m!1148271 () Bool)

(assert (=> b!921050 m!1148271))

(declare-fun m!1148273 () Bool)

(assert (=> d!280414 m!1148273))

(declare-fun m!1148275 () Bool)

(assert (=> d!280414 m!1148275))

(assert (=> d!280414 m!1148213))

(assert (=> b!921045 m!1148273))

(assert (=> b!921046 m!1148265))

(declare-fun m!1148277 () Bool)

(assert (=> b!921046 m!1148277))

(assert (=> b!920762 d!280414))

(declare-fun bs!236732 () Bool)

(declare-fun b!921110 () Bool)

(assert (= bs!236732 (and b!921110 b!920764)))

(declare-fun lambda!30000 () Int)

(assert (=> bs!236732 (not (= lambda!30000 lambda!29969))))

(declare-fun bs!236733 () Bool)

(assert (= bs!236733 (and b!921110 b!920762)))

(assert (=> bs!236733 (not (= lambda!30000 lambda!29967))))

(assert (=> bs!236732 (not (= lambda!30000 lambda!29970))))

(assert (=> bs!236733 (not (= lambda!30000 lambda!29968))))

(declare-fun bs!236734 () Bool)

(assert (= bs!236734 (and b!921110 d!280410)))

(assert (=> bs!236734 (not (= lambda!30000 lambda!29995))))

(assert (=> bs!236734 (not (= lambda!30000 lambda!29994))))

(declare-fun bs!236735 () Bool)

(assert (= bs!236735 (and b!921110 d!280404)))

(assert (=> bs!236735 (not (= lambda!30000 lambda!29989))))

(assert (=> b!921110 true))

(assert (=> b!921110 true))

(declare-fun bs!236736 () Bool)

(declare-fun b!921107 () Bool)

(assert (= bs!236736 (and b!921107 b!920764)))

(declare-fun lambda!30001 () Int)

(assert (=> bs!236736 (not (= lambda!30001 lambda!29969))))

(declare-fun bs!236737 () Bool)

(assert (= bs!236737 (and b!921107 b!920762)))

(assert (=> bs!236737 (not (= lambda!30001 lambda!29967))))

(declare-fun bs!236738 () Bool)

(assert (= bs!236738 (and b!921107 b!921110)))

(assert (=> bs!236738 (not (= lambda!30001 lambda!30000))))

(assert (=> bs!236736 (= (and (= (regOne!5464 r!15766) lt!338393) (= (regTwo!5464 r!15766) lt!338400)) (= lambda!30001 lambda!29970))))

(assert (=> bs!236737 (= lambda!30001 lambda!29968)))

(declare-fun bs!236739 () Bool)

(assert (= bs!236739 (and b!921107 d!280410)))

(assert (=> bs!236739 (= lambda!30001 lambda!29995)))

(assert (=> bs!236739 (not (= lambda!30001 lambda!29994))))

(declare-fun bs!236740 () Bool)

(assert (= bs!236740 (and b!921107 d!280404)))

(assert (=> bs!236740 (not (= lambda!30001 lambda!29989))))

(assert (=> b!921107 true))

(assert (=> b!921107 true))

(declare-fun e!599728 () Bool)

(declare-fun call!56037 () Bool)

(assert (=> b!921107 (= e!599728 call!56037)))

(declare-fun b!921108 () Bool)

(declare-fun e!599727 () Bool)

(declare-fun call!56036 () Bool)

(assert (=> b!921108 (= e!599727 call!56036)))

(declare-fun b!921109 () Bool)

(declare-fun c!149447 () Bool)

(assert (=> b!921109 (= c!149447 (is-Union!2476 r!15766))))

(declare-fun e!599724 () Bool)

(declare-fun e!599726 () Bool)

(assert (=> b!921109 (= e!599724 e!599726)))

(declare-fun bm!56031 () Bool)

(declare-fun c!149449 () Bool)

(assert (=> bm!56031 (= call!56037 (Exists!247 (ite c!149449 lambda!30000 lambda!30001)))))

(declare-fun e!599725 () Bool)

(assert (=> b!921110 (= e!599725 call!56037)))

(declare-fun b!921111 () Bool)

(declare-fun c!149450 () Bool)

(assert (=> b!921111 (= c!149450 (is-ElementMatch!2476 r!15766))))

(declare-fun e!599729 () Bool)

(assert (=> b!921111 (= e!599729 e!599724)))

(declare-fun b!921113 () Bool)

(declare-fun res!418756 () Bool)

(assert (=> b!921113 (=> res!418756 e!599725)))

(assert (=> b!921113 (= res!418756 call!56036)))

(assert (=> b!921113 (= e!599728 e!599725)))

(declare-fun b!921114 () Bool)

(declare-fun e!599723 () Bool)

(assert (=> b!921114 (= e!599726 e!599723)))

(declare-fun res!418758 () Bool)

(assert (=> b!921114 (= res!418758 (matchRSpec!277 (regOne!5465 r!15766) s!10566))))

(assert (=> b!921114 (=> res!418758 e!599723)))

(declare-fun bm!56032 () Bool)

(assert (=> bm!56032 (= call!56036 (isEmpty!5933 s!10566))))

(declare-fun b!921115 () Bool)

(assert (=> b!921115 (= e!599724 (= s!10566 (Cons!9690 (c!149371 r!15766) Nil!9690)))))

(declare-fun b!921116 () Bool)

(assert (=> b!921116 (= e!599727 e!599729)))

(declare-fun res!418757 () Bool)

(assert (=> b!921116 (= res!418757 (not (is-EmptyLang!2476 r!15766)))))

(assert (=> b!921116 (=> (not res!418757) (not e!599729))))

(declare-fun b!921117 () Bool)

(assert (=> b!921117 (= e!599726 e!599728)))

(assert (=> b!921117 (= c!149449 (is-Star!2476 r!15766))))

(declare-fun b!921112 () Bool)

(assert (=> b!921112 (= e!599723 (matchRSpec!277 (regTwo!5465 r!15766) s!10566))))

(declare-fun d!280418 () Bool)

(declare-fun c!149448 () Bool)

(assert (=> d!280418 (= c!149448 (is-EmptyExpr!2476 r!15766))))

(assert (=> d!280418 (= (matchRSpec!277 r!15766 s!10566) e!599727)))

(assert (= (and d!280418 c!149448) b!921108))

(assert (= (and d!280418 (not c!149448)) b!921116))

(assert (= (and b!921116 res!418757) b!921111))

(assert (= (and b!921111 c!149450) b!921115))

(assert (= (and b!921111 (not c!149450)) b!921109))

(assert (= (and b!921109 c!149447) b!921114))

(assert (= (and b!921109 (not c!149447)) b!921117))

(assert (= (and b!921114 (not res!418758)) b!921112))

(assert (= (and b!921117 c!149449) b!921113))

(assert (= (and b!921117 (not c!149449)) b!921107))

(assert (= (and b!921113 (not res!418756)) b!921110))

(assert (= (or b!921110 b!921107) bm!56031))

(assert (= (or b!921108 b!921113) bm!56032))

(declare-fun m!1148279 () Bool)

(assert (=> bm!56031 m!1148279))

(declare-fun m!1148281 () Bool)

(assert (=> b!921114 m!1148281))

(assert (=> bm!56032 m!1148109))

(declare-fun m!1148283 () Bool)

(assert (=> b!921112 m!1148283))

(assert (=> b!920768 d!280418))

(declare-fun d!280420 () Bool)

(declare-fun e!599737 () Bool)

(assert (=> d!280420 e!599737))

(declare-fun c!149457 () Bool)

(assert (=> d!280420 (= c!149457 (is-EmptyExpr!2476 r!15766))))

(declare-fun lt!338460 () Bool)

(declare-fun e!599742 () Bool)

(assert (=> d!280420 (= lt!338460 e!599742)))

(declare-fun c!149456 () Bool)

(assert (=> d!280420 (= c!149456 (isEmpty!5933 s!10566))))

(assert (=> d!280420 (validRegex!945 r!15766)))

(assert (=> d!280420 (= (matchR!1014 r!15766 s!10566) lt!338460)))

(declare-fun b!921129 () Bool)

(declare-fun e!599739 () Bool)

(assert (=> b!921129 (= e!599739 (not (= (head!1651 s!10566) (c!149371 r!15766))))))

(declare-fun b!921130 () Bool)

(declare-fun res!418761 () Bool)

(declare-fun e!599741 () Bool)

(assert (=> b!921130 (=> (not res!418761) (not e!599741))))

(assert (=> b!921130 (= res!418761 (isEmpty!5933 (tail!1213 s!10566)))))

(declare-fun b!921131 () Bool)

(declare-fun res!418760 () Bool)

(declare-fun e!599740 () Bool)

(assert (=> b!921131 (=> res!418760 e!599740)))

(assert (=> b!921131 (= res!418760 (not (is-ElementMatch!2476 r!15766)))))

(declare-fun e!599738 () Bool)

(assert (=> b!921131 (= e!599738 e!599740)))

(declare-fun bm!56038 () Bool)

(declare-fun call!56043 () Bool)

(assert (=> bm!56038 (= call!56043 (isEmpty!5933 s!10566))))

(declare-fun b!921132 () Bool)

(assert (=> b!921132 (= e!599742 (matchR!1014 (derivativeStep!498 r!15766 (head!1651 s!10566)) (tail!1213 s!10566)))))

(declare-fun b!921133 () Bool)

(declare-fun e!599736 () Bool)

(assert (=> b!921133 (= e!599740 e!599736)))

(declare-fun res!418764 () Bool)

(assert (=> b!921133 (=> (not res!418764) (not e!599736))))

(assert (=> b!921133 (= res!418764 (not lt!338460))))

(declare-fun b!921134 () Bool)

(assert (=> b!921134 (= e!599737 (= lt!338460 call!56043))))

(declare-fun b!921135 () Bool)

(declare-fun res!418767 () Bool)

(assert (=> b!921135 (=> res!418767 e!599740)))

(assert (=> b!921135 (= res!418767 e!599741)))

(declare-fun res!418763 () Bool)

(assert (=> b!921135 (=> (not res!418763) (not e!599741))))

(assert (=> b!921135 (= res!418763 lt!338460)))

(declare-fun b!921136 () Bool)

(assert (=> b!921136 (= e!599736 e!599739)))

(declare-fun res!418762 () Bool)

(assert (=> b!921136 (=> res!418762 e!599739)))

(assert (=> b!921136 (= res!418762 call!56043)))

(declare-fun b!921137 () Bool)

(assert (=> b!921137 (= e!599737 e!599738)))

(declare-fun c!149458 () Bool)

(assert (=> b!921137 (= c!149458 (is-EmptyLang!2476 r!15766))))

(declare-fun b!921138 () Bool)

(declare-fun res!418766 () Bool)

(assert (=> b!921138 (=> res!418766 e!599739)))

(assert (=> b!921138 (= res!418766 (not (isEmpty!5933 (tail!1213 s!10566))))))

(declare-fun b!921139 () Bool)

(declare-fun res!418765 () Bool)

(assert (=> b!921139 (=> (not res!418765) (not e!599741))))

(assert (=> b!921139 (= res!418765 (not call!56043))))

(declare-fun b!921140 () Bool)

(assert (=> b!921140 (= e!599741 (= (head!1651 s!10566) (c!149371 r!15766)))))

(declare-fun b!921141 () Bool)

(assert (=> b!921141 (= e!599742 (nullable!688 r!15766))))

(declare-fun b!921142 () Bool)

(assert (=> b!921142 (= e!599738 (not lt!338460))))

(assert (= (and d!280420 c!149456) b!921141))

(assert (= (and d!280420 (not c!149456)) b!921132))

(assert (= (and d!280420 c!149457) b!921134))

(assert (= (and d!280420 (not c!149457)) b!921137))

(assert (= (and b!921137 c!149458) b!921142))

(assert (= (and b!921137 (not c!149458)) b!921131))

(assert (= (and b!921131 (not res!418760)) b!921135))

(assert (= (and b!921135 res!418763) b!921139))

(assert (= (and b!921139 res!418765) b!921130))

(assert (= (and b!921130 res!418761) b!921140))

(assert (= (and b!921135 (not res!418767)) b!921133))

(assert (= (and b!921133 res!418764) b!921136))

(assert (= (and b!921136 (not res!418762)) b!921138))

(assert (= (and b!921138 (not res!418766)) b!921129))

(assert (= (or b!921134 b!921136 b!921139) bm!56038))

(assert (=> b!921132 m!1148177))

(assert (=> b!921132 m!1148177))

(declare-fun m!1148285 () Bool)

(assert (=> b!921132 m!1148285))

(assert (=> b!921132 m!1148181))

(assert (=> b!921132 m!1148285))

(assert (=> b!921132 m!1148181))

(declare-fun m!1148287 () Bool)

(assert (=> b!921132 m!1148287))

(assert (=> d!280420 m!1148109))

(assert (=> d!280420 m!1148119))

(assert (=> b!921129 m!1148177))

(declare-fun m!1148289 () Bool)

(assert (=> b!921141 m!1148289))

(assert (=> bm!56038 m!1148109))

(assert (=> b!921138 m!1148181))

(assert (=> b!921138 m!1148181))

(assert (=> b!921138 m!1148189))

(assert (=> b!921130 m!1148181))

(assert (=> b!921130 m!1148181))

(assert (=> b!921130 m!1148189))

(assert (=> b!921140 m!1148177))

(assert (=> b!920768 d!280420))

(declare-fun d!280422 () Bool)

(assert (=> d!280422 (= (matchR!1014 r!15766 s!10566) (matchRSpec!277 r!15766 s!10566))))

(declare-fun lt!338464 () Unit!14571)

(declare-fun choose!5643 (Regex!2476 List!9706) Unit!14571)

(assert (=> d!280422 (= lt!338464 (choose!5643 r!15766 s!10566))))

(assert (=> d!280422 (validRegex!945 r!15766)))

(assert (=> d!280422 (= (mainMatchTheorem!277 r!15766 s!10566) lt!338464)))

(declare-fun bs!236741 () Bool)

(assert (= bs!236741 d!280422))

(assert (=> bs!236741 m!1148115))

(assert (=> bs!236741 m!1148113))

(declare-fun m!1148315 () Bool)

(assert (=> bs!236741 m!1148315))

(assert (=> bs!236741 m!1148119))

(assert (=> b!920768 d!280422))

(declare-fun b!921163 () Bool)

(declare-fun e!599759 () Bool)

(declare-fun e!599758 () Bool)

(assert (=> b!921163 (= e!599759 e!599758)))

(declare-fun c!149467 () Bool)

(assert (=> b!921163 (= c!149467 (is-Union!2476 lt!338400))))

(declare-fun bm!56047 () Bool)

(declare-fun call!56054 () Bool)

(declare-fun call!56052 () Bool)

(assert (=> bm!56047 (= call!56054 call!56052)))

(declare-fun b!921164 () Bool)

(declare-fun e!599762 () Bool)

(assert (=> b!921164 (= e!599762 call!56054)))

(declare-fun b!921165 () Bool)

(declare-fun e!599760 () Bool)

(assert (=> b!921165 (= e!599760 e!599759)))

(declare-fun c!149466 () Bool)

(assert (=> b!921165 (= c!149466 (is-Star!2476 lt!338400))))

(declare-fun bm!56048 () Bool)

(declare-fun call!56053 () Bool)

(assert (=> bm!56048 (= call!56053 (validRegex!945 (ite c!149467 (regOne!5465 lt!338400) (regOne!5464 lt!338400))))))

(declare-fun d!280428 () Bool)

(declare-fun res!418778 () Bool)

(assert (=> d!280428 (=> res!418778 e!599760)))

(assert (=> d!280428 (= res!418778 (is-ElementMatch!2476 lt!338400))))

(assert (=> d!280428 (= (validRegex!945 lt!338400) e!599760)))

(declare-fun b!921166 () Bool)

(declare-fun res!418776 () Bool)

(declare-fun e!599757 () Bool)

(assert (=> b!921166 (=> res!418776 e!599757)))

(assert (=> b!921166 (= res!418776 (not (is-Concat!4309 lt!338400)))))

(assert (=> b!921166 (= e!599758 e!599757)))

(declare-fun b!921167 () Bool)

(declare-fun res!418774 () Bool)

(assert (=> b!921167 (=> (not res!418774) (not e!599762))))

(assert (=> b!921167 (= res!418774 call!56053)))

(assert (=> b!921167 (= e!599758 e!599762)))

(declare-fun b!921168 () Bool)

(declare-fun e!599756 () Bool)

(assert (=> b!921168 (= e!599756 call!56052)))

(declare-fun b!921169 () Bool)

(assert (=> b!921169 (= e!599759 e!599756)))

(declare-fun res!418777 () Bool)

(assert (=> b!921169 (= res!418777 (not (nullable!688 (reg!2805 lt!338400))))))

(assert (=> b!921169 (=> (not res!418777) (not e!599756))))

(declare-fun bm!56049 () Bool)

(assert (=> bm!56049 (= call!56052 (validRegex!945 (ite c!149466 (reg!2805 lt!338400) (ite c!149467 (regTwo!5465 lt!338400) (regTwo!5464 lt!338400)))))))

(declare-fun b!921170 () Bool)

(declare-fun e!599761 () Bool)

(assert (=> b!921170 (= e!599757 e!599761)))

(declare-fun res!418775 () Bool)

(assert (=> b!921170 (=> (not res!418775) (not e!599761))))

(assert (=> b!921170 (= res!418775 call!56053)))

(declare-fun b!921171 () Bool)

(assert (=> b!921171 (= e!599761 call!56054)))

(assert (= (and d!280428 (not res!418778)) b!921165))

(assert (= (and b!921165 c!149466) b!921169))

(assert (= (and b!921165 (not c!149466)) b!921163))

(assert (= (and b!921169 res!418777) b!921168))

(assert (= (and b!921163 c!149467) b!921167))

(assert (= (and b!921163 (not c!149467)) b!921166))

(assert (= (and b!921167 res!418774) b!921164))

(assert (= (and b!921166 (not res!418776)) b!921170))

(assert (= (and b!921170 res!418775) b!921171))

(assert (= (or b!921164 b!921171) bm!56047))

(assert (= (or b!921167 b!921170) bm!56048))

(assert (= (or b!921168 bm!56047) bm!56049))

(declare-fun m!1148317 () Bool)

(assert (=> bm!56048 m!1148317))

(declare-fun m!1148319 () Bool)

(assert (=> b!921169 m!1148319))

(declare-fun m!1148321 () Bool)

(assert (=> bm!56049 m!1148321))

(assert (=> b!920763 d!280428))

(declare-fun bs!236742 () Bool)

(declare-fun d!280430 () Bool)

(assert (= bs!236742 (and d!280430 b!920764)))

(declare-fun lambda!30002 () Int)

(assert (=> bs!236742 (= lambda!30002 lambda!29969)))

(declare-fun bs!236743 () Bool)

(assert (= bs!236743 (and d!280430 b!920762)))

(assert (=> bs!236743 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!30002 lambda!29967))))

(declare-fun bs!236744 () Bool)

(assert (= bs!236744 (and d!280430 b!921110)))

(assert (=> bs!236744 (not (= lambda!30002 lambda!30000))))

(assert (=> bs!236742 (not (= lambda!30002 lambda!29970))))

(assert (=> bs!236743 (not (= lambda!30002 lambda!29968))))

(declare-fun bs!236745 () Bool)

(assert (= bs!236745 (and d!280430 d!280410)))

(assert (=> bs!236745 (not (= lambda!30002 lambda!29995))))

(assert (=> bs!236745 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!30002 lambda!29994))))

(declare-fun bs!236746 () Bool)

(assert (= bs!236746 (and d!280430 d!280404)))

(assert (=> bs!236746 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!30002 lambda!29989))))

(declare-fun bs!236747 () Bool)

(assert (= bs!236747 (and d!280430 b!921107)))

(assert (=> bs!236747 (not (= lambda!30002 lambda!30001))))

(assert (=> d!280430 true))

(assert (=> d!280430 true))

(assert (=> d!280430 true))

(assert (=> d!280430 (= (isDefined!1753 (findConcatSeparation!217 lt!338393 lt!338400 Nil!9690 s!10566 s!10566)) (Exists!247 lambda!30002))))

(declare-fun lt!338465 () Unit!14571)

(assert (=> d!280430 (= lt!338465 (choose!5640 lt!338393 lt!338400 s!10566))))

(assert (=> d!280430 (validRegex!945 lt!338393)))

(assert (=> d!280430 (= (lemmaFindConcatSeparationEquivalentToExists!217 lt!338393 lt!338400 s!10566) lt!338465)))

(declare-fun bs!236748 () Bool)

(assert (= bs!236748 d!280430))

(assert (=> bs!236748 m!1148087))

(assert (=> bs!236748 m!1148081))

(declare-fun m!1148329 () Bool)

(assert (=> bs!236748 m!1148329))

(assert (=> bs!236748 m!1148087))

(assert (=> bs!236748 m!1148095))

(declare-fun m!1148331 () Bool)

(assert (=> bs!236748 m!1148331))

(assert (=> b!920764 d!280430))

(declare-fun d!280434 () Bool)

(declare-fun e!599766 () Bool)

(assert (=> d!280434 e!599766))

(declare-fun res!418783 () Bool)

(assert (=> d!280434 (=> res!418783 e!599766)))

(declare-fun e!599765 () Bool)

(assert (=> d!280434 (= res!418783 e!599765)))

(declare-fun res!418779 () Bool)

(assert (=> d!280434 (=> (not res!418779) (not e!599765))))

(declare-fun lt!338466 () Option!2111)

(assert (=> d!280434 (= res!418779 (isDefined!1753 lt!338466))))

(declare-fun e!599767 () Option!2111)

(assert (=> d!280434 (= lt!338466 e!599767)))

(declare-fun c!149469 () Bool)

(declare-fun e!599764 () Bool)

(assert (=> d!280434 (= c!149469 e!599764)))

(declare-fun res!418781 () Bool)

(assert (=> d!280434 (=> (not res!418781) (not e!599764))))

(assert (=> d!280434 (= res!418781 (matchR!1014 lt!338393 Nil!9690))))

(assert (=> d!280434 (validRegex!945 lt!338393)))

(assert (=> d!280434 (= (findConcatSeparation!217 lt!338393 lt!338400 Nil!9690 s!10566 s!10566) lt!338466)))

(declare-fun b!921172 () Bool)

(assert (=> b!921172 (= e!599767 (Some!2110 (tuple2!10939 Nil!9690 s!10566)))))

(declare-fun b!921173 () Bool)

(assert (=> b!921173 (= e!599766 (not (isDefined!1753 lt!338466)))))

(declare-fun b!921174 () Bool)

(declare-fun res!418780 () Bool)

(assert (=> b!921174 (=> (not res!418780) (not e!599765))))

(assert (=> b!921174 (= res!418780 (matchR!1014 lt!338393 (_1!6295 (get!3158 lt!338466))))))

(declare-fun b!921175 () Bool)

(declare-fun lt!338467 () Unit!14571)

(declare-fun lt!338468 () Unit!14571)

(assert (=> b!921175 (= lt!338467 lt!338468)))

(assert (=> b!921175 (= (++!2564 (++!2564 Nil!9690 (Cons!9690 (h!15091 s!10566) Nil!9690)) (t!100752 s!10566)) s!10566)))

(assert (=> b!921175 (= lt!338468 (lemmaMoveElementToOtherListKeepsConcatEq!179 Nil!9690 (h!15091 s!10566) (t!100752 s!10566) s!10566))))

(declare-fun e!599763 () Option!2111)

(assert (=> b!921175 (= e!599763 (findConcatSeparation!217 lt!338393 lt!338400 (++!2564 Nil!9690 (Cons!9690 (h!15091 s!10566) Nil!9690)) (t!100752 s!10566) s!10566))))

(declare-fun b!921176 () Bool)

(assert (=> b!921176 (= e!599764 (matchR!1014 lt!338400 s!10566))))

(declare-fun b!921177 () Bool)

(assert (=> b!921177 (= e!599763 None!2110)))

(declare-fun b!921178 () Bool)

(declare-fun res!418782 () Bool)

(assert (=> b!921178 (=> (not res!418782) (not e!599765))))

(assert (=> b!921178 (= res!418782 (matchR!1014 lt!338400 (_2!6295 (get!3158 lt!338466))))))

(declare-fun b!921179 () Bool)

(assert (=> b!921179 (= e!599765 (= (++!2564 (_1!6295 (get!3158 lt!338466)) (_2!6295 (get!3158 lt!338466))) s!10566))))

(declare-fun b!921180 () Bool)

(assert (=> b!921180 (= e!599767 e!599763)))

(declare-fun c!149468 () Bool)

(assert (=> b!921180 (= c!149468 (is-Nil!9690 s!10566))))

(assert (= (and d!280434 res!418781) b!921176))

(assert (= (and d!280434 c!149469) b!921172))

(assert (= (and d!280434 (not c!149469)) b!921180))

(assert (= (and b!921180 c!149468) b!921177))

(assert (= (and b!921180 (not c!149468)) b!921175))

(assert (= (and d!280434 res!418779) b!921174))

(assert (= (and b!921174 res!418780) b!921178))

(assert (= (and b!921178 res!418782) b!921179))

(assert (= (and d!280434 (not res!418783)) b!921173))

(assert (=> b!921175 m!1148257))

(assert (=> b!921175 m!1148257))

(assert (=> b!921175 m!1148259))

(assert (=> b!921175 m!1148261))

(assert (=> b!921175 m!1148257))

(declare-fun m!1148333 () Bool)

(assert (=> b!921175 m!1148333))

(declare-fun m!1148335 () Bool)

(assert (=> b!921179 m!1148335))

(declare-fun m!1148337 () Bool)

(assert (=> b!921179 m!1148337))

(declare-fun m!1148339 () Bool)

(assert (=> b!921176 m!1148339))

(assert (=> b!921178 m!1148335))

(declare-fun m!1148341 () Bool)

(assert (=> b!921178 m!1148341))

(declare-fun m!1148343 () Bool)

(assert (=> d!280434 m!1148343))

(declare-fun m!1148345 () Bool)

(assert (=> d!280434 m!1148345))

(assert (=> d!280434 m!1148081))

(assert (=> b!921173 m!1148343))

(assert (=> b!921174 m!1148335))

(declare-fun m!1148347 () Bool)

(assert (=> b!921174 m!1148347))

(assert (=> b!920764 d!280434))

(declare-fun bs!236749 () Bool)

(declare-fun b!921184 () Bool)

(assert (= bs!236749 (and b!921184 b!920764)))

(declare-fun lambda!30003 () Int)

(assert (=> bs!236749 (not (= lambda!30003 lambda!29969))))

(declare-fun bs!236750 () Bool)

(assert (= bs!236750 (and b!921184 b!920762)))

(assert (=> bs!236750 (not (= lambda!30003 lambda!29967))))

(declare-fun bs!236751 () Bool)

(assert (= bs!236751 (and b!921184 d!280430)))

(assert (=> bs!236751 (not (= lambda!30003 lambda!30002))))

(declare-fun bs!236752 () Bool)

(assert (= bs!236752 (and b!921184 b!921110)))

(assert (=> bs!236752 (= (and (= (reg!2805 lt!338398) (reg!2805 r!15766)) (= lt!338398 r!15766)) (= lambda!30003 lambda!30000))))

(assert (=> bs!236749 (not (= lambda!30003 lambda!29970))))

(assert (=> bs!236750 (not (= lambda!30003 lambda!29968))))

(declare-fun bs!236753 () Bool)

(assert (= bs!236753 (and b!921184 d!280410)))

(assert (=> bs!236753 (not (= lambda!30003 lambda!29995))))

(assert (=> bs!236753 (not (= lambda!30003 lambda!29994))))

(declare-fun bs!236754 () Bool)

(assert (= bs!236754 (and b!921184 d!280404)))

(assert (=> bs!236754 (not (= lambda!30003 lambda!29989))))

(declare-fun bs!236755 () Bool)

(assert (= bs!236755 (and b!921184 b!921107)))

(assert (=> bs!236755 (not (= lambda!30003 lambda!30001))))

(assert (=> b!921184 true))

(assert (=> b!921184 true))

(declare-fun bs!236756 () Bool)

(declare-fun b!921181 () Bool)

(assert (= bs!236756 (and b!921181 b!920764)))

(declare-fun lambda!30004 () Int)

(assert (=> bs!236756 (not (= lambda!30004 lambda!29969))))

(declare-fun bs!236757 () Bool)

(assert (= bs!236757 (and b!921181 b!920762)))

(assert (=> bs!236757 (not (= lambda!30004 lambda!29967))))

(declare-fun bs!236758 () Bool)

(assert (= bs!236758 (and b!921181 d!280430)))

(assert (=> bs!236758 (not (= lambda!30004 lambda!30002))))

(declare-fun bs!236759 () Bool)

(assert (= bs!236759 (and b!921181 b!921110)))

(assert (=> bs!236759 (not (= lambda!30004 lambda!30000))))

(assert (=> bs!236756 (= (and (= (regOne!5464 lt!338398) lt!338393) (= (regTwo!5464 lt!338398) lt!338400)) (= lambda!30004 lambda!29970))))

(assert (=> bs!236757 (= (and (= (regOne!5464 lt!338398) (regOne!5464 r!15766)) (= (regTwo!5464 lt!338398) (regTwo!5464 r!15766))) (= lambda!30004 lambda!29968))))

(declare-fun bs!236760 () Bool)

(assert (= bs!236760 (and b!921181 b!921184)))

(assert (=> bs!236760 (not (= lambda!30004 lambda!30003))))

(declare-fun bs!236761 () Bool)

(assert (= bs!236761 (and b!921181 d!280410)))

(assert (=> bs!236761 (= (and (= (regOne!5464 lt!338398) (regOne!5464 r!15766)) (= (regTwo!5464 lt!338398) (regTwo!5464 r!15766))) (= lambda!30004 lambda!29995))))

(assert (=> bs!236761 (not (= lambda!30004 lambda!29994))))

(declare-fun bs!236762 () Bool)

(assert (= bs!236762 (and b!921181 d!280404)))

(assert (=> bs!236762 (not (= lambda!30004 lambda!29989))))

(declare-fun bs!236763 () Bool)

(assert (= bs!236763 (and b!921181 b!921107)))

(assert (=> bs!236763 (= (and (= (regOne!5464 lt!338398) (regOne!5464 r!15766)) (= (regTwo!5464 lt!338398) (regTwo!5464 r!15766))) (= lambda!30004 lambda!30001))))

(assert (=> b!921181 true))

(assert (=> b!921181 true))

(declare-fun e!599773 () Bool)

(declare-fun call!56056 () Bool)

(assert (=> b!921181 (= e!599773 call!56056)))

(declare-fun b!921182 () Bool)

(declare-fun e!599772 () Bool)

(declare-fun call!56055 () Bool)

(assert (=> b!921182 (= e!599772 call!56055)))

(declare-fun b!921183 () Bool)

(declare-fun c!149470 () Bool)

(assert (=> b!921183 (= c!149470 (is-Union!2476 lt!338398))))

(declare-fun e!599769 () Bool)

(declare-fun e!599771 () Bool)

(assert (=> b!921183 (= e!599769 e!599771)))

(declare-fun c!149472 () Bool)

(declare-fun bm!56050 () Bool)

(assert (=> bm!56050 (= call!56056 (Exists!247 (ite c!149472 lambda!30003 lambda!30004)))))

(declare-fun e!599770 () Bool)

(assert (=> b!921184 (= e!599770 call!56056)))

(declare-fun b!921185 () Bool)

(declare-fun c!149473 () Bool)

(assert (=> b!921185 (= c!149473 (is-ElementMatch!2476 lt!338398))))

(declare-fun e!599774 () Bool)

(assert (=> b!921185 (= e!599774 e!599769)))

(declare-fun b!921187 () Bool)

(declare-fun res!418784 () Bool)

(assert (=> b!921187 (=> res!418784 e!599770)))

(assert (=> b!921187 (= res!418784 call!56055)))

(assert (=> b!921187 (= e!599773 e!599770)))

(declare-fun b!921188 () Bool)

(declare-fun e!599768 () Bool)

(assert (=> b!921188 (= e!599771 e!599768)))

(declare-fun res!418786 () Bool)

(assert (=> b!921188 (= res!418786 (matchRSpec!277 (regOne!5465 lt!338398) s!10566))))

(assert (=> b!921188 (=> res!418786 e!599768)))

(declare-fun bm!56051 () Bool)

(assert (=> bm!56051 (= call!56055 (isEmpty!5933 s!10566))))

(declare-fun b!921189 () Bool)

(assert (=> b!921189 (= e!599769 (= s!10566 (Cons!9690 (c!149371 lt!338398) Nil!9690)))))

(declare-fun b!921190 () Bool)

(assert (=> b!921190 (= e!599772 e!599774)))

(declare-fun res!418785 () Bool)

(assert (=> b!921190 (= res!418785 (not (is-EmptyLang!2476 lt!338398)))))

(assert (=> b!921190 (=> (not res!418785) (not e!599774))))

(declare-fun b!921191 () Bool)

(assert (=> b!921191 (= e!599771 e!599773)))

(assert (=> b!921191 (= c!149472 (is-Star!2476 lt!338398))))

(declare-fun b!921186 () Bool)

(assert (=> b!921186 (= e!599768 (matchRSpec!277 (regTwo!5465 lt!338398) s!10566))))

(declare-fun d!280436 () Bool)

(declare-fun c!149471 () Bool)

(assert (=> d!280436 (= c!149471 (is-EmptyExpr!2476 lt!338398))))

(assert (=> d!280436 (= (matchRSpec!277 lt!338398 s!10566) e!599772)))

(assert (= (and d!280436 c!149471) b!921182))

(assert (= (and d!280436 (not c!149471)) b!921190))

(assert (= (and b!921190 res!418785) b!921185))

(assert (= (and b!921185 c!149473) b!921189))

(assert (= (and b!921185 (not c!149473)) b!921183))

(assert (= (and b!921183 c!149470) b!921188))

(assert (= (and b!921183 (not c!149470)) b!921191))

(assert (= (and b!921188 (not res!418786)) b!921186))

(assert (= (and b!921191 c!149472) b!921187))

(assert (= (and b!921191 (not c!149472)) b!921181))

(assert (= (and b!921187 (not res!418784)) b!921184))

(assert (= (or b!921184 b!921181) bm!56050))

(assert (= (or b!921182 b!921187) bm!56051))

(declare-fun m!1148349 () Bool)

(assert (=> bm!56050 m!1148349))

(declare-fun m!1148351 () Bool)

(assert (=> b!921188 m!1148351))

(assert (=> bm!56051 m!1148109))

(declare-fun m!1148353 () Bool)

(assert (=> b!921186 m!1148353))

(assert (=> b!920764 d!280436))

(declare-fun b!921192 () Bool)

(declare-fun e!599778 () Bool)

(declare-fun e!599777 () Bool)

(assert (=> b!921192 (= e!599778 e!599777)))

(declare-fun c!149475 () Bool)

(assert (=> b!921192 (= c!149475 (is-Union!2476 lt!338393))))

(declare-fun bm!56052 () Bool)

(declare-fun call!56059 () Bool)

(declare-fun call!56057 () Bool)

(assert (=> bm!56052 (= call!56059 call!56057)))

(declare-fun b!921193 () Bool)

(declare-fun e!599781 () Bool)

(assert (=> b!921193 (= e!599781 call!56059)))

(declare-fun b!921194 () Bool)

(declare-fun e!599779 () Bool)

(assert (=> b!921194 (= e!599779 e!599778)))

(declare-fun c!149474 () Bool)

(assert (=> b!921194 (= c!149474 (is-Star!2476 lt!338393))))

(declare-fun bm!56053 () Bool)

(declare-fun call!56058 () Bool)

(assert (=> bm!56053 (= call!56058 (validRegex!945 (ite c!149475 (regOne!5465 lt!338393) (regOne!5464 lt!338393))))))

(declare-fun d!280438 () Bool)

(declare-fun res!418791 () Bool)

(assert (=> d!280438 (=> res!418791 e!599779)))

(assert (=> d!280438 (= res!418791 (is-ElementMatch!2476 lt!338393))))

(assert (=> d!280438 (= (validRegex!945 lt!338393) e!599779)))

(declare-fun b!921195 () Bool)

(declare-fun res!418789 () Bool)

(declare-fun e!599776 () Bool)

(assert (=> b!921195 (=> res!418789 e!599776)))

(assert (=> b!921195 (= res!418789 (not (is-Concat!4309 lt!338393)))))

(assert (=> b!921195 (= e!599777 e!599776)))

(declare-fun b!921196 () Bool)

(declare-fun res!418787 () Bool)

(assert (=> b!921196 (=> (not res!418787) (not e!599781))))

(assert (=> b!921196 (= res!418787 call!56058)))

(assert (=> b!921196 (= e!599777 e!599781)))

(declare-fun b!921197 () Bool)

(declare-fun e!599775 () Bool)

(assert (=> b!921197 (= e!599775 call!56057)))

(declare-fun b!921198 () Bool)

(assert (=> b!921198 (= e!599778 e!599775)))

(declare-fun res!418790 () Bool)

(assert (=> b!921198 (= res!418790 (not (nullable!688 (reg!2805 lt!338393))))))

(assert (=> b!921198 (=> (not res!418790) (not e!599775))))

(declare-fun bm!56054 () Bool)

(assert (=> bm!56054 (= call!56057 (validRegex!945 (ite c!149474 (reg!2805 lt!338393) (ite c!149475 (regTwo!5465 lt!338393) (regTwo!5464 lt!338393)))))))

(declare-fun b!921199 () Bool)

(declare-fun e!599780 () Bool)

(assert (=> b!921199 (= e!599776 e!599780)))

(declare-fun res!418788 () Bool)

(assert (=> b!921199 (=> (not res!418788) (not e!599780))))

(assert (=> b!921199 (= res!418788 call!56058)))

(declare-fun b!921200 () Bool)

(assert (=> b!921200 (= e!599780 call!56059)))

(assert (= (and d!280438 (not res!418791)) b!921194))

(assert (= (and b!921194 c!149474) b!921198))

(assert (= (and b!921194 (not c!149474)) b!921192))

(assert (= (and b!921198 res!418790) b!921197))

(assert (= (and b!921192 c!149475) b!921196))

(assert (= (and b!921192 (not c!149475)) b!921195))

(assert (= (and b!921196 res!418787) b!921193))

(assert (= (and b!921195 (not res!418789)) b!921199))

(assert (= (and b!921199 res!418788) b!921200))

(assert (= (or b!921193 b!921200) bm!56052))

(assert (= (or b!921196 b!921199) bm!56053))

(assert (= (or b!921197 bm!56052) bm!56054))

(declare-fun m!1148355 () Bool)

(assert (=> bm!56053 m!1148355))

(declare-fun m!1148357 () Bool)

(assert (=> b!921198 m!1148357))

(declare-fun m!1148359 () Bool)

(assert (=> bm!56054 m!1148359))

(assert (=> b!920764 d!280438))

(declare-fun bs!236764 () Bool)

(declare-fun d!280440 () Bool)

(assert (= bs!236764 (and d!280440 b!920764)))

(declare-fun lambda!30005 () Int)

(assert (=> bs!236764 (= lambda!30005 lambda!29969)))

(declare-fun bs!236765 () Bool)

(assert (= bs!236765 (and d!280440 b!920762)))

(assert (=> bs!236765 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!30005 lambda!29967))))

(declare-fun bs!236766 () Bool)

(assert (= bs!236766 (and d!280440 d!280430)))

(assert (=> bs!236766 (= lambda!30005 lambda!30002)))

(declare-fun bs!236767 () Bool)

(assert (= bs!236767 (and d!280440 b!921110)))

(assert (=> bs!236767 (not (= lambda!30005 lambda!30000))))

(assert (=> bs!236764 (not (= lambda!30005 lambda!29970))))

(assert (=> bs!236765 (not (= lambda!30005 lambda!29968))))

(declare-fun bs!236768 () Bool)

(assert (= bs!236768 (and d!280440 b!921181)))

(assert (=> bs!236768 (not (= lambda!30005 lambda!30004))))

(declare-fun bs!236769 () Bool)

(assert (= bs!236769 (and d!280440 b!921184)))

(assert (=> bs!236769 (not (= lambda!30005 lambda!30003))))

(declare-fun bs!236770 () Bool)

(assert (= bs!236770 (and d!280440 d!280410)))

(assert (=> bs!236770 (not (= lambda!30005 lambda!29995))))

(assert (=> bs!236770 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!30005 lambda!29994))))

(declare-fun bs!236771 () Bool)

(assert (= bs!236771 (and d!280440 d!280404)))

(assert (=> bs!236771 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!30005 lambda!29989))))

(declare-fun bs!236772 () Bool)

(assert (= bs!236772 (and d!280440 b!921107)))

(assert (=> bs!236772 (not (= lambda!30005 lambda!30001))))

(assert (=> d!280440 true))

(assert (=> d!280440 true))

(assert (=> d!280440 true))

(declare-fun lambda!30006 () Int)

(assert (=> bs!236764 (not (= lambda!30006 lambda!29969))))

(assert (=> bs!236765 (not (= lambda!30006 lambda!29967))))

(assert (=> bs!236766 (not (= lambda!30006 lambda!30002))))

(assert (=> bs!236767 (not (= lambda!30006 lambda!30000))))

(assert (=> bs!236764 (= lambda!30006 lambda!29970)))

(assert (=> bs!236765 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!30006 lambda!29968))))

(assert (=> bs!236768 (= (and (= lt!338393 (regOne!5464 lt!338398)) (= lt!338400 (regTwo!5464 lt!338398))) (= lambda!30006 lambda!30004))))

(assert (=> bs!236769 (not (= lambda!30006 lambda!30003))))

(declare-fun bs!236773 () Bool)

(assert (= bs!236773 d!280440))

(assert (=> bs!236773 (not (= lambda!30006 lambda!30005))))

(assert (=> bs!236770 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!30006 lambda!29995))))

(assert (=> bs!236770 (not (= lambda!30006 lambda!29994))))

(assert (=> bs!236771 (not (= lambda!30006 lambda!29989))))

(assert (=> bs!236772 (= (and (= lt!338393 (regOne!5464 r!15766)) (= lt!338400 (regTwo!5464 r!15766))) (= lambda!30006 lambda!30001))))

(assert (=> d!280440 true))

(assert (=> d!280440 true))

(assert (=> d!280440 true))

(assert (=> d!280440 (= (Exists!247 lambda!30005) (Exists!247 lambda!30006))))

(declare-fun lt!338469 () Unit!14571)

(assert (=> d!280440 (= lt!338469 (choose!5642 lt!338393 lt!338400 s!10566))))

(assert (=> d!280440 (validRegex!945 lt!338393)))

(assert (=> d!280440 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!159 lt!338393 lt!338400 s!10566) lt!338469)))

(declare-fun m!1148361 () Bool)

(assert (=> bs!236773 m!1148361))

(declare-fun m!1148363 () Bool)

(assert (=> bs!236773 m!1148363))

(declare-fun m!1148365 () Bool)

(assert (=> bs!236773 m!1148365))

(assert (=> bs!236773 m!1148081))

(assert (=> b!920764 d!280440))

(declare-fun d!280442 () Bool)

(assert (=> d!280442 (= (matchR!1014 lt!338398 s!10566) (matchRSpec!277 lt!338398 s!10566))))

(declare-fun lt!338470 () Unit!14571)

(assert (=> d!280442 (= lt!338470 (choose!5643 lt!338398 s!10566))))

(assert (=> d!280442 (validRegex!945 lt!338398)))

(assert (=> d!280442 (= (mainMatchTheorem!277 lt!338398 s!10566) lt!338470)))

(declare-fun bs!236774 () Bool)

(assert (= bs!236774 d!280442))

(assert (=> bs!236774 m!1148123))

(assert (=> bs!236774 m!1148089))

(declare-fun m!1148367 () Bool)

(assert (=> bs!236774 m!1148367))

(assert (=> bs!236774 m!1148185))

(assert (=> b!920764 d!280442))

(declare-fun d!280444 () Bool)

(assert (=> d!280444 (= (Exists!247 lambda!29969) (choose!5641 lambda!29969))))

(declare-fun bs!236775 () Bool)

(assert (= bs!236775 d!280444))

(declare-fun m!1148369 () Bool)

(assert (=> bs!236775 m!1148369))

(assert (=> b!920764 d!280444))

(declare-fun d!280446 () Bool)

(assert (=> d!280446 (= (isDefined!1753 (findConcatSeparation!217 lt!338393 lt!338400 Nil!9690 s!10566 s!10566)) (not (isEmpty!5935 (findConcatSeparation!217 lt!338393 lt!338400 Nil!9690 s!10566 s!10566))))))

(declare-fun bs!236776 () Bool)

(assert (= bs!236776 d!280446))

(assert (=> bs!236776 m!1148087))

(declare-fun m!1148371 () Bool)

(assert (=> bs!236776 m!1148371))

(assert (=> b!920764 d!280446))

(declare-fun d!280448 () Bool)

(assert (=> d!280448 (= (Exists!247 lambda!29970) (choose!5641 lambda!29970))))

(declare-fun bs!236777 () Bool)

(assert (= bs!236777 d!280448))

(declare-fun m!1148373 () Bool)

(assert (=> bs!236777 m!1148373))

(assert (=> b!920764 d!280448))

(declare-fun b!921227 () Bool)

(declare-fun e!599798 () Bool)

(declare-fun tp!286903 () Bool)

(assert (=> b!921227 (= e!599798 (and tp_is_empty!4595 tp!286903))))

(assert (=> b!920760 (= tp!286879 e!599798)))

(assert (= (and b!920760 (is-Cons!9690 (t!100752 s!10566))) b!921227))

(declare-fun b!921240 () Bool)

(declare-fun e!599801 () Bool)

(declare-fun tp!286916 () Bool)

(assert (=> b!921240 (= e!599801 tp!286916)))

(declare-fun b!921238 () Bool)

(assert (=> b!921238 (= e!599801 tp_is_empty!4595)))

(declare-fun b!921239 () Bool)

(declare-fun tp!286915 () Bool)

(declare-fun tp!286914 () Bool)

(assert (=> b!921239 (= e!599801 (and tp!286915 tp!286914))))

(declare-fun b!921241 () Bool)

(declare-fun tp!286917 () Bool)

(declare-fun tp!286918 () Bool)

(assert (=> b!921241 (= e!599801 (and tp!286917 tp!286918))))

(assert (=> b!920766 (= tp!286882 e!599801)))

(assert (= (and b!920766 (is-ElementMatch!2476 (regOne!5465 r!15766))) b!921238))

(assert (= (and b!920766 (is-Concat!4309 (regOne!5465 r!15766))) b!921239))

(assert (= (and b!920766 (is-Star!2476 (regOne!5465 r!15766))) b!921240))

(assert (= (and b!920766 (is-Union!2476 (regOne!5465 r!15766))) b!921241))

(declare-fun b!921244 () Bool)

(declare-fun e!599802 () Bool)

(declare-fun tp!286921 () Bool)

(assert (=> b!921244 (= e!599802 tp!286921)))

(declare-fun b!921242 () Bool)

(assert (=> b!921242 (= e!599802 tp_is_empty!4595)))

(declare-fun b!921243 () Bool)

(declare-fun tp!286920 () Bool)

(declare-fun tp!286919 () Bool)

(assert (=> b!921243 (= e!599802 (and tp!286920 tp!286919))))

(declare-fun b!921245 () Bool)

(declare-fun tp!286922 () Bool)

(declare-fun tp!286923 () Bool)

(assert (=> b!921245 (= e!599802 (and tp!286922 tp!286923))))

(assert (=> b!920766 (= tp!286880 e!599802)))

(assert (= (and b!920766 (is-ElementMatch!2476 (regTwo!5465 r!15766))) b!921242))

(assert (= (and b!920766 (is-Concat!4309 (regTwo!5465 r!15766))) b!921243))

(assert (= (and b!920766 (is-Star!2476 (regTwo!5465 r!15766))) b!921244))

(assert (= (and b!920766 (is-Union!2476 (regTwo!5465 r!15766))) b!921245))

(declare-fun b!921248 () Bool)

(declare-fun e!599803 () Bool)

(declare-fun tp!286926 () Bool)

(assert (=> b!921248 (= e!599803 tp!286926)))

(declare-fun b!921246 () Bool)

(assert (=> b!921246 (= e!599803 tp_is_empty!4595)))

(declare-fun b!921247 () Bool)

(declare-fun tp!286925 () Bool)

(declare-fun tp!286924 () Bool)

(assert (=> b!921247 (= e!599803 (and tp!286925 tp!286924))))

(declare-fun b!921249 () Bool)

(declare-fun tp!286927 () Bool)

(declare-fun tp!286928 () Bool)

(assert (=> b!921249 (= e!599803 (and tp!286927 tp!286928))))

(assert (=> b!920761 (= tp!286877 e!599803)))

(assert (= (and b!920761 (is-ElementMatch!2476 (regOne!5464 r!15766))) b!921246))

(assert (= (and b!920761 (is-Concat!4309 (regOne!5464 r!15766))) b!921247))

(assert (= (and b!920761 (is-Star!2476 (regOne!5464 r!15766))) b!921248))

(assert (= (and b!920761 (is-Union!2476 (regOne!5464 r!15766))) b!921249))

(declare-fun b!921252 () Bool)

(declare-fun e!599804 () Bool)

(declare-fun tp!286931 () Bool)

(assert (=> b!921252 (= e!599804 tp!286931)))

(declare-fun b!921250 () Bool)

(assert (=> b!921250 (= e!599804 tp_is_empty!4595)))

(declare-fun b!921251 () Bool)

(declare-fun tp!286930 () Bool)

(declare-fun tp!286929 () Bool)

(assert (=> b!921251 (= e!599804 (and tp!286930 tp!286929))))

(declare-fun b!921253 () Bool)

(declare-fun tp!286932 () Bool)

(declare-fun tp!286933 () Bool)

(assert (=> b!921253 (= e!599804 (and tp!286932 tp!286933))))

(assert (=> b!920761 (= tp!286881 e!599804)))

(assert (= (and b!920761 (is-ElementMatch!2476 (regTwo!5464 r!15766))) b!921250))

(assert (= (and b!920761 (is-Concat!4309 (regTwo!5464 r!15766))) b!921251))

(assert (= (and b!920761 (is-Star!2476 (regTwo!5464 r!15766))) b!921252))

(assert (= (and b!920761 (is-Union!2476 (regTwo!5464 r!15766))) b!921253))

(declare-fun b!921256 () Bool)

(declare-fun e!599805 () Bool)

(declare-fun tp!286936 () Bool)

(assert (=> b!921256 (= e!599805 tp!286936)))

(declare-fun b!921254 () Bool)

(assert (=> b!921254 (= e!599805 tp_is_empty!4595)))

(declare-fun b!921255 () Bool)

(declare-fun tp!286935 () Bool)

(declare-fun tp!286934 () Bool)

(assert (=> b!921255 (= e!599805 (and tp!286935 tp!286934))))

(declare-fun b!921257 () Bool)

(declare-fun tp!286937 () Bool)

(declare-fun tp!286938 () Bool)

(assert (=> b!921257 (= e!599805 (and tp!286937 tp!286938))))

(assert (=> b!920767 (= tp!286878 e!599805)))

(assert (= (and b!920767 (is-ElementMatch!2476 (reg!2805 r!15766))) b!921254))

(assert (= (and b!920767 (is-Concat!4309 (reg!2805 r!15766))) b!921255))

(assert (= (and b!920767 (is-Star!2476 (reg!2805 r!15766))) b!921256))

(assert (= (and b!920767 (is-Union!2476 (reg!2805 r!15766))) b!921257))

(push 1)

(assert (not b!921141))

(assert (not d!280410))

(assert (not b!921175))

(assert (not d!280422))

(assert (not bm!55994))

(assert (not b!920906))

(assert (not bm!56009))

(assert (not bm!55990))

(assert (not b!920917))

(assert (not b!921257))

(assert (not d!280430))

(assert (not b!921169))

(assert (not bm!56051))

(assert (not b!921112))

(assert (not bm!56032))

(assert (not bm!55995))

(assert (not b!921129))

(assert (not b!921045))

(assert (not b!920871))

(assert (not b!921046))

(assert (not b!921253))

(assert (not bm!55989))

(assert (not b!921114))

(assert (not d!280444))

(assert (not d!280448))

(assert (not b!920872))

(assert (not b!921245))

(assert (not d!280434))

(assert (not bm!56010))

(assert (not d!280408))

(assert (not bm!56050))

(assert (not b!921138))

(assert (not bm!56048))

(assert (not d!280442))

(assert (not b!921239))

(assert (not b!921132))

(assert (not bm!56038))

(assert (not d!280414))

(assert (not b!921176))

(assert (not b!921252))

(assert (not b!921240))

(assert (not b!921048))

(assert (not d!280402))

(assert (not bm!56054))

(assert (not d!280440))

(assert (not b!921256))

(assert (not d!280392))

(assert (not b!921198))

(assert (not b!921179))

(assert (not d!280390))

(assert (not b!921140))

(assert (not b!921227))

(assert (not b!921174))

(assert (not d!280412))

(assert (not b!921051))

(assert (not b!920860))

(assert (not b!921178))

(assert (not b!921173))

(assert (not d!280396))

(assert (not b!921248))

(assert (not b!921186))

(assert (not b!921251))

(assert (not d!280420))

(assert (not bm!56049))

(assert (not b!921130))

(assert (not b!921241))

(assert (not d!280404))

(assert (not d!280446))

(assert (not b!921188))

(assert (not b!921047))

(assert (not b!920869))

(assert tp_is_empty!4595)

(assert (not bm!55975))

(assert (not b!921255))

(assert (not bm!56053))

(assert (not b!921244))

(assert (not bm!56031))

(assert (not b!920861))

(assert (not b!921243))

(assert (not b!921247))

(assert (not b!920863))

(assert (not b!921050))

(assert (not b!920960))

(assert (not b!921249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

