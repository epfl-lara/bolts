; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73938 () Bool)

(assert start!73938)

(declare-fun res!380985 () Bool)

(declare-fun e!546427 () Bool)

(assert (=> start!73938 (=> (not res!380985) (not e!546427))))

(declare-datatypes ((C!4712 0))(
  ( (C!4713 (val!2604 Int)) )
))
(declare-datatypes ((Regex!2071 0))(
  ( (ElementMatch!2071 (c!134834 C!4712)) (Concat!3802 (regOne!4654 Regex!2071) (regTwo!4654 Regex!2071)) (EmptyExpr!2071) (Star!2071 (reg!2400 Regex!2071)) (EmptyLang!2071) (Union!2071 (regOne!4655 Regex!2071) (regTwo!4655 Regex!2071)) )
))
(declare-fun r!27177 () Regex!2071)

(declare-fun validRegex!624 (Regex!2071) Bool)

(assert (=> start!73938 (= res!380985 (validRegex!624 r!27177))))

(assert (=> start!73938 e!546427))

(declare-fun e!546426 () Bool)

(assert (=> start!73938 e!546426))

(declare-fun tp_is_empty!3865 () Bool)

(assert (=> start!73938 tp_is_empty!3865))

(declare-fun b!828948 () Bool)

(declare-fun res!380984 () Bool)

(assert (=> b!828948 (=> (not res!380984) (not e!546427))))

(get-info :version)

(assert (=> b!828948 (= res!380984 (and (not ((_ is EmptyExpr!2071) r!27177)) (not ((_ is EmptyLang!2071) r!27177)) (not ((_ is ElementMatch!2071) r!27177)) (not ((_ is Star!2071) r!27177)) ((_ is Union!2071) r!27177)))))

(declare-fun b!828949 () Bool)

(declare-fun res!380989 () Bool)

(assert (=> b!828949 (=> (not res!380989) (not e!546427))))

(declare-fun c!13916 () C!4712)

(declare-datatypes ((List!8897 0))(
  ( (Nil!8881) (Cons!8881 (h!14282 C!4712) (t!93189 List!8897)) )
))
(declare-fun contains!1662 (List!8897 C!4712) Bool)

(declare-fun firstChars!42 (Regex!2071) List!8897)

(assert (=> b!828949 (= res!380989 (contains!1662 (firstChars!42 (regTwo!4655 r!27177)) c!13916))))

(declare-fun b!828950 () Bool)

(assert (=> b!828950 (= e!546426 tp_is_empty!3865)))

(declare-fun b!828951 () Bool)

(declare-fun res!380987 () Bool)

(assert (=> b!828951 (=> (not res!380987) (not e!546427))))

(assert (=> b!828951 (= res!380987 (not (contains!1662 (firstChars!42 (regOne!4655 r!27177)) c!13916)))))

(declare-fun b!828952 () Bool)

(declare-fun res!380988 () Bool)

(assert (=> b!828952 (=> (not res!380988) (not e!546427))))

(assert (=> b!828952 (= res!380988 (validRegex!624 (regTwo!4655 r!27177)))))

(declare-fun b!828953 () Bool)

(declare-fun tp!259462 () Bool)

(assert (=> b!828953 (= e!546426 tp!259462)))

(declare-fun b!828954 () Bool)

(declare-fun tp!259464 () Bool)

(declare-fun tp!259461 () Bool)

(assert (=> b!828954 (= e!546426 (and tp!259464 tp!259461))))

(declare-fun b!828955 () Bool)

(declare-fun usedCharacters!164 (Regex!2071) List!8897)

(assert (=> b!828955 (= e!546427 (not (contains!1662 (usedCharacters!164 r!27177) c!13916)))))

(assert (=> b!828955 (contains!1662 (usedCharacters!164 (regTwo!4655 r!27177)) c!13916)))

(declare-datatypes ((Unit!13379 0))(
  ( (Unit!13380) )
))
(declare-fun lt!317635 () Unit!13379)

(declare-fun lemmaUsedCharsContainsAllFirstChars!6 (Regex!2071 C!4712) Unit!13379)

(assert (=> b!828955 (= lt!317635 (lemmaUsedCharsContainsAllFirstChars!6 (regTwo!4655 r!27177) c!13916))))

(declare-fun b!828956 () Bool)

(declare-fun tp!259463 () Bool)

(declare-fun tp!259460 () Bool)

(assert (=> b!828956 (= e!546426 (and tp!259463 tp!259460))))

(declare-fun b!828957 () Bool)

(declare-fun res!380986 () Bool)

(assert (=> b!828957 (=> (not res!380986) (not e!546427))))

(assert (=> b!828957 (= res!380986 (contains!1662 (firstChars!42 r!27177) c!13916))))

(assert (= (and start!73938 res!380985) b!828957))

(assert (= (and b!828957 res!380986) b!828948))

(assert (= (and b!828948 res!380984) b!828951))

(assert (= (and b!828951 res!380987) b!828952))

(assert (= (and b!828952 res!380988) b!828949))

(assert (= (and b!828949 res!380989) b!828955))

(assert (= (and start!73938 ((_ is ElementMatch!2071) r!27177)) b!828950))

(assert (= (and start!73938 ((_ is Concat!3802) r!27177)) b!828956))

(assert (= (and start!73938 ((_ is Star!2071) r!27177)) b!828953))

(assert (= (and start!73938 ((_ is Union!2071) r!27177)) b!828954))

(declare-fun m!1066551 () Bool)

(assert (=> start!73938 m!1066551))

(declare-fun m!1066553 () Bool)

(assert (=> b!828955 m!1066553))

(declare-fun m!1066555 () Bool)

(assert (=> b!828955 m!1066555))

(declare-fun m!1066557 () Bool)

(assert (=> b!828955 m!1066557))

(declare-fun m!1066559 () Bool)

(assert (=> b!828955 m!1066559))

(assert (=> b!828955 m!1066557))

(assert (=> b!828955 m!1066555))

(declare-fun m!1066561 () Bool)

(assert (=> b!828955 m!1066561))

(declare-fun m!1066563 () Bool)

(assert (=> b!828951 m!1066563))

(assert (=> b!828951 m!1066563))

(declare-fun m!1066565 () Bool)

(assert (=> b!828951 m!1066565))

(declare-fun m!1066567 () Bool)

(assert (=> b!828957 m!1066567))

(assert (=> b!828957 m!1066567))

(declare-fun m!1066569 () Bool)

(assert (=> b!828957 m!1066569))

(declare-fun m!1066571 () Bool)

(assert (=> b!828949 m!1066571))

(assert (=> b!828949 m!1066571))

(declare-fun m!1066573 () Bool)

(assert (=> b!828949 m!1066573))

(declare-fun m!1066575 () Bool)

(assert (=> b!828952 m!1066575))

(check-sat (not b!828954) (not b!828955) (not b!828952) tp_is_empty!3865 (not start!73938) (not b!828956) (not b!828953) (not b!828951) (not b!828957) (not b!828949))
(check-sat)
(get-model)

(declare-fun d!259825 () Bool)

(declare-fun lt!317638 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1309 (List!8897) (InoxSet C!4712))

(assert (=> d!259825 (= lt!317638 (select (content!1309 (firstChars!42 (regOne!4655 r!27177))) c!13916))))

(declare-fun e!546441 () Bool)

(assert (=> d!259825 (= lt!317638 e!546441)))

(declare-fun res!380995 () Bool)

(assert (=> d!259825 (=> (not res!380995) (not e!546441))))

(assert (=> d!259825 (= res!380995 ((_ is Cons!8881) (firstChars!42 (regOne!4655 r!27177))))))

(assert (=> d!259825 (= (contains!1662 (firstChars!42 (regOne!4655 r!27177)) c!13916) lt!317638)))

(declare-fun b!828978 () Bool)

(declare-fun e!546440 () Bool)

(assert (=> b!828978 (= e!546441 e!546440)))

(declare-fun res!380994 () Bool)

(assert (=> b!828978 (=> res!380994 e!546440)))

(assert (=> b!828978 (= res!380994 (= (h!14282 (firstChars!42 (regOne!4655 r!27177))) c!13916))))

(declare-fun b!828979 () Bool)

(assert (=> b!828979 (= e!546440 (contains!1662 (t!93189 (firstChars!42 (regOne!4655 r!27177))) c!13916))))

(assert (= (and d!259825 res!380995) b!828978))

(assert (= (and b!828978 (not res!380994)) b!828979))

(assert (=> d!259825 m!1066563))

(declare-fun m!1066577 () Bool)

(assert (=> d!259825 m!1066577))

(declare-fun m!1066579 () Bool)

(assert (=> d!259825 m!1066579))

(declare-fun m!1066581 () Bool)

(assert (=> b!828979 m!1066581))

(assert (=> b!828951 d!259825))

(declare-fun d!259827 () Bool)

(declare-fun c!134866 () Bool)

(assert (=> d!259827 (= c!134866 (or ((_ is EmptyExpr!2071) (regOne!4655 r!27177)) ((_ is EmptyLang!2071) (regOne!4655 r!27177))))))

(declare-fun e!546470 () List!8897)

(assert (=> d!259827 (= (firstChars!42 (regOne!4655 r!27177)) e!546470)))

(declare-fun b!829024 () Bool)

(assert (=> b!829024 (= e!546470 Nil!8881)))

(declare-fun bm!48557 () Bool)

(declare-fun call!48566 () List!8897)

(declare-fun call!48565 () List!8897)

(assert (=> bm!48557 (= call!48566 call!48565)))

(declare-fun b!829025 () Bool)

(declare-fun e!546468 () List!8897)

(declare-fun e!546472 () List!8897)

(assert (=> b!829025 (= e!546468 e!546472)))

(declare-fun c!134864 () Bool)

(assert (=> b!829025 (= c!134864 ((_ is Union!2071) (regOne!4655 r!27177)))))

(declare-fun bm!48558 () Bool)

(declare-fun call!48564 () List!8897)

(assert (=> bm!48558 (= call!48564 (firstChars!42 (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))))))

(declare-fun b!829026 () Bool)

(declare-fun e!546471 () List!8897)

(assert (=> b!829026 (= e!546471 (Cons!8881 (c!134834 (regOne!4655 r!27177)) Nil!8881))))

(declare-fun b!829027 () Bool)

(assert (=> b!829027 (= e!546468 call!48565)))

(declare-fun bm!48559 () Bool)

(declare-fun call!48562 () List!8897)

(assert (=> bm!48559 (= call!48562 call!48566)))

(declare-fun b!829028 () Bool)

(declare-fun e!546469 () List!8897)

(declare-fun call!48563 () List!8897)

(assert (=> b!829028 (= e!546469 call!48563)))

(declare-fun b!829029 () Bool)

(declare-fun c!134865 () Bool)

(declare-fun nullable!521 (Regex!2071) Bool)

(assert (=> b!829029 (= c!134865 (nullable!521 (regOne!4654 (regOne!4655 r!27177))))))

(assert (=> b!829029 (= e!546472 e!546469)))

(declare-fun b!829030 () Bool)

(declare-fun c!134862 () Bool)

(assert (=> b!829030 (= c!134862 ((_ is Star!2071) (regOne!4655 r!27177)))))

(assert (=> b!829030 (= e!546471 e!546468)))

(declare-fun bm!48560 () Bool)

(assert (=> bm!48560 (= call!48565 (firstChars!42 (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))))))

(declare-fun b!829031 () Bool)

(assert (=> b!829031 (= e!546470 e!546471)))

(declare-fun c!134863 () Bool)

(assert (=> b!829031 (= c!134863 ((_ is ElementMatch!2071) (regOne!4655 r!27177)))))

(declare-fun bm!48561 () Bool)

(declare-fun ++!2298 (List!8897 List!8897) List!8897)

(assert (=> bm!48561 (= call!48563 (++!2298 (ite c!134864 call!48564 call!48562) (ite c!134864 call!48566 call!48564)))))

(declare-fun b!829032 () Bool)

(assert (=> b!829032 (= e!546472 call!48563)))

(declare-fun b!829033 () Bool)

(assert (=> b!829033 (= e!546469 call!48562)))

(assert (= (and d!259827 c!134866) b!829024))

(assert (= (and d!259827 (not c!134866)) b!829031))

(assert (= (and b!829031 c!134863) b!829026))

(assert (= (and b!829031 (not c!134863)) b!829030))

(assert (= (and b!829030 c!134862) b!829027))

(assert (= (and b!829030 (not c!134862)) b!829025))

(assert (= (and b!829025 c!134864) b!829032))

(assert (= (and b!829025 (not c!134864)) b!829029))

(assert (= (and b!829029 c!134865) b!829028))

(assert (= (and b!829029 (not c!134865)) b!829033))

(assert (= (or b!829028 b!829033) bm!48559))

(assert (= (or b!829032 bm!48559) bm!48557))

(assert (= (or b!829032 b!829028) bm!48558))

(assert (= (or b!829032 b!829028) bm!48561))

(assert (= (or b!829027 bm!48557) bm!48560))

(declare-fun m!1066609 () Bool)

(assert (=> bm!48558 m!1066609))

(declare-fun m!1066611 () Bool)

(assert (=> b!829029 m!1066611))

(declare-fun m!1066613 () Bool)

(assert (=> bm!48560 m!1066613))

(declare-fun m!1066615 () Bool)

(assert (=> bm!48561 m!1066615))

(assert (=> b!828951 d!259827))

(declare-fun d!259839 () Bool)

(declare-fun lt!317646 () Bool)

(assert (=> d!259839 (= lt!317646 (select (content!1309 (firstChars!42 r!27177)) c!13916))))

(declare-fun e!546488 () Bool)

(assert (=> d!259839 (= lt!317646 e!546488)))

(declare-fun res!381015 () Bool)

(assert (=> d!259839 (=> (not res!381015) (not e!546488))))

(assert (=> d!259839 (= res!381015 ((_ is Cons!8881) (firstChars!42 r!27177)))))

(assert (=> d!259839 (= (contains!1662 (firstChars!42 r!27177) c!13916) lt!317646)))

(declare-fun b!829052 () Bool)

(declare-fun e!546487 () Bool)

(assert (=> b!829052 (= e!546488 e!546487)))

(declare-fun res!381014 () Bool)

(assert (=> b!829052 (=> res!381014 e!546487)))

(assert (=> b!829052 (= res!381014 (= (h!14282 (firstChars!42 r!27177)) c!13916))))

(declare-fun b!829053 () Bool)

(assert (=> b!829053 (= e!546487 (contains!1662 (t!93189 (firstChars!42 r!27177)) c!13916))))

(assert (= (and d!259839 res!381015) b!829052))

(assert (= (and b!829052 (not res!381014)) b!829053))

(assert (=> d!259839 m!1066567))

(declare-fun m!1066617 () Bool)

(assert (=> d!259839 m!1066617))

(declare-fun m!1066619 () Bool)

(assert (=> d!259839 m!1066619))

(declare-fun m!1066621 () Bool)

(assert (=> b!829053 m!1066621))

(assert (=> b!828957 d!259839))

(declare-fun d!259841 () Bool)

(declare-fun c!134875 () Bool)

(assert (=> d!259841 (= c!134875 (or ((_ is EmptyExpr!2071) r!27177) ((_ is EmptyLang!2071) r!27177)))))

(declare-fun e!546491 () List!8897)

(assert (=> d!259841 (= (firstChars!42 r!27177) e!546491)))

(declare-fun b!829054 () Bool)

(assert (=> b!829054 (= e!546491 Nil!8881)))

(declare-fun bm!48566 () Bool)

(declare-fun call!48577 () List!8897)

(declare-fun call!48576 () List!8897)

(assert (=> bm!48566 (= call!48577 call!48576)))

(declare-fun b!829055 () Bool)

(declare-fun e!546489 () List!8897)

(declare-fun e!546493 () List!8897)

(assert (=> b!829055 (= e!546489 e!546493)))

(declare-fun c!134873 () Bool)

(assert (=> b!829055 (= c!134873 ((_ is Union!2071) r!27177))))

(declare-fun bm!48567 () Bool)

(declare-fun call!48575 () List!8897)

(assert (=> bm!48567 (= call!48575 (firstChars!42 (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))))))

(declare-fun b!829056 () Bool)

(declare-fun e!546492 () List!8897)

(assert (=> b!829056 (= e!546492 (Cons!8881 (c!134834 r!27177) Nil!8881))))

(declare-fun b!829057 () Bool)

(assert (=> b!829057 (= e!546489 call!48576)))

(declare-fun bm!48568 () Bool)

(declare-fun call!48573 () List!8897)

(assert (=> bm!48568 (= call!48573 call!48577)))

(declare-fun b!829058 () Bool)

(declare-fun e!546490 () List!8897)

(declare-fun call!48574 () List!8897)

(assert (=> b!829058 (= e!546490 call!48574)))

(declare-fun b!829059 () Bool)

(declare-fun c!134874 () Bool)

(assert (=> b!829059 (= c!134874 (nullable!521 (regOne!4654 r!27177)))))

(assert (=> b!829059 (= e!546493 e!546490)))

(declare-fun b!829060 () Bool)

(declare-fun c!134871 () Bool)

(assert (=> b!829060 (= c!134871 ((_ is Star!2071) r!27177))))

(assert (=> b!829060 (= e!546492 e!546489)))

(declare-fun bm!48569 () Bool)

(assert (=> bm!48569 (= call!48576 (firstChars!42 (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))))))

(declare-fun b!829061 () Bool)

(assert (=> b!829061 (= e!546491 e!546492)))

(declare-fun c!134872 () Bool)

(assert (=> b!829061 (= c!134872 ((_ is ElementMatch!2071) r!27177))))

(declare-fun bm!48570 () Bool)

(assert (=> bm!48570 (= call!48574 (++!2298 (ite c!134873 call!48575 call!48573) (ite c!134873 call!48577 call!48575)))))

(declare-fun b!829062 () Bool)

(assert (=> b!829062 (= e!546493 call!48574)))

(declare-fun b!829063 () Bool)

(assert (=> b!829063 (= e!546490 call!48573)))

(assert (= (and d!259841 c!134875) b!829054))

(assert (= (and d!259841 (not c!134875)) b!829061))

(assert (= (and b!829061 c!134872) b!829056))

(assert (= (and b!829061 (not c!134872)) b!829060))

(assert (= (and b!829060 c!134871) b!829057))

(assert (= (and b!829060 (not c!134871)) b!829055))

(assert (= (and b!829055 c!134873) b!829062))

(assert (= (and b!829055 (not c!134873)) b!829059))

(assert (= (and b!829059 c!134874) b!829058))

(assert (= (and b!829059 (not c!134874)) b!829063))

(assert (= (or b!829058 b!829063) bm!48568))

(assert (= (or b!829062 bm!48568) bm!48566))

(assert (= (or b!829062 b!829058) bm!48567))

(assert (= (or b!829062 b!829058) bm!48570))

(assert (= (or b!829057 bm!48566) bm!48569))

(declare-fun m!1066623 () Bool)

(assert (=> bm!48567 m!1066623))

(declare-fun m!1066625 () Bool)

(assert (=> b!829059 m!1066625))

(declare-fun m!1066627 () Bool)

(assert (=> bm!48569 m!1066627))

(declare-fun m!1066629 () Bool)

(assert (=> bm!48570 m!1066629))

(assert (=> b!828957 d!259841))

(declare-fun b!829122 () Bool)

(declare-fun e!546535 () Bool)

(declare-fun call!48600 () Bool)

(assert (=> b!829122 (= e!546535 call!48600)))

(declare-fun b!829123 () Bool)

(declare-fun res!381042 () Bool)

(declare-fun e!546536 () Bool)

(assert (=> b!829123 (=> (not res!381042) (not e!546536))))

(assert (=> b!829123 (= res!381042 call!48600)))

(declare-fun e!546538 () Bool)

(assert (=> b!829123 (= e!546538 e!546536)))

(declare-fun b!829124 () Bool)

(declare-fun e!546534 () Bool)

(declare-fun e!546539 () Bool)

(assert (=> b!829124 (= e!546534 e!546539)))

(declare-fun res!381038 () Bool)

(assert (=> b!829124 (= res!381038 (not (nullable!521 (reg!2400 (regTwo!4655 r!27177)))))))

(assert (=> b!829124 (=> (not res!381038) (not e!546539))))

(declare-fun bm!48593 () Bool)

(declare-fun call!48598 () Bool)

(declare-fun c!134894 () Bool)

(assert (=> bm!48593 (= call!48598 (validRegex!624 (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))

(declare-fun bm!48594 () Bool)

(declare-fun call!48599 () Bool)

(assert (=> bm!48594 (= call!48600 call!48599)))

(declare-fun b!829125 () Bool)

(assert (=> b!829125 (= e!546539 call!48599)))

(declare-fun b!829126 () Bool)

(declare-fun res!381041 () Bool)

(declare-fun e!546537 () Bool)

(assert (=> b!829126 (=> res!381041 e!546537)))

(assert (=> b!829126 (= res!381041 (not ((_ is Concat!3802) (regTwo!4655 r!27177))))))

(assert (=> b!829126 (= e!546538 e!546537)))

(declare-fun b!829127 () Bool)

(assert (=> b!829127 (= e!546534 e!546538)))

(assert (=> b!829127 (= c!134894 ((_ is Union!2071) (regTwo!4655 r!27177)))))

(declare-fun b!829128 () Bool)

(assert (=> b!829128 (= e!546537 e!546535)))

(declare-fun res!381039 () Bool)

(assert (=> b!829128 (=> (not res!381039) (not e!546535))))

(assert (=> b!829128 (= res!381039 call!48598)))

(declare-fun b!829129 () Bool)

(declare-fun e!546540 () Bool)

(assert (=> b!829129 (= e!546540 e!546534)))

(declare-fun c!134895 () Bool)

(assert (=> b!829129 (= c!134895 ((_ is Star!2071) (regTwo!4655 r!27177)))))

(declare-fun d!259843 () Bool)

(declare-fun res!381040 () Bool)

(assert (=> d!259843 (=> res!381040 e!546540)))

(assert (=> d!259843 (= res!381040 ((_ is ElementMatch!2071) (regTwo!4655 r!27177)))))

(assert (=> d!259843 (= (validRegex!624 (regTwo!4655 r!27177)) e!546540)))

(declare-fun b!829130 () Bool)

(assert (=> b!829130 (= e!546536 call!48598)))

(declare-fun bm!48595 () Bool)

(assert (=> bm!48595 (= call!48599 (validRegex!624 (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(assert (= (and d!259843 (not res!381040)) b!829129))

(assert (= (and b!829129 c!134895) b!829124))

(assert (= (and b!829129 (not c!134895)) b!829127))

(assert (= (and b!829124 res!381038) b!829125))

(assert (= (and b!829127 c!134894) b!829123))

(assert (= (and b!829127 (not c!134894)) b!829126))

(assert (= (and b!829123 res!381042) b!829130))

(assert (= (and b!829126 (not res!381041)) b!829128))

(assert (= (and b!829128 res!381039) b!829122))

(assert (= (or b!829123 b!829122) bm!48594))

(assert (= (or b!829130 b!829128) bm!48593))

(assert (= (or b!829125 bm!48594) bm!48595))

(declare-fun m!1066649 () Bool)

(assert (=> b!829124 m!1066649))

(declare-fun m!1066651 () Bool)

(assert (=> bm!48593 m!1066651))

(declare-fun m!1066653 () Bool)

(assert (=> bm!48595 m!1066653))

(assert (=> b!828952 d!259843))

(declare-fun b!829131 () Bool)

(declare-fun e!546542 () Bool)

(declare-fun call!48605 () Bool)

(assert (=> b!829131 (= e!546542 call!48605)))

(declare-fun b!829132 () Bool)

(declare-fun res!381047 () Bool)

(declare-fun e!546543 () Bool)

(assert (=> b!829132 (=> (not res!381047) (not e!546543))))

(assert (=> b!829132 (= res!381047 call!48605)))

(declare-fun e!546545 () Bool)

(assert (=> b!829132 (= e!546545 e!546543)))

(declare-fun b!829133 () Bool)

(declare-fun e!546541 () Bool)

(declare-fun e!546546 () Bool)

(assert (=> b!829133 (= e!546541 e!546546)))

(declare-fun res!381043 () Bool)

(assert (=> b!829133 (= res!381043 (not (nullable!521 (reg!2400 r!27177))))))

(assert (=> b!829133 (=> (not res!381043) (not e!546546))))

(declare-fun bm!48598 () Bool)

(declare-fun call!48603 () Bool)

(declare-fun c!134896 () Bool)

(assert (=> bm!48598 (= call!48603 (validRegex!624 (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))

(declare-fun bm!48599 () Bool)

(declare-fun call!48604 () Bool)

(assert (=> bm!48599 (= call!48605 call!48604)))

(declare-fun b!829134 () Bool)

(assert (=> b!829134 (= e!546546 call!48604)))

(declare-fun b!829135 () Bool)

(declare-fun res!381046 () Bool)

(declare-fun e!546544 () Bool)

(assert (=> b!829135 (=> res!381046 e!546544)))

(assert (=> b!829135 (= res!381046 (not ((_ is Concat!3802) r!27177)))))

(assert (=> b!829135 (= e!546545 e!546544)))

(declare-fun b!829136 () Bool)

(assert (=> b!829136 (= e!546541 e!546545)))

(assert (=> b!829136 (= c!134896 ((_ is Union!2071) r!27177))))

(declare-fun b!829137 () Bool)

(assert (=> b!829137 (= e!546544 e!546542)))

(declare-fun res!381044 () Bool)

(assert (=> b!829137 (=> (not res!381044) (not e!546542))))

(assert (=> b!829137 (= res!381044 call!48603)))

(declare-fun b!829138 () Bool)

(declare-fun e!546547 () Bool)

(assert (=> b!829138 (= e!546547 e!546541)))

(declare-fun c!134897 () Bool)

(assert (=> b!829138 (= c!134897 ((_ is Star!2071) r!27177))))

(declare-fun d!259851 () Bool)

(declare-fun res!381045 () Bool)

(assert (=> d!259851 (=> res!381045 e!546547)))

(assert (=> d!259851 (= res!381045 ((_ is ElementMatch!2071) r!27177))))

(assert (=> d!259851 (= (validRegex!624 r!27177) e!546547)))

(declare-fun b!829139 () Bool)

(assert (=> b!829139 (= e!546543 call!48603)))

(declare-fun bm!48600 () Bool)

(assert (=> bm!48600 (= call!48604 (validRegex!624 (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(assert (= (and d!259851 (not res!381045)) b!829138))

(assert (= (and b!829138 c!134897) b!829133))

(assert (= (and b!829138 (not c!134897)) b!829136))

(assert (= (and b!829133 res!381043) b!829134))

(assert (= (and b!829136 c!134896) b!829132))

(assert (= (and b!829136 (not c!134896)) b!829135))

(assert (= (and b!829132 res!381047) b!829139))

(assert (= (and b!829135 (not res!381046)) b!829137))

(assert (= (and b!829137 res!381044) b!829131))

(assert (= (or b!829132 b!829131) bm!48599))

(assert (= (or b!829139 b!829137) bm!48598))

(assert (= (or b!829134 bm!48599) bm!48600))

(declare-fun m!1066655 () Bool)

(assert (=> b!829133 m!1066655))

(declare-fun m!1066657 () Bool)

(assert (=> bm!48598 m!1066657))

(declare-fun m!1066659 () Bool)

(assert (=> bm!48600 m!1066659))

(assert (=> start!73938 d!259851))

(declare-fun d!259853 () Bool)

(declare-fun lt!317648 () Bool)

(assert (=> d!259853 (= lt!317648 (select (content!1309 (firstChars!42 (regTwo!4655 r!27177))) c!13916))))

(declare-fun e!546549 () Bool)

(assert (=> d!259853 (= lt!317648 e!546549)))

(declare-fun res!381049 () Bool)

(assert (=> d!259853 (=> (not res!381049) (not e!546549))))

(assert (=> d!259853 (= res!381049 ((_ is Cons!8881) (firstChars!42 (regTwo!4655 r!27177))))))

(assert (=> d!259853 (= (contains!1662 (firstChars!42 (regTwo!4655 r!27177)) c!13916) lt!317648)))

(declare-fun b!829140 () Bool)

(declare-fun e!546548 () Bool)

(assert (=> b!829140 (= e!546549 e!546548)))

(declare-fun res!381048 () Bool)

(assert (=> b!829140 (=> res!381048 e!546548)))

(assert (=> b!829140 (= res!381048 (= (h!14282 (firstChars!42 (regTwo!4655 r!27177))) c!13916))))

(declare-fun b!829141 () Bool)

(assert (=> b!829141 (= e!546548 (contains!1662 (t!93189 (firstChars!42 (regTwo!4655 r!27177))) c!13916))))

(assert (= (and d!259853 res!381049) b!829140))

(assert (= (and b!829140 (not res!381048)) b!829141))

(assert (=> d!259853 m!1066571))

(declare-fun m!1066661 () Bool)

(assert (=> d!259853 m!1066661))

(declare-fun m!1066663 () Bool)

(assert (=> d!259853 m!1066663))

(declare-fun m!1066665 () Bool)

(assert (=> b!829141 m!1066665))

(assert (=> b!828949 d!259853))

(declare-fun d!259855 () Bool)

(declare-fun c!134902 () Bool)

(assert (=> d!259855 (= c!134902 (or ((_ is EmptyExpr!2071) (regTwo!4655 r!27177)) ((_ is EmptyLang!2071) (regTwo!4655 r!27177))))))

(declare-fun e!546552 () List!8897)

(assert (=> d!259855 (= (firstChars!42 (regTwo!4655 r!27177)) e!546552)))

(declare-fun b!829142 () Bool)

(assert (=> b!829142 (= e!546552 Nil!8881)))

(declare-fun bm!48601 () Bool)

(declare-fun call!48610 () List!8897)

(declare-fun call!48609 () List!8897)

(assert (=> bm!48601 (= call!48610 call!48609)))

(declare-fun b!829143 () Bool)

(declare-fun e!546550 () List!8897)

(declare-fun e!546554 () List!8897)

(assert (=> b!829143 (= e!546550 e!546554)))

(declare-fun c!134900 () Bool)

(assert (=> b!829143 (= c!134900 ((_ is Union!2071) (regTwo!4655 r!27177)))))

(declare-fun bm!48602 () Bool)

(declare-fun call!48608 () List!8897)

(assert (=> bm!48602 (= call!48608 (firstChars!42 (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))))))

(declare-fun b!829144 () Bool)

(declare-fun e!546553 () List!8897)

(assert (=> b!829144 (= e!546553 (Cons!8881 (c!134834 (regTwo!4655 r!27177)) Nil!8881))))

(declare-fun b!829145 () Bool)

(assert (=> b!829145 (= e!546550 call!48609)))

(declare-fun bm!48603 () Bool)

(declare-fun call!48606 () List!8897)

(assert (=> bm!48603 (= call!48606 call!48610)))

(declare-fun b!829146 () Bool)

(declare-fun e!546551 () List!8897)

(declare-fun call!48607 () List!8897)

(assert (=> b!829146 (= e!546551 call!48607)))

(declare-fun b!829147 () Bool)

(declare-fun c!134901 () Bool)

(assert (=> b!829147 (= c!134901 (nullable!521 (regOne!4654 (regTwo!4655 r!27177))))))

(assert (=> b!829147 (= e!546554 e!546551)))

(declare-fun b!829148 () Bool)

(declare-fun c!134898 () Bool)

(assert (=> b!829148 (= c!134898 ((_ is Star!2071) (regTwo!4655 r!27177)))))

(assert (=> b!829148 (= e!546553 e!546550)))

(declare-fun bm!48604 () Bool)

(assert (=> bm!48604 (= call!48609 (firstChars!42 (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))))))

(declare-fun b!829149 () Bool)

(assert (=> b!829149 (= e!546552 e!546553)))

(declare-fun c!134899 () Bool)

(assert (=> b!829149 (= c!134899 ((_ is ElementMatch!2071) (regTwo!4655 r!27177)))))

(declare-fun bm!48605 () Bool)

(assert (=> bm!48605 (= call!48607 (++!2298 (ite c!134900 call!48608 call!48606) (ite c!134900 call!48610 call!48608)))))

(declare-fun b!829150 () Bool)

(assert (=> b!829150 (= e!546554 call!48607)))

(declare-fun b!829151 () Bool)

(assert (=> b!829151 (= e!546551 call!48606)))

(assert (= (and d!259855 c!134902) b!829142))

(assert (= (and d!259855 (not c!134902)) b!829149))

(assert (= (and b!829149 c!134899) b!829144))

(assert (= (and b!829149 (not c!134899)) b!829148))

(assert (= (and b!829148 c!134898) b!829145))

(assert (= (and b!829148 (not c!134898)) b!829143))

(assert (= (and b!829143 c!134900) b!829150))

(assert (= (and b!829143 (not c!134900)) b!829147))

(assert (= (and b!829147 c!134901) b!829146))

(assert (= (and b!829147 (not c!134901)) b!829151))

(assert (= (or b!829146 b!829151) bm!48603))

(assert (= (or b!829150 bm!48603) bm!48601))

(assert (= (or b!829150 b!829146) bm!48602))

(assert (= (or b!829150 b!829146) bm!48605))

(assert (= (or b!829145 bm!48601) bm!48604))

(declare-fun m!1066667 () Bool)

(assert (=> bm!48602 m!1066667))

(declare-fun m!1066669 () Bool)

(assert (=> b!829147 m!1066669))

(declare-fun m!1066671 () Bool)

(assert (=> bm!48604 m!1066671))

(declare-fun m!1066673 () Bool)

(assert (=> bm!48605 m!1066673))

(assert (=> b!828949 d!259855))

(declare-fun b!829232 () Bool)

(declare-fun e!546589 () List!8897)

(assert (=> b!829232 (= e!546589 (Cons!8881 (c!134834 r!27177) Nil!8881))))

(declare-fun c!134926 () Bool)

(declare-fun call!48634 () List!8897)

(declare-fun c!134927 () Bool)

(declare-fun bm!48629 () Bool)

(assert (=> bm!48629 (= call!48634 (usedCharacters!164 (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(declare-fun b!829233 () Bool)

(declare-fun e!546590 () List!8897)

(assert (=> b!829233 (= e!546590 Nil!8881)))

(declare-fun d!259857 () Bool)

(declare-fun c!134928 () Bool)

(assert (=> d!259857 (= c!134928 (or ((_ is EmptyExpr!2071) r!27177) ((_ is EmptyLang!2071) r!27177)))))

(assert (=> d!259857 (= (usedCharacters!164 r!27177) e!546590)))

(declare-fun b!829234 () Bool)

(declare-fun e!546591 () List!8897)

(declare-fun call!48637 () List!8897)

(assert (=> b!829234 (= e!546591 call!48637)))

(declare-fun call!48635 () List!8897)

(declare-fun bm!48630 () Bool)

(declare-fun call!48636 () List!8897)

(assert (=> bm!48630 (= call!48637 (++!2298 (ite c!134927 call!48635 call!48636) (ite c!134927 call!48636 call!48635)))))

(declare-fun b!829235 () Bool)

(assert (=> b!829235 (= e!546590 e!546589)))

(declare-fun c!134929 () Bool)

(assert (=> b!829235 (= c!134929 ((_ is ElementMatch!2071) r!27177))))

(declare-fun b!829236 () Bool)

(assert (=> b!829236 (= e!546591 call!48637)))

(declare-fun bm!48631 () Bool)

(assert (=> bm!48631 (= call!48635 call!48634)))

(declare-fun b!829237 () Bool)

(declare-fun e!546592 () List!8897)

(assert (=> b!829237 (= e!546592 call!48634)))

(declare-fun b!829238 () Bool)

(assert (=> b!829238 (= c!134926 ((_ is Star!2071) r!27177))))

(assert (=> b!829238 (= e!546589 e!546592)))

(declare-fun bm!48632 () Bool)

(assert (=> bm!48632 (= call!48636 (usedCharacters!164 (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))

(declare-fun b!829239 () Bool)

(assert (=> b!829239 (= e!546592 e!546591)))

(assert (=> b!829239 (= c!134927 ((_ is Union!2071) r!27177))))

(assert (= (and d!259857 c!134928) b!829233))

(assert (= (and d!259857 (not c!134928)) b!829235))

(assert (= (and b!829235 c!134929) b!829232))

(assert (= (and b!829235 (not c!134929)) b!829238))

(assert (= (and b!829238 c!134926) b!829237))

(assert (= (and b!829238 (not c!134926)) b!829239))

(assert (= (and b!829239 c!134927) b!829234))

(assert (= (and b!829239 (not c!134927)) b!829236))

(assert (= (or b!829234 b!829236) bm!48632))

(assert (= (or b!829234 b!829236) bm!48631))

(assert (= (or b!829234 b!829236) bm!48630))

(assert (= (or b!829237 bm!48631) bm!48629))

(declare-fun m!1066711 () Bool)

(assert (=> bm!48629 m!1066711))

(declare-fun m!1066713 () Bool)

(assert (=> bm!48630 m!1066713))

(declare-fun m!1066715 () Bool)

(assert (=> bm!48632 m!1066715))

(assert (=> b!828955 d!259857))

(declare-fun d!259867 () Bool)

(assert (=> d!259867 (contains!1662 (usedCharacters!164 (regTwo!4655 r!27177)) c!13916)))

(declare-fun lt!317653 () Unit!13379)

(declare-fun choose!4934 (Regex!2071 C!4712) Unit!13379)

(assert (=> d!259867 (= lt!317653 (choose!4934 (regTwo!4655 r!27177) c!13916))))

(assert (=> d!259867 (validRegex!624 (regTwo!4655 r!27177))))

(assert (=> d!259867 (= (lemmaUsedCharsContainsAllFirstChars!6 (regTwo!4655 r!27177) c!13916) lt!317653)))

(declare-fun bs!229625 () Bool)

(assert (= bs!229625 d!259867))

(assert (=> bs!229625 m!1066555))

(assert (=> bs!229625 m!1066555))

(assert (=> bs!229625 m!1066561))

(declare-fun m!1066717 () Bool)

(assert (=> bs!229625 m!1066717))

(assert (=> bs!229625 m!1066575))

(assert (=> b!828955 d!259867))

(declare-fun b!829240 () Bool)

(declare-fun e!546593 () List!8897)

(assert (=> b!829240 (= e!546593 (Cons!8881 (c!134834 (regTwo!4655 r!27177)) Nil!8881))))

(declare-fun bm!48633 () Bool)

(declare-fun c!134932 () Bool)

(declare-fun call!48638 () List!8897)

(declare-fun c!134931 () Bool)

(assert (=> bm!48633 (= call!48638 (usedCharacters!164 (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(declare-fun b!829241 () Bool)

(declare-fun e!546594 () List!8897)

(assert (=> b!829241 (= e!546594 Nil!8881)))

(declare-fun d!259869 () Bool)

(declare-fun c!134933 () Bool)

(assert (=> d!259869 (= c!134933 (or ((_ is EmptyExpr!2071) (regTwo!4655 r!27177)) ((_ is EmptyLang!2071) (regTwo!4655 r!27177))))))

(assert (=> d!259869 (= (usedCharacters!164 (regTwo!4655 r!27177)) e!546594)))

(declare-fun b!829242 () Bool)

(declare-fun e!546595 () List!8897)

(declare-fun call!48641 () List!8897)

(assert (=> b!829242 (= e!546595 call!48641)))

(declare-fun bm!48634 () Bool)

(declare-fun call!48640 () List!8897)

(declare-fun call!48639 () List!8897)

(assert (=> bm!48634 (= call!48641 (++!2298 (ite c!134932 call!48639 call!48640) (ite c!134932 call!48640 call!48639)))))

(declare-fun b!829243 () Bool)

(assert (=> b!829243 (= e!546594 e!546593)))

(declare-fun c!134934 () Bool)

(assert (=> b!829243 (= c!134934 ((_ is ElementMatch!2071) (regTwo!4655 r!27177)))))

(declare-fun b!829244 () Bool)

(assert (=> b!829244 (= e!546595 call!48641)))

(declare-fun bm!48635 () Bool)

(assert (=> bm!48635 (= call!48639 call!48638)))

(declare-fun b!829245 () Bool)

(declare-fun e!546596 () List!8897)

(assert (=> b!829245 (= e!546596 call!48638)))

(declare-fun b!829246 () Bool)

(assert (=> b!829246 (= c!134931 ((_ is Star!2071) (regTwo!4655 r!27177)))))

(assert (=> b!829246 (= e!546593 e!546596)))

(declare-fun bm!48636 () Bool)

(assert (=> bm!48636 (= call!48640 (usedCharacters!164 (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))

(declare-fun b!829247 () Bool)

(assert (=> b!829247 (= e!546596 e!546595)))

(assert (=> b!829247 (= c!134932 ((_ is Union!2071) (regTwo!4655 r!27177)))))

(assert (= (and d!259869 c!134933) b!829241))

(assert (= (and d!259869 (not c!134933)) b!829243))

(assert (= (and b!829243 c!134934) b!829240))

(assert (= (and b!829243 (not c!134934)) b!829246))

(assert (= (and b!829246 c!134931) b!829245))

(assert (= (and b!829246 (not c!134931)) b!829247))

(assert (= (and b!829247 c!134932) b!829242))

(assert (= (and b!829247 (not c!134932)) b!829244))

(assert (= (or b!829242 b!829244) bm!48636))

(assert (= (or b!829242 b!829244) bm!48635))

(assert (= (or b!829242 b!829244) bm!48634))

(assert (= (or b!829245 bm!48635) bm!48633))

(declare-fun m!1066719 () Bool)

(assert (=> bm!48633 m!1066719))

(declare-fun m!1066721 () Bool)

(assert (=> bm!48634 m!1066721))

(declare-fun m!1066723 () Bool)

(assert (=> bm!48636 m!1066723))

(assert (=> b!828955 d!259869))

(declare-fun d!259871 () Bool)

(declare-fun lt!317654 () Bool)

(assert (=> d!259871 (= lt!317654 (select (content!1309 (usedCharacters!164 (regTwo!4655 r!27177))) c!13916))))

(declare-fun e!546598 () Bool)

(assert (=> d!259871 (= lt!317654 e!546598)))

(declare-fun res!381055 () Bool)

(assert (=> d!259871 (=> (not res!381055) (not e!546598))))

(assert (=> d!259871 (= res!381055 ((_ is Cons!8881) (usedCharacters!164 (regTwo!4655 r!27177))))))

(assert (=> d!259871 (= (contains!1662 (usedCharacters!164 (regTwo!4655 r!27177)) c!13916) lt!317654)))

(declare-fun b!829248 () Bool)

(declare-fun e!546597 () Bool)

(assert (=> b!829248 (= e!546598 e!546597)))

(declare-fun res!381054 () Bool)

(assert (=> b!829248 (=> res!381054 e!546597)))

(assert (=> b!829248 (= res!381054 (= (h!14282 (usedCharacters!164 (regTwo!4655 r!27177))) c!13916))))

(declare-fun b!829249 () Bool)

(assert (=> b!829249 (= e!546597 (contains!1662 (t!93189 (usedCharacters!164 (regTwo!4655 r!27177))) c!13916))))

(assert (= (and d!259871 res!381055) b!829248))

(assert (= (and b!829248 (not res!381054)) b!829249))

(assert (=> d!259871 m!1066555))

(declare-fun m!1066725 () Bool)

(assert (=> d!259871 m!1066725))

(declare-fun m!1066727 () Bool)

(assert (=> d!259871 m!1066727))

(declare-fun m!1066729 () Bool)

(assert (=> b!829249 m!1066729))

(assert (=> b!828955 d!259871))

(declare-fun d!259873 () Bool)

(declare-fun lt!317655 () Bool)

(assert (=> d!259873 (= lt!317655 (select (content!1309 (usedCharacters!164 r!27177)) c!13916))))

(declare-fun e!546600 () Bool)

(assert (=> d!259873 (= lt!317655 e!546600)))

(declare-fun res!381057 () Bool)

(assert (=> d!259873 (=> (not res!381057) (not e!546600))))

(assert (=> d!259873 (= res!381057 ((_ is Cons!8881) (usedCharacters!164 r!27177)))))

(assert (=> d!259873 (= (contains!1662 (usedCharacters!164 r!27177) c!13916) lt!317655)))

(declare-fun b!829250 () Bool)

(declare-fun e!546599 () Bool)

(assert (=> b!829250 (= e!546600 e!546599)))

(declare-fun res!381056 () Bool)

(assert (=> b!829250 (=> res!381056 e!546599)))

(assert (=> b!829250 (= res!381056 (= (h!14282 (usedCharacters!164 r!27177)) c!13916))))

(declare-fun b!829251 () Bool)

(assert (=> b!829251 (= e!546599 (contains!1662 (t!93189 (usedCharacters!164 r!27177)) c!13916))))

(assert (= (and d!259873 res!381057) b!829250))

(assert (= (and b!829250 (not res!381056)) b!829251))

(assert (=> d!259873 m!1066557))

(declare-fun m!1066731 () Bool)

(assert (=> d!259873 m!1066731))

(declare-fun m!1066733 () Bool)

(assert (=> d!259873 m!1066733))

(declare-fun m!1066735 () Bool)

(assert (=> b!829251 m!1066735))

(assert (=> b!828955 d!259873))

(declare-fun e!546603 () Bool)

(assert (=> b!828956 (= tp!259463 e!546603)))

(declare-fun b!829263 () Bool)

(declare-fun tp!259513 () Bool)

(declare-fun tp!259512 () Bool)

(assert (=> b!829263 (= e!546603 (and tp!259513 tp!259512))))

(declare-fun b!829262 () Bool)

(assert (=> b!829262 (= e!546603 tp_is_empty!3865)))

(declare-fun b!829265 () Bool)

(declare-fun tp!259514 () Bool)

(declare-fun tp!259511 () Bool)

(assert (=> b!829265 (= e!546603 (and tp!259514 tp!259511))))

(declare-fun b!829264 () Bool)

(declare-fun tp!259510 () Bool)

(assert (=> b!829264 (= e!546603 tp!259510)))

(assert (= (and b!828956 ((_ is ElementMatch!2071) (regOne!4654 r!27177))) b!829262))

(assert (= (and b!828956 ((_ is Concat!3802) (regOne!4654 r!27177))) b!829263))

(assert (= (and b!828956 ((_ is Star!2071) (regOne!4654 r!27177))) b!829264))

(assert (= (and b!828956 ((_ is Union!2071) (regOne!4654 r!27177))) b!829265))

(declare-fun e!546604 () Bool)

(assert (=> b!828956 (= tp!259460 e!546604)))

(declare-fun b!829267 () Bool)

(declare-fun tp!259518 () Bool)

(declare-fun tp!259517 () Bool)

(assert (=> b!829267 (= e!546604 (and tp!259518 tp!259517))))

(declare-fun b!829266 () Bool)

(assert (=> b!829266 (= e!546604 tp_is_empty!3865)))

(declare-fun b!829269 () Bool)

(declare-fun tp!259519 () Bool)

(declare-fun tp!259516 () Bool)

(assert (=> b!829269 (= e!546604 (and tp!259519 tp!259516))))

(declare-fun b!829268 () Bool)

(declare-fun tp!259515 () Bool)

(assert (=> b!829268 (= e!546604 tp!259515)))

(assert (= (and b!828956 ((_ is ElementMatch!2071) (regTwo!4654 r!27177))) b!829266))

(assert (= (and b!828956 ((_ is Concat!3802) (regTwo!4654 r!27177))) b!829267))

(assert (= (and b!828956 ((_ is Star!2071) (regTwo!4654 r!27177))) b!829268))

(assert (= (and b!828956 ((_ is Union!2071) (regTwo!4654 r!27177))) b!829269))

(declare-fun e!546605 () Bool)

(assert (=> b!828953 (= tp!259462 e!546605)))

(declare-fun b!829271 () Bool)

(declare-fun tp!259523 () Bool)

(declare-fun tp!259522 () Bool)

(assert (=> b!829271 (= e!546605 (and tp!259523 tp!259522))))

(declare-fun b!829270 () Bool)

(assert (=> b!829270 (= e!546605 tp_is_empty!3865)))

(declare-fun b!829273 () Bool)

(declare-fun tp!259524 () Bool)

(declare-fun tp!259521 () Bool)

(assert (=> b!829273 (= e!546605 (and tp!259524 tp!259521))))

(declare-fun b!829272 () Bool)

(declare-fun tp!259520 () Bool)

(assert (=> b!829272 (= e!546605 tp!259520)))

(assert (= (and b!828953 ((_ is ElementMatch!2071) (reg!2400 r!27177))) b!829270))

(assert (= (and b!828953 ((_ is Concat!3802) (reg!2400 r!27177))) b!829271))

(assert (= (and b!828953 ((_ is Star!2071) (reg!2400 r!27177))) b!829272))

(assert (= (and b!828953 ((_ is Union!2071) (reg!2400 r!27177))) b!829273))

(declare-fun e!546606 () Bool)

(assert (=> b!828954 (= tp!259464 e!546606)))

(declare-fun b!829275 () Bool)

(declare-fun tp!259528 () Bool)

(declare-fun tp!259527 () Bool)

(assert (=> b!829275 (= e!546606 (and tp!259528 tp!259527))))

(declare-fun b!829274 () Bool)

(assert (=> b!829274 (= e!546606 tp_is_empty!3865)))

(declare-fun b!829277 () Bool)

(declare-fun tp!259529 () Bool)

(declare-fun tp!259526 () Bool)

(assert (=> b!829277 (= e!546606 (and tp!259529 tp!259526))))

(declare-fun b!829276 () Bool)

(declare-fun tp!259525 () Bool)

(assert (=> b!829276 (= e!546606 tp!259525)))

(assert (= (and b!828954 ((_ is ElementMatch!2071) (regOne!4655 r!27177))) b!829274))

(assert (= (and b!828954 ((_ is Concat!3802) (regOne!4655 r!27177))) b!829275))

(assert (= (and b!828954 ((_ is Star!2071) (regOne!4655 r!27177))) b!829276))

(assert (= (and b!828954 ((_ is Union!2071) (regOne!4655 r!27177))) b!829277))

(declare-fun e!546607 () Bool)

(assert (=> b!828954 (= tp!259461 e!546607)))

(declare-fun b!829279 () Bool)

(declare-fun tp!259533 () Bool)

(declare-fun tp!259532 () Bool)

(assert (=> b!829279 (= e!546607 (and tp!259533 tp!259532))))

(declare-fun b!829278 () Bool)

(assert (=> b!829278 (= e!546607 tp_is_empty!3865)))

(declare-fun b!829281 () Bool)

(declare-fun tp!259534 () Bool)

(declare-fun tp!259531 () Bool)

(assert (=> b!829281 (= e!546607 (and tp!259534 tp!259531))))

(declare-fun b!829280 () Bool)

(declare-fun tp!259530 () Bool)

(assert (=> b!829280 (= e!546607 tp!259530)))

(assert (= (and b!828954 ((_ is ElementMatch!2071) (regTwo!4655 r!27177))) b!829278))

(assert (= (and b!828954 ((_ is Concat!3802) (regTwo!4655 r!27177))) b!829279))

(assert (= (and b!828954 ((_ is Star!2071) (regTwo!4655 r!27177))) b!829280))

(assert (= (and b!828954 ((_ is Union!2071) (regTwo!4655 r!27177))) b!829281))

(check-sat (not bm!48602) (not b!829279) (not b!829272) (not b!829276) (not b!829141) (not d!259825) (not bm!48558) (not d!259853) (not d!259839) (not bm!48605) (not b!829269) (not bm!48629) (not b!829268) (not b!829267) (not d!259873) (not b!829264) (not b!829029) (not b!829263) (not bm!48604) (not bm!48634) (not bm!48570) (not b!829124) (not b!829265) (not bm!48561) (not b!829059) (not b!829273) (not b!828979) (not b!829133) (not b!829277) (not d!259867) (not bm!48569) (not b!829147) (not bm!48630) (not b!829053) (not b!829249) tp_is_empty!3865 (not b!829280) (not d!259871) (not b!829281) (not bm!48632) (not bm!48560) (not b!829251) (not bm!48593) (not bm!48567) (not bm!48595) (not bm!48600) (not bm!48636) (not b!829271) (not bm!48598) (not b!829275) (not bm!48633))
(check-sat)
(get-model)

(declare-fun d!259875 () Bool)

(declare-fun c!134937 () Bool)

(assert (=> d!259875 (= c!134937 ((_ is Nil!8881) (firstChars!42 (regOne!4655 r!27177))))))

(declare-fun e!546610 () (InoxSet C!4712))

(assert (=> d!259875 (= (content!1309 (firstChars!42 (regOne!4655 r!27177))) e!546610)))

(declare-fun b!829286 () Bool)

(assert (=> b!829286 (= e!546610 ((as const (Array C!4712 Bool)) false))))

(declare-fun b!829287 () Bool)

(assert (=> b!829287 (= e!546610 ((_ map or) (store ((as const (Array C!4712 Bool)) false) (h!14282 (firstChars!42 (regOne!4655 r!27177))) true) (content!1309 (t!93189 (firstChars!42 (regOne!4655 r!27177))))))))

(assert (= (and d!259875 c!134937) b!829286))

(assert (= (and d!259875 (not c!134937)) b!829287))

(declare-fun m!1066737 () Bool)

(assert (=> b!829287 m!1066737))

(declare-fun m!1066739 () Bool)

(assert (=> b!829287 m!1066739))

(assert (=> d!259825 d!259875))

(declare-fun b!829299 () Bool)

(declare-fun lt!317658 () List!8897)

(declare-fun e!546615 () Bool)

(assert (=> b!829299 (= e!546615 (or (not (= (ite c!134864 call!48566 call!48564) Nil!8881)) (= lt!317658 (ite c!134864 call!48564 call!48562))))))

(declare-fun b!829297 () Bool)

(declare-fun e!546616 () List!8897)

(assert (=> b!829297 (= e!546616 (Cons!8881 (h!14282 (ite c!134864 call!48564 call!48562)) (++!2298 (t!93189 (ite c!134864 call!48564 call!48562)) (ite c!134864 call!48566 call!48564))))))

(declare-fun b!829298 () Bool)

(declare-fun res!381062 () Bool)

(assert (=> b!829298 (=> (not res!381062) (not e!546615))))

(declare-fun size!7477 (List!8897) Int)

(assert (=> b!829298 (= res!381062 (= (size!7477 lt!317658) (+ (size!7477 (ite c!134864 call!48564 call!48562)) (size!7477 (ite c!134864 call!48566 call!48564)))))))

(declare-fun d!259877 () Bool)

(assert (=> d!259877 e!546615))

(declare-fun res!381063 () Bool)

(assert (=> d!259877 (=> (not res!381063) (not e!546615))))

(assert (=> d!259877 (= res!381063 (= (content!1309 lt!317658) ((_ map or) (content!1309 (ite c!134864 call!48564 call!48562)) (content!1309 (ite c!134864 call!48566 call!48564)))))))

(assert (=> d!259877 (= lt!317658 e!546616)))

(declare-fun c!134940 () Bool)

(assert (=> d!259877 (= c!134940 ((_ is Nil!8881) (ite c!134864 call!48564 call!48562)))))

(assert (=> d!259877 (= (++!2298 (ite c!134864 call!48564 call!48562) (ite c!134864 call!48566 call!48564)) lt!317658)))

(declare-fun b!829296 () Bool)

(assert (=> b!829296 (= e!546616 (ite c!134864 call!48566 call!48564))))

(assert (= (and d!259877 c!134940) b!829296))

(assert (= (and d!259877 (not c!134940)) b!829297))

(assert (= (and d!259877 res!381063) b!829298))

(assert (= (and b!829298 res!381062) b!829299))

(declare-fun m!1066741 () Bool)

(assert (=> b!829297 m!1066741))

(declare-fun m!1066743 () Bool)

(assert (=> b!829298 m!1066743))

(declare-fun m!1066745 () Bool)

(assert (=> b!829298 m!1066745))

(declare-fun m!1066747 () Bool)

(assert (=> b!829298 m!1066747))

(declare-fun m!1066749 () Bool)

(assert (=> d!259877 m!1066749))

(declare-fun m!1066751 () Bool)

(assert (=> d!259877 m!1066751))

(declare-fun m!1066753 () Bool)

(assert (=> d!259877 m!1066753))

(assert (=> bm!48561 d!259877))

(declare-fun d!259879 () Bool)

(declare-fun lt!317659 () Bool)

(assert (=> d!259879 (= lt!317659 (select (content!1309 (t!93189 (usedCharacters!164 (regTwo!4655 r!27177)))) c!13916))))

(declare-fun e!546618 () Bool)

(assert (=> d!259879 (= lt!317659 e!546618)))

(declare-fun res!381065 () Bool)

(assert (=> d!259879 (=> (not res!381065) (not e!546618))))

(assert (=> d!259879 (= res!381065 ((_ is Cons!8881) (t!93189 (usedCharacters!164 (regTwo!4655 r!27177)))))))

(assert (=> d!259879 (= (contains!1662 (t!93189 (usedCharacters!164 (regTwo!4655 r!27177))) c!13916) lt!317659)))

(declare-fun b!829300 () Bool)

(declare-fun e!546617 () Bool)

(assert (=> b!829300 (= e!546618 e!546617)))

(declare-fun res!381064 () Bool)

(assert (=> b!829300 (=> res!381064 e!546617)))

(assert (=> b!829300 (= res!381064 (= (h!14282 (t!93189 (usedCharacters!164 (regTwo!4655 r!27177)))) c!13916))))

(declare-fun b!829301 () Bool)

(assert (=> b!829301 (= e!546617 (contains!1662 (t!93189 (t!93189 (usedCharacters!164 (regTwo!4655 r!27177)))) c!13916))))

(assert (= (and d!259879 res!381065) b!829300))

(assert (= (and b!829300 (not res!381064)) b!829301))

(declare-fun m!1066755 () Bool)

(assert (=> d!259879 m!1066755))

(declare-fun m!1066757 () Bool)

(assert (=> d!259879 m!1066757))

(declare-fun m!1066759 () Bool)

(assert (=> b!829301 m!1066759))

(assert (=> b!829249 d!259879))

(declare-fun lt!317660 () List!8897)

(declare-fun b!829305 () Bool)

(declare-fun e!546619 () Bool)

(assert (=> b!829305 (= e!546619 (or (not (= (ite c!134932 call!48640 call!48639) Nil!8881)) (= lt!317660 (ite c!134932 call!48639 call!48640))))))

(declare-fun b!829303 () Bool)

(declare-fun e!546620 () List!8897)

(assert (=> b!829303 (= e!546620 (Cons!8881 (h!14282 (ite c!134932 call!48639 call!48640)) (++!2298 (t!93189 (ite c!134932 call!48639 call!48640)) (ite c!134932 call!48640 call!48639))))))

(declare-fun b!829304 () Bool)

(declare-fun res!381066 () Bool)

(assert (=> b!829304 (=> (not res!381066) (not e!546619))))

(assert (=> b!829304 (= res!381066 (= (size!7477 lt!317660) (+ (size!7477 (ite c!134932 call!48639 call!48640)) (size!7477 (ite c!134932 call!48640 call!48639)))))))

(declare-fun d!259881 () Bool)

(assert (=> d!259881 e!546619))

(declare-fun res!381067 () Bool)

(assert (=> d!259881 (=> (not res!381067) (not e!546619))))

(assert (=> d!259881 (= res!381067 (= (content!1309 lt!317660) ((_ map or) (content!1309 (ite c!134932 call!48639 call!48640)) (content!1309 (ite c!134932 call!48640 call!48639)))))))

(assert (=> d!259881 (= lt!317660 e!546620)))

(declare-fun c!134941 () Bool)

(assert (=> d!259881 (= c!134941 ((_ is Nil!8881) (ite c!134932 call!48639 call!48640)))))

(assert (=> d!259881 (= (++!2298 (ite c!134932 call!48639 call!48640) (ite c!134932 call!48640 call!48639)) lt!317660)))

(declare-fun b!829302 () Bool)

(assert (=> b!829302 (= e!546620 (ite c!134932 call!48640 call!48639))))

(assert (= (and d!259881 c!134941) b!829302))

(assert (= (and d!259881 (not c!134941)) b!829303))

(assert (= (and d!259881 res!381067) b!829304))

(assert (= (and b!829304 res!381066) b!829305))

(declare-fun m!1066761 () Bool)

(assert (=> b!829303 m!1066761))

(declare-fun m!1066763 () Bool)

(assert (=> b!829304 m!1066763))

(declare-fun m!1066765 () Bool)

(assert (=> b!829304 m!1066765))

(declare-fun m!1066767 () Bool)

(assert (=> b!829304 m!1066767))

(declare-fun m!1066769 () Bool)

(assert (=> d!259881 m!1066769))

(declare-fun m!1066771 () Bool)

(assert (=> d!259881 m!1066771))

(declare-fun m!1066773 () Bool)

(assert (=> d!259881 m!1066773))

(assert (=> bm!48634 d!259881))

(declare-fun d!259883 () Bool)

(declare-fun c!134946 () Bool)

(assert (=> d!259883 (= c!134946 (or ((_ is EmptyExpr!2071) (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))) ((_ is EmptyLang!2071) (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(declare-fun e!546623 () List!8897)

(assert (=> d!259883 (= (firstChars!42 (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))) e!546623)))

(declare-fun b!829306 () Bool)

(assert (=> b!829306 (= e!546623 Nil!8881)))

(declare-fun bm!48637 () Bool)

(declare-fun call!48646 () List!8897)

(declare-fun call!48645 () List!8897)

(assert (=> bm!48637 (= call!48646 call!48645)))

(declare-fun b!829307 () Bool)

(declare-fun e!546621 () List!8897)

(declare-fun e!546625 () List!8897)

(assert (=> b!829307 (= e!546621 e!546625)))

(declare-fun c!134944 () Bool)

(assert (=> b!829307 (= c!134944 ((_ is Union!2071) (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))))))

(declare-fun call!48644 () List!8897)

(declare-fun bm!48638 () Bool)

(assert (=> bm!48638 (= call!48644 (firstChars!42 (ite c!134944 (regOne!4655 (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))) (regTwo!4654 (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))))))))

(declare-fun b!829308 () Bool)

(declare-fun e!546624 () List!8897)

(assert (=> b!829308 (= e!546624 (Cons!8881 (c!134834 (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))) Nil!8881))))

(declare-fun b!829309 () Bool)

(assert (=> b!829309 (= e!546621 call!48645)))

(declare-fun bm!48639 () Bool)

(declare-fun call!48642 () List!8897)

(assert (=> bm!48639 (= call!48642 call!48646)))

(declare-fun b!829310 () Bool)

(declare-fun e!546622 () List!8897)

(declare-fun call!48643 () List!8897)

(assert (=> b!829310 (= e!546622 call!48643)))

(declare-fun b!829311 () Bool)

(declare-fun c!134945 () Bool)

(assert (=> b!829311 (= c!134945 (nullable!521 (regOne!4654 (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(assert (=> b!829311 (= e!546625 e!546622)))

(declare-fun b!829312 () Bool)

(declare-fun c!134942 () Bool)

(assert (=> b!829312 (= c!134942 ((_ is Star!2071) (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))))))

(assert (=> b!829312 (= e!546624 e!546621)))

(declare-fun bm!48640 () Bool)

(assert (=> bm!48640 (= call!48645 (firstChars!42 (ite c!134942 (reg!2400 (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))) (ite c!134944 (regTwo!4655 (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))) (regOne!4654 (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))))

(declare-fun b!829313 () Bool)

(assert (=> b!829313 (= e!546623 e!546624)))

(declare-fun c!134943 () Bool)

(assert (=> b!829313 (= c!134943 ((_ is ElementMatch!2071) (ite c!134900 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))))))

(declare-fun bm!48641 () Bool)

(assert (=> bm!48641 (= call!48643 (++!2298 (ite c!134944 call!48644 call!48642) (ite c!134944 call!48646 call!48644)))))

(declare-fun b!829314 () Bool)

(assert (=> b!829314 (= e!546625 call!48643)))

(declare-fun b!829315 () Bool)

(assert (=> b!829315 (= e!546622 call!48642)))

(assert (= (and d!259883 c!134946) b!829306))

(assert (= (and d!259883 (not c!134946)) b!829313))

(assert (= (and b!829313 c!134943) b!829308))

(assert (= (and b!829313 (not c!134943)) b!829312))

(assert (= (and b!829312 c!134942) b!829309))

(assert (= (and b!829312 (not c!134942)) b!829307))

(assert (= (and b!829307 c!134944) b!829314))

(assert (= (and b!829307 (not c!134944)) b!829311))

(assert (= (and b!829311 c!134945) b!829310))

(assert (= (and b!829311 (not c!134945)) b!829315))

(assert (= (or b!829310 b!829315) bm!48639))

(assert (= (or b!829314 bm!48639) bm!48637))

(assert (= (or b!829314 b!829310) bm!48638))

(assert (= (or b!829314 b!829310) bm!48641))

(assert (= (or b!829309 bm!48637) bm!48640))

(declare-fun m!1066775 () Bool)

(assert (=> bm!48638 m!1066775))

(declare-fun m!1066777 () Bool)

(assert (=> b!829311 m!1066777))

(declare-fun m!1066779 () Bool)

(assert (=> bm!48640 m!1066779))

(declare-fun m!1066781 () Bool)

(assert (=> bm!48641 m!1066781))

(assert (=> bm!48602 d!259883))

(declare-fun b!829316 () Bool)

(declare-fun e!546627 () Bool)

(declare-fun call!48649 () Bool)

(assert (=> b!829316 (= e!546627 call!48649)))

(declare-fun b!829317 () Bool)

(declare-fun res!381072 () Bool)

(declare-fun e!546628 () Bool)

(assert (=> b!829317 (=> (not res!381072) (not e!546628))))

(assert (=> b!829317 (= res!381072 call!48649)))

(declare-fun e!546630 () Bool)

(assert (=> b!829317 (= e!546630 e!546628)))

(declare-fun b!829318 () Bool)

(declare-fun e!546626 () Bool)

(declare-fun e!546631 () Bool)

(assert (=> b!829318 (= e!546626 e!546631)))

(declare-fun res!381068 () Bool)

(assert (=> b!829318 (= res!381068 (not (nullable!521 (reg!2400 (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))))

(assert (=> b!829318 (=> (not res!381068) (not e!546631))))

(declare-fun call!48647 () Bool)

(declare-fun c!134947 () Bool)

(declare-fun bm!48642 () Bool)

(assert (=> bm!48642 (= call!48647 (validRegex!624 (ite c!134947 (regTwo!4655 (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) (regOne!4654 (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))))

(declare-fun bm!48643 () Bool)

(declare-fun call!48648 () Bool)

(assert (=> bm!48643 (= call!48649 call!48648)))

(declare-fun b!829319 () Bool)

(assert (=> b!829319 (= e!546631 call!48648)))

(declare-fun b!829320 () Bool)

(declare-fun res!381071 () Bool)

(declare-fun e!546629 () Bool)

(assert (=> b!829320 (=> res!381071 e!546629)))

(assert (=> b!829320 (= res!381071 (not ((_ is Concat!3802) (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177))))))))

(assert (=> b!829320 (= e!546630 e!546629)))

(declare-fun b!829321 () Bool)

(assert (=> b!829321 (= e!546626 e!546630)))

(assert (=> b!829321 (= c!134947 ((_ is Union!2071) (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(declare-fun b!829322 () Bool)

(assert (=> b!829322 (= e!546629 e!546627)))

(declare-fun res!381069 () Bool)

(assert (=> b!829322 (=> (not res!381069) (not e!546627))))

(assert (=> b!829322 (= res!381069 call!48647)))

(declare-fun b!829323 () Bool)

(declare-fun e!546632 () Bool)

(assert (=> b!829323 (= e!546632 e!546626)))

(declare-fun c!134948 () Bool)

(assert (=> b!829323 (= c!134948 ((_ is Star!2071) (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(declare-fun d!259885 () Bool)

(declare-fun res!381070 () Bool)

(assert (=> d!259885 (=> res!381070 e!546632)))

(assert (=> d!259885 (= res!381070 ((_ is ElementMatch!2071) (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(assert (=> d!259885 (= (validRegex!624 (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) e!546632)))

(declare-fun b!829324 () Bool)

(assert (=> b!829324 (= e!546628 call!48647)))

(declare-fun bm!48644 () Bool)

(assert (=> bm!48644 (= call!48648 (validRegex!624 (ite c!134948 (reg!2400 (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) (ite c!134947 (regOne!4655 (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) (regTwo!4654 (ite c!134897 (reg!2400 r!27177) (ite c!134896 (regOne!4655 r!27177) (regTwo!4654 r!27177))))))))))

(assert (= (and d!259885 (not res!381070)) b!829323))

(assert (= (and b!829323 c!134948) b!829318))

(assert (= (and b!829323 (not c!134948)) b!829321))

(assert (= (and b!829318 res!381068) b!829319))

(assert (= (and b!829321 c!134947) b!829317))

(assert (= (and b!829321 (not c!134947)) b!829320))

(assert (= (and b!829317 res!381072) b!829324))

(assert (= (and b!829320 (not res!381071)) b!829322))

(assert (= (and b!829322 res!381069) b!829316))

(assert (= (or b!829317 b!829316) bm!48643))

(assert (= (or b!829324 b!829322) bm!48642))

(assert (= (or b!829319 bm!48643) bm!48644))

(declare-fun m!1066783 () Bool)

(assert (=> b!829318 m!1066783))

(declare-fun m!1066785 () Bool)

(assert (=> bm!48642 m!1066785))

(declare-fun m!1066787 () Bool)

(assert (=> bm!48644 m!1066787))

(assert (=> bm!48600 d!259885))

(declare-fun d!259887 () Bool)

(declare-fun c!134949 () Bool)

(assert (=> d!259887 (= c!134949 ((_ is Nil!8881) (firstChars!42 r!27177)))))

(declare-fun e!546633 () (InoxSet C!4712))

(assert (=> d!259887 (= (content!1309 (firstChars!42 r!27177)) e!546633)))

(declare-fun b!829325 () Bool)

(assert (=> b!829325 (= e!546633 ((as const (Array C!4712 Bool)) false))))

(declare-fun b!829326 () Bool)

(assert (=> b!829326 (= e!546633 ((_ map or) (store ((as const (Array C!4712 Bool)) false) (h!14282 (firstChars!42 r!27177)) true) (content!1309 (t!93189 (firstChars!42 r!27177)))))))

(assert (= (and d!259887 c!134949) b!829325))

(assert (= (and d!259887 (not c!134949)) b!829326))

(declare-fun m!1066789 () Bool)

(assert (=> b!829326 m!1066789))

(declare-fun m!1066791 () Bool)

(assert (=> b!829326 m!1066791))

(assert (=> d!259839 d!259887))

(declare-fun b!829330 () Bool)

(declare-fun e!546634 () Bool)

(declare-fun lt!317661 () List!8897)

(assert (=> b!829330 (= e!546634 (or (not (= (ite c!134927 call!48636 call!48635) Nil!8881)) (= lt!317661 (ite c!134927 call!48635 call!48636))))))

(declare-fun b!829328 () Bool)

(declare-fun e!546635 () List!8897)

(assert (=> b!829328 (= e!546635 (Cons!8881 (h!14282 (ite c!134927 call!48635 call!48636)) (++!2298 (t!93189 (ite c!134927 call!48635 call!48636)) (ite c!134927 call!48636 call!48635))))))

(declare-fun b!829329 () Bool)

(declare-fun res!381073 () Bool)

(assert (=> b!829329 (=> (not res!381073) (not e!546634))))

(assert (=> b!829329 (= res!381073 (= (size!7477 lt!317661) (+ (size!7477 (ite c!134927 call!48635 call!48636)) (size!7477 (ite c!134927 call!48636 call!48635)))))))

(declare-fun d!259889 () Bool)

(assert (=> d!259889 e!546634))

(declare-fun res!381074 () Bool)

(assert (=> d!259889 (=> (not res!381074) (not e!546634))))

(assert (=> d!259889 (= res!381074 (= (content!1309 lt!317661) ((_ map or) (content!1309 (ite c!134927 call!48635 call!48636)) (content!1309 (ite c!134927 call!48636 call!48635)))))))

(assert (=> d!259889 (= lt!317661 e!546635)))

(declare-fun c!134950 () Bool)

(assert (=> d!259889 (= c!134950 ((_ is Nil!8881) (ite c!134927 call!48635 call!48636)))))

(assert (=> d!259889 (= (++!2298 (ite c!134927 call!48635 call!48636) (ite c!134927 call!48636 call!48635)) lt!317661)))

(declare-fun b!829327 () Bool)

(assert (=> b!829327 (= e!546635 (ite c!134927 call!48636 call!48635))))

(assert (= (and d!259889 c!134950) b!829327))

(assert (= (and d!259889 (not c!134950)) b!829328))

(assert (= (and d!259889 res!381074) b!829329))

(assert (= (and b!829329 res!381073) b!829330))

(declare-fun m!1066793 () Bool)

(assert (=> b!829328 m!1066793))

(declare-fun m!1066795 () Bool)

(assert (=> b!829329 m!1066795))

(declare-fun m!1066797 () Bool)

(assert (=> b!829329 m!1066797))

(declare-fun m!1066799 () Bool)

(assert (=> b!829329 m!1066799))

(declare-fun m!1066801 () Bool)

(assert (=> d!259889 m!1066801))

(declare-fun m!1066803 () Bool)

(assert (=> d!259889 m!1066803))

(declare-fun m!1066805 () Bool)

(assert (=> d!259889 m!1066805))

(assert (=> bm!48630 d!259889))

(declare-fun b!829331 () Bool)

(declare-fun e!546637 () Bool)

(declare-fun call!48652 () Bool)

(assert (=> b!829331 (= e!546637 call!48652)))

(declare-fun b!829332 () Bool)

(declare-fun res!381079 () Bool)

(declare-fun e!546638 () Bool)

(assert (=> b!829332 (=> (not res!381079) (not e!546638))))

(assert (=> b!829332 (= res!381079 call!48652)))

(declare-fun e!546640 () Bool)

(assert (=> b!829332 (= e!546640 e!546638)))

(declare-fun b!829333 () Bool)

(declare-fun e!546636 () Bool)

(declare-fun e!546641 () Bool)

(assert (=> b!829333 (= e!546636 e!546641)))

(declare-fun res!381075 () Bool)

(assert (=> b!829333 (= res!381075 (not (nullable!521 (reg!2400 (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))))

(assert (=> b!829333 (=> (not res!381075) (not e!546641))))

(declare-fun call!48650 () Bool)

(declare-fun c!134951 () Bool)

(declare-fun bm!48645 () Bool)

(assert (=> bm!48645 (= call!48650 (validRegex!624 (ite c!134951 (regTwo!4655 (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) (regOne!4654 (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))))

(declare-fun bm!48646 () Bool)

(declare-fun call!48651 () Bool)

(assert (=> bm!48646 (= call!48652 call!48651)))

(declare-fun b!829334 () Bool)

(assert (=> b!829334 (= e!546641 call!48651)))

(declare-fun b!829335 () Bool)

(declare-fun res!381078 () Bool)

(declare-fun e!546639 () Bool)

(assert (=> b!829335 (=> res!381078 e!546639)))

(assert (=> b!829335 (= res!381078 (not ((_ is Concat!3802) (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))))))))

(assert (=> b!829335 (= e!546640 e!546639)))

(declare-fun b!829336 () Bool)

(assert (=> b!829336 (= e!546636 e!546640)))

(assert (=> b!829336 (= c!134951 ((_ is Union!2071) (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(declare-fun b!829337 () Bool)

(assert (=> b!829337 (= e!546639 e!546637)))

(declare-fun res!381076 () Bool)

(assert (=> b!829337 (=> (not res!381076) (not e!546637))))

(assert (=> b!829337 (= res!381076 call!48650)))

(declare-fun b!829338 () Bool)

(declare-fun e!546642 () Bool)

(assert (=> b!829338 (= e!546642 e!546636)))

(declare-fun c!134952 () Bool)

(assert (=> b!829338 (= c!134952 ((_ is Star!2071) (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(declare-fun d!259891 () Bool)

(declare-fun res!381077 () Bool)

(assert (=> d!259891 (=> res!381077 e!546642)))

(assert (=> d!259891 (= res!381077 ((_ is ElementMatch!2071) (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(assert (=> d!259891 (= (validRegex!624 (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) e!546642)))

(declare-fun b!829339 () Bool)

(assert (=> b!829339 (= e!546638 call!48650)))

(declare-fun bm!48647 () Bool)

(assert (=> bm!48647 (= call!48651 (validRegex!624 (ite c!134952 (reg!2400 (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) (ite c!134951 (regOne!4655 (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) (regTwo!4654 (ite c!134895 (reg!2400 (regTwo!4655 r!27177)) (ite c!134894 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))))))))))

(assert (= (and d!259891 (not res!381077)) b!829338))

(assert (= (and b!829338 c!134952) b!829333))

(assert (= (and b!829338 (not c!134952)) b!829336))

(assert (= (and b!829333 res!381075) b!829334))

(assert (= (and b!829336 c!134951) b!829332))

(assert (= (and b!829336 (not c!134951)) b!829335))

(assert (= (and b!829332 res!381079) b!829339))

(assert (= (and b!829335 (not res!381078)) b!829337))

(assert (= (and b!829337 res!381076) b!829331))

(assert (= (or b!829332 b!829331) bm!48646))

(assert (= (or b!829339 b!829337) bm!48645))

(assert (= (or b!829334 bm!48646) bm!48647))

(declare-fun m!1066807 () Bool)

(assert (=> b!829333 m!1066807))

(declare-fun m!1066809 () Bool)

(assert (=> bm!48645 m!1066809))

(declare-fun m!1066811 () Bool)

(assert (=> bm!48647 m!1066811))

(assert (=> bm!48595 d!259891))

(declare-fun d!259893 () Bool)

(declare-fun nullableFct!159 (Regex!2071) Bool)

(assert (=> d!259893 (= (nullable!521 (regOne!4654 r!27177)) (nullableFct!159 (regOne!4654 r!27177)))))

(declare-fun bs!229626 () Bool)

(assert (= bs!229626 d!259893))

(declare-fun m!1066813 () Bool)

(assert (=> bs!229626 m!1066813))

(assert (=> b!829059 d!259893))

(declare-fun b!829340 () Bool)

(declare-fun e!546643 () List!8897)

(assert (=> b!829340 (= e!546643 (Cons!8881 (c!134834 (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) Nil!8881))))

(declare-fun bm!48648 () Bool)

(declare-fun call!48653 () List!8897)

(declare-fun c!134953 () Bool)

(declare-fun c!134954 () Bool)

(assert (=> bm!48648 (= call!48653 (usedCharacters!164 (ite c!134953 (reg!2400 (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) (ite c!134954 (regOne!4655 (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) (regTwo!4654 (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))))))))))

(declare-fun b!829341 () Bool)

(declare-fun e!546644 () List!8897)

(assert (=> b!829341 (= e!546644 Nil!8881)))

(declare-fun c!134955 () Bool)

(declare-fun d!259895 () Bool)

(assert (=> d!259895 (= c!134955 (or ((_ is EmptyExpr!2071) (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) ((_ is EmptyLang!2071) (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177)))))))))

(assert (=> d!259895 (= (usedCharacters!164 (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) e!546644)))

(declare-fun b!829342 () Bool)

(declare-fun e!546645 () List!8897)

(declare-fun call!48656 () List!8897)

(assert (=> b!829342 (= e!546645 call!48656)))

(declare-fun call!48654 () List!8897)

(declare-fun bm!48649 () Bool)

(declare-fun call!48655 () List!8897)

(assert (=> bm!48649 (= call!48656 (++!2298 (ite c!134954 call!48654 call!48655) (ite c!134954 call!48655 call!48654)))))

(declare-fun b!829343 () Bool)

(assert (=> b!829343 (= e!546644 e!546643)))

(declare-fun c!134956 () Bool)

(assert (=> b!829343 (= c!134956 ((_ is ElementMatch!2071) (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(declare-fun b!829344 () Bool)

(assert (=> b!829344 (= e!546645 call!48656)))

(declare-fun bm!48650 () Bool)

(assert (=> bm!48650 (= call!48654 call!48653)))

(declare-fun b!829345 () Bool)

(declare-fun e!546646 () List!8897)

(assert (=> b!829345 (= e!546646 call!48653)))

(declare-fun b!829346 () Bool)

(assert (=> b!829346 (= c!134953 ((_ is Star!2071) (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(assert (=> b!829346 (= e!546643 e!546646)))

(declare-fun bm!48651 () Bool)

(assert (=> bm!48651 (= call!48655 (usedCharacters!164 (ite c!134954 (regTwo!4655 (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))) (regOne!4654 (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))))

(declare-fun b!829347 () Bool)

(assert (=> b!829347 (= e!546646 e!546645)))

(assert (=> b!829347 (= c!134954 ((_ is Union!2071) (ite c!134931 (reg!2400 (regTwo!4655 r!27177)) (ite c!134932 (regOne!4655 (regTwo!4655 r!27177)) (regTwo!4654 (regTwo!4655 r!27177))))))))

(assert (= (and d!259895 c!134955) b!829341))

(assert (= (and d!259895 (not c!134955)) b!829343))

(assert (= (and b!829343 c!134956) b!829340))

(assert (= (and b!829343 (not c!134956)) b!829346))

(assert (= (and b!829346 c!134953) b!829345))

(assert (= (and b!829346 (not c!134953)) b!829347))

(assert (= (and b!829347 c!134954) b!829342))

(assert (= (and b!829347 (not c!134954)) b!829344))

(assert (= (or b!829342 b!829344) bm!48651))

(assert (= (or b!829342 b!829344) bm!48650))

(assert (= (or b!829342 b!829344) bm!48649))

(assert (= (or b!829345 bm!48650) bm!48648))

(declare-fun m!1066815 () Bool)

(assert (=> bm!48648 m!1066815))

(declare-fun m!1066817 () Bool)

(assert (=> bm!48649 m!1066817))

(declare-fun m!1066819 () Bool)

(assert (=> bm!48651 m!1066819))

(assert (=> bm!48633 d!259895))

(declare-fun b!829348 () Bool)

(declare-fun e!546648 () Bool)

(declare-fun call!48659 () Bool)

(assert (=> b!829348 (= e!546648 call!48659)))

(declare-fun b!829349 () Bool)

(declare-fun res!381084 () Bool)

(declare-fun e!546649 () Bool)

(assert (=> b!829349 (=> (not res!381084) (not e!546649))))

(assert (=> b!829349 (= res!381084 call!48659)))

(declare-fun e!546651 () Bool)

(assert (=> b!829349 (= e!546651 e!546649)))

(declare-fun b!829350 () Bool)

(declare-fun e!546647 () Bool)

(declare-fun e!546652 () Bool)

(assert (=> b!829350 (= e!546647 e!546652)))

(declare-fun res!381080 () Bool)

(assert (=> b!829350 (= res!381080 (not (nullable!521 (reg!2400 (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))))

(assert (=> b!829350 (=> (not res!381080) (not e!546652))))

(declare-fun bm!48652 () Bool)

(declare-fun call!48657 () Bool)

(declare-fun c!134957 () Bool)

(assert (=> bm!48652 (= call!48657 (validRegex!624 (ite c!134957 (regTwo!4655 (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))) (regOne!4654 (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))))

(declare-fun bm!48653 () Bool)

(declare-fun call!48658 () Bool)

(assert (=> bm!48653 (= call!48659 call!48658)))

(declare-fun b!829351 () Bool)

(assert (=> b!829351 (= e!546652 call!48658)))

(declare-fun b!829352 () Bool)

(declare-fun res!381083 () Bool)

(declare-fun e!546650 () Bool)

(assert (=> b!829352 (=> res!381083 e!546650)))

(assert (=> b!829352 (= res!381083 (not ((_ is Concat!3802) (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177)))))))

(assert (=> b!829352 (= e!546651 e!546650)))

(declare-fun b!829353 () Bool)

(assert (=> b!829353 (= e!546647 e!546651)))

(assert (=> b!829353 (= c!134957 ((_ is Union!2071) (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))

(declare-fun b!829354 () Bool)

(assert (=> b!829354 (= e!546650 e!546648)))

(declare-fun res!381081 () Bool)

(assert (=> b!829354 (=> (not res!381081) (not e!546648))))

(assert (=> b!829354 (= res!381081 call!48657)))

(declare-fun b!829355 () Bool)

(declare-fun e!546653 () Bool)

(assert (=> b!829355 (= e!546653 e!546647)))

(declare-fun c!134958 () Bool)

(assert (=> b!829355 (= c!134958 ((_ is Star!2071) (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))

(declare-fun d!259897 () Bool)

(declare-fun res!381082 () Bool)

(assert (=> d!259897 (=> res!381082 e!546653)))

(assert (=> d!259897 (= res!381082 ((_ is ElementMatch!2071) (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))

(assert (=> d!259897 (= (validRegex!624 (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))) e!546653)))

(declare-fun b!829356 () Bool)

(assert (=> b!829356 (= e!546649 call!48657)))

(declare-fun bm!48654 () Bool)

(assert (=> bm!48654 (= call!48658 (validRegex!624 (ite c!134958 (reg!2400 (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))) (ite c!134957 (regOne!4655 (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177))) (regTwo!4654 (ite c!134896 (regTwo!4655 r!27177) (regOne!4654 r!27177)))))))))

(assert (= (and d!259897 (not res!381082)) b!829355))

(assert (= (and b!829355 c!134958) b!829350))

(assert (= (and b!829355 (not c!134958)) b!829353))

(assert (= (and b!829350 res!381080) b!829351))

(assert (= (and b!829353 c!134957) b!829349))

(assert (= (and b!829353 (not c!134957)) b!829352))

(assert (= (and b!829349 res!381084) b!829356))

(assert (= (and b!829352 (not res!381083)) b!829354))

(assert (= (and b!829354 res!381081) b!829348))

(assert (= (or b!829349 b!829348) bm!48653))

(assert (= (or b!829356 b!829354) bm!48652))

(assert (= (or b!829351 bm!48653) bm!48654))

(declare-fun m!1066821 () Bool)

(assert (=> b!829350 m!1066821))

(declare-fun m!1066823 () Bool)

(assert (=> bm!48652 m!1066823))

(declare-fun m!1066825 () Bool)

(assert (=> bm!48654 m!1066825))

(assert (=> bm!48598 d!259897))

(declare-fun d!259899 () Bool)

(assert (=> d!259899 (= (nullable!521 (reg!2400 (regTwo!4655 r!27177))) (nullableFct!159 (reg!2400 (regTwo!4655 r!27177))))))

(declare-fun bs!229627 () Bool)

(assert (= bs!229627 d!259899))

(declare-fun m!1066827 () Bool)

(assert (=> bs!229627 m!1066827))

(assert (=> b!829124 d!259899))

(declare-fun b!829357 () Bool)

(declare-fun e!546654 () List!8897)

(assert (=> b!829357 (= e!546654 (Cons!8881 (c!134834 (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) Nil!8881))))

(declare-fun c!134960 () Bool)

(declare-fun call!48660 () List!8897)

(declare-fun bm!48655 () Bool)

(declare-fun c!134959 () Bool)

(assert (=> bm!48655 (= call!48660 (usedCharacters!164 (ite c!134959 (reg!2400 (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) (ite c!134960 (regOne!4655 (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) (regTwo!4654 (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))))))))

(declare-fun b!829358 () Bool)

(declare-fun e!546655 () List!8897)

(assert (=> b!829358 (= e!546655 Nil!8881)))

(declare-fun d!259901 () Bool)

(declare-fun c!134961 () Bool)

(assert (=> d!259901 (= c!134961 (or ((_ is EmptyExpr!2071) (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) ((_ is EmptyLang!2071) (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))))))

(assert (=> d!259901 (= (usedCharacters!164 (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) e!546655)))

(declare-fun b!829359 () Bool)

(declare-fun e!546656 () List!8897)

(declare-fun call!48663 () List!8897)

(assert (=> b!829359 (= e!546656 call!48663)))

(declare-fun call!48662 () List!8897)

(declare-fun call!48661 () List!8897)

(declare-fun bm!48656 () Bool)

(assert (=> bm!48656 (= call!48663 (++!2298 (ite c!134960 call!48661 call!48662) (ite c!134960 call!48662 call!48661)))))

(declare-fun b!829360 () Bool)

(assert (=> b!829360 (= e!546655 e!546654)))

(declare-fun c!134962 () Bool)

(assert (=> b!829360 (= c!134962 ((_ is ElementMatch!2071) (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))

(declare-fun b!829361 () Bool)

(assert (=> b!829361 (= e!546656 call!48663)))

(declare-fun bm!48657 () Bool)

(assert (=> bm!48657 (= call!48661 call!48660)))

(declare-fun b!829362 () Bool)

(declare-fun e!546657 () List!8897)

(assert (=> b!829362 (= e!546657 call!48660)))

(declare-fun b!829363 () Bool)

(assert (=> b!829363 (= c!134959 ((_ is Star!2071) (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))

(assert (=> b!829363 (= e!546654 e!546657)))

(declare-fun bm!48658 () Bool)

(assert (=> bm!48658 (= call!48662 (usedCharacters!164 (ite c!134960 (regTwo!4655 (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) (regOne!4654 (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))))

(declare-fun b!829364 () Bool)

(assert (=> b!829364 (= e!546657 e!546656)))

(assert (=> b!829364 (= c!134960 ((_ is Union!2071) (ite c!134932 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))

(assert (= (and d!259901 c!134961) b!829358))

(assert (= (and d!259901 (not c!134961)) b!829360))

(assert (= (and b!829360 c!134962) b!829357))

(assert (= (and b!829360 (not c!134962)) b!829363))

(assert (= (and b!829363 c!134959) b!829362))

(assert (= (and b!829363 (not c!134959)) b!829364))

(assert (= (and b!829364 c!134960) b!829359))

(assert (= (and b!829364 (not c!134960)) b!829361))

(assert (= (or b!829359 b!829361) bm!48658))

(assert (= (or b!829359 b!829361) bm!48657))

(assert (= (or b!829359 b!829361) bm!48656))

(assert (= (or b!829362 bm!48657) bm!48655))

(declare-fun m!1066829 () Bool)

(assert (=> bm!48655 m!1066829))

(declare-fun m!1066831 () Bool)

(assert (=> bm!48656 m!1066831))

(declare-fun m!1066833 () Bool)

(assert (=> bm!48658 m!1066833))

(assert (=> bm!48636 d!259901))

(declare-fun d!259903 () Bool)

(declare-fun lt!317662 () Bool)

(assert (=> d!259903 (= lt!317662 (select (content!1309 (t!93189 (firstChars!42 (regTwo!4655 r!27177)))) c!13916))))

(declare-fun e!546659 () Bool)

(assert (=> d!259903 (= lt!317662 e!546659)))

(declare-fun res!381086 () Bool)

(assert (=> d!259903 (=> (not res!381086) (not e!546659))))

(assert (=> d!259903 (= res!381086 ((_ is Cons!8881) (t!93189 (firstChars!42 (regTwo!4655 r!27177)))))))

(assert (=> d!259903 (= (contains!1662 (t!93189 (firstChars!42 (regTwo!4655 r!27177))) c!13916) lt!317662)))

(declare-fun b!829365 () Bool)

(declare-fun e!546658 () Bool)

(assert (=> b!829365 (= e!546659 e!546658)))

(declare-fun res!381085 () Bool)

(assert (=> b!829365 (=> res!381085 e!546658)))

(assert (=> b!829365 (= res!381085 (= (h!14282 (t!93189 (firstChars!42 (regTwo!4655 r!27177)))) c!13916))))

(declare-fun b!829366 () Bool)

(assert (=> b!829366 (= e!546658 (contains!1662 (t!93189 (t!93189 (firstChars!42 (regTwo!4655 r!27177)))) c!13916))))

(assert (= (and d!259903 res!381086) b!829365))

(assert (= (and b!829365 (not res!381085)) b!829366))

(declare-fun m!1066835 () Bool)

(assert (=> d!259903 m!1066835))

(declare-fun m!1066837 () Bool)

(assert (=> d!259903 m!1066837))

(declare-fun m!1066839 () Bool)

(assert (=> b!829366 m!1066839))

(assert (=> b!829141 d!259903))

(declare-fun b!829367 () Bool)

(declare-fun e!546661 () Bool)

(declare-fun call!48666 () Bool)

(assert (=> b!829367 (= e!546661 call!48666)))

(declare-fun b!829368 () Bool)

(declare-fun res!381091 () Bool)

(declare-fun e!546662 () Bool)

(assert (=> b!829368 (=> (not res!381091) (not e!546662))))

(assert (=> b!829368 (= res!381091 call!48666)))

(declare-fun e!546664 () Bool)

(assert (=> b!829368 (= e!546664 e!546662)))

(declare-fun b!829369 () Bool)

(declare-fun e!546660 () Bool)

(declare-fun e!546665 () Bool)

(assert (=> b!829369 (= e!546660 e!546665)))

(declare-fun res!381087 () Bool)

(assert (=> b!829369 (= res!381087 (not (nullable!521 (reg!2400 (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))))

(assert (=> b!829369 (=> (not res!381087) (not e!546665))))

(declare-fun c!134963 () Bool)

(declare-fun call!48664 () Bool)

(declare-fun bm!48659 () Bool)

(assert (=> bm!48659 (= call!48664 (validRegex!624 (ite c!134963 (regTwo!4655 (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) (regOne!4654 (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))))

(declare-fun bm!48660 () Bool)

(declare-fun call!48665 () Bool)

(assert (=> bm!48660 (= call!48666 call!48665)))

(declare-fun b!829370 () Bool)

(assert (=> b!829370 (= e!546665 call!48665)))

(declare-fun b!829371 () Bool)

(declare-fun res!381090 () Bool)

(declare-fun e!546663 () Bool)

(assert (=> b!829371 (=> res!381090 e!546663)))

(assert (=> b!829371 (= res!381090 (not ((_ is Concat!3802) (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))))))

(assert (=> b!829371 (= e!546664 e!546663)))

(declare-fun b!829372 () Bool)

(assert (=> b!829372 (= e!546660 e!546664)))

(assert (=> b!829372 (= c!134963 ((_ is Union!2071) (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))

(declare-fun b!829373 () Bool)

(assert (=> b!829373 (= e!546663 e!546661)))

(declare-fun res!381088 () Bool)

(assert (=> b!829373 (=> (not res!381088) (not e!546661))))

(assert (=> b!829373 (= res!381088 call!48664)))

(declare-fun b!829374 () Bool)

(declare-fun e!546666 () Bool)

(assert (=> b!829374 (= e!546666 e!546660)))

(declare-fun c!134964 () Bool)

(assert (=> b!829374 (= c!134964 ((_ is Star!2071) (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))

(declare-fun d!259905 () Bool)

(declare-fun res!381089 () Bool)

(assert (=> d!259905 (=> res!381089 e!546666)))

(assert (=> d!259905 (= res!381089 ((_ is ElementMatch!2071) (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))

(assert (=> d!259905 (= (validRegex!624 (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) e!546666)))

(declare-fun b!829375 () Bool)

(assert (=> b!829375 (= e!546662 call!48664)))

(declare-fun bm!48661 () Bool)

(assert (=> bm!48661 (= call!48665 (validRegex!624 (ite c!134964 (reg!2400 (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) (ite c!134963 (regOne!4655 (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))) (regTwo!4654 (ite c!134894 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))))))))

(assert (= (and d!259905 (not res!381089)) b!829374))

(assert (= (and b!829374 c!134964) b!829369))

(assert (= (and b!829374 (not c!134964)) b!829372))

(assert (= (and b!829369 res!381087) b!829370))

(assert (= (and b!829372 c!134963) b!829368))

(assert (= (and b!829372 (not c!134963)) b!829371))

(assert (= (and b!829368 res!381091) b!829375))

(assert (= (and b!829371 (not res!381090)) b!829373))

(assert (= (and b!829373 res!381088) b!829367))

(assert (= (or b!829368 b!829367) bm!48660))

(assert (= (or b!829375 b!829373) bm!48659))

(assert (= (or b!829370 bm!48660) bm!48661))

(declare-fun m!1066841 () Bool)

(assert (=> b!829369 m!1066841))

(declare-fun m!1066843 () Bool)

(assert (=> bm!48659 m!1066843))

(declare-fun m!1066845 () Bool)

(assert (=> bm!48661 m!1066845))

(assert (=> bm!48593 d!259905))

(declare-fun d!259907 () Bool)

(assert (=> d!259907 (= (nullable!521 (regOne!4654 (regOne!4655 r!27177))) (nullableFct!159 (regOne!4654 (regOne!4655 r!27177))))))

(declare-fun bs!229628 () Bool)

(assert (= bs!229628 d!259907))

(declare-fun m!1066847 () Bool)

(assert (=> bs!229628 m!1066847))

(assert (=> b!829029 d!259907))

(declare-fun b!829376 () Bool)

(declare-fun e!546667 () List!8897)

(assert (=> b!829376 (= e!546667 (Cons!8881 (c!134834 (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))) Nil!8881))))

(declare-fun bm!48662 () Bool)

(declare-fun call!48667 () List!8897)

(declare-fun c!134966 () Bool)

(declare-fun c!134965 () Bool)

(assert (=> bm!48662 (= call!48667 (usedCharacters!164 (ite c!134965 (reg!2400 (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))) (ite c!134966 (regOne!4655 (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))) (regTwo!4654 (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177)))))))))

(declare-fun b!829377 () Bool)

(declare-fun e!546668 () List!8897)

(assert (=> b!829377 (= e!546668 Nil!8881)))

(declare-fun d!259909 () Bool)

(declare-fun c!134967 () Bool)

(assert (=> d!259909 (= c!134967 (or ((_ is EmptyExpr!2071) (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))) ((_ is EmptyLang!2071) (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177)))))))

(assert (=> d!259909 (= (usedCharacters!164 (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))) e!546668)))

(declare-fun b!829378 () Bool)

(declare-fun e!546669 () List!8897)

(declare-fun call!48670 () List!8897)

(assert (=> b!829378 (= e!546669 call!48670)))

(declare-fun bm!48663 () Bool)

(declare-fun call!48669 () List!8897)

(declare-fun call!48668 () List!8897)

(assert (=> bm!48663 (= call!48670 (++!2298 (ite c!134966 call!48668 call!48669) (ite c!134966 call!48669 call!48668)))))

(declare-fun b!829379 () Bool)

(assert (=> b!829379 (= e!546668 e!546667)))

(declare-fun c!134968 () Bool)

(assert (=> b!829379 (= c!134968 ((_ is ElementMatch!2071) (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))

(declare-fun b!829380 () Bool)

(assert (=> b!829380 (= e!546669 call!48670)))

(declare-fun bm!48664 () Bool)

(assert (=> bm!48664 (= call!48668 call!48667)))

(declare-fun b!829381 () Bool)

(declare-fun e!546670 () List!8897)

(assert (=> b!829381 (= e!546670 call!48667)))

(declare-fun b!829382 () Bool)

(assert (=> b!829382 (= c!134965 ((_ is Star!2071) (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))

(assert (=> b!829382 (= e!546667 e!546670)))

(declare-fun bm!48665 () Bool)

(assert (=> bm!48665 (= call!48669 (usedCharacters!164 (ite c!134966 (regTwo!4655 (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))) (regOne!4654 (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))))

(declare-fun b!829383 () Bool)

(assert (=> b!829383 (= e!546670 e!546669)))

(assert (=> b!829383 (= c!134966 ((_ is Union!2071) (ite c!134927 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))

(assert (= (and d!259909 c!134967) b!829377))

(assert (= (and d!259909 (not c!134967)) b!829379))

(assert (= (and b!829379 c!134968) b!829376))

(assert (= (and b!829379 (not c!134968)) b!829382))

(assert (= (and b!829382 c!134965) b!829381))

(assert (= (and b!829382 (not c!134965)) b!829383))

(assert (= (and b!829383 c!134966) b!829378))

(assert (= (and b!829383 (not c!134966)) b!829380))

(assert (= (or b!829378 b!829380) bm!48665))

(assert (= (or b!829378 b!829380) bm!48664))

(assert (= (or b!829378 b!829380) bm!48663))

(assert (= (or b!829381 bm!48664) bm!48662))

(declare-fun m!1066849 () Bool)

(assert (=> bm!48662 m!1066849))

(declare-fun m!1066851 () Bool)

(assert (=> bm!48663 m!1066851))

(declare-fun m!1066853 () Bool)

(assert (=> bm!48665 m!1066853))

(assert (=> bm!48632 d!259909))

(declare-fun c!134973 () Bool)

(declare-fun d!259911 () Bool)

(assert (=> d!259911 (= c!134973 (or ((_ is EmptyExpr!2071) (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))) ((_ is EmptyLang!2071) (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177)))))))))

(declare-fun e!546673 () List!8897)

(assert (=> d!259911 (= (firstChars!42 (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))) e!546673)))

(declare-fun b!829384 () Bool)

(assert (=> b!829384 (= e!546673 Nil!8881)))

(declare-fun bm!48666 () Bool)

(declare-fun call!48675 () List!8897)

(declare-fun call!48674 () List!8897)

(assert (=> bm!48666 (= call!48675 call!48674)))

(declare-fun b!829385 () Bool)

(declare-fun e!546671 () List!8897)

(declare-fun e!546675 () List!8897)

(assert (=> b!829385 (= e!546671 e!546675)))

(declare-fun c!134971 () Bool)

(assert (=> b!829385 (= c!134971 ((_ is Union!2071) (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))))))

(declare-fun bm!48667 () Bool)

(declare-fun call!48673 () List!8897)

(assert (=> bm!48667 (= call!48673 (firstChars!42 (ite c!134971 (regOne!4655 (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))) (regTwo!4654 (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))))))))

(declare-fun b!829386 () Bool)

(declare-fun e!546674 () List!8897)

(assert (=> b!829386 (= e!546674 (Cons!8881 (c!134834 (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))) Nil!8881))))

(declare-fun b!829387 () Bool)

(assert (=> b!829387 (= e!546671 call!48674)))

(declare-fun bm!48668 () Bool)

(declare-fun call!48671 () List!8897)

(assert (=> bm!48668 (= call!48671 call!48675)))

(declare-fun b!829388 () Bool)

(declare-fun e!546672 () List!8897)

(declare-fun call!48672 () List!8897)

(assert (=> b!829388 (= e!546672 call!48672)))

(declare-fun c!134972 () Bool)

(declare-fun b!829389 () Bool)

(assert (=> b!829389 (= c!134972 (nullable!521 (regOne!4654 (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177)))))))))

(assert (=> b!829389 (= e!546675 e!546672)))

(declare-fun b!829390 () Bool)

(declare-fun c!134969 () Bool)

(assert (=> b!829390 (= c!134969 ((_ is Star!2071) (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))))))

(assert (=> b!829390 (= e!546674 e!546671)))

(declare-fun bm!48669 () Bool)

(assert (=> bm!48669 (= call!48674 (firstChars!42 (ite c!134969 (reg!2400 (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))) (ite c!134971 (regTwo!4655 (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))) (regOne!4654 (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177)))))))))))

(declare-fun b!829391 () Bool)

(assert (=> b!829391 (= e!546673 e!546674)))

(declare-fun c!134970 () Bool)

(assert (=> b!829391 (= c!134970 ((_ is ElementMatch!2071) (ite c!134862 (reg!2400 (regOne!4655 r!27177)) (ite c!134864 (regTwo!4655 (regOne!4655 r!27177)) (regOne!4654 (regOne!4655 r!27177))))))))

(declare-fun bm!48670 () Bool)

(assert (=> bm!48670 (= call!48672 (++!2298 (ite c!134971 call!48673 call!48671) (ite c!134971 call!48675 call!48673)))))

(declare-fun b!829392 () Bool)

(assert (=> b!829392 (= e!546675 call!48672)))

(declare-fun b!829393 () Bool)

(assert (=> b!829393 (= e!546672 call!48671)))

(assert (= (and d!259911 c!134973) b!829384))

(assert (= (and d!259911 (not c!134973)) b!829391))

(assert (= (and b!829391 c!134970) b!829386))

(assert (= (and b!829391 (not c!134970)) b!829390))

(assert (= (and b!829390 c!134969) b!829387))

(assert (= (and b!829390 (not c!134969)) b!829385))

(assert (= (and b!829385 c!134971) b!829392))

(assert (= (and b!829385 (not c!134971)) b!829389))

(assert (= (and b!829389 c!134972) b!829388))

(assert (= (and b!829389 (not c!134972)) b!829393))

(assert (= (or b!829388 b!829393) bm!48668))

(assert (= (or b!829392 bm!48668) bm!48666))

(assert (= (or b!829392 b!829388) bm!48667))

(assert (= (or b!829392 b!829388) bm!48670))

(assert (= (or b!829387 bm!48666) bm!48669))

(declare-fun m!1066855 () Bool)

(assert (=> bm!48667 m!1066855))

(declare-fun m!1066857 () Bool)

(assert (=> b!829389 m!1066857))

(declare-fun m!1066859 () Bool)

(assert (=> bm!48669 m!1066859))

(declare-fun m!1066861 () Bool)

(assert (=> bm!48670 m!1066861))

(assert (=> bm!48560 d!259911))

(declare-fun d!259913 () Bool)

(declare-fun c!134978 () Bool)

(assert (=> d!259913 (= c!134978 (or ((_ is EmptyExpr!2071) (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))) ((_ is EmptyLang!2071) (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(declare-fun e!546678 () List!8897)

(assert (=> d!259913 (= (firstChars!42 (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))) e!546678)))

(declare-fun b!829394 () Bool)

(assert (=> b!829394 (= e!546678 Nil!8881)))

(declare-fun bm!48671 () Bool)

(declare-fun call!48680 () List!8897)

(declare-fun call!48679 () List!8897)

(assert (=> bm!48671 (= call!48680 call!48679)))

(declare-fun b!829395 () Bool)

(declare-fun e!546676 () List!8897)

(declare-fun e!546680 () List!8897)

(assert (=> b!829395 (= e!546676 e!546680)))

(declare-fun c!134976 () Bool)

(assert (=> b!829395 (= c!134976 ((_ is Union!2071) (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))))))

(declare-fun call!48678 () List!8897)

(declare-fun bm!48672 () Bool)

(assert (=> bm!48672 (= call!48678 (firstChars!42 (ite c!134976 (regOne!4655 (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))) (regTwo!4654 (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))))))))

(declare-fun b!829396 () Bool)

(declare-fun e!546679 () List!8897)

(assert (=> b!829396 (= e!546679 (Cons!8881 (c!134834 (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))) Nil!8881))))

(declare-fun b!829397 () Bool)

(assert (=> b!829397 (= e!546676 call!48679)))

(declare-fun bm!48673 () Bool)

(declare-fun call!48676 () List!8897)

(assert (=> bm!48673 (= call!48676 call!48680)))

(declare-fun b!829398 () Bool)

(declare-fun e!546677 () List!8897)

(declare-fun call!48677 () List!8897)

(assert (=> b!829398 (= e!546677 call!48677)))

(declare-fun b!829399 () Bool)

(declare-fun c!134977 () Bool)

(assert (=> b!829399 (= c!134977 (nullable!521 (regOne!4654 (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(assert (=> b!829399 (= e!546680 e!546677)))

(declare-fun b!829400 () Bool)

(declare-fun c!134974 () Bool)

(assert (=> b!829400 (= c!134974 ((_ is Star!2071) (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))))))

(assert (=> b!829400 (= e!546679 e!546676)))

(declare-fun bm!48674 () Bool)

(assert (=> bm!48674 (= call!48679 (firstChars!42 (ite c!134974 (reg!2400 (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))) (ite c!134976 (regTwo!4655 (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))) (regOne!4654 (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))))

(declare-fun b!829401 () Bool)

(assert (=> b!829401 (= e!546678 e!546679)))

(declare-fun c!134975 () Bool)

(assert (=> b!829401 (= c!134975 ((_ is ElementMatch!2071) (ite c!134873 (regOne!4655 r!27177) (regTwo!4654 r!27177))))))

(declare-fun bm!48675 () Bool)

(assert (=> bm!48675 (= call!48677 (++!2298 (ite c!134976 call!48678 call!48676) (ite c!134976 call!48680 call!48678)))))

(declare-fun b!829402 () Bool)

(assert (=> b!829402 (= e!546680 call!48677)))

(declare-fun b!829403 () Bool)

(assert (=> b!829403 (= e!546677 call!48676)))

(assert (= (and d!259913 c!134978) b!829394))

(assert (= (and d!259913 (not c!134978)) b!829401))

(assert (= (and b!829401 c!134975) b!829396))

(assert (= (and b!829401 (not c!134975)) b!829400))

(assert (= (and b!829400 c!134974) b!829397))

(assert (= (and b!829400 (not c!134974)) b!829395))

(assert (= (and b!829395 c!134976) b!829402))

(assert (= (and b!829395 (not c!134976)) b!829399))

(assert (= (and b!829399 c!134977) b!829398))

(assert (= (and b!829399 (not c!134977)) b!829403))

(assert (= (or b!829398 b!829403) bm!48673))

(assert (= (or b!829402 bm!48673) bm!48671))

(assert (= (or b!829402 b!829398) bm!48672))

(assert (= (or b!829402 b!829398) bm!48675))

(assert (= (or b!829397 bm!48671) bm!48674))

(declare-fun m!1066863 () Bool)

(assert (=> bm!48672 m!1066863))

(declare-fun m!1066865 () Bool)

(assert (=> b!829399 m!1066865))

(declare-fun m!1066867 () Bool)

(assert (=> bm!48674 m!1066867))

(declare-fun m!1066869 () Bool)

(assert (=> bm!48675 m!1066869))

(assert (=> bm!48567 d!259913))

(assert (=> d!259867 d!259871))

(assert (=> d!259867 d!259869))

(declare-fun d!259915 () Bool)

(assert (=> d!259915 (contains!1662 (usedCharacters!164 (regTwo!4655 r!27177)) c!13916)))

(assert (=> d!259915 true))

(declare-fun _$135!73 () Unit!13379)

(assert (=> d!259915 (= (choose!4934 (regTwo!4655 r!27177) c!13916) _$135!73)))

(declare-fun bs!229629 () Bool)

(assert (= bs!229629 d!259915))

(assert (=> bs!229629 m!1066555))

(assert (=> bs!229629 m!1066555))

(assert (=> bs!229629 m!1066561))

(assert (=> d!259867 d!259915))

(assert (=> d!259867 d!259843))

(declare-fun d!259917 () Bool)

(declare-fun c!134980 () Bool)

(assert (=> d!259917 (= c!134980 ((_ is Nil!8881) (firstChars!42 (regTwo!4655 r!27177))))))

(declare-fun e!546681 () (InoxSet C!4712))

(assert (=> d!259917 (= (content!1309 (firstChars!42 (regTwo!4655 r!27177))) e!546681)))

(declare-fun b!829404 () Bool)

(assert (=> b!829404 (= e!546681 ((as const (Array C!4712 Bool)) false))))

(declare-fun b!829405 () Bool)

(assert (=> b!829405 (= e!546681 ((_ map or) (store ((as const (Array C!4712 Bool)) false) (h!14282 (firstChars!42 (regTwo!4655 r!27177))) true) (content!1309 (t!93189 (firstChars!42 (regTwo!4655 r!27177))))))))

(assert (= (and d!259917 c!134980) b!829404))

(assert (= (and d!259917 (not c!134980)) b!829405))

(declare-fun m!1066871 () Bool)

(assert (=> b!829405 m!1066871))

(assert (=> b!829405 m!1066835))

(assert (=> d!259853 d!259917))

(declare-fun e!546682 () Bool)

(declare-fun lt!317663 () List!8897)

(declare-fun b!829409 () Bool)

(assert (=> b!829409 (= e!546682 (or (not (= (ite c!134900 call!48610 call!48608) Nil!8881)) (= lt!317663 (ite c!134900 call!48608 call!48606))))))

(declare-fun e!546683 () List!8897)

(declare-fun b!829407 () Bool)

(assert (=> b!829407 (= e!546683 (Cons!8881 (h!14282 (ite c!134900 call!48608 call!48606)) (++!2298 (t!93189 (ite c!134900 call!48608 call!48606)) (ite c!134900 call!48610 call!48608))))))

(declare-fun b!829408 () Bool)

(declare-fun res!381092 () Bool)

(assert (=> b!829408 (=> (not res!381092) (not e!546682))))

(assert (=> b!829408 (= res!381092 (= (size!7477 lt!317663) (+ (size!7477 (ite c!134900 call!48608 call!48606)) (size!7477 (ite c!134900 call!48610 call!48608)))))))

(declare-fun d!259919 () Bool)

(assert (=> d!259919 e!546682))

(declare-fun res!381093 () Bool)

(assert (=> d!259919 (=> (not res!381093) (not e!546682))))

(assert (=> d!259919 (= res!381093 (= (content!1309 lt!317663) ((_ map or) (content!1309 (ite c!134900 call!48608 call!48606)) (content!1309 (ite c!134900 call!48610 call!48608)))))))

(assert (=> d!259919 (= lt!317663 e!546683)))

(declare-fun c!134981 () Bool)

(assert (=> d!259919 (= c!134981 ((_ is Nil!8881) (ite c!134900 call!48608 call!48606)))))

(assert (=> d!259919 (= (++!2298 (ite c!134900 call!48608 call!48606) (ite c!134900 call!48610 call!48608)) lt!317663)))

(declare-fun b!829406 () Bool)

(assert (=> b!829406 (= e!546683 (ite c!134900 call!48610 call!48608))))

(assert (= (and d!259919 c!134981) b!829406))

(assert (= (and d!259919 (not c!134981)) b!829407))

(assert (= (and d!259919 res!381093) b!829408))

(assert (= (and b!829408 res!381092) b!829409))

(declare-fun m!1066873 () Bool)

(assert (=> b!829407 m!1066873))

(declare-fun m!1066875 () Bool)

(assert (=> b!829408 m!1066875))

(declare-fun m!1066877 () Bool)

(assert (=> b!829408 m!1066877))

(declare-fun m!1066879 () Bool)

(assert (=> b!829408 m!1066879))

(declare-fun m!1066881 () Bool)

(assert (=> d!259919 m!1066881))

(declare-fun m!1066883 () Bool)

(assert (=> d!259919 m!1066883))

(declare-fun m!1066885 () Bool)

(assert (=> d!259919 m!1066885))

(assert (=> bm!48605 d!259919))

(declare-fun d!259921 () Bool)

(declare-fun lt!317664 () Bool)

(assert (=> d!259921 (= lt!317664 (select (content!1309 (t!93189 (firstChars!42 (regOne!4655 r!27177)))) c!13916))))

(declare-fun e!546685 () Bool)

(assert (=> d!259921 (= lt!317664 e!546685)))

(declare-fun res!381095 () Bool)

(assert (=> d!259921 (=> (not res!381095) (not e!546685))))

(assert (=> d!259921 (= res!381095 ((_ is Cons!8881) (t!93189 (firstChars!42 (regOne!4655 r!27177)))))))

(assert (=> d!259921 (= (contains!1662 (t!93189 (firstChars!42 (regOne!4655 r!27177))) c!13916) lt!317664)))

(declare-fun b!829410 () Bool)

(declare-fun e!546684 () Bool)

(assert (=> b!829410 (= e!546685 e!546684)))

(declare-fun res!381094 () Bool)

(assert (=> b!829410 (=> res!381094 e!546684)))

(assert (=> b!829410 (= res!381094 (= (h!14282 (t!93189 (firstChars!42 (regOne!4655 r!27177)))) c!13916))))

(declare-fun b!829411 () Bool)

(assert (=> b!829411 (= e!546684 (contains!1662 (t!93189 (t!93189 (firstChars!42 (regOne!4655 r!27177)))) c!13916))))

(assert (= (and d!259921 res!381095) b!829410))

(assert (= (and b!829410 (not res!381094)) b!829411))

(assert (=> d!259921 m!1066739))

(declare-fun m!1066887 () Bool)

(assert (=> d!259921 m!1066887))

(declare-fun m!1066889 () Bool)

(assert (=> b!829411 m!1066889))

(assert (=> b!828979 d!259921))

(declare-fun d!259923 () Bool)

(declare-fun lt!317665 () Bool)

(assert (=> d!259923 (= lt!317665 (select (content!1309 (t!93189 (firstChars!42 r!27177))) c!13916))))

(declare-fun e!546687 () Bool)

(assert (=> d!259923 (= lt!317665 e!546687)))

(declare-fun res!381097 () Bool)

(assert (=> d!259923 (=> (not res!381097) (not e!546687))))

(assert (=> d!259923 (= res!381097 ((_ is Cons!8881) (t!93189 (firstChars!42 r!27177))))))

(assert (=> d!259923 (= (contains!1662 (t!93189 (firstChars!42 r!27177)) c!13916) lt!317665)))

(declare-fun b!829412 () Bool)

(declare-fun e!546686 () Bool)

(assert (=> b!829412 (= e!546687 e!546686)))

(declare-fun res!381096 () Bool)

(assert (=> b!829412 (=> res!381096 e!546686)))

(assert (=> b!829412 (= res!381096 (= (h!14282 (t!93189 (firstChars!42 r!27177))) c!13916))))

(declare-fun b!829413 () Bool)

(assert (=> b!829413 (= e!546686 (contains!1662 (t!93189 (t!93189 (firstChars!42 r!27177))) c!13916))))

(assert (= (and d!259923 res!381097) b!829412))

(assert (= (and b!829412 (not res!381096)) b!829413))

(assert (=> d!259923 m!1066791))

(declare-fun m!1066891 () Bool)

(assert (=> d!259923 m!1066891))

(declare-fun m!1066893 () Bool)

(assert (=> b!829413 m!1066893))

(assert (=> b!829053 d!259923))

(declare-fun d!259925 () Bool)

(declare-fun c!134986 () Bool)

(assert (=> d!259925 (= c!134986 (or ((_ is EmptyExpr!2071) (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))) ((_ is EmptyLang!2071) (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177))))))))

(declare-fun e!546690 () List!8897)

(assert (=> d!259925 (= (firstChars!42 (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))) e!546690)))

(declare-fun b!829414 () Bool)

(assert (=> b!829414 (= e!546690 Nil!8881)))

(declare-fun bm!48676 () Bool)

(declare-fun call!48685 () List!8897)

(declare-fun call!48684 () List!8897)

(assert (=> bm!48676 (= call!48685 call!48684)))

(declare-fun b!829415 () Bool)

(declare-fun e!546688 () List!8897)

(declare-fun e!546692 () List!8897)

(assert (=> b!829415 (= e!546688 e!546692)))

(declare-fun c!134984 () Bool)

(assert (=> b!829415 (= c!134984 ((_ is Union!2071) (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))))))

(declare-fun call!48683 () List!8897)

(declare-fun bm!48677 () Bool)

(assert (=> bm!48677 (= call!48683 (firstChars!42 (ite c!134984 (regOne!4655 (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))) (regTwo!4654 (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))))))))

(declare-fun b!829416 () Bool)

(declare-fun e!546691 () List!8897)

(assert (=> b!829416 (= e!546691 (Cons!8881 (c!134834 (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))) Nil!8881))))

(declare-fun b!829417 () Bool)

(assert (=> b!829417 (= e!546688 call!48684)))

(declare-fun bm!48678 () Bool)

(declare-fun call!48681 () List!8897)

(assert (=> bm!48678 (= call!48681 call!48685)))

(declare-fun b!829418 () Bool)

(declare-fun e!546689 () List!8897)

(declare-fun call!48682 () List!8897)

(assert (=> b!829418 (= e!546689 call!48682)))

(declare-fun b!829419 () Bool)

(declare-fun c!134985 () Bool)

(assert (=> b!829419 (= c!134985 (nullable!521 (regOne!4654 (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177))))))))

(assert (=> b!829419 (= e!546692 e!546689)))

(declare-fun b!829420 () Bool)

(declare-fun c!134982 () Bool)

(assert (=> b!829420 (= c!134982 ((_ is Star!2071) (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))))))

(assert (=> b!829420 (= e!546691 e!546688)))

(declare-fun bm!48679 () Bool)

(assert (=> bm!48679 (= call!48684 (firstChars!42 (ite c!134982 (reg!2400 (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))) (ite c!134984 (regTwo!4655 (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))) (regOne!4654 (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177))))))))))

(declare-fun b!829421 () Bool)

(assert (=> b!829421 (= e!546690 e!546691)))

(declare-fun c!134983 () Bool)

(assert (=> b!829421 (= c!134983 ((_ is ElementMatch!2071) (ite c!134864 (regOne!4655 (regOne!4655 r!27177)) (regTwo!4654 (regOne!4655 r!27177)))))))

(declare-fun bm!48680 () Bool)

(assert (=> bm!48680 (= call!48682 (++!2298 (ite c!134984 call!48683 call!48681) (ite c!134984 call!48685 call!48683)))))

(declare-fun b!829422 () Bool)

(assert (=> b!829422 (= e!546692 call!48682)))

(declare-fun b!829423 () Bool)

(assert (=> b!829423 (= e!546689 call!48681)))

(assert (= (and d!259925 c!134986) b!829414))

(assert (= (and d!259925 (not c!134986)) b!829421))

(assert (= (and b!829421 c!134983) b!829416))

(assert (= (and b!829421 (not c!134983)) b!829420))

(assert (= (and b!829420 c!134982) b!829417))

(assert (= (and b!829420 (not c!134982)) b!829415))

(assert (= (and b!829415 c!134984) b!829422))

(assert (= (and b!829415 (not c!134984)) b!829419))

(assert (= (and b!829419 c!134985) b!829418))

(assert (= (and b!829419 (not c!134985)) b!829423))

(assert (= (or b!829418 b!829423) bm!48678))

(assert (= (or b!829422 bm!48678) bm!48676))

(assert (= (or b!829422 b!829418) bm!48677))

(assert (= (or b!829422 b!829418) bm!48680))

(assert (= (or b!829417 bm!48676) bm!48679))

(declare-fun m!1066895 () Bool)

(assert (=> bm!48677 m!1066895))

(declare-fun m!1066897 () Bool)

(assert (=> b!829419 m!1066897))

(declare-fun m!1066899 () Bool)

(assert (=> bm!48679 m!1066899))

(declare-fun m!1066901 () Bool)

(assert (=> bm!48680 m!1066901))

(assert (=> bm!48558 d!259925))

(declare-fun d!259927 () Bool)

(declare-fun c!134987 () Bool)

(assert (=> d!259927 (= c!134987 ((_ is Nil!8881) (usedCharacters!164 r!27177)))))

(declare-fun e!546693 () (InoxSet C!4712))

(assert (=> d!259927 (= (content!1309 (usedCharacters!164 r!27177)) e!546693)))

(declare-fun b!829424 () Bool)

(assert (=> b!829424 (= e!546693 ((as const (Array C!4712 Bool)) false))))

(declare-fun b!829425 () Bool)

(assert (=> b!829425 (= e!546693 ((_ map or) (store ((as const (Array C!4712 Bool)) false) (h!14282 (usedCharacters!164 r!27177)) true) (content!1309 (t!93189 (usedCharacters!164 r!27177)))))))

(assert (= (and d!259927 c!134987) b!829424))

(assert (= (and d!259927 (not c!134987)) b!829425))

(declare-fun m!1066903 () Bool)

(assert (=> b!829425 m!1066903))

(declare-fun m!1066905 () Bool)

(assert (=> b!829425 m!1066905))

(assert (=> d!259873 d!259927))

(declare-fun d!259929 () Bool)

(assert (=> d!259929 (= (nullable!521 (reg!2400 r!27177)) (nullableFct!159 (reg!2400 r!27177)))))

(declare-fun bs!229630 () Bool)

(assert (= bs!229630 d!259929))

(declare-fun m!1066907 () Bool)

(assert (=> bs!229630 m!1066907))

(assert (=> b!829133 d!259929))

(declare-fun d!259931 () Bool)

(declare-fun c!134992 () Bool)

(assert (=> d!259931 (= c!134992 (or ((_ is EmptyExpr!2071) (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))) ((_ is EmptyLang!2071) (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))))

(declare-fun e!546696 () List!8897)

(assert (=> d!259931 (= (firstChars!42 (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))) e!546696)))

(declare-fun b!829426 () Bool)

(assert (=> b!829426 (= e!546696 Nil!8881)))

(declare-fun bm!48681 () Bool)

(declare-fun call!48690 () List!8897)

(declare-fun call!48689 () List!8897)

(assert (=> bm!48681 (= call!48690 call!48689)))

(declare-fun b!829427 () Bool)

(declare-fun e!546694 () List!8897)

(declare-fun e!546698 () List!8897)

(assert (=> b!829427 (= e!546694 e!546698)))

(declare-fun c!134990 () Bool)

(assert (=> b!829427 (= c!134990 ((_ is Union!2071) (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))))))

(declare-fun bm!48682 () Bool)

(declare-fun call!48688 () List!8897)

(assert (=> bm!48682 (= call!48688 (firstChars!42 (ite c!134990 (regOne!4655 (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))) (regTwo!4654 (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))))))))

(declare-fun b!829428 () Bool)

(declare-fun e!546697 () List!8897)

(assert (=> b!829428 (= e!546697 (Cons!8881 (c!134834 (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))) Nil!8881))))

(declare-fun b!829429 () Bool)

(assert (=> b!829429 (= e!546694 call!48689)))

(declare-fun bm!48683 () Bool)

(declare-fun call!48686 () List!8897)

(assert (=> bm!48683 (= call!48686 call!48690)))

(declare-fun b!829430 () Bool)

(declare-fun e!546695 () List!8897)

(declare-fun call!48687 () List!8897)

(assert (=> b!829430 (= e!546695 call!48687)))

(declare-fun b!829431 () Bool)

(declare-fun c!134991 () Bool)

(assert (=> b!829431 (= c!134991 (nullable!521 (regOne!4654 (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))))

(assert (=> b!829431 (= e!546698 e!546695)))

(declare-fun c!134988 () Bool)

(declare-fun b!829432 () Bool)

(assert (=> b!829432 (= c!134988 ((_ is Star!2071) (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))))))

(assert (=> b!829432 (= e!546697 e!546694)))

(declare-fun bm!48684 () Bool)

(assert (=> bm!48684 (= call!48689 (firstChars!42 (ite c!134988 (reg!2400 (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))) (ite c!134990 (regTwo!4655 (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))) (regOne!4654 (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177))))))))))

(declare-fun b!829433 () Bool)

(assert (=> b!829433 (= e!546696 e!546697)))

(declare-fun c!134989 () Bool)

(assert (=> b!829433 (= c!134989 ((_ is ElementMatch!2071) (ite c!134871 (reg!2400 r!27177) (ite c!134873 (regTwo!4655 r!27177) (regOne!4654 r!27177)))))))

(declare-fun bm!48685 () Bool)

(assert (=> bm!48685 (= call!48687 (++!2298 (ite c!134990 call!48688 call!48686) (ite c!134990 call!48690 call!48688)))))

(declare-fun b!829434 () Bool)

(assert (=> b!829434 (= e!546698 call!48687)))

(declare-fun b!829435 () Bool)

(assert (=> b!829435 (= e!546695 call!48686)))

(assert (= (and d!259931 c!134992) b!829426))

(assert (= (and d!259931 (not c!134992)) b!829433))

(assert (= (and b!829433 c!134989) b!829428))

(assert (= (and b!829433 (not c!134989)) b!829432))

(assert (= (and b!829432 c!134988) b!829429))

(assert (= (and b!829432 (not c!134988)) b!829427))

(assert (= (and b!829427 c!134990) b!829434))

(assert (= (and b!829427 (not c!134990)) b!829431))

(assert (= (and b!829431 c!134991) b!829430))

(assert (= (and b!829431 (not c!134991)) b!829435))

(assert (= (or b!829430 b!829435) bm!48683))

(assert (= (or b!829434 bm!48683) bm!48681))

(assert (= (or b!829434 b!829430) bm!48682))

(assert (= (or b!829434 b!829430) bm!48685))

(assert (= (or b!829429 bm!48681) bm!48684))

(declare-fun m!1066909 () Bool)

(assert (=> bm!48682 m!1066909))

(declare-fun m!1066911 () Bool)

(assert (=> b!829431 m!1066911))

(declare-fun m!1066913 () Bool)

(assert (=> bm!48684 m!1066913))

(declare-fun m!1066915 () Bool)

(assert (=> bm!48685 m!1066915))

(assert (=> bm!48569 d!259931))

(declare-fun d!259933 () Bool)

(declare-fun lt!317666 () Bool)

(assert (=> d!259933 (= lt!317666 (select (content!1309 (t!93189 (usedCharacters!164 r!27177))) c!13916))))

(declare-fun e!546700 () Bool)

(assert (=> d!259933 (= lt!317666 e!546700)))

(declare-fun res!381099 () Bool)

(assert (=> d!259933 (=> (not res!381099) (not e!546700))))

(assert (=> d!259933 (= res!381099 ((_ is Cons!8881) (t!93189 (usedCharacters!164 r!27177))))))

(assert (=> d!259933 (= (contains!1662 (t!93189 (usedCharacters!164 r!27177)) c!13916) lt!317666)))

(declare-fun b!829436 () Bool)

(declare-fun e!546699 () Bool)

(assert (=> b!829436 (= e!546700 e!546699)))

(declare-fun res!381098 () Bool)

(assert (=> b!829436 (=> res!381098 e!546699)))

(assert (=> b!829436 (= res!381098 (= (h!14282 (t!93189 (usedCharacters!164 r!27177))) c!13916))))

(declare-fun b!829437 () Bool)

(assert (=> b!829437 (= e!546699 (contains!1662 (t!93189 (t!93189 (usedCharacters!164 r!27177))) c!13916))))

(assert (= (and d!259933 res!381099) b!829436))

(assert (= (and b!829436 (not res!381098)) b!829437))

(assert (=> d!259933 m!1066905))

(declare-fun m!1066917 () Bool)

(assert (=> d!259933 m!1066917))

(declare-fun m!1066919 () Bool)

(assert (=> b!829437 m!1066919))

(assert (=> b!829251 d!259933))

(declare-fun d!259935 () Bool)

(assert (=> d!259935 (= (nullable!521 (regOne!4654 (regTwo!4655 r!27177))) (nullableFct!159 (regOne!4654 (regTwo!4655 r!27177))))))

(declare-fun bs!229631 () Bool)

(assert (= bs!229631 d!259935))

(declare-fun m!1066921 () Bool)

(assert (=> bs!229631 m!1066921))

(assert (=> b!829147 d!259935))

(declare-fun e!546701 () List!8897)

(declare-fun b!829438 () Bool)

(assert (=> b!829438 (= e!546701 (Cons!8881 (c!134834 (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) Nil!8881))))

(declare-fun c!134993 () Bool)

(declare-fun call!48691 () List!8897)

(declare-fun bm!48686 () Bool)

(declare-fun c!134994 () Bool)

(assert (=> bm!48686 (= call!48691 (usedCharacters!164 (ite c!134993 (reg!2400 (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) (ite c!134994 (regOne!4655 (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) (regTwo!4654 (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177))))))))))

(declare-fun b!829439 () Bool)

(declare-fun e!546702 () List!8897)

(assert (=> b!829439 (= e!546702 Nil!8881)))

(declare-fun d!259937 () Bool)

(declare-fun c!134995 () Bool)

(assert (=> d!259937 (= c!134995 (or ((_ is EmptyExpr!2071) (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) ((_ is EmptyLang!2071) (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177))))))))

(assert (=> d!259937 (= (usedCharacters!164 (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) e!546702)))

(declare-fun b!829440 () Bool)

(declare-fun e!546703 () List!8897)

(declare-fun call!48694 () List!8897)

(assert (=> b!829440 (= e!546703 call!48694)))

(declare-fun call!48692 () List!8897)

(declare-fun call!48693 () List!8897)

(declare-fun bm!48687 () Bool)

(assert (=> bm!48687 (= call!48694 (++!2298 (ite c!134994 call!48692 call!48693) (ite c!134994 call!48693 call!48692)))))

(declare-fun b!829441 () Bool)

(assert (=> b!829441 (= e!546702 e!546701)))

(declare-fun c!134996 () Bool)

(assert (=> b!829441 (= c!134996 ((_ is ElementMatch!2071) (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(declare-fun b!829442 () Bool)

(assert (=> b!829442 (= e!546703 call!48694)))

(declare-fun bm!48688 () Bool)

(assert (=> bm!48688 (= call!48692 call!48691)))

(declare-fun b!829443 () Bool)

(declare-fun e!546704 () List!8897)

(assert (=> b!829443 (= e!546704 call!48691)))

(declare-fun b!829444 () Bool)

(assert (=> b!829444 (= c!134993 ((_ is Star!2071) (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(assert (=> b!829444 (= e!546701 e!546704)))

(declare-fun bm!48689 () Bool)

(assert (=> bm!48689 (= call!48693 (usedCharacters!164 (ite c!134994 (regTwo!4655 (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))) (regOne!4654 (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))))

(declare-fun b!829445 () Bool)

(assert (=> b!829445 (= e!546704 e!546703)))

(assert (=> b!829445 (= c!134994 ((_ is Union!2071) (ite c!134926 (reg!2400 r!27177) (ite c!134927 (regOne!4655 r!27177) (regTwo!4654 r!27177)))))))

(assert (= (and d!259937 c!134995) b!829439))

(assert (= (and d!259937 (not c!134995)) b!829441))

(assert (= (and b!829441 c!134996) b!829438))

(assert (= (and b!829441 (not c!134996)) b!829444))

(assert (= (and b!829444 c!134993) b!829443))

(assert (= (and b!829444 (not c!134993)) b!829445))

(assert (= (and b!829445 c!134994) b!829440))

(assert (= (and b!829445 (not c!134994)) b!829442))

(assert (= (or b!829440 b!829442) bm!48689))

(assert (= (or b!829440 b!829442) bm!48688))

(assert (= (or b!829440 b!829442) bm!48687))

(assert (= (or b!829443 bm!48688) bm!48686))

(declare-fun m!1066923 () Bool)

(assert (=> bm!48686 m!1066923))

(declare-fun m!1066925 () Bool)

(assert (=> bm!48687 m!1066925))

(declare-fun m!1066927 () Bool)

(assert (=> bm!48689 m!1066927))

(assert (=> bm!48629 d!259937))

(declare-fun d!259939 () Bool)

(declare-fun c!134997 () Bool)

(assert (=> d!259939 (= c!134997 ((_ is Nil!8881) (usedCharacters!164 (regTwo!4655 r!27177))))))

(declare-fun e!546705 () (InoxSet C!4712))

(assert (=> d!259939 (= (content!1309 (usedCharacters!164 (regTwo!4655 r!27177))) e!546705)))

(declare-fun b!829446 () Bool)

(assert (=> b!829446 (= e!546705 ((as const (Array C!4712 Bool)) false))))

(declare-fun b!829447 () Bool)

(assert (=> b!829447 (= e!546705 ((_ map or) (store ((as const (Array C!4712 Bool)) false) (h!14282 (usedCharacters!164 (regTwo!4655 r!27177))) true) (content!1309 (t!93189 (usedCharacters!164 (regTwo!4655 r!27177))))))))

(assert (= (and d!259939 c!134997) b!829446))

(assert (= (and d!259939 (not c!134997)) b!829447))

(declare-fun m!1066929 () Bool)

(assert (=> b!829447 m!1066929))

(assert (=> b!829447 m!1066755))

(assert (=> d!259871 d!259939))

(declare-fun lt!317667 () List!8897)

(declare-fun e!546706 () Bool)

(declare-fun b!829451 () Bool)

(assert (=> b!829451 (= e!546706 (or (not (= (ite c!134873 call!48577 call!48575) Nil!8881)) (= lt!317667 (ite c!134873 call!48575 call!48573))))))

(declare-fun e!546707 () List!8897)

(declare-fun b!829449 () Bool)

(assert (=> b!829449 (= e!546707 (Cons!8881 (h!14282 (ite c!134873 call!48575 call!48573)) (++!2298 (t!93189 (ite c!134873 call!48575 call!48573)) (ite c!134873 call!48577 call!48575))))))

(declare-fun b!829450 () Bool)

(declare-fun res!381100 () Bool)

(assert (=> b!829450 (=> (not res!381100) (not e!546706))))

(assert (=> b!829450 (= res!381100 (= (size!7477 lt!317667) (+ (size!7477 (ite c!134873 call!48575 call!48573)) (size!7477 (ite c!134873 call!48577 call!48575)))))))

(declare-fun d!259941 () Bool)

(assert (=> d!259941 e!546706))

(declare-fun res!381101 () Bool)

(assert (=> d!259941 (=> (not res!381101) (not e!546706))))

(assert (=> d!259941 (= res!381101 (= (content!1309 lt!317667) ((_ map or) (content!1309 (ite c!134873 call!48575 call!48573)) (content!1309 (ite c!134873 call!48577 call!48575)))))))

(assert (=> d!259941 (= lt!317667 e!546707)))

(declare-fun c!134998 () Bool)

(assert (=> d!259941 (= c!134998 ((_ is Nil!8881) (ite c!134873 call!48575 call!48573)))))

(assert (=> d!259941 (= (++!2298 (ite c!134873 call!48575 call!48573) (ite c!134873 call!48577 call!48575)) lt!317667)))

(declare-fun b!829448 () Bool)

(assert (=> b!829448 (= e!546707 (ite c!134873 call!48577 call!48575))))

(assert (= (and d!259941 c!134998) b!829448))

(assert (= (and d!259941 (not c!134998)) b!829449))

(assert (= (and d!259941 res!381101) b!829450))

(assert (= (and b!829450 res!381100) b!829451))

(declare-fun m!1066931 () Bool)

(assert (=> b!829449 m!1066931))

(declare-fun m!1066933 () Bool)

(assert (=> b!829450 m!1066933))

(declare-fun m!1066935 () Bool)

(assert (=> b!829450 m!1066935))

(declare-fun m!1066937 () Bool)

(assert (=> b!829450 m!1066937))

(declare-fun m!1066939 () Bool)

(assert (=> d!259941 m!1066939))

(declare-fun m!1066941 () Bool)

(assert (=> d!259941 m!1066941))

(declare-fun m!1066943 () Bool)

(assert (=> d!259941 m!1066943))

(assert (=> bm!48570 d!259941))

(declare-fun d!259943 () Bool)

(declare-fun c!135003 () Bool)

(assert (=> d!259943 (= c!135003 (or ((_ is EmptyExpr!2071) (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))) ((_ is EmptyLang!2071) (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))))

(declare-fun e!546710 () List!8897)

(assert (=> d!259943 (= (firstChars!42 (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))) e!546710)))

(declare-fun b!829452 () Bool)

(assert (=> b!829452 (= e!546710 Nil!8881)))

(declare-fun bm!48690 () Bool)

(declare-fun call!48699 () List!8897)

(declare-fun call!48698 () List!8897)

(assert (=> bm!48690 (= call!48699 call!48698)))

(declare-fun b!829453 () Bool)

(declare-fun e!546708 () List!8897)

(declare-fun e!546712 () List!8897)

(assert (=> b!829453 (= e!546708 e!546712)))

(declare-fun c!135001 () Bool)

(assert (=> b!829453 (= c!135001 ((_ is Union!2071) (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))))))

(declare-fun call!48697 () List!8897)

(declare-fun bm!48691 () Bool)

(assert (=> bm!48691 (= call!48697 (firstChars!42 (ite c!135001 (regOne!4655 (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))) (regTwo!4654 (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))))))))

(declare-fun e!546711 () List!8897)

(declare-fun b!829454 () Bool)

(assert (=> b!829454 (= e!546711 (Cons!8881 (c!134834 (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))) Nil!8881))))

(declare-fun b!829455 () Bool)

(assert (=> b!829455 (= e!546708 call!48698)))

(declare-fun bm!48692 () Bool)

(declare-fun call!48695 () List!8897)

(assert (=> bm!48692 (= call!48695 call!48699)))

(declare-fun b!829456 () Bool)

(declare-fun e!546709 () List!8897)

(declare-fun call!48696 () List!8897)

(assert (=> b!829456 (= e!546709 call!48696)))

(declare-fun b!829457 () Bool)

(declare-fun c!135002 () Bool)

(assert (=> b!829457 (= c!135002 (nullable!521 (regOne!4654 (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))))

(assert (=> b!829457 (= e!546712 e!546709)))

(declare-fun b!829458 () Bool)

(declare-fun c!134999 () Bool)

(assert (=> b!829458 (= c!134999 ((_ is Star!2071) (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))))))

(assert (=> b!829458 (= e!546711 e!546708)))

(declare-fun bm!48693 () Bool)

(assert (=> bm!48693 (= call!48698 (firstChars!42 (ite c!134999 (reg!2400 (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))) (ite c!135001 (regTwo!4655 (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))) (regOne!4654 (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177)))))))))))

(declare-fun b!829459 () Bool)

(assert (=> b!829459 (= e!546710 e!546711)))

(declare-fun c!135000 () Bool)

(assert (=> b!829459 (= c!135000 ((_ is ElementMatch!2071) (ite c!134898 (reg!2400 (regTwo!4655 r!27177)) (ite c!134900 (regTwo!4655 (regTwo!4655 r!27177)) (regOne!4654 (regTwo!4655 r!27177))))))))

(declare-fun bm!48694 () Bool)

(assert (=> bm!48694 (= call!48696 (++!2298 (ite c!135001 call!48697 call!48695) (ite c!135001 call!48699 call!48697)))))

(declare-fun b!829460 () Bool)

(assert (=> b!829460 (= e!546712 call!48696)))

(declare-fun b!829461 () Bool)

(assert (=> b!829461 (= e!546709 call!48695)))

(assert (= (and d!259943 c!135003) b!829452))

(assert (= (and d!259943 (not c!135003)) b!829459))

(assert (= (and b!829459 c!135000) b!829454))

(assert (= (and b!829459 (not c!135000)) b!829458))

(assert (= (and b!829458 c!134999) b!829455))

(assert (= (and b!829458 (not c!134999)) b!829453))

(assert (= (and b!829453 c!135001) b!829460))

(assert (= (and b!829453 (not c!135001)) b!829457))

(assert (= (and b!829457 c!135002) b!829456))

(assert (= (and b!829457 (not c!135002)) b!829461))

(assert (= (or b!829456 b!829461) bm!48692))

(assert (= (or b!829460 bm!48692) bm!48690))

(assert (= (or b!829460 b!829456) bm!48691))

(assert (= (or b!829460 b!829456) bm!48694))

(assert (= (or b!829455 bm!48690) bm!48693))

(declare-fun m!1066945 () Bool)

(assert (=> bm!48691 m!1066945))

(declare-fun m!1066947 () Bool)

(assert (=> b!829457 m!1066947))

(declare-fun m!1066949 () Bool)

(assert (=> bm!48693 m!1066949))

(declare-fun m!1066951 () Bool)

(assert (=> bm!48694 m!1066951))

(assert (=> bm!48604 d!259943))

(declare-fun e!546713 () Bool)

(assert (=> b!829271 (= tp!259523 e!546713)))

(declare-fun b!829463 () Bool)

(declare-fun tp!259538 () Bool)

(declare-fun tp!259537 () Bool)

(assert (=> b!829463 (= e!546713 (and tp!259538 tp!259537))))

(declare-fun b!829462 () Bool)

(assert (=> b!829462 (= e!546713 tp_is_empty!3865)))

(declare-fun b!829465 () Bool)

(declare-fun tp!259539 () Bool)

(declare-fun tp!259536 () Bool)

(assert (=> b!829465 (= e!546713 (and tp!259539 tp!259536))))

(declare-fun b!829464 () Bool)

(declare-fun tp!259535 () Bool)

(assert (=> b!829464 (= e!546713 tp!259535)))

(assert (= (and b!829271 ((_ is ElementMatch!2071) (regOne!4654 (reg!2400 r!27177)))) b!829462))

(assert (= (and b!829271 ((_ is Concat!3802) (regOne!4654 (reg!2400 r!27177)))) b!829463))

(assert (= (and b!829271 ((_ is Star!2071) (regOne!4654 (reg!2400 r!27177)))) b!829464))

(assert (= (and b!829271 ((_ is Union!2071) (regOne!4654 (reg!2400 r!27177)))) b!829465))

(declare-fun e!546714 () Bool)

(assert (=> b!829271 (= tp!259522 e!546714)))

(declare-fun b!829467 () Bool)

(declare-fun tp!259543 () Bool)

(declare-fun tp!259542 () Bool)

(assert (=> b!829467 (= e!546714 (and tp!259543 tp!259542))))

(declare-fun b!829466 () Bool)

(assert (=> b!829466 (= e!546714 tp_is_empty!3865)))

(declare-fun b!829469 () Bool)

(declare-fun tp!259544 () Bool)

(declare-fun tp!259541 () Bool)

(assert (=> b!829469 (= e!546714 (and tp!259544 tp!259541))))

(declare-fun b!829468 () Bool)

(declare-fun tp!259540 () Bool)

(assert (=> b!829468 (= e!546714 tp!259540)))

(assert (= (and b!829271 ((_ is ElementMatch!2071) (regTwo!4654 (reg!2400 r!27177)))) b!829466))

(assert (= (and b!829271 ((_ is Concat!3802) (regTwo!4654 (reg!2400 r!27177)))) b!829467))

(assert (= (and b!829271 ((_ is Star!2071) (regTwo!4654 (reg!2400 r!27177)))) b!829468))

(assert (= (and b!829271 ((_ is Union!2071) (regTwo!4654 (reg!2400 r!27177)))) b!829469))

(declare-fun e!546715 () Bool)

(assert (=> b!829280 (= tp!259530 e!546715)))

(declare-fun b!829471 () Bool)

(declare-fun tp!259548 () Bool)

(declare-fun tp!259547 () Bool)

(assert (=> b!829471 (= e!546715 (and tp!259548 tp!259547))))

(declare-fun b!829470 () Bool)

(assert (=> b!829470 (= e!546715 tp_is_empty!3865)))

(declare-fun b!829473 () Bool)

(declare-fun tp!259549 () Bool)

(declare-fun tp!259546 () Bool)

(assert (=> b!829473 (= e!546715 (and tp!259549 tp!259546))))

(declare-fun b!829472 () Bool)

(declare-fun tp!259545 () Bool)

(assert (=> b!829472 (= e!546715 tp!259545)))

(assert (= (and b!829280 ((_ is ElementMatch!2071) (reg!2400 (regTwo!4655 r!27177)))) b!829470))

(assert (= (and b!829280 ((_ is Concat!3802) (reg!2400 (regTwo!4655 r!27177)))) b!829471))

(assert (= (and b!829280 ((_ is Star!2071) (reg!2400 (regTwo!4655 r!27177)))) b!829472))

(assert (= (and b!829280 ((_ is Union!2071) (reg!2400 (regTwo!4655 r!27177)))) b!829473))

(declare-fun e!546721 () Bool)

(assert (=> b!829275 (= tp!259528 e!546721)))

(declare-fun b!829485 () Bool)

(declare-fun tp!259553 () Bool)

(declare-fun tp!259552 () Bool)

(assert (=> b!829485 (= e!546721 (and tp!259553 tp!259552))))

(declare-fun b!829484 () Bool)

(assert (=> b!829484 (= e!546721 tp_is_empty!3865)))

(declare-fun b!829487 () Bool)

(declare-fun tp!259554 () Bool)

(declare-fun tp!259551 () Bool)

(assert (=> b!829487 (= e!546721 (and tp!259554 tp!259551))))

(declare-fun b!829486 () Bool)

(declare-fun tp!259550 () Bool)

(assert (=> b!829486 (= e!546721 tp!259550)))

(assert (= (and b!829275 ((_ is ElementMatch!2071) (regOne!4654 (regOne!4655 r!27177)))) b!829484))

(assert (= (and b!829275 ((_ is Concat!3802) (regOne!4654 (regOne!4655 r!27177)))) b!829485))

(assert (= (and b!829275 ((_ is Star!2071) (regOne!4654 (regOne!4655 r!27177)))) b!829486))

(assert (= (and b!829275 ((_ is Union!2071) (regOne!4654 (regOne!4655 r!27177)))) b!829487))

(declare-fun e!546722 () Bool)

(assert (=> b!829275 (= tp!259527 e!546722)))

(declare-fun b!829489 () Bool)

(declare-fun tp!259558 () Bool)

(declare-fun tp!259557 () Bool)

(assert (=> b!829489 (= e!546722 (and tp!259558 tp!259557))))

(declare-fun b!829488 () Bool)

(assert (=> b!829488 (= e!546722 tp_is_empty!3865)))

(declare-fun b!829491 () Bool)

(declare-fun tp!259559 () Bool)

(declare-fun tp!259556 () Bool)

(assert (=> b!829491 (= e!546722 (and tp!259559 tp!259556))))

(declare-fun b!829490 () Bool)

(declare-fun tp!259555 () Bool)

(assert (=> b!829490 (= e!546722 tp!259555)))

(assert (= (and b!829275 ((_ is ElementMatch!2071) (regTwo!4654 (regOne!4655 r!27177)))) b!829488))

(assert (= (and b!829275 ((_ is Concat!3802) (regTwo!4654 (regOne!4655 r!27177)))) b!829489))

(assert (= (and b!829275 ((_ is Star!2071) (regTwo!4654 (regOne!4655 r!27177)))) b!829490))

(assert (= (and b!829275 ((_ is Union!2071) (regTwo!4654 (regOne!4655 r!27177)))) b!829491))

(declare-fun e!546723 () Bool)

(assert (=> b!829279 (= tp!259533 e!546723)))

(declare-fun b!829493 () Bool)

(declare-fun tp!259563 () Bool)

(declare-fun tp!259562 () Bool)

(assert (=> b!829493 (= e!546723 (and tp!259563 tp!259562))))

(declare-fun b!829492 () Bool)

(assert (=> b!829492 (= e!546723 tp_is_empty!3865)))

(declare-fun b!829495 () Bool)

(declare-fun tp!259564 () Bool)

(declare-fun tp!259561 () Bool)

(assert (=> b!829495 (= e!546723 (and tp!259564 tp!259561))))

(declare-fun b!829494 () Bool)

(declare-fun tp!259560 () Bool)

(assert (=> b!829494 (= e!546723 tp!259560)))

(assert (= (and b!829279 ((_ is ElementMatch!2071) (regOne!4654 (regTwo!4655 r!27177)))) b!829492))

(assert (= (and b!829279 ((_ is Concat!3802) (regOne!4654 (regTwo!4655 r!27177)))) b!829493))

(assert (= (and b!829279 ((_ is Star!2071) (regOne!4654 (regTwo!4655 r!27177)))) b!829494))

(assert (= (and b!829279 ((_ is Union!2071) (regOne!4654 (regTwo!4655 r!27177)))) b!829495))

(declare-fun e!546724 () Bool)

(assert (=> b!829279 (= tp!259532 e!546724)))

(declare-fun b!829497 () Bool)

(declare-fun tp!259568 () Bool)

(declare-fun tp!259567 () Bool)

(assert (=> b!829497 (= e!546724 (and tp!259568 tp!259567))))

(declare-fun b!829496 () Bool)

(assert (=> b!829496 (= e!546724 tp_is_empty!3865)))

(declare-fun b!829499 () Bool)

(declare-fun tp!259569 () Bool)

(declare-fun tp!259566 () Bool)

(assert (=> b!829499 (= e!546724 (and tp!259569 tp!259566))))

(declare-fun b!829498 () Bool)

(declare-fun tp!259565 () Bool)

(assert (=> b!829498 (= e!546724 tp!259565)))

(assert (= (and b!829279 ((_ is ElementMatch!2071) (regTwo!4654 (regTwo!4655 r!27177)))) b!829496))

(assert (= (and b!829279 ((_ is Concat!3802) (regTwo!4654 (regTwo!4655 r!27177)))) b!829497))

(assert (= (and b!829279 ((_ is Star!2071) (regTwo!4654 (regTwo!4655 r!27177)))) b!829498))

(assert (= (and b!829279 ((_ is Union!2071) (regTwo!4654 (regTwo!4655 r!27177)))) b!829499))

(declare-fun e!546725 () Bool)

(assert (=> b!829265 (= tp!259514 e!546725)))

(declare-fun b!829501 () Bool)

(declare-fun tp!259573 () Bool)

(declare-fun tp!259572 () Bool)

(assert (=> b!829501 (= e!546725 (and tp!259573 tp!259572))))

(declare-fun b!829500 () Bool)

(assert (=> b!829500 (= e!546725 tp_is_empty!3865)))

(declare-fun b!829503 () Bool)

(declare-fun tp!259574 () Bool)

(declare-fun tp!259571 () Bool)

(assert (=> b!829503 (= e!546725 (and tp!259574 tp!259571))))

(declare-fun b!829502 () Bool)

(declare-fun tp!259570 () Bool)

(assert (=> b!829502 (= e!546725 tp!259570)))

(assert (= (and b!829265 ((_ is ElementMatch!2071) (regOne!4655 (regOne!4654 r!27177)))) b!829500))

(assert (= (and b!829265 ((_ is Concat!3802) (regOne!4655 (regOne!4654 r!27177)))) b!829501))

(assert (= (and b!829265 ((_ is Star!2071) (regOne!4655 (regOne!4654 r!27177)))) b!829502))

(assert (= (and b!829265 ((_ is Union!2071) (regOne!4655 (regOne!4654 r!27177)))) b!829503))

(declare-fun e!546726 () Bool)

(assert (=> b!829265 (= tp!259511 e!546726)))

(declare-fun b!829505 () Bool)

(declare-fun tp!259578 () Bool)

(declare-fun tp!259577 () Bool)

(assert (=> b!829505 (= e!546726 (and tp!259578 tp!259577))))

(declare-fun b!829504 () Bool)

(assert (=> b!829504 (= e!546726 tp_is_empty!3865)))

(declare-fun b!829507 () Bool)

(declare-fun tp!259579 () Bool)

(declare-fun tp!259576 () Bool)

(assert (=> b!829507 (= e!546726 (and tp!259579 tp!259576))))

(declare-fun b!829506 () Bool)

(declare-fun tp!259575 () Bool)

(assert (=> b!829506 (= e!546726 tp!259575)))

(assert (= (and b!829265 ((_ is ElementMatch!2071) (regTwo!4655 (regOne!4654 r!27177)))) b!829504))

(assert (= (and b!829265 ((_ is Concat!3802) (regTwo!4655 (regOne!4654 r!27177)))) b!829505))

(assert (= (and b!829265 ((_ is Star!2071) (regTwo!4655 (regOne!4654 r!27177)))) b!829506))

(assert (= (and b!829265 ((_ is Union!2071) (regTwo!4655 (regOne!4654 r!27177)))) b!829507))

(declare-fun e!546731 () Bool)

(assert (=> b!829269 (= tp!259519 e!546731)))

(declare-fun b!829517 () Bool)

(declare-fun tp!259583 () Bool)

(declare-fun tp!259582 () Bool)

(assert (=> b!829517 (= e!546731 (and tp!259583 tp!259582))))

(declare-fun b!829516 () Bool)

(assert (=> b!829516 (= e!546731 tp_is_empty!3865)))

(declare-fun b!829519 () Bool)

(declare-fun tp!259584 () Bool)

(declare-fun tp!259581 () Bool)

(assert (=> b!829519 (= e!546731 (and tp!259584 tp!259581))))

(declare-fun b!829518 () Bool)

(declare-fun tp!259580 () Bool)

(assert (=> b!829518 (= e!546731 tp!259580)))

(assert (= (and b!829269 ((_ is ElementMatch!2071) (regOne!4655 (regTwo!4654 r!27177)))) b!829516))

(assert (= (and b!829269 ((_ is Concat!3802) (regOne!4655 (regTwo!4654 r!27177)))) b!829517))

(assert (= (and b!829269 ((_ is Star!2071) (regOne!4655 (regTwo!4654 r!27177)))) b!829518))

(assert (= (and b!829269 ((_ is Union!2071) (regOne!4655 (regTwo!4654 r!27177)))) b!829519))

(declare-fun e!546732 () Bool)

(assert (=> b!829269 (= tp!259516 e!546732)))

(declare-fun b!829521 () Bool)

(declare-fun tp!259588 () Bool)

(declare-fun tp!259587 () Bool)

(assert (=> b!829521 (= e!546732 (and tp!259588 tp!259587))))

(declare-fun b!829520 () Bool)

(assert (=> b!829520 (= e!546732 tp_is_empty!3865)))

(declare-fun b!829523 () Bool)

(declare-fun tp!259589 () Bool)

(declare-fun tp!259586 () Bool)

(assert (=> b!829523 (= e!546732 (and tp!259589 tp!259586))))

(declare-fun b!829522 () Bool)

(declare-fun tp!259585 () Bool)

(assert (=> b!829522 (= e!546732 tp!259585)))

(assert (= (and b!829269 ((_ is ElementMatch!2071) (regTwo!4655 (regTwo!4654 r!27177)))) b!829520))

(assert (= (and b!829269 ((_ is Concat!3802) (regTwo!4655 (regTwo!4654 r!27177)))) b!829521))

(assert (= (and b!829269 ((_ is Star!2071) (regTwo!4655 (regTwo!4654 r!27177)))) b!829522))

(assert (= (and b!829269 ((_ is Union!2071) (regTwo!4655 (regTwo!4654 r!27177)))) b!829523))

(declare-fun e!546733 () Bool)

(assert (=> b!829264 (= tp!259510 e!546733)))

(declare-fun b!829525 () Bool)

(declare-fun tp!259593 () Bool)

(declare-fun tp!259592 () Bool)

(assert (=> b!829525 (= e!546733 (and tp!259593 tp!259592))))

(declare-fun b!829524 () Bool)

(assert (=> b!829524 (= e!546733 tp_is_empty!3865)))

(declare-fun b!829527 () Bool)

(declare-fun tp!259594 () Bool)

(declare-fun tp!259591 () Bool)

(assert (=> b!829527 (= e!546733 (and tp!259594 tp!259591))))

(declare-fun b!829526 () Bool)

(declare-fun tp!259590 () Bool)

(assert (=> b!829526 (= e!546733 tp!259590)))

(assert (= (and b!829264 ((_ is ElementMatch!2071) (reg!2400 (regOne!4654 r!27177)))) b!829524))

(assert (= (and b!829264 ((_ is Concat!3802) (reg!2400 (regOne!4654 r!27177)))) b!829525))

(assert (= (and b!829264 ((_ is Star!2071) (reg!2400 (regOne!4654 r!27177)))) b!829526))

(assert (= (and b!829264 ((_ is Union!2071) (reg!2400 (regOne!4654 r!27177)))) b!829527))

(declare-fun e!546734 () Bool)

(assert (=> b!829273 (= tp!259524 e!546734)))

(declare-fun b!829529 () Bool)

(declare-fun tp!259598 () Bool)

(declare-fun tp!259597 () Bool)

(assert (=> b!829529 (= e!546734 (and tp!259598 tp!259597))))

(declare-fun b!829528 () Bool)

(assert (=> b!829528 (= e!546734 tp_is_empty!3865)))

(declare-fun b!829531 () Bool)

(declare-fun tp!259599 () Bool)

(declare-fun tp!259596 () Bool)

(assert (=> b!829531 (= e!546734 (and tp!259599 tp!259596))))

(declare-fun b!829530 () Bool)

(declare-fun tp!259595 () Bool)

(assert (=> b!829530 (= e!546734 tp!259595)))

(assert (= (and b!829273 ((_ is ElementMatch!2071) (regOne!4655 (reg!2400 r!27177)))) b!829528))

(assert (= (and b!829273 ((_ is Concat!3802) (regOne!4655 (reg!2400 r!27177)))) b!829529))

(assert (= (and b!829273 ((_ is Star!2071) (regOne!4655 (reg!2400 r!27177)))) b!829530))

(assert (= (and b!829273 ((_ is Union!2071) (regOne!4655 (reg!2400 r!27177)))) b!829531))

(declare-fun e!546735 () Bool)

(assert (=> b!829273 (= tp!259521 e!546735)))

(declare-fun b!829533 () Bool)

(declare-fun tp!259603 () Bool)

(declare-fun tp!259602 () Bool)

(assert (=> b!829533 (= e!546735 (and tp!259603 tp!259602))))

(declare-fun b!829532 () Bool)

(assert (=> b!829532 (= e!546735 tp_is_empty!3865)))

(declare-fun b!829535 () Bool)

(declare-fun tp!259604 () Bool)

(declare-fun tp!259601 () Bool)

(assert (=> b!829535 (= e!546735 (and tp!259604 tp!259601))))

(declare-fun b!829534 () Bool)

(declare-fun tp!259600 () Bool)

(assert (=> b!829534 (= e!546735 tp!259600)))

(assert (= (and b!829273 ((_ is ElementMatch!2071) (regTwo!4655 (reg!2400 r!27177)))) b!829532))

(assert (= (and b!829273 ((_ is Concat!3802) (regTwo!4655 (reg!2400 r!27177)))) b!829533))

(assert (= (and b!829273 ((_ is Star!2071) (regTwo!4655 (reg!2400 r!27177)))) b!829534))

(assert (= (and b!829273 ((_ is Union!2071) (regTwo!4655 (reg!2400 r!27177)))) b!829535))

(declare-fun e!546741 () Bool)

(assert (=> b!829268 (= tp!259515 e!546741)))

(declare-fun b!829547 () Bool)

(declare-fun tp!259608 () Bool)

(declare-fun tp!259607 () Bool)

(assert (=> b!829547 (= e!546741 (and tp!259608 tp!259607))))

(declare-fun b!829545 () Bool)

(assert (=> b!829545 (= e!546741 tp_is_empty!3865)))

(declare-fun b!829549 () Bool)

(declare-fun tp!259609 () Bool)

(declare-fun tp!259606 () Bool)

(assert (=> b!829549 (= e!546741 (and tp!259609 tp!259606))))

(declare-fun b!829548 () Bool)

(declare-fun tp!259605 () Bool)

(assert (=> b!829548 (= e!546741 tp!259605)))

(assert (= (and b!829268 ((_ is ElementMatch!2071) (reg!2400 (regTwo!4654 r!27177)))) b!829545))

(assert (= (and b!829268 ((_ is Concat!3802) (reg!2400 (regTwo!4654 r!27177)))) b!829547))

(assert (= (and b!829268 ((_ is Star!2071) (reg!2400 (regTwo!4654 r!27177)))) b!829548))

(assert (= (and b!829268 ((_ is Union!2071) (reg!2400 (regTwo!4654 r!27177)))) b!829549))

(declare-fun e!546742 () Bool)

(assert (=> b!829277 (= tp!259529 e!546742)))

(declare-fun b!829551 () Bool)

(declare-fun tp!259613 () Bool)

(declare-fun tp!259612 () Bool)

(assert (=> b!829551 (= e!546742 (and tp!259613 tp!259612))))

(declare-fun b!829550 () Bool)

(assert (=> b!829550 (= e!546742 tp_is_empty!3865)))

(declare-fun b!829553 () Bool)

(declare-fun tp!259614 () Bool)

(declare-fun tp!259611 () Bool)

(assert (=> b!829553 (= e!546742 (and tp!259614 tp!259611))))

(declare-fun b!829552 () Bool)

(declare-fun tp!259610 () Bool)

(assert (=> b!829552 (= e!546742 tp!259610)))

(assert (= (and b!829277 ((_ is ElementMatch!2071) (regOne!4655 (regOne!4655 r!27177)))) b!829550))

(assert (= (and b!829277 ((_ is Concat!3802) (regOne!4655 (regOne!4655 r!27177)))) b!829551))

(assert (= (and b!829277 ((_ is Star!2071) (regOne!4655 (regOne!4655 r!27177)))) b!829552))

(assert (= (and b!829277 ((_ is Union!2071) (regOne!4655 (regOne!4655 r!27177)))) b!829553))

(declare-fun e!546743 () Bool)

(assert (=> b!829277 (= tp!259526 e!546743)))

(declare-fun b!829555 () Bool)

(declare-fun tp!259618 () Bool)

(declare-fun tp!259617 () Bool)

(assert (=> b!829555 (= e!546743 (and tp!259618 tp!259617))))

(declare-fun b!829554 () Bool)

(assert (=> b!829554 (= e!546743 tp_is_empty!3865)))

(declare-fun b!829557 () Bool)

(declare-fun tp!259619 () Bool)

(declare-fun tp!259616 () Bool)

(assert (=> b!829557 (= e!546743 (and tp!259619 tp!259616))))

(declare-fun b!829556 () Bool)

(declare-fun tp!259615 () Bool)

(assert (=> b!829556 (= e!546743 tp!259615)))

(assert (= (and b!829277 ((_ is ElementMatch!2071) (regTwo!4655 (regOne!4655 r!27177)))) b!829554))

(assert (= (and b!829277 ((_ is Concat!3802) (regTwo!4655 (regOne!4655 r!27177)))) b!829555))

(assert (= (and b!829277 ((_ is Star!2071) (regTwo!4655 (regOne!4655 r!27177)))) b!829556))

(assert (= (and b!829277 ((_ is Union!2071) (regTwo!4655 (regOne!4655 r!27177)))) b!829557))

(declare-fun e!546744 () Bool)

(assert (=> b!829263 (= tp!259513 e!546744)))

(declare-fun b!829559 () Bool)

(declare-fun tp!259623 () Bool)

(declare-fun tp!259622 () Bool)

(assert (=> b!829559 (= e!546744 (and tp!259623 tp!259622))))

(declare-fun b!829558 () Bool)

(assert (=> b!829558 (= e!546744 tp_is_empty!3865)))

(declare-fun b!829561 () Bool)

(declare-fun tp!259624 () Bool)

(declare-fun tp!259621 () Bool)

(assert (=> b!829561 (= e!546744 (and tp!259624 tp!259621))))

(declare-fun b!829560 () Bool)

(declare-fun tp!259620 () Bool)

(assert (=> b!829560 (= e!546744 tp!259620)))

(assert (= (and b!829263 ((_ is ElementMatch!2071) (regOne!4654 (regOne!4654 r!27177)))) b!829558))

(assert (= (and b!829263 ((_ is Concat!3802) (regOne!4654 (regOne!4654 r!27177)))) b!829559))

(assert (= (and b!829263 ((_ is Star!2071) (regOne!4654 (regOne!4654 r!27177)))) b!829560))

(assert (= (and b!829263 ((_ is Union!2071) (regOne!4654 (regOne!4654 r!27177)))) b!829561))

(declare-fun e!546745 () Bool)

(assert (=> b!829263 (= tp!259512 e!546745)))

(declare-fun b!829563 () Bool)

(declare-fun tp!259628 () Bool)

(declare-fun tp!259627 () Bool)

(assert (=> b!829563 (= e!546745 (and tp!259628 tp!259627))))

(declare-fun b!829562 () Bool)

(assert (=> b!829562 (= e!546745 tp_is_empty!3865)))

(declare-fun b!829565 () Bool)

(declare-fun tp!259629 () Bool)

(declare-fun tp!259626 () Bool)

(assert (=> b!829565 (= e!546745 (and tp!259629 tp!259626))))

(declare-fun b!829564 () Bool)

(declare-fun tp!259625 () Bool)

(assert (=> b!829564 (= e!546745 tp!259625)))

(assert (= (and b!829263 ((_ is ElementMatch!2071) (regTwo!4654 (regOne!4654 r!27177)))) b!829562))

(assert (= (and b!829263 ((_ is Concat!3802) (regTwo!4654 (regOne!4654 r!27177)))) b!829563))

(assert (= (and b!829263 ((_ is Star!2071) (regTwo!4654 (regOne!4654 r!27177)))) b!829564))

(assert (= (and b!829263 ((_ is Union!2071) (regTwo!4654 (regOne!4654 r!27177)))) b!829565))

(declare-fun e!546746 () Bool)

(assert (=> b!829272 (= tp!259520 e!546746)))

(declare-fun b!829567 () Bool)

(declare-fun tp!259633 () Bool)

(declare-fun tp!259632 () Bool)

(assert (=> b!829567 (= e!546746 (and tp!259633 tp!259632))))

(declare-fun b!829566 () Bool)

(assert (=> b!829566 (= e!546746 tp_is_empty!3865)))

(declare-fun b!829569 () Bool)

(declare-fun tp!259634 () Bool)

(declare-fun tp!259631 () Bool)

(assert (=> b!829569 (= e!546746 (and tp!259634 tp!259631))))

(declare-fun b!829568 () Bool)

(declare-fun tp!259630 () Bool)

(assert (=> b!829568 (= e!546746 tp!259630)))

(assert (= (and b!829272 ((_ is ElementMatch!2071) (reg!2400 (reg!2400 r!27177)))) b!829566))

(assert (= (and b!829272 ((_ is Concat!3802) (reg!2400 (reg!2400 r!27177)))) b!829567))

(assert (= (and b!829272 ((_ is Star!2071) (reg!2400 (reg!2400 r!27177)))) b!829568))

(assert (= (and b!829272 ((_ is Union!2071) (reg!2400 (reg!2400 r!27177)))) b!829569))

(declare-fun e!546747 () Bool)

(assert (=> b!829281 (= tp!259534 e!546747)))

(declare-fun b!829571 () Bool)

(declare-fun tp!259638 () Bool)

(declare-fun tp!259637 () Bool)

(assert (=> b!829571 (= e!546747 (and tp!259638 tp!259637))))

(declare-fun b!829570 () Bool)

(assert (=> b!829570 (= e!546747 tp_is_empty!3865)))

(declare-fun b!829573 () Bool)

(declare-fun tp!259639 () Bool)

(declare-fun tp!259636 () Bool)

(assert (=> b!829573 (= e!546747 (and tp!259639 tp!259636))))

(declare-fun b!829572 () Bool)

(declare-fun tp!259635 () Bool)

(assert (=> b!829572 (= e!546747 tp!259635)))

(assert (= (and b!829281 ((_ is ElementMatch!2071) (regOne!4655 (regTwo!4655 r!27177)))) b!829570))

(assert (= (and b!829281 ((_ is Concat!3802) (regOne!4655 (regTwo!4655 r!27177)))) b!829571))

(assert (= (and b!829281 ((_ is Star!2071) (regOne!4655 (regTwo!4655 r!27177)))) b!829572))

(assert (= (and b!829281 ((_ is Union!2071) (regOne!4655 (regTwo!4655 r!27177)))) b!829573))

(declare-fun e!546748 () Bool)

(assert (=> b!829281 (= tp!259531 e!546748)))

(declare-fun b!829575 () Bool)

(declare-fun tp!259643 () Bool)

(declare-fun tp!259642 () Bool)

(assert (=> b!829575 (= e!546748 (and tp!259643 tp!259642))))

(declare-fun b!829574 () Bool)

(assert (=> b!829574 (= e!546748 tp_is_empty!3865)))

(declare-fun b!829577 () Bool)

(declare-fun tp!259644 () Bool)

(declare-fun tp!259641 () Bool)

(assert (=> b!829577 (= e!546748 (and tp!259644 tp!259641))))

(declare-fun b!829576 () Bool)

(declare-fun tp!259640 () Bool)

(assert (=> b!829576 (= e!546748 tp!259640)))

(assert (= (and b!829281 ((_ is ElementMatch!2071) (regTwo!4655 (regTwo!4655 r!27177)))) b!829574))

(assert (= (and b!829281 ((_ is Concat!3802) (regTwo!4655 (regTwo!4655 r!27177)))) b!829575))

(assert (= (and b!829281 ((_ is Star!2071) (regTwo!4655 (regTwo!4655 r!27177)))) b!829576))

(assert (= (and b!829281 ((_ is Union!2071) (regTwo!4655 (regTwo!4655 r!27177)))) b!829577))

(declare-fun e!546749 () Bool)

(assert (=> b!829267 (= tp!259518 e!546749)))

(declare-fun b!829579 () Bool)

(declare-fun tp!259648 () Bool)

(declare-fun tp!259647 () Bool)

(assert (=> b!829579 (= e!546749 (and tp!259648 tp!259647))))

(declare-fun b!829578 () Bool)

(assert (=> b!829578 (= e!546749 tp_is_empty!3865)))

(declare-fun b!829581 () Bool)

(declare-fun tp!259649 () Bool)

(declare-fun tp!259646 () Bool)

(assert (=> b!829581 (= e!546749 (and tp!259649 tp!259646))))

(declare-fun b!829580 () Bool)

(declare-fun tp!259645 () Bool)

(assert (=> b!829580 (= e!546749 tp!259645)))

(assert (= (and b!829267 ((_ is ElementMatch!2071) (regOne!4654 (regTwo!4654 r!27177)))) b!829578))

(assert (= (and b!829267 ((_ is Concat!3802) (regOne!4654 (regTwo!4654 r!27177)))) b!829579))

(assert (= (and b!829267 ((_ is Star!2071) (regOne!4654 (regTwo!4654 r!27177)))) b!829580))

(assert (= (and b!829267 ((_ is Union!2071) (regOne!4654 (regTwo!4654 r!27177)))) b!829581))

(declare-fun e!546750 () Bool)

(assert (=> b!829267 (= tp!259517 e!546750)))

(declare-fun b!829587 () Bool)

(declare-fun tp!259653 () Bool)

(declare-fun tp!259652 () Bool)

(assert (=> b!829587 (= e!546750 (and tp!259653 tp!259652))))

(declare-fun b!829585 () Bool)

(assert (=> b!829585 (= e!546750 tp_is_empty!3865)))

(declare-fun b!829589 () Bool)

(declare-fun tp!259654 () Bool)

(declare-fun tp!259651 () Bool)

(assert (=> b!829589 (= e!546750 (and tp!259654 tp!259651))))

(declare-fun b!829588 () Bool)

(declare-fun tp!259650 () Bool)

(assert (=> b!829588 (= e!546750 tp!259650)))

(assert (= (and b!829267 ((_ is ElementMatch!2071) (regTwo!4654 (regTwo!4654 r!27177)))) b!829585))

(assert (= (and b!829267 ((_ is Concat!3802) (regTwo!4654 (regTwo!4654 r!27177)))) b!829587))

(assert (= (and b!829267 ((_ is Star!2071) (regTwo!4654 (regTwo!4654 r!27177)))) b!829588))

(assert (= (and b!829267 ((_ is Union!2071) (regTwo!4654 (regTwo!4654 r!27177)))) b!829589))

(declare-fun e!546753 () Bool)

(assert (=> b!829276 (= tp!259525 e!546753)))

(declare-fun b!829591 () Bool)

(declare-fun tp!259658 () Bool)

(declare-fun tp!259657 () Bool)

(assert (=> b!829591 (= e!546753 (and tp!259658 tp!259657))))

(declare-fun b!829590 () Bool)

(assert (=> b!829590 (= e!546753 tp_is_empty!3865)))

(declare-fun b!829593 () Bool)

(declare-fun tp!259659 () Bool)

(declare-fun tp!259656 () Bool)

(assert (=> b!829593 (= e!546753 (and tp!259659 tp!259656))))

(declare-fun b!829592 () Bool)

(declare-fun tp!259655 () Bool)

(assert (=> b!829592 (= e!546753 tp!259655)))

(assert (= (and b!829276 ((_ is ElementMatch!2071) (reg!2400 (regOne!4655 r!27177)))) b!829590))

(assert (= (and b!829276 ((_ is Concat!3802) (reg!2400 (regOne!4655 r!27177)))) b!829591))

(assert (= (and b!829276 ((_ is Star!2071) (reg!2400 (regOne!4655 r!27177)))) b!829592))

(assert (= (and b!829276 ((_ is Union!2071) (reg!2400 (regOne!4655 r!27177)))) b!829593))

(check-sat (not b!829503) (not b!829531) (not b!829569) (not b!829567) (not b!829533) (not b!829576) (not b!829575) (not b!829580) (not d!259907) (not b!829549) (not b!829557) (not b!829522) (not b!829329) (not b!829425) (not bm!48661) (not d!259915) (not b!829499) (not b!829591) (not bm!48644) (not bm!48677) (not b!829465) (not d!259903) (not b!829587) (not b!829553) (not b!829494) (not b!829506) (not bm!48665) (not b!829521) (not d!259877) (not b!829551) (not b!829527) (not bm!48655) (not b!829449) (not b!829517) (not b!829491) (not b!829563) (not b!829405) (not bm!48651) (not b!829301) (not b!829463) (not b!829530) (not d!259921) (not bm!48663) (not b!829450) (not b!829556) (not bm!48647) (not b!829555) (not b!829519) (not bm!48674) (not b!829369) (not b!829548) (not b!829469) (not b!829298) (not b!829333) (not bm!48670) (not bm!48659) (not b!829489) (not b!829297) (not b!829571) (not b!829457) (not b!829490) (not bm!48682) (not b!829407) (not b!829467) (not b!829559) (not b!829431) (not d!259899) (not b!829487) (not b!829501) (not b!829419) (not bm!48648) (not b!829311) (not b!829486) (not bm!48645) (not bm!48642) (not b!829577) (not bm!48658) (not d!259929) (not bm!48686) (not b!829502) (not bm!48640) (not d!259881) (not d!259933) (not b!829592) (not b!829326) (not b!829471) (not b!829581) (not bm!48641) (not bm!48649) (not bm!48694) (not b!829437) (not d!259935) (not bm!48685) (not b!829408) (not bm!48652) (not b!829573) (not b!829366) (not b!829526) (not b!829588) (not bm!48638) (not b!829389) (not b!829464) (not b!829507) (not d!259919) (not bm!48662) (not b!829534) (not b!829472) (not b!829399) tp_is_empty!3865 (not b!829303) (not bm!48654) (not bm!48684) (not b!829413) (not b!829579) (not bm!48656) (not b!829552) (not d!259889) (not bm!48669) (not b!829304) (not b!829547) (not b!829565) (not b!829447) (not bm!48693) (not d!259923) (not b!829350) (not bm!48675) (not b!829535) (not b!829529) (not b!829523) (not bm!48672) (not b!829485) (not bm!48667) (not b!829561) (not b!829495) (not b!829505) (not b!829287) (not b!829593) (not d!259941) (not b!829518) (not d!259893) (not b!829572) (not b!829473) (not bm!48691) (not b!829589) (not b!829525) (not b!829411) (not b!829493) (not b!829568) (not b!829468) (not b!829497) (not b!829328) (not d!259879) (not bm!48687) (not bm!48680) (not b!829498) (not bm!48679) (not b!829318) (not b!829560) (not b!829564) (not bm!48689))
(check-sat)
