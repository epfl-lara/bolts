; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349546 () Bool)

(assert start!349546)

(declare-fun b!3706171 () Bool)

(declare-fun res!1507744 () Bool)

(declare-fun e!2295867 () Bool)

(assert (=> b!3706171 (=> (not res!1507744) (not e!2295867))))

(declare-datatypes ((C!21804 0))(
  ( (C!21805 (val!12950 Int)) )
))
(declare-datatypes ((Regex!10809 0))(
  ( (ElementMatch!10809 (c!640061 C!21804)) (Concat!17080 (regOne!22130 Regex!10809) (regTwo!22130 Regex!10809)) (EmptyExpr!10809) (Star!10809 (reg!11138 Regex!10809)) (EmptyLang!10809) (Union!10809 (regOne!22131 Regex!10809) (regTwo!22131 Regex!10809)) )
))
(declare-fun r!25965 () Regex!10809)

(declare-fun c!13398 () C!21804)

(declare-datatypes ((List!39690 0))(
  ( (Nil!39566) (Cons!39566 (h!44986 C!21804) (t!302373 List!39690)) )
))
(declare-fun contains!7902 (List!39690 C!21804) Bool)

(declare-fun usedCharacters!1072 (Regex!10809) List!39690)

(assert (=> b!3706171 (= res!1507744 (not (contains!7902 (usedCharacters!1072 r!25965) c!13398)))))

(declare-fun b!3706172 () Bool)

(declare-fun e!2295866 () Bool)

(declare-fun tp!1127532 () Bool)

(declare-fun tp!1127527 () Bool)

(assert (=> b!3706172 (= e!2295866 (and tp!1127532 tp!1127527))))

(declare-fun b!3706174 () Bool)

(declare-fun tp!1127528 () Bool)

(declare-fun tp!1127531 () Bool)

(assert (=> b!3706174 (= e!2295866 (and tp!1127528 tp!1127531))))

(declare-fun b!3706175 () Bool)

(declare-fun tp_is_empty!18633 () Bool)

(assert (=> b!3706175 (= e!2295866 tp_is_empty!18633)))

(declare-fun b!3706176 () Bool)

(declare-fun tp!1127529 () Bool)

(assert (=> b!3706176 (= e!2295866 tp!1127529)))

(declare-fun b!3706177 () Bool)

(declare-fun s!14922 () List!39690)

(declare-fun ListPrimitiveSize!251 (List!39690) Int)

(assert (=> b!3706177 (= e!2295867 (< (ListPrimitiveSize!251 s!14922) 0))))

(declare-fun b!3706178 () Bool)

(declare-fun e!2295868 () Bool)

(declare-fun tp!1127530 () Bool)

(assert (=> b!3706178 (= e!2295868 (and tp_is_empty!18633 tp!1127530))))

(declare-fun res!1507746 () Bool)

(assert (=> start!349546 (=> (not res!1507746) (not e!2295867))))

(declare-fun validRegex!4916 (Regex!10809) Bool)

(assert (=> start!349546 (= res!1507746 (validRegex!4916 r!25965))))

(assert (=> start!349546 e!2295867))

(assert (=> start!349546 e!2295866))

(assert (=> start!349546 e!2295868))

(assert (=> start!349546 tp_is_empty!18633))

(declare-fun b!3706173 () Bool)

(declare-fun res!1507745 () Bool)

(assert (=> b!3706173 (=> (not res!1507745) (not e!2295867))))

(assert (=> b!3706173 (= res!1507745 (contains!7902 s!14922 c!13398))))

(assert (= (and start!349546 res!1507746) b!3706173))

(assert (= (and b!3706173 res!1507745) b!3706171))

(assert (= (and b!3706171 res!1507744) b!3706177))

(get-info :version)

(assert (= (and start!349546 ((_ is ElementMatch!10809) r!25965)) b!3706175))

(assert (= (and start!349546 ((_ is Concat!17080) r!25965)) b!3706172))

(assert (= (and start!349546 ((_ is Star!10809) r!25965)) b!3706176))

(assert (= (and start!349546 ((_ is Union!10809) r!25965)) b!3706174))

(assert (= (and start!349546 ((_ is Cons!39566) s!14922)) b!3706178))

(declare-fun m!4216207 () Bool)

(assert (=> b!3706171 m!4216207))

(assert (=> b!3706171 m!4216207))

(declare-fun m!4216209 () Bool)

(assert (=> b!3706171 m!4216209))

(declare-fun m!4216211 () Bool)

(assert (=> b!3706177 m!4216211))

(declare-fun m!4216213 () Bool)

(assert (=> start!349546 m!4216213))

(declare-fun m!4216215 () Bool)

(assert (=> b!3706173 m!4216215))

(check-sat (not b!3706176) (not b!3706173) (not b!3706178) (not b!3706172) (not b!3706177) (not b!3706171) (not b!3706174) tp_is_empty!18633 (not start!349546))
(check-sat)
(get-model)

(declare-fun b!3706223 () Bool)

(declare-fun e!2295901 () Bool)

(declare-fun call!267525 () Bool)

(assert (=> b!3706223 (= e!2295901 call!267525)))

(declare-fun b!3706224 () Bool)

(declare-fun e!2295908 () Bool)

(declare-fun e!2295904 () Bool)

(assert (=> b!3706224 (= e!2295908 e!2295904)))

(declare-fun c!640074 () Bool)

(assert (=> b!3706224 (= c!640074 ((_ is Union!10809) r!25965))))

(declare-fun b!3706225 () Bool)

(declare-fun e!2295900 () Bool)

(declare-fun call!267524 () Bool)

(assert (=> b!3706225 (= e!2295900 call!267524)))

(declare-fun b!3706226 () Bool)

(assert (=> b!3706226 (= e!2295908 e!2295900)))

(declare-fun res!1507769 () Bool)

(declare-fun nullable!3743 (Regex!10809) Bool)

(assert (=> b!3706226 (= res!1507769 (not (nullable!3743 (reg!11138 r!25965))))))

(assert (=> b!3706226 (=> (not res!1507769) (not e!2295900))))

(declare-fun bm!267518 () Bool)

(declare-fun call!267523 () Bool)

(assert (=> bm!267518 (= call!267523 call!267524)))

(declare-fun b!3706227 () Bool)

(declare-fun res!1507768 () Bool)

(declare-fun e!2295905 () Bool)

(assert (=> b!3706227 (=> (not res!1507768) (not e!2295905))))

(assert (=> b!3706227 (= res!1507768 call!267523)))

(assert (=> b!3706227 (= e!2295904 e!2295905)))

(declare-fun c!640073 () Bool)

(declare-fun bm!267519 () Bool)

(assert (=> bm!267519 (= call!267524 (validRegex!4916 (ite c!640073 (reg!11138 r!25965) (ite c!640074 (regOne!22131 r!25965) (regOne!22130 r!25965)))))))

(declare-fun d!1086456 () Bool)

(declare-fun res!1507772 () Bool)

(declare-fun e!2295906 () Bool)

(assert (=> d!1086456 (=> res!1507772 e!2295906)))

(assert (=> d!1086456 (= res!1507772 ((_ is ElementMatch!10809) r!25965))))

(assert (=> d!1086456 (= (validRegex!4916 r!25965) e!2295906)))

(declare-fun b!3706228 () Bool)

(assert (=> b!3706228 (= e!2295905 call!267525)))

(declare-fun bm!267520 () Bool)

(assert (=> bm!267520 (= call!267525 (validRegex!4916 (ite c!640074 (regTwo!22131 r!25965) (regTwo!22130 r!25965))))))

(declare-fun b!3706229 () Bool)

(declare-fun e!2295907 () Bool)

(assert (=> b!3706229 (= e!2295907 e!2295901)))

(declare-fun res!1507773 () Bool)

(assert (=> b!3706229 (=> (not res!1507773) (not e!2295901))))

(assert (=> b!3706229 (= res!1507773 call!267523)))

(declare-fun b!3706230 () Bool)

(assert (=> b!3706230 (= e!2295906 e!2295908)))

(assert (=> b!3706230 (= c!640073 ((_ is Star!10809) r!25965))))

(declare-fun b!3706231 () Bool)

(declare-fun res!1507767 () Bool)

(assert (=> b!3706231 (=> res!1507767 e!2295907)))

(assert (=> b!3706231 (= res!1507767 (not ((_ is Concat!17080) r!25965)))))

(assert (=> b!3706231 (= e!2295904 e!2295907)))

(assert (= (and d!1086456 (not res!1507772)) b!3706230))

(assert (= (and b!3706230 c!640073) b!3706226))

(assert (= (and b!3706230 (not c!640073)) b!3706224))

(assert (= (and b!3706226 res!1507769) b!3706225))

(assert (= (and b!3706224 c!640074) b!3706227))

(assert (= (and b!3706224 (not c!640074)) b!3706231))

(assert (= (and b!3706227 res!1507768) b!3706228))

(assert (= (and b!3706231 (not res!1507767)) b!3706229))

(assert (= (and b!3706229 res!1507773) b!3706223))

(assert (= (or b!3706227 b!3706229) bm!267518))

(assert (= (or b!3706228 b!3706223) bm!267520))

(assert (= (or b!3706225 bm!267518) bm!267519))

(declare-fun m!4216225 () Bool)

(assert (=> b!3706226 m!4216225))

(declare-fun m!4216227 () Bool)

(assert (=> bm!267519 m!4216227))

(declare-fun m!4216229 () Bool)

(assert (=> bm!267520 m!4216229))

(assert (=> start!349546 d!1086456))

(declare-fun d!1086462 () Bool)

(declare-fun lt!1296451 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5709 (List!39690) (InoxSet C!21804))

(assert (=> d!1086462 (= lt!1296451 (select (content!5709 s!14922) c!13398))))

(declare-fun e!2295917 () Bool)

(assert (=> d!1086462 (= lt!1296451 e!2295917)))

(declare-fun res!1507782 () Bool)

(assert (=> d!1086462 (=> (not res!1507782) (not e!2295917))))

(assert (=> d!1086462 (= res!1507782 ((_ is Cons!39566) s!14922))))

(assert (=> d!1086462 (= (contains!7902 s!14922 c!13398) lt!1296451)))

(declare-fun b!3706240 () Bool)

(declare-fun e!2295918 () Bool)

(assert (=> b!3706240 (= e!2295917 e!2295918)))

(declare-fun res!1507783 () Bool)

(assert (=> b!3706240 (=> res!1507783 e!2295918)))

(assert (=> b!3706240 (= res!1507783 (= (h!44986 s!14922) c!13398))))

(declare-fun b!3706241 () Bool)

(assert (=> b!3706241 (= e!2295918 (contains!7902 (t!302373 s!14922) c!13398))))

(assert (= (and d!1086462 res!1507782) b!3706240))

(assert (= (and b!3706240 (not res!1507783)) b!3706241))

(declare-fun m!4216231 () Bool)

(assert (=> d!1086462 m!4216231))

(declare-fun m!4216233 () Bool)

(assert (=> d!1086462 m!4216233))

(declare-fun m!4216235 () Bool)

(assert (=> b!3706241 m!4216235))

(assert (=> b!3706173 d!1086462))

(declare-fun d!1086464 () Bool)

(declare-fun lt!1296455 () Int)

(assert (=> d!1086464 (>= lt!1296455 0)))

(declare-fun e!2295930 () Int)

(assert (=> d!1086464 (= lt!1296455 e!2295930)))

(declare-fun c!640079 () Bool)

(assert (=> d!1086464 (= c!640079 ((_ is Nil!39566) s!14922))))

(assert (=> d!1086464 (= (ListPrimitiveSize!251 s!14922) lt!1296455)))

(declare-fun b!3706257 () Bool)

(assert (=> b!3706257 (= e!2295930 0)))

(declare-fun b!3706258 () Bool)

(assert (=> b!3706258 (= e!2295930 (+ 1 (ListPrimitiveSize!251 (t!302373 s!14922))))))

(assert (= (and d!1086464 c!640079) b!3706257))

(assert (= (and d!1086464 (not c!640079)) b!3706258))

(declare-fun m!4216249 () Bool)

(assert (=> b!3706258 m!4216249))

(assert (=> b!3706177 d!1086464))

(declare-fun d!1086470 () Bool)

(declare-fun lt!1296456 () Bool)

(assert (=> d!1086470 (= lt!1296456 (select (content!5709 (usedCharacters!1072 r!25965)) c!13398))))

(declare-fun e!2295931 () Bool)

(assert (=> d!1086470 (= lt!1296456 e!2295931)))

(declare-fun res!1507791 () Bool)

(assert (=> d!1086470 (=> (not res!1507791) (not e!2295931))))

(assert (=> d!1086470 (= res!1507791 ((_ is Cons!39566) (usedCharacters!1072 r!25965)))))

(assert (=> d!1086470 (= (contains!7902 (usedCharacters!1072 r!25965) c!13398) lt!1296456)))

(declare-fun b!3706259 () Bool)

(declare-fun e!2295932 () Bool)

(assert (=> b!3706259 (= e!2295931 e!2295932)))

(declare-fun res!1507792 () Bool)

(assert (=> b!3706259 (=> res!1507792 e!2295932)))

(assert (=> b!3706259 (= res!1507792 (= (h!44986 (usedCharacters!1072 r!25965)) c!13398))))

(declare-fun b!3706260 () Bool)

(assert (=> b!3706260 (= e!2295932 (contains!7902 (t!302373 (usedCharacters!1072 r!25965)) c!13398))))

(assert (= (and d!1086470 res!1507791) b!3706259))

(assert (= (and b!3706259 (not res!1507792)) b!3706260))

(assert (=> d!1086470 m!4216207))

(declare-fun m!4216251 () Bool)

(assert (=> d!1086470 m!4216251))

(declare-fun m!4216253 () Bool)

(assert (=> d!1086470 m!4216253))

(declare-fun m!4216255 () Bool)

(assert (=> b!3706260 m!4216255))

(assert (=> b!3706171 d!1086470))

(declare-fun b!3706311 () Bool)

(declare-fun e!2295956 () List!39690)

(declare-fun call!267557 () List!39690)

(assert (=> b!3706311 (= e!2295956 call!267557)))

(declare-fun b!3706312 () Bool)

(declare-fun e!2295955 () List!39690)

(declare-fun call!267555 () List!39690)

(assert (=> b!3706312 (= e!2295955 call!267555)))

(declare-fun d!1086472 () Bool)

(declare-fun c!640103 () Bool)

(assert (=> d!1086472 (= c!640103 (or ((_ is EmptyExpr!10809) r!25965) ((_ is EmptyLang!10809) r!25965)))))

(declare-fun e!2295958 () List!39690)

(assert (=> d!1086472 (= (usedCharacters!1072 r!25965) e!2295958)))

(declare-fun bm!267550 () Bool)

(declare-fun call!267556 () List!39690)

(assert (=> bm!267550 (= call!267556 call!267557)))

(declare-fun c!640102 () Bool)

(declare-fun c!640101 () Bool)

(declare-fun bm!267551 () Bool)

(assert (=> bm!267551 (= call!267557 (usedCharacters!1072 (ite c!640101 (reg!11138 r!25965) (ite c!640102 (regTwo!22131 r!25965) (regOne!22130 r!25965)))))))

(declare-fun b!3706313 () Bool)

(assert (=> b!3706313 (= c!640101 ((_ is Star!10809) r!25965))))

(declare-fun e!2295957 () List!39690)

(assert (=> b!3706313 (= e!2295957 e!2295956)))

(declare-fun b!3706314 () Bool)

(assert (=> b!3706314 (= e!2295958 Nil!39566)))

(declare-fun b!3706315 () Bool)

(assert (=> b!3706315 (= e!2295958 e!2295957)))

(declare-fun c!640100 () Bool)

(assert (=> b!3706315 (= c!640100 ((_ is ElementMatch!10809) r!25965))))

(declare-fun b!3706316 () Bool)

(assert (=> b!3706316 (= e!2295957 (Cons!39566 (c!640061 r!25965) Nil!39566))))

(declare-fun call!267558 () List!39690)

(declare-fun bm!267552 () Bool)

(declare-fun ++!9772 (List!39690 List!39690) List!39690)

(assert (=> bm!267552 (= call!267555 (++!9772 (ite c!640102 call!267558 call!267556) (ite c!640102 call!267556 call!267558)))))

(declare-fun b!3706317 () Bool)

(assert (=> b!3706317 (= e!2295955 call!267555)))

(declare-fun bm!267553 () Bool)

(assert (=> bm!267553 (= call!267558 (usedCharacters!1072 (ite c!640102 (regOne!22131 r!25965) (regTwo!22130 r!25965))))))

(declare-fun b!3706318 () Bool)

(assert (=> b!3706318 (= e!2295956 e!2295955)))

(assert (=> b!3706318 (= c!640102 ((_ is Union!10809) r!25965))))

(assert (= (and d!1086472 c!640103) b!3706314))

(assert (= (and d!1086472 (not c!640103)) b!3706315))

(assert (= (and b!3706315 c!640100) b!3706316))

(assert (= (and b!3706315 (not c!640100)) b!3706313))

(assert (= (and b!3706313 c!640101) b!3706311))

(assert (= (and b!3706313 (not c!640101)) b!3706318))

(assert (= (and b!3706318 c!640102) b!3706312))

(assert (= (and b!3706318 (not c!640102)) b!3706317))

(assert (= (or b!3706312 b!3706317) bm!267553))

(assert (= (or b!3706312 b!3706317) bm!267550))

(assert (= (or b!3706312 b!3706317) bm!267552))

(assert (= (or b!3706311 bm!267550) bm!267551))

(declare-fun m!4216263 () Bool)

(assert (=> bm!267551 m!4216263))

(declare-fun m!4216265 () Bool)

(assert (=> bm!267552 m!4216265))

(declare-fun m!4216267 () Bool)

(assert (=> bm!267553 m!4216267))

(assert (=> b!3706171 d!1086472))

(declare-fun b!3706355 () Bool)

(declare-fun e!2295969 () Bool)

(declare-fun tp!1127584 () Bool)

(declare-fun tp!1127581 () Bool)

(assert (=> b!3706355 (= e!2295969 (and tp!1127584 tp!1127581))))

(declare-fun b!3706356 () Bool)

(declare-fun tp!1127583 () Bool)

(assert (=> b!3706356 (= e!2295969 tp!1127583)))

(declare-fun b!3706354 () Bool)

(assert (=> b!3706354 (= e!2295969 tp_is_empty!18633)))

(declare-fun b!3706357 () Bool)

(declare-fun tp!1127585 () Bool)

(declare-fun tp!1127582 () Bool)

(assert (=> b!3706357 (= e!2295969 (and tp!1127585 tp!1127582))))

(assert (=> b!3706174 (= tp!1127528 e!2295969)))

(assert (= (and b!3706174 ((_ is ElementMatch!10809) (regOne!22131 r!25965))) b!3706354))

(assert (= (and b!3706174 ((_ is Concat!17080) (regOne!22131 r!25965))) b!3706355))

(assert (= (and b!3706174 ((_ is Star!10809) (regOne!22131 r!25965))) b!3706356))

(assert (= (and b!3706174 ((_ is Union!10809) (regOne!22131 r!25965))) b!3706357))

(declare-fun b!3706359 () Bool)

(declare-fun e!2295970 () Bool)

(declare-fun tp!1127589 () Bool)

(declare-fun tp!1127586 () Bool)

(assert (=> b!3706359 (= e!2295970 (and tp!1127589 tp!1127586))))

(declare-fun b!3706360 () Bool)

(declare-fun tp!1127588 () Bool)

(assert (=> b!3706360 (= e!2295970 tp!1127588)))

(declare-fun b!3706358 () Bool)

(assert (=> b!3706358 (= e!2295970 tp_is_empty!18633)))

(declare-fun b!3706361 () Bool)

(declare-fun tp!1127590 () Bool)

(declare-fun tp!1127587 () Bool)

(assert (=> b!3706361 (= e!2295970 (and tp!1127590 tp!1127587))))

(assert (=> b!3706174 (= tp!1127531 e!2295970)))

(assert (= (and b!3706174 ((_ is ElementMatch!10809) (regTwo!22131 r!25965))) b!3706358))

(assert (= (and b!3706174 ((_ is Concat!17080) (regTwo!22131 r!25965))) b!3706359))

(assert (= (and b!3706174 ((_ is Star!10809) (regTwo!22131 r!25965))) b!3706360))

(assert (= (and b!3706174 ((_ is Union!10809) (regTwo!22131 r!25965))) b!3706361))

(declare-fun b!3706366 () Bool)

(declare-fun e!2295973 () Bool)

(declare-fun tp!1127593 () Bool)

(assert (=> b!3706366 (= e!2295973 (and tp_is_empty!18633 tp!1127593))))

(assert (=> b!3706178 (= tp!1127530 e!2295973)))

(assert (= (and b!3706178 ((_ is Cons!39566) (t!302373 s!14922))) b!3706366))

(declare-fun b!3706368 () Bool)

(declare-fun e!2295974 () Bool)

(declare-fun tp!1127597 () Bool)

(declare-fun tp!1127594 () Bool)

(assert (=> b!3706368 (= e!2295974 (and tp!1127597 tp!1127594))))

(declare-fun b!3706369 () Bool)

(declare-fun tp!1127596 () Bool)

(assert (=> b!3706369 (= e!2295974 tp!1127596)))

(declare-fun b!3706367 () Bool)

(assert (=> b!3706367 (= e!2295974 tp_is_empty!18633)))

(declare-fun b!3706370 () Bool)

(declare-fun tp!1127598 () Bool)

(declare-fun tp!1127595 () Bool)

(assert (=> b!3706370 (= e!2295974 (and tp!1127598 tp!1127595))))

(assert (=> b!3706172 (= tp!1127532 e!2295974)))

(assert (= (and b!3706172 ((_ is ElementMatch!10809) (regOne!22130 r!25965))) b!3706367))

(assert (= (and b!3706172 ((_ is Concat!17080) (regOne!22130 r!25965))) b!3706368))

(assert (= (and b!3706172 ((_ is Star!10809) (regOne!22130 r!25965))) b!3706369))

(assert (= (and b!3706172 ((_ is Union!10809) (regOne!22130 r!25965))) b!3706370))

(declare-fun b!3706372 () Bool)

(declare-fun e!2295975 () Bool)

(declare-fun tp!1127602 () Bool)

(declare-fun tp!1127599 () Bool)

(assert (=> b!3706372 (= e!2295975 (and tp!1127602 tp!1127599))))

(declare-fun b!3706373 () Bool)

(declare-fun tp!1127601 () Bool)

(assert (=> b!3706373 (= e!2295975 tp!1127601)))

(declare-fun b!3706371 () Bool)

(assert (=> b!3706371 (= e!2295975 tp_is_empty!18633)))

(declare-fun b!3706374 () Bool)

(declare-fun tp!1127603 () Bool)

(declare-fun tp!1127600 () Bool)

(assert (=> b!3706374 (= e!2295975 (and tp!1127603 tp!1127600))))

(assert (=> b!3706172 (= tp!1127527 e!2295975)))

(assert (= (and b!3706172 ((_ is ElementMatch!10809) (regTwo!22130 r!25965))) b!3706371))

(assert (= (and b!3706172 ((_ is Concat!17080) (regTwo!22130 r!25965))) b!3706372))

(assert (= (and b!3706172 ((_ is Star!10809) (regTwo!22130 r!25965))) b!3706373))

(assert (= (and b!3706172 ((_ is Union!10809) (regTwo!22130 r!25965))) b!3706374))

(declare-fun b!3706376 () Bool)

(declare-fun e!2295976 () Bool)

(declare-fun tp!1127607 () Bool)

(declare-fun tp!1127604 () Bool)

(assert (=> b!3706376 (= e!2295976 (and tp!1127607 tp!1127604))))

(declare-fun b!3706377 () Bool)

(declare-fun tp!1127606 () Bool)

(assert (=> b!3706377 (= e!2295976 tp!1127606)))

(declare-fun b!3706375 () Bool)

(assert (=> b!3706375 (= e!2295976 tp_is_empty!18633)))

(declare-fun b!3706378 () Bool)

(declare-fun tp!1127608 () Bool)

(declare-fun tp!1127605 () Bool)

(assert (=> b!3706378 (= e!2295976 (and tp!1127608 tp!1127605))))

(assert (=> b!3706176 (= tp!1127529 e!2295976)))

(assert (= (and b!3706176 ((_ is ElementMatch!10809) (reg!11138 r!25965))) b!3706375))

(assert (= (and b!3706176 ((_ is Concat!17080) (reg!11138 r!25965))) b!3706376))

(assert (= (and b!3706176 ((_ is Star!10809) (reg!11138 r!25965))) b!3706377))

(assert (= (and b!3706176 ((_ is Union!10809) (reg!11138 r!25965))) b!3706378))

(check-sat (not b!3706370) (not d!1086470) (not b!3706361) (not bm!267552) (not b!3706355) (not b!3706356) (not b!3706368) (not b!3706374) (not bm!267520) (not bm!267553) (not b!3706241) (not d!1086462) (not b!3706378) tp_is_empty!18633 (not b!3706359) (not b!3706226) (not b!3706372) (not b!3706366) (not b!3706360) (not b!3706373) (not bm!267519) (not b!3706369) (not b!3706357) (not b!3706260) (not bm!267551) (not b!3706376) (not b!3706377) (not b!3706258))
(check-sat)
