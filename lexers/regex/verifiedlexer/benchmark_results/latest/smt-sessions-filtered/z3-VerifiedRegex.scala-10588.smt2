; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544388 () Bool)

(assert start!544388)

(declare-fun b!5142533 () Bool)

(declare-fun res!2189623 () Bool)

(declare-fun e!3206911 () Bool)

(assert (=> b!5142533 (=> (not res!2189623) (not e!3206911))))

(declare-datatypes ((C!29200 0))(
  ( (C!29201 (val!24252 Int)) )
))
(declare-datatypes ((Regex!14467 0))(
  ( (ElementMatch!14467 (c!885325 C!29200)) (Concat!23312 (regOne!29446 Regex!14467) (regTwo!29446 Regex!14467)) (EmptyExpr!14467) (Star!14467 (reg!14796 Regex!14467)) (EmptyLang!14467) (Union!14467 (regOne!29447 Regex!14467) (regTwo!29447 Regex!14467)) )
))
(declare-fun expr!117 () Regex!14467)

(declare-fun a!1296 () C!29200)

(get-info :version)

(assert (=> b!5142533 (= res!2189623 (and (or (not ((_ is ElementMatch!14467) expr!117)) (not (= (c!885325 expr!117) a!1296))) ((_ is Union!14467) expr!117)))))

(declare-fun b!5142534 () Bool)

(declare-fun e!3206909 () Bool)

(declare-datatypes ((List!59845 0))(
  ( (Nil!59721) (Cons!59721 (h!66169 Regex!14467) (t!372880 List!59845)) )
))
(declare-datatypes ((Context!7702 0))(
  ( (Context!7703 (exprs!4351 List!59845)) )
))
(declare-fun ctx!100 () Context!7702)

(declare-fun lostCause!1486 (Context!7702) Bool)

(assert (=> b!5142534 (= e!3206909 (lostCause!1486 ctx!100))))

(declare-fun b!5142535 () Bool)

(assert (=> b!5142535 (= e!3206911 (not (lostCause!1486 ctx!100)))))

(declare-fun b!5142536 () Bool)

(declare-fun res!2189622 () Bool)

(assert (=> b!5142536 (=> (not res!2189622) (not e!3206911))))

(declare-fun validRegex!6322 (Regex!14467) Bool)

(assert (=> b!5142536 (= res!2189622 (validRegex!6322 (regOne!29447 expr!117)))))

(declare-fun b!5142537 () Bool)

(declare-fun e!3206910 () Bool)

(declare-fun tp!1435732 () Bool)

(declare-fun tp!1435733 () Bool)

(assert (=> b!5142537 (= e!3206910 (and tp!1435732 tp!1435733))))

(declare-fun res!2189626 () Bool)

(assert (=> start!544388 (=> (not res!2189626) (not e!3206911))))

(assert (=> start!544388 (= res!2189626 (validRegex!6322 expr!117))))

(assert (=> start!544388 e!3206911))

(assert (=> start!544388 e!3206910))

(declare-fun e!3206908 () Bool)

(declare-fun inv!79348 (Context!7702) Bool)

(assert (=> start!544388 (and (inv!79348 ctx!100) e!3206908)))

(declare-fun tp_is_empty!38083 () Bool)

(assert (=> start!544388 tp_is_empty!38083))

(declare-fun b!5142538 () Bool)

(declare-fun res!2189621 () Bool)

(assert (=> b!5142538 (=> (not res!2189621) (not e!3206911))))

(assert (=> b!5142538 (= res!2189621 e!3206909)))

(declare-fun res!2189624 () Bool)

(assert (=> b!5142538 (=> res!2189624 e!3206909)))

(declare-fun lostCause!1487 (Regex!14467) Bool)

(assert (=> b!5142538 (= res!2189624 (lostCause!1487 expr!117))))

(declare-fun b!5142539 () Bool)

(assert (=> b!5142539 (= e!3206910 tp_is_empty!38083)))

(declare-fun b!5142540 () Bool)

(declare-fun tp!1435736 () Bool)

(assert (=> b!5142540 (= e!3206908 tp!1435736)))

(declare-fun b!5142541 () Bool)

(declare-fun tp!1435735 () Bool)

(assert (=> b!5142541 (= e!3206910 tp!1435735)))

(declare-fun b!5142542 () Bool)

(declare-fun tp!1435734 () Bool)

(declare-fun tp!1435737 () Bool)

(assert (=> b!5142542 (= e!3206910 (and tp!1435734 tp!1435737))))

(declare-fun b!5142543 () Bool)

(declare-fun res!2189625 () Bool)

(assert (=> b!5142543 (=> (not res!2189625) (not e!3206911))))

(assert (=> b!5142543 (= res!2189625 (not (lostCause!1487 (regOne!29447 expr!117))))))

(assert (= (and start!544388 res!2189626) b!5142538))

(assert (= (and b!5142538 (not res!2189624)) b!5142534))

(assert (= (and b!5142538 res!2189621) b!5142533))

(assert (= (and b!5142533 res!2189623) b!5142536))

(assert (= (and b!5142536 res!2189622) b!5142543))

(assert (= (and b!5142543 res!2189625) b!5142535))

(assert (= (and start!544388 ((_ is ElementMatch!14467) expr!117)) b!5142539))

(assert (= (and start!544388 ((_ is Concat!23312) expr!117)) b!5142542))

(assert (= (and start!544388 ((_ is Star!14467) expr!117)) b!5142541))

(assert (= (and start!544388 ((_ is Union!14467) expr!117)) b!5142537))

(assert (= start!544388 b!5142540))

(declare-fun m!6204988 () Bool)

(assert (=> b!5142535 m!6204988))

(declare-fun m!6204990 () Bool)

(assert (=> b!5142538 m!6204990))

(assert (=> b!5142534 m!6204988))

(declare-fun m!6204992 () Bool)

(assert (=> b!5142536 m!6204992))

(declare-fun m!6204994 () Bool)

(assert (=> start!544388 m!6204994))

(declare-fun m!6204996 () Bool)

(assert (=> start!544388 m!6204996))

(declare-fun m!6204998 () Bool)

(assert (=> b!5142543 m!6204998))

(check-sat (not b!5142534) (not b!5142535) (not b!5142537) (not b!5142538) (not b!5142542) (not start!544388) (not b!5142536) tp_is_empty!38083 (not b!5142543) (not b!5142541) (not b!5142540))
(check-sat)
(get-model)

(declare-fun d!1662943 () Bool)

(declare-fun lambda!256507 () Int)

(declare-fun exists!1786 (List!59845 Int) Bool)

(assert (=> d!1662943 (= (lostCause!1486 ctx!100) (exists!1786 (exprs!4351 ctx!100) lambda!256507))))

(declare-fun bs!1200869 () Bool)

(assert (= bs!1200869 d!1662943))

(declare-fun m!6205020 () Bool)

(assert (=> bs!1200869 m!6205020))

(assert (=> b!5142534 d!1662943))

(declare-fun d!1662957 () Bool)

(declare-fun res!2189657 () Bool)

(declare-fun e!3206966 () Bool)

(assert (=> d!1662957 (=> res!2189657 e!3206966)))

(assert (=> d!1662957 (= res!2189657 ((_ is ElementMatch!14467) expr!117))))

(assert (=> d!1662957 (= (validRegex!6322 expr!117) e!3206966)))

(declare-fun b!5142633 () Bool)

(declare-fun e!3206965 () Bool)

(declare-fun e!3206968 () Bool)

(assert (=> b!5142633 (= e!3206965 e!3206968)))

(declare-fun res!2189659 () Bool)

(assert (=> b!5142633 (=> (not res!2189659) (not e!3206968))))

(declare-fun call!358979 () Bool)

(assert (=> b!5142633 (= res!2189659 call!358979)))

(declare-fun b!5142634 () Bool)

(declare-fun e!3206964 () Bool)

(declare-fun e!3206969 () Bool)

(assert (=> b!5142634 (= e!3206964 e!3206969)))

(declare-fun res!2189660 () Bool)

(declare-fun nullable!4824 (Regex!14467) Bool)

(assert (=> b!5142634 (= res!2189660 (not (nullable!4824 (reg!14796 expr!117))))))

(assert (=> b!5142634 (=> (not res!2189660) (not e!3206969))))

(declare-fun b!5142635 () Bool)

(declare-fun e!3206970 () Bool)

(assert (=> b!5142635 (= e!3206964 e!3206970)))

(declare-fun c!885338 () Bool)

(assert (=> b!5142635 (= c!885338 ((_ is Union!14467) expr!117))))

(declare-fun b!5142636 () Bool)

(declare-fun res!2189661 () Bool)

(assert (=> b!5142636 (=> res!2189661 e!3206965)))

(assert (=> b!5142636 (= res!2189661 (not ((_ is Concat!23312) expr!117)))))

(assert (=> b!5142636 (= e!3206970 e!3206965)))

(declare-fun b!5142637 () Bool)

(assert (=> b!5142637 (= e!3206966 e!3206964)))

(declare-fun c!885339 () Bool)

(assert (=> b!5142637 (= c!885339 ((_ is Star!14467) expr!117))))

(declare-fun call!358980 () Bool)

(declare-fun bm!358973 () Bool)

(assert (=> bm!358973 (= call!358980 (validRegex!6322 (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))))))

(declare-fun bm!358974 () Bool)

(declare-fun call!358978 () Bool)

(assert (=> bm!358974 (= call!358978 (validRegex!6322 (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))))))

(declare-fun b!5142638 () Bool)

(declare-fun e!3206967 () Bool)

(assert (=> b!5142638 (= e!3206967 call!358978)))

(declare-fun b!5142639 () Bool)

(declare-fun res!2189658 () Bool)

(assert (=> b!5142639 (=> (not res!2189658) (not e!3206967))))

(assert (=> b!5142639 (= res!2189658 call!358979)))

(assert (=> b!5142639 (= e!3206970 e!3206967)))

(declare-fun bm!358975 () Bool)

(assert (=> bm!358975 (= call!358979 call!358980)))

(declare-fun b!5142640 () Bool)

(assert (=> b!5142640 (= e!3206968 call!358978)))

(declare-fun b!5142641 () Bool)

(assert (=> b!5142641 (= e!3206969 call!358980)))

(assert (= (and d!1662957 (not res!2189657)) b!5142637))

(assert (= (and b!5142637 c!885339) b!5142634))

(assert (= (and b!5142637 (not c!885339)) b!5142635))

(assert (= (and b!5142634 res!2189660) b!5142641))

(assert (= (and b!5142635 c!885338) b!5142639))

(assert (= (and b!5142635 (not c!885338)) b!5142636))

(assert (= (and b!5142639 res!2189658) b!5142638))

(assert (= (and b!5142636 (not res!2189661)) b!5142633))

(assert (= (and b!5142633 res!2189659) b!5142640))

(assert (= (or b!5142638 b!5142640) bm!358974))

(assert (= (or b!5142639 b!5142633) bm!358975))

(assert (= (or b!5142641 bm!358975) bm!358973))

(declare-fun m!6205022 () Bool)

(assert (=> b!5142634 m!6205022))

(declare-fun m!6205024 () Bool)

(assert (=> bm!358973 m!6205024))

(declare-fun m!6205026 () Bool)

(assert (=> bm!358974 m!6205026))

(assert (=> start!544388 d!1662957))

(declare-fun bs!1200870 () Bool)

(declare-fun d!1662959 () Bool)

(assert (= bs!1200870 (and d!1662959 d!1662943)))

(declare-fun lambda!256510 () Int)

(assert (=> bs!1200870 (not (= lambda!256510 lambda!256507))))

(declare-fun forall!13925 (List!59845 Int) Bool)

(assert (=> d!1662959 (= (inv!79348 ctx!100) (forall!13925 (exprs!4351 ctx!100) lambda!256510))))

(declare-fun bs!1200871 () Bool)

(assert (= bs!1200871 d!1662959))

(declare-fun m!6205028 () Bool)

(assert (=> bs!1200871 m!6205028))

(assert (=> start!544388 d!1662959))

(assert (=> b!5142535 d!1662943))

(declare-fun d!1662961 () Bool)

(declare-fun res!2189662 () Bool)

(declare-fun e!3206973 () Bool)

(assert (=> d!1662961 (=> res!2189662 e!3206973)))

(assert (=> d!1662961 (= res!2189662 ((_ is ElementMatch!14467) (regOne!29447 expr!117)))))

(assert (=> d!1662961 (= (validRegex!6322 (regOne!29447 expr!117)) e!3206973)))

(declare-fun b!5142642 () Bool)

(declare-fun e!3206972 () Bool)

(declare-fun e!3206975 () Bool)

(assert (=> b!5142642 (= e!3206972 e!3206975)))

(declare-fun res!2189664 () Bool)

(assert (=> b!5142642 (=> (not res!2189664) (not e!3206975))))

(declare-fun call!358982 () Bool)

(assert (=> b!5142642 (= res!2189664 call!358982)))

(declare-fun b!5142643 () Bool)

(declare-fun e!3206971 () Bool)

(declare-fun e!3206976 () Bool)

(assert (=> b!5142643 (= e!3206971 e!3206976)))

(declare-fun res!2189665 () Bool)

(assert (=> b!5142643 (= res!2189665 (not (nullable!4824 (reg!14796 (regOne!29447 expr!117)))))))

(assert (=> b!5142643 (=> (not res!2189665) (not e!3206976))))

(declare-fun b!5142644 () Bool)

(declare-fun e!3206977 () Bool)

(assert (=> b!5142644 (= e!3206971 e!3206977)))

(declare-fun c!885340 () Bool)

(assert (=> b!5142644 (= c!885340 ((_ is Union!14467) (regOne!29447 expr!117)))))

(declare-fun b!5142645 () Bool)

(declare-fun res!2189666 () Bool)

(assert (=> b!5142645 (=> res!2189666 e!3206972)))

(assert (=> b!5142645 (= res!2189666 (not ((_ is Concat!23312) (regOne!29447 expr!117))))))

(assert (=> b!5142645 (= e!3206977 e!3206972)))

(declare-fun b!5142646 () Bool)

(assert (=> b!5142646 (= e!3206973 e!3206971)))

(declare-fun c!885341 () Bool)

(assert (=> b!5142646 (= c!885341 ((_ is Star!14467) (regOne!29447 expr!117)))))

(declare-fun call!358983 () Bool)

(declare-fun bm!358976 () Bool)

(assert (=> bm!358976 (= call!358983 (validRegex!6322 (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))))))

(declare-fun bm!358977 () Bool)

(declare-fun call!358981 () Bool)

(assert (=> bm!358977 (= call!358981 (validRegex!6322 (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))))))

(declare-fun b!5142647 () Bool)

(declare-fun e!3206974 () Bool)

(assert (=> b!5142647 (= e!3206974 call!358981)))

(declare-fun b!5142648 () Bool)

(declare-fun res!2189663 () Bool)

(assert (=> b!5142648 (=> (not res!2189663) (not e!3206974))))

(assert (=> b!5142648 (= res!2189663 call!358982)))

(assert (=> b!5142648 (= e!3206977 e!3206974)))

(declare-fun bm!358978 () Bool)

(assert (=> bm!358978 (= call!358982 call!358983)))

(declare-fun b!5142649 () Bool)

(assert (=> b!5142649 (= e!3206975 call!358981)))

(declare-fun b!5142650 () Bool)

(assert (=> b!5142650 (= e!3206976 call!358983)))

(assert (= (and d!1662961 (not res!2189662)) b!5142646))

(assert (= (and b!5142646 c!885341) b!5142643))

(assert (= (and b!5142646 (not c!885341)) b!5142644))

(assert (= (and b!5142643 res!2189665) b!5142650))

(assert (= (and b!5142644 c!885340) b!5142648))

(assert (= (and b!5142644 (not c!885340)) b!5142645))

(assert (= (and b!5142648 res!2189663) b!5142647))

(assert (= (and b!5142645 (not res!2189666)) b!5142642))

(assert (= (and b!5142642 res!2189664) b!5142649))

(assert (= (or b!5142647 b!5142649) bm!358977))

(assert (= (or b!5142648 b!5142642) bm!358978))

(assert (= (or b!5142650 bm!358978) bm!358976))

(declare-fun m!6205030 () Bool)

(assert (=> b!5142643 m!6205030))

(declare-fun m!6205032 () Bool)

(assert (=> bm!358976 m!6205032))

(declare-fun m!6205034 () Bool)

(assert (=> bm!358977 m!6205034))

(assert (=> b!5142536 d!1662961))

(declare-fun d!1662963 () Bool)

(declare-fun lostCauseFct!350 (Regex!14467) Bool)

(assert (=> d!1662963 (= (lostCause!1487 expr!117) (lostCauseFct!350 expr!117))))

(declare-fun bs!1200872 () Bool)

(assert (= bs!1200872 d!1662963))

(declare-fun m!6205036 () Bool)

(assert (=> bs!1200872 m!6205036))

(assert (=> b!5142538 d!1662963))

(declare-fun d!1662965 () Bool)

(assert (=> d!1662965 (= (lostCause!1487 (regOne!29447 expr!117)) (lostCauseFct!350 (regOne!29447 expr!117)))))

(declare-fun bs!1200873 () Bool)

(assert (= bs!1200873 d!1662965))

(declare-fun m!6205038 () Bool)

(assert (=> bs!1200873 m!6205038))

(assert (=> b!5142543 d!1662965))

(declare-fun b!5142655 () Bool)

(declare-fun e!3206980 () Bool)

(declare-fun tp!1435783 () Bool)

(declare-fun tp!1435784 () Bool)

(assert (=> b!5142655 (= e!3206980 (and tp!1435783 tp!1435784))))

(assert (=> b!5142540 (= tp!1435736 e!3206980)))

(assert (= (and b!5142540 ((_ is Cons!59721) (exprs!4351 ctx!100))) b!5142655))

(declare-fun e!3206983 () Bool)

(assert (=> b!5142541 (= tp!1435735 e!3206983)))

(declare-fun b!5142667 () Bool)

(declare-fun tp!1435797 () Bool)

(declare-fun tp!1435796 () Bool)

(assert (=> b!5142667 (= e!3206983 (and tp!1435797 tp!1435796))))

(declare-fun b!5142669 () Bool)

(declare-fun tp!1435795 () Bool)

(declare-fun tp!1435799 () Bool)

(assert (=> b!5142669 (= e!3206983 (and tp!1435795 tp!1435799))))

(declare-fun b!5142668 () Bool)

(declare-fun tp!1435798 () Bool)

(assert (=> b!5142668 (= e!3206983 tp!1435798)))

(declare-fun b!5142666 () Bool)

(assert (=> b!5142666 (= e!3206983 tp_is_empty!38083)))

(assert (= (and b!5142541 ((_ is ElementMatch!14467) (reg!14796 expr!117))) b!5142666))

(assert (= (and b!5142541 ((_ is Concat!23312) (reg!14796 expr!117))) b!5142667))

(assert (= (and b!5142541 ((_ is Star!14467) (reg!14796 expr!117))) b!5142668))

(assert (= (and b!5142541 ((_ is Union!14467) (reg!14796 expr!117))) b!5142669))

(declare-fun e!3206984 () Bool)

(assert (=> b!5142542 (= tp!1435734 e!3206984)))

(declare-fun b!5142671 () Bool)

(declare-fun tp!1435802 () Bool)

(declare-fun tp!1435801 () Bool)

(assert (=> b!5142671 (= e!3206984 (and tp!1435802 tp!1435801))))

(declare-fun b!5142673 () Bool)

(declare-fun tp!1435800 () Bool)

(declare-fun tp!1435804 () Bool)

(assert (=> b!5142673 (= e!3206984 (and tp!1435800 tp!1435804))))

(declare-fun b!5142672 () Bool)

(declare-fun tp!1435803 () Bool)

(assert (=> b!5142672 (= e!3206984 tp!1435803)))

(declare-fun b!5142670 () Bool)

(assert (=> b!5142670 (= e!3206984 tp_is_empty!38083)))

(assert (= (and b!5142542 ((_ is ElementMatch!14467) (regOne!29446 expr!117))) b!5142670))

(assert (= (and b!5142542 ((_ is Concat!23312) (regOne!29446 expr!117))) b!5142671))

(assert (= (and b!5142542 ((_ is Star!14467) (regOne!29446 expr!117))) b!5142672))

(assert (= (and b!5142542 ((_ is Union!14467) (regOne!29446 expr!117))) b!5142673))

(declare-fun e!3206985 () Bool)

(assert (=> b!5142542 (= tp!1435737 e!3206985)))

(declare-fun b!5142675 () Bool)

(declare-fun tp!1435807 () Bool)

(declare-fun tp!1435806 () Bool)

(assert (=> b!5142675 (= e!3206985 (and tp!1435807 tp!1435806))))

(declare-fun b!5142677 () Bool)

(declare-fun tp!1435805 () Bool)

(declare-fun tp!1435809 () Bool)

(assert (=> b!5142677 (= e!3206985 (and tp!1435805 tp!1435809))))

(declare-fun b!5142676 () Bool)

(declare-fun tp!1435808 () Bool)

(assert (=> b!5142676 (= e!3206985 tp!1435808)))

(declare-fun b!5142674 () Bool)

(assert (=> b!5142674 (= e!3206985 tp_is_empty!38083)))

(assert (= (and b!5142542 ((_ is ElementMatch!14467) (regTwo!29446 expr!117))) b!5142674))

(assert (= (and b!5142542 ((_ is Concat!23312) (regTwo!29446 expr!117))) b!5142675))

(assert (= (and b!5142542 ((_ is Star!14467) (regTwo!29446 expr!117))) b!5142676))

(assert (= (and b!5142542 ((_ is Union!14467) (regTwo!29446 expr!117))) b!5142677))

(declare-fun e!3206986 () Bool)

(assert (=> b!5142537 (= tp!1435732 e!3206986)))

(declare-fun b!5142679 () Bool)

(declare-fun tp!1435812 () Bool)

(declare-fun tp!1435811 () Bool)

(assert (=> b!5142679 (= e!3206986 (and tp!1435812 tp!1435811))))

(declare-fun b!5142681 () Bool)

(declare-fun tp!1435810 () Bool)

(declare-fun tp!1435814 () Bool)

(assert (=> b!5142681 (= e!3206986 (and tp!1435810 tp!1435814))))

(declare-fun b!5142680 () Bool)

(declare-fun tp!1435813 () Bool)

(assert (=> b!5142680 (= e!3206986 tp!1435813)))

(declare-fun b!5142678 () Bool)

(assert (=> b!5142678 (= e!3206986 tp_is_empty!38083)))

(assert (= (and b!5142537 ((_ is ElementMatch!14467) (regOne!29447 expr!117))) b!5142678))

(assert (= (and b!5142537 ((_ is Concat!23312) (regOne!29447 expr!117))) b!5142679))

(assert (= (and b!5142537 ((_ is Star!14467) (regOne!29447 expr!117))) b!5142680))

(assert (= (and b!5142537 ((_ is Union!14467) (regOne!29447 expr!117))) b!5142681))

(declare-fun e!3206987 () Bool)

(assert (=> b!5142537 (= tp!1435733 e!3206987)))

(declare-fun b!5142683 () Bool)

(declare-fun tp!1435817 () Bool)

(declare-fun tp!1435816 () Bool)

(assert (=> b!5142683 (= e!3206987 (and tp!1435817 tp!1435816))))

(declare-fun b!5142685 () Bool)

(declare-fun tp!1435815 () Bool)

(declare-fun tp!1435819 () Bool)

(assert (=> b!5142685 (= e!3206987 (and tp!1435815 tp!1435819))))

(declare-fun b!5142684 () Bool)

(declare-fun tp!1435818 () Bool)

(assert (=> b!5142684 (= e!3206987 tp!1435818)))

(declare-fun b!5142682 () Bool)

(assert (=> b!5142682 (= e!3206987 tp_is_empty!38083)))

(assert (= (and b!5142537 ((_ is ElementMatch!14467) (regTwo!29447 expr!117))) b!5142682))

(assert (= (and b!5142537 ((_ is Concat!23312) (regTwo!29447 expr!117))) b!5142683))

(assert (= (and b!5142537 ((_ is Star!14467) (regTwo!29447 expr!117))) b!5142684))

(assert (= (and b!5142537 ((_ is Union!14467) (regTwo!29447 expr!117))) b!5142685))

(check-sat (not bm!358976) (not bm!358973) (not b!5142676) (not b!5142671) (not b!5142680) (not d!1662963) (not b!5142685) (not b!5142681) (not b!5142634) (not b!5142672) (not b!5142655) (not d!1662943) (not b!5142684) (not b!5142643) (not b!5142669) (not bm!358977) (not b!5142677) (not b!5142673) (not d!1662959) (not b!5142675) (not b!5142668) tp_is_empty!38083 (not b!5142683) (not b!5142667) (not bm!358974) (not d!1662965) (not b!5142679))
(check-sat)
(get-model)

(declare-fun d!1662971 () Bool)

(declare-fun res!2189673 () Bool)

(declare-fun e!3206996 () Bool)

(assert (=> d!1662971 (=> res!2189673 e!3206996)))

(assert (=> d!1662971 (= res!2189673 ((_ is ElementMatch!14467) (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))))))

(assert (=> d!1662971 (= (validRegex!6322 (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))) e!3206996)))

(declare-fun b!5142692 () Bool)

(declare-fun e!3206995 () Bool)

(declare-fun e!3206998 () Bool)

(assert (=> b!5142692 (= e!3206995 e!3206998)))

(declare-fun res!2189675 () Bool)

(assert (=> b!5142692 (=> (not res!2189675) (not e!3206998))))

(declare-fun call!358985 () Bool)

(assert (=> b!5142692 (= res!2189675 call!358985)))

(declare-fun b!5142693 () Bool)

(declare-fun e!3206994 () Bool)

(declare-fun e!3206999 () Bool)

(assert (=> b!5142693 (= e!3206994 e!3206999)))

(declare-fun res!2189676 () Bool)

(assert (=> b!5142693 (= res!2189676 (not (nullable!4824 (reg!14796 (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))))))))

(assert (=> b!5142693 (=> (not res!2189676) (not e!3206999))))

(declare-fun b!5142694 () Bool)

(declare-fun e!3207000 () Bool)

(assert (=> b!5142694 (= e!3206994 e!3207000)))

(declare-fun c!885342 () Bool)

(assert (=> b!5142694 (= c!885342 ((_ is Union!14467) (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))))))

(declare-fun b!5142695 () Bool)

(declare-fun res!2189677 () Bool)

(assert (=> b!5142695 (=> res!2189677 e!3206995)))

(assert (=> b!5142695 (= res!2189677 (not ((_ is Concat!23312) (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117)))))))))

(assert (=> b!5142695 (= e!3207000 e!3206995)))

(declare-fun b!5142696 () Bool)

(assert (=> b!5142696 (= e!3206996 e!3206994)))

(declare-fun c!885343 () Bool)

(assert (=> b!5142696 (= c!885343 ((_ is Star!14467) (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))))))

(declare-fun call!358986 () Bool)

(declare-fun bm!358979 () Bool)

(assert (=> bm!358979 (= call!358986 (validRegex!6322 (ite c!885343 (reg!14796 (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))) (ite c!885342 (regOne!29447 (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))) (regOne!29446 (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117)))))))))))

(declare-fun call!358984 () Bool)

(declare-fun bm!358980 () Bool)

(assert (=> bm!358980 (= call!358984 (validRegex!6322 (ite c!885342 (regTwo!29447 (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))) (regTwo!29446 (ite c!885341 (reg!14796 (regOne!29447 expr!117)) (ite c!885340 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117))))))))))

(declare-fun b!5142697 () Bool)

(declare-fun e!3206997 () Bool)

(assert (=> b!5142697 (= e!3206997 call!358984)))

(declare-fun b!5142698 () Bool)

(declare-fun res!2189674 () Bool)

(assert (=> b!5142698 (=> (not res!2189674) (not e!3206997))))

(assert (=> b!5142698 (= res!2189674 call!358985)))

(assert (=> b!5142698 (= e!3207000 e!3206997)))

(declare-fun bm!358981 () Bool)

(assert (=> bm!358981 (= call!358985 call!358986)))

(declare-fun b!5142699 () Bool)

(assert (=> b!5142699 (= e!3206998 call!358984)))

(declare-fun b!5142700 () Bool)

(assert (=> b!5142700 (= e!3206999 call!358986)))

(assert (= (and d!1662971 (not res!2189673)) b!5142696))

(assert (= (and b!5142696 c!885343) b!5142693))

(assert (= (and b!5142696 (not c!885343)) b!5142694))

(assert (= (and b!5142693 res!2189676) b!5142700))

(assert (= (and b!5142694 c!885342) b!5142698))

(assert (= (and b!5142694 (not c!885342)) b!5142695))

(assert (= (and b!5142698 res!2189674) b!5142697))

(assert (= (and b!5142695 (not res!2189677)) b!5142692))

(assert (= (and b!5142692 res!2189675) b!5142699))

(assert (= (or b!5142697 b!5142699) bm!358980))

(assert (= (or b!5142698 b!5142692) bm!358981))

(assert (= (or b!5142700 bm!358981) bm!358979))

(declare-fun m!6205044 () Bool)

(assert (=> b!5142693 m!6205044))

(declare-fun m!6205046 () Bool)

(assert (=> bm!358979 m!6205046))

(declare-fun m!6205048 () Bool)

(assert (=> bm!358980 m!6205048))

(assert (=> bm!358976 d!1662971))

(declare-fun d!1662973 () Bool)

(declare-fun res!2189692 () Bool)

(declare-fun e!3207017 () Bool)

(assert (=> d!1662973 (=> res!2189692 e!3207017)))

(assert (=> d!1662973 (= res!2189692 ((_ is Nil!59721) (exprs!4351 ctx!100)))))

(assert (=> d!1662973 (= (forall!13925 (exprs!4351 ctx!100) lambda!256510) e!3207017)))

(declare-fun b!5142719 () Bool)

(declare-fun e!3207018 () Bool)

(assert (=> b!5142719 (= e!3207017 e!3207018)))

(declare-fun res!2189693 () Bool)

(assert (=> b!5142719 (=> (not res!2189693) (not e!3207018))))

(declare-fun dynLambda!23772 (Int Regex!14467) Bool)

(assert (=> b!5142719 (= res!2189693 (dynLambda!23772 lambda!256510 (h!66169 (exprs!4351 ctx!100))))))

(declare-fun b!5142720 () Bool)

(assert (=> b!5142720 (= e!3207018 (forall!13925 (t!372880 (exprs!4351 ctx!100)) lambda!256510))))

(assert (= (and d!1662973 (not res!2189692)) b!5142719))

(assert (= (and b!5142719 res!2189693) b!5142720))

(declare-fun b_lambda!200303 () Bool)

(assert (=> (not b_lambda!200303) (not b!5142719)))

(declare-fun m!6205050 () Bool)

(assert (=> b!5142719 m!6205050))

(declare-fun m!6205052 () Bool)

(assert (=> b!5142720 m!6205052))

(assert (=> d!1662959 d!1662973))

(declare-fun b!5142770 () Bool)

(declare-fun e!3207065 () Bool)

(declare-fun e!3207067 () Bool)

(assert (=> b!5142770 (= e!3207065 e!3207067)))

(declare-fun res!2189730 () Bool)

(declare-fun call!359008 () Bool)

(assert (=> b!5142770 (= res!2189730 call!359008)))

(assert (=> b!5142770 (=> res!2189730 e!3207067)))

(declare-fun b!5142771 () Bool)

(declare-fun e!3207058 () Bool)

(declare-fun e!3207060 () Bool)

(assert (=> b!5142771 (= e!3207058 e!3207060)))

(declare-fun res!2189724 () Bool)

(assert (=> b!5142771 (=> (not res!2189724) (not e!3207060))))

(assert (=> b!5142771 (= res!2189724 (and (not ((_ is ElementMatch!14467) (regOne!29447 expr!117))) (not ((_ is Star!14467) (regOne!29447 expr!117)))))))

(declare-fun d!1662975 () Bool)

(declare-fun lt!2120501 () Bool)

(declare-datatypes ((List!59847 0))(
  ( (Nil!59723) (Cons!59723 (h!66171 C!29200) (t!372882 List!59847)) )
))
(declare-datatypes ((Option!14783 0))(
  ( (None!14782) (Some!14782 (v!50811 List!59847)) )
))
(declare-fun isEmpty!32044 (Option!14783) Bool)

(declare-fun getLanguageWitness!936 (Regex!14467) Option!14783)

(assert (=> d!1662975 (= lt!2120501 (isEmpty!32044 (getLanguageWitness!936 (regOne!29447 expr!117))))))

(declare-fun e!3207061 () Bool)

(assert (=> d!1662975 (= lt!2120501 e!3207061)))

(declare-fun res!2189732 () Bool)

(assert (=> d!1662975 (=> (not res!2189732) (not e!3207061))))

(assert (=> d!1662975 (= res!2189732 (not ((_ is EmptyExpr!14467) (regOne!29447 expr!117))))))

(assert (=> d!1662975 (= (lostCauseFct!350 (regOne!29447 expr!117)) lt!2120501)))

(declare-fun b!5142772 () Bool)

(assert (=> b!5142772 (= e!3207061 e!3207058)))

(declare-fun res!2189725 () Bool)

(assert (=> b!5142772 (=> res!2189725 e!3207058)))

(assert (=> b!5142772 (= res!2189725 ((_ is EmptyLang!14467) (regOne!29447 expr!117)))))

(declare-fun bm!359000 () Bool)

(declare-fun call!359009 () Bool)

(declare-fun c!885355 () Bool)

(assert (=> bm!359000 (= call!359009 (lostCause!1487 (ite c!885355 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))))))

(declare-fun b!5142774 () Bool)

(declare-fun e!3207069 () Bool)

(assert (=> b!5142774 (= e!3207069 call!359009)))

(declare-fun b!5142775 () Bool)

(assert (=> b!5142775 (= e!3207065 e!3207069)))

(declare-fun res!2189728 () Bool)

(assert (=> b!5142775 (= res!2189728 call!359008)))

(assert (=> b!5142775 (=> (not res!2189728) (not e!3207069))))

(declare-fun b!5142776 () Bool)

(assert (=> b!5142776 (= e!3207067 call!359009)))

(declare-fun bm!359002 () Bool)

(assert (=> bm!359002 (= call!359008 (lostCause!1487 (ite c!885355 (regOne!29447 (regOne!29447 expr!117)) (regOne!29446 (regOne!29447 expr!117)))))))

(declare-fun b!5142778 () Bool)

(assert (=> b!5142778 (= e!3207060 e!3207065)))

(assert (=> b!5142778 (= c!885355 ((_ is Union!14467) (regOne!29447 expr!117)))))

(assert (= (and d!1662975 res!2189732) b!5142772))

(assert (= (and b!5142772 (not res!2189725)) b!5142771))

(assert (= (and b!5142771 res!2189724) b!5142778))

(assert (= (and b!5142778 c!885355) b!5142775))

(assert (= (and b!5142778 (not c!885355)) b!5142770))

(assert (= (and b!5142775 res!2189728) b!5142774))

(assert (= (and b!5142770 (not res!2189730)) b!5142776))

(assert (= (or b!5142775 b!5142770) bm!359002))

(assert (= (or b!5142774 b!5142776) bm!359000))

(declare-fun m!6205088 () Bool)

(assert (=> d!1662975 m!6205088))

(assert (=> d!1662975 m!6205088))

(declare-fun m!6205090 () Bool)

(assert (=> d!1662975 m!6205090))

(declare-fun m!6205092 () Bool)

(assert (=> bm!359000 m!6205092))

(declare-fun m!6205096 () Bool)

(assert (=> bm!359002 m!6205096))

(assert (=> d!1662965 d!1662975))

(declare-fun d!1662991 () Bool)

(declare-fun res!2189734 () Bool)

(declare-fun e!3207072 () Bool)

(assert (=> d!1662991 (=> res!2189734 e!3207072)))

(assert (=> d!1662991 (= res!2189734 ((_ is ElementMatch!14467) (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))))))

(assert (=> d!1662991 (= (validRegex!6322 (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))) e!3207072)))

(declare-fun b!5142785 () Bool)

(declare-fun e!3207071 () Bool)

(declare-fun e!3207074 () Bool)

(assert (=> b!5142785 (= e!3207071 e!3207074)))

(declare-fun res!2189736 () Bool)

(assert (=> b!5142785 (=> (not res!2189736) (not e!3207074))))

(declare-fun call!359011 () Bool)

(assert (=> b!5142785 (= res!2189736 call!359011)))

(declare-fun b!5142786 () Bool)

(declare-fun e!3207070 () Bool)

(declare-fun e!3207075 () Bool)

(assert (=> b!5142786 (= e!3207070 e!3207075)))

(declare-fun res!2189737 () Bool)

(assert (=> b!5142786 (= res!2189737 (not (nullable!4824 (reg!14796 (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))))))))

(assert (=> b!5142786 (=> (not res!2189737) (not e!3207075))))

(declare-fun b!5142787 () Bool)

(declare-fun e!3207076 () Bool)

(assert (=> b!5142787 (= e!3207070 e!3207076)))

(declare-fun c!885357 () Bool)

(assert (=> b!5142787 (= c!885357 ((_ is Union!14467) (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))))))

(declare-fun b!5142788 () Bool)

(declare-fun res!2189738 () Bool)

(assert (=> b!5142788 (=> res!2189738 e!3207071)))

(assert (=> b!5142788 (= res!2189738 (not ((_ is Concat!23312) (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117))))))))

(assert (=> b!5142788 (= e!3207076 e!3207071)))

(declare-fun b!5142789 () Bool)

(assert (=> b!5142789 (= e!3207072 e!3207070)))

(declare-fun c!885358 () Bool)

(assert (=> b!5142789 (= c!885358 ((_ is Star!14467) (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))))))

(declare-fun bm!359005 () Bool)

(declare-fun call!359012 () Bool)

(assert (=> bm!359005 (= call!359012 (validRegex!6322 (ite c!885358 (reg!14796 (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))) (ite c!885357 (regOne!29447 (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))) (regOne!29446 (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117))))))))))

(declare-fun call!359010 () Bool)

(declare-fun bm!359006 () Bool)

(assert (=> bm!359006 (= call!359010 (validRegex!6322 (ite c!885357 (regTwo!29447 (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))) (regTwo!29446 (ite c!885340 (regTwo!29447 (regOne!29447 expr!117)) (regTwo!29446 (regOne!29447 expr!117)))))))))

(declare-fun b!5142790 () Bool)

(declare-fun e!3207073 () Bool)

(assert (=> b!5142790 (= e!3207073 call!359010)))

(declare-fun b!5142791 () Bool)

(declare-fun res!2189735 () Bool)

(assert (=> b!5142791 (=> (not res!2189735) (not e!3207073))))

(assert (=> b!5142791 (= res!2189735 call!359011)))

(assert (=> b!5142791 (= e!3207076 e!3207073)))

(declare-fun bm!359007 () Bool)

(assert (=> bm!359007 (= call!359011 call!359012)))

(declare-fun b!5142792 () Bool)

(assert (=> b!5142792 (= e!3207074 call!359010)))

(declare-fun b!5142793 () Bool)

(assert (=> b!5142793 (= e!3207075 call!359012)))

(assert (= (and d!1662991 (not res!2189734)) b!5142789))

(assert (= (and b!5142789 c!885358) b!5142786))

(assert (= (and b!5142789 (not c!885358)) b!5142787))

(assert (= (and b!5142786 res!2189737) b!5142793))

(assert (= (and b!5142787 c!885357) b!5142791))

(assert (= (and b!5142787 (not c!885357)) b!5142788))

(assert (= (and b!5142791 res!2189735) b!5142790))

(assert (= (and b!5142788 (not res!2189738)) b!5142785))

(assert (= (and b!5142785 res!2189736) b!5142792))

(assert (= (or b!5142790 b!5142792) bm!359006))

(assert (= (or b!5142791 b!5142785) bm!359007))

(assert (= (or b!5142793 bm!359007) bm!359005))

(declare-fun m!6205102 () Bool)

(assert (=> b!5142786 m!6205102))

(declare-fun m!6205104 () Bool)

(assert (=> bm!359005 m!6205104))

(declare-fun m!6205108 () Bool)

(assert (=> bm!359006 m!6205108))

(assert (=> bm!358977 d!1662991))

(declare-fun d!1662995 () Bool)

(declare-fun nullableFct!1318 (Regex!14467) Bool)

(assert (=> d!1662995 (= (nullable!4824 (reg!14796 (regOne!29447 expr!117))) (nullableFct!1318 (reg!14796 (regOne!29447 expr!117))))))

(declare-fun bs!1200879 () Bool)

(assert (= bs!1200879 d!1662995))

(declare-fun m!6205114 () Bool)

(assert (=> bs!1200879 m!6205114))

(assert (=> b!5142643 d!1662995))

(declare-fun d!1662997 () Bool)

(declare-fun res!2189744 () Bool)

(declare-fun e!3207089 () Bool)

(assert (=> d!1662997 (=> res!2189744 e!3207089)))

(assert (=> d!1662997 (= res!2189744 ((_ is ElementMatch!14467) (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))))))

(assert (=> d!1662997 (= (validRegex!6322 (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))) e!3207089)))

(declare-fun b!5142815 () Bool)

(declare-fun e!3207088 () Bool)

(declare-fun e!3207091 () Bool)

(assert (=> b!5142815 (= e!3207088 e!3207091)))

(declare-fun res!2189746 () Bool)

(assert (=> b!5142815 (=> (not res!2189746) (not e!3207091))))

(declare-fun call!359017 () Bool)

(assert (=> b!5142815 (= res!2189746 call!359017)))

(declare-fun b!5142816 () Bool)

(declare-fun e!3207087 () Bool)

(declare-fun e!3207092 () Bool)

(assert (=> b!5142816 (= e!3207087 e!3207092)))

(declare-fun res!2189747 () Bool)

(assert (=> b!5142816 (= res!2189747 (not (nullable!4824 (reg!14796 (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))))))))

(assert (=> b!5142816 (=> (not res!2189747) (not e!3207092))))

(declare-fun b!5142817 () Bool)

(declare-fun e!3207093 () Bool)

(assert (=> b!5142817 (= e!3207087 e!3207093)))

(declare-fun c!885361 () Bool)

(assert (=> b!5142817 (= c!885361 ((_ is Union!14467) (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))))))

(declare-fun b!5142818 () Bool)

(declare-fun res!2189748 () Bool)

(assert (=> b!5142818 (=> res!2189748 e!3207088)))

(assert (=> b!5142818 (= res!2189748 (not ((_ is Concat!23312) (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117))))))))

(assert (=> b!5142818 (= e!3207093 e!3207088)))

(declare-fun b!5142819 () Bool)

(assert (=> b!5142819 (= e!3207089 e!3207087)))

(declare-fun c!885362 () Bool)

(assert (=> b!5142819 (= c!885362 ((_ is Star!14467) (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))))))

(declare-fun bm!359011 () Bool)

(declare-fun call!359018 () Bool)

(assert (=> bm!359011 (= call!359018 (validRegex!6322 (ite c!885362 (reg!14796 (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))) (ite c!885361 (regOne!29447 (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))) (regOne!29446 (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117))))))))))

(declare-fun bm!359012 () Bool)

(declare-fun call!359016 () Bool)

(assert (=> bm!359012 (= call!359016 (validRegex!6322 (ite c!885361 (regTwo!29447 (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))) (regTwo!29446 (ite c!885339 (reg!14796 expr!117) (ite c!885338 (regOne!29447 expr!117) (regOne!29446 expr!117)))))))))

(declare-fun b!5142820 () Bool)

(declare-fun e!3207090 () Bool)

(assert (=> b!5142820 (= e!3207090 call!359016)))

(declare-fun b!5142822 () Bool)

(declare-fun res!2189745 () Bool)

(assert (=> b!5142822 (=> (not res!2189745) (not e!3207090))))

(assert (=> b!5142822 (= res!2189745 call!359017)))

(assert (=> b!5142822 (= e!3207093 e!3207090)))

(declare-fun bm!359013 () Bool)

(assert (=> bm!359013 (= call!359017 call!359018)))

(declare-fun b!5142825 () Bool)

(assert (=> b!5142825 (= e!3207091 call!359016)))

(declare-fun b!5142827 () Bool)

(assert (=> b!5142827 (= e!3207092 call!359018)))

(assert (= (and d!1662997 (not res!2189744)) b!5142819))

(assert (= (and b!5142819 c!885362) b!5142816))

(assert (= (and b!5142819 (not c!885362)) b!5142817))

(assert (= (and b!5142816 res!2189747) b!5142827))

(assert (= (and b!5142817 c!885361) b!5142822))

(assert (= (and b!5142817 (not c!885361)) b!5142818))

(assert (= (and b!5142822 res!2189745) b!5142820))

(assert (= (and b!5142818 (not res!2189748)) b!5142815))

(assert (= (and b!5142815 res!2189746) b!5142825))

(assert (= (or b!5142820 b!5142825) bm!359012))

(assert (= (or b!5142822 b!5142815) bm!359013))

(assert (= (or b!5142827 bm!359013) bm!359011))

(declare-fun m!6205116 () Bool)

(assert (=> b!5142816 m!6205116))

(declare-fun m!6205118 () Bool)

(assert (=> bm!359011 m!6205118))

(declare-fun m!6205120 () Bool)

(assert (=> bm!359012 m!6205120))

(assert (=> bm!358973 d!1662997))

(declare-fun d!1662999 () Bool)

(declare-fun res!2189749 () Bool)

(declare-fun e!3207101 () Bool)

(assert (=> d!1662999 (=> res!2189749 e!3207101)))

(assert (=> d!1662999 (= res!2189749 ((_ is ElementMatch!14467) (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))))))

(assert (=> d!1662999 (= (validRegex!6322 (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))) e!3207101)))

(declare-fun b!5142841 () Bool)

(declare-fun e!3207100 () Bool)

(declare-fun e!3207103 () Bool)

(assert (=> b!5142841 (= e!3207100 e!3207103)))

(declare-fun res!2189751 () Bool)

(assert (=> b!5142841 (=> (not res!2189751) (not e!3207103))))

(declare-fun call!359020 () Bool)

(assert (=> b!5142841 (= res!2189751 call!359020)))

(declare-fun b!5142842 () Bool)

(declare-fun e!3207099 () Bool)

(declare-fun e!3207104 () Bool)

(assert (=> b!5142842 (= e!3207099 e!3207104)))

(declare-fun res!2189752 () Bool)

(assert (=> b!5142842 (= res!2189752 (not (nullable!4824 (reg!14796 (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))))))))

(assert (=> b!5142842 (=> (not res!2189752) (not e!3207104))))

(declare-fun b!5142843 () Bool)

(declare-fun e!3207105 () Bool)

(assert (=> b!5142843 (= e!3207099 e!3207105)))

(declare-fun c!885363 () Bool)

(assert (=> b!5142843 (= c!885363 ((_ is Union!14467) (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))))))

(declare-fun b!5142844 () Bool)

(declare-fun res!2189753 () Bool)

(assert (=> b!5142844 (=> res!2189753 e!3207100)))

(assert (=> b!5142844 (= res!2189753 (not ((_ is Concat!23312) (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117)))))))

(assert (=> b!5142844 (= e!3207105 e!3207100)))

(declare-fun b!5142845 () Bool)

(assert (=> b!5142845 (= e!3207101 e!3207099)))

(declare-fun c!885364 () Bool)

(assert (=> b!5142845 (= c!885364 ((_ is Star!14467) (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))))))

(declare-fun call!359021 () Bool)

(declare-fun bm!359014 () Bool)

(assert (=> bm!359014 (= call!359021 (validRegex!6322 (ite c!885364 (reg!14796 (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))) (ite c!885363 (regOne!29447 (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))) (regOne!29446 (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117)))))))))

(declare-fun bm!359015 () Bool)

(declare-fun call!359019 () Bool)

(assert (=> bm!359015 (= call!359019 (validRegex!6322 (ite c!885363 (regTwo!29447 (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))) (regTwo!29446 (ite c!885338 (regTwo!29447 expr!117) (regTwo!29446 expr!117))))))))

(declare-fun b!5142846 () Bool)

(declare-fun e!3207102 () Bool)

(assert (=> b!5142846 (= e!3207102 call!359019)))

(declare-fun b!5142847 () Bool)

(declare-fun res!2189750 () Bool)

(assert (=> b!5142847 (=> (not res!2189750) (not e!3207102))))

(assert (=> b!5142847 (= res!2189750 call!359020)))

(assert (=> b!5142847 (= e!3207105 e!3207102)))

(declare-fun bm!359016 () Bool)

(assert (=> bm!359016 (= call!359020 call!359021)))

(declare-fun b!5142848 () Bool)

(assert (=> b!5142848 (= e!3207103 call!359019)))

(declare-fun b!5142849 () Bool)

(assert (=> b!5142849 (= e!3207104 call!359021)))

(assert (= (and d!1662999 (not res!2189749)) b!5142845))

(assert (= (and b!5142845 c!885364) b!5142842))

(assert (= (and b!5142845 (not c!885364)) b!5142843))

(assert (= (and b!5142842 res!2189752) b!5142849))

(assert (= (and b!5142843 c!885363) b!5142847))

(assert (= (and b!5142843 (not c!885363)) b!5142844))

(assert (= (and b!5142847 res!2189750) b!5142846))

(assert (= (and b!5142844 (not res!2189753)) b!5142841))

(assert (= (and b!5142841 res!2189751) b!5142848))

(assert (= (or b!5142846 b!5142848) bm!359015))

(assert (= (or b!5142847 b!5142841) bm!359016))

(assert (= (or b!5142849 bm!359016) bm!359014))

(declare-fun m!6205122 () Bool)

(assert (=> b!5142842 m!6205122))

(declare-fun m!6205124 () Bool)

(assert (=> bm!359014 m!6205124))

(declare-fun m!6205126 () Bool)

(assert (=> bm!359015 m!6205126))

(assert (=> bm!358974 d!1662999))

(declare-fun b!5142866 () Bool)

(declare-fun e!3207113 () Bool)

(declare-fun e!3207114 () Bool)

(assert (=> b!5142866 (= e!3207113 e!3207114)))

(declare-fun res!2189757 () Bool)

(declare-fun call!359022 () Bool)

(assert (=> b!5142866 (= res!2189757 call!359022)))

(assert (=> b!5142866 (=> res!2189757 e!3207114)))

(declare-fun b!5142867 () Bool)

(declare-fun e!3207110 () Bool)

(declare-fun e!3207111 () Bool)

(assert (=> b!5142867 (= e!3207110 e!3207111)))

(declare-fun res!2189754 () Bool)

(assert (=> b!5142867 (=> (not res!2189754) (not e!3207111))))

(assert (=> b!5142867 (= res!2189754 (and (not ((_ is ElementMatch!14467) expr!117)) (not ((_ is Star!14467) expr!117))))))

(declare-fun d!1663001 () Bool)

(declare-fun lt!2120502 () Bool)

(assert (=> d!1663001 (= lt!2120502 (isEmpty!32044 (getLanguageWitness!936 expr!117)))))

(declare-fun e!3207112 () Bool)

(assert (=> d!1663001 (= lt!2120502 e!3207112)))

(declare-fun res!2189758 () Bool)

(assert (=> d!1663001 (=> (not res!2189758) (not e!3207112))))

(assert (=> d!1663001 (= res!2189758 (not ((_ is EmptyExpr!14467) expr!117)))))

(assert (=> d!1663001 (= (lostCauseFct!350 expr!117) lt!2120502)))

(declare-fun b!5142868 () Bool)

(assert (=> b!5142868 (= e!3207112 e!3207110)))

(declare-fun res!2189755 () Bool)

(assert (=> b!5142868 (=> res!2189755 e!3207110)))

(assert (=> b!5142868 (= res!2189755 ((_ is EmptyLang!14467) expr!117))))

(declare-fun bm!359017 () Bool)

(declare-fun call!359023 () Bool)

(declare-fun c!885365 () Bool)

(assert (=> bm!359017 (= call!359023 (lostCause!1487 (ite c!885365 (regTwo!29447 expr!117) (regTwo!29446 expr!117))))))

(declare-fun b!5142869 () Bool)

(declare-fun e!3207115 () Bool)

(assert (=> b!5142869 (= e!3207115 call!359023)))

(declare-fun b!5142870 () Bool)

(assert (=> b!5142870 (= e!3207113 e!3207115)))

(declare-fun res!2189756 () Bool)

(assert (=> b!5142870 (= res!2189756 call!359022)))

(assert (=> b!5142870 (=> (not res!2189756) (not e!3207115))))

(declare-fun b!5142871 () Bool)

(assert (=> b!5142871 (= e!3207114 call!359023)))

(declare-fun bm!359018 () Bool)

(assert (=> bm!359018 (= call!359022 (lostCause!1487 (ite c!885365 (regOne!29447 expr!117) (regOne!29446 expr!117))))))

(declare-fun b!5142872 () Bool)

(assert (=> b!5142872 (= e!3207111 e!3207113)))

(assert (=> b!5142872 (= c!885365 ((_ is Union!14467) expr!117))))

(assert (= (and d!1663001 res!2189758) b!5142868))

(assert (= (and b!5142868 (not res!2189755)) b!5142867))

(assert (= (and b!5142867 res!2189754) b!5142872))

(assert (= (and b!5142872 c!885365) b!5142870))

(assert (= (and b!5142872 (not c!885365)) b!5142866))

(assert (= (and b!5142870 res!2189756) b!5142869))

(assert (= (and b!5142866 (not res!2189757)) b!5142871))

(assert (= (or b!5142870 b!5142866) bm!359018))

(assert (= (or b!5142869 b!5142871) bm!359017))

(declare-fun m!6205128 () Bool)

(assert (=> d!1663001 m!6205128))

(assert (=> d!1663001 m!6205128))

(declare-fun m!6205130 () Bool)

(assert (=> d!1663001 m!6205130))

(declare-fun m!6205132 () Bool)

(assert (=> bm!359017 m!6205132))

(declare-fun m!6205134 () Bool)

(assert (=> bm!359018 m!6205134))

(assert (=> d!1662963 d!1663001))

(declare-fun d!1663003 () Bool)

(assert (=> d!1663003 (= (nullable!4824 (reg!14796 expr!117)) (nullableFct!1318 (reg!14796 expr!117)))))

(declare-fun bs!1200880 () Bool)

(assert (= bs!1200880 d!1663003))

(declare-fun m!6205136 () Bool)

(assert (=> bs!1200880 m!6205136))

(assert (=> b!5142634 d!1663003))

(declare-fun bs!1200881 () Bool)

(declare-fun d!1663005 () Bool)

(assert (= bs!1200881 (and d!1663005 d!1662943)))

(declare-fun lambda!256516 () Int)

(assert (=> bs!1200881 (not (= lambda!256516 lambda!256507))))

(declare-fun bs!1200882 () Bool)

(assert (= bs!1200882 (and d!1663005 d!1662959)))

(assert (=> bs!1200882 (not (= lambda!256516 lambda!256510))))

(assert (=> d!1663005 true))

(declare-fun order!26957 () Int)

(declare-fun dynLambda!23774 (Int Int) Int)

(assert (=> d!1663005 (< (dynLambda!23774 order!26957 lambda!256507) (dynLambda!23774 order!26957 lambda!256516))))

(assert (=> d!1663005 (= (exists!1786 (exprs!4351 ctx!100) lambda!256507) (not (forall!13925 (exprs!4351 ctx!100) lambda!256516)))))

(declare-fun bs!1200883 () Bool)

(assert (= bs!1200883 d!1663005))

(declare-fun m!6205138 () Bool)

(assert (=> bs!1200883 m!6205138))

(assert (=> d!1662943 d!1663005))

(declare-fun e!3207131 () Bool)

(assert (=> b!5142679 (= tp!1435812 e!3207131)))

(declare-fun b!5142936 () Bool)

(declare-fun tp!1435954 () Bool)

(declare-fun tp!1435953 () Bool)

(assert (=> b!5142936 (= e!3207131 (and tp!1435954 tp!1435953))))

(declare-fun b!5142938 () Bool)

(declare-fun tp!1435952 () Bool)

(declare-fun tp!1435956 () Bool)

(assert (=> b!5142938 (= e!3207131 (and tp!1435952 tp!1435956))))

(declare-fun b!5142937 () Bool)

(declare-fun tp!1435955 () Bool)

(assert (=> b!5142937 (= e!3207131 tp!1435955)))

(declare-fun b!5142935 () Bool)

(assert (=> b!5142935 (= e!3207131 tp_is_empty!38083)))

(assert (= (and b!5142679 ((_ is ElementMatch!14467) (regOne!29446 (regOne!29447 expr!117)))) b!5142935))

(assert (= (and b!5142679 ((_ is Concat!23312) (regOne!29446 (regOne!29447 expr!117)))) b!5142936))

(assert (= (and b!5142679 ((_ is Star!14467) (regOne!29446 (regOne!29447 expr!117)))) b!5142937))

(assert (= (and b!5142679 ((_ is Union!14467) (regOne!29446 (regOne!29447 expr!117)))) b!5142938))

(declare-fun e!3207132 () Bool)

(assert (=> b!5142679 (= tp!1435811 e!3207132)))

(declare-fun b!5142940 () Bool)

(declare-fun tp!1435959 () Bool)

(declare-fun tp!1435958 () Bool)

(assert (=> b!5142940 (= e!3207132 (and tp!1435959 tp!1435958))))

(declare-fun b!5142942 () Bool)

(declare-fun tp!1435957 () Bool)

(declare-fun tp!1435961 () Bool)

(assert (=> b!5142942 (= e!3207132 (and tp!1435957 tp!1435961))))

(declare-fun b!5142941 () Bool)

(declare-fun tp!1435960 () Bool)

(assert (=> b!5142941 (= e!3207132 tp!1435960)))

(declare-fun b!5142939 () Bool)

(assert (=> b!5142939 (= e!3207132 tp_is_empty!38083)))

(assert (= (and b!5142679 ((_ is ElementMatch!14467) (regTwo!29446 (regOne!29447 expr!117)))) b!5142939))

(assert (= (and b!5142679 ((_ is Concat!23312) (regTwo!29446 (regOne!29447 expr!117)))) b!5142940))

(assert (= (and b!5142679 ((_ is Star!14467) (regTwo!29446 (regOne!29447 expr!117)))) b!5142941))

(assert (= (and b!5142679 ((_ is Union!14467) (regTwo!29446 (regOne!29447 expr!117)))) b!5142942))

(declare-fun e!3207133 () Bool)

(assert (=> b!5142655 (= tp!1435783 e!3207133)))

(declare-fun b!5142944 () Bool)

(declare-fun tp!1435964 () Bool)

(declare-fun tp!1435963 () Bool)

(assert (=> b!5142944 (= e!3207133 (and tp!1435964 tp!1435963))))

(declare-fun b!5142946 () Bool)

(declare-fun tp!1435962 () Bool)

(declare-fun tp!1435966 () Bool)

(assert (=> b!5142946 (= e!3207133 (and tp!1435962 tp!1435966))))

(declare-fun b!5142945 () Bool)

(declare-fun tp!1435965 () Bool)

(assert (=> b!5142945 (= e!3207133 tp!1435965)))

(declare-fun b!5142943 () Bool)

(assert (=> b!5142943 (= e!3207133 tp_is_empty!38083)))

(assert (= (and b!5142655 ((_ is ElementMatch!14467) (h!66169 (exprs!4351 ctx!100)))) b!5142943))

(assert (= (and b!5142655 ((_ is Concat!23312) (h!66169 (exprs!4351 ctx!100)))) b!5142944))

(assert (= (and b!5142655 ((_ is Star!14467) (h!66169 (exprs!4351 ctx!100)))) b!5142945))

(assert (= (and b!5142655 ((_ is Union!14467) (h!66169 (exprs!4351 ctx!100)))) b!5142946))

(declare-fun b!5142947 () Bool)

(declare-fun e!3207134 () Bool)

(declare-fun tp!1435967 () Bool)

(declare-fun tp!1435968 () Bool)

(assert (=> b!5142947 (= e!3207134 (and tp!1435967 tp!1435968))))

(assert (=> b!5142655 (= tp!1435784 e!3207134)))

(assert (= (and b!5142655 ((_ is Cons!59721) (t!372880 (exprs!4351 ctx!100)))) b!5142947))

(declare-fun e!3207135 () Bool)

(assert (=> b!5142684 (= tp!1435818 e!3207135)))

(declare-fun b!5142949 () Bool)

(declare-fun tp!1435971 () Bool)

(declare-fun tp!1435970 () Bool)

(assert (=> b!5142949 (= e!3207135 (and tp!1435971 tp!1435970))))

(declare-fun b!5142951 () Bool)

(declare-fun tp!1435969 () Bool)

(declare-fun tp!1435973 () Bool)

(assert (=> b!5142951 (= e!3207135 (and tp!1435969 tp!1435973))))

(declare-fun b!5142950 () Bool)

(declare-fun tp!1435972 () Bool)

(assert (=> b!5142950 (= e!3207135 tp!1435972)))

(declare-fun b!5142948 () Bool)

(assert (=> b!5142948 (= e!3207135 tp_is_empty!38083)))

(assert (= (and b!5142684 ((_ is ElementMatch!14467) (reg!14796 (regTwo!29447 expr!117)))) b!5142948))

(assert (= (and b!5142684 ((_ is Concat!23312) (reg!14796 (regTwo!29447 expr!117)))) b!5142949))

(assert (= (and b!5142684 ((_ is Star!14467) (reg!14796 (regTwo!29447 expr!117)))) b!5142950))

(assert (= (and b!5142684 ((_ is Union!14467) (reg!14796 (regTwo!29447 expr!117)))) b!5142951))

(declare-fun e!3207136 () Bool)

(assert (=> b!5142675 (= tp!1435807 e!3207136)))

(declare-fun b!5142953 () Bool)

(declare-fun tp!1435976 () Bool)

(declare-fun tp!1435975 () Bool)

(assert (=> b!5142953 (= e!3207136 (and tp!1435976 tp!1435975))))

(declare-fun b!5142955 () Bool)

(declare-fun tp!1435974 () Bool)

(declare-fun tp!1435978 () Bool)

(assert (=> b!5142955 (= e!3207136 (and tp!1435974 tp!1435978))))

(declare-fun b!5142954 () Bool)

(declare-fun tp!1435977 () Bool)

(assert (=> b!5142954 (= e!3207136 tp!1435977)))

(declare-fun b!5142952 () Bool)

(assert (=> b!5142952 (= e!3207136 tp_is_empty!38083)))

(assert (= (and b!5142675 ((_ is ElementMatch!14467) (regOne!29446 (regTwo!29446 expr!117)))) b!5142952))

(assert (= (and b!5142675 ((_ is Concat!23312) (regOne!29446 (regTwo!29446 expr!117)))) b!5142953))

(assert (= (and b!5142675 ((_ is Star!14467) (regOne!29446 (regTwo!29446 expr!117)))) b!5142954))

(assert (= (and b!5142675 ((_ is Union!14467) (regOne!29446 (regTwo!29446 expr!117)))) b!5142955))

(declare-fun e!3207137 () Bool)

(assert (=> b!5142675 (= tp!1435806 e!3207137)))

(declare-fun b!5142957 () Bool)

(declare-fun tp!1435981 () Bool)

(declare-fun tp!1435980 () Bool)

(assert (=> b!5142957 (= e!3207137 (and tp!1435981 tp!1435980))))

(declare-fun b!5142959 () Bool)

(declare-fun tp!1435979 () Bool)

(declare-fun tp!1435983 () Bool)

(assert (=> b!5142959 (= e!3207137 (and tp!1435979 tp!1435983))))

(declare-fun b!5142958 () Bool)

(declare-fun tp!1435982 () Bool)

(assert (=> b!5142958 (= e!3207137 tp!1435982)))

(declare-fun b!5142956 () Bool)

(assert (=> b!5142956 (= e!3207137 tp_is_empty!38083)))

(assert (= (and b!5142675 ((_ is ElementMatch!14467) (regTwo!29446 (regTwo!29446 expr!117)))) b!5142956))

(assert (= (and b!5142675 ((_ is Concat!23312) (regTwo!29446 (regTwo!29446 expr!117)))) b!5142957))

(assert (= (and b!5142675 ((_ is Star!14467) (regTwo!29446 (regTwo!29446 expr!117)))) b!5142958))

(assert (= (and b!5142675 ((_ is Union!14467) (regTwo!29446 (regTwo!29446 expr!117)))) b!5142959))

(declare-fun e!3207138 () Bool)

(assert (=> b!5142680 (= tp!1435813 e!3207138)))

(declare-fun b!5142961 () Bool)

(declare-fun tp!1435986 () Bool)

(declare-fun tp!1435985 () Bool)

(assert (=> b!5142961 (= e!3207138 (and tp!1435986 tp!1435985))))

(declare-fun b!5142963 () Bool)

(declare-fun tp!1435984 () Bool)

(declare-fun tp!1435988 () Bool)

(assert (=> b!5142963 (= e!3207138 (and tp!1435984 tp!1435988))))

(declare-fun b!5142962 () Bool)

(declare-fun tp!1435987 () Bool)

(assert (=> b!5142962 (= e!3207138 tp!1435987)))

(declare-fun b!5142960 () Bool)

(assert (=> b!5142960 (= e!3207138 tp_is_empty!38083)))

(assert (= (and b!5142680 ((_ is ElementMatch!14467) (reg!14796 (regOne!29447 expr!117)))) b!5142960))

(assert (= (and b!5142680 ((_ is Concat!23312) (reg!14796 (regOne!29447 expr!117)))) b!5142961))

(assert (= (and b!5142680 ((_ is Star!14467) (reg!14796 (regOne!29447 expr!117)))) b!5142962))

(assert (= (and b!5142680 ((_ is Union!14467) (reg!14796 (regOne!29447 expr!117)))) b!5142963))

(declare-fun e!3207139 () Bool)

(assert (=> b!5142671 (= tp!1435802 e!3207139)))

(declare-fun b!5142965 () Bool)

(declare-fun tp!1435991 () Bool)

(declare-fun tp!1435990 () Bool)

(assert (=> b!5142965 (= e!3207139 (and tp!1435991 tp!1435990))))

(declare-fun b!5142967 () Bool)

(declare-fun tp!1435989 () Bool)

(declare-fun tp!1435993 () Bool)

(assert (=> b!5142967 (= e!3207139 (and tp!1435989 tp!1435993))))

(declare-fun b!5142966 () Bool)

(declare-fun tp!1435992 () Bool)

(assert (=> b!5142966 (= e!3207139 tp!1435992)))

(declare-fun b!5142964 () Bool)

(assert (=> b!5142964 (= e!3207139 tp_is_empty!38083)))

(assert (= (and b!5142671 ((_ is ElementMatch!14467) (regOne!29446 (regOne!29446 expr!117)))) b!5142964))

(assert (= (and b!5142671 ((_ is Concat!23312) (regOne!29446 (regOne!29446 expr!117)))) b!5142965))

(assert (= (and b!5142671 ((_ is Star!14467) (regOne!29446 (regOne!29446 expr!117)))) b!5142966))

(assert (= (and b!5142671 ((_ is Union!14467) (regOne!29446 (regOne!29446 expr!117)))) b!5142967))

(declare-fun e!3207140 () Bool)

(assert (=> b!5142671 (= tp!1435801 e!3207140)))

(declare-fun b!5142969 () Bool)

(declare-fun tp!1435996 () Bool)

(declare-fun tp!1435995 () Bool)

(assert (=> b!5142969 (= e!3207140 (and tp!1435996 tp!1435995))))

(declare-fun b!5142971 () Bool)

(declare-fun tp!1435994 () Bool)

(declare-fun tp!1435998 () Bool)

(assert (=> b!5142971 (= e!3207140 (and tp!1435994 tp!1435998))))

(declare-fun b!5142970 () Bool)

(declare-fun tp!1435997 () Bool)

(assert (=> b!5142970 (= e!3207140 tp!1435997)))

(declare-fun b!5142968 () Bool)

(assert (=> b!5142968 (= e!3207140 tp_is_empty!38083)))

(assert (= (and b!5142671 ((_ is ElementMatch!14467) (regTwo!29446 (regOne!29446 expr!117)))) b!5142968))

(assert (= (and b!5142671 ((_ is Concat!23312) (regTwo!29446 (regOne!29446 expr!117)))) b!5142969))

(assert (= (and b!5142671 ((_ is Star!14467) (regTwo!29446 (regOne!29446 expr!117)))) b!5142970))

(assert (= (and b!5142671 ((_ is Union!14467) (regTwo!29446 (regOne!29446 expr!117)))) b!5142971))

(declare-fun e!3207141 () Bool)

(assert (=> b!5142685 (= tp!1435815 e!3207141)))

(declare-fun b!5142973 () Bool)

(declare-fun tp!1436001 () Bool)

(declare-fun tp!1436000 () Bool)

(assert (=> b!5142973 (= e!3207141 (and tp!1436001 tp!1436000))))

(declare-fun b!5142975 () Bool)

(declare-fun tp!1435999 () Bool)

(declare-fun tp!1436003 () Bool)

(assert (=> b!5142975 (= e!3207141 (and tp!1435999 tp!1436003))))

(declare-fun b!5142974 () Bool)

(declare-fun tp!1436002 () Bool)

(assert (=> b!5142974 (= e!3207141 tp!1436002)))

(declare-fun b!5142972 () Bool)

(assert (=> b!5142972 (= e!3207141 tp_is_empty!38083)))

(assert (= (and b!5142685 ((_ is ElementMatch!14467) (regOne!29447 (regTwo!29447 expr!117)))) b!5142972))

(assert (= (and b!5142685 ((_ is Concat!23312) (regOne!29447 (regTwo!29447 expr!117)))) b!5142973))

(assert (= (and b!5142685 ((_ is Star!14467) (regOne!29447 (regTwo!29447 expr!117)))) b!5142974))

(assert (= (and b!5142685 ((_ is Union!14467) (regOne!29447 (regTwo!29447 expr!117)))) b!5142975))

(declare-fun e!3207142 () Bool)

(assert (=> b!5142685 (= tp!1435819 e!3207142)))

(declare-fun b!5142977 () Bool)

(declare-fun tp!1436006 () Bool)

(declare-fun tp!1436005 () Bool)

(assert (=> b!5142977 (= e!3207142 (and tp!1436006 tp!1436005))))

(declare-fun b!5142979 () Bool)

(declare-fun tp!1436004 () Bool)

(declare-fun tp!1436008 () Bool)

(assert (=> b!5142979 (= e!3207142 (and tp!1436004 tp!1436008))))

(declare-fun b!5142978 () Bool)

(declare-fun tp!1436007 () Bool)

(assert (=> b!5142978 (= e!3207142 tp!1436007)))

(declare-fun b!5142976 () Bool)

(assert (=> b!5142976 (= e!3207142 tp_is_empty!38083)))

(assert (= (and b!5142685 ((_ is ElementMatch!14467) (regTwo!29447 (regTwo!29447 expr!117)))) b!5142976))

(assert (= (and b!5142685 ((_ is Concat!23312) (regTwo!29447 (regTwo!29447 expr!117)))) b!5142977))

(assert (= (and b!5142685 ((_ is Star!14467) (regTwo!29447 (regTwo!29447 expr!117)))) b!5142978))

(assert (= (and b!5142685 ((_ is Union!14467) (regTwo!29447 (regTwo!29447 expr!117)))) b!5142979))

(declare-fun e!3207143 () Bool)

(assert (=> b!5142676 (= tp!1435808 e!3207143)))

(declare-fun b!5142981 () Bool)

(declare-fun tp!1436011 () Bool)

(declare-fun tp!1436010 () Bool)

(assert (=> b!5142981 (= e!3207143 (and tp!1436011 tp!1436010))))

(declare-fun b!5142983 () Bool)

(declare-fun tp!1436009 () Bool)

(declare-fun tp!1436013 () Bool)

(assert (=> b!5142983 (= e!3207143 (and tp!1436009 tp!1436013))))

(declare-fun b!5142982 () Bool)

(declare-fun tp!1436012 () Bool)

(assert (=> b!5142982 (= e!3207143 tp!1436012)))

(declare-fun b!5142980 () Bool)

(assert (=> b!5142980 (= e!3207143 tp_is_empty!38083)))

(assert (= (and b!5142676 ((_ is ElementMatch!14467) (reg!14796 (regTwo!29446 expr!117)))) b!5142980))

(assert (= (and b!5142676 ((_ is Concat!23312) (reg!14796 (regTwo!29446 expr!117)))) b!5142981))

(assert (= (and b!5142676 ((_ is Star!14467) (reg!14796 (regTwo!29446 expr!117)))) b!5142982))

(assert (= (and b!5142676 ((_ is Union!14467) (reg!14796 (regTwo!29446 expr!117)))) b!5142983))

(declare-fun e!3207144 () Bool)

(assert (=> b!5142667 (= tp!1435797 e!3207144)))

(declare-fun b!5142985 () Bool)

(declare-fun tp!1436016 () Bool)

(declare-fun tp!1436015 () Bool)

(assert (=> b!5142985 (= e!3207144 (and tp!1436016 tp!1436015))))

(declare-fun b!5142987 () Bool)

(declare-fun tp!1436014 () Bool)

(declare-fun tp!1436018 () Bool)

(assert (=> b!5142987 (= e!3207144 (and tp!1436014 tp!1436018))))

(declare-fun b!5142986 () Bool)

(declare-fun tp!1436017 () Bool)

(assert (=> b!5142986 (= e!3207144 tp!1436017)))

(declare-fun b!5142984 () Bool)

(assert (=> b!5142984 (= e!3207144 tp_is_empty!38083)))

(assert (= (and b!5142667 ((_ is ElementMatch!14467) (regOne!29446 (reg!14796 expr!117)))) b!5142984))

(assert (= (and b!5142667 ((_ is Concat!23312) (regOne!29446 (reg!14796 expr!117)))) b!5142985))

(assert (= (and b!5142667 ((_ is Star!14467) (regOne!29446 (reg!14796 expr!117)))) b!5142986))

(assert (= (and b!5142667 ((_ is Union!14467) (regOne!29446 (reg!14796 expr!117)))) b!5142987))

(declare-fun e!3207145 () Bool)

(assert (=> b!5142667 (= tp!1435796 e!3207145)))

(declare-fun b!5142989 () Bool)

(declare-fun tp!1436021 () Bool)

(declare-fun tp!1436020 () Bool)

(assert (=> b!5142989 (= e!3207145 (and tp!1436021 tp!1436020))))

(declare-fun b!5142991 () Bool)

(declare-fun tp!1436019 () Bool)

(declare-fun tp!1436023 () Bool)

(assert (=> b!5142991 (= e!3207145 (and tp!1436019 tp!1436023))))

(declare-fun b!5142990 () Bool)

(declare-fun tp!1436022 () Bool)

(assert (=> b!5142990 (= e!3207145 tp!1436022)))

(declare-fun b!5142988 () Bool)

(assert (=> b!5142988 (= e!3207145 tp_is_empty!38083)))

(assert (= (and b!5142667 ((_ is ElementMatch!14467) (regTwo!29446 (reg!14796 expr!117)))) b!5142988))

(assert (= (and b!5142667 ((_ is Concat!23312) (regTwo!29446 (reg!14796 expr!117)))) b!5142989))

(assert (= (and b!5142667 ((_ is Star!14467) (regTwo!29446 (reg!14796 expr!117)))) b!5142990))

(assert (= (and b!5142667 ((_ is Union!14467) (regTwo!29446 (reg!14796 expr!117)))) b!5142991))

(declare-fun e!3207146 () Bool)

(assert (=> b!5142681 (= tp!1435810 e!3207146)))

(declare-fun b!5142993 () Bool)

(declare-fun tp!1436026 () Bool)

(declare-fun tp!1436025 () Bool)

(assert (=> b!5142993 (= e!3207146 (and tp!1436026 tp!1436025))))

(declare-fun b!5142995 () Bool)

(declare-fun tp!1436024 () Bool)

(declare-fun tp!1436028 () Bool)

(assert (=> b!5142995 (= e!3207146 (and tp!1436024 tp!1436028))))

(declare-fun b!5142994 () Bool)

(declare-fun tp!1436027 () Bool)

(assert (=> b!5142994 (= e!3207146 tp!1436027)))

(declare-fun b!5142992 () Bool)

(assert (=> b!5142992 (= e!3207146 tp_is_empty!38083)))

(assert (= (and b!5142681 ((_ is ElementMatch!14467) (regOne!29447 (regOne!29447 expr!117)))) b!5142992))

(assert (= (and b!5142681 ((_ is Concat!23312) (regOne!29447 (regOne!29447 expr!117)))) b!5142993))

(assert (= (and b!5142681 ((_ is Star!14467) (regOne!29447 (regOne!29447 expr!117)))) b!5142994))

(assert (= (and b!5142681 ((_ is Union!14467) (regOne!29447 (regOne!29447 expr!117)))) b!5142995))

(declare-fun e!3207147 () Bool)

(assert (=> b!5142681 (= tp!1435814 e!3207147)))

(declare-fun b!5142997 () Bool)

(declare-fun tp!1436031 () Bool)

(declare-fun tp!1436030 () Bool)

(assert (=> b!5142997 (= e!3207147 (and tp!1436031 tp!1436030))))

(declare-fun b!5142999 () Bool)

(declare-fun tp!1436029 () Bool)

(declare-fun tp!1436033 () Bool)

(assert (=> b!5142999 (= e!3207147 (and tp!1436029 tp!1436033))))

(declare-fun b!5142998 () Bool)

(declare-fun tp!1436032 () Bool)

(assert (=> b!5142998 (= e!3207147 tp!1436032)))

(declare-fun b!5142996 () Bool)

(assert (=> b!5142996 (= e!3207147 tp_is_empty!38083)))

(assert (= (and b!5142681 ((_ is ElementMatch!14467) (regTwo!29447 (regOne!29447 expr!117)))) b!5142996))

(assert (= (and b!5142681 ((_ is Concat!23312) (regTwo!29447 (regOne!29447 expr!117)))) b!5142997))

(assert (= (and b!5142681 ((_ is Star!14467) (regTwo!29447 (regOne!29447 expr!117)))) b!5142998))

(assert (= (and b!5142681 ((_ is Union!14467) (regTwo!29447 (regOne!29447 expr!117)))) b!5142999))

(declare-fun e!3207148 () Bool)

(assert (=> b!5142683 (= tp!1435817 e!3207148)))

(declare-fun b!5143001 () Bool)

(declare-fun tp!1436036 () Bool)

(declare-fun tp!1436035 () Bool)

(assert (=> b!5143001 (= e!3207148 (and tp!1436036 tp!1436035))))

(declare-fun b!5143003 () Bool)

(declare-fun tp!1436034 () Bool)

(declare-fun tp!1436038 () Bool)

(assert (=> b!5143003 (= e!3207148 (and tp!1436034 tp!1436038))))

(declare-fun b!5143002 () Bool)

(declare-fun tp!1436037 () Bool)

(assert (=> b!5143002 (= e!3207148 tp!1436037)))

(declare-fun b!5143000 () Bool)

(assert (=> b!5143000 (= e!3207148 tp_is_empty!38083)))

(assert (= (and b!5142683 ((_ is ElementMatch!14467) (regOne!29446 (regTwo!29447 expr!117)))) b!5143000))

(assert (= (and b!5142683 ((_ is Concat!23312) (regOne!29446 (regTwo!29447 expr!117)))) b!5143001))

(assert (= (and b!5142683 ((_ is Star!14467) (regOne!29446 (regTwo!29447 expr!117)))) b!5143002))

(assert (= (and b!5142683 ((_ is Union!14467) (regOne!29446 (regTwo!29447 expr!117)))) b!5143003))

(declare-fun e!3207149 () Bool)

(assert (=> b!5142683 (= tp!1435816 e!3207149)))

(declare-fun b!5143005 () Bool)

(declare-fun tp!1436041 () Bool)

(declare-fun tp!1436040 () Bool)

(assert (=> b!5143005 (= e!3207149 (and tp!1436041 tp!1436040))))

(declare-fun b!5143007 () Bool)

(declare-fun tp!1436039 () Bool)

(declare-fun tp!1436043 () Bool)

(assert (=> b!5143007 (= e!3207149 (and tp!1436039 tp!1436043))))

(declare-fun b!5143006 () Bool)

(declare-fun tp!1436042 () Bool)

(assert (=> b!5143006 (= e!3207149 tp!1436042)))

(declare-fun b!5143004 () Bool)

(assert (=> b!5143004 (= e!3207149 tp_is_empty!38083)))

(assert (= (and b!5142683 ((_ is ElementMatch!14467) (regTwo!29446 (regTwo!29447 expr!117)))) b!5143004))

(assert (= (and b!5142683 ((_ is Concat!23312) (regTwo!29446 (regTwo!29447 expr!117)))) b!5143005))

(assert (= (and b!5142683 ((_ is Star!14467) (regTwo!29446 (regTwo!29447 expr!117)))) b!5143006))

(assert (= (and b!5142683 ((_ is Union!14467) (regTwo!29446 (regTwo!29447 expr!117)))) b!5143007))

(declare-fun e!3207150 () Bool)

(assert (=> b!5142672 (= tp!1435803 e!3207150)))

(declare-fun b!5143009 () Bool)

(declare-fun tp!1436046 () Bool)

(declare-fun tp!1436045 () Bool)

(assert (=> b!5143009 (= e!3207150 (and tp!1436046 tp!1436045))))

(declare-fun b!5143011 () Bool)

(declare-fun tp!1436044 () Bool)

(declare-fun tp!1436048 () Bool)

(assert (=> b!5143011 (= e!3207150 (and tp!1436044 tp!1436048))))

(declare-fun b!5143010 () Bool)

(declare-fun tp!1436047 () Bool)

(assert (=> b!5143010 (= e!3207150 tp!1436047)))

(declare-fun b!5143008 () Bool)

(assert (=> b!5143008 (= e!3207150 tp_is_empty!38083)))

(assert (= (and b!5142672 ((_ is ElementMatch!14467) (reg!14796 (regOne!29446 expr!117)))) b!5143008))

(assert (= (and b!5142672 ((_ is Concat!23312) (reg!14796 (regOne!29446 expr!117)))) b!5143009))

(assert (= (and b!5142672 ((_ is Star!14467) (reg!14796 (regOne!29446 expr!117)))) b!5143010))

(assert (= (and b!5142672 ((_ is Union!14467) (reg!14796 (regOne!29446 expr!117)))) b!5143011))

(declare-fun e!3207151 () Bool)

(assert (=> b!5142677 (= tp!1435805 e!3207151)))

(declare-fun b!5143013 () Bool)

(declare-fun tp!1436051 () Bool)

(declare-fun tp!1436050 () Bool)

(assert (=> b!5143013 (= e!3207151 (and tp!1436051 tp!1436050))))

(declare-fun b!5143015 () Bool)

(declare-fun tp!1436049 () Bool)

(declare-fun tp!1436053 () Bool)

(assert (=> b!5143015 (= e!3207151 (and tp!1436049 tp!1436053))))

(declare-fun b!5143014 () Bool)

(declare-fun tp!1436052 () Bool)

(assert (=> b!5143014 (= e!3207151 tp!1436052)))

(declare-fun b!5143012 () Bool)

(assert (=> b!5143012 (= e!3207151 tp_is_empty!38083)))

(assert (= (and b!5142677 ((_ is ElementMatch!14467) (regOne!29447 (regTwo!29446 expr!117)))) b!5143012))

(assert (= (and b!5142677 ((_ is Concat!23312) (regOne!29447 (regTwo!29446 expr!117)))) b!5143013))

(assert (= (and b!5142677 ((_ is Star!14467) (regOne!29447 (regTwo!29446 expr!117)))) b!5143014))

(assert (= (and b!5142677 ((_ is Union!14467) (regOne!29447 (regTwo!29446 expr!117)))) b!5143015))

(declare-fun e!3207152 () Bool)

(assert (=> b!5142677 (= tp!1435809 e!3207152)))

(declare-fun b!5143017 () Bool)

(declare-fun tp!1436056 () Bool)

(declare-fun tp!1436055 () Bool)

(assert (=> b!5143017 (= e!3207152 (and tp!1436056 tp!1436055))))

(declare-fun b!5143019 () Bool)

(declare-fun tp!1436054 () Bool)

(declare-fun tp!1436058 () Bool)

(assert (=> b!5143019 (= e!3207152 (and tp!1436054 tp!1436058))))

(declare-fun b!5143018 () Bool)

(declare-fun tp!1436057 () Bool)

(assert (=> b!5143018 (= e!3207152 tp!1436057)))

(declare-fun b!5143016 () Bool)

(assert (=> b!5143016 (= e!3207152 tp_is_empty!38083)))

(assert (= (and b!5142677 ((_ is ElementMatch!14467) (regTwo!29447 (regTwo!29446 expr!117)))) b!5143016))

(assert (= (and b!5142677 ((_ is Concat!23312) (regTwo!29447 (regTwo!29446 expr!117)))) b!5143017))

(assert (= (and b!5142677 ((_ is Star!14467) (regTwo!29447 (regTwo!29446 expr!117)))) b!5143018))

(assert (= (and b!5142677 ((_ is Union!14467) (regTwo!29447 (regTwo!29446 expr!117)))) b!5143019))

(declare-fun e!3207153 () Bool)

(assert (=> b!5142668 (= tp!1435798 e!3207153)))

(declare-fun b!5143021 () Bool)

(declare-fun tp!1436061 () Bool)

(declare-fun tp!1436060 () Bool)

(assert (=> b!5143021 (= e!3207153 (and tp!1436061 tp!1436060))))

(declare-fun b!5143023 () Bool)

(declare-fun tp!1436059 () Bool)

(declare-fun tp!1436063 () Bool)

(assert (=> b!5143023 (= e!3207153 (and tp!1436059 tp!1436063))))

(declare-fun b!5143022 () Bool)

(declare-fun tp!1436062 () Bool)

(assert (=> b!5143022 (= e!3207153 tp!1436062)))

(declare-fun b!5143020 () Bool)

(assert (=> b!5143020 (= e!3207153 tp_is_empty!38083)))

(assert (= (and b!5142668 ((_ is ElementMatch!14467) (reg!14796 (reg!14796 expr!117)))) b!5143020))

(assert (= (and b!5142668 ((_ is Concat!23312) (reg!14796 (reg!14796 expr!117)))) b!5143021))

(assert (= (and b!5142668 ((_ is Star!14467) (reg!14796 (reg!14796 expr!117)))) b!5143022))

(assert (= (and b!5142668 ((_ is Union!14467) (reg!14796 (reg!14796 expr!117)))) b!5143023))

(declare-fun e!3207154 () Bool)

(assert (=> b!5142673 (= tp!1435800 e!3207154)))

(declare-fun b!5143025 () Bool)

(declare-fun tp!1436066 () Bool)

(declare-fun tp!1436065 () Bool)

(assert (=> b!5143025 (= e!3207154 (and tp!1436066 tp!1436065))))

(declare-fun b!5143027 () Bool)

(declare-fun tp!1436064 () Bool)

(declare-fun tp!1436068 () Bool)

(assert (=> b!5143027 (= e!3207154 (and tp!1436064 tp!1436068))))

(declare-fun b!5143026 () Bool)

(declare-fun tp!1436067 () Bool)

(assert (=> b!5143026 (= e!3207154 tp!1436067)))

(declare-fun b!5143024 () Bool)

(assert (=> b!5143024 (= e!3207154 tp_is_empty!38083)))

(assert (= (and b!5142673 ((_ is ElementMatch!14467) (regOne!29447 (regOne!29446 expr!117)))) b!5143024))

(assert (= (and b!5142673 ((_ is Concat!23312) (regOne!29447 (regOne!29446 expr!117)))) b!5143025))

(assert (= (and b!5142673 ((_ is Star!14467) (regOne!29447 (regOne!29446 expr!117)))) b!5143026))

(assert (= (and b!5142673 ((_ is Union!14467) (regOne!29447 (regOne!29446 expr!117)))) b!5143027))

(declare-fun e!3207155 () Bool)

(assert (=> b!5142673 (= tp!1435804 e!3207155)))

(declare-fun b!5143029 () Bool)

(declare-fun tp!1436071 () Bool)

(declare-fun tp!1436070 () Bool)

(assert (=> b!5143029 (= e!3207155 (and tp!1436071 tp!1436070))))

(declare-fun b!5143031 () Bool)

(declare-fun tp!1436069 () Bool)

(declare-fun tp!1436073 () Bool)

(assert (=> b!5143031 (= e!3207155 (and tp!1436069 tp!1436073))))

(declare-fun b!5143030 () Bool)

(declare-fun tp!1436072 () Bool)

(assert (=> b!5143030 (= e!3207155 tp!1436072)))

(declare-fun b!5143028 () Bool)

(assert (=> b!5143028 (= e!3207155 tp_is_empty!38083)))

(assert (= (and b!5142673 ((_ is ElementMatch!14467) (regTwo!29447 (regOne!29446 expr!117)))) b!5143028))

(assert (= (and b!5142673 ((_ is Concat!23312) (regTwo!29447 (regOne!29446 expr!117)))) b!5143029))

(assert (= (and b!5142673 ((_ is Star!14467) (regTwo!29447 (regOne!29446 expr!117)))) b!5143030))

(assert (= (and b!5142673 ((_ is Union!14467) (regTwo!29447 (regOne!29446 expr!117)))) b!5143031))

(declare-fun e!3207156 () Bool)

(assert (=> b!5142669 (= tp!1435795 e!3207156)))

(declare-fun b!5143033 () Bool)

(declare-fun tp!1436076 () Bool)

(declare-fun tp!1436075 () Bool)

(assert (=> b!5143033 (= e!3207156 (and tp!1436076 tp!1436075))))

(declare-fun b!5143035 () Bool)

(declare-fun tp!1436074 () Bool)

(declare-fun tp!1436078 () Bool)

(assert (=> b!5143035 (= e!3207156 (and tp!1436074 tp!1436078))))

(declare-fun b!5143034 () Bool)

(declare-fun tp!1436077 () Bool)

(assert (=> b!5143034 (= e!3207156 tp!1436077)))

(declare-fun b!5143032 () Bool)

(assert (=> b!5143032 (= e!3207156 tp_is_empty!38083)))

(assert (= (and b!5142669 ((_ is ElementMatch!14467) (regOne!29447 (reg!14796 expr!117)))) b!5143032))

(assert (= (and b!5142669 ((_ is Concat!23312) (regOne!29447 (reg!14796 expr!117)))) b!5143033))

(assert (= (and b!5142669 ((_ is Star!14467) (regOne!29447 (reg!14796 expr!117)))) b!5143034))

(assert (= (and b!5142669 ((_ is Union!14467) (regOne!29447 (reg!14796 expr!117)))) b!5143035))

(declare-fun e!3207157 () Bool)

(assert (=> b!5142669 (= tp!1435799 e!3207157)))

(declare-fun b!5143037 () Bool)

(declare-fun tp!1436081 () Bool)

(declare-fun tp!1436080 () Bool)

(assert (=> b!5143037 (= e!3207157 (and tp!1436081 tp!1436080))))

(declare-fun b!5143039 () Bool)

(declare-fun tp!1436079 () Bool)

(declare-fun tp!1436083 () Bool)

(assert (=> b!5143039 (= e!3207157 (and tp!1436079 tp!1436083))))

(declare-fun b!5143038 () Bool)

(declare-fun tp!1436082 () Bool)

(assert (=> b!5143038 (= e!3207157 tp!1436082)))

(declare-fun b!5143036 () Bool)

(assert (=> b!5143036 (= e!3207157 tp_is_empty!38083)))

(assert (= (and b!5142669 ((_ is ElementMatch!14467) (regTwo!29447 (reg!14796 expr!117)))) b!5143036))

(assert (= (and b!5142669 ((_ is Concat!23312) (regTwo!29447 (reg!14796 expr!117)))) b!5143037))

(assert (= (and b!5142669 ((_ is Star!14467) (regTwo!29447 (reg!14796 expr!117)))) b!5143038))

(assert (= (and b!5142669 ((_ is Union!14467) (regTwo!29447 (reg!14796 expr!117)))) b!5143039))

(declare-fun b_lambda!200307 () Bool)

(assert (= b_lambda!200303 (or d!1662959 b_lambda!200307)))

(declare-fun bs!1200885 () Bool)

(declare-fun d!1663009 () Bool)

(assert (= bs!1200885 (and d!1663009 d!1662959)))

(assert (=> bs!1200885 (= (dynLambda!23772 lambda!256510 (h!66169 (exprs!4351 ctx!100))) (validRegex!6322 (h!66169 (exprs!4351 ctx!100))))))

(declare-fun m!6205142 () Bool)

(assert (=> bs!1200885 m!6205142))

(assert (=> b!5142719 d!1663009))

(check-sat (not b!5142942) (not b!5142975) (not b!5143021) (not b!5142971) (not b!5142987) (not bm!358980) (not b!5142990) (not b!5143005) (not b!5143013) (not b!5142958) (not b!5142693) (not b!5142961) (not b!5142973) (not d!1662975) (not b!5142991) (not b!5142959) (not b!5142986) (not b!5143038) (not b!5142947) (not b!5142989) (not b!5143015) (not b_lambda!200307) (not bm!359015) (not b!5142977) (not b!5143007) (not bm!359012) (not b!5143010) (not b!5142998) (not b!5142974) (not b!5142953) (not b!5143023) (not b!5142963) (not b!5142950) (not bm!359005) (not b!5143026) (not b!5142786) (not b!5143034) (not b!5142949) (not b!5142997) (not b!5143009) (not b!5142937) (not b!5143031) (not bm!359006) (not bm!359002) (not d!1662995) (not b!5143025) (not b!5143018) tp_is_empty!38083 (not b!5143030) (not b!5142999) (not b!5143019) (not d!1663001) (not b!5142944) (not bm!359018) (not b!5142936) (not b!5142951) (not b!5142957) (not b!5142842) (not b!5143011) (not b!5142983) (not b!5142981) (not b!5143001) (not b!5142816) (not b!5142954) (not b!5143027) (not bm!358979) (not bm!359017) (not b!5142970) (not b!5143006) (not b!5142945) (not b!5142966) (not b!5142985) (not d!1663005) (not b!5142946) (not b!5142962) (not b!5143033) (not b!5143014) (not d!1663003) (not b!5142940) (not b!5143037) (not b!5143017) (not b!5142941) (not b!5142965) (not b!5142994) (not b!5142995) (not bs!1200885) (not b!5142938) (not b!5143029) (not b!5142969) (not b!5142979) (not b!5142720) (not b!5143003) (not bm!359011) (not b!5143022) (not b!5143039) (not b!5143002) (not b!5142993) (not b!5142967) (not b!5143035) (not bm!359014) (not bm!359000) (not b!5142978) (not b!5142982) (not b!5142955))
(check-sat)
