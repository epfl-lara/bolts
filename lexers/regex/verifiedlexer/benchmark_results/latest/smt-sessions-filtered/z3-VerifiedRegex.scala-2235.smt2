; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110314 () Bool)

(assert start!110314)

(declare-fun b!1234318 () Bool)

(declare-fun e!790500 () Bool)

(declare-fun tp!352577 () Bool)

(assert (=> b!1234318 (= e!790500 tp!352577)))

(declare-fun b!1234319 () Bool)

(declare-fun tp!352575 () Bool)

(declare-fun tp!352579 () Bool)

(assert (=> b!1234319 (= e!790500 (and tp!352575 tp!352579))))

(declare-fun b!1234320 () Bool)

(declare-fun res!552952 () Bool)

(declare-fun e!790499 () Bool)

(assert (=> b!1234320 (=> (not res!552952) (not e!790499))))

(declare-datatypes ((C!7208 0))(
  ( (C!7209 (val!4134 Int)) )
))
(declare-datatypes ((Regex!3445 0))(
  ( (ElementMatch!3445 (c!206438 C!7208)) (Concat!5675 (regOne!7402 Regex!3445) (regTwo!7402 Regex!3445)) (EmptyExpr!3445) (Star!3445 (reg!3774 Regex!3445)) (EmptyLang!3445) (Union!3445 (regOne!7403 Regex!3445) (regTwo!7403 Regex!3445)) )
))
(declare-fun r!15719 () Regex!3445)

(get-info :version)

(assert (=> b!1234320 (= res!552952 (and (or (not ((_ is Concat!5675) r!15719)) (not ((_ is EmptyExpr!3445) (regOne!7402 r!15719)))) (or (not ((_ is Concat!5675) r!15719)) (not ((_ is EmptyExpr!3445) (regTwo!7402 r!15719)))) (not ((_ is Concat!5675) r!15719)) (not ((_ is Union!3445) r!15719)) ((_ is Star!3445) r!15719)))))

(declare-fun b!1234321 () Bool)

(declare-fun validRegex!1481 (Regex!3445) Bool)

(assert (=> b!1234321 (= e!790499 (not (validRegex!1481 (reg!3774 r!15719))))))

(declare-fun b!1234322 () Bool)

(declare-fun tp!352578 () Bool)

(declare-fun tp!352576 () Bool)

(assert (=> b!1234322 (= e!790500 (and tp!352578 tp!352576))))

(declare-fun res!552951 () Bool)

(assert (=> start!110314 (=> (not res!552951) (not e!790499))))

(assert (=> start!110314 (= res!552951 (validRegex!1481 r!15719))))

(assert (=> start!110314 e!790499))

(assert (=> start!110314 e!790500))

(declare-fun b!1234323 () Bool)

(declare-fun tp_is_empty!6411 () Bool)

(assert (=> b!1234323 (= e!790500 tp_is_empty!6411)))

(assert (= (and start!110314 res!552951) b!1234320))

(assert (= (and b!1234320 res!552952) b!1234321))

(assert (= (and start!110314 ((_ is ElementMatch!3445) r!15719)) b!1234323))

(assert (= (and start!110314 ((_ is Concat!5675) r!15719)) b!1234319))

(assert (= (and start!110314 ((_ is Star!3445) r!15719)) b!1234318))

(assert (= (and start!110314 ((_ is Union!3445) r!15719)) b!1234322))

(declare-fun m!1409159 () Bool)

(assert (=> b!1234321 m!1409159))

(declare-fun m!1409161 () Bool)

(assert (=> start!110314 m!1409161))

(check-sat (not b!1234321) (not start!110314) (not b!1234318) tp_is_empty!6411 (not b!1234322) (not b!1234319))
(check-sat)
(get-model)

(declare-fun c!206450 () Bool)

(declare-fun c!206449 () Bool)

(declare-fun call!85652 () Bool)

(declare-fun bm!85646 () Bool)

(assert (=> bm!85646 (= call!85652 (validRegex!1481 (ite c!206450 (reg!3774 r!15719) (ite c!206449 (regTwo!7403 r!15719) (regTwo!7402 r!15719)))))))

(declare-fun b!1234369 () Bool)

(declare-fun res!552980 () Bool)

(declare-fun e!790540 () Bool)

(assert (=> b!1234369 (=> res!552980 e!790540)))

(assert (=> b!1234369 (= res!552980 (not ((_ is Concat!5675) r!15719)))))

(declare-fun e!790542 () Bool)

(assert (=> b!1234369 (= e!790542 e!790540)))

(declare-fun b!1234370 () Bool)

(declare-fun e!790539 () Bool)

(assert (=> b!1234370 (= e!790539 e!790542)))

(assert (=> b!1234370 (= c!206449 ((_ is Union!3445) r!15719))))

(declare-fun b!1234371 () Bool)

(declare-fun e!790538 () Bool)

(declare-fun call!85651 () Bool)

(assert (=> b!1234371 (= e!790538 call!85651)))

(declare-fun b!1234372 () Bool)

(declare-fun e!790537 () Bool)

(assert (=> b!1234372 (= e!790540 e!790537)))

(declare-fun res!552979 () Bool)

(assert (=> b!1234372 (=> (not res!552979) (not e!790537))))

(declare-fun call!85653 () Bool)

(assert (=> b!1234372 (= res!552979 call!85653)))

(declare-fun b!1234373 () Bool)

(declare-fun res!552978 () Bool)

(assert (=> b!1234373 (=> (not res!552978) (not e!790538))))

(assert (=> b!1234373 (= res!552978 call!85653)))

(assert (=> b!1234373 (= e!790542 e!790538)))

(declare-fun d!353184 () Bool)

(declare-fun res!552982 () Bool)

(declare-fun e!790536 () Bool)

(assert (=> d!353184 (=> res!552982 e!790536)))

(assert (=> d!353184 (= res!552982 ((_ is ElementMatch!3445) r!15719))))

(assert (=> d!353184 (= (validRegex!1481 r!15719) e!790536)))

(declare-fun b!1234374 () Bool)

(assert (=> b!1234374 (= e!790537 call!85651)))

(declare-fun b!1234375 () Bool)

(assert (=> b!1234375 (= e!790536 e!790539)))

(assert (=> b!1234375 (= c!206450 ((_ is Star!3445) r!15719))))

(declare-fun b!1234376 () Bool)

(declare-fun e!790541 () Bool)

(assert (=> b!1234376 (= e!790539 e!790541)))

(declare-fun res!552981 () Bool)

(declare-fun nullable!1083 (Regex!3445) Bool)

(assert (=> b!1234376 (= res!552981 (not (nullable!1083 (reg!3774 r!15719))))))

(assert (=> b!1234376 (=> (not res!552981) (not e!790541))))

(declare-fun bm!85647 () Bool)

(assert (=> bm!85647 (= call!85651 call!85652)))

(declare-fun b!1234377 () Bool)

(assert (=> b!1234377 (= e!790541 call!85652)))

(declare-fun bm!85648 () Bool)

(assert (=> bm!85648 (= call!85653 (validRegex!1481 (ite c!206449 (regOne!7403 r!15719) (regOne!7402 r!15719))))))

(assert (= (and d!353184 (not res!552982)) b!1234375))

(assert (= (and b!1234375 c!206450) b!1234376))

(assert (= (and b!1234375 (not c!206450)) b!1234370))

(assert (= (and b!1234376 res!552981) b!1234377))

(assert (= (and b!1234370 c!206449) b!1234373))

(assert (= (and b!1234370 (not c!206449)) b!1234369))

(assert (= (and b!1234373 res!552978) b!1234371))

(assert (= (and b!1234369 (not res!552980)) b!1234372))

(assert (= (and b!1234372 res!552979) b!1234374))

(assert (= (or b!1234371 b!1234374) bm!85647))

(assert (= (or b!1234373 b!1234372) bm!85648))

(assert (= (or b!1234377 bm!85647) bm!85646))

(declare-fun m!1409169 () Bool)

(assert (=> bm!85646 m!1409169))

(declare-fun m!1409171 () Bool)

(assert (=> b!1234376 m!1409171))

(declare-fun m!1409173 () Bool)

(assert (=> bm!85648 m!1409173))

(assert (=> start!110314 d!353184))

(declare-fun c!206453 () Bool)

(declare-fun call!85658 () Bool)

(declare-fun c!206454 () Bool)

(declare-fun bm!85652 () Bool)

(assert (=> bm!85652 (= call!85658 (validRegex!1481 (ite c!206454 (reg!3774 (reg!3774 r!15719)) (ite c!206453 (regTwo!7403 (reg!3774 r!15719)) (regTwo!7402 (reg!3774 r!15719))))))))

(declare-fun b!1234387 () Bool)

(declare-fun res!552990 () Bool)

(declare-fun e!790554 () Bool)

(assert (=> b!1234387 (=> res!552990 e!790554)))

(assert (=> b!1234387 (= res!552990 (not ((_ is Concat!5675) (reg!3774 r!15719))))))

(declare-fun e!790556 () Bool)

(assert (=> b!1234387 (= e!790556 e!790554)))

(declare-fun b!1234388 () Bool)

(declare-fun e!790553 () Bool)

(assert (=> b!1234388 (= e!790553 e!790556)))

(assert (=> b!1234388 (= c!206453 ((_ is Union!3445) (reg!3774 r!15719)))))

(declare-fun b!1234389 () Bool)

(declare-fun e!790552 () Bool)

(declare-fun call!85657 () Bool)

(assert (=> b!1234389 (= e!790552 call!85657)))

(declare-fun b!1234390 () Bool)

(declare-fun e!790551 () Bool)

(assert (=> b!1234390 (= e!790554 e!790551)))

(declare-fun res!552989 () Bool)

(assert (=> b!1234390 (=> (not res!552989) (not e!790551))))

(declare-fun call!85659 () Bool)

(assert (=> b!1234390 (= res!552989 call!85659)))

(declare-fun b!1234391 () Bool)

(declare-fun res!552988 () Bool)

(assert (=> b!1234391 (=> (not res!552988) (not e!790552))))

(assert (=> b!1234391 (= res!552988 call!85659)))

(assert (=> b!1234391 (= e!790556 e!790552)))

(declare-fun d!353188 () Bool)

(declare-fun res!552992 () Bool)

(declare-fun e!790550 () Bool)

(assert (=> d!353188 (=> res!552992 e!790550)))

(assert (=> d!353188 (= res!552992 ((_ is ElementMatch!3445) (reg!3774 r!15719)))))

(assert (=> d!353188 (= (validRegex!1481 (reg!3774 r!15719)) e!790550)))

(declare-fun b!1234392 () Bool)

(assert (=> b!1234392 (= e!790551 call!85657)))

(declare-fun b!1234393 () Bool)

(assert (=> b!1234393 (= e!790550 e!790553)))

(assert (=> b!1234393 (= c!206454 ((_ is Star!3445) (reg!3774 r!15719)))))

(declare-fun b!1234394 () Bool)

(declare-fun e!790555 () Bool)

(assert (=> b!1234394 (= e!790553 e!790555)))

(declare-fun res!552991 () Bool)

(assert (=> b!1234394 (= res!552991 (not (nullable!1083 (reg!3774 (reg!3774 r!15719)))))))

(assert (=> b!1234394 (=> (not res!552991) (not e!790555))))

(declare-fun bm!85653 () Bool)

(assert (=> bm!85653 (= call!85657 call!85658)))

(declare-fun b!1234395 () Bool)

(assert (=> b!1234395 (= e!790555 call!85658)))

(declare-fun bm!85654 () Bool)

(assert (=> bm!85654 (= call!85659 (validRegex!1481 (ite c!206453 (regOne!7403 (reg!3774 r!15719)) (regOne!7402 (reg!3774 r!15719)))))))

(assert (= (and d!353188 (not res!552992)) b!1234393))

(assert (= (and b!1234393 c!206454) b!1234394))

(assert (= (and b!1234393 (not c!206454)) b!1234388))

(assert (= (and b!1234394 res!552991) b!1234395))

(assert (= (and b!1234388 c!206453) b!1234391))

(assert (= (and b!1234388 (not c!206453)) b!1234387))

(assert (= (and b!1234391 res!552988) b!1234389))

(assert (= (and b!1234387 (not res!552990)) b!1234390))

(assert (= (and b!1234390 res!552989) b!1234392))

(assert (= (or b!1234389 b!1234392) bm!85653))

(assert (= (or b!1234391 b!1234390) bm!85654))

(assert (= (or b!1234395 bm!85653) bm!85652))

(declare-fun m!1409181 () Bool)

(assert (=> bm!85652 m!1409181))

(declare-fun m!1409183 () Bool)

(assert (=> b!1234394 m!1409183))

(declare-fun m!1409185 () Bool)

(assert (=> bm!85654 m!1409185))

(assert (=> b!1234321 d!353188))

(declare-fun b!1234429 () Bool)

(declare-fun e!790564 () Bool)

(declare-fun tp!352615 () Bool)

(declare-fun tp!352619 () Bool)

(assert (=> b!1234429 (= e!790564 (and tp!352615 tp!352619))))

(declare-fun b!1234430 () Bool)

(declare-fun tp!352618 () Bool)

(assert (=> b!1234430 (= e!790564 tp!352618)))

(assert (=> b!1234319 (= tp!352575 e!790564)))

(declare-fun b!1234431 () Bool)

(declare-fun tp!352616 () Bool)

(declare-fun tp!352617 () Bool)

(assert (=> b!1234431 (= e!790564 (and tp!352616 tp!352617))))

(declare-fun b!1234428 () Bool)

(assert (=> b!1234428 (= e!790564 tp_is_empty!6411)))

(assert (= (and b!1234319 ((_ is ElementMatch!3445) (regOne!7402 r!15719))) b!1234428))

(assert (= (and b!1234319 ((_ is Concat!5675) (regOne!7402 r!15719))) b!1234429))

(assert (= (and b!1234319 ((_ is Star!3445) (regOne!7402 r!15719))) b!1234430))

(assert (= (and b!1234319 ((_ is Union!3445) (regOne!7402 r!15719))) b!1234431))

(declare-fun b!1234437 () Bool)

(declare-fun e!790566 () Bool)

(declare-fun tp!352625 () Bool)

(declare-fun tp!352629 () Bool)

(assert (=> b!1234437 (= e!790566 (and tp!352625 tp!352629))))

(declare-fun b!1234438 () Bool)

(declare-fun tp!352628 () Bool)

(assert (=> b!1234438 (= e!790566 tp!352628)))

(assert (=> b!1234319 (= tp!352579 e!790566)))

(declare-fun b!1234439 () Bool)

(declare-fun tp!352626 () Bool)

(declare-fun tp!352627 () Bool)

(assert (=> b!1234439 (= e!790566 (and tp!352626 tp!352627))))

(declare-fun b!1234436 () Bool)

(assert (=> b!1234436 (= e!790566 tp_is_empty!6411)))

(assert (= (and b!1234319 ((_ is ElementMatch!3445) (regTwo!7402 r!15719))) b!1234436))

(assert (= (and b!1234319 ((_ is Concat!5675) (regTwo!7402 r!15719))) b!1234437))

(assert (= (and b!1234319 ((_ is Star!3445) (regTwo!7402 r!15719))) b!1234438))

(assert (= (and b!1234319 ((_ is Union!3445) (regTwo!7402 r!15719))) b!1234439))

(declare-fun b!1234445 () Bool)

(declare-fun e!790568 () Bool)

(declare-fun tp!352635 () Bool)

(declare-fun tp!352639 () Bool)

(assert (=> b!1234445 (= e!790568 (and tp!352635 tp!352639))))

(declare-fun b!1234446 () Bool)

(declare-fun tp!352638 () Bool)

(assert (=> b!1234446 (= e!790568 tp!352638)))

(assert (=> b!1234318 (= tp!352577 e!790568)))

(declare-fun b!1234447 () Bool)

(declare-fun tp!352636 () Bool)

(declare-fun tp!352637 () Bool)

(assert (=> b!1234447 (= e!790568 (and tp!352636 tp!352637))))

(declare-fun b!1234444 () Bool)

(assert (=> b!1234444 (= e!790568 tp_is_empty!6411)))

(assert (= (and b!1234318 ((_ is ElementMatch!3445) (reg!3774 r!15719))) b!1234444))

(assert (= (and b!1234318 ((_ is Concat!5675) (reg!3774 r!15719))) b!1234445))

(assert (= (and b!1234318 ((_ is Star!3445) (reg!3774 r!15719))) b!1234446))

(assert (= (and b!1234318 ((_ is Union!3445) (reg!3774 r!15719))) b!1234447))

(declare-fun b!1234449 () Bool)

(declare-fun e!790569 () Bool)

(declare-fun tp!352640 () Bool)

(declare-fun tp!352644 () Bool)

(assert (=> b!1234449 (= e!790569 (and tp!352640 tp!352644))))

(declare-fun b!1234450 () Bool)

(declare-fun tp!352643 () Bool)

(assert (=> b!1234450 (= e!790569 tp!352643)))

(assert (=> b!1234322 (= tp!352578 e!790569)))

(declare-fun b!1234451 () Bool)

(declare-fun tp!352641 () Bool)

(declare-fun tp!352642 () Bool)

(assert (=> b!1234451 (= e!790569 (and tp!352641 tp!352642))))

(declare-fun b!1234448 () Bool)

(assert (=> b!1234448 (= e!790569 tp_is_empty!6411)))

(assert (= (and b!1234322 ((_ is ElementMatch!3445) (regOne!7403 r!15719))) b!1234448))

(assert (= (and b!1234322 ((_ is Concat!5675) (regOne!7403 r!15719))) b!1234449))

(assert (= (and b!1234322 ((_ is Star!3445) (regOne!7403 r!15719))) b!1234450))

(assert (= (and b!1234322 ((_ is Union!3445) (regOne!7403 r!15719))) b!1234451))

(declare-fun b!1234453 () Bool)

(declare-fun e!790570 () Bool)

(declare-fun tp!352645 () Bool)

(declare-fun tp!352649 () Bool)

(assert (=> b!1234453 (= e!790570 (and tp!352645 tp!352649))))

(declare-fun b!1234454 () Bool)

(declare-fun tp!352648 () Bool)

(assert (=> b!1234454 (= e!790570 tp!352648)))

(assert (=> b!1234322 (= tp!352576 e!790570)))

(declare-fun b!1234455 () Bool)

(declare-fun tp!352646 () Bool)

(declare-fun tp!352647 () Bool)

(assert (=> b!1234455 (= e!790570 (and tp!352646 tp!352647))))

(declare-fun b!1234452 () Bool)

(assert (=> b!1234452 (= e!790570 tp_is_empty!6411)))

(assert (= (and b!1234322 ((_ is ElementMatch!3445) (regTwo!7403 r!15719))) b!1234452))

(assert (= (and b!1234322 ((_ is Concat!5675) (regTwo!7403 r!15719))) b!1234453))

(assert (= (and b!1234322 ((_ is Star!3445) (regTwo!7403 r!15719))) b!1234454))

(assert (= (and b!1234322 ((_ is Union!3445) (regTwo!7403 r!15719))) b!1234455))

(check-sat (not b!1234446) (not bm!85654) (not b!1234449) (not bm!85652) (not b!1234439) (not b!1234438) (not b!1234431) (not b!1234437) (not bm!85648) (not b!1234445) (not b!1234451) (not b!1234394) (not b!1234447) (not b!1234450) (not b!1234430) (not b!1234376) (not b!1234455) (not b!1234453) (not b!1234429) (not bm!85646) (not b!1234454) tp_is_empty!6411)
(check-sat)
