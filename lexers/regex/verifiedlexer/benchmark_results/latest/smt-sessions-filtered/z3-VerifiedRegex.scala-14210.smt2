; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744354 () Bool)

(assert start!744354)

(declare-fun b!7885413 () Bool)

(declare-fun res!3130472 () Bool)

(declare-fun e!4655755 () Bool)

(assert (=> b!7885413 (=> (not res!3130472) (not e!4655755))))

(declare-datatypes ((C!42712 0))(
  ( (C!42713 (val!31818 Int)) )
))
(declare-datatypes ((Regex!21193 0))(
  ( (ElementMatch!21193 (c!1447625 C!42712)) (Concat!30038 (regOne!42898 Regex!21193) (regTwo!42898 Regex!21193)) (EmptyExpr!21193) (Star!21193 (reg!21522 Regex!21193)) (EmptyLang!21193) (Union!21193 (regOne!42899 Regex!21193) (regTwo!42899 Regex!21193)) )
))
(declare-fun r!14100 () Regex!21193)

(get-info :version)

(assert (=> b!7885413 (= res!3130472 (and (not ((_ is EmptyExpr!21193) r!14100)) (not ((_ is EmptyLang!21193) r!14100)) (not ((_ is ElementMatch!21193) r!14100)) ((_ is Union!21193) r!14100)))))

(declare-fun b!7885414 () Bool)

(declare-fun e!4655754 () Bool)

(declare-fun tp!2345596 () Bool)

(declare-fun tp!2345593 () Bool)

(assert (=> b!7885414 (= e!4655754 (and tp!2345596 tp!2345593))))

(declare-fun res!3130471 () Bool)

(assert (=> start!744354 (=> (not res!3130471) (not e!4655755))))

(declare-fun validRegex!11603 (Regex!21193) Bool)

(assert (=> start!744354 (= res!3130471 (validRegex!11603 r!14100))))

(assert (=> start!744354 e!4655755))

(assert (=> start!744354 e!4655754))

(declare-fun b!7885415 () Bool)

(declare-fun tp!2345592 () Bool)

(declare-fun tp!2345595 () Bool)

(assert (=> b!7885415 (= e!4655754 (and tp!2345592 tp!2345595))))

(declare-fun b!7885416 () Bool)

(declare-fun tp!2345594 () Bool)

(assert (=> b!7885416 (= e!4655754 tp!2345594)))

(declare-fun b!7885417 () Bool)

(declare-fun tp_is_empty!52785 () Bool)

(assert (=> b!7885417 (= e!4655754 tp_is_empty!52785)))

(declare-fun b!7885418 () Bool)

(assert (=> b!7885418 (= e!4655755 (not (validRegex!11603 (regOne!42899 r!14100))))))

(assert (= (and start!744354 res!3130471) b!7885413))

(assert (= (and b!7885413 res!3130472) b!7885418))

(assert (= (and start!744354 ((_ is ElementMatch!21193) r!14100)) b!7885417))

(assert (= (and start!744354 ((_ is Concat!30038) r!14100)) b!7885415))

(assert (= (and start!744354 ((_ is Star!21193) r!14100)) b!7885416))

(assert (= (and start!744354 ((_ is Union!21193) r!14100)) b!7885414))

(declare-fun m!8269048 () Bool)

(assert (=> start!744354 m!8269048))

(declare-fun m!8269050 () Bool)

(assert (=> b!7885418 m!8269050))

(check-sat (not b!7885414) (not b!7885415) (not b!7885418) tp_is_empty!52785 (not b!7885416) (not start!744354))
(check-sat)
(get-model)

(declare-fun b!7885503 () Bool)

(declare-fun res!3130503 () Bool)

(declare-fun e!4655805 () Bool)

(assert (=> b!7885503 (=> (not res!3130503) (not e!4655805))))

(declare-fun call!731449 () Bool)

(assert (=> b!7885503 (= res!3130503 call!731449)))

(declare-fun e!4655810 () Bool)

(assert (=> b!7885503 (= e!4655810 e!4655805)))

(declare-fun bm!731442 () Bool)

(declare-fun call!731447 () Bool)

(assert (=> bm!731442 (= call!731449 call!731447)))

(declare-fun b!7885504 () Bool)

(declare-fun e!4655807 () Bool)

(assert (=> b!7885504 (= e!4655807 call!731447)))

(declare-fun b!7885505 () Bool)

(declare-fun res!3130504 () Bool)

(declare-fun e!4655811 () Bool)

(assert (=> b!7885505 (=> res!3130504 e!4655811)))

(assert (=> b!7885505 (= res!3130504 (not ((_ is Concat!30038) r!14100)))))

(assert (=> b!7885505 (= e!4655810 e!4655811)))

(declare-fun c!1447638 () Bool)

(declare-fun bm!731443 () Bool)

(declare-fun c!1447639 () Bool)

(assert (=> bm!731443 (= call!731447 (validRegex!11603 (ite c!1447638 (reg!21522 r!14100) (ite c!1447639 (regOne!42899 r!14100) (regTwo!42898 r!14100)))))))

(declare-fun b!7885506 () Bool)

(declare-fun e!4655808 () Bool)

(assert (=> b!7885506 (= e!4655808 call!731449)))

(declare-fun b!7885508 () Bool)

(declare-fun e!4655809 () Bool)

(assert (=> b!7885508 (= e!4655809 e!4655807)))

(declare-fun res!3130506 () Bool)

(declare-fun nullable!9451 (Regex!21193) Bool)

(assert (=> b!7885508 (= res!3130506 (not (nullable!9451 (reg!21522 r!14100))))))

(assert (=> b!7885508 (=> (not res!3130506) (not e!4655807))))

(declare-fun bm!731444 () Bool)

(declare-fun call!731448 () Bool)

(assert (=> bm!731444 (= call!731448 (validRegex!11603 (ite c!1447639 (regTwo!42899 r!14100) (regOne!42898 r!14100))))))

(declare-fun b!7885509 () Bool)

(assert (=> b!7885509 (= e!4655809 e!4655810)))

(assert (=> b!7885509 (= c!1447639 ((_ is Union!21193) r!14100))))

(declare-fun b!7885510 () Bool)

(assert (=> b!7885510 (= e!4655805 call!731448)))

(declare-fun b!7885511 () Bool)

(assert (=> b!7885511 (= e!4655811 e!4655808)))

(declare-fun res!3130505 () Bool)

(assert (=> b!7885511 (=> (not res!3130505) (not e!4655808))))

(assert (=> b!7885511 (= res!3130505 call!731448)))

(declare-fun d!2356449 () Bool)

(declare-fun res!3130507 () Bool)

(declare-fun e!4655806 () Bool)

(assert (=> d!2356449 (=> res!3130507 e!4655806)))

(assert (=> d!2356449 (= res!3130507 ((_ is ElementMatch!21193) r!14100))))

(assert (=> d!2356449 (= (validRegex!11603 r!14100) e!4655806)))

(declare-fun b!7885507 () Bool)

(assert (=> b!7885507 (= e!4655806 e!4655809)))

(assert (=> b!7885507 (= c!1447638 ((_ is Star!21193) r!14100))))

(assert (= (and d!2356449 (not res!3130507)) b!7885507))

(assert (= (and b!7885507 c!1447638) b!7885508))

(assert (= (and b!7885507 (not c!1447638)) b!7885509))

(assert (= (and b!7885508 res!3130506) b!7885504))

(assert (= (and b!7885509 c!1447639) b!7885503))

(assert (= (and b!7885509 (not c!1447639)) b!7885505))

(assert (= (and b!7885503 res!3130503) b!7885510))

(assert (= (and b!7885505 (not res!3130504)) b!7885511))

(assert (= (and b!7885511 res!3130505) b!7885506))

(assert (= (or b!7885510 b!7885511) bm!731444))

(assert (= (or b!7885503 b!7885506) bm!731442))

(assert (= (or b!7885504 bm!731442) bm!731443))

(declare-fun m!8269064 () Bool)

(assert (=> bm!731443 m!8269064))

(declare-fun m!8269066 () Bool)

(assert (=> b!7885508 m!8269066))

(declare-fun m!8269068 () Bool)

(assert (=> bm!731444 m!8269068))

(assert (=> start!744354 d!2356449))

(declare-fun b!7885512 () Bool)

(declare-fun res!3130508 () Bool)

(declare-fun e!4655812 () Bool)

(assert (=> b!7885512 (=> (not res!3130508) (not e!4655812))))

(declare-fun call!731452 () Bool)

(assert (=> b!7885512 (= res!3130508 call!731452)))

(declare-fun e!4655817 () Bool)

(assert (=> b!7885512 (= e!4655817 e!4655812)))

(declare-fun bm!731445 () Bool)

(declare-fun call!731450 () Bool)

(assert (=> bm!731445 (= call!731452 call!731450)))

(declare-fun b!7885513 () Bool)

(declare-fun e!4655814 () Bool)

(assert (=> b!7885513 (= e!4655814 call!731450)))

(declare-fun b!7885514 () Bool)

(declare-fun res!3130509 () Bool)

(declare-fun e!4655818 () Bool)

(assert (=> b!7885514 (=> res!3130509 e!4655818)))

(assert (=> b!7885514 (= res!3130509 (not ((_ is Concat!30038) (regOne!42899 r!14100))))))

(assert (=> b!7885514 (= e!4655817 e!4655818)))

(declare-fun c!1447640 () Bool)

(declare-fun bm!731446 () Bool)

(declare-fun c!1447641 () Bool)

(assert (=> bm!731446 (= call!731450 (validRegex!11603 (ite c!1447640 (reg!21522 (regOne!42899 r!14100)) (ite c!1447641 (regOne!42899 (regOne!42899 r!14100)) (regTwo!42898 (regOne!42899 r!14100))))))))

(declare-fun b!7885515 () Bool)

(declare-fun e!4655815 () Bool)

(assert (=> b!7885515 (= e!4655815 call!731452)))

(declare-fun b!7885517 () Bool)

(declare-fun e!4655816 () Bool)

(assert (=> b!7885517 (= e!4655816 e!4655814)))

(declare-fun res!3130511 () Bool)

(assert (=> b!7885517 (= res!3130511 (not (nullable!9451 (reg!21522 (regOne!42899 r!14100)))))))

(assert (=> b!7885517 (=> (not res!3130511) (not e!4655814))))

(declare-fun bm!731447 () Bool)

(declare-fun call!731451 () Bool)

(assert (=> bm!731447 (= call!731451 (validRegex!11603 (ite c!1447641 (regTwo!42899 (regOne!42899 r!14100)) (regOne!42898 (regOne!42899 r!14100)))))))

(declare-fun b!7885518 () Bool)

(assert (=> b!7885518 (= e!4655816 e!4655817)))

(assert (=> b!7885518 (= c!1447641 ((_ is Union!21193) (regOne!42899 r!14100)))))

(declare-fun b!7885519 () Bool)

(assert (=> b!7885519 (= e!4655812 call!731451)))

(declare-fun b!7885520 () Bool)

(assert (=> b!7885520 (= e!4655818 e!4655815)))

(declare-fun res!3130510 () Bool)

(assert (=> b!7885520 (=> (not res!3130510) (not e!4655815))))

(assert (=> b!7885520 (= res!3130510 call!731451)))

(declare-fun d!2356453 () Bool)

(declare-fun res!3130512 () Bool)

(declare-fun e!4655813 () Bool)

(assert (=> d!2356453 (=> res!3130512 e!4655813)))

(assert (=> d!2356453 (= res!3130512 ((_ is ElementMatch!21193) (regOne!42899 r!14100)))))

(assert (=> d!2356453 (= (validRegex!11603 (regOne!42899 r!14100)) e!4655813)))

(declare-fun b!7885516 () Bool)

(assert (=> b!7885516 (= e!4655813 e!4655816)))

(assert (=> b!7885516 (= c!1447640 ((_ is Star!21193) (regOne!42899 r!14100)))))

(assert (= (and d!2356453 (not res!3130512)) b!7885516))

(assert (= (and b!7885516 c!1447640) b!7885517))

(assert (= (and b!7885516 (not c!1447640)) b!7885518))

(assert (= (and b!7885517 res!3130511) b!7885513))

(assert (= (and b!7885518 c!1447641) b!7885512))

(assert (= (and b!7885518 (not c!1447641)) b!7885514))

(assert (= (and b!7885512 res!3130508) b!7885519))

(assert (= (and b!7885514 (not res!3130509)) b!7885520))

(assert (= (and b!7885520 res!3130510) b!7885515))

(assert (= (or b!7885519 b!7885520) bm!731447))

(assert (= (or b!7885512 b!7885515) bm!731445))

(assert (= (or b!7885513 bm!731445) bm!731446))

(declare-fun m!8269070 () Bool)

(assert (=> bm!731446 m!8269070))

(declare-fun m!8269072 () Bool)

(assert (=> b!7885517 m!8269072))

(declare-fun m!8269074 () Bool)

(assert (=> bm!731447 m!8269074))

(assert (=> b!7885418 d!2356453))

(declare-fun b!7885532 () Bool)

(declare-fun e!4655821 () Bool)

(declare-fun tp!2345642 () Bool)

(declare-fun tp!2345643 () Bool)

(assert (=> b!7885532 (= e!4655821 (and tp!2345642 tp!2345643))))

(declare-fun b!7885534 () Bool)

(declare-fun tp!2345644 () Bool)

(declare-fun tp!2345646 () Bool)

(assert (=> b!7885534 (= e!4655821 (and tp!2345644 tp!2345646))))

(declare-fun b!7885533 () Bool)

(declare-fun tp!2345645 () Bool)

(assert (=> b!7885533 (= e!4655821 tp!2345645)))

(assert (=> b!7885414 (= tp!2345596 e!4655821)))

(declare-fun b!7885531 () Bool)

(assert (=> b!7885531 (= e!4655821 tp_is_empty!52785)))

(assert (= (and b!7885414 ((_ is ElementMatch!21193) (regOne!42899 r!14100))) b!7885531))

(assert (= (and b!7885414 ((_ is Concat!30038) (regOne!42899 r!14100))) b!7885532))

(assert (= (and b!7885414 ((_ is Star!21193) (regOne!42899 r!14100))) b!7885533))

(assert (= (and b!7885414 ((_ is Union!21193) (regOne!42899 r!14100))) b!7885534))

(declare-fun b!7885536 () Bool)

(declare-fun e!4655822 () Bool)

(declare-fun tp!2345647 () Bool)

(declare-fun tp!2345648 () Bool)

(assert (=> b!7885536 (= e!4655822 (and tp!2345647 tp!2345648))))

(declare-fun b!7885538 () Bool)

(declare-fun tp!2345649 () Bool)

(declare-fun tp!2345651 () Bool)

(assert (=> b!7885538 (= e!4655822 (and tp!2345649 tp!2345651))))

(declare-fun b!7885537 () Bool)

(declare-fun tp!2345650 () Bool)

(assert (=> b!7885537 (= e!4655822 tp!2345650)))

(assert (=> b!7885414 (= tp!2345593 e!4655822)))

(declare-fun b!7885535 () Bool)

(assert (=> b!7885535 (= e!4655822 tp_is_empty!52785)))

(assert (= (and b!7885414 ((_ is ElementMatch!21193) (regTwo!42899 r!14100))) b!7885535))

(assert (= (and b!7885414 ((_ is Concat!30038) (regTwo!42899 r!14100))) b!7885536))

(assert (= (and b!7885414 ((_ is Star!21193) (regTwo!42899 r!14100))) b!7885537))

(assert (= (and b!7885414 ((_ is Union!21193) (regTwo!42899 r!14100))) b!7885538))

(declare-fun b!7885540 () Bool)

(declare-fun e!4655823 () Bool)

(declare-fun tp!2345652 () Bool)

(declare-fun tp!2345653 () Bool)

(assert (=> b!7885540 (= e!4655823 (and tp!2345652 tp!2345653))))

(declare-fun b!7885542 () Bool)

(declare-fun tp!2345654 () Bool)

(declare-fun tp!2345656 () Bool)

(assert (=> b!7885542 (= e!4655823 (and tp!2345654 tp!2345656))))

(declare-fun b!7885541 () Bool)

(declare-fun tp!2345655 () Bool)

(assert (=> b!7885541 (= e!4655823 tp!2345655)))

(assert (=> b!7885415 (= tp!2345592 e!4655823)))

(declare-fun b!7885539 () Bool)

(assert (=> b!7885539 (= e!4655823 tp_is_empty!52785)))

(assert (= (and b!7885415 ((_ is ElementMatch!21193) (regOne!42898 r!14100))) b!7885539))

(assert (= (and b!7885415 ((_ is Concat!30038) (regOne!42898 r!14100))) b!7885540))

(assert (= (and b!7885415 ((_ is Star!21193) (regOne!42898 r!14100))) b!7885541))

(assert (= (and b!7885415 ((_ is Union!21193) (regOne!42898 r!14100))) b!7885542))

(declare-fun b!7885544 () Bool)

(declare-fun e!4655824 () Bool)

(declare-fun tp!2345657 () Bool)

(declare-fun tp!2345658 () Bool)

(assert (=> b!7885544 (= e!4655824 (and tp!2345657 tp!2345658))))

(declare-fun b!7885546 () Bool)

(declare-fun tp!2345659 () Bool)

(declare-fun tp!2345661 () Bool)

(assert (=> b!7885546 (= e!4655824 (and tp!2345659 tp!2345661))))

(declare-fun b!7885545 () Bool)

(declare-fun tp!2345660 () Bool)

(assert (=> b!7885545 (= e!4655824 tp!2345660)))

(assert (=> b!7885415 (= tp!2345595 e!4655824)))

(declare-fun b!7885543 () Bool)

(assert (=> b!7885543 (= e!4655824 tp_is_empty!52785)))

(assert (= (and b!7885415 ((_ is ElementMatch!21193) (regTwo!42898 r!14100))) b!7885543))

(assert (= (and b!7885415 ((_ is Concat!30038) (regTwo!42898 r!14100))) b!7885544))

(assert (= (and b!7885415 ((_ is Star!21193) (regTwo!42898 r!14100))) b!7885545))

(assert (= (and b!7885415 ((_ is Union!21193) (regTwo!42898 r!14100))) b!7885546))

(declare-fun b!7885548 () Bool)

(declare-fun e!4655825 () Bool)

(declare-fun tp!2345662 () Bool)

(declare-fun tp!2345663 () Bool)

(assert (=> b!7885548 (= e!4655825 (and tp!2345662 tp!2345663))))

(declare-fun b!7885550 () Bool)

(declare-fun tp!2345664 () Bool)

(declare-fun tp!2345666 () Bool)

(assert (=> b!7885550 (= e!4655825 (and tp!2345664 tp!2345666))))

(declare-fun b!7885549 () Bool)

(declare-fun tp!2345665 () Bool)

(assert (=> b!7885549 (= e!4655825 tp!2345665)))

(assert (=> b!7885416 (= tp!2345594 e!4655825)))

(declare-fun b!7885547 () Bool)

(assert (=> b!7885547 (= e!4655825 tp_is_empty!52785)))

(assert (= (and b!7885416 ((_ is ElementMatch!21193) (reg!21522 r!14100))) b!7885547))

(assert (= (and b!7885416 ((_ is Concat!30038) (reg!21522 r!14100))) b!7885548))

(assert (= (and b!7885416 ((_ is Star!21193) (reg!21522 r!14100))) b!7885549))

(assert (= (and b!7885416 ((_ is Union!21193) (reg!21522 r!14100))) b!7885550))

(check-sat (not bm!731446) (not b!7885542) tp_is_empty!52785 (not b!7885538) (not b!7885546) (not b!7885532) (not bm!731444) (not bm!731443) (not b!7885508) (not b!7885536) (not b!7885537) (not b!7885549) (not b!7885545) (not b!7885540) (not b!7885544) (not bm!731447) (not b!7885517) (not b!7885534) (not b!7885550) (not b!7885533) (not b!7885541) (not b!7885548))
(check-sat)
