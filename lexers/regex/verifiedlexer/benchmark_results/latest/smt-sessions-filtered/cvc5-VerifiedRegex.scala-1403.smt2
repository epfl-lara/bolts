; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73860 () Bool)

(assert start!73860)

(declare-fun b!826932 () Bool)

(declare-fun e!545483 () Bool)

(declare-fun tp_is_empty!3851 () Bool)

(assert (=> b!826932 (= e!545483 tp_is_empty!3851)))

(declare-fun b!826933 () Bool)

(declare-fun tp!258648 () Bool)

(declare-fun tp!258646 () Bool)

(assert (=> b!826933 (= e!545483 (and tp!258648 tp!258646))))

(declare-fun res!380555 () Bool)

(declare-fun e!545482 () Bool)

(assert (=> start!73860 (=> (not res!380555) (not e!545482))))

(declare-datatypes ((C!4698 0))(
  ( (C!4699 (val!2597 Int)) )
))
(declare-datatypes ((Regex!2064 0))(
  ( (ElementMatch!2064 (c!134367 C!4698)) (Concat!3795 (regOne!4640 Regex!2064) (regTwo!4640 Regex!2064)) (EmptyExpr!2064) (Star!2064 (reg!2393 Regex!2064)) (EmptyLang!2064) (Union!2064 (regOne!4641 Regex!2064) (regTwo!4641 Regex!2064)) )
))
(declare-fun r!27177 () Regex!2064)

(declare-fun validRegex!617 (Regex!2064) Bool)

(assert (=> start!73860 (= res!380555 (validRegex!617 r!27177))))

(assert (=> start!73860 e!545482))

(assert (=> start!73860 e!545483))

(assert (=> start!73860 tp_is_empty!3851))

(declare-fun b!826934 () Bool)

(declare-fun res!380553 () Bool)

(assert (=> b!826934 (=> (not res!380553) (not e!545482))))

(declare-fun c!13916 () C!4698)

(declare-datatypes ((List!8890 0))(
  ( (Nil!8874) (Cons!8874 (h!14275 C!4698) (t!93182 List!8890)) )
))
(declare-fun contains!1655 (List!8890 C!4698) Bool)

(declare-fun firstChars!35 (Regex!2064) List!8890)

(assert (=> b!826934 (= res!380553 (not (contains!1655 (firstChars!35 (regOne!4641 r!27177)) c!13916)))))

(declare-fun b!826935 () Bool)

(assert (=> b!826935 (= e!545482 (not (validRegex!617 (regTwo!4641 r!27177))))))

(declare-fun b!826936 () Bool)

(declare-fun res!380554 () Bool)

(assert (=> b!826936 (=> (not res!380554) (not e!545482))))

(assert (=> b!826936 (= res!380554 (and (not (is-EmptyExpr!2064 r!27177)) (not (is-EmptyLang!2064 r!27177)) (not (is-ElementMatch!2064 r!27177)) (not (is-Star!2064 r!27177)) (is-Union!2064 r!27177)))))

(declare-fun b!826937 () Bool)

(declare-fun tp!258649 () Bool)

(assert (=> b!826937 (= e!545483 tp!258649)))

(declare-fun b!826938 () Bool)

(declare-fun res!380552 () Bool)

(assert (=> b!826938 (=> (not res!380552) (not e!545482))))

(assert (=> b!826938 (= res!380552 (contains!1655 (firstChars!35 r!27177) c!13916))))

(declare-fun b!826939 () Bool)

(declare-fun tp!258647 () Bool)

(declare-fun tp!258645 () Bool)

(assert (=> b!826939 (= e!545483 (and tp!258647 tp!258645))))

(assert (= (and start!73860 res!380555) b!826938))

(assert (= (and b!826938 res!380552) b!826936))

(assert (= (and b!826936 res!380554) b!826934))

(assert (= (and b!826934 res!380553) b!826935))

(assert (= (and start!73860 (is-ElementMatch!2064 r!27177)) b!826932))

(assert (= (and start!73860 (is-Concat!3795 r!27177)) b!826939))

(assert (= (and start!73860 (is-Star!2064 r!27177)) b!826937))

(assert (= (and start!73860 (is-Union!2064 r!27177)) b!826933))

(declare-fun m!1065493 () Bool)

(assert (=> start!73860 m!1065493))

(declare-fun m!1065495 () Bool)

(assert (=> b!826934 m!1065495))

(assert (=> b!826934 m!1065495))

(declare-fun m!1065497 () Bool)

(assert (=> b!826934 m!1065497))

(declare-fun m!1065499 () Bool)

(assert (=> b!826935 m!1065499))

(declare-fun m!1065501 () Bool)

(assert (=> b!826938 m!1065501))

(assert (=> b!826938 m!1065501))

(declare-fun m!1065503 () Bool)

(assert (=> b!826938 m!1065503))

(push 1)

(assert (not b!826935))

(assert (not b!826937))

(assert (not b!826939))

(assert (not b!826934))

(assert tp_is_empty!3851)

(assert (not start!73860))

(assert (not b!826938))

(assert (not b!826933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!826998 () Bool)

(declare-fun e!545522 () Bool)

(declare-fun call!48114 () Bool)

(assert (=> b!826998 (= e!545522 call!48114)))

(declare-fun b!826999 () Bool)

(declare-fun e!545516 () Bool)

(assert (=> b!826999 (= e!545516 e!545522)))

(declare-fun res!380587 () Bool)

(declare-fun nullable!515 (Regex!2064) Bool)

(assert (=> b!826999 (= res!380587 (not (nullable!515 (reg!2393 (regTwo!4641 r!27177)))))))

(assert (=> b!826999 (=> (not res!380587) (not e!545522))))

(declare-fun b!827000 () Bool)

(declare-fun e!545517 () Bool)

(declare-fun call!48116 () Bool)

(assert (=> b!827000 (= e!545517 call!48116)))

(declare-fun b!827001 () Bool)

(declare-fun e!545524 () Bool)

(declare-fun call!48115 () Bool)

(assert (=> b!827001 (= e!545524 call!48115)))

(declare-fun c!134378 () Bool)

(declare-fun c!134377 () Bool)

(declare-fun bm!48109 () Bool)

(assert (=> bm!48109 (= call!48114 (validRegex!617 (ite c!134378 (reg!2393 (regTwo!4641 r!27177)) (ite c!134377 (regTwo!4641 (regTwo!4641 r!27177)) (regOne!4640 (regTwo!4641 r!27177))))))))

(declare-fun bm!48110 () Bool)

(assert (=> bm!48110 (= call!48115 call!48114)))

(declare-fun b!827002 () Bool)

(declare-fun res!380588 () Bool)

(declare-fun e!545518 () Bool)

(assert (=> b!827002 (=> res!380588 e!545518)))

(assert (=> b!827002 (= res!380588 (not (is-Concat!3795 (regTwo!4641 r!27177))))))

(declare-fun e!545523 () Bool)

(assert (=> b!827002 (= e!545523 e!545518)))

(declare-fun d!259516 () Bool)

(declare-fun res!380586 () Bool)

(declare-fun e!545519 () Bool)

(assert (=> d!259516 (=> res!380586 e!545519)))

(assert (=> d!259516 (= res!380586 (is-ElementMatch!2064 (regTwo!4641 r!27177)))))

(assert (=> d!259516 (= (validRegex!617 (regTwo!4641 r!27177)) e!545519)))

(declare-fun b!827003 () Bool)

(assert (=> b!827003 (= e!545518 e!545517)))

(declare-fun res!380589 () Bool)

(assert (=> b!827003 (=> (not res!380589) (not e!545517))))

(assert (=> b!827003 (= res!380589 call!48115)))

(declare-fun b!827004 () Bool)

(assert (=> b!827004 (= e!545516 e!545523)))

(assert (=> b!827004 (= c!134377 (is-Union!2064 (regTwo!4641 r!27177)))))

(declare-fun bm!48111 () Bool)

(assert (=> bm!48111 (= call!48116 (validRegex!617 (ite c!134377 (regOne!4641 (regTwo!4641 r!27177)) (regTwo!4640 (regTwo!4641 r!27177)))))))

(declare-fun b!827006 () Bool)

(assert (=> b!827006 (= e!545519 e!545516)))

(assert (=> b!827006 (= c!134378 (is-Star!2064 (regTwo!4641 r!27177)))))

(declare-fun b!827008 () Bool)

(declare-fun res!380592 () Bool)

(assert (=> b!827008 (=> (not res!380592) (not e!545524))))

(assert (=> b!827008 (= res!380592 call!48116)))

(assert (=> b!827008 (= e!545523 e!545524)))

(assert (= (and d!259516 (not res!380586)) b!827006))

(assert (= (and b!827006 c!134378) b!826999))

(assert (= (and b!827006 (not c!134378)) b!827004))

(assert (= (and b!826999 res!380587) b!826998))

(assert (= (and b!827004 c!134377) b!827008))

(assert (= (and b!827004 (not c!134377)) b!827002))

(assert (= (and b!827008 res!380592) b!827001))

(assert (= (and b!827002 (not res!380588)) b!827003))

(assert (= (and b!827003 res!380589) b!827000))

(assert (= (or b!827008 b!827000) bm!48111))

(assert (= (or b!827001 b!827003) bm!48110))

(assert (= (or b!826998 bm!48110) bm!48109))

(declare-fun m!1065517 () Bool)

(assert (=> b!826999 m!1065517))

(declare-fun m!1065519 () Bool)

(assert (=> bm!48109 m!1065519))

(declare-fun m!1065521 () Bool)

(assert (=> bm!48111 m!1065521))

(assert (=> b!826935 d!259516))

(declare-fun d!259520 () Bool)

(declare-fun lt!317556 () Bool)

(declare-fun content!1303 (List!8890) (Set C!4698))

(assert (=> d!259520 (= lt!317556 (set.member c!13916 (content!1303 (firstChars!35 (regOne!4641 r!27177)))))))

(declare-fun e!545530 () Bool)

(assert (=> d!259520 (= lt!317556 e!545530)))

(declare-fun res!380597 () Bool)

(assert (=> d!259520 (=> (not res!380597) (not e!545530))))

(assert (=> d!259520 (= res!380597 (is-Cons!8874 (firstChars!35 (regOne!4641 r!27177))))))

(assert (=> d!259520 (= (contains!1655 (firstChars!35 (regOne!4641 r!27177)) c!13916) lt!317556)))

(declare-fun b!827013 () Bool)

(declare-fun e!545529 () Bool)

(assert (=> b!827013 (= e!545530 e!545529)))

(declare-fun res!380598 () Bool)

(assert (=> b!827013 (=> res!380598 e!545529)))

(assert (=> b!827013 (= res!380598 (= (h!14275 (firstChars!35 (regOne!4641 r!27177))) c!13916))))

(declare-fun b!827014 () Bool)

(assert (=> b!827014 (= e!545529 (contains!1655 (t!93182 (firstChars!35 (regOne!4641 r!27177))) c!13916))))

(assert (= (and d!259520 res!380597) b!827013))

(assert (= (and b!827013 (not res!380598)) b!827014))

(assert (=> d!259520 m!1065495))

(declare-fun m!1065523 () Bool)

(assert (=> d!259520 m!1065523))

(declare-fun m!1065525 () Bool)

(assert (=> d!259520 m!1065525))

(declare-fun m!1065527 () Bool)

(assert (=> b!827014 m!1065527))

(assert (=> b!826934 d!259520))

(declare-fun b!827053 () Bool)

(declare-fun e!545557 () List!8890)

(assert (=> b!827053 (= e!545557 Nil!8874)))

(declare-fun b!827054 () Bool)

(declare-fun e!545555 () List!8890)

(declare-fun call!48139 () List!8890)

(assert (=> b!827054 (= e!545555 call!48139)))

(declare-fun b!827055 () Bool)

(declare-fun e!545558 () List!8890)

(assert (=> b!827055 (= e!545558 call!48139)))

(declare-fun c!134397 () Bool)

(declare-fun call!48141 () List!8890)

(declare-fun call!48140 () List!8890)

(declare-fun call!48143 () List!8890)

(declare-fun bm!48134 () Bool)

(declare-fun ++!2291 (List!8890 List!8890) List!8890)

(assert (=> bm!48134 (= call!48139 (++!2291 (ite c!134397 call!48143 call!48141) (ite c!134397 call!48140 call!48143)))))

(declare-fun b!827056 () Bool)

(declare-fun c!134396 () Bool)

(assert (=> b!827056 (= c!134396 (is-Star!2064 (regOne!4641 r!27177)))))

(declare-fun e!545559 () List!8890)

(declare-fun e!545556 () List!8890)

(assert (=> b!827056 (= e!545559 e!545556)))

(declare-fun b!827057 () Bool)

(declare-fun c!134395 () Bool)

(assert (=> b!827057 (= c!134395 (nullable!515 (regOne!4640 (regOne!4641 r!27177))))))

(assert (=> b!827057 (= e!545558 e!545555)))

(declare-fun bm!48135 () Bool)

(assert (=> bm!48135 (= call!48140 (firstChars!35 (ite c!134397 (regTwo!4641 (regOne!4641 r!27177)) (regOne!4640 (regOne!4641 r!27177)))))))

(declare-fun b!827058 () Bool)

(assert (=> b!827058 (= e!545556 e!545558)))

(assert (=> b!827058 (= c!134397 (is-Union!2064 (regOne!4641 r!27177)))))

(declare-fun bm!48136 () Bool)

(assert (=> bm!48136 (= call!48141 call!48140)))

(declare-fun b!827059 () Bool)

(assert (=> b!827059 (= e!545557 e!545559)))

(declare-fun c!134394 () Bool)

(assert (=> b!827059 (= c!134394 (is-ElementMatch!2064 (regOne!4641 r!27177)))))

(declare-fun d!259522 () Bool)

(declare-fun c!134393 () Bool)

(assert (=> d!259522 (= c!134393 (or (is-EmptyExpr!2064 (regOne!4641 r!27177)) (is-EmptyLang!2064 (regOne!4641 r!27177))))))

(assert (=> d!259522 (= (firstChars!35 (regOne!4641 r!27177)) e!545557)))

(declare-fun bm!48137 () Bool)

(declare-fun call!48142 () List!8890)

(assert (=> bm!48137 (= call!48143 call!48142)))

(declare-fun b!827060 () Bool)

(assert (=> b!827060 (= e!545556 call!48142)))

(declare-fun b!827061 () Bool)

(assert (=> b!827061 (= e!545559 (Cons!8874 (c!134367 (regOne!4641 r!27177)) Nil!8874))))

(declare-fun bm!48138 () Bool)

(assert (=> bm!48138 (= call!48142 (firstChars!35 (ite c!134396 (reg!2393 (regOne!4641 r!27177)) (ite c!134397 (regOne!4641 (regOne!4641 r!27177)) (regTwo!4640 (regOne!4641 r!27177))))))))

(declare-fun b!827062 () Bool)

(assert (=> b!827062 (= e!545555 call!48141)))

(assert (= (and d!259522 c!134393) b!827053))

(assert (= (and d!259522 (not c!134393)) b!827059))

(assert (= (and b!827059 c!134394) b!827061))

(assert (= (and b!827059 (not c!134394)) b!827056))

(assert (= (and b!827056 c!134396) b!827060))

(assert (= (and b!827056 (not c!134396)) b!827058))

(assert (= (and b!827058 c!134397) b!827055))

(assert (= (and b!827058 (not c!134397)) b!827057))

(assert (= (and b!827057 c!134395) b!827054))

(assert (= (and b!827057 (not c!134395)) b!827062))

(assert (= (or b!827054 b!827062) bm!48136))

(assert (= (or b!827055 bm!48136) bm!48135))

(assert (= (or b!827055 b!827054) bm!48137))

(assert (= (or b!827055 b!827054) bm!48134))

(assert (= (or b!827060 bm!48137) bm!48138))

(declare-fun m!1065541 () Bool)

(assert (=> bm!48134 m!1065541))

(declare-fun m!1065543 () Bool)

(assert (=> b!827057 m!1065543))

(declare-fun m!1065545 () Bool)

(assert (=> bm!48135 m!1065545))

(declare-fun m!1065547 () Bool)

(assert (=> bm!48138 m!1065547))

(assert (=> b!826934 d!259522))

(declare-fun b!827063 () Bool)

(declare-fun e!545564 () Bool)

(declare-fun call!48144 () Bool)

(assert (=> b!827063 (= e!545564 call!48144)))

(declare-fun b!827064 () Bool)

(declare-fun e!545560 () Bool)

(assert (=> b!827064 (= e!545560 e!545564)))

(declare-fun res!380610 () Bool)

(assert (=> b!827064 (= res!380610 (not (nullable!515 (reg!2393 r!27177))))))

(assert (=> b!827064 (=> (not res!380610) (not e!545564))))

(declare-fun b!827065 () Bool)

(declare-fun e!545561 () Bool)

(declare-fun call!48146 () Bool)

(assert (=> b!827065 (= e!545561 call!48146)))

(declare-fun b!827066 () Bool)

(declare-fun e!545566 () Bool)

(declare-fun call!48145 () Bool)

(assert (=> b!827066 (= e!545566 call!48145)))

(declare-fun bm!48139 () Bool)

(declare-fun c!134398 () Bool)

(declare-fun c!134399 () Bool)

(assert (=> bm!48139 (= call!48144 (validRegex!617 (ite c!134399 (reg!2393 r!27177) (ite c!134398 (regTwo!4641 r!27177) (regOne!4640 r!27177)))))))

(declare-fun bm!48140 () Bool)

(assert (=> bm!48140 (= call!48145 call!48144)))

(declare-fun b!827067 () Bool)

(declare-fun res!380611 () Bool)

(declare-fun e!545562 () Bool)

(assert (=> b!827067 (=> res!380611 e!545562)))

(assert (=> b!827067 (= res!380611 (not (is-Concat!3795 r!27177)))))

(declare-fun e!545565 () Bool)

(assert (=> b!827067 (= e!545565 e!545562)))

(declare-fun d!259528 () Bool)

(declare-fun res!380609 () Bool)

(declare-fun e!545563 () Bool)

(assert (=> d!259528 (=> res!380609 e!545563)))

(assert (=> d!259528 (= res!380609 (is-ElementMatch!2064 r!27177))))

(assert (=> d!259528 (= (validRegex!617 r!27177) e!545563)))

(declare-fun b!827068 () Bool)

(assert (=> b!827068 (= e!545562 e!545561)))

(declare-fun res!380612 () Bool)

(assert (=> b!827068 (=> (not res!380612) (not e!545561))))

(assert (=> b!827068 (= res!380612 call!48145)))

(declare-fun b!827069 () Bool)

(assert (=> b!827069 (= e!545560 e!545565)))

(assert (=> b!827069 (= c!134398 (is-Union!2064 r!27177))))

(declare-fun bm!48141 () Bool)

(assert (=> bm!48141 (= call!48146 (validRegex!617 (ite c!134398 (regOne!4641 r!27177) (regTwo!4640 r!27177))))))

(declare-fun b!827070 () Bool)

(assert (=> b!827070 (= e!545563 e!545560)))

(assert (=> b!827070 (= c!134399 (is-Star!2064 r!27177))))

(declare-fun b!827071 () Bool)

(declare-fun res!380613 () Bool)

(assert (=> b!827071 (=> (not res!380613) (not e!545566))))

(assert (=> b!827071 (= res!380613 call!48146)))

(assert (=> b!827071 (= e!545565 e!545566)))

(assert (= (and d!259528 (not res!380609)) b!827070))

(assert (= (and b!827070 c!134399) b!827064))

(assert (= (and b!827070 (not c!134399)) b!827069))

(assert (= (and b!827064 res!380610) b!827063))

(assert (= (and b!827069 c!134398) b!827071))

(assert (= (and b!827069 (not c!134398)) b!827067))

(assert (= (and b!827071 res!380613) b!827066))

(assert (= (and b!827067 (not res!380611)) b!827068))

(assert (= (and b!827068 res!380612) b!827065))

(assert (= (or b!827071 b!827065) bm!48141))

(assert (= (or b!827066 b!827068) bm!48140))

(assert (= (or b!827063 bm!48140) bm!48139))

(declare-fun m!1065549 () Bool)

(assert (=> b!827064 m!1065549))

(declare-fun m!1065551 () Bool)

(assert (=> bm!48139 m!1065551))

(declare-fun m!1065553 () Bool)

(assert (=> bm!48141 m!1065553))

(assert (=> start!73860 d!259528))

(declare-fun d!259530 () Bool)

(declare-fun lt!317557 () Bool)

(assert (=> d!259530 (= lt!317557 (set.member c!13916 (content!1303 (firstChars!35 r!27177))))))

(declare-fun e!545568 () Bool)

(assert (=> d!259530 (= lt!317557 e!545568)))

(declare-fun res!380614 () Bool)

(assert (=> d!259530 (=> (not res!380614) (not e!545568))))

(assert (=> d!259530 (= res!380614 (is-Cons!8874 (firstChars!35 r!27177)))))

(assert (=> d!259530 (= (contains!1655 (firstChars!35 r!27177) c!13916) lt!317557)))

(declare-fun b!827072 () Bool)

(declare-fun e!545567 () Bool)

(assert (=> b!827072 (= e!545568 e!545567)))

(declare-fun res!380615 () Bool)

(assert (=> b!827072 (=> res!380615 e!545567)))

(assert (=> b!827072 (= res!380615 (= (h!14275 (firstChars!35 r!27177)) c!13916))))

(declare-fun b!827073 () Bool)

(assert (=> b!827073 (= e!545567 (contains!1655 (t!93182 (firstChars!35 r!27177)) c!13916))))

(assert (= (and d!259530 res!380614) b!827072))

(assert (= (and b!827072 (not res!380615)) b!827073))

(assert (=> d!259530 m!1065501))

(declare-fun m!1065555 () Bool)

(assert (=> d!259530 m!1065555))

(declare-fun m!1065557 () Bool)

(assert (=> d!259530 m!1065557))

(declare-fun m!1065559 () Bool)

(assert (=> b!827073 m!1065559))

(assert (=> b!826938 d!259530))

(declare-fun b!827074 () Bool)

(declare-fun e!545571 () List!8890)

(assert (=> b!827074 (= e!545571 Nil!8874)))

(declare-fun b!827075 () Bool)

(declare-fun e!545569 () List!8890)

(declare-fun call!48147 () List!8890)

(assert (=> b!827075 (= e!545569 call!48147)))

(declare-fun b!827076 () Bool)

(declare-fun e!545572 () List!8890)

(assert (=> b!827076 (= e!545572 call!48147)))

(declare-fun call!48149 () List!8890)

(declare-fun bm!48142 () Bool)

(declare-fun call!48151 () List!8890)

(declare-fun c!134404 () Bool)

(declare-fun call!48148 () List!8890)

(assert (=> bm!48142 (= call!48147 (++!2291 (ite c!134404 call!48151 call!48149) (ite c!134404 call!48148 call!48151)))))

(declare-fun b!827077 () Bool)

(declare-fun c!134403 () Bool)

(assert (=> b!827077 (= c!134403 (is-Star!2064 r!27177))))

(declare-fun e!545573 () List!8890)

(declare-fun e!545570 () List!8890)

(assert (=> b!827077 (= e!545573 e!545570)))

(declare-fun b!827078 () Bool)

(declare-fun c!134402 () Bool)

(assert (=> b!827078 (= c!134402 (nullable!515 (regOne!4640 r!27177)))))

(assert (=> b!827078 (= e!545572 e!545569)))

(declare-fun bm!48143 () Bool)

(assert (=> bm!48143 (= call!48148 (firstChars!35 (ite c!134404 (regTwo!4641 r!27177) (regOne!4640 r!27177))))))

(declare-fun b!827079 () Bool)

(assert (=> b!827079 (= e!545570 e!545572)))

(assert (=> b!827079 (= c!134404 (is-Union!2064 r!27177))))

(declare-fun bm!48144 () Bool)

(assert (=> bm!48144 (= call!48149 call!48148)))

(declare-fun b!827080 () Bool)

(assert (=> b!827080 (= e!545571 e!545573)))

(declare-fun c!134401 () Bool)

(assert (=> b!827080 (= c!134401 (is-ElementMatch!2064 r!27177))))

(declare-fun d!259532 () Bool)

(declare-fun c!134400 () Bool)

(assert (=> d!259532 (= c!134400 (or (is-EmptyExpr!2064 r!27177) (is-EmptyLang!2064 r!27177)))))

(assert (=> d!259532 (= (firstChars!35 r!27177) e!545571)))

(declare-fun bm!48145 () Bool)

(declare-fun call!48150 () List!8890)

(assert (=> bm!48145 (= call!48151 call!48150)))

(declare-fun b!827081 () Bool)

(assert (=> b!827081 (= e!545570 call!48150)))

(declare-fun b!827082 () Bool)

(assert (=> b!827082 (= e!545573 (Cons!8874 (c!134367 r!27177) Nil!8874))))

(declare-fun bm!48146 () Bool)

(assert (=> bm!48146 (= call!48150 (firstChars!35 (ite c!134403 (reg!2393 r!27177) (ite c!134404 (regOne!4641 r!27177) (regTwo!4640 r!27177)))))))

(declare-fun b!827083 () Bool)

(assert (=> b!827083 (= e!545569 call!48149)))

(assert (= (and d!259532 c!134400) b!827074))

(assert (= (and d!259532 (not c!134400)) b!827080))

(assert (= (and b!827080 c!134401) b!827082))

(assert (= (and b!827080 (not c!134401)) b!827077))

(assert (= (and b!827077 c!134403) b!827081))

(assert (= (and b!827077 (not c!134403)) b!827079))

(assert (= (and b!827079 c!134404) b!827076))

(assert (= (and b!827079 (not c!134404)) b!827078))

(assert (= (and b!827078 c!134402) b!827075))

(assert (= (and b!827078 (not c!134402)) b!827083))

(assert (= (or b!827075 b!827083) bm!48144))

(assert (= (or b!827076 bm!48144) bm!48143))

(assert (= (or b!827076 b!827075) bm!48145))

(assert (= (or b!827076 b!827075) bm!48142))

(assert (= (or b!827081 bm!48145) bm!48146))

(declare-fun m!1065561 () Bool)

(assert (=> bm!48142 m!1065561))

(declare-fun m!1065563 () Bool)

(assert (=> b!827078 m!1065563))

(declare-fun m!1065565 () Bool)

(assert (=> bm!48143 m!1065565))

(declare-fun m!1065567 () Bool)

(assert (=> bm!48146 m!1065567))

(assert (=> b!826938 d!259532))

(declare-fun b!827095 () Bool)

(declare-fun e!545578 () Bool)

(declare-fun tp!258678 () Bool)

(declare-fun tp!258679 () Bool)

(assert (=> b!827095 (= e!545578 (and tp!258678 tp!258679))))

(declare-fun b!827094 () Bool)

(assert (=> b!827094 (= e!545578 tp_is_empty!3851)))

(assert (=> b!826939 (= tp!258647 e!545578)))

(declare-fun b!827097 () Bool)

(declare-fun tp!258676 () Bool)

(declare-fun tp!258677 () Bool)

(assert (=> b!827097 (= e!545578 (and tp!258676 tp!258677))))

(declare-fun b!827096 () Bool)

(declare-fun tp!258675 () Bool)

(assert (=> b!827096 (= e!545578 tp!258675)))

(assert (= (and b!826939 (is-ElementMatch!2064 (regOne!4640 r!27177))) b!827094))

(assert (= (and b!826939 (is-Concat!3795 (regOne!4640 r!27177))) b!827095))

(assert (= (and b!826939 (is-Star!2064 (regOne!4640 r!27177))) b!827096))

(assert (= (and b!826939 (is-Union!2064 (regOne!4640 r!27177))) b!827097))

(declare-fun b!827103 () Bool)

(declare-fun e!545581 () Bool)

(declare-fun tp!258683 () Bool)

(declare-fun tp!258684 () Bool)

(assert (=> b!827103 (= e!545581 (and tp!258683 tp!258684))))

(declare-fun b!827102 () Bool)

(assert (=> b!827102 (= e!545581 tp_is_empty!3851)))

(assert (=> b!826939 (= tp!258645 e!545581)))

(declare-fun b!827105 () Bool)

(declare-fun tp!258681 () Bool)

(declare-fun tp!258682 () Bool)

(assert (=> b!827105 (= e!545581 (and tp!258681 tp!258682))))

(declare-fun b!827104 () Bool)

(declare-fun tp!258680 () Bool)

(assert (=> b!827104 (= e!545581 tp!258680)))

(assert (= (and b!826939 (is-ElementMatch!2064 (regTwo!4640 r!27177))) b!827102))

(assert (= (and b!826939 (is-Concat!3795 (regTwo!4640 r!27177))) b!827103))

(assert (= (and b!826939 (is-Star!2064 (regTwo!4640 r!27177))) b!827104))

(assert (= (and b!826939 (is-Union!2064 (regTwo!4640 r!27177))) b!827105))

(declare-fun b!827107 () Bool)

(declare-fun e!545582 () Bool)

(declare-fun tp!258688 () Bool)

(declare-fun tp!258689 () Bool)

(assert (=> b!827107 (= e!545582 (and tp!258688 tp!258689))))

(declare-fun b!827106 () Bool)

(assert (=> b!827106 (= e!545582 tp_is_empty!3851)))

(assert (=> b!826933 (= tp!258648 e!545582)))

(declare-fun b!827109 () Bool)

(declare-fun tp!258686 () Bool)

(declare-fun tp!258687 () Bool)

(assert (=> b!827109 (= e!545582 (and tp!258686 tp!258687))))

(declare-fun b!827108 () Bool)

(declare-fun tp!258685 () Bool)

(assert (=> b!827108 (= e!545582 tp!258685)))

(assert (= (and b!826933 (is-ElementMatch!2064 (regOne!4641 r!27177))) b!827106))

(assert (= (and b!826933 (is-Concat!3795 (regOne!4641 r!27177))) b!827107))

(assert (= (and b!826933 (is-Star!2064 (regOne!4641 r!27177))) b!827108))

(assert (= (and b!826933 (is-Union!2064 (regOne!4641 r!27177))) b!827109))

(declare-fun b!827111 () Bool)

(declare-fun e!545583 () Bool)

(declare-fun tp!258693 () Bool)

(declare-fun tp!258694 () Bool)

(assert (=> b!827111 (= e!545583 (and tp!258693 tp!258694))))

(declare-fun b!827110 () Bool)

(assert (=> b!827110 (= e!545583 tp_is_empty!3851)))

(assert (=> b!826933 (= tp!258646 e!545583)))

(declare-fun b!827113 () Bool)

(declare-fun tp!258691 () Bool)

(declare-fun tp!258692 () Bool)

(assert (=> b!827113 (= e!545583 (and tp!258691 tp!258692))))

(declare-fun b!827112 () Bool)

(declare-fun tp!258690 () Bool)

(assert (=> b!827112 (= e!545583 tp!258690)))

(assert (= (and b!826933 (is-ElementMatch!2064 (regTwo!4641 r!27177))) b!827110))

(assert (= (and b!826933 (is-Concat!3795 (regTwo!4641 r!27177))) b!827111))

(assert (= (and b!826933 (is-Star!2064 (regTwo!4641 r!27177))) b!827112))

(assert (= (and b!826933 (is-Union!2064 (regTwo!4641 r!27177))) b!827113))

(declare-fun b!827115 () Bool)

(declare-fun e!545584 () Bool)

(declare-fun tp!258698 () Bool)

(declare-fun tp!258699 () Bool)

(assert (=> b!827115 (= e!545584 (and tp!258698 tp!258699))))

(declare-fun b!827114 () Bool)

(assert (=> b!827114 (= e!545584 tp_is_empty!3851)))

(assert (=> b!826937 (= tp!258649 e!545584)))

(declare-fun b!827117 () Bool)

(declare-fun tp!258696 () Bool)

(declare-fun tp!258697 () Bool)

(assert (=> b!827117 (= e!545584 (and tp!258696 tp!258697))))

(declare-fun b!827116 () Bool)

(declare-fun tp!258695 () Bool)

(assert (=> b!827116 (= e!545584 tp!258695)))

(assert (= (and b!826937 (is-ElementMatch!2064 (reg!2393 r!27177))) b!827114))

(assert (= (and b!826937 (is-Concat!3795 (reg!2393 r!27177))) b!827115))

(assert (= (and b!826937 (is-Star!2064 (reg!2393 r!27177))) b!827116))

(assert (= (and b!826937 (is-Union!2064 (reg!2393 r!27177))) b!827117))

(push 1)

(assert (not bm!48141))

(assert (not b!826999))

(assert (not b!827112))

(assert (not b!827103))

(assert tp_is_empty!3851)

(assert (not b!827014))

(assert (not b!827097))

(assert (not b!827113))

(assert (not b!827104))

(assert (not b!827116))

(assert (not bm!48139))

(assert (not b!827109))

(assert (not b!827108))

(assert (not b!827111))

(assert (not b!827105))

(assert (not bm!48135))

(assert (not b!827095))

(assert (not b!827073))

(assert (not b!827107))

(assert (not b!827078))

(assert (not bm!48143))

(assert (not bm!48109))

(assert (not bm!48146))

(assert (not b!827115))

(assert (not b!827117))

(assert (not bm!48142))

(assert (not bm!48111))

(assert (not bm!48134))

(assert (not b!827096))

(assert (not b!827064))

(assert (not b!827057))

(assert (not d!259520))

(assert (not d!259530))

(assert (not bm!48138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

