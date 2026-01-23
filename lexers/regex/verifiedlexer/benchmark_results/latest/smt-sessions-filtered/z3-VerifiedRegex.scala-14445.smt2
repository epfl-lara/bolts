; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752664 () Bool)

(assert start!752664)

(declare-fun b!7997836 () Bool)

(declare-fun e!4711887 () Bool)

(declare-fun tp_is_empty!53685 () Bool)

(assert (=> b!7997836 (= e!4711887 tp_is_empty!53685)))

(declare-fun b!7997837 () Bool)

(declare-fun e!4711884 () Bool)

(declare-fun e!4711883 () Bool)

(assert (=> b!7997837 (= e!4711884 e!4711883)))

(declare-fun res!3163435 () Bool)

(assert (=> b!7997837 (=> (not res!3163435) (not e!4711883))))

(declare-datatypes ((C!43480 0))(
  ( (C!43481 (val!32288 Int)) )
))
(declare-datatypes ((Regex!21571 0))(
  ( (ElementMatch!21571 (c!1468440 C!43480)) (Concat!30570 (regOne!43654 Regex!21571) (regTwo!43654 Regex!21571)) (EmptyExpr!21571) (Star!21571 (reg!21900 Regex!21571)) (EmptyLang!21571) (Union!21571 (regOne!43655 Regex!21571) (regTwo!43655 Regex!21571)) )
))
(declare-fun lt!2713479 () Regex!21571)

(declare-fun validRegex!11875 (Regex!21571) Bool)

(assert (=> b!7997837 (= res!3163435 (validRegex!11875 lt!2713479))))

(declare-fun baseR!141 () Regex!21571)

(declare-datatypes ((List!74800 0))(
  ( (Nil!74676) (Cons!74676 (h!81124 C!43480) (t!390543 List!74800)) )
))
(declare-fun input!8036 () List!74800)

(declare-fun derivativeStep!6586 (Regex!21571 C!43480) Regex!21571)

(assert (=> b!7997837 (= lt!2713479 (derivativeStep!6586 baseR!141 (h!81124 input!8036)))))

(declare-fun b!7997838 () Bool)

(declare-fun r!24786 () Regex!21571)

(declare-fun derivative!757 (Regex!21571 List!74800) Regex!21571)

(assert (=> b!7997838 (= e!4711883 (not (= (derivative!757 lt!2713479 (t!390543 input!8036)) r!24786)))))

(declare-fun b!7997839 () Bool)

(declare-fun res!3163436 () Bool)

(assert (=> b!7997839 (=> (not res!3163436) (not e!4711884))))

(assert (=> b!7997839 (= res!3163436 (= (derivative!757 baseR!141 input!8036) r!24786))))

(declare-fun b!7997840 () Bool)

(declare-fun e!4711886 () Bool)

(assert (=> b!7997840 (= e!4711886 tp_is_empty!53685)))

(declare-fun b!7997841 () Bool)

(declare-fun tp!2391576 () Bool)

(assert (=> b!7997841 (= e!4711886 tp!2391576)))

(declare-fun b!7997842 () Bool)

(declare-fun tp!2391578 () Bool)

(assert (=> b!7997842 (= e!4711887 tp!2391578)))

(declare-fun b!7997843 () Bool)

(declare-fun tp!2391579 () Bool)

(declare-fun tp!2391584 () Bool)

(assert (=> b!7997843 (= e!4711887 (and tp!2391579 tp!2391584))))

(declare-fun b!7997844 () Bool)

(declare-fun e!4711885 () Bool)

(declare-fun tp!2391581 () Bool)

(assert (=> b!7997844 (= e!4711885 (and tp_is_empty!53685 tp!2391581))))

(declare-fun b!7997845 () Bool)

(declare-fun res!3163437 () Bool)

(assert (=> b!7997845 (=> (not res!3163437) (not e!4711884))))

(get-info :version)

(assert (=> b!7997845 (= res!3163437 ((_ is Cons!74676) input!8036))))

(declare-fun b!7997846 () Bool)

(declare-fun tp!2391582 () Bool)

(declare-fun tp!2391580 () Bool)

(assert (=> b!7997846 (= e!4711886 (and tp!2391582 tp!2391580))))

(declare-fun b!7997847 () Bool)

(declare-fun tp!2391586 () Bool)

(declare-fun tp!2391585 () Bool)

(assert (=> b!7997847 (= e!4711887 (and tp!2391586 tp!2391585))))

(declare-fun b!7997848 () Bool)

(declare-fun tp!2391577 () Bool)

(declare-fun tp!2391583 () Bool)

(assert (=> b!7997848 (= e!4711886 (and tp!2391577 tp!2391583))))

(declare-fun res!3163438 () Bool)

(assert (=> start!752664 (=> (not res!3163438) (not e!4711884))))

(assert (=> start!752664 (= res!3163438 (validRegex!11875 baseR!141))))

(assert (=> start!752664 e!4711884))

(assert (=> start!752664 e!4711886))

(assert (=> start!752664 e!4711885))

(assert (=> start!752664 e!4711887))

(assert (= (and start!752664 res!3163438) b!7997839))

(assert (= (and b!7997839 res!3163436) b!7997845))

(assert (= (and b!7997845 res!3163437) b!7997837))

(assert (= (and b!7997837 res!3163435) b!7997838))

(assert (= (and start!752664 ((_ is ElementMatch!21571) baseR!141)) b!7997840))

(assert (= (and start!752664 ((_ is Concat!30570) baseR!141)) b!7997846))

(assert (= (and start!752664 ((_ is Star!21571) baseR!141)) b!7997841))

(assert (= (and start!752664 ((_ is Union!21571) baseR!141)) b!7997848))

(assert (= (and start!752664 ((_ is Cons!74676) input!8036)) b!7997844))

(assert (= (and start!752664 ((_ is ElementMatch!21571) r!24786)) b!7997836))

(assert (= (and start!752664 ((_ is Concat!30570) r!24786)) b!7997843))

(assert (= (and start!752664 ((_ is Star!21571) r!24786)) b!7997842))

(assert (= (and start!752664 ((_ is Union!21571) r!24786)) b!7997847))

(declare-fun m!8367436 () Bool)

(assert (=> b!7997837 m!8367436))

(declare-fun m!8367438 () Bool)

(assert (=> b!7997837 m!8367438))

(declare-fun m!8367440 () Bool)

(assert (=> b!7997838 m!8367440))

(declare-fun m!8367442 () Bool)

(assert (=> b!7997839 m!8367442))

(declare-fun m!8367444 () Bool)

(assert (=> start!752664 m!8367444))

(check-sat tp_is_empty!53685 (not b!7997847) (not b!7997838) (not b!7997848) (not b!7997841) (not start!752664) (not b!7997842) (not b!7997839) (not b!7997837) (not b!7997844) (not b!7997846) (not b!7997843))
(check-sat)
(get-model)

(declare-fun bm!742892 () Bool)

(declare-fun call!742897 () Bool)

(declare-fun call!742898 () Bool)

(assert (=> bm!742892 (= call!742897 call!742898)))

(declare-fun b!7997893 () Bool)

(declare-fun e!4711921 () Bool)

(assert (=> b!7997893 (= e!4711921 call!742897)))

(declare-fun c!1468454 () Bool)

(declare-fun c!1468453 () Bool)

(declare-fun bm!742893 () Bool)

(assert (=> bm!742893 (= call!742898 (validRegex!11875 (ite c!1468453 (reg!21900 baseR!141) (ite c!1468454 (regTwo!43655 baseR!141) (regOne!43654 baseR!141)))))))

(declare-fun b!7997894 () Bool)

(declare-fun e!4711922 () Bool)

(declare-fun e!4711924 () Bool)

(assert (=> b!7997894 (= e!4711922 e!4711924)))

(declare-fun res!3163460 () Bool)

(declare-fun nullable!9655 (Regex!21571) Bool)

(assert (=> b!7997894 (= res!3163460 (not (nullable!9655 (reg!21900 baseR!141))))))

(assert (=> b!7997894 (=> (not res!3163460) (not e!4711924))))

(declare-fun b!7997895 () Bool)

(declare-fun e!4711920 () Bool)

(assert (=> b!7997895 (= e!4711922 e!4711920)))

(assert (=> b!7997895 (= c!1468454 ((_ is Union!21571) baseR!141))))

(declare-fun b!7997896 () Bool)

(assert (=> b!7997896 (= e!4711924 call!742898)))

(declare-fun b!7997897 () Bool)

(declare-fun e!4711925 () Bool)

(declare-fun call!742899 () Bool)

(assert (=> b!7997897 (= e!4711925 call!742899)))

(declare-fun b!7997898 () Bool)

(declare-fun e!4711923 () Bool)

(assert (=> b!7997898 (= e!4711923 e!4711925)))

(declare-fun res!3163463 () Bool)

(assert (=> b!7997898 (=> (not res!3163463) (not e!4711925))))

(assert (=> b!7997898 (= res!3163463 call!742897)))

(declare-fun d!2386404 () Bool)

(declare-fun res!3163461 () Bool)

(declare-fun e!4711926 () Bool)

(assert (=> d!2386404 (=> res!3163461 e!4711926)))

(assert (=> d!2386404 (= res!3163461 ((_ is ElementMatch!21571) baseR!141))))

(assert (=> d!2386404 (= (validRegex!11875 baseR!141) e!4711926)))

(declare-fun bm!742894 () Bool)

(assert (=> bm!742894 (= call!742899 (validRegex!11875 (ite c!1468454 (regOne!43655 baseR!141) (regTwo!43654 baseR!141))))))

(declare-fun b!7997899 () Bool)

(declare-fun res!3163459 () Bool)

(assert (=> b!7997899 (=> (not res!3163459) (not e!4711921))))

(assert (=> b!7997899 (= res!3163459 call!742899)))

(assert (=> b!7997899 (= e!4711920 e!4711921)))

(declare-fun b!7997900 () Bool)

(assert (=> b!7997900 (= e!4711926 e!4711922)))

(assert (=> b!7997900 (= c!1468453 ((_ is Star!21571) baseR!141))))

(declare-fun b!7997901 () Bool)

(declare-fun res!3163462 () Bool)

(assert (=> b!7997901 (=> res!3163462 e!4711923)))

(assert (=> b!7997901 (= res!3163462 (not ((_ is Concat!30570) baseR!141)))))

(assert (=> b!7997901 (= e!4711920 e!4711923)))

(assert (= (and d!2386404 (not res!3163461)) b!7997900))

(assert (= (and b!7997900 c!1468453) b!7997894))

(assert (= (and b!7997900 (not c!1468453)) b!7997895))

(assert (= (and b!7997894 res!3163460) b!7997896))

(assert (= (and b!7997895 c!1468454) b!7997899))

(assert (= (and b!7997895 (not c!1468454)) b!7997901))

(assert (= (and b!7997899 res!3163459) b!7997893))

(assert (= (and b!7997901 (not res!3163462)) b!7997898))

(assert (= (and b!7997898 res!3163463) b!7997897))

(assert (= (or b!7997899 b!7997897) bm!742894))

(assert (= (or b!7997893 b!7997898) bm!742892))

(assert (= (or b!7997896 bm!742892) bm!742893))

(declare-fun m!8367456 () Bool)

(assert (=> bm!742893 m!8367456))

(declare-fun m!8367458 () Bool)

(assert (=> b!7997894 m!8367458))

(declare-fun m!8367460 () Bool)

(assert (=> bm!742894 m!8367460))

(assert (=> start!752664 d!2386404))

(declare-fun d!2386410 () Bool)

(declare-fun lt!2713486 () Regex!21571)

(assert (=> d!2386410 (validRegex!11875 lt!2713486)))

(declare-fun e!4711943 () Regex!21571)

(assert (=> d!2386410 (= lt!2713486 e!4711943)))

(declare-fun c!1468461 () Bool)

(assert (=> d!2386410 (= c!1468461 ((_ is Cons!74676) input!8036))))

(assert (=> d!2386410 (validRegex!11875 baseR!141)))

(assert (=> d!2386410 (= (derivative!757 baseR!141 input!8036) lt!2713486)))

(declare-fun b!7997924 () Bool)

(assert (=> b!7997924 (= e!4711943 (derivative!757 (derivativeStep!6586 baseR!141 (h!81124 input!8036)) (t!390543 input!8036)))))

(declare-fun b!7997925 () Bool)

(assert (=> b!7997925 (= e!4711943 baseR!141)))

(assert (= (and d!2386410 c!1468461) b!7997924))

(assert (= (and d!2386410 (not c!1468461)) b!7997925))

(declare-fun m!8367468 () Bool)

(assert (=> d!2386410 m!8367468))

(assert (=> d!2386410 m!8367444))

(assert (=> b!7997924 m!8367438))

(assert (=> b!7997924 m!8367438))

(declare-fun m!8367470 () Bool)

(assert (=> b!7997924 m!8367470))

(assert (=> b!7997839 d!2386410))

(declare-fun bm!742903 () Bool)

(declare-fun call!742908 () Bool)

(declare-fun call!742909 () Bool)

(assert (=> bm!742903 (= call!742908 call!742909)))

(declare-fun b!7997926 () Bool)

(declare-fun e!4711945 () Bool)

(assert (=> b!7997926 (= e!4711945 call!742908)))

(declare-fun c!1468462 () Bool)

(declare-fun bm!742904 () Bool)

(declare-fun c!1468463 () Bool)

(assert (=> bm!742904 (= call!742909 (validRegex!11875 (ite c!1468462 (reg!21900 lt!2713479) (ite c!1468463 (regTwo!43655 lt!2713479) (regOne!43654 lt!2713479)))))))

(declare-fun b!7997927 () Bool)

(declare-fun e!4711946 () Bool)

(declare-fun e!4711948 () Bool)

(assert (=> b!7997927 (= e!4711946 e!4711948)))

(declare-fun res!3163475 () Bool)

(assert (=> b!7997927 (= res!3163475 (not (nullable!9655 (reg!21900 lt!2713479))))))

(assert (=> b!7997927 (=> (not res!3163475) (not e!4711948))))

(declare-fun b!7997928 () Bool)

(declare-fun e!4711944 () Bool)

(assert (=> b!7997928 (= e!4711946 e!4711944)))

(assert (=> b!7997928 (= c!1468463 ((_ is Union!21571) lt!2713479))))

(declare-fun b!7997929 () Bool)

(assert (=> b!7997929 (= e!4711948 call!742909)))

(declare-fun b!7997930 () Bool)

(declare-fun e!4711949 () Bool)

(declare-fun call!742910 () Bool)

(assert (=> b!7997930 (= e!4711949 call!742910)))

(declare-fun b!7997931 () Bool)

(declare-fun e!4711947 () Bool)

(assert (=> b!7997931 (= e!4711947 e!4711949)))

(declare-fun res!3163478 () Bool)

(assert (=> b!7997931 (=> (not res!3163478) (not e!4711949))))

(assert (=> b!7997931 (= res!3163478 call!742908)))

(declare-fun d!2386414 () Bool)

(declare-fun res!3163476 () Bool)

(declare-fun e!4711950 () Bool)

(assert (=> d!2386414 (=> res!3163476 e!4711950)))

(assert (=> d!2386414 (= res!3163476 ((_ is ElementMatch!21571) lt!2713479))))

(assert (=> d!2386414 (= (validRegex!11875 lt!2713479) e!4711950)))

(declare-fun bm!742905 () Bool)

(assert (=> bm!742905 (= call!742910 (validRegex!11875 (ite c!1468463 (regOne!43655 lt!2713479) (regTwo!43654 lt!2713479))))))

(declare-fun b!7997932 () Bool)

(declare-fun res!3163474 () Bool)

(assert (=> b!7997932 (=> (not res!3163474) (not e!4711945))))

(assert (=> b!7997932 (= res!3163474 call!742910)))

(assert (=> b!7997932 (= e!4711944 e!4711945)))

(declare-fun b!7997933 () Bool)

(assert (=> b!7997933 (= e!4711950 e!4711946)))

(assert (=> b!7997933 (= c!1468462 ((_ is Star!21571) lt!2713479))))

(declare-fun b!7997934 () Bool)

(declare-fun res!3163477 () Bool)

(assert (=> b!7997934 (=> res!3163477 e!4711947)))

(assert (=> b!7997934 (= res!3163477 (not ((_ is Concat!30570) lt!2713479)))))

(assert (=> b!7997934 (= e!4711944 e!4711947)))

(assert (= (and d!2386414 (not res!3163476)) b!7997933))

(assert (= (and b!7997933 c!1468462) b!7997927))

(assert (= (and b!7997933 (not c!1468462)) b!7997928))

(assert (= (and b!7997927 res!3163475) b!7997929))

(assert (= (and b!7997928 c!1468463) b!7997932))

(assert (= (and b!7997928 (not c!1468463)) b!7997934))

(assert (= (and b!7997932 res!3163474) b!7997926))

(assert (= (and b!7997934 (not res!3163477)) b!7997931))

(assert (= (and b!7997931 res!3163478) b!7997930))

(assert (= (or b!7997932 b!7997930) bm!742905))

(assert (= (or b!7997926 b!7997931) bm!742903))

(assert (= (or b!7997929 bm!742903) bm!742904))

(declare-fun m!8367478 () Bool)

(assert (=> bm!742904 m!8367478))

(declare-fun m!8367480 () Bool)

(assert (=> b!7997927 m!8367480))

(declare-fun m!8367482 () Bool)

(assert (=> bm!742905 m!8367482))

(assert (=> b!7997837 d!2386414))

(declare-fun b!7997985 () Bool)

(declare-fun e!4711979 () Regex!21571)

(declare-fun e!4711976 () Regex!21571)

(assert (=> b!7997985 (= e!4711979 e!4711976)))

(declare-fun c!1468492 () Bool)

(assert (=> b!7997985 (= c!1468492 ((_ is ElementMatch!21571) baseR!141))))

(declare-fun b!7997986 () Bool)

(declare-fun c!1468490 () Bool)

(assert (=> b!7997986 (= c!1468490 (nullable!9655 (regOne!43654 baseR!141)))))

(declare-fun e!4711978 () Regex!21571)

(declare-fun e!4711980 () Regex!21571)

(assert (=> b!7997986 (= e!4711978 e!4711980)))

(declare-fun bm!742926 () Bool)

(declare-fun c!1468489 () Bool)

(declare-fun c!1468491 () Bool)

(declare-fun call!742933 () Regex!21571)

(assert (=> bm!742926 (= call!742933 (derivativeStep!6586 (ite c!1468489 (regTwo!43655 baseR!141) (ite c!1468491 (reg!21900 baseR!141) (regOne!43654 baseR!141))) (h!81124 input!8036)))))

(declare-fun b!7997987 () Bool)

(declare-fun e!4711977 () Regex!21571)

(declare-fun call!742934 () Regex!21571)

(assert (=> b!7997987 (= e!4711977 (Union!21571 call!742934 call!742933))))

(declare-fun b!7997988 () Bool)

(assert (=> b!7997988 (= e!4711977 e!4711978)))

(assert (=> b!7997988 (= c!1468491 ((_ is Star!21571) baseR!141))))

(declare-fun d!2386418 () Bool)

(declare-fun lt!2713492 () Regex!21571)

(assert (=> d!2386418 (validRegex!11875 lt!2713492)))

(assert (=> d!2386418 (= lt!2713492 e!4711979)))

(declare-fun c!1468493 () Bool)

(assert (=> d!2386418 (= c!1468493 (or ((_ is EmptyExpr!21571) baseR!141) ((_ is EmptyLang!21571) baseR!141)))))

(assert (=> d!2386418 (validRegex!11875 baseR!141)))

(assert (=> d!2386418 (= (derivativeStep!6586 baseR!141 (h!81124 input!8036)) lt!2713492)))

(declare-fun b!7997989 () Bool)

(assert (=> b!7997989 (= e!4711976 (ite (= (h!81124 input!8036) (c!1468440 baseR!141)) EmptyExpr!21571 EmptyLang!21571))))

(declare-fun bm!742927 () Bool)

(declare-fun call!742932 () Regex!21571)

(assert (=> bm!742927 (= call!742932 call!742933)))

(declare-fun b!7997990 () Bool)

(assert (=> b!7997990 (= c!1468489 ((_ is Union!21571) baseR!141))))

(assert (=> b!7997990 (= e!4711976 e!4711977)))

(declare-fun bm!742928 () Bool)

(declare-fun call!742931 () Regex!21571)

(assert (=> bm!742928 (= call!742931 call!742932)))

(declare-fun b!7997991 () Bool)

(assert (=> b!7997991 (= e!4711978 (Concat!30570 call!742932 baseR!141))))

(declare-fun b!7997992 () Bool)

(assert (=> b!7997992 (= e!4711979 EmptyLang!21571)))

(declare-fun b!7997993 () Bool)

(assert (=> b!7997993 (= e!4711980 (Union!21571 (Concat!30570 call!742931 (regTwo!43654 baseR!141)) call!742934))))

(declare-fun b!7997994 () Bool)

(assert (=> b!7997994 (= e!4711980 (Union!21571 (Concat!30570 call!742931 (regTwo!43654 baseR!141)) EmptyLang!21571))))

(declare-fun bm!742929 () Bool)

(assert (=> bm!742929 (= call!742934 (derivativeStep!6586 (ite c!1468489 (regOne!43655 baseR!141) (regTwo!43654 baseR!141)) (h!81124 input!8036)))))

(assert (= (and d!2386418 c!1468493) b!7997992))

(assert (= (and d!2386418 (not c!1468493)) b!7997985))

(assert (= (and b!7997985 c!1468492) b!7997989))

(assert (= (and b!7997985 (not c!1468492)) b!7997990))

(assert (= (and b!7997990 c!1468489) b!7997987))

(assert (= (and b!7997990 (not c!1468489)) b!7997988))

(assert (= (and b!7997988 c!1468491) b!7997991))

(assert (= (and b!7997988 (not c!1468491)) b!7997986))

(assert (= (and b!7997986 c!1468490) b!7997993))

(assert (= (and b!7997986 (not c!1468490)) b!7997994))

(assert (= (or b!7997993 b!7997994) bm!742928))

(assert (= (or b!7997991 bm!742928) bm!742927))

(assert (= (or b!7997987 bm!742927) bm!742926))

(assert (= (or b!7997987 b!7997993) bm!742929))

(declare-fun m!8367492 () Bool)

(assert (=> b!7997986 m!8367492))

(declare-fun m!8367494 () Bool)

(assert (=> bm!742926 m!8367494))

(declare-fun m!8367496 () Bool)

(assert (=> d!2386418 m!8367496))

(assert (=> d!2386418 m!8367444))

(declare-fun m!8367498 () Bool)

(assert (=> bm!742929 m!8367498))

(assert (=> b!7997837 d!2386418))

(declare-fun d!2386420 () Bool)

(declare-fun lt!2713493 () Regex!21571)

(assert (=> d!2386420 (validRegex!11875 lt!2713493)))

(declare-fun e!4711984 () Regex!21571)

(assert (=> d!2386420 (= lt!2713493 e!4711984)))

(declare-fun c!1468494 () Bool)

(assert (=> d!2386420 (= c!1468494 ((_ is Cons!74676) (t!390543 input!8036)))))

(assert (=> d!2386420 (validRegex!11875 lt!2713479)))

(assert (=> d!2386420 (= (derivative!757 lt!2713479 (t!390543 input!8036)) lt!2713493)))

(declare-fun b!7998002 () Bool)

(assert (=> b!7998002 (= e!4711984 (derivative!757 (derivativeStep!6586 lt!2713479 (h!81124 (t!390543 input!8036))) (t!390543 (t!390543 input!8036))))))

(declare-fun b!7998003 () Bool)

(assert (=> b!7998003 (= e!4711984 lt!2713479)))

(assert (= (and d!2386420 c!1468494) b!7998002))

(assert (= (and d!2386420 (not c!1468494)) b!7998003))

(declare-fun m!8367500 () Bool)

(assert (=> d!2386420 m!8367500))

(assert (=> d!2386420 m!8367436))

(declare-fun m!8367502 () Bool)

(assert (=> b!7998002 m!8367502))

(assert (=> b!7998002 m!8367502))

(declare-fun m!8367504 () Bool)

(assert (=> b!7998002 m!8367504))

(assert (=> b!7997838 d!2386420))

(declare-fun b!7998034 () Bool)

(declare-fun e!4711992 () Bool)

(assert (=> b!7998034 (= e!4711992 tp_is_empty!53685)))

(declare-fun b!7998036 () Bool)

(declare-fun tp!2391629 () Bool)

(assert (=> b!7998036 (= e!4711992 tp!2391629)))

(declare-fun b!7998035 () Bool)

(declare-fun tp!2391627 () Bool)

(declare-fun tp!2391626 () Bool)

(assert (=> b!7998035 (= e!4711992 (and tp!2391627 tp!2391626))))

(assert (=> b!7997841 (= tp!2391576 e!4711992)))

(declare-fun b!7998037 () Bool)

(declare-fun tp!2391625 () Bool)

(declare-fun tp!2391628 () Bool)

(assert (=> b!7998037 (= e!4711992 (and tp!2391625 tp!2391628))))

(assert (= (and b!7997841 ((_ is ElementMatch!21571) (reg!21900 baseR!141))) b!7998034))

(assert (= (and b!7997841 ((_ is Concat!30570) (reg!21900 baseR!141))) b!7998035))

(assert (= (and b!7997841 ((_ is Star!21571) (reg!21900 baseR!141))) b!7998036))

(assert (= (and b!7997841 ((_ is Union!21571) (reg!21900 baseR!141))) b!7998037))

(declare-fun b!7998042 () Bool)

(declare-fun e!4711994 () Bool)

(assert (=> b!7998042 (= e!4711994 tp_is_empty!53685)))

(declare-fun b!7998044 () Bool)

(declare-fun tp!2391639 () Bool)

(assert (=> b!7998044 (= e!4711994 tp!2391639)))

(declare-fun b!7998043 () Bool)

(declare-fun tp!2391637 () Bool)

(declare-fun tp!2391636 () Bool)

(assert (=> b!7998043 (= e!4711994 (and tp!2391637 tp!2391636))))

(assert (=> b!7997846 (= tp!2391582 e!4711994)))

(declare-fun b!7998045 () Bool)

(declare-fun tp!2391635 () Bool)

(declare-fun tp!2391638 () Bool)

(assert (=> b!7998045 (= e!4711994 (and tp!2391635 tp!2391638))))

(assert (= (and b!7997846 ((_ is ElementMatch!21571) (regOne!43654 baseR!141))) b!7998042))

(assert (= (and b!7997846 ((_ is Concat!30570) (regOne!43654 baseR!141))) b!7998043))

(assert (= (and b!7997846 ((_ is Star!21571) (regOne!43654 baseR!141))) b!7998044))

(assert (= (and b!7997846 ((_ is Union!21571) (regOne!43654 baseR!141))) b!7998045))

(declare-fun b!7998050 () Bool)

(declare-fun e!4711996 () Bool)

(assert (=> b!7998050 (= e!4711996 tp_is_empty!53685)))

(declare-fun b!7998052 () Bool)

(declare-fun tp!2391649 () Bool)

(assert (=> b!7998052 (= e!4711996 tp!2391649)))

(declare-fun b!7998051 () Bool)

(declare-fun tp!2391647 () Bool)

(declare-fun tp!2391646 () Bool)

(assert (=> b!7998051 (= e!4711996 (and tp!2391647 tp!2391646))))

(assert (=> b!7997846 (= tp!2391580 e!4711996)))

(declare-fun b!7998053 () Bool)

(declare-fun tp!2391645 () Bool)

(declare-fun tp!2391648 () Bool)

(assert (=> b!7998053 (= e!4711996 (and tp!2391645 tp!2391648))))

(assert (= (and b!7997846 ((_ is ElementMatch!21571) (regTwo!43654 baseR!141))) b!7998050))

(assert (= (and b!7997846 ((_ is Concat!30570) (regTwo!43654 baseR!141))) b!7998051))

(assert (= (and b!7997846 ((_ is Star!21571) (regTwo!43654 baseR!141))) b!7998052))

(assert (= (and b!7997846 ((_ is Union!21571) (regTwo!43654 baseR!141))) b!7998053))

(declare-fun b!7998058 () Bool)

(declare-fun e!4711998 () Bool)

(assert (=> b!7998058 (= e!4711998 tp_is_empty!53685)))

(declare-fun b!7998060 () Bool)

(declare-fun tp!2391659 () Bool)

(assert (=> b!7998060 (= e!4711998 tp!2391659)))

(declare-fun b!7998059 () Bool)

(declare-fun tp!2391657 () Bool)

(declare-fun tp!2391656 () Bool)

(assert (=> b!7998059 (= e!4711998 (and tp!2391657 tp!2391656))))

(assert (=> b!7997848 (= tp!2391577 e!4711998)))

(declare-fun b!7998061 () Bool)

(declare-fun tp!2391655 () Bool)

(declare-fun tp!2391658 () Bool)

(assert (=> b!7998061 (= e!4711998 (and tp!2391655 tp!2391658))))

(assert (= (and b!7997848 ((_ is ElementMatch!21571) (regOne!43655 baseR!141))) b!7998058))

(assert (= (and b!7997848 ((_ is Concat!30570) (regOne!43655 baseR!141))) b!7998059))

(assert (= (and b!7997848 ((_ is Star!21571) (regOne!43655 baseR!141))) b!7998060))

(assert (= (and b!7997848 ((_ is Union!21571) (regOne!43655 baseR!141))) b!7998061))

(declare-fun b!7998066 () Bool)

(declare-fun e!4712000 () Bool)

(assert (=> b!7998066 (= e!4712000 tp_is_empty!53685)))

(declare-fun b!7998068 () Bool)

(declare-fun tp!2391669 () Bool)

(assert (=> b!7998068 (= e!4712000 tp!2391669)))

(declare-fun b!7998067 () Bool)

(declare-fun tp!2391667 () Bool)

(declare-fun tp!2391666 () Bool)

(assert (=> b!7998067 (= e!4712000 (and tp!2391667 tp!2391666))))

(assert (=> b!7997848 (= tp!2391583 e!4712000)))

(declare-fun b!7998069 () Bool)

(declare-fun tp!2391665 () Bool)

(declare-fun tp!2391668 () Bool)

(assert (=> b!7998069 (= e!4712000 (and tp!2391665 tp!2391668))))

(assert (= (and b!7997848 ((_ is ElementMatch!21571) (regTwo!43655 baseR!141))) b!7998066))

(assert (= (and b!7997848 ((_ is Concat!30570) (regTwo!43655 baseR!141))) b!7998067))

(assert (= (and b!7997848 ((_ is Star!21571) (regTwo!43655 baseR!141))) b!7998068))

(assert (= (and b!7997848 ((_ is Union!21571) (regTwo!43655 baseR!141))) b!7998069))

(declare-fun b!7998074 () Bool)

(declare-fun e!4712002 () Bool)

(assert (=> b!7998074 (= e!4712002 tp_is_empty!53685)))

(declare-fun b!7998076 () Bool)

(declare-fun tp!2391679 () Bool)

(assert (=> b!7998076 (= e!4712002 tp!2391679)))

(declare-fun b!7998075 () Bool)

(declare-fun tp!2391677 () Bool)

(declare-fun tp!2391676 () Bool)

(assert (=> b!7998075 (= e!4712002 (and tp!2391677 tp!2391676))))

(assert (=> b!7997842 (= tp!2391578 e!4712002)))

(declare-fun b!7998077 () Bool)

(declare-fun tp!2391675 () Bool)

(declare-fun tp!2391678 () Bool)

(assert (=> b!7998077 (= e!4712002 (and tp!2391675 tp!2391678))))

(assert (= (and b!7997842 ((_ is ElementMatch!21571) (reg!21900 r!24786))) b!7998074))

(assert (= (and b!7997842 ((_ is Concat!30570) (reg!21900 r!24786))) b!7998075))

(assert (= (and b!7997842 ((_ is Star!21571) (reg!21900 r!24786))) b!7998076))

(assert (= (and b!7997842 ((_ is Union!21571) (reg!21900 r!24786))) b!7998077))

(declare-fun b!7998082 () Bool)

(declare-fun e!4712004 () Bool)

(assert (=> b!7998082 (= e!4712004 tp_is_empty!53685)))

(declare-fun b!7998084 () Bool)

(declare-fun tp!2391689 () Bool)

(assert (=> b!7998084 (= e!4712004 tp!2391689)))

(declare-fun b!7998083 () Bool)

(declare-fun tp!2391687 () Bool)

(declare-fun tp!2391686 () Bool)

(assert (=> b!7998083 (= e!4712004 (and tp!2391687 tp!2391686))))

(assert (=> b!7997847 (= tp!2391586 e!4712004)))

(declare-fun b!7998085 () Bool)

(declare-fun tp!2391685 () Bool)

(declare-fun tp!2391688 () Bool)

(assert (=> b!7998085 (= e!4712004 (and tp!2391685 tp!2391688))))

(assert (= (and b!7997847 ((_ is ElementMatch!21571) (regOne!43655 r!24786))) b!7998082))

(assert (= (and b!7997847 ((_ is Concat!30570) (regOne!43655 r!24786))) b!7998083))

(assert (= (and b!7997847 ((_ is Star!21571) (regOne!43655 r!24786))) b!7998084))

(assert (= (and b!7997847 ((_ is Union!21571) (regOne!43655 r!24786))) b!7998085))

(declare-fun b!7998090 () Bool)

(declare-fun e!4712006 () Bool)

(assert (=> b!7998090 (= e!4712006 tp_is_empty!53685)))

(declare-fun b!7998092 () Bool)

(declare-fun tp!2391699 () Bool)

(assert (=> b!7998092 (= e!4712006 tp!2391699)))

(declare-fun b!7998091 () Bool)

(declare-fun tp!2391697 () Bool)

(declare-fun tp!2391696 () Bool)

(assert (=> b!7998091 (= e!4712006 (and tp!2391697 tp!2391696))))

(assert (=> b!7997847 (= tp!2391585 e!4712006)))

(declare-fun b!7998093 () Bool)

(declare-fun tp!2391695 () Bool)

(declare-fun tp!2391698 () Bool)

(assert (=> b!7998093 (= e!4712006 (and tp!2391695 tp!2391698))))

(assert (= (and b!7997847 ((_ is ElementMatch!21571) (regTwo!43655 r!24786))) b!7998090))

(assert (= (and b!7997847 ((_ is Concat!30570) (regTwo!43655 r!24786))) b!7998091))

(assert (= (and b!7997847 ((_ is Star!21571) (regTwo!43655 r!24786))) b!7998092))

(assert (= (and b!7997847 ((_ is Union!21571) (regTwo!43655 r!24786))) b!7998093))

(declare-fun b!7998098 () Bool)

(declare-fun e!4712009 () Bool)

(declare-fun tp!2391702 () Bool)

(assert (=> b!7998098 (= e!4712009 (and tp_is_empty!53685 tp!2391702))))

(assert (=> b!7997844 (= tp!2391581 e!4712009)))

(assert (= (and b!7997844 ((_ is Cons!74676) (t!390543 input!8036))) b!7998098))

(declare-fun b!7998099 () Bool)

(declare-fun e!4712010 () Bool)

(assert (=> b!7998099 (= e!4712010 tp_is_empty!53685)))

(declare-fun b!7998101 () Bool)

(declare-fun tp!2391707 () Bool)

(assert (=> b!7998101 (= e!4712010 tp!2391707)))

(declare-fun b!7998100 () Bool)

(declare-fun tp!2391705 () Bool)

(declare-fun tp!2391704 () Bool)

(assert (=> b!7998100 (= e!4712010 (and tp!2391705 tp!2391704))))

(assert (=> b!7997843 (= tp!2391579 e!4712010)))

(declare-fun b!7998102 () Bool)

(declare-fun tp!2391703 () Bool)

(declare-fun tp!2391706 () Bool)

(assert (=> b!7998102 (= e!4712010 (and tp!2391703 tp!2391706))))

(assert (= (and b!7997843 ((_ is ElementMatch!21571) (regOne!43654 r!24786))) b!7998099))

(assert (= (and b!7997843 ((_ is Concat!30570) (regOne!43654 r!24786))) b!7998100))

(assert (= (and b!7997843 ((_ is Star!21571) (regOne!43654 r!24786))) b!7998101))

(assert (= (and b!7997843 ((_ is Union!21571) (regOne!43654 r!24786))) b!7998102))

(declare-fun b!7998103 () Bool)

(declare-fun e!4712011 () Bool)

(assert (=> b!7998103 (= e!4712011 tp_is_empty!53685)))

(declare-fun b!7998105 () Bool)

(declare-fun tp!2391712 () Bool)

(assert (=> b!7998105 (= e!4712011 tp!2391712)))

(declare-fun b!7998104 () Bool)

(declare-fun tp!2391710 () Bool)

(declare-fun tp!2391709 () Bool)

(assert (=> b!7998104 (= e!4712011 (and tp!2391710 tp!2391709))))

(assert (=> b!7997843 (= tp!2391584 e!4712011)))

(declare-fun b!7998106 () Bool)

(declare-fun tp!2391708 () Bool)

(declare-fun tp!2391711 () Bool)

(assert (=> b!7998106 (= e!4712011 (and tp!2391708 tp!2391711))))

(assert (= (and b!7997843 ((_ is ElementMatch!21571) (regTwo!43654 r!24786))) b!7998103))

(assert (= (and b!7997843 ((_ is Concat!30570) (regTwo!43654 r!24786))) b!7998104))

(assert (= (and b!7997843 ((_ is Star!21571) (regTwo!43654 r!24786))) b!7998105))

(assert (= (and b!7997843 ((_ is Union!21571) (regTwo!43654 r!24786))) b!7998106))

(check-sat tp_is_empty!53685 (not bm!742893) (not b!7998106) (not b!7998092) (not bm!742894) (not bm!742905) (not b!7997894) (not bm!742904) (not b!7998053) (not b!7998084) (not b!7998059) (not b!7998035) (not b!7997927) (not b!7997924) (not b!7998037) (not b!7997986) (not b!7998051) (not b!7998075) (not b!7998091) (not b!7998002) (not b!7998043) (not b!7998077) (not d!2386418) (not b!7998098) (not b!7998100) (not bm!742929) (not d!2386410) (not b!7998036) (not b!7998083) (not b!7998052) (not b!7998093) (not b!7998068) (not bm!742926) (not b!7998044) (not b!7998069) (not b!7998061) (not b!7998045) (not b!7998105) (not b!7998060) (not b!7998104) (not b!7998101) (not b!7998067) (not b!7998102) (not b!7998076) (not b!7998085) (not d!2386420))
(check-sat)
