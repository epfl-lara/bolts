; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749658 () Bool)

(assert start!749658)

(declare-fun b!7942741 () Bool)

(declare-fun e!4686409 () Bool)

(declare-fun tp!2361905 () Bool)

(declare-fun tp!2361896 () Bool)

(assert (=> b!7942741 (= e!4686409 (and tp!2361905 tp!2361896))))

(declare-fun b!7942742 () Bool)

(declare-fun e!4686406 () Bool)

(declare-fun tp_is_empty!53375 () Bool)

(declare-fun tp!2361898 () Bool)

(assert (=> b!7942742 (= e!4686406 (and tp_is_empty!53375 tp!2361898))))

(declare-fun b!7942743 () Bool)

(declare-fun e!4686408 () Bool)

(declare-fun tp!2361901 () Bool)

(declare-fun tp!2361906 () Bool)

(assert (=> b!7942743 (= e!4686408 (and tp!2361901 tp!2361906))))

(declare-fun b!7942744 () Bool)

(assert (=> b!7942744 (= e!4686409 tp_is_empty!53375)))

(declare-fun b!7942745 () Bool)

(declare-fun tp!2361902 () Bool)

(assert (=> b!7942745 (= e!4686409 tp!2361902)))

(declare-fun b!7942746 () Bool)

(declare-fun e!4686407 () Bool)

(declare-fun tp!2361899 () Bool)

(assert (=> b!7942746 (= e!4686407 (and tp_is_empty!53375 tp!2361899))))

(declare-fun b!7942748 () Bool)

(declare-fun tp!2361897 () Bool)

(declare-fun tp!2361895 () Bool)

(assert (=> b!7942748 (= e!4686409 (and tp!2361897 tp!2361895))))

(declare-fun b!7942749 () Bool)

(declare-fun res!3150737 () Bool)

(declare-fun e!4686410 () Bool)

(assert (=> b!7942749 (=> (not res!3150737) (not e!4686410))))

(declare-datatypes ((C!43170 0))(
  ( (C!43171 (val!32133 Int)) )
))
(declare-datatypes ((Regex!21416 0))(
  ( (ElementMatch!21416 (c!1459207 C!43170)) (Concat!30415 (regOne!43344 Regex!21416) (regTwo!43344 Regex!21416)) (EmptyExpr!21416) (Star!21416 (reg!21745 Regex!21416)) (EmptyLang!21416) (Union!21416 (regOne!43345 Regex!21416) (regTwo!43345 Regex!21416)) )
))
(declare-fun baseR!116 () Regex!21416)

(declare-datatypes ((List!74645 0))(
  ( (Nil!74521) (Cons!74521 (h!80969 C!43170) (t!390388 List!74645)) )
))
(declare-fun testedP!447 () List!74645)

(declare-fun r!24602 () Regex!21416)

(declare-fun derivative!602 (Regex!21416 List!74645) Regex!21416)

(assert (=> b!7942749 (= res!3150737 (= (derivative!602 baseR!116 testedP!447) r!24602))))

(declare-fun b!7942750 () Bool)

(declare-fun res!3150739 () Bool)

(assert (=> b!7942750 (=> (not res!3150739) (not e!4686410))))

(declare-fun input!7927 () List!74645)

(declare-fun isPrefix!6516 (List!74645 List!74645) Bool)

(assert (=> b!7942750 (= res!3150739 (isPrefix!6516 testedP!447 input!7927))))

(declare-fun b!7942751 () Bool)

(declare-fun validRegex!11720 (Regex!21416) Bool)

(assert (=> b!7942751 (= e!4686410 (not (validRegex!11720 r!24602)))))

(declare-fun lt!2697075 () Int)

(declare-fun size!43352 (List!74645) Int)

(assert (=> b!7942751 (= lt!2697075 (size!43352 input!7927))))

(declare-fun lt!2697074 () List!74645)

(declare-fun getSuffix!3719 (List!74645 List!74645) List!74645)

(assert (=> b!7942751 (= lt!2697074 (getSuffix!3719 input!7927 testedP!447))))

(declare-fun lt!2697076 () Int)

(assert (=> b!7942751 (= lt!2697076 (size!43352 testedP!447))))

(declare-fun b!7942747 () Bool)

(declare-fun tp!2361900 () Bool)

(assert (=> b!7942747 (= e!4686408 tp!2361900)))

(declare-fun res!3150738 () Bool)

(assert (=> start!749658 (=> (not res!3150738) (not e!4686410))))

(assert (=> start!749658 (= res!3150738 (validRegex!11720 baseR!116))))

(assert (=> start!749658 e!4686410))

(assert (=> start!749658 e!4686408))

(assert (=> start!749658 e!4686407))

(assert (=> start!749658 e!4686406))

(assert (=> start!749658 e!4686409))

(declare-fun b!7942752 () Bool)

(declare-fun tp!2361904 () Bool)

(declare-fun tp!2361903 () Bool)

(assert (=> b!7942752 (= e!4686408 (and tp!2361904 tp!2361903))))

(declare-fun b!7942753 () Bool)

(assert (=> b!7942753 (= e!4686408 tp_is_empty!53375)))

(assert (= (and start!749658 res!3150738) b!7942750))

(assert (= (and b!7942750 res!3150739) b!7942749))

(assert (= (and b!7942749 res!3150737) b!7942751))

(assert (= (and start!749658 (is-ElementMatch!21416 baseR!116)) b!7942753))

(assert (= (and start!749658 (is-Concat!30415 baseR!116)) b!7942743))

(assert (= (and start!749658 (is-Star!21416 baseR!116)) b!7942747))

(assert (= (and start!749658 (is-Union!21416 baseR!116)) b!7942752))

(assert (= (and start!749658 (is-Cons!74521 testedP!447)) b!7942746))

(assert (= (and start!749658 (is-Cons!74521 input!7927)) b!7942742))

(assert (= (and start!749658 (is-ElementMatch!21416 r!24602)) b!7942744))

(assert (= (and start!749658 (is-Concat!30415 r!24602)) b!7942741))

(assert (= (and start!749658 (is-Star!21416 r!24602)) b!7942745))

(assert (= (and start!749658 (is-Union!21416 r!24602)) b!7942748))

(declare-fun m!8330854 () Bool)

(assert (=> b!7942749 m!8330854))

(declare-fun m!8330856 () Bool)

(assert (=> b!7942750 m!8330856))

(declare-fun m!8330858 () Bool)

(assert (=> b!7942751 m!8330858))

(declare-fun m!8330860 () Bool)

(assert (=> b!7942751 m!8330860))

(declare-fun m!8330862 () Bool)

(assert (=> b!7942751 m!8330862))

(declare-fun m!8330864 () Bool)

(assert (=> b!7942751 m!8330864))

(declare-fun m!8330866 () Bool)

(assert (=> start!749658 m!8330866))

(push 1)

(assert (not b!7942751))

(assert (not b!7942741))

(assert tp_is_empty!53375)

(assert (not b!7942749))

(assert (not b!7942743))

(assert (not b!7942745))

(assert (not b!7942742))

(assert (not b!7942750))

(assert (not b!7942746))

(assert (not b!7942747))

(assert (not b!7942748))

(assert (not b!7942752))

(assert (not start!749658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7942811 () Bool)

(declare-fun e!4686440 () Bool)

(declare-fun call!736102 () Bool)

(assert (=> b!7942811 (= e!4686440 call!736102)))

(declare-fun b!7942812 () Bool)

(declare-fun e!4686444 () Bool)

(declare-fun e!4686442 () Bool)

(assert (=> b!7942812 (= e!4686444 e!4686442)))

(declare-fun c!1459213 () Bool)

(assert (=> b!7942812 (= c!1459213 (is-Star!21416 baseR!116))))

(declare-fun b!7942813 () Bool)

(declare-fun e!4686443 () Bool)

(assert (=> b!7942813 (= e!4686442 e!4686443)))

(declare-fun c!1459214 () Bool)

(assert (=> b!7942813 (= c!1459214 (is-Union!21416 baseR!116))))

(declare-fun b!7942814 () Bool)

(declare-fun res!3150761 () Bool)

(declare-fun e!4686445 () Bool)

(assert (=> b!7942814 (=> res!3150761 e!4686445)))

(assert (=> b!7942814 (= res!3150761 (not (is-Concat!30415 baseR!116)))))

(assert (=> b!7942814 (= e!4686443 e!4686445)))

(declare-fun bm!736096 () Bool)

(assert (=> bm!736096 (= call!736102 (validRegex!11720 (ite c!1459213 (reg!21745 baseR!116) (ite c!1459214 (regOne!43345 baseR!116) (regOne!43344 baseR!116)))))))

(declare-fun b!7942815 () Bool)

(declare-fun e!4686446 () Bool)

(declare-fun call!736103 () Bool)

(assert (=> b!7942815 (= e!4686446 call!736103)))

(declare-fun bm!736097 () Bool)

(assert (=> bm!736097 (= call!736103 (validRegex!11720 (ite c!1459214 (regTwo!43345 baseR!116) (regTwo!43344 baseR!116))))))

(declare-fun b!7942816 () Bool)

(declare-fun res!3150760 () Bool)

(assert (=> b!7942816 (=> (not res!3150760) (not e!4686446))))

(declare-fun call!736101 () Bool)

(assert (=> b!7942816 (= res!3150760 call!736101)))

(assert (=> b!7942816 (= e!4686443 e!4686446)))

(declare-fun b!7942817 () Bool)

(declare-fun e!4686441 () Bool)

(assert (=> b!7942817 (= e!4686445 e!4686441)))

(declare-fun res!3150763 () Bool)

(assert (=> b!7942817 (=> (not res!3150763) (not e!4686441))))

(assert (=> b!7942817 (= res!3150763 call!736101)))

(declare-fun b!7942818 () Bool)

(assert (=> b!7942818 (= e!4686441 call!736103)))

(declare-fun bm!736098 () Bool)

(assert (=> bm!736098 (= call!736101 call!736102)))

(declare-fun b!7942819 () Bool)

(assert (=> b!7942819 (= e!4686442 e!4686440)))

(declare-fun res!3150759 () Bool)

(declare-fun nullable!9535 (Regex!21416) Bool)

(assert (=> b!7942819 (= res!3150759 (not (nullable!9535 (reg!21745 baseR!116))))))

(assert (=> b!7942819 (=> (not res!3150759) (not e!4686440))))

(declare-fun d!2375205 () Bool)

(declare-fun res!3150762 () Bool)

(assert (=> d!2375205 (=> res!3150762 e!4686444)))

(assert (=> d!2375205 (= res!3150762 (is-ElementMatch!21416 baseR!116))))

(assert (=> d!2375205 (= (validRegex!11720 baseR!116) e!4686444)))

(assert (= (and d!2375205 (not res!3150762)) b!7942812))

(assert (= (and b!7942812 c!1459213) b!7942819))

(assert (= (and b!7942812 (not c!1459213)) b!7942813))

(assert (= (and b!7942819 res!3150759) b!7942811))

(assert (= (and b!7942813 c!1459214) b!7942816))

(assert (= (and b!7942813 (not c!1459214)) b!7942814))

(assert (= (and b!7942816 res!3150760) b!7942815))

(assert (= (and b!7942814 (not res!3150761)) b!7942817))

(assert (= (and b!7942817 res!3150763) b!7942818))

(assert (= (or b!7942815 b!7942818) bm!736097))

(assert (= (or b!7942816 b!7942817) bm!736098))

(assert (= (or b!7942811 bm!736098) bm!736096))

(declare-fun m!8330882 () Bool)

(assert (=> bm!736096 m!8330882))

(declare-fun m!8330884 () Bool)

(assert (=> bm!736097 m!8330884))

(declare-fun m!8330886 () Bool)

(assert (=> b!7942819 m!8330886))

(assert (=> start!749658 d!2375205))

(declare-fun d!2375209 () Bool)

(declare-fun lt!2697090 () Regex!21416)

(assert (=> d!2375209 (validRegex!11720 lt!2697090)))

(declare-fun e!4686451 () Regex!21416)

(assert (=> d!2375209 (= lt!2697090 e!4686451)))

(declare-fun c!1459219 () Bool)

(assert (=> d!2375209 (= c!1459219 (is-Cons!74521 testedP!447))))

(assert (=> d!2375209 (validRegex!11720 baseR!116)))

(assert (=> d!2375209 (= (derivative!602 baseR!116 testedP!447) lt!2697090)))

(declare-fun b!7942828 () Bool)

(declare-fun derivativeStep!6472 (Regex!21416 C!43170) Regex!21416)

(assert (=> b!7942828 (= e!4686451 (derivative!602 (derivativeStep!6472 baseR!116 (h!80969 testedP!447)) (t!390388 testedP!447)))))

(declare-fun b!7942829 () Bool)

(assert (=> b!7942829 (= e!4686451 baseR!116)))

(assert (= (and d!2375209 c!1459219) b!7942828))

(assert (= (and d!2375209 (not c!1459219)) b!7942829))

(declare-fun m!8330888 () Bool)

(assert (=> d!2375209 m!8330888))

(assert (=> d!2375209 m!8330866))

(declare-fun m!8330890 () Bool)

(assert (=> b!7942828 m!8330890))

(assert (=> b!7942828 m!8330890))

(declare-fun m!8330892 () Bool)

(assert (=> b!7942828 m!8330892))

(assert (=> b!7942749 d!2375209))

(declare-fun b!7942830 () Bool)

(declare-fun e!4686452 () Bool)

(declare-fun call!736105 () Bool)

(assert (=> b!7942830 (= e!4686452 call!736105)))

(declare-fun b!7942831 () Bool)

(declare-fun e!4686456 () Bool)

(declare-fun e!4686454 () Bool)

(assert (=> b!7942831 (= e!4686456 e!4686454)))

(declare-fun c!1459220 () Bool)

(assert (=> b!7942831 (= c!1459220 (is-Star!21416 r!24602))))

(declare-fun b!7942832 () Bool)

(declare-fun e!4686455 () Bool)

(assert (=> b!7942832 (= e!4686454 e!4686455)))

(declare-fun c!1459221 () Bool)

(assert (=> b!7942832 (= c!1459221 (is-Union!21416 r!24602))))

(declare-fun b!7942833 () Bool)

(declare-fun res!3150766 () Bool)

(declare-fun e!4686457 () Bool)

(assert (=> b!7942833 (=> res!3150766 e!4686457)))

(assert (=> b!7942833 (= res!3150766 (not (is-Concat!30415 r!24602)))))

(assert (=> b!7942833 (= e!4686455 e!4686457)))

(declare-fun bm!736099 () Bool)

(assert (=> bm!736099 (= call!736105 (validRegex!11720 (ite c!1459220 (reg!21745 r!24602) (ite c!1459221 (regOne!43345 r!24602) (regOne!43344 r!24602)))))))

(declare-fun b!7942834 () Bool)

(declare-fun e!4686458 () Bool)

(declare-fun call!736106 () Bool)

(assert (=> b!7942834 (= e!4686458 call!736106)))

(declare-fun bm!736100 () Bool)

(assert (=> bm!736100 (= call!736106 (validRegex!11720 (ite c!1459221 (regTwo!43345 r!24602) (regTwo!43344 r!24602))))))

(declare-fun b!7942835 () Bool)

(declare-fun res!3150765 () Bool)

(assert (=> b!7942835 (=> (not res!3150765) (not e!4686458))))

(declare-fun call!736104 () Bool)

(assert (=> b!7942835 (= res!3150765 call!736104)))

(assert (=> b!7942835 (= e!4686455 e!4686458)))

(declare-fun b!7942836 () Bool)

(declare-fun e!4686453 () Bool)

(assert (=> b!7942836 (= e!4686457 e!4686453)))

(declare-fun res!3150768 () Bool)

(assert (=> b!7942836 (=> (not res!3150768) (not e!4686453))))

(assert (=> b!7942836 (= res!3150768 call!736104)))

(declare-fun b!7942837 () Bool)

(assert (=> b!7942837 (= e!4686453 call!736106)))

(declare-fun bm!736101 () Bool)

(assert (=> bm!736101 (= call!736104 call!736105)))

(declare-fun b!7942838 () Bool)

(assert (=> b!7942838 (= e!4686454 e!4686452)))

(declare-fun res!3150764 () Bool)

(assert (=> b!7942838 (= res!3150764 (not (nullable!9535 (reg!21745 r!24602))))))

(assert (=> b!7942838 (=> (not res!3150764) (not e!4686452))))

(declare-fun d!2375211 () Bool)

(declare-fun res!3150767 () Bool)

(assert (=> d!2375211 (=> res!3150767 e!4686456)))

(assert (=> d!2375211 (= res!3150767 (is-ElementMatch!21416 r!24602))))

(assert (=> d!2375211 (= (validRegex!11720 r!24602) e!4686456)))

(assert (= (and d!2375211 (not res!3150767)) b!7942831))

(assert (= (and b!7942831 c!1459220) b!7942838))

(assert (= (and b!7942831 (not c!1459220)) b!7942832))

(assert (= (and b!7942838 res!3150764) b!7942830))

(assert (= (and b!7942832 c!1459221) b!7942835))

(assert (= (and b!7942832 (not c!1459221)) b!7942833))

(assert (= (and b!7942835 res!3150765) b!7942834))

(assert (= (and b!7942833 (not res!3150766)) b!7942836))

(assert (= (and b!7942836 res!3150768) b!7942837))

(assert (= (or b!7942834 b!7942837) bm!736100))

(assert (= (or b!7942835 b!7942836) bm!736101))

(assert (= (or b!7942830 bm!736101) bm!736099))

(declare-fun m!8330894 () Bool)

(assert (=> bm!736099 m!8330894))

(declare-fun m!8330896 () Bool)

(assert (=> bm!736100 m!8330896))

(declare-fun m!8330898 () Bool)

(assert (=> b!7942838 m!8330898))

(assert (=> b!7942751 d!2375211))

(declare-fun d!2375213 () Bool)

(declare-fun lt!2697094 () Int)

(assert (=> d!2375213 (>= lt!2697094 0)))

(declare-fun e!4686462 () Int)

(assert (=> d!2375213 (= lt!2697094 e!4686462)))

(declare-fun c!1459225 () Bool)

(assert (=> d!2375213 (= c!1459225 (is-Nil!74521 input!7927))))

(assert (=> d!2375213 (= (size!43352 input!7927) lt!2697094)))

(declare-fun b!7942845 () Bool)

(assert (=> b!7942845 (= e!4686462 0)))

(declare-fun b!7942846 () Bool)

(assert (=> b!7942846 (= e!4686462 (+ 1 (size!43352 (t!390388 input!7927))))))

(assert (= (and d!2375213 c!1459225) b!7942845))

(assert (= (and d!2375213 (not c!1459225)) b!7942846))

(declare-fun m!8330906 () Bool)

(assert (=> b!7942846 m!8330906))

(assert (=> b!7942751 d!2375213))

(declare-fun d!2375217 () Bool)

(declare-fun lt!2697097 () List!74645)

(declare-fun ++!18304 (List!74645 List!74645) List!74645)

(assert (=> d!2375217 (= (++!18304 testedP!447 lt!2697097) input!7927)))

(declare-fun e!4686465 () List!74645)

(assert (=> d!2375217 (= lt!2697097 e!4686465)))

(declare-fun c!1459228 () Bool)

(assert (=> d!2375217 (= c!1459228 (is-Cons!74521 testedP!447))))

(assert (=> d!2375217 (>= (size!43352 input!7927) (size!43352 testedP!447))))

(assert (=> d!2375217 (= (getSuffix!3719 input!7927 testedP!447) lt!2697097)))

(declare-fun b!7942851 () Bool)

(declare-fun tail!15737 (List!74645) List!74645)

(assert (=> b!7942851 (= e!4686465 (getSuffix!3719 (tail!15737 input!7927) (t!390388 testedP!447)))))

(declare-fun b!7942852 () Bool)

(assert (=> b!7942852 (= e!4686465 input!7927)))

(assert (= (and d!2375217 c!1459228) b!7942851))

(assert (= (and d!2375217 (not c!1459228)) b!7942852))

(declare-fun m!8330908 () Bool)

(assert (=> d!2375217 m!8330908))

(assert (=> d!2375217 m!8330860))

(assert (=> d!2375217 m!8330864))

(declare-fun m!8330910 () Bool)

(assert (=> b!7942851 m!8330910))

(assert (=> b!7942851 m!8330910))

(declare-fun m!8330912 () Bool)

(assert (=> b!7942851 m!8330912))

(assert (=> b!7942751 d!2375217))

(declare-fun d!2375219 () Bool)

(declare-fun lt!2697098 () Int)

(assert (=> d!2375219 (>= lt!2697098 0)))

(declare-fun e!4686466 () Int)

(assert (=> d!2375219 (= lt!2697098 e!4686466)))

(declare-fun c!1459229 () Bool)

(assert (=> d!2375219 (= c!1459229 (is-Nil!74521 testedP!447))))

(assert (=> d!2375219 (= (size!43352 testedP!447) lt!2697098)))

(declare-fun b!7942853 () Bool)

(assert (=> b!7942853 (= e!4686466 0)))

(declare-fun b!7942854 () Bool)

(assert (=> b!7942854 (= e!4686466 (+ 1 (size!43352 (t!390388 testedP!447))))))

(assert (= (and d!2375219 c!1459229) b!7942853))

(assert (= (and d!2375219 (not c!1459229)) b!7942854))

(declare-fun m!8330914 () Bool)

(assert (=> b!7942854 m!8330914))

(assert (=> b!7942751 d!2375219))

(declare-fun b!7942882 () Bool)

(declare-fun res!3150790 () Bool)

(declare-fun e!4686488 () Bool)

(assert (=> b!7942882 (=> (not res!3150790) (not e!4686488))))

(declare-fun head!16194 (List!74645) C!43170)

(assert (=> b!7942882 (= res!3150790 (= (head!16194 testedP!447) (head!16194 input!7927)))))

(declare-fun b!7942881 () Bool)

(declare-fun e!4686489 () Bool)

(assert (=> b!7942881 (= e!4686489 e!4686488)))

(declare-fun res!3150787 () Bool)

(assert (=> b!7942881 (=> (not res!3150787) (not e!4686488))))

(assert (=> b!7942881 (= res!3150787 (not (is-Nil!74521 input!7927)))))

(declare-fun d!2375221 () Bool)

(declare-fun e!4686487 () Bool)

(assert (=> d!2375221 e!4686487))

(declare-fun res!3150789 () Bool)

(assert (=> d!2375221 (=> res!3150789 e!4686487)))

(declare-fun lt!2697101 () Bool)

(assert (=> d!2375221 (= res!3150789 (not lt!2697101))))

(assert (=> d!2375221 (= lt!2697101 e!4686489)))

(declare-fun res!3150788 () Bool)

(assert (=> d!2375221 (=> res!3150788 e!4686489)))

(assert (=> d!2375221 (= res!3150788 (is-Nil!74521 testedP!447))))

(assert (=> d!2375221 (= (isPrefix!6516 testedP!447 input!7927) lt!2697101)))

(declare-fun b!7942884 () Bool)

(assert (=> b!7942884 (= e!4686487 (>= (size!43352 input!7927) (size!43352 testedP!447)))))

(declare-fun b!7942883 () Bool)

(assert (=> b!7942883 (= e!4686488 (isPrefix!6516 (tail!15737 testedP!447) (tail!15737 input!7927)))))

(assert (= (and d!2375221 (not res!3150788)) b!7942881))

(assert (= (and b!7942881 res!3150787) b!7942882))

(assert (= (and b!7942882 res!3150790) b!7942883))

(assert (= (and d!2375221 (not res!3150789)) b!7942884))

(declare-fun m!8330916 () Bool)

(assert (=> b!7942882 m!8330916))

(declare-fun m!8330918 () Bool)

(assert (=> b!7942882 m!8330918))

(assert (=> b!7942884 m!8330860))

(assert (=> b!7942884 m!8330864))

(declare-fun m!8330920 () Bool)

(assert (=> b!7942883 m!8330920))

(assert (=> b!7942883 m!8330910))

(assert (=> b!7942883 m!8330920))

(assert (=> b!7942883 m!8330910))

(declare-fun m!8330922 () Bool)

(assert (=> b!7942883 m!8330922))

(assert (=> b!7942750 d!2375221))

(declare-fun b!7942896 () Bool)

(declare-fun e!4686492 () Bool)

(declare-fun tp!2361956 () Bool)

(declare-fun tp!2361955 () Bool)

(assert (=> b!7942896 (= e!4686492 (and tp!2361956 tp!2361955))))

(assert (=> b!7942743 (= tp!2361901 e!4686492)))

(declare-fun b!7942895 () Bool)

(assert (=> b!7942895 (= e!4686492 tp_is_empty!53375)))

(declare-fun b!7942897 () Bool)

(declare-fun tp!2361954 () Bool)

(assert (=> b!7942897 (= e!4686492 tp!2361954)))

(declare-fun b!7942898 () Bool)

(declare-fun tp!2361953 () Bool)

(declare-fun tp!2361957 () Bool)

(assert (=> b!7942898 (= e!4686492 (and tp!2361953 tp!2361957))))

(assert (= (and b!7942743 (is-ElementMatch!21416 (regOne!43344 baseR!116))) b!7942895))

(assert (= (and b!7942743 (is-Concat!30415 (regOne!43344 baseR!116))) b!7942896))

(assert (= (and b!7942743 (is-Star!21416 (regOne!43344 baseR!116))) b!7942897))

(assert (= (and b!7942743 (is-Union!21416 (regOne!43344 baseR!116))) b!7942898))

(declare-fun b!7942900 () Bool)

(declare-fun e!4686493 () Bool)

(declare-fun tp!2361961 () Bool)

(declare-fun tp!2361960 () Bool)

(assert (=> b!7942900 (= e!4686493 (and tp!2361961 tp!2361960))))

(assert (=> b!7942743 (= tp!2361906 e!4686493)))

(declare-fun b!7942899 () Bool)

(assert (=> b!7942899 (= e!4686493 tp_is_empty!53375)))

(declare-fun b!7942901 () Bool)

(declare-fun tp!2361959 () Bool)

(assert (=> b!7942901 (= e!4686493 tp!2361959)))

(declare-fun b!7942902 () Bool)

(declare-fun tp!2361958 () Bool)

(declare-fun tp!2361962 () Bool)

(assert (=> b!7942902 (= e!4686493 (and tp!2361958 tp!2361962))))

(assert (= (and b!7942743 (is-ElementMatch!21416 (regTwo!43344 baseR!116))) b!7942899))

(assert (= (and b!7942743 (is-Concat!30415 (regTwo!43344 baseR!116))) b!7942900))

(assert (= (and b!7942743 (is-Star!21416 (regTwo!43344 baseR!116))) b!7942901))

(assert (= (and b!7942743 (is-Union!21416 (regTwo!43344 baseR!116))) b!7942902))

(declare-fun b!7942904 () Bool)

(declare-fun e!4686494 () Bool)

(declare-fun tp!2361966 () Bool)

(declare-fun tp!2361965 () Bool)

(assert (=> b!7942904 (= e!4686494 (and tp!2361966 tp!2361965))))

(assert (=> b!7942748 (= tp!2361897 e!4686494)))

(declare-fun b!7942903 () Bool)

(assert (=> b!7942903 (= e!4686494 tp_is_empty!53375)))

(declare-fun b!7942905 () Bool)

(declare-fun tp!2361964 () Bool)

(assert (=> b!7942905 (= e!4686494 tp!2361964)))

(declare-fun b!7942906 () Bool)

(declare-fun tp!2361963 () Bool)

(declare-fun tp!2361967 () Bool)

(assert (=> b!7942906 (= e!4686494 (and tp!2361963 tp!2361967))))

(assert (= (and b!7942748 (is-ElementMatch!21416 (regOne!43345 r!24602))) b!7942903))

(assert (= (and b!7942748 (is-Concat!30415 (regOne!43345 r!24602))) b!7942904))

(assert (= (and b!7942748 (is-Star!21416 (regOne!43345 r!24602))) b!7942905))

(assert (= (and b!7942748 (is-Union!21416 (regOne!43345 r!24602))) b!7942906))

(declare-fun b!7942908 () Bool)

(declare-fun e!4686495 () Bool)

(declare-fun tp!2361971 () Bool)

(declare-fun tp!2361970 () Bool)

(assert (=> b!7942908 (= e!4686495 (and tp!2361971 tp!2361970))))

(assert (=> b!7942748 (= tp!2361895 e!4686495)))

(declare-fun b!7942907 () Bool)

(assert (=> b!7942907 (= e!4686495 tp_is_empty!53375)))

(declare-fun b!7942909 () Bool)

(declare-fun tp!2361969 () Bool)

(assert (=> b!7942909 (= e!4686495 tp!2361969)))

(declare-fun b!7942910 () Bool)

(declare-fun tp!2361968 () Bool)

(declare-fun tp!2361972 () Bool)

(assert (=> b!7942910 (= e!4686495 (and tp!2361968 tp!2361972))))

(assert (= (and b!7942748 (is-ElementMatch!21416 (regTwo!43345 r!24602))) b!7942907))

(assert (= (and b!7942748 (is-Concat!30415 (regTwo!43345 r!24602))) b!7942908))

(assert (= (and b!7942748 (is-Star!21416 (regTwo!43345 r!24602))) b!7942909))

(assert (= (and b!7942748 (is-Union!21416 (regTwo!43345 r!24602))) b!7942910))

(declare-fun b!7942915 () Bool)

(declare-fun e!4686498 () Bool)

(declare-fun tp!2361975 () Bool)

(assert (=> b!7942915 (= e!4686498 (and tp_is_empty!53375 tp!2361975))))

(assert (=> b!7942742 (= tp!2361898 e!4686498)))

(assert (= (and b!7942742 (is-Cons!74521 (t!390388 input!7927))) b!7942915))

(declare-fun b!7942917 () Bool)

(declare-fun e!4686499 () Bool)

(declare-fun tp!2361979 () Bool)

(declare-fun tp!2361978 () Bool)

(assert (=> b!7942917 (= e!4686499 (and tp!2361979 tp!2361978))))

(assert (=> b!7942745 (= tp!2361902 e!4686499)))

(declare-fun b!7942916 () Bool)

(assert (=> b!7942916 (= e!4686499 tp_is_empty!53375)))

(declare-fun b!7942918 () Bool)

(declare-fun tp!2361977 () Bool)

(assert (=> b!7942918 (= e!4686499 tp!2361977)))

(declare-fun b!7942919 () Bool)

(declare-fun tp!2361976 () Bool)

(declare-fun tp!2361980 () Bool)

(assert (=> b!7942919 (= e!4686499 (and tp!2361976 tp!2361980))))

(assert (= (and b!7942745 (is-ElementMatch!21416 (reg!21745 r!24602))) b!7942916))

(assert (= (and b!7942745 (is-Concat!30415 (reg!21745 r!24602))) b!7942917))

(assert (= (and b!7942745 (is-Star!21416 (reg!21745 r!24602))) b!7942918))

(assert (= (and b!7942745 (is-Union!21416 (reg!21745 r!24602))) b!7942919))

(declare-fun b!7942921 () Bool)

(declare-fun e!4686500 () Bool)

(declare-fun tp!2361984 () Bool)

(declare-fun tp!2361983 () Bool)

(assert (=> b!7942921 (= e!4686500 (and tp!2361984 tp!2361983))))

(assert (=> b!7942747 (= tp!2361900 e!4686500)))

(declare-fun b!7942920 () Bool)

(assert (=> b!7942920 (= e!4686500 tp_is_empty!53375)))

(declare-fun b!7942922 () Bool)

(declare-fun tp!2361982 () Bool)

(assert (=> b!7942922 (= e!4686500 tp!2361982)))

(declare-fun b!7942923 () Bool)

(declare-fun tp!2361981 () Bool)

(declare-fun tp!2361985 () Bool)

(assert (=> b!7942923 (= e!4686500 (and tp!2361981 tp!2361985))))

(assert (= (and b!7942747 (is-ElementMatch!21416 (reg!21745 baseR!116))) b!7942920))

(assert (= (and b!7942747 (is-Concat!30415 (reg!21745 baseR!116))) b!7942921))

(assert (= (and b!7942747 (is-Star!21416 (reg!21745 baseR!116))) b!7942922))

(assert (= (and b!7942747 (is-Union!21416 (reg!21745 baseR!116))) b!7942923))

(declare-fun b!7942925 () Bool)

(declare-fun e!4686501 () Bool)

(declare-fun tp!2361989 () Bool)

(declare-fun tp!2361988 () Bool)

(assert (=> b!7942925 (= e!4686501 (and tp!2361989 tp!2361988))))

(assert (=> b!7942752 (= tp!2361904 e!4686501)))

(declare-fun b!7942924 () Bool)

(assert (=> b!7942924 (= e!4686501 tp_is_empty!53375)))

(declare-fun b!7942926 () Bool)

(declare-fun tp!2361987 () Bool)

(assert (=> b!7942926 (= e!4686501 tp!2361987)))

(declare-fun b!7942927 () Bool)

(declare-fun tp!2361986 () Bool)

(declare-fun tp!2361990 () Bool)

(assert (=> b!7942927 (= e!4686501 (and tp!2361986 tp!2361990))))

(assert (= (and b!7942752 (is-ElementMatch!21416 (regOne!43345 baseR!116))) b!7942924))

(assert (= (and b!7942752 (is-Concat!30415 (regOne!43345 baseR!116))) b!7942925))

(assert (= (and b!7942752 (is-Star!21416 (regOne!43345 baseR!116))) b!7942926))

(assert (= (and b!7942752 (is-Union!21416 (regOne!43345 baseR!116))) b!7942927))

(declare-fun b!7942929 () Bool)

(declare-fun e!4686502 () Bool)

(declare-fun tp!2361994 () Bool)

(declare-fun tp!2361993 () Bool)

(assert (=> b!7942929 (= e!4686502 (and tp!2361994 tp!2361993))))

(assert (=> b!7942752 (= tp!2361903 e!4686502)))

(declare-fun b!7942928 () Bool)

(assert (=> b!7942928 (= e!4686502 tp_is_empty!53375)))

(declare-fun b!7942930 () Bool)

(declare-fun tp!2361992 () Bool)

(assert (=> b!7942930 (= e!4686502 tp!2361992)))

(declare-fun b!7942931 () Bool)

(declare-fun tp!2361991 () Bool)

(declare-fun tp!2361995 () Bool)

(assert (=> b!7942931 (= e!4686502 (and tp!2361991 tp!2361995))))

(assert (= (and b!7942752 (is-ElementMatch!21416 (regTwo!43345 baseR!116))) b!7942928))

(assert (= (and b!7942752 (is-Concat!30415 (regTwo!43345 baseR!116))) b!7942929))

(assert (= (and b!7942752 (is-Star!21416 (regTwo!43345 baseR!116))) b!7942930))

(assert (= (and b!7942752 (is-Union!21416 (regTwo!43345 baseR!116))) b!7942931))

(declare-fun b!7942933 () Bool)

(declare-fun e!4686503 () Bool)

(declare-fun tp!2361999 () Bool)

(declare-fun tp!2361998 () Bool)

(assert (=> b!7942933 (= e!4686503 (and tp!2361999 tp!2361998))))

(assert (=> b!7942741 (= tp!2361905 e!4686503)))

(declare-fun b!7942932 () Bool)

(assert (=> b!7942932 (= e!4686503 tp_is_empty!53375)))

(declare-fun b!7942934 () Bool)

(declare-fun tp!2361997 () Bool)

(assert (=> b!7942934 (= e!4686503 tp!2361997)))

(declare-fun b!7942935 () Bool)

(declare-fun tp!2361996 () Bool)

(declare-fun tp!2362000 () Bool)

(assert (=> b!7942935 (= e!4686503 (and tp!2361996 tp!2362000))))

(assert (= (and b!7942741 (is-ElementMatch!21416 (regOne!43344 r!24602))) b!7942932))

(assert (= (and b!7942741 (is-Concat!30415 (regOne!43344 r!24602))) b!7942933))

(assert (= (and b!7942741 (is-Star!21416 (regOne!43344 r!24602))) b!7942934))

(assert (= (and b!7942741 (is-Union!21416 (regOne!43344 r!24602))) b!7942935))

(declare-fun b!7942937 () Bool)

(declare-fun e!4686504 () Bool)

(declare-fun tp!2362004 () Bool)

(declare-fun tp!2362003 () Bool)

(assert (=> b!7942937 (= e!4686504 (and tp!2362004 tp!2362003))))

(assert (=> b!7942741 (= tp!2361896 e!4686504)))

(declare-fun b!7942936 () Bool)

(assert (=> b!7942936 (= e!4686504 tp_is_empty!53375)))

(declare-fun b!7942938 () Bool)

(declare-fun tp!2362002 () Bool)

(assert (=> b!7942938 (= e!4686504 tp!2362002)))

(declare-fun b!7942939 () Bool)

(declare-fun tp!2362001 () Bool)

(declare-fun tp!2362005 () Bool)

(assert (=> b!7942939 (= e!4686504 (and tp!2362001 tp!2362005))))

(assert (= (and b!7942741 (is-ElementMatch!21416 (regTwo!43344 r!24602))) b!7942936))

(assert (= (and b!7942741 (is-Concat!30415 (regTwo!43344 r!24602))) b!7942937))

(assert (= (and b!7942741 (is-Star!21416 (regTwo!43344 r!24602))) b!7942938))

(assert (= (and b!7942741 (is-Union!21416 (regTwo!43344 r!24602))) b!7942939))

(declare-fun b!7942940 () Bool)

(declare-fun e!4686505 () Bool)

(declare-fun tp!2362006 () Bool)

(assert (=> b!7942940 (= e!4686505 (and tp_is_empty!53375 tp!2362006))))

(assert (=> b!7942746 (= tp!2361899 e!4686505)))

(assert (= (and b!7942746 (is-Cons!74521 (t!390388 testedP!447))) b!7942940))

(push 1)

(assert (not b!7942925))

(assert (not b!7942846))

(assert (not b!7942929))

(assert (not b!7942901))

(assert (not b!7942940))

(assert (not bm!736096))

(assert (not b!7942904))

(assert (not b!7942908))

(assert (not d!2375209))

(assert (not b!7942923))

(assert (not b!7942882))

(assert (not b!7942854))

(assert tp_is_empty!53375)

(assert (not d!2375217))

(assert (not b!7942905))

(assert (not b!7942935))

(assert (not b!7942909))

(assert (not b!7942934))

(assert (not b!7942897))

(assert (not b!7942851))

(assert (not b!7942898))

(assert (not b!7942921))

(assert (not bm!736097))

(assert (not b!7942884))

(assert (not b!7942896))

(assert (not b!7942919))

(assert (not b!7942926))

(assert (not b!7942883))

(assert (not b!7942828))

(assert (not b!7942902))

(assert (not b!7942930))

(assert (not bm!736100))

(assert (not b!7942933))

(assert (not b!7942931))

(assert (not b!7942819))

(assert (not b!7942900))

(assert (not bm!736099))

(assert (not b!7942937))

(assert (not b!7942938))

(assert (not b!7942922))

(assert (not b!7942910))

(assert (not b!7942918))

(assert (not b!7942838))

(assert (not b!7942927))

(assert (not b!7942917))

(assert (not b!7942906))

(assert (not b!7942915))

(assert (not b!7942939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

