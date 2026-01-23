; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349566 () Bool)

(assert start!349566)

(declare-fun b!3706424 () Bool)

(declare-fun e!2295992 () Bool)

(declare-fun tp!1127644 () Bool)

(assert (=> b!3706424 (= e!2295992 tp!1127644)))

(declare-fun b!3706425 () Bool)

(declare-fun tp!1127639 () Bool)

(declare-fun tp!1127640 () Bool)

(assert (=> b!3706425 (= e!2295992 (and tp!1127639 tp!1127640))))

(declare-fun res!1507816 () Bool)

(declare-fun e!2295994 () Bool)

(assert (=> start!349566 (=> (not res!1507816) (not e!2295994))))

(declare-datatypes ((C!21808 0))(
  ( (C!21809 (val!12952 Int)) )
))
(declare-datatypes ((Regex!10811 0))(
  ( (ElementMatch!10811 (c!640105 C!21808)) (Concat!17082 (regOne!22134 Regex!10811) (regTwo!22134 Regex!10811)) (EmptyExpr!10811) (Star!10811 (reg!11140 Regex!10811)) (EmptyLang!10811) (Union!10811 (regOne!22135 Regex!10811) (regTwo!22135 Regex!10811)) )
))
(declare-fun r!25965 () Regex!10811)

(declare-fun validRegex!4918 (Regex!10811) Bool)

(assert (=> start!349566 (= res!1507816 (validRegex!4918 r!25965))))

(assert (=> start!349566 e!2295994))

(assert (=> start!349566 e!2295992))

(declare-fun e!2295993 () Bool)

(assert (=> start!349566 e!2295993))

(declare-fun tp_is_empty!18637 () Bool)

(assert (=> start!349566 tp_is_empty!18637))

(declare-fun b!3706426 () Bool)

(declare-fun tp!1127642 () Bool)

(assert (=> b!3706426 (= e!2295993 (and tp_is_empty!18637 tp!1127642))))

(declare-fun b!3706427 () Bool)

(declare-fun res!1507814 () Bool)

(assert (=> b!3706427 (=> (not res!1507814) (not e!2295994))))

(declare-datatypes ((List!39692 0))(
  ( (Nil!39568) (Cons!39568 (h!44988 C!21808) (t!302375 List!39692)) )
))
(declare-fun s!14922 () List!39692)

(declare-fun c!13398 () C!21808)

(declare-fun contains!7904 (List!39692 C!21808) Bool)

(assert (=> b!3706427 (= res!1507814 (contains!7904 s!14922 c!13398))))

(declare-fun b!3706428 () Bool)

(assert (=> b!3706428 (= e!2295992 tp_is_empty!18637)))

(declare-fun b!3706429 () Bool)

(declare-fun tp!1127643 () Bool)

(declare-fun tp!1127641 () Bool)

(assert (=> b!3706429 (= e!2295992 (and tp!1127643 tp!1127641))))

(declare-fun b!3706430 () Bool)

(declare-fun res!1507815 () Bool)

(assert (=> b!3706430 (=> (not res!1507815) (not e!2295994))))

(declare-fun usedCharacters!1074 (Regex!10811) List!39692)

(assert (=> b!3706430 (= res!1507815 (not (contains!7904 (usedCharacters!1074 r!25965) c!13398)))))

(declare-fun b!3706431 () Bool)

(declare-fun head!8001 (List!39692) C!21808)

(assert (=> b!3706431 (= e!2295994 (not (= (head!8001 s!14922) c!13398)))))

(declare-fun b!3706432 () Bool)

(declare-fun res!1507813 () Bool)

(assert (=> b!3706432 (=> (not res!1507813) (not e!2295994))))

(get-info :version)

(assert (=> b!3706432 (= res!1507813 (and ((_ is Cons!39568) s!14922) (= (h!44988 s!14922) c!13398)))))

(assert (= (and start!349566 res!1507816) b!3706427))

(assert (= (and b!3706427 res!1507814) b!3706430))

(assert (= (and b!3706430 res!1507815) b!3706432))

(assert (= (and b!3706432 res!1507813) b!3706431))

(assert (= (and start!349566 ((_ is ElementMatch!10811) r!25965)) b!3706428))

(assert (= (and start!349566 ((_ is Concat!17082) r!25965)) b!3706429))

(assert (= (and start!349566 ((_ is Star!10811) r!25965)) b!3706424))

(assert (= (and start!349566 ((_ is Union!10811) r!25965)) b!3706425))

(assert (= (and start!349566 ((_ is Cons!39568) s!14922)) b!3706426))

(declare-fun m!4216279 () Bool)

(assert (=> start!349566 m!4216279))

(declare-fun m!4216281 () Bool)

(assert (=> b!3706427 m!4216281))

(declare-fun m!4216283 () Bool)

(assert (=> b!3706430 m!4216283))

(assert (=> b!3706430 m!4216283))

(declare-fun m!4216285 () Bool)

(assert (=> b!3706430 m!4216285))

(declare-fun m!4216287 () Bool)

(assert (=> b!3706431 m!4216287))

(check-sat (not b!3706431) (not b!3706425) tp_is_empty!18637 (not b!3706424) (not b!3706429) (not b!3706427) (not b!3706426) (not b!3706430) (not start!349566))
(check-sat)
(get-model)

(declare-fun d!1086475 () Bool)

(declare-fun lt!1296459 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5710 (List!39692) (InoxSet C!21808))

(assert (=> d!1086475 (= lt!1296459 (select (content!5710 (usedCharacters!1074 r!25965)) c!13398))))

(declare-fun e!2296013 () Bool)

(assert (=> d!1086475 (= lt!1296459 e!2296013)))

(declare-fun res!1507831 () Bool)

(assert (=> d!1086475 (=> (not res!1507831) (not e!2296013))))

(assert (=> d!1086475 (= res!1507831 ((_ is Cons!39568) (usedCharacters!1074 r!25965)))))

(assert (=> d!1086475 (= (contains!7904 (usedCharacters!1074 r!25965) c!13398) lt!1296459)))

(declare-fun b!3706455 () Bool)

(declare-fun e!2296014 () Bool)

(assert (=> b!3706455 (= e!2296013 e!2296014)))

(declare-fun res!1507832 () Bool)

(assert (=> b!3706455 (=> res!1507832 e!2296014)))

(assert (=> b!3706455 (= res!1507832 (= (h!44988 (usedCharacters!1074 r!25965)) c!13398))))

(declare-fun b!3706456 () Bool)

(assert (=> b!3706456 (= e!2296014 (contains!7904 (t!302375 (usedCharacters!1074 r!25965)) c!13398))))

(assert (= (and d!1086475 res!1507831) b!3706455))

(assert (= (and b!3706455 (not res!1507832)) b!3706456))

(assert (=> d!1086475 m!4216283))

(declare-fun m!4216289 () Bool)

(assert (=> d!1086475 m!4216289))

(declare-fun m!4216291 () Bool)

(assert (=> d!1086475 m!4216291))

(declare-fun m!4216293 () Bool)

(assert (=> b!3706456 m!4216293))

(assert (=> b!3706430 d!1086475))

(declare-fun bm!267571 () Bool)

(declare-fun call!267576 () List!39692)

(declare-fun call!267578 () List!39692)

(assert (=> bm!267571 (= call!267576 call!267578)))

(declare-fun bm!267572 () Bool)

(declare-fun call!267579 () List!39692)

(declare-fun c!640122 () Bool)

(assert (=> bm!267572 (= call!267579 (usedCharacters!1074 (ite c!640122 (regTwo!22135 r!25965) (regOne!22134 r!25965))))))

(declare-fun b!3706486 () Bool)

(declare-fun e!2296034 () List!39692)

(assert (=> b!3706486 (= e!2296034 (Cons!39568 (c!640105 r!25965) Nil!39568))))

(declare-fun bm!267573 () Bool)

(declare-fun c!640120 () Bool)

(assert (=> bm!267573 (= call!267578 (usedCharacters!1074 (ite c!640120 (reg!11140 r!25965) (ite c!640122 (regOne!22135 r!25965) (regTwo!22134 r!25965)))))))

(declare-fun b!3706487 () Bool)

(declare-fun e!2296036 () List!39692)

(assert (=> b!3706487 (= e!2296036 Nil!39568)))

(declare-fun b!3706488 () Bool)

(declare-fun e!2296035 () List!39692)

(declare-fun call!267577 () List!39692)

(assert (=> b!3706488 (= e!2296035 call!267577)))

(declare-fun b!3706490 () Bool)

(declare-fun e!2296037 () List!39692)

(assert (=> b!3706490 (= e!2296037 e!2296035)))

(assert (=> b!3706490 (= c!640122 ((_ is Union!10811) r!25965))))

(declare-fun b!3706491 () Bool)

(assert (=> b!3706491 (= e!2296035 call!267577)))

(declare-fun b!3706492 () Bool)

(assert (=> b!3706492 (= c!640120 ((_ is Star!10811) r!25965))))

(assert (=> b!3706492 (= e!2296034 e!2296037)))

(declare-fun b!3706493 () Bool)

(assert (=> b!3706493 (= e!2296036 e!2296034)))

(declare-fun c!640121 () Bool)

(assert (=> b!3706493 (= c!640121 ((_ is ElementMatch!10811) r!25965))))

(declare-fun bm!267574 () Bool)

(declare-fun ++!9773 (List!39692 List!39692) List!39692)

(assert (=> bm!267574 (= call!267577 (++!9773 (ite c!640122 call!267576 call!267579) (ite c!640122 call!267579 call!267576)))))

(declare-fun b!3706489 () Bool)

(assert (=> b!3706489 (= e!2296037 call!267578)))

(declare-fun d!1086479 () Bool)

(declare-fun c!640123 () Bool)

(assert (=> d!1086479 (= c!640123 (or ((_ is EmptyExpr!10811) r!25965) ((_ is EmptyLang!10811) r!25965)))))

(assert (=> d!1086479 (= (usedCharacters!1074 r!25965) e!2296036)))

(assert (= (and d!1086479 c!640123) b!3706487))

(assert (= (and d!1086479 (not c!640123)) b!3706493))

(assert (= (and b!3706493 c!640121) b!3706486))

(assert (= (and b!3706493 (not c!640121)) b!3706492))

(assert (= (and b!3706492 c!640120) b!3706489))

(assert (= (and b!3706492 (not c!640120)) b!3706490))

(assert (= (and b!3706490 c!640122) b!3706491))

(assert (= (and b!3706490 (not c!640122)) b!3706488))

(assert (= (or b!3706491 b!3706488) bm!267571))

(assert (= (or b!3706491 b!3706488) bm!267572))

(assert (= (or b!3706491 b!3706488) bm!267574))

(assert (= (or b!3706489 bm!267571) bm!267573))

(declare-fun m!4216307 () Bool)

(assert (=> bm!267572 m!4216307))

(declare-fun m!4216309 () Bool)

(assert (=> bm!267573 m!4216309))

(declare-fun m!4216313 () Bool)

(assert (=> bm!267574 m!4216313))

(assert (=> b!3706430 d!1086479))

(declare-fun b!3706532 () Bool)

(declare-fun e!2296065 () Bool)

(declare-fun call!267594 () Bool)

(assert (=> b!3706532 (= e!2296065 call!267594)))

(declare-fun bm!267589 () Bool)

(declare-fun call!267596 () Bool)

(declare-fun call!267595 () Bool)

(assert (=> bm!267589 (= call!267596 call!267595)))

(declare-fun bm!267590 () Bool)

(declare-fun c!640137 () Bool)

(assert (=> bm!267590 (= call!267594 (validRegex!4918 (ite c!640137 (regTwo!22135 r!25965) (regTwo!22134 r!25965))))))

(declare-fun b!3706533 () Bool)

(declare-fun e!2296069 () Bool)

(declare-fun e!2296064 () Bool)

(assert (=> b!3706533 (= e!2296069 e!2296064)))

(assert (=> b!3706533 (= c!640137 ((_ is Union!10811) r!25965))))

(declare-fun b!3706534 () Bool)

(declare-fun e!2296070 () Bool)

(assert (=> b!3706534 (= e!2296069 e!2296070)))

(declare-fun res!1507860 () Bool)

(declare-fun nullable!3746 (Regex!10811) Bool)

(assert (=> b!3706534 (= res!1507860 (not (nullable!3746 (reg!11140 r!25965))))))

(assert (=> b!3706534 (=> (not res!1507860) (not e!2296070))))

(declare-fun d!1086485 () Bool)

(declare-fun res!1507857 () Bool)

(declare-fun e!2296066 () Bool)

(assert (=> d!1086485 (=> res!1507857 e!2296066)))

(assert (=> d!1086485 (= res!1507857 ((_ is ElementMatch!10811) r!25965))))

(assert (=> d!1086485 (= (validRegex!4918 r!25965) e!2296066)))

(declare-fun c!640136 () Bool)

(declare-fun bm!267591 () Bool)

(assert (=> bm!267591 (= call!267595 (validRegex!4918 (ite c!640136 (reg!11140 r!25965) (ite c!640137 (regOne!22135 r!25965) (regOne!22134 r!25965)))))))

(declare-fun b!3706535 () Bool)

(declare-fun res!1507858 () Bool)

(declare-fun e!2296068 () Bool)

(assert (=> b!3706535 (=> res!1507858 e!2296068)))

(assert (=> b!3706535 (= res!1507858 (not ((_ is Concat!17082) r!25965)))))

(assert (=> b!3706535 (= e!2296064 e!2296068)))

(declare-fun b!3706536 () Bool)

(assert (=> b!3706536 (= e!2296068 e!2296065)))

(declare-fun res!1507856 () Bool)

(assert (=> b!3706536 (=> (not res!1507856) (not e!2296065))))

(assert (=> b!3706536 (= res!1507856 call!267596)))

(declare-fun b!3706537 () Bool)

(declare-fun e!2296067 () Bool)

(assert (=> b!3706537 (= e!2296067 call!267594)))

(declare-fun b!3706538 () Bool)

(assert (=> b!3706538 (= e!2296070 call!267595)))

(declare-fun b!3706539 () Bool)

(assert (=> b!3706539 (= e!2296066 e!2296069)))

(assert (=> b!3706539 (= c!640136 ((_ is Star!10811) r!25965))))

(declare-fun b!3706540 () Bool)

(declare-fun res!1507859 () Bool)

(assert (=> b!3706540 (=> (not res!1507859) (not e!2296067))))

(assert (=> b!3706540 (= res!1507859 call!267596)))

(assert (=> b!3706540 (= e!2296064 e!2296067)))

(assert (= (and d!1086485 (not res!1507857)) b!3706539))

(assert (= (and b!3706539 c!640136) b!3706534))

(assert (= (and b!3706539 (not c!640136)) b!3706533))

(assert (= (and b!3706534 res!1507860) b!3706538))

(assert (= (and b!3706533 c!640137) b!3706540))

(assert (= (and b!3706533 (not c!640137)) b!3706535))

(assert (= (and b!3706540 res!1507859) b!3706537))

(assert (= (and b!3706535 (not res!1507858)) b!3706536))

(assert (= (and b!3706536 res!1507856) b!3706532))

(assert (= (or b!3706540 b!3706536) bm!267589))

(assert (= (or b!3706537 b!3706532) bm!267590))

(assert (= (or b!3706538 bm!267589) bm!267591))

(declare-fun m!4216319 () Bool)

(assert (=> bm!267590 m!4216319))

(declare-fun m!4216321 () Bool)

(assert (=> b!3706534 m!4216321))

(declare-fun m!4216323 () Bool)

(assert (=> bm!267591 m!4216323))

(assert (=> start!349566 d!1086485))

(declare-fun d!1086489 () Bool)

(declare-fun lt!1296464 () Bool)

(assert (=> d!1086489 (= lt!1296464 (select (content!5710 s!14922) c!13398))))

(declare-fun e!2296075 () Bool)

(assert (=> d!1086489 (= lt!1296464 e!2296075)))

(declare-fun res!1507861 () Bool)

(assert (=> d!1086489 (=> (not res!1507861) (not e!2296075))))

(assert (=> d!1086489 (= res!1507861 ((_ is Cons!39568) s!14922))))

(assert (=> d!1086489 (= (contains!7904 s!14922 c!13398) lt!1296464)))

(declare-fun b!3706549 () Bool)

(declare-fun e!2296076 () Bool)

(assert (=> b!3706549 (= e!2296075 e!2296076)))

(declare-fun res!1507862 () Bool)

(assert (=> b!3706549 (=> res!1507862 e!2296076)))

(assert (=> b!3706549 (= res!1507862 (= (h!44988 s!14922) c!13398))))

(declare-fun b!3706550 () Bool)

(assert (=> b!3706550 (= e!2296076 (contains!7904 (t!302375 s!14922) c!13398))))

(assert (= (and d!1086489 res!1507861) b!3706549))

(assert (= (and b!3706549 (not res!1507862)) b!3706550))

(declare-fun m!4216331 () Bool)

(assert (=> d!1086489 m!4216331))

(declare-fun m!4216333 () Bool)

(assert (=> d!1086489 m!4216333))

(declare-fun m!4216335 () Bool)

(assert (=> b!3706550 m!4216335))

(assert (=> b!3706427 d!1086489))

(declare-fun d!1086493 () Bool)

(assert (=> d!1086493 (= (head!8001 s!14922) (h!44988 s!14922))))

(assert (=> b!3706431 d!1086493))

(declare-fun b!3706576 () Bool)

(declare-fun e!2296084 () Bool)

(assert (=> b!3706576 (= e!2296084 tp_is_empty!18637)))

(declare-fun b!3706578 () Bool)

(declare-fun tp!1127672 () Bool)

(assert (=> b!3706578 (= e!2296084 tp!1127672)))

(declare-fun b!3706579 () Bool)

(declare-fun tp!1127670 () Bool)

(declare-fun tp!1127669 () Bool)

(assert (=> b!3706579 (= e!2296084 (and tp!1127670 tp!1127669))))

(assert (=> b!3706425 (= tp!1127639 e!2296084)))

(declare-fun b!3706577 () Bool)

(declare-fun tp!1127671 () Bool)

(declare-fun tp!1127668 () Bool)

(assert (=> b!3706577 (= e!2296084 (and tp!1127671 tp!1127668))))

(assert (= (and b!3706425 ((_ is ElementMatch!10811) (regOne!22135 r!25965))) b!3706576))

(assert (= (and b!3706425 ((_ is Concat!17082) (regOne!22135 r!25965))) b!3706577))

(assert (= (and b!3706425 ((_ is Star!10811) (regOne!22135 r!25965))) b!3706578))

(assert (= (and b!3706425 ((_ is Union!10811) (regOne!22135 r!25965))) b!3706579))

(declare-fun b!3706580 () Bool)

(declare-fun e!2296085 () Bool)

(assert (=> b!3706580 (= e!2296085 tp_is_empty!18637)))

(declare-fun b!3706582 () Bool)

(declare-fun tp!1127677 () Bool)

(assert (=> b!3706582 (= e!2296085 tp!1127677)))

(declare-fun b!3706583 () Bool)

(declare-fun tp!1127675 () Bool)

(declare-fun tp!1127674 () Bool)

(assert (=> b!3706583 (= e!2296085 (and tp!1127675 tp!1127674))))

(assert (=> b!3706425 (= tp!1127640 e!2296085)))

(declare-fun b!3706581 () Bool)

(declare-fun tp!1127676 () Bool)

(declare-fun tp!1127673 () Bool)

(assert (=> b!3706581 (= e!2296085 (and tp!1127676 tp!1127673))))

(assert (= (and b!3706425 ((_ is ElementMatch!10811) (regTwo!22135 r!25965))) b!3706580))

(assert (= (and b!3706425 ((_ is Concat!17082) (regTwo!22135 r!25965))) b!3706581))

(assert (= (and b!3706425 ((_ is Star!10811) (regTwo!22135 r!25965))) b!3706582))

(assert (= (and b!3706425 ((_ is Union!10811) (regTwo!22135 r!25965))) b!3706583))

(declare-fun b!3706588 () Bool)

(declare-fun e!2296087 () Bool)

(assert (=> b!3706588 (= e!2296087 tp_is_empty!18637)))

(declare-fun b!3706590 () Bool)

(declare-fun tp!1127687 () Bool)

(assert (=> b!3706590 (= e!2296087 tp!1127687)))

(declare-fun b!3706591 () Bool)

(declare-fun tp!1127685 () Bool)

(declare-fun tp!1127684 () Bool)

(assert (=> b!3706591 (= e!2296087 (and tp!1127685 tp!1127684))))

(assert (=> b!3706429 (= tp!1127643 e!2296087)))

(declare-fun b!3706589 () Bool)

(declare-fun tp!1127686 () Bool)

(declare-fun tp!1127683 () Bool)

(assert (=> b!3706589 (= e!2296087 (and tp!1127686 tp!1127683))))

(assert (= (and b!3706429 ((_ is ElementMatch!10811) (regOne!22134 r!25965))) b!3706588))

(assert (= (and b!3706429 ((_ is Concat!17082) (regOne!22134 r!25965))) b!3706589))

(assert (= (and b!3706429 ((_ is Star!10811) (regOne!22134 r!25965))) b!3706590))

(assert (= (and b!3706429 ((_ is Union!10811) (regOne!22134 r!25965))) b!3706591))

(declare-fun b!3706596 () Bool)

(declare-fun e!2296089 () Bool)

(assert (=> b!3706596 (= e!2296089 tp_is_empty!18637)))

(declare-fun b!3706598 () Bool)

(declare-fun tp!1127697 () Bool)

(assert (=> b!3706598 (= e!2296089 tp!1127697)))

(declare-fun b!3706599 () Bool)

(declare-fun tp!1127695 () Bool)

(declare-fun tp!1127694 () Bool)

(assert (=> b!3706599 (= e!2296089 (and tp!1127695 tp!1127694))))

(assert (=> b!3706429 (= tp!1127641 e!2296089)))

(declare-fun b!3706597 () Bool)

(declare-fun tp!1127696 () Bool)

(declare-fun tp!1127693 () Bool)

(assert (=> b!3706597 (= e!2296089 (and tp!1127696 tp!1127693))))

(assert (= (and b!3706429 ((_ is ElementMatch!10811) (regTwo!22134 r!25965))) b!3706596))

(assert (= (and b!3706429 ((_ is Concat!17082) (regTwo!22134 r!25965))) b!3706597))

(assert (= (and b!3706429 ((_ is Star!10811) (regTwo!22134 r!25965))) b!3706598))

(assert (= (and b!3706429 ((_ is Union!10811) (regTwo!22134 r!25965))) b!3706599))

(declare-fun b!3706604 () Bool)

(declare-fun e!2296091 () Bool)

(assert (=> b!3706604 (= e!2296091 tp_is_empty!18637)))

(declare-fun b!3706606 () Bool)

(declare-fun tp!1127707 () Bool)

(assert (=> b!3706606 (= e!2296091 tp!1127707)))

(declare-fun b!3706607 () Bool)

(declare-fun tp!1127705 () Bool)

(declare-fun tp!1127704 () Bool)

(assert (=> b!3706607 (= e!2296091 (and tp!1127705 tp!1127704))))

(assert (=> b!3706424 (= tp!1127644 e!2296091)))

(declare-fun b!3706605 () Bool)

(declare-fun tp!1127706 () Bool)

(declare-fun tp!1127703 () Bool)

(assert (=> b!3706605 (= e!2296091 (and tp!1127706 tp!1127703))))

(assert (= (and b!3706424 ((_ is ElementMatch!10811) (reg!11140 r!25965))) b!3706604))

(assert (= (and b!3706424 ((_ is Concat!17082) (reg!11140 r!25965))) b!3706605))

(assert (= (and b!3706424 ((_ is Star!10811) (reg!11140 r!25965))) b!3706606))

(assert (= (and b!3706424 ((_ is Union!10811) (reg!11140 r!25965))) b!3706607))

(declare-fun b!3706620 () Bool)

(declare-fun e!2296096 () Bool)

(declare-fun tp!1127720 () Bool)

(assert (=> b!3706620 (= e!2296096 (and tp_is_empty!18637 tp!1127720))))

(assert (=> b!3706426 (= tp!1127642 e!2296096)))

(assert (= (and b!3706426 ((_ is Cons!39568) (t!302375 s!14922))) b!3706620))

(check-sat (not b!3706579) (not b!3706581) (not b!3706577) (not d!1086475) (not b!3706620) (not b!3706534) (not b!3706456) (not b!3706607) (not b!3706589) (not b!3706606) (not b!3706550) (not bm!267591) (not bm!267574) (not b!3706605) tp_is_empty!18637 (not b!3706582) (not bm!267573) (not d!1086489) (not b!3706583) (not b!3706599) (not bm!267572) (not b!3706591) (not b!3706590) (not b!3706598) (not b!3706578) (not b!3706597) (not bm!267590))
(check-sat)
