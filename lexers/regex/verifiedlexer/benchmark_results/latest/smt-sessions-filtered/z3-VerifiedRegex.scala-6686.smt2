; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350770 () Bool)

(assert start!350770)

(declare-fun b!3726225 () Bool)

(declare-fun e!2306010 () Bool)

(declare-fun tp!1133682 () Bool)

(assert (=> b!3726225 (= e!2306010 tp!1133682)))

(declare-fun b!3726226 () Bool)

(declare-fun tp!1133684 () Bool)

(declare-fun tp!1133680 () Bool)

(assert (=> b!3726226 (= e!2306010 (and tp!1133684 tp!1133680))))

(declare-fun b!3726227 () Bool)

(declare-fun res!1513661 () Bool)

(declare-fun e!2306009 () Bool)

(assert (=> b!3726227 (=> (not res!1513661) (not e!2306009))))

(declare-datatypes ((C!22008 0))(
  ( (C!22009 (val!13052 Int)) )
))
(declare-datatypes ((Regex!10911 0))(
  ( (ElementMatch!10911 (c!644695 C!22008)) (Concat!17182 (regOne!22334 Regex!10911) (regTwo!22334 Regex!10911)) (EmptyExpr!10911) (Star!10911 (reg!11240 Regex!10911)) (EmptyLang!10911) (Union!10911 (regOne!22335 Regex!10911) (regTwo!22335 Regex!10911)) )
))
(declare-fun r!26968 () Regex!10911)

(declare-fun cNot!42 () C!22008)

(declare-datatypes ((List!39792 0))(
  ( (Nil!39668) (Cons!39668 (h!45088 C!22008) (t!302475 List!39792)) )
))
(declare-fun contains!8004 (List!39792 C!22008) Bool)

(declare-fun usedCharacters!1174 (Regex!10911) List!39792)

(assert (=> b!3726227 (= res!1513661 (not (contains!8004 (usedCharacters!1174 r!26968) cNot!42)))))

(declare-fun b!3726228 () Bool)

(declare-fun res!1513662 () Bool)

(assert (=> b!3726228 (=> (not res!1513662) (not e!2306009))))

(get-info :version)

(assert (=> b!3726228 (= res!1513662 (and (not ((_ is EmptyExpr!10911) r!26968)) (not ((_ is EmptyLang!10911) r!26968)) (not ((_ is ElementMatch!10911) r!26968)) ((_ is Union!10911) r!26968)))))

(declare-fun b!3726229 () Bool)

(declare-fun e!2306008 () Bool)

(assert (=> b!3726229 (= e!2306008 (not (contains!8004 (usedCharacters!1174 (regTwo!22335 r!26968)) cNot!42)))))

(declare-fun b!3726230 () Bool)

(declare-fun tp!1133683 () Bool)

(declare-fun tp!1133681 () Bool)

(assert (=> b!3726230 (= e!2306010 (and tp!1133683 tp!1133681))))

(declare-fun res!1513664 () Bool)

(assert (=> start!350770 (=> (not res!1513664) (not e!2306009))))

(declare-fun validRegex!5018 (Regex!10911) Bool)

(assert (=> start!350770 (= res!1513664 (validRegex!5018 r!26968))))

(assert (=> start!350770 e!2306009))

(assert (=> start!350770 e!2306010))

(declare-fun tp_is_empty!18837 () Bool)

(assert (=> start!350770 tp_is_empty!18837))

(declare-fun b!3726231 () Bool)

(assert (=> b!3726231 (= e!2306010 tp_is_empty!18837)))

(declare-fun b!3726232 () Bool)

(assert (=> b!3726232 (= e!2306009 (not e!2306008))))

(declare-fun res!1513663 () Bool)

(assert (=> b!3726232 (=> res!1513663 e!2306008)))

(assert (=> b!3726232 (= res!1513663 (not (validRegex!5018 (regTwo!22335 r!26968))))))

(declare-fun c!13797 () C!22008)

(declare-fun derivativeStep!3358 (Regex!10911 C!22008) Regex!10911)

(assert (=> b!3726232 (not (contains!8004 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57572 0))(
  ( (Unit!57573) )
))
(declare-fun lt!1298386 () Unit!57572)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!42 (Regex!10911 C!22008 C!22008) Unit!57572)

(assert (=> b!3726232 (= lt!1298386 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!42 (regOne!22335 r!26968) c!13797 cNot!42))))

(assert (= (and start!350770 res!1513664) b!3726227))

(assert (= (and b!3726227 res!1513661) b!3726228))

(assert (= (and b!3726228 res!1513662) b!3726232))

(assert (= (and b!3726232 (not res!1513663)) b!3726229))

(assert (= (and start!350770 ((_ is ElementMatch!10911) r!26968)) b!3726231))

(assert (= (and start!350770 ((_ is Concat!17182) r!26968)) b!3726226))

(assert (= (and start!350770 ((_ is Star!10911) r!26968)) b!3726225))

(assert (= (and start!350770 ((_ is Union!10911) r!26968)) b!3726230))

(declare-fun m!4227829 () Bool)

(assert (=> b!3726227 m!4227829))

(assert (=> b!3726227 m!4227829))

(declare-fun m!4227831 () Bool)

(assert (=> b!3726227 m!4227831))

(declare-fun m!4227833 () Bool)

(assert (=> b!3726229 m!4227833))

(assert (=> b!3726229 m!4227833))

(declare-fun m!4227835 () Bool)

(assert (=> b!3726229 m!4227835))

(declare-fun m!4227837 () Bool)

(assert (=> start!350770 m!4227837))

(declare-fun m!4227839 () Bool)

(assert (=> b!3726232 m!4227839))

(declare-fun m!4227841 () Bool)

(assert (=> b!3726232 m!4227841))

(declare-fun m!4227843 () Bool)

(assert (=> b!3726232 m!4227843))

(assert (=> b!3726232 m!4227839))

(declare-fun m!4227845 () Bool)

(assert (=> b!3726232 m!4227845))

(assert (=> b!3726232 m!4227843))

(declare-fun m!4227847 () Bool)

(assert (=> b!3726232 m!4227847))

(check-sat (not b!3726229) (not b!3726227) tp_is_empty!18837 (not b!3726226) (not start!350770) (not b!3726232) (not b!3726230) (not b!3726225))
(check-sat)
(get-model)

(declare-fun d!1089897 () Bool)

(declare-fun lt!1298391 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5768 (List!39792) (InoxSet C!22008))

(assert (=> d!1089897 (= lt!1298391 (select (content!5768 (usedCharacters!1174 (regTwo!22335 r!26968))) cNot!42))))

(declare-fun e!2306020 () Bool)

(assert (=> d!1089897 (= lt!1298391 e!2306020)))

(declare-fun res!1513674 () Bool)

(assert (=> d!1089897 (=> (not res!1513674) (not e!2306020))))

(assert (=> d!1089897 (= res!1513674 ((_ is Cons!39668) (usedCharacters!1174 (regTwo!22335 r!26968))))))

(assert (=> d!1089897 (= (contains!8004 (usedCharacters!1174 (regTwo!22335 r!26968)) cNot!42) lt!1298391)))

(declare-fun b!3726241 () Bool)

(declare-fun e!2306019 () Bool)

(assert (=> b!3726241 (= e!2306020 e!2306019)))

(declare-fun res!1513673 () Bool)

(assert (=> b!3726241 (=> res!1513673 e!2306019)))

(assert (=> b!3726241 (= res!1513673 (= (h!45088 (usedCharacters!1174 (regTwo!22335 r!26968))) cNot!42))))

(declare-fun b!3726242 () Bool)

(assert (=> b!3726242 (= e!2306019 (contains!8004 (t!302475 (usedCharacters!1174 (regTwo!22335 r!26968))) cNot!42))))

(assert (= (and d!1089897 res!1513674) b!3726241))

(assert (= (and b!3726241 (not res!1513673)) b!3726242))

(assert (=> d!1089897 m!4227833))

(declare-fun m!4227849 () Bool)

(assert (=> d!1089897 m!4227849))

(declare-fun m!4227851 () Bool)

(assert (=> d!1089897 m!4227851))

(declare-fun m!4227853 () Bool)

(assert (=> b!3726242 m!4227853))

(assert (=> b!3726229 d!1089897))

(declare-fun b!3726277 () Bool)

(declare-fun e!2306042 () List!39792)

(declare-fun call!271455 () List!39792)

(assert (=> b!3726277 (= e!2306042 call!271455)))

(declare-fun bm!271450 () Bool)

(declare-fun call!271457 () List!39792)

(declare-fun c!644714 () Bool)

(assert (=> bm!271450 (= call!271457 (usedCharacters!1174 (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))

(declare-fun c!644712 () Bool)

(declare-fun bm!271451 () Bool)

(assert (=> bm!271451 (= call!271455 (usedCharacters!1174 (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))

(declare-fun d!1089901 () Bool)

(declare-fun c!644713 () Bool)

(assert (=> d!1089901 (= c!644713 (or ((_ is EmptyExpr!10911) (regTwo!22335 r!26968)) ((_ is EmptyLang!10911) (regTwo!22335 r!26968))))))

(declare-fun e!2306040 () List!39792)

(assert (=> d!1089901 (= (usedCharacters!1174 (regTwo!22335 r!26968)) e!2306040)))

(declare-fun b!3726278 () Bool)

(declare-fun e!2306041 () List!39792)

(assert (=> b!3726278 (= e!2306042 e!2306041)))

(assert (=> b!3726278 (= c!644714 ((_ is Union!10911) (regTwo!22335 r!26968)))))

(declare-fun b!3726279 () Bool)

(declare-fun e!2306039 () List!39792)

(assert (=> b!3726279 (= e!2306039 (Cons!39668 (c!644695 (regTwo!22335 r!26968)) Nil!39668))))

(declare-fun b!3726280 () Bool)

(declare-fun call!271456 () List!39792)

(assert (=> b!3726280 (= e!2306041 call!271456)))

(declare-fun b!3726281 () Bool)

(assert (=> b!3726281 (= e!2306041 call!271456)))

(declare-fun bm!271452 () Bool)

(declare-fun call!271458 () List!39792)

(declare-fun ++!9835 (List!39792 List!39792) List!39792)

(assert (=> bm!271452 (= call!271456 (++!9835 (ite c!644714 call!271458 call!271457) (ite c!644714 call!271457 call!271458)))))

(declare-fun bm!271453 () Bool)

(assert (=> bm!271453 (= call!271458 call!271455)))

(declare-fun b!3726282 () Bool)

(assert (=> b!3726282 (= e!2306040 Nil!39668)))

(declare-fun b!3726283 () Bool)

(assert (=> b!3726283 (= e!2306040 e!2306039)))

(declare-fun c!644715 () Bool)

(assert (=> b!3726283 (= c!644715 ((_ is ElementMatch!10911) (regTwo!22335 r!26968)))))

(declare-fun b!3726284 () Bool)

(assert (=> b!3726284 (= c!644712 ((_ is Star!10911) (regTwo!22335 r!26968)))))

(assert (=> b!3726284 (= e!2306039 e!2306042)))

(assert (= (and d!1089901 c!644713) b!3726282))

(assert (= (and d!1089901 (not c!644713)) b!3726283))

(assert (= (and b!3726283 c!644715) b!3726279))

(assert (= (and b!3726283 (not c!644715)) b!3726284))

(assert (= (and b!3726284 c!644712) b!3726277))

(assert (= (and b!3726284 (not c!644712)) b!3726278))

(assert (= (and b!3726278 c!644714) b!3726281))

(assert (= (and b!3726278 (not c!644714)) b!3726280))

(assert (= (or b!3726281 b!3726280) bm!271453))

(assert (= (or b!3726281 b!3726280) bm!271450))

(assert (= (or b!3726281 b!3726280) bm!271452))

(assert (= (or b!3726277 bm!271453) bm!271451))

(declare-fun m!4227861 () Bool)

(assert (=> bm!271450 m!4227861))

(declare-fun m!4227863 () Bool)

(assert (=> bm!271451 m!4227863))

(declare-fun m!4227865 () Bool)

(assert (=> bm!271452 m!4227865))

(assert (=> b!3726229 d!1089901))

(declare-fun bm!271470 () Bool)

(declare-fun c!644728 () Bool)

(declare-fun c!644729 () Bool)

(declare-fun call!271477 () Bool)

(assert (=> bm!271470 (= call!271477 (validRegex!5018 (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))))))

(declare-fun b!3726329 () Bool)

(declare-fun e!2306081 () Bool)

(declare-fun e!2306080 () Bool)

(assert (=> b!3726329 (= e!2306081 e!2306080)))

(declare-fun res!1513699 () Bool)

(declare-fun nullable!3819 (Regex!10911) Bool)

(assert (=> b!3726329 (= res!1513699 (not (nullable!3819 (reg!11240 r!26968))))))

(assert (=> b!3726329 (=> (not res!1513699) (not e!2306080))))

(declare-fun bm!271471 () Bool)

(declare-fun call!271475 () Bool)

(assert (=> bm!271471 (= call!271475 (validRegex!5018 (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))))))

(declare-fun b!3726330 () Bool)

(declare-fun e!2306079 () Bool)

(assert (=> b!3726330 (= e!2306079 e!2306081)))

(assert (=> b!3726330 (= c!644728 ((_ is Star!10911) r!26968))))

(declare-fun bm!271472 () Bool)

(declare-fun call!271476 () Bool)

(assert (=> bm!271472 (= call!271476 call!271477)))

(declare-fun b!3726331 () Bool)

(declare-fun e!2306078 () Bool)

(declare-fun e!2306075 () Bool)

(assert (=> b!3726331 (= e!2306078 e!2306075)))

(declare-fun res!1513698 () Bool)

(assert (=> b!3726331 (=> (not res!1513698) (not e!2306075))))

(assert (=> b!3726331 (= res!1513698 call!271475)))

(declare-fun b!3726332 () Bool)

(assert (=> b!3726332 (= e!2306080 call!271477)))

(declare-fun b!3726333 () Bool)

(assert (=> b!3726333 (= e!2306075 call!271476)))

(declare-fun d!1089905 () Bool)

(declare-fun res!1513700 () Bool)

(assert (=> d!1089905 (=> res!1513700 e!2306079)))

(assert (=> d!1089905 (= res!1513700 ((_ is ElementMatch!10911) r!26968))))

(assert (=> d!1089905 (= (validRegex!5018 r!26968) e!2306079)))

(declare-fun b!3726334 () Bool)

(declare-fun e!2306076 () Bool)

(assert (=> b!3726334 (= e!2306081 e!2306076)))

(assert (=> b!3726334 (= c!644729 ((_ is Union!10911) r!26968))))

(declare-fun b!3726335 () Bool)

(declare-fun e!2306077 () Bool)

(assert (=> b!3726335 (= e!2306077 call!271476)))

(declare-fun b!3726336 () Bool)

(declare-fun res!1513701 () Bool)

(assert (=> b!3726336 (=> (not res!1513701) (not e!2306077))))

(assert (=> b!3726336 (= res!1513701 call!271475)))

(assert (=> b!3726336 (= e!2306076 e!2306077)))

(declare-fun b!3726337 () Bool)

(declare-fun res!1513697 () Bool)

(assert (=> b!3726337 (=> res!1513697 e!2306078)))

(assert (=> b!3726337 (= res!1513697 (not ((_ is Concat!17182) r!26968)))))

(assert (=> b!3726337 (= e!2306076 e!2306078)))

(assert (= (and d!1089905 (not res!1513700)) b!3726330))

(assert (= (and b!3726330 c!644728) b!3726329))

(assert (= (and b!3726330 (not c!644728)) b!3726334))

(assert (= (and b!3726329 res!1513699) b!3726332))

(assert (= (and b!3726334 c!644729) b!3726336))

(assert (= (and b!3726334 (not c!644729)) b!3726337))

(assert (= (and b!3726336 res!1513701) b!3726335))

(assert (= (and b!3726337 (not res!1513697)) b!3726331))

(assert (= (and b!3726331 res!1513698) b!3726333))

(assert (= (or b!3726335 b!3726333) bm!271472))

(assert (= (or b!3726336 b!3726331) bm!271471))

(assert (= (or b!3726332 bm!271472) bm!271470))

(declare-fun m!4227873 () Bool)

(assert (=> bm!271470 m!4227873))

(declare-fun m!4227875 () Bool)

(assert (=> b!3726329 m!4227875))

(declare-fun m!4227877 () Bool)

(assert (=> bm!271471 m!4227877))

(assert (=> start!350770 d!1089905))

(declare-fun d!1089909 () Bool)

(declare-fun lt!1298393 () Bool)

(assert (=> d!1089909 (= lt!1298393 (select (content!5768 (usedCharacters!1174 r!26968)) cNot!42))))

(declare-fun e!2306090 () Bool)

(assert (=> d!1089909 (= lt!1298393 e!2306090)))

(declare-fun res!1513708 () Bool)

(assert (=> d!1089909 (=> (not res!1513708) (not e!2306090))))

(assert (=> d!1089909 (= res!1513708 ((_ is Cons!39668) (usedCharacters!1174 r!26968)))))

(assert (=> d!1089909 (= (contains!8004 (usedCharacters!1174 r!26968) cNot!42) lt!1298393)))

(declare-fun b!3726347 () Bool)

(declare-fun e!2306089 () Bool)

(assert (=> b!3726347 (= e!2306090 e!2306089)))

(declare-fun res!1513707 () Bool)

(assert (=> b!3726347 (=> res!1513707 e!2306089)))

(assert (=> b!3726347 (= res!1513707 (= (h!45088 (usedCharacters!1174 r!26968)) cNot!42))))

(declare-fun b!3726348 () Bool)

(assert (=> b!3726348 (= e!2306089 (contains!8004 (t!302475 (usedCharacters!1174 r!26968)) cNot!42))))

(assert (= (and d!1089909 res!1513708) b!3726347))

(assert (= (and b!3726347 (not res!1513707)) b!3726348))

(assert (=> d!1089909 m!4227829))

(declare-fun m!4227885 () Bool)

(assert (=> d!1089909 m!4227885))

(declare-fun m!4227887 () Bool)

(assert (=> d!1089909 m!4227887))

(declare-fun m!4227889 () Bool)

(assert (=> b!3726348 m!4227889))

(assert (=> b!3726227 d!1089909))

(declare-fun b!3726351 () Bool)

(declare-fun e!2306096 () List!39792)

(declare-fun call!271481 () List!39792)

(assert (=> b!3726351 (= e!2306096 call!271481)))

(declare-fun bm!271476 () Bool)

(declare-fun call!271483 () List!39792)

(declare-fun c!644734 () Bool)

(assert (=> bm!271476 (= call!271483 (usedCharacters!1174 (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))))))

(declare-fun c!644732 () Bool)

(declare-fun bm!271477 () Bool)

(assert (=> bm!271477 (= call!271481 (usedCharacters!1174 (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))))))

(declare-fun d!1089913 () Bool)

(declare-fun c!644733 () Bool)

(assert (=> d!1089913 (= c!644733 (or ((_ is EmptyExpr!10911) r!26968) ((_ is EmptyLang!10911) r!26968)))))

(declare-fun e!2306094 () List!39792)

(assert (=> d!1089913 (= (usedCharacters!1174 r!26968) e!2306094)))

(declare-fun b!3726352 () Bool)

(declare-fun e!2306095 () List!39792)

(assert (=> b!3726352 (= e!2306096 e!2306095)))

(assert (=> b!3726352 (= c!644734 ((_ is Union!10911) r!26968))))

(declare-fun b!3726353 () Bool)

(declare-fun e!2306093 () List!39792)

(assert (=> b!3726353 (= e!2306093 (Cons!39668 (c!644695 r!26968) Nil!39668))))

(declare-fun b!3726354 () Bool)

(declare-fun call!271482 () List!39792)

(assert (=> b!3726354 (= e!2306095 call!271482)))

(declare-fun b!3726355 () Bool)

(assert (=> b!3726355 (= e!2306095 call!271482)))

(declare-fun call!271484 () List!39792)

(declare-fun bm!271478 () Bool)

(assert (=> bm!271478 (= call!271482 (++!9835 (ite c!644734 call!271484 call!271483) (ite c!644734 call!271483 call!271484)))))

(declare-fun bm!271479 () Bool)

(assert (=> bm!271479 (= call!271484 call!271481)))

(declare-fun b!3726356 () Bool)

(assert (=> b!3726356 (= e!2306094 Nil!39668)))

(declare-fun b!3726357 () Bool)

(assert (=> b!3726357 (= e!2306094 e!2306093)))

(declare-fun c!644735 () Bool)

(assert (=> b!3726357 (= c!644735 ((_ is ElementMatch!10911) r!26968))))

(declare-fun b!3726358 () Bool)

(assert (=> b!3726358 (= c!644732 ((_ is Star!10911) r!26968))))

(assert (=> b!3726358 (= e!2306093 e!2306096)))

(assert (= (and d!1089913 c!644733) b!3726356))

(assert (= (and d!1089913 (not c!644733)) b!3726357))

(assert (= (and b!3726357 c!644735) b!3726353))

(assert (= (and b!3726357 (not c!644735)) b!3726358))

(assert (= (and b!3726358 c!644732) b!3726351))

(assert (= (and b!3726358 (not c!644732)) b!3726352))

(assert (= (and b!3726352 c!644734) b!3726355))

(assert (= (and b!3726352 (not c!644734)) b!3726354))

(assert (= (or b!3726355 b!3726354) bm!271479))

(assert (= (or b!3726355 b!3726354) bm!271476))

(assert (= (or b!3726355 b!3726354) bm!271478))

(assert (= (or b!3726351 bm!271479) bm!271477))

(declare-fun m!4227897 () Bool)

(assert (=> bm!271476 m!4227897))

(declare-fun m!4227899 () Bool)

(assert (=> bm!271477 m!4227899))

(declare-fun m!4227901 () Bool)

(assert (=> bm!271478 m!4227901))

(assert (=> b!3726227 d!1089913))

(declare-fun b!3726367 () Bool)

(declare-fun e!2306104 () List!39792)

(declare-fun call!271489 () List!39792)

(assert (=> b!3726367 (= e!2306104 call!271489)))

(declare-fun bm!271484 () Bool)

(declare-fun c!644742 () Bool)

(declare-fun call!271491 () List!39792)

(assert (=> bm!271484 (= call!271491 (usedCharacters!1174 (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))))

(declare-fun bm!271485 () Bool)

(declare-fun c!644740 () Bool)

(assert (=> bm!271485 (= call!271489 (usedCharacters!1174 (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))))

(declare-fun d!1089917 () Bool)

(declare-fun c!644741 () Bool)

(assert (=> d!1089917 (= c!644741 (or ((_ is EmptyExpr!10911) (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) ((_ is EmptyLang!10911) (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))

(declare-fun e!2306102 () List!39792)

(assert (=> d!1089917 (= (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) e!2306102)))

(declare-fun b!3726368 () Bool)

(declare-fun e!2306103 () List!39792)

(assert (=> b!3726368 (= e!2306104 e!2306103)))

(assert (=> b!3726368 (= c!644742 ((_ is Union!10911) (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))

(declare-fun b!3726369 () Bool)

(declare-fun e!2306101 () List!39792)

(assert (=> b!3726369 (= e!2306101 (Cons!39668 (c!644695 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) Nil!39668))))

(declare-fun b!3726370 () Bool)

(declare-fun call!271490 () List!39792)

(assert (=> b!3726370 (= e!2306103 call!271490)))

(declare-fun b!3726371 () Bool)

(assert (=> b!3726371 (= e!2306103 call!271490)))

(declare-fun call!271492 () List!39792)

(declare-fun bm!271486 () Bool)

(assert (=> bm!271486 (= call!271490 (++!9835 (ite c!644742 call!271492 call!271491) (ite c!644742 call!271491 call!271492)))))

(declare-fun bm!271487 () Bool)

(assert (=> bm!271487 (= call!271492 call!271489)))

(declare-fun b!3726372 () Bool)

(assert (=> b!3726372 (= e!2306102 Nil!39668)))

(declare-fun b!3726373 () Bool)

(assert (=> b!3726373 (= e!2306102 e!2306101)))

(declare-fun c!644743 () Bool)

(assert (=> b!3726373 (= c!644743 ((_ is ElementMatch!10911) (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))

(declare-fun b!3726374 () Bool)

(assert (=> b!3726374 (= c!644740 ((_ is Star!10911) (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))

(assert (=> b!3726374 (= e!2306101 e!2306104)))

(assert (= (and d!1089917 c!644741) b!3726372))

(assert (= (and d!1089917 (not c!644741)) b!3726373))

(assert (= (and b!3726373 c!644743) b!3726369))

(assert (= (and b!3726373 (not c!644743)) b!3726374))

(assert (= (and b!3726374 c!644740) b!3726367))

(assert (= (and b!3726374 (not c!644740)) b!3726368))

(assert (= (and b!3726368 c!644742) b!3726371))

(assert (= (and b!3726368 (not c!644742)) b!3726370))

(assert (= (or b!3726371 b!3726370) bm!271487))

(assert (= (or b!3726371 b!3726370) bm!271484))

(assert (= (or b!3726371 b!3726370) bm!271486))

(assert (= (or b!3726367 bm!271487) bm!271485))

(declare-fun m!4227909 () Bool)

(assert (=> bm!271484 m!4227909))

(declare-fun m!4227911 () Bool)

(assert (=> bm!271485 m!4227911))

(declare-fun m!4227913 () Bool)

(assert (=> bm!271486 m!4227913))

(assert (=> b!3726232 d!1089917))

(declare-fun d!1089921 () Bool)

(declare-fun lt!1298395 () Bool)

(assert (=> d!1089921 (= lt!1298395 (select (content!5768 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))) cNot!42))))

(declare-fun e!2306110 () Bool)

(assert (=> d!1089921 (= lt!1298395 e!2306110)))

(declare-fun res!1513712 () Bool)

(assert (=> d!1089921 (=> (not res!1513712) (not e!2306110))))

(assert (=> d!1089921 (= res!1513712 ((_ is Cons!39668) (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))

(assert (=> d!1089921 (= (contains!8004 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) cNot!42) lt!1298395)))

(declare-fun b!3726383 () Bool)

(declare-fun e!2306109 () Bool)

(assert (=> b!3726383 (= e!2306110 e!2306109)))

(declare-fun res!1513711 () Bool)

(assert (=> b!3726383 (=> res!1513711 e!2306109)))

(assert (=> b!3726383 (= res!1513711 (= (h!45088 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))) cNot!42))))

(declare-fun b!3726384 () Bool)

(assert (=> b!3726384 (= e!2306109 (contains!8004 (t!302475 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089921 res!1513712) b!3726383))

(assert (= (and b!3726383 (not res!1513711)) b!3726384))

(assert (=> d!1089921 m!4227839))

(declare-fun m!4227921 () Bool)

(assert (=> d!1089921 m!4227921))

(declare-fun m!4227923 () Bool)

(assert (=> d!1089921 m!4227923))

(declare-fun m!4227925 () Bool)

(assert (=> b!3726384 m!4227925))

(assert (=> b!3726232 d!1089921))

(declare-fun d!1089925 () Bool)

(assert (=> d!1089925 (not (contains!8004 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298401 () Unit!57572)

(declare-fun choose!22223 (Regex!10911 C!22008 C!22008) Unit!57572)

(assert (=> d!1089925 (= lt!1298401 (choose!22223 (regOne!22335 r!26968) c!13797 cNot!42))))

(assert (=> d!1089925 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!42 (regOne!22335 r!26968) c!13797 cNot!42) lt!1298401)))

(declare-fun bs!575034 () Bool)

(assert (= bs!575034 d!1089925))

(assert (=> bs!575034 m!4227843))

(assert (=> bs!575034 m!4227843))

(assert (=> bs!575034 m!4227839))

(assert (=> bs!575034 m!4227839))

(assert (=> bs!575034 m!4227841))

(declare-fun m!4227933 () Bool)

(assert (=> bs!575034 m!4227933))

(assert (=> b!3726232 d!1089925))

(declare-fun bm!271492 () Bool)

(declare-fun c!644751 () Bool)

(declare-fun c!644750 () Bool)

(declare-fun call!271499 () Bool)

(assert (=> bm!271492 (= call!271499 (validRegex!5018 (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))

(declare-fun b!3726387 () Bool)

(declare-fun e!2306119 () Bool)

(declare-fun e!2306118 () Bool)

(assert (=> b!3726387 (= e!2306119 e!2306118)))

(declare-fun res!1513717 () Bool)

(assert (=> b!3726387 (= res!1513717 (not (nullable!3819 (reg!11240 (regTwo!22335 r!26968)))))))

(assert (=> b!3726387 (=> (not res!1513717) (not e!2306118))))

(declare-fun bm!271493 () Bool)

(declare-fun call!271497 () Bool)

(assert (=> bm!271493 (= call!271497 (validRegex!5018 (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))

(declare-fun b!3726388 () Bool)

(declare-fun e!2306117 () Bool)

(assert (=> b!3726388 (= e!2306117 e!2306119)))

(assert (=> b!3726388 (= c!644750 ((_ is Star!10911) (regTwo!22335 r!26968)))))

(declare-fun bm!271494 () Bool)

(declare-fun call!271498 () Bool)

(assert (=> bm!271494 (= call!271498 call!271499)))

(declare-fun b!3726389 () Bool)

(declare-fun e!2306116 () Bool)

(declare-fun e!2306113 () Bool)

(assert (=> b!3726389 (= e!2306116 e!2306113)))

(declare-fun res!1513716 () Bool)

(assert (=> b!3726389 (=> (not res!1513716) (not e!2306113))))

(assert (=> b!3726389 (= res!1513716 call!271497)))

(declare-fun b!3726390 () Bool)

(assert (=> b!3726390 (= e!2306118 call!271499)))

(declare-fun b!3726391 () Bool)

(assert (=> b!3726391 (= e!2306113 call!271498)))

(declare-fun d!1089929 () Bool)

(declare-fun res!1513718 () Bool)

(assert (=> d!1089929 (=> res!1513718 e!2306117)))

(assert (=> d!1089929 (= res!1513718 ((_ is ElementMatch!10911) (regTwo!22335 r!26968)))))

(assert (=> d!1089929 (= (validRegex!5018 (regTwo!22335 r!26968)) e!2306117)))

(declare-fun b!3726392 () Bool)

(declare-fun e!2306114 () Bool)

(assert (=> b!3726392 (= e!2306119 e!2306114)))

(assert (=> b!3726392 (= c!644751 ((_ is Union!10911) (regTwo!22335 r!26968)))))

(declare-fun b!3726393 () Bool)

(declare-fun e!2306115 () Bool)

(assert (=> b!3726393 (= e!2306115 call!271498)))

(declare-fun b!3726394 () Bool)

(declare-fun res!1513719 () Bool)

(assert (=> b!3726394 (=> (not res!1513719) (not e!2306115))))

(assert (=> b!3726394 (= res!1513719 call!271497)))

(assert (=> b!3726394 (= e!2306114 e!2306115)))

(declare-fun b!3726395 () Bool)

(declare-fun res!1513715 () Bool)

(assert (=> b!3726395 (=> res!1513715 e!2306116)))

(assert (=> b!3726395 (= res!1513715 (not ((_ is Concat!17182) (regTwo!22335 r!26968))))))

(assert (=> b!3726395 (= e!2306114 e!2306116)))

(assert (= (and d!1089929 (not res!1513718)) b!3726388))

(assert (= (and b!3726388 c!644750) b!3726387))

(assert (= (and b!3726388 (not c!644750)) b!3726392))

(assert (= (and b!3726387 res!1513717) b!3726390))

(assert (= (and b!3726392 c!644751) b!3726394))

(assert (= (and b!3726392 (not c!644751)) b!3726395))

(assert (= (and b!3726394 res!1513719) b!3726393))

(assert (= (and b!3726395 (not res!1513715)) b!3726389))

(assert (= (and b!3726389 res!1513716) b!3726391))

(assert (= (or b!3726393 b!3726391) bm!271494))

(assert (= (or b!3726394 b!3726389) bm!271493))

(assert (= (or b!3726390 bm!271494) bm!271492))

(declare-fun m!4227937 () Bool)

(assert (=> bm!271492 m!4227937))

(declare-fun m!4227939 () Bool)

(assert (=> b!3726387 m!4227939))

(declare-fun m!4227941 () Bool)

(assert (=> bm!271493 m!4227941))

(assert (=> b!3726232 d!1089929))

(declare-fun bm!271518 () Bool)

(declare-fun call!271523 () Regex!10911)

(declare-fun call!271524 () Regex!10911)

(assert (=> bm!271518 (= call!271523 call!271524)))

(declare-fun b!3726455 () Bool)

(declare-fun call!271526 () Regex!10911)

(declare-fun e!2306152 () Regex!10911)

(declare-fun call!271525 () Regex!10911)

(assert (=> b!3726455 (= e!2306152 (Union!10911 (Concat!17182 call!271525 (regTwo!22334 (regOne!22335 r!26968))) call!271526))))

(declare-fun b!3726456 () Bool)

(declare-fun e!2306153 () Regex!10911)

(assert (=> b!3726456 (= e!2306153 (ite (= c!13797 (c!644695 (regOne!22335 r!26968))) EmptyExpr!10911 EmptyLang!10911))))

(declare-fun b!3726457 () Bool)

(declare-fun e!2306156 () Regex!10911)

(assert (=> b!3726457 (= e!2306156 (Concat!17182 call!271523 (regOne!22335 r!26968)))))

(declare-fun d!1089933 () Bool)

(declare-fun lt!1298408 () Regex!10911)

(assert (=> d!1089933 (validRegex!5018 lt!1298408)))

(declare-fun e!2306155 () Regex!10911)

(assert (=> d!1089933 (= lt!1298408 e!2306155)))

(declare-fun c!644780 () Bool)

(assert (=> d!1089933 (= c!644780 (or ((_ is EmptyExpr!10911) (regOne!22335 r!26968)) ((_ is EmptyLang!10911) (regOne!22335 r!26968))))))

(assert (=> d!1089933 (validRegex!5018 (regOne!22335 r!26968))))

(assert (=> d!1089933 (= (derivativeStep!3358 (regOne!22335 r!26968) c!13797) lt!1298408)))

(declare-fun bm!271519 () Bool)

(assert (=> bm!271519 (= call!271526 call!271523)))

(declare-fun b!3726458 () Bool)

(declare-fun e!2306154 () Regex!10911)

(assert (=> b!3726458 (= e!2306154 e!2306156)))

(declare-fun c!644781 () Bool)

(assert (=> b!3726458 (= c!644781 ((_ is Star!10911) (regOne!22335 r!26968)))))

(declare-fun b!3726459 () Bool)

(assert (=> b!3726459 (= e!2306154 (Union!10911 call!271524 call!271525))))

(declare-fun b!3726460 () Bool)

(declare-fun c!644782 () Bool)

(assert (=> b!3726460 (= c!644782 (nullable!3819 (regOne!22334 (regOne!22335 r!26968))))))

(assert (=> b!3726460 (= e!2306156 e!2306152)))

(declare-fun bm!271520 () Bool)

(declare-fun c!644783 () Bool)

(assert (=> bm!271520 (= call!271525 (derivativeStep!3358 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))) c!13797))))

(declare-fun b!3726461 () Bool)

(assert (=> b!3726461 (= e!2306155 EmptyLang!10911)))

(declare-fun b!3726462 () Bool)

(assert (=> b!3726462 (= e!2306152 (Union!10911 (Concat!17182 call!271526 (regTwo!22334 (regOne!22335 r!26968))) EmptyLang!10911))))

(declare-fun bm!271521 () Bool)

(assert (=> bm!271521 (= call!271524 (derivativeStep!3358 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))) c!13797))))

(declare-fun b!3726463 () Bool)

(assert (=> b!3726463 (= e!2306155 e!2306153)))

(declare-fun c!644779 () Bool)

(assert (=> b!3726463 (= c!644779 ((_ is ElementMatch!10911) (regOne!22335 r!26968)))))

(declare-fun b!3726464 () Bool)

(assert (=> b!3726464 (= c!644783 ((_ is Union!10911) (regOne!22335 r!26968)))))

(assert (=> b!3726464 (= e!2306153 e!2306154)))

(assert (= (and d!1089933 c!644780) b!3726461))

(assert (= (and d!1089933 (not c!644780)) b!3726463))

(assert (= (and b!3726463 c!644779) b!3726456))

(assert (= (and b!3726463 (not c!644779)) b!3726464))

(assert (= (and b!3726464 c!644783) b!3726459))

(assert (= (and b!3726464 (not c!644783)) b!3726458))

(assert (= (and b!3726458 c!644781) b!3726457))

(assert (= (and b!3726458 (not c!644781)) b!3726460))

(assert (= (and b!3726460 c!644782) b!3726455))

(assert (= (and b!3726460 (not c!644782)) b!3726462))

(assert (= (or b!3726455 b!3726462) bm!271519))

(assert (= (or b!3726457 bm!271519) bm!271518))

(assert (= (or b!3726459 bm!271518) bm!271521))

(assert (= (or b!3726459 b!3726455) bm!271520))

(declare-fun m!4227959 () Bool)

(assert (=> d!1089933 m!4227959))

(declare-fun m!4227961 () Bool)

(assert (=> d!1089933 m!4227961))

(declare-fun m!4227963 () Bool)

(assert (=> b!3726460 m!4227963))

(declare-fun m!4227965 () Bool)

(assert (=> bm!271520 m!4227965))

(declare-fun m!4227967 () Bool)

(assert (=> bm!271521 m!4227967))

(assert (=> b!3726232 d!1089933))

(declare-fun b!3726508 () Bool)

(declare-fun e!2306166 () Bool)

(declare-fun tp!1133732 () Bool)

(declare-fun tp!1133734 () Bool)

(assert (=> b!3726508 (= e!2306166 (and tp!1133732 tp!1133734))))

(assert (=> b!3726230 (= tp!1133683 e!2306166)))

(declare-fun b!3726507 () Bool)

(declare-fun tp!1133730 () Bool)

(assert (=> b!3726507 (= e!2306166 tp!1133730)))

(declare-fun b!3726505 () Bool)

(assert (=> b!3726505 (= e!2306166 tp_is_empty!18837)))

(declare-fun b!3726506 () Bool)

(declare-fun tp!1133733 () Bool)

(declare-fun tp!1133731 () Bool)

(assert (=> b!3726506 (= e!2306166 (and tp!1133733 tp!1133731))))

(assert (= (and b!3726230 ((_ is ElementMatch!10911) (regOne!22335 r!26968))) b!3726505))

(assert (= (and b!3726230 ((_ is Concat!17182) (regOne!22335 r!26968))) b!3726506))

(assert (= (and b!3726230 ((_ is Star!10911) (regOne!22335 r!26968))) b!3726507))

(assert (= (and b!3726230 ((_ is Union!10911) (regOne!22335 r!26968))) b!3726508))

(declare-fun b!3726512 () Bool)

(declare-fun e!2306167 () Bool)

(declare-fun tp!1133737 () Bool)

(declare-fun tp!1133739 () Bool)

(assert (=> b!3726512 (= e!2306167 (and tp!1133737 tp!1133739))))

(assert (=> b!3726230 (= tp!1133681 e!2306167)))

(declare-fun b!3726511 () Bool)

(declare-fun tp!1133735 () Bool)

(assert (=> b!3726511 (= e!2306167 tp!1133735)))

(declare-fun b!3726509 () Bool)

(assert (=> b!3726509 (= e!2306167 tp_is_empty!18837)))

(declare-fun b!3726510 () Bool)

(declare-fun tp!1133738 () Bool)

(declare-fun tp!1133736 () Bool)

(assert (=> b!3726510 (= e!2306167 (and tp!1133738 tp!1133736))))

(assert (= (and b!3726230 ((_ is ElementMatch!10911) (regTwo!22335 r!26968))) b!3726509))

(assert (= (and b!3726230 ((_ is Concat!17182) (regTwo!22335 r!26968))) b!3726510))

(assert (= (and b!3726230 ((_ is Star!10911) (regTwo!22335 r!26968))) b!3726511))

(assert (= (and b!3726230 ((_ is Union!10911) (regTwo!22335 r!26968))) b!3726512))

(declare-fun b!3726516 () Bool)

(declare-fun e!2306168 () Bool)

(declare-fun tp!1133742 () Bool)

(declare-fun tp!1133744 () Bool)

(assert (=> b!3726516 (= e!2306168 (and tp!1133742 tp!1133744))))

(assert (=> b!3726226 (= tp!1133684 e!2306168)))

(declare-fun b!3726515 () Bool)

(declare-fun tp!1133740 () Bool)

(assert (=> b!3726515 (= e!2306168 tp!1133740)))

(declare-fun b!3726513 () Bool)

(assert (=> b!3726513 (= e!2306168 tp_is_empty!18837)))

(declare-fun b!3726514 () Bool)

(declare-fun tp!1133743 () Bool)

(declare-fun tp!1133741 () Bool)

(assert (=> b!3726514 (= e!2306168 (and tp!1133743 tp!1133741))))

(assert (= (and b!3726226 ((_ is ElementMatch!10911) (regOne!22334 r!26968))) b!3726513))

(assert (= (and b!3726226 ((_ is Concat!17182) (regOne!22334 r!26968))) b!3726514))

(assert (= (and b!3726226 ((_ is Star!10911) (regOne!22334 r!26968))) b!3726515))

(assert (= (and b!3726226 ((_ is Union!10911) (regOne!22334 r!26968))) b!3726516))

(declare-fun b!3726520 () Bool)

(declare-fun e!2306169 () Bool)

(declare-fun tp!1133747 () Bool)

(declare-fun tp!1133749 () Bool)

(assert (=> b!3726520 (= e!2306169 (and tp!1133747 tp!1133749))))

(assert (=> b!3726226 (= tp!1133680 e!2306169)))

(declare-fun b!3726519 () Bool)

(declare-fun tp!1133745 () Bool)

(assert (=> b!3726519 (= e!2306169 tp!1133745)))

(declare-fun b!3726517 () Bool)

(assert (=> b!3726517 (= e!2306169 tp_is_empty!18837)))

(declare-fun b!3726518 () Bool)

(declare-fun tp!1133748 () Bool)

(declare-fun tp!1133746 () Bool)

(assert (=> b!3726518 (= e!2306169 (and tp!1133748 tp!1133746))))

(assert (= (and b!3726226 ((_ is ElementMatch!10911) (regTwo!22334 r!26968))) b!3726517))

(assert (= (and b!3726226 ((_ is Concat!17182) (regTwo!22334 r!26968))) b!3726518))

(assert (= (and b!3726226 ((_ is Star!10911) (regTwo!22334 r!26968))) b!3726519))

(assert (= (and b!3726226 ((_ is Union!10911) (regTwo!22334 r!26968))) b!3726520))

(declare-fun b!3726524 () Bool)

(declare-fun e!2306170 () Bool)

(declare-fun tp!1133752 () Bool)

(declare-fun tp!1133754 () Bool)

(assert (=> b!3726524 (= e!2306170 (and tp!1133752 tp!1133754))))

(assert (=> b!3726225 (= tp!1133682 e!2306170)))

(declare-fun b!3726523 () Bool)

(declare-fun tp!1133750 () Bool)

(assert (=> b!3726523 (= e!2306170 tp!1133750)))

(declare-fun b!3726521 () Bool)

(assert (=> b!3726521 (= e!2306170 tp_is_empty!18837)))

(declare-fun b!3726522 () Bool)

(declare-fun tp!1133753 () Bool)

(declare-fun tp!1133751 () Bool)

(assert (=> b!3726522 (= e!2306170 (and tp!1133753 tp!1133751))))

(assert (= (and b!3726225 ((_ is ElementMatch!10911) (reg!11240 r!26968))) b!3726521))

(assert (= (and b!3726225 ((_ is Concat!17182) (reg!11240 r!26968))) b!3726522))

(assert (= (and b!3726225 ((_ is Star!10911) (reg!11240 r!26968))) b!3726523))

(assert (= (and b!3726225 ((_ is Union!10911) (reg!11240 r!26968))) b!3726524))

(check-sat (not b!3726518) (not b!3726510) (not bm!271486) (not bm!271520) (not b!3726511) (not b!3726514) (not b!3726519) (not b!3726524) (not b!3726506) (not b!3726516) (not bm!271451) (not b!3726520) (not bm!271492) (not b!3726329) (not b!3726523) (not b!3726242) (not bm!271484) (not b!3726515) (not d!1089921) (not bm!271478) (not bm!271476) (not bm!271470) (not bm!271477) tp_is_empty!18837 (not b!3726507) (not bm!271450) (not d!1089933) (not b!3726460) (not b!3726387) (not bm!271452) (not d!1089925) (not bm!271485) (not bm!271471) (not d!1089897) (not bm!271521) (not b!3726508) (not b!3726348) (not b!3726384) (not b!3726522) (not d!1089909) (not b!3726512) (not bm!271493))
(check-sat)
(get-model)

(declare-fun bm!271522 () Bool)

(declare-fun call!271527 () Regex!10911)

(declare-fun call!271528 () Regex!10911)

(assert (=> bm!271522 (= call!271527 call!271528)))

(declare-fun call!271530 () Regex!10911)

(declare-fun e!2306171 () Regex!10911)

(declare-fun call!271529 () Regex!10911)

(declare-fun b!3726525 () Bool)

(assert (=> b!3726525 (= e!2306171 (Union!10911 (Concat!17182 call!271529 (regTwo!22334 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))) call!271530))))

(declare-fun b!3726526 () Bool)

(declare-fun e!2306172 () Regex!10911)

(assert (=> b!3726526 (= e!2306172 (ite (= c!13797 (c!644695 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))) EmptyExpr!10911 EmptyLang!10911))))

(declare-fun b!3726527 () Bool)

(declare-fun e!2306175 () Regex!10911)

(assert (=> b!3726527 (= e!2306175 (Concat!17182 call!271527 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))))

(declare-fun d!1089937 () Bool)

(declare-fun lt!1298409 () Regex!10911)

(assert (=> d!1089937 (validRegex!5018 lt!1298409)))

(declare-fun e!2306174 () Regex!10911)

(assert (=> d!1089937 (= lt!1298409 e!2306174)))

(declare-fun c!644785 () Bool)

(assert (=> d!1089937 (= c!644785 (or ((_ is EmptyExpr!10911) (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))) ((_ is EmptyLang!10911) (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))))

(assert (=> d!1089937 (validRegex!5018 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))

(assert (=> d!1089937 (= (derivativeStep!3358 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))) c!13797) lt!1298409)))

(declare-fun bm!271523 () Bool)

(assert (=> bm!271523 (= call!271530 call!271527)))

(declare-fun b!3726528 () Bool)

(declare-fun e!2306173 () Regex!10911)

(assert (=> b!3726528 (= e!2306173 e!2306175)))

(declare-fun c!644786 () Bool)

(assert (=> b!3726528 (= c!644786 ((_ is Star!10911) (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))))

(declare-fun b!3726529 () Bool)

(assert (=> b!3726529 (= e!2306173 (Union!10911 call!271528 call!271529))))

(declare-fun b!3726530 () Bool)

(declare-fun c!644787 () Bool)

(assert (=> b!3726530 (= c!644787 (nullable!3819 (regOne!22334 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))))

(assert (=> b!3726530 (= e!2306175 e!2306171)))

(declare-fun c!644788 () Bool)

(declare-fun bm!271524 () Bool)

(assert (=> bm!271524 (= call!271529 (derivativeStep!3358 (ite c!644788 (regTwo!22335 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))) (regOne!22334 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))) c!13797))))

(declare-fun b!3726531 () Bool)

(assert (=> b!3726531 (= e!2306174 EmptyLang!10911)))

(declare-fun b!3726532 () Bool)

(assert (=> b!3726532 (= e!2306171 (Union!10911 (Concat!17182 call!271530 (regTwo!22334 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))) EmptyLang!10911))))

(declare-fun bm!271525 () Bool)

(assert (=> bm!271525 (= call!271528 (derivativeStep!3358 (ite c!644788 (regOne!22335 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))) (ite c!644786 (reg!11240 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))) (ite c!644787 (regTwo!22334 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))) (regOne!22334 (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))) c!13797))))

(declare-fun b!3726533 () Bool)

(assert (=> b!3726533 (= e!2306174 e!2306172)))

(declare-fun c!644784 () Bool)

(assert (=> b!3726533 (= c!644784 ((_ is ElementMatch!10911) (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))))

(declare-fun b!3726534 () Bool)

(assert (=> b!3726534 (= c!644788 ((_ is Union!10911) (ite c!644783 (regTwo!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))))

(assert (=> b!3726534 (= e!2306172 e!2306173)))

(assert (= (and d!1089937 c!644785) b!3726531))

(assert (= (and d!1089937 (not c!644785)) b!3726533))

(assert (= (and b!3726533 c!644784) b!3726526))

(assert (= (and b!3726533 (not c!644784)) b!3726534))

(assert (= (and b!3726534 c!644788) b!3726529))

(assert (= (and b!3726534 (not c!644788)) b!3726528))

(assert (= (and b!3726528 c!644786) b!3726527))

(assert (= (and b!3726528 (not c!644786)) b!3726530))

(assert (= (and b!3726530 c!644787) b!3726525))

(assert (= (and b!3726530 (not c!644787)) b!3726532))

(assert (= (or b!3726525 b!3726532) bm!271523))

(assert (= (or b!3726527 bm!271523) bm!271522))

(assert (= (or b!3726529 bm!271522) bm!271525))

(assert (= (or b!3726529 b!3726525) bm!271524))

(declare-fun m!4227969 () Bool)

(assert (=> d!1089937 m!4227969))

(declare-fun m!4227971 () Bool)

(assert (=> d!1089937 m!4227971))

(declare-fun m!4227973 () Bool)

(assert (=> b!3726530 m!4227973))

(declare-fun m!4227975 () Bool)

(assert (=> bm!271524 m!4227975))

(declare-fun m!4227977 () Bool)

(assert (=> bm!271525 m!4227977))

(assert (=> bm!271520 d!1089937))

(declare-fun c!644790 () Bool)

(declare-fun bm!271526 () Bool)

(declare-fun call!271533 () Bool)

(declare-fun c!644789 () Bool)

(assert (=> bm!271526 (= call!271533 (validRegex!5018 (ite c!644789 (reg!11240 lt!1298408) (ite c!644790 (regTwo!22335 lt!1298408) (regTwo!22334 lt!1298408)))))))

(declare-fun b!3726535 () Bool)

(declare-fun e!2306182 () Bool)

(declare-fun e!2306181 () Bool)

(assert (=> b!3726535 (= e!2306182 e!2306181)))

(declare-fun res!1513727 () Bool)

(assert (=> b!3726535 (= res!1513727 (not (nullable!3819 (reg!11240 lt!1298408))))))

(assert (=> b!3726535 (=> (not res!1513727) (not e!2306181))))

(declare-fun bm!271527 () Bool)

(declare-fun call!271531 () Bool)

(assert (=> bm!271527 (= call!271531 (validRegex!5018 (ite c!644790 (regOne!22335 lt!1298408) (regOne!22334 lt!1298408))))))

(declare-fun b!3726536 () Bool)

(declare-fun e!2306180 () Bool)

(assert (=> b!3726536 (= e!2306180 e!2306182)))

(assert (=> b!3726536 (= c!644789 ((_ is Star!10911) lt!1298408))))

(declare-fun bm!271528 () Bool)

(declare-fun call!271532 () Bool)

(assert (=> bm!271528 (= call!271532 call!271533)))

(declare-fun b!3726537 () Bool)

(declare-fun e!2306179 () Bool)

(declare-fun e!2306176 () Bool)

(assert (=> b!3726537 (= e!2306179 e!2306176)))

(declare-fun res!1513726 () Bool)

(assert (=> b!3726537 (=> (not res!1513726) (not e!2306176))))

(assert (=> b!3726537 (= res!1513726 call!271531)))

(declare-fun b!3726538 () Bool)

(assert (=> b!3726538 (= e!2306181 call!271533)))

(declare-fun b!3726539 () Bool)

(assert (=> b!3726539 (= e!2306176 call!271532)))

(declare-fun d!1089939 () Bool)

(declare-fun res!1513728 () Bool)

(assert (=> d!1089939 (=> res!1513728 e!2306180)))

(assert (=> d!1089939 (= res!1513728 ((_ is ElementMatch!10911) lt!1298408))))

(assert (=> d!1089939 (= (validRegex!5018 lt!1298408) e!2306180)))

(declare-fun b!3726540 () Bool)

(declare-fun e!2306177 () Bool)

(assert (=> b!3726540 (= e!2306182 e!2306177)))

(assert (=> b!3726540 (= c!644790 ((_ is Union!10911) lt!1298408))))

(declare-fun b!3726541 () Bool)

(declare-fun e!2306178 () Bool)

(assert (=> b!3726541 (= e!2306178 call!271532)))

(declare-fun b!3726542 () Bool)

(declare-fun res!1513729 () Bool)

(assert (=> b!3726542 (=> (not res!1513729) (not e!2306178))))

(assert (=> b!3726542 (= res!1513729 call!271531)))

(assert (=> b!3726542 (= e!2306177 e!2306178)))

(declare-fun b!3726543 () Bool)

(declare-fun res!1513725 () Bool)

(assert (=> b!3726543 (=> res!1513725 e!2306179)))

(assert (=> b!3726543 (= res!1513725 (not ((_ is Concat!17182) lt!1298408)))))

(assert (=> b!3726543 (= e!2306177 e!2306179)))

(assert (= (and d!1089939 (not res!1513728)) b!3726536))

(assert (= (and b!3726536 c!644789) b!3726535))

(assert (= (and b!3726536 (not c!644789)) b!3726540))

(assert (= (and b!3726535 res!1513727) b!3726538))

(assert (= (and b!3726540 c!644790) b!3726542))

(assert (= (and b!3726540 (not c!644790)) b!3726543))

(assert (= (and b!3726542 res!1513729) b!3726541))

(assert (= (and b!3726543 (not res!1513725)) b!3726537))

(assert (= (and b!3726537 res!1513726) b!3726539))

(assert (= (or b!3726541 b!3726539) bm!271528))

(assert (= (or b!3726542 b!3726537) bm!271527))

(assert (= (or b!3726538 bm!271528) bm!271526))

(declare-fun m!4227979 () Bool)

(assert (=> bm!271526 m!4227979))

(declare-fun m!4227981 () Bool)

(assert (=> b!3726535 m!4227981))

(declare-fun m!4227983 () Bool)

(assert (=> bm!271527 m!4227983))

(assert (=> d!1089933 d!1089939))

(declare-fun c!644792 () Bool)

(declare-fun call!271536 () Bool)

(declare-fun bm!271529 () Bool)

(declare-fun c!644791 () Bool)

(assert (=> bm!271529 (= call!271536 (validRegex!5018 (ite c!644791 (reg!11240 (regOne!22335 r!26968)) (ite c!644792 (regTwo!22335 (regOne!22335 r!26968)) (regTwo!22334 (regOne!22335 r!26968))))))))

(declare-fun b!3726544 () Bool)

(declare-fun e!2306189 () Bool)

(declare-fun e!2306188 () Bool)

(assert (=> b!3726544 (= e!2306189 e!2306188)))

(declare-fun res!1513732 () Bool)

(assert (=> b!3726544 (= res!1513732 (not (nullable!3819 (reg!11240 (regOne!22335 r!26968)))))))

(assert (=> b!3726544 (=> (not res!1513732) (not e!2306188))))

(declare-fun bm!271530 () Bool)

(declare-fun call!271534 () Bool)

(assert (=> bm!271530 (= call!271534 (validRegex!5018 (ite c!644792 (regOne!22335 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))))

(declare-fun b!3726545 () Bool)

(declare-fun e!2306187 () Bool)

(assert (=> b!3726545 (= e!2306187 e!2306189)))

(assert (=> b!3726545 (= c!644791 ((_ is Star!10911) (regOne!22335 r!26968)))))

(declare-fun bm!271531 () Bool)

(declare-fun call!271535 () Bool)

(assert (=> bm!271531 (= call!271535 call!271536)))

(declare-fun b!3726546 () Bool)

(declare-fun e!2306186 () Bool)

(declare-fun e!2306183 () Bool)

(assert (=> b!3726546 (= e!2306186 e!2306183)))

(declare-fun res!1513731 () Bool)

(assert (=> b!3726546 (=> (not res!1513731) (not e!2306183))))

(assert (=> b!3726546 (= res!1513731 call!271534)))

(declare-fun b!3726547 () Bool)

(assert (=> b!3726547 (= e!2306188 call!271536)))

(declare-fun b!3726548 () Bool)

(assert (=> b!3726548 (= e!2306183 call!271535)))

(declare-fun d!1089941 () Bool)

(declare-fun res!1513733 () Bool)

(assert (=> d!1089941 (=> res!1513733 e!2306187)))

(assert (=> d!1089941 (= res!1513733 ((_ is ElementMatch!10911) (regOne!22335 r!26968)))))

(assert (=> d!1089941 (= (validRegex!5018 (regOne!22335 r!26968)) e!2306187)))

(declare-fun b!3726549 () Bool)

(declare-fun e!2306184 () Bool)

(assert (=> b!3726549 (= e!2306189 e!2306184)))

(assert (=> b!3726549 (= c!644792 ((_ is Union!10911) (regOne!22335 r!26968)))))

(declare-fun b!3726550 () Bool)

(declare-fun e!2306185 () Bool)

(assert (=> b!3726550 (= e!2306185 call!271535)))

(declare-fun b!3726551 () Bool)

(declare-fun res!1513734 () Bool)

(assert (=> b!3726551 (=> (not res!1513734) (not e!2306185))))

(assert (=> b!3726551 (= res!1513734 call!271534)))

(assert (=> b!3726551 (= e!2306184 e!2306185)))

(declare-fun b!3726552 () Bool)

(declare-fun res!1513730 () Bool)

(assert (=> b!3726552 (=> res!1513730 e!2306186)))

(assert (=> b!3726552 (= res!1513730 (not ((_ is Concat!17182) (regOne!22335 r!26968))))))

(assert (=> b!3726552 (= e!2306184 e!2306186)))

(assert (= (and d!1089941 (not res!1513733)) b!3726545))

(assert (= (and b!3726545 c!644791) b!3726544))

(assert (= (and b!3726545 (not c!644791)) b!3726549))

(assert (= (and b!3726544 res!1513732) b!3726547))

(assert (= (and b!3726549 c!644792) b!3726551))

(assert (= (and b!3726549 (not c!644792)) b!3726552))

(assert (= (and b!3726551 res!1513734) b!3726550))

(assert (= (and b!3726552 (not res!1513730)) b!3726546))

(assert (= (and b!3726546 res!1513731) b!3726548))

(assert (= (or b!3726550 b!3726548) bm!271531))

(assert (= (or b!3726551 b!3726546) bm!271530))

(assert (= (or b!3726547 bm!271531) bm!271529))

(declare-fun m!4227985 () Bool)

(assert (=> bm!271529 m!4227985))

(declare-fun m!4227987 () Bool)

(assert (=> b!3726544 m!4227987))

(declare-fun m!4227989 () Bool)

(assert (=> bm!271530 m!4227989))

(assert (=> d!1089933 d!1089941))

(declare-fun d!1089943 () Bool)

(declare-fun lt!1298410 () Bool)

(assert (=> d!1089943 (= lt!1298410 (select (content!5768 (t!302475 (usedCharacters!1174 (regTwo!22335 r!26968)))) cNot!42))))

(declare-fun e!2306191 () Bool)

(assert (=> d!1089943 (= lt!1298410 e!2306191)))

(declare-fun res!1513736 () Bool)

(assert (=> d!1089943 (=> (not res!1513736) (not e!2306191))))

(assert (=> d!1089943 (= res!1513736 ((_ is Cons!39668) (t!302475 (usedCharacters!1174 (regTwo!22335 r!26968)))))))

(assert (=> d!1089943 (= (contains!8004 (t!302475 (usedCharacters!1174 (regTwo!22335 r!26968))) cNot!42) lt!1298410)))

(declare-fun b!3726553 () Bool)

(declare-fun e!2306190 () Bool)

(assert (=> b!3726553 (= e!2306191 e!2306190)))

(declare-fun res!1513735 () Bool)

(assert (=> b!3726553 (=> res!1513735 e!2306190)))

(assert (=> b!3726553 (= res!1513735 (= (h!45088 (t!302475 (usedCharacters!1174 (regTwo!22335 r!26968)))) cNot!42))))

(declare-fun b!3726554 () Bool)

(assert (=> b!3726554 (= e!2306190 (contains!8004 (t!302475 (t!302475 (usedCharacters!1174 (regTwo!22335 r!26968)))) cNot!42))))

(assert (= (and d!1089943 res!1513736) b!3726553))

(assert (= (and b!3726553 (not res!1513735)) b!3726554))

(declare-fun m!4227991 () Bool)

(assert (=> d!1089943 m!4227991))

(declare-fun m!4227993 () Bool)

(assert (=> d!1089943 m!4227993))

(declare-fun m!4227995 () Bool)

(assert (=> b!3726554 m!4227995))

(assert (=> b!3726242 d!1089943))

(declare-fun d!1089945 () Bool)

(declare-fun lt!1298411 () Bool)

(assert (=> d!1089945 (= lt!1298411 (select (content!5768 (t!302475 (usedCharacters!1174 r!26968))) cNot!42))))

(declare-fun e!2306193 () Bool)

(assert (=> d!1089945 (= lt!1298411 e!2306193)))

(declare-fun res!1513738 () Bool)

(assert (=> d!1089945 (=> (not res!1513738) (not e!2306193))))

(assert (=> d!1089945 (= res!1513738 ((_ is Cons!39668) (t!302475 (usedCharacters!1174 r!26968))))))

(assert (=> d!1089945 (= (contains!8004 (t!302475 (usedCharacters!1174 r!26968)) cNot!42) lt!1298411)))

(declare-fun b!3726555 () Bool)

(declare-fun e!2306192 () Bool)

(assert (=> b!3726555 (= e!2306193 e!2306192)))

(declare-fun res!1513737 () Bool)

(assert (=> b!3726555 (=> res!1513737 e!2306192)))

(assert (=> b!3726555 (= res!1513737 (= (h!45088 (t!302475 (usedCharacters!1174 r!26968))) cNot!42))))

(declare-fun b!3726556 () Bool)

(assert (=> b!3726556 (= e!2306192 (contains!8004 (t!302475 (t!302475 (usedCharacters!1174 r!26968))) cNot!42))))

(assert (= (and d!1089945 res!1513738) b!3726555))

(assert (= (and b!3726555 (not res!1513737)) b!3726556))

(declare-fun m!4227997 () Bool)

(assert (=> d!1089945 m!4227997))

(declare-fun m!4227999 () Bool)

(assert (=> d!1089945 m!4227999))

(declare-fun m!4228001 () Bool)

(assert (=> b!3726556 m!4228001))

(assert (=> b!3726348 d!1089945))

(declare-fun d!1089947 () Bool)

(declare-fun nullableFct!1080 (Regex!10911) Bool)

(assert (=> d!1089947 (= (nullable!3819 (regOne!22334 (regOne!22335 r!26968))) (nullableFct!1080 (regOne!22334 (regOne!22335 r!26968))))))

(declare-fun bs!575036 () Bool)

(assert (= bs!575036 d!1089947))

(declare-fun m!4228003 () Bool)

(assert (=> bs!575036 m!4228003))

(assert (=> b!3726460 d!1089947))

(declare-fun d!1089949 () Bool)

(declare-fun e!2306198 () Bool)

(assert (=> d!1089949 e!2306198))

(declare-fun res!1513743 () Bool)

(assert (=> d!1089949 (=> (not res!1513743) (not e!2306198))))

(declare-fun lt!1298414 () List!39792)

(assert (=> d!1089949 (= res!1513743 (= (content!5768 lt!1298414) ((_ map or) (content!5768 (ite c!644742 call!271492 call!271491)) (content!5768 (ite c!644742 call!271491 call!271492)))))))

(declare-fun e!2306199 () List!39792)

(assert (=> d!1089949 (= lt!1298414 e!2306199)))

(declare-fun c!644795 () Bool)

(assert (=> d!1089949 (= c!644795 ((_ is Nil!39668) (ite c!644742 call!271492 call!271491)))))

(assert (=> d!1089949 (= (++!9835 (ite c!644742 call!271492 call!271491) (ite c!644742 call!271491 call!271492)) lt!1298414)))

(declare-fun b!3726565 () Bool)

(assert (=> b!3726565 (= e!2306199 (ite c!644742 call!271491 call!271492))))

(declare-fun b!3726568 () Bool)

(assert (=> b!3726568 (= e!2306198 (or (not (= (ite c!644742 call!271491 call!271492) Nil!39668)) (= lt!1298414 (ite c!644742 call!271492 call!271491))))))

(declare-fun b!3726567 () Bool)

(declare-fun res!1513744 () Bool)

(assert (=> b!3726567 (=> (not res!1513744) (not e!2306198))))

(declare-fun size!30029 (List!39792) Int)

(assert (=> b!3726567 (= res!1513744 (= (size!30029 lt!1298414) (+ (size!30029 (ite c!644742 call!271492 call!271491)) (size!30029 (ite c!644742 call!271491 call!271492)))))))

(declare-fun b!3726566 () Bool)

(assert (=> b!3726566 (= e!2306199 (Cons!39668 (h!45088 (ite c!644742 call!271492 call!271491)) (++!9835 (t!302475 (ite c!644742 call!271492 call!271491)) (ite c!644742 call!271491 call!271492))))))

(assert (= (and d!1089949 c!644795) b!3726565))

(assert (= (and d!1089949 (not c!644795)) b!3726566))

(assert (= (and d!1089949 res!1513743) b!3726567))

(assert (= (and b!3726567 res!1513744) b!3726568))

(declare-fun m!4228005 () Bool)

(assert (=> d!1089949 m!4228005))

(declare-fun m!4228007 () Bool)

(assert (=> d!1089949 m!4228007))

(declare-fun m!4228009 () Bool)

(assert (=> d!1089949 m!4228009))

(declare-fun m!4228011 () Bool)

(assert (=> b!3726567 m!4228011))

(declare-fun m!4228013 () Bool)

(assert (=> b!3726567 m!4228013))

(declare-fun m!4228015 () Bool)

(assert (=> b!3726567 m!4228015))

(declare-fun m!4228017 () Bool)

(assert (=> b!3726566 m!4228017))

(assert (=> bm!271486 d!1089949))

(declare-fun d!1089951 () Bool)

(declare-fun e!2306200 () Bool)

(assert (=> d!1089951 e!2306200))

(declare-fun res!1513745 () Bool)

(assert (=> d!1089951 (=> (not res!1513745) (not e!2306200))))

(declare-fun lt!1298415 () List!39792)

(assert (=> d!1089951 (= res!1513745 (= (content!5768 lt!1298415) ((_ map or) (content!5768 (ite c!644734 call!271484 call!271483)) (content!5768 (ite c!644734 call!271483 call!271484)))))))

(declare-fun e!2306201 () List!39792)

(assert (=> d!1089951 (= lt!1298415 e!2306201)))

(declare-fun c!644796 () Bool)

(assert (=> d!1089951 (= c!644796 ((_ is Nil!39668) (ite c!644734 call!271484 call!271483)))))

(assert (=> d!1089951 (= (++!9835 (ite c!644734 call!271484 call!271483) (ite c!644734 call!271483 call!271484)) lt!1298415)))

(declare-fun b!3726569 () Bool)

(assert (=> b!3726569 (= e!2306201 (ite c!644734 call!271483 call!271484))))

(declare-fun b!3726572 () Bool)

(assert (=> b!3726572 (= e!2306200 (or (not (= (ite c!644734 call!271483 call!271484) Nil!39668)) (= lt!1298415 (ite c!644734 call!271484 call!271483))))))

(declare-fun b!3726571 () Bool)

(declare-fun res!1513746 () Bool)

(assert (=> b!3726571 (=> (not res!1513746) (not e!2306200))))

(assert (=> b!3726571 (= res!1513746 (= (size!30029 lt!1298415) (+ (size!30029 (ite c!644734 call!271484 call!271483)) (size!30029 (ite c!644734 call!271483 call!271484)))))))

(declare-fun b!3726570 () Bool)

(assert (=> b!3726570 (= e!2306201 (Cons!39668 (h!45088 (ite c!644734 call!271484 call!271483)) (++!9835 (t!302475 (ite c!644734 call!271484 call!271483)) (ite c!644734 call!271483 call!271484))))))

(assert (= (and d!1089951 c!644796) b!3726569))

(assert (= (and d!1089951 (not c!644796)) b!3726570))

(assert (= (and d!1089951 res!1513745) b!3726571))

(assert (= (and b!3726571 res!1513746) b!3726572))

(declare-fun m!4228019 () Bool)

(assert (=> d!1089951 m!4228019))

(declare-fun m!4228021 () Bool)

(assert (=> d!1089951 m!4228021))

(declare-fun m!4228023 () Bool)

(assert (=> d!1089951 m!4228023))

(declare-fun m!4228025 () Bool)

(assert (=> b!3726571 m!4228025))

(declare-fun m!4228027 () Bool)

(assert (=> b!3726571 m!4228027))

(declare-fun m!4228029 () Bool)

(assert (=> b!3726571 m!4228029))

(declare-fun m!4228031 () Bool)

(assert (=> b!3726570 m!4228031))

(assert (=> bm!271478 d!1089951))

(declare-fun d!1089953 () Bool)

(declare-fun c!644799 () Bool)

(assert (=> d!1089953 (= c!644799 ((_ is Nil!39668) (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))

(declare-fun e!2306204 () (InoxSet C!22008))

(assert (=> d!1089953 (= (content!5768 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))) e!2306204)))

(declare-fun b!3726577 () Bool)

(assert (=> b!3726577 (= e!2306204 ((as const (Array C!22008 Bool)) false))))

(declare-fun b!3726578 () Bool)

(assert (=> b!3726578 (= e!2306204 ((_ map or) (store ((as const (Array C!22008 Bool)) false) (h!45088 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))) true) (content!5768 (t!302475 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))))

(assert (= (and d!1089953 c!644799) b!3726577))

(assert (= (and d!1089953 (not c!644799)) b!3726578))

(declare-fun m!4228033 () Bool)

(assert (=> b!3726578 m!4228033))

(declare-fun m!4228035 () Bool)

(assert (=> b!3726578 m!4228035))

(assert (=> d!1089921 d!1089953))

(declare-fun lt!1298416 () Bool)

(declare-fun d!1089955 () Bool)

(assert (=> d!1089955 (= lt!1298416 (select (content!5768 (t!302475 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))) cNot!42))))

(declare-fun e!2306206 () Bool)

(assert (=> d!1089955 (= lt!1298416 e!2306206)))

(declare-fun res!1513748 () Bool)

(assert (=> d!1089955 (=> (not res!1513748) (not e!2306206))))

(assert (=> d!1089955 (= res!1513748 ((_ is Cons!39668) (t!302475 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))))

(assert (=> d!1089955 (= (contains!8004 (t!302475 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))) cNot!42) lt!1298416)))

(declare-fun b!3726579 () Bool)

(declare-fun e!2306205 () Bool)

(assert (=> b!3726579 (= e!2306206 e!2306205)))

(declare-fun res!1513747 () Bool)

(assert (=> b!3726579 (=> res!1513747 e!2306205)))

(assert (=> b!3726579 (= res!1513747 (= (h!45088 (t!302475 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))) cNot!42))))

(declare-fun b!3726580 () Bool)

(assert (=> b!3726580 (= e!2306205 (contains!8004 (t!302475 (t!302475 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))) cNot!42))))

(assert (= (and d!1089955 res!1513748) b!3726579))

(assert (= (and b!3726579 (not res!1513747)) b!3726580))

(assert (=> d!1089955 m!4228035))

(declare-fun m!4228037 () Bool)

(assert (=> d!1089955 m!4228037))

(declare-fun m!4228039 () Bool)

(assert (=> b!3726580 m!4228039))

(assert (=> b!3726384 d!1089955))

(declare-fun c!644801 () Bool)

(declare-fun c!644800 () Bool)

(declare-fun bm!271532 () Bool)

(declare-fun call!271539 () Bool)

(assert (=> bm!271532 (= call!271539 (validRegex!5018 (ite c!644800 (reg!11240 (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))) (ite c!644801 (regTwo!22335 (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))) (regTwo!22334 (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968))))))))))

(declare-fun b!3726581 () Bool)

(declare-fun e!2306213 () Bool)

(declare-fun e!2306212 () Bool)

(assert (=> b!3726581 (= e!2306213 e!2306212)))

(declare-fun res!1513751 () Bool)

(assert (=> b!3726581 (= res!1513751 (not (nullable!3819 (reg!11240 (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))))))))

(assert (=> b!3726581 (=> (not res!1513751) (not e!2306212))))

(declare-fun call!271537 () Bool)

(declare-fun bm!271533 () Bool)

(assert (=> bm!271533 (= call!271537 (validRegex!5018 (ite c!644801 (regOne!22335 (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))) (regOne!22334 (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))))))))

(declare-fun b!3726582 () Bool)

(declare-fun e!2306211 () Bool)

(assert (=> b!3726582 (= e!2306211 e!2306213)))

(assert (=> b!3726582 (= c!644800 ((_ is Star!10911) (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))))))

(declare-fun bm!271534 () Bool)

(declare-fun call!271538 () Bool)

(assert (=> bm!271534 (= call!271538 call!271539)))

(declare-fun b!3726583 () Bool)

(declare-fun e!2306210 () Bool)

(declare-fun e!2306207 () Bool)

(assert (=> b!3726583 (= e!2306210 e!2306207)))

(declare-fun res!1513750 () Bool)

(assert (=> b!3726583 (=> (not res!1513750) (not e!2306207))))

(assert (=> b!3726583 (= res!1513750 call!271537)))

(declare-fun b!3726584 () Bool)

(assert (=> b!3726584 (= e!2306212 call!271539)))

(declare-fun b!3726585 () Bool)

(assert (=> b!3726585 (= e!2306207 call!271538)))

(declare-fun d!1089957 () Bool)

(declare-fun res!1513752 () Bool)

(assert (=> d!1089957 (=> res!1513752 e!2306211)))

(assert (=> d!1089957 (= res!1513752 ((_ is ElementMatch!10911) (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))))))

(assert (=> d!1089957 (= (validRegex!5018 (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))) e!2306211)))

(declare-fun b!3726586 () Bool)

(declare-fun e!2306208 () Bool)

(assert (=> b!3726586 (= e!2306213 e!2306208)))

(assert (=> b!3726586 (= c!644801 ((_ is Union!10911) (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968)))))))

(declare-fun b!3726587 () Bool)

(declare-fun e!2306209 () Bool)

(assert (=> b!3726587 (= e!2306209 call!271538)))

(declare-fun b!3726588 () Bool)

(declare-fun res!1513753 () Bool)

(assert (=> b!3726588 (=> (not res!1513753) (not e!2306209))))

(assert (=> b!3726588 (= res!1513753 call!271537)))

(assert (=> b!3726588 (= e!2306208 e!2306209)))

(declare-fun b!3726589 () Bool)

(declare-fun res!1513749 () Bool)

(assert (=> b!3726589 (=> res!1513749 e!2306210)))

(assert (=> b!3726589 (= res!1513749 (not ((_ is Concat!17182) (ite c!644728 (reg!11240 r!26968) (ite c!644729 (regTwo!22335 r!26968) (regTwo!22334 r!26968))))))))

(assert (=> b!3726589 (= e!2306208 e!2306210)))

(assert (= (and d!1089957 (not res!1513752)) b!3726582))

(assert (= (and b!3726582 c!644800) b!3726581))

(assert (= (and b!3726582 (not c!644800)) b!3726586))

(assert (= (and b!3726581 res!1513751) b!3726584))

(assert (= (and b!3726586 c!644801) b!3726588))

(assert (= (and b!3726586 (not c!644801)) b!3726589))

(assert (= (and b!3726588 res!1513753) b!3726587))

(assert (= (and b!3726589 (not res!1513749)) b!3726583))

(assert (= (and b!3726583 res!1513750) b!3726585))

(assert (= (or b!3726587 b!3726585) bm!271534))

(assert (= (or b!3726588 b!3726583) bm!271533))

(assert (= (or b!3726584 bm!271534) bm!271532))

(declare-fun m!4228041 () Bool)

(assert (=> bm!271532 m!4228041))

(declare-fun m!4228043 () Bool)

(assert (=> b!3726581 m!4228043))

(declare-fun m!4228045 () Bool)

(assert (=> bm!271533 m!4228045))

(assert (=> bm!271470 d!1089957))

(declare-fun bm!271535 () Bool)

(declare-fun call!271540 () Regex!10911)

(declare-fun call!271541 () Regex!10911)

(assert (=> bm!271535 (= call!271540 call!271541)))

(declare-fun b!3726590 () Bool)

(declare-fun e!2306214 () Regex!10911)

(declare-fun call!271543 () Regex!10911)

(declare-fun call!271542 () Regex!10911)

(assert (=> b!3726590 (= e!2306214 (Union!10911 (Concat!17182 call!271542 (regTwo!22334 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))) call!271543))))

(declare-fun b!3726591 () Bool)

(declare-fun e!2306215 () Regex!10911)

(assert (=> b!3726591 (= e!2306215 (ite (= c!13797 (c!644695 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))) EmptyExpr!10911 EmptyLang!10911))))

(declare-fun e!2306218 () Regex!10911)

(declare-fun b!3726592 () Bool)

(assert (=> b!3726592 (= e!2306218 (Concat!17182 call!271540 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))))))

(declare-fun d!1089959 () Bool)

(declare-fun lt!1298417 () Regex!10911)

(assert (=> d!1089959 (validRegex!5018 lt!1298417)))

(declare-fun e!2306217 () Regex!10911)

(assert (=> d!1089959 (= lt!1298417 e!2306217)))

(declare-fun c!644803 () Bool)

(assert (=> d!1089959 (= c!644803 (or ((_ is EmptyExpr!10911) (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))) ((_ is EmptyLang!10911) (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))))))

(assert (=> d!1089959 (validRegex!5018 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))))

(assert (=> d!1089959 (= (derivativeStep!3358 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))) c!13797) lt!1298417)))

(declare-fun bm!271536 () Bool)

(assert (=> bm!271536 (= call!271543 call!271540)))

(declare-fun b!3726593 () Bool)

(declare-fun e!2306216 () Regex!10911)

(assert (=> b!3726593 (= e!2306216 e!2306218)))

(declare-fun c!644804 () Bool)

(assert (=> b!3726593 (= c!644804 ((_ is Star!10911) (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))))))

(declare-fun b!3726594 () Bool)

(assert (=> b!3726594 (= e!2306216 (Union!10911 call!271541 call!271542))))

(declare-fun b!3726595 () Bool)

(declare-fun c!644805 () Bool)

(assert (=> b!3726595 (= c!644805 (nullable!3819 (regOne!22334 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))))))

(assert (=> b!3726595 (= e!2306218 e!2306214)))

(declare-fun bm!271537 () Bool)

(declare-fun c!644806 () Bool)

(assert (=> bm!271537 (= call!271542 (derivativeStep!3358 (ite c!644806 (regTwo!22335 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))) (regOne!22334 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))) c!13797))))

(declare-fun b!3726596 () Bool)

(assert (=> b!3726596 (= e!2306217 EmptyLang!10911)))

(declare-fun b!3726597 () Bool)

(assert (=> b!3726597 (= e!2306214 (Union!10911 (Concat!17182 call!271543 (regTwo!22334 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))) EmptyLang!10911))))

(declare-fun bm!271538 () Bool)

(assert (=> bm!271538 (= call!271541 (derivativeStep!3358 (ite c!644806 (regOne!22335 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))) (ite c!644804 (reg!11240 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))) (ite c!644805 (regTwo!22334 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))) (regOne!22334 (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968))))))))) c!13797))))

(declare-fun b!3726598 () Bool)

(assert (=> b!3726598 (= e!2306217 e!2306215)))

(declare-fun c!644802 () Bool)

(assert (=> b!3726598 (= c!644802 ((_ is ElementMatch!10911) (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))))))

(declare-fun b!3726599 () Bool)

(assert (=> b!3726599 (= c!644806 ((_ is Union!10911) (ite c!644783 (regOne!22335 (regOne!22335 r!26968)) (ite c!644781 (reg!11240 (regOne!22335 r!26968)) (ite c!644782 (regTwo!22334 (regOne!22335 r!26968)) (regOne!22334 (regOne!22335 r!26968)))))))))

(assert (=> b!3726599 (= e!2306215 e!2306216)))

(assert (= (and d!1089959 c!644803) b!3726596))

(assert (= (and d!1089959 (not c!644803)) b!3726598))

(assert (= (and b!3726598 c!644802) b!3726591))

(assert (= (and b!3726598 (not c!644802)) b!3726599))

(assert (= (and b!3726599 c!644806) b!3726594))

(assert (= (and b!3726599 (not c!644806)) b!3726593))

(assert (= (and b!3726593 c!644804) b!3726592))

(assert (= (and b!3726593 (not c!644804)) b!3726595))

(assert (= (and b!3726595 c!644805) b!3726590))

(assert (= (and b!3726595 (not c!644805)) b!3726597))

(assert (= (or b!3726590 b!3726597) bm!271536))

(assert (= (or b!3726592 bm!271536) bm!271535))

(assert (= (or b!3726594 bm!271535) bm!271538))

(assert (= (or b!3726594 b!3726590) bm!271537))

(declare-fun m!4228047 () Bool)

(assert (=> d!1089959 m!4228047))

(declare-fun m!4228049 () Bool)

(assert (=> d!1089959 m!4228049))

(declare-fun m!4228051 () Bool)

(assert (=> b!3726595 m!4228051))

(declare-fun m!4228053 () Bool)

(assert (=> bm!271537 m!4228053))

(declare-fun m!4228055 () Bool)

(assert (=> bm!271538 m!4228055))

(assert (=> bm!271521 d!1089959))

(declare-fun d!1089961 () Bool)

(declare-fun c!644807 () Bool)

(assert (=> d!1089961 (= c!644807 ((_ is Nil!39668) (usedCharacters!1174 r!26968)))))

(declare-fun e!2306219 () (InoxSet C!22008))

(assert (=> d!1089961 (= (content!5768 (usedCharacters!1174 r!26968)) e!2306219)))

(declare-fun b!3726600 () Bool)

(assert (=> b!3726600 (= e!2306219 ((as const (Array C!22008 Bool)) false))))

(declare-fun b!3726601 () Bool)

(assert (=> b!3726601 (= e!2306219 ((_ map or) (store ((as const (Array C!22008 Bool)) false) (h!45088 (usedCharacters!1174 r!26968)) true) (content!5768 (t!302475 (usedCharacters!1174 r!26968)))))))

(assert (= (and d!1089961 c!644807) b!3726600))

(assert (= (and d!1089961 (not c!644807)) b!3726601))

(declare-fun m!4228057 () Bool)

(assert (=> b!3726601 m!4228057))

(assert (=> b!3726601 m!4227997))

(assert (=> d!1089909 d!1089961))

(assert (=> d!1089925 d!1089921))

(assert (=> d!1089925 d!1089917))

(assert (=> d!1089925 d!1089933))

(declare-fun d!1089963 () Bool)

(assert (=> d!1089963 (not (contains!8004 (usedCharacters!1174 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) cNot!42))))

(assert (=> d!1089963 true))

(declare-fun _$133!98 () Unit!57572)

(assert (=> d!1089963 (= (choose!22223 (regOne!22335 r!26968) c!13797 cNot!42) _$133!98)))

(declare-fun bs!575037 () Bool)

(assert (= bs!575037 d!1089963))

(assert (=> bs!575037 m!4227843))

(assert (=> bs!575037 m!4227843))

(assert (=> bs!575037 m!4227839))

(assert (=> bs!575037 m!4227839))

(assert (=> bs!575037 m!4227841))

(assert (=> d!1089925 d!1089963))

(declare-fun b!3726602 () Bool)

(declare-fun e!2306223 () List!39792)

(declare-fun call!271544 () List!39792)

(assert (=> b!3726602 (= e!2306223 call!271544)))

(declare-fun c!644811 () Bool)

(declare-fun bm!271539 () Bool)

(declare-fun call!271546 () List!39792)

(assert (=> bm!271539 (= call!271546 (usedCharacters!1174 (ite c!644811 (regTwo!22335 (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) (regOne!22334 (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))))

(declare-fun bm!271540 () Bool)

(declare-fun c!644809 () Bool)

(assert (=> bm!271540 (= call!271544 (usedCharacters!1174 (ite c!644809 (reg!11240 (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) (ite c!644811 (regOne!22335 (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) (regTwo!22334 (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968))))))))))

(declare-fun d!1089965 () Bool)

(declare-fun c!644810 () Bool)

(assert (=> d!1089965 (= c!644810 (or ((_ is EmptyExpr!10911) (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) ((_ is EmptyLang!10911) (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968))))))))

(declare-fun e!2306221 () List!39792)

(assert (=> d!1089965 (= (usedCharacters!1174 (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) e!2306221)))

(declare-fun b!3726603 () Bool)

(declare-fun e!2306222 () List!39792)

(assert (=> b!3726603 (= e!2306223 e!2306222)))

(assert (=> b!3726603 (= c!644811 ((_ is Union!10911) (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))

(declare-fun b!3726604 () Bool)

(declare-fun e!2306220 () List!39792)

(assert (=> b!3726604 (= e!2306220 (Cons!39668 (c!644695 (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) Nil!39668))))

(declare-fun b!3726605 () Bool)

(declare-fun call!271545 () List!39792)

(assert (=> b!3726605 (= e!2306222 call!271545)))

(declare-fun b!3726606 () Bool)

(assert (=> b!3726606 (= e!2306222 call!271545)))

(declare-fun call!271547 () List!39792)

(declare-fun bm!271541 () Bool)

(assert (=> bm!271541 (= call!271545 (++!9835 (ite c!644811 call!271547 call!271546) (ite c!644811 call!271546 call!271547)))))

(declare-fun bm!271542 () Bool)

(assert (=> bm!271542 (= call!271547 call!271544)))

(declare-fun b!3726607 () Bool)

(assert (=> b!3726607 (= e!2306221 Nil!39668)))

(declare-fun b!3726608 () Bool)

(assert (=> b!3726608 (= e!2306221 e!2306220)))

(declare-fun c!644812 () Bool)

(assert (=> b!3726608 (= c!644812 ((_ is ElementMatch!10911) (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))

(declare-fun b!3726609 () Bool)

(assert (=> b!3726609 (= c!644809 ((_ is Star!10911) (ite c!644714 (regTwo!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))

(assert (=> b!3726609 (= e!2306220 e!2306223)))

(assert (= (and d!1089965 c!644810) b!3726607))

(assert (= (and d!1089965 (not c!644810)) b!3726608))

(assert (= (and b!3726608 c!644812) b!3726604))

(assert (= (and b!3726608 (not c!644812)) b!3726609))

(assert (= (and b!3726609 c!644809) b!3726602))

(assert (= (and b!3726609 (not c!644809)) b!3726603))

(assert (= (and b!3726603 c!644811) b!3726606))

(assert (= (and b!3726603 (not c!644811)) b!3726605))

(assert (= (or b!3726606 b!3726605) bm!271542))

(assert (= (or b!3726606 b!3726605) bm!271539))

(assert (= (or b!3726606 b!3726605) bm!271541))

(assert (= (or b!3726602 bm!271542) bm!271540))

(declare-fun m!4228059 () Bool)

(assert (=> bm!271539 m!4228059))

(declare-fun m!4228061 () Bool)

(assert (=> bm!271540 m!4228061))

(declare-fun m!4228063 () Bool)

(assert (=> bm!271541 m!4228063))

(assert (=> bm!271450 d!1089965))

(declare-fun bm!271543 () Bool)

(declare-fun call!271550 () Bool)

(declare-fun c!644814 () Bool)

(declare-fun c!644813 () Bool)

(assert (=> bm!271543 (= call!271550 (validRegex!5018 (ite c!644813 (reg!11240 (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))) (ite c!644814 (regTwo!22335 (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))) (regTwo!22334 (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968)))))))))

(declare-fun b!3726610 () Bool)

(declare-fun e!2306230 () Bool)

(declare-fun e!2306229 () Bool)

(assert (=> b!3726610 (= e!2306230 e!2306229)))

(declare-fun res!1513756 () Bool)

(assert (=> b!3726610 (= res!1513756 (not (nullable!3819 (reg!11240 (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))))))))

(assert (=> b!3726610 (=> (not res!1513756) (not e!2306229))))

(declare-fun call!271548 () Bool)

(declare-fun bm!271544 () Bool)

(assert (=> bm!271544 (= call!271548 (validRegex!5018 (ite c!644814 (regOne!22335 (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))) (regOne!22334 (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))))))))

(declare-fun b!3726611 () Bool)

(declare-fun e!2306228 () Bool)

(assert (=> b!3726611 (= e!2306228 e!2306230)))

(assert (=> b!3726611 (= c!644813 ((_ is Star!10911) (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))))))

(declare-fun bm!271545 () Bool)

(declare-fun call!271549 () Bool)

(assert (=> bm!271545 (= call!271549 call!271550)))

(declare-fun b!3726612 () Bool)

(declare-fun e!2306227 () Bool)

(declare-fun e!2306224 () Bool)

(assert (=> b!3726612 (= e!2306227 e!2306224)))

(declare-fun res!1513755 () Bool)

(assert (=> b!3726612 (=> (not res!1513755) (not e!2306224))))

(assert (=> b!3726612 (= res!1513755 call!271548)))

(declare-fun b!3726613 () Bool)

(assert (=> b!3726613 (= e!2306229 call!271550)))

(declare-fun b!3726614 () Bool)

(assert (=> b!3726614 (= e!2306224 call!271549)))

(declare-fun d!1089967 () Bool)

(declare-fun res!1513757 () Bool)

(assert (=> d!1089967 (=> res!1513757 e!2306228)))

(assert (=> d!1089967 (= res!1513757 ((_ is ElementMatch!10911) (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))))))

(assert (=> d!1089967 (= (validRegex!5018 (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))) e!2306228)))

(declare-fun b!3726615 () Bool)

(declare-fun e!2306225 () Bool)

(assert (=> b!3726615 (= e!2306230 e!2306225)))

(assert (=> b!3726615 (= c!644814 ((_ is Union!10911) (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968))))))

(declare-fun b!3726616 () Bool)

(declare-fun e!2306226 () Bool)

(assert (=> b!3726616 (= e!2306226 call!271549)))

(declare-fun b!3726617 () Bool)

(declare-fun res!1513758 () Bool)

(assert (=> b!3726617 (=> (not res!1513758) (not e!2306226))))

(assert (=> b!3726617 (= res!1513758 call!271548)))

(assert (=> b!3726617 (= e!2306225 e!2306226)))

(declare-fun b!3726618 () Bool)

(declare-fun res!1513754 () Bool)

(assert (=> b!3726618 (=> res!1513754 e!2306227)))

(assert (=> b!3726618 (= res!1513754 (not ((_ is Concat!17182) (ite c!644729 (regOne!22335 r!26968) (regOne!22334 r!26968)))))))

(assert (=> b!3726618 (= e!2306225 e!2306227)))

(assert (= (and d!1089967 (not res!1513757)) b!3726611))

(assert (= (and b!3726611 c!644813) b!3726610))

(assert (= (and b!3726611 (not c!644813)) b!3726615))

(assert (= (and b!3726610 res!1513756) b!3726613))

(assert (= (and b!3726615 c!644814) b!3726617))

(assert (= (and b!3726615 (not c!644814)) b!3726618))

(assert (= (and b!3726617 res!1513758) b!3726616))

(assert (= (and b!3726618 (not res!1513754)) b!3726612))

(assert (= (and b!3726612 res!1513755) b!3726614))

(assert (= (or b!3726616 b!3726614) bm!271545))

(assert (= (or b!3726617 b!3726612) bm!271544))

(assert (= (or b!3726613 bm!271545) bm!271543))

(declare-fun m!4228065 () Bool)

(assert (=> bm!271543 m!4228065))

(declare-fun m!4228067 () Bool)

(assert (=> b!3726610 m!4228067))

(declare-fun m!4228069 () Bool)

(assert (=> bm!271544 m!4228069))

(assert (=> bm!271471 d!1089967))

(declare-fun d!1089969 () Bool)

(assert (=> d!1089969 (= (nullable!3819 (reg!11240 r!26968)) (nullableFct!1080 (reg!11240 r!26968)))))

(declare-fun bs!575038 () Bool)

(assert (= bs!575038 d!1089969))

(declare-fun m!4228071 () Bool)

(assert (=> bs!575038 m!4228071))

(assert (=> b!3726329 d!1089969))

(declare-fun b!3726619 () Bool)

(declare-fun e!2306234 () List!39792)

(declare-fun call!271551 () List!39792)

(assert (=> b!3726619 (= e!2306234 call!271551)))

(declare-fun call!271553 () List!39792)

(declare-fun c!644817 () Bool)

(declare-fun bm!271546 () Bool)

(assert (=> bm!271546 (= call!271553 (usedCharacters!1174 (ite c!644817 (regTwo!22335 (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) (regOne!22334 (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))))

(declare-fun c!644815 () Bool)

(declare-fun bm!271547 () Bool)

(assert (=> bm!271547 (= call!271551 (usedCharacters!1174 (ite c!644815 (reg!11240 (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) (ite c!644817 (regOne!22335 (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) (regTwo!22334 (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968)))))))))))

(declare-fun c!644816 () Bool)

(declare-fun d!1089971 () Bool)

(assert (=> d!1089971 (= c!644816 (or ((_ is EmptyExpr!10911) (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) ((_ is EmptyLang!10911) (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968)))))))))

(declare-fun e!2306232 () List!39792)

(assert (=> d!1089971 (= (usedCharacters!1174 (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) e!2306232)))

(declare-fun b!3726620 () Bool)

(declare-fun e!2306233 () List!39792)

(assert (=> b!3726620 (= e!2306234 e!2306233)))

(assert (=> b!3726620 (= c!644817 ((_ is Union!10911) (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))

(declare-fun e!2306231 () List!39792)

(declare-fun b!3726621 () Bool)

(assert (=> b!3726621 (= e!2306231 (Cons!39668 (c!644695 (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) Nil!39668))))

(declare-fun b!3726622 () Bool)

(declare-fun call!271552 () List!39792)

(assert (=> b!3726622 (= e!2306233 call!271552)))

(declare-fun b!3726623 () Bool)

(assert (=> b!3726623 (= e!2306233 call!271552)))

(declare-fun bm!271548 () Bool)

(declare-fun call!271554 () List!39792)

(assert (=> bm!271548 (= call!271552 (++!9835 (ite c!644817 call!271554 call!271553) (ite c!644817 call!271553 call!271554)))))

(declare-fun bm!271549 () Bool)

(assert (=> bm!271549 (= call!271554 call!271551)))

(declare-fun b!3726624 () Bool)

(assert (=> b!3726624 (= e!2306232 Nil!39668)))

(declare-fun b!3726625 () Bool)

(assert (=> b!3726625 (= e!2306232 e!2306231)))

(declare-fun c!644818 () Bool)

(assert (=> b!3726625 (= c!644818 ((_ is ElementMatch!10911) (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))

(declare-fun b!3726626 () Bool)

(assert (=> b!3726626 (= c!644815 ((_ is Star!10911) (ite c!644712 (reg!11240 (regTwo!22335 r!26968)) (ite c!644714 (regOne!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))

(assert (=> b!3726626 (= e!2306231 e!2306234)))

(assert (= (and d!1089971 c!644816) b!3726624))

(assert (= (and d!1089971 (not c!644816)) b!3726625))

(assert (= (and b!3726625 c!644818) b!3726621))

(assert (= (and b!3726625 (not c!644818)) b!3726626))

(assert (= (and b!3726626 c!644815) b!3726619))

(assert (= (and b!3726626 (not c!644815)) b!3726620))

(assert (= (and b!3726620 c!644817) b!3726623))

(assert (= (and b!3726620 (not c!644817)) b!3726622))

(assert (= (or b!3726623 b!3726622) bm!271549))

(assert (= (or b!3726623 b!3726622) bm!271546))

(assert (= (or b!3726623 b!3726622) bm!271548))

(assert (= (or b!3726619 bm!271549) bm!271547))

(declare-fun m!4228073 () Bool)

(assert (=> bm!271546 m!4228073))

(declare-fun m!4228075 () Bool)

(assert (=> bm!271547 m!4228075))

(declare-fun m!4228077 () Bool)

(assert (=> bm!271548 m!4228077))

(assert (=> bm!271451 d!1089971))

(declare-fun d!1089973 () Bool)

(declare-fun c!644819 () Bool)

(assert (=> d!1089973 (= c!644819 ((_ is Nil!39668) (usedCharacters!1174 (regTwo!22335 r!26968))))))

(declare-fun e!2306235 () (InoxSet C!22008))

(assert (=> d!1089973 (= (content!5768 (usedCharacters!1174 (regTwo!22335 r!26968))) e!2306235)))

(declare-fun b!3726627 () Bool)

(assert (=> b!3726627 (= e!2306235 ((as const (Array C!22008 Bool)) false))))

(declare-fun b!3726628 () Bool)

(assert (=> b!3726628 (= e!2306235 ((_ map or) (store ((as const (Array C!22008 Bool)) false) (h!45088 (usedCharacters!1174 (regTwo!22335 r!26968))) true) (content!5768 (t!302475 (usedCharacters!1174 (regTwo!22335 r!26968))))))))

(assert (= (and d!1089973 c!644819) b!3726627))

(assert (= (and d!1089973 (not c!644819)) b!3726628))

(declare-fun m!4228079 () Bool)

(assert (=> b!3726628 m!4228079))

(assert (=> b!3726628 m!4227991))

(assert (=> d!1089897 d!1089973))

(declare-fun c!644821 () Bool)

(declare-fun bm!271550 () Bool)

(declare-fun c!644820 () Bool)

(declare-fun call!271557 () Bool)

(assert (=> bm!271550 (= call!271557 (validRegex!5018 (ite c!644820 (reg!11240 (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) (ite c!644821 (regTwo!22335 (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) (regTwo!22334 (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968)))))))))))

(declare-fun b!3726629 () Bool)

(declare-fun e!2306242 () Bool)

(declare-fun e!2306241 () Bool)

(assert (=> b!3726629 (= e!2306242 e!2306241)))

(declare-fun res!1513761 () Bool)

(assert (=> b!3726629 (= res!1513761 (not (nullable!3819 (reg!11240 (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))))

(assert (=> b!3726629 (=> (not res!1513761) (not e!2306241))))

(declare-fun call!271555 () Bool)

(declare-fun bm!271551 () Bool)

(assert (=> bm!271551 (= call!271555 (validRegex!5018 (ite c!644821 (regOne!22335 (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) (regOne!22334 (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))))

(declare-fun b!3726630 () Bool)

(declare-fun e!2306240 () Bool)

(assert (=> b!3726630 (= e!2306240 e!2306242)))

(assert (=> b!3726630 (= c!644820 ((_ is Star!10911) (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))

(declare-fun bm!271552 () Bool)

(declare-fun call!271556 () Bool)

(assert (=> bm!271552 (= call!271556 call!271557)))

(declare-fun b!3726631 () Bool)

(declare-fun e!2306239 () Bool)

(declare-fun e!2306236 () Bool)

(assert (=> b!3726631 (= e!2306239 e!2306236)))

(declare-fun res!1513760 () Bool)

(assert (=> b!3726631 (=> (not res!1513760) (not e!2306236))))

(assert (=> b!3726631 (= res!1513760 call!271555)))

(declare-fun b!3726632 () Bool)

(assert (=> b!3726632 (= e!2306241 call!271557)))

(declare-fun b!3726633 () Bool)

(assert (=> b!3726633 (= e!2306236 call!271556)))

(declare-fun d!1089975 () Bool)

(declare-fun res!1513762 () Bool)

(assert (=> d!1089975 (=> res!1513762 e!2306240)))

(assert (=> d!1089975 (= res!1513762 ((_ is ElementMatch!10911) (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))

(assert (=> d!1089975 (= (validRegex!5018 (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))) e!2306240)))

(declare-fun b!3726634 () Bool)

(declare-fun e!2306237 () Bool)

(assert (=> b!3726634 (= e!2306242 e!2306237)))

(assert (=> b!3726634 (= c!644821 ((_ is Union!10911) (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968))))))))

(declare-fun b!3726635 () Bool)

(declare-fun e!2306238 () Bool)

(assert (=> b!3726635 (= e!2306238 call!271556)))

(declare-fun b!3726636 () Bool)

(declare-fun res!1513763 () Bool)

(assert (=> b!3726636 (=> (not res!1513763) (not e!2306238))))

(assert (=> b!3726636 (= res!1513763 call!271555)))

(assert (=> b!3726636 (= e!2306237 e!2306238)))

(declare-fun b!3726637 () Bool)

(declare-fun res!1513759 () Bool)

(assert (=> b!3726637 (=> res!1513759 e!2306239)))

(assert (=> b!3726637 (= res!1513759 (not ((_ is Concat!17182) (ite c!644750 (reg!11240 (regTwo!22335 r!26968)) (ite c!644751 (regTwo!22335 (regTwo!22335 r!26968)) (regTwo!22334 (regTwo!22335 r!26968)))))))))

(assert (=> b!3726637 (= e!2306237 e!2306239)))

(assert (= (and d!1089975 (not res!1513762)) b!3726630))

(assert (= (and b!3726630 c!644820) b!3726629))

(assert (= (and b!3726630 (not c!644820)) b!3726634))

(assert (= (and b!3726629 res!1513761) b!3726632))

(assert (= (and b!3726634 c!644821) b!3726636))

(assert (= (and b!3726634 (not c!644821)) b!3726637))

(assert (= (and b!3726636 res!1513763) b!3726635))

(assert (= (and b!3726637 (not res!1513759)) b!3726631))

(assert (= (and b!3726631 res!1513760) b!3726633))

(assert (= (or b!3726635 b!3726633) bm!271552))

(assert (= (or b!3726636 b!3726631) bm!271551))

(assert (= (or b!3726632 bm!271552) bm!271550))

(declare-fun m!4228081 () Bool)

(assert (=> bm!271550 m!4228081))

(declare-fun m!4228083 () Bool)

(assert (=> b!3726629 m!4228083))

(declare-fun m!4228085 () Bool)

(assert (=> bm!271551 m!4228085))

(assert (=> bm!271492 d!1089975))

(declare-fun b!3726638 () Bool)

(declare-fun e!2306246 () List!39792)

(declare-fun call!271558 () List!39792)

(assert (=> b!3726638 (= e!2306246 call!271558)))

(declare-fun bm!271553 () Bool)

(declare-fun call!271560 () List!39792)

(declare-fun c!644824 () Bool)

(assert (=> bm!271553 (= call!271560 (usedCharacters!1174 (ite c!644824 (regTwo!22335 (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))) (regOne!22334 (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))))))

(declare-fun bm!271554 () Bool)

(declare-fun c!644822 () Bool)

(assert (=> bm!271554 (= call!271558 (usedCharacters!1174 (ite c!644822 (reg!11240 (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))) (ite c!644824 (regOne!22335 (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))) (regTwo!22334 (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))))))

(declare-fun d!1089977 () Bool)

(declare-fun c!644823 () Bool)

(assert (=> d!1089977 (= c!644823 (or ((_ is EmptyExpr!10911) (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))) ((_ is EmptyLang!10911) (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))))

(declare-fun e!2306244 () List!39792)

(assert (=> d!1089977 (= (usedCharacters!1174 (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))) e!2306244)))

(declare-fun b!3726639 () Bool)

(declare-fun e!2306245 () List!39792)

(assert (=> b!3726639 (= e!2306246 e!2306245)))

(assert (=> b!3726639 (= c!644824 ((_ is Union!10911) (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))))

(declare-fun e!2306243 () List!39792)

(declare-fun b!3726640 () Bool)

(assert (=> b!3726640 (= e!2306243 (Cons!39668 (c!644695 (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))) Nil!39668))))

(declare-fun b!3726641 () Bool)

(declare-fun call!271559 () List!39792)

(assert (=> b!3726641 (= e!2306245 call!271559)))

(declare-fun b!3726642 () Bool)

(assert (=> b!3726642 (= e!2306245 call!271559)))

(declare-fun bm!271555 () Bool)

(declare-fun call!271561 () List!39792)

(assert (=> bm!271555 (= call!271559 (++!9835 (ite c!644824 call!271561 call!271560) (ite c!644824 call!271560 call!271561)))))

(declare-fun bm!271556 () Bool)

(assert (=> bm!271556 (= call!271561 call!271558)))

(declare-fun b!3726643 () Bool)

(assert (=> b!3726643 (= e!2306244 Nil!39668)))

(declare-fun b!3726644 () Bool)

(assert (=> b!3726644 (= e!2306244 e!2306243)))

(declare-fun c!644825 () Bool)

(assert (=> b!3726644 (= c!644825 ((_ is ElementMatch!10911) (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))))

(declare-fun b!3726645 () Bool)

(assert (=> b!3726645 (= c!644822 ((_ is Star!10911) (ite c!644742 (regTwo!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regOne!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))))

(assert (=> b!3726645 (= e!2306243 e!2306246)))

(assert (= (and d!1089977 c!644823) b!3726643))

(assert (= (and d!1089977 (not c!644823)) b!3726644))

(assert (= (and b!3726644 c!644825) b!3726640))

(assert (= (and b!3726644 (not c!644825)) b!3726645))

(assert (= (and b!3726645 c!644822) b!3726638))

(assert (= (and b!3726645 (not c!644822)) b!3726639))

(assert (= (and b!3726639 c!644824) b!3726642))

(assert (= (and b!3726639 (not c!644824)) b!3726641))

(assert (= (or b!3726642 b!3726641) bm!271556))

(assert (= (or b!3726642 b!3726641) bm!271553))

(assert (= (or b!3726642 b!3726641) bm!271555))

(assert (= (or b!3726638 bm!271556) bm!271554))

(declare-fun m!4228087 () Bool)

(assert (=> bm!271553 m!4228087))

(declare-fun m!4228089 () Bool)

(assert (=> bm!271554 m!4228089))

(declare-fun m!4228091 () Bool)

(assert (=> bm!271555 m!4228091))

(assert (=> bm!271484 d!1089977))

(declare-fun b!3726646 () Bool)

(declare-fun e!2306250 () List!39792)

(declare-fun call!271562 () List!39792)

(assert (=> b!3726646 (= e!2306250 call!271562)))

(declare-fun bm!271557 () Bool)

(declare-fun c!644828 () Bool)

(declare-fun call!271564 () List!39792)

(assert (=> bm!271557 (= call!271564 (usedCharacters!1174 (ite c!644828 (regTwo!22335 (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))) (regOne!22334 (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))))))))

(declare-fun c!644826 () Bool)

(declare-fun bm!271558 () Bool)

(assert (=> bm!271558 (= call!271562 (usedCharacters!1174 (ite c!644826 (reg!11240 (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))) (ite c!644828 (regOne!22335 (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))) (regTwo!22334 (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968)))))))))

(declare-fun d!1089979 () Bool)

(declare-fun c!644827 () Bool)

(assert (=> d!1089979 (= c!644827 (or ((_ is EmptyExpr!10911) (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))) ((_ is EmptyLang!10911) (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968)))))))

(declare-fun e!2306248 () List!39792)

(assert (=> d!1089979 (= (usedCharacters!1174 (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))) e!2306248)))

(declare-fun b!3726647 () Bool)

(declare-fun e!2306249 () List!39792)

(assert (=> b!3726647 (= e!2306250 e!2306249)))

(assert (=> b!3726647 (= c!644828 ((_ is Union!10911) (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))))))

(declare-fun b!3726648 () Bool)

(declare-fun e!2306247 () List!39792)

(assert (=> b!3726648 (= e!2306247 (Cons!39668 (c!644695 (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))) Nil!39668))))

(declare-fun b!3726649 () Bool)

(declare-fun call!271563 () List!39792)

(assert (=> b!3726649 (= e!2306249 call!271563)))

(declare-fun b!3726650 () Bool)

(assert (=> b!3726650 (= e!2306249 call!271563)))

(declare-fun call!271565 () List!39792)

(declare-fun bm!271559 () Bool)

(assert (=> bm!271559 (= call!271563 (++!9835 (ite c!644828 call!271565 call!271564) (ite c!644828 call!271564 call!271565)))))

(declare-fun bm!271560 () Bool)

(assert (=> bm!271560 (= call!271565 call!271562)))

(declare-fun b!3726651 () Bool)

(assert (=> b!3726651 (= e!2306248 Nil!39668)))

(declare-fun b!3726652 () Bool)

(assert (=> b!3726652 (= e!2306248 e!2306247)))

(declare-fun c!644829 () Bool)

(assert (=> b!3726652 (= c!644829 ((_ is ElementMatch!10911) (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))))))

(declare-fun b!3726653 () Bool)

(assert (=> b!3726653 (= c!644826 ((_ is Star!10911) (ite c!644734 (regTwo!22335 r!26968) (regOne!22334 r!26968))))))

(assert (=> b!3726653 (= e!2306247 e!2306250)))

(assert (= (and d!1089979 c!644827) b!3726651))

(assert (= (and d!1089979 (not c!644827)) b!3726652))

(assert (= (and b!3726652 c!644829) b!3726648))

(assert (= (and b!3726652 (not c!644829)) b!3726653))

(assert (= (and b!3726653 c!644826) b!3726646))

(assert (= (and b!3726653 (not c!644826)) b!3726647))

(assert (= (and b!3726647 c!644828) b!3726650))

(assert (= (and b!3726647 (not c!644828)) b!3726649))

(assert (= (or b!3726650 b!3726649) bm!271560))

(assert (= (or b!3726650 b!3726649) bm!271557))

(assert (= (or b!3726650 b!3726649) bm!271559))

(assert (= (or b!3726646 bm!271560) bm!271558))

(declare-fun m!4228093 () Bool)

(assert (=> bm!271557 m!4228093))

(declare-fun m!4228095 () Bool)

(assert (=> bm!271558 m!4228095))

(declare-fun m!4228097 () Bool)

(assert (=> bm!271559 m!4228097))

(assert (=> bm!271476 d!1089979))

(declare-fun d!1089983 () Bool)

(assert (=> d!1089983 (= (nullable!3819 (reg!11240 (regTwo!22335 r!26968))) (nullableFct!1080 (reg!11240 (regTwo!22335 r!26968))))))

(declare-fun bs!575039 () Bool)

(assert (= bs!575039 d!1089983))

(declare-fun m!4228099 () Bool)

(assert (=> bs!575039 m!4228099))

(assert (=> b!3726387 d!1089983))

(declare-fun b!3726663 () Bool)

(declare-fun e!2306261 () List!39792)

(declare-fun call!271569 () List!39792)

(assert (=> b!3726663 (= e!2306261 call!271569)))

(declare-fun call!271571 () List!39792)

(declare-fun c!644834 () Bool)

(declare-fun bm!271564 () Bool)

(assert (=> bm!271564 (= call!271571 (usedCharacters!1174 (ite c!644834 (regTwo!22335 (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))) (regOne!22334 (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))))))

(declare-fun bm!271565 () Bool)

(declare-fun c!644832 () Bool)

(assert (=> bm!271565 (= call!271569 (usedCharacters!1174 (ite c!644832 (reg!11240 (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))) (ite c!644834 (regOne!22335 (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))) (regTwo!22334 (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))))))))

(declare-fun c!644833 () Bool)

(declare-fun d!1089985 () Bool)

(assert (=> d!1089985 (= c!644833 (or ((_ is EmptyExpr!10911) (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))) ((_ is EmptyLang!10911) (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)))))))))

(declare-fun e!2306259 () List!39792)

(assert (=> d!1089985 (= (usedCharacters!1174 (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))) e!2306259)))

(declare-fun b!3726664 () Bool)

(declare-fun e!2306260 () List!39792)

(assert (=> b!3726664 (= e!2306261 e!2306260)))

(assert (=> b!3726664 (= c!644834 ((_ is Union!10911) (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))))

(declare-fun e!2306258 () List!39792)

(declare-fun b!3726665 () Bool)

(assert (=> b!3726665 (= e!2306258 (Cons!39668 (c!644695 (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))) Nil!39668))))

(declare-fun b!3726666 () Bool)

(declare-fun call!271570 () List!39792)

(assert (=> b!3726666 (= e!2306260 call!271570)))

(declare-fun b!3726667 () Bool)

(assert (=> b!3726667 (= e!2306260 call!271570)))

(declare-fun bm!271566 () Bool)

(declare-fun call!271572 () List!39792)

(assert (=> bm!271566 (= call!271570 (++!9835 (ite c!644834 call!271572 call!271571) (ite c!644834 call!271571 call!271572)))))

(declare-fun bm!271567 () Bool)

(assert (=> bm!271567 (= call!271572 call!271569)))

(declare-fun b!3726668 () Bool)

(assert (=> b!3726668 (= e!2306259 Nil!39668)))

(declare-fun b!3726669 () Bool)

(assert (=> b!3726669 (= e!2306259 e!2306258)))

(declare-fun c!644835 () Bool)

(assert (=> b!3726669 (= c!644835 ((_ is ElementMatch!10911) (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))))

(declare-fun b!3726670 () Bool)

(assert (=> b!3726670 (= c!644832 ((_ is Star!10911) (ite c!644740 (reg!11240 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (ite c!644742 (regOne!22335 (derivativeStep!3358 (regOne!22335 r!26968) c!13797)) (regTwo!22334 (derivativeStep!3358 (regOne!22335 r!26968) c!13797))))))))

(assert (=> b!3726670 (= e!2306258 e!2306261)))

(assert (= (and d!1089985 c!644833) b!3726668))

(assert (= (and d!1089985 (not c!644833)) b!3726669))

(assert (= (and b!3726669 c!644835) b!3726665))

(assert (= (and b!3726669 (not c!644835)) b!3726670))

(assert (= (and b!3726670 c!644832) b!3726663))

(assert (= (and b!3726670 (not c!644832)) b!3726664))

(assert (= (and b!3726664 c!644834) b!3726667))

(assert (= (and b!3726664 (not c!644834)) b!3726666))

(assert (= (or b!3726667 b!3726666) bm!271567))

(assert (= (or b!3726667 b!3726666) bm!271564))

(assert (= (or b!3726667 b!3726666) bm!271566))

(assert (= (or b!3726663 bm!271567) bm!271565))

(declare-fun m!4228101 () Bool)

(assert (=> bm!271564 m!4228101))

(declare-fun m!4228105 () Bool)

(assert (=> bm!271565 m!4228105))

(declare-fun m!4228109 () Bool)

(assert (=> bm!271566 m!4228109))

(assert (=> bm!271485 d!1089985))

(declare-fun b!3726671 () Bool)

(declare-fun e!2306265 () List!39792)

(declare-fun call!271573 () List!39792)

(assert (=> b!3726671 (= e!2306265 call!271573)))

(declare-fun c!644838 () Bool)

(declare-fun bm!271568 () Bool)

(declare-fun call!271575 () List!39792)

(assert (=> bm!271568 (= call!271575 (usedCharacters!1174 (ite c!644838 (regTwo!22335 (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))) (regOne!22334 (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))))))))

(declare-fun bm!271569 () Bool)

(declare-fun c!644836 () Bool)

(assert (=> bm!271569 (= call!271573 (usedCharacters!1174 (ite c!644836 (reg!11240 (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))) (ite c!644838 (regOne!22335 (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))) (regTwo!22334 (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968))))))))))

(declare-fun d!1089987 () Bool)

(declare-fun c!644837 () Bool)

(assert (=> d!1089987 (= c!644837 (or ((_ is EmptyExpr!10911) (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))) ((_ is EmptyLang!10911) (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968))))))))

(declare-fun e!2306263 () List!39792)

(assert (=> d!1089987 (= (usedCharacters!1174 (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))) e!2306263)))

(declare-fun b!3726672 () Bool)

(declare-fun e!2306264 () List!39792)

(assert (=> b!3726672 (= e!2306265 e!2306264)))

(assert (=> b!3726672 (= c!644838 ((_ is Union!10911) (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))))))

(declare-fun b!3726673 () Bool)

(declare-fun e!2306262 () List!39792)

(assert (=> b!3726673 (= e!2306262 (Cons!39668 (c!644695 (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))) Nil!39668))))

(declare-fun b!3726674 () Bool)

(declare-fun call!271574 () List!39792)

(assert (=> b!3726674 (= e!2306264 call!271574)))

(declare-fun b!3726675 () Bool)

(assert (=> b!3726675 (= e!2306264 call!271574)))

(declare-fun call!271576 () List!39792)

(declare-fun bm!271570 () Bool)

(assert (=> bm!271570 (= call!271574 (++!9835 (ite c!644838 call!271576 call!271575) (ite c!644838 call!271575 call!271576)))))

(declare-fun bm!271571 () Bool)

(assert (=> bm!271571 (= call!271576 call!271573)))

(declare-fun b!3726676 () Bool)

(assert (=> b!3726676 (= e!2306263 Nil!39668)))

(declare-fun b!3726677 () Bool)

(assert (=> b!3726677 (= e!2306263 e!2306262)))

(declare-fun c!644839 () Bool)

(assert (=> b!3726677 (= c!644839 ((_ is ElementMatch!10911) (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))))))

(declare-fun b!3726678 () Bool)

(assert (=> b!3726678 (= c!644836 ((_ is Star!10911) (ite c!644732 (reg!11240 r!26968) (ite c!644734 (regOne!22335 r!26968) (regTwo!22334 r!26968)))))))

(assert (=> b!3726678 (= e!2306262 e!2306265)))

(assert (= (and d!1089987 c!644837) b!3726676))

(assert (= (and d!1089987 (not c!644837)) b!3726677))

(assert (= (and b!3726677 c!644839) b!3726673))

(assert (= (and b!3726677 (not c!644839)) b!3726678))

(assert (= (and b!3726678 c!644836) b!3726671))

(assert (= (and b!3726678 (not c!644836)) b!3726672))

(assert (= (and b!3726672 c!644838) b!3726675))

(assert (= (and b!3726672 (not c!644838)) b!3726674))

(assert (= (or b!3726675 b!3726674) bm!271571))

(assert (= (or b!3726675 b!3726674) bm!271568))

(assert (= (or b!3726675 b!3726674) bm!271570))

(assert (= (or b!3726671 bm!271571) bm!271569))

(declare-fun m!4228113 () Bool)

(assert (=> bm!271568 m!4228113))

(declare-fun m!4228115 () Bool)

(assert (=> bm!271569 m!4228115))

(declare-fun m!4228117 () Bool)

(assert (=> bm!271570 m!4228117))

(assert (=> bm!271477 d!1089987))

(declare-fun c!644845 () Bool)

(declare-fun c!644844 () Bool)

(declare-fun bm!271576 () Bool)

(declare-fun call!271583 () Bool)

(assert (=> bm!271576 (= call!271583 (validRegex!5018 (ite c!644844 (reg!11240 (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) (ite c!644845 (regTwo!22335 (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) (regTwo!22334 (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968))))))))))

(declare-fun b!3726687 () Bool)

(declare-fun e!2306276 () Bool)

(declare-fun e!2306275 () Bool)

(assert (=> b!3726687 (= e!2306276 e!2306275)))

(declare-fun res!1513771 () Bool)

(assert (=> b!3726687 (= res!1513771 (not (nullable!3819 (reg!11240 (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))))

(assert (=> b!3726687 (=> (not res!1513771) (not e!2306275))))

(declare-fun bm!271577 () Bool)

(declare-fun call!271581 () Bool)

(assert (=> bm!271577 (= call!271581 (validRegex!5018 (ite c!644845 (regOne!22335 (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) (regOne!22334 (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))))

(declare-fun b!3726688 () Bool)

(declare-fun e!2306274 () Bool)

(assert (=> b!3726688 (= e!2306274 e!2306276)))

(assert (=> b!3726688 (= c!644844 ((_ is Star!10911) (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))

(declare-fun bm!271578 () Bool)

(declare-fun call!271582 () Bool)

(assert (=> bm!271578 (= call!271582 call!271583)))

(declare-fun b!3726689 () Bool)

(declare-fun e!2306273 () Bool)

(declare-fun e!2306270 () Bool)

(assert (=> b!3726689 (= e!2306273 e!2306270)))

(declare-fun res!1513770 () Bool)

(assert (=> b!3726689 (=> (not res!1513770) (not e!2306270))))

(assert (=> b!3726689 (= res!1513770 call!271581)))

(declare-fun b!3726690 () Bool)

(assert (=> b!3726690 (= e!2306275 call!271583)))

(declare-fun b!3726691 () Bool)

(assert (=> b!3726691 (= e!2306270 call!271582)))

(declare-fun d!1089991 () Bool)

(declare-fun res!1513772 () Bool)

(assert (=> d!1089991 (=> res!1513772 e!2306274)))

(assert (=> d!1089991 (= res!1513772 ((_ is ElementMatch!10911) (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))

(assert (=> d!1089991 (= (validRegex!5018 (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))) e!2306274)))

(declare-fun b!3726692 () Bool)

(declare-fun e!2306271 () Bool)

(assert (=> b!3726692 (= e!2306276 e!2306271)))

(assert (=> b!3726692 (= c!644845 ((_ is Union!10911) (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968)))))))

(declare-fun b!3726693 () Bool)

(declare-fun e!2306272 () Bool)

(assert (=> b!3726693 (= e!2306272 call!271582)))

(declare-fun b!3726694 () Bool)

(declare-fun res!1513773 () Bool)

(assert (=> b!3726694 (=> (not res!1513773) (not e!2306272))))

(assert (=> b!3726694 (= res!1513773 call!271581)))

(assert (=> b!3726694 (= e!2306271 e!2306272)))

(declare-fun b!3726695 () Bool)

(declare-fun res!1513769 () Bool)

(assert (=> b!3726695 (=> res!1513769 e!2306273)))

(assert (=> b!3726695 (= res!1513769 (not ((_ is Concat!17182) (ite c!644751 (regOne!22335 (regTwo!22335 r!26968)) (regOne!22334 (regTwo!22335 r!26968))))))))

(assert (=> b!3726695 (= e!2306271 e!2306273)))

(assert (= (and d!1089991 (not res!1513772)) b!3726688))

(assert (= (and b!3726688 c!644844) b!3726687))

(assert (= (and b!3726688 (not c!644844)) b!3726692))

(assert (= (and b!3726687 res!1513771) b!3726690))

(assert (= (and b!3726692 c!644845) b!3726694))

(assert (= (and b!3726692 (not c!644845)) b!3726695))

(assert (= (and b!3726694 res!1513773) b!3726693))

(assert (= (and b!3726695 (not res!1513769)) b!3726689))

(assert (= (and b!3726689 res!1513770) b!3726691))

(assert (= (or b!3726693 b!3726691) bm!271578))

(assert (= (or b!3726694 b!3726689) bm!271577))

(assert (= (or b!3726690 bm!271578) bm!271576))

(declare-fun m!4228125 () Bool)

(assert (=> bm!271576 m!4228125))

(declare-fun m!4228127 () Bool)

(assert (=> b!3726687 m!4228127))

(declare-fun m!4228129 () Bool)

(assert (=> bm!271577 m!4228129))

(assert (=> bm!271493 d!1089991))

(declare-fun d!1089995 () Bool)

(declare-fun e!2306277 () Bool)

(assert (=> d!1089995 e!2306277))

(declare-fun res!1513774 () Bool)

(assert (=> d!1089995 (=> (not res!1513774) (not e!2306277))))

(declare-fun lt!1298418 () List!39792)

(assert (=> d!1089995 (= res!1513774 (= (content!5768 lt!1298418) ((_ map or) (content!5768 (ite c!644714 call!271458 call!271457)) (content!5768 (ite c!644714 call!271457 call!271458)))))))

(declare-fun e!2306278 () List!39792)

(assert (=> d!1089995 (= lt!1298418 e!2306278)))

(declare-fun c!644846 () Bool)

(assert (=> d!1089995 (= c!644846 ((_ is Nil!39668) (ite c!644714 call!271458 call!271457)))))

(assert (=> d!1089995 (= (++!9835 (ite c!644714 call!271458 call!271457) (ite c!644714 call!271457 call!271458)) lt!1298418)))

(declare-fun b!3726696 () Bool)

(assert (=> b!3726696 (= e!2306278 (ite c!644714 call!271457 call!271458))))

(declare-fun b!3726699 () Bool)

(assert (=> b!3726699 (= e!2306277 (or (not (= (ite c!644714 call!271457 call!271458) Nil!39668)) (= lt!1298418 (ite c!644714 call!271458 call!271457))))))

(declare-fun b!3726698 () Bool)

(declare-fun res!1513775 () Bool)

(assert (=> b!3726698 (=> (not res!1513775) (not e!2306277))))

(assert (=> b!3726698 (= res!1513775 (= (size!30029 lt!1298418) (+ (size!30029 (ite c!644714 call!271458 call!271457)) (size!30029 (ite c!644714 call!271457 call!271458)))))))

(declare-fun b!3726697 () Bool)

(assert (=> b!3726697 (= e!2306278 (Cons!39668 (h!45088 (ite c!644714 call!271458 call!271457)) (++!9835 (t!302475 (ite c!644714 call!271458 call!271457)) (ite c!644714 call!271457 call!271458))))))

(assert (= (and d!1089995 c!644846) b!3726696))

(assert (= (and d!1089995 (not c!644846)) b!3726697))

(assert (= (and d!1089995 res!1513774) b!3726698))

(assert (= (and b!3726698 res!1513775) b!3726699))

(declare-fun m!4228131 () Bool)

(assert (=> d!1089995 m!4228131))

(declare-fun m!4228133 () Bool)

(assert (=> d!1089995 m!4228133))

(declare-fun m!4228135 () Bool)

(assert (=> d!1089995 m!4228135))

(declare-fun m!4228137 () Bool)

(assert (=> b!3726698 m!4228137))

(declare-fun m!4228139 () Bool)

(assert (=> b!3726698 m!4228139))

(declare-fun m!4228141 () Bool)

(assert (=> b!3726698 m!4228141))

(declare-fun m!4228143 () Bool)

(assert (=> b!3726697 m!4228143))

(assert (=> bm!271452 d!1089995))

(declare-fun b!3726703 () Bool)

(declare-fun e!2306279 () Bool)

(declare-fun tp!1133757 () Bool)

(declare-fun tp!1133759 () Bool)

(assert (=> b!3726703 (= e!2306279 (and tp!1133757 tp!1133759))))

(assert (=> b!3726522 (= tp!1133753 e!2306279)))

(declare-fun b!3726702 () Bool)

(declare-fun tp!1133755 () Bool)

(assert (=> b!3726702 (= e!2306279 tp!1133755)))

(declare-fun b!3726700 () Bool)

(assert (=> b!3726700 (= e!2306279 tp_is_empty!18837)))

(declare-fun b!3726701 () Bool)

(declare-fun tp!1133758 () Bool)

(declare-fun tp!1133756 () Bool)

(assert (=> b!3726701 (= e!2306279 (and tp!1133758 tp!1133756))))

(assert (= (and b!3726522 ((_ is ElementMatch!10911) (regOne!22334 (reg!11240 r!26968)))) b!3726700))

(assert (= (and b!3726522 ((_ is Concat!17182) (regOne!22334 (reg!11240 r!26968)))) b!3726701))

(assert (= (and b!3726522 ((_ is Star!10911) (regOne!22334 (reg!11240 r!26968)))) b!3726702))

(assert (= (and b!3726522 ((_ is Union!10911) (regOne!22334 (reg!11240 r!26968)))) b!3726703))

(declare-fun b!3726707 () Bool)

(declare-fun e!2306280 () Bool)

(declare-fun tp!1133762 () Bool)

(declare-fun tp!1133764 () Bool)

(assert (=> b!3726707 (= e!2306280 (and tp!1133762 tp!1133764))))

(assert (=> b!3726522 (= tp!1133751 e!2306280)))

(declare-fun b!3726706 () Bool)

(declare-fun tp!1133760 () Bool)

(assert (=> b!3726706 (= e!2306280 tp!1133760)))

(declare-fun b!3726704 () Bool)

(assert (=> b!3726704 (= e!2306280 tp_is_empty!18837)))

(declare-fun b!3726705 () Bool)

(declare-fun tp!1133763 () Bool)

(declare-fun tp!1133761 () Bool)

(assert (=> b!3726705 (= e!2306280 (and tp!1133763 tp!1133761))))

(assert (= (and b!3726522 ((_ is ElementMatch!10911) (regTwo!22334 (reg!11240 r!26968)))) b!3726704))

(assert (= (and b!3726522 ((_ is Concat!17182) (regTwo!22334 (reg!11240 r!26968)))) b!3726705))

(assert (= (and b!3726522 ((_ is Star!10911) (regTwo!22334 (reg!11240 r!26968)))) b!3726706))

(assert (= (and b!3726522 ((_ is Union!10911) (regTwo!22334 (reg!11240 r!26968)))) b!3726707))

(declare-fun b!3726711 () Bool)

(declare-fun e!2306281 () Bool)

(declare-fun tp!1133767 () Bool)

(declare-fun tp!1133769 () Bool)

(assert (=> b!3726711 (= e!2306281 (and tp!1133767 tp!1133769))))

(assert (=> b!3726523 (= tp!1133750 e!2306281)))

(declare-fun b!3726710 () Bool)

(declare-fun tp!1133765 () Bool)

(assert (=> b!3726710 (= e!2306281 tp!1133765)))

(declare-fun b!3726708 () Bool)

(assert (=> b!3726708 (= e!2306281 tp_is_empty!18837)))

(declare-fun b!3726709 () Bool)

(declare-fun tp!1133768 () Bool)

(declare-fun tp!1133766 () Bool)

(assert (=> b!3726709 (= e!2306281 (and tp!1133768 tp!1133766))))

(assert (= (and b!3726523 ((_ is ElementMatch!10911) (reg!11240 (reg!11240 r!26968)))) b!3726708))

(assert (= (and b!3726523 ((_ is Concat!17182) (reg!11240 (reg!11240 r!26968)))) b!3726709))

(assert (= (and b!3726523 ((_ is Star!10911) (reg!11240 (reg!11240 r!26968)))) b!3726710))

(assert (= (and b!3726523 ((_ is Union!10911) (reg!11240 (reg!11240 r!26968)))) b!3726711))

(declare-fun b!3726715 () Bool)

(declare-fun e!2306282 () Bool)

(declare-fun tp!1133772 () Bool)

(declare-fun tp!1133774 () Bool)

(assert (=> b!3726715 (= e!2306282 (and tp!1133772 tp!1133774))))

(assert (=> b!3726518 (= tp!1133748 e!2306282)))

(declare-fun b!3726714 () Bool)

(declare-fun tp!1133770 () Bool)

(assert (=> b!3726714 (= e!2306282 tp!1133770)))

(declare-fun b!3726712 () Bool)

(assert (=> b!3726712 (= e!2306282 tp_is_empty!18837)))

(declare-fun b!3726713 () Bool)

(declare-fun tp!1133773 () Bool)

(declare-fun tp!1133771 () Bool)

(assert (=> b!3726713 (= e!2306282 (and tp!1133773 tp!1133771))))

(assert (= (and b!3726518 ((_ is ElementMatch!10911) (regOne!22334 (regTwo!22334 r!26968)))) b!3726712))

(assert (= (and b!3726518 ((_ is Concat!17182) (regOne!22334 (regTwo!22334 r!26968)))) b!3726713))

(assert (= (and b!3726518 ((_ is Star!10911) (regOne!22334 (regTwo!22334 r!26968)))) b!3726714))

(assert (= (and b!3726518 ((_ is Union!10911) (regOne!22334 (regTwo!22334 r!26968)))) b!3726715))

(declare-fun b!3726719 () Bool)

(declare-fun e!2306283 () Bool)

(declare-fun tp!1133777 () Bool)

(declare-fun tp!1133779 () Bool)

(assert (=> b!3726719 (= e!2306283 (and tp!1133777 tp!1133779))))

(assert (=> b!3726518 (= tp!1133746 e!2306283)))

(declare-fun b!3726718 () Bool)

(declare-fun tp!1133775 () Bool)

(assert (=> b!3726718 (= e!2306283 tp!1133775)))

(declare-fun b!3726716 () Bool)

(assert (=> b!3726716 (= e!2306283 tp_is_empty!18837)))

(declare-fun b!3726717 () Bool)

(declare-fun tp!1133778 () Bool)

(declare-fun tp!1133776 () Bool)

(assert (=> b!3726717 (= e!2306283 (and tp!1133778 tp!1133776))))

(assert (= (and b!3726518 ((_ is ElementMatch!10911) (regTwo!22334 (regTwo!22334 r!26968)))) b!3726716))

(assert (= (and b!3726518 ((_ is Concat!17182) (regTwo!22334 (regTwo!22334 r!26968)))) b!3726717))

(assert (= (and b!3726518 ((_ is Star!10911) (regTwo!22334 (regTwo!22334 r!26968)))) b!3726718))

(assert (= (and b!3726518 ((_ is Union!10911) (regTwo!22334 (regTwo!22334 r!26968)))) b!3726719))

(declare-fun b!3726723 () Bool)

(declare-fun e!2306284 () Bool)

(declare-fun tp!1133782 () Bool)

(declare-fun tp!1133784 () Bool)

(assert (=> b!3726723 (= e!2306284 (and tp!1133782 tp!1133784))))

(assert (=> b!3726519 (= tp!1133745 e!2306284)))

(declare-fun b!3726722 () Bool)

(declare-fun tp!1133780 () Bool)

(assert (=> b!3726722 (= e!2306284 tp!1133780)))

(declare-fun b!3726720 () Bool)

(assert (=> b!3726720 (= e!2306284 tp_is_empty!18837)))

(declare-fun b!3726721 () Bool)

(declare-fun tp!1133783 () Bool)

(declare-fun tp!1133781 () Bool)

(assert (=> b!3726721 (= e!2306284 (and tp!1133783 tp!1133781))))

(assert (= (and b!3726519 ((_ is ElementMatch!10911) (reg!11240 (regTwo!22334 r!26968)))) b!3726720))

(assert (= (and b!3726519 ((_ is Concat!17182) (reg!11240 (regTwo!22334 r!26968)))) b!3726721))

(assert (= (and b!3726519 ((_ is Star!10911) (reg!11240 (regTwo!22334 r!26968)))) b!3726722))

(assert (= (and b!3726519 ((_ is Union!10911) (reg!11240 (regTwo!22334 r!26968)))) b!3726723))

(declare-fun b!3726731 () Bool)

(declare-fun e!2306287 () Bool)

(declare-fun tp!1133787 () Bool)

(declare-fun tp!1133789 () Bool)

(assert (=> b!3726731 (= e!2306287 (and tp!1133787 tp!1133789))))

(assert (=> b!3726506 (= tp!1133733 e!2306287)))

(declare-fun b!3726730 () Bool)

(declare-fun tp!1133785 () Bool)

(assert (=> b!3726730 (= e!2306287 tp!1133785)))

(declare-fun b!3726728 () Bool)

(assert (=> b!3726728 (= e!2306287 tp_is_empty!18837)))

(declare-fun b!3726729 () Bool)

(declare-fun tp!1133788 () Bool)

(declare-fun tp!1133786 () Bool)

(assert (=> b!3726729 (= e!2306287 (and tp!1133788 tp!1133786))))

(assert (= (and b!3726506 ((_ is ElementMatch!10911) (regOne!22334 (regOne!22335 r!26968)))) b!3726728))

(assert (= (and b!3726506 ((_ is Concat!17182) (regOne!22334 (regOne!22335 r!26968)))) b!3726729))

(assert (= (and b!3726506 ((_ is Star!10911) (regOne!22334 (regOne!22335 r!26968)))) b!3726730))

(assert (= (and b!3726506 ((_ is Union!10911) (regOne!22334 (regOne!22335 r!26968)))) b!3726731))

(declare-fun b!3726735 () Bool)

(declare-fun e!2306288 () Bool)

(declare-fun tp!1133792 () Bool)

(declare-fun tp!1133794 () Bool)

(assert (=> b!3726735 (= e!2306288 (and tp!1133792 tp!1133794))))

(assert (=> b!3726506 (= tp!1133731 e!2306288)))

(declare-fun b!3726734 () Bool)

(declare-fun tp!1133790 () Bool)

(assert (=> b!3726734 (= e!2306288 tp!1133790)))

(declare-fun b!3726732 () Bool)

(assert (=> b!3726732 (= e!2306288 tp_is_empty!18837)))

(declare-fun b!3726733 () Bool)

(declare-fun tp!1133793 () Bool)

(declare-fun tp!1133791 () Bool)

(assert (=> b!3726733 (= e!2306288 (and tp!1133793 tp!1133791))))

(assert (= (and b!3726506 ((_ is ElementMatch!10911) (regTwo!22334 (regOne!22335 r!26968)))) b!3726732))

(assert (= (and b!3726506 ((_ is Concat!17182) (regTwo!22334 (regOne!22335 r!26968)))) b!3726733))

(assert (= (and b!3726506 ((_ is Star!10911) (regTwo!22334 (regOne!22335 r!26968)))) b!3726734))

(assert (= (and b!3726506 ((_ is Union!10911) (regTwo!22334 (regOne!22335 r!26968)))) b!3726735))

(declare-fun b!3726739 () Bool)

(declare-fun e!2306289 () Bool)

(declare-fun tp!1133797 () Bool)

(declare-fun tp!1133799 () Bool)

(assert (=> b!3726739 (= e!2306289 (and tp!1133797 tp!1133799))))

(assert (=> b!3726514 (= tp!1133743 e!2306289)))

(declare-fun b!3726738 () Bool)

(declare-fun tp!1133795 () Bool)

(assert (=> b!3726738 (= e!2306289 tp!1133795)))

(declare-fun b!3726736 () Bool)

(assert (=> b!3726736 (= e!2306289 tp_is_empty!18837)))

(declare-fun b!3726737 () Bool)

(declare-fun tp!1133798 () Bool)

(declare-fun tp!1133796 () Bool)

(assert (=> b!3726737 (= e!2306289 (and tp!1133798 tp!1133796))))

(assert (= (and b!3726514 ((_ is ElementMatch!10911) (regOne!22334 (regOne!22334 r!26968)))) b!3726736))

(assert (= (and b!3726514 ((_ is Concat!17182) (regOne!22334 (regOne!22334 r!26968)))) b!3726737))

(assert (= (and b!3726514 ((_ is Star!10911) (regOne!22334 (regOne!22334 r!26968)))) b!3726738))

(assert (= (and b!3726514 ((_ is Union!10911) (regOne!22334 (regOne!22334 r!26968)))) b!3726739))

(declare-fun b!3726743 () Bool)

(declare-fun e!2306290 () Bool)

(declare-fun tp!1133802 () Bool)

(declare-fun tp!1133804 () Bool)

(assert (=> b!3726743 (= e!2306290 (and tp!1133802 tp!1133804))))

(assert (=> b!3726514 (= tp!1133741 e!2306290)))

(declare-fun b!3726742 () Bool)

(declare-fun tp!1133800 () Bool)

(assert (=> b!3726742 (= e!2306290 tp!1133800)))

(declare-fun b!3726740 () Bool)

(assert (=> b!3726740 (= e!2306290 tp_is_empty!18837)))

(declare-fun b!3726741 () Bool)

(declare-fun tp!1133803 () Bool)

(declare-fun tp!1133801 () Bool)

(assert (=> b!3726741 (= e!2306290 (and tp!1133803 tp!1133801))))

(assert (= (and b!3726514 ((_ is ElementMatch!10911) (regTwo!22334 (regOne!22334 r!26968)))) b!3726740))

(assert (= (and b!3726514 ((_ is Concat!17182) (regTwo!22334 (regOne!22334 r!26968)))) b!3726741))

(assert (= (and b!3726514 ((_ is Star!10911) (regTwo!22334 (regOne!22334 r!26968)))) b!3726742))

(assert (= (and b!3726514 ((_ is Union!10911) (regTwo!22334 (regOne!22334 r!26968)))) b!3726743))

(declare-fun b!3726747 () Bool)

(declare-fun e!2306291 () Bool)

(declare-fun tp!1133807 () Bool)

(declare-fun tp!1133809 () Bool)

(assert (=> b!3726747 (= e!2306291 (and tp!1133807 tp!1133809))))

(assert (=> b!3726515 (= tp!1133740 e!2306291)))

(declare-fun b!3726746 () Bool)

(declare-fun tp!1133805 () Bool)

(assert (=> b!3726746 (= e!2306291 tp!1133805)))

(declare-fun b!3726744 () Bool)

(assert (=> b!3726744 (= e!2306291 tp_is_empty!18837)))

(declare-fun b!3726745 () Bool)

(declare-fun tp!1133808 () Bool)

(declare-fun tp!1133806 () Bool)

(assert (=> b!3726745 (= e!2306291 (and tp!1133808 tp!1133806))))

(assert (= (and b!3726515 ((_ is ElementMatch!10911) (reg!11240 (regOne!22334 r!26968)))) b!3726744))

(assert (= (and b!3726515 ((_ is Concat!17182) (reg!11240 (regOne!22334 r!26968)))) b!3726745))

(assert (= (and b!3726515 ((_ is Star!10911) (reg!11240 (regOne!22334 r!26968)))) b!3726746))

(assert (= (and b!3726515 ((_ is Union!10911) (reg!11240 (regOne!22334 r!26968)))) b!3726747))

(declare-fun b!3726751 () Bool)

(declare-fun e!2306292 () Bool)

(declare-fun tp!1133812 () Bool)

(declare-fun tp!1133814 () Bool)

(assert (=> b!3726751 (= e!2306292 (and tp!1133812 tp!1133814))))

(assert (=> b!3726524 (= tp!1133752 e!2306292)))

(declare-fun b!3726750 () Bool)

(declare-fun tp!1133810 () Bool)

(assert (=> b!3726750 (= e!2306292 tp!1133810)))

(declare-fun b!3726748 () Bool)

(assert (=> b!3726748 (= e!2306292 tp_is_empty!18837)))

(declare-fun b!3726749 () Bool)

(declare-fun tp!1133813 () Bool)

(declare-fun tp!1133811 () Bool)

(assert (=> b!3726749 (= e!2306292 (and tp!1133813 tp!1133811))))

(assert (= (and b!3726524 ((_ is ElementMatch!10911) (regOne!22335 (reg!11240 r!26968)))) b!3726748))

(assert (= (and b!3726524 ((_ is Concat!17182) (regOne!22335 (reg!11240 r!26968)))) b!3726749))

(assert (= (and b!3726524 ((_ is Star!10911) (regOne!22335 (reg!11240 r!26968)))) b!3726750))

(assert (= (and b!3726524 ((_ is Union!10911) (regOne!22335 (reg!11240 r!26968)))) b!3726751))

(declare-fun b!3726755 () Bool)

(declare-fun e!2306293 () Bool)

(declare-fun tp!1133817 () Bool)

(declare-fun tp!1133819 () Bool)

(assert (=> b!3726755 (= e!2306293 (and tp!1133817 tp!1133819))))

(assert (=> b!3726524 (= tp!1133754 e!2306293)))

(declare-fun b!3726754 () Bool)

(declare-fun tp!1133815 () Bool)

(assert (=> b!3726754 (= e!2306293 tp!1133815)))

(declare-fun b!3726752 () Bool)

(assert (=> b!3726752 (= e!2306293 tp_is_empty!18837)))

(declare-fun b!3726753 () Bool)

(declare-fun tp!1133818 () Bool)

(declare-fun tp!1133816 () Bool)

(assert (=> b!3726753 (= e!2306293 (and tp!1133818 tp!1133816))))

(assert (= (and b!3726524 ((_ is ElementMatch!10911) (regTwo!22335 (reg!11240 r!26968)))) b!3726752))

(assert (= (and b!3726524 ((_ is Concat!17182) (regTwo!22335 (reg!11240 r!26968)))) b!3726753))

(assert (= (and b!3726524 ((_ is Star!10911) (regTwo!22335 (reg!11240 r!26968)))) b!3726754))

(assert (= (and b!3726524 ((_ is Union!10911) (regTwo!22335 (reg!11240 r!26968)))) b!3726755))

(declare-fun b!3726761 () Bool)

(declare-fun e!2306295 () Bool)

(declare-fun tp!1133822 () Bool)

(declare-fun tp!1133824 () Bool)

(assert (=> b!3726761 (= e!2306295 (and tp!1133822 tp!1133824))))

(assert (=> b!3726510 (= tp!1133738 e!2306295)))

(declare-fun b!3726760 () Bool)

(declare-fun tp!1133820 () Bool)

(assert (=> b!3726760 (= e!2306295 tp!1133820)))

(declare-fun b!3726758 () Bool)

(assert (=> b!3726758 (= e!2306295 tp_is_empty!18837)))

(declare-fun b!3726759 () Bool)

(declare-fun tp!1133823 () Bool)

(declare-fun tp!1133821 () Bool)

(assert (=> b!3726759 (= e!2306295 (and tp!1133823 tp!1133821))))

(assert (= (and b!3726510 ((_ is ElementMatch!10911) (regOne!22334 (regTwo!22335 r!26968)))) b!3726758))

(assert (= (and b!3726510 ((_ is Concat!17182) (regOne!22334 (regTwo!22335 r!26968)))) b!3726759))

(assert (= (and b!3726510 ((_ is Star!10911) (regOne!22334 (regTwo!22335 r!26968)))) b!3726760))

(assert (= (and b!3726510 ((_ is Union!10911) (regOne!22334 (regTwo!22335 r!26968)))) b!3726761))

(declare-fun b!3726765 () Bool)

(declare-fun e!2306296 () Bool)

(declare-fun tp!1133827 () Bool)

(declare-fun tp!1133829 () Bool)

(assert (=> b!3726765 (= e!2306296 (and tp!1133827 tp!1133829))))

(assert (=> b!3726510 (= tp!1133736 e!2306296)))

(declare-fun b!3726764 () Bool)

(declare-fun tp!1133825 () Bool)

(assert (=> b!3726764 (= e!2306296 tp!1133825)))

(declare-fun b!3726762 () Bool)

(assert (=> b!3726762 (= e!2306296 tp_is_empty!18837)))

(declare-fun b!3726763 () Bool)

(declare-fun tp!1133828 () Bool)

(declare-fun tp!1133826 () Bool)

(assert (=> b!3726763 (= e!2306296 (and tp!1133828 tp!1133826))))

(assert (= (and b!3726510 ((_ is ElementMatch!10911) (regTwo!22334 (regTwo!22335 r!26968)))) b!3726762))

(assert (= (and b!3726510 ((_ is Concat!17182) (regTwo!22334 (regTwo!22335 r!26968)))) b!3726763))

(assert (= (and b!3726510 ((_ is Star!10911) (regTwo!22334 (regTwo!22335 r!26968)))) b!3726764))

(assert (= (and b!3726510 ((_ is Union!10911) (regTwo!22334 (regTwo!22335 r!26968)))) b!3726765))

(declare-fun b!3726769 () Bool)

(declare-fun e!2306297 () Bool)

(declare-fun tp!1133832 () Bool)

(declare-fun tp!1133834 () Bool)

(assert (=> b!3726769 (= e!2306297 (and tp!1133832 tp!1133834))))

(assert (=> b!3726511 (= tp!1133735 e!2306297)))

(declare-fun b!3726768 () Bool)

(declare-fun tp!1133830 () Bool)

(assert (=> b!3726768 (= e!2306297 tp!1133830)))

(declare-fun b!3726766 () Bool)

(assert (=> b!3726766 (= e!2306297 tp_is_empty!18837)))

(declare-fun b!3726767 () Bool)

(declare-fun tp!1133833 () Bool)

(declare-fun tp!1133831 () Bool)

(assert (=> b!3726767 (= e!2306297 (and tp!1133833 tp!1133831))))

(assert (= (and b!3726511 ((_ is ElementMatch!10911) (reg!11240 (regTwo!22335 r!26968)))) b!3726766))

(assert (= (and b!3726511 ((_ is Concat!17182) (reg!11240 (regTwo!22335 r!26968)))) b!3726767))

(assert (= (and b!3726511 ((_ is Star!10911) (reg!11240 (regTwo!22335 r!26968)))) b!3726768))

(assert (= (and b!3726511 ((_ is Union!10911) (reg!11240 (regTwo!22335 r!26968)))) b!3726769))

(declare-fun b!3726775 () Bool)

(declare-fun e!2306300 () Bool)

(declare-fun tp!1133837 () Bool)

(declare-fun tp!1133839 () Bool)

(assert (=> b!3726775 (= e!2306300 (and tp!1133837 tp!1133839))))

(assert (=> b!3726520 (= tp!1133747 e!2306300)))

(declare-fun b!3726774 () Bool)

(declare-fun tp!1133835 () Bool)

(assert (=> b!3726774 (= e!2306300 tp!1133835)))

(declare-fun b!3726772 () Bool)

(assert (=> b!3726772 (= e!2306300 tp_is_empty!18837)))

(declare-fun b!3726773 () Bool)

(declare-fun tp!1133838 () Bool)

(declare-fun tp!1133836 () Bool)

(assert (=> b!3726773 (= e!2306300 (and tp!1133838 tp!1133836))))

(assert (= (and b!3726520 ((_ is ElementMatch!10911) (regOne!22335 (regTwo!22334 r!26968)))) b!3726772))

(assert (= (and b!3726520 ((_ is Concat!17182) (regOne!22335 (regTwo!22334 r!26968)))) b!3726773))

(assert (= (and b!3726520 ((_ is Star!10911) (regOne!22335 (regTwo!22334 r!26968)))) b!3726774))

(assert (= (and b!3726520 ((_ is Union!10911) (regOne!22335 (regTwo!22334 r!26968)))) b!3726775))

(declare-fun b!3726779 () Bool)

(declare-fun e!2306301 () Bool)

(declare-fun tp!1133842 () Bool)

(declare-fun tp!1133844 () Bool)

(assert (=> b!3726779 (= e!2306301 (and tp!1133842 tp!1133844))))

(assert (=> b!3726520 (= tp!1133749 e!2306301)))

(declare-fun b!3726778 () Bool)

(declare-fun tp!1133840 () Bool)

(assert (=> b!3726778 (= e!2306301 tp!1133840)))

(declare-fun b!3726776 () Bool)

(assert (=> b!3726776 (= e!2306301 tp_is_empty!18837)))

(declare-fun b!3726777 () Bool)

(declare-fun tp!1133843 () Bool)

(declare-fun tp!1133841 () Bool)

(assert (=> b!3726777 (= e!2306301 (and tp!1133843 tp!1133841))))

(assert (= (and b!3726520 ((_ is ElementMatch!10911) (regTwo!22335 (regTwo!22334 r!26968)))) b!3726776))

(assert (= (and b!3726520 ((_ is Concat!17182) (regTwo!22335 (regTwo!22334 r!26968)))) b!3726777))

(assert (= (and b!3726520 ((_ is Star!10911) (regTwo!22335 (regTwo!22334 r!26968)))) b!3726778))

(assert (= (and b!3726520 ((_ is Union!10911) (regTwo!22335 (regTwo!22334 r!26968)))) b!3726779))

(declare-fun b!3726791 () Bool)

(declare-fun e!2306306 () Bool)

(declare-fun tp!1133847 () Bool)

(declare-fun tp!1133849 () Bool)

(assert (=> b!3726791 (= e!2306306 (and tp!1133847 tp!1133849))))

(assert (=> b!3726507 (= tp!1133730 e!2306306)))

(declare-fun b!3726790 () Bool)

(declare-fun tp!1133845 () Bool)

(assert (=> b!3726790 (= e!2306306 tp!1133845)))

(declare-fun b!3726788 () Bool)

(assert (=> b!3726788 (= e!2306306 tp_is_empty!18837)))

(declare-fun b!3726789 () Bool)

(declare-fun tp!1133848 () Bool)

(declare-fun tp!1133846 () Bool)

(assert (=> b!3726789 (= e!2306306 (and tp!1133848 tp!1133846))))

(assert (= (and b!3726507 ((_ is ElementMatch!10911) (reg!11240 (regOne!22335 r!26968)))) b!3726788))

(assert (= (and b!3726507 ((_ is Concat!17182) (reg!11240 (regOne!22335 r!26968)))) b!3726789))

(assert (= (and b!3726507 ((_ is Star!10911) (reg!11240 (regOne!22335 r!26968)))) b!3726790))

(assert (= (and b!3726507 ((_ is Union!10911) (reg!11240 (regOne!22335 r!26968)))) b!3726791))

(declare-fun b!3726795 () Bool)

(declare-fun e!2306307 () Bool)

(declare-fun tp!1133852 () Bool)

(declare-fun tp!1133854 () Bool)

(assert (=> b!3726795 (= e!2306307 (and tp!1133852 tp!1133854))))

(assert (=> b!3726508 (= tp!1133732 e!2306307)))

(declare-fun b!3726794 () Bool)

(declare-fun tp!1133850 () Bool)

(assert (=> b!3726794 (= e!2306307 tp!1133850)))

(declare-fun b!3726792 () Bool)

(assert (=> b!3726792 (= e!2306307 tp_is_empty!18837)))

(declare-fun b!3726793 () Bool)

(declare-fun tp!1133853 () Bool)

(declare-fun tp!1133851 () Bool)

(assert (=> b!3726793 (= e!2306307 (and tp!1133853 tp!1133851))))

(assert (= (and b!3726508 ((_ is ElementMatch!10911) (regOne!22335 (regOne!22335 r!26968)))) b!3726792))

(assert (= (and b!3726508 ((_ is Concat!17182) (regOne!22335 (regOne!22335 r!26968)))) b!3726793))

(assert (= (and b!3726508 ((_ is Star!10911) (regOne!22335 (regOne!22335 r!26968)))) b!3726794))

(assert (= (and b!3726508 ((_ is Union!10911) (regOne!22335 (regOne!22335 r!26968)))) b!3726795))

(declare-fun b!3726799 () Bool)

(declare-fun e!2306308 () Bool)

(declare-fun tp!1133857 () Bool)

(declare-fun tp!1133859 () Bool)

(assert (=> b!3726799 (= e!2306308 (and tp!1133857 tp!1133859))))

(assert (=> b!3726508 (= tp!1133734 e!2306308)))

(declare-fun b!3726798 () Bool)

(declare-fun tp!1133855 () Bool)

(assert (=> b!3726798 (= e!2306308 tp!1133855)))

(declare-fun b!3726796 () Bool)

(assert (=> b!3726796 (= e!2306308 tp_is_empty!18837)))

(declare-fun b!3726797 () Bool)

(declare-fun tp!1133858 () Bool)

(declare-fun tp!1133856 () Bool)

(assert (=> b!3726797 (= e!2306308 (and tp!1133858 tp!1133856))))

(assert (= (and b!3726508 ((_ is ElementMatch!10911) (regTwo!22335 (regOne!22335 r!26968)))) b!3726796))

(assert (= (and b!3726508 ((_ is Concat!17182) (regTwo!22335 (regOne!22335 r!26968)))) b!3726797))

(assert (= (and b!3726508 ((_ is Star!10911) (regTwo!22335 (regOne!22335 r!26968)))) b!3726798))

(assert (= (and b!3726508 ((_ is Union!10911) (regTwo!22335 (regOne!22335 r!26968)))) b!3726799))

(declare-fun b!3726803 () Bool)

(declare-fun e!2306309 () Bool)

(declare-fun tp!1133862 () Bool)

(declare-fun tp!1133864 () Bool)

(assert (=> b!3726803 (= e!2306309 (and tp!1133862 tp!1133864))))

(assert (=> b!3726516 (= tp!1133742 e!2306309)))

(declare-fun b!3726802 () Bool)

(declare-fun tp!1133860 () Bool)

(assert (=> b!3726802 (= e!2306309 tp!1133860)))

(declare-fun b!3726800 () Bool)

(assert (=> b!3726800 (= e!2306309 tp_is_empty!18837)))

(declare-fun b!3726801 () Bool)

(declare-fun tp!1133863 () Bool)

(declare-fun tp!1133861 () Bool)

(assert (=> b!3726801 (= e!2306309 (and tp!1133863 tp!1133861))))

(assert (= (and b!3726516 ((_ is ElementMatch!10911) (regOne!22335 (regOne!22334 r!26968)))) b!3726800))

(assert (= (and b!3726516 ((_ is Concat!17182) (regOne!22335 (regOne!22334 r!26968)))) b!3726801))

(assert (= (and b!3726516 ((_ is Star!10911) (regOne!22335 (regOne!22334 r!26968)))) b!3726802))

(assert (= (and b!3726516 ((_ is Union!10911) (regOne!22335 (regOne!22334 r!26968)))) b!3726803))

(declare-fun b!3726807 () Bool)

(declare-fun e!2306310 () Bool)

(declare-fun tp!1133867 () Bool)

(declare-fun tp!1133869 () Bool)

(assert (=> b!3726807 (= e!2306310 (and tp!1133867 tp!1133869))))

(assert (=> b!3726516 (= tp!1133744 e!2306310)))

(declare-fun b!3726806 () Bool)

(declare-fun tp!1133865 () Bool)

(assert (=> b!3726806 (= e!2306310 tp!1133865)))

(declare-fun b!3726804 () Bool)

(assert (=> b!3726804 (= e!2306310 tp_is_empty!18837)))

(declare-fun b!3726805 () Bool)

(declare-fun tp!1133868 () Bool)

(declare-fun tp!1133866 () Bool)

(assert (=> b!3726805 (= e!2306310 (and tp!1133868 tp!1133866))))

(assert (= (and b!3726516 ((_ is ElementMatch!10911) (regTwo!22335 (regOne!22334 r!26968)))) b!3726804))

(assert (= (and b!3726516 ((_ is Concat!17182) (regTwo!22335 (regOne!22334 r!26968)))) b!3726805))

(assert (= (and b!3726516 ((_ is Star!10911) (regTwo!22335 (regOne!22334 r!26968)))) b!3726806))

(assert (= (and b!3726516 ((_ is Union!10911) (regTwo!22335 (regOne!22334 r!26968)))) b!3726807))

(declare-fun b!3726811 () Bool)

(declare-fun e!2306311 () Bool)

(declare-fun tp!1133872 () Bool)

(declare-fun tp!1133874 () Bool)

(assert (=> b!3726811 (= e!2306311 (and tp!1133872 tp!1133874))))

(assert (=> b!3726512 (= tp!1133737 e!2306311)))

(declare-fun b!3726810 () Bool)

(declare-fun tp!1133870 () Bool)

(assert (=> b!3726810 (= e!2306311 tp!1133870)))

(declare-fun b!3726808 () Bool)

(assert (=> b!3726808 (= e!2306311 tp_is_empty!18837)))

(declare-fun b!3726809 () Bool)

(declare-fun tp!1133873 () Bool)

(declare-fun tp!1133871 () Bool)

(assert (=> b!3726809 (= e!2306311 (and tp!1133873 tp!1133871))))

(assert (= (and b!3726512 ((_ is ElementMatch!10911) (regOne!22335 (regTwo!22335 r!26968)))) b!3726808))

(assert (= (and b!3726512 ((_ is Concat!17182) (regOne!22335 (regTwo!22335 r!26968)))) b!3726809))

(assert (= (and b!3726512 ((_ is Star!10911) (regOne!22335 (regTwo!22335 r!26968)))) b!3726810))

(assert (= (and b!3726512 ((_ is Union!10911) (regOne!22335 (regTwo!22335 r!26968)))) b!3726811))

(declare-fun b!3726815 () Bool)

(declare-fun e!2306312 () Bool)

(declare-fun tp!1133877 () Bool)

(declare-fun tp!1133879 () Bool)

(assert (=> b!3726815 (= e!2306312 (and tp!1133877 tp!1133879))))

(assert (=> b!3726512 (= tp!1133739 e!2306312)))

(declare-fun b!3726814 () Bool)

(declare-fun tp!1133875 () Bool)

(assert (=> b!3726814 (= e!2306312 tp!1133875)))

(declare-fun b!3726812 () Bool)

(assert (=> b!3726812 (= e!2306312 tp_is_empty!18837)))

(declare-fun b!3726813 () Bool)

(declare-fun tp!1133878 () Bool)

(declare-fun tp!1133876 () Bool)

(assert (=> b!3726813 (= e!2306312 (and tp!1133878 tp!1133876))))

(assert (= (and b!3726512 ((_ is ElementMatch!10911) (regTwo!22335 (regTwo!22335 r!26968)))) b!3726812))

(assert (= (and b!3726512 ((_ is Concat!17182) (regTwo!22335 (regTwo!22335 r!26968)))) b!3726813))

(assert (= (and b!3726512 ((_ is Star!10911) (regTwo!22335 (regTwo!22335 r!26968)))) b!3726814))

(assert (= (and b!3726512 ((_ is Union!10911) (regTwo!22335 (regTwo!22335 r!26968)))) b!3726815))

(check-sat (not b!3726742) (not b!3726698) (not bm!271524) (not bm!271525) (not b!3726802) (not b!3726789) (not b!3726737) (not b!3726710) (not d!1089959) (not b!3726797) (not b!3726703) (not b!3726793) (not b!3726628) (not bm!271546) (not b!3726751) (not b!3726778) (not b!3726803) (not d!1089995) (not b!3726570) (not d!1089969) (not bm!271555) (not b!3726755) (not b!3726731) (not b!3726711) (not bm!271537) (not b!3726777) (not b!3726779) (not b!3726764) (not b!3726566) (not bm!271554) (not bm!271540) (not b!3726790) (not b!3726578) (not b!3726754) (not b!3726713) (not b!3726767) (not b!3726735) (not b!3726723) (not b!3726741) (not bm!271551) (not bm!271565) (not b!3726721) (not b!3726722) (not b!3726745) (not bm!271558) (not b!3726729) (not b!3726718) tp_is_empty!18837 (not bm!271553) (not b!3726730) (not b!3726567) (not b!3726701) (not bm!271543) (not b!3726759) (not b!3726739) (not b!3726581) (not b!3726799) (not b!3726738) (not d!1089951) (not b!3726749) (not bm!271570) (not b!3726795) (not bm!271544) (not b!3726763) (not b!3726734) (not b!3726535) (not b!3726717) (not d!1089955) (not b!3726791) (not b!3726556) (not d!1089937) (not b!3726761) (not b!3726806) (not bm!271533) (not b!3726706) (not b!3726801) (not bm!271557) (not bm!271532) (not b!3726580) (not b!3726702) (not bm!271548) (not b!3726769) (not bm!271576) (not b!3726610) (not d!1089949) (not b!3726760) (not bm!271577) (not d!1089943) (not d!1089983) (not bm!271539) (not b!3726774) (not d!1089963) (not b!3726707) (not b!3726571) (not b!3726709) (not b!3726687) (not bm!271541) (not bm!271547) (not bm!271559) (not d!1089945) (not b!3726733) (not b!3726807) (not b!3726794) (not b!3726750) (not b!3726747) (not bm!271538) (not b!3726705) (not b!3726809) (not b!3726715) (not bm!271566) (not bm!271568) (not b!3726753) (not b!3726697) (not bm!271527) (not b!3726768) (not bm!271569) (not b!3726798) (not b!3726814) (not b!3726811) (not b!3726554) (not b!3726810) (not b!3726746) (not b!3726815) (not b!3726773) (not b!3726601) (not bm!271530) (not bm!271564) (not b!3726775) (not b!3726530) (not b!3726813) (not b!3726595) (not d!1089947) (not b!3726719) (not b!3726629) (not b!3726805) (not b!3726544) (not bm!271550) (not b!3726714) (not b!3726743) (not bm!271526) (not b!3726765) (not bm!271529))
(check-sat)
