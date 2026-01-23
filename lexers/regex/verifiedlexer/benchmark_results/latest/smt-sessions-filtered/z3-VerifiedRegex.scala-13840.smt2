; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735924 () Bool)

(assert start!735924)

(declare-fun b!7649530 () Bool)

(declare-fun e!4546090 () Bool)

(declare-fun tp_is_empty!51305 () Bool)

(assert (=> b!7649530 (= e!4546090 tp_is_empty!51305)))

(declare-fun b!7649531 () Bool)

(declare-fun tp!2233771 () Bool)

(assert (=> b!7649531 (= e!4546090 tp!2233771)))

(declare-fun b!7649532 () Bool)

(declare-fun res!3063461 () Bool)

(declare-fun e!4546091 () Bool)

(assert (=> b!7649532 (=> (not res!3063461) (not e!4546091))))

(declare-datatypes ((C!41276 0))(
  ( (C!41277 (val!31078 Int)) )
))
(declare-datatypes ((Regex!20475 0))(
  ( (ElementMatch!20475 (c!1408844 C!41276)) (Concat!29320 (regOne!41462 Regex!20475) (regTwo!41462 Regex!20475)) (EmptyExpr!20475) (Star!20475 (reg!20804 Regex!20475)) (EmptyLang!20475) (Union!20475 (regOne!41463 Regex!20475) (regTwo!41463 Regex!20475)) )
))
(declare-fun r!14126 () Regex!20475)

(get-info :version)

(assert (=> b!7649532 (= res!3063461 (and (not ((_ is EmptyExpr!20475) r!14126)) (not ((_ is EmptyLang!20475) r!14126)) (not ((_ is ElementMatch!20475) r!14126)) (not ((_ is Union!20475) r!14126)) ((_ is Star!20475) r!14126)))))

(declare-fun b!7649533 () Bool)

(declare-fun e!4546089 () Bool)

(declare-fun tp!2233768 () Bool)

(assert (=> b!7649533 (= e!4546089 (and tp_is_empty!51305 tp!2233768))))

(declare-fun b!7649534 () Bool)

(declare-fun res!3063462 () Bool)

(assert (=> b!7649534 (=> (not res!3063462) (not e!4546091))))

(declare-datatypes ((List!73326 0))(
  ( (Nil!73202) (Cons!73202 (h!79650 C!41276) (t!388061 List!73326)) )
))
(declare-fun s!9605 () List!73326)

(declare-fun isEmpty!41827 (List!73326) Bool)

(assert (=> b!7649534 (= res!3063462 (not (isEmpty!41827 s!9605)))))

(declare-fun b!7649535 () Bool)

(declare-fun tp!2233769 () Bool)

(declare-fun tp!2233773 () Bool)

(assert (=> b!7649535 (= e!4546090 (and tp!2233769 tp!2233773))))

(declare-fun res!3063460 () Bool)

(assert (=> start!735924 (=> (not res!3063460) (not e!4546091))))

(declare-fun validRegex!10893 (Regex!20475) Bool)

(assert (=> start!735924 (= res!3063460 (validRegex!10893 r!14126))))

(assert (=> start!735924 e!4546091))

(assert (=> start!735924 e!4546090))

(assert (=> start!735924 e!4546089))

(declare-fun b!7649536 () Bool)

(declare-fun tp!2233772 () Bool)

(declare-fun tp!2233770 () Bool)

(assert (=> b!7649536 (= e!4546090 (and tp!2233772 tp!2233770))))

(declare-fun b!7649537 () Bool)

(assert (=> b!7649537 (= e!4546091 (not (validRegex!10893 (reg!20804 r!14126))))))

(assert (= (and start!735924 res!3063460) b!7649532))

(assert (= (and b!7649532 res!3063461) b!7649534))

(assert (= (and b!7649534 res!3063462) b!7649537))

(assert (= (and start!735924 ((_ is ElementMatch!20475) r!14126)) b!7649530))

(assert (= (and start!735924 ((_ is Concat!29320) r!14126)) b!7649536))

(assert (= (and start!735924 ((_ is Star!20475) r!14126)) b!7649531))

(assert (= (and start!735924 ((_ is Union!20475) r!14126)) b!7649535))

(assert (= (and start!735924 ((_ is Cons!73202) s!9605)) b!7649533))

(declare-fun m!8165536 () Bool)

(assert (=> b!7649534 m!8165536))

(declare-fun m!8165538 () Bool)

(assert (=> start!735924 m!8165538))

(declare-fun m!8165540 () Bool)

(assert (=> b!7649537 m!8165540))

(check-sat (not b!7649537) (not b!7649535) (not b!7649533) (not b!7649536) (not start!735924) (not b!7649534) (not b!7649531) tp_is_empty!51305)
(check-sat)
(get-model)

(declare-fun b!7649627 () Bool)

(declare-fun e!4546144 () Bool)

(declare-fun call!702318 () Bool)

(assert (=> b!7649627 (= e!4546144 call!702318)))

(declare-fun b!7649628 () Bool)

(declare-fun e!4546150 () Bool)

(assert (=> b!7649628 (= e!4546150 e!4546144)))

(declare-fun res!3063493 () Bool)

(declare-fun nullable!8976 (Regex!20475) Bool)

(assert (=> b!7649628 (= res!3063493 (not (nullable!8976 (reg!20804 (reg!20804 r!14126)))))))

(assert (=> b!7649628 (=> (not res!3063493) (not e!4546144))))

(declare-fun bm!702312 () Bool)

(declare-fun call!702319 () Bool)

(declare-fun c!1408858 () Bool)

(assert (=> bm!702312 (= call!702319 (validRegex!10893 (ite c!1408858 (regOne!41463 (reg!20804 r!14126)) (regOne!41462 (reg!20804 r!14126)))))))

(declare-fun bm!702313 () Bool)

(declare-fun c!1408857 () Bool)

(assert (=> bm!702313 (= call!702318 (validRegex!10893 (ite c!1408857 (reg!20804 (reg!20804 r!14126)) (ite c!1408858 (regTwo!41463 (reg!20804 r!14126)) (regTwo!41462 (reg!20804 r!14126))))))))

(declare-fun b!7649629 () Bool)

(declare-fun e!4546146 () Bool)

(assert (=> b!7649629 (= e!4546146 e!4546150)))

(assert (=> b!7649629 (= c!1408857 ((_ is Star!20475) (reg!20804 r!14126)))))

(declare-fun b!7649630 () Bool)

(declare-fun e!4546145 () Bool)

(declare-fun e!4546147 () Bool)

(assert (=> b!7649630 (= e!4546145 e!4546147)))

(declare-fun res!3063496 () Bool)

(assert (=> b!7649630 (=> (not res!3063496) (not e!4546147))))

(assert (=> b!7649630 (= res!3063496 call!702319)))

(declare-fun bm!702314 () Bool)

(declare-fun call!702317 () Bool)

(assert (=> bm!702314 (= call!702317 call!702318)))

(declare-fun b!7649632 () Bool)

(declare-fun e!4546149 () Bool)

(assert (=> b!7649632 (= e!4546150 e!4546149)))

(assert (=> b!7649632 (= c!1408858 ((_ is Union!20475) (reg!20804 r!14126)))))

(declare-fun b!7649633 () Bool)

(declare-fun e!4546148 () Bool)

(assert (=> b!7649633 (= e!4546148 call!702317)))

(declare-fun b!7649634 () Bool)

(assert (=> b!7649634 (= e!4546147 call!702317)))

(declare-fun b!7649635 () Bool)

(declare-fun res!3063495 () Bool)

(assert (=> b!7649635 (=> res!3063495 e!4546145)))

(assert (=> b!7649635 (= res!3063495 (not ((_ is Concat!29320) (reg!20804 r!14126))))))

(assert (=> b!7649635 (= e!4546149 e!4546145)))

(declare-fun b!7649631 () Bool)

(declare-fun res!3063494 () Bool)

(assert (=> b!7649631 (=> (not res!3063494) (not e!4546148))))

(assert (=> b!7649631 (= res!3063494 call!702319)))

(assert (=> b!7649631 (= e!4546149 e!4546148)))

(declare-fun d!2325869 () Bool)

(declare-fun res!3063497 () Bool)

(assert (=> d!2325869 (=> res!3063497 e!4546146)))

(assert (=> d!2325869 (= res!3063497 ((_ is ElementMatch!20475) (reg!20804 r!14126)))))

(assert (=> d!2325869 (= (validRegex!10893 (reg!20804 r!14126)) e!4546146)))

(assert (= (and d!2325869 (not res!3063497)) b!7649629))

(assert (= (and b!7649629 c!1408857) b!7649628))

(assert (= (and b!7649629 (not c!1408857)) b!7649632))

(assert (= (and b!7649628 res!3063493) b!7649627))

(assert (= (and b!7649632 c!1408858) b!7649631))

(assert (= (and b!7649632 (not c!1408858)) b!7649635))

(assert (= (and b!7649631 res!3063494) b!7649633))

(assert (= (and b!7649635 (not res!3063495)) b!7649630))

(assert (= (and b!7649630 res!3063496) b!7649634))

(assert (= (or b!7649631 b!7649630) bm!702312))

(assert (= (or b!7649633 b!7649634) bm!702314))

(assert (= (or b!7649627 bm!702314) bm!702313))

(declare-fun m!8165554 () Bool)

(assert (=> b!7649628 m!8165554))

(declare-fun m!8165556 () Bool)

(assert (=> bm!702312 m!8165556))

(declare-fun m!8165558 () Bool)

(assert (=> bm!702313 m!8165558))

(assert (=> b!7649537 d!2325869))

(declare-fun d!2325873 () Bool)

(assert (=> d!2325873 (= (isEmpty!41827 s!9605) ((_ is Nil!73202) s!9605))))

(assert (=> b!7649534 d!2325873))

(declare-fun b!7649636 () Bool)

(declare-fun e!4546151 () Bool)

(declare-fun call!702321 () Bool)

(assert (=> b!7649636 (= e!4546151 call!702321)))

(declare-fun b!7649637 () Bool)

(declare-fun e!4546157 () Bool)

(assert (=> b!7649637 (= e!4546157 e!4546151)))

(declare-fun res!3063498 () Bool)

(assert (=> b!7649637 (= res!3063498 (not (nullable!8976 (reg!20804 r!14126))))))

(assert (=> b!7649637 (=> (not res!3063498) (not e!4546151))))

(declare-fun bm!702315 () Bool)

(declare-fun call!702322 () Bool)

(declare-fun c!1408860 () Bool)

(assert (=> bm!702315 (= call!702322 (validRegex!10893 (ite c!1408860 (regOne!41463 r!14126) (regOne!41462 r!14126))))))

(declare-fun c!1408859 () Bool)

(declare-fun bm!702316 () Bool)

(assert (=> bm!702316 (= call!702321 (validRegex!10893 (ite c!1408859 (reg!20804 r!14126) (ite c!1408860 (regTwo!41463 r!14126) (regTwo!41462 r!14126)))))))

(declare-fun b!7649638 () Bool)

(declare-fun e!4546153 () Bool)

(assert (=> b!7649638 (= e!4546153 e!4546157)))

(assert (=> b!7649638 (= c!1408859 ((_ is Star!20475) r!14126))))

(declare-fun b!7649639 () Bool)

(declare-fun e!4546152 () Bool)

(declare-fun e!4546154 () Bool)

(assert (=> b!7649639 (= e!4546152 e!4546154)))

(declare-fun res!3063501 () Bool)

(assert (=> b!7649639 (=> (not res!3063501) (not e!4546154))))

(assert (=> b!7649639 (= res!3063501 call!702322)))

(declare-fun bm!702317 () Bool)

(declare-fun call!702320 () Bool)

(assert (=> bm!702317 (= call!702320 call!702321)))

(declare-fun b!7649641 () Bool)

(declare-fun e!4546156 () Bool)

(assert (=> b!7649641 (= e!4546157 e!4546156)))

(assert (=> b!7649641 (= c!1408860 ((_ is Union!20475) r!14126))))

(declare-fun b!7649642 () Bool)

(declare-fun e!4546155 () Bool)

(assert (=> b!7649642 (= e!4546155 call!702320)))

(declare-fun b!7649643 () Bool)

(assert (=> b!7649643 (= e!4546154 call!702320)))

(declare-fun b!7649644 () Bool)

(declare-fun res!3063500 () Bool)

(assert (=> b!7649644 (=> res!3063500 e!4546152)))

(assert (=> b!7649644 (= res!3063500 (not ((_ is Concat!29320) r!14126)))))

(assert (=> b!7649644 (= e!4546156 e!4546152)))

(declare-fun b!7649640 () Bool)

(declare-fun res!3063499 () Bool)

(assert (=> b!7649640 (=> (not res!3063499) (not e!4546155))))

(assert (=> b!7649640 (= res!3063499 call!702322)))

(assert (=> b!7649640 (= e!4546156 e!4546155)))

(declare-fun d!2325875 () Bool)

(declare-fun res!3063502 () Bool)

(assert (=> d!2325875 (=> res!3063502 e!4546153)))

(assert (=> d!2325875 (= res!3063502 ((_ is ElementMatch!20475) r!14126))))

(assert (=> d!2325875 (= (validRegex!10893 r!14126) e!4546153)))

(assert (= (and d!2325875 (not res!3063502)) b!7649638))

(assert (= (and b!7649638 c!1408859) b!7649637))

(assert (= (and b!7649638 (not c!1408859)) b!7649641))

(assert (= (and b!7649637 res!3063498) b!7649636))

(assert (= (and b!7649641 c!1408860) b!7649640))

(assert (= (and b!7649641 (not c!1408860)) b!7649644))

(assert (= (and b!7649640 res!3063499) b!7649642))

(assert (= (and b!7649644 (not res!3063500)) b!7649639))

(assert (= (and b!7649639 res!3063501) b!7649643))

(assert (= (or b!7649640 b!7649639) bm!702315))

(assert (= (or b!7649642 b!7649643) bm!702317))

(assert (= (or b!7649636 bm!702317) bm!702316))

(declare-fun m!8165560 () Bool)

(assert (=> b!7649637 m!8165560))

(declare-fun m!8165562 () Bool)

(assert (=> bm!702315 m!8165562))

(declare-fun m!8165564 () Bool)

(assert (=> bm!702316 m!8165564))

(assert (=> start!735924 d!2325875))

(declare-fun b!7649656 () Bool)

(declare-fun e!4546160 () Bool)

(declare-fun tp!2233826 () Bool)

(declare-fun tp!2233824 () Bool)

(assert (=> b!7649656 (= e!4546160 (and tp!2233826 tp!2233824))))

(assert (=> b!7649531 (= tp!2233771 e!4546160)))

(declare-fun b!7649655 () Bool)

(assert (=> b!7649655 (= e!4546160 tp_is_empty!51305)))

(declare-fun b!7649657 () Bool)

(declare-fun tp!2233822 () Bool)

(assert (=> b!7649657 (= e!4546160 tp!2233822)))

(declare-fun b!7649658 () Bool)

(declare-fun tp!2233825 () Bool)

(declare-fun tp!2233823 () Bool)

(assert (=> b!7649658 (= e!4546160 (and tp!2233825 tp!2233823))))

(assert (= (and b!7649531 ((_ is ElementMatch!20475) (reg!20804 r!14126))) b!7649655))

(assert (= (and b!7649531 ((_ is Concat!29320) (reg!20804 r!14126))) b!7649656))

(assert (= (and b!7649531 ((_ is Star!20475) (reg!20804 r!14126))) b!7649657))

(assert (= (and b!7649531 ((_ is Union!20475) (reg!20804 r!14126))) b!7649658))

(declare-fun b!7649660 () Bool)

(declare-fun e!4546161 () Bool)

(declare-fun tp!2233831 () Bool)

(declare-fun tp!2233829 () Bool)

(assert (=> b!7649660 (= e!4546161 (and tp!2233831 tp!2233829))))

(assert (=> b!7649536 (= tp!2233772 e!4546161)))

(declare-fun b!7649659 () Bool)

(assert (=> b!7649659 (= e!4546161 tp_is_empty!51305)))

(declare-fun b!7649661 () Bool)

(declare-fun tp!2233827 () Bool)

(assert (=> b!7649661 (= e!4546161 tp!2233827)))

(declare-fun b!7649662 () Bool)

(declare-fun tp!2233830 () Bool)

(declare-fun tp!2233828 () Bool)

(assert (=> b!7649662 (= e!4546161 (and tp!2233830 tp!2233828))))

(assert (= (and b!7649536 ((_ is ElementMatch!20475) (regOne!41462 r!14126))) b!7649659))

(assert (= (and b!7649536 ((_ is Concat!29320) (regOne!41462 r!14126))) b!7649660))

(assert (= (and b!7649536 ((_ is Star!20475) (regOne!41462 r!14126))) b!7649661))

(assert (= (and b!7649536 ((_ is Union!20475) (regOne!41462 r!14126))) b!7649662))

(declare-fun b!7649664 () Bool)

(declare-fun e!4546162 () Bool)

(declare-fun tp!2233836 () Bool)

(declare-fun tp!2233834 () Bool)

(assert (=> b!7649664 (= e!4546162 (and tp!2233836 tp!2233834))))

(assert (=> b!7649536 (= tp!2233770 e!4546162)))

(declare-fun b!7649663 () Bool)

(assert (=> b!7649663 (= e!4546162 tp_is_empty!51305)))

(declare-fun b!7649665 () Bool)

(declare-fun tp!2233832 () Bool)

(assert (=> b!7649665 (= e!4546162 tp!2233832)))

(declare-fun b!7649666 () Bool)

(declare-fun tp!2233835 () Bool)

(declare-fun tp!2233833 () Bool)

(assert (=> b!7649666 (= e!4546162 (and tp!2233835 tp!2233833))))

(assert (= (and b!7649536 ((_ is ElementMatch!20475) (regTwo!41462 r!14126))) b!7649663))

(assert (= (and b!7649536 ((_ is Concat!29320) (regTwo!41462 r!14126))) b!7649664))

(assert (= (and b!7649536 ((_ is Star!20475) (regTwo!41462 r!14126))) b!7649665))

(assert (= (and b!7649536 ((_ is Union!20475) (regTwo!41462 r!14126))) b!7649666))

(declare-fun b!7649668 () Bool)

(declare-fun e!4546163 () Bool)

(declare-fun tp!2233841 () Bool)

(declare-fun tp!2233839 () Bool)

(assert (=> b!7649668 (= e!4546163 (and tp!2233841 tp!2233839))))

(assert (=> b!7649535 (= tp!2233769 e!4546163)))

(declare-fun b!7649667 () Bool)

(assert (=> b!7649667 (= e!4546163 tp_is_empty!51305)))

(declare-fun b!7649669 () Bool)

(declare-fun tp!2233837 () Bool)

(assert (=> b!7649669 (= e!4546163 tp!2233837)))

(declare-fun b!7649670 () Bool)

(declare-fun tp!2233840 () Bool)

(declare-fun tp!2233838 () Bool)

(assert (=> b!7649670 (= e!4546163 (and tp!2233840 tp!2233838))))

(assert (= (and b!7649535 ((_ is ElementMatch!20475) (regOne!41463 r!14126))) b!7649667))

(assert (= (and b!7649535 ((_ is Concat!29320) (regOne!41463 r!14126))) b!7649668))

(assert (= (and b!7649535 ((_ is Star!20475) (regOne!41463 r!14126))) b!7649669))

(assert (= (and b!7649535 ((_ is Union!20475) (regOne!41463 r!14126))) b!7649670))

(declare-fun b!7649672 () Bool)

(declare-fun e!4546164 () Bool)

(declare-fun tp!2233846 () Bool)

(declare-fun tp!2233844 () Bool)

(assert (=> b!7649672 (= e!4546164 (and tp!2233846 tp!2233844))))

(assert (=> b!7649535 (= tp!2233773 e!4546164)))

(declare-fun b!7649671 () Bool)

(assert (=> b!7649671 (= e!4546164 tp_is_empty!51305)))

(declare-fun b!7649673 () Bool)

(declare-fun tp!2233842 () Bool)

(assert (=> b!7649673 (= e!4546164 tp!2233842)))

(declare-fun b!7649674 () Bool)

(declare-fun tp!2233845 () Bool)

(declare-fun tp!2233843 () Bool)

(assert (=> b!7649674 (= e!4546164 (and tp!2233845 tp!2233843))))

(assert (= (and b!7649535 ((_ is ElementMatch!20475) (regTwo!41463 r!14126))) b!7649671))

(assert (= (and b!7649535 ((_ is Concat!29320) (regTwo!41463 r!14126))) b!7649672))

(assert (= (and b!7649535 ((_ is Star!20475) (regTwo!41463 r!14126))) b!7649673))

(assert (= (and b!7649535 ((_ is Union!20475) (regTwo!41463 r!14126))) b!7649674))

(declare-fun b!7649679 () Bool)

(declare-fun e!4546167 () Bool)

(declare-fun tp!2233849 () Bool)

(assert (=> b!7649679 (= e!4546167 (and tp_is_empty!51305 tp!2233849))))

(assert (=> b!7649533 (= tp!2233768 e!4546167)))

(assert (= (and b!7649533 ((_ is Cons!73202) (t!388061 s!9605))) b!7649679))

(check-sat (not b!7649673) tp_is_empty!51305 (not b!7649637) (not b!7649674) (not b!7649656) (not b!7649668) (not bm!702312) (not b!7649660) (not b!7649679) (not b!7649665) (not b!7649669) (not b!7649662) (not b!7649672) (not b!7649664) (not bm!702315) (not b!7649628) (not b!7649670) (not b!7649666) (not b!7649658) (not bm!702313) (not b!7649657) (not bm!702316) (not b!7649661))
(check-sat)
