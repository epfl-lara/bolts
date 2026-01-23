; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737970 () Bool)

(assert start!737970)

(declare-fun b!7731490 () Bool)

(assert (=> b!7731490 true))

(assert (=> b!7731490 true))

(declare-fun b!7731484 () Bool)

(declare-fun e!4584993 () Bool)

(declare-fun tp_is_empty!51483 () Bool)

(assert (=> b!7731484 (= e!4584993 tp_is_empty!51483)))

(declare-fun res!3083756 () Bool)

(declare-fun e!4584990 () Bool)

(assert (=> start!737970 (=> (not res!3083756) (not e!4584990))))

(declare-datatypes ((C!41454 0))(
  ( (C!41455 (val!31167 Int)) )
))
(declare-datatypes ((Regex!20564 0))(
  ( (ElementMatch!20564 (c!1425523 C!41454)) (Concat!29409 (regOne!41640 Regex!20564) (regTwo!41640 Regex!20564)) (EmptyExpr!20564) (Star!20564 (reg!20893 Regex!20564)) (EmptyLang!20564) (Union!20564 (regOne!41641 Regex!20564) (regTwo!41641 Regex!20564)) )
))
(declare-fun r!14126 () Regex!20564)

(declare-fun validRegex!10982 (Regex!20564) Bool)

(assert (=> start!737970 (= res!3083756 (validRegex!10982 r!14126))))

(assert (=> start!737970 e!4584990))

(assert (=> start!737970 e!4584993))

(declare-fun e!4584991 () Bool)

(assert (=> start!737970 e!4584991))

(declare-fun b!7731485 () Bool)

(declare-fun tp!2268670 () Bool)

(declare-fun tp!2268672 () Bool)

(assert (=> b!7731485 (= e!4584993 (and tp!2268670 tp!2268672))))

(declare-fun b!7731486 () Bool)

(declare-fun tp!2268674 () Bool)

(assert (=> b!7731486 (= e!4584991 (and tp_is_empty!51483 tp!2268674))))

(declare-fun b!7731487 () Bool)

(declare-fun tp!2268675 () Bool)

(assert (=> b!7731487 (= e!4584993 tp!2268675)))

(declare-fun b!7731488 () Bool)

(declare-fun e!4584992 () Bool)

(assert (=> b!7731488 (= e!4584992 (validRegex!10982 (regOne!41640 r!14126)))))

(declare-fun b!7731489 () Bool)

(declare-fun res!3083758 () Bool)

(assert (=> b!7731489 (=> res!3083758 e!4584992)))

(declare-fun lt!2667157 () Bool)

(assert (=> b!7731489 (= res!3083758 (not lt!2667157))))

(assert (=> b!7731490 (= e!4584990 (not e!4584992))))

(declare-fun res!3083757 () Bool)

(assert (=> b!7731490 (=> res!3083757 e!4584992)))

(declare-datatypes ((List!73411 0))(
  ( (Nil!73287) (Cons!73287 (h!79735 C!41454) (t!388146 List!73411)) )
))
(declare-fun s!9605 () List!73411)

(declare-fun matchR!10056 (Regex!20564 List!73411) Bool)

(assert (=> b!7731490 (= res!3083757 (matchR!10056 r!14126 s!9605))))

(declare-fun lambda!471298 () Int)

(declare-fun Exists!4685 (Int) Bool)

(assert (=> b!7731490 (= lt!2667157 (Exists!4685 lambda!471298))))

(declare-datatypes ((tuple2!69582 0))(
  ( (tuple2!69583 (_1!38094 List!73411) (_2!38094 List!73411)) )
))
(declare-datatypes ((Option!17585 0))(
  ( (None!17584) (Some!17584 (v!54719 tuple2!69582)) )
))
(declare-fun isDefined!14201 (Option!17585) Bool)

(declare-fun findConcatSeparation!3615 (Regex!20564 Regex!20564 List!73411 List!73411 List!73411) Option!17585)

(assert (=> b!7731490 (= lt!2667157 (isDefined!14201 (findConcatSeparation!3615 (regOne!41640 r!14126) (regTwo!41640 r!14126) Nil!73287 s!9605 s!9605)))))

(declare-datatypes ((Unit!168200 0))(
  ( (Unit!168201) )
))
(declare-fun lt!2667158 () Unit!168200)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3373 (Regex!20564 Regex!20564 List!73411) Unit!168200)

(assert (=> b!7731490 (= lt!2667158 (lemmaFindConcatSeparationEquivalentToExists!3373 (regOne!41640 r!14126) (regTwo!41640 r!14126) s!9605))))

(declare-fun b!7731491 () Bool)

(declare-fun res!3083755 () Bool)

(assert (=> b!7731491 (=> (not res!3083755) (not e!4584990))))

(assert (=> b!7731491 (= res!3083755 (and (not (is-EmptyExpr!20564 r!14126)) (not (is-EmptyLang!20564 r!14126)) (not (is-ElementMatch!20564 r!14126)) (not (is-Union!20564 r!14126)) (not (is-Star!20564 r!14126))))))

(declare-fun b!7731492 () Bool)

(declare-fun tp!2268673 () Bool)

(declare-fun tp!2268671 () Bool)

(assert (=> b!7731492 (= e!4584993 (and tp!2268673 tp!2268671))))

(assert (= (and start!737970 res!3083756) b!7731491))

(assert (= (and b!7731491 res!3083755) b!7731490))

(assert (= (and b!7731490 (not res!3083757)) b!7731489))

(assert (= (and b!7731489 (not res!3083758)) b!7731488))

(assert (= (and start!737970 (is-ElementMatch!20564 r!14126)) b!7731484))

(assert (= (and start!737970 (is-Concat!29409 r!14126)) b!7731492))

(assert (= (and start!737970 (is-Star!20564 r!14126)) b!7731487))

(assert (= (and start!737970 (is-Union!20564 r!14126)) b!7731485))

(assert (= (and start!737970 (is-Cons!73287 s!9605)) b!7731486))

(declare-fun m!8205810 () Bool)

(assert (=> start!737970 m!8205810))

(declare-fun m!8205812 () Bool)

(assert (=> b!7731488 m!8205812))

(declare-fun m!8205814 () Bool)

(assert (=> b!7731490 m!8205814))

(declare-fun m!8205816 () Bool)

(assert (=> b!7731490 m!8205816))

(declare-fun m!8205818 () Bool)

(assert (=> b!7731490 m!8205818))

(assert (=> b!7731490 m!8205816))

(declare-fun m!8205820 () Bool)

(assert (=> b!7731490 m!8205820))

(declare-fun m!8205822 () Bool)

(assert (=> b!7731490 m!8205822))

(push 1)

(assert (not b!7731486))

(assert (not b!7731488))

(assert (not b!7731487))

(assert tp_is_empty!51483)

(assert (not b!7731485))

(assert (not start!737970))

(assert (not b!7731492))

(assert (not b!7731490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7731560 () Bool)

(declare-fun e!4585028 () Bool)

(declare-fun nullable!9039 (Regex!20564) Bool)

(assert (=> b!7731560 (= e!4585028 (nullable!9039 r!14126))))

(declare-fun b!7731561 () Bool)

(declare-fun res!3083798 () Bool)

(declare-fun e!4585023 () Bool)

(assert (=> b!7731561 (=> res!3083798 e!4585023)))

(declare-fun e!4585026 () Bool)

(assert (=> b!7731561 (= res!3083798 e!4585026)))

(declare-fun res!3083797 () Bool)

(assert (=> b!7731561 (=> (not res!3083797) (not e!4585026))))

(declare-fun lt!2667167 () Bool)

(assert (=> b!7731561 (= res!3083797 lt!2667167)))

(declare-fun d!2339550 () Bool)

(declare-fun e!4585025 () Bool)

(assert (=> d!2339550 e!4585025))

(declare-fun c!1425531 () Bool)

(assert (=> d!2339550 (= c!1425531 (is-EmptyExpr!20564 r!14126))))

(assert (=> d!2339550 (= lt!2667167 e!4585028)))

(declare-fun c!1425533 () Bool)

(declare-fun isEmpty!41962 (List!73411) Bool)

(assert (=> d!2339550 (= c!1425533 (isEmpty!41962 s!9605))))

(assert (=> d!2339550 (validRegex!10982 r!14126)))

(assert (=> d!2339550 (= (matchR!10056 r!14126 s!9605) lt!2667167)))

(declare-fun b!7731562 () Bool)

(declare-fun res!3083796 () Bool)

(assert (=> b!7731562 (=> res!3083796 e!4585023)))

(assert (=> b!7731562 (= res!3083796 (not (is-ElementMatch!20564 r!14126)))))

(declare-fun e!4585022 () Bool)

(assert (=> b!7731562 (= e!4585022 e!4585023)))

(declare-fun b!7731563 () Bool)

(declare-fun res!3083793 () Bool)

(assert (=> b!7731563 (=> (not res!3083793) (not e!4585026))))

(declare-fun call!715549 () Bool)

(assert (=> b!7731563 (= res!3083793 (not call!715549))))

(declare-fun b!7731564 () Bool)

(declare-fun e!4585027 () Bool)

(declare-fun head!15799 (List!73411) C!41454)

(assert (=> b!7731564 (= e!4585027 (not (= (head!15799 s!9605) (c!1425523 r!14126))))))

(declare-fun b!7731565 () Bool)

(assert (=> b!7731565 (= e!4585022 (not lt!2667167))))

(declare-fun b!7731566 () Bool)

(declare-fun res!3083792 () Bool)

(assert (=> b!7731566 (=> (not res!3083792) (not e!4585026))))

(declare-fun tail!15339 (List!73411) List!73411)

(assert (=> b!7731566 (= res!3083792 (isEmpty!41962 (tail!15339 s!9605)))))

(declare-fun b!7731567 () Bool)

(declare-fun e!4585024 () Bool)

(assert (=> b!7731567 (= e!4585023 e!4585024)))

(declare-fun res!3083795 () Bool)

(assert (=> b!7731567 (=> (not res!3083795) (not e!4585024))))

(assert (=> b!7731567 (= res!3083795 (not lt!2667167))))

(declare-fun b!7731568 () Bool)

(assert (=> b!7731568 (= e!4585026 (= (head!15799 s!9605) (c!1425523 r!14126)))))

(declare-fun b!7731569 () Bool)

(assert (=> b!7731569 (= e!4585025 (= lt!2667167 call!715549))))

(declare-fun b!7731570 () Bool)

(declare-fun res!3083791 () Bool)

(assert (=> b!7731570 (=> res!3083791 e!4585027)))

(assert (=> b!7731570 (= res!3083791 (not (isEmpty!41962 (tail!15339 s!9605))))))

(declare-fun b!7731571 () Bool)

(assert (=> b!7731571 (= e!4585024 e!4585027)))

(declare-fun res!3083794 () Bool)

(assert (=> b!7731571 (=> res!3083794 e!4585027)))

(assert (=> b!7731571 (= res!3083794 call!715549)))

(declare-fun bm!715544 () Bool)

(assert (=> bm!715544 (= call!715549 (isEmpty!41962 s!9605))))

(declare-fun b!7731572 () Bool)

(declare-fun derivativeStep!5999 (Regex!20564 C!41454) Regex!20564)

(assert (=> b!7731572 (= e!4585028 (matchR!10056 (derivativeStep!5999 r!14126 (head!15799 s!9605)) (tail!15339 s!9605)))))

(declare-fun b!7731573 () Bool)

(assert (=> b!7731573 (= e!4585025 e!4585022)))

(declare-fun c!1425532 () Bool)

(assert (=> b!7731573 (= c!1425532 (is-EmptyLang!20564 r!14126))))

(assert (= (and d!2339550 c!1425533) b!7731560))

(assert (= (and d!2339550 (not c!1425533)) b!7731572))

(assert (= (and d!2339550 c!1425531) b!7731569))

(assert (= (and d!2339550 (not c!1425531)) b!7731573))

(assert (= (and b!7731573 c!1425532) b!7731565))

(assert (= (and b!7731573 (not c!1425532)) b!7731562))

(assert (= (and b!7731562 (not res!3083796)) b!7731561))

(assert (= (and b!7731561 res!3083797) b!7731563))

(assert (= (and b!7731563 res!3083793) b!7731566))

(assert (= (and b!7731566 res!3083792) b!7731568))

(assert (= (and b!7731561 (not res!3083798)) b!7731567))

(assert (= (and b!7731567 res!3083795) b!7731571))

(assert (= (and b!7731571 (not res!3083794)) b!7731570))

(assert (= (and b!7731570 (not res!3083791)) b!7731564))

(assert (= (or b!7731569 b!7731563 b!7731571) bm!715544))

(declare-fun m!8205838 () Bool)

(assert (=> d!2339550 m!8205838))

(assert (=> d!2339550 m!8205810))

(declare-fun m!8205840 () Bool)

(assert (=> b!7731560 m!8205840))

(declare-fun m!8205842 () Bool)

(assert (=> b!7731566 m!8205842))

(assert (=> b!7731566 m!8205842))

(declare-fun m!8205844 () Bool)

(assert (=> b!7731566 m!8205844))

(assert (=> b!7731570 m!8205842))

(assert (=> b!7731570 m!8205842))

(assert (=> b!7731570 m!8205844))

(assert (=> bm!715544 m!8205838))

(declare-fun m!8205846 () Bool)

(assert (=> b!7731564 m!8205846))

(assert (=> b!7731572 m!8205846))

(assert (=> b!7731572 m!8205846))

(declare-fun m!8205848 () Bool)

(assert (=> b!7731572 m!8205848))

(assert (=> b!7731572 m!8205842))

(assert (=> b!7731572 m!8205848))

(assert (=> b!7731572 m!8205842))

(declare-fun m!8205850 () Bool)

(assert (=> b!7731572 m!8205850))

(assert (=> b!7731568 m!8205846))

(assert (=> b!7731490 d!2339550))

(declare-fun d!2339554 () Bool)

(declare-fun choose!59314 (Int) Bool)

(assert (=> d!2339554 (= (Exists!4685 lambda!471298) (choose!59314 lambda!471298))))

(declare-fun bs!1963577 () Bool)

(assert (= bs!1963577 d!2339554))

(declare-fun m!8205852 () Bool)

(assert (=> bs!1963577 m!8205852))

(assert (=> b!7731490 d!2339554))

(declare-fun bs!1963578 () Bool)

(declare-fun d!2339556 () Bool)

(assert (= bs!1963578 (and d!2339556 b!7731490)))

(declare-fun lambda!471304 () Int)

(assert (=> bs!1963578 (= lambda!471304 lambda!471298)))

(assert (=> d!2339556 true))

(assert (=> d!2339556 true))

(assert (=> d!2339556 true))

(assert (=> d!2339556 (= (isDefined!14201 (findConcatSeparation!3615 (regOne!41640 r!14126) (regTwo!41640 r!14126) Nil!73287 s!9605 s!9605)) (Exists!4685 lambda!471304))))

(declare-fun lt!2667172 () Unit!168200)

(declare-fun choose!59315 (Regex!20564 Regex!20564 List!73411) Unit!168200)

(assert (=> d!2339556 (= lt!2667172 (choose!59315 (regOne!41640 r!14126) (regTwo!41640 r!14126) s!9605))))

(assert (=> d!2339556 (validRegex!10982 (regOne!41640 r!14126))))

(assert (=> d!2339556 (= (lemmaFindConcatSeparationEquivalentToExists!3373 (regOne!41640 r!14126) (regTwo!41640 r!14126) s!9605) lt!2667172)))

(declare-fun bs!1963579 () Bool)

(assert (= bs!1963579 d!2339556))

(assert (=> bs!1963579 m!8205816))

(assert (=> bs!1963579 m!8205820))

(declare-fun m!8205854 () Bool)

(assert (=> bs!1963579 m!8205854))

(assert (=> bs!1963579 m!8205812))

(declare-fun m!8205856 () Bool)

(assert (=> bs!1963579 m!8205856))

(assert (=> bs!1963579 m!8205816))

(assert (=> b!7731490 d!2339556))

(declare-fun d!2339558 () Bool)

(declare-fun isEmpty!41963 (Option!17585) Bool)

(assert (=> d!2339558 (= (isDefined!14201 (findConcatSeparation!3615 (regOne!41640 r!14126) (regTwo!41640 r!14126) Nil!73287 s!9605 s!9605)) (not (isEmpty!41963 (findConcatSeparation!3615 (regOne!41640 r!14126) (regTwo!41640 r!14126) Nil!73287 s!9605 s!9605))))))

(declare-fun bs!1963580 () Bool)

(assert (= bs!1963580 d!2339558))

(assert (=> bs!1963580 m!8205816))

(declare-fun m!8205858 () Bool)

(assert (=> bs!1963580 m!8205858))

(assert (=> b!7731490 d!2339558))

(declare-fun b!7731638 () Bool)

(declare-fun e!4585063 () Bool)

(declare-fun lt!2667182 () Option!17585)

(assert (=> b!7731638 (= e!4585063 (not (isDefined!14201 lt!2667182)))))

(declare-fun b!7731639 () Bool)

(declare-fun res!3083839 () Bool)

(declare-fun e!4585064 () Bool)

(assert (=> b!7731639 (=> (not res!3083839) (not e!4585064))))

(declare-fun get!26037 (Option!17585) tuple2!69582)

(assert (=> b!7731639 (= res!3083839 (matchR!10056 (regOne!41640 r!14126) (_1!38094 (get!26037 lt!2667182))))))

(declare-fun b!7731640 () Bool)

(declare-fun e!4585062 () Bool)

(assert (=> b!7731640 (= e!4585062 (matchR!10056 (regTwo!41640 r!14126) s!9605))))

(declare-fun b!7731641 () Bool)

(declare-fun e!4585066 () Option!17585)

(assert (=> b!7731641 (= e!4585066 (Some!17584 (tuple2!69583 Nil!73287 s!9605)))))

(declare-fun b!7731642 () Bool)

(declare-fun res!3083837 () Bool)

(assert (=> b!7731642 (=> (not res!3083837) (not e!4585064))))

(assert (=> b!7731642 (= res!3083837 (matchR!10056 (regTwo!41640 r!14126) (_2!38094 (get!26037 lt!2667182))))))

(declare-fun b!7731643 () Bool)

(declare-fun e!4585065 () Option!17585)

(assert (=> b!7731643 (= e!4585066 e!4585065)))

(declare-fun c!1425548 () Bool)

(assert (=> b!7731643 (= c!1425548 (is-Nil!73287 s!9605))))

(declare-fun d!2339560 () Bool)

(assert (=> d!2339560 e!4585063))

(declare-fun res!3083841 () Bool)

(assert (=> d!2339560 (=> res!3083841 e!4585063)))

(assert (=> d!2339560 (= res!3083841 e!4585064)))

(declare-fun res!3083840 () Bool)

(assert (=> d!2339560 (=> (not res!3083840) (not e!4585064))))

(assert (=> d!2339560 (= res!3083840 (isDefined!14201 lt!2667182))))

(assert (=> d!2339560 (= lt!2667182 e!4585066)))

(declare-fun c!1425547 () Bool)

(assert (=> d!2339560 (= c!1425547 e!4585062)))

(declare-fun res!3083838 () Bool)

(assert (=> d!2339560 (=> (not res!3083838) (not e!4585062))))

(assert (=> d!2339560 (= res!3083838 (matchR!10056 (regOne!41640 r!14126) Nil!73287))))

(assert (=> d!2339560 (validRegex!10982 (regOne!41640 r!14126))))

(assert (=> d!2339560 (= (findConcatSeparation!3615 (regOne!41640 r!14126) (regTwo!41640 r!14126) Nil!73287 s!9605 s!9605) lt!2667182)))

(declare-fun b!7731644 () Bool)

(declare-fun lt!2667180 () Unit!168200)

(declare-fun lt!2667181 () Unit!168200)

(assert (=> b!7731644 (= lt!2667180 lt!2667181)))

(declare-fun ++!17765 (List!73411 List!73411) List!73411)

(assert (=> b!7731644 (= (++!17765 (++!17765 Nil!73287 (Cons!73287 (h!79735 s!9605) Nil!73287)) (t!388146 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3316 (List!73411 C!41454 List!73411 List!73411) Unit!168200)

(assert (=> b!7731644 (= lt!2667181 (lemmaMoveElementToOtherListKeepsConcatEq!3316 Nil!73287 (h!79735 s!9605) (t!388146 s!9605) s!9605))))

(assert (=> b!7731644 (= e!4585065 (findConcatSeparation!3615 (regOne!41640 r!14126) (regTwo!41640 r!14126) (++!17765 Nil!73287 (Cons!73287 (h!79735 s!9605) Nil!73287)) (t!388146 s!9605) s!9605))))

(declare-fun b!7731645 () Bool)

(assert (=> b!7731645 (= e!4585064 (= (++!17765 (_1!38094 (get!26037 lt!2667182)) (_2!38094 (get!26037 lt!2667182))) s!9605))))

(declare-fun b!7731646 () Bool)

(assert (=> b!7731646 (= e!4585065 None!17584)))

(assert (= (and d!2339560 res!3083838) b!7731640))

(assert (= (and d!2339560 c!1425547) b!7731641))

(assert (= (and d!2339560 (not c!1425547)) b!7731643))

(assert (= (and b!7731643 c!1425548) b!7731646))

(assert (= (and b!7731643 (not c!1425548)) b!7731644))

(assert (= (and d!2339560 res!3083840) b!7731639))

(assert (= (and b!7731639 res!3083839) b!7731642))

(assert (= (and b!7731642 res!3083837) b!7731645))

(assert (= (and d!2339560 (not res!3083841)) b!7731638))

(declare-fun m!8205874 () Bool)

(assert (=> b!7731640 m!8205874))

(declare-fun m!8205876 () Bool)

(assert (=> b!7731645 m!8205876))

(declare-fun m!8205878 () Bool)

(assert (=> b!7731645 m!8205878))

(assert (=> b!7731642 m!8205876))

(declare-fun m!8205880 () Bool)

(assert (=> b!7731642 m!8205880))

(assert (=> b!7731639 m!8205876))

(declare-fun m!8205882 () Bool)

(assert (=> b!7731639 m!8205882))

(declare-fun m!8205884 () Bool)

(assert (=> b!7731638 m!8205884))

(assert (=> d!2339560 m!8205884))

(declare-fun m!8205886 () Bool)

(assert (=> d!2339560 m!8205886))

(assert (=> d!2339560 m!8205812))

(declare-fun m!8205888 () Bool)

(assert (=> b!7731644 m!8205888))

(assert (=> b!7731644 m!8205888))

(declare-fun m!8205890 () Bool)

(assert (=> b!7731644 m!8205890))

(declare-fun m!8205892 () Bool)

(assert (=> b!7731644 m!8205892))

(assert (=> b!7731644 m!8205888))

(declare-fun m!8205894 () Bool)

(assert (=> b!7731644 m!8205894))

(assert (=> b!7731490 d!2339560))

(declare-fun b!7731665 () Bool)

(declare-fun e!4585081 () Bool)

(declare-fun call!715561 () Bool)

(assert (=> b!7731665 (= e!4585081 call!715561)))

(declare-fun d!2339564 () Bool)

(declare-fun res!3083854 () Bool)

(declare-fun e!4585085 () Bool)

(assert (=> d!2339564 (=> res!3083854 e!4585085)))

(assert (=> d!2339564 (= res!3083854 (is-ElementMatch!20564 r!14126))))

(assert (=> d!2339564 (= (validRegex!10982 r!14126) e!4585085)))

(declare-fun c!1425554 () Bool)

(declare-fun bm!715554 () Bool)

(declare-fun c!1425553 () Bool)

(declare-fun call!715559 () Bool)

(assert (=> bm!715554 (= call!715559 (validRegex!10982 (ite c!1425554 (reg!20893 r!14126) (ite c!1425553 (regOne!41641 r!14126) (regOne!41640 r!14126)))))))

(declare-fun b!7731666 () Bool)

(declare-fun res!3083852 () Bool)

(assert (=> b!7731666 (=> (not res!3083852) (not e!4585081))))

(declare-fun call!715560 () Bool)

(assert (=> b!7731666 (= res!3083852 call!715560)))

(declare-fun e!4585086 () Bool)

(assert (=> b!7731666 (= e!4585086 e!4585081)))

(declare-fun b!7731667 () Bool)

(declare-fun e!4585083 () Bool)

(declare-fun e!4585087 () Bool)

(assert (=> b!7731667 (= e!4585083 e!4585087)))

(declare-fun res!3083855 () Bool)

(assert (=> b!7731667 (=> (not res!3083855) (not e!4585087))))

(assert (=> b!7731667 (= res!3083855 call!715560)))

(declare-fun b!7731668 () Bool)

(assert (=> b!7731668 (= e!4585087 call!715561)))

(declare-fun bm!715555 () Bool)

(assert (=> bm!715555 (= call!715560 call!715559)))

(declare-fun b!7731669 () Bool)

(declare-fun e!4585084 () Bool)

(assert (=> b!7731669 (= e!4585085 e!4585084)))

(assert (=> b!7731669 (= c!1425554 (is-Star!20564 r!14126))))

(declare-fun b!7731670 () Bool)

(assert (=> b!7731670 (= e!4585084 e!4585086)))

(assert (=> b!7731670 (= c!1425553 (is-Union!20564 r!14126))))

(declare-fun b!7731671 () Bool)

(declare-fun res!3083853 () Bool)

(assert (=> b!7731671 (=> res!3083853 e!4585083)))

(assert (=> b!7731671 (= res!3083853 (not (is-Concat!29409 r!14126)))))

(assert (=> b!7731671 (= e!4585086 e!4585083)))

(declare-fun bm!715556 () Bool)

(assert (=> bm!715556 (= call!715561 (validRegex!10982 (ite c!1425553 (regTwo!41641 r!14126) (regTwo!41640 r!14126))))))

(declare-fun b!7731672 () Bool)

(declare-fun e!4585082 () Bool)

(assert (=> b!7731672 (= e!4585084 e!4585082)))

(declare-fun res!3083856 () Bool)

(assert (=> b!7731672 (= res!3083856 (not (nullable!9039 (reg!20893 r!14126))))))

(assert (=> b!7731672 (=> (not res!3083856) (not e!4585082))))

(declare-fun b!7731673 () Bool)

(assert (=> b!7731673 (= e!4585082 call!715559)))

(assert (= (and d!2339564 (not res!3083854)) b!7731669))

(assert (= (and b!7731669 c!1425554) b!7731672))

(assert (= (and b!7731669 (not c!1425554)) b!7731670))

(assert (= (and b!7731672 res!3083856) b!7731673))

(assert (= (and b!7731670 c!1425553) b!7731666))

(assert (= (and b!7731670 (not c!1425553)) b!7731671))

(assert (= (and b!7731666 res!3083852) b!7731665))

(assert (= (and b!7731671 (not res!3083853)) b!7731667))

(assert (= (and b!7731667 res!3083855) b!7731668))

(assert (= (or b!7731666 b!7731667) bm!715555))

(assert (= (or b!7731665 b!7731668) bm!715556))

(assert (= (or b!7731673 bm!715555) bm!715554))

(declare-fun m!8205896 () Bool)

(assert (=> bm!715554 m!8205896))

(declare-fun m!8205898 () Bool)

(assert (=> bm!715556 m!8205898))

(declare-fun m!8205900 () Bool)

(assert (=> b!7731672 m!8205900))

(assert (=> start!737970 d!2339564))

(declare-fun b!7731674 () Bool)

(declare-fun e!4585088 () Bool)

(declare-fun call!715564 () Bool)

(assert (=> b!7731674 (= e!4585088 call!715564)))

(declare-fun d!2339566 () Bool)

(declare-fun res!3083859 () Bool)

(declare-fun e!4585092 () Bool)

(assert (=> d!2339566 (=> res!3083859 e!4585092)))

(assert (=> d!2339566 (= res!3083859 (is-ElementMatch!20564 (regOne!41640 r!14126)))))

(assert (=> d!2339566 (= (validRegex!10982 (regOne!41640 r!14126)) e!4585092)))

(declare-fun bm!715557 () Bool)

(declare-fun c!1425556 () Bool)

(declare-fun c!1425555 () Bool)

(declare-fun call!715562 () Bool)

(assert (=> bm!715557 (= call!715562 (validRegex!10982 (ite c!1425556 (reg!20893 (regOne!41640 r!14126)) (ite c!1425555 (regOne!41641 (regOne!41640 r!14126)) (regOne!41640 (regOne!41640 r!14126))))))))

(declare-fun b!7731675 () Bool)

(declare-fun res!3083857 () Bool)

(assert (=> b!7731675 (=> (not res!3083857) (not e!4585088))))

(declare-fun call!715563 () Bool)

(assert (=> b!7731675 (= res!3083857 call!715563)))

(declare-fun e!4585093 () Bool)

(assert (=> b!7731675 (= e!4585093 e!4585088)))

(declare-fun b!7731676 () Bool)

(declare-fun e!4585090 () Bool)

(declare-fun e!4585094 () Bool)

(assert (=> b!7731676 (= e!4585090 e!4585094)))

(declare-fun res!3083860 () Bool)

(assert (=> b!7731676 (=> (not res!3083860) (not e!4585094))))

(assert (=> b!7731676 (= res!3083860 call!715563)))

(declare-fun b!7731677 () Bool)

(assert (=> b!7731677 (= e!4585094 call!715564)))

(declare-fun bm!715558 () Bool)

(assert (=> bm!715558 (= call!715563 call!715562)))

(declare-fun b!7731678 () Bool)

(declare-fun e!4585091 () Bool)

(assert (=> b!7731678 (= e!4585092 e!4585091)))

(assert (=> b!7731678 (= c!1425556 (is-Star!20564 (regOne!41640 r!14126)))))

(declare-fun b!7731679 () Bool)

(assert (=> b!7731679 (= e!4585091 e!4585093)))

(assert (=> b!7731679 (= c!1425555 (is-Union!20564 (regOne!41640 r!14126)))))

(declare-fun b!7731680 () Bool)

(declare-fun res!3083858 () Bool)

(assert (=> b!7731680 (=> res!3083858 e!4585090)))

(assert (=> b!7731680 (= res!3083858 (not (is-Concat!29409 (regOne!41640 r!14126))))))

(assert (=> b!7731680 (= e!4585093 e!4585090)))

(declare-fun bm!715559 () Bool)

(assert (=> bm!715559 (= call!715564 (validRegex!10982 (ite c!1425555 (regTwo!41641 (regOne!41640 r!14126)) (regTwo!41640 (regOne!41640 r!14126)))))))

(declare-fun b!7731681 () Bool)

(declare-fun e!4585089 () Bool)

(assert (=> b!7731681 (= e!4585091 e!4585089)))

(declare-fun res!3083861 () Bool)

(assert (=> b!7731681 (= res!3083861 (not (nullable!9039 (reg!20893 (regOne!41640 r!14126)))))))

(assert (=> b!7731681 (=> (not res!3083861) (not e!4585089))))

(declare-fun b!7731682 () Bool)

(assert (=> b!7731682 (= e!4585089 call!715562)))

(assert (= (and d!2339566 (not res!3083859)) b!7731678))

(assert (= (and b!7731678 c!1425556) b!7731681))

(assert (= (and b!7731678 (not c!1425556)) b!7731679))

(assert (= (and b!7731681 res!3083861) b!7731682))

(assert (= (and b!7731679 c!1425555) b!7731675))

(assert (= (and b!7731679 (not c!1425555)) b!7731680))

(assert (= (and b!7731675 res!3083857) b!7731674))

(assert (= (and b!7731680 (not res!3083858)) b!7731676))

(assert (= (and b!7731676 res!3083860) b!7731677))

(assert (= (or b!7731675 b!7731676) bm!715558))

(assert (= (or b!7731674 b!7731677) bm!715559))

(assert (= (or b!7731682 bm!715558) bm!715557))

(declare-fun m!8205902 () Bool)

(assert (=> bm!715557 m!8205902))

(declare-fun m!8205904 () Bool)

(assert (=> bm!715559 m!8205904))

(declare-fun m!8205906 () Bool)

(assert (=> b!7731681 m!8205906))

(assert (=> b!7731488 d!2339566))

(declare-fun b!7731695 () Bool)

(declare-fun e!4585097 () Bool)

(declare-fun tp!2268707 () Bool)

(assert (=> b!7731695 (= e!4585097 tp!2268707)))

(declare-fun b!7731693 () Bool)

(assert (=> b!7731693 (= e!4585097 tp_is_empty!51483)))

(declare-fun b!7731694 () Bool)

(declare-fun tp!2268708 () Bool)

(declare-fun tp!2268705 () Bool)

(assert (=> b!7731694 (= e!4585097 (and tp!2268708 tp!2268705))))

(assert (=> b!7731485 (= tp!2268670 e!4585097)))

(declare-fun b!7731696 () Bool)

(declare-fun tp!2268706 () Bool)

(declare-fun tp!2268704 () Bool)

(assert (=> b!7731696 (= e!4585097 (and tp!2268706 tp!2268704))))

(assert (= (and b!7731485 (is-ElementMatch!20564 (regOne!41641 r!14126))) b!7731693))

(assert (= (and b!7731485 (is-Concat!29409 (regOne!41641 r!14126))) b!7731694))

(assert (= (and b!7731485 (is-Star!20564 (regOne!41641 r!14126))) b!7731695))

(assert (= (and b!7731485 (is-Union!20564 (regOne!41641 r!14126))) b!7731696))

(declare-fun b!7731699 () Bool)

(declare-fun e!4585098 () Bool)

(declare-fun tp!2268712 () Bool)

(assert (=> b!7731699 (= e!4585098 tp!2268712)))

(declare-fun b!7731697 () Bool)

(assert (=> b!7731697 (= e!4585098 tp_is_empty!51483)))

(declare-fun b!7731698 () Bool)

(declare-fun tp!2268713 () Bool)

(declare-fun tp!2268710 () Bool)

(assert (=> b!7731698 (= e!4585098 (and tp!2268713 tp!2268710))))

(assert (=> b!7731485 (= tp!2268672 e!4585098)))

(declare-fun b!7731700 () Bool)

(declare-fun tp!2268711 () Bool)

(declare-fun tp!2268709 () Bool)

(assert (=> b!7731700 (= e!4585098 (and tp!2268711 tp!2268709))))

(assert (= (and b!7731485 (is-ElementMatch!20564 (regTwo!41641 r!14126))) b!7731697))

(assert (= (and b!7731485 (is-Concat!29409 (regTwo!41641 r!14126))) b!7731698))

(assert (= (and b!7731485 (is-Star!20564 (regTwo!41641 r!14126))) b!7731699))

(assert (= (and b!7731485 (is-Union!20564 (regTwo!41641 r!14126))) b!7731700))

(declare-fun b!7731705 () Bool)

(declare-fun e!4585101 () Bool)

(declare-fun tp!2268716 () Bool)

(assert (=> b!7731705 (= e!4585101 (and tp_is_empty!51483 tp!2268716))))

(assert (=> b!7731486 (= tp!2268674 e!4585101)))

(assert (= (and b!7731486 (is-Cons!73287 (t!388146 s!9605))) b!7731705))

(declare-fun b!7731708 () Bool)

(declare-fun e!4585102 () Bool)

(declare-fun tp!2268720 () Bool)

(assert (=> b!7731708 (= e!4585102 tp!2268720)))

(declare-fun b!7731706 () Bool)

(assert (=> b!7731706 (= e!4585102 tp_is_empty!51483)))

(declare-fun b!7731707 () Bool)

(declare-fun tp!2268721 () Bool)

(declare-fun tp!2268718 () Bool)

(assert (=> b!7731707 (= e!4585102 (and tp!2268721 tp!2268718))))

(assert (=> b!7731487 (= tp!2268675 e!4585102)))

(declare-fun b!7731709 () Bool)

(declare-fun tp!2268719 () Bool)

(declare-fun tp!2268717 () Bool)

(assert (=> b!7731709 (= e!4585102 (and tp!2268719 tp!2268717))))

(assert (= (and b!7731487 (is-ElementMatch!20564 (reg!20893 r!14126))) b!7731706))

(assert (= (and b!7731487 (is-Concat!29409 (reg!20893 r!14126))) b!7731707))

(assert (= (and b!7731487 (is-Star!20564 (reg!20893 r!14126))) b!7731708))

(assert (= (and b!7731487 (is-Union!20564 (reg!20893 r!14126))) b!7731709))

(declare-fun b!7731712 () Bool)

(declare-fun e!4585103 () Bool)

(declare-fun tp!2268725 () Bool)

(assert (=> b!7731712 (= e!4585103 tp!2268725)))

(declare-fun b!7731710 () Bool)

(assert (=> b!7731710 (= e!4585103 tp_is_empty!51483)))

(declare-fun b!7731711 () Bool)

(declare-fun tp!2268726 () Bool)

(declare-fun tp!2268723 () Bool)

(assert (=> b!7731711 (= e!4585103 (and tp!2268726 tp!2268723))))

(assert (=> b!7731492 (= tp!2268673 e!4585103)))

(declare-fun b!7731713 () Bool)

(declare-fun tp!2268724 () Bool)

(declare-fun tp!2268722 () Bool)

(assert (=> b!7731713 (= e!4585103 (and tp!2268724 tp!2268722))))

(assert (= (and b!7731492 (is-ElementMatch!20564 (regOne!41640 r!14126))) b!7731710))

(assert (= (and b!7731492 (is-Concat!29409 (regOne!41640 r!14126))) b!7731711))

(assert (= (and b!7731492 (is-Star!20564 (regOne!41640 r!14126))) b!7731712))

(assert (= (and b!7731492 (is-Union!20564 (regOne!41640 r!14126))) b!7731713))

(declare-fun b!7731716 () Bool)

(declare-fun e!4585104 () Bool)

(declare-fun tp!2268730 () Bool)

(assert (=> b!7731716 (= e!4585104 tp!2268730)))

(declare-fun b!7731714 () Bool)

(assert (=> b!7731714 (= e!4585104 tp_is_empty!51483)))

(declare-fun b!7731715 () Bool)

(declare-fun tp!2268731 () Bool)

(declare-fun tp!2268728 () Bool)

(assert (=> b!7731715 (= e!4585104 (and tp!2268731 tp!2268728))))

(assert (=> b!7731492 (= tp!2268671 e!4585104)))

(declare-fun b!7731717 () Bool)

(declare-fun tp!2268729 () Bool)

(declare-fun tp!2268727 () Bool)

(assert (=> b!7731717 (= e!4585104 (and tp!2268729 tp!2268727))))

(assert (= (and b!7731492 (is-ElementMatch!20564 (regTwo!41640 r!14126))) b!7731714))

(assert (= (and b!7731492 (is-Concat!29409 (regTwo!41640 r!14126))) b!7731715))

(assert (= (and b!7731492 (is-Star!20564 (regTwo!41640 r!14126))) b!7731716))

(assert (= (and b!7731492 (is-Union!20564 (regTwo!41640 r!14126))) b!7731717))

(push 1)

(assert (not bm!715544))

(assert (not b!7731644))

(assert (not b!7731694))

(assert (not b!7731700))

(assert (not b!7731715))

(assert (not d!2339560))

(assert (not b!7731699))

(assert (not b!7731717))

(assert (not b!7731711))

(assert (not b!7731708))

(assert (not b!7731705))

(assert (not b!7731713))

(assert (not b!7731639))

(assert (not b!7731698))

(assert (not b!7731707))

(assert (not b!7731642))

(assert (not b!7731638))

(assert (not b!7731695))

(assert (not b!7731696))

(assert (not bm!715554))

(assert (not b!7731564))

(assert (not b!7731645))

(assert (not bm!715557))

(assert (not b!7731716))

(assert (not d!2339558))

(assert (not b!7731560))

(assert (not bm!715559))

(assert (not d!2339554))

(assert (not b!7731566))

(assert tp_is_empty!51483)

(assert (not b!7731709))

(assert (not b!7731570))

(assert (not b!7731640))

(assert (not b!7731681))

(assert (not b!7731572))

(assert (not b!7731712))

(assert (not bm!715556))

(assert (not d!2339550))

(assert (not d!2339556))

(assert (not b!7731568))

(assert (not b!7731672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

