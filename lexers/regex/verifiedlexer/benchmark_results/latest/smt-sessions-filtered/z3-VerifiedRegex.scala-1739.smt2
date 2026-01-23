; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87046 () Bool)

(assert start!87046)

(declare-fun b!981528 () Bool)

(declare-fun e!631431 () Bool)

(declare-fun tp_is_empty!5117 () Bool)

(assert (=> b!981528 (= e!631431 tp_is_empty!5117)))

(declare-fun b!981529 () Bool)

(declare-fun tp!299901 () Bool)

(declare-fun tp!299903 () Bool)

(assert (=> b!981529 (= e!631431 (and tp!299901 tp!299903))))

(declare-fun res!445413 () Bool)

(declare-fun e!631430 () Bool)

(assert (=> start!87046 (=> (not res!445413) (not e!631430))))

(declare-datatypes ((C!6044 0))(
  ( (C!6045 (val!3270 Int)) )
))
(declare-datatypes ((Regex!2737 0))(
  ( (ElementMatch!2737 (c!160512 C!6044)) (Concat!4570 (regOne!5986 Regex!2737) (regTwo!5986 Regex!2737)) (EmptyExpr!2737) (Star!2737 (reg!3066 Regex!2737)) (EmptyLang!2737) (Union!2737 (regOne!5987 Regex!2737) (regTwo!5987 Regex!2737)) )
))
(declare-fun r!15766 () Regex!2737)

(declare-fun validRegex!1206 (Regex!2737) Bool)

(assert (=> start!87046 (= res!445413 (validRegex!1206 r!15766))))

(assert (=> start!87046 e!631430))

(assert (=> start!87046 e!631431))

(declare-fun e!631429 () Bool)

(assert (=> start!87046 e!631429))

(declare-fun b!981530 () Bool)

(declare-fun tp!299902 () Bool)

(assert (=> b!981530 (= e!631431 tp!299902)))

(declare-fun b!981531 () Bool)

(declare-fun res!445412 () Bool)

(declare-fun e!631428 () Bool)

(assert (=> b!981531 (=> res!445412 e!631428)))

(assert (=> b!981531 (= res!445412 (not (validRegex!1206 (regOne!5986 r!15766))))))

(declare-fun b!981532 () Bool)

(assert (=> b!981532 (= e!631430 (not e!631428))))

(declare-fun res!445414 () Bool)

(assert (=> b!981532 (=> res!445414 e!631428)))

(declare-fun lt!350084 () Bool)

(get-info :version)

(assert (=> b!981532 (= res!445414 (or (not lt!350084) (and ((_ is Concat!4570) r!15766) ((_ is EmptyExpr!2737) (regOne!5986 r!15766))) (and ((_ is Concat!4570) r!15766) ((_ is EmptyExpr!2737) (regTwo!5986 r!15766))) (not ((_ is Concat!4570) r!15766))))))

(declare-datatypes ((List!9967 0))(
  ( (Nil!9951) (Cons!9951 (h!15352 C!6044) (t!101013 List!9967)) )
))
(declare-fun s!10566 () List!9967)

(declare-fun matchRSpec!536 (Regex!2737 List!9967) Bool)

(assert (=> b!981532 (= lt!350084 (matchRSpec!536 r!15766 s!10566))))

(declare-fun matchR!1273 (Regex!2737 List!9967) Bool)

(assert (=> b!981532 (= lt!350084 (matchR!1273 r!15766 s!10566))))

(declare-datatypes ((Unit!15133 0))(
  ( (Unit!15134) )
))
(declare-fun lt!350085 () Unit!15133)

(declare-fun mainMatchTheorem!536 (Regex!2737 List!9967) Unit!15133)

(assert (=> b!981532 (= lt!350085 (mainMatchTheorem!536 r!15766 s!10566))))

(declare-fun b!981533 () Bool)

(declare-fun tp!299900 () Bool)

(assert (=> b!981533 (= e!631429 (and tp_is_empty!5117 tp!299900))))

(declare-fun b!981534 () Bool)

(assert (=> b!981534 (= e!631428 (validRegex!1206 (regTwo!5986 r!15766)))))

(declare-fun b!981535 () Bool)

(declare-fun tp!299904 () Bool)

(declare-fun tp!299899 () Bool)

(assert (=> b!981535 (= e!631431 (and tp!299904 tp!299899))))

(assert (= (and start!87046 res!445413) b!981532))

(assert (= (and b!981532 (not res!445414)) b!981531))

(assert (= (and b!981531 (not res!445412)) b!981534))

(assert (= (and start!87046 ((_ is ElementMatch!2737) r!15766)) b!981528))

(assert (= (and start!87046 ((_ is Concat!4570) r!15766)) b!981529))

(assert (= (and start!87046 ((_ is Star!2737) r!15766)) b!981530))

(assert (= (and start!87046 ((_ is Union!2737) r!15766)) b!981535))

(assert (= (and start!87046 ((_ is Cons!9951) s!10566)) b!981533))

(declare-fun m!1180449 () Bool)

(assert (=> start!87046 m!1180449))

(declare-fun m!1180451 () Bool)

(assert (=> b!981531 m!1180451))

(declare-fun m!1180453 () Bool)

(assert (=> b!981532 m!1180453))

(declare-fun m!1180455 () Bool)

(assert (=> b!981532 m!1180455))

(declare-fun m!1180457 () Bool)

(assert (=> b!981532 m!1180457))

(declare-fun m!1180459 () Bool)

(assert (=> b!981534 m!1180459))

(check-sat (not b!981533) (not start!87046) (not b!981534) (not b!981530) (not b!981531) (not b!981529) (not b!981532) (not b!981535) tp_is_empty!5117)
(check-sat)
(get-model)

(declare-fun b!981590 () Bool)

(declare-fun res!445449 () Bool)

(declare-fun e!631480 () Bool)

(assert (=> b!981590 (=> (not res!445449) (not e!631480))))

(declare-fun call!63144 () Bool)

(assert (=> b!981590 (= res!445449 call!63144)))

(declare-fun e!631474 () Bool)

(assert (=> b!981590 (= e!631474 e!631480)))

(declare-fun bm!63139 () Bool)

(declare-fun call!63145 () Bool)

(assert (=> bm!63139 (= call!63144 call!63145)))

(declare-fun b!981591 () Bool)

(declare-fun res!445448 () Bool)

(declare-fun e!631475 () Bool)

(assert (=> b!981591 (=> res!445448 e!631475)))

(assert (=> b!981591 (= res!445448 (not ((_ is Concat!4570) r!15766)))))

(assert (=> b!981591 (= e!631474 e!631475)))

(declare-fun b!981592 () Bool)

(declare-fun e!631478 () Bool)

(assert (=> b!981592 (= e!631478 call!63145)))

(declare-fun b!981593 () Bool)

(declare-fun e!631477 () Bool)

(assert (=> b!981593 (= e!631477 e!631478)))

(declare-fun res!445445 () Bool)

(declare-fun nullable!853 (Regex!2737) Bool)

(assert (=> b!981593 (= res!445445 (not (nullable!853 (reg!3066 r!15766))))))

(assert (=> b!981593 (=> (not res!445445) (not e!631478))))

(declare-fun b!981594 () Bool)

(declare-fun e!631479 () Bool)

(assert (=> b!981594 (= e!631479 e!631477)))

(declare-fun c!160526 () Bool)

(assert (=> b!981594 (= c!160526 ((_ is Star!2737) r!15766))))

(declare-fun b!981595 () Bool)

(declare-fun e!631476 () Bool)

(assert (=> b!981595 (= e!631475 e!631476)))

(declare-fun res!445447 () Bool)

(assert (=> b!981595 (=> (not res!445447) (not e!631476))))

(assert (=> b!981595 (= res!445447 call!63144)))

(declare-fun b!981596 () Bool)

(assert (=> b!981596 (= e!631477 e!631474)))

(declare-fun c!160525 () Bool)

(assert (=> b!981596 (= c!160525 ((_ is Union!2737) r!15766))))

(declare-fun bm!63140 () Bool)

(assert (=> bm!63140 (= call!63145 (validRegex!1206 (ite c!160526 (reg!3066 r!15766) (ite c!160525 (regOne!5987 r!15766) (regOne!5986 r!15766)))))))

(declare-fun d!288330 () Bool)

(declare-fun res!445446 () Bool)

(assert (=> d!288330 (=> res!445446 e!631479)))

(assert (=> d!288330 (= res!445446 ((_ is ElementMatch!2737) r!15766))))

(assert (=> d!288330 (= (validRegex!1206 r!15766) e!631479)))

(declare-fun b!981597 () Bool)

(declare-fun call!63146 () Bool)

(assert (=> b!981597 (= e!631480 call!63146)))

(declare-fun b!981598 () Bool)

(assert (=> b!981598 (= e!631476 call!63146)))

(declare-fun bm!63141 () Bool)

(assert (=> bm!63141 (= call!63146 (validRegex!1206 (ite c!160525 (regTwo!5987 r!15766) (regTwo!5986 r!15766))))))

(assert (= (and d!288330 (not res!445446)) b!981594))

(assert (= (and b!981594 c!160526) b!981593))

(assert (= (and b!981594 (not c!160526)) b!981596))

(assert (= (and b!981593 res!445445) b!981592))

(assert (= (and b!981596 c!160525) b!981590))

(assert (= (and b!981596 (not c!160525)) b!981591))

(assert (= (and b!981590 res!445449) b!981597))

(assert (= (and b!981591 (not res!445448)) b!981595))

(assert (= (and b!981595 res!445447) b!981598))

(assert (= (or b!981597 b!981598) bm!63141))

(assert (= (or b!981590 b!981595) bm!63139))

(assert (= (or b!981592 bm!63139) bm!63140))

(declare-fun m!1180473 () Bool)

(assert (=> b!981593 m!1180473))

(declare-fun m!1180475 () Bool)

(assert (=> bm!63140 m!1180475))

(declare-fun m!1180477 () Bool)

(assert (=> bm!63141 m!1180477))

(assert (=> start!87046 d!288330))

(declare-fun b!981772 () Bool)

(assert (=> b!981772 true))

(assert (=> b!981772 true))

(declare-fun bs!243946 () Bool)

(declare-fun b!981774 () Bool)

(assert (= bs!243946 (and b!981774 b!981772)))

(declare-fun lambda!34976 () Int)

(declare-fun lambda!34975 () Int)

(assert (=> bs!243946 (not (= lambda!34976 lambda!34975))))

(assert (=> b!981774 true))

(assert (=> b!981774 true))

(declare-fun b!981764 () Bool)

(declare-fun e!631568 () Bool)

(declare-fun e!631565 () Bool)

(assert (=> b!981764 (= e!631568 e!631565)))

(declare-fun c!160560 () Bool)

(assert (=> b!981764 (= c!160560 ((_ is Star!2737) r!15766))))

(declare-fun b!981765 () Bool)

(declare-fun res!445516 () Bool)

(declare-fun e!631562 () Bool)

(assert (=> b!981765 (=> res!445516 e!631562)))

(declare-fun call!63164 () Bool)

(assert (=> b!981765 (= res!445516 call!63164)))

(assert (=> b!981765 (= e!631565 e!631562)))

(declare-fun b!981767 () Bool)

(declare-fun e!631564 () Bool)

(assert (=> b!981767 (= e!631564 call!63164)))

(declare-fun call!63163 () Bool)

(declare-fun bm!63158 () Bool)

(declare-fun Exists!474 (Int) Bool)

(assert (=> bm!63158 (= call!63163 (Exists!474 (ite c!160560 lambda!34975 lambda!34976)))))

(declare-fun b!981768 () Bool)

(declare-fun e!631567 () Bool)

(assert (=> b!981768 (= e!631564 e!631567)))

(declare-fun res!445515 () Bool)

(assert (=> b!981768 (= res!445515 (not ((_ is EmptyLang!2737) r!15766)))))

(assert (=> b!981768 (=> (not res!445515) (not e!631567))))

(declare-fun b!981769 () Bool)

(declare-fun e!631563 () Bool)

(assert (=> b!981769 (= e!631563 (matchRSpec!536 (regTwo!5987 r!15766) s!10566))))

(declare-fun b!981770 () Bool)

(declare-fun e!631566 () Bool)

(assert (=> b!981770 (= e!631566 (= s!10566 (Cons!9951 (c!160512 r!15766) Nil!9951)))))

(declare-fun b!981771 () Bool)

(declare-fun c!160559 () Bool)

(assert (=> b!981771 (= c!160559 ((_ is Union!2737) r!15766))))

(assert (=> b!981771 (= e!631566 e!631568)))

(declare-fun bm!63159 () Bool)

(declare-fun isEmpty!6275 (List!9967) Bool)

(assert (=> bm!63159 (= call!63164 (isEmpty!6275 s!10566))))

(assert (=> b!981772 (= e!631562 call!63163)))

(declare-fun d!288336 () Bool)

(declare-fun c!160558 () Bool)

(assert (=> d!288336 (= c!160558 ((_ is EmptyExpr!2737) r!15766))))

(assert (=> d!288336 (= (matchRSpec!536 r!15766 s!10566) e!631564)))

(declare-fun b!981766 () Bool)

(declare-fun c!160561 () Bool)

(assert (=> b!981766 (= c!160561 ((_ is ElementMatch!2737) r!15766))))

(assert (=> b!981766 (= e!631567 e!631566)))

(declare-fun b!981773 () Bool)

(assert (=> b!981773 (= e!631568 e!631563)))

(declare-fun res!445514 () Bool)

(assert (=> b!981773 (= res!445514 (matchRSpec!536 (regOne!5987 r!15766) s!10566))))

(assert (=> b!981773 (=> res!445514 e!631563)))

(assert (=> b!981774 (= e!631565 call!63163)))

(assert (= (and d!288336 c!160558) b!981767))

(assert (= (and d!288336 (not c!160558)) b!981768))

(assert (= (and b!981768 res!445515) b!981766))

(assert (= (and b!981766 c!160561) b!981770))

(assert (= (and b!981766 (not c!160561)) b!981771))

(assert (= (and b!981771 c!160559) b!981773))

(assert (= (and b!981771 (not c!160559)) b!981764))

(assert (= (and b!981773 (not res!445514)) b!981769))

(assert (= (and b!981764 c!160560) b!981765))

(assert (= (and b!981764 (not c!160560)) b!981774))

(assert (= (and b!981765 (not res!445516)) b!981772))

(assert (= (or b!981772 b!981774) bm!63158))

(assert (= (or b!981767 b!981765) bm!63159))

(declare-fun m!1180507 () Bool)

(assert (=> bm!63158 m!1180507))

(declare-fun m!1180509 () Bool)

(assert (=> b!981769 m!1180509))

(declare-fun m!1180511 () Bool)

(assert (=> bm!63159 m!1180511))

(declare-fun m!1180513 () Bool)

(assert (=> b!981773 m!1180513))

(assert (=> b!981532 d!288336))

(declare-fun b!981807 () Bool)

(declare-fun e!631586 () Bool)

(declare-fun derivativeStep!659 (Regex!2737 C!6044) Regex!2737)

(declare-fun head!1812 (List!9967) C!6044)

(declare-fun tail!1374 (List!9967) List!9967)

(assert (=> b!981807 (= e!631586 (matchR!1273 (derivativeStep!659 r!15766 (head!1812 s!10566)) (tail!1374 s!10566)))))

(declare-fun bm!63162 () Bool)

(declare-fun call!63167 () Bool)

(assert (=> bm!63162 (= call!63167 (isEmpty!6275 s!10566))))

(declare-fun b!981808 () Bool)

(declare-fun res!445540 () Bool)

(declare-fun e!631584 () Bool)

(assert (=> b!981808 (=> res!445540 e!631584)))

(assert (=> b!981808 (= res!445540 (not (isEmpty!6275 (tail!1374 s!10566))))))

(declare-fun b!981809 () Bool)

(declare-fun e!631585 () Bool)

(declare-fun e!631583 () Bool)

(assert (=> b!981809 (= e!631585 e!631583)))

(declare-fun res!445539 () Bool)

(assert (=> b!981809 (=> (not res!445539) (not e!631583))))

(declare-fun lt!350094 () Bool)

(assert (=> b!981809 (= res!445539 (not lt!350094))))

(declare-fun d!288344 () Bool)

(declare-fun e!631589 () Bool)

(assert (=> d!288344 e!631589))

(declare-fun c!160570 () Bool)

(assert (=> d!288344 (= c!160570 ((_ is EmptyExpr!2737) r!15766))))

(assert (=> d!288344 (= lt!350094 e!631586)))

(declare-fun c!160569 () Bool)

(assert (=> d!288344 (= c!160569 (isEmpty!6275 s!10566))))

(assert (=> d!288344 (validRegex!1206 r!15766)))

(assert (=> d!288344 (= (matchR!1273 r!15766 s!10566) lt!350094)))

(declare-fun b!981810 () Bool)

(declare-fun e!631587 () Bool)

(assert (=> b!981810 (= e!631589 e!631587)))

(declare-fun c!160568 () Bool)

(assert (=> b!981810 (= c!160568 ((_ is EmptyLang!2737) r!15766))))

(declare-fun b!981811 () Bool)

(declare-fun res!445537 () Bool)

(assert (=> b!981811 (=> res!445537 e!631585)))

(assert (=> b!981811 (= res!445537 (not ((_ is ElementMatch!2737) r!15766)))))

(assert (=> b!981811 (= e!631587 e!631585)))

(declare-fun b!981812 () Bool)

(declare-fun res!445536 () Bool)

(declare-fun e!631588 () Bool)

(assert (=> b!981812 (=> (not res!445536) (not e!631588))))

(assert (=> b!981812 (= res!445536 (not call!63167))))

(declare-fun b!981813 () Bool)

(assert (=> b!981813 (= e!631583 e!631584)))

(declare-fun res!445538 () Bool)

(assert (=> b!981813 (=> res!445538 e!631584)))

(assert (=> b!981813 (= res!445538 call!63167)))

(declare-fun b!981814 () Bool)

(assert (=> b!981814 (= e!631588 (= (head!1812 s!10566) (c!160512 r!15766)))))

(declare-fun b!981815 () Bool)

(assert (=> b!981815 (= e!631586 (nullable!853 r!15766))))

(declare-fun b!981816 () Bool)

(assert (=> b!981816 (= e!631589 (= lt!350094 call!63167))))

(declare-fun b!981817 () Bool)

(declare-fun res!445534 () Bool)

(assert (=> b!981817 (=> (not res!445534) (not e!631588))))

(assert (=> b!981817 (= res!445534 (isEmpty!6275 (tail!1374 s!10566)))))

(declare-fun b!981818 () Bool)

(assert (=> b!981818 (= e!631584 (not (= (head!1812 s!10566) (c!160512 r!15766))))))

(declare-fun b!981819 () Bool)

(declare-fun res!445535 () Bool)

(assert (=> b!981819 (=> res!445535 e!631585)))

(assert (=> b!981819 (= res!445535 e!631588)))

(declare-fun res!445533 () Bool)

(assert (=> b!981819 (=> (not res!445533) (not e!631588))))

(assert (=> b!981819 (= res!445533 lt!350094)))

(declare-fun b!981820 () Bool)

(assert (=> b!981820 (= e!631587 (not lt!350094))))

(assert (= (and d!288344 c!160569) b!981815))

(assert (= (and d!288344 (not c!160569)) b!981807))

(assert (= (and d!288344 c!160570) b!981816))

(assert (= (and d!288344 (not c!160570)) b!981810))

(assert (= (and b!981810 c!160568) b!981820))

(assert (= (and b!981810 (not c!160568)) b!981811))

(assert (= (and b!981811 (not res!445537)) b!981819))

(assert (= (and b!981819 res!445533) b!981812))

(assert (= (and b!981812 res!445536) b!981817))

(assert (= (and b!981817 res!445534) b!981814))

(assert (= (and b!981819 (not res!445535)) b!981809))

(assert (= (and b!981809 res!445539) b!981813))

(assert (= (and b!981813 (not res!445538)) b!981808))

(assert (= (and b!981808 (not res!445540)) b!981818))

(assert (= (or b!981816 b!981812 b!981813) bm!63162))

(assert (=> bm!63162 m!1180511))

(declare-fun m!1180515 () Bool)

(assert (=> b!981815 m!1180515))

(declare-fun m!1180517 () Bool)

(assert (=> b!981818 m!1180517))

(assert (=> b!981807 m!1180517))

(assert (=> b!981807 m!1180517))

(declare-fun m!1180519 () Bool)

(assert (=> b!981807 m!1180519))

(declare-fun m!1180521 () Bool)

(assert (=> b!981807 m!1180521))

(assert (=> b!981807 m!1180519))

(assert (=> b!981807 m!1180521))

(declare-fun m!1180523 () Bool)

(assert (=> b!981807 m!1180523))

(assert (=> b!981808 m!1180521))

(assert (=> b!981808 m!1180521))

(declare-fun m!1180525 () Bool)

(assert (=> b!981808 m!1180525))

(assert (=> b!981817 m!1180521))

(assert (=> b!981817 m!1180521))

(assert (=> b!981817 m!1180525))

(assert (=> b!981814 m!1180517))

(assert (=> d!288344 m!1180511))

(assert (=> d!288344 m!1180449))

(assert (=> b!981532 d!288344))

(declare-fun d!288346 () Bool)

(assert (=> d!288346 (= (matchR!1273 r!15766 s!10566) (matchRSpec!536 r!15766 s!10566))))

(declare-fun lt!350097 () Unit!15133)

(declare-fun choose!6223 (Regex!2737 List!9967) Unit!15133)

(assert (=> d!288346 (= lt!350097 (choose!6223 r!15766 s!10566))))

(assert (=> d!288346 (validRegex!1206 r!15766)))

(assert (=> d!288346 (= (mainMatchTheorem!536 r!15766 s!10566) lt!350097)))

(declare-fun bs!243947 () Bool)

(assert (= bs!243947 d!288346))

(assert (=> bs!243947 m!1180455))

(assert (=> bs!243947 m!1180453))

(declare-fun m!1180527 () Bool)

(assert (=> bs!243947 m!1180527))

(assert (=> bs!243947 m!1180449))

(assert (=> b!981532 d!288346))

(declare-fun b!981821 () Bool)

(declare-fun res!445545 () Bool)

(declare-fun e!631596 () Bool)

(assert (=> b!981821 (=> (not res!445545) (not e!631596))))

(declare-fun call!63168 () Bool)

(assert (=> b!981821 (= res!445545 call!63168)))

(declare-fun e!631590 () Bool)

(assert (=> b!981821 (= e!631590 e!631596)))

(declare-fun bm!63163 () Bool)

(declare-fun call!63169 () Bool)

(assert (=> bm!63163 (= call!63168 call!63169)))

(declare-fun b!981822 () Bool)

(declare-fun res!445544 () Bool)

(declare-fun e!631591 () Bool)

(assert (=> b!981822 (=> res!445544 e!631591)))

(assert (=> b!981822 (= res!445544 (not ((_ is Concat!4570) (regOne!5986 r!15766))))))

(assert (=> b!981822 (= e!631590 e!631591)))

(declare-fun b!981823 () Bool)

(declare-fun e!631594 () Bool)

(assert (=> b!981823 (= e!631594 call!63169)))

(declare-fun b!981824 () Bool)

(declare-fun e!631593 () Bool)

(assert (=> b!981824 (= e!631593 e!631594)))

(declare-fun res!445541 () Bool)

(assert (=> b!981824 (= res!445541 (not (nullable!853 (reg!3066 (regOne!5986 r!15766)))))))

(assert (=> b!981824 (=> (not res!445541) (not e!631594))))

(declare-fun b!981825 () Bool)

(declare-fun e!631595 () Bool)

(assert (=> b!981825 (= e!631595 e!631593)))

(declare-fun c!160572 () Bool)

(assert (=> b!981825 (= c!160572 ((_ is Star!2737) (regOne!5986 r!15766)))))

(declare-fun b!981826 () Bool)

(declare-fun e!631592 () Bool)

(assert (=> b!981826 (= e!631591 e!631592)))

(declare-fun res!445543 () Bool)

(assert (=> b!981826 (=> (not res!445543) (not e!631592))))

(assert (=> b!981826 (= res!445543 call!63168)))

(declare-fun b!981827 () Bool)

(assert (=> b!981827 (= e!631593 e!631590)))

(declare-fun c!160571 () Bool)

(assert (=> b!981827 (= c!160571 ((_ is Union!2737) (regOne!5986 r!15766)))))

(declare-fun bm!63164 () Bool)

(assert (=> bm!63164 (= call!63169 (validRegex!1206 (ite c!160572 (reg!3066 (regOne!5986 r!15766)) (ite c!160571 (regOne!5987 (regOne!5986 r!15766)) (regOne!5986 (regOne!5986 r!15766))))))))

(declare-fun d!288348 () Bool)

(declare-fun res!445542 () Bool)

(assert (=> d!288348 (=> res!445542 e!631595)))

(assert (=> d!288348 (= res!445542 ((_ is ElementMatch!2737) (regOne!5986 r!15766)))))

(assert (=> d!288348 (= (validRegex!1206 (regOne!5986 r!15766)) e!631595)))

(declare-fun b!981828 () Bool)

(declare-fun call!63170 () Bool)

(assert (=> b!981828 (= e!631596 call!63170)))

(declare-fun b!981829 () Bool)

(assert (=> b!981829 (= e!631592 call!63170)))

(declare-fun bm!63165 () Bool)

(assert (=> bm!63165 (= call!63170 (validRegex!1206 (ite c!160571 (regTwo!5987 (regOne!5986 r!15766)) (regTwo!5986 (regOne!5986 r!15766)))))))

(assert (= (and d!288348 (not res!445542)) b!981825))

(assert (= (and b!981825 c!160572) b!981824))

(assert (= (and b!981825 (not c!160572)) b!981827))

(assert (= (and b!981824 res!445541) b!981823))

(assert (= (and b!981827 c!160571) b!981821))

(assert (= (and b!981827 (not c!160571)) b!981822))

(assert (= (and b!981821 res!445545) b!981828))

(assert (= (and b!981822 (not res!445544)) b!981826))

(assert (= (and b!981826 res!445543) b!981829))

(assert (= (or b!981828 b!981829) bm!63165))

(assert (= (or b!981821 b!981826) bm!63163))

(assert (= (or b!981823 bm!63163) bm!63164))

(declare-fun m!1180529 () Bool)

(assert (=> b!981824 m!1180529))

(declare-fun m!1180531 () Bool)

(assert (=> bm!63164 m!1180531))

(declare-fun m!1180533 () Bool)

(assert (=> bm!63165 m!1180533))

(assert (=> b!981531 d!288348))

(declare-fun b!981830 () Bool)

(declare-fun res!445550 () Bool)

(declare-fun e!631603 () Bool)

(assert (=> b!981830 (=> (not res!445550) (not e!631603))))

(declare-fun call!63171 () Bool)

(assert (=> b!981830 (= res!445550 call!63171)))

(declare-fun e!631597 () Bool)

(assert (=> b!981830 (= e!631597 e!631603)))

(declare-fun bm!63166 () Bool)

(declare-fun call!63172 () Bool)

(assert (=> bm!63166 (= call!63171 call!63172)))

(declare-fun b!981831 () Bool)

(declare-fun res!445549 () Bool)

(declare-fun e!631598 () Bool)

(assert (=> b!981831 (=> res!445549 e!631598)))

(assert (=> b!981831 (= res!445549 (not ((_ is Concat!4570) (regTwo!5986 r!15766))))))

(assert (=> b!981831 (= e!631597 e!631598)))

(declare-fun b!981832 () Bool)

(declare-fun e!631601 () Bool)

(assert (=> b!981832 (= e!631601 call!63172)))

(declare-fun b!981833 () Bool)

(declare-fun e!631600 () Bool)

(assert (=> b!981833 (= e!631600 e!631601)))

(declare-fun res!445546 () Bool)

(assert (=> b!981833 (= res!445546 (not (nullable!853 (reg!3066 (regTwo!5986 r!15766)))))))

(assert (=> b!981833 (=> (not res!445546) (not e!631601))))

(declare-fun b!981834 () Bool)

(declare-fun e!631602 () Bool)

(assert (=> b!981834 (= e!631602 e!631600)))

(declare-fun c!160574 () Bool)

(assert (=> b!981834 (= c!160574 ((_ is Star!2737) (regTwo!5986 r!15766)))))

(declare-fun b!981835 () Bool)

(declare-fun e!631599 () Bool)

(assert (=> b!981835 (= e!631598 e!631599)))

(declare-fun res!445548 () Bool)

(assert (=> b!981835 (=> (not res!445548) (not e!631599))))

(assert (=> b!981835 (= res!445548 call!63171)))

(declare-fun b!981836 () Bool)

(assert (=> b!981836 (= e!631600 e!631597)))

(declare-fun c!160573 () Bool)

(assert (=> b!981836 (= c!160573 ((_ is Union!2737) (regTwo!5986 r!15766)))))

(declare-fun bm!63167 () Bool)

(assert (=> bm!63167 (= call!63172 (validRegex!1206 (ite c!160574 (reg!3066 (regTwo!5986 r!15766)) (ite c!160573 (regOne!5987 (regTwo!5986 r!15766)) (regOne!5986 (regTwo!5986 r!15766))))))))

(declare-fun d!288350 () Bool)

(declare-fun res!445547 () Bool)

(assert (=> d!288350 (=> res!445547 e!631602)))

(assert (=> d!288350 (= res!445547 ((_ is ElementMatch!2737) (regTwo!5986 r!15766)))))

(assert (=> d!288350 (= (validRegex!1206 (regTwo!5986 r!15766)) e!631602)))

(declare-fun b!981837 () Bool)

(declare-fun call!63173 () Bool)

(assert (=> b!981837 (= e!631603 call!63173)))

(declare-fun b!981838 () Bool)

(assert (=> b!981838 (= e!631599 call!63173)))

(declare-fun bm!63168 () Bool)

(assert (=> bm!63168 (= call!63173 (validRegex!1206 (ite c!160573 (regTwo!5987 (regTwo!5986 r!15766)) (regTwo!5986 (regTwo!5986 r!15766)))))))

(assert (= (and d!288350 (not res!445547)) b!981834))

(assert (= (and b!981834 c!160574) b!981833))

(assert (= (and b!981834 (not c!160574)) b!981836))

(assert (= (and b!981833 res!445546) b!981832))

(assert (= (and b!981836 c!160573) b!981830))

(assert (= (and b!981836 (not c!160573)) b!981831))

(assert (= (and b!981830 res!445550) b!981837))

(assert (= (and b!981831 (not res!445549)) b!981835))

(assert (= (and b!981835 res!445548) b!981838))

(assert (= (or b!981837 b!981838) bm!63168))

(assert (= (or b!981830 b!981835) bm!63166))

(assert (= (or b!981832 bm!63166) bm!63167))

(declare-fun m!1180535 () Bool)

(assert (=> b!981833 m!1180535))

(declare-fun m!1180537 () Bool)

(assert (=> bm!63167 m!1180537))

(declare-fun m!1180539 () Bool)

(assert (=> bm!63168 m!1180539))

(assert (=> b!981534 d!288350))

(declare-fun b!981843 () Bool)

(declare-fun e!631606 () Bool)

(declare-fun tp!299945 () Bool)

(assert (=> b!981843 (= e!631606 (and tp_is_empty!5117 tp!299945))))

(assert (=> b!981533 (= tp!299900 e!631606)))

(assert (= (and b!981533 ((_ is Cons!9951) (t!101013 s!10566))) b!981843))

(declare-fun b!981854 () Bool)

(declare-fun e!631609 () Bool)

(assert (=> b!981854 (= e!631609 tp_is_empty!5117)))

(declare-fun b!981857 () Bool)

(declare-fun tp!299959 () Bool)

(declare-fun tp!299960 () Bool)

(assert (=> b!981857 (= e!631609 (and tp!299959 tp!299960))))

(declare-fun b!981856 () Bool)

(declare-fun tp!299956 () Bool)

(assert (=> b!981856 (= e!631609 tp!299956)))

(assert (=> b!981535 (= tp!299904 e!631609)))

(declare-fun b!981855 () Bool)

(declare-fun tp!299958 () Bool)

(declare-fun tp!299957 () Bool)

(assert (=> b!981855 (= e!631609 (and tp!299958 tp!299957))))

(assert (= (and b!981535 ((_ is ElementMatch!2737) (regOne!5987 r!15766))) b!981854))

(assert (= (and b!981535 ((_ is Concat!4570) (regOne!5987 r!15766))) b!981855))

(assert (= (and b!981535 ((_ is Star!2737) (regOne!5987 r!15766))) b!981856))

(assert (= (and b!981535 ((_ is Union!2737) (regOne!5987 r!15766))) b!981857))

(declare-fun b!981858 () Bool)

(declare-fun e!631610 () Bool)

(assert (=> b!981858 (= e!631610 tp_is_empty!5117)))

(declare-fun b!981861 () Bool)

(declare-fun tp!299964 () Bool)

(declare-fun tp!299965 () Bool)

(assert (=> b!981861 (= e!631610 (and tp!299964 tp!299965))))

(declare-fun b!981860 () Bool)

(declare-fun tp!299961 () Bool)

(assert (=> b!981860 (= e!631610 tp!299961)))

(assert (=> b!981535 (= tp!299899 e!631610)))

(declare-fun b!981859 () Bool)

(declare-fun tp!299963 () Bool)

(declare-fun tp!299962 () Bool)

(assert (=> b!981859 (= e!631610 (and tp!299963 tp!299962))))

(assert (= (and b!981535 ((_ is ElementMatch!2737) (regTwo!5987 r!15766))) b!981858))

(assert (= (and b!981535 ((_ is Concat!4570) (regTwo!5987 r!15766))) b!981859))

(assert (= (and b!981535 ((_ is Star!2737) (regTwo!5987 r!15766))) b!981860))

(assert (= (and b!981535 ((_ is Union!2737) (regTwo!5987 r!15766))) b!981861))

(declare-fun b!981862 () Bool)

(declare-fun e!631611 () Bool)

(assert (=> b!981862 (= e!631611 tp_is_empty!5117)))

(declare-fun b!981865 () Bool)

(declare-fun tp!299969 () Bool)

(declare-fun tp!299970 () Bool)

(assert (=> b!981865 (= e!631611 (and tp!299969 tp!299970))))

(declare-fun b!981864 () Bool)

(declare-fun tp!299966 () Bool)

(assert (=> b!981864 (= e!631611 tp!299966)))

(assert (=> b!981530 (= tp!299902 e!631611)))

(declare-fun b!981863 () Bool)

(declare-fun tp!299968 () Bool)

(declare-fun tp!299967 () Bool)

(assert (=> b!981863 (= e!631611 (and tp!299968 tp!299967))))

(assert (= (and b!981530 ((_ is ElementMatch!2737) (reg!3066 r!15766))) b!981862))

(assert (= (and b!981530 ((_ is Concat!4570) (reg!3066 r!15766))) b!981863))

(assert (= (and b!981530 ((_ is Star!2737) (reg!3066 r!15766))) b!981864))

(assert (= (and b!981530 ((_ is Union!2737) (reg!3066 r!15766))) b!981865))

(declare-fun b!981866 () Bool)

(declare-fun e!631612 () Bool)

(assert (=> b!981866 (= e!631612 tp_is_empty!5117)))

(declare-fun b!981869 () Bool)

(declare-fun tp!299974 () Bool)

(declare-fun tp!299975 () Bool)

(assert (=> b!981869 (= e!631612 (and tp!299974 tp!299975))))

(declare-fun b!981868 () Bool)

(declare-fun tp!299971 () Bool)

(assert (=> b!981868 (= e!631612 tp!299971)))

(assert (=> b!981529 (= tp!299901 e!631612)))

(declare-fun b!981867 () Bool)

(declare-fun tp!299973 () Bool)

(declare-fun tp!299972 () Bool)

(assert (=> b!981867 (= e!631612 (and tp!299973 tp!299972))))

(assert (= (and b!981529 ((_ is ElementMatch!2737) (regOne!5986 r!15766))) b!981866))

(assert (= (and b!981529 ((_ is Concat!4570) (regOne!5986 r!15766))) b!981867))

(assert (= (and b!981529 ((_ is Star!2737) (regOne!5986 r!15766))) b!981868))

(assert (= (and b!981529 ((_ is Union!2737) (regOne!5986 r!15766))) b!981869))

(declare-fun b!981870 () Bool)

(declare-fun e!631613 () Bool)

(assert (=> b!981870 (= e!631613 tp_is_empty!5117)))

(declare-fun b!981873 () Bool)

(declare-fun tp!299979 () Bool)

(declare-fun tp!299980 () Bool)

(assert (=> b!981873 (= e!631613 (and tp!299979 tp!299980))))

(declare-fun b!981872 () Bool)

(declare-fun tp!299976 () Bool)

(assert (=> b!981872 (= e!631613 tp!299976)))

(assert (=> b!981529 (= tp!299903 e!631613)))

(declare-fun b!981871 () Bool)

(declare-fun tp!299978 () Bool)

(declare-fun tp!299977 () Bool)

(assert (=> b!981871 (= e!631613 (and tp!299978 tp!299977))))

(assert (= (and b!981529 ((_ is ElementMatch!2737) (regTwo!5986 r!15766))) b!981870))

(assert (= (and b!981529 ((_ is Concat!4570) (regTwo!5986 r!15766))) b!981871))

(assert (= (and b!981529 ((_ is Star!2737) (regTwo!5986 r!15766))) b!981872))

(assert (= (and b!981529 ((_ is Union!2737) (regTwo!5986 r!15766))) b!981873))

(check-sat (not b!981855) (not b!981872) (not bm!63140) (not b!981865) (not b!981873) (not b!981856) (not b!981864) tp_is_empty!5117 (not bm!63165) (not b!981818) (not b!981859) (not b!981860) (not b!981868) (not b!981861) (not bm!63162) (not bm!63159) (not d!288346) (not bm!63167) (not b!981817) (not b!981773) (not b!981867) (not bm!63164) (not d!288344) (not b!981843) (not b!981815) (not b!981824) (not b!981808) (not b!981857) (not bm!63141) (not b!981807) (not b!981593) (not b!981814) (not b!981833) (not b!981871) (not bm!63158) (not b!981769) (not bm!63168) (not b!981863) (not b!981869))
(check-sat)
