; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282754 () Bool)

(assert start!282754)

(declare-fun b!2905704 () Bool)

(declare-fun e!1834321 () Bool)

(declare-datatypes ((C!17964 0))(
  ( (C!17965 (val!11016 Int)) )
))
(declare-datatypes ((Regex!8891 0))(
  ( (ElementMatch!8891 (c!473500 C!17964)) (Concat!14212 (regOne!18294 Regex!8891) (regTwo!18294 Regex!8891)) (EmptyExpr!8891) (Star!8891 (reg!9220 Regex!8891)) (EmptyLang!8891) (Union!8891 (regOne!18295 Regex!8891) (regTwo!18295 Regex!8891)) )
))
(declare-fun r!19097 () Regex!8891)

(declare-datatypes ((List!34692 0))(
  ( (Nil!34568) (Cons!34568 (h!39988 C!17964) (t!233735 List!34692)) )
))
(declare-fun s!13418 () List!34692)

(declare-fun matchR!3829 (Regex!8891 List!34692) Bool)

(assert (=> b!2905704 (= e!1834321 (not (not (matchR!3829 r!19097 s!13418))))))

(declare-fun lt!1022520 () Regex!8891)

(declare-fun lt!1022522 () List!34692)

(assert (=> b!2905704 (not (matchR!3829 lt!1022520 lt!1022522))))

(declare-datatypes ((Unit!48139 0))(
  ( (Unit!48140) )
))
(declare-fun lt!1022521 () Unit!48139)

(declare-fun prefix!1456 () List!34692)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!206 (Regex!8891 List!34692 List!34692) Unit!48139)

(assert (=> b!2905704 (= lt!1022521 (lemmaNotPrefixMatchThenCannotMatchLonger!206 lt!1022520 (t!233735 prefix!1456) lt!1022522))))

(declare-fun b!2905705 () Bool)

(declare-fun e!1834319 () Bool)

(declare-fun tp!933197 () Bool)

(assert (=> b!2905705 (= e!1834319 tp!933197)))

(declare-fun b!2905706 () Bool)

(declare-fun tp!933200 () Bool)

(declare-fun tp!933201 () Bool)

(assert (=> b!2905706 (= e!1834319 (and tp!933200 tp!933201))))

(declare-fun b!2905707 () Bool)

(declare-fun tp!933202 () Bool)

(declare-fun tp!933203 () Bool)

(assert (=> b!2905707 (= e!1834319 (and tp!933202 tp!933203))))

(declare-fun b!2905708 () Bool)

(declare-fun res!1200093 () Bool)

(declare-fun e!1834318 () Bool)

(assert (=> b!2905708 (=> (not res!1200093) (not e!1834318))))

(get-info :version)

(assert (=> b!2905708 (= res!1200093 (not ((_ is Nil!34568) prefix!1456)))))

(declare-fun res!1200092 () Bool)

(assert (=> start!282754 (=> (not res!1200092) (not e!1834318))))

(declare-fun validRegex!3664 (Regex!8891) Bool)

(assert (=> start!282754 (= res!1200092 (validRegex!3664 r!19097))))

(assert (=> start!282754 e!1834318))

(assert (=> start!282754 e!1834319))

(declare-fun e!1834317 () Bool)

(assert (=> start!282754 e!1834317))

(declare-fun e!1834320 () Bool)

(assert (=> start!282754 e!1834320))

(declare-fun b!2905709 () Bool)

(declare-fun res!1200091 () Bool)

(assert (=> b!2905709 (=> (not res!1200091) (not e!1834318))))

(declare-fun isPrefix!2728 (List!34692 List!34692) Bool)

(assert (=> b!2905709 (= res!1200091 (isPrefix!2728 prefix!1456 s!13418))))

(declare-fun b!2905710 () Bool)

(assert (=> b!2905710 (= e!1834318 e!1834321)))

(declare-fun res!1200095 () Bool)

(assert (=> b!2905710 (=> (not res!1200095) (not e!1834321))))

(assert (=> b!2905710 (= res!1200095 (validRegex!3664 lt!1022520))))

(declare-fun tail!4652 (List!34692) List!34692)

(assert (=> b!2905710 (= lt!1022522 (tail!4652 s!13418))))

(declare-fun derivativeStep!2398 (Regex!8891 C!17964) Regex!8891)

(assert (=> b!2905710 (= lt!1022520 (derivativeStep!2398 r!19097 (h!39988 prefix!1456)))))

(declare-fun b!2905711 () Bool)

(declare-fun res!1200094 () Bool)

(assert (=> b!2905711 (=> (not res!1200094) (not e!1834318))))

(declare-fun prefixMatch!949 (Regex!8891 List!34692) Bool)

(assert (=> b!2905711 (= res!1200094 (not (prefixMatch!949 r!19097 prefix!1456)))))

(declare-fun b!2905712 () Bool)

(declare-fun tp_is_empty!15369 () Bool)

(declare-fun tp!933198 () Bool)

(assert (=> b!2905712 (= e!1834317 (and tp_is_empty!15369 tp!933198))))

(declare-fun b!2905713 () Bool)

(assert (=> b!2905713 (= e!1834319 tp_is_empty!15369)))

(declare-fun b!2905714 () Bool)

(declare-fun res!1200096 () Bool)

(assert (=> b!2905714 (=> (not res!1200096) (not e!1834321))))

(assert (=> b!2905714 (= res!1200096 (not (prefixMatch!949 lt!1022520 (t!233735 prefix!1456))))))

(declare-fun b!2905715 () Bool)

(declare-fun res!1200097 () Bool)

(assert (=> b!2905715 (=> (not res!1200097) (not e!1834321))))

(assert (=> b!2905715 (= res!1200097 (isPrefix!2728 (t!233735 prefix!1456) lt!1022522))))

(declare-fun b!2905716 () Bool)

(declare-fun tp!933199 () Bool)

(assert (=> b!2905716 (= e!1834320 (and tp_is_empty!15369 tp!933199))))

(assert (= (and start!282754 res!1200092) b!2905709))

(assert (= (and b!2905709 res!1200091) b!2905711))

(assert (= (and b!2905711 res!1200094) b!2905708))

(assert (= (and b!2905708 res!1200093) b!2905710))

(assert (= (and b!2905710 res!1200095) b!2905715))

(assert (= (and b!2905715 res!1200097) b!2905714))

(assert (= (and b!2905714 res!1200096) b!2905704))

(assert (= (and start!282754 ((_ is ElementMatch!8891) r!19097)) b!2905713))

(assert (= (and start!282754 ((_ is Concat!14212) r!19097)) b!2905707))

(assert (= (and start!282754 ((_ is Star!8891) r!19097)) b!2905705))

(assert (= (and start!282754 ((_ is Union!8891) r!19097)) b!2905706))

(assert (= (and start!282754 ((_ is Cons!34568) prefix!1456)) b!2905712))

(assert (= (and start!282754 ((_ is Cons!34568) s!13418)) b!2905716))

(declare-fun m!3308021 () Bool)

(assert (=> b!2905710 m!3308021))

(declare-fun m!3308023 () Bool)

(assert (=> b!2905710 m!3308023))

(declare-fun m!3308025 () Bool)

(assert (=> b!2905710 m!3308025))

(declare-fun m!3308027 () Bool)

(assert (=> b!2905704 m!3308027))

(declare-fun m!3308029 () Bool)

(assert (=> b!2905704 m!3308029))

(declare-fun m!3308031 () Bool)

(assert (=> b!2905704 m!3308031))

(declare-fun m!3308033 () Bool)

(assert (=> b!2905711 m!3308033))

(declare-fun m!3308035 () Bool)

(assert (=> b!2905714 m!3308035))

(declare-fun m!3308037 () Bool)

(assert (=> start!282754 m!3308037))

(declare-fun m!3308039 () Bool)

(assert (=> b!2905715 m!3308039))

(declare-fun m!3308041 () Bool)

(assert (=> b!2905709 m!3308041))

(check-sat (not b!2905704) (not b!2905707) (not b!2905710) (not b!2905706) (not b!2905714) tp_is_empty!15369 (not b!2905711) (not b!2905716) (not b!2905712) (not b!2905709) (not b!2905705) (not start!282754) (not b!2905715))
(check-sat)
(get-model)

(declare-fun b!2905735 () Bool)

(declare-fun e!1834341 () Bool)

(declare-fun call!189581 () Bool)

(assert (=> b!2905735 (= e!1834341 call!189581)))

(declare-fun bm!189574 () Bool)

(declare-fun c!473505 () Bool)

(declare-fun c!473506 () Bool)

(declare-fun call!189579 () Bool)

(assert (=> bm!189574 (= call!189579 (validRegex!3664 (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))))))

(declare-fun b!2905736 () Bool)

(declare-fun e!1834340 () Bool)

(declare-fun e!1834342 () Bool)

(assert (=> b!2905736 (= e!1834340 e!1834342)))

(declare-fun res!1200111 () Bool)

(declare-fun nullable!2781 (Regex!8891) Bool)

(assert (=> b!2905736 (= res!1200111 (not (nullable!2781 (reg!9220 r!19097))))))

(assert (=> b!2905736 (=> (not res!1200111) (not e!1834342))))

(declare-fun b!2905737 () Bool)

(declare-fun e!1834339 () Bool)

(assert (=> b!2905737 (= e!1834340 e!1834339)))

(assert (=> b!2905737 (= c!473506 ((_ is Union!8891) r!19097))))

(declare-fun b!2905738 () Bool)

(declare-fun e!1834337 () Bool)

(declare-fun e!1834336 () Bool)

(assert (=> b!2905738 (= e!1834337 e!1834336)))

(declare-fun res!1200110 () Bool)

(assert (=> b!2905738 (=> (not res!1200110) (not e!1834336))))

(declare-fun call!189580 () Bool)

(assert (=> b!2905738 (= res!1200110 call!189580)))

(declare-fun bm!189576 () Bool)

(assert (=> bm!189576 (= call!189581 (validRegex!3664 (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))

(declare-fun b!2905739 () Bool)

(declare-fun e!1834338 () Bool)

(assert (=> b!2905739 (= e!1834338 e!1834340)))

(assert (=> b!2905739 (= c!473505 ((_ is Star!8891) r!19097))))

(declare-fun b!2905740 () Bool)

(assert (=> b!2905740 (= e!1834336 call!189581)))

(declare-fun b!2905741 () Bool)

(assert (=> b!2905741 (= e!1834342 call!189579)))

(declare-fun b!2905742 () Bool)

(declare-fun res!1200109 () Bool)

(assert (=> b!2905742 (=> (not res!1200109) (not e!1834341))))

(assert (=> b!2905742 (= res!1200109 call!189580)))

(assert (=> b!2905742 (= e!1834339 e!1834341)))

(declare-fun b!2905743 () Bool)

(declare-fun res!1200112 () Bool)

(assert (=> b!2905743 (=> res!1200112 e!1834337)))

(assert (=> b!2905743 (= res!1200112 (not ((_ is Concat!14212) r!19097)))))

(assert (=> b!2905743 (= e!1834339 e!1834337)))

(declare-fun d!836033 () Bool)

(declare-fun res!1200108 () Bool)

(assert (=> d!836033 (=> res!1200108 e!1834338)))

(assert (=> d!836033 (= res!1200108 ((_ is ElementMatch!8891) r!19097))))

(assert (=> d!836033 (= (validRegex!3664 r!19097) e!1834338)))

(declare-fun bm!189575 () Bool)

(assert (=> bm!189575 (= call!189580 call!189579)))

(assert (= (and d!836033 (not res!1200108)) b!2905739))

(assert (= (and b!2905739 c!473505) b!2905736))

(assert (= (and b!2905739 (not c!473505)) b!2905737))

(assert (= (and b!2905736 res!1200111) b!2905741))

(assert (= (and b!2905737 c!473506) b!2905742))

(assert (= (and b!2905737 (not c!473506)) b!2905743))

(assert (= (and b!2905742 res!1200109) b!2905735))

(assert (= (and b!2905743 (not res!1200112)) b!2905738))

(assert (= (and b!2905738 res!1200110) b!2905740))

(assert (= (or b!2905742 b!2905738) bm!189575))

(assert (= (or b!2905735 b!2905740) bm!189576))

(assert (= (or b!2905741 bm!189575) bm!189574))

(declare-fun m!3308043 () Bool)

(assert (=> bm!189574 m!3308043))

(declare-fun m!3308045 () Bool)

(assert (=> b!2905736 m!3308045))

(declare-fun m!3308047 () Bool)

(assert (=> bm!189576 m!3308047))

(assert (=> start!282754 d!836033))

(declare-fun b!2905744 () Bool)

(declare-fun e!1834348 () Bool)

(declare-fun call!189584 () Bool)

(assert (=> b!2905744 (= e!1834348 call!189584)))

(declare-fun call!189582 () Bool)

(declare-fun c!473508 () Bool)

(declare-fun c!473507 () Bool)

(declare-fun bm!189577 () Bool)

(assert (=> bm!189577 (= call!189582 (validRegex!3664 (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))))))

(declare-fun b!2905745 () Bool)

(declare-fun e!1834347 () Bool)

(declare-fun e!1834349 () Bool)

(assert (=> b!2905745 (= e!1834347 e!1834349)))

(declare-fun res!1200116 () Bool)

(assert (=> b!2905745 (= res!1200116 (not (nullable!2781 (reg!9220 lt!1022520))))))

(assert (=> b!2905745 (=> (not res!1200116) (not e!1834349))))

(declare-fun b!2905746 () Bool)

(declare-fun e!1834346 () Bool)

(assert (=> b!2905746 (= e!1834347 e!1834346)))

(assert (=> b!2905746 (= c!473508 ((_ is Union!8891) lt!1022520))))

(declare-fun b!2905747 () Bool)

(declare-fun e!1834344 () Bool)

(declare-fun e!1834343 () Bool)

(assert (=> b!2905747 (= e!1834344 e!1834343)))

(declare-fun res!1200115 () Bool)

(assert (=> b!2905747 (=> (not res!1200115) (not e!1834343))))

(declare-fun call!189583 () Bool)

(assert (=> b!2905747 (= res!1200115 call!189583)))

(declare-fun bm!189579 () Bool)

(assert (=> bm!189579 (= call!189584 (validRegex!3664 (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))))))

(declare-fun b!2905748 () Bool)

(declare-fun e!1834345 () Bool)

(assert (=> b!2905748 (= e!1834345 e!1834347)))

(assert (=> b!2905748 (= c!473507 ((_ is Star!8891) lt!1022520))))

(declare-fun b!2905749 () Bool)

(assert (=> b!2905749 (= e!1834343 call!189584)))

(declare-fun b!2905750 () Bool)

(assert (=> b!2905750 (= e!1834349 call!189582)))

(declare-fun b!2905751 () Bool)

(declare-fun res!1200114 () Bool)

(assert (=> b!2905751 (=> (not res!1200114) (not e!1834348))))

(assert (=> b!2905751 (= res!1200114 call!189583)))

(assert (=> b!2905751 (= e!1834346 e!1834348)))

(declare-fun b!2905752 () Bool)

(declare-fun res!1200117 () Bool)

(assert (=> b!2905752 (=> res!1200117 e!1834344)))

(assert (=> b!2905752 (= res!1200117 (not ((_ is Concat!14212) lt!1022520)))))

(assert (=> b!2905752 (= e!1834346 e!1834344)))

(declare-fun d!836037 () Bool)

(declare-fun res!1200113 () Bool)

(assert (=> d!836037 (=> res!1200113 e!1834345)))

(assert (=> d!836037 (= res!1200113 ((_ is ElementMatch!8891) lt!1022520))))

(assert (=> d!836037 (= (validRegex!3664 lt!1022520) e!1834345)))

(declare-fun bm!189578 () Bool)

(assert (=> bm!189578 (= call!189583 call!189582)))

(assert (= (and d!836037 (not res!1200113)) b!2905748))

(assert (= (and b!2905748 c!473507) b!2905745))

(assert (= (and b!2905748 (not c!473507)) b!2905746))

(assert (= (and b!2905745 res!1200116) b!2905750))

(assert (= (and b!2905746 c!473508) b!2905751))

(assert (= (and b!2905746 (not c!473508)) b!2905752))

(assert (= (and b!2905751 res!1200114) b!2905744))

(assert (= (and b!2905752 (not res!1200117)) b!2905747))

(assert (= (and b!2905747 res!1200115) b!2905749))

(assert (= (or b!2905751 b!2905747) bm!189578))

(assert (= (or b!2905744 b!2905749) bm!189579))

(assert (= (or b!2905750 bm!189578) bm!189577))

(declare-fun m!3308049 () Bool)

(assert (=> bm!189577 m!3308049))

(declare-fun m!3308051 () Bool)

(assert (=> b!2905745 m!3308051))

(declare-fun m!3308053 () Bool)

(assert (=> bm!189579 m!3308053))

(assert (=> b!2905710 d!836037))

(declare-fun d!836039 () Bool)

(assert (=> d!836039 (= (tail!4652 s!13418) (t!233735 s!13418))))

(assert (=> b!2905710 d!836039))

(declare-fun b!2905829 () Bool)

(declare-fun e!1834388 () Regex!8891)

(declare-fun call!189600 () Regex!8891)

(assert (=> b!2905829 (= e!1834388 (Concat!14212 call!189600 r!19097))))

(declare-fun bm!189592 () Bool)

(declare-fun c!473531 () Bool)

(declare-fun call!189597 () Regex!8891)

(assert (=> bm!189592 (= call!189597 (derivativeStep!2398 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097)) (h!39988 prefix!1456)))))

(declare-fun e!1834392 () Regex!8891)

(declare-fun call!189599 () Regex!8891)

(declare-fun b!2905830 () Bool)

(assert (=> b!2905830 (= e!1834392 (Union!8891 (Concat!14212 call!189599 (regTwo!18294 r!19097)) call!189597))))

(declare-fun b!2905831 () Bool)

(declare-fun e!1834389 () Regex!8891)

(declare-fun call!189598 () Regex!8891)

(assert (=> b!2905831 (= e!1834389 (Union!8891 call!189598 call!189597))))

(declare-fun bm!189593 () Bool)

(assert (=> bm!189593 (= call!189600 call!189598)))

(declare-fun b!2905832 () Bool)

(declare-fun e!1834391 () Regex!8891)

(declare-fun e!1834390 () Regex!8891)

(assert (=> b!2905832 (= e!1834391 e!1834390)))

(declare-fun c!473532 () Bool)

(assert (=> b!2905832 (= c!473532 ((_ is ElementMatch!8891) r!19097))))

(declare-fun d!836041 () Bool)

(declare-fun lt!1022531 () Regex!8891)

(assert (=> d!836041 (validRegex!3664 lt!1022531)))

(assert (=> d!836041 (= lt!1022531 e!1834391)))

(declare-fun c!473533 () Bool)

(assert (=> d!836041 (= c!473533 (or ((_ is EmptyExpr!8891) r!19097) ((_ is EmptyLang!8891) r!19097)))))

(assert (=> d!836041 (validRegex!3664 r!19097)))

(assert (=> d!836041 (= (derivativeStep!2398 r!19097 (h!39988 prefix!1456)) lt!1022531)))

(declare-fun b!2905833 () Bool)

(assert (=> b!2905833 (= c!473531 ((_ is Union!8891) r!19097))))

(assert (=> b!2905833 (= e!1834390 e!1834389)))

(declare-fun b!2905834 () Bool)

(assert (=> b!2905834 (= e!1834390 (ite (= (h!39988 prefix!1456) (c!473500 r!19097)) EmptyExpr!8891 EmptyLang!8891))))

(declare-fun b!2905835 () Bool)

(assert (=> b!2905835 (= e!1834392 (Union!8891 (Concat!14212 call!189599 (regTwo!18294 r!19097)) EmptyLang!8891))))

(declare-fun bm!189594 () Bool)

(declare-fun c!473534 () Bool)

(assert (=> bm!189594 (= call!189598 (derivativeStep!2398 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097))) (h!39988 prefix!1456)))))

(declare-fun b!2905836 () Bool)

(declare-fun c!473535 () Bool)

(assert (=> b!2905836 (= c!473535 (nullable!2781 (regOne!18294 r!19097)))))

(assert (=> b!2905836 (= e!1834388 e!1834392)))

(declare-fun bm!189595 () Bool)

(assert (=> bm!189595 (= call!189599 call!189600)))

(declare-fun b!2905837 () Bool)

(assert (=> b!2905837 (= e!1834389 e!1834388)))

(assert (=> b!2905837 (= c!473534 ((_ is Star!8891) r!19097))))

(declare-fun b!2905838 () Bool)

(assert (=> b!2905838 (= e!1834391 EmptyLang!8891)))

(assert (= (and d!836041 c!473533) b!2905838))

(assert (= (and d!836041 (not c!473533)) b!2905832))

(assert (= (and b!2905832 c!473532) b!2905834))

(assert (= (and b!2905832 (not c!473532)) b!2905833))

(assert (= (and b!2905833 c!473531) b!2905831))

(assert (= (and b!2905833 (not c!473531)) b!2905837))

(assert (= (and b!2905837 c!473534) b!2905829))

(assert (= (and b!2905837 (not c!473534)) b!2905836))

(assert (= (and b!2905836 c!473535) b!2905830))

(assert (= (and b!2905836 (not c!473535)) b!2905835))

(assert (= (or b!2905830 b!2905835) bm!189595))

(assert (= (or b!2905829 bm!189595) bm!189593))

(assert (= (or b!2905831 bm!189593) bm!189594))

(assert (= (or b!2905831 b!2905830) bm!189592))

(declare-fun m!3308083 () Bool)

(assert (=> bm!189592 m!3308083))

(declare-fun m!3308085 () Bool)

(assert (=> d!836041 m!3308085))

(assert (=> d!836041 m!3308037))

(declare-fun m!3308087 () Bool)

(assert (=> bm!189594 m!3308087))

(declare-fun m!3308089 () Bool)

(assert (=> b!2905836 m!3308089))

(assert (=> b!2905710 d!836041))

(declare-fun b!2905867 () Bool)

(declare-fun e!1834415 () Bool)

(assert (=> b!2905867 (= e!1834415 (isPrefix!2728 (tail!4652 (t!233735 prefix!1456)) (tail!4652 lt!1022522)))))

(declare-fun b!2905868 () Bool)

(declare-fun e!1834414 () Bool)

(declare-fun size!26371 (List!34692) Int)

(assert (=> b!2905868 (= e!1834414 (>= (size!26371 lt!1022522) (size!26371 (t!233735 prefix!1456))))))

(declare-fun b!2905865 () Bool)

(declare-fun e!1834413 () Bool)

(assert (=> b!2905865 (= e!1834413 e!1834415)))

(declare-fun res!1200171 () Bool)

(assert (=> b!2905865 (=> (not res!1200171) (not e!1834415))))

(assert (=> b!2905865 (= res!1200171 (not ((_ is Nil!34568) lt!1022522)))))

(declare-fun d!836049 () Bool)

(assert (=> d!836049 e!1834414))

(declare-fun res!1200169 () Bool)

(assert (=> d!836049 (=> res!1200169 e!1834414)))

(declare-fun lt!1022535 () Bool)

(assert (=> d!836049 (= res!1200169 (not lt!1022535))))

(assert (=> d!836049 (= lt!1022535 e!1834413)))

(declare-fun res!1200168 () Bool)

(assert (=> d!836049 (=> res!1200168 e!1834413)))

(assert (=> d!836049 (= res!1200168 ((_ is Nil!34568) (t!233735 prefix!1456)))))

(assert (=> d!836049 (= (isPrefix!2728 (t!233735 prefix!1456) lt!1022522) lt!1022535)))

(declare-fun b!2905866 () Bool)

(declare-fun res!1200170 () Bool)

(assert (=> b!2905866 (=> (not res!1200170) (not e!1834415))))

(declare-fun head!6423 (List!34692) C!17964)

(assert (=> b!2905866 (= res!1200170 (= (head!6423 (t!233735 prefix!1456)) (head!6423 lt!1022522)))))

(assert (= (and d!836049 (not res!1200168)) b!2905865))

(assert (= (and b!2905865 res!1200171) b!2905866))

(assert (= (and b!2905866 res!1200170) b!2905867))

(assert (= (and d!836049 (not res!1200169)) b!2905868))

(declare-fun m!3308091 () Bool)

(assert (=> b!2905867 m!3308091))

(declare-fun m!3308093 () Bool)

(assert (=> b!2905867 m!3308093))

(assert (=> b!2905867 m!3308091))

(assert (=> b!2905867 m!3308093))

(declare-fun m!3308095 () Bool)

(assert (=> b!2905867 m!3308095))

(declare-fun m!3308097 () Bool)

(assert (=> b!2905868 m!3308097))

(declare-fun m!3308099 () Bool)

(assert (=> b!2905868 m!3308099))

(declare-fun m!3308101 () Bool)

(assert (=> b!2905866 m!3308101))

(declare-fun m!3308103 () Bool)

(assert (=> b!2905866 m!3308103))

(assert (=> b!2905715 d!836049))

(declare-fun d!836051 () Bool)

(declare-fun c!473544 () Bool)

(declare-fun isEmpty!18880 (List!34692) Bool)

(assert (=> d!836051 (= c!473544 (isEmpty!18880 prefix!1456))))

(declare-fun e!1834425 () Bool)

(assert (=> d!836051 (= (prefixMatch!949 r!19097 prefix!1456) e!1834425)))

(declare-fun b!2905882 () Bool)

(declare-fun lostCause!869 (Regex!8891) Bool)

(assert (=> b!2905882 (= e!1834425 (not (lostCause!869 r!19097)))))

(declare-fun b!2905883 () Bool)

(assert (=> b!2905883 (= e!1834425 (prefixMatch!949 (derivativeStep!2398 r!19097 (head!6423 prefix!1456)) (tail!4652 prefix!1456)))))

(assert (= (and d!836051 c!473544) b!2905882))

(assert (= (and d!836051 (not c!473544)) b!2905883))

(declare-fun m!3308111 () Bool)

(assert (=> d!836051 m!3308111))

(declare-fun m!3308113 () Bool)

(assert (=> b!2905882 m!3308113))

(declare-fun m!3308115 () Bool)

(assert (=> b!2905883 m!3308115))

(assert (=> b!2905883 m!3308115))

(declare-fun m!3308117 () Bool)

(assert (=> b!2905883 m!3308117))

(declare-fun m!3308119 () Bool)

(assert (=> b!2905883 m!3308119))

(assert (=> b!2905883 m!3308117))

(assert (=> b!2905883 m!3308119))

(declare-fun m!3308121 () Bool)

(assert (=> b!2905883 m!3308121))

(assert (=> b!2905711 d!836051))

(declare-fun b!2905948 () Bool)

(declare-fun res!1200194 () Bool)

(declare-fun e!1834462 () Bool)

(assert (=> b!2905948 (=> res!1200194 e!1834462)))

(assert (=> b!2905948 (= res!1200194 (not ((_ is ElementMatch!8891) r!19097)))))

(declare-fun e!1834464 () Bool)

(assert (=> b!2905948 (= e!1834464 e!1834462)))

(declare-fun b!2905949 () Bool)

(declare-fun res!1200195 () Bool)

(assert (=> b!2905949 (=> res!1200195 e!1834462)))

(declare-fun e!1834459 () Bool)

(assert (=> b!2905949 (= res!1200195 e!1834459)))

(declare-fun res!1200196 () Bool)

(assert (=> b!2905949 (=> (not res!1200196) (not e!1834459))))

(declare-fun lt!1022541 () Bool)

(assert (=> b!2905949 (= res!1200196 lt!1022541)))

(declare-fun b!2905950 () Bool)

(declare-fun res!1200198 () Bool)

(assert (=> b!2905950 (=> (not res!1200198) (not e!1834459))))

(assert (=> b!2905950 (= res!1200198 (isEmpty!18880 (tail!4652 s!13418)))))

(declare-fun d!836057 () Bool)

(declare-fun e!1834458 () Bool)

(assert (=> d!836057 e!1834458))

(declare-fun c!473570 () Bool)

(assert (=> d!836057 (= c!473570 ((_ is EmptyExpr!8891) r!19097))))

(declare-fun e!1834460 () Bool)

(assert (=> d!836057 (= lt!1022541 e!1834460)))

(declare-fun c!473571 () Bool)

(assert (=> d!836057 (= c!473571 (isEmpty!18880 s!13418))))

(assert (=> d!836057 (validRegex!3664 r!19097)))

(assert (=> d!836057 (= (matchR!3829 r!19097 s!13418) lt!1022541)))

(declare-fun b!2905951 () Bool)

(assert (=> b!2905951 (= e!1834458 e!1834464)))

(declare-fun c!473569 () Bool)

(assert (=> b!2905951 (= c!473569 ((_ is EmptyLang!8891) r!19097))))

(declare-fun b!2905952 () Bool)

(declare-fun res!1200199 () Bool)

(assert (=> b!2905952 (=> (not res!1200199) (not e!1834459))))

(declare-fun call!189624 () Bool)

(assert (=> b!2905952 (= res!1200199 (not call!189624))))

(declare-fun b!2905953 () Bool)

(assert (=> b!2905953 (= e!1834460 (nullable!2781 r!19097))))

(declare-fun b!2905954 () Bool)

(assert (=> b!2905954 (= e!1834464 (not lt!1022541))))

(declare-fun b!2905955 () Bool)

(declare-fun e!1834463 () Bool)

(assert (=> b!2905955 (= e!1834462 e!1834463)))

(declare-fun res!1200200 () Bool)

(assert (=> b!2905955 (=> (not res!1200200) (not e!1834463))))

(assert (=> b!2905955 (= res!1200200 (not lt!1022541))))

(declare-fun b!2905956 () Bool)

(assert (=> b!2905956 (= e!1834459 (= (head!6423 s!13418) (c!473500 r!19097)))))

(declare-fun b!2905957 () Bool)

(declare-fun res!1200197 () Bool)

(declare-fun e!1834461 () Bool)

(assert (=> b!2905957 (=> res!1200197 e!1834461)))

(assert (=> b!2905957 (= res!1200197 (not (isEmpty!18880 (tail!4652 s!13418))))))

(declare-fun b!2905958 () Bool)

(assert (=> b!2905958 (= e!1834458 (= lt!1022541 call!189624))))

(declare-fun bm!189619 () Bool)

(assert (=> bm!189619 (= call!189624 (isEmpty!18880 s!13418))))

(declare-fun b!2905959 () Bool)

(assert (=> b!2905959 (= e!1834461 (not (= (head!6423 s!13418) (c!473500 r!19097))))))

(declare-fun b!2905960 () Bool)

(assert (=> b!2905960 (= e!1834463 e!1834461)))

(declare-fun res!1200193 () Bool)

(assert (=> b!2905960 (=> res!1200193 e!1834461)))

(assert (=> b!2905960 (= res!1200193 call!189624)))

(declare-fun b!2905961 () Bool)

(assert (=> b!2905961 (= e!1834460 (matchR!3829 (derivativeStep!2398 r!19097 (head!6423 s!13418)) (tail!4652 s!13418)))))

(assert (= (and d!836057 c!473571) b!2905953))

(assert (= (and d!836057 (not c!473571)) b!2905961))

(assert (= (and d!836057 c!473570) b!2905958))

(assert (= (and d!836057 (not c!473570)) b!2905951))

(assert (= (and b!2905951 c!473569) b!2905954))

(assert (= (and b!2905951 (not c!473569)) b!2905948))

(assert (= (and b!2905948 (not res!1200194)) b!2905949))

(assert (= (and b!2905949 res!1200196) b!2905952))

(assert (= (and b!2905952 res!1200199) b!2905950))

(assert (= (and b!2905950 res!1200198) b!2905956))

(assert (= (and b!2905949 (not res!1200195)) b!2905955))

(assert (= (and b!2905955 res!1200200) b!2905960))

(assert (= (and b!2905960 (not res!1200193)) b!2905957))

(assert (= (and b!2905957 (not res!1200197)) b!2905959))

(assert (= (or b!2905958 b!2905952 b!2905960) bm!189619))

(declare-fun m!3308143 () Bool)

(assert (=> b!2905959 m!3308143))

(declare-fun m!3308145 () Bool)

(assert (=> b!2905953 m!3308145))

(declare-fun m!3308147 () Bool)

(assert (=> d!836057 m!3308147))

(assert (=> d!836057 m!3308037))

(assert (=> bm!189619 m!3308147))

(assert (=> b!2905956 m!3308143))

(assert (=> b!2905950 m!3308023))

(assert (=> b!2905950 m!3308023))

(declare-fun m!3308149 () Bool)

(assert (=> b!2905950 m!3308149))

(assert (=> b!2905961 m!3308143))

(assert (=> b!2905961 m!3308143))

(declare-fun m!3308151 () Bool)

(assert (=> b!2905961 m!3308151))

(assert (=> b!2905961 m!3308023))

(assert (=> b!2905961 m!3308151))

(assert (=> b!2905961 m!3308023))

(declare-fun m!3308153 () Bool)

(assert (=> b!2905961 m!3308153))

(assert (=> b!2905957 m!3308023))

(assert (=> b!2905957 m!3308023))

(assert (=> b!2905957 m!3308149))

(assert (=> b!2905704 d!836057))

(declare-fun b!2905970 () Bool)

(declare-fun res!1200210 () Bool)

(declare-fun e!1834475 () Bool)

(assert (=> b!2905970 (=> res!1200210 e!1834475)))

(assert (=> b!2905970 (= res!1200210 (not ((_ is ElementMatch!8891) lt!1022520)))))

(declare-fun e!1834477 () Bool)

(assert (=> b!2905970 (= e!1834477 e!1834475)))

(declare-fun b!2905971 () Bool)

(declare-fun res!1200211 () Bool)

(assert (=> b!2905971 (=> res!1200211 e!1834475)))

(declare-fun e!1834472 () Bool)

(assert (=> b!2905971 (= res!1200211 e!1834472)))

(declare-fun res!1200212 () Bool)

(assert (=> b!2905971 (=> (not res!1200212) (not e!1834472))))

(declare-fun lt!1022544 () Bool)

(assert (=> b!2905971 (= res!1200212 lt!1022544)))

(declare-fun b!2905972 () Bool)

(declare-fun res!1200214 () Bool)

(assert (=> b!2905972 (=> (not res!1200214) (not e!1834472))))

(assert (=> b!2905972 (= res!1200214 (isEmpty!18880 (tail!4652 lt!1022522)))))

(declare-fun d!836063 () Bool)

(declare-fun e!1834471 () Bool)

(assert (=> d!836063 e!1834471))

(declare-fun c!473573 () Bool)

(assert (=> d!836063 (= c!473573 ((_ is EmptyExpr!8891) lt!1022520))))

(declare-fun e!1834473 () Bool)

(assert (=> d!836063 (= lt!1022544 e!1834473)))

(declare-fun c!473574 () Bool)

(assert (=> d!836063 (= c!473574 (isEmpty!18880 lt!1022522))))

(assert (=> d!836063 (validRegex!3664 lt!1022520)))

(assert (=> d!836063 (= (matchR!3829 lt!1022520 lt!1022522) lt!1022544)))

(declare-fun b!2905973 () Bool)

(assert (=> b!2905973 (= e!1834471 e!1834477)))

(declare-fun c!473572 () Bool)

(assert (=> b!2905973 (= c!473572 ((_ is EmptyLang!8891) lt!1022520))))

(declare-fun b!2905974 () Bool)

(declare-fun res!1200215 () Bool)

(assert (=> b!2905974 (=> (not res!1200215) (not e!1834472))))

(declare-fun call!189625 () Bool)

(assert (=> b!2905974 (= res!1200215 (not call!189625))))

(declare-fun b!2905975 () Bool)

(assert (=> b!2905975 (= e!1834473 (nullable!2781 lt!1022520))))

(declare-fun b!2905976 () Bool)

(assert (=> b!2905976 (= e!1834477 (not lt!1022544))))

(declare-fun b!2905977 () Bool)

(declare-fun e!1834476 () Bool)

(assert (=> b!2905977 (= e!1834475 e!1834476)))

(declare-fun res!1200216 () Bool)

(assert (=> b!2905977 (=> (not res!1200216) (not e!1834476))))

(assert (=> b!2905977 (= res!1200216 (not lt!1022544))))

(declare-fun b!2905978 () Bool)

(assert (=> b!2905978 (= e!1834472 (= (head!6423 lt!1022522) (c!473500 lt!1022520)))))

(declare-fun b!2905979 () Bool)

(declare-fun res!1200213 () Bool)

(declare-fun e!1834474 () Bool)

(assert (=> b!2905979 (=> res!1200213 e!1834474)))

(assert (=> b!2905979 (= res!1200213 (not (isEmpty!18880 (tail!4652 lt!1022522))))))

(declare-fun b!2905980 () Bool)

(assert (=> b!2905980 (= e!1834471 (= lt!1022544 call!189625))))

(declare-fun bm!189620 () Bool)

(assert (=> bm!189620 (= call!189625 (isEmpty!18880 lt!1022522))))

(declare-fun b!2905981 () Bool)

(assert (=> b!2905981 (= e!1834474 (not (= (head!6423 lt!1022522) (c!473500 lt!1022520))))))

(declare-fun b!2905982 () Bool)

(assert (=> b!2905982 (= e!1834476 e!1834474)))

(declare-fun res!1200209 () Bool)

(assert (=> b!2905982 (=> res!1200209 e!1834474)))

(assert (=> b!2905982 (= res!1200209 call!189625)))

(declare-fun b!2905983 () Bool)

(assert (=> b!2905983 (= e!1834473 (matchR!3829 (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522)) (tail!4652 lt!1022522)))))

(assert (= (and d!836063 c!473574) b!2905975))

(assert (= (and d!836063 (not c!473574)) b!2905983))

(assert (= (and d!836063 c!473573) b!2905980))

(assert (= (and d!836063 (not c!473573)) b!2905973))

(assert (= (and b!2905973 c!473572) b!2905976))

(assert (= (and b!2905973 (not c!473572)) b!2905970))

(assert (= (and b!2905970 (not res!1200210)) b!2905971))

(assert (= (and b!2905971 res!1200212) b!2905974))

(assert (= (and b!2905974 res!1200215) b!2905972))

(assert (= (and b!2905972 res!1200214) b!2905978))

(assert (= (and b!2905971 (not res!1200211)) b!2905977))

(assert (= (and b!2905977 res!1200216) b!2905982))

(assert (= (and b!2905982 (not res!1200209)) b!2905979))

(assert (= (and b!2905979 (not res!1200213)) b!2905981))

(assert (= (or b!2905980 b!2905974 b!2905982) bm!189620))

(assert (=> b!2905981 m!3308103))

(declare-fun m!3308155 () Bool)

(assert (=> b!2905975 m!3308155))

(declare-fun m!3308157 () Bool)

(assert (=> d!836063 m!3308157))

(assert (=> d!836063 m!3308021))

(assert (=> bm!189620 m!3308157))

(assert (=> b!2905978 m!3308103))

(assert (=> b!2905972 m!3308093))

(assert (=> b!2905972 m!3308093))

(declare-fun m!3308159 () Bool)

(assert (=> b!2905972 m!3308159))

(assert (=> b!2905983 m!3308103))

(assert (=> b!2905983 m!3308103))

(declare-fun m!3308161 () Bool)

(assert (=> b!2905983 m!3308161))

(assert (=> b!2905983 m!3308093))

(assert (=> b!2905983 m!3308161))

(assert (=> b!2905983 m!3308093))

(declare-fun m!3308169 () Bool)

(assert (=> b!2905983 m!3308169))

(assert (=> b!2905979 m!3308093))

(assert (=> b!2905979 m!3308093))

(assert (=> b!2905979 m!3308159))

(assert (=> b!2905704 d!836063))

(declare-fun d!836067 () Bool)

(assert (=> d!836067 (not (matchR!3829 lt!1022520 lt!1022522))))

(declare-fun lt!1022549 () Unit!48139)

(declare-fun choose!17088 (Regex!8891 List!34692 List!34692) Unit!48139)

(assert (=> d!836067 (= lt!1022549 (choose!17088 lt!1022520 (t!233735 prefix!1456) lt!1022522))))

(assert (=> d!836067 (validRegex!3664 lt!1022520)))

(assert (=> d!836067 (= (lemmaNotPrefixMatchThenCannotMatchLonger!206 lt!1022520 (t!233735 prefix!1456) lt!1022522) lt!1022549)))

(declare-fun bs!524070 () Bool)

(assert (= bs!524070 d!836067))

(assert (=> bs!524070 m!3308029))

(declare-fun m!3308195 () Bool)

(assert (=> bs!524070 m!3308195))

(assert (=> bs!524070 m!3308021))

(assert (=> b!2905704 d!836067))

(declare-fun b!2906035 () Bool)

(declare-fun e!1834502 () Bool)

(assert (=> b!2906035 (= e!1834502 (isPrefix!2728 (tail!4652 prefix!1456) (tail!4652 s!13418)))))

(declare-fun b!2906036 () Bool)

(declare-fun e!1834501 () Bool)

(assert (=> b!2906036 (= e!1834501 (>= (size!26371 s!13418) (size!26371 prefix!1456)))))

(declare-fun b!2906033 () Bool)

(declare-fun e!1834500 () Bool)

(assert (=> b!2906033 (= e!1834500 e!1834502)))

(declare-fun res!1200233 () Bool)

(assert (=> b!2906033 (=> (not res!1200233) (not e!1834502))))

(assert (=> b!2906033 (= res!1200233 (not ((_ is Nil!34568) s!13418)))))

(declare-fun d!836073 () Bool)

(assert (=> d!836073 e!1834501))

(declare-fun res!1200231 () Bool)

(assert (=> d!836073 (=> res!1200231 e!1834501)))

(declare-fun lt!1022550 () Bool)

(assert (=> d!836073 (= res!1200231 (not lt!1022550))))

(assert (=> d!836073 (= lt!1022550 e!1834500)))

(declare-fun res!1200230 () Bool)

(assert (=> d!836073 (=> res!1200230 e!1834500)))

(assert (=> d!836073 (= res!1200230 ((_ is Nil!34568) prefix!1456))))

(assert (=> d!836073 (= (isPrefix!2728 prefix!1456 s!13418) lt!1022550)))

(declare-fun b!2906034 () Bool)

(declare-fun res!1200232 () Bool)

(assert (=> b!2906034 (=> (not res!1200232) (not e!1834502))))

(assert (=> b!2906034 (= res!1200232 (= (head!6423 prefix!1456) (head!6423 s!13418)))))

(assert (= (and d!836073 (not res!1200230)) b!2906033))

(assert (= (and b!2906033 res!1200233) b!2906034))

(assert (= (and b!2906034 res!1200232) b!2906035))

(assert (= (and d!836073 (not res!1200231)) b!2906036))

(assert (=> b!2906035 m!3308119))

(assert (=> b!2906035 m!3308023))

(assert (=> b!2906035 m!3308119))

(assert (=> b!2906035 m!3308023))

(declare-fun m!3308197 () Bool)

(assert (=> b!2906035 m!3308197))

(declare-fun m!3308199 () Bool)

(assert (=> b!2906036 m!3308199))

(declare-fun m!3308201 () Bool)

(assert (=> b!2906036 m!3308201))

(assert (=> b!2906034 m!3308115))

(assert (=> b!2906034 m!3308143))

(assert (=> b!2905709 d!836073))

(declare-fun d!836075 () Bool)

(declare-fun c!473578 () Bool)

(assert (=> d!836075 (= c!473578 (isEmpty!18880 (t!233735 prefix!1456)))))

(declare-fun e!1834506 () Bool)

(assert (=> d!836075 (= (prefixMatch!949 lt!1022520 (t!233735 prefix!1456)) e!1834506)))

(declare-fun b!2906043 () Bool)

(assert (=> b!2906043 (= e!1834506 (not (lostCause!869 lt!1022520)))))

(declare-fun b!2906044 () Bool)

(assert (=> b!2906044 (= e!1834506 (prefixMatch!949 (derivativeStep!2398 lt!1022520 (head!6423 (t!233735 prefix!1456))) (tail!4652 (t!233735 prefix!1456))))))

(assert (= (and d!836075 c!473578) b!2906043))

(assert (= (and d!836075 (not c!473578)) b!2906044))

(declare-fun m!3308203 () Bool)

(assert (=> d!836075 m!3308203))

(declare-fun m!3308205 () Bool)

(assert (=> b!2906043 m!3308205))

(assert (=> b!2906044 m!3308101))

(assert (=> b!2906044 m!3308101))

(declare-fun m!3308207 () Bool)

(assert (=> b!2906044 m!3308207))

(assert (=> b!2906044 m!3308091))

(assert (=> b!2906044 m!3308207))

(assert (=> b!2906044 m!3308091))

(declare-fun m!3308209 () Bool)

(assert (=> b!2906044 m!3308209))

(assert (=> b!2905714 d!836075))

(declare-fun b!2906049 () Bool)

(declare-fun e!1834509 () Bool)

(declare-fun tp!933245 () Bool)

(assert (=> b!2906049 (= e!1834509 (and tp_is_empty!15369 tp!933245))))

(assert (=> b!2905716 (= tp!933199 e!1834509)))

(assert (= (and b!2905716 ((_ is Cons!34568) (t!233735 s!13418))) b!2906049))

(declare-fun b!2906063 () Bool)

(declare-fun e!1834512 () Bool)

(declare-fun tp!933256 () Bool)

(declare-fun tp!933259 () Bool)

(assert (=> b!2906063 (= e!1834512 (and tp!933256 tp!933259))))

(assert (=> b!2905705 (= tp!933197 e!1834512)))

(declare-fun b!2906062 () Bool)

(declare-fun tp!933257 () Bool)

(assert (=> b!2906062 (= e!1834512 tp!933257)))

(declare-fun b!2906060 () Bool)

(assert (=> b!2906060 (= e!1834512 tp_is_empty!15369)))

(declare-fun b!2906061 () Bool)

(declare-fun tp!933260 () Bool)

(declare-fun tp!933258 () Bool)

(assert (=> b!2906061 (= e!1834512 (and tp!933260 tp!933258))))

(assert (= (and b!2905705 ((_ is ElementMatch!8891) (reg!9220 r!19097))) b!2906060))

(assert (= (and b!2905705 ((_ is Concat!14212) (reg!9220 r!19097))) b!2906061))

(assert (= (and b!2905705 ((_ is Star!8891) (reg!9220 r!19097))) b!2906062))

(assert (= (and b!2905705 ((_ is Union!8891) (reg!9220 r!19097))) b!2906063))

(declare-fun b!2906064 () Bool)

(declare-fun e!1834513 () Bool)

(declare-fun tp!933261 () Bool)

(assert (=> b!2906064 (= e!1834513 (and tp_is_empty!15369 tp!933261))))

(assert (=> b!2905712 (= tp!933198 e!1834513)))

(assert (= (and b!2905712 ((_ is Cons!34568) (t!233735 prefix!1456))) b!2906064))

(declare-fun b!2906068 () Bool)

(declare-fun e!1834514 () Bool)

(declare-fun tp!933262 () Bool)

(declare-fun tp!933265 () Bool)

(assert (=> b!2906068 (= e!1834514 (and tp!933262 tp!933265))))

(assert (=> b!2905706 (= tp!933200 e!1834514)))

(declare-fun b!2906067 () Bool)

(declare-fun tp!933263 () Bool)

(assert (=> b!2906067 (= e!1834514 tp!933263)))

(declare-fun b!2906065 () Bool)

(assert (=> b!2906065 (= e!1834514 tp_is_empty!15369)))

(declare-fun b!2906066 () Bool)

(declare-fun tp!933266 () Bool)

(declare-fun tp!933264 () Bool)

(assert (=> b!2906066 (= e!1834514 (and tp!933266 tp!933264))))

(assert (= (and b!2905706 ((_ is ElementMatch!8891) (regOne!18295 r!19097))) b!2906065))

(assert (= (and b!2905706 ((_ is Concat!14212) (regOne!18295 r!19097))) b!2906066))

(assert (= (and b!2905706 ((_ is Star!8891) (regOne!18295 r!19097))) b!2906067))

(assert (= (and b!2905706 ((_ is Union!8891) (regOne!18295 r!19097))) b!2906068))

(declare-fun b!2906072 () Bool)

(declare-fun e!1834515 () Bool)

(declare-fun tp!933267 () Bool)

(declare-fun tp!933270 () Bool)

(assert (=> b!2906072 (= e!1834515 (and tp!933267 tp!933270))))

(assert (=> b!2905706 (= tp!933201 e!1834515)))

(declare-fun b!2906071 () Bool)

(declare-fun tp!933268 () Bool)

(assert (=> b!2906071 (= e!1834515 tp!933268)))

(declare-fun b!2906069 () Bool)

(assert (=> b!2906069 (= e!1834515 tp_is_empty!15369)))

(declare-fun b!2906070 () Bool)

(declare-fun tp!933271 () Bool)

(declare-fun tp!933269 () Bool)

(assert (=> b!2906070 (= e!1834515 (and tp!933271 tp!933269))))

(assert (= (and b!2905706 ((_ is ElementMatch!8891) (regTwo!18295 r!19097))) b!2906069))

(assert (= (and b!2905706 ((_ is Concat!14212) (regTwo!18295 r!19097))) b!2906070))

(assert (= (and b!2905706 ((_ is Star!8891) (regTwo!18295 r!19097))) b!2906071))

(assert (= (and b!2905706 ((_ is Union!8891) (regTwo!18295 r!19097))) b!2906072))

(declare-fun b!2906076 () Bool)

(declare-fun e!1834516 () Bool)

(declare-fun tp!933272 () Bool)

(declare-fun tp!933275 () Bool)

(assert (=> b!2906076 (= e!1834516 (and tp!933272 tp!933275))))

(assert (=> b!2905707 (= tp!933202 e!1834516)))

(declare-fun b!2906075 () Bool)

(declare-fun tp!933273 () Bool)

(assert (=> b!2906075 (= e!1834516 tp!933273)))

(declare-fun b!2906073 () Bool)

(assert (=> b!2906073 (= e!1834516 tp_is_empty!15369)))

(declare-fun b!2906074 () Bool)

(declare-fun tp!933276 () Bool)

(declare-fun tp!933274 () Bool)

(assert (=> b!2906074 (= e!1834516 (and tp!933276 tp!933274))))

(assert (= (and b!2905707 ((_ is ElementMatch!8891) (regOne!18294 r!19097))) b!2906073))

(assert (= (and b!2905707 ((_ is Concat!14212) (regOne!18294 r!19097))) b!2906074))

(assert (= (and b!2905707 ((_ is Star!8891) (regOne!18294 r!19097))) b!2906075))

(assert (= (and b!2905707 ((_ is Union!8891) (regOne!18294 r!19097))) b!2906076))

(declare-fun b!2906080 () Bool)

(declare-fun e!1834517 () Bool)

(declare-fun tp!933277 () Bool)

(declare-fun tp!933280 () Bool)

(assert (=> b!2906080 (= e!1834517 (and tp!933277 tp!933280))))

(assert (=> b!2905707 (= tp!933203 e!1834517)))

(declare-fun b!2906079 () Bool)

(declare-fun tp!933278 () Bool)

(assert (=> b!2906079 (= e!1834517 tp!933278)))

(declare-fun b!2906077 () Bool)

(assert (=> b!2906077 (= e!1834517 tp_is_empty!15369)))

(declare-fun b!2906078 () Bool)

(declare-fun tp!933281 () Bool)

(declare-fun tp!933279 () Bool)

(assert (=> b!2906078 (= e!1834517 (and tp!933281 tp!933279))))

(assert (= (and b!2905707 ((_ is ElementMatch!8891) (regTwo!18294 r!19097))) b!2906077))

(assert (= (and b!2905707 ((_ is Concat!14212) (regTwo!18294 r!19097))) b!2906078))

(assert (= (and b!2905707 ((_ is Star!8891) (regTwo!18294 r!19097))) b!2906079))

(assert (= (and b!2905707 ((_ is Union!8891) (regTwo!18294 r!19097))) b!2906080))

(check-sat (not d!836041) (not b!2906043) (not b!2906067) (not b!2906078) (not b!2905745) (not b!2905836) (not b!2905736) (not b!2905868) (not b!2905979) (not b!2905866) (not bm!189620) (not bm!189576) tp_is_empty!15369 (not b!2906035) (not d!836051) (not b!2905950) (not b!2905972) (not b!2906075) (not b!2906080) (not bm!189594) (not b!2906064) (not b!2906074) (not b!2905978) (not b!2906068) (not b!2905975) (not bm!189619) (not b!2905983) (not b!2906062) (not b!2905867) (not b!2906079) (not b!2905882) (not d!836063) (not d!836075) (not d!836067) (not bm!189579) (not d!836057) (not b!2906066) (not b!2906036) (not bm!189577) (not b!2906034) (not b!2906072) (not b!2905956) (not b!2905959) (not b!2905981) (not b!2906076) (not b!2906061) (not b!2906049) (not b!2905953) (not b!2905961) (not b!2906044) (not b!2906071) (not b!2906063) (not bm!189592) (not bm!189574) (not b!2906070) (not b!2905957) (not b!2905883))
(check-sat)
(get-model)

(declare-fun d!836077 () Bool)

(assert (=> d!836077 (= (isEmpty!18880 (tail!4652 s!13418)) ((_ is Nil!34568) (tail!4652 s!13418)))))

(assert (=> b!2905950 d!836077))

(assert (=> b!2905950 d!836039))

(declare-fun d!836079 () Bool)

(assert (=> d!836079 (= (head!6423 lt!1022522) (h!39988 lt!1022522))))

(assert (=> b!2905981 d!836079))

(declare-fun d!836081 () Bool)

(assert (=> d!836081 (= (isEmpty!18880 lt!1022522) ((_ is Nil!34568) lt!1022522))))

(assert (=> bm!189620 d!836081))

(declare-fun d!836083 () Bool)

(assert (=> d!836083 (= (isEmpty!18880 (t!233735 prefix!1456)) ((_ is Nil!34568) (t!233735 prefix!1456)))))

(assert (=> d!836075 d!836083))

(declare-fun b!2906083 () Bool)

(declare-fun e!1834520 () Bool)

(assert (=> b!2906083 (= e!1834520 (isPrefix!2728 (tail!4652 (tail!4652 prefix!1456)) (tail!4652 (tail!4652 s!13418))))))

(declare-fun b!2906084 () Bool)

(declare-fun e!1834519 () Bool)

(assert (=> b!2906084 (= e!1834519 (>= (size!26371 (tail!4652 s!13418)) (size!26371 (tail!4652 prefix!1456))))))

(declare-fun b!2906081 () Bool)

(declare-fun e!1834518 () Bool)

(assert (=> b!2906081 (= e!1834518 e!1834520)))

(declare-fun res!1200237 () Bool)

(assert (=> b!2906081 (=> (not res!1200237) (not e!1834520))))

(assert (=> b!2906081 (= res!1200237 (not ((_ is Nil!34568) (tail!4652 s!13418))))))

(declare-fun d!836085 () Bool)

(assert (=> d!836085 e!1834519))

(declare-fun res!1200235 () Bool)

(assert (=> d!836085 (=> res!1200235 e!1834519)))

(declare-fun lt!1022551 () Bool)

(assert (=> d!836085 (= res!1200235 (not lt!1022551))))

(assert (=> d!836085 (= lt!1022551 e!1834518)))

(declare-fun res!1200234 () Bool)

(assert (=> d!836085 (=> res!1200234 e!1834518)))

(assert (=> d!836085 (= res!1200234 ((_ is Nil!34568) (tail!4652 prefix!1456)))))

(assert (=> d!836085 (= (isPrefix!2728 (tail!4652 prefix!1456) (tail!4652 s!13418)) lt!1022551)))

(declare-fun b!2906082 () Bool)

(declare-fun res!1200236 () Bool)

(assert (=> b!2906082 (=> (not res!1200236) (not e!1834520))))

(assert (=> b!2906082 (= res!1200236 (= (head!6423 (tail!4652 prefix!1456)) (head!6423 (tail!4652 s!13418))))))

(assert (= (and d!836085 (not res!1200234)) b!2906081))

(assert (= (and b!2906081 res!1200237) b!2906082))

(assert (= (and b!2906082 res!1200236) b!2906083))

(assert (= (and d!836085 (not res!1200235)) b!2906084))

(assert (=> b!2906083 m!3308119))

(declare-fun m!3308211 () Bool)

(assert (=> b!2906083 m!3308211))

(assert (=> b!2906083 m!3308023))

(declare-fun m!3308213 () Bool)

(assert (=> b!2906083 m!3308213))

(assert (=> b!2906083 m!3308211))

(assert (=> b!2906083 m!3308213))

(declare-fun m!3308215 () Bool)

(assert (=> b!2906083 m!3308215))

(assert (=> b!2906084 m!3308023))

(declare-fun m!3308217 () Bool)

(assert (=> b!2906084 m!3308217))

(assert (=> b!2906084 m!3308119))

(declare-fun m!3308219 () Bool)

(assert (=> b!2906084 m!3308219))

(assert (=> b!2906082 m!3308119))

(declare-fun m!3308221 () Bool)

(assert (=> b!2906082 m!3308221))

(assert (=> b!2906082 m!3308023))

(declare-fun m!3308223 () Bool)

(assert (=> b!2906082 m!3308223))

(assert (=> b!2906035 d!836085))

(declare-fun d!836087 () Bool)

(assert (=> d!836087 (= (tail!4652 prefix!1456) (t!233735 prefix!1456))))

(assert (=> b!2906035 d!836087))

(assert (=> b!2906035 d!836039))

(declare-fun b!2906085 () Bool)

(declare-fun e!1834526 () Bool)

(declare-fun call!189631 () Bool)

(assert (=> b!2906085 (= e!1834526 call!189631)))

(declare-fun c!473579 () Bool)

(declare-fun bm!189624 () Bool)

(declare-fun c!473580 () Bool)

(declare-fun call!189629 () Bool)

(assert (=> bm!189624 (= call!189629 (validRegex!3664 (ite c!473579 (reg!9220 (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))) (ite c!473580 (regOne!18295 (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))) (regOne!18294 (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520))))))))))

(declare-fun b!2906086 () Bool)

(declare-fun e!1834525 () Bool)

(declare-fun e!1834527 () Bool)

(assert (=> b!2906086 (= e!1834525 e!1834527)))

(declare-fun res!1200241 () Bool)

(assert (=> b!2906086 (= res!1200241 (not (nullable!2781 (reg!9220 (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))))))))

(assert (=> b!2906086 (=> (not res!1200241) (not e!1834527))))

(declare-fun b!2906087 () Bool)

(declare-fun e!1834524 () Bool)

(assert (=> b!2906087 (= e!1834525 e!1834524)))

(assert (=> b!2906087 (= c!473580 ((_ is Union!8891) (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))))))

(declare-fun b!2906088 () Bool)

(declare-fun e!1834522 () Bool)

(declare-fun e!1834521 () Bool)

(assert (=> b!2906088 (= e!1834522 e!1834521)))

(declare-fun res!1200240 () Bool)

(assert (=> b!2906088 (=> (not res!1200240) (not e!1834521))))

(declare-fun call!189630 () Bool)

(assert (=> b!2906088 (= res!1200240 call!189630)))

(declare-fun bm!189626 () Bool)

(assert (=> bm!189626 (= call!189631 (validRegex!3664 (ite c!473580 (regTwo!18295 (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))) (regTwo!18294 (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))))))))

(declare-fun b!2906089 () Bool)

(declare-fun e!1834523 () Bool)

(assert (=> b!2906089 (= e!1834523 e!1834525)))

(assert (=> b!2906089 (= c!473579 ((_ is Star!8891) (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))))))

(declare-fun b!2906090 () Bool)

(assert (=> b!2906090 (= e!1834521 call!189631)))

(declare-fun b!2906091 () Bool)

(assert (=> b!2906091 (= e!1834527 call!189629)))

(declare-fun b!2906092 () Bool)

(declare-fun res!1200239 () Bool)

(assert (=> b!2906092 (=> (not res!1200239) (not e!1834526))))

(assert (=> b!2906092 (= res!1200239 call!189630)))

(assert (=> b!2906092 (= e!1834524 e!1834526)))

(declare-fun b!2906093 () Bool)

(declare-fun res!1200242 () Bool)

(assert (=> b!2906093 (=> res!1200242 e!1834522)))

(assert (=> b!2906093 (= res!1200242 (not ((_ is Concat!14212) (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520))))))))

(assert (=> b!2906093 (= e!1834524 e!1834522)))

(declare-fun d!836089 () Bool)

(declare-fun res!1200238 () Bool)

(assert (=> d!836089 (=> res!1200238 e!1834523)))

(assert (=> d!836089 (= res!1200238 ((_ is ElementMatch!8891) (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))))))

(assert (=> d!836089 (= (validRegex!3664 (ite c!473507 (reg!9220 lt!1022520) (ite c!473508 (regOne!18295 lt!1022520) (regOne!18294 lt!1022520)))) e!1834523)))

(declare-fun bm!189625 () Bool)

(assert (=> bm!189625 (= call!189630 call!189629)))

(assert (= (and d!836089 (not res!1200238)) b!2906089))

(assert (= (and b!2906089 c!473579) b!2906086))

(assert (= (and b!2906089 (not c!473579)) b!2906087))

(assert (= (and b!2906086 res!1200241) b!2906091))

(assert (= (and b!2906087 c!473580) b!2906092))

(assert (= (and b!2906087 (not c!473580)) b!2906093))

(assert (= (and b!2906092 res!1200239) b!2906085))

(assert (= (and b!2906093 (not res!1200242)) b!2906088))

(assert (= (and b!2906088 res!1200240) b!2906090))

(assert (= (or b!2906092 b!2906088) bm!189625))

(assert (= (or b!2906085 b!2906090) bm!189626))

(assert (= (or b!2906091 bm!189625) bm!189624))

(declare-fun m!3308225 () Bool)

(assert (=> bm!189624 m!3308225))

(declare-fun m!3308227 () Bool)

(assert (=> b!2906086 m!3308227))

(declare-fun m!3308229 () Bool)

(assert (=> bm!189626 m!3308229))

(assert (=> bm!189577 d!836089))

(assert (=> b!2905978 d!836079))

(assert (=> d!836067 d!836063))

(declare-fun d!836091 () Bool)

(assert (=> d!836091 (not (matchR!3829 lt!1022520 lt!1022522))))

(assert (=> d!836091 true))

(declare-fun _$97!149 () Unit!48139)

(assert (=> d!836091 (= (choose!17088 lt!1022520 (t!233735 prefix!1456) lt!1022522) _$97!149)))

(declare-fun bs!524071 () Bool)

(assert (= bs!524071 d!836091))

(assert (=> bs!524071 m!3308029))

(assert (=> d!836067 d!836091))

(assert (=> d!836067 d!836037))

(declare-fun b!2906094 () Bool)

(declare-fun e!1834533 () Bool)

(declare-fun call!189634 () Bool)

(assert (=> b!2906094 (= e!1834533 call!189634)))

(declare-fun c!473582 () Bool)

(declare-fun bm!189627 () Bool)

(declare-fun call!189632 () Bool)

(declare-fun c!473581 () Bool)

(assert (=> bm!189627 (= call!189632 (validRegex!3664 (ite c!473581 (reg!9220 lt!1022531) (ite c!473582 (regOne!18295 lt!1022531) (regOne!18294 lt!1022531)))))))

(declare-fun b!2906095 () Bool)

(declare-fun e!1834532 () Bool)

(declare-fun e!1834534 () Bool)

(assert (=> b!2906095 (= e!1834532 e!1834534)))

(declare-fun res!1200246 () Bool)

(assert (=> b!2906095 (= res!1200246 (not (nullable!2781 (reg!9220 lt!1022531))))))

(assert (=> b!2906095 (=> (not res!1200246) (not e!1834534))))

(declare-fun b!2906096 () Bool)

(declare-fun e!1834531 () Bool)

(assert (=> b!2906096 (= e!1834532 e!1834531)))

(assert (=> b!2906096 (= c!473582 ((_ is Union!8891) lt!1022531))))

(declare-fun b!2906097 () Bool)

(declare-fun e!1834529 () Bool)

(declare-fun e!1834528 () Bool)

(assert (=> b!2906097 (= e!1834529 e!1834528)))

(declare-fun res!1200245 () Bool)

(assert (=> b!2906097 (=> (not res!1200245) (not e!1834528))))

(declare-fun call!189633 () Bool)

(assert (=> b!2906097 (= res!1200245 call!189633)))

(declare-fun bm!189629 () Bool)

(assert (=> bm!189629 (= call!189634 (validRegex!3664 (ite c!473582 (regTwo!18295 lt!1022531) (regTwo!18294 lt!1022531))))))

(declare-fun b!2906098 () Bool)

(declare-fun e!1834530 () Bool)

(assert (=> b!2906098 (= e!1834530 e!1834532)))

(assert (=> b!2906098 (= c!473581 ((_ is Star!8891) lt!1022531))))

(declare-fun b!2906099 () Bool)

(assert (=> b!2906099 (= e!1834528 call!189634)))

(declare-fun b!2906100 () Bool)

(assert (=> b!2906100 (= e!1834534 call!189632)))

(declare-fun b!2906101 () Bool)

(declare-fun res!1200244 () Bool)

(assert (=> b!2906101 (=> (not res!1200244) (not e!1834533))))

(assert (=> b!2906101 (= res!1200244 call!189633)))

(assert (=> b!2906101 (= e!1834531 e!1834533)))

(declare-fun b!2906102 () Bool)

(declare-fun res!1200247 () Bool)

(assert (=> b!2906102 (=> res!1200247 e!1834529)))

(assert (=> b!2906102 (= res!1200247 (not ((_ is Concat!14212) lt!1022531)))))

(assert (=> b!2906102 (= e!1834531 e!1834529)))

(declare-fun d!836093 () Bool)

(declare-fun res!1200243 () Bool)

(assert (=> d!836093 (=> res!1200243 e!1834530)))

(assert (=> d!836093 (= res!1200243 ((_ is ElementMatch!8891) lt!1022531))))

(assert (=> d!836093 (= (validRegex!3664 lt!1022531) e!1834530)))

(declare-fun bm!189628 () Bool)

(assert (=> bm!189628 (= call!189633 call!189632)))

(assert (= (and d!836093 (not res!1200243)) b!2906098))

(assert (= (and b!2906098 c!473581) b!2906095))

(assert (= (and b!2906098 (not c!473581)) b!2906096))

(assert (= (and b!2906095 res!1200246) b!2906100))

(assert (= (and b!2906096 c!473582) b!2906101))

(assert (= (and b!2906096 (not c!473582)) b!2906102))

(assert (= (and b!2906101 res!1200244) b!2906094))

(assert (= (and b!2906102 (not res!1200247)) b!2906097))

(assert (= (and b!2906097 res!1200245) b!2906099))

(assert (= (or b!2906101 b!2906097) bm!189628))

(assert (= (or b!2906094 b!2906099) bm!189629))

(assert (= (or b!2906100 bm!189628) bm!189627))

(declare-fun m!3308231 () Bool)

(assert (=> bm!189627 m!3308231))

(declare-fun m!3308233 () Bool)

(assert (=> b!2906095 m!3308233))

(declare-fun m!3308235 () Bool)

(assert (=> bm!189629 m!3308235))

(assert (=> d!836041 d!836093))

(assert (=> d!836041 d!836033))

(declare-fun d!836095 () Bool)

(assert (=> d!836095 (= (isEmpty!18880 (tail!4652 lt!1022522)) ((_ is Nil!34568) (tail!4652 lt!1022522)))))

(assert (=> b!2905979 d!836095))

(declare-fun d!836097 () Bool)

(assert (=> d!836097 (= (tail!4652 lt!1022522) (t!233735 lt!1022522))))

(assert (=> b!2905979 d!836097))

(declare-fun d!836099 () Bool)

(declare-fun nullableFct!852 (Regex!8891) Bool)

(assert (=> d!836099 (= (nullable!2781 (reg!9220 lt!1022520)) (nullableFct!852 (reg!9220 lt!1022520)))))

(declare-fun bs!524072 () Bool)

(assert (= bs!524072 d!836099))

(declare-fun m!3308237 () Bool)

(assert (=> bs!524072 m!3308237))

(assert (=> b!2905745 d!836099))

(declare-fun d!836101 () Bool)

(declare-fun lt!1022554 () Int)

(assert (=> d!836101 (>= lt!1022554 0)))

(declare-fun e!1834537 () Int)

(assert (=> d!836101 (= lt!1022554 e!1834537)))

(declare-fun c!473585 () Bool)

(assert (=> d!836101 (= c!473585 ((_ is Nil!34568) s!13418))))

(assert (=> d!836101 (= (size!26371 s!13418) lt!1022554)))

(declare-fun b!2906107 () Bool)

(assert (=> b!2906107 (= e!1834537 0)))

(declare-fun b!2906108 () Bool)

(assert (=> b!2906108 (= e!1834537 (+ 1 (size!26371 (t!233735 s!13418))))))

(assert (= (and d!836101 c!473585) b!2906107))

(assert (= (and d!836101 (not c!473585)) b!2906108))

(declare-fun m!3308239 () Bool)

(assert (=> b!2906108 m!3308239))

(assert (=> b!2906036 d!836101))

(declare-fun d!836103 () Bool)

(declare-fun lt!1022555 () Int)

(assert (=> d!836103 (>= lt!1022555 0)))

(declare-fun e!1834538 () Int)

(assert (=> d!836103 (= lt!1022555 e!1834538)))

(declare-fun c!473586 () Bool)

(assert (=> d!836103 (= c!473586 ((_ is Nil!34568) prefix!1456))))

(assert (=> d!836103 (= (size!26371 prefix!1456) lt!1022555)))

(declare-fun b!2906109 () Bool)

(assert (=> b!2906109 (= e!1834538 0)))

(declare-fun b!2906110 () Bool)

(assert (=> b!2906110 (= e!1834538 (+ 1 (size!26371 (t!233735 prefix!1456))))))

(assert (= (and d!836103 c!473586) b!2906109))

(assert (= (and d!836103 (not c!473586)) b!2906110))

(assert (=> b!2906110 m!3308099))

(assert (=> b!2906036 d!836103))

(declare-fun d!836105 () Bool)

(declare-fun c!473587 () Bool)

(assert (=> d!836105 (= c!473587 (isEmpty!18880 (tail!4652 (t!233735 prefix!1456))))))

(declare-fun e!1834539 () Bool)

(assert (=> d!836105 (= (prefixMatch!949 (derivativeStep!2398 lt!1022520 (head!6423 (t!233735 prefix!1456))) (tail!4652 (t!233735 prefix!1456))) e!1834539)))

(declare-fun b!2906111 () Bool)

(assert (=> b!2906111 (= e!1834539 (not (lostCause!869 (derivativeStep!2398 lt!1022520 (head!6423 (t!233735 prefix!1456))))))))

(declare-fun b!2906112 () Bool)

(assert (=> b!2906112 (= e!1834539 (prefixMatch!949 (derivativeStep!2398 (derivativeStep!2398 lt!1022520 (head!6423 (t!233735 prefix!1456))) (head!6423 (tail!4652 (t!233735 prefix!1456)))) (tail!4652 (tail!4652 (t!233735 prefix!1456)))))))

(assert (= (and d!836105 c!473587) b!2906111))

(assert (= (and d!836105 (not c!473587)) b!2906112))

(assert (=> d!836105 m!3308091))

(declare-fun m!3308241 () Bool)

(assert (=> d!836105 m!3308241))

(assert (=> b!2906111 m!3308207))

(declare-fun m!3308243 () Bool)

(assert (=> b!2906111 m!3308243))

(assert (=> b!2906112 m!3308091))

(declare-fun m!3308245 () Bool)

(assert (=> b!2906112 m!3308245))

(assert (=> b!2906112 m!3308207))

(assert (=> b!2906112 m!3308245))

(declare-fun m!3308247 () Bool)

(assert (=> b!2906112 m!3308247))

(assert (=> b!2906112 m!3308091))

(declare-fun m!3308249 () Bool)

(assert (=> b!2906112 m!3308249))

(assert (=> b!2906112 m!3308247))

(assert (=> b!2906112 m!3308249))

(declare-fun m!3308251 () Bool)

(assert (=> b!2906112 m!3308251))

(assert (=> b!2906044 d!836105))

(declare-fun b!2906113 () Bool)

(declare-fun e!1834540 () Regex!8891)

(declare-fun call!189638 () Regex!8891)

(assert (=> b!2906113 (= e!1834540 (Concat!14212 call!189638 lt!1022520))))

(declare-fun c!473588 () Bool)

(declare-fun call!189635 () Regex!8891)

(declare-fun bm!189630 () Bool)

(assert (=> bm!189630 (= call!189635 (derivativeStep!2398 (ite c!473588 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520)) (head!6423 (t!233735 prefix!1456))))))

(declare-fun e!1834544 () Regex!8891)

(declare-fun b!2906114 () Bool)

(declare-fun call!189637 () Regex!8891)

(assert (=> b!2906114 (= e!1834544 (Union!8891 (Concat!14212 call!189637 (regTwo!18294 lt!1022520)) call!189635))))

(declare-fun b!2906115 () Bool)

(declare-fun e!1834541 () Regex!8891)

(declare-fun call!189636 () Regex!8891)

(assert (=> b!2906115 (= e!1834541 (Union!8891 call!189636 call!189635))))

(declare-fun bm!189631 () Bool)

(assert (=> bm!189631 (= call!189638 call!189636)))

(declare-fun b!2906116 () Bool)

(declare-fun e!1834543 () Regex!8891)

(declare-fun e!1834542 () Regex!8891)

(assert (=> b!2906116 (= e!1834543 e!1834542)))

(declare-fun c!473589 () Bool)

(assert (=> b!2906116 (= c!473589 ((_ is ElementMatch!8891) lt!1022520))))

(declare-fun d!836107 () Bool)

(declare-fun lt!1022556 () Regex!8891)

(assert (=> d!836107 (validRegex!3664 lt!1022556)))

(assert (=> d!836107 (= lt!1022556 e!1834543)))

(declare-fun c!473590 () Bool)

(assert (=> d!836107 (= c!473590 (or ((_ is EmptyExpr!8891) lt!1022520) ((_ is EmptyLang!8891) lt!1022520)))))

(assert (=> d!836107 (validRegex!3664 lt!1022520)))

(assert (=> d!836107 (= (derivativeStep!2398 lt!1022520 (head!6423 (t!233735 prefix!1456))) lt!1022556)))

(declare-fun b!2906117 () Bool)

(assert (=> b!2906117 (= c!473588 ((_ is Union!8891) lt!1022520))))

(assert (=> b!2906117 (= e!1834542 e!1834541)))

(declare-fun b!2906118 () Bool)

(assert (=> b!2906118 (= e!1834542 (ite (= (head!6423 (t!233735 prefix!1456)) (c!473500 lt!1022520)) EmptyExpr!8891 EmptyLang!8891))))

(declare-fun b!2906119 () Bool)

(assert (=> b!2906119 (= e!1834544 (Union!8891 (Concat!14212 call!189637 (regTwo!18294 lt!1022520)) EmptyLang!8891))))

(declare-fun c!473591 () Bool)

(declare-fun bm!189632 () Bool)

(assert (=> bm!189632 (= call!189636 (derivativeStep!2398 (ite c!473588 (regOne!18295 lt!1022520) (ite c!473591 (reg!9220 lt!1022520) (regOne!18294 lt!1022520))) (head!6423 (t!233735 prefix!1456))))))

(declare-fun b!2906120 () Bool)

(declare-fun c!473592 () Bool)

(assert (=> b!2906120 (= c!473592 (nullable!2781 (regOne!18294 lt!1022520)))))

(assert (=> b!2906120 (= e!1834540 e!1834544)))

(declare-fun bm!189633 () Bool)

(assert (=> bm!189633 (= call!189637 call!189638)))

(declare-fun b!2906121 () Bool)

(assert (=> b!2906121 (= e!1834541 e!1834540)))

(assert (=> b!2906121 (= c!473591 ((_ is Star!8891) lt!1022520))))

(declare-fun b!2906122 () Bool)

(assert (=> b!2906122 (= e!1834543 EmptyLang!8891)))

(assert (= (and d!836107 c!473590) b!2906122))

(assert (= (and d!836107 (not c!473590)) b!2906116))

(assert (= (and b!2906116 c!473589) b!2906118))

(assert (= (and b!2906116 (not c!473589)) b!2906117))

(assert (= (and b!2906117 c!473588) b!2906115))

(assert (= (and b!2906117 (not c!473588)) b!2906121))

(assert (= (and b!2906121 c!473591) b!2906113))

(assert (= (and b!2906121 (not c!473591)) b!2906120))

(assert (= (and b!2906120 c!473592) b!2906114))

(assert (= (and b!2906120 (not c!473592)) b!2906119))

(assert (= (or b!2906114 b!2906119) bm!189633))

(assert (= (or b!2906113 bm!189633) bm!189631))

(assert (= (or b!2906115 bm!189631) bm!189632))

(assert (= (or b!2906115 b!2906114) bm!189630))

(assert (=> bm!189630 m!3308101))

(declare-fun m!3308253 () Bool)

(assert (=> bm!189630 m!3308253))

(declare-fun m!3308255 () Bool)

(assert (=> d!836107 m!3308255))

(assert (=> d!836107 m!3308021))

(assert (=> bm!189632 m!3308101))

(declare-fun m!3308257 () Bool)

(assert (=> bm!189632 m!3308257))

(declare-fun m!3308259 () Bool)

(assert (=> b!2906120 m!3308259))

(assert (=> b!2906044 d!836107))

(declare-fun d!836109 () Bool)

(assert (=> d!836109 (= (head!6423 (t!233735 prefix!1456)) (h!39988 (t!233735 prefix!1456)))))

(assert (=> b!2906044 d!836109))

(declare-fun d!836111 () Bool)

(assert (=> d!836111 (= (tail!4652 (t!233735 prefix!1456)) (t!233735 (t!233735 prefix!1456)))))

(assert (=> b!2906044 d!836111))

(declare-fun d!836113 () Bool)

(assert (=> d!836113 (= (isEmpty!18880 s!13418) ((_ is Nil!34568) s!13418))))

(assert (=> d!836057 d!836113))

(assert (=> d!836057 d!836033))

(assert (=> b!2905957 d!836077))

(assert (=> b!2905957 d!836039))

(declare-fun d!836115 () Bool)

(assert (=> d!836115 (= (isEmpty!18880 prefix!1456) ((_ is Nil!34568) prefix!1456))))

(assert (=> d!836051 d!836115))

(declare-fun d!836117 () Bool)

(assert (=> d!836117 (= (head!6423 s!13418) (h!39988 s!13418))))

(assert (=> b!2905956 d!836117))

(declare-fun b!2906123 () Bool)

(declare-fun e!1834550 () Bool)

(declare-fun call!189641 () Bool)

(assert (=> b!2906123 (= e!1834550 call!189641)))

(declare-fun c!473593 () Bool)

(declare-fun call!189639 () Bool)

(declare-fun bm!189634 () Bool)

(declare-fun c!473594 () Bool)

(assert (=> bm!189634 (= call!189639 (validRegex!3664 (ite c!473593 (reg!9220 (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))) (ite c!473594 (regOne!18295 (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))) (regOne!18294 (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097))))))))))

(declare-fun b!2906124 () Bool)

(declare-fun e!1834549 () Bool)

(declare-fun e!1834551 () Bool)

(assert (=> b!2906124 (= e!1834549 e!1834551)))

(declare-fun res!1200251 () Bool)

(assert (=> b!2906124 (= res!1200251 (not (nullable!2781 (reg!9220 (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))))))))

(assert (=> b!2906124 (=> (not res!1200251) (not e!1834551))))

(declare-fun b!2906125 () Bool)

(declare-fun e!1834548 () Bool)

(assert (=> b!2906125 (= e!1834549 e!1834548)))

(assert (=> b!2906125 (= c!473594 ((_ is Union!8891) (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))))))

(declare-fun b!2906126 () Bool)

(declare-fun e!1834546 () Bool)

(declare-fun e!1834545 () Bool)

(assert (=> b!2906126 (= e!1834546 e!1834545)))

(declare-fun res!1200250 () Bool)

(assert (=> b!2906126 (=> (not res!1200250) (not e!1834545))))

(declare-fun call!189640 () Bool)

(assert (=> b!2906126 (= res!1200250 call!189640)))

(declare-fun bm!189636 () Bool)

(assert (=> bm!189636 (= call!189641 (validRegex!3664 (ite c!473594 (regTwo!18295 (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))) (regTwo!18294 (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))))))))

(declare-fun b!2906127 () Bool)

(declare-fun e!1834547 () Bool)

(assert (=> b!2906127 (= e!1834547 e!1834549)))

(assert (=> b!2906127 (= c!473593 ((_ is Star!8891) (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))))))

(declare-fun b!2906128 () Bool)

(assert (=> b!2906128 (= e!1834545 call!189641)))

(declare-fun b!2906129 () Bool)

(assert (=> b!2906129 (= e!1834551 call!189639)))

(declare-fun b!2906130 () Bool)

(declare-fun res!1200249 () Bool)

(assert (=> b!2906130 (=> (not res!1200249) (not e!1834550))))

(assert (=> b!2906130 (= res!1200249 call!189640)))

(assert (=> b!2906130 (= e!1834548 e!1834550)))

(declare-fun b!2906131 () Bool)

(declare-fun res!1200252 () Bool)

(assert (=> b!2906131 (=> res!1200252 e!1834546)))

(assert (=> b!2906131 (= res!1200252 (not ((_ is Concat!14212) (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097))))))))

(assert (=> b!2906131 (= e!1834548 e!1834546)))

(declare-fun d!836119 () Bool)

(declare-fun res!1200248 () Bool)

(assert (=> d!836119 (=> res!1200248 e!1834547)))

(assert (=> d!836119 (= res!1200248 ((_ is ElementMatch!8891) (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))))))

(assert (=> d!836119 (= (validRegex!3664 (ite c!473505 (reg!9220 r!19097) (ite c!473506 (regOne!18295 r!19097) (regOne!18294 r!19097)))) e!1834547)))

(declare-fun bm!189635 () Bool)

(assert (=> bm!189635 (= call!189640 call!189639)))

(assert (= (and d!836119 (not res!1200248)) b!2906127))

(assert (= (and b!2906127 c!473593) b!2906124))

(assert (= (and b!2906127 (not c!473593)) b!2906125))

(assert (= (and b!2906124 res!1200251) b!2906129))

(assert (= (and b!2906125 c!473594) b!2906130))

(assert (= (and b!2906125 (not c!473594)) b!2906131))

(assert (= (and b!2906130 res!1200249) b!2906123))

(assert (= (and b!2906131 (not res!1200252)) b!2906126))

(assert (= (and b!2906126 res!1200250) b!2906128))

(assert (= (or b!2906130 b!2906126) bm!189635))

(assert (= (or b!2906123 b!2906128) bm!189636))

(assert (= (or b!2906129 bm!189635) bm!189634))

(declare-fun m!3308261 () Bool)

(assert (=> bm!189634 m!3308261))

(declare-fun m!3308263 () Bool)

(assert (=> b!2906124 m!3308263))

(declare-fun m!3308265 () Bool)

(assert (=> bm!189636 m!3308265))

(assert (=> bm!189574 d!836119))

(declare-fun e!1834552 () Regex!8891)

(declare-fun b!2906132 () Bool)

(declare-fun call!189645 () Regex!8891)

(assert (=> b!2906132 (= e!1834552 (Concat!14212 call!189645 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))

(declare-fun c!473595 () Bool)

(declare-fun call!189642 () Regex!8891)

(declare-fun bm!189637 () Bool)

(assert (=> bm!189637 (= call!189642 (derivativeStep!2398 (ite c!473595 (regTwo!18295 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097))) (regTwo!18294 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097)))) (h!39988 prefix!1456)))))

(declare-fun call!189644 () Regex!8891)

(declare-fun e!1834556 () Regex!8891)

(declare-fun b!2906133 () Bool)

(assert (=> b!2906133 (= e!1834556 (Union!8891 (Concat!14212 call!189644 (regTwo!18294 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097)))) call!189642))))

(declare-fun b!2906134 () Bool)

(declare-fun e!1834553 () Regex!8891)

(declare-fun call!189643 () Regex!8891)

(assert (=> b!2906134 (= e!1834553 (Union!8891 call!189643 call!189642))))

(declare-fun bm!189638 () Bool)

(assert (=> bm!189638 (= call!189645 call!189643)))

(declare-fun b!2906135 () Bool)

(declare-fun e!1834555 () Regex!8891)

(declare-fun e!1834554 () Regex!8891)

(assert (=> b!2906135 (= e!1834555 e!1834554)))

(declare-fun c!473596 () Bool)

(assert (=> b!2906135 (= c!473596 ((_ is ElementMatch!8891) (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))

(declare-fun d!836121 () Bool)

(declare-fun lt!1022557 () Regex!8891)

(assert (=> d!836121 (validRegex!3664 lt!1022557)))

(assert (=> d!836121 (= lt!1022557 e!1834555)))

(declare-fun c!473597 () Bool)

(assert (=> d!836121 (= c!473597 (or ((_ is EmptyExpr!8891) (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097))) ((_ is EmptyLang!8891) (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097)))))))

(assert (=> d!836121 (validRegex!3664 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097)))))

(assert (=> d!836121 (= (derivativeStep!2398 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097)) (h!39988 prefix!1456)) lt!1022557)))

(declare-fun b!2906136 () Bool)

(assert (=> b!2906136 (= c!473595 ((_ is Union!8891) (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))

(assert (=> b!2906136 (= e!1834554 e!1834553)))

(declare-fun b!2906137 () Bool)

(assert (=> b!2906137 (= e!1834554 (ite (= (h!39988 prefix!1456) (c!473500 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097)))) EmptyExpr!8891 EmptyLang!8891))))

(declare-fun b!2906138 () Bool)

(assert (=> b!2906138 (= e!1834556 (Union!8891 (Concat!14212 call!189644 (regTwo!18294 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097)))) EmptyLang!8891))))

(declare-fun c!473598 () Bool)

(declare-fun bm!189639 () Bool)

(assert (=> bm!189639 (= call!189643 (derivativeStep!2398 (ite c!473595 (regOne!18295 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097))) (ite c!473598 (reg!9220 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097))) (regOne!18294 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))) (h!39988 prefix!1456)))))

(declare-fun b!2906139 () Bool)

(declare-fun c!473599 () Bool)

(assert (=> b!2906139 (= c!473599 (nullable!2781 (regOne!18294 (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097)))))))

(assert (=> b!2906139 (= e!1834552 e!1834556)))

(declare-fun bm!189640 () Bool)

(assert (=> bm!189640 (= call!189644 call!189645)))

(declare-fun b!2906140 () Bool)

(assert (=> b!2906140 (= e!1834553 e!1834552)))

(assert (=> b!2906140 (= c!473598 ((_ is Star!8891) (ite c!473531 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))

(declare-fun b!2906141 () Bool)

(assert (=> b!2906141 (= e!1834555 EmptyLang!8891)))

(assert (= (and d!836121 c!473597) b!2906141))

(assert (= (and d!836121 (not c!473597)) b!2906135))

(assert (= (and b!2906135 c!473596) b!2906137))

(assert (= (and b!2906135 (not c!473596)) b!2906136))

(assert (= (and b!2906136 c!473595) b!2906134))

(assert (= (and b!2906136 (not c!473595)) b!2906140))

(assert (= (and b!2906140 c!473598) b!2906132))

(assert (= (and b!2906140 (not c!473598)) b!2906139))

(assert (= (and b!2906139 c!473599) b!2906133))

(assert (= (and b!2906139 (not c!473599)) b!2906138))

(assert (= (or b!2906133 b!2906138) bm!189640))

(assert (= (or b!2906132 bm!189640) bm!189638))

(assert (= (or b!2906134 bm!189638) bm!189639))

(assert (= (or b!2906134 b!2906133) bm!189637))

(declare-fun m!3308267 () Bool)

(assert (=> bm!189637 m!3308267))

(declare-fun m!3308269 () Bool)

(assert (=> d!836121 m!3308269))

(declare-fun m!3308271 () Bool)

(assert (=> d!836121 m!3308271))

(declare-fun m!3308273 () Bool)

(assert (=> bm!189639 m!3308273))

(declare-fun m!3308275 () Bool)

(assert (=> b!2906139 m!3308275))

(assert (=> bm!189592 d!836121))

(declare-fun b!2906144 () Bool)

(declare-fun e!1834559 () Bool)

(assert (=> b!2906144 (= e!1834559 (isPrefix!2728 (tail!4652 (tail!4652 (t!233735 prefix!1456))) (tail!4652 (tail!4652 lt!1022522))))))

(declare-fun b!2906145 () Bool)

(declare-fun e!1834558 () Bool)

(assert (=> b!2906145 (= e!1834558 (>= (size!26371 (tail!4652 lt!1022522)) (size!26371 (tail!4652 (t!233735 prefix!1456)))))))

(declare-fun b!2906142 () Bool)

(declare-fun e!1834557 () Bool)

(assert (=> b!2906142 (= e!1834557 e!1834559)))

(declare-fun res!1200256 () Bool)

(assert (=> b!2906142 (=> (not res!1200256) (not e!1834559))))

(assert (=> b!2906142 (= res!1200256 (not ((_ is Nil!34568) (tail!4652 lt!1022522))))))

(declare-fun d!836123 () Bool)

(assert (=> d!836123 e!1834558))

(declare-fun res!1200254 () Bool)

(assert (=> d!836123 (=> res!1200254 e!1834558)))

(declare-fun lt!1022558 () Bool)

(assert (=> d!836123 (= res!1200254 (not lt!1022558))))

(assert (=> d!836123 (= lt!1022558 e!1834557)))

(declare-fun res!1200253 () Bool)

(assert (=> d!836123 (=> res!1200253 e!1834557)))

(assert (=> d!836123 (= res!1200253 ((_ is Nil!34568) (tail!4652 (t!233735 prefix!1456))))))

(assert (=> d!836123 (= (isPrefix!2728 (tail!4652 (t!233735 prefix!1456)) (tail!4652 lt!1022522)) lt!1022558)))

(declare-fun b!2906143 () Bool)

(declare-fun res!1200255 () Bool)

(assert (=> b!2906143 (=> (not res!1200255) (not e!1834559))))

(assert (=> b!2906143 (= res!1200255 (= (head!6423 (tail!4652 (t!233735 prefix!1456))) (head!6423 (tail!4652 lt!1022522))))))

(assert (= (and d!836123 (not res!1200253)) b!2906142))

(assert (= (and b!2906142 res!1200256) b!2906143))

(assert (= (and b!2906143 res!1200255) b!2906144))

(assert (= (and d!836123 (not res!1200254)) b!2906145))

(assert (=> b!2906144 m!3308091))

(assert (=> b!2906144 m!3308249))

(assert (=> b!2906144 m!3308093))

(declare-fun m!3308277 () Bool)

(assert (=> b!2906144 m!3308277))

(assert (=> b!2906144 m!3308249))

(assert (=> b!2906144 m!3308277))

(declare-fun m!3308279 () Bool)

(assert (=> b!2906144 m!3308279))

(assert (=> b!2906145 m!3308093))

(declare-fun m!3308281 () Bool)

(assert (=> b!2906145 m!3308281))

(assert (=> b!2906145 m!3308091))

(declare-fun m!3308283 () Bool)

(assert (=> b!2906145 m!3308283))

(assert (=> b!2906143 m!3308091))

(assert (=> b!2906143 m!3308245))

(assert (=> b!2906143 m!3308093))

(declare-fun m!3308285 () Bool)

(assert (=> b!2906143 m!3308285))

(assert (=> b!2905867 d!836123))

(assert (=> b!2905867 d!836111))

(assert (=> b!2905867 d!836097))

(declare-fun d!836125 () Bool)

(assert (=> d!836125 (= (nullable!2781 r!19097) (nullableFct!852 r!19097))))

(declare-fun bs!524073 () Bool)

(assert (= bs!524073 d!836125))

(declare-fun m!3308287 () Bool)

(assert (=> bs!524073 m!3308287))

(assert (=> b!2905953 d!836125))

(declare-fun b!2906146 () Bool)

(declare-fun e!1834565 () Bool)

(declare-fun call!189648 () Bool)

(assert (=> b!2906146 (= e!1834565 call!189648)))

(declare-fun c!473601 () Bool)

(declare-fun c!473600 () Bool)

(declare-fun bm!189641 () Bool)

(declare-fun call!189646 () Bool)

(assert (=> bm!189641 (= call!189646 (validRegex!3664 (ite c!473600 (reg!9220 (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))) (ite c!473601 (regOne!18295 (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))) (regOne!18294 (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520)))))))))

(declare-fun b!2906147 () Bool)

(declare-fun e!1834564 () Bool)

(declare-fun e!1834566 () Bool)

(assert (=> b!2906147 (= e!1834564 e!1834566)))

(declare-fun res!1200260 () Bool)

(assert (=> b!2906147 (= res!1200260 (not (nullable!2781 (reg!9220 (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))))))))

(assert (=> b!2906147 (=> (not res!1200260) (not e!1834566))))

(declare-fun b!2906148 () Bool)

(declare-fun e!1834563 () Bool)

(assert (=> b!2906148 (= e!1834564 e!1834563)))

(assert (=> b!2906148 (= c!473601 ((_ is Union!8891) (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))))))

(declare-fun b!2906149 () Bool)

(declare-fun e!1834561 () Bool)

(declare-fun e!1834560 () Bool)

(assert (=> b!2906149 (= e!1834561 e!1834560)))

(declare-fun res!1200259 () Bool)

(assert (=> b!2906149 (=> (not res!1200259) (not e!1834560))))

(declare-fun call!189647 () Bool)

(assert (=> b!2906149 (= res!1200259 call!189647)))

(declare-fun bm!189643 () Bool)

(assert (=> bm!189643 (= call!189648 (validRegex!3664 (ite c!473601 (regTwo!18295 (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))) (regTwo!18294 (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))))))))

(declare-fun b!2906150 () Bool)

(declare-fun e!1834562 () Bool)

(assert (=> b!2906150 (= e!1834562 e!1834564)))

(assert (=> b!2906150 (= c!473600 ((_ is Star!8891) (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))))))

(declare-fun b!2906151 () Bool)

(assert (=> b!2906151 (= e!1834560 call!189648)))

(declare-fun b!2906152 () Bool)

(assert (=> b!2906152 (= e!1834566 call!189646)))

(declare-fun b!2906153 () Bool)

(declare-fun res!1200258 () Bool)

(assert (=> b!2906153 (=> (not res!1200258) (not e!1834565))))

(assert (=> b!2906153 (= res!1200258 call!189647)))

(assert (=> b!2906153 (= e!1834563 e!1834565)))

(declare-fun b!2906154 () Bool)

(declare-fun res!1200261 () Bool)

(assert (=> b!2906154 (=> res!1200261 e!1834561)))

(assert (=> b!2906154 (= res!1200261 (not ((_ is Concat!14212) (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520)))))))

(assert (=> b!2906154 (= e!1834563 e!1834561)))

(declare-fun d!836127 () Bool)

(declare-fun res!1200257 () Bool)

(assert (=> d!836127 (=> res!1200257 e!1834562)))

(assert (=> d!836127 (= res!1200257 ((_ is ElementMatch!8891) (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))))))

(assert (=> d!836127 (= (validRegex!3664 (ite c!473508 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520))) e!1834562)))

(declare-fun bm!189642 () Bool)

(assert (=> bm!189642 (= call!189647 call!189646)))

(assert (= (and d!836127 (not res!1200257)) b!2906150))

(assert (= (and b!2906150 c!473600) b!2906147))

(assert (= (and b!2906150 (not c!473600)) b!2906148))

(assert (= (and b!2906147 res!1200260) b!2906152))

(assert (= (and b!2906148 c!473601) b!2906153))

(assert (= (and b!2906148 (not c!473601)) b!2906154))

(assert (= (and b!2906153 res!1200258) b!2906146))

(assert (= (and b!2906154 (not res!1200261)) b!2906149))

(assert (= (and b!2906149 res!1200259) b!2906151))

(assert (= (or b!2906153 b!2906149) bm!189642))

(assert (= (or b!2906146 b!2906151) bm!189643))

(assert (= (or b!2906152 bm!189642) bm!189641))

(declare-fun m!3308289 () Bool)

(assert (=> bm!189641 m!3308289))

(declare-fun m!3308291 () Bool)

(assert (=> b!2906147 m!3308291))

(declare-fun m!3308293 () Bool)

(assert (=> bm!189643 m!3308293))

(assert (=> bm!189579 d!836127))

(assert (=> b!2905866 d!836109))

(assert (=> b!2905866 d!836079))

(declare-fun d!836129 () Bool)

(declare-fun lostCauseFct!229 (Regex!8891) Bool)

(assert (=> d!836129 (= (lostCause!869 lt!1022520) (lostCauseFct!229 lt!1022520))))

(declare-fun bs!524074 () Bool)

(assert (= bs!524074 d!836129))

(declare-fun m!3308295 () Bool)

(assert (=> bs!524074 m!3308295))

(assert (=> b!2906043 d!836129))

(declare-fun d!836131 () Bool)

(assert (=> d!836131 (= (nullable!2781 (reg!9220 r!19097)) (nullableFct!852 (reg!9220 r!19097)))))

(declare-fun bs!524075 () Bool)

(assert (= bs!524075 d!836131))

(declare-fun m!3308297 () Bool)

(assert (=> bs!524075 m!3308297))

(assert (=> b!2905736 d!836131))

(declare-fun d!836133 () Bool)

(declare-fun lt!1022559 () Int)

(assert (=> d!836133 (>= lt!1022559 0)))

(declare-fun e!1834567 () Int)

(assert (=> d!836133 (= lt!1022559 e!1834567)))

(declare-fun c!473602 () Bool)

(assert (=> d!836133 (= c!473602 ((_ is Nil!34568) lt!1022522))))

(assert (=> d!836133 (= (size!26371 lt!1022522) lt!1022559)))

(declare-fun b!2906155 () Bool)

(assert (=> b!2906155 (= e!1834567 0)))

(declare-fun b!2906156 () Bool)

(assert (=> b!2906156 (= e!1834567 (+ 1 (size!26371 (t!233735 lt!1022522))))))

(assert (= (and d!836133 c!473602) b!2906155))

(assert (= (and d!836133 (not c!473602)) b!2906156))

(declare-fun m!3308299 () Bool)

(assert (=> b!2906156 m!3308299))

(assert (=> b!2905868 d!836133))

(declare-fun d!836135 () Bool)

(declare-fun lt!1022560 () Int)

(assert (=> d!836135 (>= lt!1022560 0)))

(declare-fun e!1834568 () Int)

(assert (=> d!836135 (= lt!1022560 e!1834568)))

(declare-fun c!473603 () Bool)

(assert (=> d!836135 (= c!473603 ((_ is Nil!34568) (t!233735 prefix!1456)))))

(assert (=> d!836135 (= (size!26371 (t!233735 prefix!1456)) lt!1022560)))

(declare-fun b!2906157 () Bool)

(assert (=> b!2906157 (= e!1834568 0)))

(declare-fun b!2906158 () Bool)

(assert (=> b!2906158 (= e!1834568 (+ 1 (size!26371 (t!233735 (t!233735 prefix!1456)))))))

(assert (= (and d!836135 c!473603) b!2906157))

(assert (= (and d!836135 (not c!473603)) b!2906158))

(declare-fun m!3308301 () Bool)

(assert (=> b!2906158 m!3308301))

(assert (=> b!2905868 d!836135))

(declare-fun b!2906159 () Bool)

(declare-fun res!1200263 () Bool)

(declare-fun e!1834573 () Bool)

(assert (=> b!2906159 (=> res!1200263 e!1834573)))

(assert (=> b!2906159 (= res!1200263 (not ((_ is ElementMatch!8891) (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522)))))))

(declare-fun e!1834575 () Bool)

(assert (=> b!2906159 (= e!1834575 e!1834573)))

(declare-fun b!2906160 () Bool)

(declare-fun res!1200264 () Bool)

(assert (=> b!2906160 (=> res!1200264 e!1834573)))

(declare-fun e!1834570 () Bool)

(assert (=> b!2906160 (= res!1200264 e!1834570)))

(declare-fun res!1200265 () Bool)

(assert (=> b!2906160 (=> (not res!1200265) (not e!1834570))))

(declare-fun lt!1022561 () Bool)

(assert (=> b!2906160 (= res!1200265 lt!1022561)))

(declare-fun b!2906161 () Bool)

(declare-fun res!1200267 () Bool)

(assert (=> b!2906161 (=> (not res!1200267) (not e!1834570))))

(assert (=> b!2906161 (= res!1200267 (isEmpty!18880 (tail!4652 (tail!4652 lt!1022522))))))

(declare-fun d!836137 () Bool)

(declare-fun e!1834569 () Bool)

(assert (=> d!836137 e!1834569))

(declare-fun c!473605 () Bool)

(assert (=> d!836137 (= c!473605 ((_ is EmptyExpr!8891) (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522))))))

(declare-fun e!1834571 () Bool)

(assert (=> d!836137 (= lt!1022561 e!1834571)))

(declare-fun c!473606 () Bool)

(assert (=> d!836137 (= c!473606 (isEmpty!18880 (tail!4652 lt!1022522)))))

(assert (=> d!836137 (validRegex!3664 (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522)))))

(assert (=> d!836137 (= (matchR!3829 (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522)) (tail!4652 lt!1022522)) lt!1022561)))

(declare-fun b!2906162 () Bool)

(assert (=> b!2906162 (= e!1834569 e!1834575)))

(declare-fun c!473604 () Bool)

(assert (=> b!2906162 (= c!473604 ((_ is EmptyLang!8891) (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522))))))

(declare-fun b!2906163 () Bool)

(declare-fun res!1200268 () Bool)

(assert (=> b!2906163 (=> (not res!1200268) (not e!1834570))))

(declare-fun call!189649 () Bool)

(assert (=> b!2906163 (= res!1200268 (not call!189649))))

(declare-fun b!2906164 () Bool)

(assert (=> b!2906164 (= e!1834571 (nullable!2781 (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522))))))

(declare-fun b!2906165 () Bool)

(assert (=> b!2906165 (= e!1834575 (not lt!1022561))))

(declare-fun b!2906166 () Bool)

(declare-fun e!1834574 () Bool)

(assert (=> b!2906166 (= e!1834573 e!1834574)))

(declare-fun res!1200269 () Bool)

(assert (=> b!2906166 (=> (not res!1200269) (not e!1834574))))

(assert (=> b!2906166 (= res!1200269 (not lt!1022561))))

(declare-fun b!2906167 () Bool)

(assert (=> b!2906167 (= e!1834570 (= (head!6423 (tail!4652 lt!1022522)) (c!473500 (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522)))))))

(declare-fun b!2906168 () Bool)

(declare-fun res!1200266 () Bool)

(declare-fun e!1834572 () Bool)

(assert (=> b!2906168 (=> res!1200266 e!1834572)))

(assert (=> b!2906168 (= res!1200266 (not (isEmpty!18880 (tail!4652 (tail!4652 lt!1022522)))))))

(declare-fun b!2906169 () Bool)

(assert (=> b!2906169 (= e!1834569 (= lt!1022561 call!189649))))

(declare-fun bm!189644 () Bool)

(assert (=> bm!189644 (= call!189649 (isEmpty!18880 (tail!4652 lt!1022522)))))

(declare-fun b!2906170 () Bool)

(assert (=> b!2906170 (= e!1834572 (not (= (head!6423 (tail!4652 lt!1022522)) (c!473500 (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522))))))))

(declare-fun b!2906171 () Bool)

(assert (=> b!2906171 (= e!1834574 e!1834572)))

(declare-fun res!1200262 () Bool)

(assert (=> b!2906171 (=> res!1200262 e!1834572)))

(assert (=> b!2906171 (= res!1200262 call!189649)))

(declare-fun b!2906172 () Bool)

(assert (=> b!2906172 (= e!1834571 (matchR!3829 (derivativeStep!2398 (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522)) (head!6423 (tail!4652 lt!1022522))) (tail!4652 (tail!4652 lt!1022522))))))

(assert (= (and d!836137 c!473606) b!2906164))

(assert (= (and d!836137 (not c!473606)) b!2906172))

(assert (= (and d!836137 c!473605) b!2906169))

(assert (= (and d!836137 (not c!473605)) b!2906162))

(assert (= (and b!2906162 c!473604) b!2906165))

(assert (= (and b!2906162 (not c!473604)) b!2906159))

(assert (= (and b!2906159 (not res!1200263)) b!2906160))

(assert (= (and b!2906160 res!1200265) b!2906163))

(assert (= (and b!2906163 res!1200268) b!2906161))

(assert (= (and b!2906161 res!1200267) b!2906167))

(assert (= (and b!2906160 (not res!1200264)) b!2906166))

(assert (= (and b!2906166 res!1200269) b!2906171))

(assert (= (and b!2906171 (not res!1200262)) b!2906168))

(assert (= (and b!2906168 (not res!1200266)) b!2906170))

(assert (= (or b!2906169 b!2906163 b!2906171) bm!189644))

(assert (=> b!2906170 m!3308093))

(assert (=> b!2906170 m!3308285))

(assert (=> b!2906164 m!3308161))

(declare-fun m!3308303 () Bool)

(assert (=> b!2906164 m!3308303))

(assert (=> d!836137 m!3308093))

(assert (=> d!836137 m!3308159))

(assert (=> d!836137 m!3308161))

(declare-fun m!3308305 () Bool)

(assert (=> d!836137 m!3308305))

(assert (=> bm!189644 m!3308093))

(assert (=> bm!189644 m!3308159))

(assert (=> b!2906167 m!3308093))

(assert (=> b!2906167 m!3308285))

(assert (=> b!2906161 m!3308093))

(assert (=> b!2906161 m!3308277))

(assert (=> b!2906161 m!3308277))

(declare-fun m!3308307 () Bool)

(assert (=> b!2906161 m!3308307))

(assert (=> b!2906172 m!3308093))

(assert (=> b!2906172 m!3308285))

(assert (=> b!2906172 m!3308161))

(assert (=> b!2906172 m!3308285))

(declare-fun m!3308309 () Bool)

(assert (=> b!2906172 m!3308309))

(assert (=> b!2906172 m!3308093))

(assert (=> b!2906172 m!3308277))

(assert (=> b!2906172 m!3308309))

(assert (=> b!2906172 m!3308277))

(declare-fun m!3308311 () Bool)

(assert (=> b!2906172 m!3308311))

(assert (=> b!2906168 m!3308093))

(assert (=> b!2906168 m!3308277))

(assert (=> b!2906168 m!3308277))

(assert (=> b!2906168 m!3308307))

(assert (=> b!2905983 d!836137))

(declare-fun b!2906173 () Bool)

(declare-fun e!1834576 () Regex!8891)

(declare-fun call!189653 () Regex!8891)

(assert (=> b!2906173 (= e!1834576 (Concat!14212 call!189653 lt!1022520))))

(declare-fun call!189650 () Regex!8891)

(declare-fun bm!189645 () Bool)

(declare-fun c!473607 () Bool)

(assert (=> bm!189645 (= call!189650 (derivativeStep!2398 (ite c!473607 (regTwo!18295 lt!1022520) (regTwo!18294 lt!1022520)) (head!6423 lt!1022522)))))

(declare-fun e!1834580 () Regex!8891)

(declare-fun b!2906174 () Bool)

(declare-fun call!189652 () Regex!8891)

(assert (=> b!2906174 (= e!1834580 (Union!8891 (Concat!14212 call!189652 (regTwo!18294 lt!1022520)) call!189650))))

(declare-fun b!2906175 () Bool)

(declare-fun e!1834577 () Regex!8891)

(declare-fun call!189651 () Regex!8891)

(assert (=> b!2906175 (= e!1834577 (Union!8891 call!189651 call!189650))))

(declare-fun bm!189646 () Bool)

(assert (=> bm!189646 (= call!189653 call!189651)))

(declare-fun b!2906176 () Bool)

(declare-fun e!1834579 () Regex!8891)

(declare-fun e!1834578 () Regex!8891)

(assert (=> b!2906176 (= e!1834579 e!1834578)))

(declare-fun c!473608 () Bool)

(assert (=> b!2906176 (= c!473608 ((_ is ElementMatch!8891) lt!1022520))))

(declare-fun d!836139 () Bool)

(declare-fun lt!1022562 () Regex!8891)

(assert (=> d!836139 (validRegex!3664 lt!1022562)))

(assert (=> d!836139 (= lt!1022562 e!1834579)))

(declare-fun c!473609 () Bool)

(assert (=> d!836139 (= c!473609 (or ((_ is EmptyExpr!8891) lt!1022520) ((_ is EmptyLang!8891) lt!1022520)))))

(assert (=> d!836139 (validRegex!3664 lt!1022520)))

(assert (=> d!836139 (= (derivativeStep!2398 lt!1022520 (head!6423 lt!1022522)) lt!1022562)))

(declare-fun b!2906177 () Bool)

(assert (=> b!2906177 (= c!473607 ((_ is Union!8891) lt!1022520))))

(assert (=> b!2906177 (= e!1834578 e!1834577)))

(declare-fun b!2906178 () Bool)

(assert (=> b!2906178 (= e!1834578 (ite (= (head!6423 lt!1022522) (c!473500 lt!1022520)) EmptyExpr!8891 EmptyLang!8891))))

(declare-fun b!2906179 () Bool)

(assert (=> b!2906179 (= e!1834580 (Union!8891 (Concat!14212 call!189652 (regTwo!18294 lt!1022520)) EmptyLang!8891))))

(declare-fun bm!189647 () Bool)

(declare-fun c!473610 () Bool)

(assert (=> bm!189647 (= call!189651 (derivativeStep!2398 (ite c!473607 (regOne!18295 lt!1022520) (ite c!473610 (reg!9220 lt!1022520) (regOne!18294 lt!1022520))) (head!6423 lt!1022522)))))

(declare-fun b!2906180 () Bool)

(declare-fun c!473611 () Bool)

(assert (=> b!2906180 (= c!473611 (nullable!2781 (regOne!18294 lt!1022520)))))

(assert (=> b!2906180 (= e!1834576 e!1834580)))

(declare-fun bm!189648 () Bool)

(assert (=> bm!189648 (= call!189652 call!189653)))

(declare-fun b!2906181 () Bool)

(assert (=> b!2906181 (= e!1834577 e!1834576)))

(assert (=> b!2906181 (= c!473610 ((_ is Star!8891) lt!1022520))))

(declare-fun b!2906182 () Bool)

(assert (=> b!2906182 (= e!1834579 EmptyLang!8891)))

(assert (= (and d!836139 c!473609) b!2906182))

(assert (= (and d!836139 (not c!473609)) b!2906176))

(assert (= (and b!2906176 c!473608) b!2906178))

(assert (= (and b!2906176 (not c!473608)) b!2906177))

(assert (= (and b!2906177 c!473607) b!2906175))

(assert (= (and b!2906177 (not c!473607)) b!2906181))

(assert (= (and b!2906181 c!473610) b!2906173))

(assert (= (and b!2906181 (not c!473610)) b!2906180))

(assert (= (and b!2906180 c!473611) b!2906174))

(assert (= (and b!2906180 (not c!473611)) b!2906179))

(assert (= (or b!2906174 b!2906179) bm!189648))

(assert (= (or b!2906173 bm!189648) bm!189646))

(assert (= (or b!2906175 bm!189646) bm!189647))

(assert (= (or b!2906175 b!2906174) bm!189645))

(assert (=> bm!189645 m!3308103))

(declare-fun m!3308313 () Bool)

(assert (=> bm!189645 m!3308313))

(declare-fun m!3308315 () Bool)

(assert (=> d!836139 m!3308315))

(assert (=> d!836139 m!3308021))

(assert (=> bm!189647 m!3308103))

(declare-fun m!3308317 () Bool)

(assert (=> bm!189647 m!3308317))

(assert (=> b!2906180 m!3308259))

(assert (=> b!2905983 d!836139))

(assert (=> b!2905983 d!836079))

(assert (=> b!2905983 d!836097))

(declare-fun b!2906183 () Bool)

(declare-fun e!1834581 () Regex!8891)

(declare-fun call!189657 () Regex!8891)

(assert (=> b!2906183 (= e!1834581 (Concat!14212 call!189657 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097)))))))

(declare-fun bm!189649 () Bool)

(declare-fun call!189654 () Regex!8891)

(declare-fun c!473612 () Bool)

(assert (=> bm!189649 (= call!189654 (derivativeStep!2398 (ite c!473612 (regTwo!18295 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097)))) (regTwo!18294 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097))))) (h!39988 prefix!1456)))))

(declare-fun call!189656 () Regex!8891)

(declare-fun b!2906184 () Bool)

(declare-fun e!1834585 () Regex!8891)

(assert (=> b!2906184 (= e!1834585 (Union!8891 (Concat!14212 call!189656 (regTwo!18294 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097))))) call!189654))))

(declare-fun b!2906185 () Bool)

(declare-fun e!1834582 () Regex!8891)

(declare-fun call!189655 () Regex!8891)

(assert (=> b!2906185 (= e!1834582 (Union!8891 call!189655 call!189654))))

(declare-fun bm!189650 () Bool)

(assert (=> bm!189650 (= call!189657 call!189655)))

(declare-fun b!2906186 () Bool)

(declare-fun e!1834584 () Regex!8891)

(declare-fun e!1834583 () Regex!8891)

(assert (=> b!2906186 (= e!1834584 e!1834583)))

(declare-fun c!473613 () Bool)

(assert (=> b!2906186 (= c!473613 ((_ is ElementMatch!8891) (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097)))))))

(declare-fun d!836141 () Bool)

(declare-fun lt!1022563 () Regex!8891)

(assert (=> d!836141 (validRegex!3664 lt!1022563)))

(assert (=> d!836141 (= lt!1022563 e!1834584)))

(declare-fun c!473614 () Bool)

(assert (=> d!836141 (= c!473614 (or ((_ is EmptyExpr!8891) (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097)))) ((_ is EmptyLang!8891) (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097))))))))

(assert (=> d!836141 (validRegex!3664 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097))))))

(assert (=> d!836141 (= (derivativeStep!2398 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097))) (h!39988 prefix!1456)) lt!1022563)))

(declare-fun b!2906187 () Bool)

(assert (=> b!2906187 (= c!473612 ((_ is Union!8891) (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097)))))))

(assert (=> b!2906187 (= e!1834583 e!1834582)))

(declare-fun b!2906188 () Bool)

(assert (=> b!2906188 (= e!1834583 (ite (= (h!39988 prefix!1456) (c!473500 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097))))) EmptyExpr!8891 EmptyLang!8891))))

(declare-fun b!2906189 () Bool)

(assert (=> b!2906189 (= e!1834585 (Union!8891 (Concat!14212 call!189656 (regTwo!18294 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097))))) EmptyLang!8891))))

(declare-fun c!473615 () Bool)

(declare-fun bm!189651 () Bool)

(assert (=> bm!189651 (= call!189655 (derivativeStep!2398 (ite c!473612 (regOne!18295 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097)))) (ite c!473615 (reg!9220 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097)))) (regOne!18294 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097)))))) (h!39988 prefix!1456)))))

(declare-fun b!2906190 () Bool)

(declare-fun c!473616 () Bool)

(assert (=> b!2906190 (= c!473616 (nullable!2781 (regOne!18294 (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097))))))))

(assert (=> b!2906190 (= e!1834581 e!1834585)))

(declare-fun bm!189652 () Bool)

(assert (=> bm!189652 (= call!189656 call!189657)))

(declare-fun b!2906191 () Bool)

(assert (=> b!2906191 (= e!1834582 e!1834581)))

(assert (=> b!2906191 (= c!473615 ((_ is Star!8891) (ite c!473531 (regOne!18295 r!19097) (ite c!473534 (reg!9220 r!19097) (regOne!18294 r!19097)))))))

(declare-fun b!2906192 () Bool)

(assert (=> b!2906192 (= e!1834584 EmptyLang!8891)))

(assert (= (and d!836141 c!473614) b!2906192))

(assert (= (and d!836141 (not c!473614)) b!2906186))

(assert (= (and b!2906186 c!473613) b!2906188))

(assert (= (and b!2906186 (not c!473613)) b!2906187))

(assert (= (and b!2906187 c!473612) b!2906185))

(assert (= (and b!2906187 (not c!473612)) b!2906191))

(assert (= (and b!2906191 c!473615) b!2906183))

(assert (= (and b!2906191 (not c!473615)) b!2906190))

(assert (= (and b!2906190 c!473616) b!2906184))

(assert (= (and b!2906190 (not c!473616)) b!2906189))

(assert (= (or b!2906184 b!2906189) bm!189652))

(assert (= (or b!2906183 bm!189652) bm!189650))

(assert (= (or b!2906185 bm!189650) bm!189651))

(assert (= (or b!2906185 b!2906184) bm!189649))

(declare-fun m!3308319 () Bool)

(assert (=> bm!189649 m!3308319))

(declare-fun m!3308321 () Bool)

(assert (=> d!836141 m!3308321))

(declare-fun m!3308323 () Bool)

(assert (=> d!836141 m!3308323))

(declare-fun m!3308325 () Bool)

(assert (=> bm!189651 m!3308325))

(declare-fun m!3308327 () Bool)

(assert (=> b!2906190 m!3308327))

(assert (=> bm!189594 d!836141))

(assert (=> b!2905959 d!836117))

(declare-fun b!2906193 () Bool)

(declare-fun res!1200271 () Bool)

(declare-fun e!1834590 () Bool)

(assert (=> b!2906193 (=> res!1200271 e!1834590)))

(assert (=> b!2906193 (= res!1200271 (not ((_ is ElementMatch!8891) (derivativeStep!2398 r!19097 (head!6423 s!13418)))))))

(declare-fun e!1834592 () Bool)

(assert (=> b!2906193 (= e!1834592 e!1834590)))

(declare-fun b!2906194 () Bool)

(declare-fun res!1200272 () Bool)

(assert (=> b!2906194 (=> res!1200272 e!1834590)))

(declare-fun e!1834587 () Bool)

(assert (=> b!2906194 (= res!1200272 e!1834587)))

(declare-fun res!1200273 () Bool)

(assert (=> b!2906194 (=> (not res!1200273) (not e!1834587))))

(declare-fun lt!1022564 () Bool)

(assert (=> b!2906194 (= res!1200273 lt!1022564)))

(declare-fun b!2906195 () Bool)

(declare-fun res!1200275 () Bool)

(assert (=> b!2906195 (=> (not res!1200275) (not e!1834587))))

(assert (=> b!2906195 (= res!1200275 (isEmpty!18880 (tail!4652 (tail!4652 s!13418))))))

(declare-fun d!836143 () Bool)

(declare-fun e!1834586 () Bool)

(assert (=> d!836143 e!1834586))

(declare-fun c!473618 () Bool)

(assert (=> d!836143 (= c!473618 ((_ is EmptyExpr!8891) (derivativeStep!2398 r!19097 (head!6423 s!13418))))))

(declare-fun e!1834588 () Bool)

(assert (=> d!836143 (= lt!1022564 e!1834588)))

(declare-fun c!473619 () Bool)

(assert (=> d!836143 (= c!473619 (isEmpty!18880 (tail!4652 s!13418)))))

(assert (=> d!836143 (validRegex!3664 (derivativeStep!2398 r!19097 (head!6423 s!13418)))))

(assert (=> d!836143 (= (matchR!3829 (derivativeStep!2398 r!19097 (head!6423 s!13418)) (tail!4652 s!13418)) lt!1022564)))

(declare-fun b!2906196 () Bool)

(assert (=> b!2906196 (= e!1834586 e!1834592)))

(declare-fun c!473617 () Bool)

(assert (=> b!2906196 (= c!473617 ((_ is EmptyLang!8891) (derivativeStep!2398 r!19097 (head!6423 s!13418))))))

(declare-fun b!2906197 () Bool)

(declare-fun res!1200276 () Bool)

(assert (=> b!2906197 (=> (not res!1200276) (not e!1834587))))

(declare-fun call!189658 () Bool)

(assert (=> b!2906197 (= res!1200276 (not call!189658))))

(declare-fun b!2906198 () Bool)

(assert (=> b!2906198 (= e!1834588 (nullable!2781 (derivativeStep!2398 r!19097 (head!6423 s!13418))))))

(declare-fun b!2906199 () Bool)

(assert (=> b!2906199 (= e!1834592 (not lt!1022564))))

(declare-fun b!2906200 () Bool)

(declare-fun e!1834591 () Bool)

(assert (=> b!2906200 (= e!1834590 e!1834591)))

(declare-fun res!1200277 () Bool)

(assert (=> b!2906200 (=> (not res!1200277) (not e!1834591))))

(assert (=> b!2906200 (= res!1200277 (not lt!1022564))))

(declare-fun b!2906201 () Bool)

(assert (=> b!2906201 (= e!1834587 (= (head!6423 (tail!4652 s!13418)) (c!473500 (derivativeStep!2398 r!19097 (head!6423 s!13418)))))))

(declare-fun b!2906202 () Bool)

(declare-fun res!1200274 () Bool)

(declare-fun e!1834589 () Bool)

(assert (=> b!2906202 (=> res!1200274 e!1834589)))

(assert (=> b!2906202 (= res!1200274 (not (isEmpty!18880 (tail!4652 (tail!4652 s!13418)))))))

(declare-fun b!2906203 () Bool)

(assert (=> b!2906203 (= e!1834586 (= lt!1022564 call!189658))))

(declare-fun bm!189653 () Bool)

(assert (=> bm!189653 (= call!189658 (isEmpty!18880 (tail!4652 s!13418)))))

(declare-fun b!2906204 () Bool)

(assert (=> b!2906204 (= e!1834589 (not (= (head!6423 (tail!4652 s!13418)) (c!473500 (derivativeStep!2398 r!19097 (head!6423 s!13418))))))))

(declare-fun b!2906205 () Bool)

(assert (=> b!2906205 (= e!1834591 e!1834589)))

(declare-fun res!1200270 () Bool)

(assert (=> b!2906205 (=> res!1200270 e!1834589)))

(assert (=> b!2906205 (= res!1200270 call!189658)))

(declare-fun b!2906206 () Bool)

(assert (=> b!2906206 (= e!1834588 (matchR!3829 (derivativeStep!2398 (derivativeStep!2398 r!19097 (head!6423 s!13418)) (head!6423 (tail!4652 s!13418))) (tail!4652 (tail!4652 s!13418))))))

(assert (= (and d!836143 c!473619) b!2906198))

(assert (= (and d!836143 (not c!473619)) b!2906206))

(assert (= (and d!836143 c!473618) b!2906203))

(assert (= (and d!836143 (not c!473618)) b!2906196))

(assert (= (and b!2906196 c!473617) b!2906199))

(assert (= (and b!2906196 (not c!473617)) b!2906193))

(assert (= (and b!2906193 (not res!1200271)) b!2906194))

(assert (= (and b!2906194 res!1200273) b!2906197))

(assert (= (and b!2906197 res!1200276) b!2906195))

(assert (= (and b!2906195 res!1200275) b!2906201))

(assert (= (and b!2906194 (not res!1200272)) b!2906200))

(assert (= (and b!2906200 res!1200277) b!2906205))

(assert (= (and b!2906205 (not res!1200270)) b!2906202))

(assert (= (and b!2906202 (not res!1200274)) b!2906204))

(assert (= (or b!2906203 b!2906197 b!2906205) bm!189653))

(assert (=> b!2906204 m!3308023))

(assert (=> b!2906204 m!3308223))

(assert (=> b!2906198 m!3308151))

(declare-fun m!3308329 () Bool)

(assert (=> b!2906198 m!3308329))

(assert (=> d!836143 m!3308023))

(assert (=> d!836143 m!3308149))

(assert (=> d!836143 m!3308151))

(declare-fun m!3308331 () Bool)

(assert (=> d!836143 m!3308331))

(assert (=> bm!189653 m!3308023))

(assert (=> bm!189653 m!3308149))

(assert (=> b!2906201 m!3308023))

(assert (=> b!2906201 m!3308223))

(assert (=> b!2906195 m!3308023))

(assert (=> b!2906195 m!3308213))

(assert (=> b!2906195 m!3308213))

(declare-fun m!3308333 () Bool)

(assert (=> b!2906195 m!3308333))

(assert (=> b!2906206 m!3308023))

(assert (=> b!2906206 m!3308223))

(assert (=> b!2906206 m!3308151))

(assert (=> b!2906206 m!3308223))

(declare-fun m!3308335 () Bool)

(assert (=> b!2906206 m!3308335))

(assert (=> b!2906206 m!3308023))

(assert (=> b!2906206 m!3308213))

(assert (=> b!2906206 m!3308335))

(assert (=> b!2906206 m!3308213))

(declare-fun m!3308337 () Bool)

(assert (=> b!2906206 m!3308337))

(assert (=> b!2906202 m!3308023))

(assert (=> b!2906202 m!3308213))

(assert (=> b!2906202 m!3308213))

(assert (=> b!2906202 m!3308333))

(assert (=> b!2905961 d!836143))

(declare-fun b!2906207 () Bool)

(declare-fun e!1834593 () Regex!8891)

(declare-fun call!189662 () Regex!8891)

(assert (=> b!2906207 (= e!1834593 (Concat!14212 call!189662 r!19097))))

(declare-fun c!473620 () Bool)

(declare-fun bm!189654 () Bool)

(declare-fun call!189659 () Regex!8891)

(assert (=> bm!189654 (= call!189659 (derivativeStep!2398 (ite c!473620 (regTwo!18295 r!19097) (regTwo!18294 r!19097)) (head!6423 s!13418)))))

(declare-fun e!1834597 () Regex!8891)

(declare-fun b!2906208 () Bool)

(declare-fun call!189661 () Regex!8891)

(assert (=> b!2906208 (= e!1834597 (Union!8891 (Concat!14212 call!189661 (regTwo!18294 r!19097)) call!189659))))

(declare-fun b!2906209 () Bool)

(declare-fun e!1834594 () Regex!8891)

(declare-fun call!189660 () Regex!8891)

(assert (=> b!2906209 (= e!1834594 (Union!8891 call!189660 call!189659))))

(declare-fun bm!189655 () Bool)

(assert (=> bm!189655 (= call!189662 call!189660)))

(declare-fun b!2906210 () Bool)

(declare-fun e!1834596 () Regex!8891)

(declare-fun e!1834595 () Regex!8891)

(assert (=> b!2906210 (= e!1834596 e!1834595)))

(declare-fun c!473621 () Bool)

(assert (=> b!2906210 (= c!473621 ((_ is ElementMatch!8891) r!19097))))

(declare-fun d!836145 () Bool)

(declare-fun lt!1022565 () Regex!8891)

(assert (=> d!836145 (validRegex!3664 lt!1022565)))

(assert (=> d!836145 (= lt!1022565 e!1834596)))

(declare-fun c!473622 () Bool)

(assert (=> d!836145 (= c!473622 (or ((_ is EmptyExpr!8891) r!19097) ((_ is EmptyLang!8891) r!19097)))))

(assert (=> d!836145 (validRegex!3664 r!19097)))

(assert (=> d!836145 (= (derivativeStep!2398 r!19097 (head!6423 s!13418)) lt!1022565)))

(declare-fun b!2906211 () Bool)

(assert (=> b!2906211 (= c!473620 ((_ is Union!8891) r!19097))))

(assert (=> b!2906211 (= e!1834595 e!1834594)))

(declare-fun b!2906212 () Bool)

(assert (=> b!2906212 (= e!1834595 (ite (= (head!6423 s!13418) (c!473500 r!19097)) EmptyExpr!8891 EmptyLang!8891))))

(declare-fun b!2906213 () Bool)

(assert (=> b!2906213 (= e!1834597 (Union!8891 (Concat!14212 call!189661 (regTwo!18294 r!19097)) EmptyLang!8891))))

(declare-fun c!473623 () Bool)

(declare-fun bm!189656 () Bool)

(assert (=> bm!189656 (= call!189660 (derivativeStep!2398 (ite c!473620 (regOne!18295 r!19097) (ite c!473623 (reg!9220 r!19097) (regOne!18294 r!19097))) (head!6423 s!13418)))))

(declare-fun b!2906214 () Bool)

(declare-fun c!473624 () Bool)

(assert (=> b!2906214 (= c!473624 (nullable!2781 (regOne!18294 r!19097)))))

(assert (=> b!2906214 (= e!1834593 e!1834597)))

(declare-fun bm!189657 () Bool)

(assert (=> bm!189657 (= call!189661 call!189662)))

(declare-fun b!2906215 () Bool)

(assert (=> b!2906215 (= e!1834594 e!1834593)))

(assert (=> b!2906215 (= c!473623 ((_ is Star!8891) r!19097))))

(declare-fun b!2906216 () Bool)

(assert (=> b!2906216 (= e!1834596 EmptyLang!8891)))

(assert (= (and d!836145 c!473622) b!2906216))

(assert (= (and d!836145 (not c!473622)) b!2906210))

(assert (= (and b!2906210 c!473621) b!2906212))

(assert (= (and b!2906210 (not c!473621)) b!2906211))

(assert (= (and b!2906211 c!473620) b!2906209))

(assert (= (and b!2906211 (not c!473620)) b!2906215))

(assert (= (and b!2906215 c!473623) b!2906207))

(assert (= (and b!2906215 (not c!473623)) b!2906214))

(assert (= (and b!2906214 c!473624) b!2906208))

(assert (= (and b!2906214 (not c!473624)) b!2906213))

(assert (= (or b!2906208 b!2906213) bm!189657))

(assert (= (or b!2906207 bm!189657) bm!189655))

(assert (= (or b!2906209 bm!189655) bm!189656))

(assert (= (or b!2906209 b!2906208) bm!189654))

(assert (=> bm!189654 m!3308143))

(declare-fun m!3308339 () Bool)

(assert (=> bm!189654 m!3308339))

(declare-fun m!3308341 () Bool)

(assert (=> d!836145 m!3308341))

(assert (=> d!836145 m!3308037))

(assert (=> bm!189656 m!3308143))

(declare-fun m!3308343 () Bool)

(assert (=> bm!189656 m!3308343))

(assert (=> b!2906214 m!3308089))

(assert (=> b!2905961 d!836145))

(assert (=> b!2905961 d!836117))

(assert (=> b!2905961 d!836039))

(declare-fun d!836149 () Bool)

(assert (=> d!836149 (= (nullable!2781 (regOne!18294 r!19097)) (nullableFct!852 (regOne!18294 r!19097)))))

(declare-fun bs!524076 () Bool)

(assert (= bs!524076 d!836149))

(declare-fun m!3308345 () Bool)

(assert (=> bs!524076 m!3308345))

(assert (=> b!2905836 d!836149))

(assert (=> d!836063 d!836081))

(assert (=> d!836063 d!836037))

(declare-fun b!2906217 () Bool)

(declare-fun e!1834603 () Bool)

(declare-fun call!189665 () Bool)

(assert (=> b!2906217 (= e!1834603 call!189665)))

(declare-fun call!189663 () Bool)

(declare-fun c!473625 () Bool)

(declare-fun c!473626 () Bool)

(declare-fun bm!189658 () Bool)

(assert (=> bm!189658 (= call!189663 (validRegex!3664 (ite c!473625 (reg!9220 (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))) (ite c!473626 (regOne!18295 (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))) (regOne!18294 (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097)))))))))

(declare-fun b!2906218 () Bool)

(declare-fun e!1834602 () Bool)

(declare-fun e!1834604 () Bool)

(assert (=> b!2906218 (= e!1834602 e!1834604)))

(declare-fun res!1200281 () Bool)

(assert (=> b!2906218 (= res!1200281 (not (nullable!2781 (reg!9220 (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))))

(assert (=> b!2906218 (=> (not res!1200281) (not e!1834604))))

(declare-fun b!2906219 () Bool)

(declare-fun e!1834601 () Bool)

(assert (=> b!2906219 (= e!1834602 e!1834601)))

(assert (=> b!2906219 (= c!473626 ((_ is Union!8891) (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))

(declare-fun b!2906220 () Bool)

(declare-fun e!1834599 () Bool)

(declare-fun e!1834598 () Bool)

(assert (=> b!2906220 (= e!1834599 e!1834598)))

(declare-fun res!1200280 () Bool)

(assert (=> b!2906220 (=> (not res!1200280) (not e!1834598))))

(declare-fun call!189664 () Bool)

(assert (=> b!2906220 (= res!1200280 call!189664)))

(declare-fun bm!189660 () Bool)

(assert (=> bm!189660 (= call!189665 (validRegex!3664 (ite c!473626 (regTwo!18295 (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))) (regTwo!18294 (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))))

(declare-fun b!2906221 () Bool)

(declare-fun e!1834600 () Bool)

(assert (=> b!2906221 (= e!1834600 e!1834602)))

(assert (=> b!2906221 (= c!473625 ((_ is Star!8891) (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))

(declare-fun b!2906222 () Bool)

(assert (=> b!2906222 (= e!1834598 call!189665)))

(declare-fun b!2906223 () Bool)

(assert (=> b!2906223 (= e!1834604 call!189663)))

(declare-fun b!2906224 () Bool)

(declare-fun res!1200279 () Bool)

(assert (=> b!2906224 (=> (not res!1200279) (not e!1834603))))

(assert (=> b!2906224 (= res!1200279 call!189664)))

(assert (=> b!2906224 (= e!1834601 e!1834603)))

(declare-fun b!2906225 () Bool)

(declare-fun res!1200282 () Bool)

(assert (=> b!2906225 (=> res!1200282 e!1834599)))

(assert (=> b!2906225 (= res!1200282 (not ((_ is Concat!14212) (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097)))))))

(assert (=> b!2906225 (= e!1834601 e!1834599)))

(declare-fun d!836151 () Bool)

(declare-fun res!1200278 () Bool)

(assert (=> d!836151 (=> res!1200278 e!1834600)))

(assert (=> d!836151 (= res!1200278 ((_ is ElementMatch!8891) (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))))))

(assert (=> d!836151 (= (validRegex!3664 (ite c!473506 (regTwo!18295 r!19097) (regTwo!18294 r!19097))) e!1834600)))

(declare-fun bm!189659 () Bool)

(assert (=> bm!189659 (= call!189664 call!189663)))

(assert (= (and d!836151 (not res!1200278)) b!2906221))

(assert (= (and b!2906221 c!473625) b!2906218))

(assert (= (and b!2906221 (not c!473625)) b!2906219))

(assert (= (and b!2906218 res!1200281) b!2906223))

(assert (= (and b!2906219 c!473626) b!2906224))

(assert (= (and b!2906219 (not c!473626)) b!2906225))

(assert (= (and b!2906224 res!1200279) b!2906217))

(assert (= (and b!2906225 (not res!1200282)) b!2906220))

(assert (= (and b!2906220 res!1200280) b!2906222))

(assert (= (or b!2906224 b!2906220) bm!189659))

(assert (= (or b!2906217 b!2906222) bm!189660))

(assert (= (or b!2906223 bm!189659) bm!189658))

(declare-fun m!3308347 () Bool)

(assert (=> bm!189658 m!3308347))

(declare-fun m!3308349 () Bool)

(assert (=> b!2906218 m!3308349))

(declare-fun m!3308351 () Bool)

(assert (=> bm!189660 m!3308351))

(assert (=> bm!189576 d!836151))

(assert (=> bm!189619 d!836113))

(declare-fun d!836153 () Bool)

(assert (=> d!836153 (= (nullable!2781 lt!1022520) (nullableFct!852 lt!1022520))))

(declare-fun bs!524077 () Bool)

(assert (= bs!524077 d!836153))

(declare-fun m!3308353 () Bool)

(assert (=> bs!524077 m!3308353))

(assert (=> b!2905975 d!836153))

(declare-fun d!836155 () Bool)

(assert (=> d!836155 (= (head!6423 prefix!1456) (h!39988 prefix!1456))))

(assert (=> b!2906034 d!836155))

(assert (=> b!2906034 d!836117))

(declare-fun d!836157 () Bool)

(assert (=> d!836157 (= (lostCause!869 r!19097) (lostCauseFct!229 r!19097))))

(declare-fun bs!524078 () Bool)

(assert (= bs!524078 d!836157))

(declare-fun m!3308355 () Bool)

(assert (=> bs!524078 m!3308355))

(assert (=> b!2905882 d!836157))

(assert (=> b!2905972 d!836095))

(assert (=> b!2905972 d!836097))

(declare-fun d!836159 () Bool)

(declare-fun c!473627 () Bool)

(assert (=> d!836159 (= c!473627 (isEmpty!18880 (tail!4652 prefix!1456)))))

(declare-fun e!1834605 () Bool)

(assert (=> d!836159 (= (prefixMatch!949 (derivativeStep!2398 r!19097 (head!6423 prefix!1456)) (tail!4652 prefix!1456)) e!1834605)))

(declare-fun b!2906226 () Bool)

(assert (=> b!2906226 (= e!1834605 (not (lostCause!869 (derivativeStep!2398 r!19097 (head!6423 prefix!1456)))))))

(declare-fun b!2906227 () Bool)

(assert (=> b!2906227 (= e!1834605 (prefixMatch!949 (derivativeStep!2398 (derivativeStep!2398 r!19097 (head!6423 prefix!1456)) (head!6423 (tail!4652 prefix!1456))) (tail!4652 (tail!4652 prefix!1456))))))

(assert (= (and d!836159 c!473627) b!2906226))

(assert (= (and d!836159 (not c!473627)) b!2906227))

(assert (=> d!836159 m!3308119))

(declare-fun m!3308357 () Bool)

(assert (=> d!836159 m!3308357))

(assert (=> b!2906226 m!3308117))

(declare-fun m!3308359 () Bool)

(assert (=> b!2906226 m!3308359))

(assert (=> b!2906227 m!3308119))

(assert (=> b!2906227 m!3308221))

(assert (=> b!2906227 m!3308117))

(assert (=> b!2906227 m!3308221))

(declare-fun m!3308361 () Bool)

(assert (=> b!2906227 m!3308361))

(assert (=> b!2906227 m!3308119))

(assert (=> b!2906227 m!3308211))

(assert (=> b!2906227 m!3308361))

(assert (=> b!2906227 m!3308211))

(declare-fun m!3308363 () Bool)

(assert (=> b!2906227 m!3308363))

(assert (=> b!2905883 d!836159))

(declare-fun b!2906228 () Bool)

(declare-fun e!1834606 () Regex!8891)

(declare-fun call!189669 () Regex!8891)

(assert (=> b!2906228 (= e!1834606 (Concat!14212 call!189669 r!19097))))

(declare-fun bm!189661 () Bool)

(declare-fun call!189666 () Regex!8891)

(declare-fun c!473628 () Bool)

(assert (=> bm!189661 (= call!189666 (derivativeStep!2398 (ite c!473628 (regTwo!18295 r!19097) (regTwo!18294 r!19097)) (head!6423 prefix!1456)))))

(declare-fun call!189668 () Regex!8891)

(declare-fun b!2906229 () Bool)

(declare-fun e!1834610 () Regex!8891)

(assert (=> b!2906229 (= e!1834610 (Union!8891 (Concat!14212 call!189668 (regTwo!18294 r!19097)) call!189666))))

(declare-fun b!2906230 () Bool)

(declare-fun e!1834607 () Regex!8891)

(declare-fun call!189667 () Regex!8891)

(assert (=> b!2906230 (= e!1834607 (Union!8891 call!189667 call!189666))))

(declare-fun bm!189662 () Bool)

(assert (=> bm!189662 (= call!189669 call!189667)))

(declare-fun b!2906231 () Bool)

(declare-fun e!1834609 () Regex!8891)

(declare-fun e!1834608 () Regex!8891)

(assert (=> b!2906231 (= e!1834609 e!1834608)))

(declare-fun c!473629 () Bool)

(assert (=> b!2906231 (= c!473629 ((_ is ElementMatch!8891) r!19097))))

(declare-fun d!836161 () Bool)

(declare-fun lt!1022566 () Regex!8891)

(assert (=> d!836161 (validRegex!3664 lt!1022566)))

(assert (=> d!836161 (= lt!1022566 e!1834609)))

(declare-fun c!473630 () Bool)

(assert (=> d!836161 (= c!473630 (or ((_ is EmptyExpr!8891) r!19097) ((_ is EmptyLang!8891) r!19097)))))

(assert (=> d!836161 (validRegex!3664 r!19097)))

(assert (=> d!836161 (= (derivativeStep!2398 r!19097 (head!6423 prefix!1456)) lt!1022566)))

(declare-fun b!2906232 () Bool)

(assert (=> b!2906232 (= c!473628 ((_ is Union!8891) r!19097))))

(assert (=> b!2906232 (= e!1834608 e!1834607)))

(declare-fun b!2906233 () Bool)

(assert (=> b!2906233 (= e!1834608 (ite (= (head!6423 prefix!1456) (c!473500 r!19097)) EmptyExpr!8891 EmptyLang!8891))))

(declare-fun b!2906234 () Bool)

(assert (=> b!2906234 (= e!1834610 (Union!8891 (Concat!14212 call!189668 (regTwo!18294 r!19097)) EmptyLang!8891))))

(declare-fun bm!189663 () Bool)

(declare-fun c!473631 () Bool)

(assert (=> bm!189663 (= call!189667 (derivativeStep!2398 (ite c!473628 (regOne!18295 r!19097) (ite c!473631 (reg!9220 r!19097) (regOne!18294 r!19097))) (head!6423 prefix!1456)))))

(declare-fun b!2906235 () Bool)

(declare-fun c!473632 () Bool)

(assert (=> b!2906235 (= c!473632 (nullable!2781 (regOne!18294 r!19097)))))

(assert (=> b!2906235 (= e!1834606 e!1834610)))

(declare-fun bm!189664 () Bool)

(assert (=> bm!189664 (= call!189668 call!189669)))

(declare-fun b!2906236 () Bool)

(assert (=> b!2906236 (= e!1834607 e!1834606)))

(assert (=> b!2906236 (= c!473631 ((_ is Star!8891) r!19097))))

(declare-fun b!2906237 () Bool)

(assert (=> b!2906237 (= e!1834609 EmptyLang!8891)))

(assert (= (and d!836161 c!473630) b!2906237))

(assert (= (and d!836161 (not c!473630)) b!2906231))

(assert (= (and b!2906231 c!473629) b!2906233))

(assert (= (and b!2906231 (not c!473629)) b!2906232))

(assert (= (and b!2906232 c!473628) b!2906230))

(assert (= (and b!2906232 (not c!473628)) b!2906236))

(assert (= (and b!2906236 c!473631) b!2906228))

(assert (= (and b!2906236 (not c!473631)) b!2906235))

(assert (= (and b!2906235 c!473632) b!2906229))

(assert (= (and b!2906235 (not c!473632)) b!2906234))

(assert (= (or b!2906229 b!2906234) bm!189664))

(assert (= (or b!2906228 bm!189664) bm!189662))

(assert (= (or b!2906230 bm!189662) bm!189663))

(assert (= (or b!2906230 b!2906229) bm!189661))

(assert (=> bm!189661 m!3308115))

(declare-fun m!3308367 () Bool)

(assert (=> bm!189661 m!3308367))

(declare-fun m!3308369 () Bool)

(assert (=> d!836161 m!3308369))

(assert (=> d!836161 m!3308037))

(assert (=> bm!189663 m!3308115))

(declare-fun m!3308371 () Bool)

(assert (=> bm!189663 m!3308371))

(assert (=> b!2906235 m!3308089))

(assert (=> b!2905883 d!836161))

(assert (=> b!2905883 d!836155))

(assert (=> b!2905883 d!836087))

(declare-fun b!2906241 () Bool)

(declare-fun e!1834611 () Bool)

(declare-fun tp!933282 () Bool)

(declare-fun tp!933285 () Bool)

(assert (=> b!2906241 (= e!1834611 (and tp!933282 tp!933285))))

(assert (=> b!2906074 (= tp!933276 e!1834611)))

(declare-fun b!2906240 () Bool)

(declare-fun tp!933283 () Bool)

(assert (=> b!2906240 (= e!1834611 tp!933283)))

(declare-fun b!2906238 () Bool)

(assert (=> b!2906238 (= e!1834611 tp_is_empty!15369)))

(declare-fun b!2906239 () Bool)

(declare-fun tp!933286 () Bool)

(declare-fun tp!933284 () Bool)

(assert (=> b!2906239 (= e!1834611 (and tp!933286 tp!933284))))

(assert (= (and b!2906074 ((_ is ElementMatch!8891) (regOne!18294 (regOne!18294 r!19097)))) b!2906238))

(assert (= (and b!2906074 ((_ is Concat!14212) (regOne!18294 (regOne!18294 r!19097)))) b!2906239))

(assert (= (and b!2906074 ((_ is Star!8891) (regOne!18294 (regOne!18294 r!19097)))) b!2906240))

(assert (= (and b!2906074 ((_ is Union!8891) (regOne!18294 (regOne!18294 r!19097)))) b!2906241))

(declare-fun b!2906245 () Bool)

(declare-fun e!1834612 () Bool)

(declare-fun tp!933287 () Bool)

(declare-fun tp!933290 () Bool)

(assert (=> b!2906245 (= e!1834612 (and tp!933287 tp!933290))))

(assert (=> b!2906074 (= tp!933274 e!1834612)))

(declare-fun b!2906244 () Bool)

(declare-fun tp!933288 () Bool)

(assert (=> b!2906244 (= e!1834612 tp!933288)))

(declare-fun b!2906242 () Bool)

(assert (=> b!2906242 (= e!1834612 tp_is_empty!15369)))

(declare-fun b!2906243 () Bool)

(declare-fun tp!933291 () Bool)

(declare-fun tp!933289 () Bool)

(assert (=> b!2906243 (= e!1834612 (and tp!933291 tp!933289))))

(assert (= (and b!2906074 ((_ is ElementMatch!8891) (regTwo!18294 (regOne!18294 r!19097)))) b!2906242))

(assert (= (and b!2906074 ((_ is Concat!14212) (regTwo!18294 (regOne!18294 r!19097)))) b!2906243))

(assert (= (and b!2906074 ((_ is Star!8891) (regTwo!18294 (regOne!18294 r!19097)))) b!2906244))

(assert (= (and b!2906074 ((_ is Union!8891) (regTwo!18294 (regOne!18294 r!19097)))) b!2906245))

(declare-fun b!2906249 () Bool)

(declare-fun e!1834613 () Bool)

(declare-fun tp!933292 () Bool)

(declare-fun tp!933295 () Bool)

(assert (=> b!2906249 (= e!1834613 (and tp!933292 tp!933295))))

(assert (=> b!2906062 (= tp!933257 e!1834613)))

(declare-fun b!2906248 () Bool)

(declare-fun tp!933293 () Bool)

(assert (=> b!2906248 (= e!1834613 tp!933293)))

(declare-fun b!2906246 () Bool)

(assert (=> b!2906246 (= e!1834613 tp_is_empty!15369)))

(declare-fun b!2906247 () Bool)

(declare-fun tp!933296 () Bool)

(declare-fun tp!933294 () Bool)

(assert (=> b!2906247 (= e!1834613 (and tp!933296 tp!933294))))

(assert (= (and b!2906062 ((_ is ElementMatch!8891) (reg!9220 (reg!9220 r!19097)))) b!2906246))

(assert (= (and b!2906062 ((_ is Concat!14212) (reg!9220 (reg!9220 r!19097)))) b!2906247))

(assert (= (and b!2906062 ((_ is Star!8891) (reg!9220 (reg!9220 r!19097)))) b!2906248))

(assert (= (and b!2906062 ((_ is Union!8891) (reg!9220 (reg!9220 r!19097)))) b!2906249))

(declare-fun b!2906253 () Bool)

(declare-fun e!1834614 () Bool)

(declare-fun tp!933297 () Bool)

(declare-fun tp!933300 () Bool)

(assert (=> b!2906253 (= e!1834614 (and tp!933297 tp!933300))))

(assert (=> b!2906078 (= tp!933281 e!1834614)))

(declare-fun b!2906252 () Bool)

(declare-fun tp!933298 () Bool)

(assert (=> b!2906252 (= e!1834614 tp!933298)))

(declare-fun b!2906250 () Bool)

(assert (=> b!2906250 (= e!1834614 tp_is_empty!15369)))

(declare-fun b!2906251 () Bool)

(declare-fun tp!933301 () Bool)

(declare-fun tp!933299 () Bool)

(assert (=> b!2906251 (= e!1834614 (and tp!933301 tp!933299))))

(assert (= (and b!2906078 ((_ is ElementMatch!8891) (regOne!18294 (regTwo!18294 r!19097)))) b!2906250))

(assert (= (and b!2906078 ((_ is Concat!14212) (regOne!18294 (regTwo!18294 r!19097)))) b!2906251))

(assert (= (and b!2906078 ((_ is Star!8891) (regOne!18294 (regTwo!18294 r!19097)))) b!2906252))

(assert (= (and b!2906078 ((_ is Union!8891) (regOne!18294 (regTwo!18294 r!19097)))) b!2906253))

(declare-fun b!2906266 () Bool)

(declare-fun e!1834622 () Bool)

(declare-fun tp!933302 () Bool)

(declare-fun tp!933305 () Bool)

(assert (=> b!2906266 (= e!1834622 (and tp!933302 tp!933305))))

(assert (=> b!2906078 (= tp!933279 e!1834622)))

(declare-fun b!2906265 () Bool)

(declare-fun tp!933303 () Bool)

(assert (=> b!2906265 (= e!1834622 tp!933303)))

(declare-fun b!2906263 () Bool)

(assert (=> b!2906263 (= e!1834622 tp_is_empty!15369)))

(declare-fun b!2906264 () Bool)

(declare-fun tp!933306 () Bool)

(declare-fun tp!933304 () Bool)

(assert (=> b!2906264 (= e!1834622 (and tp!933306 tp!933304))))

(assert (= (and b!2906078 ((_ is ElementMatch!8891) (regTwo!18294 (regTwo!18294 r!19097)))) b!2906263))

(assert (= (and b!2906078 ((_ is Concat!14212) (regTwo!18294 (regTwo!18294 r!19097)))) b!2906264))

(assert (= (and b!2906078 ((_ is Star!8891) (regTwo!18294 (regTwo!18294 r!19097)))) b!2906265))

(assert (= (and b!2906078 ((_ is Union!8891) (regTwo!18294 (regTwo!18294 r!19097)))) b!2906266))

(declare-fun b!2906270 () Bool)

(declare-fun e!1834623 () Bool)

(declare-fun tp!933307 () Bool)

(declare-fun tp!933310 () Bool)

(assert (=> b!2906270 (= e!1834623 (and tp!933307 tp!933310))))

(assert (=> b!2906066 (= tp!933266 e!1834623)))

(declare-fun b!2906269 () Bool)

(declare-fun tp!933308 () Bool)

(assert (=> b!2906269 (= e!1834623 tp!933308)))

(declare-fun b!2906267 () Bool)

(assert (=> b!2906267 (= e!1834623 tp_is_empty!15369)))

(declare-fun b!2906268 () Bool)

(declare-fun tp!933311 () Bool)

(declare-fun tp!933309 () Bool)

(assert (=> b!2906268 (= e!1834623 (and tp!933311 tp!933309))))

(assert (= (and b!2906066 ((_ is ElementMatch!8891) (regOne!18294 (regOne!18295 r!19097)))) b!2906267))

(assert (= (and b!2906066 ((_ is Concat!14212) (regOne!18294 (regOne!18295 r!19097)))) b!2906268))

(assert (= (and b!2906066 ((_ is Star!8891) (regOne!18294 (regOne!18295 r!19097)))) b!2906269))

(assert (= (and b!2906066 ((_ is Union!8891) (regOne!18294 (regOne!18295 r!19097)))) b!2906270))

(declare-fun b!2906274 () Bool)

(declare-fun e!1834624 () Bool)

(declare-fun tp!933312 () Bool)

(declare-fun tp!933315 () Bool)

(assert (=> b!2906274 (= e!1834624 (and tp!933312 tp!933315))))

(assert (=> b!2906066 (= tp!933264 e!1834624)))

(declare-fun b!2906273 () Bool)

(declare-fun tp!933313 () Bool)

(assert (=> b!2906273 (= e!1834624 tp!933313)))

(declare-fun b!2906271 () Bool)

(assert (=> b!2906271 (= e!1834624 tp_is_empty!15369)))

(declare-fun b!2906272 () Bool)

(declare-fun tp!933316 () Bool)

(declare-fun tp!933314 () Bool)

(assert (=> b!2906272 (= e!1834624 (and tp!933316 tp!933314))))

(assert (= (and b!2906066 ((_ is ElementMatch!8891) (regTwo!18294 (regOne!18295 r!19097)))) b!2906271))

(assert (= (and b!2906066 ((_ is Concat!14212) (regTwo!18294 (regOne!18295 r!19097)))) b!2906272))

(assert (= (and b!2906066 ((_ is Star!8891) (regTwo!18294 (regOne!18295 r!19097)))) b!2906273))

(assert (= (and b!2906066 ((_ is Union!8891) (regTwo!18294 (regOne!18295 r!19097)))) b!2906274))

(declare-fun b!2906278 () Bool)

(declare-fun e!1834625 () Bool)

(declare-fun tp!933317 () Bool)

(declare-fun tp!933320 () Bool)

(assert (=> b!2906278 (= e!1834625 (and tp!933317 tp!933320))))

(assert (=> b!2906079 (= tp!933278 e!1834625)))

(declare-fun b!2906277 () Bool)

(declare-fun tp!933318 () Bool)

(assert (=> b!2906277 (= e!1834625 tp!933318)))

(declare-fun b!2906275 () Bool)

(assert (=> b!2906275 (= e!1834625 tp_is_empty!15369)))

(declare-fun b!2906276 () Bool)

(declare-fun tp!933321 () Bool)

(declare-fun tp!933319 () Bool)

(assert (=> b!2906276 (= e!1834625 (and tp!933321 tp!933319))))

(assert (= (and b!2906079 ((_ is ElementMatch!8891) (reg!9220 (regTwo!18294 r!19097)))) b!2906275))

(assert (= (and b!2906079 ((_ is Concat!14212) (reg!9220 (regTwo!18294 r!19097)))) b!2906276))

(assert (= (and b!2906079 ((_ is Star!8891) (reg!9220 (regTwo!18294 r!19097)))) b!2906277))

(assert (= (and b!2906079 ((_ is Union!8891) (reg!9220 (regTwo!18294 r!19097)))) b!2906278))

(declare-fun b!2906282 () Bool)

(declare-fun e!1834626 () Bool)

(declare-fun tp!933322 () Bool)

(declare-fun tp!933325 () Bool)

(assert (=> b!2906282 (= e!1834626 (and tp!933322 tp!933325))))

(assert (=> b!2906071 (= tp!933268 e!1834626)))

(declare-fun b!2906281 () Bool)

(declare-fun tp!933323 () Bool)

(assert (=> b!2906281 (= e!1834626 tp!933323)))

(declare-fun b!2906279 () Bool)

(assert (=> b!2906279 (= e!1834626 tp_is_empty!15369)))

(declare-fun b!2906280 () Bool)

(declare-fun tp!933326 () Bool)

(declare-fun tp!933324 () Bool)

(assert (=> b!2906280 (= e!1834626 (and tp!933326 tp!933324))))

(assert (= (and b!2906071 ((_ is ElementMatch!8891) (reg!9220 (regTwo!18295 r!19097)))) b!2906279))

(assert (= (and b!2906071 ((_ is Concat!14212) (reg!9220 (regTwo!18295 r!19097)))) b!2906280))

(assert (= (and b!2906071 ((_ is Star!8891) (reg!9220 (regTwo!18295 r!19097)))) b!2906281))

(assert (= (and b!2906071 ((_ is Union!8891) (reg!9220 (regTwo!18295 r!19097)))) b!2906282))

(declare-fun b!2906300 () Bool)

(declare-fun e!1834634 () Bool)

(declare-fun tp!933327 () Bool)

(declare-fun tp!933330 () Bool)

(assert (=> b!2906300 (= e!1834634 (and tp!933327 tp!933330))))

(assert (=> b!2906070 (= tp!933271 e!1834634)))

(declare-fun b!2906299 () Bool)

(declare-fun tp!933328 () Bool)

(assert (=> b!2906299 (= e!1834634 tp!933328)))

(declare-fun b!2906296 () Bool)

(assert (=> b!2906296 (= e!1834634 tp_is_empty!15369)))

(declare-fun b!2906298 () Bool)

(declare-fun tp!933331 () Bool)

(declare-fun tp!933329 () Bool)

(assert (=> b!2906298 (= e!1834634 (and tp!933331 tp!933329))))

(assert (= (and b!2906070 ((_ is ElementMatch!8891) (regOne!18294 (regTwo!18295 r!19097)))) b!2906296))

(assert (= (and b!2906070 ((_ is Concat!14212) (regOne!18294 (regTwo!18295 r!19097)))) b!2906298))

(assert (= (and b!2906070 ((_ is Star!8891) (regOne!18294 (regTwo!18295 r!19097)))) b!2906299))

(assert (= (and b!2906070 ((_ is Union!8891) (regOne!18294 (regTwo!18295 r!19097)))) b!2906300))

(declare-fun b!2906304 () Bool)

(declare-fun e!1834635 () Bool)

(declare-fun tp!933332 () Bool)

(declare-fun tp!933335 () Bool)

(assert (=> b!2906304 (= e!1834635 (and tp!933332 tp!933335))))

(assert (=> b!2906070 (= tp!933269 e!1834635)))

(declare-fun b!2906303 () Bool)

(declare-fun tp!933333 () Bool)

(assert (=> b!2906303 (= e!1834635 tp!933333)))

(declare-fun b!2906301 () Bool)

(assert (=> b!2906301 (= e!1834635 tp_is_empty!15369)))

(declare-fun b!2906302 () Bool)

(declare-fun tp!933336 () Bool)

(declare-fun tp!933334 () Bool)

(assert (=> b!2906302 (= e!1834635 (and tp!933336 tp!933334))))

(assert (= (and b!2906070 ((_ is ElementMatch!8891) (regTwo!18294 (regTwo!18295 r!19097)))) b!2906301))

(assert (= (and b!2906070 ((_ is Concat!14212) (regTwo!18294 (regTwo!18295 r!19097)))) b!2906302))

(assert (= (and b!2906070 ((_ is Star!8891) (regTwo!18294 (regTwo!18295 r!19097)))) b!2906303))

(assert (= (and b!2906070 ((_ is Union!8891) (regTwo!18294 (regTwo!18295 r!19097)))) b!2906304))

(declare-fun b!2906308 () Bool)

(declare-fun e!1834636 () Bool)

(declare-fun tp!933337 () Bool)

(declare-fun tp!933340 () Bool)

(assert (=> b!2906308 (= e!1834636 (and tp!933337 tp!933340))))

(assert (=> b!2906063 (= tp!933256 e!1834636)))

(declare-fun b!2906307 () Bool)

(declare-fun tp!933338 () Bool)

(assert (=> b!2906307 (= e!1834636 tp!933338)))

(declare-fun b!2906305 () Bool)

(assert (=> b!2906305 (= e!1834636 tp_is_empty!15369)))

(declare-fun b!2906306 () Bool)

(declare-fun tp!933341 () Bool)

(declare-fun tp!933339 () Bool)

(assert (=> b!2906306 (= e!1834636 (and tp!933341 tp!933339))))

(assert (= (and b!2906063 ((_ is ElementMatch!8891) (regOne!18295 (reg!9220 r!19097)))) b!2906305))

(assert (= (and b!2906063 ((_ is Concat!14212) (regOne!18295 (reg!9220 r!19097)))) b!2906306))

(assert (= (and b!2906063 ((_ is Star!8891) (regOne!18295 (reg!9220 r!19097)))) b!2906307))

(assert (= (and b!2906063 ((_ is Union!8891) (regOne!18295 (reg!9220 r!19097)))) b!2906308))

(declare-fun b!2906312 () Bool)

(declare-fun e!1834637 () Bool)

(declare-fun tp!933342 () Bool)

(declare-fun tp!933345 () Bool)

(assert (=> b!2906312 (= e!1834637 (and tp!933342 tp!933345))))

(assert (=> b!2906063 (= tp!933259 e!1834637)))

(declare-fun b!2906311 () Bool)

(declare-fun tp!933343 () Bool)

(assert (=> b!2906311 (= e!1834637 tp!933343)))

(declare-fun b!2906309 () Bool)

(assert (=> b!2906309 (= e!1834637 tp_is_empty!15369)))

(declare-fun b!2906310 () Bool)

(declare-fun tp!933346 () Bool)

(declare-fun tp!933344 () Bool)

(assert (=> b!2906310 (= e!1834637 (and tp!933346 tp!933344))))

(assert (= (and b!2906063 ((_ is ElementMatch!8891) (regTwo!18295 (reg!9220 r!19097)))) b!2906309))

(assert (= (and b!2906063 ((_ is Concat!14212) (regTwo!18295 (reg!9220 r!19097)))) b!2906310))

(assert (= (and b!2906063 ((_ is Star!8891) (regTwo!18295 (reg!9220 r!19097)))) b!2906311))

(assert (= (and b!2906063 ((_ is Union!8891) (regTwo!18295 (reg!9220 r!19097)))) b!2906312))

(declare-fun b!2906316 () Bool)

(declare-fun e!1834638 () Bool)

(declare-fun tp!933347 () Bool)

(declare-fun tp!933350 () Bool)

(assert (=> b!2906316 (= e!1834638 (and tp!933347 tp!933350))))

(assert (=> b!2906075 (= tp!933273 e!1834638)))

(declare-fun b!2906315 () Bool)

(declare-fun tp!933348 () Bool)

(assert (=> b!2906315 (= e!1834638 tp!933348)))

(declare-fun b!2906313 () Bool)

(assert (=> b!2906313 (= e!1834638 tp_is_empty!15369)))

(declare-fun b!2906314 () Bool)

(declare-fun tp!933351 () Bool)

(declare-fun tp!933349 () Bool)

(assert (=> b!2906314 (= e!1834638 (and tp!933351 tp!933349))))

(assert (= (and b!2906075 ((_ is ElementMatch!8891) (reg!9220 (regOne!18294 r!19097)))) b!2906313))

(assert (= (and b!2906075 ((_ is Concat!14212) (reg!9220 (regOne!18294 r!19097)))) b!2906314))

(assert (= (and b!2906075 ((_ is Star!8891) (reg!9220 (regOne!18294 r!19097)))) b!2906315))

(assert (= (and b!2906075 ((_ is Union!8891) (reg!9220 (regOne!18294 r!19097)))) b!2906316))

(declare-fun b!2906317 () Bool)

(declare-fun e!1834639 () Bool)

(declare-fun tp!933352 () Bool)

(assert (=> b!2906317 (= e!1834639 (and tp_is_empty!15369 tp!933352))))

(assert (=> b!2906049 (= tp!933245 e!1834639)))

(assert (= (and b!2906049 ((_ is Cons!34568) (t!233735 (t!233735 s!13418)))) b!2906317))

(declare-fun b!2906321 () Bool)

(declare-fun e!1834640 () Bool)

(declare-fun tp!933353 () Bool)

(declare-fun tp!933356 () Bool)

(assert (=> b!2906321 (= e!1834640 (and tp!933353 tp!933356))))

(assert (=> b!2906061 (= tp!933260 e!1834640)))

(declare-fun b!2906320 () Bool)

(declare-fun tp!933354 () Bool)

(assert (=> b!2906320 (= e!1834640 tp!933354)))

(declare-fun b!2906318 () Bool)

(assert (=> b!2906318 (= e!1834640 tp_is_empty!15369)))

(declare-fun b!2906319 () Bool)

(declare-fun tp!933357 () Bool)

(declare-fun tp!933355 () Bool)

(assert (=> b!2906319 (= e!1834640 (and tp!933357 tp!933355))))

(assert (= (and b!2906061 ((_ is ElementMatch!8891) (regOne!18294 (reg!9220 r!19097)))) b!2906318))

(assert (= (and b!2906061 ((_ is Concat!14212) (regOne!18294 (reg!9220 r!19097)))) b!2906319))

(assert (= (and b!2906061 ((_ is Star!8891) (regOne!18294 (reg!9220 r!19097)))) b!2906320))

(assert (= (and b!2906061 ((_ is Union!8891) (regOne!18294 (reg!9220 r!19097)))) b!2906321))

(declare-fun b!2906325 () Bool)

(declare-fun e!1834641 () Bool)

(declare-fun tp!933358 () Bool)

(declare-fun tp!933361 () Bool)

(assert (=> b!2906325 (= e!1834641 (and tp!933358 tp!933361))))

(assert (=> b!2906061 (= tp!933258 e!1834641)))

(declare-fun b!2906324 () Bool)

(declare-fun tp!933359 () Bool)

(assert (=> b!2906324 (= e!1834641 tp!933359)))

(declare-fun b!2906322 () Bool)

(assert (=> b!2906322 (= e!1834641 tp_is_empty!15369)))

(declare-fun b!2906323 () Bool)

(declare-fun tp!933362 () Bool)

(declare-fun tp!933360 () Bool)

(assert (=> b!2906323 (= e!1834641 (and tp!933362 tp!933360))))

(assert (= (and b!2906061 ((_ is ElementMatch!8891) (regTwo!18294 (reg!9220 r!19097)))) b!2906322))

(assert (= (and b!2906061 ((_ is Concat!14212) (regTwo!18294 (reg!9220 r!19097)))) b!2906323))

(assert (= (and b!2906061 ((_ is Star!8891) (regTwo!18294 (reg!9220 r!19097)))) b!2906324))

(assert (= (and b!2906061 ((_ is Union!8891) (regTwo!18294 (reg!9220 r!19097)))) b!2906325))

(declare-fun b!2906329 () Bool)

(declare-fun e!1834642 () Bool)

(declare-fun tp!933363 () Bool)

(declare-fun tp!933366 () Bool)

(assert (=> b!2906329 (= e!1834642 (and tp!933363 tp!933366))))

(assert (=> b!2906072 (= tp!933267 e!1834642)))

(declare-fun b!2906328 () Bool)

(declare-fun tp!933364 () Bool)

(assert (=> b!2906328 (= e!1834642 tp!933364)))

(declare-fun b!2906326 () Bool)

(assert (=> b!2906326 (= e!1834642 tp_is_empty!15369)))

(declare-fun b!2906327 () Bool)

(declare-fun tp!933367 () Bool)

(declare-fun tp!933365 () Bool)

(assert (=> b!2906327 (= e!1834642 (and tp!933367 tp!933365))))

(assert (= (and b!2906072 ((_ is ElementMatch!8891) (regOne!18295 (regTwo!18295 r!19097)))) b!2906326))

(assert (= (and b!2906072 ((_ is Concat!14212) (regOne!18295 (regTwo!18295 r!19097)))) b!2906327))

(assert (= (and b!2906072 ((_ is Star!8891) (regOne!18295 (regTwo!18295 r!19097)))) b!2906328))

(assert (= (and b!2906072 ((_ is Union!8891) (regOne!18295 (regTwo!18295 r!19097)))) b!2906329))

(declare-fun b!2906343 () Bool)

(declare-fun e!1834648 () Bool)

(declare-fun tp!933368 () Bool)

(declare-fun tp!933371 () Bool)

(assert (=> b!2906343 (= e!1834648 (and tp!933368 tp!933371))))

(assert (=> b!2906072 (= tp!933270 e!1834648)))

(declare-fun b!2906342 () Bool)

(declare-fun tp!933369 () Bool)

(assert (=> b!2906342 (= e!1834648 tp!933369)))

(declare-fun b!2906340 () Bool)

(assert (=> b!2906340 (= e!1834648 tp_is_empty!15369)))

(declare-fun b!2906341 () Bool)

(declare-fun tp!933372 () Bool)

(declare-fun tp!933370 () Bool)

(assert (=> b!2906341 (= e!1834648 (and tp!933372 tp!933370))))

(assert (= (and b!2906072 ((_ is ElementMatch!8891) (regTwo!18295 (regTwo!18295 r!19097)))) b!2906340))

(assert (= (and b!2906072 ((_ is Concat!14212) (regTwo!18295 (regTwo!18295 r!19097)))) b!2906341))

(assert (= (and b!2906072 ((_ is Star!8891) (regTwo!18295 (regTwo!18295 r!19097)))) b!2906342))

(assert (= (and b!2906072 ((_ is Union!8891) (regTwo!18295 (regTwo!18295 r!19097)))) b!2906343))

(declare-fun b!2906347 () Bool)

(declare-fun e!1834649 () Bool)

(declare-fun tp!933373 () Bool)

(declare-fun tp!933376 () Bool)

(assert (=> b!2906347 (= e!1834649 (and tp!933373 tp!933376))))

(assert (=> b!2906076 (= tp!933272 e!1834649)))

(declare-fun b!2906346 () Bool)

(declare-fun tp!933374 () Bool)

(assert (=> b!2906346 (= e!1834649 tp!933374)))

(declare-fun b!2906344 () Bool)

(assert (=> b!2906344 (= e!1834649 tp_is_empty!15369)))

(declare-fun b!2906345 () Bool)

(declare-fun tp!933377 () Bool)

(declare-fun tp!933375 () Bool)

(assert (=> b!2906345 (= e!1834649 (and tp!933377 tp!933375))))

(assert (= (and b!2906076 ((_ is ElementMatch!8891) (regOne!18295 (regOne!18294 r!19097)))) b!2906344))

(assert (= (and b!2906076 ((_ is Concat!14212) (regOne!18295 (regOne!18294 r!19097)))) b!2906345))

(assert (= (and b!2906076 ((_ is Star!8891) (regOne!18295 (regOne!18294 r!19097)))) b!2906346))

(assert (= (and b!2906076 ((_ is Union!8891) (regOne!18295 (regOne!18294 r!19097)))) b!2906347))

(declare-fun b!2906351 () Bool)

(declare-fun e!1834650 () Bool)

(declare-fun tp!933378 () Bool)

(declare-fun tp!933381 () Bool)

(assert (=> b!2906351 (= e!1834650 (and tp!933378 tp!933381))))

(assert (=> b!2906076 (= tp!933275 e!1834650)))

(declare-fun b!2906350 () Bool)

(declare-fun tp!933379 () Bool)

(assert (=> b!2906350 (= e!1834650 tp!933379)))

(declare-fun b!2906348 () Bool)

(assert (=> b!2906348 (= e!1834650 tp_is_empty!15369)))

(declare-fun b!2906349 () Bool)

(declare-fun tp!933382 () Bool)

(declare-fun tp!933380 () Bool)

(assert (=> b!2906349 (= e!1834650 (and tp!933382 tp!933380))))

(assert (= (and b!2906076 ((_ is ElementMatch!8891) (regTwo!18295 (regOne!18294 r!19097)))) b!2906348))

(assert (= (and b!2906076 ((_ is Concat!14212) (regTwo!18295 (regOne!18294 r!19097)))) b!2906349))

(assert (= (and b!2906076 ((_ is Star!8891) (regTwo!18295 (regOne!18294 r!19097)))) b!2906350))

(assert (= (and b!2906076 ((_ is Union!8891) (regTwo!18295 (regOne!18294 r!19097)))) b!2906351))

(declare-fun b!2906355 () Bool)

(declare-fun e!1834651 () Bool)

(declare-fun tp!933383 () Bool)

(declare-fun tp!933386 () Bool)

(assert (=> b!2906355 (= e!1834651 (and tp!933383 tp!933386))))

(assert (=> b!2906067 (= tp!933263 e!1834651)))

(declare-fun b!2906354 () Bool)

(declare-fun tp!933384 () Bool)

(assert (=> b!2906354 (= e!1834651 tp!933384)))

(declare-fun b!2906352 () Bool)

(assert (=> b!2906352 (= e!1834651 tp_is_empty!15369)))

(declare-fun b!2906353 () Bool)

(declare-fun tp!933387 () Bool)

(declare-fun tp!933385 () Bool)

(assert (=> b!2906353 (= e!1834651 (and tp!933387 tp!933385))))

(assert (= (and b!2906067 ((_ is ElementMatch!8891) (reg!9220 (regOne!18295 r!19097)))) b!2906352))

(assert (= (and b!2906067 ((_ is Concat!14212) (reg!9220 (regOne!18295 r!19097)))) b!2906353))

(assert (= (and b!2906067 ((_ is Star!8891) (reg!9220 (regOne!18295 r!19097)))) b!2906354))

(assert (= (and b!2906067 ((_ is Union!8891) (reg!9220 (regOne!18295 r!19097)))) b!2906355))

(declare-fun b!2906359 () Bool)

(declare-fun e!1834652 () Bool)

(declare-fun tp!933388 () Bool)

(declare-fun tp!933391 () Bool)

(assert (=> b!2906359 (= e!1834652 (and tp!933388 tp!933391))))

(assert (=> b!2906080 (= tp!933277 e!1834652)))

(declare-fun b!2906358 () Bool)

(declare-fun tp!933389 () Bool)

(assert (=> b!2906358 (= e!1834652 tp!933389)))

(declare-fun b!2906356 () Bool)

(assert (=> b!2906356 (= e!1834652 tp_is_empty!15369)))

(declare-fun b!2906357 () Bool)

(declare-fun tp!933392 () Bool)

(declare-fun tp!933390 () Bool)

(assert (=> b!2906357 (= e!1834652 (and tp!933392 tp!933390))))

(assert (= (and b!2906080 ((_ is ElementMatch!8891) (regOne!18295 (regTwo!18294 r!19097)))) b!2906356))

(assert (= (and b!2906080 ((_ is Concat!14212) (regOne!18295 (regTwo!18294 r!19097)))) b!2906357))

(assert (= (and b!2906080 ((_ is Star!8891) (regOne!18295 (regTwo!18294 r!19097)))) b!2906358))

(assert (= (and b!2906080 ((_ is Union!8891) (regOne!18295 (regTwo!18294 r!19097)))) b!2906359))

(declare-fun b!2906363 () Bool)

(declare-fun e!1834653 () Bool)

(declare-fun tp!933393 () Bool)

(declare-fun tp!933396 () Bool)

(assert (=> b!2906363 (= e!1834653 (and tp!933393 tp!933396))))

(assert (=> b!2906080 (= tp!933280 e!1834653)))

(declare-fun b!2906362 () Bool)

(declare-fun tp!933394 () Bool)

(assert (=> b!2906362 (= e!1834653 tp!933394)))

(declare-fun b!2906360 () Bool)

(assert (=> b!2906360 (= e!1834653 tp_is_empty!15369)))

(declare-fun b!2906361 () Bool)

(declare-fun tp!933397 () Bool)

(declare-fun tp!933395 () Bool)

(assert (=> b!2906361 (= e!1834653 (and tp!933397 tp!933395))))

(assert (= (and b!2906080 ((_ is ElementMatch!8891) (regTwo!18295 (regTwo!18294 r!19097)))) b!2906360))

(assert (= (and b!2906080 ((_ is Concat!14212) (regTwo!18295 (regTwo!18294 r!19097)))) b!2906361))

(assert (= (and b!2906080 ((_ is Star!8891) (regTwo!18295 (regTwo!18294 r!19097)))) b!2906362))

(assert (= (and b!2906080 ((_ is Union!8891) (regTwo!18295 (regTwo!18294 r!19097)))) b!2906363))

(declare-fun b!2906373 () Bool)

(declare-fun e!1834661 () Bool)

(declare-fun tp!933398 () Bool)

(assert (=> b!2906373 (= e!1834661 (and tp_is_empty!15369 tp!933398))))

(assert (=> b!2906064 (= tp!933261 e!1834661)))

(assert (= (and b!2906064 ((_ is Cons!34568) (t!233735 (t!233735 prefix!1456)))) b!2906373))

(declare-fun b!2906377 () Bool)

(declare-fun e!1834662 () Bool)

(declare-fun tp!933399 () Bool)

(declare-fun tp!933402 () Bool)

(assert (=> b!2906377 (= e!1834662 (and tp!933399 tp!933402))))

(assert (=> b!2906068 (= tp!933262 e!1834662)))

(declare-fun b!2906376 () Bool)

(declare-fun tp!933400 () Bool)

(assert (=> b!2906376 (= e!1834662 tp!933400)))

(declare-fun b!2906374 () Bool)

(assert (=> b!2906374 (= e!1834662 tp_is_empty!15369)))

(declare-fun b!2906375 () Bool)

(declare-fun tp!933403 () Bool)

(declare-fun tp!933401 () Bool)

(assert (=> b!2906375 (= e!1834662 (and tp!933403 tp!933401))))

(assert (= (and b!2906068 ((_ is ElementMatch!8891) (regOne!18295 (regOne!18295 r!19097)))) b!2906374))

(assert (= (and b!2906068 ((_ is Concat!14212) (regOne!18295 (regOne!18295 r!19097)))) b!2906375))

(assert (= (and b!2906068 ((_ is Star!8891) (regOne!18295 (regOne!18295 r!19097)))) b!2906376))

(assert (= (and b!2906068 ((_ is Union!8891) (regOne!18295 (regOne!18295 r!19097)))) b!2906377))

(declare-fun b!2906381 () Bool)

(declare-fun e!1834663 () Bool)

(declare-fun tp!933404 () Bool)

(declare-fun tp!933407 () Bool)

(assert (=> b!2906381 (= e!1834663 (and tp!933404 tp!933407))))

(assert (=> b!2906068 (= tp!933265 e!1834663)))

(declare-fun b!2906380 () Bool)

(declare-fun tp!933405 () Bool)

(assert (=> b!2906380 (= e!1834663 tp!933405)))

(declare-fun b!2906378 () Bool)

(assert (=> b!2906378 (= e!1834663 tp_is_empty!15369)))

(declare-fun b!2906379 () Bool)

(declare-fun tp!933408 () Bool)

(declare-fun tp!933406 () Bool)

(assert (=> b!2906379 (= e!1834663 (and tp!933408 tp!933406))))

(assert (= (and b!2906068 ((_ is ElementMatch!8891) (regTwo!18295 (regOne!18295 r!19097)))) b!2906378))

(assert (= (and b!2906068 ((_ is Concat!14212) (regTwo!18295 (regOne!18295 r!19097)))) b!2906379))

(assert (= (and b!2906068 ((_ is Star!8891) (regTwo!18295 (regOne!18295 r!19097)))) b!2906380))

(assert (= (and b!2906068 ((_ is Union!8891) (regTwo!18295 (regOne!18295 r!19097)))) b!2906381))

(check-sat (not b!2906277) (not b!2906143) (not bm!189639) (not b!2906380) (not b!2906167) (not bm!189644) (not bm!189624) (not b!2906270) (not b!2906241) (not b!2906156) (not bm!189634) (not b!2906321) (not b!2906227) tp_is_empty!15369 (not b!2906328) (not b!2906245) (not b!2906363) (not d!836157) (not b!2906346) (not b!2906253) (not b!2906314) (not b!2906158) (not b!2906108) (not d!836161) (not b!2906345) (not bm!189626) (not bm!189636) (not b!2906170) (not b!2906273) (not b!2906244) (not b!2906353) (not d!836091) (not b!2906351) (not b!2906308) (not b!2906086) (not b!2906310) (not b!2906341) (not b!2906312) (not b!2906362) (not b!2906299) (not bm!189658) (not b!2906325) (not b!2906226) (not b!2906320) (not b!2906280) (not b!2906265) (not b!2906381) (not b!2906164) (not b!2906278) (not b!2906302) (not b!2906306) (not b!2906319) (not b!2906298) (not b!2906202) (not bm!189630) (not b!2906303) (not b!2906276) (not b!2906349) (not d!836099) (not bm!189653) (not b!2906195) (not b!2906083) (not b!2906139) (not bm!189656) (not b!2906180) (not b!2906358) (not bm!189641) (not b!2906281) (not d!836143) (not b!2906206) (not d!836107) (not b!2906274) (not b!2906214) (not b!2906145) (not b!2906198) (not b!2906084) (not d!836145) (not bm!189649) (not b!2906327) (not b!2906329) (not b!2906311) (not bm!189627) (not b!2906375) (not b!2906112) (not b!2906347) (not b!2906350) (not bm!189643) (not b!2906264) (not bm!189647) (not b!2906317) (not b!2906343) (not d!836137) (not b!2906124) (not b!2906201) (not d!836153) (not b!2906252) (not b!2906323) (not b!2906373) (not b!2906355) (not d!836149) (not b!2906082) (not b!2906147) (not b!2906249) (not d!836141) (not b!2906248) (not b!2906251) (not b!2906307) (not b!2906354) (not bm!189645) (not b!2906110) (not b!2906239) (not bm!189663) (not d!836139) (not b!2906342) (not d!836105) (not d!836159) (not b!2906204) (not bm!189637) (not bm!189632) (not d!836131) (not b!2906247) (not b!2906218) (not b!2906111) (not b!2906272) (not b!2906161) (not b!2906379) (not b!2906282) (not b!2906190) (not b!2906377) (not b!2906235) (not b!2906243) (not d!836121) (not b!2906304) (not b!2906316) (not bm!189629) (not b!2906095) (not d!836129) (not b!2906269) (not b!2906324) (not b!2906357) (not bm!189654) (not b!2906144) (not b!2906240) (not b!2906172) (not b!2906168) (not b!2906300) (not b!2906120) (not b!2906266) (not d!836125) (not b!2906315) (not b!2906361) (not b!2906268) (not bm!189651) (not bm!189661) (not bm!189660) (not b!2906376) (not b!2906359))
(check-sat)
