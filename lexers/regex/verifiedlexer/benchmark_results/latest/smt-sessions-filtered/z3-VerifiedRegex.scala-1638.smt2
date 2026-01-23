; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83382 () Bool)

(assert start!83382)

(declare-fun b!932064 () Bool)

(declare-fun e!605701 () Bool)

(declare-fun e!605698 () Bool)

(assert (=> b!932064 (= e!605701 e!605698)))

(declare-fun res!423344 () Bool)

(assert (=> b!932064 (=> res!423344 e!605698)))

(declare-fun lt!340507 () Bool)

(assert (=> b!932064 (= res!423344 lt!340507)))

(declare-fun e!605702 () Bool)

(assert (=> b!932064 e!605702))

(declare-fun res!423347 () Bool)

(assert (=> b!932064 (=> res!423347 e!605702)))

(assert (=> b!932064 (= res!423347 lt!340507)))

(declare-datatypes ((C!5640 0))(
  ( (C!5641 (val!3068 Int)) )
))
(declare-datatypes ((Regex!2535 0))(
  ( (ElementMatch!2535 (c!151534 C!5640)) (Concat!4368 (regOne!5582 Regex!2535) (regTwo!5582 Regex!2535)) (EmptyExpr!2535) (Star!2535 (reg!2864 Regex!2535)) (EmptyLang!2535) (Union!2535 (regOne!5583 Regex!2535) (regTwo!5583 Regex!2535)) )
))
(declare-fun lt!340504 () Regex!2535)

(declare-datatypes ((List!9765 0))(
  ( (Nil!9749) (Cons!9749 (h!15150 C!5640) (t!100811 List!9765)) )
))
(declare-fun s!10566 () List!9765)

(declare-fun matchR!1073 (Regex!2535 List!9765) Bool)

(assert (=> b!932064 (= lt!340507 (matchR!1073 lt!340504 s!10566))))

(declare-datatypes ((Unit!14689 0))(
  ( (Unit!14690) )
))
(declare-fun lt!340503 () Unit!14689)

(declare-fun lt!340509 () Regex!2535)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!52 (Regex!2535 Regex!2535 List!9765) Unit!14689)

(assert (=> b!932064 (= lt!340503 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!52 lt!340504 lt!340509 s!10566))))

(declare-fun lt!340511 () Regex!2535)

(declare-fun matchRSpec!336 (Regex!2535 List!9765) Bool)

(assert (=> b!932064 (matchRSpec!336 lt!340511 s!10566)))

(declare-fun lt!340510 () Unit!14689)

(declare-fun mainMatchTheorem!336 (Regex!2535 List!9765) Unit!14689)

(assert (=> b!932064 (= lt!340510 (mainMatchTheorem!336 lt!340511 s!10566))))

(declare-fun b!932065 () Bool)

(declare-fun e!605700 () Bool)

(declare-fun tp!289312 () Bool)

(declare-fun tp!289311 () Bool)

(assert (=> b!932065 (= e!605700 (and tp!289312 tp!289311))))

(declare-fun res!423346 () Bool)

(declare-fun e!605697 () Bool)

(assert (=> start!83382 (=> (not res!423346) (not e!605697))))

(declare-fun r!15766 () Regex!2535)

(declare-fun validRegex!1004 (Regex!2535) Bool)

(assert (=> start!83382 (= res!423346 (validRegex!1004 r!15766))))

(assert (=> start!83382 e!605697))

(assert (=> start!83382 e!605700))

(declare-fun e!605699 () Bool)

(assert (=> start!83382 e!605699))

(declare-fun b!932066 () Bool)

(declare-fun e!605703 () Bool)

(assert (=> b!932066 (= e!605703 e!605701)))

(declare-fun res!423348 () Bool)

(assert (=> b!932066 (=> res!423348 e!605701)))

(assert (=> b!932066 (= res!423348 (not (matchR!1073 lt!340511 s!10566)))))

(assert (=> b!932066 (= lt!340511 (Union!2535 lt!340504 lt!340509))))

(declare-fun removeUselessConcat!210 (Regex!2535) Regex!2535)

(assert (=> b!932066 (= lt!340509 (removeUselessConcat!210 (regTwo!5583 r!15766)))))

(assert (=> b!932066 (= lt!340504 (removeUselessConcat!210 (regOne!5583 r!15766)))))

(declare-fun b!932067 () Bool)

(assert (=> b!932067 (= e!605698 (validRegex!1004 (regTwo!5583 r!15766)))))

(assert (=> b!932067 (= (matchR!1073 (regTwo!5583 r!15766) s!10566) (matchR!1073 lt!340509 s!10566))))

(declare-fun lt!340508 () Unit!14689)

(declare-fun lemmaRemoveUselessConcatSound!120 (Regex!2535 List!9765) Unit!14689)

(assert (=> b!932067 (= lt!340508 (lemmaRemoveUselessConcatSound!120 (regTwo!5583 r!15766) s!10566))))

(declare-fun b!932068 () Bool)

(declare-fun tp!289309 () Bool)

(declare-fun tp!289307 () Bool)

(assert (=> b!932068 (= e!605700 (and tp!289309 tp!289307))))

(declare-fun b!932069 () Bool)

(declare-fun tp_is_empty!4713 () Bool)

(declare-fun tp!289310 () Bool)

(assert (=> b!932069 (= e!605699 (and tp_is_empty!4713 tp!289310))))

(declare-fun b!932070 () Bool)

(assert (=> b!932070 (= e!605697 (not e!605703))))

(declare-fun res!423345 () Bool)

(assert (=> b!932070 (=> res!423345 e!605703)))

(declare-fun lt!340506 () Bool)

(get-info :version)

(assert (=> b!932070 (= res!423345 (or lt!340506 (and ((_ is Concat!4368) r!15766) ((_ is EmptyExpr!2535) (regOne!5582 r!15766))) (and ((_ is Concat!4368) r!15766) ((_ is EmptyExpr!2535) (regTwo!5582 r!15766))) ((_ is Concat!4368) r!15766) (not ((_ is Union!2535) r!15766))))))

(assert (=> b!932070 (= lt!340506 (matchRSpec!336 r!15766 s!10566))))

(assert (=> b!932070 (= lt!340506 (matchR!1073 r!15766 s!10566))))

(declare-fun lt!340505 () Unit!14689)

(assert (=> b!932070 (= lt!340505 (mainMatchTheorem!336 r!15766 s!10566))))

(declare-fun b!932071 () Bool)

(declare-fun tp!289308 () Bool)

(assert (=> b!932071 (= e!605700 tp!289308)))

(declare-fun b!932072 () Bool)

(assert (=> b!932072 (= e!605702 (matchR!1073 lt!340509 s!10566))))

(declare-fun b!932073 () Bool)

(assert (=> b!932073 (= e!605700 tp_is_empty!4713)))

(assert (= (and start!83382 res!423346) b!932070))

(assert (= (and b!932070 (not res!423345)) b!932066))

(assert (= (and b!932066 (not res!423348)) b!932064))

(assert (= (and b!932064 (not res!423347)) b!932072))

(assert (= (and b!932064 (not res!423344)) b!932067))

(assert (= (and start!83382 ((_ is ElementMatch!2535) r!15766)) b!932073))

(assert (= (and start!83382 ((_ is Concat!4368) r!15766)) b!932068))

(assert (= (and start!83382 ((_ is Star!2535) r!15766)) b!932071))

(assert (= (and start!83382 ((_ is Union!2535) r!15766)) b!932065))

(assert (= (and start!83382 ((_ is Cons!9749) s!10566)) b!932069))

(declare-fun m!1153707 () Bool)

(assert (=> b!932066 m!1153707))

(declare-fun m!1153709 () Bool)

(assert (=> b!932066 m!1153709))

(declare-fun m!1153711 () Bool)

(assert (=> b!932066 m!1153711))

(declare-fun m!1153713 () Bool)

(assert (=> b!932064 m!1153713))

(declare-fun m!1153715 () Bool)

(assert (=> b!932064 m!1153715))

(declare-fun m!1153717 () Bool)

(assert (=> b!932064 m!1153717))

(declare-fun m!1153719 () Bool)

(assert (=> b!932064 m!1153719))

(declare-fun m!1153721 () Bool)

(assert (=> b!932072 m!1153721))

(declare-fun m!1153723 () Bool)

(assert (=> start!83382 m!1153723))

(declare-fun m!1153725 () Bool)

(assert (=> b!932067 m!1153725))

(declare-fun m!1153727 () Bool)

(assert (=> b!932067 m!1153727))

(assert (=> b!932067 m!1153721))

(declare-fun m!1153729 () Bool)

(assert (=> b!932067 m!1153729))

(declare-fun m!1153731 () Bool)

(assert (=> b!932070 m!1153731))

(declare-fun m!1153733 () Bool)

(assert (=> b!932070 m!1153733))

(declare-fun m!1153735 () Bool)

(assert (=> b!932070 m!1153735))

(check-sat (not b!932066) (not b!932069) (not b!932070) tp_is_empty!4713 (not b!932068) (not b!932064) (not b!932071) (not start!83382) (not b!932067) (not b!932065) (not b!932072))
(check-sat)
(get-model)

(declare-fun b!932158 () Bool)

(declare-fun res!423401 () Bool)

(declare-fun e!605747 () Bool)

(assert (=> b!932158 (=> (not res!423401) (not e!605747))))

(declare-fun isEmpty!5998 (List!9765) Bool)

(declare-fun tail!1250 (List!9765) List!9765)

(assert (=> b!932158 (= res!423401 (isEmpty!5998 (tail!1250 s!10566)))))

(declare-fun b!932159 () Bool)

(declare-fun e!605751 () Bool)

(declare-fun e!605746 () Bool)

(assert (=> b!932159 (= e!605751 e!605746)))

(declare-fun c!151555 () Bool)

(assert (=> b!932159 (= c!151555 ((_ is EmptyLang!2535) lt!340511))))

(declare-fun b!932160 () Bool)

(declare-fun res!423399 () Bool)

(declare-fun e!605750 () Bool)

(assert (=> b!932160 (=> res!423399 e!605750)))

(assert (=> b!932160 (= res!423399 (not (isEmpty!5998 (tail!1250 s!10566))))))

(declare-fun bm!57531 () Bool)

(declare-fun call!57536 () Bool)

(assert (=> bm!57531 (= call!57536 (isEmpty!5998 s!10566))))

(declare-fun b!932161 () Bool)

(declare-fun e!605752 () Bool)

(assert (=> b!932161 (= e!605752 e!605750)))

(declare-fun res!423402 () Bool)

(assert (=> b!932161 (=> res!423402 e!605750)))

(assert (=> b!932161 (= res!423402 call!57536)))

(declare-fun b!932162 () Bool)

(declare-fun head!1688 (List!9765) C!5640)

(assert (=> b!932162 (= e!605747 (= (head!1688 s!10566) (c!151534 lt!340511)))))

(declare-fun b!932163 () Bool)

(declare-fun res!423403 () Bool)

(declare-fun e!605748 () Bool)

(assert (=> b!932163 (=> res!423403 e!605748)))

(assert (=> b!932163 (= res!423403 e!605747)))

(declare-fun res!423397 () Bool)

(assert (=> b!932163 (=> (not res!423397) (not e!605747))))

(declare-fun lt!340518 () Bool)

(assert (=> b!932163 (= res!423397 lt!340518)))

(declare-fun b!932164 () Bool)

(declare-fun e!605749 () Bool)

(declare-fun derivativeStep!535 (Regex!2535 C!5640) Regex!2535)

(assert (=> b!932164 (= e!605749 (matchR!1073 (derivativeStep!535 lt!340511 (head!1688 s!10566)) (tail!1250 s!10566)))))

(declare-fun b!932165 () Bool)

(assert (=> b!932165 (= e!605751 (= lt!340518 call!57536))))

(declare-fun b!932166 () Bool)

(declare-fun nullable!725 (Regex!2535) Bool)

(assert (=> b!932166 (= e!605749 (nullable!725 lt!340511))))

(declare-fun b!932167 () Bool)

(declare-fun res!423404 () Bool)

(assert (=> b!932167 (=> res!423404 e!605748)))

(assert (=> b!932167 (= res!423404 (not ((_ is ElementMatch!2535) lt!340511)))))

(assert (=> b!932167 (= e!605746 e!605748)))

(declare-fun b!932168 () Bool)

(assert (=> b!932168 (= e!605748 e!605752)))

(declare-fun res!423400 () Bool)

(assert (=> b!932168 (=> (not res!423400) (not e!605752))))

(assert (=> b!932168 (= res!423400 (not lt!340518))))

(declare-fun b!932169 () Bool)

(declare-fun res!423398 () Bool)

(assert (=> b!932169 (=> (not res!423398) (not e!605747))))

(assert (=> b!932169 (= res!423398 (not call!57536))))

(declare-fun b!932170 () Bool)

(assert (=> b!932170 (= e!605746 (not lt!340518))))

(declare-fun b!932171 () Bool)

(assert (=> b!932171 (= e!605750 (not (= (head!1688 s!10566) (c!151534 lt!340511))))))

(declare-fun d!281533 () Bool)

(assert (=> d!281533 e!605751))

(declare-fun c!151554 () Bool)

(assert (=> d!281533 (= c!151554 ((_ is EmptyExpr!2535) lt!340511))))

(assert (=> d!281533 (= lt!340518 e!605749)))

(declare-fun c!151553 () Bool)

(assert (=> d!281533 (= c!151553 (isEmpty!5998 s!10566))))

(assert (=> d!281533 (validRegex!1004 lt!340511)))

(assert (=> d!281533 (= (matchR!1073 lt!340511 s!10566) lt!340518)))

(assert (= (and d!281533 c!151553) b!932166))

(assert (= (and d!281533 (not c!151553)) b!932164))

(assert (= (and d!281533 c!151554) b!932165))

(assert (= (and d!281533 (not c!151554)) b!932159))

(assert (= (and b!932159 c!151555) b!932170))

(assert (= (and b!932159 (not c!151555)) b!932167))

(assert (= (and b!932167 (not res!423404)) b!932163))

(assert (= (and b!932163 res!423397) b!932169))

(assert (= (and b!932169 res!423398) b!932158))

(assert (= (and b!932158 res!423401) b!932162))

(assert (= (and b!932163 (not res!423403)) b!932168))

(assert (= (and b!932168 res!423400) b!932161))

(assert (= (and b!932161 (not res!423402)) b!932160))

(assert (= (and b!932160 (not res!423399)) b!932171))

(assert (= (or b!932165 b!932161 b!932169) bm!57531))

(declare-fun m!1153761 () Bool)

(assert (=> b!932160 m!1153761))

(assert (=> b!932160 m!1153761))

(declare-fun m!1153763 () Bool)

(assert (=> b!932160 m!1153763))

(declare-fun m!1153765 () Bool)

(assert (=> b!932162 m!1153765))

(assert (=> b!932171 m!1153765))

(declare-fun m!1153767 () Bool)

(assert (=> b!932166 m!1153767))

(declare-fun m!1153769 () Bool)

(assert (=> bm!57531 m!1153769))

(assert (=> b!932164 m!1153765))

(assert (=> b!932164 m!1153765))

(declare-fun m!1153771 () Bool)

(assert (=> b!932164 m!1153771))

(assert (=> b!932164 m!1153761))

(assert (=> b!932164 m!1153771))

(assert (=> b!932164 m!1153761))

(declare-fun m!1153773 () Bool)

(assert (=> b!932164 m!1153773))

(assert (=> d!281533 m!1153769))

(declare-fun m!1153775 () Bool)

(assert (=> d!281533 m!1153775))

(assert (=> b!932158 m!1153761))

(assert (=> b!932158 m!1153761))

(assert (=> b!932158 m!1153763))

(assert (=> b!932066 d!281533))

(declare-fun b!932238 () Bool)

(declare-fun e!605794 () Regex!2535)

(declare-fun call!57568 () Regex!2535)

(declare-fun call!57571 () Regex!2535)

(assert (=> b!932238 (= e!605794 (Union!2535 call!57568 call!57571))))

(declare-fun b!932239 () Bool)

(declare-fun e!605791 () Bool)

(declare-fun lt!340525 () Regex!2535)

(assert (=> b!932239 (= e!605791 (= (nullable!725 lt!340525) (nullable!725 (regTwo!5583 r!15766))))))

(declare-fun b!932240 () Bool)

(declare-fun e!605789 () Regex!2535)

(declare-fun e!605792 () Regex!2535)

(assert (=> b!932240 (= e!605789 e!605792)))

(declare-fun c!151587 () Bool)

(assert (=> b!932240 (= c!151587 (and ((_ is Concat!4368) (regTwo!5583 r!15766)) ((_ is EmptyExpr!2535) (regTwo!5582 (regTwo!5583 r!15766)))))))

(declare-fun b!932241 () Bool)

(declare-fun c!151588 () Bool)

(assert (=> b!932241 (= c!151588 ((_ is Concat!4368) (regTwo!5583 r!15766)))))

(declare-fun e!605790 () Regex!2535)

(assert (=> b!932241 (= e!605792 e!605790)))

(declare-fun call!57570 () Regex!2535)

(declare-fun c!151586 () Bool)

(declare-fun bm!57562 () Bool)

(assert (=> bm!57562 (= call!57570 (removeUselessConcat!210 (ite c!151586 (regTwo!5582 (regTwo!5583 r!15766)) (ite (or c!151587 c!151588) (regOne!5582 (regTwo!5583 r!15766)) (regOne!5583 (regTwo!5583 r!15766))))))))

(declare-fun b!932242 () Bool)

(declare-fun call!57569 () Regex!2535)

(assert (=> b!932242 (= e!605790 (Concat!4368 call!57568 call!57569))))

(declare-fun b!932243 () Bool)

(assert (=> b!932243 (= e!605789 call!57570)))

(declare-fun bm!57563 () Bool)

(declare-fun call!57567 () Regex!2535)

(assert (=> bm!57563 (= call!57567 call!57570)))

(declare-fun b!932244 () Bool)

(declare-fun e!605793 () Regex!2535)

(assert (=> b!932244 (= e!605793 (regTwo!5583 r!15766))))

(declare-fun bm!57564 () Bool)

(assert (=> bm!57564 (= call!57571 call!57569)))

(declare-fun b!932245 () Bool)

(declare-fun c!151589 () Bool)

(assert (=> b!932245 (= c!151589 ((_ is Star!2535) (regTwo!5583 r!15766)))))

(assert (=> b!932245 (= e!605794 e!605793)))

(declare-fun bm!57565 () Bool)

(declare-fun c!151590 () Bool)

(assert (=> bm!57565 (= call!57569 (removeUselessConcat!210 (ite c!151588 (regTwo!5582 (regTwo!5583 r!15766)) (ite c!151590 (regTwo!5583 (regTwo!5583 r!15766)) (reg!2864 (regTwo!5583 r!15766))))))))

(declare-fun b!932246 () Bool)

(assert (=> b!932246 (= e!605790 e!605794)))

(assert (=> b!932246 (= c!151590 ((_ is Union!2535) (regTwo!5583 r!15766)))))

(declare-fun b!932247 () Bool)

(assert (=> b!932247 (= e!605793 (Star!2535 call!57571))))

(declare-fun d!281539 () Bool)

(assert (=> d!281539 e!605791))

(declare-fun res!423411 () Bool)

(assert (=> d!281539 (=> (not res!423411) (not e!605791))))

(assert (=> d!281539 (= res!423411 (validRegex!1004 lt!340525))))

(assert (=> d!281539 (= lt!340525 e!605789)))

(assert (=> d!281539 (= c!151586 (and ((_ is Concat!4368) (regTwo!5583 r!15766)) ((_ is EmptyExpr!2535) (regOne!5582 (regTwo!5583 r!15766)))))))

(assert (=> d!281539 (validRegex!1004 (regTwo!5583 r!15766))))

(assert (=> d!281539 (= (removeUselessConcat!210 (regTwo!5583 r!15766)) lt!340525)))

(declare-fun b!932248 () Bool)

(assert (=> b!932248 (= e!605792 call!57567)))

(declare-fun bm!57566 () Bool)

(assert (=> bm!57566 (= call!57568 call!57567)))

(assert (= (and d!281539 c!151586) b!932243))

(assert (= (and d!281539 (not c!151586)) b!932240))

(assert (= (and b!932240 c!151587) b!932248))

(assert (= (and b!932240 (not c!151587)) b!932241))

(assert (= (and b!932241 c!151588) b!932242))

(assert (= (and b!932241 (not c!151588)) b!932246))

(assert (= (and b!932246 c!151590) b!932238))

(assert (= (and b!932246 (not c!151590)) b!932245))

(assert (= (and b!932245 c!151589) b!932247))

(assert (= (and b!932245 (not c!151589)) b!932244))

(assert (= (or b!932238 b!932247) bm!57564))

(assert (= (or b!932242 bm!57564) bm!57565))

(assert (= (or b!932242 b!932238) bm!57566))

(assert (= (or b!932248 bm!57566) bm!57563))

(assert (= (or b!932243 bm!57563) bm!57562))

(assert (= (and d!281539 res!423411) b!932239))

(declare-fun m!1153799 () Bool)

(assert (=> b!932239 m!1153799))

(declare-fun m!1153801 () Bool)

(assert (=> b!932239 m!1153801))

(declare-fun m!1153803 () Bool)

(assert (=> bm!57562 m!1153803))

(declare-fun m!1153805 () Bool)

(assert (=> bm!57565 m!1153805))

(declare-fun m!1153807 () Bool)

(assert (=> d!281539 m!1153807))

(assert (=> d!281539 m!1153725))

(assert (=> b!932066 d!281539))

(declare-fun b!932263 () Bool)

(declare-fun e!605807 () Regex!2535)

(declare-fun call!57574 () Regex!2535)

(declare-fun call!57577 () Regex!2535)

(assert (=> b!932263 (= e!605807 (Union!2535 call!57574 call!57577))))

(declare-fun b!932264 () Bool)

(declare-fun e!605804 () Bool)

(declare-fun lt!340527 () Regex!2535)

(assert (=> b!932264 (= e!605804 (= (nullable!725 lt!340527) (nullable!725 (regOne!5583 r!15766))))))

(declare-fun b!932265 () Bool)

(declare-fun e!605802 () Regex!2535)

(declare-fun e!605805 () Regex!2535)

(assert (=> b!932265 (= e!605802 e!605805)))

(declare-fun c!151595 () Bool)

(assert (=> b!932265 (= c!151595 (and ((_ is Concat!4368) (regOne!5583 r!15766)) ((_ is EmptyExpr!2535) (regTwo!5582 (regOne!5583 r!15766)))))))

(declare-fun b!932266 () Bool)

(declare-fun c!151596 () Bool)

(assert (=> b!932266 (= c!151596 ((_ is Concat!4368) (regOne!5583 r!15766)))))

(declare-fun e!605803 () Regex!2535)

(assert (=> b!932266 (= e!605805 e!605803)))

(declare-fun call!57576 () Regex!2535)

(declare-fun bm!57568 () Bool)

(declare-fun c!151594 () Bool)

(assert (=> bm!57568 (= call!57576 (removeUselessConcat!210 (ite c!151594 (regTwo!5582 (regOne!5583 r!15766)) (ite (or c!151595 c!151596) (regOne!5582 (regOne!5583 r!15766)) (regOne!5583 (regOne!5583 r!15766))))))))

(declare-fun b!932267 () Bool)

(declare-fun call!57575 () Regex!2535)

(assert (=> b!932267 (= e!605803 (Concat!4368 call!57574 call!57575))))

(declare-fun b!932268 () Bool)

(assert (=> b!932268 (= e!605802 call!57576)))

(declare-fun bm!57569 () Bool)

(declare-fun call!57573 () Regex!2535)

(assert (=> bm!57569 (= call!57573 call!57576)))

(declare-fun b!932269 () Bool)

(declare-fun e!605806 () Regex!2535)

(assert (=> b!932269 (= e!605806 (regOne!5583 r!15766))))

(declare-fun bm!57570 () Bool)

(assert (=> bm!57570 (= call!57577 call!57575)))

(declare-fun b!932270 () Bool)

(declare-fun c!151597 () Bool)

(assert (=> b!932270 (= c!151597 ((_ is Star!2535) (regOne!5583 r!15766)))))

(assert (=> b!932270 (= e!605807 e!605806)))

(declare-fun bm!57571 () Bool)

(declare-fun c!151598 () Bool)

(assert (=> bm!57571 (= call!57575 (removeUselessConcat!210 (ite c!151596 (regTwo!5582 (regOne!5583 r!15766)) (ite c!151598 (regTwo!5583 (regOne!5583 r!15766)) (reg!2864 (regOne!5583 r!15766))))))))

(declare-fun b!932271 () Bool)

(assert (=> b!932271 (= e!605803 e!605807)))

(assert (=> b!932271 (= c!151598 ((_ is Union!2535) (regOne!5583 r!15766)))))

(declare-fun b!932272 () Bool)

(assert (=> b!932272 (= e!605806 (Star!2535 call!57577))))

(declare-fun d!281545 () Bool)

(assert (=> d!281545 e!605804))

(declare-fun res!423420 () Bool)

(assert (=> d!281545 (=> (not res!423420) (not e!605804))))

(assert (=> d!281545 (= res!423420 (validRegex!1004 lt!340527))))

(assert (=> d!281545 (= lt!340527 e!605802)))

(assert (=> d!281545 (= c!151594 (and ((_ is Concat!4368) (regOne!5583 r!15766)) ((_ is EmptyExpr!2535) (regOne!5582 (regOne!5583 r!15766)))))))

(assert (=> d!281545 (validRegex!1004 (regOne!5583 r!15766))))

(assert (=> d!281545 (= (removeUselessConcat!210 (regOne!5583 r!15766)) lt!340527)))

(declare-fun b!932273 () Bool)

(assert (=> b!932273 (= e!605805 call!57573)))

(declare-fun bm!57572 () Bool)

(assert (=> bm!57572 (= call!57574 call!57573)))

(assert (= (and d!281545 c!151594) b!932268))

(assert (= (and d!281545 (not c!151594)) b!932265))

(assert (= (and b!932265 c!151595) b!932273))

(assert (= (and b!932265 (not c!151595)) b!932266))

(assert (= (and b!932266 c!151596) b!932267))

(assert (= (and b!932266 (not c!151596)) b!932271))

(assert (= (and b!932271 c!151598) b!932263))

(assert (= (and b!932271 (not c!151598)) b!932270))

(assert (= (and b!932270 c!151597) b!932272))

(assert (= (and b!932270 (not c!151597)) b!932269))

(assert (= (or b!932263 b!932272) bm!57570))

(assert (= (or b!932267 bm!57570) bm!57571))

(assert (= (or b!932267 b!932263) bm!57572))

(assert (= (or b!932273 bm!57572) bm!57569))

(assert (= (or b!932268 bm!57569) bm!57568))

(assert (= (and d!281545 res!423420) b!932264))

(declare-fun m!1153817 () Bool)

(assert (=> b!932264 m!1153817))

(declare-fun m!1153819 () Bool)

(assert (=> b!932264 m!1153819))

(declare-fun m!1153821 () Bool)

(assert (=> bm!57568 m!1153821))

(declare-fun m!1153823 () Bool)

(assert (=> bm!57571 m!1153823))

(declare-fun m!1153825 () Bool)

(assert (=> d!281545 m!1153825))

(declare-fun m!1153827 () Bool)

(assert (=> d!281545 m!1153827))

(assert (=> b!932066 d!281545))

(declare-fun b!932298 () Bool)

(declare-fun res!423439 () Bool)

(declare-fun e!605828 () Bool)

(assert (=> b!932298 (=> res!423439 e!605828)))

(assert (=> b!932298 (= res!423439 (not ((_ is Concat!4368) (regTwo!5583 r!15766))))))

(declare-fun e!605832 () Bool)

(assert (=> b!932298 (= e!605832 e!605828)))

(declare-fun b!932299 () Bool)

(declare-fun e!605831 () Bool)

(declare-fun call!57584 () Bool)

(assert (=> b!932299 (= e!605831 call!57584)))

(declare-fun b!932300 () Bool)

(declare-fun e!605833 () Bool)

(declare-fun e!605830 () Bool)

(assert (=> b!932300 (= e!605833 e!605830)))

(declare-fun res!423438 () Bool)

(assert (=> b!932300 (= res!423438 (not (nullable!725 (reg!2864 (regTwo!5583 r!15766)))))))

(assert (=> b!932300 (=> (not res!423438) (not e!605830))))

(declare-fun b!932301 () Bool)

(declare-fun call!57585 () Bool)

(assert (=> b!932301 (= e!605830 call!57585)))

(declare-fun d!281549 () Bool)

(declare-fun res!423437 () Bool)

(declare-fun e!605834 () Bool)

(assert (=> d!281549 (=> res!423437 e!605834)))

(assert (=> d!281549 (= res!423437 ((_ is ElementMatch!2535) (regTwo!5583 r!15766)))))

(assert (=> d!281549 (= (validRegex!1004 (regTwo!5583 r!15766)) e!605834)))

(declare-fun b!932302 () Bool)

(assert (=> b!932302 (= e!605833 e!605832)))

(declare-fun c!151604 () Bool)

(assert (=> b!932302 (= c!151604 ((_ is Union!2535) (regTwo!5583 r!15766)))))

(declare-fun bm!57579 () Bool)

(assert (=> bm!57579 (= call!57584 (validRegex!1004 (ite c!151604 (regTwo!5583 (regTwo!5583 r!15766)) (regTwo!5582 (regTwo!5583 r!15766)))))))

(declare-fun bm!57580 () Bool)

(declare-fun call!57586 () Bool)

(assert (=> bm!57580 (= call!57586 call!57585)))

(declare-fun b!932303 () Bool)

(declare-fun e!605829 () Bool)

(assert (=> b!932303 (= e!605829 call!57584)))

(declare-fun b!932304 () Bool)

(declare-fun res!423440 () Bool)

(assert (=> b!932304 (=> (not res!423440) (not e!605831))))

(assert (=> b!932304 (= res!423440 call!57586)))

(assert (=> b!932304 (= e!605832 e!605831)))

(declare-fun b!932305 () Bool)

(assert (=> b!932305 (= e!605834 e!605833)))

(declare-fun c!151603 () Bool)

(assert (=> b!932305 (= c!151603 ((_ is Star!2535) (regTwo!5583 r!15766)))))

(declare-fun bm!57581 () Bool)

(assert (=> bm!57581 (= call!57585 (validRegex!1004 (ite c!151603 (reg!2864 (regTwo!5583 r!15766)) (ite c!151604 (regOne!5583 (regTwo!5583 r!15766)) (regOne!5582 (regTwo!5583 r!15766))))))))

(declare-fun b!932306 () Bool)

(assert (=> b!932306 (= e!605828 e!605829)))

(declare-fun res!423441 () Bool)

(assert (=> b!932306 (=> (not res!423441) (not e!605829))))

(assert (=> b!932306 (= res!423441 call!57586)))

(assert (= (and d!281549 (not res!423437)) b!932305))

(assert (= (and b!932305 c!151603) b!932300))

(assert (= (and b!932305 (not c!151603)) b!932302))

(assert (= (and b!932300 res!423438) b!932301))

(assert (= (and b!932302 c!151604) b!932304))

(assert (= (and b!932302 (not c!151604)) b!932298))

(assert (= (and b!932304 res!423440) b!932299))

(assert (= (and b!932298 (not res!423439)) b!932306))

(assert (= (and b!932306 res!423441) b!932303))

(assert (= (or b!932299 b!932303) bm!57579))

(assert (= (or b!932304 b!932306) bm!57580))

(assert (= (or b!932301 bm!57580) bm!57581))

(declare-fun m!1153831 () Bool)

(assert (=> b!932300 m!1153831))

(declare-fun m!1153833 () Bool)

(assert (=> bm!57579 m!1153833))

(declare-fun m!1153835 () Bool)

(assert (=> bm!57581 m!1153835))

(assert (=> b!932067 d!281549))

(declare-fun b!932321 () Bool)

(declare-fun res!423448 () Bool)

(declare-fun e!605844 () Bool)

(assert (=> b!932321 (=> (not res!423448) (not e!605844))))

(assert (=> b!932321 (= res!423448 (isEmpty!5998 (tail!1250 s!10566)))))

(declare-fun b!932322 () Bool)

(declare-fun e!605850 () Bool)

(declare-fun e!605843 () Bool)

(assert (=> b!932322 (= e!605850 e!605843)))

(declare-fun c!151613 () Bool)

(assert (=> b!932322 (= c!151613 ((_ is EmptyLang!2535) (regTwo!5583 r!15766)))))

(declare-fun b!932323 () Bool)

(declare-fun res!423446 () Bool)

(declare-fun e!605847 () Bool)

(assert (=> b!932323 (=> res!423446 e!605847)))

(assert (=> b!932323 (= res!423446 (not (isEmpty!5998 (tail!1250 s!10566))))))

(declare-fun bm!57582 () Bool)

(declare-fun call!57587 () Bool)

(assert (=> bm!57582 (= call!57587 (isEmpty!5998 s!10566))))

(declare-fun b!932324 () Bool)

(declare-fun e!605851 () Bool)

(assert (=> b!932324 (= e!605851 e!605847)))

(declare-fun res!423449 () Bool)

(assert (=> b!932324 (=> res!423449 e!605847)))

(assert (=> b!932324 (= res!423449 call!57587)))

(declare-fun b!932326 () Bool)

(assert (=> b!932326 (= e!605844 (= (head!1688 s!10566) (c!151534 (regTwo!5583 r!15766))))))

(declare-fun b!932328 () Bool)

(declare-fun res!423450 () Bool)

(declare-fun e!605845 () Bool)

(assert (=> b!932328 (=> res!423450 e!605845)))

(assert (=> b!932328 (= res!423450 e!605844)))

(declare-fun res!423444 () Bool)

(assert (=> b!932328 (=> (not res!423444) (not e!605844))))

(declare-fun lt!340531 () Bool)

(assert (=> b!932328 (= res!423444 lt!340531)))

(declare-fun b!932329 () Bool)

(declare-fun e!605846 () Bool)

(assert (=> b!932329 (= e!605846 (matchR!1073 (derivativeStep!535 (regTwo!5583 r!15766) (head!1688 s!10566)) (tail!1250 s!10566)))))

(declare-fun b!932330 () Bool)

(assert (=> b!932330 (= e!605850 (= lt!340531 call!57587))))

(declare-fun b!932331 () Bool)

(assert (=> b!932331 (= e!605846 (nullable!725 (regTwo!5583 r!15766)))))

(declare-fun b!932332 () Bool)

(declare-fun res!423453 () Bool)

(assert (=> b!932332 (=> res!423453 e!605845)))

(assert (=> b!932332 (= res!423453 (not ((_ is ElementMatch!2535) (regTwo!5583 r!15766))))))

(assert (=> b!932332 (= e!605843 e!605845)))

(declare-fun b!932333 () Bool)

(assert (=> b!932333 (= e!605845 e!605851)))

(declare-fun res!423447 () Bool)

(assert (=> b!932333 (=> (not res!423447) (not e!605851))))

(assert (=> b!932333 (= res!423447 (not lt!340531))))

(declare-fun b!932334 () Bool)

(declare-fun res!423445 () Bool)

(assert (=> b!932334 (=> (not res!423445) (not e!605844))))

(assert (=> b!932334 (= res!423445 (not call!57587))))

(declare-fun b!932335 () Bool)

(assert (=> b!932335 (= e!605843 (not lt!340531))))

(declare-fun b!932336 () Bool)

(assert (=> b!932336 (= e!605847 (not (= (head!1688 s!10566) (c!151534 (regTwo!5583 r!15766)))))))

(declare-fun d!281553 () Bool)

(assert (=> d!281553 e!605850))

(declare-fun c!151612 () Bool)

(assert (=> d!281553 (= c!151612 ((_ is EmptyExpr!2535) (regTwo!5583 r!15766)))))

(assert (=> d!281553 (= lt!340531 e!605846)))

(declare-fun c!151611 () Bool)

(assert (=> d!281553 (= c!151611 (isEmpty!5998 s!10566))))

(assert (=> d!281553 (validRegex!1004 (regTwo!5583 r!15766))))

(assert (=> d!281553 (= (matchR!1073 (regTwo!5583 r!15766) s!10566) lt!340531)))

(assert (= (and d!281553 c!151611) b!932331))

(assert (= (and d!281553 (not c!151611)) b!932329))

(assert (= (and d!281553 c!151612) b!932330))

(assert (= (and d!281553 (not c!151612)) b!932322))

(assert (= (and b!932322 c!151613) b!932335))

(assert (= (and b!932322 (not c!151613)) b!932332))

(assert (= (and b!932332 (not res!423453)) b!932328))

(assert (= (and b!932328 res!423444) b!932334))

(assert (= (and b!932334 res!423445) b!932321))

(assert (= (and b!932321 res!423448) b!932326))

(assert (= (and b!932328 (not res!423450)) b!932333))

(assert (= (and b!932333 res!423447) b!932324))

(assert (= (and b!932324 (not res!423449)) b!932323))

(assert (= (and b!932323 (not res!423446)) b!932336))

(assert (= (or b!932330 b!932324 b!932334) bm!57582))

(assert (=> b!932323 m!1153761))

(assert (=> b!932323 m!1153761))

(assert (=> b!932323 m!1153763))

(assert (=> b!932326 m!1153765))

(assert (=> b!932336 m!1153765))

(assert (=> b!932331 m!1153801))

(assert (=> bm!57582 m!1153769))

(assert (=> b!932329 m!1153765))

(assert (=> b!932329 m!1153765))

(declare-fun m!1153837 () Bool)

(assert (=> b!932329 m!1153837))

(assert (=> b!932329 m!1153761))

(assert (=> b!932329 m!1153837))

(assert (=> b!932329 m!1153761))

(declare-fun m!1153839 () Bool)

(assert (=> b!932329 m!1153839))

(assert (=> d!281553 m!1153769))

(assert (=> d!281553 m!1153725))

(assert (=> b!932321 m!1153761))

(assert (=> b!932321 m!1153761))

(assert (=> b!932321 m!1153763))

(assert (=> b!932067 d!281553))

(declare-fun b!932343 () Bool)

(declare-fun res!423460 () Bool)

(declare-fun e!605857 () Bool)

(assert (=> b!932343 (=> (not res!423460) (not e!605857))))

(assert (=> b!932343 (= res!423460 (isEmpty!5998 (tail!1250 s!10566)))))

(declare-fun b!932344 () Bool)

(declare-fun e!605861 () Bool)

(declare-fun e!605856 () Bool)

(assert (=> b!932344 (= e!605861 e!605856)))

(declare-fun c!151618 () Bool)

(assert (=> b!932344 (= c!151618 ((_ is EmptyLang!2535) lt!340509))))

(declare-fun b!932345 () Bool)

(declare-fun res!423458 () Bool)

(declare-fun e!605860 () Bool)

(assert (=> b!932345 (=> res!423458 e!605860)))

(assert (=> b!932345 (= res!423458 (not (isEmpty!5998 (tail!1250 s!10566))))))

(declare-fun bm!57583 () Bool)

(declare-fun call!57588 () Bool)

(assert (=> bm!57583 (= call!57588 (isEmpty!5998 s!10566))))

(declare-fun b!932346 () Bool)

(declare-fun e!605862 () Bool)

(assert (=> b!932346 (= e!605862 e!605860)))

(declare-fun res!423461 () Bool)

(assert (=> b!932346 (=> res!423461 e!605860)))

(assert (=> b!932346 (= res!423461 call!57588)))

(declare-fun b!932347 () Bool)

(assert (=> b!932347 (= e!605857 (= (head!1688 s!10566) (c!151534 lt!340509)))))

(declare-fun b!932348 () Bool)

(declare-fun res!423462 () Bool)

(declare-fun e!605858 () Bool)

(assert (=> b!932348 (=> res!423462 e!605858)))

(assert (=> b!932348 (= res!423462 e!605857)))

(declare-fun res!423456 () Bool)

(assert (=> b!932348 (=> (not res!423456) (not e!605857))))

(declare-fun lt!340532 () Bool)

(assert (=> b!932348 (= res!423456 lt!340532)))

(declare-fun b!932349 () Bool)

(declare-fun e!605859 () Bool)

(assert (=> b!932349 (= e!605859 (matchR!1073 (derivativeStep!535 lt!340509 (head!1688 s!10566)) (tail!1250 s!10566)))))

(declare-fun b!932350 () Bool)

(assert (=> b!932350 (= e!605861 (= lt!340532 call!57588))))

(declare-fun b!932351 () Bool)

(assert (=> b!932351 (= e!605859 (nullable!725 lt!340509))))

(declare-fun b!932352 () Bool)

(declare-fun res!423463 () Bool)

(assert (=> b!932352 (=> res!423463 e!605858)))

(assert (=> b!932352 (= res!423463 (not ((_ is ElementMatch!2535) lt!340509)))))

(assert (=> b!932352 (= e!605856 e!605858)))

(declare-fun b!932353 () Bool)

(assert (=> b!932353 (= e!605858 e!605862)))

(declare-fun res!423459 () Bool)

(assert (=> b!932353 (=> (not res!423459) (not e!605862))))

(assert (=> b!932353 (= res!423459 (not lt!340532))))

(declare-fun b!932354 () Bool)

(declare-fun res!423457 () Bool)

(assert (=> b!932354 (=> (not res!423457) (not e!605857))))

(assert (=> b!932354 (= res!423457 (not call!57588))))

(declare-fun b!932355 () Bool)

(assert (=> b!932355 (= e!605856 (not lt!340532))))

(declare-fun b!932356 () Bool)

(assert (=> b!932356 (= e!605860 (not (= (head!1688 s!10566) (c!151534 lt!340509))))))

(declare-fun d!281555 () Bool)

(assert (=> d!281555 e!605861))

(declare-fun c!151617 () Bool)

(assert (=> d!281555 (= c!151617 ((_ is EmptyExpr!2535) lt!340509))))

(assert (=> d!281555 (= lt!340532 e!605859)))

(declare-fun c!151616 () Bool)

(assert (=> d!281555 (= c!151616 (isEmpty!5998 s!10566))))

(assert (=> d!281555 (validRegex!1004 lt!340509)))

(assert (=> d!281555 (= (matchR!1073 lt!340509 s!10566) lt!340532)))

(assert (= (and d!281555 c!151616) b!932351))

(assert (= (and d!281555 (not c!151616)) b!932349))

(assert (= (and d!281555 c!151617) b!932350))

(assert (= (and d!281555 (not c!151617)) b!932344))

(assert (= (and b!932344 c!151618) b!932355))

(assert (= (and b!932344 (not c!151618)) b!932352))

(assert (= (and b!932352 (not res!423463)) b!932348))

(assert (= (and b!932348 res!423456) b!932354))

(assert (= (and b!932354 res!423457) b!932343))

(assert (= (and b!932343 res!423460) b!932347))

(assert (= (and b!932348 (not res!423462)) b!932353))

(assert (= (and b!932353 res!423459) b!932346))

(assert (= (and b!932346 (not res!423461)) b!932345))

(assert (= (and b!932345 (not res!423458)) b!932356))

(assert (= (or b!932350 b!932346 b!932354) bm!57583))

(assert (=> b!932345 m!1153761))

(assert (=> b!932345 m!1153761))

(assert (=> b!932345 m!1153763))

(assert (=> b!932347 m!1153765))

(assert (=> b!932356 m!1153765))

(declare-fun m!1153841 () Bool)

(assert (=> b!932351 m!1153841))

(assert (=> bm!57583 m!1153769))

(assert (=> b!932349 m!1153765))

(assert (=> b!932349 m!1153765))

(declare-fun m!1153843 () Bool)

(assert (=> b!932349 m!1153843))

(assert (=> b!932349 m!1153761))

(assert (=> b!932349 m!1153843))

(assert (=> b!932349 m!1153761))

(declare-fun m!1153845 () Bool)

(assert (=> b!932349 m!1153845))

(assert (=> d!281555 m!1153769))

(declare-fun m!1153847 () Bool)

(assert (=> d!281555 m!1153847))

(assert (=> b!932343 m!1153761))

(assert (=> b!932343 m!1153761))

(assert (=> b!932343 m!1153763))

(assert (=> b!932067 d!281555))

(declare-fun d!281557 () Bool)

(assert (=> d!281557 (= (matchR!1073 (regTwo!5583 r!15766) s!10566) (matchR!1073 (removeUselessConcat!210 (regTwo!5583 r!15766)) s!10566))))

(declare-fun lt!340535 () Unit!14689)

(declare-fun choose!5735 (Regex!2535 List!9765) Unit!14689)

(assert (=> d!281557 (= lt!340535 (choose!5735 (regTwo!5583 r!15766) s!10566))))

(assert (=> d!281557 (validRegex!1004 (regTwo!5583 r!15766))))

(assert (=> d!281557 (= (lemmaRemoveUselessConcatSound!120 (regTwo!5583 r!15766) s!10566) lt!340535)))

(declare-fun bs!237720 () Bool)

(assert (= bs!237720 d!281557))

(assert (=> bs!237720 m!1153725))

(declare-fun m!1153849 () Bool)

(assert (=> bs!237720 m!1153849))

(assert (=> bs!237720 m!1153709))

(declare-fun m!1153851 () Bool)

(assert (=> bs!237720 m!1153851))

(assert (=> bs!237720 m!1153727))

(assert (=> bs!237720 m!1153709))

(assert (=> b!932067 d!281557))

(declare-fun b!932357 () Bool)

(declare-fun res!423466 () Bool)

(declare-fun e!605863 () Bool)

(assert (=> b!932357 (=> res!423466 e!605863)))

(assert (=> b!932357 (= res!423466 (not ((_ is Concat!4368) r!15766)))))

(declare-fun e!605867 () Bool)

(assert (=> b!932357 (= e!605867 e!605863)))

(declare-fun b!932358 () Bool)

(declare-fun e!605866 () Bool)

(declare-fun call!57589 () Bool)

(assert (=> b!932358 (= e!605866 call!57589)))

(declare-fun b!932359 () Bool)

(declare-fun e!605868 () Bool)

(declare-fun e!605865 () Bool)

(assert (=> b!932359 (= e!605868 e!605865)))

(declare-fun res!423465 () Bool)

(assert (=> b!932359 (= res!423465 (not (nullable!725 (reg!2864 r!15766))))))

(assert (=> b!932359 (=> (not res!423465) (not e!605865))))

(declare-fun b!932360 () Bool)

(declare-fun call!57590 () Bool)

(assert (=> b!932360 (= e!605865 call!57590)))

(declare-fun d!281559 () Bool)

(declare-fun res!423464 () Bool)

(declare-fun e!605869 () Bool)

(assert (=> d!281559 (=> res!423464 e!605869)))

(assert (=> d!281559 (= res!423464 ((_ is ElementMatch!2535) r!15766))))

(assert (=> d!281559 (= (validRegex!1004 r!15766) e!605869)))

(declare-fun b!932361 () Bool)

(assert (=> b!932361 (= e!605868 e!605867)))

(declare-fun c!151620 () Bool)

(assert (=> b!932361 (= c!151620 ((_ is Union!2535) r!15766))))

(declare-fun bm!57584 () Bool)

(assert (=> bm!57584 (= call!57589 (validRegex!1004 (ite c!151620 (regTwo!5583 r!15766) (regTwo!5582 r!15766))))))

(declare-fun bm!57585 () Bool)

(declare-fun call!57591 () Bool)

(assert (=> bm!57585 (= call!57591 call!57590)))

(declare-fun b!932362 () Bool)

(declare-fun e!605864 () Bool)

(assert (=> b!932362 (= e!605864 call!57589)))

(declare-fun b!932363 () Bool)

(declare-fun res!423467 () Bool)

(assert (=> b!932363 (=> (not res!423467) (not e!605866))))

(assert (=> b!932363 (= res!423467 call!57591)))

(assert (=> b!932363 (= e!605867 e!605866)))

(declare-fun b!932364 () Bool)

(assert (=> b!932364 (= e!605869 e!605868)))

(declare-fun c!151619 () Bool)

(assert (=> b!932364 (= c!151619 ((_ is Star!2535) r!15766))))

(declare-fun bm!57586 () Bool)

(assert (=> bm!57586 (= call!57590 (validRegex!1004 (ite c!151619 (reg!2864 r!15766) (ite c!151620 (regOne!5583 r!15766) (regOne!5582 r!15766)))))))

(declare-fun b!932365 () Bool)

(assert (=> b!932365 (= e!605863 e!605864)))

(declare-fun res!423468 () Bool)

(assert (=> b!932365 (=> (not res!423468) (not e!605864))))

(assert (=> b!932365 (= res!423468 call!57591)))

(assert (= (and d!281559 (not res!423464)) b!932364))

(assert (= (and b!932364 c!151619) b!932359))

(assert (= (and b!932364 (not c!151619)) b!932361))

(assert (= (and b!932359 res!423465) b!932360))

(assert (= (and b!932361 c!151620) b!932363))

(assert (= (and b!932361 (not c!151620)) b!932357))

(assert (= (and b!932363 res!423467) b!932358))

(assert (= (and b!932357 (not res!423466)) b!932365))

(assert (= (and b!932365 res!423468) b!932362))

(assert (= (or b!932358 b!932362) bm!57584))

(assert (= (or b!932363 b!932365) bm!57585))

(assert (= (or b!932360 bm!57585) bm!57586))

(declare-fun m!1153853 () Bool)

(assert (=> b!932359 m!1153853))

(declare-fun m!1153855 () Bool)

(assert (=> bm!57584 m!1153855))

(declare-fun m!1153857 () Bool)

(assert (=> bm!57586 m!1153857))

(assert (=> start!83382 d!281559))

(assert (=> b!932072 d!281555))

(declare-fun b!932533 () Bool)

(assert (=> b!932533 true))

(assert (=> b!932533 true))

(declare-fun bs!237730 () Bool)

(declare-fun b!932534 () Bool)

(assert (= bs!237730 (and b!932534 b!932533)))

(declare-fun lambda!30834 () Int)

(declare-fun lambda!30833 () Int)

(assert (=> bs!237730 (not (= lambda!30834 lambda!30833))))

(assert (=> b!932534 true))

(assert (=> b!932534 true))

(declare-fun e!605960 () Bool)

(declare-fun call!57618 () Bool)

(assert (=> b!932533 (= e!605960 call!57618)))

(declare-fun e!605958 () Bool)

(assert (=> b!932534 (= e!605958 call!57618)))

(declare-fun d!281561 () Bool)

(declare-fun c!151654 () Bool)

(assert (=> d!281561 (= c!151654 ((_ is EmptyExpr!2535) r!15766))))

(declare-fun e!605959 () Bool)

(assert (=> d!281561 (= (matchRSpec!336 r!15766 s!10566) e!605959)))

(declare-fun b!932535 () Bool)

(declare-fun e!605962 () Bool)

(declare-fun e!605961 () Bool)

(assert (=> b!932535 (= e!605962 e!605961)))

(declare-fun res!423539 () Bool)

(assert (=> b!932535 (= res!423539 (matchRSpec!336 (regOne!5583 r!15766) s!10566))))

(assert (=> b!932535 (=> res!423539 e!605961)))

(declare-fun b!932536 () Bool)

(declare-fun res!423537 () Bool)

(assert (=> b!932536 (=> res!423537 e!605960)))

(declare-fun call!57619 () Bool)

(assert (=> b!932536 (= res!423537 call!57619)))

(assert (=> b!932536 (= e!605958 e!605960)))

(declare-fun b!932537 () Bool)

(assert (=> b!932537 (= e!605962 e!605958)))

(declare-fun c!151652 () Bool)

(assert (=> b!932537 (= c!151652 ((_ is Star!2535) r!15766))))

(declare-fun b!932538 () Bool)

(declare-fun c!151653 () Bool)

(assert (=> b!932538 (= c!151653 ((_ is ElementMatch!2535) r!15766))))

(declare-fun e!605964 () Bool)

(declare-fun e!605963 () Bool)

(assert (=> b!932538 (= e!605964 e!605963)))

(declare-fun b!932539 () Bool)

(assert (=> b!932539 (= e!605963 (= s!10566 (Cons!9749 (c!151534 r!15766) Nil!9749)))))

(declare-fun b!932540 () Bool)

(assert (=> b!932540 (= e!605959 e!605964)))

(declare-fun res!423538 () Bool)

(assert (=> b!932540 (= res!423538 (not ((_ is EmptyLang!2535) r!15766)))))

(assert (=> b!932540 (=> (not res!423538) (not e!605964))))

(declare-fun b!932541 () Bool)

(assert (=> b!932541 (= e!605961 (matchRSpec!336 (regTwo!5583 r!15766) s!10566))))

(declare-fun b!932542 () Bool)

(declare-fun c!151651 () Bool)

(assert (=> b!932542 (= c!151651 ((_ is Union!2535) r!15766))))

(assert (=> b!932542 (= e!605963 e!605962)))

(declare-fun b!932543 () Bool)

(assert (=> b!932543 (= e!605959 call!57619)))

(declare-fun bm!57613 () Bool)

(assert (=> bm!57613 (= call!57619 (isEmpty!5998 s!10566))))

(declare-fun bm!57614 () Bool)

(declare-fun Exists!296 (Int) Bool)

(assert (=> bm!57614 (= call!57618 (Exists!296 (ite c!151652 lambda!30833 lambda!30834)))))

(assert (= (and d!281561 c!151654) b!932543))

(assert (= (and d!281561 (not c!151654)) b!932540))

(assert (= (and b!932540 res!423538) b!932538))

(assert (= (and b!932538 c!151653) b!932539))

(assert (= (and b!932538 (not c!151653)) b!932542))

(assert (= (and b!932542 c!151651) b!932535))

(assert (= (and b!932542 (not c!151651)) b!932537))

(assert (= (and b!932535 (not res!423539)) b!932541))

(assert (= (and b!932537 c!151652) b!932536))

(assert (= (and b!932537 (not c!151652)) b!932534))

(assert (= (and b!932536 (not res!423537)) b!932533))

(assert (= (or b!932533 b!932534) bm!57614))

(assert (= (or b!932543 b!932536) bm!57613))

(declare-fun m!1153901 () Bool)

(assert (=> b!932535 m!1153901))

(declare-fun m!1153903 () Bool)

(assert (=> b!932541 m!1153903))

(assert (=> bm!57613 m!1153769))

(declare-fun m!1153905 () Bool)

(assert (=> bm!57614 m!1153905))

(assert (=> b!932070 d!281561))

(declare-fun b!932548 () Bool)

(declare-fun res!423544 () Bool)

(declare-fun e!605966 () Bool)

(assert (=> b!932548 (=> (not res!423544) (not e!605966))))

(assert (=> b!932548 (= res!423544 (isEmpty!5998 (tail!1250 s!10566)))))

(declare-fun b!932549 () Bool)

(declare-fun e!605970 () Bool)

(declare-fun e!605965 () Bool)

(assert (=> b!932549 (= e!605970 e!605965)))

(declare-fun c!151657 () Bool)

(assert (=> b!932549 (= c!151657 ((_ is EmptyLang!2535) r!15766))))

(declare-fun b!932550 () Bool)

(declare-fun res!423542 () Bool)

(declare-fun e!605969 () Bool)

(assert (=> b!932550 (=> res!423542 e!605969)))

(assert (=> b!932550 (= res!423542 (not (isEmpty!5998 (tail!1250 s!10566))))))

(declare-fun bm!57615 () Bool)

(declare-fun call!57620 () Bool)

(assert (=> bm!57615 (= call!57620 (isEmpty!5998 s!10566))))

(declare-fun b!932551 () Bool)

(declare-fun e!605971 () Bool)

(assert (=> b!932551 (= e!605971 e!605969)))

(declare-fun res!423545 () Bool)

(assert (=> b!932551 (=> res!423545 e!605969)))

(assert (=> b!932551 (= res!423545 call!57620)))

(declare-fun b!932552 () Bool)

(assert (=> b!932552 (= e!605966 (= (head!1688 s!10566) (c!151534 r!15766)))))

(declare-fun b!932553 () Bool)

(declare-fun res!423546 () Bool)

(declare-fun e!605967 () Bool)

(assert (=> b!932553 (=> res!423546 e!605967)))

(assert (=> b!932553 (= res!423546 e!605966)))

(declare-fun res!423540 () Bool)

(assert (=> b!932553 (=> (not res!423540) (not e!605966))))

(declare-fun lt!340545 () Bool)

(assert (=> b!932553 (= res!423540 lt!340545)))

(declare-fun b!932554 () Bool)

(declare-fun e!605968 () Bool)

(assert (=> b!932554 (= e!605968 (matchR!1073 (derivativeStep!535 r!15766 (head!1688 s!10566)) (tail!1250 s!10566)))))

(declare-fun b!932555 () Bool)

(assert (=> b!932555 (= e!605970 (= lt!340545 call!57620))))

(declare-fun b!932556 () Bool)

(assert (=> b!932556 (= e!605968 (nullable!725 r!15766))))

(declare-fun b!932557 () Bool)

(declare-fun res!423547 () Bool)

(assert (=> b!932557 (=> res!423547 e!605967)))

(assert (=> b!932557 (= res!423547 (not ((_ is ElementMatch!2535) r!15766)))))

(assert (=> b!932557 (= e!605965 e!605967)))

(declare-fun b!932558 () Bool)

(assert (=> b!932558 (= e!605967 e!605971)))

(declare-fun res!423543 () Bool)

(assert (=> b!932558 (=> (not res!423543) (not e!605971))))

(assert (=> b!932558 (= res!423543 (not lt!340545))))

(declare-fun b!932559 () Bool)

(declare-fun res!423541 () Bool)

(assert (=> b!932559 (=> (not res!423541) (not e!605966))))

(assert (=> b!932559 (= res!423541 (not call!57620))))

(declare-fun b!932560 () Bool)

(assert (=> b!932560 (= e!605965 (not lt!340545))))

(declare-fun b!932561 () Bool)

(assert (=> b!932561 (= e!605969 (not (= (head!1688 s!10566) (c!151534 r!15766))))))

(declare-fun d!281579 () Bool)

(assert (=> d!281579 e!605970))

(declare-fun c!151656 () Bool)

(assert (=> d!281579 (= c!151656 ((_ is EmptyExpr!2535) r!15766))))

(assert (=> d!281579 (= lt!340545 e!605968)))

(declare-fun c!151655 () Bool)

(assert (=> d!281579 (= c!151655 (isEmpty!5998 s!10566))))

(assert (=> d!281579 (validRegex!1004 r!15766)))

(assert (=> d!281579 (= (matchR!1073 r!15766 s!10566) lt!340545)))

(assert (= (and d!281579 c!151655) b!932556))

(assert (= (and d!281579 (not c!151655)) b!932554))

(assert (= (and d!281579 c!151656) b!932555))

(assert (= (and d!281579 (not c!151656)) b!932549))

(assert (= (and b!932549 c!151657) b!932560))

(assert (= (and b!932549 (not c!151657)) b!932557))

(assert (= (and b!932557 (not res!423547)) b!932553))

(assert (= (and b!932553 res!423540) b!932559))

(assert (= (and b!932559 res!423541) b!932548))

(assert (= (and b!932548 res!423544) b!932552))

(assert (= (and b!932553 (not res!423546)) b!932558))

(assert (= (and b!932558 res!423543) b!932551))

(assert (= (and b!932551 (not res!423545)) b!932550))

(assert (= (and b!932550 (not res!423542)) b!932561))

(assert (= (or b!932555 b!932551 b!932559) bm!57615))

(assert (=> b!932550 m!1153761))

(assert (=> b!932550 m!1153761))

(assert (=> b!932550 m!1153763))

(assert (=> b!932552 m!1153765))

(assert (=> b!932561 m!1153765))

(declare-fun m!1153907 () Bool)

(assert (=> b!932556 m!1153907))

(assert (=> bm!57615 m!1153769))

(assert (=> b!932554 m!1153765))

(assert (=> b!932554 m!1153765))

(declare-fun m!1153909 () Bool)

(assert (=> b!932554 m!1153909))

(assert (=> b!932554 m!1153761))

(assert (=> b!932554 m!1153909))

(assert (=> b!932554 m!1153761))

(declare-fun m!1153911 () Bool)

(assert (=> b!932554 m!1153911))

(assert (=> d!281579 m!1153769))

(assert (=> d!281579 m!1153723))

(assert (=> b!932548 m!1153761))

(assert (=> b!932548 m!1153761))

(assert (=> b!932548 m!1153763))

(assert (=> b!932070 d!281579))

(declare-fun d!281581 () Bool)

(assert (=> d!281581 (= (matchR!1073 r!15766 s!10566) (matchRSpec!336 r!15766 s!10566))))

(declare-fun lt!340548 () Unit!14689)

(declare-fun choose!5736 (Regex!2535 List!9765) Unit!14689)

(assert (=> d!281581 (= lt!340548 (choose!5736 r!15766 s!10566))))

(assert (=> d!281581 (validRegex!1004 r!15766)))

(assert (=> d!281581 (= (mainMatchTheorem!336 r!15766 s!10566) lt!340548)))

(declare-fun bs!237731 () Bool)

(assert (= bs!237731 d!281581))

(assert (=> bs!237731 m!1153733))

(assert (=> bs!237731 m!1153731))

(declare-fun m!1153913 () Bool)

(assert (=> bs!237731 m!1153913))

(assert (=> bs!237731 m!1153723))

(assert (=> b!932070 d!281581))

(declare-fun b!932562 () Bool)

(declare-fun res!423552 () Bool)

(declare-fun e!605973 () Bool)

(assert (=> b!932562 (=> (not res!423552) (not e!605973))))

(assert (=> b!932562 (= res!423552 (isEmpty!5998 (tail!1250 s!10566)))))

(declare-fun b!932563 () Bool)

(declare-fun e!605977 () Bool)

(declare-fun e!605972 () Bool)

(assert (=> b!932563 (= e!605977 e!605972)))

(declare-fun c!151660 () Bool)

(assert (=> b!932563 (= c!151660 ((_ is EmptyLang!2535) lt!340504))))

(declare-fun b!932564 () Bool)

(declare-fun res!423550 () Bool)

(declare-fun e!605976 () Bool)

(assert (=> b!932564 (=> res!423550 e!605976)))

(assert (=> b!932564 (= res!423550 (not (isEmpty!5998 (tail!1250 s!10566))))))

(declare-fun bm!57616 () Bool)

(declare-fun call!57621 () Bool)

(assert (=> bm!57616 (= call!57621 (isEmpty!5998 s!10566))))

(declare-fun b!932565 () Bool)

(declare-fun e!605978 () Bool)

(assert (=> b!932565 (= e!605978 e!605976)))

(declare-fun res!423553 () Bool)

(assert (=> b!932565 (=> res!423553 e!605976)))

(assert (=> b!932565 (= res!423553 call!57621)))

(declare-fun b!932566 () Bool)

(assert (=> b!932566 (= e!605973 (= (head!1688 s!10566) (c!151534 lt!340504)))))

(declare-fun b!932567 () Bool)

(declare-fun res!423554 () Bool)

(declare-fun e!605974 () Bool)

(assert (=> b!932567 (=> res!423554 e!605974)))

(assert (=> b!932567 (= res!423554 e!605973)))

(declare-fun res!423548 () Bool)

(assert (=> b!932567 (=> (not res!423548) (not e!605973))))

(declare-fun lt!340549 () Bool)

(assert (=> b!932567 (= res!423548 lt!340549)))

(declare-fun b!932568 () Bool)

(declare-fun e!605975 () Bool)

(assert (=> b!932568 (= e!605975 (matchR!1073 (derivativeStep!535 lt!340504 (head!1688 s!10566)) (tail!1250 s!10566)))))

(declare-fun b!932569 () Bool)

(assert (=> b!932569 (= e!605977 (= lt!340549 call!57621))))

(declare-fun b!932570 () Bool)

(assert (=> b!932570 (= e!605975 (nullable!725 lt!340504))))

(declare-fun b!932571 () Bool)

(declare-fun res!423555 () Bool)

(assert (=> b!932571 (=> res!423555 e!605974)))

(assert (=> b!932571 (= res!423555 (not ((_ is ElementMatch!2535) lt!340504)))))

(assert (=> b!932571 (= e!605972 e!605974)))

(declare-fun b!932572 () Bool)

(assert (=> b!932572 (= e!605974 e!605978)))

(declare-fun res!423551 () Bool)

(assert (=> b!932572 (=> (not res!423551) (not e!605978))))

(assert (=> b!932572 (= res!423551 (not lt!340549))))

(declare-fun b!932573 () Bool)

(declare-fun res!423549 () Bool)

(assert (=> b!932573 (=> (not res!423549) (not e!605973))))

(assert (=> b!932573 (= res!423549 (not call!57621))))

(declare-fun b!932574 () Bool)

(assert (=> b!932574 (= e!605972 (not lt!340549))))

(declare-fun b!932575 () Bool)

(assert (=> b!932575 (= e!605976 (not (= (head!1688 s!10566) (c!151534 lt!340504))))))

(declare-fun d!281583 () Bool)

(assert (=> d!281583 e!605977))

(declare-fun c!151659 () Bool)

(assert (=> d!281583 (= c!151659 ((_ is EmptyExpr!2535) lt!340504))))

(assert (=> d!281583 (= lt!340549 e!605975)))

(declare-fun c!151658 () Bool)

(assert (=> d!281583 (= c!151658 (isEmpty!5998 s!10566))))

(assert (=> d!281583 (validRegex!1004 lt!340504)))

(assert (=> d!281583 (= (matchR!1073 lt!340504 s!10566) lt!340549)))

(assert (= (and d!281583 c!151658) b!932570))

(assert (= (and d!281583 (not c!151658)) b!932568))

(assert (= (and d!281583 c!151659) b!932569))

(assert (= (and d!281583 (not c!151659)) b!932563))

(assert (= (and b!932563 c!151660) b!932574))

(assert (= (and b!932563 (not c!151660)) b!932571))

(assert (= (and b!932571 (not res!423555)) b!932567))

(assert (= (and b!932567 res!423548) b!932573))

(assert (= (and b!932573 res!423549) b!932562))

(assert (= (and b!932562 res!423552) b!932566))

(assert (= (and b!932567 (not res!423554)) b!932572))

(assert (= (and b!932572 res!423551) b!932565))

(assert (= (and b!932565 (not res!423553)) b!932564))

(assert (= (and b!932564 (not res!423550)) b!932575))

(assert (= (or b!932569 b!932565 b!932573) bm!57616))

(assert (=> b!932564 m!1153761))

(assert (=> b!932564 m!1153761))

(assert (=> b!932564 m!1153763))

(assert (=> b!932566 m!1153765))

(assert (=> b!932575 m!1153765))

(declare-fun m!1153915 () Bool)

(assert (=> b!932570 m!1153915))

(assert (=> bm!57616 m!1153769))

(assert (=> b!932568 m!1153765))

(assert (=> b!932568 m!1153765))

(declare-fun m!1153917 () Bool)

(assert (=> b!932568 m!1153917))

(assert (=> b!932568 m!1153761))

(assert (=> b!932568 m!1153917))

(assert (=> b!932568 m!1153761))

(declare-fun m!1153919 () Bool)

(assert (=> b!932568 m!1153919))

(assert (=> d!281583 m!1153769))

(declare-fun m!1153921 () Bool)

(assert (=> d!281583 m!1153921))

(assert (=> b!932562 m!1153761))

(assert (=> b!932562 m!1153761))

(assert (=> b!932562 m!1153763))

(assert (=> b!932064 d!281583))

(declare-fun d!281585 () Bool)

(declare-fun e!605983 () Bool)

(assert (=> d!281585 e!605983))

(declare-fun res!423560 () Bool)

(assert (=> d!281585 (=> res!423560 e!605983)))

(assert (=> d!281585 (= res!423560 (matchR!1073 lt!340504 s!10566))))

(declare-fun lt!340552 () Unit!14689)

(declare-fun choose!5737 (Regex!2535 Regex!2535 List!9765) Unit!14689)

(assert (=> d!281585 (= lt!340552 (choose!5737 lt!340504 lt!340509 s!10566))))

(declare-fun e!605984 () Bool)

(assert (=> d!281585 e!605984))

(declare-fun res!423561 () Bool)

(assert (=> d!281585 (=> (not res!423561) (not e!605984))))

(assert (=> d!281585 (= res!423561 (validRegex!1004 lt!340504))))

(assert (=> d!281585 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!52 lt!340504 lt!340509 s!10566) lt!340552)))

(declare-fun b!932580 () Bool)

(assert (=> b!932580 (= e!605984 (validRegex!1004 lt!340509))))

(declare-fun b!932581 () Bool)

(assert (=> b!932581 (= e!605983 (matchR!1073 lt!340509 s!10566))))

(assert (= (and d!281585 res!423561) b!932580))

(assert (= (and d!281585 (not res!423560)) b!932581))

(assert (=> d!281585 m!1153713))

(declare-fun m!1153923 () Bool)

(assert (=> d!281585 m!1153923))

(assert (=> d!281585 m!1153921))

(assert (=> b!932580 m!1153847))

(assert (=> b!932581 m!1153721))

(assert (=> b!932064 d!281585))

(declare-fun bs!237732 () Bool)

(declare-fun b!932582 () Bool)

(assert (= bs!237732 (and b!932582 b!932533)))

(declare-fun lambda!30835 () Int)

(assert (=> bs!237732 (= (and (= (reg!2864 lt!340511) (reg!2864 r!15766)) (= lt!340511 r!15766)) (= lambda!30835 lambda!30833))))

(declare-fun bs!237733 () Bool)

(assert (= bs!237733 (and b!932582 b!932534)))

(assert (=> bs!237733 (not (= lambda!30835 lambda!30834))))

(assert (=> b!932582 true))

(assert (=> b!932582 true))

(declare-fun bs!237734 () Bool)

(declare-fun b!932583 () Bool)

(assert (= bs!237734 (and b!932583 b!932533)))

(declare-fun lambda!30836 () Int)

(assert (=> bs!237734 (not (= lambda!30836 lambda!30833))))

(declare-fun bs!237735 () Bool)

(assert (= bs!237735 (and b!932583 b!932534)))

(assert (=> bs!237735 (= (and (= (regOne!5582 lt!340511) (regOne!5582 r!15766)) (= (regTwo!5582 lt!340511) (regTwo!5582 r!15766))) (= lambda!30836 lambda!30834))))

(declare-fun bs!237736 () Bool)

(assert (= bs!237736 (and b!932583 b!932582)))

(assert (=> bs!237736 (not (= lambda!30836 lambda!30835))))

(assert (=> b!932583 true))

(assert (=> b!932583 true))

(declare-fun e!605987 () Bool)

(declare-fun call!57622 () Bool)

(assert (=> b!932582 (= e!605987 call!57622)))

(declare-fun e!605985 () Bool)

(assert (=> b!932583 (= e!605985 call!57622)))

(declare-fun d!281587 () Bool)

(declare-fun c!151664 () Bool)

(assert (=> d!281587 (= c!151664 ((_ is EmptyExpr!2535) lt!340511))))

(declare-fun e!605986 () Bool)

(assert (=> d!281587 (= (matchRSpec!336 lt!340511 s!10566) e!605986)))

(declare-fun b!932584 () Bool)

(declare-fun e!605989 () Bool)

(declare-fun e!605988 () Bool)

(assert (=> b!932584 (= e!605989 e!605988)))

(declare-fun res!423564 () Bool)

(assert (=> b!932584 (= res!423564 (matchRSpec!336 (regOne!5583 lt!340511) s!10566))))

(assert (=> b!932584 (=> res!423564 e!605988)))

(declare-fun b!932585 () Bool)

(declare-fun res!423562 () Bool)

(assert (=> b!932585 (=> res!423562 e!605987)))

(declare-fun call!57623 () Bool)

(assert (=> b!932585 (= res!423562 call!57623)))

(assert (=> b!932585 (= e!605985 e!605987)))

(declare-fun b!932586 () Bool)

(assert (=> b!932586 (= e!605989 e!605985)))

(declare-fun c!151662 () Bool)

(assert (=> b!932586 (= c!151662 ((_ is Star!2535) lt!340511))))

(declare-fun b!932587 () Bool)

(declare-fun c!151663 () Bool)

(assert (=> b!932587 (= c!151663 ((_ is ElementMatch!2535) lt!340511))))

(declare-fun e!605991 () Bool)

(declare-fun e!605990 () Bool)

(assert (=> b!932587 (= e!605991 e!605990)))

(declare-fun b!932588 () Bool)

(assert (=> b!932588 (= e!605990 (= s!10566 (Cons!9749 (c!151534 lt!340511) Nil!9749)))))

(declare-fun b!932589 () Bool)

(assert (=> b!932589 (= e!605986 e!605991)))

(declare-fun res!423563 () Bool)

(assert (=> b!932589 (= res!423563 (not ((_ is EmptyLang!2535) lt!340511)))))

(assert (=> b!932589 (=> (not res!423563) (not e!605991))))

(declare-fun b!932590 () Bool)

(assert (=> b!932590 (= e!605988 (matchRSpec!336 (regTwo!5583 lt!340511) s!10566))))

(declare-fun b!932591 () Bool)

(declare-fun c!151661 () Bool)

(assert (=> b!932591 (= c!151661 ((_ is Union!2535) lt!340511))))

(assert (=> b!932591 (= e!605990 e!605989)))

(declare-fun b!932592 () Bool)

(assert (=> b!932592 (= e!605986 call!57623)))

(declare-fun bm!57617 () Bool)

(assert (=> bm!57617 (= call!57623 (isEmpty!5998 s!10566))))

(declare-fun bm!57618 () Bool)

(assert (=> bm!57618 (= call!57622 (Exists!296 (ite c!151662 lambda!30835 lambda!30836)))))

(assert (= (and d!281587 c!151664) b!932592))

(assert (= (and d!281587 (not c!151664)) b!932589))

(assert (= (and b!932589 res!423563) b!932587))

(assert (= (and b!932587 c!151663) b!932588))

(assert (= (and b!932587 (not c!151663)) b!932591))

(assert (= (and b!932591 c!151661) b!932584))

(assert (= (and b!932591 (not c!151661)) b!932586))

(assert (= (and b!932584 (not res!423564)) b!932590))

(assert (= (and b!932586 c!151662) b!932585))

(assert (= (and b!932586 (not c!151662)) b!932583))

(assert (= (and b!932585 (not res!423562)) b!932582))

(assert (= (or b!932582 b!932583) bm!57618))

(assert (= (or b!932592 b!932585) bm!57617))

(declare-fun m!1153925 () Bool)

(assert (=> b!932584 m!1153925))

(declare-fun m!1153927 () Bool)

(assert (=> b!932590 m!1153927))

(assert (=> bm!57617 m!1153769))

(declare-fun m!1153929 () Bool)

(assert (=> bm!57618 m!1153929))

(assert (=> b!932064 d!281587))

(declare-fun d!281589 () Bool)

(assert (=> d!281589 (= (matchR!1073 lt!340511 s!10566) (matchRSpec!336 lt!340511 s!10566))))

(declare-fun lt!340553 () Unit!14689)

(assert (=> d!281589 (= lt!340553 (choose!5736 lt!340511 s!10566))))

(assert (=> d!281589 (validRegex!1004 lt!340511)))

(assert (=> d!281589 (= (mainMatchTheorem!336 lt!340511 s!10566) lt!340553)))

(declare-fun bs!237737 () Bool)

(assert (= bs!237737 d!281589))

(assert (=> bs!237737 m!1153707))

(assert (=> bs!237737 m!1153717))

(declare-fun m!1153931 () Bool)

(assert (=> bs!237737 m!1153931))

(assert (=> bs!237737 m!1153775))

(assert (=> b!932064 d!281589))

(declare-fun b!932605 () Bool)

(declare-fun e!605994 () Bool)

(declare-fun tp!289363 () Bool)

(assert (=> b!932605 (= e!605994 tp!289363)))

(assert (=> b!932071 (= tp!289308 e!605994)))

(declare-fun b!932603 () Bool)

(assert (=> b!932603 (= e!605994 tp_is_empty!4713)))

(declare-fun b!932604 () Bool)

(declare-fun tp!289361 () Bool)

(declare-fun tp!289365 () Bool)

(assert (=> b!932604 (= e!605994 (and tp!289361 tp!289365))))

(declare-fun b!932606 () Bool)

(declare-fun tp!289362 () Bool)

(declare-fun tp!289364 () Bool)

(assert (=> b!932606 (= e!605994 (and tp!289362 tp!289364))))

(assert (= (and b!932071 ((_ is ElementMatch!2535) (reg!2864 r!15766))) b!932603))

(assert (= (and b!932071 ((_ is Concat!4368) (reg!2864 r!15766))) b!932604))

(assert (= (and b!932071 ((_ is Star!2535) (reg!2864 r!15766))) b!932605))

(assert (= (and b!932071 ((_ is Union!2535) (reg!2864 r!15766))) b!932606))

(declare-fun b!932609 () Bool)

(declare-fun e!605995 () Bool)

(declare-fun tp!289368 () Bool)

(assert (=> b!932609 (= e!605995 tp!289368)))

(assert (=> b!932065 (= tp!289312 e!605995)))

(declare-fun b!932607 () Bool)

(assert (=> b!932607 (= e!605995 tp_is_empty!4713)))

(declare-fun b!932608 () Bool)

(declare-fun tp!289366 () Bool)

(declare-fun tp!289370 () Bool)

(assert (=> b!932608 (= e!605995 (and tp!289366 tp!289370))))

(declare-fun b!932610 () Bool)

(declare-fun tp!289367 () Bool)

(declare-fun tp!289369 () Bool)

(assert (=> b!932610 (= e!605995 (and tp!289367 tp!289369))))

(assert (= (and b!932065 ((_ is ElementMatch!2535) (regOne!5583 r!15766))) b!932607))

(assert (= (and b!932065 ((_ is Concat!4368) (regOne!5583 r!15766))) b!932608))

(assert (= (and b!932065 ((_ is Star!2535) (regOne!5583 r!15766))) b!932609))

(assert (= (and b!932065 ((_ is Union!2535) (regOne!5583 r!15766))) b!932610))

(declare-fun b!932613 () Bool)

(declare-fun e!605996 () Bool)

(declare-fun tp!289373 () Bool)

(assert (=> b!932613 (= e!605996 tp!289373)))

(assert (=> b!932065 (= tp!289311 e!605996)))

(declare-fun b!932611 () Bool)

(assert (=> b!932611 (= e!605996 tp_is_empty!4713)))

(declare-fun b!932612 () Bool)

(declare-fun tp!289371 () Bool)

(declare-fun tp!289375 () Bool)

(assert (=> b!932612 (= e!605996 (and tp!289371 tp!289375))))

(declare-fun b!932614 () Bool)

(declare-fun tp!289372 () Bool)

(declare-fun tp!289374 () Bool)

(assert (=> b!932614 (= e!605996 (and tp!289372 tp!289374))))

(assert (= (and b!932065 ((_ is ElementMatch!2535) (regTwo!5583 r!15766))) b!932611))

(assert (= (and b!932065 ((_ is Concat!4368) (regTwo!5583 r!15766))) b!932612))

(assert (= (and b!932065 ((_ is Star!2535) (regTwo!5583 r!15766))) b!932613))

(assert (= (and b!932065 ((_ is Union!2535) (regTwo!5583 r!15766))) b!932614))

(declare-fun b!932617 () Bool)

(declare-fun e!605997 () Bool)

(declare-fun tp!289378 () Bool)

(assert (=> b!932617 (= e!605997 tp!289378)))

(assert (=> b!932068 (= tp!289309 e!605997)))

(declare-fun b!932615 () Bool)

(assert (=> b!932615 (= e!605997 tp_is_empty!4713)))

(declare-fun b!932616 () Bool)

(declare-fun tp!289376 () Bool)

(declare-fun tp!289380 () Bool)

(assert (=> b!932616 (= e!605997 (and tp!289376 tp!289380))))

(declare-fun b!932618 () Bool)

(declare-fun tp!289377 () Bool)

(declare-fun tp!289379 () Bool)

(assert (=> b!932618 (= e!605997 (and tp!289377 tp!289379))))

(assert (= (and b!932068 ((_ is ElementMatch!2535) (regOne!5582 r!15766))) b!932615))

(assert (= (and b!932068 ((_ is Concat!4368) (regOne!5582 r!15766))) b!932616))

(assert (= (and b!932068 ((_ is Star!2535) (regOne!5582 r!15766))) b!932617))

(assert (= (and b!932068 ((_ is Union!2535) (regOne!5582 r!15766))) b!932618))

(declare-fun b!932621 () Bool)

(declare-fun e!605998 () Bool)

(declare-fun tp!289383 () Bool)

(assert (=> b!932621 (= e!605998 tp!289383)))

(assert (=> b!932068 (= tp!289307 e!605998)))

(declare-fun b!932619 () Bool)

(assert (=> b!932619 (= e!605998 tp_is_empty!4713)))

(declare-fun b!932620 () Bool)

(declare-fun tp!289381 () Bool)

(declare-fun tp!289385 () Bool)

(assert (=> b!932620 (= e!605998 (and tp!289381 tp!289385))))

(declare-fun b!932622 () Bool)

(declare-fun tp!289382 () Bool)

(declare-fun tp!289384 () Bool)

(assert (=> b!932622 (= e!605998 (and tp!289382 tp!289384))))

(assert (= (and b!932068 ((_ is ElementMatch!2535) (regTwo!5582 r!15766))) b!932619))

(assert (= (and b!932068 ((_ is Concat!4368) (regTwo!5582 r!15766))) b!932620))

(assert (= (and b!932068 ((_ is Star!2535) (regTwo!5582 r!15766))) b!932621))

(assert (= (and b!932068 ((_ is Union!2535) (regTwo!5582 r!15766))) b!932622))

(declare-fun b!932627 () Bool)

(declare-fun e!606001 () Bool)

(declare-fun tp!289388 () Bool)

(assert (=> b!932627 (= e!606001 (and tp_is_empty!4713 tp!289388))))

(assert (=> b!932069 (= tp!289310 e!606001)))

(assert (= (and b!932069 ((_ is Cons!9749) (t!100811 s!10566))) b!932627))

(check-sat (not b!932621) (not b!932575) (not b!932606) (not b!932160) (not bm!57581) (not b!932336) (not d!281555) (not b!932356) (not d!281553) (not bm!57579) (not b!932349) (not b!932584) (not b!932321) (not b!932562) (not b!932166) (not b!932561) (not bm!57615) (not b!932609) (not bm!57531) (not d!281581) (not b!932590) (not b!932618) (not d!281557) (not b!932617) (not b!932329) (not b!932351) (not bm!57571) tp_is_empty!4713 (not d!281533) (not b!932345) (not bm!57617) (not d!281589) (not b!932326) (not b!932548) (not b!932616) (not d!281585) (not d!281545) (not b!932164) (not b!932605) (not b!932359) (not b!932608) (not b!932570) (not b!932580) (not b!932566) (not bm!57618) (not bm!57614) (not b!932535) (not bm!57562) (not bm!57568) (not b!932622) (not b!932552) (not b!932581) (not d!281579) (not b!932613) (not b!932610) (not bm!57616) (not d!281539) (not b!932627) (not b!932550) (not b!932614) (not b!932554) (not d!281583) (not b!932343) (not b!932568) (not bm!57583) (not bm!57582) (not b!932323) (not b!932612) (not b!932564) (not b!932604) (not bm!57584) (not b!932239) (not b!932556) (not b!932331) (not bm!57613) (not bm!57586) (not b!932158) (not b!932347) (not b!932300) (not b!932162) (not b!932620) (not b!932541) (not b!932171) (not b!932264) (not bm!57565))
(check-sat)
