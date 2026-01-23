; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244192 () Bool)

(assert start!244192)

(declare-fun b!2501908 () Bool)

(declare-fun res!1057878 () Bool)

(declare-fun e!1586738 () Bool)

(assert (=> b!2501908 (=> (not res!1057878) (not e!1586738))))

(declare-datatypes ((C!14988 0))(
  ( (C!14989 (val!9146 Int)) )
))
(declare-datatypes ((List!29480 0))(
  ( (Nil!29380) (Cons!29380 (h!34800 C!14988) (t!211179 List!29480)) )
))
(declare-fun tl!4068 () List!29480)

(declare-datatypes ((Regex!7415 0))(
  ( (ElementMatch!7415 (c!398125 C!14988)) (Concat!12111 (regOne!15342 Regex!7415) (regTwo!15342 Regex!7415)) (EmptyExpr!7415) (Star!7415 (reg!7744 Regex!7415)) (EmptyLang!7415) (Union!7415 (regOne!15343 Regex!7415) (regTwo!15343 Regex!7415)) )
))
(declare-fun r!27340 () Regex!7415)

(declare-fun c!14016 () C!14988)

(declare-fun nullable!2332 (Regex!7415) Bool)

(declare-fun derivative!110 (Regex!7415 List!29480) Regex!7415)

(declare-fun derivativeStep!1984 (Regex!7415 C!14988) Regex!7415)

(assert (=> b!2501908 (= res!1057878 (nullable!2332 (derivative!110 (derivativeStep!1984 r!27340 c!14016) tl!4068)))))

(declare-fun b!2501909 () Bool)

(declare-fun e!1586742 () Bool)

(declare-fun tp!800985 () Bool)

(declare-fun tp!800984 () Bool)

(assert (=> b!2501909 (= e!1586742 (and tp!800985 tp!800984))))

(declare-fun b!2501910 () Bool)

(declare-fun res!1057880 () Bool)

(assert (=> b!2501910 (=> (not res!1057880) (not e!1586738))))

(assert (=> b!2501910 (= res!1057880 (nullable!2332 (regOne!15342 r!27340)))))

(declare-fun b!2501911 () Bool)

(declare-fun tp!800986 () Bool)

(assert (=> b!2501911 (= e!1586742 tp!800986)))

(declare-fun b!2501912 () Bool)

(declare-fun res!1057875 () Bool)

(assert (=> b!2501912 (=> (not res!1057875) (not e!1586738))))

(get-info :version)

(assert (=> b!2501912 (= res!1057875 (and (not ((_ is EmptyExpr!7415) r!27340)) (not ((_ is EmptyLang!7415) r!27340)) (not ((_ is ElementMatch!7415) r!27340)) (not ((_ is Union!7415) r!27340)) (not ((_ is Star!7415) r!27340))))))

(declare-fun b!2501913 () Bool)

(declare-fun e!1586741 () Bool)

(declare-fun tp_is_empty!12685 () Bool)

(declare-fun tp!800982 () Bool)

(assert (=> b!2501913 (= e!1586741 (and tp_is_empty!12685 tp!800982))))

(declare-fun b!2501914 () Bool)

(declare-fun e!1586739 () Bool)

(declare-fun validRegex!3041 (Regex!7415) Bool)

(assert (=> b!2501914 (= e!1586739 (validRegex!3041 (regOne!15342 r!27340)))))

(declare-fun lt!895820 () Regex!7415)

(declare-datatypes ((tuple2!29408 0))(
  ( (tuple2!29409 (_1!17246 List!29480) (_2!17246 List!29480)) )
))
(declare-datatypes ((Option!5824 0))(
  ( (None!5823) (Some!5823 (v!31754 tuple2!29408)) )
))
(declare-fun isDefined!4646 (Option!5824) Bool)

(declare-fun findConcatSeparation!846 (Regex!7415 Regex!7415 List!29480 List!29480 List!29480) Option!5824)

(assert (=> b!2501914 (isDefined!4646 (findConcatSeparation!846 lt!895820 (regTwo!15342 r!27340) Nil!29380 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43087 0))(
  ( (Unit!43088) )
))
(declare-fun lt!895821 () Unit!43087)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!128 (Regex!7415 Regex!7415 List!29480) Unit!43087)

(assert (=> b!2501914 (= lt!895821 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!128 lt!895820 (regTwo!15342 r!27340) tl!4068))))

(declare-fun b!2501915 () Bool)

(declare-fun e!1586740 () Bool)

(declare-fun lt!895815 () Regex!7415)

(declare-fun matchR!3418 (Regex!7415 List!29480) Bool)

(assert (=> b!2501915 (= e!1586740 (matchR!3418 lt!895815 tl!4068))))

(declare-fun b!2501916 () Bool)

(assert (=> b!2501916 (= e!1586738 (not e!1586739))))

(declare-fun res!1057877 () Bool)

(assert (=> b!2501916 (=> res!1057877 e!1586739)))

(declare-fun lt!895818 () Bool)

(assert (=> b!2501916 (= res!1057877 (not lt!895818))))

(assert (=> b!2501916 e!1586740))

(declare-fun res!1057879 () Bool)

(assert (=> b!2501916 (=> res!1057879 e!1586740)))

(assert (=> b!2501916 (= res!1057879 lt!895818)))

(declare-fun lt!895817 () Regex!7415)

(assert (=> b!2501916 (= lt!895818 (matchR!3418 lt!895817 tl!4068))))

(declare-fun lt!895816 () Unit!43087)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!110 (Regex!7415 Regex!7415 List!29480) Unit!43087)

(assert (=> b!2501916 (= lt!895816 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!110 lt!895817 lt!895815 tl!4068))))

(declare-fun lt!895822 () Regex!7415)

(assert (=> b!2501916 (= (matchR!3418 lt!895822 tl!4068) (matchR!3418 (derivative!110 lt!895822 tl!4068) Nil!29380))))

(declare-fun lt!895819 () Unit!43087)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!64 (Regex!7415 List!29480) Unit!43087)

(assert (=> b!2501916 (= lt!895819 (lemmaMatchRIsSameAsWholeDerivativeAndNil!64 lt!895822 tl!4068))))

(assert (=> b!2501916 (= lt!895822 (Union!7415 lt!895817 lt!895815))))

(assert (=> b!2501916 (= lt!895815 (derivativeStep!1984 (regTwo!15342 r!27340) c!14016))))

(assert (=> b!2501916 (= lt!895817 (Concat!12111 lt!895820 (regTwo!15342 r!27340)))))

(assert (=> b!2501916 (= lt!895820 (derivativeStep!1984 (regOne!15342 r!27340) c!14016))))

(declare-fun res!1057876 () Bool)

(assert (=> start!244192 (=> (not res!1057876) (not e!1586738))))

(assert (=> start!244192 (= res!1057876 (validRegex!3041 r!27340))))

(assert (=> start!244192 e!1586738))

(assert (=> start!244192 e!1586742))

(assert (=> start!244192 tp_is_empty!12685))

(assert (=> start!244192 e!1586741))

(declare-fun b!2501917 () Bool)

(declare-fun tp!800981 () Bool)

(declare-fun tp!800983 () Bool)

(assert (=> b!2501917 (= e!1586742 (and tp!800981 tp!800983))))

(declare-fun b!2501918 () Bool)

(assert (=> b!2501918 (= e!1586742 tp_is_empty!12685)))

(assert (= (and start!244192 res!1057876) b!2501908))

(assert (= (and b!2501908 res!1057878) b!2501912))

(assert (= (and b!2501912 res!1057875) b!2501910))

(assert (= (and b!2501910 res!1057880) b!2501916))

(assert (= (and b!2501916 (not res!1057879)) b!2501915))

(assert (= (and b!2501916 (not res!1057877)) b!2501914))

(assert (= (and start!244192 ((_ is ElementMatch!7415) r!27340)) b!2501918))

(assert (= (and start!244192 ((_ is Concat!12111) r!27340)) b!2501909))

(assert (= (and start!244192 ((_ is Star!7415) r!27340)) b!2501911))

(assert (= (and start!244192 ((_ is Union!7415) r!27340)) b!2501917))

(assert (= (and start!244192 ((_ is Cons!29380) tl!4068)) b!2501913))

(declare-fun m!2864009 () Bool)

(assert (=> b!2501915 m!2864009))

(declare-fun m!2864011 () Bool)

(assert (=> b!2501910 m!2864011))

(declare-fun m!2864013 () Bool)

(assert (=> start!244192 m!2864013))

(declare-fun m!2864015 () Bool)

(assert (=> b!2501916 m!2864015))

(declare-fun m!2864017 () Bool)

(assert (=> b!2501916 m!2864017))

(declare-fun m!2864019 () Bool)

(assert (=> b!2501916 m!2864019))

(declare-fun m!2864021 () Bool)

(assert (=> b!2501916 m!2864021))

(declare-fun m!2864023 () Bool)

(assert (=> b!2501916 m!2864023))

(assert (=> b!2501916 m!2864017))

(declare-fun m!2864025 () Bool)

(assert (=> b!2501916 m!2864025))

(declare-fun m!2864027 () Bool)

(assert (=> b!2501916 m!2864027))

(declare-fun m!2864029 () Bool)

(assert (=> b!2501916 m!2864029))

(declare-fun m!2864031 () Bool)

(assert (=> b!2501908 m!2864031))

(assert (=> b!2501908 m!2864031))

(declare-fun m!2864033 () Bool)

(assert (=> b!2501908 m!2864033))

(assert (=> b!2501908 m!2864033))

(declare-fun m!2864035 () Bool)

(assert (=> b!2501908 m!2864035))

(declare-fun m!2864037 () Bool)

(assert (=> b!2501914 m!2864037))

(declare-fun m!2864039 () Bool)

(assert (=> b!2501914 m!2864039))

(assert (=> b!2501914 m!2864039))

(declare-fun m!2864041 () Bool)

(assert (=> b!2501914 m!2864041))

(declare-fun m!2864043 () Bool)

(assert (=> b!2501914 m!2864043))

(check-sat (not b!2501908) (not b!2501911) (not b!2501913) (not b!2501909) (not b!2501916) (not start!244192) (not b!2501915) tp_is_empty!12685 (not b!2501914) (not b!2501917) (not b!2501910))
(check-sat)
(get-model)

(declare-fun d!715537 () Bool)

(declare-fun nullableFct!598 (Regex!7415) Bool)

(assert (=> d!715537 (= (nullable!2332 (derivative!110 (derivativeStep!1984 r!27340 c!14016) tl!4068)) (nullableFct!598 (derivative!110 (derivativeStep!1984 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468587 () Bool)

(assert (= bs!468587 d!715537))

(assert (=> bs!468587 m!2864033))

(declare-fun m!2864047 () Bool)

(assert (=> bs!468587 m!2864047))

(assert (=> b!2501908 d!715537))

(declare-fun d!715539 () Bool)

(declare-fun lt!895827 () Regex!7415)

(assert (=> d!715539 (validRegex!3041 lt!895827)))

(declare-fun e!1586759 () Regex!7415)

(assert (=> d!715539 (= lt!895827 e!1586759)))

(declare-fun c!398134 () Bool)

(assert (=> d!715539 (= c!398134 ((_ is Cons!29380) tl!4068))))

(assert (=> d!715539 (validRegex!3041 (derivativeStep!1984 r!27340 c!14016))))

(assert (=> d!715539 (= (derivative!110 (derivativeStep!1984 r!27340 c!14016) tl!4068) lt!895827)))

(declare-fun b!2501951 () Bool)

(assert (=> b!2501951 (= e!1586759 (derivative!110 (derivativeStep!1984 (derivativeStep!1984 r!27340 c!14016) (h!34800 tl!4068)) (t!211179 tl!4068)))))

(declare-fun b!2501952 () Bool)

(assert (=> b!2501952 (= e!1586759 (derivativeStep!1984 r!27340 c!14016))))

(assert (= (and d!715539 c!398134) b!2501951))

(assert (= (and d!715539 (not c!398134)) b!2501952))

(declare-fun m!2864049 () Bool)

(assert (=> d!715539 m!2864049))

(assert (=> d!715539 m!2864031))

(declare-fun m!2864051 () Bool)

(assert (=> d!715539 m!2864051))

(assert (=> b!2501951 m!2864031))

(declare-fun m!2864053 () Bool)

(assert (=> b!2501951 m!2864053))

(assert (=> b!2501951 m!2864053))

(declare-fun m!2864055 () Bool)

(assert (=> b!2501951 m!2864055))

(assert (=> b!2501908 d!715539))

(declare-fun b!2502005 () Bool)

(declare-fun e!1586794 () Regex!7415)

(assert (=> b!2502005 (= e!1586794 EmptyLang!7415)))

(declare-fun b!2502006 () Bool)

(declare-fun e!1586791 () Regex!7415)

(declare-fun call!154623 () Regex!7415)

(assert (=> b!2502006 (= e!1586791 (Union!7415 (Concat!12111 call!154623 (regTwo!15342 r!27340)) EmptyLang!7415))))

(declare-fun b!2502007 () Bool)

(declare-fun e!1586795 () Regex!7415)

(assert (=> b!2502007 (= e!1586794 e!1586795)))

(declare-fun c!398152 () Bool)

(assert (=> b!2502007 (= c!398152 ((_ is ElementMatch!7415) r!27340))))

(declare-fun b!2502008 () Bool)

(declare-fun e!1586793 () Regex!7415)

(declare-fun e!1586792 () Regex!7415)

(assert (=> b!2502008 (= e!1586793 e!1586792)))

(declare-fun c!398153 () Bool)

(assert (=> b!2502008 (= c!398153 ((_ is Star!7415) r!27340))))

(declare-fun b!2502009 () Bool)

(declare-fun c!398155 () Bool)

(assert (=> b!2502009 (= c!398155 (nullable!2332 (regOne!15342 r!27340)))))

(assert (=> b!2502009 (= e!1586792 e!1586791)))

(declare-fun bm!154616 () Bool)

(declare-fun call!154624 () Regex!7415)

(declare-fun c!398156 () Bool)

(assert (=> bm!154616 (= call!154624 (derivativeStep!1984 (ite c!398156 (regTwo!15343 r!27340) (regTwo!15342 r!27340)) c!14016))))

(declare-fun b!2502010 () Bool)

(assert (=> b!2502010 (= e!1586795 (ite (= c!14016 (c!398125 r!27340)) EmptyExpr!7415 EmptyLang!7415))))

(declare-fun b!2502011 () Bool)

(assert (=> b!2502011 (= e!1586791 (Union!7415 (Concat!12111 call!154623 (regTwo!15342 r!27340)) call!154624))))

(declare-fun b!2502012 () Bool)

(declare-fun call!154622 () Regex!7415)

(assert (=> b!2502012 (= e!1586793 (Union!7415 call!154622 call!154624))))

(declare-fun bm!154617 () Bool)

(assert (=> bm!154617 (= call!154622 (derivativeStep!1984 (ite c!398156 (regOne!15343 r!27340) (ite c!398153 (reg!7744 r!27340) (regOne!15342 r!27340))) c!14016))))

(declare-fun bm!154618 () Bool)

(declare-fun call!154621 () Regex!7415)

(assert (=> bm!154618 (= call!154623 call!154621)))

(declare-fun d!715541 () Bool)

(declare-fun lt!895831 () Regex!7415)

(assert (=> d!715541 (validRegex!3041 lt!895831)))

(assert (=> d!715541 (= lt!895831 e!1586794)))

(declare-fun c!398154 () Bool)

(assert (=> d!715541 (= c!398154 (or ((_ is EmptyExpr!7415) r!27340) ((_ is EmptyLang!7415) r!27340)))))

(assert (=> d!715541 (validRegex!3041 r!27340)))

(assert (=> d!715541 (= (derivativeStep!1984 r!27340 c!14016) lt!895831)))

(declare-fun bm!154619 () Bool)

(assert (=> bm!154619 (= call!154621 call!154622)))

(declare-fun b!2502013 () Bool)

(assert (=> b!2502013 (= c!398156 ((_ is Union!7415) r!27340))))

(assert (=> b!2502013 (= e!1586795 e!1586793)))

(declare-fun b!2502014 () Bool)

(assert (=> b!2502014 (= e!1586792 (Concat!12111 call!154621 r!27340))))

(assert (= (and d!715541 c!398154) b!2502005))

(assert (= (and d!715541 (not c!398154)) b!2502007))

(assert (= (and b!2502007 c!398152) b!2502010))

(assert (= (and b!2502007 (not c!398152)) b!2502013))

(assert (= (and b!2502013 c!398156) b!2502012))

(assert (= (and b!2502013 (not c!398156)) b!2502008))

(assert (= (and b!2502008 c!398153) b!2502014))

(assert (= (and b!2502008 (not c!398153)) b!2502009))

(assert (= (and b!2502009 c!398155) b!2502011))

(assert (= (and b!2502009 (not c!398155)) b!2502006))

(assert (= (or b!2502011 b!2502006) bm!154618))

(assert (= (or b!2502014 bm!154618) bm!154619))

(assert (= (or b!2502012 b!2502011) bm!154616))

(assert (= (or b!2502012 bm!154619) bm!154617))

(assert (=> b!2502009 m!2864011))

(declare-fun m!2864073 () Bool)

(assert (=> bm!154616 m!2864073))

(declare-fun m!2864075 () Bool)

(assert (=> bm!154617 m!2864075))

(declare-fun m!2864077 () Bool)

(assert (=> d!715541 m!2864077))

(assert (=> d!715541 m!2864013))

(assert (=> b!2501908 d!715541))

(declare-fun call!154636 () Bool)

(declare-fun c!398163 () Bool)

(declare-fun c!398164 () Bool)

(declare-fun bm!154629 () Bool)

(assert (=> bm!154629 (= call!154636 (validRegex!3041 (ite c!398164 (reg!7744 (regOne!15342 r!27340)) (ite c!398163 (regTwo!15343 (regOne!15342 r!27340)) (regOne!15342 (regOne!15342 r!27340))))))))

(declare-fun bm!154630 () Bool)

(declare-fun call!154634 () Bool)

(assert (=> bm!154630 (= call!154634 (validRegex!3041 (ite c!398163 (regOne!15343 (regOne!15342 r!27340)) (regTwo!15342 (regOne!15342 r!27340)))))))

(declare-fun b!2502043 () Bool)

(declare-fun e!1586823 () Bool)

(declare-fun e!1586821 () Bool)

(assert (=> b!2502043 (= e!1586823 e!1586821)))

(declare-fun res!1057933 () Bool)

(assert (=> b!2502043 (=> (not res!1057933) (not e!1586821))))

(declare-fun call!154635 () Bool)

(assert (=> b!2502043 (= res!1057933 call!154635)))

(declare-fun b!2502044 () Bool)

(assert (=> b!2502044 (= e!1586821 call!154634)))

(declare-fun bm!154631 () Bool)

(assert (=> bm!154631 (= call!154635 call!154636)))

(declare-fun b!2502045 () Bool)

(declare-fun e!1586822 () Bool)

(assert (=> b!2502045 (= e!1586822 call!154635)))

(declare-fun b!2502046 () Bool)

(declare-fun e!1586820 () Bool)

(declare-fun e!1586819 () Bool)

(assert (=> b!2502046 (= e!1586820 e!1586819)))

(declare-fun res!1057930 () Bool)

(assert (=> b!2502046 (= res!1057930 (not (nullable!2332 (reg!7744 (regOne!15342 r!27340)))))))

(assert (=> b!2502046 (=> (not res!1057930) (not e!1586819))))

(declare-fun b!2502047 () Bool)

(declare-fun res!1057934 () Bool)

(assert (=> b!2502047 (=> (not res!1057934) (not e!1586822))))

(assert (=> b!2502047 (= res!1057934 call!154634)))

(declare-fun e!1586817 () Bool)

(assert (=> b!2502047 (= e!1586817 e!1586822)))

(declare-fun b!2502048 () Bool)

(declare-fun e!1586818 () Bool)

(assert (=> b!2502048 (= e!1586818 e!1586820)))

(assert (=> b!2502048 (= c!398164 ((_ is Star!7415) (regOne!15342 r!27340)))))

(declare-fun b!2502049 () Bool)

(declare-fun res!1057932 () Bool)

(assert (=> b!2502049 (=> res!1057932 e!1586823)))

(assert (=> b!2502049 (= res!1057932 (not ((_ is Concat!12111) (regOne!15342 r!27340))))))

(assert (=> b!2502049 (= e!1586817 e!1586823)))

(declare-fun b!2502050 () Bool)

(assert (=> b!2502050 (= e!1586820 e!1586817)))

(assert (=> b!2502050 (= c!398163 ((_ is Union!7415) (regOne!15342 r!27340)))))

(declare-fun b!2502042 () Bool)

(assert (=> b!2502042 (= e!1586819 call!154636)))

(declare-fun d!715545 () Bool)

(declare-fun res!1057931 () Bool)

(assert (=> d!715545 (=> res!1057931 e!1586818)))

(assert (=> d!715545 (= res!1057931 ((_ is ElementMatch!7415) (regOne!15342 r!27340)))))

(assert (=> d!715545 (= (validRegex!3041 (regOne!15342 r!27340)) e!1586818)))

(assert (= (and d!715545 (not res!1057931)) b!2502048))

(assert (= (and b!2502048 c!398164) b!2502046))

(assert (= (and b!2502048 (not c!398164)) b!2502050))

(assert (= (and b!2502046 res!1057930) b!2502042))

(assert (= (and b!2502050 c!398163) b!2502047))

(assert (= (and b!2502050 (not c!398163)) b!2502049))

(assert (= (and b!2502047 res!1057934) b!2502045))

(assert (= (and b!2502049 (not res!1057932)) b!2502043))

(assert (= (and b!2502043 res!1057933) b!2502044))

(assert (= (or b!2502047 b!2502044) bm!154630))

(assert (= (or b!2502045 b!2502043) bm!154631))

(assert (= (or b!2502042 bm!154631) bm!154629))

(declare-fun m!2864087 () Bool)

(assert (=> bm!154629 m!2864087))

(declare-fun m!2864089 () Bool)

(assert (=> bm!154630 m!2864089))

(declare-fun m!2864091 () Bool)

(assert (=> b!2502046 m!2864091))

(assert (=> b!2501914 d!715545))

(declare-fun d!715551 () Bool)

(declare-fun isEmpty!16839 (Option!5824) Bool)

(assert (=> d!715551 (= (isDefined!4646 (findConcatSeparation!846 lt!895820 (regTwo!15342 r!27340) Nil!29380 tl!4068 tl!4068)) (not (isEmpty!16839 (findConcatSeparation!846 lt!895820 (regTwo!15342 r!27340) Nil!29380 tl!4068 tl!4068))))))

(declare-fun bs!468589 () Bool)

(assert (= bs!468589 d!715551))

(assert (=> bs!468589 m!2864039))

(declare-fun m!2864093 () Bool)

(assert (=> bs!468589 m!2864093))

(assert (=> b!2501914 d!715551))

(declare-fun b!2502130 () Bool)

(declare-fun e!1586872 () Option!5824)

(assert (=> b!2502130 (= e!1586872 (Some!5823 (tuple2!29409 Nil!29380 tl!4068)))))

(declare-fun b!2502131 () Bool)

(declare-fun res!1057983 () Bool)

(declare-fun e!1586869 () Bool)

(assert (=> b!2502131 (=> (not res!1057983) (not e!1586869))))

(declare-fun lt!895856 () Option!5824)

(declare-fun get!9114 (Option!5824) tuple2!29408)

(assert (=> b!2502131 (= res!1057983 (matchR!3418 (regTwo!15342 r!27340) (_2!17246 (get!9114 lt!895856))))))

(declare-fun b!2502132 () Bool)

(declare-fun lt!895855 () Unit!43087)

(declare-fun lt!895857 () Unit!43087)

(assert (=> b!2502132 (= lt!895855 lt!895857)))

(declare-fun ++!7177 (List!29480 List!29480) List!29480)

(assert (=> b!2502132 (= (++!7177 (++!7177 Nil!29380 (Cons!29380 (h!34800 tl!4068) Nil!29380)) (t!211179 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!727 (List!29480 C!14988 List!29480 List!29480) Unit!43087)

(assert (=> b!2502132 (= lt!895857 (lemmaMoveElementToOtherListKeepsConcatEq!727 Nil!29380 (h!34800 tl!4068) (t!211179 tl!4068) tl!4068))))

(declare-fun e!1586871 () Option!5824)

(assert (=> b!2502132 (= e!1586871 (findConcatSeparation!846 lt!895820 (regTwo!15342 r!27340) (++!7177 Nil!29380 (Cons!29380 (h!34800 tl!4068) Nil!29380)) (t!211179 tl!4068) tl!4068))))

(declare-fun d!715553 () Bool)

(declare-fun e!1586873 () Bool)

(assert (=> d!715553 e!1586873))

(declare-fun res!1057982 () Bool)

(assert (=> d!715553 (=> res!1057982 e!1586873)))

(assert (=> d!715553 (= res!1057982 e!1586869)))

(declare-fun res!1057986 () Bool)

(assert (=> d!715553 (=> (not res!1057986) (not e!1586869))))

(assert (=> d!715553 (= res!1057986 (isDefined!4646 lt!895856))))

(assert (=> d!715553 (= lt!895856 e!1586872)))

(declare-fun c!398182 () Bool)

(declare-fun e!1586870 () Bool)

(assert (=> d!715553 (= c!398182 e!1586870)))

(declare-fun res!1057985 () Bool)

(assert (=> d!715553 (=> (not res!1057985) (not e!1586870))))

(assert (=> d!715553 (= res!1057985 (matchR!3418 lt!895820 Nil!29380))))

(assert (=> d!715553 (validRegex!3041 lt!895820)))

(assert (=> d!715553 (= (findConcatSeparation!846 lt!895820 (regTwo!15342 r!27340) Nil!29380 tl!4068 tl!4068) lt!895856)))

(declare-fun b!2502133 () Bool)

(declare-fun res!1057984 () Bool)

(assert (=> b!2502133 (=> (not res!1057984) (not e!1586869))))

(assert (=> b!2502133 (= res!1057984 (matchR!3418 lt!895820 (_1!17246 (get!9114 lt!895856))))))

(declare-fun b!2502134 () Bool)

(assert (=> b!2502134 (= e!1586872 e!1586871)))

(declare-fun c!398181 () Bool)

(assert (=> b!2502134 (= c!398181 ((_ is Nil!29380) tl!4068))))

(declare-fun b!2502135 () Bool)

(assert (=> b!2502135 (= e!1586870 (matchR!3418 (regTwo!15342 r!27340) tl!4068))))

(declare-fun b!2502136 () Bool)

(assert (=> b!2502136 (= e!1586869 (= (++!7177 (_1!17246 (get!9114 lt!895856)) (_2!17246 (get!9114 lt!895856))) tl!4068))))

(declare-fun b!2502137 () Bool)

(assert (=> b!2502137 (= e!1586871 None!5823)))

(declare-fun b!2502138 () Bool)

(assert (=> b!2502138 (= e!1586873 (not (isDefined!4646 lt!895856)))))

(assert (= (and d!715553 res!1057985) b!2502135))

(assert (= (and d!715553 c!398182) b!2502130))

(assert (= (and d!715553 (not c!398182)) b!2502134))

(assert (= (and b!2502134 c!398181) b!2502137))

(assert (= (and b!2502134 (not c!398181)) b!2502132))

(assert (= (and d!715553 res!1057986) b!2502133))

(assert (= (and b!2502133 res!1057984) b!2502131))

(assert (= (and b!2502131 res!1057983) b!2502136))

(assert (= (and d!715553 (not res!1057982)) b!2502138))

(declare-fun m!2864149 () Bool)

(assert (=> b!2502135 m!2864149))

(declare-fun m!2864151 () Bool)

(assert (=> b!2502132 m!2864151))

(assert (=> b!2502132 m!2864151))

(declare-fun m!2864153 () Bool)

(assert (=> b!2502132 m!2864153))

(declare-fun m!2864155 () Bool)

(assert (=> b!2502132 m!2864155))

(assert (=> b!2502132 m!2864151))

(declare-fun m!2864157 () Bool)

(assert (=> b!2502132 m!2864157))

(declare-fun m!2864159 () Bool)

(assert (=> b!2502131 m!2864159))

(declare-fun m!2864161 () Bool)

(assert (=> b!2502131 m!2864161))

(assert (=> b!2502133 m!2864159))

(declare-fun m!2864163 () Bool)

(assert (=> b!2502133 m!2864163))

(declare-fun m!2864165 () Bool)

(assert (=> d!715553 m!2864165))

(declare-fun m!2864167 () Bool)

(assert (=> d!715553 m!2864167))

(declare-fun m!2864169 () Bool)

(assert (=> d!715553 m!2864169))

(assert (=> b!2502138 m!2864165))

(assert (=> b!2502136 m!2864159))

(declare-fun m!2864171 () Bool)

(assert (=> b!2502136 m!2864171))

(assert (=> b!2501914 d!715553))

(declare-fun d!715565 () Bool)

(assert (=> d!715565 (isDefined!4646 (findConcatSeparation!846 lt!895820 (regTwo!15342 r!27340) Nil!29380 tl!4068 tl!4068))))

(declare-fun lt!895867 () Unit!43087)

(declare-fun choose!14776 (Regex!7415 Regex!7415 List!29480) Unit!43087)

(assert (=> d!715565 (= lt!895867 (choose!14776 lt!895820 (regTwo!15342 r!27340) tl!4068))))

(assert (=> d!715565 (validRegex!3041 lt!895820)))

(assert (=> d!715565 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!128 lt!895820 (regTwo!15342 r!27340) tl!4068) lt!895867)))

(declare-fun bs!468592 () Bool)

(assert (= bs!468592 d!715565))

(assert (=> bs!468592 m!2864039))

(assert (=> bs!468592 m!2864039))

(assert (=> bs!468592 m!2864041))

(declare-fun m!2864181 () Bool)

(assert (=> bs!468592 m!2864181))

(assert (=> bs!468592 m!2864169))

(assert (=> b!2501914 d!715565))

(declare-fun bm!154635 () Bool)

(declare-fun c!398190 () Bool)

(declare-fun c!398189 () Bool)

(declare-fun call!154642 () Bool)

(assert (=> bm!154635 (= call!154642 (validRegex!3041 (ite c!398190 (reg!7744 r!27340) (ite c!398189 (regTwo!15343 r!27340) (regOne!15342 r!27340)))))))

(declare-fun bm!154636 () Bool)

(declare-fun call!154640 () Bool)

(assert (=> bm!154636 (= call!154640 (validRegex!3041 (ite c!398189 (regOne!15343 r!27340) (regTwo!15342 r!27340))))))

(declare-fun b!2502160 () Bool)

(declare-fun e!1586890 () Bool)

(declare-fun e!1586888 () Bool)

(assert (=> b!2502160 (= e!1586890 e!1586888)))

(declare-fun res!1057998 () Bool)

(assert (=> b!2502160 (=> (not res!1057998) (not e!1586888))))

(declare-fun call!154641 () Bool)

(assert (=> b!2502160 (= res!1057998 call!154641)))

(declare-fun b!2502161 () Bool)

(assert (=> b!2502161 (= e!1586888 call!154640)))

(declare-fun bm!154637 () Bool)

(assert (=> bm!154637 (= call!154641 call!154642)))

(declare-fun b!2502162 () Bool)

(declare-fun e!1586889 () Bool)

(assert (=> b!2502162 (= e!1586889 call!154641)))

(declare-fun b!2502163 () Bool)

(declare-fun e!1586887 () Bool)

(declare-fun e!1586886 () Bool)

(assert (=> b!2502163 (= e!1586887 e!1586886)))

(declare-fun res!1057995 () Bool)

(assert (=> b!2502163 (= res!1057995 (not (nullable!2332 (reg!7744 r!27340))))))

(assert (=> b!2502163 (=> (not res!1057995) (not e!1586886))))

(declare-fun b!2502164 () Bool)

(declare-fun res!1057999 () Bool)

(assert (=> b!2502164 (=> (not res!1057999) (not e!1586889))))

(assert (=> b!2502164 (= res!1057999 call!154640)))

(declare-fun e!1586884 () Bool)

(assert (=> b!2502164 (= e!1586884 e!1586889)))

(declare-fun b!2502165 () Bool)

(declare-fun e!1586885 () Bool)

(assert (=> b!2502165 (= e!1586885 e!1586887)))

(assert (=> b!2502165 (= c!398190 ((_ is Star!7415) r!27340))))

(declare-fun b!2502166 () Bool)

(declare-fun res!1057997 () Bool)

(assert (=> b!2502166 (=> res!1057997 e!1586890)))

(assert (=> b!2502166 (= res!1057997 (not ((_ is Concat!12111) r!27340)))))

(assert (=> b!2502166 (= e!1586884 e!1586890)))

(declare-fun b!2502167 () Bool)

(assert (=> b!2502167 (= e!1586887 e!1586884)))

(assert (=> b!2502167 (= c!398189 ((_ is Union!7415) r!27340))))

(declare-fun b!2502159 () Bool)

(assert (=> b!2502159 (= e!1586886 call!154642)))

(declare-fun d!715571 () Bool)

(declare-fun res!1057996 () Bool)

(assert (=> d!715571 (=> res!1057996 e!1586885)))

(assert (=> d!715571 (= res!1057996 ((_ is ElementMatch!7415) r!27340))))

(assert (=> d!715571 (= (validRegex!3041 r!27340) e!1586885)))

(assert (= (and d!715571 (not res!1057996)) b!2502165))

(assert (= (and b!2502165 c!398190) b!2502163))

(assert (= (and b!2502165 (not c!398190)) b!2502167))

(assert (= (and b!2502163 res!1057995) b!2502159))

(assert (= (and b!2502167 c!398189) b!2502164))

(assert (= (and b!2502167 (not c!398189)) b!2502166))

(assert (= (and b!2502164 res!1057999) b!2502162))

(assert (= (and b!2502166 (not res!1057997)) b!2502160))

(assert (= (and b!2502160 res!1057998) b!2502161))

(assert (= (or b!2502164 b!2502161) bm!154636))

(assert (= (or b!2502162 b!2502160) bm!154637))

(assert (= (or b!2502159 bm!154637) bm!154635))

(declare-fun m!2864189 () Bool)

(assert (=> bm!154635 m!2864189))

(declare-fun m!2864191 () Bool)

(assert (=> bm!154636 m!2864191))

(declare-fun m!2864193 () Bool)

(assert (=> b!2502163 m!2864193))

(assert (=> start!244192 d!715571))

(declare-fun d!715575 () Bool)

(assert (=> d!715575 (= (nullable!2332 (regOne!15342 r!27340)) (nullableFct!598 (regOne!15342 r!27340)))))

(declare-fun bs!468593 () Bool)

(assert (= bs!468593 d!715575))

(declare-fun m!2864195 () Bool)

(assert (=> bs!468593 m!2864195))

(assert (=> b!2501910 d!715575))

(declare-fun b!2502292 () Bool)

(declare-fun e!1586949 () Bool)

(declare-fun e!1586951 () Bool)

(assert (=> b!2502292 (= e!1586949 e!1586951)))

(declare-fun res!1058022 () Bool)

(assert (=> b!2502292 (=> (not res!1058022) (not e!1586951))))

(declare-fun lt!895876 () Bool)

(assert (=> b!2502292 (= res!1058022 (not lt!895876))))

(declare-fun b!2502293 () Bool)

(declare-fun res!1058021 () Bool)

(declare-fun e!1586954 () Bool)

(assert (=> b!2502293 (=> (not res!1058021) (not e!1586954))))

(declare-fun isEmpty!16840 (List!29480) Bool)

(declare-fun tail!3979 (List!29480) List!29480)

(assert (=> b!2502293 (= res!1058021 (isEmpty!16840 (tail!3979 tl!4068)))))

(declare-fun bm!154663 () Bool)

(declare-fun call!154668 () Bool)

(assert (=> bm!154663 (= call!154668 (isEmpty!16840 tl!4068))))

(declare-fun b!2502295 () Bool)

(declare-fun res!1058027 () Bool)

(assert (=> b!2502295 (=> res!1058027 e!1586949)))

(assert (=> b!2502295 (= res!1058027 (not ((_ is ElementMatch!7415) lt!895815)))))

(declare-fun e!1586953 () Bool)

(assert (=> b!2502295 (= e!1586953 e!1586949)))

(declare-fun b!2502296 () Bool)

(declare-fun res!1058023 () Bool)

(assert (=> b!2502296 (=> (not res!1058023) (not e!1586954))))

(assert (=> b!2502296 (= res!1058023 (not call!154668))))

(declare-fun b!2502297 () Bool)

(declare-fun e!1586952 () Bool)

(declare-fun head!5702 (List!29480) C!14988)

(assert (=> b!2502297 (= e!1586952 (not (= (head!5702 tl!4068) (c!398125 lt!895815))))))

(declare-fun b!2502294 () Bool)

(assert (=> b!2502294 (= e!1586953 (not lt!895876))))

(declare-fun d!715577 () Bool)

(declare-fun e!1586948 () Bool)

(assert (=> d!715577 e!1586948))

(declare-fun c!398227 () Bool)

(assert (=> d!715577 (= c!398227 ((_ is EmptyExpr!7415) lt!895815))))

(declare-fun e!1586950 () Bool)

(assert (=> d!715577 (= lt!895876 e!1586950)))

(declare-fun c!398225 () Bool)

(assert (=> d!715577 (= c!398225 (isEmpty!16840 tl!4068))))

(assert (=> d!715577 (validRegex!3041 lt!895815)))

(assert (=> d!715577 (= (matchR!3418 lt!895815 tl!4068) lt!895876)))

(declare-fun b!2502298 () Bool)

(assert (=> b!2502298 (= e!1586950 (matchR!3418 (derivativeStep!1984 lt!895815 (head!5702 tl!4068)) (tail!3979 tl!4068)))))

(declare-fun b!2502299 () Bool)

(assert (=> b!2502299 (= e!1586951 e!1586952)))

(declare-fun res!1058026 () Bool)

(assert (=> b!2502299 (=> res!1058026 e!1586952)))

(assert (=> b!2502299 (= res!1058026 call!154668)))

(declare-fun b!2502300 () Bool)

(assert (=> b!2502300 (= e!1586948 e!1586953)))

(declare-fun c!398226 () Bool)

(assert (=> b!2502300 (= c!398226 ((_ is EmptyLang!7415) lt!895815))))

(declare-fun b!2502301 () Bool)

(assert (=> b!2502301 (= e!1586950 (nullable!2332 lt!895815))))

(declare-fun b!2502302 () Bool)

(assert (=> b!2502302 (= e!1586954 (= (head!5702 tl!4068) (c!398125 lt!895815)))))

(declare-fun b!2502303 () Bool)

(assert (=> b!2502303 (= e!1586948 (= lt!895876 call!154668))))

(declare-fun b!2502304 () Bool)

(declare-fun res!1058028 () Bool)

(assert (=> b!2502304 (=> res!1058028 e!1586952)))

(assert (=> b!2502304 (= res!1058028 (not (isEmpty!16840 (tail!3979 tl!4068))))))

(declare-fun b!2502305 () Bool)

(declare-fun res!1058025 () Bool)

(assert (=> b!2502305 (=> res!1058025 e!1586949)))

(assert (=> b!2502305 (= res!1058025 e!1586954)))

(declare-fun res!1058024 () Bool)

(assert (=> b!2502305 (=> (not res!1058024) (not e!1586954))))

(assert (=> b!2502305 (= res!1058024 lt!895876)))

(assert (= (and d!715577 c!398225) b!2502301))

(assert (= (and d!715577 (not c!398225)) b!2502298))

(assert (= (and d!715577 c!398227) b!2502303))

(assert (= (and d!715577 (not c!398227)) b!2502300))

(assert (= (and b!2502300 c!398226) b!2502294))

(assert (= (and b!2502300 (not c!398226)) b!2502295))

(assert (= (and b!2502295 (not res!1058027)) b!2502305))

(assert (= (and b!2502305 res!1058024) b!2502296))

(assert (= (and b!2502296 res!1058023) b!2502293))

(assert (= (and b!2502293 res!1058021) b!2502302))

(assert (= (and b!2502305 (not res!1058025)) b!2502292))

(assert (= (and b!2502292 res!1058022) b!2502299))

(assert (= (and b!2502299 (not res!1058026)) b!2502304))

(assert (= (and b!2502304 (not res!1058028)) b!2502297))

(assert (= (or b!2502303 b!2502299 b!2502296) bm!154663))

(declare-fun m!2864237 () Bool)

(assert (=> b!2502304 m!2864237))

(assert (=> b!2502304 m!2864237))

(declare-fun m!2864239 () Bool)

(assert (=> b!2502304 m!2864239))

(declare-fun m!2864241 () Bool)

(assert (=> bm!154663 m!2864241))

(declare-fun m!2864243 () Bool)

(assert (=> b!2502302 m!2864243))

(assert (=> b!2502297 m!2864243))

(declare-fun m!2864245 () Bool)

(assert (=> b!2502301 m!2864245))

(assert (=> b!2502293 m!2864237))

(assert (=> b!2502293 m!2864237))

(assert (=> b!2502293 m!2864239))

(assert (=> b!2502298 m!2864243))

(assert (=> b!2502298 m!2864243))

(declare-fun m!2864247 () Bool)

(assert (=> b!2502298 m!2864247))

(assert (=> b!2502298 m!2864237))

(assert (=> b!2502298 m!2864247))

(assert (=> b!2502298 m!2864237))

(declare-fun m!2864249 () Bool)

(assert (=> b!2502298 m!2864249))

(assert (=> d!715577 m!2864241))

(declare-fun m!2864251 () Bool)

(assert (=> d!715577 m!2864251))

(assert (=> b!2501915 d!715577))

(declare-fun b!2502306 () Bool)

(declare-fun e!1586956 () Bool)

(declare-fun e!1586958 () Bool)

(assert (=> b!2502306 (= e!1586956 e!1586958)))

(declare-fun res!1058030 () Bool)

(assert (=> b!2502306 (=> (not res!1058030) (not e!1586958))))

(declare-fun lt!895877 () Bool)

(assert (=> b!2502306 (= res!1058030 (not lt!895877))))

(declare-fun b!2502307 () Bool)

(declare-fun res!1058029 () Bool)

(declare-fun e!1586961 () Bool)

(assert (=> b!2502307 (=> (not res!1058029) (not e!1586961))))

(assert (=> b!2502307 (= res!1058029 (isEmpty!16840 (tail!3979 tl!4068)))))

(declare-fun bm!154664 () Bool)

(declare-fun call!154669 () Bool)

(assert (=> bm!154664 (= call!154669 (isEmpty!16840 tl!4068))))

(declare-fun b!2502309 () Bool)

(declare-fun res!1058035 () Bool)

(assert (=> b!2502309 (=> res!1058035 e!1586956)))

(assert (=> b!2502309 (= res!1058035 (not ((_ is ElementMatch!7415) lt!895822)))))

(declare-fun e!1586960 () Bool)

(assert (=> b!2502309 (= e!1586960 e!1586956)))

(declare-fun b!2502310 () Bool)

(declare-fun res!1058031 () Bool)

(assert (=> b!2502310 (=> (not res!1058031) (not e!1586961))))

(assert (=> b!2502310 (= res!1058031 (not call!154669))))

(declare-fun b!2502311 () Bool)

(declare-fun e!1586959 () Bool)

(assert (=> b!2502311 (= e!1586959 (not (= (head!5702 tl!4068) (c!398125 lt!895822))))))

(declare-fun b!2502308 () Bool)

(assert (=> b!2502308 (= e!1586960 (not lt!895877))))

(declare-fun d!715589 () Bool)

(declare-fun e!1586955 () Bool)

(assert (=> d!715589 e!1586955))

(declare-fun c!398230 () Bool)

(assert (=> d!715589 (= c!398230 ((_ is EmptyExpr!7415) lt!895822))))

(declare-fun e!1586957 () Bool)

(assert (=> d!715589 (= lt!895877 e!1586957)))

(declare-fun c!398228 () Bool)

(assert (=> d!715589 (= c!398228 (isEmpty!16840 tl!4068))))

(assert (=> d!715589 (validRegex!3041 lt!895822)))

(assert (=> d!715589 (= (matchR!3418 lt!895822 tl!4068) lt!895877)))

(declare-fun b!2502312 () Bool)

(assert (=> b!2502312 (= e!1586957 (matchR!3418 (derivativeStep!1984 lt!895822 (head!5702 tl!4068)) (tail!3979 tl!4068)))))

(declare-fun b!2502313 () Bool)

(assert (=> b!2502313 (= e!1586958 e!1586959)))

(declare-fun res!1058034 () Bool)

(assert (=> b!2502313 (=> res!1058034 e!1586959)))

(assert (=> b!2502313 (= res!1058034 call!154669)))

(declare-fun b!2502314 () Bool)

(assert (=> b!2502314 (= e!1586955 e!1586960)))

(declare-fun c!398229 () Bool)

(assert (=> b!2502314 (= c!398229 ((_ is EmptyLang!7415) lt!895822))))

(declare-fun b!2502315 () Bool)

(assert (=> b!2502315 (= e!1586957 (nullable!2332 lt!895822))))

(declare-fun b!2502316 () Bool)

(assert (=> b!2502316 (= e!1586961 (= (head!5702 tl!4068) (c!398125 lt!895822)))))

(declare-fun b!2502317 () Bool)

(assert (=> b!2502317 (= e!1586955 (= lt!895877 call!154669))))

(declare-fun b!2502318 () Bool)

(declare-fun res!1058036 () Bool)

(assert (=> b!2502318 (=> res!1058036 e!1586959)))

(assert (=> b!2502318 (= res!1058036 (not (isEmpty!16840 (tail!3979 tl!4068))))))

(declare-fun b!2502319 () Bool)

(declare-fun res!1058033 () Bool)

(assert (=> b!2502319 (=> res!1058033 e!1586956)))

(assert (=> b!2502319 (= res!1058033 e!1586961)))

(declare-fun res!1058032 () Bool)

(assert (=> b!2502319 (=> (not res!1058032) (not e!1586961))))

(assert (=> b!2502319 (= res!1058032 lt!895877)))

(assert (= (and d!715589 c!398228) b!2502315))

(assert (= (and d!715589 (not c!398228)) b!2502312))

(assert (= (and d!715589 c!398230) b!2502317))

(assert (= (and d!715589 (not c!398230)) b!2502314))

(assert (= (and b!2502314 c!398229) b!2502308))

(assert (= (and b!2502314 (not c!398229)) b!2502309))

(assert (= (and b!2502309 (not res!1058035)) b!2502319))

(assert (= (and b!2502319 res!1058032) b!2502310))

(assert (= (and b!2502310 res!1058031) b!2502307))

(assert (= (and b!2502307 res!1058029) b!2502316))

(assert (= (and b!2502319 (not res!1058033)) b!2502306))

(assert (= (and b!2502306 res!1058030) b!2502313))

(assert (= (and b!2502313 (not res!1058034)) b!2502318))

(assert (= (and b!2502318 (not res!1058036)) b!2502311))

(assert (= (or b!2502317 b!2502313 b!2502310) bm!154664))

(assert (=> b!2502318 m!2864237))

(assert (=> b!2502318 m!2864237))

(assert (=> b!2502318 m!2864239))

(assert (=> bm!154664 m!2864241))

(assert (=> b!2502316 m!2864243))

(assert (=> b!2502311 m!2864243))

(declare-fun m!2864253 () Bool)

(assert (=> b!2502315 m!2864253))

(assert (=> b!2502307 m!2864237))

(assert (=> b!2502307 m!2864237))

(assert (=> b!2502307 m!2864239))

(assert (=> b!2502312 m!2864243))

(assert (=> b!2502312 m!2864243))

(declare-fun m!2864255 () Bool)

(assert (=> b!2502312 m!2864255))

(assert (=> b!2502312 m!2864237))

(assert (=> b!2502312 m!2864255))

(assert (=> b!2502312 m!2864237))

(declare-fun m!2864257 () Bool)

(assert (=> b!2502312 m!2864257))

(assert (=> d!715589 m!2864241))

(declare-fun m!2864259 () Bool)

(assert (=> d!715589 m!2864259))

(assert (=> b!2501916 d!715589))

(declare-fun b!2502320 () Bool)

(declare-fun e!1586963 () Bool)

(declare-fun e!1586965 () Bool)

(assert (=> b!2502320 (= e!1586963 e!1586965)))

(declare-fun res!1058038 () Bool)

(assert (=> b!2502320 (=> (not res!1058038) (not e!1586965))))

(declare-fun lt!895878 () Bool)

(assert (=> b!2502320 (= res!1058038 (not lt!895878))))

(declare-fun b!2502321 () Bool)

(declare-fun res!1058037 () Bool)

(declare-fun e!1586968 () Bool)

(assert (=> b!2502321 (=> (not res!1058037) (not e!1586968))))

(assert (=> b!2502321 (= res!1058037 (isEmpty!16840 (tail!3979 Nil!29380)))))

(declare-fun bm!154665 () Bool)

(declare-fun call!154670 () Bool)

(assert (=> bm!154665 (= call!154670 (isEmpty!16840 Nil!29380))))

(declare-fun b!2502323 () Bool)

(declare-fun res!1058043 () Bool)

(assert (=> b!2502323 (=> res!1058043 e!1586963)))

(assert (=> b!2502323 (= res!1058043 (not ((_ is ElementMatch!7415) (derivative!110 lt!895822 tl!4068))))))

(declare-fun e!1586967 () Bool)

(assert (=> b!2502323 (= e!1586967 e!1586963)))

(declare-fun b!2502324 () Bool)

(declare-fun res!1058039 () Bool)

(assert (=> b!2502324 (=> (not res!1058039) (not e!1586968))))

(assert (=> b!2502324 (= res!1058039 (not call!154670))))

(declare-fun b!2502325 () Bool)

(declare-fun e!1586966 () Bool)

(assert (=> b!2502325 (= e!1586966 (not (= (head!5702 Nil!29380) (c!398125 (derivative!110 lt!895822 tl!4068)))))))

(declare-fun b!2502322 () Bool)

(assert (=> b!2502322 (= e!1586967 (not lt!895878))))

(declare-fun d!715591 () Bool)

(declare-fun e!1586962 () Bool)

(assert (=> d!715591 e!1586962))

(declare-fun c!398233 () Bool)

(assert (=> d!715591 (= c!398233 ((_ is EmptyExpr!7415) (derivative!110 lt!895822 tl!4068)))))

(declare-fun e!1586964 () Bool)

(assert (=> d!715591 (= lt!895878 e!1586964)))

(declare-fun c!398231 () Bool)

(assert (=> d!715591 (= c!398231 (isEmpty!16840 Nil!29380))))

(assert (=> d!715591 (validRegex!3041 (derivative!110 lt!895822 tl!4068))))

(assert (=> d!715591 (= (matchR!3418 (derivative!110 lt!895822 tl!4068) Nil!29380) lt!895878)))

(declare-fun b!2502326 () Bool)

(assert (=> b!2502326 (= e!1586964 (matchR!3418 (derivativeStep!1984 (derivative!110 lt!895822 tl!4068) (head!5702 Nil!29380)) (tail!3979 Nil!29380)))))

(declare-fun b!2502327 () Bool)

(assert (=> b!2502327 (= e!1586965 e!1586966)))

(declare-fun res!1058042 () Bool)

(assert (=> b!2502327 (=> res!1058042 e!1586966)))

(assert (=> b!2502327 (= res!1058042 call!154670)))

(declare-fun b!2502328 () Bool)

(assert (=> b!2502328 (= e!1586962 e!1586967)))

(declare-fun c!398232 () Bool)

(assert (=> b!2502328 (= c!398232 ((_ is EmptyLang!7415) (derivative!110 lt!895822 tl!4068)))))

(declare-fun b!2502329 () Bool)

(assert (=> b!2502329 (= e!1586964 (nullable!2332 (derivative!110 lt!895822 tl!4068)))))

(declare-fun b!2502330 () Bool)

(assert (=> b!2502330 (= e!1586968 (= (head!5702 Nil!29380) (c!398125 (derivative!110 lt!895822 tl!4068))))))

(declare-fun b!2502331 () Bool)

(assert (=> b!2502331 (= e!1586962 (= lt!895878 call!154670))))

(declare-fun b!2502332 () Bool)

(declare-fun res!1058044 () Bool)

(assert (=> b!2502332 (=> res!1058044 e!1586966)))

(assert (=> b!2502332 (= res!1058044 (not (isEmpty!16840 (tail!3979 Nil!29380))))))

(declare-fun b!2502333 () Bool)

(declare-fun res!1058041 () Bool)

(assert (=> b!2502333 (=> res!1058041 e!1586963)))

(assert (=> b!2502333 (= res!1058041 e!1586968)))

(declare-fun res!1058040 () Bool)

(assert (=> b!2502333 (=> (not res!1058040) (not e!1586968))))

(assert (=> b!2502333 (= res!1058040 lt!895878)))

(assert (= (and d!715591 c!398231) b!2502329))

(assert (= (and d!715591 (not c!398231)) b!2502326))

(assert (= (and d!715591 c!398233) b!2502331))

(assert (= (and d!715591 (not c!398233)) b!2502328))

(assert (= (and b!2502328 c!398232) b!2502322))

(assert (= (and b!2502328 (not c!398232)) b!2502323))

(assert (= (and b!2502323 (not res!1058043)) b!2502333))

(assert (= (and b!2502333 res!1058040) b!2502324))

(assert (= (and b!2502324 res!1058039) b!2502321))

(assert (= (and b!2502321 res!1058037) b!2502330))

(assert (= (and b!2502333 (not res!1058041)) b!2502320))

(assert (= (and b!2502320 res!1058038) b!2502327))

(assert (= (and b!2502327 (not res!1058042)) b!2502332))

(assert (= (and b!2502332 (not res!1058044)) b!2502325))

(assert (= (or b!2502331 b!2502327 b!2502324) bm!154665))

(declare-fun m!2864261 () Bool)

(assert (=> b!2502332 m!2864261))

(assert (=> b!2502332 m!2864261))

(declare-fun m!2864263 () Bool)

(assert (=> b!2502332 m!2864263))

(declare-fun m!2864265 () Bool)

(assert (=> bm!154665 m!2864265))

(declare-fun m!2864267 () Bool)

(assert (=> b!2502330 m!2864267))

(assert (=> b!2502325 m!2864267))

(assert (=> b!2502329 m!2864017))

(declare-fun m!2864269 () Bool)

(assert (=> b!2502329 m!2864269))

(assert (=> b!2502321 m!2864261))

(assert (=> b!2502321 m!2864261))

(assert (=> b!2502321 m!2864263))

(assert (=> b!2502326 m!2864267))

(assert (=> b!2502326 m!2864017))

(assert (=> b!2502326 m!2864267))

(declare-fun m!2864271 () Bool)

(assert (=> b!2502326 m!2864271))

(assert (=> b!2502326 m!2864261))

(assert (=> b!2502326 m!2864271))

(assert (=> b!2502326 m!2864261))

(declare-fun m!2864273 () Bool)

(assert (=> b!2502326 m!2864273))

(assert (=> d!715591 m!2864265))

(assert (=> d!715591 m!2864017))

(declare-fun m!2864275 () Bool)

(assert (=> d!715591 m!2864275))

(assert (=> b!2501916 d!715591))

(declare-fun d!715593 () Bool)

(declare-fun e!1586974 () Bool)

(assert (=> d!715593 e!1586974))

(declare-fun res!1058049 () Bool)

(assert (=> d!715593 (=> res!1058049 e!1586974)))

(assert (=> d!715593 (= res!1058049 (matchR!3418 lt!895817 tl!4068))))

(declare-fun lt!895881 () Unit!43087)

(declare-fun choose!14777 (Regex!7415 Regex!7415 List!29480) Unit!43087)

(assert (=> d!715593 (= lt!895881 (choose!14777 lt!895817 lt!895815 tl!4068))))

(declare-fun e!1586973 () Bool)

(assert (=> d!715593 e!1586973))

(declare-fun res!1058050 () Bool)

(assert (=> d!715593 (=> (not res!1058050) (not e!1586973))))

(assert (=> d!715593 (= res!1058050 (validRegex!3041 lt!895817))))

(assert (=> d!715593 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!110 lt!895817 lt!895815 tl!4068) lt!895881)))

(declare-fun b!2502338 () Bool)

(assert (=> b!2502338 (= e!1586973 (validRegex!3041 lt!895815))))

(declare-fun b!2502339 () Bool)

(assert (=> b!2502339 (= e!1586974 (matchR!3418 lt!895815 tl!4068))))

(assert (= (and d!715593 res!1058050) b!2502338))

(assert (= (and d!715593 (not res!1058049)) b!2502339))

(assert (=> d!715593 m!2864029))

(declare-fun m!2864277 () Bool)

(assert (=> d!715593 m!2864277))

(declare-fun m!2864279 () Bool)

(assert (=> d!715593 m!2864279))

(assert (=> b!2502338 m!2864251))

(assert (=> b!2502339 m!2864009))

(assert (=> b!2501916 d!715593))

(declare-fun d!715595 () Bool)

(declare-fun lt!895882 () Regex!7415)

(assert (=> d!715595 (validRegex!3041 lt!895882)))

(declare-fun e!1586975 () Regex!7415)

(assert (=> d!715595 (= lt!895882 e!1586975)))

(declare-fun c!398234 () Bool)

(assert (=> d!715595 (= c!398234 ((_ is Cons!29380) tl!4068))))

(assert (=> d!715595 (validRegex!3041 lt!895822)))

(assert (=> d!715595 (= (derivative!110 lt!895822 tl!4068) lt!895882)))

(declare-fun b!2502340 () Bool)

(assert (=> b!2502340 (= e!1586975 (derivative!110 (derivativeStep!1984 lt!895822 (h!34800 tl!4068)) (t!211179 tl!4068)))))

(declare-fun b!2502341 () Bool)

(assert (=> b!2502341 (= e!1586975 lt!895822)))

(assert (= (and d!715595 c!398234) b!2502340))

(assert (= (and d!715595 (not c!398234)) b!2502341))

(declare-fun m!2864281 () Bool)

(assert (=> d!715595 m!2864281))

(assert (=> d!715595 m!2864259))

(declare-fun m!2864283 () Bool)

(assert (=> b!2502340 m!2864283))

(assert (=> b!2502340 m!2864283))

(declare-fun m!2864285 () Bool)

(assert (=> b!2502340 m!2864285))

(assert (=> b!2501916 d!715595))

(declare-fun b!2502342 () Bool)

(declare-fun e!1586977 () Bool)

(declare-fun e!1586979 () Bool)

(assert (=> b!2502342 (= e!1586977 e!1586979)))

(declare-fun res!1058052 () Bool)

(assert (=> b!2502342 (=> (not res!1058052) (not e!1586979))))

(declare-fun lt!895883 () Bool)

(assert (=> b!2502342 (= res!1058052 (not lt!895883))))

(declare-fun b!2502343 () Bool)

(declare-fun res!1058051 () Bool)

(declare-fun e!1586982 () Bool)

(assert (=> b!2502343 (=> (not res!1058051) (not e!1586982))))

(assert (=> b!2502343 (= res!1058051 (isEmpty!16840 (tail!3979 tl!4068)))))

(declare-fun bm!154666 () Bool)

(declare-fun call!154671 () Bool)

(assert (=> bm!154666 (= call!154671 (isEmpty!16840 tl!4068))))

(declare-fun b!2502345 () Bool)

(declare-fun res!1058057 () Bool)

(assert (=> b!2502345 (=> res!1058057 e!1586977)))

(assert (=> b!2502345 (= res!1058057 (not ((_ is ElementMatch!7415) lt!895817)))))

(declare-fun e!1586981 () Bool)

(assert (=> b!2502345 (= e!1586981 e!1586977)))

(declare-fun b!2502346 () Bool)

(declare-fun res!1058053 () Bool)

(assert (=> b!2502346 (=> (not res!1058053) (not e!1586982))))

(assert (=> b!2502346 (= res!1058053 (not call!154671))))

(declare-fun b!2502347 () Bool)

(declare-fun e!1586980 () Bool)

(assert (=> b!2502347 (= e!1586980 (not (= (head!5702 tl!4068) (c!398125 lt!895817))))))

(declare-fun b!2502344 () Bool)

(assert (=> b!2502344 (= e!1586981 (not lt!895883))))

(declare-fun d!715597 () Bool)

(declare-fun e!1586976 () Bool)

(assert (=> d!715597 e!1586976))

(declare-fun c!398237 () Bool)

(assert (=> d!715597 (= c!398237 ((_ is EmptyExpr!7415) lt!895817))))

(declare-fun e!1586978 () Bool)

(assert (=> d!715597 (= lt!895883 e!1586978)))

(declare-fun c!398235 () Bool)

(assert (=> d!715597 (= c!398235 (isEmpty!16840 tl!4068))))

(assert (=> d!715597 (validRegex!3041 lt!895817)))

(assert (=> d!715597 (= (matchR!3418 lt!895817 tl!4068) lt!895883)))

(declare-fun b!2502348 () Bool)

(assert (=> b!2502348 (= e!1586978 (matchR!3418 (derivativeStep!1984 lt!895817 (head!5702 tl!4068)) (tail!3979 tl!4068)))))

(declare-fun b!2502349 () Bool)

(assert (=> b!2502349 (= e!1586979 e!1586980)))

(declare-fun res!1058056 () Bool)

(assert (=> b!2502349 (=> res!1058056 e!1586980)))

(assert (=> b!2502349 (= res!1058056 call!154671)))

(declare-fun b!2502350 () Bool)

(assert (=> b!2502350 (= e!1586976 e!1586981)))

(declare-fun c!398236 () Bool)

(assert (=> b!2502350 (= c!398236 ((_ is EmptyLang!7415) lt!895817))))

(declare-fun b!2502351 () Bool)

(assert (=> b!2502351 (= e!1586978 (nullable!2332 lt!895817))))

(declare-fun b!2502352 () Bool)

(assert (=> b!2502352 (= e!1586982 (= (head!5702 tl!4068) (c!398125 lt!895817)))))

(declare-fun b!2502353 () Bool)

(assert (=> b!2502353 (= e!1586976 (= lt!895883 call!154671))))

(declare-fun b!2502354 () Bool)

(declare-fun res!1058058 () Bool)

(assert (=> b!2502354 (=> res!1058058 e!1586980)))

(assert (=> b!2502354 (= res!1058058 (not (isEmpty!16840 (tail!3979 tl!4068))))))

(declare-fun b!2502355 () Bool)

(declare-fun res!1058055 () Bool)

(assert (=> b!2502355 (=> res!1058055 e!1586977)))

(assert (=> b!2502355 (= res!1058055 e!1586982)))

(declare-fun res!1058054 () Bool)

(assert (=> b!2502355 (=> (not res!1058054) (not e!1586982))))

(assert (=> b!2502355 (= res!1058054 lt!895883)))

(assert (= (and d!715597 c!398235) b!2502351))

(assert (= (and d!715597 (not c!398235)) b!2502348))

(assert (= (and d!715597 c!398237) b!2502353))

(assert (= (and d!715597 (not c!398237)) b!2502350))

(assert (= (and b!2502350 c!398236) b!2502344))

(assert (= (and b!2502350 (not c!398236)) b!2502345))

(assert (= (and b!2502345 (not res!1058057)) b!2502355))

(assert (= (and b!2502355 res!1058054) b!2502346))

(assert (= (and b!2502346 res!1058053) b!2502343))

(assert (= (and b!2502343 res!1058051) b!2502352))

(assert (= (and b!2502355 (not res!1058055)) b!2502342))

(assert (= (and b!2502342 res!1058052) b!2502349))

(assert (= (and b!2502349 (not res!1058056)) b!2502354))

(assert (= (and b!2502354 (not res!1058058)) b!2502347))

(assert (= (or b!2502353 b!2502349 b!2502346) bm!154666))

(assert (=> b!2502354 m!2864237))

(assert (=> b!2502354 m!2864237))

(assert (=> b!2502354 m!2864239))

(assert (=> bm!154666 m!2864241))

(assert (=> b!2502352 m!2864243))

(assert (=> b!2502347 m!2864243))

(declare-fun m!2864287 () Bool)

(assert (=> b!2502351 m!2864287))

(assert (=> b!2502343 m!2864237))

(assert (=> b!2502343 m!2864237))

(assert (=> b!2502343 m!2864239))

(assert (=> b!2502348 m!2864243))

(assert (=> b!2502348 m!2864243))

(declare-fun m!2864289 () Bool)

(assert (=> b!2502348 m!2864289))

(assert (=> b!2502348 m!2864237))

(assert (=> b!2502348 m!2864289))

(assert (=> b!2502348 m!2864237))

(declare-fun m!2864291 () Bool)

(assert (=> b!2502348 m!2864291))

(assert (=> d!715597 m!2864241))

(assert (=> d!715597 m!2864279))

(assert (=> b!2501916 d!715597))

(declare-fun d!715599 () Bool)

(assert (=> d!715599 (= (matchR!3418 lt!895822 tl!4068) (matchR!3418 (derivative!110 lt!895822 tl!4068) Nil!29380))))

(declare-fun lt!895886 () Unit!43087)

(declare-fun choose!14778 (Regex!7415 List!29480) Unit!43087)

(assert (=> d!715599 (= lt!895886 (choose!14778 lt!895822 tl!4068))))

(assert (=> d!715599 (validRegex!3041 lt!895822)))

(assert (=> d!715599 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!64 lt!895822 tl!4068) lt!895886)))

(declare-fun bs!468595 () Bool)

(assert (= bs!468595 d!715599))

(assert (=> bs!468595 m!2864017))

(assert (=> bs!468595 m!2864019))

(assert (=> bs!468595 m!2864259))

(assert (=> bs!468595 m!2864027))

(declare-fun m!2864293 () Bool)

(assert (=> bs!468595 m!2864293))

(assert (=> bs!468595 m!2864017))

(assert (=> b!2501916 d!715599))

(declare-fun b!2502356 () Bool)

(declare-fun e!1586986 () Regex!7415)

(assert (=> b!2502356 (= e!1586986 EmptyLang!7415)))

(declare-fun b!2502357 () Bool)

(declare-fun e!1586983 () Regex!7415)

(declare-fun call!154674 () Regex!7415)

(assert (=> b!2502357 (= e!1586983 (Union!7415 (Concat!12111 call!154674 (regTwo!15342 (regTwo!15342 r!27340))) EmptyLang!7415))))

(declare-fun b!2502358 () Bool)

(declare-fun e!1586987 () Regex!7415)

(assert (=> b!2502358 (= e!1586986 e!1586987)))

(declare-fun c!398238 () Bool)

(assert (=> b!2502358 (= c!398238 ((_ is ElementMatch!7415) (regTwo!15342 r!27340)))))

(declare-fun b!2502359 () Bool)

(declare-fun e!1586985 () Regex!7415)

(declare-fun e!1586984 () Regex!7415)

(assert (=> b!2502359 (= e!1586985 e!1586984)))

(declare-fun c!398239 () Bool)

(assert (=> b!2502359 (= c!398239 ((_ is Star!7415) (regTwo!15342 r!27340)))))

(declare-fun b!2502360 () Bool)

(declare-fun c!398241 () Bool)

(assert (=> b!2502360 (= c!398241 (nullable!2332 (regOne!15342 (regTwo!15342 r!27340))))))

(assert (=> b!2502360 (= e!1586984 e!1586983)))

(declare-fun call!154675 () Regex!7415)

(declare-fun bm!154667 () Bool)

(declare-fun c!398242 () Bool)

(assert (=> bm!154667 (= call!154675 (derivativeStep!1984 (ite c!398242 (regTwo!15343 (regTwo!15342 r!27340)) (regTwo!15342 (regTwo!15342 r!27340))) c!14016))))

(declare-fun b!2502361 () Bool)

(assert (=> b!2502361 (= e!1586987 (ite (= c!14016 (c!398125 (regTwo!15342 r!27340))) EmptyExpr!7415 EmptyLang!7415))))

(declare-fun b!2502362 () Bool)

(assert (=> b!2502362 (= e!1586983 (Union!7415 (Concat!12111 call!154674 (regTwo!15342 (regTwo!15342 r!27340))) call!154675))))

(declare-fun b!2502363 () Bool)

(declare-fun call!154673 () Regex!7415)

(assert (=> b!2502363 (= e!1586985 (Union!7415 call!154673 call!154675))))

(declare-fun bm!154668 () Bool)

(assert (=> bm!154668 (= call!154673 (derivativeStep!1984 (ite c!398242 (regOne!15343 (regTwo!15342 r!27340)) (ite c!398239 (reg!7744 (regTwo!15342 r!27340)) (regOne!15342 (regTwo!15342 r!27340)))) c!14016))))

(declare-fun bm!154669 () Bool)

(declare-fun call!154672 () Regex!7415)

(assert (=> bm!154669 (= call!154674 call!154672)))

(declare-fun d!715601 () Bool)

(declare-fun lt!895887 () Regex!7415)

(assert (=> d!715601 (validRegex!3041 lt!895887)))

(assert (=> d!715601 (= lt!895887 e!1586986)))

(declare-fun c!398240 () Bool)

(assert (=> d!715601 (= c!398240 (or ((_ is EmptyExpr!7415) (regTwo!15342 r!27340)) ((_ is EmptyLang!7415) (regTwo!15342 r!27340))))))

(assert (=> d!715601 (validRegex!3041 (regTwo!15342 r!27340))))

(assert (=> d!715601 (= (derivativeStep!1984 (regTwo!15342 r!27340) c!14016) lt!895887)))

(declare-fun bm!154670 () Bool)

(assert (=> bm!154670 (= call!154672 call!154673)))

(declare-fun b!2502364 () Bool)

(assert (=> b!2502364 (= c!398242 ((_ is Union!7415) (regTwo!15342 r!27340)))))

(assert (=> b!2502364 (= e!1586987 e!1586985)))

(declare-fun b!2502365 () Bool)

(assert (=> b!2502365 (= e!1586984 (Concat!12111 call!154672 (regTwo!15342 r!27340)))))

(assert (= (and d!715601 c!398240) b!2502356))

(assert (= (and d!715601 (not c!398240)) b!2502358))

(assert (= (and b!2502358 c!398238) b!2502361))

(assert (= (and b!2502358 (not c!398238)) b!2502364))

(assert (= (and b!2502364 c!398242) b!2502363))

(assert (= (and b!2502364 (not c!398242)) b!2502359))

(assert (= (and b!2502359 c!398239) b!2502365))

(assert (= (and b!2502359 (not c!398239)) b!2502360))

(assert (= (and b!2502360 c!398241) b!2502362))

(assert (= (and b!2502360 (not c!398241)) b!2502357))

(assert (= (or b!2502362 b!2502357) bm!154669))

(assert (= (or b!2502365 bm!154669) bm!154670))

(assert (= (or b!2502363 b!2502362) bm!154667))

(assert (= (or b!2502363 bm!154670) bm!154668))

(declare-fun m!2864295 () Bool)

(assert (=> b!2502360 m!2864295))

(declare-fun m!2864297 () Bool)

(assert (=> bm!154667 m!2864297))

(declare-fun m!2864299 () Bool)

(assert (=> bm!154668 m!2864299))

(declare-fun m!2864301 () Bool)

(assert (=> d!715601 m!2864301))

(declare-fun m!2864303 () Bool)

(assert (=> d!715601 m!2864303))

(assert (=> b!2501916 d!715601))

(declare-fun b!2502366 () Bool)

(declare-fun e!1586991 () Regex!7415)

(assert (=> b!2502366 (= e!1586991 EmptyLang!7415)))

(declare-fun b!2502367 () Bool)

(declare-fun e!1586988 () Regex!7415)

(declare-fun call!154678 () Regex!7415)

(assert (=> b!2502367 (= e!1586988 (Union!7415 (Concat!12111 call!154678 (regTwo!15342 (regOne!15342 r!27340))) EmptyLang!7415))))

(declare-fun b!2502368 () Bool)

(declare-fun e!1586992 () Regex!7415)

(assert (=> b!2502368 (= e!1586991 e!1586992)))

(declare-fun c!398243 () Bool)

(assert (=> b!2502368 (= c!398243 ((_ is ElementMatch!7415) (regOne!15342 r!27340)))))

(declare-fun b!2502369 () Bool)

(declare-fun e!1586990 () Regex!7415)

(declare-fun e!1586989 () Regex!7415)

(assert (=> b!2502369 (= e!1586990 e!1586989)))

(declare-fun c!398244 () Bool)

(assert (=> b!2502369 (= c!398244 ((_ is Star!7415) (regOne!15342 r!27340)))))

(declare-fun b!2502370 () Bool)

(declare-fun c!398246 () Bool)

(assert (=> b!2502370 (= c!398246 (nullable!2332 (regOne!15342 (regOne!15342 r!27340))))))

(assert (=> b!2502370 (= e!1586989 e!1586988)))

(declare-fun call!154679 () Regex!7415)

(declare-fun bm!154671 () Bool)

(declare-fun c!398247 () Bool)

(assert (=> bm!154671 (= call!154679 (derivativeStep!1984 (ite c!398247 (regTwo!15343 (regOne!15342 r!27340)) (regTwo!15342 (regOne!15342 r!27340))) c!14016))))

(declare-fun b!2502371 () Bool)

(assert (=> b!2502371 (= e!1586992 (ite (= c!14016 (c!398125 (regOne!15342 r!27340))) EmptyExpr!7415 EmptyLang!7415))))

(declare-fun b!2502372 () Bool)

(assert (=> b!2502372 (= e!1586988 (Union!7415 (Concat!12111 call!154678 (regTwo!15342 (regOne!15342 r!27340))) call!154679))))

(declare-fun b!2502373 () Bool)

(declare-fun call!154677 () Regex!7415)

(assert (=> b!2502373 (= e!1586990 (Union!7415 call!154677 call!154679))))

(declare-fun bm!154672 () Bool)

(assert (=> bm!154672 (= call!154677 (derivativeStep!1984 (ite c!398247 (regOne!15343 (regOne!15342 r!27340)) (ite c!398244 (reg!7744 (regOne!15342 r!27340)) (regOne!15342 (regOne!15342 r!27340)))) c!14016))))

(declare-fun bm!154673 () Bool)

(declare-fun call!154676 () Regex!7415)

(assert (=> bm!154673 (= call!154678 call!154676)))

(declare-fun d!715603 () Bool)

(declare-fun lt!895888 () Regex!7415)

(assert (=> d!715603 (validRegex!3041 lt!895888)))

(assert (=> d!715603 (= lt!895888 e!1586991)))

(declare-fun c!398245 () Bool)

(assert (=> d!715603 (= c!398245 (or ((_ is EmptyExpr!7415) (regOne!15342 r!27340)) ((_ is EmptyLang!7415) (regOne!15342 r!27340))))))

(assert (=> d!715603 (validRegex!3041 (regOne!15342 r!27340))))

(assert (=> d!715603 (= (derivativeStep!1984 (regOne!15342 r!27340) c!14016) lt!895888)))

(declare-fun bm!154674 () Bool)

(assert (=> bm!154674 (= call!154676 call!154677)))

(declare-fun b!2502374 () Bool)

(assert (=> b!2502374 (= c!398247 ((_ is Union!7415) (regOne!15342 r!27340)))))

(assert (=> b!2502374 (= e!1586992 e!1586990)))

(declare-fun b!2502375 () Bool)

(assert (=> b!2502375 (= e!1586989 (Concat!12111 call!154676 (regOne!15342 r!27340)))))

(assert (= (and d!715603 c!398245) b!2502366))

(assert (= (and d!715603 (not c!398245)) b!2502368))

(assert (= (and b!2502368 c!398243) b!2502371))

(assert (= (and b!2502368 (not c!398243)) b!2502374))

(assert (= (and b!2502374 c!398247) b!2502373))

(assert (= (and b!2502374 (not c!398247)) b!2502369))

(assert (= (and b!2502369 c!398244) b!2502375))

(assert (= (and b!2502369 (not c!398244)) b!2502370))

(assert (= (and b!2502370 c!398246) b!2502372))

(assert (= (and b!2502370 (not c!398246)) b!2502367))

(assert (= (or b!2502372 b!2502367) bm!154673))

(assert (= (or b!2502375 bm!154673) bm!154674))

(assert (= (or b!2502373 b!2502372) bm!154671))

(assert (= (or b!2502373 bm!154674) bm!154672))

(declare-fun m!2864305 () Bool)

(assert (=> b!2502370 m!2864305))

(declare-fun m!2864307 () Bool)

(assert (=> bm!154671 m!2864307))

(declare-fun m!2864309 () Bool)

(assert (=> bm!154672 m!2864309))

(declare-fun m!2864311 () Bool)

(assert (=> d!715603 m!2864311))

(assert (=> d!715603 m!2864037))

(assert (=> b!2501916 d!715603))

(declare-fun b!2502380 () Bool)

(declare-fun e!1586995 () Bool)

(declare-fun tp!801027 () Bool)

(assert (=> b!2502380 (= e!1586995 (and tp_is_empty!12685 tp!801027))))

(assert (=> b!2501913 (= tp!800982 e!1586995)))

(assert (= (and b!2501913 ((_ is Cons!29380) (t!211179 tl!4068))) b!2502380))

(declare-fun b!2502391 () Bool)

(declare-fun e!1586998 () Bool)

(assert (=> b!2502391 (= e!1586998 tp_is_empty!12685)))

(declare-fun b!2502394 () Bool)

(declare-fun tp!801040 () Bool)

(declare-fun tp!801039 () Bool)

(assert (=> b!2502394 (= e!1586998 (and tp!801040 tp!801039))))

(assert (=> b!2501909 (= tp!800985 e!1586998)))

(declare-fun b!2502392 () Bool)

(declare-fun tp!801042 () Bool)

(declare-fun tp!801038 () Bool)

(assert (=> b!2502392 (= e!1586998 (and tp!801042 tp!801038))))

(declare-fun b!2502393 () Bool)

(declare-fun tp!801041 () Bool)

(assert (=> b!2502393 (= e!1586998 tp!801041)))

(assert (= (and b!2501909 ((_ is ElementMatch!7415) (regOne!15342 r!27340))) b!2502391))

(assert (= (and b!2501909 ((_ is Concat!12111) (regOne!15342 r!27340))) b!2502392))

(assert (= (and b!2501909 ((_ is Star!7415) (regOne!15342 r!27340))) b!2502393))

(assert (= (and b!2501909 ((_ is Union!7415) (regOne!15342 r!27340))) b!2502394))

(declare-fun b!2502395 () Bool)

(declare-fun e!1586999 () Bool)

(assert (=> b!2502395 (= e!1586999 tp_is_empty!12685)))

(declare-fun b!2502398 () Bool)

(declare-fun tp!801045 () Bool)

(declare-fun tp!801044 () Bool)

(assert (=> b!2502398 (= e!1586999 (and tp!801045 tp!801044))))

(assert (=> b!2501909 (= tp!800984 e!1586999)))

(declare-fun b!2502396 () Bool)

(declare-fun tp!801047 () Bool)

(declare-fun tp!801043 () Bool)

(assert (=> b!2502396 (= e!1586999 (and tp!801047 tp!801043))))

(declare-fun b!2502397 () Bool)

(declare-fun tp!801046 () Bool)

(assert (=> b!2502397 (= e!1586999 tp!801046)))

(assert (= (and b!2501909 ((_ is ElementMatch!7415) (regTwo!15342 r!27340))) b!2502395))

(assert (= (and b!2501909 ((_ is Concat!12111) (regTwo!15342 r!27340))) b!2502396))

(assert (= (and b!2501909 ((_ is Star!7415) (regTwo!15342 r!27340))) b!2502397))

(assert (= (and b!2501909 ((_ is Union!7415) (regTwo!15342 r!27340))) b!2502398))

(declare-fun b!2502399 () Bool)

(declare-fun e!1587000 () Bool)

(assert (=> b!2502399 (= e!1587000 tp_is_empty!12685)))

(declare-fun b!2502402 () Bool)

(declare-fun tp!801050 () Bool)

(declare-fun tp!801049 () Bool)

(assert (=> b!2502402 (= e!1587000 (and tp!801050 tp!801049))))

(assert (=> b!2501911 (= tp!800986 e!1587000)))

(declare-fun b!2502400 () Bool)

(declare-fun tp!801052 () Bool)

(declare-fun tp!801048 () Bool)

(assert (=> b!2502400 (= e!1587000 (and tp!801052 tp!801048))))

(declare-fun b!2502401 () Bool)

(declare-fun tp!801051 () Bool)

(assert (=> b!2502401 (= e!1587000 tp!801051)))

(assert (= (and b!2501911 ((_ is ElementMatch!7415) (reg!7744 r!27340))) b!2502399))

(assert (= (and b!2501911 ((_ is Concat!12111) (reg!7744 r!27340))) b!2502400))

(assert (= (and b!2501911 ((_ is Star!7415) (reg!7744 r!27340))) b!2502401))

(assert (= (and b!2501911 ((_ is Union!7415) (reg!7744 r!27340))) b!2502402))

(declare-fun b!2502403 () Bool)

(declare-fun e!1587001 () Bool)

(assert (=> b!2502403 (= e!1587001 tp_is_empty!12685)))

(declare-fun b!2502406 () Bool)

(declare-fun tp!801055 () Bool)

(declare-fun tp!801054 () Bool)

(assert (=> b!2502406 (= e!1587001 (and tp!801055 tp!801054))))

(assert (=> b!2501917 (= tp!800981 e!1587001)))

(declare-fun b!2502404 () Bool)

(declare-fun tp!801057 () Bool)

(declare-fun tp!801053 () Bool)

(assert (=> b!2502404 (= e!1587001 (and tp!801057 tp!801053))))

(declare-fun b!2502405 () Bool)

(declare-fun tp!801056 () Bool)

(assert (=> b!2502405 (= e!1587001 tp!801056)))

(assert (= (and b!2501917 ((_ is ElementMatch!7415) (regOne!15343 r!27340))) b!2502403))

(assert (= (and b!2501917 ((_ is Concat!12111) (regOne!15343 r!27340))) b!2502404))

(assert (= (and b!2501917 ((_ is Star!7415) (regOne!15343 r!27340))) b!2502405))

(assert (= (and b!2501917 ((_ is Union!7415) (regOne!15343 r!27340))) b!2502406))

(declare-fun b!2502407 () Bool)

(declare-fun e!1587002 () Bool)

(assert (=> b!2502407 (= e!1587002 tp_is_empty!12685)))

(declare-fun b!2502410 () Bool)

(declare-fun tp!801060 () Bool)

(declare-fun tp!801059 () Bool)

(assert (=> b!2502410 (= e!1587002 (and tp!801060 tp!801059))))

(assert (=> b!2501917 (= tp!800983 e!1587002)))

(declare-fun b!2502408 () Bool)

(declare-fun tp!801062 () Bool)

(declare-fun tp!801058 () Bool)

(assert (=> b!2502408 (= e!1587002 (and tp!801062 tp!801058))))

(declare-fun b!2502409 () Bool)

(declare-fun tp!801061 () Bool)

(assert (=> b!2502409 (= e!1587002 tp!801061)))

(assert (= (and b!2501917 ((_ is ElementMatch!7415) (regTwo!15343 r!27340))) b!2502407))

(assert (= (and b!2501917 ((_ is Concat!12111) (regTwo!15343 r!27340))) b!2502408))

(assert (= (and b!2501917 ((_ is Star!7415) (regTwo!15343 r!27340))) b!2502409))

(assert (= (and b!2501917 ((_ is Union!7415) (regTwo!15343 r!27340))) b!2502410))

(check-sat (not b!2502330) (not b!2502397) (not d!715603) (not b!2502340) (not b!2502329) (not bm!154630) (not d!715537) (not b!2502316) (not d!715551) (not b!2502370) (not b!2502307) (not b!2502304) (not bm!154616) (not b!2502318) (not bm!154671) (not d!715553) (not b!2502401) (not b!2502298) (not b!2502409) (not b!2502392) (not bm!154617) (not b!2502410) (not b!2502396) (not b!2502133) (not b!2502293) (not b!2502297) (not b!2502321) (not bm!154666) (not b!2502301) (not b!2502402) (not b!2502325) (not b!2502351) (not b!2502408) (not b!2502393) (not d!715591) (not b!2502135) (not d!715595) (not bm!154635) (not d!715601) (not b!2502343) (not d!715539) (not b!2502046) (not b!2502338) (not b!2501951) (not b!2502302) (not b!2502326) (not b!2502311) (not bm!154636) (not bm!154665) (not d!715565) (not b!2502136) (not b!2502394) (not b!2502131) (not b!2502312) (not b!2502332) (not d!715577) (not b!2502347) (not b!2502360) (not b!2502138) (not b!2502315) (not b!2502132) (not d!715541) (not d!715589) (not b!2502009) (not bm!154663) (not b!2502406) tp_is_empty!12685 (not bm!154668) (not b!2502400) (not d!715593) (not bm!154667) (not b!2502354) (not bm!154672) (not b!2502404) (not b!2502352) (not bm!154664) (not b!2502405) (not b!2502339) (not b!2502348) (not bm!154629) (not d!715575) (not d!715599) (not b!2502163) (not d!715597) (not b!2502398) (not b!2502380))
(check-sat)
