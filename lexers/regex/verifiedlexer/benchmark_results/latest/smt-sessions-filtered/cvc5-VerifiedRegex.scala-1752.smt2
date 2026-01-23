; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!87700 () Bool)

(assert start!87700)

(declare-fun b!997356 () Bool)

(declare-fun e!639647 () Bool)

(declare-fun tp!304272 () Bool)

(declare-fun tp!304270 () Bool)

(assert (=> b!997356 (= e!639647 (and tp!304272 tp!304270))))

(declare-fun b!997357 () Bool)

(declare-fun tp!304273 () Bool)

(assert (=> b!997357 (= e!639647 tp!304273)))

(declare-fun b!997358 () Bool)

(declare-fun tp_is_empty!5167 () Bool)

(assert (=> b!997358 (= e!639647 tp_is_empty!5167)))

(declare-fun res!450469 () Bool)

(declare-fun e!639642 () Bool)

(assert (=> start!87700 (=> (not res!450469) (not e!639642))))

(declare-datatypes ((C!6094 0))(
  ( (C!6095 (val!3295 Int)) )
))
(declare-datatypes ((Regex!2762 0))(
  ( (ElementMatch!2762 (c!164077 C!6094)) (Concat!4595 (regOne!6036 Regex!2762) (regTwo!6036 Regex!2762)) (EmptyExpr!2762) (Star!2762 (reg!3091 Regex!2762)) (EmptyLang!2762) (Union!2762 (regOne!6037 Regex!2762) (regTwo!6037 Regex!2762)) )
))
(declare-fun r!15766 () Regex!2762)

(declare-fun validRegex!1231 (Regex!2762) Bool)

(assert (=> start!87700 (= res!450469 (validRegex!1231 r!15766))))

(assert (=> start!87700 e!639642))

(assert (=> start!87700 e!639647))

(declare-fun e!639644 () Bool)

(assert (=> start!87700 e!639644))

(declare-fun b!997359 () Bool)

(declare-fun e!639643 () Bool)

(declare-fun e!639646 () Bool)

(assert (=> b!997359 (= e!639643 e!639646)))

(declare-fun res!450470 () Bool)

(assert (=> b!997359 (=> res!450470 e!639646)))

(declare-fun lt!351503 () Bool)

(assert (=> b!997359 (= res!450470 (not lt!351503))))

(declare-fun e!639645 () Bool)

(assert (=> b!997359 e!639645))

(declare-fun res!450472 () Bool)

(assert (=> b!997359 (=> res!450472 e!639645)))

(assert (=> b!997359 (= res!450472 lt!351503)))

(declare-datatypes ((List!9992 0))(
  ( (Nil!9976) (Cons!9976 (h!15377 C!6094) (t!101038 List!9992)) )
))
(declare-fun s!10566 () List!9992)

(declare-fun matchR!1298 (Regex!2762 List!9992) Bool)

(assert (=> b!997359 (= lt!351503 (matchR!1298 (regOne!6037 r!15766) s!10566))))

(declare-datatypes ((Unit!15183 0))(
  ( (Unit!15184) )
))
(declare-fun lt!351505 () Unit!15183)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!69 (Regex!2762 Regex!2762 List!9992) Unit!15183)

(assert (=> b!997359 (= lt!351505 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!69 (regOne!6037 r!15766) (regTwo!6037 r!15766) s!10566))))

(declare-fun b!997360 () Bool)

(declare-fun tp!304274 () Bool)

(assert (=> b!997360 (= e!639644 (and tp_is_empty!5167 tp!304274))))

(declare-fun b!997361 () Bool)

(declare-fun tp!304271 () Bool)

(declare-fun tp!304269 () Bool)

(assert (=> b!997361 (= e!639647 (and tp!304271 tp!304269))))

(declare-fun b!997362 () Bool)

(assert (=> b!997362 (= e!639642 (not e!639643))))

(declare-fun res!450473 () Bool)

(assert (=> b!997362 (=> res!450473 e!639643)))

(declare-fun lt!351504 () Bool)

(assert (=> b!997362 (= res!450473 (or (not lt!351504) (and (is-Concat!4595 r!15766) (is-EmptyExpr!2762 (regOne!6036 r!15766))) (and (is-Concat!4595 r!15766) (is-EmptyExpr!2762 (regTwo!6036 r!15766))) (is-Concat!4595 r!15766) (not (is-Union!2762 r!15766))))))

(declare-fun matchRSpec!561 (Regex!2762 List!9992) Bool)

(assert (=> b!997362 (= lt!351504 (matchRSpec!561 r!15766 s!10566))))

(assert (=> b!997362 (= lt!351504 (matchR!1298 r!15766 s!10566))))

(declare-fun lt!351507 () Unit!15183)

(declare-fun mainMatchTheorem!561 (Regex!2762 List!9992) Unit!15183)

(assert (=> b!997362 (= lt!351507 (mainMatchTheorem!561 r!15766 s!10566))))

(declare-fun b!997363 () Bool)

(declare-fun lt!351506 () Int)

(declare-fun lt!351502 () Int)

(declare-fun regexDepth!23 (Regex!2762) Int)

(assert (=> b!997363 (= e!639646 (< (+ lt!351506 lt!351502) (+ (regexDepth!23 r!15766) lt!351502)))))

(declare-fun size!7962 (List!9992) Int)

(assert (=> b!997363 (= lt!351502 (size!7962 s!10566))))

(assert (=> b!997363 (= lt!351506 (regexDepth!23 (regOne!6037 r!15766)))))

(declare-fun b!997364 () Bool)

(assert (=> b!997364 (= e!639645 (matchR!1298 (regTwo!6037 r!15766) s!10566))))

(declare-fun b!997365 () Bool)

(declare-fun res!450471 () Bool)

(assert (=> b!997365 (=> res!450471 e!639646)))

(assert (=> b!997365 (= res!450471 (not (validRegex!1231 (regOne!6037 r!15766))))))

(assert (= (and start!87700 res!450469) b!997362))

(assert (= (and b!997362 (not res!450473)) b!997359))

(assert (= (and b!997359 (not res!450472)) b!997364))

(assert (= (and b!997359 (not res!450470)) b!997365))

(assert (= (and b!997365 (not res!450471)) b!997363))

(assert (= (and start!87700 (is-ElementMatch!2762 r!15766)) b!997358))

(assert (= (and start!87700 (is-Concat!4595 r!15766)) b!997361))

(assert (= (and start!87700 (is-Star!2762 r!15766)) b!997357))

(assert (= (and start!87700 (is-Union!2762 r!15766)) b!997356))

(assert (= (and start!87700 (is-Cons!9976 s!10566)) b!997360))

(declare-fun m!1188681 () Bool)

(assert (=> b!997365 m!1188681))

(declare-fun m!1188683 () Bool)

(assert (=> b!997359 m!1188683))

(declare-fun m!1188685 () Bool)

(assert (=> b!997359 m!1188685))

(declare-fun m!1188687 () Bool)

(assert (=> b!997362 m!1188687))

(declare-fun m!1188689 () Bool)

(assert (=> b!997362 m!1188689))

(declare-fun m!1188691 () Bool)

(assert (=> b!997362 m!1188691))

(declare-fun m!1188693 () Bool)

(assert (=> b!997363 m!1188693))

(declare-fun m!1188695 () Bool)

(assert (=> b!997363 m!1188695))

(declare-fun m!1188697 () Bool)

(assert (=> b!997363 m!1188697))

(declare-fun m!1188699 () Bool)

(assert (=> b!997364 m!1188699))

(declare-fun m!1188701 () Bool)

(assert (=> start!87700 m!1188701))

(push 1)

(assert tp_is_empty!5167)

(assert (not b!997365))

(assert (not b!997360))

(assert (not b!997356))

(assert (not start!87700))

(assert (not b!997362))

(assert (not b!997364))

(assert (not b!997359))

(assert (not b!997357))

(assert (not b!997361))

(assert (not b!997363))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!997450 () Bool)

(declare-fun res!450521 () Bool)

(declare-fun e!639709 () Bool)

(assert (=> b!997450 (=> res!450521 e!639709)))

(assert (=> b!997450 (= res!450521 (not (is-Concat!4595 r!15766)))))

(declare-fun e!639714 () Bool)

(assert (=> b!997450 (= e!639714 e!639709)))

(declare-fun b!997451 () Bool)

(declare-fun e!639710 () Bool)

(declare-fun call!66003 () Bool)

(assert (=> b!997451 (= e!639710 call!66003)))

(declare-fun b!997452 () Bool)

(declare-fun e!639711 () Bool)

(declare-fun e!639713 () Bool)

(assert (=> b!997452 (= e!639711 e!639713)))

(declare-fun c!164091 () Bool)

(assert (=> b!997452 (= c!164091 (is-Star!2762 r!15766))))

(declare-fun b!997453 () Bool)

(declare-fun e!639712 () Bool)

(assert (=> b!997453 (= e!639713 e!639712)))

(declare-fun res!450520 () Bool)

(declare-fun nullable!876 (Regex!2762) Bool)

(assert (=> b!997453 (= res!450520 (not (nullable!876 (reg!3091 r!15766))))))

(assert (=> b!997453 (=> (not res!450520) (not e!639712))))

(declare-fun d!290991 () Bool)

(declare-fun res!450523 () Bool)

(assert (=> d!290991 (=> res!450523 e!639711)))

(assert (=> d!290991 (= res!450523 (is-ElementMatch!2762 r!15766))))

(assert (=> d!290991 (= (validRegex!1231 r!15766) e!639711)))

(declare-fun b!997454 () Bool)

(declare-fun call!66002 () Bool)

(assert (=> b!997454 (= e!639712 call!66002)))

(declare-fun b!997455 () Bool)

(declare-fun e!639708 () Bool)

(assert (=> b!997455 (= e!639708 call!66003)))

(declare-fun bm!65997 () Bool)

(assert (=> bm!65997 (= call!66003 call!66002)))

(declare-fun b!997456 () Bool)

(declare-fun res!450519 () Bool)

(assert (=> b!997456 (=> (not res!450519) (not e!639710))))

(declare-fun call!66004 () Bool)

(assert (=> b!997456 (= res!450519 call!66004)))

(assert (=> b!997456 (= e!639714 e!639710)))

(declare-fun bm!65998 () Bool)

(declare-fun c!164092 () Bool)

(assert (=> bm!65998 (= call!66004 (validRegex!1231 (ite c!164092 (regOne!6037 r!15766) (regOne!6036 r!15766))))))

(declare-fun b!997457 () Bool)

(assert (=> b!997457 (= e!639709 e!639708)))

(declare-fun res!450522 () Bool)

(assert (=> b!997457 (=> (not res!450522) (not e!639708))))

(assert (=> b!997457 (= res!450522 call!66004)))

(declare-fun bm!65999 () Bool)

(assert (=> bm!65999 (= call!66002 (validRegex!1231 (ite c!164091 (reg!3091 r!15766) (ite c!164092 (regTwo!6037 r!15766) (regTwo!6036 r!15766)))))))

(declare-fun b!997458 () Bool)

(assert (=> b!997458 (= e!639713 e!639714)))

(assert (=> b!997458 (= c!164092 (is-Union!2762 r!15766))))

(assert (= (and d!290991 (not res!450523)) b!997452))

(assert (= (and b!997452 c!164091) b!997453))

(assert (= (and b!997452 (not c!164091)) b!997458))

(assert (= (and b!997453 res!450520) b!997454))

(assert (= (and b!997458 c!164092) b!997456))

(assert (= (and b!997458 (not c!164092)) b!997450))

(assert (= (and b!997456 res!450519) b!997451))

(assert (= (and b!997450 (not res!450521)) b!997457))

(assert (= (and b!997457 res!450522) b!997455))

(assert (= (or b!997451 b!997455) bm!65997))

(assert (= (or b!997456 b!997457) bm!65998))

(assert (= (or b!997454 bm!65997) bm!65999))

(declare-fun m!1188737 () Bool)

(assert (=> b!997453 m!1188737))

(declare-fun m!1188739 () Bool)

(assert (=> bm!65998 m!1188739))

(declare-fun m!1188741 () Bool)

(assert (=> bm!65999 m!1188741))

(assert (=> start!87700 d!290991))

(declare-fun b!997538 () Bool)

(declare-fun res!450554 () Bool)

(declare-fun e!639762 () Bool)

(assert (=> b!997538 (=> res!450554 e!639762)))

(declare-fun isEmpty!6314 (List!9992) Bool)

(declare-fun tail!1397 (List!9992) List!9992)

(assert (=> b!997538 (= res!450554 (not (isEmpty!6314 (tail!1397 s!10566))))))

(declare-fun b!997539 () Bool)

(declare-fun res!450553 () Bool)

(declare-fun e!639761 () Bool)

(assert (=> b!997539 (=> res!450553 e!639761)))

(declare-fun e!639763 () Bool)

(assert (=> b!997539 (= res!450553 e!639763)))

(declare-fun res!450549 () Bool)

(assert (=> b!997539 (=> (not res!450549) (not e!639763))))

(declare-fun lt!351531 () Bool)

(assert (=> b!997539 (= res!450549 lt!351531)))

(declare-fun d!290997 () Bool)

(declare-fun e!639759 () Bool)

(assert (=> d!290997 e!639759))

(declare-fun c!164120 () Bool)

(assert (=> d!290997 (= c!164120 (is-EmptyExpr!2762 (regTwo!6037 r!15766)))))

(declare-fun e!639760 () Bool)

(assert (=> d!290997 (= lt!351531 e!639760)))

(declare-fun c!164122 () Bool)

(assert (=> d!290997 (= c!164122 (isEmpty!6314 s!10566))))

(assert (=> d!290997 (validRegex!1231 (regTwo!6037 r!15766))))

(assert (=> d!290997 (= (matchR!1298 (regTwo!6037 r!15766) s!10566) lt!351531)))

(declare-fun b!997540 () Bool)

(declare-fun head!1835 (List!9992) C!6094)

(assert (=> b!997540 (= e!639762 (not (= (head!1835 s!10566) (c!164077 (regTwo!6037 r!15766)))))))

(declare-fun b!997541 () Bool)

(declare-fun e!639764 () Bool)

(assert (=> b!997541 (= e!639761 e!639764)))

(declare-fun res!450550 () Bool)

(assert (=> b!997541 (=> (not res!450550) (not e!639764))))

(assert (=> b!997541 (= res!450550 (not lt!351531))))

(declare-fun b!997542 () Bool)

(declare-fun e!639765 () Bool)

(assert (=> b!997542 (= e!639759 e!639765)))

(declare-fun c!164121 () Bool)

(assert (=> b!997542 (= c!164121 (is-EmptyLang!2762 (regTwo!6037 r!15766)))))

(declare-fun b!997543 () Bool)

(assert (=> b!997543 (= e!639760 (nullable!876 (regTwo!6037 r!15766)))))

(declare-fun b!997544 () Bool)

(declare-fun call!66028 () Bool)

(assert (=> b!997544 (= e!639759 (= lt!351531 call!66028))))

(declare-fun b!997545 () Bool)

(declare-fun res!450556 () Bool)

(assert (=> b!997545 (=> (not res!450556) (not e!639763))))

(assert (=> b!997545 (= res!450556 (isEmpty!6314 (tail!1397 s!10566)))))

(declare-fun b!997546 () Bool)

(declare-fun res!450555 () Bool)

(assert (=> b!997546 (=> res!450555 e!639761)))

(assert (=> b!997546 (= res!450555 (not (is-ElementMatch!2762 (regTwo!6037 r!15766))))))

(assert (=> b!997546 (= e!639765 e!639761)))

(declare-fun bm!66023 () Bool)

(assert (=> bm!66023 (= call!66028 (isEmpty!6314 s!10566))))

(declare-fun b!997547 () Bool)

(declare-fun derivativeStep!682 (Regex!2762 C!6094) Regex!2762)

(assert (=> b!997547 (= e!639760 (matchR!1298 (derivativeStep!682 (regTwo!6037 r!15766) (head!1835 s!10566)) (tail!1397 s!10566)))))

(declare-fun b!997548 () Bool)

(declare-fun res!450551 () Bool)

(assert (=> b!997548 (=> (not res!450551) (not e!639763))))

(assert (=> b!997548 (= res!450551 (not call!66028))))

(declare-fun b!997549 () Bool)

(assert (=> b!997549 (= e!639763 (= (head!1835 s!10566) (c!164077 (regTwo!6037 r!15766))))))

(declare-fun b!997550 () Bool)

(assert (=> b!997550 (= e!639765 (not lt!351531))))

(declare-fun b!997551 () Bool)

(assert (=> b!997551 (= e!639764 e!639762)))

(declare-fun res!450552 () Bool)

(assert (=> b!997551 (=> res!450552 e!639762)))

(assert (=> b!997551 (= res!450552 call!66028)))

(assert (= (and d!290997 c!164122) b!997543))

(assert (= (and d!290997 (not c!164122)) b!997547))

(assert (= (and d!290997 c!164120) b!997544))

(assert (= (and d!290997 (not c!164120)) b!997542))

(assert (= (and b!997542 c!164121) b!997550))

(assert (= (and b!997542 (not c!164121)) b!997546))

(assert (= (and b!997546 (not res!450555)) b!997539))

(assert (= (and b!997539 res!450549) b!997548))

(assert (= (and b!997548 res!450551) b!997545))

(assert (= (and b!997545 res!450556) b!997549))

(assert (= (and b!997539 (not res!450553)) b!997541))

(assert (= (and b!997541 res!450550) b!997551))

(assert (= (and b!997551 (not res!450552)) b!997538))

(assert (= (and b!997538 (not res!450554)) b!997540))

(assert (= (or b!997544 b!997548 b!997551) bm!66023))

(declare-fun m!1188753 () Bool)

(assert (=> d!290997 m!1188753))

(declare-fun m!1188755 () Bool)

(assert (=> d!290997 m!1188755))

(declare-fun m!1188757 () Bool)

(assert (=> b!997540 m!1188757))

(declare-fun m!1188759 () Bool)

(assert (=> b!997543 m!1188759))

(assert (=> b!997549 m!1188757))

(declare-fun m!1188761 () Bool)

(assert (=> b!997545 m!1188761))

(assert (=> b!997545 m!1188761))

(declare-fun m!1188763 () Bool)

(assert (=> b!997545 m!1188763))

(assert (=> b!997538 m!1188761))

(assert (=> b!997538 m!1188761))

(assert (=> b!997538 m!1188763))

(assert (=> bm!66023 m!1188753))

(assert (=> b!997547 m!1188757))

(assert (=> b!997547 m!1188757))

(declare-fun m!1188765 () Bool)

(assert (=> b!997547 m!1188765))

(assert (=> b!997547 m!1188761))

(assert (=> b!997547 m!1188765))

(assert (=> b!997547 m!1188761))

(declare-fun m!1188767 () Bool)

(assert (=> b!997547 m!1188767))

(assert (=> b!997364 d!290997))

(declare-fun b!997556 () Bool)

(declare-fun res!450562 () Bool)

(declare-fun e!639771 () Bool)

(assert (=> b!997556 (=> res!450562 e!639771)))

(assert (=> b!997556 (= res!450562 (not (isEmpty!6314 (tail!1397 s!10566))))))

(declare-fun b!997557 () Bool)

(declare-fun res!450561 () Bool)

(declare-fun e!639770 () Bool)

(assert (=> b!997557 (=> res!450561 e!639770)))

(declare-fun e!639772 () Bool)

(assert (=> b!997557 (= res!450561 e!639772)))

(declare-fun res!450557 () Bool)

(assert (=> b!997557 (=> (not res!450557) (not e!639772))))

(declare-fun lt!351534 () Bool)

(assert (=> b!997557 (= res!450557 lt!351534)))

(declare-fun d!291001 () Bool)

(declare-fun e!639768 () Bool)

(assert (=> d!291001 e!639768))

(declare-fun c!164125 () Bool)

(assert (=> d!291001 (= c!164125 (is-EmptyExpr!2762 (regOne!6037 r!15766)))))

(declare-fun e!639769 () Bool)

(assert (=> d!291001 (= lt!351534 e!639769)))

(declare-fun c!164127 () Bool)

(assert (=> d!291001 (= c!164127 (isEmpty!6314 s!10566))))

(assert (=> d!291001 (validRegex!1231 (regOne!6037 r!15766))))

(assert (=> d!291001 (= (matchR!1298 (regOne!6037 r!15766) s!10566) lt!351534)))

(declare-fun b!997558 () Bool)

(assert (=> b!997558 (= e!639771 (not (= (head!1835 s!10566) (c!164077 (regOne!6037 r!15766)))))))

(declare-fun b!997559 () Bool)

(declare-fun e!639773 () Bool)

(assert (=> b!997559 (= e!639770 e!639773)))

(declare-fun res!450558 () Bool)

(assert (=> b!997559 (=> (not res!450558) (not e!639773))))

(assert (=> b!997559 (= res!450558 (not lt!351534))))

(declare-fun b!997560 () Bool)

(declare-fun e!639774 () Bool)

(assert (=> b!997560 (= e!639768 e!639774)))

(declare-fun c!164126 () Bool)

(assert (=> b!997560 (= c!164126 (is-EmptyLang!2762 (regOne!6037 r!15766)))))

(declare-fun b!997561 () Bool)

(assert (=> b!997561 (= e!639769 (nullable!876 (regOne!6037 r!15766)))))

(declare-fun b!997562 () Bool)

(declare-fun call!66029 () Bool)

(assert (=> b!997562 (= e!639768 (= lt!351534 call!66029))))

(declare-fun b!997563 () Bool)

(declare-fun res!450564 () Bool)

(assert (=> b!997563 (=> (not res!450564) (not e!639772))))

(assert (=> b!997563 (= res!450564 (isEmpty!6314 (tail!1397 s!10566)))))

(declare-fun b!997564 () Bool)

(declare-fun res!450563 () Bool)

(assert (=> b!997564 (=> res!450563 e!639770)))

(assert (=> b!997564 (= res!450563 (not (is-ElementMatch!2762 (regOne!6037 r!15766))))))

(assert (=> b!997564 (= e!639774 e!639770)))

(declare-fun bm!66024 () Bool)

(assert (=> bm!66024 (= call!66029 (isEmpty!6314 s!10566))))

(declare-fun b!997565 () Bool)

(assert (=> b!997565 (= e!639769 (matchR!1298 (derivativeStep!682 (regOne!6037 r!15766) (head!1835 s!10566)) (tail!1397 s!10566)))))

(declare-fun b!997566 () Bool)

(declare-fun res!450559 () Bool)

(assert (=> b!997566 (=> (not res!450559) (not e!639772))))

(assert (=> b!997566 (= res!450559 (not call!66029))))

(declare-fun b!997567 () Bool)

(assert (=> b!997567 (= e!639772 (= (head!1835 s!10566) (c!164077 (regOne!6037 r!15766))))))

(declare-fun b!997568 () Bool)

(assert (=> b!997568 (= e!639774 (not lt!351534))))

(declare-fun b!997569 () Bool)

(assert (=> b!997569 (= e!639773 e!639771)))

(declare-fun res!450560 () Bool)

(assert (=> b!997569 (=> res!450560 e!639771)))

(assert (=> b!997569 (= res!450560 call!66029)))

(assert (= (and d!291001 c!164127) b!997561))

(assert (= (and d!291001 (not c!164127)) b!997565))

(assert (= (and d!291001 c!164125) b!997562))

(assert (= (and d!291001 (not c!164125)) b!997560))

(assert (= (and b!997560 c!164126) b!997568))

(assert (= (and b!997560 (not c!164126)) b!997564))

(assert (= (and b!997564 (not res!450563)) b!997557))

(assert (= (and b!997557 res!450557) b!997566))

(assert (= (and b!997566 res!450559) b!997563))

(assert (= (and b!997563 res!450564) b!997567))

(assert (= (and b!997557 (not res!450561)) b!997559))

(assert (= (and b!997559 res!450558) b!997569))

(assert (= (and b!997569 (not res!450560)) b!997556))

(assert (= (and b!997556 (not res!450562)) b!997558))

(assert (= (or b!997562 b!997566 b!997569) bm!66024))

(assert (=> d!291001 m!1188753))

(assert (=> d!291001 m!1188681))

(assert (=> b!997558 m!1188757))

(declare-fun m!1188769 () Bool)

(assert (=> b!997561 m!1188769))

(assert (=> b!997567 m!1188757))

(assert (=> b!997563 m!1188761))

(assert (=> b!997563 m!1188761))

(assert (=> b!997563 m!1188763))

(assert (=> b!997556 m!1188761))

(assert (=> b!997556 m!1188761))

(assert (=> b!997556 m!1188763))

(assert (=> bm!66024 m!1188753))

(assert (=> b!997565 m!1188757))

(assert (=> b!997565 m!1188757))

(declare-fun m!1188773 () Bool)

(assert (=> b!997565 m!1188773))

(assert (=> b!997565 m!1188761))

(assert (=> b!997565 m!1188773))

(assert (=> b!997565 m!1188761))

(declare-fun m!1188775 () Bool)

(assert (=> b!997565 m!1188775))

(assert (=> b!997359 d!291001))

(declare-fun d!291005 () Bool)

(declare-fun e!639791 () Bool)

(assert (=> d!291005 e!639791))

(declare-fun res!450572 () Bool)

(assert (=> d!291005 (=> res!450572 e!639791)))

(assert (=> d!291005 (= res!450572 (matchR!1298 (regOne!6037 r!15766) s!10566))))

(declare-fun lt!351539 () Unit!15183)

(declare-fun choose!6305 (Regex!2762 Regex!2762 List!9992) Unit!15183)

(assert (=> d!291005 (= lt!351539 (choose!6305 (regOne!6037 r!15766) (regTwo!6037 r!15766) s!10566))))

(declare-fun e!639790 () Bool)

(assert (=> d!291005 e!639790))

(declare-fun res!450573 () Bool)

(assert (=> d!291005 (=> (not res!450573) (not e!639790))))

(assert (=> d!291005 (= res!450573 (validRegex!1231 (regOne!6037 r!15766)))))

(assert (=> d!291005 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!69 (regOne!6037 r!15766) (regTwo!6037 r!15766) s!10566) lt!351539)))

(declare-fun b!997593 () Bool)

(assert (=> b!997593 (= e!639790 (validRegex!1231 (regTwo!6037 r!15766)))))

(declare-fun b!997594 () Bool)

(assert (=> b!997594 (= e!639791 (matchR!1298 (regTwo!6037 r!15766) s!10566))))

(assert (= (and d!291005 res!450573) b!997593))

(assert (= (and d!291005 (not res!450572)) b!997594))

(assert (=> d!291005 m!1188683))

(declare-fun m!1188787 () Bool)

(assert (=> d!291005 m!1188787))

(assert (=> d!291005 m!1188681))

(assert (=> b!997593 m!1188755))

(assert (=> b!997594 m!1188699))

(assert (=> b!997359 d!291005))

(declare-fun b!997595 () Bool)

(declare-fun res!450576 () Bool)

(declare-fun e!639793 () Bool)

(assert (=> b!997595 (=> res!450576 e!639793)))

(assert (=> b!997595 (= res!450576 (not (is-Concat!4595 (regOne!6037 r!15766))))))

(declare-fun e!639798 () Bool)

(assert (=> b!997595 (= e!639798 e!639793)))

(declare-fun b!997596 () Bool)

(declare-fun e!639794 () Bool)

(declare-fun call!66038 () Bool)

(assert (=> b!997596 (= e!639794 call!66038)))

(declare-fun b!997597 () Bool)

(declare-fun e!639795 () Bool)

(declare-fun e!639797 () Bool)

(assert (=> b!997597 (= e!639795 e!639797)))

(declare-fun c!164136 () Bool)

(assert (=> b!997597 (= c!164136 (is-Star!2762 (regOne!6037 r!15766)))))

(declare-fun b!997598 () Bool)

(declare-fun e!639796 () Bool)

(assert (=> b!997598 (= e!639797 e!639796)))

(declare-fun res!450575 () Bool)

(assert (=> b!997598 (= res!450575 (not (nullable!876 (reg!3091 (regOne!6037 r!15766)))))))

(assert (=> b!997598 (=> (not res!450575) (not e!639796))))

(declare-fun d!291009 () Bool)

(declare-fun res!450578 () Bool)

(assert (=> d!291009 (=> res!450578 e!639795)))

(assert (=> d!291009 (= res!450578 (is-ElementMatch!2762 (regOne!6037 r!15766)))))

(assert (=> d!291009 (= (validRegex!1231 (regOne!6037 r!15766)) e!639795)))

(declare-fun b!997599 () Bool)

(declare-fun call!66037 () Bool)

(assert (=> b!997599 (= e!639796 call!66037)))

(declare-fun b!997600 () Bool)

(declare-fun e!639792 () Bool)

(assert (=> b!997600 (= e!639792 call!66038)))

(declare-fun bm!66032 () Bool)

(assert (=> bm!66032 (= call!66038 call!66037)))

(declare-fun b!997601 () Bool)

(declare-fun res!450574 () Bool)

(assert (=> b!997601 (=> (not res!450574) (not e!639794))))

(declare-fun call!66039 () Bool)

(assert (=> b!997601 (= res!450574 call!66039)))

(assert (=> b!997601 (= e!639798 e!639794)))

(declare-fun bm!66033 () Bool)

(declare-fun c!164137 () Bool)

(assert (=> bm!66033 (= call!66039 (validRegex!1231 (ite c!164137 (regOne!6037 (regOne!6037 r!15766)) (regOne!6036 (regOne!6037 r!15766)))))))

(declare-fun b!997602 () Bool)

(assert (=> b!997602 (= e!639793 e!639792)))

(declare-fun res!450577 () Bool)

(assert (=> b!997602 (=> (not res!450577) (not e!639792))))

(assert (=> b!997602 (= res!450577 call!66039)))

(declare-fun bm!66034 () Bool)

(assert (=> bm!66034 (= call!66037 (validRegex!1231 (ite c!164136 (reg!3091 (regOne!6037 r!15766)) (ite c!164137 (regTwo!6037 (regOne!6037 r!15766)) (regTwo!6036 (regOne!6037 r!15766))))))))

(declare-fun b!997603 () Bool)

(assert (=> b!997603 (= e!639797 e!639798)))

(assert (=> b!997603 (= c!164137 (is-Union!2762 (regOne!6037 r!15766)))))

(assert (= (and d!291009 (not res!450578)) b!997597))

(assert (= (and b!997597 c!164136) b!997598))

(assert (= (and b!997597 (not c!164136)) b!997603))

(assert (= (and b!997598 res!450575) b!997599))

(assert (= (and b!997603 c!164137) b!997601))

(assert (= (and b!997603 (not c!164137)) b!997595))

(assert (= (and b!997601 res!450574) b!997596))

(assert (= (and b!997595 (not res!450576)) b!997602))

(assert (= (and b!997602 res!450577) b!997600))

(assert (= (or b!997596 b!997600) bm!66032))

(assert (= (or b!997601 b!997602) bm!66033))

(assert (= (or b!997599 bm!66032) bm!66034))

(declare-fun m!1188789 () Bool)

(assert (=> b!997598 m!1188789))

(declare-fun m!1188791 () Bool)

(assert (=> bm!66033 m!1188791))

(declare-fun m!1188793 () Bool)

(assert (=> bm!66034 m!1188793))

(assert (=> b!997365 d!291009))

(declare-fun b!997694 () Bool)

(declare-fun e!639849 () Bool)

(declare-fun lt!351546 () Int)

(declare-fun call!66062 () Int)

(assert (=> b!997694 (= e!639849 (> lt!351546 call!66062))))

(declare-fun b!997695 () Bool)

(declare-fun e!639847 () Int)

(assert (=> b!997695 (= e!639847 1)))

(declare-fun b!997696 () Bool)

(declare-fun e!639850 () Bool)

(declare-fun e!639852 () Bool)

(assert (=> b!997696 (= e!639850 e!639852)))

(declare-fun c!164164 () Bool)

(assert (=> b!997696 (= c!164164 (is-Union!2762 r!15766))))

(declare-fun b!997698 () Bool)

(declare-fun res!450619 () Bool)

(declare-fun e!639853 () Bool)

(assert (=> b!997698 (=> (not res!450619) (not e!639853))))

(declare-fun call!66058 () Int)

(assert (=> b!997698 (= res!450619 (> lt!351546 call!66058))))

(declare-fun e!639848 () Bool)

(assert (=> b!997698 (= e!639848 e!639853)))

(declare-fun b!997699 () Bool)

(declare-fun c!164169 () Bool)

(assert (=> b!997699 (= c!164169 (is-Union!2762 r!15766))))

(declare-fun e!639856 () Int)

(declare-fun e!639854 () Int)

(assert (=> b!997699 (= e!639856 e!639854)))

(declare-fun b!997700 () Bool)

(declare-fun call!66060 () Int)

(assert (=> b!997700 (= e!639853 (> lt!351546 call!66060))))

(declare-fun bm!66053 () Bool)

(assert (=> bm!66053 (= call!66060 call!66062)))

(declare-fun b!997701 () Bool)

(declare-fun c!164165 () Bool)

(assert (=> b!997701 (= c!164165 (is-Star!2762 r!15766))))

(declare-fun e!639855 () Bool)

(assert (=> b!997701 (= e!639848 e!639855)))

(declare-fun b!997702 () Bool)

(declare-fun e!639851 () Int)

(assert (=> b!997702 (= e!639854 e!639851)))

(declare-fun c!164168 () Bool)

(assert (=> b!997702 (= c!164168 (is-Concat!4595 r!15766))))

(declare-fun b!997703 () Bool)

(declare-fun call!66059 () Int)

(assert (=> b!997703 (= e!639856 (+ 1 call!66059))))

(declare-fun c!164167 () Bool)

(declare-fun bm!66054 () Bool)

(assert (=> bm!66054 (= call!66062 (regexDepth!23 (ite c!164164 (regTwo!6037 r!15766) (ite c!164167 (regTwo!6036 r!15766) (reg!3091 r!15766)))))))

(declare-fun b!997704 () Bool)

(assert (=> b!997704 (= e!639847 e!639856)))

(declare-fun c!164166 () Bool)

(assert (=> b!997704 (= c!164166 (is-Star!2762 r!15766))))

(declare-fun b!997705 () Bool)

(assert (=> b!997705 (= e!639855 (= lt!351546 1))))

(declare-fun b!997706 () Bool)

(declare-fun call!66064 () Int)

(assert (=> b!997706 (= e!639851 (+ 1 call!66064))))

(declare-fun bm!66055 () Bool)

(declare-fun call!66063 () Int)

(declare-fun call!66061 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!66055 (= call!66064 (maxBigInt!0 call!66063 call!66061))))

(declare-fun b!997707 () Bool)

(assert (=> b!997707 (= e!639851 1)))

(declare-fun d!291011 () Bool)

(assert (=> d!291011 e!639850))

(declare-fun res!450618 () Bool)

(assert (=> d!291011 (=> (not res!450618) (not e!639850))))

(assert (=> d!291011 (= res!450618 (> lt!351546 0))))

(assert (=> d!291011 (= lt!351546 e!639847)))

(declare-fun c!164170 () Bool)

(assert (=> d!291011 (= c!164170 (is-ElementMatch!2762 r!15766))))

(assert (=> d!291011 (= (regexDepth!23 r!15766) lt!351546)))

(declare-fun b!997697 () Bool)

(assert (=> b!997697 (= e!639855 (> lt!351546 call!66060))))

(declare-fun b!997708 () Bool)

(assert (=> b!997708 (= e!639852 e!639849)))

(declare-fun res!450617 () Bool)

(assert (=> b!997708 (= res!450617 (> lt!351546 call!66058))))

(assert (=> b!997708 (=> (not res!450617) (not e!639849))))

(declare-fun bm!66056 () Bool)

(assert (=> bm!66056 (= call!66063 call!66059)))

(declare-fun bm!66057 () Bool)

(assert (=> bm!66057 (= call!66058 (regexDepth!23 (ite c!164164 (regOne!6037 r!15766) (regOne!6036 r!15766))))))

(declare-fun bm!66058 () Bool)

(assert (=> bm!66058 (= call!66061 (regexDepth!23 (ite c!164169 (regTwo!6037 r!15766) (regTwo!6036 r!15766))))))

(declare-fun bm!66059 () Bool)

(assert (=> bm!66059 (= call!66059 (regexDepth!23 (ite c!164166 (reg!3091 r!15766) (ite c!164169 (regOne!6037 r!15766) (regOne!6036 r!15766)))))))

(declare-fun b!997709 () Bool)

(assert (=> b!997709 (= e!639852 e!639848)))

(assert (=> b!997709 (= c!164167 (is-Concat!4595 r!15766))))

(declare-fun b!997710 () Bool)

(assert (=> b!997710 (= e!639854 (+ 1 call!66064))))

(assert (= (and d!291011 c!164170) b!997695))

(assert (= (and d!291011 (not c!164170)) b!997704))

(assert (= (and b!997704 c!164166) b!997703))

(assert (= (and b!997704 (not c!164166)) b!997699))

(assert (= (and b!997699 c!164169) b!997710))

(assert (= (and b!997699 (not c!164169)) b!997702))

(assert (= (and b!997702 c!164168) b!997706))

(assert (= (and b!997702 (not c!164168)) b!997707))

(assert (= (or b!997710 b!997706) bm!66058))

(assert (= (or b!997710 b!997706) bm!66056))

(assert (= (or b!997710 b!997706) bm!66055))

(assert (= (or b!997703 bm!66056) bm!66059))

(assert (= (and d!291011 res!450618) b!997696))

(assert (= (and b!997696 c!164164) b!997708))

(assert (= (and b!997696 (not c!164164)) b!997709))

(assert (= (and b!997708 res!450617) b!997694))

(assert (= (and b!997709 c!164167) b!997698))

(assert (= (and b!997709 (not c!164167)) b!997701))

(assert (= (and b!997698 res!450619) b!997700))

(assert (= (and b!997701 c!164165) b!997697))

(assert (= (and b!997701 (not c!164165)) b!997705))

(assert (= (or b!997700 b!997697) bm!66053))

(assert (= (or b!997694 bm!66053) bm!66054))

(assert (= (or b!997708 b!997698) bm!66057))

(declare-fun m!1188817 () Bool)

(assert (=> bm!66055 m!1188817))

(declare-fun m!1188819 () Bool)

(assert (=> bm!66058 m!1188819))

(declare-fun m!1188821 () Bool)

(assert (=> bm!66059 m!1188821))

(declare-fun m!1188823 () Bool)

(assert (=> bm!66054 m!1188823))

(declare-fun m!1188825 () Bool)

(assert (=> bm!66057 m!1188825))

(assert (=> b!997363 d!291011))

(declare-fun d!291017 () Bool)

(declare-fun lt!351549 () Int)

(assert (=> d!291017 (>= lt!351549 0)))

(declare-fun e!639859 () Int)

(assert (=> d!291017 (= lt!351549 e!639859)))

(declare-fun c!164173 () Bool)

(assert (=> d!291017 (= c!164173 (is-Nil!9976 s!10566))))

(assert (=> d!291017 (= (size!7962 s!10566) lt!351549)))

(declare-fun b!997715 () Bool)

(assert (=> b!997715 (= e!639859 0)))

(declare-fun b!997716 () Bool)

(assert (=> b!997716 (= e!639859 (+ 1 (size!7962 (t!101038 s!10566))))))

(assert (= (and d!291017 c!164173) b!997715))

(assert (= (and d!291017 (not c!164173)) b!997716))

(declare-fun m!1188827 () Bool)

(assert (=> b!997716 m!1188827))

(assert (=> b!997363 d!291017))

(declare-fun b!997721 () Bool)

(declare-fun e!639866 () Bool)

(declare-fun lt!351552 () Int)

(declare-fun call!66069 () Int)

(assert (=> b!997721 (= e!639866 (> lt!351552 call!66069))))

(declare-fun b!997722 () Bool)

(declare-fun e!639864 () Int)

(assert (=> b!997722 (= e!639864 1)))

(declare-fun b!997723 () Bool)

(declare-fun e!639867 () Bool)

(declare-fun e!639869 () Bool)

(assert (=> b!997723 (= e!639867 e!639869)))

(declare-fun c!164174 () Bool)

(assert (=> b!997723 (= c!164174 (is-Union!2762 (regOne!6037 r!15766)))))

(declare-fun b!997725 () Bool)

(declare-fun res!450626 () Bool)

(declare-fun e!639870 () Bool)

(assert (=> b!997725 (=> (not res!450626) (not e!639870))))

(declare-fun call!66065 () Int)

(assert (=> b!997725 (= res!450626 (> lt!351552 call!66065))))

(declare-fun e!639865 () Bool)

(assert (=> b!997725 (= e!639865 e!639870)))

(declare-fun b!997726 () Bool)

(declare-fun c!164179 () Bool)

(assert (=> b!997726 (= c!164179 (is-Union!2762 (regOne!6037 r!15766)))))

(declare-fun e!639873 () Int)

(declare-fun e!639871 () Int)

(assert (=> b!997726 (= e!639873 e!639871)))

(declare-fun b!997727 () Bool)

(declare-fun call!66067 () Int)

(assert (=> b!997727 (= e!639870 (> lt!351552 call!66067))))

(declare-fun bm!66060 () Bool)

(assert (=> bm!66060 (= call!66067 call!66069)))

(declare-fun b!997728 () Bool)

(declare-fun c!164175 () Bool)

(assert (=> b!997728 (= c!164175 (is-Star!2762 (regOne!6037 r!15766)))))

(declare-fun e!639872 () Bool)

(assert (=> b!997728 (= e!639865 e!639872)))

(declare-fun b!997729 () Bool)

(declare-fun e!639868 () Int)

(assert (=> b!997729 (= e!639871 e!639868)))

(declare-fun c!164178 () Bool)

(assert (=> b!997729 (= c!164178 (is-Concat!4595 (regOne!6037 r!15766)))))

(declare-fun b!997730 () Bool)

(declare-fun call!66066 () Int)

(assert (=> b!997730 (= e!639873 (+ 1 call!66066))))

(declare-fun c!164177 () Bool)

(declare-fun bm!66061 () Bool)

(assert (=> bm!66061 (= call!66069 (regexDepth!23 (ite c!164174 (regTwo!6037 (regOne!6037 r!15766)) (ite c!164177 (regTwo!6036 (regOne!6037 r!15766)) (reg!3091 (regOne!6037 r!15766))))))))

(declare-fun b!997731 () Bool)

(assert (=> b!997731 (= e!639864 e!639873)))

(declare-fun c!164176 () Bool)

(assert (=> b!997731 (= c!164176 (is-Star!2762 (regOne!6037 r!15766)))))

(declare-fun b!997732 () Bool)

(assert (=> b!997732 (= e!639872 (= lt!351552 1))))

(declare-fun b!997733 () Bool)

(declare-fun call!66071 () Int)

(assert (=> b!997733 (= e!639868 (+ 1 call!66071))))

(declare-fun bm!66062 () Bool)

(declare-fun call!66070 () Int)

(declare-fun call!66068 () Int)

(assert (=> bm!66062 (= call!66071 (maxBigInt!0 call!66070 call!66068))))

(declare-fun b!997734 () Bool)

(assert (=> b!997734 (= e!639868 1)))

(declare-fun d!291019 () Bool)

(assert (=> d!291019 e!639867))

(declare-fun res!450625 () Bool)

(assert (=> d!291019 (=> (not res!450625) (not e!639867))))

(assert (=> d!291019 (= res!450625 (> lt!351552 0))))

(assert (=> d!291019 (= lt!351552 e!639864)))

(declare-fun c!164180 () Bool)

(assert (=> d!291019 (= c!164180 (is-ElementMatch!2762 (regOne!6037 r!15766)))))

(assert (=> d!291019 (= (regexDepth!23 (regOne!6037 r!15766)) lt!351552)))

(declare-fun b!997724 () Bool)

(assert (=> b!997724 (= e!639872 (> lt!351552 call!66067))))

(declare-fun b!997735 () Bool)

(assert (=> b!997735 (= e!639869 e!639866)))

(declare-fun res!450624 () Bool)

(assert (=> b!997735 (= res!450624 (> lt!351552 call!66065))))

(assert (=> b!997735 (=> (not res!450624) (not e!639866))))

(declare-fun bm!66063 () Bool)

(assert (=> bm!66063 (= call!66070 call!66066)))

(declare-fun bm!66064 () Bool)

(assert (=> bm!66064 (= call!66065 (regexDepth!23 (ite c!164174 (regOne!6037 (regOne!6037 r!15766)) (regOne!6036 (regOne!6037 r!15766)))))))

(declare-fun bm!66065 () Bool)

(assert (=> bm!66065 (= call!66068 (regexDepth!23 (ite c!164179 (regTwo!6037 (regOne!6037 r!15766)) (regTwo!6036 (regOne!6037 r!15766)))))))

(declare-fun bm!66066 () Bool)

(assert (=> bm!66066 (= call!66066 (regexDepth!23 (ite c!164176 (reg!3091 (regOne!6037 r!15766)) (ite c!164179 (regOne!6037 (regOne!6037 r!15766)) (regOne!6036 (regOne!6037 r!15766))))))))

(declare-fun b!997736 () Bool)

(assert (=> b!997736 (= e!639869 e!639865)))

(assert (=> b!997736 (= c!164177 (is-Concat!4595 (regOne!6037 r!15766)))))

(declare-fun b!997737 () Bool)

(assert (=> b!997737 (= e!639871 (+ 1 call!66071))))

(assert (= (and d!291019 c!164180) b!997722))

(assert (= (and d!291019 (not c!164180)) b!997731))

(assert (= (and b!997731 c!164176) b!997730))

(assert (= (and b!997731 (not c!164176)) b!997726))

(assert (= (and b!997726 c!164179) b!997737))

(assert (= (and b!997726 (not c!164179)) b!997729))

(assert (= (and b!997729 c!164178) b!997733))

(assert (= (and b!997729 (not c!164178)) b!997734))

(assert (= (or b!997737 b!997733) bm!66065))

(assert (= (or b!997737 b!997733) bm!66063))

(assert (= (or b!997737 b!997733) bm!66062))

(assert (= (or b!997730 bm!66063) bm!66066))

(assert (= (and d!291019 res!450625) b!997723))

(assert (= (and b!997723 c!164174) b!997735))

(assert (= (and b!997723 (not c!164174)) b!997736))

(assert (= (and b!997735 res!450624) b!997721))

(assert (= (and b!997736 c!164177) b!997725))

(assert (= (and b!997736 (not c!164177)) b!997728))

(assert (= (and b!997725 res!450626) b!997727))

(assert (= (and b!997728 c!164175) b!997724))

(assert (= (and b!997728 (not c!164175)) b!997732))

(assert (= (or b!997727 b!997724) bm!66060))

(assert (= (or b!997721 bm!66060) bm!66061))

(assert (= (or b!997735 b!997725) bm!66064))

(declare-fun m!1188829 () Bool)

(assert (=> bm!66062 m!1188829))

(declare-fun m!1188831 () Bool)

(assert (=> bm!66065 m!1188831))

(declare-fun m!1188833 () Bool)

(assert (=> bm!66066 m!1188833))

(declare-fun m!1188835 () Bool)

(assert (=> bm!66061 m!1188835))

(declare-fun m!1188837 () Bool)

(assert (=> bm!66064 m!1188837))

(assert (=> b!997363 d!291019))

(declare-fun b!997797 () Bool)

(assert (=> b!997797 true))

(assert (=> b!997797 true))

(declare-fun bs!245056 () Bool)

(declare-fun b!997804 () Bool)

(assert (= bs!245056 (and b!997804 b!997797)))

(declare-fun lambda!35460 () Int)

(declare-fun lambda!35459 () Int)

(assert (=> bs!245056 (not (= lambda!35460 lambda!35459))))

(assert (=> b!997804 true))

(assert (=> b!997804 true))

(declare-fun b!997794 () Bool)

(declare-fun e!639914 () Bool)

(assert (=> b!997794 (= e!639914 (= s!10566 (Cons!9976 (c!164077 r!15766) Nil!9976)))))

(declare-fun bm!66071 () Bool)

(declare-fun call!66077 () Bool)

(assert (=> bm!66071 (= call!66077 (isEmpty!6314 s!10566))))

(declare-fun call!66076 () Bool)

(declare-fun c!164197 () Bool)

(declare-fun bm!66072 () Bool)

(declare-fun Exists!497 (Int) Bool)

(assert (=> bm!66072 (= call!66076 (Exists!497 (ite c!164197 lambda!35459 lambda!35460)))))

(declare-fun b!997795 () Bool)

(declare-fun e!639908 () Bool)

(declare-fun e!639911 () Bool)

(assert (=> b!997795 (= e!639908 e!639911)))

(assert (=> b!997795 (= c!164197 (is-Star!2762 r!15766))))

(declare-fun e!639910 () Bool)

(assert (=> b!997797 (= e!639910 call!66076)))

(declare-fun b!997798 () Bool)

(declare-fun c!164200 () Bool)

(assert (=> b!997798 (= c!164200 (is-Union!2762 r!15766))))

(assert (=> b!997798 (= e!639914 e!639908)))

(declare-fun b!997799 () Bool)

(declare-fun c!164198 () Bool)

(assert (=> b!997799 (= c!164198 (is-ElementMatch!2762 r!15766))))

(declare-fun e!639909 () Bool)

(assert (=> b!997799 (= e!639909 e!639914)))

(declare-fun b!997800 () Bool)

(declare-fun e!639913 () Bool)

(assert (=> b!997800 (= e!639913 call!66077)))

(declare-fun b!997801 () Bool)

(declare-fun e!639912 () Bool)

(assert (=> b!997801 (= e!639908 e!639912)))

(declare-fun res!450652 () Bool)

(assert (=> b!997801 (= res!450652 (matchRSpec!561 (regOne!6037 r!15766) s!10566))))

(assert (=> b!997801 (=> res!450652 e!639912)))

(declare-fun b!997802 () Bool)

(declare-fun res!450653 () Bool)

(assert (=> b!997802 (=> res!450653 e!639910)))

(assert (=> b!997802 (= res!450653 call!66077)))

(assert (=> b!997802 (= e!639911 e!639910)))

(declare-fun b!997803 () Bool)

(assert (=> b!997803 (= e!639913 e!639909)))

(declare-fun res!450651 () Bool)

(assert (=> b!997803 (= res!450651 (not (is-EmptyLang!2762 r!15766)))))

(assert (=> b!997803 (=> (not res!450651) (not e!639909))))

(assert (=> b!997804 (= e!639911 call!66076)))

(declare-fun d!291021 () Bool)

(declare-fun c!164199 () Bool)

(assert (=> d!291021 (= c!164199 (is-EmptyExpr!2762 r!15766))))

(assert (=> d!291021 (= (matchRSpec!561 r!15766 s!10566) e!639913)))

(declare-fun b!997796 () Bool)

(assert (=> b!997796 (= e!639912 (matchRSpec!561 (regTwo!6037 r!15766) s!10566))))

(assert (= (and d!291021 c!164199) b!997800))

(assert (= (and d!291021 (not c!164199)) b!997803))

(assert (= (and b!997803 res!450651) b!997799))

(assert (= (and b!997799 c!164198) b!997794))

(assert (= (and b!997799 (not c!164198)) b!997798))

(assert (= (and b!997798 c!164200) b!997801))

(assert (= (and b!997798 (not c!164200)) b!997795))

(assert (= (and b!997801 (not res!450652)) b!997796))

(assert (= (and b!997795 c!164197) b!997802))

(assert (= (and b!997795 (not c!164197)) b!997804))

(assert (= (and b!997802 (not res!450653)) b!997797))

(assert (= (or b!997797 b!997804) bm!66072))

(assert (= (or b!997800 b!997802) bm!66071))

(assert (=> bm!66071 m!1188753))

(declare-fun m!1188841 () Bool)

(assert (=> bm!66072 m!1188841))

(declare-fun m!1188843 () Bool)

(assert (=> b!997801 m!1188843))

(declare-fun m!1188845 () Bool)

(assert (=> b!997796 m!1188845))

(assert (=> b!997362 d!291021))

(declare-fun b!997809 () Bool)

(declare-fun res!450659 () Bool)

(declare-fun e!639918 () Bool)

(assert (=> b!997809 (=> res!450659 e!639918)))

(assert (=> b!997809 (= res!450659 (not (isEmpty!6314 (tail!1397 s!10566))))))

(declare-fun b!997810 () Bool)

(declare-fun res!450658 () Bool)

(declare-fun e!639917 () Bool)

(assert (=> b!997810 (=> res!450658 e!639917)))

(declare-fun e!639919 () Bool)

(assert (=> b!997810 (= res!450658 e!639919)))

(declare-fun res!450654 () Bool)

(assert (=> b!997810 (=> (not res!450654) (not e!639919))))

(declare-fun lt!351554 () Bool)

(assert (=> b!997810 (= res!450654 lt!351554)))

(declare-fun d!291025 () Bool)

(declare-fun e!639915 () Bool)

(assert (=> d!291025 e!639915))

(declare-fun c!164201 () Bool)

(assert (=> d!291025 (= c!164201 (is-EmptyExpr!2762 r!15766))))

(declare-fun e!639916 () Bool)

(assert (=> d!291025 (= lt!351554 e!639916)))

(declare-fun c!164203 () Bool)

(assert (=> d!291025 (= c!164203 (isEmpty!6314 s!10566))))

(assert (=> d!291025 (validRegex!1231 r!15766)))

(assert (=> d!291025 (= (matchR!1298 r!15766 s!10566) lt!351554)))

(declare-fun b!997811 () Bool)

(assert (=> b!997811 (= e!639918 (not (= (head!1835 s!10566) (c!164077 r!15766))))))

(declare-fun b!997812 () Bool)

(declare-fun e!639920 () Bool)

(assert (=> b!997812 (= e!639917 e!639920)))

(declare-fun res!450655 () Bool)

(assert (=> b!997812 (=> (not res!450655) (not e!639920))))

(assert (=> b!997812 (= res!450655 (not lt!351554))))

(declare-fun b!997813 () Bool)

(declare-fun e!639921 () Bool)

(assert (=> b!997813 (= e!639915 e!639921)))

(declare-fun c!164202 () Bool)

(assert (=> b!997813 (= c!164202 (is-EmptyLang!2762 r!15766))))

(declare-fun b!997814 () Bool)

(assert (=> b!997814 (= e!639916 (nullable!876 r!15766))))

(declare-fun b!997815 () Bool)

(declare-fun call!66078 () Bool)

(assert (=> b!997815 (= e!639915 (= lt!351554 call!66078))))

(declare-fun b!997816 () Bool)

(declare-fun res!450661 () Bool)

(assert (=> b!997816 (=> (not res!450661) (not e!639919))))

(assert (=> b!997816 (= res!450661 (isEmpty!6314 (tail!1397 s!10566)))))

(declare-fun b!997817 () Bool)

(declare-fun res!450660 () Bool)

(assert (=> b!997817 (=> res!450660 e!639917)))

(assert (=> b!997817 (= res!450660 (not (is-ElementMatch!2762 r!15766)))))

(assert (=> b!997817 (= e!639921 e!639917)))

(declare-fun bm!66073 () Bool)

(assert (=> bm!66073 (= call!66078 (isEmpty!6314 s!10566))))

(declare-fun b!997818 () Bool)

(assert (=> b!997818 (= e!639916 (matchR!1298 (derivativeStep!682 r!15766 (head!1835 s!10566)) (tail!1397 s!10566)))))

(declare-fun b!997819 () Bool)

(declare-fun res!450656 () Bool)

(assert (=> b!997819 (=> (not res!450656) (not e!639919))))

(assert (=> b!997819 (= res!450656 (not call!66078))))

(declare-fun b!997820 () Bool)

(assert (=> b!997820 (= e!639919 (= (head!1835 s!10566) (c!164077 r!15766)))))

(declare-fun b!997821 () Bool)

(assert (=> b!997821 (= e!639921 (not lt!351554))))

(declare-fun b!997822 () Bool)

(assert (=> b!997822 (= e!639920 e!639918)))

(declare-fun res!450657 () Bool)

(assert (=> b!997822 (=> res!450657 e!639918)))

(assert (=> b!997822 (= res!450657 call!66078)))

(assert (= (and d!291025 c!164203) b!997814))

(assert (= (and d!291025 (not c!164203)) b!997818))

(assert (= (and d!291025 c!164201) b!997815))

(assert (= (and d!291025 (not c!164201)) b!997813))

(assert (= (and b!997813 c!164202) b!997821))

(assert (= (and b!997813 (not c!164202)) b!997817))

(assert (= (and b!997817 (not res!450660)) b!997810))

(assert (= (and b!997810 res!450654) b!997819))

(assert (= (and b!997819 res!450656) b!997816))

(assert (= (and b!997816 res!450661) b!997820))

(assert (= (and b!997810 (not res!450658)) b!997812))

(assert (= (and b!997812 res!450655) b!997822))

(assert (= (and b!997822 (not res!450657)) b!997809))

(assert (= (and b!997809 (not res!450659)) b!997811))

(assert (= (or b!997815 b!997819 b!997822) bm!66073))

(assert (=> d!291025 m!1188753))

(assert (=> d!291025 m!1188701))

(assert (=> b!997811 m!1188757))

(declare-fun m!1188847 () Bool)

(assert (=> b!997814 m!1188847))

(assert (=> b!997820 m!1188757))

(assert (=> b!997816 m!1188761))

(assert (=> b!997816 m!1188761))

(assert (=> b!997816 m!1188763))

(assert (=> b!997809 m!1188761))

(assert (=> b!997809 m!1188761))

(assert (=> b!997809 m!1188763))

(assert (=> bm!66073 m!1188753))

(assert (=> b!997818 m!1188757))

(assert (=> b!997818 m!1188757))

(declare-fun m!1188849 () Bool)

(assert (=> b!997818 m!1188849))

(assert (=> b!997818 m!1188761))

(assert (=> b!997818 m!1188849))

(assert (=> b!997818 m!1188761))

(declare-fun m!1188851 () Bool)

(assert (=> b!997818 m!1188851))

(assert (=> b!997362 d!291025))

(declare-fun d!291027 () Bool)

(assert (=> d!291027 (= (matchR!1298 r!15766 s!10566) (matchRSpec!561 r!15766 s!10566))))

(declare-fun lt!351557 () Unit!15183)

(declare-fun choose!6306 (Regex!2762 List!9992) Unit!15183)

(assert (=> d!291027 (= lt!351557 (choose!6306 r!15766 s!10566))))

(assert (=> d!291027 (validRegex!1231 r!15766)))

(assert (=> d!291027 (= (mainMatchTheorem!561 r!15766 s!10566) lt!351557)))

(declare-fun bs!245057 () Bool)

(assert (= bs!245057 d!291027))

(assert (=> bs!245057 m!1188689))

(assert (=> bs!245057 m!1188687))

(declare-fun m!1188853 () Bool)

(assert (=> bs!245057 m!1188853))

(assert (=> bs!245057 m!1188701))

(assert (=> b!997362 d!291027))

(declare-fun b!997827 () Bool)

(declare-fun e!639924 () Bool)

(declare-fun tp!304295 () Bool)

(assert (=> b!997827 (= e!639924 (and tp_is_empty!5167 tp!304295))))

(assert (=> b!997360 (= tp!304274 e!639924)))

(assert (= (and b!997360 (is-Cons!9976 (t!101038 s!10566))) b!997827))

(declare-fun b!997841 () Bool)

(declare-fun e!639927 () Bool)

(declare-fun tp!304310 () Bool)

(declare-fun tp!304307 () Bool)

(assert (=> b!997841 (= e!639927 (and tp!304310 tp!304307))))

(declare-fun b!997840 () Bool)

(declare-fun tp!304309 () Bool)

(assert (=> b!997840 (= e!639927 tp!304309)))

(declare-fun b!997838 () Bool)

(assert (=> b!997838 (= e!639927 tp_is_empty!5167)))

(assert (=> b!997361 (= tp!304271 e!639927)))

(declare-fun b!997839 () Bool)

(declare-fun tp!304306 () Bool)

(declare-fun tp!304308 () Bool)

(assert (=> b!997839 (= e!639927 (and tp!304306 tp!304308))))

(assert (= (and b!997361 (is-ElementMatch!2762 (regOne!6036 r!15766))) b!997838))

(assert (= (and b!997361 (is-Concat!4595 (regOne!6036 r!15766))) b!997839))

(assert (= (and b!997361 (is-Star!2762 (regOne!6036 r!15766))) b!997840))

(assert (= (and b!997361 (is-Union!2762 (regOne!6036 r!15766))) b!997841))

(declare-fun b!997845 () Bool)

(declare-fun e!639928 () Bool)

(declare-fun tp!304315 () Bool)

(declare-fun tp!304312 () Bool)

(assert (=> b!997845 (= e!639928 (and tp!304315 tp!304312))))

(declare-fun b!997844 () Bool)

(declare-fun tp!304314 () Bool)

(assert (=> b!997844 (= e!639928 tp!304314)))

(declare-fun b!997842 () Bool)

(assert (=> b!997842 (= e!639928 tp_is_empty!5167)))

(assert (=> b!997361 (= tp!304269 e!639928)))

(declare-fun b!997843 () Bool)

(declare-fun tp!304311 () Bool)

(declare-fun tp!304313 () Bool)

(assert (=> b!997843 (= e!639928 (and tp!304311 tp!304313))))

(assert (= (and b!997361 (is-ElementMatch!2762 (regTwo!6036 r!15766))) b!997842))

(assert (= (and b!997361 (is-Concat!4595 (regTwo!6036 r!15766))) b!997843))

(assert (= (and b!997361 (is-Star!2762 (regTwo!6036 r!15766))) b!997844))

(assert (= (and b!997361 (is-Union!2762 (regTwo!6036 r!15766))) b!997845))

(declare-fun b!997849 () Bool)

(declare-fun e!639929 () Bool)

(declare-fun tp!304320 () Bool)

(declare-fun tp!304317 () Bool)

(assert (=> b!997849 (= e!639929 (and tp!304320 tp!304317))))

(declare-fun b!997848 () Bool)

(declare-fun tp!304319 () Bool)

(assert (=> b!997848 (= e!639929 tp!304319)))

(declare-fun b!997846 () Bool)

(assert (=> b!997846 (= e!639929 tp_is_empty!5167)))

(assert (=> b!997356 (= tp!304272 e!639929)))

(declare-fun b!997847 () Bool)

(declare-fun tp!304316 () Bool)

(declare-fun tp!304318 () Bool)

(assert (=> b!997847 (= e!639929 (and tp!304316 tp!304318))))

(assert (= (and b!997356 (is-ElementMatch!2762 (regOne!6037 r!15766))) b!997846))

(assert (= (and b!997356 (is-Concat!4595 (regOne!6037 r!15766))) b!997847))

(assert (= (and b!997356 (is-Star!2762 (regOne!6037 r!15766))) b!997848))

(assert (= (and b!997356 (is-Union!2762 (regOne!6037 r!15766))) b!997849))

(declare-fun b!997853 () Bool)

(declare-fun e!639930 () Bool)

(declare-fun tp!304325 () Bool)

(declare-fun tp!304322 () Bool)

(assert (=> b!997853 (= e!639930 (and tp!304325 tp!304322))))

(declare-fun b!997852 () Bool)

(declare-fun tp!304324 () Bool)

(assert (=> b!997852 (= e!639930 tp!304324)))

(declare-fun b!997850 () Bool)

(assert (=> b!997850 (= e!639930 tp_is_empty!5167)))

(assert (=> b!997356 (= tp!304270 e!639930)))

(declare-fun b!997851 () Bool)

(declare-fun tp!304321 () Bool)

(declare-fun tp!304323 () Bool)

(assert (=> b!997851 (= e!639930 (and tp!304321 tp!304323))))

(assert (= (and b!997356 (is-ElementMatch!2762 (regTwo!6037 r!15766))) b!997850))

(assert (= (and b!997356 (is-Concat!4595 (regTwo!6037 r!15766))) b!997851))

(assert (= (and b!997356 (is-Star!2762 (regTwo!6037 r!15766))) b!997852))

(assert (= (and b!997356 (is-Union!2762 (regTwo!6037 r!15766))) b!997853))

(declare-fun b!997857 () Bool)

(declare-fun e!639931 () Bool)

(declare-fun tp!304330 () Bool)

(declare-fun tp!304327 () Bool)

(assert (=> b!997857 (= e!639931 (and tp!304330 tp!304327))))

(declare-fun b!997856 () Bool)

(declare-fun tp!304329 () Bool)

(assert (=> b!997856 (= e!639931 tp!304329)))

(declare-fun b!997854 () Bool)

(assert (=> b!997854 (= e!639931 tp_is_empty!5167)))

(assert (=> b!997357 (= tp!304273 e!639931)))

(declare-fun b!997855 () Bool)

(declare-fun tp!304326 () Bool)

(declare-fun tp!304328 () Bool)

(assert (=> b!997855 (= e!639931 (and tp!304326 tp!304328))))

(assert (= (and b!997357 (is-ElementMatch!2762 (reg!3091 r!15766))) b!997854))

(assert (= (and b!997357 (is-Concat!4595 (reg!3091 r!15766))) b!997855))

(assert (= (and b!997357 (is-Star!2762 (reg!3091 r!15766))) b!997856))

(assert (= (and b!997357 (is-Union!2762 (reg!3091 r!15766))) b!997857))

(push 1)

(assert (not b!997845))

(assert (not b!997816))

(assert (not bm!66057))

(assert (not b!997453))

(assert (not bm!66071))

(assert (not b!997556))

(assert (not b!997540))

(assert (not b!997839))

(assert (not b!997809))

(assert (not d!290997))

(assert (not b!997818))

(assert (not b!997843))

(assert (not bm!66073))

(assert (not bm!66066))

(assert (not b!997856))

(assert (not d!291001))

(assert (not bm!66034))

(assert (not bm!66062))

(assert tp_is_empty!5167)

(assert (not b!997563))

(assert (not bm!66065))

(assert (not b!997549))

(assert (not b!997848))

(assert (not bm!66059))

(assert (not b!997716))

(assert (not b!997796))

(assert (not bm!66055))

(assert (not bm!66061))

(assert (not bm!66072))

(assert (not b!997598))

(assert (not b!997851))

(assert (not bm!65998))

(assert (not b!997849))

(assert (not bm!66024))

(assert (not b!997855))

(assert (not b!997827))

(assert (not b!997565))

(assert (not bm!66033))

(assert (not b!997558))

(assert (not d!291027))

(assert (not b!997593))

(assert (not b!997547))

(assert (not b!997857))

(assert (not b!997853))

(assert (not d!291005))

(assert (not b!997594))

(assert (not bm!66064))

(assert (not b!997844))

(assert (not b!997567))

(assert (not b!997561))

(assert (not b!997852))

(assert (not d!291025))

(assert (not b!997543))

(assert (not b!997801))

(assert (not b!997820))

(assert (not bm!66058))

(assert (not b!997847))

(assert (not b!997814))

(assert (not bm!66023))

(assert (not b!997840))

(assert (not b!997811))

(assert (not bm!66054))

(assert (not b!997538))

(assert (not bm!65999))

(assert (not b!997841))

(assert (not b!997545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

