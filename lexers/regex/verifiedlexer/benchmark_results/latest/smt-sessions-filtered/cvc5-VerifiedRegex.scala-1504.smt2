; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79760 () Bool)

(assert start!79760)

(declare-fun b!882660 () Bool)

(assert (=> b!882660 true))

(assert (=> b!882660 true))

(declare-fun lambda!27100 () Int)

(declare-fun lambda!27099 () Int)

(assert (=> b!882660 (not (= lambda!27100 lambda!27099))))

(assert (=> b!882660 true))

(assert (=> b!882660 true))

(declare-fun b!882656 () Bool)

(declare-fun e!579244 () Bool)

(declare-fun tp!278692 () Bool)

(assert (=> b!882656 (= e!579244 tp!278692)))

(declare-fun res!401417 () Bool)

(declare-fun e!579243 () Bool)

(assert (=> start!79760 (=> (not res!401417) (not e!579243))))

(declare-datatypes ((C!5102 0))(
  ( (C!5103 (val!2799 Int)) )
))
(declare-datatypes ((Regex!2266 0))(
  ( (ElementMatch!2266 (c!142671 C!5102)) (Concat!4099 (regOne!5044 Regex!2266) (regTwo!5044 Regex!2266)) (EmptyExpr!2266) (Star!2266 (reg!2595 Regex!2266)) (EmptyLang!2266) (Union!2266 (regOne!5045 Regex!2266) (regTwo!5045 Regex!2266)) )
))
(declare-fun r!15766 () Regex!2266)

(declare-fun validRegex!735 (Regex!2266) Bool)

(assert (=> start!79760 (= res!401417 (validRegex!735 r!15766))))

(assert (=> start!79760 e!579243))

(assert (=> start!79760 e!579244))

(declare-fun e!579242 () Bool)

(assert (=> start!79760 e!579242))

(declare-fun b!882657 () Bool)

(declare-fun e!579240 () Bool)

(assert (=> b!882657 (= e!579243 (not e!579240))))

(declare-fun res!401415 () Bool)

(assert (=> b!882657 (=> res!401415 e!579240)))

(declare-fun lt!330906 () Bool)

(assert (=> b!882657 (= res!401415 (or (not lt!330906) (and (is-Concat!4099 r!15766) (is-EmptyExpr!2266 (regOne!5044 r!15766))) (and (is-Concat!4099 r!15766) (is-EmptyExpr!2266 (regTwo!5044 r!15766))) (not (is-Concat!4099 r!15766))))))

(declare-datatypes ((List!9496 0))(
  ( (Nil!9480) (Cons!9480 (h!14881 C!5102) (t!100542 List!9496)) )
))
(declare-fun s!10566 () List!9496)

(declare-fun matchRSpec!67 (Regex!2266 List!9496) Bool)

(assert (=> b!882657 (= lt!330906 (matchRSpec!67 r!15766 s!10566))))

(declare-fun matchR!804 (Regex!2266 List!9496) Bool)

(assert (=> b!882657 (= lt!330906 (matchR!804 r!15766 s!10566))))

(declare-datatypes ((Unit!14111 0))(
  ( (Unit!14112) )
))
(declare-fun lt!330910 () Unit!14111)

(declare-fun mainMatchTheorem!67 (Regex!2266 List!9496) Unit!14111)

(assert (=> b!882657 (= lt!330910 (mainMatchTheorem!67 r!15766 s!10566))))

(declare-fun b!882658 () Bool)

(declare-fun e!579241 () Bool)

(declare-fun lt!330908 () Bool)

(assert (=> b!882658 (= e!579241 lt!330908)))

(declare-fun b!882659 () Bool)

(declare-fun tp_is_empty!4175 () Bool)

(declare-fun tp!278691 () Bool)

(assert (=> b!882659 (= e!579242 (and tp_is_empty!4175 tp!278691))))

(assert (=> b!882660 (= e!579240 e!579241)))

(declare-fun res!401416 () Bool)

(assert (=> b!882660 (=> res!401416 e!579241)))

(declare-fun isEmpty!5678 (List!9496) Bool)

(assert (=> b!882660 (= res!401416 (isEmpty!5678 s!10566))))

(declare-fun Exists!61 (Int) Bool)

(assert (=> b!882660 (= (Exists!61 lambda!27099) (Exists!61 lambda!27100))))

(declare-fun lt!330907 () Unit!14111)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!51 (Regex!2266 Regex!2266 List!9496) Unit!14111)

(assert (=> b!882660 (= lt!330907 (lemmaExistCutMatchRandMatchRSpecEquivalent!51 (regOne!5044 r!15766) (regTwo!5044 r!15766) s!10566))))

(assert (=> b!882660 (= lt!330908 (Exists!61 lambda!27099))))

(declare-datatypes ((tuple2!10618 0))(
  ( (tuple2!10619 (_1!6135 List!9496) (_2!6135 List!9496)) )
))
(declare-datatypes ((Option!1951 0))(
  ( (None!1950) (Some!1950 (v!19367 tuple2!10618)) )
))
(declare-fun isDefined!1593 (Option!1951) Bool)

(declare-fun findConcatSeparation!57 (Regex!2266 Regex!2266 List!9496 List!9496 List!9496) Option!1951)

(assert (=> b!882660 (= lt!330908 (isDefined!1593 (findConcatSeparation!57 (regOne!5044 r!15766) (regTwo!5044 r!15766) Nil!9480 s!10566 s!10566)))))

(declare-fun lt!330909 () Unit!14111)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!57 (Regex!2266 Regex!2266 List!9496) Unit!14111)

(assert (=> b!882660 (= lt!330909 (lemmaFindConcatSeparationEquivalentToExists!57 (regOne!5044 r!15766) (regTwo!5044 r!15766) s!10566))))

(declare-fun b!882661 () Bool)

(assert (=> b!882661 (= e!579244 tp_is_empty!4175)))

(declare-fun b!882662 () Bool)

(declare-fun tp!278689 () Bool)

(declare-fun tp!278694 () Bool)

(assert (=> b!882662 (= e!579244 (and tp!278689 tp!278694))))

(declare-fun b!882663 () Bool)

(declare-fun tp!278690 () Bool)

(declare-fun tp!278693 () Bool)

(assert (=> b!882663 (= e!579244 (and tp!278690 tp!278693))))

(assert (= (and start!79760 res!401417) b!882657))

(assert (= (and b!882657 (not res!401415)) b!882660))

(assert (= (and b!882660 (not res!401416)) b!882658))

(assert (= (and start!79760 (is-ElementMatch!2266 r!15766)) b!882661))

(assert (= (and start!79760 (is-Concat!4099 r!15766)) b!882662))

(assert (= (and start!79760 (is-Star!2266 r!15766)) b!882656))

(assert (= (and start!79760 (is-Union!2266 r!15766)) b!882663))

(assert (= (and start!79760 (is-Cons!9480 s!10566)) b!882659))

(declare-fun m!1130019 () Bool)

(assert (=> start!79760 m!1130019))

(declare-fun m!1130021 () Bool)

(assert (=> b!882657 m!1130021))

(declare-fun m!1130023 () Bool)

(assert (=> b!882657 m!1130023))

(declare-fun m!1130025 () Bool)

(assert (=> b!882657 m!1130025))

(declare-fun m!1130027 () Bool)

(assert (=> b!882660 m!1130027))

(declare-fun m!1130029 () Bool)

(assert (=> b!882660 m!1130029))

(declare-fun m!1130031 () Bool)

(assert (=> b!882660 m!1130031))

(declare-fun m!1130033 () Bool)

(assert (=> b!882660 m!1130033))

(declare-fun m!1130035 () Bool)

(assert (=> b!882660 m!1130035))

(declare-fun m!1130037 () Bool)

(assert (=> b!882660 m!1130037))

(assert (=> b!882660 m!1130037))

(declare-fun m!1130039 () Bool)

(assert (=> b!882660 m!1130039))

(assert (=> b!882660 m!1130033))

(push 1)

(assert (not b!882656))

(assert (not b!882659))

(assert (not b!882663))

(assert tp_is_empty!4175)

(assert (not b!882657))

(assert (not b!882660))

(assert (not start!79760))

(assert (not b!882662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!276521 () Bool)

(declare-fun choose!5232 (Int) Bool)

(assert (=> d!276521 (= (Exists!61 lambda!27099) (choose!5232 lambda!27099))))

(declare-fun bs!234513 () Bool)

(assert (= bs!234513 d!276521))

(declare-fun m!1130063 () Bool)

(assert (=> bs!234513 m!1130063))

(assert (=> b!882660 d!276521))

(declare-fun d!276523 () Bool)

(assert (=> d!276523 (= (isEmpty!5678 s!10566) (is-Nil!9480 s!10566))))

(assert (=> b!882660 d!276523))

(declare-fun d!276525 () Bool)

(declare-fun isEmpty!5680 (Option!1951) Bool)

(assert (=> d!276525 (= (isDefined!1593 (findConcatSeparation!57 (regOne!5044 r!15766) (regTwo!5044 r!15766) Nil!9480 s!10566 s!10566)) (not (isEmpty!5680 (findConcatSeparation!57 (regOne!5044 r!15766) (regTwo!5044 r!15766) Nil!9480 s!10566 s!10566))))))

(declare-fun bs!234514 () Bool)

(assert (= bs!234514 d!276525))

(assert (=> bs!234514 m!1130037))

(declare-fun m!1130065 () Bool)

(assert (=> bs!234514 m!1130065))

(assert (=> b!882660 d!276525))

(declare-fun bs!234515 () Bool)

(declare-fun d!276527 () Bool)

(assert (= bs!234515 (and d!276527 b!882660)))

(declare-fun lambda!27111 () Int)

(assert (=> bs!234515 (= lambda!27111 lambda!27099)))

(assert (=> bs!234515 (not (= lambda!27111 lambda!27100))))

(assert (=> d!276527 true))

(assert (=> d!276527 true))

(assert (=> d!276527 true))

(assert (=> d!276527 (= (isDefined!1593 (findConcatSeparation!57 (regOne!5044 r!15766) (regTwo!5044 r!15766) Nil!9480 s!10566 s!10566)) (Exists!61 lambda!27111))))

(declare-fun lt!330928 () Unit!14111)

(declare-fun choose!5233 (Regex!2266 Regex!2266 List!9496) Unit!14111)

(assert (=> d!276527 (= lt!330928 (choose!5233 (regOne!5044 r!15766) (regTwo!5044 r!15766) s!10566))))

(assert (=> d!276527 (validRegex!735 (regOne!5044 r!15766))))

(assert (=> d!276527 (= (lemmaFindConcatSeparationEquivalentToExists!57 (regOne!5044 r!15766) (regTwo!5044 r!15766) s!10566) lt!330928)))

(declare-fun bs!234516 () Bool)

(assert (= bs!234516 d!276527))

(declare-fun m!1130067 () Bool)

(assert (=> bs!234516 m!1130067))

(assert (=> bs!234516 m!1130037))

(declare-fun m!1130069 () Bool)

(assert (=> bs!234516 m!1130069))

(assert (=> bs!234516 m!1130037))

(assert (=> bs!234516 m!1130039))

(declare-fun m!1130071 () Bool)

(assert (=> bs!234516 m!1130071))

(assert (=> b!882660 d!276527))

(declare-fun b!882730 () Bool)

(declare-fun e!579282 () Bool)

(assert (=> b!882730 (= e!579282 (matchR!804 (regTwo!5044 r!15766) s!10566))))

(declare-fun b!882731 () Bool)

(declare-fun lt!330937 () Unit!14111)

(declare-fun lt!330935 () Unit!14111)

(assert (=> b!882731 (= lt!330937 lt!330935)))

(declare-fun ++!2473 (List!9496 List!9496) List!9496)

(assert (=> b!882731 (= (++!2473 (++!2473 Nil!9480 (Cons!9480 (h!14881 s!10566) Nil!9480)) (t!100542 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!101 (List!9496 C!5102 List!9496 List!9496) Unit!14111)

(assert (=> b!882731 (= lt!330935 (lemmaMoveElementToOtherListKeepsConcatEq!101 Nil!9480 (h!14881 s!10566) (t!100542 s!10566) s!10566))))

(declare-fun e!579278 () Option!1951)

(assert (=> b!882731 (= e!579278 (findConcatSeparation!57 (regOne!5044 r!15766) (regTwo!5044 r!15766) (++!2473 Nil!9480 (Cons!9480 (h!14881 s!10566) Nil!9480)) (t!100542 s!10566) s!10566))))

(declare-fun b!882732 () Bool)

(declare-fun e!579280 () Bool)

(declare-fun lt!330936 () Option!1951)

(declare-fun get!2950 (Option!1951) tuple2!10618)

(assert (=> b!882732 (= e!579280 (= (++!2473 (_1!6135 (get!2950 lt!330936)) (_2!6135 (get!2950 lt!330936))) s!10566))))

(declare-fun b!882733 () Bool)

(declare-fun e!579279 () Option!1951)

(assert (=> b!882733 (= e!579279 (Some!1950 (tuple2!10619 Nil!9480 s!10566)))))

(declare-fun b!882734 () Bool)

(assert (=> b!882734 (= e!579279 e!579278)))

(declare-fun c!142678 () Bool)

(assert (=> b!882734 (= c!142678 (is-Nil!9480 s!10566))))

(declare-fun b!882735 () Bool)

(declare-fun res!401457 () Bool)

(assert (=> b!882735 (=> (not res!401457) (not e!579280))))

(assert (=> b!882735 (= res!401457 (matchR!804 (regOne!5044 r!15766) (_1!6135 (get!2950 lt!330936))))))

(declare-fun b!882736 () Bool)

(assert (=> b!882736 (= e!579278 None!1950)))

(declare-fun b!882737 () Bool)

(declare-fun e!579281 () Bool)

(assert (=> b!882737 (= e!579281 (not (isDefined!1593 lt!330936)))))

(declare-fun b!882738 () Bool)

(declare-fun res!401455 () Bool)

(assert (=> b!882738 (=> (not res!401455) (not e!579280))))

(assert (=> b!882738 (= res!401455 (matchR!804 (regTwo!5044 r!15766) (_2!6135 (get!2950 lt!330936))))))

(declare-fun d!276529 () Bool)

(assert (=> d!276529 e!579281))

(declare-fun res!401453 () Bool)

(assert (=> d!276529 (=> res!401453 e!579281)))

(assert (=> d!276529 (= res!401453 e!579280)))

(declare-fun res!401454 () Bool)

(assert (=> d!276529 (=> (not res!401454) (not e!579280))))

(assert (=> d!276529 (= res!401454 (isDefined!1593 lt!330936))))

(assert (=> d!276529 (= lt!330936 e!579279)))

(declare-fun c!142677 () Bool)

(assert (=> d!276529 (= c!142677 e!579282)))

(declare-fun res!401456 () Bool)

(assert (=> d!276529 (=> (not res!401456) (not e!579282))))

(assert (=> d!276529 (= res!401456 (matchR!804 (regOne!5044 r!15766) Nil!9480))))

(assert (=> d!276529 (validRegex!735 (regOne!5044 r!15766))))

(assert (=> d!276529 (= (findConcatSeparation!57 (regOne!5044 r!15766) (regTwo!5044 r!15766) Nil!9480 s!10566 s!10566) lt!330936)))

(assert (= (and d!276529 res!401456) b!882730))

(assert (= (and d!276529 c!142677) b!882733))

(assert (= (and d!276529 (not c!142677)) b!882734))

(assert (= (and b!882734 c!142678) b!882736))

(assert (= (and b!882734 (not c!142678)) b!882731))

(assert (= (and d!276529 res!401454) b!882735))

(assert (= (and b!882735 res!401457) b!882738))

(assert (= (and b!882738 res!401455) b!882732))

(assert (= (and d!276529 (not res!401453)) b!882737))

(declare-fun m!1130079 () Bool)

(assert (=> b!882738 m!1130079))

(declare-fun m!1130081 () Bool)

(assert (=> b!882738 m!1130081))

(assert (=> b!882732 m!1130079))

(declare-fun m!1130083 () Bool)

(assert (=> b!882732 m!1130083))

(declare-fun m!1130085 () Bool)

(assert (=> d!276529 m!1130085))

(declare-fun m!1130087 () Bool)

(assert (=> d!276529 m!1130087))

(assert (=> d!276529 m!1130067))

(declare-fun m!1130089 () Bool)

(assert (=> b!882730 m!1130089))

(assert (=> b!882735 m!1130079))

(declare-fun m!1130091 () Bool)

(assert (=> b!882735 m!1130091))

(assert (=> b!882737 m!1130085))

(declare-fun m!1130093 () Bool)

(assert (=> b!882731 m!1130093))

(assert (=> b!882731 m!1130093))

(declare-fun m!1130095 () Bool)

(assert (=> b!882731 m!1130095))

(declare-fun m!1130097 () Bool)

(assert (=> b!882731 m!1130097))

(assert (=> b!882731 m!1130093))

(declare-fun m!1130099 () Bool)

(assert (=> b!882731 m!1130099))

(assert (=> b!882660 d!276529))

(declare-fun d!276541 () Bool)

(assert (=> d!276541 (= (Exists!61 lambda!27100) (choose!5232 lambda!27100))))

(declare-fun bs!234520 () Bool)

(assert (= bs!234520 d!276541))

(declare-fun m!1130101 () Bool)

(assert (=> bs!234520 m!1130101))

(assert (=> b!882660 d!276541))

(declare-fun bs!234521 () Bool)

(declare-fun d!276543 () Bool)

(assert (= bs!234521 (and d!276543 b!882660)))

(declare-fun lambda!27118 () Int)

(assert (=> bs!234521 (= lambda!27118 lambda!27099)))

(assert (=> bs!234521 (not (= lambda!27118 lambda!27100))))

(declare-fun bs!234522 () Bool)

(assert (= bs!234522 (and d!276543 d!276527)))

(assert (=> bs!234522 (= lambda!27118 lambda!27111)))

(assert (=> d!276543 true))

(assert (=> d!276543 true))

(assert (=> d!276543 true))

(declare-fun lambda!27119 () Int)

(assert (=> bs!234521 (not (= lambda!27119 lambda!27099))))

(assert (=> bs!234521 (= lambda!27119 lambda!27100)))

(assert (=> bs!234522 (not (= lambda!27119 lambda!27111))))

(declare-fun bs!234523 () Bool)

(assert (= bs!234523 d!276543))

(assert (=> bs!234523 (not (= lambda!27119 lambda!27118))))

(assert (=> d!276543 true))

(assert (=> d!276543 true))

(assert (=> d!276543 true))

(assert (=> d!276543 (= (Exists!61 lambda!27118) (Exists!61 lambda!27119))))

(declare-fun lt!330942 () Unit!14111)

(declare-fun choose!5234 (Regex!2266 Regex!2266 List!9496) Unit!14111)

(assert (=> d!276543 (= lt!330942 (choose!5234 (regOne!5044 r!15766) (regTwo!5044 r!15766) s!10566))))

(assert (=> d!276543 (validRegex!735 (regOne!5044 r!15766))))

(assert (=> d!276543 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!51 (regOne!5044 r!15766) (regTwo!5044 r!15766) s!10566) lt!330942)))

(declare-fun m!1130103 () Bool)

(assert (=> bs!234523 m!1130103))

(declare-fun m!1130105 () Bool)

(assert (=> bs!234523 m!1130105))

(declare-fun m!1130107 () Bool)

(assert (=> bs!234523 m!1130107))

(assert (=> bs!234523 m!1130067))

(assert (=> b!882660 d!276543))

(declare-fun b!882769 () Bool)

(declare-fun e!579305 () Bool)

(declare-fun e!579306 () Bool)

(assert (=> b!882769 (= e!579305 e!579306)))

(declare-fun res!401482 () Bool)

(declare-fun nullable!577 (Regex!2266) Bool)

(assert (=> b!882769 (= res!401482 (not (nullable!577 (reg!2595 r!15766))))))

(assert (=> b!882769 (=> (not res!401482) (not e!579306))))

(declare-fun b!882770 () Bool)

(declare-fun call!51587 () Bool)

(assert (=> b!882770 (= e!579306 call!51587)))

(declare-fun bm!51581 () Bool)

(declare-fun call!51586 () Bool)

(declare-fun c!142684 () Bool)

(assert (=> bm!51581 (= call!51586 (validRegex!735 (ite c!142684 (regOne!5045 r!15766) (regOne!5044 r!15766))))))

(declare-fun c!142683 () Bool)

(declare-fun bm!51582 () Bool)

(assert (=> bm!51582 (= call!51587 (validRegex!735 (ite c!142683 (reg!2595 r!15766) (ite c!142684 (regTwo!5045 r!15766) (regTwo!5044 r!15766)))))))

(declare-fun bm!51583 () Bool)

(declare-fun call!51588 () Bool)

(assert (=> bm!51583 (= call!51588 call!51587)))

(declare-fun b!882771 () Bool)

(declare-fun e!579304 () Bool)

(assert (=> b!882771 (= e!579304 call!51588)))

(declare-fun b!882772 () Bool)

(declare-fun e!579309 () Bool)

(assert (=> b!882772 (= e!579309 call!51588)))

(declare-fun b!882773 () Bool)

(declare-fun e!579307 () Bool)

(assert (=> b!882773 (= e!579307 e!579309)))

(declare-fun res!401481 () Bool)

(assert (=> b!882773 (=> (not res!401481) (not e!579309))))

(assert (=> b!882773 (= res!401481 call!51586)))

(declare-fun d!276545 () Bool)

(declare-fun res!401480 () Bool)

(declare-fun e!579308 () Bool)

(assert (=> d!276545 (=> res!401480 e!579308)))

(assert (=> d!276545 (= res!401480 (is-ElementMatch!2266 r!15766))))

(assert (=> d!276545 (= (validRegex!735 r!15766) e!579308)))

(declare-fun b!882774 () Bool)

(assert (=> b!882774 (= e!579308 e!579305)))

(assert (=> b!882774 (= c!142683 (is-Star!2266 r!15766))))

(declare-fun b!882775 () Bool)

(declare-fun res!401484 () Bool)

(assert (=> b!882775 (=> res!401484 e!579307)))

(assert (=> b!882775 (= res!401484 (not (is-Concat!4099 r!15766)))))

(declare-fun e!579303 () Bool)

(assert (=> b!882775 (= e!579303 e!579307)))

(declare-fun b!882776 () Bool)

(assert (=> b!882776 (= e!579305 e!579303)))

(assert (=> b!882776 (= c!142684 (is-Union!2266 r!15766))))

(declare-fun b!882777 () Bool)

(declare-fun res!401483 () Bool)

(assert (=> b!882777 (=> (not res!401483) (not e!579304))))

(assert (=> b!882777 (= res!401483 call!51586)))

(assert (=> b!882777 (= e!579303 e!579304)))

(assert (= (and d!276545 (not res!401480)) b!882774))

(assert (= (and b!882774 c!142683) b!882769))

(assert (= (and b!882774 (not c!142683)) b!882776))

(assert (= (and b!882769 res!401482) b!882770))

(assert (= (and b!882776 c!142684) b!882777))

(assert (= (and b!882776 (not c!142684)) b!882775))

(assert (= (and b!882777 res!401483) b!882771))

(assert (= (and b!882775 (not res!401484)) b!882773))

(assert (= (and b!882773 res!401481) b!882772))

(assert (= (or b!882771 b!882772) bm!51583))

(assert (= (or b!882777 b!882773) bm!51581))

(assert (= (or b!882770 bm!51583) bm!51582))

(declare-fun m!1130115 () Bool)

(assert (=> b!882769 m!1130115))

(declare-fun m!1130117 () Bool)

(assert (=> bm!51581 m!1130117))

(declare-fun m!1130119 () Bool)

(assert (=> bm!51582 m!1130119))

(assert (=> start!79760 d!276545))

(declare-fun bs!234526 () Bool)

(declare-fun b!882816 () Bool)

(assert (= bs!234526 (and b!882816 d!276543)))

(declare-fun lambda!27125 () Int)

(assert (=> bs!234526 (not (= lambda!27125 lambda!27119))))

(declare-fun bs!234527 () Bool)

(assert (= bs!234527 (and b!882816 b!882660)))

(assert (=> bs!234527 (not (= lambda!27125 lambda!27100))))

(assert (=> bs!234527 (not (= lambda!27125 lambda!27099))))

(declare-fun bs!234528 () Bool)

(assert (= bs!234528 (and b!882816 d!276527)))

(assert (=> bs!234528 (not (= lambda!27125 lambda!27111))))

(assert (=> bs!234526 (not (= lambda!27125 lambda!27118))))

(assert (=> b!882816 true))

(assert (=> b!882816 true))

(declare-fun bs!234529 () Bool)

(declare-fun b!882820 () Bool)

(assert (= bs!234529 (and b!882820 d!276543)))

(declare-fun lambda!27126 () Int)

(assert (=> bs!234529 (= lambda!27126 lambda!27119)))

(declare-fun bs!234530 () Bool)

(assert (= bs!234530 (and b!882820 b!882660)))

(assert (=> bs!234530 (= lambda!27126 lambda!27100)))

(assert (=> bs!234530 (not (= lambda!27126 lambda!27099))))

(declare-fun bs!234531 () Bool)

(assert (= bs!234531 (and b!882820 b!882816)))

(assert (=> bs!234531 (not (= lambda!27126 lambda!27125))))

(declare-fun bs!234532 () Bool)

(assert (= bs!234532 (and b!882820 d!276527)))

(assert (=> bs!234532 (not (= lambda!27126 lambda!27111))))

(assert (=> bs!234529 (not (= lambda!27126 lambda!27118))))

(assert (=> b!882820 true))

(assert (=> b!882820 true))

(declare-fun b!882810 () Bool)

(declare-fun e!579328 () Bool)

(declare-fun e!579329 () Bool)

(assert (=> b!882810 (= e!579328 e!579329)))

(declare-fun res!401503 () Bool)

(assert (=> b!882810 (= res!401503 (not (is-EmptyLang!2266 r!15766)))))

(assert (=> b!882810 (=> (not res!401503) (not e!579329))))

(declare-fun b!882811 () Bool)

(declare-fun call!51594 () Bool)

(assert (=> b!882811 (= e!579328 call!51594)))

(declare-fun b!882812 () Bool)

(declare-fun e!579332 () Bool)

(assert (=> b!882812 (= e!579332 (matchRSpec!67 (regTwo!5045 r!15766) s!10566))))

(declare-fun b!882813 () Bool)

(declare-fun c!142693 () Bool)

(assert (=> b!882813 (= c!142693 (is-Union!2266 r!15766))))

(declare-fun e!579333 () Bool)

(declare-fun e!579331 () Bool)

(assert (=> b!882813 (= e!579333 e!579331)))

(declare-fun b!882814 () Bool)

(assert (=> b!882814 (= e!579331 e!579332)))

(declare-fun res!401502 () Bool)

(assert (=> b!882814 (= res!401502 (matchRSpec!67 (regOne!5045 r!15766) s!10566))))

(assert (=> b!882814 (=> res!401502 e!579332)))

(declare-fun b!882815 () Bool)

(declare-fun e!579330 () Bool)

(assert (=> b!882815 (= e!579331 e!579330)))

(declare-fun c!142695 () Bool)

(assert (=> b!882815 (= c!142695 (is-Star!2266 r!15766))))

(declare-fun bm!51589 () Bool)

(declare-fun call!51593 () Bool)

(assert (=> bm!51589 (= call!51593 (Exists!61 (ite c!142695 lambda!27125 lambda!27126)))))

(declare-fun e!579334 () Bool)

(assert (=> b!882816 (= e!579334 call!51593)))

(declare-fun b!882817 () Bool)

(assert (=> b!882817 (= e!579333 (= s!10566 (Cons!9480 (c!142671 r!15766) Nil!9480)))))

(declare-fun b!882818 () Bool)

(declare-fun res!401501 () Bool)

(assert (=> b!882818 (=> res!401501 e!579334)))

(assert (=> b!882818 (= res!401501 call!51594)))

(assert (=> b!882818 (= e!579330 e!579334)))

(declare-fun bm!51588 () Bool)

(assert (=> bm!51588 (= call!51594 (isEmpty!5678 s!10566))))

(declare-fun d!276549 () Bool)

(declare-fun c!142696 () Bool)

(assert (=> d!276549 (= c!142696 (is-EmptyExpr!2266 r!15766))))

(assert (=> d!276549 (= (matchRSpec!67 r!15766 s!10566) e!579328)))

(declare-fun b!882819 () Bool)

(declare-fun c!142694 () Bool)

(assert (=> b!882819 (= c!142694 (is-ElementMatch!2266 r!15766))))

(assert (=> b!882819 (= e!579329 e!579333)))

(assert (=> b!882820 (= e!579330 call!51593)))

(assert (= (and d!276549 c!142696) b!882811))

(assert (= (and d!276549 (not c!142696)) b!882810))

(assert (= (and b!882810 res!401503) b!882819))

(assert (= (and b!882819 c!142694) b!882817))

(assert (= (and b!882819 (not c!142694)) b!882813))

(assert (= (and b!882813 c!142693) b!882814))

(assert (= (and b!882813 (not c!142693)) b!882815))

(assert (= (and b!882814 (not res!401502)) b!882812))

(assert (= (and b!882815 c!142695) b!882818))

(assert (= (and b!882815 (not c!142695)) b!882820))

(assert (= (and b!882818 (not res!401501)) b!882816))

(assert (= (or b!882816 b!882820) bm!51589))

(assert (= (or b!882811 b!882818) bm!51588))

(declare-fun m!1130121 () Bool)

(assert (=> b!882812 m!1130121))

(declare-fun m!1130123 () Bool)

(assert (=> b!882814 m!1130123))

(declare-fun m!1130125 () Bool)

(assert (=> bm!51589 m!1130125))

(assert (=> bm!51588 m!1130031))

(assert (=> b!882657 d!276549))

(declare-fun b!882876 () Bool)

(declare-fun e!579366 () Bool)

(declare-fun head!1542 (List!9496) C!5102)

(assert (=> b!882876 (= e!579366 (not (= (head!1542 s!10566) (c!142671 r!15766))))))

(declare-fun b!882877 () Bool)

(declare-fun e!579364 () Bool)

(declare-fun lt!330955 () Bool)

(assert (=> b!882877 (= e!579364 (not lt!330955))))

(declare-fun b!882878 () Bool)

(declare-fun e!579370 () Bool)

(assert (=> b!882878 (= e!579370 e!579364)))

(declare-fun c!142711 () Bool)

(assert (=> b!882878 (= c!142711 (is-EmptyLang!2266 r!15766))))

(declare-fun b!882879 () Bool)

(declare-fun res!401537 () Bool)

(assert (=> b!882879 (=> res!401537 e!579366)))

(declare-fun tail!1104 (List!9496) List!9496)

(assert (=> b!882879 (= res!401537 (not (isEmpty!5678 (tail!1104 s!10566))))))

(declare-fun b!882880 () Bool)

(declare-fun res!401535 () Bool)

(declare-fun e!579369 () Bool)

(assert (=> b!882880 (=> (not res!401535) (not e!579369))))

(declare-fun call!51597 () Bool)

(assert (=> b!882880 (= res!401535 (not call!51597))))

(declare-fun b!882881 () Bool)

(declare-fun res!401539 () Bool)

(declare-fun e!579365 () Bool)

(assert (=> b!882881 (=> res!401539 e!579365)))

(assert (=> b!882881 (= res!401539 (not (is-ElementMatch!2266 r!15766)))))

(assert (=> b!882881 (= e!579364 e!579365)))

(declare-fun b!882882 () Bool)

(assert (=> b!882882 (= e!579369 (= (head!1542 s!10566) (c!142671 r!15766)))))

(declare-fun b!882883 () Bool)

(declare-fun res!401541 () Bool)

(assert (=> b!882883 (=> (not res!401541) (not e!579369))))

(assert (=> b!882883 (= res!401541 (isEmpty!5678 (tail!1104 s!10566)))))

(declare-fun b!882884 () Bool)

(declare-fun e!579368 () Bool)

(assert (=> b!882884 (= e!579368 e!579366)))

(declare-fun res!401542 () Bool)

(assert (=> b!882884 (=> res!401542 e!579366)))

(assert (=> b!882884 (= res!401542 call!51597)))

(declare-fun b!882885 () Bool)

(declare-fun e!579367 () Bool)

(declare-fun derivativeStep!389 (Regex!2266 C!5102) Regex!2266)

(assert (=> b!882885 (= e!579367 (matchR!804 (derivativeStep!389 r!15766 (head!1542 s!10566)) (tail!1104 s!10566)))))

(declare-fun b!882886 () Bool)

(assert (=> b!882886 (= e!579365 e!579368)))

(declare-fun res!401538 () Bool)

(assert (=> b!882886 (=> (not res!401538) (not e!579368))))

(assert (=> b!882886 (= res!401538 (not lt!330955))))

(declare-fun b!882887 () Bool)

(assert (=> b!882887 (= e!579367 (nullable!577 r!15766))))

(declare-fun b!882888 () Bool)

(assert (=> b!882888 (= e!579370 (= lt!330955 call!51597))))

(declare-fun b!882889 () Bool)

(declare-fun res!401540 () Bool)

(assert (=> b!882889 (=> res!401540 e!579365)))

(assert (=> b!882889 (= res!401540 e!579369)))

(declare-fun res!401536 () Bool)

(assert (=> b!882889 (=> (not res!401536) (not e!579369))))

(assert (=> b!882889 (= res!401536 lt!330955)))

(declare-fun d!276551 () Bool)

(assert (=> d!276551 e!579370))

(declare-fun c!142710 () Bool)

(assert (=> d!276551 (= c!142710 (is-EmptyExpr!2266 r!15766))))

(assert (=> d!276551 (= lt!330955 e!579367)))

(declare-fun c!142709 () Bool)

(assert (=> d!276551 (= c!142709 (isEmpty!5678 s!10566))))

(assert (=> d!276551 (validRegex!735 r!15766)))

(assert (=> d!276551 (= (matchR!804 r!15766 s!10566) lt!330955)))

(declare-fun bm!51592 () Bool)

(assert (=> bm!51592 (= call!51597 (isEmpty!5678 s!10566))))

(assert (= (and d!276551 c!142709) b!882887))

(assert (= (and d!276551 (not c!142709)) b!882885))

(assert (= (and d!276551 c!142710) b!882888))

(assert (= (and d!276551 (not c!142710)) b!882878))

(assert (= (and b!882878 c!142711) b!882877))

(assert (= (and b!882878 (not c!142711)) b!882881))

(assert (= (and b!882881 (not res!401539)) b!882889))

(assert (= (and b!882889 res!401536) b!882880))

(assert (= (and b!882880 res!401535) b!882883))

(assert (= (and b!882883 res!401541) b!882882))

(assert (= (and b!882889 (not res!401540)) b!882886))

(assert (= (and b!882886 res!401538) b!882884))

(assert (= (and b!882884 (not res!401542)) b!882879))

(assert (= (and b!882879 (not res!401537)) b!882876))

(assert (= (or b!882888 b!882880 b!882884) bm!51592))

(declare-fun m!1130127 () Bool)

(assert (=> b!882885 m!1130127))

(assert (=> b!882885 m!1130127))

(declare-fun m!1130129 () Bool)

(assert (=> b!882885 m!1130129))

(declare-fun m!1130131 () Bool)

(assert (=> b!882885 m!1130131))

(assert (=> b!882885 m!1130129))

(assert (=> b!882885 m!1130131))

(declare-fun m!1130133 () Bool)

(assert (=> b!882885 m!1130133))

(assert (=> d!276551 m!1130031))

(assert (=> d!276551 m!1130019))

(assert (=> bm!51592 m!1130031))

(declare-fun m!1130135 () Bool)

(assert (=> b!882887 m!1130135))

(assert (=> b!882879 m!1130131))

(assert (=> b!882879 m!1130131))

(declare-fun m!1130137 () Bool)

(assert (=> b!882879 m!1130137))

(assert (=> b!882876 m!1130127))

(assert (=> b!882882 m!1130127))

(assert (=> b!882883 m!1130131))

(assert (=> b!882883 m!1130131))

(assert (=> b!882883 m!1130137))

(assert (=> b!882657 d!276551))

(declare-fun d!276553 () Bool)

(assert (=> d!276553 (= (matchR!804 r!15766 s!10566) (matchRSpec!67 r!15766 s!10566))))

(declare-fun lt!330958 () Unit!14111)

(declare-fun choose!5235 (Regex!2266 List!9496) Unit!14111)

(assert (=> d!276553 (= lt!330958 (choose!5235 r!15766 s!10566))))

(assert (=> d!276553 (validRegex!735 r!15766)))

(assert (=> d!276553 (= (mainMatchTheorem!67 r!15766 s!10566) lt!330958)))

(declare-fun bs!234533 () Bool)

(assert (= bs!234533 d!276553))

(assert (=> bs!234533 m!1130023))

(assert (=> bs!234533 m!1130021))

(declare-fun m!1130161 () Bool)

(assert (=> bs!234533 m!1130161))

(assert (=> bs!234533 m!1130019))

(assert (=> b!882657 d!276553))

(declare-fun b!882894 () Bool)

(declare-fun e!579373 () Bool)

(declare-fun tp!278715 () Bool)

(assert (=> b!882894 (= e!579373 (and tp_is_empty!4175 tp!278715))))

(assert (=> b!882659 (= tp!278691 e!579373)))

(assert (= (and b!882659 (is-Cons!9480 (t!100542 s!10566))) b!882894))

(declare-fun b!882908 () Bool)

(declare-fun e!579376 () Bool)

(declare-fun tp!278729 () Bool)

(declare-fun tp!278727 () Bool)

(assert (=> b!882908 (= e!579376 (and tp!278729 tp!278727))))

(declare-fun b!882905 () Bool)

(assert (=> b!882905 (= e!579376 tp_is_empty!4175)))

(declare-fun b!882907 () Bool)

(declare-fun tp!278728 () Bool)

(assert (=> b!882907 (= e!579376 tp!278728)))

(declare-fun b!882906 () Bool)

(declare-fun tp!278730 () Bool)

(declare-fun tp!278726 () Bool)

(assert (=> b!882906 (= e!579376 (and tp!278730 tp!278726))))

(assert (=> b!882662 (= tp!278689 e!579376)))

(assert (= (and b!882662 (is-ElementMatch!2266 (regOne!5044 r!15766))) b!882905))

(assert (= (and b!882662 (is-Concat!4099 (regOne!5044 r!15766))) b!882906))

(assert (= (and b!882662 (is-Star!2266 (regOne!5044 r!15766))) b!882907))

(assert (= (and b!882662 (is-Union!2266 (regOne!5044 r!15766))) b!882908))

(declare-fun b!882912 () Bool)

(declare-fun e!579377 () Bool)

(declare-fun tp!278734 () Bool)

(declare-fun tp!278732 () Bool)

(assert (=> b!882912 (= e!579377 (and tp!278734 tp!278732))))

(declare-fun b!882909 () Bool)

(assert (=> b!882909 (= e!579377 tp_is_empty!4175)))

(declare-fun b!882911 () Bool)

(declare-fun tp!278733 () Bool)

(assert (=> b!882911 (= e!579377 tp!278733)))

(declare-fun b!882910 () Bool)

(declare-fun tp!278735 () Bool)

(declare-fun tp!278731 () Bool)

(assert (=> b!882910 (= e!579377 (and tp!278735 tp!278731))))

(assert (=> b!882662 (= tp!278694 e!579377)))

(assert (= (and b!882662 (is-ElementMatch!2266 (regTwo!5044 r!15766))) b!882909))

(assert (= (and b!882662 (is-Concat!4099 (regTwo!5044 r!15766))) b!882910))

(assert (= (and b!882662 (is-Star!2266 (regTwo!5044 r!15766))) b!882911))

(assert (= (and b!882662 (is-Union!2266 (regTwo!5044 r!15766))) b!882912))

(declare-fun b!882916 () Bool)

(declare-fun e!579378 () Bool)

(declare-fun tp!278739 () Bool)

(declare-fun tp!278737 () Bool)

(assert (=> b!882916 (= e!579378 (and tp!278739 tp!278737))))

(declare-fun b!882913 () Bool)

(assert (=> b!882913 (= e!579378 tp_is_empty!4175)))

(declare-fun b!882915 () Bool)

(declare-fun tp!278738 () Bool)

(assert (=> b!882915 (= e!579378 tp!278738)))

(declare-fun b!882914 () Bool)

(declare-fun tp!278740 () Bool)

(declare-fun tp!278736 () Bool)

(assert (=> b!882914 (= e!579378 (and tp!278740 tp!278736))))

(assert (=> b!882663 (= tp!278690 e!579378)))

(assert (= (and b!882663 (is-ElementMatch!2266 (regOne!5045 r!15766))) b!882913))

(assert (= (and b!882663 (is-Concat!4099 (regOne!5045 r!15766))) b!882914))

(assert (= (and b!882663 (is-Star!2266 (regOne!5045 r!15766))) b!882915))

(assert (= (and b!882663 (is-Union!2266 (regOne!5045 r!15766))) b!882916))

(declare-fun b!882920 () Bool)

(declare-fun e!579379 () Bool)

(declare-fun tp!278744 () Bool)

(declare-fun tp!278742 () Bool)

(assert (=> b!882920 (= e!579379 (and tp!278744 tp!278742))))

(declare-fun b!882917 () Bool)

(assert (=> b!882917 (= e!579379 tp_is_empty!4175)))

(declare-fun b!882919 () Bool)

(declare-fun tp!278743 () Bool)

(assert (=> b!882919 (= e!579379 tp!278743)))

(declare-fun b!882918 () Bool)

(declare-fun tp!278745 () Bool)

(declare-fun tp!278741 () Bool)

(assert (=> b!882918 (= e!579379 (and tp!278745 tp!278741))))

(assert (=> b!882663 (= tp!278693 e!579379)))

(assert (= (and b!882663 (is-ElementMatch!2266 (regTwo!5045 r!15766))) b!882917))

(assert (= (and b!882663 (is-Concat!4099 (regTwo!5045 r!15766))) b!882918))

(assert (= (and b!882663 (is-Star!2266 (regTwo!5045 r!15766))) b!882919))

(assert (= (and b!882663 (is-Union!2266 (regTwo!5045 r!15766))) b!882920))

(declare-fun b!882924 () Bool)

(declare-fun e!579380 () Bool)

(declare-fun tp!278749 () Bool)

(declare-fun tp!278747 () Bool)

(assert (=> b!882924 (= e!579380 (and tp!278749 tp!278747))))

(declare-fun b!882921 () Bool)

(assert (=> b!882921 (= e!579380 tp_is_empty!4175)))

(declare-fun b!882923 () Bool)

(declare-fun tp!278748 () Bool)

(assert (=> b!882923 (= e!579380 tp!278748)))

(declare-fun b!882922 () Bool)

(declare-fun tp!278750 () Bool)

(declare-fun tp!278746 () Bool)

(assert (=> b!882922 (= e!579380 (and tp!278750 tp!278746))))

(assert (=> b!882656 (= tp!278692 e!579380)))

(assert (= (and b!882656 (is-ElementMatch!2266 (reg!2595 r!15766))) b!882921))

(assert (= (and b!882656 (is-Concat!4099 (reg!2595 r!15766))) b!882922))

(assert (= (and b!882656 (is-Star!2266 (reg!2595 r!15766))) b!882923))

(assert (= (and b!882656 (is-Union!2266 (reg!2595 r!15766))) b!882924))

(push 1)

(assert (not b!882730))

(assert (not bm!51589))

(assert (not b!882922))

(assert (not b!882919))

(assert (not b!882769))

(assert (not b!882908))

(assert (not b!882915))

(assert (not b!882910))

(assert (not b!882879))

(assert (not b!882732))

(assert (not d!276551))

(assert (not b!882737))

(assert (not b!882916))

(assert (not d!276527))

(assert (not b!882738))

(assert (not d!276521))

(assert (not b!882918))

(assert (not b!882906))

(assert (not bm!51582))

(assert (not d!276525))

(assert (not b!882907))

(assert (not bm!51592))

(assert (not b!882924))

(assert (not b!882894))

(assert (not b!882912))

(assert (not d!276543))

(assert (not b!882914))

(assert (not bm!51581))

(assert (not b!882920))

(assert (not b!882812))

(assert (not b!882911))

(assert (not bm!51588))

(assert (not b!882876))

(assert (not b!882882))

(assert (not d!276529))

(assert (not d!276553))

(assert (not d!276541))

(assert (not b!882735))

(assert (not b!882885))

(assert (not b!882887))

(assert (not b!882923))

(assert (not b!882731))

(assert (not b!882883))

(assert (not b!882814))

(assert tp_is_empty!4175)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

