; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664302 () Bool)

(assert start!664302)

(declare-fun b!6891418 () Bool)

(declare-fun e!4151527 () Bool)

(declare-datatypes ((C!33892 0))(
  ( (C!33893 (val!26648 Int)) )
))
(declare-datatypes ((List!66568 0))(
  ( (Nil!66444) (Cons!66444 (h!72892 C!33892) (t!380311 List!66568)) )
))
(declare-fun s!14361 () List!66568)

(declare-fun ++!14886 (List!66568 List!66568) List!66568)

(assert (=> b!6891418 (= e!4151527 (= (++!14886 Nil!66444 s!14361) s!14361))))

(declare-fun b!6891419 () Bool)

(declare-fun e!4151528 () Bool)

(declare-fun tp_is_empty!42847 () Bool)

(assert (=> b!6891419 (= e!4151528 tp_is_empty!42847)))

(declare-fun b!6891420 () Bool)

(declare-fun e!4151532 () Bool)

(assert (=> b!6891420 (= e!4151532 (not e!4151527))))

(declare-fun res!2809710 () Bool)

(assert (=> b!6891420 (=> res!2809710 e!4151527)))

(declare-fun lt!2462947 () Bool)

(assert (=> b!6891420 (= res!2809710 lt!2462947)))

(declare-datatypes ((Regex!16811 0))(
  ( (ElementMatch!16811 (c!1281259 C!33892)) (Concat!25656 (regOne!34134 Regex!16811) (regTwo!34134 Regex!16811)) (EmptyExpr!16811) (Star!16811 (reg!17140 Regex!16811)) (EmptyLang!16811) (Union!16811 (regOne!34135 Regex!16811) (regTwo!34135 Regex!16811)) )
))
(declare-fun lt!2462949 () Regex!16811)

(declare-fun matchR!8956 (Regex!16811 List!66568) Bool)

(declare-fun matchRSpec!3874 (Regex!16811 List!66568) Bool)

(assert (=> b!6891420 (= (matchR!8956 lt!2462949 s!14361) (matchRSpec!3874 lt!2462949 s!14361))))

(declare-datatypes ((Unit!160342 0))(
  ( (Unit!160343) )
))
(declare-fun lt!2462948 () Unit!160342)

(declare-fun mainMatchTheorem!3874 (Regex!16811 List!66568) Unit!160342)

(assert (=> b!6891420 (= lt!2462948 (mainMatchTheorem!3874 lt!2462949 s!14361))))

(declare-fun lt!2462950 () Regex!16811)

(assert (=> b!6891420 (= lt!2462947 (matchRSpec!3874 lt!2462950 s!14361))))

(assert (=> b!6891420 (= lt!2462947 (matchR!8956 lt!2462950 s!14361))))

(declare-fun lt!2462951 () Unit!160342)

(assert (=> b!6891420 (= lt!2462951 (mainMatchTheorem!3874 lt!2462950 s!14361))))

(declare-fun r1!6342 () Regex!16811)

(declare-fun lt!2462946 () Regex!16811)

(assert (=> b!6891420 (= lt!2462949 (Concat!25656 r1!6342 lt!2462946))))

(declare-fun r2!6280 () Regex!16811)

(declare-fun r3!135 () Regex!16811)

(assert (=> b!6891420 (= lt!2462946 (Concat!25656 r2!6280 r3!135))))

(assert (=> b!6891420 (= lt!2462950 (Concat!25656 (Concat!25656 r1!6342 r2!6280) r3!135))))

(declare-fun b!6891421 () Bool)

(declare-fun e!4151531 () Bool)

(declare-fun tp!1896200 () Bool)

(assert (=> b!6891421 (= e!4151531 (and tp_is_empty!42847 tp!1896200))))

(declare-fun b!6891422 () Bool)

(declare-fun res!2809706 () Bool)

(assert (=> b!6891422 (=> (not res!2809706) (not e!4151532))))

(declare-fun validRegex!8519 (Regex!16811) Bool)

(assert (=> b!6891422 (= res!2809706 (validRegex!8519 r3!135))))

(declare-fun b!6891423 () Bool)

(declare-fun e!4151529 () Bool)

(declare-fun tp!1896204 () Bool)

(declare-fun tp!1896209 () Bool)

(assert (=> b!6891423 (= e!4151529 (and tp!1896204 tp!1896209))))

(declare-fun b!6891424 () Bool)

(declare-fun res!2809709 () Bool)

(assert (=> b!6891424 (=> (not res!2809709) (not e!4151532))))

(assert (=> b!6891424 (= res!2809709 (validRegex!8519 r2!6280))))

(declare-fun b!6891425 () Bool)

(assert (=> b!6891425 (= e!4151529 tp_is_empty!42847)))

(declare-fun b!6891426 () Bool)

(declare-fun res!2809707 () Bool)

(assert (=> b!6891426 (=> res!2809707 e!4151527)))

(assert (=> b!6891426 (= res!2809707 (not (validRegex!8519 lt!2462946)))))

(declare-fun b!6891427 () Bool)

(declare-fun e!4151530 () Bool)

(declare-fun tp!1896215 () Bool)

(assert (=> b!6891427 (= e!4151530 tp!1896215)))

(declare-fun b!6891428 () Bool)

(declare-fun tp!1896205 () Bool)

(declare-fun tp!1896213 () Bool)

(assert (=> b!6891428 (= e!4151530 (and tp!1896205 tp!1896213))))

(declare-fun b!6891429 () Bool)

(declare-fun tp!1896214 () Bool)

(declare-fun tp!1896210 () Bool)

(assert (=> b!6891429 (= e!4151530 (and tp!1896214 tp!1896210))))

(declare-fun res!2809708 () Bool)

(assert (=> start!664302 (=> (not res!2809708) (not e!4151532))))

(assert (=> start!664302 (= res!2809708 (validRegex!8519 r1!6342))))

(assert (=> start!664302 e!4151532))

(assert (=> start!664302 e!4151528))

(assert (=> start!664302 e!4151529))

(assert (=> start!664302 e!4151530))

(assert (=> start!664302 e!4151531))

(declare-fun b!6891430 () Bool)

(assert (=> b!6891430 (= e!4151530 tp_is_empty!42847)))

(declare-fun b!6891431 () Bool)

(declare-fun tp!1896201 () Bool)

(declare-fun tp!1896203 () Bool)

(assert (=> b!6891431 (= e!4151528 (and tp!1896201 tp!1896203))))

(declare-fun b!6891432 () Bool)

(declare-fun tp!1896208 () Bool)

(declare-fun tp!1896202 () Bool)

(assert (=> b!6891432 (= e!4151528 (and tp!1896208 tp!1896202))))

(declare-fun b!6891433 () Bool)

(declare-fun tp!1896207 () Bool)

(assert (=> b!6891433 (= e!4151529 tp!1896207)))

(declare-fun b!6891434 () Bool)

(declare-fun tp!1896206 () Bool)

(assert (=> b!6891434 (= e!4151528 tp!1896206)))

(declare-fun b!6891435 () Bool)

(declare-fun tp!1896212 () Bool)

(declare-fun tp!1896211 () Bool)

(assert (=> b!6891435 (= e!4151529 (and tp!1896212 tp!1896211))))

(assert (= (and start!664302 res!2809708) b!6891424))

(assert (= (and b!6891424 res!2809709) b!6891422))

(assert (= (and b!6891422 res!2809706) b!6891420))

(assert (= (and b!6891420 (not res!2809710)) b!6891426))

(assert (= (and b!6891426 (not res!2809707)) b!6891418))

(get-info :version)

(assert (= (and start!664302 ((_ is ElementMatch!16811) r1!6342)) b!6891419))

(assert (= (and start!664302 ((_ is Concat!25656) r1!6342)) b!6891432))

(assert (= (and start!664302 ((_ is Star!16811) r1!6342)) b!6891434))

(assert (= (and start!664302 ((_ is Union!16811) r1!6342)) b!6891431))

(assert (= (and start!664302 ((_ is ElementMatch!16811) r2!6280)) b!6891425))

(assert (= (and start!664302 ((_ is Concat!25656) r2!6280)) b!6891435))

(assert (= (and start!664302 ((_ is Star!16811) r2!6280)) b!6891433))

(assert (= (and start!664302 ((_ is Union!16811) r2!6280)) b!6891423))

(assert (= (and start!664302 ((_ is ElementMatch!16811) r3!135)) b!6891430))

(assert (= (and start!664302 ((_ is Concat!25656) r3!135)) b!6891428))

(assert (= (and start!664302 ((_ is Star!16811) r3!135)) b!6891427))

(assert (= (and start!664302 ((_ is Union!16811) r3!135)) b!6891429))

(assert (= (and start!664302 ((_ is Cons!66444) s!14361)) b!6891421))

(declare-fun m!7613074 () Bool)

(assert (=> b!6891420 m!7613074))

(declare-fun m!7613076 () Bool)

(assert (=> b!6891420 m!7613076))

(declare-fun m!7613078 () Bool)

(assert (=> b!6891420 m!7613078))

(declare-fun m!7613080 () Bool)

(assert (=> b!6891420 m!7613080))

(declare-fun m!7613082 () Bool)

(assert (=> b!6891420 m!7613082))

(declare-fun m!7613084 () Bool)

(assert (=> b!6891420 m!7613084))

(declare-fun m!7613086 () Bool)

(assert (=> b!6891426 m!7613086))

(declare-fun m!7613088 () Bool)

(assert (=> b!6891422 m!7613088))

(declare-fun m!7613090 () Bool)

(assert (=> start!664302 m!7613090))

(declare-fun m!7613092 () Bool)

(assert (=> b!6891418 m!7613092))

(declare-fun m!7613094 () Bool)

(assert (=> b!6891424 m!7613094))

(check-sat (not b!6891426) (not b!6891424) (not b!6891420) (not b!6891423) (not b!6891428) (not b!6891435) (not b!6891434) (not b!6891431) tp_is_empty!42847 (not b!6891433) (not b!6891421) (not b!6891429) (not b!6891427) (not b!6891422) (not start!664302) (not b!6891432) (not b!6891418))
(check-sat)
(get-model)

(declare-fun d!2161145 () Bool)

(assert (=> d!2161145 (= (matchR!8956 lt!2462950 s!14361) (matchRSpec!3874 lt!2462950 s!14361))))

(declare-fun lt!2462954 () Unit!160342)

(declare-fun choose!51318 (Regex!16811 List!66568) Unit!160342)

(assert (=> d!2161145 (= lt!2462954 (choose!51318 lt!2462950 s!14361))))

(assert (=> d!2161145 (validRegex!8519 lt!2462950)))

(assert (=> d!2161145 (= (mainMatchTheorem!3874 lt!2462950 s!14361) lt!2462954)))

(declare-fun bs!1840472 () Bool)

(assert (= bs!1840472 d!2161145))

(assert (=> bs!1840472 m!7613074))

(assert (=> bs!1840472 m!7613076))

(declare-fun m!7613096 () Bool)

(assert (=> bs!1840472 m!7613096))

(declare-fun m!7613098 () Bool)

(assert (=> bs!1840472 m!7613098))

(assert (=> b!6891420 d!2161145))

(declare-fun b!6891517 () Bool)

(declare-fun e!4151588 () Bool)

(declare-fun lt!2462959 () Bool)

(assert (=> b!6891517 (= e!4151588 (not lt!2462959))))

(declare-fun b!6891518 () Bool)

(declare-fun e!4151592 () Bool)

(declare-fun head!13823 (List!66568) C!33892)

(assert (=> b!6891518 (= e!4151592 (= (head!13823 s!14361) (c!1281259 lt!2462950)))))

(declare-fun b!6891519 () Bool)

(declare-fun res!2809760 () Bool)

(declare-fun e!4151591 () Bool)

(assert (=> b!6891519 (=> res!2809760 e!4151591)))

(assert (=> b!6891519 (= res!2809760 (not ((_ is ElementMatch!16811) lt!2462950)))))

(assert (=> b!6891519 (= e!4151588 e!4151591)))

(declare-fun b!6891520 () Bool)

(declare-fun e!4151590 () Bool)

(declare-fun call!627079 () Bool)

(assert (=> b!6891520 (= e!4151590 (= lt!2462959 call!627079))))

(declare-fun b!6891521 () Bool)

(declare-fun res!2809757 () Bool)

(declare-fun e!4151586 () Bool)

(assert (=> b!6891521 (=> res!2809757 e!4151586)))

(declare-fun isEmpty!38698 (List!66568) Bool)

(declare-fun tail!12875 (List!66568) List!66568)

(assert (=> b!6891521 (= res!2809757 (not (isEmpty!38698 (tail!12875 s!14361))))))

(declare-fun b!6891522 () Bool)

(declare-fun e!4151587 () Bool)

(declare-fun derivativeStep!5370 (Regex!16811 C!33892) Regex!16811)

(assert (=> b!6891522 (= e!4151587 (matchR!8956 (derivativeStep!5370 lt!2462950 (head!13823 s!14361)) (tail!12875 s!14361)))))

(declare-fun b!6891523 () Bool)

(declare-fun e!4151589 () Bool)

(assert (=> b!6891523 (= e!4151591 e!4151589)))

(declare-fun res!2809758 () Bool)

(assert (=> b!6891523 (=> (not res!2809758) (not e!4151589))))

(assert (=> b!6891523 (= res!2809758 (not lt!2462959))))

(declare-fun b!6891524 () Bool)

(assert (=> b!6891524 (= e!4151589 e!4151586)))

(declare-fun res!2809756 () Bool)

(assert (=> b!6891524 (=> res!2809756 e!4151586)))

(assert (=> b!6891524 (= res!2809756 call!627079)))

(declare-fun b!6891526 () Bool)

(declare-fun res!2809763 () Bool)

(assert (=> b!6891526 (=> (not res!2809763) (not e!4151592))))

(assert (=> b!6891526 (= res!2809763 (isEmpty!38698 (tail!12875 s!14361)))))

(declare-fun b!6891527 () Bool)

(assert (=> b!6891527 (= e!4151590 e!4151588)))

(declare-fun c!1281278 () Bool)

(assert (=> b!6891527 (= c!1281278 ((_ is EmptyLang!16811) lt!2462950))))

(declare-fun b!6891528 () Bool)

(declare-fun res!2809761 () Bool)

(assert (=> b!6891528 (=> (not res!2809761) (not e!4151592))))

(assert (=> b!6891528 (= res!2809761 (not call!627079))))

(declare-fun b!6891529 () Bool)

(declare-fun res!2809762 () Bool)

(assert (=> b!6891529 (=> res!2809762 e!4151591)))

(assert (=> b!6891529 (= res!2809762 e!4151592)))

(declare-fun res!2809759 () Bool)

(assert (=> b!6891529 (=> (not res!2809759) (not e!4151592))))

(assert (=> b!6891529 (= res!2809759 lt!2462959)))

(declare-fun b!6891530 () Bool)

(assert (=> b!6891530 (= e!4151586 (not (= (head!13823 s!14361) (c!1281259 lt!2462950))))))

(declare-fun bm!627074 () Bool)

(assert (=> bm!627074 (= call!627079 (isEmpty!38698 s!14361))))

(declare-fun b!6891525 () Bool)

(declare-fun nullable!6692 (Regex!16811) Bool)

(assert (=> b!6891525 (= e!4151587 (nullable!6692 lt!2462950))))

(declare-fun d!2161149 () Bool)

(assert (=> d!2161149 e!4151590))

(declare-fun c!1281279 () Bool)

(assert (=> d!2161149 (= c!1281279 ((_ is EmptyExpr!16811) lt!2462950))))

(assert (=> d!2161149 (= lt!2462959 e!4151587)))

(declare-fun c!1281280 () Bool)

(assert (=> d!2161149 (= c!1281280 (isEmpty!38698 s!14361))))

(assert (=> d!2161149 (validRegex!8519 lt!2462950)))

(assert (=> d!2161149 (= (matchR!8956 lt!2462950 s!14361) lt!2462959)))

(assert (= (and d!2161149 c!1281280) b!6891525))

(assert (= (and d!2161149 (not c!1281280)) b!6891522))

(assert (= (and d!2161149 c!1281279) b!6891520))

(assert (= (and d!2161149 (not c!1281279)) b!6891527))

(assert (= (and b!6891527 c!1281278) b!6891517))

(assert (= (and b!6891527 (not c!1281278)) b!6891519))

(assert (= (and b!6891519 (not res!2809760)) b!6891529))

(assert (= (and b!6891529 res!2809759) b!6891528))

(assert (= (and b!6891528 res!2809761) b!6891526))

(assert (= (and b!6891526 res!2809763) b!6891518))

(assert (= (and b!6891529 (not res!2809762)) b!6891523))

(assert (= (and b!6891523 res!2809758) b!6891524))

(assert (= (and b!6891524 (not res!2809756)) b!6891521))

(assert (= (and b!6891521 (not res!2809757)) b!6891530))

(assert (= (or b!6891520 b!6891524 b!6891528) bm!627074))

(declare-fun m!7613118 () Bool)

(assert (=> b!6891530 m!7613118))

(declare-fun m!7613120 () Bool)

(assert (=> b!6891525 m!7613120))

(assert (=> b!6891522 m!7613118))

(assert (=> b!6891522 m!7613118))

(declare-fun m!7613122 () Bool)

(assert (=> b!6891522 m!7613122))

(declare-fun m!7613124 () Bool)

(assert (=> b!6891522 m!7613124))

(assert (=> b!6891522 m!7613122))

(assert (=> b!6891522 m!7613124))

(declare-fun m!7613126 () Bool)

(assert (=> b!6891522 m!7613126))

(assert (=> b!6891518 m!7613118))

(assert (=> b!6891521 m!7613124))

(assert (=> b!6891521 m!7613124))

(declare-fun m!7613128 () Bool)

(assert (=> b!6891521 m!7613128))

(declare-fun m!7613130 () Bool)

(assert (=> bm!627074 m!7613130))

(assert (=> d!2161149 m!7613130))

(assert (=> d!2161149 m!7613098))

(assert (=> b!6891526 m!7613124))

(assert (=> b!6891526 m!7613124))

(assert (=> b!6891526 m!7613128))

(assert (=> b!6891420 d!2161149))

(declare-fun b!6891535 () Bool)

(declare-fun e!4151597 () Bool)

(declare-fun lt!2462961 () Bool)

(assert (=> b!6891535 (= e!4151597 (not lt!2462961))))

(declare-fun b!6891536 () Bool)

(declare-fun e!4151601 () Bool)

(assert (=> b!6891536 (= e!4151601 (= (head!13823 s!14361) (c!1281259 lt!2462949)))))

(declare-fun b!6891537 () Bool)

(declare-fun res!2809770 () Bool)

(declare-fun e!4151600 () Bool)

(assert (=> b!6891537 (=> res!2809770 e!4151600)))

(assert (=> b!6891537 (= res!2809770 (not ((_ is ElementMatch!16811) lt!2462949)))))

(assert (=> b!6891537 (= e!4151597 e!4151600)))

(declare-fun b!6891538 () Bool)

(declare-fun e!4151599 () Bool)

(declare-fun call!627080 () Bool)

(assert (=> b!6891538 (= e!4151599 (= lt!2462961 call!627080))))

(declare-fun b!6891539 () Bool)

(declare-fun res!2809767 () Bool)

(declare-fun e!4151595 () Bool)

(assert (=> b!6891539 (=> res!2809767 e!4151595)))

(assert (=> b!6891539 (= res!2809767 (not (isEmpty!38698 (tail!12875 s!14361))))))

(declare-fun b!6891540 () Bool)

(declare-fun e!4151596 () Bool)

(assert (=> b!6891540 (= e!4151596 (matchR!8956 (derivativeStep!5370 lt!2462949 (head!13823 s!14361)) (tail!12875 s!14361)))))

(declare-fun b!6891541 () Bool)

(declare-fun e!4151598 () Bool)

(assert (=> b!6891541 (= e!4151600 e!4151598)))

(declare-fun res!2809768 () Bool)

(assert (=> b!6891541 (=> (not res!2809768) (not e!4151598))))

(assert (=> b!6891541 (= res!2809768 (not lt!2462961))))

(declare-fun b!6891542 () Bool)

(assert (=> b!6891542 (= e!4151598 e!4151595)))

(declare-fun res!2809766 () Bool)

(assert (=> b!6891542 (=> res!2809766 e!4151595)))

(assert (=> b!6891542 (= res!2809766 call!627080)))

(declare-fun b!6891544 () Bool)

(declare-fun res!2809773 () Bool)

(assert (=> b!6891544 (=> (not res!2809773) (not e!4151601))))

(assert (=> b!6891544 (= res!2809773 (isEmpty!38698 (tail!12875 s!14361)))))

(declare-fun b!6891545 () Bool)

(assert (=> b!6891545 (= e!4151599 e!4151597)))

(declare-fun c!1281282 () Bool)

(assert (=> b!6891545 (= c!1281282 ((_ is EmptyLang!16811) lt!2462949))))

(declare-fun b!6891546 () Bool)

(declare-fun res!2809771 () Bool)

(assert (=> b!6891546 (=> (not res!2809771) (not e!4151601))))

(assert (=> b!6891546 (= res!2809771 (not call!627080))))

(declare-fun b!6891547 () Bool)

(declare-fun res!2809772 () Bool)

(assert (=> b!6891547 (=> res!2809772 e!4151600)))

(assert (=> b!6891547 (= res!2809772 e!4151601)))

(declare-fun res!2809769 () Bool)

(assert (=> b!6891547 (=> (not res!2809769) (not e!4151601))))

(assert (=> b!6891547 (= res!2809769 lt!2462961)))

(declare-fun b!6891548 () Bool)

(assert (=> b!6891548 (= e!4151595 (not (= (head!13823 s!14361) (c!1281259 lt!2462949))))))

(declare-fun bm!627075 () Bool)

(assert (=> bm!627075 (= call!627080 (isEmpty!38698 s!14361))))

(declare-fun b!6891543 () Bool)

(assert (=> b!6891543 (= e!4151596 (nullable!6692 lt!2462949))))

(declare-fun d!2161157 () Bool)

(assert (=> d!2161157 e!4151599))

(declare-fun c!1281283 () Bool)

(assert (=> d!2161157 (= c!1281283 ((_ is EmptyExpr!16811) lt!2462949))))

(assert (=> d!2161157 (= lt!2462961 e!4151596)))

(declare-fun c!1281284 () Bool)

(assert (=> d!2161157 (= c!1281284 (isEmpty!38698 s!14361))))

(assert (=> d!2161157 (validRegex!8519 lt!2462949)))

(assert (=> d!2161157 (= (matchR!8956 lt!2462949 s!14361) lt!2462961)))

(assert (= (and d!2161157 c!1281284) b!6891543))

(assert (= (and d!2161157 (not c!1281284)) b!6891540))

(assert (= (and d!2161157 c!1281283) b!6891538))

(assert (= (and d!2161157 (not c!1281283)) b!6891545))

(assert (= (and b!6891545 c!1281282) b!6891535))

(assert (= (and b!6891545 (not c!1281282)) b!6891537))

(assert (= (and b!6891537 (not res!2809770)) b!6891547))

(assert (= (and b!6891547 res!2809769) b!6891546))

(assert (= (and b!6891546 res!2809771) b!6891544))

(assert (= (and b!6891544 res!2809773) b!6891536))

(assert (= (and b!6891547 (not res!2809772)) b!6891541))

(assert (= (and b!6891541 res!2809768) b!6891542))

(assert (= (and b!6891542 (not res!2809766)) b!6891539))

(assert (= (and b!6891539 (not res!2809767)) b!6891548))

(assert (= (or b!6891538 b!6891542 b!6891546) bm!627075))

(assert (=> b!6891548 m!7613118))

(declare-fun m!7613146 () Bool)

(assert (=> b!6891543 m!7613146))

(assert (=> b!6891540 m!7613118))

(assert (=> b!6891540 m!7613118))

(declare-fun m!7613148 () Bool)

(assert (=> b!6891540 m!7613148))

(assert (=> b!6891540 m!7613124))

(assert (=> b!6891540 m!7613148))

(assert (=> b!6891540 m!7613124))

(declare-fun m!7613150 () Bool)

(assert (=> b!6891540 m!7613150))

(assert (=> b!6891536 m!7613118))

(assert (=> b!6891539 m!7613124))

(assert (=> b!6891539 m!7613124))

(assert (=> b!6891539 m!7613128))

(assert (=> bm!627075 m!7613130))

(assert (=> d!2161157 m!7613130))

(declare-fun m!7613152 () Bool)

(assert (=> d!2161157 m!7613152))

(assert (=> b!6891544 m!7613124))

(assert (=> b!6891544 m!7613124))

(assert (=> b!6891544 m!7613128))

(assert (=> b!6891420 d!2161157))

(declare-fun b!6891665 () Bool)

(assert (=> b!6891665 true))

(assert (=> b!6891665 true))

(declare-fun bs!1840474 () Bool)

(declare-fun b!6891663 () Bool)

(assert (= bs!1840474 (and b!6891663 b!6891665)))

(declare-fun lambda!390644 () Int)

(declare-fun lambda!390641 () Int)

(assert (=> bs!1840474 (not (= lambda!390644 lambda!390641))))

(assert (=> b!6891663 true))

(assert (=> b!6891663 true))

(declare-fun b!6891659 () Bool)

(declare-fun e!4151663 () Bool)

(assert (=> b!6891659 (= e!4151663 (= s!14361 (Cons!66444 (c!1281259 lt!2462949) Nil!66444)))))

(declare-fun b!6891660 () Bool)

(declare-fun c!1281313 () Bool)

(assert (=> b!6891660 (= c!1281313 ((_ is Union!16811) lt!2462949))))

(declare-fun e!4151668 () Bool)

(assert (=> b!6891660 (= e!4151663 e!4151668)))

(declare-fun b!6891661 () Bool)

(declare-fun e!4151664 () Bool)

(declare-fun call!627089 () Bool)

(assert (=> b!6891661 (= e!4151664 call!627089)))

(declare-fun d!2161161 () Bool)

(declare-fun c!1281315 () Bool)

(assert (=> d!2161161 (= c!1281315 ((_ is EmptyExpr!16811) lt!2462949))))

(assert (=> d!2161161 (= (matchRSpec!3874 lt!2462949 s!14361) e!4151664)))

(declare-fun b!6891662 () Bool)

(declare-fun c!1281314 () Bool)

(assert (=> b!6891662 (= c!1281314 ((_ is ElementMatch!16811) lt!2462949))))

(declare-fun e!4151667 () Bool)

(assert (=> b!6891662 (= e!4151667 e!4151663)))

(declare-fun e!4151662 () Bool)

(declare-fun call!627090 () Bool)

(assert (=> b!6891663 (= e!4151662 call!627090)))

(declare-fun b!6891664 () Bool)

(assert (=> b!6891664 (= e!4151664 e!4151667)))

(declare-fun res!2809828 () Bool)

(assert (=> b!6891664 (= res!2809828 (not ((_ is EmptyLang!16811) lt!2462949)))))

(assert (=> b!6891664 (=> (not res!2809828) (not e!4151667))))

(declare-fun e!4151665 () Bool)

(assert (=> b!6891665 (= e!4151665 call!627090)))

(declare-fun b!6891666 () Bool)

(declare-fun e!4151666 () Bool)

(assert (=> b!6891666 (= e!4151668 e!4151666)))

(declare-fun res!2809829 () Bool)

(assert (=> b!6891666 (= res!2809829 (matchRSpec!3874 (regOne!34135 lt!2462949) s!14361))))

(assert (=> b!6891666 (=> res!2809829 e!4151666)))

(declare-fun bm!627084 () Bool)

(assert (=> bm!627084 (= call!627089 (isEmpty!38698 s!14361))))

(declare-fun b!6891667 () Bool)

(assert (=> b!6891667 (= e!4151666 (matchRSpec!3874 (regTwo!34135 lt!2462949) s!14361))))

(declare-fun c!1281316 () Bool)

(declare-fun bm!627085 () Bool)

(declare-fun Exists!3820 (Int) Bool)

(assert (=> bm!627085 (= call!627090 (Exists!3820 (ite c!1281316 lambda!390641 lambda!390644)))))

(declare-fun b!6891668 () Bool)

(assert (=> b!6891668 (= e!4151668 e!4151662)))

(assert (=> b!6891668 (= c!1281316 ((_ is Star!16811) lt!2462949))))

(declare-fun b!6891669 () Bool)

(declare-fun res!2809830 () Bool)

(assert (=> b!6891669 (=> res!2809830 e!4151665)))

(assert (=> b!6891669 (= res!2809830 call!627089)))

(assert (=> b!6891669 (= e!4151662 e!4151665)))

(assert (= (and d!2161161 c!1281315) b!6891661))

(assert (= (and d!2161161 (not c!1281315)) b!6891664))

(assert (= (and b!6891664 res!2809828) b!6891662))

(assert (= (and b!6891662 c!1281314) b!6891659))

(assert (= (and b!6891662 (not c!1281314)) b!6891660))

(assert (= (and b!6891660 c!1281313) b!6891666))

(assert (= (and b!6891660 (not c!1281313)) b!6891668))

(assert (= (and b!6891666 (not res!2809829)) b!6891667))

(assert (= (and b!6891668 c!1281316) b!6891669))

(assert (= (and b!6891668 (not c!1281316)) b!6891663))

(assert (= (and b!6891669 (not res!2809830)) b!6891665))

(assert (= (or b!6891665 b!6891663) bm!627085))

(assert (= (or b!6891661 b!6891669) bm!627084))

(declare-fun m!7613180 () Bool)

(assert (=> b!6891666 m!7613180))

(assert (=> bm!627084 m!7613130))

(declare-fun m!7613182 () Bool)

(assert (=> b!6891667 m!7613182))

(declare-fun m!7613184 () Bool)

(assert (=> bm!627085 m!7613184))

(assert (=> b!6891420 d!2161161))

(declare-fun bs!1840475 () Bool)

(declare-fun b!6891686 () Bool)

(assert (= bs!1840475 (and b!6891686 b!6891665)))

(declare-fun lambda!390645 () Int)

(assert (=> bs!1840475 (= (and (= (reg!17140 lt!2462950) (reg!17140 lt!2462949)) (= lt!2462950 lt!2462949)) (= lambda!390645 lambda!390641))))

(declare-fun bs!1840476 () Bool)

(assert (= bs!1840476 (and b!6891686 b!6891663)))

(assert (=> bs!1840476 (not (= lambda!390645 lambda!390644))))

(assert (=> b!6891686 true))

(assert (=> b!6891686 true))

(declare-fun bs!1840477 () Bool)

(declare-fun b!6891684 () Bool)

(assert (= bs!1840477 (and b!6891684 b!6891665)))

(declare-fun lambda!390648 () Int)

(assert (=> bs!1840477 (not (= lambda!390648 lambda!390641))))

(declare-fun bs!1840478 () Bool)

(assert (= bs!1840478 (and b!6891684 b!6891663)))

(assert (=> bs!1840478 (= (and (= (regOne!34134 lt!2462950) (regOne!34134 lt!2462949)) (= (regTwo!34134 lt!2462950) (regTwo!34134 lt!2462949))) (= lambda!390648 lambda!390644))))

(declare-fun bs!1840479 () Bool)

(assert (= bs!1840479 (and b!6891684 b!6891686)))

(assert (=> bs!1840479 (not (= lambda!390648 lambda!390645))))

(assert (=> b!6891684 true))

(assert (=> b!6891684 true))

(declare-fun b!6891680 () Bool)

(declare-fun e!4151672 () Bool)

(assert (=> b!6891680 (= e!4151672 (= s!14361 (Cons!66444 (c!1281259 lt!2462950) Nil!66444)))))

(declare-fun b!6891681 () Bool)

(declare-fun c!1281317 () Bool)

(assert (=> b!6891681 (= c!1281317 ((_ is Union!16811) lt!2462950))))

(declare-fun e!4151677 () Bool)

(assert (=> b!6891681 (= e!4151672 e!4151677)))

(declare-fun b!6891682 () Bool)

(declare-fun e!4151673 () Bool)

(declare-fun call!627091 () Bool)

(assert (=> b!6891682 (= e!4151673 call!627091)))

(declare-fun d!2161169 () Bool)

(declare-fun c!1281319 () Bool)

(assert (=> d!2161169 (= c!1281319 ((_ is EmptyExpr!16811) lt!2462950))))

(assert (=> d!2161169 (= (matchRSpec!3874 lt!2462950 s!14361) e!4151673)))

(declare-fun b!6891683 () Bool)

(declare-fun c!1281318 () Bool)

(assert (=> b!6891683 (= c!1281318 ((_ is ElementMatch!16811) lt!2462950))))

(declare-fun e!4151676 () Bool)

(assert (=> b!6891683 (= e!4151676 e!4151672)))

(declare-fun e!4151671 () Bool)

(declare-fun call!627092 () Bool)

(assert (=> b!6891684 (= e!4151671 call!627092)))

(declare-fun b!6891685 () Bool)

(assert (=> b!6891685 (= e!4151673 e!4151676)))

(declare-fun res!2809837 () Bool)

(assert (=> b!6891685 (= res!2809837 (not ((_ is EmptyLang!16811) lt!2462950)))))

(assert (=> b!6891685 (=> (not res!2809837) (not e!4151676))))

(declare-fun e!4151674 () Bool)

(assert (=> b!6891686 (= e!4151674 call!627092)))

(declare-fun b!6891687 () Bool)

(declare-fun e!4151675 () Bool)

(assert (=> b!6891687 (= e!4151677 e!4151675)))

(declare-fun res!2809838 () Bool)

(assert (=> b!6891687 (= res!2809838 (matchRSpec!3874 (regOne!34135 lt!2462950) s!14361))))

(assert (=> b!6891687 (=> res!2809838 e!4151675)))

(declare-fun bm!627086 () Bool)

(assert (=> bm!627086 (= call!627091 (isEmpty!38698 s!14361))))

(declare-fun b!6891688 () Bool)

(assert (=> b!6891688 (= e!4151675 (matchRSpec!3874 (regTwo!34135 lt!2462950) s!14361))))

(declare-fun bm!627087 () Bool)

(declare-fun c!1281320 () Bool)

(assert (=> bm!627087 (= call!627092 (Exists!3820 (ite c!1281320 lambda!390645 lambda!390648)))))

(declare-fun b!6891689 () Bool)

(assert (=> b!6891689 (= e!4151677 e!4151671)))

(assert (=> b!6891689 (= c!1281320 ((_ is Star!16811) lt!2462950))))

(declare-fun b!6891690 () Bool)

(declare-fun res!2809839 () Bool)

(assert (=> b!6891690 (=> res!2809839 e!4151674)))

(assert (=> b!6891690 (= res!2809839 call!627091)))

(assert (=> b!6891690 (= e!4151671 e!4151674)))

(assert (= (and d!2161169 c!1281319) b!6891682))

(assert (= (and d!2161169 (not c!1281319)) b!6891685))

(assert (= (and b!6891685 res!2809837) b!6891683))

(assert (= (and b!6891683 c!1281318) b!6891680))

(assert (= (and b!6891683 (not c!1281318)) b!6891681))

(assert (= (and b!6891681 c!1281317) b!6891687))

(assert (= (and b!6891681 (not c!1281317)) b!6891689))

(assert (= (and b!6891687 (not res!2809838)) b!6891688))

(assert (= (and b!6891689 c!1281320) b!6891690))

(assert (= (and b!6891689 (not c!1281320)) b!6891684))

(assert (= (and b!6891690 (not res!2809839)) b!6891686))

(assert (= (or b!6891686 b!6891684) bm!627087))

(assert (= (or b!6891682 b!6891690) bm!627086))

(declare-fun m!7613186 () Bool)

(assert (=> b!6891687 m!7613186))

(assert (=> bm!627086 m!7613130))

(declare-fun m!7613188 () Bool)

(assert (=> b!6891688 m!7613188))

(declare-fun m!7613190 () Bool)

(assert (=> bm!627087 m!7613190))

(assert (=> b!6891420 d!2161169))

(declare-fun d!2161171 () Bool)

(assert (=> d!2161171 (= (matchR!8956 lt!2462949 s!14361) (matchRSpec!3874 lt!2462949 s!14361))))

(declare-fun lt!2462969 () Unit!160342)

(assert (=> d!2161171 (= lt!2462969 (choose!51318 lt!2462949 s!14361))))

(assert (=> d!2161171 (validRegex!8519 lt!2462949)))

(assert (=> d!2161171 (= (mainMatchTheorem!3874 lt!2462949 s!14361) lt!2462969)))

(declare-fun bs!1840480 () Bool)

(assert (= bs!1840480 d!2161171))

(assert (=> bs!1840480 m!7613084))

(assert (=> bs!1840480 m!7613078))

(declare-fun m!7613192 () Bool)

(assert (=> bs!1840480 m!7613192))

(assert (=> bs!1840480 m!7613152))

(assert (=> b!6891420 d!2161171))

(declare-fun b!6891739 () Bool)

(declare-fun res!2809863 () Bool)

(declare-fun e!4151713 () Bool)

(assert (=> b!6891739 (=> res!2809863 e!4151713)))

(assert (=> b!6891739 (= res!2809863 (not ((_ is Concat!25656) lt!2462946)))))

(declare-fun e!4151711 () Bool)

(assert (=> b!6891739 (= e!4151711 e!4151713)))

(declare-fun d!2161173 () Bool)

(declare-fun res!2809861 () Bool)

(declare-fun e!4151714 () Bool)

(assert (=> d!2161173 (=> res!2809861 e!4151714)))

(assert (=> d!2161173 (= res!2809861 ((_ is ElementMatch!16811) lt!2462946))))

(assert (=> d!2161173 (= (validRegex!8519 lt!2462946) e!4151714)))

(declare-fun b!6891740 () Bool)

(declare-fun e!4151712 () Bool)

(declare-fun call!627109 () Bool)

(assert (=> b!6891740 (= e!4151712 call!627109)))

(declare-fun b!6891741 () Bool)

(declare-fun e!4151710 () Bool)

(assert (=> b!6891741 (= e!4151714 e!4151710)))

(declare-fun c!1281334 () Bool)

(assert (=> b!6891741 (= c!1281334 ((_ is Star!16811) lt!2462946))))

(declare-fun b!6891742 () Bool)

(assert (=> b!6891742 (= e!4151710 e!4151712)))

(declare-fun res!2809862 () Bool)

(assert (=> b!6891742 (= res!2809862 (not (nullable!6692 (reg!17140 lt!2462946))))))

(assert (=> b!6891742 (=> (not res!2809862) (not e!4151712))))

(declare-fun b!6891743 () Bool)

(declare-fun e!4151709 () Bool)

(declare-fun call!627108 () Bool)

(assert (=> b!6891743 (= e!4151709 call!627108)))

(declare-fun bm!627102 () Bool)

(assert (=> bm!627102 (= call!627108 call!627109)))

(declare-fun bm!627103 () Bool)

(declare-fun c!1281333 () Bool)

(assert (=> bm!627103 (= call!627109 (validRegex!8519 (ite c!1281334 (reg!17140 lt!2462946) (ite c!1281333 (regOne!34135 lt!2462946) (regTwo!34134 lt!2462946)))))))

(declare-fun b!6891744 () Bool)

(declare-fun res!2809860 () Bool)

(declare-fun e!4151708 () Bool)

(assert (=> b!6891744 (=> (not res!2809860) (not e!4151708))))

(assert (=> b!6891744 (= res!2809860 call!627108)))

(assert (=> b!6891744 (= e!4151711 e!4151708)))

(declare-fun b!6891745 () Bool)

(declare-fun call!627107 () Bool)

(assert (=> b!6891745 (= e!4151708 call!627107)))

(declare-fun b!6891746 () Bool)

(assert (=> b!6891746 (= e!4151710 e!4151711)))

(assert (=> b!6891746 (= c!1281333 ((_ is Union!16811) lt!2462946))))

(declare-fun b!6891747 () Bool)

(assert (=> b!6891747 (= e!4151713 e!4151709)))

(declare-fun res!2809864 () Bool)

(assert (=> b!6891747 (=> (not res!2809864) (not e!4151709))))

(assert (=> b!6891747 (= res!2809864 call!627107)))

(declare-fun bm!627104 () Bool)

(assert (=> bm!627104 (= call!627107 (validRegex!8519 (ite c!1281333 (regTwo!34135 lt!2462946) (regOne!34134 lt!2462946))))))

(assert (= (and d!2161173 (not res!2809861)) b!6891741))

(assert (= (and b!6891741 c!1281334) b!6891742))

(assert (= (and b!6891741 (not c!1281334)) b!6891746))

(assert (= (and b!6891742 res!2809862) b!6891740))

(assert (= (and b!6891746 c!1281333) b!6891744))

(assert (= (and b!6891746 (not c!1281333)) b!6891739))

(assert (= (and b!6891744 res!2809860) b!6891745))

(assert (= (and b!6891739 (not res!2809863)) b!6891747))

(assert (= (and b!6891747 res!2809864) b!6891743))

(assert (= (or b!6891744 b!6891743) bm!627102))

(assert (= (or b!6891745 b!6891747) bm!627104))

(assert (= (or b!6891740 bm!627102) bm!627103))

(declare-fun m!7613200 () Bool)

(assert (=> b!6891742 m!7613200))

(declare-fun m!7613202 () Bool)

(assert (=> bm!627103 m!7613202))

(declare-fun m!7613204 () Bool)

(assert (=> bm!627104 m!7613204))

(assert (=> b!6891426 d!2161173))

(declare-fun b!6891748 () Bool)

(declare-fun res!2809868 () Bool)

(declare-fun e!4151720 () Bool)

(assert (=> b!6891748 (=> res!2809868 e!4151720)))

(assert (=> b!6891748 (= res!2809868 (not ((_ is Concat!25656) r3!135)))))

(declare-fun e!4151718 () Bool)

(assert (=> b!6891748 (= e!4151718 e!4151720)))

(declare-fun d!2161177 () Bool)

(declare-fun res!2809866 () Bool)

(declare-fun e!4151721 () Bool)

(assert (=> d!2161177 (=> res!2809866 e!4151721)))

(assert (=> d!2161177 (= res!2809866 ((_ is ElementMatch!16811) r3!135))))

(assert (=> d!2161177 (= (validRegex!8519 r3!135) e!4151721)))

(declare-fun b!6891749 () Bool)

(declare-fun e!4151719 () Bool)

(declare-fun call!627112 () Bool)

(assert (=> b!6891749 (= e!4151719 call!627112)))

(declare-fun b!6891750 () Bool)

(declare-fun e!4151717 () Bool)

(assert (=> b!6891750 (= e!4151721 e!4151717)))

(declare-fun c!1281336 () Bool)

(assert (=> b!6891750 (= c!1281336 ((_ is Star!16811) r3!135))))

(declare-fun b!6891751 () Bool)

(assert (=> b!6891751 (= e!4151717 e!4151719)))

(declare-fun res!2809867 () Bool)

(assert (=> b!6891751 (= res!2809867 (not (nullable!6692 (reg!17140 r3!135))))))

(assert (=> b!6891751 (=> (not res!2809867) (not e!4151719))))

(declare-fun b!6891752 () Bool)

(declare-fun e!4151716 () Bool)

(declare-fun call!627111 () Bool)

(assert (=> b!6891752 (= e!4151716 call!627111)))

(declare-fun bm!627105 () Bool)

(assert (=> bm!627105 (= call!627111 call!627112)))

(declare-fun bm!627106 () Bool)

(declare-fun c!1281335 () Bool)

(assert (=> bm!627106 (= call!627112 (validRegex!8519 (ite c!1281336 (reg!17140 r3!135) (ite c!1281335 (regOne!34135 r3!135) (regTwo!34134 r3!135)))))))

(declare-fun b!6891753 () Bool)

(declare-fun res!2809865 () Bool)

(declare-fun e!4151715 () Bool)

(assert (=> b!6891753 (=> (not res!2809865) (not e!4151715))))

(assert (=> b!6891753 (= res!2809865 call!627111)))

(assert (=> b!6891753 (= e!4151718 e!4151715)))

(declare-fun b!6891754 () Bool)

(declare-fun call!627110 () Bool)

(assert (=> b!6891754 (= e!4151715 call!627110)))

(declare-fun b!6891755 () Bool)

(assert (=> b!6891755 (= e!4151717 e!4151718)))

(assert (=> b!6891755 (= c!1281335 ((_ is Union!16811) r3!135))))

(declare-fun b!6891756 () Bool)

(assert (=> b!6891756 (= e!4151720 e!4151716)))

(declare-fun res!2809869 () Bool)

(assert (=> b!6891756 (=> (not res!2809869) (not e!4151716))))

(assert (=> b!6891756 (= res!2809869 call!627110)))

(declare-fun bm!627107 () Bool)

(assert (=> bm!627107 (= call!627110 (validRegex!8519 (ite c!1281335 (regTwo!34135 r3!135) (regOne!34134 r3!135))))))

(assert (= (and d!2161177 (not res!2809866)) b!6891750))

(assert (= (and b!6891750 c!1281336) b!6891751))

(assert (= (and b!6891750 (not c!1281336)) b!6891755))

(assert (= (and b!6891751 res!2809867) b!6891749))

(assert (= (and b!6891755 c!1281335) b!6891753))

(assert (= (and b!6891755 (not c!1281335)) b!6891748))

(assert (= (and b!6891753 res!2809865) b!6891754))

(assert (= (and b!6891748 (not res!2809868)) b!6891756))

(assert (= (and b!6891756 res!2809869) b!6891752))

(assert (= (or b!6891753 b!6891752) bm!627105))

(assert (= (or b!6891754 b!6891756) bm!627107))

(assert (= (or b!6891749 bm!627105) bm!627106))

(declare-fun m!7613206 () Bool)

(assert (=> b!6891751 m!7613206))

(declare-fun m!7613208 () Bool)

(assert (=> bm!627106 m!7613208))

(declare-fun m!7613210 () Bool)

(assert (=> bm!627107 m!7613210))

(assert (=> b!6891422 d!2161177))

(declare-fun b!6891757 () Bool)

(declare-fun res!2809873 () Bool)

(declare-fun e!4151727 () Bool)

(assert (=> b!6891757 (=> res!2809873 e!4151727)))

(assert (=> b!6891757 (= res!2809873 (not ((_ is Concat!25656) r1!6342)))))

(declare-fun e!4151725 () Bool)

(assert (=> b!6891757 (= e!4151725 e!4151727)))

(declare-fun d!2161179 () Bool)

(declare-fun res!2809871 () Bool)

(declare-fun e!4151728 () Bool)

(assert (=> d!2161179 (=> res!2809871 e!4151728)))

(assert (=> d!2161179 (= res!2809871 ((_ is ElementMatch!16811) r1!6342))))

(assert (=> d!2161179 (= (validRegex!8519 r1!6342) e!4151728)))

(declare-fun b!6891758 () Bool)

(declare-fun e!4151726 () Bool)

(declare-fun call!627115 () Bool)

(assert (=> b!6891758 (= e!4151726 call!627115)))

(declare-fun b!6891759 () Bool)

(declare-fun e!4151724 () Bool)

(assert (=> b!6891759 (= e!4151728 e!4151724)))

(declare-fun c!1281338 () Bool)

(assert (=> b!6891759 (= c!1281338 ((_ is Star!16811) r1!6342))))

(declare-fun b!6891760 () Bool)

(assert (=> b!6891760 (= e!4151724 e!4151726)))

(declare-fun res!2809872 () Bool)

(assert (=> b!6891760 (= res!2809872 (not (nullable!6692 (reg!17140 r1!6342))))))

(assert (=> b!6891760 (=> (not res!2809872) (not e!4151726))))

(declare-fun b!6891761 () Bool)

(declare-fun e!4151723 () Bool)

(declare-fun call!627114 () Bool)

(assert (=> b!6891761 (= e!4151723 call!627114)))

(declare-fun bm!627108 () Bool)

(assert (=> bm!627108 (= call!627114 call!627115)))

(declare-fun bm!627109 () Bool)

(declare-fun c!1281337 () Bool)

(assert (=> bm!627109 (= call!627115 (validRegex!8519 (ite c!1281338 (reg!17140 r1!6342) (ite c!1281337 (regOne!34135 r1!6342) (regTwo!34134 r1!6342)))))))

(declare-fun b!6891762 () Bool)

(declare-fun res!2809870 () Bool)

(declare-fun e!4151722 () Bool)

(assert (=> b!6891762 (=> (not res!2809870) (not e!4151722))))

(assert (=> b!6891762 (= res!2809870 call!627114)))

(assert (=> b!6891762 (= e!4151725 e!4151722)))

(declare-fun b!6891763 () Bool)

(declare-fun call!627113 () Bool)

(assert (=> b!6891763 (= e!4151722 call!627113)))

(declare-fun b!6891764 () Bool)

(assert (=> b!6891764 (= e!4151724 e!4151725)))

(assert (=> b!6891764 (= c!1281337 ((_ is Union!16811) r1!6342))))

(declare-fun b!6891765 () Bool)

(assert (=> b!6891765 (= e!4151727 e!4151723)))

(declare-fun res!2809874 () Bool)

(assert (=> b!6891765 (=> (not res!2809874) (not e!4151723))))

(assert (=> b!6891765 (= res!2809874 call!627113)))

(declare-fun bm!627110 () Bool)

(assert (=> bm!627110 (= call!627113 (validRegex!8519 (ite c!1281337 (regTwo!34135 r1!6342) (regOne!34134 r1!6342))))))

(assert (= (and d!2161179 (not res!2809871)) b!6891759))

(assert (= (and b!6891759 c!1281338) b!6891760))

(assert (= (and b!6891759 (not c!1281338)) b!6891764))

(assert (= (and b!6891760 res!2809872) b!6891758))

(assert (= (and b!6891764 c!1281337) b!6891762))

(assert (= (and b!6891764 (not c!1281337)) b!6891757))

(assert (= (and b!6891762 res!2809870) b!6891763))

(assert (= (and b!6891757 (not res!2809873)) b!6891765))

(assert (= (and b!6891765 res!2809874) b!6891761))

(assert (= (or b!6891762 b!6891761) bm!627108))

(assert (= (or b!6891763 b!6891765) bm!627110))

(assert (= (or b!6891758 bm!627108) bm!627109))

(declare-fun m!7613216 () Bool)

(assert (=> b!6891760 m!7613216))

(declare-fun m!7613220 () Bool)

(assert (=> bm!627109 m!7613220))

(declare-fun m!7613222 () Bool)

(assert (=> bm!627110 m!7613222))

(assert (=> start!664302 d!2161179))

(declare-fun b!6891766 () Bool)

(declare-fun res!2809878 () Bool)

(declare-fun e!4151734 () Bool)

(assert (=> b!6891766 (=> res!2809878 e!4151734)))

(assert (=> b!6891766 (= res!2809878 (not ((_ is Concat!25656) r2!6280)))))

(declare-fun e!4151732 () Bool)

(assert (=> b!6891766 (= e!4151732 e!4151734)))

(declare-fun d!2161183 () Bool)

(declare-fun res!2809876 () Bool)

(declare-fun e!4151735 () Bool)

(assert (=> d!2161183 (=> res!2809876 e!4151735)))

(assert (=> d!2161183 (= res!2809876 ((_ is ElementMatch!16811) r2!6280))))

(assert (=> d!2161183 (= (validRegex!8519 r2!6280) e!4151735)))

(declare-fun b!6891767 () Bool)

(declare-fun e!4151733 () Bool)

(declare-fun call!627118 () Bool)

(assert (=> b!6891767 (= e!4151733 call!627118)))

(declare-fun b!6891768 () Bool)

(declare-fun e!4151731 () Bool)

(assert (=> b!6891768 (= e!4151735 e!4151731)))

(declare-fun c!1281340 () Bool)

(assert (=> b!6891768 (= c!1281340 ((_ is Star!16811) r2!6280))))

(declare-fun b!6891769 () Bool)

(assert (=> b!6891769 (= e!4151731 e!4151733)))

(declare-fun res!2809877 () Bool)

(assert (=> b!6891769 (= res!2809877 (not (nullable!6692 (reg!17140 r2!6280))))))

(assert (=> b!6891769 (=> (not res!2809877) (not e!4151733))))

(declare-fun b!6891770 () Bool)

(declare-fun e!4151730 () Bool)

(declare-fun call!627117 () Bool)

(assert (=> b!6891770 (= e!4151730 call!627117)))

(declare-fun bm!627111 () Bool)

(assert (=> bm!627111 (= call!627117 call!627118)))

(declare-fun c!1281339 () Bool)

(declare-fun bm!627112 () Bool)

(assert (=> bm!627112 (= call!627118 (validRegex!8519 (ite c!1281340 (reg!17140 r2!6280) (ite c!1281339 (regOne!34135 r2!6280) (regTwo!34134 r2!6280)))))))

(declare-fun b!6891771 () Bool)

(declare-fun res!2809875 () Bool)

(declare-fun e!4151729 () Bool)

(assert (=> b!6891771 (=> (not res!2809875) (not e!4151729))))

(assert (=> b!6891771 (= res!2809875 call!627117)))

(assert (=> b!6891771 (= e!4151732 e!4151729)))

(declare-fun b!6891772 () Bool)

(declare-fun call!627116 () Bool)

(assert (=> b!6891772 (= e!4151729 call!627116)))

(declare-fun b!6891773 () Bool)

(assert (=> b!6891773 (= e!4151731 e!4151732)))

(assert (=> b!6891773 (= c!1281339 ((_ is Union!16811) r2!6280))))

(declare-fun b!6891774 () Bool)

(assert (=> b!6891774 (= e!4151734 e!4151730)))

(declare-fun res!2809879 () Bool)

(assert (=> b!6891774 (=> (not res!2809879) (not e!4151730))))

(assert (=> b!6891774 (= res!2809879 call!627116)))

(declare-fun bm!627113 () Bool)

(assert (=> bm!627113 (= call!627116 (validRegex!8519 (ite c!1281339 (regTwo!34135 r2!6280) (regOne!34134 r2!6280))))))

(assert (= (and d!2161183 (not res!2809876)) b!6891768))

(assert (= (and b!6891768 c!1281340) b!6891769))

(assert (= (and b!6891768 (not c!1281340)) b!6891773))

(assert (= (and b!6891769 res!2809877) b!6891767))

(assert (= (and b!6891773 c!1281339) b!6891771))

(assert (= (and b!6891773 (not c!1281339)) b!6891766))

(assert (= (and b!6891771 res!2809875) b!6891772))

(assert (= (and b!6891766 (not res!2809878)) b!6891774))

(assert (= (and b!6891774 res!2809879) b!6891770))

(assert (= (or b!6891771 b!6891770) bm!627111))

(assert (= (or b!6891772 b!6891774) bm!627113))

(assert (= (or b!6891767 bm!627111) bm!627112))

(declare-fun m!7613226 () Bool)

(assert (=> b!6891769 m!7613226))

(declare-fun m!7613228 () Bool)

(assert (=> bm!627112 m!7613228))

(declare-fun m!7613230 () Bool)

(assert (=> bm!627113 m!7613230))

(assert (=> b!6891424 d!2161183))

(declare-fun b!6891868 () Bool)

(declare-fun e!4151767 () List!66568)

(assert (=> b!6891868 (= e!4151767 (Cons!66444 (h!72892 Nil!66444) (++!14886 (t!380311 Nil!66444) s!14361)))))

(declare-fun d!2161187 () Bool)

(declare-fun e!4151768 () Bool)

(assert (=> d!2161187 e!4151768))

(declare-fun res!2809890 () Bool)

(assert (=> d!2161187 (=> (not res!2809890) (not e!4151768))))

(declare-fun lt!2462973 () List!66568)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13052 (List!66568) (InoxSet C!33892))

(assert (=> d!2161187 (= res!2809890 (= (content!13052 lt!2462973) ((_ map or) (content!13052 Nil!66444) (content!13052 s!14361))))))

(assert (=> d!2161187 (= lt!2462973 e!4151767)))

(declare-fun c!1281345 () Bool)

(assert (=> d!2161187 (= c!1281345 ((_ is Nil!66444) Nil!66444))))

(assert (=> d!2161187 (= (++!14886 Nil!66444 s!14361) lt!2462973)))

(declare-fun b!6891870 () Bool)

(assert (=> b!6891870 (= e!4151768 (or (not (= s!14361 Nil!66444)) (= lt!2462973 Nil!66444)))))

(declare-fun b!6891867 () Bool)

(assert (=> b!6891867 (= e!4151767 s!14361)))

(declare-fun b!6891869 () Bool)

(declare-fun res!2809889 () Bool)

(assert (=> b!6891869 (=> (not res!2809889) (not e!4151768))))

(declare-fun size!40749 (List!66568) Int)

(assert (=> b!6891869 (= res!2809889 (= (size!40749 lt!2462973) (+ (size!40749 Nil!66444) (size!40749 s!14361))))))

(assert (= (and d!2161187 c!1281345) b!6891867))

(assert (= (and d!2161187 (not c!1281345)) b!6891868))

(assert (= (and d!2161187 res!2809890) b!6891869))

(assert (= (and b!6891869 res!2809889) b!6891870))

(declare-fun m!7613238 () Bool)

(assert (=> b!6891868 m!7613238))

(declare-fun m!7613240 () Bool)

(assert (=> d!2161187 m!7613240))

(declare-fun m!7613242 () Bool)

(assert (=> d!2161187 m!7613242))

(declare-fun m!7613244 () Bool)

(assert (=> d!2161187 m!7613244))

(declare-fun m!7613246 () Bool)

(assert (=> b!6891869 m!7613246))

(declare-fun m!7613248 () Bool)

(assert (=> b!6891869 m!7613248))

(declare-fun m!7613250 () Bool)

(assert (=> b!6891869 m!7613250))

(assert (=> b!6891418 d!2161187))

(declare-fun b!6891883 () Bool)

(declare-fun e!4151771 () Bool)

(declare-fun tp!1896315 () Bool)

(assert (=> b!6891883 (= e!4151771 tp!1896315)))

(assert (=> b!6891431 (= tp!1896201 e!4151771)))

(declare-fun b!6891882 () Bool)

(declare-fun tp!1896318 () Bool)

(declare-fun tp!1896314 () Bool)

(assert (=> b!6891882 (= e!4151771 (and tp!1896318 tp!1896314))))

(declare-fun b!6891884 () Bool)

(declare-fun tp!1896317 () Bool)

(declare-fun tp!1896316 () Bool)

(assert (=> b!6891884 (= e!4151771 (and tp!1896317 tp!1896316))))

(declare-fun b!6891881 () Bool)

(assert (=> b!6891881 (= e!4151771 tp_is_empty!42847)))

(assert (= (and b!6891431 ((_ is ElementMatch!16811) (regOne!34135 r1!6342))) b!6891881))

(assert (= (and b!6891431 ((_ is Concat!25656) (regOne!34135 r1!6342))) b!6891882))

(assert (= (and b!6891431 ((_ is Star!16811) (regOne!34135 r1!6342))) b!6891883))

(assert (= (and b!6891431 ((_ is Union!16811) (regOne!34135 r1!6342))) b!6891884))

(declare-fun b!6891887 () Bool)

(declare-fun e!4151772 () Bool)

(declare-fun tp!1896320 () Bool)

(assert (=> b!6891887 (= e!4151772 tp!1896320)))

(assert (=> b!6891431 (= tp!1896203 e!4151772)))

(declare-fun b!6891886 () Bool)

(declare-fun tp!1896323 () Bool)

(declare-fun tp!1896319 () Bool)

(assert (=> b!6891886 (= e!4151772 (and tp!1896323 tp!1896319))))

(declare-fun b!6891888 () Bool)

(declare-fun tp!1896322 () Bool)

(declare-fun tp!1896321 () Bool)

(assert (=> b!6891888 (= e!4151772 (and tp!1896322 tp!1896321))))

(declare-fun b!6891885 () Bool)

(assert (=> b!6891885 (= e!4151772 tp_is_empty!42847)))

(assert (= (and b!6891431 ((_ is ElementMatch!16811) (regTwo!34135 r1!6342))) b!6891885))

(assert (= (and b!6891431 ((_ is Concat!25656) (regTwo!34135 r1!6342))) b!6891886))

(assert (= (and b!6891431 ((_ is Star!16811) (regTwo!34135 r1!6342))) b!6891887))

(assert (= (and b!6891431 ((_ is Union!16811) (regTwo!34135 r1!6342))) b!6891888))

(declare-fun b!6891891 () Bool)

(declare-fun e!4151773 () Bool)

(declare-fun tp!1896325 () Bool)

(assert (=> b!6891891 (= e!4151773 tp!1896325)))

(assert (=> b!6891432 (= tp!1896208 e!4151773)))

(declare-fun b!6891890 () Bool)

(declare-fun tp!1896328 () Bool)

(declare-fun tp!1896324 () Bool)

(assert (=> b!6891890 (= e!4151773 (and tp!1896328 tp!1896324))))

(declare-fun b!6891892 () Bool)

(declare-fun tp!1896327 () Bool)

(declare-fun tp!1896326 () Bool)

(assert (=> b!6891892 (= e!4151773 (and tp!1896327 tp!1896326))))

(declare-fun b!6891889 () Bool)

(assert (=> b!6891889 (= e!4151773 tp_is_empty!42847)))

(assert (= (and b!6891432 ((_ is ElementMatch!16811) (regOne!34134 r1!6342))) b!6891889))

(assert (= (and b!6891432 ((_ is Concat!25656) (regOne!34134 r1!6342))) b!6891890))

(assert (= (and b!6891432 ((_ is Star!16811) (regOne!34134 r1!6342))) b!6891891))

(assert (= (and b!6891432 ((_ is Union!16811) (regOne!34134 r1!6342))) b!6891892))

(declare-fun b!6891895 () Bool)

(declare-fun e!4151774 () Bool)

(declare-fun tp!1896330 () Bool)

(assert (=> b!6891895 (= e!4151774 tp!1896330)))

(assert (=> b!6891432 (= tp!1896202 e!4151774)))

(declare-fun b!6891894 () Bool)

(declare-fun tp!1896333 () Bool)

(declare-fun tp!1896329 () Bool)

(assert (=> b!6891894 (= e!4151774 (and tp!1896333 tp!1896329))))

(declare-fun b!6891896 () Bool)

(declare-fun tp!1896332 () Bool)

(declare-fun tp!1896331 () Bool)

(assert (=> b!6891896 (= e!4151774 (and tp!1896332 tp!1896331))))

(declare-fun b!6891893 () Bool)

(assert (=> b!6891893 (= e!4151774 tp_is_empty!42847)))

(assert (= (and b!6891432 ((_ is ElementMatch!16811) (regTwo!34134 r1!6342))) b!6891893))

(assert (= (and b!6891432 ((_ is Concat!25656) (regTwo!34134 r1!6342))) b!6891894))

(assert (= (and b!6891432 ((_ is Star!16811) (regTwo!34134 r1!6342))) b!6891895))

(assert (= (and b!6891432 ((_ is Union!16811) (regTwo!34134 r1!6342))) b!6891896))

(declare-fun b!6891899 () Bool)

(declare-fun e!4151775 () Bool)

(declare-fun tp!1896335 () Bool)

(assert (=> b!6891899 (= e!4151775 tp!1896335)))

(assert (=> b!6891427 (= tp!1896215 e!4151775)))

(declare-fun b!6891898 () Bool)

(declare-fun tp!1896338 () Bool)

(declare-fun tp!1896334 () Bool)

(assert (=> b!6891898 (= e!4151775 (and tp!1896338 tp!1896334))))

(declare-fun b!6891900 () Bool)

(declare-fun tp!1896337 () Bool)

(declare-fun tp!1896336 () Bool)

(assert (=> b!6891900 (= e!4151775 (and tp!1896337 tp!1896336))))

(declare-fun b!6891897 () Bool)

(assert (=> b!6891897 (= e!4151775 tp_is_empty!42847)))

(assert (= (and b!6891427 ((_ is ElementMatch!16811) (reg!17140 r3!135))) b!6891897))

(assert (= (and b!6891427 ((_ is Concat!25656) (reg!17140 r3!135))) b!6891898))

(assert (= (and b!6891427 ((_ is Star!16811) (reg!17140 r3!135))) b!6891899))

(assert (= (and b!6891427 ((_ is Union!16811) (reg!17140 r3!135))) b!6891900))

(declare-fun b!6891905 () Bool)

(declare-fun e!4151778 () Bool)

(declare-fun tp!1896341 () Bool)

(assert (=> b!6891905 (= e!4151778 (and tp_is_empty!42847 tp!1896341))))

(assert (=> b!6891421 (= tp!1896200 e!4151778)))

(assert (= (and b!6891421 ((_ is Cons!66444) (t!380311 s!14361))) b!6891905))

(declare-fun b!6891908 () Bool)

(declare-fun e!4151779 () Bool)

(declare-fun tp!1896343 () Bool)

(assert (=> b!6891908 (= e!4151779 tp!1896343)))

(assert (=> b!6891428 (= tp!1896205 e!4151779)))

(declare-fun b!6891907 () Bool)

(declare-fun tp!1896346 () Bool)

(declare-fun tp!1896342 () Bool)

(assert (=> b!6891907 (= e!4151779 (and tp!1896346 tp!1896342))))

(declare-fun b!6891909 () Bool)

(declare-fun tp!1896345 () Bool)

(declare-fun tp!1896344 () Bool)

(assert (=> b!6891909 (= e!4151779 (and tp!1896345 tp!1896344))))

(declare-fun b!6891906 () Bool)

(assert (=> b!6891906 (= e!4151779 tp_is_empty!42847)))

(assert (= (and b!6891428 ((_ is ElementMatch!16811) (regOne!34134 r3!135))) b!6891906))

(assert (= (and b!6891428 ((_ is Concat!25656) (regOne!34134 r3!135))) b!6891907))

(assert (= (and b!6891428 ((_ is Star!16811) (regOne!34134 r3!135))) b!6891908))

(assert (= (and b!6891428 ((_ is Union!16811) (regOne!34134 r3!135))) b!6891909))

(declare-fun b!6891912 () Bool)

(declare-fun e!4151780 () Bool)

(declare-fun tp!1896348 () Bool)

(assert (=> b!6891912 (= e!4151780 tp!1896348)))

(assert (=> b!6891428 (= tp!1896213 e!4151780)))

(declare-fun b!6891911 () Bool)

(declare-fun tp!1896351 () Bool)

(declare-fun tp!1896347 () Bool)

(assert (=> b!6891911 (= e!4151780 (and tp!1896351 tp!1896347))))

(declare-fun b!6891913 () Bool)

(declare-fun tp!1896350 () Bool)

(declare-fun tp!1896349 () Bool)

(assert (=> b!6891913 (= e!4151780 (and tp!1896350 tp!1896349))))

(declare-fun b!6891910 () Bool)

(assert (=> b!6891910 (= e!4151780 tp_is_empty!42847)))

(assert (= (and b!6891428 ((_ is ElementMatch!16811) (regTwo!34134 r3!135))) b!6891910))

(assert (= (and b!6891428 ((_ is Concat!25656) (regTwo!34134 r3!135))) b!6891911))

(assert (= (and b!6891428 ((_ is Star!16811) (regTwo!34134 r3!135))) b!6891912))

(assert (= (and b!6891428 ((_ is Union!16811) (regTwo!34134 r3!135))) b!6891913))

(declare-fun b!6891916 () Bool)

(declare-fun e!4151781 () Bool)

(declare-fun tp!1896353 () Bool)

(assert (=> b!6891916 (= e!4151781 tp!1896353)))

(assert (=> b!6891423 (= tp!1896204 e!4151781)))

(declare-fun b!6891915 () Bool)

(declare-fun tp!1896356 () Bool)

(declare-fun tp!1896352 () Bool)

(assert (=> b!6891915 (= e!4151781 (and tp!1896356 tp!1896352))))

(declare-fun b!6891917 () Bool)

(declare-fun tp!1896355 () Bool)

(declare-fun tp!1896354 () Bool)

(assert (=> b!6891917 (= e!4151781 (and tp!1896355 tp!1896354))))

(declare-fun b!6891914 () Bool)

(assert (=> b!6891914 (= e!4151781 tp_is_empty!42847)))

(assert (= (and b!6891423 ((_ is ElementMatch!16811) (regOne!34135 r2!6280))) b!6891914))

(assert (= (and b!6891423 ((_ is Concat!25656) (regOne!34135 r2!6280))) b!6891915))

(assert (= (and b!6891423 ((_ is Star!16811) (regOne!34135 r2!6280))) b!6891916))

(assert (= (and b!6891423 ((_ is Union!16811) (regOne!34135 r2!6280))) b!6891917))

(declare-fun b!6891920 () Bool)

(declare-fun e!4151782 () Bool)

(declare-fun tp!1896358 () Bool)

(assert (=> b!6891920 (= e!4151782 tp!1896358)))

(assert (=> b!6891423 (= tp!1896209 e!4151782)))

(declare-fun b!6891919 () Bool)

(declare-fun tp!1896361 () Bool)

(declare-fun tp!1896357 () Bool)

(assert (=> b!6891919 (= e!4151782 (and tp!1896361 tp!1896357))))

(declare-fun b!6891921 () Bool)

(declare-fun tp!1896360 () Bool)

(declare-fun tp!1896359 () Bool)

(assert (=> b!6891921 (= e!4151782 (and tp!1896360 tp!1896359))))

(declare-fun b!6891918 () Bool)

(assert (=> b!6891918 (= e!4151782 tp_is_empty!42847)))

(assert (= (and b!6891423 ((_ is ElementMatch!16811) (regTwo!34135 r2!6280))) b!6891918))

(assert (= (and b!6891423 ((_ is Concat!25656) (regTwo!34135 r2!6280))) b!6891919))

(assert (= (and b!6891423 ((_ is Star!16811) (regTwo!34135 r2!6280))) b!6891920))

(assert (= (and b!6891423 ((_ is Union!16811) (regTwo!34135 r2!6280))) b!6891921))

(declare-fun b!6891924 () Bool)

(declare-fun e!4151783 () Bool)

(declare-fun tp!1896363 () Bool)

(assert (=> b!6891924 (= e!4151783 tp!1896363)))

(assert (=> b!6891433 (= tp!1896207 e!4151783)))

(declare-fun b!6891923 () Bool)

(declare-fun tp!1896366 () Bool)

(declare-fun tp!1896362 () Bool)

(assert (=> b!6891923 (= e!4151783 (and tp!1896366 tp!1896362))))

(declare-fun b!6891925 () Bool)

(declare-fun tp!1896365 () Bool)

(declare-fun tp!1896364 () Bool)

(assert (=> b!6891925 (= e!4151783 (and tp!1896365 tp!1896364))))

(declare-fun b!6891922 () Bool)

(assert (=> b!6891922 (= e!4151783 tp_is_empty!42847)))

(assert (= (and b!6891433 ((_ is ElementMatch!16811) (reg!17140 r2!6280))) b!6891922))

(assert (= (and b!6891433 ((_ is Concat!25656) (reg!17140 r2!6280))) b!6891923))

(assert (= (and b!6891433 ((_ is Star!16811) (reg!17140 r2!6280))) b!6891924))

(assert (= (and b!6891433 ((_ is Union!16811) (reg!17140 r2!6280))) b!6891925))

(declare-fun b!6891928 () Bool)

(declare-fun e!4151784 () Bool)

(declare-fun tp!1896368 () Bool)

(assert (=> b!6891928 (= e!4151784 tp!1896368)))

(assert (=> b!6891435 (= tp!1896212 e!4151784)))

(declare-fun b!6891927 () Bool)

(declare-fun tp!1896371 () Bool)

(declare-fun tp!1896367 () Bool)

(assert (=> b!6891927 (= e!4151784 (and tp!1896371 tp!1896367))))

(declare-fun b!6891929 () Bool)

(declare-fun tp!1896370 () Bool)

(declare-fun tp!1896369 () Bool)

(assert (=> b!6891929 (= e!4151784 (and tp!1896370 tp!1896369))))

(declare-fun b!6891926 () Bool)

(assert (=> b!6891926 (= e!4151784 tp_is_empty!42847)))

(assert (= (and b!6891435 ((_ is ElementMatch!16811) (regOne!34134 r2!6280))) b!6891926))

(assert (= (and b!6891435 ((_ is Concat!25656) (regOne!34134 r2!6280))) b!6891927))

(assert (= (and b!6891435 ((_ is Star!16811) (regOne!34134 r2!6280))) b!6891928))

(assert (= (and b!6891435 ((_ is Union!16811) (regOne!34134 r2!6280))) b!6891929))

(declare-fun b!6891932 () Bool)

(declare-fun e!4151785 () Bool)

(declare-fun tp!1896373 () Bool)

(assert (=> b!6891932 (= e!4151785 tp!1896373)))

(assert (=> b!6891435 (= tp!1896211 e!4151785)))

(declare-fun b!6891931 () Bool)

(declare-fun tp!1896376 () Bool)

(declare-fun tp!1896372 () Bool)

(assert (=> b!6891931 (= e!4151785 (and tp!1896376 tp!1896372))))

(declare-fun b!6891933 () Bool)

(declare-fun tp!1896375 () Bool)

(declare-fun tp!1896374 () Bool)

(assert (=> b!6891933 (= e!4151785 (and tp!1896375 tp!1896374))))

(declare-fun b!6891930 () Bool)

(assert (=> b!6891930 (= e!4151785 tp_is_empty!42847)))

(assert (= (and b!6891435 ((_ is ElementMatch!16811) (regTwo!34134 r2!6280))) b!6891930))

(assert (= (and b!6891435 ((_ is Concat!25656) (regTwo!34134 r2!6280))) b!6891931))

(assert (= (and b!6891435 ((_ is Star!16811) (regTwo!34134 r2!6280))) b!6891932))

(assert (= (and b!6891435 ((_ is Union!16811) (regTwo!34134 r2!6280))) b!6891933))

(declare-fun b!6891936 () Bool)

(declare-fun e!4151786 () Bool)

(declare-fun tp!1896378 () Bool)

(assert (=> b!6891936 (= e!4151786 tp!1896378)))

(assert (=> b!6891434 (= tp!1896206 e!4151786)))

(declare-fun b!6891935 () Bool)

(declare-fun tp!1896381 () Bool)

(declare-fun tp!1896377 () Bool)

(assert (=> b!6891935 (= e!4151786 (and tp!1896381 tp!1896377))))

(declare-fun b!6891937 () Bool)

(declare-fun tp!1896380 () Bool)

(declare-fun tp!1896379 () Bool)

(assert (=> b!6891937 (= e!4151786 (and tp!1896380 tp!1896379))))

(declare-fun b!6891934 () Bool)

(assert (=> b!6891934 (= e!4151786 tp_is_empty!42847)))

(assert (= (and b!6891434 ((_ is ElementMatch!16811) (reg!17140 r1!6342))) b!6891934))

(assert (= (and b!6891434 ((_ is Concat!25656) (reg!17140 r1!6342))) b!6891935))

(assert (= (and b!6891434 ((_ is Star!16811) (reg!17140 r1!6342))) b!6891936))

(assert (= (and b!6891434 ((_ is Union!16811) (reg!17140 r1!6342))) b!6891937))

(declare-fun b!6891940 () Bool)

(declare-fun e!4151787 () Bool)

(declare-fun tp!1896383 () Bool)

(assert (=> b!6891940 (= e!4151787 tp!1896383)))

(assert (=> b!6891429 (= tp!1896214 e!4151787)))

(declare-fun b!6891939 () Bool)

(declare-fun tp!1896386 () Bool)

(declare-fun tp!1896382 () Bool)

(assert (=> b!6891939 (= e!4151787 (and tp!1896386 tp!1896382))))

(declare-fun b!6891941 () Bool)

(declare-fun tp!1896385 () Bool)

(declare-fun tp!1896384 () Bool)

(assert (=> b!6891941 (= e!4151787 (and tp!1896385 tp!1896384))))

(declare-fun b!6891938 () Bool)

(assert (=> b!6891938 (= e!4151787 tp_is_empty!42847)))

(assert (= (and b!6891429 ((_ is ElementMatch!16811) (regOne!34135 r3!135))) b!6891938))

(assert (= (and b!6891429 ((_ is Concat!25656) (regOne!34135 r3!135))) b!6891939))

(assert (= (and b!6891429 ((_ is Star!16811) (regOne!34135 r3!135))) b!6891940))

(assert (= (and b!6891429 ((_ is Union!16811) (regOne!34135 r3!135))) b!6891941))

(declare-fun b!6891944 () Bool)

(declare-fun e!4151788 () Bool)

(declare-fun tp!1896388 () Bool)

(assert (=> b!6891944 (= e!4151788 tp!1896388)))

(assert (=> b!6891429 (= tp!1896210 e!4151788)))

(declare-fun b!6891943 () Bool)

(declare-fun tp!1896391 () Bool)

(declare-fun tp!1896387 () Bool)

(assert (=> b!6891943 (= e!4151788 (and tp!1896391 tp!1896387))))

(declare-fun b!6891945 () Bool)

(declare-fun tp!1896390 () Bool)

(declare-fun tp!1896389 () Bool)

(assert (=> b!6891945 (= e!4151788 (and tp!1896390 tp!1896389))))

(declare-fun b!6891942 () Bool)

(assert (=> b!6891942 (= e!4151788 tp_is_empty!42847)))

(assert (= (and b!6891429 ((_ is ElementMatch!16811) (regTwo!34135 r3!135))) b!6891942))

(assert (= (and b!6891429 ((_ is Concat!25656) (regTwo!34135 r3!135))) b!6891943))

(assert (= (and b!6891429 ((_ is Star!16811) (regTwo!34135 r3!135))) b!6891944))

(assert (= (and b!6891429 ((_ is Union!16811) (regTwo!34135 r3!135))) b!6891945))

(check-sat (not b!6891548) (not b!6891907) (not bm!627085) (not d!2161149) (not b!6891941) (not b!6891666) (not b!6891536) (not b!6891526) (not bm!627087) (not b!6891525) (not b!6891884) (not b!6891522) (not b!6891883) (not bm!627109) (not bm!627112) (not b!6891933) tp_is_empty!42847 (not b!6891919) (not b!6891944) (not bm!627086) (not bm!627084) (not b!6891869) (not b!6891887) (not b!6891886) (not b!6891891) (not d!2161145) (not b!6891945) (not b!6891923) (not b!6891895) (not bm!627074) (not b!6891908) (not b!6891937) (not b!6891521) (not b!6891917) (not bm!627075) (not b!6891760) (not b!6891539) (not b!6891543) (not b!6891900) (not b!6891909) (not b!6891912) (not b!6891911) (not b!6891751) (not b!6891899) (not b!6891898) (not b!6891928) (not bm!627107) (not bm!627103) (not bm!627104) (not b!6891530) (not b!6891667) (not b!6891894) (not b!6891518) (not b!6891769) (not b!6891932) (not b!6891540) (not b!6891915) (not b!6891892) (not b!6891924) (not d!2161157) (not b!6891868) (not d!2161171) (not bm!627113) (not b!6891913) (not b!6891927) (not b!6891742) (not bm!627110) (not b!6891925) (not b!6891943) (not b!6891544) (not b!6891931) (not d!2161187) (not b!6891940) (not b!6891916) (not b!6891687) (not b!6891920) (not b!6891936) (not b!6891688) (not b!6891896) (not b!6891890) (not bm!627106) (not b!6891921) (not b!6891935) (not b!6891939) (not b!6891888) (not b!6891905) (not b!6891929) (not b!6891882))
(check-sat)
