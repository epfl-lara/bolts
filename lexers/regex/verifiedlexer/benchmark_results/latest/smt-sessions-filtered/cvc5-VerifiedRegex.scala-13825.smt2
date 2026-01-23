; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735578 () Bool)

(assert start!735578)

(declare-fun res!3060663 () Bool)

(declare-fun e!4542077 () Bool)

(assert (=> start!735578 (=> (not res!3060663) (not e!4542077))))

(declare-datatypes ((C!41214 0))(
  ( (C!41215 (val!31047 Int)) )
))
(declare-datatypes ((Regex!20444 0))(
  ( (ElementMatch!20444 (c!1407503 C!41214)) (Concat!29289 (regOne!41400 Regex!20444) (regTwo!41400 Regex!20444)) (EmptyExpr!20444) (Star!20444 (reg!20773 Regex!20444)) (EmptyLang!20444) (Union!20444 (regOne!41401 Regex!20444) (regTwo!41401 Regex!20444)) )
))
(declare-fun r!14126 () Regex!20444)

(declare-fun validRegex!10862 (Regex!20444) Bool)

(assert (=> start!735578 (= res!3060663 (validRegex!10862 r!14126))))

(assert (=> start!735578 e!4542077))

(declare-fun e!4542079 () Bool)

(assert (=> start!735578 e!4542079))

(declare-fun e!4542076 () Bool)

(assert (=> start!735578 e!4542076))

(declare-fun b!7641480 () Bool)

(declare-fun res!3060661 () Bool)

(assert (=> b!7641480 (=> (not res!3060661) (not e!4542077))))

(assert (=> b!7641480 (= res!3060661 (and (not (is-EmptyExpr!20444 r!14126)) (not (is-EmptyLang!20444 r!14126)) (not (is-ElementMatch!20444 r!14126)) (is-Union!20444 r!14126)))))

(declare-fun b!7641481 () Bool)

(declare-fun e!4542078 () Bool)

(declare-fun lt!2660539 () Int)

(declare-fun regexDepth!480 (Regex!20444) Int)

(assert (=> b!7641481 (= e!4542078 (< (+ lt!2660539 (regexDepth!480 (regOne!41401 r!14126))) (+ lt!2660539 (regexDepth!480 r!14126))))))

(declare-datatypes ((List!73295 0))(
  ( (Nil!73171) (Cons!73171 (h!79619 C!41214) (t!388030 List!73295)) )
))
(declare-fun s!9605 () List!73295)

(declare-fun size!42586 (List!73295) Int)

(assert (=> b!7641481 (= lt!2660539 (size!42586 s!9605))))

(declare-fun b!7641482 () Bool)

(declare-fun tp!2230722 () Bool)

(assert (=> b!7641482 (= e!4542079 tp!2230722)))

(declare-fun b!7641483 () Bool)

(declare-fun res!3060660 () Bool)

(assert (=> b!7641483 (=> (not res!3060660) (not e!4542077))))

(declare-fun matchR!9945 (Regex!20444 List!73295) Bool)

(assert (=> b!7641483 (= res!3060660 (matchR!9945 r!14126 s!9605))))

(declare-fun b!7641484 () Bool)

(assert (=> b!7641484 (= e!4542077 (not e!4542078))))

(declare-fun res!3060662 () Bool)

(assert (=> b!7641484 (=> res!3060662 e!4542078)))

(assert (=> b!7641484 (= res!3060662 (not (validRegex!10862 (regOne!41401 r!14126))))))

(declare-fun e!4542080 () Bool)

(assert (=> b!7641484 e!4542080))

(declare-fun res!3060659 () Bool)

(assert (=> b!7641484 (=> res!3060659 e!4542080)))

(assert (=> b!7641484 (= res!3060659 (matchR!9945 (regOne!41401 r!14126) s!9605))))

(declare-datatypes ((Unit!167864 0))(
  ( (Unit!167865) )
))
(declare-fun lt!2660540 () Unit!167864)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!347 (Regex!20444 Regex!20444 List!73295) Unit!167864)

(assert (=> b!7641484 (= lt!2660540 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!347 (regOne!41401 r!14126) (regTwo!41401 r!14126) s!9605))))

(declare-fun b!7641485 () Bool)

(declare-fun tp!2230723 () Bool)

(declare-fun tp!2230718 () Bool)

(assert (=> b!7641485 (= e!4542079 (and tp!2230723 tp!2230718))))

(declare-fun b!7641486 () Bool)

(declare-fun tp_is_empty!51243 () Bool)

(declare-fun tp!2230719 () Bool)

(assert (=> b!7641486 (= e!4542076 (and tp_is_empty!51243 tp!2230719))))

(declare-fun b!7641487 () Bool)

(assert (=> b!7641487 (= e!4542079 tp_is_empty!51243)))

(declare-fun b!7641488 () Bool)

(declare-fun tp!2230721 () Bool)

(declare-fun tp!2230720 () Bool)

(assert (=> b!7641488 (= e!4542079 (and tp!2230721 tp!2230720))))

(declare-fun b!7641489 () Bool)

(assert (=> b!7641489 (= e!4542080 (matchR!9945 (regTwo!41401 r!14126) s!9605))))

(assert (= (and start!735578 res!3060663) b!7641480))

(assert (= (and b!7641480 res!3060661) b!7641483))

(assert (= (and b!7641483 res!3060660) b!7641484))

(assert (= (and b!7641484 (not res!3060659)) b!7641489))

(assert (= (and b!7641484 (not res!3060662)) b!7641481))

(assert (= (and start!735578 (is-ElementMatch!20444 r!14126)) b!7641487))

(assert (= (and start!735578 (is-Concat!29289 r!14126)) b!7641485))

(assert (= (and start!735578 (is-Star!20444 r!14126)) b!7641482))

(assert (= (and start!735578 (is-Union!20444 r!14126)) b!7641488))

(assert (= (and start!735578 (is-Cons!73171 s!9605)) b!7641486))

(declare-fun m!8163094 () Bool)

(assert (=> start!735578 m!8163094))

(declare-fun m!8163096 () Bool)

(assert (=> b!7641484 m!8163096))

(declare-fun m!8163098 () Bool)

(assert (=> b!7641484 m!8163098))

(declare-fun m!8163100 () Bool)

(assert (=> b!7641484 m!8163100))

(declare-fun m!8163102 () Bool)

(assert (=> b!7641489 m!8163102))

(declare-fun m!8163104 () Bool)

(assert (=> b!7641483 m!8163104))

(declare-fun m!8163106 () Bool)

(assert (=> b!7641481 m!8163106))

(declare-fun m!8163108 () Bool)

(assert (=> b!7641481 m!8163108))

(declare-fun m!8163110 () Bool)

(assert (=> b!7641481 m!8163110))

(push 1)

(assert (not start!735578))

(assert tp_is_empty!51243)

(assert (not b!7641489))

(assert (not b!7641483))

(assert (not b!7641485))

(assert (not b!7641488))

(assert (not b!7641482))

(assert (not b!7641484))

(assert (not b!7641486))

(assert (not b!7641481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7641576 () Bool)

(declare-fun e!4542128 () Bool)

(declare-fun lt!2660551 () Bool)

(assert (=> b!7641576 (= e!4542128 (not lt!2660551))))

(declare-fun b!7641577 () Bool)

(declare-fun res!3060714 () Bool)

(declare-fun e!4542130 () Bool)

(assert (=> b!7641577 (=> res!3060714 e!4542130)))

(assert (=> b!7641577 (= res!3060714 (not (is-ElementMatch!20444 (regTwo!41401 r!14126))))))

(assert (=> b!7641577 (= e!4542128 e!4542130)))

(declare-fun b!7641578 () Bool)

(declare-fun e!4542129 () Bool)

(declare-fun nullable!8949 (Regex!20444) Bool)

(assert (=> b!7641578 (= e!4542129 (nullable!8949 (regTwo!41401 r!14126)))))

(declare-fun b!7641579 () Bool)

(declare-fun e!4542127 () Bool)

(assert (=> b!7641579 (= e!4542127 e!4542128)))

(declare-fun c!1407517 () Bool)

(assert (=> b!7641579 (= c!1407517 (is-EmptyLang!20444 (regTwo!41401 r!14126)))))

(declare-fun b!7641580 () Bool)

(declare-fun e!4542125 () Bool)

(assert (=> b!7641580 (= e!4542130 e!4542125)))

(declare-fun res!3060715 () Bool)

(assert (=> b!7641580 (=> (not res!3060715) (not e!4542125))))

(assert (=> b!7641580 (= res!3060715 (not lt!2660551))))

(declare-fun b!7641581 () Bool)

(declare-fun res!3060711 () Bool)

(declare-fun e!4542124 () Bool)

(assert (=> b!7641581 (=> (not res!3060711) (not e!4542124))))

(declare-fun isEmpty!41800 (List!73295) Bool)

(declare-fun tail!15260 (List!73295) List!73295)

(assert (=> b!7641581 (= res!3060711 (isEmpty!41800 (tail!15260 s!9605)))))

(declare-fun b!7641582 () Bool)

(declare-fun call!701379 () Bool)

(assert (=> b!7641582 (= e!4542127 (= lt!2660551 call!701379))))

(declare-fun b!7641583 () Bool)

(declare-fun derivativeStep!5920 (Regex!20444 C!41214) Regex!20444)

(declare-fun head!15720 (List!73295) C!41214)

(assert (=> b!7641583 (= e!4542129 (matchR!9945 (derivativeStep!5920 (regTwo!41401 r!14126) (head!15720 s!9605)) (tail!15260 s!9605)))))

(declare-fun bm!701374 () Bool)

(assert (=> bm!701374 (= call!701379 (isEmpty!41800 s!9605))))

(declare-fun b!7641584 () Bool)

(declare-fun res!3060717 () Bool)

(declare-fun e!4542126 () Bool)

(assert (=> b!7641584 (=> res!3060717 e!4542126)))

(assert (=> b!7641584 (= res!3060717 (not (isEmpty!41800 (tail!15260 s!9605))))))

(declare-fun d!2325202 () Bool)

(assert (=> d!2325202 e!4542127))

(declare-fun c!1407518 () Bool)

(assert (=> d!2325202 (= c!1407518 (is-EmptyExpr!20444 (regTwo!41401 r!14126)))))

(assert (=> d!2325202 (= lt!2660551 e!4542129)))

(declare-fun c!1407519 () Bool)

(assert (=> d!2325202 (= c!1407519 (isEmpty!41800 s!9605))))

(assert (=> d!2325202 (validRegex!10862 (regTwo!41401 r!14126))))

(assert (=> d!2325202 (= (matchR!9945 (regTwo!41401 r!14126) s!9605) lt!2660551)))

(declare-fun b!7641585 () Bool)

(assert (=> b!7641585 (= e!4542124 (= (head!15720 s!9605) (c!1407503 (regTwo!41401 r!14126))))))

(declare-fun b!7641586 () Bool)

(declare-fun res!3060713 () Bool)

(assert (=> b!7641586 (=> (not res!3060713) (not e!4542124))))

(assert (=> b!7641586 (= res!3060713 (not call!701379))))

(declare-fun b!7641587 () Bool)

(assert (=> b!7641587 (= e!4542126 (not (= (head!15720 s!9605) (c!1407503 (regTwo!41401 r!14126)))))))

(declare-fun b!7641588 () Bool)

(declare-fun res!3060712 () Bool)

(assert (=> b!7641588 (=> res!3060712 e!4542130)))

(assert (=> b!7641588 (= res!3060712 e!4542124)))

(declare-fun res!3060716 () Bool)

(assert (=> b!7641588 (=> (not res!3060716) (not e!4542124))))

(assert (=> b!7641588 (= res!3060716 lt!2660551)))

(declare-fun b!7641589 () Bool)

(assert (=> b!7641589 (= e!4542125 e!4542126)))

(declare-fun res!3060718 () Bool)

(assert (=> b!7641589 (=> res!3060718 e!4542126)))

(assert (=> b!7641589 (= res!3060718 call!701379)))

(assert (= (and d!2325202 c!1407519) b!7641578))

(assert (= (and d!2325202 (not c!1407519)) b!7641583))

(assert (= (and d!2325202 c!1407518) b!7641582))

(assert (= (and d!2325202 (not c!1407518)) b!7641579))

(assert (= (and b!7641579 c!1407517) b!7641576))

(assert (= (and b!7641579 (not c!1407517)) b!7641577))

(assert (= (and b!7641577 (not res!3060714)) b!7641588))

(assert (= (and b!7641588 res!3060716) b!7641586))

(assert (= (and b!7641586 res!3060713) b!7641581))

(assert (= (and b!7641581 res!3060711) b!7641585))

(assert (= (and b!7641588 (not res!3060712)) b!7641580))

(assert (= (and b!7641580 res!3060715) b!7641589))

(assert (= (and b!7641589 (not res!3060718)) b!7641584))

(assert (= (and b!7641584 (not res!3060717)) b!7641587))

(assert (= (or b!7641582 b!7641586 b!7641589) bm!701374))

(declare-fun m!8163130 () Bool)

(assert (=> b!7641585 m!8163130))

(declare-fun m!8163132 () Bool)

(assert (=> d!2325202 m!8163132))

(declare-fun m!8163134 () Bool)

(assert (=> d!2325202 m!8163134))

(declare-fun m!8163136 () Bool)

(assert (=> b!7641584 m!8163136))

(assert (=> b!7641584 m!8163136))

(declare-fun m!8163138 () Bool)

(assert (=> b!7641584 m!8163138))

(assert (=> b!7641583 m!8163130))

(assert (=> b!7641583 m!8163130))

(declare-fun m!8163140 () Bool)

(assert (=> b!7641583 m!8163140))

(assert (=> b!7641583 m!8163136))

(assert (=> b!7641583 m!8163140))

(assert (=> b!7641583 m!8163136))

(declare-fun m!8163144 () Bool)

(assert (=> b!7641583 m!8163144))

(assert (=> b!7641581 m!8163136))

(assert (=> b!7641581 m!8163136))

(assert (=> b!7641581 m!8163138))

(assert (=> bm!701374 m!8163132))

(assert (=> b!7641587 m!8163130))

(declare-fun m!8163152 () Bool)

(assert (=> b!7641578 m!8163152))

(assert (=> b!7641489 d!2325202))

(declare-fun d!2325206 () Bool)

(declare-fun res!3060748 () Bool)

(declare-fun e!4542172 () Bool)

(assert (=> d!2325206 (=> res!3060748 e!4542172)))

(assert (=> d!2325206 (= res!3060748 (is-ElementMatch!20444 (regOne!41401 r!14126)))))

(assert (=> d!2325206 (= (validRegex!10862 (regOne!41401 r!14126)) e!4542172)))

(declare-fun b!7641640 () Bool)

(declare-fun e!4542168 () Bool)

(declare-fun e!4542166 () Bool)

(assert (=> b!7641640 (= e!4542168 e!4542166)))

(declare-fun res!3060747 () Bool)

(assert (=> b!7641640 (=> (not res!3060747) (not e!4542166))))

(declare-fun call!701393 () Bool)

(assert (=> b!7641640 (= res!3060747 call!701393)))

(declare-fun b!7641641 () Bool)

(declare-fun e!4542171 () Bool)

(declare-fun e!4542169 () Bool)

(assert (=> b!7641641 (= e!4542171 e!4542169)))

(declare-fun c!1407531 () Bool)

(assert (=> b!7641641 (= c!1407531 (is-Union!20444 (regOne!41401 r!14126)))))

(declare-fun bm!701388 () Bool)

(declare-fun call!701395 () Bool)

(declare-fun call!701394 () Bool)

(assert (=> bm!701388 (= call!701395 call!701394)))

(declare-fun b!7641642 () Bool)

(declare-fun e!4542170 () Bool)

(assert (=> b!7641642 (= e!4542170 call!701394)))

(declare-fun bm!701389 () Bool)

(assert (=> bm!701389 (= call!701393 (validRegex!10862 (ite c!1407531 (regOne!41401 (regOne!41401 r!14126)) (regOne!41400 (regOne!41401 r!14126)))))))

(declare-fun b!7641643 () Bool)

(declare-fun e!4542167 () Bool)

(assert (=> b!7641643 (= e!4542167 call!701395)))

(declare-fun b!7641644 () Bool)

(assert (=> b!7641644 (= e!4542172 e!4542171)))

(declare-fun c!1407532 () Bool)

(assert (=> b!7641644 (= c!1407532 (is-Star!20444 (regOne!41401 r!14126)))))

(declare-fun b!7641645 () Bool)

(assert (=> b!7641645 (= e!4542171 e!4542170)))

(declare-fun res!3060750 () Bool)

(assert (=> b!7641645 (= res!3060750 (not (nullable!8949 (reg!20773 (regOne!41401 r!14126)))))))

(assert (=> b!7641645 (=> (not res!3060750) (not e!4542170))))

(declare-fun b!7641646 () Bool)

(declare-fun res!3060751 () Bool)

(assert (=> b!7641646 (=> (not res!3060751) (not e!4542167))))

(assert (=> b!7641646 (= res!3060751 call!701393)))

(assert (=> b!7641646 (= e!4542169 e!4542167)))

(declare-fun b!7641647 () Bool)

(assert (=> b!7641647 (= e!4542166 call!701395)))

(declare-fun bm!701390 () Bool)

(assert (=> bm!701390 (= call!701394 (validRegex!10862 (ite c!1407532 (reg!20773 (regOne!41401 r!14126)) (ite c!1407531 (regTwo!41401 (regOne!41401 r!14126)) (regTwo!41400 (regOne!41401 r!14126))))))))

(declare-fun b!7641648 () Bool)

(declare-fun res!3060749 () Bool)

(assert (=> b!7641648 (=> res!3060749 e!4542168)))

(assert (=> b!7641648 (= res!3060749 (not (is-Concat!29289 (regOne!41401 r!14126))))))

(assert (=> b!7641648 (= e!4542169 e!4542168)))

(assert (= (and d!2325206 (not res!3060748)) b!7641644))

(assert (= (and b!7641644 c!1407532) b!7641645))

(assert (= (and b!7641644 (not c!1407532)) b!7641641))

(assert (= (and b!7641645 res!3060750) b!7641642))

(assert (= (and b!7641641 c!1407531) b!7641646))

(assert (= (and b!7641641 (not c!1407531)) b!7641648))

(assert (= (and b!7641646 res!3060751) b!7641643))

(assert (= (and b!7641648 (not res!3060749)) b!7641640))

(assert (= (and b!7641640 res!3060747) b!7641647))

(assert (= (or b!7641646 b!7641640) bm!701389))

(assert (= (or b!7641643 b!7641647) bm!701388))

(assert (= (or b!7641642 bm!701388) bm!701390))

(declare-fun m!8163160 () Bool)

(assert (=> bm!701389 m!8163160))

(declare-fun m!8163162 () Bool)

(assert (=> b!7641645 m!8163162))

(declare-fun m!8163166 () Bool)

(assert (=> bm!701390 m!8163166))

(assert (=> b!7641484 d!2325206))

(declare-fun b!7641658 () Bool)

(declare-fun e!4542184 () Bool)

(declare-fun lt!2660553 () Bool)

(assert (=> b!7641658 (= e!4542184 (not lt!2660553))))

(declare-fun b!7641659 () Bool)

(declare-fun res!3060760 () Bool)

(declare-fun e!4542186 () Bool)

(assert (=> b!7641659 (=> res!3060760 e!4542186)))

(assert (=> b!7641659 (= res!3060760 (not (is-ElementMatch!20444 (regOne!41401 r!14126))))))

(assert (=> b!7641659 (= e!4542184 e!4542186)))

(declare-fun b!7641660 () Bool)

(declare-fun e!4542185 () Bool)

(assert (=> b!7641660 (= e!4542185 (nullable!8949 (regOne!41401 r!14126)))))

(declare-fun b!7641661 () Bool)

(declare-fun e!4542183 () Bool)

(assert (=> b!7641661 (= e!4542183 e!4542184)))

(declare-fun c!1407535 () Bool)

(assert (=> b!7641661 (= c!1407535 (is-EmptyLang!20444 (regOne!41401 r!14126)))))

(declare-fun b!7641662 () Bool)

(declare-fun e!4542181 () Bool)

(assert (=> b!7641662 (= e!4542186 e!4542181)))

(declare-fun res!3060761 () Bool)

(assert (=> b!7641662 (=> (not res!3060761) (not e!4542181))))

(assert (=> b!7641662 (= res!3060761 (not lt!2660553))))

(declare-fun b!7641663 () Bool)

(declare-fun res!3060757 () Bool)

(declare-fun e!4542180 () Bool)

(assert (=> b!7641663 (=> (not res!3060757) (not e!4542180))))

(assert (=> b!7641663 (= res!3060757 (isEmpty!41800 (tail!15260 s!9605)))))

(declare-fun b!7641664 () Bool)

(declare-fun call!701399 () Bool)

(assert (=> b!7641664 (= e!4542183 (= lt!2660553 call!701399))))

(declare-fun b!7641665 () Bool)

(assert (=> b!7641665 (= e!4542185 (matchR!9945 (derivativeStep!5920 (regOne!41401 r!14126) (head!15720 s!9605)) (tail!15260 s!9605)))))

(declare-fun bm!701394 () Bool)

(assert (=> bm!701394 (= call!701399 (isEmpty!41800 s!9605))))

(declare-fun b!7641666 () Bool)

(declare-fun res!3060763 () Bool)

(declare-fun e!4542182 () Bool)

(assert (=> b!7641666 (=> res!3060763 e!4542182)))

(assert (=> b!7641666 (= res!3060763 (not (isEmpty!41800 (tail!15260 s!9605))))))

(declare-fun d!2325210 () Bool)

(assert (=> d!2325210 e!4542183))

(declare-fun c!1407536 () Bool)

(assert (=> d!2325210 (= c!1407536 (is-EmptyExpr!20444 (regOne!41401 r!14126)))))

(assert (=> d!2325210 (= lt!2660553 e!4542185)))

(declare-fun c!1407537 () Bool)

(assert (=> d!2325210 (= c!1407537 (isEmpty!41800 s!9605))))

(assert (=> d!2325210 (validRegex!10862 (regOne!41401 r!14126))))

(assert (=> d!2325210 (= (matchR!9945 (regOne!41401 r!14126) s!9605) lt!2660553)))

(declare-fun b!7641667 () Bool)

(assert (=> b!7641667 (= e!4542180 (= (head!15720 s!9605) (c!1407503 (regOne!41401 r!14126))))))

(declare-fun b!7641668 () Bool)

(declare-fun res!3060759 () Bool)

(assert (=> b!7641668 (=> (not res!3060759) (not e!4542180))))

(assert (=> b!7641668 (= res!3060759 (not call!701399))))

(declare-fun b!7641669 () Bool)

(assert (=> b!7641669 (= e!4542182 (not (= (head!15720 s!9605) (c!1407503 (regOne!41401 r!14126)))))))

(declare-fun b!7641670 () Bool)

(declare-fun res!3060758 () Bool)

(assert (=> b!7641670 (=> res!3060758 e!4542186)))

(assert (=> b!7641670 (= res!3060758 e!4542180)))

(declare-fun res!3060762 () Bool)

(assert (=> b!7641670 (=> (not res!3060762) (not e!4542180))))

(assert (=> b!7641670 (= res!3060762 lt!2660553)))

(declare-fun b!7641671 () Bool)

(assert (=> b!7641671 (= e!4542181 e!4542182)))

(declare-fun res!3060764 () Bool)

(assert (=> b!7641671 (=> res!3060764 e!4542182)))

(assert (=> b!7641671 (= res!3060764 call!701399)))

(assert (= (and d!2325210 c!1407537) b!7641660))

(assert (= (and d!2325210 (not c!1407537)) b!7641665))

(assert (= (and d!2325210 c!1407536) b!7641664))

(assert (= (and d!2325210 (not c!1407536)) b!7641661))

(assert (= (and b!7641661 c!1407535) b!7641658))

(assert (= (and b!7641661 (not c!1407535)) b!7641659))

(assert (= (and b!7641659 (not res!3060760)) b!7641670))

(assert (= (and b!7641670 res!3060762) b!7641668))

(assert (= (and b!7641668 res!3060759) b!7641663))

(assert (= (and b!7641663 res!3060757) b!7641667))

(assert (= (and b!7641670 (not res!3060758)) b!7641662))

(assert (= (and b!7641662 res!3060761) b!7641671))

(assert (= (and b!7641671 (not res!3060764)) b!7641666))

(assert (= (and b!7641666 (not res!3060763)) b!7641669))

(assert (= (or b!7641664 b!7641668 b!7641671) bm!701394))

(assert (=> b!7641667 m!8163130))

(assert (=> d!2325210 m!8163132))

(assert (=> d!2325210 m!8163096))

(assert (=> b!7641666 m!8163136))

(assert (=> b!7641666 m!8163136))

(assert (=> b!7641666 m!8163138))

(assert (=> b!7641665 m!8163130))

(assert (=> b!7641665 m!8163130))

(declare-fun m!8163172 () Bool)

(assert (=> b!7641665 m!8163172))

(assert (=> b!7641665 m!8163136))

(assert (=> b!7641665 m!8163172))

(assert (=> b!7641665 m!8163136))

(declare-fun m!8163176 () Bool)

(assert (=> b!7641665 m!8163176))

(assert (=> b!7641663 m!8163136))

(assert (=> b!7641663 m!8163136))

(assert (=> b!7641663 m!8163138))

(assert (=> bm!701394 m!8163132))

(assert (=> b!7641669 m!8163130))

(declare-fun m!8163180 () Bool)

(assert (=> b!7641660 m!8163180))

(assert (=> b!7641484 d!2325210))

(declare-fun d!2325214 () Bool)

(declare-fun e!4542199 () Bool)

(assert (=> d!2325214 e!4542199))

(declare-fun res!3060777 () Bool)

(assert (=> d!2325214 (=> res!3060777 e!4542199)))

(assert (=> d!2325214 (= res!3060777 (matchR!9945 (regOne!41401 r!14126) s!9605))))

(declare-fun lt!2660557 () Unit!167864)

(declare-fun choose!59010 (Regex!20444 Regex!20444 List!73295) Unit!167864)

(assert (=> d!2325214 (= lt!2660557 (choose!59010 (regOne!41401 r!14126) (regTwo!41401 r!14126) s!9605))))

(declare-fun e!4542198 () Bool)

(assert (=> d!2325214 e!4542198))

(declare-fun res!3060778 () Bool)

(assert (=> d!2325214 (=> (not res!3060778) (not e!4542198))))

(assert (=> d!2325214 (= res!3060778 (validRegex!10862 (regOne!41401 r!14126)))))

(assert (=> d!2325214 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!347 (regOne!41401 r!14126) (regTwo!41401 r!14126) s!9605) lt!2660557)))

(declare-fun b!7641690 () Bool)

(assert (=> b!7641690 (= e!4542198 (validRegex!10862 (regTwo!41401 r!14126)))))

(declare-fun b!7641691 () Bool)

(assert (=> b!7641691 (= e!4542199 (matchR!9945 (regTwo!41401 r!14126) s!9605))))

(assert (= (and d!2325214 res!3060778) b!7641690))

(assert (= (and d!2325214 (not res!3060777)) b!7641691))

(assert (=> d!2325214 m!8163098))

(declare-fun m!8163186 () Bool)

(assert (=> d!2325214 m!8163186))

(assert (=> d!2325214 m!8163096))

(assert (=> b!7641690 m!8163134))

(assert (=> b!7641691 m!8163102))

(assert (=> b!7641484 d!2325214))

(declare-fun b!7641794 () Bool)

(declare-fun e!4542264 () Int)

(declare-fun call!701447 () Int)

(assert (=> b!7641794 (= e!4542264 (+ 1 call!701447))))

(declare-fun b!7641795 () Bool)

(declare-fun e!4542266 () Int)

(declare-fun e!4542267 () Int)

(assert (=> b!7641795 (= e!4542266 e!4542267)))

(declare-fun c!1407584 () Bool)

(assert (=> b!7641795 (= c!1407584 (is-Star!20444 (regOne!41401 r!14126)))))

(declare-fun bm!701438 () Bool)

(declare-fun call!701448 () Int)

(declare-fun c!1407589 () Bool)

(assert (=> bm!701438 (= call!701448 (regexDepth!480 (ite c!1407589 (regTwo!41401 (regOne!41401 r!14126)) (regTwo!41400 (regOne!41401 r!14126)))))))

(declare-fun b!7641796 () Bool)

(declare-fun e!4542260 () Bool)

(declare-fun lt!2660564 () Int)

(declare-fun call!701445 () Int)

(assert (=> b!7641796 (= e!4542260 (> lt!2660564 call!701445))))

(declare-fun b!7641797 () Bool)

(assert (=> b!7641797 (= e!4542264 1)))

(declare-fun bm!701439 () Bool)

(declare-fun call!701443 () Int)

(declare-fun call!701449 () Int)

(declare-fun c!1407588 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!701439 (= call!701447 (maxBigInt!0 (ite c!1407588 call!701443 call!701449) (ite c!1407588 call!701449 call!701443)))))

(declare-fun b!7641798 () Bool)

(declare-fun res!3060798 () Bool)

(declare-fun e!4542262 () Bool)

(assert (=> b!7641798 (=> (not res!3060798) (not e!4542262))))

(assert (=> b!7641798 (= res!3060798 (> lt!2660564 call!701445))))

(declare-fun e!4542261 () Bool)

(assert (=> b!7641798 (= e!4542261 e!4542262)))

(declare-fun bm!701440 () Bool)

(declare-fun call!701444 () Int)

(declare-fun c!1407583 () Bool)

(assert (=> bm!701440 (= call!701444 (regexDepth!480 (ite c!1407589 (regOne!41401 (regOne!41401 r!14126)) (ite c!1407583 (regOne!41400 (regOne!41401 r!14126)) (reg!20773 (regOne!41401 r!14126))))))))

(declare-fun b!7641799 () Bool)

(assert (=> b!7641799 (= c!1407588 (is-Union!20444 (regOne!41401 r!14126)))))

(declare-fun e!4542265 () Int)

(assert (=> b!7641799 (= e!4542267 e!4542265)))

(declare-fun bm!701441 () Bool)

(declare-fun call!701446 () Int)

(assert (=> bm!701441 (= call!701446 (regexDepth!480 (ite c!1407584 (reg!20773 (regOne!41401 r!14126)) (ite c!1407588 (regOne!41401 (regOne!41401 r!14126)) (regTwo!41400 (regOne!41401 r!14126))))))))

(declare-fun bm!701442 () Bool)

(assert (=> bm!701442 (= call!701443 call!701446)))

(declare-fun b!7641800 () Bool)

(declare-fun c!1407585 () Bool)

(assert (=> b!7641800 (= c!1407585 (is-Star!20444 (regOne!41401 r!14126)))))

(assert (=> b!7641800 (= e!4542261 e!4542260)))

(declare-fun b!7641801 () Bool)

(assert (=> b!7641801 (= e!4542265 (+ 1 call!701447))))

(declare-fun b!7641802 () Bool)

(declare-fun e!4542268 () Bool)

(assert (=> b!7641802 (= e!4542268 e!4542261)))

(assert (=> b!7641802 (= c!1407583 (is-Concat!29289 (regOne!41401 r!14126)))))

(declare-fun b!7641803 () Bool)

(declare-fun e!4542269 () Bool)

(assert (=> b!7641803 (= e!4542268 e!4542269)))

(declare-fun res!3060799 () Bool)

(assert (=> b!7641803 (= res!3060799 (> lt!2660564 call!701444))))

(assert (=> b!7641803 (=> (not res!3060799) (not e!4542269))))

(declare-fun b!7641804 () Bool)

(assert (=> b!7641804 (= e!4542267 (+ 1 call!701446))))

(declare-fun d!2325218 () Bool)

(declare-fun e!4542263 () Bool)

(assert (=> d!2325218 e!4542263))

(declare-fun res!3060797 () Bool)

(assert (=> d!2325218 (=> (not res!3060797) (not e!4542263))))

(assert (=> d!2325218 (= res!3060797 (> lt!2660564 0))))

(assert (=> d!2325218 (= lt!2660564 e!4542266)))

(declare-fun c!1407586 () Bool)

(assert (=> d!2325218 (= c!1407586 (is-ElementMatch!20444 (regOne!41401 r!14126)))))

(assert (=> d!2325218 (= (regexDepth!480 (regOne!41401 r!14126)) lt!2660564)))

(declare-fun b!7641805 () Bool)

(assert (=> b!7641805 (= e!4542262 (> lt!2660564 call!701448))))

(declare-fun bm!701443 () Bool)

(assert (=> bm!701443 (= call!701449 (regexDepth!480 (ite c!1407588 (regTwo!41401 (regOne!41401 r!14126)) (regOne!41400 (regOne!41401 r!14126)))))))

(declare-fun bm!701444 () Bool)

(assert (=> bm!701444 (= call!701445 call!701444)))

(declare-fun b!7641806 () Bool)

(assert (=> b!7641806 (= e!4542269 (> lt!2660564 call!701448))))

(declare-fun b!7641807 () Bool)

(assert (=> b!7641807 (= e!4542266 1)))

(declare-fun b!7641808 () Bool)

(assert (=> b!7641808 (= e!4542260 (= lt!2660564 1))))

(declare-fun b!7641809 () Bool)

(assert (=> b!7641809 (= e!4542265 e!4542264)))

(declare-fun c!1407587 () Bool)

(assert (=> b!7641809 (= c!1407587 (is-Concat!29289 (regOne!41401 r!14126)))))

(declare-fun b!7641810 () Bool)

(assert (=> b!7641810 (= e!4542263 e!4542268)))

(assert (=> b!7641810 (= c!1407589 (is-Union!20444 (regOne!41401 r!14126)))))

(assert (= (and d!2325218 c!1407586) b!7641807))

(assert (= (and d!2325218 (not c!1407586)) b!7641795))

(assert (= (and b!7641795 c!1407584) b!7641804))

(assert (= (and b!7641795 (not c!1407584)) b!7641799))

(assert (= (and b!7641799 c!1407588) b!7641801))

(assert (= (and b!7641799 (not c!1407588)) b!7641809))

(assert (= (and b!7641809 c!1407587) b!7641794))

(assert (= (and b!7641809 (not c!1407587)) b!7641797))

(assert (= (or b!7641801 b!7641794) bm!701442))

(assert (= (or b!7641801 b!7641794) bm!701443))

(assert (= (or b!7641801 b!7641794) bm!701439))

(assert (= (or b!7641804 bm!701442) bm!701441))

(assert (= (and d!2325218 res!3060797) b!7641810))

(assert (= (and b!7641810 c!1407589) b!7641803))

(assert (= (and b!7641810 (not c!1407589)) b!7641802))

(assert (= (and b!7641803 res!3060799) b!7641806))

(assert (= (and b!7641802 c!1407583) b!7641798))

(assert (= (and b!7641802 (not c!1407583)) b!7641800))

(assert (= (and b!7641798 res!3060798) b!7641805))

(assert (= (and b!7641800 c!1407585) b!7641796))

(assert (= (and b!7641800 (not c!1407585)) b!7641808))

(assert (= (or b!7641798 b!7641796) bm!701444))

(assert (= (or b!7641803 bm!701444) bm!701440))

(assert (= (or b!7641806 b!7641805) bm!701438))

(declare-fun m!8163208 () Bool)

(assert (=> bm!701438 m!8163208))

(declare-fun m!8163210 () Bool)

(assert (=> bm!701443 m!8163210))

(declare-fun m!8163212 () Bool)

(assert (=> bm!701440 m!8163212))

(declare-fun m!8163214 () Bool)

(assert (=> bm!701439 m!8163214))

(declare-fun m!8163216 () Bool)

(assert (=> bm!701441 m!8163216))

(assert (=> b!7641481 d!2325218))

(declare-fun b!7641815 () Bool)

(declare-fun e!4542276 () Int)

(declare-fun call!701454 () Int)

(assert (=> b!7641815 (= e!4542276 (+ 1 call!701454))))

(declare-fun b!7641816 () Bool)

(declare-fun e!4542278 () Int)

(declare-fun e!4542279 () Int)

(assert (=> b!7641816 (= e!4542278 e!4542279)))

(declare-fun c!1407593 () Bool)

(assert (=> b!7641816 (= c!1407593 (is-Star!20444 r!14126))))

(declare-fun bm!701445 () Bool)

(declare-fun call!701455 () Int)

(declare-fun c!1407598 () Bool)

(assert (=> bm!701445 (= call!701455 (regexDepth!480 (ite c!1407598 (regTwo!41401 r!14126) (regTwo!41400 r!14126))))))

(declare-fun b!7641817 () Bool)

(declare-fun e!4542272 () Bool)

(declare-fun lt!2660567 () Int)

(declare-fun call!701452 () Int)

(assert (=> b!7641817 (= e!4542272 (> lt!2660567 call!701452))))

(declare-fun b!7641818 () Bool)

(assert (=> b!7641818 (= e!4542276 1)))

(declare-fun call!701450 () Int)

(declare-fun call!701456 () Int)

(declare-fun c!1407597 () Bool)

(declare-fun bm!701446 () Bool)

(assert (=> bm!701446 (= call!701454 (maxBigInt!0 (ite c!1407597 call!701450 call!701456) (ite c!1407597 call!701456 call!701450)))))

(declare-fun b!7641819 () Bool)

(declare-fun res!3060801 () Bool)

(declare-fun e!4542274 () Bool)

(assert (=> b!7641819 (=> (not res!3060801) (not e!4542274))))

(assert (=> b!7641819 (= res!3060801 (> lt!2660567 call!701452))))

(declare-fun e!4542273 () Bool)

(assert (=> b!7641819 (= e!4542273 e!4542274)))

(declare-fun bm!701447 () Bool)

(declare-fun c!1407592 () Bool)

(declare-fun call!701451 () Int)

(assert (=> bm!701447 (= call!701451 (regexDepth!480 (ite c!1407598 (regOne!41401 r!14126) (ite c!1407592 (regOne!41400 r!14126) (reg!20773 r!14126)))))))

(declare-fun b!7641820 () Bool)

(assert (=> b!7641820 (= c!1407597 (is-Union!20444 r!14126))))

(declare-fun e!4542277 () Int)

(assert (=> b!7641820 (= e!4542279 e!4542277)))

(declare-fun bm!701448 () Bool)

(declare-fun call!701453 () Int)

(assert (=> bm!701448 (= call!701453 (regexDepth!480 (ite c!1407593 (reg!20773 r!14126) (ite c!1407597 (regOne!41401 r!14126) (regTwo!41400 r!14126)))))))

(declare-fun bm!701449 () Bool)

(assert (=> bm!701449 (= call!701450 call!701453)))

(declare-fun b!7641821 () Bool)

(declare-fun c!1407594 () Bool)

(assert (=> b!7641821 (= c!1407594 (is-Star!20444 r!14126))))

(assert (=> b!7641821 (= e!4542273 e!4542272)))

(declare-fun b!7641822 () Bool)

(assert (=> b!7641822 (= e!4542277 (+ 1 call!701454))))

(declare-fun b!7641823 () Bool)

(declare-fun e!4542280 () Bool)

(assert (=> b!7641823 (= e!4542280 e!4542273)))

(assert (=> b!7641823 (= c!1407592 (is-Concat!29289 r!14126))))

(declare-fun b!7641824 () Bool)

(declare-fun e!4542281 () Bool)

(assert (=> b!7641824 (= e!4542280 e!4542281)))

(declare-fun res!3060802 () Bool)

(assert (=> b!7641824 (= res!3060802 (> lt!2660567 call!701451))))

(assert (=> b!7641824 (=> (not res!3060802) (not e!4542281))))

(declare-fun b!7641825 () Bool)

(assert (=> b!7641825 (= e!4542279 (+ 1 call!701453))))

(declare-fun d!2325224 () Bool)

(declare-fun e!4542275 () Bool)

(assert (=> d!2325224 e!4542275))

(declare-fun res!3060800 () Bool)

(assert (=> d!2325224 (=> (not res!3060800) (not e!4542275))))

(assert (=> d!2325224 (= res!3060800 (> lt!2660567 0))))

(assert (=> d!2325224 (= lt!2660567 e!4542278)))

(declare-fun c!1407595 () Bool)

(assert (=> d!2325224 (= c!1407595 (is-ElementMatch!20444 r!14126))))

(assert (=> d!2325224 (= (regexDepth!480 r!14126) lt!2660567)))

(declare-fun b!7641826 () Bool)

(assert (=> b!7641826 (= e!4542274 (> lt!2660567 call!701455))))

(declare-fun bm!701450 () Bool)

(assert (=> bm!701450 (= call!701456 (regexDepth!480 (ite c!1407597 (regTwo!41401 r!14126) (regOne!41400 r!14126))))))

(declare-fun bm!701451 () Bool)

(assert (=> bm!701451 (= call!701452 call!701451)))

(declare-fun b!7641827 () Bool)

(assert (=> b!7641827 (= e!4542281 (> lt!2660567 call!701455))))

(declare-fun b!7641828 () Bool)

(assert (=> b!7641828 (= e!4542278 1)))

(declare-fun b!7641829 () Bool)

(assert (=> b!7641829 (= e!4542272 (= lt!2660567 1))))

(declare-fun b!7641830 () Bool)

(assert (=> b!7641830 (= e!4542277 e!4542276)))

(declare-fun c!1407596 () Bool)

(assert (=> b!7641830 (= c!1407596 (is-Concat!29289 r!14126))))

(declare-fun b!7641831 () Bool)

(assert (=> b!7641831 (= e!4542275 e!4542280)))

(assert (=> b!7641831 (= c!1407598 (is-Union!20444 r!14126))))

(assert (= (and d!2325224 c!1407595) b!7641828))

(assert (= (and d!2325224 (not c!1407595)) b!7641816))

(assert (= (and b!7641816 c!1407593) b!7641825))

(assert (= (and b!7641816 (not c!1407593)) b!7641820))

(assert (= (and b!7641820 c!1407597) b!7641822))

(assert (= (and b!7641820 (not c!1407597)) b!7641830))

(assert (= (and b!7641830 c!1407596) b!7641815))

(assert (= (and b!7641830 (not c!1407596)) b!7641818))

(assert (= (or b!7641822 b!7641815) bm!701449))

(assert (= (or b!7641822 b!7641815) bm!701450))

(assert (= (or b!7641822 b!7641815) bm!701446))

(assert (= (or b!7641825 bm!701449) bm!701448))

(assert (= (and d!2325224 res!3060800) b!7641831))

(assert (= (and b!7641831 c!1407598) b!7641824))

(assert (= (and b!7641831 (not c!1407598)) b!7641823))

(assert (= (and b!7641824 res!3060802) b!7641827))

(assert (= (and b!7641823 c!1407592) b!7641819))

(assert (= (and b!7641823 (not c!1407592)) b!7641821))

(assert (= (and b!7641819 res!3060801) b!7641826))

(assert (= (and b!7641821 c!1407594) b!7641817))

(assert (= (and b!7641821 (not c!1407594)) b!7641829))

(assert (= (or b!7641819 b!7641817) bm!701451))

(assert (= (or b!7641824 bm!701451) bm!701447))

(assert (= (or b!7641827 b!7641826) bm!701445))

(declare-fun m!8163220 () Bool)

(assert (=> bm!701445 m!8163220))

(declare-fun m!8163222 () Bool)

(assert (=> bm!701450 m!8163222))

(declare-fun m!8163224 () Bool)

(assert (=> bm!701447 m!8163224))

(declare-fun m!8163226 () Bool)

(assert (=> bm!701446 m!8163226))

(declare-fun m!8163228 () Bool)

(assert (=> bm!701448 m!8163228))

(assert (=> b!7641481 d!2325224))

(declare-fun d!2325228 () Bool)

(declare-fun lt!2660572 () Int)

(assert (=> d!2325228 (>= lt!2660572 0)))

(declare-fun e!4542299 () Int)

(assert (=> d!2325228 (= lt!2660572 e!4542299)))

(declare-fun c!1407607 () Bool)

(assert (=> d!2325228 (= c!1407607 (is-Nil!73171 s!9605))))

(assert (=> d!2325228 (= (size!42586 s!9605) lt!2660572)))

(declare-fun b!7641861 () Bool)

(assert (=> b!7641861 (= e!4542299 0)))

(declare-fun b!7641862 () Bool)

(assert (=> b!7641862 (= e!4542299 (+ 1 (size!42586 (t!388030 s!9605))))))

(assert (= (and d!2325228 c!1407607) b!7641861))

(assert (= (and d!2325228 (not c!1407607)) b!7641862))

(declare-fun m!8163242 () Bool)

(assert (=> b!7641862 m!8163242))

(assert (=> b!7641481 d!2325228))

(declare-fun d!2325234 () Bool)

(declare-fun res!3060817 () Bool)

(declare-fun e!4542306 () Bool)

(assert (=> d!2325234 (=> res!3060817 e!4542306)))

(assert (=> d!2325234 (= res!3060817 (is-ElementMatch!20444 r!14126))))

(assert (=> d!2325234 (= (validRegex!10862 r!14126) e!4542306)))

(declare-fun b!7641863 () Bool)

(declare-fun e!4542302 () Bool)

(declare-fun e!4542300 () Bool)

(assert (=> b!7641863 (= e!4542302 e!4542300)))

(declare-fun res!3060816 () Bool)

(assert (=> b!7641863 (=> (not res!3060816) (not e!4542300))))

(declare-fun call!701461 () Bool)

(assert (=> b!7641863 (= res!3060816 call!701461)))

(declare-fun b!7641864 () Bool)

(declare-fun e!4542305 () Bool)

(declare-fun e!4542303 () Bool)

(assert (=> b!7641864 (= e!4542305 e!4542303)))

(declare-fun c!1407608 () Bool)

(assert (=> b!7641864 (= c!1407608 (is-Union!20444 r!14126))))

(declare-fun bm!701456 () Bool)

(declare-fun call!701463 () Bool)

(declare-fun call!701462 () Bool)

(assert (=> bm!701456 (= call!701463 call!701462)))

(declare-fun b!7641865 () Bool)

(declare-fun e!4542304 () Bool)

(assert (=> b!7641865 (= e!4542304 call!701462)))

(declare-fun bm!701457 () Bool)

(assert (=> bm!701457 (= call!701461 (validRegex!10862 (ite c!1407608 (regOne!41401 r!14126) (regOne!41400 r!14126))))))

(declare-fun b!7641866 () Bool)

(declare-fun e!4542301 () Bool)

(assert (=> b!7641866 (= e!4542301 call!701463)))

(declare-fun b!7641867 () Bool)

(assert (=> b!7641867 (= e!4542306 e!4542305)))

(declare-fun c!1407609 () Bool)

(assert (=> b!7641867 (= c!1407609 (is-Star!20444 r!14126))))

(declare-fun b!7641868 () Bool)

(assert (=> b!7641868 (= e!4542305 e!4542304)))

(declare-fun res!3060819 () Bool)

(assert (=> b!7641868 (= res!3060819 (not (nullable!8949 (reg!20773 r!14126))))))

(assert (=> b!7641868 (=> (not res!3060819) (not e!4542304))))

(declare-fun b!7641869 () Bool)

(declare-fun res!3060820 () Bool)

(assert (=> b!7641869 (=> (not res!3060820) (not e!4542301))))

(assert (=> b!7641869 (= res!3060820 call!701461)))

(assert (=> b!7641869 (= e!4542303 e!4542301)))

(declare-fun b!7641870 () Bool)

(assert (=> b!7641870 (= e!4542300 call!701463)))

(declare-fun bm!701458 () Bool)

(assert (=> bm!701458 (= call!701462 (validRegex!10862 (ite c!1407609 (reg!20773 r!14126) (ite c!1407608 (regTwo!41401 r!14126) (regTwo!41400 r!14126)))))))

(declare-fun b!7641871 () Bool)

(declare-fun res!3060818 () Bool)

(assert (=> b!7641871 (=> res!3060818 e!4542302)))

(assert (=> b!7641871 (= res!3060818 (not (is-Concat!29289 r!14126)))))

(assert (=> b!7641871 (= e!4542303 e!4542302)))

(assert (= (and d!2325234 (not res!3060817)) b!7641867))

(assert (= (and b!7641867 c!1407609) b!7641868))

(assert (= (and b!7641867 (not c!1407609)) b!7641864))

(assert (= (and b!7641868 res!3060819) b!7641865))

(assert (= (and b!7641864 c!1407608) b!7641869))

(assert (= (and b!7641864 (not c!1407608)) b!7641871))

(assert (= (and b!7641869 res!3060820) b!7641866))

(assert (= (and b!7641871 (not res!3060818)) b!7641863))

(assert (= (and b!7641863 res!3060816) b!7641870))

(assert (= (or b!7641869 b!7641863) bm!701457))

(assert (= (or b!7641866 b!7641870) bm!701456))

(assert (= (or b!7641865 bm!701456) bm!701458))

(declare-fun m!8163244 () Bool)

(assert (=> bm!701457 m!8163244))

(declare-fun m!8163246 () Bool)

(assert (=> b!7641868 m!8163246))

(declare-fun m!8163248 () Bool)

(assert (=> bm!701458 m!8163248))

(assert (=> start!735578 d!2325234))

(declare-fun b!7641872 () Bool)

(declare-fun e!4542311 () Bool)

(declare-fun lt!2660573 () Bool)

(assert (=> b!7641872 (= e!4542311 (not lt!2660573))))

(declare-fun b!7641873 () Bool)

(declare-fun res!3060824 () Bool)

(declare-fun e!4542313 () Bool)

(assert (=> b!7641873 (=> res!3060824 e!4542313)))

(assert (=> b!7641873 (= res!3060824 (not (is-ElementMatch!20444 r!14126)))))

(assert (=> b!7641873 (= e!4542311 e!4542313)))

(declare-fun b!7641874 () Bool)

(declare-fun e!4542312 () Bool)

(assert (=> b!7641874 (= e!4542312 (nullable!8949 r!14126))))

(declare-fun b!7641875 () Bool)

(declare-fun e!4542310 () Bool)

(assert (=> b!7641875 (= e!4542310 e!4542311)))

(declare-fun c!1407610 () Bool)

(assert (=> b!7641875 (= c!1407610 (is-EmptyLang!20444 r!14126))))

(declare-fun b!7641876 () Bool)

(declare-fun e!4542308 () Bool)

(assert (=> b!7641876 (= e!4542313 e!4542308)))

(declare-fun res!3060825 () Bool)

(assert (=> b!7641876 (=> (not res!3060825) (not e!4542308))))

(assert (=> b!7641876 (= res!3060825 (not lt!2660573))))

(declare-fun b!7641877 () Bool)

(declare-fun res!3060821 () Bool)

(declare-fun e!4542307 () Bool)

(assert (=> b!7641877 (=> (not res!3060821) (not e!4542307))))

(assert (=> b!7641877 (= res!3060821 (isEmpty!41800 (tail!15260 s!9605)))))

(declare-fun b!7641878 () Bool)

(declare-fun call!701464 () Bool)

(assert (=> b!7641878 (= e!4542310 (= lt!2660573 call!701464))))

(declare-fun b!7641879 () Bool)

(assert (=> b!7641879 (= e!4542312 (matchR!9945 (derivativeStep!5920 r!14126 (head!15720 s!9605)) (tail!15260 s!9605)))))

(declare-fun bm!701459 () Bool)

(assert (=> bm!701459 (= call!701464 (isEmpty!41800 s!9605))))

(declare-fun b!7641880 () Bool)

(declare-fun res!3060827 () Bool)

(declare-fun e!4542309 () Bool)

(assert (=> b!7641880 (=> res!3060827 e!4542309)))

(assert (=> b!7641880 (= res!3060827 (not (isEmpty!41800 (tail!15260 s!9605))))))

(declare-fun d!2325236 () Bool)

(assert (=> d!2325236 e!4542310))

(declare-fun c!1407611 () Bool)

(assert (=> d!2325236 (= c!1407611 (is-EmptyExpr!20444 r!14126))))

(assert (=> d!2325236 (= lt!2660573 e!4542312)))

(declare-fun c!1407612 () Bool)

(assert (=> d!2325236 (= c!1407612 (isEmpty!41800 s!9605))))

(assert (=> d!2325236 (validRegex!10862 r!14126)))

(assert (=> d!2325236 (= (matchR!9945 r!14126 s!9605) lt!2660573)))

(declare-fun b!7641881 () Bool)

(assert (=> b!7641881 (= e!4542307 (= (head!15720 s!9605) (c!1407503 r!14126)))))

(declare-fun b!7641882 () Bool)

(declare-fun res!3060823 () Bool)

(assert (=> b!7641882 (=> (not res!3060823) (not e!4542307))))

(assert (=> b!7641882 (= res!3060823 (not call!701464))))

(declare-fun b!7641883 () Bool)

(assert (=> b!7641883 (= e!4542309 (not (= (head!15720 s!9605) (c!1407503 r!14126))))))

(declare-fun b!7641884 () Bool)

(declare-fun res!3060822 () Bool)

(assert (=> b!7641884 (=> res!3060822 e!4542313)))

(assert (=> b!7641884 (= res!3060822 e!4542307)))

(declare-fun res!3060826 () Bool)

(assert (=> b!7641884 (=> (not res!3060826) (not e!4542307))))

(assert (=> b!7641884 (= res!3060826 lt!2660573)))

(declare-fun b!7641885 () Bool)

(assert (=> b!7641885 (= e!4542308 e!4542309)))

(declare-fun res!3060828 () Bool)

(assert (=> b!7641885 (=> res!3060828 e!4542309)))

(assert (=> b!7641885 (= res!3060828 call!701464)))

(assert (= (and d!2325236 c!1407612) b!7641874))

(assert (= (and d!2325236 (not c!1407612)) b!7641879))

(assert (= (and d!2325236 c!1407611) b!7641878))

(assert (= (and d!2325236 (not c!1407611)) b!7641875))

(assert (= (and b!7641875 c!1407610) b!7641872))

(assert (= (and b!7641875 (not c!1407610)) b!7641873))

(assert (= (and b!7641873 (not res!3060824)) b!7641884))

(assert (= (and b!7641884 res!3060826) b!7641882))

(assert (= (and b!7641882 res!3060823) b!7641877))

(assert (= (and b!7641877 res!3060821) b!7641881))

(assert (= (and b!7641884 (not res!3060822)) b!7641876))

(assert (= (and b!7641876 res!3060825) b!7641885))

(assert (= (and b!7641885 (not res!3060828)) b!7641880))

(assert (= (and b!7641880 (not res!3060827)) b!7641883))

(assert (= (or b!7641878 b!7641882 b!7641885) bm!701459))

(assert (=> b!7641881 m!8163130))

(assert (=> d!2325236 m!8163132))

(assert (=> d!2325236 m!8163094))

(assert (=> b!7641880 m!8163136))

(assert (=> b!7641880 m!8163136))

(assert (=> b!7641880 m!8163138))

(assert (=> b!7641879 m!8163130))

(assert (=> b!7641879 m!8163130))

(declare-fun m!8163250 () Bool)

(assert (=> b!7641879 m!8163250))

(assert (=> b!7641879 m!8163136))

(assert (=> b!7641879 m!8163250))

(assert (=> b!7641879 m!8163136))

(declare-fun m!8163252 () Bool)

(assert (=> b!7641879 m!8163252))

(assert (=> b!7641877 m!8163136))

(assert (=> b!7641877 m!8163136))

(assert (=> b!7641877 m!8163138))

(assert (=> bm!701459 m!8163132))

(assert (=> b!7641883 m!8163130))

(declare-fun m!8163254 () Bool)

(assert (=> b!7641874 m!8163254))

(assert (=> b!7641483 d!2325236))

(declare-fun b!7641890 () Bool)

(declare-fun e!4542316 () Bool)

(declare-fun tp!2230744 () Bool)

(assert (=> b!7641890 (= e!4542316 (and tp_is_empty!51243 tp!2230744))))

(assert (=> b!7641486 (= tp!2230719 e!4542316)))

(assert (= (and b!7641486 (is-Cons!73171 (t!388030 s!9605))) b!7641890))

(declare-fun b!7641908 () Bool)

(declare-fun e!4542323 () Bool)

(declare-fun tp!2230755 () Bool)

(declare-fun tp!2230756 () Bool)

(assert (=> b!7641908 (= e!4542323 (and tp!2230755 tp!2230756))))

(declare-fun b!7641906 () Bool)

(declare-fun tp!2230759 () Bool)

(declare-fun tp!2230757 () Bool)

(assert (=> b!7641906 (= e!4542323 (and tp!2230759 tp!2230757))))

(declare-fun b!7641907 () Bool)

(declare-fun tp!2230758 () Bool)

(assert (=> b!7641907 (= e!4542323 tp!2230758)))

(declare-fun b!7641905 () Bool)

(assert (=> b!7641905 (= e!4542323 tp_is_empty!51243)))

(assert (=> b!7641485 (= tp!2230723 e!4542323)))

(assert (= (and b!7641485 (is-ElementMatch!20444 (regOne!41400 r!14126))) b!7641905))

(assert (= (and b!7641485 (is-Concat!29289 (regOne!41400 r!14126))) b!7641906))

(assert (= (and b!7641485 (is-Star!20444 (regOne!41400 r!14126))) b!7641907))

(assert (= (and b!7641485 (is-Union!20444 (regOne!41400 r!14126))) b!7641908))

(declare-fun b!7641912 () Bool)

(declare-fun e!4542324 () Bool)

(declare-fun tp!2230760 () Bool)

(declare-fun tp!2230761 () Bool)

(assert (=> b!7641912 (= e!4542324 (and tp!2230760 tp!2230761))))

(declare-fun b!7641910 () Bool)

(declare-fun tp!2230764 () Bool)

(declare-fun tp!2230762 () Bool)

(assert (=> b!7641910 (= e!4542324 (and tp!2230764 tp!2230762))))

(declare-fun b!7641911 () Bool)

(declare-fun tp!2230763 () Bool)

(assert (=> b!7641911 (= e!4542324 tp!2230763)))

(declare-fun b!7641909 () Bool)

(assert (=> b!7641909 (= e!4542324 tp_is_empty!51243)))

(assert (=> b!7641485 (= tp!2230718 e!4542324)))

(assert (= (and b!7641485 (is-ElementMatch!20444 (regTwo!41400 r!14126))) b!7641909))

(assert (= (and b!7641485 (is-Concat!29289 (regTwo!41400 r!14126))) b!7641910))

(assert (= (and b!7641485 (is-Star!20444 (regTwo!41400 r!14126))) b!7641911))

(assert (= (and b!7641485 (is-Union!20444 (regTwo!41400 r!14126))) b!7641912))

(declare-fun b!7641916 () Bool)

(declare-fun e!4542325 () Bool)

(declare-fun tp!2230765 () Bool)

(declare-fun tp!2230766 () Bool)

(assert (=> b!7641916 (= e!4542325 (and tp!2230765 tp!2230766))))

(declare-fun b!7641914 () Bool)

(declare-fun tp!2230769 () Bool)

(declare-fun tp!2230767 () Bool)

(assert (=> b!7641914 (= e!4542325 (and tp!2230769 tp!2230767))))

(declare-fun b!7641915 () Bool)

(declare-fun tp!2230768 () Bool)

(assert (=> b!7641915 (= e!4542325 tp!2230768)))

(declare-fun b!7641913 () Bool)

(assert (=> b!7641913 (= e!4542325 tp_is_empty!51243)))

(assert (=> b!7641482 (= tp!2230722 e!4542325)))

(assert (= (and b!7641482 (is-ElementMatch!20444 (reg!20773 r!14126))) b!7641913))

(assert (= (and b!7641482 (is-Concat!29289 (reg!20773 r!14126))) b!7641914))

(assert (= (and b!7641482 (is-Star!20444 (reg!20773 r!14126))) b!7641915))

(assert (= (and b!7641482 (is-Union!20444 (reg!20773 r!14126))) b!7641916))

(declare-fun b!7641920 () Bool)

(declare-fun e!4542326 () Bool)

(declare-fun tp!2230770 () Bool)

(declare-fun tp!2230771 () Bool)

(assert (=> b!7641920 (= e!4542326 (and tp!2230770 tp!2230771))))

(declare-fun b!7641918 () Bool)

(declare-fun tp!2230774 () Bool)

(declare-fun tp!2230772 () Bool)

(assert (=> b!7641918 (= e!4542326 (and tp!2230774 tp!2230772))))

(declare-fun b!7641919 () Bool)

(declare-fun tp!2230773 () Bool)

(assert (=> b!7641919 (= e!4542326 tp!2230773)))

(declare-fun b!7641917 () Bool)

(assert (=> b!7641917 (= e!4542326 tp_is_empty!51243)))

(assert (=> b!7641488 (= tp!2230721 e!4542326)))

(assert (= (and b!7641488 (is-ElementMatch!20444 (regOne!41401 r!14126))) b!7641917))

(assert (= (and b!7641488 (is-Concat!29289 (regOne!41401 r!14126))) b!7641918))

(assert (= (and b!7641488 (is-Star!20444 (regOne!41401 r!14126))) b!7641919))

(assert (= (and b!7641488 (is-Union!20444 (regOne!41401 r!14126))) b!7641920))

(declare-fun b!7641926 () Bool)

(declare-fun e!4542329 () Bool)

(declare-fun tp!2230775 () Bool)

(declare-fun tp!2230776 () Bool)

(assert (=> b!7641926 (= e!4542329 (and tp!2230775 tp!2230776))))

(declare-fun b!7641924 () Bool)

(declare-fun tp!2230779 () Bool)

(declare-fun tp!2230777 () Bool)

(assert (=> b!7641924 (= e!4542329 (and tp!2230779 tp!2230777))))

(declare-fun b!7641925 () Bool)

(declare-fun tp!2230778 () Bool)

(assert (=> b!7641925 (= e!4542329 tp!2230778)))

(declare-fun b!7641923 () Bool)

(assert (=> b!7641923 (= e!4542329 tp_is_empty!51243)))

(assert (=> b!7641488 (= tp!2230720 e!4542329)))

(assert (= (and b!7641488 (is-ElementMatch!20444 (regTwo!41401 r!14126))) b!7641923))

(assert (= (and b!7641488 (is-Concat!29289 (regTwo!41401 r!14126))) b!7641924))

(assert (= (and b!7641488 (is-Star!20444 (regTwo!41401 r!14126))) b!7641925))

(assert (= (and b!7641488 (is-Union!20444 (regTwo!41401 r!14126))) b!7641926))

(push 1)

(assert (not b!7641660))

(assert (not d!2325202))

(assert (not b!7641862))

(assert (not bm!701394))

(assert (not bm!701445))

(assert (not b!7641890))

(assert (not b!7641919))

(assert (not b!7641663))

(assert (not bm!701390))

(assert (not b!7641907))

(assert tp_is_empty!51243)

(assert (not b!7641912))

(assert (not b!7641880))

(assert (not b!7641587))

(assert (not b!7641883))

(assert (not bm!701443))

(assert (not bm!701438))

(assert (not b!7641879))

(assert (not b!7641665))

(assert (not bm!701446))

(assert (not b!7641667))

(assert (not bm!701439))

(assert (not b!7641920))

(assert (not b!7641585))

(assert (not bm!701450))

(assert (not b!7641691))

(assert (not b!7641926))

(assert (not bm!701440))

(assert (not b!7641881))

(assert (not bm!701441))

(assert (not b!7641906))

(assert (not bm!701458))

(assert (not b!7641584))

(assert (not b!7641581))

(assert (not b!7641910))

(assert (not bm!701374))

(assert (not b!7641924))

(assert (not b!7641669))

(assert (not b!7641874))

(assert (not bm!701457))

(assert (not b!7641918))

(assert (not b!7641583))

(assert (not b!7641916))

(assert (not d!2325210))

(assert (not b!7641911))

(assert (not b!7641914))

(assert (not d!2325214))

(assert (not b!7641645))

(assert (not b!7641877))

(assert (not b!7641578))

(assert (not b!7641868))

(assert (not b!7641666))

(assert (not bm!701448))

(assert (not bm!701459))

(assert (not b!7641690))

(assert (not b!7641925))

(assert (not b!7641908))

(assert (not b!7641915))

(assert (not d!2325236))

(assert (not bm!701389))

(assert (not bm!701447))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

