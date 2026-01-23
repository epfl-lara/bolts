; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74286 () Bool)

(assert start!74286)

(declare-fun b!836486 () Bool)

(declare-fun e!550085 () Bool)

(declare-fun tp_is_empty!3909 () Bool)

(assert (=> b!836486 (= e!550085 tp_is_empty!3909)))

(declare-fun b!836487 () Bool)

(declare-fun res!382725 () Bool)

(declare-fun e!550084 () Bool)

(assert (=> b!836487 (=> (not res!382725) (not e!550084))))

(declare-datatypes ((C!4756 0))(
  ( (C!4757 (val!2626 Int)) )
))
(declare-datatypes ((Regex!2093 0))(
  ( (ElementMatch!2093 (c!136606 C!4756)) (Concat!3824 (regOne!4698 Regex!2093) (regTwo!4698 Regex!2093)) (EmptyExpr!2093) (Star!2093 (reg!2422 Regex!2093)) (EmptyLang!2093) (Union!2093 (regOne!4699 Regex!2093) (regTwo!4699 Regex!2093)) )
))
(declare-fun r!27177 () Regex!2093)

(declare-fun nullable!544 (Regex!2093) Bool)

(assert (=> b!836487 (= res!382725 (not (nullable!544 (regOne!4698 r!27177))))))

(declare-fun b!836488 () Bool)

(declare-fun res!382726 () Bool)

(assert (=> b!836488 (=> (not res!382726) (not e!550084))))

(declare-fun c!13916 () C!4756)

(declare-datatypes ((List!8919 0))(
  ( (Nil!8903) (Cons!8903 (h!14304 C!4756) (t!93211 List!8919)) )
))
(declare-fun contains!1684 (List!8919 C!4756) Bool)

(declare-fun firstChars!64 (Regex!2093) List!8919)

(assert (=> b!836488 (= res!382726 (contains!1684 (firstChars!64 r!27177) c!13916))))

(declare-fun b!836489 () Bool)

(declare-fun usedCharacters!170 (Regex!2093) List!8919)

(assert (=> b!836489 (= e!550084 (not (contains!1684 (usedCharacters!170 r!27177) c!13916)))))

(assert (=> b!836489 (contains!1684 (usedCharacters!170 (regOne!4698 r!27177)) c!13916)))

(declare-datatypes ((Unit!13391 0))(
  ( (Unit!13392) )
))
(declare-fun lt!317949 () Unit!13391)

(declare-fun lemmaUsedCharsContainsAllFirstChars!12 (Regex!2093 C!4756) Unit!13391)

(assert (=> b!836489 (= lt!317949 (lemmaUsedCharsContainsAllFirstChars!12 (regOne!4698 r!27177) c!13916))))

(declare-fun b!836490 () Bool)

(declare-fun res!382723 () Bool)

(assert (=> b!836490 (=> (not res!382723) (not e!550084))))

(declare-fun validRegex!646 (Regex!2093) Bool)

(assert (=> b!836490 (= res!382723 (validRegex!646 (regOne!4698 r!27177)))))

(declare-fun b!836491 () Bool)

(declare-fun res!382724 () Bool)

(assert (=> b!836491 (=> (not res!382724) (not e!550084))))

(get-info :version)

(assert (=> b!836491 (= res!382724 (and (not ((_ is EmptyExpr!2093) r!27177)) (not ((_ is EmptyLang!2093) r!27177)) (not ((_ is ElementMatch!2093) r!27177)) (not ((_ is Star!2093) r!27177)) (not ((_ is Union!2093) r!27177))))))

(declare-fun b!836492 () Bool)

(declare-fun res!382722 () Bool)

(assert (=> b!836492 (=> (not res!382722) (not e!550084))))

(assert (=> b!836492 (= res!382722 (contains!1684 (firstChars!64 (regOne!4698 r!27177)) c!13916))))

(declare-fun res!382727 () Bool)

(assert (=> start!74286 (=> (not res!382727) (not e!550084))))

(assert (=> start!74286 (= res!382727 (validRegex!646 r!27177))))

(assert (=> start!74286 e!550084))

(assert (=> start!74286 e!550085))

(assert (=> start!74286 tp_is_empty!3909))

(declare-fun b!836493 () Bool)

(declare-fun tp!262312 () Bool)

(assert (=> b!836493 (= e!550085 tp!262312)))

(declare-fun b!836494 () Bool)

(declare-fun tp!262311 () Bool)

(declare-fun tp!262314 () Bool)

(assert (=> b!836494 (= e!550085 (and tp!262311 tp!262314))))

(declare-fun b!836495 () Bool)

(declare-fun tp!262310 () Bool)

(declare-fun tp!262313 () Bool)

(assert (=> b!836495 (= e!550085 (and tp!262310 tp!262313))))

(assert (= (and start!74286 res!382727) b!836488))

(assert (= (and b!836488 res!382726) b!836491))

(assert (= (and b!836491 res!382724) b!836487))

(assert (= (and b!836487 res!382725) b!836490))

(assert (= (and b!836490 res!382723) b!836492))

(assert (= (and b!836492 res!382722) b!836489))

(assert (= (and start!74286 ((_ is ElementMatch!2093) r!27177)) b!836486))

(assert (= (and start!74286 ((_ is Concat!3824) r!27177)) b!836494))

(assert (= (and start!74286 ((_ is Star!2093) r!27177)) b!836493))

(assert (= (and start!74286 ((_ is Union!2093) r!27177)) b!836495))

(declare-fun m!1070489 () Bool)

(assert (=> b!836487 m!1070489))

(declare-fun m!1070491 () Bool)

(assert (=> b!836488 m!1070491))

(assert (=> b!836488 m!1070491))

(declare-fun m!1070493 () Bool)

(assert (=> b!836488 m!1070493))

(declare-fun m!1070495 () Bool)

(assert (=> b!836490 m!1070495))

(declare-fun m!1070497 () Bool)

(assert (=> b!836492 m!1070497))

(assert (=> b!836492 m!1070497))

(declare-fun m!1070499 () Bool)

(assert (=> b!836492 m!1070499))

(declare-fun m!1070501 () Bool)

(assert (=> b!836489 m!1070501))

(declare-fun m!1070503 () Bool)

(assert (=> b!836489 m!1070503))

(assert (=> b!836489 m!1070501))

(declare-fun m!1070505 () Bool)

(assert (=> b!836489 m!1070505))

(declare-fun m!1070507 () Bool)

(assert (=> b!836489 m!1070507))

(assert (=> b!836489 m!1070507))

(declare-fun m!1070509 () Bool)

(assert (=> b!836489 m!1070509))

(declare-fun m!1070511 () Bool)

(assert (=> start!74286 m!1070511))

(check-sat (not b!836490) (not start!74286) (not b!836492) (not b!836493) (not b!836489) tp_is_empty!3909 (not b!836487) (not b!836495) (not b!836488) (not b!836494))
(check-sat)
(get-model)

(declare-fun b!836530 () Bool)

(declare-fun e!550109 () List!8919)

(declare-fun call!50221 () List!8919)

(assert (=> b!836530 (= e!550109 call!50221)))

(declare-fun bm!50215 () Bool)

(declare-fun call!50223 () List!8919)

(declare-fun call!50220 () List!8919)

(declare-fun call!50222 () List!8919)

(declare-fun c!136619 () Bool)

(declare-fun ++!2319 (List!8919 List!8919) List!8919)

(assert (=> bm!50215 (= call!50222 (++!2319 (ite c!136619 call!50223 call!50220) (ite c!136619 call!50220 call!50223)))))

(declare-fun bm!50216 () Bool)

(assert (=> bm!50216 (= call!50220 (usedCharacters!170 (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))

(declare-fun b!836531 () Bool)

(declare-fun e!550108 () List!8919)

(assert (=> b!836531 (= e!550108 (Cons!8903 (c!136606 (regOne!4698 r!27177)) Nil!8903))))

(declare-fun b!836532 () Bool)

(declare-fun e!550111 () List!8919)

(assert (=> b!836532 (= e!550111 e!550108)))

(declare-fun c!136622 () Bool)

(assert (=> b!836532 (= c!136622 ((_ is ElementMatch!2093) (regOne!4698 r!27177)))))

(declare-fun b!836533 () Bool)

(declare-fun e!550110 () List!8919)

(assert (=> b!836533 (= e!550110 call!50222)))

(declare-fun b!836535 () Bool)

(declare-fun c!136621 () Bool)

(assert (=> b!836535 (= c!136621 ((_ is Star!2093) (regOne!4698 r!27177)))))

(assert (=> b!836535 (= e!550108 e!550109)))

(declare-fun bm!50217 () Bool)

(assert (=> bm!50217 (= call!50221 (usedCharacters!170 (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(declare-fun bm!50218 () Bool)

(assert (=> bm!50218 (= call!50223 call!50221)))

(declare-fun b!836536 () Bool)

(assert (=> b!836536 (= e!550110 call!50222)))

(declare-fun b!836537 () Bool)

(assert (=> b!836537 (= e!550111 Nil!8903)))

(declare-fun b!836534 () Bool)

(assert (=> b!836534 (= e!550109 e!550110)))

(assert (=> b!836534 (= c!136619 ((_ is Union!2093) (regOne!4698 r!27177)))))

(declare-fun d!261026 () Bool)

(declare-fun c!136620 () Bool)

(assert (=> d!261026 (= c!136620 (or ((_ is EmptyExpr!2093) (regOne!4698 r!27177)) ((_ is EmptyLang!2093) (regOne!4698 r!27177))))))

(assert (=> d!261026 (= (usedCharacters!170 (regOne!4698 r!27177)) e!550111)))

(assert (= (and d!261026 c!136620) b!836537))

(assert (= (and d!261026 (not c!136620)) b!836532))

(assert (= (and b!836532 c!136622) b!836531))

(assert (= (and b!836532 (not c!136622)) b!836535))

(assert (= (and b!836535 c!136621) b!836530))

(assert (= (and b!836535 (not c!136621)) b!836534))

(assert (= (and b!836534 c!136619) b!836536))

(assert (= (and b!836534 (not c!136619)) b!836533))

(assert (= (or b!836536 b!836533) bm!50216))

(assert (= (or b!836536 b!836533) bm!50218))

(assert (= (or b!836536 b!836533) bm!50215))

(assert (= (or b!836530 bm!50218) bm!50217))

(declare-fun m!1070513 () Bool)

(assert (=> bm!50215 m!1070513))

(declare-fun m!1070515 () Bool)

(assert (=> bm!50216 m!1070515))

(declare-fun m!1070517 () Bool)

(assert (=> bm!50217 m!1070517))

(assert (=> b!836489 d!261026))

(declare-fun d!261030 () Bool)

(declare-fun lt!317952 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1331 (List!8919) (InoxSet C!4756))

(assert (=> d!261030 (= lt!317952 (select (content!1331 (usedCharacters!170 (regOne!4698 r!27177))) c!13916))))

(declare-fun e!550123 () Bool)

(assert (=> d!261030 (= lt!317952 e!550123)))

(declare-fun res!382747 () Bool)

(assert (=> d!261030 (=> (not res!382747) (not e!550123))))

(assert (=> d!261030 (= res!382747 ((_ is Cons!8903) (usedCharacters!170 (regOne!4698 r!27177))))))

(assert (=> d!261030 (= (contains!1684 (usedCharacters!170 (regOne!4698 r!27177)) c!13916) lt!317952)))

(declare-fun b!836551 () Bool)

(declare-fun e!550124 () Bool)

(assert (=> b!836551 (= e!550123 e!550124)))

(declare-fun res!382748 () Bool)

(assert (=> b!836551 (=> res!382748 e!550124)))

(assert (=> b!836551 (= res!382748 (= (h!14304 (usedCharacters!170 (regOne!4698 r!27177))) c!13916))))

(declare-fun b!836552 () Bool)

(assert (=> b!836552 (= e!550124 (contains!1684 (t!93211 (usedCharacters!170 (regOne!4698 r!27177))) c!13916))))

(assert (= (and d!261030 res!382747) b!836551))

(assert (= (and b!836551 (not res!382748)) b!836552))

(assert (=> d!261030 m!1070507))

(declare-fun m!1070525 () Bool)

(assert (=> d!261030 m!1070525))

(declare-fun m!1070527 () Bool)

(assert (=> d!261030 m!1070527))

(declare-fun m!1070529 () Bool)

(assert (=> b!836552 m!1070529))

(assert (=> b!836489 d!261030))

(declare-fun b!836553 () Bool)

(declare-fun e!550126 () List!8919)

(declare-fun call!50228 () List!8919)

(assert (=> b!836553 (= e!550126 call!50228)))

(declare-fun call!50229 () List!8919)

(declare-fun c!136625 () Bool)

(declare-fun call!50227 () List!8919)

(declare-fun call!50230 () List!8919)

(declare-fun bm!50222 () Bool)

(assert (=> bm!50222 (= call!50229 (++!2319 (ite c!136625 call!50230 call!50227) (ite c!136625 call!50227 call!50230)))))

(declare-fun bm!50223 () Bool)

(assert (=> bm!50223 (= call!50227 (usedCharacters!170 (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))

(declare-fun b!836554 () Bool)

(declare-fun e!550125 () List!8919)

(assert (=> b!836554 (= e!550125 (Cons!8903 (c!136606 r!27177) Nil!8903))))

(declare-fun b!836555 () Bool)

(declare-fun e!550128 () List!8919)

(assert (=> b!836555 (= e!550128 e!550125)))

(declare-fun c!136628 () Bool)

(assert (=> b!836555 (= c!136628 ((_ is ElementMatch!2093) r!27177))))

(declare-fun b!836556 () Bool)

(declare-fun e!550127 () List!8919)

(assert (=> b!836556 (= e!550127 call!50229)))

(declare-fun b!836558 () Bool)

(declare-fun c!136627 () Bool)

(assert (=> b!836558 (= c!136627 ((_ is Star!2093) r!27177))))

(assert (=> b!836558 (= e!550125 e!550126)))

(declare-fun bm!50224 () Bool)

(assert (=> bm!50224 (= call!50228 (usedCharacters!170 (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(declare-fun bm!50225 () Bool)

(assert (=> bm!50225 (= call!50230 call!50228)))

(declare-fun b!836559 () Bool)

(assert (=> b!836559 (= e!550127 call!50229)))

(declare-fun b!836560 () Bool)

(assert (=> b!836560 (= e!550128 Nil!8903)))

(declare-fun b!836557 () Bool)

(assert (=> b!836557 (= e!550126 e!550127)))

(assert (=> b!836557 (= c!136625 ((_ is Union!2093) r!27177))))

(declare-fun d!261034 () Bool)

(declare-fun c!136626 () Bool)

(assert (=> d!261034 (= c!136626 (or ((_ is EmptyExpr!2093) r!27177) ((_ is EmptyLang!2093) r!27177)))))

(assert (=> d!261034 (= (usedCharacters!170 r!27177) e!550128)))

(assert (= (and d!261034 c!136626) b!836560))

(assert (= (and d!261034 (not c!136626)) b!836555))

(assert (= (and b!836555 c!136628) b!836554))

(assert (= (and b!836555 (not c!136628)) b!836558))

(assert (= (and b!836558 c!136627) b!836553))

(assert (= (and b!836558 (not c!136627)) b!836557))

(assert (= (and b!836557 c!136625) b!836559))

(assert (= (and b!836557 (not c!136625)) b!836556))

(assert (= (or b!836559 b!836556) bm!50223))

(assert (= (or b!836559 b!836556) bm!50225))

(assert (= (or b!836559 b!836556) bm!50222))

(assert (= (or b!836553 bm!50225) bm!50224))

(declare-fun m!1070531 () Bool)

(assert (=> bm!50222 m!1070531))

(declare-fun m!1070533 () Bool)

(assert (=> bm!50223 m!1070533))

(declare-fun m!1070535 () Bool)

(assert (=> bm!50224 m!1070535))

(assert (=> b!836489 d!261034))

(declare-fun d!261036 () Bool)

(declare-fun lt!317955 () Bool)

(assert (=> d!261036 (= lt!317955 (select (content!1331 (usedCharacters!170 r!27177)) c!13916))))

(declare-fun e!550133 () Bool)

(assert (=> d!261036 (= lt!317955 e!550133)))

(declare-fun res!382753 () Bool)

(assert (=> d!261036 (=> (not res!382753) (not e!550133))))

(assert (=> d!261036 (= res!382753 ((_ is Cons!8903) (usedCharacters!170 r!27177)))))

(assert (=> d!261036 (= (contains!1684 (usedCharacters!170 r!27177) c!13916) lt!317955)))

(declare-fun b!836565 () Bool)

(declare-fun e!550134 () Bool)

(assert (=> b!836565 (= e!550133 e!550134)))

(declare-fun res!382754 () Bool)

(assert (=> b!836565 (=> res!382754 e!550134)))

(assert (=> b!836565 (= res!382754 (= (h!14304 (usedCharacters!170 r!27177)) c!13916))))

(declare-fun b!836566 () Bool)

(assert (=> b!836566 (= e!550134 (contains!1684 (t!93211 (usedCharacters!170 r!27177)) c!13916))))

(assert (= (and d!261036 res!382753) b!836565))

(assert (= (and b!836565 (not res!382754)) b!836566))

(assert (=> d!261036 m!1070501))

(declare-fun m!1070537 () Bool)

(assert (=> d!261036 m!1070537))

(declare-fun m!1070539 () Bool)

(assert (=> d!261036 m!1070539))

(declare-fun m!1070541 () Bool)

(assert (=> b!836566 m!1070541))

(assert (=> b!836489 d!261036))

(declare-fun d!261038 () Bool)

(assert (=> d!261038 (contains!1684 (usedCharacters!170 (regOne!4698 r!27177)) c!13916)))

(declare-fun lt!317959 () Unit!13391)

(declare-fun choose!4939 (Regex!2093 C!4756) Unit!13391)

(assert (=> d!261038 (= lt!317959 (choose!4939 (regOne!4698 r!27177) c!13916))))

(assert (=> d!261038 (validRegex!646 (regOne!4698 r!27177))))

(assert (=> d!261038 (= (lemmaUsedCharsContainsAllFirstChars!12 (regOne!4698 r!27177) c!13916) lt!317959)))

(declare-fun bs!229730 () Bool)

(assert (= bs!229730 d!261038))

(assert (=> bs!229730 m!1070507))

(assert (=> bs!229730 m!1070507))

(assert (=> bs!229730 m!1070509))

(declare-fun m!1070549 () Bool)

(assert (=> bs!229730 m!1070549))

(assert (=> bs!229730 m!1070495))

(assert (=> b!836489 d!261038))

(declare-fun d!261042 () Bool)

(declare-fun lt!317960 () Bool)

(assert (=> d!261042 (= lt!317960 (select (content!1331 (firstChars!64 r!27177)) c!13916))))

(declare-fun e!550137 () Bool)

(assert (=> d!261042 (= lt!317960 e!550137)))

(declare-fun res!382757 () Bool)

(assert (=> d!261042 (=> (not res!382757) (not e!550137))))

(assert (=> d!261042 (= res!382757 ((_ is Cons!8903) (firstChars!64 r!27177)))))

(assert (=> d!261042 (= (contains!1684 (firstChars!64 r!27177) c!13916) lt!317960)))

(declare-fun b!836569 () Bool)

(declare-fun e!550138 () Bool)

(assert (=> b!836569 (= e!550137 e!550138)))

(declare-fun res!382758 () Bool)

(assert (=> b!836569 (=> res!382758 e!550138)))

(assert (=> b!836569 (= res!382758 (= (h!14304 (firstChars!64 r!27177)) c!13916))))

(declare-fun b!836570 () Bool)

(assert (=> b!836570 (= e!550138 (contains!1684 (t!93211 (firstChars!64 r!27177)) c!13916))))

(assert (= (and d!261042 res!382757) b!836569))

(assert (= (and b!836569 (not res!382758)) b!836570))

(assert (=> d!261042 m!1070491))

(declare-fun m!1070551 () Bool)

(assert (=> d!261042 m!1070551))

(declare-fun m!1070553 () Bool)

(assert (=> d!261042 m!1070553))

(declare-fun m!1070555 () Bool)

(assert (=> b!836570 m!1070555))

(assert (=> b!836488 d!261042))

(declare-fun d!261044 () Bool)

(declare-fun c!136656 () Bool)

(assert (=> d!261044 (= c!136656 (or ((_ is EmptyExpr!2093) r!27177) ((_ is EmptyLang!2093) r!27177)))))

(declare-fun e!550167 () List!8919)

(assert (=> d!261044 (= (firstChars!64 r!27177) e!550167)))

(declare-fun b!836621 () Bool)

(declare-fun c!136658 () Bool)

(assert (=> b!836621 (= c!136658 ((_ is Star!2093) r!27177))))

(declare-fun e!550164 () List!8919)

(declare-fun e!550165 () List!8919)

(assert (=> b!836621 (= e!550164 e!550165)))

(declare-fun b!836622 () Bool)

(declare-fun e!550168 () List!8919)

(assert (=> b!836622 (= e!550165 e!550168)))

(declare-fun c!136657 () Bool)

(assert (=> b!836622 (= c!136657 ((_ is Union!2093) r!27177))))

(declare-fun b!836623 () Bool)

(assert (=> b!836623 (= e!550167 e!550164)))

(declare-fun c!136655 () Bool)

(assert (=> b!836623 (= c!136655 ((_ is ElementMatch!2093) r!27177))))

(declare-fun bm!50251 () Bool)

(declare-fun call!50259 () List!8919)

(declare-fun call!50260 () List!8919)

(assert (=> bm!50251 (= call!50259 call!50260)))

(declare-fun b!836624 () Bool)

(declare-fun c!136659 () Bool)

(assert (=> b!836624 (= c!136659 (nullable!544 (regOne!4698 r!27177)))))

(declare-fun e!550166 () List!8919)

(assert (=> b!836624 (= e!550168 e!550166)))

(declare-fun bm!50252 () Bool)

(declare-fun call!50256 () List!8919)

(assert (=> bm!50252 (= call!50256 (firstChars!64 (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))))))

(declare-fun bm!50253 () Bool)

(declare-fun call!50257 () List!8919)

(assert (=> bm!50253 (= call!50260 call!50257)))

(declare-fun bm!50254 () Bool)

(declare-fun call!50258 () List!8919)

(assert (=> bm!50254 (= call!50258 (++!2319 (ite c!136657 call!50256 call!50259) (ite c!136657 call!50260 call!50256)))))

(declare-fun b!836625 () Bool)

(assert (=> b!836625 (= e!550165 call!50257)))

(declare-fun b!836626 () Bool)

(assert (=> b!836626 (= e!550166 call!50259)))

(declare-fun b!836627 () Bool)

(assert (=> b!836627 (= e!550168 call!50258)))

(declare-fun b!836628 () Bool)

(assert (=> b!836628 (= e!550164 (Cons!8903 (c!136606 r!27177) Nil!8903))))

(declare-fun b!836629 () Bool)

(assert (=> b!836629 (= e!550166 call!50258)))

(declare-fun bm!50255 () Bool)

(assert (=> bm!50255 (= call!50257 (firstChars!64 (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))))))

(declare-fun b!836630 () Bool)

(assert (=> b!836630 (= e!550167 Nil!8903)))

(assert (= (and d!261044 c!136656) b!836630))

(assert (= (and d!261044 (not c!136656)) b!836623))

(assert (= (and b!836623 c!136655) b!836628))

(assert (= (and b!836623 (not c!136655)) b!836621))

(assert (= (and b!836621 c!136658) b!836625))

(assert (= (and b!836621 (not c!136658)) b!836622))

(assert (= (and b!836622 c!136657) b!836627))

(assert (= (and b!836622 (not c!136657)) b!836624))

(assert (= (and b!836624 c!136659) b!836629))

(assert (= (and b!836624 (not c!136659)) b!836626))

(assert (= (or b!836629 b!836626) bm!50251))

(assert (= (or b!836627 bm!50251) bm!50253))

(assert (= (or b!836627 b!836629) bm!50252))

(assert (= (or b!836627 b!836629) bm!50254))

(assert (= (or b!836625 bm!50253) bm!50255))

(assert (=> b!836624 m!1070489))

(declare-fun m!1070563 () Bool)

(assert (=> bm!50252 m!1070563))

(declare-fun m!1070565 () Bool)

(assert (=> bm!50254 m!1070565))

(declare-fun m!1070567 () Bool)

(assert (=> bm!50255 m!1070567))

(assert (=> b!836488 d!261044))

(declare-fun d!261048 () Bool)

(declare-fun lt!317961 () Bool)

(assert (=> d!261048 (= lt!317961 (select (content!1331 (firstChars!64 (regOne!4698 r!27177))) c!13916))))

(declare-fun e!550177 () Bool)

(assert (=> d!261048 (= lt!317961 e!550177)))

(declare-fun res!382759 () Bool)

(assert (=> d!261048 (=> (not res!382759) (not e!550177))))

(assert (=> d!261048 (= res!382759 ((_ is Cons!8903) (firstChars!64 (regOne!4698 r!27177))))))

(assert (=> d!261048 (= (contains!1684 (firstChars!64 (regOne!4698 r!27177)) c!13916) lt!317961)))

(declare-fun b!836647 () Bool)

(declare-fun e!550178 () Bool)

(assert (=> b!836647 (= e!550177 e!550178)))

(declare-fun res!382760 () Bool)

(assert (=> b!836647 (=> res!382760 e!550178)))

(assert (=> b!836647 (= res!382760 (= (h!14304 (firstChars!64 (regOne!4698 r!27177))) c!13916))))

(declare-fun b!836648 () Bool)

(assert (=> b!836648 (= e!550178 (contains!1684 (t!93211 (firstChars!64 (regOne!4698 r!27177))) c!13916))))

(assert (= (and d!261048 res!382759) b!836647))

(assert (= (and b!836647 (not res!382760)) b!836648))

(assert (=> d!261048 m!1070497))

(declare-fun m!1070569 () Bool)

(assert (=> d!261048 m!1070569))

(declare-fun m!1070571 () Bool)

(assert (=> d!261048 m!1070571))

(declare-fun m!1070573 () Bool)

(assert (=> b!836648 m!1070573))

(assert (=> b!836492 d!261048))

(declare-fun d!261050 () Bool)

(declare-fun c!136669 () Bool)

(assert (=> d!261050 (= c!136669 (or ((_ is EmptyExpr!2093) (regOne!4698 r!27177)) ((_ is EmptyLang!2093) (regOne!4698 r!27177))))))

(declare-fun e!550182 () List!8919)

(assert (=> d!261050 (= (firstChars!64 (regOne!4698 r!27177)) e!550182)))

(declare-fun b!836649 () Bool)

(declare-fun c!136671 () Bool)

(assert (=> b!836649 (= c!136671 ((_ is Star!2093) (regOne!4698 r!27177)))))

(declare-fun e!550179 () List!8919)

(declare-fun e!550180 () List!8919)

(assert (=> b!836649 (= e!550179 e!550180)))

(declare-fun b!836650 () Bool)

(declare-fun e!550183 () List!8919)

(assert (=> b!836650 (= e!550180 e!550183)))

(declare-fun c!136670 () Bool)

(assert (=> b!836650 (= c!136670 ((_ is Union!2093) (regOne!4698 r!27177)))))

(declare-fun b!836651 () Bool)

(assert (=> b!836651 (= e!550182 e!550179)))

(declare-fun c!136668 () Bool)

(assert (=> b!836651 (= c!136668 ((_ is ElementMatch!2093) (regOne!4698 r!27177)))))

(declare-fun bm!50262 () Bool)

(declare-fun call!50270 () List!8919)

(declare-fun call!50271 () List!8919)

(assert (=> bm!50262 (= call!50270 call!50271)))

(declare-fun b!836652 () Bool)

(declare-fun c!136672 () Bool)

(assert (=> b!836652 (= c!136672 (nullable!544 (regOne!4698 (regOne!4698 r!27177))))))

(declare-fun e!550181 () List!8919)

(assert (=> b!836652 (= e!550183 e!550181)))

(declare-fun bm!50263 () Bool)

(declare-fun call!50267 () List!8919)

(assert (=> bm!50263 (= call!50267 (firstChars!64 (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))

(declare-fun bm!50264 () Bool)

(declare-fun call!50268 () List!8919)

(assert (=> bm!50264 (= call!50271 call!50268)))

(declare-fun bm!50265 () Bool)

(declare-fun call!50269 () List!8919)

(assert (=> bm!50265 (= call!50269 (++!2319 (ite c!136670 call!50267 call!50270) (ite c!136670 call!50271 call!50267)))))

(declare-fun b!836653 () Bool)

(assert (=> b!836653 (= e!550180 call!50268)))

(declare-fun b!836654 () Bool)

(assert (=> b!836654 (= e!550181 call!50270)))

(declare-fun b!836655 () Bool)

(assert (=> b!836655 (= e!550183 call!50269)))

(declare-fun b!836656 () Bool)

(assert (=> b!836656 (= e!550179 (Cons!8903 (c!136606 (regOne!4698 r!27177)) Nil!8903))))

(declare-fun b!836657 () Bool)

(assert (=> b!836657 (= e!550181 call!50269)))

(declare-fun bm!50266 () Bool)

(assert (=> bm!50266 (= call!50268 (firstChars!64 (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))))))

(declare-fun b!836658 () Bool)

(assert (=> b!836658 (= e!550182 Nil!8903)))

(assert (= (and d!261050 c!136669) b!836658))

(assert (= (and d!261050 (not c!136669)) b!836651))

(assert (= (and b!836651 c!136668) b!836656))

(assert (= (and b!836651 (not c!136668)) b!836649))

(assert (= (and b!836649 c!136671) b!836653))

(assert (= (and b!836649 (not c!136671)) b!836650))

(assert (= (and b!836650 c!136670) b!836655))

(assert (= (and b!836650 (not c!136670)) b!836652))

(assert (= (and b!836652 c!136672) b!836657))

(assert (= (and b!836652 (not c!136672)) b!836654))

(assert (= (or b!836657 b!836654) bm!50262))

(assert (= (or b!836655 bm!50262) bm!50264))

(assert (= (or b!836655 b!836657) bm!50263))

(assert (= (or b!836655 b!836657) bm!50265))

(assert (= (or b!836653 bm!50264) bm!50266))

(declare-fun m!1070575 () Bool)

(assert (=> b!836652 m!1070575))

(declare-fun m!1070577 () Bool)

(assert (=> bm!50263 m!1070577))

(declare-fun m!1070579 () Bool)

(assert (=> bm!50265 m!1070579))

(declare-fun m!1070581 () Bool)

(assert (=> bm!50266 m!1070581))

(assert (=> b!836492 d!261050))

(declare-fun d!261052 () Bool)

(declare-fun nullableFct!181 (Regex!2093) Bool)

(assert (=> d!261052 (= (nullable!544 (regOne!4698 r!27177)) (nullableFct!181 (regOne!4698 r!27177)))))

(declare-fun bs!229731 () Bool)

(assert (= bs!229731 d!261052))

(declare-fun m!1070583 () Bool)

(assert (=> bs!229731 m!1070583))

(assert (=> b!836487 d!261052))

(declare-fun b!836709 () Bool)

(declare-fun e!550222 () Bool)

(declare-fun call!50294 () Bool)

(assert (=> b!836709 (= e!550222 call!50294)))

(declare-fun b!836710 () Bool)

(declare-fun res!382780 () Bool)

(declare-fun e!550218 () Bool)

(assert (=> b!836710 (=> (not res!382780) (not e!550218))))

(declare-fun call!50293 () Bool)

(assert (=> b!836710 (= res!382780 call!50293)))

(declare-fun e!550219 () Bool)

(assert (=> b!836710 (= e!550219 e!550218)))

(declare-fun b!836711 () Bool)

(declare-fun e!550220 () Bool)

(declare-fun e!550221 () Bool)

(assert (=> b!836711 (= e!550220 e!550221)))

(declare-fun c!136692 () Bool)

(assert (=> b!836711 (= c!136692 ((_ is Star!2093) (regOne!4698 r!27177)))))

(declare-fun b!836712 () Bool)

(declare-fun e!550223 () Bool)

(declare-fun e!550217 () Bool)

(assert (=> b!836712 (= e!550223 e!550217)))

(declare-fun res!382781 () Bool)

(assert (=> b!836712 (=> (not res!382781) (not e!550217))))

(declare-fun call!50295 () Bool)

(assert (=> b!836712 (= res!382781 call!50295)))

(declare-fun d!261054 () Bool)

(declare-fun res!382777 () Bool)

(assert (=> d!261054 (=> res!382777 e!550220)))

(assert (=> d!261054 (= res!382777 ((_ is ElementMatch!2093) (regOne!4698 r!27177)))))

(assert (=> d!261054 (= (validRegex!646 (regOne!4698 r!27177)) e!550220)))

(declare-fun b!836713 () Bool)

(assert (=> b!836713 (= e!550221 e!550222)))

(declare-fun res!382779 () Bool)

(assert (=> b!836713 (= res!382779 (not (nullable!544 (reg!2422 (regOne!4698 r!27177)))))))

(assert (=> b!836713 (=> (not res!382779) (not e!550222))))

(declare-fun c!136691 () Bool)

(declare-fun bm!50288 () Bool)

(assert (=> bm!50288 (= call!50294 (validRegex!646 (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(declare-fun b!836714 () Bool)

(declare-fun res!382778 () Bool)

(assert (=> b!836714 (=> res!382778 e!550223)))

(assert (=> b!836714 (= res!382778 (not ((_ is Concat!3824) (regOne!4698 r!27177))))))

(assert (=> b!836714 (= e!550219 e!550223)))

(declare-fun b!836715 () Bool)

(assert (=> b!836715 (= e!550221 e!550219)))

(assert (=> b!836715 (= c!136691 ((_ is Union!2093) (regOne!4698 r!27177)))))

(declare-fun b!836716 () Bool)

(assert (=> b!836716 (= e!550218 call!50295)))

(declare-fun bm!50289 () Bool)

(assert (=> bm!50289 (= call!50295 (validRegex!646 (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))

(declare-fun bm!50290 () Bool)

(assert (=> bm!50290 (= call!50293 call!50294)))

(declare-fun b!836717 () Bool)

(assert (=> b!836717 (= e!550217 call!50293)))

(assert (= (and d!261054 (not res!382777)) b!836711))

(assert (= (and b!836711 c!136692) b!836713))

(assert (= (and b!836711 (not c!136692)) b!836715))

(assert (= (and b!836713 res!382779) b!836709))

(assert (= (and b!836715 c!136691) b!836710))

(assert (= (and b!836715 (not c!136691)) b!836714))

(assert (= (and b!836710 res!382780) b!836716))

(assert (= (and b!836714 (not res!382778)) b!836712))

(assert (= (and b!836712 res!382781) b!836717))

(assert (= (or b!836710 b!836717) bm!50290))

(assert (= (or b!836716 b!836712) bm!50289))

(assert (= (or b!836709 bm!50290) bm!50288))

(declare-fun m!1070623 () Bool)

(assert (=> b!836713 m!1070623))

(declare-fun m!1070627 () Bool)

(assert (=> bm!50288 m!1070627))

(declare-fun m!1070629 () Bool)

(assert (=> bm!50289 m!1070629))

(assert (=> b!836490 d!261054))

(declare-fun b!836718 () Bool)

(declare-fun e!550229 () Bool)

(declare-fun call!50297 () Bool)

(assert (=> b!836718 (= e!550229 call!50297)))

(declare-fun b!836719 () Bool)

(declare-fun res!382785 () Bool)

(declare-fun e!550225 () Bool)

(assert (=> b!836719 (=> (not res!382785) (not e!550225))))

(declare-fun call!50296 () Bool)

(assert (=> b!836719 (= res!382785 call!50296)))

(declare-fun e!550226 () Bool)

(assert (=> b!836719 (= e!550226 e!550225)))

(declare-fun b!836720 () Bool)

(declare-fun e!550227 () Bool)

(declare-fun e!550228 () Bool)

(assert (=> b!836720 (= e!550227 e!550228)))

(declare-fun c!136694 () Bool)

(assert (=> b!836720 (= c!136694 ((_ is Star!2093) r!27177))))

(declare-fun b!836721 () Bool)

(declare-fun e!550230 () Bool)

(declare-fun e!550224 () Bool)

(assert (=> b!836721 (= e!550230 e!550224)))

(declare-fun res!382786 () Bool)

(assert (=> b!836721 (=> (not res!382786) (not e!550224))))

(declare-fun call!50298 () Bool)

(assert (=> b!836721 (= res!382786 call!50298)))

(declare-fun d!261070 () Bool)

(declare-fun res!382782 () Bool)

(assert (=> d!261070 (=> res!382782 e!550227)))

(assert (=> d!261070 (= res!382782 ((_ is ElementMatch!2093) r!27177))))

(assert (=> d!261070 (= (validRegex!646 r!27177) e!550227)))

(declare-fun b!836722 () Bool)

(assert (=> b!836722 (= e!550228 e!550229)))

(declare-fun res!382784 () Bool)

(assert (=> b!836722 (= res!382784 (not (nullable!544 (reg!2422 r!27177))))))

(assert (=> b!836722 (=> (not res!382784) (not e!550229))))

(declare-fun bm!50291 () Bool)

(declare-fun c!136693 () Bool)

(assert (=> bm!50291 (= call!50297 (validRegex!646 (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(declare-fun b!836723 () Bool)

(declare-fun res!382783 () Bool)

(assert (=> b!836723 (=> res!382783 e!550230)))

(assert (=> b!836723 (= res!382783 (not ((_ is Concat!3824) r!27177)))))

(assert (=> b!836723 (= e!550226 e!550230)))

(declare-fun b!836724 () Bool)

(assert (=> b!836724 (= e!550228 e!550226)))

(assert (=> b!836724 (= c!136693 ((_ is Union!2093) r!27177))))

(declare-fun b!836725 () Bool)

(assert (=> b!836725 (= e!550225 call!50298)))

(declare-fun bm!50292 () Bool)

(assert (=> bm!50292 (= call!50298 (validRegex!646 (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))

(declare-fun bm!50293 () Bool)

(assert (=> bm!50293 (= call!50296 call!50297)))

(declare-fun b!836726 () Bool)

(assert (=> b!836726 (= e!550224 call!50296)))

(assert (= (and d!261070 (not res!382782)) b!836720))

(assert (= (and b!836720 c!136694) b!836722))

(assert (= (and b!836720 (not c!136694)) b!836724))

(assert (= (and b!836722 res!382784) b!836718))

(assert (= (and b!836724 c!136693) b!836719))

(assert (= (and b!836724 (not c!136693)) b!836723))

(assert (= (and b!836719 res!382785) b!836725))

(assert (= (and b!836723 (not res!382783)) b!836721))

(assert (= (and b!836721 res!382786) b!836726))

(assert (= (or b!836719 b!836726) bm!50293))

(assert (= (or b!836725 b!836721) bm!50292))

(assert (= (or b!836718 bm!50293) bm!50291))

(declare-fun m!1070633 () Bool)

(assert (=> b!836722 m!1070633))

(declare-fun m!1070635 () Bool)

(assert (=> bm!50291 m!1070635))

(declare-fun m!1070637 () Bool)

(assert (=> bm!50292 m!1070637))

(assert (=> start!74286 d!261070))

(declare-fun b!836757 () Bool)

(declare-fun e!550242 () Bool)

(declare-fun tp!262336 () Bool)

(declare-fun tp!262339 () Bool)

(assert (=> b!836757 (= e!550242 (and tp!262336 tp!262339))))

(assert (=> b!836495 (= tp!262310 e!550242)))

(declare-fun b!836756 () Bool)

(assert (=> b!836756 (= e!550242 tp_is_empty!3909)))

(declare-fun b!836758 () Bool)

(declare-fun tp!262335 () Bool)

(assert (=> b!836758 (= e!550242 tp!262335)))

(declare-fun b!836759 () Bool)

(declare-fun tp!262337 () Bool)

(declare-fun tp!262338 () Bool)

(assert (=> b!836759 (= e!550242 (and tp!262337 tp!262338))))

(assert (= (and b!836495 ((_ is ElementMatch!2093) (regOne!4699 r!27177))) b!836756))

(assert (= (and b!836495 ((_ is Concat!3824) (regOne!4699 r!27177))) b!836757))

(assert (= (and b!836495 ((_ is Star!2093) (regOne!4699 r!27177))) b!836758))

(assert (= (and b!836495 ((_ is Union!2093) (regOne!4699 r!27177))) b!836759))

(declare-fun b!836761 () Bool)

(declare-fun e!550243 () Bool)

(declare-fun tp!262341 () Bool)

(declare-fun tp!262344 () Bool)

(assert (=> b!836761 (= e!550243 (and tp!262341 tp!262344))))

(assert (=> b!836495 (= tp!262313 e!550243)))

(declare-fun b!836760 () Bool)

(assert (=> b!836760 (= e!550243 tp_is_empty!3909)))

(declare-fun b!836762 () Bool)

(declare-fun tp!262340 () Bool)

(assert (=> b!836762 (= e!550243 tp!262340)))

(declare-fun b!836763 () Bool)

(declare-fun tp!262342 () Bool)

(declare-fun tp!262343 () Bool)

(assert (=> b!836763 (= e!550243 (and tp!262342 tp!262343))))

(assert (= (and b!836495 ((_ is ElementMatch!2093) (regTwo!4699 r!27177))) b!836760))

(assert (= (and b!836495 ((_ is Concat!3824) (regTwo!4699 r!27177))) b!836761))

(assert (= (and b!836495 ((_ is Star!2093) (regTwo!4699 r!27177))) b!836762))

(assert (= (and b!836495 ((_ is Union!2093) (regTwo!4699 r!27177))) b!836763))

(declare-fun b!836769 () Bool)

(declare-fun e!550245 () Bool)

(declare-fun tp!262351 () Bool)

(declare-fun tp!262354 () Bool)

(assert (=> b!836769 (= e!550245 (and tp!262351 tp!262354))))

(assert (=> b!836494 (= tp!262311 e!550245)))

(declare-fun b!836768 () Bool)

(assert (=> b!836768 (= e!550245 tp_is_empty!3909)))

(declare-fun b!836770 () Bool)

(declare-fun tp!262350 () Bool)

(assert (=> b!836770 (= e!550245 tp!262350)))

(declare-fun b!836771 () Bool)

(declare-fun tp!262352 () Bool)

(declare-fun tp!262353 () Bool)

(assert (=> b!836771 (= e!550245 (and tp!262352 tp!262353))))

(assert (= (and b!836494 ((_ is ElementMatch!2093) (regOne!4698 r!27177))) b!836768))

(assert (= (and b!836494 ((_ is Concat!3824) (regOne!4698 r!27177))) b!836769))

(assert (= (and b!836494 ((_ is Star!2093) (regOne!4698 r!27177))) b!836770))

(assert (= (and b!836494 ((_ is Union!2093) (regOne!4698 r!27177))) b!836771))

(declare-fun b!836781 () Bool)

(declare-fun e!550248 () Bool)

(declare-fun tp!262366 () Bool)

(declare-fun tp!262369 () Bool)

(assert (=> b!836781 (= e!550248 (and tp!262366 tp!262369))))

(assert (=> b!836494 (= tp!262314 e!550248)))

(declare-fun b!836780 () Bool)

(assert (=> b!836780 (= e!550248 tp_is_empty!3909)))

(declare-fun b!836782 () Bool)

(declare-fun tp!262365 () Bool)

(assert (=> b!836782 (= e!550248 tp!262365)))

(declare-fun b!836783 () Bool)

(declare-fun tp!262367 () Bool)

(declare-fun tp!262368 () Bool)

(assert (=> b!836783 (= e!550248 (and tp!262367 tp!262368))))

(assert (= (and b!836494 ((_ is ElementMatch!2093) (regTwo!4698 r!27177))) b!836780))

(assert (= (and b!836494 ((_ is Concat!3824) (regTwo!4698 r!27177))) b!836781))

(assert (= (and b!836494 ((_ is Star!2093) (regTwo!4698 r!27177))) b!836782))

(assert (= (and b!836494 ((_ is Union!2093) (regTwo!4698 r!27177))) b!836783))

(declare-fun b!836789 () Bool)

(declare-fun e!550250 () Bool)

(declare-fun tp!262376 () Bool)

(declare-fun tp!262379 () Bool)

(assert (=> b!836789 (= e!550250 (and tp!262376 tp!262379))))

(assert (=> b!836493 (= tp!262312 e!550250)))

(declare-fun b!836788 () Bool)

(assert (=> b!836788 (= e!550250 tp_is_empty!3909)))

(declare-fun b!836790 () Bool)

(declare-fun tp!262375 () Bool)

(assert (=> b!836790 (= e!550250 tp!262375)))

(declare-fun b!836791 () Bool)

(declare-fun tp!262377 () Bool)

(declare-fun tp!262378 () Bool)

(assert (=> b!836791 (= e!550250 (and tp!262377 tp!262378))))

(assert (= (and b!836493 ((_ is ElementMatch!2093) (reg!2422 r!27177))) b!836788))

(assert (= (and b!836493 ((_ is Concat!3824) (reg!2422 r!27177))) b!836789))

(assert (= (and b!836493 ((_ is Star!2093) (reg!2422 r!27177))) b!836790))

(assert (= (and b!836493 ((_ is Union!2093) (reg!2422 r!27177))) b!836791))

(check-sat (not b!836566) (not bm!50291) (not b!836624) (not b!836552) (not d!261030) (not b!836782) (not b!836648) (not b!836762) (not d!261038) (not b!836763) (not bm!50224) (not bm!50266) (not bm!50217) (not d!261042) (not b!836781) (not b!836761) (not b!836757) (not b!836652) (not bm!50223) (not b!836769) (not b!836713) (not d!261048) (not bm!50263) (not b!836790) (not b!836758) (not bm!50289) tp_is_empty!3909 (not bm!50292) (not b!836770) (not bm!50215) (not bm!50216) (not bm!50222) (not bm!50288) (not b!836771) (not d!261052) (not b!836759) (not bm!50254) (not b!836789) (not b!836722) (not d!261036) (not b!836791) (not bm!50265) (not bm!50255) (not b!836783) (not bm!50252) (not b!836570))
(check-sat)
(get-model)

(declare-fun b!836796 () Bool)

(declare-fun e!550257 () Bool)

(declare-fun call!50303 () Bool)

(assert (=> b!836796 (= e!550257 call!50303)))

(declare-fun b!836797 () Bool)

(declare-fun res!382795 () Bool)

(declare-fun e!550253 () Bool)

(assert (=> b!836797 (=> (not res!382795) (not e!550253))))

(declare-fun call!50302 () Bool)

(assert (=> b!836797 (= res!382795 call!50302)))

(declare-fun e!550254 () Bool)

(assert (=> b!836797 (= e!550254 e!550253)))

(declare-fun b!836798 () Bool)

(declare-fun e!550255 () Bool)

(declare-fun e!550256 () Bool)

(assert (=> b!836798 (= e!550255 e!550256)))

(declare-fun c!136698 () Bool)

(assert (=> b!836798 (= c!136698 ((_ is Star!2093) (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))

(declare-fun b!836799 () Bool)

(declare-fun e!550258 () Bool)

(declare-fun e!550252 () Bool)

(assert (=> b!836799 (= e!550258 e!550252)))

(declare-fun res!382796 () Bool)

(assert (=> b!836799 (=> (not res!382796) (not e!550252))))

(declare-fun call!50304 () Bool)

(assert (=> b!836799 (= res!382796 call!50304)))

(declare-fun d!261074 () Bool)

(declare-fun res!382792 () Bool)

(assert (=> d!261074 (=> res!382792 e!550255)))

(assert (=> d!261074 (= res!382792 ((_ is ElementMatch!2093) (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))

(assert (=> d!261074 (= (validRegex!646 (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))) e!550255)))

(declare-fun b!836800 () Bool)

(assert (=> b!836800 (= e!550256 e!550257)))

(declare-fun res!382794 () Bool)

(assert (=> b!836800 (= res!382794 (not (nullable!544 (reg!2422 (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))))

(assert (=> b!836800 (=> (not res!382794) (not e!550257))))

(declare-fun bm!50297 () Bool)

(declare-fun c!136697 () Bool)

(assert (=> bm!50297 (= call!50303 (validRegex!646 (ite c!136698 (reg!2422 (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))) (ite c!136697 (regOne!4699 (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))) (regTwo!4698 (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177)))))))))

(declare-fun b!836801 () Bool)

(declare-fun res!382793 () Bool)

(assert (=> b!836801 (=> res!382793 e!550258)))

(assert (=> b!836801 (= res!382793 (not ((_ is Concat!3824) (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177)))))))

(assert (=> b!836801 (= e!550254 e!550258)))

(declare-fun b!836802 () Bool)

(assert (=> b!836802 (= e!550256 e!550254)))

(assert (=> b!836802 (= c!136697 ((_ is Union!2093) (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))

(declare-fun b!836803 () Bool)

(assert (=> b!836803 (= e!550253 call!50304)))

(declare-fun bm!50298 () Bool)

(assert (=> bm!50298 (= call!50304 (validRegex!646 (ite c!136697 (regTwo!4699 (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))) (regOne!4698 (ite c!136693 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))))

(declare-fun bm!50299 () Bool)

(assert (=> bm!50299 (= call!50302 call!50303)))

(declare-fun b!836804 () Bool)

(assert (=> b!836804 (= e!550252 call!50302)))

(assert (= (and d!261074 (not res!382792)) b!836798))

(assert (= (and b!836798 c!136698) b!836800))

(assert (= (and b!836798 (not c!136698)) b!836802))

(assert (= (and b!836800 res!382794) b!836796))

(assert (= (and b!836802 c!136697) b!836797))

(assert (= (and b!836802 (not c!136697)) b!836801))

(assert (= (and b!836797 res!382795) b!836803))

(assert (= (and b!836801 (not res!382793)) b!836799))

(assert (= (and b!836799 res!382796) b!836804))

(assert (= (or b!836797 b!836804) bm!50299))

(assert (= (or b!836803 b!836799) bm!50298))

(assert (= (or b!836796 bm!50299) bm!50297))

(declare-fun m!1070645 () Bool)

(assert (=> b!836800 m!1070645))

(declare-fun m!1070647 () Bool)

(assert (=> bm!50297 m!1070647))

(declare-fun m!1070649 () Bool)

(assert (=> bm!50298 m!1070649))

(assert (=> bm!50292 d!261074))

(declare-fun b!836805 () Bool)

(declare-fun e!550260 () List!8919)

(declare-fun call!50306 () List!8919)

(assert (=> b!836805 (= e!550260 call!50306)))

(declare-fun call!50308 () List!8919)

(declare-fun bm!50300 () Bool)

(declare-fun c!136699 () Bool)

(declare-fun call!50305 () List!8919)

(declare-fun call!50307 () List!8919)

(assert (=> bm!50300 (= call!50307 (++!2319 (ite c!136699 call!50308 call!50305) (ite c!136699 call!50305 call!50308)))))

(declare-fun bm!50301 () Bool)

(assert (=> bm!50301 (= call!50305 (usedCharacters!170 (ite c!136699 (regTwo!4699 (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) (regOne!4698 (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))))

(declare-fun e!550259 () List!8919)

(declare-fun b!836806 () Bool)

(assert (=> b!836806 (= e!550259 (Cons!8903 (c!136606 (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) Nil!8903))))

(declare-fun b!836807 () Bool)

(declare-fun e!550262 () List!8919)

(assert (=> b!836807 (= e!550262 e!550259)))

(declare-fun c!136702 () Bool)

(assert (=> b!836807 (= c!136702 ((_ is ElementMatch!2093) (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(declare-fun b!836808 () Bool)

(declare-fun e!550261 () List!8919)

(assert (=> b!836808 (= e!550261 call!50307)))

(declare-fun b!836810 () Bool)

(declare-fun c!136701 () Bool)

(assert (=> b!836810 (= c!136701 ((_ is Star!2093) (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(assert (=> b!836810 (= e!550259 e!550260)))

(declare-fun bm!50302 () Bool)

(assert (=> bm!50302 (= call!50306 (usedCharacters!170 (ite c!136701 (reg!2422 (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) (ite c!136699 (regOne!4699 (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) (regTwo!4698 (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))))))

(declare-fun bm!50303 () Bool)

(assert (=> bm!50303 (= call!50308 call!50306)))

(declare-fun b!836811 () Bool)

(assert (=> b!836811 (= e!550261 call!50307)))

(declare-fun b!836812 () Bool)

(assert (=> b!836812 (= e!550262 Nil!8903)))

(declare-fun b!836809 () Bool)

(assert (=> b!836809 (= e!550260 e!550261)))

(assert (=> b!836809 (= c!136699 ((_ is Union!2093) (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(declare-fun d!261076 () Bool)

(declare-fun c!136700 () Bool)

(assert (=> d!261076 (= c!136700 (or ((_ is EmptyExpr!2093) (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) ((_ is EmptyLang!2093) (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))))

(assert (=> d!261076 (= (usedCharacters!170 (ite c!136621 (reg!2422 (regOne!4698 r!27177)) (ite c!136619 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) e!550262)))

(assert (= (and d!261076 c!136700) b!836812))

(assert (= (and d!261076 (not c!136700)) b!836807))

(assert (= (and b!836807 c!136702) b!836806))

(assert (= (and b!836807 (not c!136702)) b!836810))

(assert (= (and b!836810 c!136701) b!836805))

(assert (= (and b!836810 (not c!136701)) b!836809))

(assert (= (and b!836809 c!136699) b!836811))

(assert (= (and b!836809 (not c!136699)) b!836808))

(assert (= (or b!836811 b!836808) bm!50301))

(assert (= (or b!836811 b!836808) bm!50303))

(assert (= (or b!836811 b!836808) bm!50300))

(assert (= (or b!836805 bm!50303) bm!50302))

(declare-fun m!1070651 () Bool)

(assert (=> bm!50300 m!1070651))

(declare-fun m!1070653 () Bool)

(assert (=> bm!50301 m!1070653))

(declare-fun m!1070655 () Bool)

(assert (=> bm!50302 m!1070655))

(assert (=> bm!50217 d!261076))

(declare-fun d!261078 () Bool)

(declare-fun c!136704 () Bool)

(assert (=> d!261078 (= c!136704 (or ((_ is EmptyExpr!2093) (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))) ((_ is EmptyLang!2093) (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(declare-fun e!550266 () List!8919)

(assert (=> d!261078 (= (firstChars!64 (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))) e!550266)))

(declare-fun b!836813 () Bool)

(declare-fun c!136706 () Bool)

(assert (=> b!836813 (= c!136706 ((_ is Star!2093) (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))

(declare-fun e!550263 () List!8919)

(declare-fun e!550264 () List!8919)

(assert (=> b!836813 (= e!550263 e!550264)))

(declare-fun b!836814 () Bool)

(declare-fun e!550267 () List!8919)

(assert (=> b!836814 (= e!550264 e!550267)))

(declare-fun c!136705 () Bool)

(assert (=> b!836814 (= c!136705 ((_ is Union!2093) (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))

(declare-fun b!836815 () Bool)

(assert (=> b!836815 (= e!550266 e!550263)))

(declare-fun c!136703 () Bool)

(assert (=> b!836815 (= c!136703 ((_ is ElementMatch!2093) (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))

(declare-fun bm!50304 () Bool)

(declare-fun call!50312 () List!8919)

(declare-fun call!50313 () List!8919)

(assert (=> bm!50304 (= call!50312 call!50313)))

(declare-fun b!836816 () Bool)

(declare-fun c!136707 () Bool)

(assert (=> b!836816 (= c!136707 (nullable!544 (regOne!4698 (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(declare-fun e!550265 () List!8919)

(assert (=> b!836816 (= e!550267 e!550265)))

(declare-fun bm!50305 () Bool)

(declare-fun call!50309 () List!8919)

(assert (=> bm!50305 (= call!50309 (firstChars!64 (ite c!136705 (regOne!4699 (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))) (regTwo!4698 (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))))

(declare-fun bm!50306 () Bool)

(declare-fun call!50310 () List!8919)

(assert (=> bm!50306 (= call!50313 call!50310)))

(declare-fun bm!50307 () Bool)

(declare-fun call!50311 () List!8919)

(assert (=> bm!50307 (= call!50311 (++!2319 (ite c!136705 call!50309 call!50312) (ite c!136705 call!50313 call!50309)))))

(declare-fun b!836817 () Bool)

(assert (=> b!836817 (= e!550264 call!50310)))

(declare-fun b!836818 () Bool)

(assert (=> b!836818 (= e!550265 call!50312)))

(declare-fun b!836819 () Bool)

(assert (=> b!836819 (= e!550267 call!50311)))

(declare-fun b!836820 () Bool)

(assert (=> b!836820 (= e!550263 (Cons!8903 (c!136606 (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))) Nil!8903))))

(declare-fun b!836821 () Bool)

(assert (=> b!836821 (= e!550265 call!50311)))

(declare-fun bm!50308 () Bool)

(assert (=> bm!50308 (= call!50310 (firstChars!64 (ite c!136706 (reg!2422 (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))) (ite c!136705 (regTwo!4699 (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))) (regOne!4698 (ite c!136670 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))))

(declare-fun b!836822 () Bool)

(assert (=> b!836822 (= e!550266 Nil!8903)))

(assert (= (and d!261078 c!136704) b!836822))

(assert (= (and d!261078 (not c!136704)) b!836815))

(assert (= (and b!836815 c!136703) b!836820))

(assert (= (and b!836815 (not c!136703)) b!836813))

(assert (= (and b!836813 c!136706) b!836817))

(assert (= (and b!836813 (not c!136706)) b!836814))

(assert (= (and b!836814 c!136705) b!836819))

(assert (= (and b!836814 (not c!136705)) b!836816))

(assert (= (and b!836816 c!136707) b!836821))

(assert (= (and b!836816 (not c!136707)) b!836818))

(assert (= (or b!836821 b!836818) bm!50304))

(assert (= (or b!836819 bm!50304) bm!50306))

(assert (= (or b!836819 b!836821) bm!50305))

(assert (= (or b!836819 b!836821) bm!50307))

(assert (= (or b!836817 bm!50306) bm!50308))

(declare-fun m!1070657 () Bool)

(assert (=> b!836816 m!1070657))

(declare-fun m!1070659 () Bool)

(assert (=> bm!50305 m!1070659))

(declare-fun m!1070661 () Bool)

(assert (=> bm!50307 m!1070661))

(declare-fun m!1070663 () Bool)

(assert (=> bm!50308 m!1070663))

(assert (=> bm!50263 d!261078))

(declare-fun d!261080 () Bool)

(declare-fun c!136710 () Bool)

(assert (=> d!261080 (= c!136710 ((_ is Nil!8903) (firstChars!64 (regOne!4698 r!27177))))))

(declare-fun e!550270 () (InoxSet C!4756))

(assert (=> d!261080 (= (content!1331 (firstChars!64 (regOne!4698 r!27177))) e!550270)))

(declare-fun b!836827 () Bool)

(assert (=> b!836827 (= e!550270 ((as const (Array C!4756 Bool)) false))))

(declare-fun b!836828 () Bool)

(assert (=> b!836828 (= e!550270 ((_ map or) (store ((as const (Array C!4756 Bool)) false) (h!14304 (firstChars!64 (regOne!4698 r!27177))) true) (content!1331 (t!93211 (firstChars!64 (regOne!4698 r!27177))))))))

(assert (= (and d!261080 c!136710) b!836827))

(assert (= (and d!261080 (not c!136710)) b!836828))

(declare-fun m!1070665 () Bool)

(assert (=> b!836828 m!1070665))

(declare-fun m!1070667 () Bool)

(assert (=> b!836828 m!1070667))

(assert (=> d!261048 d!261080))

(declare-fun d!261082 () Bool)

(assert (=> d!261082 (= (nullable!544 (regOne!4698 (regOne!4698 r!27177))) (nullableFct!181 (regOne!4698 (regOne!4698 r!27177))))))

(declare-fun bs!229734 () Bool)

(assert (= bs!229734 d!261082))

(declare-fun m!1070669 () Bool)

(assert (=> bs!229734 m!1070669))

(assert (=> b!836652 d!261082))

(declare-fun d!261084 () Bool)

(declare-fun c!136711 () Bool)

(assert (=> d!261084 (= c!136711 ((_ is Nil!8903) (firstChars!64 r!27177)))))

(declare-fun e!550271 () (InoxSet C!4756))

(assert (=> d!261084 (= (content!1331 (firstChars!64 r!27177)) e!550271)))

(declare-fun b!836829 () Bool)

(assert (=> b!836829 (= e!550271 ((as const (Array C!4756 Bool)) false))))

(declare-fun b!836830 () Bool)

(assert (=> b!836830 (= e!550271 ((_ map or) (store ((as const (Array C!4756 Bool)) false) (h!14304 (firstChars!64 r!27177)) true) (content!1331 (t!93211 (firstChars!64 r!27177)))))))

(assert (= (and d!261084 c!136711) b!836829))

(assert (= (and d!261084 (not c!136711)) b!836830))

(declare-fun m!1070671 () Bool)

(assert (=> b!836830 m!1070671))

(declare-fun m!1070673 () Bool)

(assert (=> b!836830 m!1070673))

(assert (=> d!261042 d!261084))

(declare-fun d!261086 () Bool)

(declare-fun c!136712 () Bool)

(assert (=> d!261086 (= c!136712 ((_ is Nil!8903) (usedCharacters!170 r!27177)))))

(declare-fun e!550272 () (InoxSet C!4756))

(assert (=> d!261086 (= (content!1331 (usedCharacters!170 r!27177)) e!550272)))

(declare-fun b!836831 () Bool)

(assert (=> b!836831 (= e!550272 ((as const (Array C!4756 Bool)) false))))

(declare-fun b!836832 () Bool)

(assert (=> b!836832 (= e!550272 ((_ map or) (store ((as const (Array C!4756 Bool)) false) (h!14304 (usedCharacters!170 r!27177)) true) (content!1331 (t!93211 (usedCharacters!170 r!27177)))))))

(assert (= (and d!261086 c!136712) b!836831))

(assert (= (and d!261086 (not c!136712)) b!836832))

(declare-fun m!1070675 () Bool)

(assert (=> b!836832 m!1070675))

(declare-fun m!1070677 () Bool)

(assert (=> b!836832 m!1070677))

(assert (=> d!261036 d!261086))

(declare-fun d!261088 () Bool)

(assert (=> d!261088 (= (nullable!544 (reg!2422 r!27177)) (nullableFct!181 (reg!2422 r!27177)))))

(declare-fun bs!229735 () Bool)

(assert (= bs!229735 d!261088))

(declare-fun m!1070679 () Bool)

(assert (=> bs!229735 m!1070679))

(assert (=> b!836722 d!261088))

(declare-fun b!836833 () Bool)

(declare-fun e!550278 () Bool)

(declare-fun call!50315 () Bool)

(assert (=> b!836833 (= e!550278 call!50315)))

(declare-fun b!836834 () Bool)

(declare-fun res!382800 () Bool)

(declare-fun e!550274 () Bool)

(assert (=> b!836834 (=> (not res!382800) (not e!550274))))

(declare-fun call!50314 () Bool)

(assert (=> b!836834 (= res!382800 call!50314)))

(declare-fun e!550275 () Bool)

(assert (=> b!836834 (= e!550275 e!550274)))

(declare-fun b!836835 () Bool)

(declare-fun e!550276 () Bool)

(declare-fun e!550277 () Bool)

(assert (=> b!836835 (= e!550276 e!550277)))

(declare-fun c!136714 () Bool)

(assert (=> b!836835 (= c!136714 ((_ is Star!2093) (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(declare-fun b!836836 () Bool)

(declare-fun e!550279 () Bool)

(declare-fun e!550273 () Bool)

(assert (=> b!836836 (= e!550279 e!550273)))

(declare-fun res!382801 () Bool)

(assert (=> b!836836 (=> (not res!382801) (not e!550273))))

(declare-fun call!50316 () Bool)

(assert (=> b!836836 (= res!382801 call!50316)))

(declare-fun d!261090 () Bool)

(declare-fun res!382797 () Bool)

(assert (=> d!261090 (=> res!382797 e!550276)))

(assert (=> d!261090 (= res!382797 ((_ is ElementMatch!2093) (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(assert (=> d!261090 (= (validRegex!646 (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) e!550276)))

(declare-fun b!836837 () Bool)

(assert (=> b!836837 (= e!550277 e!550278)))

(declare-fun res!382799 () Bool)

(assert (=> b!836837 (= res!382799 (not (nullable!544 (reg!2422 (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))))

(assert (=> b!836837 (=> (not res!382799) (not e!550278))))

(declare-fun bm!50309 () Bool)

(declare-fun c!136713 () Bool)

(assert (=> bm!50309 (= call!50315 (validRegex!646 (ite c!136714 (reg!2422 (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) (ite c!136713 (regOne!4699 (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) (regTwo!4698 (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177))))))))))

(declare-fun b!836838 () Bool)

(declare-fun res!382798 () Bool)

(assert (=> b!836838 (=> res!382798 e!550279)))

(assert (=> b!836838 (= res!382798 (not ((_ is Concat!3824) (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177))))))))

(assert (=> b!836838 (= e!550275 e!550279)))

(declare-fun b!836839 () Bool)

(assert (=> b!836839 (= e!550277 e!550275)))

(assert (=> b!836839 (= c!136713 ((_ is Union!2093) (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(declare-fun b!836840 () Bool)

(assert (=> b!836840 (= e!550274 call!50316)))

(declare-fun bm!50310 () Bool)

(assert (=> bm!50310 (= call!50316 (validRegex!646 (ite c!136713 (regTwo!4699 (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) (regOne!4698 (ite c!136694 (reg!2422 r!27177) (ite c!136693 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))))

(declare-fun bm!50311 () Bool)

(assert (=> bm!50311 (= call!50314 call!50315)))

(declare-fun b!836841 () Bool)

(assert (=> b!836841 (= e!550273 call!50314)))

(assert (= (and d!261090 (not res!382797)) b!836835))

(assert (= (and b!836835 c!136714) b!836837))

(assert (= (and b!836835 (not c!136714)) b!836839))

(assert (= (and b!836837 res!382799) b!836833))

(assert (= (and b!836839 c!136713) b!836834))

(assert (= (and b!836839 (not c!136713)) b!836838))

(assert (= (and b!836834 res!382800) b!836840))

(assert (= (and b!836838 (not res!382798)) b!836836))

(assert (= (and b!836836 res!382801) b!836841))

(assert (= (or b!836834 b!836841) bm!50311))

(assert (= (or b!836840 b!836836) bm!50310))

(assert (= (or b!836833 bm!50311) bm!50309))

(declare-fun m!1070681 () Bool)

(assert (=> b!836837 m!1070681))

(declare-fun m!1070683 () Bool)

(assert (=> bm!50309 m!1070683))

(declare-fun m!1070685 () Bool)

(assert (=> bm!50310 m!1070685))

(assert (=> bm!50291 d!261090))

(assert (=> d!261038 d!261030))

(assert (=> d!261038 d!261026))

(declare-fun d!261092 () Bool)

(assert (=> d!261092 (contains!1684 (usedCharacters!170 (regOne!4698 r!27177)) c!13916)))

(assert (=> d!261092 true))

(declare-fun _$135!91 () Unit!13391)

(assert (=> d!261092 (= (choose!4939 (regOne!4698 r!27177) c!13916) _$135!91)))

(declare-fun bs!229736 () Bool)

(assert (= bs!229736 d!261092))

(assert (=> bs!229736 m!1070507))

(assert (=> bs!229736 m!1070507))

(assert (=> bs!229736 m!1070509))

(assert (=> d!261038 d!261092))

(assert (=> d!261038 d!261054))

(declare-fun b!836842 () Bool)

(declare-fun e!550285 () Bool)

(declare-fun call!50318 () Bool)

(assert (=> b!836842 (= e!550285 call!50318)))

(declare-fun b!836843 () Bool)

(declare-fun res!382805 () Bool)

(declare-fun e!550281 () Bool)

(assert (=> b!836843 (=> (not res!382805) (not e!550281))))

(declare-fun call!50317 () Bool)

(assert (=> b!836843 (= res!382805 call!50317)))

(declare-fun e!550282 () Bool)

(assert (=> b!836843 (= e!550282 e!550281)))

(declare-fun b!836844 () Bool)

(declare-fun e!550283 () Bool)

(declare-fun e!550284 () Bool)

(assert (=> b!836844 (= e!550283 e!550284)))

(declare-fun c!136717 () Bool)

(assert (=> b!836844 (= c!136717 ((_ is Star!2093) (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))

(declare-fun b!836845 () Bool)

(declare-fun e!550286 () Bool)

(declare-fun e!550280 () Bool)

(assert (=> b!836845 (= e!550286 e!550280)))

(declare-fun res!382806 () Bool)

(assert (=> b!836845 (=> (not res!382806) (not e!550280))))

(declare-fun call!50319 () Bool)

(assert (=> b!836845 (= res!382806 call!50319)))

(declare-fun d!261094 () Bool)

(declare-fun res!382802 () Bool)

(assert (=> d!261094 (=> res!382802 e!550283)))

(assert (=> d!261094 (= res!382802 ((_ is ElementMatch!2093) (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))

(assert (=> d!261094 (= (validRegex!646 (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) e!550283)))

(declare-fun b!836846 () Bool)

(assert (=> b!836846 (= e!550284 e!550285)))

(declare-fun res!382804 () Bool)

(assert (=> b!836846 (= res!382804 (not (nullable!544 (reg!2422 (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))))

(assert (=> b!836846 (=> (not res!382804) (not e!550285))))

(declare-fun bm!50312 () Bool)

(declare-fun c!136716 () Bool)

(assert (=> bm!50312 (= call!50318 (validRegex!646 (ite c!136717 (reg!2422 (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) (ite c!136716 (regOne!4699 (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) (regTwo!4698 (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))))))))

(declare-fun b!836847 () Bool)

(declare-fun res!382803 () Bool)

(assert (=> b!836847 (=> res!382803 e!550286)))

(assert (=> b!836847 (= res!382803 (not ((_ is Concat!3824) (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))))))

(assert (=> b!836847 (= e!550282 e!550286)))

(declare-fun b!836848 () Bool)

(assert (=> b!836848 (= e!550284 e!550282)))

(assert (=> b!836848 (= c!136716 ((_ is Union!2093) (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))

(declare-fun b!836849 () Bool)

(assert (=> b!836849 (= e!550281 call!50319)))

(declare-fun bm!50313 () Bool)

(assert (=> bm!50313 (= call!50319 (validRegex!646 (ite c!136716 (regTwo!4699 (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) (regOne!4698 (ite c!136691 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))))

(declare-fun bm!50314 () Bool)

(assert (=> bm!50314 (= call!50317 call!50318)))

(declare-fun b!836850 () Bool)

(assert (=> b!836850 (= e!550280 call!50317)))

(assert (= (and d!261094 (not res!382802)) b!836844))

(assert (= (and b!836844 c!136717) b!836846))

(assert (= (and b!836844 (not c!136717)) b!836848))

(assert (= (and b!836846 res!382804) b!836842))

(assert (= (and b!836848 c!136716) b!836843))

(assert (= (and b!836848 (not c!136716)) b!836847))

(assert (= (and b!836843 res!382805) b!836849))

(assert (= (and b!836847 (not res!382803)) b!836845))

(assert (= (and b!836845 res!382806) b!836850))

(assert (= (or b!836843 b!836850) bm!50314))

(assert (= (or b!836849 b!836845) bm!50313))

(assert (= (or b!836842 bm!50314) bm!50312))

(declare-fun m!1070687 () Bool)

(assert (=> b!836846 m!1070687))

(declare-fun m!1070689 () Bool)

(assert (=> bm!50312 m!1070689))

(declare-fun m!1070691 () Bool)

(assert (=> bm!50313 m!1070691))

(assert (=> bm!50289 d!261094))

(declare-fun b!836851 () Bool)

(declare-fun e!550288 () List!8919)

(declare-fun call!50321 () List!8919)

(assert (=> b!836851 (= e!550288 call!50321)))

(declare-fun call!50322 () List!8919)

(declare-fun call!50320 () List!8919)

(declare-fun bm!50315 () Bool)

(declare-fun c!136718 () Bool)

(declare-fun call!50323 () List!8919)

(assert (=> bm!50315 (= call!50322 (++!2319 (ite c!136718 call!50323 call!50320) (ite c!136718 call!50320 call!50323)))))

(declare-fun bm!50316 () Bool)

(assert (=> bm!50316 (= call!50320 (usedCharacters!170 (ite c!136718 (regTwo!4699 (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) (regOne!4698 (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))))

(declare-fun e!550287 () List!8919)

(declare-fun b!836852 () Bool)

(assert (=> b!836852 (= e!550287 (Cons!8903 (c!136606 (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) Nil!8903))))

(declare-fun b!836853 () Bool)

(declare-fun e!550290 () List!8919)

(assert (=> b!836853 (= e!550290 e!550287)))

(declare-fun c!136721 () Bool)

(assert (=> b!836853 (= c!136721 ((_ is ElementMatch!2093) (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(declare-fun b!836854 () Bool)

(declare-fun e!550289 () List!8919)

(assert (=> b!836854 (= e!550289 call!50322)))

(declare-fun c!136720 () Bool)

(declare-fun b!836856 () Bool)

(assert (=> b!836856 (= c!136720 ((_ is Star!2093) (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(assert (=> b!836856 (= e!550287 e!550288)))

(declare-fun bm!50317 () Bool)

(assert (=> bm!50317 (= call!50321 (usedCharacters!170 (ite c!136720 (reg!2422 (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) (ite c!136718 (regOne!4699 (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) (regTwo!4698 (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177))))))))))

(declare-fun bm!50318 () Bool)

(assert (=> bm!50318 (= call!50323 call!50321)))

(declare-fun b!836857 () Bool)

(assert (=> b!836857 (= e!550289 call!50322)))

(declare-fun b!836858 () Bool)

(assert (=> b!836858 (= e!550290 Nil!8903)))

(declare-fun b!836855 () Bool)

(assert (=> b!836855 (= e!550288 e!550289)))

(assert (=> b!836855 (= c!136718 ((_ is Union!2093) (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(declare-fun d!261096 () Bool)

(declare-fun c!136719 () Bool)

(assert (=> d!261096 (= c!136719 (or ((_ is EmptyExpr!2093) (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) ((_ is EmptyLang!2093) (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177))))))))

(assert (=> d!261096 (= (usedCharacters!170 (ite c!136627 (reg!2422 r!27177) (ite c!136625 (regOne!4699 r!27177) (regTwo!4698 r!27177)))) e!550290)))

(assert (= (and d!261096 c!136719) b!836858))

(assert (= (and d!261096 (not c!136719)) b!836853))

(assert (= (and b!836853 c!136721) b!836852))

(assert (= (and b!836853 (not c!136721)) b!836856))

(assert (= (and b!836856 c!136720) b!836851))

(assert (= (and b!836856 (not c!136720)) b!836855))

(assert (= (and b!836855 c!136718) b!836857))

(assert (= (and b!836855 (not c!136718)) b!836854))

(assert (= (or b!836857 b!836854) bm!50316))

(assert (= (or b!836857 b!836854) bm!50318))

(assert (= (or b!836857 b!836854) bm!50315))

(assert (= (or b!836851 bm!50318) bm!50317))

(declare-fun m!1070693 () Bool)

(assert (=> bm!50315 m!1070693))

(declare-fun m!1070695 () Bool)

(assert (=> bm!50316 m!1070695))

(declare-fun m!1070697 () Bool)

(assert (=> bm!50317 m!1070697))

(assert (=> bm!50224 d!261096))

(declare-fun c!136723 () Bool)

(declare-fun d!261098 () Bool)

(assert (=> d!261098 (= c!136723 (or ((_ is EmptyExpr!2093) (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))) ((_ is EmptyLang!2093) (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))))

(declare-fun e!550294 () List!8919)

(assert (=> d!261098 (= (firstChars!64 (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))) e!550294)))

(declare-fun c!136725 () Bool)

(declare-fun b!836859 () Bool)

(assert (=> b!836859 (= c!136725 ((_ is Star!2093) (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))))))

(declare-fun e!550291 () List!8919)

(declare-fun e!550292 () List!8919)

(assert (=> b!836859 (= e!550291 e!550292)))

(declare-fun b!836860 () Bool)

(declare-fun e!550295 () List!8919)

(assert (=> b!836860 (= e!550292 e!550295)))

(declare-fun c!136724 () Bool)

(assert (=> b!836860 (= c!136724 ((_ is Union!2093) (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))))))

(declare-fun b!836861 () Bool)

(assert (=> b!836861 (= e!550294 e!550291)))

(declare-fun c!136722 () Bool)

(assert (=> b!836861 (= c!136722 ((_ is ElementMatch!2093) (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))))))

(declare-fun bm!50319 () Bool)

(declare-fun call!50327 () List!8919)

(declare-fun call!50328 () List!8919)

(assert (=> bm!50319 (= call!50327 call!50328)))

(declare-fun c!136726 () Bool)

(declare-fun b!836862 () Bool)

(assert (=> b!836862 (= c!136726 (nullable!544 (regOne!4698 (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))))

(declare-fun e!550293 () List!8919)

(assert (=> b!836862 (= e!550295 e!550293)))

(declare-fun call!50324 () List!8919)

(declare-fun bm!50320 () Bool)

(assert (=> bm!50320 (= call!50324 (firstChars!64 (ite c!136724 (regOne!4699 (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))) (regTwo!4698 (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))))))))

(declare-fun bm!50321 () Bool)

(declare-fun call!50325 () List!8919)

(assert (=> bm!50321 (= call!50328 call!50325)))

(declare-fun bm!50322 () Bool)

(declare-fun call!50326 () List!8919)

(assert (=> bm!50322 (= call!50326 (++!2319 (ite c!136724 call!50324 call!50327) (ite c!136724 call!50328 call!50324)))))

(declare-fun b!836863 () Bool)

(assert (=> b!836863 (= e!550292 call!50325)))

(declare-fun b!836864 () Bool)

(assert (=> b!836864 (= e!550293 call!50327)))

(declare-fun b!836865 () Bool)

(assert (=> b!836865 (= e!550295 call!50326)))

(declare-fun b!836866 () Bool)

(assert (=> b!836866 (= e!550291 (Cons!8903 (c!136606 (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))) Nil!8903))))

(declare-fun b!836867 () Bool)

(assert (=> b!836867 (= e!550293 call!50326)))

(declare-fun bm!50323 () Bool)

(assert (=> bm!50323 (= call!50325 (firstChars!64 (ite c!136725 (reg!2422 (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))) (ite c!136724 (regTwo!4699 (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177)))) (regOne!4698 (ite c!136658 (reg!2422 r!27177) (ite c!136657 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))))))

(declare-fun b!836868 () Bool)

(assert (=> b!836868 (= e!550294 Nil!8903)))

(assert (= (and d!261098 c!136723) b!836868))

(assert (= (and d!261098 (not c!136723)) b!836861))

(assert (= (and b!836861 c!136722) b!836866))

(assert (= (and b!836861 (not c!136722)) b!836859))

(assert (= (and b!836859 c!136725) b!836863))

(assert (= (and b!836859 (not c!136725)) b!836860))

(assert (= (and b!836860 c!136724) b!836865))

(assert (= (and b!836860 (not c!136724)) b!836862))

(assert (= (and b!836862 c!136726) b!836867))

(assert (= (and b!836862 (not c!136726)) b!836864))

(assert (= (or b!836867 b!836864) bm!50319))

(assert (= (or b!836865 bm!50319) bm!50321))

(assert (= (or b!836865 b!836867) bm!50320))

(assert (= (or b!836865 b!836867) bm!50322))

(assert (= (or b!836863 bm!50321) bm!50323))

(declare-fun m!1070699 () Bool)

(assert (=> b!836862 m!1070699))

(declare-fun m!1070701 () Bool)

(assert (=> bm!50320 m!1070701))

(declare-fun m!1070703 () Bool)

(assert (=> bm!50322 m!1070703))

(declare-fun m!1070705 () Bool)

(assert (=> bm!50323 m!1070705))

(assert (=> bm!50255 d!261098))

(declare-fun d!261100 () Bool)

(assert (=> d!261100 (= (nullable!544 (reg!2422 (regOne!4698 r!27177))) (nullableFct!181 (reg!2422 (regOne!4698 r!27177))))))

(declare-fun bs!229737 () Bool)

(assert (= bs!229737 d!261100))

(declare-fun m!1070707 () Bool)

(assert (=> bs!229737 m!1070707))

(assert (=> b!836713 d!261100))

(declare-fun b!836879 () Bool)

(declare-fun res!382811 () Bool)

(declare-fun e!550300 () Bool)

(assert (=> b!836879 (=> (not res!382811) (not e!550300))))

(declare-fun lt!317970 () List!8919)

(declare-fun size!7491 (List!8919) Int)

(assert (=> b!836879 (= res!382811 (= (size!7491 lt!317970) (+ (size!7491 (ite c!136657 call!50256 call!50259)) (size!7491 (ite c!136657 call!50260 call!50256)))))))

(declare-fun d!261102 () Bool)

(assert (=> d!261102 e!550300))

(declare-fun res!382812 () Bool)

(assert (=> d!261102 (=> (not res!382812) (not e!550300))))

(assert (=> d!261102 (= res!382812 (= (content!1331 lt!317970) ((_ map or) (content!1331 (ite c!136657 call!50256 call!50259)) (content!1331 (ite c!136657 call!50260 call!50256)))))))

(declare-fun e!550301 () List!8919)

(assert (=> d!261102 (= lt!317970 e!550301)))

(declare-fun c!136729 () Bool)

(assert (=> d!261102 (= c!136729 ((_ is Nil!8903) (ite c!136657 call!50256 call!50259)))))

(assert (=> d!261102 (= (++!2319 (ite c!136657 call!50256 call!50259) (ite c!136657 call!50260 call!50256)) lt!317970)))

(declare-fun b!836877 () Bool)

(assert (=> b!836877 (= e!550301 (ite c!136657 call!50260 call!50256))))

(declare-fun b!836880 () Bool)

(assert (=> b!836880 (= e!550300 (or (not (= (ite c!136657 call!50260 call!50256) Nil!8903)) (= lt!317970 (ite c!136657 call!50256 call!50259))))))

(declare-fun b!836878 () Bool)

(assert (=> b!836878 (= e!550301 (Cons!8903 (h!14304 (ite c!136657 call!50256 call!50259)) (++!2319 (t!93211 (ite c!136657 call!50256 call!50259)) (ite c!136657 call!50260 call!50256))))))

(assert (= (and d!261102 c!136729) b!836877))

(assert (= (and d!261102 (not c!136729)) b!836878))

(assert (= (and d!261102 res!382812) b!836879))

(assert (= (and b!836879 res!382811) b!836880))

(declare-fun m!1070709 () Bool)

(assert (=> b!836879 m!1070709))

(declare-fun m!1070711 () Bool)

(assert (=> b!836879 m!1070711))

(declare-fun m!1070713 () Bool)

(assert (=> b!836879 m!1070713))

(declare-fun m!1070715 () Bool)

(assert (=> d!261102 m!1070715))

(declare-fun m!1070717 () Bool)

(assert (=> d!261102 m!1070717))

(declare-fun m!1070719 () Bool)

(assert (=> d!261102 m!1070719))

(declare-fun m!1070721 () Bool)

(assert (=> b!836878 m!1070721))

(assert (=> bm!50254 d!261102))

(declare-fun d!261104 () Bool)

(declare-fun c!136730 () Bool)

(assert (=> d!261104 (= c!136730 ((_ is Nil!8903) (usedCharacters!170 (regOne!4698 r!27177))))))

(declare-fun e!550302 () (InoxSet C!4756))

(assert (=> d!261104 (= (content!1331 (usedCharacters!170 (regOne!4698 r!27177))) e!550302)))

(declare-fun b!836881 () Bool)

(assert (=> b!836881 (= e!550302 ((as const (Array C!4756 Bool)) false))))

(declare-fun b!836882 () Bool)

(assert (=> b!836882 (= e!550302 ((_ map or) (store ((as const (Array C!4756 Bool)) false) (h!14304 (usedCharacters!170 (regOne!4698 r!27177))) true) (content!1331 (t!93211 (usedCharacters!170 (regOne!4698 r!27177))))))))

(assert (= (and d!261104 c!136730) b!836881))

(assert (= (and d!261104 (not c!136730)) b!836882))

(declare-fun m!1070723 () Bool)

(assert (=> b!836882 m!1070723))

(declare-fun m!1070725 () Bool)

(assert (=> b!836882 m!1070725))

(assert (=> d!261030 d!261104))

(declare-fun b!836883 () Bool)

(declare-fun e!550304 () List!8919)

(declare-fun call!50330 () List!8919)

(assert (=> b!836883 (= e!550304 call!50330)))

(declare-fun bm!50324 () Bool)

(declare-fun call!50329 () List!8919)

(declare-fun call!50332 () List!8919)

(declare-fun c!136731 () Bool)

(declare-fun call!50331 () List!8919)

(assert (=> bm!50324 (= call!50331 (++!2319 (ite c!136731 call!50332 call!50329) (ite c!136731 call!50329 call!50332)))))

(declare-fun bm!50325 () Bool)

(assert (=> bm!50325 (= call!50329 (usedCharacters!170 (ite c!136731 (regTwo!4699 (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))) (regOne!4698 (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))))

(declare-fun b!836884 () Bool)

(declare-fun e!550303 () List!8919)

(assert (=> b!836884 (= e!550303 (Cons!8903 (c!136606 (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))) Nil!8903))))

(declare-fun b!836885 () Bool)

(declare-fun e!550306 () List!8919)

(assert (=> b!836885 (= e!550306 e!550303)))

(declare-fun c!136734 () Bool)

(assert (=> b!836885 (= c!136734 ((_ is ElementMatch!2093) (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))

(declare-fun b!836886 () Bool)

(declare-fun e!550305 () List!8919)

(assert (=> b!836886 (= e!550305 call!50331)))

(declare-fun b!836888 () Bool)

(declare-fun c!136733 () Bool)

(assert (=> b!836888 (= c!136733 ((_ is Star!2093) (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))

(assert (=> b!836888 (= e!550303 e!550304)))

(declare-fun bm!50326 () Bool)

(assert (=> bm!50326 (= call!50330 (usedCharacters!170 (ite c!136733 (reg!2422 (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))) (ite c!136731 (regOne!4699 (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))) (regTwo!4698 (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177)))))))))

(declare-fun bm!50327 () Bool)

(assert (=> bm!50327 (= call!50332 call!50330)))

(declare-fun b!836889 () Bool)

(assert (=> b!836889 (= e!550305 call!50331)))

(declare-fun b!836890 () Bool)

(assert (=> b!836890 (= e!550306 Nil!8903)))

(declare-fun b!836887 () Bool)

(assert (=> b!836887 (= e!550304 e!550305)))

(assert (=> b!836887 (= c!136731 ((_ is Union!2093) (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))))))

(declare-fun d!261106 () Bool)

(declare-fun c!136732 () Bool)

(assert (=> d!261106 (= c!136732 (or ((_ is EmptyExpr!2093) (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))) ((_ is EmptyLang!2093) (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177)))))))

(assert (=> d!261106 (= (usedCharacters!170 (ite c!136625 (regTwo!4699 r!27177) (regOne!4698 r!27177))) e!550306)))

(assert (= (and d!261106 c!136732) b!836890))

(assert (= (and d!261106 (not c!136732)) b!836885))

(assert (= (and b!836885 c!136734) b!836884))

(assert (= (and b!836885 (not c!136734)) b!836888))

(assert (= (and b!836888 c!136733) b!836883))

(assert (= (and b!836888 (not c!136733)) b!836887))

(assert (= (and b!836887 c!136731) b!836889))

(assert (= (and b!836887 (not c!136731)) b!836886))

(assert (= (or b!836889 b!836886) bm!50325))

(assert (= (or b!836889 b!836886) bm!50327))

(assert (= (or b!836889 b!836886) bm!50324))

(assert (= (or b!836883 bm!50327) bm!50326))

(declare-fun m!1070727 () Bool)

(assert (=> bm!50324 m!1070727))

(declare-fun m!1070729 () Bool)

(assert (=> bm!50325 m!1070729))

(declare-fun m!1070731 () Bool)

(assert (=> bm!50326 m!1070731))

(assert (=> bm!50223 d!261106))

(declare-fun d!261108 () Bool)

(declare-fun c!136736 () Bool)

(assert (=> d!261108 (= c!136736 (or ((_ is EmptyExpr!2093) (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))) ((_ is EmptyLang!2093) (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(declare-fun e!550310 () List!8919)

(assert (=> d!261108 (= (firstChars!64 (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))) e!550310)))

(declare-fun b!836891 () Bool)

(declare-fun c!136738 () Bool)

(assert (=> b!836891 (= c!136738 ((_ is Star!2093) (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))))))

(declare-fun e!550307 () List!8919)

(declare-fun e!550308 () List!8919)

(assert (=> b!836891 (= e!550307 e!550308)))

(declare-fun b!836892 () Bool)

(declare-fun e!550311 () List!8919)

(assert (=> b!836892 (= e!550308 e!550311)))

(declare-fun c!136737 () Bool)

(assert (=> b!836892 (= c!136737 ((_ is Union!2093) (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))))))

(declare-fun b!836893 () Bool)

(assert (=> b!836893 (= e!550310 e!550307)))

(declare-fun c!136735 () Bool)

(assert (=> b!836893 (= c!136735 ((_ is ElementMatch!2093) (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))))))

(declare-fun bm!50328 () Bool)

(declare-fun call!50336 () List!8919)

(declare-fun call!50337 () List!8919)

(assert (=> bm!50328 (= call!50336 call!50337)))

(declare-fun b!836894 () Bool)

(declare-fun c!136739 () Bool)

(assert (=> b!836894 (= c!136739 (nullable!544 (regOne!4698 (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))

(declare-fun e!550309 () List!8919)

(assert (=> b!836894 (= e!550311 e!550309)))

(declare-fun call!50333 () List!8919)

(declare-fun bm!50329 () Bool)

(assert (=> bm!50329 (= call!50333 (firstChars!64 (ite c!136737 (regOne!4699 (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))) (regTwo!4698 (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))))))))

(declare-fun bm!50330 () Bool)

(declare-fun call!50334 () List!8919)

(assert (=> bm!50330 (= call!50337 call!50334)))

(declare-fun bm!50331 () Bool)

(declare-fun call!50335 () List!8919)

(assert (=> bm!50331 (= call!50335 (++!2319 (ite c!136737 call!50333 call!50336) (ite c!136737 call!50337 call!50333)))))

(declare-fun b!836895 () Bool)

(assert (=> b!836895 (= e!550308 call!50334)))

(declare-fun b!836896 () Bool)

(assert (=> b!836896 (= e!550309 call!50336)))

(declare-fun b!836897 () Bool)

(assert (=> b!836897 (= e!550311 call!50335)))

(declare-fun b!836898 () Bool)

(assert (=> b!836898 (= e!550307 (Cons!8903 (c!136606 (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))) Nil!8903))))

(declare-fun b!836899 () Bool)

(assert (=> b!836899 (= e!550309 call!50335)))

(declare-fun bm!50332 () Bool)

(assert (=> bm!50332 (= call!50334 (firstChars!64 (ite c!136738 (reg!2422 (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))) (ite c!136737 (regTwo!4699 (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177))) (regOne!4698 (ite c!136657 (regOne!4699 r!27177) (regTwo!4698 r!27177)))))))))

(declare-fun b!836900 () Bool)

(assert (=> b!836900 (= e!550310 Nil!8903)))

(assert (= (and d!261108 c!136736) b!836900))

(assert (= (and d!261108 (not c!136736)) b!836893))

(assert (= (and b!836893 c!136735) b!836898))

(assert (= (and b!836893 (not c!136735)) b!836891))

(assert (= (and b!836891 c!136738) b!836895))

(assert (= (and b!836891 (not c!136738)) b!836892))

(assert (= (and b!836892 c!136737) b!836897))

(assert (= (and b!836892 (not c!136737)) b!836894))

(assert (= (and b!836894 c!136739) b!836899))

(assert (= (and b!836894 (not c!136739)) b!836896))

(assert (= (or b!836899 b!836896) bm!50328))

(assert (= (or b!836897 bm!50328) bm!50330))

(assert (= (or b!836897 b!836899) bm!50329))

(assert (= (or b!836897 b!836899) bm!50331))

(assert (= (or b!836895 bm!50330) bm!50332))

(declare-fun m!1070733 () Bool)

(assert (=> b!836894 m!1070733))

(declare-fun m!1070735 () Bool)

(assert (=> bm!50329 m!1070735))

(declare-fun m!1070737 () Bool)

(assert (=> bm!50331 m!1070737))

(declare-fun m!1070739 () Bool)

(assert (=> bm!50332 m!1070739))

(assert (=> bm!50252 d!261108))

(declare-fun b!836901 () Bool)

(declare-fun e!550313 () List!8919)

(declare-fun call!50339 () List!8919)

(assert (=> b!836901 (= e!550313 call!50339)))

(declare-fun call!50338 () List!8919)

(declare-fun call!50341 () List!8919)

(declare-fun call!50340 () List!8919)

(declare-fun c!136740 () Bool)

(declare-fun bm!50333 () Bool)

(assert (=> bm!50333 (= call!50340 (++!2319 (ite c!136740 call!50341 call!50338) (ite c!136740 call!50338 call!50341)))))

(declare-fun bm!50334 () Bool)

(assert (=> bm!50334 (= call!50338 (usedCharacters!170 (ite c!136740 (regTwo!4699 (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) (regOne!4698 (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))))

(declare-fun b!836902 () Bool)

(declare-fun e!550312 () List!8919)

(assert (=> b!836902 (= e!550312 (Cons!8903 (c!136606 (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) Nil!8903))))

(declare-fun b!836903 () Bool)

(declare-fun e!550315 () List!8919)

(assert (=> b!836903 (= e!550315 e!550312)))

(declare-fun c!136743 () Bool)

(assert (=> b!836903 (= c!136743 ((_ is ElementMatch!2093) (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))

(declare-fun b!836904 () Bool)

(declare-fun e!550314 () List!8919)

(assert (=> b!836904 (= e!550314 call!50340)))

(declare-fun b!836906 () Bool)

(declare-fun c!136742 () Bool)

(assert (=> b!836906 (= c!136742 ((_ is Star!2093) (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))

(assert (=> b!836906 (= e!550312 e!550313)))

(declare-fun bm!50335 () Bool)

(assert (=> bm!50335 (= call!50339 (usedCharacters!170 (ite c!136742 (reg!2422 (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) (ite c!136740 (regOne!4699 (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) (regTwo!4698 (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))))))))

(declare-fun bm!50336 () Bool)

(assert (=> bm!50336 (= call!50341 call!50339)))

(declare-fun b!836907 () Bool)

(assert (=> b!836907 (= e!550314 call!50340)))

(declare-fun b!836908 () Bool)

(assert (=> b!836908 (= e!550315 Nil!8903)))

(declare-fun b!836905 () Bool)

(assert (=> b!836905 (= e!550313 e!550314)))

(assert (=> b!836905 (= c!136740 ((_ is Union!2093) (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))

(declare-fun d!261110 () Bool)

(declare-fun c!136741 () Bool)

(assert (=> d!261110 (= c!136741 (or ((_ is EmptyExpr!2093) (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) ((_ is EmptyLang!2093) (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))))))

(assert (=> d!261110 (= (usedCharacters!170 (ite c!136619 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))) e!550315)))

(assert (= (and d!261110 c!136741) b!836908))

(assert (= (and d!261110 (not c!136741)) b!836903))

(assert (= (and b!836903 c!136743) b!836902))

(assert (= (and b!836903 (not c!136743)) b!836906))

(assert (= (and b!836906 c!136742) b!836901))

(assert (= (and b!836906 (not c!136742)) b!836905))

(assert (= (and b!836905 c!136740) b!836907))

(assert (= (and b!836905 (not c!136740)) b!836904))

(assert (= (or b!836907 b!836904) bm!50334))

(assert (= (or b!836907 b!836904) bm!50336))

(assert (= (or b!836907 b!836904) bm!50333))

(assert (= (or b!836901 bm!50336) bm!50335))

(declare-fun m!1070741 () Bool)

(assert (=> bm!50333 m!1070741))

(declare-fun m!1070743 () Bool)

(assert (=> bm!50334 m!1070743))

(declare-fun m!1070745 () Bool)

(assert (=> bm!50335 m!1070745))

(assert (=> bm!50216 d!261110))

(declare-fun b!836911 () Bool)

(declare-fun res!382813 () Bool)

(declare-fun e!550316 () Bool)

(assert (=> b!836911 (=> (not res!382813) (not e!550316))))

(declare-fun lt!317971 () List!8919)

(assert (=> b!836911 (= res!382813 (= (size!7491 lt!317971) (+ (size!7491 (ite c!136619 call!50223 call!50220)) (size!7491 (ite c!136619 call!50220 call!50223)))))))

(declare-fun d!261112 () Bool)

(assert (=> d!261112 e!550316))

(declare-fun res!382814 () Bool)

(assert (=> d!261112 (=> (not res!382814) (not e!550316))))

(assert (=> d!261112 (= res!382814 (= (content!1331 lt!317971) ((_ map or) (content!1331 (ite c!136619 call!50223 call!50220)) (content!1331 (ite c!136619 call!50220 call!50223)))))))

(declare-fun e!550317 () List!8919)

(assert (=> d!261112 (= lt!317971 e!550317)))

(declare-fun c!136744 () Bool)

(assert (=> d!261112 (= c!136744 ((_ is Nil!8903) (ite c!136619 call!50223 call!50220)))))

(assert (=> d!261112 (= (++!2319 (ite c!136619 call!50223 call!50220) (ite c!136619 call!50220 call!50223)) lt!317971)))

(declare-fun b!836909 () Bool)

(assert (=> b!836909 (= e!550317 (ite c!136619 call!50220 call!50223))))

(declare-fun b!836912 () Bool)

(assert (=> b!836912 (= e!550316 (or (not (= (ite c!136619 call!50220 call!50223) Nil!8903)) (= lt!317971 (ite c!136619 call!50223 call!50220))))))

(declare-fun b!836910 () Bool)

(assert (=> b!836910 (= e!550317 (Cons!8903 (h!14304 (ite c!136619 call!50223 call!50220)) (++!2319 (t!93211 (ite c!136619 call!50223 call!50220)) (ite c!136619 call!50220 call!50223))))))

(assert (= (and d!261112 c!136744) b!836909))

(assert (= (and d!261112 (not c!136744)) b!836910))

(assert (= (and d!261112 res!382814) b!836911))

(assert (= (and b!836911 res!382813) b!836912))

(declare-fun m!1070747 () Bool)

(assert (=> b!836911 m!1070747))

(declare-fun m!1070749 () Bool)

(assert (=> b!836911 m!1070749))

(declare-fun m!1070751 () Bool)

(assert (=> b!836911 m!1070751))

(declare-fun m!1070753 () Bool)

(assert (=> d!261112 m!1070753))

(declare-fun m!1070755 () Bool)

(assert (=> d!261112 m!1070755))

(declare-fun m!1070757 () Bool)

(assert (=> d!261112 m!1070757))

(declare-fun m!1070759 () Bool)

(assert (=> b!836910 m!1070759))

(assert (=> bm!50215 d!261112))

(declare-fun d!261114 () Bool)

(declare-fun lt!317972 () Bool)

(assert (=> d!261114 (= lt!317972 (select (content!1331 (t!93211 (firstChars!64 (regOne!4698 r!27177)))) c!13916))))

(declare-fun e!550318 () Bool)

(assert (=> d!261114 (= lt!317972 e!550318)))

(declare-fun res!382815 () Bool)

(assert (=> d!261114 (=> (not res!382815) (not e!550318))))

(assert (=> d!261114 (= res!382815 ((_ is Cons!8903) (t!93211 (firstChars!64 (regOne!4698 r!27177)))))))

(assert (=> d!261114 (= (contains!1684 (t!93211 (firstChars!64 (regOne!4698 r!27177))) c!13916) lt!317972)))

(declare-fun b!836913 () Bool)

(declare-fun e!550319 () Bool)

(assert (=> b!836913 (= e!550318 e!550319)))

(declare-fun res!382816 () Bool)

(assert (=> b!836913 (=> res!382816 e!550319)))

(assert (=> b!836913 (= res!382816 (= (h!14304 (t!93211 (firstChars!64 (regOne!4698 r!27177)))) c!13916))))

(declare-fun b!836914 () Bool)

(assert (=> b!836914 (= e!550319 (contains!1684 (t!93211 (t!93211 (firstChars!64 (regOne!4698 r!27177)))) c!13916))))

(assert (= (and d!261114 res!382815) b!836913))

(assert (= (and b!836913 (not res!382816)) b!836914))

(assert (=> d!261114 m!1070667))

(declare-fun m!1070761 () Bool)

(assert (=> d!261114 m!1070761))

(declare-fun m!1070763 () Bool)

(assert (=> b!836914 m!1070763))

(assert (=> b!836648 d!261114))

(declare-fun b!836915 () Bool)

(declare-fun e!550325 () Bool)

(declare-fun call!50343 () Bool)

(assert (=> b!836915 (= e!550325 call!50343)))

(declare-fun b!836916 () Bool)

(declare-fun res!382820 () Bool)

(declare-fun e!550321 () Bool)

(assert (=> b!836916 (=> (not res!382820) (not e!550321))))

(declare-fun call!50342 () Bool)

(assert (=> b!836916 (= res!382820 call!50342)))

(declare-fun e!550322 () Bool)

(assert (=> b!836916 (= e!550322 e!550321)))

(declare-fun b!836917 () Bool)

(declare-fun e!550323 () Bool)

(declare-fun e!550324 () Bool)

(assert (=> b!836917 (= e!550323 e!550324)))

(declare-fun c!136746 () Bool)

(assert (=> b!836917 (= c!136746 ((_ is Star!2093) (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(declare-fun b!836918 () Bool)

(declare-fun e!550326 () Bool)

(declare-fun e!550320 () Bool)

(assert (=> b!836918 (= e!550326 e!550320)))

(declare-fun res!382821 () Bool)

(assert (=> b!836918 (=> (not res!382821) (not e!550320))))

(declare-fun call!50344 () Bool)

(assert (=> b!836918 (= res!382821 call!50344)))

(declare-fun d!261116 () Bool)

(declare-fun res!382817 () Bool)

(assert (=> d!261116 (=> res!382817 e!550323)))

(assert (=> d!261116 (= res!382817 ((_ is ElementMatch!2093) (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(assert (=> d!261116 (= (validRegex!646 (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) e!550323)))

(declare-fun b!836919 () Bool)

(assert (=> b!836919 (= e!550324 e!550325)))

(declare-fun res!382819 () Bool)

(assert (=> b!836919 (= res!382819 (not (nullable!544 (reg!2422 (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))))

(assert (=> b!836919 (=> (not res!382819) (not e!550325))))

(declare-fun c!136745 () Bool)

(declare-fun bm!50337 () Bool)

(assert (=> bm!50337 (= call!50343 (validRegex!646 (ite c!136746 (reg!2422 (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) (ite c!136745 (regOne!4699 (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) (regTwo!4698 (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))))))

(declare-fun b!836920 () Bool)

(declare-fun res!382818 () Bool)

(assert (=> b!836920 (=> res!382818 e!550326)))

(assert (=> b!836920 (= res!382818 (not ((_ is Concat!3824) (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))))

(assert (=> b!836920 (= e!550322 e!550326)))

(declare-fun b!836921 () Bool)

(assert (=> b!836921 (= e!550324 e!550322)))

(assert (=> b!836921 (= c!136745 ((_ is Union!2093) (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))

(declare-fun b!836922 () Bool)

(assert (=> b!836922 (= e!550321 call!50344)))

(declare-fun bm!50338 () Bool)

(assert (=> bm!50338 (= call!50344 (validRegex!646 (ite c!136745 (regTwo!4699 (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))) (regOne!4698 (ite c!136692 (reg!2422 (regOne!4698 r!27177)) (ite c!136691 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177))))))))))

(declare-fun bm!50339 () Bool)

(assert (=> bm!50339 (= call!50342 call!50343)))

(declare-fun b!836923 () Bool)

(assert (=> b!836923 (= e!550320 call!50342)))

(assert (= (and d!261116 (not res!382817)) b!836917))

(assert (= (and b!836917 c!136746) b!836919))

(assert (= (and b!836917 (not c!136746)) b!836921))

(assert (= (and b!836919 res!382819) b!836915))

(assert (= (and b!836921 c!136745) b!836916))

(assert (= (and b!836921 (not c!136745)) b!836920))

(assert (= (and b!836916 res!382820) b!836922))

(assert (= (and b!836920 (not res!382818)) b!836918))

(assert (= (and b!836918 res!382821) b!836923))

(assert (= (or b!836916 b!836923) bm!50339))

(assert (= (or b!836922 b!836918) bm!50338))

(assert (= (or b!836915 bm!50339) bm!50337))

(declare-fun m!1070765 () Bool)

(assert (=> b!836919 m!1070765))

(declare-fun m!1070767 () Bool)

(assert (=> bm!50337 m!1070767))

(declare-fun m!1070769 () Bool)

(assert (=> bm!50338 m!1070769))

(assert (=> bm!50288 d!261116))

(declare-fun d!261118 () Bool)

(declare-fun c!136748 () Bool)

(assert (=> d!261118 (= c!136748 (or ((_ is EmptyExpr!2093) (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))) ((_ is EmptyLang!2093) (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))))

(declare-fun e!550330 () List!8919)

(assert (=> d!261118 (= (firstChars!64 (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))) e!550330)))

(declare-fun b!836924 () Bool)

(declare-fun c!136750 () Bool)

(assert (=> b!836924 (= c!136750 ((_ is Star!2093) (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))))))

(declare-fun e!550327 () List!8919)

(declare-fun e!550328 () List!8919)

(assert (=> b!836924 (= e!550327 e!550328)))

(declare-fun b!836925 () Bool)

(declare-fun e!550331 () List!8919)

(assert (=> b!836925 (= e!550328 e!550331)))

(declare-fun c!136749 () Bool)

(assert (=> b!836925 (= c!136749 ((_ is Union!2093) (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))))))

(declare-fun b!836926 () Bool)

(assert (=> b!836926 (= e!550330 e!550327)))

(declare-fun c!136747 () Bool)

(assert (=> b!836926 (= c!136747 ((_ is ElementMatch!2093) (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))))))

(declare-fun bm!50340 () Bool)

(declare-fun call!50348 () List!8919)

(declare-fun call!50349 () List!8919)

(assert (=> bm!50340 (= call!50348 call!50349)))

(declare-fun c!136751 () Bool)

(declare-fun b!836927 () Bool)

(assert (=> b!836927 (= c!136751 (nullable!544 (regOne!4698 (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))))

(declare-fun e!550329 () List!8919)

(assert (=> b!836927 (= e!550331 e!550329)))

(declare-fun bm!50341 () Bool)

(declare-fun call!50345 () List!8919)

(assert (=> bm!50341 (= call!50345 (firstChars!64 (ite c!136749 (regOne!4699 (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))) (regTwo!4698 (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))))))))

(declare-fun bm!50342 () Bool)

(declare-fun call!50346 () List!8919)

(assert (=> bm!50342 (= call!50349 call!50346)))

(declare-fun call!50347 () List!8919)

(declare-fun bm!50343 () Bool)

(assert (=> bm!50343 (= call!50347 (++!2319 (ite c!136749 call!50345 call!50348) (ite c!136749 call!50349 call!50345)))))

(declare-fun b!836928 () Bool)

(assert (=> b!836928 (= e!550328 call!50346)))

(declare-fun b!836929 () Bool)

(assert (=> b!836929 (= e!550329 call!50348)))

(declare-fun b!836930 () Bool)

(assert (=> b!836930 (= e!550331 call!50347)))

(declare-fun b!836931 () Bool)

(assert (=> b!836931 (= e!550327 (Cons!8903 (c!136606 (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))) Nil!8903))))

(declare-fun b!836932 () Bool)

(assert (=> b!836932 (= e!550329 call!50347)))

(declare-fun bm!50344 () Bool)

(assert (=> bm!50344 (= call!50346 (firstChars!64 (ite c!136750 (reg!2422 (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))) (ite c!136749 (regTwo!4699 (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177))))) (regOne!4698 (ite c!136671 (reg!2422 (regOne!4698 r!27177)) (ite c!136670 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))))))

(declare-fun b!836933 () Bool)

(assert (=> b!836933 (= e!550330 Nil!8903)))

(assert (= (and d!261118 c!136748) b!836933))

(assert (= (and d!261118 (not c!136748)) b!836926))

(assert (= (and b!836926 c!136747) b!836931))

(assert (= (and b!836926 (not c!136747)) b!836924))

(assert (= (and b!836924 c!136750) b!836928))

(assert (= (and b!836924 (not c!136750)) b!836925))

(assert (= (and b!836925 c!136749) b!836930))

(assert (= (and b!836925 (not c!136749)) b!836927))

(assert (= (and b!836927 c!136751) b!836932))

(assert (= (and b!836927 (not c!136751)) b!836929))

(assert (= (or b!836932 b!836929) bm!50340))

(assert (= (or b!836930 bm!50340) bm!50342))

(assert (= (or b!836930 b!836932) bm!50341))

(assert (= (or b!836930 b!836932) bm!50343))

(assert (= (or b!836928 bm!50342) bm!50344))

(declare-fun m!1070771 () Bool)

(assert (=> b!836927 m!1070771))

(declare-fun m!1070773 () Bool)

(assert (=> bm!50341 m!1070773))

(declare-fun m!1070775 () Bool)

(assert (=> bm!50343 m!1070775))

(declare-fun m!1070777 () Bool)

(assert (=> bm!50344 m!1070777))

(assert (=> bm!50266 d!261118))

(declare-fun b!836962 () Bool)

(declare-fun e!550351 () Bool)

(declare-fun e!550355 () Bool)

(assert (=> b!836962 (= e!550351 e!550355)))

(declare-fun res!382835 () Bool)

(declare-fun call!50359 () Bool)

(assert (=> b!836962 (= res!382835 call!50359)))

(assert (=> b!836962 (=> res!382835 e!550355)))

(declare-fun d!261120 () Bool)

(declare-fun res!382834 () Bool)

(declare-fun e!550356 () Bool)

(assert (=> d!261120 (=> res!382834 e!550356)))

(assert (=> d!261120 (= res!382834 ((_ is EmptyExpr!2093) (regOne!4698 r!27177)))))

(assert (=> d!261120 (= (nullableFct!181 (regOne!4698 r!27177)) e!550356)))

(declare-fun b!836963 () Bool)

(declare-fun e!550352 () Bool)

(assert (=> b!836963 (= e!550356 e!550352)))

(declare-fun res!382836 () Bool)

(assert (=> b!836963 (=> (not res!382836) (not e!550352))))

(assert (=> b!836963 (= res!382836 (and (not ((_ is EmptyLang!2093) (regOne!4698 r!27177))) (not ((_ is ElementMatch!2093) (regOne!4698 r!27177)))))))

(declare-fun b!836964 () Bool)

(declare-fun call!50360 () Bool)

(assert (=> b!836964 (= e!550355 call!50360)))

(declare-fun b!836965 () Bool)

(declare-fun e!550354 () Bool)

(assert (=> b!836965 (= e!550354 e!550351)))

(declare-fun c!136761 () Bool)

(assert (=> b!836965 (= c!136761 ((_ is Union!2093) (regOne!4698 r!27177)))))

(declare-fun b!836966 () Bool)

(declare-fun e!550353 () Bool)

(assert (=> b!836966 (= e!550353 call!50359)))

(declare-fun b!836967 () Bool)

(assert (=> b!836967 (= e!550351 e!550353)))

(declare-fun res!382832 () Bool)

(assert (=> b!836967 (= res!382832 call!50360)))

(assert (=> b!836967 (=> (not res!382832) (not e!550353))))

(declare-fun b!836968 () Bool)

(assert (=> b!836968 (= e!550352 e!550354)))

(declare-fun res!382833 () Bool)

(assert (=> b!836968 (=> res!382833 e!550354)))

(assert (=> b!836968 (= res!382833 ((_ is Star!2093) (regOne!4698 r!27177)))))

(declare-fun bm!50354 () Bool)

(assert (=> bm!50354 (= call!50360 (nullable!544 (ite c!136761 (regTwo!4699 (regOne!4698 r!27177)) (regOne!4698 (regOne!4698 r!27177)))))))

(declare-fun bm!50355 () Bool)

(assert (=> bm!50355 (= call!50359 (nullable!544 (ite c!136761 (regOne!4699 (regOne!4698 r!27177)) (regTwo!4698 (regOne!4698 r!27177)))))))

(assert (= (and d!261120 (not res!382834)) b!836963))

(assert (= (and b!836963 res!382836) b!836968))

(assert (= (and b!836968 (not res!382833)) b!836965))

(assert (= (and b!836965 c!136761) b!836962))

(assert (= (and b!836965 (not c!136761)) b!836967))

(assert (= (and b!836962 (not res!382835)) b!836964))

(assert (= (and b!836967 res!382832) b!836966))

(assert (= (or b!836962 b!836966) bm!50355))

(assert (= (or b!836964 b!836967) bm!50354))

(declare-fun m!1070787 () Bool)

(assert (=> bm!50354 m!1070787))

(declare-fun m!1070789 () Bool)

(assert (=> bm!50355 m!1070789))

(assert (=> d!261052 d!261120))

(declare-fun b!836971 () Bool)

(declare-fun res!382837 () Bool)

(declare-fun e!550357 () Bool)

(assert (=> b!836971 (=> (not res!382837) (not e!550357))))

(declare-fun lt!317973 () List!8919)

(assert (=> b!836971 (= res!382837 (= (size!7491 lt!317973) (+ (size!7491 (ite c!136670 call!50267 call!50270)) (size!7491 (ite c!136670 call!50271 call!50267)))))))

(declare-fun d!261126 () Bool)

(assert (=> d!261126 e!550357))

(declare-fun res!382838 () Bool)

(assert (=> d!261126 (=> (not res!382838) (not e!550357))))

(assert (=> d!261126 (= res!382838 (= (content!1331 lt!317973) ((_ map or) (content!1331 (ite c!136670 call!50267 call!50270)) (content!1331 (ite c!136670 call!50271 call!50267)))))))

(declare-fun e!550358 () List!8919)

(assert (=> d!261126 (= lt!317973 e!550358)))

(declare-fun c!136762 () Bool)

(assert (=> d!261126 (= c!136762 ((_ is Nil!8903) (ite c!136670 call!50267 call!50270)))))

(assert (=> d!261126 (= (++!2319 (ite c!136670 call!50267 call!50270) (ite c!136670 call!50271 call!50267)) lt!317973)))

(declare-fun b!836969 () Bool)

(assert (=> b!836969 (= e!550358 (ite c!136670 call!50271 call!50267))))

(declare-fun b!836972 () Bool)

(assert (=> b!836972 (= e!550357 (or (not (= (ite c!136670 call!50271 call!50267) Nil!8903)) (= lt!317973 (ite c!136670 call!50267 call!50270))))))

(declare-fun b!836970 () Bool)

(assert (=> b!836970 (= e!550358 (Cons!8903 (h!14304 (ite c!136670 call!50267 call!50270)) (++!2319 (t!93211 (ite c!136670 call!50267 call!50270)) (ite c!136670 call!50271 call!50267))))))

(assert (= (and d!261126 c!136762) b!836969))

(assert (= (and d!261126 (not c!136762)) b!836970))

(assert (= (and d!261126 res!382838) b!836971))

(assert (= (and b!836971 res!382837) b!836972))

(declare-fun m!1070791 () Bool)

(assert (=> b!836971 m!1070791))

(declare-fun m!1070793 () Bool)

(assert (=> b!836971 m!1070793))

(declare-fun m!1070797 () Bool)

(assert (=> b!836971 m!1070797))

(declare-fun m!1070799 () Bool)

(assert (=> d!261126 m!1070799))

(declare-fun m!1070803 () Bool)

(assert (=> d!261126 m!1070803))

(declare-fun m!1070805 () Bool)

(assert (=> d!261126 m!1070805))

(declare-fun m!1070807 () Bool)

(assert (=> b!836970 m!1070807))

(assert (=> bm!50265 d!261126))

(assert (=> b!836624 d!261052))

(declare-fun d!261130 () Bool)

(declare-fun lt!317974 () Bool)

(assert (=> d!261130 (= lt!317974 (select (content!1331 (t!93211 (firstChars!64 r!27177))) c!13916))))

(declare-fun e!550361 () Bool)

(assert (=> d!261130 (= lt!317974 e!550361)))

(declare-fun res!382839 () Bool)

(assert (=> d!261130 (=> (not res!382839) (not e!550361))))

(assert (=> d!261130 (= res!382839 ((_ is Cons!8903) (t!93211 (firstChars!64 r!27177))))))

(assert (=> d!261130 (= (contains!1684 (t!93211 (firstChars!64 r!27177)) c!13916) lt!317974)))

(declare-fun b!836977 () Bool)

(declare-fun e!550362 () Bool)

(assert (=> b!836977 (= e!550361 e!550362)))

(declare-fun res!382840 () Bool)

(assert (=> b!836977 (=> res!382840 e!550362)))

(assert (=> b!836977 (= res!382840 (= (h!14304 (t!93211 (firstChars!64 r!27177))) c!13916))))

(declare-fun b!836978 () Bool)

(assert (=> b!836978 (= e!550362 (contains!1684 (t!93211 (t!93211 (firstChars!64 r!27177))) c!13916))))

(assert (= (and d!261130 res!382839) b!836977))

(assert (= (and b!836977 (not res!382840)) b!836978))

(assert (=> d!261130 m!1070673))

(declare-fun m!1070813 () Bool)

(assert (=> d!261130 m!1070813))

(declare-fun m!1070815 () Bool)

(assert (=> b!836978 m!1070815))

(assert (=> b!836570 d!261130))

(declare-fun d!261134 () Bool)

(declare-fun lt!317975 () Bool)

(assert (=> d!261134 (= lt!317975 (select (content!1331 (t!93211 (usedCharacters!170 (regOne!4698 r!27177)))) c!13916))))

(declare-fun e!550368 () Bool)

(assert (=> d!261134 (= lt!317975 e!550368)))

(declare-fun res!382841 () Bool)

(assert (=> d!261134 (=> (not res!382841) (not e!550368))))

(assert (=> d!261134 (= res!382841 ((_ is Cons!8903) (t!93211 (usedCharacters!170 (regOne!4698 r!27177)))))))

(assert (=> d!261134 (= (contains!1684 (t!93211 (usedCharacters!170 (regOne!4698 r!27177))) c!13916) lt!317975)))

(declare-fun b!836985 () Bool)

(declare-fun e!550369 () Bool)

(assert (=> b!836985 (= e!550368 e!550369)))

(declare-fun res!382842 () Bool)

(assert (=> b!836985 (=> res!382842 e!550369)))

(assert (=> b!836985 (= res!382842 (= (h!14304 (t!93211 (usedCharacters!170 (regOne!4698 r!27177)))) c!13916))))

(declare-fun b!836986 () Bool)

(assert (=> b!836986 (= e!550369 (contains!1684 (t!93211 (t!93211 (usedCharacters!170 (regOne!4698 r!27177)))) c!13916))))

(assert (= (and d!261134 res!382841) b!836985))

(assert (= (and b!836985 (not res!382842)) b!836986))

(assert (=> d!261134 m!1070725))

(declare-fun m!1070817 () Bool)

(assert (=> d!261134 m!1070817))

(declare-fun m!1070819 () Bool)

(assert (=> b!836986 m!1070819))

(assert (=> b!836552 d!261134))

(declare-fun d!261136 () Bool)

(declare-fun lt!317976 () Bool)

(assert (=> d!261136 (= lt!317976 (select (content!1331 (t!93211 (usedCharacters!170 r!27177))) c!13916))))

(declare-fun e!550370 () Bool)

(assert (=> d!261136 (= lt!317976 e!550370)))

(declare-fun res!382843 () Bool)

(assert (=> d!261136 (=> (not res!382843) (not e!550370))))

(assert (=> d!261136 (= res!382843 ((_ is Cons!8903) (t!93211 (usedCharacters!170 r!27177))))))

(assert (=> d!261136 (= (contains!1684 (t!93211 (usedCharacters!170 r!27177)) c!13916) lt!317976)))

(declare-fun b!836991 () Bool)

(declare-fun e!550371 () Bool)

(assert (=> b!836991 (= e!550370 e!550371)))

(declare-fun res!382844 () Bool)

(assert (=> b!836991 (=> res!382844 e!550371)))

(assert (=> b!836991 (= res!382844 (= (h!14304 (t!93211 (usedCharacters!170 r!27177))) c!13916))))

(declare-fun b!836992 () Bool)

(assert (=> b!836992 (= e!550371 (contains!1684 (t!93211 (t!93211 (usedCharacters!170 r!27177))) c!13916))))

(assert (= (and d!261136 res!382843) b!836991))

(assert (= (and b!836991 (not res!382844)) b!836992))

(assert (=> d!261136 m!1070677))

(declare-fun m!1070821 () Bool)

(assert (=> d!261136 m!1070821))

(declare-fun m!1070823 () Bool)

(assert (=> b!836992 m!1070823))

(assert (=> b!836566 d!261136))

(declare-fun b!836995 () Bool)

(declare-fun res!382845 () Bool)

(declare-fun e!550372 () Bool)

(assert (=> b!836995 (=> (not res!382845) (not e!550372))))

(declare-fun lt!317977 () List!8919)

(assert (=> b!836995 (= res!382845 (= (size!7491 lt!317977) (+ (size!7491 (ite c!136625 call!50230 call!50227)) (size!7491 (ite c!136625 call!50227 call!50230)))))))

(declare-fun d!261138 () Bool)

(assert (=> d!261138 e!550372))

(declare-fun res!382846 () Bool)

(assert (=> d!261138 (=> (not res!382846) (not e!550372))))

(assert (=> d!261138 (= res!382846 (= (content!1331 lt!317977) ((_ map or) (content!1331 (ite c!136625 call!50230 call!50227)) (content!1331 (ite c!136625 call!50227 call!50230)))))))

(declare-fun e!550373 () List!8919)

(assert (=> d!261138 (= lt!317977 e!550373)))

(declare-fun c!136770 () Bool)

(assert (=> d!261138 (= c!136770 ((_ is Nil!8903) (ite c!136625 call!50230 call!50227)))))

(assert (=> d!261138 (= (++!2319 (ite c!136625 call!50230 call!50227) (ite c!136625 call!50227 call!50230)) lt!317977)))

(declare-fun b!836993 () Bool)

(assert (=> b!836993 (= e!550373 (ite c!136625 call!50227 call!50230))))

(declare-fun b!836996 () Bool)

(assert (=> b!836996 (= e!550372 (or (not (= (ite c!136625 call!50227 call!50230) Nil!8903)) (= lt!317977 (ite c!136625 call!50230 call!50227))))))

(declare-fun b!836994 () Bool)

(assert (=> b!836994 (= e!550373 (Cons!8903 (h!14304 (ite c!136625 call!50230 call!50227)) (++!2319 (t!93211 (ite c!136625 call!50230 call!50227)) (ite c!136625 call!50227 call!50230))))))

(assert (= (and d!261138 c!136770) b!836993))

(assert (= (and d!261138 (not c!136770)) b!836994))

(assert (= (and d!261138 res!382846) b!836995))

(assert (= (and b!836995 res!382845) b!836996))

(declare-fun m!1070825 () Bool)

(assert (=> b!836995 m!1070825))

(declare-fun m!1070827 () Bool)

(assert (=> b!836995 m!1070827))

(declare-fun m!1070831 () Bool)

(assert (=> b!836995 m!1070831))

(declare-fun m!1070833 () Bool)

(assert (=> d!261138 m!1070833))

(declare-fun m!1070835 () Bool)

(assert (=> d!261138 m!1070835))

(declare-fun m!1070837 () Bool)

(assert (=> d!261138 m!1070837))

(declare-fun m!1070841 () Bool)

(assert (=> b!836994 m!1070841))

(assert (=> bm!50222 d!261138))

(declare-fun b!836998 () Bool)

(declare-fun e!550374 () Bool)

(declare-fun tp!262386 () Bool)

(declare-fun tp!262389 () Bool)

(assert (=> b!836998 (= e!550374 (and tp!262386 tp!262389))))

(assert (=> b!836781 (= tp!262366 e!550374)))

(declare-fun b!836997 () Bool)

(assert (=> b!836997 (= e!550374 tp_is_empty!3909)))

(declare-fun b!837000 () Bool)

(declare-fun tp!262385 () Bool)

(assert (=> b!837000 (= e!550374 tp!262385)))

(declare-fun b!837002 () Bool)

(declare-fun tp!262387 () Bool)

(declare-fun tp!262388 () Bool)

(assert (=> b!837002 (= e!550374 (and tp!262387 tp!262388))))

(assert (= (and b!836781 ((_ is ElementMatch!2093) (regOne!4698 (regTwo!4698 r!27177)))) b!836997))

(assert (= (and b!836781 ((_ is Concat!3824) (regOne!4698 (regTwo!4698 r!27177)))) b!836998))

(assert (= (and b!836781 ((_ is Star!2093) (regOne!4698 (regTwo!4698 r!27177)))) b!837000))

(assert (= (and b!836781 ((_ is Union!2093) (regOne!4698 (regTwo!4698 r!27177)))) b!837002))

(declare-fun b!837004 () Bool)

(declare-fun e!550377 () Bool)

(declare-fun tp!262391 () Bool)

(declare-fun tp!262394 () Bool)

(assert (=> b!837004 (= e!550377 (and tp!262391 tp!262394))))

(assert (=> b!836781 (= tp!262369 e!550377)))

(declare-fun b!837003 () Bool)

(assert (=> b!837003 (= e!550377 tp_is_empty!3909)))

(declare-fun b!837005 () Bool)

(declare-fun tp!262390 () Bool)

(assert (=> b!837005 (= e!550377 tp!262390)))

(declare-fun b!837006 () Bool)

(declare-fun tp!262392 () Bool)

(declare-fun tp!262393 () Bool)

(assert (=> b!837006 (= e!550377 (and tp!262392 tp!262393))))

(assert (= (and b!836781 ((_ is ElementMatch!2093) (regTwo!4698 (regTwo!4698 r!27177)))) b!837003))

(assert (= (and b!836781 ((_ is Concat!3824) (regTwo!4698 (regTwo!4698 r!27177)))) b!837004))

(assert (= (and b!836781 ((_ is Star!2093) (regTwo!4698 (regTwo!4698 r!27177)))) b!837005))

(assert (= (and b!836781 ((_ is Union!2093) (regTwo!4698 (regTwo!4698 r!27177)))) b!837006))

(declare-fun b!837008 () Bool)

(declare-fun e!550378 () Bool)

(declare-fun tp!262396 () Bool)

(declare-fun tp!262399 () Bool)

(assert (=> b!837008 (= e!550378 (and tp!262396 tp!262399))))

(assert (=> b!836782 (= tp!262365 e!550378)))

(declare-fun b!837007 () Bool)

(assert (=> b!837007 (= e!550378 tp_is_empty!3909)))

(declare-fun b!837009 () Bool)

(declare-fun tp!262395 () Bool)

(assert (=> b!837009 (= e!550378 tp!262395)))

(declare-fun b!837010 () Bool)

(declare-fun tp!262397 () Bool)

(declare-fun tp!262398 () Bool)

(assert (=> b!837010 (= e!550378 (and tp!262397 tp!262398))))

(assert (= (and b!836782 ((_ is ElementMatch!2093) (reg!2422 (regTwo!4698 r!27177)))) b!837007))

(assert (= (and b!836782 ((_ is Concat!3824) (reg!2422 (regTwo!4698 r!27177)))) b!837008))

(assert (= (and b!836782 ((_ is Star!2093) (reg!2422 (regTwo!4698 r!27177)))) b!837009))

(assert (= (and b!836782 ((_ is Union!2093) (reg!2422 (regTwo!4698 r!27177)))) b!837010))

(declare-fun b!837012 () Bool)

(declare-fun e!550379 () Bool)

(declare-fun tp!262401 () Bool)

(declare-fun tp!262404 () Bool)

(assert (=> b!837012 (= e!550379 (and tp!262401 tp!262404))))

(assert (=> b!836791 (= tp!262377 e!550379)))

(declare-fun b!837011 () Bool)

(assert (=> b!837011 (= e!550379 tp_is_empty!3909)))

(declare-fun b!837013 () Bool)

(declare-fun tp!262400 () Bool)

(assert (=> b!837013 (= e!550379 tp!262400)))

(declare-fun b!837014 () Bool)

(declare-fun tp!262402 () Bool)

(declare-fun tp!262403 () Bool)

(assert (=> b!837014 (= e!550379 (and tp!262402 tp!262403))))

(assert (= (and b!836791 ((_ is ElementMatch!2093) (regOne!4699 (reg!2422 r!27177)))) b!837011))

(assert (= (and b!836791 ((_ is Concat!3824) (regOne!4699 (reg!2422 r!27177)))) b!837012))

(assert (= (and b!836791 ((_ is Star!2093) (regOne!4699 (reg!2422 r!27177)))) b!837013))

(assert (= (and b!836791 ((_ is Union!2093) (regOne!4699 (reg!2422 r!27177)))) b!837014))

(declare-fun b!837016 () Bool)

(declare-fun e!550380 () Bool)

(declare-fun tp!262406 () Bool)

(declare-fun tp!262409 () Bool)

(assert (=> b!837016 (= e!550380 (and tp!262406 tp!262409))))

(assert (=> b!836791 (= tp!262378 e!550380)))

(declare-fun b!837015 () Bool)

(assert (=> b!837015 (= e!550380 tp_is_empty!3909)))

(declare-fun b!837017 () Bool)

(declare-fun tp!262405 () Bool)

(assert (=> b!837017 (= e!550380 tp!262405)))

(declare-fun b!837018 () Bool)

(declare-fun tp!262407 () Bool)

(declare-fun tp!262408 () Bool)

(assert (=> b!837018 (= e!550380 (and tp!262407 tp!262408))))

(assert (= (and b!836791 ((_ is ElementMatch!2093) (regTwo!4699 (reg!2422 r!27177)))) b!837015))

(assert (= (and b!836791 ((_ is Concat!3824) (regTwo!4699 (reg!2422 r!27177)))) b!837016))

(assert (= (and b!836791 ((_ is Star!2093) (regTwo!4699 (reg!2422 r!27177)))) b!837017))

(assert (= (and b!836791 ((_ is Union!2093) (regTwo!4699 (reg!2422 r!27177)))) b!837018))

(declare-fun b!837020 () Bool)

(declare-fun e!550381 () Bool)

(declare-fun tp!262411 () Bool)

(declare-fun tp!262414 () Bool)

(assert (=> b!837020 (= e!550381 (and tp!262411 tp!262414))))

(assert (=> b!836789 (= tp!262376 e!550381)))

(declare-fun b!837019 () Bool)

(assert (=> b!837019 (= e!550381 tp_is_empty!3909)))

(declare-fun b!837021 () Bool)

(declare-fun tp!262410 () Bool)

(assert (=> b!837021 (= e!550381 tp!262410)))

(declare-fun b!837022 () Bool)

(declare-fun tp!262412 () Bool)

(declare-fun tp!262413 () Bool)

(assert (=> b!837022 (= e!550381 (and tp!262412 tp!262413))))

(assert (= (and b!836789 ((_ is ElementMatch!2093) (regOne!4698 (reg!2422 r!27177)))) b!837019))

(assert (= (and b!836789 ((_ is Concat!3824) (regOne!4698 (reg!2422 r!27177)))) b!837020))

(assert (= (and b!836789 ((_ is Star!2093) (regOne!4698 (reg!2422 r!27177)))) b!837021))

(assert (= (and b!836789 ((_ is Union!2093) (regOne!4698 (reg!2422 r!27177)))) b!837022))

(declare-fun b!837024 () Bool)

(declare-fun e!550382 () Bool)

(declare-fun tp!262416 () Bool)

(declare-fun tp!262419 () Bool)

(assert (=> b!837024 (= e!550382 (and tp!262416 tp!262419))))

(assert (=> b!836789 (= tp!262379 e!550382)))

(declare-fun b!837023 () Bool)

(assert (=> b!837023 (= e!550382 tp_is_empty!3909)))

(declare-fun b!837025 () Bool)

(declare-fun tp!262415 () Bool)

(assert (=> b!837025 (= e!550382 tp!262415)))

(declare-fun b!837026 () Bool)

(declare-fun tp!262417 () Bool)

(declare-fun tp!262418 () Bool)

(assert (=> b!837026 (= e!550382 (and tp!262417 tp!262418))))

(assert (= (and b!836789 ((_ is ElementMatch!2093) (regTwo!4698 (reg!2422 r!27177)))) b!837023))

(assert (= (and b!836789 ((_ is Concat!3824) (regTwo!4698 (reg!2422 r!27177)))) b!837024))

(assert (= (and b!836789 ((_ is Star!2093) (regTwo!4698 (reg!2422 r!27177)))) b!837025))

(assert (= (and b!836789 ((_ is Union!2093) (regTwo!4698 (reg!2422 r!27177)))) b!837026))

(declare-fun b!837028 () Bool)

(declare-fun e!550383 () Bool)

(declare-fun tp!262421 () Bool)

(declare-fun tp!262424 () Bool)

(assert (=> b!837028 (= e!550383 (and tp!262421 tp!262424))))

(assert (=> b!836790 (= tp!262375 e!550383)))

(declare-fun b!837027 () Bool)

(assert (=> b!837027 (= e!550383 tp_is_empty!3909)))

(declare-fun b!837029 () Bool)

(declare-fun tp!262420 () Bool)

(assert (=> b!837029 (= e!550383 tp!262420)))

(declare-fun b!837030 () Bool)

(declare-fun tp!262422 () Bool)

(declare-fun tp!262423 () Bool)

(assert (=> b!837030 (= e!550383 (and tp!262422 tp!262423))))

(assert (= (and b!836790 ((_ is ElementMatch!2093) (reg!2422 (reg!2422 r!27177)))) b!837027))

(assert (= (and b!836790 ((_ is Concat!3824) (reg!2422 (reg!2422 r!27177)))) b!837028))

(assert (= (and b!836790 ((_ is Star!2093) (reg!2422 (reg!2422 r!27177)))) b!837029))

(assert (= (and b!836790 ((_ is Union!2093) (reg!2422 (reg!2422 r!27177)))) b!837030))

(declare-fun b!837032 () Bool)

(declare-fun e!550384 () Bool)

(declare-fun tp!262426 () Bool)

(declare-fun tp!262429 () Bool)

(assert (=> b!837032 (= e!550384 (and tp!262426 tp!262429))))

(assert (=> b!836770 (= tp!262350 e!550384)))

(declare-fun b!837031 () Bool)

(assert (=> b!837031 (= e!550384 tp_is_empty!3909)))

(declare-fun b!837033 () Bool)

(declare-fun tp!262425 () Bool)

(assert (=> b!837033 (= e!550384 tp!262425)))

(declare-fun b!837034 () Bool)

(declare-fun tp!262427 () Bool)

(declare-fun tp!262428 () Bool)

(assert (=> b!837034 (= e!550384 (and tp!262427 tp!262428))))

(assert (= (and b!836770 ((_ is ElementMatch!2093) (reg!2422 (regOne!4698 r!27177)))) b!837031))

(assert (= (and b!836770 ((_ is Concat!3824) (reg!2422 (regOne!4698 r!27177)))) b!837032))

(assert (= (and b!836770 ((_ is Star!2093) (reg!2422 (regOne!4698 r!27177)))) b!837033))

(assert (= (and b!836770 ((_ is Union!2093) (reg!2422 (regOne!4698 r!27177)))) b!837034))

(declare-fun b!837036 () Bool)

(declare-fun e!550385 () Bool)

(declare-fun tp!262431 () Bool)

(declare-fun tp!262434 () Bool)

(assert (=> b!837036 (= e!550385 (and tp!262431 tp!262434))))

(assert (=> b!836761 (= tp!262341 e!550385)))

(declare-fun b!837035 () Bool)

(assert (=> b!837035 (= e!550385 tp_is_empty!3909)))

(declare-fun b!837037 () Bool)

(declare-fun tp!262430 () Bool)

(assert (=> b!837037 (= e!550385 tp!262430)))

(declare-fun b!837038 () Bool)

(declare-fun tp!262432 () Bool)

(declare-fun tp!262433 () Bool)

(assert (=> b!837038 (= e!550385 (and tp!262432 tp!262433))))

(assert (= (and b!836761 ((_ is ElementMatch!2093) (regOne!4698 (regTwo!4699 r!27177)))) b!837035))

(assert (= (and b!836761 ((_ is Concat!3824) (regOne!4698 (regTwo!4699 r!27177)))) b!837036))

(assert (= (and b!836761 ((_ is Star!2093) (regOne!4698 (regTwo!4699 r!27177)))) b!837037))

(assert (= (and b!836761 ((_ is Union!2093) (regOne!4698 (regTwo!4699 r!27177)))) b!837038))

(declare-fun b!837040 () Bool)

(declare-fun e!550386 () Bool)

(declare-fun tp!262436 () Bool)

(declare-fun tp!262439 () Bool)

(assert (=> b!837040 (= e!550386 (and tp!262436 tp!262439))))

(assert (=> b!836761 (= tp!262344 e!550386)))

(declare-fun b!837039 () Bool)

(assert (=> b!837039 (= e!550386 tp_is_empty!3909)))

(declare-fun b!837041 () Bool)

(declare-fun tp!262435 () Bool)

(assert (=> b!837041 (= e!550386 tp!262435)))

(declare-fun b!837042 () Bool)

(declare-fun tp!262437 () Bool)

(declare-fun tp!262438 () Bool)

(assert (=> b!837042 (= e!550386 (and tp!262437 tp!262438))))

(assert (= (and b!836761 ((_ is ElementMatch!2093) (regTwo!4698 (regTwo!4699 r!27177)))) b!837039))

(assert (= (and b!836761 ((_ is Concat!3824) (regTwo!4698 (regTwo!4699 r!27177)))) b!837040))

(assert (= (and b!836761 ((_ is Star!2093) (regTwo!4698 (regTwo!4699 r!27177)))) b!837041))

(assert (= (and b!836761 ((_ is Union!2093) (regTwo!4698 (regTwo!4699 r!27177)))) b!837042))

(declare-fun b!837044 () Bool)

(declare-fun e!550387 () Bool)

(declare-fun tp!262441 () Bool)

(declare-fun tp!262444 () Bool)

(assert (=> b!837044 (= e!550387 (and tp!262441 tp!262444))))

(assert (=> b!836783 (= tp!262367 e!550387)))

(declare-fun b!837043 () Bool)

(assert (=> b!837043 (= e!550387 tp_is_empty!3909)))

(declare-fun b!837045 () Bool)

(declare-fun tp!262440 () Bool)

(assert (=> b!837045 (= e!550387 tp!262440)))

(declare-fun b!837046 () Bool)

(declare-fun tp!262442 () Bool)

(declare-fun tp!262443 () Bool)

(assert (=> b!837046 (= e!550387 (and tp!262442 tp!262443))))

(assert (= (and b!836783 ((_ is ElementMatch!2093) (regOne!4699 (regTwo!4698 r!27177)))) b!837043))

(assert (= (and b!836783 ((_ is Concat!3824) (regOne!4699 (regTwo!4698 r!27177)))) b!837044))

(assert (= (and b!836783 ((_ is Star!2093) (regOne!4699 (regTwo!4698 r!27177)))) b!837045))

(assert (= (and b!836783 ((_ is Union!2093) (regOne!4699 (regTwo!4698 r!27177)))) b!837046))

(declare-fun b!837048 () Bool)

(declare-fun e!550388 () Bool)

(declare-fun tp!262446 () Bool)

(declare-fun tp!262449 () Bool)

(assert (=> b!837048 (= e!550388 (and tp!262446 tp!262449))))

(assert (=> b!836783 (= tp!262368 e!550388)))

(declare-fun b!837047 () Bool)

(assert (=> b!837047 (= e!550388 tp_is_empty!3909)))

(declare-fun b!837049 () Bool)

(declare-fun tp!262445 () Bool)

(assert (=> b!837049 (= e!550388 tp!262445)))

(declare-fun b!837050 () Bool)

(declare-fun tp!262447 () Bool)

(declare-fun tp!262448 () Bool)

(assert (=> b!837050 (= e!550388 (and tp!262447 tp!262448))))

(assert (= (and b!836783 ((_ is ElementMatch!2093) (regTwo!4699 (regTwo!4698 r!27177)))) b!837047))

(assert (= (and b!836783 ((_ is Concat!3824) (regTwo!4699 (regTwo!4698 r!27177)))) b!837048))

(assert (= (and b!836783 ((_ is Star!2093) (regTwo!4699 (regTwo!4698 r!27177)))) b!837049))

(assert (= (and b!836783 ((_ is Union!2093) (regTwo!4699 (regTwo!4698 r!27177)))) b!837050))

(declare-fun b!837060 () Bool)

(declare-fun e!550393 () Bool)

(declare-fun tp!262451 () Bool)

(declare-fun tp!262454 () Bool)

(assert (=> b!837060 (= e!550393 (and tp!262451 tp!262454))))

(assert (=> b!836769 (= tp!262351 e!550393)))

(declare-fun b!837059 () Bool)

(assert (=> b!837059 (= e!550393 tp_is_empty!3909)))

(declare-fun b!837061 () Bool)

(declare-fun tp!262450 () Bool)

(assert (=> b!837061 (= e!550393 tp!262450)))

(declare-fun b!837062 () Bool)

(declare-fun tp!262452 () Bool)

(declare-fun tp!262453 () Bool)

(assert (=> b!837062 (= e!550393 (and tp!262452 tp!262453))))

(assert (= (and b!836769 ((_ is ElementMatch!2093) (regOne!4698 (regOne!4698 r!27177)))) b!837059))

(assert (= (and b!836769 ((_ is Concat!3824) (regOne!4698 (regOne!4698 r!27177)))) b!837060))

(assert (= (and b!836769 ((_ is Star!2093) (regOne!4698 (regOne!4698 r!27177)))) b!837061))

(assert (= (and b!836769 ((_ is Union!2093) (regOne!4698 (regOne!4698 r!27177)))) b!837062))

(declare-fun b!837064 () Bool)

(declare-fun e!550394 () Bool)

(declare-fun tp!262456 () Bool)

(declare-fun tp!262459 () Bool)

(assert (=> b!837064 (= e!550394 (and tp!262456 tp!262459))))

(assert (=> b!836769 (= tp!262354 e!550394)))

(declare-fun b!837063 () Bool)

(assert (=> b!837063 (= e!550394 tp_is_empty!3909)))

(declare-fun b!837065 () Bool)

(declare-fun tp!262455 () Bool)

(assert (=> b!837065 (= e!550394 tp!262455)))

(declare-fun b!837066 () Bool)

(declare-fun tp!262457 () Bool)

(declare-fun tp!262458 () Bool)

(assert (=> b!837066 (= e!550394 (and tp!262457 tp!262458))))

(assert (= (and b!836769 ((_ is ElementMatch!2093) (regTwo!4698 (regOne!4698 r!27177)))) b!837063))

(assert (= (and b!836769 ((_ is Concat!3824) (regTwo!4698 (regOne!4698 r!27177)))) b!837064))

(assert (= (and b!836769 ((_ is Star!2093) (regTwo!4698 (regOne!4698 r!27177)))) b!837065))

(assert (= (and b!836769 ((_ is Union!2093) (regTwo!4698 (regOne!4698 r!27177)))) b!837066))

(declare-fun b!837068 () Bool)

(declare-fun e!550395 () Bool)

(declare-fun tp!262461 () Bool)

(declare-fun tp!262464 () Bool)

(assert (=> b!837068 (= e!550395 (and tp!262461 tp!262464))))

(assert (=> b!836763 (= tp!262342 e!550395)))

(declare-fun b!837067 () Bool)

(assert (=> b!837067 (= e!550395 tp_is_empty!3909)))

(declare-fun b!837069 () Bool)

(declare-fun tp!262460 () Bool)

(assert (=> b!837069 (= e!550395 tp!262460)))

(declare-fun b!837070 () Bool)

(declare-fun tp!262462 () Bool)

(declare-fun tp!262463 () Bool)

(assert (=> b!837070 (= e!550395 (and tp!262462 tp!262463))))

(assert (= (and b!836763 ((_ is ElementMatch!2093) (regOne!4699 (regTwo!4699 r!27177)))) b!837067))

(assert (= (and b!836763 ((_ is Concat!3824) (regOne!4699 (regTwo!4699 r!27177)))) b!837068))

(assert (= (and b!836763 ((_ is Star!2093) (regOne!4699 (regTwo!4699 r!27177)))) b!837069))

(assert (= (and b!836763 ((_ is Union!2093) (regOne!4699 (regTwo!4699 r!27177)))) b!837070))

(declare-fun b!837072 () Bool)

(declare-fun e!550396 () Bool)

(declare-fun tp!262466 () Bool)

(declare-fun tp!262469 () Bool)

(assert (=> b!837072 (= e!550396 (and tp!262466 tp!262469))))

(assert (=> b!836763 (= tp!262343 e!550396)))

(declare-fun b!837071 () Bool)

(assert (=> b!837071 (= e!550396 tp_is_empty!3909)))

(declare-fun b!837073 () Bool)

(declare-fun tp!262465 () Bool)

(assert (=> b!837073 (= e!550396 tp!262465)))

(declare-fun b!837074 () Bool)

(declare-fun tp!262467 () Bool)

(declare-fun tp!262468 () Bool)

(assert (=> b!837074 (= e!550396 (and tp!262467 tp!262468))))

(assert (= (and b!836763 ((_ is ElementMatch!2093) (regTwo!4699 (regTwo!4699 r!27177)))) b!837071))

(assert (= (and b!836763 ((_ is Concat!3824) (regTwo!4699 (regTwo!4699 r!27177)))) b!837072))

(assert (= (and b!836763 ((_ is Star!2093) (regTwo!4699 (regTwo!4699 r!27177)))) b!837073))

(assert (= (and b!836763 ((_ is Union!2093) (regTwo!4699 (regTwo!4699 r!27177)))) b!837074))

(declare-fun b!837076 () Bool)

(declare-fun e!550397 () Bool)

(declare-fun tp!262471 () Bool)

(declare-fun tp!262474 () Bool)

(assert (=> b!837076 (= e!550397 (and tp!262471 tp!262474))))

(assert (=> b!836759 (= tp!262337 e!550397)))

(declare-fun b!837075 () Bool)

(assert (=> b!837075 (= e!550397 tp_is_empty!3909)))

(declare-fun b!837077 () Bool)

(declare-fun tp!262470 () Bool)

(assert (=> b!837077 (= e!550397 tp!262470)))

(declare-fun b!837078 () Bool)

(declare-fun tp!262472 () Bool)

(declare-fun tp!262473 () Bool)

(assert (=> b!837078 (= e!550397 (and tp!262472 tp!262473))))

(assert (= (and b!836759 ((_ is ElementMatch!2093) (regOne!4699 (regOne!4699 r!27177)))) b!837075))

(assert (= (and b!836759 ((_ is Concat!3824) (regOne!4699 (regOne!4699 r!27177)))) b!837076))

(assert (= (and b!836759 ((_ is Star!2093) (regOne!4699 (regOne!4699 r!27177)))) b!837077))

(assert (= (and b!836759 ((_ is Union!2093) (regOne!4699 (regOne!4699 r!27177)))) b!837078))

(declare-fun b!837082 () Bool)

(declare-fun e!550400 () Bool)

(declare-fun tp!262476 () Bool)

(declare-fun tp!262479 () Bool)

(assert (=> b!837082 (= e!550400 (and tp!262476 tp!262479))))

(assert (=> b!836759 (= tp!262338 e!550400)))

(declare-fun b!837081 () Bool)

(assert (=> b!837081 (= e!550400 tp_is_empty!3909)))

(declare-fun b!837083 () Bool)

(declare-fun tp!262475 () Bool)

(assert (=> b!837083 (= e!550400 tp!262475)))

(declare-fun b!837084 () Bool)

(declare-fun tp!262477 () Bool)

(declare-fun tp!262478 () Bool)

(assert (=> b!837084 (= e!550400 (and tp!262477 tp!262478))))

(assert (= (and b!836759 ((_ is ElementMatch!2093) (regTwo!4699 (regOne!4699 r!27177)))) b!837081))

(assert (= (and b!836759 ((_ is Concat!3824) (regTwo!4699 (regOne!4699 r!27177)))) b!837082))

(assert (= (and b!836759 ((_ is Star!2093) (regTwo!4699 (regOne!4699 r!27177)))) b!837083))

(assert (= (and b!836759 ((_ is Union!2093) (regTwo!4699 (regOne!4699 r!27177)))) b!837084))

(declare-fun b!837086 () Bool)

(declare-fun e!550401 () Bool)

(declare-fun tp!262481 () Bool)

(declare-fun tp!262484 () Bool)

(assert (=> b!837086 (= e!550401 (and tp!262481 tp!262484))))

(assert (=> b!836762 (= tp!262340 e!550401)))

(declare-fun b!837085 () Bool)

(assert (=> b!837085 (= e!550401 tp_is_empty!3909)))

(declare-fun b!837087 () Bool)

(declare-fun tp!262480 () Bool)

(assert (=> b!837087 (= e!550401 tp!262480)))

(declare-fun b!837088 () Bool)

(declare-fun tp!262482 () Bool)

(declare-fun tp!262483 () Bool)

(assert (=> b!837088 (= e!550401 (and tp!262482 tp!262483))))

(assert (= (and b!836762 ((_ is ElementMatch!2093) (reg!2422 (regTwo!4699 r!27177)))) b!837085))

(assert (= (and b!836762 ((_ is Concat!3824) (reg!2422 (regTwo!4699 r!27177)))) b!837086))

(assert (= (and b!836762 ((_ is Star!2093) (reg!2422 (regTwo!4699 r!27177)))) b!837087))

(assert (= (and b!836762 ((_ is Union!2093) (reg!2422 (regTwo!4699 r!27177)))) b!837088))

(declare-fun b!837090 () Bool)

(declare-fun e!550402 () Bool)

(declare-fun tp!262486 () Bool)

(declare-fun tp!262489 () Bool)

(assert (=> b!837090 (= e!550402 (and tp!262486 tp!262489))))

(assert (=> b!836771 (= tp!262352 e!550402)))

(declare-fun b!837089 () Bool)

(assert (=> b!837089 (= e!550402 tp_is_empty!3909)))

(declare-fun b!837091 () Bool)

(declare-fun tp!262485 () Bool)

(assert (=> b!837091 (= e!550402 tp!262485)))

(declare-fun b!837092 () Bool)

(declare-fun tp!262487 () Bool)

(declare-fun tp!262488 () Bool)

(assert (=> b!837092 (= e!550402 (and tp!262487 tp!262488))))

(assert (= (and b!836771 ((_ is ElementMatch!2093) (regOne!4699 (regOne!4698 r!27177)))) b!837089))

(assert (= (and b!836771 ((_ is Concat!3824) (regOne!4699 (regOne!4698 r!27177)))) b!837090))

(assert (= (and b!836771 ((_ is Star!2093) (regOne!4699 (regOne!4698 r!27177)))) b!837091))

(assert (= (and b!836771 ((_ is Union!2093) (regOne!4699 (regOne!4698 r!27177)))) b!837092))

(declare-fun b!837094 () Bool)

(declare-fun e!550403 () Bool)

(declare-fun tp!262491 () Bool)

(declare-fun tp!262494 () Bool)

(assert (=> b!837094 (= e!550403 (and tp!262491 tp!262494))))

(assert (=> b!836771 (= tp!262353 e!550403)))

(declare-fun b!837093 () Bool)

(assert (=> b!837093 (= e!550403 tp_is_empty!3909)))

(declare-fun b!837095 () Bool)

(declare-fun tp!262490 () Bool)

(assert (=> b!837095 (= e!550403 tp!262490)))

(declare-fun b!837096 () Bool)

(declare-fun tp!262492 () Bool)

(declare-fun tp!262493 () Bool)

(assert (=> b!837096 (= e!550403 (and tp!262492 tp!262493))))

(assert (= (and b!836771 ((_ is ElementMatch!2093) (regTwo!4699 (regOne!4698 r!27177)))) b!837093))

(assert (= (and b!836771 ((_ is Concat!3824) (regTwo!4699 (regOne!4698 r!27177)))) b!837094))

(assert (= (and b!836771 ((_ is Star!2093) (regTwo!4699 (regOne!4698 r!27177)))) b!837095))

(assert (= (and b!836771 ((_ is Union!2093) (regTwo!4699 (regOne!4698 r!27177)))) b!837096))

(declare-fun b!837098 () Bool)

(declare-fun e!550404 () Bool)

(declare-fun tp!262496 () Bool)

(declare-fun tp!262499 () Bool)

(assert (=> b!837098 (= e!550404 (and tp!262496 tp!262499))))

(assert (=> b!836757 (= tp!262336 e!550404)))

(declare-fun b!837097 () Bool)

(assert (=> b!837097 (= e!550404 tp_is_empty!3909)))

(declare-fun b!837099 () Bool)

(declare-fun tp!262495 () Bool)

(assert (=> b!837099 (= e!550404 tp!262495)))

(declare-fun b!837100 () Bool)

(declare-fun tp!262497 () Bool)

(declare-fun tp!262498 () Bool)

(assert (=> b!837100 (= e!550404 (and tp!262497 tp!262498))))

(assert (= (and b!836757 ((_ is ElementMatch!2093) (regOne!4698 (regOne!4699 r!27177)))) b!837097))

(assert (= (and b!836757 ((_ is Concat!3824) (regOne!4698 (regOne!4699 r!27177)))) b!837098))

(assert (= (and b!836757 ((_ is Star!2093) (regOne!4698 (regOne!4699 r!27177)))) b!837099))

(assert (= (and b!836757 ((_ is Union!2093) (regOne!4698 (regOne!4699 r!27177)))) b!837100))

(declare-fun b!837102 () Bool)

(declare-fun e!550405 () Bool)

(declare-fun tp!262501 () Bool)

(declare-fun tp!262504 () Bool)

(assert (=> b!837102 (= e!550405 (and tp!262501 tp!262504))))

(assert (=> b!836757 (= tp!262339 e!550405)))

(declare-fun b!837101 () Bool)

(assert (=> b!837101 (= e!550405 tp_is_empty!3909)))

(declare-fun b!837103 () Bool)

(declare-fun tp!262500 () Bool)

(assert (=> b!837103 (= e!550405 tp!262500)))

(declare-fun b!837104 () Bool)

(declare-fun tp!262502 () Bool)

(declare-fun tp!262503 () Bool)

(assert (=> b!837104 (= e!550405 (and tp!262502 tp!262503))))

(assert (= (and b!836757 ((_ is ElementMatch!2093) (regTwo!4698 (regOne!4699 r!27177)))) b!837101))

(assert (= (and b!836757 ((_ is Concat!3824) (regTwo!4698 (regOne!4699 r!27177)))) b!837102))

(assert (= (and b!836757 ((_ is Star!2093) (regTwo!4698 (regOne!4699 r!27177)))) b!837103))

(assert (= (and b!836757 ((_ is Union!2093) (regTwo!4698 (regOne!4699 r!27177)))) b!837104))

(declare-fun b!837106 () Bool)

(declare-fun e!550406 () Bool)

(declare-fun tp!262506 () Bool)

(declare-fun tp!262509 () Bool)

(assert (=> b!837106 (= e!550406 (and tp!262506 tp!262509))))

(assert (=> b!836758 (= tp!262335 e!550406)))

(declare-fun b!837105 () Bool)

(assert (=> b!837105 (= e!550406 tp_is_empty!3909)))

(declare-fun b!837107 () Bool)

(declare-fun tp!262505 () Bool)

(assert (=> b!837107 (= e!550406 tp!262505)))

(declare-fun b!837108 () Bool)

(declare-fun tp!262507 () Bool)

(declare-fun tp!262508 () Bool)

(assert (=> b!837108 (= e!550406 (and tp!262507 tp!262508))))

(assert (= (and b!836758 ((_ is ElementMatch!2093) (reg!2422 (regOne!4699 r!27177)))) b!837105))

(assert (= (and b!836758 ((_ is Concat!3824) (reg!2422 (regOne!4699 r!27177)))) b!837106))

(assert (= (and b!836758 ((_ is Star!2093) (reg!2422 (regOne!4699 r!27177)))) b!837107))

(assert (= (and b!836758 ((_ is Union!2093) (reg!2422 (regOne!4699 r!27177)))) b!837108))

(check-sat (not b!837099) (not b!836828) (not b!837049) (not b!837076) (not b!837021) (not b!837036) (not bm!50332) (not b!837013) (not b!837020) (not b!837066) (not b!837078) (not b!837016) (not b!836914) (not b!837000) (not b!836994) (not b!837082) (not b!837102) (not b!836862) (not bm!50298) (not b!837037) (not bm!50338) (not bm!50354) (not b!837096) (not bm!50322) (not bm!50333) (not b!836978) (not b!837012) (not b!837098) (not b!836816) (not b!837065) (not bm!50334) (not d!261088) (not b!836992) (not b!837084) (not b!837074) (not bm!50307) (not b!837050) (not b!837022) (not b!837025) (not bm!50309) (not bm!50323) (not b!837002) (not b!836911) (not b!836919) (not b!837033) (not bm!50331) (not d!261102) (not b!836927) (not b!836800) (not b!836832) (not b!837005) (not b!837088) (not b!837028) (not b!837094) (not b!836878) (not b!837018) (not b!837091) (not b!837029) (not bm!50341) (not d!261100) (not b!836998) (not b!837092) (not bm!50335) (not b!837042) (not b!837017) (not bm!50301) (not b!837048) (not b!837014) (not bm!50329) (not b!837041) (not b!836837) (not b!837030) tp_is_empty!3909 (not bm!50302) (not b!836830) (not b!837108) (not b!837006) (not b!837086) (not b!837024) (not bm!50317) (not b!837103) (not b!837073) (not b!837070) (not b!837032) (not b!837106) (not b!836910) (not bm!50310) (not bm!50324) (not d!261114) (not bm!50297) (not d!261136) (not b!837090) (not b!836970) (not b!837061) (not bm!50325) (not b!837107) (not b!837004) (not b!837010) (not b!837069) (not b!837060) (not d!261082) (not b!837068) (not d!261112) (not bm!50315) (not b!836995) (not b!837062) (not b!837026) (not b!836971) (not d!261092) (not b!837040) (not bm!50312) (not b!837038) (not b!837072) (not b!836894) (not b!837044) (not b!837009) (not b!836882) (not b!837034) (not bm!50337) (not b!837077) (not b!837083) (not b!837046) (not bm!50300) (not d!261130) (not d!261134) (not d!261138) (not b!837100) (not b!836986) (not b!837095) (not b!837104) (not bm!50305) (not b!837064) (not bm!50344) (not b!837045) (not bm!50308) (not b!836846) (not d!261126) (not b!837008) (not b!837087) (not bm!50320) (not b!836879) (not bm!50326) (not bm!50355) (not bm!50313) (not bm!50343) (not bm!50316))
(check-sat)
