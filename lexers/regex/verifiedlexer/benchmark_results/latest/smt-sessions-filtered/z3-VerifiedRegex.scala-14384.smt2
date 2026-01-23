; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749972 () Bool)

(assert start!749972)

(declare-fun b!7947006 () Bool)

(declare-fun e!4688432 () Bool)

(declare-fun tp!2364118 () Bool)

(assert (=> b!7947006 (= e!4688432 tp!2364118)))

(declare-fun b!7947007 () Bool)

(declare-fun res!3151984 () Bool)

(declare-fun e!4688433 () Bool)

(assert (=> b!7947007 (=> (not res!3151984) (not e!4688433))))

(declare-datatypes ((C!43236 0))(
  ( (C!43237 (val!32166 Int)) )
))
(declare-datatypes ((Regex!21449 0))(
  ( (ElementMatch!21449 (c!1459806 C!43236)) (Concat!30448 (regOne!43410 Regex!21449) (regTwo!43410 Regex!21449)) (EmptyExpr!21449) (Star!21449 (reg!21778 Regex!21449)) (EmptyLang!21449) (Union!21449 (regOne!43411 Regex!21449) (regTwo!43411 Regex!21449)) )
))
(declare-fun baseR!116 () Regex!21449)

(declare-datatypes ((List!74678 0))(
  ( (Nil!74554) (Cons!74554 (h!81002 C!43236) (t!390421 List!74678)) )
))
(declare-fun testedP!447 () List!74678)

(declare-fun r!24602 () Regex!21449)

(declare-fun derivative!635 (Regex!21449 List!74678) Regex!21449)

(assert (=> b!7947007 (= res!3151984 (= (derivative!635 baseR!116 testedP!447) r!24602))))

(declare-fun res!3151989 () Bool)

(assert (=> start!749972 (=> (not res!3151989) (not e!4688433))))

(declare-fun validRegex!11753 (Regex!21449) Bool)

(assert (=> start!749972 (= res!3151989 (validRegex!11753 baseR!116))))

(assert (=> start!749972 e!4688433))

(assert (=> start!749972 e!4688432))

(declare-fun e!4688435 () Bool)

(assert (=> start!749972 e!4688435))

(declare-fun e!4688434 () Bool)

(assert (=> start!749972 e!4688434))

(declare-fun e!4688436 () Bool)

(assert (=> start!749972 e!4688436))

(declare-fun b!7947008 () Bool)

(declare-fun tp!2364113 () Bool)

(declare-fun tp!2364107 () Bool)

(assert (=> b!7947008 (= e!4688432 (and tp!2364113 tp!2364107))))

(declare-fun b!7947009 () Bool)

(declare-fun tp_is_empty!53441 () Bool)

(assert (=> b!7947009 (= e!4688436 tp_is_empty!53441)))

(declare-fun b!7947010 () Bool)

(assert (=> b!7947010 (= e!4688432 tp_is_empty!53441)))

(declare-fun b!7947011 () Bool)

(declare-fun input!7927 () List!74678)

(declare-fun e!4688437 () Bool)

(declare-fun lt!2698581 () List!74678)

(declare-fun ++!18327 (List!74678 List!74678) List!74678)

(assert (=> b!7947011 (= e!4688437 (not (= (++!18327 testedP!447 lt!2698581) input!7927)))))

(declare-fun b!7947012 () Bool)

(declare-fun res!3151986 () Bool)

(assert (=> b!7947012 (=> (not res!3151986) (not e!4688437))))

(assert (=> b!7947012 (= res!3151986 (= testedP!447 input!7927))))

(declare-fun b!7947013 () Bool)

(declare-fun tp!2364109 () Bool)

(assert (=> b!7947013 (= e!4688436 tp!2364109)))

(declare-fun b!7947014 () Bool)

(declare-fun tp!2364117 () Bool)

(assert (=> b!7947014 (= e!4688435 (and tp_is_empty!53441 tp!2364117))))

(declare-fun b!7947015 () Bool)

(declare-fun res!3151990 () Bool)

(assert (=> b!7947015 (=> (not res!3151990) (not e!4688437))))

(declare-fun nullable!9560 (Regex!21449) Bool)

(assert (=> b!7947015 (= res!3151990 (not (nullable!9560 r!24602)))))

(declare-fun b!7947016 () Bool)

(declare-fun res!3151988 () Bool)

(assert (=> b!7947016 (=> (not res!3151988) (not e!4688437))))

(assert (=> b!7947016 (= res!3151988 (validRegex!11753 r!24602))))

(declare-fun b!7947017 () Bool)

(declare-fun tp!2364108 () Bool)

(declare-fun tp!2364112 () Bool)

(assert (=> b!7947017 (= e!4688436 (and tp!2364108 tp!2364112))))

(declare-fun b!7947018 () Bool)

(declare-fun tp!2364110 () Bool)

(declare-fun tp!2364115 () Bool)

(assert (=> b!7947018 (= e!4688436 (and tp!2364110 tp!2364115))))

(declare-fun b!7947019 () Bool)

(assert (=> b!7947019 (= e!4688433 e!4688437)))

(declare-fun res!3151985 () Bool)

(assert (=> b!7947019 (=> (not res!3151985) (not e!4688437))))

(declare-fun lt!2698580 () Int)

(declare-fun isEmpty!42853 (List!74678) Bool)

(declare-datatypes ((tuple2!70560 0))(
  ( (tuple2!70561 (_1!38583 List!74678) (_2!38583 List!74678)) )
))
(declare-fun findLongestMatchInner!2230 (Regex!21449 List!74678 Int List!74678 List!74678 Int) tuple2!70560)

(declare-fun size!43385 (List!74678) Int)

(assert (=> b!7947019 (= res!3151985 (not (isEmpty!42853 (_1!38583 (findLongestMatchInner!2230 r!24602 testedP!447 lt!2698580 lt!2698581 input!7927 (size!43385 input!7927))))))))

(declare-fun getSuffix!3752 (List!74678 List!74678) List!74678)

(assert (=> b!7947019 (= lt!2698581 (getSuffix!3752 input!7927 testedP!447))))

(assert (=> b!7947019 (= lt!2698580 (size!43385 testedP!447))))

(declare-fun b!7947020 () Bool)

(declare-fun tp!2364116 () Bool)

(declare-fun tp!2364111 () Bool)

(assert (=> b!7947020 (= e!4688432 (and tp!2364116 tp!2364111))))

(declare-fun b!7947021 () Bool)

(declare-fun tp!2364114 () Bool)

(assert (=> b!7947021 (= e!4688434 (and tp_is_empty!53441 tp!2364114))))

(declare-fun b!7947022 () Bool)

(declare-fun res!3151987 () Bool)

(assert (=> b!7947022 (=> (not res!3151987) (not e!4688433))))

(declare-fun isPrefix!6549 (List!74678 List!74678) Bool)

(assert (=> b!7947022 (= res!3151987 (isPrefix!6549 testedP!447 input!7927))))

(assert (= (and start!749972 res!3151989) b!7947022))

(assert (= (and b!7947022 res!3151987) b!7947007))

(assert (= (and b!7947007 res!3151984) b!7947019))

(assert (= (and b!7947019 res!3151985) b!7947012))

(assert (= (and b!7947012 res!3151986) b!7947015))

(assert (= (and b!7947015 res!3151990) b!7947016))

(assert (= (and b!7947016 res!3151988) b!7947011))

(get-info :version)

(assert (= (and start!749972 ((_ is ElementMatch!21449) baseR!116)) b!7947010))

(assert (= (and start!749972 ((_ is Concat!30448) baseR!116)) b!7947008))

(assert (= (and start!749972 ((_ is Star!21449) baseR!116)) b!7947006))

(assert (= (and start!749972 ((_ is Union!21449) baseR!116)) b!7947020))

(assert (= (and start!749972 ((_ is Cons!74554) testedP!447)) b!7947014))

(assert (= (and start!749972 ((_ is Cons!74554) input!7927)) b!7947021))

(assert (= (and start!749972 ((_ is ElementMatch!21449) r!24602)) b!7947009))

(assert (= (and start!749972 ((_ is Concat!30448) r!24602)) b!7947017))

(assert (= (and start!749972 ((_ is Star!21449) r!24602)) b!7947013))

(assert (= (and start!749972 ((_ is Union!21449) r!24602)) b!7947018))

(declare-fun m!8332864 () Bool)

(assert (=> start!749972 m!8332864))

(declare-fun m!8332866 () Bool)

(assert (=> b!7947007 m!8332866))

(declare-fun m!8332868 () Bool)

(assert (=> b!7947011 m!8332868))

(declare-fun m!8332870 () Bool)

(assert (=> b!7947015 m!8332870))

(declare-fun m!8332872 () Bool)

(assert (=> b!7947016 m!8332872))

(declare-fun m!8332874 () Bool)

(assert (=> b!7947022 m!8332874))

(declare-fun m!8332876 () Bool)

(assert (=> b!7947019 m!8332876))

(declare-fun m!8332878 () Bool)

(assert (=> b!7947019 m!8332878))

(declare-fun m!8332880 () Bool)

(assert (=> b!7947019 m!8332880))

(assert (=> b!7947019 m!8332880))

(declare-fun m!8332882 () Bool)

(assert (=> b!7947019 m!8332882))

(declare-fun m!8332884 () Bool)

(assert (=> b!7947019 m!8332884))

(check-sat (not b!7947017) (not b!7947018) (not start!749972) (not b!7947008) (not b!7947006) (not b!7947016) (not b!7947007) (not b!7947022) (not b!7947011) tp_is_empty!53441 (not b!7947021) (not b!7947019) (not b!7947020) (not b!7947014) (not b!7947015) (not b!7947013))
(check-sat)
(get-model)

(declare-fun d!2375537 () Bool)

(declare-fun lt!2698586 () Regex!21449)

(assert (=> d!2375537 (validRegex!11753 lt!2698586)))

(declare-fun e!4688442 () Regex!21449)

(assert (=> d!2375537 (= lt!2698586 e!4688442)))

(declare-fun c!1459811 () Bool)

(assert (=> d!2375537 (= c!1459811 ((_ is Cons!74554) testedP!447))))

(assert (=> d!2375537 (validRegex!11753 baseR!116)))

(assert (=> d!2375537 (= (derivative!635 baseR!116 testedP!447) lt!2698586)))

(declare-fun b!7947031 () Bool)

(declare-fun derivativeStep!6488 (Regex!21449 C!43236) Regex!21449)

(assert (=> b!7947031 (= e!4688442 (derivative!635 (derivativeStep!6488 baseR!116 (h!81002 testedP!447)) (t!390421 testedP!447)))))

(declare-fun b!7947032 () Bool)

(assert (=> b!7947032 (= e!4688442 baseR!116)))

(assert (= (and d!2375537 c!1459811) b!7947031))

(assert (= (and d!2375537 (not c!1459811)) b!7947032))

(declare-fun m!8332886 () Bool)

(assert (=> d!2375537 m!8332886))

(assert (=> d!2375537 m!8332864))

(declare-fun m!8332888 () Bool)

(assert (=> b!7947031 m!8332888))

(assert (=> b!7947031 m!8332888))

(declare-fun m!8332890 () Bool)

(assert (=> b!7947031 m!8332890))

(assert (=> b!7947007 d!2375537))

(declare-fun d!2375541 () Bool)

(declare-fun e!4688456 () Bool)

(assert (=> d!2375541 e!4688456))

(declare-fun res!3152004 () Bool)

(assert (=> d!2375541 (=> res!3152004 e!4688456)))

(declare-fun lt!2698592 () Bool)

(assert (=> d!2375541 (= res!3152004 (not lt!2698592))))

(declare-fun e!4688455 () Bool)

(assert (=> d!2375541 (= lt!2698592 e!4688455)))

(declare-fun res!3152006 () Bool)

(assert (=> d!2375541 (=> res!3152006 e!4688455)))

(assert (=> d!2375541 (= res!3152006 ((_ is Nil!74554) testedP!447))))

(assert (=> d!2375541 (= (isPrefix!6549 testedP!447 input!7927) lt!2698592)))

(declare-fun b!7947053 () Bool)

(declare-fun e!4688454 () Bool)

(declare-fun tail!15753 (List!74678) List!74678)

(assert (=> b!7947053 (= e!4688454 (isPrefix!6549 (tail!15753 testedP!447) (tail!15753 input!7927)))))

(declare-fun b!7947051 () Bool)

(assert (=> b!7947051 (= e!4688455 e!4688454)))

(declare-fun res!3152005 () Bool)

(assert (=> b!7947051 (=> (not res!3152005) (not e!4688454))))

(assert (=> b!7947051 (= res!3152005 (not ((_ is Nil!74554) input!7927)))))

(declare-fun b!7947052 () Bool)

(declare-fun res!3152003 () Bool)

(assert (=> b!7947052 (=> (not res!3152003) (not e!4688454))))

(declare-fun head!16210 (List!74678) C!43236)

(assert (=> b!7947052 (= res!3152003 (= (head!16210 testedP!447) (head!16210 input!7927)))))

(declare-fun b!7947054 () Bool)

(assert (=> b!7947054 (= e!4688456 (>= (size!43385 input!7927) (size!43385 testedP!447)))))

(assert (= (and d!2375541 (not res!3152006)) b!7947051))

(assert (= (and b!7947051 res!3152005) b!7947052))

(assert (= (and b!7947052 res!3152003) b!7947053))

(assert (= (and d!2375541 (not res!3152004)) b!7947054))

(declare-fun m!8332900 () Bool)

(assert (=> b!7947053 m!8332900))

(declare-fun m!8332902 () Bool)

(assert (=> b!7947053 m!8332902))

(assert (=> b!7947053 m!8332900))

(assert (=> b!7947053 m!8332902))

(declare-fun m!8332904 () Bool)

(assert (=> b!7947053 m!8332904))

(declare-fun m!8332906 () Bool)

(assert (=> b!7947052 m!8332906))

(declare-fun m!8332908 () Bool)

(assert (=> b!7947052 m!8332908))

(assert (=> b!7947054 m!8332880))

(assert (=> b!7947054 m!8332878))

(assert (=> b!7947022 d!2375541))

(declare-fun d!2375547 () Bool)

(declare-fun lt!2698596 () Int)

(assert (=> d!2375547 (>= lt!2698596 0)))

(declare-fun e!4688461 () Int)

(assert (=> d!2375547 (= lt!2698596 e!4688461)))

(declare-fun c!1459818 () Bool)

(assert (=> d!2375547 (= c!1459818 ((_ is Nil!74554) input!7927))))

(assert (=> d!2375547 (= (size!43385 input!7927) lt!2698596)))

(declare-fun b!7947063 () Bool)

(assert (=> b!7947063 (= e!4688461 0)))

(declare-fun b!7947064 () Bool)

(assert (=> b!7947064 (= e!4688461 (+ 1 (size!43385 (t!390421 input!7927))))))

(assert (= (and d!2375547 c!1459818) b!7947063))

(assert (= (and d!2375547 (not c!1459818)) b!7947064))

(declare-fun m!8332922 () Bool)

(assert (=> b!7947064 m!8332922))

(assert (=> b!7947019 d!2375547))

(declare-fun d!2375551 () Bool)

(assert (=> d!2375551 (= (isEmpty!42853 (_1!38583 (findLongestMatchInner!2230 r!24602 testedP!447 lt!2698580 lt!2698581 input!7927 (size!43385 input!7927)))) ((_ is Nil!74554) (_1!38583 (findLongestMatchInner!2230 r!24602 testedP!447 lt!2698580 lt!2698581 input!7927 (size!43385 input!7927)))))))

(assert (=> b!7947019 d!2375551))

(declare-fun d!2375553 () Bool)

(declare-fun lt!2698599 () List!74678)

(assert (=> d!2375553 (= (++!18327 testedP!447 lt!2698599) input!7927)))

(declare-fun e!4688478 () List!74678)

(assert (=> d!2375553 (= lt!2698599 e!4688478)))

(declare-fun c!1459825 () Bool)

(assert (=> d!2375553 (= c!1459825 ((_ is Cons!74554) testedP!447))))

(assert (=> d!2375553 (>= (size!43385 input!7927) (size!43385 testedP!447))))

(assert (=> d!2375553 (= (getSuffix!3752 input!7927 testedP!447) lt!2698599)))

(declare-fun b!7947087 () Bool)

(assert (=> b!7947087 (= e!4688478 (getSuffix!3752 (tail!15753 input!7927) (t!390421 testedP!447)))))

(declare-fun b!7947088 () Bool)

(assert (=> b!7947088 (= e!4688478 input!7927)))

(assert (= (and d!2375553 c!1459825) b!7947087))

(assert (= (and d!2375553 (not c!1459825)) b!7947088))

(declare-fun m!8332924 () Bool)

(assert (=> d!2375553 m!8332924))

(assert (=> d!2375553 m!8332880))

(assert (=> d!2375553 m!8332878))

(assert (=> b!7947087 m!8332902))

(assert (=> b!7947087 m!8332902))

(declare-fun m!8332926 () Bool)

(assert (=> b!7947087 m!8332926))

(assert (=> b!7947019 d!2375553))

(declare-fun d!2375555 () Bool)

(declare-fun lt!2698600 () Int)

(assert (=> d!2375555 (>= lt!2698600 0)))

(declare-fun e!4688479 () Int)

(assert (=> d!2375555 (= lt!2698600 e!4688479)))

(declare-fun c!1459826 () Bool)

(assert (=> d!2375555 (= c!1459826 ((_ is Nil!74554) testedP!447))))

(assert (=> d!2375555 (= (size!43385 testedP!447) lt!2698600)))

(declare-fun b!7947089 () Bool)

(assert (=> b!7947089 (= e!4688479 0)))

(declare-fun b!7947090 () Bool)

(assert (=> b!7947090 (= e!4688479 (+ 1 (size!43385 (t!390421 testedP!447))))))

(assert (= (and d!2375555 c!1459826) b!7947089))

(assert (= (and d!2375555 (not c!1459826)) b!7947090))

(declare-fun m!8332928 () Bool)

(assert (=> b!7947090 m!8332928))

(assert (=> b!7947019 d!2375555))

(declare-fun b!7947162 () Bool)

(declare-fun e!4688522 () tuple2!70560)

(declare-fun lt!2698718 () tuple2!70560)

(assert (=> b!7947162 (= e!4688522 lt!2698718)))

(declare-fun b!7947163 () Bool)

(declare-fun e!4688528 () tuple2!70560)

(declare-fun call!736631 () tuple2!70560)

(assert (=> b!7947163 (= e!4688528 call!736631)))

(declare-fun bm!736621 () Bool)

(declare-fun call!736629 () List!74678)

(assert (=> bm!736621 (= call!736629 (tail!15753 lt!2698581))))

(declare-fun d!2375557 () Bool)

(declare-fun e!4688529 () Bool)

(assert (=> d!2375557 e!4688529))

(declare-fun res!3152033 () Bool)

(assert (=> d!2375557 (=> (not res!3152033) (not e!4688529))))

(declare-fun lt!2698729 () tuple2!70560)

(assert (=> d!2375557 (= res!3152033 (= (++!18327 (_1!38583 lt!2698729) (_2!38583 lt!2698729)) input!7927))))

(declare-fun e!4688526 () tuple2!70560)

(assert (=> d!2375557 (= lt!2698729 e!4688526)))

(declare-fun c!1459860 () Bool)

(declare-fun lostCause!1953 (Regex!21449) Bool)

(assert (=> d!2375557 (= c!1459860 (lostCause!1953 r!24602))))

(declare-datatypes ((Unit!169740 0))(
  ( (Unit!169741) )
))
(declare-fun lt!2698742 () Unit!169740)

(declare-fun Unit!169742 () Unit!169740)

(assert (=> d!2375557 (= lt!2698742 Unit!169742)))

(assert (=> d!2375557 (= (getSuffix!3752 input!7927 testedP!447) lt!2698581)))

(declare-fun lt!2698731 () Unit!169740)

(declare-fun lt!2698716 () Unit!169740)

(assert (=> d!2375557 (= lt!2698731 lt!2698716)))

(declare-fun lt!2698722 () List!74678)

(assert (=> d!2375557 (= lt!2698581 lt!2698722)))

(declare-fun lemmaSamePrefixThenSameSuffix!2969 (List!74678 List!74678 List!74678 List!74678 List!74678) Unit!169740)

(assert (=> d!2375557 (= lt!2698716 (lemmaSamePrefixThenSameSuffix!2969 testedP!447 lt!2698581 testedP!447 lt!2698722 input!7927))))

(assert (=> d!2375557 (= lt!2698722 (getSuffix!3752 input!7927 testedP!447))))

(declare-fun lt!2698734 () Unit!169740)

(declare-fun lt!2698738 () Unit!169740)

(assert (=> d!2375557 (= lt!2698734 lt!2698738)))

(assert (=> d!2375557 (isPrefix!6549 testedP!447 (++!18327 testedP!447 lt!2698581))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3831 (List!74678 List!74678) Unit!169740)

(assert (=> d!2375557 (= lt!2698738 (lemmaConcatTwoListThenFirstIsPrefix!3831 testedP!447 lt!2698581))))

(assert (=> d!2375557 (validRegex!11753 r!24602)))

(assert (=> d!2375557 (= (findLongestMatchInner!2230 r!24602 testedP!447 lt!2698580 lt!2698581 input!7927 (size!43385 input!7927)) lt!2698729)))

(declare-fun b!7947164 () Bool)

(declare-fun e!4688523 () Bool)

(assert (=> b!7947164 (= e!4688529 e!4688523)))

(declare-fun res!3152032 () Bool)

(assert (=> b!7947164 (=> res!3152032 e!4688523)))

(assert (=> b!7947164 (= res!3152032 (isEmpty!42853 (_1!38583 lt!2698729)))))

(declare-fun bm!736622 () Bool)

(declare-fun call!736626 () Bool)

(assert (=> bm!736622 (= call!736626 (nullable!9560 r!24602))))

(declare-fun b!7947165 () Bool)

(declare-fun e!4688527 () Unit!169740)

(declare-fun Unit!169746 () Unit!169740)

(assert (=> b!7947165 (= e!4688527 Unit!169746)))

(declare-fun bm!736623 () Bool)

(declare-fun call!736630 () Bool)

(assert (=> bm!736623 (= call!736630 (isPrefix!6549 input!7927 input!7927))))

(declare-fun b!7947166 () Bool)

(declare-fun c!1459856 () Bool)

(assert (=> b!7947166 (= c!1459856 call!736626)))

(declare-fun lt!2698730 () Unit!169740)

(declare-fun lt!2698721 () Unit!169740)

(assert (=> b!7947166 (= lt!2698730 lt!2698721)))

(declare-fun lt!2698740 () List!74678)

(declare-fun lt!2698717 () C!43236)

(assert (=> b!7947166 (= (++!18327 (++!18327 testedP!447 (Cons!74554 lt!2698717 Nil!74554)) lt!2698740) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3509 (List!74678 C!43236 List!74678 List!74678) Unit!169740)

(assert (=> b!7947166 (= lt!2698721 (lemmaMoveElementToOtherListKeepsConcatEq!3509 testedP!447 lt!2698717 lt!2698740 input!7927))))

(assert (=> b!7947166 (= lt!2698740 (tail!15753 lt!2698581))))

(assert (=> b!7947166 (= lt!2698717 (head!16210 lt!2698581))))

(declare-fun lt!2698743 () Unit!169740)

(declare-fun lt!2698726 () Unit!169740)

(assert (=> b!7947166 (= lt!2698743 lt!2698726)))

(assert (=> b!7947166 (isPrefix!6549 (++!18327 testedP!447 (Cons!74554 (head!16210 (getSuffix!3752 input!7927 testedP!447)) Nil!74554)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1287 (List!74678 List!74678) Unit!169740)

(assert (=> b!7947166 (= lt!2698726 (lemmaAddHeadSuffixToPrefixStillPrefix!1287 testedP!447 input!7927))))

(declare-fun lt!2698737 () Unit!169740)

(declare-fun lt!2698733 () Unit!169740)

(assert (=> b!7947166 (= lt!2698737 lt!2698733)))

(assert (=> b!7947166 (= lt!2698733 (lemmaAddHeadSuffixToPrefixStillPrefix!1287 testedP!447 input!7927))))

(declare-fun lt!2698728 () List!74678)

(assert (=> b!7947166 (= lt!2698728 (++!18327 testedP!447 (Cons!74554 (head!16210 lt!2698581) Nil!74554)))))

(declare-fun lt!2698739 () Unit!169740)

(assert (=> b!7947166 (= lt!2698739 e!4688527)))

(declare-fun c!1459859 () Bool)

(assert (=> b!7947166 (= c!1459859 (= (size!43385 testedP!447) (size!43385 input!7927)))))

(declare-fun lt!2698720 () Unit!169740)

(declare-fun lt!2698735 () Unit!169740)

(assert (=> b!7947166 (= lt!2698720 lt!2698735)))

(assert (=> b!7947166 (<= (size!43385 testedP!447) (size!43385 input!7927))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1067 (List!74678 List!74678) Unit!169740)

(assert (=> b!7947166 (= lt!2698735 (lemmaIsPrefixThenSmallerEqSize!1067 testedP!447 input!7927))))

(declare-fun e!4688524 () tuple2!70560)

(assert (=> b!7947166 (= e!4688524 e!4688528)))

(declare-fun b!7947167 () Bool)

(assert (=> b!7947167 (= e!4688526 e!4688524)))

(declare-fun c!1459858 () Bool)

(assert (=> b!7947167 (= c!1459858 (= lt!2698580 (size!43385 input!7927)))))

(declare-fun b!7947168 () Bool)

(assert (=> b!7947168 (= e!4688522 (tuple2!70561 testedP!447 lt!2698581))))

(declare-fun b!7947169 () Bool)

(declare-fun Unit!169747 () Unit!169740)

(assert (=> b!7947169 (= e!4688527 Unit!169747)))

(declare-fun lt!2698727 () Unit!169740)

(declare-fun call!736628 () Unit!169740)

(assert (=> b!7947169 (= lt!2698727 call!736628)))

(assert (=> b!7947169 call!736630))

(declare-fun lt!2698719 () Unit!169740)

(assert (=> b!7947169 (= lt!2698719 lt!2698727)))

(declare-fun lt!2698725 () Unit!169740)

(declare-fun call!736627 () Unit!169740)

(assert (=> b!7947169 (= lt!2698725 call!736627)))

(assert (=> b!7947169 (= input!7927 testedP!447)))

(declare-fun lt!2698723 () Unit!169740)

(assert (=> b!7947169 (= lt!2698723 lt!2698725)))

(assert (=> b!7947169 false))

(declare-fun b!7947170 () Bool)

(assert (=> b!7947170 (= e!4688528 e!4688522)))

(assert (=> b!7947170 (= lt!2698718 call!736631)))

(declare-fun c!1459857 () Bool)

(assert (=> b!7947170 (= c!1459857 (isEmpty!42853 (_1!38583 lt!2698718)))))

(declare-fun bm!736624 () Bool)

(declare-fun lemmaIsPrefixRefl!4020 (List!74678 List!74678) Unit!169740)

(assert (=> bm!736624 (= call!736628 (lemmaIsPrefixRefl!4020 input!7927 input!7927))))

(declare-fun b!7947171 () Bool)

(declare-fun e!4688525 () tuple2!70560)

(assert (=> b!7947171 (= e!4688525 (tuple2!70561 testedP!447 Nil!74554))))

(declare-fun bm!736625 () Bool)

(declare-fun call!736633 () C!43236)

(assert (=> bm!736625 (= call!736633 (head!16210 lt!2698581))))

(declare-fun b!7947172 () Bool)

(assert (=> b!7947172 (= e!4688523 (>= (size!43385 (_1!38583 lt!2698729)) (size!43385 testedP!447)))))

(declare-fun b!7947173 () Bool)

(assert (=> b!7947173 (= e!4688526 (tuple2!70561 Nil!74554 input!7927))))

(declare-fun b!7947174 () Bool)

(assert (=> b!7947174 (= e!4688525 (tuple2!70561 Nil!74554 input!7927))))

(declare-fun bm!736626 () Bool)

(declare-fun call!736632 () Regex!21449)

(assert (=> bm!736626 (= call!736632 (derivativeStep!6488 r!24602 call!736633))))

(declare-fun bm!736627 () Bool)

(assert (=> bm!736627 (= call!736631 (findLongestMatchInner!2230 call!736632 lt!2698728 (+ lt!2698580 1) call!736629 input!7927 (size!43385 input!7927)))))

(declare-fun b!7947175 () Bool)

(declare-fun c!1459861 () Bool)

(assert (=> b!7947175 (= c!1459861 call!736626)))

(declare-fun lt!2698724 () Unit!169740)

(declare-fun lt!2698736 () Unit!169740)

(assert (=> b!7947175 (= lt!2698724 lt!2698736)))

(assert (=> b!7947175 (= input!7927 testedP!447)))

(assert (=> b!7947175 (= lt!2698736 call!736627)))

(declare-fun lt!2698741 () Unit!169740)

(declare-fun lt!2698732 () Unit!169740)

(assert (=> b!7947175 (= lt!2698741 lt!2698732)))

(assert (=> b!7947175 call!736630))

(assert (=> b!7947175 (= lt!2698732 call!736628)))

(assert (=> b!7947175 (= e!4688524 e!4688525)))

(declare-fun bm!736628 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1603 (List!74678 List!74678 List!74678) Unit!169740)

(assert (=> bm!736628 (= call!736627 (lemmaIsPrefixSameLengthThenSameList!1603 input!7927 testedP!447 input!7927))))

(assert (= (and d!2375557 c!1459860) b!7947173))

(assert (= (and d!2375557 (not c!1459860)) b!7947167))

(assert (= (and b!7947167 c!1459858) b!7947175))

(assert (= (and b!7947167 (not c!1459858)) b!7947166))

(assert (= (and b!7947175 c!1459861) b!7947171))

(assert (= (and b!7947175 (not c!1459861)) b!7947174))

(assert (= (and b!7947166 c!1459859) b!7947169))

(assert (= (and b!7947166 (not c!1459859)) b!7947165))

(assert (= (and b!7947166 c!1459856) b!7947170))

(assert (= (and b!7947166 (not c!1459856)) b!7947163))

(assert (= (and b!7947170 c!1459857) b!7947168))

(assert (= (and b!7947170 (not c!1459857)) b!7947162))

(assert (= (or b!7947170 b!7947163) bm!736625))

(assert (= (or b!7947170 b!7947163) bm!736621))

(assert (= (or b!7947170 b!7947163) bm!736626))

(assert (= (or b!7947170 b!7947163) bm!736627))

(assert (= (or b!7947175 b!7947166) bm!736622))

(assert (= (or b!7947175 b!7947169) bm!736628))

(assert (= (or b!7947175 b!7947169) bm!736624))

(assert (= (or b!7947175 b!7947169) bm!736623))

(assert (= (and d!2375557 res!3152033) b!7947164))

(assert (= (and b!7947164 (not res!3152032)) b!7947172))

(assert (=> b!7947166 m!8332884))

(declare-fun m!8332938 () Bool)

(assert (=> b!7947166 m!8332938))

(assert (=> b!7947166 m!8332878))

(declare-fun m!8332940 () Bool)

(assert (=> b!7947166 m!8332940))

(declare-fun m!8332942 () Bool)

(assert (=> b!7947166 m!8332942))

(assert (=> b!7947166 m!8332884))

(declare-fun m!8332944 () Bool)

(assert (=> b!7947166 m!8332944))

(declare-fun m!8332946 () Bool)

(assert (=> b!7947166 m!8332946))

(assert (=> b!7947166 m!8332940))

(declare-fun m!8332948 () Bool)

(assert (=> b!7947166 m!8332948))

(declare-fun m!8332950 () Bool)

(assert (=> b!7947166 m!8332950))

(assert (=> b!7947166 m!8332880))

(declare-fun m!8332952 () Bool)

(assert (=> b!7947166 m!8332952))

(declare-fun m!8332954 () Bool)

(assert (=> b!7947166 m!8332954))

(declare-fun m!8332956 () Bool)

(assert (=> b!7947166 m!8332956))

(assert (=> b!7947166 m!8332938))

(declare-fun m!8332958 () Bool)

(assert (=> b!7947166 m!8332958))

(declare-fun m!8332960 () Bool)

(assert (=> b!7947172 m!8332960))

(assert (=> b!7947172 m!8332878))

(declare-fun m!8332962 () Bool)

(assert (=> bm!736624 m!8332962))

(declare-fun m!8332964 () Bool)

(assert (=> b!7947164 m!8332964))

(assert (=> bm!736621 m!8332950))

(assert (=> bm!736622 m!8332870))

(assert (=> bm!736627 m!8332880))

(declare-fun m!8332966 () Bool)

(assert (=> bm!736627 m!8332966))

(declare-fun m!8332968 () Bool)

(assert (=> bm!736628 m!8332968))

(declare-fun m!8332970 () Bool)

(assert (=> bm!736626 m!8332970))

(declare-fun m!8332972 () Bool)

(assert (=> bm!736623 m!8332972))

(declare-fun m!8332974 () Bool)

(assert (=> d!2375557 m!8332974))

(assert (=> d!2375557 m!8332868))

(declare-fun m!8332976 () Bool)

(assert (=> d!2375557 m!8332976))

(declare-fun m!8332978 () Bool)

(assert (=> d!2375557 m!8332978))

(assert (=> d!2375557 m!8332868))

(declare-fun m!8332980 () Bool)

(assert (=> d!2375557 m!8332980))

(declare-fun m!8332982 () Bool)

(assert (=> d!2375557 m!8332982))

(assert (=> d!2375557 m!8332872))

(assert (=> d!2375557 m!8332884))

(assert (=> bm!736625 m!8332948))

(declare-fun m!8332984 () Bool)

(assert (=> b!7947170 m!8332984))

(assert (=> b!7947019 d!2375557))

(declare-fun d!2375563 () Bool)

(declare-fun nullableFct!3764 (Regex!21449) Bool)

(assert (=> d!2375563 (= (nullable!9560 r!24602) (nullableFct!3764 r!24602))))

(declare-fun bs!1969460 () Bool)

(assert (= bs!1969460 d!2375563))

(declare-fun m!8332986 () Bool)

(assert (=> bs!1969460 m!8332986))

(assert (=> b!7947015 d!2375563))

(declare-fun b!7947212 () Bool)

(declare-fun e!4688556 () Bool)

(declare-fun call!736650 () Bool)

(assert (=> b!7947212 (= e!4688556 call!736650)))

(declare-fun b!7947213 () Bool)

(declare-fun e!4688558 () Bool)

(declare-fun e!4688554 () Bool)

(assert (=> b!7947213 (= e!4688558 e!4688554)))

(declare-fun c!1459875 () Bool)

(assert (=> b!7947213 (= c!1459875 ((_ is Union!21449) baseR!116))))

(declare-fun b!7947214 () Bool)

(declare-fun e!4688555 () Bool)

(declare-fun e!4688559 () Bool)

(assert (=> b!7947214 (= e!4688555 e!4688559)))

(declare-fun res!3152049 () Bool)

(assert (=> b!7947214 (=> (not res!3152049) (not e!4688559))))

(declare-fun call!736648 () Bool)

(assert (=> b!7947214 (= res!3152049 call!736648)))

(declare-fun b!7947215 () Bool)

(declare-fun res!3152048 () Bool)

(assert (=> b!7947215 (=> res!3152048 e!4688555)))

(assert (=> b!7947215 (= res!3152048 (not ((_ is Concat!30448) baseR!116)))))

(assert (=> b!7947215 (= e!4688554 e!4688555)))

(declare-fun b!7947216 () Bool)

(assert (=> b!7947216 (= e!4688559 call!736650)))

(declare-fun b!7947217 () Bool)

(declare-fun res!3152046 () Bool)

(assert (=> b!7947217 (=> (not res!3152046) (not e!4688556))))

(assert (=> b!7947217 (= res!3152046 call!736648)))

(assert (=> b!7947217 (= e!4688554 e!4688556)))

(declare-fun d!2375565 () Bool)

(declare-fun res!3152050 () Bool)

(declare-fun e!4688560 () Bool)

(assert (=> d!2375565 (=> res!3152050 e!4688560)))

(assert (=> d!2375565 (= res!3152050 ((_ is ElementMatch!21449) baseR!116))))

(assert (=> d!2375565 (= (validRegex!11753 baseR!116) e!4688560)))

(declare-fun b!7947218 () Bool)

(assert (=> b!7947218 (= e!4688560 e!4688558)))

(declare-fun c!1459874 () Bool)

(assert (=> b!7947218 (= c!1459874 ((_ is Star!21449) baseR!116))))

(declare-fun bm!736643 () Bool)

(declare-fun call!736649 () Bool)

(assert (=> bm!736643 (= call!736649 (validRegex!11753 (ite c!1459874 (reg!21778 baseR!116) (ite c!1459875 (regOne!43411 baseR!116) (regOne!43410 baseR!116)))))))

(declare-fun b!7947219 () Bool)

(declare-fun e!4688557 () Bool)

(assert (=> b!7947219 (= e!4688557 call!736649)))

(declare-fun bm!736644 () Bool)

(assert (=> bm!736644 (= call!736648 call!736649)))

(declare-fun b!7947220 () Bool)

(assert (=> b!7947220 (= e!4688558 e!4688557)))

(declare-fun res!3152047 () Bool)

(assert (=> b!7947220 (= res!3152047 (not (nullable!9560 (reg!21778 baseR!116))))))

(assert (=> b!7947220 (=> (not res!3152047) (not e!4688557))))

(declare-fun bm!736645 () Bool)

(assert (=> bm!736645 (= call!736650 (validRegex!11753 (ite c!1459875 (regTwo!43411 baseR!116) (regTwo!43410 baseR!116))))))

(assert (= (and d!2375565 (not res!3152050)) b!7947218))

(assert (= (and b!7947218 c!1459874) b!7947220))

(assert (= (and b!7947218 (not c!1459874)) b!7947213))

(assert (= (and b!7947220 res!3152047) b!7947219))

(assert (= (and b!7947213 c!1459875) b!7947217))

(assert (= (and b!7947213 (not c!1459875)) b!7947215))

(assert (= (and b!7947217 res!3152046) b!7947212))

(assert (= (and b!7947215 (not res!3152048)) b!7947214))

(assert (= (and b!7947214 res!3152049) b!7947216))

(assert (= (or b!7947212 b!7947216) bm!736645))

(assert (= (or b!7947217 b!7947214) bm!736644))

(assert (= (or b!7947219 bm!736644) bm!736643))

(declare-fun m!8333036 () Bool)

(assert (=> bm!736643 m!8333036))

(declare-fun m!8333038 () Bool)

(assert (=> b!7947220 m!8333038))

(declare-fun m!8333040 () Bool)

(assert (=> bm!736645 m!8333040))

(assert (=> start!749972 d!2375565))

(declare-fun b!7947221 () Bool)

(declare-fun e!4688563 () Bool)

(declare-fun call!736653 () Bool)

(assert (=> b!7947221 (= e!4688563 call!736653)))

(declare-fun b!7947222 () Bool)

(declare-fun e!4688565 () Bool)

(declare-fun e!4688561 () Bool)

(assert (=> b!7947222 (= e!4688565 e!4688561)))

(declare-fun c!1459877 () Bool)

(assert (=> b!7947222 (= c!1459877 ((_ is Union!21449) r!24602))))

(declare-fun b!7947223 () Bool)

(declare-fun e!4688562 () Bool)

(declare-fun e!4688566 () Bool)

(assert (=> b!7947223 (= e!4688562 e!4688566)))

(declare-fun res!3152054 () Bool)

(assert (=> b!7947223 (=> (not res!3152054) (not e!4688566))))

(declare-fun call!736651 () Bool)

(assert (=> b!7947223 (= res!3152054 call!736651)))

(declare-fun b!7947224 () Bool)

(declare-fun res!3152053 () Bool)

(assert (=> b!7947224 (=> res!3152053 e!4688562)))

(assert (=> b!7947224 (= res!3152053 (not ((_ is Concat!30448) r!24602)))))

(assert (=> b!7947224 (= e!4688561 e!4688562)))

(declare-fun b!7947225 () Bool)

(assert (=> b!7947225 (= e!4688566 call!736653)))

(declare-fun b!7947226 () Bool)

(declare-fun res!3152051 () Bool)

(assert (=> b!7947226 (=> (not res!3152051) (not e!4688563))))

(assert (=> b!7947226 (= res!3152051 call!736651)))

(assert (=> b!7947226 (= e!4688561 e!4688563)))

(declare-fun d!2375569 () Bool)

(declare-fun res!3152055 () Bool)

(declare-fun e!4688567 () Bool)

(assert (=> d!2375569 (=> res!3152055 e!4688567)))

(assert (=> d!2375569 (= res!3152055 ((_ is ElementMatch!21449) r!24602))))

(assert (=> d!2375569 (= (validRegex!11753 r!24602) e!4688567)))

(declare-fun b!7947227 () Bool)

(assert (=> b!7947227 (= e!4688567 e!4688565)))

(declare-fun c!1459876 () Bool)

(assert (=> b!7947227 (= c!1459876 ((_ is Star!21449) r!24602))))

(declare-fun bm!736646 () Bool)

(declare-fun call!736652 () Bool)

(assert (=> bm!736646 (= call!736652 (validRegex!11753 (ite c!1459876 (reg!21778 r!24602) (ite c!1459877 (regOne!43411 r!24602) (regOne!43410 r!24602)))))))

(declare-fun b!7947228 () Bool)

(declare-fun e!4688564 () Bool)

(assert (=> b!7947228 (= e!4688564 call!736652)))

(declare-fun bm!736647 () Bool)

(assert (=> bm!736647 (= call!736651 call!736652)))

(declare-fun b!7947229 () Bool)

(assert (=> b!7947229 (= e!4688565 e!4688564)))

(declare-fun res!3152052 () Bool)

(assert (=> b!7947229 (= res!3152052 (not (nullable!9560 (reg!21778 r!24602))))))

(assert (=> b!7947229 (=> (not res!3152052) (not e!4688564))))

(declare-fun bm!736648 () Bool)

(assert (=> bm!736648 (= call!736653 (validRegex!11753 (ite c!1459877 (regTwo!43411 r!24602) (regTwo!43410 r!24602))))))

(assert (= (and d!2375569 (not res!3152055)) b!7947227))

(assert (= (and b!7947227 c!1459876) b!7947229))

(assert (= (and b!7947227 (not c!1459876)) b!7947222))

(assert (= (and b!7947229 res!3152052) b!7947228))

(assert (= (and b!7947222 c!1459877) b!7947226))

(assert (= (and b!7947222 (not c!1459877)) b!7947224))

(assert (= (and b!7947226 res!3152051) b!7947221))

(assert (= (and b!7947224 (not res!3152053)) b!7947223))

(assert (= (and b!7947223 res!3152054) b!7947225))

(assert (= (or b!7947221 b!7947225) bm!736648))

(assert (= (or b!7947226 b!7947223) bm!736647))

(assert (= (or b!7947228 bm!736647) bm!736646))

(declare-fun m!8333046 () Bool)

(assert (=> bm!736646 m!8333046))

(declare-fun m!8333050 () Bool)

(assert (=> b!7947229 m!8333050))

(declare-fun m!8333052 () Bool)

(assert (=> bm!736648 m!8333052))

(assert (=> b!7947016 d!2375569))

(declare-fun b!7947252 () Bool)

(declare-fun res!3152068 () Bool)

(declare-fun e!4688581 () Bool)

(assert (=> b!7947252 (=> (not res!3152068) (not e!4688581))))

(declare-fun lt!2698780 () List!74678)

(assert (=> b!7947252 (= res!3152068 (= (size!43385 lt!2698780) (+ (size!43385 testedP!447) (size!43385 lt!2698581))))))

(declare-fun b!7947253 () Bool)

(assert (=> b!7947253 (= e!4688581 (or (not (= lt!2698581 Nil!74554)) (= lt!2698780 testedP!447)))))

(declare-fun d!2375573 () Bool)

(assert (=> d!2375573 e!4688581))

(declare-fun res!3152069 () Bool)

(assert (=> d!2375573 (=> (not res!3152069) (not e!4688581))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15822 (List!74678) (InoxSet C!43236))

(assert (=> d!2375573 (= res!3152069 (= (content!15822 lt!2698780) ((_ map or) (content!15822 testedP!447) (content!15822 lt!2698581))))))

(declare-fun e!4688580 () List!74678)

(assert (=> d!2375573 (= lt!2698780 e!4688580)))

(declare-fun c!1459882 () Bool)

(assert (=> d!2375573 (= c!1459882 ((_ is Nil!74554) testedP!447))))

(assert (=> d!2375573 (= (++!18327 testedP!447 lt!2698581) lt!2698780)))

(declare-fun b!7947250 () Bool)

(assert (=> b!7947250 (= e!4688580 lt!2698581)))

(declare-fun b!7947251 () Bool)

(assert (=> b!7947251 (= e!4688580 (Cons!74554 (h!81002 testedP!447) (++!18327 (t!390421 testedP!447) lt!2698581)))))

(assert (= (and d!2375573 c!1459882) b!7947250))

(assert (= (and d!2375573 (not c!1459882)) b!7947251))

(assert (= (and d!2375573 res!3152069) b!7947252))

(assert (= (and b!7947252 res!3152068) b!7947253))

(declare-fun m!8333056 () Bool)

(assert (=> b!7947252 m!8333056))

(assert (=> b!7947252 m!8332878))

(declare-fun m!8333058 () Bool)

(assert (=> b!7947252 m!8333058))

(declare-fun m!8333060 () Bool)

(assert (=> d!2375573 m!8333060))

(declare-fun m!8333062 () Bool)

(assert (=> d!2375573 m!8333062))

(declare-fun m!8333064 () Bool)

(assert (=> d!2375573 m!8333064))

(declare-fun m!8333066 () Bool)

(assert (=> b!7947251 m!8333066))

(assert (=> b!7947011 d!2375573))

(declare-fun b!7947280 () Bool)

(declare-fun e!4688594 () Bool)

(declare-fun tp!2364129 () Bool)

(declare-fun tp!2364132 () Bool)

(assert (=> b!7947280 (= e!4688594 (and tp!2364129 tp!2364132))))

(declare-fun b!7947278 () Bool)

(declare-fun tp!2364131 () Bool)

(declare-fun tp!2364130 () Bool)

(assert (=> b!7947278 (= e!4688594 (and tp!2364131 tp!2364130))))

(declare-fun b!7947277 () Bool)

(assert (=> b!7947277 (= e!4688594 tp_is_empty!53441)))

(declare-fun b!7947279 () Bool)

(declare-fun tp!2364133 () Bool)

(assert (=> b!7947279 (= e!4688594 tp!2364133)))

(assert (=> b!7947006 (= tp!2364118 e!4688594)))

(assert (= (and b!7947006 ((_ is ElementMatch!21449) (reg!21778 baseR!116))) b!7947277))

(assert (= (and b!7947006 ((_ is Concat!30448) (reg!21778 baseR!116))) b!7947278))

(assert (= (and b!7947006 ((_ is Star!21449) (reg!21778 baseR!116))) b!7947279))

(assert (= (and b!7947006 ((_ is Union!21449) (reg!21778 baseR!116))) b!7947280))

(declare-fun b!7947290 () Bool)

(declare-fun e!4688597 () Bool)

(declare-fun tp!2364138 () Bool)

(declare-fun tp!2364141 () Bool)

(assert (=> b!7947290 (= e!4688597 (and tp!2364138 tp!2364141))))

(declare-fun b!7947288 () Bool)

(declare-fun tp!2364140 () Bool)

(declare-fun tp!2364139 () Bool)

(assert (=> b!7947288 (= e!4688597 (and tp!2364140 tp!2364139))))

(declare-fun b!7947287 () Bool)

(assert (=> b!7947287 (= e!4688597 tp_is_empty!53441)))

(declare-fun b!7947289 () Bool)

(declare-fun tp!2364142 () Bool)

(assert (=> b!7947289 (= e!4688597 tp!2364142)))

(assert (=> b!7947017 (= tp!2364108 e!4688597)))

(assert (= (and b!7947017 ((_ is ElementMatch!21449) (regOne!43410 r!24602))) b!7947287))

(assert (= (and b!7947017 ((_ is Concat!30448) (regOne!43410 r!24602))) b!7947288))

(assert (= (and b!7947017 ((_ is Star!21449) (regOne!43410 r!24602))) b!7947289))

(assert (= (and b!7947017 ((_ is Union!21449) (regOne!43410 r!24602))) b!7947290))

(declare-fun b!7947298 () Bool)

(declare-fun e!4688598 () Bool)

(declare-fun tp!2364147 () Bool)

(declare-fun tp!2364150 () Bool)

(assert (=> b!7947298 (= e!4688598 (and tp!2364147 tp!2364150))))

(declare-fun b!7947296 () Bool)

(declare-fun tp!2364149 () Bool)

(declare-fun tp!2364148 () Bool)

(assert (=> b!7947296 (= e!4688598 (and tp!2364149 tp!2364148))))

(declare-fun b!7947295 () Bool)

(assert (=> b!7947295 (= e!4688598 tp_is_empty!53441)))

(declare-fun b!7947297 () Bool)

(declare-fun tp!2364151 () Bool)

(assert (=> b!7947297 (= e!4688598 tp!2364151)))

(assert (=> b!7947017 (= tp!2364112 e!4688598)))

(assert (= (and b!7947017 ((_ is ElementMatch!21449) (regTwo!43410 r!24602))) b!7947295))

(assert (= (and b!7947017 ((_ is Concat!30448) (regTwo!43410 r!24602))) b!7947296))

(assert (= (and b!7947017 ((_ is Star!21449) (regTwo!43410 r!24602))) b!7947297))

(assert (= (and b!7947017 ((_ is Union!21449) (regTwo!43410 r!24602))) b!7947298))

(declare-fun b!7947302 () Bool)

(declare-fun e!4688599 () Bool)

(declare-fun tp!2364154 () Bool)

(declare-fun tp!2364157 () Bool)

(assert (=> b!7947302 (= e!4688599 (and tp!2364154 tp!2364157))))

(declare-fun b!7947300 () Bool)

(declare-fun tp!2364156 () Bool)

(declare-fun tp!2364155 () Bool)

(assert (=> b!7947300 (= e!4688599 (and tp!2364156 tp!2364155))))

(declare-fun b!7947299 () Bool)

(assert (=> b!7947299 (= e!4688599 tp_is_empty!53441)))

(declare-fun b!7947301 () Bool)

(declare-fun tp!2364158 () Bool)

(assert (=> b!7947301 (= e!4688599 tp!2364158)))

(assert (=> b!7947008 (= tp!2364113 e!4688599)))

(assert (= (and b!7947008 ((_ is ElementMatch!21449) (regOne!43410 baseR!116))) b!7947299))

(assert (= (and b!7947008 ((_ is Concat!30448) (regOne!43410 baseR!116))) b!7947300))

(assert (= (and b!7947008 ((_ is Star!21449) (regOne!43410 baseR!116))) b!7947301))

(assert (= (and b!7947008 ((_ is Union!21449) (regOne!43410 baseR!116))) b!7947302))

(declare-fun b!7947306 () Bool)

(declare-fun e!4688600 () Bool)

(declare-fun tp!2364159 () Bool)

(declare-fun tp!2364162 () Bool)

(assert (=> b!7947306 (= e!4688600 (and tp!2364159 tp!2364162))))

(declare-fun b!7947304 () Bool)

(declare-fun tp!2364161 () Bool)

(declare-fun tp!2364160 () Bool)

(assert (=> b!7947304 (= e!4688600 (and tp!2364161 tp!2364160))))

(declare-fun b!7947303 () Bool)

(assert (=> b!7947303 (= e!4688600 tp_is_empty!53441)))

(declare-fun b!7947305 () Bool)

(declare-fun tp!2364163 () Bool)

(assert (=> b!7947305 (= e!4688600 tp!2364163)))

(assert (=> b!7947008 (= tp!2364107 e!4688600)))

(assert (= (and b!7947008 ((_ is ElementMatch!21449) (regTwo!43410 baseR!116))) b!7947303))

(assert (= (and b!7947008 ((_ is Concat!30448) (regTwo!43410 baseR!116))) b!7947304))

(assert (= (and b!7947008 ((_ is Star!21449) (regTwo!43410 baseR!116))) b!7947305))

(assert (= (and b!7947008 ((_ is Union!21449) (regTwo!43410 baseR!116))) b!7947306))

(declare-fun b!7947310 () Bool)

(declare-fun e!4688601 () Bool)

(declare-fun tp!2364164 () Bool)

(declare-fun tp!2364167 () Bool)

(assert (=> b!7947310 (= e!4688601 (and tp!2364164 tp!2364167))))

(declare-fun b!7947308 () Bool)

(declare-fun tp!2364166 () Bool)

(declare-fun tp!2364165 () Bool)

(assert (=> b!7947308 (= e!4688601 (and tp!2364166 tp!2364165))))

(declare-fun b!7947307 () Bool)

(assert (=> b!7947307 (= e!4688601 tp_is_empty!53441)))

(declare-fun b!7947309 () Bool)

(declare-fun tp!2364168 () Bool)

(assert (=> b!7947309 (= e!4688601 tp!2364168)))

(assert (=> b!7947018 (= tp!2364110 e!4688601)))

(assert (= (and b!7947018 ((_ is ElementMatch!21449) (regOne!43411 r!24602))) b!7947307))

(assert (= (and b!7947018 ((_ is Concat!30448) (regOne!43411 r!24602))) b!7947308))

(assert (= (and b!7947018 ((_ is Star!21449) (regOne!43411 r!24602))) b!7947309))

(assert (= (and b!7947018 ((_ is Union!21449) (regOne!43411 r!24602))) b!7947310))

(declare-fun b!7947318 () Bool)

(declare-fun e!4688603 () Bool)

(declare-fun tp!2364174 () Bool)

(declare-fun tp!2364177 () Bool)

(assert (=> b!7947318 (= e!4688603 (and tp!2364174 tp!2364177))))

(declare-fun b!7947316 () Bool)

(declare-fun tp!2364176 () Bool)

(declare-fun tp!2364175 () Bool)

(assert (=> b!7947316 (= e!4688603 (and tp!2364176 tp!2364175))))

(declare-fun b!7947315 () Bool)

(assert (=> b!7947315 (= e!4688603 tp_is_empty!53441)))

(declare-fun b!7947317 () Bool)

(declare-fun tp!2364178 () Bool)

(assert (=> b!7947317 (= e!4688603 tp!2364178)))

(assert (=> b!7947018 (= tp!2364115 e!4688603)))

(assert (= (and b!7947018 ((_ is ElementMatch!21449) (regTwo!43411 r!24602))) b!7947315))

(assert (= (and b!7947018 ((_ is Concat!30448) (regTwo!43411 r!24602))) b!7947316))

(assert (= (and b!7947018 ((_ is Star!21449) (regTwo!43411 r!24602))) b!7947317))

(assert (= (and b!7947018 ((_ is Union!21449) (regTwo!43411 r!24602))) b!7947318))

(declare-fun b!7947326 () Bool)

(declare-fun e!4688606 () Bool)

(declare-fun tp!2364181 () Bool)

(declare-fun tp!2364184 () Bool)

(assert (=> b!7947326 (= e!4688606 (and tp!2364181 tp!2364184))))

(declare-fun b!7947324 () Bool)

(declare-fun tp!2364183 () Bool)

(declare-fun tp!2364182 () Bool)

(assert (=> b!7947324 (= e!4688606 (and tp!2364183 tp!2364182))))

(declare-fun b!7947323 () Bool)

(assert (=> b!7947323 (= e!4688606 tp_is_empty!53441)))

(declare-fun b!7947325 () Bool)

(declare-fun tp!2364185 () Bool)

(assert (=> b!7947325 (= e!4688606 tp!2364185)))

(assert (=> b!7947013 (= tp!2364109 e!4688606)))

(assert (= (and b!7947013 ((_ is ElementMatch!21449) (reg!21778 r!24602))) b!7947323))

(assert (= (and b!7947013 ((_ is Concat!30448) (reg!21778 r!24602))) b!7947324))

(assert (= (and b!7947013 ((_ is Star!21449) (reg!21778 r!24602))) b!7947325))

(assert (= (and b!7947013 ((_ is Union!21449) (reg!21778 r!24602))) b!7947326))

(declare-fun b!7947330 () Bool)

(declare-fun e!4688607 () Bool)

(declare-fun tp!2364186 () Bool)

(declare-fun tp!2364189 () Bool)

(assert (=> b!7947330 (= e!4688607 (and tp!2364186 tp!2364189))))

(declare-fun b!7947328 () Bool)

(declare-fun tp!2364188 () Bool)

(declare-fun tp!2364187 () Bool)

(assert (=> b!7947328 (= e!4688607 (and tp!2364188 tp!2364187))))

(declare-fun b!7947327 () Bool)

(assert (=> b!7947327 (= e!4688607 tp_is_empty!53441)))

(declare-fun b!7947329 () Bool)

(declare-fun tp!2364190 () Bool)

(assert (=> b!7947329 (= e!4688607 tp!2364190)))

(assert (=> b!7947020 (= tp!2364116 e!4688607)))

(assert (= (and b!7947020 ((_ is ElementMatch!21449) (regOne!43411 baseR!116))) b!7947327))

(assert (= (and b!7947020 ((_ is Concat!30448) (regOne!43411 baseR!116))) b!7947328))

(assert (= (and b!7947020 ((_ is Star!21449) (regOne!43411 baseR!116))) b!7947329))

(assert (= (and b!7947020 ((_ is Union!21449) (regOne!43411 baseR!116))) b!7947330))

(declare-fun b!7947339 () Bool)

(declare-fun e!4688610 () Bool)

(declare-fun tp!2364197 () Bool)

(declare-fun tp!2364200 () Bool)

(assert (=> b!7947339 (= e!4688610 (and tp!2364197 tp!2364200))))

(declare-fun b!7947336 () Bool)

(declare-fun tp!2364199 () Bool)

(declare-fun tp!2364198 () Bool)

(assert (=> b!7947336 (= e!4688610 (and tp!2364199 tp!2364198))))

(declare-fun b!7947334 () Bool)

(assert (=> b!7947334 (= e!4688610 tp_is_empty!53441)))

(declare-fun b!7947338 () Bool)

(declare-fun tp!2364201 () Bool)

(assert (=> b!7947338 (= e!4688610 tp!2364201)))

(assert (=> b!7947020 (= tp!2364111 e!4688610)))

(assert (= (and b!7947020 ((_ is ElementMatch!21449) (regTwo!43411 baseR!116))) b!7947334))

(assert (= (and b!7947020 ((_ is Concat!30448) (regTwo!43411 baseR!116))) b!7947336))

(assert (= (and b!7947020 ((_ is Star!21449) (regTwo!43411 baseR!116))) b!7947338))

(assert (= (and b!7947020 ((_ is Union!21449) (regTwo!43411 baseR!116))) b!7947339))

(declare-fun b!7947352 () Bool)

(declare-fun e!4688615 () Bool)

(declare-fun tp!2364214 () Bool)

(assert (=> b!7947352 (= e!4688615 (and tp_is_empty!53441 tp!2364214))))

(assert (=> b!7947014 (= tp!2364117 e!4688615)))

(assert (= (and b!7947014 ((_ is Cons!74554) (t!390421 testedP!447))) b!7947352))

(declare-fun b!7947357 () Bool)

(declare-fun e!4688617 () Bool)

(declare-fun tp!2364220 () Bool)

(assert (=> b!7947357 (= e!4688617 (and tp_is_empty!53441 tp!2364220))))

(assert (=> b!7947021 (= tp!2364114 e!4688617)))

(assert (= (and b!7947021 ((_ is Cons!74554) (t!390421 input!7927))) b!7947357))

(check-sat (not b!7947172) (not bm!736624) (not b!7947279) (not bm!736626) (not b!7947054) (not bm!736643) (not bm!736623) (not b!7947339) (not b!7947308) (not b!7947336) (not b!7947170) (not b!7947298) (not bm!736645) (not b!7947304) (not b!7947053) (not b!7947220) (not b!7947289) (not b!7947031) tp_is_empty!53441 (not b!7947306) (not d!2375563) (not b!7947229) (not b!7947325) (not b!7947297) (not b!7947352) (not b!7947087) (not b!7947090) (not b!7947300) (not bm!736622) (not b!7947326) (not b!7947296) (not b!7947338) (not b!7947301) (not b!7947310) (not b!7947064) (not b!7947166) (not b!7947302) (not b!7947317) (not d!2375557) (not b!7947288) (not b!7947328) (not b!7947252) (not bm!736625) (not b!7947278) (not bm!736621) (not b!7947164) (not b!7947280) (not b!7947052) (not bm!736648) (not b!7947357) (not d!2375573) (not d!2375553) (not b!7947330) (not b!7947309) (not b!7947329) (not b!7947324) (not bm!736628) (not b!7947316) (not bm!736646) (not b!7947290) (not b!7947251) (not bm!736627) (not d!2375537) (not b!7947305) (not b!7947318))
(check-sat)
