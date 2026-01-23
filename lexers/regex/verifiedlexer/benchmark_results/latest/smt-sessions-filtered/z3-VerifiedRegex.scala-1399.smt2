; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73750 () Bool)

(assert start!73750)

(declare-fun b!824623 () Bool)

(declare-fun res!380072 () Bool)

(declare-fun e!544368 () Bool)

(assert (=> b!824623 (=> (not res!380072) (not e!544368))))

(declare-datatypes ((C!4684 0))(
  ( (C!4685 (val!2590 Int)) )
))
(declare-datatypes ((Regex!2057 0))(
  ( (ElementMatch!2057 (c!133802 C!4684)) (Concat!3788 (regOne!4626 Regex!2057) (regTwo!4626 Regex!2057)) (EmptyExpr!2057) (Star!2057 (reg!2386 Regex!2057)) (EmptyLang!2057) (Union!2057 (regOne!4627 Regex!2057) (regTwo!4627 Regex!2057)) )
))
(declare-fun r!27177 () Regex!2057)

(declare-fun validRegex!610 (Regex!2057) Bool)

(assert (=> b!824623 (= res!380072 (validRegex!610 (reg!2386 r!27177)))))

(declare-fun b!824624 () Bool)

(declare-fun res!380075 () Bool)

(assert (=> b!824624 (=> (not res!380075) (not e!544368))))

(declare-fun c!13916 () C!4684)

(declare-datatypes ((List!8883 0))(
  ( (Nil!8867) (Cons!8867 (h!14268 C!4684) (t!93175 List!8883)) )
))
(declare-fun contains!1648 (List!8883 C!4684) Bool)

(declare-fun firstChars!28 (Regex!2057) List!8883)

(assert (=> b!824624 (= res!380075 (contains!1648 (firstChars!28 (reg!2386 r!27177)) c!13916))))

(declare-fun b!824625 () Bool)

(declare-fun usedCharacters!160 (Regex!2057) List!8883)

(assert (=> b!824625 (= e!544368 (not (contains!1648 (usedCharacters!160 r!27177) c!13916)))))

(assert (=> b!824625 (contains!1648 (usedCharacters!160 (reg!2386 r!27177)) c!13916)))

(declare-datatypes ((Unit!13371 0))(
  ( (Unit!13372) )
))
(declare-fun lt!317447 () Unit!13371)

(declare-fun lemmaUsedCharsContainsAllFirstChars!2 (Regex!2057 C!4684) Unit!13371)

(assert (=> b!824625 (= lt!317447 (lemmaUsedCharsContainsAllFirstChars!2 (reg!2386 r!27177) c!13916))))

(declare-fun b!824626 () Bool)

(declare-fun res!380071 () Bool)

(assert (=> b!824626 (=> (not res!380071) (not e!544368))))

(assert (=> b!824626 (= res!380071 (contains!1648 (firstChars!28 r!27177) c!13916))))

(declare-fun b!824627 () Bool)

(declare-fun e!544369 () Bool)

(declare-fun tp!257763 () Bool)

(declare-fun tp!257760 () Bool)

(assert (=> b!824627 (= e!544369 (and tp!257763 tp!257760))))

(declare-fun b!824628 () Bool)

(declare-fun res!380074 () Bool)

(assert (=> b!824628 (=> (not res!380074) (not e!544368))))

(get-info :version)

(assert (=> b!824628 (= res!380074 (and (not ((_ is EmptyExpr!2057) r!27177)) (not ((_ is EmptyLang!2057) r!27177)) (not ((_ is ElementMatch!2057) r!27177)) ((_ is Star!2057) r!27177)))))

(declare-fun res!380073 () Bool)

(assert (=> start!73750 (=> (not res!380073) (not e!544368))))

(assert (=> start!73750 (= res!380073 (validRegex!610 r!27177))))

(assert (=> start!73750 e!544368))

(assert (=> start!73750 e!544369))

(declare-fun tp_is_empty!3837 () Bool)

(assert (=> start!73750 tp_is_empty!3837))

(declare-fun b!824629 () Bool)

(assert (=> b!824629 (= e!544369 tp_is_empty!3837)))

(declare-fun b!824630 () Bool)

(declare-fun tp!257764 () Bool)

(declare-fun tp!257761 () Bool)

(assert (=> b!824630 (= e!544369 (and tp!257764 tp!257761))))

(declare-fun b!824631 () Bool)

(declare-fun tp!257762 () Bool)

(assert (=> b!824631 (= e!544369 tp!257762)))

(assert (= (and start!73750 res!380073) b!824626))

(assert (= (and b!824626 res!380071) b!824628))

(assert (= (and b!824628 res!380074) b!824623))

(assert (= (and b!824623 res!380072) b!824624))

(assert (= (and b!824624 res!380075) b!824625))

(assert (= (and start!73750 ((_ is ElementMatch!2057) r!27177)) b!824629))

(assert (= (and start!73750 ((_ is Concat!3788) r!27177)) b!824627))

(assert (= (and start!73750 ((_ is Star!2057) r!27177)) b!824631))

(assert (= (and start!73750 ((_ is Union!2057) r!27177)) b!824630))

(declare-fun m!1064331 () Bool)

(assert (=> b!824624 m!1064331))

(assert (=> b!824624 m!1064331))

(declare-fun m!1064333 () Bool)

(assert (=> b!824624 m!1064333))

(declare-fun m!1064335 () Bool)

(assert (=> start!73750 m!1064335))

(declare-fun m!1064337 () Bool)

(assert (=> b!824625 m!1064337))

(declare-fun m!1064339 () Bool)

(assert (=> b!824625 m!1064339))

(assert (=> b!824625 m!1064337))

(declare-fun m!1064341 () Bool)

(assert (=> b!824625 m!1064341))

(declare-fun m!1064343 () Bool)

(assert (=> b!824625 m!1064343))

(assert (=> b!824625 m!1064341))

(declare-fun m!1064345 () Bool)

(assert (=> b!824625 m!1064345))

(declare-fun m!1064347 () Bool)

(assert (=> b!824626 m!1064347))

(assert (=> b!824626 m!1064347))

(declare-fun m!1064349 () Bool)

(assert (=> b!824626 m!1064349))

(declare-fun m!1064351 () Bool)

(assert (=> b!824623 m!1064351))

(check-sat (not b!824626) (not b!824631) (not start!73750) (not b!824627) (not b!824624) (not b!824623) (not b!824625) (not b!824630) tp_is_empty!3837)
(check-sat)
(get-model)

(declare-fun d!259164 () Bool)

(declare-fun lt!317452 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1296 (List!8883) (InoxSet C!4684))

(assert (=> d!259164 (= lt!317452 (select (content!1296 (firstChars!28 r!27177)) c!13916))))

(declare-fun e!544378 () Bool)

(assert (=> d!259164 (= lt!317452 e!544378)))

(declare-fun res!380084 () Bool)

(assert (=> d!259164 (=> (not res!380084) (not e!544378))))

(assert (=> d!259164 (= res!380084 ((_ is Cons!8867) (firstChars!28 r!27177)))))

(assert (=> d!259164 (= (contains!1648 (firstChars!28 r!27177) c!13916) lt!317452)))

(declare-fun b!824640 () Bool)

(declare-fun e!544379 () Bool)

(assert (=> b!824640 (= e!544378 e!544379)))

(declare-fun res!380085 () Bool)

(assert (=> b!824640 (=> res!380085 e!544379)))

(assert (=> b!824640 (= res!380085 (= (h!14268 (firstChars!28 r!27177)) c!13916))))

(declare-fun b!824641 () Bool)

(assert (=> b!824641 (= e!544379 (contains!1648 (t!93175 (firstChars!28 r!27177)) c!13916))))

(assert (= (and d!259164 res!380084) b!824640))

(assert (= (and b!824640 (not res!380085)) b!824641))

(assert (=> d!259164 m!1064347))

(declare-fun m!1064353 () Bool)

(assert (=> d!259164 m!1064353))

(declare-fun m!1064355 () Bool)

(assert (=> d!259164 m!1064355))

(declare-fun m!1064357 () Bool)

(assert (=> b!824641 m!1064357))

(assert (=> b!824626 d!259164))

(declare-fun call!47601 () List!8883)

(declare-fun call!47600 () List!8883)

(declare-fun call!47604 () List!8883)

(declare-fun c!133823 () Bool)

(declare-fun call!47603 () List!8883)

(declare-fun bm!47595 () Bool)

(declare-fun ++!2283 (List!8883 List!8883) List!8883)

(assert (=> bm!47595 (= call!47603 (++!2283 (ite c!133823 call!47600 call!47604) (ite c!133823 call!47601 call!47600)))))

(declare-fun b!824684 () Bool)

(declare-fun e!544402 () List!8883)

(assert (=> b!824684 (= e!544402 (Cons!8867 (c!133802 r!27177) Nil!8867))))

(declare-fun b!824685 () Bool)

(declare-fun e!544406 () List!8883)

(assert (=> b!824685 (= e!544406 Nil!8867)))

(declare-fun b!824686 () Bool)

(assert (=> b!824686 (= e!544406 e!544402)))

(declare-fun c!133827 () Bool)

(assert (=> b!824686 (= c!133827 ((_ is ElementMatch!2057) r!27177))))

(declare-fun b!824687 () Bool)

(declare-fun e!544403 () List!8883)

(assert (=> b!824687 (= e!544403 call!47603)))

(declare-fun call!47602 () List!8883)

(declare-fun bm!47596 () Bool)

(declare-fun c!133824 () Bool)

(assert (=> bm!47596 (= call!47602 (firstChars!28 (ite c!133824 (reg!2386 r!27177) (ite c!133823 (regTwo!4627 r!27177) (regOne!4626 r!27177)))))))

(declare-fun b!824688 () Bool)

(assert (=> b!824688 (= c!133824 ((_ is Star!2057) r!27177))))

(declare-fun e!544404 () List!8883)

(assert (=> b!824688 (= e!544402 e!544404)))

(declare-fun b!824689 () Bool)

(declare-fun c!133825 () Bool)

(declare-fun nullable!507 (Regex!2057) Bool)

(assert (=> b!824689 (= c!133825 (nullable!507 (regOne!4626 r!27177)))))

(declare-fun e!544405 () List!8883)

(assert (=> b!824689 (= e!544405 e!544403)))

(declare-fun bm!47597 () Bool)

(assert (=> bm!47597 (= call!47600 (firstChars!28 (ite c!133823 (regOne!4627 r!27177) (regTwo!4626 r!27177))))))

(declare-fun d!259168 () Bool)

(declare-fun c!133826 () Bool)

(assert (=> d!259168 (= c!133826 (or ((_ is EmptyExpr!2057) r!27177) ((_ is EmptyLang!2057) r!27177)))))

(assert (=> d!259168 (= (firstChars!28 r!27177) e!544406)))

(declare-fun b!824690 () Bool)

(assert (=> b!824690 (= e!544404 call!47602)))

(declare-fun bm!47598 () Bool)

(assert (=> bm!47598 (= call!47601 call!47602)))

(declare-fun bm!47599 () Bool)

(assert (=> bm!47599 (= call!47604 call!47601)))

(declare-fun b!824691 () Bool)

(assert (=> b!824691 (= e!544404 e!544405)))

(assert (=> b!824691 (= c!133823 ((_ is Union!2057) r!27177))))

(declare-fun b!824692 () Bool)

(assert (=> b!824692 (= e!544403 call!47604)))

(declare-fun b!824693 () Bool)

(assert (=> b!824693 (= e!544405 call!47603)))

(assert (= (and d!259168 c!133826) b!824685))

(assert (= (and d!259168 (not c!133826)) b!824686))

(assert (= (and b!824686 c!133827) b!824684))

(assert (= (and b!824686 (not c!133827)) b!824688))

(assert (= (and b!824688 c!133824) b!824690))

(assert (= (and b!824688 (not c!133824)) b!824691))

(assert (= (and b!824691 c!133823) b!824693))

(assert (= (and b!824691 (not c!133823)) b!824689))

(assert (= (and b!824689 c!133825) b!824687))

(assert (= (and b!824689 (not c!133825)) b!824692))

(assert (= (or b!824687 b!824692) bm!47599))

(assert (= (or b!824693 bm!47599) bm!47598))

(assert (= (or b!824693 b!824687) bm!47597))

(assert (= (or b!824693 b!824687) bm!47595))

(assert (= (or b!824690 bm!47598) bm!47596))

(declare-fun m!1064365 () Bool)

(assert (=> bm!47595 m!1064365))

(declare-fun m!1064367 () Bool)

(assert (=> bm!47596 m!1064367))

(declare-fun m!1064369 () Bool)

(assert (=> b!824689 m!1064369))

(declare-fun m!1064371 () Bool)

(assert (=> bm!47597 m!1064371))

(assert (=> b!824626 d!259168))

(declare-fun b!824738 () Bool)

(declare-fun e!544440 () Bool)

(declare-fun e!544438 () Bool)

(assert (=> b!824738 (= e!544440 e!544438)))

(declare-fun res!380100 () Bool)

(assert (=> b!824738 (=> (not res!380100) (not e!544438))))

(declare-fun call!47626 () Bool)

(assert (=> b!824738 (= res!380100 call!47626)))

(declare-fun c!133845 () Bool)

(declare-fun bm!47619 () Bool)

(declare-fun c!133846 () Bool)

(declare-fun call!47625 () Bool)

(assert (=> bm!47619 (= call!47625 (validRegex!610 (ite c!133845 (reg!2386 r!27177) (ite c!133846 (regOne!4627 r!27177) (regTwo!4626 r!27177)))))))

(declare-fun bm!47620 () Bool)

(assert (=> bm!47620 (= call!47626 (validRegex!610 (ite c!133846 (regTwo!4627 r!27177) (regOne!4626 r!27177))))))

(declare-fun b!824739 () Bool)

(declare-fun res!380099 () Bool)

(assert (=> b!824739 (=> res!380099 e!544440)))

(assert (=> b!824739 (= res!380099 (not ((_ is Concat!3788) r!27177)))))

(declare-fun e!544435 () Bool)

(assert (=> b!824739 (= e!544435 e!544440)))

(declare-fun b!824740 () Bool)

(declare-fun call!47624 () Bool)

(assert (=> b!824740 (= e!544438 call!47624)))

(declare-fun b!824741 () Bool)

(declare-fun e!544439 () Bool)

(assert (=> b!824741 (= e!544439 call!47625)))

(declare-fun b!824742 () Bool)

(declare-fun e!544434 () Bool)

(assert (=> b!824742 (= e!544434 call!47626)))

(declare-fun b!824743 () Bool)

(declare-fun e!544437 () Bool)

(declare-fun e!544436 () Bool)

(assert (=> b!824743 (= e!544437 e!544436)))

(assert (=> b!824743 (= c!133845 ((_ is Star!2057) r!27177))))

(declare-fun bm!47621 () Bool)

(assert (=> bm!47621 (= call!47624 call!47625)))

(declare-fun b!824745 () Bool)

(assert (=> b!824745 (= e!544436 e!544439)))

(declare-fun res!380101 () Bool)

(assert (=> b!824745 (= res!380101 (not (nullable!507 (reg!2386 r!27177))))))

(assert (=> b!824745 (=> (not res!380101) (not e!544439))))

(declare-fun b!824746 () Bool)

(declare-fun res!380102 () Bool)

(assert (=> b!824746 (=> (not res!380102) (not e!544434))))

(assert (=> b!824746 (= res!380102 call!47624)))

(assert (=> b!824746 (= e!544435 e!544434)))

(declare-fun d!259172 () Bool)

(declare-fun res!380098 () Bool)

(assert (=> d!259172 (=> res!380098 e!544437)))

(assert (=> d!259172 (= res!380098 ((_ is ElementMatch!2057) r!27177))))

(assert (=> d!259172 (= (validRegex!610 r!27177) e!544437)))

(declare-fun b!824744 () Bool)

(assert (=> b!824744 (= e!544436 e!544435)))

(assert (=> b!824744 (= c!133846 ((_ is Union!2057) r!27177))))

(assert (= (and d!259172 (not res!380098)) b!824743))

(assert (= (and b!824743 c!133845) b!824745))

(assert (= (and b!824743 (not c!133845)) b!824744))

(assert (= (and b!824745 res!380101) b!824741))

(assert (= (and b!824744 c!133846) b!824746))

(assert (= (and b!824744 (not c!133846)) b!824739))

(assert (= (and b!824746 res!380102) b!824742))

(assert (= (and b!824739 (not res!380099)) b!824738))

(assert (= (and b!824738 res!380100) b!824740))

(assert (= (or b!824746 b!824740) bm!47621))

(assert (= (or b!824742 b!824738) bm!47620))

(assert (= (or b!824741 bm!47621) bm!47619))

(declare-fun m!1064381 () Bool)

(assert (=> bm!47619 m!1064381))

(declare-fun m!1064383 () Bool)

(assert (=> bm!47620 m!1064383))

(declare-fun m!1064385 () Bool)

(assert (=> b!824745 m!1064385))

(assert (=> start!73750 d!259172))

(declare-fun bm!47638 () Bool)

(declare-fun call!47644 () List!8883)

(declare-fun call!47646 () List!8883)

(assert (=> bm!47638 (= call!47644 call!47646)))

(declare-fun b!824789 () Bool)

(declare-fun c!133867 () Bool)

(assert (=> b!824789 (= c!133867 ((_ is Star!2057) (reg!2386 r!27177)))))

(declare-fun e!544466 () List!8883)

(declare-fun e!544468 () List!8883)

(assert (=> b!824789 (= e!544466 e!544468)))

(declare-fun b!824790 () Bool)

(assert (=> b!824790 (= e!544466 (Cons!8867 (c!133802 (reg!2386 r!27177)) Nil!8867))))

(declare-fun d!259176 () Bool)

(declare-fun c!133866 () Bool)

(assert (=> d!259176 (= c!133866 (or ((_ is EmptyExpr!2057) (reg!2386 r!27177)) ((_ is EmptyLang!2057) (reg!2386 r!27177))))))

(declare-fun e!544463 () List!8883)

(assert (=> d!259176 (= (usedCharacters!160 (reg!2386 r!27177)) e!544463)))

(declare-fun bm!47639 () Bool)

(declare-fun call!47645 () List!8883)

(declare-fun c!133869 () Bool)

(declare-fun call!47643 () List!8883)

(assert (=> bm!47639 (= call!47643 (++!2283 (ite c!133869 call!47645 call!47644) (ite c!133869 call!47644 call!47645)))))

(declare-fun b!824791 () Bool)

(assert (=> b!824791 (= e!544463 Nil!8867)))

(declare-fun b!824792 () Bool)

(declare-fun e!544467 () List!8883)

(assert (=> b!824792 (= e!544467 call!47643)))

(declare-fun bm!47640 () Bool)

(assert (=> bm!47640 (= call!47646 (usedCharacters!160 (ite c!133867 (reg!2386 (reg!2386 r!27177)) (ite c!133869 (regTwo!4627 (reg!2386 r!27177)) (regOne!4626 (reg!2386 r!27177))))))))

(declare-fun b!824793 () Bool)

(assert (=> b!824793 (= e!544468 e!544467)))

(assert (=> b!824793 (= c!133869 ((_ is Union!2057) (reg!2386 r!27177)))))

(declare-fun b!824794 () Bool)

(assert (=> b!824794 (= e!544468 call!47646)))

(declare-fun bm!47641 () Bool)

(assert (=> bm!47641 (= call!47645 (usedCharacters!160 (ite c!133869 (regOne!4627 (reg!2386 r!27177)) (regTwo!4626 (reg!2386 r!27177)))))))

(declare-fun b!824795 () Bool)

(assert (=> b!824795 (= e!544463 e!544466)))

(declare-fun c!133865 () Bool)

(assert (=> b!824795 (= c!133865 ((_ is ElementMatch!2057) (reg!2386 r!27177)))))

(declare-fun b!824796 () Bool)

(assert (=> b!824796 (= e!544467 call!47643)))

(assert (= (and d!259176 c!133866) b!824791))

(assert (= (and d!259176 (not c!133866)) b!824795))

(assert (= (and b!824795 c!133865) b!824790))

(assert (= (and b!824795 (not c!133865)) b!824789))

(assert (= (and b!824789 c!133867) b!824794))

(assert (= (and b!824789 (not c!133867)) b!824793))

(assert (= (and b!824793 c!133869) b!824792))

(assert (= (and b!824793 (not c!133869)) b!824796))

(assert (= (or b!824792 b!824796) bm!47638))

(assert (= (or b!824792 b!824796) bm!47641))

(assert (= (or b!824792 b!824796) bm!47639))

(assert (= (or b!824794 bm!47638) bm!47640))

(declare-fun m!1064413 () Bool)

(assert (=> bm!47639 m!1064413))

(declare-fun m!1064415 () Bool)

(assert (=> bm!47640 m!1064415))

(declare-fun m!1064417 () Bool)

(assert (=> bm!47641 m!1064417))

(assert (=> b!824625 d!259176))

(declare-fun d!259188 () Bool)

(assert (=> d!259188 (contains!1648 (usedCharacters!160 (reg!2386 r!27177)) c!13916)))

(declare-fun lt!317461 () Unit!13371)

(declare-fun choose!4930 (Regex!2057 C!4684) Unit!13371)

(assert (=> d!259188 (= lt!317461 (choose!4930 (reg!2386 r!27177) c!13916))))

(assert (=> d!259188 (validRegex!610 (reg!2386 r!27177))))

(assert (=> d!259188 (= (lemmaUsedCharsContainsAllFirstChars!2 (reg!2386 r!27177) c!13916) lt!317461)))

(declare-fun bs!229569 () Bool)

(assert (= bs!229569 d!259188))

(assert (=> bs!229569 m!1064341))

(assert (=> bs!229569 m!1064341))

(assert (=> bs!229569 m!1064345))

(declare-fun m!1064419 () Bool)

(assert (=> bs!229569 m!1064419))

(assert (=> bs!229569 m!1064351))

(assert (=> b!824625 d!259188))

(declare-fun bm!47648 () Bool)

(declare-fun call!47654 () List!8883)

(declare-fun call!47656 () List!8883)

(assert (=> bm!47648 (= call!47654 call!47656)))

(declare-fun b!824809 () Bool)

(declare-fun c!133875 () Bool)

(assert (=> b!824809 (= c!133875 ((_ is Star!2057) r!27177))))

(declare-fun e!544480 () List!8883)

(declare-fun e!544482 () List!8883)

(assert (=> b!824809 (= e!544480 e!544482)))

(declare-fun b!824810 () Bool)

(assert (=> b!824810 (= e!544480 (Cons!8867 (c!133802 r!27177) Nil!8867))))

(declare-fun d!259190 () Bool)

(declare-fun c!133874 () Bool)

(assert (=> d!259190 (= c!133874 (or ((_ is EmptyExpr!2057) r!27177) ((_ is EmptyLang!2057) r!27177)))))

(declare-fun e!544479 () List!8883)

(assert (=> d!259190 (= (usedCharacters!160 r!27177) e!544479)))

(declare-fun bm!47649 () Bool)

(declare-fun call!47653 () List!8883)

(declare-fun call!47655 () List!8883)

(declare-fun c!133876 () Bool)

(assert (=> bm!47649 (= call!47653 (++!2283 (ite c!133876 call!47655 call!47654) (ite c!133876 call!47654 call!47655)))))

(declare-fun b!824811 () Bool)

(assert (=> b!824811 (= e!544479 Nil!8867)))

(declare-fun b!824812 () Bool)

(declare-fun e!544481 () List!8883)

(assert (=> b!824812 (= e!544481 call!47653)))

(declare-fun bm!47650 () Bool)

(assert (=> bm!47650 (= call!47656 (usedCharacters!160 (ite c!133875 (reg!2386 r!27177) (ite c!133876 (regTwo!4627 r!27177) (regOne!4626 r!27177)))))))

(declare-fun b!824813 () Bool)

(assert (=> b!824813 (= e!544482 e!544481)))

(assert (=> b!824813 (= c!133876 ((_ is Union!2057) r!27177))))

(declare-fun b!824814 () Bool)

(assert (=> b!824814 (= e!544482 call!47656)))

(declare-fun bm!47651 () Bool)

(assert (=> bm!47651 (= call!47655 (usedCharacters!160 (ite c!133876 (regOne!4627 r!27177) (regTwo!4626 r!27177))))))

(declare-fun b!824815 () Bool)

(assert (=> b!824815 (= e!544479 e!544480)))

(declare-fun c!133873 () Bool)

(assert (=> b!824815 (= c!133873 ((_ is ElementMatch!2057) r!27177))))

(declare-fun b!824816 () Bool)

(assert (=> b!824816 (= e!544481 call!47653)))

(assert (= (and d!259190 c!133874) b!824811))

(assert (= (and d!259190 (not c!133874)) b!824815))

(assert (= (and b!824815 c!133873) b!824810))

(assert (= (and b!824815 (not c!133873)) b!824809))

(assert (= (and b!824809 c!133875) b!824814))

(assert (= (and b!824809 (not c!133875)) b!824813))

(assert (= (and b!824813 c!133876) b!824812))

(assert (= (and b!824813 (not c!133876)) b!824816))

(assert (= (or b!824812 b!824816) bm!47648))

(assert (= (or b!824812 b!824816) bm!47651))

(assert (= (or b!824812 b!824816) bm!47649))

(assert (= (or b!824814 bm!47648) bm!47650))

(declare-fun m!1064421 () Bool)

(assert (=> bm!47649 m!1064421))

(declare-fun m!1064423 () Bool)

(assert (=> bm!47650 m!1064423))

(declare-fun m!1064425 () Bool)

(assert (=> bm!47651 m!1064425))

(assert (=> b!824625 d!259190))

(declare-fun d!259192 () Bool)

(declare-fun lt!317462 () Bool)

(assert (=> d!259192 (= lt!317462 (select (content!1296 (usedCharacters!160 r!27177)) c!13916))))

(declare-fun e!544490 () Bool)

(assert (=> d!259192 (= lt!317462 e!544490)))

(declare-fun res!380122 () Bool)

(assert (=> d!259192 (=> (not res!380122) (not e!544490))))

(assert (=> d!259192 (= res!380122 ((_ is Cons!8867) (usedCharacters!160 r!27177)))))

(assert (=> d!259192 (= (contains!1648 (usedCharacters!160 r!27177) c!13916) lt!317462)))

(declare-fun b!824826 () Bool)

(declare-fun e!544491 () Bool)

(assert (=> b!824826 (= e!544490 e!544491)))

(declare-fun res!380123 () Bool)

(assert (=> b!824826 (=> res!380123 e!544491)))

(assert (=> b!824826 (= res!380123 (= (h!14268 (usedCharacters!160 r!27177)) c!13916))))

(declare-fun b!824827 () Bool)

(assert (=> b!824827 (= e!544491 (contains!1648 (t!93175 (usedCharacters!160 r!27177)) c!13916))))

(assert (= (and d!259192 res!380122) b!824826))

(assert (= (and b!824826 (not res!380123)) b!824827))

(assert (=> d!259192 m!1064337))

(declare-fun m!1064427 () Bool)

(assert (=> d!259192 m!1064427))

(declare-fun m!1064429 () Bool)

(assert (=> d!259192 m!1064429))

(declare-fun m!1064431 () Bool)

(assert (=> b!824827 m!1064431))

(assert (=> b!824625 d!259192))

(declare-fun d!259194 () Bool)

(declare-fun lt!317463 () Bool)

(assert (=> d!259194 (= lt!317463 (select (content!1296 (usedCharacters!160 (reg!2386 r!27177))) c!13916))))

(declare-fun e!544492 () Bool)

(assert (=> d!259194 (= lt!317463 e!544492)))

(declare-fun res!380124 () Bool)

(assert (=> d!259194 (=> (not res!380124) (not e!544492))))

(assert (=> d!259194 (= res!380124 ((_ is Cons!8867) (usedCharacters!160 (reg!2386 r!27177))))))

(assert (=> d!259194 (= (contains!1648 (usedCharacters!160 (reg!2386 r!27177)) c!13916) lt!317463)))

(declare-fun b!824828 () Bool)

(declare-fun e!544493 () Bool)

(assert (=> b!824828 (= e!544492 e!544493)))

(declare-fun res!380125 () Bool)

(assert (=> b!824828 (=> res!380125 e!544493)))

(assert (=> b!824828 (= res!380125 (= (h!14268 (usedCharacters!160 (reg!2386 r!27177))) c!13916))))

(declare-fun b!824829 () Bool)

(assert (=> b!824829 (= e!544493 (contains!1648 (t!93175 (usedCharacters!160 (reg!2386 r!27177))) c!13916))))

(assert (= (and d!259194 res!380124) b!824828))

(assert (= (and b!824828 (not res!380125)) b!824829))

(assert (=> d!259194 m!1064341))

(declare-fun m!1064439 () Bool)

(assert (=> d!259194 m!1064439))

(declare-fun m!1064441 () Bool)

(assert (=> d!259194 m!1064441))

(declare-fun m!1064443 () Bool)

(assert (=> b!824829 m!1064443))

(assert (=> b!824625 d!259194))

(declare-fun d!259198 () Bool)

(declare-fun lt!317465 () Bool)

(assert (=> d!259198 (= lt!317465 (select (content!1296 (firstChars!28 (reg!2386 r!27177))) c!13916))))

(declare-fun e!544496 () Bool)

(assert (=> d!259198 (= lt!317465 e!544496)))

(declare-fun res!380128 () Bool)

(assert (=> d!259198 (=> (not res!380128) (not e!544496))))

(assert (=> d!259198 (= res!380128 ((_ is Cons!8867) (firstChars!28 (reg!2386 r!27177))))))

(assert (=> d!259198 (= (contains!1648 (firstChars!28 (reg!2386 r!27177)) c!13916) lt!317465)))

(declare-fun b!824832 () Bool)

(declare-fun e!544497 () Bool)

(assert (=> b!824832 (= e!544496 e!544497)))

(declare-fun res!380129 () Bool)

(assert (=> b!824832 (=> res!380129 e!544497)))

(assert (=> b!824832 (= res!380129 (= (h!14268 (firstChars!28 (reg!2386 r!27177))) c!13916))))

(declare-fun b!824833 () Bool)

(assert (=> b!824833 (= e!544497 (contains!1648 (t!93175 (firstChars!28 (reg!2386 r!27177))) c!13916))))

(assert (= (and d!259198 res!380128) b!824832))

(assert (= (and b!824832 (not res!380129)) b!824833))

(assert (=> d!259198 m!1064331))

(declare-fun m!1064447 () Bool)

(assert (=> d!259198 m!1064447))

(declare-fun m!1064451 () Bool)

(assert (=> d!259198 m!1064451))

(declare-fun m!1064455 () Bool)

(assert (=> b!824833 m!1064455))

(assert (=> b!824624 d!259198))

(declare-fun bm!47656 () Bool)

(declare-fun call!47668 () List!8883)

(declare-fun call!47669 () List!8883)

(declare-fun call!47664 () List!8883)

(declare-fun c!133881 () Bool)

(declare-fun call!47663 () List!8883)

(assert (=> bm!47656 (= call!47668 (++!2283 (ite c!133881 call!47663 call!47669) (ite c!133881 call!47664 call!47663)))))

(declare-fun b!824838 () Bool)

(declare-fun e!544500 () List!8883)

(assert (=> b!824838 (= e!544500 (Cons!8867 (c!133802 (reg!2386 r!27177)) Nil!8867))))

(declare-fun b!824839 () Bool)

(declare-fun e!544507 () List!8883)

(assert (=> b!824839 (= e!544507 Nil!8867)))

(declare-fun b!824841 () Bool)

(assert (=> b!824841 (= e!544507 e!544500)))

(declare-fun c!133888 () Bool)

(assert (=> b!824841 (= c!133888 ((_ is ElementMatch!2057) (reg!2386 r!27177)))))

(declare-fun b!824843 () Bool)

(declare-fun e!544504 () List!8883)

(assert (=> b!824843 (= e!544504 call!47668)))

(declare-fun call!47666 () List!8883)

(declare-fun c!133882 () Bool)

(declare-fun bm!47659 () Bool)

(assert (=> bm!47659 (= call!47666 (firstChars!28 (ite c!133882 (reg!2386 (reg!2386 r!27177)) (ite c!133881 (regTwo!4627 (reg!2386 r!27177)) (regOne!4626 (reg!2386 r!27177))))))))

(declare-fun b!824846 () Bool)

(assert (=> b!824846 (= c!133882 ((_ is Star!2057) (reg!2386 r!27177)))))

(declare-fun e!544505 () List!8883)

(assert (=> b!824846 (= e!544500 e!544505)))

(declare-fun b!824848 () Bool)

(declare-fun c!133883 () Bool)

(assert (=> b!824848 (= c!133883 (nullable!507 (regOne!4626 (reg!2386 r!27177))))))

(declare-fun e!544506 () List!8883)

(assert (=> b!824848 (= e!544506 e!544504)))

(declare-fun bm!47661 () Bool)

(assert (=> bm!47661 (= call!47663 (firstChars!28 (ite c!133881 (regOne!4627 (reg!2386 r!27177)) (regTwo!4626 (reg!2386 r!27177)))))))

(declare-fun d!259202 () Bool)

(declare-fun c!133886 () Bool)

(assert (=> d!259202 (= c!133886 (or ((_ is EmptyExpr!2057) (reg!2386 r!27177)) ((_ is EmptyLang!2057) (reg!2386 r!27177))))))

(assert (=> d!259202 (= (firstChars!28 (reg!2386 r!27177)) e!544507)))

(declare-fun b!824849 () Bool)

(assert (=> b!824849 (= e!544505 call!47666)))

(declare-fun bm!47663 () Bool)

(assert (=> bm!47663 (= call!47664 call!47666)))

(declare-fun bm!47664 () Bool)

(assert (=> bm!47664 (= call!47669 call!47664)))

(declare-fun b!824851 () Bool)

(assert (=> b!824851 (= e!544505 e!544506)))

(assert (=> b!824851 (= c!133881 ((_ is Union!2057) (reg!2386 r!27177)))))

(declare-fun b!824852 () Bool)

(assert (=> b!824852 (= e!544504 call!47669)))

(declare-fun b!824853 () Bool)

(assert (=> b!824853 (= e!544506 call!47668)))

(assert (= (and d!259202 c!133886) b!824839))

(assert (= (and d!259202 (not c!133886)) b!824841))

(assert (= (and b!824841 c!133888) b!824838))

(assert (= (and b!824841 (not c!133888)) b!824846))

(assert (= (and b!824846 c!133882) b!824849))

(assert (= (and b!824846 (not c!133882)) b!824851))

(assert (= (and b!824851 c!133881) b!824853))

(assert (= (and b!824851 (not c!133881)) b!824848))

(assert (= (and b!824848 c!133883) b!824843))

(assert (= (and b!824848 (not c!133883)) b!824852))

(assert (= (or b!824843 b!824852) bm!47664))

(assert (= (or b!824853 bm!47664) bm!47663))

(assert (= (or b!824853 b!824843) bm!47661))

(assert (= (or b!824853 b!824843) bm!47656))

(assert (= (or b!824849 bm!47663) bm!47659))

(declare-fun m!1064459 () Bool)

(assert (=> bm!47656 m!1064459))

(declare-fun m!1064463 () Bool)

(assert (=> bm!47659 m!1064463))

(declare-fun m!1064467 () Bool)

(assert (=> b!824848 m!1064467))

(declare-fun m!1064471 () Bool)

(assert (=> bm!47661 m!1064471))

(assert (=> b!824624 d!259202))

(declare-fun b!824863 () Bool)

(declare-fun e!544521 () Bool)

(declare-fun e!544519 () Bool)

(assert (=> b!824863 (= e!544521 e!544519)))

(declare-fun res!380137 () Bool)

(assert (=> b!824863 (=> (not res!380137) (not e!544519))))

(declare-fun call!47675 () Bool)

(assert (=> b!824863 (= res!380137 call!47675)))

(declare-fun bm!47668 () Bool)

(declare-fun c!133892 () Bool)

(declare-fun call!47674 () Bool)

(declare-fun c!133891 () Bool)

(assert (=> bm!47668 (= call!47674 (validRegex!610 (ite c!133891 (reg!2386 (reg!2386 r!27177)) (ite c!133892 (regOne!4627 (reg!2386 r!27177)) (regTwo!4626 (reg!2386 r!27177))))))))

(declare-fun bm!47669 () Bool)

(assert (=> bm!47669 (= call!47675 (validRegex!610 (ite c!133892 (regTwo!4627 (reg!2386 r!27177)) (regOne!4626 (reg!2386 r!27177)))))))

(declare-fun b!824864 () Bool)

(declare-fun res!380136 () Bool)

(assert (=> b!824864 (=> res!380136 e!544521)))

(assert (=> b!824864 (= res!380136 (not ((_ is Concat!3788) (reg!2386 r!27177))))))

(declare-fun e!544516 () Bool)

(assert (=> b!824864 (= e!544516 e!544521)))

(declare-fun b!824865 () Bool)

(declare-fun call!47673 () Bool)

(assert (=> b!824865 (= e!544519 call!47673)))

(declare-fun b!824866 () Bool)

(declare-fun e!544520 () Bool)

(assert (=> b!824866 (= e!544520 call!47674)))

(declare-fun b!824867 () Bool)

(declare-fun e!544515 () Bool)

(assert (=> b!824867 (= e!544515 call!47675)))

(declare-fun b!824868 () Bool)

(declare-fun e!544518 () Bool)

(declare-fun e!544517 () Bool)

(assert (=> b!824868 (= e!544518 e!544517)))

(assert (=> b!824868 (= c!133891 ((_ is Star!2057) (reg!2386 r!27177)))))

(declare-fun bm!47670 () Bool)

(assert (=> bm!47670 (= call!47673 call!47674)))

(declare-fun b!824870 () Bool)

(assert (=> b!824870 (= e!544517 e!544520)))

(declare-fun res!380138 () Bool)

(assert (=> b!824870 (= res!380138 (not (nullable!507 (reg!2386 (reg!2386 r!27177)))))))

(assert (=> b!824870 (=> (not res!380138) (not e!544520))))

(declare-fun b!824871 () Bool)

(declare-fun res!380139 () Bool)

(assert (=> b!824871 (=> (not res!380139) (not e!544515))))

(assert (=> b!824871 (= res!380139 call!47673)))

(assert (=> b!824871 (= e!544516 e!544515)))

(declare-fun d!259206 () Bool)

(declare-fun res!380135 () Bool)

(assert (=> d!259206 (=> res!380135 e!544518)))

(assert (=> d!259206 (= res!380135 ((_ is ElementMatch!2057) (reg!2386 r!27177)))))

(assert (=> d!259206 (= (validRegex!610 (reg!2386 r!27177)) e!544518)))

(declare-fun b!824869 () Bool)

(assert (=> b!824869 (= e!544517 e!544516)))

(assert (=> b!824869 (= c!133892 ((_ is Union!2057) (reg!2386 r!27177)))))

(assert (= (and d!259206 (not res!380135)) b!824868))

(assert (= (and b!824868 c!133891) b!824870))

(assert (= (and b!824868 (not c!133891)) b!824869))

(assert (= (and b!824870 res!380138) b!824866))

(assert (= (and b!824869 c!133892) b!824871))

(assert (= (and b!824869 (not c!133892)) b!824864))

(assert (= (and b!824871 res!380139) b!824867))

(assert (= (and b!824864 (not res!380136)) b!824863))

(assert (= (and b!824863 res!380137) b!824865))

(assert (= (or b!824871 b!824865) bm!47670))

(assert (= (or b!824867 b!824863) bm!47669))

(assert (= (or b!824866 bm!47670) bm!47668))

(declare-fun m!1064477 () Bool)

(assert (=> bm!47668 m!1064477))

(declare-fun m!1064481 () Bool)

(assert (=> bm!47669 m!1064481))

(declare-fun m!1064483 () Bool)

(assert (=> b!824870 m!1064483))

(assert (=> b!824623 d!259206))

(declare-fun b!824899 () Bool)

(declare-fun e!544527 () Bool)

(declare-fun tp!257793 () Bool)

(declare-fun tp!257794 () Bool)

(assert (=> b!824899 (= e!544527 (and tp!257793 tp!257794))))

(declare-fun b!824896 () Bool)

(assert (=> b!824896 (= e!544527 tp_is_empty!3837)))

(assert (=> b!824631 (= tp!257762 e!544527)))

(declare-fun b!824897 () Bool)

(declare-fun tp!257791 () Bool)

(declare-fun tp!257790 () Bool)

(assert (=> b!824897 (= e!544527 (and tp!257791 tp!257790))))

(declare-fun b!824898 () Bool)

(declare-fun tp!257792 () Bool)

(assert (=> b!824898 (= e!544527 tp!257792)))

(assert (= (and b!824631 ((_ is ElementMatch!2057) (reg!2386 r!27177))) b!824896))

(assert (= (and b!824631 ((_ is Concat!3788) (reg!2386 r!27177))) b!824897))

(assert (= (and b!824631 ((_ is Star!2057) (reg!2386 r!27177))) b!824898))

(assert (= (and b!824631 ((_ is Union!2057) (reg!2386 r!27177))) b!824899))

(declare-fun b!824907 () Bool)

(declare-fun e!544529 () Bool)

(declare-fun tp!257803 () Bool)

(declare-fun tp!257804 () Bool)

(assert (=> b!824907 (= e!544529 (and tp!257803 tp!257804))))

(declare-fun b!824904 () Bool)

(assert (=> b!824904 (= e!544529 tp_is_empty!3837)))

(assert (=> b!824630 (= tp!257764 e!544529)))

(declare-fun b!824905 () Bool)

(declare-fun tp!257801 () Bool)

(declare-fun tp!257800 () Bool)

(assert (=> b!824905 (= e!544529 (and tp!257801 tp!257800))))

(declare-fun b!824906 () Bool)

(declare-fun tp!257802 () Bool)

(assert (=> b!824906 (= e!544529 tp!257802)))

(assert (= (and b!824630 ((_ is ElementMatch!2057) (regOne!4627 r!27177))) b!824904))

(assert (= (and b!824630 ((_ is Concat!3788) (regOne!4627 r!27177))) b!824905))

(assert (= (and b!824630 ((_ is Star!2057) (regOne!4627 r!27177))) b!824906))

(assert (= (and b!824630 ((_ is Union!2057) (regOne!4627 r!27177))) b!824907))

(declare-fun b!824915 () Bool)

(declare-fun e!544531 () Bool)

(declare-fun tp!257813 () Bool)

(declare-fun tp!257814 () Bool)

(assert (=> b!824915 (= e!544531 (and tp!257813 tp!257814))))

(declare-fun b!824912 () Bool)

(assert (=> b!824912 (= e!544531 tp_is_empty!3837)))

(assert (=> b!824630 (= tp!257761 e!544531)))

(declare-fun b!824913 () Bool)

(declare-fun tp!257811 () Bool)

(declare-fun tp!257810 () Bool)

(assert (=> b!824913 (= e!544531 (and tp!257811 tp!257810))))

(declare-fun b!824914 () Bool)

(declare-fun tp!257812 () Bool)

(assert (=> b!824914 (= e!544531 tp!257812)))

(assert (= (and b!824630 ((_ is ElementMatch!2057) (regTwo!4627 r!27177))) b!824912))

(assert (= (and b!824630 ((_ is Concat!3788) (regTwo!4627 r!27177))) b!824913))

(assert (= (and b!824630 ((_ is Star!2057) (regTwo!4627 r!27177))) b!824914))

(assert (= (and b!824630 ((_ is Union!2057) (regTwo!4627 r!27177))) b!824915))

(declare-fun b!824923 () Bool)

(declare-fun e!544533 () Bool)

(declare-fun tp!257823 () Bool)

(declare-fun tp!257824 () Bool)

(assert (=> b!824923 (= e!544533 (and tp!257823 tp!257824))))

(declare-fun b!824920 () Bool)

(assert (=> b!824920 (= e!544533 tp_is_empty!3837)))

(assert (=> b!824627 (= tp!257763 e!544533)))

(declare-fun b!824921 () Bool)

(declare-fun tp!257821 () Bool)

(declare-fun tp!257820 () Bool)

(assert (=> b!824921 (= e!544533 (and tp!257821 tp!257820))))

(declare-fun b!824922 () Bool)

(declare-fun tp!257822 () Bool)

(assert (=> b!824922 (= e!544533 tp!257822)))

(assert (= (and b!824627 ((_ is ElementMatch!2057) (regOne!4626 r!27177))) b!824920))

(assert (= (and b!824627 ((_ is Concat!3788) (regOne!4626 r!27177))) b!824921))

(assert (= (and b!824627 ((_ is Star!2057) (regOne!4626 r!27177))) b!824922))

(assert (= (and b!824627 ((_ is Union!2057) (regOne!4626 r!27177))) b!824923))

(declare-fun b!824931 () Bool)

(declare-fun e!544535 () Bool)

(declare-fun tp!257833 () Bool)

(declare-fun tp!257834 () Bool)

(assert (=> b!824931 (= e!544535 (and tp!257833 tp!257834))))

(declare-fun b!824928 () Bool)

(assert (=> b!824928 (= e!544535 tp_is_empty!3837)))

(assert (=> b!824627 (= tp!257760 e!544535)))

(declare-fun b!824929 () Bool)

(declare-fun tp!257831 () Bool)

(declare-fun tp!257830 () Bool)

(assert (=> b!824929 (= e!544535 (and tp!257831 tp!257830))))

(declare-fun b!824930 () Bool)

(declare-fun tp!257832 () Bool)

(assert (=> b!824930 (= e!544535 tp!257832)))

(assert (= (and b!824627 ((_ is ElementMatch!2057) (regTwo!4626 r!27177))) b!824928))

(assert (= (and b!824627 ((_ is Concat!3788) (regTwo!4626 r!27177))) b!824929))

(assert (= (and b!824627 ((_ is Star!2057) (regTwo!4626 r!27177))) b!824930))

(assert (= (and b!824627 ((_ is Union!2057) (regTwo!4626 r!27177))) b!824931))

(check-sat (not bm!47656) (not b!824907) tp_is_empty!3837 (not bm!47659) (not b!824848) (not b!824922) (not b!824829) (not b!824906) (not b!824899) (not b!824921) (not b!824833) (not d!259198) (not b!824923) (not b!824898) (not bm!47649) (not b!824929) (not bm!47668) (not bm!47597) (not b!824914) (not bm!47651) (not bm!47596) (not b!824641) (not bm!47619) (not bm!47595) (not b!824913) (not b!824905) (not bm!47650) (not bm!47640) (not b!824897) (not bm!47669) (not b!824931) (not bm!47639) (not d!259194) (not b!824915) (not d!259188) (not bm!47620) (not b!824930) (not d!259164) (not b!824870) (not d!259192) (not b!824827) (not b!824689) (not b!824745) (not bm!47641) (not bm!47661))
(check-sat)
