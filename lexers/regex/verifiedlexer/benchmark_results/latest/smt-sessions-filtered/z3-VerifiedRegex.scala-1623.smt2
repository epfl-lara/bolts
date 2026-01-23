; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83110 () Bool)

(assert start!83110)

(declare-fun res!421410 () Bool)

(declare-fun e!602821 () Bool)

(assert (=> start!83110 (=> (not res!421410) (not e!602821))))

(declare-datatypes ((C!5580 0))(
  ( (C!5581 (val!3038 Int)) )
))
(declare-datatypes ((Regex!2505 0))(
  ( (ElementMatch!2505 (c!150450 C!5580)) (Concat!4338 (regOne!5522 Regex!2505) (regTwo!5522 Regex!2505)) (EmptyExpr!2505) (Star!2505 (reg!2834 Regex!2505)) (EmptyLang!2505) (Union!2505 (regOne!5523 Regex!2505) (regTwo!5523 Regex!2505)) )
))
(declare-fun r!15766 () Regex!2505)

(declare-fun validRegex!974 (Regex!2505) Bool)

(assert (=> start!83110 (= res!421410 (validRegex!974 r!15766))))

(assert (=> start!83110 e!602821))

(declare-fun e!602818 () Bool)

(assert (=> start!83110 e!602818))

(declare-fun e!602819 () Bool)

(assert (=> start!83110 e!602819))

(declare-fun b!926791 () Bool)

(declare-fun tp!288011 () Bool)

(declare-fun tp!288008 () Bool)

(assert (=> b!926791 (= e!602818 (and tp!288011 tp!288008))))

(declare-fun b!926792 () Bool)

(declare-fun tp_is_empty!4653 () Bool)

(declare-fun tp!288009 () Bool)

(assert (=> b!926792 (= e!602819 (and tp_is_empty!4653 tp!288009))))

(declare-fun b!926793 () Bool)

(assert (=> b!926793 (= e!602818 tp_is_empty!4653)))

(declare-fun b!926794 () Bool)

(declare-fun e!602820 () Bool)

(assert (=> b!926794 (= e!602821 (not e!602820))))

(declare-fun res!421409 () Bool)

(assert (=> b!926794 (=> res!421409 e!602820)))

(declare-fun lt!339790 () Bool)

(get-info :version)

(assert (=> b!926794 (= res!421409 (or lt!339790 (and ((_ is Concat!4338) r!15766) ((_ is EmptyExpr!2505) (regOne!5522 r!15766))) (and ((_ is Concat!4338) r!15766) ((_ is EmptyExpr!2505) (regTwo!5522 r!15766))) ((_ is Concat!4338) r!15766) (not ((_ is Union!2505) r!15766))))))

(declare-datatypes ((List!9735 0))(
  ( (Nil!9719) (Cons!9719 (h!15120 C!5580) (t!100781 List!9735)) )
))
(declare-fun s!10566 () List!9735)

(declare-fun matchRSpec!306 (Regex!2505 List!9735) Bool)

(assert (=> b!926794 (= lt!339790 (matchRSpec!306 r!15766 s!10566))))

(declare-fun matchR!1043 (Regex!2505 List!9735) Bool)

(assert (=> b!926794 (= lt!339790 (matchR!1043 r!15766 s!10566))))

(declare-datatypes ((Unit!14629 0))(
  ( (Unit!14630) )
))
(declare-fun lt!339791 () Unit!14629)

(declare-fun mainMatchTheorem!306 (Regex!2505 List!9735) Unit!14629)

(assert (=> b!926794 (= lt!339791 (mainMatchTheorem!306 r!15766 s!10566))))

(declare-fun b!926795 () Bool)

(declare-fun tp!288010 () Bool)

(assert (=> b!926795 (= e!602818 tp!288010)))

(declare-fun b!926796 () Bool)

(declare-fun tp!288012 () Bool)

(declare-fun tp!288007 () Bool)

(assert (=> b!926796 (= e!602818 (and tp!288012 tp!288007))))

(declare-fun b!926797 () Bool)

(assert (=> b!926797 (= e!602820 (validRegex!974 (regOne!5523 r!15766)))))

(assert (= (and start!83110 res!421410) b!926794))

(assert (= (and b!926794 (not res!421409)) b!926797))

(assert (= (and start!83110 ((_ is ElementMatch!2505) r!15766)) b!926793))

(assert (= (and start!83110 ((_ is Concat!4338) r!15766)) b!926791))

(assert (= (and start!83110 ((_ is Star!2505) r!15766)) b!926795))

(assert (= (and start!83110 ((_ is Union!2505) r!15766)) b!926796))

(assert (= (and start!83110 ((_ is Cons!9719) s!10566)) b!926792))

(declare-fun m!1151715 () Bool)

(assert (=> start!83110 m!1151715))

(declare-fun m!1151717 () Bool)

(assert (=> b!926794 m!1151717))

(declare-fun m!1151719 () Bool)

(assert (=> b!926794 m!1151719))

(declare-fun m!1151721 () Bool)

(assert (=> b!926794 m!1151721))

(declare-fun m!1151723 () Bool)

(assert (=> b!926797 m!1151723))

(check-sat (not b!926796) (not b!926794) (not b!926797) tp_is_empty!4653 (not b!926795) (not start!83110) (not b!926792) (not b!926791))
(check-sat)
(get-model)

(declare-fun c!150461 () Bool)

(declare-fun call!56729 () Bool)

(declare-fun c!150462 () Bool)

(declare-fun bm!56722 () Bool)

(assert (=> bm!56722 (= call!56729 (validRegex!974 (ite c!150462 (reg!2834 (regOne!5523 r!15766)) (ite c!150461 (regTwo!5523 (regOne!5523 r!15766)) (regTwo!5522 (regOne!5523 r!15766))))))))

(declare-fun b!926843 () Bool)

(declare-fun e!602858 () Bool)

(declare-fun e!602861 () Bool)

(assert (=> b!926843 (= e!602858 e!602861)))

(assert (=> b!926843 (= c!150461 ((_ is Union!2505) (regOne!5523 r!15766)))))

(declare-fun bm!56723 () Bool)

(declare-fun call!56727 () Bool)

(assert (=> bm!56723 (= call!56727 (validRegex!974 (ite c!150461 (regOne!5523 (regOne!5523 r!15766)) (regOne!5522 (regOne!5523 r!15766)))))))

(declare-fun b!926844 () Bool)

(declare-fun e!602860 () Bool)

(declare-fun call!56728 () Bool)

(assert (=> b!926844 (= e!602860 call!56728)))

(declare-fun b!926845 () Bool)

(declare-fun res!421440 () Bool)

(assert (=> b!926845 (=> (not res!421440) (not e!602860))))

(assert (=> b!926845 (= res!421440 call!56727)))

(assert (=> b!926845 (= e!602861 e!602860)))

(declare-fun b!926846 () Bool)

(declare-fun res!421439 () Bool)

(declare-fun e!602863 () Bool)

(assert (=> b!926846 (=> res!421439 e!602863)))

(assert (=> b!926846 (= res!421439 (not ((_ is Concat!4338) (regOne!5523 r!15766))))))

(assert (=> b!926846 (= e!602861 e!602863)))

(declare-fun b!926847 () Bool)

(declare-fun e!602857 () Bool)

(assert (=> b!926847 (= e!602857 call!56729)))

(declare-fun d!281138 () Bool)

(declare-fun res!421437 () Bool)

(declare-fun e!602859 () Bool)

(assert (=> d!281138 (=> res!421437 e!602859)))

(assert (=> d!281138 (= res!421437 ((_ is ElementMatch!2505) (regOne!5523 r!15766)))))

(assert (=> d!281138 (= (validRegex!974 (regOne!5523 r!15766)) e!602859)))

(declare-fun b!926848 () Bool)

(assert (=> b!926848 (= e!602859 e!602858)))

(assert (=> b!926848 (= c!150462 ((_ is Star!2505) (regOne!5523 r!15766)))))

(declare-fun b!926849 () Bool)

(assert (=> b!926849 (= e!602858 e!602857)))

(declare-fun res!421436 () Bool)

(declare-fun nullable!705 (Regex!2505) Bool)

(assert (=> b!926849 (= res!421436 (not (nullable!705 (reg!2834 (regOne!5523 r!15766)))))))

(assert (=> b!926849 (=> (not res!421436) (not e!602857))))

(declare-fun b!926850 () Bool)

(declare-fun e!602862 () Bool)

(assert (=> b!926850 (= e!602863 e!602862)))

(declare-fun res!421438 () Bool)

(assert (=> b!926850 (=> (not res!421438) (not e!602862))))

(assert (=> b!926850 (= res!421438 call!56727)))

(declare-fun b!926851 () Bool)

(assert (=> b!926851 (= e!602862 call!56728)))

(declare-fun bm!56724 () Bool)

(assert (=> bm!56724 (= call!56728 call!56729)))

(assert (= (and d!281138 (not res!421437)) b!926848))

(assert (= (and b!926848 c!150462) b!926849))

(assert (= (and b!926848 (not c!150462)) b!926843))

(assert (= (and b!926849 res!421436) b!926847))

(assert (= (and b!926843 c!150461) b!926845))

(assert (= (and b!926843 (not c!150461)) b!926846))

(assert (= (and b!926845 res!421440) b!926844))

(assert (= (and b!926846 (not res!421439)) b!926850))

(assert (= (and b!926850 res!421438) b!926851))

(assert (= (or b!926844 b!926851) bm!56724))

(assert (= (or b!926845 b!926850) bm!56723))

(assert (= (or b!926847 bm!56724) bm!56722))

(declare-fun m!1151729 () Bool)

(assert (=> bm!56722 m!1151729))

(declare-fun m!1151733 () Bool)

(assert (=> bm!56723 m!1151733))

(declare-fun m!1151735 () Bool)

(assert (=> b!926849 m!1151735))

(assert (=> b!926797 d!281138))

(declare-fun bm!56725 () Bool)

(declare-fun c!150464 () Bool)

(declare-fun call!56732 () Bool)

(declare-fun c!150463 () Bool)

(assert (=> bm!56725 (= call!56732 (validRegex!974 (ite c!150464 (reg!2834 r!15766) (ite c!150463 (regTwo!5523 r!15766) (regTwo!5522 r!15766)))))))

(declare-fun b!926852 () Bool)

(declare-fun e!602865 () Bool)

(declare-fun e!602868 () Bool)

(assert (=> b!926852 (= e!602865 e!602868)))

(assert (=> b!926852 (= c!150463 ((_ is Union!2505) r!15766))))

(declare-fun bm!56726 () Bool)

(declare-fun call!56730 () Bool)

(assert (=> bm!56726 (= call!56730 (validRegex!974 (ite c!150463 (regOne!5523 r!15766) (regOne!5522 r!15766))))))

(declare-fun b!926853 () Bool)

(declare-fun e!602867 () Bool)

(declare-fun call!56731 () Bool)

(assert (=> b!926853 (= e!602867 call!56731)))

(declare-fun b!926854 () Bool)

(declare-fun res!421445 () Bool)

(assert (=> b!926854 (=> (not res!421445) (not e!602867))))

(assert (=> b!926854 (= res!421445 call!56730)))

(assert (=> b!926854 (= e!602868 e!602867)))

(declare-fun b!926855 () Bool)

(declare-fun res!421444 () Bool)

(declare-fun e!602870 () Bool)

(assert (=> b!926855 (=> res!421444 e!602870)))

(assert (=> b!926855 (= res!421444 (not ((_ is Concat!4338) r!15766)))))

(assert (=> b!926855 (= e!602868 e!602870)))

(declare-fun b!926856 () Bool)

(declare-fun e!602864 () Bool)

(assert (=> b!926856 (= e!602864 call!56732)))

(declare-fun d!281142 () Bool)

(declare-fun res!421442 () Bool)

(declare-fun e!602866 () Bool)

(assert (=> d!281142 (=> res!421442 e!602866)))

(assert (=> d!281142 (= res!421442 ((_ is ElementMatch!2505) r!15766))))

(assert (=> d!281142 (= (validRegex!974 r!15766) e!602866)))

(declare-fun b!926857 () Bool)

(assert (=> b!926857 (= e!602866 e!602865)))

(assert (=> b!926857 (= c!150464 ((_ is Star!2505) r!15766))))

(declare-fun b!926858 () Bool)

(assert (=> b!926858 (= e!602865 e!602864)))

(declare-fun res!421441 () Bool)

(assert (=> b!926858 (= res!421441 (not (nullable!705 (reg!2834 r!15766))))))

(assert (=> b!926858 (=> (not res!421441) (not e!602864))))

(declare-fun b!926859 () Bool)

(declare-fun e!602869 () Bool)

(assert (=> b!926859 (= e!602870 e!602869)))

(declare-fun res!421443 () Bool)

(assert (=> b!926859 (=> (not res!421443) (not e!602869))))

(assert (=> b!926859 (= res!421443 call!56730)))

(declare-fun b!926860 () Bool)

(assert (=> b!926860 (= e!602869 call!56731)))

(declare-fun bm!56727 () Bool)

(assert (=> bm!56727 (= call!56731 call!56732)))

(assert (= (and d!281142 (not res!421442)) b!926857))

(assert (= (and b!926857 c!150464) b!926858))

(assert (= (and b!926857 (not c!150464)) b!926852))

(assert (= (and b!926858 res!421441) b!926856))

(assert (= (and b!926852 c!150463) b!926854))

(assert (= (and b!926852 (not c!150463)) b!926855))

(assert (= (and b!926854 res!421445) b!926853))

(assert (= (and b!926855 (not res!421444)) b!926859))

(assert (= (and b!926859 res!421443) b!926860))

(assert (= (or b!926853 b!926860) bm!56727))

(assert (= (or b!926854 b!926859) bm!56726))

(assert (= (or b!926856 bm!56727) bm!56725))

(declare-fun m!1151737 () Bool)

(assert (=> bm!56725 m!1151737))

(declare-fun m!1151739 () Bool)

(assert (=> bm!56726 m!1151739))

(declare-fun m!1151741 () Bool)

(assert (=> b!926858 m!1151741))

(assert (=> start!83110 d!281142))

(declare-fun b!927035 () Bool)

(assert (=> b!927035 true))

(assert (=> b!927035 true))

(declare-fun bs!237590 () Bool)

(declare-fun b!927026 () Bool)

(assert (= bs!237590 (and b!927026 b!927035)))

(declare-fun lambda!30692 () Int)

(declare-fun lambda!30691 () Int)

(assert (=> bs!237590 (not (= lambda!30692 lambda!30691))))

(assert (=> b!927026 true))

(assert (=> b!927026 true))

(declare-fun e!602958 () Bool)

(declare-fun call!56749 () Bool)

(assert (=> b!927026 (= e!602958 call!56749)))

(declare-fun c!150499 () Bool)

(declare-fun bm!56744 () Bool)

(declare-fun Exists!276 (Int) Bool)

(assert (=> bm!56744 (= call!56749 (Exists!276 (ite c!150499 lambda!30691 lambda!30692)))))

(declare-fun b!927027 () Bool)

(declare-fun e!602955 () Bool)

(declare-fun call!56750 () Bool)

(assert (=> b!927027 (= e!602955 call!56750)))

(declare-fun d!281144 () Bool)

(declare-fun c!150497 () Bool)

(assert (=> d!281144 (= c!150497 ((_ is EmptyExpr!2505) r!15766))))

(assert (=> d!281144 (= (matchRSpec!306 r!15766 s!10566) e!602955)))

(declare-fun b!927028 () Bool)

(declare-fun c!150498 () Bool)

(assert (=> b!927028 (= c!150498 ((_ is Union!2505) r!15766))))

(declare-fun e!602956 () Bool)

(declare-fun e!602954 () Bool)

(assert (=> b!927028 (= e!602956 e!602954)))

(declare-fun b!927029 () Bool)

(declare-fun e!602953 () Bool)

(assert (=> b!927029 (= e!602953 (matchRSpec!306 (regTwo!5523 r!15766) s!10566))))

(declare-fun b!927030 () Bool)

(assert (=> b!927030 (= e!602954 e!602958)))

(assert (=> b!927030 (= c!150499 ((_ is Star!2505) r!15766))))

(declare-fun b!927031 () Bool)

(declare-fun c!150496 () Bool)

(assert (=> b!927031 (= c!150496 ((_ is ElementMatch!2505) r!15766))))

(declare-fun e!602952 () Bool)

(assert (=> b!927031 (= e!602952 e!602956)))

(declare-fun b!927032 () Bool)

(assert (=> b!927032 (= e!602954 e!602953)))

(declare-fun res!421512 () Bool)

(assert (=> b!927032 (= res!421512 (matchRSpec!306 (regOne!5523 r!15766) s!10566))))

(assert (=> b!927032 (=> res!421512 e!602953)))

(declare-fun bm!56745 () Bool)

(declare-fun isEmpty!5978 (List!9735) Bool)

(assert (=> bm!56745 (= call!56750 (isEmpty!5978 s!10566))))

(declare-fun b!927033 () Bool)

(assert (=> b!927033 (= e!602955 e!602952)))

(declare-fun res!421510 () Bool)

(assert (=> b!927033 (= res!421510 (not ((_ is EmptyLang!2505) r!15766)))))

(assert (=> b!927033 (=> (not res!421510) (not e!602952))))

(declare-fun b!927034 () Bool)

(declare-fun res!421511 () Bool)

(declare-fun e!602957 () Bool)

(assert (=> b!927034 (=> res!421511 e!602957)))

(assert (=> b!927034 (= res!421511 call!56750)))

(assert (=> b!927034 (= e!602958 e!602957)))

(assert (=> b!927035 (= e!602957 call!56749)))

(declare-fun b!927036 () Bool)

(assert (=> b!927036 (= e!602956 (= s!10566 (Cons!9719 (c!150450 r!15766) Nil!9719)))))

(assert (= (and d!281144 c!150497) b!927027))

(assert (= (and d!281144 (not c!150497)) b!927033))

(assert (= (and b!927033 res!421510) b!927031))

(assert (= (and b!927031 c!150496) b!927036))

(assert (= (and b!927031 (not c!150496)) b!927028))

(assert (= (and b!927028 c!150498) b!927032))

(assert (= (and b!927028 (not c!150498)) b!927030))

(assert (= (and b!927032 (not res!421512)) b!927029))

(assert (= (and b!927030 c!150499) b!927034))

(assert (= (and b!927030 (not c!150499)) b!927026))

(assert (= (and b!927034 (not res!421511)) b!927035))

(assert (= (or b!927035 b!927026) bm!56744))

(assert (= (or b!927027 b!927034) bm!56745))

(declare-fun m!1151771 () Bool)

(assert (=> bm!56744 m!1151771))

(declare-fun m!1151773 () Bool)

(assert (=> b!927029 m!1151773))

(declare-fun m!1151775 () Bool)

(assert (=> b!927032 m!1151775))

(declare-fun m!1151777 () Bool)

(assert (=> bm!56745 m!1151777))

(assert (=> b!926794 d!281144))

(declare-fun b!927069 () Bool)

(declare-fun e!602974 () Bool)

(declare-fun lt!339800 () Bool)

(assert (=> b!927069 (= e!602974 (not lt!339800))))

(declare-fun b!927070 () Bool)

(declare-fun e!602977 () Bool)

(declare-fun e!602979 () Bool)

(assert (=> b!927070 (= e!602977 e!602979)))

(declare-fun res!421531 () Bool)

(assert (=> b!927070 (=> (not res!421531) (not e!602979))))

(assert (=> b!927070 (= res!421531 (not lt!339800))))

(declare-fun b!927071 () Bool)

(declare-fun e!602973 () Bool)

(declare-fun head!1668 (List!9735) C!5580)

(assert (=> b!927071 (= e!602973 (not (= (head!1668 s!10566) (c!150450 r!15766))))))

(declare-fun b!927072 () Bool)

(declare-fun res!421533 () Bool)

(declare-fun e!602976 () Bool)

(assert (=> b!927072 (=> (not res!421533) (not e!602976))))

(declare-fun tail!1230 (List!9735) List!9735)

(assert (=> b!927072 (= res!421533 (isEmpty!5978 (tail!1230 s!10566)))))

(declare-fun b!927073 () Bool)

(declare-fun e!602978 () Bool)

(assert (=> b!927073 (= e!602978 (nullable!705 r!15766))))

(declare-fun b!927074 () Bool)

(declare-fun res!421532 () Bool)

(assert (=> b!927074 (=> res!421532 e!602977)))

(assert (=> b!927074 (= res!421532 e!602976)))

(declare-fun res!421534 () Bool)

(assert (=> b!927074 (=> (not res!421534) (not e!602976))))

(assert (=> b!927074 (= res!421534 lt!339800)))

(declare-fun b!927075 () Bool)

(declare-fun res!421535 () Bool)

(assert (=> b!927075 (=> (not res!421535) (not e!602976))))

(declare-fun call!56753 () Bool)

(assert (=> b!927075 (= res!421535 (not call!56753))))

(declare-fun b!927076 () Bool)

(declare-fun res!421529 () Bool)

(assert (=> b!927076 (=> res!421529 e!602973)))

(assert (=> b!927076 (= res!421529 (not (isEmpty!5978 (tail!1230 s!10566))))))

(declare-fun d!281152 () Bool)

(declare-fun e!602975 () Bool)

(assert (=> d!281152 e!602975))

(declare-fun c!150506 () Bool)

(assert (=> d!281152 (= c!150506 ((_ is EmptyExpr!2505) r!15766))))

(assert (=> d!281152 (= lt!339800 e!602978)))

(declare-fun c!150507 () Bool)

(assert (=> d!281152 (= c!150507 (isEmpty!5978 s!10566))))

(assert (=> d!281152 (validRegex!974 r!15766)))

(assert (=> d!281152 (= (matchR!1043 r!15766 s!10566) lt!339800)))

(declare-fun b!927077 () Bool)

(assert (=> b!927077 (= e!602976 (= (head!1668 s!10566) (c!150450 r!15766)))))

(declare-fun b!927078 () Bool)

(declare-fun derivativeStep!515 (Regex!2505 C!5580) Regex!2505)

(assert (=> b!927078 (= e!602978 (matchR!1043 (derivativeStep!515 r!15766 (head!1668 s!10566)) (tail!1230 s!10566)))))

(declare-fun b!927079 () Bool)

(assert (=> b!927079 (= e!602975 e!602974)))

(declare-fun c!150508 () Bool)

(assert (=> b!927079 (= c!150508 ((_ is EmptyLang!2505) r!15766))))

(declare-fun b!927080 () Bool)

(assert (=> b!927080 (= e!602975 (= lt!339800 call!56753))))

(declare-fun b!927081 () Bool)

(declare-fun res!421536 () Bool)

(assert (=> b!927081 (=> res!421536 e!602977)))

(assert (=> b!927081 (= res!421536 (not ((_ is ElementMatch!2505) r!15766)))))

(assert (=> b!927081 (= e!602974 e!602977)))

(declare-fun bm!56748 () Bool)

(assert (=> bm!56748 (= call!56753 (isEmpty!5978 s!10566))))

(declare-fun b!927082 () Bool)

(assert (=> b!927082 (= e!602979 e!602973)))

(declare-fun res!421530 () Bool)

(assert (=> b!927082 (=> res!421530 e!602973)))

(assert (=> b!927082 (= res!421530 call!56753)))

(assert (= (and d!281152 c!150507) b!927073))

(assert (= (and d!281152 (not c!150507)) b!927078))

(assert (= (and d!281152 c!150506) b!927080))

(assert (= (and d!281152 (not c!150506)) b!927079))

(assert (= (and b!927079 c!150508) b!927069))

(assert (= (and b!927079 (not c!150508)) b!927081))

(assert (= (and b!927081 (not res!421536)) b!927074))

(assert (= (and b!927074 res!421534) b!927075))

(assert (= (and b!927075 res!421535) b!927072))

(assert (= (and b!927072 res!421533) b!927077))

(assert (= (and b!927074 (not res!421532)) b!927070))

(assert (= (and b!927070 res!421531) b!927082))

(assert (= (and b!927082 (not res!421530)) b!927076))

(assert (= (and b!927076 (not res!421529)) b!927071))

(assert (= (or b!927080 b!927075 b!927082) bm!56748))

(declare-fun m!1151779 () Bool)

(assert (=> b!927072 m!1151779))

(assert (=> b!927072 m!1151779))

(declare-fun m!1151781 () Bool)

(assert (=> b!927072 m!1151781))

(declare-fun m!1151783 () Bool)

(assert (=> b!927078 m!1151783))

(assert (=> b!927078 m!1151783))

(declare-fun m!1151785 () Bool)

(assert (=> b!927078 m!1151785))

(assert (=> b!927078 m!1151779))

(assert (=> b!927078 m!1151785))

(assert (=> b!927078 m!1151779))

(declare-fun m!1151787 () Bool)

(assert (=> b!927078 m!1151787))

(declare-fun m!1151789 () Bool)

(assert (=> b!927073 m!1151789))

(assert (=> bm!56748 m!1151777))

(assert (=> d!281152 m!1151777))

(assert (=> d!281152 m!1151715))

(assert (=> b!927076 m!1151779))

(assert (=> b!927076 m!1151779))

(assert (=> b!927076 m!1151781))

(assert (=> b!927071 m!1151783))

(assert (=> b!927077 m!1151783))

(assert (=> b!926794 d!281152))

(declare-fun d!281154 () Bool)

(assert (=> d!281154 (= (matchR!1043 r!15766 s!10566) (matchRSpec!306 r!15766 s!10566))))

(declare-fun lt!339803 () Unit!14629)

(declare-fun choose!5705 (Regex!2505 List!9735) Unit!14629)

(assert (=> d!281154 (= lt!339803 (choose!5705 r!15766 s!10566))))

(assert (=> d!281154 (validRegex!974 r!15766)))

(assert (=> d!281154 (= (mainMatchTheorem!306 r!15766 s!10566) lt!339803)))

(declare-fun bs!237591 () Bool)

(assert (= bs!237591 d!281154))

(assert (=> bs!237591 m!1151719))

(assert (=> bs!237591 m!1151717))

(declare-fun m!1151791 () Bool)

(assert (=> bs!237591 m!1151791))

(assert (=> bs!237591 m!1151715))

(assert (=> b!926794 d!281154))

(declare-fun b!927096 () Bool)

(declare-fun e!602982 () Bool)

(declare-fun tp!288064 () Bool)

(declare-fun tp!288063 () Bool)

(assert (=> b!927096 (= e!602982 (and tp!288064 tp!288063))))

(declare-fun b!927093 () Bool)

(assert (=> b!927093 (= e!602982 tp_is_empty!4653)))

(declare-fun b!927095 () Bool)

(declare-fun tp!288062 () Bool)

(assert (=> b!927095 (= e!602982 tp!288062)))

(assert (=> b!926791 (= tp!288011 e!602982)))

(declare-fun b!927094 () Bool)

(declare-fun tp!288065 () Bool)

(declare-fun tp!288061 () Bool)

(assert (=> b!927094 (= e!602982 (and tp!288065 tp!288061))))

(assert (= (and b!926791 ((_ is ElementMatch!2505) (regOne!5522 r!15766))) b!927093))

(assert (= (and b!926791 ((_ is Concat!4338) (regOne!5522 r!15766))) b!927094))

(assert (= (and b!926791 ((_ is Star!2505) (regOne!5522 r!15766))) b!927095))

(assert (= (and b!926791 ((_ is Union!2505) (regOne!5522 r!15766))) b!927096))

(declare-fun b!927100 () Bool)

(declare-fun e!602983 () Bool)

(declare-fun tp!288069 () Bool)

(declare-fun tp!288068 () Bool)

(assert (=> b!927100 (= e!602983 (and tp!288069 tp!288068))))

(declare-fun b!927097 () Bool)

(assert (=> b!927097 (= e!602983 tp_is_empty!4653)))

(declare-fun b!927099 () Bool)

(declare-fun tp!288067 () Bool)

(assert (=> b!927099 (= e!602983 tp!288067)))

(assert (=> b!926791 (= tp!288008 e!602983)))

(declare-fun b!927098 () Bool)

(declare-fun tp!288070 () Bool)

(declare-fun tp!288066 () Bool)

(assert (=> b!927098 (= e!602983 (and tp!288070 tp!288066))))

(assert (= (and b!926791 ((_ is ElementMatch!2505) (regTwo!5522 r!15766))) b!927097))

(assert (= (and b!926791 ((_ is Concat!4338) (regTwo!5522 r!15766))) b!927098))

(assert (= (and b!926791 ((_ is Star!2505) (regTwo!5522 r!15766))) b!927099))

(assert (= (and b!926791 ((_ is Union!2505) (regTwo!5522 r!15766))) b!927100))

(declare-fun b!927105 () Bool)

(declare-fun e!602986 () Bool)

(declare-fun tp!288073 () Bool)

(assert (=> b!927105 (= e!602986 (and tp_is_empty!4653 tp!288073))))

(assert (=> b!926792 (= tp!288009 e!602986)))

(assert (= (and b!926792 ((_ is Cons!9719) (t!100781 s!10566))) b!927105))

(declare-fun b!927109 () Bool)

(declare-fun e!602987 () Bool)

(declare-fun tp!288077 () Bool)

(declare-fun tp!288076 () Bool)

(assert (=> b!927109 (= e!602987 (and tp!288077 tp!288076))))

(declare-fun b!927106 () Bool)

(assert (=> b!927106 (= e!602987 tp_is_empty!4653)))

(declare-fun b!927108 () Bool)

(declare-fun tp!288075 () Bool)

(assert (=> b!927108 (= e!602987 tp!288075)))

(assert (=> b!926795 (= tp!288010 e!602987)))

(declare-fun b!927107 () Bool)

(declare-fun tp!288078 () Bool)

(declare-fun tp!288074 () Bool)

(assert (=> b!927107 (= e!602987 (and tp!288078 tp!288074))))

(assert (= (and b!926795 ((_ is ElementMatch!2505) (reg!2834 r!15766))) b!927106))

(assert (= (and b!926795 ((_ is Concat!4338) (reg!2834 r!15766))) b!927107))

(assert (= (and b!926795 ((_ is Star!2505) (reg!2834 r!15766))) b!927108))

(assert (= (and b!926795 ((_ is Union!2505) (reg!2834 r!15766))) b!927109))

(declare-fun b!927113 () Bool)

(declare-fun e!602988 () Bool)

(declare-fun tp!288082 () Bool)

(declare-fun tp!288081 () Bool)

(assert (=> b!927113 (= e!602988 (and tp!288082 tp!288081))))

(declare-fun b!927110 () Bool)

(assert (=> b!927110 (= e!602988 tp_is_empty!4653)))

(declare-fun b!927112 () Bool)

(declare-fun tp!288080 () Bool)

(assert (=> b!927112 (= e!602988 tp!288080)))

(assert (=> b!926796 (= tp!288012 e!602988)))

(declare-fun b!927111 () Bool)

(declare-fun tp!288083 () Bool)

(declare-fun tp!288079 () Bool)

(assert (=> b!927111 (= e!602988 (and tp!288083 tp!288079))))

(assert (= (and b!926796 ((_ is ElementMatch!2505) (regOne!5523 r!15766))) b!927110))

(assert (= (and b!926796 ((_ is Concat!4338) (regOne!5523 r!15766))) b!927111))

(assert (= (and b!926796 ((_ is Star!2505) (regOne!5523 r!15766))) b!927112))

(assert (= (and b!926796 ((_ is Union!2505) (regOne!5523 r!15766))) b!927113))

(declare-fun b!927117 () Bool)

(declare-fun e!602989 () Bool)

(declare-fun tp!288087 () Bool)

(declare-fun tp!288086 () Bool)

(assert (=> b!927117 (= e!602989 (and tp!288087 tp!288086))))

(declare-fun b!927114 () Bool)

(assert (=> b!927114 (= e!602989 tp_is_empty!4653)))

(declare-fun b!927116 () Bool)

(declare-fun tp!288085 () Bool)

(assert (=> b!927116 (= e!602989 tp!288085)))

(assert (=> b!926796 (= tp!288007 e!602989)))

(declare-fun b!927115 () Bool)

(declare-fun tp!288088 () Bool)

(declare-fun tp!288084 () Bool)

(assert (=> b!927115 (= e!602989 (and tp!288088 tp!288084))))

(assert (= (and b!926796 ((_ is ElementMatch!2505) (regTwo!5523 r!15766))) b!927114))

(assert (= (and b!926796 ((_ is Concat!4338) (regTwo!5523 r!15766))) b!927115))

(assert (= (and b!926796 ((_ is Star!2505) (regTwo!5523 r!15766))) b!927116))

(assert (= (and b!926796 ((_ is Union!2505) (regTwo!5523 r!15766))) b!927117))

(check-sat (not bm!56745) (not d!281154) (not b!927095) (not b!927115) (not d!281152) (not bm!56722) (not b!927100) (not b!927094) (not b!927117) (not b!927029) (not b!927071) (not b!927105) (not b!927111) (not b!927032) (not b!927107) (not b!927077) (not b!927116) (not b!927076) (not b!927078) (not b!927109) (not b!926849) (not b!927108) (not bm!56726) (not b!927073) (not b!926858) (not b!927113) (not bm!56744) (not bm!56725) (not b!927099) (not b!927098) tp_is_empty!4653 (not b!927096) (not bm!56748) (not bm!56723) (not b!927112) (not b!927072))
(check-sat)
